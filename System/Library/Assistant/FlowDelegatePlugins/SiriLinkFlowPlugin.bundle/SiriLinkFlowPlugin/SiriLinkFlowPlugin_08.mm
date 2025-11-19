uint64_t LinkActionDialogTemplating.makeConfirmAndCancelButton(confirmationActionName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_14_0();
  v11 = v10[2];
  if (!v11)
  {
    v20 = v10[11];
    v19 = v10[12];
    v22 = v10[8];
    v21 = v10[9];
LABEL_20:
    v50 = v10[6];

    v51 = v10[1];
    OUTLINED_FUNCTION_25_2();

    return v57(v52, v53, v54, v55, v56, v57, v58, v59, a9, a10);
  }

  v12 = v11;
  v13 = [v12 type];
  if (!v13)
  {
    v34 = v10[9];

    v35 = swift_task_alloc();
    v10[17] = v35;
    *v35 = v10;
    v35[1] = LinkActionDialogTemplating.makeConfirmAndCancelButton(confirmationActionName:);
    v36 = v10[3];
    OUTLINED_FUNCTION_73(0x65756E69746E6F63);
    goto LABEL_10;
  }

  if (v13 == &dword_0 + 2)
  {
    v24 = v10[5];
    v23 = v10[6];
    v25 = v10[3];
    v26 = v10[4];
    v27 = v25[6];
    __swift_project_boxed_opaque_existential_1(v25 + 2, v25[5]);
    OUTLINED_FUNCTION_56_1();
    dispatch thunk of DeviceState.siriLocale.getter();
    Locale.identifier.getter();
    (*(v24 + 8))(v23, v26);
    v28 = [v12 acceptLabel];
    v29 = v10[9];
    if (v28)
    {
      v30 = v28;
      v31 = v10[9];

      v32 = String._bridgeToObjectiveC()();
      v33 = [v30 localizedStringForLocaleIdentifier:v32];

      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
      v42 = v10[8];
    }

    v43 = [v12 denyLabel];
    if (v43)
    {
      v44 = v43;
      v45 = v10[12];

      v46 = String._bridgeToObjectiveC()();

      v47 = [v44 localizedStringForLocaleIdentifier:v46];

      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {

      v49 = v10[11];
      v48 = v10[12];
    }

    goto LABEL_20;
  }

  if (v13 == &dword_0 + 1)
  {
    v14 = v10[9];

    v15 = swift_task_alloc();
    v16 = OUTLINED_FUNCTION_31_4(v15);
    *v16 = v17;
    v16[1] = LinkActionDialogTemplating.makeConfirmAndCancelButton(confirmationActionName:);
    v18 = v10[3];
    OUTLINED_FUNCTION_73(0x7472617473);
LABEL_10:
    OUTLINED_FUNCTION_25_2();

    return LinkActionDialogTemplating.makeConfirmationButtonLabel(confirmationVerb:)();
  }

  v10[21] = LNConfirmationActionName.toIntentVerb()()._object;
  v39 = swift_task_alloc();
  v10[22] = v39;
  *v39 = v10;
  v39[1] = LinkActionDialogTemplating.makeConfirmAndCancelButton(confirmationActionName:);
  v40 = v10[3];
  OUTLINED_FUNCTION_25_2();

  return LinkActionDialogTemplating.makeConfirmationButtonLabelForCategory(verb:)();
}

uint64_t LinkActionDialogTemplating.makeConfirmationButtonLabel(confirmationVerb:)()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_46_6(v1, v2);
  v3 = type metadata accessor for TemplatingText();
  v0[5] = v3;
  OUTLINED_FUNCTION_5_0(v3);
  v0[6] = v4;
  v6 = *(v5 + 64);
  v0[7] = OUTLINED_FUNCTION_28();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow17TemplatingSectionVSgMd, &_s11SiriKitFlow17TemplatingSectionVSgMR);
  OUTLINED_FUNCTION_14(v7);
  v9 = *(v8 + 64);
  v0[8] = OUTLINED_FUNCTION_28();
  v10 = type metadata accessor for TemplatingResult();
  v0[9] = v10;
  OUTLINED_FUNCTION_5_0(v10);
  v0[10] = v11;
  v13 = *(v12 + 64);
  v0[11] = OUTLINED_FUNCTION_28();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v14);
  v16 = *(v15 + 64);
  v0[12] = OUTLINED_FUNCTION_27();
  v0[13] = swift_task_alloc();
  v17 = type metadata accessor for RFFeatureFlags.ResponseFramework();
  v0[14] = v17;
  OUTLINED_FUNCTION_5_0(v17);
  v0[15] = v18;
  v20 = *(v19 + 64);
  v0[16] = OUTLINED_FUNCTION_28();
  v21 = type metadata accessor for SpeakableString();
  v0[17] = v21;
  OUTLINED_FUNCTION_5_0(v21);
  v0[18] = v22;
  v24 = *(v23 + 64);
  v0[19] = OUTLINED_FUNCTION_28();
  v25 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v25, v26, v27);
}

{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  v3 = v2;
  v4 = *v1;
  v5 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v6 = v5;
  v7 = *(v4 + 160);
  *v6 = *v1;
  *(v5 + 168) = v0;

  v8 = *(v4 + 104);
  if (!v0)
  {
    *(v5 + 176) = v3;
  }

  outlined destroy of Siri_Nlu_External_UserDialogAct?(v8, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_11_1();
  OUTLINED_FUNCTION_87();

  return _swift_task_switch(v9, v10, v11);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_0();
  *v3 = v2;
  v5 = *(v4 + 184);
  v6 = *(v4 + 96);
  v7 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v8 = v7;
  *(v9 + 192) = v0;

  outlined destroy of Siri_Nlu_External_UserDialogAct?(v6, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v10, v11, v12);
}

void LinkActionDialogTemplating.makeConfirmationButtonLabel(confirmationVerb:)()
{
  OUTLINED_FUNCTION_24_1();
  v2 = v0[18];
  v1 = v0[19];
  v4 = v0[15];
  v3 = v0[16];
  v5 = v0[14];
  v7 = v0[2];
  v6 = v0[3];

  OUTLINED_FUNCTION_74_1();
  (*(v4 + 104))(v3, enum case for RFFeatureFlags.ResponseFramework._SMART(_:), v5);
  LOBYTE(v1) = RFFeatureFlags.ResponseFramework.isEnabled.getter();
  v8 = *(v4 + 8);
  v9 = OUTLINED_FUNCTION_9_3();
  v10(v9);
  v11 = *(v2 + 16);
  v12 = v0[19];
  v13 = v0[17];
  v14 = v0[4];
  if (v1)
  {
    v15 = *(v14 + 64);
    v11(v0[13], v12, v0[17]);
    OUTLINED_FUNCTION_45_4();
    OUTLINED_FUNCTION_61_0();
    v17 = *(v16 + class metadata base offset for RunLinkActionCATsSimple + 56);
    OUTLINED_FUNCTION_2_26();
    v36 = v18 + *v18;
    v20 = *(v19 + 4);
    v21 = swift_task_alloc();
    v0[20] = v21;
    *v21 = v0;
    v21[1] = LinkActionDialogTemplating.makeConfirmationButtonLabel(confirmationVerb:);
    OUTLINED_FUNCTION_73(v0[13]);
    OUTLINED_FUNCTION_103();

    __asm { BRAA            X1, X16 }
  }

  v24 = *(v14 + 56);
  v11(v0[12], v12, v0[17]);
  OUTLINED_FUNCTION_45_4();
  OUTLINED_FUNCTION_61_0();
  v26 = *(v25 + class metadata base offset for RunLinkActionCATs + 24);
  OUTLINED_FUNCTION_2_26();
  v37 = v27 + *v27;
  v29 = *(v28 + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  v0[23] = v30;
  *v30 = v31;
  v30[1] = LinkActionDialogTemplating.makeConfirmationButtonLabel(confirmationVerb:);
  v32 = v0[11];
  v33 = v0[12];
  OUTLINED_FUNCTION_103();

  __asm { BRAA            X2, X16 }
}

uint64_t LinkActionDialogTemplating.makeConfirmationButtonLabel(confirmationVerb:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_37_0();
  OUTLINED_FUNCTION_24_1();
  v13 = v12[22];
  dispatch thunk of LabelExecutionResult.subscript.getter();

  v14 = v12[19];
  OUTLINED_FUNCTION_81_1(v12[18]);
  v15(v14);

  OUTLINED_FUNCTION_12_7();
  OUTLINED_FUNCTION_9_3();
  OUTLINED_FUNCTION_27_0();

  return v19(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10, a11, a12);
}

{
  OUTLINED_FUNCTION_37_0();
  OUTLINED_FUNCTION_24_1();
  v14 = v13[11];
  v15 = v13[8];
  v16 = TemplatingResult.sections.getter();
  specialized Collection.first.getter(v16, v15);

  v17 = type metadata accessor for TemplatingSection();
  OUTLINED_FUNCTION_96(v17);
  if (v18)
  {
    outlined destroy of Siri_Nlu_External_UserDialogAct?(v16, &_s11SiriKitFlow17TemplatingSectionVSgMd, &_s11SiriKitFlow17TemplatingSectionVSgMR);
  }

  else
  {
    v20 = v13[6];
    v19 = v13[7];
    v21 = v13[5];
    TemplatingSection.content.getter();
    OUTLINED_FUNCTION_21_2(v12);
    v23 = *(v22 + 8);
    v24 = OUTLINED_FUNCTION_22_4();
    v25(v24);
    TemplatingText.text.getter();
    v26 = *(v20 + 8);
    v27 = OUTLINED_FUNCTION_20_1();
    v28(v27);
  }

  (*(v13[10] + 8))(v13[11], v13[9]);
  v29 = v13[19];
  OUTLINED_FUNCTION_81_1(v13[18]);
  v30(v29);

  OUTLINED_FUNCTION_12_7();
  OUTLINED_FUNCTION_22_4();
  OUTLINED_FUNCTION_27_0();

  return v34(v31, v32, v33, v34, v35, v36, v37, v38, a9, a10, a11, a12);
}

uint64_t LinkActionDialogTemplating.makeConfirmationButtonLabel(confirmationVerb:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_14_0();
  v11 = *(v10 + 192);
  v12 = OUTLINED_FUNCTION_59_4();
  v13(v12);

  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_25_2();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10);
}

{
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_14_0();
  v11 = *(v10 + 168);
  v12 = OUTLINED_FUNCTION_59_4();
  v13(v12);

  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_25_2();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10);
}

uint64_t LinkActionDialogTemplating.makeConfirmationButtonLabelForCategory(verb:)()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_46_6(v1, v2);
  v3 = type metadata accessor for TemplatingText();
  v0[5] = v3;
  OUTLINED_FUNCTION_5_0(v3);
  v0[6] = v4;
  v6 = *(v5 + 64);
  v0[7] = OUTLINED_FUNCTION_28();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow17TemplatingSectionVSgMd, &_s11SiriKitFlow17TemplatingSectionVSgMR);
  OUTLINED_FUNCTION_14(v7);
  v9 = *(v8 + 64);
  v0[8] = OUTLINED_FUNCTION_28();
  v10 = type metadata accessor for TemplatingResult();
  v0[9] = v10;
  OUTLINED_FUNCTION_5_0(v10);
  v0[10] = v11;
  v13 = *(v12 + 64);
  v0[11] = OUTLINED_FUNCTION_28();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v14);
  v16 = *(v15 + 64);
  v0[12] = OUTLINED_FUNCTION_27();
  v0[13] = swift_task_alloc();
  v17 = type metadata accessor for RFFeatureFlags.ResponseFramework();
  v0[14] = v17;
  OUTLINED_FUNCTION_5_0(v17);
  v0[15] = v18;
  v20 = *(v19 + 64);
  v0[16] = OUTLINED_FUNCTION_28();
  v21 = type metadata accessor for SpeakableString();
  v0[17] = v21;
  OUTLINED_FUNCTION_5_0(v21);
  v0[18] = v22;
  v24 = *(v23 + 64);
  v0[19] = OUTLINED_FUNCTION_28();
  v25 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v25, v26, v27);
}

{
  OUTLINED_FUNCTION_15_2();
  v3 = v2;
  v4 = *v1;
  v5 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v6 = v5;
  v7 = v4[21];
  *v6 = *v1;
  v5[22] = v0;

  v8 = v4[20];
  v9 = v4[13];
  if (!v0)
  {
    v5[23] = v3;
  }

  outlined destroy of Siri_Nlu_External_UserDialogAct?(v9, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v10, v11, v12);
}

{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_0();
  *v3 = v2;
  v5 = v4[24];
  v6 = v4[20];
  v7 = v4[12];
  v8 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v9 = v8;
  *(v10 + 200) = v0;

  outlined destroy of Siri_Nlu_External_UserDialogAct?(v7, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t LinkActionDialogTemplating.makeConfirmationButtonLabelForCategory(verb:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_21_1();
  OUTLINED_FUNCTION_30();
  v16 = v14[18];
  v15 = v14[19];
  v18 = v14[15];
  v17 = v14[16];
  v19 = v14[14];
  v21 = v14[3];
  v20 = v14[4];
  v22 = v14[2];
  v23 = v20[6];
  __swift_project_boxed_opaque_existential_1(v20 + 2, v20[5]);
  v24 = OUTLINED_FUNCTION_22_4();
  v14[20] = DeviceState.asSiriKitDeviceState()(v24, v25);

  OUTLINED_FUNCTION_74_1();
  (*(v18 + 104))(v17, enum case for RFFeatureFlags.ResponseFramework._SMART(_:), v19);
  v26 = RFFeatureFlags.ResponseFramework.isEnabled.getter();
  v27 = *(v18 + 8);
  v28 = OUTLINED_FUNCTION_56_1();
  v29(v28);
  v30 = *(v16 + 16);
  v31 = v14[19];
  v32 = v14[17];
  v33 = v14[4];
  if (v26)
  {
    v34 = *(v33 + 80);
    v30(v14[13], v31, v14[17]);
    OUTLINED_FUNCTION_49_3();
    __swift_storeEnumTagSinglePayload(v35, v36, v37, v32);
    v38 = *(*v34 + class metadata base offset for RunVoiceCommandCATsSimple + 232);
    v71 = *v34 + class metadata base offset for RunVoiceCommandCATsSimple + 232;

    v69 = v38 + *v38;
    v39 = v38[1];
    v40 = swift_task_alloc();
    v14[21] = v40;
    *v40 = v14;
    v40[1] = LinkActionDialogTemplating.makeConfirmationButtonLabelForCategory(verb:);
    v41 = v14[13];
    OUTLINED_FUNCTION_6_1();

    return v44(v42, v43, v44, v45, v46, v47, v48, v49, a9, v69, v71, a12, a13, a14);
  }

  else
  {
    v51 = *(v33 + 72);
    v30(v14[12], v31, v14[17]);
    OUTLINED_FUNCTION_49_3();
    __swift_storeEnumTagSinglePayload(v52, v53, v54, v32);
    v55 = *(*v51 + class metadata base offset for RunVoiceCommandCATs + 112);
    v72 = *v51 + class metadata base offset for RunVoiceCommandCATs + 112;

    v70 = v55 + *v55;
    v56 = v55[1];
    swift_task_alloc();
    OUTLINED_FUNCTION_20_0();
    v14[24] = v57;
    *v57 = v58;
    v57[1] = LinkActionDialogTemplating.makeConfirmationButtonLabelForCategory(verb:);
    v59 = v14[11];
    v60 = v14[12];
    OUTLINED_FUNCTION_6_1();

    return v64(v61, v62, v63, v64, v65, v66, v67, v68, a9, v70, v72, a12, a13, a14);
  }
}

{
  OUTLINED_FUNCTION_21_1();
  OUTLINED_FUNCTION_30();
  v15 = v14[11];
  v16 = v14[8];
  v17 = TemplatingResult.sections.getter();
  specialized Collection.first.getter(v17, v16);

  v18 = type metadata accessor for TemplatingSection();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v16, 1, v18);
  v20 = v14[19];
  v21 = v14[20];
  v22 = v14[17];
  v23 = v14[18];
  v24 = v14[10];
  v25 = v14[11];
  v26 = v14[8];
  v27 = v14[9];
  if (EnumTagSinglePayload == 1)
  {
    v28 = v14[20];

    v29 = *(v24 + 8);
    v30 = OUTLINED_FUNCTION_13_5();
    v31(v30);
    (*(v23 + 8))(v20, v22);
    outlined destroy of Siri_Nlu_External_UserDialogAct?(v26, &_s11SiriKitFlow17TemplatingSectionVSgMd, &_s11SiriKitFlow17TemplatingSectionVSgMR);
  }

  else
  {
    a10 = v14[19];
    a11 = v14[17];
    v32 = v14[6];
    v33 = v14[7];
    a9 = v14[5];
    TemplatingSection.content.getter();
    OUTLINED_FUNCTION_21_2(v18);
    (*(v34 + 8))(v26, v18);
    TemplatingText.text.getter();

    (*(v32 + 8))(v33, a9);
    v35 = *(v24 + 8);
    v36 = OUTLINED_FUNCTION_13_5();
    v37(v36);
    (*(v23 + 8))(a10, a11);
  }

  v38 = v14[19];
  v39 = v14[16];
  v41 = v14[12];
  v40 = v14[13];
  v42 = v14[11];
  v44 = v14[7];
  v43 = v14[8];

  OUTLINED_FUNCTION_12_7();
  OUTLINED_FUNCTION_6_1();

  return v48(v45, v46, v47, v48, v49, v50, v51, v52, a9, a10, a11, a12, a13, a14);
}

uint64_t LinkActionDialogTemplating.makeConfirmationButtonLabelForCategory(verb:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_14_0();
  v11 = *(v10 + 184);
  v13 = *(v10 + 152);
  v12 = *(v10 + 160);
  v14 = *(v10 + 136);
  v15 = *(v10 + 144);
  *(v10 + 208) = 2;
  dispatch thunk of LabelExecutionResult.subscript.getter();

  v16 = *(v15 + 8);
  v17 = OUTLINED_FUNCTION_20_1();
  v18(v17);
  v19 = *(v10 + 152);
  v20 = *(v10 + 128);
  v22 = *(v10 + 96);
  v21 = *(v10 + 104);
  v23 = *(v10 + 88);
  v25 = *(v10 + 56);
  v24 = *(v10 + 64);

  OUTLINED_FUNCTION_12_7();
  OUTLINED_FUNCTION_13_5();
  OUTLINED_FUNCTION_25_2();

  return v29(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10);
}

uint64_t LinkActionDialogTemplating.makeConfirmationButtonLabelForCategory(verb:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_37_0();
  OUTLINED_FUNCTION_24_1();
  v14 = *(v12 + 200);
  OUTLINED_FUNCTION_67_1();
  v15 = *(v13 + 8);
  v16 = OUTLINED_FUNCTION_9_3();
  v17(v16);

  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_27_0();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
}

{
  OUTLINED_FUNCTION_37_0();
  OUTLINED_FUNCTION_24_1();
  v14 = *(v12 + 176);
  OUTLINED_FUNCTION_67_1();
  v15 = *(v13 + 8);
  v16 = OUTLINED_FUNCTION_9_3();
  v17(v16);

  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_27_0();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
}

uint64_t LinkActionDialogTemplating.makeContinueButton()()
{
  OUTLINED_FUNCTION_8_0();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = LinkActionDialogTemplating.makeContinueButton();
  OUTLINED_FUNCTION_73(0x65756E69746E6F63);

  return LinkActionDialogTemplating.makeConfirmationButtonLabel(confirmationVerb:)();
}

{
  OUTLINED_FUNCTION_12_0();
  v4 = v3;
  OUTLINED_FUNCTION_18_3();
  v6 = *(v5 + 16);
  v7 = *v2;
  OUTLINED_FUNCTION_2_0();
  *v8 = v7;

  OUTLINED_FUNCTION_12_7();
  if (!v0)
  {
    v9 = v1;
    v10 = v4;
  }

  return v11(v9, v10);
}

uint64_t LinkActionDialogTemplating.actionPerformedDialog(customPrompt:)()
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
  OUTLINED_FUNCTION_12_0();
  if (v0[2])
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_20_0();
    v0[5] = v1;
    *v1 = v2;
    v3 = OUTLINED_FUNCTION_73_2(v1);

    return LNDialog.asSpeakableString.getter(v3);
  }

  else
  {
    v5 = v0[4];
    type metadata accessor for SpeakableString();
    v6 = OUTLINED_FUNCTION_7_15();
    __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
    OUTLINED_FUNCTION_24_10();
    v11 = *(v10 + class metadata base offset for RunLinkActionCATsSimple + 32);
    OUTLINED_FUNCTION_2_26();
    v20 = v12 + *v12;
    v14 = *(v13 + 4);
    v15 = swift_task_alloc();
    v16 = OUTLINED_FUNCTION_57_1(v15);
    *v16 = v17;
    v18 = OUTLINED_FUNCTION_10_20(v16);

    return v19(v18);
  }
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v2 = *(v1 + 40);
  v3 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v5, v6, v7);
}

{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_24_10();
  v1 = *(v0 + class metadata base offset for RunLinkActionCATsSimple + 32);
  OUTLINED_FUNCTION_2_26();
  v11 = v2 + *v2;
  v4 = *(v3 + 4);
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_57_1(v5);
  *v6 = v7;
  v8 = OUTLINED_FUNCTION_10_20(v6);

  return v9(v8);
}

{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_18_3();
  v4 = v3;
  OUTLINED_FUNCTION_4_1();
  *v5 = v4;
  v7 = *(v6 + 48);
  v8 = *v2;
  OUTLINED_FUNCTION_2_0();
  *v9 = v8;
  *(v4 + 56) = v0;

  if (!v0)
  {
    *(v4 + 64) = v1;
  }

  OUTLINED_FUNCTION_18_0();

  return _swift_task_switch(v10, v11, v12);
}

{
  OUTLINED_FUNCTION_8_0();
  outlined destroy of Siri_Nlu_External_UserDialogAct?(*(v0 + 32), &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);

  OUTLINED_FUNCTION_6_6();
  v2 = *(v0 + 64);

  return v1(v2);
}

{
  OUTLINED_FUNCTION_8_0();
  outlined destroy of Siri_Nlu_External_UserDialogAct?(*(v0 + 32), &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);

  OUTLINED_FUNCTION_6_0();
  v2 = *(v0 + 56);

  return v1();
}

uint64_t LinkActionDialogTemplating.actionPerformedDialog_preRFv2(customPrompt:)()
{
  OUTLINED_FUNCTION_8_0();
  v1[2] = v2;
  v1[3] = v0;
  v3 = type metadata accessor for TemplatingText();
  v1[4] = v3;
  OUTLINED_FUNCTION_5_0(v3);
  v1[5] = v4;
  v6 = *(v5 + 64);
  v1[6] = OUTLINED_FUNCTION_28();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow17TemplatingSectionVSgMd, &_s11SiriKitFlow17TemplatingSectionVSgMR);
  OUTLINED_FUNCTION_14(v7);
  v9 = *(v8 + 64);
  v1[7] = OUTLINED_FUNCTION_28();
  v10 = type metadata accessor for TemplatingResult();
  v1[8] = v10;
  OUTLINED_FUNCTION_5_0(v10);
  v1[9] = v11;
  v13 = *(v12 + 64);
  v1[10] = OUTLINED_FUNCTION_28();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v14);
  v16 = *(v15 + 64);
  v1[11] = OUTLINED_FUNCTION_28();
  v17 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v17, v18, v19);
}

{
  OUTLINED_FUNCTION_12_0();
  if (v0[2])
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_20_0();
    v0[12] = v1;
    *v1 = v2;
    v3 = OUTLINED_FUNCTION_72_2(v1);

    return LNDialog.asSpeakableString.getter(v3);
  }

  else
  {
    v5 = v0[11];
    type metadata accessor for SpeakableString();
    v6 = OUTLINED_FUNCTION_7_15();
    __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
    OUTLINED_FUNCTION_19_10(v0[3]);
    v11 = *(v10 + class metadata base offset for RunLinkActionCATs + 16);
    OUTLINED_FUNCTION_2_26();
    v20 = v12 + *v12;
    v14 = *(v13 + 4);
    v15 = swift_task_alloc();
    v16 = OUTLINED_FUNCTION_18_14(v15);
    *v16 = v17;
    v18 = OUTLINED_FUNCTION_23_11(v16);

    return v19(v18);
  }
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v2 = *(v1 + 96);
  v3 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v5, v6, v7);
}

{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_19_10(*(v0 + 24));
  v2 = *(v1 + class metadata base offset for RunLinkActionCATs + 16);
  OUTLINED_FUNCTION_2_26();
  v12 = v3 + *v3;
  v5 = *(v4 + 4);
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_18_14(v6);
  *v7 = v8;
  v9 = OUTLINED_FUNCTION_23_11(v7);

  return v10(v9);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_0();
  *v3 = v2;
  v5 = *(v4 + 104);
  v6 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v7 = v6;
  *(v8 + 112) = v0;

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v9, v10, v11);
}

{
  OUTLINED_FUNCTION_12_0();
  v1 = v0[10];
  v3 = v0[6];
  v2 = v0[7];
  outlined destroy of Siri_Nlu_External_UserDialogAct?(v0[11], &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);

  OUTLINED_FUNCTION_6_0();
  v5 = v0[14];

  return v4();
}

uint64_t LinkActionDialogTemplating.actionPerformedDialog_preRFv2(customPrompt:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_37_0();
  OUTLINED_FUNCTION_24_1();
  v13 = v12[10];
  v14 = v12[7];
  v15 = TemplatingResult.sections.getter();
  specialized Collection.first.getter(v15, v14);

  v16 = type metadata accessor for TemplatingSection();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v14, 1, v16);
  v19 = v12[10];
  v18 = v12[11];
  v20 = v12[8];
  v21 = v12[9];
  v22 = v12[7];
  if (EnumTagSinglePayload == 1)
  {
    v23 = *(v21 + 8);
    v24 = OUTLINED_FUNCTION_56_1();
    v25(v24);
    outlined destroy of Siri_Nlu_External_UserDialogAct?(v18, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    outlined destroy of Siri_Nlu_External_UserDialogAct?(v22, &_s11SiriKitFlow17TemplatingSectionVSgMd, &_s11SiriKitFlow17TemplatingSectionVSgMR);
  }

  else
  {
    v27 = v12[5];
    v26 = v12[6];
    v28 = v12[4];
    TemplatingSection.content.getter();
    OUTLINED_FUNCTION_21_2(v16);
    (*(v29 + 8))(v22, v16);
    TemplatingText.text.getter();
    (*(v27 + 8))(v26, v28);
    v30 = *(v21 + 8);
    v31 = OUTLINED_FUNCTION_56_1();
    v32(v31);
    outlined destroy of Siri_Nlu_External_UserDialogAct?(v18, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  }

  v34 = v12[10];
  v33 = v12[11];
  v36 = v12[6];
  v35 = v12[7];

  OUTLINED_FUNCTION_12_7();
  OUTLINED_FUNCTION_27_0();

  return v40(v37, v38, v39, v40, v41, v42, v43, v44, a9, a10, a11, a12);
}

uint64_t LinkActionDialogTemplating.actionConfirmationHeader(customDialog:)()
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
  OUTLINED_FUNCTION_12_0();
  if (v0[2])
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_20_0();
    v0[5] = v1;
    *v1 = v2;
    v3 = OUTLINED_FUNCTION_73_2(v1);

    return LNDialog.asSpeakableString.getter(v3);
  }

  else
  {
    v5 = v0[4];
    type metadata accessor for SpeakableString();
    v6 = OUTLINED_FUNCTION_7_15();
    __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
    OUTLINED_FUNCTION_24_10();
    v11 = *(v10 + class metadata base offset for RunLinkActionCATsSimple + 16);
    OUTLINED_FUNCTION_2_26();
    v20 = v12 + *v12;
    v14 = *(v13 + 4);
    v15 = swift_task_alloc();
    v16 = OUTLINED_FUNCTION_57_1(v15);
    *v16 = v17;
    v18 = OUTLINED_FUNCTION_10_20(v16);

    return v19(v18);
  }
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v2 = *(v1 + 40);
  v3 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v5, v6, v7);
}

{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_24_10();
  v1 = *(v0 + class metadata base offset for RunLinkActionCATsSimple + 16);
  OUTLINED_FUNCTION_2_26();
  v11 = v2 + *v2;
  v4 = *(v3 + 4);
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_57_1(v5);
  *v6 = v7;
  v8 = OUTLINED_FUNCTION_10_20(v6);

  return v9(v8);
}

{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_18_3();
  v4 = v3;
  OUTLINED_FUNCTION_4_1();
  *v5 = v4;
  v7 = *(v6 + 48);
  v8 = *v2;
  OUTLINED_FUNCTION_2_0();
  *v9 = v8;
  *(v4 + 56) = v0;

  if (!v0)
  {
    *(v4 + 64) = v1;
  }

  OUTLINED_FUNCTION_18_0();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t LinkActionDialogTemplating.actionConfirmationHeader_preRFv2(customDialog:)()
{
  OUTLINED_FUNCTION_8_0();
  v1[2] = v2;
  v1[3] = v0;
  v3 = type metadata accessor for TemplatingText();
  v1[4] = v3;
  OUTLINED_FUNCTION_5_0(v3);
  v1[5] = v4;
  v6 = *(v5 + 64);
  v1[6] = OUTLINED_FUNCTION_28();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow17TemplatingSectionVSgMd, &_s11SiriKitFlow17TemplatingSectionVSgMR);
  OUTLINED_FUNCTION_14(v7);
  v9 = *(v8 + 64);
  v1[7] = OUTLINED_FUNCTION_28();
  v10 = type metadata accessor for TemplatingResult();
  v1[8] = v10;
  OUTLINED_FUNCTION_5_0(v10);
  v1[9] = v11;
  v13 = *(v12 + 64);
  v1[10] = OUTLINED_FUNCTION_28();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v14);
  v16 = *(v15 + 64);
  v1[11] = OUTLINED_FUNCTION_28();
  v17 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v17, v18, v19);
}

{
  OUTLINED_FUNCTION_12_0();
  if (v0[2])
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_20_0();
    v0[12] = v1;
    *v1 = v2;
    v3 = OUTLINED_FUNCTION_72_2(v1);

    return LNDialog.asSpeakableString.getter(v3);
  }

  else
  {
    v5 = v0[11];
    type metadata accessor for SpeakableString();
    v6 = OUTLINED_FUNCTION_7_15();
    __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
    OUTLINED_FUNCTION_19_10(v0[3]);
    v11 = *(v10 + class metadata base offset for RunLinkActionCATs + 8);
    OUTLINED_FUNCTION_2_26();
    v20 = v12 + *v12;
    v14 = *(v13 + 4);
    v15 = swift_task_alloc();
    v16 = OUTLINED_FUNCTION_18_14(v15);
    *v16 = v17;
    v18 = OUTLINED_FUNCTION_23_11(v16);

    return v19(v18);
  }
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v2 = *(v1 + 96);
  v3 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v5, v6, v7);
}

{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_19_10(*(v0 + 24));
  v2 = *(v1 + class metadata base offset for RunLinkActionCATs + 8);
  OUTLINED_FUNCTION_2_26();
  v12 = v3 + *v3;
  v5 = *(v4 + 4);
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_18_14(v6);
  *v7 = v8;
  v9 = OUTLINED_FUNCTION_23_11(v7);

  return v10(v9);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_0();
  *v3 = v2;
  v5 = *(v4 + 104);
  v6 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v7 = v6;
  *(v8 + 112) = v0;

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t *LinkActionDialogTemplating.deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v1 = v0[7];

  v2 = v0[8];

  v3 = v0[9];

  v4 = v0[10];

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 11);
  return v0;
}

uint64_t LinkActionDialogTemplating.__deallocating_deinit()
{
  LinkActionDialogTemplating.deinit();

  return swift_deallocClassInstance();
}

void *specialized LinkActionDialogTemplating.init(deviceState:runLinkActionCatWrapper:runLinkActionCatWrapperSimple:runVoiceCommandsCatWrapper:runVoiceCommandsCatWrapperSimple:linkActionPatterns:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9)
{
  a7[14] = a8;
  a7[15] = a9;
  __swift_allocate_boxed_opaque_existential_1(a7 + 11);
  OUTLINED_FUNCTION_21_2(a8);
  (*(v16 + 32))();
  outlined init with take of Output(a1, a7 + 2);
  a7[7] = a2;
  a7[8] = a3;
  a7[9] = a4;
  a7[10] = a5;
  return a7;
}

uint64_t outlined assign with copy of SpeakableString?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t outlined assign with take of SpeakableString?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_11_13@<X0>(void *a1@<X8>)
{
  v1 = a1[15];
  __swift_project_boxed_opaque_existential_1(a1 + 11, a1[14]);

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_17_15(uint64_t a1)
{
  *(a1 + 8) = LinkActionDialogTemplating.makeParameterValueDisambiguationPattern_preRFv2(customPrompt:items:);
  v2 = *(v1 + 24);
  return 0;
}

uint64_t OUTLINED_FUNCTION_23_11(uint64_t a1)
{
  *(a1 + 8) = v1;
  result = *(v2 + 80);
  v4 = *(v2 + 88);
  return result;
}

uint64_t OUTLINED_FUNCTION_25_6(uint64_t a1)
{
  *(a1 + 8) = LinkActionDialogTemplating.makeParameterPromptDialog_preRFv2(parameterName:customPrompt:actionMetadata:);
  v2 = v1[11];
  v3 = v1[12];
  v4 = v1[10];
  return v1[4];
}

uint64_t OUTLINED_FUNCTION_26_12(uint64_t a1)
{
  *(a1 + 8) = LinkActionDialogTemplating.makeParameterPromptDialog(parameterName:customPrompt:actionMetadata:);
  v2 = v1[11];
  v3 = v1[9];
  return v1[10];
}

uint64_t OUTLINED_FUNCTION_27_9(uint64_t a1)
{
  *(a1 + 8) = LinkActionDialogTemplating.makeNeedsDisambiguationTitle(customPrompt:items:);
  v2 = *(v1 + 48);
  return *(v1 + 40);
}

uint64_t OUTLINED_FUNCTION_28_6(uint64_t a1)
{
  *(a1 + 8) = LinkActionDialogTemplating.makeNeedsDisambiguationTitle_preRFv2(customPrompt:items:);
  result = v1[11];
  v3 = v1[12];
  v4 = v1[3];
  return result;
}

void OUTLINED_FUNCTION_33_5(uint64_t a1)
{
  *(a1 + 16) = v1;

  specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, a1, v2);
}

void OUTLINED_FUNCTION_34_8(uint64_t a1)
{
  *(a1 + 16) = v1;

  specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), a1, v2);
}

void OUTLINED_FUNCTION_35_7(uint64_t a1)
{
  *(a1 + 16) = v2;

  specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, a1, v1);
}

uint64_t OUTLINED_FUNCTION_43_4(uint64_t a1)
{
  *(v1 + 24) = a1;

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_44_5(uint64_t a1)
{
  *(v1 + 16) = a1;

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_45_4()
{

  return __swift_storeEnumTagSinglePayload(v1, 0, 1, v0);
}

uint64_t OUTLINED_FUNCTION_46_6(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return 0;
}

void *OUTLINED_FUNCTION_54_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return specialized LinkActionDialogTemplating.init(deviceState:runLinkActionCatWrapper:runLinkActionCatWrapperSimple:runVoiceCommandsCatWrapper:runVoiceCommandsCatWrapperSimple:linkActionPatterns:)(v14, v13, v12, v11, v10, v16, v9, v15, a9);
}

uint64_t OUTLINED_FUNCTION_59_4()
{
  v2 = v0[16];
  v1 = v0[17];
  v4 = v0[12];
  v3 = v0[13];
  v5 = v0[11];
  v7 = v0[7];
  v6 = v0[8];
  v8 = *(v0[18] + 8);
  return v0[19];
}

uint64_t OUTLINED_FUNCTION_66_1()
{

  return static Array._unconditionallyBridgeFromObjectiveC(_:)();
}

uint64_t OUTLINED_FUNCTION_67_1()
{
  v3 = v0[19];
  v2 = v0[20];
  v4 = v0[17];
  v5 = v0[18];
  v6 = v0[16];
  v8 = v0[12];
  v7 = v0[13];
  v9 = v0[11];
  v10 = v0[7];
  v11 = v0[8];
}

uint64_t OUTLINED_FUNCTION_74_1()
{

  return SpeakableString.init(print:speak:)();
}

uint64_t OUTLINED_FUNCTION_75_1()
{
  v0[10] = v1;
  v2 = v0[8];
  v3 = v0[4];
  v4 = v3[15];
  __swift_project_boxed_opaque_existential_1(v3 + 11, v3[14]);

  return swift_task_alloc();
}

void OUTLINED_FUNCTION_81_1(uint64_t a1@<X8>)
{
  v3 = v1[16];
  v2 = v1[17];
  v5 = v1[12];
  v4 = v1[13];
  v6 = v1[11];
  v8 = v1[7];
  v7 = v1[8];
  v9 = *(a1 + 8);
}

uint64_t OUTLINED_FUNCTION_90_0()
{
}

uint64_t OUTLINED_FUNCTION_91()
{

  return static Array._unconditionallyBridgeFromObjectiveC(_:)();
}

uint64_t OUTLINED_FUNCTION_92_0()
{
}

unint64_t OUTLINED_FUNCTION_93_0()
{

  return type metadata accessor for LNSystemProtocol();
}

uint64_t OUTLINED_FUNCTION_96(uint64_t a1)
{
  result = __swift_getEnumTagSinglePayload(v1, 1, a1);
  v4 = *(v2 + 64);
  return result;
}

uint64_t CustomIntentExecutionFlow.__allocating_init(runner:intent:voiceCommandName:deviceIdiom:deviceState:aceServiceInvoker:appPolicyHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v18 = *(v9 + 48);
  v19 = *(v9 + 52);
  v20 = swift_allocObject();
  CustomIntentExecutionFlow.init(runner:intent:voiceCommandName:deviceIdiom:deviceState:aceServiceInvoker:appPolicyHandler:)(a1, a2, a3, a4, a5, a6 & 1, a7, a8, a9, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, vars0);
  return v20;
}

void CustomIntentExecutionFlow.state.didset()
{
  v1 = v0;
  v2 = type metadata accessor for CustomIntentExecutionFlow.State(0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for voiceCommands != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Logger.voiceCommands);

  v16 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v16, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v17 = v9;
    *v8 = 136315138;
    v10 = OBJC_IVAR____TtC18SiriLinkFlowPlugin25CustomIntentExecutionFlow_state;
    swift_beginAccess();
    outlined init with copy of CustomIntentExecutionFlow.State(v1 + v10, v5);
    v11 = String.init<A>(describing:)();
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v17);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_0, v16, v7, "#CustomIntentExecutionFlow transitioned to state=%s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
  }

  else
  {
    v14 = v16;
  }
}

uint64_t CustomIntentExecutionFlow.state.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18SiriLinkFlowPlugin25CustomIntentExecutionFlow_state;
  swift_beginAccess();
  outlined assign with copy of CustomIntentExecutionFlow.State(a1, v1 + v3);
  swift_endAccess();
  CustomIntentExecutionFlow.state.didset();
  return outlined destroy of CustomIntentExecutionFlow.State(a1);
}

uint64_t CustomIntentExecutionFlow.exitValue.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for CustomIntentExecutionFlow.State(0);
  v4 = OUTLINED_FUNCTION_7(v3);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  OUTLINED_FUNCTION_3();
  v9 = v8 - v7;
  v10 = OBJC_IVAR____TtC18SiriLinkFlowPlugin25CustomIntentExecutionFlow_state;
  swift_beginAccess();
  outlined init with copy of CustomIntentExecutionFlow.State(v1 + v10, v9);
  OUTLINED_FUNCTION_95();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 7:
      v16 = &enum case for RCHFlowResult.cancelled<A, B>(_:);
      goto LABEL_7;
    case 3:
      v15 = *(v9 + 8);
      *a1 = *v9;
      *(a1 + 8) = v15;
      v16 = &enum case for RCHFlowResult.error<A, B>(_:);
LABEL_7:
      v17 = *v16;
      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow13RCHFlowResultOySo8INIntentCSo0F8ResponseCGMd, &_s11SiriKitFlow13RCHFlowResultOySo8INIntentCSo0F8ResponseCGMR);
      OUTLINED_FUNCTION_7(v18);
      return (*(v19 + 104))(a1, v17);
    case 2:
      v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow13RCHFlowResultOySo8INIntentCSo0F8ResponseCGMd, &_s11SiriKitFlow13RCHFlowResultOySo8INIntentCSo0F8ResponseCGMR);
      OUTLINED_FUNCTION_7(v12);
      return (*(v13 + 32))(a1, v9);
    default:
      lazy protocol witness table accessor for type RunVoiceShortcutFlowErrors and conformance RunVoiceShortcutFlowErrors();
      v20 = OUTLINED_FUNCTION_16_6();
      *v21 = 0;
      *a1 = v20;
      *(a1 + 8) = 0;
      v22 = enum case for RCHFlowResult.error<A, B>(_:);
      v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow13RCHFlowResultOySo8INIntentCSo0F8ResponseCGMd, &_s11SiriKitFlow13RCHFlowResultOySo8INIntentCSo0F8ResponseCGMR);
      OUTLINED_FUNCTION_7(v23);
      (*(v24 + 104))(a1, v22);
      return outlined destroy of CustomIntentExecutionFlow.State(v9);
  }
}

void CustomIntentExecutionFlow.init(runner:intent:voiceCommandName:deviceIdiom:deviceState:aceServiceInvoker:appPolicyHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t *a21)
{
  OUTLINED_FUNCTION_40_0();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v71 = v37;
  v38 = type metadata accessor for UUID();
  v39 = OUTLINED_FUNCTION_7_1(v38);
  v69 = v40;
  v70 = v39;
  v42 = *(v41 + 64);
  __chkstk_darwin(v39);
  OUTLINED_FUNCTION_3();
  v45 = v44 - v43;
  v46 = OBJC_IVAR____TtC18SiriLinkFlowPlugin25CustomIntentExecutionFlow_input;
  v47 = type metadata accessor for Input();
  v48 = v22 + v46;
  v49 = v26;
  __swift_storeEnumTagSinglePayload(v48, 1, 1, v47);
  v22[13] = v34;
  v22[14] = v32;
  v72 = v36;
  outlined init with copy of DeviceState(v36, (v22 + 15));
  outlined init with copy of DeviceState(v26, (v22 + 3));
  outlined init with copy of DeviceState(v24, (v22 + 8));
  if (v28)
  {
    v50 = v26[4];
    __swift_project_boxed_opaque_existential_1(v26, v26[3]);
    v30 = DeviceState.currentDevice.getter();
  }

  v22[2] = v30;
  *(v22 + OBJC_IVAR____TtC18SiriLinkFlowPlugin25CustomIntentExecutionFlow_appBlockedByScreentime) = 0;
  outlined init with copy of DeviceState(a21, v22 + OBJC_IVAR____TtC18SiriLinkFlowPlugin25CustomIntentExecutionFlow_appPolicyHandler);
  if (v71)
  {
    v51 = v71;
    v52 = [v51 _metadata];
    v53 = v52;
    if (!v52)
    {
      v54 = [objc_allocWithZone(_INPBIntentMetadata) init];
      if (!v54)
      {
        v53 = 0;
        goto LABEL_8;
      }

      v53 = v54;
    }

    v55 = v52;
    UUID.init()();
    v56 = UUID.uuidString.getter();
    v58 = v57;
    (*(v69 + 8))(v45, v70);
    outlined bridged method (mbnn) of @objc _INPBIntentMetadata.intentId.setter(v56, v58, v53);

LABEL_8:
    [v51 _setMetadata:v53];

    *(v22 + OBJC_IVAR____TtC18SiriLinkFlowPlugin25CustomIntentExecutionFlow_state) = v71;
    goto LABEL_10;
  }

  *(v22 + OBJC_IVAR____TtC18SiriLinkFlowPlugin25CustomIntentExecutionFlow_state) = 0;
LABEL_10:
  type metadata accessor for CustomIntentExecutionFlow.State(0);
  swift_storeEnumTagMultiPayload();
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v59 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_59(v59, static Logger.voiceCommands);
  v60 = v71;
  v61 = Logger.logObject.getter();
  v62 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v61, v62))
  {
    v63 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    v73 = v64;
    *v63 = 136315138;
    if (v71 && (v65 = outlined bridged method (pb) of @objc INIntent.identifier.getter(v60, &selRef_identifier), v66))
    {
      v67 = v66;
    }

    else
    {

      v67 = 0xE500000000000000;
      v65 = 0x7974706D65;
    }

    v68 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v65, v67, &v73);

    *(v63 + 4) = v68;
    _os_log_impl(&dword_0, v61, v62, "intent id: %s", v63, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v64);
    OUTLINED_FUNCTION_15_0();
    OUTLINED_FUNCTION_15_0();
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a21);
  __swift_destroy_boxed_opaque_existential_1Tm(v24);
  __swift_destroy_boxed_opaque_existential_1Tm(v72);
  __swift_destroy_boxed_opaque_existential_1Tm(v49);
  OUTLINED_FUNCTION_42();
}

uint64_t outlined init with copy of CustomIntentExecutionFlow.State(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CustomIntentExecutionFlow.State(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of CustomIntentExecutionFlow.State(uint64_t a1)
{
  v2 = type metadata accessor for CustomIntentExecutionFlow.State(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void CustomIntentExecutionFlow.on(input:)()
{
  OUTLINED_FUNCTION_40_0();
  v1 = v0;
  v3 = v2;
  v100 = type metadata accessor for CustomIntentExecutionFlow.State(0);
  v4 = OUTLINED_FUNCTION_7(v100);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  OUTLINED_FUNCTION_50_0();
  v97 = v7 - v8;
  __chkstk_darwin(v9);
  v11 = &v95 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow13RCHFlowResultOySo8INIntentCSo0F8ResponseCGMd, &_s11SiriKitFlow13RCHFlowResultOySo8INIntentCSo0F8ResponseCGMR);
  v13 = OUTLINED_FUNCTION_7_1(v12);
  v98 = v14;
  v99 = v13;
  v16 = *(v15 + 64);
  __chkstk_darwin(v13);
  OUTLINED_FUNCTION_50_0();
  v96 = (v17 - v18);
  __chkstk_darwin(v19);
  v21 = &v95 - v20;
  v22 = type metadata accessor for Parse.DirectInvocation();
  v101 = OUTLINED_FUNCTION_7_1(v22);
  v102 = v23;
  v25 = *(v24 + 64);
  __chkstk_darwin(v101);
  OUTLINED_FUNCTION_3();
  v28 = v27 - v26;
  v29 = type metadata accessor for Parse();
  v30 = OUTLINED_FUNCTION_7_1(v29);
  v32 = v31;
  v34 = *(v33 + 64);
  __chkstk_darwin(v30);
  OUTLINED_FUNCTION_3();
  v37 = v36 - v35;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
  v39 = *(*(v38 - 8) + 64);
  __chkstk_darwin(v38 - 8);
  v41 = &v95 - v40;
  v42 = type metadata accessor for Input();
  OUTLINED_FUNCTION_7(v42);
  (*(v43 + 16))(v41, v3, v42);
  __swift_storeEnumTagSinglePayload(v41, 0, 1, v42);
  v44 = OBJC_IVAR____TtC18SiriLinkFlowPlugin25CustomIntentExecutionFlow_input;
  swift_beginAccess();
  outlined assign with take of Input?(v41, v1 + v44);
  swift_endAccess();
  Input.parse.getter();
  v45 = v32[11];
  v46 = OUTLINED_FUNCTION_62();
  v48 = v47(v46);
  if (v48 == enum case for Parse.NLv3IntentPlusServerConversion(_:))
  {
    v49 = v32[12];
    v50 = OUTLINED_FUNCTION_62();
    v51(v50);
    v52 = *(v37 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology8NLIntentV_0A7KitFlow5ParseO16ServerConversionCtMd, &_s12SiriOntology8NLIntentV_0A7KitFlow5ParseO16ServerConversionCtMR) + 48));
    v53 = Parse.ServerConversion.siriKitIntent.getter();
    v54 = [v53 _type];

    if (v54 == &dword_0 + 2)
    {
      v55 = Parse.ServerConversion.siriKitIntent.getter();
      CustomIntentExecutionFlow.processCustomIntentConversionResult(conversionResult:)(v55, 0);
    }

    v56 = type metadata accessor for NLIntent();
    OUTLINED_FUNCTION_7(v56);
    (*(v57 + 8))(v37);
  }

  else
  {
    if (v48 != enum case for Parse.directInvocation(_:))
    {
      v66 = v32[1];
      v67 = OUTLINED_FUNCTION_62();
      v69(v67, v68);
      goto LABEL_21;
    }

    v58 = v32[12];
    v59 = OUTLINED_FUNCTION_62();
    v60(v59);
    v62 = v101;
    v61 = v102;
    (*(v102 + 32))(v28, v37, v101);
    if (Parse.DirectInvocation.identifier.getter() == 0xD00000000000003BLL && 0x8000000000230BC0 == v63)
    {
    }

    else
    {
      v65 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v65 & 1) == 0)
      {
        (*(v61 + 8))(v28, v62);
        goto LABEL_21;
      }
    }

    if (one-time initialization token for voiceCommands != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v70 = type metadata accessor for Logger();
    v71 = __swift_project_value_buffer(v70, static Logger.voiceCommands);
    v72 = Logger.logObject.getter();
    v73 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v72, v73))
    {
      v74 = OUTLINED_FUNCTION_52();
      *v74 = 0;
      _os_log_impl(&dword_0, v72, v73, "CustomIntentExecutionFlow on input: direct Invocation done button", v74, 2u);
      OUTLINED_FUNCTION_15_0();
    }

    v75 = OBJC_IVAR____TtC18SiriLinkFlowPlugin25CustomIntentExecutionFlow_state;
    swift_beginAccess();
    outlined init with copy of CustomIntentExecutionFlow.State(v1 + v75, v11);
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      v77 = v98;
      v76 = v99;
      (*(v98 + 32))(v21, v11, v99);
      (*(v77 + 16))(v97, v21, v76);
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_30_8();
      (*(v77 + 8))(v21, v76);
      (*(v61 + 8))(v28, v62);
    }

    else
    {
      outlined destroy of CustomIntentExecutionFlow.State(v11);
      v78 = Parse.DirectInvocation.userData.getter();
      if (v78 && (static ShortcutDoneButtonConverter.toShortcutDoneButton(userData:)(v78, &v103), , (v79 = v104) != 0))
      {
        v81 = v105;
        v80 = v106;
        v107 = v103;
        v82 = v71;
        v83 = Logger.logObject.getter();
        v84 = static os_log_type_t.debug.getter();
        if (OUTLINED_FUNCTION_17_11(v84))
        {
          v85 = OUTLINED_FUNCTION_52();
          *v85 = 0;
          _os_log_impl(&dword_0, v83, v82, "CustomIntentExecutionFlow creating exit value with done button.", v85, 2u);
          OUTLINED_FUNCTION_15_0();
        }

        v86 = v96;
        *v96 = v80;
        v86[1] = v79;
        v86[2] = v81;
        v88 = v98;
        v87 = v99;
        (*(v98 + 104))(v86, enum case for RCHFlowResult.complete<A, B>(_:), v99);
        (*(v88 + 16))(v97, v86, v87);
        swift_storeEnumTagMultiPayload();

        v89 = v79;
        v90 = v81;
        OUTLINED_FUNCTION_30_8();
        v108 = v107;
        outlined destroy of Any?(&v108, &_sSSSgMd, &_sSSSgMR);

        (*(v88 + 8))(v86, v87);
        (*(v102 + 8))(v28);
      }

      else
      {
        v91 = Logger.logObject.getter();
        v92 = static os_log_type_t.debug.getter();
        if (OUTLINED_FUNCTION_17_11(v92))
        {
          *OUTLINED_FUNCTION_52() = 0;
          OUTLINED_FUNCTION_25(&dword_0, v93, v94, "CustomIntentExecutionFlow on input: incorrect state for done button");
          OUTLINED_FUNCTION_15_0();
        }

        (*(v102 + 8))(v28);
      }
    }
  }

LABEL_21:
  OUTLINED_FUNCTION_42();
}

uint64_t CustomIntentExecutionFlow.execute()()
{
  OUTLINED_FUNCTION_8_0();
  v1[18] = v2;
  v1[19] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow13RCHFlowResultOySo8INIntentCSo0F8ResponseCGMd, &_s11SiriKitFlow13RCHFlowResultOySo8INIntentCSo0F8ResponseCGMR);
  v1[20] = v3;
  v4 = *(v3 - 8);
  v1[21] = v4;
  v5 = *(v4 + 64) + 15;
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow14RCHFlowFactoryVy0a4LinkC6Plugin012CustomIntentD8StrategyCGMd, &_s11SiriKitFlow14RCHFlowFactoryVy0a4LinkC6Plugin012CustomIntentD8StrategyCGMR);
  v1[24] = v6;
  v7 = *(v6 - 8);
  v1[25] = v7;
  v8 = *(v7 + 64) + 15;
  v1[26] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow08RCHChildC14ProducersAsyncVySo8INIntentCSo0G8ResponseCGMd, &_s11SiriKitFlow08RCHChildC14ProducersAsyncVySo8INIntentCSo0G8ResponseCGMR) - 8) + 64) + 15;
  v1[27] = swift_task_alloc();
  v10 = type metadata accessor for CustomIntentExecutionFlow.State(0);
  v1[28] = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();

  return _swift_task_switch(CustomIntentExecutionFlow.execute(), 0, 0);
}

{
  v110 = v0;
  v1 = *(v0 + 240);
  v2 = *(v0 + 224);
  v3 = *(v0 + 152);
  v4 = OBJC_IVAR____TtC18SiriLinkFlowPlugin25CustomIntentExecutionFlow_state;
  swift_beginAccess();
  outlined init with copy of CustomIntentExecutionFlow.State(v3 + v4, v1);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
      v5 = *(v0 + 232);
      v6 = **(v0 + 240);
      v7 = *(v0 + 224);
      v8 = *(v0 + 144);
      v9 = *(v0 + 152);
      if (!v6)
      {
        lazy protocol witness table accessor for type RunVoiceShortcutFlowErrors and conformance RunVoiceShortcutFlowErrors();
        v98 = OUTLINED_FUNCTION_16_6();
        *v99 = 0;
        *v5 = v98;
        *(v5 + 8) = 0;
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_30_8();
        static ExecuteResponse.complete()();
        goto LABEL_40;
      }

      *v5 = v6;
      swift_storeEnumTagMultiPayload();
      v10 = v6;
      OUTLINED_FUNCTION_30_8();
      outlined init with copy of DeviceState(v9 + OBJC_IVAR____TtC18SiriLinkFlowPlugin25CustomIntentExecutionFlow_appPolicyHandler, v0 + 56);
      v11 = outlined bridged method (pb) of @objc INIntent.identifier.getter(v10, &selRef_launchId);
      if (v12)
      {
        v13 = v11;
      }

      else
      {
        v13 = 0xD000000000000013;
      }

      if (v12)
      {
        v14 = v12;
      }

      else
      {
        v14 = 0x800000000022F740;
      }

      v15 = type metadata accessor for VoiceCommandsScreentimeCheckFlowStrategy();
      v16 = swift_allocObject();
      outlined init with take of AceServiceInvokerAsync((v0 + 56), v16 + 16);
      *(v16 + 56) = v13;
      *(v16 + 64) = v14;
      v108 = v15;
      v109 = lazy protocol witness table accessor for type RunCustomIntentReadingDelegate and conformance RunCustomIntentReadingDelegate(&lazy protocol witness table cache variable for type VoiceCommandsScreentimeCheckFlowStrategy and conformance VoiceCommandsScreentimeCheckFlowStrategy, type metadata accessor for VoiceCommandsScreentimeCheckFlowStrategy);
      *&v107 = v16;

      static OutputPublisherFactory.makeOutputPublisherAsync()();
      v17 = type metadata accessor for ScreentimeCheckFlow();
      OUTLINED_FUNCTION_66(v17);
      *(v0 + 136) = ScreentimeCheckFlow.init(strategy:outputPublisher:)();
      v18 = swift_allocObject();
      *(v18 + 16) = partial apply for implicit closure #3 in implicit closure #2 in CustomIntentExecutionFlow.execute();
      *(v18 + 24) = v9;

      static ExecuteResponse.ongoing<A>(next:childCompletion:)();

      goto LABEL_16;
    case 1u:
      v41 = *(v0 + 152);
      v42 = **(v0 + 240);
      if (*(v41 + OBJC_IVAR____TtC18SiriLinkFlowPlugin25CustomIntentExecutionFlow_appBlockedByScreentime) == 1)
      {
        v43 = *(v0 + 144);
        static ExecuteResponse.complete()();
      }

      else
      {
        v74 = *(v0 + 216);
        v75 = v41[13];
        v76 = v41[14];
        v77 = v41[2];
        type metadata accessor for CustomIntentExecutionFlow(0);
        OUTLINED_FUNCTION_1_30();
        lazy protocol witness table accessor for type RunCustomIntentReadingDelegate and conformance RunCustomIntentReadingDelegate(v78, v79);
        v80 = SiriEnvironmentLocating<>.siriEnvironment.getter();
        _s11SiriKitFlow08RCHChildC14ProducersAsyncV0a4LinkC6PluginE16forCustomIntents16voiceCommandName12originDevice6runner15siriEnvironment11deviceStateACySo8INIntentCSo0V8ResponseCGSSSg_So13INDeviceIdiomVAD0A15WorkflowRunning_p0A9Utilities0aS0CAA0pU0_ptFZAL_ANTt5g5(v75, v76, v77, (v41 + 15), v80, (v41 + 3));

        v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow08RCHChildC7FactoryCySo8INIntentCSo0F8ResponseCGMd, &_s11SiriKitFlow08RCHChildC7FactoryCySo8INIntentCSo0F8ResponseCGMR);
        OUTLINED_FUNCTION_66(v81);
        RCHChildFlowFactory.init(producers:)();
        type metadata accessor for App();
        outlined bridged method (pb) of @objc INIntent.identifier.getter(v42, &selRef_launchId);
        App.__allocating_init(appIdentifier:)();
        if (one-time initialization token for voiceCommands != -1)
        {
          OUTLINED_FUNCTION_0();
        }

        v82 = type metadata accessor for Logger();
        OUTLINED_FUNCTION_59(v82, static Logger.voiceCommands);
        v83 = v42;
        v84 = Logger.logObject.getter();
        v85 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v84, v85))
        {
          v86 = swift_slowAlloc();
          v87 = swift_slowAlloc();
          *&v105[0] = v87;
          *v86 = 136315138;
          v88 = outlined bridged method (pb) of @objc INIntent.identifier.getter(v83, &selRef_intentId);
          if (v89)
          {
            v90 = v89;
          }

          else
          {
            v88 = 0x7974706D65;
            v90 = 0xE500000000000000;
          }

          v91 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v88, v90, v105);

          *(v86 + 4) = v91;
          _os_log_impl(&dword_0, v84, v85, "CustomIntentExecutionFlow intent id: %s", v86, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v87);
          OUTLINED_FUNCTION_15_0();
          OUTLINED_FUNCTION_15_0();
        }

        v92 = *(v0 + 200);
        v93 = *(v0 + 208);
        v94 = *(v0 + 192);
        v96 = *(v0 + 144);
        v95 = *(v0 + 152);
        type metadata accessor for CustomIntentRCHFlowStrategy();
        v97 = v83;
        static Device.current.getter();
        *(v0 + 128) = CustomIntentRCHFlowStrategy.__allocating_init(intent:deviceState:)(v97, v105);
        lazy protocol witness table accessor for type RunCustomIntentReadingDelegate and conformance RunCustomIntentReadingDelegate(&lazy protocol witness table cache variable for type CustomIntentRCHFlowStrategy and conformance CustomIntentRCHFlowStrategy, type metadata accessor for CustomIntentRCHFlowStrategy);

        RCHFlowFactory.init(strategy:childFlowFactory:)();
        RCHFlowFactory.makeRCHFlowWithResolvedApp(_:intent:)();

        static ExecuteResponse.ongoing<A>(next:childCompletion:)();

        (*(v92 + 8))(v93, v94);
      }

      goto LABEL_40;
    case 4u:
      v21 = *(v0 + 240);
      v22 = *(v0 + 184);
      v23 = *(v0 + 160);
      v24 = *(v0 + 168);
      v26 = *v21;
      v25 = *(v21 + 8);
      v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8INIntentC6intent_So0A8ResponseC0bC011SiriKitFlow13RCHFlowResultOyAbEG9exitValuetMd, &_sSo8INIntentC6intent_So0A8ResponseC0bC011SiriKitFlow13RCHFlowResultOyAbEG9exitValuetMR);
      (*(v24 + 32))(v22, v21 + *(v27 + 64), v23);
      if (one-time initialization token for voiceCommands != -1)
      {
        OUTLINED_FUNCTION_0();
      }

      v28 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_59(v28, static Logger.voiceCommands);
      v29 = Logger.logObject.getter();
      static os_log_type_t.debug.getter();
      OUTLINED_FUNCTION_12_17();
      if (os_log_type_enabled(v29, v30))
      {
        *OUTLINED_FUNCTION_52() = 0;
        OUTLINED_FUNCTION_40(&dword_0, v31, v32, "Pushing Reading Flow to handle customIntents handle dialog");
        OUTLINED_FUNCTION_15_0();
      }

      v33 = *(v0 + 232);
      v34 = *(v0 + 184);
      v36 = *(v0 + 160);
      v35 = *(v0 + 168);
      v37 = *(v0 + 152);
      v102 = *(v0 + 224);
      v104 = *(v0 + 144);

      v103 = v25;
      CustomIntentExecutionFlow.getReadItems(intent:intentResponse:)();

      v106 = 0;
      memset(v105, 0, sizeof(v105));
      outlined init with copy of DeviceState(v37 + 24, v0 + 16);
      static OutputPublisherFactory.makeOutputPublisher()();
      type metadata accessor for RunCustomIntentReadingDelegate();
      swift_allocObject();
      RunCustomIntentReadingDelegate.init(templater:deviceState:outputPublisher:)(v105, (v0 + 16), &v107);
      v38 = type metadata accessor for PaginatedConversationFlowSource();
      OUTLINED_FUNCTION_66(v38);
      lazy protocol witness table accessor for type RunCustomIntentReadingDelegate and conformance RunCustomIntentReadingDelegate(&lazy protocol witness table cache variable for type RunCustomIntentReadingDelegate and conformance RunCustomIntentReadingDelegate, type metadata accessor for RunCustomIntentReadingDelegate);

      PaginatedConversationFlowSource.init<A>(items:delegate:)();
      v39 = type metadata accessor for ReadingFlow();
      OUTLINED_FUNCTION_66(v39);

      v40 = ReadingFlow.init(source:)();
      (*(v35 + 16))(v33, v34, v36);
      swift_storeEnumTagMultiPayload();
      CustomIntentExecutionFlow.state.setter(v33);
      *(v0 + 120) = v40;
      static ExecuteResponse.complete<A>(next:)();

      (*(v35 + 8))(v34, v36);
LABEL_16:

      goto LABEL_40;
    case 5u:
      if (one-time initialization token for voiceCommands != -1)
      {
        OUTLINED_FUNCTION_0();
      }

      v44 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_59(v44, static Logger.voiceCommands);
      v45 = Logger.logObject.getter();
      v46 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v45, v46))
      {
        v47 = OUTLINED_FUNCTION_52();
        *v47 = 0;
        _os_log_impl(&dword_0, v45, v46, "CustomIntentExecutionFlow waiting for done.", v47, 2u);
        OUTLINED_FUNCTION_15_0();
      }

      v48 = *(v0 + 240);
      v49 = *(v0 + 160);
      v50 = *(v0 + 168);
      v51 = *(v0 + 144);

      static ExecuteResponse.ongoing(requireInput:)();
      (*(v50 + 8))(v48, v49);
      goto LABEL_40;
    case 6u:
      (*(*(v0 + 168) + 32))(*(v0 + 176), *(v0 + 240), *(v0 + 160));
      if (one-time initialization token for voiceCommands != -1)
      {
        OUTLINED_FUNCTION_0();
      }

      v52 = type metadata accessor for Logger();
      *(v0 + 248) = __swift_project_value_buffer(v52, static Logger.voiceCommands);
      v53 = Logger.logObject.getter();
      v54 = static os_log_type_t.debug.getter();
      if (OUTLINED_FUNCTION_17_11(v54))
      {
        *OUTLINED_FUNCTION_52() = 0;
        OUTLINED_FUNCTION_25(&dword_0, v55, v56, "CustomIntentExecutionFlow user pressed done, showing empty snippet");
        OUTLINED_FUNCTION_15_0();
      }

      v58 = *(v0 + 224);
      v57 = *(v0 + 232);
      v60 = *(v0 + 168);
      v59 = *(v0 + 176);
      v61 = *(v0 + 152);
      v62 = *(v0 + 160);

      v63 = [objc_allocWithZone(SAUIAssistantUtteranceView) init];
      v64 = [objc_allocWithZone(SAUIAddViews) init];
      *(v0 + 256) = v64;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
      v65 = swift_allocObject();
      *(v65 + 16) = xmmword_216010;
      *(v65 + 32) = v63;
      v66 = v63;
      outlined bridged method (mbnn) of @objc SAUIAddViews.views.setter(v65, v64);
      v67 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      outlined bridged method (mbnn) of @objc SAUIAddViews.dialogPhase.setter(v67, v68, v64);

      (*(v60 + 16))(v57, v59, v62);
      swift_storeEnumTagMultiPayload();
      CustomIntentExecutionFlow.state.setter(v57);
      v69 = v61[11];
      v70 = v61[12];
      __swift_project_boxed_opaque_existential_1(v61 + 8, v69);
      v71 = async function pointer to AceServiceInvokerAsync.submit<A>(_:)[1];
      v72 = swift_task_alloc();
      *(v0 + 264) = v72;
      v73 = type metadata accessor for NSError(0, &lazy cache variable for type metadata for SABaseCommand, SABaseCommand_ptr);
      *v72 = v0;
      v72[1] = CustomIntentExecutionFlow.execute();

      return AceServiceInvokerAsync.submit<A>(_:)(v64, v69, v73, v70);
    default:
      v19 = *(v0 + 240);
      v20 = *(v0 + 144);
      static ExecuteResponse.complete()();
      outlined destroy of CustomIntentExecutionFlow.State(v19);
LABEL_40:
      OUTLINED_FUNCTION_16_16();

      OUTLINED_FUNCTION_6_0();

      return v100();
  }
}

{
  OUTLINED_FUNCTION_8_0();
  v3 = v2;
  v4 = *(*v1 + 264);
  v5 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v6 = v5;
  *(v7 + 272) = v0;

  if (v0)
  {
    v8 = CustomIntentExecutionFlow.execute();
  }

  else
  {

    v8 = CustomIntentExecutionFlow.execute();
  }

  return _swift_task_switch(v8, 0, 0);
}

{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v3 = static WFDialogState.shared;
  (*(*static WFDialogState.shared + 248))();
  OUTLINED_FUNCTION_22_9();

  (*(v2 + 8))(v3, v0);
  OUTLINED_FUNCTION_16_16();

  OUTLINED_FUNCTION_6_0();

  return v4();
}

{
  v3 = *(v1 + 248);
  v4 = Logger.logObject.getter();
  static os_log_type_t.debug.getter();
  OUTLINED_FUNCTION_12_17();
  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v1 + 272);
  if (v6)
  {
    v2 = OUTLINED_FUNCTION_52();
    *v2 = 0;
    OUTLINED_FUNCTION_40(&dword_0, v8, v9, "CustomIntentExecutionFlow error submitting empty dialog");
    OUTLINED_FUNCTION_15_0();
  }

  OUTLINED_FUNCTION_22_9();
  (*(v2 + 8))(v4, v7);
  OUTLINED_FUNCTION_16_16();

  OUTLINED_FUNCTION_6_0();

  return v10();
}

uint64_t _s11SiriKitFlow08RCHChildC14ProducersAsyncV0a4LinkC6PluginE16forCustomIntents16voiceCommandName12originDevice6runner15siriEnvironment11deviceStateACySo8INIntentCSo0V8ResponseCGSSSg_So13INDeviceIdiomVAD0A15WorkflowRunning_p0A9Utilities0aS0CAA0pU0_ptFZAL_ANTt5g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = type metadata accessor for CATOption();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  type metadata accessor for NSError(0, &lazy cache variable for type metadata for INIntent, INIntent_ptr);
  type metadata accessor for NSError(0, &lazy cache variable for type metadata for INIntentResponse, INIntentResponse_ptr);
  RCHChildFlowProducersAsync.init()();
  type metadata accessor for ModeInfoProvider();
  swift_allocObject();
  v63 = ModeInfoProvider.init()();
  outlined init with copy of DeviceState(a6, &v74);
  type metadata accessor for RunCustomIntentCATs();
  static CATOption.defaultMode.getter();
  v11 = CATWrapper.__allocating_init(options:globals:)();
  type metadata accessor for RunCustomIntentCATsSimple();
  static CATOption.defaultMode.getter();
  v12 = CATWrapperSimple.__allocating_init(options:globals:)();
  type metadata accessor for CustomIntentNeedsValueFlowStrategy();
  swift_allocObject();
  *&v74 = CustomIntentNeedsValueFlowStrategy.init(deviceState:catWrapper:catWrapperSimple:)(&v74, v11, v12);
  lazy protocol witness table accessor for type RunCustomIntentReadingDelegate and conformance RunCustomIntentReadingDelegate(&lazy protocol witness table cache variable for type CustomIntentNeedsValueFlowStrategy and conformance CustomIntentNeedsValueFlowStrategy, type metadata accessor for CustomIntentNeedsValueFlowStrategy);
  static RCHChildFlowFactoryHelper.makeNeedsValueFlowProducer<A>(strategy:)();

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow08RCHChildC14ProducersAsyncVySo8INIntentCSo0G8ResponseCGMd, &_s11SiriKitFlow08RCHChildC14ProducersAsyncVySo8INIntentCSo0G8ResponseCGMR);
  RCHChildFlowProducersAsync.needsValueFlowProducer.setter();
  v61 = a6;
  outlined init with copy of DeviceState(a6, &v74);
  static CATOption.defaultMode.getter();
  v60 = CATWrapper.__allocating_init(options:globals:)();
  static CATOption.defaultMode.getter();
  v59 = CATWrapperSimple.__allocating_init(options:globals:)();
  type metadata accessor for RunVoiceCommandCATs();
  static CATOption.defaultMode.getter();
  v58 = CATWrapper.__allocating_init(options:globals:)();
  type metadata accessor for RunVoiceCommandCATsSimple();
  static CATOption.defaultMode.getter();
  v57 = CATWrapperSimple.__allocating_init(options:globals:)();
  v13 = type metadata accessor for ResponseFactory();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  v16 = ResponseFactory.init()();
  v17 = type metadata accessor for CustomIntentNeedsConfirmationFlowStrategy();
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  v20 = swift_allocObject();
  v21 = (v20 + OBJC_IVAR____TtC18SiriLinkFlowPlugin41CustomIntentNeedsConfirmationFlowStrategy_voiceCommandName);
  *v21 = a1;
  v21[1] = a2;
  outlined init with copy of DeviceState(&v74, v20 + OBJC_IVAR____TtC18SiriLinkFlowPlugin41CustomIntentNeedsConfirmationFlowStrategy_deviceState);
  v22 = OBJC_IVAR____TtC18SiriLinkFlowPlugin41CustomIntentNeedsConfirmationFlowStrategy_confirmationState;
  v23 = enum case for SiriKitConfirmationState.unset(_:);
  v24 = type metadata accessor for SiriKitConfirmationState();
  (*(*(v24 - 8) + 104))(v20 + v22, v23, v24);
  outlined init with copy of DeviceState(&v74, v73);
  v25 = type metadata accessor for ContinueInAppCATWrapperSimple();
  memset(v71, 0, sizeof(v71));
  v72 = 0;
  v26 = *(v25 + 48);
  v27 = *(v25 + 52);
  v55 = v25;
  swift_allocObject();
  outlined init with copy of DeviceState?(v71, v70);

  v28 = SiriKitFlowCATWrapperSimple.init(deviceState:)(v70);
  outlined destroy of Any?(v71, &_s11SiriKitFlow11DeviceState_pSgMd, &_s11SiriKitFlow11DeviceState_pSgMR);
  type metadata accessor for CustomIntentNeedsConfirmIntentResponseGenerator();
  v29 = swift_allocObject();
  outlined init with copy of DeviceState(v73, v71);
  v70[3] = v13;
  v70[4] = &protocol witness table for ResponseFactory;
  v62 = v13;
  v70[0] = v16;
  v64 = a1;
  v29[10] = a1;
  v29[11] = a2;
  outlined init with copy of DeviceState(v71, (v29 + 2));
  v29[9] = a5;
  v29[12] = v28;
  outlined init with copy of DeviceState(v70, (v29 + 13));
  outlined init with copy of DeviceState(v71, v69);
  v30 = one-time initialization token for shared;

  if (v30 != -1)
  {
    swift_once();
  }

  v31 = static WFDialogState.shared;

  __swift_destroy_boxed_opaque_existential_1Tm(v70);
  v32 = type metadata accessor for AppNameResolver();
  v33 = swift_allocObject();
  type metadata accessor for CustomIntentsDialogTemplating();
  v34 = swift_allocObject();
  v67 = v32;
  v68 = &protocol witness table for AppNameResolver;

  *&v66 = v33;
  __swift_destroy_boxed_opaque_existential_1Tm(v73);
  __swift_destroy_boxed_opaque_existential_1Tm(&v74);
  *(v34 + 56) = v31;
  outlined init with take of AceServiceInvokerAsync(v69, v34 + 16);
  *(v34 + 64) = 0;
  *(v34 + 72) = 1;
  *(v34 + 80) = v60;
  *(v34 + 88) = v59;
  *(v34 + 96) = v58;
  *(v34 + 104) = v57;
  outlined init with take of AceServiceInvokerAsync(&v66, v34 + 112);
  v29[7] = v34;
  v35 = v29[9];
  type metadata accessor for CustomIntentSnippetProvider();
  swift_allocObject();
  v29[8] = CustomIntentSnippetProvider.init(voiceCommandName:templatingService:deviceState:siriEnvironment:)(v64, a2, v34, v71, v35);
  *(v20 + OBJC_IVAR____TtC18SiriLinkFlowPlugin41CustomIntentNeedsConfirmationFlowStrategy_responseGenerator) = v29;
  *&v74 = v20;
  lazy protocol witness table accessor for type RunCustomIntentReadingDelegate and conformance RunCustomIntentReadingDelegate(&lazy protocol witness table cache variable for type CustomIntentNeedsConfirmationFlowStrategy and conformance CustomIntentNeedsConfirmationFlowStrategy, type metadata accessor for CustomIntentNeedsConfirmationFlowStrategy);

  static RCHChildFlowFactoryHelper.makeNeedsConfirmationFlowProducer<A>(strategy:)();

  RCHChildFlowProducersAsync.needsConfirmationFlowProducer.setter();
  outlined init with copy of DeviceState(v61, &v74);

  static CATOption.defaultMode.getter();
  v36 = CATWrapperSimple.__allocating_init(options:globals:)();
  type metadata accessor for CustomIntentNeedsDisambiguationFlowStrategy();
  v37 = swift_allocObject();

  *&v74 = specialized CustomIntentNeedsDisambiguationFlowStrategy.init(voiceCommandName:deviceState:modeInfoProvider:siriEnvironment:runCustomIntentCatWrapperSimple:)(v64, a2, &v74, v63, a5, v36, v37);
  lazy protocol witness table accessor for type RunCustomIntentReadingDelegate and conformance RunCustomIntentReadingDelegate(&lazy protocol witness table cache variable for type CustomIntentNeedsDisambiguationFlowStrategy and conformance CustomIntentNeedsDisambiguationFlowStrategy, type metadata accessor for CustomIntentNeedsDisambiguationFlowStrategy);
  static RCHChildFlowFactoryHelper.makeNeedsDisambiguationFlowProducer<A>(strategy:)();

  RCHChildFlowProducersAsync.needsDisambiguationFlowProducer.setter();
  outlined init with copy of DeviceState(v61, &v74);
  type metadata accessor for CustomIntentUnsupportedValueFlowStrategy();
  swift_allocObject();
  *&v74 = CustomIntentUnsupportedValueFlowStrategy.init(deviceState:)(&v74);
  lazy protocol witness table accessor for type RunCustomIntentReadingDelegate and conformance RunCustomIntentReadingDelegate(&lazy protocol witness table cache variable for type CustomIntentUnsupportedValueFlowStrategy and conformance CustomIntentUnsupportedValueFlowStrategy, type metadata accessor for CustomIntentUnsupportedValueFlowStrategy);
  static RCHChildFlowFactoryHelper.makeUnsupportedValueAndPromptFlowProducer<A>(strategy:)();

  RCHChildFlowProducersAsync.unsupportedValueFlowProducer.setter();
  outlined init with copy of DeviceState(v61, &v74);
  v38 = type metadata accessor for CustomIntentConfirmIntentFlowStrategy(0);
  v39 = *(v38 + 48);
  v40 = *(v38 + 52);
  swift_allocObject();

  *&v74 = CustomIntentConfirmIntentFlowStrategy.init(voiceCommandName:siriEnvironment:deviceState:)(v64, a2, a5, &v74);
  lazy protocol witness table accessor for type RunCustomIntentReadingDelegate and conformance RunCustomIntentReadingDelegate(&lazy protocol witness table cache variable for type CustomIntentConfirmIntentFlowStrategy and conformance CustomIntentConfirmIntentFlowStrategy, type metadata accessor for CustomIntentConfirmIntentFlowStrategy);
  static RCHChildFlowFactoryHelper.makeConditionalConfirmIntentFlowProducer<A>(strategy:_:)();

  RCHChildFlowProducersAsync.confirmIntentFlowProducer.setter();
  outlined init with copy of DeviceState(v61, &v74);
  type metadata accessor for CustomIntentHandleIntentFlowStrategy();
  swift_allocObject();

  *&v74 = CustomIntentHandleIntentFlowStrategy.init(voiceCommandName:siriEnvironment:deviceState:)(v64, a2, a5, &v74);
  lazy protocol witness table accessor for type RunCustomIntentReadingDelegate and conformance RunCustomIntentReadingDelegate(&lazy protocol witness table cache variable for type CustomIntentHandleIntentFlowStrategy and conformance CustomIntentHandleIntentFlowStrategy, type metadata accessor for CustomIntentHandleIntentFlowStrategy);
  static RCHChildFlowFactoryHelper.makeHandleIntentFlowProducer<A>(strategy:)();

  RCHChildFlowProducersAsync.handleIntentFlowProducer.setter();
  v41 = v61[4];
  __swift_project_boxed_opaque_existential_1(v61, v61[3]);
  if (dispatch thunk of DeviceState.isHomePod.getter())
  {
    outlined init with copy of DeviceState(a4, &v74);
    outlined init with copy of DeviceState(v61, v73);
    type metadata accessor for CustomIntentContinueInAppWithDialogStrategy();
    swift_allocObject();
    *&v74 = CustomIntentContinueInAppWithDialogStrategy.init(runner:deviceState:)(&v74, v73);
    lazy protocol witness table accessor for type RunCustomIntentReadingDelegate and conformance RunCustomIntentReadingDelegate(&lazy protocol witness table cache variable for type CustomIntentContinueInAppWithDialogStrategy and conformance CustomIntentContinueInAppWithDialogStrategy, type metadata accessor for CustomIntentContinueInAppWithDialogStrategy);
    static RCHChildFlowFactoryHelper.makeContinueInAppFlowWithHandoffToCompanionProducer<A>(strategy:)();

    v42 = v62;
  }

  else
  {
    outlined init with copy of DeviceState(v61, &v74);
    memset(v73, 0, sizeof(v73));
    v43 = *(v55 + 48);
    v44 = *(v55 + 52);
    swift_allocObject();
    outlined init with copy of DeviceState?(v73, v71);

    v45 = SiriKitFlowCATWrapperSimple.init(deviceState:)(v71);
    outlined destroy of Any?(v73, &_s11SiriKitFlow11DeviceState_pSgMd, &_s11SiriKitFlow11DeviceState_pSgMR);
    v42 = v62;
    v46 = *(v62 + 48);
    v47 = *(v62 + 52);
    swift_allocObject();
    v48 = ResponseFactory.init()();
    type metadata accessor for CustomIntentContinueInAppFlowStrategy();
    v49 = swift_allocObject();

    *&v74 = specialized CustomIntentContinueInAppFlowStrategy.init(voiceCommandName:siriEnvironment:deviceState:continueInAppCATWrapperSimple:responseFactory:)(v64, a2, a5, &v74, v45, v48, v49);
    lazy protocol witness table accessor for type RunCustomIntentReadingDelegate and conformance RunCustomIntentReadingDelegate(&lazy protocol witness table cache variable for type CustomIntentContinueInAppFlowStrategy and conformance CustomIntentContinueInAppFlowStrategy, type metadata accessor for CustomIntentContinueInAppFlowStrategy);
    static RCHChildFlowFactoryHelper.makeContinueInAppFlowWithAutomaticPunchOutProducer<A>(strategy:)();
  }

  RCHChildFlowProducersAsync.continueInAppFlowProducer.setter();
  outlined init with copy of DeviceState(v61, &v74);
  v50 = *(v42 + 48);
  v51 = *(v42 + 52);
  swift_allocObject();
  v52 = ResponseFactory.init()();
  type metadata accessor for CustomIntentTCCFlowStrategy();
  v53 = swift_allocObject();
  v53[10] = &type metadata for EnableTCCLabelsProvider;
  v53[11] = &protocol witness table for EnableTCCLabelsProvider;
  v53[15] = v42;
  v53[16] = &protocol witness table for ResponseFactory;
  v53[12] = v52;
  outlined init with take of AceServiceInvokerAsync(&v74, (v53 + 2));
  *&v74 = v53;
  lazy protocol witness table accessor for type RunCustomIntentReadingDelegate and conformance RunCustomIntentReadingDelegate(&lazy protocol witness table cache variable for type CustomIntentTCCFlowStrategy and conformance CustomIntentTCCFlowStrategy, type metadata accessor for CustomIntentTCCFlowStrategy);
  static RCHChildFlowFactoryHelper.makeRequestTCCAcceptanceFlow<A, B>(strategy:)();

  RCHChildFlowProducersAsync.requestTCCAcceptanceFlowProducer.setter();
}

uint64_t CustomIntentExecutionFlow.execute(completion:)()
{
  type metadata accessor for CustomIntentExecutionFlow(0);
  OUTLINED_FUNCTION_1_30();
  lazy protocol witness table accessor for type RunCustomIntentReadingDelegate and conformance RunCustomIntentReadingDelegate(v0, v1);
  return Flow.deferToExecuteAsync(_:)();
}

uint64_t CustomIntentExecutionFlow.isReadRequest(intent:intentResponse:deviceState:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = type metadata accessor for InteractionType();
  v5 = OUTLINED_FUNCTION_7_1(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v5);
  OUTLINED_FUNCTION_50_0();
  v12 = (v10 - v11);
  __chkstk_darwin(v13);
  v15 = &v21 - v14;
  CustomIntentExecutionFlow.getReadItems(intent:intentResponse:)();
  v17 = *(v16 + 16);

  if (v17)
  {
    OUTLINED_FUNCTION_4_24();
    if (dispatch thunk of DeviceState.isWatch.getter() & 1) != 0 || (OUTLINED_FUNCTION_4_24(), (dispatch thunk of DeviceState.isCarPlay.getter()) || (OUTLINED_FUNCTION_4_24(), (dispatch thunk of DeviceState.isHomePod.getter()) || (OUTLINED_FUNCTION_4_24(), (dispatch thunk of DeviceState.isEyesFree.getter()))
    {
      LOBYTE(v17) = 1;
    }

    else
    {
      v19 = a3[4];
      __swift_project_boxed_opaque_existential_1(a3, a3[3]);
      dispatch thunk of DeviceState.interactionType.getter();
      (*(v7 + 104))(v12, enum case for InteractionType.dialogDriven(_:), v4);
      LOBYTE(v17) = specialized == infix<A>(_:_:)();
      v20 = *(v7 + 8);
      v20(v12, v4);
      v20(v15, v4);
    }
  }

  return v17 & 1;
}

void CustomIntentExecutionFlow.getReadItems(intent:intentResponse:)()
{
  OUTLINED_FUNCTION_40_0();
  if (!v1)
  {
    goto LABEL_24;
  }

  v2 = v0;
  v3 = v1;
  v4 = outlined bridged method (pb) of @objc INIntentResponse.propertiesByName.getter(v3);
  if (!v4)
  {

LABEL_24:
    OUTLINED_FUNCTION_42();
    return;
  }

  v5 = v4;
  v6 = [v2 typeName];
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  v10._countAndFlagsBits = v7;
  v10._object = v9;
  v23 = v3;
  v11 = INIntentResponse.localizedResponseTemplate(intentName:)(v10);

  type metadata accessor for CATSpeakableString();
  v24 = static CATSpeakableString.getPropertiesInTemplateString(templateString:)(v11._countAndFlagsBits, v11._object);

  v12 = 0;
  v13 = 1 << *(v5 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(v5 + 64);
  v16 = (v13 + 63) >> 6;
LABEL_6:
  if (!v15)
  {
    goto LABEL_8;
  }

  do
  {
    v17 = v12;
LABEL_12:
    v18 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
    v19 = v18 | (v17 << 6);
    outlined init with copy of AnyHashable(*(v5 + 48) + 40 * v19, v26);
    outlined init with copy of Any(*(v5 + 56) + 32 * v19, v25);
    *v28 = v26[0];
    *&v28[16] = v26[1];
    *&v28[32] = v27;
    outlined init with take of Any(v25, &v28[40]);
LABEL_13:
    memcpy(v29, v28, 0x48uLL);
    if (!*(&v29[1] + 1))
    {

      goto LABEL_24;
    }

    outlined init with take of Any((&v29[2] + 8), v26);
    *v28 = v29[0];
    *&v28[16] = v29[1];
    *&v28[32] = *&v29[2];
    v20 = swift_dynamicCast();
    if (v20)
    {
      *v28 = v25[0];
      __chkstk_darwin(v20);
      v22[2] = v28;
      v21 = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), v22, v24);

      if (v21)
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v26);
        goto LABEL_6;
      }

      outlined init with take of Any(v26, v28);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
      if (swift_dynamicCast())
      {

        goto LABEL_24;
      }

      goto LABEL_6;
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v26);
  }

  while (v15);
LABEL_8:
  while (1)
  {
    v17 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v17 >= v16)
    {
      v15 = 0;
      memset(v28, 0, sizeof(v28));
      goto LABEL_13;
    }

    v15 = *(v5 + 64 + 8 * v17);
    ++v12;
    if (v15)
    {
      v12 = v17;
      goto LABEL_12;
    }
  }

  __break(1u);
}

uint64_t CustomIntentExecutionFlow.processCustomIntentConversionResult(conversionResult:)(void *a1, char a2)
{
  v4 = type metadata accessor for CustomIntentExecutionFlow.State(0);
  v5 = OUTLINED_FUNCTION_7(v4);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  OUTLINED_FUNCTION_3();
  v10 = (v9 - v8);
  if (a2)
  {
    *v10 = a1;
    OUTLINED_FUNCTION_21_11();
    swift_errorRetain();
  }

  else
  {
    outlined bridged method (pb) of @objc INIntent.identifier.getter(a1, &selRef_launchId);
    if (v11)
    {
    }

    else
    {
      if (one-time initialization token for voiceCommands != -1)
      {
        OUTLINED_FUNCTION_0();
      }

      v12 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_59(v12, static Logger.voiceCommands);
      v13 = static os_log_type_t.debug.getter();
      v14 = Logger.logObject.getter();
      if (os_log_type_enabled(v14, v13))
      {
        v15 = OUTLINED_FUNCTION_52();
        *v15 = 0;
        _os_log_impl(&dword_0, v14, v13, "No launchId found in INIntent", v15, 2u);
        OUTLINED_FUNCTION_15_0();
      }

      lazy protocol witness table accessor for type RunVoiceShortcutFlowErrors and conformance RunVoiceShortcutFlowErrors();
      v16 = OUTLINED_FUNCTION_16_6();
      *v17 = 0;
      *v10 = v16;
      OUTLINED_FUNCTION_21_11();
      CustomIntentExecutionFlow.state.setter(v10);
    }

    *v10 = a1;
    swift_storeEnumTagMultiPayload();
    outlined copy of Result<INIntent, Error>(a1, 0);
  }

  return CustomIntentExecutionFlow.state.setter(v10);
}

void CustomIntentExecutionFlow.processCustomIntentExecutionResult(executionResult:)()
{
  OUTLINED_FUNCTION_40_0();
  v1 = v0;
  v3 = v2;
  v4 = type metadata accessor for CustomIntentExecutionFlow.State(0);
  v5 = OUTLINED_FUNCTION_7(v4);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  OUTLINED_FUNCTION_3();
  v10 = (v9 - v8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow13RCHFlowResultOySo8INIntentCSo0F8ResponseCGMd, &_s11SiriKitFlow13RCHFlowResultOySo8INIntentCSo0F8ResponseCGMR);
  v12 = OUTLINED_FUNCTION_7_1(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  __chkstk_darwin(v12);
  v18 = (&v54 - v17);
  v19 = v14[2];
  v19(&v54 - v17, v3, v11);
  v20 = v14[11];
  v21 = OUTLINED_FUNCTION_18_15();
  v23 = v22(v21);
  if (v23 == enum case for RCHFlowResult.complete<A, B>(_:))
  {
    v24 = v14[12];
    v25 = OUTLINED_FUNCTION_18_15();
    v26(v25);
    v27 = *v18;
    v28 = v18[1];
    v29 = v18[2];

    v30 = v29;
    LOBYTE(v29) = CustomIntentExecutionFlow.isReadRequest(intent:intentResponse:deviceState:)(v28, v29, (v1 + 24));

    if (v29)
    {
      v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8INIntentC6intent_So0A8ResponseC0bC011SiriKitFlow13RCHFlowResultOyAbEG9exitValuetMd, &_sSo8INIntentC6intent_So0A8ResponseC0bC011SiriKitFlow13RCHFlowResultOyAbEG9exitValuetMR) + 64);
      *v10 = v28;
      v10[1] = v30;
      v19(v10 + v31, v3, v11);
      OUTLINED_FUNCTION_95();
      swift_storeEnumTagMultiPayload();
      v32 = v30;
      v33 = v28;
      OUTLINED_FUNCTION_13_15();
    }

    else
    {
      if ([v30 _intentResponseCode] == &dword_4)
      {
        type metadata accessor for CustomIntentExecutionFlow(0);
        OUTLINED_FUNCTION_1_30();
        lazy protocol witness table accessor for type RunCustomIntentReadingDelegate and conformance RunCustomIntentReadingDelegate(v38, v39);
        SiriEnvironmentLocating<>.siriEnvironment.getter();
        v40 = static CustomIntentExecutionFlow.isSkippingWaitForDone(intent:deviceState:siriEnvironment:)(v28, v1 + 24);
        v55 = v28;
        v41 = v40;

        if (v41)
        {
          v42 = OUTLINED_FUNCTION_9_16();
          (v19)(v42);
          OUTLINED_FUNCTION_95();
        }

        else
        {
          if (one-time initialization token for voiceCommands != -1)
          {
            OUTLINED_FUNCTION_0();
          }

          v49 = type metadata accessor for Logger();
          OUTLINED_FUNCTION_59(v49, static Logger.voiceCommands);
          v50 = Logger.logObject.getter();
          v51 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v50, v51))
          {
            v52 = OUTLINED_FUNCTION_52();
            *v52 = 0;
            _os_log_impl(&dword_0, v50, v51, "CustomIntentExecutionFlow setting state to wait for done.", v52, 2u);
            OUTLINED_FUNCTION_15_0();
          }

          v53 = OUTLINED_FUNCTION_9_16();
          (v19)(v53);
          OUTLINED_FUNCTION_95();
        }

        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_13_15();
      }

      else
      {
        v43 = OUTLINED_FUNCTION_9_16();
        (v19)(v43);
        OUTLINED_FUNCTION_95();
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_13_15();
      }
    }
  }

  else if (v23 == enum case for RCHFlowResult.error<A, B>(_:))
  {
    v34 = v14[12];
    v35 = OUTLINED_FUNCTION_18_15();
    v36(v35);
    v37 = *(v18 + 8);
    *v10 = *v18;
    *(v10 + 8) = v37;
    OUTLINED_FUNCTION_95();
    swift_storeEnumTagMultiPayload();
    swift_errorRetain();
    OUTLINED_FUNCTION_13_15();
  }

  else if (v23 == enum case for RCHFlowResult.cancelled<A, B>(_:))
  {
    OUTLINED_FUNCTION_95();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_13_15();
  }

  else
  {
    lazy protocol witness table accessor for type RunVoiceShortcutFlowErrors and conformance RunVoiceShortcutFlowErrors();
    v44 = OUTLINED_FUNCTION_16_6();
    *v45 = 0;
    *v10 = v44;
    *(v10 + 8) = 0;
    OUTLINED_FUNCTION_95();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_13_15();
    v46 = v14[1];
    v47 = OUTLINED_FUNCTION_18_15();
    v48(v47);
  }

  OUTLINED_FUNCTION_42();
}

uint64_t static CustomIntentExecutionFlow.isSkippingWaitForDone(intent:deviceState:siriEnvironment:)(void *a1, uint64_t a2)
{
  v4 = [a1 typeName];
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  if (v5 == 0xD000000000000051 && 0x80000000002309D0 == v7)
  {
    goto LABEL_20;
  }

  v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v9)
  {
    goto LABEL_21;
  }

  v10 = [a1 typeName];
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  if (v11 == 0xD00000000000005ALL && 0x8000000000232480 == v13)
  {
LABEL_20:
  }

  else
  {
    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v15 & 1) == 0 && !INIntent.shouldSupressIntentResponseDialog()())
    {
      type metadata accessor for CustomIntentsDialogTemplating();
      if ((static CustomIntentsDialogTemplating.isShortcutsInternalCustomIntent(intent:)(a1) & 1) == 0)
      {
        v16 = [a1 _metadata];
        if (v16)
        {
          v17 = v16;
          v18 = [v16 showsWhenRun];

          if (v18)
          {
            type metadata accessor for CustomIntentSnippetProvider();
            if (static CustomIntentSnippetProvider.isDoneButtonEligible(deviceState:intent:siriEnvironment:)(a2, a1))
            {
              if (one-time initialization token for voiceCommands != -1)
              {
                OUTLINED_FUNCTION_0();
              }

              v19 = type metadata accessor for Logger();
              OUTLINED_FUNCTION_59(v19, static Logger.voiceCommands);
              v20 = Logger.logObject.getter();
              static os_log_type_t.debug.getter();
              OUTLINED_FUNCTION_12_17();
              if (!os_log_type_enabled(v20, v21))
              {
                v24 = 0;
                goto LABEL_32;
              }

              *OUTLINED_FUNCTION_52() = 0;
              OUTLINED_FUNCTION_27_10(&dword_0, v22, v23, "#CustomIntentExecutionFlow isSkippingWaitForDone - will wait for done; button present");
              v24 = 0;
              goto LABEL_26;
            }
          }
        }
      }

      if (one-time initialization token for voiceCommands != -1)
      {
        OUTLINED_FUNCTION_0();
      }

      v30 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_59(v30, static Logger.voiceCommands);
      v20 = Logger.logObject.getter();
      static os_log_type_t.debug.getter();
      OUTLINED_FUNCTION_12_17();
      if (os_log_type_enabled(v20, v31))
      {
        *OUTLINED_FUNCTION_52() = 0;
        v29 = "#CustomIntentExecutionFlow isSkippingWaitForDone - skipping wait for done";
        goto LABEL_25;
      }

LABEL_31:
      v24 = 1;
      goto LABEL_32;
    }
  }

LABEL_21:
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v25 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_59(v25, static Logger.voiceCommands);
  v20 = Logger.logObject.getter();
  static os_log_type_t.debug.getter();
  OUTLINED_FUNCTION_12_17();
  if (!os_log_type_enabled(v20, v26))
  {
    goto LABEL_31;
  }

  *OUTLINED_FUNCTION_52() = 0;
  v29 = "#CustomIntentExecutionFlow isSkippingWaitForDone - skipping wait for done due to smart prompt";
LABEL_25:
  OUTLINED_FUNCTION_27_10(&dword_0, v27, v28, v29);
  v24 = 1;
LABEL_26:
  OUTLINED_FUNCTION_15_0();
LABEL_32:

  return v24;
}

uint64_t CustomIntentExecutionFlow.processScreentimeCheckCompletion(guardFlowResult:)()
{
  result = static GuardFlowResult.== infix(_:_:)();
  if (result)
  {
    *(v0 + OBJC_IVAR____TtC18SiriLinkFlowPlugin25CustomIntentExecutionFlow_appBlockedByScreentime) = 1;
  }

  return result;
}

uint64_t *CustomIntentExecutionFlow.deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 3);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 8);
  v1 = v0[14];

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 15);
  outlined destroy of CustomIntentExecutionFlow.State(v0 + OBJC_IVAR____TtC18SiriLinkFlowPlugin25CustomIntentExecutionFlow_state);
  outlined destroy of Any?(v0 + OBJC_IVAR____TtC18SiriLinkFlowPlugin25CustomIntentExecutionFlow_input, &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC18SiriLinkFlowPlugin25CustomIntentExecutionFlow_appPolicyHandler));
  return v0;
}

uint64_t CustomIntentExecutionFlow.__deallocating_deinit()
{
  CustomIntentExecutionFlow.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void (*protocol witness for SiriEnvironmentLocating.siriEnvironment.modify in conformance CustomIntentExecutionFlow(void *a1))(void *a1)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v4 = *v1;
  v3[4] = SiriEnvironmentLocating<>.siriEnvironment.modify();
  return protocol witness for SiriEnvironmentLocating.siriEnvironment.modify in conformance WFExecuteCustomIntentFlow;
}

uint64_t protocol witness for Flow.onAsync(input:) in conformance CustomIntentExecutionFlow(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = async function pointer to Flow.onAsync(input:)[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = protocol witness for Flow.onAsync(input:) in conformance CustomIntentExecutionFlow;

  return Flow.onAsync(input:)(a1, a2, a3);
}

uint64_t protocol witness for Flow.onAsync(input:) in conformance CustomIntentExecutionFlow()
{
  OUTLINED_FUNCTION_8_0();
  v2 = v1;
  v3 = *(*v0 + 16);
  v4 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v5 = v4;

  v6 = *(v4 + 8);

  return v6(v2);
}

uint64_t protocol witness for Flow.execute() in conformance CustomIntentExecutionFlow(uint64_t a1)
{
  v4 = *(**v1 + 272);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = protocol witness for Flow.execute() in conformance CustomIntentExecutionFlow;

  return v8(a1);
}

uint64_t protocol witness for Flow.execute() in conformance CustomIntentExecutionFlow()
{
  OUTLINED_FUNCTION_8_0();
  v1 = *(*v0 + 16);
  v2 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v3 = v2;

  OUTLINED_FUNCTION_6_0();

  return v4();
}

void outlined bridged method (mbnn) of @objc _INPBIntentMetadata.intentId.setter(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = String._bridgeToObjectiveC()();

  [a3 setIntentId:v4];
}

uint64_t outlined assign with take of Input?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t lazy protocol witness table accessor for type RunCustomIntentReadingDelegate and conformance RunCustomIntentReadingDelegate(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t outlined bridged method (pb) of @objc INIntent.identifier.getter(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v4;
}

uint64_t sub_C25E8()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

void type metadata completion function for CustomIntentExecutionFlow()
{
  v0 = type metadata accessor for CustomIntentExecutionFlow.State(319);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    type metadata accessor for Input?();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void type metadata accessor for Input?()
{
  if (!lazy cache variable for type metadata for Input?)
  {
    type metadata accessor for Input();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Input?);
    }
  }
}

uint64_t type metadata completion function for CustomIntentExecutionFlow.State()
{
  type metadata accessor for (intent: INIntent?)(319, &lazy cache variable for type metadata for (intent: INIntent?), type metadata accessor for INIntent?);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    type metadata accessor for (intent: INIntent)();
    v1 = v3;
    if (v4 <= 0x3F)
    {
      type metadata accessor for (intent: INIntent?)(319, &lazy cache variable for type metadata for (exitValue: RCHFlowResult<INIntent, INIntentResponse>), type metadata accessor for RCHFlowResult<INIntent, INIntentResponse>);
      v1 = v5;
      if (v6 <= 0x3F)
      {
        type metadata accessor for (innerError: Error, handled: Bool)();
        if (v8 > 0x3F)
        {
          return v7;
        }

        type metadata accessor for (intent: INIntent, intentResponse: INIntentResponse, exitValue: RCHFlowResult<INIntent, INIntentResponse>)();
        if (v9 > 0x3F)
        {
          return v7;
        }

        else
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v1;
}

void type metadata accessor for INIntent?()
{
  if (!lazy cache variable for type metadata for INIntent?)
  {
    type metadata accessor for NSError(255, &lazy cache variable for type metadata for INIntent, INIntent_ptr);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for INIntent?);
    }
  }
}

void type metadata accessor for (intent: INIntent)()
{
  if (!lazy cache variable for type metadata for (intent: INIntent))
  {
    v0 = type metadata accessor for NSError(0, &lazy cache variable for type metadata for INIntent, INIntent_ptr);
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for (intent: INIntent));
    }
  }
}

void type metadata accessor for (intent: INIntent?)(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
{
  if (!*a2)
  {
    v4 = a3(0);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void type metadata accessor for RCHFlowResult<INIntent, INIntentResponse>()
{
  if (!lazy cache variable for type metadata for RCHFlowResult<INIntent, INIntentResponse>)
  {
    type metadata accessor for NSError(255, &lazy cache variable for type metadata for INIntent, INIntent_ptr);
    type metadata accessor for NSError(255, &lazy cache variable for type metadata for INIntentResponse, INIntentResponse_ptr);
    v0 = type metadata accessor for RCHFlowResult();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for RCHFlowResult<INIntent, INIntentResponse>);
    }
  }
}

void type metadata accessor for (innerError: Error, handled: Bool)()
{
  if (!lazy cache variable for type metadata for (innerError: Error, handled: Bool))
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5Error_pMd, &_ss5Error_pMR);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (innerError: Error, handled: Bool));
    }
  }
}

void type metadata accessor for (intent: INIntent, intentResponse: INIntentResponse, exitValue: RCHFlowResult<INIntent, INIntentResponse>)()
{
  if (!lazy cache variable for type metadata for (intent: INIntent, intentResponse: INIntentResponse, exitValue: RCHFlowResult<INIntent, INIntentResponse>))
  {
    type metadata accessor for NSError(255, &lazy cache variable for type metadata for INIntent, INIntent_ptr);
    type metadata accessor for NSError(255, &lazy cache variable for type metadata for INIntentResponse, INIntentResponse_ptr);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s11SiriKitFlow13RCHFlowResultOySo8INIntentCSo0F8ResponseCGMd, &_s11SiriKitFlow13RCHFlowResultOySo8INIntentCSo0F8ResponseCGMR);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &lazy cache variable for type metadata for (intent: INIntent, intentResponse: INIntentResponse, exitValue: RCHFlowResult<INIntent, INIntentResponse>));
    }
  }
}

uint64_t outlined init with copy of DeviceState?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow11DeviceState_pSgMd, &_s11SiriKitFlow11DeviceState_pSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id outlined copy of Result<INIntent, Error>(void *a1, char a2)
{
  if (a2)
  {
    return swift_errorRetain();
  }

  else
  {
    return a1;
  }
}

uint64_t outlined assign with copy of CustomIntentExecutionFlow.State(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CustomIntentExecutionFlow.State(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_4_24()
{
  v1 = v0[3];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  return v1;
}

uint64_t OUTLINED_FUNCTION_13_15()
{

  return CustomIntentExecutionFlow.state.setter(v0);
}

uint64_t OUTLINED_FUNCTION_16_16()
{
  v3 = v0[29];
  v2 = v0[30];
  v5 = v0[26];
  v4 = v0[27];
  v7 = v0[22];
  v6 = v0[23];
}

uint64_t OUTLINED_FUNCTION_21_11()
{
  *(v0 + 8) = 0;

  return swift_storeEnumTagMultiPayload();
}

uint64_t OUTLINED_FUNCTION_22_9()
{
  v2 = v0[32];
  v4 = v0[21];
  v3 = v0[22];
  v5 = v0[20];
  v6 = v0[18];

  return static ExecuteResponse.complete()();
}

void OUTLINED_FUNCTION_27_10(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 2u);
}

uint64_t OUTLINED_FUNCTION_30_8()
{

  return CustomIntentExecutionFlow.state.setter(v0);
}

void static ShortcutDoneButtonConverter.toShortcutDoneButton(userData:)(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (!*(a1 + 16))
  {
    goto LABEL_25;
  }

  v4 = specialized __RawDictionaryStorage.find<A>(_:)(0x614E746E65746E69, 0xEA0000000000656DLL);
  if ((v5 & 1) == 0)
  {
    goto LABEL_25;
  }

  outlined init with copy of Any(*(a1 + 56) + 32 * v4, &v43);
  if ((OUTLINED_FUNCTION_0_22() & 1) == 0)
  {
    goto LABEL_25;
  }

  specialized Dictionary.subscript.getter(0x6144746E65746E69, 0xEA00000000006174, a1, &v43);
  if (!v44)
  {

LABEL_24:
    outlined destroy of Any?(&v43);
    goto LABEL_25;
  }

  if ((OUTLINED_FUNCTION_0_22() & 1) == 0)
  {

LABEL_25:
    OUTLINED_FUNCTION_5_16();
    v8 = 0;
    goto LABEL_26;
  }

  v6 = String._bridgeToObjectiveC()();

  OUTLINED_FUNCTION_1_31();
  isa = Data._bridgeToObjectiveC()().super.isa;
  v8 = INIntentCreate();

  if (!v8)
  {
    v17 = OUTLINED_FUNCTION_1_31();
    outlined consume of Data._Representation(v17, v18);
    OUTLINED_FUNCTION_5_16();
LABEL_26:
    v11 = 0;
LABEL_27:
    v12 = 0;
    goto LABEL_28;
  }

  OUTLINED_FUNCTION_2_27("intentResponseName", v33, v35, v37, v40, v43);
  if (!v44)
  {
    v19 = OUTLINED_FUNCTION_1_31();
    outlined consume of Data._Representation(v19, v20);
LABEL_23:

    goto LABEL_24;
  }

  if ((OUTLINED_FUNCTION_0_22() & 1) == 0)
  {
    v21 = OUTLINED_FUNCTION_1_31();
    outlined consume of Data._Representation(v21, v22);
LABEL_30:

    goto LABEL_25;
  }

  OUTLINED_FUNCTION_2_27("intentResponseData", v34, v36, v38, v41, v43);
  if (!v44)
  {
    v23 = OUTLINED_FUNCTION_1_31();
    outlined consume of Data._Representation(v23, v24);

    goto LABEL_23;
  }

  if ((OUTLINED_FUNCTION_0_22() & 1) == 0)
  {
    v25 = OUTLINED_FUNCTION_1_31();
    outlined consume of Data._Representation(v25, v26);

    goto LABEL_30;
  }

  v9 = String._bridgeToObjectiveC()();

  v10 = Data._bridgeToObjectiveC()().super.isa;
  v11 = INIntentResponseCreate();

  if (!v11)
  {
    v27 = OUTLINED_FUNCTION_1_31();
    outlined consume of Data._Representation(v27, v28);

    outlined consume of Data._Representation(v39, v42);
    OUTLINED_FUNCTION_5_16();
    v8 = 0;
    goto LABEL_27;
  }

  specialized Dictionary.subscript.getter(0x6449707061, 0xE500000000000000, a1, &v43);
  if (!v44)
  {
    v29 = OUTLINED_FUNCTION_1_31();
    outlined consume of Data._Representation(v29, v30);

    outlined consume of Data._Representation(v39, v42);
    goto LABEL_24;
  }

  if ((OUTLINED_FUNCTION_0_22() & 1) == 0)
  {
    v31 = OUTLINED_FUNCTION_1_31();
    outlined consume of Data._Representation(v31, v32);

    outlined consume of Data._Representation(v39, v42);
    goto LABEL_25;
  }

  type metadata accessor for App();
  v12 = App.__allocating_init(appIdentifier:)();
  specialized Dictionary.subscript.getter(0x776F6C666B726F77, 0xEC000000656D614ELL, a1, &v43);
  v13 = OUTLINED_FUNCTION_1_31();
  outlined consume of Data._Representation(v13, v14);
  outlined consume of Data._Representation(v39, v42);
  if (!v44)
  {
    outlined destroy of Any?(&v43);
    goto LABEL_35;
  }

  if ((OUTLINED_FUNCTION_0_22() & 1) == 0)
  {
LABEL_35:
    OUTLINED_FUNCTION_5_16();
    goto LABEL_28;
  }

  v15 = v39;
  v16 = v42;
LABEL_28:
  *a2 = v15;
  a2[1] = v16;
  a2[2] = v8;
  a2[3] = v11;
  a2[4] = v12;
}

id static ShortcutDoneButtonConverter.toUserData(shortcutDoneButton:)(uint64_t a1)
{
  v2 = Dictionary.init(dictionaryLiteral:)();
  v10 = v2;
  v91 = *a1;
  if (*(&v91 + 1))
  {
    *(&v90 + 1) = &type metadata for String;
    OUTLINED_FUNCTION_4_25(v2, v3, v4, v5, v6, v7, v8, v9, v84, v85, v86, v87, v88, v91);
    outlined init with copy of String?(&v91, &v84);
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_6_18();
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v86, 0x776F6C666B726F77, 0xEC000000656D614ELL);
    v10 = v84;
  }

  v12 = *(a1 + 16);
  v11 = *(a1 + 24);
  v13 = outlined bridged method (ob) of @objc PBCodable.data.getter([v12 backingStore]);
  if (v14 >> 60 != 15)
  {
    v15 = v13;
    v16 = v14;
    v17 = [v12 typeName];
    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;

    *(&v90 + 1) = &type metadata for String;
    *&v89 = v18;
    *(&v89 + 1) = v20;
    OUTLINED_FUNCTION_4_25(v21, v22, v23, v24, v25, v26, v27, v28, v84, v85, v86, v87, v88, v89);
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_6_18();
    v29 = specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v86, 0x614E746E65746E69, 0xEA0000000000656DLL);
    v30 = v84;
    *(&v90 + 1) = &type metadata for Data;
    *&v89 = v15;
    *(&v89 + 1) = v16;
    OUTLINED_FUNCTION_4_25(v29, v31, v32, v33, v34, v35, v36, v37, v84, v85, v86, v87, v88, v89);
    swift_isUniquelyReferenced_nonNull_native();
    v84 = v30;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v86, 0x6144746E65746E69, 0xEA00000000006174);
    v10 = v84;
  }

  result = [v11 backingStore];
  if (result)
  {
    v39 = outlined bridged method (ob) of @objc PBCodable.data.getter(result);
    if (v40 >> 60 != 15)
    {
      v41 = v39;
      v42 = v40;
      v43 = [v12 typeName];
      v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v46 = v45;

      *&v89 = v44;
      *(&v89 + 1) = v46;

      v47._countAndFlagsBits = 0x65736E6F70736552;
      v47._object = 0xE800000000000000;
      String.append(_:)(v47);

      *(&v90 + 1) = &type metadata for String;
      OUTLINED_FUNCTION_4_25(v48, v49, v50, v51, v52, v53, v54, v55, v84, v85, v86, v87, v88, v89);
      swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_6_18();
      v58 = OUTLINED_FUNCTION_3_20(v56, v57);
      v59 = v84;
      *(&v90 + 1) = &type metadata for Data;
      *&v89 = v41;
      *(&v89 + 1) = v42;
      OUTLINED_FUNCTION_4_25(v58, v60, v61, v62, v63, v64, v65, v66, v84, v85, v86, v87, v88, v89);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v84 = v59;
      OUTLINED_FUNCTION_3_20(isUniquelyReferenced_nonNull_native, v68);
      v10 = v84;
    }

    v69 = *(a1 + 32);
    v70 = App.appIdentifier.getter();
    if (v71)
    {
      *(&v90 + 1) = &type metadata for String;
      *&v89 = v70;
      *(&v89 + 1) = v71;
      OUTLINED_FUNCTION_4_25(v70, v71, v72, v73, v74, v75, v76, v77, v84, v85, v86, v87, v88, v89);
      swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_6_18();
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v86, 0x6449707061, 0xE500000000000000);
      return v84;
    }

    else
    {
      v78 = specialized __RawDictionaryStorage.find<A>(_:)(0x6449707061, 0xE500000000000000);
      if (v79)
      {
        v80 = v78;
        v81 = swift_isUniquelyReferenced_nonNull_native();
        *&v86 = v10;
        v82 = *(v10 + 24);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySSypGMd, &_ss17_NativeDictionaryVySSypGMR);
        _NativeDictionary.ensureUnique(isUnique:capacity:)(v81, v82);
        v10 = v86;
        v83 = *(*(v86 + 48) + 16 * v80 + 8);

        outlined init with take of Any((*(v10 + 56) + 32 * v80), &v89);
        _NativeDictionary._delete(at:)();
      }

      else
      {
        v89 = 0u;
        v90 = 0u;
      }

      outlined destroy of Any?(&v89);
    }

    return v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t outlined bridged method (ob) of @objc PBCodable.data.getter(void *a1)
{
  v2 = [a1 data];

  if (!v2)
  {
    return 0;
  }

  v3 = static Data._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t getEnumTagSinglePayload for ShortcutDoneButton(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
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

uint64_t storeEnumTagSinglePayload for ShortcutDoneButton(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_22()
{

  return swift_dynamicCast();
}

double OUTLINED_FUNCTION_2_27@<D0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __int128 a6)
{

  return specialized Dictionary.subscript.getter(0xD000000000000012, (a1 - 32) | 0x8000000000000000, v6, &a6);
}

_OWORD *OUTLINED_FUNCTION_3_20(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);

  return specialized _NativeDictionary.setValue(_:forKey:isUnique:)(va, 0xD000000000000012, v2 | 0x8000000000000000);
}

_OWORD *OUTLINED_FUNCTION_4_25(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 a11, uint64_t a12, uint64_t a13, __int128 a14)
{

  return outlined init with take of Any(&a14, &a11);
}

uint64_t LinkActivityManager.__allocating_init(bundleId:)(uint64_t a1, uint64_t a2)
{
  swift_allocObject();
  v4 = OUTLINED_FUNCTION_3_21();
  LinkActivityManager.init(bundleId:)(v4, a2);
  return v2;
}

void *LinkActivityManager.init(bundleId:)(uint64_t a1, uint64_t a2)
{
  v2[2] = _swiftEmptyArrayStorage;
  v2[3] = 0;
  type metadata accessor for LinkActivityManager.AtomicSessionResult();
  v5 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v5 + 112) = _swiftEmptyArrayStorage;
  v2[4] = v5;
  v2[5] = a1;
  v2[6] = a2;
  LinkActivityManager.fetchCurrentSessionOrCreateNewAssertion()();
  return v2;
}

uint64_t LinkActivityManager.sessionIDString()()
{
  OUTLINED_FUNCTION_8_0();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = LinkActivityManager.sessionIDString();

  return LinkActivityManager.sessionID()();
}

{
  OUTLINED_FUNCTION_8_0();
  v2 = v1;
  v4 = v3;
  v5 = *(*v0 + 16);
  v8 = *v0;

  v6 = *(v8 + 8);

  return v6(v4, v2);
}

void LinkActivityManager.fetchCurrentSessionOrCreateNewAssertion()()
{
  v1 = type metadata accessor for ActivityDescriptor();
  v2 = OUTLINED_FUNCTION_7_1(v1);
  v60 = v3;
  v5 = *(v4 + 64);
  __chkstk_darwin(v2);
  v7 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11ActivityKit17ProcessDescriptorVSgMd, &_s11ActivityKit17ProcessDescriptorVSgMR);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v56 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11ActivityKit0A14AttributesTypeVSgMd, &_s11ActivityKit0A14AttributesTypeVSgMR);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v56 - v14;
  v16 = type metadata accessor for ActivityPredicate();
  v17 = OUTLINED_FUNCTION_7_1(v16);
  v19 = v18;
  v21 = *(v20 + 64);
  __chkstk_darwin(v17);
  v23 = &v56 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ActivityCenter();
  static ActivityCenter.shared.getter();
  v24 = type metadata accessor for ActivityAttributesType();
  __swift_storeEnumTagSinglePayload(v15, 1, 1, v24);
  v57 = v0;
  v25 = *(v0 + 40);
  v26 = *(v0 + 48);

  ProcessDescriptor.init(identifier:)();
  v27 = type metadata accessor for ProcessDescriptor();
  __swift_storeEnumTagSinglePayload(v11, 0, 1, v27);
  ActivityPredicate.init(attributesType:owner:)();
  v28 = dispatch thunk of ActivityCenter.descriptors(matching:)();
  v29 = v60;
  v61 = v1;
  (*(v19 + 8))(v23, v16);

  v30 = *(v28 + 16);
  if (v30)
  {
    v62 = _swiftEmptyArrayStorage;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    v31 = v61;
    v32 = v62;
    v34 = v29[2];
    v33 = (v29 + 2);
    v35 = v33[64];
    v56 = v28;
    v36 = v28 + ((v35 + 32) & ~v35);
    v59 = *(v33 + 7);
    v60 = v34;
    v58 = (v33 - 8);
    do
    {
      (v60)(v7, v36, v31);
      v37 = ActivityDescriptor.id.getter();
      v31 = v61;
      v38 = v37;
      v40 = v39;
      (*v58)(v7, v61);
      v62 = v32;
      v41 = v32[2];
      if (v41 >= v32[3] >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v31 = v61;
        v32 = v62;
      }

      v32[2] = v41 + 1;
      v42 = &v32[2 * v41];
      v42[4] = v38;
      v42[5] = v40;
      v36 += v59;
      --v30;
    }

    while (v30);

    if (one-time initialization token for voiceCommands != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v43 = type metadata accessor for Logger();
    __swift_project_value_buffer(v43, static Logger.voiceCommands);
    OUTLINED_FUNCTION_3_21();

    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v62 = v47;
      *v46 = 136315138;
      v48 = Array.description.getter();
      v50 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v48, v49, &v62);

      *(v46 + 4) = v50;
      _os_log_impl(&dword_0, v44, v45, "LinkActivityManager: Fetched current session: %s", v46, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v47);
      OUTLINED_FUNCTION_15_0();
      OUTLINED_FUNCTION_15_0();
    }

    v51 = *(v57 + 16);
    *(v57 + 16) = v32;
  }

  else
  {

    if (one-time initialization token for voiceCommands != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v52 = type metadata accessor for Logger();
    __swift_project_value_buffer(v52, static Logger.voiceCommands);
    v53 = Logger.logObject.getter();
    v54 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      *v55 = 0;
      _os_log_impl(&dword_0, v53, v54, "LinkActivityManager: no current session, taking assertion...", v55, 2u);
      OUTLINED_FUNCTION_15_0();
    }

    LinkActivityManager.takeSessionAssertion()();
  }
}

uint64_t LinkActivityManager.sessionID()()
{
  *(v1 + 16) = v0;
  return _swift_task_switch(LinkActivityManager.sessionID(), 0, 0);
}

{
  v24 = v0;
  v1 = *(v0 + 16);
  if (*(*(v1 + 16) + 16))
  {
    v2 = *(v0 + 16);
    if (one-time initialization token for voiceCommands != -1)
    {
      OUTLINED_FUNCTION_0();
      v21 = *(v0 + 16);
    }

    v3 = type metadata accessor for Logger();
    __swift_project_value_buffer(v3, static Logger.voiceCommands);
    OUTLINED_FUNCTION_3_21();

    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v23 = v7;
      *v6 = 136315138;
      v8 = *(v1 + 16);

      v9 = Array.description.getter();
      v11 = v10;

      v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v11, &v23);

      *(v6 + 4) = v12;
      OUTLINED_FUNCTION_6_19(&dword_0, v13, v14, "LinkActivityManager: Returning one of active session IDs in: %s");
      __swift_destroy_boxed_opaque_existential_1Tm(v7);
      OUTLINED_FUNCTION_15_0();
      OUTLINED_FUNCTION_15_0();
    }

    v15 = *(v1 + 16);
    if (v15[2])
    {
      v17 = v15[4];
      v16 = v15[5];
    }

    v19 = OUTLINED_FUNCTION_4_26();

    return v20(v19);
  }

  else
  {
    v18 = *(v1 + 32);
    *(v0 + 24) = v18;

    return _swift_task_switch(LinkActivityManager.sessionID(), v18, 0);
  }
}

{
  OUTLINED_FUNCTION_8_0();
  *(v0 + 32) = *(*(v0 + 24) + 112);

  return _swift_task_switch(LinkActivityManager.sessionID(), 0, 0);
}

{
  v21 = v0;
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v1 = *(v0 + 32);
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.voiceCommands);
  OUTLINED_FUNCTION_3_21();

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 32);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v20 = v7;
    *v6 = 136315138;
    v8 = Array.description.getter();
    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, &v20);

    *(v6 + 4) = v10;
    OUTLINED_FUNCTION_6_19(&dword_0, v11, v12, "LinkActivityManager: Returning one of assertion session IDs in: %s");
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    OUTLINED_FUNCTION_15_0();
    OUTLINED_FUNCTION_15_0();
  }

  v13 = *(v0 + 32);
  if (v13[2])
  {
    v15 = v13[4];
    v14 = v13[5];
  }

  else
  {
    v16 = *(v0 + 32);
  }

  v17 = OUTLINED_FUNCTION_4_26();

  return v18(v17);
}

void LinkActivityManager.takeSessionAssertion()()
{
  v1 = v0;
  type metadata accessor for SNAAssertionTarget();
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);

  v4 = SNAAssertionTarget.__allocating_init(bundleIdentifier:)();
  v5 = swift_allocObject();
  swift_weakInit();
  v6 = objc_allocWithZone(SNAAssertion);
  v7 = @nonobjc SNAAssertion.init(explanation:target:invalidateOnSessionRequest:invalidationHandler:)(0xD000000000000036, 0x80000000002326D0, v4, 1, partial apply for closure #1 in LinkActivityManager.takeSessionAssertion(), v5);
  v8 = *(v1 + 24);
  *(v1 + 24) = v7;
}

id SNAAssertionTarget.__allocating_init(bundleIdentifier:)()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = String._bridgeToObjectiveC()();

  v2 = [v0 initWithBundleIdentifier:v1];

  return v2;
}

uint64_t closure #1 in LinkActivityManager.takeSessionAssertion()(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = v36 - v6;
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
    _os_log_impl(&dword_0, v9, v10, "Got assertion", v11, 2u);
  }

  if (a2)
  {
    swift_errorRetain();

    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v36[0] = a1;
      v14 = swift_slowAlloc();
      v37[0] = swift_slowAlloc();
      *v14 = 136315394;
      swift_beginAccess();
      Strong = swift_weakLoadStrong();
      if (Strong)
      {
        v17 = *(Strong + 40);
        v16 = *(Strong + 48);
      }

      else
      {
        v17 = 0x7974706D65;
        v16 = 0xE500000000000000;
      }

      v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v16, v37);

      *(v14 + 4) = v25;
      *(v14 + 12) = 2080;
      v36[1] = a2;
      swift_errorRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v26 = String.init<A>(describing:)();
      v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v27, v37);

      *(v14 + 14) = v28;
      _os_log_impl(&dword_0, v12, v13, "Failed to take an assertion for app %s with error: %s", v14, 0x16u);
      swift_arrayDestroy();

      a1 = v36[0];
    }

    else
    {
    }
  }

  else
  {

    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v37[0] = v21;
      *v20 = 136315138;
      swift_beginAccess();
      v22 = swift_weakLoadStrong();
      if (v22)
      {
        v24 = *(v22 + 40);
        v23 = *(v22 + 48);
      }

      else
      {
        v24 = 0x7974706D65;
        v23 = 0xE500000000000000;
      }

      v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v23, v37);

      *(v20 + 4) = v29;
      _os_log_impl(&dword_0, v18, v19, "Took SessionKit assertion for app: %s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v21);
    }
  }

  swift_beginAccess();
  v30 = swift_weakLoadStrong();
  if (v30)
  {
    v31 = *(v30 + 32);
  }

  else
  {
    v31 = 0;
  }

  v32 = type metadata accessor for TaskPriority();
  __swift_storeEnumTagSinglePayload(v7, 1, 1, v32);
  v33 = swift_allocObject();
  v33[2] = 0;
  v33[3] = 0;
  v33[4] = v31;
  v33[5] = a1;
  v34 = a1;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCytSg_Tt2g5();
}

uint64_t closure #1 in closure #1 in LinkActivityManager.takeSessionAssertion()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  return _swift_task_switch(closure #1 in closure #1 in LinkActivityManager.takeSessionAssertion(), 0, 0);
}

uint64_t closure #1 in closure #1 in LinkActivityManager.takeSessionAssertion()()
{
  OUTLINED_FUNCTION_8_0();
  if (*(v0 + 24))
  {
    v1 = [*(v0 + 32) sessionIdentifiers];
    *(v0 + 40) = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v2 = *(v0 + 24);

    return _swift_task_switch(closure #1 in closure #1 in LinkActivityManager.takeSessionAssertion(), v2, 0);
  }

  else
  {
    **(v0 + 16) = 1;
    v3 = *(v0 + 8);

    return v3();
  }
}

{
  OUTLINED_FUNCTION_8_0();
  v1 = *(v0 + 24);
  v2 = *(v1 + 112);
  *(v1 + 112) = *(v0 + 40);

  return _swift_task_switch(closure #1 in closure #1 in LinkActivityManager.takeSessionAssertion(), 0, 0);
}

{
  **(v0 + 16) = *(v0 + 24) == 0;
  return (*(v0 + 8))();
}

uint64_t LinkActivityManager.AtomicSessionResult.__deallocating_deinit()
{
  v1 = *(v0 + 112);

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t LinkActivityManager.deinit()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    [v1 invalidate];
  }

  v2 = *(v0 + 16);

  v3 = *(v0 + 32);

  v4 = *(v0 + 48);

  return v0;
}

uint64_t LinkActivityManager.__deallocating_deinit()
{
  LinkActivityManager.deinit();

  return swift_deallocClassInstance();
}

unint64_t type metadata accessor for SNAAssertionTarget()
{
  result = lazy cache variable for type metadata for SNAAssertionTarget;
  if (!lazy cache variable for type metadata for SNAAssertionTarget)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for SNAAssertionTarget);
  }

  return result;
}

uint64_t sub_C4CA0()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

id @nonobjc SNAAssertion.init(explanation:target:invalidateOnSessionRequest:invalidationHandler:)(uint64_t a1, uint64_t a2, void *a3, char a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v12 = String._bridgeToObjectiveC()();

  if (a5)
  {
    v16[4] = a5;
    v16[5] = a6;
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 1107296256;
    v16[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed CATResult, @guaranteed Error?) -> ();
    v16[3] = &block_descriptor_6;
    v13 = _Block_copy(v16);
  }

  else
  {
    v13 = 0;
  }

  v14 = [v7 initWithExplanation:v12 target:a3 invalidateOnSessionRequest:a4 & 1 invalidationHandler:v13];
  _Block_release(v13);

  return v14;
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_C4DFC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t partial apply for closure #1 in closure #1 in LinkActivityManager.takeSessionAssertion()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = protocol witness for ScreentimeCheckFlowStrategyAsync.makeAppRestrictedByScreentimeResponse() in conformance WFScreentimeCheckFlowStrategy;

  return closure #1 in closure #1 in LinkActivityManager.takeSessionAssertion()(a1, v4, v5, v7, v6);
}

void OUTLINED_FUNCTION_6_19(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 0xCu);
}

Swift::String __swiftcall LNConfirmationActionName.toIntentVerb()()
{
  v1 = [v0 type] - 3;
  v2 = 0xE200000000000000;
  v3 = 28516;
  switch(v1)
  {
    case 0uLL:
      break;
    case 1uLL:
      v2 = 0xE300000000000000;
      v3 = 7239026;
      break;
    case 2uLL:
      v3 = 28519;
      break;
    case 3uLL:
      v2 = 0xE400000000000000;
      v3 = 2003134838;
      break;
    case 4uLL:
      v2 = 0xE400000000000000;
      v3 = 1852141679;
      break;
    case 5uLL:
      v2 = 0xE500000000000000;
      v3 = 0x726564726FLL;
      break;
    case 6uLL:
      v2 = 0xE400000000000000;
      v3 = 1802465122;
      break;
    case 7uLL:
      v2 = 0xE300000000000000;
      v5 = 24944;
      goto LABEL_27;
    case 8uLL:
      v2 = 0xE300000000000000;
      v5 = 30050;
LABEL_27:
      v3 = v5 | 0x790000u;
      break;
    case 9uLL:
      v2 = 0xE700000000000000;
      v3 = 0x74736575716572;
      break;
    case 0xAuLL:
      v2 = 0xEF6E6F6974616769;
      v3 = 0x76616E7472617473;
      break;
    case 0xBuLL:
      v2 = 0xE500000000000000;
      v3 = 0x6572616873;
      break;
    case 0xCuLL:
      v2 = 0xE400000000000000;
      v3 = 1953722224;
      break;
    case 0xDuLL:
      v2 = 0xE400000000000000;
      v3 = 1684956531;
      break;
    case 0xEuLL:
      v2 = 0xE600000000000000;
      v3 = 0x657461657263;
      break;
    case 0xFuLL:
      v2 = 0xE300000000000000;
      v3 = 6579297;
      break;
    case 0x10uLL:
      v2 = 0xE600000000000000;
      v3 = 0x686372616573;
      break;
    case 0x11uLL:
      v3 = 1684957542;
      v2 = 0xE400000000000000;
      break;
    case 0x12uLL:
      v2 = 0xE600000000000000;
      v3 = 0x7265746C6966;
      break;
    case 0x13uLL:
      v2 = 0xE600000000000000;
      v3 = 0x656C67676F74;
      break;
    case 0x14uLL:
      v2 = 0xE700000000000000;
      v4 = 0x6F206E727574;
      goto LABEL_19;
    case 0x15uLL:
      v2 = 0xE800000000000000;
      v3 = 0x66666F206E727574;
      break;
    case 0x16uLL:
      v3 = 7628147;
      v2 = 0xE300000000000000;
      break;
    case 0x17uLL:
      v2 = 0xE800000000000000;
      v3 = 0x64616F6C6E776F64;
      break;
    case 0x18uLL:
      v2 = 0xE300000000000000;
      v3 = 7628135;
      break;
    case 0x19uLL:
      v2 = 0xE700000000000000;
      v4 = 0x696B63656863;
LABEL_19:
      v3 = v4 & 0xFFFFFFFFFFFFLL | 0x6E000000000000;
      break;
    case 0x1AuLL:
      v2 = 0xE300000000000000;
      v3 = 6778732;
      break;
    case 0x1BuLL:
      v2 = 0xE700000000000000;
      v3 = 0x61746164646461;
      break;
    case 0x1CuLL:
      v2 = 0xE400000000000000;
      v3 = 1819042147;
      break;
    case 0x1DuLL:
      v2 = 0xE400000000000000;
      v3 = 2036427888;
      break;
    case 0x1EuLL:
      v2 = 0xEA0000000000646ELL;
      v3 = 0x756F732079616C70;
      break;
    default:
      v3 = 0;
      v2 = 0xE000000000000000;
      break;
  }

  result._object = v2;
  result._countAndFlagsBits = v3;
  return result;
}

uint64_t WFRunVoiceShortcutFlow.__allocating_init(deviceState:appPolicyHandler:)(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + 48);
  v5 = *(v2 + 52);
  v6 = swift_allocObject();
  v7 = *(a2 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(a2, *(a2 + 24));
  OUTLINED_FUNCTION_34_9();
  v9 = *(v8 + 64);
  __chkstk_darwin(v10);
  OUTLINED_FUNCTION_3();
  v12 = OUTLINED_FUNCTION_20_7(v11);
  v13(v12);
  OUTLINED_FUNCTION_40_4();
  v14 = OUTLINED_FUNCTION_1_18();
  __swift_destroy_boxed_opaque_existential_1Tm(v14);
  return v6;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance WFRunVoiceShortcutFlowError(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  Hasher.init(_seed:)();
  a4(v8, v6);
  return Hasher._finalize()();
}

uint64_t ShortcutIdentification.getIdentifyingName(vcClient:)()
{
  OUTLINED_FUNCTION_15_2();
  v3 = v2[3];
  v4 = v2[4];
  v5 = __swift_project_boxed_opaque_existential_1(v2, v3);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = ShortcutIdentification.getIdentifyingName(vcClient:);

  return (specialized ShortcutIdentification.getIdentifyingName(vcClient:))(v5, v0, v3, v4);
}

{
  OUTLINED_FUNCTION_8_0();
  v2 = v1;
  OUTLINED_FUNCTION_9_0();
  v4 = *(v3 + 16);
  v5 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v6 = v5;

  v7 = OUTLINED_FUNCTION_18_16();

  return v8(v7, v2);
}

uint64_t WFRunVoiceShortcutFlow.init(deviceState:appPolicyHandler:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(a2, *(a2 + 24));
  OUTLINED_FUNCTION_34_9();
  v5 = *(v4 + 64);
  __chkstk_darwin(v6);
  OUTLINED_FUNCTION_3();
  v8 = OUTLINED_FUNCTION_20_7(v7);
  v9(v8);
  OUTLINED_FUNCTION_40_4();
  v10 = OUTLINED_FUNCTION_1_18();
  __swift_destroy_boxed_opaque_existential_1Tm(v10);
  return v2;
}

uint64_t WFRunVoiceShortcutFlow.on(input:)(uint64_t a1)
{
  v123 = type metadata accessor for VoiceCommandsNLIntent(0);
  v2 = OUTLINED_FUNCTION_7(v123);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  OUTLINED_FUNCTION_4_27();
  v122 = v5;
  OUTLINED_FUNCTION_22_10();
  v6 = type metadata accessor for NLIntent();
  v7 = OUTLINED_FUNCTION_7_1(v6);
  v131 = v8;
  v10 = *(v9 + 64);
  __chkstk_darwin(v7);
  OUTLINED_FUNCTION_4_27();
  v130 = v11;
  v12 = OUTLINED_FUNCTION_22_10();
  v13 = type metadata accessor for WFRunVoiceShortcutFlow.State(v12);
  v14 = OUTLINED_FUNCTION_7(v13);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  OUTLINED_FUNCTION_3();
  v19 = (v18 - v17);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriLinkFlowPlugin16VoiceCommandTaskOSgMd, &_s18SiriLinkFlowPlugin16VoiceCommandTaskOSgMR);
  v21 = OUTLINED_FUNCTION_14(v20);
  v23 = *(v22 + 64);
  __chkstk_darwin(v21);
  v120 = v112 - v24;
  v25 = OUTLINED_FUNCTION_22_10();
  v121 = type metadata accessor for ShortcutIdentification(v25);
  v26 = OUTLINED_FUNCTION_7(v121);
  v28 = *(v27 + 64);
  __chkstk_darwin(v26);
  OUTLINED_FUNCTION_4_27();
  v113 = v29;
  OUTLINED_FUNCTION_22_10();
  v117 = type metadata accessor for Siri_Nlu_External_UserParse();
  v30 = OUTLINED_FUNCTION_7_1(v117);
  v115 = v31;
  v33 = *(v32 + 64);
  __chkstk_darwin(v30);
  OUTLINED_FUNCTION_4_27();
  v114 = v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
  v36 = OUTLINED_FUNCTION_14(v35);
  v38 = *(v37 + 64);
  v39 = __chkstk_darwin(v36);
  v119 = v112 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v39);
  v127 = v112 - v41;
  OUTLINED_FUNCTION_22_10();
  v118 = type metadata accessor for USOParse();
  v42 = OUTLINED_FUNCTION_7_1(v118);
  v128 = v43;
  v45 = *(v44 + 64);
  __chkstk_darwin(v42);
  OUTLINED_FUNCTION_4_27();
  v116 = v46;
  OUTLINED_FUNCTION_22_10();
  v47 = type metadata accessor for Parse();
  v48 = OUTLINED_FUNCTION_7_1(v47);
  v125 = v49;
  v126 = v48;
  v51 = *(v50 + 64);
  __chkstk_darwin(v48);
  OUTLINED_FUNCTION_4_27();
  v132 = v52;
  OUTLINED_FUNCTION_22_10();
  v53 = type metadata accessor for Input();
  v54 = OUTLINED_FUNCTION_7_1(v53);
  v56 = v55;
  v58 = *(v57 + 64);
  __chkstk_darwin(v54);
  OUTLINED_FUNCTION_3();
  v61 = v60 - v59;
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v62 = type metadata accessor for Logger();
  __swift_project_value_buffer(v62, static Logger.voiceCommands);
  v63 = *(v56 + 16);
  v129 = a1;
  v63(v61, a1, v53);
  v64 = Logger.logObject.getter();
  v65 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v64, v65))
  {
    v66 = OUTLINED_FUNCTION_48();
    v67 = OUTLINED_FUNCTION_85();
    v112[0] = v6;
    v68 = v67;
    v133 = v67;
    *v66 = 136315138;
    v69 = Input.description.getter();
    v112[1] = v13;
    v70 = v19;
    v72 = v71;
    (*(v56 + 8))(v61, v53);
    v73 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v69, v72, &v133);
    v19 = v70;

    *(v66 + 4) = v73;
    _os_log_impl(&dword_0, v64, v65, "#WFRunVoiceShortcutFlow on input: %s", v66, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v68);
    v6 = v112[0];
    OUTLINED_FUNCTION_15_0();
    OUTLINED_FUNCTION_15_0();
  }

  else
  {

    (*(v56 + 8))(v61, v53);
  }

  v74 = v132;
  Input.parse.getter();
  v76 = v125;
  v75 = v126;
  v77 = (*(v125 + 88))(v74, v126);
  v79 = v130;
  v78 = v131;
  v81 = v127;
  v80 = v128;
  if (v77 == enum case for Parse.NLv3IntentOnly(_:))
  {
    (*(v76 + 96))(v74, v75);
    (*(v78 + 32))(v79, v74, v6);
    v82 = v122;
    (*(v78 + 16))(v122, v79, v6);
    if (one-time initialization token for voiceCommandNameNode != -1)
    {
      swift_once();
    }

    _s18SiriLinkFlowPlugin21VoiceCommandsNLIntentVAC0A8Ontology21IntentNodeTraversableAAWlTm_0(&lazy protocol witness table cache variable for type VoiceCommandsNLIntent and conformance VoiceCommandsNLIntent, type metadata accessor for VoiceCommandsNLIntent);
    IntentNodeTraversable.value<A>(forNode:)();
    outlined destroy of VoiceCommandsNLIntent(v82, type metadata accessor for VoiceCommandsNLIntent);
    (*(v78 + 8))(v79, v6);
    v83 = v134;
    if (v134)
    {
      *v19 = v133;
      v19[1] = v83;
      swift_storeEnumTagMultiPayload();
    }

    swift_storeEnumTagMultiPayload();
    v100 = OBJC_IVAR____TtC18SiriLinkFlowPlugin22WFRunVoiceShortcutFlow_state;
    v101 = v124;
    OUTLINED_FUNCTION_57_0();
    v102 = v101 + v100;
    v103 = v19;
    goto LABEL_16;
  }

  if (v77 == enum case for Parse.uso(_:))
  {
    v131 = v19;
    v84 = *(v76 + 96);
    v85 = v132;
    v86 = OUTLINED_FUNCTION_22();
    v87(v86);
    v88 = v116;
    v89 = v118;
    (*(v80 + 32))(v116, v85, v118);
    v90 = v114;
    USOParse.userParse.getter();
    v91 = Siri_Nlu_External_UserParse.userDialogActs.getter();
    (*(v115 + 8))(v90, v117);
    specialized Collection.first.getter(v91, v81);

    v92 = v119;
    outlined init with copy of Siri_Nlu_External_UserDialogAct?(v81, v119, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
    v93 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
    if (OUTLINED_FUNCTION_37_8() == 1)
    {
      outlined destroy of Any?(v81, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
      (*(v80 + 8))(v88, v89);
      outlined destroy of Any?(v92, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
      v94 = type metadata accessor for VoiceCommandTask(0);
      v95 = v120;
      __swift_storeEnumTagSinglePayload(v120, 1, 1, v94);
LABEL_18:
      outlined destroy of Any?(v95, &_s18SiriLinkFlowPlugin16VoiceCommandTaskOSgMd, &_s18SiriLinkFlowPlugin16VoiceCommandTaskOSgMR);
      return 0;
    }

    v105 = v120;
    Siri_Nlu_External_UserDialogAct.convertToVoiceCommandTask()(v120);
    outlined destroy of Any?(v81, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
    (*(v80 + 8))(v88, v89);
    v95 = v105;
    (*(*(v93 - 8) + 8))(v92, v93);
    v106 = type metadata accessor for VoiceCommandTask(0);
    if (__swift_getEnumTagSinglePayload(v105, 1, v106) == 1)
    {
      goto LABEL_18;
    }

    OUTLINED_FUNCTION_22_4();
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v107 = v113;
      _s18SiriLinkFlowPlugin22ShortcutIdentificationOWObTm_0(v105, v113, type metadata accessor for ShortcutIdentification);
      v108 = v107;
      v109 = v131;
      _s18SiriLinkFlowPlugin22ShortcutIdentificationOWObTm_0(v108, v131, type metadata accessor for ShortcutIdentification);
      swift_storeEnumTagMultiPayload();
      v110 = OBJC_IVAR____TtC18SiriLinkFlowPlugin22WFRunVoiceShortcutFlow_state;
      v111 = v124;
      OUTLINED_FUNCTION_57_0();
      v102 = v111 + v110;
      v103 = v109;
LABEL_16:
      outlined assign with take of WFRunVoiceShortcutFlow.State(v103, v102);
      swift_endAccess();
      return 1;
    }

    outlined destroy of VoiceCommandsNLIntent(v105, type metadata accessor for VoiceCommandTask);
  }

  else
  {
    lazy protocol witness table accessor for type WFRunVoiceShortcutFlowError and conformance WFRunVoiceShortcutFlowError();
    v96 = OUTLINED_FUNCTION_16_6();
    *v97 = 0;
    *v19 = v96;
    swift_storeEnumTagMultiPayload();
    v98 = OBJC_IVAR____TtC18SiriLinkFlowPlugin22WFRunVoiceShortcutFlow_state;
    v99 = v124;
    OUTLINED_FUNCTION_57_0();
    outlined assign with take of WFRunVoiceShortcutFlow.State(v19, v99 + v98);
    swift_endAccess();
    (*(v76 + 8))(v132, v75);
  }

  return 0;
}

uint64_t WFRunVoiceShortcutFlow.execute()()
{
  OUTLINED_FUNCTION_8_0();
  v1[124] = v0;
  v1[123] = v2;
  v3 = type metadata accessor for WorkflowRunnerFlow.State(0);
  v1[125] = v3;
  OUTLINED_FUNCTION_14(v3);
  v5 = *(v4 + 64);
  v1[126] = OUTLINED_FUNCTION_28();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSy18SiriLinkFlowPlugin0A19WorkflowRunnerEventOGMd, &_sScSy18SiriLinkFlowPlugin0A19WorkflowRunnerEventOGMR);
  v1[127] = v6;
  OUTLINED_FUNCTION_5_0(v6);
  v1[128] = v7;
  v9 = *(v8 + 64);
  v1[129] = OUTLINED_FUNCTION_28();
  v10 = type metadata accessor for DateTimeResolver();
  v1[130] = v10;
  OUTLINED_FUNCTION_5_0(v10);
  v1[131] = v11;
  v13 = *(v12 + 64);
  v1[132] = OUTLINED_FUNCTION_28();
  v14 = type metadata accessor for CATOption();
  OUTLINED_FUNCTION_14(v14);
  v16 = *(v15 + 64);
  v1[133] = OUTLINED_FUNCTION_28();
  v17 = type metadata accessor for ShortcutIdentification(0);
  OUTLINED_FUNCTION_14(v17);
  v19 = *(v18 + 64);
  v1[134] = OUTLINED_FUNCTION_28();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s2os6LoggerVSgMd, &_s2os6LoggerVSgMR);
  OUTLINED_FUNCTION_14(v20);
  v22 = *(v21 + 64) + 15;
  v1[135] = swift_task_alloc();
  v1[136] = swift_task_alloc();
  v1[137] = swift_task_alloc();
  v1[138] = swift_task_alloc();
  v23 = type metadata accessor for WFRunVoiceShortcutFlow.State(0);
  v1[139] = v23;
  OUTLINED_FUNCTION_14(v23);
  v25 = *(v24 + 64) + 15;
  v1[140] = swift_task_alloc();
  v1[141] = swift_task_alloc();
  v26 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v26, v27, v28);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_3();
  *v2 = v1;
  v4 = *(v3 + 1152);
  *v2 = *v0;
  *(v1 + 1160) = v5;
  *(v1 + 1168) = v6;

  v7 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v7, v8, v9);
}

{
  v1 = *(v0 + 1168);
  if (v1)
  {
    if (one-time initialization token for voiceCommands != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v2 = type metadata accessor for Logger();
    __swift_project_value_buffer(v2, static Logger.voiceCommands);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_50(v4))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_26(&dword_0, v5, v6, "#WFRunVoiceShortcutFlow has shortcut name, moving onto WorkflowRunnerFlow");
      OUTLINED_FUNCTION_15_0();
    }

    v7 = *(v0 + 1160);

    *(v0 + 16) = v7;
    *(v0 + 24) = v1;
    *(v0 + 80) = 0;
    *(v0 + 208) = 0u;
    *(v0 + 224) = 0u;
    *(v0 + 240) = 0;
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    v8 = *(v0 + 1064);
    v9 = *(v0 + 1056);
    v10 = *(v0 + 1048);
    v11 = *(v0 + 1040);
    v12 = static WFDialogState.shared;
    static AceService.currentAsync.getter();
    static Device.current.getter();
    static OutputPublisherFactory.makeOutputPublisherAsync()();
    type metadata accessor for RunCustomIntentCATs();
    OUTLINED_FUNCTION_51_2();
    OUTLINED_FUNCTION_76_0();
    v61 = CATWrapper.__allocating_init(options:globals:)();
    type metadata accessor for RunVoiceCommandCATs();
    static CATOption.defaultMode.getter();
    OUTLINED_FUNCTION_76_0();
    v63 = CATWrapper.__allocating_init(options:globals:)();
    v55 = type metadata accessor for RunVoiceCommandCATsSimple();
    static CATOption.defaultMode.getter();
    OUTLINED_FUNCTION_76_0();
    v13 = CATWrapperSimple.__allocating_init(options:globals:)();
    type metadata accessor for WorkflowRunnerCATPatternsExecutor(0);
    OUTLINED_FUNCTION_51_2();
    OUTLINED_FUNCTION_76_0();
    v59 = CATWrapper.__allocating_init(options:globals:)();
    static AceService.currentAsync.getter();
    v14 = type metadata accessor for LocationProvider();
    v15 = swift_allocObject();
    *(v15 + 16) = 0x3FA999999999999ALL;
    outlined init with take of AceServiceInvokerAsync((v0 + 88), v15 + 24);
    DateTimeResolver.init()();
    v60 = type metadata accessor for WorkflowRunnerFlow(0);
    v16 = objc_allocWithZone(v60);
    *(v0 + 672) = v14;
    *(v0 + 680) = &protocol witness table for LocationProvider;
    *(v0 + 648) = v15;
    *(v0 + 712) = &type metadata for DefaultTCCTemplatesCATWrapper;
    *(v0 + 720) = &protocol witness table for DefaultTCCTemplatesCATWrapper;
    *(v0 + 752) = v11;
    *(v0 + 760) = &protocol witness table for DateTimeResolver;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 728));
    (*(v10 + 16))(boxed_opaque_existential_1, v9, v11);
    *(v0 + 152) = &type metadata for DefaultLinkHandlingFlowFactory;
    *(v0 + 160) = &protocol witness table for DefaultLinkHandlingFlowFactory;
    memcpy(&v16[OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_workflowRunnerInput], (v0 + 16), 0x41uLL);
    outlined init with copy of DeviceState(v0 + 248, &v16[OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_aceServiceInvoker]);
    outlined init with copy of DeviceState(v0 + 288, &v16[OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_deviceState]);
    *&v16[OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_dialogState] = v12;
    outlined init with copy of DeviceState(v0 + 328, &v16[OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_outputPublisher]);
    outlined init with copy of DeviceState(v0 + 648, &v16[OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_locationProvider]);
    outlined init with copy of DeviceState(v0 + 728, &v16[OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_dateTimeResolver]);
    outlined init with copy of DeviceState(v0 + 128, &v16[OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_linkHandlingFlowFactory]);
    *&v16[OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_runVoiceCommandsCatWrapperSimple] = v13;
    v18 = &v16[OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_locationGuardFlowProvider];
    *v18 = closure #1 in variable initialization expression of static SLFLocationAccessGuardProvider.makeGuardFlow;
    v18[1] = 0;
    outlined init with copy of DeviceState(v0 + 688, &v16[OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_tccTemplatesCATWrapper]);
    outlined init with copy of DeviceState(v0 + 288, v0 + 568);
    type metadata accessor for RunLinkActionCATs();

    v58 = v12;

    v62 = v13;

    static CATOption.defaultMode.getter();
    OUTLINED_FUNCTION_76_0();
    v19 = CATWrapper.__allocating_init(options:globals:)();
    type metadata accessor for RunLinkActionCATsSimple();
    OUTLINED_FUNCTION_51_2();
    OUTLINED_FUNCTION_76_0();
    v20 = CATWrapperSimple.__allocating_init(options:globals:)();
    static CATOption.defaultMode.getter();
    OUTLINED_FUNCTION_76_0();
    v21 = CATWrapper.__allocating_init(options:globals:)();
    static CATOption.defaultMode.getter();
    OUTLINED_FUNCTION_76_0();
    v22 = CATWrapperSimple.__allocating_init(options:globals:)();
    type metadata accessor for RunLinkActionCATPatternsExecutor(0);
    OUTLINED_FUNCTION_51_2();
    OUTLINED_FUNCTION_76_0();
    v23 = CATWrapper.__allocating_init(options:globals:)();
    type metadata accessor for LinkActionDialogTemplating();
    v24 = swift_allocObject();
    v24[14] = v55;
    v24[15] = &protocol witness table for RunLinkActionCATPatternsExecutor;
    v24[11] = v23;
    outlined init with take of AceServiceInvokerAsync((v0 + 568), (v24 + 2));
    v24[7] = v19;
    v24[8] = v20;
    v24[9] = v21;
    v24[10] = v22;
    *&v16[OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_linkActionDialogTemplate] = v24;
    outlined init with copy of Siri_Nlu_External_UserDialogAct?(v0 + 208, v0 + 488, &_s18SiriLinkFlowPlugin0A15WorkflowRunning_pSgMd, &_s18SiriLinkFlowPlugin0A15WorkflowRunning_pSgMR);
    if (*(v0 + 512))
    {
      outlined init with take of AceServiceInvokerAsync((v0 + 488), v0 + 528);
      outlined init with take of AceServiceInvokerAsync((v0 + 528), &v16[OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_workflowRunner]);
    }

    else
    {
      outlined destroy of Any?(v0 + 488, &_s18SiriLinkFlowPlugin0A15WorkflowRunning_pSgMd, &_s18SiriLinkFlowPlugin0A15WorkflowRunning_pSgMR);
      outlined init with copy of DeviceState(v0 + 288, v0 + 448);
      outlined init with copy of DeviceState(v0 + 248, v0 + 408);
      v34 = type metadata accessor for SiriWorkflowRunner();
      swift_allocObject();

      v35 = SiriWorkflowRunner.init(workflowRunnerInput:deviceState:aceServiceInvoker:)((v0 + 16), (v0 + 448), (v0 + 408));
      v36 = &v16[OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_workflowRunner];
      *(v36 + 3) = v34;
      *(v36 + 4) = &protocol witness table for SiriWorkflowRunner;
      *v36 = v35;
    }

    v37 = *(v0 + 1064);
    v53 = *(v0 + 1040);
    v54 = *(v0 + 1056);
    v38 = *(v0 + 1032);
    v49 = *(v0 + 1016);
    v50 = *(v0 + 1024);
    v48 = *(v0 + 1008);
    v51 = *(v0 + 1000);
    v52 = *(v0 + 1048);
    v56 = *(v0 + 984);
    v57 = *(v0 + 1072);
    outlined init with copy of DeviceState(v0 + 288, v0 + 368);
    type metadata accessor for WorkflowRunnerCATs();

    static CATOption.defaultMode.getter();
    v39 = CATWrapper.__allocating_init(options:globals:)();
    type metadata accessor for WorkflowRunnerCATsSimple();
    static CATOption.defaultMode.getter();
    v40 = CATWrapperSimple.__allocating_init(options:globals:)();
    type metadata accessor for RunCustomIntentCATsSimple();
    static CATOption.defaultMode.getter();
    v41 = CATWrapperSimple.__allocating_init(options:globals:)();
    type metadata accessor for WorkflowDialogTemplating();
    swift_allocObject();
    *&v16[OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_dialogTemplating] = WorkflowDialogTemplating.init(deviceState:dialogState:workflowCatWrapper:workflowCatWrapperSimple:runCustomCatWrapper:runCustomCatWrapperSimple:runVoiceCommandsCatWrapper:runVoiceCommandsCatWrapperSimple:catPatternsExecutor:)(v0 + 368, v58, v39, v40, v61, v41, v63, v62, v59);
    outlined init with copy of DeviceState(&v16[OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_workflowRunner], v0 + 768);
    v42 = *(v0 + 792);
    v43 = *(v0 + 800);
    __swift_project_boxed_opaque_existential_1((v0 + 768), v42);
    (*(v43 + 8))(v42, v43);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 768));
    AsyncStream.makeAsyncIterator()();
    (*(v50 + 8))(v38, v49);
    swift_storeEnumTagMultiPayload();
    _s18SiriLinkFlowPlugin22ShortcutIdentificationOWObTm_0(v48, &v16[OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_state], type metadata accessor for WorkflowRunnerFlow.State);
    *(v0 + 944) = v16;
    *(v0 + 952) = v60;
    v44 = objc_msgSendSuper2((v0 + 944), "init");

    (*(v52 + 8))(v54, v53);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 328));
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 288));
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 248));
    outlined destroy of Any?(v0 + 208, &_s18SiriLinkFlowPlugin0A15WorkflowRunning_pSgMd, &_s18SiriLinkFlowPlugin0A15WorkflowRunning_pSgMR);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 128));
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 728));
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 688));
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 648));
    *(v0 + 968) = v44;
    _s18SiriLinkFlowPlugin21VoiceCommandsNLIntentVAC0A8Ontology21IntentNodeTraversableAAWlTm_0(&lazy protocol witness table cache variable for type WorkflowRunnerFlow and conformance WorkflowRunnerFlow, type metadata accessor for WorkflowRunnerFlow);
    static ExecuteResponse.complete<A>(next:)();
    OUTLINED_FUNCTION_2_28();
    outlined destroy of VoiceCommandsNLIntent(v57, v45);
  }

  else
  {
    v25 = *(v0 + 1136);
    v26 = *(v0 + 1120);
    v27 = *(v0 + 1112);
    v28 = *(v0 + 1072);
    v29 = *(v0 + 992);
    v30 = *(v0 + 984);
    lazy protocol witness table accessor for type WFRunVoiceShortcutFlowError and conformance WFRunVoiceShortcutFlowError();
    v31 = OUTLINED_FUNCTION_16_6();
    *v32 = 4;
    *v26 = v31;
    OUTLINED_FUNCTION_22_4();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_57_0();
    outlined assign with take of WFRunVoiceShortcutFlow.State(v26, v29 + v25);
    swift_endAccess();
    static ExecuteResponse.complete()();
    OUTLINED_FUNCTION_2_28();
    outlined destroy of VoiceCommandsNLIntent(v28, v33);
  }

  OUTLINED_FUNCTION_1_32();

  OUTLINED_FUNCTION_6_0();

  return v46();
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_3();
  *v3 = v2;
  v5 = *(v4 + 1176);
  v6 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v7 = v6;
  *(v8 + 1184) = v0;

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v9, v10, v11);
}

{
  OUTLINED_FUNCTION_12_0();
  static OutputPublisherFactory.makeOutputPublisherAsync()();
  v1 = v0[24];
  v2 = v0[25];
  __swift_project_boxed_opaque_existential_1(v0 + 21, v1);
  v3 = async function pointer to dispatch thunk of OutputPublisherAsync.publish(output:)[1];
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  v0[149] = v4;
  *v4 = v5;
  v4[1] = WFRunVoiceShortcutFlow.execute();

  return dispatch thunk of OutputPublisherAsync.publish(output:)(v0 + 76, v1, v2);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_3();
  *v3 = v2;
  v5 = *(v4 + 1192);
  v6 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v7 = v6;
  *(v8 + 1200) = v0;

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v9, v10, v11);
}

void WFRunVoiceShortcutFlow.execute()()
{
  v82 = v0;
  v1 = v0[141];
  v2 = v0[139];
  v3 = v0[124];
  v4 = OBJC_IVAR____TtC18SiriLinkFlowPlugin22WFRunVoiceShortcutFlow_state;
  v0[142] = OBJC_IVAR____TtC18SiriLinkFlowPlugin22WFRunVoiceShortcutFlow_state;
  swift_beginAccess();
  outlined init with copy of WFRunVoiceShortcutFlow.State(v3 + v4, v1, type metadata accessor for WFRunVoiceShortcutFlow.State);
  OUTLINED_FUNCTION_22_4();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      _s18SiriLinkFlowPlugin22ShortcutIdentificationOWObTm_0(v0[141], v0[134], type metadata accessor for ShortcutIdentification);
      type metadata accessor for VoiceShortcutClientWrapper();
      v0[143] = swift_initStackObject();
      v35 = swift_task_alloc();
      v0[144] = v35;
      *v35 = v0;
      v35[1] = WFRunVoiceShortcutFlow.execute();
      v36 = v0[134];
      OUTLINED_FUNCTION_58();

      __asm { BR              X2 }

      return;
    case 2u:
      v14 = *v0[141];
      if (one-time initialization token for voiceCommands != -1)
      {
        OUTLINED_FUNCTION_0();
      }

      v15 = type metadata accessor for Logger();
      __swift_project_value_buffer(v15, static Logger.voiceCommands);
      OUTLINED_FUNCTION_1_18();
      swift_errorRetain();
      v16 = Logger.logObject.getter();
      v17 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v16, v17))
      {
        v18 = OUTLINED_FUNCTION_48();
        v19 = OUTLINED_FUNCTION_85();
        v81 = v19;
        *v18 = 136315138;
        swift_getErrorValue();
        v20 = v0[110];
        v21 = v0[111];
        v22 = v0[112];
        v23 = Error.localizedDescription.getter();
        v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v24, &v81);

        *(v18 + 4) = v25;
        _os_log_impl(&dword_0, v16, v17, "#WFRunVoiceShortcutFlo in error state, error: %s", v18, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v19);
        OUTLINED_FUNCTION_15_0();
        OUTLINED_FUNCTION_15_0();
      }

      v26 = v0[123];
      static ExecuteResponse.complete()();

      break;
    case 3u:
      if (one-time initialization token for voiceCommands != -1)
      {
        OUTLINED_FUNCTION_0();
      }

      v27 = v0[138];
      v28 = v0[137];
      v29 = type metadata accessor for Logger();
      __swift_project_value_buffer(v29, static Logger.voiceCommands);
      OUTLINED_FUNCTION_42_6();
      v31 = v30;
      (*(v30 + 16))(v27);
      OUTLINED_FUNCTION_49_3();
      __swift_storeEnumTagSinglePayload(v32, v33, v34, v29);
      outlined init with copy of Siri_Nlu_External_UserDialogAct?(v27, v28, &_s2os6LoggerVSgMd, &_s2os6LoggerVSgMR);
      if (OUTLINED_FUNCTION_37_8() == 1)
      {
        outlined destroy of Any?(v0[137], &_s2os6LoggerVSgMd, &_s2os6LoggerVSgMR);
      }

      else
      {
        v55 = v0[137];
        v56 = Logger.logObject.getter();
        v57 = static os_log_type_t.error.getter();
        if (OUTLINED_FUNCTION_50(v57))
        {
          v58 = OUTLINED_FUNCTION_85();
          v81 = swift_slowAlloc();
          *v58 = 136315650;
          v59 = StaticString.description.getter();
          v61 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v59, v60, &v81);

          *(v58 + 4) = v61;
          *(v58 + 12) = 2048;
          *(v58 + 24) = OUTLINED_FUNCTION_27_11(105, v77, v78, v79, v80);
          OUTLINED_FUNCTION_44_6();
          _os_log_impl(v62, v63, v64, v65, v58, 0x20u);
          swift_arrayDestroy();
          OUTLINED_FUNCTION_15_0();
          OUTLINED_FUNCTION_15_0();
        }

        (*(v31 + 8))(v0[137], v29);
      }

      goto LABEL_36;
    case 4u:
      swift_task_alloc();
      OUTLINED_FUNCTION_20_0();
      v0[147] = v10;
      *v10 = v11;
      v10[1] = WFRunVoiceShortcutFlow.execute();
      v12 = v0[124];
      OUTLINED_FUNCTION_58();

      WFRunVoiceShortcutFlow.makeOutputForPromptForShortcutName()();
      return;
    case 5u:
      if (one-time initialization token for voiceCommands != -1)
      {
        OUTLINED_FUNCTION_0();
      }

      v39 = v0[136];
      v40 = v0[135];
      v41 = type metadata accessor for Logger();
      __swift_project_value_buffer(v41, static Logger.voiceCommands);
      OUTLINED_FUNCTION_42_6();
      v43 = v42;
      (*(v42 + 16))(v39);
      OUTLINED_FUNCTION_49_3();
      __swift_storeEnumTagSinglePayload(v44, v45, v46, v41);
      outlined init with copy of Siri_Nlu_External_UserDialogAct?(v39, v40, &_s2os6LoggerVSgMd, &_s2os6LoggerVSgMR);
      if (OUTLINED_FUNCTION_37_8() == 1)
      {
        outlined destroy of Any?(v0[135], &_s2os6LoggerVSgMd, &_s2os6LoggerVSgMR);
      }

      else
      {
        v66 = v0[135];
        v67 = Logger.logObject.getter();
        v68 = static os_log_type_t.error.getter();
        if (OUTLINED_FUNCTION_50(v68))
        {
          v69 = OUTLINED_FUNCTION_85();
          v81 = swift_slowAlloc();
          *v69 = 136315650;
          v70 = StaticString.description.getter();
          v72 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v70, v71, &v81);

          *(v69 + 4) = v72;
          *(v69 + 12) = 2048;
          *(v69 + 24) = OUTLINED_FUNCTION_27_11(128, v77, v78, v79, v80);
          OUTLINED_FUNCTION_44_6();
          _os_log_impl(v73, v74, v75, v76, v69, 0x20u);
          swift_arrayDestroy();
          OUTLINED_FUNCTION_15_0();
          OUTLINED_FUNCTION_15_0();
        }

        (*(v43 + 8))(v0[135], v41);
      }

LABEL_36:
      static SiriKitLifecycle._logCrashToEventBus(_:)();
      _assertionFailure(_:_:file:line:flags:)();
      OUTLINED_FUNCTION_58();
      return;
    case 6u:
      if (one-time initialization token for voiceCommands != -1)
      {
        OUTLINED_FUNCTION_0();
      }

      v47 = type metadata accessor for Logger();
      __swift_project_value_buffer(v47, static Logger.voiceCommands);
      v48 = Logger.logObject.getter();
      v49 = static os_log_type_t.debug.getter();
      if (OUTLINED_FUNCTION_50(v49))
      {
        *swift_slowAlloc() = 0;
        OUTLINED_FUNCTION_26(&dword_0, v50, v51, "#WFRunVoiceShortcutFlow completed, exiting");
        OUTLINED_FUNCTION_15_0();
      }

      v52 = v0[123];

      static ExecuteResponse.complete()();
      break;
    default:
      v5 = v0[141];
      v6 = v0[124];
      v7 = v0[123];
      v0[122] = WFRunVoiceShortcutFlow.makeGuardFlows()();
      v8 = swift_allocObject();
      *(v8 + 16) = partial apply for implicit closure #2 in implicit closure #1 in WFRunVoiceShortcutFlow.execute();
      *(v8 + 24) = v6;
      type metadata accessor for GuardFlow();

      static ExecuteResponse.ongoing<A>(next:childCompletion:)();

      OUTLINED_FUNCTION_2_28();
      outlined destroy of VoiceCommandsNLIntent(v5, v9);
      break;
  }

  OUTLINED_FUNCTION_1_32();

  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_58();

  __asm { BRAA            X1, X16 }
}

uint64_t WFRunVoiceShortcutFlow.execute()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_37_0();
  OUTLINED_FUNCTION_24_1();
  v13 = v12[142];
  v14 = v12[140];
  v15 = v12[139];
  v16 = v12[124];
  v17 = v12[123];
  __swift_destroy_boxed_opaque_existential_1Tm(v12 + 21);
  OUTLINED_FUNCTION_22_4();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_57_0();
  outlined assign with take of WFRunVoiceShortcutFlow.State(v14, v16 + v13);
  swift_endAccess();
  static ExecuteResponse.ongoing(requireInput:)();
  __swift_destroy_boxed_opaque_existential_1Tm(v12 + 76);
  OUTLINED_FUNCTION_1_32();
  v28 = v18;

  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_27_0();

  return v20(v19, v20, v21, v22, v23, v24, v25, v26, v28, a10, a11, a12);
}

{
  OUTLINED_FUNCTION_37_0();
  OUTLINED_FUNCTION_24_1();
  v16 = *(v13 + 1184);
  OUTLINED_FUNCTION_39_9();
  v17 = OUTLINED_FUNCTION_16_6();
  *v18 = 1;
  *v12 = v17;
  OUTLINED_FUNCTION_9_3();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_57_0();
  outlined assign with take of WFRunVoiceShortcutFlow.State(v12, v15 + v14);
  swift_endAccess();
  static ExecuteResponse.complete()();

  OUTLINED_FUNCTION_1_32();
  v29 = v19;

  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_27_0();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, v29, a10, a11, a12);
}

{
  OUTLINED_FUNCTION_37_0();
  OUTLINED_FUNCTION_24_1();
  __swift_destroy_boxed_opaque_existential_1Tm(v13 + 76);
  __swift_destroy_boxed_opaque_existential_1Tm(v13 + 21);
  v16 = v13[150];
  OUTLINED_FUNCTION_39_9();
  v17 = OUTLINED_FUNCTION_16_6();
  *v18 = 1;
  *v12 = v17;
  OUTLINED_FUNCTION_9_3();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_57_0();
  outlined assign with take of WFRunVoiceShortcutFlow.State(v12, v15 + v14);
  swift_endAccess();
  static ExecuteResponse.complete()();

  OUTLINED_FUNCTION_1_32();
  v29 = v19;

  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_27_0();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, v29, a10, a11, a12);
}

uint64_t WFRunVoiceShortcutFlow.makeGuardFlows()()
{
  outlined init with copy of DeviceState(v0 + 72, &v9);
  static Device.current.getter();
  v1 = type metadata accessor for WFScreentimeCheckFlowStrategy();
  swift_allocObject();
  v2 = WFScreentimeCheckFlowStrategy.init(appPolicyHandler:bundleId:deviceState:)(&v9, 0xD000000000000013, 0x800000000022F740, &v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11SiriKitFlow06CommonF5GuardVGMd, &_ss23_ContiguousArrayStorageCy11SiriKitFlow06CommonF5GuardVGMR);
  v3 = *(type metadata accessor for CommonFlowGuard() - 8);
  v4 = *(v3 + 72);
  v5 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  *(swift_allocObject() + 16) = xmmword_216840;
  static CommonFlowGuard.disallowInSharingMode.getter();
  v10 = v1;
  v11 = _s18SiriLinkFlowPlugin21VoiceCommandsNLIntentVAC0A8Ontology21IntentNodeTraversableAAWlTm_0(&lazy protocol witness table cache variable for type WFScreentimeCheckFlowStrategy and conformance WFScreentimeCheckFlowStrategy, type metadata accessor for WFScreentimeCheckFlowStrategy);
  *&v9 = v2;

  static CommonFlowGuard.ensuringAppIsPermittedByScreentime(using:)();
  __swift_destroy_boxed_opaque_existential_1Tm(&v9);
  v6 = static CommonGuardFlowUtils.makeGuardFlow(withGuards:)();

  return v6;
}

uint64_t WFRunVoiceShortcutFlow.onGuardFlowsFinished(exitValue:)(char a1)
{
  v2 = v1;
  v4 = type metadata accessor for WFRunVoiceShortcutFlow.State(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4);
  v8 = &v29[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v10 = &v29[-v9];
  v11 = type metadata accessor for ShortcutIdentification(0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v29[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = OBJC_IVAR____TtC18SiriLinkFlowPlugin22WFRunVoiceShortcutFlow_state;
  swift_beginAccess();
  outlined init with copy of WFRunVoiceShortcutFlow.State(v2 + v15, v10, type metadata accessor for WFRunVoiceShortcutFlow.State);
  if (swift_getEnumCaseMultiPayload())
  {
    outlined destroy of VoiceCommandsNLIntent(v10, type metadata accessor for WFRunVoiceShortcutFlow.State);
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
      _os_log_impl(&dword_0, v17, v18, "#WFRunVoiceShortcutFlow onGuardFlowsFinished unexpected state", v19, 2u);
    }

    lazy protocol witness table accessor for type WFRunVoiceShortcutFlowError and conformance WFRunVoiceShortcutFlowError();
    v20 = swift_allocError();
    *v21 = 2;
    *v8 = v20;
  }

  else
  {
    _s18SiriLinkFlowPlugin22ShortcutIdentificationOWObTm_0(v10, v14, type metadata accessor for ShortcutIdentification);
    if (a1)
    {
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
        _os_log_impl(&dword_0, v23, v24, "#WFRunVoiceShortcutFlow guard flow check failed", v25, 2u);
      }

      lazy protocol witness table accessor for type WFRunVoiceShortcutFlowError and conformance WFRunVoiceShortcutFlowError();
      v26 = swift_allocError();
      *v27 = 3;
      outlined destroy of VoiceCommandsNLIntent(v14, type metadata accessor for ShortcutIdentification);
      *v8 = v26;
    }

    else
    {
      _s18SiriLinkFlowPlugin22ShortcutIdentificationOWObTm_0(v14, v8, type metadata accessor for ShortcutIdentification);
    }
  }

  swift_storeEnumTagMultiPayload();
  swift_beginAccess();
  outlined assign with take of WFRunVoiceShortcutFlow.State(v8, v2 + v15);
  return swift_endAccess();
}

uint64_t WFRunVoiceShortcutFlow.makeOutputForPromptForShortcutName()()
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
  v14 = type metadata accessor for RFFeatureFlags.ResponseFramework();
  v1[12] = v14;
  OUTLINED_FUNCTION_5_0(v14);
  v1[13] = v15;
  v17 = *(v16 + 64);
  v1[14] = OUTLINED_FUNCTION_28();
  v18 = type metadata accessor for NLContextUpdate();
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
  v1 = v0[17];
  v3 = v0[13];
  v2 = v0[14];
  v4 = v0[12];
  v5 = *(v0[3] + 24);
  OUTLINED_FUNCTION_18_4();
  (*(v6 + 248))();
  (*(v3 + 104))(v2, enum case for RFFeatureFlags.ResponseFramework._SMART(_:), v4);
  LOBYTE(v5) = RFFeatureFlags.ResponseFramework.isEnabled.getter();
  v7 = *(v3 + 8);
  v8 = OUTLINED_FUNCTION_9_3();
  v9(v8);
  if (v5)
  {
    v10 = *(v0[3] + 16);
    OUTLINED_FUNCTION_18_4();
    v21 = (*(v11 + 288) + **(v11 + 288));
    v12 = *(*(v11 + 288) + 4);
    v13 = swift_task_alloc();
    v0[18] = v13;
    *v13 = v0;
    v13[1] = WFRunVoiceShortcutFlow.makeOutputForPromptForShortcutName();

    return v21();
  }

  else
  {
    v15 = v0[2];
    v15[3] = type metadata accessor for AceOutput();
    v15[4] = &protocol witness table for AceOutput;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v15);
    swift_task_alloc();
    OUTLINED_FUNCTION_20_0();
    v0[24] = v17;
    *v17 = v18;
    v17[1] = WFRunVoiceShortcutFlow.makeOutputForPromptForShortcutName();
    v19 = v0[17];
    v20 = v0[3];

    return WFRunVoiceShortcutFlow.makeOutputForPromptForShortcutName_prerfv2(_:)(boxed_opaque_existential_1, v19);
  }
}

{
  OUTLINED_FUNCTION_12_0();
  v3 = v2;
  OUTLINED_FUNCTION_9_0();
  v5 = v4;
  v6 = *(v4 + 144);
  v7 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v8 = v7;
  *(v5 + 152) = v0;

  if (!v0)
  {
    *(v5 + 160) = v3;
  }

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v9, v10, v11);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v2 = v1[23];
  v3 = v1[22];
  v4 = v1[21];
  v5 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v6 = v5;

  v7 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v7, v8, v9);
}

{
  v1 = *(v0 + 128);
  v3 = *(v0 + 80);
  v2 = *(v0 + 88);
  v4 = *(v0 + 72);

  v5 = *(v3 + 8);
  v6 = OUTLINED_FUNCTION_22_4();
  v7(v6);
  v8 = *(v0 + 136);
  v10 = *(v0 + 112);
  v9 = *(v0 + 120);
  OUTLINED_FUNCTION_16_17();
  (*(v1 + 8))(v8);

  OUTLINED_FUNCTION_6_0();

  return v11();
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_3();
  *v3 = v2;
  v5 = *(v4 + 192);
  v6 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v7 = v6;
  *(v8 + 200) = v0;

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v9, v10, v11);
}

{
  OUTLINED_FUNCTION_15_2();
  v1 = v0[16];
  v2 = v0[17];
  v4 = v0[14];
  v3 = v0[15];
  OUTLINED_FUNCTION_16_17();
  (*(v5 + 8))(v2);

  OUTLINED_FUNCTION_6_0();

  return v6();
}

{
  OUTLINED_FUNCTION_15_2();
  v1 = v0[2];
  (*(v0[16] + 8))(v0[17], v0[15]);
  __swift_deallocate_boxed_opaque_existential_1(v1);
  v2 = v0[25];
  v3 = v0[17];
  v4 = v0[14];
  OUTLINED_FUNCTION_16_17();

  OUTLINED_FUNCTION_6_0();

  return v5();
}

{
  OUTLINED_FUNCTION_15_2();
  (*(v0[16] + 8))(v0[17], v0[15]);
  v1 = v0[19];
  v2 = v0[17];
  v3 = v0[14];
  OUTLINED_FUNCTION_16_17();

  OUTLINED_FUNCTION_6_0();

  return v4();
}

void WFRunVoiceShortcutFlow.makeOutputForPromptForShortcutName()()
{
  v1 = v0[20];
  v2 = v0[16];
  v26 = v0[17];
  v3 = v0[11];
  v5 = v0[7];
  v4 = v0[8];
  v6 = v0[6];
  v24 = v0[5];
  v25 = v0[15];
  v7 = v0[4];
  static DialogPhase.confirmed.getter();
  v8 = [v1 catId];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  (*(v6 + 16))(v5, v4, v24);
  OutputGenerationManifest.init(dialogPhase:_:)();
  OutputGenerationManifest.responseViewId.setter();
  (*(v6 + 8))(v4, v24);
  OutputGenerationManifest.canUseServerTTS.setter();
  (*(v2 + 16))(v7, v26, v25);
  OUTLINED_FUNCTION_49_3();
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v25);
  OutputGenerationManifest.nlContextUpdate.setter();
  OutputGenerationManifest.listenAfterSpeaking.setter();
  v12 = type metadata accessor for ResponseFactory();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  v0[21] = ResponseFactory.init()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v15 = swift_allocObject();
  v0[22] = v15;
  *(v15 + 16) = xmmword_216010;
  *(v15 + 32) = v1;
  v16 = *(&async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(dialog:outputGenerationManifest:) + 1);
  v17 = v1;
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  v0[23] = v18;
  *v18 = v19;
  v18[1] = WFRunVoiceShortcutFlow.makeOutputForPromptForShortcutName();
  v20 = v0[11];
  v21 = v0[2];
  OUTLINED_FUNCTION_58();

  __asm { BR              X3 }
}

uint64_t WFRunVoiceShortcutFlow.execute(completion:)()
{
  OUTLINED_FUNCTION_18_4();
  _s18SiriLinkFlowPlugin21VoiceCommandsNLIntentVAC0A8Ontology21IntentNodeTraversableAAWlTm_0(&lazy protocol witness table cache variable for type WFRunVoiceShortcutFlow and conformance WFRunVoiceShortcutFlow, type metadata accessor for WFRunVoiceShortcutFlow);
  return Flow.deferToExecuteAsync(_:)();
}

uint64_t WFRunVoiceShortcutFlow.makeOutputForPromptForShortcutName_prerfv2(_:)(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR) - 8) + 64) + 15;
  v3[10] = swift_task_alloc();
  v5 = type metadata accessor for TemplatingResult();
  v3[11] = v5;
  v6 = *(v5 - 8);
  v3[12] = v6;
  v7 = *(v6 + 64) + 15;
  v3[13] = swift_task_alloc();

  return _swift_task_switch(WFRunVoiceShortcutFlow.makeOutputForPromptForShortcutName_prerfv2(_:), 0, 0);
}

uint64_t WFRunVoiceShortcutFlow.makeOutputForPromptForShortcutName_prerfv2(_:)()
{
  OUTLINED_FUNCTION_12_0();
  v1 = *(v0[9] + 16);
  OUTLINED_FUNCTION_18_4();
  v8 = (*(v2 + 296) + **(v2 + 296));
  v3 = *(*(v2 + 296) + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  v0[14] = v4;
  *v4 = v5;
  v4[1] = WFRunVoiceShortcutFlow.makeOutputForPromptForShortcutName_prerfv2(_:);
  v6 = v0[13];

  return v8(v6);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_3();
  *v3 = v2;
  v5 = *(v4 + 112);
  v6 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v7 = v6;
  *(v8 + 120) = v0;

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v9, v10, v11);
}

{
  v2 = *(v0 + 96);
  v1 = *(v0 + 104);
  v3 = *(v0 + 80);
  v15 = *(v0 + 88);
  v5 = *(v0 + 64);
  v4 = *(v0 + 72);
  v6 = *(v0 + 56);
  v7 = v4[8];
  __swift_project_boxed_opaque_existential_1(v4 + 4, v4[7]);
  dispatch thunk of DeviceState.isTextToSpeechEnabled.getter();
  TemplatingResult.shouldListenAfterSpeaking(defaultBehavior:)(1);
  v8 = type metadata accessor for NLContextUpdate();
  OUTLINED_FUNCTION_7(v8);
  (*(v9 + 16))(v3, v5, v8);
  OUTLINED_FUNCTION_49_3();
  __swift_storeEnumTagSinglePayload(v10, v11, v12, v8);
  *(v0 + 48) = 0;
  *(v0 + 32) = 0u;
  *(v0 + 16) = 0u;
  static AceOutputHelper.makeConfirmedViewOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
  outlined destroy of Any?(v0 + 16, &_s11SiriKitFlow0C8Activity_pSgMd, &_s11SiriKitFlow0C8Activity_pSgMR);
  outlined destroy of Any?(v3, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  (*(v2 + 8))(v1, v15);

  OUTLINED_FUNCTION_6_0();

  return v13();
}

{
  OUTLINED_FUNCTION_8_0();
  v1 = v0[13];
  v2 = v0[10];

  OUTLINED_FUNCTION_6_0();
  v4 = v0[15];

  return v3();
}

void *WFRunVoiceShortcutFlow.deinit()
{
  v1 = v0[2];

  v2 = v0[3];

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 4);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 9);
  outlined destroy of VoiceCommandsNLIntent(v0 + OBJC_IVAR____TtC18SiriLinkFlowPlugin22WFRunVoiceShortcutFlow_state, type metadata accessor for WFRunVoiceShortcutFlow.State);
  return v0;
}

uint64_t WFRunVoiceShortcutFlow.__deallocating_deinit()
{
  WFRunVoiceShortcutFlow.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t protocol witness for Flow.execute() in conformance WFRunVoiceShortcutFlow()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = protocol witness for RouteConfirmIntentResponseFlowStrategyAsync.makeFailureConfirmingIntentResponse(app:intent:intentResponse:) in conformance CustomIntentRCHFlowStrategy;

  return WFRunVoiceShortcutFlow.execute()();
}

uint64_t specialized WFRunVoiceShortcutFlow.init(deviceState:appPolicyHandler:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for CATOption();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v24 = a4;
  v25 = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v23);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a2, a4);
  type metadata accessor for WFRunVoiceShortcutFlow.State(0);
  swift_storeEnumTagMultiPayload();
  outlined init with copy of DeviceState(a1, a3 + 32);
  outlined init with copy of DeviceState(a1, v22);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v13 = static WFDialogState.shared;
  type metadata accessor for WorkflowRunnerCATs();

  static CATOption.defaultMode.getter();
  v21 = CATWrapper.__allocating_init(options:globals:)();
  type metadata accessor for WorkflowRunnerCATsSimple();
  static CATOption.defaultMode.getter();
  v14 = CATWrapperSimple.__allocating_init(options:globals:)();
  type metadata accessor for RunCustomIntentCATs();
  static CATOption.defaultMode.getter();
  v15 = CATWrapper.__allocating_init(options:globals:)();
  type metadata accessor for RunCustomIntentCATsSimple();
  static CATOption.defaultMode.getter();
  v16 = CATWrapperSimple.__allocating_init(options:globals:)();
  type metadata accessor for RunVoiceCommandCATs();
  static CATOption.defaultMode.getter();
  v17 = CATWrapper.__allocating_init(options:globals:)();
  type metadata accessor for RunVoiceCommandCATsSimple();
  static CATOption.defaultMode.getter();
  v18 = CATWrapperSimple.__allocating_init(options:globals:)();
  type metadata accessor for WorkflowRunnerCATPatternsExecutor(0);
  static CATOption.defaultMode.getter();
  v19 = CATWrapper.__allocating_init(options:globals:)();
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  type metadata accessor for WorkflowDialogTemplating();
  swift_allocObject();
  *(a3 + 16) = WorkflowDialogTemplating.init(deviceState:dialogState:workflowCatWrapper:workflowCatWrapperSimple:runCustomCatWrapper:runCustomCatWrapperSimple:runVoiceCommandsCatWrapper:runVoiceCommandsCatWrapperSimple:catPatternsExecutor:)(v22, v13, v21, v14, v15, v16, v17, v18, v19);
  type metadata accessor for WorkflowNLContextProvider();
  *(a3 + 24) = swift_allocObject();
  outlined init with take of AceServiceInvokerAsync(&v23, a3 + 72);
  return a3;
}

uint64_t specialized ShortcutIdentification.getIdentifyingName(vcClient:)(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = type metadata accessor for UUID();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = type metadata accessor for ShortcutIdentification(0);
  v2[7] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v2[8] = swift_task_alloc();

  return _swift_task_switch(specialized ShortcutIdentification.getIdentifyingName(vcClient:), 0, 0);
}

uint64_t specialized ShortcutIdentification.getIdentifyingName(vcClient:)()
{
  OUTLINED_FUNCTION_12_0();
  v1 = v0[7];
  v2 = v0[8];
  OUTLINED_FUNCTION_15_15(v0[3]);
  OUTLINED_FUNCTION_22_4();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v0[5] + 32))(v0[6], v0[8], v0[4]);
    v3 = UUID.uuidString.getter();
    v5 = v4;
    v0[9] = v4;
    v6 = swift_task_alloc();
    v0[10] = v6;
    *v6 = v0;
    v6[1] = specialized ShortcutIdentification.getIdentifyingName(vcClient:);
    v7 = v0[2];

    return VoiceShortcutClientWrapper.getVoiceShortcutName(voiceCommandId:)(v3, v5);
  }

  else
  {
    v9 = v0[8];
    v11 = *v9;
    v10 = v9[1];
    v12 = v0[6];

    v13 = v0[1];
    v14 = OUTLINED_FUNCTION_22_4();

    return v15(v14);
  }
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_3();
  *v2 = v1;
  v4 = *(v3 + 80);
  v5 = *(v3 + 72);
  v6 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v7 = v6;
  *(v10 + 88) = v8;
  *(v10 + 96) = v9;

  v11 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v11, v12, v13);
}

{
  v1 = v0[8];
  v2 = v0[9];
  OUTLINED_FUNCTION_15_15(v0[2]);
  OUTLINED_FUNCTION_22_4();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v4 = v0[9];
  if (EnumCaseMultiPayload == 1)
  {
    v5 = v0[7];
    v6 = v0[5];
    v26 = v0[4];
    v7 = *(v0[6] + 32);
    v8 = OUTLINED_FUNCTION_22();
    v9(v8);
    v10 = UUID.uuidString.getter();
    v12 = v11;
    v0[12] = v11;
    v13 = *(v26 + 32);
    v25 = (v13 + *v13);
    v14 = v13[1];
    v15 = swift_task_alloc();
    v0[13] = v15;
    *v15 = v0;
    v15[1] = specialized ShortcutIdentification.getIdentifyingName(vcClient:);
    v16 = v0[11];
    v17 = v0[3];
    v18 = v0[4];

    return v25(v10, v12, v17, v18);
  }

  else
  {
    v20 = *v4;
    v21 = v4[1];
    v22 = v0[7];
    (*(v0[10] + 8))(v0[11], v0[3]);

    v23 = OUTLINED_FUNCTION_18_16();

    return v24(v23, v21);
  }
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_3();
  *v2 = v1;
  v4 = *(v3 + 104);
  v5 = *(v3 + 96);
  v6 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v7 = v6;
  *(v10 + 112) = v8;
  *(v10 + 120) = v9;

  v11 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t specialized ShortcutIdentification.getIdentifyingName(vcClient:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a3;
  v4[4] = a4;
  v4[2] = a2;
  v6 = type metadata accessor for UUID();
  v4[5] = v6;
  v7 = *(v6 - 8);
  v4[6] = v7;
  v8 = *(v7 + 64) + 15;
  v4[7] = swift_task_alloc();
  v9 = type metadata accessor for ShortcutIdentification(0);
  v4[8] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v4[9] = swift_task_alloc();
  v11 = *(a3 - 8);
  v12 = v11;
  v4[10] = v11;
  v13 = *(v11 + 64) + 15;
  v4[11] = swift_task_alloc();
  (*(v12 + 16))();

  return _swift_task_switch(specialized ShortcutIdentification.getIdentifyingName(vcClient:), 0, 0);
}

unint64_t lazy protocol witness table accessor for type WFRunVoiceShortcutFlowError and conformance WFRunVoiceShortcutFlowError()
{
  result = lazy protocol witness table cache variable for type WFRunVoiceShortcutFlowError and conformance WFRunVoiceShortcutFlowError;
  if (!lazy protocol witness table cache variable for type WFRunVoiceShortcutFlowError and conformance WFRunVoiceShortcutFlowError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WFRunVoiceShortcutFlowError and conformance WFRunVoiceShortcutFlowError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WFRunVoiceShortcutFlowError and conformance WFRunVoiceShortcutFlowError;
  if (!lazy protocol witness table cache variable for type WFRunVoiceShortcutFlowError and conformance WFRunVoiceShortcutFlowError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WFRunVoiceShortcutFlowError and conformance WFRunVoiceShortcutFlowError);
  }

  return result;
}

uint64_t outlined assign with take of WFRunVoiceShortcutFlow.State(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WFRunVoiceShortcutFlow.State(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of VoiceCommandsNLIntent(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_7(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t outlined init with copy of Siri_Nlu_External_UserDialogAct?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_7(v5);
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_22();
  v9(v8);
  return a2;
}

uint64_t _s18SiriLinkFlowPlugin22ShortcutIdentificationOWObTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_7(v4);
  v6 = *(v5 + 32);
  v7 = OUTLINED_FUNCTION_22();
  v8(v7);
  return a2;
}

uint64_t _s18SiriLinkFlowPlugin21VoiceCommandsNLIntentVAC0A8Ontology21IntentNodeTraversableAAWlTm_0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_CA4BC()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t lazy protocol witness table accessor for type EnablementMode and conformance EnablementMode()
{
  result = lazy protocol witness table cache variable for type EnablementMode and conformance EnablementMode;
  if (!lazy protocol witness table cache variable for type EnablementMode and conformance EnablementMode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnablementMode and conformance EnablementMode);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WFRunVoiceShortcutFlowError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFC)
  {
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

    v5 = (*a1 | (v4 << 8)) - 5;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v5 = v6 - 5;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for WFRunVoiceShortcutFlowError(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0xCA718);
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

void type metadata completion function for VoiceCommandTask()
{
  type metadata accessor for (shortcutId: ShortcutIdentification)(319, &lazy cache variable for type metadata for (shortcutId: ShortcutIdentification), type metadata accessor for ShortcutIdentification);
  if (v0 <= 0x3F)
  {
    type metadata accessor for (EnablementMode, appId: String)();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void type metadata accessor for (EnablementMode, appId: String)()
{
  if (!lazy cache variable for type metadata for (EnablementMode, appId: String))
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (EnablementMode, appId: String));
    }
  }
}

_BYTE *storeEnumTagSinglePayload for EnablementMode(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0xCA910);
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

void type metadata completion function for ShortcutIdentification()
{
  type metadata accessor for (shortcutId: ShortcutIdentification)(319, &lazy cache variable for type metadata for (uuid: UUID), &type metadata accessor for UUID);
  if (v0 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
  }
}

void type metadata accessor for (shortcutId: ShortcutIdentification)(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
{
  if (!*a2)
  {
    v4 = a3(0);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t type metadata completion function for WFRunVoiceShortcutFlow()
{
  result = type metadata accessor for WFRunVoiceShortcutFlow.State(319);
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

void type metadata completion function for WFRunVoiceShortcutFlow.State()
{
  type metadata accessor for (shortcutId: ShortcutIdentification)(319, &lazy cache variable for type metadata for (shortcutId: ShortcutIdentification), type metadata accessor for ShortcutIdentification);
  if (v0 <= 0x3F)
  {
    type metadata accessor for Error();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

uint64_t outlined init with copy of WFRunVoiceShortcutFlow.State(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_7(v4);
  v6 = *(v5 + 16);
  v7 = OUTLINED_FUNCTION_22();
  v8(v7);
  return a2;
}

uint64_t OUTLINED_FUNCTION_1_32()
{
  result = v0[141];
  v2 = v0[140];
  v3 = v0[138];
  v4 = v0[137];
  v5 = v0[136];
  v6 = v0[135];
  v7 = v0[134];
  v8 = v0[133];
  v9 = v0[132];
  v10 = v0[129];
  v11 = v0[126];
  return result;
}

uint64_t OUTLINED_FUNCTION_15_15(uint64_t a1)
{

  return outlined init with copy of WFRunVoiceShortcutFlow.State(a1, v1, type metadata accessor for ShortcutIdentification);
}

void OUTLINED_FUNCTION_16_17()
{
  v1 = v0[11];
  v3 = v0[7];
  v2 = v0[8];
  v4 = v0[4];
}

uint64_t OUTLINED_FUNCTION_27_11@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  *(v6 + 14) = a1;
  *(v6 + 22) = 2080;

  return getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000033, v5, va);
}

uint64_t OUTLINED_FUNCTION_37_8()
{

  return __swift_getEnumTagSinglePayload(v1, 1, v0);
}

unint64_t OUTLINED_FUNCTION_39_9()
{
  v2 = v0[142];
  v3 = v0[140];
  v4 = v0[139];
  v5 = v0[124];
  v6 = v0[123];

  return lazy protocol witness table accessor for type WFRunVoiceShortcutFlowError and conformance WFRunVoiceShortcutFlowError();
}

uint64_t OUTLINED_FUNCTION_40_4()
{

  return specialized WFRunVoiceShortcutFlow.init(deviceState:appPolicyHandler:)(v1, v4, v0, v2, v3);
}

uint64_t OUTLINED_FUNCTION_46_7(float a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  *v12 = a1;

  return getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v10, &a10);
}

uint64_t OUTLINED_FUNCTION_51_2()
{

  return static CATOption.defaultMode.getter();
}

uint64_t LNConnection.perform(action:options:)()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScs12ContinuationV15BufferingPolicyOy18SiriLinkFlowPlugin0E15ConnectionEventOs5Error_p__GMd, &_sScs12ContinuationV15BufferingPolicyOy18SiriLinkFlowPlugin0E15ConnectionEventOs5Error_p__GMR);
  OUTLINED_FUNCTION_7_1(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v4);
  OUTLINED_FUNCTION_8_20();
  (*(v5 + 104))(v0, enum case for AsyncThrowingStream.Continuation.BufferingPolicy.unbounded<A, B>(_:));
  return AsyncThrowingStream.init<>(_:bufferingPolicy:_:)();
}

uint64_t closure #1 in LNConnection.perform(action:options:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScs12ContinuationVy18SiriLinkFlowPlugin0C15ConnectionEventOs5Error_p_GMd, &_sScs12ContinuationVy18SiriLinkFlowPlugin0C15ConnectionEventOs5Error_p_GMR);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = &v19[-1] - v10;
  (*(v12 + 16))(&v19[-1] - v10, a1, v8);
  static AceService.currentAsync.getter();
  v13 = objc_allocWithZone(type metadata accessor for AnonymousConnectionDelegate());
  v14 = AnonymousConnectionDelegate.init(continuation:aceService:)(v11, v19);
  v15 = [a2 executorForAction:a3 options:a4 delegate:v14];
  [v15 perform];
  v16 = swift_allocObject();
  *(v16 + 16) = v14;
  *(v16 + 24) = v15;
  return AsyncThrowingStream.Continuation.onTermination.setter();
}

void closure #1 in closure #1 in LNConnection.perform(action:options:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (one-time initialization token for voiceCommands != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logger.voiceCommands);
  v5 = a3;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v19 = v9;
    *v8 = 136315138;
    v10 = v5;
    v11 = [v10 description];
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v14, &v19);

    *(v8 + 4) = v15;
    _os_log_impl(&dword_0, v6, v7, "Stopping executor %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
  }

  oslog = Logger.logObject.getter();
  v16 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(oslog, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_0, oslog, v16, "AsyncStream terminated", v17, 2u);
  }
}

uint64_t AnonymousConnectionDelegate.continuation.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18SiriLinkFlowPlugin27AnonymousConnectionDelegate_continuation;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScs12ContinuationVy18SiriLinkFlowPlugin0C15ConnectionEventOs5Error_p_GMd, &_sScs12ContinuationVy18SiriLinkFlowPlugin0C15ConnectionEventOs5Error_p_GMR);
  v5 = OUTLINED_FUNCTION_7(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

id AnonymousConnectionDelegate.init(continuation:aceService:)(uint64_t a1, uint64_t *a2)
{
  ObjectType = swift_getObjectType();
  outlined init with copy of DeviceState(a2, &v2[OBJC_IVAR____TtC18SiriLinkFlowPlugin27AnonymousConnectionDelegate_aceService]);
  v6 = OBJC_IVAR____TtC18SiriLinkFlowPlugin27AnonymousConnectionDelegate_continuation;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScs12ContinuationVy18SiriLinkFlowPlugin0C15ConnectionEventOs5Error_p_GMd, &_sScs12ContinuationVy18SiriLinkFlowPlugin0C15ConnectionEventOs5Error_p_GMR);
  v8 = *(v7 - 8);
  (*(v8 + 16))(&v2[v6], a1, v7);
  v11.receiver = v2;
  v11.super_class = ObjectType;
  v9 = objc_msgSendSuper2(&v11, "init");
  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  (*(v8 + 8))(a1, v7);
  return v9;
}

void AnonymousConnectionDelegate.executor(_:needsConfirmationWith:)()
{
  AnonymousConnectionDelegate.executor(_:needsConfirmationWith:)();
}

{
  OUTLINED_FUNCTION_40_0();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScs12ContinuationV11YieldResultOy18SiriLinkFlowPlugin0E15ConnectionEventOs5Error_p__GMd, &_sScs12ContinuationV11YieldResultOy18SiriLinkFlowPlugin0E15ConnectionEventOs5Error_p__GMR);
  OUTLINED_FUNCTION_7_1(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v10);
  OUTLINED_FUNCTION_8_20();
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v11 = type metadata accessor for Logger();
  __swift_project_value_buffer(v11, static Logger.voiceCommands);
  v12 = v4;
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = OUTLINED_FUNCTION_48();
    v16 = swift_slowAlloc();
    *v15 = 138412290;
    *(v15 + 4) = v12;
    *v16 = v12;
    v17 = v12;
    _os_log_impl(&dword_0, v13, v14, v2, v15, 0xCu);
    outlined destroy of Any?(v16, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    OUTLINED_FUNCTION_15_0();
    OUTLINED_FUNCTION_15_0();
  }

  v18 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScs12ContinuationVy18SiriLinkFlowPlugin0C15ConnectionEventOs5Error_p_GMd, &_sScs12ContinuationVy18SiriLinkFlowPlugin0C15ConnectionEventOs5Error_p_GMR);
  AsyncThrowingStream.Continuation.yield(_:)();
  (*(v7 + 8))(v0, v5);
  OUTLINED_FUNCTION_42();
}

void AnonymousConnectionDelegate.executor(_:needsValueWith:)()
{
  OUTLINED_FUNCTION_40_0();
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScs12ContinuationV11YieldResultOy18SiriLinkFlowPlugin0E15ConnectionEventOs5Error_p__GMd, &_sScs12ContinuationV11YieldResultOy18SiriLinkFlowPlugin0E15ConnectionEventOs5Error_p__GMR);
  OUTLINED_FUNCTION_7_1(v2);
  v4 = v3;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v7);
  v9 = &v26 - v8;
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v10 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_59(v10, static Logger.voiceCommands);
  v11 = v1;
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = OUTLINED_FUNCTION_48();
    v15 = swift_slowAlloc();
    *v14 = 138412290;
    *(v14 + 4) = v11;
    *v15 = v11;
    v16 = v11;
    _os_log_impl(&dword_0, v12, v13, "AnonymousConnectionDelegate got LNNeedsValueRequest: %@", v14, 0xCu);
    outlined destroy of Any?(v15, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    OUTLINED_FUNCTION_15_0();
    OUTLINED_FUNCTION_15_0();
  }

  objc_opt_self();
  v17 = swift_dynamicCastObjCClass();
  if (v17)
  {
    v18 = v17;
    v19 = v11;
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.fault.getter();
    if (OUTLINED_FUNCTION_50(v21))
    {
      *OUTLINED_FUNCTION_52() = 0;
      OUTLINED_FUNCTION_18_17(&dword_0, v22, v23, "AnonymousConnectionDelegate#executor(_:needsValueWith:) got called erroneously with an LNSuccessResult");
      OUTLINED_FUNCTION_15_0();
    }

    v27 = v18;
    v28 = 0;
    v29 = 7;
    v24 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScs12ContinuationVy18SiriLinkFlowPlugin0C15ConnectionEventOs5Error_p_GMd, &_sScs12ContinuationVy18SiriLinkFlowPlugin0C15ConnectionEventOs5Error_p_GMR);
    AsyncThrowingStream.Continuation.yield(_:)();
    (*(v4 + 8))(v9, v2);
    v27 = 0;
    AsyncThrowingStream.Continuation.finish(throwing:)();
  }

  else
  {
    v27 = v11;
    v28 = 0;
    v29 = 0;
    v25 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScs12ContinuationVy18SiriLinkFlowPlugin0C15ConnectionEventOs5Error_p_GMd, &_sScs12ContinuationVy18SiriLinkFlowPlugin0C15ConnectionEventOs5Error_p_GMR);
    OUTLINED_FUNCTION_7_16();
    AsyncThrowingStream.Continuation.yield(_:)();
    (*(v4 + 8))(v9, v2);
  }

  OUTLINED_FUNCTION_42();
}

void AnonymousConnectionDelegate.executor(_:didFinishWith:error:)()
{
  OUTLINED_FUNCTION_40_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScs12ContinuationVy18SiriLinkFlowPlugin0C15ConnectionEventOs5Error_p_GMd, &_sScs12ContinuationVy18SiriLinkFlowPlugin0C15ConnectionEventOs5Error_p_GMR);
  OUTLINED_FUNCTION_7_1(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v11);
  v13 = &v39 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScs12ContinuationV11YieldResultOy18SiriLinkFlowPlugin0E15ConnectionEventOs5Error_p__GMd, &_sScs12ContinuationV11YieldResultOy18SiriLinkFlowPlugin0E15ConnectionEventOs5Error_p__GMR);
  OUTLINED_FUNCTION_7_1(v14);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v17);
  v20 = &v39 - v19;
  if (v3)
  {
    swift_errorRetain();
    if (one-time initialization token for voiceCommands != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v21 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_59(v21, static Logger.voiceCommands);
    swift_errorRetain();
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = OUTLINED_FUNCTION_48();
      v25 = swift_slowAlloc();
      v43 = v3;
      v44[0] = v25;
      *v24 = 136315138;
      swift_errorRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v26 = String.init<A>(describing:)();
      v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v27, v44);

      *(v24 + 4) = v28;
      _os_log_impl(&dword_0, v22, v23, "AnonymousConnectionDelegate finished with error: %s", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v25);
      OUTLINED_FUNCTION_15_0();
      OUTLINED_FUNCTION_15_0();
    }

    v44[0] = v3;
    swift_errorRetain();
    AsyncThrowingStream.Continuation.finish(throwing:)();

    goto LABEL_14;
  }

  v41 = v18;
  v42 = v6;
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v29 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_59(v29, static Logger.voiceCommands);
  v30 = v5;
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v31, v32))
  {
    v40 = v1;
    v33 = OUTLINED_FUNCTION_48();
    v34 = swift_slowAlloc();
    *v33 = 138412290;
    if (!v5)
    {
      goto LABEL_16;
    }

    v35 = v34;
    *(v33 + 4) = v30;
    *v34 = v5;
    v36 = v30;
    _os_log_impl(&dword_0, v31, v32, "AnonymousConnectionDelegate finished with result: %@", v33, 0xCu);
    outlined destroy of Any?(v35, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    OUTLINED_FUNCTION_15_0();
    OUTLINED_FUNCTION_15_0();
    v1 = v40;
  }

  v37 = v42;
  (*(v8 + 16))(v13, v1 + OBJC_IVAR____TtC18SiriLinkFlowPlugin27AnonymousConnectionDelegate_continuation, v42);
  if (v5)
  {
    v44[0] = v5;
    v44[1] = 0;
    v45 = 7;
    v38 = v30;
    AsyncThrowingStream.Continuation.yield(_:)();
    (*(v8 + 8))(v13, v37);
    (*(v41 + 8))(v20, v14);
    v44[0] = 0;
    AsyncThrowingStream.Continuation.finish(throwing:)();
LABEL_14:
    OUTLINED_FUNCTION_42();
    return;
  }

  __break(1u);
LABEL_16:
  __break(1u);
}

uint64_t AnonymousConnectionDelegate.executorEnvironmentForViewSnippet(_:)(uint64_t a1)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = v1;
  return _swift_task_switch(AnonymousConnectionDelegate.executorEnvironmentForViewSnippet(_:), 0, 0);
}

uint64_t AnonymousConnectionDelegate.executorEnvironmentForViewSnippet(_:)()
{
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v1 = type metadata accessor for Logger();
  v0[9] = __swift_project_value_buffer(v1, static Logger.voiceCommands);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_50(v3))
  {
    v4 = OUTLINED_FUNCTION_52();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "AnonymousConnectionDelegate executorEnvironmentForViewSnippet", v4, 2u);
    OUTLINED_FUNCTION_15_0();
  }

  static Device.current.getter();
  v5 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  v6 = dispatch thunk of DeviceState.isHomePod.getter();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  if (v6)
  {
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.info.getter();
    if (OUTLINED_FUNCTION_50(v8))
    {
      v9 = OUTLINED_FUNCTION_52();
      *v9 = 0;
      _os_log_impl(&dword_0, v7, v8, "Executing on HomePod. Returning nil for view snippet environment.", v9, 2u);
      OUTLINED_FUNCTION_15_0();
    }

    v10 = v0[1];

    return v10(0);
  }

  else
  {
    v12 = v0[7];
    v13 = v0[8];
    v0[10] = type metadata accessor for LNSnippetEnvironment();
    v14 = [v12 options];
    v15 = [v14 environment];

    v16 = [v15 localeIdentifier];
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;

    v0[11] = v19;
    v20 = OBJC_IVAR____TtC18SiriLinkFlowPlugin27AnonymousConnectionDelegate_aceService;
    v21 = swift_task_alloc();
    v0[12] = v21;
    *v21 = v0;
    v21[1] = AnonymousConnectionDelegate.executorEnvironmentForViewSnippet(_:);

    return static LNSnippetEnvironment.getEnvironmentFor(localeIdentifier:serviceInvoker:)(v17, v19, v13 + v20);
  }
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v2 = *(v1 + 96);
  v3 = *(v1 + 88);
  v4 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v5 = v4;
  *(v7 + 104) = v6;

  return _swift_task_switch(AnonymousConnectionDelegate.executorEnvironmentForViewSnippet(_:), 0, 0);
}

{
  OUTLINED_FUNCTION_12_0();
  v1 = v0[13];
  if (!v1)
  {
    v2 = v0[9];
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = OUTLINED_FUNCTION_52();
      *v5 = 0;
      _os_log_impl(&dword_0, v3, v4, "SnippetDisplayConfigurationRequest got unexpected response, going with default snippet size", v5, 2u);
      OUTLINED_FUNCTION_15_0();
    }

    v6 = v0[10];

    v1 = static LNSnippetEnvironment.make(size:)(360.0, 9.22337204e18);
  }

  v7 = v0[1];

  return v7(v1);
}

uint64_t @objc closure #1 in AnonymousConnectionDelegate.executorEnvironmentForViewSnippet(_:)(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = @objc closure #1 in AnonymousConnectionDelegate.executorEnvironmentForViewSnippet(_:);

  return AnonymousConnectionDelegate.executorEnvironmentForViewSnippet(_:)(v6);
}

uint64_t @objc closure #1 in AnonymousConnectionDelegate.executorEnvironmentForViewSnippet(_:)()
{
  OUTLINED_FUNCTION_12_0();
  v2 = v1;
  OUTLINED_FUNCTION_9_0();
  v4 = v3[5];
  v5 = v3[4];
  v6 = v3[3];
  v7 = v3[2];
  v8 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v9 = v8;

  (v5)[2](v5, v2);
  _Block_release(v5);

  OUTLINED_FUNCTION_6_0();

  return v10();
}

uint64_t _runTaskForBridgedAsyncMethod(_:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v12 - v6;
  v8 = type metadata accessor for TaskPriority();
  __swift_storeEnumTagSinglePayload(v7, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = a1;
  v9[5] = a2;
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = &_sIeghH_IeAgH_TRTATu;
  v10[5] = v9;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(0, 0, v7, &_sIeAgH_ytIeAgHr_TRTATu, v10);
}

uint64_t AnonymousConnectionDelegate.executor(_:shouldRunShowOutputAction:)()
{
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v0 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_59(v0, static Logger.voiceCommands);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = OUTLINED_FUNCTION_52();
    *v3 = 0;
    _os_log_impl(&dword_0, v1, v2, "AnonymousConnectionDelegate shouldRunShowOutputAction return false", v3, 2u);
    OUTLINED_FUNCTION_15_0();
  }

  return 0;
}

void AnonymousConnectionDelegate.executor(_:needsContinueInAppWith:)()
{
  AnonymousConnectionDelegate.executor(_:needsContinueInAppWith:)();
}

{
  OUTLINED_FUNCTION_40_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScs12ContinuationV11YieldResultOy18SiriLinkFlowPlugin0E15ConnectionEventOs5Error_p__GMd, &_sScs12ContinuationV11YieldResultOy18SiriLinkFlowPlugin0E15ConnectionEventOs5Error_p__GMR);
  OUTLINED_FUNCTION_7_1(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v11);
  v13 = v19 - v12;
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v14 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_59(v14, static Logger.voiceCommands);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_50(v16))
  {
    v17 = OUTLINED_FUNCTION_52();
    *v17 = 0;
    _os_log_impl(&dword_0, v15, v16, v3, v17, 2u);
    OUTLINED_FUNCTION_15_0();
  }

  v19[1] = v5;
  v19[2] = 0;
  v20 = v1;
  v18 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScs12ContinuationVy18SiriLinkFlowPlugin0C15ConnectionEventOs5Error_p_GMd, &_sScs12ContinuationVy18SiriLinkFlowPlugin0C15ConnectionEventOs5Error_p_GMR);
  OUTLINED_FUNCTION_7_16();
  AsyncThrowingStream.Continuation.yield(_:)();
  (*(v8 + 8))(v13, v6);
  OUTLINED_FUNCTION_42();
}

uint64_t AnonymousConnectionDelegate.executorWillLaunchApplication(inForeground:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScs12ContinuationV11YieldResultOy18SiriLinkFlowPlugin0E15ConnectionEventOs5Error_p__GMd, &_sScs12ContinuationV11YieldResultOy18SiriLinkFlowPlugin0E15ConnectionEventOs5Error_p__GMR);
  OUTLINED_FUNCTION_7_1(v0);
  v2 = v1;
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v5);
  v7 = v13 - v6;
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v8 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_59(v8, static Logger.voiceCommands);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_50(v10))
  {
    v11 = OUTLINED_FUNCTION_52();
    *v11 = 0;
    _os_log_impl(&dword_0, v9, v10, "AnonymousConnectionDelegate willLaunchApplicationInForeground", v11, 2u);
    OUTLINED_FUNCTION_15_0();
  }

  v13[1] = 0;
  v13[2] = 0;
  v14 = 8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScs12ContinuationVy18SiriLinkFlowPlugin0C15ConnectionEventOs5Error_p_GMd, &_sScs12ContinuationVy18SiriLinkFlowPlugin0C15ConnectionEventOs5Error_p_GMR);
  AsyncThrowingStream.Continuation.yield(_:)();
  return (*(v2 + 8))(v7, v0);
}

void AnonymousConnectionDelegate.executor(_:needsAppProtectionUnlockWithCompletionHandler:)()
{
  OUTLINED_FUNCTION_40_0();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScs12ContinuationV11YieldResultOy18SiriLinkFlowPlugin0E15ConnectionEventOs5Error_p__GMd, &_sScs12ContinuationV11YieldResultOy18SiriLinkFlowPlugin0E15ConnectionEventOs5Error_p__GMR);
  OUTLINED_FUNCTION_7_1(v1);
  v3 = v2;
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v6);
  OUTLINED_FUNCTION_8_20();
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v7 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_59(v7, static Logger.voiceCommands);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_50(v9))
  {
    *OUTLINED_FUNCTION_52() = 0;
    OUTLINED_FUNCTION_18_17(&dword_0, v10, v11, "AnonymousConnectionDelegate needsAppProtectionUnlock");
    OUTLINED_FUNCTION_15_0();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScs12ContinuationVy18SiriLinkFlowPlugin0C15ConnectionEventOs5Error_p_GMd, &_sScs12ContinuationVy18SiriLinkFlowPlugin0C15ConnectionEventOs5Error_p_GMR);
  OUTLINED_FUNCTION_7_16();
  AsyncThrowingStream.Continuation.yield(_:)();
  (*(v3 + 8))(v0, v1);
  OUTLINED_FUNCTION_42();
}

uint64_t _sIeghH_IeAgH_TR(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = CustomIntentRCHFlowStrategy.makeErrorResponse(error:app:intent:);

  return v7();
}

uint64_t _sIeAgH_ytIeAgHr_TR(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = protocol witness for RouteConfirmIntentResponseFlowStrategyAsync.makeFailureConfirmingIntentResponse(app:intent:intentResponse:) in conformance CustomIntentRCHFlowStrategy;

  return v8();
}

uint64_t _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v25 - v11;
  outlined init with copy of TaskPriority?(a3, v25 - v11);
  v13 = type metadata accessor for TaskPriority();
  if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
  {
    outlined destroy of Any?(v12, &_sScPSgMd, &_sScPSgMR);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(*(v13 - 8) + 8))(v12, v13);
  }

  if (*(a5 + 16))
  {
    v14 = *(a5 + 24);
    v15 = *(a5 + 16);
    swift_getObjectType();
    swift_unknownObjectRetain();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      outlined destroy of Any?(a3, &_sScPSgMd, &_sScPSgMR);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  outlined destroy of Any?(a3, &_sScPSgMd, &_sScPSgMR);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

unint64_t type metadata accessor for LNSnippetEnvironment()
{
  result = lazy cache variable for type metadata for LNSnippetEnvironment;
  if (!lazy cache variable for type metadata for LNSnippetEnvironment)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for LNSnippetEnvironment);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_18SiriLinkFlowPlugin0B15ConnectionEventO(uint64_t a1)
{
  if ((*(a1 + 16) & 8) != 0)
  {
    return (*a1 + 8);
  }

  else
  {
    return *(a1 + 16) & 0xF;
  }
}

uint64_t getEnumTagSinglePayload for LinkConnectionEvent(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xF8 && *(a1 + 17))
    {
      v2 = *a1 + 247;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 8)
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

uint64_t storeEnumTagSinglePayload for LinkConnectionEvent(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF7)
  {
    *(result + 16) = 0;
    *result = a2 - 248;
    *(result + 8) = 0;
    if (a3 >= 0xF8)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF8)
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

uint64_t destructiveInjectEnumTag for LinkConnectionEvent(uint64_t result, unsigned int a2)
{
  if (a2 >= 8)
  {
    *result = a2 - 8;
    *(result + 8) = 0;
    LOBYTE(a2) = 8;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t type metadata accessor for AnonymousConnectionDelegate()
{
  result = type metadata singleton initialization cache for AnonymousConnectionDelegate;
  if (!type metadata singleton initialization cache for AnonymousConnectionDelegate)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for AnonymousConnectionDelegate()
{
  type metadata accessor for AsyncThrowingStream<LinkConnectionEvent, Error>.Continuation();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void type metadata accessor for AsyncThrowingStream<LinkConnectionEvent, Error>.Continuation()
{
  if (!lazy cache variable for type metadata for AsyncThrowingStream<LinkConnectionEvent, Error>.Continuation)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v0 = type metadata accessor for AsyncThrowingStream.Continuation();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AsyncThrowingStream<LinkConnectionEvent, Error>.Continuation);
    }
  }
}

uint64_t sub_CD718()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_CD768()
{
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t partial apply for @objc closure #1 in AnonymousConnectionDelegate.executorEnvironmentForViewSnippet(_:)()
{
  OUTLINED_FUNCTION_12_0();
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = protocol witness for RouteConfirmIntentResponseFlowStrategyAsync.makeFailureConfirmingIntentResponse(app:intent:intentResponse:) in conformance CustomIntentRCHFlowStrategy;

  return @objc closure #1 in AnonymousConnectionDelegate.executorEnvironmentForViewSnippet(_:)(v2, v3, v4);
}

uint64_t _sIeghH_IeAgH_TRTA()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = CustomIntentRCHFlowStrategy.makeErrorResponse(error:app:intent:);

  return _sIeghH_IeAgH_TR(v2, v3, v5);
}

uint64_t objectdestroy_11Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t _sIeAgH_ytIeAgHr_TRTA(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v6 = v1[4];
  v5 = v1[5];
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_9_2(v7);
  *v8 = v9;
  v8[1] = CustomIntentRCHFlowStrategy.makeErrorResponse(error:app:intent:);

  return _sIeAgH_ytIeAgHr_TR(a1, v3, v4, v6);
}

uint64_t sub_CDA28()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tgq5TA()
{
  OUTLINED_FUNCTION_12_0();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_9_2(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_1_1(v4);

  return v7(v6);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tgq5TA_25()
{
  OUTLINED_FUNCTION_12_0();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_9_2(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_1_1(v4);

  return v7(v6);
}

uint64_t sub_CDB88()
{

  return _swift_deallocObject(v0, 32, 7);
}

void OUTLINED_FUNCTION_18_17(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

void VoiceCommandNLContextProvider.makeContextForConfirmation(acceptLabel:denyLabel:acceptAlternatives:denyAlternatives:)()
{
  OUTLINED_FUNCTION_40_0();
  v0 = type metadata accessor for Siri_Nlu_External_SystemDialogAct();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  OUTLINED_FUNCTION_3();
  v5 = v4 - v3;
  NLContextUpdate.init()();
  OUTLINED_FUNCTION_4_28();
  NLContextUpdate.weightedPromptTargetDomain.setter();
  OUTLINED_FUNCTION_3_22();
  NLContextUpdate.weightedPromptStrict.setter();
  NLContextUpdate.weightedPromptAbortValues.setter();
  NLContextUpdate.weightedPromptResponseTargets.setter();
  NLContextUpdate.weightedPromptResponseOptions.setter();
  VoiceCommandNLContextProvider.buildSDAForConfirmation(acceptLabel:denyLabel:acceptAlternatives:denyAlternatives:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D29_Nlu_External_SystemDialogActVGMd, &_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D29_Nlu_External_SystemDialogActVGMR);
  v6 = *(v1 + 72);
  OUTLINED_FUNCTION_25_7();
  v9 = v8 & ~v7;
  v10 = swift_allocObject();
  v11 = OUTLINED_FUNCTION_14_14(v10, xmmword_216850);
  v12(v11 + v9, v5, v0);
  NLContextUpdate.nluSystemDialogActs.setter();
  (*(v1 + 8))(v5, v0);
  OUTLINED_FUNCTION_42();
}

uint64_t VoiceCommandNLContextProvider.makeContextForDisambiguation(items:)(uint64_t a1, void (*a2)(uint64_t))
{
  v4 = type metadata accessor for Siri_Nlu_External_SystemDialogAct();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  OUTLINED_FUNCTION_3();
  v9 = v8 - v7;
  NLContextUpdate.init()();
  OUTLINED_FUNCTION_4_28();
  NLContextUpdate.weightedPromptTargetDomain.setter();
  OUTLINED_FUNCTION_3_22();
  NLContextUpdate.weightedPromptStrict.setter();
  a2(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D29_Nlu_External_SystemDialogActVGMd, &_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D29_Nlu_External_SystemDialogActVGMR);
  v10 = *(v5 + 72);
  OUTLINED_FUNCTION_25_7();
  v13 = v12 & ~v11;
  v14 = swift_allocObject();
  v15 = OUTLINED_FUNCTION_14_14(v14, xmmword_216850);
  v16(v15 + v13, v9, v4);
  NLContextUpdate.nluSystemDialogActs.setter();
  return (*(v5 + 8))(v9, v4);
}

void VoiceCommandNLContextProvider.getDisplayHints(items:)()
{
  OUTLINED_FUNCTION_40_0();
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow13SemanticValueVSgMd, &_s11SiriKitFlow13SemanticValueVSgMR);
  v3 = OUTLINED_FUNCTION_14(v2);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v55 = v45 - v6;
  OUTLINED_FUNCTION_22_10();
  v54 = type metadata accessor for DisplayHint();
  v7 = OUTLINED_FUNCTION_7_1(v54);
  v9 = v8;
  v11 = *(v10 + 64);
  __chkstk_darwin(v7);
  OUTLINED_FUNCTION_3();
  v14 = v13 - v12;
  v15 = type metadata accessor for SemanticValue();
  v16 = OUTLINED_FUNCTION_7_1(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  __chkstk_darwin(v16);
  OUTLINED_FUNCTION_50_0();
  v53 = (v21 - v22);
  OUTLINED_FUNCTION_25_4();
  __chkstk_darwin(v23);
  v25 = v45 - v24;
  v56 = _swiftEmptyArrayStorage;
  v52 = *(v1 + 16);
  if (v52)
  {
    v26 = type metadata accessor for INIntentResolutionResult();
    v27 = 0;
    v47 = "voiceCommandReference";
    v48 = v26;
    v28 = (v1 + 32);
    v45[1] = v9 + 32;
    v46 = (v18 + 16);
    v45[0] = v18 + 8;
    v50 = v15;
    v51 = v9;
    v49 = v25;
    do
    {
      v29 = v28[3];
      v30 = v28[4];
      __swift_project_boxed_opaque_existential_1(v28, v29);
      (*(v30 + 32))(v29, v30);
      SemanticValue.init(string:label:)();
      v31 = *v46;
      v32 = v25;
      v33 = v55;
      (*v46)(v55, v32, v15);
      __swift_storeEnumTagSinglePayload(v33, 0, 1, v15);
      v31(v53, v32, v15);
      DisplayHint.init(idValue:displayValue:)();
      v34 = v56;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v34 + 16) + 1, 1, v34);
        v34 = v43;
      }

      v36 = *(v34 + 16);
      v35 = *(v34 + 24);
      if (v36 >= v35 >> 1)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v35 > 1, v36 + 1, 1, v34);
        v34 = v44;
      }

      v37 = v27 + 1;
      *(v34 + 16) = v36 + 1;
      (*(v51 + 32))(v34 + ((*(v51 + 80) + 32) & ~*(v51 + 80)) + *(v51 + 72) * v36, v14, v54);
      v56 = v34;
      v38 = v52;
      v39 = static INIntentResolutionResult.inferOrdinalDisplayValues(index:count:)(v27, v52);
      __chkstk_darwin(v39);
      v40 = v49;
      v45[-2] = v49;
      v41 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSaySSG_11SiriKitFlow11DisplayHintVs5NeverOTg5(partial apply for closure #1 in VoiceCommandNLContextProvider.getDisplayHints(items:), &v45[-4], v39);

      v25 = v40;
      specialized Array.append<A>(contentsOf:)(v41);
      v42 = v40;
      v15 = v50;
      (*v45[0])(v42, v50);
      v28 += 5;
      v27 = v37;
    }

    while (v38 != v37);
  }

  OUTLINED_FUNCTION_42();
}

void VoiceCommandNLContextProvider.getDisplayHints(options:)()
{
  OUTLINED_FUNCTION_40_0();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow13SemanticValueVSgMd, &_s11SiriKitFlow13SemanticValueVSgMR);
  v4 = OUTLINED_FUNCTION_14(v3);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v54 = &v45 - v7;
  OUTLINED_FUNCTION_22_10();
  v53 = type metadata accessor for DisplayHint();
  v8 = OUTLINED_FUNCTION_7_1(v53);
  v55 = v9;
  v11 = *(v10 + 64);
  __chkstk_darwin(v8);
  OUTLINED_FUNCTION_3();
  v56 = v13 - v12;
  OUTLINED_FUNCTION_22_10();
  v14 = type metadata accessor for SemanticValue();
  v15 = OUTLINED_FUNCTION_7_1(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  __chkstk_darwin(v15);
  OUTLINED_FUNCTION_50_0();
  v52 = (v20 - v21);
  OUTLINED_FUNCTION_25_4();
  __chkstk_darwin(v22);
  OUTLINED_FUNCTION_13_16();
  v57 = &_swiftEmptyArrayStorage;
  if (!(v2 >> 62))
  {
    v23 = *(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8));
    if (!v23)
    {
      goto LABEL_18;
    }

    goto LABEL_3;
  }

  v43 = _CocoaArrayWrapper.endIndex.getter();
  if (v43 < 0)
  {
    __break(1u);
  }

  v23 = v43;
  if (v43)
  {
LABEL_3:
    v24 = type metadata accessor for INIntentResolutionResult();
    v25 = 0;
    v48 = "voiceCommandReference";
    v49 = v24;
    v26 = (v17 + 16);
    v46 = v55 + 32;
    v47 = v2 & 0xC000000000000001;
    v45 = (v17 + 8);
    v50 = v23;
    v51 = v2;
    do
    {
      if (v47)
      {
        v27 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v27 = *(v2 + 8 * v25 + 32);
      }

      v28 = v27;
      outlined bridged method (ob) of @objc LNStaticDeferredLocalizedString.defaultValue.getter([v27 title]);
      if (!v29)
      {
        v30 = [v28 title];
        v31 = [v30 key];

        static String._unconditionallyBridgeFromObjectiveC(_:)();
      }

      SemanticValue.init(string:label:)();
      v32 = *v26;
      v33 = v54;
      (*v26)(v54, v0, v14);
      __swift_storeEnumTagSinglePayload(v33, 0, 1, v14);
      v32(v52, v0, v14);
      DisplayHint.init(idValue:displayValue:)();
      v34 = v57;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v34 + 16) + 1, 1, v34);
        v34 = v41;
      }

      v36 = *(v34 + 16);
      v35 = *(v34 + 24);
      if (v36 >= v35 >> 1)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v35 > 1, v36 + 1, 1, v34);
        v34 = v42;
      }

      v37 = v25 + 1;
      *(v34 + 16) = v36 + 1;
      (*(v55 + 32))(v34 + ((*(v55 + 80) + 32) & ~*(v55 + 80)) + *(v55 + 72) * v36, v56, v53);
      v57 = v34;
      v38 = v50;
      v39 = static INIntentResolutionResult.inferOrdinalDisplayValues(index:count:)(v25, v50);
      __chkstk_darwin(v39);
      v44[2] = v0;
      v40 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSaySSG_11SiriKitFlow11DisplayHintVs5NeverOTg5(partial apply for closure #1 in VoiceCommandNLContextProvider.getDisplayHints(options:), v44, v39);

      specialized Array.append<A>(contentsOf:)(v40);

      (*v45)(v0, v14);
      v25 = v37;
      v2 = v51;
    }

    while (v38 != v37);
  }

LABEL_18:
  OUTLINED_FUNCTION_42();
}

void VoiceCommandNLContextProvider.buildSDAForConfirmation(acceptLabel:denyLabel:acceptAlternatives:denyAlternatives:)()
{
  OUTLINED_FUNCTION_40_0();
  v1 = v0;
  v3 = v2;
  OUTLINED_FUNCTION_9();
  v4 = type metadata accessor for Siri_Nlu_External_SystemOffered();
  v5 = OUTLINED_FUNCTION_14(v4);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  OUTLINED_FUNCTION_3();
  if ((SiriLinkFlowFeatureFlags.isEnabled.getter(0) & 1) == 0)
  {
    Siri_Nlu_External_SystemDialogAct.init()();
    Siri_Nlu_External_SystemOffered.init()();
    Siri_Nlu_External_SystemDialogAct.offered.setter();
LABEL_9:
    OUTLINED_FUNCTION_42();
    return;
  }

  if (!v3 || !v1)
  {
    VoiceCommandNLContextProvider.buildSDAForActionConfirmationWithYesNo()();
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_42();

  VoiceCommandNLContextProvider.buildSDAForActionConfirmationWithCustomLabel(acceptLabel:denyLabel:acceptAlternatives:denyAlternatives:)();
}

void VoiceCommandNLContextProvider.buildSDAForActionConfirmationWithYesNo()()
{
  OUTLINED_FUNCTION_40_0();
  v43 = v2;
  v44 = type metadata accessor for Siri_Nlu_External_SystemOffered();
  v3 = OUTLINED_FUNCTION_7_1(v44);
  v42 = v4;
  v6 = *(v5 + 64);
  __chkstk_darwin(v3);
  OUTLINED_FUNCTION_50_0();
  v41 = v7 - v8;
  OUTLINED_FUNCTION_25_4();
  __chkstk_darwin(v9);
  v39 = &v37 - v10;
  OUTLINED_FUNCTION_22_10();
  v40 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v11 = OUTLINED_FUNCTION_7_1(v40);
  v13 = v12;
  v37 = v12;
  v15 = *(v14 + 64);
  __chkstk_darwin(v11);
  OUTLINED_FUNCTION_50_0();
  v18 = v16 - v17;
  __chkstk_darwin(v19);
  v20 = OUTLINED_FUNCTION_27_12();
  v21 = OUTLINED_FUNCTION_14(v20);
  v23 = *(v22 + 64);
  __chkstk_darwin(v21);
  OUTLINED_FUNCTION_3();
  v24 = type metadata accessor for Siri_Nlu_External_UserWantedToProceed();
  v38 = v24;
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  __chkstk_darwin(v24);
  OUTLINED_FUNCTION_50_0();
  v29 = v27 - v28;
  __chkstk_darwin(v30);
  OUTLINED_FUNCTION_13_16();
  v31 = type metadata accessor for UsoTaskBuilder_execute_common_VoiceCommand();
  OUTLINED_FUNCTION_66(v31);
  UsoTaskBuilder_execute_common_VoiceCommand.init()();
  Siri_Nlu_External_UserWantedToProceed.init()();
  UsoTaskBuilder.asUsoGraph()();
  Siri_Nlu_External_UserWantedToProceed.reference.setter();
  Siri_Nlu_External_UserDialogAct.init()();
  (*(v25 + 16))(v29, v1, v24);
  Siri_Nlu_External_UserDialogAct.wantedToProceed.setter();
  v32 = v39;
  Siri_Nlu_External_SystemOffered.init()();
  v33 = *(v13 + 16);
  v34 = v40;
  v33(v18, v0, v40);
  Siri_Nlu_External_SystemOffered.offeredAct.setter();
  Siri_Nlu_External_SystemDialogAct.init()();
  v35 = v42;
  v36 = v44;
  (*(v42 + 16))(v41, v32, v44);
  Siri_Nlu_External_SystemDialogAct.offered.setter();

  (*(v35 + 8))(v32, v36);
  (*(v37 + 8))(v0, v34);
  (*(v25 + 8))(v1, v38);
  OUTLINED_FUNCTION_42();
}

void VoiceCommandNLContextProvider.buildSDAForActionConfirmationWithCustomLabel(acceptLabel:denyLabel:acceptAlternatives:denyAlternatives:)()
{
  OUTLINED_FUNCTION_40_0();
  v15[1] = v1;
  v2 = type metadata accessor for Siri_Nlu_External_SystemGaveOptions();
  v3 = OUTLINED_FUNCTION_7_1(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v3);
  OUTLINED_FUNCTION_50_0();
  OUTLINED_FUNCTION_10_21();
  __chkstk_darwin(v8);
  v10 = v15 - v9;
  VoiceCommandNLContextProvider.buildTaskFor(label:alternatives:confirmation:)();
  VoiceCommandNLContextProvider.buildTaskFor(label:alternatives:confirmation:)();
  Siri_Nlu_External_SystemGaveOptions.init()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D27_Nlu_External_UserDialogActVGMd, &_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D27_Nlu_External_UserDialogActVGMR);
  v11 = *(type metadata accessor for Siri_Nlu_External_UserDialogAct() - 8);
  v12 = *(v11 + 72);
  v13 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  *(swift_allocObject() + 16) = xmmword_216840;
  UsoTaskBuilder_execute_common_VoiceCommand.toUserDialogAct()();
  UsoTaskBuilder_execute_common_VoiceCommand.toUserDialogAct()();
  Siri_Nlu_External_SystemGaveOptions.choices.setter();
  Siri_Nlu_External_SystemDialogAct.init()();
  OUTLINED_FUNCTION_21_12();
  v14(v0, v10, v2);
  Siri_Nlu_External_SystemDialogAct.gaveOptions.setter();

  (*(v5 + 8))(v10, v2);
  OUTLINED_FUNCTION_42();
}

uint64_t VoiceCommandNLContextProvider.makeContextForNeedsValue(taskBuilder:)(uint64_t a1)
{
  OUTLINED_FUNCTION_9();
  v2 = type metadata accessor for Siri_Nlu_External_SystemPrompted();
  v3 = OUTLINED_FUNCTION_14(v2);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  OUTLINED_FUNCTION_3();
  v6 = type metadata accessor for Siri_Nlu_External_SystemDialogAct();
  v7 = OUTLINED_FUNCTION_7_1(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  __chkstk_darwin(v7);
  OUTLINED_FUNCTION_3();
  v14 = v13 - v12;
  NLContextUpdate.init()();
  NLContextUpdate.weightedPromptStrict.setter();
  OUTLINED_FUNCTION_3_22();
  if ((SiriLinkFlowFeatureFlags.isEnabled.getter(0) & 1) != 0 && a1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D29_Nlu_External_SystemDialogActVGMd, &_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D29_Nlu_External_SystemDialogActVGMR);
    v15 = *(v9 + 72);
    OUTLINED_FUNCTION_25_7();
    *(swift_allocObject() + 16) = xmmword_216850;

    VoiceCommandNLContextProvider.buildSDAForNeedsValue(taskBuilder:)();
    NLContextUpdate.nluSystemDialogActs.setter();
  }

  else
  {
    Siri_Nlu_External_SystemDialogAct.init()();
    Siri_Nlu_External_SystemPrompted.init()();
    Siri_Nlu_External_SystemDialogAct.prompted.setter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D29_Nlu_External_SystemDialogActVGMd, &_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D29_Nlu_External_SystemDialogActVGMR);
    v17 = *(v9 + 72);
    OUTLINED_FUNCTION_25_7();
    v20 = v19 & ~v18;
    v21 = swift_allocObject();
    v22 = OUTLINED_FUNCTION_14_14(v21, xmmword_216850);
    v23(v22 + v20, v14, v6);
    NLContextUpdate.nluSystemDialogActs.setter();
    return (*(v9 + 8))(v14, v6);
  }
}

uint64_t VoiceCommandNLContextProvider.buildSDAForNeedsValue(taskBuilder:)()
{
  OUTLINED_FUNCTION_9();
  v1 = type metadata accessor for Siri_Nlu_External_UsoGraph();
  v2 = OUTLINED_FUNCTION_14(v1);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_11_14();
  v5 = type metadata accessor for Siri_Nlu_External_SystemPrompted();
  v6 = OUTLINED_FUNCTION_7_1(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6);
  OUTLINED_FUNCTION_50_0();
  OUTLINED_FUNCTION_10_21();
  __chkstk_darwin(v11);
  OUTLINED_FUNCTION_12_18();
  Siri_Nlu_External_SystemPrompted.init()();
  UsoTaskBuilder.asUsoGraph()();
  Siri_Nlu_External_SystemPrompted.target.setter();
  Siri_Nlu_External_SystemDialogAct.init()();
  v12 = OUTLINED_FUNCTION_16_18();
  v13(v12);
  Siri_Nlu_External_SystemDialogAct.prompted.setter();
  return (*(v8 + 8))(v0, v5);
}

void VoiceCommandNLContextProvider.makeContextForBoolNeedsValuePrompt(intent:parameter:)()
{
  OUTLINED_FUNCTION_40_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v38 = v6;
  v37 = type metadata accessor for Siri_Nlu_External_SystemDialogAct();
  v7 = OUTLINED_FUNCTION_7_1(v37);
  v9 = v8;
  v11 = *(v10 + 64);
  __chkstk_darwin(v7);
  OUTLINED_FUNCTION_3();
  v14 = v13 - v12;
  v36 = type metadata accessor for NLContextUpdate();
  v15 = OUTLINED_FUNCTION_7_1(v36);
  v17 = v16;
  v19 = *(v18 + 64);
  __chkstk_darwin(v15);
  OUTLINED_FUNCTION_3();
  v22 = v21 - v20;
  NLContextUpdate.init()();
  OUTLINED_FUNCTION_4_28();
  NLContextUpdate.weightedPromptTargetDomain.setter();
  OUTLINED_FUNCTION_3_22();
  NLContextUpdate.weightedPromptStrict.setter();
  NLContextUpdate.weightedPromptAbortValues.setter();
  NLContextUpdate.weightedPromptResponseTargets.setter();
  v23 = NLContextUpdate.weightedPromptResponseOptions.setter();
  if (!v5 || !v3)
  {
    goto LABEL_6;
  }

  v24 = v5;
  v25 = INIntent.BOOLeanAttributeMetadata(parameterName:)();
  if (!v25)
  {

LABEL_6:
    (*(*v0 + 168))(v23);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D29_Nlu_External_SystemDialogActVGMd, &_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D29_Nlu_External_SystemDialogActVGMR);
    v32 = OUTLINED_FUNCTION_15_16();
    v33 = OUTLINED_FUNCTION_9_17(v32, xmmword_216850);
    v34(v33);
    NLContextUpdate.nluSystemDialogActs.setter();
    goto LABEL_7;
  }

  v26 = v25;
  v27 = [v25 localizedTrueDisplayName];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v35 = v24;

  v28 = [v26 localizedFalseDisplayName];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  VoiceCommandNLContextProvider.buildSDAForActionConfirmationWithCustomLabel(acceptLabel:denyLabel:acceptAlternatives:denyAlternatives:)();

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D29_Nlu_External_SystemDialogActVGMd, &_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D29_Nlu_External_SystemDialogActVGMR);
  v29 = OUTLINED_FUNCTION_15_16();
  v30 = OUTLINED_FUNCTION_9_17(v29, xmmword_216850);
  v31(v30);
  NLContextUpdate.nluSystemDialogActs.setter();

LABEL_7:
  (*(v9 + 8))(v14, v1);
  (*(v17 + 32))(v38, v22, v36);
  OUTLINED_FUNCTION_42();
}

void VoiceCommandNLContextProvider.buildSDAForBoolNeedsValuePrompt()()
{
  OUTLINED_FUNCTION_40_0();
  v35 = type metadata accessor for Siri_Nlu_External_SystemOffered();
  v3 = OUTLINED_FUNCTION_7_1(v35);
  v34 = v4;
  v6 = *(v5 + 64);
  __chkstk_darwin(v3);
  OUTLINED_FUNCTION_50_0();
  v33 = v7 - v8;
  OUTLINED_FUNCTION_25_4();
  __chkstk_darwin(v9);
  OUTLINED_FUNCTION_12_18();
  v32 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v10 = OUTLINED_FUNCTION_7_1(v32);
  v12 = v11;
  v14 = *(v13 + 64);
  __chkstk_darwin(v10);
  OUTLINED_FUNCTION_50_0();
  v17 = v15 - v16;
  __chkstk_darwin(v18);
  v19 = OUTLINED_FUNCTION_27_12();
  v20 = OUTLINED_FUNCTION_14(v19);
  v22 = *(v21 + 64);
  __chkstk_darwin(v20);
  OUTLINED_FUNCTION_3();
  v31 = type metadata accessor for Siri_Nlu_External_UserStatedTask();
  v23 = *(v31 - 8);
  v24 = *(v23 + 64);
  __chkstk_darwin(v31);
  OUTLINED_FUNCTION_50_0();
  v27 = v25 - v26;
  __chkstk_darwin(v28);
  OUTLINED_FUNCTION_13_16();
  Siri_Nlu_External_UserStatedTask.init()();
  v29 = type metadata accessor for UsoTaskBuilder_execute_common_VoiceCommand();
  OUTLINED_FUNCTION_66(v29);
  UsoTaskBuilder_execute_common_VoiceCommand.init()();
  UsoTaskBuilder.asUsoGraph()();

  Siri_Nlu_External_UserStatedTask.task.setter();
  Siri_Nlu_External_UserDialogAct.init()();
  (*(v23 + 16))(v27, v2, v31);
  Siri_Nlu_External_UserDialogAct.userStatedTask.setter();
  Siri_Nlu_External_SystemOffered.init()();
  (*(v12 + 16))(v17, v1, v32);
  Siri_Nlu_External_SystemOffered.offeredAct.setter();
  Siri_Nlu_External_SystemDialogAct.init()();
  OUTLINED_FUNCTION_21_12();
  v30(v33, v0, v35);
  Siri_Nlu_External_SystemDialogAct.offered.setter();
  (*(v34 + 8))(v0, v35);
  (*(v12 + 8))(v1, v32);
  (*(v23 + 8))(v2, v31);
  OUTLINED_FUNCTION_42();
}

void VoiceCommandNLContextProvider.buildSDAForDisambiguation(items:)()
{
  OUTLINED_FUNCTION_40_0();
  v1 = v0;
  v3 = v2;
  v4 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v70 = OUTLINED_FUNCTION_7_1(v4);
  v71 = v5;
  v7 = *(v6 + 64);
  __chkstk_darwin(v70);
  OUTLINED_FUNCTION_3();
  v10 = v9 - v8;
  v11 = type metadata accessor for Siri_Nlu_External_SystemGaveOptions();
  v12 = OUTLINED_FUNCTION_7_1(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  __chkstk_darwin(v12);
  OUTLINED_FUNCTION_50_0();
  v19 = v17 - v18;
  __chkstk_darwin(v20);
  v22 = &v57 - v21;
  Siri_Nlu_External_SystemGaveOptions.init()();
  if ((SiriLinkFlowFeatureFlags.isEnabled.getter(0) & 1) == 0)
  {
LABEL_50:
    Siri_Nlu_External_SystemDialogAct.init()();
    OUTLINED_FUNCTION_21_12();
    v56(v19, v22, v11);
    Siri_Nlu_External_SystemDialogAct.gaveOptions.setter();
    (*(v14 + 8))(v22, v11);
    OUTLINED_FUNCTION_42();
    return;
  }

  v58 = v22;
  v59 = v19;
  v60 = v14;
  v61 = v11;
  v62 = v3;
  v23 = _swiftEmptyArrayStorage;
  v69 = *(v1 + 16);
  if (!v69)
  {
LABEL_40:
    v47 = specialized Array.count.getter(v23);
    if (v47)
    {
      v48 = v47;
      OUTLINED_FUNCTION_17_16(_swiftEmptyArrayStorage);
      if (v48 < 0)
      {
        goto LABEL_57;
      }

      OUTLINED_FUNCTION_20_11();
      v49 = v23;
      do
      {
        if (v11)
        {
          specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v50 = *(v23 + 8 * v14 + 32);
        }

        UsoEntityBuilder_common_VoiceCommandPayload.toUserDialogAct()();

        v74[0] = v22;
        v51 = v10;
        v52 = *(v22 + 2);
        if (v52 >= *(v22 + 3) >> 1)
        {
          OUTLINED_FUNCTION_18_18();
          v22 = v74[0];
        }

        OUTLINED_FUNCTION_6_20();
        (*(v55 + 32))(v53 + v54 * v52, v51);
        v10 = v51;
        v23 = v49;
      }

      while (v48 != v14);
    }

    v11 = v61;
    v22 = v58;
    Siri_Nlu_External_SystemGaveOptions.choices.setter();
    v14 = v60;
    v19 = v59;
    goto LABEL_50;
  }

  v24 = 0;
  v68 = v1 + 32;
  v63 = v10;
  while (1)
  {
    outlined init with copy of DeviceState(v68 + 40 * v24, v74);
    v25 = v75;
    v26 = v76;
    __swift_project_boxed_opaque_existential_1(v74, v75);
    v27 = (*(v26 + 40))(v25, v26);
    __swift_destroy_boxed_opaque_existential_1Tm(v74);
    v14 = v27 >> 62;
    v28 = v27 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *(&dword_10 + (v27 & 0xFFFFFFFFFFFFFF8));
    v29 = v23 >> 62;
    v30 = v23 >> 62 ? OUTLINED_FUNCTION_28_7() : *(&dword_10 + (v23 & 0xFFFFFFFFFFFFFF8));
    v31 = v30 + v28;
    if (__OFADD__(v30, v28))
    {
      break;
    }

    isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
    v72 = v28;
    if (isUniquelyReferenced_nonNull_bridgeObject)
    {
      if (v29)
      {
        goto LABEL_16;
      }

      v33 = v23 & 0xFFFFFFFFFFFFFF8;
      if (v31 <= *(&dword_18 + (v23 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        goto LABEL_18;
      }
    }

    else
    {
      if (v29)
      {
LABEL_16:
        OUTLINED_FUNCTION_28_7();
        goto LABEL_17;
      }

      v33 = v23 & 0xFFFFFFFFFFFFFF8;
    }

    v34 = *(v33 + 16);
LABEL_17:
    v23 = OUTLINED_FUNCTION_26_13();
    v33 = v23 & 0xFFFFFFFFFFFFFF8;
LABEL_18:
    v35 = *(v33 + 16);
    v36 = (*(v33 + 24) >> 1) - v35;
    v11 = v33 + 8 * v35;
    if (v14)
    {
      if (v27 < 0)
      {
        v22 = v27;
      }

      else
      {
        v22 = (v27 & 0xFFFFFFFFFFFFFF8);
      }

      v37 = _CocoaArrayWrapper.endIndex.getter();
      if (v37)
      {
        v38 = v37;
        v39 = _CocoaArrayWrapper.endIndex.getter();
        if (v36 < v39)
        {
          goto LABEL_54;
        }

        if (v38 < 1)
        {
          goto LABEL_56;
        }

        v64 = v39;
        v65 = v33;
        v66 = v24;
        v67 = v23;
        v40 = v11 + 32;
        v11 = lazy protocol witness table accessor for type [UsoEntityBuilder_common_VoiceCommandPayload] and conformance [A]();
        for (i = 0; i != v38; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay12SiriOntology43UsoEntityBuilder_common_VoiceCommandPayloadCGMd, &_sSay12SiriOntology43UsoEntityBuilder_common_VoiceCommandPayloadCGMR);
          v42 = specialized protocol witness for Collection.subscript.read in conformance [A](v73, i, v27);
          v14 = *v43;

          v42(v73, 0);
          *(v40 + 8 * i) = v14;
        }

        v10 = v63;
        v22 = v64;
        v24 = v66;
        v23 = v67;
        v33 = v65;
        goto LABEL_31;
      }
    }

    else
    {
      v14 = v27 & 0xFFFFFFFFFFFFFF8;
      v22 = *(&dword_10 + (v27 & 0xFFFFFFFFFFFFFF8));
      if (v22)
      {
        if (v36 < v22)
        {
          goto LABEL_55;
        }

        type metadata accessor for UsoEntityBuilder_common_VoiceCommandPayload();
        swift_arrayInitWithCopy();
LABEL_31:

        if (v22 < v72)
        {
          goto LABEL_52;
        }

        if (v22 > 0)
        {
          v44 = *(v33 + 16);
          v45 = __OFADD__(v44, v22);
          v46 = &v22[v44];
          if (v45)
          {
            goto LABEL_53;
          }

          *(v33 + 16) = v46;
        }

        goto LABEL_36;
      }
    }

    if (v72 > 0)
    {
      goto LABEL_52;
    }

LABEL_36:
    if (++v24 == v69)
    {
      goto LABEL_40;
    }
  }

  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
}

void VoiceCommandNLContextProvider.buildSDAForMultiChoice(options:)()
{
  OUTLINED_FUNCTION_40_0();
  v2 = v1;
  v4 = v3;
  v5 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v58 = OUTLINED_FUNCTION_7_1(v5);
  v59 = v6;
  v8 = *(v7 + 64);
  __chkstk_darwin(v58);
  OUTLINED_FUNCTION_3();
  v11 = v10 - v9;
  v12 = type metadata accessor for Siri_Nlu_External_SystemGaveOptions();
  v13 = OUTLINED_FUNCTION_7_1(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  __chkstk_darwin(v13);
  OUTLINED_FUNCTION_50_0();
  v20 = v18 - v19;
  __chkstk_darwin(v21);
  v23 = &v53 - v22;
  Siri_Nlu_External_SystemGaveOptions.init()();
  if ((SiriLinkFlowFeatureFlags.isEnabled.getter(0) & 1) == 0)
  {
LABEL_36:
    Siri_Nlu_External_SystemDialogAct.init()();
    OUTLINED_FUNCTION_21_12();
    v52(v20, v23, v12);
    Siri_Nlu_External_SystemDialogAct.gaveOptions.setter();
    (*(v15 + 8))(v23, v12);
    OUTLINED_FUNCTION_42();
    return;
  }

  v53 = v23;
  v54 = v20;
  v55 = v15;
  v56 = v12;
  v57 = v4;
  v24 = specialized Array.count.getter(v2);
  v25 = 0;
  v62 = v2 & 0xFFFFFFFFFFFFFF8;
  v63 = v2 & 0xC000000000000001;
  v26 = &_swiftEmptyArrayStorage;
  v27 = &off_2B4000;
  v61 = xmmword_216010;
  while (1)
  {
    if (v24 == v25)
    {
      v44 = specialized Array.count.getter(v26);
      if (v44)
      {
        v45 = v44;
        OUTLINED_FUNCTION_17_16(&_swiftEmptyArrayStorage);
        if (v45 < 0)
        {
          goto LABEL_41;
        }

        OUTLINED_FUNCTION_20_11();
        do
        {
          if (v0)
          {
            specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v46 = *(v26 + 8 * v25 + 32);
          }

          UsoEntityBuilder_common_VoiceCommandPayload.toUserDialogAct()();

          v64 = v20;
          v47 = v11;
          v48 = *(v20 + 16);
          if (v48 >= *(v20 + 24) >> 1)
          {
            OUTLINED_FUNCTION_18_18();
            v20 = v64;
          }

          OUTLINED_FUNCTION_6_20();
          (*(v51 + 32))(v49 + v50 * v48, v47);
          v11 = v47;
        }

        while (v45 != v25);
      }

      v23 = v53;
      Siri_Nlu_External_SystemGaveOptions.choices.setter();
      v12 = v56;
      v20 = v54;
      v15 = v55;
      goto LABEL_36;
    }

    if (v63)
    {
      v28 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v25 >= *(v62 + 16))
      {
        goto LABEL_38;
      }

      v28 = *(v2 + 8 * v25 + 32);
    }

    v29 = v28;
    if (__OFADD__(v25, 1))
    {
      break;
    }

    v0 = type metadata accessor for UsoEntityBuilder_common_VoiceCommandPayload();
    OUTLINED_FUNCTION_66(v0);
    v30 = UsoEntityBuilder_common_VoiceCommandPayload.init()();
    outlined bridged method (ob) of @objc LNStaticDeferredLocalizedString.defaultValue.getter([v29 v27[307]]);
    if (!v31)
    {
      v32 = [v29 v27[307]];
      v33 = [v32 key];
      v60 = v25;
      v34 = v26;
      v35 = v24;
      v36 = v2;
      v37 = v11;
      v38 = v33;

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v11 = v37;
      v2 = v36;
      v24 = v35;
      v26 = v34;
      v25 = v60;
    }

    dispatch thunk of UsoEntityBuilder_common_VoiceCommandPayload.setStringValue(value:)();

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    inited = swift_initStackObject();
    *(inited + 16) = v61;
    *(inited + 32) = v30;

    v40 = v26 >> 62;
    if (v26 >> 62)
    {
      v41 = OUTLINED_FUNCTION_28_7();
    }

    else
    {
      v41 = *(&dword_10 + (v26 & 0xFFFFFFFFFFFFFF8));
    }

    v27 = &off_2B4000;
    v20 = v41 + 1;
    if (__OFADD__(v41, 1))
    {
      goto LABEL_39;
    }

    if (swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (v40)
      {
        goto LABEL_20;
      }

      v42 = v26 & 0xFFFFFFFFFFFFFF8;
      if (v20 <= *(&dword_18 + (v26 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        goto LABEL_22;
      }
    }

    else
    {
      if (v40)
      {
LABEL_20:
        OUTLINED_FUNCTION_28_7();
        goto LABEL_21;
      }

      v42 = v26 & 0xFFFFFFFFFFFFFF8;
    }

    v43 = *(v42 + 16);
LABEL_21:
    v26 = OUTLINED_FUNCTION_26_13();
    v42 = v26 & 0xFFFFFFFFFFFFFF8;
LABEL_22:
    if (*(v42 + 16) >= *(v42 + 24) >> 1)
    {
      goto LABEL_40;
    }

    swift_arrayInitWithCopy();

    ++*(v42 + 16);
    ++v25;
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
}

unint64_t type metadata accessor for INIntentResolutionResult()
{
  result = lazy cache variable for type metadata for INIntentResolutionResult;
  if (!lazy cache variable for type metadata for INIntentResolutionResult)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for INIntentResolutionResult);
  }

  return result;
}

void VoiceCommandNLContextProvider.buildTaskFor(label:alternatives:confirmation:)()
{
  OUTLINED_FUNCTION_40_0();
  v2 = v1;
  v3 = type metadata accessor for UsoIdentifier();
  v4 = OUTLINED_FUNCTION_7_1(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  __chkstk_darwin(v4);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_11_14();
  v9 = type metadata accessor for UsoEntityBuilder_common_VoiceCommand();
  OUTLINED_FUNCTION_66(v9);
  UsoEntityBuilder_common_VoiceCommand.init()();
  dispatch thunk of UsoEntityBuilder_common_VoiceCommand.setName(value:)();
  UsoIdentifier.init(value:appBundleId:namespace:)();
  dispatch thunk of UsoBuilder.addUsoIdentifier(usoIdentifier:)();
  v10 = *(v6 + 8);
  v10(v0, v3);
  v11 = *(v2 + 16);
  if (v11)
  {
    v12 = (v2 + 40);
    do
    {
      v13 = *(v12 - 1);
      v14 = *v12;

      UsoIdentifier.init(value:appBundleId:namespace:)();
      dispatch thunk of UsoBuilder.addUsoIdentifier(usoIdentifier:)();
      v10(v0, v3);
      v12 += 2;
      --v11;
    }

    while (v11);
  }

  v15 = type metadata accessor for UsoTaskBuilder_execute_common_VoiceCommand();
  OUTLINED_FUNCTION_66(v15);
  UsoTaskBuilder_execute_common_VoiceCommand.init()();
  dispatch thunk of Uso_VerbTemplateBuilder_ReferenceVoiceCommandPayload.setReference(value:)();

  OUTLINED_FUNCTION_42();
}

uint64_t closure #1 in VoiceCommandNLContextProvider.getDisplayHints(items:)(uint64_t *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow13SemanticValueVSgMd, &_s11SiriKitFlow13SemanticValueVSgMR);
  v5 = OUTLINED_FUNCTION_14(v4);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v26 - v8;
  v10 = type metadata accessor for SemanticValue();
  v11 = OUTLINED_FUNCTION_7_1(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  __chkstk_darwin(v11);
  OUTLINED_FUNCTION_50_0();
  v18 = (v16 - v17);
  __chkstk_darwin(v19);
  v21 = &v26 - v20;
  v22 = *a1;
  v23 = a1[1];

  SemanticValue.init(string:label:)();
  v24 = *(v13 + 16);
  v24(v9, a2, v10);
  __swift_storeEnumTagSinglePayload(v9, 0, 1, v10);
  v24(v18, v21, v10);
  DisplayHint.init(idValue:displayValue:)();
  return (*(v13 + 8))(v21, v10);
}

uint64_t UsoTaskBuilder_execute_common_VoiceCommand.toUserDialogAct()()
{
  OUTLINED_FUNCTION_9();
  v1 = type metadata accessor for Siri_Nlu_External_UsoGraph();
  v2 = OUTLINED_FUNCTION_14(v1);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_11_14();
  v5 = type metadata accessor for Siri_Nlu_External_UserStatedTask();
  v6 = OUTLINED_FUNCTION_7_1(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6);
  OUTLINED_FUNCTION_50_0();
  OUTLINED_FUNCTION_10_21();
  __chkstk_darwin(v11);
  OUTLINED_FUNCTION_12_18();
  Siri_Nlu_External_UserStatedTask.init()();
  UsoTaskBuilder.asUsoGraph()();
  Siri_Nlu_External_UserStatedTask.task.setter();
  Siri_Nlu_External_UserDialogAct.init()();
  v12 = OUTLINED_FUNCTION_16_18();
  v13(v12);
  Siri_Nlu_External_UserDialogAct.userStatedTask.setter();
  return (*(v8 + 8))(v0, v5);
}

uint64_t UsoEntityBuilder_common_VoiceCommandPayload.toUserDialogAct()()
{
  v0 = type metadata accessor for UsoTaskBuilder_execute_common_VoiceCommand();
  OUTLINED_FUNCTION_66(v0);
  UsoTaskBuilder_execute_common_VoiceCommand.init()();
  dispatch thunk of Uso_VerbTemplateBuilder_ReferenceVoiceCommandPayload.setPayload(value:)();
  UsoTaskBuilder_execute_common_VoiceCommand.toUserDialogAct()();
}

unint64_t lazy protocol witness table accessor for type [UsoEntityBuilder_common_VoiceCommandPayload] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [UsoEntityBuilder_common_VoiceCommandPayload] and conformance [A];
  if (!lazy protocol witness table cache variable for type [UsoEntityBuilder_common_VoiceCommandPayload] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay12SiriOntology43UsoEntityBuilder_common_VoiceCommandPayloadCGMd, &_sSay12SiriOntology43UsoEntityBuilder_common_VoiceCommandPayloadCGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [UsoEntityBuilder_common_VoiceCommandPayload] and conformance [A]);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_3_22()
{

  return NLContextUpdate.currentDomainName.setter();
}

void OUTLINED_FUNCTION_6_20()
{
  *(v0 + 16) = v1;
  v3 = *(v2 - 184);
  v4 = *(v2 - 176);
  v5 = v0 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v6 = *(v4 + 72);
}

char *OUTLINED_FUNCTION_9_17(__n128 *a1, __n128 a2)
{
  a1[1] = a2;
  v5 = *(v3 + 16);
  result = a1 + v2;
  v7 = *(v4 - 96);
  return result;
}

__n128 *OUTLINED_FUNCTION_14_14(__n128 *result, __n128 a2)
{
  result[1] = a2;
  v3 = *(v2 + 16);
  return result;
}

uint64_t OUTLINED_FUNCTION_15_16()
{
  v2 = ((*(v0 + 80) + 32) & ~*(v0 + 80)) + *(v0 + 72);

  return swift_allocObject();
}

void OUTLINED_FUNCTION_17_16(uint64_t a1@<X8>)
{
  *(v1 - 128) = a1;

  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
}

void OUTLINED_FUNCTION_18_18()
{

  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
}

uint64_t OUTLINED_FUNCTION_26_13()
{

  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
}

uint64_t OUTLINED_FUNCTION_27_12()
{

  return type metadata accessor for Siri_Nlu_External_UsoGraph();
}

uint64_t OUTLINED_FUNCTION_28_7()
{

  return _CocoaArrayWrapper.endIndex.getter();
}

uint64_t UserDefaultsWrapper.__allocating_init()()
{
  v0 = swift_allocObject();
  UserDefaultsWrapper.init()();
  return v0;
}

void *UserDefaultsWrapper.init()()
{
  v0[2] = 0x75616665444D4143;
  v0[3] = 0xEB0000000073746CLL;
  v0[4] = 0xD000000000000021;
  v0[5] = 0x800000000022F7D0;
  v0[6] = [objc_allocWithZone(NSUserDefaults) init];
  return v0;
}

Swift::Void __swiftcall UserDefaultsWrapper.recordFirstRunShown(bundleId:)(Swift::String bundleId)
{
  v2 = v1;
  object = bundleId._object;
  countAndFlagsBits = bundleId._countAndFlagsBits;
  if (one-time initialization token for voiceCommands != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static Logger.voiceCommands);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v29[0] = v9;
    *v8 = 136315138;
    *(v8 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(countAndFlagsBits, object, v29);
    _os_log_impl(&dword_0, v6, v7, "Storing ambiguous first run shown for %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
  }

  v10 = v2[6];
  v11 = v2[2];
  v12 = v2[3];
  v13 = String._bridgeToObjectiveC()();
  v27 = v10;
  v14 = [v10 dictionaryForKey:v13];

  if (v14)
  {
    v15 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v15 = Dictionary.init(dictionaryLiteral:)();
  }

  v17 = v2[4];
  v16 = v2[5];
  specialized Dictionary.subscript.getter(v17, v16, v15, v29);
  if (v30)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    if (swift_dynamicCast())
    {
      v18 = *&v28[0];
      goto LABEL_13;
    }
  }

  else
  {
    outlined destroy of Any?(v29);
  }

  v18 = _swiftEmptyArrayStorage;
LABEL_13:

  v19 = countAndFlagsBits;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v24 = v18[2];
    specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    v18 = v25;
  }

  v20 = v18[2];
  if (v20 >= v18[3] >> 1)
  {
    specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    v18 = v26;
  }

  v18[2] = v20 + 1;
  v21 = &v18[2 * v20];
  v21[4] = v19;
  v21[5] = object;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  v29[0] = v18;
  outlined init with take of Any(v29, v28);

  swift_isUniquelyReferenced_nonNull_native();
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v28, v17, v16);

  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v23 = String._bridgeToObjectiveC()();
  [v27 setObject:isa forKey:v23];
}

uint64_t UserDefaultsWrapper.deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return v0;
}

uint64_t UserDefaultsWrapper.__deallocating_deinit()
{
  UserDefaultsWrapper.deinit();

  return swift_deallocClassInstance();
}

uint64_t RunCustomIntentReadingDelegate.__allocating_init(templater:deviceState:outputPublisher:)(uint64_t a1, uint64_t *a2, __int128 *a3)
{
  v6 = swift_allocObject();
  RunCustomIntentReadingDelegate.init(templater:deviceState:outputPublisher:)(a1, a2, a3);
  return v6;
}

void *RunCustomIntentReadingDelegate.init(templater:deviceState:outputPublisher:)(uint64_t a1, uint64_t *a2, __int128 *a3)
{
  v3[2] = 5;
  v7 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  dispatch thunk of DeviceState.isTextToSpeechEnabled.getter();
  v8 = type metadata accessor for ViewFactory();
  OUTLINED_FUNCTION_66(v8);
  v3[3] = ViewFactory.init(ttsEnabled:)();
  outlined init with copy of UUID?(a1, v10, &_s18SiriLinkFlowPlugin30RunCustomIntentReadingDelegateC10TemplatingVSgMd, &_s18SiriLinkFlowPlugin30RunCustomIntentReadingDelegateC10TemplatingVSgMR);
  if (v10[3])
  {
    outlined destroy of Any?(a1, &_s18SiriLinkFlowPlugin30RunCustomIntentReadingDelegateC10TemplatingVSgMd, &_s18SiriLinkFlowPlugin30RunCustomIntentReadingDelegateC10TemplatingVSgMR);
    memcpy(__dst, v10, sizeof(__dst));
  }

  else
  {
    static RunCustomIntentReadingDelegate.Templating.default(pageSize:)(5, __dst);
    outlined destroy of Any?(a1, &_s18SiriLinkFlowPlugin30RunCustomIntentReadingDelegateC10TemplatingVSgMd, &_s18SiriLinkFlowPlugin30RunCustomIntentReadingDelegateC10TemplatingVSgMR);
    if (v10[3])
    {
      outlined destroy of Any?(v10, &_s18SiriLinkFlowPlugin30RunCustomIntentReadingDelegateC10TemplatingVSgMd, &_s18SiriLinkFlowPlugin30RunCustomIntentReadingDelegateC10TemplatingVSgMR);
    }
  }

  memcpy(v3 + 4, __dst, 0x78uLL);
  outlined init with take of AceServiceInvokerAsync(a3, (v3 + 19));
  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  return v3;
}

uint64_t static RunCustomIntentReadingDelegate.Templating.default(pageSize:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for IntroduceCustomIntentCatTemplater();
  v5 = OUTLINED_FUNCTION_7_17();
  *(v5 + 16) = a1;
  a2[3] = v4;
  a2[4] = &protocol witness table for IntroduceCustomIntentCatTemplater;
  *a2 = v5;
  v6 = type metadata accessor for DescribeCustomIntentItemCatTemplater();
  v7 = OUTLINED_FUNCTION_6_21();
  a2[8] = v6;
  a2[9] = &protocol witness table for DescribeCustomIntentItemCatTemplater;
  a2[5] = v7;
  v8 = type metadata accessor for OfferMoreItemsCatTemplater();
  result = OUTLINED_FUNCTION_6_21();
  a2[13] = v8;
  a2[14] = &protocol witness table for OfferMoreItemsCatTemplater;
  a2[10] = result;
  return result;
}

uint64_t RunCustomIntentReadingDelegate.makeAction(introducingItems:)(uint64_t a1)
{
  v3 = *(v1 + 24);
  v4 = type metadata accessor for IntroduceCustomIntentViewBuilder();
  v5 = OUTLINED_FUNCTION_7_17();
  *(v5 + 16) = v3;
  outlined init with copy of DeviceState(v1 + 32, v21);
  type metadata accessor for IntroduceCustomIntentOutputProvider();
  v6 = swift_allocObject();
  v6[6] = v4;
  v6[7] = &protocol witness table for IntroduceCustomIntentViewBuilder;
  v6[2] = a1;
  v6[3] = v5;
  outlined init with take of AceServiceInvokerAsync(v21, (v6 + 8));
  outlined init with copy of DeviceState(v1 + 152, v21);
  v7 = type metadata accessor for OutputAction();
  OUTLINED_FUNCTION_66(v7);

  OUTLINED_FUNCTION_5_17(v8, v9, v10, v11, v12, v13, v14, v15, v20, v21[0]);
  v16 = OutputAction.init(publisher:nextAction:producer:)();
  OUTLINED_FUNCTION_1_33();
  lazy protocol witness table accessor for type OutputAction and conformance OutputAction(v17, 255, v18);
  return v16;
}

uint64_t RunCustomIntentReadingDelegate.makeAction(forItem:)()
{
  v1 = *(v0 + 24);
  v2 = type metadata accessor for DescribeCustomIntentItemViewBuilder();
  v3 = OUTLINED_FUNCTION_7_17();
  *(v3 + 16) = v1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow13PaginatedItemVySSGMd, &_s11SiriKitFlow13PaginatedItemVySSGMR);
  PaginatedItem.item.getter();
  v4 = v21;
  v5 = v22;
  outlined init with copy of DeviceState(v0 + 72, v20);
  type metadata accessor for DescribeCustomIntentItemOutputProvider();
  v6 = swift_allocObject();
  v6[7] = v2;
  v6[8] = &protocol witness table for DescribeCustomIntentItemViewBuilder;
  v6[3] = v5;
  v6[4] = v3;
  v6[2] = v4;
  outlined init with take of AceServiceInvokerAsync(v20, (v6 + 9));
  outlined init with copy of DeviceState(v0 + 152, v20);
  v7 = type metadata accessor for OutputAction();
  v8 = OUTLINED_FUNCTION_66(v7);
  OUTLINED_FUNCTION_5_17(v8, v9, v10, v11, v12, v8, v13, v14, v19, v20[0]);
  v15 = OutputAction.init(publisher:nextAction:producer:)();
  OUTLINED_FUNCTION_1_33();
  lazy protocol witness table accessor for type OutputAction and conformance OutputAction(v16, 255, v17);
  return v15;
}

uint64_t RunCustomIntentReadingDelegate.makeGroup(withActions:nextPage:)(uint64_t a1, uint64_t a2)
{
  v79 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow21ActionGroupTransitionOSgMd, &_s11SiriKitFlow21ActionGroupTransitionOSgMR);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v80 = (&v70 - v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow4PageV4page_AA14ActionGrouping_p5grouptSgMd, &_s11SiriKitFlow4PageV4page_AA14ActionGrouping_p5grouptSgMR);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v70 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow4PageV_AA14ActionGrouping_ptMd, &_s11SiriKitFlow4PageV_AA14ActionGrouping_ptMR);
  v11 = OUTLINED_FUNCTION_7(v10);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v70 - v14;
  v16 = type metadata accessor for Page();
  v17 = OUTLINED_FUNCTION_7_1(v16);
  v19 = v18;
  v21 = *(v20 + 64);
  v22 = __chkstk_darwin(v17);
  v24 = &v70 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v26 = &v70 - v25;
  outlined init with copy of UUID?(a2, v9, &_s11SiriKitFlow4PageV4page_AA14ActionGrouping_p5grouptSgMd, &_s11SiriKitFlow4PageV4page_AA14ActionGrouping_p5grouptSgMR);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow4PageV4page_AA14ActionGrouping_p5grouptMd, &_s11SiriKitFlow4PageV4page_AA14ActionGrouping_p5grouptMR);
  if (__swift_getEnumTagSinglePayload(v9, 1, v27) == 1)
  {
    outlined destroy of Any?(v9, &_s11SiriKitFlow4PageV4page_AA14ActionGrouping_p5grouptSgMd, &_s11SiriKitFlow4PageV4page_AA14ActionGrouping_p5grouptSgMR);
    v28 = type metadata accessor for ActionGroupTransition();
    __swift_storeEnumTagSinglePayload(v80, 1, 1, v28);
    v29 = type metadata accessor for StaticActionGroup();
    OUTLINED_FUNCTION_66(v29);

    v30 = StaticActionGroup.init(actions:transition:debugDescription:)();
  }

  else
  {
    v31 = *(v27 + 48);
    v32 = *(v10 + 48);
    v77 = v19;
    v33 = *(v19 + 32);
    v74 = *&v9[v31];
    v34 = v9;
    v35 = v16;
    v33(v15, v34, v16);
    *&v15[v32] = v74;
    v36 = &v15[*(v10 + 48)];
    v38 = *v36;
    v37 = *(v36 + 1);
    v72 = v38;
    v73 = v37;
    v39 = v26;
    v76 = v26;
    v40 = v15;
    v41 = v35;
    v33(v26, v40, v35);
    v42 = type metadata accessor for OfferMoreItemsCatTemplater();
    v43 = OUTLINED_FUNCTION_6_21();
    v71 = *(v78 + 24);
    v44 = v71;
    v45 = type metadata accessor for OfferMoreItemsViewBuilder();
    v46 = OUTLINED_FUNCTION_7_17();
    *(v46 + 16) = v44;
    v47 = v46;
    v48 = *(v19 + 16);
    v75 = v41;
    v48(v24, v39, v41);
    v49 = type metadata accessor for OfferMoreItemsOutputProvider();
    v50 = OUTLINED_FUNCTION_66(v49);
    v51 = (v50 + OBJC_IVAR____TtC18SiriLinkFlowPlugin28OfferMoreItemsOutputProvider_templating);
    v51[3] = v42;
    v51[4] = &protocol witness table for OfferMoreItemsCatTemplater;
    *&v74 = v43;
    *v51 = v43;
    v52 = (v50 + OBJC_IVAR____TtC18SiriLinkFlowPlugin28OfferMoreItemsOutputProvider_viewBuilder);
    v52[3] = v45;
    v52[4] = &protocol witness table for OfferMoreItemsViewBuilder;
    *v52 = v47;
    v33((v50 + OBJC_IVAR____TtC18SiriLinkFlowPlugin28OfferMoreItemsOutputProvider_nextPage), v24, v41);
    type metadata accessor for ContinueReadingConfirmationFlowStrategy();
    v53 = type metadata accessor for RunCustomIntentReadingDelegate.CustomIntentsConfirmResponseParser();
    v54 = OUTLINED_FUNCTION_6_21();
    v83 = v53;
    v84 = lazy protocol witness table accessor for type OutputAction and conformance OutputAction(&lazy protocol witness table cache variable for type RunCustomIntentReadingDelegate.CustomIntentsConfirmResponseParser and conformance RunCustomIntentReadingDelegate.CustomIntentsConfirmResponseParser, v55, type metadata accessor for RunCustomIntentReadingDelegate.CustomIntentsConfirmResponseParser);
    v82 = v54;

    ContinueReadingConfirmationFlowStrategy.__allocating_init(outputProducer:confirmationResponseParser:)();
    v56 = type metadata accessor for ContinueReadingConfirmationFlowStrategy.ContinueReadingActionGroupReturning();
    OUTLINED_FUNCTION_66(v56);
    swift_unknownObjectRetain();
    v57 = ContinueReadingConfirmationFlowStrategy.ContinueReadingActionGroupReturning.init(yesGroup:noGroup:cancelGroup:)();
    v58 = dispatch thunk of ContinueReadingConfirmationFlowStrategy.makeFlow(outputPublisher:)();
    v81 = v57;
    v82 = v58;
    v59 = type metadata accessor for AnyFlowAndActionGroupReturning();
    OUTLINED_FUNCTION_66(v59);

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow021PromptForConfirmationC0CyAA015ContinueReadingfC8StrategyCGMd, &_s11SiriKitFlow021PromptForConfirmationC0CyAA015ContinueReadingfC8StrategyCGMR);
    lazy protocol witness table accessor for type PromptForConfirmationFlow<ContinueReadingConfirmationFlowStrategy> and conformance PromptForConfirmationFlow<A>();
    v60 = AnyFlowAndActionGroupReturning.init<A, B>(flow:groupReturning:)();
    v61 = v80;
    *v80 = v60;
    v62 = enum case for FlowTransition.flow(_:);
    v63 = type metadata accessor for FlowTransition();
    OUTLINED_FUNCTION_7(v63);
    (*(v64 + 104))(v61, v62);
    v65 = enum case for ActionGroupTransition.following(_:);
    v66 = type metadata accessor for ActionGroupTransition();
    OUTLINED_FUNCTION_7(v66);
    (*(v67 + 104))(v61, v65, v66);
    __swift_storeEnumTagSinglePayload(v61, 0, 1, v66);
    v68 = type metadata accessor for StaticActionGroup();
    OUTLINED_FUNCTION_66(v68);

    v30 = StaticActionGroup.init(actions:transition:debugDescription:)();

    swift_unknownObjectRelease();

    (*(v77 + 8))(v76, v75);
  }

  lazy protocol witness table accessor for type OutputAction and conformance OutputAction(&lazy protocol witness table cache variable for type StaticActionGroup and conformance StaticActionGroup, 255, &type metadata accessor for StaticActionGroup);
  return v30;
}

uint64_t RunCustomIntentReadingDelegate.CustomIntentsConfirmResponseParser.parseConfirmationResponse(input:)@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for SiriKitConfirmationState();
  v3 = OUTLINED_FUNCTION_7_1(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v3);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v35 - v11;
  v13 = type metadata accessor for Parse();
  v14 = OUTLINED_FUNCTION_7_1(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  __chkstk_darwin(v14);
  v20 = &v35 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  Input.parse.getter();
  static VoiceCommandConfirmationUtils.getSiriKitConfirmationState(parse:)(v20, v12);
  (*(v16 + 8))(v20, v13);
  (*(v5 + 32))(v10, v12, v2);
  v21 = (*(v5 + 88))(v10, v2);
  if (v21 != enum case for SiriKitConfirmationState.unset(_:))
  {
    if (v21 != enum case for SiriKitConfirmationState.cancelled(_:))
    {
      if (v21 == enum case for SiriKitConfirmationState.confirmed(_:))
      {
        v26 = &enum case for ConfirmationResponse.confirmed(_:);
        goto LABEL_7;
      }

      if (v21 != enum case for SiriKitConfirmationState.rejected(_:))
      {
        type metadata accessor for ConfirmationResponse();
        v31 = OUTLINED_FUNCTION_4_29();
        __swift_storeEnumTagSinglePayload(v31, v32, v33, v34);
        return (*(v5 + 8))(v10, v2);
      }
    }

    v26 = &enum case for ConfirmationResponse.rejected(_:);
LABEL_7:
    v27 = *v26;
    v28 = type metadata accessor for ConfirmationResponse();
    OUTLINED_FUNCTION_7(v28);
    (*(v29 + 104))(a1, v27, v28);
    v22 = a1;
    v23 = 0;
    v24 = 1;
    v25 = v28;
    return __swift_storeEnumTagSinglePayload(v22, v23, v24, v25);
  }

  type metadata accessor for ConfirmationResponse();
  v22 = OUTLINED_FUNCTION_4_29();
  return __swift_storeEnumTagSinglePayload(v22, v23, v24, v25);
}

uint64_t RunCustomIntentReadingDelegate.Templating.init(intro:itemDescription:offerMore:)@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X8>)
{
  outlined init with take of AceServiceInvokerAsync(a1, a4);
  outlined init with take of AceServiceInvokerAsync(a2, a4 + 40);

  return outlined init with take of AceServiceInvokerAsync(a3, a4 + 80);
}

uint64_t RunCustomIntentReadingDelegate.deinit()
{
  v1 = *(v0 + 24);

  outlined destroy of RunCustomIntentReadingDelegate.Templating(v0 + 32);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 152));
  return v0;
}

uint64_t RunCustomIntentReadingDelegate.__deallocating_deinit()
{
  RunCustomIntentReadingDelegate.deinit();

  return swift_deallocClassInstance();
}

uint64_t lazy protocol witness table accessor for type OutputAction and conformance OutputAction(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

unint64_t lazy protocol witness table accessor for type PromptForConfirmationFlow<ContinueReadingConfirmationFlowStrategy> and conformance PromptForConfirmationFlow<A>()
{
  result = lazy protocol witness table cache variable for type PromptForConfirmationFlow<ContinueReadingConfirmationFlowStrategy> and conformance PromptForConfirmationFlow<A>;
  if (!lazy protocol witness table cache variable for type PromptForConfirmationFlow<ContinueReadingConfirmationFlowStrategy> and conformance PromptForConfirmationFlow<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s11SiriKitFlow021PromptForConfirmationC0CyAA015ContinueReadingfC8StrategyCGMd, &_s11SiriKitFlow021PromptForConfirmationC0CyAA015ContinueReadingfC8StrategyCGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptForConfirmationFlow<ContinueReadingConfirmationFlowStrategy> and conformance PromptForConfirmationFlow<A>);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RunCustomIntentReadingDelegate.Templating(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 120))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
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

uint64_t storeEnumTagSinglePayload for RunCustomIntentReadingDelegate.Templating(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 120) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_6_21()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_7_17()
{

  return swift_allocObject();
}

uint64_t ShortcutsLinkPromptForContinueInAppFlowStrategy.__allocating_init(appBundleId:deviceState:outputPublisher:)(uint64_t a1, uint64_t a2, __int128 *a3, __int128 *a4)
{
  v8 = swift_allocObject();
  ShortcutsLinkPromptForContinueInAppFlowStrategy.init(appBundleId:deviceState:outputPublisher:)(a1, a2, a3, a4);
  return v8;
}

uint64_t ShortcutsLinkPromptForContinueInAppFlowStrategy.init(appBundleId:deviceState:outputPublisher:)(uint64_t a1, uint64_t a2, __int128 *a3, __int128 *a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  outlined init with take of AceServiceInvokerAsync(a3, v4 + 32);
  outlined init with take of AceServiceInvokerAsync(a4, v4 + 72);
  return v4;
}

uint64_t ShortcutsLinkPromptForContinueInAppFlowStrategy.actionForInput(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  v4 = type metadata accessor for Parse();
  v5 = OUTLINED_FUNCTION_7_1(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v5);
  v43 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Input();
  v12 = OUTLINED_FUNCTION_7_1(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  __chkstk_darwin(v12);
  v18 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v20 = OUTLINED_FUNCTION_14(v19);
  v22 = *(v21 + 64);
  __chkstk_darwin(v20);
  v24 = &v42 - v23;
  v25 = type metadata accessor for TaskPriority();
  __swift_storeEnumTagSinglePayload(v24, 1, 1, v25);
  OUTLINED_FUNCTION_27_6();
  v26 = swift_allocObject();
  v26[2] = 0;
  v26[3] = 0;
  v26[4] = v2;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5();

  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v27 = type metadata accessor for Logger();
  __swift_project_value_buffer(v27, static Logger.voiceCommands);
  (*(v14 + 16))(v18, a1, v11);
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v42 = v4;
    v32 = v31;
    v45 = v31;
    *v30 = 136315138;
    v33 = Input.description.getter();
    v35 = v34;
    (*(v14 + 8))(v18, v11);
    v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v35, &v45);

    *(v30 + 4) = v36;
    _os_log_impl(&dword_0, v28, v29, "#ShortcutsLinkPromptForContinueInAppFlowStrategy on input: %s", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v32);
    v4 = v42;
    OUTLINED_FUNCTION_15_0();
    OUTLINED_FUNCTION_15_0();
  }

  else
  {

    (*(v14 + 8))(v18, v11);
  }

  v37 = v43;
  Input.parse.getter();
  v38 = static VoiceCommandConfirmationUtils.getVoiceCommandConfirmation(parse:)(v37);
  (*(v7 + 8))(v37, v4);
  switch(v38)
  {
    case 2:
      goto LABEL_9;
    case 3:
      return static ActionForInput.ignore()();
    default:
      v39 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v39)
      {
        return static ActionForInput.cancel()();
      }

      if (v38)
      {
LABEL_9:

        return static ActionForInput.cancel()();
      }

      v41 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v41)
      {
        return static ActionForInput.cancel()();
      }

      return static ActionForInput.handle()();
  }
}

uint64_t closure #1 in ShortcutsLinkPromptForContinueInAppFlowStrategy.actionForInput(_:)()
{
  OUTLINED_FUNCTION_15_2();
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

  outlined init with copy of DeviceState(v9 + 72, (v0 + 2));
  v10 = v0[5];
  v11 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v10);
  static OutputUtils.makeTemporaryOutput()(v0 + 7);
  v12 = async function pointer to dispatch thunk of OutputPublisherAsync.publish(output:)[1];
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  v0[14] = v13;
  *v13 = v14;
  v13[1] = closure #1 in ShortcutsLinkPromptForContinueInAppFlowStrategy.actionForInput(_:);

  return dispatch thunk of OutputPublisherAsync.publish(output:)(v0 + 7, v10, v11);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v3 = v2;
  OUTLINED_FUNCTION_4_1();
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
    _os_log_impl(&dword_0, v3, v4, "#ShortcutsLinkPromptForContinueInAppFlowStrategy failed to submit empty output to clear screen", v5, 2u);
    OUTLINED_FUNCTION_19_0();
  }

  OUTLINED_FUNCTION_6_0();

  return v6();
}

uint64_t ShortcutsLinkPromptForContinueInAppFlowStrategy.parseConfirmationResponse(input:)()
{
  OUTLINED_FUNCTION_8_0();
  v0[2] = v1;
  v0[3] = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow20ConfirmationResponseOSgMd, &_s11SiriKitFlow20ConfirmationResponseOSgMR);
  OUTLINED_FUNCTION_14(v3);
  v5 = *(v4 + 64);
  v0[4] = OUTLINED_FUNCTION_28();
  v6 = type metadata accessor for Parse();
  v0[5] = v6;
  OUTLINED_FUNCTION_5_0(v6);
  v0[6] = v7;
  v9 = *(v8 + 64);
  v0[7] = OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v10, v11, v12);
}

{
  v37 = v0;
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  v4 = v0[3];
  Input.parse.getter();
  v5 = static VoiceCommandConfirmationUtils.getVoiceCommandConfirmation(parse:)(v1);
  v6 = *(v2 + 8);
  v7 = OUTLINED_FUNCTION_20_1();
  v8(v7);
  if (v5 == 3)
  {
    if (one-time initialization token for voiceCommands != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v9 = type metadata accessor for Logger();
    __swift_project_value_buffer(v9, static Logger.voiceCommands);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    if (!OUTLINED_FUNCTION_30_1(v11))
    {
      goto LABEL_26;
    }

    v12 = "#ShortcutsLinkPromptForContinueInAppFlowStrategy failed to receive confirmation";
    goto LABEL_25;
  }

  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v13 = type metadata accessor for Logger();
  __swift_project_value_buffer(v13, static Logger.voiceCommands);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v36 = v17;
    *v16 = 136315138;
    if (v5)
    {
      if (v5 == 1)
      {
        v18 = 28526;
      }

      else
      {
        v18 = 0x6C65636E6163;
      }

      if (v5 == 1)
      {
        v19 = 0xE200000000000000;
      }

      else
      {
        v19 = 0xE600000000000000;
      }
    }

    else
    {
      v19 = 0xE300000000000000;
      v18 = 7562617;
    }

    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v19, &v36);

    *(v16 + 4) = v20;
    _os_log_impl(&dword_0, v14, v15, "#ShortcutsLinkPromptForContinueInAppFlowStrategy received confirmation: %s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v17);
    OUTLINED_FUNCTION_15_0();
    OUTLINED_FUNCTION_19_0();
  }

  if (!v5)
  {
    v22 = v0[7];
    v23 = v0[4];
    v24 = v0[2];
    v25 = enum case for ConfirmationResponse.confirmed(_:);
    v26 = type metadata accessor for ConfirmationResponse();
    (*(*(v26 - 8) + 104))(v23, v25, v26);
    __swift_storeEnumTagSinglePayload(v23, 0, 1, v26);
    SimpleConfirmationResponseProvider.init(_:)();

    OUTLINED_FUNCTION_6_0();
    goto LABEL_27;
  }

  if (v5 == 1)
  {
    v10 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_30_1(v21))
    {
      v12 = "#ShortcutsLinkPromptForContinueInAppFlowStrategy shouldn't receive no in parse";
LABEL_25:
      v29 = OUTLINED_FUNCTION_52();
      *v29 = 0;
      OUTLINED_FUNCTION_18_10();
      _os_log_impl(v30, v31, v32, v12, v29, 2u);
      OUTLINED_FUNCTION_19_0();
    }
  }

  else
  {
    v10 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_30_1(v28))
    {
      v12 = "#ShortcutsLinkPromptForContinueInAppFlowStrategy shouldn't receive cancel in parse";
      goto LABEL_25;
    }
  }

LABEL_26:
  v33 = v0[7];
  v34 = v0[4];

  lazy protocol witness table accessor for type ShortcutsLinkConfirmationError and conformance ShortcutsLinkConfirmationError();
  swift_allocError();
  swift_willThrow();

  OUTLINED_FUNCTION_6_0();
LABEL_27:

  return v27();
}