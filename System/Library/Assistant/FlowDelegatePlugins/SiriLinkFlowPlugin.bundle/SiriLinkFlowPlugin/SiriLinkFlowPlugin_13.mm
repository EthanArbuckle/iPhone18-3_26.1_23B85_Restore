id @nonobjc LNSnippetEnvironment.init(size:locale:dynamicTypeSize:legibilityWeight:layoutDirection:colorScheme:colorSchemeContrast:displayScale:displayGamut:accessibilityDifferentiateWithoutColor:accessibilityInvertColors:accessibilityReduceMotion:accessibilityReduceTransparency:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, double a9, double a10, double a11, char a12, char a13, char a14)
{
  v15 = v14;
  v23 = type metadata accessor for Locale();
  isa = 0;
  if (__swift_getEnumTagSinglePayload(a1, 1, v23) != 1)
  {
    isa = Locale._bridgeToObjectiveC()().super.isa;
    (*(*(v23 - 8) + 8))(a1, v23);
  }

  BYTE3(v27) = a14 & 1;
  BYTE2(v27) = a13 & 1;
  BYTE1(v27) = a12 & 1;
  LOBYTE(v27) = a8 & 1;
  v25 = [v15 initWithSize:isa locale:a2 dynamicTypeSize:a3 legibilityWeight:a4 layoutDirection:a5 colorScheme:a6 colorSchemeContrast:a9 displayScale:a10 displayGamut:a11 accessibilityDifferentiateWithoutColor:a7 accessibilityInvertColors:v27 accessibilityReduceMotion:? accessibilityReduceTransparency:?];

  return v25;
}

uint64_t OUTLINED_FUNCTION_0_28()
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t OUTLINED_FUNCTION_1_41()
{
}

void *_sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay18SiriLinkFlowPlugin34WFChooseFromListDisambiguationItemVG_So13SFCardSectionCs5NeverOTg504_s18def51Plugin28WorkflowPhoneSnippetProviderC35cardSectionsik96Items33_4EECA0108B9B644B18340581AEC8AD2DLL014disambiguationM011appBundleId13utteranceViewSaySo13mn51CG_SaySo20SAClientBoundCommand_pGtSayAA08WFChoosek4j2L4L47VG_SSSo022SAUIAssistantUtteranceY0CSgtFAjOXEfU_SSAF0rstU0CSaySo20SAClientBoundCommand_pGTf1cn_n(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v63 = a2;
  v64 = a5;
  v66 = a4;
  v8 = type metadata accessor for ImageSize();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v13 = *(a1 + 16);
  if (v13)
  {
    v65 = a3;
    v53 = v5;
    v75 = _swiftEmptyArrayStorage;
    v56 = &v53 - v12;
    v54 = v8;
    specialized ContiguousArray.reserveCapacity(_:)();
    v14 = type metadata accessor for CATSpeakableString();
    v61 = SAInputOriginDialogButtonTapValue;
    v60 = objc_opt_self();
    v59 = enum case for ImageSize.default(_:);
    v57 = (v9 + 8);
    v58 = (v9 + 104);
    v15 = (a1 + 80);
    v55 = xmmword_216010;
    v62 = v14;
    do
    {
      v74 = v13;
      v17 = *(v15 - 6);
      v16 = *(v15 - 5);
      v19 = *(v15 - 4);
      v18 = *(v15 - 3);
      v20 = *(v15 - 1);
      v21 = *v15;
      v71 = *(v15 - 2);
      v72 = v20;

      v70 = v21;

      v67 = v17;
      v73 = v16;
      static CATSpeakableString.stripTTSHint(print:)(v17, v16, v22, v23, v24, v25, v26, v27, v53, v54, v55);
      v28 = v56;
      v29 = v54;
      (*v58)();
      v69 = v18;
      if (v18)
      {
        static CATSpeakableString.stripTTSHint(print:)(v19, v18, v30, v31, v32, v33, v34, v35, v53, v54, v55);
      }

      v15 += 7;
      v68 = static CasinoFactory.makeRowCardSection(possibleTitle:imageSize:possibleLeadingSubtitle:possibleTrailingSubtitle:possibleImage:possibleMonogramLetters:possibleContactIdentifiers:possibleImageUri:maxLines:shouldCropToCircle:)();

      (*v57)(v28, v29);
      v36 = static SLFDisambiguationItemConverter.toDirectInvocationPayload(title:)(v67, v73);
      v67 = v36;
      v37 = v66[6];
      __swift_project_boxed_opaque_existential_1(v66 + 2, v66[5]);
      v38 = DeviceState.asInvocationContext.getter();
      [v38 setInputOrigin:v61];
      v39 = v60;
      v40 = [v60 runSiriKitExecutorCommandWithContext:v38 payload:v36];
      v41 = [objc_allocWithZone(SAIntentGroupSiriKitAppSelectionState) init];
      v42 = [objc_allocWithZone(SASyncAppIdentifyingInfo) init];
      v43 = String._bridgeToObjectiveC()();
      [v42 setBundleId:v43];

      [v41 setRequestedApp:v42];
      [v40 setAppSelectionState:v41];

      v44 = [v39 wrapCommandInStartLocalRequest:v40];
      v45 = v44;
      v46 = static CasinoFactory.makeReferentialAbstractCommand(originalCommand:)();

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
      v47 = swift_allocObject();
      *(v47 + 16) = v55;
      *(v47 + 32) = v46;
      v48 = v46;
      outlined bridged method (mbnn) of @objc SFCardSection.commands.setter(v47, v68);
      v49 = v64;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(*(&dword_10 + (*v49 & 0xFFFFFFFFFFFFFF8)));
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v50 = v75[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v13 = v74 - 1;
    }

    while (v74 != 1);

    v51 = v75;
  }

  else
  {

    v51 = _swiftEmptyArrayStorage;
  }

  return v51;
}

uint64_t WorkflowPhoneSnippetProvider.buildIntentSnippet(intent:intentResponse:shortcutName:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t WorkflowPhoneSnippetProvider.buildIntentSnippet(intent:intentResponse:shortcutName:)()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = *(v0 + 16);
    v3 = v1;
    outlined bridged method (pb) of @objc INIntent.launchId.getter(v2);
    if (v4)
    {
      v6 = *(v0 + 16);
      v5 = *(v0 + 24);
      type metadata accessor for App();
      App.__allocating_init(appIdentifier:)();
      type metadata accessor for NSError(0, &lazy cache variable for type metadata for SAIntentGroupLaunchAppWithIntent, SAIntentGroupLaunchAppWithIntent_ptr);
      v7 = v3;
      v8 = static SAIntentGroupLaunchAppWithIntent.launchAppWithIntent(app:intent:intentResponse:)();
      v9 = static CasinoFactory.makeReferentialAbstractCommand(originalCommand:)();

      v10 = static CasinoFactory.makePlaceholderCardSection()();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
      v11 = OUTLINED_FUNCTION_64();
      *(v11 + 16) = xmmword_216010;
      *(v11 + 32) = v9;
      v25 = v9;
      outlined bridged method (mbnn) of @objc SFCardSection.commands.setter(v11, v10);
      v12 = [v6 _metadata];
      if (v12)
      {
        v13 = v12;
        v14 = *(v0 + 16);
        [v12 setExecutionContext:{2, v25}];
        [v14 _setMetadata:v13];
      }

      v16 = *(v0 + 16);
      v15 = *(v0 + 24);
      type metadata accessor for NSError(0, &lazy cache variable for type metadata for SACardSnippet, SACardSnippet_ptr);
      v17 = OUTLINED_FUNCTION_64();
      *(v17 + 16) = xmmword_216010;
      *(v17 + 32) = v10;
      v18 = v10;
      v19 = static SACardSnippet.makeFromCardSectionsWithIntentData(cardSections:intent:intentResponse:shouldGenerateAceId:)();

      v20 = OUTLINED_FUNCTION_64();
      *(v20 + 16) = xmmword_216010;
      *(v20 + 32) = v8;
      v21 = v8;
      outlined bridged method (mbnn) of @objc SACardSnippet.referencedCommands.setter(v20, v19);
    }

    else
    {
    }
  }

  v22 = OUTLINED_FUNCTION_10_15();

  return v23(v22);
}

uint64_t WorkflowPhoneSnippetProvider.makeDisambiguationViews(disambiguationItems:shortcutName:appBundleId:utteranceViews:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[5] = a6;
  v7[6] = v6;
  v7[3] = a4;
  v7[4] = a5;
  v7[2] = a1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t WorkflowPhoneSnippetProvider.makeDisambiguationViews(disambiguationItems:shortcutName:appBundleId:utteranceViews:)()
{
  v1 = specialized Array.count.getter(v0[5]);
  v2 = v0[5];
  if (v1)
  {
    v3 = v2 & 0xC000000000000001;
    specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v2 & 0xC000000000000001) == 0, v0[5]);
    v2 = v0[5];
    if (v3)
    {
      v17 = v0[5];
      v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v2 = v0[5];
    }

    else
    {
      v4 = *(v2 + 32);
    }
  }

  else
  {
    v4 = 0;
  }

  v5 = v0[6];
  WorkflowPhoneSnippetProvider.cardSectionsFromDisambiguationItems(disambiguationItems:appBundleId:utteranceView:)(v0[2], v0[3], v0[4], v4);
  v7 = v6;

  type metadata accessor for NSError(0, &lazy cache variable for type metadata for SACardSnippet, SACardSnippet_ptr);
  v8 = static SACardSnippet.makeFromCardSections(cardSections:shouldGenerateAceId:)();

  outlined bridged method (mbnn) of @objc SACardSnippet.referencedCommands.setter(v7, v8);
  type metadata accessor for NSError(0, &lazy cache variable for type metadata for NSNumber, NSNumber_ptr);
  v9 = v8;
  isa = NSNumber.init(BOOLeanLiteral:)(1).super.super.isa;
  [v9 setListenAfterSpeaking:isa];

  [v9 setCanUseServerTTS:0];
  v11 = static CustomIntentPlatformSpecificSnippets.makeDialogFromUtteranceView(utteranceViews:)(v2);
  if (v11)
  {
    v12 = v11;
    [v9 setDialog:v11];
  }

  v13 = v0[6];

  type metadata accessor for SiriKitAceViewBuilder();
  dispatch thunk of static SiriKitAceViewBuilder.makeBuilder(deviceState:)();
  dispatch thunk of SiriKitAceViewBuilder.addSnippet(snippet:)();

  dispatch thunk of SiriKitAceViewBuilder.build()();

  v14 = OUTLINED_FUNCTION_10_15();

  return v15(v14);
}

uint64_t WorkflowPhoneSnippetProvider.makeSnippetForShowAlert(dialogRequest:appBundleId:shortcutName:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t WorkflowPhoneSnippetProvider.makeSnippetForShowAlert(dialogRequest:appBundleId:shortcutName:)()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  v4 = [objc_allocWithZone(SAAppsLaunchApp) init];
  outlined bridged method (mbgnn) of @objc SAAppsLaunchApp.launchId.setter(v1, v2, v4);
  v5 = v4;
  v6 = static CasinoFactory.makeReferentialAbstractCommand(originalCommand:)();

  outlined bridged method (pb) of @objc WFShowAlertDialogRequest.message.getter(v3);
  LOWORD(v16) = 257;
  OUTLINED_FUNCTION_2_38();
  v7 = static CasinoFactory.makeRowCardSection(possibleTitle:possibleLeadingSubtitle:possibleTrailingSubtitle:possibleImage:possibleMonogramLetters:possibleContactIdentifiers:possibleImageUri:maxLines:shouldCropToCircle:shouldUseDefaultImageSize:)();

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v8 = OUTLINED_FUNCTION_64();
  *(v8 + 16) = xmmword_216010;
  *(v8 + 32) = v6;
  v9 = v6;
  outlined bridged method (mbnn) of @objc SFCardSection.commands.setter(v8, v7);
  v10 = [objc_allocWithZone(INStartCallIntent) init];
  type metadata accessor for NSError(0, &lazy cache variable for type metadata for SACardSnippet, SACardSnippet_ptr);
  v11 = OUTLINED_FUNCTION_64();
  *(v11 + 16) = xmmword_216010;
  *(v11 + 32) = v7;
  v12 = v7;
  static SACardSnippet.makeFromCardSectionsWithIntentData(cardSections:intent:intentResponse:shouldGenerateAceId:)();

  v13 = OUTLINED_FUNCTION_10_15();

  return v14(v13);
}

unint64_t WorkflowPhoneSnippetProvider.cardSectionsFromDisambiguationItems(disambiguationItems:appBundleId:utteranceView:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  v10 = type metadata accessor for ImageSize();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = _swiftEmptyArrayStorage;
  v20 = _swiftEmptyArrayStorage;
  if (a4)
  {
    v15 = a4;
    outlined bridged method (pb) of @objc SAUIAssistantUtteranceView.text.getter(v15);
    (*(v11 + 104))(v14, enum case for ImageSize.original(_:), v10);
    OUTLINED_FUNCTION_2_38();
    static CasinoFactory.makeRowCardSection(possibleTitle:imageSize:possibleLeadingSubtitle:possibleTrailingSubtitle:possibleImage:possibleMonogramLetters:possibleContactIdentifiers:possibleImageUri:maxLines:shouldCropToCircle:)();

    (*(v11 + 8))(v14, v10);
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*(&dword_10 + (v19 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v19 & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  v16 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay18SiriLinkFlowPlugin34WFChooseFromListDisambiguationItemVG_So13SFCardSectionCs5NeverOTg504_s18def51Plugin28WorkflowPhoneSnippetProviderC35cardSectionsik96Items33_4EECA0108B9B644B18340581AEC8AD2DLL014disambiguationM011appBundleId13utteranceViewSaySo13mn51CG_SaySo20SAClientBoundCommand_pGtSayAA08WFChoosek4j2L4L47VG_SSSo022SAUIAssistantUtteranceY0CSgtFAjOXEfU_SSAF0rstU0CSaySo20SAClientBoundCommand_pGTf1cn_n(a1, a2, a3, v5, &v20);
  specialized Array.append<A>(contentsOf:)(v16);
  return v19;
}

uint64_t RFFeatureFlags.ResponseFramework.isEnabled.getter()
{
  if (one-time initialization token for forceEnabled != -1)
  {
    OUTLINED_FUNCTION_0_29();
    swift_once();
  }

  swift_beginAccess();
  v1 = specialized Dictionary.subscript.getter(v0, static RFFeatureFlags.ResponseFramework.forceEnabled);
  if (v1 == 2)
  {
    swift_endAccess();
    v2 = type metadata accessor for RFFeatureFlags.ResponseFramework();
    v10[3] = v2;
    v10[4] = lazy protocol witness table accessor for type RFFeatureFlags.ResponseFramework and conformance RFFeatureFlags.ResponseFramework(&lazy protocol witness table cache variable for type RFFeatureFlags.ResponseFramework and conformance RFFeatureFlags.ResponseFramework);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v10);
    (*(*(v2 - 8) + 16))(boxed_opaque_existential_1, v0, v2);
    v4 = isFeatureEnabled(_:)();
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
  }

  else
  {
    v4 = v1;
    swift_endAccess();
  }

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
    *v8 = 67109120;
    *(v8 + 4) = v4 & 1;
    _os_log_impl(&dword_0, v6, v7, "RFFeatureFlags.ResponseFramework - isRFv2: %{BOOL}d", v8, 8u);
  }

  return v4 & 1;
}

void one-time initialization function for forceEnabled()
{
  static RFFeatureFlags.ResponseFramework.forceEnabled = &_swiftEmptyDictionarySingleton;
}

{
  static SiriLinkFlowFeatureFlags.forceEnabled = &_swiftEmptyDictionarySingleton;
}

uint64_t *RFFeatureFlags.ResponseFramework.forceEnabled.unsafeMutableAddressor()
{
  if (one-time initialization token for forceEnabled != -1)
  {
    OUTLINED_FUNCTION_0_29();
    swift_once();
  }

  return &static RFFeatureFlags.ResponseFramework.forceEnabled;
}

uint64_t static RFFeatureFlags.ResponseFramework.forceEnabled.getter()
{
  if (one-time initialization token for forceEnabled != -1)
  {
    OUTLINED_FUNCTION_0_29();
    swift_once();
  }

  swift_beginAccess();
}

uint64_t static RFFeatureFlags.ResponseFramework.forceEnabled.setter(uint64_t a1)
{
  if (one-time initialization token for forceEnabled != -1)
  {
    OUTLINED_FUNCTION_0_29();
    swift_once();
  }

  swift_beginAccess();
  static RFFeatureFlags.ResponseFramework.forceEnabled = a1;
}

uint64_t (*static RFFeatureFlags.ResponseFramework.forceEnabled.modify())()
{
  if (one-time initialization token for forceEnabled != -1)
  {
    OUTLINED_FUNCTION_0_29();
    swift_once();
  }

  OUTLINED_FUNCTION_1_42();
  swift_beginAccess();
  return static LocaleUtils.intentBundleCache.modify;
}

uint64_t RFFeatureFlags.ResponseFramework.withForcedEnabled<A>(_:block:)(uint64_t a1, void (*a2)(uint64_t))
{
  if (one-time initialization token for forceEnabled != -1)
  {
    OUTLINED_FUNCTION_0_29();
    swift_once();
  }

  swift_beginAccess();
  v4 = specialized Dictionary.subscript.getter(v2, static RFFeatureFlags.ResponseFramework.forceEnabled);
  swift_endAccess();
  OUTLINED_FUNCTION_1_42();
  swift_beginAccess();
  swift_isUniquelyReferenced_nonNull_native();
  v5 = OUTLINED_FUNCTION_2_39();
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v5, v6);
  static RFFeatureFlags.ResponseFramework.forceEnabled = v9;
  v7 = swift_endAccess();
  a2(v7);
  return $defer #1 <A>() in RFFeatureFlags.ResponseFramework.withForcedEnabled<A>(_:block:)(v2, v4);
}

uint64_t RFFeatureFlags.ResponseFramework.withForcedEnabled<A>(_:block:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 80) = a4;
  *(v5 + 88) = v4;
  *(v5 + 112) = a2;
  *(v5 + 64) = a1;
  *(v5 + 72) = a3;
  return _swift_task_switch(RFFeatureFlags.ResponseFramework.withForcedEnabled<A>(_:block:), 0, 0);
}

uint64_t RFFeatureFlags.ResponseFramework.withForcedEnabled<A>(_:block:)()
{
  if (one-time initialization token for forceEnabled != -1)
  {
    OUTLINED_FUNCTION_0_29();
    swift_once();
  }

  v1 = *(v0 + 88);
  v2 = *(v0 + 72);
  v3 = *(v0 + 112);
  swift_beginAccess();
  *(v0 + 113) = specialized Dictionary.subscript.getter(v1, static RFFeatureFlags.ResponseFramework.forceEnabled);
  swift_endAccess();
  OUTLINED_FUNCTION_1_42();
  swift_beginAccess();
  swift_isUniquelyReferenced_nonNull_native();
  v10 = static RFFeatureFlags.ResponseFramework.forceEnabled;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v3, v1);
  static RFFeatureFlags.ResponseFramework.forceEnabled = v10;
  swift_endAccess();
  v9 = (v2 + *v2);
  v4 = v2[1];
  v5 = swift_task_alloc();
  *(v0 + 96) = v5;
  *v5 = v0;
  v5[1] = RFFeatureFlags.ResponseFramework.withForcedEnabled<A>(_:block:);
  v6 = *(v0 + 80);
  v7 = *(v0 + 64);

  return v9(v7);
}

{
  v2 = *(*v1 + 96);
  v5 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v3 = RFFeatureFlags.ResponseFramework.withForcedEnabled<A>(_:block:);
  }

  else
  {
    v3 = RFFeatureFlags.ResponseFramework.withForcedEnabled<A>(_:block:);
  }

  return _swift_task_switch(v3, 0, 0);
}

{
  $defer #1 <A>() in RFFeatureFlags.ResponseFramework.withForcedEnabled<A>(_:block:)(*(v0 + 88), *(v0 + 113));
  v1 = *(v0 + 8);

  return v1();
}

{
  $defer #1 <A>() in RFFeatureFlags.ResponseFramework.withForcedEnabled<A>(_:block:)(*(v0 + 88), *(v0 + 113));
  v1 = *(v0 + 8);
  v2 = *(v0 + 104);

  return v1();
}

uint64_t $defer #1 <A>() in RFFeatureFlags.ResponseFramework.withForcedEnabled<A>(_:block:)(uint64_t a1, char a2)
{
  if (a2 == 2)
  {
    if (one-time initialization token for forceEnabled != -1)
    {
      OUTLINED_FUNCTION_0_29();
      swift_once();
    }

    OUTLINED_FUNCTION_1_42();
    swift_beginAccess();
    v3 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
    if (v4)
    {
      v5 = v3;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v14 = static RFFeatureFlags.ResponseFramework.forceEnabled;
      v7 = *(static RFFeatureFlags.ResponseFramework.forceEnabled + 24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVy10SnippetKit14RFFeatureFlagsO17ResponseFrameworkOSbGMd, &_ss17_NativeDictionaryVy10SnippetKit14RFFeatureFlagsO17ResponseFrameworkOSbGMR);
      _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v7);
      v8 = *(v14 + 48);
      v9 = type metadata accessor for RFFeatureFlags.ResponseFramework();
      (*(*(v9 - 8) + 8))(v8 + *(*(v9 - 8) + 72) * v5, v9);
      lazy protocol witness table accessor for type RFFeatureFlags.ResponseFramework and conformance RFFeatureFlags.ResponseFramework(&lazy protocol witness table cache variable for type RFFeatureFlags.ResponseFramework and conformance RFFeatureFlags.ResponseFramework);
      _NativeDictionary._delete(at:)();
      static RFFeatureFlags.ResponseFramework.forceEnabled = v14;
    }
  }

  else
  {
    if (one-time initialization token for forceEnabled != -1)
    {
      OUTLINED_FUNCTION_0_29();
      swift_once();
    }

    OUTLINED_FUNCTION_1_42();
    swift_beginAccess();
    swift_isUniquelyReferenced_nonNull_native();
    v10 = OUTLINED_FUNCTION_2_39();
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v10, v11);
    static RFFeatureFlags.ResponseFramework.forceEnabled = v13;
  }

  return swift_endAccess();
}

uint64_t implicit closure #1 in OSLogInterpolation.appendInterpolation(_:format:privacy:)(uint64_t (*a1)(void))
{
  return a1() & 1;
}

{
  return a1();
}

uint64_t thunk for @escaping @callee_guaranteed () -> (@unowned Int32)@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type RFFeatureFlags.ResponseFramework and conformance RFFeatureFlags.ResponseFramework(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for RFFeatureFlags.ResponseFramework();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t WFShowAlertFlow.exitValue.getter()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 128);
  if (v2 == 2)
  {
    v4 = *(v0 + 120);
    swift_errorRetain();
  }

  else if (v2 == 1)
  {
    v3 = v1;
  }

  else
  {
    lazy protocol witness table accessor for type WFShowAlertFlowError and conformance WFShowAlertFlowError();
    return swift_allocError();
  }

  return v1;
}

uint64_t WFShowAlertFlow.__allocating_init(shortcutName:request:appBundleId:dialogTemplating:deviceState:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void *a6, uint8_t *a7)
{
  v12 = swift_allocObject();
  v13 = OUTLINED_FUNCTION_0_13();
  WFShowAlertFlow.init(shortcutName:request:appBundleId:dialogTemplating:deviceState:)(v13, v14, a3, a4, a5, a6, a7);
  return v12;
}

uint64_t WFShowAlertFlow.init(shortcutName:request:appBundleId:dialogTemplating:deviceState:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void *a6, uint8_t *a7)
{
  v8 = v7;
  v15 = type metadata accessor for CATOption();
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  OUTLINED_FUNCTION_3();
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v17 = type metadata accessor for Logger();
  __swift_project_value_buffer(v17, static Logger.voiceCommands);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = OUTLINED_FUNCTION_52();
    OUTLINED_FUNCTION_45(v20);
    _os_log_impl(&dword_0, v18, v19, "#WFShowAlertFlow initialized.", a7, 2u);
    OUTLINED_FUNCTION_15_0();
  }

  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  *(v8 + 32) = a3;
  *(v8 + 40) = a4;
  *(v8 + 48) = a5;
  outlined init with copy of DeviceState(a7, v8 + 56);
  if (a6)
  {
    v21 = a3;
  }

  else
  {
    v36 = a7;
    outlined init with copy of DeviceState(a7, v37);
    v22 = one-time initialization token for shared;
    v23 = a3;
    v24 = a3;
    if (v22 != -1)
    {
      swift_once();
    }

    v25 = static WFDialogState.shared;
    type metadata accessor for WorkflowRunnerCATs();

    static CATOption.defaultMode.getter();
    OUTLINED_FUNCTION_9_23();
    v34 = CATWrapper.__allocating_init(options:globals:)();
    type metadata accessor for WorkflowRunnerCATsSimple();
    OUTLINED_FUNCTION_19_14();
    OUTLINED_FUNCTION_9_23();
    v26 = CATWrapperSimple.__allocating_init(options:globals:)();
    type metadata accessor for RunCustomIntentCATs();
    OUTLINED_FUNCTION_19_14();
    OUTLINED_FUNCTION_9_23();
    v27 = CATWrapper.__allocating_init(options:globals:)();
    type metadata accessor for RunCustomIntentCATsSimple();
    OUTLINED_FUNCTION_19_14();
    OUTLINED_FUNCTION_9_23();
    v28 = CATWrapperSimple.__allocating_init(options:globals:)();
    type metadata accessor for RunVoiceCommandCATs();
    OUTLINED_FUNCTION_19_14();
    OUTLINED_FUNCTION_9_23();
    v29 = CATWrapper.__allocating_init(options:globals:)();
    type metadata accessor for RunVoiceCommandCATsSimple();
    OUTLINED_FUNCTION_19_14();
    OUTLINED_FUNCTION_9_23();
    v30 = CATWrapperSimple.__allocating_init(options:globals:)();
    type metadata accessor for WorkflowRunnerCATPatternsExecutor(0);
    OUTLINED_FUNCTION_19_14();
    OUTLINED_FUNCTION_9_23();
    v31 = CATWrapper.__allocating_init(options:globals:)();
    type metadata accessor for WorkflowDialogTemplating();
    swift_allocObject();
    a6 = WorkflowDialogTemplating.init(deviceState:dialogState:workflowCatWrapper:workflowCatWrapperSimple:runCustomCatWrapper:runCustomCatWrapperSimple:runVoiceCommandsCatWrapper:runVoiceCommandsCatWrapperSimple:catPatternsExecutor:)(v37, v25, v34, v26, v27, v28, v29, v30, v31);
    a7 = v36;
    a3 = v23;
  }

  *(v8 + 96) = a6;
  type metadata accessor for WorkflowSnippetProvider();
  v32 = static WorkflowSnippetProvider.getSnippetProvider(deviceState:)(a7);

  __swift_destroy_boxed_opaque_existential_1Tm(a7);
  *(v8 + 104) = v32;
  type metadata accessor for WorkflowNLContextProvider();
  *(v8 + 112) = swift_allocObject();
  *(v8 + 120) = 0;
  *(v8 + 128) = 3;
  return v8;
}

uint64_t WFShowAlertFlow.on(input:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Parse();
  v5 = OUTLINED_FUNCTION_7_1(v4);
  v48 = v6;
  v8 = *(v7 + 64);
  __chkstk_darwin(v5);
  OUTLINED_FUNCTION_3();
  v11 = v10 - v9;
  v12 = type metadata accessor for Input();
  v13 = OUTLINED_FUNCTION_7_1(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  __chkstk_darwin(v13);
  OUTLINED_FUNCTION_3();
  v20 = v19 - v18;
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v21 = type metadata accessor for Logger();
  __swift_project_value_buffer(v21, static Logger.voiceCommands);
  (*(v15 + 16))(v20, a1, v12);
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v46 = v4;
    v24 = swift_slowAlloc();
    v47 = v1;
    v25 = swift_slowAlloc();
    v49 = v25;
    *v24 = 136315138;
    v26 = Input.description.getter();
    v28 = v27;
    v29 = *(v15 + 8);
    v30 = OUTLINED_FUNCTION_0_13();
    v31(v30);
    v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v28, &v49);

    *(v24 + 4) = v32;
    _os_log_impl(&dword_0, v22, v23, "#WFShowAlertFlow received input: %s", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v25);
    v2 = v47;
    OUTLINED_FUNCTION_15_0();
    v4 = v46;
    OUTLINED_FUNCTION_15_0();
  }

  else
  {

    v33 = *(v15 + 8);
    v34 = OUTLINED_FUNCTION_0_13();
    v35(v34);
  }

  if (*(v2 + 128) != 3 || *(v2 + 120) != 1)
  {
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = OUTLINED_FUNCTION_52();
      OUTLINED_FUNCTION_45(v39);
      v40 = "#WFShowAlertFlow on input, state is not waitingForResponse";
LABEL_15:
      _os_log_impl(&dword_0, v37, v38, v40, v23, 2u);
      OUTLINED_FUNCTION_17();
      goto LABEL_16;
    }

    goto LABEL_16;
  }

  Input.parse.getter();
  v41 = static VoiceCommandConfirmationUtils.getVoiceCommandConfirmation(parse:)(v11);
  (*(v48 + 8))(v11, v4);
  if (v41 == 3)
  {
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v37, v38))
    {
      v42 = OUTLINED_FUNCTION_52();
      OUTLINED_FUNCTION_45(v42);
      v40 = "#WFShowAlertFlow on input, no confirmation state";
      goto LABEL_15;
    }

LABEL_16:

    return 0;
  }

  v44 = *(v2 + 120);
  *(v2 + 120) = v41;
  v45 = *(v2 + 128);
  *(v2 + 128) = 0;
  outlined consume of WFShowAlertFlow.State(v44, v45);
  return 1;
}

uint64_t WFShowAlertFlow.execute()(uint64_t a1)
{
  *(v2 + 96) = a1;
  *(v2 + 104) = v1;
  v3 = OUTLINED_FUNCTION_4();
  return _swift_task_switch(v3, v4, v5);
}

uint64_t WFShowAlertFlow.execute()()
{
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v1 = v0[13];
  v2 = type metadata accessor for Logger();
  v0[14] = __swift_project_value_buffer(v2, static Logger.voiceCommands);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[13];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 136315138;
    v8 = [*(v5 + 32) message];
    if (v8)
    {
      v9 = v8;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    v10 = OUTLINED_FUNCTION_0_13();
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, v12);

    *(v6 + 4) = v13;
    _os_log_impl(&dword_0, v3, v4, "#WFShowAlertFlow begins execution, message: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    OUTLINED_FUNCTION_15_0();
    OUTLINED_FUNCTION_15_0();
  }

  v14 = v0[13];
  v15 = *(v14 + 120);
  switch(*(v14 + 128))
  {
    case 1:
      v22 = Logger.logObject.getter();
      v35 = static os_log_type_t.error.getter();
      if (!OUTLINED_FUNCTION_30_1(v35))
      {
        goto LABEL_21;
      }

      v36 = OUTLINED_FUNCTION_52();
      OUTLINED_FUNCTION_45(v36);
      v27 = "#WFShowAlertFlow completed";
      goto LABEL_20;
    case 2:
      v22 = Logger.logObject.getter();
      v23 = static os_log_type_t.error.getter();
      if (OUTLINED_FUNCTION_30_1(v23))
      {
        v24 = OUTLINED_FUNCTION_52();
        OUTLINED_FUNCTION_45(v24);
        v27 = "#WFShowAlertFlow error state";
LABEL_20:
        OUTLINED_FUNCTION_26(&dword_0, v25, v26, v27);
        OUTLINED_FUNCTION_17();
      }

LABEL_21:
      v37 = v0[12];

      static ExecuteResponse.complete()();
      goto LABEL_32;
    case 3:
      v28 = Logger.logObject.getter();
      v29 = static os_log_type_t.debug.getter();
      v30 = OUTLINED_FUNCTION_30_1(v29);
      if (v15)
      {
        if (v30)
        {
          v31 = OUTLINED_FUNCTION_52();
          OUTLINED_FUNCTION_45(v31);
          OUTLINED_FUNCTION_26(&dword_0, v32, v33, "#WFShowAlertFlow waiting for response");
          OUTLINED_FUNCTION_17();
        }

        v34 = v0[12];

        goto LABEL_31;
      }

      if (v30)
      {
        v42 = OUTLINED_FUNCTION_52();
        OUTLINED_FUNCTION_45(v42);
        OUTLINED_FUNCTION_26(&dword_0, v43, v44, "#WFShowAlertFlow submitting output");
        OUTLINED_FUNCTION_17();
      }

      v45 = swift_task_alloc();
      v0[15] = v45;
      *v45 = v0;
      v45[1] = WFShowAlertFlow.execute();
      v46 = v0[13];

      return WFShowAlertFlow.buildOutput()();
    default:
      v16 = Logger.logObject.getter();
      v17 = static os_log_type_t.debug.getter();
      if (OUTLINED_FUNCTION_30_1(v17))
      {
        v18 = OUTLINED_FUNCTION_52();
        OUTLINED_FUNCTION_45(v18);
        OUTLINED_FUNCTION_26(&dword_0, v19, v20, "#WFShowAlertFlow responseReceived");
        OUTLINED_FUNCTION_17();
      }

      if (v15 - 1 < 2)
      {
        v21 = [objc_allocWithZone(WFDialogResponse) initWithCancelled:1];
LABEL_24:
        v38 = v0[12];
        v39 = *(v14 + 120);
        *(v14 + 120) = v21;
        v40 = *(v14 + 128);
        *(v14 + 128) = 1;
        v41 = v21;
        outlined consume of WFShowAlertFlow.State(v39, v40);
        static ExecuteResponse.ongoing(requireInput:)();

        goto LABEL_32;
      }

      if (!v15)
      {
        v21 = [objc_allocWithZone(WFDialogResponse) initWithResponseCode:0];
        goto LABEL_24;
      }

      v48 = v0[12];
      v49 = *(v14 + 120);
      *(v14 + 120) = 0;
      v50 = *(v14 + 128);
      *(v14 + 128) = 3;
      outlined consume of WFShowAlertFlow.State(v49, v50);
LABEL_31:
      static ExecuteResponse.ongoing(requireInput:)();
LABEL_32:
      OUTLINED_FUNCTION_6_0();

      return v51();
  }
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_0();
  *v3 = v2;
  v5 = *(v4 + 120);
  v6 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v7 = v6;
  *(v8 + 128) = v0;

  if (v0)
  {
    v9 = WFShowAlertFlow.execute();
  }

  else
  {
    v9 = WFShowAlertFlow.execute();
  }

  return _swift_task_switch(v9, 0, 0);
}

{
  static OutputPublisherFactory.makeOutputPublisherAsync()();
  OUTLINED_FUNCTION_17_23();
  v3 = async function pointer to dispatch thunk of OutputPublisherAsync.publish(output:)[1];
  v4 = swift_task_alloc();
  *(v2 + 136) = v4;
  *v4 = v2;
  v4[1] = WFShowAlertFlow.execute();

  return dispatch thunk of OutputPublisherAsync.publish(output:)(v2 + 16, v0, v1);
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
    v9 = WFShowAlertFlow.execute();
  }

  else
  {
    v9 = WFShowAlertFlow.execute();
  }

  return _swift_task_switch(v9, 0, 0);
}

{
  OUTLINED_FUNCTION_8_0();
  v2 = v0[12];
  v1 = v0[13];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  v3 = *(v1 + 120);
  *(v1 + 120) = 1;
  v4 = *(v1 + 128);
  *(v1 + 128) = 3;
  outlined consume of WFShowAlertFlow.State(v3, v4);
  static ExecuteResponse.ongoing(requireInput:)();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  OUTLINED_FUNCTION_6_0();

  return v5();
}

{
  OUTLINED_FUNCTION_15_2();
  v2 = v0[16];
  v3 = v0[14];
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = OUTLINED_FUNCTION_52();
    v1 = v6;
    *v6 = 0;
    OUTLINED_FUNCTION_40(&dword_0, v7, v8, "#WFShowAlertFlow error submitting output");
    OUTLINED_FUNCTION_15_0();
  }

  v9 = v0[12];
  v10 = v0[13];

  OUTLINED_FUNCTION_15_22();
  outlined consume of WFShowAlertFlow.State(v4, v1);
  static ExecuteResponse.ongoing(requireInput:)();

  OUTLINED_FUNCTION_6_0();

  return v11();
}

{
  OUTLINED_FUNCTION_15_2();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  v2 = v0[18];
  v3 = v0[14];
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = OUTLINED_FUNCTION_52();
    v1 = v6;
    *v6 = 0;
    OUTLINED_FUNCTION_40(&dword_0, v7, v8, "#WFShowAlertFlow error submitting output");
    OUTLINED_FUNCTION_15_0();
  }

  v9 = v0[12];
  v10 = v0[13];

  OUTLINED_FUNCTION_15_22();
  outlined consume of WFShowAlertFlow.State(v4, v1);
  static ExecuteResponse.ongoing(requireInput:)();

  OUTLINED_FUNCTION_6_0();

  return v11();
}

uint64_t WFShowAlertFlow.execute(completion:)()
{
  type metadata accessor for WFShowAlertFlow();
  lazy protocol witness table accessor for type WFShowAlertFlow and conformance WFShowAlertFlow(&lazy protocol witness table cache variable for type WFShowAlertFlow and conformance WFShowAlertFlow, v0, type metadata accessor for WFShowAlertFlow);
  return Flow.deferToExecuteAsync(_:)();
}

uint64_t WFShowAlertFlow.buildOutput()()
{
  OUTLINED_FUNCTION_8_0();
  v1[17] = v2;
  v1[18] = v0;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR) - 8) + 64) + 15;
  v1[19] = swift_task_alloc();
  v4 = type metadata accessor for DialogPhase();
  v1[20] = v4;
  OUTLINED_FUNCTION_5_0(v4);
  v1[21] = v5;
  v7 = *(v6 + 64) + 15;
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  v8 = type metadata accessor for OutputGenerationManifest();
  v1[24] = v8;
  OUTLINED_FUNCTION_5_0(v8);
  v1[25] = v9;
  v11 = *(v10 + 64) + 15;
  v1[26] = swift_task_alloc();
  v12 = type metadata accessor for NLContextUpdate();
  v1[27] = v12;
  OUTLINED_FUNCTION_5_0(v12);
  v1[28] = v13;
  v15 = *(v14 + 64) + 15;
  v1[29] = swift_task_alloc();
  v16 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v16, v17, v18);
}

{
  v1 = v0[29];
  v2 = v0[18];
  (*(**(v2 + 112) + 208))();
  v3 = *(v2 + 96);
  v4 = *(v2 + 32);
  v0[30] = v4;
  v5 = *(*v3 + 168);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  v0[31] = v7;
  *v7 = v0;
  v7[1] = WFShowAlertFlow.buildOutput();

  return v9(v4);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_0();
  *v3 = v2;
  v5 = *(v4 + 248);
  *v3 = *v1;
  *(v2 + 256) = v6;
  *(v2 + 264) = v0;

  if (v0)
  {
    v7 = WFShowAlertFlow.buildOutput();
  }

  else
  {
    v7 = WFShowAlertFlow.buildOutput();
  }

  return _swift_task_switch(v7, 0, 0);
}

{
  v1 = v0[32];
  v2 = v0[28];
  v3 = v0[26];
  v58 = v0[27];
  v60 = v0[29];
  v5 = v0[22];
  v4 = v0[23];
  v6 = v0[21];
  v56 = v0[20];
  v9 = v0 + 18;
  v8 = v0[18];
  v7 = v9[1];
  static DialogPhase.confirmation.getter();
  v10 = [v1 catId];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  (*(v6 + 16))(v5, v4, v56);
  OutputGenerationManifest.init(dialogPhase:_:)();
  OutputGenerationManifest.responseViewId.setter();
  (*(v6 + 8))(v4, v56);
  (*(v2 + 16))(v7, v60, v58);
  __swift_storeEnumTagSinglePayload(v7, 0, 1, v58);
  OutputGenerationManifest.nlContextUpdate.setter();
  OutputGenerationManifest.canUseServerTTS.setter();
  OutputGenerationManifest.listenAfterSpeaking.setter();
  OUTLINED_FUNCTION_17_23();
  if (dispatch thunk of DeviceState.isCarPlay.getter() & 1) != 0 || (OUTLINED_FUNCTION_17_23(), (dispatch thunk of DeviceState.isHomePod.getter()))
  {
    v11 = *(v62 + 256);
    v12 = type metadata accessor for ResponseFactory();
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    swift_allocObject();
    *(v62 + 296) = ResponseFactory.init()();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v15 = swift_allocObject();
    *(v62 + 304) = v15;
    *(v15 + 16) = xmmword_216010;
    *(v15 + 32) = v11;
    OUTLINED_FUNCTION_22_15(&async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(dialog:outputGenerationManifest:));
    v16 = swift_task_alloc();
    *(v62 + 312) = v16;
    *v16 = v62;
    v16[1] = WFShowAlertFlow.buildOutput();
    v17 = *(v62 + 208);
    v18 = *(v62 + 136);

    return v60(v18, v15, v17);
  }

  else
  {
    v20 = *(v62 + 240);
    v21 = *(v62 + 144);
    outlined init with copy of DeviceState(v8 + 56, v62 + 56);
    v55 = *(v21 + 16);
    v57 = *(v21 + 24);
    v22 = [v20 okButton];
    v23 = [v22 title];

    v59 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v61 = v24;

    v25 = [v20 cancelButton];
    if (v25)
    {
      v26 = v25;
      v27 = [v25 title];

      v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v30 = v29;
    }

    else
    {
      v28 = 0;
      v30 = 0xE000000000000000;
    }

    v31 = [*(v62 + 240) promptForDisplay];
    if (v31)
    {
      v32 = v31;
      v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v35 = v34;
    }

    else
    {
      v33 = 0;
      v35 = 0;
    }

    v36 = [*(v62 + 240) message];
    if (v36)
    {
      v37 = v36;
      v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v40 = v39;
    }

    else
    {
      v38 = 0;
      v40 = 0xE000000000000000;
    }

    v41 = *(v62 + 88);
    __swift_project_boxed_opaque_existential_1((v62 + 56), *(v62 + 80));
    if (dispatch thunk of DeviceState.isWatch.getter())
    {

      v42 = &type metadata for WorkflowDataModels.WatchModel;
      v43 = &protocol witness table for WorkflowDataModels.WatchModel;
      *(v62 + 40) = &type metadata for WorkflowDataModels.WatchModel;
      *(v62 + 48) = &protocol witness table for WorkflowDataModels.WatchModel;
      v44 = swift_allocObject();
      *(v44 + 16) = v55;
      *(v44 + 24) = v57;
      *(v44 + 32) = v59;
      *(v44 + 40) = v61;
      *(v44 + 48) = v28;
      *(v44 + 56) = v30;
      *(v44 + 64) = 0u;
      *(v44 + 80) = 0u;
    }

    else
    {
      v42 = &type metadata for WorkflowDataModels.ShowAlertModel;
      v43 = &protocol witness table for WorkflowDataModels.ShowAlertModel;
      *(v62 + 40) = &type metadata for WorkflowDataModels.ShowAlertModel;
      *(v62 + 48) = &protocol witness table for WorkflowDataModels.ShowAlertModel;
      v44 = swift_allocObject();
      *(v44 + 16) = v59;
      *(v44 + 24) = v61;
      *(v44 + 32) = v28;
      *(v44 + 40) = v30;
      *(v44 + 48) = v33;
      *(v44 + 56) = v35;
      *(v44 + 64) = v38;
      *(v44 + 72) = v40;
    }

    *(v62 + 16) = v44;
    v45 = *(v62 + 256);
    __swift_destroy_boxed_opaque_existential_1Tm((v62 + 56));
    v46 = type metadata accessor for ResponseFactory();
    v47 = *(v46 + 48);
    v48 = *(v46 + 52);
    swift_allocObject();
    *(v62 + 272) = ResponseFactory.init()();
    __swift_project_boxed_opaque_existential_1((v62 + 16), v42);
    v49 = v43[1];
    *(v62 + 120) = type metadata accessor for WorkflowDataModels(0);
    *(v62 + 128) = lazy protocol witness table accessor for type WFShowAlertFlow and conformance WFShowAlertFlow(&lazy protocol witness table cache variable for type WorkflowDataModels and conformance WorkflowDataModels, 255, type metadata accessor for WorkflowDataModels);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v62 + 96));
    v49(boxed_opaque_existential_1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v51 = swift_allocObject();
    *(v62 + 280) = v51;
    *(v51 + 16) = xmmword_216010;
    *(v51 + 32) = v45;
    OUTLINED_FUNCTION_22_15(&async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(resultModel:dialog:outputGenerationManifest:));
    v52 = swift_task_alloc();
    *(v62 + 288) = v52;
    *v52 = v62;
    v52[1] = WFShowAlertFlow.buildOutput();
    v53 = *(v62 + 208);
    v54 = *(v62 + 136);

    return v61(v54, v62 + 96, v51, v53);
  }
}

{
  OUTLINED_FUNCTION_9_0();
  v2 = v1;
  OUTLINED_FUNCTION_3_0();
  *v3 = v2;
  v5 = v4[36];
  v6 = v4[35];
  v7 = v4[34];
  v8 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v9 = v8;

  __swift_destroy_boxed_opaque_existential_1Tm((v2 + 96));
  v10 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v10, v11, v12);
}

{
  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_24_15();
  (*(v6 + 8))(v2, v4);
  (*(v5 + 8))(v1, v0);
  __swift_destroy_boxed_opaque_existential_1Tm((v3 + 16));
  OUTLINED_FUNCTION_23_12();

  OUTLINED_FUNCTION_6_0();

  return v7();
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v2 = v1[39];
  v3 = v1[38];
  v4 = v1[37];
  v5 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v6 = v5;

  v7 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v7, v8, v9);
}

{
  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_24_15();
  (*(v5 + 8))(v2, v3);
  (*(v4 + 8))(v1, v0);
  OUTLINED_FUNCTION_23_12();

  OUTLINED_FUNCTION_6_0();

  return v6();
}

{
  OUTLINED_FUNCTION_15_2();
  v1 = v0[26];
  v3 = v0[22];
  v2 = v0[23];
  v4 = v0[19];
  (*(v0[28] + 8))(v0[29], v0[27]);

  OUTLINED_FUNCTION_6_0();
  v6 = v0[33];

  return v5();
}

uint64_t WFConfirmInteractionFlow.deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 48);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
  v3 = *(v0 + 96);

  v4 = *(v0 + 104);

  v5 = *(v0 + 112);

  outlined consume of WFShowAlertFlow.State(*(v0 + 120), *(v0 + 128));
  return v0;
}

uint64_t WFConfirmInteractionFlow.__deallocating_deinit()
{
  WFConfirmInteractionFlow.deinit();

  return swift_deallocClassInstance();
}

uint64_t protocol witness for Flow.execute() in conformance WFShowAlertFlow(uint64_t a1)
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

uint64_t protocol witness for Flow.exitValue.getter in conformance WFShowAlertFlow@<X0>(uint64_t a1@<X8>)
{
  result = (*(**v1 + 168))();
  *a1 = result;
  *(a1 + 8) = v4 & 1;
  return result;
}

void outlined consume of WFShowAlertFlow.State(id a1, char a2)
{
  if (a2 == 2)
  {
  }

  else if (a2 == 1)
  {
  }
}

_BYTE *storeEnumTagSinglePayload for WFShowAlertFlowError(_BYTE *result, int a2, int a3)
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
      JUMPOUT(0x12FE30);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_18SiriLinkFlowPlugin011WFShowAlertC0C5State33_0E609C7F55F99E1F092CF826B7D12744LLO(uint64_t a1)
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

uint64_t sub_12FE94()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t lazy protocol witness table accessor for type WFShowAlertFlow and conformance WFShowAlertFlow(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_12FF2C()
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

uint64_t OUTLINED_FUNCTION_15_22()
{
  v3 = *(v1 + 120);
  *(v1 + 120) = v0;
  v4 = *(v1 + 128);
  *(v1 + 128) = 2;

  return swift_errorRetain();
}

uint64_t OUTLINED_FUNCTION_19_14()
{

  return static CATOption.defaultMode.getter();
}

id OUTLINED_FUNCTION_22_15@<X0>(int *a1@<X8>)
{
  v3 = a1[1];
  v5 = a1 + *a1;

  return v1;
}

uint64_t OUTLINED_FUNCTION_23_12()
{
  v2 = v0[29];
  v3 = v0[26];
  v5 = v0[22];
  v4 = v0[23];
  v6 = v0[19];
}

void OUTLINED_FUNCTION_24_15()
{
  v2 = v0[32];
  v4 = v0[28];
  v3 = v0[29];
  v6 = v0[26];
  v5 = v0[27];
  v7 = v0[24];
  v8 = v0[25];
}

uint64_t static CustomTypeReference.buildFromAttributeHash(attributeHash:)(uint64_t a1)
{
  static CustomTypeReference.getTypeString(attributeHash:)(a1);
  v2 = v1;
  v4 = v3;
  if (one-time initialization token for TypeNameMap != -1)
  {
    OUTLINED_FUNCTION_1_43();
    swift_once();
  }

  v5 = specialized Dictionary.subscript.getter(v2, v4, static CustomTypeReference.TypeNameMap);
  v7 = v6;

  OUTLINED_FUNCTION_17_24();
  if (v7)
  {
    return v5;
  }

  else
  {
    return 0x697461646E756F66;
  }
}

Swift::String __swiftcall CustomTypeReference.asString()()
{
  v4 = v3;
  v5 = v2;
  v11 = v0;
  v12 = v1;

  v6._countAndFlagsBits = 46;
  v6._object = 0xE100000000000000;
  String.append(_:)(v6);

  v7._countAndFlagsBits = v5;
  v7._object = v4;
  String.append(_:)(v7);

  v8 = v11;
  v9 = v12;
  result._object = v9;
  result._countAndFlagsBits = v8;
  return result;
}

uint64_t static CustomTypeReference.fromSlotValueType(valueType:)(uint64_t a1)
{
  v1 = static CustomTypeReference.typeString(valueType:)(a1);
  v3 = v2;
  if (one-time initialization token for TypeNameMap != -1)
  {
    OUTLINED_FUNCTION_1_43();
    swift_once();
  }

  v4 = 0x697461646E756F66;
  v5 = static CustomTypeReference.TypeNameMap;
  if (*(&dword_10 + static CustomTypeReference.TypeNameMap))
  {
    v6 = specialized __RawDictionaryStorage.find<A>(_:)(v1, v3);
    if (v7)
    {
      v8 = (*&stru_20.segname[v5 + 16] + 32 * v6);
      v4 = *v8;
      v9 = v8[1];
      v11 = v8[2];
      v10 = v8[3];
    }
  }

  return v4;
}

uint64_t CustomIntentDefinition.requestDefinition.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

void *static CustomRequestDefinition.buildFromIntentDescription(intentDescription:)(void *a1)
{
  v1 = outlined bridged method (pb) of @objc INCodableDescription.dictionaryRepresentation()(a1);
  if (!v1)
  {
    return 0;
  }

  specialized Dictionary.subscript.getter(0xD000000000000012, 0x80000000002339B0, v1, v34);

  if (!v35)
  {
    outlined destroy of Any?(v34);
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayypGMd, &_sSayypGMR);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v2 = *(v32[0] + 16);
  if (v2)
  {
    v33 = _swiftEmptyArrayStorage;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    v3 = _swiftEmptyArrayStorage;
    v4 = v32[0] + 32;
    do
    {
      outlined init with copy of Any(v4, v34);
      outlined init with copy of Any(v34, v32);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd, &_sSDySSypGMR);
      swift_dynamicCast();
      if (*(v30 + 16) && (v5 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000015, 0x80000000002339D0), (v6 & 1) != 0) && (outlined init with copy of Any(*(v30 + 56) + 32 * v5, v32), swift_dynamicCast()))
      {
        v7 = v31;
        v29 = v30;
      }

      else
      {
        v29 = 0;
        v7 = 0xE000000000000000;
      }

      v28 = v7;
      static CustomTypeReference.getTypeString(attributeHash:)(v30);
      v9 = v8;
      v11 = v10;
      if (one-time initialization token for TypeNameMap != -1)
      {
        OUTLINED_FUNCTION_1_43();
        swift_once();
      }

      v12 = static CustomTypeReference.TypeNameMap;
      if (*(&dword_10 + static CustomTypeReference.TypeNameMap) && (v13 = specialized __RawDictionaryStorage.find<A>(_:)(v9, v11), (v14 & 1) != 0))
      {
        v15 = (*&stru_20.segname[v12 + 16] + 32 * v13);
        v16 = *v15;
        v17 = v15[1];
        v19 = v15[2];
        v18 = v15[3];
      }

      else
      {
        v18 = 0xE600000000000000;
        v16 = 0x697461646E756F66;
        v17 = 0xEA00000000006E6FLL;
        v19 = 0x7463656A624FLL;
      }

      if (*(v30 + 16) && (v20 = CustomParameterOptions.CodingKeys.stringValue.getter(), v22 = specialized __RawDictionaryStorage.find<A>(_:)(v20, v21), (v23 & 1) != 0) && (outlined init with copy of Any(*(v30 + 56) + 32 * v22, v32), (swift_dynamicCast() & 1) != 0))
      {
        v24 = v30;
      }

      else
      {

        v24 = 0;
      }

      __swift_destroy_boxed_opaque_existential_1Tm(v34);
      v33 = v3;
      v25 = v3[2];
      if (v25 >= v3[3] >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v3 = v33;
      }

      v3[2] = v25 + 1;
      v26 = &v3[7 * v25];
      v26[4] = v29;
      v26[5] = v28;
      v26[6] = v16;
      v26[7] = v17;
      v26[8] = v19;
      v26[9] = v18;
      *(v26 + 80) = v24;
      v4 += 32;
      --v2;
    }

    while (v2);
  }

  else
  {

    return _swiftEmptyArrayStorage;
  }

  return v3;
}

uint64_t CustomIntentDefinition.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000011 && 0x8000000000233A50 == a2)
  {

    v4 = 0;
  }

  else
  {
    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance CustomIntentDefinition.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = CustomIntentDefinition.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance CustomIntentDefinition.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CustomIntentDefinition.CodingKeys and conformance CustomIntentDefinition.CodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CustomIntentDefinition.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CustomIntentDefinition.CodingKeys and conformance CustomIntentDefinition.CodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

void CustomIntentDefinition.encode(to:)()
{
  OUTLINED_FUNCTION_18_22();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy18SiriLinkFlowPlugin22CustomIntentDefinitionV10CodingKeys33_E485281BACA7297B5F702477E446A830LLOGMd, &_ss22KeyedEncodingContainerVy18SiriLinkFlowPlugin22CustomIntentDefinitionV10CodingKeys33_E485281BACA7297B5F702477E446A830LLOGMR);
  OUTLINED_FUNCTION_7_1(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v8);
  OUTLINED_FUNCTION_2_40();
  v9 = v2[3];
  v10 = v2[4];
  OUTLINED_FUNCTION_3_31(v2);
  lazy protocol witness table accessor for type CustomIntentDefinition.CodingKeys and conformance CustomIntentDefinition.CodingKeys();
  OUTLINED_FUNCTION_10_29();
  OUTLINED_FUNCTION_8_25();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  lazy protocol witness table accessor for type CustomRequestDefinition and conformance CustomRequestDefinition();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  (*(v5 + 8))(v0, v3);
  OUTLINED_FUNCTION_19_15();
}

void CustomIntentDefinition.init(from:)()
{
  OUTLINED_FUNCTION_18_22();
  OUTLINED_FUNCTION_16_24();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy18SiriLinkFlowPlugin22CustomIntentDefinitionV10CodingKeys33_E485281BACA7297B5F702477E446A830LLOGMd, &_ss22KeyedDecodingContainerVy18SiriLinkFlowPlugin22CustomIntentDefinitionV10CodingKeys33_E485281BACA7297B5F702477E446A830LLOGMR);
  OUTLINED_FUNCTION_7_1(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v5);
  OUTLINED_FUNCTION_2_40();
  v6 = v0[3];
  v7 = v0[4];
  OUTLINED_FUNCTION_3_31(v0);
  lazy protocol witness table accessor for type CustomIntentDefinition.CodingKeys and conformance CustomIntentDefinition.CodingKeys();
  OUTLINED_FUNCTION_7_23();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    lazy protocol witness table accessor for type CustomRequestDefinition and conformance CustomRequestDefinition();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v8 = OUTLINED_FUNCTION_6_26();
    v9(v8);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v0);
  OUTLINED_FUNCTION_19_15();
}

void protocol witness for Decodable.init(from:) in conformance CustomIntentDefinition(void *a1@<X8>)
{
  CustomIntentDefinition.init(from:)();
  if (!v1)
  {
    *a1 = v3;
  }
}

uint64_t static CustomRequestParameterDefinition.buildFromAttributeHash(attributeHash:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  specialized Dictionary.subscript.getter(0xD000000000000015, 0x80000000002339D0, a1, &v16);
  if (!v17)
  {
    outlined destroy of Any?(&v16);
    goto LABEL_5;
  }

  if ((OUTLINED_FUNCTION_2_5() & 1) == 0)
  {
LABEL_5:
    v4 = 0;
    v5 = 0xE000000000000000;
    goto LABEL_6;
  }

  v4 = v14;
  v5 = v15;
LABEL_6:
  v6 = static CustomTypeReference.buildFromAttributeHash(attributeHash:)(a1);
  v8 = v7;
  v10 = v9;
  v12 = v11;
  result = static CustomParameterOptions.buildFromAttributeHash(attributeHash:)(a1);
  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  *(a2 + 24) = v8;
  *(a2 + 32) = v10;
  *(a2 + 40) = v12;
  *(a2 + 48) = result & 1;
  return result;
}

uint64_t CustomRequestDefinition.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6574656D61726170 && a2 == 0xEA00000000007372)
  {

    v4 = 0;
  }

  else
  {
    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance CustomRequestDefinition.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = CustomRequestDefinition.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance CustomRequestDefinition.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CustomRequestDefinition.CodingKeys and conformance CustomRequestDefinition.CodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CustomRequestDefinition.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CustomRequestDefinition.CodingKeys and conformance CustomRequestDefinition.CodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

void CustomRequestDefinition.encode(to:)()
{
  OUTLINED_FUNCTION_18_22();
  v1 = v0;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy18SiriLinkFlowPlugin23CustomRequestDefinitionV10CodingKeys33_E485281BACA7297B5F702477E446A830LLOGMd, &_ss22KeyedEncodingContainerVy18SiriLinkFlowPlugin23CustomRequestDefinitionV10CodingKeys33_E485281BACA7297B5F702477E446A830LLOGMR);
  OUTLINED_FUNCTION_7_1(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v9);
  v11 = v14 - v10;
  v12 = v3[3];
  v13 = v3[4];
  OUTLINED_FUNCTION_3_31(v3);
  lazy protocol witness table accessor for type CustomRequestDefinition.CodingKeys and conformance CustomRequestDefinition.CodingKeys();
  OUTLINED_FUNCTION_8_25();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14[1] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay18SiriLinkFlowPlugin32CustomRequestParameterDefinitionVGMd, &_sSay18SiriLinkFlowPlugin32CustomRequestParameterDefinitionVGMR);
  lazy protocol witness table accessor for type [CustomRequestParameterDefinition] and conformance <A> [A](&lazy protocol witness table cache variable for type [CustomRequestParameterDefinition] and conformance <A> [A], lazy protocol witness table accessor for type CustomRequestParameterDefinition and conformance CustomRequestParameterDefinition);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  (*(v6 + 8))(v11, v4);
  OUTLINED_FUNCTION_19_15();
}

void CustomRequestDefinition.init(from:)()
{
  OUTLINED_FUNCTION_18_22();
  OUTLINED_FUNCTION_16_24();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy18SiriLinkFlowPlugin23CustomRequestDefinitionV10CodingKeys33_E485281BACA7297B5F702477E446A830LLOGMd, &_ss22KeyedDecodingContainerVy18SiriLinkFlowPlugin23CustomRequestDefinitionV10CodingKeys33_E485281BACA7297B5F702477E446A830LLOGMR);
  OUTLINED_FUNCTION_7_1(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v5);
  OUTLINED_FUNCTION_2_40();
  v6 = v0[3];
  v7 = v0[4];
  OUTLINED_FUNCTION_3_31(v0);
  lazy protocol witness table accessor for type CustomRequestDefinition.CodingKeys and conformance CustomRequestDefinition.CodingKeys();
  OUTLINED_FUNCTION_7_23();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay18SiriLinkFlowPlugin32CustomRequestParameterDefinitionVGMd, &_sSay18SiriLinkFlowPlugin32CustomRequestParameterDefinitionVGMR);
    lazy protocol witness table accessor for type [CustomRequestParameterDefinition] and conformance <A> [A](&lazy protocol witness table cache variable for type [CustomRequestParameterDefinition] and conformance <A> [A], lazy protocol witness table accessor for type CustomRequestParameterDefinition and conformance CustomRequestParameterDefinition);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v8 = OUTLINED_FUNCTION_6_26();
    v9(v8);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v0);
  OUTLINED_FUNCTION_19_15();
}

void protocol witness for Decodable.init(from:) in conformance CustomRequestDefinition(void *a1@<X8>)
{
  CustomRequestDefinition.init(from:)();
  if (!v1)
  {
    *a1 = v3;
  }
}

uint64_t CustomRequestParameterDefinition.typeDefinition.getter()
{
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];

  return v1;
}

uint64_t CustomRequestParameterDefinition.typeDefinition.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = v4[3];

  v10 = v4[5];

  v4[2] = a1;
  v4[3] = a2;
  v4[4] = a3;
  v4[5] = a4;
  return result;
}

uint64_t static CustomParameterOptions.buildFromAttributeHash(attributeHash:)(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    return 0;
  }

  v1 = CustomParameterOptions.CodingKeys.stringValue.getter();
  v3 = specialized __RawDictionaryStorage.find<A>(_:)(v1, v2);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_15_23(v3, v4, v5);
  result = swift_dynamicCast();
  if (result)
  {
    return v7;
  }

  return result;
}

void __swiftcall CustomRequestParameterDefinition.init(name:typeDefinition:options:)(SiriLinkFlowPlugin::CustomRequestParameterDefinition *__return_ptr retstr, Swift::String name, SiriLinkFlowPlugin::CustomTypeReference typeDefinition, SiriLinkFlowPlugin::CustomParameterOptions options)
{
  retstr->name = name;
  retstr->typeDefinition = typeDefinition;
  retstr->options = options;
}

uint64_t CustomRequestParameterDefinition.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6966654465707974 && a2 == 0xEE006E6F6974696ELL;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x736E6F6974706FLL && a2 == 0xE700000000000000)
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

uint64_t CustomRequestParameterDefinition.CodingKeys.stringValue.getter(char a1)
{
  if (!a1)
  {
    return 1701667182;
  }

  if (a1 == 1)
  {
    return 0x6966654465707974;
  }

  return 0x736E6F6974706FLL;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance CustomRequestParameterDefinition.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = CustomRequestParameterDefinition.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance CustomRequestParameterDefinition.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CustomRequestParameterDefinition.CodingKeys and conformance CustomRequestParameterDefinition.CodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CustomRequestParameterDefinition.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CustomRequestParameterDefinition.CodingKeys and conformance CustomRequestParameterDefinition.CodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

void CustomRequestParameterDefinition.encode(to:)()
{
  OUTLINED_FUNCTION_18_22();
  v2 = v0;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy18SiriLinkFlowPlugin32CustomRequestParameterDefinitionV10CodingKeys33_E485281BACA7297B5F702477E446A830LLOGMd, &_ss22KeyedEncodingContainerVy18SiriLinkFlowPlugin32CustomRequestParameterDefinitionV10CodingKeys33_E485281BACA7297B5F702477E446A830LLOGMR);
  OUTLINED_FUNCTION_7_1(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v10);
  v12 = &v18 - v11;
  v13 = v4[3];
  v14 = v4[4];
  OUTLINED_FUNCTION_3_31(v4);
  lazy protocol witness table accessor for type CustomRequestParameterDefinition.CodingKeys and conformance CustomRequestParameterDefinition.CodingKeys();
  OUTLINED_FUNCTION_8_25();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v15 = *v2;
  v16 = v2[1];
  LOBYTE(v20) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v1)
  {
    v17 = *(v2 + 2);
    v20 = *(v2 + 1);
    v21 = v17;
    v19 = 1;
    lazy protocol witness table accessor for type CustomTypeReference and conformance CustomTypeReference();
    OUTLINED_FUNCTION_14_21();
    LOBYTE(v20) = *(v2 + 48);
    v19 = 2;
    lazy protocol witness table accessor for type CustomParameterOptions and conformance CustomParameterOptions();
    OUTLINED_FUNCTION_14_21();
  }

  (*(v7 + 8))(v12, v5);
  OUTLINED_FUNCTION_19_15();
}

uint64_t CustomRequestParameterDefinition.init(from:)()
{
  OUTLINED_FUNCTION_16_24();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy18SiriLinkFlowPlugin32CustomRequestParameterDefinitionV10CodingKeys33_E485281BACA7297B5F702477E446A830LLOGMd, &_ss22KeyedDecodingContainerVy18SiriLinkFlowPlugin32CustomRequestParameterDefinitionV10CodingKeys33_E485281BACA7297B5F702477E446A830LLOGMR);
  OUTLINED_FUNCTION_7_1(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v7);
  v8 = v0[3];
  v9 = v0[4];
  OUTLINED_FUNCTION_3_31(v0);
  lazy protocol witness table accessor for type CustomRequestParameterDefinition.CodingKeys and conformance CustomRequestParameterDefinition.CodingKeys();
  OUTLINED_FUNCTION_7_23();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(v0);
  }

  LOBYTE(v17) = 0;
  v10 = KeyedDecodingContainer.decode(_:forKey:)();
  v12 = v11;
  v16 = v10;
  lazy protocol witness table accessor for type CustomTypeReference and conformance CustomTypeReference();
  OUTLINED_FUNCTION_13_19();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  lazy protocol witness table accessor for type CustomParameterOptions and conformance CustomParameterOptions();
  OUTLINED_FUNCTION_13_19();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v13 = OUTLINED_FUNCTION_5_23();
  v14(v13);

  __swift_destroy_boxed_opaque_existential_1Tm(v0);

  *v3 = v16;
  *(v3 + 8) = v12;
  *(v3 + 16) = v17;
  *(v3 + 24) = v18;
  *(v3 + 32) = v19;
  *(v3 + 40) = v20;
  *(v3 + 48) = 0;
  return result;
}

double protocol witness for Decodable.init(from:) in conformance CustomRequestParameterDefinition@<D0>(uint64_t a1@<X8>)
{
  CustomRequestParameterDefinition.init(from:)();
  if (!v1)
  {
    *a1 = v4;
    *(a1 + 16) = v5;
    result = *&v6;
    *(a1 + 32) = v6;
    *(a1 + 48) = v7;
  }

  return result;
}

uint64_t CustomParameterOptions.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x72614369746C756DLL && a2 == 0xED00006C616E6964)
  {

    v4 = 0;
  }

  else
  {
    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance CustomParameterOptions.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = CustomParameterOptions.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance CustomParameterOptions.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CustomParameterOptions.CodingKeys and conformance CustomParameterOptions.CodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CustomParameterOptions.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CustomParameterOptions.CodingKeys and conformance CustomParameterOptions.CodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

void CustomParameterOptions.encode(to:)()
{
  OUTLINED_FUNCTION_18_22();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy18SiriLinkFlowPlugin22CustomParameterOptionsV10CodingKeys33_E485281BACA7297B5F702477E446A830LLOGMd, &_ss22KeyedEncodingContainerVy18SiriLinkFlowPlugin22CustomParameterOptionsV10CodingKeys33_E485281BACA7297B5F702477E446A830LLOGMR);
  OUTLINED_FUNCTION_7_1(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v8);
  OUTLINED_FUNCTION_2_40();
  v9 = v2[3];
  v10 = v2[4];
  OUTLINED_FUNCTION_3_31(v2);
  lazy protocol witness table accessor for type CustomParameterOptions.CodingKeys and conformance CustomParameterOptions.CodingKeys();
  OUTLINED_FUNCTION_10_29();
  OUTLINED_FUNCTION_8_25();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  (*(v5 + 8))(v0, v3);
  OUTLINED_FUNCTION_19_15();
}

void CustomParameterOptions.init(from:)()
{
  OUTLINED_FUNCTION_18_22();
  OUTLINED_FUNCTION_16_24();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy18SiriLinkFlowPlugin22CustomParameterOptionsV10CodingKeys33_E485281BACA7297B5F702477E446A830LLOGMd, &_ss22KeyedDecodingContainerVy18SiriLinkFlowPlugin22CustomParameterOptionsV10CodingKeys33_E485281BACA7297B5F702477E446A830LLOGMR);
  OUTLINED_FUNCTION_7_1(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v5);
  OUTLINED_FUNCTION_2_40();
  v6 = v0[3];
  v7 = v0[4];
  OUTLINED_FUNCTION_3_31(v0);
  lazy protocol witness table accessor for type CustomParameterOptions.CodingKeys and conformance CustomParameterOptions.CodingKeys();
  OUTLINED_FUNCTION_7_23();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    KeyedDecodingContainer.decode(_:forKey:)();
    v8 = OUTLINED_FUNCTION_6_26();
    v9(v8);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v0);
  OUTLINED_FUNCTION_19_15();
}

void protocol witness for Decodable.init(from:) in conformance CustomParameterOptions(_BYTE *a1@<X8>)
{
  CustomParameterOptions.init(from:)();
  if (!v1)
  {
    *a1 = v3 & 1;
  }
}

uint64_t static CustomTypeReference.typeString(valueType:)(uint64_t a1)
{
  v1 = a1 - 1;
  result = 0x676E69727453;
  switch(v1)
  {
    case 0:
      result = 0x6E61656C6F6F42;
      break;
    case 2:
    case 3:
    case 20:
      result = 0x656C62756F44;
      break;
    case 4:
    case 5:
    case 7:
    case 8:
    case 23:
    case 25:
      result = 0x72656765746E49;
      break;
    case 6:
    case 29:
      return result;
    case 9:
      result = 0x6E6F73726550;
      break;
    case 13:
      result = 0x706D6F4365746144;
      break;
    case 15:
      result = 0x65746E49656D6954;
      break;
    case 18:
      result = 0x65636E6174736944;
      break;
    case 26:
      result = 0x72616D6563616C50;
      break;
    case 31:
      result = 0x74617265706D6554;
      break;
    case 35:
      result = 5001813;
      break;
    case 37:
      result = 1936941389;
      break;
    case 38:
      result = 0x656D756C6F56;
      break;
    case 39:
      result = 0x6465657053;
      break;
    case 40:
      result = 0x796772656E45;
      break;
    case 52:
      result = 0x79636E6572727543;
      break;
    default:
      result = 0x7463656A624FLL;
      break;
  }

  return result;
}

int *one-time initialization function for TypeNameMap()
{
  result = Dictionary.init(dictionaryLiteral:)();
  static CustomTypeReference.TypeNameMap = result;
  return result;
}

void static CustomTypeReference.getTypeString(attributeHash:)(uint64_t a1)
{
  if (!*(a1 + 16) || (v2 = specialized __RawDictionaryStorage.find<A>(_:)(0xD00000000000001BLL, 0x80000000002339F0), (v3 & 1) == 0) || (OUTLINED_FUNCTION_15_23(v2, v3, v4), (OUTLINED_FUNCTION_2_5() & 1) == 0))
  {
    static CustomTypeReference.getTypeField(attributeHash:probeKey:)(a1, 0xD000000000000019, 0x8000000000233A10);
    if (!v5)
    {
      static CustomTypeReference.getTypeField(attributeHash:probeKey:)(a1, 0xD000000000000015, 0x8000000000233A30);
      OUTLINED_FUNCTION_17_24();
    }
  }
}

uint64_t static CustomTypeReference.getTypeField(attributeHash:probeKey:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a1 + 16))
  {
    return 0;
  }

  v3 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_15_23(v3, v4, v5);
  if (OUTLINED_FUNCTION_2_5())
  {
    return v7;
  }

  else
  {
    return 0;
  }
}

uint64_t CustomTypeReference.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x63617073656D616ELL && a2 == 0xE900000000000065;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000)
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

uint64_t CustomTypeReference.CodingKeys.stringValue.getter(char a1)
{
  if (a1)
  {
    return 1701667182;
  }

  else
  {
    return 0x63617073656D616ELL;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance CustomTypeReference.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = CustomTypeReference.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance CustomTypeReference.CodingKeys@<X0>(_BYTE *a1@<X8>)
{
  result = CustomTypeReference.CodingKeys.init(intValue:)();
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance CustomTypeReference.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CustomTypeReference.CodingKeys and conformance CustomTypeReference.CodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CustomTypeReference.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CustomTypeReference.CodingKeys and conformance CustomTypeReference.CodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t CustomTypeReference.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy18SiriLinkFlowPlugin19CustomTypeReferenceV10CodingKeys33_E485281BACA7297B5F702477E446A830LLOGMd, &_ss22KeyedEncodingContainerVy18SiriLinkFlowPlugin19CustomTypeReferenceV10CodingKeys33_E485281BACA7297B5F702477E446A830LLOGMR);
  OUTLINED_FUNCTION_7_1(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v9);
  OUTLINED_FUNCTION_2_40();
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type CustomTypeReference.CodingKeys and conformance CustomTypeReference.CodingKeys();
  OUTLINED_FUNCTION_10_29();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v1)
  {
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v6 + 8))(v2, v4);
}

uint64_t CustomTypeReference.init(from:)(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy18SiriLinkFlowPlugin19CustomTypeReferenceV10CodingKeys33_E485281BACA7297B5F702477E446A830LLOGMd, &_ss22KeyedDecodingContainerVy18SiriLinkFlowPlugin19CustomTypeReferenceV10CodingKeys33_E485281BACA7297B5F702477E446A830LLOGMR);
  OUTLINED_FUNCTION_7_1(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v6);
  OUTLINED_FUNCTION_2_40();
  v7 = a1[3];
  v8 = a1[4];
  OUTLINED_FUNCTION_3_31(a1);
  lazy protocol witness table accessor for type CustomTypeReference.CodingKeys and conformance CustomTypeReference.CodingKeys();
  OUTLINED_FUNCTION_10_29();
  OUTLINED_FUNCTION_8_25();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v8 = KeyedDecodingContainer.decode(_:forKey:)();
    KeyedDecodingContainer.decode(_:forKey:)();
    v10 = OUTLINED_FUNCTION_12_22();
    v11(v10);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v8;
}

uint64_t protocol witness for Decodable.init(from:) in conformance CustomTypeReference@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = CustomTypeReference.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

uint64_t protocol witness for Encodable.encode(to:) in conformance CustomTypeReference(void *a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  return CustomTypeReference.encode(to:)(a1);
}

uint64_t outlined bridged method (pb) of @objc INCodableDescription.dictionaryRepresentation()(void *a1)
{
  v1 = [a1 dictionaryRepresentation];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

unint64_t lazy protocol witness table accessor for type CustomIntentDefinition.CodingKeys and conformance CustomIntentDefinition.CodingKeys()
{
  result = lazy protocol witness table cache variable for type CustomIntentDefinition.CodingKeys and conformance CustomIntentDefinition.CodingKeys;
  if (!lazy protocol witness table cache variable for type CustomIntentDefinition.CodingKeys and conformance CustomIntentDefinition.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CustomIntentDefinition.CodingKeys and conformance CustomIntentDefinition.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CustomIntentDefinition.CodingKeys and conformance CustomIntentDefinition.CodingKeys;
  if (!lazy protocol witness table cache variable for type CustomIntentDefinition.CodingKeys and conformance CustomIntentDefinition.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CustomIntentDefinition.CodingKeys and conformance CustomIntentDefinition.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CustomIntentDefinition.CodingKeys and conformance CustomIntentDefinition.CodingKeys;
  if (!lazy protocol witness table cache variable for type CustomIntentDefinition.CodingKeys and conformance CustomIntentDefinition.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CustomIntentDefinition.CodingKeys and conformance CustomIntentDefinition.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CustomIntentDefinition.CodingKeys and conformance CustomIntentDefinition.CodingKeys;
  if (!lazy protocol witness table cache variable for type CustomIntentDefinition.CodingKeys and conformance CustomIntentDefinition.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CustomIntentDefinition.CodingKeys and conformance CustomIntentDefinition.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CustomRequestDefinition and conformance CustomRequestDefinition()
{
  result = lazy protocol witness table cache variable for type CustomRequestDefinition and conformance CustomRequestDefinition;
  if (!lazy protocol witness table cache variable for type CustomRequestDefinition and conformance CustomRequestDefinition)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CustomRequestDefinition and conformance CustomRequestDefinition);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CustomRequestDefinition and conformance CustomRequestDefinition;
  if (!lazy protocol witness table cache variable for type CustomRequestDefinition and conformance CustomRequestDefinition)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CustomRequestDefinition and conformance CustomRequestDefinition);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CustomRequestDefinition.CodingKeys and conformance CustomRequestDefinition.CodingKeys()
{
  result = lazy protocol witness table cache variable for type CustomRequestDefinition.CodingKeys and conformance CustomRequestDefinition.CodingKeys;
  if (!lazy protocol witness table cache variable for type CustomRequestDefinition.CodingKeys and conformance CustomRequestDefinition.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CustomRequestDefinition.CodingKeys and conformance CustomRequestDefinition.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CustomRequestDefinition.CodingKeys and conformance CustomRequestDefinition.CodingKeys;
  if (!lazy protocol witness table cache variable for type CustomRequestDefinition.CodingKeys and conformance CustomRequestDefinition.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CustomRequestDefinition.CodingKeys and conformance CustomRequestDefinition.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CustomRequestDefinition.CodingKeys and conformance CustomRequestDefinition.CodingKeys;
  if (!lazy protocol witness table cache variable for type CustomRequestDefinition.CodingKeys and conformance CustomRequestDefinition.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CustomRequestDefinition.CodingKeys and conformance CustomRequestDefinition.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CustomRequestDefinition.CodingKeys and conformance CustomRequestDefinition.CodingKeys;
  if (!lazy protocol witness table cache variable for type CustomRequestDefinition.CodingKeys and conformance CustomRequestDefinition.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CustomRequestDefinition.CodingKeys and conformance CustomRequestDefinition.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CustomRequestParameterDefinition and conformance CustomRequestParameterDefinition()
{
  result = lazy protocol witness table cache variable for type CustomRequestParameterDefinition and conformance CustomRequestParameterDefinition;
  if (!lazy protocol witness table cache variable for type CustomRequestParameterDefinition and conformance CustomRequestParameterDefinition)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CustomRequestParameterDefinition and conformance CustomRequestParameterDefinition);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CustomRequestParameterDefinition and conformance CustomRequestParameterDefinition;
  if (!lazy protocol witness table cache variable for type CustomRequestParameterDefinition and conformance CustomRequestParameterDefinition)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CustomRequestParameterDefinition and conformance CustomRequestParameterDefinition);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type [CustomRequestParameterDefinition] and conformance <A> [A](unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay18SiriLinkFlowPlugin32CustomRequestParameterDefinitionVGMd, &_sSay18SiriLinkFlowPlugin32CustomRequestParameterDefinitionVGMR);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CustomRequestParameterDefinition.CodingKeys and conformance CustomRequestParameterDefinition.CodingKeys()
{
  result = lazy protocol witness table cache variable for type CustomRequestParameterDefinition.CodingKeys and conformance CustomRequestParameterDefinition.CodingKeys;
  if (!lazy protocol witness table cache variable for type CustomRequestParameterDefinition.CodingKeys and conformance CustomRequestParameterDefinition.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CustomRequestParameterDefinition.CodingKeys and conformance CustomRequestParameterDefinition.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CustomRequestParameterDefinition.CodingKeys and conformance CustomRequestParameterDefinition.CodingKeys;
  if (!lazy protocol witness table cache variable for type CustomRequestParameterDefinition.CodingKeys and conformance CustomRequestParameterDefinition.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CustomRequestParameterDefinition.CodingKeys and conformance CustomRequestParameterDefinition.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CustomRequestParameterDefinition.CodingKeys and conformance CustomRequestParameterDefinition.CodingKeys;
  if (!lazy protocol witness table cache variable for type CustomRequestParameterDefinition.CodingKeys and conformance CustomRequestParameterDefinition.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CustomRequestParameterDefinition.CodingKeys and conformance CustomRequestParameterDefinition.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CustomRequestParameterDefinition.CodingKeys and conformance CustomRequestParameterDefinition.CodingKeys;
  if (!lazy protocol witness table cache variable for type CustomRequestParameterDefinition.CodingKeys and conformance CustomRequestParameterDefinition.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CustomRequestParameterDefinition.CodingKeys and conformance CustomRequestParameterDefinition.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CustomTypeReference and conformance CustomTypeReference()
{
  result = lazy protocol witness table cache variable for type CustomTypeReference and conformance CustomTypeReference;
  if (!lazy protocol witness table cache variable for type CustomTypeReference and conformance CustomTypeReference)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CustomTypeReference and conformance CustomTypeReference);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CustomTypeReference and conformance CustomTypeReference;
  if (!lazy protocol witness table cache variable for type CustomTypeReference and conformance CustomTypeReference)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CustomTypeReference and conformance CustomTypeReference);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CustomParameterOptions and conformance CustomParameterOptions()
{
  result = lazy protocol witness table cache variable for type CustomParameterOptions and conformance CustomParameterOptions;
  if (!lazy protocol witness table cache variable for type CustomParameterOptions and conformance CustomParameterOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CustomParameterOptions and conformance CustomParameterOptions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CustomParameterOptions and conformance CustomParameterOptions;
  if (!lazy protocol witness table cache variable for type CustomParameterOptions and conformance CustomParameterOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CustomParameterOptions and conformance CustomParameterOptions);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CustomParameterOptions.CodingKeys and conformance CustomParameterOptions.CodingKeys()
{
  result = lazy protocol witness table cache variable for type CustomParameterOptions.CodingKeys and conformance CustomParameterOptions.CodingKeys;
  if (!lazy protocol witness table cache variable for type CustomParameterOptions.CodingKeys and conformance CustomParameterOptions.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CustomParameterOptions.CodingKeys and conformance CustomParameterOptions.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CustomParameterOptions.CodingKeys and conformance CustomParameterOptions.CodingKeys;
  if (!lazy protocol witness table cache variable for type CustomParameterOptions.CodingKeys and conformance CustomParameterOptions.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CustomParameterOptions.CodingKeys and conformance CustomParameterOptions.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CustomParameterOptions.CodingKeys and conformance CustomParameterOptions.CodingKeys;
  if (!lazy protocol witness table cache variable for type CustomParameterOptions.CodingKeys and conformance CustomParameterOptions.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CustomParameterOptions.CodingKeys and conformance CustomParameterOptions.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CustomParameterOptions.CodingKeys and conformance CustomParameterOptions.CodingKeys;
  if (!lazy protocol witness table cache variable for type CustomParameterOptions.CodingKeys and conformance CustomParameterOptions.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CustomParameterOptions.CodingKeys and conformance CustomParameterOptions.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CustomTypeReference.CodingKeys and conformance CustomTypeReference.CodingKeys()
{
  result = lazy protocol witness table cache variable for type CustomTypeReference.CodingKeys and conformance CustomTypeReference.CodingKeys;
  if (!lazy protocol witness table cache variable for type CustomTypeReference.CodingKeys and conformance CustomTypeReference.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CustomTypeReference.CodingKeys and conformance CustomTypeReference.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CustomTypeReference.CodingKeys and conformance CustomTypeReference.CodingKeys;
  if (!lazy protocol witness table cache variable for type CustomTypeReference.CodingKeys and conformance CustomTypeReference.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CustomTypeReference.CodingKeys and conformance CustomTypeReference.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CustomTypeReference.CodingKeys and conformance CustomTypeReference.CodingKeys;
  if (!lazy protocol witness table cache variable for type CustomTypeReference.CodingKeys and conformance CustomTypeReference.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CustomTypeReference.CodingKeys and conformance CustomTypeReference.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CustomTypeReference.CodingKeys and conformance CustomTypeReference.CodingKeys;
  if (!lazy protocol witness table cache variable for type CustomTypeReference.CodingKeys and conformance CustomTypeReference.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CustomTypeReference.CodingKeys and conformance CustomTypeReference.CodingKeys);
  }

  return result;
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for CustomRequestParameterDefinition(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 49))
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

uint64_t storeEnumTagSinglePayload for CustomRequestParameterDefinition(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CustomParameterOptions(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
    if (a2 + 1 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 1) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for CustomParameterOptions(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x132BC8);
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

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for CustomTypeReference(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
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

uint64_t storeEnumTagSinglePayload for CustomTypeReference(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CustomTypeReference.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x132D68);
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

_BYTE *storeEnumTagSinglePayload for CustomRequestParameterDefinition.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x132E80);
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

_BYTE *storeEnumTagSinglePayload for CustomParameterOptions.CodingKeys(_BYTE *result, int a2, int a3)
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
      JUMPOUT(0x132F64);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_14_21()
{

  return KeyedEncodingContainer.encode<A>(_:forKey:)();
}

uint64_t OUTLINED_FUNCTION_15_23(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  v5 = *(v3 + 56) + 32 * a1;

  return outlined init with copy of Any(v5, va);
}

uint64_t _sSo8INIntentC18SiriLinkFlowPluginE5typed2asxSgxm_tABRbzlFSo19WFSmartPromptIntentC_Ttg5()
{
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  if (v1)
  {
    v2 = v1;
    v3 = v0;
  }

  else
  {
    v5 = INTypedIntentWithIntent();
    if (v5)
    {
      v6 = v5;
      objc_opt_self();
      v2 = swift_dynamicCastObjCClass();
      if (!v2)
      {
      }
    }

    else
    {
      return 0;
    }
  }

  return v2;
}

void CustomIntentNeedsDisambiguationFlowStrategy.__allocating_init(voiceCommandName:deviceState:modeInfoProvider:siriEnvironment:runCustomIntentCatWrapperSimple:)()
{
  CustomIntentNeedsDisambiguationFlowStrategy.__allocating_init(voiceCommandName:deviceState:modeInfoProvider:siriEnvironment:runCustomIntentCatWrapperSimple:)();
}

{
  OUTLINED_FUNCTION_40_0();
  v22 = v1;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = *(v6 + 24);
  v14 = *(v6 + 32);
  v16 = __swift_mutable_project_boxed_opaque_existential_1(v6, v15);
  v17 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v16);
  OUTLINED_FUNCTION_3();
  v20 = v19 - v18;
  (*(v21 + 16))(v19 - v18);
  v22(v13, v11, v9, v20, v5, v3, v0, v15, v14);
  __swift_destroy_boxed_opaque_existential_1Tm(v7);
  OUTLINED_FUNCTION_42();
}

void CustomIntentNeedsDisambiguationFlowStrategy.paginationStyle(resolveRecord:)()
{
  OUTLINED_FUNCTION_40_0();
  v1 = v0;
  v3 = v2;
  v4 = type metadata accessor for Locale();
  v5 = OUTLINED_FUNCTION_7_1(v4);
  v53 = v6;
  v54 = v5;
  v8 = *(v7 + 64);
  __chkstk_darwin(v5);
  OUTLINED_FUNCTION_3();
  v52 = v10 - v9;
  OUTLINED_FUNCTION_22_10();
  v11 = type metadata accessor for ParameterIdentifier();
  v12 = OUTLINED_FUNCTION_7_1(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  __chkstk_darwin(v12);
  OUTLINED_FUNCTION_3();
  v19 = v18 - v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow25ParameterResolutionRecordVySo8INIntentCGMd, &_s11SiriKitFlow25ParameterResolutionRecordVySo8INIntentCGMR);
  ParameterResolutionRecord.parameter.getter();
  ParameterIdentifier.name.getter();
  (*(v14 + 8))(v19, v11);
  v20 = ParameterResolutionRecord.result.getter();
  v21 = ParameterResolutionRecord.intent.getter();
  v22 = v0[18];
  if ((static OutputUtils.shouldReadItemsInDisambiguationList(siriEnvironment:)() & 1) == 0)
  {

LABEL_12:
    static PaginationStyle.noPagination()();
LABEL_13:

    OUTLINED_FUNCTION_42();
    return;
  }

  v51[2] = v3;
  type metadata accessor for CustomIntentNeedsDisambiguationFlowStrategy();
  outlined init with copy of DeviceState((v0 + 2), &v56);
  static CustomIntentNeedsDisambiguationFlowStrategy.makeDisambiguationList(resolveRecord:deviceState:)();
  v24 = v23;
  __swift_destroy_boxed_opaque_existential_1Tm(&v56);
  v25 = [v21 _codableDescription];
  v26 = OUTLINED_FUNCTION_63_6();
  v28 = outlined bridged method (mbgnn) of @objc INCodableDescription.attribute(byName:)(v26, v27, v25);

  if (!v28)
  {

LABEL_11:

    goto LABEL_12;
  }

  v29 = [v28 windowSize];

  v30 = *(v24 + 16);

  if (!__OFADD__(v29, 1))
  {
    if (v29 + 1 < v30)
    {
      v51[1] = v29;
      v31 = v1[5];
      v32 = __swift_project_boxed_opaque_existential_1(v1 + 2, v31);
      v51[0] = v51;
      v33 = *(v31 - 8);
      v34 = *(v33 + 64);
      __chkstk_darwin(v32);
      OUTLINED_FUNCTION_3();
      (*(v33 + 16))(v36 - v35);
      v37 = v52;
      dispatch thunk of DeviceState.siriLocale.getter();
      v38 = *(v33 + 8);
      v39 = OUTLINED_FUNCTION_22_4();
      v40(v39);
      OUTLINED_FUNCTION_60_6();
      v44 = INIntentResolutionResult.getDisplayHints(intent:parameter:locale:shouldIncludeOrdinalReference:)(v41, v42, v43, v37, 0);
      (*(v53 + 8))(v37, v54);
      v45 = v1[7];
      v1[7] = v44;

      OUTLINED_FUNCTION_60_6();
      v47 = INIntentResolutionResult.safeJSONDictionaryRepresentation(for:parameterName:)(v46);

      specialized Dictionary.subscript.getter(0x6F697463656C6573, 0xEE00736D6574496ELL, v47, &v56);

      if (v57)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySDySSypGGMd, &_sSaySDySSypGGMR);
        v48 = swift_dynamicCast();
        v49 = v55;
        if (!v48)
        {
          v49 = 0;
        }
      }

      else
      {
        outlined destroy of Any?(&v56, &_sypSgMd, &_sypSgMR);
        v49 = 0;
      }

      v50 = v1[8];
      v1[8] = v49;

      static PaginationStyle.pageSize(_:)();
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  __break(1u);
}

void static CustomIntentNeedsDisambiguationFlowStrategy.makeDisambiguationList(resolveRecord:deviceState:)()
{
  OUTLINED_FUNCTION_40_0();
  v59 = v0;
  v2 = v1;
  v62 = type metadata accessor for Locale();
  v3 = OUTLINED_FUNCTION_7_1(v62);
  v5 = v4;
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v3);
  v60 = v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v61 = v58 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVyyp0A14LinkFlowPlugin30CustomIntentDisambiguationItemVGMd, &_s13SiriUtilities11TransformerVyyp0A14LinkFlowPlugin30CustomIntentDisambiguationItemVGMR);
  v11 = OUTLINED_FUNCTION_7_1(v10);
  v64 = v12;
  v65 = v11;
  v14 = *(v13 + 64);
  __chkstk_darwin(v11);
  v63 = v58 - v15;
  OUTLINED_FUNCTION_22_10();
  v58[0] = type metadata accessor for ParameterIdentifier();
  v16 = OUTLINED_FUNCTION_7_1(v58[0]);
  v18 = v17;
  v20 = *(v19 + 64);
  __chkstk_darwin(v16);
  OUTLINED_FUNCTION_3();
  v23 = v22 - v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow25ParameterResolutionRecordVySo8INIntentCGMd, &_s11SiriKitFlow25ParameterResolutionRecordVySo8INIntentCGMR);
  v58[1] = v2;
  v24 = ParameterResolutionRecord.result.getter();
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0_1();
    swift_once();
  }

  v25 = type metadata accessor for Logger();
  __swift_project_value_buffer(v25, static Logger.voiceCommands);
  v26 = v24;
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v27, v28))
  {
    OUTLINED_FUNCTION_55_3();
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *v29 = 138412290;
    *(v29 + 4) = v26;
    *v30 = v26;
    v31 = v26;
    _os_log_impl(&dword_0, v27, v28, "#CustomIntentNeedsDisambiguationFlowStrategy makeDisambiguationList:intentResolutionResult: %@", v29, 0xCu);
    outlined destroy of Any?(v30, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    OUTLINED_FUNCTION_15_1();

    OUTLINED_FUNCTION_15_1();
  }

  v32 = [v26 disambiguationItems];
  v33 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v34 = *(v33 + 16);

  v35 = &selRef_alternatives;
  if (v34)
  {
    v35 = &selRef_disambiguationItems;
  }

  v36 = [v26 *v35];
  v37 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v38 = ParameterResolutionRecord.intent.getter();
  v39 = [v38 _codableDescription];

  ParameterResolutionRecord.parameter.getter();
  v40 = ParameterIdentifier.name.getter();
  v42 = v41;
  (*(v18 + 8))(v23, v58[0]);
  v43 = outlined bridged method (mbnn) of @objc INCodableDescription.attribute(byName:)(v40, v42, v39, &selRef_attributeByKeyPath_);

  v44 = v59[4];
  __swift_project_boxed_opaque_existential_1(v59, v59[3]);
  dispatch thunk of DeviceState.siriLocale.getter();
  v45 = *(v5 + 16);
  v46 = v60;
  v47 = OUTLINED_FUNCTION_56_1();
  v48 = v62;
  v49(v47);
  v50 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v51 = swift_allocObject();
  *(v51 + 16) = v43;
  (*(v5 + 32))(v51 + v50, v46, v48);
  v52 = v43;
  v53 = v63;
  Transformer.init(transform:)();
  v54 = *(v5 + 8);
  v55 = OUTLINED_FUNCTION_71_2();
  v57 = v56(v55);
  __chkstk_darwin(v57);
  v58[-2] = v53;
  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSayypG_18SiriLinkFlowPlugin30CustomIntentDisambiguationItemVsAE_pTg5(partial apply for closure #1 in static CustomIntentNeedsDisambiguationFlowStrategy.makeDisambiguationList(resolveRecord:deviceState:), &v58[-4], v37);

  (*(v64 + 8))(v53, v65);
  OUTLINED_FUNCTION_42();
}

void CustomIntentNeedsDisambiguationFlowStrategy.actionForInput(_:resolveRecord:)()
{
  OUTLINED_FUNCTION_40_0();
  v1 = v0;
  v3 = v2;
  v4 = type metadata accessor for Parse.DirectInvocation();
  v5 = OUTLINED_FUNCTION_7_1(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v5);
  OUTLINED_FUNCTION_3();
  v80 = v11 - v10;
  OUTLINED_FUNCTION_22_10();
  v12 = type metadata accessor for Parse();
  v13 = OUTLINED_FUNCTION_7_1(v12);
  v83 = v14;
  v84 = v13;
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(v13);
  v81 = v78 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v82 = v78 - v19;
  OUTLINED_FUNCTION_22_10();
  v20 = type metadata accessor for Input();
  v21 = OUTLINED_FUNCTION_7_1(v20);
  v23 = v22;
  v25 = *(v24 + 64);
  __chkstk_darwin(v21);
  OUTLINED_FUNCTION_3();
  v28 = v27 - v26;
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0_1();
    swift_once();
  }

  v29 = type metadata accessor for Logger();
  __swift_project_value_buffer(v29, static Logger.voiceCommands);
  v30 = *(v23 + 16);
  v85 = v1;
  v30(v28, v1, v20);
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.debug.getter();
  v33 = os_log_type_enabled(v31, v32);
  v79 = v7;
  if (v33)
  {
    OUTLINED_FUNCTION_55_3();
    v34 = swift_slowAlloc();
    v78[0] = swift_slowAlloc();
    v78[1] = v3;
    v86 = v78[0];
    *v34 = 136315138;
    OUTLINED_FUNCTION_22_16();
    _s11SiriKitFlow5InputVACs23CustomStringConvertibleAAWlTm_3(v35, 255, v36);
    v37 = dispatch thunk of CustomStringConvertible.description.getter();
    v39 = v38;
    (*(v23 + 8))(v28, v20);
    v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v39, &v86);

    *(v34 + 4) = v40;
    _os_log_impl(&dword_0, v31, v32, "#CustomIntentNeedsDisambiguationFlowStrategy actionForInput: %s", v34, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v78[0]);
    OUTLINED_FUNCTION_15_1();

    OUTLINED_FUNCTION_15_1();
  }

  else
  {

    (*(v23 + 8))(v28, v20);
  }

  v41 = v82;
  Input.parse.getter();
  v42 = static VoiceCommandConfirmationUtils.getVoiceCommandConfirmation(parse:)(v41);
  v43 = v83;
  v44 = *(v83 + 8);
  v45 = OUTLINED_FUNCTION_62();
  v44(v45);
  switch(v42)
  {
    case 2:

      goto LABEL_15;
    case 3:
      goto LABEL_8;
    default:
      v46 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v46)
      {
        goto LABEL_15;
      }

LABEL_8:
      v47 = v81;
      Input.parse.getter();
      v48 = *(v43 + 88);
      v49 = OUTLINED_FUNCTION_62();
      v51 = v50(v49);
      if (v51 == enum case for Parse.NLv3IntentOnly(_:))
      {
        v52 = OUTLINED_FUNCTION_62();
        v44(v52);
        goto LABEL_13;
      }

      if (v51 != enum case for Parse.NLv3IntentPlusServerConversion(_:))
      {
        if (v51 != enum case for Parse.directInvocation(_:))
        {
          if (v51 == enum case for Parse.uso(_:) && (SiriLinkFlowFeatureFlags.isEnabled.getter(0) & 1) != 0 && (__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow25ParameterResolutionRecordVySo8INIntentCGMd, &_s11SiriKitFlow25ParameterResolutionRecordVySo8INIntentCGMR), v73 = ParameterResolutionRecord.intent.getter(), v74 = [v73 _type], v73, v74 == &dword_0 + 2))
          {
            static ActionForInput.handle()();
          }

          else
          {
            static ActionForInput.ignore()();
          }

          v75 = OUTLINED_FUNCTION_62();
          v44(v75);
          goto LABEL_16;
        }

        v61 = *(v43 + 96);
        v62 = OUTLINED_FUNCTION_62();
        v63(v62);
        v64 = v79;
        v65 = *(v79 + 32);
        v66 = OUTLINED_FUNCTION_22_4();
        v67(v66);
        Parse.DirectInvocation.identifier.getter();
        OUTLINED_FUNCTION_61_2();
        if (v70 == 0xD000000000000043 && v69 == v68)
        {
        }

        else
        {
          v72 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v72 & 1) == 0)
          {
            goto LABEL_33;
          }
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow25ParameterResolutionRecordVySo8INIntentCGMd, &_s11SiriKitFlow25ParameterResolutionRecordVySo8INIntentCGMR);
        v76 = ParameterResolutionRecord.intent.getter();
        v77 = [v76 _type];

        if (v77 == &dword_0 + 2)
        {
          static ActionForInput.handle()();
LABEL_34:
          (*(v64 + 8))(v80, v4);
          goto LABEL_16;
        }

LABEL_33:
        static ActionForInput.ignore()();
        goto LABEL_34;
      }

      v53 = *(v43 + 96);
      v54 = OUTLINED_FUNCTION_62();
      v55(v54);
      v56 = *&v47[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology8NLIntentV_0A7KitFlow5ParseO16ServerConversionCtMd, &_s12SiriOntology8NLIntentV_0A7KitFlow5ParseO16ServerConversionCtMR) + 48)];

      v57 = type metadata accessor for NLIntent();
      OUTLINED_FUNCTION_7(v57);
      (*(v58 + 8))(v47);
LABEL_13:
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow25ParameterResolutionRecordVySo8INIntentCGMd, &_s11SiriKitFlow25ParameterResolutionRecordVySo8INIntentCGMR);
      v59 = ParameterResolutionRecord.intent.getter();
      v60 = [v59 _type];

      if (v60 == &dword_0 + 2)
      {
        static ActionForInput.handle()();
      }

      else
      {
LABEL_15:
        static ActionForInput.ignore()();
      }

LABEL_16:
      OUTLINED_FUNCTION_42();
      return;
  }
}

uint64_t CustomIntentNeedsDisambiguationFlowStrategy.makeDisambiguationItemContainer(resolveRecord:)(uint64_t a1)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = v1;
  v3 = OUTLINED_FUNCTION_4();
  return _swift_task_switch(v3, v4, v5);
}

uint64_t CustomIntentNeedsDisambiguationFlowStrategy.makeDisambiguationItemContainer(resolveRecord:)()
{
  OUTLINED_FUNCTION_8_0();
  v2 = v0[7];
  v1 = v0[8];
  type metadata accessor for CustomIntentNeedsDisambiguationFlowStrategy();
  outlined init with copy of DeviceState(v1 + 16, (v0 + 2));
  static CustomIntentNeedsDisambiguationFlowStrategy.makeDisambiguationList(resolveRecord:deviceState:)();
  v4 = v3;
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v5 = v0[1];

  return v5(v4);
}

uint64_t CustomIntentNeedsDisambiguationFlowStrategy.parseSmartPromptResult(_:_:)(_DWORD *a1)
{
  v2 = v1;
  v4 = type metadata accessor for USOParse();
  v5 = OUTLINED_FUNCTION_7_1(v4);
  v53 = v6;
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v5);
  v11 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v50 - v12;
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0_1();
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  v15 = __swift_project_value_buffer(v14, static Logger.voiceCommands);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.debug.getter();
  v18 = OUTLINED_FUNCTION_17_18();
  if (os_log_type_enabled(v18, v19))
  {
    OUTLINED_FUNCTION_18_1();
    v20 = swift_slowAlloc();
    v52 = v15;
    *v20 = 0;
    _os_log_impl(&dword_0, v16, v17, "#CustomIntentNeedsDisambiguationFlowStrategy parsing smart prompt input", v20, 2u);
    v2 = v1;
    OUTLINED_FUNCTION_15_1();
  }

  v21 = _sSo8INIntentC18SiriLinkFlowPluginE5typed2asxSgxm_tABRbzlFSo19WFSmartPromptIntentC_Ttg5();
  if (v21)
  {
    v22 = v21;
    v23 = outlined bridged method (pb) of @objc WFSmartPromptIntent.buttons.getter(v21);
    if (v23)
    {
      static SmartPromptConfirmationUtils.getConfirmationFromUSO(usoParse:options:)(a1, v23);
      if (v2)
      {
      }

      else
      {
        v2 = v24;
        v33 = a1;
        v34 = v25;
        v52 = v33;

        if (v34)
        {
        }

        else
        {
          v35 = v53;
          v36 = *(v53 + 16);
          v36(v13, v52, v4);
          v37 = Logger.logObject.getter();
          v38 = static os_log_type_t.debug.getter();
          v39 = OUTLINED_FUNCTION_17_18();
          if (os_log_type_enabled(v39, v40))
          {
            OUTLINED_FUNCTION_55_3();
            v41 = swift_slowAlloc();
            LODWORD(v52) = v38;
            v42 = v41;
            v51 = swift_slowAlloc();
            v54 = v51;
            *v42 = 136315138;
            v36(v11, v13, v4);
            v43 = String.init<A>(describing:)();
            v45 = v44;
            v46 = *(v35 + 8);
            v2 = v35 + 8;
            v46(v13, v4);
            v47 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v43, v45, &v54);

            *(v42 + 4) = v47;
            _os_log_impl(&dword_0, v37, v52, "#CustomIntentNeedsDisambiguationFlowStrategy unable to extract parsed response to smart prompt parse %s", v42, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v51);
            OUTLINED_FUNCTION_15_1();

            OUTLINED_FUNCTION_15_1();
          }

          else
          {

            v48 = *(v35 + 8);
            v2 = v35 + 8;
            v48(v13, v4);
          }

          lazy protocol witness table accessor for type DisambiguationError and conformance DisambiguationError();
          OUTLINED_FUNCTION_31_10();
          swift_allocError();
          *v49 = 2;
          swift_willThrow();
        }
      }

      return v2;
    }
  }

  v26 = Logger.logObject.getter();
  static os_log_type_t.debug.getter();
  v27 = OUTLINED_FUNCTION_6_22();
  if (os_log_type_enabled(v27, v28))
  {
    OUTLINED_FUNCTION_18_1();
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_24_12(&dword_0, v29, v30, "#CustomIntentNeedsDisambiguationFlowStrategy unable to retrieve smart prompt result");
    OUTLINED_FUNCTION_15_1();
  }

  lazy protocol witness table accessor for type RunVoiceShortcutFlowErrors and conformance RunVoiceShortcutFlowErrors();
  OUTLINED_FUNCTION_31_10();
  swift_allocError();
  *v31 = 0;
  swift_willThrow();
  return v2;
}

uint64_t CustomIntentNeedsDisambiguationFlowStrategy.parseDisambiguationResult(input:paginatedItems:resolveRecord:)()
{
  OUTLINED_FUNCTION_8_0();
  v1[5] = v2;
  v1[6] = v0;
  v1[3] = v3;
  v1[4] = v4;
  v1[2] = v5;
  v6 = type metadata accessor for Parse.DirectInvocation();
  v1[7] = v6;
  OUTLINED_FUNCTION_5_0(v6);
  v1[8] = v7;
  v9 = *(v8 + 64);
  v1[9] = OUTLINED_FUNCTION_28();
  v10 = type metadata accessor for USOParse();
  v1[10] = v10;
  OUTLINED_FUNCTION_5_0(v10);
  v1[11] = v11;
  v13 = *(v12 + 64);
  v1[12] = OUTLINED_FUNCTION_28();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow18IntentPromptAnswerVySo8INIntentCGMd, &_s11SiriKitFlow18IntentPromptAnswerVySo8INIntentCGMR);
  v1[13] = v14;
  OUTLINED_FUNCTION_5_0(v14);
  v1[14] = v15;
  v17 = *(v16 + 64);
  v1[15] = OUTLINED_FUNCTION_27();
  v1[16] = swift_task_alloc();
  v18 = type metadata accessor for Parse();
  v1[17] = v18;
  OUTLINED_FUNCTION_5_0(v18);
  v1[18] = v19;
  v21 = *(v20 + 64);
  v1[19] = OUTLINED_FUNCTION_27();
  v1[20] = swift_task_alloc();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow20DisambiguationResultVyAA18IntentPromptAnswerVySo8INIntentCGGSgMd, &_s11SiriKitFlow20DisambiguationResultVyAA18IntentPromptAnswerVySo8INIntentCGGSgMR);
  OUTLINED_FUNCTION_14(v22);
  v24 = *(v23 + 64);
  v1[21] = OUTLINED_FUNCTION_27();
  v1[22] = swift_task_alloc();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow20DisambiguationResultVyAA18IntentPromptAnswerVySo8INIntentCGGMd, &_s11SiriKitFlow20DisambiguationResultVyAA18IntentPromptAnswerVySo8INIntentCGGMR);
  v1[23] = v25;
  OUTLINED_FUNCTION_5_0(v25);
  v1[24] = v26;
  v28 = *(v27 + 64);
  v1[25] = OUTLINED_FUNCTION_27();
  v1[26] = swift_task_alloc();
  v29 = type metadata accessor for ParameterIdentifier();
  v1[27] = v29;
  OUTLINED_FUNCTION_5_0(v29);
  v1[28] = v30;
  v32 = *(v31 + 64);
  v1[29] = OUTLINED_FUNCTION_28();
  v33 = type metadata accessor for Input();
  v1[30] = v33;
  OUTLINED_FUNCTION_5_0(v33);
  v1[31] = v34;
  v36 = *(v35 + 64);
  v1[32] = OUTLINED_FUNCTION_28();
  v37 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v37, v38, v39);
}

{
  v201 = v0;
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0_1();
    swift_once();
  }

  v2 = v0[31];
  v1 = v0[32];
  v3 = v0[30];
  v4 = v0[3];
  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static Logger.voiceCommands);
  (*(v2 + 16))(v1, v4, v3);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();
  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[31];
  v9 = v0[32];
  v11 = v0[30];
  if (v8)
  {
    OUTLINED_FUNCTION_55_3();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *&v199 = v13;
    *v12 = 136315138;
    OUTLINED_FUNCTION_22_16();
    _s11SiriKitFlow5InputVACs23CustomStringConvertibleAAWlTm_3(v14, 255, v15);
    v16 = dispatch thunk of CustomStringConvertible.description.getter();
    v18 = v17;
    (*(v10 + 8))(v9, v11);
    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v18, &v199);

    *(v12 + 4) = v19;
    _os_log_impl(&dword_0, v6, v7, "#CustomIntentNeedsDisambiguationFlowStrategy received input: %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
    OUTLINED_FUNCTION_15_1();

    OUTLINED_FUNCTION_15_1();
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v20 = v0[28];
  v21 = v0[29];
  v22 = v0[27];
  v196 = v0[23];
  v23 = v0[20];
  v24 = v0[18];
  v189 = v0[22];
  v190 = v0[17];
  v26 = v0[4];
  v25 = v0[5];
  v188 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow25ParameterResolutionRecordVySo8INIntentCGMd, &_s11SiriKitFlow25ParameterResolutionRecordVySo8INIntentCGMR);
  ParameterResolutionRecord.parameter.getter();
  v187 = ParameterIdentifier.name.getter();
  v193 = v27;
  (*(v20 + 8))(v21, v22);
  v28 = ParameterResolutionRecord.intent.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow22PaginatedItemContainerVy0a4LinkC6Plugin026CustomIntentDisambiguationE0VGMd, &_s11SiriKitFlow22PaginatedItemContainerVy0a4LinkC6Plugin026CustomIntentDisambiguationE0VGMR);
  v29 = PaginatedItemContainer.items.getter();
  v30 = PaginatedItemContainer.page.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriLinkFlowPlugin35InputToDisambiguationItemsConverterCyAA012CustomIntentG4ItemVGMd, &_s18SiriLinkFlowPlugin35InputToDisambiguationItemsConverterCyAA012CustomIntentG4ItemVGMR);
  swift_allocObject();
  v31 = specialized InputToDisambiguationItemsConverter.init(disambiguationItems:page:)(v29, v30);
  Input.parse.getter();
  CustomIntentNeedsDisambiguationFlowStrategy.getVoiceCommandPagination(parse:)();
  v32 = *(v24 + 8);
  v32(v23, v190);
  if (__swift_getEnumTagSinglePayload(v189, 1, v196) != 1)
  {
    v56 = v0[26];
    v57 = v28;
    v58 = v0[23];
    v59 = v0[24];
    v60 = v0[22];
    v61 = v0[2];

    goto LABEL_12;
  }

  v33 = v0[20];
  v34 = v0[17];
  v35 = v0[3];
  outlined destroy of Any?(v0[22], &_s11SiriKitFlow20DisambiguationResultVyAA18IntentPromptAnswerVySo8INIntentCGGSgMd, &_s11SiriKitFlow20DisambiguationResultVyAA18IntentPromptAnswerVySo8INIntentCGGSgMR);
  Input.parse.getter();
  CustomIntentNeedsDisambiguationFlowStrategy.getSmartPromptConfirmation(parse:intent:)(v33);
  v37 = v36;
  v38 = OUTLINED_FUNCTION_20_1();
  (v32)(v38);
  if (!v37)
  {
    v192 = v28;
    v74 = v0[23];
    v76 = v0[20];
    v75 = v0[21];
    v77 = v0[17];
    v78 = v0[3];
    Input.parse.getter();
    CustomIntentNeedsDisambiguationFlowStrategy.getVoiceCommandConfirmation(parse:)(v76, v75);
    v79 = OUTLINED_FUNCTION_56_1();
    (v32)(v79);
    if (__swift_getEnumTagSinglePayload(v75, 1, v74) == 1)
    {
      v81 = v0[18];
      v80 = v0[19];
      v82 = v0[17];
      v83 = v0[3];
      outlined destroy of Any?(v0[21], &_s11SiriKitFlow20DisambiguationResultVyAA18IntentPromptAnswerVySo8INIntentCGGSgMd, &_s11SiriKitFlow20DisambiguationResultVyAA18IntentPromptAnswerVySo8INIntentCGGSgMR);
      Input.parse.getter();
      v84 = *(v81 + 88);
      v85 = OUTLINED_FUNCTION_9_3();
      v87 = v86(v85);
      if (v87 == enum case for Parse.NLv3IntentPlusServerConversion(_:))
      {
        v88 = v0[19];
        (*(v0[18] + 96))(v88, v0[17]);
        v89 = *(v88 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology8NLIntentV_0A7KitFlow5ParseO16ServerConversionCtMd, &_s12SiriOntology8NLIntentV_0A7KitFlow5ParseO16ServerConversionCtMR) + 48));
        v90 = Parse.ServerConversion.siriKitIntent.getter();
        v91 = [v90 _codableDescription];

        v92 = outlined bridged method (mbnn) of @objc INCodableDescription.attribute(byName:)(v187, v193, v91, &selRef_attributeByName_);
        if (v92)
        {
          v93 = type metadata accessor for NSError(0, &lazy cache variable for type metadata for INCodableAttribute, INCodableAttribute_ptr);
        }

        else
        {
          v93 = 0;
          *(&v199 + 1) = 0;
          *&v200 = 0;
        }

        v131 = v0[19];
        v132 = v0[16];
        v133 = v0[13];
        v134 = v0[14];
        v135 = v0[2];
        *&v199 = v92;
        *(&v200 + 1) = v93;
        v136 = v92;
        Parse.ServerConversion.siriKitIntent.getter();
        type metadata accessor for NSError(0, &lazy cache variable for type metadata for INIntent, INIntent_ptr);
        IntentPromptAnswer.init(answeredValue:updatedIntent:)();
        OUTLINED_FUNCTION_20_1();
        static DisambiguationResult.chosenItem(_:)();

        v137 = *(v134 + 8);
        v138 = OUTLINED_FUNCTION_20_1();
        v139(v138);
        v140 = type metadata accessor for NLIntent();
        OUTLINED_FUNCTION_7(v140);
        (*(v141 + 8))(v131);
        goto LABEL_13;
      }

      if (v87 != enum case for Parse.directInvocation(_:))
      {
        if (v87 == enum case for Parse.uso(_:))
        {
          v123 = v0[11];
          v122 = v0[12];
          v124 = v0[10];
          (*(v0[18] + 96))(v0[19], v0[17]);
          v125 = *(v123 + 32);
          v126 = OUTLINED_FUNCTION_22_4();
          v127(v126);
          v128 = _sSo8INIntentC18SiriLinkFlowPluginE5typed2asxSgxm_tABRbzlFSo19WFSmartPromptIntentC_Ttg5();
          if (v128)
          {

            v129 = OUTLINED_FUNCTION_22();
            v130 = CustomIntentNeedsDisambiguationFlowStrategy.parseSmartPromptResult(_:_:)(v129);
            v179 = (*(*v31 + 144))(v130);
          }

          else
          {
            v179 = (*(*v31 + 136))(v0[12]);
          }

          v180 = v0[11];
          v181 = v0[12];
          v182 = v0[10];
          v183 = v0[2];
          CustomIntentNeedsDisambiguationFlowStrategy.getChosenItemResult(_:_:_:)(v179, v192, v187, v193);
          v184 = *(v180 + 8);
          v185 = OUTLINED_FUNCTION_56_1();
          v186(v185);

          goto LABEL_9;
        }

        v155 = v0[17];

        lazy protocol witness table accessor for type RunVoiceShortcutFlowErrors and conformance RunVoiceShortcutFlowErrors();
        OUTLINED_FUNCTION_31_10();
        swift_allocError();
        *v156 = 0;
        swift_willThrow();

        v157 = OUTLINED_FUNCTION_62();
        (v32)(v157);
LABEL_10:
        v45 = v0[32];
        v46 = v0[29];
        v48 = v0[25];
        v47 = v0[26];
        v50 = v0[21];
        v49 = v0[22];
        v52 = v0[19];
        v51 = v0[20];
        v53 = v0[15];
        v54 = v0[16];
        v191 = v0[12];
        v194 = v0[9];

        OUTLINED_FUNCTION_6_0();
        goto LABEL_14;
      }

      v95 = v0[18];
      v94 = v0[19];
      v96 = v0[17];
      v98 = v0[8];
      v97 = v0[9];
      v99 = v0[7];

      v100 = *(v95 + 96);
      v101 = OUTLINED_FUNCTION_22_4();
      v102(v101);
      (*(v98 + 32))(v97, v94, v99);
      v103 = Logger.logObject.getter();
      v104 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v103, v104))
      {
        OUTLINED_FUNCTION_18_1();
        v105 = swift_slowAlloc();
        OUTLINED_FUNCTION_45(v105);
        _os_log_impl(&dword_0, v103, v104, "#CustomIntentNeedsDisambiguationFlowStrategy parsing direct Invocation", v97, 2u);
        OUTLINED_FUNCTION_15_1();
      }

      v106 = v0[9];

      Parse.DirectInvocation.identifier.getter();
      OUTLINED_FUNCTION_61_2();
      if (v109 == 0xD000000000000043 && v108 == v107)
      {
      }

      else
      {
        v111 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v111 & 1) == 0)
        {
          v112 = Logger.logObject.getter();
          static os_log_type_t.debug.getter();
          v113 = OUTLINED_FUNCTION_17_18();
          if (os_log_type_enabled(v113, v114))
          {
            OUTLINED_FUNCTION_18_1();
            v115 = swift_slowAlloc();
            OUTLINED_FUNCTION_45(v115);
            OUTLINED_FUNCTION_26(&dword_0, v116, v117, "#CustomIntentNeedsDisambiguationFlowStrategy unsupported direct invocation type");
            OUTLINED_FUNCTION_15_1();
          }

          v119 = v0[8];
          v118 = v0[9];
          v120 = v0[7];

          lazy protocol witness table accessor for type DisambiguationError and conformance DisambiguationError();
          OUTLINED_FUNCTION_31_10();
          swift_allocError();
          *v121 = 0;
LABEL_51:
          swift_willThrow();

          v176 = *(v119 + 8);
          v177 = OUTLINED_FUNCTION_62();
          v178(v177);
          goto LABEL_10;
        }
      }

      v142 = v0[9];
      v143 = Parse.DirectInvocation.userData.getter();
      if (v143)
      {
        v144 = static SLFDisambiguationItemConverter.toIntent(userData:)(v143);

        if (v144)
        {
          v145 = v0[14];
          v146 = v0[15];
          v147 = v0[13];
          v148 = v0[8];
          v198 = v0[9];
          v149 = v0[7];
          v150 = v0[2];
          v199 = 0u;
          v200 = 0u;
          type metadata accessor for NSError(0, &lazy cache variable for type metadata for INIntent, INIntent_ptr);
          v151 = v144;
          IntentPromptAnswer.init(answeredValue:updatedIntent:)();
          OUTLINED_FUNCTION_20_1();
          static DisambiguationResult.chosenItem(_:)();

          v152 = *(v145 + 8);
          v153 = OUTLINED_FUNCTION_20_1();
          v154(v153);
          (*(v148 + 8))(v198, v149);
          goto LABEL_13;
        }

        v168 = Logger.logObject.getter();
        static os_log_type_t.debug.getter();
        v169 = OUTLINED_FUNCTION_17_18();
        if (os_log_type_enabled(v169, v170))
        {
          OUTLINED_FUNCTION_18_1();
          v171 = swift_slowAlloc();
          OUTLINED_FUNCTION_45(v171);
          OUTLINED_FUNCTION_26(&dword_0, v172, v173, "#CustomIntentNeedsDisambiguationFlowStrategy cannot parse user data");
          OUTLINED_FUNCTION_15_1();
        }

        v119 = v0[8];
        v174 = v0[9];
        v175 = v0[7];

        lazy protocol witness table accessor for type DisambiguationError and conformance DisambiguationError();
        OUTLINED_FUNCTION_31_10();
        swift_allocError();
        v167 = 2;
      }

      else
      {
        v158 = Logger.logObject.getter();
        static os_log_type_t.debug.getter();
        v159 = OUTLINED_FUNCTION_17_18();
        if (os_log_type_enabled(v159, v160))
        {
          OUTLINED_FUNCTION_18_1();
          v161 = swift_slowAlloc();
          OUTLINED_FUNCTION_45(v161);
          OUTLINED_FUNCTION_26(&dword_0, v162, v163, "#CustomIntentNeedsDisambiguationFlowStrategy no user data");
          OUTLINED_FUNCTION_15_1();
        }

        v119 = v0[8];
        v164 = v0[9];
        v165 = v0[7];

        lazy protocol witness table accessor for type DisambiguationError and conformance DisambiguationError();
        OUTLINED_FUNCTION_31_10();
        swift_allocError();
        v167 = 1;
      }

      *v166 = v167;
      goto LABEL_51;
    }

    v59 = v0[24];
    v56 = v0[25];
    v58 = v0[23];
    v60 = v0[21];
    v61 = v0[2];

LABEL_12:
    v62 = *(v59 + 32);
    v62(v56, v60, v58);
    v62(v61, v56, v58);
    goto LABEL_13;
  }

  v39 = v0[2];
  v40 = *(*v31 + 144);
  v41 = OUTLINED_FUNCTION_22_4();
  v42(v41);

  v43 = OUTLINED_FUNCTION_56_1();
  CustomIntentNeedsDisambiguationFlowStrategy.getChosenItemResult(_:_:_:)(v43, v44, v187, v193);

LABEL_9:

LABEL_13:
  v63 = v0[32];
  v64 = v0[29];
  v66 = v0[25];
  v65 = v0[26];
  v68 = v0[21];
  v67 = v0[22];
  v70 = v0[19];
  v69 = v0[20];
  v72 = v0[15];
  v71 = v0[16];
  v195 = v0[12];
  v197 = v0[9];

  OUTLINED_FUNCTION_6_7();
LABEL_14:

  return v55();
}

BOOL INIntent.isSmartPromptIntent.getter()
{
  v0 = _sSo8INIntentC18SiriLinkFlowPluginE5typed2asxSgxm_tABRbzlFSo19WFSmartPromptIntentC_Ttg5();
  v1 = v0;
  if (v0)
  {
  }

  return v1 != 0;
}

uint64_t CustomIntentNeedsDisambiguationFlowStrategy.getChosenItemResult(_:_:_:)(uint64_t a1, void *a2, uint64_t a3, unint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow18IntentPromptAnswerVySo8INIntentCGMd, &_s11SiriKitFlow18IntentPromptAnswerVySo8INIntentCGMR);
  v10 = OUTLINED_FUNCTION_7_1(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  __chkstk_darwin(v10);
  specialized Collection.first.getter(a1, __src);
  if (__src[1])
  {
    memcpy(__dst, __src, 0x51uLL);
    v15 = static SLFDisambiguationItemConverter.getUpdatedIntent(intent:chosenItem:parameterName:)(a2, __dst, a3, a4);
    if (v15)
    {
      v16 = v15;
      CustomIntentDisambiguationItem.getRawValue()(__src);
      type metadata accessor for NSError(0, &lazy cache variable for type metadata for INIntent, INIntent_ptr);
      v17 = v16;
      IntentPromptAnswer.init(answeredValue:updatedIntent:)();
      OUTLINED_FUNCTION_71_2();
      static DisambiguationResult.chosenItem(_:)();

      v18 = *(v12 + 8);
      v19 = OUTLINED_FUNCTION_71_2();
      v20(v19);
    }

    else
    {
      if (one-time initialization token for voiceCommands != -1)
      {
        OUTLINED_FUNCTION_0_1();
        swift_once();
      }

      v36 = type metadata accessor for Logger();
      __swift_project_value_buffer(v36, static Logger.voiceCommands);
      v37 = Logger.logObject.getter();
      static os_log_type_t.error.getter();
      v38 = OUTLINED_FUNCTION_6_22();
      if (os_log_type_enabled(v38, v39))
      {
        OUTLINED_FUNCTION_18_1();
        *swift_slowAlloc() = 0;
        OUTLINED_FUNCTION_24_12(&dword_0, v40, v41, "#CustomIntentNeedsDisambiguationFlowStrategy getChosenItemResult: cannot update intent");
        OUTLINED_FUNCTION_15_1();
      }

      lazy protocol witness table accessor for type DisambiguationError and conformance DisambiguationError();
      OUTLINED_FUNCTION_31_10();
      swift_allocError();
      *v42 = 3;
      swift_willThrow();
    }

    return outlined destroy of CustomIntentDisambiguationItem(__dst);
  }

  else
  {
    outlined destroy of Any?(__src, &_s18SiriLinkFlowPlugin30CustomIntentDisambiguationItemVSgMd, &_s18SiriLinkFlowPlugin30CustomIntentDisambiguationItemVSgMR);
    if (one-time initialization token for voiceCommands != -1)
    {
      OUTLINED_FUNCTION_0_1();
      swift_once();
    }

    v45 = v4;
    v21 = type metadata accessor for Logger();
    __swift_project_value_buffer(v21, static Logger.voiceCommands);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    v24 = OUTLINED_FUNCTION_17_18();
    if (os_log_type_enabled(v24, v25))
    {
      OUTLINED_FUNCTION_18_1();
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_0, v22, v23, "#CustomIntentNeedsDisambiguationFlowStrategy getChosenItemResult: cannot get selected items", v26, 2u);
      OUTLINED_FUNCTION_15_1();
    }

    memset(__dst, 0, 32);
    v27 = OUTLINED_FUNCTION_63_6();
    v30 = static INIntentParameterHelper.applyParameterValue(_:_:_:applyValueStrategy:)(v27, v28, a4, v29, 0, 1);
    outlined destroy of Any?(__dst, &_sypSgMd, &_sypSgMR);
    memset(__dst, 0, 32);
    type metadata accessor for NSError(0, &lazy cache variable for type metadata for INIntent, INIntent_ptr);
    v31 = v30;
    IntentPromptAnswer.init(answeredValue:updatedIntent:)();
    OUTLINED_FUNCTION_71_2();
    static DisambiguationResult.chosenItem(_:)();

    v32 = *(v12 + 8);
    v33 = OUTLINED_FUNCTION_71_2();
    return v34(v33);
  }
}

uint64_t CustomIntentNeedsDisambiguationFlowStrategy.makePromptForDisambiguation(paginatedItems:resolveRecord:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[14] = a3;
  v4[15] = v3;
  v4[12] = a1;
  v4[13] = a2;
  v5 = OUTLINED_FUNCTION_4();
  return _swift_task_switch(v5, v6, v7);
}

uint64_t CustomIntentNeedsDisambiguationFlowStrategy.makePromptForDisambiguation(paginatedItems:resolveRecord:)()
{
  OUTLINED_FUNCTION_15_2();
  v1 = v0[13];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow22PaginatedItemContainerVy0a4LinkC6Plugin026CustomIntentDisambiguationE0VGMd, &_s11SiriKitFlow22PaginatedItemContainerVy0a4LinkC6Plugin026CustomIntentDisambiguationE0VGMR);
  v2 = PaginatedItemContainer.pageSize.getter();
  v3 = *(PaginatedItemContainer.items.getter() + 16);

  if (v2 >= v3)
  {
    if (one-time initialization token for voiceCommands != -1)
    {
      OUTLINED_FUNCTION_0_1();
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    __swift_project_value_buffer(v17, static Logger.voiceCommands);
    v18 = Logger.logObject.getter();
    static os_log_type_t.debug.getter();
    v19 = OUTLINED_FUNCTION_17_18();
    if (os_log_type_enabled(v19, v20))
    {
      OUTLINED_FUNCTION_18_1();
      v21 = swift_slowAlloc();
      OUTLINED_FUNCTION_45(v21);
      OUTLINED_FUNCTION_26(&dword_0, v22, v23, "#CustomIntentNeedsDisambiguationFlowStrategy: prompt without pagination");
      OUTLINED_FUNCTION_15_1();
    }

    v24 = v0[15];

    v25 = *(*v24 + 304);
    v31 = (v25 + *v25);
    v26 = v25[1];
    swift_task_alloc();
    OUTLINED_FUNCTION_20_0();
    v0[18] = v27;
    *v27 = v28;
    v27[1] = CustomIntentNeedsDisambiguationFlowStrategy.makePromptForDisambiguation(paginatedItems:resolveRecord:);
    v29 = v0[14];
    v30 = v0[15];

    return (v31)(v0 + 2, v29);
  }

  else
  {
    if (one-time initialization token for voiceCommands != -1)
    {
      OUTLINED_FUNCTION_0_1();
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    __swift_project_value_buffer(v4, static Logger.voiceCommands);
    v5 = Logger.logObject.getter();
    static os_log_type_t.debug.getter();
    v6 = OUTLINED_FUNCTION_17_18();
    if (os_log_type_enabled(v6, v7))
    {
      OUTLINED_FUNCTION_18_1();
      v8 = swift_slowAlloc();
      OUTLINED_FUNCTION_45(v8);
      OUTLINED_FUNCTION_26(&dword_0, v9, v10, "#CustomIntentNeedsDisambiguationFlowStrategy: prompt with pagination");
      OUTLINED_FUNCTION_15_1();
    }

    swift_task_alloc();
    OUTLINED_FUNCTION_20_0();
    v0[16] = v11;
    *v11 = v12;
    v11[1] = CustomIntentNeedsDisambiguationFlowStrategy.makePromptForDisambiguation(paginatedItems:resolveRecord:);
    v13 = v0[14];
    v14 = v0[15];
    v15 = v0[13];

    return CustomIntentNeedsDisambiguationFlowStrategy.makePromptForPagination(resolveRecord:paginatedItems:)();
  }
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_3();
  *v3 = v2;
  v5 = *(v4 + 128);
  v6 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v7 = v6;
  *(v8 + 136) = v0;

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v9, v10, v11);
}

{
  OUTLINED_FUNCTION_8_0();
  outlined init with take of AceServiceInvokerAsync((v0 + 56), *(v0 + 96));
  *(*(v0 + 120) + 72) = 0;
  OUTLINED_FUNCTION_6_7();

  return v1();
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_3();
  *v3 = v2;
  v5 = *(v4 + 144);
  v6 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v7 = v6;
  *(v8 + 152) = v0;

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v9, v10, v11);
}

{
  OUTLINED_FUNCTION_8_0();
  outlined init with take of AceServiceInvokerAsync((v0 + 16), *(v0 + 96));
  *(*(v0 + 120) + 72) = 0;
  OUTLINED_FUNCTION_6_7();

  return v1();
}

{
  v1 = *(v0 + 136);
  return OUTLINED_FUNCTION_21_15();
}

{
  v1 = *(v0 + 152);
  return OUTLINED_FUNCTION_21_15();
}

uint64_t CustomIntentNeedsDisambiguationFlowStrategy.makePromptForDisambiguationNoPagination(resolveRecord:)()
{
  OUTLINED_FUNCTION_8_0();
  v1[30] = v2;
  v1[31] = v0;
  v1[29] = v3;
  v1[32] = *v0;
  v4 = type metadata accessor for DialogPhase();
  v1[33] = v4;
  OUTLINED_FUNCTION_5_0(v4);
  v1[34] = v5;
  v7 = *(v6 + 64);
  v1[35] = OUTLINED_FUNCTION_27();
  v1[36] = swift_task_alloc();
  v8 = type metadata accessor for OutputGenerationManifest();
  v1[37] = v8;
  OUTLINED_FUNCTION_5_0(v8);
  v1[38] = v9;
  v11 = *(v10 + 64);
  v1[39] = OUTLINED_FUNCTION_28();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  OUTLINED_FUNCTION_14(v12);
  v14 = *(v13 + 64);
  v1[40] = OUTLINED_FUNCTION_27();
  v1[41] = swift_task_alloc();
  v15 = type metadata accessor for ParameterIdentifier();
  v1[42] = v15;
  OUTLINED_FUNCTION_5_0(v15);
  v1[43] = v16;
  v18 = *(v17 + 64);
  v1[44] = OUTLINED_FUNCTION_28();
  v19 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v19, v20, v21);
}

{
  OUTLINED_FUNCTION_24_1();
  v1 = *(v0 + 344);
  v2 = *(v0 + 352);
  v3 = *(v0 + 336);
  v4 = *(v0 + 240);
  v5 = *(v0 + 248);
  *(v0 + 360) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow25ParameterResolutionRecordVySo8INIntentCGMd, &_s11SiriKitFlow25ParameterResolutionRecordVySo8INIntentCGMR);
  v6 = ParameterResolutionRecord.intent.getter();
  *(v0 + 368) = v6;
  ParameterResolutionRecord.parameter.getter();
  v7 = ParameterIdentifier.name.getter();
  v9 = v8;
  v32 = v7;
  *(v0 + 376) = v7;
  *(v0 + 384) = v8;
  (*(v1 + 8))(v2, v3);
  type metadata accessor for CustomIntentNeedsDisambiguationFlowStrategy();
  outlined init with copy of DeviceState(v5 + 16, v0 + 72);
  static CustomIntentNeedsDisambiguationFlowStrategy.makeDisambiguationList(resolveRecord:deviceState:)();
  v11 = v10;
  *(v0 + 392) = v10;
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 72));
  *(v0 + 480) = INIntent.isRestricted()();
  outlined init with copy of DeviceState(v5 + 16, v0 + 112);
  type metadata accessor for CustomIntentNLContextProvider();
  inited = swift_initStackObject();
  *(v0 + 400) = inited;
  outlined init with take of AceServiceInvokerAsync((v0 + 112), inited + 16);
  v13 = _sSo8INIntentC18SiriLinkFlowPluginE5typed2asxSgxm_tABRbzlFSo19WFSmartPromptIntentC_Ttg5();
  if (v13)
  {
    v14 = *(v0 + 328);

    CustomIntentNLContextProvider.makeContextForSmartPrompt()();
    type metadata accessor for NLContextUpdate();
    v15 = OUTLINED_FUNCTION_43_8();
    __swift_storeEnumTagSinglePayload(v15, v16, 1, v17);
    *(v0 + 424) = OUTLINED_FUNCTION_67_6();
    v18 = ParameterResolutionRecord.result.getter();
    OUTLINED_FUNCTION_51_7(v18);
    v20 = *(v19 + 200);
    v33 = v20 + *v20;
    v21 = v20[1];
    v22 = swift_task_alloc();
    *(v0 + 440) = v22;
    *v22 = v0;
    OUTLINED_FUNCTION_11_21(v22);
    OUTLINED_FUNCTION_27_0();

    __asm { BRAA            X8, X16 }
  }

  v25 = *(v0 + 240);
  v26 = ParameterResolutionRecord.result.getter();
  *(v0 + 408) = v26;
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  *(v0 + 416) = v27;
  *v27 = v28;
  v27[1] = CustomIntentNeedsDisambiguationFlowStrategy.makePromptForDisambiguationNoPagination(resolveRecord:);
  v29 = *(v0 + 328);

  return CustomIntentNLContextProvider.makeNeedsDisambiguationContextFor(intent:parameter:resolutionResult:disambiguationItems:)(v29, v6, v32, v9, v26, v11);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v2 = *(v1 + 416);
  v3 = *(v1 + 408);
  v4 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v6, v7, v8);
}

{
  OUTLINED_FUNCTION_12_0();
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v4 = v3;
  v5 = v2[55];
  v6 = *v1;
  OUTLINED_FUNCTION_4_1();
  *v7 = v6;
  v3[56] = v8;
  v3[57] = v0;

  v9 = v2[54];
  v10 = v2[53];
  if (v0)
  {
    v12 = v3[48];
    v11 = v3[49];
  }

  else
  {
  }

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v13, v14, v15);
}

{
  OUTLINED_FUNCTION_24_1();
  v1 = *(v0 + 448);
  v2 = *(v0 + 288);
  static DialogPhase.clarification.getter();
  v3 = specialized Array.count.getter(v1);
  if (v3)
  {
    OUTLINED_FUNCTION_52_7(v3, v4, *(v0 + 448));
    if (v1)
    {
      v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v5 = *(*(v0 + 448) + 32);
    }

    v6 = v5;
    v7 = [v5 catId];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v8 = *(v0 + 480);
  v9 = *(v0 + 320);
  v32 = *(v0 + 328);
  v10 = *(v0 + 312);
  v11 = *(v0 + 288);
  v13 = *(v0 + 264);
  v12 = *(v0 + 272);
  v14 = *(v0 + 248);
  (*(v12 + 16))(*(v0 + 280), v11, v13);
  OUTLINED_FUNCTION_1_0();
  OutputGenerationManifest.init(dialogPhase:_:)();
  OutputGenerationManifest.responseViewId.setter();
  (*(v12 + 8))(v11, v13);
  OutputGenerationManifest.canUseServerTTS.setter();
  OutputGenerationManifest.listenAfterSpeaking.setter();
  outlined init with copy of NLContextUpdate?(v32, v9, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  OutputGenerationManifest.nlContextUpdate.setter();
  outlined init with copy of DeviceState(v14 + 16, v0 + 152);
  v15 = *(v14 + 128);
  v16 = *(v14 + 136);
  v17 = type metadata accessor for ResponseFactory();
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  swift_allocObject();
  v20 = ResponseFactory.init()();
  *(v0 + 216) = v17;
  *(v0 + 224) = &protocol witness table for ResponseFactory;
  *(v0 + 192) = v20;
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  *(v0 + 464) = v21;
  *v21 = v22;
  v21[1] = CustomIntentNeedsDisambiguationFlowStrategy.makePromptForDisambiguationNoPagination(resolveRecord:);
  v23 = *(v0 + 448);
  v24 = *(v0 + 392);
  v25 = *(v0 + 368);
  v26 = *(v0 + 312);
  v27 = *(v0 + 232);
  v31 = *(v0 + 384);
  v30 = *(v0 + 376);
  OUTLINED_FUNCTION_27_0();

  return static CustomIntentNeedsDisambiguationFlowStrategy.makePromptForDisambiguationNoPagination(deviceState:manifest:dialogResults:intent:voiceCommandName:disambiguationList:parameterName:responseFactory:)();
}

{
  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_9_0();
  v3 = v2;
  OUTLINED_FUNCTION_4_1();
  *v4 = v3;
  v6 = v5[58];
  v7 = v5[56];
  v8 = v5[49];
  v9 = v5[48];
  v10 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v11 = v10;
  v3[59] = v0;

  __swift_destroy_boxed_opaque_existential_1Tm(v3 + 19);

  __swift_destroy_boxed_opaque_existential_1Tm(v3 + 24);
  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v12, v13, v14);
}

{
  OUTLINED_FUNCTION_15_2();
  v1 = v0[50];
  v2 = v0[46];
  v3 = v0[41];

  outlined destroy of Any?(v3, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  v4 = v0[57];
  OUTLINED_FUNCTION_66_6();

  OUTLINED_FUNCTION_6_0();

  return v5();
}

{
  OUTLINED_FUNCTION_15_2();
  v1 = v0[50];
  v2 = v0[46];
  v3 = v0[41];
  v5 = v0[38];
  v4 = v0[39];
  v6 = v0[37];

  v7 = *(v5 + 8);
  v8 = OUTLINED_FUNCTION_9_3();
  v9(v8);
  outlined destroy of Any?(v3, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  v10 = v0[59];
  OUTLINED_FUNCTION_66_6();

  OUTLINED_FUNCTION_6_0();

  return v11();
}

void CustomIntentNeedsDisambiguationFlowStrategy.makePromptForDisambiguationNoPagination(resolveRecord:)()
{
  OUTLINED_FUNCTION_15_2();
  *(v0 + 424) = OUTLINED_FUNCTION_67_6();
  v1 = ParameterResolutionRecord.result.getter();
  OUTLINED_FUNCTION_51_7(v1);
  v3 = *(v2 + 200);
  v8 = v3 + *v3;
  v4 = v3[1];
  v5 = swift_task_alloc();
  *(v0 + 440) = v5;
  *v5 = v0;
  OUTLINED_FUNCTION_11_21(v5);

  __asm { BRAA            X8, X16 }
}

{
  OUTLINED_FUNCTION_24_1();
  v1 = v0[50];
  v2 = v0[46];
  v3 = v0[44];
  v5 = v0[40];
  v4 = v0[41];
  v7 = v0[38];
  v6 = v0[39];
  v9 = v0[36];
  v8 = v0[37];
  v12 = v0[35];
  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_1Tm((v1 + 16));

  (*(v7 + 8))(v6, v8);
  outlined destroy of Any?(v4, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);

  OUTLINED_FUNCTION_6_7();
  OUTLINED_FUNCTION_27_0();

  __asm { BRAA            X1, X16 }
}

uint64_t static CustomIntentNeedsDisambiguationFlowStrategy.makePromptForDisambiguationNoPagination(deviceState:manifest:dialogResults:intent:voiceCommandName:disambiguationList:parameterName:responseFactory:)()
{
  OUTLINED_FUNCTION_8_0();
  *(v0 + 280) = v21;
  *(v0 + 264) = v20;
  *(v0 + 248) = v1;
  *(v0 + 256) = v2;
  *(v0 + 232) = v3;
  *(v0 + 240) = v4;
  *(v0 + 216) = v5;
  *(v0 + 224) = v6;
  *(v0 + 200) = v7;
  *(v0 + 208) = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Intents10INShortcutOSgMd, &_s7Intents10INShortcutOSgMR);
  OUTLINED_FUNCTION_14(v9);
  v11 = *(v10 + 64);
  *(v0 + 288) = OUTLINED_FUNCTION_27();
  *(v0 + 296) = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit14VisualPropertyVSgMd, &_s10SnippetKit14VisualPropertyVSgMR);
  OUTLINED_FUNCTION_14(v12);
  v14 = *(v13 + 64);
  *(v0 + 304) = OUTLINED_FUNCTION_27();
  *(v0 + 312) = swift_task_alloc();
  *(v0 + 320) = swift_task_alloc();
  v15 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v15, v16, v17);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_3();
  *v2 = v1;
  v4 = *(v3 + 344);
  *v2 = *v0;
  *(v1 + 352) = v5;

  v6 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v6, v7, v8);
}

{
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_14_0();
  v2 = *(v1 + 352);
  if (!v2)
  {
    goto LABEL_10;
  }

  v3 = [*(v1 + 352) shortcut];
  if (v3)
  {
    v4 = v3;
    v5 = *(v1 + 288);
    static INShortcut._unconditionallyBridgeFromObjectiveC(_:)();

    v0 = 0;
  }

  else
  {
    v0 = &dword_0 + 1;
  }

  v7 = *(v1 + 288);
  v6 = *(v1 + 296);
  v8 = type metadata accessor for INShortcut();
  __swift_storeEnumTagSinglePayload(v7, v0, 1, v8);
  outlined init with take of INShortcut?(v7, v6, &_s7Intents10INShortcutOSgMd, &_s7Intents10INShortcutOSgMR);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v6, 1, v8);
  v10 = *(v1 + 296);
  if (EnumTagSinglePayload == 1)
  {

    outlined destroy of Any?(v10, &_s7Intents10INShortcutOSgMd, &_s7Intents10INShortcutOSgMR);
LABEL_10:
    v14 = 0;
    goto LABEL_11;
  }

  v11 = *(v1 + 296);
  v0 = INShortcut.intent.getter();
  (*(*(v8 - 8) + 8))(v10, v8);
  if (!v0 || (v12 = [v0 _keyImage], v0, outlined bridged method (ob) of @objc INImage._imageData.getter(v12), v13 >> 60 == 15))
  {

    goto LABEL_10;
  }

  v0 = *(v1 + 320);
  v25 = *(v1 + 328);
  v26 = *(v1 + 312);
  v27 = [v2 shortcutName];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v28;

  OUTLINED_FUNCTION_56_1();
  static WorkflowDataModels.getThumbnail(imageData:)();

  v29 = OUTLINED_FUNCTION_56_1();
  outlined consume of Data?(v29, v30);
  v31 = OUTLINED_FUNCTION_22_4();
  outlined destroy of Any?(v31, v32, &_s10SnippetKit14VisualPropertyVSgMR);
  __swift_storeEnumTagSinglePayload(v26, 0, 1, v25);
  outlined init with take of INShortcut?(v26, v0, &_s10SnippetKit14VisualPropertyVSgMd, &_s10SnippetKit14VisualPropertyVSgMR);
LABEL_11:
  *(v1 + 360) = v14;
  v15 = specialized Array.count.getter(*(v1 + 224));
  if (v15)
  {
    OUTLINED_FUNCTION_52_7(v15, v16, *(v1 + 224));
    if (v0)
    {
      v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v17 = *(*(v1 + 224) + 32);
    }

    v18 = v17;
    v19 = DialogExecutionResult.firstDialogFullPrint()();
    countAndFlagsBits = v19.value._countAndFlagsBits;
    object = v19.value._object;
  }

  else
  {
    countAndFlagsBits = 0;
    object = 0;
  }

  *(v1 + 368) = countAndFlagsBits;
  *(v1 + 376) = object;
  v22 = swift_task_alloc();
  *(v1 + 384) = v22;
  *v22 = v1;
  OUTLINED_FUNCTION_14_22(v22);
  OUTLINED_FUNCTION_25_2();

  return Array<A>.toDisambiguationItemModels(intent:parameterName:)();
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v3 = v2;
  OUTLINED_FUNCTION_4_1();
  *v4 = v3;
  v6 = *(v5 + 384);
  *v4 = *v1;
  v3[49] = v7;
  v3[50] = v0;

  if (v0)
  {
    v8 = v3[47];
    v9 = v3[45];
  }

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v10, v11, v12);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v2 = v1;
  OUTLINED_FUNCTION_4_1();
  *v3 = v2;
  v5 = *(v4 + 408);
  v6 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v7 = v6;

  __swift_destroy_boxed_opaque_existential_1Tm((v2 + 56));
  v8 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v8, v9, v10);
}

{
  OUTLINED_FUNCTION_12_0();
  outlined destroy of Any?(v0[40], &_s10SnippetKit14VisualPropertyVSgMd, &_s10SnippetKit14VisualPropertyVSgMR);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v2 = v0[39];
  v1 = v0[40];
  v4 = v0[37];
  v3 = v0[38];
  v5 = v0[36];

  OUTLINED_FUNCTION_6_7();

  return v6();
}

{
  OUTLINED_FUNCTION_15_2();
  v1 = *v0;
  v2 = *(*v0 + 416);
  v3 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v4 = v3;

  v5 = v1[40];
  v6 = v1[39];
  v7 = v1[38];
  v8 = v1[37];
  v9 = v1[36];

  v10 = *(v3 + 8);

  return v10();
}

{
  OUTLINED_FUNCTION_15_2();
  v1 = v0[39];
  v3 = v0[37];
  v2 = v0[38];
  v4 = v0[36];
  outlined destroy of Any?(v0[40], &_s10SnippetKit14VisualPropertyVSgMd, &_s10SnippetKit14VisualPropertyVSgMR);

  OUTLINED_FUNCTION_6_0();
  v6 = v0[50];

  return v5();
}

uint64_t static CustomIntentNeedsDisambiguationFlowStrategy.makePromptForDisambiguationNoPagination(deviceState:manifest:dialogResults:intent:voiceCommandName:disambiguationList:parameterName:responseFactory:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_30();
  v13 = *(v12 + 208);
  v14 = v13[4];
  __swift_project_boxed_opaque_existential_1(v13, v13[3]);
  OUTLINED_FUNCTION_9_3();
  if (dispatch thunk of DeviceState.isHomePod.getter())
  {
    v15 = *(v12 + 280);
    v16 = v15[4];
    __swift_project_boxed_opaque_existential_1(v15, v15[3]);
    v17 = async function pointer to dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)[1];
    swift_task_alloc();
    OUTLINED_FUNCTION_20_0();
    *(v12 + 416) = v18;
    *v18 = v19;
    v18[1] = static CustomIntentNeedsDisambiguationFlowStrategy.makePromptForDisambiguationNoPagination(deviceState:manifest:dialogResults:intent:voiceCommandName:disambiguationList:parameterName:responseFactory:);
    v21 = *(v12 + 216);
    v20 = *(v12 + 224);
    v22 = *(v12 + 200);
    OUTLINED_FUNCTION_57_4();

    return dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10, a11, a12);
  }

  v31 = *(v12 + 320);
  v32 = *(v12 + 232);
  v33 = type metadata accessor for VisualProperty();
  *(v12 + 328) = v33;
  __swift_storeEnumTagSinglePayload(v31, 1, 1, v33);
  v34 = [v32 typeName];
  v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v37 = v36;

  OUTLINED_FUNCTION_61_2();
  if (v35 == 0xD000000000000051 && v38 == v37)
  {
    goto LABEL_16;
  }

  v40 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v40)
  {
    goto LABEL_17;
  }

  v41 = [*(v12 + 232) typeName];
  v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v44 = v43;

  OUTLINED_FUNCTION_61_2();
  if (v42 == 0xD00000000000005ALL && v45 == v44)
  {
LABEL_16:
  }

  else
  {
    v47 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v47 & 1) == 0)
    {
      v48 = 0;
LABEL_29:
      *(v12 + 360) = v48;
      v63 = specialized Array.count.getter(*(v12 + 224));
      if (v63)
      {
        OUTLINED_FUNCTION_52_7(v63, v64, *(v12 + 224));
        if (v33)
        {
          v65 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v65 = *(*(v12 + 224) + 32);
        }

        v66 = v65;
        v67 = DialogExecutionResult.firstDialogFullPrint()();
        countAndFlagsBits = v67.value._countAndFlagsBits;
        object = v67.value._object;
      }

      else
      {
        countAndFlagsBits = 0;
        object = 0;
      }

      *(v12 + 368) = countAndFlagsBits;
      *(v12 + 376) = object;
      v76 = swift_task_alloc();
      *(v12 + 384) = v76;
      *v76 = v12;
      OUTLINED_FUNCTION_14_22(v76);
      OUTLINED_FUNCTION_57_4();

      return Array<A>.toDisambiguationItemModels(intent:parameterName:)();
    }
  }

LABEL_17:
  v49 = *(v12 + 232);
  v50 = String._bridgeToObjectiveC()();
  v51 = [v49 valueForKey:v50];

  if (v51)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v79 = 0u;
    v80 = 0u;
  }

  *(v12 + 96) = v79;
  *(v12 + 112) = v80;
  if (!*(v12 + 120))
  {
    v55 = v12 + 96;
LABEL_34:
    outlined destroy of Any?(v55, &_sypSgMd, &_sypSgMR);
    goto LABEL_35;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_35;
  }

  v52 = *(v12 + 232);
  v48 = *(v12 + 184);
  v53 = String._bridgeToObjectiveC()();
  v54 = [v52 valueForKey:v53];

  if (v54)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v79 = 0u;
    v80 = 0u;
  }

  *(v12 + 128) = v79;
  *(v12 + 144) = v80;
  if (!*(v12 + 152))
  {

    v55 = v12 + 128;
    goto LABEL_34;
  }

  type metadata accessor for NSError(0, &lazy cache variable for type metadata for INFile, INFile_ptr);
  if (swift_dynamicCast())
  {
    v57 = *(v12 + 312);
    v56 = *(v12 + 320);
    v58 = *(v12 + 192);
    v59 = [v58 data];
    v60 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v62 = v61;

    static WorkflowDataModels.getThumbnail(imageData:)();
    outlined consume of Data._Representation(v60, v62);

    outlined destroy of Any?(v56, &_s10SnippetKit14VisualPropertyVSgMd, &_s10SnippetKit14VisualPropertyVSgMR);
    __swift_storeEnumTagSinglePayload(v57, 0, 1, v33);
    outlined init with take of INShortcut?(v57, v56, &_s10SnippetKit14VisualPropertyVSgMd, &_s10SnippetKit14VisualPropertyVSgMR);
    goto LABEL_29;
  }

LABEL_35:
  type metadata accessor for VoiceShortcutClientWrapper();
  *(v12 + 336) = swift_initStackObject();
  v70 = swift_task_alloc();
  *(v12 + 344) = v70;
  *v70 = v12;
  v70[1] = static CustomIntentNeedsDisambiguationFlowStrategy.makePromptForDisambiguationNoPagination(deviceState:manifest:dialogResults:intent:voiceCommandName:disambiguationList:parameterName:responseFactory:);
  v72 = *(v12 + 240);
  v71 = *(v12 + 248);
  OUTLINED_FUNCTION_57_4();

  return VoiceShortcutClientWrapper.getVoiceShortcut(voiceCommandName:)(v73, v74);
}

{
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_14_0();
  if (!*(v12 + 360))
  {
    goto LABEL_3;
  }

  v13 = *(v12 + 320);
  v14 = *(v12 + 328);
  v15 = *(v12 + 304);

  v16 = OUTLINED_FUNCTION_9_3();
  outlined init with copy of NLContextUpdate?(v16, v17, &_s10SnippetKit14VisualPropertyVSgMd, &_s10SnippetKit14VisualPropertyVSgMR);
  LODWORD(v14) = __swift_getEnumTagSinglePayload(v15, 1, v14);
  v18 = OUTLINED_FUNCTION_20_1();
  outlined destroy of Any?(v18, v19, &_s10SnippetKit14VisualPropertyVSgMR);
  if (v14 != 1)
  {
    v20 = &protocol witness table for WorkflowDataModels.DisambiguateSmartPromptItemsModel;
    v21 = &type metadata for WorkflowDataModels.DisambiguateSmartPromptItemsModel;
  }

  else
  {
LABEL_3:
    v20 = &protocol witness table for WorkflowDataModels.DisambiguateItemsModel;
    v21 = &type metadata for WorkflowDataModels.DisambiguateItemsModel;
  }

  *(v12 + 40) = v21;
  *(v12 + 48) = v20;
  v22 = *(v12 + 392);
  v23 = *(v12 + 280);
  *(v12 + 16) = *(v12 + 368);
  *(v12 + 32) = v22;
  v24 = v23[4];
  __swift_project_boxed_opaque_existential_1(v23, v23[3]);
  __swift_project_boxed_opaque_existential_1((v12 + 16), v21);
  v25 = v20[1];
  *(v12 + 80) = type metadata accessor for WorkflowDataModels(0);
  *(v12 + 88) = _s11SiriKitFlow5InputVACs23CustomStringConvertibleAAWlTm_3(&lazy protocol witness table cache variable for type WorkflowDataModels and conformance WorkflowDataModels, 255, type metadata accessor for WorkflowDataModels);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v12 + 56));
  v25(boxed_opaque_existential_1);
  v27 = async function pointer to dispatch thunk of ResponseGenerating.makeResponseOutput(resultModel:dialog:outputGenerationManifest:)[1];
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  *(v12 + 408) = v28;
  *v28 = v29;
  v28[1] = static CustomIntentNeedsDisambiguationFlowStrategy.makePromptForDisambiguationNoPagination(deviceState:manifest:dialogResults:intent:voiceCommandName:disambiguationList:parameterName:responseFactory:);
  v31 = *(v12 + 216);
  v30 = *(v12 + 224);
  v32 = *(v12 + 200);
  OUTLINED_FUNCTION_25_2();

  return dispatch thunk of ResponseGenerating.makeResponseOutput(resultModel:dialog:outputGenerationManifest:)(v33, v34, v35, v36, v37, v38, v39, v40, a9, a10, a11, a12);
}

uint64_t CustomIntentNeedsDisambiguationFlowStrategy.makePromptForPagination(resolveRecord:paginatedItems:)()
{
  OUTLINED_FUNCTION_8_0();
  v1[17] = v2;
  v1[18] = v0;
  v1[15] = v3;
  v1[16] = v4;
  v5 = type metadata accessor for DialogPhase();
  v1[19] = v5;
  OUTLINED_FUNCTION_5_0(v5);
  v1[20] = v6;
  v8 = *(v7 + 64);
  v1[21] = OUTLINED_FUNCTION_27();
  v1[22] = swift_task_alloc();
  v9 = type metadata accessor for OutputGenerationManifest();
  v1[23] = v9;
  OUTLINED_FUNCTION_5_0(v9);
  v1[24] = v10;
  v12 = *(v11 + 64);
  v1[25] = OUTLINED_FUNCTION_28();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  OUTLINED_FUNCTION_14(v13);
  v15 = *(v14 + 64);
  v1[26] = OUTLINED_FUNCTION_27();
  v1[27] = swift_task_alloc();
  v16 = type metadata accessor for ParameterIdentifier();
  v1[28] = v16;
  OUTLINED_FUNCTION_5_0(v16);
  v1[29] = v17;
  v19 = *(v18 + 64);
  v1[30] = OUTLINED_FUNCTION_28();
  v20 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v20, v21, v22);
}

{
  OUTLINED_FUNCTION_12_0();
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v4 = v3;
  v5 = v2[42];
  v6 = *v1;
  OUTLINED_FUNCTION_4_1();
  *v7 = v6;
  v3[43] = v8;
  v3[44] = v0;

  v9 = v2[41];
  if (v0)
  {
    v10 = v3[34];
  }

  else
  {
  }

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v11, v12, v13);
}

{
  OUTLINED_FUNCTION_15_2();
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  OUTLINED_FUNCTION_10_30();
  if (v2)
  {
    OUTLINED_FUNCTION_35_11();
  }

  v3 = v1[43];
  OUTLINED_FUNCTION_70_4();
  v1[47] = OUTLINED_FUNCTION_37_10(v1[14]);
  v1[48] = ParameterResolutionRecord.result.getter();
  v8 = (*v0 + 264);
  v9 = (*v8 + **v8);
  v4 = (*v8)[1];
  v5 = swift_task_alloc();
  v1[49] = v5;
  *v5 = v1;
  v6 = OUTLINED_FUNCTION_13_20(v5);

  return v9(v6);
}

{
  OUTLINED_FUNCTION_15_2();
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v4 = v3;
  v5 = v2[49];
  v6 = *v1;
  OUTLINED_FUNCTION_4_1();
  *v7 = v6;
  v3[50] = v8;
  v3[51] = v0;

  v9 = v2[48];
  v10 = v2[47];
  if (v0)
  {
    v11 = v3[45];
    v12 = v3[34];
  }

  else
  {
    v13 = v3[34];
  }

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v14, v15, v16);
}

{
  OUTLINED_FUNCTION_14_0();
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  OUTLINED_FUNCTION_10_30();
  if (v1)
  {
    OUTLINED_FUNCTION_35_11();
  }

  v2 = v0[50];
  v3 = v0[46];
  v4 = v0[35];
  v5 = v0[17];
  OUTLINED_FUNCTION_70_4();
  v0[52] = v0[14];
  v6 = PaginatedItemContainer.page.getter();
  v0[53] = v6;
  v7 = *(*v3 + 248);
  v12 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  v0[54] = v9;
  *v9 = v0;
  v9[1] = CustomIntentNeedsDisambiguationFlowStrategy.makePromptForPagination(resolveRecord:paginatedItems:);
  v10 = v0[46];

  return v12(v6);
}

{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_9_0();
  v3 = v2;
  OUTLINED_FUNCTION_4_1();
  *v4 = v3;
  v6 = *(v5 + 432);
  v7 = *(v5 + 424);
  v8 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v9 = v8;
  v3[55] = v10;
  v3[56] = v0;

  if (v0)
  {
    v11 = v3[52];
  }

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v12, v13, v14);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v3 = v2;
  OUTLINED_FUNCTION_4_1();
  *v4 = v3;
  v6 = *(v5 + 464);
  *v4 = *v1;
  v3[59] = v7;
  v3[60] = v0;

  if (v0)
  {
    v8 = v3[57];
  }

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v9, v10, v11);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v2 = v1[63];
  v3 = v1[62];
  v4 = v1[61];
  v5 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v6 = v5;

  v7 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t CustomIntentNeedsDisambiguationFlowStrategy.makePromptForPagination(resolveRecord:paginatedItems:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_21_1();
  OUTLINED_FUNCTION_30();
  v15 = *(v14 + 232);
  v16 = *(v14 + 240);
  v17 = *(v14 + 224);
  v18 = *(v14 + 128);
  v19 = *(v14 + 136);
  *(v14 + 248) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow25ParameterResolutionRecordVySo8INIntentCGMd, &_s11SiriKitFlow25ParameterResolutionRecordVySo8INIntentCGMR);
  v20 = ParameterResolutionRecord.intent.getter();
  *(v14 + 256) = v20;
  ParameterResolutionRecord.parameter.getter();
  v21 = ParameterIdentifier.name.getter();
  v23 = v22;
  v67 = v21;
  *(v14 + 264) = v21;
  *(v14 + 272) = v22;
  (*(v15 + 8))(v16, v17);
  *(v14 + 280) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow22PaginatedItemContainerVy0a4LinkC6Plugin026CustomIntentDisambiguationE0VGMd, &_s11SiriKitFlow22PaginatedItemContainerVy0a4LinkC6Plugin026CustomIntentDisambiguationE0VGMR);
  v24 = *(PaginatedItemContainer.items.getter() + 16);
  *(v14 + 288) = v24;

  result = PaginatedItemContainer.pageSize.getter();
  *(v14 + 296) = result;
  if (!result)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v26 = result;
  v27 = *(v14 + 136);
  if (v24 % result)
  {
    v28 = v24 / result + 1;
  }

  else
  {
    v28 = v24 / result;
  }

  result = PaginatedItemContainer.getCurrentPageIndex()();
  v29 = result * v26;
  if ((result * v26) >> 64 != (result * v26) >> 63)
  {
    goto LABEL_20;
  }

  *(v14 + 304) = v24 - v29;
  if (__OFSUB__(v24, v29))
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v30 = v28 - result;
  if (__OFSUB__(v28, result))
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  *(v14 + 312) = v30 - 1;
  if (__OFSUB__(v30, 1))
  {
LABEL_23:
    __break(1u);
    return result;
  }

  outlined init with copy of DeviceState(*(v14 + 144) + 16, v14 + 72);
  type metadata accessor for CustomIntentNLContextProvider();
  inited = swift_initStackObject();
  *(v14 + 320) = inited;
  outlined init with take of AceServiceInvokerAsync((v14 + 72), inited + 16);
  v32 = _sSo8INIntentC18SiriLinkFlowPluginE5typed2asxSgxm_tABRbzlFSo19WFSmartPromptIntentC_Ttg5();
  v33 = *(v14 + 216);
  if (v32)
  {

    CustomIntentNLContextProvider.makeContextForSmartPrompt()();
  }

  else
  {
    v35 = *(v14 + 136);
    v34 = *(v14 + 144);
    v37 = *(v34 + 56);
    v36 = *(v34 + 64);

    CustomIntentNLContextProvider.makeContextForPagination(intent:parameterName:displayHints:selectionItems:paginatedItems:)(v20, v67, v23, v37, v36, v35);
  }

  v38 = *(v14 + 216);
  v39 = *(v14 + 144);
  v40 = type metadata accessor for NLContextUpdate();
  __swift_storeEnumTagSinglePayload(v38, 0, 1, v40);
  *(v14 + 112) = _swiftEmptyArrayStorage;
  if (*(v39 + 72) == 1)
  {
    v41 = *(v14 + 128);
    v42 = *(*(v14 + 144) + 80);
    *(v14 + 328) = ParameterResolutionRecord.app.getter();
    v64 = (*v42 + 256);
    v65 = *v64 + **v64;
    v43 = (*v64)[1];
    v44 = swift_task_alloc();
    *(v14 + 336) = v44;
    *v44 = v14;
    v44[1] = CustomIntentNeedsDisambiguationFlowStrategy.makePromptForPagination(resolveRecord:paginatedItems:);
    OUTLINED_FUNCTION_6_1();

    return v50(v45, v46, v47, v48, v49, v50, v51, v52, v64, v65, v67, a12, a13, a14);
  }

  else
  {
    *(v14 + 376) = OUTLINED_FUNCTION_37_10(_swiftEmptyArrayStorage);
    *(v14 + 384) = ParameterResolutionRecord.result.getter();
    v66 = (*v20 + 264);
    v68 = *v66 + **v66;
    v53 = (*v66)[1];
    v54 = swift_task_alloc();
    *(v14 + 392) = v54;
    *v54 = v14;
    OUTLINED_FUNCTION_13_20(v54);
    OUTLINED_FUNCTION_6_1();

    return v61(v55, v56, v57, v58, v59, v60, v61, v62, a9, v66, v68, a12, a13, a14);
  }
}

{
  OUTLINED_FUNCTION_21_1();
  OUTLINED_FUNCTION_30();
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  OUTLINED_FUNCTION_10_30();
  if (v15)
  {
    OUTLINED_FUNCTION_35_11();
  }

  v16 = *(v14 + 440);
  v17 = *(v14 + 312);
  OUTLINED_FUNCTION_70_4();
  v18 = *(v14 + 112);
  *(v14 + 456) = v18;
  if (v17 < 1)
  {
    *(v14 + 488) = v18;
    v37 = *(v14 + 176);
    static DialogPhase.clarification.getter();
    if (specialized Array.count.getter(v18))
    {
      specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, 1, v18);
      v38 = [*(v18 + 32) catId];
      v65 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
      v65 = 0;
    }

    v39 = *(v14 + 256);
    v40 = *(v14 + 208);
    v67 = *(v14 + 216);
    v41 = *(v14 + 200);
    v43 = *(v14 + 168);
    v42 = *(v14 + 176);
    v44 = *(v14 + 160);
    v45 = *(v44 + 16);
    OUTLINED_FUNCTION_60_6();
    v46();
    OUTLINED_FUNCTION_1_0();
    OutputGenerationManifest.init(dialogPhase:_:)();
    OutputGenerationManifest.responseViewId.setter();
    v47 = *(v44 + 8);
    v48 = OUTLINED_FUNCTION_63_6();
    v49(v48);
    INIntent.isRestricted()();
    OutputGenerationManifest.canUseServerTTS.setter();
    OutputGenerationManifest.listenAfterSpeaking.setter();
    outlined init with copy of NLContextUpdate?(v67, v40, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
    OutputGenerationManifest.nlContextUpdate.setter();
    v50 = type metadata accessor for ResponseFactory();
    v51 = *(v50 + 48);
    v52 = *(v50 + 52);
    swift_allocObject();
    *(v14 + 496) = ResponseFactory.init()();
    v53 = *(&async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(dialog:outputGenerationManifest:) + 1);
    v68 = &async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(dialog:outputGenerationManifest:) + async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(dialog:outputGenerationManifest:);
    swift_task_alloc();
    OUTLINED_FUNCTION_20_0();
    *(v14 + 504) = v54;
    *v54 = v55;
    OUTLINED_FUNCTION_16_25(v54);
    OUTLINED_FUNCTION_6_1();

    return v59(v56, v57, v58, v59, v60, v61, v62, v63, a9, v65, v68, a12, a13, a14);
  }

  else
  {
    v19 = *(v14 + 296);
    v20 = *(v14 + 288);
    if (v20 % v19)
    {
      v21 = v20 / v19 + 1;
    }

    else
    {
      v21 = v20 / v19;
    }

    if (v21 >= *(v14 + 304))
    {
      v22 = *(v14 + 304);
    }

    v23 = (**(v14 + 368) + 208);
    v64 = v23;
    v66 = *v23 + **v23;
    v24 = (*v23)[1];
    v25 = swift_task_alloc();
    *(v14 + 464) = v25;
    *v25 = v14;
    v25[1] = CustomIntentNeedsDisambiguationFlowStrategy.makePromptForPagination(resolveRecord:paginatedItems:);
    v26 = *(v14 + 368);
    v27 = *(v14 + 312);
    OUTLINED_FUNCTION_6_1();

    return v30(v28, v29, v30, v31, v32, v33, v34, v35, a9, v64, v66, a12, a13, a14);
  }
}

{
  OUTLINED_FUNCTION_21_1();
  OUTLINED_FUNCTION_30();
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  OUTLINED_FUNCTION_10_30();
  if (v15)
  {
    OUTLINED_FUNCTION_35_11();
  }

  v16 = v14[59];
  OUTLINED_FUNCTION_70_4();
  v17 = v14[14];
  v14[61] = v17;
  v18 = v14[22];
  static DialogPhase.clarification.getter();
  if (specialized Array.count.getter(v17))
  {
    specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, 1, v17);
    v19 = [*(v17 + 32) catId];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v20 = v14[32];
  v21 = v14[26];
  v46 = v14[27];
  v22 = v14[25];
  v24 = v14[21];
  v23 = v14[22];
  v25 = v14[20];
  v26 = *(v25 + 16);
  OUTLINED_FUNCTION_60_6();
  v27();
  OUTLINED_FUNCTION_1_0();
  OutputGenerationManifest.init(dialogPhase:_:)();
  OutputGenerationManifest.responseViewId.setter();
  v28 = *(v25 + 8);
  v29 = OUTLINED_FUNCTION_63_6();
  v30(v29);
  INIntent.isRestricted()();
  OutputGenerationManifest.canUseServerTTS.setter();
  OutputGenerationManifest.listenAfterSpeaking.setter();
  outlined init with copy of NLContextUpdate?(v46, v21, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  OutputGenerationManifest.nlContextUpdate.setter();
  v31 = type metadata accessor for ResponseFactory();
  v32 = *(v31 + 48);
  v33 = *(v31 + 52);
  swift_allocObject();
  v14[62] = ResponseFactory.init()();
  v34 = *(&async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(dialog:outputGenerationManifest:) + 1);
  v47 = &async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(dialog:outputGenerationManifest:) + async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(dialog:outputGenerationManifest:);
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  v14[63] = v35;
  *v35 = v36;
  OUTLINED_FUNCTION_16_25(v35);
  OUTLINED_FUNCTION_6_1();

  return v40(v37, v38, v39, v40, v41, v42, v43, v44, a9, v47, v17, a12, a13, a14);
}

void CustomIntentNeedsDisambiguationFlowStrategy.makePromptForPagination(resolveRecord:paginatedItems:)()
{
  OUTLINED_FUNCTION_24_1();
  v1 = v0[40];
  v2 = v0[32];
  v3 = v0[30];
  v5 = v0[26];
  v4 = v0[27];
  v7 = v0[24];
  v6 = v0[25];
  v9 = v0[22];
  v8 = v0[23];
  v12 = v0[21];
  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_1Tm((v1 + 16));

  (*(v7 + 8))(v6, v8);
  outlined destroy of Any?(v4, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);

  OUTLINED_FUNCTION_6_7();
  OUTLINED_FUNCTION_27_0();

  __asm { BRAA            X1, X16 }
}

uint64_t CustomIntentNeedsDisambiguationFlowStrategy.makePromptForPagination(resolveRecord:paginatedItems:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_14_0();
  v13 = *(v11 + 352);
  OUTLINED_FUNCTION_7_24();

  outlined destroy of Any?(v10, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);

  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_25_2();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10);
}

{
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_14_0();
  v13 = *(v11 + 408);
  OUTLINED_FUNCTION_7_24();

  outlined destroy of Any?(v10, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);

  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_25_2();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10);
}

{
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_14_0();
  v13 = *(v11 + 448);
  OUTLINED_FUNCTION_7_24();

  outlined destroy of Any?(v10, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);

  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_25_2();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10);
}

{
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_14_0();
  v13 = *(v11 + 480);
  OUTLINED_FUNCTION_7_24();

  outlined destroy of Any?(v10, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);

  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_25_2();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10);
}

void CustomIntentNeedsDisambiguationFlowStrategy.getVoiceCommandPagination(parse:)()
{
  OUTLINED_FUNCTION_40_0();
  v112 = v0;
  v113 = v1;
  v2 = type metadata accessor for PaginationRequest();
  v3 = OUTLINED_FUNCTION_7_1(v2);
  v110 = v4;
  v111 = v3;
  v6 = *(v5 + 64);
  __chkstk_darwin(v3);
  OUTLINED_FUNCTION_3();
  v109 = v8 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
  v10 = OUTLINED_FUNCTION_14(v9);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v100 - v13;
  v15 = type metadata accessor for Siri_Nlu_External_UserParse();
  v16 = OUTLINED_FUNCTION_7_1(v15);
  v103 = v17;
  v104 = v16;
  v19 = *(v18 + 64);
  __chkstk_darwin(v16);
  OUTLINED_FUNCTION_3();
  v22 = v21 - v20;
  v105 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v23 = OUTLINED_FUNCTION_7_1(v105);
  v102 = v24;
  v26 = *(v25 + 64);
  __chkstk_darwin(v23);
  OUTLINED_FUNCTION_3();
  v101 = v28 - v27;
  OUTLINED_FUNCTION_22_10();
  v29 = type metadata accessor for USOParse();
  v30 = OUTLINED_FUNCTION_7_1(v29);
  v107 = v31;
  v108 = v30;
  v33 = *(v32 + 64);
  __chkstk_darwin(v30);
  OUTLINED_FUNCTION_3();
  v106 = v35 - v34;
  v36 = OUTLINED_FUNCTION_22_10();
  v37 = type metadata accessor for VoiceCommandsNLIntent(v36);
  v38 = OUTLINED_FUNCTION_7(v37);
  v40 = *(v39 + 64);
  __chkstk_darwin(v38);
  OUTLINED_FUNCTION_3();
  v43 = v42 - v41;
  v44 = type metadata accessor for NLIntent();
  v45 = OUTLINED_FUNCTION_7_1(v44);
  v47 = v46;
  v49 = *(v48 + 64);
  __chkstk_darwin(v45);
  OUTLINED_FUNCTION_3();
  v52 = v51 - v50;
  v53 = type metadata accessor for Parse();
  v54 = OUTLINED_FUNCTION_7_1(v53);
  v56 = v55;
  v58 = *(v57 + 64);
  __chkstk_darwin(v54);
  OUTLINED_FUNCTION_3();
  v61 = v60 - v59;
  (*(v56 + 16))(v60 - v59, v112, v53);
  v62 = *(v56 + 88);
  v63 = OUTLINED_FUNCTION_97();
  v65 = v64(v63);
  if (v65 == enum case for Parse.NLv3IntentPlusServerConversion(_:))
  {
    v66 = *(v56 + 96);
    v67 = OUTLINED_FUNCTION_97();
    v68(v67);
    v69 = *(v61 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology8NLIntentV_0A7KitFlow5ParseO16ServerConversionCtMd, &_s12SiriOntology8NLIntentV_0A7KitFlow5ParseO16ServerConversionCtMR) + 48));

    (*(v47 + 32))(v52, v61, v44);
    (*(v47 + 16))(v43, v52, v44);
    if (one-time initialization token for voiceCommandPaginationNode != -1)
    {
      swift_once();
    }

    _s11SiriKitFlow5InputVACs23CustomStringConvertibleAAWlTm_3(&lazy protocol witness table cache variable for type VoiceCommandsNLIntent and conformance VoiceCommandsNLIntent, 255, type metadata accessor for VoiceCommandsNLIntent);
    IntentNodeTraversable.value<A>(forNode:)();
    outlined destroy of VoiceCommandsNLIntent(v43);
    (*(v47 + 8))(v52, v44);
    value = v114;
    goto LABEL_5;
  }

  if (v65 == enum case for Parse.uso(_:))
  {
    v72 = *(v56 + 96);
    v73 = OUTLINED_FUNCTION_97();
    v74(v73);
    (*(v107 + 32))(v106, v61, v108);
    USOParse.userParse.getter();
    v75 = Siri_Nlu_External_UserParse.userDialogActs.getter();
    (*(v103 + 8))(v22, v104);
    specialized Collection.first.getter(v75, v14);

    v76 = v105;
    if (__swift_getEnumTagSinglePayload(v14, 1, v105) == 1)
    {
      outlined destroy of Any?(v14, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
      if (one-time initialization token for voiceCommands != -1)
      {
        OUTLINED_FUNCTION_0_1();
        swift_once();
      }

      v77 = type metadata accessor for Logger();
      v78 = __swift_project_value_buffer(v77, static Logger.voiceCommands);
      v79 = Logger.logObject.getter();
      static os_log_type_t.debug.getter();
      v80 = OUTLINED_FUNCTION_6_22();
      if (os_log_type_enabled(v80, v81))
      {
        OUTLINED_FUNCTION_18_1();
        v82 = swift_slowAlloc();
        OUTLINED_FUNCTION_45(v82);
        _os_log_impl(&dword_0, v79, v78, "#CustomIntentNeedsDisambiguationFlowStrategy: could not get pagination value", v14, 2u);
        OUTLINED_FUNCTION_15_1();
      }

      v83 = OUTLINED_FUNCTION_41_10();
      v84(v83);
    }

    else
    {
      v92 = v101;
      v93 = v102;
      (*(v102 + 32))(v101, v14, v76);
      v94.value = Siri_Nlu_External_UserDialogAct.paginationValue()().value;
      if (!v95)
      {
        value = v94.value;
        (*(v93 + 8))(v92, v76);
        v98 = OUTLINED_FUNCTION_41_10();
        v99(v98);
LABEL_5:
        switch(value)
        {
          case SiriLinkFlowPlugin_VoiceCommandsNLIntent_VoiceCommandPagination_previous:
            v71 = v109;
            static PaginationRequest.previousPage()();
            break;
          case SiriLinkFlowPlugin_VoiceCommandsNLIntent_VoiceCommandPagination_repeat:
          case SiriLinkFlowPlugin_VoiceCommandsNLIntent_VoiceCommandPagination_unknownDefault:
            goto LABEL_19;
          default:
            v71 = v109;
            static PaginationRequest.nextPage()();
            break;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow18IntentPromptAnswerVySo8INIntentCGMd, &_s11SiriKitFlow18IntentPromptAnswerVySo8INIntentCGMR);
        static DisambiguationResult.paginate(_:)();
        (*(v110 + 8))(v71, v111);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow20DisambiguationResultVyAA18IntentPromptAnswerVySo8INIntentCGGMd, &_s11SiriKitFlow20DisambiguationResultVyAA18IntentPromptAnswerVySo8INIntentCGGMR);
        v89 = OUTLINED_FUNCTION_43_8();
        goto LABEL_20;
      }

      (*(v93 + 8))(v92, v76);
      v96 = OUTLINED_FUNCTION_41_10();
      v97(v96);
    }

LABEL_19:
    v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow20DisambiguationResultVyAA18IntentPromptAnswerVySo8INIntentCGGMd, &_s11SiriKitFlow20DisambiguationResultVyAA18IntentPromptAnswerVySo8INIntentCGGMR);
    v89 = v113;
    v90 = 1;
LABEL_20:
    __swift_storeEnumTagSinglePayload(v89, v90, 1, v91);
    goto LABEL_21;
  }

  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow20DisambiguationResultVyAA18IntentPromptAnswerVySo8INIntentCGGMd, &_s11SiriKitFlow20DisambiguationResultVyAA18IntentPromptAnswerVySo8INIntentCGGMR);
  __swift_storeEnumTagSinglePayload(v113, 1, 1, v85);
  v86 = *(v56 + 8);
  v87 = OUTLINED_FUNCTION_97();
  v88(v87);
LABEL_21:
  OUTLINED_FUNCTION_42();
}

uint64_t CustomIntentNeedsDisambiguationFlowStrategy.getSmartPromptConfirmation(parse:intent:)(uint64_t a1)
{
  v2 = _sSo8INIntentC18SiriLinkFlowPluginE5typed2asxSgxm_tABRbzlFSo19WFSmartPromptIntentC_Ttg5();
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = outlined bridged method (pb) of @objc WFSmartPromptIntent.buttons.getter(v2);
  if (!v4 || (v5 = static SmartPromptConfirmationUtils.getSimpleConfirmation(parse:options:)(a1, v4), v7 = v6, , !v7))
  {
    if (one-time initialization token for voiceCommands != -1)
    {
      OUTLINED_FUNCTION_0_1();
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    __swift_project_value_buffer(v8, static Logger.voiceCommands);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.debug.getter();
    v11 = OUTLINED_FUNCTION_17_18();
    if (os_log_type_enabled(v11, v12))
    {
      OUTLINED_FUNCTION_18_1();
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_0, v9, v10, "#CustomIntentNeedsDisambiguationFlowStrategy: smart prompt not a simple confirmation", v13, 2u);
      OUTLINED_FUNCTION_15_1();
    }

    return 0;
  }

  return v5;
}

uint64_t CustomIntentNeedsDisambiguationFlowStrategy.getVoiceCommandConfirmation(parse:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for PaginationRequest();
  v5 = OUTLINED_FUNCTION_7_1(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v5);
  OUTLINED_FUNCTION_3();
  v12 = v11 - v10;
  switch(static VoiceCommandConfirmationUtils.getVoiceCommandConfirmation(parse:)(a1))
  {
    case 1u:
    case 2u:
    case 3u:
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow20DisambiguationResultVyAA18IntentPromptAnswerVySo8INIntentCGGMd, &_s11SiriKitFlow20DisambiguationResultVyAA18IntentPromptAnswerVySo8INIntentCGGMR);

      result = __swift_storeEnumTagSinglePayload(a2, 1, 1, v13);
      break;
    default:
      static PaginationRequest.nextPage()();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow18IntentPromptAnswerVySo8INIntentCGMd, &_s11SiriKitFlow18IntentPromptAnswerVySo8INIntentCGMR);
      static DisambiguationResult.paginate(_:)();
      (*(v7 + 8))(v12, v4);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow20DisambiguationResultVyAA18IntentPromptAnswerVySo8INIntentCGGMd, &_s11SiriKitFlow20DisambiguationResultVyAA18IntentPromptAnswerVySo8INIntentCGGMR);
      v15 = OUTLINED_FUNCTION_43_8();
      result = __swift_storeEnumTagSinglePayload(v15, v16, 1, v17);
      break;
  }

  return result;
}

uint64_t closure #1 in static CustomIntentNeedsDisambiguationFlowStrategy.makeDisambiguationList(resolveRecord:deviceState:)(uint64_t a1, uint64_t a2, void *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVyyp0A14LinkFlowPlugin30CustomIntentDisambiguationItemVGMd, &_s13SiriUtilities11TransformerVyyp0A14LinkFlowPlugin30CustomIntentDisambiguationItemVGMR);
  v6 = Transformer.transform.getter();
  v6(a1);

  if (v3)
  {
    *a3 = v3;
  }

  return result;
}

uint64_t *CustomIntentNeedsDisambiguationFlowStrategy.deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v1 = v0[7];

  v2 = v0[8];

  v3 = v0[10];

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 11);
  v4 = v0[17];

  v5 = v0[18];

  return v0;
}

uint64_t CustomIntentNeedsDisambiguationFlowStrategy.__deallocating_deinit()
{
  CustomIntentNeedsDisambiguationFlowStrategy.deinit();

  return swift_deallocClassInstance();
}

uint64_t protocol witness for NeedsDisambiguationFlowStrategyAsync.makeDisambiguationItemContainer(resolveRecord:) in conformance CustomIntentNeedsDisambiguationFlowStrategy(uint64_t a1, uint64_t a2)
{
  *(v3 + 16) = a1;
  v5 = *(**v2 + 264);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v3 + 24) = v7;
  *v7 = v3;
  v7[1] = protocol witness for PromptForValueFlowStrategyAsync.parseValueResponse(input:) in conformance ShortcutsLinkPromptForMultiChoiceFlowStrategy;

  return v9(a2);
}

uint64_t protocol witness for NeedsDisambiguationFlowStrategyAsync.parseDisambiguationResult(input:paginatedItems:resolveRecord:) in conformance CustomIntentNeedsDisambiguationFlowStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(**v4 + 280);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = CustomIntentRCHFlowStrategy.makeErrorResponse(error:app:intent:);

  return v14(a1, a2, a3, a4);
}

uint64_t protocol witness for NeedsDisambiguationFlowStrategyAsync.makePromptForDisambiguation(paginatedItems:resolveRecord:) in conformance CustomIntentNeedsDisambiguationFlowStrategy(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(**v3 + 296);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = protocol witness for RouteConfirmIntentResponseFlowStrategyAsync.makeFailureConfirmingIntentResponse(app:intent:intentResponse:) in conformance CustomIntentRCHFlowStrategy;

  return v12(a1, a2, a3);
}

uint64_t protocol witness for NeedsDisambiguationFlowStrategyAsync.makeRepromptOnEmptyParse(paginatedItems:resolveRecord:) in conformance CustomIntentNeedsDisambiguationFlowStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = async function pointer to NeedsDisambiguationFlowStrategyAsync.makeRepromptOnEmptyParse(paginatedItems:resolveRecord:)[1];
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v12 = type metadata accessor for CustomIntentNeedsDisambiguationFlowStrategy();
  *v11 = v5;
  v11[1] = CustomIntentRCHFlowStrategy.makeErrorResponse(error:app:intent:);

  return NeedsDisambiguationFlowStrategyAsync.makeRepromptOnEmptyParse(paginatedItems:resolveRecord:)(a1, a2, a3, v12, a5);
}

uint64_t protocol witness for NeedsDisambiguationFlowStrategyAsync.makeRepromptOnLowConfidence(paginatedItems:resolveRecord:) in conformance CustomIntentNeedsDisambiguationFlowStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = async function pointer to NeedsDisambiguationFlowStrategyAsync.makeRepromptOnLowConfidence(paginatedItems:resolveRecord:)[1];
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v12 = type metadata accessor for CustomIntentNeedsDisambiguationFlowStrategy();
  *v11 = v5;
  v11[1] = CustomIntentRCHFlowStrategy.makeErrorResponse(error:app:intent:);

  return NeedsDisambiguationFlowStrategyAsync.makeRepromptOnLowConfidence(paginatedItems:resolveRecord:)(a1, a2, a3, v12, a5);
}

uint64_t protocol witness for NeedsDisambiguationFlowStrategyAsync.makePromptForDeviceUnlock(resolveRecord:) in conformance CustomIntentNeedsDisambiguationFlowStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = async function pointer to NeedsDisambiguationFlowStrategyAsync.makePromptForDeviceUnlock(resolveRecord:)[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for CustomIntentNeedsDisambiguationFlowStrategy();
  *v9 = v4;
  v9[1] = CustomIntentRCHFlowStrategy.makeErrorResponse(error:app:intent:);

  return NeedsDisambiguationFlowStrategyAsync.makePromptForDeviceUnlock(resolveRecord:)(a1, a2, v10, a4);
}

uint64_t protocol witness for NeedsDisambiguationFlowStrategyAsync.makeHandoffForAuthenticationResponse(resolveRecord:) in conformance CustomIntentNeedsDisambiguationFlowStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = async function pointer to NeedsDisambiguationFlowStrategyAsync.makeHandoffForAuthenticationResponse(resolveRecord:)[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for CustomIntentNeedsDisambiguationFlowStrategy();
  *v9 = v4;
  v9[1] = CustomIntentRCHFlowStrategy.makeErrorResponse(error:app:intent:);

  return NeedsDisambiguationFlowStrategyAsync.makeHandoffForAuthenticationResponse(resolveRecord:)(a1, a2, v10, a4);
}

uint64_t protocol witness for NeedsDisambiguationFlowStrategyAsync.pervasiveUseCaseDescription(resolveRecord:) in conformance CustomIntentNeedsDisambiguationFlowStrategy(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for CustomIntentNeedsDisambiguationFlowStrategy();

  return NeedsDisambiguationFlowStrategyAsync.pervasiveUseCaseDescription(resolveRecord:)(a1, v5, a3);
}

uint64_t protocol witness for ParameterResolutionHandlingAsync.makeFlowCancelledResponse(app:intent:parameter:) in conformance CustomIntentNeedsDisambiguationFlowStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = async function pointer to ParameterResolutionHandlingAsync.makeFlowCancelledResponse(app:intent:parameter:)[1];
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  v14 = type metadata accessor for CustomIntentNeedsDisambiguationFlowStrategy();
  *v13 = v6;
  v13[1] = CustomIntentRCHFlowStrategy.makeErrorResponse(error:app:intent:);

  return ParameterResolutionHandlingAsync.makeFlowCancelledResponse(app:intent:parameter:)(a1, a2, a3, a4, v14, a6);
}

uint64_t protocol witness for ParameterResolutionHandlingAsync.makeErrorResponse(error:app:intent:parameter:) in conformance CustomIntentNeedsDisambiguationFlowStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = async function pointer to ParameterResolutionHandlingAsync.makeErrorResponse(error:app:intent:parameter:)[1];
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  v16 = type metadata accessor for CustomIntentNeedsDisambiguationFlowStrategy();
  *v15 = v7;
  v15[1] = CustomIntentRCHFlowStrategy.makeErrorResponse(error:app:intent:);

  return ParameterResolutionHandlingAsync.makeErrorResponse(error:app:intent:parameter:)(a1, a2, a3, a4, a5, v16, a7);
}

id outlined bridged method (mbnn) of @objc INCodableDescription.attribute(byName:)(uint64_t a1, uint64_t a2, void *a3, SEL *a4)
{
  v6 = String._bridgeToObjectiveC()();

  v7 = [a3 *a4];

  return v7;
}

uint64_t outlined bridged method (pb) of @objc WFSmartPromptIntent.buttons.getter(void *a1)
{
  v1 = [a1 buttons];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  type metadata accessor for NSError(0, &lazy cache variable for type metadata for WFSmartPromptButton, WFSmartPromptButton_ptr);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t outlined bridged method (ob) of @objc INImage._imageData.getter(void *a1)
{
  v2 = [a1 _imageData];

  if (v2)
  {
    static Data._unconditionallyBridgeFromObjectiveC(_:)();
  }

  return OUTLINED_FUNCTION_22();
}

uint64_t specialized CustomIntentNeedsDisambiguationFlowStrategy.__allocating_init(voiceCommandName:deviceState:modeInfoProvider:siriEnvironment:runCustomIntentCatWrapperSimple:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v23 = a6;
  v15 = *(a8 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(a1);
  v18 = &v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for CustomIntentNeedsDisambiguationFlowStrategy();
  v19 = swift_allocObject();
  (*(v15 + 16))(v18, a4, a8);
  v20 = specialized CustomIntentNeedsDisambiguationFlowStrategy.init(voiceCommandName:deviceState:modeInfoProvider:siriEnvironment:runCustomIntentCatWrapperSimple:)(a1, a2, a3, v18, a5, v23, v19, a8, a9);
  (*(v15 + 8))(a4, a8);
  return v20;
}

uint64_t specialized CustomIntentNeedsDisambiguationFlowStrategy.init(voiceCommandName:deviceState:modeInfoProvider:siriEnvironment:runCustomIntentCatWrapperSimple:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v17 = type metadata accessor for CATOption();
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v30 = a8;
  v31 = a9;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v29);
  (*(*(a8 - 8) + 32))(boxed_opaque_existential_1, a4, a8);
  *(a7 + 56) = 0;
  *(a7 + 64) = 0;
  *(a7 + 128) = a1;
  *(a7 + 136) = a2;
  outlined init with copy of DeviceState(a3, a7 + 16);
  outlined init with copy of DeviceState(a7 + 16, v28);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v20 = static WFDialogState.shared;
  type metadata accessor for RunCustomIntentCATs();

  static CATOption.defaultMode.getter();
  v21 = CATWrapper.__allocating_init(options:globals:)();
  type metadata accessor for RunVoiceCommandCATs();
  static CATOption.defaultMode.getter();
  v22 = CATWrapper.__allocating_init(options:globals:)();
  type metadata accessor for RunVoiceCommandCATsSimple();
  static CATOption.defaultMode.getter();
  v23 = CATWrapperSimple.__allocating_init(options:globals:)();
  __swift_destroy_boxed_opaque_existential_1Tm(a3);
  v24 = type metadata accessor for AppNameResolver();
  v25 = swift_allocObject();
  type metadata accessor for CustomIntentsDialogTemplating();
  v26 = swift_allocObject();
  *(v26 + 136) = v24;
  *(v26 + 144) = &protocol witness table for AppNameResolver;
  *(v26 + 112) = v25;
  *(v26 + 56) = v20;
  outlined init with take of AceServiceInvokerAsync(v28, v26 + 16);
  *(v26 + 64) = 0;
  *(v26 + 72) = 1;
  *(v26 + 80) = v21;
  *(v26 + 88) = a6;
  *(v26 + 96) = v22;
  *(v26 + 104) = v23;
  *(a7 + 80) = v26;
  outlined init with take of AceServiceInvokerAsync(&v29, a7 + 88);
  *(a7 + 144) = a5;
  *(a7 + 72) = 1;
  return a7;
}

uint64_t sub_13B62C()
{
  v1 = type metadata accessor for Locale();
  OUTLINED_FUNCTION_7_1(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 24) & ~v4;
  v7 = *(v6 + 64);

  (*(v3 + 8))(v0 + v5, v1);

  return _swift_deallocObject(v0, v5 + v7, v4 | 7);
}

uint64_t partial apply for closure #1 in static Transformer<>.disambiguationItemTransformer(attributeMetadata:locale:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for Locale();
  OUTLINED_FUNCTION_14(v5);
  return closure #1 in static Transformer<>.disambiguationItemTransformer(attributeMetadata:locale:)(a1, *(v2 + 16), v2 + ((*(v6 + 80) + 24) & ~*(v6 + 80)), a2);
}

unint64_t lazy protocol witness table accessor for type DisambiguationError and conformance DisambiguationError()
{
  result = lazy protocol witness table cache variable for type DisambiguationError and conformance DisambiguationError;
  if (!lazy protocol witness table cache variable for type DisambiguationError and conformance DisambiguationError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DisambiguationError and conformance DisambiguationError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DisambiguationError and conformance DisambiguationError;
  if (!lazy protocol witness table cache variable for type DisambiguationError and conformance DisambiguationError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DisambiguationError and conformance DisambiguationError);
  }

  return result;
}

uint64_t outlined init with copy of NLContextUpdate?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = OUTLINED_FUNCTION_67_3(a1, a2, a3, a4);
  OUTLINED_FUNCTION_7(v5);
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_22();
  v9(v8);
  return v4;
}

uint64_t outlined init with take of INShortcut?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = OUTLINED_FUNCTION_67_3(a1, a2, a3, a4);
  OUTLINED_FUNCTION_7(v5);
  v7 = *(v6 + 32);
  v8 = OUTLINED_FUNCTION_22();
  v9(v8);
  return v4;
}

unint64_t lazy protocol witness table accessor for type CustomIntentDisambiguationItemContainer and conformance CustomIntentDisambiguationItemContainer()
{
  result = lazy protocol witness table cache variable for type CustomIntentDisambiguationItemContainer and conformance CustomIntentDisambiguationItemContainer;
  if (!lazy protocol witness table cache variable for type CustomIntentDisambiguationItemContainer and conformance CustomIntentDisambiguationItemContainer)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CustomIntentDisambiguationItemContainer and conformance CustomIntentDisambiguationItemContainer);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for DisambiguationError(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x13BA30);
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

uint64_t _s11SiriKitFlow5InputVACs23CustomStringConvertibleAAWlTm_3(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_7_24()
{
  v2 = v0[40];
  v3 = v0[32];
  v4 = v0[30];
  v6 = v0[26];
  v5 = v0[27];
  v7 = v0[25];
  v9 = v0[21];
  v8 = v0[22];
}

uint64_t OUTLINED_FUNCTION_11_21(uint64_t a1)
{
  *(a1 + 8) = CustomIntentNeedsDisambiguationFlowStrategy.makePromptForDisambiguationNoPagination(resolveRecord:);
  v5 = v2[48];
  v6 = v2[49];
  v8 = v2[46];
  v7 = v2[47];
  *(v4 + 16) = v1;
  result = v3;
  v10 = *(v4 + 24);
  return result;
}

uint64_t OUTLINED_FUNCTION_13_20(uint64_t a1)
{
  *(a1 + 8) = CustomIntentNeedsDisambiguationFlowStrategy.makePromptForPagination(resolveRecord:paginatedItems:);
  v3 = v1[33];
  v4 = v1[34];
  v5 = v1[32];
  v6 = v1[17];
  return v2;
}

uint64_t OUTLINED_FUNCTION_14_22(uint64_t a1)
{
  *(a1 + 8) = static CustomIntentNeedsDisambiguationFlowStrategy.makePromptForDisambiguationNoPagination(deviceState:manifest:dialogResults:intent:voiceCommandName:disambiguationList:parameterName:responseFactory:);
  v2 = v1[33];
  v3 = v1[34];
  v4 = v1[32];
  return v1[29];
}

uint64_t OUTLINED_FUNCTION_16_25(uint64_t a1)
{
  *(a1 + 8) = CustomIntentNeedsDisambiguationFlowStrategy.makePromptForPagination(resolveRecord:paginatedItems:);
  v2 = *(v1 + 200);
  return *(v1 + 120);
}

uint64_t OUTLINED_FUNCTION_35_11()
{

  return specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
}

uint64_t OUTLINED_FUNCTION_37_10@<X0>(uint64_t a1@<X8>)
{
  v1[45] = a1;
  v3 = v1[31];
  v4 = v1[16];
  v1[46] = *(v1[18] + 80);

  return ParameterResolutionRecord.app.getter();
}

uint64_t OUTLINED_FUNCTION_51_7(uint64_t result)
{
  *(v2 + 432) = result;
  v4 = *(v3 + 144);
  v5 = *v1;
  return result;
}

uint64_t OUTLINED_FUNCTION_52_7(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (a3 & 0xC000000000000001) == 0, a3);
}

uint64_t OUTLINED_FUNCTION_66_6()
{
  v2 = v0[44];
  v4 = v0[40];
  v3 = v0[41];
  v5 = v0[39];
  v7 = v0[35];
  v6 = v0[36];
}

uint64_t OUTLINED_FUNCTION_67_6()
{
  v2 = v0[45];
  v3 = v0[30];
  v4 = *(v0[31] + 80);

  return ParameterResolutionRecord.app.getter();
}

uint64_t OUTLINED_FUNCTION_70_4()
{

  return specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
}

void AutoShortcutFirstRunFlow.__allocating_init(autoShortcutInvocation:aceServiceInvoker:voiceShortcutsClient:outputPublisher:deviceState:userDefaults:)()
{
  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_71_1();
  swift_allocObject();
  v1 = *(v0 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v0, *(v0 + 24));
  OUTLINED_FUNCTION_13_1();
  v3 = *(v2 + 64);
  __chkstk_darwin(v4);
  OUTLINED_FUNCTION_3();
  v6 = OUTLINED_FUNCTION_45_7(v5);
  v8 = v7(v6);
  OUTLINED_FUNCTION_30_11(v8, v9, v10, v11, v12, v13, v14, v15, v17);
  v16 = OUTLINED_FUNCTION_1_18();
  __swift_destroy_boxed_opaque_existential_1Tm(v16);
  OUTLINED_FUNCTION_42();
}

uint64_t AutoShortcutFirstRunFlow.exitValue.getter()
{
  v1 = *(v0 + 272);
  if ((v1 & 0xC0) != 0x40)
  {
    if (one-time initialization token for voiceCommands != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v2 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_59(v2, static Logger.voiceCommands);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_17_11(v4))
    {
      v5 = OUTLINED_FUNCTION_52();
      OUTLINED_FUNCTION_45(v5);
      OUTLINED_FUNCTION_25(&dword_0, v6, v7, "#AutoShortcutFirstRunFlow exited in the wrong state");
      OUTLINED_FUNCTION_17();
    }

    v1 = 0;
  }

  return v1 & 1;
}

void AutoShortcutFirstRunFlow.init(autoShortcutInvocation:aceServiceInvoker:voiceShortcutsClient:outputPublisher:deviceState:userDefaults:)()
{
  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_71_1();
  v1 = *(v0 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v0, *(v0 + 24));
  OUTLINED_FUNCTION_13_1();
  v3 = *(v2 + 64);
  __chkstk_darwin(v4);
  OUTLINED_FUNCTION_3();
  v6 = OUTLINED_FUNCTION_45_7(v5);
  v8 = v7(v6);
  OUTLINED_FUNCTION_30_11(v8, v9, v10, v11, v12, v13, v14, v15, v17);
  v16 = OUTLINED_FUNCTION_1_18();
  __swift_destroy_boxed_opaque_existential_1Tm(v16);
  OUTLINED_FUNCTION_42();
}

void AutoShortcutFirstRunFlow.on(input:)()
{
  OUTLINED_FUNCTION_40_0();
  v1 = v0;
  v3 = v2;
  type metadata accessor for Parse();
  OUTLINED_FUNCTION_13_1();
  v40 = v5;
  v41 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v4);
  OUTLINED_FUNCTION_3();
  v39 = v9 - v8;
  v10 = type metadata accessor for Input();
  OUTLINED_FUNCTION_13_1();
  v12 = v11;
  v14 = *(v13 + 64);
  __chkstk_darwin(v15);
  OUTLINED_FUNCTION_3();
  v18 = v17 - v16;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v20 = OUTLINED_FUNCTION_14(v19);
  v22 = *(v21 + 64);
  __chkstk_darwin(v20);
  v23 = type metadata accessor for TaskPriority();
  OUTLINED_FUNCTION_63_7(v23);
  OUTLINED_FUNCTION_27_6();
  v24 = swift_allocObject();
  v24[2] = 0;
  v24[3] = 0;
  v24[4] = v0;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5();

  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v25 = type metadata accessor for Logger();
  __swift_project_value_buffer(v25, static Logger.voiceCommands);
  (*(v12 + 16))(v18, v3, v10);
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v26, v27))
  {
    v38 = v0;
    v28 = OUTLINED_FUNCTION_48();
    v42 = OUTLINED_FUNCTION_85();
    *v28 = 136315138;
    v29 = Input.description.getter();
    (*(v12 + 8))(v18, v10);
    v30 = OUTLINED_FUNCTION_22_4();
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v31, v32);
    OUTLINED_FUNCTION_1_18();

    *(v28 + 4) = v29;
    _os_log_impl(&dword_0, v26, v27, "#AutoShortcutFirstRunFlow on input: %s", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v42);
    OUTLINED_FUNCTION_15_0();
    v1 = v38;
    OUTLINED_FUNCTION_15_0();
  }

  else
  {

    (*(v12 + 8))(v18, v10);
  }

  Input.parse.getter();
  v33 = static VoiceCommandConfirmationUtils.getVoiceCommandConfirmation(parse:)(v39);
  (*(v40 + 8))(v39, v41);
  if (v33 == 3)
  {
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_38_4(v35))
    {
      v36 = OUTLINED_FUNCTION_52();
      *v36 = 0;
      _os_log_impl(&dword_0, v34, v39, "#AutoShortcutFirstRunFlow failed to get confirmation", v36, 2u);
      OUTLINED_FUNCTION_15_0();
    }

    v37 = 64;
    goto LABEL_13;
  }

  if (!v33)
  {
    v37 = 1;
LABEL_13:
    *(v1 + 272) = v37;
    goto LABEL_14;
  }

  *(v1 + 272) = 0;
LABEL_14:
  OUTLINED_FUNCTION_42();
}

uint64_t closure #1 in AutoShortcutFirstRunFlow.on(input:)()
{
  OUTLINED_FUNCTION_15_2();
  outlined init with copy of DeviceState(v0[12] + 136, (v0 + 2));
  v1 = v0[5];
  v2 = v0[6];
  OUTLINED_FUNCTION_47(v0 + 2);
  static OutputUtils.makeTemporaryOutput()(v0 + 7);
  v3 = async function pointer to dispatch thunk of OutputPublisherAsync.publish(output:)[1];
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  v0[13] = v4;
  *v4 = v5;
  v4[1] = closure #1 in AutoShortcutFirstRunFlow.on(input:);
  OUTLINED_FUNCTION_49_8();
  OUTLINED_FUNCTION_67_7();

  return dispatch thunk of OutputPublisherAsync.publish(output:)(v6, v7, v8);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v3 = v2;
  OUTLINED_FUNCTION_4_1();
  *v4 = v3;
  v6 = *(v5 + 104);
  v7 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v8 = v7;
  *(v3 + 112) = v0;

  __swift_destroy_boxed_opaque_existential_1Tm((v3 + 56));
  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v9, v10, v11);
}

{
  OUTLINED_FUNCTION_12_0();
  v1 = *(v0 + 112);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v2 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_59(v2, static Logger.voiceCommands);
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

  OUTLINED_FUNCTION_6_0();

  return v11();
}

uint64_t AutoShortcutFirstRunFlow.execute(completion:)()
{
  type metadata accessor for AutoShortcutFirstRunFlow();
  lazy protocol witness table accessor for type AutoShortcutFirstRunFlow and conformance AutoShortcutFirstRunFlow(&lazy protocol witness table cache variable for type AutoShortcutFirstRunFlow and conformance AutoShortcutFirstRunFlow, v0, type metadata accessor for AutoShortcutFirstRunFlow);
  OUTLINED_FUNCTION_48_2();
  return Flow.deferToExecuteAsync(_:)();
}

uint64_t AutoShortcutFirstRunFlow.execute()(uint64_t a1)
{
  v2[24] = a1;
  v2[25] = v1;
  v2[26] = *v1;
  return OUTLINED_FUNCTION_0_16(AutoShortcutFirstRunFlow.execute());
}

uint64_t AutoShortcutFirstRunFlow.execute()()
{
  OUTLINED_FUNCTION_14_0();
  v1 = *(v0 + 200);
  v2 = v1[272];
  *(v0 + 336) = v2;
  if (v2 >> 6)
  {
    if (v2 >> 6 == 1)
    {
      v3 = *(v0 + 192);
      static ExecuteResponse.complete()();
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_49_0();

      __asm { BRAA            X1, X16 }
    }

    if (v2 == 128)
    {
      v27 = *(*v1 + 240);
      v44 = v27 + *v27;
      v28 = v27[1];
      v29 = swift_task_alloc();
      *(v0 + 216) = v29;
      *v29 = v0;
      v29[1] = AutoShortcutFirstRunFlow.execute();
      v30 = *(v0 + 200);
      OUTLINED_FUNCTION_49_0();

      __asm { BRAA            X0, X16 }
    }

    outlined init with copy of DeviceState((v1 + 136), v0 + 56);
    v33 = *(v0 + 80);
    v34 = *(v0 + 88);
    OUTLINED_FUNCTION_47((v0 + 56));
    static OutputUtils.makeTemporaryOutput()((v0 + 96));
    v37 = async function pointer to dispatch thunk of OutputPublisherAsync.publish(output:)[1];
    swift_task_alloc();
    OUTLINED_FUNCTION_20_0();
    *(v0 + 264) = v38;
    *v38 = v39;
    v38[1] = AutoShortcutFirstRunFlow.execute();
    OUTLINED_FUNCTION_49_8();
    OUTLINED_FUNCTION_49_0();

    return dispatch thunk of OutputPublisherAsync.publish(output:)(v40, v41, v42);
  }

  else
  {
    if (one-time initialization token for voiceCommands != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v4 = type metadata accessor for Logger();
    *(v0 + 280) = __swift_project_value_buffer(v4, static Logger.voiceCommands);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_30_1(v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 67109120;
      *(v7 + 4) = v2 & 1;
      OUTLINED_FUNCTION_18_10();
      _os_log_impl(v8, v9, v10, v11, v7, 8u);
      OUTLINED_FUNCTION_17();
    }

    v12 = *(v0 + 200);

    v13 = v12[6];
    __swift_project_boxed_opaque_existential_1(v12 + 2, v12[5]);
    v14 = *(v13 + 32);
    v15 = OUTLINED_FUNCTION_25_3();
    v16(v15);
    *(v0 + 288) = v17;
    swift_task_alloc();
    OUTLINED_FUNCTION_20_0();
    *(v0 + 296) = v18;
    *v18 = v19;
    v18[1] = AutoShortcutFirstRunFlow.execute();
    OUTLINED_FUNCTION_49_0();

    return static AutoShortcutFirstRunFlow.setSiriAutoShortcutsEnablement(isEnable:bundleId:voiceShortcutsClient:userDefaults:)(v20, v21, v22, v23, v24);
  }
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_3();
  *v2 = v1;
  v4 = *(v3 + 216);
  *v2 = *v0;
  *(v1 + 337) = v5;

  v6 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v6, v7, v8);
}

{
  OUTLINED_FUNCTION_12_0();
  v2 = *v1;
  OUTLINED_FUNCTION_4_1();
  *v4 = v3;
  v5 = *(v2 + 232);
  *v4 = *v1;
  *(v3 + 240) = v0;

  v6 = *(v2 + 224);

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v7, v8, v9);
}

{
  OUTLINED_FUNCTION_12_0();
  v1 = *(v0 + 200);
  v2 = v1[20];
  v3 = v1[21];
  OUTLINED_FUNCTION_47(v1 + 17);
  v4 = async function pointer to dispatch thunk of OutputPublisherAsync.publish(output:)[1];
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  *(v0 + 248) = v5;
  *v5 = v6;
  v5[1] = AutoShortcutFirstRunFlow.execute();
  OUTLINED_FUNCTION_49_8();

  return dispatch thunk of OutputPublisherAsync.publish(output:)(v7, v8, v3);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_3();
  *v3 = v2;
  v5 = *(v4 + 248);
  v6 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v7 = v6;
  *(v8 + 256) = v0;

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v9, v10, v11);
}

{
  OUTLINED_FUNCTION_8_0();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 136));
  OUTLINED_FUNCTION_35_12();
  OUTLINED_FUNCTION_6_0();

  return v1();
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

  __swift_destroy_boxed_opaque_existential_1Tm((v3 + 96));
  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v9, v10, v11);
}

{
  OUTLINED_FUNCTION_8_0();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
  OUTLINED_FUNCTION_36_9();
  OUTLINED_FUNCTION_6_0();

  return v1();
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v2 = *(v1 + 296);
  v3 = *(v1 + 288);
  v4 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v6, v7, v8);
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
  v1 = *(v0 + 200);
  v2 = v1[20];
  v3 = v1[21];
  OUTLINED_FUNCTION_47(v1 + 17);
  v4 = async function pointer to dispatch thunk of OutputPublisherAsync.publish(output:)[1];
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  *(v0 + 320) = v5;
  *v5 = v6;
  v5[1] = AutoShortcutFirstRunFlow.execute();
  OUTLINED_FUNCTION_49_8();

  return dispatch thunk of OutputPublisherAsync.publish(output:)(v7, v8, v3);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_3();
  *v3 = v2;
  v5 = *(v4 + 320);
  v6 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v7 = v6;
  *(v8 + 328) = v0;

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v9, v10, v11);
}

{
  OUTLINED_FUNCTION_12_0();
  v1 = *(v0 + 240);
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v2 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_59(v2, static Logger.voiceCommands);
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

  OUTLINED_FUNCTION_35_12();
  OUTLINED_FUNCTION_6_0();

  return v11();
}

{
  OUTLINED_FUNCTION_12_0();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 136));
  v1 = *(v0 + 256);
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v2 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_59(v2, static Logger.voiceCommands);
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

  OUTLINED_FUNCTION_35_12();
  OUTLINED_FUNCTION_6_0();

  return v11();
}

{
  OUTLINED_FUNCTION_12_0();
  v1 = *(v0 + 272);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v2 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_59(v2, static Logger.voiceCommands);
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

  OUTLINED_FUNCTION_36_9();
  OUTLINED_FUNCTION_6_0();

  return v11();
}

uint64_t static AutoShortcutFirstRunFlow.getAppName(bundleId:appNameResolver:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3[3];
  v5 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v4);
  v6 = OUTLINED_FUNCTION_48_2();

  return specialized static AutoShortcutFirstRunFlow.getAppName(bundleId:appNameResolver:)(v6, v7, v8, v3, v4, v5);
}

uint64_t static AutoShortcutFirstRunFlow.setSiriAutoShortcutsEnablement(isEnable:bundleId:voiceShortcutsClient:userDefaults:)(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 32) = a4;
  *(v5 + 40) = a5;
  *(v5 + 16) = a2;
  *(v5 + 24) = a3;
  *(v5 + 72) = a1;
  return OUTLINED_FUNCTION_0_16(static AutoShortcutFirstRunFlow.setSiriAutoShortcutsEnablement(isEnable:bundleId:voiceShortcutsClient:userDefaults:));
}

uint64_t static AutoShortcutFirstRunFlow.setSiriAutoShortcutsEnablement(isEnable:bundleId:voiceShortcutsClient:userDefaults:)()
{
  OUTLINED_FUNCTION_24_1();
  v26 = v0;
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v1 = *(v0 + 24);
  v2 = type metadata accessor for Logger();
  *(v0 + 48) = OUTLINED_FUNCTION_59(v2, static Logger.voiceCommands);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = *(v0 + 16);
    v5 = *(v0 + 24);
    v7 = *(v0 + 72);
    v8 = swift_slowAlloc();
    v9 = OUTLINED_FUNCTION_85();
    v25 = v9;
    *v8 = 136315394;
    *(v8 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v5, &v25);
    *(v8 + 12) = 1024;
    *(v8 + 14) = v7;
    OUTLINED_FUNCTION_18_10();
    _os_log_impl(v10, v11, v12, v13, v8, 0x12u);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    OUTLINED_FUNCTION_15_0();
    OUTLINED_FUNCTION_15_0();
  }

  v14 = *(v0 + 32);
  v15 = v14[3];
  v16 = v14[4];
  OUTLINED_FUNCTION_47(v14);
  v17 = *(v16 + 48);
  v24 = (v17 + *v17);
  v18 = v17[1];
  v19 = swift_task_alloc();
  *(v0 + 56) = v19;
  *v19 = v0;
  v19[1] = static AutoShortcutFirstRunFlow.setSiriAutoShortcutsEnablement(isEnable:bundleId:voiceShortcutsClient:userDefaults:);
  v20 = *(v0 + 16);
  v21 = *(v0 + 24);
  v22 = *(v0 + 72);

  return v24(v22, v20, v21, v15, v16);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_3();
  *v3 = v2;
  v5 = *(v4 + 56);
  v6 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v7 = v6;
  *(v8 + 64) = v0;

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v9, v10, v11);
}

{
  OUTLINED_FUNCTION_12_0();
  if ((*(v0 + 72) & 1) == 0)
  {
    v1 = *(v0 + 40);
    v2 = *(v0 + 16);
    v3 = *(v0 + 24);
    v4 = v1[4];
    __swift_project_boxed_opaque_existential_1(v1, v1[3]);
    v5 = OUTLINED_FUNCTION_25_11();
    v6(v5);
  }

  OUTLINED_FUNCTION_6_6();

  return v7(1);
}

{
  OUTLINED_FUNCTION_24_1();
  v21 = v0;
  v1 = *(v0 + 48);
  v2 = *(v0 + 24);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 64);
  if (v5)
  {
    v8 = *(v0 + 16);
    v7 = *(v0 + 24);
    v9 = *(v0 + 72);
    v10 = swift_slowAlloc();
    v11 = OUTLINED_FUNCTION_85();
    v20 = v11;
    *v10 = 136315394;
    *(v10 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v7, &v20);
    *(v10 + 12) = 1024;
    *(v10 + 14) = v9;
    _os_log_impl(&dword_0, v3, v4, "failed to set AppShortcuts enablement for %s to %{BOOL}d", v10, 0x12u);
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
    OUTLINED_FUNCTION_15_0();
    OUTLINED_FUNCTION_15_0();
  }

  if ((*(v0 + 72) & 1) == 0)
  {
    v12 = *(v0 + 40);
    v13 = *(v0 + 16);
    v14 = *(v0 + 24);
    v15 = v12[4];
    __swift_project_boxed_opaque_existential_1(v12, v12[3]);
    v16 = OUTLINED_FUNCTION_25_11();
    v17(v16);
  }

  OUTLINED_FUNCTION_6_6();

  return v18(1);
}

uint64_t AutoShortcutFirstRunFlow.makePromptOutput(appName:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = a3;
  v4[10] = v3;
  v4[7] = a1;
  v4[8] = a2;
  v4[11] = *v3;
  return OUTLINED_FUNCTION_0_16(AutoShortcutFirstRunFlow.makePromptOutput(appName:));
}

uint64_t AutoShortcutFirstRunFlow.makePromptOutput(appName:)()
{
  OUTLINED_FUNCTION_15_2();
  v1 = *(v0 + 80);
  v2 = v1[5];
  v3 = v1[6];
  OUTLINED_FUNCTION_47(v1 + 2);
  v4 = *(v3 + 16);
  v9 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v0 + 96) = v6;
  *v6 = v0;
  v6[1] = AutoShortcutFirstRunFlow.makePromptOutput(appName:);
  v7 = OUTLINED_FUNCTION_9_3();

  return v9(v7);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_3();
  *v2 = v1;
  v4 = *(v3 + 96);
  *v2 = *v0;
  *(v1 + 104) = v5;

  v6 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v6, v7, v8);
}

{
  if (one-time initialization token for voiceCommands != -1)
  {
LABEL_31:
    OUTLINED_FUNCTION_0();
  }

  v1 = v0[13];
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.voiceCommands);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  v5 = OUTLINED_FUNCTION_30_1(v4);
  v6 = v0[13];
  if (v5)
  {
    v7 = OUTLINED_FUNCTION_48();
    *v7 = 134217984;
    *(v7 + 4) = specialized Array.count.getter(v6);

    OUTLINED_FUNCTION_18_10();
    _os_log_impl(v8, v9, v10, v11, v7, 0xCu);
    OUTLINED_FUNCTION_19_0();
  }

  else
  {
    v12 = v0[13];
  }

  v13 = v0[13];
  v14 = specialized Array.count.getter(v13);
  v15 = 0;
  v16 = v13 & 0xC000000000000001;
  v17 = v13 & 0xFFFFFFFFFFFFFF8;
  v18 = v13 + 32;
  v19 = _swiftEmptyArrayStorage;
  v20 = v0;
  v47 = v0;
LABEL_6:
  v20[14] = v19;
  v0 = v19;
  while (v14 != v15)
  {
    if (v16)
    {
      v27 = v47[13];
      v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v15 >= *(v17 + 16))
      {
        goto LABEL_30;
      }

      v21 = *(v18 + 8 * v15);
    }

    v22 = v21;
    v23 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      __break(1u);
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v24 = [v21 orderedPhrases];
    type metadata accessor for LNAutoShortcutLocalizedPhrase();
    v25 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v25 >> 62)
    {
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result)
      {
LABEL_17:
        if ((v25 & 0xC000000000000001) != 0)
        {
          v28 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (!*(&dword_10 + (v25 & 0xFFFFFFFFFFFFFF8)))
          {
            __break(1u);
            return result;
          }

          v28 = *(v25 + 32);
        }

        v29 = v28;

        v30 = [v29 localizedPhrase];

        v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v33 = v32;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v37 = v0[2];
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v0 = v38;
        }

        v34 = v0[2];
        v35 = v0;
        if (v34 >= v0[3] >> 1)
        {
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v35 = v39;
        }

        v35[2] = v34 + 1;
        v19 = v35;
        v36 = &v35[2 * v34];
        v36[4] = v31;
        v36[5] = v33;
        v15 = v23;
        v20 = v47;
        goto LABEL_6;
      }
    }

    else
    {
      result = *(&dword_10 + (v25 & 0xFFFFFFFFFFFFFF8));
      if (result)
      {
        goto LABEL_17;
      }
    }

    ++v15;
    v19 = v0;
  }

  v40 = v47[13];
  v41 = v47[10];

  v42 = *(v41 + 176);
  v47[15] = v42;
  v45 = (*v42 + 288);
  v46 = (*v45 + **v45);
  v43 = (*v45)[1];
  v44 = swift_task_alloc();
  v47[16] = v44;
  *v44 = v47;
  v44[1] = AutoShortcutFirstRunFlow.makePromptOutput(appName:);

  return v46(v19);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v3 = v2;
  OUTLINED_FUNCTION_4_1();
  *v4 = v3;
  v6 = *(v5 + 128);
  *v4 = *v1;
  v3[17] = v7;
  v3[18] = v0;

  if (!v0)
  {
    v8 = v3[14];
  }

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v9, v10, v11);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_3();
  *v3 = v2;
  v5 = *(v4 + 152);
  v6 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v7 = v6;
  *(v8 + 160) = v0;

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v9, v10, v11);
}

{
  OUTLINED_FUNCTION_8_0();
  v1 = *(v0 + 136);

  OUTLINED_FUNCTION_6_0();

  return v2();
}

{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_9_0();
  v3 = v2;
  OUTLINED_FUNCTION_4_1();
  *v4 = v3;
  v6 = *(v5 + 168);
  v7 = *(v5 + 136);
  v8 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v9 = v8;
  *(v3 + 176) = v0;

  __swift_destroy_boxed_opaque_existential_1Tm((v3 + 16));

  if (v0)
  {
    OUTLINED_FUNCTION_11_1();

    return _swift_task_switch(v10, v11, v12);
  }

  else
  {
    OUTLINED_FUNCTION_6_0();

    return v13();
  }
}

{
  OUTLINED_FUNCTION_8_0();
  v1 = *(v0 + 112);

  v2 = *(v0 + 144);
  OUTLINED_FUNCTION_6_0();

  return v3();
}

{
  OUTLINED_FUNCTION_8_0();
  v1 = *(v0 + 136);

  v2 = *(v0 + 160);
  OUTLINED_FUNCTION_6_0();

  return v3();
}

{
  v1 = *(v0 + 176);
  OUTLINED_FUNCTION_6_0();
  return v2();
}

void AutoShortcutFirstRunFlow.makePromptOutput(appName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_15_2();
  v10 = *(v9 + 80);
  v11 = v10[15];
  v12 = v10[16];
  OUTLINED_FUNCTION_47(v10 + 12);
  OUTLINED_FUNCTION_9_3();
  if (dispatch thunk of DeviceState.isHomePod.getter() & 1) != 0 || (v13 = v10[15], v14 = v10[16], OUTLINED_FUNCTION_47(v10 + 12), OUTLINED_FUNCTION_9_3(), (dispatch thunk of DeviceState.isCarPlay.getter()))
  {
    OUTLINED_FUNCTION_48_9(*(v9 + 80));
    v16 = *(v15 + 224);
    v37 = (v16 + *v16);
    v17 = v16[1];
    swift_task_alloc();
    OUTLINED_FUNCTION_20_0();
    *(v9 + 152) = v18;
    *v18 = v19;
    v18[1] = AutoShortcutFirstRunFlow.makePromptOutput(appName:);
    v20 = *(v9 + 136);
    v21 = *(v9 + 72);
    v22 = *(v9 + 80);
    v23 = *(v9 + 56);
    v24 = *(v9 + 64);

    v37(v23, v24, v21, v20);
  }

  else
  {
    v25 = *(v9 + 80);
    v26 = *(v25 + 184);
    v27 = type metadata accessor for ResponseFactory();
    OUTLINED_FUNCTION_66(v27);
    v28 = ResponseFactory.init()();
    *(v9 + 40) = v27;
    *(v9 + 48) = &protocol witness table for ResponseFactory;
    *(v9 + 16) = v28;
    swift_task_alloc();
    OUTLINED_FUNCTION_20_0();
    *(v9 + 168) = v29;
    *v29 = v30;
    v29[1] = AutoShortcutFirstRunFlow.makePromptOutput(appName:);
    v31 = *(v9 + 136);
    v32 = *(v9 + 120);
    v33 = *(v9 + 64);
    v34 = *(v9 + 72);
    v35 = *(v9 + 56);

    static AutoShortcutFirstRunFlow.makeFirstRunOutput(appName:autoShortcutPhrases:dialogTemplating:contextProvider:deviceState:autoShortcutInvocation:responseFactory:)(v35, v33, v34, v31, v32, v26, (v10 + 12), v25 + 16, a9);
  }
}

void static AutoShortcutFirstRunFlow.makeFirstRunOutput(appName:autoShortcutPhrases:dialogTemplating:contextProvider:deviceState:autoShortcutInvocation:responseFactory:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_15_2();
  v9[14] = v10;
  v9[15] = a9;
  v9[12] = v11;
  v9[13] = v12;
  v9[10] = v13;
  v9[11] = v14;
  v9[8] = v15;
  v9[9] = v16;
  v9[7] = v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  OUTLINED_FUNCTION_14(v18);
  v20 = *(v19 + 64);
  v9[16] = OUTLINED_FUNCTION_28();
  v21 = type metadata accessor for DialogPhase();
  v9[17] = v21;
  OUTLINED_FUNCTION_5_0(v21);
  v9[18] = v22;
  v24 = *(v23 + 64) + 15;
  v9[19] = swift_task_alloc();
  v9[20] = swift_task_alloc();
  v25 = type metadata accessor for OutputGenerationManifest();
  v9[21] = v25;
  OUTLINED_FUNCTION_5_0(v25);
  v9[22] = v26;
  v28 = *(v27 + 64);
  v9[23] = OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_18_4();
  v30 = *(v29 + 128);
  v35 = v30 + *v30;
  v31 = v30[1];
  v32 = swift_task_alloc();
  v9[24] = v32;
  *v32 = v9;
  v32[1] = static AutoShortcutFirstRunFlow.makeFirstRunOutput(appName:autoShortcutPhrases:dialogTemplating:contextProvider:deviceState:autoShortcutInvocation:responseFactory:);
  OUTLINED_FUNCTION_48_2();
  OUTLINED_FUNCTION_67_7();

  __asm { BRAA            X2, X16 }
}

void static AutoShortcutFirstRunFlow.makeFirstRunOutput(appName:autoShortcutPhrases:dialogTemplating:contextProvider:deviceState:autoShortcutInvocation:responseFactory:)()
{
  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_9_0();
  v3 = v2;
  OUTLINED_FUNCTION_4_1();
  *v4 = v3;
  v6 = *(v5 + 192);
  v7 = *v1;
  *v4 = *v1;
  *(v3 + 200) = v8;
  *(v3 + 208) = v9;

  if (v0)
  {
    v10 = *(v3 + 184);
    v12 = *(v3 + 152);
    v11 = *(v3 + 160);
    v13 = *(v3 + 128);

    v14 = *(v7 + 8);
    OUTLINED_FUNCTION_67_7();

    __asm { BRAA            X1, X16 }
  }

  OUTLINED_FUNCTION_48_9(*(v3 + 88));
  v18 = *(v17 + 232);
  v24 = v18 + *v18;
  v19 = v18[1];
  v20 = swift_task_alloc();
  *(v3 + 216) = v20;
  *v20 = v7;
  v20[1] = static AutoShortcutFirstRunFlow.makeFirstRunOutput(appName:autoShortcutPhrases:dialogTemplating:contextProvider:deviceState:autoShortcutInvocation:responseFactory:);
  v21 = *(v3 + 88);
  OUTLINED_FUNCTION_67_7();

  __asm { BRAA            X0, X16 }
}

uint64_t static AutoShortcutFirstRunFlow.makeFirstRunOutput(appName:autoShortcutPhrases:dialogTemplating:contextProvider:deviceState:autoShortcutInvocation:responseFactory:)()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_3();
  *v3 = v2;
  v5 = *(v4 + 216);
  *v3 = *v1;
  v2[28] = v6;
  v2[29] = v7;
  v2[30] = v8;
  v2[31] = v9;
  v2[32] = v0;

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v10, v11, v12);
}

{
  OUTLINED_FUNCTION_12_0();
  v1 = *(*(v0 + 80) + 16);
  OUTLINED_FUNCTION_48_9(*(v0 + 88));
  v3 = *(v2 + 248);
  v8 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  *(v0 + 264) = v5;
  *v5 = v0;
  v5[1] = static AutoShortcutFirstRunFlow.makeFirstRunOutput(appName:autoShortcutPhrases:dialogTemplating:contextProvider:deviceState:autoShortcutInvocation:responseFactory:);
  v6 = *(v0 + 88);

  return v8(v1);
}

{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_9_0();
  v3 = v2;
  OUTLINED_FUNCTION_4_1();
  *v4 = v3;
  v6 = *(v5 + 264);
  v7 = *v1;
  *v4 = v7;
  *(v3 + 272) = v8;
  *(v3 + 280) = v9;
  *(v3 + 288) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_11_1();

    return _swift_task_switch(v10, v11, v12);
  }

  else
  {
    OUTLINED_FUNCTION_48_9(*(v3 + 88));
    v20 = (*(v13 + 264) + **(v13 + 264));
    v14 = *(*(v13 + 264) + 4);
    v15 = swift_task_alloc();
    *(v3 + 296) = v15;
    *v15 = v7;
    v15[1] = static AutoShortcutFirstRunFlow.makeFirstRunOutput(appName:autoShortcutPhrases:dialogTemplating:contextProvider:deviceState:autoShortcutInvocation:responseFactory:);
    v16 = *(v3 + 88);
    v17 = *(v3 + 72);
    v18 = *(v3 + 64);

    return v20(v18, v17);
  }
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_3();
  *v3 = v2;
  v5 = *(v4 + 296);
  *v3 = *v1;
  *(v2 + 304) = v6;
  *(v2 + 312) = v0;

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v7, v8, v9);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v2 = v1;
  OUTLINED_FUNCTION_4_1();
  *v3 = v2;
  v5 = *(v4 + 328);
  v6 = *(v4 + 320);
  v7 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v8 = v7;

  __swift_destroy_boxed_opaque_existential_1Tm((v2 + 16));
  v9 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v9, v10, v11);
}

{
  OUTLINED_FUNCTION_12_0();

  v1 = *(v0 + 160);
  v2 = *(v0 + 152);
  v3 = *(v0 + 128);
  (*(*(v0 + 176) + 8))(*(v0 + 184), *(v0 + 168));

  OUTLINED_FUNCTION_6_0();

  return v4();
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v2 = *(v1 + 344);
  v3 = *(v1 + 336);
  v4 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v6, v7, v8);
}

{
  OUTLINED_FUNCTION_12_0();
  v1 = *(v0 + 208);

  v2 = *(v0 + 256);
  OUTLINED_FUNCTION_51_8();

  OUTLINED_FUNCTION_6_0();

  return v3();
}

{
  OUTLINED_FUNCTION_12_0();
  v1 = v0[31];
  v2 = v0[29];
  v3 = v0[26];

  v4 = v0[36];
  OUTLINED_FUNCTION_51_8();

  OUTLINED_FUNCTION_6_0();

  return v5();
}

{
  OUTLINED_FUNCTION_12_0();
  v1 = v0[35];
  v2 = v0[31];
  v3 = v0[29];
  v4 = v0[26];

  v5 = v0[39];
  OUTLINED_FUNCTION_51_8();

  OUTLINED_FUNCTION_6_0();

  return v6();
}

uint64_t static AutoShortcutFirstRunFlow.makeFirstRunOutput(appName:autoShortcutPhrases:dialogTemplating:contextProvider:deviceState:autoShortcutInvocation:responseFactory:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_61_3();
  v13 = *(v12 + 304);
  v85 = *(v12 + 248);
  v87 = *(v12 + 224);
  v89 = *(v12 + 240);
  v14 = *(v12 + 184);
  v15 = *(v12 + 152);
  v16 = *(v12 + 160);
  v18 = *(v12 + 136);
  v17 = *(v12 + 144);
  v82 = *(v12 + 232);
  v83 = *(v12 + 128);
  v19 = *(v12 + 96);
  v91 = *(v12 + 104);
  static DialogPhase.confirmation.getter();
  v20 = [v13 catId];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  (*(v17 + 16))(v15, v16, v18);
  OUTLINED_FUNCTION_1_0();
  OutputGenerationManifest.init(dialogPhase:_:)();
  OutputGenerationManifest.responseViewId.setter();
  (*(v17 + 8))(v16, v18);
  OutputGenerationManifest.listenAfterSpeaking.setter();
  v21 = *(*v19 + 80);

  v21(v87, v82, v89, v85, _swiftEmptyArrayStorage, _swiftEmptyArrayStorage);

  type metadata accessor for NLContextUpdate();
  OUTLINED_FUNCTION_49_3();
  __swift_storeEnumTagSinglePayload(v22, v23, v24, v25);
  OutputGenerationManifest.nlContextUpdate.setter();
  v26 = v91[3];
  v27 = v91[4];
  OUTLINED_FUNCTION_47(v91);
  OUTLINED_FUNCTION_9_3();
  if (dispatch thunk of DeviceState.isHomePod.getter())
  {
    v28 = *(v12 + 304);
    v29 = *(v12 + 280);
    v30 = *(v12 + 248);
    v31 = *(v12 + 232);
    v32 = *(v12 + 208);
    v33 = *(v12 + 120);

    v34 = v33[3];
    v35 = v33[4];
    OUTLINED_FUNCTION_47(v33);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    OUTLINED_FUNCTION_27_6();
    v36 = swift_allocObject();
    *(v12 + 336) = v36;
    *(v36 + 16) = xmmword_216010;
    *(v36 + 32) = v28;
    v37 = async function pointer to dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)[1];
    v38 = v28;
    swift_task_alloc();
    OUTLINED_FUNCTION_20_0();
    *(v12 + 344) = v39;
    *v39 = v40;
    v39[1] = static AutoShortcutFirstRunFlow.makeFirstRunOutput(appName:autoShortcutPhrases:dialogTemplating:contextProvider:deviceState:autoShortcutInvocation:responseFactory:);
    v41 = *(v12 + 184);
    v42 = *(v12 + 56);
    OUTLINED_FUNCTION_77_3();

    return dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)(v43, v44, v45, v46, v47, v48, v49, v50, a9, v82, v83, a12);
  }

  else
  {
    v51 = *(v12 + 304);
    v52 = *(v12 + 272);
    v92 = *(v12 + 248);
    v88 = *(v12 + 280);
    v90 = *(v12 + 240);
    v84 = *(v12 + 200);
    v86 = *(v12 + 224);
    v53 = *(v12 + 112);
    v54 = *(v12 + 120);
    v55 = *(v12 + 80);
    v56 = v53[3];
    v57 = v53[4];
    OUTLINED_FUNCTION_47(v53);
    v58 = *(v57 + 32);

    v59 = OUTLINED_FUNCTION_9_3();
    v60 = v58(v59);
    v62 = v61;
    v63 = v54[3];
    v64 = v54[4];
    OUTLINED_FUNCTION_47(v54);
    *(v12 + 40) = type metadata accessor for WorkflowDataModels(0);
    *(v12 + 48) = lazy protocol witness table accessor for type AutoShortcutFirstRunFlow and conformance AutoShortcutFirstRunFlow(&lazy protocol witness table cache variable for type WorkflowDataModels and conformance WorkflowDataModels, 255, type metadata accessor for WorkflowDataModels);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v12 + 16));
    *boxed_opaque_existential_1 = v55;
    boxed_opaque_existential_1[1] = 3;
    boxed_opaque_existential_1[2] = v60;
    boxed_opaque_existential_1[3] = v62;
    *(boxed_opaque_existential_1 + 2) = v84;
    boxed_opaque_existential_1[6] = v52;
    boxed_opaque_existential_1[7] = v88;
    boxed_opaque_existential_1[8] = 0;
    boxed_opaque_existential_1[9] = 0;
    *(boxed_opaque_existential_1 + 5) = v86;
    boxed_opaque_existential_1[12] = v90;
    boxed_opaque_existential_1[13] = v92;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    OUTLINED_FUNCTION_27_6();
    v66 = swift_allocObject();
    *(v12 + 320) = v66;
    *(v66 + 16) = xmmword_216010;
    *(v66 + 32) = v51;
    v67 = async function pointer to dispatch thunk of ResponseGenerating.makeResponseOutput(resultModel:dialog:outputGenerationManifest:)[1];
    v68 = v51;
    swift_task_alloc();
    OUTLINED_FUNCTION_20_0();
    *(v12 + 328) = v69;
    *v69 = v70;
    v69[1] = static AutoShortcutFirstRunFlow.makeFirstRunOutput(appName:autoShortcutPhrases:dialogTemplating:contextProvider:deviceState:autoShortcutInvocation:responseFactory:);
    v71 = *(v12 + 184);
    v72 = *(v12 + 56);
    OUTLINED_FUNCTION_77_3();

    return dispatch thunk of ResponseGenerating.makeResponseOutput(resultModel:dialog:outputGenerationManifest:)(v73, v74, v75, v76, v77, v78, v79, v80, a9, v82, v84, *(&v84 + 1));
  }
}

uint64_t AutoShortcutFirstRunFlow.makeFirstRunPromptForHomePod(appName:autoShortcutPhrases:)()
{
  OUTLINED_FUNCTION_8_0();
  v1[5] = v2;
  v1[6] = v0;
  v1[3] = v3;
  v1[4] = v4;
  v1[2] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  OUTLINED_FUNCTION_14(v6);
  v8 = *(v7 + 64);
  v1[7] = OUTLINED_FUNCTION_28();
  v9 = type metadata accessor for DialogPhase();
  v1[8] = v9;
  OUTLINED_FUNCTION_5_0(v9);
  v1[9] = v10;
  v12 = *(v11 + 64) + 15;
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v13 = type metadata accessor for OutputGenerationManifest();
  v1[12] = v13;
  OUTLINED_FUNCTION_5_0(v13);
  v1[13] = v14;
  v16 = *(v15 + 64);
  v1[14] = OUTLINED_FUNCTION_28();
  v17 = type metadata accessor for NLContextUpdate();
  v1[15] = v17;
  OUTLINED_FUNCTION_5_0(v17);
  v1[16] = v18;
  v20 = *(v19 + 64);
  v1[17] = OUTLINED_FUNCTION_28();
  v21 = type metadata accessor for RFFeatureFlags.ResponseFramework();
  v1[18] = v21;
  OUTLINED_FUNCTION_5_0(v21);
  v1[19] = v22;
  v24 = *(v23 + 64);
  v1[20] = OUTLINED_FUNCTION_28();
  v25 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v25, v26, v27);
}

{
  OUTLINED_FUNCTION_14_0();
  v1 = v0[19];
  (*(v1 + 104))(v0[20], enum case for RFFeatureFlags.ResponseFramework._SMART(_:), v0[18]);
  v2 = RFFeatureFlags.ResponseFramework.isEnabled.getter();
  v3 = *(v1 + 8);
  v4 = OUTLINED_FUNCTION_22_4();
  v5(v4);
  if (v2)
  {
    v6 = v0[5];
    v7 = v6[2];
    if (v7)
    {
      v9 = v6[4];
      v8 = v6[5];

      if (v7 != 1)
      {
        v20 = v6[6];
        v19 = v6[7];

LABEL_11:
        v0[21] = v8;
        v0[22] = v19;
        v21 = *(v0[6] + 176);
        v0[23] = v21;
        v22 = *(*v21 + 272);
        v29 = v22 + *v22;
        v23 = v22[1];
        v24 = swift_task_alloc();
        v0[24] = v24;
        *v24 = v0;
        v24[1] = AutoShortcutFirstRunFlow.makeFirstRunPromptForHomePod(appName:autoShortcutPhrases:);
        v26 = v0[3];
        v25 = v0[4];
        OUTLINED_FUNCTION_49_0();

        __asm { BRAA            X6, X16 }
      }
    }

    else
    {
      v8 = 0xE000000000000000;
    }

    v19 = 0xE000000000000000;
    goto LABEL_11;
  }

  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  v0[36] = v10;
  *v10 = v11;
  v10[1] = AutoShortcutFirstRunFlow.makeFirstRunPromptForHomePod(appName:autoShortcutPhrases:);
  v12 = v0[5];
  v13 = v0[6];
  v14 = v0[3];
  v15 = v0[4];
  v16 = v0[2];
  OUTLINED_FUNCTION_49_0();

  return AutoShortcutFirstRunFlow.makeFirstRunPromptForHomePod_preRFv2(appName:autoShortcutPhrases:)();
}

{
  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_9_0();
  v3 = v2;
  OUTLINED_FUNCTION_4_1();
  *v4 = v3;
  v6 = *(v5 + 192);
  v7 = *v1;
  *v4 = v7;
  v3[25] = v8;
  v3[26] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_11_1();

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {
    v12 = v3[22];
    v13 = v3[23];
    v14 = v3[21];

    v15 = *(*v13 + 232);
    v20 = (v15 + *v15);
    v16 = v15[1];
    v17 = swift_task_alloc();
    v3[27] = v17;
    *v17 = v7;
    v17[1] = AutoShortcutFirstRunFlow.makeFirstRunPromptForHomePod(appName:autoShortcutPhrases:);
    v18 = v3[23];

    return v20();
  }
}

{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_14_0();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  OUTLINED_FUNCTION_9_0();
  v11 = v10;
  OUTLINED_FUNCTION_4_1();
  *v12 = v11;
  v14 = *(v13 + 216);
  v15 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v16 = v15;
  v11[28] = v0;

  if (!v0)
  {
    v11[29] = v3;
    v11[30] = v5;
    v11[31] = v7;
    v11[32] = v9;
  }

  OUTLINED_FUNCTION_11_1();
  OUTLINED_FUNCTION_21_0();

  return _swift_task_switch(v17, v18, v19);
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
  OUTLINED_FUNCTION_15_2();
  v2 = *(v0 + 128);
  v1 = *(v0 + 136);
  v4 = *(v0 + 112);
  v3 = *(v0 + 120);
  v5 = *(v0 + 96);
  v6 = *(v0 + 104);

  (*(v6 + 8))(v4, v5);
  v7 = *(v2 + 8);
  v8 = OUTLINED_FUNCTION_22_4();
  v9(v8);
  v10 = *(v0 + 160);
  v11 = *(v0 + 136);
  v12 = *(v0 + 112);
  v14 = *(v0 + 80);
  v13 = *(v0 + 88);
  v15 = *(v0 + 56);

  OUTLINED_FUNCTION_6_0();

  return v16();
}

{
  OUTLINED_FUNCTION_15_2();
  v2 = v0[21];
  v1 = v0[22];

  v3 = v0[26];
  OUTLINED_FUNCTION_50_5();

  OUTLINED_FUNCTION_6_0();

  return v4();
}

{
  OUTLINED_FUNCTION_15_2();

  v1 = *(v0 + 224);
  OUTLINED_FUNCTION_50_5();

  OUTLINED_FUNCTION_6_0();

  return v2();
}

uint64_t AutoShortcutFirstRunFlow.makeFirstRunPromptForHomePod(appName:autoShortcutPhrases:)(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, id a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_61_3();
  v29 = v28[31];
  v30 = v28[32];
  v31 = v28[29];
  v32 = v28[14];
  v65 = v28[16];
  v66 = v28[15];
  v58 = v28[30];
  v59 = v28[11];
  v60 = v28[25];
  v61 = v28[10];
  v33 = v28[9];
  v62 = v28[8];
  v63 = v28[17];
  v64 = v28[7];
  v34 = *(v28[6] + 184);
  OUTLINED_FUNCTION_18_4();
  v36 = *(v35 + 80);

  v36(v30, v29, v58, v31, _swiftEmptyArrayStorage, _swiftEmptyArrayStorage);
  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();
  static DialogPhase.confirmation.getter();
  v37 = [v60 catId];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  (*(v33 + 16))(v61, v59, v62);
  OUTLINED_FUNCTION_1_0();
  OutputGenerationManifest.init(dialogPhase:_:)();
  OutputGenerationManifest.responseViewId.setter();
  (*(v33 + 8))(v59, v62);
  OutputGenerationManifest.listenAfterSpeaking.setter();
  (*(v65 + 16))(v64, v63, v66);
  OUTLINED_FUNCTION_49_3();
  __swift_storeEnumTagSinglePayload(v38, v39, v40, v66);
  OutputGenerationManifest.nlContextUpdate.setter();
  OutputGenerationManifest.canUseServerTTS.setter();
  v41 = type metadata accessor for ResponseFactory();
  OUTLINED_FUNCTION_66(v41);
  v28[33] = ResponseFactory.init()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  OUTLINED_FUNCTION_27_6();
  v42 = swift_allocObject();
  v28[34] = v42;
  *(v42 + 16) = xmmword_216010;
  *(v42 + 32) = v60;
  v43 = *(&async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(dialog:outputGenerationManifest:) + 1);
  v67 = &async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(dialog:outputGenerationManifest:) + async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(dialog:outputGenerationManifest:);
  v44 = v60;
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  v28[35] = v45;
  *v45 = v46;
  v45[1] = AutoShortcutFirstRunFlow.makeFirstRunPromptForHomePod(appName:autoShortcutPhrases:);
  v47 = v28[14];
  v48 = v28[2];
  OUTLINED_FUNCTION_49_8();
  OUTLINED_FUNCTION_77_3();

  return v52(v49, v50, v51, v52, v53, v54, v55, v56, v58, v59, v60, v61, v62, v63, v64, v65, v67, a18, a19, a20);
}

uint64_t AutoShortcutFirstRunFlow.makeFirstRunPromptForHomePod(appName:autoShortcutPhrases:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_14_0();
  v11 = *v10;
  v12 = *(*v10 + 288);
  v13 = *v10;
  OUTLINED_FUNCTION_2_0();
  *v14 = v13;

  v15 = v11[20];
  v16 = v11[17];
  v17 = v11[14];
  v18 = v11[11];
  v19 = v11[10];
  v20 = v11[7];

  v21 = *(v13 + 8);
  OUTLINED_FUNCTION_21_0();

  return v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10);
}

uint64_t AutoShortcutFirstRunFlow.makeFirstRunPromptForHomePod_preRFv2(appName:autoShortcutPhrases:)()
{
  OUTLINED_FUNCTION_8_0();
  v1[10] = v2;
  v1[11] = v0;
  v1[8] = v3;
  v1[9] = v4;
  v1[7] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  OUTLINED_FUNCTION_14(v6);
  v8 = *(v7 + 64);
  v1[12] = OUTLINED_FUNCTION_28();
  v9 = type metadata accessor for NLContextUpdate();
  v1[13] = v9;
  OUTLINED_FUNCTION_5_0(v9);
  v1[14] = v10;
  v12 = *(v11 + 64);
  v1[15] = OUTLINED_FUNCTION_28();
  v13 = type metadata accessor for TemplatingResult();
  v1[16] = v13;
  OUTLINED_FUNCTION_5_0(v13);
  v1[17] = v14;
  v16 = *(v15 + 64);
  v1[18] = OUTLINED_FUNCTION_28();
  v17 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v17, v18, v19);
}

{
  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_9_0();
  v3 = v2;
  OUTLINED_FUNCTION_4_1();
  *v4 = v3;
  v6 = v5[22];
  v7 = v5[20];
  v8 = v5[19];
  v9 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v10 = v9;
  *(v3 + 184) = v0;

  if (!v0)
  {
    OUTLINED_FUNCTION_48_9(*(v3 + 168));
    v16 = *(v15 + 232);
    v23 = v16 + *v16;
    v17 = v16[1];
    v18 = swift_task_alloc();
    *(v3 + 192) = v18;
    *v18 = v9;
    v18[1] = AutoShortcutFirstRunFlow.makeFirstRunPromptForHomePod_preRFv2(appName:autoShortcutPhrases:);
    v19 = *(v3 + 168);
    OUTLINED_FUNCTION_67_7();

    __asm { BRAA            X0, X16 }
  }

  OUTLINED_FUNCTION_11_1();
  OUTLINED_FUNCTION_67_7();

  return _swift_task_switch(v11, v12, v13);
}

{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_14_0();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  OUTLINED_FUNCTION_9_0();
  v11 = v10;
  OUTLINED_FUNCTION_4_1();
  *v12 = v11;
  v14 = *(v13 + 192);
  v15 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v16 = v15;
  v11[25] = v0;

  if (!v0)
  {
    v11[26] = v3;
    v11[27] = v5;
    v11[28] = v7;
    v11[29] = v9;
  }

  OUTLINED_FUNCTION_11_1();
  OUTLINED_FUNCTION_21_0();

  return _swift_task_switch(v17, v18, v19);
}

{
  OUTLINED_FUNCTION_12_0();
  v1 = v0[23];
  v2 = v0[18];
  v3 = v0[15];
  v4 = v0[12];

  OUTLINED_FUNCTION_6_0();

  return v5();
}

{
  OUTLINED_FUNCTION_12_0();
  (*(v0[17] + 8))(v0[18], v0[16]);
  v1 = v0[25];
  v2 = v0[18];
  v3 = v0[15];
  v4 = v0[12];

  OUTLINED_FUNCTION_6_0();

  return v5();
}

void AutoShortcutFirstRunFlow.makeFirstRunPromptForHomePod_preRFv2(appName:autoShortcutPhrases:)()
{
  OUTLINED_FUNCTION_14_0();
  v1 = v0[10];
  v2 = v1[2];
  if (v2)
  {
    v4 = v1[4];
    v3 = v1[5];

    if (v2 != 1)
    {
      v6 = v1[6];
      v5 = v1[7];

LABEL_7:
      v0[19] = v3;
      v0[20] = v5;
      v7 = *(v0[11] + 176);
      v0[21] = v7;
      v8 = *(*v7 + 280);
      v17 = v8 + *v8;
      v9 = v8[1];
      swift_task_alloc();
      OUTLINED_FUNCTION_20_0();
      v0[22] = v10;
      *v10 = v11;
      v10[1] = AutoShortcutFirstRunFlow.makeFirstRunPromptForHomePod_preRFv2(appName:autoShortcutPhrases:);
      v12 = v0[18];
      v13 = v0[8];
      v14 = v0[9];
      OUTLINED_FUNCTION_49_0();

      __asm { BRAA            X7, X16 }
    }
  }

  else
  {
    v3 = 0xE000000000000000;
  }

  v5 = 0xE000000000000000;
  goto LABEL_7;
}

uint64_t AutoShortcutFirstRunFlow.makeFirstRunPromptForHomePod_preRFv2(appName:autoShortcutPhrases:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_61_3();
  v22 = *(v20 + 224);
  v21 = *(v20 + 232);
  v24 = *(v20 + 208);
  v23 = *(v20 + 216);
  v25 = *(v20 + 120);
  v49 = *(v20 + 136);
  v50 = *(v20 + 128);
  v44 = *(v20 + 112);
  v45 = *(v20 + 144);
  v26 = *(v20 + 88);
  v46 = *(v20 + 96);
  v47 = *(v20 + 104);
  v48 = *(v20 + 56);
  v27 = v26[23];
  OUTLINED_FUNCTION_18_4();
  v29 = *(v28 + 80);

  v29(v21, v22, v23, v24, _swiftEmptyArrayStorage, _swiftEmptyArrayStorage);
  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();
  v30 = v26[16];
  __swift_project_boxed_opaque_existential_1(v26 + 12, v26[15]);
  HIDWORD(a10) = dispatch thunk of DeviceState.isTextToSpeechEnabled.getter();
  TemplatingResult.shouldListenAfterSpeaking(defaultBehavior:)(1);
  (*(v44 + 16))(v46, v25, v47);
  OUTLINED_FUNCTION_49_3();
  __swift_storeEnumTagSinglePayload(v31, v32, v33, v47);
  v34 = type metadata accessor for AceOutput();
  *(v20 + 32) = 0u;
  *(v20 + 48) = 0;
  *(v20 + 16) = 0u;
  v48[3] = v34;
  v48[4] = &protocol witness table for AceOutput;
  __swift_allocate_boxed_opaque_existential_1(v48);
  static AceOutputHelper.makeConfirmationViewOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
  outlined destroy of SpeakableString?(v20 + 16, &_s11SiriKitFlow0C8Activity_pSgMd, &_s11SiriKitFlow0C8Activity_pSgMR);
  outlined destroy of SpeakableString?(v46, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  (*(v44 + 8))(v25, v47);
  (*(v49 + 8))(v45, v50);

  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_77_3();

  return v36(v35, v36, v37, v38, v39, v40, v41, v42, v20 + 16, a10, v44, v45, v46, v47, v48, v49, v50, a18, a19, a20);
}

uint64_t AutoShortcutFirstRunFlow.shouldPresentFirstRunExperience()()
{
  *(v1 + 16) = v0;
  *(v1 + 24) = *v0;
  return OUTLINED_FUNCTION_0_16(AutoShortcutFirstRunFlow.shouldPresentFirstRunExperience());
}

{
  OUTLINED_FUNCTION_12_0();
  v1 = v0[2];
  v2 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v1[5]);
  v3 = *(v2 + 32);
  v4 = OUTLINED_FUNCTION_25_3();
  v5(v4);
  v0[4] = v6;
  v7 = swift_task_alloc();
  v0[5] = v7;
  *v7 = v0;
  v7[1] = AutoShortcutFirstRunFlow.shouldPresentFirstRunExperience();
  v8 = OUTLINED_FUNCTION_22_4();

  return static AutoShortcutFirstRunFlow.isAutoShortcutsEnabledFor(bundleId:voiceShortcutsClient:)(v8, v9, v10);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_3();
  *v2 = v1;
  v4 = *(v3 + 40);
  v5 = *(v3 + 32);
  v6 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v7 = v6;
  *(v9 + 48) = v8;

  v10 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v10, v11, v12);
}

{
  OUTLINED_FUNCTION_24_1();
  v27 = v0;
  v1 = *(v0 + 48);
  if (v1 != 2)
  {
    if (v1)
    {
      if (one-time initialization token for voiceCommands != -1)
      {
        OUTLINED_FUNCTION_0();
      }

      v2 = *(v0 + 16);
      v3 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_59(v3, static Logger.voiceCommands);

      v4 = Logger.logObject.getter();
      v5 = static os_log_type_t.debug.getter();

      if (!os_log_type_enabled(v4, v5))
      {
        goto LABEL_12;
      }

      v6 = *(v0 + 16);
      v7 = OUTLINED_FUNCTION_48();
      v8 = OUTLINED_FUNCTION_85();
      v26 = v8;
      v9 = OUTLINED_FUNCTION_44_11(4.8149e-34);
      v11 = v10(v9);
      v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v26);

      *(v7 + 4) = v13;
      v14 = "First run: App shortcuts enabled for %s, omitting first run prompt";
    }

    else
    {
      if (one-time initialization token for voiceCommands != -1)
      {
        OUTLINED_FUNCTION_0();
      }

      v15 = *(v0 + 16);
      v16 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_59(v16, static Logger.voiceCommands);

      v4 = Logger.logObject.getter();
      v5 = static os_log_type_t.debug.getter();

      if (!os_log_type_enabled(v4, v5))
      {
        goto LABEL_12;
      }

      v17 = *(v0 + 16);
      v7 = OUTLINED_FUNCTION_48();
      v8 = OUTLINED_FUNCTION_85();
      v26 = v8;
      v18 = OUTLINED_FUNCTION_44_11(4.8149e-34);
      v20 = v19(v18);
      v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v21, &v26);

      *(v7 + 4) = v22;
      v14 = "First run: App shortcuts not enabled for %s, showing first run prompt";
    }

    _os_log_impl(&dword_0, v4, v5, v14, v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    OUTLINED_FUNCTION_15_0();
    OUTLINED_FUNCTION_19_0();
LABEL_12:
  }

  OUTLINED_FUNCTION_6_6();

  return v23(v24 & 1);
}

uint64_t static AutoShortcutFirstRunFlow.isAutoShortcutsEnabledFor(bundleId:voiceShortcutsClient:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  return OUTLINED_FUNCTION_0_16(static AutoShortcutFirstRunFlow.isAutoShortcutsEnabledFor(bundleId:voiceShortcutsClient:));
}

uint64_t static AutoShortcutFirstRunFlow.isAutoShortcutsEnabledFor(bundleId:voiceShortcutsClient:)()
{
  OUTLINED_FUNCTION_15_2();
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  v4 = swift_task_alloc();
  v0[6] = v4;
  v4[2] = v1;
  v4[3] = v3;
  v4[4] = v2;
  v5 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  v0[7] = v6;
  *v6 = v7;
  v6[1] = static AutoShortcutFirstRunFlow.isAutoShortcutsEnabledFor(bundleId:voiceShortcutsClient:);
  OUTLINED_FUNCTION_11_1();

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v8, v9, v10, 0xD000000000000039, v11, v12, v4, v13);
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
  *(v3 + 64) = v0;

  if (!v0)
  {
    v9 = *(v3 + 48);
  }

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v10, v11, v12);
}

{
  v1 = *(v0 + 72);
  OUTLINED_FUNCTION_6_6();
  return v2();
}

uint64_t static AutoShortcutFirstRunFlow.isAutoShortcutsEnabledFor(bundleId:voiceShortcutsClient:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_22_0();
  a17 = v19;
  a18 = v20;
  OUTLINED_FUNCTION_14_0();
  a16 = v18;
  v21 = v18[6];

  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v22 = v18[8];
  v23 = type metadata accessor for Logger();
  __swift_project_value_buffer(v23, static Logger.voiceCommands);
  OUTLINED_FUNCTION_1_18();
  swift_errorRetain();
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.error.getter();

  v26 = os_log_type_enabled(v24, v25);
  v27 = v18[8];
  if (v26)
  {
    v28 = OUTLINED_FUNCTION_48();
    v29 = OUTLINED_FUNCTION_85();
    a9 = v29;
    *v28 = 136315138;
    v18[2] = v27;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v30 = String.init<A>(describing:)();
    v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v31, &a9);

    *(v28 + 4) = v32;
    OUTLINED_FUNCTION_4_7();
    _os_log_impl(v33, v34, v35, v36, v37, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v29);
    OUTLINED_FUNCTION_15_0();
    OUTLINED_FUNCTION_19_0();
  }

  else
  {
  }

  OUTLINED_FUNCTION_6_6();
  OUTLINED_FUNCTION_21_0();

  return v40(v38, v39, v40, v41, v42, v43, v44, v45, a9, a10);
}

uint64_t closure #1 in static AutoShortcutFirstRunFlow.isAutoShortcutsEnabledFor(bundleId:voiceShortcutsClient:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v18 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySbs5Error_pGMd, &_sScCySbs5Error_pGMR);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v17 - v10;
  v12 = a2[3];
  v13 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v12);
  (*(v8 + 16))(v11, a1, v7);
  v14 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v15 = swift_allocObject();
  (*(v8 + 32))(v15 + v14, v11, v7);
  (*(v13 + 40))(a3, v18, partial apply for closure #1 in closure #1 in static AutoShortcutFirstRunFlow.isAutoShortcutsEnabledFor(bundleId:voiceShortcutsClient:), v15, v12, v13);
}

uint64_t closure #1 in closure #1 in static AutoShortcutFirstRunFlow.isAutoShortcutsEnabledFor(bundleId:voiceShortcutsClient:)(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySbs5Error_pGMd, &_sScCySbs5Error_pGMR);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySbs5Error_pGMd, &_sScCySbs5Error_pGMR);
    return CheckedContinuation.resume(returning:)();
  }
}

uint64_t AutoShortcutFirstRunFlow.makeUserDeniedOutput()()
{
  OUTLINED_FUNCTION_8_0();
  v1[7] = v2;
  v1[8] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  OUTLINED_FUNCTION_14(v3);
  v5 = *(v4 + 64);
  v1[9] = OUTLINED_FUNCTION_28();
  v6 = type metadata accessor for TemplatingResult();
  v1[10] = v6;
  OUTLINED_FUNCTION_5_0(v6);
  v1[11] = v7;
  v9 = *(v8 + 64);
  v1[12] = OUTLINED_FUNCTION_28();
  v10 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v10, v11, v12);
}

{
  OUTLINED_FUNCTION_12_0();
  v1 = *(v0[8] + 176);
  OUTLINED_FUNCTION_18_4();
  v8 = (*(v2 + 304) + **(v2 + 304));
  v3 = *(*(v2 + 304) + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  v0[13] = v4;
  *v4 = v5;
  v4[1] = AutoShortcutFirstRunFlow.makeUserDeniedOutput();
  v6 = v0[12];

  return v8(v6);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_3();
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
  OUTLINED_FUNCTION_8_0();
  v1 = v0[12];
  v2 = v0[9];

  OUTLINED_FUNCTION_6_0();
  v4 = v0[14];

  return v3();
}

uint64_t AutoShortcutFirstRunFlow.makeUserDeniedOutput()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_14_0();
  v12 = *(v10 + 88);
  v11 = *(v10 + 96);
  v13 = *(v10 + 72);
  v14 = *(v10 + 80);
  v15 = *(v10 + 56);
  v16 = *(v10 + 64);
  v17 = type metadata accessor for NLContextUpdate();
  OUTLINED_FUNCTION_63_7(v17);
  v18 = type metadata accessor for AceOutput();
  *(v10 + 32) = 0u;
  *(v10 + 48) = 0;
  *(v10 + 16) = 0u;
  v15[3] = v18;
  v15[4] = &protocol witness table for AceOutput;
  __swift_allocate_boxed_opaque_existential_1(v15);
  static AceOutputHelper.makeConfirmedViewOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
  outlined destroy of SpeakableString?(v10 + 16, &_s11SiriKitFlow0C8Activity_pSgMd, &_s11SiriKitFlow0C8Activity_pSgMR);
  outlined destroy of SpeakableString?(v13, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  v19 = *(v12 + 8);
  v20 = OUTLINED_FUNCTION_9_3();
  v21(v20);

  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_21_0();

  return v23(v22, v23, v24, v25, v26, v27, v28, v29, v10 + 16, a10);
}

uint64_t *AutoShortcutFirstRunFlow.deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 12);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 17);
  v1 = v0[22];

  v2 = v0[23];

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 24);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 29);
  return v0;
}

uint64_t AutoShortcutFirstRunFlow.__deallocating_deinit()
{
  AutoShortcutFirstRunFlow.deinit();

  return swift_deallocClassInstance();
}

uint64_t protocol witness for Flow.onAsync(input:) in conformance AutoShortcutFirstRunFlow(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = async function pointer to Flow.onAsync(input:)[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = protocol witness for AppShortcutInvoking.autoShortcuts.getter in conformance AutoShortcutInvocation;

  return Flow.onAsync(input:)(a1, a2, a3);
}

uint64_t protocol witness for Flow.execute() in conformance AutoShortcutFirstRunFlow(uint64_t a1)
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

uint64_t protocol witness for Flow.exitValue.getter in conformance AutoShortcutFirstRunFlow@<X0>(_BYTE *a1@<X8>)
{
  result = (*(**v1 + 176))();
  *a1 = result & 1;
  return result;
}

void SirikitApp.init(_:)()
{
  OUTLINED_FUNCTION_40_0();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v6 = OUTLINED_FUNCTION_14(v5);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v57 = v53 - v9;
  type metadata accessor for App();

  App.__allocating_init(appIdentifier:)();
  v10 = static SAAppInfoFactory.createAppInfo(app:)();

  if (v10)
  {
    v11 = outlined bridged method (pb) of @objc SAAppInfo.appNameMap.getter(v10);
    if (!v11)
    {

      if (one-time initialization token for voiceCommands != -1)
      {
        OUTLINED_FUNCTION_0();
      }

      v41 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_59(v41, static Logger.voiceCommands);
      v42 = Logger.logObject.getter();
      v43 = static os_log_type_t.info.getter();
      if (OUTLINED_FUNCTION_17_11(v43))
      {
        v44 = OUTLINED_FUNCTION_52();
        OUTLINED_FUNCTION_45(v44);
        OUTLINED_FUNCTION_25(&dword_0, v45, v46, "SirikitApp unsuccessfully instantiated, since appInfo does not contain app name map");
        OUTLINED_FUNCTION_17();
      }

      goto LABEL_26;
    }

    v12 = v11;
    v13 = *(v11 + 16);
    if (!v13)
    {

LABEL_25:
      v47 = type metadata accessor for SirikitApp.Builder();
      OUTLINED_FUNCTION_66(v47);
      SirikitApp.Builder.init()();
      v48 = v57;
      String.toSpeakableString.getter();

      type metadata accessor for SpeakableString();
      OUTLINED_FUNCTION_49_3();
      __swift_storeEnumTagSinglePayload(v49, v50, v51, v52);
      dispatch thunk of SirikitApp.Builder.withAppId(_:)();

      outlined destroy of SpeakableString?(v48, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
      dispatch thunk of SirikitApp.Builder.withLocalizedAppNames(_:)();

      dispatch thunk of SirikitApp.__allocating_init(builder:)();

      goto LABEL_26;
    }

    v53[0] = v4;
    v53[1] = v2;
    v53[2] = v0;
    v54 = v10;
    v62 = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v15 = specialized Dictionary.startIndex.getter(v12);
    v16 = v12 + 64;
    v17 = v13 - 1;
    v55 = v12 + 64;
    v56 = v12;
    if ((v15 & 0x8000000000000000) == 0)
    {
      while (v15 < 1 << *(v12 + 32))
      {
        if ((*(v16 + 8 * (v15 >> 6)) & (1 << v15)) == 0)
        {
          __break(1u);
LABEL_28:
          __break(1u);
LABEL_29:
          __break(1u);
LABEL_30:
          __break(1u);
LABEL_31:
          __break(1u);
          goto LABEL_32;
        }

        if (v14 != *(v12 + 36))
        {
          goto LABEL_28;
        }

        v59 = v14;
        v60 = v15 >> 6;
        v58 = v17;
        v18 = (*(v12 + 48) + 16 * v15);
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v12 + 56) + 16 * v15);
        v22 = v21[1];
        v61 = *v21;
        v23 = type metadata accessor for SirikitLocalizedAppName.Builder();
        OUTLINED_FUNCTION_66(v23);
        OUTLINED_FUNCTION_1_18();

        SirikitLocalizedAppName.Builder.init()();
        v24 = v57;
        OUTLINED_FUNCTION_48_2();
        String.toSpeakableString.getter();
        v25 = type metadata accessor for SpeakableString();
        OUTLINED_FUNCTION_49_3();
        __swift_storeEnumTagSinglePayload(v26, v27, v28, v25);
        dispatch thunk of SirikitLocalizedAppName.Builder.withLocale(_:)();

        outlined destroy of SpeakableString?(v24, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
        String.toSpeakableString.getter();
        OUTLINED_FUNCTION_49_3();
        __swift_storeEnumTagSinglePayload(v29, v30, v31, v25);
        dispatch thunk of SirikitLocalizedAppName.Builder.withAppName(_:)();

        v32 = v24;
        v12 = v56;
        outlined destroy of SpeakableString?(v32, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
        dispatch thunk of SirikitLocalizedAppName.Builder.build()();

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v33 = v62[2];
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        OUTLINED_FUNCTION_9_3();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        if (v15 >= -(-1 << *(v12 + 32)))
        {
          goto LABEL_29;
        }

        v16 = v55;
        if ((*(v55 + 8 * v60) & (1 << v15)) == 0)
        {
          goto LABEL_30;
        }

        if (v59 != *(v12 + 36))
        {
          goto LABEL_31;
        }

        v34 = _HashTable.occupiedBucket(after:)();
        if (!v58)
        {

          v10 = v54;
          goto LABEL_25;
        }

        v15 = v34;
        v14 = *(v12 + 36);
        v17 = v58 - 1;
        if (v34 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
  }

  if (one-time initialization token for voiceCommands != -1)
  {
LABEL_32:
    OUTLINED_FUNCTION_0();
  }

  v35 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_59(v35, static Logger.voiceCommands);
  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.info.getter();
  if (OUTLINED_FUNCTION_17_11(v37))
  {
    v38 = OUTLINED_FUNCTION_52();
    OUTLINED_FUNCTION_45(v38);
    OUTLINED_FUNCTION_25(&dword_0, v39, v40, "SirikitApp unsuccessfully instantiated, since SAAppInfoFactory was unable to create the app info");
    OUTLINED_FUNCTION_17();
  }

LABEL_26:
  OUTLINED_FUNCTION_42();
}