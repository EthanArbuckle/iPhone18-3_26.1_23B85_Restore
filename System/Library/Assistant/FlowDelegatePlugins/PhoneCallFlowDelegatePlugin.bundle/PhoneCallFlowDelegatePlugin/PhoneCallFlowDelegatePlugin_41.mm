uint64_t StartCallIntentConfirmationWithRestrictedContactsParameters.init()@<X0>(void *a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_84_7(a1);
  v4 = type metadata accessor for StartCallIntentConfirmationWithRestrictedContactsParameters(v3);
  OUTLINED_FUNCTION_112_4(v4);
  OUTLINED_FUNCTION_10_73();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  *(v1 + v2[6]) = 0;
  v9 = OUTLINED_FUNCTION_2_118(v2[7]);
  result = __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  *(v1 + v2[8]) = 0;
  return result;
}

uint64_t StartCallIntentConfirmationWithRestrictedContactsParameters.init(allowedContacts:confirmAction:intent:rejectAction:restrictedContacts:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v8 = OUTLINED_FUNCTION_89_5(a1, a2);
  v9 = type metadata accessor for StartCallIntentConfirmationWithRestrictedContactsParameters(v8);
  OUTLINED_FUNCTION_117_2(v9);
  outlined init with take of SpeakableString?(v5, v6 + v10);
  *(v6 + v7[6]) = v4;
  result = outlined init with take of SpeakableString?(v3, v6 + v7[7]);
  *(v6 + v7[8]) = v2;
  return result;
}

uint64_t StartCallErrorWithCodeCallingServiceNotAvailableParameters.device.getter(uint64_t (*a1)(void))
{
  v2 = *(v1 + *(a1(0) + 20));
}

uint64_t StartCallIntentHandledResponseParameters.device.modify()
{
  v0 = OUTLINED_FUNCTION_2_4();
  v1 = *(type metadata accessor for StartCallIntentHandledResponseParameters(v0) + 20);
  return OUTLINED_FUNCTION_9_11();
}

uint64_t StartCallIntentHandledResponseParameters.hintIdentifier.modify()
{
  v0 = OUTLINED_FUNCTION_2_4();
  v1 = *(type metadata accessor for StartCallIntentHandledResponseParameters(v0) + 24);
  return OUTLINED_FUNCTION_9_11();
}

uint64_t StartCallConfirmContactsParameters.contactToConfirm.getter(uint64_t (*a1)(void))
{
  v2 = *(v1 + *(a1(0) + 28));
}

uint64_t StartCallIntentHandledResponseParameters.intent.modify()
{
  v0 = OUTLINED_FUNCTION_2_4();
  v1 = *(type metadata accessor for StartCallIntentHandledResponseParameters(v0) + 28);
  return OUTLINED_FUNCTION_9_11();
}

uint64_t StartCallIntentHandledResponseParameters.redactedContacts.getter()
{
  v1 = *(v0 + *(type metadata accessor for StartCallIntentHandledResponseParameters(0) + 40));
}

uint64_t StartCallIntentHandledResponseParameters.redactedContacts.setter()
{
  v2 = OUTLINED_FUNCTION_2_4();
  v3 = *(type metadata accessor for StartCallIntentHandledResponseParameters(v2) + 40);
  v4 = *(v1 + v3);

  *(v1 + v3) = v0;
  return result;
}

uint64_t StartCallIntentHandledResponseParameters.redactedContacts.modify()
{
  v0 = OUTLINED_FUNCTION_2_4();
  v1 = *(type metadata accessor for StartCallIntentHandledResponseParameters(v0) + 40);
  return OUTLINED_FUNCTION_9_11();
}

uint64_t StartCallIntentHandledResponseParameters.asKeyValuePairs()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v2 = OUTLINED_FUNCTION_21(v1);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v32 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v10 = swift_allocObject();
  OUTLINED_FUNCTION_0_4(v10, xmmword_43CD90);
  outlined init with copy of SpeakableString?(v0, v9, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v11 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_21_3(v9);
  if (v12)
  {
    outlined destroy of SpeakableString?(v9, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v10 + 48) = 0u;
    *(v10 + 64) = 0u;
  }

  else
  {
    *(v10 + 72) = v11;
    __swift_allocate_boxed_opaque_existential_1((v10 + 48));
    OUTLINED_FUNCTION_19_12();
    (*(v13 + 32))();
  }

  OUTLINED_FUNCTION_9_79();
  *(v10 + 80) = v14;
  *(v10 + 88) = v15;
  v16 = type metadata accessor for StartCallIntentHandledResponseParameters(0);
  v17 = *(v0 + v16[5]);
  if (v17)
  {
    v18 = type metadata accessor for SirikitDeviceState();
    v19 = v17;
  }

  else
  {
    v18 = OUTLINED_FUNCTION_18_2();
    *(v10 + 104) = 0;
    *(v10 + 112) = 0;
  }

  *(v10 + 96) = v19;
  *(v10 + 120) = v18;
  strcpy((v10 + 128), "hintIdentifier");
  *(v10 + 143) = -18;
  outlined init with copy of SpeakableString?(v0 + v16[6], v6, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21_3(v6);
  if (v12)
  {

    outlined destroy of SpeakableString?(v6, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v10 + 144) = 0u;
    *(v10 + 160) = 0u;
  }

  else
  {
    *(v10 + 168) = v11;
    __swift_allocate_boxed_opaque_existential_1((v10 + 144));
    OUTLINED_FUNCTION_19_12();
    (*(v20 + 32))();
  }

  OUTLINED_FUNCTION_14_8();
  *(v10 + 176) = v21;
  *(v10 + 184) = 0xE600000000000000;
  v22 = *(v0 + v16[7]);
  if (v22)
  {
    type metadata accessor for PhoneStartCallIntent(0);
    v23 = v22;
  }

  else
  {
    OUTLINED_FUNCTION_18_2();
    *(v10 + 200) = 0;
    *(v10 + 208) = 0;
  }

  *(v10 + 192) = v23;
  OUTLINED_FUNCTION_55_22();
  *(v10 + 216) = v24;
  *(v10 + 224) = v25;
  OUTLINED_FUNCTION_56_12();
  *(v10 + 232) = v26;
  *(v10 + 240) = *(v0 + v16[8]);
  *(v10 + 264) = &type metadata for Bool;
  strcpy((v10 + 272), "isWalkieTalkie");
  *(v10 + 287) = -18;
  *(v10 + 288) = *(v0 + v16[9]);
  OUTLINED_FUNCTION_27_2();
  *(v10 + 312) = &type metadata for Bool;
  *(v10 + 320) = 0xD000000000000010;
  *(v10 + 328) = v27;
  v28 = *(v0 + v16[10]);
  if (v28)
  {
    type metadata accessor for PhonePersonList();
  }

  else
  {
    *(v10 + 344) = 0;
    *(v10 + 352) = 0;
  }

  *(v10 + 336) = v28;
  OUTLINED_FUNCTION_27_2();
  *(v10 + 360) = v29;
  *(v10 + 368) = 0xD00000000000001ELL;
  *(v10 + 376) = v30;
  LOBYTE(v30) = *(v0 + v16[11]);
  *(v10 + 408) = &type metadata for Bool;
  *(v10 + 384) = v30;

  return v10;
}

void StartCallIntentHandledResponseParameters.init(appName:device:hintIdentifier:intent:isFirstPartyApp:isWalkieTalkie:redactedContacts:shouldPrintDialogOnDisplayMode:)()
{
  OUTLINED_FUNCTION_66();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  OUTLINED_FUNCTION_124_1();
  outlined init with take of SpeakableString?(v12, v13);
  v14 = type metadata accessor for StartCallIntentHandledResponseParameters(0);
  *(v3 + v14[5]) = v2;
  outlined init with take of SpeakableString?(v1, v3 + v14[6]);
  *(v3 + v14[7]) = v0;
  *(v3 + v14[8]) = v11;
  *(v3 + v14[9]) = v9;
  *(v3 + v14[10]) = v7;
  *(v3 + v14[11]) = v5;
  OUTLINED_FUNCTION_65();
}

uint64_t StartCallErrorWithCodeCallInProgressParameters.asKeyValuePairs()(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v6 = OUTLINED_FUNCTION_35_1();
  *(v6 + 16) = xmmword_424FD0;
  *(v6 + 32) = a2;
  *(v6 + 40) = 0xE600000000000000;
  if (a1)
  {
    v7 = a3(0);
    v8 = a1;
  }

  else
  {
    v7 = OUTLINED_FUNCTION_18_2();
    *(v6 + 56) = 0;
    *(v6 + 64) = 0;
  }

  *(v6 + 48) = v8;
  *(v6 + 72) = v7;

  return v6;
}

uint64_t StartCallPromptForContactsParameters.rePromptCount.getter()
{
  v1 = (v0 + *(type metadata accessor for StartCallPromptForContactsParameters(0) + 28));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t StartCallPromptForContactsParameters.rePromptCount.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for StartCallPromptForContactsParameters(0);
  v6 = v2 + *(result + 28);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t StartCallPromptForContactsParameters.rePromptCount.modify()
{
  v0 = OUTLINED_FUNCTION_2_4();
  v1 = *(type metadata accessor for StartCallPromptForContactsParameters(v0) + 28);
  return OUTLINED_FUNCTION_9_11();
}

uint64_t StartCallPromptForContactsParameters.asKeyValuePairs()()
{
  v1 = OUTLINED_FUNCTION_134_1();
  OUTLINED_FUNCTION_21(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v4);
  v6 = &v24 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v7 = swift_allocObject();
  OUTLINED_FUNCTION_0_4(v7, xmmword_42BF20);
  OUTLINED_FUNCTION_80_8();
  outlined init with copy of SpeakableString?(v8, v9, v10, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v11 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_6_1(v6);
  if (v12)
  {
    outlined destroy of SpeakableString?(v6, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v7 + 48) = 0u;
    *(v7 + 64) = 0u;
  }

  else
  {
    *(v7 + 72) = v11;
    __swift_allocate_boxed_opaque_existential_1((v7 + 48));
    OUTLINED_FUNCTION_2_9();
    v14 = *(v13 + 32);
    OUTLINED_FUNCTION_80_8();
    v15();
  }

  OUTLINED_FUNCTION_93();
  *(v7 + 80) = v16;
  *(v7 + 88) = v17;
  v18 = type metadata accessor for StartCallPromptForContactsParameters(0);
  *(v7 + 96) = *(v0 + v18[5]);
  *(v7 + 120) = &type metadata for Bool;
  *(v7 + 128) = 0xD000000000000015;
  *(v7 + 136) = 0x8000000000459250;
  *(v7 + 144) = *(v0 + v18[6]);
  *(v7 + 168) = &type metadata for Bool;
  strcpy((v7 + 176), "rePromptCount");
  *(v7 + 190) = -4864;
  v19 = (v0 + v18[7]);
  if (v19[1])
  {
    v20 = 0;
    *(v7 + 200) = 0;
    *(v7 + 208) = 0;
    v21 = 0;
  }

  else
  {
    v21 = *v19;
    v20 = &type metadata for Double;
  }

  *(v7 + 192) = v21;
  *(v7 + 216) = v20;
  strcpy((v7 + 224), "startingOver");
  *(v7 + 237) = 0;
  *(v7 + 238) = -5120;
  v22 = *(v0 + v18[8]);
  *(v7 + 264) = &type metadata for Bool;
  *(v7 + 240) = v22;
  return v7;
}

int *StartCallPromptForContactsParameters.init(appName:isFaceTime:isUnsupportedFollowUp:rePromptCount:startingOver:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6)
{
  OUTLINED_FUNCTION_126_2();
  v11 = v10;
  v13 = v12;
  outlined init with take of SpeakableString?(v14, v12);
  result = type metadata accessor for StartCallPromptForContactsParameters(0);
  *(v13 + result[5]) = v11;
  *(v13 + result[6]) = v7;
  v16 = v13 + result[7];
  *v16 = v6;
  *(v16 + 8) = a5 & 1;
  *(v13 + result[8]) = a6;
  return result;
}

uint64_t StartCallSimpleDisambiguateContactsParameters.requestedRelationship.modify()
{
  v0 = OUTLINED_FUNCTION_2_4();
  v1 = *(type metadata accessor for StartCallSimpleDisambiguateContactsParameters(v0) + 20);
  return OUTLINED_FUNCTION_9_11();
}

uint64_t StartCallSimpleDisambiguateContactsParameters.asKeyValuePairs()()
{
  v2 = OUTLINED_FUNCTION_134_1();
  OUTLINED_FUNCTION_21(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v5);
  OUTLINED_FUNCTION_82_8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v6 = OUTLINED_FUNCTION_45_0();
  *(v6 + 16) = xmmword_424FF0;
  *(v6 + 32) = 0x736D657469;
  *(v6 + 40) = 0xE500000000000000;
  v7 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay27PhoneCallFlowDelegatePlugin0A19PersonAndVisualDataCGMd, &_sSay27PhoneCallFlowDelegatePlugin0A19PersonAndVisualDataCGMR);
  *(v6 + 48) = v7;
  OUTLINED_FUNCTION_27_2();
  v10 = OUTLINED_FUNCTION_97_5(v8, v9);
  v11 = type metadata accessor for StartCallSimpleDisambiguateContactsParameters(v10);
  v12 = OUTLINED_FUNCTION_54_0(*(v11 + 20));
  outlined init with copy of SpeakableString?(v12, v13, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v14 = type metadata accessor for SpeakableString();
  v15 = OUTLINED_FUNCTION_45_20();
  if (__swift_getEnumTagSinglePayload(v15, v16, v14) == 1)
  {

    outlined destroy of SpeakableString?(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_103_3();
  }

  else
  {
    *(v6 + 120) = v14;
    __swift_allocate_boxed_opaque_existential_1((v6 + 96));
    OUTLINED_FUNCTION_40(v14);
    (*(v17 + 32))();
  }

  return v6;
}

uint64_t StartCallSimpleDisambiguateContactsHandlesParameters.asKeyValuePairs()(__int16 a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v6 = OUTLINED_FUNCTION_161_0();
  *(v6 + 16) = xmmword_42BF10;
  *(v6 + 32) = 0xD000000000000021;
  *(v6 + 40) = 0x8000000000462280;
  *(v6 + 48) = a1 & 1;
  *(v6 + 72) = &type metadata for Bool;
  *(v6 + 80) = 0xD000000000000012;
  *(v6 + 88) = 0x80000000004622B0;
  *(v6 + 96) = HIBYTE(a1) & 1;
  *(v6 + 120) = &type metadata for Bool;
  *(v6 + 128) = 0x736D657469;
  *(v6 + 136) = 0xE500000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay27PhoneCallFlowDelegatePlugin0A19PersonAndVisualDataCGMd, &_sSay27PhoneCallFlowDelegatePlugin0A19PersonAndVisualDataCGMR);
  *(v6 + 144) = a2;
  OUTLINED_FUNCTION_27_2();
  *(v6 + 168) = v7;
  *(v6 + 176) = 0xD000000000000010;
  *(v6 + 184) = v8;
  if (a3)
  {
    v9 = type metadata accessor for DialogPerson();
    v10 = a3;
  }

  else
  {
    v9 = OUTLINED_FUNCTION_18_2();
    *(v6 + 200) = 0;
    *(v6 + 208) = 0;
  }

  *(v6 + 192) = v10;
  *(v6 + 216) = v9;

  return v6;
}

uint64_t StartCallSimpleDisambiguateContactsHandlesParameters.init(isPhoneNumberHandleDisambiguation:isRequestForHandle:items:requestedContact:)(char a1, char a2)
{
  if (a2)
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  return v2 & 0xFFFFFFFE | a1 & 1;
}

uint64_t StartCallUnsupportedCallCapabilityCameraNotAccessibleParameters.init()()
{
  type metadata accessor for SpeakableString();
  v0 = OUTLINED_FUNCTION_15_47();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

uint64_t StartCallUnsupportedCallCapabilityCameraNotAccessibleParameters.asKeyValuePairs()()
{
  v1 = OUTLINED_FUNCTION_134_1();
  OUTLINED_FUNCTION_21(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v4);
  OUTLINED_FUNCTION_82_8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v5 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_0_4(v5, xmmword_424FD0);
  OUTLINED_FUNCTION_105_5();
  outlined init with copy of SpeakableString?(v6, v7, v8, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v9 = type metadata accessor for SpeakableString();
  v10 = OUTLINED_FUNCTION_45_20();
  if (__swift_getEnumTagSinglePayload(v10, v11, v9) == 1)
  {
    outlined destroy of SpeakableString?(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v5 + 48) = 0u;
    *(v5 + 64) = 0u;
  }

  else
  {
    *(v5 + 72) = v9;
    __swift_allocate_boxed_opaque_existential_1((v5 + 48));
    OUTLINED_FUNCTION_40(v9);
    (*(v12 + 32))();
  }

  return v5;
}

uint64_t StartCallUnsupportedContactsInvalidHandleParameters.launchAppPunchOutAction.modify()
{
  v0 = OUTLINED_FUNCTION_2_4();
  v1 = *(type metadata accessor for StartCallUnsupportedContactsInvalidHandleParameters(v0) + 20);
  return OUTLINED_FUNCTION_9_11();
}

__n128 *StartCallUnsupportedContactsInvalidHandleParameters.asKeyValuePairs()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v5);
  OUTLINED_FUNCTION_82_8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v6 = OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_28_29(v6, xmmword_424FF0);
  v7 = *v1;
  if (*v1)
  {
    type metadata accessor for PhonePersonList();
    v8 = v7;
  }

  else
  {
    OUTLINED_FUNCTION_37_27();
  }

  v6[3].n128_u64[0] = v8;
  OUTLINED_FUNCTION_27_2();
  v11 = OUTLINED_FUNCTION_97_5(v9, v10);
  v12 = type metadata accessor for StartCallUnsupportedContactsInvalidHandleParameters(v11);
  v13 = OUTLINED_FUNCTION_54_0(*(v12 + 20));
  outlined init with copy of SpeakableString?(v13, v14, v15, v16);
  v17 = type metadata accessor for SpeakableString();
  v18 = OUTLINED_FUNCTION_45_20();
  if (__swift_getEnumTagSinglePayload(v18, v19, v17) == 1)
  {

    outlined destroy of SpeakableString?(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_103_3();
  }

  else
  {
    v6[7].n128_u64[1] = v17;
    __swift_allocate_boxed_opaque_existential_1(&v6[6]);
    OUTLINED_FUNCTION_40(v17);
    (*(v20 + 32))();
  }

  return v6;
}

uint64_t StartCallUnsupportedContactsInvalidHandleParameters.init()@<X0>(void *a1@<X8>)
{
  v1 = OUTLINED_FUNCTION_84_7(a1);
  v2 = *(type metadata accessor for StartCallUnsupportedContactsInvalidHandleParameters(v1) + 20);
  type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_7_6();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

uint64_t StartCallSimpleDisambiguateContactsParameters.init(items:requestedRelationship:)@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X2>, void *a3@<X8>)
{
  *a3 = a1;
  v3 = *(a2(0) + 20);
  v4 = OUTLINED_FUNCTION_91_0();

  return outlined init with take of SpeakableString?(v4, v5);
}

uint64_t StartCallUnsupportedContactsNoContactFoundParameters.contact.modify()
{
  v0 = OUTLINED_FUNCTION_2_4();
  v1 = *(type metadata accessor for StartCallUnsupportedContactsNoContactFoundParameters(v0) + 20);
  return OUTLINED_FUNCTION_9_11();
}

uint64_t StartCallUnsupportedContactsNoContactFoundParameters.asKeyValuePairs()()
{
  v1 = OUTLINED_FUNCTION_134_1();
  OUTLINED_FUNCTION_21(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v4);
  v6 = &v22 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v7 = swift_allocObject();
  OUTLINED_FUNCTION_0_4(v7, xmmword_426980);
  OUTLINED_FUNCTION_80_8();
  outlined init with copy of SpeakableString?(v8, v9, v10, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v11 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_6_1(v6);
  if (v12)
  {
    outlined destroy of SpeakableString?(v6, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v7 + 48) = 0u;
    *(v7 + 64) = 0u;
  }

  else
  {
    *(v7 + 72) = v11;
    __swift_allocate_boxed_opaque_existential_1((v7 + 48));
    OUTLINED_FUNCTION_2_9();
    v14 = *(v13 + 32);
    OUTLINED_FUNCTION_80_8();
    v15();
  }

  *(v7 + 80) = 0x746361746E6F63;
  *(v7 + 88) = 0xE700000000000000;
  v16 = type metadata accessor for StartCallUnsupportedContactsNoContactFoundParameters(0);
  v17 = *(v0 + *(v16 + 20));
  if (v17)
  {
    type metadata accessor for DialogPerson();
  }

  else
  {
    *(v7 + 104) = 0;
    *(v7 + 112) = 0;
  }

  *(v7 + 96) = v17;
  OUTLINED_FUNCTION_55_22();
  *(v7 + 120) = v18;
  *(v7 + 128) = v19;
  OUTLINED_FUNCTION_56_12();
  *(v7 + 136) = v20;
  LOBYTE(v20) = *(v0 + *(v16 + 24));
  *(v7 + 168) = &type metadata for Bool;
  *(v7 + 144) = v20;

  return v7;
}

uint64_t StartCallUnsupportedContactsNoContactFoundParameters.init(appName:contact:isFirstPartyApp:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  outlined init with take of SpeakableString?(a1, a4);
  result = type metadata accessor for StartCallUnsupportedContactsNoContactFoundParameters(0);
  *(a4 + *(result + 20)) = a2;
  *(a4 + *(result + 24)) = a3;
  return result;
}

uint64_t StartCallUnsupportedContactsNoHandleForLabelParameters.preferredCallProvider.modify()
{
  v0 = OUTLINED_FUNCTION_2_4();
  v1 = *(type metadata accessor for StartCallUnsupportedContactsNoHandleForLabelParameters(v0) + 20);
  return OUTLINED_FUNCTION_9_11();
}

uint64_t StartCallIntentConfirmationWithRestrictedContactsParameters.intent.getter(uint64_t (*a1)(void))
{
  v2 = *(v1 + *(a1(0) + 24));
}

uint64_t StartCallUnsupportedContactsNoHandleForLabelParameters.unsupportedHandle.modify()
{
  v0 = OUTLINED_FUNCTION_2_4();
  v1 = *(type metadata accessor for StartCallUnsupportedContactsNoHandleForLabelParameters(v0) + 24);
  return OUTLINED_FUNCTION_9_11();
}

uint64_t StartCallUnsupportedContactsNoHandleForLabelParameters.unsupportedPerson.modify()
{
  v0 = OUTLINED_FUNCTION_2_4();
  v1 = *(type metadata accessor for StartCallUnsupportedContactsNoHandleForLabelParameters(v0) + 28);
  return OUTLINED_FUNCTION_9_11();
}

uint64_t StartCallUnsupportedContactsNoHandleForLabelParameters.unsupportedPersonHandleLabel.modify()
{
  v0 = OUTLINED_FUNCTION_2_4();
  v1 = *(type metadata accessor for StartCallUnsupportedContactsNoHandleForLabelParameters(v0) + 32);
  return OUTLINED_FUNCTION_9_11();
}

uint64_t StartCallUnsupportedContactsNoHandleForLabelParameters.asKeyValuePairs()()
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v4 = OUTLINED_FUNCTION_21(v3);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  OUTLINED_FUNCTION_28_5();
  __chkstk_darwin(v7);
  OUTLINED_FUNCTION_42_13();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_42BF20;
  OUTLINED_FUNCTION_14_8();
  *(v9 + 32) = v10;
  *(v9 + 40) = 0xE600000000000000;
  v11 = *v1;
  if (*v1)
  {
    type metadata accessor for PhoneStartCallIntent(0);
    v12 = v11;
  }

  else
  {
    OUTLINED_FUNCTION_37_27();
  }

  *(v8 + 48) = v12;
  OUTLINED_FUNCTION_27_2();
  v15 = OUTLINED_FUNCTION_97_5(v13, v14);
  v16 = type metadata accessor for StartCallUnsupportedContactsNoHandleForLabelParameters(v15);
  outlined init with copy of SpeakableString?(v1 + v16[5], v2, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v17 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_6_1(v2);
  if (v18)
  {

    outlined destroy of SpeakableString?(v2, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_103_3();
  }

  else
  {
    *(v8 + 120) = v17;
    __swift_allocate_boxed_opaque_existential_1((v8 + 96));
    OUTLINED_FUNCTION_2_9();
    (*(v19 + 32))();
  }

  OUTLINED_FUNCTION_27_2();
  *(v8 + 128) = 0xD000000000000011;
  *(v8 + 136) = v20;
  v21 = *(v1 + v16[6]);
  if (v21)
  {
    type metadata accessor for DialogPersonHandle();
    v22 = v21;
  }

  else
  {
    OUTLINED_FUNCTION_18_2();
    *(v8 + 152) = 0;
    *(v8 + 160) = 0;
  }

  *(v8 + 144) = v22;
  OUTLINED_FUNCTION_27_2();
  *(v8 + 168) = v23;
  *(v8 + 176) = 0xD000000000000011;
  *(v8 + 184) = v24;
  v25 = *(v1 + v16[7]);
  if (v25)
  {
    type metadata accessor for DialogPerson();
    v26 = v25;
  }

  else
  {
    OUTLINED_FUNCTION_18_2();
    *(v8 + 200) = 0;
    *(v8 + 208) = 0;
  }

  *(v8 + 192) = v26;
  OUTLINED_FUNCTION_27_2();
  *(v8 + 216) = v27;
  *(v8 + 224) = 0xD00000000000001CLL;
  *(v8 + 232) = v28;
  v29 = OUTLINED_FUNCTION_54_0(v16[8]);
  outlined init with copy of SpeakableString?(v29, v30, v31, v32);
  OUTLINED_FUNCTION_6_1(v0);
  if (v18)
  {

    outlined destroy of SpeakableString?(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v8 + 240) = 0u;
    *(v8 + 256) = 0u;
  }

  else
  {
    *(v8 + 264) = v17;
    __swift_allocate_boxed_opaque_existential_1((v8 + 240));
    OUTLINED_FUNCTION_2_9();
    v34 = *(v33 + 32);
    OUTLINED_FUNCTION_105_5();
    v35();
  }

  return v8;
}

uint64_t StartCallUnsupportedContactsNoHandleForLabelParameters.init()@<X0>(void *a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_84_7(a1);
  v4 = type metadata accessor for StartCallUnsupportedContactsNoHandleForLabelParameters(v3);
  OUTLINED_FUNCTION_112_4(v4);
  OUTLINED_FUNCTION_10_73();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  *(v1 + v2[6]) = 0;
  *(v1 + v2[7]) = 0;
  v9 = OUTLINED_FUNCTION_2_118(v2[8]);

  return __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
}

uint64_t StartCallUnsupportedContactsNoHandleForLabelParameters.init(intent:preferredCallProvider:unsupportedHandle:unsupportedPerson:unsupportedPersonHandleLabel:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v8 = OUTLINED_FUNCTION_89_5(a1, a2);
  v9 = type metadata accessor for StartCallUnsupportedContactsNoHandleForLabelParameters(v8);
  OUTLINED_FUNCTION_117_2(v9);
  outlined init with take of SpeakableString?(v5, v6 + v10);
  *(v6 + v7[6]) = v4;
  *(v6 + v7[7]) = v3;
  v11 = v6 + v7[8];

  return outlined init with take of SpeakableString?(v2, v11);
}

uint64_t StartCallUnsupportedDeviceFaceTimeLinkParameters.launchAppPunchOutAction.modify()
{
  v0 = OUTLINED_FUNCTION_2_4();
  v1 = *(type metadata accessor for StartCallUnsupportedDeviceFaceTimeLinkParameters(v0) + 20);
  return OUTLINED_FUNCTION_9_11();
}

uint64_t StartCallUnsupportedDeviceFaceTimeLinkParameters.launchAppPunchOutLocalizedText.modify()
{
  v0 = OUTLINED_FUNCTION_2_4();
  v1 = *(type metadata accessor for StartCallUnsupportedDeviceFaceTimeLinkParameters(v0) + 24);
  return OUTLINED_FUNCTION_9_11();
}

uint64_t StartCallUnsupportedDeviceFaceTimeLinkParameters.init()@<X0>(void *a1@<X8>)
{
  return StartCallUnsupportedDeviceFaceTimeLinkParameters.init()(a1);
}

{
  v2 = OUTLINED_FUNCTION_84_7(a1);
  v4 = v3(v2);
  OUTLINED_FUNCTION_112_4(v4);
  OUTLINED_FUNCTION_10_73();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  v9 = OUTLINED_FUNCTION_2_118(*(v1 + 24));

  return __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
}

uint64_t StartCallUnsupportedDeviceGroupFaceTimeParameters.launchAppPunchOutAction.modify()
{
  v0 = OUTLINED_FUNCTION_2_4();
  v1 = *(type metadata accessor for StartCallUnsupportedDeviceGroupFaceTimeParameters(v0) + 20);
  return OUTLINED_FUNCTION_9_11();
}

uint64_t StartCallUnsupportedDeviceGroupFaceTimeParameters.launchAppPunchOutLocalizedText.modify()
{
  v0 = OUTLINED_FUNCTION_2_4();
  v1 = *(type metadata accessor for StartCallUnsupportedDeviceGroupFaceTimeParameters(v0) + 24);
  return OUTLINED_FUNCTION_9_11();
}

__n128 *StartCallUnsupportedDeviceFaceTimeLinkParameters.asKeyValuePairs()(uint64_t (*a1)(void))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v5 = OUTLINED_FUNCTION_21(v4);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  OUTLINED_FUNCTION_28_5();
  __chkstk_darwin(v8);
  v10 = &v26 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v11 = swift_allocObject();
  OUTLINED_FUNCTION_0_2(v11, xmmword_426980);
  v12 = *v2;
  if (*v2)
  {
    v13 = type metadata accessor for SirikitDeviceState();
    v14 = v12;
  }

  else
  {
    v13 = OUTLINED_FUNCTION_37_27();
  }

  v11[3].n128_u64[0] = v14;
  v11[4].n128_u64[1] = v13;
  v11[5].n128_u64[0] = 0xD000000000000017;
  v11[5].n128_u64[1] = 0x80000000004621E0;
  v15 = a1(0);
  outlined init with copy of SpeakableString?(v2 + *(v15 + 20), v10, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v16 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_21_3(v10);
  if (v17)
  {

    outlined destroy of SpeakableString?(v10, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_103_3();
  }

  else
  {
    v11[7].n128_u64[1] = v16;
    __swift_allocate_boxed_opaque_existential_1(&v11[6]);
    OUTLINED_FUNCTION_19_12();
    (*(v18 + 32))();
  }

  OUTLINED_FUNCTION_27_2();
  v11[8].n128_u64[0] = 0xD00000000000001ELL;
  v11[8].n128_u64[1] = v19;
  v20 = OUTLINED_FUNCTION_54_0(*(v15 + 24));
  outlined init with copy of SpeakableString?(v20, v21, v22, v23);
  OUTLINED_FUNCTION_21_3(v1);
  if (v17)
  {
    outlined destroy of SpeakableString?(v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_119_5();
  }

  else
  {
    v11[10].n128_u64[1] = v16;
    __swift_allocate_boxed_opaque_existential_1(&v11[9]);
    OUTLINED_FUNCTION_19_12();
    (*(v24 + 32))();
  }

  return v11;
}

uint64_t StartCallUnsupportedDeviceFaceTimeLinkParameters.init(device:launchAppPunchOutAction:launchAppPunchOutLocalizedText:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(void)@<X3>, void *a5@<X8>)
{
  *a5 = a1;
  v8 = a4(0);
  outlined init with take of SpeakableString?(a2, a5 + *(v8 + 20));
  v9 = a5 + *(v8 + 24);

  return outlined init with take of SpeakableString?(a3, v9);
}

uint64_t StartCallErrorWithCodeDownTimeRestrictionEnabledParameters.asKeyValuePairs()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v10 = OUTLINED_FUNCTION_45_0();
  *(v10 + 16) = xmmword_424FF0;
  *(v10 + 32) = a3;
  *(v10 + 40) = a4;
  if (a1)
  {
    a5(0);
    v11 = a1;
  }

  else
  {
    OUTLINED_FUNCTION_37_27();
  }

  *(v10 + 48) = v11;
  OUTLINED_FUNCTION_14_8();
  *(v10 + 72) = v12;
  *(v10 + 80) = v13;
  *(v10 + 88) = 0xE600000000000000;
  if (a2)
  {
    v14 = type metadata accessor for PhoneStartCallIntent(0);
    v15 = a2;
  }

  else
  {
    v14 = OUTLINED_FUNCTION_18_2();
    *(v10 + 104) = 0;
    *(v10 + 112) = 0;
  }

  *(v10 + 96) = v15;
  *(v10 + 120) = v14;

  return v10;
}

uint64_t StartCallUnsupportedPreferredCallProviderAccountSetupRequiredParameters.launchAppPunchOutAction.modify()
{
  v0 = OUTLINED_FUNCTION_2_4();
  v1 = *(type metadata accessor for StartCallUnsupportedPreferredCallProviderAccountSetupRequiredParameters(v0) + 24);
  return OUTLINED_FUNCTION_9_11();
}

uint64_t StartCallUnsupportedPreferredCallProviderAccountSetupRequiredParameters.launchAppPunchOutLocalizedText.modify()
{
  v0 = OUTLINED_FUNCTION_2_4();
  v1 = *(type metadata accessor for StartCallUnsupportedPreferredCallProviderAccountSetupRequiredParameters(v0) + 28);
  return OUTLINED_FUNCTION_9_11();
}

void StartCallUnsupportedPreferredCallProviderAccountSetupRequiredParameters.asKeyValuePairs()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_66();
  a19 = v22;
  a20 = v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v25 = OUTLINED_FUNCTION_21(v24);
  v27 = *(v26 + 64);
  __chkstk_darwin(v25);
  OUTLINED_FUNCTION_28_5();
  __chkstk_darwin(v28);
  v30 = &a9 - v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v31 = OUTLINED_FUNCTION_161_0();
  OUTLINED_FUNCTION_0_2(v31, xmmword_42BF10);
  v32 = *v21;
  if (*v21)
  {
    type metadata accessor for SirikitDeviceState();
    v33 = v32;
  }

  else
  {
    OUTLINED_FUNCTION_37_27();
  }

  *(v31 + 48) = v33;
  OUTLINED_FUNCTION_14_8();
  *(v31 + 72) = v34;
  *(v31 + 80) = v35;
  *(v31 + 88) = 0xE600000000000000;
  v36 = v21[1];
  if (v36)
  {
    v37 = type metadata accessor for PhoneStartCallIntent(0);
    v38 = v36;
  }

  else
  {
    v37 = OUTLINED_FUNCTION_18_2();
    *(v31 + 104) = 0;
    *(v31 + 112) = 0;
  }

  *(v31 + 96) = v38;
  *(v31 + 120) = v37;
  *(v31 + 128) = 0xD000000000000017;
  *(v31 + 136) = 0x80000000004621E0;
  v39 = type metadata accessor for StartCallUnsupportedPreferredCallProviderAccountSetupRequiredParameters(0);
  outlined init with copy of SpeakableString?(v21 + *(v39 + 24), v30, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v40 = type metadata accessor for SpeakableString();
  if (__swift_getEnumTagSinglePayload(v30, 1, v40) == 1)
  {

    outlined destroy of SpeakableString?(v30, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_119_5();
  }

  else
  {
    *(v31 + 168) = v40;
    __swift_allocate_boxed_opaque_existential_1((v31 + 144));
    OUTLINED_FUNCTION_40(v40);
    (*(v41 + 32))();
  }

  OUTLINED_FUNCTION_27_2();
  *(v31 + 176) = 0xD00000000000001ELL;
  *(v31 + 184) = v42;
  v43 = OUTLINED_FUNCTION_54_0(*(v39 + 28));
  outlined init with copy of SpeakableString?(v43, v44, v45, v46);
  v47 = OUTLINED_FUNCTION_45_20();
  if (__swift_getEnumTagSinglePayload(v47, v48, v40) == 1)
  {
    outlined destroy of SpeakableString?(v20, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v31 + 192) = 0u;
    *(v31 + 208) = 0u;
  }

  else
  {
    *(v31 + 216) = v40;
    __swift_allocate_boxed_opaque_existential_1((v31 + 192));
    OUTLINED_FUNCTION_40(v40);
    (*(v49 + 32))();
  }

  OUTLINED_FUNCTION_65();
}

uint64_t StartCallUnsupportedPreferredCallProviderAccountSetupRequiredParameters.init()@<X0>(void *a1@<X8>)
{
  v2 = type metadata accessor for StartCallUnsupportedPreferredCallProviderAccountSetupRequiredParameters(0);
  *a1 = 0;
  a1[1] = 0;
  v3 = *(v2 + 24);
  type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_10_73();
  __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  v8 = OUTLINED_FUNCTION_2_118(*(v2 + 28));

  return __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
}

uint64_t StartCallUnsupportedPreferredCallProviderAccountSetupRequiredParameters.init(device:intent:launchAppPunchOutAction:launchAppPunchOutLocalizedText:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = a1;
  a5[1] = a2;
  v8 = type metadata accessor for StartCallUnsupportedPreferredCallProviderAccountSetupRequiredParameters(0);
  outlined init with take of SpeakableString?(a3, a5 + *(v8 + 24));
  v9 = a5 + *(v8 + 28);

  return outlined init with take of SpeakableString?(a4, v9);
}

uint64_t StartCallCATPatternsExecutor.confirmContacts(isFaceTime:isFoundInAppConfirmation:isTopMatchConfirmation:_:)()
{
  OUTLINED_FUNCTION_15();
  v6 = OUTLINED_FUNCTION_38_28(v1, v2, v3, v4, v5);
  v7 = type metadata accessor for StartCallConfirmContactsParameters(v6);
  OUTLINED_FUNCTION_24_4(v7);
  v9 = *(v8 + 64);
  *(v0 + 48) = OUTLINED_FUNCTION_45();
  v10 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v10, v11, v12);
}

{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_10_4();
  v4 = v3;
  OUTLINED_FUNCTION_6();
  *v5 = v4;
  v7 = *(v6 + 64);
  v8 = *(v6 + 56);
  v9 = *v2;
  OUTLINED_FUNCTION_4_2();
  *v10 = v9;
  *(v4 + 72) = v0;

  if (!v0)
  {
    *(v4 + 80) = v1;
  }

  OUTLINED_FUNCTION_19_5();
  OUTLINED_FUNCTION_65_1();

  return _swift_task_switch(v11, v12, v13);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_73_10();

  v0 = OUTLINED_FUNCTION_9_4();

  return v1(v0);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_73_10();

  OUTLINED_FUNCTION_22_0();

  return v0();
}

uint64_t StartCallCATPatternsExecutor.errorWithCodeAirplaneModeEnabled(isEmergency:isResponseFramework:_:)()
{
  OUTLINED_FUNCTION_15();
  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
  *(v1 + 16) = v3;
  *(v1 + 89) = v4;
  *(v1 + 88) = v5;
  v6 = type metadata accessor for StartCallErrorWithCodeAirplaneModeEnabledParameters(0);
  OUTLINED_FUNCTION_24_4(v6);
  v8 = *(v7 + 64);
  *(v1 + 48) = OUTLINED_FUNCTION_45();
  v9 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v9, v10, v11);
}

{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_10_4();
  v4 = v3;
  OUTLINED_FUNCTION_6();
  *v5 = v4;
  v7 = *(v6 + 64);
  v8 = *(v6 + 56);
  v9 = *v2;
  OUTLINED_FUNCTION_4_2();
  *v10 = v9;
  *(v4 + 72) = v0;

  if (!v0)
  {
    *(v4 + 80) = v1;
  }

  OUTLINED_FUNCTION_19_5();
  OUTLINED_FUNCTION_65_1();

  return _swift_task_switch(v11, v12, v13);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_70_11();

  v0 = OUTLINED_FUNCTION_9_4();

  return v1(v0);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_70_11();

  OUTLINED_FUNCTION_22_0();

  return v0();
}

uint64_t StartCallCATPatternsExecutor.errorWithCodeAirplaneModeEnabled(isEmergency:isResponseFramework:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_48_4();
  OUTLINED_FUNCTION_31();
  v10 = *(v9 + 48);
  v12 = *(v9 + 16);
  v11 = *(v9 + 24);
  v13 = *(v9 + 89);
  v14 = *(v9 + 88);
  v15 = *(*(v9 + 40) + 28);
  type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_7_6();
  __swift_storeEnumTagSinglePayload(v16, v17, v18, v19);
  *v10 = 0;
  *(v10 + 8) = v14;
  *(v10 + 9) = v13;
  v12(v10);
  OUTLINED_FUNCTION_60_0();
  v20 = StartCallErrorWithCodeAirplaneModeEnabledParameters.asKeyValuePairs()();
  OUTLINED_FUNCTION_66_3(v20);
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v34 = v21;
  v22 = swift_task_alloc();
  v23 = OUTLINED_FUNCTION_68(v22);
  *v23 = v24;
  OUTLINED_FUNCTION_10_66(v23);
  OUTLINED_FUNCTION_21_47(42);
  OUTLINED_FUNCTION_65_2();

  return v28(v25, v26, v27, v28, v29, v30, v31, v32, a9, v34);
}

uint64_t outlined destroy of StartCallConfirmContactsParameters()
{
  v1 = OUTLINED_FUNCTION_2_4();
  v3 = v2(v1);
  OUTLINED_FUNCTION_40(v3);
  (*(v4 + 8))(v0);
  return v0;
}

uint64_t StartCallCATPatternsExecutor.errorWithCodeAppConfigurationRequired(isThirdPartyApp:_:)()
{
  OUTLINED_FUNCTION_15();
  v4 = OUTLINED_FUNCTION_40_29(v1, v2, v3);
  v5 = type metadata accessor for StartCallErrorWithCodeAppConfigurationRequiredParameters(v4);
  OUTLINED_FUNCTION_24_4(v5);
  v7 = *(v6 + 64);
  *(v0 + 48) = OUTLINED_FUNCTION_45();
  v8 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v8, v9, v10);
}

{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_10_4();
  v4 = v3;
  OUTLINED_FUNCTION_6();
  *v5 = v4;
  v7 = *(v6 + 64);
  v8 = *(v6 + 56);
  v9 = *v2;
  OUTLINED_FUNCTION_4_2();
  *v10 = v9;
  *(v4 + 72) = v0;

  if (!v0)
  {
    *(v4 + 80) = v1;
  }

  OUTLINED_FUNCTION_19_5();
  OUTLINED_FUNCTION_65_1();

  return _swift_task_switch(v11, v12, v13);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_76_10();

  v0 = OUTLINED_FUNCTION_9_4();

  return v1(v0);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_76_10();

  OUTLINED_FUNCTION_22_0();

  return v0();
}

uint64_t StartCallCATPatternsExecutor.errorWithCodeAppConfigurationRequired(isThirdPartyApp:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_48_4();
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_83_6();
  v12 = *(v9 + 88);
  type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_10_73();
  OUTLINED_FUNCTION_136_4(v13, v14, v15, v16);
  v18 = OUTLINED_FUNCTION_2_118(v17);
  __swift_storeEnumTagSinglePayload(v18, v19, v20, v21);
  v22 = OUTLINED_FUNCTION_115_2(*(v10 + 20));
  v11(v22);
  OUTLINED_FUNCTION_60_0();
  v23 = StartCallErrorWithCodeAppConfigurationRequiredParameters.asKeyValuePairs()();
  OUTLINED_FUNCTION_66_3(v23);
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v37 = v24;
  v25 = swift_task_alloc();
  v26 = OUTLINED_FUNCTION_68(v25);
  *v26 = v27;
  OUTLINED_FUNCTION_10_66(v26);
  OUTLINED_FUNCTION_21_47(47);
  OUTLINED_FUNCTION_65_2();

  return v31(v28, v29, v30, v31, v32, v33, v34, v35, a9, v37);
}

uint64_t StartCallCATPatternsExecutor.errorWithCodeCallInProgress(_:)(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t StartCallCATPatternsExecutor.errorWithCodeCallInProgress(_:)()
{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_23_0();
  v2 = OUTLINED_FUNCTION_24_42();
  v3(v2);
  v4 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v5 = OUTLINED_FUNCTION_35_1();
  v6 = OUTLINED_FUNCTION_102_3(v5);
  OUTLINED_FUNCTION_0_2(v6, xmmword_424FD0);
  v7 = 0;
  if (v4)
  {
    v7 = type metadata accessor for SirikitDeviceState();
  }

  else
  {
    *(v1 + 56) = 0;
    *(v1 + 64) = 0;
  }

  OUTLINED_FUNCTION_50_27(v7);
  OUTLINED_FUNCTION_8_3(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v8 = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_68(v8);
  *v9 = v10;
  OUTLINED_FUNCTION_26_35(v9);
  OUTLINED_FUNCTION_43_4(37);
  OUTLINED_FUNCTION_65_1();

  return v14(v11, v12, v13, v14, v15, v16, v17, v18);
}

{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_10_4();
  v4 = v3;
  OUTLINED_FUNCTION_6();
  *v5 = v4;
  v7 = *(v6 + 64);
  v8 = *(v6 + 48);
  v9 = *v2;
  OUTLINED_FUNCTION_4_2();
  *v10 = v9;
  *(v4 + 72) = v0;

  if (!v0)
  {
    *(v4 + 80) = v1;
  }

  OUTLINED_FUNCTION_19_5();
  OUTLINED_FUNCTION_65_1();

  return _swift_task_switch(v11, v12, v13);
}

{
  OUTLINED_FUNCTION_15();
  v1 = *(v0 + 56);

  v2 = OUTLINED_FUNCTION_9_4();

  return v3(v2);
}

{
  OUTLINED_FUNCTION_15();
  v1 = *(v0 + 56);

  OUTLINED_FUNCTION_22_0();

  return v2();
}

uint64_t StartCallCATPatternsExecutor.errorWithCodeCallRinging(_:)(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t StartCallCATPatternsExecutor.errorWithCodeCallRinging(_:)()
{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_23_0();
  v2 = OUTLINED_FUNCTION_24_42();
  v3(v2);
  v4 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v5 = OUTLINED_FUNCTION_35_1();
  v6 = OUTLINED_FUNCTION_102_3(v5);
  OUTLINED_FUNCTION_0_2(v6, xmmword_424FD0);
  v7 = 0;
  if (v4)
  {
    v7 = type metadata accessor for SirikitDeviceState();
  }

  else
  {
    *(v1 + 56) = 0;
    *(v1 + 64) = 0;
  }

  OUTLINED_FUNCTION_50_27(v7);
  OUTLINED_FUNCTION_8_3(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v8 = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_68(v8);
  *v9 = v10;
  OUTLINED_FUNCTION_26_35(v9);
  OUTLINED_FUNCTION_43_4(34);
  OUTLINED_FUNCTION_65_1();

  return v14(v11, v12, v13, v14, v15, v16, v17, v18);
}

{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_10_4();
  v4 = v3;
  OUTLINED_FUNCTION_6();
  *v5 = v4;
  v7 = *(v6 + 64);
  v8 = *(v6 + 48);
  v9 = *v2;
  OUTLINED_FUNCTION_4_2();
  *v10 = v9;
  *(v4 + 72) = v0;

  if (!v0)
  {
    *(v4 + 80) = v1;
  }

  OUTLINED_FUNCTION_19_5();
  OUTLINED_FUNCTION_65_1();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t StartCallCATPatternsExecutor.errorWithCodeCallingServiceNotAvailable(isThirdPartyApp:_:)()
{
  OUTLINED_FUNCTION_15();
  v4 = OUTLINED_FUNCTION_40_29(v1, v2, v3);
  v5 = type metadata accessor for StartCallErrorWithCodeCallingServiceNotAvailableParameters(v4);
  OUTLINED_FUNCTION_24_4(v5);
  v7 = *(v6 + 64);
  *(v0 + 48) = OUTLINED_FUNCTION_45();
  v8 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v8, v9, v10);
}

{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_10_4();
  v4 = v3;
  OUTLINED_FUNCTION_6();
  *v5 = v4;
  v7 = *(v6 + 64);
  v8 = *(v6 + 56);
  v9 = *v2;
  OUTLINED_FUNCTION_4_2();
  *v10 = v9;
  *(v4 + 72) = v0;

  if (!v0)
  {
    *(v4 + 80) = v1;
  }

  OUTLINED_FUNCTION_19_5();
  OUTLINED_FUNCTION_65_1();

  return _swift_task_switch(v11, v12, v13);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_75_11();

  v0 = OUTLINED_FUNCTION_9_4();

  return v1(v0);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_75_11();

  OUTLINED_FUNCTION_22_0();

  return v0();
}

uint64_t StartCallCATPatternsExecutor.errorWithCodeCallingServiceNotAvailable(isThirdPartyApp:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_48_4();
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_83_6();
  v13 = *(v10 + 88);
  type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_10_73();
  __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
  v18 = OUTLINED_FUNCTION_2_118(v11[7]);
  __swift_storeEnumTagSinglePayload(v18, v19, v20, v21);
  *(v9 + v11[5]) = 0;
  v22 = OUTLINED_FUNCTION_115_2(v11[6]);
  v12(v22);
  OUTLINED_FUNCTION_60_0();
  v23 = StartCallErrorWithCodeCallingServiceNotAvailableParameters.asKeyValuePairs()();
  OUTLINED_FUNCTION_66_3(v23);
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v37 = v24;
  v25 = swift_task_alloc();
  v26 = OUTLINED_FUNCTION_68(v25);
  *v26 = v27;
  OUTLINED_FUNCTION_10_66(v26);
  OUTLINED_FUNCTION_21_47(49);
  OUTLINED_FUNCTION_65_2();

  return v31(v28, v29, v30, v31, v32, v33, v34, v35, a9, v37);
}

uint64_t StartCallCATPatternsExecutor.errorWithCodeContactNotSupportedByApp(isThirdPartyApp:_:)()
{
  OUTLINED_FUNCTION_15();
  v4 = OUTLINED_FUNCTION_40_29(v1, v2, v3);
  v5 = type metadata accessor for StartCallErrorWithCodeContactNotSupportedByAppParameters(v4);
  OUTLINED_FUNCTION_24_4(v5);
  v7 = *(v6 + 64);
  *(v0 + 48) = OUTLINED_FUNCTION_45();
  v8 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v8, v9, v10);
}

{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_10_4();
  v4 = v3;
  OUTLINED_FUNCTION_6();
  *v5 = v4;
  v7 = *(v6 + 64);
  v8 = *(v6 + 56);
  v9 = *v2;
  OUTLINED_FUNCTION_4_2();
  *v10 = v9;
  *(v4 + 72) = v0;

  if (!v0)
  {
    *(v4 + 80) = v1;
  }

  OUTLINED_FUNCTION_19_5();
  OUTLINED_FUNCTION_65_1();

  return _swift_task_switch(v11, v12, v13);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_65_19();

  v0 = OUTLINED_FUNCTION_9_4();

  return v1(v0);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_65_19();

  OUTLINED_FUNCTION_22_0();

  return v0();
}

uint64_t StartCallCATPatternsExecutor.errorWithCodeContactNotSupportedByApp(isThirdPartyApp:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_48_4();
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_83_6();
  v12 = *(v9 + 88);
  type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_10_73();
  OUTLINED_FUNCTION_136_4(v13, v14, v15, v16);
  v18 = OUTLINED_FUNCTION_2_118(v17);
  __swift_storeEnumTagSinglePayload(v18, v19, v20, v21);
  v22 = OUTLINED_FUNCTION_115_2(*(v10 + 20));
  v11(v22);
  OUTLINED_FUNCTION_60_0();
  v23 = StartCallErrorWithCodeContactNotSupportedByAppParameters.asKeyValuePairs()();
  OUTLINED_FUNCTION_66_3(v23);
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v37 = v24;
  v25 = swift_task_alloc();
  v26 = OUTLINED_FUNCTION_68(v25);
  *v26 = v27;
  OUTLINED_FUNCTION_10_66(v26);
  OUTLINED_FUNCTION_21_47(47);
  OUTLINED_FUNCTION_65_2();

  return v31(v28, v29, v30, v31, v32, v33, v34, v35, a9, v37);
}

uint64_t StartCallCATPatternsExecutor.errorWithCodeDownTimeRestrictionEnabled(_:)(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t StartCallCATPatternsExecutor.errorWithCodeDownTimeRestrictionEnabled(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_48_4();
  OUTLINED_FUNCTION_31();
  v12 = OUTLINED_FUNCTION_104_4();
  v13(v12);
  v14 = *v11;
  v15 = v11[1];
  v11[5] = *v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v16 = OUTLINED_FUNCTION_45_0();
  v11[6] = v16;
  OUTLINED_FUNCTION_28_29(v16, xmmword_424FF0);
  if (v14)
  {
    type metadata accessor for PhonePersonList();
    v17 = v14;
  }

  else
  {
    OUTLINED_FUNCTION_18_2();
    v16[3].n128_u64[1] = 0;
    v16[4].n128_u64[0] = 0;
  }

  v16[3].n128_u64[0] = v17;
  OUTLINED_FUNCTION_14_8();
  v20 = OUTLINED_FUNCTION_58_13(v18, v19);
  if (v15)
  {
    v20 = type metadata accessor for PhoneStartCallIntent(v20);
  }

  else
  {
    v16[6].n128_u64[1] = 0;
    v16[7].n128_u64[0] = 0;
  }

  *(v10 + 72) = v15;
  v16[6].n128_u64[0] = v15;
  v16[7].n128_u64[1] = v20;
  OUTLINED_FUNCTION_21_22(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));

  v21 = swift_task_alloc();
  *(v10 + 80) = v21;
  *v21 = v10;
  OUTLINED_FUNCTION_129_3(v21);
  OUTLINED_FUNCTION_65_2();

  return v25(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10);
}

uint64_t StartCallCATPatternsExecutor.errorWithCodeDownTimeRestrictionEnabled(_:)()
{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_10_4();
  v4 = v3;
  OUTLINED_FUNCTION_6();
  *v5 = v4;
  v7 = *(v6 + 80);
  v8 = *(v6 + 64);
  v9 = *v2;
  OUTLINED_FUNCTION_4_2();
  *v10 = v9;
  *(v4 + 88) = v0;

  if (!v0)
  {
    *(v4 + 96) = v1;
  }

  OUTLINED_FUNCTION_19_5();
  OUTLINED_FUNCTION_65_1();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t StartCallCATPatternsExecutor.errorWithCodeScreenTimeRestrictionEnabled()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_15_2(v0);
  *v1 = v2;
  v1[1] = SearchCallHistoryCATPatternsExecutor.readPlayVoiceMailPrePrompt();
  OUTLINED_FUNCTION_32();
  v3 = OUTLINED_FUNCTION_36_1(51);

  return v4(v3);
}

uint64_t StartCallCATPatternsExecutor.finalLowConfidenceResponse()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_15_2(v0);
  *v1 = v2;
  v1[1] = SearchCallHistoryCATPatternsExecutor.readPlayVoiceMailPrePrompt();
  OUTLINED_FUNCTION_32();
  v3 = OUTLINED_FUNCTION_36_1(36);

  return v4(v3);
}

uint64_t StartCallCATPatternsExecutor.genericError(_:)(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t StartCallCATPatternsExecutor.genericError(_:)()
{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_23_0();
  v2 = OUTLINED_FUNCTION_24_42();
  v3(v2);
  v4 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v5 = OUTLINED_FUNCTION_35_1();
  v6 = OUTLINED_FUNCTION_102_3(v5);
  OUTLINED_FUNCTION_0_2(v6, xmmword_424FD0);
  v7 = 0;
  if (v4)
  {
    v7 = type metadata accessor for SirikitDeviceState();
  }

  else
  {
    *(v1 + 56) = 0;
    *(v1 + 64) = 0;
  }

  OUTLINED_FUNCTION_50_27(v7);
  OUTLINED_FUNCTION_8_3(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v8 = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_68(v8);
  *v9 = v10;
  OUTLINED_FUNCTION_26_35(v9);
  OUTLINED_FUNCTION_43_4(22);
  OUTLINED_FUNCTION_65_1();

  return v14(v11, v12, v13, v14, v15, v16, v17, v18);
}

uint64_t StartCallCATPatternsExecutor.intentConfirmation(_:)(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t StartCallCATPatternsExecutor.intentConfirmation(_:)()
{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_23_0();
  v2 = OUTLINED_FUNCTION_24_42();
  v3(v2);
  v4 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v5 = OUTLINED_FUNCTION_35_1();
  *(OUTLINED_FUNCTION_102_3(v5) + 16) = xmmword_424FD0;
  OUTLINED_FUNCTION_14_8();
  *(v6 + 32) = v7;
  *(v6 + 40) = 0xE600000000000000;
  v8 = 0;
  if (v4)
  {
    v8 = type metadata accessor for PhoneStartCallIntent(0);
  }

  else
  {
    *(v1 + 56) = 0;
    *(v1 + 64) = 0;
  }

  OUTLINED_FUNCTION_50_27(v8);
  OUTLINED_FUNCTION_8_3(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v9 = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_68(v9);
  *v10 = v11;
  OUTLINED_FUNCTION_26_35(v10);
  OUTLINED_FUNCTION_43_4(28);
  OUTLINED_FUNCTION_65_1();

  return v15(v12, v13, v14, v15, v16, v17, v18, v19);
}

uint64_t StartCallCATPatternsExecutor.intentConfirmationWithRestrictedContacts(_:)()
{
  OUTLINED_FUNCTION_15();
  v3 = OUTLINED_FUNCTION_27_38(v1, v2);
  v4 = type metadata accessor for StartCallIntentConfirmationWithRestrictedContactsParameters(v3);
  OUTLINED_FUNCTION_24_4(v4);
  v6 = *(v5 + 64);
  *(v0 + 48) = OUTLINED_FUNCTION_45();
  v7 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v7, v8, v9);
}

{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_10_4();
  v4 = v3;
  OUTLINED_FUNCTION_6();
  *v5 = v4;
  v7 = *(v6 + 64);
  v8 = *(v6 + 56);
  v9 = *v2;
  OUTLINED_FUNCTION_4_2();
  *v10 = v9;
  *(v4 + 72) = v0;

  if (!v0)
  {
    *(v4 + 80) = v1;
  }

  OUTLINED_FUNCTION_19_5();
  OUTLINED_FUNCTION_65_1();

  return _swift_task_switch(v11, v12, v13);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_67_15();

  v0 = OUTLINED_FUNCTION_9_4();

  return v1(v0);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_67_15();

  OUTLINED_FUNCTION_22_0();

  return v0();
}

uint64_t StartCallCATPatternsExecutor.intentConfirmationWithRestrictedContacts(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_48_4();
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_47_25();
  OUTLINED_FUNCTION_10_73();
  OUTLINED_FUNCTION_136_4(v12, v13, v14, v15);
  *(v9 + v16) = 0;
  v17 = OUTLINED_FUNCTION_2_118(*(v10 + 28));
  __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
  *(v9 + *(v10 + 32)) = 0;
  v11(v9);
  OUTLINED_FUNCTION_60_0();
  v21 = StartCallIntentConfirmationWithRestrictedContactsParameters.asKeyValuePairs()();
  OUTLINED_FUNCTION_66_3(v21);
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v35 = v22;
  v23 = swift_task_alloc();
  v24 = OUTLINED_FUNCTION_68(v23);
  *v24 = v25;
  OUTLINED_FUNCTION_10_66(v24);
  OUTLINED_FUNCTION_21_47(50);
  OUTLINED_FUNCTION_65_2();

  return v29(v26, v27, v28, v29, v30, v31, v32, v33, a9, v35);
}

uint64_t StartCallCATPatternsExecutor.intentHandledResponse(isFirstPartyApp:isWalkieTalkie:shouldPrintDialogOnDisplayMode:_:)()
{
  OUTLINED_FUNCTION_15();
  v6 = OUTLINED_FUNCTION_38_28(v1, v2, v3, v4, v5);
  v7 = type metadata accessor for StartCallIntentHandledResponseParameters(v6);
  OUTLINED_FUNCTION_24_4(v7);
  v9 = *(v8 + 64);
  *(v0 + 48) = OUTLINED_FUNCTION_45();
  v10 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v10, v11, v12);
}

{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_10_4();
  v4 = v3;
  OUTLINED_FUNCTION_6();
  *v5 = v4;
  v7 = *(v6 + 64);
  v8 = *(v6 + 56);
  v9 = *v2;
  OUTLINED_FUNCTION_4_2();
  *v10 = v9;
  *(v4 + 72) = v0;

  if (!v0)
  {
    *(v4 + 80) = v1;
  }

  OUTLINED_FUNCTION_19_5();
  OUTLINED_FUNCTION_65_1();

  return _swift_task_switch(v11, v12, v13);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_64_16();

  v0 = OUTLINED_FUNCTION_9_4();

  return v1(v0);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_64_16();

  OUTLINED_FUNCTION_22_0();

  return v0();
}

uint64_t StartCallCATPatternsExecutor.intentHandledResponse(isFirstPartyApp:isWalkieTalkie:shouldPrintDialogOnDisplayMode:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_101_4();
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_83_6();
  OUTLINED_FUNCTION_130_2();
  OUTLINED_FUNCTION_10_73();
  OUTLINED_FUNCTION_136_4(v17, v18, v19, v20);
  v22 = OUTLINED_FUNCTION_2_118(v21);
  __swift_storeEnumTagSinglePayload(v22, v23, v24, v25);
  OUTLINED_FUNCTION_123_4(v13[5]);
  *(v12 + v26) = v16;
  *(v12 + v13[9]) = v15;
  *(v12 + v13[10]) = 0;
  v27 = OUTLINED_FUNCTION_115_2(v13[11]);
  v14(v27);
  OUTLINED_FUNCTION_60_0();
  v28 = StartCallIntentHandledResponseParameters.asKeyValuePairs()();
  OUTLINED_FUNCTION_66_3(v28);
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v42 = v29;
  v30 = swift_task_alloc();
  v31 = OUTLINED_FUNCTION_68(v30);
  *v31 = v32;
  OUTLINED_FUNCTION_10_66(v31);
  OUTLINED_FUNCTION_42_23(31);
  OUTLINED_FUNCTION_133_3();

  return v36(v33, v34, v35, v36, v37, v38, v39, v40, a9, v42, a11, a12);
}

uint64_t StartCallCATPatternsExecutor.intentHandledResponseWithFaceTimeLink()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_15_2(v0);
  *v1 = v2;
  v1[1] = SearchCallHistoryCATPatternsExecutor.readPlayVoiceMailPrePrompt();
  OUTLINED_FUNCTION_32();
  v3 = OUTLINED_FUNCTION_36_1(47);

  return v4(v3);
}

uint64_t StartCallCATPatternsExecutor.internalConversionError(_:)(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t StartCallCATPatternsExecutor.internalConversionError(_:)()
{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_23_0();
  v2 = OUTLINED_FUNCTION_24_42();
  v3(v2);
  v4 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v5 = OUTLINED_FUNCTION_35_1();
  v6 = OUTLINED_FUNCTION_102_3(v5);
  OUTLINED_FUNCTION_0_2(v6, xmmword_424FD0);
  v7 = 0;
  if (v4)
  {
    v7 = type metadata accessor for SirikitDeviceState();
  }

  else
  {
    *(v1 + 56) = 0;
    *(v1 + 64) = 0;
  }

  OUTLINED_FUNCTION_50_27(v7);
  OUTLINED_FUNCTION_8_3(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v8 = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_68(v8);
  *v9 = v10;
  OUTLINED_FUNCTION_26_35(v9);
  OUTLINED_FUNCTION_43_4(33);
  OUTLINED_FUNCTION_65_1();

  return v14(v11, v12, v13, v14, v15, v16, v17, v18);
}

uint64_t StartCallCATPatternsExecutor.promptForContacts(isFaceTime:isUnsupportedFollowUp:startingOver:_:)()
{
  OUTLINED_FUNCTION_15();
  v6 = OUTLINED_FUNCTION_38_28(v1, v2, v3, v4, v5);
  v7 = type metadata accessor for StartCallPromptForContactsParameters(v6);
  OUTLINED_FUNCTION_24_4(v7);
  v9 = *(v8 + 64);
  *(v0 + 48) = OUTLINED_FUNCTION_45();
  v10 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v10, v11, v12);
}

{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_10_4();
  v4 = v3;
  OUTLINED_FUNCTION_6();
  *v5 = v4;
  v7 = *(v6 + 64);
  v8 = *(v6 + 56);
  v9 = *v2;
  OUTLINED_FUNCTION_4_2();
  *v10 = v9;
  *(v4 + 72) = v0;

  if (!v0)
  {
    *(v4 + 80) = v1;
  }

  OUTLINED_FUNCTION_19_5();
  OUTLINED_FUNCTION_65_1();

  return _swift_task_switch(v11, v12, v13);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_71_11();

  v0 = OUTLINED_FUNCTION_9_4();

  return v1(v0);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_71_11();

  OUTLINED_FUNCTION_22_0();

  return v0();
}

uint64_t StartCallCATPatternsExecutor.promptForContacts(isFaceTime:isUnsupportedFollowUp:startingOver:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_101_4();
  OUTLINED_FUNCTION_24_1();
  v14 = *(v12 + 40);
  v13 = *(v12 + 48);
  v16 = *(v12 + 16);
  v15 = *(v12 + 24);
  v17 = *(v12 + 90);
  v18 = *(v12 + 89);
  v19 = *(v12 + 88);
  type metadata accessor for SpeakableString();
  v20 = OUTLINED_FUNCTION_15_47();
  __swift_storeEnumTagSinglePayload(v20, v21, v22, v23);
  *(v13 + v14[5]) = v19;
  *(v13 + v14[6]) = v18;
  v24 = v13 + v14[7];
  *v24 = 0;
  *(v24 + 8) = 1;
  *(v13 + v14[8]) = v17;
  v16(v13);
  OUTLINED_FUNCTION_60_0();
  v25 = StartCallPromptForContactsParameters.asKeyValuePairs()();
  OUTLINED_FUNCTION_66_3(v25);
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v39 = v26;
  v27 = swift_task_alloc();
  v28 = OUTLINED_FUNCTION_68(v27);
  *v28 = v29;
  OUTLINED_FUNCTION_10_66(v28);
  OUTLINED_FUNCTION_42_23(27);
  OUTLINED_FUNCTION_133_3();

  return v33(v30, v31, v32, v33, v34, v35, v36, v37, a9, v39, a11, a12);
}

uint64_t StartCallCATPatternsExecutor.simpleDisambiguateContacts(items:_:)()
{
  OUTLINED_FUNCTION_15();
  v1[4] = v2;
  v1[5] = v0;
  v1[2] = v3;
  v1[3] = v4;
  v5 = type metadata accessor for StartCallSimpleDisambiguateContactsParameters(0);
  v1[6] = v5;
  OUTLINED_FUNCTION_21(v5);
  v7 = *(v6 + 64);
  v1[7] = OUTLINED_FUNCTION_45();
  v8 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v8, v9, v10);
}

{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_23_0();
  v1 = v0[7];
  v3 = v0[3];
  v2 = v0[4];
  v4 = v0[2];
  v5 = *(v0[6] + 20);
  type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_7_6();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  *v1 = v4;

  v3(v1);
  OUTLINED_FUNCTION_60_0();
  v0[8] = StartCallSimpleDisambiguateContactsParameters.asKeyValuePairs()();
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v10 = swift_task_alloc();
  v0[9] = v10;
  *v10 = v0;
  v10[1] = StartCallCATPatternsExecutor.simpleDisambiguateContacts(items:_:);
  v11 = v0[5];
  OUTLINED_FUNCTION_42_23(36);
  OUTLINED_FUNCTION_65_1();

  return v15(v12, v13, v14, v15, v16, v17, v18, v19);
}

{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_10_4();
  v4 = v3;
  OUTLINED_FUNCTION_6();
  *v5 = v4;
  v7 = *(v6 + 72);
  v8 = *(v6 + 64);
  v9 = *v2;
  OUTLINED_FUNCTION_4_2();
  *v10 = v9;
  *(v4 + 80) = v0;

  if (!v0)
  {
    *(v4 + 88) = v1;
  }

  OUTLINED_FUNCTION_19_5();
  OUTLINED_FUNCTION_65_1();

  return _swift_task_switch(v11, v12, v13);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_61_21();

  OUTLINED_FUNCTION_17_5();
  v2 = *(v0 + 88);

  return v1(v2);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_61_21();

  OUTLINED_FUNCTION_11();
  v2 = *(v0 + 80);

  return v1();
}

uint64_t StartCallCATPatternsExecutor.simpleDisambiguateContactsHandles(isPhoneNumberHandleDisambiguation:isRequestForHandle:items:_:)(char a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 56) = a5;
  *(v6 + 64) = v5;
  *(v6 + 40) = a3;
  *(v6 + 48) = a4;
  *(v6 + 121) = a2;
  *(v6 + 120) = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t StartCallCATPatternsExecutor.simpleDisambiguateContactsHandles(isPhoneNumberHandleDisambiguation:isRequestForHandle:items:_:)()
{
  OUTLINED_FUNCTION_27();
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = *(v0 + 40);
  v4 = *(v0 + 121);
  *(v0 + 16) = *(v0 + 120);
  *(v0 + 17) = v4;
  *(v0 + 24) = v3;
  *(v0 + 32) = 0;

  v2(v0 + 16);
  v5 = *(v0 + 16);
  v6 = *(v0 + 17);
  v7 = *(v0 + 24);
  v8 = *(v0 + 32);
  *(v0 + 72) = v7;
  *(v0 + 80) = v8;
  if (v6)
  {
    v9 = 256;
  }

  else
  {
    v9 = 0;
  }

  *(v0 + 88) = StartCallSimpleDisambiguateContactsHandlesParameters.asKeyValuePairs()(v9 | v5, v7, v8);
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v15 = v10;
  v11 = swift_task_alloc();
  *(v0 + 96) = v11;
  *v11 = v0;
  v11[1] = StartCallCATPatternsExecutor.simpleDisambiguateContactsHandles(isPhoneNumberHandleDisambiguation:isRequestForHandle:items:_:);
  v12 = *(v0 + 64);
  v13 = OUTLINED_FUNCTION_42_23(43);

  return v15(v13);
}

{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_10_4();
  v4 = v3;
  OUTLINED_FUNCTION_6();
  *v5 = v4;
  v7 = *(v6 + 96);
  v8 = *(v6 + 88);
  v9 = *v2;
  OUTLINED_FUNCTION_4_2();
  *v10 = v9;
  *(v4 + 104) = v0;

  if (!v0)
  {
    *(v4 + 112) = v1;
  }

  OUTLINED_FUNCTION_19_5();
  OUTLINED_FUNCTION_65_1();

  return _swift_task_switch(v11, v12, v13);
}

{
  OUTLINED_FUNCTION_15();
  v1 = v0[9];
  v2 = v0[10];

  OUTLINED_FUNCTION_17_5();
  v4 = v0[14];

  return v3(v4);
}

{
  OUTLINED_FUNCTION_15();
  v1 = v0[9];
  v2 = v0[10];

  OUTLINED_FUNCTION_11();
  v4 = v0[13];

  return v3();
}

uint64_t StartCallCATPatternsExecutor.unsupportedCallCapability()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_15_2(v0);
  *v1 = v2;
  v1[1] = SearchCallHistoryCATPatternsExecutor.voiceMailPromptToPlay();
  OUTLINED_FUNCTION_32();
  v3 = OUTLINED_FUNCTION_36_1(35);

  return v4(v3);
}

uint64_t StartCallCATPatternsExecutor.unsupportedCallCapabilityCameraNotAccessible(_:)()
{
  OUTLINED_FUNCTION_15();
  v3 = OUTLINED_FUNCTION_27_38(v1, v2);
  v4 = type metadata accessor for StartCallUnsupportedCallCapabilityCameraNotAccessibleParameters(v3);
  OUTLINED_FUNCTION_21(v4);
  v6 = *(v5 + 64);
  *(v0 + 40) = OUTLINED_FUNCTION_45();
  v7 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v7, v8, v9);
}

{
  OUTLINED_FUNCTION_27();
  v1 = v0[5];
  v3 = v0[2];
  v2 = v0[3];
  type metadata accessor for SpeakableString();
  v4 = OUTLINED_FUNCTION_15_47();
  __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  v3(v1);
  OUTLINED_FUNCTION_60_0();
  v0[6] = StartCallUnsupportedCallCapabilityCameraNotAccessibleParameters.asKeyValuePairs()();
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v12 = v8;
  v9 = swift_task_alloc();
  v0[7] = v9;
  *v9 = v0;
  OUTLINED_FUNCTION_10_66(v9);
  v10 = OUTLINED_FUNCTION_42_23(54);

  return v12(v10);
}

{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_10_4();
  v4 = v3;
  OUTLINED_FUNCTION_6();
  *v5 = v4;
  v7 = *(v6 + 56);
  v8 = *(v6 + 48);
  v9 = *v2;
  OUTLINED_FUNCTION_4_2();
  *v10 = v9;
  *(v4 + 64) = v0;

  if (!v0)
  {
    *(v4 + 72) = v1;
  }

  OUTLINED_FUNCTION_19_5();
  OUTLINED_FUNCTION_65_1();

  return _swift_task_switch(v11, v12, v13);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_62_21();

  OUTLINED_FUNCTION_17_5();
  v2 = *(v0 + 72);

  return v1(v2);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_62_21();

  OUTLINED_FUNCTION_11();
  v2 = *(v0 + 64);

  return v1();
}

uint64_t StartCallCATPatternsExecutor.unsupportedCallCapabilityMicrophoneNotAccessible(_:)()
{
  OUTLINED_FUNCTION_15();
  v3 = OUTLINED_FUNCTION_27_38(v1, v2);
  v4 = type metadata accessor for StartCallUnsupportedCallCapabilityMicrophoneNotAccessibleParameters(v3);
  OUTLINED_FUNCTION_21(v4);
  v6 = *(v5 + 64);
  *(v0 + 40) = OUTLINED_FUNCTION_45();
  v7 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v7, v8, v9);
}

{
  OUTLINED_FUNCTION_27();
  v1 = v0[5];
  v3 = v0[2];
  v2 = v0[3];
  type metadata accessor for SpeakableString();
  v4 = OUTLINED_FUNCTION_15_47();
  __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  v3(v1);
  OUTLINED_FUNCTION_60_0();
  v0[6] = StartCallUnsupportedCallCapabilityCameraNotAccessibleParameters.asKeyValuePairs()();
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v12 = v8;
  v9 = swift_task_alloc();
  v0[7] = v9;
  *v9 = v0;
  OUTLINED_FUNCTION_10_66(v9);
  v10 = OUTLINED_FUNCTION_42_23(58);

  return v12(v10);
}

{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_10_4();
  v4 = v3;
  OUTLINED_FUNCTION_6();
  *v5 = v4;
  v7 = *(v6 + 56);
  v8 = *(v6 + 48);
  v9 = *v2;
  OUTLINED_FUNCTION_4_2();
  *v10 = v9;
  *(v4 + 64) = v0;

  if (!v0)
  {
    *(v4 + 72) = v1;
  }

  OUTLINED_FUNCTION_19_5();
  OUTLINED_FUNCTION_65_1();

  return _swift_task_switch(v11, v12, v13);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_63_15();

  OUTLINED_FUNCTION_17_5();
  v2 = *(v0 + 72);

  return v1(v2);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_63_15();

  OUTLINED_FUNCTION_11();
  v2 = *(v0 + 64);

  return v1();
}

uint64_t StartCallCATPatternsExecutor.unsupportedCallCapabilityVideoCallUnsupported()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_15_2(v0);
  *v1 = v2;
  v1[1] = SearchCallHistoryCATPatternsExecutor.readPlayVoiceMailPrePrompt();
  OUTLINED_FUNCTION_32();
  v3 = OUTLINED_FUNCTION_36_1(55);

  return v4(v3);
}

uint64_t StartCallCATPatternsExecutor.unsupportedContactsForeignEmergencyDisambiguation()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_15_2(v0);
  *v1 = v2;
  v1[1] = SearchCallHistoryCATPatternsExecutor.readPlayVoiceMailPrePrompt();
  OUTLINED_FUNCTION_32();
  v3 = OUTLINED_FUNCTION_36_1(59);

  return v4(v3);
}

uint64_t StartCallCATPatternsExecutor.unsupportedContactsInvalidHandle(_:)()
{
  OUTLINED_FUNCTION_15();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v4);
  v6 = *(v5 + 64);
  v1[5] = OUTLINED_FUNCTION_45();
  v7 = type metadata accessor for StartCallUnsupportedContactsInvalidHandleParameters(0);
  v1[6] = v7;
  OUTLINED_FUNCTION_21(v7);
  v9 = *(v8 + 64);
  v1[7] = OUTLINED_FUNCTION_45();
  v10 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v10, v11, v12);
}

{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_10_4();
  v4 = v3;
  OUTLINED_FUNCTION_6();
  *v5 = v4;
  v7 = *(v6 + 72);
  v8 = *(v6 + 64);
  v9 = *v2;
  OUTLINED_FUNCTION_4_2();
  *v10 = v9;
  *(v4 + 80) = v0;

  if (!v0)
  {
    *(v4 + 88) = v1;
  }

  OUTLINED_FUNCTION_19_5();
  OUTLINED_FUNCTION_65_1();

  return _swift_task_switch(v11, v12, v13);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_56_16();

  OUTLINED_FUNCTION_17_5();
  v2 = *(v0 + 88);

  return v1(v2);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_56_16();

  OUTLINED_FUNCTION_11();
  v2 = *(v0 + 80);

  return v1();
}

uint64_t StartCallCATPatternsExecutor.unsupportedContactsInvalidHandle(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_101_4();
  OUTLINED_FUNCTION_24_1();
  v13 = v12[6];
  v14 = v12[7];
  v16 = v12[2];
  v15 = v12[3];
  *v14 = 0;
  v17 = *(v13 + 20);
  v18 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_7_6();
  __swift_storeEnumTagSinglePayload(v19, v20, v21, v18);
  v16(v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v22 = OUTLINED_FUNCTION_45_0();
  v12[8] = v22;
  OUTLINED_FUNCTION_28_29(v22, xmmword_424FF0);
  v23 = *v14;
  if (*v14)
  {
    v24 = type metadata accessor for PhonePersonList();
    v25 = v23;
  }

  else
  {
    v24 = OUTLINED_FUNCTION_18_2();
    *(v22 + 56) = 0;
    *(v22 + 64) = 0;
  }

  v26 = v12[5];
  *(v22 + 48) = v25;
  *(v22 + 72) = v24;
  *(v22 + 80) = 0xD000000000000017;
  *(v22 + 88) = 0x80000000004621E0;
  outlined init with copy of SpeakableString?(v14 + v17, v26, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v26, 1, v18);
  v28 = v12[5];
  if (EnumTagSinglePayload == 1)
  {

    outlined destroy of SpeakableString?(v28, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v22 + 96) = 0u;
    *(v22 + 112) = 0u;
  }

  else
  {
    *(v22 + 120) = v18;
    __swift_allocate_boxed_opaque_existential_1((v22 + 96));
    OUTLINED_FUNCTION_40(v18);
    (*(v29 + 32))();
  }

  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v42 = v30;
  v31 = swift_task_alloc();
  v12[9] = v31;
  *v31 = v12;
  v31[1] = StartCallCATPatternsExecutor.unsupportedContactsInvalidHandle(_:);
  v32 = v12[4];
  OUTLINED_FUNCTION_133_3();

  return v36(v33, v34, v35, v36, v37, v38, v39, v40, a9, v42, a11, a12);
}

uint64_t StartCallCATPatternsExecutor.unsupportedContactsMultipleContactsUnsupported()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_15_2(v0);
  *v1 = v2;
  v1[1] = SearchCallHistoryCATPatternsExecutor.readPlayVoiceMailPrePrompt();
  OUTLINED_FUNCTION_32();
  v3 = OUTLINED_FUNCTION_36_1(56);

  return v4(v3);
}

uint64_t StartCallCATPatternsExecutor.unsupportedContactsNoCallHistoryForRedial()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_15_2(v0);
  *v1 = v2;
  v1[1] = SearchCallHistoryCATPatternsExecutor.readPlayVoiceMailPrePrompt();
  OUTLINED_FUNCTION_32();
  v3 = OUTLINED_FUNCTION_36_1(51);

  return v4(v3);
}

uint64_t StartCallCATPatternsExecutor.unsupportedContactsNoContactFound(isFirstPartyApp:_:)()
{
  OUTLINED_FUNCTION_15();
  v4 = OUTLINED_FUNCTION_40_29(v1, v2, v3);
  v5 = type metadata accessor for StartCallUnsupportedContactsNoContactFoundParameters(v4);
  OUTLINED_FUNCTION_24_4(v5);
  v7 = *(v6 + 64);
  *(v0 + 48) = OUTLINED_FUNCTION_45();
  v8 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v8, v9, v10);
}

{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_23_0();
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);
  v5 = *(v0 + 88);
  type metadata accessor for SpeakableString();
  v6 = OUTLINED_FUNCTION_15_47();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  *(v1 + *(v2 + 20)) = 0;
  *(v1 + *(v2 + 24)) = v5;
  v4(v1);
  OUTLINED_FUNCTION_60_0();
  v10 = StartCallUnsupportedContactsNoContactFoundParameters.asKeyValuePairs()();
  OUTLINED_FUNCTION_66_3(v10);
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v11 = swift_task_alloc();
  v12 = OUTLINED_FUNCTION_68(v11);
  *v12 = v13;
  OUTLINED_FUNCTION_10_66(v12);
  OUTLINED_FUNCTION_42_23(43);
  OUTLINED_FUNCTION_65_1();

  return v17(v14, v15, v16, v17, v18, v19, v20, v21);
}

{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_10_4();
  v4 = v3;
  OUTLINED_FUNCTION_6();
  *v5 = v4;
  v7 = *(v6 + 64);
  v8 = *(v6 + 56);
  v9 = *v2;
  OUTLINED_FUNCTION_4_2();
  *v10 = v9;
  *(v4 + 72) = v0;

  if (!v0)
  {
    *(v4 + 80) = v1;
  }

  OUTLINED_FUNCTION_19_5();
  OUTLINED_FUNCTION_65_1();

  return _swift_task_switch(v11, v12, v13);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_69_14();

  v0 = OUTLINED_FUNCTION_9_4();

  return v1(v0);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_69_14();

  OUTLINED_FUNCTION_22_0();

  return v0();
}

uint64_t StartCallCATPatternsExecutor.unsupportedContactsNoContactFoundUserUnknown()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_15_2(v0);
  *v1 = v2;
  v1[1] = SearchCallHistoryCATPatternsExecutor.readPlayVoiceMailPrePrompt();
  OUTLINED_FUNCTION_32();
  v3 = OUTLINED_FUNCTION_36_1(54);

  return v4(v3);
}

uint64_t StartCallCATPatternsExecutor.unsupportedContactsNoHandleForLabel(_:)()
{
  OUTLINED_FUNCTION_15();
  v3 = OUTLINED_FUNCTION_27_38(v1, v2);
  v4 = type metadata accessor for StartCallUnsupportedContactsNoHandleForLabelParameters(v3);
  OUTLINED_FUNCTION_24_4(v4);
  v6 = *(v5 + 64);
  *(v0 + 48) = OUTLINED_FUNCTION_45();
  v7 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v7, v8, v9);
}

{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_10_4();
  v4 = v3;
  OUTLINED_FUNCTION_6();
  *v5 = v4;
  v7 = *(v6 + 64);
  v8 = *(v6 + 56);
  v9 = *v2;
  OUTLINED_FUNCTION_4_2();
  *v10 = v9;
  *(v4 + 72) = v0;

  if (!v0)
  {
    *(v4 + 80) = v1;
  }

  OUTLINED_FUNCTION_19_5();
  OUTLINED_FUNCTION_65_1();

  return _swift_task_switch(v11, v12, v13);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_68_13();

  v0 = OUTLINED_FUNCTION_9_4();

  return v1(v0);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_68_13();

  OUTLINED_FUNCTION_22_0();

  return v0();
}

uint64_t StartCallCATPatternsExecutor.unsupportedContactsNoHandleForLabel(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_48_4();
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_47_25();
  OUTLINED_FUNCTION_10_73();
  OUTLINED_FUNCTION_136_4(v11, v12, v13, v14);
  OUTLINED_FUNCTION_123_4(v15);
  v17 = OUTLINED_FUNCTION_2_118(v16);
  __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
  v10(v9);
  OUTLINED_FUNCTION_60_0();
  v21 = StartCallUnsupportedContactsNoHandleForLabelParameters.asKeyValuePairs()();
  OUTLINED_FUNCTION_66_3(v21);
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v35 = v22;
  v23 = swift_task_alloc();
  v24 = OUTLINED_FUNCTION_68(v23);
  *v24 = v25;
  OUTLINED_FUNCTION_10_66(v24);
  OUTLINED_FUNCTION_21_47(45);
  OUTLINED_FUNCTION_65_2();

  return v29(v26, v27, v28, v29, v30, v31, v32, v33, a9, v35);
}

uint64_t StartCallCATPatternsExecutor.unsupportedContactsNoUsableHandleForRedial()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_15_2(v0);
  *v1 = v2;
  v1[1] = SearchCallHistoryCATPatternsExecutor.readPlayVoiceMailPrePrompt();
  OUTLINED_FUNCTION_32();
  v3 = OUTLINED_FUNCTION_36_1(52);

  return v4(v3);
}

uint64_t StartCallCATPatternsExecutor.unsupportedContactsUnsupportedMmiUssd()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_15_2(v0);
  *v1 = v2;
  v1[1] = SearchCallHistoryCATPatternsExecutor.readPlayVoiceMailPrePrompt();
  OUTLINED_FUNCTION_32();
  v3 = OUTLINED_FUNCTION_36_1(47);

  return v4(v3);
}

uint64_t StartCallCATPatternsExecutor.unsupportedDeviceFaceTimeLink(_:)()
{
  OUTLINED_FUNCTION_15();
  v3 = OUTLINED_FUNCTION_27_38(v1, v2);
  v4 = type metadata accessor for StartCallUnsupportedDeviceFaceTimeLinkParameters(v3);
  OUTLINED_FUNCTION_24_4(v4);
  v6 = *(v5 + 64);
  *(v0 + 48) = OUTLINED_FUNCTION_45();
  v7 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v7, v8, v9);
}

{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_10_4();
  v4 = v3;
  OUTLINED_FUNCTION_6();
  *v5 = v4;
  v7 = *(v6 + 64);
  v8 = *(v6 + 56);
  v9 = *v2;
  OUTLINED_FUNCTION_4_2();
  *v10 = v9;
  *(v4 + 72) = v0;

  if (!v0)
  {
    *(v4 + 80) = v1;
  }

  OUTLINED_FUNCTION_19_5();
  OUTLINED_FUNCTION_65_1();

  return _swift_task_switch(v11, v12, v13);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_66_16();

  v0 = OUTLINED_FUNCTION_9_4();

  return v1(v0);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_66_16();

  OUTLINED_FUNCTION_22_0();

  return v0();
}

uint64_t StartCallCATPatternsExecutor.unsupportedDeviceFaceTimeLink(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_48_4();
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_47_25();
  OUTLINED_FUNCTION_10_73();
  OUTLINED_FUNCTION_136_4(v11, v12, v13, v14);
  v16 = OUTLINED_FUNCTION_2_118(v15);
  __swift_storeEnumTagSinglePayload(v16, v17, v18, v19);
  v10(v9);
  OUTLINED_FUNCTION_60_0();
  v20 = StartCallUnsupportedDeviceFaceTimeLinkParameters.asKeyValuePairs()();
  OUTLINED_FUNCTION_66_3(v20);
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v34 = v21;
  v22 = swift_task_alloc();
  v23 = OUTLINED_FUNCTION_68(v22);
  *v23 = v24;
  OUTLINED_FUNCTION_10_66(v23);
  OUTLINED_FUNCTION_21_47(39);
  OUTLINED_FUNCTION_65_2();

  return v28(v25, v26, v27, v28, v29, v30, v31, v32, a9, v34);
}

uint64_t StartCallCATPatternsExecutor.unsupportedDeviceGroupFaceTime(_:)()
{
  OUTLINED_FUNCTION_15();
  v3 = OUTLINED_FUNCTION_27_38(v1, v2);
  v4 = type metadata accessor for StartCallUnsupportedDeviceGroupFaceTimeParameters(v3);
  OUTLINED_FUNCTION_24_4(v4);
  v6 = *(v5 + 64);
  *(v0 + 48) = OUTLINED_FUNCTION_45();
  v7 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v7, v8, v9);
}

{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_10_4();
  v4 = v3;
  OUTLINED_FUNCTION_6();
  *v5 = v4;
  v7 = *(v6 + 64);
  v8 = *(v6 + 56);
  v9 = *v2;
  OUTLINED_FUNCTION_4_2();
  *v10 = v9;
  *(v4 + 72) = v0;

  if (!v0)
  {
    *(v4 + 80) = v1;
  }

  OUTLINED_FUNCTION_19_5();
  OUTLINED_FUNCTION_65_1();

  return _swift_task_switch(v11, v12, v13);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_72_12();

  v0 = OUTLINED_FUNCTION_9_4();

  return v1(v0);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_72_12();

  OUTLINED_FUNCTION_22_0();

  return v0();
}

uint64_t StartCallCATPatternsExecutor.unsupportedDeviceGroupFaceTime(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_48_4();
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_47_25();
  OUTLINED_FUNCTION_10_73();
  OUTLINED_FUNCTION_136_4(v11, v12, v13, v14);
  v16 = OUTLINED_FUNCTION_2_118(v15);
  __swift_storeEnumTagSinglePayload(v16, v17, v18, v19);
  v10(v9);
  OUTLINED_FUNCTION_60_0();
  v20 = StartCallUnsupportedDeviceGroupFaceTimeParameters.asKeyValuePairs()();
  OUTLINED_FUNCTION_66_3(v20);
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v34 = v21;
  v22 = swift_task_alloc();
  v23 = OUTLINED_FUNCTION_68(v22);
  *v23 = v24;
  OUTLINED_FUNCTION_10_66(v23);
  OUTLINED_FUNCTION_21_47(40);
  OUTLINED_FUNCTION_65_2();

  return v28(v25, v26, v27, v28, v29, v30, v31, v32, a9, v34);
}

uint64_t StartCallCATPatternsExecutor.unsupportedPreferredCallProvider(_:)(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t StartCallCATPatternsExecutor.unsupportedPreferredCallProvider(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_48_4();
  OUTLINED_FUNCTION_31();
  v12 = OUTLINED_FUNCTION_104_4();
  v13(v12);
  v14 = *v11;
  v15 = v11[1];
  v11[5] = *v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v16 = OUTLINED_FUNCTION_45_0();
  v11[6] = v16;
  OUTLINED_FUNCTION_0_2(v16, xmmword_424FF0);
  if (v14)
  {
    type metadata accessor for SirikitDeviceState();
    v17 = v14;
  }

  else
  {
    OUTLINED_FUNCTION_18_2();
    v16[3].n128_u64[1] = 0;
    v16[4].n128_u64[0] = 0;
  }

  v16[3].n128_u64[0] = v17;
  OUTLINED_FUNCTION_14_8();
  v20 = OUTLINED_FUNCTION_58_13(v18, v19);
  if (v15)
  {
    v20 = type metadata accessor for PhoneStartCallIntent(v20);
  }

  else
  {
    v16[6].n128_u64[1] = 0;
    v16[7].n128_u64[0] = 0;
  }

  *(v10 + 72) = v15;
  v16[6].n128_u64[0] = v15;
  v16[7].n128_u64[1] = v20;
  OUTLINED_FUNCTION_21_22(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));

  v21 = swift_task_alloc();
  *(v10 + 80) = v21;
  *v21 = v10;
  OUTLINED_FUNCTION_129_3(v21);
  OUTLINED_FUNCTION_65_2();

  return v25(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10);
}

uint64_t StartCallCATPatternsExecutor.unsupportedPreferredCallProvider(_:)()
{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_10_4();
  v4 = v3;
  OUTLINED_FUNCTION_6();
  *v5 = v4;
  v7 = *(v6 + 80);
  v8 = *(v6 + 64);
  v9 = *v2;
  OUTLINED_FUNCTION_4_2();
  *v10 = v9;
  *(v4 + 88) = v0;

  if (!v0)
  {
    *(v4 + 96) = v1;
  }

  OUTLINED_FUNCTION_19_5();
  OUTLINED_FUNCTION_65_1();

  return _swift_task_switch(v11, v12, v13);
}

{
  OUTLINED_FUNCTION_15();
  v1 = v0[9];
  v2 = v0[7];

  OUTLINED_FUNCTION_17_5();
  v4 = v0[12];

  return v3(v4);
}

{
  OUTLINED_FUNCTION_15();
  v1 = v0[9];
  v2 = v0[7];

  OUTLINED_FUNCTION_11();
  v4 = v0[11];

  return v3();
}

uint64_t StartCallCATPatternsExecutor.unsupportedPreferredCallProviderAccountSetupRequired(_:)()
{
  OUTLINED_FUNCTION_15();
  v3 = OUTLINED_FUNCTION_27_38(v1, v2);
  v4 = type metadata accessor for StartCallUnsupportedPreferredCallProviderAccountSetupRequiredParameters(v3);
  OUTLINED_FUNCTION_24_4(v4);
  v6 = *(v5 + 64);
  *(v0 + 48) = OUTLINED_FUNCTION_45();
  v7 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v7, v8, v9);
}

{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_10_4();
  v4 = v3;
  OUTLINED_FUNCTION_6();
  *v5 = v4;
  v7 = *(v6 + 64);
  v8 = *(v6 + 56);
  v9 = *v2;
  OUTLINED_FUNCTION_4_2();
  *v10 = v9;
  *(v4 + 72) = v0;

  if (!v0)
  {
    *(v4 + 80) = v1;
  }

  OUTLINED_FUNCTION_19_5();
  OUTLINED_FUNCTION_65_1();

  return _swift_task_switch(v11, v12, v13);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_74_7();

  v0 = OUTLINED_FUNCTION_9_4();

  return v1(v0);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_74_7();

  OUTLINED_FUNCTION_22_0();

  return v0();
}

unint64_t lazy protocol witness table accessor for type StartCallCATPatternsIdentifiers and conformance StartCallCATPatternsIdentifiers()
{
  result = lazy protocol witness table cache variable for type StartCallCATPatternsIdentifiers and conformance StartCallCATPatternsIdentifiers;
  if (!lazy protocol witness table cache variable for type StartCallCATPatternsIdentifiers and conformance StartCallCATPatternsIdentifiers)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StartCallCATPatternsIdentifiers and conformance StartCallCATPatternsIdentifiers);
  }

  return result;
}

uint64_t protocol witness for StartCallCATPatternsExecuting.confirmContacts(isFaceTime:isFoundInAppConfirmation:isTopMatchConfirmation:_:) in conformance StartCallCATPatternsExecutor(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v15 = (**v5 + class metadata base offset for StartCallCATPatternsExecutor);
  v16 = (*v15 + **v15);
  v12 = (*v15)[1];
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = SearchCallHistoryCATPatternsExecutor.readPlayVoiceMailPrePrompt();

  return v16(a1, a2, a3, a4, a5);
}

uint64_t protocol witness for StartCallCATPatternsExecuting.errorWithCodeAirplaneModeEnabled(isEmergency:isResponseFramework:_:) in conformance StartCallCATPatternsExecutor(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(**v4 + class metadata base offset for StartCallCATPatternsExecutor + 8);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = SearchCallHistoryCATPatternsExecutor.readPlayVoiceMailPrePrompt();

  return v14(a1, a2, a3, a4);
}

uint64_t protocol witness for StartCallCATPatternsExecuting.errorWithCodeAppConfigurationRequired(isThirdPartyApp:_:) in conformance StartCallCATPatternsExecutor(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(**v3 + class metadata base offset for StartCallCATPatternsExecutor + 16);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = SearchCallHistoryCATPatternsExecutor.readPlayVoiceMailPrePrompt();

  return v12(a1, a2, a3);
}

uint64_t protocol witness for StartCallCATPatternsExecuting.errorWithCodeCallInProgress(_:) in conformance StartCallCATPatternsExecutor(uint64_t a1, uint64_t a2)
{
  v6 = *(**v2 + class metadata base offset for StartCallCATPatternsExecutor + 24);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = SearchCallHistoryCATPatternsExecutor.readPlayVoiceMailPrePrompt();

  return v10(a1, a2);
}

uint64_t protocol witness for StartCallCATPatternsExecuting.errorWithCodeCallRinging(_:) in conformance StartCallCATPatternsExecutor(uint64_t a1, uint64_t a2)
{
  v6 = *(**v2 + class metadata base offset for StartCallCATPatternsExecutor + 32);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = SearchCallHistoryCATPatternsExecutor.readPlayVoiceMailPrePrompt();

  return v10(a1, a2);
}

uint64_t protocol witness for StartCallCATPatternsExecuting.errorWithCodeCallingServiceNotAvailable(isThirdPartyApp:_:) in conformance StartCallCATPatternsExecutor(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(**v3 + class metadata base offset for StartCallCATPatternsExecutor + 40);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = SearchCallHistoryCATPatternsExecutor.readPlayVoiceMailPrePrompt();

  return v12(a1, a2, a3);
}

uint64_t protocol witness for StartCallCATPatternsExecuting.errorWithCodeContactNotSupportedByApp(isThirdPartyApp:_:) in conformance StartCallCATPatternsExecutor(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(**v3 + class metadata base offset for StartCallCATPatternsExecutor + 48);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = SearchCallHistoryCATPatternsExecutor.readPlayVoiceMailPrePrompt();

  return v12(a1, a2, a3);
}

uint64_t protocol witness for StartCallCATPatternsExecuting.errorWithCodeDownTimeRestrictionEnabled(_:) in conformance StartCallCATPatternsExecutor(uint64_t a1, uint64_t a2)
{
  v6 = *(**v2 + class metadata base offset for StartCallCATPatternsExecutor + 56);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = SearchCallHistoryCATPatternsExecutor.readPlayVoiceMailPrePrompt();

  return v10(a1, a2);
}

uint64_t protocol witness for StartCallCATPatternsExecuting.errorWithCodeScreenTimeRestrictionEnabled() in conformance StartCallCATPatternsExecutor()
{
  v2 = *(**v0 + class metadata base offset for StartCallCATPatternsExecutor + 64);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = SearchCallHistoryCATPatternsExecutor.readPlayVoiceMailPrePrompt();

  return v6();
}

uint64_t protocol witness for StartCallCATPatternsExecuting.finalLowConfidenceResponse() in conformance StartCallCATPatternsExecutor()
{
  v2 = *(**v0 + class metadata base offset for StartCallCATPatternsExecutor + 72);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = SearchCallHistoryCATPatternsExecutor.readPlayVoiceMailPrePrompt();

  return v6();
}

uint64_t protocol witness for StartCallCATPatternsExecuting.genericError(_:) in conformance StartCallCATPatternsExecutor(uint64_t a1, uint64_t a2)
{
  v6 = *(**v2 + class metadata base offset for StartCallCATPatternsExecutor + 80);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = SearchCallHistoryCATPatternsExecutor.readPlayVoiceMailPrePrompt();

  return v10(a1, a2);
}

uint64_t protocol witness for StartCallCATPatternsExecuting.intentConfirmation(_:) in conformance StartCallCATPatternsExecutor(uint64_t a1, uint64_t a2)
{
  v6 = *(**v2 + class metadata base offset for StartCallCATPatternsExecutor + 88);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = SearchCallHistoryCATPatternsExecutor.readPlayVoiceMailPrePrompt();

  return v10(a1, a2);
}

uint64_t protocol witness for StartCallCATPatternsExecuting.intentConfirmationWithRestrictedContacts(_:) in conformance StartCallCATPatternsExecutor(uint64_t a1, uint64_t a2)
{
  v6 = *(**v2 + class metadata base offset for StartCallCATPatternsExecutor + 96);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = SearchCallHistoryCATPatternsExecutor.readPlayVoiceMailPrePrompt();

  return v10(a1, a2);
}

uint64_t protocol witness for StartCallCATPatternsExecuting.intentHandledResponse(isFirstPartyApp:isWalkieTalkie:shouldPrintDialogOnDisplayMode:_:) in conformance StartCallCATPatternsExecutor(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = *(**v5 + class metadata base offset for StartCallCATPatternsExecutor + 104);
  v16 = (v12 + *v12);
  v13 = v12[1];
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  *v14 = v6;
  v14[1] = SearchCallHistoryCATPatternsExecutor.readPlayVoiceMailPrePrompt();

  return v16(a1, a2, a3, a4, a5);
}

uint64_t protocol witness for StartCallCATPatternsExecuting.intentHandledResponseWithFaceTimeLink() in conformance StartCallCATPatternsExecutor()
{
  v2 = *(**v0 + class metadata base offset for StartCallCATPatternsExecutor + 112);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = SearchCallHistoryCATPatternsExecutor.readPlayVoiceMailPrePrompt();

  return v6();
}

uint64_t protocol witness for StartCallCATPatternsExecuting.internalConversionError(_:) in conformance StartCallCATPatternsExecutor(uint64_t a1, uint64_t a2)
{
  v6 = *(**v2 + class metadata base offset for StartCallCATPatternsExecutor + 120);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = SearchCallHistoryCATPatternsExecutor.readPlayVoiceMailPrePrompt();

  return v10(a1, a2);
}

uint64_t protocol witness for StartCallCATPatternsExecuting.promptForContacts(isFaceTime:isUnsupportedFollowUp:startingOver:_:) in conformance StartCallCATPatternsExecutor(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = *(**v5 + class metadata base offset for StartCallCATPatternsExecutor + 128);
  v16 = (v12 + *v12);
  v13 = v12[1];
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  *v14 = v6;
  v14[1] = SearchCallHistoryCATPatternsExecutor.readPlayVoiceMailPrePrompt();

  return v16(a1, a2, a3, a4, a5);
}

uint64_t protocol witness for StartCallCATPatternsExecuting.simpleDisambiguateContacts(items:_:) in conformance StartCallCATPatternsExecutor(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(**v3 + class metadata base offset for StartCallCATPatternsExecutor + 136);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = SearchCallHistoryCATPatternsExecutor.readPlayVoiceMailPrePrompt();

  return v12(a1, a2, a3);
}

uint64_t protocol witness for StartCallCATPatternsExecuting.simpleDisambiguateContactsHandles(isPhoneNumberHandleDisambiguation:isRequestForHandle:items:_:) in conformance StartCallCATPatternsExecutor(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = *(**v5 + class metadata base offset for StartCallCATPatternsExecutor + 144);
  v16 = (v12 + *v12);
  v13 = v12[1];
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  *v14 = v6;
  v14[1] = SearchCallHistoryCATPatternsExecutor.readPlayVoiceMailPrePrompt();

  return v16(a1, a2, a3, a4, a5);
}

uint64_t protocol witness for StartCallCATPatternsExecuting.unsupportedCallCapability() in conformance StartCallCATPatternsExecutor()
{
  v2 = *(**v0 + class metadata base offset for StartCallCATPatternsExecutor + 152);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = SearchCallHistoryCATPatternsExecutor.readPlayVoiceMailPrePrompt();

  return v6();
}

uint64_t protocol witness for StartCallCATPatternsExecuting.unsupportedCallCapabilityCameraNotAccessible(_:) in conformance StartCallCATPatternsExecutor(uint64_t a1, uint64_t a2)
{
  v6 = *(**v2 + class metadata base offset for StartCallCATPatternsExecutor + 160);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = SearchCallHistoryCATPatternsExecutor.readPlayVoiceMailPrePrompt();

  return v10(a1, a2);
}

uint64_t protocol witness for StartCallCATPatternsExecuting.unsupportedCallCapabilityMicrophoneNotAccessible(_:) in conformance StartCallCATPatternsExecutor(uint64_t a1, uint64_t a2)
{
  v6 = *(**v2 + class metadata base offset for StartCallCATPatternsExecutor + 168);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = SearchCallHistoryCATPatternsExecutor.readPlayVoiceMailPrePrompt();

  return v10(a1, a2);
}

uint64_t protocol witness for StartCallCATPatternsExecuting.unsupportedCallCapabilityVideoCallUnsupported() in conformance StartCallCATPatternsExecutor()
{
  v2 = *(**v0 + class metadata base offset for StartCallCATPatternsExecutor + 176);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = SearchCallHistoryCATPatternsExecutor.readPlayVoiceMailPrePrompt();

  return v6();
}

uint64_t protocol witness for StartCallCATPatternsExecuting.unsupportedContactsForeignEmergencyDisambiguation() in conformance StartCallCATPatternsExecutor()
{
  v2 = *(**v0 + class metadata base offset for StartCallCATPatternsExecutor + 184);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = SearchCallHistoryCATPatternsExecutor.readPlayVoiceMailPrePrompt();

  return v6();
}

uint64_t protocol witness for StartCallCATPatternsExecuting.unsupportedContactsInvalidHandle(_:) in conformance StartCallCATPatternsExecutor(uint64_t a1, uint64_t a2)
{
  v6 = *(**v2 + class metadata base offset for StartCallCATPatternsExecutor + 192);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = SearchCallHistoryCATPatternsExecutor.readPlayVoiceMailPrePrompt();

  return v10(a1, a2);
}

uint64_t protocol witness for StartCallCATPatternsExecuting.unsupportedContactsMultipleContactsUnsupported() in conformance StartCallCATPatternsExecutor()
{
  v2 = *(**v0 + class metadata base offset for StartCallCATPatternsExecutor + 200);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = SearchCallHistoryCATPatternsExecutor.readPlayVoiceMailPrePrompt();

  return v6();
}

uint64_t protocol witness for StartCallCATPatternsExecuting.unsupportedContactsNoCallHistoryForRedial() in conformance StartCallCATPatternsExecutor()
{
  v2 = *(**v0 + class metadata base offset for StartCallCATPatternsExecutor + 208);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = SearchCallHistoryCATPatternsExecutor.readPlayVoiceMailPrePrompt();

  return v6();
}

uint64_t protocol witness for StartCallCATPatternsExecuting.unsupportedContactsNoContactFound(isFirstPartyApp:_:) in conformance StartCallCATPatternsExecutor(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(**v3 + class metadata base offset for StartCallCATPatternsExecutor + 216);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = SearchCallHistoryCATPatternsExecutor.readPlayVoiceMailPrePrompt();

  return v12(a1, a2, a3);
}

uint64_t protocol witness for StartCallCATPatternsExecuting.unsupportedContactsNoContactFoundUserUnknown() in conformance StartCallCATPatternsExecutor()
{
  v2 = *(**v0 + class metadata base offset for StartCallCATPatternsExecutor + 224);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = SearchCallHistoryCATPatternsExecutor.readPlayVoiceMailPrePrompt();

  return v6();
}

uint64_t protocol witness for StartCallCATPatternsExecuting.unsupportedContactsNoHandleForLabel(_:) in conformance StartCallCATPatternsExecutor(uint64_t a1, uint64_t a2)
{
  v6 = *(**v2 + class metadata base offset for StartCallCATPatternsExecutor + 232);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = SearchCallHistoryCATPatternsExecutor.readPlayVoiceMailPrePrompt();

  return v10(a1, a2);
}

uint64_t protocol witness for StartCallCATPatternsExecuting.unsupportedContactsNoUsableHandleForRedial() in conformance StartCallCATPatternsExecutor()
{
  v2 = *(**v0 + class metadata base offset for StartCallCATPatternsExecutor + 240);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = SearchCallHistoryCATPatternsExecutor.readPlayVoiceMailPrePrompt();

  return v6();
}

uint64_t protocol witness for StartCallCATPatternsExecuting.unsupportedContactsUnsupportedMmiUssd() in conformance StartCallCATPatternsExecutor()
{
  v2 = *(**v0 + class metadata base offset for StartCallCATPatternsExecutor + 248);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = SearchCallHistoryCATPatternsExecutor.readPlayVoiceMailPrePrompt();

  return v6();
}

uint64_t protocol witness for StartCallCATPatternsExecuting.unsupportedDeviceFaceTimeLink(_:) in conformance StartCallCATPatternsExecutor(uint64_t a1, uint64_t a2)
{
  v9 = (**v2 + class metadata base offset for StartCallCATPatternsExecutor + 256);
  v10 = (*v9 + **v9);
  v6 = (*v9)[1];
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = SearchCallHistoryCATPatternsExecutor.readPlayVoiceMailPrePrompt();

  return v10(a1, a2);
}

uint64_t protocol witness for StartCallCATPatternsExecuting.unsupportedDeviceGroupFaceTime(_:) in conformance StartCallCATPatternsExecutor(uint64_t a1, uint64_t a2)
{
  v9 = (**v2 + class metadata base offset for StartCallCATPatternsExecutor + 264);
  v10 = (*v9 + **v9);
  v6 = (*v9)[1];
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = SearchCallHistoryCATPatternsExecutor.readPlayVoiceMailPrePrompt();

  return v10(a1, a2);
}

uint64_t protocol witness for StartCallCATPatternsExecuting.unsupportedPreferredCallProvider(_:) in conformance StartCallCATPatternsExecutor(uint64_t a1, uint64_t a2)
{
  v9 = (**v2 + class metadata base offset for StartCallCATPatternsExecutor + 272);
  v10 = (*v9 + **v9);
  v6 = (*v9)[1];
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = SearchCallHistoryCATPatternsExecutor.readPlayVoiceMailPrePrompt();

  return v10(a1, a2);
}

uint64_t protocol witness for StartCallCATPatternsExecuting.unsupportedPreferredCallProviderAccountSetupRequired(_:) in conformance StartCallCATPatternsExecutor(uint64_t a1, uint64_t a2)
{
  v9 = (**v2 + class metadata base offset for StartCallCATPatternsExecutor + 280);
  v10 = (*v9 + **v9);
  v6 = (*v9)[1];
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = SearchCallHistoryCATPatternsExecutor.readPlayVoiceMailPrePrompt();

  return v10(a1, a2);
}

uint64_t getEnumTagSinglePayload for StartCallCATPatternsIdentifiers(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xDD)
  {
    if (a2 + 35 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 35) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 36;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x24;
  v5 = v6 - 36;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for StartCallCATPatternsIdentifiers(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 35 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 35) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xDD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xDC)
  {
    v6 = ((a2 - 221) >> 8) + 1;
    *result = a2 + 35;
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
          *result = a2 + 35;
        }

        break;
    }
  }

  return result;
}

uint64_t type metadata completion function for StartCallConfirmContactsParameters()
{
  _s16SiriDialogEngine15SpeakableStringVSgMaTm_1(319, &lazy cache variable for type metadata for SpeakableString?, &type metadata accessor for SpeakableString, &type metadata accessor for Optional);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    _s16SiriDialogEngine15SpeakableStringVSgMaTm_1(319, &lazy cache variable for type metadata for DialogPerson?, &type metadata accessor for DialogPerson, &type metadata accessor for Optional);
    if (v4 > 0x3F)
    {
      return v3;
    }

    else
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v1;
}

void type metadata completion function for StartCallErrorWithCodeAirplaneModeEnabledParameters()
{
  _s16SiriDialogEngine15SpeakableStringVSgMaTm_1(319, &lazy cache variable for type metadata for SirikitDeviceState?, &type metadata accessor for SirikitDeviceState, &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    _s16SiriDialogEngine15SpeakableStringVSgMaTm_1(319, &lazy cache variable for type metadata for SpeakableString?, &type metadata accessor for SpeakableString, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t type metadata completion function for StartCallErrorWithCodeCallingServiceNotAvailableParameters()
{
  _s16SiriDialogEngine15SpeakableStringVSgMaTm_1(319, &lazy cache variable for type metadata for SpeakableString?, &type metadata accessor for SpeakableString, &type metadata accessor for Optional);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    _s16SiriDialogEngine15SpeakableStringVSgMaTm_1(319, &lazy cache variable for type metadata for SirikitDeviceState?, &type metadata accessor for SirikitDeviceState, &type metadata accessor for Optional);
    if (v4 > 0x3F)
    {
      return v3;
    }

    else
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v1;
}

void type metadata completion function for StartCallErrorWithCodeAppConfigurationRequiredParameters()
{
  OUTLINED_FUNCTION_7_81();
  _s16SiriDialogEngine15SpeakableStringVSgMaTm_1(319, v0, v1, &type metadata accessor for Optional);
  if (v2 <= 0x3F)
  {
    OUTLINED_FUNCTION_79_8();
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t type metadata completion function for StartCallIntentConfirmationWithRestrictedContactsParameters()
{
  _s16SiriDialogEngine15SpeakableStringVSgMaTm_1(319, &lazy cache variable for type metadata for PhonePersonList?, type metadata accessor for PhonePersonList, &type metadata accessor for Optional);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    _s16SiriDialogEngine15SpeakableStringVSgMaTm_1(319, &lazy cache variable for type metadata for SpeakableString?, &type metadata accessor for SpeakableString, &type metadata accessor for Optional);
    if (v4 > 0x3F)
    {
      return v3;
    }

    else
    {
      _s16SiriDialogEngine15SpeakableStringVSgMaTm_1(319, &lazy cache variable for type metadata for PhoneStartCallIntent?, type metadata accessor for PhoneStartCallIntent, &type metadata accessor for Optional);
      if (v6 > 0x3F)
      {
        return v5;
      }

      else
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v1;
}

uint64_t type metadata completion function for StartCallIntentHandledResponseParameters()
{
  _s16SiriDialogEngine15SpeakableStringVSgMaTm_1(319, &lazy cache variable for type metadata for SpeakableString?, &type metadata accessor for SpeakableString, &type metadata accessor for Optional);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    _s16SiriDialogEngine15SpeakableStringVSgMaTm_1(319, &lazy cache variable for type metadata for SirikitDeviceState?, &type metadata accessor for SirikitDeviceState, &type metadata accessor for Optional);
    if (v4 > 0x3F)
    {
      return v3;
    }

    else
    {
      _s16SiriDialogEngine15SpeakableStringVSgMaTm_1(319, &lazy cache variable for type metadata for PhoneStartCallIntent?, type metadata accessor for PhoneStartCallIntent, &type metadata accessor for Optional);
      v1 = v5;
      if (v6 <= 0x3F)
      {
        _s16SiriDialogEngine15SpeakableStringVSgMaTm_1(319, &lazy cache variable for type metadata for PhonePersonList?, type metadata accessor for PhonePersonList, &type metadata accessor for Optional);
        v1 = v7;
        if (v8 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v1;
}

void *storeEnumTagSinglePayload for StartCallErrorWithCodeCallInProgressParameters(void *result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      return OUTLINED_FUNCTION_108_4(result, a2);
    }
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_108Tm()
{
  OUTLINED_FUNCTION_55_21();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_20_3(v3);
  if (*(v4 + 84) == v1)
  {
    v5 = OUTLINED_FUNCTION_58_12();

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

uint64_t __swift_store_extra_inhabitant_index_109Tm()
{
  OUTLINED_FUNCTION_126_2();
  OUTLINED_FUNCTION_1_15();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  result = OUTLINED_FUNCTION_20_3(v4);
  if (*(v6 + 84) == v3)
  {
    v7 = OUTLINED_FUNCTION_27_32();

    return __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  }

  else
  {
    *(v1 + *(v2 + 20)) = v0 + 1;
  }

  return result;
}

void type metadata completion function for StartCallPromptForContactsParameters()
{
  _s16SiriDialogEngine15SpeakableStringVSgMaTm_1(319, &lazy cache variable for type metadata for SpeakableString?, &type metadata accessor for SpeakableString, &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    type metadata accessor for Double?();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata completion function for StartCallUnsupportedCallCapabilityCameraNotAccessibleParameters()
{
  OUTLINED_FUNCTION_7_81();
  _s16SiriDialogEngine15SpeakableStringVSgMaTm_1(319, v0, v1, &type metadata accessor for Optional);
  if (v2 <= 0x3F)
  {
    OUTLINED_FUNCTION_79_8();
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void type metadata completion function for StartCallSimpleDisambiguateContactsParameters(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t (*a6)(uint64_t, uint64_t))
{
  _s16SiriDialogEngine15SpeakableStringVSgMaTm_1(319, a4, a5, a6);
  if (v6 <= 0x3F)
  {
    OUTLINED_FUNCTION_7_81();
    _s16SiriDialogEngine15SpeakableStringVSgMaTm_1(319, v7, v8, &type metadata accessor for Optional);
    if (v9 <= 0x3F)
    {
      OUTLINED_FUNCTION_79_8();
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_129Tm()
{
  OUTLINED_FUNCTION_55_21();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_20_3(v3);
  if (*(v4 + 84) != v1)
  {
    return OUTLINED_FUNCTION_8_78(*(v0 + *(v2 + 20)));
  }

  v5 = OUTLINED_FUNCTION_58_12();

  return __swift_getEnumTagSinglePayload(v5, v6, v7);
}

uint64_t __swift_store_extra_inhabitant_index_130Tm()
{
  OUTLINED_FUNCTION_126_2();
  OUTLINED_FUNCTION_1_15();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  result = OUTLINED_FUNCTION_20_3(v4);
  if (*(v6 + 84) == v3)
  {
    v7 = OUTLINED_FUNCTION_27_32();

    return __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  }

  else
  {
    *(v1 + *(v2 + 20)) = v0;
  }

  return result;
}

void type metadata completion function for StartCallUnsupportedContactsNoContactFoundParameters()
{
  _s16SiriDialogEngine15SpeakableStringVSgMaTm_1(319, &lazy cache variable for type metadata for SpeakableString?, &type metadata accessor for SpeakableString, &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    _s16SiriDialogEngine15SpeakableStringVSgMaTm_1(319, &lazy cache variable for type metadata for DialogPerson?, &type metadata accessor for DialogPerson, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t type metadata completion function for StartCallUnsupportedContactsNoHandleForLabelParameters()
{
  _s16SiriDialogEngine15SpeakableStringVSgMaTm_1(319, &lazy cache variable for type metadata for PhoneStartCallIntent?, type metadata accessor for PhoneStartCallIntent, &type metadata accessor for Optional);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    _s16SiriDialogEngine15SpeakableStringVSgMaTm_1(319, &lazy cache variable for type metadata for SpeakableString?, &type metadata accessor for SpeakableString, &type metadata accessor for Optional);
    v1 = v3;
    if (v4 <= 0x3F)
    {
      _s16SiriDialogEngine15SpeakableStringVSgMaTm_1(319, &lazy cache variable for type metadata for DialogPersonHandle?, &type metadata accessor for DialogPersonHandle, &type metadata accessor for Optional);
      if (v6 > 0x3F)
      {
        return v5;
      }

      _s16SiriDialogEngine15SpeakableStringVSgMaTm_1(319, &lazy cache variable for type metadata for DialogPerson?, &type metadata accessor for DialogPerson, &type metadata accessor for Optional);
      if (v7 > 0x3F)
      {
        return v5;
      }

      else
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v1;
}

void _s16SiriDialogEngine15SpeakableStringVSgMaTm_1(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t __swift_get_extra_inhabitant_index_165Tm()
{
  OUTLINED_FUNCTION_98_6();
  if (v1)
  {
    return OUTLINED_FUNCTION_8_78(*v0);
  }

  OUTLINED_FUNCTION_122_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v3 = OUTLINED_FUNCTION_78_11();

  return __swift_getEnumTagSinglePayload(v3, v4, v5);
}

void __swift_store_extra_inhabitant_index_166Tm()
{
  OUTLINED_FUNCTION_1_15();
  if (v2 == 2147483646)
  {
    *v1 = v0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    v3 = OUTLINED_FUNCTION_78_11();

    __swift_storeEnumTagSinglePayload(v3, v4, v0, v5);
  }
}

void type metadata completion function for StartCallUnsupportedDeviceFaceTimeLinkParameters()
{
  _s16SiriDialogEngine15SpeakableStringVSgMaTm_1(319, &lazy cache variable for type metadata for SirikitDeviceState?, &type metadata accessor for SirikitDeviceState, &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    OUTLINED_FUNCTION_7_81();
    _s16SiriDialogEngine15SpeakableStringVSgMaTm_1(319, v1, v2, &type metadata accessor for Optional);
    if (v3 <= 0x3F)
    {
      OUTLINED_FUNCTION_79_8();
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t getEnumTagSinglePayload for StartCallErrorWithCodeDownTimeRestrictionEnabledParameters(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 16))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

void *storeEnumTagSinglePayload for StartCallErrorWithCodeDownTimeRestrictionEnabledParameters(void *result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    result[1] = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      return OUTLINED_FUNCTION_108_4(result, a2);
    }
  }

  return result;
}

void type metadata completion function for StartCallUnsupportedPreferredCallProviderAccountSetupRequiredParameters()
{
  _s16SiriDialogEngine15SpeakableStringVSgMaTm_1(319, &lazy cache variable for type metadata for SirikitDeviceState?, &type metadata accessor for SirikitDeviceState, &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    _s16SiriDialogEngine15SpeakableStringVSgMaTm_1(319, &lazy cache variable for type metadata for PhoneStartCallIntent?, type metadata accessor for PhoneStartCallIntent, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      _s16SiriDialogEngine15SpeakableStringVSgMaTm_1(319, &lazy cache variable for type metadata for SpeakableString?, &type metadata accessor for SpeakableString, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t OUTLINED_FUNCTION_26_35(uint64_t result)
{
  *(result + 8) = v1;
  v3 = *(v2 + 40);
  return result;
}

uint64_t OUTLINED_FUNCTION_37_27()
{
  result = 0;
  *(v0 + 56) = 0;
  *(v0 + 64) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_38_28(char a1, char a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 24) = a5;
  *(v6 + 32) = v5;
  *(v6 + 16) = a4;
  *(v6 + 90) = a3;
  *(v6 + 89) = a2;
  *(v6 + 88) = a1;
  return 0;
}

uint64_t OUTLINED_FUNCTION_40_29(char a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = v3;
  *(v4 + 16) = a2;
  *(v4 + 88) = a1;
  return 0;
}

uint64_t OUTLINED_FUNCTION_47_25()
{
  v2 = *(v0 + 40);
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);
  **(v0 + 48) = 0;
  v5 = *(v2 + 20);

  return type metadata accessor for SpeakableString();
}

uint64_t OUTLINED_FUNCTION_50_27(uint64_t result)
{
  *(v2 + 56) = v1;
  *(v3 + 48) = v1;
  *(v3 + 72) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_56_16()
{
  v2 = *(v0 + 56);
  v3 = *(v0 + 40);

  return outlined destroy of StartCallConfirmContactsParameters();
}

uint64_t OUTLINED_FUNCTION_64_16()
{
  v2 = *(v0 + 48);

  return outlined destroy of StartCallConfirmContactsParameters();
}

uint64_t OUTLINED_FUNCTION_65_19()
{
  v2 = *(v0 + 48);

  return outlined destroy of StartCallConfirmContactsParameters();
}

uint64_t OUTLINED_FUNCTION_66_16()
{
  v2 = *(v0 + 48);

  return outlined destroy of StartCallConfirmContactsParameters();
}

uint64_t OUTLINED_FUNCTION_70_11()
{
  v2 = *(v0 + 48);

  return outlined destroy of StartCallConfirmContactsParameters();
}

uint64_t OUTLINED_FUNCTION_72_12()
{
  v2 = *(v0 + 48);

  return outlined destroy of StartCallConfirmContactsParameters();
}

uint64_t OUTLINED_FUNCTION_73_10()
{
  v2 = *(v0 + 48);

  return outlined destroy of StartCallConfirmContactsParameters();
}

uint64_t OUTLINED_FUNCTION_74_7()
{
  v2 = *(v0 + 48);

  return outlined destroy of StartCallConfirmContactsParameters();
}

uint64_t OUTLINED_FUNCTION_97_5@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3[9] = a1;
  v3[10] = v2;
  v3[11] = a2;
  return 0;
}

double OUTLINED_FUNCTION_103_3()
{
  result = 0.0;
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_112_4(uint64_t a1)
{
  v2 = *(a1 + 20);

  return type metadata accessor for SpeakableString();
}

double OUTLINED_FUNCTION_119_5()
{
  result = 0.0;
  *(v0 + 144) = 0u;
  *(v0 + 160) = 0u;
  return result;
}

void OUTLINED_FUNCTION_123_4(uint64_t a1@<X8>)
{
  *(v1 + a1) = 0;
  *(v1 + *(v2 + 28)) = 0;
  v3 = *(v2 + 32);
}

uint64_t OUTLINED_FUNCTION_129_3(uint64_t result)
{
  *(result + 8) = v1;
  v3 = *(v2 + 48);
  return result;
}

uint64_t OUTLINED_FUNCTION_130_2()
{
  v2 = v0[90];
  v3 = v0[89];
  v4 = v0[88];

  return type metadata accessor for SpeakableString();
}

uint64_t OUTLINED_FUNCTION_134_1()
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
}

uint64_t OUTLINED_FUNCTION_136_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = __swift_storeEnumTagSinglePayload(a1, a2, a3, a4);
  v6 = *(v4 + 24);
  return result;
}

PhoneCallFlowDelegatePlugin::StartCallCATs::Properties_optional __swiftcall StartCallCATs.Properties.init(rawValue:)(Swift::String rawValue)
{
  v1 = _findStringSwitchCaseWithCache(cases:string:cache:)();

  if (v1 >= 0x45)
  {
    return 69;
  }

  else
  {
    return v1;
  }
}

unint64_t StartCallCATs.Properties.rawValue.getter(char a1)
{
  result = 0xD000000000000028;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000014;
      break;
    case 2:
    case 36:
      result = 0xD00000000000001FLL;
      break;
    case 3:
      result = 0xD000000000000019;
      break;
    case 4:
      result = 0xD000000000000020;
      break;
    case 5:
    case 28:
      result = 0xD000000000000026;
      break;
    case 6:
      result = 0xD00000000000001ALL;
      break;
    case 7:
    case 47:
      result = 0xD000000000000023;
      break;
    case 8:
    case 26:
    case 29:
    case 60:
      result = 0xD000000000000024;
      break;
    case 9:
      result = 0xD00000000000001ELL;
      break;
    case 10:
    case 34:
      result = 0xD00000000000002ELL;
      break;
    case 11:
    case 15:
    case 21:
    case 33:
    case 43:
      result = 0xD000000000000025;
      break;
    case 12:
      result = 0xD00000000000002CLL;
      break;
    case 13:
      result = 0xD000000000000029;
      break;
    case 14:
    case 61:
      result = 0xD000000000000027;
      break;
    case 16:
    case 55:
      result = 0xD00000000000002BLL;
      break;
    case 17:
    case 32:
      result = 0xD00000000000001CLL;
      break;
    case 18:
      result = 0xD000000000000017;
      break;
    case 19:
    case 52:
    case 63:
      result = 0xD00000000000002ALL;
      break;
    case 20:
    case 24:
    case 38:
    case 59:
      result = 0xD00000000000002FLL;
      break;
    case 22:
    case 44:
      result = 0xD000000000000022;
      break;
    case 23:
    case 25:
      result = 0xD000000000000031;
      break;
    case 27:
    case 54:
      result = 0xD000000000000033;
      break;
    case 30:
    case 46:
      result = 0xD000000000000016;
      break;
    case 31:
      result = 0xD000000000000013;
      break;
    case 35:
      result = 0xD000000000000032;
      break;
    case 37:
    case 45:
    case 62:
      result = 0xD000000000000028;
      break;
    case 39:
    case 41:
      result = 0xD000000000000021;
      break;
    case 40:
      result = 0xD00000000000001DLL;
      break;
    case 42:
      result = 0xD00000000000001BLL;
      break;
    case 48:
    case 56:
      result = 0xD000000000000036;
      break;
    case 49:
      result = 0xD00000000000003ALL;
      break;
    case 50:
      result = 0xD000000000000037;
      break;
    case 51:
      result = 0xD00000000000003BLL;
      break;
    case 53:
      result = 0xD000000000000038;
      break;
    case 57:
      result = 0xD00000000000002DLL;
      break;
    case 58:
      result = 0xD000000000000034;
      break;
    case 64:
    case 68:
      result = 0xD00000000000003ELL;
      break;
    case 65:
      result = 0xD00000000000004CLL;
      break;
    case 66:
      result = 0xD000000000000044;
      break;
    case 67:
      result = 0xD00000000000003CLL;
      break;
    default:
      return result;
  }

  return result;
}

PhoneCallFlowDelegatePlugin::StartCallCATs::Properties_optional protocol witness for RawRepresentable.init(rawValue:) in conformance StartCallCATs.Properties@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::StartCallCATs::Properties_optional *a2@<X8>)
{
  result.value = StartCallCATs.Properties.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance StartCallCATs.Properties@<X0>(unint64_t *a1@<X8>)
{
  result = StartCallCATs.Properties.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t StartCallCATs.businessCallingFeatureDisabled(device:isFaceTimeOnlyDevice:completion:)()
{
  OUTLINED_FUNCTION_61_6();
  OUTLINED_FUNCTION_130_3();
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v2 = OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_0_2(v2, xmmword_424FF0);
  if (v1)
  {
    type metadata accessor for SirikitDeviceState();
    v3 = v1;
  }

  else
  {
    OUTLINED_FUNCTION_14();
  }

  v2[3].n128_u64[0] = v3;
  OUTLINED_FUNCTION_36_7();
  OUTLINED_FUNCTION_222_0(v4, v5);
  OUTLINED_FUNCTION_169_0(&type metadata for Bool);
  OUTLINED_FUNCTION_116_2();
  OUTLINED_FUNCTION_60_1();
}

uint64_t StartCallCATs.businessCallingFeatureDisabled(device:isFaceTimeOnlyDevice:)(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 24) = a2;
  *(v4 + 32) = v3;
  *(v4 + 64) = a3;
  *(v4 + 16) = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t StartCallCATs.businessCallingFeatureDisabled(device:isFaceTimeOnlyDevice:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_48_4();
  OUTLINED_FUNCTION_31();
  v12 = *(v10 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v13 = OUTLINED_FUNCTION_45_0();
  v14 = OUTLINED_FUNCTION_50_0(v13);
  OUTLINED_FUNCTION_0_2(v14, xmmword_424FF0);
  if (v12)
  {
    type metadata accessor for SirikitDeviceState();
  }

  else
  {
    v11[7] = 0;
    v11[8] = 0;
  }

  v15 = *(v10 + 64);
  v11[6] = v12;
  OUTLINED_FUNCTION_39_0();
  v11[11] = v16;
  OUTLINED_FUNCTION_73_1(v17);
  v18 = *(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:) + 1);
  OUTLINED_FUNCTION_29_4();
  OUTLINED_FUNCTION_101_5(v19);

  v20 = swift_task_alloc();
  v21 = OUTLINED_FUNCTION_16_12(v20);
  *v21 = v22;
  OUTLINED_FUNCTION_24(v21);
  OUTLINED_FUNCTION_82_9();
  OUTLINED_FUNCTION_65_2();

  return v27(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10);
}

{
  OUTLINED_FUNCTION_48_4();
  OUTLINED_FUNCTION_31();
  v12 = *(v10 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v13 = OUTLINED_FUNCTION_45_0();
  v14 = OUTLINED_FUNCTION_51(v13);
  OUTLINED_FUNCTION_0_2(v14, xmmword_424FF0);
  if (v12)
  {
    type metadata accessor for SirikitDeviceState();
  }

  else
  {
    v11[7] = 0;
    v11[8] = 0;
  }

  v15 = *(v10 + 56);
  v11[6] = v12;
  OUTLINED_FUNCTION_39_0();
  v11[11] = v16;
  OUTLINED_FUNCTION_73_1(v17);
  v18 = *(&async function pointer to dispatch thunk of CATWrapper.executeDialog(catId:parameters:) + 1);
  OUTLINED_FUNCTION_29_4();
  OUTLINED_FUNCTION_101_5(v19);

  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v10 + 40) = v20;
  *v20 = v21;
  OUTLINED_FUNCTION_39(v20);
  OUTLINED_FUNCTION_99_4();
  OUTLINED_FUNCTION_65_2();

  return v25(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10);
}

uint64_t StartCallCATs.businessCallingFeatureDisabled(device:isFaceTimeOnlyDevice:)(uint64_t a1, char a2)
{
  *(v3 + 56) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t StartCallCATs.businessCallingFeatureDisabled(device:isFaceTimeOnlyDevice:)()
{
  OUTLINED_FUNCTION_61_6();
  OUTLINED_FUNCTION_37_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v1 = OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_0_2(v1, xmmword_424FF0);
  if (v0)
  {
    type metadata accessor for SirikitDeviceState();
    v2 = v0;
  }

  else
  {
    OUTLINED_FUNCTION_13_8();
  }

  v1[3].n128_u64[0] = v2;
  OUTLINED_FUNCTION_36_7();
  OUTLINED_FUNCTION_101_5(v3);
  v1[5].n128_u64[1] = v4;
  OUTLINED_FUNCTION_168_1(&type metadata for Bool);
  OUTLINED_FUNCTION_149_0();
  dispatch thunk of CATWrapper.execute(catId:parameters:)();
  OUTLINED_FUNCTION_60_1();
}

void StartCallCATs.confirmApp(appName:isPhoneApp:completion:)()
{
  OUTLINED_FUNCTION_66();
  OUTLINED_FUNCTION_130_3();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v8);
  OUTLINED_FUNCTION_2_48();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v9 = OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_0_4(v9, xmmword_424FF0);
  v10 = OUTLINED_FUNCTION_69();
  outlined init with copy of SpeakableString?(v10, v11, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v12 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_57_25(v12);
  if (v13)
  {
    outlined destroy of SpeakableString?(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_35_2();
  }

  else
  {
    v9[4].n128_u64[1] = v4;
    __swift_allocate_boxed_opaque_existential_1(&v9[3]);
    OUTLINED_FUNCTION_40(v4);
    v15 = *(v14 + 32);
    OUTLINED_FUNCTION_175_1();
    v16();
  }

  OUTLINED_FUNCTION_16_6();
  v9[5].n128_u64[0] = v17;
  v9[5].n128_u64[1] = v18;
  v9[7].n128_u64[1] = &type metadata for Bool;
  v9[6].n128_u8[0] = v2 & 1;
  OUTLINED_FUNCTION_78_0();

  OUTLINED_FUNCTION_65();
}

uint64_t StartCallCATs.confirmApp(appName:isPhoneApp:)()
{
  OUTLINED_FUNCTION_15();
  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
  *(v1 + 72) = v3;
  *(v1 + 16) = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v5);
  v7 = *(v6 + 64);
  *(v1 + 40) = OUTLINED_FUNCTION_45();
  v8 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v8, v9, v10);
}

{
  OUTLINED_FUNCTION_75_6();
  v22 = v3;
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_64_7();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v4 = OUTLINED_FUNCTION_45_0();
  v5 = OUTLINED_FUNCTION_46_15(v4);
  v6 = OUTLINED_FUNCTION_0_4(v5, xmmword_424FF0);
  OUTLINED_FUNCTION_54_2(v6, v7, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v8 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_1_7(v8);
  if (v9)
  {
    outlined destroy of SpeakableString?(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_35_2();
  }

  else
  {
    OUTLINED_FUNCTION_43_2();
    OUTLINED_FUNCTION_6_0();
    v11 = *(v10 + 32);
    OUTLINED_FUNCTION_16_0();
    v12();
  }

  v13 = *(v1 + 72);
  OUTLINED_FUNCTION_16_6();
  *(v2 + 80) = v14;
  *(v2 + 88) = v15;
  OUTLINED_FUNCTION_73_1(v16);
  OUTLINED_FUNCTION_1_10(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  v17 = swift_task_alloc();
  v18 = OUTLINED_FUNCTION_22_19(v17);
  *v18 = v19;
  OUTLINED_FUNCTION_10_49(v18);
  OUTLINED_FUNCTION_37_17();

  return v20();
}

{
  OUTLINED_FUNCTION_15();
  *(v1 + 64) = v2;
  *(v1 + 16) = v3;
  *(v1 + 24) = v0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v4);
  v6 = *(v5 + 64);
  *(v1 + 32) = OUTLINED_FUNCTION_45();
  v7 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v7, v8, v9);
}

{
  OUTLINED_FUNCTION_75_6();
  v23 = v3;
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_60_9();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v4 = OUTLINED_FUNCTION_45_0();
  v5 = OUTLINED_FUNCTION_50_0(v4);
  v6 = OUTLINED_FUNCTION_0_4(v5, xmmword_424FF0);
  OUTLINED_FUNCTION_54_2(v6, v7, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v8 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_20(v8);
  if (v9)
  {
    outlined destroy of SpeakableString?(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_35_2();
  }

  else
  {
    OUTLINED_FUNCTION_43_2();
    OUTLINED_FUNCTION_6_0();
    v11 = *(v10 + 32);
    OUTLINED_FUNCTION_16_0();
    v12();
  }

  v13 = *(v1 + 64);
  OUTLINED_FUNCTION_16_6();
  *(v2 + 80) = v14;
  *(v2 + 88) = v15;
  OUTLINED_FUNCTION_73_1(v16);
  OUTLINED_FUNCTION_1_10(&async function pointer to dispatch thunk of CATWrapper.executeDialog(catId:parameters:));
  v17 = swift_task_alloc();
  v18 = OUTLINED_FUNCTION_61_4(v17);
  *v18 = v19;
  OUTLINED_FUNCTION_19_2(v18);
  v20 = OUTLINED_FUNCTION_38_1(20);

  return v21(v20);
}

void StartCallCATs.confirmApp(appName:isPhoneApp:)()
{
  OUTLINED_FUNCTION_61_6();
  v2 = v1;
  v3 = OUTLINED_FUNCTION_53_2();
  OUTLINED_FUNCTION_21(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v6);
  OUTLINED_FUNCTION_27_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v7 = OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_0_4(v7, xmmword_424FF0);
  OUTLINED_FUNCTION_40_15();
  v8 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_5_1(v8);
  if (v9)
  {
    outlined destroy of SpeakableString?(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_41_17();
  }

  else
  {
    OUTLINED_FUNCTION_55_2();
    OUTLINED_FUNCTION_24_23();
    v11 = *(v10 + 32);
    OUTLINED_FUNCTION_47_15();
    v12();
  }

  OUTLINED_FUNCTION_16_6();
  v7[5].n128_u64[0] = v13;
  v7[5].n128_u64[1] = v14;
  v7[7].n128_u64[1] = &type metadata for Bool;
  v7[6].n128_u8[0] = v2 & 1;
  OUTLINED_FUNCTION_111_6(20);
  dispatch thunk of CATWrapper.execute(catId:parameters:)();

  OUTLINED_FUNCTION_60_1();
}

void StartCallCATs.confirmCallCapability(callCapability:completion:)()
{
  OUTLINED_FUNCTION_61_6();
  OUTLINED_FUNCTION_57_11();
  v1 = OUTLINED_FUNCTION_53_2();
  OUTLINED_FUNCTION_21(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v4);
  OUTLINED_FUNCTION_27_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v5 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_34_24(v5, xmmword_424FD0);
  OUTLINED_FUNCTION_40_15();
  v6 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_5_1(v6);
  if (v7)
  {
    outlined destroy of SpeakableString?(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_41_17();
  }

  else
  {
    OUTLINED_FUNCTION_55_2();
    OUTLINED_FUNCTION_24_23();
    v9 = *(v8 + 32);
    OUTLINED_FUNCTION_47_15();
    v10();
  }

  OUTLINED_FUNCTION_119();
  OUTLINED_FUNCTION_49_12();

  OUTLINED_FUNCTION_60_1();
}

uint64_t StartCallCATs.confirmCallCapability(callCapability:)()
{
  OUTLINED_FUNCTION_15();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v4);
  v6 = *(v5 + 64);
  v1[5] = OUTLINED_FUNCTION_45();
  v7 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v7, v8, v9);
}

{
  OUTLINED_FUNCTION_75_6();
  v16 = v1;
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_64_7();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v2 = OUTLINED_FUNCTION_35_1();
  v3 = OUTLINED_FUNCTION_46_15(v2);
  v4 = OUTLINED_FUNCTION_34_24(v3, xmmword_424FD0);
  OUTLINED_FUNCTION_54_2(v4, v5, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v6 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_1_7(v6);
  if (v7)
  {
    outlined destroy of SpeakableString?(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_35_2();
  }

  else
  {
    OUTLINED_FUNCTION_43_2();
    OUTLINED_FUNCTION_6_0();
    v9 = *(v8 + 32);
    OUTLINED_FUNCTION_16_0();
    v10();
  }

  OUTLINED_FUNCTION_1_10(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  v11 = swift_task_alloc();
  v12 = OUTLINED_FUNCTION_22_19(v11);
  *v12 = v13;
  OUTLINED_FUNCTION_10_49(v12);
  OUTLINED_FUNCTION_37_17();

  return v14();
}

{
  OUTLINED_FUNCTION_15();
  v1[2] = v2;
  v1[3] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v3);
  v5 = *(v4 + 64);
  v1[4] = OUTLINED_FUNCTION_45();
  v6 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v6, v7, v8);
}

{
  OUTLINED_FUNCTION_75_6();
  v17 = v1;
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_60_9();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v2 = OUTLINED_FUNCTION_35_1();
  v3 = OUTLINED_FUNCTION_50_0(v2);
  v4 = OUTLINED_FUNCTION_34_24(v3, xmmword_424FD0);
  OUTLINED_FUNCTION_54_2(v4, v5, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v6 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_20(v6);
  if (v7)
  {
    outlined destroy of SpeakableString?(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_35_2();
  }

  else
  {
    OUTLINED_FUNCTION_43_2();
    OUTLINED_FUNCTION_6_0();
    v9 = *(v8 + 32);
    OUTLINED_FUNCTION_16_0();
    v10();
  }

  OUTLINED_FUNCTION_1_10(&async function pointer to dispatch thunk of CATWrapper.executeDialog(catId:parameters:));
  v11 = swift_task_alloc();
  v12 = OUTLINED_FUNCTION_61_4(v11);
  *v12 = v13;
  OUTLINED_FUNCTION_19_2(v12);
  v14 = OUTLINED_FUNCTION_38_1(31);

  return v15(v14);
}

void StartCallCATs.confirmCallCapability(callCapability:)()
{
  OUTLINED_FUNCTION_61_6();
  OUTLINED_FUNCTION_151_2();
  v1 = OUTLINED_FUNCTION_56_6();
  OUTLINED_FUNCTION_21(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v4);
  OUTLINED_FUNCTION_17_17();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v5 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_34_24(v5, xmmword_424FD0);
  OUTLINED_FUNCTION_50_14();
  v6 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_7_47(v6);
  if (v7)
  {
    outlined destroy of SpeakableString?(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_42_15();
  }

  else
  {
    OUTLINED_FUNCTION_54_16();
    OUTLINED_FUNCTION_19_12();
    v9 = *(v8 + 32);
    OUTLINED_FUNCTION_40_4();
    v10();
  }

  OUTLINED_FUNCTION_67_16();
  OUTLINED_FUNCTION_190();

  OUTLINED_FUNCTION_60_1();
}

void StartCallCATs.confirmContacts(isFaceTime:contactToConfirm:redactedContactToConfirm:isTopMatchConfirmation:isFoundInAppConfirmation:inferenceSource:completion:)()
{
  OUTLINED_FUNCTION_66();
  v38[2] = v0;
  v38[1] = v1;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v14);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v17);
  v19 = v38 - v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v20 = OUTLINED_FUNCTION_19_16();
  *(v20 + 16) = xmmword_427BC0;
  OUTLINED_FUNCTION_93();
  *(v21 + 32) = v22;
  *(v21 + 40) = v23;
  *(v21 + 48) = v13;
  OUTLINED_FUNCTION_27_2();
  v24[9] = &type metadata for Bool;
  v24[10] = 0xD000000000000010;
  v24[11] = v25;
  if (v11)
  {
    type metadata accessor for DialogPerson();
    v26 = v11;
  }

  else
  {
    OUTLINED_FUNCTION_7_7();
  }

  *(v20 + 96) = v26;
  OUTLINED_FUNCTION_36_7();
  *(v20 + 120) = v27;
  *(v20 + 128) = 0xD000000000000018;
  *(v20 + 136) = v28;
  if (v9)
  {
    type metadata accessor for DialogPerson();
    v29 = v9;
  }

  else
  {
    OUTLINED_FUNCTION_18_2();
    *(v20 + 152) = 0;
    *(v20 + 160) = 0;
  }

  *(v20 + 144) = v29;
  OUTLINED_FUNCTION_27_2();
  *(v20 + 168) = v30;
  *(v20 + 176) = 0xD000000000000016;
  *(v20 + 184) = v31;
  *(v20 + 192) = v7 & 1;
  OUTLINED_FUNCTION_27_2();
  *(v20 + 216) = &type metadata for Bool;
  *(v20 + 224) = 0xD000000000000018;
  *(v20 + 232) = v32;
  *(v20 + 240) = v5 & 1;
  OUTLINED_FUNCTION_208();
  *(v20 + 264) = &type metadata for Bool;
  *(v20 + 272) = v33;
  OUTLINED_FUNCTION_206_0();
  *(v20 + 280) = v34;
  outlined init with copy of SpeakableString?(v3, v19, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v35 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_9_40(v19, 1, v35);
  if (v36)
  {

    outlined destroy of SpeakableString?(v19, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v20 + 288) = 0u;
    *(v20 + 304) = 0u;
  }

  else
  {
    *(v20 + 312) = v35;
    __swift_allocate_boxed_opaque_existential_1((v20 + 288));
    OUTLINED_FUNCTION_40(v35);
    (*(v37 + 32))();
  }

  dispatch thunk of CATWrapper.execute(catId:parameters:completion:)();

  OUTLINED_FUNCTION_65();
}

uint64_t StartCallCATs.confirmContacts(isFaceTime:contactToConfirm:redactedContactToConfirm:isTopMatchConfirmation:isFoundInAppConfirmation:inferenceSource:)()
{
  OUTLINED_FUNCTION_15();
  *(v1 + 40) = v2;
  *(v1 + 48) = v0;
  *(v1 + 90) = v3;
  *(v1 + 89) = v4;
  *(v1 + 24) = v5;
  *(v1 + 32) = v6;
  *(v1 + 88) = v7;
  *(v1 + 16) = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v9);
  v11 = *(v10 + 64);
  *(v1 + 56) = OUTLINED_FUNCTION_45();
  v12 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v12, v13, v14);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  v3 = v2;
  OUTLINED_FUNCTION_6();
  *v4 = v3;
  v6 = *(v5 + 72);
  v7 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v8 = v7;
  v3[10] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_66_0();

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {
    v13 = v3[7];
    v12 = v3[8];

    OUTLINED_FUNCTION_8_1();

    return v14();
  }
}

{
  OUTLINED_FUNCTION_15();
  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  *(v1 + 82) = v3;
  *(v1 + 81) = v4;
  *(v1 + 16) = v5;
  *(v1 + 24) = v6;
  *(v1 + 80) = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v8);
  v10 = *(v9 + 64);
  *(v1 + 48) = OUTLINED_FUNCTION_45();
  v11 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v11, v12, v13);
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_4();
  v3 = v2;
  OUTLINED_FUNCTION_6();
  *v4 = v3;
  v6 = *(v5 + 64);
  v7 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v8 = v7;
  v3[9] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_66_0();

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {
    v13 = v3[6];
    v12 = v3[7];

    v14 = OUTLINED_FUNCTION_49();

    return v15(v14);
  }
}

uint64_t StartCallCATs.confirmContacts(isFaceTime:contactToConfirm:redactedContactToConfirm:isTopMatchConfirmation:isFoundInAppConfirmation:inferenceSource:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_61_0();
  OUTLINED_FUNCTION_31();
  v11 = *(v10 + 24);
  v12 = *(v10 + 88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v13 = OUTLINED_FUNCTION_19_16();
  *(v10 + 64) = v13;
  *(v13 + 16) = xmmword_427BC0;
  OUTLINED_FUNCTION_93();
  *(v14 + 32) = v15;
  *(v14 + 40) = v16;
  *(v14 + 48) = v12;
  OUTLINED_FUNCTION_27_2();
  OUTLINED_FUNCTION_203(v17, v18);
  if (v11)
  {
    type metadata accessor for DialogPerson();
  }

  else
  {
    *(v13 + 104) = 0;
    *(v13 + 112) = 0;
  }

  v19 = *(v10 + 32);
  *(v13 + 96) = v11;
  OUTLINED_FUNCTION_27_2();
  *(v13 + 120) = v20;
  *(v13 + 128) = 0xD000000000000018;
  *(v13 + 136) = v21;
  v22 = 0;
  if (v19)
  {
    v22 = type metadata accessor for DialogPerson();
  }

  else
  {
    *(v13 + 152) = 0;
    *(v13 + 160) = 0;
  }

  v23 = *(v10 + 56);
  v24 = *(v10 + 40);
  v25 = *(v10 + 90);
  v26 = *(v10 + 89);
  *(v13 + 144) = v19;
  OUTLINED_FUNCTION_197_0(v22);
  OUTLINED_FUNCTION_119_6();
  OUTLINED_FUNCTION_169(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR, v27);
  v28 = type metadata accessor for SpeakableString();
  v29 = OUTLINED_FUNCTION_45_20();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v29, v30, v28);
  v32 = *(v10 + 56);
  v33 = *(v10 + 24);
  v34 = *(v10 + 32);
  if (EnumTagSinglePayload == 1)
  {
    v35 = *(v10 + 32);

    outlined destroy of SpeakableString?(v32, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v13 + 288) = 0u;
    *(v13 + 304) = 0u;
  }

  else
  {
    *(v13 + 312) = v28;
    __swift_allocate_boxed_opaque_existential_1((v13 + 288));
    OUTLINED_FUNCTION_19_12();
    (*(v36 + 32))();
  }

  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  v51 = v37;
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v10 + 72) = v38;
  *v38 = v39;
  v38[1] = StartCallCATs.confirmContacts(isFaceTime:contactToConfirm:redactedContactToConfirm:isTopMatchConfirmation:isFoundInAppConfirmation:inferenceSource:);
  v40 = *(v10 + 48);
  v41 = *(v10 + 16);
  OUTLINED_FUNCTION_120_4();
  OUTLINED_FUNCTION_60();

  return v46(v42, v43, v44, v45, v46, v47, v48, v49, v51, a10);
}

{
  OUTLINED_FUNCTION_61_0();
  OUTLINED_FUNCTION_31();
  v11 = *(v10 + 16);
  v12 = *(v10 + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v13 = OUTLINED_FUNCTION_19_16();
  *(v10 + 56) = v13;
  *(v13 + 16) = xmmword_427BC0;
  OUTLINED_FUNCTION_93();
  *(v14 + 32) = v15;
  *(v14 + 40) = v16;
  *(v14 + 48) = v12;
  OUTLINED_FUNCTION_27_2();
  OUTLINED_FUNCTION_203(v17, v18);
  if (v11)
  {
    type metadata accessor for DialogPerson();
  }

  else
  {
    *(v13 + 104) = 0;
    *(v13 + 112) = 0;
  }

  v19 = *(v10 + 24);
  *(v13 + 96) = v11;
  OUTLINED_FUNCTION_27_2();
  *(v13 + 120) = v20;
  *(v13 + 128) = 0xD000000000000018;
  *(v13 + 136) = v21;
  v22 = 0;
  if (v19)
  {
    v22 = type metadata accessor for DialogPerson();
  }

  else
  {
    *(v13 + 152) = 0;
    *(v13 + 160) = 0;
  }

  v23 = *(v10 + 48);
  v24 = *(v10 + 32);
  v25 = *(v10 + 82);
  v26 = *(v10 + 81);
  *(v13 + 144) = v19;
  OUTLINED_FUNCTION_197_0(v22);
  OUTLINED_FUNCTION_119_6();
  OUTLINED_FUNCTION_169(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR, v27);
  v28 = type metadata accessor for SpeakableString();
  v29 = OUTLINED_FUNCTION_45_20();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v29, v30, v28);
  v32 = *(v10 + 48);
  v33 = *(v10 + 16);
  v34 = *(v10 + 24);
  if (EnumTagSinglePayload == 1)
  {
    v35 = *(v10 + 24);

    outlined destroy of SpeakableString?(v32, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v13 + 288) = 0u;
    *(v13 + 304) = 0u;
  }

  else
  {
    *(v13 + 312) = v28;
    __swift_allocate_boxed_opaque_existential_1((v13 + 288));
    OUTLINED_FUNCTION_19_12();
    (*(v36 + 32))();
  }

  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapper.executeDialog(catId:parameters:));
  v50 = v37;
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v10 + 64) = v38;
  *v38 = v39;
  v38[1] = StartCallCATs.confirmContacts(isFaceTime:contactToConfirm:redactedContactToConfirm:isTopMatchConfirmation:isFoundInAppConfirmation:inferenceSource:);
  v40 = *(v10 + 40);
  OUTLINED_FUNCTION_212();
  OUTLINED_FUNCTION_60();

  return v44(v41, v42, v43, v44, v45, v46, v47, v48, v50, a10);
}

void StartCallCATs.confirmContacts(isFaceTime:contactToConfirm:redactedContactToConfirm:isTopMatchConfirmation:isFoundInAppConfirmation:inferenceSource:)()
{
  OUTLINED_FUNCTION_66();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v16);
  OUTLINED_FUNCTION_2_48();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v17 = OUTLINED_FUNCTION_19_16();
  *(v17 + 16) = xmmword_427BC0;
  OUTLINED_FUNCTION_93();
  *(v18 + 32) = v19;
  *(v18 + 40) = v20;
  *(v18 + 48) = v12;
  OUTLINED_FUNCTION_27_2();
  v21[9] = &type metadata for Bool;
  v21[10] = 0xD000000000000010;
  v21[11] = v22;
  if (v10)
  {
    type metadata accessor for DialogPerson();
    v23 = v10;
  }

  else
  {
    OUTLINED_FUNCTION_71_12();
  }

  *(v17 + 96) = v23;
  OUTLINED_FUNCTION_36_7();
  *(v17 + 120) = v24;
  *(v17 + 128) = 0xD000000000000018;
  *(v17 + 136) = v25;
  if (v8)
  {
    type metadata accessor for DialogPerson();
    v26 = v8;
  }

  else
  {
    OUTLINED_FUNCTION_18_2();
    *(v17 + 152) = 0;
    *(v17 + 160) = 0;
  }

  *(v17 + 144) = v26;
  OUTLINED_FUNCTION_27_2();
  *(v17 + 168) = v27;
  *(v17 + 176) = 0xD000000000000016;
  *(v17 + 184) = v28;
  *(v17 + 192) = v6 & 1;
  OUTLINED_FUNCTION_27_2();
  *(v17 + 216) = &type metadata for Bool;
  *(v17 + 224) = 0xD000000000000018;
  *(v17 + 232) = v29;
  *(v17 + 240) = v4 & 1;
  OUTLINED_FUNCTION_208();
  *(v17 + 264) = &type metadata for Bool;
  *(v17 + 272) = v30;
  OUTLINED_FUNCTION_206_0();
  *(v17 + 280) = v31;
  v32 = OUTLINED_FUNCTION_69();
  outlined init with copy of SpeakableString?(v32, v33, v34, v35);
  v36 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_57_25(v36);
  if (v37)
  {

    outlined destroy of SpeakableString?(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v17 + 288) = 0u;
    *(v17 + 304) = 0u;
  }

  else
  {
    *(v17 + 312) = v2;
    __swift_allocate_boxed_opaque_existential_1((v17 + 288));
    OUTLINED_FUNCTION_40(v2);
    v39 = *(v38 + 32);
    OUTLINED_FUNCTION_175_1();
    v40();
  }

  dispatch thunk of CATWrapper.execute(catId:parameters:)();

  OUTLINED_FUNCTION_65();
}

void StartCallCATs.confirmDestinationType(destinationType:completion:)()
{
  OUTLINED_FUNCTION_61_6();
  OUTLINED_FUNCTION_57_11();
  v1 = OUTLINED_FUNCTION_53_2();
  OUTLINED_FUNCTION_21(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v4);
  OUTLINED_FUNCTION_27_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v5 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_35_26(v5, xmmword_424FD0);
  OUTLINED_FUNCTION_40_15();
  v6 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_5_1(v6);
  if (v7)
  {
    outlined destroy of SpeakableString?(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_41_17();
  }

  else
  {
    OUTLINED_FUNCTION_55_2();
    OUTLINED_FUNCTION_24_23();
    v9 = *(v8 + 32);
    OUTLINED_FUNCTION_47_15();
    v10();
  }

  OUTLINED_FUNCTION_119();
  OUTLINED_FUNCTION_49_12();

  OUTLINED_FUNCTION_60_1();
}

uint64_t StartCallCATs.confirmDestinationType(destinationType:)()
{
  OUTLINED_FUNCTION_15();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v4);
  v6 = *(v5 + 64);
  v1[5] = OUTLINED_FUNCTION_45();
  v7 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v7, v8, v9);
}

{
  OUTLINED_FUNCTION_75_6();
  v16 = v1;
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_64_7();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v2 = OUTLINED_FUNCTION_35_1();
  v3 = OUTLINED_FUNCTION_46_15(v2);
  v4 = OUTLINED_FUNCTION_35_26(v3, xmmword_424FD0);
  OUTLINED_FUNCTION_54_2(v4, v5, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v6 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_1_7(v6);
  if (v7)
  {
    outlined destroy of SpeakableString?(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_35_2();
  }

  else
  {
    OUTLINED_FUNCTION_43_2();
    OUTLINED_FUNCTION_6_0();
    v9 = *(v8 + 32);
    OUTLINED_FUNCTION_16_0();
    v10();
  }

  OUTLINED_FUNCTION_1_10(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  v11 = swift_task_alloc();
  v12 = OUTLINED_FUNCTION_22_19(v11);
  *v12 = v13;
  OUTLINED_FUNCTION_10_49(v12);
  OUTLINED_FUNCTION_37_17();

  return v14();
}

{
  OUTLINED_FUNCTION_15();
  v1[2] = v2;
  v1[3] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v3);
  v5 = *(v4 + 64);
  v1[4] = OUTLINED_FUNCTION_45();
  v6 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v6, v7, v8);
}

{
  OUTLINED_FUNCTION_75_6();
  v17 = v1;
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_60_9();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v2 = OUTLINED_FUNCTION_35_1();
  v3 = OUTLINED_FUNCTION_50_0(v2);
  v4 = OUTLINED_FUNCTION_35_26(v3, xmmword_424FD0);
  OUTLINED_FUNCTION_54_2(v4, v5, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v6 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_20(v6);
  if (v7)
  {
    outlined destroy of SpeakableString?(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_35_2();
  }

  else
  {
    OUTLINED_FUNCTION_43_2();
    OUTLINED_FUNCTION_6_0();
    v9 = *(v8 + 32);
    OUTLINED_FUNCTION_16_0();
    v10();
  }

  OUTLINED_FUNCTION_1_10(&async function pointer to dispatch thunk of CATWrapper.executeDialog(catId:parameters:));
  v11 = swift_task_alloc();
  v12 = OUTLINED_FUNCTION_61_4(v11);
  *v12 = v13;
  OUTLINED_FUNCTION_19_2(v12);
  v14 = OUTLINED_FUNCTION_38_1(32);

  return v15(v14);
}

void StartCallCATs.confirmDestinationType(destinationType:)()
{
  OUTLINED_FUNCTION_61_6();
  OUTLINED_FUNCTION_151_2();
  v1 = OUTLINED_FUNCTION_56_6();
  OUTLINED_FUNCTION_21(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v4);
  OUTLINED_FUNCTION_17_17();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v5 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_35_26(v5, xmmword_424FD0);
  OUTLINED_FUNCTION_50_14();
  v6 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_7_47(v6);
  if (v7)
  {
    outlined destroy of SpeakableString?(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_42_15();
  }

  else
  {
    OUTLINED_FUNCTION_54_16();
    OUTLINED_FUNCTION_19_12();
    v9 = *(v8 + 32);
    OUTLINED_FUNCTION_40_4();
    v10();
  }

  OUTLINED_FUNCTION_67_16();
  OUTLINED_FUNCTION_190();

  OUTLINED_FUNCTION_60_1();
}

void StartCallCATs.confirmPreferredCallProvider(preferredCallProvider:device:completion:)()
{
  OUTLINED_FUNCTION_66();
  OUTLINED_FUNCTION_130_3();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v8);
  OUTLINED_FUNCTION_2_48();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v9 = OUTLINED_FUNCTION_45_0();
  *(v9 + 16) = xmmword_424FF0;
  OUTLINED_FUNCTION_27_2();
  *(v10 + 32) = 0xD000000000000015;
  *(v10 + 40) = v11;
  v12 = OUTLINED_FUNCTION_69();
  outlined init with copy of SpeakableString?(v12, v13, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v14 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_57_25(v14);
  if (v15)
  {
    outlined destroy of SpeakableString?(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_35_2();
  }

  else
  {
    *(v9 + 72) = v4;
    __swift_allocate_boxed_opaque_existential_1((v9 + 48));
    OUTLINED_FUNCTION_40(v4);
    v17 = *(v16 + 32);
    OUTLINED_FUNCTION_175_1();
    v18();
  }

  OUTLINED_FUNCTION_9_79();
  *(v9 + 80) = v19;
  *(v9 + 88) = v20;
  if (v2)
  {
    v21 = type metadata accessor for SirikitDeviceState();
    v22 = v2;
  }

  else
  {
    v21 = OUTLINED_FUNCTION_71_12();
  }

  OUTLINED_FUNCTION_164_1(v21, v22);
  OUTLINED_FUNCTION_62_3();
  OUTLINED_FUNCTION_29_11();

  OUTLINED_FUNCTION_65();
}

uint64_t StartCallCATs.confirmPreferredCallProvider(preferredCallProvider:device:)()
{
  OUTLINED_FUNCTION_15();
  v1[4] = v2;
  v1[5] = v0;
  v1[2] = v3;
  v1[3] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v5);
  v7 = *(v6 + 64);
  v1[6] = OUTLINED_FUNCTION_45();
  v8 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v8, v9, v10);
}

{
  OUTLINED_FUNCTION_15();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v4);
  v6 = *(v5 + 64);
  v1[5] = OUTLINED_FUNCTION_45();
  v7 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t StartCallCATs.confirmPreferredCallProvider(preferredCallProvider:device:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_48_4();
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_162_0();
  v11 = v10[6];
  v12 = v10[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v13 = OUTLINED_FUNCTION_45_0();
  v10[7] = v13;
  *(v13 + 16) = xmmword_424FF0;
  v14 = OUTLINED_FUNCTION_0_8(v13, "preferredCallProvider");
  OUTLINED_FUNCTION_54_2(v14, v15, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v16 = type metadata accessor for SpeakableString();
  v17 = OUTLINED_FUNCTION_58(v16);
  v18 = v10[6];
  if (v17 == 1)
  {
    outlined destroy of SpeakableString?(v10[6], &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_35_2();
  }

  else
  {
    OUTLINED_FUNCTION_43_2();
    OUTLINED_FUNCTION_6_0();
    v20 = *(v19 + 32);
    OUTLINED_FUNCTION_16_0();
    v21();
  }

  v22 = v10[4];
  OUTLINED_FUNCTION_9_79();
  v24 = OUTLINED_FUNCTION_220_0(v23);
  if (v22)
  {
    v24 = type metadata accessor for SirikitDeviceState();
  }

  else
  {
    *(v13 + 104) = 0;
    *(v13 + 112) = 0;
  }

  OUTLINED_FUNCTION_218_0(v24);
  OUTLINED_FUNCTION_19_11(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));

  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v10[8] = v25;
  *v25 = v26;
  OUTLINED_FUNCTION_44_2(v25);
  OUTLINED_FUNCTION_82_9();
  OUTLINED_FUNCTION_65_2();

  return v31(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10);
}

{
  OUTLINED_FUNCTION_48_4();
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_162_0();
  v12 = v10[5];
  v13 = v10[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v14 = OUTLINED_FUNCTION_45_0();
  v15 = OUTLINED_FUNCTION_46_15(v14);
  *(v15 + 16) = xmmword_424FF0;
  v16 = OUTLINED_FUNCTION_0_8(v15, "preferredCallProvider");
  OUTLINED_FUNCTION_54_2(v16, v17, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v18 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_1_7(v18);
  if (v19)
  {
    outlined destroy of SpeakableString?(v12, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_35_2();
  }

  else
  {
    OUTLINED_FUNCTION_43_2();
    OUTLINED_FUNCTION_6_0();
    v21 = *(v20 + 32);
    OUTLINED_FUNCTION_16_0();
    v22();
  }

  v23 = v10[3];
  OUTLINED_FUNCTION_9_79();
  v25 = OUTLINED_FUNCTION_220_0(v24);
  if (v23)
  {
    v25 = type metadata accessor for SirikitDeviceState();
  }

  else
  {
    *(v11 + 104) = 0;
    *(v11 + 112) = 0;
  }

  OUTLINED_FUNCTION_218_0(v25);
  OUTLINED_FUNCTION_19_11(&async function pointer to dispatch thunk of CATWrapper.executeDialog(catId:parameters:));

  v26 = swift_task_alloc();
  v27 = OUTLINED_FUNCTION_22_19(v26);
  *v27 = v28;
  OUTLINED_FUNCTION_114_0(v27);
  OUTLINED_FUNCTION_99_4();
  OUTLINED_FUNCTION_65_2();

  return v32(v29, v30, v31, v32, v33, v34, v35, v36, a9, a10);
}

void StartCallCATs.confirmPreferredCallProvider(preferredCallProvider:device:)()
{
  OUTLINED_FUNCTION_66();
  v2 = v1;
  v3 = OUTLINED_FUNCTION_53_2();
  OUTLINED_FUNCTION_21(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v6);
  OUTLINED_FUNCTION_27_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v7 = OUTLINED_FUNCTION_45_0();
  *(v7 + 16) = xmmword_424FF0;
  OUTLINED_FUNCTION_27_2();
  *(v8 + 32) = 0xD000000000000015;
  *(v8 + 40) = v9;
  OUTLINED_FUNCTION_40_15();
  v10 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_5_1(v10);
  if (v11)
  {
    outlined destroy of SpeakableString?(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_41_17();
  }

  else
  {
    OUTLINED_FUNCTION_55_2();
    OUTLINED_FUNCTION_24_23();
    v13 = *(v12 + 32);
    OUTLINED_FUNCTION_47_15();
    v14();
  }

  OUTLINED_FUNCTION_9_79();
  *(v7 + 80) = v15;
  *(v7 + 88) = v16;
  if (v2)
  {
    v17 = type metadata accessor for SirikitDeviceState();
    v18 = v2;
  }

  else
  {
    v17 = OUTLINED_FUNCTION_18_2();
    *(v7 + 104) = 0;
    *(v7 + 112) = 0;
  }

  *(v7 + 96) = v18;
  *(v7 + 120) = v17;
  OUTLINED_FUNCTION_171();
  OUTLINED_FUNCTION_131_2();
  dispatch thunk of CATWrapper.execute(catId:parameters:)();

  OUTLINED_FUNCTION_65();
}

uint64_t StartCallCATs.disambiguateApps(isOnlyPhoneAndFaceTime:completion:)(char a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  *(OUTLINED_FUNCTION_35_1() + 16) = xmmword_424FD0;
  OUTLINED_FUNCTION_27_2();
  *(v2 + 32) = 0xD000000000000016;
  *(v2 + 40) = v3;
  *(v2 + 72) = &type metadata for Bool;
  *(v2 + 48) = a1;
  OUTLINED_FUNCTION_29_11();
}

uint64_t StartCallCATs.disambiguateApps(isOnlyPhoneAndFaceTime:)(uint64_t a1, char a2)
{
  *(v3 + 56) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t StartCallCATs.disambiguateApps(isOnlyPhoneAndFaceTime:)()
{
  OUTLINED_FUNCTION_75_6();
  v13 = v1;
  OUTLINED_FUNCTION_23_0();
  v2 = *(v0 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_27_2();
  *(v4 + 32) = 0xD000000000000016;
  *(v4 + 40) = v5;
  *(v4 + 72) = &type metadata for Bool;
  *(v4 + 48) = v2;
  OUTLINED_FUNCTION_1_10(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  *(v0 + 32) = v3;
  *(v3 + 16) = v6;
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 40) = v7;
  *v7 = v8;
  v7[1] = AddCallParticipantCATs.promptForParticipant(isUnsupportedFollowup:);
  v9 = *(v0 + 16);
  v10 = *(v0 + 24);

  return v12(v9, 0xD00000000000001ALL, 0x8000000000454F80, v3);
}

{
  OUTLINED_FUNCTION_75_6();
  v12 = v1;
  OUTLINED_FUNCTION_23_0();
  v2 = *(v0 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_27_2();
  *(v4 + 32) = 0xD000000000000016;
  *(v4 + 40) = v5;
  *(v4 + 72) = &type metadata for Bool;
  *(v4 + 48) = v2;
  OUTLINED_FUNCTION_1_10(&async function pointer to dispatch thunk of CATWrapper.executeDialog(catId:parameters:));
  *(v0 + 24) = v3;
  *(v3 + 16) = v6;
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 32) = v7;
  *v7 = v8;
  v7[1] = AddCallParticipantCATs.promptForParticipant(isUnsupportedFollowup:);
  v9 = *(v0 + 16);

  return v11(0xD00000000000001ALL, 0x8000000000454F80, v3);
}

uint64_t StartCallCATs.disambiguateApps(isOnlyPhoneAndFaceTime:)(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 48) = a1;
  return OUTLINED_FUNCTION_0_0();
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  *(OUTLINED_FUNCTION_35_1() + 16) = xmmword_424FD0;
  OUTLINED_FUNCTION_27_2();
  *(v2 + 32) = 0xD000000000000016;
  *(v2 + 40) = v3;
  *(v2 + 72) = &type metadata for Bool;
  *(v2 + 48) = a1;
  dispatch thunk of CATWrapper.execute(catId:parameters:)();
}

uint64_t StartCallCATs.disambiguateAppsVoiceMode(appNames:completion:)()
{
  OUTLINED_FUNCTION_23_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v1 = OUTLINED_FUNCTION_35_1();
  v2 = OUTLINED_FUNCTION_12_2(v1, xmmword_424FD0);
  OUTLINED_FUNCTION_150_1(v2, v3);
  v1[4].n128_u64[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay16SiriDialogEngine15SpeakableStringVGMd, &_sSay16SiriDialogEngine15SpeakableStringVGMR);
  v1[3].n128_u64[0] = v0;

  OUTLINED_FUNCTION_78_0();
}

uint64_t StartCallCATs.disambiguateAppsVoiceMode(appNames:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t StartCallCATs.disambiguateAppsVoiceMode(appNames:)()
{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_23_0();
  v2 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_35_1();
  v4 = OUTLINED_FUNCTION_50_0(v3);
  v5 = OUTLINED_FUNCTION_12_2(v4, xmmword_424FD0);
  OUTLINED_FUNCTION_150_1(v5, v6);
  *(v1 + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay16SiriDialogEngine15SpeakableStringVGMd, &_sSay16SiriDialogEngine15SpeakableStringVGMR);
  *(v1 + 48) = v2;
  OUTLINED_FUNCTION_7_82(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));

  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_16_12(v7);
  *v8 = v9;
  OUTLINED_FUNCTION_19_10(v8);
  OUTLINED_FUNCTION_41_2();
  OUTLINED_FUNCTION_65_1();

  return v14(v10, v11, v12, v13, v14, v15, v16, v17);
}

{
  OUTLINED_FUNCTION_75_6();
  v12 = v1;
  OUTLINED_FUNCTION_23_0();
  v2 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_35_1();
  *(v0 + 32) = v3;
  v4 = OUTLINED_FUNCTION_12_2(v3, xmmword_424FD0);
  OUTLINED_FUNCTION_150_1(v4, v5);
  v3[4].n128_u64[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay16SiriDialogEngine15SpeakableStringVGMd, &_sSay16SiriDialogEngine15SpeakableStringVGMR);
  v3[3].n128_u64[0] = v2;
  v6 = *(&async function pointer to dispatch thunk of CATWrapper.executeDialog(catId:parameters:) + 1);
  v11 = (&async function pointer to dispatch thunk of CATWrapper.executeDialog(catId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executeDialog(catId:parameters:));

  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_117(v7);
  *v8 = v9;
  OUTLINED_FUNCTION_39(v8);

  return v11(0xD000000000000023, 0x8000000000454FA0, v3);
}

uint64_t StartCallCATs.disambiguateAppsVoiceMode(appNames:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t StartCallCATs.disambiguateAppsVoiceMode(appNames:)(unint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v2 = OUTLINED_FUNCTION_35_1();
  v3 = OUTLINED_FUNCTION_12_2(v2, xmmword_424FD0);
  OUTLINED_FUNCTION_150_1(v3, v4);
  v2[4].n128_u64[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay16SiriDialogEngine15SpeakableStringVGMd, &_sSay16SiriDialogEngine15SpeakableStringVGMR);
  v2[3].n128_u64[0] = a1;

  OUTLINED_FUNCTION_111_6(35);
  dispatch thunk of CATWrapper.execute(catId:parameters:)();
}

uint64_t StartCallCATs.disambiguateCallCapability()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_18(v0);
  *v1 = v2;
  v1[1] = closure #1 in ActionableCallControlFlow.execute();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_35_14();

  return v3();
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_1_10(&async function pointer to dispatch thunk of CATWrapper.executeDialog(catId:parameters:));
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_15_2(v0);
  *v1 = v2;
  v1[1] = AddCallParticipantCATs.unsupportedParticipantsMultipleContactsUnsupported();
  OUTLINED_FUNCTION_32();
  v3 = OUTLINED_FUNCTION_36_1(36);

  return v4(v3);
}

{
  return OUTLINED_FUNCTION_33_1();
}

void StartCallCATs.disambiguateContacts(requestedRelationship:completion:)()
{
  OUTLINED_FUNCTION_66();
  OUTLINED_FUNCTION_57_11();
  v1 = OUTLINED_FUNCTION_53_2();
  OUTLINED_FUNCTION_21(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v4);
  OUTLINED_FUNCTION_27_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  *(OUTLINED_FUNCTION_35_1() + 16) = xmmword_424FD0;
  OUTLINED_FUNCTION_27_2();
  *(v5 + 32) = 0xD000000000000015;
  *(v5 + 40) = v6;
  OUTLINED_FUNCTION_40_15();
  v7 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_5_1(v7);
  if (v8)
  {
    outlined destroy of SpeakableString?(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_41_17();
  }

  else
  {
    OUTLINED_FUNCTION_55_2();
    OUTLINED_FUNCTION_24_23();
    v10 = *(v9 + 32);
    OUTLINED_FUNCTION_47_15();
    v11();
  }

  dispatch thunk of CATWrapper.execute(catId:parameters:completion:)();

  OUTLINED_FUNCTION_65();
}

uint64_t StartCallCATs.disambiguateContacts(requestedRelationship:)()
{
  OUTLINED_FUNCTION_15();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v4);
  v6 = *(v5 + 64);
  v1[5] = OUTLINED_FUNCTION_45();
  v7 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v7, v8, v9);
}

{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_162_0();
  OUTLINED_FUNCTION_64_7();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v1 = OUTLINED_FUNCTION_35_1();
  v2 = OUTLINED_FUNCTION_46_15(v1);
  *(v2 + 16) = xmmword_424FD0;
  v3 = OUTLINED_FUNCTION_0_8(v2, "requestedRelationship");
  OUTLINED_FUNCTION_54_2(v3, v4, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v5 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_1_7(v5);
  if (v6)
  {
    outlined destroy of SpeakableString?(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_35_2();
  }

  else
  {
    OUTLINED_FUNCTION_43_2();
    OUTLINED_FUNCTION_6_0();
    v8 = *(v7 + 32);
    OUTLINED_FUNCTION_16_0();
    v9();
  }

  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_22_19(v10);
  *v11 = v12;
  OUTLINED_FUNCTION_24(v11);
  OUTLINED_FUNCTION_120_4();
  OUTLINED_FUNCTION_65_1();

  return v17(v13, v14, v15, v16, v17, v18, v19, v20);
}

{
  OUTLINED_FUNCTION_15();
  v1[2] = v2;
  v1[3] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v3);
  v5 = *(v4 + 64);
  v1[4] = OUTLINED_FUNCTION_45();
  v6 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v6, v7, v8);
}

{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_162_0();
  OUTLINED_FUNCTION_60_9();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v1 = OUTLINED_FUNCTION_35_1();
  v2 = OUTLINED_FUNCTION_50_0(v1);
  *(v2 + 16) = xmmword_424FD0;
  v3 = OUTLINED_FUNCTION_0_8(v2, "requestedRelationship");
  OUTLINED_FUNCTION_54_2(v3, v4, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v5 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_20(v5);
  if (v6)
  {
    outlined destroy of SpeakableString?(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_35_2();
  }

  else
  {
    OUTLINED_FUNCTION_43_2();
    OUTLINED_FUNCTION_6_0();
    v8 = *(v7 + 32);
    OUTLINED_FUNCTION_16_0();
    v9();
  }

  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapper.executeDialog(catId:parameters:));
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_16_12(v10);
  *v11 = v12;
  OUTLINED_FUNCTION_39(v11);
  OUTLINED_FUNCTION_212();
  OUTLINED_FUNCTION_65_1();

  return v16(v13, v14, v15, v16, v17, v18, v19, v20);
}

void StartCallCATs.disambiguateContacts(requestedRelationship:)()
{
  OUTLINED_FUNCTION_61_6();
  OUTLINED_FUNCTION_151_2();
  v1 = OUTLINED_FUNCTION_56_6();
  OUTLINED_FUNCTION_21(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v4);
  OUTLINED_FUNCTION_17_17();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  *(OUTLINED_FUNCTION_35_1() + 16) = xmmword_424FD0;
  OUTLINED_FUNCTION_27_2();
  *(v5 + 32) = 0xD000000000000015;
  *(v5 + 40) = v6;
  OUTLINED_FUNCTION_50_14();
  v7 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_7_47(v7);
  if (v8)
  {
    outlined destroy of SpeakableString?(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_42_15();
  }

  else
  {
    OUTLINED_FUNCTION_54_16();
    OUTLINED_FUNCTION_19_12();
    v10 = *(v9 + 32);
    OUTLINED_FUNCTION_40_4();
    v11();
  }

  dispatch thunk of CATWrapper.execute(catId:parameters:)();

  OUTLINED_FUNCTION_60_1();
}

uint64_t StartCallCATs.disambiguateContactsForeignEmergency(device:nonLocalEmergencyContact:completion:)()
{
  OUTLINED_FUNCTION_61_6();
  OUTLINED_FUNCTION_7_8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v2 = OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_0_2(v2, xmmword_424FF0);
  if (v1)
  {
    type metadata accessor for SirikitDeviceState();
    v3 = v1;
  }

  else
  {
    OUTLINED_FUNCTION_14();
  }

  v2[3].n128_u64[0] = v3;
  OUTLINED_FUNCTION_36_7();
  v2[4].n128_u64[1] = v4;
  v2[5].n128_u64[0] = 0xD000000000000018;
  v2[5].n128_u64[1] = v5;
  if (v0)
  {
    v6 = type metadata accessor for DialogPerson();
    v7 = v0;
  }

  else
  {
    v6 = OUTLINED_FUNCTION_7_7();
  }

  OUTLINED_FUNCTION_192_0(v6, v7);

  OUTLINED_FUNCTION_116_2();
  OUTLINED_FUNCTION_60_1();
}

uint64_t StartCallCATs.disambiguateContactsForeignEmergency(device:nonLocalEmergencyContact:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t StartCallCATs.disambiguateContactsForeignEmergency(device:nonLocalEmergencyContact:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_61_0();
  OUTLINED_FUNCTION_31();
  v12 = *(v10 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v13 = OUTLINED_FUNCTION_45_0();
  v14 = OUTLINED_FUNCTION_153(v13);
  OUTLINED_FUNCTION_0_2(v14, xmmword_424FF0);
  if (v12)
  {
    type metadata accessor for SirikitDeviceState();
    v15 = v12;
  }

  else
  {
    OUTLINED_FUNCTION_14();
  }

  v16 = *(v10 + 32);
  v11[6] = v15;
  OUTLINED_FUNCTION_36_7();
  v11[9] = v17;
  v11[10] = 0xD000000000000018;
  v19 = OUTLINED_FUNCTION_129_4(v18);
  if (v16)
  {
    v19 = type metadata accessor for DialogPerson();
  }

  else
  {
    v11[13] = 0;
    v11[14] = 0;
  }

  OUTLINED_FUNCTION_140_2(v19);
  v20 = *(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:) + 1);
  OUTLINED_FUNCTION_17_53();

  v21 = swift_task_alloc();
  v22 = OUTLINED_FUNCTION_22_19(v21);
  *v22 = v23;
  OUTLINED_FUNCTION_44_2(v22);
  OUTLINED_FUNCTION_193_0();
  OUTLINED_FUNCTION_60();

  return v28(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10);
}

{
  OUTLINED_FUNCTION_61_0();
  OUTLINED_FUNCTION_31();
  v12 = *(v10 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v13 = OUTLINED_FUNCTION_45_0();
  v14 = OUTLINED_FUNCTION_47_3(v13);
  OUTLINED_FUNCTION_0_2(v14, xmmword_424FF0);
  if (v12)
  {
    type metadata accessor for SirikitDeviceState();
    v15 = v12;
  }

  else
  {
    OUTLINED_FUNCTION_14();
  }

  v16 = *(v10 + 24);
  v11[6] = v15;
  OUTLINED_FUNCTION_36_7();
  v11[9] = v17;
  v11[10] = 0xD000000000000018;
  v19 = OUTLINED_FUNCTION_129_4(v18);
  if (v16)
  {
    v19 = type metadata accessor for DialogPerson();
  }

  else
  {
    v11[13] = 0;
    v11[14] = 0;
  }

  OUTLINED_FUNCTION_140_2(v19);
  v20 = *(&async function pointer to dispatch thunk of CATWrapper.executeDialog(catId:parameters:) + 1);
  OUTLINED_FUNCTION_17_53();

  v21 = swift_task_alloc();
  v22 = OUTLINED_FUNCTION_16_12(v21);
  *v22 = v23;
  OUTLINED_FUNCTION_114_0(v22);
  OUTLINED_FUNCTION_183_1();
  OUTLINED_FUNCTION_60();

  return v27(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10);
}

uint64_t StartCallCATs.disambiguateContactsForeignEmergency(device:nonLocalEmergencyContact:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t StartCallCATs.disambiguateContactsForeignEmergency(device:nonLocalEmergencyContact:)()
{
  OUTLINED_FUNCTION_61_6();
  OUTLINED_FUNCTION_97_6();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v2 = OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_0_2(v2, xmmword_424FF0);
  if (v1)
  {
    type metadata accessor for SirikitDeviceState();
    v3 = v1;
  }

  else
  {
    OUTLINED_FUNCTION_13_8();
  }

  v2[3].n128_u64[0] = v3;
  OUTLINED_FUNCTION_36_7();
  v2[4].n128_u64[1] = v4;
  v2[5].n128_u64[0] = 0xD000000000000018;
  v2[5].n128_u64[1] = v5;
  if (v0)
  {
    v6 = type metadata accessor for DialogPerson();
    v7 = v0;
  }

  else
  {
    v6 = OUTLINED_FUNCTION_71_12();
  }

  OUTLINED_FUNCTION_164_1(v6, v7);

  dispatch thunk of CATWrapper.execute(catId:parameters:)();
  OUTLINED_FUNCTION_60_1();
}

uint64_t StartCallCATs.disambiguateContactsHandles(isRequestForHandle:isPhoneNumberHandleDisambiguation:requestedContact:completion:)()
{
  OUTLINED_FUNCTION_61_6();
  OUTLINED_FUNCTION_216_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v6 = OUTLINED_FUNCTION_47();
  *(v6 + 16) = xmmword_426980;
  OUTLINED_FUNCTION_27_2();
  *(v7 + 32) = 0xD000000000000012;
  *(v7 + 40) = v8;
  *(v7 + 48) = v5;
  OUTLINED_FUNCTION_27_2();
  *(OUTLINED_FUNCTION_215_0(v9, v10) + 96) = v3;
  OUTLINED_FUNCTION_27_2();
  v11[15] = v12;
  v11[16] = 0xD000000000000010;
  v11[17] = v13;
  if (v1)
  {
    v14 = type metadata accessor for DialogPerson();
    v15 = v1;
  }

  else
  {
    v14 = OUTLINED_FUNCTION_18_2();
    *(v6 + 152) = 0;
    *(v6 + 160) = 0;
  }

  *(v6 + 144) = v15;
  *(v6 + 168) = v14;
  OUTLINED_FUNCTION_62_3();
  OUTLINED_FUNCTION_29_11();
  OUTLINED_FUNCTION_60_1();
}

uint64_t StartCallCATs.disambiguateContactsHandles(isRequestForHandle:isPhoneNumberHandleDisambiguation:requestedContact:)(uint64_t a1, char a2, char a3, uint64_t a4)
{
  *(v5 + 24) = a4;
  *(v5 + 32) = v4;
  *(v5 + 65) = a3;
  *(v5 + 64) = a2;
  *(v5 + 16) = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t StartCallCATs.disambiguateContactsHandles(isRequestForHandle:isPhoneNumberHandleDisambiguation:requestedContact:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_48_4();
  OUTLINED_FUNCTION_31();
  v12 = *(v10 + 24);
  v13 = *(v10 + 65);
  v14 = *(v10 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v15 = OUTLINED_FUNCTION_47();
  *(OUTLINED_FUNCTION_50_0(v15) + 16) = xmmword_426980;
  OUTLINED_FUNCTION_27_2();
  *(v16 + 32) = 0xD000000000000012;
  *(v16 + 40) = v17;
  *(v16 + 48) = v14;
  OUTLINED_FUNCTION_27_2();
  *(OUTLINED_FUNCTION_215_0(v18, v19) + 96) = v13;
  OUTLINED_FUNCTION_27_2();
  v20[15] = v21;
  v20[16] = 0xD000000000000010;
  v20[17] = v22;
  v23 = 0;
  if (v12)
  {
    v23 = type metadata accessor for DialogPerson();
  }

  else
  {
    v11[19] = 0;
    v11[20] = 0;
  }

  v11[18] = v12;
  v11[21] = v23;
  OUTLINED_FUNCTION_19_11(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));

  v24 = swift_task_alloc();
  v25 = OUTLINED_FUNCTION_16_12(v24);
  *v25 = v26;
  OUTLINED_FUNCTION_24(v25);
  OUTLINED_FUNCTION_82_9();
  OUTLINED_FUNCTION_65_2();

  return v31(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10);
}

{
  OUTLINED_FUNCTION_48_4();
  OUTLINED_FUNCTION_31();
  v12 = *(v10 + 16);
  v13 = *(v10 + 57);
  v14 = *(v10 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v15 = OUTLINED_FUNCTION_47();
  *(OUTLINED_FUNCTION_51(v15) + 16) = xmmword_426980;
  OUTLINED_FUNCTION_27_2();
  *(v16 + 32) = 0xD000000000000012;
  *(v16 + 40) = v17;
  *(v16 + 48) = v14;
  OUTLINED_FUNCTION_27_2();
  *(OUTLINED_FUNCTION_215_0(v18, v19) + 96) = v13;
  OUTLINED_FUNCTION_27_2();
  v20[15] = v21;
  v20[16] = 0xD000000000000010;
  v20[17] = v22;
  v23 = 0;
  if (v12)
  {
    v23 = type metadata accessor for DialogPerson();
  }

  else
  {
    v11[19] = 0;
    v11[20] = 0;
  }

  v11[18] = v12;
  v11[21] = v23;
  OUTLINED_FUNCTION_19_11(&async function pointer to dispatch thunk of CATWrapper.executeDialog(catId:parameters:));

  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v10 + 40) = v24;
  *v24 = v25;
  OUTLINED_FUNCTION_39(v24);
  OUTLINED_FUNCTION_99_4();
  OUTLINED_FUNCTION_65_2();

  return v29(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10);
}

uint64_t StartCallCATs.disambiguateContactsHandles(isRequestForHandle:isPhoneNumberHandleDisambiguation:requestedContact:)(char a1, char a2, uint64_t a3)
{
  *(v4 + 16) = a3;
  *(v4 + 24) = v3;
  *(v4 + 57) = a2;
  *(v4 + 56) = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t StartCallCATs.disambiguateContactsHandles(isRequestForHandle:isPhoneNumberHandleDisambiguation:requestedContact:)()
{
  OUTLINED_FUNCTION_61_6();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v6 = OUTLINED_FUNCTION_47();
  *(v6 + 16) = xmmword_426980;
  OUTLINED_FUNCTION_27_2();
  *(v7 + 32) = 0xD000000000000012;
  *(v7 + 40) = v8;
  *(v7 + 48) = v5;
  OUTLINED_FUNCTION_27_2();
  *(OUTLINED_FUNCTION_215_0(v9, v10) + 96) = v3;
  OUTLINED_FUNCTION_27_2();
  v11[15] = v12;
  v11[16] = 0xD000000000000010;
  v11[17] = v13;
  if (v1)
  {
    v14 = type metadata accessor for DialogPerson();
    v15 = v1;
  }

  else
  {
    v14 = OUTLINED_FUNCTION_18_2();
    *(v6 + 152) = 0;
    *(v6 + 160) = 0;
  }

  *(v6 + 144) = v15;
  *(v6 + 168) = v14;
  OUTLINED_FUNCTION_171();
  OUTLINED_FUNCTION_131_2();
  dispatch thunk of CATWrapper.execute(catId:parameters:)();
  OUTLINED_FUNCTION_60_1();
}

uint64_t StartCallCATs.disambiguateContactsLocalEmergency(localEmergencyServices:completion:)()
{
  OUTLINED_FUNCTION_61_6();
  OUTLINED_FUNCTION_23_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v1 = OUTLINED_FUNCTION_35_1();
  *(v1 + 16) = xmmword_424FD0;
  OUTLINED_FUNCTION_27_2();
  *(v2 + 32) = 0xD000000000000016;
  *(v2 + 40) = v3;
  *(v1 + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay27PhoneCallFlowDelegatePlugin0A6PersonCGMd, &_sSay27PhoneCallFlowDelegatePlugin0A6PersonCGMR);
  *(v1 + 48) = v0;

  OUTLINED_FUNCTION_29_11();
  OUTLINED_FUNCTION_60_1();
}

uint64_t StartCallCATs.disambiguateContactsLocalEmergency(localEmergencyServices:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t StartCallCATs.disambiguateContactsLocalEmergency(localEmergencyServices:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_48_4();
  OUTLINED_FUNCTION_31();
  v12 = *(v10 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v13 = OUTLINED_FUNCTION_35_1();
  *(OUTLINED_FUNCTION_50_0(v13) + 16) = xmmword_424FD0;
  OUTLINED_FUNCTION_27_2();
  *(v14 + 32) = 0xD000000000000016;
  *(v14 + 40) = v15;
  *(v11 + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay27PhoneCallFlowDelegatePlugin0A6PersonCGMd, &_sSay27PhoneCallFlowDelegatePlugin0A6PersonCGMR);
  *(v11 + 48) = v12;
  OUTLINED_FUNCTION_19_11(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));

  v16 = swift_task_alloc();
  v17 = OUTLINED_FUNCTION_16_12(v16);
  *v17 = v18;
  OUTLINED_FUNCTION_24(v17);
  OUTLINED_FUNCTION_82_9();
  OUTLINED_FUNCTION_65_2();

  return v23(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10);
}

uint64_t StartCallCATs.disambiguateContactsLocalEmergency(localEmergencyServices:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_0();
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v2 = OUTLINED_FUNCTION_35_1();
  *(v2 + 16) = xmmword_424FD0;
  OUTLINED_FUNCTION_27_2();
  *(v3 + 32) = 0xD000000000000016;
  *(v3 + 40) = v4;
  *(v2 + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay27PhoneCallFlowDelegatePlugin0A6PersonCGMd, &_sSay27PhoneCallFlowDelegatePlugin0A6PersonCGMR);
  *(v2 + 48) = a1;

  dispatch thunk of CATWrapper.execute(catId:parameters:)();
}

uint64_t StartCallCATs.disambiguateContactsLocalEmergency(localEmergencyServices:)()
{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_23_0();
  v1 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v2 = OUTLINED_FUNCTION_35_1();
  v0[4] = v2;
  *(v2 + 16) = xmmword_424FD0;
  OUTLINED_FUNCTION_27_2();
  *(v3 + 32) = 0xD000000000000016;
  *(v3 + 40) = v4;
  *(v2 + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay27PhoneCallFlowDelegatePlugin0A6PersonCGMd, &_sSay27PhoneCallFlowDelegatePlugin0A6PersonCGMR);
  *(v2 + 48) = v1;
  OUTLINED_FUNCTION_18_37(&async function pointer to dispatch thunk of CATWrapper.executeDialog(catId:parameters:));

  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[5] = v5;
  *v5 = v6;
  OUTLINED_FUNCTION_39(v5);
  OUTLINED_FUNCTION_65_1();

  return v10(v7, v8, v9, v10, v11, v12, v13, v14);
}

uint64_t StartCallCATs.disambiguateContactsPartialList()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_18(v0);
  *v1 = v2;
  v1[1] = closure #1 in ActionableCallControlFlow.execute();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_35_14();

  return v3();
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_1_10(&async function pointer to dispatch thunk of CATWrapper.executeDialog(catId:parameters:));
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_15_2(v0);
  *v1 = v2;
  v1[1] = AddCallParticipantCATs.unsupportedParticipantsMultipleContactsUnsupported();
  OUTLINED_FUNCTION_32();
  v3 = OUTLINED_FUNCTION_36_1(41);

  return v4(v3);
}

{
  return OUTLINED_FUNCTION_33_1();
}

uint64_t StartCallCATs.disambiguateContactsVoxNoList(personsToDisambiguate:completion:)()
{
  OUTLINED_FUNCTION_61_6();
  OUTLINED_FUNCTION_23_4();
  OUTLINED_FUNCTION_162_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v1 = OUTLINED_FUNCTION_35_1();
  *(v1 + 16) = xmmword_424FD0;
  OUTLINED_FUNCTION_0_8(v1, "personsToDisambiguate");
  if (v0)
  {
    v2 = type metadata accessor for PhonePersonList();
    v3 = v0;
  }

  else
  {
    v2 = OUTLINED_FUNCTION_13_8();
  }

  OUTLINED_FUNCTION_54_6(v2, v3);

  OUTLINED_FUNCTION_29_11();
  OUTLINED_FUNCTION_60_1();
}

uint64_t StartCallCATs.disambiguateContactsVoxNoList(personsToDisambiguate:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t StartCallCATs.disambiguateContactsVoxNoList(personsToDisambiguate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_48_4();
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_162_0();
  v12 = *(v10 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v13 = OUTLINED_FUNCTION_35_1();
  v14 = OUTLINED_FUNCTION_50_0(v13);
  *(v14 + 16) = xmmword_424FD0;
  OUTLINED_FUNCTION_0_8(v14, "personsToDisambiguate");
  v15 = 0;
  if (v12)
  {
    v15 = type metadata accessor for PhonePersonList();
  }

  else
  {
    *(v11 + 56) = 0;
    *(v11 + 64) = 0;
  }

  OUTLINED_FUNCTION_31_1(v15);
  OUTLINED_FUNCTION_19_11(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));

  v16 = swift_task_alloc();
  v17 = OUTLINED_FUNCTION_16_12(v16);
  *v17 = v18;
  OUTLINED_FUNCTION_24(v17);
  OUTLINED_FUNCTION_82_9();
  OUTLINED_FUNCTION_65_2();

  return v23(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10);
}

{
  OUTLINED_FUNCTION_48_4();
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_162_0();
  v12 = *(v10 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v13 = OUTLINED_FUNCTION_35_1();
  v14 = OUTLINED_FUNCTION_51(v13);
  *(v14 + 16) = xmmword_424FD0;
  OUTLINED_FUNCTION_0_8(v14, "personsToDisambiguate");
  v15 = 0;
  if (v12)
  {
    v15 = type metadata accessor for PhonePersonList();
  }

  else
  {
    *(v11 + 56) = 0;
    *(v11 + 64) = 0;
  }

  OUTLINED_FUNCTION_31_1(v15);
  OUTLINED_FUNCTION_19_11(&async function pointer to dispatch thunk of CATWrapper.executeDialog(catId:parameters:));

  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v10 + 40) = v16;
  *v16 = v17;
  OUTLINED_FUNCTION_39(v16);
  OUTLINED_FUNCTION_99_4();
  OUTLINED_FUNCTION_65_2();

  return v21(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10);
}

uint64_t StartCallCATs.disambiguateContactsVoxNoList(personsToDisambiguate:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t StartCallCATs.disambiguateContactsVoxNoList(personsToDisambiguate:)()
{
  OUTLINED_FUNCTION_37_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  *(OUTLINED_FUNCTION_35_1() + 16) = xmmword_424FD0;
  OUTLINED_FUNCTION_27_2();
  *(v1 + 32) = 0xD000000000000015;
  *(v1 + 40) = v2;
  if (v0)
  {
    v3 = type metadata accessor for PhonePersonList();
    v4 = v0;
  }

  else
  {
    v3 = OUTLINED_FUNCTION_68_11();
  }

  OUTLINED_FUNCTION_55_3(v3, v4);

  OUTLINED_FUNCTION_149_0();
  dispatch thunk of CATWrapper.execute(catId:parameters:)();
}

uint64_t StartCallCATs.disambiguateDestinationType()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_18(v0);
  *v1 = v2;
  v1[1] = closure #1 in ActionableCallControlFlow.execute();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_35_14();

  return v3();
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_1_10(&async function pointer to dispatch thunk of CATWrapper.executeDialog(catId:parameters:));
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_15_2(v0);
  *v1 = v2;
  v1[1] = AddCallParticipantCATs.unsupportedParticipantsMultipleContactsUnsupported();
  OUTLINED_FUNCTION_32();
  v3 = OUTLINED_FUNCTION_36_1(37);

  return v4(v3);
}

{
  return OUTLINED_FUNCTION_33_1();
}

uint64_t StartCallCATs.disambiguatePreferredCallProvider()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_18(v0);
  *v1 = v2;
  v1[1] = closure #1 in ActionableCallControlFlow.execute();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_35_14();

  return v3();
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_1_10(&async function pointer to dispatch thunk of CATWrapper.executeDialog(catId:parameters:));
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_15_2(v0);
  *v1 = v2;
  v1[1] = AddCallParticipantCATs.unsupportedParticipantsMultipleContactsUnsupported();
  OUTLINED_FUNCTION_32();
  v3 = OUTLINED_FUNCTION_36_1(43);

  return v4(v3);
}

{
  return OUTLINED_FUNCTION_33_1();
}

uint64_t StartCallCATs.emergencyCountdown()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_18(v0);
  *v1 = v2;
  v1[1] = closure #1 in ActionableCallControlFlow.execute();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_35_14();

  return v3();
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_1_10(&async function pointer to dispatch thunk of CATWrapper.executeDialog(catId:parameters:));
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_15_2(v0);
  *v1 = v2;
  v1[1] = AddCallParticipantCATs.unsupportedParticipantsMultipleContactsUnsupported();
  OUTLINED_FUNCTION_32();
  v3 = OUTLINED_FUNCTION_36_1(28);

  return v4(v3);
}

{
  return OUTLINED_FUNCTION_33_1();
}

uint64_t StartCallCATs.errorWithCode(device:completion:)()
{
  OUTLINED_FUNCTION_23_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v1 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_0_2(v1, xmmword_424FD0);
  if (v0)
  {
    v2 = type metadata accessor for SirikitDeviceState();
    v3 = v0;
  }

  else
  {
    v2 = OUTLINED_FUNCTION_13_8();
  }

  OUTLINED_FUNCTION_54_6(v2, v3);
  OUTLINED_FUNCTION_62_3();
  OUTLINED_FUNCTION_78_0();
}

uint64_t StartCallCATs.errorWithCode(device:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t StartCallCATs.errorWithCode(device:)()
{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_23_0();
  v2 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_35_1();
  v4 = OUTLINED_FUNCTION_50_0(v3);
  OUTLINED_FUNCTION_0_2(v4, xmmword_424FD0);
  v5 = 0;
  if (v2)
  {
    v5 = type metadata accessor for SirikitDeviceState();
  }

  else
  {
    *(v1 + 56) = 0;
    *(v1 + 64) = 0;
  }

  OUTLINED_FUNCTION_31_1(v5);
  OUTLINED_FUNCTION_7_82(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));

  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_16_12(v6);
  *v7 = v8;
  OUTLINED_FUNCTION_19_10(v7);
  OUTLINED_FUNCTION_41_2();
  OUTLINED_FUNCTION_65_1();

  return v13(v9, v10, v11, v12, v13, v14, v15, v16);
}

{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_23_0();
  v2 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_35_1();
  v4 = OUTLINED_FUNCTION_51(v3);
  OUTLINED_FUNCTION_0_2(v4, xmmword_424FD0);
  v5 = 0;
  if (v2)
  {
    v5 = type metadata accessor for SirikitDeviceState();
  }

  else
  {
    *(v1 + 56) = 0;
    *(v1 + 64) = 0;
  }

  OUTLINED_FUNCTION_31_1(v5);
  OUTLINED_FUNCTION_7_82(&async function pointer to dispatch thunk of CATWrapper.executeDialog(catId:parameters:));

  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_117(v6);
  *v7 = v8;
  OUTLINED_FUNCTION_30(v7);
  OUTLINED_FUNCTION_43_4(23);
  OUTLINED_FUNCTION_65_1();

  return v12(v9, v10, v11, v12, v13, v14, v15, v16);
}

{
  OUTLINED_FUNCTION_37_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v1 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_0_2(v1, xmmword_424FD0);
  if (v0)
  {
    v2 = type metadata accessor for SirikitDeviceState();
    v3 = v0;
  }

  else
  {
    v2 = OUTLINED_FUNCTION_68_11();
  }

  OUTLINED_FUNCTION_55_3(v2, v3);
  OUTLINED_FUNCTION_171();
  OUTLINED_FUNCTION_131_2();
  OUTLINED_FUNCTION_111_6(23);
  dispatch thunk of CATWrapper.execute(catId:parameters:)();
}

uint64_t StartCallCATs.errorWithCode(device:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t StartCallCATs.errorWithCodeAirplaneModeEnabled(device:isEmergency:completion:)()
{
  OUTLINED_FUNCTION_61_6();
  OUTLINED_FUNCTION_130_3();
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v2 = OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_0_2(v2, xmmword_424FF0);
  if (v1)
  {
    type metadata accessor for SirikitDeviceState();
    v3 = v1;
  }

  else
  {
    OUTLINED_FUNCTION_14();
  }

  v2[3].n128_u64[0] = v3;
  OUTLINED_FUNCTION_210();
  v2[4].n128_u64[1] = v4;
  v2[5].n128_u64[0] = v5;
  v2[5].n128_u64[1] = 0xEB0000000079636ELL;
  OUTLINED_FUNCTION_169_0(&type metadata for Bool);
  OUTLINED_FUNCTION_109_4();
  OUTLINED_FUNCTION_60_1();
}

uint64_t StartCallCATs.errorWithCodeAirplaneModeEnabled(device:isEmergency:)(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 24) = a2;
  *(v4 + 32) = v3;
  *(v4 + 64) = a3;
  *(v4 + 16) = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t StartCallCATs.errorWithCodeAirplaneModeEnabled(device:isEmergency:)()
{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_23_0();
  v2 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_45_0();
  v4 = OUTLINED_FUNCTION_50_0(v3);
  OUTLINED_FUNCTION_0_2(v4, xmmword_424FF0);
  v5 = 0;
  if (v2)
  {
    v5 = type metadata accessor for SirikitDeviceState();
  }

  else
  {
    *(v1 + 56) = 0;
    *(v1 + 64) = 0;
  }

  v6 = *(v0 + 64);
  OUTLINED_FUNCTION_142_1(v5);
  OUTLINED_FUNCTION_73_1(v7);
  OUTLINED_FUNCTION_18_37(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));

  v8 = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_16_12(v8);
  *v9 = v10;
  OUTLINED_FUNCTION_19_10(v9);
  OUTLINED_FUNCTION_41_2();
  OUTLINED_FUNCTION_65_1();

  return v15(v11, v12, v13, v14, v15, v16, v17, v18);
}

{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_23_0();
  v2 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_45_0();
  v4 = OUTLINED_FUNCTION_51(v3);
  OUTLINED_FUNCTION_0_2(v4, xmmword_424FF0);
  v5 = 0;
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
  OUTLINED_FUNCTION_142_1(v5);
  OUTLINED_FUNCTION_73_1(v7);
  OUTLINED_FUNCTION_18_37(&async function pointer to dispatch thunk of CATWrapper.executeDialog(catId:parameters:));

  v8 = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_117(v8);
  *v9 = v10;
  OUTLINED_FUNCTION_30(v9);
  OUTLINED_FUNCTION_43_4(42);
  OUTLINED_FUNCTION_65_1();

  return v14(v11, v12, v13, v14, v15, v16, v17, v18);
}

{
  OUTLINED_FUNCTION_37_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v1 = OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_0_2(v1, xmmword_424FF0);
  if (v0)
  {
    type metadata accessor for SirikitDeviceState();
    v2 = v0;
  }

  else
  {
    OUTLINED_FUNCTION_13_8();
  }

  v1[3].n128_u64[0] = v2;
  OUTLINED_FUNCTION_210();
  v1[4].n128_u64[1] = v3;
  v1[5].n128_u64[0] = v4;
  v1[5].n128_u64[1] = 0xEB0000000079636ELL;
  OUTLINED_FUNCTION_168_1(&type metadata for Bool);
  OUTLINED_FUNCTION_149_0();
  OUTLINED_FUNCTION_29(42);
  dispatch thunk of CATWrapper.execute(catId:parameters:)();
}

uint64_t StartCallCATs.errorWithCodeAirplaneModeEnabled(device:isEmergency:)(uint64_t a1, char a2)
{
  *(v3 + 56) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  return OUTLINED_FUNCTION_0_0();
}

void StartCallCATs.errorWithCodeAppConfigurationRequired(appName:completion:)()
{
  OUTLINED_FUNCTION_61_6();
  OUTLINED_FUNCTION_57_11();
  v1 = OUTLINED_FUNCTION_53_2();
  OUTLINED_FUNCTION_21(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v4);
  OUTLINED_FUNCTION_27_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v5 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_0_4(v5, xmmword_424FD0);
  OUTLINED_FUNCTION_40_15();
  v6 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_5_1(v6);
  if (v7)
  {
    outlined destroy of SpeakableString?(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_41_17();
  }

  else
  {
    OUTLINED_FUNCTION_55_2();
    OUTLINED_FUNCTION_24_23();
    v9 = *(v8 + 32);
    OUTLINED_FUNCTION_47_15();
    v10();
  }

  OUTLINED_FUNCTION_119();
  OUTLINED_FUNCTION_49_12();

  OUTLINED_FUNCTION_60_1();
}

uint64_t StartCallCATs.errorWithCodeAppConfigurationRequired(appName:)()
{
  OUTLINED_FUNCTION_15();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v4);
  v6 = *(v5 + 64);
  v1[5] = OUTLINED_FUNCTION_45();
  v7 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v7, v8, v9);
}

{
  OUTLINED_FUNCTION_75_6();
  v16 = v1;
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_64_7();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v2 = OUTLINED_FUNCTION_35_1();
  v3 = OUTLINED_FUNCTION_46_15(v2);
  v4 = OUTLINED_FUNCTION_0_4(v3, xmmword_424FD0);
  OUTLINED_FUNCTION_54_2(v4, v5, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v6 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_1_7(v6);
  if (v7)
  {
    outlined destroy of SpeakableString?(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_35_2();
  }

  else
  {
    OUTLINED_FUNCTION_43_2();
    OUTLINED_FUNCTION_6_0();
    v9 = *(v8 + 32);
    OUTLINED_FUNCTION_16_0();
    v10();
  }

  OUTLINED_FUNCTION_1_10(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  v11 = swift_task_alloc();
  v12 = OUTLINED_FUNCTION_22_19(v11);
  *v12 = v13;
  OUTLINED_FUNCTION_10_49(v12);
  OUTLINED_FUNCTION_37_17();

  return v14();
}

{
  OUTLINED_FUNCTION_15();
  v1[2] = v2;
  v1[3] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v3);
  v5 = *(v4 + 64);
  v1[4] = OUTLINED_FUNCTION_45();
  v6 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v6, v7, v8);
}

{
  OUTLINED_FUNCTION_75_6();
  v17 = v1;
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_60_9();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v2 = OUTLINED_FUNCTION_35_1();
  v3 = OUTLINED_FUNCTION_50_0(v2);
  v4 = OUTLINED_FUNCTION_0_4(v3, xmmword_424FD0);
  OUTLINED_FUNCTION_54_2(v4, v5, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v6 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_20(v6);
  if (v7)
  {
    outlined destroy of SpeakableString?(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_35_2();
  }

  else
  {
    OUTLINED_FUNCTION_43_2();
    OUTLINED_FUNCTION_6_0();
    v9 = *(v8 + 32);
    OUTLINED_FUNCTION_16_0();
    v10();
  }

  OUTLINED_FUNCTION_1_10(&async function pointer to dispatch thunk of CATWrapper.executeDialog(catId:parameters:));
  v11 = swift_task_alloc();
  v12 = OUTLINED_FUNCTION_61_4(v11);
  *v12 = v13;
  OUTLINED_FUNCTION_19_2(v12);
  v14 = OUTLINED_FUNCTION_38_1(47);

  return v15(v14);
}

void StartCallCATs.errorWithCodeAppConfigurationRequired(appName:)()
{
  OUTLINED_FUNCTION_61_6();
  OUTLINED_FUNCTION_151_2();
  v1 = OUTLINED_FUNCTION_56_6();
  OUTLINED_FUNCTION_21(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v4);
  OUTLINED_FUNCTION_17_17();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v5 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_0_4(v5, xmmword_424FD0);
  OUTLINED_FUNCTION_50_14();
  v6 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_7_47(v6);
  if (v7)
  {
    outlined destroy of SpeakableString?(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_42_15();
  }

  else
  {
    OUTLINED_FUNCTION_54_16();
    OUTLINED_FUNCTION_19_12();
    v9 = *(v8 + 32);
    OUTLINED_FUNCTION_40_4();
    v10();
  }

  OUTLINED_FUNCTION_67_16();
  OUTLINED_FUNCTION_190();

  OUTLINED_FUNCTION_60_1();
}

uint64_t StartCallCATs.errorWithCodeCallInProgress(device:completion:)()
{
  OUTLINED_FUNCTION_23_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v1 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_0_2(v1, xmmword_424FD0);
  if (v0)
  {
    v2 = type metadata accessor for SirikitDeviceState();
    v3 = v0;
  }

  else
  {
    v2 = OUTLINED_FUNCTION_13_8();
  }

  OUTLINED_FUNCTION_54_6(v2, v3);
  OUTLINED_FUNCTION_62_3();
  OUTLINED_FUNCTION_78_0();
}

uint64_t StartCallCATs.errorWithCodeCallInProgress(device:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t StartCallCATs.errorWithCodeCallInProgress(device:)()
{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_23_0();
  v2 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_35_1();
  v4 = OUTLINED_FUNCTION_50_0(v3);
  OUTLINED_FUNCTION_0_2(v4, xmmword_424FD0);
  v5 = 0;
  if (v2)
  {
    v5 = type metadata accessor for SirikitDeviceState();
  }

  else
  {
    *(v1 + 56) = 0;
    *(v1 + 64) = 0;
  }

  OUTLINED_FUNCTION_31_1(v5);
  OUTLINED_FUNCTION_7_82(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));

  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_16_12(v6);
  *v7 = v8;
  OUTLINED_FUNCTION_19_10(v7);
  OUTLINED_FUNCTION_41_2();
  OUTLINED_FUNCTION_65_1();

  return v13(v9, v10, v11, v12, v13, v14, v15, v16);
}

{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_23_0();
  v2 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_35_1();
  v4 = OUTLINED_FUNCTION_51(v3);
  OUTLINED_FUNCTION_0_2(v4, xmmword_424FD0);
  v5 = 0;
  if (v2)
  {
    v5 = type metadata accessor for SirikitDeviceState();
  }

  else
  {
    *(v1 + 56) = 0;
    *(v1 + 64) = 0;
  }

  OUTLINED_FUNCTION_31_1(v5);
  OUTLINED_FUNCTION_7_82(&async function pointer to dispatch thunk of CATWrapper.executeDialog(catId:parameters:));

  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_117(v6);
  *v7 = v8;
  OUTLINED_FUNCTION_30(v7);
  OUTLINED_FUNCTION_43_4(37);
  OUTLINED_FUNCTION_65_1();

  return v12(v9, v10, v11, v12, v13, v14, v15, v16);
}

{
  OUTLINED_FUNCTION_37_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v1 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_0_2(v1, xmmword_424FD0);
  if (v0)
  {
    v2 = type metadata accessor for SirikitDeviceState();
    v3 = v0;
  }

  else
  {
    v2 = OUTLINED_FUNCTION_68_11();
  }

  OUTLINED_FUNCTION_55_3(v2, v3);
  OUTLINED_FUNCTION_171();
  OUTLINED_FUNCTION_131_2();
  OUTLINED_FUNCTION_111_6(37);
  dispatch thunk of CATWrapper.execute(catId:parameters:)();
}

uint64_t StartCallCATs.errorWithCodeCallInProgress(device:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t StartCallCATs.errorWithCodeCallRinging(device:completion:)()
{
  OUTLINED_FUNCTION_23_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v1 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_0_2(v1, xmmword_424FD0);
  if (v0)
  {
    v2 = type metadata accessor for SirikitDeviceState();
    v3 = v0;
  }

  else
  {
    v2 = OUTLINED_FUNCTION_13_8();
  }

  OUTLINED_FUNCTION_54_6(v2, v3);
  OUTLINED_FUNCTION_62_3();
  OUTLINED_FUNCTION_78_0();
}

uint64_t StartCallCATs.errorWithCodeCallRinging(device:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t StartCallCATs.errorWithCodeCallRinging(device:)()
{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_23_0();
  v2 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_35_1();
  v4 = OUTLINED_FUNCTION_50_0(v3);
  OUTLINED_FUNCTION_0_2(v4, xmmword_424FD0);
  v5 = 0;
  if (v2)
  {
    v5 = type metadata accessor for SirikitDeviceState();
  }

  else
  {
    *(v1 + 56) = 0;
    *(v1 + 64) = 0;
  }

  OUTLINED_FUNCTION_31_1(v5);
  OUTLINED_FUNCTION_7_82(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));

  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_16_12(v6);
  *v7 = v8;
  OUTLINED_FUNCTION_19_10(v7);
  OUTLINED_FUNCTION_41_2();
  OUTLINED_FUNCTION_65_1();

  return v13(v9, v10, v11, v12, v13, v14, v15, v16);
}

{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_23_0();
  v2 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_35_1();
  v4 = OUTLINED_FUNCTION_51(v3);
  OUTLINED_FUNCTION_0_2(v4, xmmword_424FD0);
  v5 = 0;
  if (v2)
  {
    v5 = type metadata accessor for SirikitDeviceState();
  }

  else
  {
    *(v1 + 56) = 0;
    *(v1 + 64) = 0;
  }

  OUTLINED_FUNCTION_31_1(v5);
  OUTLINED_FUNCTION_7_82(&async function pointer to dispatch thunk of CATWrapper.executeDialog(catId:parameters:));

  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_117(v6);
  *v7 = v8;
  OUTLINED_FUNCTION_30(v7);
  OUTLINED_FUNCTION_43_4(34);
  OUTLINED_FUNCTION_65_1();

  return v12(v9, v10, v11, v12, v13, v14, v15, v16);
}

{
  OUTLINED_FUNCTION_37_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v1 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_0_2(v1, xmmword_424FD0);
  if (v0)
  {
    v2 = type metadata accessor for SirikitDeviceState();
    v3 = v0;
  }

  else
  {
    v2 = OUTLINED_FUNCTION_68_11();
  }

  OUTLINED_FUNCTION_55_3(v2, v3);
  OUTLINED_FUNCTION_171();
  OUTLINED_FUNCTION_131_2();
  OUTLINED_FUNCTION_111_6(34);
  dispatch thunk of CATWrapper.execute(catId:parameters:)();
}

uint64_t StartCallCATs.errorWithCodeCallRinging(device:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t StartCallCATs.errorWithCodeCallingServiceNotAvailable(device:completion:)()
{
  OUTLINED_FUNCTION_23_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v1 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_0_2(v1, xmmword_424FD0);
  if (v0)
  {
    v2 = type metadata accessor for SirikitDeviceState();
    v3 = v0;
  }

  else
  {
    v2 = OUTLINED_FUNCTION_13_8();
  }

  OUTLINED_FUNCTION_54_6(v2, v3);
  OUTLINED_FUNCTION_62_3();
  OUTLINED_FUNCTION_78_0();
}

uint64_t StartCallCATs.errorWithCodeCallingServiceNotAvailable(device:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t StartCallCATs.errorWithCodeCallingServiceNotAvailable(device:)()
{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_23_0();
  v2 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_35_1();
  v4 = OUTLINED_FUNCTION_50_0(v3);
  OUTLINED_FUNCTION_0_2(v4, xmmword_424FD0);
  v5 = 0;
  if (v2)
  {
    v5 = type metadata accessor for SirikitDeviceState();
  }

  else
  {
    *(v1 + 56) = 0;
    *(v1 + 64) = 0;
  }

  OUTLINED_FUNCTION_31_1(v5);
  OUTLINED_FUNCTION_7_82(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));

  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_16_12(v6);
  *v7 = v8;
  OUTLINED_FUNCTION_19_10(v7);
  OUTLINED_FUNCTION_41_2();
  OUTLINED_FUNCTION_65_1();

  return v13(v9, v10, v11, v12, v13, v14, v15, v16);
}

{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_23_0();
  v2 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_35_1();
  v4 = OUTLINED_FUNCTION_51(v3);
  OUTLINED_FUNCTION_0_2(v4, xmmword_424FD0);
  v5 = 0;
  if (v2)
  {
    v5 = type metadata accessor for SirikitDeviceState();
  }

  else
  {
    *(v1 + 56) = 0;
    *(v1 + 64) = 0;
  }

  OUTLINED_FUNCTION_31_1(v5);
  OUTLINED_FUNCTION_7_82(&async function pointer to dispatch thunk of CATWrapper.executeDialog(catId:parameters:));

  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_117(v6);
  *v7 = v8;
  OUTLINED_FUNCTION_30(v7);
  OUTLINED_FUNCTION_43_4(49);
  OUTLINED_FUNCTION_65_1();

  return v12(v9, v10, v11, v12, v13, v14, v15, v16);
}

{
  OUTLINED_FUNCTION_37_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v1 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_0_2(v1, xmmword_424FD0);
  if (v0)
  {
    v2 = type metadata accessor for SirikitDeviceState();
    v3 = v0;
  }

  else
  {
    v2 = OUTLINED_FUNCTION_68_11();
  }

  OUTLINED_FUNCTION_55_3(v2, v3);
  OUTLINED_FUNCTION_171();
  OUTLINED_FUNCTION_131_2();
  OUTLINED_FUNCTION_111_6(49);
  dispatch thunk of CATWrapper.execute(catId:parameters:)();
}

uint64_t StartCallCATs.errorWithCodeCallingServiceNotAvailable(device:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_0();
}

void StartCallCATs.errorWithCodeContactNotSupportedByApp(appName:completion:)()
{
  OUTLINED_FUNCTION_61_6();
  OUTLINED_FUNCTION_57_11();
  v1 = OUTLINED_FUNCTION_53_2();
  OUTLINED_FUNCTION_21(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v4);
  OUTLINED_FUNCTION_27_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v5 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_0_4(v5, xmmword_424FD0);
  OUTLINED_FUNCTION_40_15();
  v6 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_5_1(v6);
  if (v7)
  {
    outlined destroy of SpeakableString?(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_41_17();
  }

  else
  {
    OUTLINED_FUNCTION_55_2();
    OUTLINED_FUNCTION_24_23();
    v9 = *(v8 + 32);
    OUTLINED_FUNCTION_47_15();
    v10();
  }

  OUTLINED_FUNCTION_119();
  OUTLINED_FUNCTION_49_12();

  OUTLINED_FUNCTION_60_1();
}

uint64_t StartCallCATs.errorWithCodeContactNotSupportedByApp(appName:)()
{
  OUTLINED_FUNCTION_15();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v4);
  v6 = *(v5 + 64);
  v1[5] = OUTLINED_FUNCTION_45();
  v7 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v7, v8, v9);
}

{
  OUTLINED_FUNCTION_75_6();
  v16 = v1;
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_64_7();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v2 = OUTLINED_FUNCTION_35_1();
  v3 = OUTLINED_FUNCTION_46_15(v2);
  v4 = OUTLINED_FUNCTION_0_4(v3, xmmword_424FD0);
  OUTLINED_FUNCTION_54_2(v4, v5, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v6 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_1_7(v6);
  if (v7)
  {
    outlined destroy of SpeakableString?(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_35_2();
  }

  else
  {
    OUTLINED_FUNCTION_43_2();
    OUTLINED_FUNCTION_6_0();
    v9 = *(v8 + 32);
    OUTLINED_FUNCTION_16_0();
    v10();
  }

  OUTLINED_FUNCTION_1_10(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  v11 = swift_task_alloc();
  v12 = OUTLINED_FUNCTION_22_19(v11);
  *v12 = v13;
  OUTLINED_FUNCTION_10_49(v12);
  OUTLINED_FUNCTION_37_17();

  return v14();
}

{
  OUTLINED_FUNCTION_15();
  v1[2] = v2;
  v1[3] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v3);
  v5 = *(v4 + 64);
  v1[4] = OUTLINED_FUNCTION_45();
  v6 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v6, v7, v8);
}

{
  OUTLINED_FUNCTION_75_6();
  v17 = v1;
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_60_9();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v2 = OUTLINED_FUNCTION_35_1();
  v3 = OUTLINED_FUNCTION_50_0(v2);
  v4 = OUTLINED_FUNCTION_0_4(v3, xmmword_424FD0);
  OUTLINED_FUNCTION_54_2(v4, v5, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v6 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_20(v6);
  if (v7)
  {
    outlined destroy of SpeakableString?(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_35_2();
  }

  else
  {
    OUTLINED_FUNCTION_43_2();
    OUTLINED_FUNCTION_6_0();
    v9 = *(v8 + 32);
    OUTLINED_FUNCTION_16_0();
    v10();
  }

  OUTLINED_FUNCTION_1_10(&async function pointer to dispatch thunk of CATWrapper.executeDialog(catId:parameters:));
  v11 = swift_task_alloc();
  v12 = OUTLINED_FUNCTION_61_4(v11);
  *v12 = v13;
  OUTLINED_FUNCTION_19_2(v12);
  v14 = OUTLINED_FUNCTION_38_1(47);

  return v15(v14);
}

void StartCallCATs.errorWithCodeContactNotSupportedByApp(appName:)()
{
  OUTLINED_FUNCTION_61_6();
  OUTLINED_FUNCTION_151_2();
  v1 = OUTLINED_FUNCTION_56_6();
  OUTLINED_FUNCTION_21(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v4);
  OUTLINED_FUNCTION_17_17();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v5 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_0_4(v5, xmmword_424FD0);
  OUTLINED_FUNCTION_50_14();
  v6 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_7_47(v6);
  if (v7)
  {
    outlined destroy of SpeakableString?(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_42_15();
  }

  else
  {
    OUTLINED_FUNCTION_54_16();
    OUTLINED_FUNCTION_19_12();
    v9 = *(v8 + 32);
    OUTLINED_FUNCTION_40_4();
    v10();
  }

  OUTLINED_FUNCTION_67_16();
  OUTLINED_FUNCTION_190();

  OUTLINED_FUNCTION_60_1();
}

uint64_t StartCallCATs.errorWithCodeDownTimeRestrictionEnabled(intent:contacts:completion:)()
{
  OUTLINED_FUNCTION_61_6();
  OUTLINED_FUNCTION_7_8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v2 = OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_12_6(v2, xmmword_424FF0);
  if (v1)
  {
    type metadata accessor for PhoneStartCallIntent(0);
    v3 = v1;
  }

  else
  {
    OUTLINED_FUNCTION_14();
  }

  v2[3].n128_u64[0] = v3;
  OUTLINED_FUNCTION_48_25();
  v2[4].n128_u64[1] = v4;
  v2[5].n128_u64[0] = v5;
  v2[5].n128_u64[1] = 0xE800000000000000;
  if (v0)
  {
    v6 = type metadata accessor for PhonePersonList();
    v7 = v0;
  }

  else
  {
    v6 = OUTLINED_FUNCTION_7_7();
  }

  OUTLINED_FUNCTION_192_0(v6, v7);
  OUTLINED_FUNCTION_202_0();

  OUTLINED_FUNCTION_109_4();
  OUTLINED_FUNCTION_60_1();
}

uint64_t StartCallCATs.errorWithCodeDownTimeRestrictionEnabled(intent:contacts:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t StartCallCATs.errorWithCodeDownTimeRestrictionEnabled(intent:contacts:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_48_4();
  OUTLINED_FUNCTION_31();
  v12 = *(v10 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v13 = OUTLINED_FUNCTION_45_0();
  v14 = OUTLINED_FUNCTION_153(v13);
  OUTLINED_FUNCTION_12_6(v14, xmmword_424FF0);
  if (v12)
  {
    type metadata accessor for PhoneStartCallIntent(0);
    v15 = v12;
  }

  else
  {
    OUTLINED_FUNCTION_14();
  }

  v16 = *(v10 + 32);
  v11[6] = v15;
  OUTLINED_FUNCTION_48_25();
  v11[9] = v17;
  v11[10] = v18;
  v19 = OUTLINED_FUNCTION_129_4(0xE800000000000000);
  if (v16)
  {
    v19 = type metadata accessor for PhonePersonList();
  }

  else
  {
    v11[13] = 0;
    v11[14] = 0;
  }

  OUTLINED_FUNCTION_140_2(v19);
  v20 = *(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:) + 1);
  OUTLINED_FUNCTION_20_4();

  v21 = swift_task_alloc();
  v22 = OUTLINED_FUNCTION_22_19(v21);
  *v22 = v23;
  OUTLINED_FUNCTION_44_2(v22);
  OUTLINED_FUNCTION_152_0();
  OUTLINED_FUNCTION_147_1();
  OUTLINED_FUNCTION_65_2();

  return v28(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10);
}

{
  OUTLINED_FUNCTION_48_4();
  OUTLINED_FUNCTION_31();
  v12 = *(v10 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v13 = OUTLINED_FUNCTION_45_0();
  v14 = OUTLINED_FUNCTION_47_3(v13);
  OUTLINED_FUNCTION_12_6(v14, xmmword_424FF0);
  if (v12)
  {
    type metadata accessor for PhoneStartCallIntent(0);
    v15 = v12;
  }

  else
  {
    OUTLINED_FUNCTION_14();
  }

  v16 = *(v10 + 24);
  v11[6] = v15;
  OUTLINED_FUNCTION_48_25();
  v11[9] = v17;
  v11[10] = v18;
  v19 = OUTLINED_FUNCTION_129_4(0xE800000000000000);
  if (v16)
  {
    v19 = type metadata accessor for PhonePersonList();
  }

  else
  {
    v11[13] = 0;
    v11[14] = 0;
  }

  OUTLINED_FUNCTION_140_2(v19);
  v20 = *(&async function pointer to dispatch thunk of CATWrapper.executeDialog(catId:parameters:) + 1);
  OUTLINED_FUNCTION_20_4();

  v21 = swift_task_alloc();
  v22 = OUTLINED_FUNCTION_61_4(v21);
  *v22 = v23;
  OUTLINED_FUNCTION_114_0(v22);
  OUTLINED_FUNCTION_219_0();
  OUTLINED_FUNCTION_131_3(49);
  OUTLINED_FUNCTION_65_2();

  return v27(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10);
}

uint64_t StartCallCATs.errorWithCodeDownTimeRestrictionEnabled(intent:contacts:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t StartCallCATs.errorWithCodeDownTimeRestrictionEnabled(intent:contacts:)()
{
  OUTLINED_FUNCTION_97_6();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v2 = OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_12_6(v2, xmmword_424FF0);
  if (v1)
  {
    type metadata accessor for PhoneStartCallIntent(0);
    v3 = v1;
  }

  else
  {
    OUTLINED_FUNCTION_13_8();
  }

  v2[3].n128_u64[0] = v3;
  OUTLINED_FUNCTION_48_25();
  v2[4].n128_u64[1] = v4;
  v2[5].n128_u64[0] = v5;
  v2[5].n128_u64[1] = 0xE800000000000000;
  if (v0)
  {
    v6 = type metadata accessor for PhonePersonList();
    v7 = v0;
  }

  else
  {
    v6 = OUTLINED_FUNCTION_71_12();
  }

  OUTLINED_FUNCTION_164_1(v6, v7);
  OUTLINED_FUNCTION_62_3();

  OUTLINED_FUNCTION_149_0();
  OUTLINED_FUNCTION_29(49);
  dispatch thunk of CATWrapper.execute(catId:parameters:)();
}

void StartCallCATs.errorWithCodeNoValidNumber(appName:completion:)()
{
  OUTLINED_FUNCTION_61_6();
  OUTLINED_FUNCTION_57_11();
  v1 = OUTLINED_FUNCTION_53_2();
  OUTLINED_FUNCTION_21(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v4);
  OUTLINED_FUNCTION_27_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v5 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_0_4(v5, xmmword_424FD0);
  OUTLINED_FUNCTION_40_15();
  v6 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_5_1(v6);
  if (v7)
  {
    outlined destroy of SpeakableString?(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_41_17();
  }

  else
  {
    OUTLINED_FUNCTION_55_2();
    OUTLINED_FUNCTION_24_23();
    v9 = *(v8 + 32);
    OUTLINED_FUNCTION_47_15();
    v10();
  }

  OUTLINED_FUNCTION_119();
  OUTLINED_FUNCTION_49_12();

  OUTLINED_FUNCTION_60_1();
}

uint64_t StartCallCATs.errorWithCodeNoValidNumber(appName:)()
{
  OUTLINED_FUNCTION_15();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v4);
  v6 = *(v5 + 64);
  v1[5] = OUTLINED_FUNCTION_45();
  v7 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v7, v8, v9);
}

{
  OUTLINED_FUNCTION_75_6();
  v16 = v1;
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_64_7();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v2 = OUTLINED_FUNCTION_35_1();
  v3 = OUTLINED_FUNCTION_46_15(v2);
  v4 = OUTLINED_FUNCTION_0_4(v3, xmmword_424FD0);
  OUTLINED_FUNCTION_54_2(v4, v5, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v6 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_1_7(v6);
  if (v7)
  {
    outlined destroy of SpeakableString?(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_35_2();
  }

  else
  {
    OUTLINED_FUNCTION_43_2();
    OUTLINED_FUNCTION_6_0();
    v9 = *(v8 + 32);
    OUTLINED_FUNCTION_16_0();
    v10();
  }

  OUTLINED_FUNCTION_1_10(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  v11 = swift_task_alloc();
  v12 = OUTLINED_FUNCTION_22_19(v11);
  *v12 = v13;
  OUTLINED_FUNCTION_10_49(v12);
  OUTLINED_FUNCTION_37_17();

  return v14();
}

{
  OUTLINED_FUNCTION_15();
  v1[2] = v2;
  v1[3] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v3);
  v5 = *(v4 + 64);
  v1[4] = OUTLINED_FUNCTION_45();
  v6 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v6, v7, v8);
}

{
  OUTLINED_FUNCTION_75_6();
  v17 = v1;
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_60_9();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v2 = OUTLINED_FUNCTION_35_1();
  v3 = OUTLINED_FUNCTION_50_0(v2);
  v4 = OUTLINED_FUNCTION_0_4(v3, xmmword_424FD0);
  OUTLINED_FUNCTION_54_2(v4, v5, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v6 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_20(v6);
  if (v7)
  {
    outlined destroy of SpeakableString?(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_35_2();
  }

  else
  {
    OUTLINED_FUNCTION_43_2();
    OUTLINED_FUNCTION_6_0();
    v9 = *(v8 + 32);
    OUTLINED_FUNCTION_16_0();
    v10();
  }

  OUTLINED_FUNCTION_1_10(&async function pointer to dispatch thunk of CATWrapper.executeDialog(catId:parameters:));
  v11 = swift_task_alloc();
  v12 = OUTLINED_FUNCTION_61_4(v11);
  *v12 = v13;
  OUTLINED_FUNCTION_19_2(v12);
  v14 = OUTLINED_FUNCTION_38_1(36);

  return v15(v14);
}

void StartCallCATs.errorWithCodeNoValidNumber(appName:)()
{
  OUTLINED_FUNCTION_61_6();
  OUTLINED_FUNCTION_151_2();
  v1 = OUTLINED_FUNCTION_56_6();
  OUTLINED_FUNCTION_21(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v4);
  OUTLINED_FUNCTION_17_17();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v5 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_0_4(v5, xmmword_424FD0);
  OUTLINED_FUNCTION_50_14();
  v6 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_7_47(v6);
  if (v7)
  {
    outlined destroy of SpeakableString?(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_42_15();
  }

  else
  {
    OUTLINED_FUNCTION_54_16();
    OUTLINED_FUNCTION_19_12();
    v9 = *(v8 + 32);
    OUTLINED_FUNCTION_40_4();
    v10();
  }

  OUTLINED_FUNCTION_67_16();
  OUTLINED_FUNCTION_190();

  OUTLINED_FUNCTION_60_1();
}

uint64_t StartCallCATs.errorWithCodeScreenTimeRestrictionEnabled()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_18(v0);
  *v1 = v2;
  v1[1] = closure #1 in ActionableCallControlFlow.execute();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_35_14();

  return v3();
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_1_10(&async function pointer to dispatch thunk of CATWrapper.executeDialog(catId:parameters:));
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_15_2(v0);
  *v1 = v2;
  v1[1] = AddCallParticipantCATs.unsupportedParticipantsMultipleContactsUnsupported();
  OUTLINED_FUNCTION_32();
  v3 = OUTLINED_FUNCTION_36_1(51);

  return v4(v3);
}

{
  return OUTLINED_FUNCTION_33_1();
}

uint64_t StartCallCATs.errorWithCodeUnableToHandOff()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_18(v0);
  *v1 = v2;
  v1[1] = closure #1 in ActionableCallControlFlow.execute();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_35_14();

  return v3();
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_1_10(&async function pointer to dispatch thunk of CATWrapper.executeDialog(catId:parameters:));
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_15_2(v0);
  *v1 = v2;
  v1[1] = AddCallParticipantCATs.unsupportedParticipantsMultipleContactsUnsupported();
  OUTLINED_FUNCTION_32();
  v3 = OUTLINED_FUNCTION_36_1(38);

  return v4(v3);
}

{
  return OUTLINED_FUNCTION_33_1();
}

uint64_t StartCallCATs.finalLowConfidenceResponse()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_18(v0);
  *v1 = v2;
  v1[1] = closure #1 in ActionableCallControlFlow.execute();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_35_14();

  return v3();
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_1_10(&async function pointer to dispatch thunk of CATWrapper.executeDialog(catId:parameters:));
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_15_2(v0);
  *v1 = v2;
  v1[1] = AddCallParticipantCATs.unsupportedParticipantsMultipleContactsUnsupported();
  OUTLINED_FUNCTION_32();
  v3 = OUTLINED_FUNCTION_36_1(36);

  return v4(v3);
}

{
  return OUTLINED_FUNCTION_33_1();
}

uint64_t StartCallCATs.genericError(device:completion:)()
{
  OUTLINED_FUNCTION_23_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v1 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_0_2(v1, xmmword_424FD0);
  if (v0)
  {
    v2 = type metadata accessor for SirikitDeviceState();
    v3 = v0;
  }

  else
  {
    v2 = OUTLINED_FUNCTION_13_8();
  }

  OUTLINED_FUNCTION_54_6(v2, v3);
  OUTLINED_FUNCTION_62_3();
  OUTLINED_FUNCTION_78_0();
}

uint64_t StartCallCATs.genericError(device:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t StartCallCATs.genericError(device:)()
{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_23_0();
  v2 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_35_1();
  v4 = OUTLINED_FUNCTION_50_0(v3);
  OUTLINED_FUNCTION_0_2(v4, xmmword_424FD0);
  v5 = 0;
  if (v2)
  {
    v5 = type metadata accessor for SirikitDeviceState();
  }

  else
  {
    *(v1 + 56) = 0;
    *(v1 + 64) = 0;
  }

  OUTLINED_FUNCTION_31_1(v5);
  OUTLINED_FUNCTION_7_82(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));

  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_16_12(v6);
  *v7 = v8;
  OUTLINED_FUNCTION_19_10(v7);
  OUTLINED_FUNCTION_41_2();
  OUTLINED_FUNCTION_65_1();

  return v13(v9, v10, v11, v12, v13, v14, v15, v16);
}

{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_23_0();
  v2 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_35_1();
  v4 = OUTLINED_FUNCTION_51(v3);
  OUTLINED_FUNCTION_0_2(v4, xmmword_424FD0);
  v5 = 0;
  if (v2)
  {
    v5 = type metadata accessor for SirikitDeviceState();
  }

  else
  {
    *(v1 + 56) = 0;
    *(v1 + 64) = 0;
  }

  OUTLINED_FUNCTION_31_1(v5);
  OUTLINED_FUNCTION_7_82(&async function pointer to dispatch thunk of CATWrapper.executeDialog(catId:parameters:));

  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_117(v6);
  *v7 = v8;
  OUTLINED_FUNCTION_30(v7);
  OUTLINED_FUNCTION_43_4(22);
  OUTLINED_FUNCTION_65_1();

  return v12(v9, v10, v11, v12, v13, v14, v15, v16);
}

{
  OUTLINED_FUNCTION_37_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v1 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_0_2(v1, xmmword_424FD0);
  if (v0)
  {
    v2 = type metadata accessor for SirikitDeviceState();
    v3 = v0;
  }

  else
  {
    v2 = OUTLINED_FUNCTION_68_11();
  }

  OUTLINED_FUNCTION_55_3(v2, v3);
  OUTLINED_FUNCTION_171();
  OUTLINED_FUNCTION_131_2();
  OUTLINED_FUNCTION_111_6(22);
  dispatch thunk of CATWrapper.execute(catId:parameters:)();
}

uint64_t StartCallCATs.genericError(device:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_0();
}

void StartCallCATs.hangUpTip(device:hintIdentifier:completion:)()
{
  OUTLINED_FUNCTION_61_6();
  OUTLINED_FUNCTION_130_3();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v8);
  OUTLINED_FUNCTION_2_48();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v9 = OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_0_2(v9, xmmword_424FF0);
  if (v4)
  {
    type metadata accessor for SirikitDeviceState();
    v10 = v4;
  }

  else
  {
    OUTLINED_FUNCTION_13_8();
  }

  *(v9 + 48) = v10;
  OUTLINED_FUNCTION_207();
  *(v9 + 72) = v11;
  *(v9 + 80) = v12;
  OUTLINED_FUNCTION_205_0();
  *(v9 + 88) = v13;
  v14 = OUTLINED_FUNCTION_69();
  outlined init with copy of SpeakableString?(v14, v15, v16, v17);
  v18 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_57_25(v18);
  if (v19)
  {

    outlined destroy of SpeakableString?(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v9 + 96) = 0u;
    *(v9 + 112) = 0u;
  }

  else
  {
    *(v9 + 120) = v2;
    __swift_allocate_boxed_opaque_existential_1((v9 + 96));
    OUTLINED_FUNCTION_40(v2);
    v21 = *(v20 + 32);
    OUTLINED_FUNCTION_175_1();
    v22();
  }

  OUTLINED_FUNCTION_119();
  OUTLINED_FUNCTION_78_0();

  OUTLINED_FUNCTION_60_1();
}

uint64_t StartCallCATs.hangUpTip(device:hintIdentifier:)()
{
  OUTLINED_FUNCTION_15();
  v1[4] = v2;
  v1[5] = v0;
  v1[2] = v3;
  v1[3] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v5);
  v7 = *(v6 + 64);
  v1[6] = OUTLINED_FUNCTION_45();
  v8 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v8, v9, v10);
}

{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_23_0();
  v1 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v2 = OUTLINED_FUNCTION_45_0();
  v0[7] = v2;
  OUTLINED_FUNCTION_0_2(v2, xmmword_424FF0);
  v3 = 0;
  if (v1)
  {
    v3 = type metadata accessor for SirikitDeviceState();
  }

  else
  {
    v2[3].n128_u64[1] = 0;
    v2[4].n128_u64[0] = 0;
  }

  v4 = v0[6];
  v5 = v0[4];
  OUTLINED_FUNCTION_132_1(v3);
  OUTLINED_FUNCTION_191(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR, v6);
  v7 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_58(v7);
  v8 = v0[6];
  OUTLINED_FUNCTION_204_0();
  if (v9)
  {

    outlined destroy of SpeakableString?(v8, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_160_2();
  }

  else
  {
    OUTLINED_FUNCTION_201();
    OUTLINED_FUNCTION_6_0();
    v11 = *(v10 + 32);
    OUTLINED_FUNCTION_16_0();
    v12();
  }

  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[8] = v13;
  *v13 = v14;
  OUTLINED_FUNCTION_44_2(v13);
  OUTLINED_FUNCTION_120_4();
  OUTLINED_FUNCTION_193_0();
  OUTLINED_FUNCTION_65_1();

  return v19(v15, v16, v17, v18, v19, v20, v21, v22);
}

{
  OUTLINED_FUNCTION_15();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v4);
  v6 = *(v5 + 64);
  v1[5] = OUTLINED_FUNCTION_45();
  v7 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v7, v8, v9);
}

{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_23_0();
  v2 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_45_0();
  v4 = OUTLINED_FUNCTION_153(v3);
  OUTLINED_FUNCTION_0_2(v4, xmmword_424FF0);
  v5 = 0;
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
  v7 = v0[3];
  OUTLINED_FUNCTION_132_1(v5);
  OUTLINED_FUNCTION_191(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR, v8);
  v9 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_58(v9);
  v10 = v0[5];
  OUTLINED_FUNCTION_225_0();
  if (v11)
  {

    outlined destroy of SpeakableString?(v10, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_160_2();
  }

  else
  {
    OUTLINED_FUNCTION_201();
    OUTLINED_FUNCTION_6_0();
    v13 = *(v12 + 32);
    OUTLINED_FUNCTION_16_0();
    v14();
  }

  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapper.executeDialog(catId:parameters:));
  v15 = swift_task_alloc();
  v0[7] = v15;
  *v15 = v0;
  OUTLINED_FUNCTION_114_0(v15);
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_131_3(19);
  OUTLINED_FUNCTION_65_1();

  return v19(v16, v17, v18, v19, v20, v21, v22, v23);
}

uint64_t StartCallCATs.hangUpTip(device:hintIdentifier:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_37_4();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v8);
  OUTLINED_FUNCTION_27_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v9 = OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_0_2(v9, xmmword_424FF0);
  if (v2)
  {
    type metadata accessor for SirikitDeviceState();
    v10 = v2;
  }

  else
  {
    OUTLINED_FUNCTION_68_11();
  }

  *(v9 + 48) = v10;
  OUTLINED_FUNCTION_207();
  *(v9 + 72) = v11;
  *(v9 + 80) = v12;
  OUTLINED_FUNCTION_205_0();
  *(v9 + 88) = v13;
  outlined init with copy of SpeakableString?(a2, v3, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v14 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_5_1(v14);
  if (v15)
  {

    outlined destroy of SpeakableString?(v3, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v9 + 96) = 0u;
    *(v9 + 112) = 0u;
  }

  else
  {
    *(v9 + 120) = a2;
    __swift_allocate_boxed_opaque_existential_1((v9 + 96));
    OUTLINED_FUNCTION_24_23();
    v17 = *(v16 + 32);
    OUTLINED_FUNCTION_47_15();
    v18();
  }

  OUTLINED_FUNCTION_67_16();
  OUTLINED_FUNCTION_111_6(19);
  dispatch thunk of CATWrapper.execute(catId:parameters:)();
}

uint64_t StartCallCATs.intentConfirmation(intent:completion:)()
{
  OUTLINED_FUNCTION_23_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v1 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_12_6(v1, xmmword_424FD0);
  if (v0)
  {
    v2 = type metadata accessor for PhoneStartCallIntent(0);
    v3 = v0;
  }

  else
  {
    v2 = OUTLINED_FUNCTION_13_8();
  }

  OUTLINED_FUNCTION_54_6(v2, v3);
  OUTLINED_FUNCTION_62_3();
  OUTLINED_FUNCTION_78_0();
}

uint64_t StartCallCATs.intentConfirmation(intent:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t StartCallCATs.intentConfirmation(intent:)()
{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_23_0();
  v2 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_35_1();
  v4 = OUTLINED_FUNCTION_50_0(v3);
  OUTLINED_FUNCTION_12_6(v4, xmmword_424FD0);
  v5 = 0;
  if (v2)
  {
    v5 = type metadata accessor for PhoneStartCallIntent(0);
  }

  else
  {
    *(v1 + 56) = 0;
    *(v1 + 64) = 0;
  }

  OUTLINED_FUNCTION_31_1(v5);
  OUTLINED_FUNCTION_7_82(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));

  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_16_12(v6);
  *v7 = v8;
  OUTLINED_FUNCTION_19_10(v7);
  OUTLINED_FUNCTION_41_2();
  OUTLINED_FUNCTION_65_1();

  return v13(v9, v10, v11, v12, v13, v14, v15, v16);
}

{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_23_0();
  v2 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_35_1();
  v4 = OUTLINED_FUNCTION_51(v3);
  OUTLINED_FUNCTION_12_6(v4, xmmword_424FD0);
  v5 = 0;
  if (v2)
  {
    v5 = type metadata accessor for PhoneStartCallIntent(0);
  }

  else
  {
    *(v1 + 56) = 0;
    *(v1 + 64) = 0;
  }

  OUTLINED_FUNCTION_31_1(v5);
  OUTLINED_FUNCTION_7_82(&async function pointer to dispatch thunk of CATWrapper.executeDialog(catId:parameters:));

  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_117(v6);
  *v7 = v8;
  OUTLINED_FUNCTION_30(v7);
  OUTLINED_FUNCTION_43_4(28);
  OUTLINED_FUNCTION_65_1();

  return v12(v9, v10, v11, v12, v13, v14, v15, v16);
}

{
  OUTLINED_FUNCTION_37_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v1 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_12_6(v1, xmmword_424FD0);
  if (v0)
  {
    v2 = type metadata accessor for PhoneStartCallIntent(0);
    v3 = v0;
  }

  else
  {
    v2 = OUTLINED_FUNCTION_68_11();
  }

  OUTLINED_FUNCTION_55_3(v2, v3);
  OUTLINED_FUNCTION_171();
  OUTLINED_FUNCTION_131_2();
  OUTLINED_FUNCTION_111_6(28);
  dispatch thunk of CATWrapper.execute(catId:parameters:)();
}

uint64_t StartCallCATs.intentConfirmation(intent:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t StartCallCATs.intentConfirmationEmergency(intent:device:shouldPlayTTSCountdown:completion:)()
{
  OUTLINED_FUNCTION_66();
  OUTLINED_FUNCTION_216_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v6 = OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_12_6(v6, xmmword_426980);
  if (v5)
  {
    type metadata accessor for PhoneStartCallIntent(0);
    v7 = v5;
  }

  else
  {
    OUTLINED_FUNCTION_18_2();
    v6[3].n128_u64[1] = 0;
    v6[4].n128_u64[0] = 0;
  }

  v6[3].n128_u64[0] = v7;
  OUTLINED_FUNCTION_27_1();
  v6[4].n128_u64[1] = v8;
  v6[5].n128_u64[0] = v9;
  v6[5].n128_u64[1] = 0xE600000000000000;
  if (v3)
  {
    type metadata accessor for SirikitDeviceState();
    v10 = v3;
  }

  else
  {
    OUTLINED_FUNCTION_18_2();
    v6[6].n128_u64[1] = 0;
    v6[7].n128_u64[0] = 0;
  }

  v6[6].n128_u64[0] = v10;
  OUTLINED_FUNCTION_36_7();
  v6[7].n128_u64[1] = v11;
  v6[8].n128_u64[0] = 0xD000000000000016;
  v6[8].n128_u64[1] = v12;
  v6[10].n128_u64[1] = &type metadata for Bool;
  v6[9].n128_u8[0] = v1 & 1;

  dispatch thunk of CATWrapper.execute(catId:parameters:completion:)();
  OUTLINED_FUNCTION_65();
}

uint64_t StartCallCATs.intentConfirmationEmergency(intent:device:shouldPlayTTSCountdown:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v5 + 72) = a4;
  *(v5 + 32) = a3;
  *(v5 + 40) = v4;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t StartCallCATs.intentConfirmationEmergency(intent:device:shouldPlayTTSCountdown:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_61_0();
  OUTLINED_FUNCTION_31();
  v12 = *(v10 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v13 = OUTLINED_FUNCTION_47();
  v14 = OUTLINED_FUNCTION_153(v13);
  OUTLINED_FUNCTION_12_6(v14, xmmword_426980);
  if (v12)
  {
    v15 = type metadata accessor for PhoneStartCallIntent(0);
    v16 = v12;
  }

  else
  {
    v15 = OUTLINED_FUNCTION_14();
  }

  v17 = *(v10 + 32);
  OUTLINED_FUNCTION_15_9(v15, v16);
  if (v17)
  {
    type metadata accessor for SirikitDeviceState();
  }

  else
  {
    v11[13] = 0;
    v11[14] = 0;
  }

  v18 = *(v10 + 72);
  v11[12] = v17;
  OUTLINED_FUNCTION_39_0();
  v11[17] = v19;
  OUTLINED_FUNCTION_224_0(v20);
  OUTLINED_FUNCTION_165_1(v21, &async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));

  v22 = swift_task_alloc();
  v23 = OUTLINED_FUNCTION_22_19(v22);
  *v23 = v24;
  OUTLINED_FUNCTION_44_2(v23);
  OUTLINED_FUNCTION_152_0();
  OUTLINED_FUNCTION_193_0();
  OUTLINED_FUNCTION_60();

  return v29(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10);
}

{
  OUTLINED_FUNCTION_61_0();
  OUTLINED_FUNCTION_31();
  v12 = *(v10 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v13 = OUTLINED_FUNCTION_47();
  v14 = OUTLINED_FUNCTION_47_3(v13);
  OUTLINED_FUNCTION_12_6(v14, xmmword_426980);
  if (v12)
  {
    v15 = type metadata accessor for PhoneStartCallIntent(0);
    v16 = v12;
  }

  else
  {
    v15 = OUTLINED_FUNCTION_14();
  }

  v17 = *(v10 + 24);
  OUTLINED_FUNCTION_15_9(v15, v16);
  if (v17)
  {
    type metadata accessor for SirikitDeviceState();
  }

  else
  {
    v11[13] = 0;
    v11[14] = 0;
  }

  v18 = *(v10 + 64);
  v11[12] = v17;
  OUTLINED_FUNCTION_39_0();
  v11[17] = v19;
  OUTLINED_FUNCTION_224_0(v20);
  OUTLINED_FUNCTION_165_1(v21, &async function pointer to dispatch thunk of CATWrapper.executeDialog(catId:parameters:));

  v22 = swift_task_alloc();
  v23 = OUTLINED_FUNCTION_16_12(v22);
  *v23 = v24;
  OUTLINED_FUNCTION_114_0(v23);
  OUTLINED_FUNCTION_183_1();
  OUTLINED_FUNCTION_60();

  return v28(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10);
}

uint64_t StartCallCATs.intentConfirmationEmergency(intent:device:shouldPlayTTSCountdown:)(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 24) = a2;
  *(v4 + 32) = v3;
  *(v4 + 64) = a3;
  *(v4 + 16) = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t StartCallCATs.intentConfirmationEmergency(intent:device:shouldPlayTTSCountdown:)()
{
  OUTLINED_FUNCTION_61_6();
  v3 = v2;
  OUTLINED_FUNCTION_97_6();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v4 = OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_12_6(v4, xmmword_426980);
  if (v1)
  {
    v5 = type metadata accessor for PhoneStartCallIntent(0);
    v6 = v1;
  }

  else
  {
    v5 = OUTLINED_FUNCTION_14();
  }

  OUTLINED_FUNCTION_15_9(v5, v6);
  if (v0)
  {
    type metadata accessor for SirikitDeviceState();
    v7 = v0;
  }

  else
  {
    OUTLINED_FUNCTION_7_7();
  }

  v4[6].n128_u64[0] = v7;
  OUTLINED_FUNCTION_36_7();
  v4[7].n128_u64[1] = v8;
  v4[8].n128_u64[0] = 0xD000000000000016;
  v4[8].n128_u64[1] = v9;
  v4[10].n128_u64[1] = &type metadata for Bool;
  v4[9].n128_u8[0] = v3 & 1;

  dispatch thunk of CATWrapper.execute(catId:parameters:)();
  OUTLINED_FUNCTION_60_1();
}

uint64_t StartCallCATs.intentConfirmationEmergencyVoiceOnly()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_18(v0);
  *v1 = v2;
  v1[1] = closure #1 in ActionableCallControlFlow.execute();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_35_14();

  return v3();
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_1_10(&async function pointer to dispatch thunk of CATWrapper.executeDialog(catId:parameters:));
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_15_2(v0);
  *v1 = v2;
  v1[1] = AddCallParticipantCATs.unsupportedParticipantsMultipleContactsUnsupported();
  OUTLINED_FUNCTION_32();
  v3 = OUTLINED_FUNCTION_36_1(46);

  return v4(v3);
}

{
  return OUTLINED_FUNCTION_33_1();
}

uint64_t StartCallCATs.intentConfirmationWithRestrictedContacts(intent:allowedContacts:restrictedContacts:completion:)()
{
  OUTLINED_FUNCTION_66();
  OUTLINED_FUNCTION_216_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v6 = OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_12_6(v6, xmmword_426980);
  if (v5)
  {
    type metadata accessor for PhoneStartCallIntent(0);
    v7 = v5;
  }

  else
  {
    OUTLINED_FUNCTION_14();
  }

  v6[3].n128_u64[0] = v7;
  OUTLINED_FUNCTION_108_5();
  v6[4].n128_u64[1] = v8;
  v6[5].n128_u64[0] = v9;
  OUTLINED_FUNCTION_107_5();
  v6[5].n128_u64[1] = v10;
  if (v3)
  {
    type metadata accessor for PhonePersonList();
    v11 = v3;
  }

  else
  {
    OUTLINED_FUNCTION_7_7();
  }

  v6[6].n128_u64[0] = v11;
  OUTLINED_FUNCTION_36_7();
  v6[7].n128_u64[1] = v12;
  v6[8].n128_u64[0] = 0xD000000000000012;
  v6[8].n128_u64[1] = v13;
  if (v1)
  {
    v14 = type metadata accessor for PhonePersonList();
    v15 = v1;
  }

  else
  {
    v14 = OUTLINED_FUNCTION_18_2();
    v6[9].n128_u64[1] = 0;
    v6[10].n128_u64[0] = 0;
  }

  v6[9].n128_u64[0] = v15;
  v6[10].n128_u64[1] = v14;

  OUTLINED_FUNCTION_116_2();
  OUTLINED_FUNCTION_65();
}

uint64_t StartCallCATs.intentConfirmationWithRestrictedContacts(intent:allowedContacts:restrictedContacts:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t StartCallCATs.intentConfirmationWithRestrictedContacts(intent:allowedContacts:restrictedContacts:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_101_4();
  OUTLINED_FUNCTION_24_1();
  v13 = v12[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v14 = OUTLINED_FUNCTION_47();
  v12[7] = v14;
  OUTLINED_FUNCTION_12_6(v14, xmmword_426980);
  if (v13)
  {
    type metadata accessor for PhoneStartCallIntent(0);
    v15 = v13;
  }

  else
  {
    OUTLINED_FUNCTION_18_2();
    v14[3].n128_u64[1] = 0;
    v14[4].n128_u64[0] = 0;
  }

  v16 = v12[4];
  v14[3].n128_u64[0] = v15;
  OUTLINED_FUNCTION_108_5();
  v14[4].n128_u64[1] = v17;
  v14[5].n128_u64[0] = v18;
  OUTLINED_FUNCTION_107_5();
  v14[5].n128_u64[1] = v19;
  if (v16)
  {
    v20 = type metadata accessor for PhonePersonList();
    v21 = v16;
  }

  else
  {
    v20 = OUTLINED_FUNCTION_18_2();
    v14[6].n128_u64[1] = 0;
    v14[7].n128_u64[0] = 0;
  }

  v22 = v12[5];
  v14[6].n128_u64[0] = v21;
  v23 = OUTLINED_FUNCTION_106_0(v20, "launchAppPunchOutAction");
  if (v22)
  {
    v23 = type metadata accessor for PhonePersonList();
  }

  else
  {
    v14[9].n128_u64[1] = 0;
    v14[10].n128_u64[0] = 0;
  }

  v14[9].n128_u64[0] = v22;
  v14[10].n128_u64[1] = v23;
  v24 = *(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:) + 1);
  OUTLINED_FUNCTION_20_4();

  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v12[8] = v25;
  *v25 = v26;
  v25[1] = SearchCallHistoryCATs.readMissedCallHistoryIntroduction(callRecordCount:totalCallRecordCount:intent:);
  v27 = v12[6];
  v28 = v12[2];
  OUTLINED_FUNCTION_133_3();

  return v33(v29, v30, v31, v32, v33, v34, v35, v36, a9, a10, a11, a12);
}

{
  OUTLINED_FUNCTION_101_4();
  OUTLINED_FUNCTION_24_1();
  v13 = v12[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v14 = OUTLINED_FUNCTION_47();
  v12[6] = v14;
  OUTLINED_FUNCTION_12_6(v14, xmmword_426980);
  if (v13)
  {
    type metadata accessor for PhoneStartCallIntent(0);
    v15 = v13;
  }

  else
  {
    OUTLINED_FUNCTION_18_2();
    v14[3].n128_u64[1] = 0;
    v14[4].n128_u64[0] = 0;
  }

  v16 = v12[3];
  v14[3].n128_u64[0] = v15;
  OUTLINED_FUNCTION_108_5();
  v14[4].n128_u64[1] = v17;
  v14[5].n128_u64[0] = v18;
  OUTLINED_FUNCTION_107_5();
  v14[5].n128_u64[1] = v19;
  if (v16)
  {
    v20 = type metadata accessor for PhonePersonList();
    v21 = v16;
  }

  else
  {
    v20 = OUTLINED_FUNCTION_18_2();
    v14[6].n128_u64[1] = 0;
    v14[7].n128_u64[0] = 0;
  }

  v22 = v12[4];
  v14[6].n128_u64[0] = v21;
  v23 = OUTLINED_FUNCTION_106_0(v20, "launchAppPunchOutAction");
  if (v22)
  {
    v23 = type metadata accessor for PhonePersonList();
  }

  else
  {
    v14[9].n128_u64[1] = 0;
    v14[10].n128_u64[0] = 0;
  }

  v14[9].n128_u64[0] = v22;
  v14[10].n128_u64[1] = v23;
  v24 = *(&async function pointer to dispatch thunk of CATWrapper.executeDialog(catId:parameters:) + 1);
  OUTLINED_FUNCTION_20_4();

  v25 = swift_task_alloc();
  v26 = OUTLINED_FUNCTION_22_19(v25);
  *v26 = v27;
  v26[1] = SearchCallHistoryCATs.readMissedCallHistoryIntroduction(callRecordCount:totalCallRecordCount:intent:);
  v28 = v12[5];
  OUTLINED_FUNCTION_133_3();

  return v32(v29, v30, v31, v32, v33, v34, v35, v36, a9, a10, a11, a12);
}

uint64_t StartCallCATs.intentConfirmationWithRestrictedContacts(intent:allowedContacts:restrictedContacts:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t StartCallCATs.intentConfirmationWithRestrictedContacts(intent:allowedContacts:restrictedContacts:)()
{
  OUTLINED_FUNCTION_61_6();
  v2 = v1;
  v4 = v3;
  OUTLINED_FUNCTION_37_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v5 = OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_12_6(v5, xmmword_426980);
  if (v0)
  {
    type metadata accessor for PhoneStartCallIntent(0);
    v6 = v0;
  }

  else
  {
    OUTLINED_FUNCTION_14();
  }

  v5[3].n128_u64[0] = v6;
  OUTLINED_FUNCTION_108_5();
  v5[4].n128_u64[1] = v7;
  v5[5].n128_u64[0] = v8;
  OUTLINED_FUNCTION_107_5();
  v5[5].n128_u64[1] = v9;
  if (v4)
  {
    type metadata accessor for PhonePersonList();
    v10 = v4;
  }

  else
  {
    OUTLINED_FUNCTION_7_7();
  }

  v5[6].n128_u64[0] = v10;
  OUTLINED_FUNCTION_36_7();
  v5[7].n128_u64[1] = v11;
  v5[8].n128_u64[0] = 0xD000000000000012;
  v5[8].n128_u64[1] = v12;
  if (v2)
  {
    v13 = type metadata accessor for PhonePersonList();
    v14 = v2;
  }

  else
  {
    v13 = OUTLINED_FUNCTION_18_2();
    v5[9].n128_u64[1] = 0;
    v5[10].n128_u64[0] = 0;
  }

  v5[9].n128_u64[0] = v14;
  v5[10].n128_u64[1] = v13;

  dispatch thunk of CATWrapper.execute(catId:parameters:)();
  OUTLINED_FUNCTION_60_1();
}

void StartCallCATs.intentHandledResponse(intent:redactedContacts:device:appName:isFirstPartyApp:isWalkieTalkie:shouldPrintDialogOnDisplayMode:completion:)()
{
  OUTLINED_FUNCTION_66();
  v28 = v5;
  OUTLINED_FUNCTION_179();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v9);
  OUTLINED_FUNCTION_182_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v10 = OUTLINED_FUNCTION_186();
  OUTLINED_FUNCTION_12_6(v10, xmmword_431D00);
  if (v2)
  {
    type metadata accessor for PhoneStartCallIntent(0);
    v11 = v2;
  }

  else
  {
    OUTLINED_FUNCTION_14();
  }

  v10[3].n128_u64[0] = v11;
  OUTLINED_FUNCTION_36_7();
  v10[4].n128_u64[1] = v12;
  v10[5].n128_u64[0] = 0xD000000000000010;
  v10[5].n128_u64[1] = v13;
  if (v1)
  {
    type metadata accessor for PhonePersonList();
    v14 = v1;
  }

  else
  {
    OUTLINED_FUNCTION_7_7();
  }

  v10[6].n128_u64[0] = v14;
  OUTLINED_FUNCTION_27_1();
  v10[7].n128_u64[1] = v15;
  v10[8].n128_u64[0] = v16;
  v10[8].n128_u64[1] = 0xE600000000000000;
  if (v3)
  {
    type metadata accessor for SirikitDeviceState();
    v17 = v3;
  }

  else
  {
    OUTLINED_FUNCTION_18_2();
    v10[9].n128_u64[1] = 0;
    v10[10].n128_u64[0] = 0;
  }

  v10[9].n128_u64[0] = v17;
  OUTLINED_FUNCTION_48_2();
  v10[10].n128_u64[1] = v18;
  v10[11].n128_u64[0] = v19;
  v10[11].n128_u64[1] = 0xE700000000000000;
  outlined init with copy of SpeakableString?(v0, v4, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v20 = type metadata accessor for SpeakableString();
  v21 = OUTLINED_FUNCTION_221_0();
  OUTLINED_FUNCTION_9_40(v21, v22, v20);
  if (v23)
  {

    outlined destroy of SpeakableString?(v4, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_214_0();
  }

  else
  {
    OUTLINED_FUNCTION_228_0();
    OUTLINED_FUNCTION_6_0();
    (*(v24 + 32))();
  }

  OUTLINED_FUNCTION_21_48();
  v10[14].n128_u64[0] = v25;
  v10[14].n128_u64[1] = v26;
  OUTLINED_FUNCTION_121_3();
  v10[19].n128_u64[1] = v27;
  v10[20].n128_u64[0] = 0xD00000000000001ELL;
  v10[20].n128_u64[1] = 0x8000000000462240;
  v10[22].n128_u64[1] = v27;
  v10[21].n128_u8[0] = v28 & 1;
  dispatch thunk of CATWrapper.execute(catId:parameters:completion:)();

  OUTLINED_FUNCTION_65();
}