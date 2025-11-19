void SearchCallHistoryTemplatingService.__allocating_init(sharedGlobals:displayTextCats:phoneCallCommonCats:searchCallHistoryCatFamily:startCallCatFamily:appInfoBuilder:labelTemplating:)()
{
  OUTLINED_FUNCTION_66();
  v3 = v0;
  v5 = v4;
  v7 = v6;
  v35 = v8;
  v36 = v9;
  v33 = v10;
  v34 = v11;
  v13 = v12;
  v14 = *(v3 + 48);
  v15 = *(v3 + 52);
  v16 = swift_allocObject();
  v18 = v7[3];
  v17 = v7[4];
  __swift_mutable_project_boxed_opaque_existential_1(v7, v18);
  OUTLINED_FUNCTION_9_1();
  v20 = *(v19 + 64);
  __chkstk_darwin(v21);
  OUTLINED_FUNCTION_4();
  v23 = OUTLINED_FUNCTION_24_0(v22);
  v24(v23);
  v25 = v5[3];
  v26 = v5[4];
  __swift_mutable_project_boxed_opaque_existential_1(v5, v25);
  OUTLINED_FUNCTION_9_1();
  v28 = *(v27 + 64);
  __chkstk_darwin(v29);
  OUTLINED_FUNCTION_4();
  v31 = OUTLINED_FUNCTION_8_69(v30);
  v32(v31);
  specialized SearchCallHistoryTemplatingService.init(sharedGlobals:displayTextCats:phoneCallCommonCats:searchCallHistoryCatFamily:startCallCatFamily:appInfoBuilder:labelTemplating:)(v13, v33, v34, v35, v36, v2, v1, v16, v18, v25, v17, v26);
  __swift_destroy_boxed_opaque_existential_1(v5);
  __swift_destroy_boxed_opaque_existential_1(v7);
  OUTLINED_FUNCTION_65();
}

void SearchCallHistoryTemplatingService.init(sharedGlobals:displayTextCats:phoneCallCommonCats:searchCallHistoryCatFamily:startCallCatFamily:appInfoBuilder:labelTemplating:)()
{
  OUTLINED_FUNCTION_66();
  v30 = v3;
  v31 = v0;
  v5 = v4;
  v7 = v6;
  v28 = v8;
  v29 = v9;
  v11 = *(v6 + 24);
  v10 = *(v6 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v6, v11);
  OUTLINED_FUNCTION_9_1();
  v13 = *(v12 + 64);
  __chkstk_darwin(v14);
  OUTLINED_FUNCTION_4();
  v16 = OUTLINED_FUNCTION_24_0(v15);
  v17(v16);
  v18 = v5[3];
  v19 = v5[4];
  __swift_mutable_project_boxed_opaque_existential_1(v5, v18);
  OUTLINED_FUNCTION_9_1();
  v21 = *(v20 + 64);
  __chkstk_darwin(v22);
  OUTLINED_FUNCTION_4();
  v24 = OUTLINED_FUNCTION_8_69(v23);
  v25(v24);
  v26 = OUTLINED_FUNCTION_63();
  specialized SearchCallHistoryTemplatingService.init(sharedGlobals:displayTextCats:phoneCallCommonCats:searchCallHistoryCatFamily:startCallCatFamily:appInfoBuilder:labelTemplating:)(v26, v27, v28, v29, v30, v2, v1, v31, v11, v18, v10, v19);
  __swift_destroy_boxed_opaque_existential_1(v5);
  __swift_destroy_boxed_opaque_existential_1(v7);
  OUTLINED_FUNCTION_65();
}

__n128 SearchCallHistoryTemplatingService.slotTemplating(for:)@<Q0>(char a1@<W0>, uint64_t a2@<X8>)
{
  switch(a1)
  {
    case 9:
      OUTLINED_FUNCTION_35_0();
      OUTLINED_FUNCTION_6_80(v5 + class metadata base offset for PhoneCallBaseCatTemplatingService, v13);
      OUTLINED_FUNCTION_2_104(direct field offset for SearchCallHistoryTemplatingService.searchCallHistoryCatFamily);
      specialized SlotTemplating.toAnySlotTemplating()();

      outlined destroy of CallTypesSlotTemplating(v14);
      break;
    case 11:
      OUTLINED_FUNCTION_35_0();
      OUTLINED_FUNCTION_6_80(v7 + class metadata base offset for PhoneCallBaseCatTemplatingService, v13);
      v8 = *(v2 + direct field offset for SearchCallHistoryTemplatingService.startCallCatFamily);
      v15 = *(v2 + direct field offset for SearchCallHistoryTemplatingService.searchCallHistoryCatFamily);
      v16 = v8;
      v3 = &v17;
      specialized SlotTemplating.toAnySlotTemplating()();

      outlined destroy of RecipientSlotTemplating(v14);
      break;
    case 12:
      OUTLINED_FUNCTION_35_0();
      OUTLINED_FUNCTION_6_80(v9 + class metadata base offset for PhoneCallBaseCatTemplatingService, v13);
      OUTLINED_FUNCTION_2_104(direct field offset for SearchCallHistoryTemplatingService.searchCallHistoryCatFamily);
      specialized SlotTemplating.toAnySlotTemplating()();

      outlined destroy of UnseenSlotTemplating(v14);
      break;
    default:
      OUTLINED_FUNCTION_35_0();
      OUTLINED_FUNCTION_6_80(v6 + class metadata base offset for PhoneCallBaseCatTemplatingService, v13);
      OUTLINED_FUNCTION_2_104(direct field offset for SearchCallHistoryTemplatingService.searchCallHistoryCatFamily);
      specialized SlotTemplating.toAnySlotTemplating()();

      outlined destroy of DateCreatedSlotTemplating(v14);
      break;
  }

  v10 = *(v3 + 1);
  *a2 = *v3;
  *(a2 + 16) = v10;
  result = *(v3 + 2);
  v12 = *(v3 + 3);
  *(a2 + 32) = result;
  *(a2 + 48) = v12;
  return result;
}

void SearchCallHistoryTemplatingService.makeIntentHandledDialog(app:intent:intentResponse:_:)()
{
  OUTLINED_FUNCTION_66();
  v1 = v0;
  v3 = v2;
  v59 = v4;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v49 - v13;
  v15 = type metadata accessor for Locale();
  OUTLINED_FUNCTION_9_1();
  v17 = v16;
  v19 = *(v18 + 64);
  __chkstk_darwin(v20);
  OUTLINED_FUNCTION_4();
  v58 = v22 - v21;
  v23 = App.isFirstParty()();
  v56 = v14;
  if (v23)
  {
    v24 = static SearchCallHistoryCatParameterHelper.makePhonePersons1P(intent:intentResponse:)(*&v8, *&v6);
  }

  else
  {
    v25 = [*&v8 recipient];
    if (v25)
    {
      v26 = v25;
      v52 = v8;
      v53 = v10;
      v57 = v3;
      v51 = type metadata accessor for PhonePerson(0);
      v27 = v26;
      static Device.current.getter();
      __swift_project_boxed_opaque_existential_1(v60, v60[3]);
      v28 = v58;
      dispatch thunk of DeviceState.siriLocale.getter();
      __swift_destroy_boxed_opaque_existential_1(v60);
      v29 = static PhonePerson.make(phonePerson:options:locale:)(v26, 0, v28);

      (*(v17 + 8))(v28, v15);
      if (v29)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
        v24 = swift_allocObject();
        *(v24 + 1) = xmmword_426260;
        v24[4] = v29;
      }

      else
      {

        v24 = _swiftEmptyArrayStorage;
      }

      v3 = v57;
      v8 = v52;
      v10 = v53;
    }

    else
    {
      v24 = _swiftEmptyArrayStorage;
    }
  }

  type metadata accessor for PhoneSearchCallHistoryIntent(0);
  type metadata accessor for PhonePersonList();
  v30 = PhonePersonList.__allocating_init(list:)(v24);
  v31 = PhoneSearchCallHistoryIntent.__allocating_init(intent:recipients:)(*&v8, v30);
  specialized PhoneSearchCallHistoryIntentProperties.isRequestContainingOnlyCallTypes(callRecordTypes:)(&outlined read-only object #0 of specialized PhoneSearchCallHistoryIntentProperties.isRequestForMissed.getter);
  v32 = *(v1 + direct field offset for SearchCallHistoryTemplatingService.searchCallHistoryCatFamily);
  if (v33)
  {
    if (v6 == 0.0)
    {
      v34 = 0.0;
    }

    else
    {
      v34 = INSearchCallHistoryIntentResponse.callRecordsCount.getter();
      v6 = INSearchCallHistoryIntentResponse.totalCallRecordsCount.getter();
    }

    v35 = *(*v32 + class metadata base offset for SearchCallHistoryCATs + 288);

    v35(*&v34, 0, *&v6, 0, v31, v59, v3);
  }

  else
  {
    v57 = v3;
    v54 = v17;
    v55 = v15;
    if (v6 == 0.0)
    {
      v52 = 0.0;
      v53 = 0.0;
    }

    else
    {
      v53 = INSearchCallHistoryIntentResponse.callRecordsCount.getter();
      v52 = INSearchCallHistoryIntentResponse.totalCallRecordsCount.getter();
    }

    type metadata accessor for SirikitDeviceState();
    v36 = (v1 + *(*v1 + class metadata base offset for PhoneCallBaseCatTemplatingService + 40));
    outlined init with copy of SignalProviding(v36, v60);
    v51 = SirikitDeviceState.__allocating_init(from:)();

    v50 = App.isFirstParty()();
    v37 = (v1 + *(*v1 + class metadata base offset for PhoneCallBaseCatTemplatingService + 48));
    v38 = v10;
    v39 = v37[3];
    v40 = v37[4];
    __swift_project_boxed_opaque_existential_1(v37, v39);
    v41 = v36[4];
    __swift_project_boxed_opaque_existential_1(v36, v36[3]);
    v42 = v58;
    dispatch thunk of DeviceState.siriLocale.getter();
    (*(v40 + 16))(COERCE_DOUBLE(*&v38), v42, v39, v40);
    v44 = v43;
    (*(v54 + 8))(v42, v55);
    if (v44)
    {
      v45 = v56;
      SpeakableString.init(print:speak:)();
      v46 = 0;
    }

    else
    {
      v46 = 1;
      v45 = v56;
    }

    v47 = v57;
    v48 = type metadata accessor for SpeakableString();
    __swift_storeEnumTagSinglePayload(v45, v46, 1, v48);
    (*(*v32 + class metadata base offset for SearchCallHistoryCATs + 256))(COERCE_DOUBLE(*&v53), 0, COERCE_DOUBLE(*&v52), 0, v51, v31, v50, v45, v59, v47);

    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v45, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  }

  OUTLINED_FUNCTION_65();
}

void SearchCallHistoryTemplatingService.makeFailureHandlingIntentDialog(app:intent:intentResponse:_:)()
{
  OUTLINED_FUNCTION_66();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = type metadata accessor for Locale();
  OUTLINED_FUNCTION_9_1();
  v13 = v12;
  v15 = *(v14 + 64);
  __chkstk_darwin(v16);
  OUTLINED_FUNCTION_4();
  v19 = v18 - v17;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v21 = *(*(v20 - 8) + 64);
  *&v22 = __chkstk_darwin(v20 - 8).n128_u64[0];
  v24 = v43 - v23;
  v25 = [v6 code];
  v26 = *(v0 + direct field offset for SearchCallHistoryTemplatingService.searchCallHistoryCatFamily);
  if (v25 == &dword_4 + 1)
  {
    v45 = v8;
    v46 = v4;
    v47 = v2;
    OUTLINED_FUNCTION_35_0();
    v28 = (v0 + *(v27 + class metadata base offset for PhoneCallBaseCatTemplatingService + 48));
    v44 = v10;
    v30 = v28[3];
    v29 = v28[4];
    v43[1] = __swift_project_boxed_opaque_existential_1(v28, v30);
    OUTLINED_FUNCTION_35_0();
    v32 = (v0 + *(v31 + class metadata base offset for PhoneCallBaseCatTemplatingService + 40));
    v33 = v11;
    v34 = v32[4];
    __swift_project_boxed_opaque_existential_1(v32, v32[3]);
    dispatch thunk of DeviceState.siriLocale.getter();
    (*(v29 + 16))(v44, v19, v30, v29);
    v36 = v35;
    (*(v13 + 8))(v19, v33);
    if (v36)
    {
      SpeakableString.init(print:speak:)();
      v37 = 0;
    }

    else
    {
      v37 = 1;
    }

    v39 = v45;
    v40 = v46;
    v41 = type metadata accessor for SpeakableString();
    __swift_storeEnumTagSinglePayload(v24, v37, 1, v41);
    type metadata accessor for PhoneSearchCallHistoryIntent(0);
    v42 = PhoneSearchCallHistoryIntent.__allocating_init(intent:)(v39);
    (*(*v26 + class metadata base offset for SearchCallHistoryCATs + 224))(v24, v42, v40, v47);

    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v24, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  }

  else
  {
    v38 = *(v0 + direct field offset for SearchCallHistoryTemplatingService.searchCallHistoryCatFamily);
    (*(*v26 + class metadata base offset for SearchCallHistoryCATs + 192))(v4, v2);
  }

  OUTLINED_FUNCTION_65();
}

uint64_t SearchCallHistoryTemplatingService.makeParameterPromptDialog(app:parameterName:intent:_:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  v12._countAndFlagsBits = a2;
  v12._object = a3;
  v13.value = PhoneCallSlotNames.init(rawValue:)(v12).value;
  v14 = SearchCallHistoryTemplatingService.slotTemplating(for:)(v13.value, &v16);
  v16(a1, a2, a3, a4, a5, a6, v14);
}

uint64_t SearchCallHistoryTemplatingService.makeParameterValueConfirmationDialog(app:parameterName:intentResolutionResult:intent:_:)(uint64_t a1, uint64_t a2, void *a3)
{

  v5._countAndFlagsBits = a2;
  v5._object = a3;
  v6.value = PhoneCallSlotNames.init(rawValue:)(v5).value;
  SearchCallHistoryTemplatingService.slotTemplating(for:)(v6.value, &v10);
  v7 = OUTLINED_FUNCTION_63();
  v8(v7);
}

uint64_t SearchCallHistoryTemplatingService.makeParameterValueUnsupportedDialog(app:parameterName:intentResolutionResult:intent:multicardinalValueIndex:_:)()
{
  OUTLINED_FUNCTION_5_6();
  v0._countAndFlagsBits = OUTLINED_FUNCTION_63();
  v1.value = PhoneCallSlotNames.init(rawValue:)(v0).value;
  SearchCallHistoryTemplatingService.slotTemplating(for:)(v1.value, v5);
  v2 = OUTLINED_FUNCTION_10_7();
  v3(v2);
}

uint64_t SearchCallHistoryTemplatingService.makeParameterValueDisambiguationDialog(app:parameterName:intentResolutionResult:disambiguationList:deviceIsLocked:intent:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_5_6();
  v12._countAndFlagsBits = OUTLINED_FUNCTION_63();
  v13.value = PhoneCallSlotNames.init(rawValue:)(v12).value;
  v14 = SearchCallHistoryTemplatingService.slotTemplating(for:)(v13.value, v18);
  (*(*v8 + class metadata base offset for PhoneCallBaseCatTemplatingService + 216))(v9, a8, v10, v14);
  v15 = OUTLINED_FUNCTION_10_7();
  v16(v15);
}

uint64_t SearchCallHistoryTemplatingService.__ivar_destroyer()
{
  v1 = *(v0 + direct field offset for SearchCallHistoryTemplatingService.searchCallHistoryCatFamily);

  v2 = *(v0 + direct field offset for SearchCallHistoryTemplatingService.startCallCatFamily);
}

void *SearchCallHistoryTemplatingService.deinit()
{
  v0 = specialized PhoneCallBaseCatTemplatingService.deinit();
  v1 = *(v0 + direct field offset for SearchCallHistoryTemplatingService.searchCallHistoryCatFamily);

  v2 = *(v0 + direct field offset for SearchCallHistoryTemplatingService.startCallCatFamily);

  return v0;
}

uint64_t SearchCallHistoryTemplatingService.__deallocating_deinit()
{
  SearchCallHistoryTemplatingService.deinit();

  return swift_deallocClassInstance();
}

uint64_t specialized SearchCallHistoryTemplatingService.init(sharedGlobals:displayTextCats:phoneCallCommonCats:searchCallHistoryCatFamily:startCallCatFamily:appInfoBuilder:labelTemplating:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v44 = a6;
  v45 = a7;
  v50 = a2;
  v51 = a3;
  v43 = a1;
  v49 = a11;
  v47 = a5;
  v48 = a12;
  v15 = type metadata accessor for CATOption();
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v17 = *(a10 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v19);
  v46 = (&v40 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v21);
  v23 = &v40 - v22;
  v40 = a9;
  v24 = *(a9 - 8);
  v25 = *(v24 + 64);
  __chkstk_darwin(v26);
  v28 = &v40 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __chkstk_darwin(v29);
  v32 = &v40 - v31;
  (*(v24 + 32))(&v40 - v31, v44, v30);
  (*(v17 + 32))(v23, v45, a10);
  v41 = a4;
  v42 = a8;
  *(a8 + direct field offset for SearchCallHistoryTemplatingService.searchCallHistoryCatFamily) = a4;
  *(a8 + direct field offset for SearchCallHistoryTemplatingService.startCallCatFamily) = v47;
  v45 = "com.apple.camera";
  outlined init with copy of SignalProviding(a1, v52);
  type metadata accessor for StartCallCATs();

  static CATOption.defaultMode.getter();
  v33 = CATWrapper.__allocating_init(options:globals:)();
  v34 = v40;
  (*(v24 + 16))(v28, v32, v40);
  v35 = v46;
  (*(v17 + 16))(v46, v23, a10);
  specialized PhoneCallBaseCatTemplatingService.init(ducFamily:sharedGlobals:displayTextCats:phoneCallCommonCats:appInfoBuilder:labelTemplating:startCallCats:)(0xD000000000000010, v45 | 0x8000000000000000, v52, v50, v51, v28, v35, v33, v42, v34, a10, v49, v48, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50);
  v37 = v36;

  __swift_destroy_boxed_opaque_existential_1(v43);
  (*(v17 + 8))(v23, a10);
  (*(v24 + 8))(v32, v34);
  return v37;
}

uint64_t type metadata accessor for SearchCallHistoryTemplatingService()
{
  result = type metadata singleton initialization cache for SearchCallHistoryTemplatingService;
  if (!type metadata singleton initialization cache for SearchCallHistoryTemplatingService)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SeasAppMatcherRule.resolve(sharedGlobals:startCallIntent:phoneCallNLIntent:appBundleIds:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a3;
  v6[4] = a6;
  v6[2] = a1;
  v7 = type metadata accessor for AppMatcherResult();
  v6[5] = v7;
  v8 = *(v7 - 8);
  v6[6] = v8;
  v9 = *(v8 + 64) + 15;
  v6[7] = swift_task_alloc();
  v10 = type metadata accessor for AppMatcher();
  v6[8] = v10;
  v11 = *(v10 - 8);
  v6[9] = v11;
  v12 = *(v11 + 64) + 15;
  v6[10] = swift_task_alloc();

  return _swift_task_switch(SeasAppMatcherRule.resolve(sharedGlobals:startCallIntent:phoneCallNLIntent:appBundleIds:), 0, 0);
}

uint64_t SeasAppMatcherRule.resolve(sharedGlobals:startCallIntent:phoneCallNLIntent:appBundleIds:)()
{
  v1 = v0[10];
  AppMatcher.init()();
  v2 = v0[10];
  v3 = v0[7];
  v4 = v0[3];
  v5 = v0[4];
  AppMatcher.resolve(intent:bundleIds:)();
  v8 = v0[9];
  v7 = v0[10];
  v9 = v0[7];
  v10 = v0[8];
  v11 = v0[5];
  v12 = v0[6];
  v13 = v0[2];
  AppMatcherResult.resolution.getter();
  (*(v12 + 8))(v9, v11);
  (*(v8 + 8))(v7, v10);

  v14 = v0[1];

  return v14();
}

Swift::String __swiftcall SeasAppMatcherRule.getName()()
{
  v0 = 0x8000000000447420;
  v1 = 0xD000000000000012;
  result._object = v0;
  result._countAndFlagsBits = v1;
  return result;
}

uint64_t protocol witness for SeasRule.resolve(sharedGlobals:startCallIntent:phoneCallNLIntent:appBundleIds:) in conformance SeasAppMatcherRule(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v14 = *(**v6 + 80);
  v18 = (v14 + *v14);
  v15 = v14[1];
  v16 = swift_task_alloc();
  *(v7 + 16) = v16;
  *v16 = v7;
  v16[1] = protocol witness for UnlockDeviceFlowStrategyAsync.makePromptForDeviceUnlock() in conformance DefaultUnlockDeviceFlowStrategyAsync;

  return v18(a1, a2, a3, a4, a5, a6);
}

uint64_t SeasAppUsageRule.__allocating_init(trialSmartAppSelectionConfigProvider:appUsageProvider:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  SeasAppUsageRule.init(trialSmartAppSelectionConfigProvider:appUsageProvider:)(a1, a2);
  return v4;
}

void *SeasAppUsageRule.init(trialSmartAppSelectionConfigProvider:appUsageProvider:)(uint64_t a1, uint64_t a2)
{
  v2[4] = type metadata accessor for SeasAppUsageRule();
  v2[5] = &outlined read-only object #0 of SeasAppUsageRule.init(trialSmartAppSelectionConfigProvider:appUsageProvider:);
  v2[6] = 0;
  v2[7] = 0;
  v2[2] = a2;
  v2[3] = a1;
  return v2;
}

uint64_t SeasAppUsageRule.resolve(sharedGlobals:startCallIntent:phoneCallNLIntent:appBundleIds:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[5] = a6;
  v7[6] = v6;
  v7[3] = a2;
  v7[4] = a5;
  v7[2] = a1;
  return _swift_task_switch(SeasAppUsageRule.resolve(sharedGlobals:startCallIntent:phoneCallNLIntent:appBundleIds:), 0, 0);
}

uint64_t SeasAppUsageRule.resolve(sharedGlobals:startCallIntent:phoneCallNLIntent:appBundleIds:)()
{
  v300 = v0;
  if (((*(**(*(v0 + 6) + 24) + 96))(2, *(v0 + 3)) & 1) == 0)
  {
    if (one-time initialization token for siriPhone != -1)
    {
LABEL_83:
      OUTLINED_FUNCTION_6_2();
    }

    v21 = *(v0 + 6);
    v22 = type metadata accessor for Logger();
    __swift_project_value_buffer(v22, static Logger.siriPhone);

    v11 = Logger.logObject.getter();
    static os_log_type_t.debug.getter();
    OUTLINED_FUNCTION_87();
    if (!OUTLINED_FUNCTION_86_0())
    {
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  static SeasRulesHelper.getContactDonationInfo(phoneCallNLIntent:appBundleIds:)(*(v0 + 4), *(v0 + 5));
  if (v6)
  {
    v7 = v4;
    v8 = v5;

    if ((v8 & 1) != 0 && !v7)
    {
      if (one-time initialization token for siriPhone != -1)
      {
        OUTLINED_FUNCTION_6_2();
      }

      v9 = *(v0 + 6);
      v10 = type metadata accessor for Logger();
      __swift_project_value_buffer(v10, static Logger.siriPhone);

      v11 = Logger.logObject.getter();
      static os_log_type_t.debug.getter();
      OUTLINED_FUNCTION_87();
      if (!OUTLINED_FUNCTION_86_0())
      {
        goto LABEL_13;
      }

      v12 = OUTLINED_FUNCTION_7_71();
      OUTLINED_FUNCTION_36();
      OUTLINED_FUNCTION_9_70();
      v13 = OUTLINED_FUNCTION_0_105(4.8149e-34);
      OUTLINED_FUNCTION_3_100(v13, v14, v15, v16, v17, v18, v19, v20, v265, v268, v273, v278, v283, v287, v292, v295, v297, v298, v299);
      OUTLINED_FUNCTION_63_1();
      *(v12 + 4) = v2;
LABEL_12:
      OUTLINED_FUNCTION_7_44();
      _os_log_impl(v32, v33, v34, v35, v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v1);
      OUTLINED_FUNCTION_26_0();
      OUTLINED_FUNCTION_35();
LABEL_13:

      v37 = *(v0 + 2);
      v38 = &enum case for AppMatchResolution.noMatchFound(_:);
      goto LABEL_72;
    }
  }

  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2();
  }

  v40 = *(v0 + 5);
  v39 = *(v0 + 6);
  v41 = type metadata accessor for Logger();
  v42 = __swift_project_value_buffer(v41, static Logger.siriPhone);

  v43 = Logger.logObject.getter();
  static os_log_type_t.debug.getter();
  OUTLINED_FUNCTION_87();

  if (OUTLINED_FUNCTION_86_0())
  {
    v45 = *(v0 + 5);
    v44 = *(v0 + 6);
    swift_slowAlloc();
    OUTLINED_FUNCTION_6_81();
    OUTLINED_FUNCTION_9_70();
    v46 = OUTLINED_FUNCTION_0_105(4.8151e-34);
    OUTLINED_FUNCTION_3_100(v46, v47, v48, v49, v50, v51, v52, v53, v265, v268, v273, v278, v283, v287, v292, v295, v297, v298, v299);
    OUTLINED_FUNCTION_125();
    *(v39 + 4) = v3;
    *(v39 + 12) = 2080;
    v54 = Array.description.getter();
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v54, v55, &v297);
    OUTLINED_FUNCTION_63_1();
    *(v39 + 14) = v45;
    OUTLINED_FUNCTION_7_44();
    _os_log_impl(v56, v57, v58, v59, v60, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_26_0();
    OUTLINED_FUNCTION_35();
  }

  v61 = *(v0 + 6);
  v2 = (*(**(v61 + 16) + 80))(*(v0 + 5), 7);

  v62 = Logger.logObject.getter();
  static os_log_type_t.debug.getter();
  OUTLINED_FUNCTION_87();

  if (OUTLINED_FUNCTION_86_0())
  {
    v63 = *(v0 + 6);
    OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_6_81();
    OUTLINED_FUNCTION_9_70();
    v64 = OUTLINED_FUNCTION_0_105(4.8152e-34);
    OUTLINED_FUNCTION_3_100(v64, v65, v66, v67, v68, v69, v70, v71, v265, v268, v273, v278, v283, v287, v292, v295, v297, v298, v299);
    OUTLINED_FUNCTION_125();
    *(v61 + 4) = &unk_426000;
    *(v61 + 12) = 2048;
    *(v61 + 14) = 7;
    *(v61 + 22) = 2080;
    type metadata accessor for NSNumber();
    v72 = Dictionary.description.getter();
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v72, v73, &v297);
    OUTLINED_FUNCTION_125();
    *(v61 + 24) = &unk_426000;
    OUTLINED_FUNCTION_7_44();
    _os_log_impl(v74, v75, v76, v77, v78, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_26_0();
    OUTLINED_FUNCTION_35();
  }

  v1 = (v2 + 64);
  v79 = -1;
  v80 = -1 << *(v2 + 32);
  if (-v80 < 64)
  {
    v79 = ~(-1 << -v80);
  }

  v81 = v79 & *(v2 + 64);
  v295 = v0;
  if (!v81)
  {
    v86 = 0;
    v85 = (63 - v80) >> 6;
    while (v85 - 1 != v81)
    {
      v82 = v81 + 1;
      v87 = *(v2 + 8 * v81 + 72);
      v86 -= 64;
      ++v81;
      if (v87)
      {
        v283 = v42;
        v84 = (v87 - 1) & v87;
        v83 = __clz(__rbit64(v87)) - v86;
        goto LABEL_28;
      }
    }

    v216 = *(v0 + 6);

    v11 = Logger.logObject.getter();
    static os_log_type_t.error.getter();
    OUTLINED_FUNCTION_87();
    if (!OUTLINED_FUNCTION_86_0())
    {
      goto LABEL_13;
    }

LABEL_11:
    v23 = OUTLINED_FUNCTION_7_71();
    OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_9_70();
    v24 = OUTLINED_FUNCTION_0_105(4.8149e-34);
    OUTLINED_FUNCTION_3_100(v24, v25, v26, v27, v28, v29, v30, v31, v265, v268, v273, v278, v283, v287, v292, v295, v297, v298, v299);
    OUTLINED_FUNCTION_63_1();
    *(v23 + 4) = v2;
    goto LABEL_12;
  }

  v283 = v42;
  v82 = 0;
  v83 = __clz(__rbit64(v81));
  v84 = (v81 - 1) & v81;
  v85 = (63 - v80) >> 6;
LABEL_28:
  v88 = (*(v2 + 48) + 16 * v83);
  v89 = v88[1];
  v287 = *v88;
  v90 = *(*(v2 + 56) + 8 * v83);

  v292 = v89;

  v0 = v90;
  while (1)
  {
    v91 = v82;
    if (!v84)
    {
      break;
    }

LABEL_33:
    v92 = __clz(__rbit64(v84));
    v84 &= v84 - 1;
    v93 = v92 | (v82 << 6);
    v94 = *(v2 + 48) + 16 * v93;
    v89 = *v94;
    v95 = *(v94 + 8);
    v96 = *(*(v2 + 56) + 8 * v93);

    v97 = v96;
    [v0 doubleValue];
    v99 = v98;
    [v97 doubleValue];
    if (v99 < v100)
    {

      v0 = v97;
      v287 = v89;
      v292 = v95;
    }

    else
    {
    }
  }

  while (1)
  {
    v82 = v91 + 1;
    if (__OFADD__(v91, 1))
    {
      __break(1u);
LABEL_82:
      __break(1u);
      goto LABEL_83;
    }

    if (v82 >= v85)
    {
      break;
    }

    v84 = v1[v82];
    ++v91;
    if (v84)
    {
      goto LABEL_33;
    }
  }

  OUTLINED_FUNCTION_19_37(v101, v102, v103, v104, v105, v106, v107, v108, v265, v268, v273, v278, v283, v287, v292);
  swift_bridgeObjectRetain_n();
  v109 = v0;
  v110 = specialized _NativeDictionary.filter(_:)(v2, v287, v89, v109);

  v2 = v110 + 64;
  v111 = -1 << *(v110 + 32);
  if (-v111 < 64)
  {
    v112 = ~(-1 << -v111);
  }

  else
  {
    v112 = -1;
  }

  v113 = v112 & *(v110 + 64);
  if (v113)
  {
    v273 = v109;
    v114 = 0;
    v115 = __clz(__rbit64(v113));
    v116 = (v113 - 1) & v113;
    v117 = (63 - v111) >> 6;
    v0 = v295;
LABEL_45:
    v120 = (*(v110 + 48) + 16 * v115);
    v268 = *v120;
    v121 = *(*(v110 + 56) + 8 * v115);
    v278 = v120[1];

    v122 = v121;

LABEL_46:
    v123 = v114;
    if (!v116)
    {
      goto LABEL_48;
    }

    do
    {
      v114 = v123;
LABEL_51:
      v124 = __clz(__rbit64(v116));
      v116 &= v116 - 1;
      v125 = v124 | (v114 << 6);
      v126 = *(v110 + 48) + 16 * v125;
      v121 = *v126;
      v127 = *(v126 + 8);
      v128 = *(*(v110 + 56) + 8 * v125);

      v1 = v128;
      [v122 doubleValue];
      v130 = v129;
      [v1 doubleValue];
      if (v130 < v131)
      {

        v122 = v1;
        v278 = v127;
        v268 = v121;
        v0 = v295;
        goto LABEL_46;
      }

      v123 = v114;
      v0 = v295;
    }

    while (v116);
LABEL_48:
    while (1)
    {
      v114 = v123 + 1;
      if (__OFADD__(v123, 1))
      {
        goto LABEL_82;
      }

      if (v114 >= v117)
      {
        v132 = *(v0 + 6);

        OUTLINED_FUNCTION_19_37(v133, v134, v135, v136, v137, v138, v139, v140, v265, v268, v273, v278, v283, v287, v292);

        v141 = v275;
        v142 = v280;

        v143 = v122;
        v144 = Logger.logObject.getter();
        v145 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v144, v145))
        {
          HIDWORD(v266) = v145;
          v146 = *(v0 + 6);
          v147 = swift_slowAlloc();
          v132 = swift_slowAlloc();
          v276 = swift_slowAlloc();
          v297 = v276;
          v298 = 0;
          *v147 = 136316162;
          v148 = OUTLINED_FUNCTION_1_109();
          OUTLINED_FUNCTION_3_100(v148, v149, v150, v151, v152, v153, v154, v155, v266, v270, v276, v280, v284, v288, v293, v295, v297, v298, v299);
          v295 = v143;
          OUTLINED_FUNCTION_63_1();
          *(v147 + 4) = v143;
          *(v147 + 12) = 2080;

          getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v288, v121, &v297);
          OUTLINED_FUNCTION_33_2();
          *(v147 + 14) = v146;
          *(v147 + 22) = 2112;
          *(v147 + 24) = v141;
          *v132 = v141;
          *(v147 + 32) = 2080;
          v156 = v141;

          v157 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v270, v142, &v297);

          *(v147 + 34) = v157;
          *(v147 + 42) = 2112;
          *(v147 + 44) = v143;
          v132[1] = v143;
          v158 = v143;
          _os_log_impl(&dword_0, v144, BYTE4(v266), "%s find maxUsage %s:%@ and secondMaxUsage: %s:%@", v147, 0x34u);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
          swift_arrayDestroy();
          OUTLINED_FUNCTION_26_0();
          swift_arrayDestroy();
          OUTLINED_FUNCTION_26_0();
          OUTLINED_FUNCTION_26_0();
        }

        v89 = &unk_548000;
        [v143 doubleValue];
        if (v159 != 0.0)
        {
          [v141 doubleValue];
          v161 = v160;
          [v143 doubleValue];
          if (v161 / v162 < 3.0)
          {
            [v141 doubleValue];
            v164 = v163;
            [v143 doubleValue];
            v166 = *(v0 + 6);
            v167 = v293;
            if (v164 / v165 >= 2.0)
            {
              v242 = *(v0 + 6);

              v243 = v141;
              v244 = Logger.logObject.getter();
              v245 = static os_log_type_t.debug.getter();

              if (os_log_type_enabled(v244, v245))
              {
                v246 = *(v0 + 6);
                swift_slowAlloc();
                v297 = OUTLINED_FUNCTION_6_81();
                v298 = 0;
                v247 = OUTLINED_FUNCTION_0_105(4.8153e-34);
                OUTLINED_FUNCTION_3_100(v247, v248, v249, v250, v251, v252, v253, v254, v266, v270, v275, v280, v284, v288, v293, v295, v297, v298, v299);
                OUTLINED_FUNCTION_63_1();
                OUTLINED_FUNCTION_17_46();
                *(v144 + 14) = 0x4008000000000000;
                *(v144 + 22) = v255;
                *(v144 + 24) = 0x4000000000000000;
                *(v144 + 32) = 2080;

                OUTLINED_FUNCTION_22_32(v256, v257, v258, v259, v260, v261, v262, v263);
                OUTLINED_FUNCTION_33_2();
                *(v144 + 34) = v246;
                _os_log_impl(&dword_0, v244, v245, "%s maxUsage/secondMaxUsage <= %f and >= %f, return needsConfirmation %s", v144, 0x2Au);
                swift_arrayDestroy();
                OUTLINED_FUNCTION_26_0();
                OUTLINED_FUNCTION_35();
              }

              else
              {

                v143 = v288;
              }

              v37 = *(v0 + 2);

              *v37 = v143;
              v37[1] = v167;
              v38 = &enum case for AppMatchResolution.needsConfirmation(_:);
            }

            else
            {

              v168 = v141;

              v169 = v293;
              v170 = v280;
              v171 = v143;
              v172 = Logger.logObject.getter();
              v173 = static os_log_type_t.debug.getter();

              v296 = v171;

              if (os_log_type_enabled(v172, v173))
              {
                v174 = *(v0 + 6);
                v175 = swift_slowAlloc();
                v297 = swift_slowAlloc();
                v298 = 0;
                *v175 = 136315906;
                v176 = OUTLINED_FUNCTION_1_109();
                v184 = OUTLINED_FUNCTION_3_100(v176, v177, v178, v179, v180, v181, v182, v183, v266, v270, v275, v280, v168, v288, v293, v296, v297, v298, v299);

                *(v175 + 4) = v184;
                *(v175 + 12) = 2048;
                *(v175 + 14) = 0x4000000000000000;
                *(v175 + 22) = 2080;

                v185 = v289;
                v186 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v289, v169, &v297);

                *(v175 + 24) = v186;
                *(v175 + 32) = 2080;
                v170 = v281;

                v187 = v271;
                getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v271, v281, &v297);
                OUTLINED_FUNCTION_33_2();
                *(v175 + 34) = v186;
                _os_log_impl(&dword_0, v172, v173, "%s maxUsage/secondMaxUsage <= %f, return needsDisambiguation between %s and %s", v175, 0x2Au);
                swift_arrayDestroy();
                v168 = v285;
                OUTLINED_FUNCTION_26_0();
                OUTLINED_FUNCTION_26_0();
              }

              else
              {

                v185 = v288;
                v187 = v270;
              }

              v37 = *(v0 + 2);
              __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
              v264 = swift_allocObject();
              *(v264 + 16) = xmmword_424FF0;
              *(v264 + 32) = v185;
              *(v264 + 40) = v169;
              *(v264 + 48) = v187;
              *(v264 + 56) = v170;

              *v37 = v264;
              v38 = &enum case for AppMatchResolution.needsDisambiguation(_:);
            }

            goto LABEL_72;
          }
        }

        v188 = *(v0 + 6);

        OUTLINED_FUNCTION_19_37(v189, v190, v191, v192, v193, v194, v195, v196, v266, v270, v275, v280, v284, v288, v293);

        v197 = v141;
        v198 = Logger.logObject.getter();
        static os_log_type_t.debug.getter();
        OUTLINED_FUNCTION_87();

        if (os_log_type_enabled(v198, v132))
        {
          v199 = *(v0 + 6);
          OUTLINED_FUNCTION_36();
          v297 = OUTLINED_FUNCTION_6_81();
          v298 = 0;
          v200 = OUTLINED_FUNCTION_0_105(4.8152e-34);
          OUTLINED_FUNCTION_3_100(v200, v201, v202, v203, v204, v205, v206, v207, v267, v272, v277, v282, v286, v290, v294, v295, v297, v298, v299);
          OUTLINED_FUNCTION_63_1();
          OUTLINED_FUNCTION_17_46();
          *(v188 + 14) = 0x4008000000000000;
          *(v188 + 22) = 2080;

          OUTLINED_FUNCTION_22_32(v208, v209, v210, v211, v212, v213, v214, v215);
          OUTLINED_FUNCTION_33_2();
          *(v188 + 24) = v199;
          _os_log_impl(&dword_0, v198, v132, "%s maxUsage/secondMaxUsage >= %f, return resolved %s", v188, 0x20u);
          swift_arrayDestroy();
          OUTLINED_FUNCTION_26_0();
          OUTLINED_FUNCTION_35();
        }

        else
        {

          v143 = v290;
        }

        v37 = *(v0 + 2);

        *v37 = v143;
        goto LABEL_71;
      }

      v116 = *(v2 + 8 * v114);
      ++v123;
      if (v116)
      {
        goto LABEL_51;
      }
    }
  }

  v118 = 0;
  v117 = (63 - v111) >> 6;
  v0 = v295;
  while (v117 - 1 != v113)
  {
    v114 = v113 + 1;
    v119 = *(v110 + 8 * v113 + 72);
    v118 -= 64;
    ++v113;
    if (v119)
    {
      v273 = v109;
      v116 = (v119 - 1) & v119;
      v115 = __clz(__rbit64(v119)) - v118;
      goto LABEL_45;
    }
  }

  v217 = *(v295 + 48);

  v218 = Logger.logObject.getter();
  v219 = static os_log_type_t.debug.getter();

  v220 = os_log_type_enabled(v218, v219);
  if (v220)
  {
    v228 = OUTLINED_FUNCTION_7_71();
    v229 = OUTLINED_FUNCTION_36();
    v297 = v229;
    v298 = 0;
    *v228 = 136315138;
    v230 = OUTLINED_FUNCTION_1_109();
    OUTLINED_FUNCTION_3_100(v230, v231, v232, v233, v234, v235, v236, v237, v265, v269, v274, v279, v283, v287, v292, v295, v297, v298, v299);
    OUTLINED_FUNCTION_125();
    *(v228 + 4) = v117;
    _os_log_impl(&dword_0, v218, v219, "%s can't find secondMaxUsage app, select max usage app", v228, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v229);
    OUTLINED_FUNCTION_26_0();
    v220 = OUTLINED_FUNCTION_26_0();
  }

  OUTLINED_FUNCTION_19_37(v220, v221, v222, v223, v224, v225, v226, v227, v265, v269, v274, v279, v283, v287, v292);

  v37 = *(v0 + 2);
  *v37 = v291;
LABEL_71:
  v37[1] = v89;
  v38 = &enum case for AppMatchResolution.resolved(_:);
LABEL_72:
  v238 = *v38;
  matched = type metadata accessor for AppMatchResolution();
  (*(*(matched - 8) + 104))(v37, v238, matched);
  v240 = *(v0 + 1);

  return v240();
}

Swift::String __swiftcall SeasAppUsageRule.getName()()
{
  v0 = 0x8000000000447470;
  v1 = 0xD000000000000010;
  result._object = v0;
  result._countAndFlagsBits = v1;
  return result;
}

void *SeasAppUsageRule.deinit()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[5];
  v4 = v0[7];

  return v0;
}

uint64_t SeasAppUsageRule.__deallocating_deinit()
{
  SeasAppUsageRule.deinit();

  return swift_deallocClassInstance();
}

uint64_t protocol witness for SeasRule.resolve(sharedGlobals:startCallIntent:phoneCallNLIntent:appBundleIds:) in conformance SeasAppUsageRule(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v14 = *(**v6 + 112);
  v18 = (v14 + *v14);
  v15 = v14[1];
  v16 = swift_task_alloc();
  *(v7 + 16) = v16;
  *v16 = v7;
  v16[1] = protocol witness for UnlockDeviceFlowStrategyAsync.makePromptForDeviceUnlock() in conformance DefaultUnlockDeviceFlowStrategyAsync;

  return v18(a1, a2, a3, a4, a5, a6);
}

uint64_t AppUsageProvider.relativeAppUsageProbabilities(forCandidateBundleIds:daysAgo:)(uint64_t a1, uint64_t a2)
{
  v3 = [objc_allocWithZone(_PSSuggester) init];
  isa = Array._bridgeToObjectiveC()().super.isa;
  v5 = [v3 relativeAppUsageProbabilitiesForCandidateBundleIds:isa daysAgo:a2];

  type metadata accessor for NSNumber();
  v6 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  return v6;
}

uint64_t specialized _NativeDictionary.filter(_:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v9 = *(a1 + 32);
  v10 = v9 & 0x3F;
  v11 = ((1 << v9) + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v12 = a4;
  v13 = v12;
  if (v10 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v18 = swift_slowAlloc();

      v19 = v13;
      a2 = _ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s17_NativeDictionaryVySSSo8NSNumberCG_Tg506_ss17_gh46V6filteryAByxq_GSbx3key_q_5valuet_tKXEKFADs13_ab13VKXEfU_SS_So8I4CTG5AJxq_Sbs5Error_pRi_zRi0_zRi__Ri0__r0_lySSAIIsgnndzo_Tf1nc_n0222_s27PhoneCallFlowDelegatePlugin16SeasAppUsageRuleC7resolve13sharedGlobals05startB6Intent05phoneB8NLIntent12appBundleIds13SiriRemembers0G15MatchResolutionOAA06SharedL9Providing_p_AA07CallingN0_pAA0abP0_pSaySSGtYaKFSbSS3key_rI16C5valuet_tXEfU0_SS3key_AI5valuetTf1nnc_n(v18, v11, a1, a2, a3, v19);

      goto LABEL_6;
    }
  }

  __chkstk_darwin(v12);
  v14 = &v20 - ((8 * v11 + 15) & 0x3FFFFFFFFFFFFFF0);
  specialized UnsafeMutablePointer.assign(repeating:count:)(0, v11, v14);

  v15 = v13;
  v16 = specialized closure #1 in _NativeDictionary.filter(_:)(v14, v11, a1, a2, a3, v15);
  if (v4)
  {
    swift_willThrow();
  }

  else
  {
    a2 = v16;
  }

LABEL_6:

  swift_bridgeObjectRelease_n();
  return a2;
}

uint64_t specialized closure #1 in _NativeDictionary.filter(_:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v26 = result;
  v9 = 0;
  v10 = 0;
  v11 = a3 + 64;
  v12 = 1 << *(a3 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(a3 + 64);
  v15 = (v12 + 63) >> 6;
  while (v14)
  {
    v16 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
LABEL_11:
    v19 = v16 | (v10 << 6);
    v20 = (*(a3 + 48) + 16 * v19);
    result = *v20;
    if (*v20 != a4 || v20[1] != a5)
    {
      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      if ((result & 1) == 0)
      {
        *(v26 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
        if (__OFADD__(v9++, 1))
        {
          __break(1u);
LABEL_19:
          v23 = specialized _NativeDictionary.extractDictionary(using:count:)(v26, a2, v9, a3);

          return v23;
        }
      }
    }
  }

  v17 = v10;
  while (1)
  {
    v10 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v10 >= v15)
    {
      goto LABEL_19;
    }

    v18 = *(v11 + 8 * v10);
    ++v17;
    if (v18)
    {
      v16 = __clz(__rbit64(v18));
      v14 = (v18 - 1) & v18;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void *_ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s17_NativeDictionaryVySSSo8NSNumberCG_Tg506_ss17_gh46V6filteryAByxq_GSbx3key_q_5valuet_tKXEKFADs13_ab13VKXEfU_SS_So8I4CTG5AJxq_Sbs5Error_pRi_zRi0_zRi__Ri0__r0_lySSAIIsgnndzo_Tf1nc_n0222_s27PhoneCallFlowDelegatePlugin16SeasAppUsageRuleC7resolve13sharedGlobals05startB6Intent05phoneB8NLIntent12appBundleIds13SiriRemembers0G15MatchResolutionOAA06SharedL9Providing_p_AA07CallingN0_pAA0abP0_pSaySSGtYaKFSbSS3key_rI16C5valuet_tXEfU0_SS3key_AI5valuetTf1nnc_n(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v11 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    swift_bridgeObjectRetain_n();
    v12 = a6;
    v13 = specialized closure #1 in _NativeDictionary.filter(_:)(v11, a2, a3, a4, a5, v12);

    swift_bridgeObjectRelease_n();

    return v13;
  }

  return result;
}

void specialized _NativeDictionary.extractDictionary(using:count:)(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v4 = a4;
    if (*(a4 + 16) == a3)
    {
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSdGMd, &_ss18_DictionaryStorageCySSSdGMR);
      v7 = static _DictionaryStorage.allocate(capacity:)();
      v8 = v7;
      if (a2 < 1)
      {
        v9 = 0;
      }

      else
      {
        v9 = *a1;
      }

      v10 = 0;
      v11 = v7 + 64;
      v35 = v4;
      while (v9)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_16:
        v15 = v12 | (v10 << 6);
        v16 = *(v4 + 56);
        v17 = (*(v4 + 48) + 16 * v15);
        v18 = *v17;
        v19 = v17[1];
        v20 = *(v16 + 8 * v15);
        v21 = v8[5];
        Hasher.init(_seed:)();

        String.hash(into:)();
        v22 = Hasher._finalize()();
        OUTLINED_FUNCTION_10_68(v22);
        if (((v25 << v24) & ~*(v11 + 8 * v23)) == 0)
        {
          OUTLINED_FUNCTION_18_35();
          while (++v26 != v28 || (v27 & 1) == 0)
          {
            v29 = v26 == v28;
            if (v26 == v28)
            {
              v26 = 0;
            }

            v27 |= v29;
            if (*(v11 + 8 * v26) != -1)
            {
              OUTLINED_FUNCTION_16_9();
              goto LABEL_25;
            }
          }

          goto LABEL_29;
        }

        OUTLINED_FUNCTION_20_7();
LABEL_25:
        OUTLINED_FUNCTION_15_53();
        *(v11 + v30) |= v31;
        v33 = (v8[6] + 16 * v32);
        *v33 = v18;
        v33[1] = v19;
        *(v8[7] + 8 * v32) = v20;
        OUTLINED_FUNCTION_21_41();
        if (v34)
        {
          goto LABEL_30;
        }

        v4 = v35;
      }

      v13 = v10;
      while (1)
      {
        v10 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v10 >= a2)
        {
          return;
        }

        v14 = a1[v10];
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v9 = (v14 - 1) & v14;
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
    }
  }
}

{
  if (a3)
  {
    v4 = a4;
    if (*(a4 + 16) == a3)
    {
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSaySo11INCallGroupCGGMd, &_ss18_DictionaryStorageCySSSaySo11INCallGroupCGGMR);
      v7 = static _DictionaryStorage.allocate(capacity:)();
      v8 = v7;
      if (a2 < 1)
      {
        v9 = 0;
      }

      else
      {
        v9 = *a1;
      }

      v10 = 0;
      v11 = v7 + 64;
      v35 = v4;
      while (v9)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_16:
        v15 = v12 | (v10 << 6);
        v16 = *(v4 + 56);
        v17 = (*(v4 + 48) + 16 * v15);
        v18 = *v17;
        v19 = v17[1];
        v20 = *(v16 + 8 * v15);
        v21 = v8[5];
        Hasher.init(_seed:)();

        String.hash(into:)();
        v22 = Hasher._finalize()();
        OUTLINED_FUNCTION_10_68(v22);
        if (((v25 << v24) & ~*(v11 + 8 * v23)) == 0)
        {
          OUTLINED_FUNCTION_18_35();
          while (++v26 != v28 || (v27 & 1) == 0)
          {
            v29 = v26 == v28;
            if (v26 == v28)
            {
              v26 = 0;
            }

            v27 |= v29;
            if (*(v11 + 8 * v26) != -1)
            {
              OUTLINED_FUNCTION_16_9();
              goto LABEL_25;
            }
          }

          goto LABEL_29;
        }

        OUTLINED_FUNCTION_20_7();
LABEL_25:
        OUTLINED_FUNCTION_15_53();
        *(v11 + v30) |= v31;
        v33 = (v8[6] + 16 * v32);
        *v33 = v18;
        v33[1] = v19;
        *(v8[7] + 8 * v32) = v20;
        OUTLINED_FUNCTION_21_41();
        if (v34)
        {
          goto LABEL_30;
        }

        v4 = v35;
      }

      v13 = v10;
      while (1)
      {
        v10 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v10 >= a2)
        {
          return;
        }

        v14 = a1[v10];
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v9 = (v14 - 1) & v14;
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
    }
  }
}

uint64_t specialized _NativeDictionary.extractDictionary(using:count:)(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSo8NSNumberCGMd, &_ss18_DictionaryStorageCySSSo8NSNumberCGMR);
  result = static _DictionaryStorage.allocate(capacity:)();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  v33 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 56);
    v18 = (*(v4 + 48) + 16 * v16);
    v19 = *v18;
    v20 = v18[1];
    v21 = *(v17 + 8 * v16);
    v22 = *(v9 + 40);
    Hasher.init(_seed:)();

    v34 = v21;
    String.hash(into:)();
    result = Hasher._finalize()();
    v23 = -1 << *(v9 + 32);
    v24 = result & ~v23;
    v25 = v24 >> 6;
    if (((-1 << v24) & ~*(v12 + 8 * (v24 >> 6))) == 0)
    {
      v27 = 0;
      v28 = (63 - v23) >> 6;
      while (++v25 != v28 || (v27 & 1) == 0)
      {
        v29 = v25 == v28;
        if (v25 == v28)
        {
          v25 = 0;
        }

        v27 |= v29;
        v30 = *(v12 + 8 * v25);
        if (v30 != -1)
        {
          v26 = __clz(__rbit64(~v30)) + (v25 << 6);
          goto LABEL_25;
        }
      }

      goto LABEL_30;
    }

    v26 = __clz(__rbit64((-1 << v24) & ~*(v12 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
    *(v12 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
    v31 = (*(v9 + 48) + 16 * v26);
    *v31 = v19;
    v31[1] = v20;
    *(*(v9 + 56) + 8 * v26) = v34;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_31;
    }

    v4 = v33;
    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t SeasContactInSingleAppRule.resolve(sharedGlobals:startCallIntent:phoneCallNLIntent:appBundleIds:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[4] = a6;
  v7[5] = v6;
  v7[2] = a1;
  v7[3] = a5;
  return _swift_task_switch(SeasContactInSingleAppRule.resolve(sharedGlobals:startCallIntent:phoneCallNLIntent:appBundleIds:), 0, 0);
}

uint64_t SeasContactInSingleAppRule.resolve(sharedGlobals:startCallIntent:phoneCallNLIntent:appBundleIds:)()
{
  v28 = v0;
  v1 = static SeasRulesHelper.getContactDonationInfo(phoneCallNLIntent:appBundleIds:)(*(v0 + 24), *(v0 + 32));
  if (!v2)
  {
    goto LABEL_10;
  }

  v5 = v2;
  if ((v4 & 1) != 0 || v3 != 1)
  {

LABEL_10:
    v19 = *(v0 + 16);
    v20 = &enum case for AppMatchResolution.noMatchFound(_:);
    goto LABEL_11;
  }

  v6 = v1;
  if (one-time initialization token for siriPhone != -1)
  {
    swift_once();
  }

  v7 = *(v0 + 40);
  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static Logger.siriPhone);

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = *(v0 + 40);
    v12 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v26 = 0;
    *v12 = 136315394;
    v13 = v11[2];
    v14 = v11[3];
    v15 = v11[4];
    v16 = v11[5];
    v27 = 0xE000000000000000;
    DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v13, v14, v15, v16);
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, 0xE000000000000000, &v25);

    *(v12 + 4) = v17;
    *(v12 + 12) = 2080;

    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v5, &v25);

    *(v12 + 14) = v18;
    _os_log_impl(&dword_0, v9, v10, "%s current contact only exists in third party app %s", v12, 0x16u);
    swift_arrayDestroy();
  }

  v19 = *(v0 + 16);
  *v19 = v6;
  v19[1] = v5;
  v20 = &enum case for AppMatchResolution.resolved(_:);
LABEL_11:
  v21 = *v20;
  matched = type metadata accessor for AppMatchResolution();
  (*(*(matched - 8) + 104))(v19, v21, matched);
  v23 = *(v0 + 8);

  return v23();
}

Swift::String __swiftcall SeasContactInSingleAppRule.getName()()
{
  v0 = 0x8000000000447500;
  v1 = 0xD00000000000001ALL;
  result._object = v0;
  result._countAndFlagsBits = v1;
  return result;
}

uint64_t SeasContactInSingleAppRule.__allocating_init()()
{
  v0 = swift_allocObject();
  SeasContactInSingleAppRule.init()();
  return v0;
}

void *SeasContactInSingleAppRule.init()()
{
  v0[2] = type metadata accessor for SeasContactInSingleAppRule();
  v0[3] = &outlined read-only object #0 of SeasContactInSingleAppRule.init();
  v0[4] = 0;
  v0[5] = 0;
  return v0;
}

uint64_t protocol witness for SeasRule.resolve(sharedGlobals:startCallIntent:phoneCallNLIntent:appBundleIds:) in conformance SeasContactInSingleAppRule(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v14 = *(**v6 + 88);
  v18 = (v14 + *v14);
  v15 = v14[1];
  v16 = swift_task_alloc();
  *(v7 + 16) = v16;
  *v16 = v7;
  v16[1] = protocol witness for UnlockDeviceFlowStrategyAsync.makePromptForDeviceUnlock() in conformance DefaultUnlockDeviceFlowStrategyAsync;

  return v18(a1, a2, a3, a4, a5, a6);
}

uint64_t static SeasRulesHelper.getContactDonationInfo(phoneCallNLIntent:appBundleIds:)(void *a1, uint64_t a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v5 = *(v4 + 24);
  v6 = *(v5(v3, v4) + 16);

  if (v6 != 1)
  {
    if (one-time initialization token for siriPhone == -1)
    {
LABEL_24:
      v36 = type metadata accessor for Logger();
      __swift_project_value_buffer(v36, static Logger.siriPhone);
      v37 = Logger.logObject.getter();
      v38 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        *v39 = 0;
        _os_log_impl(&dword_0, v37, v38, "#SeasRulesHelper contacts is not equal 1, return nil", v39, 2u);
      }

      return 0;
    }

LABEL_30:
    OUTLINED_FUNCTION_6_2();
    goto LABEL_24;
  }

  v7 = v5(v3, v4);
  if (!*(v7 + 16))
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  outlined init with copy of SignalProviding(v7 + 32, v41);

  v8 = v42;
  v9 = v43;
  __swift_project_boxed_opaque_existential_1(v41, v42);
  v10 = SiriPhoneContact.getVocabularyAppsBundleSet()(v8, v9);
  __swift_destroy_boxed_opaque_existential_1(v41);
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2();
  }

  v11 = type metadata accessor for Logger();
  __swift_project_value_buffer(v11, static Logger.siriPhone);

  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v41[0] = v15;
    *v14 = 136315138;
    v16 = Set.description.getter();
    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, v41);

    *(v14 + 4) = v18;
    _os_log_impl(&dword_0, v12, v13, "#SeasContactInSingleAppRule: vocabularyAppsBundleSet %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v15);
  }

  specialized Set.contains(_:)(0x73746361746E6F43, 0xE800000000000000, v10);
  v19 = *(a2 + 16);
  if (v19)
  {
    v20 = 0;
    v40 = 0;
    v21 = 0;
    v22 = a2 + 32;
    type metadata accessor for App();
    do
    {
      v23 = (v22 + 16 * v21);
      v25 = *v23;
      v24 = v23[1];
      swift_bridgeObjectRetain_n();
      App.__allocating_init(appIdentifier:)();
      v26 = App.isFirstParty()();

      if (!v26 && *(v10 + 16))
      {
        v27 = *(v10 + 40);
        Hasher.init(_seed:)();
        String.hash(into:)();
        v28 = Hasher._finalize()();
        v29 = ~(-1 << *(v10 + 32));
        while (1)
        {
          v30 = v28 & v29;
          if (((*(v10 + 56 + (((v28 & v29) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v28 & v29)) & 1) == 0)
          {
            break;
          }

          v31 = (*(v10 + 48) + 16 * v30);
          if (*v31 != v25 || v31[1] != v24)
          {
            v33 = _stringCompareWithSmolCheck(_:_:expecting:)();
            v28 = v30 + 1;
            if ((v33 & 1) == 0)
            {
              continue;
            }
          }

          if (!__OFADD__(v20++, 1))
          {
            v40 = v25;
            goto LABEL_21;
          }

          __break(1u);
          goto LABEL_29;
        }
      }

LABEL_21:
      ++v21;
    }

    while (v21 != v19);

    return v40;
  }

  else
  {

    return 0;
  }
}

PhoneCallFlowDelegatePlugin::ContactDonationInfo __swiftcall ContactDonationInfo.init()()
{
  v0 = 0;
  v1 = 0xE000000000000000;
  v2 = 0;
  v3 = 0;
  result.contactInNumberOfThirdPartyApps = v2;
  result.thirdPartyAppId._object = v1;
  result.thirdPartyAppId._countAndFlagsBits = v0;
  result.contactExistsInFirstParty = v3;
  return result;
}

PhoneCallFlowDelegatePlugin::ContactDonationInfo __swiftcall ContactDonationInfo.init(thirdPartyAppId:contactInNumberOfThirdPartyApps:contactExistsInFirstParty:)(PhoneCallFlowDelegatePlugin::ContactDonationInfo thirdPartyAppId, Swift::Int contactInNumberOfThirdPartyApps, Swift::Bool contactExistsInFirstParty)
{
  v3 = contactExistsInFirstParty;
  thirdPartyAppId.contactInNumberOfThirdPartyApps = contactInNumberOfThirdPartyApps;
  thirdPartyAppId.contactExistsInFirstParty = v3;
  return thirdPartyAppId;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for ContactDonationInfo(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 25))
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

uint64_t storeEnumTagSinglePayload for ContactDonationInfo(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t SemanticValue.init(string:nlNode:)(uint64_t a1, uint64_t a2, char a3)
{
  SemanticValue.init()();
  SemanticValue.string.setter();
  PhoneCallNLConstants.rawValue.getter(a3);
  SemanticValue.label.setter();
  PhoneCallNLConstants.canonicalName.getter(a3);
  return SemanticValue.nodeClass.setter();
}

uint64_t Flow.guardedSentinelFlow<A>(by:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v21[1] = a5;
  v10 = *(a2 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(a1);
  v13 = v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v17);
  v19 = v21 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness();
  type metadata accessor for SentinelConditionalFlow();
  (*(v15 + 16))(v19, a1, a3);
  (*(v10 + 16))(v13, v6, a2);
  return SentinelConditionalFlow.__allocating_init<A, B>(preconditionFlow:executableFlow:)(v19, v13, a3, a2);
}

uint64_t SentinelConditionalFlow.__allocating_init<A, B>(preconditionFlow:executableFlow:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  SentinelConditionalFlow.init<A, B>(preconditionFlow:executableFlow:)(a1, a2, a3, a4);
  return v8;
}

uint64_t SentinelConditionalFlow.init<A, B>(preconditionFlow:executableFlow:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = Flow.guarded<A>(by:)();
  (*(*(a4 - 8) + 8))(a2, a4);
  (*(*(a3 - 8) + 8))(a1, a3);
  *(v5 + 16) = v10;
  return v5;
}

uint64_t SentinelConditionalFlow.execute(completion:)()
{
  v1 = *(*v0 + 80);
  type metadata accessor for SentinelConditionalFlow();
  swift_getWitnessTable();
  return Flow.deferToExecuteAsync(_:)();
}

uint64_t SentinelConditionalFlow.__deallocating_deinit()
{
  ThirdPartyAnnotatedAppStore.deinit();

  return swift_deallocClassInstance();
}

void (*protocol witness for SiriEnvironmentLocating.siriEnvironment.modify in conformance SentinelConditionalFlow<A1>(void *a1))(void *a1)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v4 = *v1;
  v3[4] = SiriEnvironmentLocating<>.siriEnvironment.modify();
  return protocol witness for SiriEnvironmentLocating.siriEnvironment.modify in conformance BusinessCompositionFlow;
}

BOOL SharedConfirmationRepromptContext.PromptType.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of SharedConfirmationRepromptContext.PromptType.init(rawValue:), v2);

  return v3 != 0;
}

BOOL protocol witness for RawRepresentable.init(rawValue:) in conformance SharedConfirmationRepromptContext.PromptType@<W0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = SharedConfirmationRepromptContext.PromptType.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance SharedConfirmationRepromptContext.PromptType@<X0>(void *a1@<X8>)
{
  result = SharedConfirmationRepromptContext.PromptType.rawValue.getter();
  *a1 = 0xD000000000000015;
  a1[1] = v3;
  return result;
}

uint64_t SharedConfirmationRepromptContext.registerPrompt(type:)()
{
  v1 = v0;
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.siriPhone);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v26 = v6;
    *v5 = 136315138;
    *(v5 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000016, 0x80000000004615E0, &v26);
    OUTLINED_FUNCTION_1_9(&dword_0, v7, v8, "#SharedConfirmationRepromptContext registering prompt type %s");
    __swift_destroy_boxed_opaque_existential_1(v6);
    OUTLINED_FUNCTION_26_0();
    OUTLINED_FUNCTION_26_0();
  }

  swift_beginAccess();
  v9 = *(v1 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + 16);
  *(v1 + 16) = 0x8000000000000000;
  v12 = specialized __RawDictionaryStorage.find<A>(_:)();
  v14 = *(v11 + 16);
  v15 = (v13 & 1) == 0;
  v16 = v14 + v15;
  if (__OFADD__(v14, v15))
  {
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVy27PhoneCallFlowDelegatePlugin33SharedConfirmationRepromptContextC10PromptTypeOSiGMd, &_ss17_NativeDictionaryVy27PhoneCallFlowDelegatePlugin33SharedConfirmationRepromptContextC10PromptTypeOSiGMR);
  if (!_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v16))
  {
LABEL_9:
    *(v1 + 16) = v11;
    if ((v18 & 1) == 0)
    {
      specialized _NativeDictionary._insert(at:key:value:)(v17, 0, v11);
    }

    v21 = *(v11 + 56);
    v22 = *(v21 + 8 * v17);
    v23 = __OFADD__(v22, 1);
    v24 = v22 + 1;
    if (!v23)
    {
      *(v21 + 8 * v17) = v24;
      return swift_endAccess();
    }

    goto LABEL_14;
  }

  v19 = specialized __RawDictionaryStorage.find<A>(_:)();
  if ((v18 & 1) == (v20 & 1))
  {
    v17 = v19;
    goto LABEL_9;
  }

LABEL_15:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

BOOL SharedConfirmationRepromptContext.hasPrompted(for:times:)(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  if (*(v3 + 16))
  {

    v4 = specialized __RawDictionaryStorage.find<A>(_:)();
    if (v5)
    {
      v6 = *(*(v3 + 56) + 8 * v4);
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6 >= a1;
}

uint64_t SharedConfirmationRepromptContext.reset(type:)()
{
  result = swift_beginAccess();
  if (*(*(v0 + 16) + 16))
  {

    specialized __RawDictionaryStorage.find<A>(_:)();
    v3 = v2;

    if (v3)
    {
      if (one-time initialization token for siriPhone != -1)
      {
        OUTLINED_FUNCTION_6_2();
      }

      v4 = type metadata accessor for Logger();
      __swift_project_value_buffer(v4, static Logger.siriPhone);
      v5 = Logger.logObject.getter();
      v6 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        v8 = swift_slowAlloc();
        v11 = v8;
        *v7 = 136315138;
        *(v7 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000016, 0x80000000004615E0, &v11);
        OUTLINED_FUNCTION_1_9(&dword_0, v9, v10, "#SharedConfirmationRepromptContext resetting prompt type %s");
        __swift_destroy_boxed_opaque_existential_1(v8);
        OUTLINED_FUNCTION_26_0();
        OUTLINED_FUNCTION_26_0();
      }

      swift_beginAccess();
      specialized Dictionary._Variant.removeValue(forKey:)();
      return swift_endAccess();
    }
  }

  return result;
}

uint64_t SharedConfirmationRepromptContext.__allocating_init()()
{
  v0 = swift_allocObject();
  lazy protocol witness table accessor for type SharedConfirmationRepromptContext.PromptType and conformance SharedConfirmationRepromptContext.PromptType();
  *(v0 + 16) = Dictionary.init(dictionaryLiteral:)();
  return v0;
}

uint64_t SharedConfirmationRepromptContext.init()()
{
  lazy protocol witness table accessor for type SharedConfirmationRepromptContext.PromptType and conformance SharedConfirmationRepromptContext.PromptType();
  *(v0 + 16) = Dictionary.init(dictionaryLiteral:)();
  return v0;
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySSypGMd, &_ss17_NativeDictionaryVySSypGMR);
    _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v12);
    v13 = *(*(v15 + 48) + 16 * v9 + 8);

    outlined init with take of Any((*(v15 + 56) + 32 * v9), a3);
    _NativeDictionary._delete(at:)();
    *v4 = v15;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t specialized Dictionary._Variant.removeValue(forKey:)()
{
  v1 = v0;
  v2 = *v0;
  v3 = specialized __RawDictionaryStorage.find<A>(_:)();
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  v6 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *v1;
  v8 = *(*v1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVy27PhoneCallFlowDelegatePlugin33SharedConfirmationRepromptContextC10PromptTypeOSiGMd, &_ss17_NativeDictionaryVy27PhoneCallFlowDelegatePlugin33SharedConfirmationRepromptContextC10PromptTypeOSiGMR);
  _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v8);
  v9 = *(*(v11 + 56) + 8 * v5);
  lazy protocol witness table accessor for type SharedConfirmationRepromptContext.PromptType and conformance SharedConfirmationRepromptContext.PromptType();
  _NativeDictionary._delete(at:)();
  *v1 = v11;
  return v9;
}

uint64_t specialized Dictionary._Variant.removeValue(forKey:)(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  v7 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v2;
  v9 = *(*v2 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVy10Foundation4UUIDV27PhoneCallFlowDelegatePlugin0F16StateOneTimeTaskCGMd, &_ss17_NativeDictionaryVy10Foundation4UUIDV27PhoneCallFlowDelegatePlugin0F16StateOneTimeTaskCGMR);
  _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v9);
  v10 = *(v14 + 48);
  v11 = type metadata accessor for UUID();
  (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v6, v11);
  v12 = *(*(v14 + 56) + 8 * v6);
  type metadata accessor for CallStateOneTimeTask();
  lazy protocol witness table accessor for type UUID and conformance UUID();
  _NativeDictionary._delete(at:)();
  *v2 = v14;
  return v12;
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = OUTLINED_FUNCTION_1_110(a1, a2, a3, a4);
  *(v5[6] + 8 * result) = v6;
  *(v5[7] + 8 * result) = v7;
  v8 = v5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    v5[2] = v10;
  }

  return result;
}

void specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_1_110(a1, a2, a3, a4);
  v8 = *(v7 + 48);
  v9 = type metadata accessor for ContactResolverConfigHashable();
  outlined init with take of ContactResolverConfigHashable(a2, v8 + *(*(v9 - 8) + 72) * a1);
  OUTLINED_FUNCTION_4_79();
  if (v11)
  {
    __break(1u);
  }

  else
  {
    *(a4 + 16) = v10;
  }
}

{
  OUTLINED_FUNCTION_1_110(a1, a2, a3, a4);
  v8 = *(v7 + 48);
  v9 = type metadata accessor for UUID();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  OUTLINED_FUNCTION_4_79();
  if (v11)
  {
    __break(1u);
  }

  else
  {
    *(a4 + 16) = v10;
  }
}

_OWORD *specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = OUTLINED_FUNCTION_0_106(a1, a2, a3, a4, a5);
  result = outlined init with take of Any(v8, (v7 + 32 * v6));
  v10 = *(a5 + 16);
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    *(a5 + 16) = v12;
  }

  return result;
}

void specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = OUTLINED_FUNCTION_0_106(a1, a2, a3, a4, a5);
  v8 = (v7 + 48 * v5);
  v10 = v9[1];
  *v8 = *v9;
  v8[1] = v10;
  v8[2] = v9[2];
  v11 = *(v6 + 16);
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_3_101(v6, v13);
  }
}

{
  v5 = OUTLINED_FUNCTION_0_106(a1, a2, a3, a4, a5);
  *(v8 + 8 * v5) = v7;
  v9 = *(v6 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_3_101(v6, v11);
  }
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, uint64_t a2, uint64_t a3)
{
  *(a3 + 8 * (result >> 6) + 64) |= 1 << result;
  *(*(a3 + 56) + 8 * result) = a2;
  v3 = *(a3 + 16);
  v4 = __OFADD__(v3, 1);
  v5 = v3 + 1;
  if (v4)
  {
    __break(1u);
  }

  else
  {
    *(a3 + 16) = v5;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SharedConfirmationRepromptContext.PromptType(_BYTE *result, int a2, int a3)
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
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t SharedGlobalsProviding.outputPublisher.getter@<X0>(uint64_t *a1@<X8>)
{
  static OutputPublisherFactory.makeOutputPublisher()();
  static OutputPublisherFactory.makeOutputPublisherAsync()();
  v2 = type metadata accessor for OutputPublisherWrapper();
  v3 = swift_allocObject();
  outlined init with take of SPHConversation(&v6, v3 + 16);
  outlined init with take of SPHConversation(&v5, v3 + 56);
  a1[3] = v2;
  a1[4] = lazy protocol witness table accessor for type ContactResolverConfigHashable and conformance ContactResolverConfigHashable(&lazy protocol witness table cache variable for type OutputPublisherWrapper and conformance OutputPublisherWrapper, type metadata accessor for OutputPublisherWrapper);
  result = lazy protocol witness table accessor for type ContactResolverConfigHashable and conformance ContactResolverConfigHashable(&lazy protocol witness table cache variable for type OutputPublisherWrapper and conformance OutputPublisherWrapper, type metadata accessor for OutputPublisherWrapper);
  a1[5] = result;
  *a1 = v3;
  return result;
}

uint64_t SharedGlobalsProviding.currentRequest.getter()
{
  type metadata accessor for SiriEnvironment();
  if (!static SiriEnvironment.forCurrentTask.getter())
  {
    return 0;
  }

  v0 = SiriEnvironment.currentRequest.getter();

  return v0;
}

uint64_t specialized SharedGlobalsProviding.patternFlowProvider.getter@<X0>(uint64_t *a1@<X8>)
{
  SharedGlobalsProviding.outputPublisher.getter(v19);
  v2 = v20;
  v3 = v21;
  v4 = __swift_project_boxed_opaque_existential_1(v19, v20);
  v18[3] = v2;
  v18[4] = v3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v18);
  (*(*(v2 - 8) + 16))(boxed_opaque_existential_1, v4, v2);
  v6 = type metadata accessor for ResponseFactory();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  v17[3] = v6;
  v17[4] = &protocol witness table for ResponseFactory;
  v17[0] = ResponseFactory.init()();
  v9 = __swift_project_boxed_opaque_existential_1(v17, v6);
  v16[3] = v6;
  v16[4] = &protocol witness table for ResponseFactory;
  v10 = __swift_allocate_boxed_opaque_existential_1(v16);
  (*(*(v6 - 8) + 16))(v10, v9, v6);
  v11 = type metadata accessor for PatternFlowProvider();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  v14 = PatternFlowProvider.init(outputPublisher:responseGenerator:)();
  __swift_destroy_boxed_opaque_existential_1(v17);
  result = __swift_destroy_boxed_opaque_existential_1(v19);
  a1[3] = v11;
  a1[4] = &protocol witness table for PatternFlowProvider;
  *a1 = v14;
  return result;
}

uint64_t SharedGlobalsProviding.patternFlowProvider.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  (*(a2 + 16))(v20);
  v6 = v21;
  v7 = v22;
  __swift_project_boxed_opaque_existential_1(v20, v21);
  v19[3] = v6;
  v19[4] = v7;
  __swift_allocate_boxed_opaque_existential_1(v19);
  OUTLINED_FUNCTION_40(v6);
  (*(v8 + 16))();
  (*(a2 + 136))(v16, a1, a2);
  v9 = v17;
  v10 = v18;
  __swift_project_boxed_opaque_existential_1(v16, v17);
  v15[3] = v9;
  v15[4] = *(v10 + 8);
  __swift_allocate_boxed_opaque_existential_1(v15);
  OUTLINED_FUNCTION_40(v9);
  (*(v11 + 16))();
  v12 = type metadata accessor for PatternFlowProvider();
  OUTLINED_FUNCTION_41_1(v12);
  v13 = PatternFlowProvider.init(outputPublisher:responseGenerator:)();
  __swift_destroy_boxed_opaque_existential_1(v16);
  result = __swift_destroy_boxed_opaque_existential_1(v20);
  a3[3] = v12;
  a3[4] = &protocol witness table for PatternFlowProvider;
  *a3 = v13;
  return result;
}

uint64_t SharedGlobalsProviding.responseGenerator.getter()
{
  OUTLINED_FUNCTION_29_7();
  v1 = type metadata accessor for ResponseFactory();
  OUTLINED_FUNCTION_41_1(v1);
  result = ResponseFactory.init()();
  v0[3] = v1;
  v0[4] = &protocol witness table for ResponseFactory;
  *v0 = result;
  return result;
}

uint64_t specialized SharedGlobalsProviding.skTransformer.getter@<X0>(uint64_t *a1@<X8>)
{
  a1[3] = &type metadata for SharedGlobals;
  a1[4] = &protocol witness table for SharedGlobals;
  v3 = swift_allocObject();
  *a1 = v3;

  return outlined init with copy of SharedGlobals(v1, v3 + 16);
}

uint64_t SharedGlobalsProviding.skTransformer.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  a3[3] = a1;
  a3[4] = a2;
  __swift_allocate_boxed_opaque_existential_1(a3);
  OUTLINED_FUNCTION_40(a1);
  v5 = *(v4 + 16);

  return v5();
}

uint64_t specialized SharedGlobalsProviding.callStateProvider.getter@<X0>(uint64_t *a1@<X8>)
{
  if (one-time initialization token for instance != -1)
  {
    swift_once();
  }

  a1[3] = &type metadata for CallStateProvider;
  a1[4] = &protocol witness table for CallStateProvider;
  v2 = swift_allocObject();
  *a1 = v2;

  return outlined init with copy of CallStateProvider(&static CallStateProvider.instance, v2 + 16);
}

uint64_t SharedGlobalsProviding.callStateProvider.getter@<X0>(uint64_t *a1@<X8>)
{
  if (one-time initialization token for instance != -1)
  {
    swift_once();
  }

  a1[3] = &type metadata for CallStateProvider;
  a1[4] = &protocol witness table for CallStateProvider;
  OUTLINED_FUNCTION_70();
  v2 = swift_allocObject();
  *a1 = v2;

  return outlined init with copy of CallStateProvider(&static CallStateProvider.instance, v2 + 16);
}

uint64_t SharedGlobalsProviding.featureManager.getter()
{
  if (one-time initialization token for instance != -1)
  {
    OUTLINED_FUNCTION_6_8();
  }

  memcpy(__dst, &static PhoneCallFeatureFlags.instance, sizeof(__dst));
  type metadata accessor for PhoneCallFeatureManager();
  v0 = OUTLINED_FUNCTION_67();
  v3 = &type metadata for PhoneCallFeatureFlags;
  v4 = &protocol witness table for PhoneCallFeatureFlags;
  OUTLINED_FUNCTION_48_3();
  *&v2 = swift_allocObject();
  memcpy((v2 + 16), &static PhoneCallFeatureFlags.instance, 0xC0uLL);
  outlined init with take of SPHConversation(&v2, v0 + 16);
  outlined init with copy of PhoneCallFeatureFlags(__dst, &v2);
  return v0;
}

uint64_t specialized SharedGlobalsProviding.annotatedAppFinder.getter@<X0>(void *a1@<X8>)
{
  if (one-time initialization token for instance != -1)
  {
    swift_once();
  }

  memcpy(__dst, &static PhoneCallFeatureFlags.instance, sizeof(__dst));
  type metadata accessor for PhoneCallFeatureManager();
  v2 = swift_allocObject();
  v7 = &type metadata for PhoneCallFeatureFlags;
  v8 = &protocol witness table for PhoneCallFeatureFlags;
  *&v6 = swift_allocObject();
  memcpy((v6 + 16), &static PhoneCallFeatureFlags.instance, 0xC0uLL);
  outlined init with take of SPHConversation(&v6, v2 + 16);
  outlined init with copy of PhoneCallFeatureFlags(__dst, &v6);
  if (one-time initialization token for instance != -1)
  {
    swift_once();
  }

  v3 = static ThirdPartyAnnotatedAppStore.instance;
  a1[3] = &type metadata for AnnotatedAppFinder;
  a1[4] = &protocol witness table for AnnotatedAppFinder;
  v4 = swift_allocObject();
  *a1 = v4;
  v4[8] = type metadata accessor for ThirdPartyAnnotatedAppStore();
  v4[9] = &protocol witness table for ThirdPartyAnnotatedAppStore;
  v4[4] = v2;
  v4[5] = v3;
  v4[2] = AnnotatedAppFinder.isInstalledOnDevice(appBundleId:);
  v4[3] = 0;
}

uint64_t SharedGlobalsProviding.annotatedAppFinder.getter@<X0>(void *a1@<X8>)
{
  if (one-time initialization token for instance != -1)
  {
    OUTLINED_FUNCTION_6_8();
  }

  memcpy(__dst, &static PhoneCallFeatureFlags.instance, sizeof(__dst));
  type metadata accessor for PhoneCallFeatureManager();
  v2 = OUTLINED_FUNCTION_67();
  v7 = &type metadata for PhoneCallFeatureFlags;
  v8 = &protocol witness table for PhoneCallFeatureFlags;
  OUTLINED_FUNCTION_48_3();
  *&v6 = swift_allocObject();
  memcpy((v6 + 16), &static PhoneCallFeatureFlags.instance, 0xC0uLL);
  outlined init with take of SPHConversation(&v6, v2 + 16);
  outlined init with copy of PhoneCallFeatureFlags(__dst, &v6);
  if (one-time initialization token for instance != -1)
  {
    swift_once();
  }

  v3 = static ThirdPartyAnnotatedAppStore.instance;
  a1[3] = &type metadata for AnnotatedAppFinder;
  a1[4] = &protocol witness table for AnnotatedAppFinder;
  OUTLINED_FUNCTION_70();
  v4 = swift_allocObject();
  *a1 = v4;
  v4[8] = type metadata accessor for ThirdPartyAnnotatedAppStore();
  v4[9] = &protocol witness table for ThirdPartyAnnotatedAppStore;
  v4[4] = v2;
  v4[5] = v3;
  v4[2] = AnnotatedAppFinder.isInstalledOnDevice(appBundleId:);
  v4[3] = 0;
}

id SharedGlobalsProviding.afLocalization.getter()
{
  result = [objc_opt_self() sharedInstance];
  if (!result)
  {
    __break(1u);
  }

  return result;
}

uint64_t specialized SharedGlobalsProviding.userPersonaCollector.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = default argument 0 of AppSelectionUserPersonaCollector.init(userPersonaSignal:)();
  v3 = type metadata accessor for AppSelectionUserPersonaCollector();
  result = swift_allocObject();
  *(result + 16) = v2;
  a1[3] = v3;
  a1[4] = &protocol witness table for AppSelectionUserPersonaCollector;
  *a1 = result;
  return result;
}

uint64_t SharedGlobalsProviding.userPersonaCollector.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = default argument 0 of AppSelectionUserPersonaCollector.init(userPersonaSignal:)();
  v3 = type metadata accessor for AppSelectionUserPersonaCollector();
  result = OUTLINED_FUNCTION_6_82();
  *(result + 16) = v2;
  a1[3] = v3;
  a1[4] = &protocol witness table for AppSelectionUserPersonaCollector;
  *a1 = result;
  return result;
}

uint64_t SharedGlobalsProviding.flowFinder.getter@<X0>(uint64_t (*a1)(void)@<X2>, uint64_t a2@<X3>, uint64_t *a3@<X8>)
{
  v5 = a1(0);
  result = swift_allocObject();
  a3[3] = v5;
  a3[4] = a2;
  *a3 = result;
  return result;
}

uint64_t specialized SharedGlobalsProviding.referenceResolver.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for ReferenceResolutionClient();
  result = ReferenceResolutionClient.__allocating_init()();
  a1[3] = v2;
  a1[4] = &protocol witness table for ReferenceResolutionClient;
  *a1 = result;
  return result;
}

uint64_t SharedGlobalsProviding.referenceResolver.getter()
{
  OUTLINED_FUNCTION_29_7();
  v1 = type metadata accessor for ReferenceResolutionClient();
  result = ReferenceResolutionClient.__allocating_init()();
  v0[3] = v1;
  v0[4] = &protocol witness table for ReferenceResolutionClient;
  *v0 = result;
  return result;
}

uint64_t specialized SharedGlobalsProviding.defaultAppProvider.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for DefaultAppProvider();
  result = swift_initStaticObject();
  a1[3] = v2;
  a1[4] = &protocol witness table for DefaultAppProvider;
  *a1 = result;
  return result;
}

uint64_t SharedGlobalsProviding.defaultAppProvider.getter()
{
  OUTLINED_FUNCTION_29_7();
  v1 = type metadata accessor for DefaultAppProvider();
  result = swift_initStaticObject();
  v0[3] = v1;
  v0[4] = &protocol witness table for DefaultAppProvider;
  *v0 = result;
  return result;
}

uint64_t specialized SharedGlobalsProviding.appIntentDispatcher.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for AppIntentDispatcher();
  swift_allocObject();
  result = AppIntentDispatcher.init()();
  a1[3] = v2;
  a1[4] = &protocol witness table for AppIntentDispatcher;
  *a1 = result;
  return result;
}

uint64_t SharedGlobalsProviding.appIntentDispatcher.getter()
{
  OUTLINED_FUNCTION_29_7();
  v1 = type metadata accessor for AppIntentDispatcher();
  swift_allocObject();
  result = AppIntentDispatcher.init()();
  v0[3] = v1;
  v0[4] = &protocol witness table for AppIntentDispatcher;
  *v0 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for SharedGlobals(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 128))
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

uint64_t storeEnumTagSinglePayload for SharedGlobals(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
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
      *(result + 128) = 1;
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

    *(result + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t SharedNeedsValueContext.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = _swiftEmptySetSingleton;
  return result;
}

uint64_t SharedNeedsValueContext.registerPrompt(for:)()
{
  OUTLINED_FUNCTION_8_70();
  swift_beginAccess();
  specialized Set._Variant.insert(_:)();
  return swift_endAccess();
}

uint64_t SharedNeedsValueContext.hasPrompted(for:)()
{
  OUTLINED_FUNCTION_8_70();
  swift_beginAccess();
  return specialized Set.contains(_:)(*(v0 + 16)) & 1;
}

uint64_t SharedNeedsValueContext.reset(for:)(char a1)
{
  if (a1)
  {
    OUTLINED_FUNCTION_8_70();
    swift_beginAccess();
    v2 = *(v1 + 16);
    *(v1 + 16) = _swiftEmptySetSingleton;
  }

  else
  {
    OUTLINED_FUNCTION_8_70();
    swift_beginAccess();
    specialized Set._Variant.remove(_:)();
    return swift_endAccess();
  }
}

uint64_t SharedNeedsValueContext.init()()
{
  result = v0;
  *(v0 + 16) = &_swiftEmptySetSingleton;
  return result;
}

BOOL specialized Set._Variant.insert(_:)()
{
  OUTLINED_FUNCTION_3_102();
  String.hash(into:)();
  Hasher._finalize()();
  v5 = *(v4 + 32);
  OUTLINED_FUNCTION_6_6();
  v8 = ~v7;
  while (1)
  {
    v9 = v6 & v8;
    v10 = (1 << (v6 & v8)) & *(v4 + 56 + (((v6 & v8) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v10)
    {
      break;
    }

    v11 = (*(v4 + 48) + 16 * v9);
    v12 = *v11 == v3 && v11[1] == v1;
    if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      v13 = (*(v4 + 48) + 16 * v9);
      v14 = v13[1];
      *v0 = *v13;
      v0[1] = v14;

      return v10 == 0;
    }

    v6 = v9 + 1;
  }

  v15 = *v2;
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_9_71();
  v16 = OUTLINED_FUNCTION_6_83();
  specialized _NativeSet.insertNew(_:at:isUnique:)(v16, v17, v18);
  *v2 = v20;
  *v0 = v3;
  v0[1] = v1;
  return v10 == 0;
}

{
  v1 = *v0;
  v2 = *(*v0 + 40);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  v3 = Hasher._finalize()() & ~(-1 << *(v1 + 32));
  v4 = (1 << v3) & *(v1 + ((v3 >> 3) & 0xFFFFFFFFFFFFFF8) + 56);
  if (!v4)
  {
    v5 = *v0;
    swift_isUniquelyReferenced_nonNull_native();
    v7 = *v0;
    specialized _NativeSet.insertNew(_:at:isUnique:)();
    *v0 = v7;
  }

  return v4 == 0;
}

uint64_t specialized Set._Variant.insert(_:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = __CocoaSet.member(for:)();

    if (v8)
    {

      type metadata accessor for App();
      swift_dynamicCast();
      result = 0;
      *a1 = v24;
    }

    else
    {
      result = __CocoaSet.count.getter();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v19 = _ss10_NativeSetV_8capacityAByxGs07__CocoaB0Vn_SitcfC17SiriAppResolution0F0C_Tt1g5(v7, result + 1);
        v20 = *(v19 + 16);
        if (*(v19 + 24) <= v20)
        {
          specialized _NativeSet.resize(capacity:)(v20 + 1);
        }

        specialized _NativeSet._unsafeInsertNew(_:)(v21, v19);

        *v3 = v19;
LABEL_16:
        *a1 = a2;
        return 1;
      }
    }
  }

  else
  {
    type metadata accessor for App();
    v10 = *(v6 + 40);
    OUTLINED_FUNCTION_3_61();
    lazy protocol witness table accessor for type App and conformance App(v11, v12);
    dispatch thunk of Hashable._rawHashValue(seed:)();
    v13 = *(v6 + 32);
    OUTLINED_FUNCTION_6_6();
    v16 = ~v15;
    while (1)
    {
      v17 = v14 & v16;
      if (((*(v6 + 56 + (((v14 & v16) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v14 & v16)) & 1) == 0)
      {
        v22 = *v2;
        swift_isUniquelyReferenced_nonNull_native();
        v26 = *v2;

        specialized _NativeSet.insertNew(_:at:isUnique:)(v23, v17);
        *v2 = v26;
        goto LABEL_16;
      }

      v25 = *(*(v6 + 48) + 8 * v17);
      OUTLINED_FUNCTION_3_61();
      lazy protocol witness table accessor for type App and conformance App(&lazy protocol witness table cache variable for type App and conformance App, v18);
      if (dispatch thunk of static Equatable.== infix(_:_:)())
      {
        break;
      }

      v14 = v17 + 1;
    }

    *a1 = *(*(v6 + 48) + 8 * v17);

    return 0;
  }

  return result;
}

uint64_t specialized Set._Variant.insert(_:)()
{
  OUTLINED_FUNCTION_3_102();
  if (v1)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  Hasher._finalize()();
  v5 = *(v4 + 32);
  OUTLINED_FUNCTION_6_6();
  v8 = v7 & ~v6;
  if (((*(v4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
LABEL_16:
    v14 = *v2;
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_9_71();
    v15 = OUTLINED_FUNCTION_6_83();
    specialized _NativeSet.insertNew(_:at:isUnique:)(v15, v16, v17);
    *v2 = v19;
    *v0 = v3;
    v0[1] = v1;
    return 1;
  }

  v9 = ~v6;
  v10 = *(v4 + 48);
  while (1)
  {
    v11 = (v10 + 16 * v8);
    v12 = v11[1];
    if (v12)
    {
      break;
    }

    if (!v1)
    {
      goto LABEL_18;
    }

LABEL_15:
    v8 = (v8 + 1) & v9;
    if (((*(v4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  if (!v1)
  {
    goto LABEL_15;
  }

  v13 = *v11 == v3 && v12 == v1;
  if (!v13 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_18:
  *v0 = *(*(v4 + 48) + 16 * v8);

  return 0;
}

BOOL specialized Set._Variant.insert(_:)(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = *(v6 + 40);
  v8 = static Hasher._hash(seed:_:)();
  v9 = ~(-1 << *(v6 + 32));
  while (1)
  {
    v10 = v8 & v9;
    v11 = (1 << (v8 & v9)) & *(v6 + 56 + (((v8 & v9) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v11)
    {
      break;
    }

    if (*(*(v6 + 48) + 8 * v10) == a2)
    {
      goto LABEL_6;
    }

    v8 = v10 + 1;
  }

  v12 = *v3;
  swift_isUniquelyReferenced_nonNull_native();
  v14 = *v3;
  specialized _NativeSet.insertNew(_:at:isUnique:)(a2, v10);
  *v3 = v14;
LABEL_6:
  result = v11 == 0;
  *a1 = a2;
  return result;
}

uint64_t specialized Set._Variant.insert(_:)(uint64_t a1, uint64_t a2)
{
  v50 = a1;
  v4 = type metadata accessor for UsoEntity_applePhoneCall_PhoneCallAttribute.DefinedValues();
  v5 = OUTLINED_FUNCTION_7(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v5);
  v54 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSg_AFtMd, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSg_AFtMR);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = &v47 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMd, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMR);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(v15 - 8);
  v60 = &v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v22 = &v47 - v21;
  __chkstk_darwin(v20);
  v48 = &v47 - v23;
  v49 = v2;
  v24 = *v2;
  v25 = *(*v2 + 40);
  Hasher.init(_seed:)();
  specialized Optional<A>.hash(into:)();
  Hasher._finalize()();
  v26 = *(v24 + 32);
  OUTLINED_FUNCTION_6_6();
  v29 = v28 & ~v27;
  v59 = v30;
  if (((*(v30 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29) & 1) == 0)
  {
LABEL_14:
    v42 = v49;
    v43 = *v49;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v45 = v48;
    outlined init with copy of UsoEntity_applePhoneCall_PhoneCallAttribute.DefinedValues?(a2, v48);
    v61 = *v42;
    specialized _NativeSet.insertNew(_:at:isUnique:)(v45, v29, isUniquelyReferenced_nonNull_native);
    *v42 = v61;
    outlined init with take of UsoEntity_applePhoneCall_PhoneCallAttribute.DefinedValues?(a2, v50);
    return 1;
  }

  v57 = ~v27;
  v52 = (v7 + 32);
  v53 = v24;
  v58 = *(v16 + 72);
  v56 = (v7 + 8);
  v51 = v11;
  while (1)
  {
    v31 = v58 * v29;
    outlined init with copy of UsoEntity_applePhoneCall_PhoneCallAttribute.DefinedValues?(*(v24 + 48) + v58 * v29, v22);
    v32 = *(v11 + 48);
    outlined init with copy of UsoEntity_applePhoneCall_PhoneCallAttribute.DefinedValues?(v22, v14);
    outlined init with copy of UsoEntity_applePhoneCall_PhoneCallAttribute.DefinedValues?(a2, &v14[v32]);
    OUTLINED_FUNCTION_1_11(v14);
    if (v33)
    {
      break;
    }

    outlined init with copy of UsoEntity_applePhoneCall_PhoneCallAttribute.DefinedValues?(v14, v60);
    OUTLINED_FUNCTION_1_11(&v14[v32]);
    if (v33)
    {
      _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v22, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMd, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMR);
      (*v56)(v60, v4);
LABEL_11:
      _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v14, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSg_AFtMd, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSg_AFtMR);
      goto LABEL_13;
    }

    v34 = &v14[v32];
    v35 = v4;
    v36 = v60;
    v37 = v54;
    (*v52)(v54, v34, v35);
    OUTLINED_FUNCTION_1_111();
    lazy protocol witness table accessor for type App and conformance App(&lazy protocol witness table cache variable for type UsoEntity_applePhoneCall_PhoneCallAttribute.DefinedValues and conformance UsoEntity_applePhoneCall_PhoneCallAttribute.DefinedValues, v38);
    v55 = dispatch thunk of static Equatable.== infix(_:_:)();
    v39 = a2;
    v40 = *v56;
    v41 = v37;
    v4 = v35;
    (*v56)(v41, v35);
    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v22, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMd, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMR);
    v40(v36, v35);
    a2 = v39;
    v11 = v51;
    v24 = v53;
    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v14, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMd, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMR);
    if (v55)
    {
      goto LABEL_15;
    }

LABEL_13:
    v29 = (v29 + 1) & v57;
    if (((*(v59 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29) & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v22, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMd, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMR);
  OUTLINED_FUNCTION_1_11(&v14[v32]);
  if (!v33)
  {
    goto LABEL_11;
  }

  _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v14, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMd, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMR);
LABEL_15:
  _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(a2, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMd, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMR);
  outlined init with copy of UsoEntity_applePhoneCall_PhoneCallAttribute.DefinedValues?(*(v24 + 48) + v31, v50);
  return 0;
}

uint64_t _ss10_NativeSetV_8capacityAByxGs07__CocoaB0Vn_SitcfC17SiriAppResolution0F0C_Tt1g5(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy17SiriAppResolution0D0CGMd, &_ss11_SetStorageCy17SiriAppResolution0D0CGMR);
    v2 = static _SetStorage.convert(_:capacity:)();
    v16 = v2;
    __CocoaSet.makeIterator()();
    while (1)
    {
      if (!__CocoaSet.Iterator.next()())
      {

        return v2;
      }

      type metadata accessor for App();
      swift_dynamicCast();
      v3 = *(v2 + 16);
      if (*(v2 + 24) <= v3)
      {
        specialized _NativeSet.resize(capacity:)(v3 + 1);
      }

      v2 = v16;
      v4 = *(v16 + 40);
      lazy protocol witness table accessor for type App and conformance App(&lazy protocol witness table cache variable for type App and conformance App, &type metadata accessor for App);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v6 = v16 + 56;
      v7 = -1 << *(v16 + 32);
      v8 = result & ~v7;
      v9 = v8 >> 6;
      if (((-1 << v8) & ~*(v16 + 56 + 8 * (v8 >> 6))) == 0)
      {
        break;
      }

      v10 = __clz(__rbit64((-1 << v8) & ~*(v16 + 56 + 8 * (v8 >> 6)))) | v8 & 0x7FFFFFFFFFFFFFC0;
LABEL_15:
      *(v6 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
      *(*(v16 + 48) + 8 * v10) = v15;
      ++*(v16 + 16);
    }

    v11 = 0;
    v12 = (63 - v7) >> 6;
    while (++v9 != v12 || (v11 & 1) == 0)
    {
      v13 = v9 == v12;
      if (v9 == v12)
      {
        v9 = 0;
      }

      v11 |= v13;
      v14 = *(v6 + 8 * v9);
      if (v14 != -1)
      {
        v10 = __clz(__rbit64(~v14)) + (v9 << 6);
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    swift_unknownObjectRelease();
    return _swiftEmptySetSingleton;
  }

  return result;
}

unint64_t specialized _NativeSet._unsafeInsertNew(_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  type metadata accessor for App();
  OUTLINED_FUNCTION_3_61();
  lazy protocol witness table accessor for type App and conformance App(v5, v6);
  v7 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v8 = OUTLINED_FUNCTION_4_80(v7);
  result = OUTLINED_FUNCTION_2_105(v8);
  *(v10 + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

unint64_t specialized _NativeSet._unsafeInsertNew(_:)(char a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();

  v5 = Hasher._finalize()();
  v6 = OUTLINED_FUNCTION_4_80(v5);
  result = OUTLINED_FUNCTION_2_105(v6);
  *(v8 + result) = a1;
  ++*(a2 + 16);
  return result;
}

BOOL specialized Set._Variant.remove(_:)()
{
  v1 = *v0;
  v2 = *(*v0 + 40);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  v3 = Hasher._finalize()() & ~(-1 << *(v1 + 32));
  v4 = (1 << v3) & *(v1 + ((v3 >> 3) & 0xFFFFFFFFFFFFFF8) + 56);
  if (v4)
  {
    v5 = *v0;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *v0;
    if (!isUniquelyReferenced_nonNull_native)
    {
      specialized _NativeSet.copy()();
    }

    specialized _NativeSet._delete(at:)(v3);
    *v0 = v8;
  }

  return v4 == 0;
}

unint64_t lazy protocol witness table accessor for type SharedNeedsValueContext.NeedsValueCase and conformance SharedNeedsValueContext.NeedsValueCase()
{
  result = lazy protocol witness table cache variable for type SharedNeedsValueContext.NeedsValueCase and conformance SharedNeedsValueContext.NeedsValueCase;
  if (!lazy protocol witness table cache variable for type SharedNeedsValueContext.NeedsValueCase and conformance SharedNeedsValueContext.NeedsValueCase)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SharedNeedsValueContext.NeedsValueCase and conformance SharedNeedsValueContext.NeedsValueCase);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SharedNeedsValueContext.NeedsValueCase(_BYTE *result, int a2, int a3)
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
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t specialized _NativeSet._delete(at:)(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        Hasher.init(_seed:)();
        Hasher._combine(_:)(0);
        v12 = Hasher._finalize()() & v7;
        if (v2 >= v10)
        {
          if (v12 >= v10 && v2 >= v12)
          {
LABEL_15:
            v15 = *(v3 + 48);
            v16 = (v15 + v2);
            v17 = (v15 + v6);
            if (v2 != v6 || v16 >= v17 + 1)
            {
              *v16 = *v17;
              v2 = v6;
            }
          }
        }

        else if (v12 >= v10 || v2 >= v12)
        {
          goto LABEL_15;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v19 = *(v3 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v21;
    ++*(v3 + 36);
  }

  return result;
}

void specialized Optional<A>.hash(into:)()
{
  v1 = type metadata accessor for UsoEntity_applePhoneCall_PhoneCallAttribute.DefinedValues();
  v2 = OUTLINED_FUNCTION_7(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  __chkstk_darwin(v2);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMd, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMR);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v15 - v11;
  outlined init with copy of UsoEntity_applePhoneCall_PhoneCallAttribute.DefinedValues?(v0, &v15 - v11);
  if (__swift_getEnumTagSinglePayload(v12, 1, v1) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    (*(v4 + 32))(v8, v12, v1);
    Hasher._combine(_:)(1u);
    OUTLINED_FUNCTION_1_111();
    lazy protocol witness table accessor for type App and conformance App(v13, v14);
    dispatch thunk of Hashable.hash(into:)();
    (*(v4 + 8))(v8, v1);
  }
}

void SingleCallRecordModel.init(displayName:displayCallDetail:displayDateTime:currentCallType:contactIds:directInvocation:openContactDirectInvocation:isVideoCall:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, void *a11, uint64_t a12, char a13)
{
  *a9 = 0xD000000000000010;
  *(a9 + 8) = 0x8000000000456CF0;
  *(a9 + 16) = a1;
  *(a9 + 24) = a2;
  *(a9 + 32) = a3;
  *(a9 + 40) = a4;
  *(a9 + 48) = a5;
  *(a9 + 56) = a6;
  v16 = type metadata accessor for SingleCallRecordModel();
  v17 = *(v16 + 44);
  type metadata accessor for SAIntentGroupRunSiriKitExecutor();
  v18 = a11;
  CodableAceObject.init(wrappedValue:)();
  *(a9 + 72) = a8;
  *(a9 + 80) = a10;
  *(a9 + 64) = a7;
  v19 = a9 + *(v16 + 48);
  CodableAceObject.init(wrappedValue:)();

  *(a9 + 88) = a13;
}

uint64_t type metadata accessor for SingleCallRecordModel()
{
  result = type metadata singleton initialization cache for SingleCallRecordModel;
  if (!type metadata singleton initialization cache for SingleCallRecordModel)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SingleResultVoicemailModel.responseViewId.setter()
{
  OUTLINED_FUNCTION_24_3();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t SingleResultVoicemailModel.displayName.setter()
{
  OUTLINED_FUNCTION_24_3();
  v3 = *(v1 + 24);

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t SingleResultVoicemailModel.displayCallDetail.setter()
{
  OUTLINED_FUNCTION_24_3();
  v3 = *(v1 + 40);

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t SingleResultVoicemailModel.displayDateTime.setter()
{
  OUTLINED_FUNCTION_24_3();
  v3 = *(v1 + 56);

  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  return result;
}

uint64_t SingleResultVoicemailModel.callDuration.getter()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return OUTLINED_FUNCTION_19_0();
}

uint64_t SingleResultVoicemailModel.callDuration.setter()
{
  OUTLINED_FUNCTION_24_3();
  v3 = *(v1 + 72);

  *(v1 + 64) = v2;
  *(v1 + 72) = v0;
  return result;
}

uint64_t SingleCallRecordModel.directInvocation.getter()
{
  v0 = *(type metadata accessor for SingleCallRecordModel() + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
  return CodableAceObject.wrappedValue.getter();
}

uint64_t SingleCallRecordModel.directInvocation.setter()
{
  v0 = *(type metadata accessor for SingleCallRecordModel() + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
  return CodableAceObject.wrappedValue.setter();
}

uint64_t (*SingleCallRecordModel.directInvocation.modify(void *a1))()
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v3 = *(type metadata accessor for SingleCallRecordModel() + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
  v2[4] = CodableAceObject.wrappedValue.modify();
  return EmergencyCountdownModel.callAction.modify;
}

uint64_t SingleCallRecordModel.openContactDirectInvocation.getter()
{
  v0 = *(type metadata accessor for SingleCallRecordModel() + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
  return CodableAceObject.wrappedValue.getter();
}

uint64_t SingleCallRecordModel.openContactDirectInvocation.setter()
{
  v0 = *(type metadata accessor for SingleCallRecordModel() + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
  return CodableAceObject.wrappedValue.setter();
}

uint64_t (*SingleCallRecordModel.openContactDirectInvocation.modify(void *a1))()
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v3 = *(type metadata accessor for SingleCallRecordModel() + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
  v2[4] = CodableAceObject.wrappedValue.modify();
  return EmergencyCountdownModel.sashTitle.modify;
}

uint64_t SingleCallRecordModel.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65736E6F70736572 && a2 == 0xEE00644977656956;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x4E79616C70736964 && a2 == 0xEB00000000656D61;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000011 && 0x8000000000453940 == a2;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x4479616C70736964 && a2 == 0xEF656D6954657461;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x43746E6572727563 && a2 == 0xEF657079546C6C61;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x49746361746E6F63 && a2 == 0xEA00000000007364;
            if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x436F656469567369 && a2 == 0xEB000000006C6C61;
              if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0xD000000000000010 && 0x80000000004616C0 == a2;
                if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                {

                  return 7;
                }

                else if (a1 == 0xD00000000000001BLL && 0x80000000004616E0 == a2)
                {

                  return 8;
                }

                else
                {
                  v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

                  if (v14)
                  {
                    return 8;
                  }

                  else
                  {
                    return 9;
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

unint64_t SingleCallRecordModel.CodingKeys.stringValue.getter(char a1)
{
  result = 0x65736E6F70736572;
  switch(a1)
  {
    case 1:
      result = 0x4E79616C70736964;
      break;
    case 2:
      result = 0xD000000000000011;
      break;
    case 3:
      result = 0x4479616C70736964;
      break;
    case 4:
      result = 0x43746E6572727563;
      break;
    case 5:
      result = 0x49746361746E6F63;
      break;
    case 6:
      result = 0x436F656469567369;
      break;
    case 7:
      result = 0xD000000000000010;
      break;
    case 8:
      result = 0xD00000000000001BLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance SingleCallRecordModel.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = SingleCallRecordModel.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance SingleCallRecordModel.CodingKeys@<X0>(_BYTE *a1@<X8>)
{
  result = OUTLINED_FUNCTION_61_5();
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SingleCallRecordModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SingleCallRecordModel.CodingKeys and conformance SingleCallRecordModel.CodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SingleCallRecordModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SingleCallRecordModel.CodingKeys and conformance SingleCallRecordModel.CodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t SingleCallRecordModel.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy27PhoneCallFlowDelegatePlugin06SingleE11RecordModelV10CodingKeys33_0E2123BD32801E21A15B1CD56DAFF669LLOGMd, &_ss22KeyedEncodingContainerVy27PhoneCallFlowDelegatePlugin06SingleE11RecordModelV10CodingKeys33_0E2123BD32801E21A15B1CD56DAFF669LLOGMR);
  v6 = OUTLINED_FUNCTION_7(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6);
  v12 = &v29[-v11];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type SingleCallRecordModel.CodingKeys and conformance SingleCallRecordModel.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = *v3;
  v15 = v3[1];
  LOBYTE(v30) = 0;
  OUTLINED_FUNCTION_6_84();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v16 = v3[2];
    v17 = v3[3];
    OUTLINED_FUNCTION_0_107(1);
    KeyedEncodingContainer.encode(_:forKey:)();
    v18 = v3[4];
    v19 = v3[5];
    OUTLINED_FUNCTION_0_107(2);
    KeyedEncodingContainer.encode(_:forKey:)();
    v20 = v3[6];
    v21 = v3[7];
    OUTLINED_FUNCTION_0_107(3);
    KeyedEncodingContainer.encode(_:forKey:)();
    v22 = v3[8];
    v23 = v3[9];
    OUTLINED_FUNCTION_0_107(4);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v30 = v3[10];
    v29[15] = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    lazy protocol witness table accessor for type [String] and conformance <A> [A](&lazy protocol witness table cache variable for type [String] and conformance <A> [A]);
    OUTLINED_FUNCTION_6_84();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v24 = *(v3 + 88);
    LOBYTE(v30) = 6;
    OUTLINED_FUNCTION_6_84();
    KeyedEncodingContainer.encode(_:forKey:)();
    v25 = type metadata accessor for SingleCallRecordModel();
    v26 = *(v25 + 44);
    LOBYTE(v30) = 7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
    lazy protocol witness table accessor for type CodableAceObject<SAIntentGroupRunSiriKitExecutor> and conformance CodableAceObject<A>(&lazy protocol witness table cache variable for type CodableAceObject<SAIntentGroupRunSiriKitExecutor> and conformance CodableAceObject<A>);
    OUTLINED_FUNCTION_6_84();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v27 = *(v25 + 48);
    LOBYTE(v30) = 8;
    OUTLINED_FUNCTION_6_84();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v8 + 8))(v12, v5);
}

unint64_t lazy protocol witness table accessor for type SingleCallRecordModel.CodingKeys and conformance SingleCallRecordModel.CodingKeys()
{
  result = lazy protocol witness table cache variable for type SingleCallRecordModel.CodingKeys and conformance SingleCallRecordModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type SingleCallRecordModel.CodingKeys and conformance SingleCallRecordModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SingleCallRecordModel.CodingKeys and conformance SingleCallRecordModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SingleCallRecordModel.CodingKeys and conformance SingleCallRecordModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type SingleCallRecordModel.CodingKeys and conformance SingleCallRecordModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SingleCallRecordModel.CodingKeys and conformance SingleCallRecordModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SingleCallRecordModel.CodingKeys and conformance SingleCallRecordModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type SingleCallRecordModel.CodingKeys and conformance SingleCallRecordModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SingleCallRecordModel.CodingKeys and conformance SingleCallRecordModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SingleCallRecordModel.CodingKeys and conformance SingleCallRecordModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type SingleCallRecordModel.CodingKeys and conformance SingleCallRecordModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SingleCallRecordModel.CodingKeys and conformance SingleCallRecordModel.CodingKeys);
  }

  return result;
}

uint64_t SingleCallRecordModel.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
  v3 = OUTLINED_FUNCTION_7(v44);
  v42 = v4;
  v6 = *(v5 + 64);
  __chkstk_darwin(v3);
  v8 = v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v37 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy27PhoneCallFlowDelegatePlugin06SingleE11RecordModelV10CodingKeys33_0E2123BD32801E21A15B1CD56DAFF669LLOGMd, &_ss22KeyedDecodingContainerVy27PhoneCallFlowDelegatePlugin06SingleE11RecordModelV10CodingKeys33_0E2123BD32801E21A15B1CD56DAFF669LLOGMR);
  v40 = OUTLINED_FUNCTION_7(v12);
  v41 = v13;
  v15 = *(v14 + 64);
  __chkstk_darwin(v40);
  v43 = type metadata accessor for SingleCallRecordModel();
  v16 = *(*(v43 - 8) + 64);
  __chkstk_darwin(v43);
  v18 = v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = a1[3];
  v19 = a1[4];
  v46 = a1;
  v21 = __swift_project_boxed_opaque_existential_1(a1, v20);
  lazy protocol witness table accessor for type SingleCallRecordModel.CodingKeys and conformance SingleCallRecordModel.CodingKeys();
  v22 = v45;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v22)
  {
    OUTLINED_FUNCTION_3_103();
    __swift_destroy_boxed_opaque_existential_1(v46);

    if (v21)
    {
      v26 = *(v18 + 10);
    }

    if (v19)
    {
      return (*(v42 + 8))(&v18[*(v43 + 44)], v44);
    }
  }

  else
  {
    v45 = v11;
    v38 = v8;
    LOBYTE(v48) = 0;
    v23 = KeyedDecodingContainer.decode(_:forKey:)();
    v25 = v24;
    *v18 = v23;
    *(v18 + 1) = v24;
    OUTLINED_FUNCTION_1_112(1);
    *(v18 + 2) = KeyedDecodingContainer.decode(_:forKey:)();
    *(v18 + 3) = v27;
    OUTLINED_FUNCTION_1_112(2);
    *(v18 + 4) = KeyedDecodingContainer.decode(_:forKey:)();
    *(v18 + 5) = v28;
    OUTLINED_FUNCTION_1_112(3);
    *(v18 + 6) = KeyedDecodingContainer.decode(_:forKey:)();
    *(v18 + 7) = v29;
    OUTLINED_FUNCTION_1_112(4);
    *(v18 + 8) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    *(v18 + 9) = v30;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    v47 = 5;
    lazy protocol witness table accessor for type [String] and conformance <A> [A](&lazy protocol witness table cache variable for type [String] and conformance <A> [A]);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *(v18 + 10) = v48;
    OUTLINED_FUNCTION_1_112(6);
    v18[88] = KeyedDecodingContainer.decode(_:forKey:)() & 1;
    LOBYTE(v48) = 7;
    lazy protocol witness table accessor for type CodableAceObject<SAIntentGroupRunSiriKitExecutor> and conformance CodableAceObject<A>(&lazy protocol witness table cache variable for type CodableAceObject<SAIntentGroupRunSiriKitExecutor> and conformance CodableAceObject<A>);
    v31 = v45;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v37[1] = v25;
    v32 = &v18[*(v43 + 44)];
    v45 = *(v42 + 32);
    v45(v32, v31, v44);
    LOBYTE(v48) = 8;
    v33 = v38;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v34 = OUTLINED_FUNCTION_2_106();
    v35(v34);
    v45(&v18[*(v43 + 48)], v33, v44);
    outlined init with copy of SingleCallRecordModel(v18, v39);
    __swift_destroy_boxed_opaque_existential_1(v46);
    return outlined destroy of SingleCallRecordModel(v18);
  }

  return result;
}

uint64_t outlined init with copy of SingleCallRecordModel(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SingleCallRecordModel();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of SingleCallRecordModel(uint64_t a1)
{
  v2 = type metadata accessor for SingleCallRecordModel();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t instantiation function for generic protocol witness table for SingleCallRecordModel(uint64_t a1)
{
  result = lazy protocol witness table accessor for type SingleCallRecordModel and conformance SingleCallRecordModel(&lazy protocol witness table cache variable for type SingleCallRecordModel and conformance SingleCallRecordModel);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type SingleCallRecordModel and conformance SingleCallRecordModel(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SingleCallRecordModel();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void type metadata completion function for SingleCallRecordModel()
{
  type metadata accessor for String?(319, &lazy cache variable for type metadata for String?, &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    type metadata accessor for String?(319, &lazy cache variable for type metadata for [String], &type metadata accessor for Array);
    if (v1 <= 0x3F)
    {
      type metadata accessor for CodableAceObject<SAIntentGroupRunSiriKitExecutor>();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata accessor for String?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void *))
{
  if (!*a2)
  {
    v4 = a3(0, &type metadata for String);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for SingleCallRecordModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 8;
        }

        break;
    }
  }

  return result;
}

uint64_t SingleCallResultFlow.__allocating_init(app:callRecord:intent:intentResponse:isIncomingCallFollowupPrompt:sharedGlobals:schGlobals:)(void *a1, void *a2, void *a3, void *a4, int a5, uint64_t a6, uint64_t a7)
{
  v42 = a7;
  v43 = a6;
  v40 = a5;
  v39 = a4;
  v10 = type metadata accessor for Locale();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = (&v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for AppInfoBuilder();
  v15 = swift_allocObject();
  static Device.current.getter();
  __swift_project_boxed_opaque_existential_1(v44, v45);
  dispatch thunk of DeviceState.siriLocale.getter();
  __swift_destroy_boxed_opaque_existential_1(v44);
  v16 = a2;
  v17 = _s27PhoneCallFlowDelegatePlugin0aB6RecordC10getBuilder04callF07options07appInfoH06localeAC0H0CSo06INCallF0C_AC7OptionsVAA03AppL8Building_p10Foundation6LocaleVtFZTf4nnenn_nAA0plH0C_Tt3g5(v16, 1, v15, v14);
  v18 = type metadata accessor for PhoneCallRecord(0);
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  swift_allocObject();
  v38 = PhoneCallRecord.init(builder:)(v17);

  v21 = *(v11 + 8);
  v37 = v10;
  v21(v14, v10);
  v22 = v39;
  v39 = a1;
  if (App.isFirstParty()())
  {
    v23 = static SearchCallHistoryCatParameterHelper.makePhonePersons1P(intent:intentResponse:)(a3, v22);
  }

  else
  {
    v24 = [a3 recipient];
    if (v24)
    {
      v25 = v24;
      v36 = a3;
      v35 = type metadata accessor for PhonePerson(0);
      v26 = v25;
      static Device.current.getter();
      __swift_project_boxed_opaque_existential_1(v44, v45);
      OUTLINED_FUNCTION_19_7();
      dispatch thunk of DeviceState.siriLocale.getter();
      __swift_destroy_boxed_opaque_existential_1(v44);
      v27 = static PhonePerson.make(phonePerson:options:locale:)(v25, 0, v14);

      v21(v14, v37);
      if (v27)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
        v23 = swift_allocObject();
        *(v23 + 1) = xmmword_426260;
        v23[4] = v27;
      }

      else
      {

        v23 = _swiftEmptyArrayStorage;
      }

      a3 = v36;
    }

    else
    {
      v23 = _swiftEmptyArrayStorage;
    }
  }

  type metadata accessor for PhoneSearchCallHistoryIntent(0);
  type metadata accessor for PhonePersonList();
  v28 = PhonePersonList.__allocating_init(list:)(v23);
  v29 = a3;
  v30 = PhoneSearchCallHistoryIntent.__allocating_init(intent:recipients:)(v29, v28);
  v31 = v43;
  outlined init with copy of SignalProviding(v43, v46);
  v32 = v42;
  outlined init with copy of SearchCallHistorySharedGlobals(v42, v44);
  v33 = (*(v41 + 208))(v39, v16, v38, v29, v30, v46, v44, v40 & 1);

  outlined destroy of SearchCallHistorySharedGlobals(v32);
  __swift_destroy_boxed_opaque_existential_1(v31);
  return v33;
}

uint64_t specialized IncomingCallNLContextProvider.makeOfferFollowUpIntentContext(followUpOfferType:isAnnouncement:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for NLContextUpdate();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (FollowUpOfferType.requiresConfirmation.getter(a1))
  {
    specialized IncomingCallNLContextProvider.makeFollowUpConfirmationContext(followUpOfferType:)(a1);
    switch(a1)
    {
      case 1u:
        if (one-time initialization token for siriPhone != -1)
        {
          swift_once();
        }

        v29 = type metadata accessor for Logger();
        __swift_project_value_buffer(v29, static Logger.siriPhone);
        v30 = Logger.logObject.getter();
        v31 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v30, v31))
        {
          v32 = swift_slowAlloc();
          *v32 = 0;
          _os_log_impl(&dword_0, v30, v31, "#IncomingCallNLContextProvider: Adding NLv4 context for startCall", v32, 2u);
        }

        v33 = type metadata accessor for UsoTaskBuilder_call_common_PhoneCall();
        v34 = *(v33 + 48);
        v35 = *(v33 + 52);
        swift_allocObject();
        v18 = UsoTaskBuilder_call_common_PhoneCall.init()();
        v19 = 0x6163207472617473;
        v20 = 0xEA00000000006C6CLL;
        break;
      case 2u:
        if (one-time initialization token for siriPhone != -1)
        {
          swift_once();
        }

        v22 = type metadata accessor for Logger();
        __swift_project_value_buffer(v22, static Logger.siriPhone);
        v23 = Logger.logObject.getter();
        v24 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v23, v24))
        {
          v25 = swift_slowAlloc();
          *v25 = 0;
          _os_log_impl(&dword_0, v23, v24, "#IncomingCallNLContextProvider: Adding NLv4 context for answerCall", v25, 2u);
        }

        v26 = type metadata accessor for UsoTaskBuilder_answer_common_PhoneCall();
        v27 = *(v26 + 48);
        v28 = *(v26 + 52);
        swift_allocObject();
        v18 = UsoTaskBuilder_answer_common_PhoneCall.init()();
        v19 = 0x6320726577736E61;
        v20 = 0xEB000000006C6C61;
        break;
      case 3u:
        if (one-time initialization token for siriPhone != -1)
        {
          swift_once();
        }

        v11 = type metadata accessor for Logger();
        __swift_project_value_buffer(v11, static Logger.siriPhone);
        v12 = Logger.logObject.getter();
        v13 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v12, v13))
        {
          v14 = swift_slowAlloc();
          *v14 = 0;
          _os_log_impl(&dword_0, v12, v13, "#IncomingCallNLContextProvider: Adding NLv4 context for callBack", v14, 2u);
        }

        v15 = type metadata accessor for UsoTaskBuilder_callback_common_PhoneCall();
        v16 = *(v15 + 48);
        v17 = *(v15 + 52);
        swift_allocObject();
        v18 = UsoTaskBuilder_callback_common_PhoneCall.init()();
        v19 = 0x636162206C6C6163;
        v20 = 0xE90000000000006BLL;
        break;
      default:
LABEL_24:
        if (a2)
        {
          if (one-time initialization token for siriPhone != -1)
          {
            swift_once();
          }

          v36 = type metadata accessor for Logger();
          __swift_project_value_buffer(v36, static Logger.siriPhone);
          v37 = Logger.logObject.getter();
          v38 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v37, v38))
          {
            v39 = swift_slowAlloc();
            *v39 = 0;
            _os_log_impl(&dword_0, v37, v38, "#NLContextUpdate: Setting Announce Calls NLContextUpdate fields", v39, 2u);
          }

          NLContextUpdate.submitAsSpokenNotificationContext.setter();
          NLContextUpdate.weightedPromptStrict.setter();
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
          v40 = swift_allocObject();
          *(v40 + 16) = xmmword_426260;
          v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v43 = v42;
          v44 = [objc_allocWithZone(SAAceConfirmationContext) init];
          outlined bridged method (mbnn) of @objc SAAceConfirmationContext.reason.setter(v41, v43, v44);
          *(v40 + 32) = v44;
          NLContextUpdate.conversationStateAttachments.setter();
        }

        (*(v7 + 32))(a3, v10, v6);
        return __swift_storeEnumTagSinglePayload(a3, 0, 1, v6);
    }

    specialized IncomingCallNLContextProvider.createNLUSystemDialogAct(taskBuilder:typeForLogging:)(v18, v19, v20);

    NLContextUpdate.nluSystemDialogActs.setter();
    goto LABEL_24;
  }

  return __swift_storeEnumTagSinglePayload(a3, 1, 1, v6);
}

id specialized IncomingCallNLContextProvider.makeFollowUpConfirmationContext(followUpOfferType:)(uint64_t a1)
{
  v1 = a1;
  v2 = a1;
  _s27PhoneCallFlowDelegatePlugin0aB17NLContextProviderC34makeGenericConfirmationNLv3Context07SiriKitC00F6UpdateVyFZSo8INIntentC_So0P8ResponseCTt0g5(a1);
  v3 = _swiftEmptyArrayStorage;
  v4 = _swiftEmptyArrayStorage;
  if (v2 == 2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
    v4 = swift_allocObject();
    *(v4 + 1) = xmmword_424FD0;
    v4[4] = PhoneCallNLConstants.canonicalName.getter(15);
    v4[5] = v5;
    v3 = swift_allocObject();
    *(v3 + 1) = xmmword_424FF0;
    String.uppercased()();
    lazy protocol witness table accessor for type String and conformance String();
    StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

    v15 = PhoneCallNLConstants.canonicalName.getter(15);
    v17 = v6;
    v7._countAndFlagsBits = 0x2E65756C61562ELL;
    v7._object = 0xE700000000000000;
    String.append(_:)(v7);
    v8 = String.uppercased()();
    String.append(_:)(v8);

    v3[4] = v15;
    v3[5] = v17;
    String.uppercased()();
    StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

    v16 = PhoneCallNLConstants.canonicalName.getter(15);
    v18 = v9;
    v10._countAndFlagsBits = 0x2E65756C61562ELL;
    v10._object = 0xE700000000000000;
    String.append(_:)(v10);
    v11 = String.uppercased()();
    String.append(_:)(v11);

    v3[6] = v16;
    v3[7] = v18;
  }

  NLContextUpdate.weightedPromptResponseTargets.getter();
  specialized Array.append<A>(contentsOf:)(v4);
  NLContextUpdate.weightedPromptResponseTargets.setter();
  NLContextUpdate.weightedPromptResponseOptions.getter();
  specialized Array.append<A>(contentsOf:)(v3);
  NLContextUpdate.weightedPromptResponseOptions.setter();
  result = specialized IncomingCallNLContextProvider.getConfirmationAttachment(for:)(v1);
  if (result)
  {
    v13 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_426260;
    *(v14 + 32) = v13;
    return NLContextUpdate.conversationStateAttachments.setter();
  }

  return result;
}

id specialized IncomingCallNLContextProvider.getConfirmationAttachment(for:)(char a1)
{
  if (a1 == 1)
  {
    if (one-time initialization token for siriPhone != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, static Logger.siriPhone);
    v2 = Logger.logObject.getter();
    v7 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v2, v7))
    {
      v5 = &SAAceConfirmationReasonCONFIRM_START_CALLValue;
      goto LABEL_15;
    }

    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_0, v2, v7, "#IncomingCallNLContextProvider: Adding NLv3 context for startCall", v8, 2u);
    v5 = &SAAceConfirmationReasonCONFIRM_START_CALLValue;
    goto LABEL_11;
  }

  if (a1 == 3)
  {
    if (one-time initialization token for siriPhone != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    __swift_project_value_buffer(v1, static Logger.siriPhone);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v2, v3))
    {
      v5 = &SAAceConfirmationReasonCONFIRM_CALL_BACKValue;
      goto LABEL_15;
    }

    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "#IncomingCallNLContextProvider: Adding NLv3 context for callBack", v4, 2u);
    v5 = &SAAceConfirmationReasonCONFIRM_CALL_BACKValue;
LABEL_11:

LABEL_15:

    v10 = *v5;
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;
    v9 = [objc_allocWithZone(SAAceConfirmationContext) init];
    outlined bridged method (mbnn) of @objc SAAceConfirmationContext.reason.setter(v11, v13, v9);
    return v9;
  }

  return 0;
}

uint64_t specialized IncomingCallNLContextProvider.createNLUSystemDialogAct(taskBuilder:typeForLogging:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v70 = a3;
  v66 = a2;
  v71 = type metadata accessor for PhoneError();
  v4 = *(*(v71 - 8) + 64);
  __chkstk_darwin(v71);
  v69 = &v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v64 = &v64 - v7;
  v8 = type metadata accessor for Siri_Nlu_External_SystemDialogAct();
  v74 = *(v8 - 8);
  v75 = v8;
  v9 = *(v74 + 64);
  __chkstk_darwin(v8);
  v65 = &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v79 = &v64 - v12;
  v76 = type metadata accessor for Siri_Nlu_External_SystemOffered();
  v67 = *(v76 - 8);
  v13 = *(v67 + 64);
  __chkstk_darwin(v76);
  v73 = &v64 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v64 - v16;
  v18 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v77 = *(v18 - 8);
  v78 = v18;
  v19 = *(v77 + 64);
  __chkstk_darwin(v18);
  v72 = &v64 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v64 - v22;
  v24 = type metadata accessor for Siri_Nlu_External_UsoGraph();
  v25 = *(*(v24 - 8) + 64);
  __chkstk_darwin(v24 - 8);
  v26 = type metadata accessor for Siri_Nlu_External_UserWantedToProceed();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  __chkstk_darwin(v26);
  v30 = &v64 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v33 = &v64 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology17UsoBuilderOptionsVSgMd, &_s12SiriOntology17UsoBuilderOptionsVSgMR);
  v35 = *(*(v34 - 8) + 64);
  __chkstk_darwin(v34 - 8);
  v37 = &v64 - v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_426260;
  *(v38 + 32) = a1;
  v39 = type metadata accessor for UsoBuilderOptions();
  __swift_storeEnumTagSinglePayload(v37, 1, 1, v39);

  v40 = static UsoGraphBuilder.buildGraphWithOptions(taskBuilders:options:)();

  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v37, &_s12SiriOntology17UsoBuilderOptionsVSgMd, &_s12SiriOntology17UsoBuilderOptionsVSgMR);
  Siri_Nlu_External_UserWantedToProceed.init()();
  v68 = v40;
  static UsoGraphProtoWriter.toSwiftProtobuf(graph:vocabManager:)();
  Siri_Nlu_External_UserWantedToProceed.reference.setter();
  Siri_Nlu_External_UserDialogAct.init()();
  v41 = *(v27 + 16);
  v69 = v33;
  v41(v30, v33, v26);
  Siri_Nlu_External_UserDialogAct.wantedToProceed.setter();
  Siri_Nlu_External_SystemOffered.init()();
  (*(v77 + 16))(v72, v23, v78);
  Siri_Nlu_External_SystemOffered.offeredAct.setter();
  Siri_Nlu_External_SystemDialogAct.init()();
  v42 = v67;
  v43 = v76;
  (*(v67 + 16))(v73, v17, v76);
  Siri_Nlu_External_SystemDialogAct.offered.setter();
  if (one-time initialization token for siriPhone != -1)
  {
    swift_once();
  }

  v71 = v27;
  v72 = v26;
  v73 = v23;
  v44 = type metadata accessor for Logger();
  __swift_project_value_buffer(v44, static Logger.siriPhone);
  v45 = v70;

  v46 = Logger.logObject.getter();
  v47 = static os_log_type_t.debug.getter();

  v48 = os_log_type_enabled(v46, v47);
  v50 = v74;
  v49 = v75;
  if (v48)
  {
    v51 = swift_slowAlloc();
    v80[0] = swift_slowAlloc();
    *v51 = 136315394;
    *(v51 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v66, v45, v80);
    *(v51 + 12) = 2080;
    v52 = v79;
    swift_beginAccess();
    v53 = v65;
    (*(v50 + 16))(v65, v52, v49);
    v54 = _sSS27PhoneCallFlowDelegatePluginE10describingSS21InternalSwiftProtobuf7Message_p_tcfCTf4en_n12SiriNLUTypes0K29_Nlu_External_SystemDialogActV_Tt0g5(v53);
    v56 = v17;
    v57 = v42;
    v58 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v54, v55, v80);

    *(v51 + 14) = v58;
    v42 = v57;
    v17 = v56;
    _os_log_impl(&dword_0, v46, v47, "Returning NLUUserDialogAct.NLUSystemOffered for %s: %s", v51, 0x16u);
    swift_arrayDestroy();

    v43 = v76;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D29_Nlu_External_SystemDialogActVGMd, &_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D29_Nlu_External_SystemDialogActVGMR);
  v59 = *(v50 + 72);
  v60 = (*(v50 + 80) + 32) & ~*(v50 + 80);
  v61 = swift_allocObject();
  *(v61 + 16) = xmmword_424FD0;
  v62 = v79;
  swift_beginAccess();
  (*(v50 + 16))(v61 + v60, v62, v49);

  (*(v42 + 8))(v17, v43);
  (*(v77 + 8))(v73, v78);
  (*(v71 + 8))(v69, v72);
  (*(v50 + 8))(v62, v49);
  return v61;
}

uint64_t SingleCallResultFlow.__allocating_init(app:callRecord:phoneCallRecord:intent:phoneIntent:sharedGlobals:schGlobals:isIncomingCallFollowupPrompt:)()
{
  OUTLINED_FUNCTION_16_5();
  v0 = swift_allocObject();
  SingleCallResultFlow.init(app:callRecord:phoneCallRecord:intent:phoneIntent:sharedGlobals:schGlobals:isIncomingCallFollowupPrompt:)();
  return v0;
}

uint64_t SingleCallResultFlow.State.description.getter(uint64_t a1)
{
  if (a1 == 1)
  {
    return 0x646165722ELL;
  }

  if (a1 == 2)
  {
    return 0xD000000000000016;
  }

  swift_errorRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pSgMd, &_ss5Error_pSgMR);
  v2._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v2);

  return 0x74656C706D6F632ELL;
}

uint64_t key path setter for SingleCallResultFlow.state : SingleCallResultFlow(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  outlined copy of SingleCallResultFlow.State(*a1);
  return SingleCallResultFlow.state.setter(v2);
}

void SingleCallResultFlow.state.didset()
{
  if (one-time initialization token for siriPhone != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.siriPhone);

  oslog = Logger.logObject.getter();
  v2 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v3 = 136315394;
    DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v0[38], v0[39], v0[40], v0[41]);
    v4 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0, 0xE000000000000000, &v11);

    *(v3 + 4) = v4;
    *(v3 + 12) = 2080;
    swift_beginAccess();
    v5 = v0[42];
    outlined copy of SingleCallResultFlow.State(v5);
    v6 = SingleCallResultFlow.State.description.getter(v5);
    v8 = v7;
    outlined consume of SingleCallResultFlow.State(v5);
    v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v8, &v11);

    *(v3 + 14) = v9;
    _os_log_impl(&dword_0, oslog, v2, "%s state => %s", v3, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }
}

uint64_t SingleCallResultFlow.state.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 336);
  outlined copy of SingleCallResultFlow.State(v1);
  return v1;
}

uint64_t SingleCallResultFlow.state.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 336);
  *(v1 + 336) = a1;
  outlined copy of SingleCallResultFlow.State(a1);
  outlined consume of SingleCallResultFlow.State(v3);
  SingleCallResultFlow.state.didset();
  return outlined consume of SingleCallResultFlow.State(a1);
}

BOOL SingleCallResultFlow.requiresCallBackOffer.getter()
{
  v1 = [*(v0 + 24) caller];
  v2 = v1;
  if (v1)
  {
  }

  return v2 != 0;
}

uint64_t SingleCallResultFlow.init(app:callRecord:phoneCallRecord:intent:phoneIntent:sharedGlobals:schGlobals:isIncomingCallFollowupPrompt:)()
{
  OUTLINED_FUNCTION_16_5();
  *(v1 + 304) = type metadata accessor for SingleCallResultFlow();
  *(v1 + 312) = &outlined read-only object #0 of SingleCallResultFlow.init(app:callRecord:phoneCallRecord:intent:phoneIntent:sharedGlobals:schGlobals:isIncomingCallFollowupPrompt:);
  *(v1 + 320) = 0;
  *(v1 + 328) = 0;
  *(v1 + 336) = 1;
  *(v1 + 16) = v8;
  *(v1 + 24) = v7;
  *(v1 + 32) = v6;
  *(v1 + 40) = v5;
  *(v1 + 48) = v4;
  outlined init with take of SPHConversation(v3, v1 + 64);
  memcpy((v1 + 104), v2, 0xC8uLL);
  *(v1 + 56) = v0;
  return v1;
}

uint64_t SingleCallResultFlow.execute()()
{
  OUTLINED_FUNCTION_15();
  v1[7] = v2;
  v1[8] = v0;
  v3 = type metadata accessor for CATOption();
  OUTLINED_FUNCTION_21(v3);
  v5 = *(v4 + 64);
  v1[9] = OUTLINED_FUNCTION_45();
  v6 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v6, v7, v8);
}

{
  v42 = v0;
  v1 = (*(**(v0 + 64) + 160))();
  if (v1)
  {
    v2 = v1;
    if (v1 == 2)
    {
      v8 = *(v0 + 64);
      SingleCallResultFlow.makeFollowUpAction()();
      v10 = *(v0 + 56);
      v9 = *(v0 + 64);

      static ExecuteResponse.complete(next:childCompletion:)();
    }

    else
    {
      if (v1 == 1)
      {
        swift_task_alloc();
        OUTLINED_FUNCTION_25();
        *(v0 + 80) = v3;
        *v3 = v4;
        v3[1] = SingleCallResultFlow.execute();
        v5 = *(v0 + 56);
        v6 = *(v0 + 64);

        return SingleCallResultFlow.executeRead()();
      }

      if (one-time initialization token for siriPhone != -1)
      {
        OUTLINED_FUNCTION_6_2();
      }

      v12 = *(v0 + 64);
      v13 = type metadata accessor for Logger();
      __swift_project_value_buffer(v13, static Logger.siriPhone);
      OUTLINED_FUNCTION_19_7();

      outlined copy of SingleCallResultFlow.State(v2);
      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.error.getter();

      outlined consume of SingleCallResultFlow.State(v2);
      if (os_log_type_enabled(v14, v15))
      {
        v16 = *(v0 + 64);
        v17 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        v40 = 0;
        *v17 = 136315394;
        v18 = OUTLINED_FUNCTION_20_43();
        v41 = v19;
        DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v18, v20, v21, v22);
        v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v40, v41, &v39);

        *(v17 + 4) = v23;
        *(v17 + 12) = 2080;
        swift_getErrorValue();
        v25 = *(v0 + 16);
        v24 = *(v0 + 24);
        v26 = *(v0 + 32);
        v27 = Error.localizedDescription.getter();
        v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v28, &v39);

        *(v17 + 14) = v29;
        _os_log_impl(&dword_0, v14, v15, "%s Flow encountered an error: %s", v17, 0x16u);
        swift_arrayDestroy();

        OUTLINED_FUNCTION_14_0();
      }

      v31 = *(v0 + 64);
      v30 = *(v0 + 72);
      v32 = *(v0 + 56);
      type metadata accessor for StartCallCATsSimple();
      static CATOption.defaultMode.getter();
      v33 = CATWrapperSimple.__allocating_init(options:globals:)();
      v34 = static CommonOutputs.genericError(sharedGlobals:startCallCATsSimple:)((v31 + 64), v33);

      v36 = (*(*v34 + 112))(v35);

      *(v0 + 40) = v36;
      type metadata accessor for SimpleOutputFlowAsync();
      static ExecuteResponse.complete<A>(next:)();
      outlined consume of SingleCallResultFlow.State(v2);
    }
  }

  else
  {
    v11 = *(v0 + 56);
    static ExecuteResponse.complete()();
  }

  v37 = *(v0 + 72);

  OUTLINED_FUNCTION_11();

  return v38();
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  v3 = v2;
  OUTLINED_FUNCTION_6();
  *v4 = v3;
  v6 = *(v5 + 80);
  v7 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v8 = v7;
  *(v3 + 88) = v0;

  if (v0)
  {

    return _swift_task_switch(SingleCallResultFlow.execute(), 0, 0);
  }

  else
  {
    v9 = *(v3 + 72);

    OUTLINED_FUNCTION_11();

    return v10();
  }
}

{
  OUTLINED_FUNCTION_27();
  v1 = v0[11];
  v3 = v0[7];
  v2 = v0[8];
  swift_errorRetain();
  SingleCallResultFlow.state.setter(v1);
  static ExecuteResponse.replan(requireInput:)();

  v4 = v0[9];

  OUTLINED_FUNCTION_11();

  return v5();
}

uint64_t SingleCallResultFlow.execute(completion:)()
{
  type metadata accessor for SingleCallResultFlow();
  _s27PhoneCallFlowDelegatePlugin06Singleb6ResultC0CAC07SiriKitC00C0AAWlTm_0(&lazy protocol witness table cache variable for type SingleCallResultFlow and conformance SingleCallResultFlow, v0, type metadata accessor for SingleCallResultFlow);
  return Flow.deferToExecuteAsync(_:)();
}

uint64_t SingleCallResultFlow.executeRead()()
{
  OUTLINED_FUNCTION_15();
  v1[46] = v2;
  v1[47] = v0;
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v1[48] = v3;
  *v3 = v4;
  v3[1] = SingleCallResultFlow.executeRead();

  return SingleCallResultFlow.makeOutput()();
}

{
  OUTLINED_FUNCTION_27();
  v3 = v2;
  OUTLINED_FUNCTION_28();
  v5 = v4;
  OUTLINED_FUNCTION_6();
  *v6 = v5;
  v8 = *(v7 + 384);
  v9 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v10 = v9;
  *(v5 + 392) = v0;

  if (v0)
  {
    v11 = SingleCallResultFlow.executeRead();
  }

  else
  {
    *(v5 + 400) = v3 & 1;
    v11 = SingleCallResultFlow.executeRead();
  }

  return _swift_task_switch(v11, 0, 0);
}

{
  v1 = *(v0 + 400);
  v2 = *(v0 + 376);
  outlined init with take of SPHConversation((v0 + 152), v0 + 112);
  outlined init with copy of SignalProviding(v0 + 112, v0 + 192);
  v3 = swift_allocObject();
  outlined init with take of SPHConversation((v0 + 192), v3 + 16);
  if (v1 == 1)
  {
    v4 = *(v0 + 376);
    v32 = *(v0 + 368);
    outlined init with copy of SignalProviding(v2 + 64, v0 + 272);
    type metadata accessor for PhoneCallYesNoConfirmationFlowStrategy();
    swift_allocObject();
    PhoneCallYesNoConfirmationFlowStrategy.init(outputProducer:sharedGlobals:)(&async function pointer to partial apply for closure #1 in SingleCallResultFlow.executeRead(), v3, (v0 + 272));
    v5 = *(v4 + 88);
    v6 = *(v4 + 96);
    __swift_project_boxed_opaque_existential_1((v2 + 64), v5);
    v7 = *(v6 + 16);

    v7(v5, v6);
    v8 = *(v0 + 88);
    v9 = *(v0 + 104);
    v10 = __swift_project_boxed_opaque_existential_1((v0 + 64), v8);
    *(v0 + 336) = v8;
    *(v0 + 344) = v9;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 312));
    (*(*(v8 - 8) + 16))(boxed_opaque_existential_1, v10, v8);
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow021PromptForConfirmationC5AsyncCyytAA06SimpleF16ResponseProviderVGMd, &_s11SiriKitFlow021PromptForConfirmationC5AsyncCyytAA06SimpleF16ResponseProviderVGMR);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    swift_allocObject();
    _s27PhoneCallFlowDelegatePlugin06Singleb6ResultC0CAC07SiriKitC00C0AAWlTm_0(&lazy protocol witness table cache variable for type PhoneCallYesNoConfirmationFlowStrategy and conformance PhoneCallYesNoConfirmationFlowStrategy, 255, type metadata accessor for PhoneCallYesNoConfirmationFlowStrategy);
    v15 = PromptForConfirmationFlowAsync.init<A>(itemToConfirm:strategy:outputPublisher:)();
    __swift_destroy_boxed_opaque_existential_1((v0 + 64));
    *(v0 + 360) = v15;
    lazy protocol witness table accessor for type TerminalOntologyNode<VoiceMail.VoiceMailNoun> and conformance TerminalOntologyNode<A>(&lazy protocol witness table cache variable for type PromptForConfirmationFlowAsync<(), SimpleConfirmationResponseProvider> and conformance PromptForConfirmationFlowAsync<A, B>, &_s11SiriKitFlow021PromptForConfirmationC5AsyncCyytAA06SimpleF16ResponseProviderVGMd, &_s11SiriKitFlow021PromptForConfirmationC5AsyncCyytAA06SimpleF16ResponseProviderVGMR);

    static ExecuteResponse.ongoing<A>(next:childCompletion:)();

    __swift_destroy_boxed_opaque_existential_1((v0 + 112));
  }

  else
  {
    v17 = *(v0 + 368);
    v16 = *(v0 + 376);
    v18 = *(v16 + 96);
    __swift_project_boxed_opaque_existential_1((v2 + 64), *(v16 + 88));
    v19 = *(v18 + 16);
    v20 = OUTLINED_FUNCTION_19_7();
    v21(v20, v18);
    v22 = *(v0 + 40);
    v23 = *(v0 + 56);
    v24 = __swift_project_boxed_opaque_existential_1((v0 + 16), v22);
    *(v0 + 256) = v22;
    *(v0 + 264) = v23;
    v25 = __swift_allocate_boxed_opaque_existential_1((v0 + 232));
    (*(*(v22 - 8) + 16))(v25, v24, v22);
    v26 = type metadata accessor for SimpleOutputFlowAsync();
    v27 = *(v26 + 48);
    v28 = *(v26 + 52);
    swift_allocObject();

    v29 = SimpleOutputFlowAsync.init(outputPublisher:outputGenerator:)();
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
    *(v0 + 352) = v29;

    static ExecuteResponse.complete<A>(next:childCompletion:)();

    __swift_destroy_boxed_opaque_existential_1((v0 + 112));
  }

  OUTLINED_FUNCTION_11();

  return v30();
}

{
  OUTLINED_FUNCTION_11();
  v1 = *(v0 + 392);
  return v2();
}

uint64_t closure #1 in SingleCallResultFlow.executeRead()(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(closure #1 in SingleCallResultFlow.executeRead(), 0, 0);
}

uint64_t closure #1 in SingleCallResultFlow.executeRead()()
{
  OUTLINED_FUNCTION_15();
  outlined init with copy of SignalProviding(*(v0 + 24), *(v0 + 16));
  OUTLINED_FUNCTION_11();

  return v1();
}

uint64_t closure #2 in SingleCallResultFlow.executeRead()(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for ConfirmationResponse();
  v65 = *(v4 - 8);
  v5 = *(v65 + 64);
  __chkstk_darwin(v4);
  v61 = &v56[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow20ConfirmationResponseOSg_ADtMd, &_s11SiriKitFlow20ConfirmationResponseOSg_ADtMR);
  v7 = *(*(v63 - 8) + 64);
  __chkstk_darwin(v63);
  v66 = &v56[-v8];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow20ConfirmationResponseOSgMd, &_s11SiriKitFlow20ConfirmationResponseOSgMR);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v62 = &v56[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v12);
  v14 = &v56[-v13];
  __chkstk_darwin(v15);
  v17 = &v56[-v16];
  v72 = type metadata accessor for SimpleConfirmationResponseProvider();
  v64 = *(v72 - 8);
  v18 = *(v64 + 64);
  __chkstk_darwin(v72);
  v67 = &v56[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow12PromptResultOyAA34SimpleConfirmationResponseProviderVGMd, &_s11SiriKitFlow12PromptResultOyAA34SimpleConfirmationResponseProviderVGMR);
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  __chkstk_darwin(v20);
  v24 = &v56[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v25);
  v27 = &v56[-v26];
  if (one-time initialization token for siriPhone != -1)
  {
    swift_once();
  }

  v68 = v14;
  v69 = v17;
  v28 = type metadata accessor for Logger();
  __swift_project_value_buffer(v28, static Logger.siriPhone);
  v70 = *(v21 + 16);
  v71 = a1;
  v70(v27, a1, v20);

  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v59 = v4;
    v32 = v31;
    v58 = swift_slowAlloc();
    v75[0] = v58;
    *v32 = 136315394;
    v33 = a2[38];
    v34 = a2[39];
    v35 = a2[40];
    v36 = a2[41];
    v73 = 0;
    v74 = 0xE000000000000000;
    v57 = v30;
    DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v33, v34, v35, v36);
    v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v73, v74, v75);
    v60 = a2;
    v38 = v37;

    *(v32 + 4) = v38;
    *(v32 + 12) = 2080;
    lazy protocol witness table accessor for type TerminalOntologyNode<VoiceMail.VoiceMailNoun> and conformance TerminalOntologyNode<A>(&lazy protocol witness table cache variable for type PromptResult<SimpleConfirmationResponseProvider> and conformance PromptResult<A>, &_s11SiriKitFlow12PromptResultOyAA34SimpleConfirmationResponseProviderVGMd, &_s11SiriKitFlow12PromptResultOyAA34SimpleConfirmationResponseProviderVGMR);
    v39 = dispatch thunk of CustomStringConvertible.description.getter();
    v41 = v40;
    v42 = *(v21 + 8);
    v42(v27, v20);
    v43 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v41, v75);

    *(v32 + 14) = v43;
    _os_log_impl(&dword_0, v29, v57, "%s Received response from confirmation flow: %s", v32, 0x16u);
    swift_arrayDestroy();

    v4 = v59;
  }

  else
  {

    v42 = *(v21 + 8);
    v42(v27, v20);
  }

  v70(v24, v71, v20);
  if ((*(v21 + 88))(v24, v20) != enum case for PromptResult.answered<A>(_:))
  {
    v42(v24, v20);
    return SingleCallResultFlow.state.setter(0);
  }

  (*(v21 + 96))(v24, v20);
  v44 = v64;
  v45 = v67;
  (*(v64 + 32))(v67, v24, v72);
  v46 = v69;
  SimpleConfirmationResponseProvider.confirmationResponse.getter();
  v47 = v65;
  v48 = v68;
  (*(v65 + 104))(v68, enum case for ConfirmationResponse.confirmed(_:), v4);
  __swift_storeEnumTagSinglePayload(v48, 0, 1, v4);
  v49 = *(v63 + 48);
  v50 = v66;
  outlined init with copy of ConfirmationResponse?(v46, v66);
  outlined init with copy of ConfirmationResponse?(v48, &v50[v49]);
  if (__swift_getEnumTagSinglePayload(v50, 1, v4) != 1)
  {
    v51 = v62;
    outlined init with copy of ConfirmationResponse?(v50, v62);
    if (__swift_getEnumTagSinglePayload(&v50[v49], 1, v4) != 1)
    {
      v53 = v61;
      (*(v47 + 32))(v61, &v50[v49], v4);
      _s27PhoneCallFlowDelegatePlugin06Singleb6ResultC0CAC07SiriKitC00C0AAWlTm_0(&lazy protocol witness table cache variable for type ConfirmationResponse and conformance ConfirmationResponse, 255, &type metadata accessor for ConfirmationResponse);
      v54 = dispatch thunk of static Equatable.== infix(_:_:)();
      v55 = *(v47 + 8);
      v55(v53, v4);
      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v68, &_s11SiriKitFlow20ConfirmationResponseOSgMd, &_s11SiriKitFlow20ConfirmationResponseOSgMR);
      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v69, &_s11SiriKitFlow20ConfirmationResponseOSgMd, &_s11SiriKitFlow20ConfirmationResponseOSgMR);
      v55(v51, v4);
      v45 = v67;
      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v50, &_s11SiriKitFlow20ConfirmationResponseOSgMd, &_s11SiriKitFlow20ConfirmationResponseOSgMR);
      if (v54)
      {
        goto LABEL_17;
      }

      goto LABEL_14;
    }

    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v68, &_s11SiriKitFlow20ConfirmationResponseOSgMd, &_s11SiriKitFlow20ConfirmationResponseOSgMR);
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v69, &_s11SiriKitFlow20ConfirmationResponseOSgMd, &_s11SiriKitFlow20ConfirmationResponseOSgMR);
    (*(v47 + 8))(v51, v4);
LABEL_13:
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v50, &_s11SiriKitFlow20ConfirmationResponseOSg_ADtMd, &_s11SiriKitFlow20ConfirmationResponseOSg_ADtMR);
LABEL_14:
    (*(v44 + 8))(v45, v72);
    return SingleCallResultFlow.state.setter(0);
  }

  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v48, &_s11SiriKitFlow20ConfirmationResponseOSgMd, &_s11SiriKitFlow20ConfirmationResponseOSgMR);
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v46, &_s11SiriKitFlow20ConfirmationResponseOSgMd, &_s11SiriKitFlow20ConfirmationResponseOSgMR);
  if (__swift_getEnumTagSinglePayload(&v50[v49], 1, v4) != 1)
  {
    goto LABEL_13;
  }

  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v50, &_s11SiriKitFlow20ConfirmationResponseOSgMd, &_s11SiriKitFlow20ConfirmationResponseOSgMR);
LABEL_17:
  SingleCallResultFlow.state.setter(2);
  return (*(v44 + 8))(v45, v72);
}

uint64_t SingleCallResultFlow.makeOutput()()
{
  OUTLINED_FUNCTION_15();
  v1[225] = v0;
  v1[219] = v2;
  v3 = type metadata accessor for PhoneSnippetDataModels();
  v1[231] = v3;
  OUTLINED_FUNCTION_21(v3);
  v5 = *(v4 + 64);
  v1[237] = OUTLINED_FUNCTION_45();
  v6 = type metadata accessor for SingleResultCallHistoryModel();
  OUTLINED_FUNCTION_21(v6);
  v8 = *(v7 + 64);
  v1[243] = OUTLINED_FUNCTION_45();
  v9 = type metadata accessor for DialogPhase();
  OUTLINED_FUNCTION_21(v9);
  v11 = *(v10 + 64);
  v1[244] = OUTLINED_FUNCTION_45();
  v12 = type metadata accessor for ResponseMode();
  v1[245] = v12;
  v13 = *(v12 - 8);
  OUTLINED_FUNCTION_24_5();
  v1[246] = v14;
  v16 = *(v15 + 64);
  v1[247] = OUTLINED_FUNCTION_45();
  v17 = type metadata accessor for OutputGenerationManifest();
  v1[248] = v17;
  v18 = *(v17 - 8);
  OUTLINED_FUNCTION_24_5();
  v1[249] = v19;
  v21 = *(v20 + 64);
  v1[250] = OUTLINED_FUNCTION_45();
  v22 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v22, v23, v24);
}

{
  v48 = v0;
  v1 = *(v0 + 1800);
  v2 = v1[11];
  v3 = v1[12];
  __swift_project_boxed_opaque_existential_1(v1 + 8, v2);
  if (!(*(v3 + 112))(v2, v3))
  {
    goto LABEL_5;
  }

  v4 = *(v0 + 1976);
  v5 = *(v0 + 1968);
  v6 = *(v0 + 1960);
  CurrentRequest.responseMode.getter();

  v7 = ResponseMode.isVoiceMode()();
  (*(v5 + 8))(v4, v6);
  if (!v7)
  {
    goto LABEL_5;
  }

  v8 = *(v0 + 1800);
  if (SingleCallResultFlow.requiresCallBackOffer.getter())
  {
    v9 = *(v0 + 1800);
    v10 = 1;
  }

  else
  {
LABEL_5:
    v10 = *(*(v0 + 1800) + 56);
  }

  *(v0 + 2104) = v10;

  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for DialogExecutionResult, DialogExecutionResult_ptr);
  swift_asyncLet_begin();
  if (v10)
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2();
    }

    v11 = *(v0 + 1800);
    v12 = type metadata accessor for Logger();
    __swift_project_value_buffer(v12, static Logger.siriPhone);
    OUTLINED_FUNCTION_19_7();

    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = *(v0 + 1800);
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v45 = v17;
      v46 = 0;
      *v16 = 136315138;
      v18 = OUTLINED_FUNCTION_20_43();
      v47 = v19;
      DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v18, v20, v21, v22);
      v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v46, v47, &v45);

      *(v16 + 4) = v23;
      _os_log_impl(&dword_0, v13, v14, "%s Read single call record + prompt", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v17);

      OUTLINED_FUNCTION_14_0();
    }

    v24 = *(v0 + 1800);

    swift_asyncLet_begin();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v25 = swift_allocObject();
    *(v0 + 2008) = v25;
    *(v25 + 16) = xmmword_427BB0;
    v26 = OUTLINED_FUNCTION_8_71();
    v29 = v0 + 1616;
  }

  else
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2();
    }

    v30 = *(v0 + 1800);
    v31 = type metadata accessor for Logger();
    __swift_project_value_buffer(v31, static Logger.siriPhone);

    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = *(v0 + 1800);
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v45 = v36;
      v46 = 0;
      *v35 = 136315138;
      v37 = OUTLINED_FUNCTION_20_43();
      v47 = v38;
      DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v37, v39, v40, v41);
      v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v46, v47, &v45);

      *(v35 + 4) = v42;
      _os_log_impl(&dword_0, v32, v33, "%s Read single call record", v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v36);
      OUTLINED_FUNCTION_14_0();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v43 = swift_allocObject();
    *(v0 + 2032) = v43;
    *(v43 + 16) = xmmword_426260;
    v26 = OUTLINED_FUNCTION_8_71();
    v29 = v0 + 1296;
  }

  return _swift_asyncLet_get_throwing(v26, v27, v28, v29);
}

{
  *(v1 + 2016) = v0;
  if (v0)
  {
    return OUTLINED_FUNCTION_0_1(SingleCallResultFlow.makeOutput());
  }

  else
  {
    return OUTLINED_FUNCTION_0_1(SingleCallResultFlow.makeOutput());
  }
}

{
  OUTLINED_FUNCTION_15();
  v1 = *(v0 + 1656);
  *(*(v0 + 2008) + 32) = v1;
  v2 = v1;
  v3 = OUTLINED_FUNCTION_12_60();

  return _swift_asyncLet_get_throwing(v3, v4, v5, v0 + 1760);
}

{
  *(v1 + 2024) = v0;
  if (v0)
  {
    return OUTLINED_FUNCTION_0_1(SingleCallResultFlow.makeOutput());
  }

  else
  {
    return OUTLINED_FUNCTION_0_1(SingleCallResultFlow.makeOutput());
  }
}

{
  OUTLINED_FUNCTION_27();
  v1 = v0[250];
  v2 = v0[244];
  v3 = v0[225];
  v4 = v0[213];
  *(v0[251] + 40) = v4;
  v5 = v4;
  static DialogPhase.confirmation.getter();
  OUTLINED_FUNCTION_31_28();
  v6 = OUTLINED_FUNCTION_12_60();

  return _swift_asyncLet_finish(v6, v7, v8, v0 + 238);
}

{
  return OUTLINED_FUNCTION_0_1(SingleCallResultFlow.makeOutput());
}

{
  OUTLINED_FUNCTION_23_0();
  v1 = v0[225];
  v0[258] = v0[251];
  v0[257] = v1;
  v0[256] = &async function pointer to partial apply for implicit closure #6 in SingleCallResultFlow.makeOutput();
  v2 = v1[11];
  v3 = v1[12];
  OUTLINED_FUNCTION_19_38(v1 + 8);
  v4 = OUTLINED_FUNCTION_7_1();
  v5(v4);
  v6 = v0[181];
  __swift_project_boxed_opaque_existential_1(v0 + 177, v0[180]);
  OUTLINED_FUNCTION_7_1();
  v7 = dispatch thunk of DeviceState.isCarPlay.getter();
  __swift_destroy_boxed_opaque_existential_1(v0 + 177);
  if (v7)
  {
    v8 = v0[225];
    v9 = v8[27];
    __swift_project_boxed_opaque_existential_1(v8 + 23, v8[26]);
    v10 = async function pointer to dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)[1];
    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    v0[259] = v11;
    *v11 = v12;
    v13 = OUTLINED_FUNCTION_6_85(v11);

    return dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)(v13, v14, v15, v16, v17);
  }

  else
  {
    v18 = v0[225];
    v19 = v18[4];
    v20 = v18[11];
    v21 = v18[12];
    OUTLINED_FUNCTION_19_38(v18 + 8);
    v22 = OUTLINED_FUNCTION_7_1();
    v23(v22);
    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    v0[260] = v24;
    *v24 = v25;
    OUTLINED_FUNCTION_7_73(v24);

    return static SearchCallHistoryHelper.generateSingleResultCallHistoryModel(item:searchCallHistorySharedGlobals:deviceState:)();
  }
}

{
  *(v1 + 2040) = v0;
  if (v0)
  {
    return OUTLINED_FUNCTION_0_1(SingleCallResultFlow.makeOutput());
  }

  else
  {
    return OUTLINED_FUNCTION_0_1(SingleCallResultFlow.makeOutput());
  }
}

{
  OUTLINED_FUNCTION_23_0();
  v1 = *(v0 + 2000);
  v2 = *(v0 + 1952);
  v3 = *(v0 + 1656);
  *(*(v0 + 2032) + 32) = v3;
  v4 = v3;
  static DialogPhase.completion.getter();
  *(swift_task_alloc() + 16) = 0u;
  OUTLINED_FUNCTION_31_28();

  *(v0 + 2064) = *(v0 + 2032);
  *(v0 + 2048) = 0u;
  v5 = *(v0 + 1800);
  v6 = v5[11];
  v7 = v5[12];
  OUTLINED_FUNCTION_19_38(v5 + 8);
  v8 = OUTLINED_FUNCTION_7_1();
  v9(v8);
  v10 = *(v0 + 1448);
  __swift_project_boxed_opaque_existential_1((v0 + 1416), *(v0 + 1440));
  OUTLINED_FUNCTION_7_1();
  LOBYTE(v1) = dispatch thunk of DeviceState.isCarPlay.getter();
  __swift_destroy_boxed_opaque_existential_1((v0 + 1416));
  if (v1)
  {
    v11 = *(v0 + 1800);
    v12 = v11[27];
    __swift_project_boxed_opaque_existential_1(v11 + 23, v11[26]);
    v13 = async function pointer to dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)[1];
    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    *(v0 + 2072) = v14;
    *v14 = v15;
    v16 = OUTLINED_FUNCTION_6_85(v14);

    return dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)(v16, v17, v18, v19, v20);
  }

  else
  {
    v21 = *(v0 + 1800);
    v22 = v21[4];
    v23 = v21[11];
    v24 = v21[12];
    OUTLINED_FUNCTION_19_38(v21 + 8);
    v25 = OUTLINED_FUNCTION_7_1();
    v26(v25);
    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    *(v0 + 2080) = v27;
    *v27 = v28;
    OUTLINED_FUNCTION_7_73(v27);

    return static SearchCallHistoryHelper.generateSingleResultCallHistoryModel(item:searchCallHistorySharedGlobals:deviceState:)();
  }
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  v2 = *(v1 + 2072);
  v3 = *(v1 + 2064);
  v4 = *v0;
  OUTLINED_FUNCTION_4_2();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v6, v7, v8);
}

{
  OUTLINED_FUNCTION_15();
  outlined init with take of SPHConversation((v0 + 1336), *(v0 + 1752));
  v1 = OUTLINED_FUNCTION_8_71();

  return _swift_asyncLet_finish(v1, v2, v3, v0 + 1536);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  v3 = v2;
  OUTLINED_FUNCTION_6();
  *v4 = v3;
  v6 = *(v5 + 2080);
  v7 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v8 = v7;
  v3[261] = v0;

  __swift_destroy_boxed_opaque_existential_1(v3 + 187);
  if (v0)
  {
    v9 = v3[258];

    v10 = SingleCallResultFlow.makeOutput();
  }

  else
  {
    v10 = SingleCallResultFlow.makeOutput();
  }

  return _swift_task_switch(v10, 0, 0);
}

{
  OUTLINED_FUNCTION_23_0();
  v1 = v0[250];
  v2 = v0[243];
  v3 = v0[237];
  v4 = v0[231];
  v5 = v0[225];
  outlined init with copy of SingleResultCallHistoryModel(v2, v3, type metadata accessor for SingleResultCallHistoryModel);
  swift_storeEnumTagMultiPayload();
  v7 = *v2;
  v6 = v2[1];

  OutputGenerationManifest.responseViewId.setter();
  v8 = v5[26];
  v9 = v5[27];
  __swift_project_boxed_opaque_existential_1(v5 + 23, v8);
  v0[200] = v4;
  v0[201] = _s27PhoneCallFlowDelegatePlugin06Singleb6ResultC0CAC07SiriKitC00C0AAWlTm_0(&lazy protocol witness table cache variable for type PhoneSnippetDataModels and conformance PhoneSnippetDataModels, 255, type metadata accessor for PhoneSnippetDataModels);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 197);
  outlined init with copy of SingleResultCallHistoryModel(v3, boxed_opaque_existential_1, type metadata accessor for PhoneSnippetDataModels);
  v11 = async function pointer to dispatch thunk of ResponseGenerating.makeResponseOutput(resultModel:dialog:outputGenerationManifest:)[1];
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[262] = v12;
  *v12 = v13;
  v12[1] = SingleCallResultFlow.makeOutput();
  v14 = v0[258];
  v15 = v0[250];

  return dispatch thunk of ResponseGenerating.makeResponseOutput(resultModel:dialog:outputGenerationManifest:)(v0 + 167, v0 + 197, v14, v15, v8, v9);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  v2 = v1;
  OUTLINED_FUNCTION_6();
  *v3 = v2;
  v5 = *(v4 + 2096);
  v6 = *(v4 + 2064);
  v7 = *v0;
  OUTLINED_FUNCTION_4_2();
  *v8 = v7;

  __swift_destroy_boxed_opaque_existential_1((v2 + 1576));
  v9 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v9, v10, v11);
}

{
  OUTLINED_FUNCTION_15();
  v1 = *(v0 + 1944);
  _s27PhoneCallFlowDelegatePlugin0A17SnippetDataModelsOWOhTm_0(*(v0 + 1896), type metadata accessor for PhoneSnippetDataModels);
  _s27PhoneCallFlowDelegatePlugin0A17SnippetDataModelsOWOhTm_0(v1, type metadata accessor for SingleResultCallHistoryModel);
  outlined init with take of SPHConversation((v0 + 1336), *(v0 + 1752));
  v2 = OUTLINED_FUNCTION_8_71();

  return _swift_asyncLet_finish(v2, v3, v4, v0 + 1536);
}

{
  return OUTLINED_FUNCTION_0_1(SingleCallResultFlow.makeOutput());
}

{
  OUTLINED_FUNCTION_31();
  v1 = *(v0 + 2056);
  v2 = *(v0 + 2048);
  v3 = *(v0 + 2000);
  v4 = *(v0 + 1992);
  v5 = *(v0 + 1984);
  OUTLINED_FUNCTION_15_54();
  v6 = *(v0 + 1800);
  (*(v7 + 8))(v3);

  _sxs5Error_pRi_zRi0_zlySo21DialogExecutionResultCIsegHrzo_SgWOe(v2);

  v8 = *(v0 + 8);
  v9 = *(v0 + 2104);

  return v8(v9);
}

{
  OUTLINED_FUNCTION_15();
  *(*(v0 + 2008) + 16) = 0;

  v1 = OUTLINED_FUNCTION_12_60();

  return _swift_asyncLet_finish(v1, v2, v3, v0 + 1664);
}

{
  return OUTLINED_FUNCTION_0_1(SingleCallResultFlow.makeOutput());
}

{
  return _swift_asyncLet_finish(v0 + 16, v0 + 1656, SingleCallResultFlow.makeOutput(), v0 + 1712);
}

{
  return OUTLINED_FUNCTION_0_1(SingleCallResultFlow.makeOutput());
}

{
  OUTLINED_FUNCTION_31();
  v1 = v0[252];
  v2 = v0[225];
  v3 = v0[250];
  OUTLINED_FUNCTION_15_54();

  OUTLINED_FUNCTION_17_47();

  v4 = OUTLINED_FUNCTION_11_61();

  return v5(v4);
}

{
  OUTLINED_FUNCTION_15();
  v1 = *(v0 + 2008);

  *(v1 + 16) = 0;

  v2 = OUTLINED_FUNCTION_12_60();

  return _swift_asyncLet_finish(v2, v3, v4, v0 + 1808);
}

{
  return OUTLINED_FUNCTION_0_1(SingleCallResultFlow.makeOutput());
}

{
  return _swift_asyncLet_finish(v0 + 16, v0 + 1656, SingleCallResultFlow.makeOutput(), v0 + 1856);
}

{
  return OUTLINED_FUNCTION_0_1(SingleCallResultFlow.makeOutput());
}

{
  OUTLINED_FUNCTION_31();
  v1 = v0[253];
  v2 = v0[225];
  v3 = v0[250];
  OUTLINED_FUNCTION_15_54();

  OUTLINED_FUNCTION_17_47();

  v4 = OUTLINED_FUNCTION_11_61();

  return v5(v4);
}

{
  OUTLINED_FUNCTION_15();
  *(*(v0 + 2032) + 16) = 0;

  v1 = OUTLINED_FUNCTION_8_71();

  return _swift_asyncLet_finish(v1, v2, v3, v0 + 1376);
}

{
  return OUTLINED_FUNCTION_0_1(SingleCallResultFlow.makeOutput());
}

{
  OUTLINED_FUNCTION_23_0();
  v1 = v0[255];
  v2 = v0[250];
  v3 = v0[247];
  v4 = v0[244];
  v5 = v0[243];
  v6 = v0[237];
  v7 = v0[225];

  _sxs5Error_pRi_zRi0_zlySo21DialogExecutionResultCIsegHrzo_SgWOe(0);

  v8 = OUTLINED_FUNCTION_11_61();

  return v9(v8);
}

{
  return _swift_asyncLet_finish(v0 + 16, v0 + 1656, SingleCallResultFlow.makeOutput(), v0 + 1456);
}

{
  return OUTLINED_FUNCTION_0_1(SingleCallResultFlow.makeOutput());
}

{
  OUTLINED_FUNCTION_31();
  (*(v0[249] + 8))(v0[250], v0[248]);
  v1 = v0[261];
  v2 = v0[257];
  v3 = v0[256];
  v4 = v0[250];
  v5 = v0[247];
  v6 = v0[244];
  v7 = v0[243];
  v8 = v0[237];
  v9 = v0[225];

  _sxs5Error_pRi_zRi0_zlySo21DialogExecutionResultCIsegHrzo_SgWOe(v3);

  v10 = OUTLINED_FUNCTION_11_61();

  return v11(v10);
}

uint64_t implicit closure #4 in SingleCallResultFlow.makeOutput()(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(implicit closure #4 in SingleCallResultFlow.makeOutput(), 0, 0);
}

uint64_t implicit closure #4 in SingleCallResultFlow.makeOutput()()
{
  OUTLINED_FUNCTION_31();
  v1 = *(v0 + 24);
  v2 = v1[36];
  v3 = v1[5];
  v4 = v1[6];
  v5 = v1[4];
  INSearchCallHistoryIntent.isSingleDateRequest.getter();
  v7 = v6;
  v8 = INSearchCallHistoryIntent.isTimeRangeRequest.getter();
  v9 = *(*v2 + class metadata base offset for SearchCallHistoryCATsSimple + 400);
  OUTLINED_FUNCTION_24_5();
  v15 = (v10 + *v10);
  v12 = *(v11 + 4);
  v13 = swift_task_alloc();
  *(v0 + 32) = v13;
  *v13 = v0;
  v13[1] = implicit closure #4 in SingleCallResultFlow.makeOutput();

  return (v15)(v5, v4, v7 & 1, v8 & 1);
}

{
  OUTLINED_FUNCTION_27();
  v3 = v2;
  OUTLINED_FUNCTION_28();
  v5 = v4;
  OUTLINED_FUNCTION_6();
  *v6 = v5;
  v8 = *(v7 + 32);
  v9 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v10 = v9;

  if (v0)
  {
    v11 = *(v9 + 8);

    return v11();
  }

  else
  {
    *(v5 + 40) = v3;
    v13 = OUTLINED_FUNCTION_9_2();

    return _swift_task_switch(v13, v14, v15);
  }
}

uint64_t implicit closure #6 in SingleCallResultFlow.makeOutput()(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(implicit closure #6 in SingleCallResultFlow.makeOutput(), 0, 0);
}

uint64_t implicit closure #6 in SingleCallResultFlow.makeOutput()()
{
  OUTLINED_FUNCTION_27();
  v1 = *(**(*(v0 + 24) + 288) + class metadata base offset for SearchCallHistoryCATsSimple + 160);
  OUTLINED_FUNCTION_24_5();
  v7 = (v2 + *v2);
  v4 = *(v3 + 4);
  v5 = swift_task_alloc();
  *(v0 + 32) = v5;
  *v5 = v0;
  v5[1] = implicit closure #6 in SingleCallResultFlow.makeOutput();

  return v7();
}

{
  OUTLINED_FUNCTION_27();
  v3 = v2;
  OUTLINED_FUNCTION_28();
  v5 = v4;
  OUTLINED_FUNCTION_6();
  *v6 = v5;
  v8 = *(v7 + 32);
  v9 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v10 = v9;

  if (v0)
  {
    v11 = *(v9 + 8);

    return v11();
  }

  else
  {
    *(v5 + 40) = v3;
    v13 = OUTLINED_FUNCTION_9_2();

    return _swift_task_switch(v13, v14, v15);
  }
}

uint64_t closure #1 in SingleCallResultFlow.makeOutput()(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v9[-v5];
  OutputGenerationManifest.canUseServerTTS.setter();
  OutputGenerationManifest.listenAfterSpeaking.setter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin08IncomingB17NLContextProviderCySo010INIdentifyF20CallerIntentResponseCGMd, &_s27PhoneCallFlowDelegatePlugin08IncomingB17NLContextProviderCySo010INIdentifyF20CallerIntentResponseCGMR);
  swift_initStackObject();
  specialized IncomingCallNLContextProvider.makeOfferFollowUpIntentContext(followUpOfferType:isAnnouncement:)(3, 0, v6);
  OutputGenerationManifest.nlContextUpdate.setter();
  v7 = *(a2 + 56);
  return OutputGenerationManifest.printSupportingDialogInDisplayModes.setter();
}

void *SingleCallResultFlow.makeFollowUpAction()()
{
  v1 = v0;
  v2 = type metadata accessor for PhoneError();
  v3 = OUTLINED_FUNCTION_23_1(v2);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = (&v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = objc_allocWithZone(INCallRecordFilter);
  v9 = @nonobjc INCallRecordFilter.init(participants:callTypes:callCapability:)(0, 0, 0);
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INStartCallIntent, INStartCallIntent_ptr);
  v10 = *(v1 + 24);
  v11 = v9;
  v12 = v10;
  v13 = INStartCallIntent.init(callRecordFilter:callRecordToCallBack:audioRoute:destinationType:preferredCallProvider:contacts:ttyType:callCapability:isGroupCall:callGroups:)(v9, v10, 0, 5, 0, 0, 0, 0, 0, 0);
  INIntent.setMetaData(app:previousIntent:sharedGlobals:)(*(v1 + 16), *(v1 + 40), (v1 + 64));
  static PhoneCallFlowFactory.makeRCHFlow(app:intent:sharedGlobals:)();
  if (v14)
  {
    v15 = v14;
  }

  else
  {
    *v7 = 0xD000000000000014;
    v7[1] = 0x8000000000447C40;
    v7[2] = 0xD00000000000001FLL;
    v7[3] = 0x80000000004617C0;
    swift_storeEnumTagMultiPayload();
    _s27PhoneCallFlowDelegatePlugin06Singleb6ResultC0CAC07SiriKitC00C0AAWlTm_0(&lazy protocol witness table cache variable for type PhoneError and conformance PhoneError, 255, type metadata accessor for PhoneError);
    swift_allocError();
    v15 = v7;
    PhoneError.logged()(v16);
    _s27PhoneCallFlowDelegatePlugin0A17SnippetDataModelsOWOhTm_0(v7, type metadata accessor for PhoneError);
    swift_willThrow();
  }

  return v15;
}

uint64_t SingleCallResultFlow.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  v3 = *(v0 + 48);

  __swift_destroy_boxed_opaque_existential_1((v0 + 64));
  outlined destroy of SearchCallHistorySharedGlobals(v0 + 104);
  v4 = *(v0 + 312);
  v5 = *(v0 + 328);

  outlined consume of SingleCallResultFlow.State(*(v0 + 336));
  return v0;
}

uint64_t SingleCallResultFlow.__deallocating_deinit()
{
  SingleCallResultFlow.deinit();

  return swift_deallocClassInstance();
}

uint64_t protocol witness for Flow.execute() in conformance SingleCallResultFlow(uint64_t a1)
{
  v4 = *(**v1 + 224);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = closure #2 in ActionableCallControlFlow.execute();

  return v8(a1);
}

uint64_t protocol witness for Flow.exitValue.getter in conformance SingleCallResultFlow(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for SingleCallResultFlow();

  return Flow<>.exitValue.getter(v3, a2);
}

id @nonobjc INCallRecordFilter.init(participants:callTypes:callCapability:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INPerson, INPerson_ptr);
    v7.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v7.super.isa = 0;
  }

  v8 = [v4 initWithParticipants:v7.super.isa callTypes:a2 callCapability:a3];

  return v8;
}

uint64_t outlined copy of SingleCallResultFlow.State(uint64_t result)
{
  if ((result - 1) >= 2)
  {
    return swift_errorRetain();
  }

  return result;
}

uint64_t outlined consume of SingleCallResultFlow.State(uint64_t result)
{
  if ((result - 1) >= 2)
  {
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_27PhoneCallFlowDelegatePlugin06Singleb6ResultC0C5StateO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t getEnumTagSinglePayload for SingleCallResultFlow.State(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 8))
  {
    return (*a1 + 2147483645);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  v5 = v4 + 1;
  v6 = v4 - 1;
  if (v5 >= 3)
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

void *destructiveInjectEnumTag for SingleCallResultFlow.State(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    a2 -= 0x7FFFFFFF;
    goto LABEL_5;
  }

  if (a2)
  {
LABEL_5:
    *result = a2;
  }

  return result;
}

uint64_t partial apply for implicit closure #4 in SingleCallResultFlow.makeOutput()()
{
  OUTLINED_FUNCTION_15();
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 16) = v1;
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_10_5(v1);

  return implicit closure #4 in SingleCallResultFlow.makeOutput()(v3, v4);
}

uint64_t outlined init with copy of SingleResultCallHistoryModel(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_23_1(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t partial apply for implicit closure #6 in SingleCallResultFlow.makeOutput()()
{
  OUTLINED_FUNCTION_15();
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 16) = v1;
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_10_5(v1);

  return implicit closure #6 in SingleCallResultFlow.makeOutput()(v3, v4);
}

uint64_t _s27PhoneCallFlowDelegatePlugin0A17SnippetDataModelsOWOhTm_0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_23_1(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t partial apply for closure #1 in SingleCallResultFlow.executeRead()()
{
  OUTLINED_FUNCTION_15();
  v3 = v2;
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v1 + 16) = v4;
  *v4 = v5;
  v4[1] = closure #1 in ActionableCallControlFlow.execute();

  return closure #1 in SingleCallResultFlow.executeRead()(v3, v0 + 16);
}

uint64_t _s27PhoneCallFlowDelegatePlugin06Singleb6ResultC0CAC07SiriKitC00C0AAWlTm_0(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_31_28()
{

  return OutputGenerationManifest.init(dialogPhase:_:)();
}

uint64_t SingleResultCallHistoryModel.init(displayName:displayCallDetail:displayDateTime:contactIds:searchCallHistoryBinaryButtonModel:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  *a9 = 0xD000000000000017;
  a9[1] = 0x8000000000456D10;
  a9[2] = a1;
  a9[3] = a2;
  a9[4] = a3;
  a9[5] = a4;
  a9[6] = a5;
  a9[7] = a6;
  a9[8] = a7;
  v10 = a9 + *(type metadata accessor for SingleResultCallHistoryModel() + 36);

  return outlined init with take of SearchCallHistoryBinaryButtonModel?(a8, v10);
}

uint64_t type metadata accessor for SingleResultCallHistoryModel()
{
  result = type metadata singleton initialization cache for SingleResultCallHistoryModel;
  if (!type metadata singleton initialization cache for SingleResultCallHistoryModel)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SingleResultCallHistoryModel.searchCallHistoryBinaryButtonModel.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for SingleResultCallHistoryModel() + 36);

  return outlined init with copy of SearchCallHistoryBinaryButtonModel?(v3, a1);
}

uint64_t outlined init with copy of SearchCallHistoryBinaryButtonModel?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin06SearchB24HistoryBinaryButtonModelVSgMd, &_s27PhoneCallFlowDelegatePlugin06SearchB24HistoryBinaryButtonModelVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t SingleResultCallHistoryModel.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65736E6F70736572 && a2 == 0xEE00644977656956;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x4E79616C70736964 && a2 == 0xEB00000000656D61;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000011 && 0x8000000000453940 == a2;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x4479616C70736964 && a2 == 0xEF656D6954657461;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x49746361746E6F63 && a2 == 0xEA00000000007364;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0xD000000000000022 && 0x80000000004617E0 == a2)
          {

            return 5;
          }

          else
          {
            v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v11)
            {
              return 5;
            }

            else
            {
              return 6;
            }
          }
        }
      }
    }
  }
}

unint64_t SingleResultCallHistoryModel.CodingKeys.stringValue.getter(char a1)
{
  result = 0x65736E6F70736572;
  switch(a1)
  {
    case 1:
      result = 0x4E79616C70736964;
      break;
    case 2:
      result = 0xD000000000000011;
      break;
    case 3:
      result = 0x4479616C70736964;
      break;
    case 4:
      result = 0x49746361746E6F63;
      break;
    case 5:
      result = 0xD000000000000022;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance SingleResultCallHistoryModel.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = SingleResultCallHistoryModel.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SingleResultCallHistoryModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SingleResultCallHistoryModel.CodingKeys and conformance SingleResultCallHistoryModel.CodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SingleResultCallHistoryModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SingleResultCallHistoryModel.CodingKeys and conformance SingleResultCallHistoryModel.CodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t SingleResultCallHistoryModel.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy27PhoneCallFlowDelegatePlugin012SingleResultE12HistoryModelV10CodingKeys33_4595C3C6545ECB01545F8C519445C6A2LLOGMd, &_ss22KeyedEncodingContainerVy27PhoneCallFlowDelegatePlugin012SingleResultE12HistoryModelV10CodingKeys33_4595C3C6545ECB01545F8C519445C6A2LLOGMR);
  v6 = OUTLINED_FUNCTION_7(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6);
  v12 = &v26[-v11];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type SingleResultCallHistoryModel.CodingKeys and conformance SingleResultCallHistoryModel.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = *v3;
  v15 = v3[1];
  v31 = 0;
  OUTLINED_FUNCTION_5_3();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v16 = v3[2];
    v17 = v3[3];
    v30 = 1;
    OUTLINED_FUNCTION_5_3();
    KeyedEncodingContainer.encode(_:forKey:)();
    v18 = v3[4];
    v19 = v3[5];
    v29 = 2;
    OUTLINED_FUNCTION_5_3();
    KeyedEncodingContainer.encode(_:forKey:)();
    v20 = v3[6];
    v21 = v3[7];
    v28 = 3;
    OUTLINED_FUNCTION_5_3();
    KeyedEncodingContainer.encode(_:forKey:)();
    v27 = v3[8];
    v26[15] = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    lazy protocol witness table accessor for type [String] and conformance <A> [A](&lazy protocol witness table cache variable for type [String] and conformance <A> [A]);
    OUTLINED_FUNCTION_5_3();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v22 = *(type metadata accessor for SingleResultCallHistoryModel() + 36);
    v26[14] = 5;
    type metadata accessor for SearchCallHistoryBinaryButtonModel();
    OUTLINED_FUNCTION_0_108();
    lazy protocol witness table accessor for type SearchCallHistoryBinaryButtonModel and conformance SearchCallHistoryBinaryButtonModel(v23, v24);
    OUTLINED_FUNCTION_5_3();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v8 + 8))(v12, v5);
}

unint64_t lazy protocol witness table accessor for type SingleResultCallHistoryModel.CodingKeys and conformance SingleResultCallHistoryModel.CodingKeys()
{
  result = lazy protocol witness table cache variable for type SingleResultCallHistoryModel.CodingKeys and conformance SingleResultCallHistoryModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type SingleResultCallHistoryModel.CodingKeys and conformance SingleResultCallHistoryModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SingleResultCallHistoryModel.CodingKeys and conformance SingleResultCallHistoryModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SingleResultCallHistoryModel.CodingKeys and conformance SingleResultCallHistoryModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type SingleResultCallHistoryModel.CodingKeys and conformance SingleResultCallHistoryModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SingleResultCallHistoryModel.CodingKeys and conformance SingleResultCallHistoryModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SingleResultCallHistoryModel.CodingKeys and conformance SingleResultCallHistoryModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type SingleResultCallHistoryModel.CodingKeys and conformance SingleResultCallHistoryModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SingleResultCallHistoryModel.CodingKeys and conformance SingleResultCallHistoryModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SingleResultCallHistoryModel.CodingKeys and conformance SingleResultCallHistoryModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type SingleResultCallHistoryModel.CodingKeys and conformance SingleResultCallHistoryModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SingleResultCallHistoryModel.CodingKeys and conformance SingleResultCallHistoryModel.CodingKeys);
  }

  return result;
}

uint64_t SingleResultCallHistoryModel.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin06SearchB24HistoryBinaryButtonModelVSgMd, &_s27PhoneCallFlowDelegatePlugin06SearchB24HistoryBinaryButtonModelVSgMR);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v35 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy27PhoneCallFlowDelegatePlugin012SingleResultE12HistoryModelV10CodingKeys33_4595C3C6545ECB01545F8C519445C6A2LLOGMd, &_ss22KeyedDecodingContainerVy27PhoneCallFlowDelegatePlugin012SingleResultE12HistoryModelV10CodingKeys33_4595C3C6545ECB01545F8C519445C6A2LLOGMR);
  v9 = OUTLINED_FUNCTION_7(v8);
  v38 = v10;
  v39 = v9;
  v12 = *(v11 + 64);
  __chkstk_darwin(v9);
  v14 = &v35 - v13;
  v15 = type metadata accessor for SingleResultCallHistoryModel();
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15);
  v18 = (&v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = a1[3];
  v20 = a1[4];
  v41 = a1;
  v21 = __swift_project_boxed_opaque_existential_1(a1, v19);
  lazy protocol witness table accessor for type SingleResultCallHistoryModel.CodingKeys and conformance SingleResultCallHistoryModel.CodingKeys();
  v40 = v14;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v36 = v7;
    v23 = v38;
    v22 = v39;
    v48 = 0;
    *v18 = KeyedDecodingContainer.decode(_:forKey:)();
    v18[1] = v27;
    v47 = 1;
    v18[2] = KeyedDecodingContainer.decode(_:forKey:)();
    v18[3] = v28;
    v46 = 2;
    v18[4] = KeyedDecodingContainer.decode(_:forKey:)();
    v18[5] = v29;
    v45 = 3;
    v18[6] = KeyedDecodingContainer.decode(_:forKey:)();
    v18[7] = v30;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    v44 = 4;
    lazy protocol witness table accessor for type [String] and conformance <A> [A](&lazy protocol witness table cache variable for type [String] and conformance <A> [A]);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v18[8] = v42;
    type metadata accessor for SearchCallHistoryBinaryButtonModel();
    v43 = 5;
    OUTLINED_FUNCTION_0_108();
    lazy protocol witness table accessor for type SearchCallHistoryBinaryButtonModel and conformance SearchCallHistoryBinaryButtonModel(v31, v32);
    v33 = v36;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    (*(v23 + 8))(v40, v22);
    outlined init with take of SearchCallHistoryBinaryButtonModel?(v33, v18 + *(v15 + 36));
    outlined init with copy of SingleResultCallHistoryModel(v18, v37);
    __swift_destroy_boxed_opaque_existential_1(v41);
    return outlined destroy of SingleResultCallHistoryModel(v18);
  }

  OUTLINED_FUNCTION_3_104();
  __swift_destroy_boxed_opaque_existential_1(v41);

  if (!v15)
  {
    if (!v7)
    {
      goto LABEL_5;
    }

LABEL_8:
    v25 = v18[7];

    if (!v21)
    {
      return result;
    }

    goto LABEL_9;
  }

  v24 = v18[5];

  if (v7)
  {
    goto LABEL_8;
  }

LABEL_5:
  if (v21)
  {
LABEL_9:
    v26 = v18[8];
  }

  return result;
}

uint64_t outlined init with copy of SingleResultCallHistoryModel(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SingleResultCallHistoryModel();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of SingleResultCallHistoryModel(uint64_t a1)
{
  v2 = type metadata accessor for SingleResultCallHistoryModel();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t instantiation function for generic protocol witness table for SingleResultCallHistoryModel(uint64_t a1)
{
  result = lazy protocol witness table accessor for type SearchCallHistoryBinaryButtonModel and conformance SearchCallHistoryBinaryButtonModel(&lazy protocol witness table cache variable for type SingleResultCallHistoryModel and conformance SingleResultCallHistoryModel, type metadata accessor for SingleResultCallHistoryModel);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type SearchCallHistoryBinaryButtonModel and conformance SearchCallHistoryBinaryButtonModel(unint64_t *a1, void (*a2)(uint64_t))
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

void type metadata completion function for SingleResultCallHistoryModel()
{
  type metadata accessor for [String]();
  if (v0 <= 0x3F)
  {
    type metadata accessor for SearchCallHistoryBinaryButtonModel?();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata accessor for SearchCallHistoryBinaryButtonModel?()
{
  if (!lazy cache variable for type metadata for SearchCallHistoryBinaryButtonModel?)
  {
    type metadata accessor for SearchCallHistoryBinaryButtonModel();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for SearchCallHistoryBinaryButtonModel?);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for SingleResultCallHistoryModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

uint64_t SingleResultVoicemailModel.init(displayName:displayCallDetail:displayDateTime:callDuration:callDurationInterval:transcript:transcriptTitle:callbackDirectInvocation:repeatDirectInvocation:contactIds:searchCallHistoryBinaryButtonModel:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, __int128 a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17)
{
  *a9 = 0xD000000000000015;
  *(a9 + 8) = 0x8000000000456D30;
  *(a9 + 16) = a1;
  *(a9 + 24) = a2;
  *(a9 + 32) = a3;
  *(a9 + 40) = a4;
  *(a9 + 48) = a5;
  *(a9 + 56) = a6;
  *(a9 + 64) = a7;
  *(a9 + 72) = a8;
  *(a9 + 80) = a10;
  *(a9 + 96) = a11;
  *(a9 + 112) = a12;
  *(a9 + 120) = a13;
  v18 = type metadata accessor for SingleResultVoicemailModel();
  v19 = v18[14];
  type metadata accessor for SAIntentGroupRunSiriKitExecutor();
  v20 = a15;
  CodableAceObject.init(wrappedValue:)();
  *(a9 + 88) = a16;
  v21 = a9 + v18[13];
  CodableAceObject.init(wrappedValue:)();

  v22 = a9 + v18[15];

  return outlined init with take of SearchCallHistoryBinaryButtonModel(a17, v22);
}

uint64_t type metadata accessor for SingleResultVoicemailModel()
{
  result = type metadata singleton initialization cache for SingleResultVoicemailModel;
  if (!type metadata singleton initialization cache for SingleResultVoicemailModel)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t static SingleResultVoicemailModel.resultViewID.getter()
{
  swift_beginAccess();
  v0 = static SingleResultVoicemailModel.resultViewID;

  return v0;
}

uint64_t static SingleResultVoicemailModel.resultViewID.setter(uint64_t a1, char *a2)
{
  swift_beginAccess();
  static SingleResultVoicemailModel.resultViewID = a1;
  off_55DDE8 = a2;
}

uint64_t key path getter for static SingleResultVoicemailModel.resultViewID : SingleResultVoicemailModel.Type@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v2 = off_55DDE8;
  *a1 = static SingleResultVoicemailModel.resultViewID;
  a1[1] = v2;
}

uint64_t key path setter for static SingleResultVoicemailModel.resultViewID : SingleResultVoicemailModel.Type(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  swift_beginAccess();
  static SingleResultVoicemailModel.resultViewID = v2;
  off_55DDE8 = v1;
}

uint64_t SingleResultVoicemailModel.transcript.getter()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);

  return OUTLINED_FUNCTION_19_0();
}

uint64_t SingleResultVoicemailModel.transcript.setter()
{
  OUTLINED_FUNCTION_24_3();
  v3 = *(v1 + 104);

  *(v1 + 96) = v2;
  *(v1 + 104) = v0;
  return result;
}

uint64_t SingleResultVoicemailModel.transcriptTitle.setter()
{
  OUTLINED_FUNCTION_24_3();
  v3 = *(v1 + 120);

  *(v1 + 112) = v2;
  *(v1 + 120) = v0;
  return result;
}

uint64_t SingleResultVoicemailModel.callbackDirectInvocation.getter()
{
  v0 = *(type metadata accessor for SingleResultVoicemailModel() + 52);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
  return CodableAceObject.wrappedValue.getter();
}

uint64_t SingleResultVoicemailModel.callbackDirectInvocation.setter()
{
  v0 = *(type metadata accessor for SingleResultVoicemailModel() + 52);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
  return CodableAceObject.wrappedValue.setter();
}

uint64_t (*SingleResultVoicemailModel.callbackDirectInvocation.modify(void *a1))()
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v3 = *(type metadata accessor for SingleResultVoicemailModel() + 52);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
  v2[4] = CodableAceObject.wrappedValue.modify();
  return EmergencyCountdownModel.sashTitle.modify;
}

uint64_t outlined init with take of SearchCallHistoryBinaryButtonModel(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchCallHistoryBinaryButtonModel();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t SingleResultVoicemailModel.repeatDirectInvocation.getter()
{
  v0 = *(type metadata accessor for SingleResultVoicemailModel() + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
  return CodableAceObject.wrappedValue.getter();
}

uint64_t SingleResultVoicemailModel.repeatDirectInvocation.setter()
{
  v0 = *(type metadata accessor for SingleResultVoicemailModel() + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
  return CodableAceObject.wrappedValue.setter();
}

uint64_t (*SingleResultVoicemailModel.repeatDirectInvocation.modify(void *a1))()
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v3 = *(type metadata accessor for SingleResultVoicemailModel() + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
  v2[4] = CodableAceObject.wrappedValue.modify();
  return EmergencyCountdownModel.callAction.modify;
}

uint64_t SingleResultVoicemailModel.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65736E6F70736572 && a2 == 0xEE00644977656956;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x4E79616C70736964 && a2 == 0xEB00000000656D61;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000011 && 0x8000000000453940 == a2;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x4479616C70736964 && a2 == 0xEF656D6954657461;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x617275446C6C6163 && a2 == 0xEC0000006E6F6974;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000014 && 0x80000000004539D0 == a2;
            if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x49746361746E6F63 && a2 == 0xEA00000000007364;
              if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x697263736E617274 && a2 == 0xEA00000000007470;
                if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x697263736E617274 && a2 == -1196430878757850000;
                  if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0xD000000000000018 && 0x8000000000461810 == a2;
                    if (v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0xD000000000000016 && 0x8000000000461830 == a2;
                      if (v15 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                      {

                        return 10;
                      }

                      else if (a1 == 0xD000000000000022 && 0x80000000004617E0 == a2)
                      {

                        return 11;
                      }

                      else
                      {
                        v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

                        if (v17)
                        {
                          return 11;
                        }

                        else
                        {
                          return 12;
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

unint64_t SingleResultVoicemailModel.CodingKeys.stringValue.getter(char a1)
{
  result = 0x65736E6F70736572;
  switch(a1)
  {
    case 1:
      result = 0x4E79616C70736964;
      break;
    case 2:
      result = 0xD000000000000011;
      break;
    case 3:
      result = 0x4479616C70736964;
      break;
    case 4:
      result = 0x617275446C6C6163;
      break;
    case 5:
      result = 0xD000000000000014;
      break;
    case 6:
      result = 0x49746361746E6F63;
      break;
    case 7:
      result = 0x697263736E617274;
      break;
    case 8:
      result = 0x697263736E617274;
      break;
    case 9:
      result = 0xD000000000000018;
      break;
    case 10:
      result = 0xD000000000000016;
      break;
    case 11:
      result = 0xD000000000000022;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance SingleResultVoicemailModel.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = SingleResultVoicemailModel.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance SingleResultVoicemailModel.CodingKeys@<X0>(_BYTE *a1@<X8>)
{
  result = SingleResultVoicemailModel.CodingKeys.init(intValue:)();
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SingleResultVoicemailModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SingleResultVoicemailModel.CodingKeys and conformance SingleResultVoicemailModel.CodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SingleResultVoicemailModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SingleResultVoicemailModel.CodingKeys and conformance SingleResultVoicemailModel.CodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t SingleResultVoicemailModel.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy27PhoneCallFlowDelegatePlugin26SingleResultVoicemailModelV10CodingKeys33_D2D648467B4F0091782CAD525D95B07CLLOGMd, &_ss22KeyedEncodingContainerVy27PhoneCallFlowDelegatePlugin26SingleResultVoicemailModelV10CodingKeys33_D2D648467B4F0091782CAD525D95B07CLLOGMR);
  v6 = OUTLINED_FUNCTION_7(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6);
  v12 = &v36 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type SingleResultVoicemailModel.CodingKeys and conformance SingleResultVoicemailModel.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = *v3;
  v15 = v3[1];
  LOBYTE(v39) = 0;
  OUTLINED_FUNCTION_35_3();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v2)
  {
    return (*(v8 + 8))(v12, v5);
  }

  v16 = v3[2];
  v17 = v3[3];
  OUTLINED_FUNCTION_4_81(1);
  v18 = v3[4];
  v19 = v3[5];
  OUTLINED_FUNCTION_4_81(2);
  v20 = v3[6];
  v21 = v3[7];
  OUTLINED_FUNCTION_4_81(3);
  v22 = v3[8];
  v23 = v3[9];
  OUTLINED_FUNCTION_4_81(4);
  v24 = v3[10];
  LOBYTE(v39) = 5;
  OUTLINED_FUNCTION_35_3();
  KeyedEncodingContainer.encode(_:forKey:)();
  v39 = v3[11];
  v38 = 6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  lazy protocol witness table accessor for type [String] and conformance <A> [A](&lazy protocol witness table cache variable for type [String] and conformance <A> [A]);
  OUTLINED_FUNCTION_35_3();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  v25 = v3[12];
  v26 = v3[13];
  OUTLINED_FUNCTION_4_81(7);
  v27 = v3[14];
  v28 = v3[15];
  OUTLINED_FUNCTION_4_81(8);
  v37 = v8;
  v29 = type metadata accessor for SingleResultVoicemailModel();
  v30 = v29[13];
  LOBYTE(v39) = 9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
  lazy protocol witness table accessor for type CodableAceObject<SAIntentGroupRunSiriKitExecutor> and conformance CodableAceObject<A>(&lazy protocol witness table cache variable for type CodableAceObject<SAIntentGroupRunSiriKitExecutor> and conformance CodableAceObject<A>);
  OUTLINED_FUNCTION_35_3();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  v31 = v29[14];
  LOBYTE(v39) = 10;
  OUTLINED_FUNCTION_35_3();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  v32 = v29[15];
  LOBYTE(v39) = 11;
  type metadata accessor for SearchCallHistoryBinaryButtonModel();
  OUTLINED_FUNCTION_7_74();
  _s27PhoneCallFlowDelegatePlugin06SearchB24HistoryBinaryButtonModelVACSEAAWlTm_0(v33, v34);
  OUTLINED_FUNCTION_35_3();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v37 + 8))(v12, v5);
}

unint64_t lazy protocol witness table accessor for type SingleResultVoicemailModel.CodingKeys and conformance SingleResultVoicemailModel.CodingKeys()
{
  result = lazy protocol witness table cache variable for type SingleResultVoicemailModel.CodingKeys and conformance SingleResultVoicemailModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type SingleResultVoicemailModel.CodingKeys and conformance SingleResultVoicemailModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SingleResultVoicemailModel.CodingKeys and conformance SingleResultVoicemailModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SingleResultVoicemailModel.CodingKeys and conformance SingleResultVoicemailModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type SingleResultVoicemailModel.CodingKeys and conformance SingleResultVoicemailModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SingleResultVoicemailModel.CodingKeys and conformance SingleResultVoicemailModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SingleResultVoicemailModel.CodingKeys and conformance SingleResultVoicemailModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type SingleResultVoicemailModel.CodingKeys and conformance SingleResultVoicemailModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SingleResultVoicemailModel.CodingKeys and conformance SingleResultVoicemailModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SingleResultVoicemailModel.CodingKeys and conformance SingleResultVoicemailModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type SingleResultVoicemailModel.CodingKeys and conformance SingleResultVoicemailModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SingleResultVoicemailModel.CodingKeys and conformance SingleResultVoicemailModel.CodingKeys);
  }

  return result;
}

uint64_t SingleResultVoicemailModel.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v70 = a2;
  v3 = type metadata accessor for SearchCallHistoryBinaryButtonModel();
  v4 = v3;
  v5 = OUTLINED_FUNCTION_23_1(v3);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
  v10 = OUTLINED_FUNCTION_7(v77);
  v75 = v11;
  v13 = *(v12 + 64);
  __chkstk_darwin(v10);
  v15 = &v69 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v69 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy27PhoneCallFlowDelegatePlugin26SingleResultVoicemailModelV10CodingKeys33_D2D648467B4F0091782CAD525D95B07CLLOGMd, &_ss22KeyedDecodingContainerVy27PhoneCallFlowDelegatePlugin26SingleResultVoicemailModelV10CodingKeys33_D2D648467B4F0091782CAD525D95B07CLLOGMR);
  v71 = OUTLINED_FUNCTION_7(v19);
  v72 = v20;
  v22 = *(v21 + 64);
  __chkstk_darwin(v71);
  v24 = &v69 - v23;
  v76 = type metadata accessor for SingleResultVoicemailModel();
  v25 = OUTLINED_FUNCTION_23_1(v76);
  v27 = *(v26 + 64);
  __chkstk_darwin(v25);
  v78 = (&v69 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  v29 = a1[3];
  v30 = a1[4];
  v74 = a1;
  v31 = __swift_project_boxed_opaque_existential_1(a1, v29);
  lazy protocol witness table accessor for type SingleResultVoicemailModel.CodingKeys and conformance SingleResultVoicemailModel.CodingKeys();
  v73 = v24;
  v32 = v79;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v32)
  {
    v79 = v32;
    v34 = 0;
    v4 = 0;
    LODWORD(v15) = 0;
    LODWORD(v18) = 0;
    OUTLINED_FUNCTION_0_109();
  }

  else
  {
    v30 = v9;
    LOBYTE(v81) = 0;
    v34 = v71;
    v33 = KeyedDecodingContainer.decode(_:forKey:)();
    v44 = v78;
    *v78 = v33;
    v44[1] = v45;
    OUTLINED_FUNCTION_5_85(1);
    v44[2] = KeyedDecodingContainer.decode(_:forKey:)();
    v44[3] = v46;
    OUTLINED_FUNCTION_5_85(2);
    v44[4] = KeyedDecodingContainer.decode(_:forKey:)();
    v44[5] = v47;
    OUTLINED_FUNCTION_5_85(3);
    v44[6] = KeyedDecodingContainer.decode(_:forKey:)();
    v44[7] = v48;
    OUTLINED_FUNCTION_5_85(4);
    v44[8] = KeyedDecodingContainer.decode(_:forKey:)();
    v44[9] = v49;
    OUTLINED_FUNCTION_5_85(5);
    KeyedDecodingContainer.decode(_:forKey:)();
    v44[10] = v50;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    v80 = 6;
    lazy protocol witness table accessor for type [String] and conformance <A> [A](&lazy protocol witness table cache variable for type [String] and conformance <A> [A]);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v44[11] = v81;
    OUTLINED_FUNCTION_5_85(7);
    v44[12] = KeyedDecodingContainer.decode(_:forKey:)();
    v44[13] = v51;
    OUTLINED_FUNCTION_5_85(8);
    v52 = KeyedDecodingContainer.decode(_:forKey:)();
    v79 = 0;
    v44[14] = v52;
    v44[15] = v53;
    LOBYTE(v81) = 9;
    LODWORD(v24) = lazy protocol witness table accessor for type CodableAceObject<SAIntentGroupRunSiriKitExecutor> and conformance CodableAceObject<A>(&lazy protocol witness table cache variable for type CodableAceObject<SAIntentGroupRunSiriKitExecutor> and conformance CodableAceObject<A>);
    v31 = v73;
    v54 = v79;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v79 = v54;
    if (v54)
    {
      v55 = OUTLINED_FUNCTION_8_72();
      v56(v55);
      LODWORD(v72) = 0;
      OUTLINED_FUNCTION_1_113();
      OUTLINED_FUNCTION_12_61();
    }

    else
    {
      v34 = v75 + 32;
      v57 = *(v75 + 32);
      v57(v78 + v76[13], v18, v77);
      LOBYTE(v81) = 10;
      v31 = v73;
      v58 = v79;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v79 = v58;
      if (v58)
      {
        v59 = OUTLINED_FUNCTION_8_72();
        v60(v59);
        OUTLINED_FUNCTION_1_113();
        OUTLINED_FUNCTION_12_61();
        LODWORD(v72) = 1;
      }

      else
      {
        v57(v78 + v76[14], v15, v77);
        LOBYTE(v81) = 11;
        OUTLINED_FUNCTION_7_74();
        _s27PhoneCallFlowDelegatePlugin06SearchB24HistoryBinaryButtonModelVACSEAAWlTm_0(v61, v62);
        v31 = v73;
        v63 = v79;
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        v79 = v63;
        if (!v63)
        {
          v66 = OUTLINED_FUNCTION_8_72();
          v67(v66);
          v68 = v78;
          outlined init with take of SearchCallHistoryBinaryButtonModel(v30, v78 + v76[15]);
          outlined init with copy of SearchCallHistoryBinaryButtonModel(v68, v70, type metadata accessor for SingleResultVoicemailModel);
          __swift_destroy_boxed_opaque_existential_1(v74);
          return outlined destroy of SingleResultVoicemailModel(v68);
        }

        v64 = OUTLINED_FUNCTION_8_72();
        v65(v64);
        OUTLINED_FUNCTION_2_108();
        OUTLINED_FUNCTION_12_61();
        LODWORD(v72) = 1;
        LODWORD(v73) = 1;
      }
    }
  }

  v35 = v78;
  __swift_destroy_boxed_opaque_existential_1(v74);

  if (v34)
  {
    v40 = v35[3];

    if (!v4)
    {
LABEL_6:
      if (!v15)
      {
        goto LABEL_7;
      }

      goto LABEL_21;
    }
  }

  else if (!v4)
  {
    goto LABEL_6;
  }

  v41 = v35[5];

  if (!v15)
  {
LABEL_7:
    if (!v18)
    {
      goto LABEL_8;
    }

LABEL_22:
    v43 = v35[9];

    if (!v24)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_21:
  v42 = v35[7];

  if (v18)
  {
    goto LABEL_22;
  }

LABEL_8:
  if (v24)
  {
LABEL_9:
    v37 = v35[11];
  }

LABEL_10:
  if (v30)
  {
    v38 = v35[13];
  }

  if (v31)
  {
    v39 = v35[15];
  }

  if (v72)
  {
    result = (*(v75 + 8))(v35 + v76[13], v77);
  }

  if (v73)
  {
    return (*(v75 + 8))(v35 + v76[14], v77);
  }

  return result;
}

uint64_t outlined init with copy of SearchCallHistoryBinaryButtonModel(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_23_1(v4);
  v6 = *(v5 + 16);
  v7 = OUTLINED_FUNCTION_19_0();
  v8(v7);
  return a2;
}

uint64_t outlined destroy of SingleResultVoicemailModel(uint64_t a1)
{
  v2 = type metadata accessor for SingleResultVoicemailModel();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

PhoneCallFlowDelegatePlugin::VoicemailUpdateAction_optional __swiftcall VoicemailUpdateAction.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of VoicemailUpdateAction.init(rawValue:), v2);

  if (v3 == 1)
  {
    v4.value = PhoneCallFlowDelegatePlugin_VoicemailUpdateAction_repeatVoicemail;
  }

  else
  {
    v4.value = PhoneCallFlowDelegatePlugin_VoicemailUpdateAction_unknownDefault;
  }

  if (v3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t VoicemailUpdateAction.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0x6F56746165706572;
  }

  else
  {
    return 0xD000000000000015;
  }
}

uint64_t instantiation function for generic protocol witness table for SingleResultVoicemailModel(uint64_t a1)
{
  result = _s27PhoneCallFlowDelegatePlugin06SearchB24HistoryBinaryButtonModelVACSEAAWlTm_0(&lazy protocol witness table cache variable for type SingleResultVoicemailModel and conformance SingleResultVoicemailModel, type metadata accessor for SingleResultVoicemailModel);
  *(a1 + 8) = result;
  return result;
}

uint64_t _s27PhoneCallFlowDelegatePlugin06SearchB24HistoryBinaryButtonModelVACSEAAWlTm_0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance VoicemailUpdateAction(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  return specialized == infix<A>(_:_:)();
}

PhoneCallFlowDelegatePlugin::VoicemailUpdateAction_optional protocol witness for RawRepresentable.init(rawValue:) in conformance VoicemailUpdateAction@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::VoicemailUpdateAction_optional *a2@<X8>)
{
  result.value = VoicemailUpdateAction.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance VoicemailUpdateAction@<X0>(uint64_t *a1@<X8>)
{
  result = VoicemailUpdateAction.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t protocol witness for UpdateResponseCommand.init(_:) in conformance VoicemailUpdateAction()
{
  lazy protocol witness table accessor for type VoicemailUpdateAction and conformance VoicemailUpdateAction();
  lazy protocol witness table accessor for type VoicemailUpdateAction and conformance VoicemailUpdateAction();
  return UpdateResponseCommand<>.init(_:)();
}

uint64_t protocol witness for UpdateResponseCommand.serializeData() in conformance VoicemailUpdateAction()
{
  lazy protocol witness table accessor for type VoicemailUpdateAction and conformance VoicemailUpdateAction();
  lazy protocol witness table accessor for type VoicemailUpdateAction and conformance VoicemailUpdateAction();
  return UpdateResponseCommand<>.serializeData()();
}

void type metadata completion function for SingleResultVoicemailModel()
{
  type metadata accessor for [String]();
  if (v0 <= 0x3F)
  {
    type metadata accessor for CodableAceObject<SAIntentGroupRunSiriKitExecutor>();
    if (v1 <= 0x3F)
    {
      type metadata accessor for SearchCallHistoryBinaryButtonModel();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

_BYTE *storeEnumTagSinglePayload for VoicemailUpdateAction(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SingleResultVoicemailModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 11;
        }

        break;
    }
  }

  return result;
}

void SingleVoicemailModel.init(displayName:displayCallDetail:displayDateTime:callDuration:unseen:openVoicemailRSKE:openContactRSKE:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char a10, void *a11)
{
  *a9 = 0x6F56656C676E6953;
  *(a9 + 8) = 0xEF6C69616D656369;
  *(a9 + 16) = a1;
  *(a9 + 24) = a2;
  *(a9 + 32) = a3;
  *(a9 + 40) = a4;
  *(a9 + 48) = a5;
  *(a9 + 56) = a6;
  v14 = type metadata accessor for SingleVoicemailModel();
  v15 = *(v14 + 40);
  type metadata accessor for SAIntentGroupRunSiriKitExecutor();
  v17 = a11;
  CodableAceObject.init(wrappedValue:)();
  *(a9 + 64) = a7;
  *(a9 + 72) = a8;
  *(a9 + 80) = a10;
  v16 = a9 + *(v14 + 44);
  CodableAceObject.init(wrappedValue:)();
}

uint64_t type metadata accessor for SingleVoicemailModel()
{
  result = type metadata singleton initialization cache for SingleVoicemailModel;
  if (!type metadata singleton initialization cache for SingleVoicemailModel)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SingleVoicemailModel.openVoicemailRSKE.getter()
{
  v0 = *(type metadata accessor for SingleVoicemailModel() + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
  return CodableAceObject.wrappedValue.getter();
}

uint64_t SingleVoicemailModel.openVoicemailRSKE.setter()
{
  v0 = *(type metadata accessor for SingleVoicemailModel() + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
  return CodableAceObject.wrappedValue.setter();
}

uint64_t (*SingleVoicemailModel.openVoicemailRSKE.modify(void *a1))()
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v3 = *(type metadata accessor for SingleVoicemailModel() + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
  v2[4] = CodableAceObject.wrappedValue.modify();
  return EmergencyCountdownModel.callAction.modify;
}

uint64_t SingleVoicemailModel.openContactRSKE.getter()
{
  v0 = *(type metadata accessor for SingleVoicemailModel() + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
  return CodableAceObject.wrappedValue.getter();
}

uint64_t SingleVoicemailModel.openContactRSKE.setter()
{
  v0 = *(type metadata accessor for SingleVoicemailModel() + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
  return CodableAceObject.wrappedValue.setter();
}

uint64_t (*SingleVoicemailModel.openContactRSKE.modify(void *a1))()
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v3 = *(type metadata accessor for SingleVoicemailModel() + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
  v2[4] = CodableAceObject.wrappedValue.modify();
  return EmergencyCountdownModel.sashTitle.modify;
}

uint64_t SingleVoicemailModel.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65736E6F70736572 && a2 == 0xEE00644977656956;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x4E79616C70736964 && a2 == 0xEB00000000656D61;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000011 && 0x8000000000453940 == a2;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x4479616C70736964 && a2 == 0xEF656D6954657461;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x617275446C6C6163 && a2 == 0xEC0000006E6F6974;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x6E6565736E75 && a2 == 0xE600000000000000;
            if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD000000000000011 && 0x8000000000461850 == a2;
              if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {

                return 6;
              }

              else if (a1 == 0x746E6F436E65706FLL && a2 == 0xEF454B5352746361)
              {

                return 7;
              }

              else
              {
                v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

                if (v13)
                {
                  return 7;
                }

                else
                {
                  return 8;
                }
              }
            }
          }
        }
      }
    }
  }
}

unint64_t SingleVoicemailModel.CodingKeys.stringValue.getter(char a1)
{
  result = 0x65736E6F70736572;
  switch(a1)
  {
    case 1:
      result = 0x4E79616C70736964;
      break;
    case 2:
      result = 0xD000000000000011;
      break;
    case 3:
      result = 0x4479616C70736964;
      break;
    case 4:
      result = 0x617275446C6C6163;
      break;
    case 5:
      result = 0x6E6565736E75;
      break;
    case 6:
      result = 0xD000000000000011;
      break;
    case 7:
      result = 0x746E6F436E65706FLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance SingleVoicemailModel.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = SingleVoicemailModel.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SingleVoicemailModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SingleVoicemailModel.CodingKeys and conformance SingleVoicemailModel.CodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SingleVoicemailModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SingleVoicemailModel.CodingKeys and conformance SingleVoicemailModel.CodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t SingleVoicemailModel.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy27PhoneCallFlowDelegatePlugin20SingleVoicemailModelV10CodingKeys33_9DB086A6526898D3EBB6A910A474AF36LLOGMd, &_ss22KeyedEncodingContainerVy27PhoneCallFlowDelegatePlugin20SingleVoicemailModelV10CodingKeys33_9DB086A6526898D3EBB6A910A474AF36LLOGMR);
  v6 = OUTLINED_FUNCTION_7(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6);
  v12 = &v29 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type SingleVoicemailModel.CodingKeys and conformance SingleVoicemailModel.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = *v3;
  v15 = v3[1];
  v37 = 0;
  OUTLINED_FUNCTION_6_84();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v16 = v3[2];
    v17 = v3[3];
    v36 = 1;
    OUTLINED_FUNCTION_6_84();
    KeyedEncodingContainer.encode(_:forKey:)();
    v18 = v3[4];
    v19 = v3[5];
    v35 = 2;
    OUTLINED_FUNCTION_6_84();
    KeyedEncodingContainer.encode(_:forKey:)();
    v20 = v3[6];
    v21 = v3[7];
    v34 = 3;
    OUTLINED_FUNCTION_6_84();
    KeyedEncodingContainer.encode(_:forKey:)();
    v22 = v3[8];
    v23 = v3[9];
    v33 = 4;
    OUTLINED_FUNCTION_6_84();
    KeyedEncodingContainer.encode(_:forKey:)();
    v24 = *(v3 + 80);
    v32 = 5;
    OUTLINED_FUNCTION_6_84();
    KeyedEncodingContainer.encode(_:forKey:)();
    v25 = type metadata accessor for SingleVoicemailModel();
    v26 = *(v25 + 40);
    v31 = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
    lazy protocol witness table accessor for type CodableAceObject<SAIntentGroupRunSiriKitExecutor> and conformance CodableAceObject<A>(&lazy protocol witness table cache variable for type CodableAceObject<SAIntentGroupRunSiriKitExecutor> and conformance CodableAceObject<A>);
    OUTLINED_FUNCTION_6_84();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v27 = *(v25 + 44);
    v30 = 7;
    OUTLINED_FUNCTION_6_84();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v8 + 8))(v12, v5);
}

unint64_t lazy protocol witness table accessor for type SingleVoicemailModel.CodingKeys and conformance SingleVoicemailModel.CodingKeys()
{
  result = lazy protocol witness table cache variable for type SingleVoicemailModel.CodingKeys and conformance SingleVoicemailModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type SingleVoicemailModel.CodingKeys and conformance SingleVoicemailModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SingleVoicemailModel.CodingKeys and conformance SingleVoicemailModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SingleVoicemailModel.CodingKeys and conformance SingleVoicemailModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type SingleVoicemailModel.CodingKeys and conformance SingleVoicemailModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SingleVoicemailModel.CodingKeys and conformance SingleVoicemailModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SingleVoicemailModel.CodingKeys and conformance SingleVoicemailModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type SingleVoicemailModel.CodingKeys and conformance SingleVoicemailModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SingleVoicemailModel.CodingKeys and conformance SingleVoicemailModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SingleVoicemailModel.CodingKeys and conformance SingleVoicemailModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type SingleVoicemailModel.CodingKeys and conformance SingleVoicemailModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SingleVoicemailModel.CodingKeys and conformance SingleVoicemailModel.CodingKeys);
  }

  return result;
}

uint64_t SingleVoicemailModel.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a2;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
  v3 = OUTLINED_FUNCTION_7(v51);
  v47 = v4;
  v6 = *(v5 + 64);
  __chkstk_darwin(v3);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v42 - v10;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy27PhoneCallFlowDelegatePlugin20SingleVoicemailModelV10CodingKeys33_9DB086A6526898D3EBB6A910A474AF36LLOGMd, &_ss22KeyedDecodingContainerVy27PhoneCallFlowDelegatePlugin20SingleVoicemailModelV10CodingKeys33_9DB086A6526898D3EBB6A910A474AF36LLOGMR);
  v12 = OUTLINED_FUNCTION_7(v46);
  v14 = v13;
  v16 = *(v15 + 64);
  __chkstk_darwin(v12);
  v18 = &v42 - v17;
  v48 = type metadata accessor for SingleVoicemailModel();
  v19 = *(*(v48 - 8) + 64);
  __chkstk_darwin(v48);
  v21 = &v42 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = a1[3];
  v22 = a1[4];
  v50 = a1;
  v24 = __swift_project_boxed_opaque_existential_1(a1, v23);
  lazy protocol witness table accessor for type SingleVoicemailModel.CodingKeys and conformance SingleVoicemailModel.CodingKeys();
  v25 = v49;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v25)
  {
    v43 = v8;
    v44 = v11;
    v49 = v14;
    v26 = v45;
    v59 = 0;
    *v21 = KeyedDecodingContainer.decode(_:forKey:)();
    *(v21 + 1) = v29;
    v58 = 1;
    OUTLINED_FUNCTION_8_73();
    *(v21 + 2) = KeyedDecodingContainer.decode(_:forKey:)();
    *(v21 + 3) = v30;
    v57 = 2;
    OUTLINED_FUNCTION_8_73();
    *(v21 + 4) = KeyedDecodingContainer.decode(_:forKey:)();
    *(v21 + 5) = v31;
    v56 = 3;
    OUTLINED_FUNCTION_8_73();
    *(v21 + 6) = KeyedDecodingContainer.decode(_:forKey:)();
    *(v21 + 7) = v32;
    v55 = 4;
    OUTLINED_FUNCTION_8_73();
    *(v21 + 8) = KeyedDecodingContainer.decode(_:forKey:)();
    *(v21 + 9) = v33;
    v54 = 5;
    OUTLINED_FUNCTION_8_73();
    v21[80] = KeyedDecodingContainer.decode(_:forKey:)() & 1;
    v53 = 6;
    v34 = lazy protocol witness table accessor for type CodableAceObject<SAIntentGroupRunSiriKitExecutor> and conformance CodableAceObject<A>(&lazy protocol witness table cache variable for type CodableAceObject<SAIntentGroupRunSiriKitExecutor> and conformance CodableAceObject<A>);
    v35 = v44;
    v36 = v51;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v37 = *(v48 + 40);
    v42 = v34;
    v44 = *(v47 + 32);
    v44(&v21[v37], v35, v36);
    v52 = 7;
    v38 = v43;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v39 = OUTLINED_FUNCTION_0_110();
    v40(v39);
    v44(&v21[*(v48 + 44)], v38, v36);
    outlined init with copy of SingleVoicemailModel(v21, v26);
    __swift_destroy_boxed_opaque_existential_1(v50);
    return outlined destroy of SingleVoicemailModel(v21);
  }

  OUTLINED_FUNCTION_2_109();
  __swift_destroy_boxed_opaque_existential_1(v50);

  if (!v18)
  {
    if (!v24)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v28 = *(v21 + 7);

  if (v24)
  {
LABEL_5:
    v27 = *(v21 + 9);
  }

LABEL_6:
  if (v22)
  {
    return (*(v47 + 8))(&v21[*(v48 + 40)], v51);
  }

  return result;
}

uint64_t outlined init with copy of SingleVoicemailModel(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SingleVoicemailModel();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of SingleVoicemailModel(uint64_t a1)
{
  v2 = type metadata accessor for SingleVoicemailModel();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t instantiation function for generic protocol witness table for SingleVoicemailModel(uint64_t a1)
{
  result = lazy protocol witness table accessor for type SingleVoicemailModel and conformance SingleVoicemailModel(&lazy protocol witness table cache variable for type SingleVoicemailModel and conformance SingleVoicemailModel);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type SingleVoicemailModel and conformance SingleVoicemailModel(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SingleVoicemailModel();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void type metadata completion function for SingleVoicemailModel()
{
  type metadata accessor for CodableAceObject<SAIntentGroupRunSiriKitExecutor>();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

_BYTE *storeEnumTagSinglePayload for SingleVoicemailModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

uint64_t thunk for @escaping @callee_guaranteed (@in_guaranteed Result<[INPerson], SlotResolverError>) -> ()(uint64_t a1, uint64_t a2, __int16 a3, uint64_t (*a4)(void *))
{
  v5[0] = a1;
  v5[1] = a2;
  v6 = a3;
  return a4(v5);
}

uint64_t SiriInferenceContactSlotResolver.__allocating_init(rchFlowContext:sharedGlobals:updateStrategy:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = a3;
  outlined init with take of PhoneCallFeatureFlagProviding(a4, v8 + 5);
  return OUTLINED_FUNCTION_0_111();
}

uint64_t SiriInferenceContactSlotResolver.UpdateStrategy.multicardinalIndex.getter(uint64_t a1, char a2)
{
  if (a2)
  {
    return 0;
  }

  return result;
}

uint64_t SiriInferenceContactSlotResolver.updateStrategy.getter()
{
  result = *(v0 + 80);
  v2 = *(v0 + 88);
  return result;
}

uint64_t SiriInferenceContactSlotResolver.init(rchFlowContext:sharedGlobals:updateStrategy:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a2;
  v4[4] = a3;
  outlined init with take of PhoneCallFeatureFlagProviding(a4, v4 + 5);
  return OUTLINED_FUNCTION_0_111();
}

uint64_t SiriInferenceContactSlotResolver.resolveSlot(skIntent:nlIntent:_:)(uint64_t a1, void *a2, void (*a3)(void), uint64_t a4)
{
  v5 = v4;
  v61 = a4;
  v62 = a3;
  v60 = a1;
  v56 = v5;
  v54 = *v5;
  v59 = type metadata accessor for Locale();
  v7 = OUTLINED_FUNCTION_7(v59);
  v57 = v8;
  v10 = *(v9 + 64);
  __chkstk_darwin(v7);
  v55 = (&v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = type metadata accessor for ContactQuery();
  v13 = OUTLINED_FUNCTION_7(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  __chkstk_darwin(v13);
  v53 = &v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v48 - v20;
  v22 = a2[3];
  v23 = a2[4];
  v58 = a2;
  __swift_project_boxed_opaque_existential_1(a2, v22);
  result = (*(v23 + 128))(v22, v23);
  v25 = result;
  v26 = 0;
  v27 = *(result + 16);
  v63 = v15 + 16;
  v52 = (v15 + 32);
  v28 = _swiftEmptyArrayStorage;
  while (v27 != v26)
  {
    if (v26 >= *(v25 + 16))
    {
      __break(1u);
      return result;
    }

    v29 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    v30 = *(v15 + 72);
    (*(v15 + 16))(v21, v25 + v29 + v30 * v26, v12);
    if (one-time initialization token for emptyQuery != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v12, static ContactQuery.emptyQuery);
    if (static ContactQuery.== infix(_:_:)())
    {
      goto LABEL_10;
    }

    if (one-time initialization token for emptyNLv4Query != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v12, static ContactQuery.emptyNLv4Query);
    if (static ContactQuery.== infix(_:_:)())
    {
LABEL_10:
      result = (*(v15 + 8))(v21, v12);
      ++v26;
    }

    else
    {
      v51 = *v52;
      v51(v53, v21, v12);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v65[0] = v28;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v32 = v28[2];
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v28 = v65[0];
      }

      v33 = v28[2];
      v34 = v33 + 1;
      if (v33 >= v28[3] >> 1)
      {
        v50 = v33 + 1;
        v49 = v33;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v34 = v50;
        v33 = v49;
        v28 = v65[0];
      }

      ++v26;
      v28[2] = v34;
      result = (v51)(v28 + v29 + v33 * v30, v53, v12);
    }
  }

  v35 = type metadata accessor for ContactResolution();
  v36 = v56;
  v37 = v56[2];
  v38 = v56[8];
  v39 = v56[9];
  __swift_project_boxed_opaque_existential_1(v56 + 5, v38);
  v40 = v28;
  (*(v39 + 8))(v65, v38, v39);
  __swift_project_boxed_opaque_existential_1(v65, v65[3]);
  v41 = v55;
  dispatch thunk of DeviceState.siriLocale.getter();
  v42 = *(v36 + 88);
  v43 = *(v54 + 80);
  v44 = *(v54 + 88);
  if (v42)
  {
    v45 = 0;
  }

  else
  {
    v45 = v36[10];
  }

  static SiriKitEventSender.current.getter();
  type metadata accessor for EmergencyContactResolution();
  v46 = swift_allocObject();
  LOBYTE(v47) = v42;
  specialized static ContactResolution.updateSiriKitIntent(siriKitIntent:contactQueries:hasEmergencyContact:app:locale:nlIntent:sharedGlobals:multicardinalIndex:siriKitEventSender:emergencyContactResolution:)(v60, v40, 0, v37, v41, v58, (v36 + 5), v45, v47, v64, v46, v35, v43, v44, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59);

  __swift_destroy_boxed_opaque_existential_1(v64);
  (*(v57 + 8))(v41, v59);
  __swift_destroy_boxed_opaque_existential_1(v65);
  if (!(*(*(v44 + 8) + 8))(v43))
  {
    return (v62)(0, 0, 258);
  }

  v62();
}

void *SiriInferenceContactSlotResolver.deinit()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];

  __swift_destroy_boxed_opaque_existential_1(v0 + 5);
  return v0;
}

uint64_t SiriInferenceContactSlotResolver.__deallocating_deinit()
{
  SiriInferenceContactSlotResolver.deinit();

  return swift_deallocClassInstance();
}

uint64_t protocol witness for SlotResolver.resolveSlot(skIntent:nlIntent:_:) in conformance SiriInferenceContactSlotResolver<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_allocObject();
  *(v9 + 16) = a3;
  *(v9 + 24) = a4;
  v10 = *(**v4 + 136);

  v10(a1, a2, _ss6ResultOySaySo8INPersonCG27PhoneCallFlowDelegatePlugin17SlotResolverErrorOGIegn_AIIegg_TRTA_0, v9);
}

uint64_t instantiation function for generic protocol witness table for SiriInferenceContactSlotResolver<A>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for SiriInferenceContactSlotResolver.UpdateStrategy(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for SiriInferenceContactSlotResolver.UpdateStrategy(uint64_t result, int a2, int a3)
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

uint64_t getEnumTag for SiriInferenceContactSlotResolver.UpdateStrategy(uint64_t a1)
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

uint64_t destructiveInjectEnumTag for SiriInferenceContactSlotResolver.UpdateStrategy(uint64_t result, int a2)
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

uint64_t _ss6ResultOySaySo8INPersonCG27PhoneCallFlowDelegatePlugin17SlotResolverErrorOGIegn_AIIegg_TRTA_0(uint64_t a1, uint64_t a2, __int16 a3)
{
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  v7[0] = a1;
  v7[1] = a2;
  v8 = a3 & 0x1FF;
  return v4(v7);
}

Swift::String __swiftcall SiriKitDisambiguationItem.toSpokenHandleDisambiguation(deviceLocked:)(Swift::Bool deviceLocked)
{
  if (dispatch thunk of SiriKitDisambiguationItem.getSecondComponent()())
  {
    if (!deviceLocked || (SiriKitDisambiguationItemComponent.allowedOnLockScreen.getter() & 1) != 0)
    {
      v2._countAndFlagsBits = dispatch thunk of SiriKitDisambiguationItemComponent.toSpokenString(deviceLocked:)();
      String.append(_:)(v2);
    }
  }

  if (dispatch thunk of SiriKitDisambiguationItem.getFirstComponent()())
  {
    if (!deviceLocked || (SiriKitDisambiguationItemComponent.allowedOnLockScreen.getter() & 1) != 0)
    {
      v3._countAndFlagsBits = dispatch thunk of SiriKitDisambiguationItemComponent.toSpokenString(deviceLocked:)();
      String.append(_:)(v3);
    }
  }

  v4 = 0;
  v5 = 0xE000000000000000;
  result._object = v5;
  result._countAndFlagsBits = v4;
  return result;
}

uint64_t SiriKitDisambiguationItem.ttsPause(_:)()
{
  _StringGuts.grow(_:)(19);

  v0._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v0);

  v1._countAndFlagsBits = 8224092;
  v1._object = 0xE300000000000000;
  String.append(_:)(v1);
  return 0x5C1B237374747B40;
}

void SiriKitDisambiguationList.makeSpeakableHandleLabels(deviceIsLocked:)(uint64_t a1)
{
  v2 = SiriKitDisambiguationList.removeSecondComponentIfIdenticalAcrossAllItems(deviceLocked:)();
  if (specialized Array.count.getter(v2) != 1)
  {
    type metadata accessor for SiriKitDisambiguationList();
    static SiriKitDisambiguationList.keepOnlySecondComponentIfUnique(disambiguationItems:deviceLocked:)(v2, a1 & 1);
    v7 = v6;

    v8 = specialized Array.count.getter(v7);
    if (v8)
    {
      v9 = v8;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      if (v9 < 0)
      {
        __break(1u);
        return;
      }

      v10 = 0;
      v25 = v7 & 0xC000000000000001;
      v11 = v7;
      do
      {
        if (v25)
        {
          specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v12 = *(v7 + 8 * v10 + 32);
        }

        v13 = a1;
        v14 = SiriKitDisambiguationItem.toSpokenHandleDisambiguation(deviceLocked:)(a1 & 1);

        v15 = _swiftEmptyArrayStorage[2];
        if (v15 >= _swiftEmptyArrayStorage[3] >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        ++v10;
        _swiftEmptyArrayStorage[2] = v15 + 1;
        *&_swiftEmptyArrayStorage[2 * v15 + 4] = v14;
        a1 = v13;
        v7 = v11;
      }

      while (v9 != v10);
    }

    return;
  }

  v3 = v2 & 0xC000000000000001;
  specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v2 & 0xC000000000000001) == 0, v2);
  if ((v2 & 0xC000000000000001) != 0)
  {
    specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    v4 = *(v2 + 32);
  }

  v5 = dispatch thunk of SiriKitDisambiguationItem.getThirdComponent()();

  if (v5)
  {
    goto LABEL_20;
  }

  if (v3)
  {
    specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    v16 = *(v2 + 32);
  }

  v17 = dispatch thunk of SiriKitDisambiguationItem.getSecondComponent()();

  if (v17)
  {
LABEL_20:

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_424FD0;
    *(v18 + 32) = dispatch thunk of SiriKitDisambiguationItemComponent.toSpokenString(deviceLocked:)();
    *(v18 + 40) = v19;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_424FD0;
    if (v3)
    {
      specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v21 = *(v2 + 32);
    }

    v22 = dispatch thunk of SiriKitDisambiguationItem.toSpokenString(deviceLocked:)();
    v24 = v23;

    *(v20 + 32) = v22;
    *(v20 + 40) = v24;
  }
}

void *SiriKitDisambiguationList.removeSecondComponentIfIdenticalAcrossAllItems(deviceLocked:)()
{
  v0 = SiriKitDisambiguationList.disambiguationItems.getter();
  v1 = specialized Array.count.getter(v0);

  v2 = SiriKitDisambiguationList.disambiguationItems.getter();
  v3 = v2;
  if (v1 < 2)
  {
    return v3;
  }

  specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v2 & 0xC000000000000001) == 0, v2);
  if ((v3 & 0xC000000000000001) != 0)
  {
LABEL_53:
    specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    v4 = *(v3 + 32);
  }

  v5 = dispatch thunk of SiriKitDisambiguationItem.getSecondComponent()();

  if (v5)
  {
    v32 = dispatch thunk of SiriKitDisambiguationItemComponent.toSpokenString(deviceLocked:)();
    v7 = v6;
  }

  else
  {
    v32 = 0;
    v7 = 0;
  }

  v8 = SiriKitDisambiguationList.disambiguationItems.getter();
  v9 = specialized Array.count.getter(v8);
  for (i = 0; v9 != i; ++i)
  {
    if ((v8 & 0xC000000000000001) != 0)
    {
      specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (i >= *(&dword_10 + (v8 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_51;
      }

      v11 = *(v8 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
      goto LABEL_53;
    }

    if (dispatch thunk of SiriKitDisambiguationItem.getSecondComponent()())
    {
      v12 = dispatch thunk of SiriKitDisambiguationItemComponent.toSpokenString(deviceLocked:)();
      v14 = v13;

      if (v7)
      {
        if (!v14)
        {
          goto LABEL_44;
        }

        if (v32 == v12 && v7 == v14)
        {
        }

        else
        {
          v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v16 & 1) == 0)
          {
            goto LABEL_44;
          }
        }
      }

      else if (v14)
      {
LABEL_44:

        goto LABEL_45;
      }
    }

    else if (v7)
    {
      goto LABEL_44;
    }

    v17 = dispatch thunk of SiriKitDisambiguationItem.getSecondComponent()();

    if (!v17)
    {

LABEL_45:

      return SiriKitDisambiguationList.disambiguationItems.getter();
    }
  }

  v18 = SiriKitDisambiguationList.disambiguationItems.getter();
  v19 = specialized Array.count.getter(v18);
  if (!v19)
  {
LABEL_48:

    return _swiftEmptyArrayStorage;
  }

  v20 = v19;
  result = specialized ContiguousArray.reserveCapacity(_:)();
  if ((v20 & 0x8000000000000000) == 0)
  {
    v22 = 0;
    while (1)
    {
      if ((v18 & 0xC000000000000001) != 0)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v23 = *(v18 + 8 * v22 + 32);
      }

      v24 = SiriKitDisambiguationItem.components.getter();
      if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || v24 < 0 || (v24 & 0x4000000000000000) != 0)
      {
        v24 = specialized _ArrayBuffer._consumeAndCreateNew()(v24);
      }

      v25 = *(&dword_10 + (v24 & 0xFFFFFFFFFFFFFF8));
      if (v25 < 2)
      {
        goto LABEL_52;
      }

      v26 = v25 - 1;
      v27 = *&stru_20.segname[v24 & 0xFFFFFFFFFFFFFF8];
      memmove(((v24 & 0xFFFFFFFFFFFFFF8) + 40), ((v24 & 0xFFFFFFFFFFFFFF8) + 48), 8 * v25 - 16);
      ++v22;
      *(&dword_10 + (v24 & 0xFFFFFFFFFFFFFF8)) = v26;

      SiriKitDisambiguationItem.utterance.getter();
      v28 = type metadata accessor for SiriKitDisambiguationItem();
      v29 = *(v28 + 48);
      v30 = *(v28 + 52);
      swift_allocObject();
      SiriKitDisambiguationItem.init(components:utterance:allowLineWrapForDisplayText:)();

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v31 = _swiftEmptyArrayStorage[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      if (v20 == v22)
      {
        goto LABEL_48;
      }
    }
  }

  __break(1u);
  return result;
}

void static SiriKitDisambiguationList.keepOnlySecondComponentIfUnique(disambiguationItems:deviceLocked:)(uint64_t a1, int a2)
{
  v40 = a2;
  v2 = a1;
  v3 = specialized Array.count.getter(a1);
  v4 = v2 & 0xC000000000000001;
  v42 = v2 & 0xFFFFFFFFFFFFFF8;
  v5 = 0;
  v41 = _swiftEmptyArrayStorage;
  while (1)
  {
    if (v3 == v5)
    {
      v17 = 0;
      v44 = _swiftEmptyArrayStorage;
      v36 = xmmword_426260;
      v38 = v2 & 0xC000000000000001;
      v39 = v2;
      v37 = v3;
      while (1)
      {
        if (v3 == v17)
        {

          return;
        }

        if (v4)
        {
          specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v17 >= *(v42 + 16))
          {
            goto LABEL_38;
          }

          v18 = *(v2 + 8 * v17 + 32);
        }

        if (__OFADD__(v17, 1))
        {
          goto LABEL_37;
        }

        v19 = dispatch thunk of SiriKitDisambiguationItem.getSecondComponent()();
        if (v19)
        {
          break;
        }

LABEL_30:
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*(&dword_10 + (v44 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v44 & 0xFFFFFFFFFFFFFF8)) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        ++v17;
      }

      v20 = v19;
      v21 = dispatch thunk of SiriKitDisambiguationItemComponent.toSpokenString(deviceLocked:)();
      v23 = v22;
      v24 = v41;
      v25 = specialized Collection<>.firstIndex(of:)(v21, v22, v41);
      v27 = v26;
      v43[0] = v21;
      v43[1] = v23;
      __chkstk_darwin(v25);
      v35[2] = v43;
      v28 = specialized BidirectionalCollection.lastIndex(where:)(partial apply for specialized closure #1 in Collection<>.split(separator:maxSplits:omittingEmptySubsequences:), v35, v24);
      v30 = v29;

      if (v27)
      {
        v3 = v37;
        if ((v30 & 1) == 0)
        {
LABEL_28:

          goto LABEL_29;
        }
      }

      else
      {
        v3 = v37;
        if ((v30 & 1) != 0 || v25 != v28)
        {
          goto LABEL_28;
        }
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
      v31 = swift_allocObject();
      *(v31 + 16) = v36;
      *(v31 + 32) = v20;

      SiriKitDisambiguationItem.utterance.getter();
      v32 = type metadata accessor for SiriKitDisambiguationItem();
      v33 = *(v32 + 48);
      v34 = *(v32 + 52);
      swift_allocObject();
      SiriKitDisambiguationItem.init(components:utterance:allowLineWrapForDisplayText:)();

LABEL_29:
      v4 = v38;
      v2 = v39;
      goto LABEL_30;
    }

    if (v4)
    {
      specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v5 >= *(v42 + 16))
      {
        goto LABEL_36;
      }

      v6 = *(v2 + 8 * v5 + 32);
    }

    v7 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    if (dispatch thunk of SiriKitDisambiguationItem.getSecondComponent()())
    {
      v8 = dispatch thunk of SiriKitDisambiguationItemComponent.toSpokenString(deviceLocked:)();
      v10 = v9;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v14 = v41[2];
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v41 = v15;
      }

      v11 = v41[2];
      if (v11 >= v41[3] >> 1)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v41 = v16;
      }

      v12 = v41;
      v41[2] = v11 + 1;
      v13 = &v12[2 * v11];
      v13[4] = v8;
      v13[5] = v10;
      v5 = v7;
    }

    else
    {

      ++v5;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
}

uint64_t specialized Collection<>.firstIndex(of:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = 0;
  v6 = *(a3 + 16);
  v7 = (a3 + 40);
  while (v6 != v5)
  {
    v8 = *(v7 - 1) == a1 && *v7 == a2;
    if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      return v5;
    }

    ++v5;
    v7 += 2;
  }

  return 0;
}

Swift::Void __swiftcall SiriKitEventSending.sendCallStateEvent(hangUpIntentResponse:)(INHangUpCallIntentResponse hangUpIntentResponse)
{
  v3 = v2;
  v4 = v1;
  v6 = type metadata accessor for ActivityType();
  v7 = OUTLINED_FUNCTION_7(v6);
  v59 = v8;
  v10 = *(v9 + 64);
  __chkstk_darwin(v7);
  v12 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow0aB16ReliabilityCodesOSgMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMR);
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13 - 8);
  v60 = (&v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v15);
  v18 = &v58 - v17;
  v19 = type metadata accessor for SiriKitReliabilityCodes();
  v20 = OUTLINED_FUNCTION_7(v19);
  v22 = v21;
  v24 = *(v23 + 64);
  v25 = __chkstk_darwin(v20);
  v27 = &v58 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v29 = &v58 - v28;
  v61 = v4;
  v62 = v3;
  v31 = v30;
  SiriKitEventSending.makeIntentResponseToCallState(hangUpIntentResponse:)(hangUpIntentResponse.super.super.isa, v18);
  if (__swift_getEnumTagSinglePayload(v18, 1, v31) == 1)
  {
    outlined destroy of SiriKitReliabilityCodes?(v18);
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2();
    }

    v32 = type metadata accessor for Logger();
    __swift_project_value_buffer(v32, static Logger.siriPhone);
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_0, v33, v34, "#SiriKitEventSending Could not map IntentResponse to a loggable call state", v35, 2u);
      OUTLINED_FUNCTION_26_0();
    }
  }

  else
  {
    v58 = v22;
    (*(v22 + 32))(v29, v18, v31);
    if (one-time initialization token for kUnsupportedCallStates != -1)
    {
      swift_once();
    }

    if (specialized Set.contains(_:)(v29, kUnsupportedCallStates))
    {
      goto LABEL_20;
    }

    if (one-time initialization token for kSupportedCallStates != -1)
    {
      swift_once();
    }

    if (!specialized Set.contains(_:)(v29, kSupportedCallStates))
    {
LABEL_20:
      if (one-time initialization token for siriPhone != -1)
      {
        OUTLINED_FUNCTION_6_2();
      }

      v46 = type metadata accessor for Logger();
      __swift_project_value_buffer(v46, static Logger.siriPhone);
      v47 = v58;
      (*(v58 + 16))(v27, v29, v31);
      v48 = Logger.logObject.getter();
      v49 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        v51 = swift_slowAlloc();
        v63 = v51;
        *v50 = 136315138;
        v52 = SiriKitReliabilityCodes.rawValue.getter();
        v54 = v53;
        v62 = v29;
        v55 = *(v47 + 8);
        v55(v27, v31);
        v56 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v52, v54, &v63);

        *(v50 + 4) = v56;
        _os_log_impl(&dword_0, v48, v49, "#SiriKitEventSending callState %s could not be logged because it is not supported. Sending calls and held calls should be treated as active.", v50, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v51);
        OUTLINED_FUNCTION_26_0();
        OUTLINED_FUNCTION_26_0();

        v55(v62, v31);
      }

      else
      {

        v57 = *(v47 + 8);
        v57(v27, v31);
        v57(v29, v31);
      }
    }

    else
    {
      type metadata accessor for SiriKitEvent();
      (*(v59 + 104))(v12, enum case for ActivityType.getCallBackgroundState(_:), v6);
      if (one-time initialization token for emptyHangUpCallIntent != -1)
      {
        swift_once();
      }

      v36 = [static PhoneCallIntentClassNames.emptyHangUpCallIntent typeName];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v37 = v58;
      v38 = v60;
      (*(v58 + 16))(v60, v29, v31);
      __swift_storeEnumTagSinglePayload(v38, 0, 1, v31);
      SiriKitEvent.__allocating_init(activityType:taskType:statusReason:_:)();
      if (one-time initialization token for siriPhone != -1)
      {
        OUTLINED_FUNCTION_6_2();
      }

      v39 = type metadata accessor for Logger();
      __swift_project_value_buffer(v39, static Logger.siriPhone);

      v40 = Logger.logObject.getter();
      v41 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        v60 = swift_slowAlloc();
        v63 = v60;
        *v42 = 136315138;
        v43 = SiriKitEvent.debugDescription.getter();
        v45 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v43, v44, &v63);

        *(v42 + 4) = v45;
        _os_log_impl(&dword_0, v40, v41, "#SiriKitEventSending logging GetCallBackgroundState: %s", v42, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v60);
        OUTLINED_FUNCTION_26_0();
        OUTLINED_FUNCTION_26_0();
      }

      dispatch thunk of SiriKitEventSending.send(_:)();

      (*(v37 + 8))(v29, v31);
    }
  }
}

uint64_t one-time initialization function for kSupportedCallStates()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11SiriKitFlow0dE16ReliabilityCodesOGMd, &_ss23_ContiguousArrayStorageCy11SiriKitFlow0dE16ReliabilityCodesOGMR);
  v0 = type metadata accessor for SiriKitReliabilityCodes();
  v1 = *(v0 - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_426980;
  v5 = v4 + v3;
  v6 = *(v1 + 104);
  v6(v5, enum case for SiriKitReliabilityCodes.callStateActive(_:), v0);
  v6(v5 + v2, enum case for SiriKitReliabilityCodes.callStateRingIncoming(_:), v0);
  v6(v5 + 2 * v2, enum case for SiriKitReliabilityCodes.callStateDisconnected(_:), v0);
  result = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC11SiriKitFlow0eF16ReliabilityCodesO_Tt0g5(v4);
  kSupportedCallStates = result;
  return result;
}

uint64_t one-time initialization function for kUnsupportedCallStates()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11SiriKitFlow0dE16ReliabilityCodesOGMd, &_ss23_ContiguousArrayStorageCy11SiriKitFlow0dE16ReliabilityCodesOGMR);
  v0 = type metadata accessor for SiriKitReliabilityCodes();
  v1 = *(v0 - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_424FF0;
  v5 = v4 + v3;
  v6 = *(v1 + 104);
  v6(v5, enum case for SiriKitReliabilityCodes.callStateRingOutgoing(_:), v0);
  v6(v5 + v2, enum case for SiriKitReliabilityCodes.callStateHeld(_:), v0);
  result = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC11SiriKitFlow0eF16ReliabilityCodesO_Tt0g5(v4);
  kUnsupportedCallStates = result;
  return result;
}

uint64_t SiriKitEventSending.makeIntentResponseToCallState(hangUpIntentResponse:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  if ([a1 code] == &dword_4 + 2)
  {
    v4 = &enum case for SiriKitReliabilityCodes.callStateDisconnected(_:);
LABEL_7:
    v5 = *v4;
    v6 = type metadata accessor for SiriKitReliabilityCodes();
    (*(*(v6 - 8) + 104))(a2, v5, v6);
    v7 = a2;
    v8 = 0;
    v9 = v6;
    goto LABEL_8;
  }

  if ([a1 hungUpCallType] == &dword_4 + 3)
  {
    v4 = &enum case for SiriKitReliabilityCodes.callStateActive(_:);
    goto LABEL_7;
  }

  if ([a1 hungUpCallType] == &dword_4 + 2)
  {
    v4 = &enum case for SiriKitReliabilityCodes.callStateRingIncoming(_:);
    goto LABEL_7;
  }

  v9 = type metadata accessor for SiriKitReliabilityCodes();
  v7 = a2;
  v8 = 1;
LABEL_8:

  return __swift_storeEnumTagSinglePayload(v7, v8, 1, v9);
}