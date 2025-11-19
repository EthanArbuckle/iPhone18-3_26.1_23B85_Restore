uint64_t outlined init with take of UUID?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_7(v6);
  (*(v7 + 32))(a2, a1);
  return a2;
}

uint64_t implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)(void (*a1)(void))
{
  a1();

  return _typeName(_:qualified:)();
}

uint64_t outlined init with copy of UsoIdentifier?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology13UsoIdentifierVSgMd, &_s12SiriOntology13UsoIdentifierVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of ShortcutIdentification(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_7(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t OUTLINED_FUNCTION_5_9()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_8_15()
{
}

uint64_t OUTLINED_FUNCTION_11_8()
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

BOOL OUTLINED_FUNCTION_17_11(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_20_8()
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t OUTLINED_FUNCTION_22_7()
{

  return outlined init with copy of Any(v0 - 96, v0 - 128);
}

uint64_t OUTLINED_FUNCTION_26_8()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_29_6()
{
}

uint64_t AutoShortcutProvider.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 16) = [objc_allocWithZone(LNAutoShortcutsProvider) init];
  return v0;
}

uint64_t AutoShortcutProvider.autoShortcuts(forBundleIdentifier:localeIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[22] = a4;
  v5[23] = v4;
  v5[20] = a2;
  v5[21] = a3;
  v5[19] = a1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t AutoShortcutProvider.autoShortcuts(forBundleIdentifier:localeIdentifier:)()
{
  v1 = v0[22];
  v2 = v0[20];
  v3 = v0[21];
  v4 = v0[19];
  v5 = *(v0[23] + 16);
  v6 = String._bridgeToObjectiveC()();
  v0[24] = v6;
  v7 = String._bridgeToObjectiveC()();
  v0[25] = v7;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = AutoShortcutProvider.autoShortcuts(forBundleIdentifier:localeIdentifier:);
  v8 = swift_continuation_init();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySaySo14LNAutoShortcutCGs5Error_pGMd, &_sSccySaySo14LNAutoShortcutCGs5Error_pGMR);
  OUTLINED_FUNCTION_5_5(v9);
  v0[11] = 1107296256;
  v0[12] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSArray?, @unowned NSError?) -> () with result type [LNAutoShortcut];
  v0[13] = &block_descriptor_5;
  v0[14] = v8;
  [v5 autoShortcutsForBundleIdentifier:v6 localeIdentifier:v7 completion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_3();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 208) = v4;
  if (v4)
  {
    v5 = AutoShortcutProvider.autoShortcuts(forBundleIdentifier:localeIdentifier:);
  }

  else
  {
    v5 = AutoShortcutProvider.autoShortcuts(forBundleIdentifier:localeIdentifier:);
  }

  return _swift_task_switch(v5, 0, 0);
}

{
  OUTLINED_FUNCTION_8_0();
  v1 = *(v0 + 192);
  v2 = *(v0 + 144);

  v3 = OUTLINED_FUNCTION_6_4();

  return v4(v3);
}

{
  v1 = v0[25];
  v2 = v0[26];
  v3 = v0[24];
  swift_willThrow();

  OUTLINED_FUNCTION_6_0();
  v5 = v0[26];

  return v4();
}

uint64_t @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSArray?, @unowned NSError?) -> () with result type [LNAutoShortcut](uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v5 = a3;

    return specialized _resumeUnsafeThrowingContinuationWithError<A>(_:_:)(v4, v5);
  }

  else
  {
    type metadata accessor for LNAutoShortcut();
    v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    return specialized _resumeUnsafeThrowingContinuation<A>(_:_:)(v4, v7);
  }
}

uint64_t AutoShortcutProvider.retrieveAction(for:)(uint64_t a1)
{
  *(v2 + 152) = a1;
  *(v2 + 160) = v1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t AutoShortcutProvider.retrieveAction(for:)()
{
  v1 = v0[19];
  v2 = *(v0[20] + 16);
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = AutoShortcutProvider.retrieveAction(for:);
  v3 = swift_continuation_init();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySo8LNActionCs5Error_pGMd, &_sSccySo8LNActionCs5Error_pGMR);
  OUTLINED_FUNCTION_5_5(v4);
  v0[11] = 1107296256;
  v0[12] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned LNDynamicOptionsResult?, @unowned NSError?) -> () with result type LNDynamicOptionsResult;
  v0[13] = &block_descriptor_4;
  v0[14] = v3;
  [v2 retrieveActionForLocalizedPhrase:v1 completion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_3();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 168) = v4;
  if (v4)
  {
    v5 = AutoShortcutProvider.retrieveAction(for:);
  }

  else
  {
    v5 = AutoShortcutProvider.retrieveAction(for:);
  }

  return _swift_task_switch(v5, 0, 0);
}

{
  return (*(v0 + 8))(*(v0 + 144));
}

{
  v1 = *(v0 + 168);
  swift_willThrow();
  OUTLINED_FUNCTION_6_0();
  v3 = *(v0 + 168);

  return v2();
}

uint64_t AutoShortcutProvider.retrieveAction(bundleIdentifier:basePhraseTemplate:actionIdentifier:parameterIdentifier:)()
{
  OUTLINED_FUNCTION_8_0();
  v1[25] = v2;
  v1[26] = v0;
  v1[23] = v3;
  v1[24] = v4;
  v1[21] = v5;
  v1[22] = v6;
  v1[19] = v7;
  v1[20] = v8;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR) - 8) + 64) + 15;
  v1[27] = swift_task_alloc();

  return _swift_task_switch(AutoShortcutProvider.retrieveAction(bundleIdentifier:basePhraseTemplate:actionIdentifier:parameterIdentifier:), 0, 0);
}

{
  v1 = v0[27];
  v2 = v0[24];
  v3 = v0[25];
  v4 = v0[22];
  v5 = v0[23];
  v6 = v0[20];
  v7 = v0[21];
  v8 = v0[19];
  v9 = *(v0[26] + 16);
  v10 = String._bridgeToObjectiveC()();
  v0[28] = v10;
  v11 = String._bridgeToObjectiveC()();
  v0[29] = v11;
  v12 = String._bridgeToObjectiveC()();
  v0[30] = v12;
  outlined init with copy of UUID?(v3, v1);
  v13 = type metadata accessor for UUID();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v1, 1, v13);
  isa = 0;
  if (EnumTagSinglePayload != 1)
  {
    v16 = v0[27];
    isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(*(v13 - 8) + 8))(v16, v13);
  }

  v0[31] = isa;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = AutoShortcutProvider.retrieveAction(bundleIdentifier:basePhraseTemplate:actionIdentifier:parameterIdentifier:);
  v17 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySo8LNActionCs5Error_pGMd, &_sSccySo8LNActionCs5Error_pGMR);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  OUTLINED_FUNCTION_2_20();
  v0[13] = v18;
  v0[14] = v17;
  [v9 retrieveActionForBundleIdentifier:v10 basePhraseTemplate:v11 actionIdentifier:v12 parameterIdentifier:isa completion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_3();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 256) = v4;
  if (v4)
  {
    v5 = AutoShortcutProvider.retrieveAction(bundleIdentifier:basePhraseTemplate:actionIdentifier:parameterIdentifier:);
  }

  else
  {
    v5 = AutoShortcutProvider.retrieveAction(bundleIdentifier:basePhraseTemplate:actionIdentifier:parameterIdentifier:);
  }

  return _swift_task_switch(v5, 0, 0);
}

{
  v1 = *(v0 + 240);
  v3 = *(v0 + 224);
  v2 = *(v0 + 232);
  v4 = *(v0 + 216);
  v5 = *(v0 + 144);

  v6 = *(v0 + 8);

  return v6(v5);
}

{
  v1 = v0[31];
  v2 = v0[32];
  v4 = v0[29];
  v3 = v0[30];
  v5 = v0[27];
  v6 = v0[28];
  swift_willThrow();

  OUTLINED_FUNCTION_6_0();
  v8 = v0[32];

  return v7();
}

uint64_t AutoShortcutProvider.retrieveAction(bundleIdentifier:appShortcutIdentifier:parameterIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[24] = a6;
  v7[25] = v6;
  v7[22] = a4;
  v7[23] = a5;
  v7[20] = a2;
  v7[21] = a3;
  v7[19] = a1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t AutoShortcutProvider.retrieveAction(bundleIdentifier:appShortcutIdentifier:parameterIdentifier:)()
{
  v1 = v0[24];
  v3 = v0[21];
  v2 = v0[22];
  v4 = v0[19];
  v5 = v0[20];
  v6 = *(v0[25] + 16);
  v7 = String._bridgeToObjectiveC()();
  v0[26] = v7;
  v8 = String._bridgeToObjectiveC()();
  v0[27] = v8;
  if (v1)
  {
    v9 = v0[23];
    v10 = v0[24];
    v11 = String._bridgeToObjectiveC()();
  }

  else
  {
    v11 = 0;
  }

  v0[28] = v11;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = AutoShortcutProvider.retrieveAction(bundleIdentifier:appShortcutIdentifier:parameterIdentifier:);
  v12 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySo8LNActionCs5Error_pGMd, &_sSccySo8LNActionCs5Error_pGMR);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  OUTLINED_FUNCTION_2_20();
  v0[13] = v13;
  v0[14] = v12;
  [v6 retrieveActionForBundleIdentifier:v7 appShortcutIdentifier:v8 parameterIdentifier:v11 completion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_3();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 232) = v4;
  if (v4)
  {
    v5 = AutoShortcutProvider.retrieveAction(bundleIdentifier:appShortcutIdentifier:parameterIdentifier:);
  }

  else
  {
    v5 = AutoShortcutProvider.retrieveAction(bundleIdentifier:appShortcutIdentifier:parameterIdentifier:);
  }

  return _swift_task_switch(v5, 0, 0);
}

{
  v1 = *(v0 + 216);
  v2 = *(v0 + 208);
  v3 = *(v0 + 144);

  v4 = OUTLINED_FUNCTION_6_4();

  return v5(v4);
}

{
  v1 = v0[28];
  v2 = v0[29];
  v4 = v0[26];
  v3 = v0[27];
  swift_willThrow();

  OUTLINED_FUNCTION_6_0();
  v6 = v0[29];

  return v5();
}

uint64_t AutoShortcutProvider.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t protocol witness for AutoShortcutsProviding.autoShortcuts(forBundleIdentifier:localeIdentifier:) in conformance AutoShortcutProvider(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(**v4 + 96);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = protocol witness for AutoShortcutsProviding.autoShortcuts(forBundleIdentifier:localeIdentifier:) in conformance AutoShortcutProvider;

  return v14(a1, a2, a3, a4);
}

uint64_t protocol witness for AutoShortcutsProviding.autoShortcuts(forBundleIdentifier:localeIdentifier:) in conformance AutoShortcutProvider()
{
  OUTLINED_FUNCTION_8_0();
  v3 = v2;
  OUTLINED_FUNCTION_9_0();
  v5 = *(v4 + 16);
  v9 = *v1;

  v7 = *(v9 + 8);
  if (!v0)
  {
    v6 = v3;
  }

  return v7(v6);
}

uint64_t protocol witness for AutoShortcutsProviding.retrieveAction(for:) in conformance AutoShortcutProvider(uint64_t a1)
{
  v4 = *(**v1 + 104);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = protocol witness for AutoShortcutsProviding.retrieveAction(for:) in conformance AutoShortcutProvider;

  return v8(a1);
}

uint64_t protocol witness for AutoShortcutsProviding.retrieveAction(bundleIdentifier:basePhraseTemplate:actionIdentifier:parameterIdentifier:) in conformance AutoShortcutProvider(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v16 = *(**v7 + 112);
  v20 = (v16 + *v16);
  v17 = v16[1];
  v18 = swift_task_alloc();
  *(v8 + 16) = v18;
  *v18 = v8;
  v18[1] = protocol witness for AutoShortcutsProviding.retrieveAction(for:) in conformance AutoShortcutProvider;

  return v20(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t protocol witness for AutoShortcutsProviding.retrieveAction(bundleIdentifier:appShortcutIdentifier:parameterIdentifier:) in conformance AutoShortcutProvider(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v14 = *(**v6 + 120);
  v18 = (v14 + *v14);
  v15 = v14[1];
  v16 = swift_task_alloc();
  *(v7 + 16) = v16;
  *v16 = v7;
  v16[1] = protocol witness for AutoShortcutsProviding.retrieveAction(for:) in conformance AutoShortcutProvider;

  return v18(a1, a2, a3, a4, a5, a6);
}

unint64_t type metadata accessor for LNAutoShortcut()
{
  result = lazy cache variable for type metadata for LNAutoShortcut;
  if (!lazy cache variable for type metadata for LNAutoShortcut)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for LNAutoShortcut);
  }

  return result;
}

uint64_t String.asSpeakableString.getter()
{

  return SpeakableString.init(print:speak:)();
}

uint64_t ShortcutsUnlockDeviceStrategy.__allocating_init(dialogingTemplates:deviceState:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  outlined init with take of Output(a2, v4 + 24);
  return v4;
}

uint64_t static ShortcutsUnlockDeviceStrategy.makePromptForDeviceUnlock(dialogingTemplates:deviceState:)()
{
  OUTLINED_FUNCTION_8_0();
  v1[10] = v2;
  v1[11] = v0;
  v1[8] = v3;
  v1[9] = v4;
  v5 = type metadata accessor for DialogPhase();
  v1[12] = v5;
  OUTLINED_FUNCTION_5_0(v5);
  v1[13] = v6;
  v8 = *(v7 + 64) + 15;
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v9 = type metadata accessor for OutputGenerationManifest();
  v1[16] = v9;
  OUTLINED_FUNCTION_5_0(v9);
  v1[17] = v10;
  v12 = *(v11 + 64) + 15;
  v1[18] = swift_task_alloc();
  v13 = type metadata accessor for RFFeatureFlags.ResponseFramework();
  v1[19] = v13;
  OUTLINED_FUNCTION_5_0(v13);
  v1[20] = v14;
  v16 = *(v15 + 64) + 15;
  v1[21] = swift_task_alloc();
  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v17, v18, v19);
}

{
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[19];
  (*(v2 + 104))(v1, enum case for RFFeatureFlags.ResponseFramework._SMART(_:), v3);
  v4 = RFFeatureFlags.ResponseFramework.isEnabled.getter();
  (*(v2 + 8))(v1, v3);
  if (v4)
  {
    v6 = v0[9];
    v5 = v0[10];
    v7 = v5[4];
    __swift_project_boxed_opaque_existential_1(v5, v5[3]);
    OUTLINED_FUNCTION_20_1();
    v8 = dispatch thunk of DeviceState.isHomePod.getter();
    v9 = *v6;
    if (v8)
    {
      v36 = *v6 + 368;
      v38 = *(v9 + 368) + **(v9 + 368);
      v10 = *(*(v9 + 368) + 4);
      v11 = swift_task_alloc();
      v0[22] = v11;
      *v11 = v0;
      v19 = OUTLINED_FUNCTION_14_9(v11, v12, v13, v14, v15, v16, v17, v18, v36, v38);
    }

    else
    {
      v37 = v9 + 216;
      v39 = *(v9 + 216) + **(v9 + 216);
      v27 = *(*(v9 + 216) + 4);
      v28 = swift_task_alloc();
      v0[23] = v28;
      *v28 = v0;
      v19 = OUTLINED_FUNCTION_14_9(v28, v29, v30, v31, v32, v33, v34, v35, v37, v39);
    }

    return v19();
  }

  else
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_20_0();
    v0[28] = v20;
    *v20 = v21;
    v20[1] = static ShortcutsUnlockDeviceStrategy.makePromptForDeviceUnlock(dialogingTemplates:deviceState:);
    v22 = v0[10];
    v23 = v0[11];
    v24 = v0[8];
    v25 = v0[9];

    return static ShortcutsUnlockDeviceStrategy.makePromptForDeviceUnlock_preRFv2(dialogingTemplates:deviceState:)(v24, v25, v22);
  }
}

{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_9_0();
  v3 = v2;
  OUTLINED_FUNCTION_3_0();
  *v4 = v3;
  v3[2] = v1;
  v3[3] = v5;
  v3[4] = v0;
  v7 = *(v6 + 176);
  v8 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v9 = v8;

  if (v0)
  {
    v10 = v3[21];
    v11 = v3[18];
    v14 = v3 + 14;
    v12 = v3[14];
    v13 = v14[1];

    OUTLINED_FUNCTION_6_0();

    return v15();
  }

  else
  {
    OUTLINED_FUNCTION_11_1();

    return _swift_task_switch(v17, v18, v19);
  }
}

{
  v2 = OUTLINED_FUNCTION_16_12(*(v0 + 24));
  static DialogPhase.completion.getter();
  v3 = [v2 catId];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v4 = OUTLINED_FUNCTION_11_9();
  v5(v4);
  OUTLINED_FUNCTION_3_15();
  OutputGenerationManifest.responseViewId.setter();
  v6 = *(v1 + 8);
  v7 = OUTLINED_FUNCTION_20_1();
  v8(v7);
  v9 = type metadata accessor for ResponseFactory();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  *(v0 + 200) = ResponseFactory.init()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v12 = swift_allocObject();
  *(v0 + 208) = v12;
  *(v12 + 16) = xmmword_216010;
  *(v12 + 32) = v2;
  OUTLINED_FUNCTION_22_3(&async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(dialog:outputGenerationManifest:));
  OUTLINED_FUNCTION_20_0();
  *(v0 + 216) = v13;
  *v13 = v14;
  v15 = OUTLINED_FUNCTION_1_23(v13);

  return v16(v15);
}

{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_9_0();
  v3 = v2;
  OUTLINED_FUNCTION_3_0();
  *v4 = v3;
  v3[5] = v1;
  v3[6] = v5;
  v3[7] = v0;
  v7 = *(v6 + 184);
  v8 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v9 = v8;

  if (v0)
  {
    v10 = v3[21];
    v11 = v3[18];
    v14 = v3 + 14;
    v12 = v3[14];
    v13 = v14[1];

    OUTLINED_FUNCTION_6_0();

    return v15();
  }

  else
  {
    OUTLINED_FUNCTION_11_1();

    return _swift_task_switch(v17, v18, v19);
  }
}

{
  v2 = OUTLINED_FUNCTION_16_12(*(v0 + 48));
  static DialogPhase.completion.getter();
  v3 = [v2 catId];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v4 = OUTLINED_FUNCTION_11_9();
  v5(v4);
  OUTLINED_FUNCTION_3_15();
  OutputGenerationManifest.responseViewId.setter();
  v6 = *(v1 + 8);
  v7 = OUTLINED_FUNCTION_20_1();
  v8(v7);
  v9 = type metadata accessor for ResponseFactory();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  *(v0 + 200) = ResponseFactory.init()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v12 = swift_allocObject();
  *(v0 + 208) = v12;
  *(v12 + 16) = xmmword_216010;
  *(v12 + 32) = v2;
  OUTLINED_FUNCTION_22_3(&async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(dialog:outputGenerationManifest:));
  OUTLINED_FUNCTION_20_0();
  *(v0 + 216) = v13;
  *v13 = v14;
  v15 = OUTLINED_FUNCTION_1_23(v13);

  return v16(v15);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v2 = v1[27];
  v3 = v1[26];
  v4 = v1[25];
  v5 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v6 = v5;

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v7, v8, v9);
}

{
  OUTLINED_FUNCTION_12_0();
  v2 = *(v0 + 136);
  v1 = *(v0 + 144);
  v3 = *(v0 + 128);

  (*(v2 + 8))(v1, v3);
  v4 = *(v0 + 168);
  v5 = *(v0 + 144);
  v7 = *(v0 + 112);
  v6 = *(v0 + 120);

  OUTLINED_FUNCTION_6_0();

  return v8();
}

{
  v1 = *v0;
  v2 = *(*v0 + 224);
  v3 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v4 = v3;

  v5 = v1[21];
  v6 = v1[18];
  v7 = v1[15];
  v8 = v1[14];

  v9 = *(v3 + 8);

  return v9();
}

uint64_t ShortcutsUnlockDeviceStrategy.init(dialogingTemplates:deviceState:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  outlined init with take of Output(a2, v2 + 24);
  return v2;
}

uint64_t ShortcutsUnlockDeviceStrategy.makePromptForDeviceUnlock()(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *v1;
  OUTLINED_FUNCTION_11_1();
  return _swift_task_switch(v3, v4, v5);
}

uint64_t ShortcutsUnlockDeviceStrategy.makePromptForDeviceUnlock()()
{
  OUTLINED_FUNCTION_12_0();
  v1 = v0[4];
  v2 = *(v0[3] + 16);
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  v0[5] = v3;
  *v3 = v4;
  v3[1] = ShortcutsUnlockDeviceStrategy.makePromptForDeviceUnlock();
  v5 = v0[2];

  return static ShortcutsUnlockDeviceStrategy.makePromptForDeviceUnlock(dialogingTemplates:deviceState:)();
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v2 = *(v1 + 40);
  v3 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v4 = v3;

  OUTLINED_FUNCTION_6_0();

  return v5();
}

uint64_t static ShortcutsUnlockDeviceStrategy.makePromptForDeviceUnlock_preRFv2(dialogingTemplates:deviceState:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR) - 8) + 64) + 15;
  v3[10] = swift_task_alloc();
  v5 = type metadata accessor for TemplatingResult();
  v3[11] = v5;
  v6 = *(v5 - 8);
  v3[12] = v6;
  v7 = *(v6 + 64) + 15;
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();

  return _swift_task_switch(static ShortcutsUnlockDeviceStrategy.makePromptForDeviceUnlock_preRFv2(dialogingTemplates:deviceState:), 0, 0);
}

uint64_t static ShortcutsUnlockDeviceStrategy.makePromptForDeviceUnlock_preRFv2(dialogingTemplates:deviceState:)()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  OUTLINED_FUNCTION_20_1();
  v4 = dispatch thunk of DeviceState.isHomePod.getter();
  v5 = *v2;
  if (v4)
  {
    v17 = *v2 + 376;
    v18 = (*(v5 + 376) + **(v5 + 376));
    v6 = *(*(v5 + 376) + 4);
    swift_task_alloc();
    OUTLINED_FUNCTION_20_0();
    v0[16] = v7;
    *v7 = v8;
    v7[1] = static ShortcutsUnlockDeviceStrategy.makePromptForDeviceUnlock_preRFv2(dialogingTemplates:deviceState:);
    v9 = v0[14];
    v10 = v0[8];
    v11 = v18;
  }

  else
  {
    v19 = (*(v5 + 224) + **(v5 + 224));
    v12 = *(*(v5 + 224) + 4);
    swift_task_alloc();
    OUTLINED_FUNCTION_20_0();
    v0[18] = v13;
    *v13 = v14;
    v13[1] = static ShortcutsUnlockDeviceStrategy.makePromptForDeviceUnlock_preRFv2(dialogingTemplates:deviceState:);
    v9 = v0[13];
    v15 = v0[8];
    v11 = v19;
  }

  return v11(v9);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_0();
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
  v1 = *(v0 + 120);
  v2 = *(v0 + 96);
  v12 = *(v0 + 104);
  v3 = *(v0 + 80);
  v4 = *(v0 + 88);
  v5 = *(v0 + 72);
  v6 = *(v0 + 56);
  (*(v2 + 32))(v1);
  v7 = v5[4];
  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  dispatch thunk of DeviceState.isTextToSpeechEnabled.getter();
  v8 = type metadata accessor for NLContextUpdate();
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v8);
  v9 = type metadata accessor for AceOutput();
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  *(v0 + 16) = 0u;
  v6[3] = v9;
  v6[4] = &protocol witness table for AceOutput;
  __swift_allocate_boxed_opaque_existential_1(v6);
  OUTLINED_FUNCTION_10_14();
  static AceOutputHelper.makeClarificationViewOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
  outlined destroy of String?(v0 + 16, &_s11SiriKitFlow0C8Activity_pSgMd, &_s11SiriKitFlow0C8Activity_pSgMR);
  outlined destroy of String?(v3, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  (*(v2 + 8))(v1, v4);

  OUTLINED_FUNCTION_6_0();

  return v10();
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_0();
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
  v1 = *(v0 + 120);
  v3 = *(v0 + 96);
  v2 = *(v0 + 104);
  v4 = *(v0 + 80);
  v5 = *(v0 + 88);
  v6 = *(v0 + 72);
  v7 = *(v0 + 56);
  (*(v3 + 32))(v1);
  v8 = v6[4];
  __swift_project_boxed_opaque_existential_1(v6, v6[3]);
  dispatch thunk of DeviceState.isTextToSpeechEnabled.getter();
  v9 = type metadata accessor for NLContextUpdate();
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v9);
  v10 = type metadata accessor for AceOutput();
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  *(v0 + 16) = 0u;
  v7[3] = v10;
  v7[4] = &protocol witness table for AceOutput;
  __swift_allocate_boxed_opaque_existential_1(v7);
  OUTLINED_FUNCTION_10_14();
  static AceOutputHelper.makeClarificationViewOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
  outlined destroy of String?(v0 + 16, &_s11SiriKitFlow0C8Activity_pSgMd, &_s11SiriKitFlow0C8Activity_pSgMR);
  outlined destroy of String?(v4, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  (*(v3 + 8))(v1, v5);

  OUTLINED_FUNCTION_6_0();

  return v11();
}

{
  OUTLINED_FUNCTION_12_0();
  v1 = v0[17];
  v3 = v0[14];
  v2 = v0[15];
  v4 = v0[13];
  v5 = v0[10];

  OUTLINED_FUNCTION_6_0();

  return v6();
}

{
  OUTLINED_FUNCTION_12_0();
  v1 = v0[19];
  v3 = v0[14];
  v2 = v0[15];
  v4 = v0[13];
  v5 = v0[10];

  OUTLINED_FUNCTION_6_0();

  return v6();
}

uint64_t ShortcutsUnlockDeviceStrategy.makeShortcutsUnlockDeviceFlow()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11SiriKitFlow06CommonF5GuardVGMd, &_ss23_ContiguousArrayStorageCy11SiriKitFlow06CommonF5GuardVGMR);
  v1 = type metadata accessor for CommonFlowGuard();
  OUTLINED_FUNCTION_5_0(v1);
  v3 = *(v2 + 72);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  *(swift_allocObject() + 16) = xmmword_216850;
  v8[3] = type metadata accessor for ShortcutsUnlockDeviceStrategy();
  v8[4] = lazy protocol witness table accessor for type ShortcutsUnlockDeviceStrategy and conformance ShortcutsUnlockDeviceStrategy();
  v8[0] = v0;

  static CommonFlowGuard.ensuringDeviceIsAuthenticated(using:)();
  __swift_destroy_boxed_opaque_existential_1Tm(v8);
  v6 = static CommonGuardFlowUtils.makeGuardFlow(withGuards:)();

  return v6;
}

uint64_t ShortcutsUnlockDeviceStrategy.deinit()
{
  v1 = *(v0 + 16);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 24));
  return v0;
}

uint64_t ShortcutsUnlockDeviceStrategy.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 24));

  return swift_deallocClassInstance();
}

uint64_t protocol witness for UnlockDeviceFlowStrategyAsync.makePromptForDeviceUnlock() in conformance ShortcutsUnlockDeviceStrategy(uint64_t a1)
{
  v4 = *(**v1 + 112);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = protocol witness for RouteConfirmIntentResponseFlowStrategyAsync.makeFailureConfirmingIntentResponse(app:intent:intentResponse:) in conformance CustomIntentRCHFlowStrategy;

  return v8(a1);
}

unint64_t lazy protocol witness table accessor for type ShortcutsUnlockDeviceStrategy and conformance ShortcutsUnlockDeviceStrategy()
{
  result = lazy protocol witness table cache variable for type ShortcutsUnlockDeviceStrategy and conformance ShortcutsUnlockDeviceStrategy;
  if (!lazy protocol witness table cache variable for type ShortcutsUnlockDeviceStrategy and conformance ShortcutsUnlockDeviceStrategy)
  {
    type metadata accessor for ShortcutsUnlockDeviceStrategy();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ShortcutsUnlockDeviceStrategy and conformance ShortcutsUnlockDeviceStrategy);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_23(uint64_t a1)
{
  *(a1 + 8) = static ShortcutsUnlockDeviceStrategy.makePromptForDeviceUnlock(dialogingTemplates:deviceState:);
  v2 = *(v1 + 144);
  return *(v1 + 64);
}

uint64_t OUTLINED_FUNCTION_3_15()
{

  return OutputGenerationManifest.init(dialogPhase:_:)();
}

uint64_t OUTLINED_FUNCTION_14_9(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  *(a1 + 8) = v10;
  v12 = *(v11 + 72);
  return a10;
}

id OUTLINED_FUNCTION_16_12@<X0>(void *a1@<X8>)
{
  v3 = v1[18];
  v5 = v1[14];
  v4 = v1[15];
  v6 = v1[12];
  v7 = v1[13];
  v1[24] = a1;

  return a1;
}

uint64_t WFChooseFromListPromptFlowStrategy.__allocating_init(request:shortcutName:appBundleId:siriEnvironment:deviceState:runCustomCatWrapper:runCustomCatWrapperSimple:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v17 = swift_allocObject();
  WFChooseFromListPromptFlowStrategy.init(request:shortcutName:appBundleId:siriEnvironment:deviceState:runCustomCatWrapper:runCustomCatWrapperSimple:)(a1, a2, a3, a4, a5, a6, a7, a8, a9);
  return v17;
}

__n128 WFChooseFromListDisambiguationItem.init(component:item:)@<Q0>(__n128 *a1@<X0>, unint64_t a2@<X1>, __n128 *a3@<X8>)
{
  v3 = a1->n128_u64[1];
  v4 = a1[2].n128_u64[0];
  v5 = a1[2].n128_u64[1];
  a3->n128_u64[0] = a1->n128_u64[0];
  a3->n128_u64[1] = v3;
  result = a1[1];
  a3[1] = result;
  a3[2].n128_u64[0] = v4;
  a3[2].n128_u64[1] = v5;
  a3[3].n128_u64[0] = a2;
  return result;
}

uint64_t WFChooseFromListDisambiguationItem.component.getter@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_16_13(a1);

  v2 = v1;
}

__n128 WFChooseFromListDisambiguationItem.component.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  v4 = *(v1 + 24);

  v5 = *(v1 + 40);

  v6 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v6;
  result = *(a1 + 32);
  *(v1 + 32) = result;
  return result;
}

uint64_t WFChooseFromListDisambiguationItem.toDisambiguationItemModel()()
{
  OUTLINED_FUNCTION_8_0();
  *(v1 + 80) = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit14VisualPropertyVSgMd, &_s10SnippetKit14VisualPropertyVSgMR);
  OUTLINED_FUNCTION_14(v2);
  v4 = *(v3 + 64);
  *(v1 + 88) = OUTLINED_FUNCTION_28();
  v5 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v5, v6, v7);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v2 = *(v1 + 128);
  v3 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v5, v6, v7);
}

{
  v2 = v0[14];
  v1 = v0[15];
  v4 = v0[12];
  v3 = v0[13];
  v5 = v0[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_SStGMd, &_ss23_ContiguousArrayStorageCySS_SStGMR);
  inited = swift_initStackObject();
  v7 = OUTLINED_FUNCTION_5_10(inited, xmmword_216850);
  OUTLINED_FUNCTION_30_6(v7, v8);
  Dictionary.init(dictionaryLiteral:)();
  v9 = type metadata accessor for WorkflowDataModels.DisambiguationItemModel(0);
  OUTLINED_FUNCTION_66(v9);
  OUTLINED_FUNCTION_15_11();
  OUTLINED_FUNCTION_12_10(v10, v11, v12, v13, v14, v15, 0x800000000022FEE0, v16, v20);

  v17 = OUTLINED_FUNCTION_10_15();

  return v18(v17);
}

uint64_t Array<A>.toDisambiguationItemModels()()
{
  OUTLINED_FUNCTION_8_0();
  *(v0 + 88) = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit14VisualPropertyVSgMd, &_s10SnippetKit14VisualPropertyVSgMR);
  OUTLINED_FUNCTION_14(v2);
  v4 = *(v3 + 64);
  *(v0 + 96) = OUTLINED_FUNCTION_28();
  v5 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v5, v6, v7);
}

{
  v0[10] = _swiftEmptyArrayStorage;
  v1 = v0 + 10;
  v2 = v0[11];
  v3 = *(v2 + 16);
  v0[13] = v3;
  if (!v3)
  {
    goto LABEL_12;
  }

  v4 = 0;
  while (1)
  {
    v0[14] = v4;
    v5 = (v2 + 56 * v4);
    v0[15] = v5[4];
    v0[16] = v5[5];
    v0[17] = v5[6];
    v0[18] = v5[7];
    v6 = v5[8];
    v0[19] = v6;
    v0[20] = v5[9];
    v7 = v5[10];
    v0[21] = v7;

    v6;

    v8 = v7;
    if (v6)
    {
      break;
    }

    v9 = v0[12];
    type metadata accessor for VisualProperty();
    OUTLINED_FUNCTION_37_2();
    __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);

    v15 = v0[17];
    v14 = v0[18];
    v17 = v0[15];
    v16 = v0[16];
    v18 = v0[12];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_SStGMd, &_ss23_ContiguousArrayStorageCySS_SStGMR);
    inited = swift_initStackObject();
    v20 = OUTLINED_FUNCTION_5_10(inited, xmmword_216850);
    v20[2].n128_u64[0] = v21;
    v20[2].n128_u64[1] = 0xE500000000000000;
    v20[3].n128_u64[0] = v17;
    v20[3].n128_u64[1] = v16;

    v22 = Dictionary.init(dictionaryLiteral:)();
    v23 = type metadata accessor for WorkflowDataModels.DisambiguationItemModel(0);
    OUTLINED_FUNCTION_66(v23);
    OUTLINED_FUNCTION_15_11();
    WorkflowDataModels.DisambiguationItemModel.init(title:subtitle:thumbnail:invocationCommand:)(v17, v16, v15, v14, v18, 0xD000000000000043, 0x800000000022FEE0, v22, v41);
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*(&dword_10 + (v0[10] & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v0[10] & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    v25 = v0[20];
    v24 = v0[21];
    v27 = v0[18];
    v26 = v0[19];
    v28 = v0[16];
    v29 = v1;
    v30 = v0[13];
    v31 = v0[14] + 1;
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    if (v31 == v30)
    {
      v37 = *v29;
LABEL_12:
      v38 = v0[12];

      OUTLINED_FUNCTION_10_15();
      OUTLINED_FUNCTION_77();

      __asm { BRAA            X2, X16 }
    }

    v4 = v0[14] + 1;
    v2 = v0[11];
    v1 = v29;
  }

  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  v0[22] = v32;
  *v32 = v33;
  OUTLINED_FUNCTION_7_12(v32);
  OUTLINED_FUNCTION_77();

  return INImage.convertToVisualProperty()(v34);
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
  while (1)
  {
    v2 = v0[17];
    v1 = v0[18];
    v4 = v0[15];
    v3 = v0[16];
    v5 = v0[12];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_SStGMd, &_ss23_ContiguousArrayStorageCySS_SStGMR);
    inited = swift_initStackObject();
    v7 = OUTLINED_FUNCTION_5_10(inited, xmmword_216850);
    v7[2].n128_u64[0] = v8;
    v7[2].n128_u64[1] = 0xE500000000000000;
    v7[3].n128_u64[0] = v4;
    v7[3].n128_u64[1] = v3;

    v9 = Dictionary.init(dictionaryLiteral:)();
    v10 = type metadata accessor for WorkflowDataModels.DisambiguationItemModel(0);
    OUTLINED_FUNCTION_66(v10);
    OUTLINED_FUNCTION_15_11();
    WorkflowDataModels.DisambiguationItemModel.init(title:subtitle:thumbnail:invocationCommand:)(v4, v3, v2, v1, v5, 0xD000000000000043, 0x800000000022FEE0, v9, v37);
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*(&dword_10 + (v0[10] & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v0[10] & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    v11 = v0[20];
    v12 = v0[21];
    v14 = v0[18];
    v13 = v0[19];
    v15 = v0[16];
    v16 = v0[13];
    v17 = v0[14] + 1;
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    if (v17 == v16)
    {
      v28 = v0[10];
      v29 = v0[12];

      OUTLINED_FUNCTION_10_15();
      OUTLINED_FUNCTION_77();

      __asm { BRAA            X2, X16 }
    }

    v18 = v0[14];
    v0[14] = v18 + 1;
    v19 = (v0[11] + 56 * v18);
    v0[15] = v19[11];
    v0[16] = v19[12];
    v0[17] = v19[13];
    v0[18] = v19[14];
    v20 = v19[15];
    v0[19] = v20;
    v0[20] = v19[16];
    v21 = v19[17];
    v0[21] = v21;

    v20;

    v22 = v21;
    if (v20)
    {
      break;
    }

    v23 = v0[12];
    type metadata accessor for VisualProperty();
    OUTLINED_FUNCTION_37_2();
    __swift_storeEnumTagSinglePayload(v24, v25, v26, v27);
  }

  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  v0[22] = v32;
  *v32 = v33;
  OUTLINED_FUNCTION_7_12();
  OUTLINED_FUNCTION_77();

  return INImage.convertToVisualProperty()(v34);
}

{
  OUTLINED_FUNCTION_8_0();
  *(v0 + 96) = v1;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit14VisualPropertyVSgMd, &_s10SnippetKit14VisualPropertyVSgMR) - 8) + 64) + 15;
  *(v0 + 104) = swift_task_alloc();
  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v3, v4, v5);
}

{
  *(v1 + 80) = _swiftEmptyArrayStorage;
  v2 = v1 + 80;
  v3 = *(*(v1 + 96) + 16);
  *(v1 + 112) = v3;
  if (!v3)
  {
LABEL_18:
    v67 = *(v1 + 104);

    OUTLINED_FUNCTION_6_6();
    OUTLINED_FUNCTION_100();

    __asm { BRAA            X2, X16 }
  }

  v4 = objc_opt_self();
  v5 = 0;
  *(v1 + 120) = v4;
  v77 = 138412290;
  while (1)
  {
    *(v1 + 128) = v5;
    v6 = *(v1 + 120);
    v7 = (*(v1 + 96) + 56 * v5);
    v8 = v7[4];
    v9 = v7[5];
    *(v1 + 136) = v9;
    v10 = v7[6];
    v11 = v7[7];
    *(v1 + 144) = v11;
    v12 = v7[8];
    *(v1 + 152) = v12;
    OUTLINED_FUNCTION_17_26(v7);
    v79 = v12;

    v13 = v0;

    *(v1 + 88) = 0;
    v14 = [v6 archivedDataWithRootObject:v13 requiringSecureCoding:1 error:v2 + 8];
    v15 = *(v1 + 88);
    if (!v14)
    {
      v35 = v15;
      _convertNSErrorToError(_:)();

      swift_willThrow();

      if (one-time initialization token for voiceCommands != -1)
      {
        OUTLINED_FUNCTION_0_1();
        swift_once();
      }

      v36 = type metadata accessor for Logger();
      __swift_project_value_buffer(v36, static Logger.voiceCommands);

      v37 = v79;

      v38 = v13;
      v0 = Logger.logObject.getter();
      v39 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v0, v39))
      {
        v40 = OUTLINED_FUNCTION_48();
        v41 = OUTLINED_FUNCTION_23_15();
        *v40 = v77;
        *(v40 + 4) = v38;
        *v41 = v38;
        v42 = v38;
        _os_log_impl(&dword_0, v0, v39, "Could not archive disambiguation data for value: %@", v40, 0xCu);
        outlined destroy of NSObject?(v41);
        OUTLINED_FUNCTION_15_0();
        OUTLINED_FUNCTION_15_0();
      }

      v2 = v1 + 80;
      goto LABEL_16;
    }

    v16 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;

    *(v1 + 176) = v16;
    *(v1 + 184) = v18;
    type metadata accessor for CATSpeakableString();
    static CATSpeakableString.stripTTSHint(print:)(v8, v9, v19, v20, v21, v22, v23, v24, v74, v76, v77);
    *(v1 + 192) = v31;
    *(v1 + 200) = v32;
    if (v11)
    {
      static CATSpeakableString.stripTTSHint(print:)(v10, v11, v25, v26, v27, v28, v29, v30, v75, v76, v77);
      v10 = v34;
    }

    else
    {
      v33 = 0;
    }

    v2 = v1 + 80;
    *(v1 + 208) = v10;
    *(v1 + 216) = v33;
    if (v12)
    {
      break;
    }

    v43 = *(v1 + 104);
    v44 = type metadata accessor for VisualProperty();
    OUTLINED_FUNCTION_63_7(v44);
    v46 = *(v1 + 208);
    v45 = *(v1 + 216);
    v48 = *(v1 + 192);
    v47 = *(v1 + 200);
    v50 = *(v1 + 176);
    v49 = *(v1 + 184);
    v51 = *(v1 + 104);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_10Foundation4DataVtGMd, &_ss23_ContiguousArrayStorageCySS_10Foundation4DataVtGMR);
    inited = swift_initStackObject();
    v53 = OUTLINED_FUNCTION_1_51(inited, xmmword_216850);
    v53[2].n128_u64[0] = v54;
    v53[2].n128_u64[1] = 0xE500000000000000;
    v53[3].n128_u64[0] = v50;
    v53[3].n128_u64[1] = v49;
    Dictionary.init(dictionaryLiteral:)();
    v55 = OUTLINED_FUNCTION_22_18();
    OUTLINED_FUNCTION_66(v55);
    OUTLINED_FUNCTION_18_25();
    OUTLINED_FUNCTION_2_45(v48, v47, v46, v45, v56, v57, 0x800000000022FEE0, v58, v75);

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    OUTLINED_FUNCTION_13_22();
    if (v60)
    {
      OUTLINED_FUNCTION_14_8(v59);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    v61 = *(v1 + 160);
    v62 = *(v1 + 168);
    v63 = *(v1 + 144);
    v64 = *(v1 + 152);
    v65 = *(v1 + 136);
    OUTLINED_FUNCTION_73_3();
    v0 = (v1 + 80);
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    v78 = *(v1 + 80);
LABEL_16:
    OUTLINED_FUNCTION_12_25();
    if (v66)
    {
      goto LABEL_18;
    }
  }

  v70 = swift_task_alloc();
  *(v1 + 224) = v70;
  *v70 = v1;
  OUTLINED_FUNCTION_3_39(v70);
  OUTLINED_FUNCTION_100();

  return INImage.convertToVisualProperty()(v71);
}

{
  OUTLINED_FUNCTION_8_0();
  v1 = *(*v0 + 224);
  v6 = *v0;

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v2, v3, v4);
}

{
  OUTLINED_FUNCTION_14_24();
  v76 = "ter";
  while (1)
  {
    v5 = *(v0 + 208);
    v78 = *(v0 + 216);
    v7 = *(v0 + 192);
    v6 = *(v0 + 200);
    v9 = *(v0 + 176);
    v8 = *(v0 + 184);
    v10 = *(v0 + 104);
    __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_216850;
    *(inited + 32) = v2;
    *(inited + 40) = v1;
    *(inited + 48) = v9;
    *(inited + 56) = v8;
    Dictionary.init(dictionaryLiteral:)();
    v12 = OUTLINED_FUNCTION_22_18();
    OUTLINED_FUNCTION_66(v12);
    OUTLINED_FUNCTION_18_25();
    v13 = OUTLINED_FUNCTION_73_3();
    OUTLINED_FUNCTION_2_45(v13, v14, v5, v78, v15, v16, v17, v18, v73);

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    OUTLINED_FUNCTION_13_22();
    if (v20)
    {
      OUTLINED_FUNCTION_14_8(v19);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    v21 = *(v0 + 160);
    v22 = *(v0 + 168);
    v23 = *(v0 + 144);
    v24 = *(v0 + 152);
    v25 = *(v0 + 136);
    v26 = (v0 + 80);
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    v77 = *(v0 + 80);
    while (1)
    {
      OUTLINED_FUNCTION_12_25();
      if (v28)
      {
        v66 = *(v0 + 104);

        OUTLINED_FUNCTION_6_6();
        OUTLINED_FUNCTION_100();

        __asm { BRAA            X2, X16 }
      }

      *(v0 + 128) = v27;
      v29 = *(v0 + 120);
      v30 = (*(v0 + 96) + 56 * v27);
      v31 = v30[4];
      v32 = v30[5];
      *(v0 + 136) = v32;
      v2 = v30[6];
      v33 = v30[7];
      *(v0 + 144) = v33;
      v34 = v30[8];
      *(v0 + 152) = v34;
      OUTLINED_FUNCTION_17_26(v30);
      v79 = v34;

      v35 = v26;

      *(v0 + 88) = 0;
      v1 = [v29 archivedDataWithRootObject:v35 requiringSecureCoding:1 error:v0 + 88];
      v36 = *(v0 + 88);
      if (v1)
      {
        break;
      }

      v37 = v36;
      _convertNSErrorToError(_:)();

      swift_willThrow();

      if (one-time initialization token for voiceCommands != -1)
      {
        swift_once();
      }

      v38 = type metadata accessor for Logger();
      __swift_project_value_buffer(v38, static Logger.voiceCommands);

      v39 = v79;

      v40 = v35;
      v26 = Logger.logObject.getter();
      v41 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v26, v41))
      {
        v42 = OUTLINED_FUNCTION_48();
        v43 = OUTLINED_FUNCTION_23_15();
        *v42 = 138412290;
        *(v42 + 4) = v40;
        *v43 = v40;
        v44 = v40;
        _os_log_impl(&dword_0, v26, v41, "Could not archive disambiguation data for value: %@", v42, 0xCu);
        outlined destroy of NSObject?(v43);
        OUTLINED_FUNCTION_15_0();
        OUTLINED_FUNCTION_15_0();
      }
    }

    v45 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v47 = v46;

    *(v0 + 176) = v45;
    *(v0 + 184) = v47;
    type metadata accessor for CATSpeakableString();
    static CATSpeakableString.stripTTSHint(print:)(v31, v32, v48, v49, v50, v51, v52, v53, v74, v75, v76);
    *(v0 + 192) = v60;
    *(v0 + 200) = v61;
    if (v33)
    {
      static CATSpeakableString.stripTTSHint(print:)(v2, v33, v54, v55, v56, v57, v58, v59, v73, v75, v76);
      v2 = v63;
    }

    else
    {
      v62 = 0;
    }

    *(v0 + 208) = v2;
    *(v0 + 216) = v62;
    if (v34)
    {
      break;
    }

    v64 = *(v0 + 104);
    v65 = type metadata accessor for VisualProperty();
    OUTLINED_FUNCTION_63_7(v65);
    OUTLINED_FUNCTION_14_24();
  }

  v69 = swift_task_alloc();
  *(v0 + 224) = v69;
  *v69 = v0;
  OUTLINED_FUNCTION_3_39();
  OUTLINED_FUNCTION_100();

  return INImage.convertToVisualProperty()(v70);
}

void *WFChooseFromListPromptFlowStrategy.init(request:shortcutName:appBundleId:siriEnvironment:deviceState:runCustomCatWrapper:runCustomCatWrapperSimple:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = v9;
  v18 = type metadata accessor for CATOption();
  v19 = OUTLINED_FUNCTION_14(v18);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19);
  OUTLINED_FUNCTION_3();
  v10[2] = 6;
  v10[3] = a1;
  v10[4] = a2;
  v10[5] = a3;
  v10[6] = a4;
  v10[7] = a5;
  v10[16] = a6;
  outlined init with copy of DeviceState(a7, (v10 + 8));
  v32 = a7;
  outlined init with copy of DeviceState(a7, v34);
  v22 = one-time initialization token for shared;
  v31 = a1;

  if (v22 != -1)
  {
    swift_once();
  }

  v23 = static WFDialogState.shared;
  type metadata accessor for WorkflowRunnerCATs();

  static CATOption.defaultMode.getter();
  OUTLINED_FUNCTION_19_2();
  v24 = CATWrapper.__allocating_init(options:globals:)();
  type metadata accessor for WorkflowRunnerCATsSimple();
  OUTLINED_FUNCTION_32_8();
  OUTLINED_FUNCTION_19_2();
  v25 = CATWrapperSimple.__allocating_init(options:globals:)();
  type metadata accessor for RunVoiceCommandCATs();
  OUTLINED_FUNCTION_32_8();
  OUTLINED_FUNCTION_19_2();
  v26 = CATWrapper.__allocating_init(options:globals:)();
  type metadata accessor for RunVoiceCommandCATsSimple();
  OUTLINED_FUNCTION_32_8();
  OUTLINED_FUNCTION_19_2();
  v27 = CATWrapperSimple.__allocating_init(options:globals:)();
  type metadata accessor for WorkflowRunnerCATPatternsExecutor(0);
  OUTLINED_FUNCTION_32_8();
  OUTLINED_FUNCTION_19_2();
  v28 = CATWrapper.__allocating_init(options:globals:)();
  type metadata accessor for WorkflowDialogTemplating();
  swift_allocObject();
  v10[13] = WorkflowDialogTemplating.init(deviceState:dialogState:workflowCatWrapper:workflowCatWrapperSimple:runCustomCatWrapper:runCustomCatWrapperSimple:runVoiceCommandsCatWrapper:runVoiceCommandsCatWrapperSimple:catPatternsExecutor:)(v34, v23, v24, v25, a8, a9, v26, v27, v28);
  type metadata accessor for WorkflowSnippetProvider();
  v29 = static WorkflowSnippetProvider.getSnippetProvider(deviceState:)(v32);

  __swift_destroy_boxed_opaque_existential_1Tm(v32);
  v10[14] = v29;
  type metadata accessor for WorkflowNLContextProvider();
  v10[15] = swift_allocObject();
  return v10;
}

uint64_t WFChooseFromListPromptFlowStrategy.paginationStyle()()
{
  v1 = v0[12];
  __swift_project_boxed_opaque_existential_1(v0 + 8, v0[11]);
  if (DeviceState.isVox.getter())
  {
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
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_29_7(&dword_0, v5, v6, "#WFChooseFromListPromptFlowStrategy paginationStyle() return pagination with size = 6");
      OUTLINED_FUNCTION_15_0();
    }

    return static PaginationStyle.pageSize(_:)();
  }

  else
  {
    if (one-time initialization token for voiceCommands != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v8 = type metadata accessor for Logger();
    __swift_project_value_buffer(v8, static Logger.voiceCommands);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v9, v10))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_29_7(&dword_0, v11, v12, "#WFChooseFromListPromptFlowStrategy paginationStyle() return no pagniation");
      OUTLINED_FUNCTION_15_0();
    }

    return static PaginationStyle.noPagination()();
  }
}

uint64_t WFChooseFromListPromptFlowStrategy.actionForInput(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Parse.DirectInvocation();
  v5 = OUTLINED_FUNCTION_7_1(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v5);
  OUTLINED_FUNCTION_3();
  v65 = v11 - v10;
  v12 = type metadata accessor for Parse();
  v13 = OUTLINED_FUNCTION_7_1(v12);
  v68 = v14;
  v69 = v13;
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(v13);
  v66 = &v61 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v67 = &v61 - v19;
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
  __swift_project_value_buffer(v29, static Logger.voiceCommands);
  (*(v23 + 16))(v28, a1, v20);
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v63 = a1;
    v33 = v32;
    v34 = swift_slowAlloc();
    v64 = a2;
    v62 = v34;
    v70 = v34;
    *v33 = 136315138;
    _s11SiriKitFlow5InputVACs23CustomStringConvertibleAAWlTm_2(&lazy protocol witness table cache variable for type Input and conformance Input, &type metadata accessor for Input);
    v35 = dispatch thunk of CustomStringConvertible.description.getter();
    v36 = v7;
    v37 = v4;
    v39 = v38;
    (*(v23 + 8))(v28, v20);
    v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v39, &v70);
    v4 = v37;
    v7 = v36;

    *(v33 + 4) = v40;
    _os_log_impl(&dword_0, v30, v31, "#WFChooseFromListPromptFlowStrategy actionForInput: %s", v33, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v62);
    OUTLINED_FUNCTION_15_0();
    OUTLINED_FUNCTION_15_0();
  }

  else
  {

    (*(v23 + 8))(v28, v20);
  }

  v41 = v67;
  Input.parse.getter();
  v42 = static VoiceCommandConfirmationUtils.getVoiceCommandConfirmation(parse:)(v41);
  v43 = v68;
  v44 = *(v68 + 8);
  v45 = OUTLINED_FUNCTION_62();
  v44(v45);
  switch(v42)
  {
    case 2:

      return static ActionForInput.ignore()();
    case 3:
      goto LABEL_8;
    default:
      v46 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v46)
      {
        return static ActionForInput.ignore()();
      }

LABEL_8:
      v47 = v66;
      Input.parse.getter();
      v48 = *(v43 + 88);
      v49 = OUTLINED_FUNCTION_62();
      v51 = v50(v49);
      if (v51 == enum case for Parse.NLv3IntentOnly(_:))
      {
        goto LABEL_9;
      }

      if (v51 == enum case for Parse.directInvocation(_:))
      {
        v53 = *(v43 + 96);
        v54 = OUTLINED_FUNCTION_62();
        v55(v54);
        v56 = v65;
        (*(v7 + 32))(v65, v47, v4);
        if (Parse.DirectInvocation.identifier.getter() == 0xD000000000000043 && 0x800000000022FEE0 == v57)
        {
        }

        else
        {
          v59 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v59 & 1) == 0)
          {
            static ActionForInput.ignore()();
            return (*(v7 + 8))(v56, v4);
          }
        }

        static ActionForInput.handle()();
        return (*(v7 + 8))(v56, v4);
      }

      if (v51 == enum case for Parse.uso(_:) && (SiriLinkFlowFeatureFlags.isEnabled.getter(0) & 1) != 0)
      {
LABEL_9:
        static ActionForInput.handle()();
      }

      else
      {
        static ActionForInput.ignore()();
      }

      v60 = OUTLINED_FUNCTION_62();
      return (v44)(v60);
  }
}

uint64_t WFChooseFromListPromptFlowStrategy.parseDisambiguationResponse(input:paginatedItems:)()
{
  OUTLINED_FUNCTION_8_0();
  v1[5] = v2;
  v1[6] = v0;
  v1[3] = v3;
  v1[4] = v4;
  v5 = type metadata accessor for Parse();
  v1[7] = v5;
  OUTLINED_FUNCTION_5_0(v5);
  v1[8] = v6;
  v8 = *(v7 + 64);
  v1[9] = OUTLINED_FUNCTION_28();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow20DisambiguationResultVySay0a4LinkC6Plugin016WFChooseFromListD4ItemVGGSgMd, &_s11SiriKitFlow20DisambiguationResultVySay0a4LinkC6Plugin016WFChooseFromListD4ItemVGGSgMR);
  OUTLINED_FUNCTION_14(v9);
  v11 = *(v10 + 64) + 15;
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v12 = type metadata accessor for Input();
  v1[12] = v12;
  OUTLINED_FUNCTION_5_0(v12);
  v1[13] = v13;
  v15 = *(v14 + 64);
  v1[14] = OUTLINED_FUNCTION_28();
  v16 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v16, v17, v18);
}

uint64_t WFChooseFromListPromptFlowStrategy.parseDisambiguationResponse(input:paginatedItems:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_37_0();
  a19 = v21;
  a20 = v22;
  a18 = v20;
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v24 = v20[13];
  v23 = v20[14];
  v25 = v20[12];
  v26 = v20[4];
  v27 = type metadata accessor for Logger();
  __swift_project_value_buffer(v27, static Logger.voiceCommands);
  (*(v24 + 16))(v23, v26, v25);
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.debug.getter();
  v30 = os_log_type_enabled(v28, v29);
  v32 = v20[13];
  v31 = v20[14];
  v33 = v20[12];
  if (v30)
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    a9 = v35;
    *v34 = 136315138;
    v36 = Input.description.getter();
    v38 = v37;
    (*(v32 + 8))(v31, v33);
    v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v38, &a9);

    *(v34 + 4) = v39;
    _os_log_impl(&dword_0, v28, v29, "#WFChooseFromListPromptFlowStrategy parseDisambiguationResponse with input: %s", v34, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v35);
    OUTLINED_FUNCTION_15_0();
    OUTLINED_FUNCTION_15_0();
  }

  else
  {

    (*(v32 + 8))(v31, v33);
  }

  v40 = v20[11];
  v42 = v20[8];
  v41 = v20[9];
  v44 = v20[6];
  v43 = v20[7];
  v45 = v20[4];
  Input.parse.getter();
  WFChooseFromListPromptFlowStrategy.getVoiceCommandPagination(parse:)(v41);
  v46 = *(v42 + 8);
  v47 = OUTLINED_FUNCTION_62();
  v46(v47);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow20DisambiguationResultVySay0a4LinkC6Plugin016WFChooseFromListD4ItemVGGMd, &_s11SiriKitFlow20DisambiguationResultVySay0a4LinkC6Plugin016WFChooseFromListD4ItemVGGMR);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v40, 1, v48);
  v50 = v20[11];
  if (EnumTagSinglePayload != 1)
  {
    goto LABEL_9;
  }

  v52 = v20[9];
  v51 = v20[10];
  v53 = v20[7];
  v54 = v20[4];
  outlined destroy of DisambiguationResult<[WFChooseFromListDisambiguationItem]>?(v20[11]);
  Input.parse.getter();
  WFChooseFromListPromptFlowStrategy.getConfirmationForPagination(parse:)(v52);
  (v46)(v52, v53);
  v55 = __swift_getEnumTagSinglePayload(v51, 1, v48);
  v50 = v20[10];
  if (v55 == 1)
  {
    v57 = v20[4];
    v56 = v20[5];
    v58 = v20[3];
    outlined destroy of DisambiguationResult<[WFChooseFromListDisambiguationItem]>?(v20[10]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow22PaginatedItemContainerVy0a4LinkC6Plugin030WFChooseFromListDisambiguationE0VGMd, &_s11SiriKitFlow22PaginatedItemContainerVy0a4LinkC6Plugin030WFChooseFromListDisambiguationE0VGMR);
    v59 = PaginatedItemContainer.items.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriLinkFlowPlugin35InputToDisambiguationItemsConverterCyAA016WFChooseFromListG4ItemVGMd, &_s18SiriLinkFlowPlugin35InputToDisambiguationItemsConverterCyAA016WFChooseFromListG4ItemVGMR);
    swift_allocObject();
    v60 = specialized InputToDisambiguationItemsConverter.init(disambiguationItems:page:)(v59, 0, &outlined read-only object #0 of specialized InputToDisambiguationItemsConverter.init(disambiguationItems:page:));
    v20[2] = (*(*v60 + 128))(v57);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay18SiriLinkFlowPlugin34WFChooseFromListDisambiguationItemVGMd, &_sSay18SiriLinkFlowPlugin34WFChooseFromListDisambiguationItemVGMR);
    static DisambiguationResult.chosenItem(_:)();
  }

  else
  {
LABEL_9:
    (*(*(v48 - 8) + 32))(v20[3], v50, v48);
  }

  v61 = v20[14];
  v62 = v20[10];
  v63 = v20[11];
  v64 = v20[9];

  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_27_0();

  return v66(v65, v66, v67, v68, v69, v70, v71, v72, a9, a10, a11, a12);
}

uint64_t WFChooseFromListPromptFlowStrategy.makePromptForDisambiguation(paginatedItems:)()
{
  OUTLINED_FUNCTION_8_0();
  v1[8] = v2;
  v1[9] = v0;
  v1[7] = v3;
  v1[10] = *v0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  OUTLINED_FUNCTION_14(v4);
  v6 = *(v5 + 64);
  v1[11] = OUTLINED_FUNCTION_28();
  v7 = type metadata accessor for DialogPhase();
  v1[12] = v7;
  OUTLINED_FUNCTION_5_0(v7);
  v1[13] = v8;
  v10 = *(v9 + 64) + 15;
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v11 = type metadata accessor for OutputGenerationManifest();
  v1[16] = v11;
  OUTLINED_FUNCTION_5_0(v11);
  v1[17] = v12;
  v14 = *(v13 + 64);
  v1[18] = OUTLINED_FUNCTION_28();
  v15 = type metadata accessor for NLContextUpdate();
  v1[19] = v15;
  OUTLINED_FUNCTION_5_0(v15);
  v1[20] = v16;
  v18 = *(v17 + 64);
  v1[21] = OUTLINED_FUNCTION_28();
  v19 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v19, v20, v21);
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
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "#WFChooseFromListPromptFlowStrategy make prompt for disambiguation item", v4, 2u);
    OUTLINED_FUNCTION_15_0();
  }

  v5 = v0[21];
  v6 = v0[8];
  v7 = v0[9];

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow22PaginatedItemContainerVy0a4LinkC6Plugin030WFChooseFromListDisambiguationE0VGMd, &_s11SiriKitFlow22PaginatedItemContainerVy0a4LinkC6Plugin030WFChooseFromListDisambiguationE0VGMR);
  v8 = PaginatedItemContainer.items.getter();
  v0[22] = v8;
  (*(**(v7 + 120) + 240))();
  v9 = *(v7 + 24);
  v10 = *(v7 + 128);
  v11 = *(**(v7 + 104) + 224);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  v0[23] = v13;
  *v13 = v0;
  v13[1] = WFChooseFromListPromptFlowStrategy.makePromptForDisambiguation(paginatedItems:);

  return v15(v9, v8, v10);
}

{
  v1 = v0[25];
  v2 = v0[20];
  v3 = v0[18];
  v19 = v0[19];
  v20 = v0[21];
  v5 = v0[14];
  v4 = v0[15];
  v7 = v0[12];
  v6 = v0[13];
  v18 = v0[11];
  v21 = v0[9];
  static DialogPhase.clarification.getter();
  v8 = [v1 catId];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  (*(v6 + 16))(v5, v4, v7);
  OutputGenerationManifest.init(dialogPhase:_:)();
  OutputGenerationManifest.responseViewId.setter();
  (*(v6 + 8))(v4, v7);
  OutputGenerationManifest.canUseServerTTS.setter();
  OutputGenerationManifest.listenAfterSpeaking.setter();
  (*(v2 + 16))(v18, v20, v19);
  __swift_storeEnumTagSinglePayload(v18, 0, 1, v19);
  OutputGenerationManifest.nlContextUpdate.setter();
  v9 = type metadata accessor for ResponseFactory();
  OUTLINED_FUNCTION_66(v9);
  v10 = ResponseFactory.init()();
  v0[5] = v9;
  v0[6] = &protocol witness table for ResponseFactory;
  v0[2] = v10;
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  v0[26] = v11;
  *v11 = v12;
  v11[1] = WFChooseFromListPromptFlowStrategy.makePromptForDisambiguation(paginatedItems:);
  v13 = v0[25];
  v14 = v0[22];
  v15 = v0[18];
  v16 = v0[7];

  return static WFChooseFromListPromptFlowStrategy.makePromptForDisambiguation(deviceState:dialogResult:manifest:items:responseFactory:)(v16, v21 + 64, v13, v15, v14, (v0 + 2));
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v2 = v1;
  OUTLINED_FUNCTION_3_0();
  *v3 = v2;
  v5 = *(v4 + 208);
  v6 = *(v4 + 176);
  v7 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v8 = v7;

  __swift_destroy_boxed_opaque_existential_1Tm((v2 + 16));
  v9 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v9, v10, v11);
}

{
  v1 = v0[18];
  v3 = v0[14];
  v2 = v0[15];
  v4 = v0[11];
  (*(v0[20] + 8))(v0[21], v0[19]);

  OUTLINED_FUNCTION_6_0();
  v6 = v0[24];

  return v5();
}

uint64_t WFChooseFromListPromptFlowStrategy.makePromptForDisambiguation(paginatedItems:)(uint64_t a1)
{
  OUTLINED_FUNCTION_9_0();
  v5 = v4;
  OUTLINED_FUNCTION_3_0();
  *v6 = v5;
  v8 = *(v7 + 184);
  v9 = *v2;
  OUTLINED_FUNCTION_2_0();
  *v10 = v9;
  v5[24] = v1;

  if (v1)
  {
    v11 = v5[22];

    v12 = WFChooseFromListPromptFlowStrategy.makePromptForDisambiguation(paginatedItems:);
  }

  else
  {
    v5[25] = a1;
    v12 = WFChooseFromListPromptFlowStrategy.makePromptForDisambiguation(paginatedItems:);
  }

  return _swift_task_switch(v12, 0, 0);
}

uint64_t WFChooseFromListPromptFlowStrategy.makePromptForDisambiguation(paginatedItems:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_37_0();
  v14 = *(v12 + 160);
  v13 = *(v12 + 168);
  v16 = *(v12 + 144);
  v15 = *(v12 + 152);
  v17 = *(v12 + 128);
  v18 = *(v12 + 136);
  v20 = *(v12 + 112);
  v19 = *(v12 + 120);
  v21 = *(v12 + 88);

  (*(v18 + 8))(v16, v17);
  (*(v14 + 8))(v13, v15);

  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_27_0();

  return v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, a11, a12);
}

uint64_t static WFChooseFromListPromptFlowStrategy.makePromptForDisambiguation(deviceState:dialogResult:manifest:items:responseFactory:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[11] = a5;
  v6[12] = a6;
  v6[9] = a3;
  v6[10] = a4;
  v6[7] = a1;
  v6[8] = a2;
  v7 = OUTLINED_FUNCTION_4();
  return _swift_task_switch(v7, v8, v9);
}

uint64_t static WFChooseFromListPromptFlowStrategy.makePromptForDisambiguation(deviceState:dialogResult:manifest:items:responseFactory:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_42_3(*(v14 + 64));
  if (dispatch thunk of DeviceState.isHomePod.getter())
  {
    v15 = *(v14 + 72);
    OUTLINED_FUNCTION_42_3(*(v14 + 96));
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v16 = swift_allocObject();
    *(v14 + 152) = v16;
    *(v16 + 16) = xmmword_216010;
    *(v16 + 32) = v15;
    v17 = async function pointer to dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)[1];
    v18 = v15;
    swift_task_alloc();
    OUTLINED_FUNCTION_20_0();
    *(v14 + 160) = v22;
    *v22 = v23;
    v22[1] = static WFChooseFromListPromptFlowStrategy.makePromptForDisambiguation(deviceState:dialogResult:manifest:items:responseFactory:);
    v24 = *(v14 + 80);
    v25 = *(v14 + 56);

    return dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)(v25, v16, v24, v12, v13, v19, v20, v21, a9, a10, a11, a12);
  }

  else
  {
    v26 = *(v14 + 72);
    *(v14 + 104) = DialogExecutionResult.firstDialogFullPrint()();
    v27 = swift_task_alloc();
    *(v14 + 120) = v27;
    *v27 = v14;
    v27[1] = static WFChooseFromListPromptFlowStrategy.makePromptForDisambiguation(deviceState:dialogResult:manifest:items:responseFactory:);
    v28 = *(v14 + 88);

    return Array<A>.toDisambiguationItemModels()();
  }
}

{
  v15 = *(v14 + 128);
  v28 = *(v14 + 104);
  v16 = *(v14 + 72);
  OUTLINED_FUNCTION_42_3(*(v14 + 96));
  *(v14 + 40) = type metadata accessor for WorkflowDataModels(0);
  *(v14 + 48) = _s11SiriKitFlow5InputVACs23CustomStringConvertibleAAWlTm_2(&lazy protocol witness table cache variable for type WorkflowDataModels and conformance WorkflowDataModels, type metadata accessor for WorkflowDataModels);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v14 + 16));
  *boxed_opaque_existential_1 = v28;
  boxed_opaque_existential_1[2] = v15;
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v18 = swift_allocObject();
  *(v14 + 136) = v18;
  *(v18 + 16) = xmmword_216010;
  *(v18 + 32) = v16;
  v19 = async function pointer to dispatch thunk of ResponseGenerating.makeResponseOutput(resultModel:dialog:outputGenerationManifest:)[1];
  v20 = v16;
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  *(v14 + 144) = v23;
  *v23 = v24;
  v23[1] = static WFChooseFromListPromptFlowStrategy.makePromptForDisambiguation(deviceState:dialogResult:manifest:items:responseFactory:);
  v25 = *(v14 + 80);
  v26 = *(v14 + 56);

  return dispatch thunk of ResponseGenerating.makeResponseOutput(resultModel:dialog:outputGenerationManifest:)(v26, v14 + 16, v18, v25, v12, v13, v21, v22, a9, a10, a11, a12);
}

uint64_t static WFChooseFromListPromptFlowStrategy.makePromptForDisambiguation(deviceState:dialogResult:manifest:items:responseFactory:)()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_0();
  *v2 = v1;
  v4 = *(v3 + 120);
  *v2 = *v0;
  *(v1 + 128) = v5;

  v6 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v6, v7, v8);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v2 = v1;
  OUTLINED_FUNCTION_3_0();
  *v3 = v2;
  v5 = *(v4 + 144);
  v6 = *(v4 + 136);
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
  v2 = *(v1 + 160);
  v3 = *(v1 + 152);
  v4 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v5 = v4;

  OUTLINED_FUNCTION_6_0();

  return v6();
}

uint64_t WFChooseFromListPromptFlowStrategy.getVoiceCommandPagination(parse:)(uint64_t a1)
{
  v2 = type metadata accessor for NLIntent();
  v3 = OUTLINED_FUNCTION_7_1(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v3);
  OUTLINED_FUNCTION_3();
  v10 = v9 - v8;
  v11 = type metadata accessor for Parse();
  v12 = OUTLINED_FUNCTION_7_1(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  __chkstk_darwin(v12);
  OUTLINED_FUNCTION_3();
  v19 = v18 - v17;
  (*(v14 + 16))(v18 - v17, a1, v11);
  v20 = *(v14 + 88);
  v21 = OUTLINED_FUNCTION_26_9();
  v23 = v22(v21);
  if (v23 == enum case for Parse.NLv3IntentOnly(_:))
  {
    v24 = *(v14 + 96);
    v25 = OUTLINED_FUNCTION_26_9();
    v26(v25);
LABEL_5:
    (*(v5 + 32))(v10, v19, v2);
    WFChooseFromListPromptFlowStrategy.getPaginationFromNLIntent(intent:)(v10);
    return (*(v5 + 8))(v10, v2);
  }

  if (v23 == enum case for Parse.NLv3IntentPlusServerConversion(_:))
  {
    v27 = *(v14 + 96);
    v28 = OUTLINED_FUNCTION_26_9();
    v29(v28);
    v30 = *(v19 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology8NLIntentV_0A7KitFlow5ParseO16ServerConversionCtMd, &_s12SiriOntology8NLIntentV_0A7KitFlow5ParseO16ServerConversionCtMR) + 48));

    goto LABEL_5;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow20DisambiguationResultVySay0a4LinkC6Plugin016WFChooseFromListD4ItemVGGMd, &_s11SiriKitFlow20DisambiguationResultVySay0a4LinkC6Plugin016WFChooseFromListD4ItemVGGMR);
  OUTLINED_FUNCTION_27_7();
  OUTLINED_FUNCTION_37_2();
  __swift_storeEnumTagSinglePayload(v32, v33, v34, v35);
  v36 = *(v14 + 8);
  v37 = OUTLINED_FUNCTION_26_9();
  return v38(v37);
}

uint64_t WFChooseFromListPromptFlowStrategy.getPaginationFromNLIntent(intent:)(uint64_t a1)
{
  v2 = type metadata accessor for PaginationRequest();
  v3 = OUTLINED_FUNCTION_7_1(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v3);
  OUTLINED_FUNCTION_3();
  v10 = v9 - v8;
  v11 = type metadata accessor for VoiceCommandsNLIntent(0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  OUTLINED_FUNCTION_3();
  v15 = v14 - v13;
  v16 = type metadata accessor for NLIntent();
  (*(*(v16 - 8) + 16))(v15, a1, v16);
  if (one-time initialization token for voiceCommandPaginationNode != -1)
  {
    swift_once();
  }

  _s11SiriKitFlow5InputVACs23CustomStringConvertibleAAWlTm_2(&lazy protocol witness table cache variable for type VoiceCommandsNLIntent and conformance VoiceCommandsNLIntent, type metadata accessor for VoiceCommandsNLIntent);
  IntentNodeTraversable.value<A>(forNode:)();
  if (v21 - 2 >= 2)
  {
    if (v21)
    {
      static PaginationRequest.previousPage()();
    }

    else
    {
      static PaginationRequest.nextPage()();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay18SiriLinkFlowPlugin34WFChooseFromListDisambiguationItemVGMd, &_sSay18SiriLinkFlowPlugin34WFChooseFromListDisambiguationItemVGMR);
    static DisambiguationResult.paginate(_:)();
    (*(v5 + 8))(v10, v2);
    v17 = 0;
  }

  else
  {
    v17 = 1;
  }

  outlined destroy of VoiceCommandsNLIntent(v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow20DisambiguationResultVySay0a4LinkC6Plugin016WFChooseFromListD4ItemVGGMd, &_s11SiriKitFlow20DisambiguationResultVySay0a4LinkC6Plugin016WFChooseFromListD4ItemVGGMR);
  v18 = OUTLINED_FUNCTION_27_7();
  return __swift_storeEnumTagSinglePayload(v18, v17, 1, v19);
}

uint64_t WFChooseFromListPromptFlowStrategy.getConfirmationForPagination(parse:)(uint64_t a1)
{
  v2 = type metadata accessor for PaginationRequest();
  v3 = OUTLINED_FUNCTION_7_1(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v3);
  OUTLINED_FUNCTION_3();
  v10 = v9 - v8;
  if (static VoiceCommandConfirmationUtils.getVoiceCommandConfirmation(parse:)(a1) == 1)
  {
    static PaginationRequest.nextPage()();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay18SiriLinkFlowPlugin34WFChooseFromListDisambiguationItemVGMd, &_sSay18SiriLinkFlowPlugin34WFChooseFromListDisambiguationItemVGMR);
    static DisambiguationResult.paginate(_:)();
    (*(v5 + 8))(v10, v2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow20DisambiguationResultVySay0a4LinkC6Plugin016WFChooseFromListD4ItemVGGMd, &_s11SiriKitFlow20DisambiguationResultVySay0a4LinkC6Plugin016WFChooseFromListD4ItemVGGMR);
    v16 = OUTLINED_FUNCTION_27_7();
    return __swift_storeEnumTagSinglePayload(v16, 0, 1, v17);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow20DisambiguationResultVySay0a4LinkC6Plugin016WFChooseFromListD4ItemVGGMd, &_s11SiriKitFlow20DisambiguationResultVySay0a4LinkC6Plugin016WFChooseFromListD4ItemVGGMR);
    OUTLINED_FUNCTION_27_7();
    OUTLINED_FUNCTION_37_2();

    return __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
  }
}

uint64_t WFChooseFromListPromptFlowStrategy.deinit()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 56);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 64));
  v3 = *(v0 + 104);

  v4 = *(v0 + 112);

  v5 = *(v0 + 120);

  v6 = *(v0 + 128);

  return v0;
}

uint64_t WFChooseFromListPromptFlowStrategy.__deallocating_deinit()
{
  WFChooseFromListPromptFlowStrategy.deinit();

  return swift_deallocClassInstance();
}

uint64_t protocol witness for PromptForDisambiguationFlowStrategyAsync.parseDisambiguationResponse(input:paginatedItems:) in conformance WFChooseFromListPromptFlowStrategy(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 176);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = CustomIntentRCHFlowStrategy.makeErrorResponse(error:app:intent:);

  return v12(a1, a2, a3);
}

uint64_t protocol witness for PromptForDisambiguationFlowStrategyAsync.makePromptForDisambiguation(paginatedItems:) in conformance WFChooseFromListPromptFlowStrategy(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 184);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = CustomIntentRCHFlowStrategy.makeErrorResponse(error:app:intent:);

  return v10(a1, a2);
}

uint64_t protocol witness for PromptForDisambiguationFlowStrategyAsync.makeRepromptOnEmptyParse(paginatedItems:) in conformance WFChooseFromListPromptFlowStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = async function pointer to PromptForDisambiguationFlowStrategyAsync.makeRepromptOnEmptyParse(paginatedItems:)[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for WFChooseFromListPromptFlowStrategy();
  *v9 = v4;
  v9[1] = CustomIntentRCHFlowStrategy.makeErrorResponse(error:app:intent:);

  return PromptForDisambiguationFlowStrategyAsync.makeRepromptOnEmptyParse(paginatedItems:)(a1, a2, v10, a4);
}

uint64_t protocol witness for PromptForDisambiguationFlowStrategyAsync.makeRepromptOnLowConfidence(paginatedItems:) in conformance WFChooseFromListPromptFlowStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = async function pointer to PromptForDisambiguationFlowStrategyAsync.makeRepromptOnLowConfidence(paginatedItems:)[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for WFChooseFromListPromptFlowStrategy();
  *v9 = v4;
  v9[1] = CustomIntentRCHFlowStrategy.makeErrorResponse(error:app:intent:);

  return PromptForDisambiguationFlowStrategyAsync.makeRepromptOnLowConfidence(paginatedItems:)(a1, a2, v10, a4);
}

uint64_t protocol witness for PromptForDisambiguationFlowStrategyAsync.makeFlowCancelledResponse() in conformance WFChooseFromListPromptFlowStrategy(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = async function pointer to PromptForDisambiguationFlowStrategyAsync.makeFlowCancelledResponse()[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = protocol witness for RouteConfirmIntentResponseFlowStrategyAsync.makeFailureConfirmingIntentResponse(app:intent:intentResponse:) in conformance CustomIntentRCHFlowStrategy;

  return PromptForDisambiguationFlowStrategyAsync.makeFlowCancelledResponse()(a1, a2, a3);
}

uint64_t protocol witness for PromptForDisambiguationFlowStrategyAsync.makeErrorResponse(_:) in conformance WFChooseFromListPromptFlowStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = async function pointer to PromptForDisambiguationFlowStrategyAsync.makeErrorResponse(_:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = CustomIntentRCHFlowStrategy.makeErrorResponse(error:app:intent:);

  return PromptForDisambiguationFlowStrategyAsync.makeErrorResponse(_:)(a1, a2, a3, a4);
}

void *specialized InputToDisambiguationItemsConverter.init(disambiguationItems:page:)(uint64_t a1, uint64_t a2)
{
  return specialized InputToDisambiguationItemsConverter.init(disambiguationItems:page:)(a1, a2, &outlined read-only object #0 of specialized InputToDisambiguationItemsConverter.init(disambiguationItems:page:));
}

{
  return specialized InputToDisambiguationItemsConverter.init(disambiguationItems:page:)(a1, a2, &outlined read-only object #0 of specialized InputToDisambiguationItemsConverter.init(disambiguationItems:page:));
}

void *specialized InputToDisambiguationItemsConverter.init(disambiguationItems:page:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a3;
  v3[2] = a1;
  if (a2)
  {
    v4 = a2;
  }

  else
  {
  }

  v3[3] = v4;
  return v3;
}

uint64_t outlined destroy of DisambiguationResult<[WFChooseFromListDisambiguationItem]>?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow20DisambiguationResultVySay0a4LinkC6Plugin016WFChooseFromListD4ItemVGGSgMd, &_s11SiriKitFlow20DisambiguationResultVySay0a4LinkC6Plugin016WFChooseFromListD4ItemVGGSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
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

uint64_t getEnumTagSinglePayload for WFChooseFromListDisambiguationItem(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
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

uint64_t storeEnumTagSinglePayload for WFChooseFromListDisambiguationItem(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t _s11SiriKitFlow5InputVACs23CustomStringConvertibleAAWlTm_2(unint64_t *a1, void (*a2)(uint64_t))
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

void *OUTLINED_FUNCTION_12_10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{

  return WorkflowDataModels.DisambiguationItemModel.init(title:subtitle:thumbnail:invocationCommand:)(v13, v12, v11, v10, v9, 0xD000000000000043, a7, v14, a9);
}

uint64_t OUTLINED_FUNCTION_16_13@<X0>(void *a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v8 = v1[4];
  v7 = v1[5];
  *a1 = v4;
  a1[1] = v3;
  a1[2] = v5;
  a1[3] = v6;
  a1[4] = v8;
  a1[5] = v7;
}

void OUTLINED_FUNCTION_29_7(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_30_6@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  a1[4] = a2;
  a1[5] = 0xE500000000000000;
  a1[6] = v3;
  a1[7] = v2;
}

uint64_t OUTLINED_FUNCTION_32_8()
{

  return static CATOption.defaultMode.getter();
}

uint64_t Array<A>.isAudioStarting.getter(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = [v2 audioStartingProtocol];
  v13 = v3;
  v12 = &v13;
  specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), v11, a1);
  v5 = v4;

  if (v5)
  {
    v6 = 1;
  }

  else
  {
    v7 = [v2 audioRecordingProtocol];
    v13 = v7;
    __chkstk_darwin(v7);
    v10[2] = &v13;
    specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, v10, a1);
    v6 = v8;
  }

  return v6 & 1;
}

uint64_t LNActionPresentationStyle.asSiriLinkFlowProvisionalActionPresentationStyle()(unint64_t a1)
{
  if (a1 < 3)
  {
    return (a1 + 1);
  }

  else
  {
    return 0;
  }
}

void __swiftcall LNAction.asSiriLinkFlowProvisionalLinkAction()(SiriLinkFlowProvisionalLinkAction_optional *__return_ptr retstr)
{
  v2 = [objc_allocWithZone(SiriLinkFlowProvisionalLinkAction) init];
  if (!v2)
  {
    goto LABEL_15;
  }

  v3 = [v1 identifier];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  outlined bridged method (mbnn) of @objc SAUIButton.text.setter(v4, v6, v2, &selRef_setIdentifier_);
  v7 = [v1 presentationStyle];
  if (v7 < 3)
  {
    v8 = (v7 + 1);
  }

  else
  {
    v8 = 0;
  }

  [v2 setPresentationStyle:v8];
  v9 = [v1 parameters];
  type metadata accessor for NSError(0, &lazy cache variable for type metadata for LNProperty, LNProperty_ptr);
  v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v11 = specialized Array.count.getter(v10);
  if (!v11)
  {
LABEL_14:

LABEL_15:
    OUTLINED_FUNCTION_42();
    return;
  }

  v12 = v11;
  if (v11 >= 1)
  {
    for (i = 0; i != v12; ++i)
    {
      if ((v10 & 0xC000000000000001) != 0)
      {
        v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v14 = *(v10 + 8 * i + 32);
      }

      v15 = v14;
      v16 = [objc_allocWithZone(SiriLinkFlowProvisionalLinkActionParameter) init];
      if (v16)
      {
        v17 = v16;
        v18 = [v15 identifier];
        v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v21 = v20;

        outlined bridged method (mbnn) of @objc SAUIButton.text.setter(v19, v21, v17, &selRef_setName_);
        [v2 addParameters:v17];
      }
    }

    goto LABEL_14;
  }

  __break(1u);
}

void _s18SiriLinkFlowPlugin31ProvisionalInstrumentationUtilsO04emitbceF033_80B45F24A3E78C34017763C32D0F479DLL5event15siriEnvironmentyx_0A9Utilities0aS0CtSo08SISchemaF7MessageCRbzlFZSo0abceB16ActionCompletionC_Tt1g5(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v55 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10 - 8);
  v14 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v55 - v15;
  v17 = [objc_allocWithZone(SiriLinkFlowProvisionalSiriLinkFlowClientEvent) init];
  if (v17)
  {
    v59 = v17;
    v18 = [objc_allocWithZone(FLOWSchemaFLOWEventMetadata) init];
    if (v18)
    {
      v56 = v3;
      v58 = v18;
      ObjectType = swift_getObjectType();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo023SiriLinkFlowProvisionalB16ActionCompletionCmMd, &_sSo023SiriLinkFlowProvisionalB16ActionCompletionCmMR);
      v55 = String.init<A>(describing:)();
      v57 = v19;
      SiriEnvironment.flowTask.getter();
      v20 = dispatch thunk of FlowTaskProvider.id.getter();
      v22 = v21;

      if (v22)
      {
        UUID.init(uuidString:)();
        outlined init with copy of UUID?(v16, v14);
        if (__swift_getEnumTagSinglePayload(v14, 1, v2) == 1)
        {
          outlined destroy of UUID?(v14);
          if (one-time initialization token for voiceCommands != -1)
          {
            swift_once();
          }

          v23 = type metadata accessor for Logger();
          __swift_project_value_buffer(v23, static Logger.voiceCommands);
          v24 = v57;

          v25 = Logger.logObject.getter();
          v26 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v25, v26))
          {
            v27 = swift_slowAlloc();
            ObjectType = swift_slowAlloc();
            *v27 = 136315394;
            v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v22, &ObjectType);

            *(v27 + 4) = v28;
            *(v27 + 12) = 2080;
            v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v55, v24, &ObjectType);

            *(v27 + 14) = v29;
            _os_log_impl(&dword_0, v25, v26, "#LINK SELF Log, current taskId: %s, is not a valid UUID String, cannot emit %s", v27, 0x16u);
            swift_arrayDestroy();
          }

          else
          {
          }
        }

        else
        {

          v40 = v56;
          (*(v56 + 32))(v9, v14, v2);
          type metadata accessor for NSError(0, &lazy cache variable for type metadata for SISchemaUUID, SISchemaUUID_ptr);
          (*(v40 + 16))(v7, v9, v2);
          v41 = SISchemaUUID.__allocating_init(nsuuid:)(v7);
          v42 = v58;
          [v58 setTaskId:v41];

          v43 = static ProvisionalInstrumentationUtils.createFlowId(siriEnvironment:)();
          [v42 setFlowId:v43];

          SiriEnvironment.currentRequest.getter();
          CurrentRequest.resultCandidateId.getter();
          v45 = v44;

          if (v45)
          {
            v46 = String._bridgeToObjectiveC()();
          }

          else
          {
            v46 = 0;
          }

          v47 = v57;
          [v42 setResultCandidateId:v46];

          [v59 setEventMetadata:v42];
          [v59 setLinkActionCompletion:a1];
          if (one-time initialization token for voiceCommands != -1)
          {
            swift_once();
          }

          v48 = type metadata accessor for Logger();
          __swift_project_value_buffer(v48, static Logger.voiceCommands);

          v49 = Logger.logObject.getter();
          v50 = static os_log_type_t.debug.getter();

          if (os_log_type_enabled(v49, v50))
          {
            v51 = swift_slowAlloc();
            v52 = swift_slowAlloc();
            ObjectType = v52;
            *v51 = 136315138;
            v53 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v55, v47, &ObjectType);

            *(v51 + 4) = v53;
            _os_log_impl(&dword_0, v49, v50, "#LINK Provisional SELF emitting %s", v51, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v52);
            v42 = v58;
          }

          else
          {
          }

          v54 = [objc_opt_self() sharedStream];
          [v54 emitMessage:v59];

          swift_unknownObjectRelease();
          (*(v56 + 8))(v9, v2);
        }

        outlined destroy of UUID?(v16);
      }

      else
      {
        if (one-time initialization token for voiceCommands != -1)
        {
          swift_once();
        }

        v31 = type metadata accessor for Logger();
        __swift_project_value_buffer(v31, static Logger.voiceCommands);
        v32 = v57;

        v33 = Logger.logObject.getter();
        v34 = static os_log_type_t.error.getter();

        v35 = os_log_type_enabled(v33, v34);
        v36 = v58;
        if (v35)
        {
          v37 = swift_slowAlloc();
          v38 = swift_slowAlloc();
          ObjectType = v38;
          *v37 = 136315138;
          v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v55, v32, &ObjectType);

          *(v37 + 4) = v39;
          _os_log_impl(&dword_0, v33, v34, "#LINK SELF Log, current taskId is nil, cannot emit %s", v37, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v38);
        }

        else
        {
        }
      }
    }

    else
    {
      v30 = v59;
    }
  }
}

void _s18SiriLinkFlowPlugin31ProvisionalInstrumentationUtilsO04emitbceF033_80B45F24A3E78C34017763C32D0F479DLL5event15siriEnvironmentyx_0A9Utilities0aS0CtSo08SISchemaF7MessageCRbzlFZSo0abceB16ActionConversionC_Tt1g5(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v3 = OUTLINED_FUNCTION_7_1(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v3);
  OUTLINED_FUNCTION_50_0();
  v10 = v8 - v9;
  __chkstk_darwin(v11);
  v13 = &v68 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  OUTLINED_FUNCTION_50_0();
  v18 = v16 - v17;
  __chkstk_darwin(v19);
  v21 = &v68 - v20;
  v22 = [objc_allocWithZone(SiriLinkFlowProvisionalSiriLinkFlowClientEvent) init];
  if (!v22)
  {
LABEL_32:
    OUTLINED_FUNCTION_42();
    return;
  }

  v72 = v22;
  v23 = [objc_allocWithZone(FLOWSchemaFLOWEventMetadata) init];
  if (v23)
  {
    v69 = v5;
    v71 = v23;
    ObjectType = swift_getObjectType();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo023SiriLinkFlowProvisionalB16ActionConversionCmMd, &_sSo023SiriLinkFlowProvisionalB16ActionConversionCmMR);
    v68 = String.init<A>(describing:)();
    v70 = v24;
    SiriEnvironment.flowTask.getter();
    v25 = dispatch thunk of FlowTaskProvider.id.getter();
    v27 = v26;

    if (v27)
    {
      UUID.init(uuidString:)();
      outlined init with copy of UUID?(v21, v18);
      if (__swift_getEnumTagSinglePayload(v18, 1, v2) == 1)
      {
        outlined destroy of UUID?(v18);
        if (one-time initialization token for voiceCommands != -1)
        {
          OUTLINED_FUNCTION_0();
        }

        v28 = type metadata accessor for Logger();
        __swift_project_value_buffer(v28, static Logger.voiceCommands);
        v29 = v70;

        v30 = Logger.logObject.getter();
        v31 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v30, v31))
        {
          v32 = swift_slowAlloc();
          ObjectType = swift_slowAlloc();
          *v32 = 136315394;
          v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v27, &ObjectType);

          *(v32 + 4) = v33;
          *(v32 + 12) = 2080;
          v34 = OUTLINED_FUNCTION_5_11();
          v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v29, v35);

          *(v32 + 14) = v36;
          _os_log_impl(&dword_0, v30, v31, "#LINK SELF Log, current taskId: %s, is not a valid UUID String, cannot emit %s", v32, 0x16u);
          swift_arrayDestroy();
          OUTLINED_FUNCTION_15_0();
          OUTLINED_FUNCTION_15_0();
        }

        else
        {
        }
      }

      else
      {

        v50 = v69;
        (*(v69 + 32))(v13, v18, v2);
        type metadata accessor for NSError(0, &lazy cache variable for type metadata for SISchemaUUID, SISchemaUUID_ptr);
        (*(v50 + 16))(v10, v13, v2);
        v51 = SISchemaUUID.__allocating_init(nsuuid:)(v10);
        v52 = v71;
        [v71 setTaskId:v51];

        v53 = static ProvisionalInstrumentationUtils.createFlowId(siriEnvironment:)();
        [v52 setFlowId:v53];

        SiriEnvironment.currentRequest.getter();
        CurrentRequest.resultCandidateId.getter();
        v55 = v54;

        if (v55)
        {
          v56 = String._bridgeToObjectiveC()();
        }

        else
        {
          v56 = 0;
        }

        [v52 setResultCandidateId:v56];

        [v72 setEventMetadata:v52];
        objc_opt_self();
        v57 = swift_dynamicCastObjCClass();
        v58 = v70;
        if (v57)
        {
          [v72 setLinkActionCompletion:v57];
        }

        else
        {
          [v72 setLinkActionConversion:a1];
        }

        if (one-time initialization token for voiceCommands != -1)
        {
          OUTLINED_FUNCTION_0();
        }

        v59 = type metadata accessor for Logger();
        __swift_project_value_buffer(v59, static Logger.voiceCommands);

        v60 = Logger.logObject.getter();
        v61 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v60, v61))
        {
          v62 = swift_slowAlloc();
          v63 = swift_slowAlloc();
          ObjectType = v63;
          *v62 = 136315138;
          v64 = OUTLINED_FUNCTION_5_11();
          v66 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v64, v58, v65);

          *(v62 + 4) = v66;
          _os_log_impl(&dword_0, v60, v61, "#LINK Provisional SELF emitting %s", v62, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v63);
          v52 = v71;
          OUTLINED_FUNCTION_15_0();
          OUTLINED_FUNCTION_15_0();
        }

        else
        {
        }

        v67 = [objc_opt_self() sharedStream];
        [v67 emitMessage:v72];

        swift_unknownObjectRelease();
        (*(v69 + 8))(v13, v2);
      }

      outlined destroy of UUID?(v21);
    }

    else
    {
      if (one-time initialization token for voiceCommands != -1)
      {
        OUTLINED_FUNCTION_0();
      }

      v39 = type metadata accessor for Logger();
      __swift_project_value_buffer(v39, static Logger.voiceCommands);
      v40 = v70;

      v41 = Logger.logObject.getter();
      v42 = static os_log_type_t.error.getter();

      v43 = os_log_type_enabled(v41, v42);
      v44 = v71;
      if (v43)
      {
        v45 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        ObjectType = v46;
        *v45 = 136315138;
        v47 = OUTLINED_FUNCTION_5_11();
        v49 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v47, v40, v48);

        *(v45 + 4) = v49;
        _os_log_impl(&dword_0, v41, v42, "#LINK SELF Log, current taskId is nil, cannot emit %s", v45, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v46);
        OUTLINED_FUNCTION_15_0();
        OUTLINED_FUNCTION_15_0();
      }

      else
      {
      }
    }

    goto LABEL_32;
  }

  OUTLINED_FUNCTION_42();
}

id static ProvisionalInstrumentationUtils.createFlowId(siriEnvironment:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v31 - v2;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = &v31 - v11;
  __chkstk_darwin(v10);
  v14 = &v31 - v13;
  static ProvisionalInstrumentationUtils.createFlowUUID(siriEnvironment:)(v3);
  if (__swift_getEnumTagSinglePayload(v3, 1, v4) == 1)
  {
    outlined destroy of UUID?(v3);
    if (one-time initialization token for voiceCommands != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    __swift_project_value_buffer(v15, static Logger.voiceCommands);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_0, v16, v17, "#LINK SELF Log, invalid executionRequestId string, cannot derive flowId form it", v18, 2u);
    }

    return 0;
  }

  else
  {
    (*(v5 + 32))(v14, v3, v4);
    if (one-time initialization token for voiceCommands != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    __swift_project_value_buffer(v20, static Logger.voiceCommands);
    v35 = *(v5 + 16);
    v35(v12, v14, v4);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v31 = v23;
      v33 = swift_slowAlloc();
      v36 = v33;
      *v23 = 136315138;
      v32 = v22;
      v24 = UUID.uuidString.getter();
      v34 = v9;
      v26 = v25;
      v27 = *(v5 + 8);
      v27(v12, v4);
      v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v26, &v36);
      v9 = v34;

      v29 = v31;
      *(v31 + 1) = v28;
      _os_log_impl(&dword_0, v21, v32, "#LINK SELF Log, created flowId: %s", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v33);
    }

    else
    {

      v27 = *(v5 + 8);
      v27(v12, v4);
    }

    type metadata accessor for NSError(0, &lazy cache variable for type metadata for SISchemaUUID, SISchemaUUID_ptr);
    v35(v9, v14, v4);
    v19 = SISchemaUUID.__allocating_init(nsuuid:)(v9);
    v27(v14, v4);
  }

  return v19;
}

void static ProvisionalInstrumentationUtils.createFlowUUID(siriEnvironment:)(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v56 - v4;
  v6 = type metadata accessor for UUID();
  v7 = OUTLINED_FUNCTION_7_1(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  __chkstk_darwin(v7);
  OUTLINED_FUNCTION_50_0();
  v14 = v12 - v13;
  v16 = __chkstk_darwin(v15);
  v18 = &v56 - v17;
  __chkstk_darwin(v16);
  v20 = &v56 - v19;
  SiriEnvironment.currentRequest.getter();
  CurrentRequest.executionRequestId.getter();
  v22 = v21;

  if (v22)
  {
    UUID.init(uuidString:)();

    if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
    {
      outlined destroy of UUID?(v5);
      if (one-time initialization token for voiceCommands != -1)
      {
        OUTLINED_FUNCTION_0();
      }

      v23 = type metadata accessor for Logger();
      __swift_project_value_buffer(v23, static Logger.voiceCommands);
      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v24, v25))
      {
        *swift_slowAlloc() = 0;
        OUTLINED_FUNCTION_6_12(&dword_0, v26, v27, "#LINK SELF Log, invalid executionRequestId string, cannot derive flowId form it");
        OUTLINED_FUNCTION_15_0();
      }

      v28 = a1;
      v29 = 1;
    }

    else
    {
      v59 = *(v9 + 32);
      v59(v20, v5, v6);
      v40 = objc_opt_self();
      isa = UUID._bridgeToObjectiveC()().super.isa;
      v42 = [v40 derivedIdentifierForComponent:3 fromSourceIdentifier:isa];

      static UUID._unconditionallyBridgeFromObjectiveC(_:)();
      if (one-time initialization token for voiceCommands != -1)
      {
        OUTLINED_FUNCTION_0();
      }

      v60 = a1;
      v43 = type metadata accessor for Logger();
      __swift_project_value_buffer(v43, static Logger.voiceCommands);
      (*(v9 + 16))(v14, v18, v6);
      v44 = Logger.logObject.getter();
      v45 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        v58 = v9 + 32;
        v47 = v46;
        v57 = swift_slowAlloc();
        v61 = v57;
        *v47 = 136315138;
        v56 = UUID.uuidString.getter();
        v49 = v48;
        v50 = *(v9 + 8);
        v50(v14, v6);
        v51 = OUTLINED_FUNCTION_5_11();
        v53 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v51, v49, v52);

        *(v47 + 4) = v53;
        _os_log_impl(&dword_0, v44, v45, "#LINK SELF Log, created flowId: %s", v47, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v57);
        OUTLINED_FUNCTION_15_0();
        OUTLINED_FUNCTION_15_0();

        v50(v20, v6);
      }

      else
      {

        v54 = *(v9 + 8);
        v54(v14, v6);
        v54(v20, v6);
      }

      v55 = v60;
      v59(v60, v18, v6);
      v28 = v55;
      v29 = 0;
    }

    __swift_storeEnumTagSinglePayload(v28, v29, 1, v6);
    OUTLINED_FUNCTION_42();
  }

  else
  {
    if (one-time initialization token for voiceCommands != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v30 = type metadata accessor for Logger();
    __swift_project_value_buffer(v30, static Logger.voiceCommands);
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v31, v32))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_6_12(&dword_0, v33, v34, "#LINK SELF Log, invalid executionRequestId, cannot derive flowId form it");
      OUTLINED_FUNCTION_15_0();
    }

    OUTLINED_FUNCTION_42();

    __swift_storeEnumTagSinglePayload(v35, v36, v37, v38);
  }
}

void static ProvisionalInstrumentationUtils.emitActionCompleteSuccessProvisionalInstrumentation(targetBundle:action:siriEnvironment:)(uint64_t a1, uint64_t a2)
{
  v4 = [objc_allocWithZone(SiriLinkFlowProvisionalLinkActionCompletion) init];
  if (v4)
  {
    v8 = v4;
    LNAction.asSiriLinkFlowProvisionalLinkAction()(v5);
    v7 = v6;
    [v8 setAction:v6];

    outlined bridged method (mbgnn) of @objc SiriLinkFlowProvisionalLinkActionCompletion.targetBundle.setter(a1, a2, v8);
    [v8 setIsSuccess:1];
    _s18SiriLinkFlowPlugin31ProvisionalInstrumentationUtilsO04emitbceF033_80B45F24A3E78C34017763C32D0F479DLL5event15siriEnvironmentyx_0A9Utilities0aS0CtSo08SISchemaF7MessageCRbzlFZSo0abceB16ActionCompletionC_Tt1g5(v8);
  }
}

void static ProvisionalInstrumentationUtils.emitActionCompleteErrorInstrumentation(targetBundle:action:errorDescription:siriEnvironment:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = [objc_allocWithZone(SiriLinkFlowProvisionalLinkActionCompletion) init];
  if (v9)
  {
    v13 = v9;
    LNAction.asSiriLinkFlowProvisionalLinkAction()(v10);
    v12 = v11;
    [v13 setAction:v11];

    outlined bridged method (mbgnn) of @objc SiriLinkFlowProvisionalLinkActionCompletion.targetBundle.setter(a1, a2, v13);
    [v13 setIsSuccess:0];
    outlined bridged method (mbgnn) of @objc SiriLinkFlowProvisionalLinkActionCompletion.errorDescription.setter(a4, a5, v13);
    _s18SiriLinkFlowPlugin31ProvisionalInstrumentationUtilsO04emitbceF033_80B45F24A3E78C34017763C32D0F479DLL5event15siriEnvironmentyx_0A9Utilities0aS0CtSo08SISchemaF7MessageCRbzlFZSo0abceB16ActionCompletionC_Tt1g5(v13);
  }
}

void static ProvisionalInstrumentationUtils.emitActionConversionInstrumentation(isSuccess:siriEnvironment:)(char a1)
{
  v2 = [objc_allocWithZone(SiriLinkFlowProvisionalLinkActionConversion) init];
  if (v2)
  {
    v3 = v2;
    [v2 setIsSuccess:a1 & 1];
    _s18SiriLinkFlowPlugin31ProvisionalInstrumentationUtilsO04emitbceF033_80B45F24A3E78C34017763C32D0F479DLL5event15siriEnvironmentyx_0A9Utilities0aS0CtSo08SISchemaF7MessageCRbzlFZSo0abceB16ActionConversionC_Tt1g5(v3);
  }
}

uint64_t outlined destroy of UUID?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void outlined bridged method (mbgnn) of @objc SiriLinkFlowProvisionalLinkActionCompletion.targetBundle.setter(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = String._bridgeToObjectiveC()();
  [a3 setTargetBundle:v4];
}

void outlined bridged method (mbgnn) of @objc SiriLinkFlowProvisionalLinkActionCompletion.errorDescription.setter(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = String._bridgeToObjectiveC()();
  [a3 setErrorDescription:v4];
}

void OUTLINED_FUNCTION_6_12(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v6, a4, v4, 2u);
}

uint64_t static SmartPromptConfirmationUtils.getSimpleConfirmation(parse:options:)(uint64_t a1, unint64_t a2)
{
  v5 = static VoiceCommandConfirmationUtils.getVoiceCommandConfirmation(parse:)(a1);
  if ((v5 - 1) >= 2)
  {
    v22 = 0;
    if (v5)
    {
      return v22;
    }

    OUTLINED_FUNCTION_8_16();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo29WFSmartPromptButtonIdentifieraGMd, &_ss23_ContiguousArrayStorageCySo29WFSmartPromptButtonIdentifieraGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_216840;
    v24 = WFSmartPromptButtonIdentifierAllowOnce;
    v25 = WFSmartPromptButtonIdentifierAllowAlways;
    *(inited + 32) = WFSmartPromptButtonIdentifierAllowOnce;
    *(inited + 40) = v25;
    v45 = inited;
    v50 = _swiftEmptyArrayStorage;
    v26 = specialized Array.count.getter(a2);
    v27 = a2 & 0xC000000000000001;
    v28 = a2 & 0xFFFFFFFFFFFFFF8;
    v29 = v24;
    v30 = v25;
    OUTLINED_FUNCTION_12_11();
    while (v26 != v3)
    {
      if (v27)
      {
        v31 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v3 >= *(v28 + 16))
        {
          goto LABEL_55;
        }

        v31 = *(a2 + 8 * v3 + 32);
      }

      v32 = v31;
      if (__OFADD__(v3, 1))
      {
LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
LABEL_56:
        v40 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        goto LABEL_49;
      }

      v33 = String._bridgeToObjectiveC()();
      v34 = [v32 valueForKey:v33];

      if (v34)
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {
        v46 = 0u;
        v47 = 0u;
      }

      v48 = v46;
      v49 = v47;
      if (*(&v47 + 1))
      {
        type metadata accessor for WFSmartPromptButtonIdentifier(0);
        if (swift_dynamicCast())
        {
          v26 = v28;
          v28 = v27;
          v27 = v2;
          OUTLINED_FUNCTION_16_14();
          __chkstk_darwin(v35);
          OUTLINED_FUNCTION_6_13();
          v37 = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, v36, v45);

          if (v37)
          {
            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            v38 = v50[2];
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            OUTLINED_FUNCTION_9_12();
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            specialized ContiguousArray._endMutation()();
          }

          else
          {
          }

          OUTLINED_FUNCTION_13_11();
        }

        else
        {
        }
      }

      else
      {

        outlined destroy of String?(&v48, &_sypSgMd, &_sypSgMR);
      }

      ++v3;
    }

    swift_setDeallocating();
    specialized _ContiguousArrayStorage.__deallocating_deinit();
    v39 = v50;
    if (specialized Array.count.getter(v50) == 1 && specialized Array.count.getter(v39))
    {
      OUTLINED_FUNCTION_17_12();
      if (!v45)
      {
        goto LABEL_48;
      }

      goto LABEL_56;
    }

LABEL_50:

    return 0;
  }

  OUTLINED_FUNCTION_8_16();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo29WFSmartPromptButtonIdentifieraGMd, &_ss23_ContiguousArrayStorageCySo29WFSmartPromptButtonIdentifieraGMR);
  v6 = swift_initStackObject();
  *(v6 + 16) = xmmword_216840;
  v7 = WFSmartPromptButtonIdentifierDeny;
  v8 = WFSmartPromptButtonIdentifierDontDelete;
  *(v6 + 32) = WFSmartPromptButtonIdentifierDeny;
  *(v6 + 40) = v8;
  v44 = v6;
  v50 = _swiftEmptyArrayStorage;
  v9 = specialized Array.count.getter(a2);
  v10 = a2 & 0xC000000000000001;
  v11 = a2 & 0xFFFFFFFFFFFFFF8;
  v12 = v7;
  v13 = v8;
  OUTLINED_FUNCTION_12_11();
  while (v9 != v3)
  {
    if (v10)
    {
      v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v3 >= *(v11 + 16))
      {
        goto LABEL_53;
      }

      v14 = *(a2 + 8 * v3 + 32);
    }

    v15 = v14;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
LABEL_53:
      __break(1u);
      goto LABEL_54;
    }

    v16 = String._bridgeToObjectiveC()();
    v17 = [v15 valueForKey:v16];

    if (v17)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v46 = 0u;
      v47 = 0u;
    }

    v48 = v46;
    v49 = v47;
    if (*(&v47 + 1))
    {
      type metadata accessor for WFSmartPromptButtonIdentifier(0);
      if (swift_dynamicCast())
      {
        v9 = v11;
        v11 = v10;
        v10 = a2;
        OUTLINED_FUNCTION_16_14();
        __chkstk_darwin(v18);
        OUTLINED_FUNCTION_6_13();
        v20 = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), v19, v44);

        if (v20)
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          v21 = v50[2];
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          OUTLINED_FUNCTION_9_12();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
        }

        else
        {
        }

        OUTLINED_FUNCTION_13_11();
      }

      else
      {
      }
    }

    else
    {

      outlined destroy of String?(&v48, &_sypSgMd, &_sypSgMR);
    }

    ++v3;
  }

  swift_setDeallocating();
  specialized _ContiguousArrayStorage.__deallocating_deinit();
  v39 = v50;
  if (specialized Array.count.getter(v50) != 1 || !specialized Array.count.getter(v39))
  {
    goto LABEL_50;
  }

  OUTLINED_FUNCTION_17_12();
  if (v44)
  {
    goto LABEL_56;
  }

LABEL_48:
  v40 = v39[4];
LABEL_49:
  v41 = v40;

  v42 = [v41 displayString];
  v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v22;
}

void static SmartPromptConfirmationUtils.getConfirmationFromUSO(usoParse:options:)(_DWORD *a1, uint64_t *a2)
{
  v114 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology41UsoEntity_common_VoiceCommandConfirmationC13DefinedValuesOSgMd, _s12SiriOntology41UsoEntity_common_VoiceCommandConfirmationC13DefinedValuesOSgMR);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  OUTLINED_FUNCTION_3_16();
  v101 = v5;
  OUTLINED_FUNCTION_25_4();
  __chkstk_darwin(v6);
  v111 = &v98 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v109 = &v98 - v10;
  type metadata accessor for Siri_Nlu_External_UserParse();
  OUTLINED_FUNCTION_13_1();
  v106 = v12;
  v107 = v11;
  v14 = *(v13 + 64);
  __chkstk_darwin(v11);
  v105 = &v98 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  OUTLINED_FUNCTION_13_1();
  v17 = v16;
  v19 = *(v18 + 64);
  __chkstk_darwin(v20);
  OUTLINED_FUNCTION_3_16();
  v100 = v21;
  OUTLINED_FUNCTION_25_4();
  __chkstk_darwin(v22);
  v110 = &v98 - v23;
  OUTLINED_FUNCTION_25_4();
  __chkstk_darwin(v24);
  v26 = &v98 - v25;
  v27 = type metadata accessor for USOParse();
  OUTLINED_FUNCTION_13_1();
  v29 = v28;
  v31 = *(v30 + 64);
  __chkstk_darwin(v32);
  OUTLINED_FUNCTION_3_16();
  v102 = v33;
  OUTLINED_FUNCTION_25_4();
  __chkstk_darwin(v34);
  v36 = &v98 - v35;
  if (one-time initialization token for voiceCommands != -1)
  {
    swift_once();
  }

  v104 = v17;
  v37 = type metadata accessor for Logger();
  v38 = __swift_project_value_buffer(v37, static Logger.voiceCommands);
  v39 = *(v29 + 16);
  v108 = a1;
  v39(v36, a1, v27);
  v103 = v38;
  v40 = Logger.logObject.getter();
  v41 = static os_log_type_t.debug.getter();
  v42 = os_log_type_enabled(v40, v41);
  v115 = v26;
  if (v42)
  {
    v43 = swift_slowAlloc();
    v99 = swift_slowAlloc();
    v116 = v99;
    *v43 = 136315138;
    v39(v102, v36, v27);
    v44 = String.init<A>(describing:)();
    v46 = v45;
    v47 = *(v29 + 8);
    v48 = OUTLINED_FUNCTION_9_12();
    v49(v48);
    v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v44, v46, &v116);

    *(v43 + 4) = v36;
    _os_log_impl(&dword_0, v40, v41, "#SmartPromptConfirmationUtils got uso parse: %s", v43, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v99);
    v26 = v115;
    OUTLINED_FUNCTION_15_0();
    OUTLINED_FUNCTION_15_0();
  }

  else
  {

    v50 = *(v29 + 8);
    v51 = OUTLINED_FUNCTION_9_12();
    v52(v51);
  }

  v53 = v105;
  USOParse.userParse.getter();
  v54 = Siri_Nlu_External_UserParse.userDialogActs.getter();
  (*(v106 + 8))(v53, v107);
  v55 = v109;
  specialized Collection.first.getter(v54, v109);

  v56 = v112;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v55, 1, v112);
  v58 = v113;
  v59 = v110;
  v60 = v111;
  if (EnumTagSinglePayload == 1)
  {
    outlined destroy of String?(v55, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
    v61 = Logger.logObject.getter();
    v62 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      *v63 = 0;
      _os_log_impl(&dword_0, v61, v62, "#SmartPromptConfirmationUtils could not get UDA from USO parse", v63, 2u);
      OUTLINED_FUNCTION_15_0();
    }

    return;
  }

  v64 = v104;
  (*(v104 + 32))(v26, v55, v56);
  Siri_Nlu_External_UserDialogAct.smartPromptConfirmationValue()(v60);
  if (v58)
  {
    (*(v64 + 8))(v26, v56);
    return;
  }

  v65 = type metadata accessor for UsoEntity_common_VoiceCommandConfirmation.DefinedValues();
  if (__swift_getEnumTagSinglePayload(v60, 1, v65) != 1)
  {
    v77 = v101;
    outlined init with copy of UsoEntity_common_VoiceCommandConfirmation.DefinedValues?(v60, v101);
    OUTLINED_FUNCTION_13_1();
    v79 = v78;
    v81 = (*(v80 + 88))(v77, v65);
    v113 = 0;
    if (v81 == enum case for UsoEntity_common_VoiceCommandConfirmation.DefinedValues.common_VoiceCommandConfirmation_DeleteOnce(_:))
    {
      OUTLINED_FUNCTION_20_9();
      OUTLINED_FUNCTION_0_17();
      while (v65 != v79)
      {
        OUTLINED_FUNCTION_14_10();
        if (v82)
        {
          goto LABEL_81;
        }

        v83 = OUTLINED_FUNCTION_4_21();
        if (__OFADD__(v79, 1))
        {
          __break(1u);
LABEL_81:
          __break(1u);
          goto LABEL_82;
        }

        v84 = v83;
        outlined bridged method (pb) of @objc INObject.identifier.getter(v84);
        OUTLINED_FUNCTION_5_12();
        v26 = v85;
        if (v41)
        {
          OUTLINED_FUNCTION_11_10();
          v86 = v86 && v41 == v26;
          if (v86)
          {
            goto LABEL_77;
          }

          OUTLINED_FUNCTION_1_24();
          OUTLINED_FUNCTION_18_12();

          if (v36)
          {
            goto LABEL_78;
          }
        }

        else
        {
        }

        OUTLINED_FUNCTION_10_16();
      }
    }

    else if (v81 == enum case for UsoEntity_common_VoiceCommandConfirmation.DefinedValues.common_VoiceCommandConfirmation_DontDelete(_:))
    {
      OUTLINED_FUNCTION_20_9();
      OUTLINED_FUNCTION_0_17();
      while (v65 != v79)
      {
        OUTLINED_FUNCTION_14_10();
        if (v82)
        {
          goto LABEL_83;
        }

        v88 = OUTLINED_FUNCTION_4_21();
        if (__OFADD__(v79, 1))
        {
LABEL_82:
          __break(1u);
LABEL_83:
          __break(1u);
          goto LABEL_84;
        }

        v84 = v88;
        outlined bridged method (pb) of @objc INObject.identifier.getter(v84);
        OUTLINED_FUNCTION_5_12();
        v26 = v89;
        if (v41)
        {
          OUTLINED_FUNCTION_11_10();
          if (v86 && v41 == v26)
          {
            goto LABEL_77;
          }

          OUTLINED_FUNCTION_1_24();
          OUTLINED_FUNCTION_18_12();

          if (v36)
          {
            goto LABEL_78;
          }
        }

        else
        {
        }

        OUTLINED_FUNCTION_10_16();
      }
    }

    else if (v81 == enum case for UsoEntity_common_VoiceCommandConfirmation.DefinedValues.common_VoiceCommandConfirmation_ShowAll(_:))
    {
      OUTLINED_FUNCTION_20_9();
      OUTLINED_FUNCTION_0_17();
      while (v65 != v79)
      {
        OUTLINED_FUNCTION_14_10();
        if (v82)
        {
          goto LABEL_85;
        }

        v91 = OUTLINED_FUNCTION_4_21();
        if (__OFADD__(v79, 1))
        {
LABEL_84:
          __break(1u);
LABEL_85:
          __break(1u);
          goto LABEL_86;
        }

        v84 = v91;
        outlined bridged method (pb) of @objc INObject.identifier.getter(v84);
        OUTLINED_FUNCTION_5_12();
        v26 = v92;
        if (v41)
        {
          OUTLINED_FUNCTION_11_10();
          if (v86 && v41 == v26)
          {
            goto LABEL_77;
          }

          OUTLINED_FUNCTION_1_24();
          OUTLINED_FUNCTION_18_12();

          if (v36)
          {
            goto LABEL_78;
          }
        }

        else
        {
        }

        OUTLINED_FUNCTION_10_16();
      }
    }

    else
    {
      if (v81 != enum case for UsoEntity_common_VoiceCommandConfirmation.DefinedValues.common_VoiceCommandConfirmation_DeleteAlways(_:))
      {
        (*(v79 + 8))(v101, v65);
        v59 = v110;
        goto LABEL_13;
      }

      OUTLINED_FUNCTION_20_9();
      OUTLINED_FUNCTION_0_17();
      while (v65 != v79)
      {
        OUTLINED_FUNCTION_14_10();
        if (v82)
        {
          goto LABEL_87;
        }

        v94 = OUTLINED_FUNCTION_4_21();
        if (__OFADD__(v79, 1))
        {
LABEL_86:
          __break(1u);
LABEL_87:
          __break(1u);
          return;
        }

        v84 = v94;
        outlined bridged method (pb) of @objc INObject.identifier.getter(v84);
        OUTLINED_FUNCTION_5_12();
        v26 = v95;
        if (v41)
        {
          OUTLINED_FUNCTION_11_10();
          if (v86 && v41 == v26)
          {
LABEL_77:

LABEL_78:
            v97 = [v84 displayString];

            static String._unconditionallyBridgeFromObjectiveC(_:)();
            v26 = v115;
            break;
          }

          OUTLINED_FUNCTION_1_24();
          OUTLINED_FUNCTION_18_12();

          if (v36)
          {
            goto LABEL_78;
          }
        }

        else
        {
        }

        OUTLINED_FUNCTION_10_16();
      }
    }

    (*(v104 + 8))(v26, v112);
    outlined destroy of String?(v111, &_s12SiriOntology41UsoEntity_common_VoiceCommandConfirmationC13DefinedValuesOSgMd, _s12SiriOntology41UsoEntity_common_VoiceCommandConfirmationC13DefinedValuesOSgMR);
    return;
  }

LABEL_13:
  v66 = v104;
  v67 = *(v104 + 16);
  v67(v59, v26, v56);
  v68 = Logger.logObject.getter();
  v69 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v68, v69))
  {
    v70 = swift_slowAlloc();
    v108 = v70;
    v114 = swift_slowAlloc();
    v116 = v114;
    *v70 = 136315138;
    LODWORD(v109) = v69;
    v71 = v112;
    v67(v100, v59, v112);
    v72 = String.init<A>(describing:)();
    v74 = v73;
    v110 = *(v66 + 8);
    (v110)(v59, v71);
    v75 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v72, v74, &v116);

    v76 = v108;
    *(v108 + 1) = v75;
    _os_log_impl(&dword_0, v68, v109, "#SmartPromptConfirmationUtils uda has unexpected value %s", v76, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v114);
    OUTLINED_FUNCTION_15_0();
    OUTLINED_FUNCTION_15_0();

    (v110)(v115, v71);
  }

  else
  {

    v87 = *(v66 + 8);
    v87(v59, v56);
    v87(v115, v56);
  }

  outlined destroy of String?(v60, &_s12SiriOntology41UsoEntity_common_VoiceCommandConfirmationC13DefinedValuesOSgMd, _s12SiriOntology41UsoEntity_common_VoiceCommandConfirmationC13DefinedValuesOSgMR);
}

uint64_t specialized _ContiguousArrayStorage.__deallocating_deinit()
{
  v1 = *(v0 + 16);
  swift_arrayDestroy();

  return swift_deallocClassInstance();
}

{
  v1 = *(v0 + 16);
  type metadata accessor for WFSmartPromptButtonIdentifier(0);
  swift_arrayDestroy();

  return swift_deallocClassInstance();
}

uint64_t specialized closure #1 in Sequence<>.contains(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

uint64_t specialized closure #1 in Sequence<>.contains(_:)()
{
  type metadata accessor for LNSystemProtocol();
  return static NSObject.== infix(_:_:)() & 1;
}

{
  v0 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = v1;
  if (v0 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v5 & 1;
}

uint64_t outlined bridged method (pb) of @objc INObject.identifier.getter(void *a1)
{
  v1 = [a1 identifier];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t specialized closure #1 in Sequence<>.contains(_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return specialized closure #1 in Sequence<>.contains(_:)() & 1;
}

{
  v2 = *a1;
  v3 = *a2;
  return specialized closure #1 in Sequence<>.contains(_:)() & 1;
}

{
  return specialized closure #1 in Sequence<>.contains(_:)(*a1, a1[1], *a2, a2[1]) & 1;
}

uint64_t outlined init with copy of UsoEntity_common_VoiceCommandConfirmation.DefinedValues?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology41UsoEntity_common_VoiceCommandConfirmationC13DefinedValuesOSgMd, _s12SiriOntology41UsoEntity_common_VoiceCommandConfirmationC13DefinedValuesOSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_1_24()
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

id OUTLINED_FUNCTION_4_21()
{
  v3 = *(*(v1 - 96) + 8 * v0 + 32);

  return v3;
}

uint64_t OUTLINED_FUNCTION_5_12()
{

  return static String._unconditionallyBridgeFromObjectiveC(_:)();
}

uint64_t OUTLINED_FUNCTION_17_12()
{

  return specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v0 & 0xC000000000000001) == 0, v0);
}

uint64_t OUTLINED_FUNCTION_18_12()
{
}

uint64_t OUTLINED_FUNCTION_19_6()
{
  v2 = *(v0 - 96);

  return specialized _ArrayBuffer._getElementSlowPath(_:)();
}

uint64_t OUTLINED_FUNCTION_20_9()
{
  v2 = *(v0 - 96);

  return specialized Array.count.getter(v2);
}

Swift::Bool __swiftcall INIntent.requiresDeviceToBeUnlocked()()
{
  if ([v0 _isUserConfirmationRequired])
  {
    v1 = [v0 typeName];
    v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v4 = v3;

    v13[0] = v2;
    v13[1] = v4;
    __chkstk_darwin(v5);
    v12[2] = v13;
    LOBYTE(v1) = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), v12, &outlined read-only object #0 of one-time initialization function for parityIntentsList);

    v6 = v1 ^ 1;
    return v6 & 1;
  }

  v7 = INIntent.category()();
  v8 = v7._countAndFlagsBits == 0x59524F4745544143 && v7._object == 0xEE00524544524F5FLL;
  if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || (v7._countAndFlagsBits == 0xD000000000000011 ? (v9 = 0x8000000000231C10 == v7._object) : (v9 = 0), v9))
  {

    goto LABEL_17;
  }

  v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v10)
  {
LABEL_17:
    v6 = 1;
    return v6 & 1;
  }

  return INIntent.isRestricted()();
}

Swift::String __swiftcall INIntent.category()()
{
  v1 = [v0 _metadata];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 intentCategory];

    switch(v3)
    {
      case 1:
        v4 = @"CATEGORY_INFORMATION";
        goto LABEL_25;
      case 2:
        v4 = @"CATEGORY_PLAY_AUDIO";
        goto LABEL_25;
      case 3:
        v4 = @"CATEGORY_PLAY_VIDEO";
        goto LABEL_25;
      case 4:
        v4 = @"CATEGORY_ORDER";
        goto LABEL_25;
      case 5:
        v4 = @"CATEGORY_NAVIGATION";
        goto LABEL_25;
      case 6:
        v4 = @"CATEGORY_START";
        goto LABEL_25;
      case 7:
        v4 = @"CATEGORY_SHARE";
        goto LABEL_25;
      case 8:
        v4 = @"CATEGORY_CREATE";
        goto LABEL_25;
      case 9:
        v4 = @"CATEGORY_SEARCH";
        goto LABEL_25;
      case 11:
        v4 = @"CATEGORY_TOGGLE";
        goto LABEL_25;
      case 12:
        v4 = @"CATEGORY_DOWNLOAD";
        goto LABEL_25;
      case 13:
        v4 = @"CATEGORY_LOG";
        goto LABEL_25;
      case 14:
        v4 = @"CATEGORY_CHECK_IN";
        goto LABEL_25;
      case 15:
        v4 = @"CATEGORY_WORKFLOW";
        goto LABEL_25;
      case 16:
        v4 = @"CATEGORY_REQUEST";
        goto LABEL_25;
      case 17:
        v4 = @"CATEGORY_SET";
        goto LABEL_25;
      case 18:
        v4 = @"CATEGORY_CALL_AUDIO";
        goto LABEL_25;
      case 19:
        v4 = @"CATEGORY_CALL_VIDEO";
        goto LABEL_25;
      case 20:
        v4 = @"CATEGORY_PLAY_SOUND";
        goto LABEL_25;
      case 21:
        v4 = @"CATEGORY_USER_ACTIVITY";
LABEL_25:
        v7 = v4;
        break;
      default:
        v4 = [NSString stringWithFormat:@"(unknown: %i)", v3];
        break;
    }

    v8 = v4;
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v9;
  }

  else
  {
    v5 = 0x8000000000231C30;
    v6 = 0xD000000000000014;
  }

  v10 = v6;
  v11 = v5;
  result._object = v11;
  result._countAndFlagsBits = v10;
  return result;
}

Swift::Bool __swiftcall INIntent.isRestricted()()
{
  v1 = v0;
  v2 = [v0 _codableDescription];
  v3 = [v2 schema];

  if (!v3 || (v4 = [v3 dictionaryRepresentationForIntent:v1], v3, !v4) || (v5 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)(), v4, !v5))
  {
    v22 = 0u;
    v23 = 0u;
    goto LABEL_25;
  }

  specialized Dictionary.subscript.getter(0x746E65746E494E49, 0xE900000000000073, v5, &v22);

  if (!*(&v23 + 1))
  {
LABEL_25:
    outlined destroy of Any?(&v22);
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySDySSypGGMd, &_sSaySDySSypGGMR);
  result = swift_dynamicCast();
  if (!result)
  {
    return 0;
  }

  v7 = 0;
  v8 = *(v20 + 16);
  while (1)
  {
    if (v8 == v7)
    {

      return 0;
    }

    if (v7 >= *(v20 + 16))
    {
      __break(1u);
      return result;
    }

    v9 = *(v20 + 8 * v7 + 32);
    v10 = *(v9 + 16);

    if (v10)
    {
      v11 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000011, 0x8000000000231C50);
      if ((v12 & 1) != 0 && (outlined init with copy of Any(*(v9 + 56) + 32 * v11, &v22), swift_dynamicCast()))
      {
        v13 = v20;
        v10 = v21;
      }

      else
      {
        v13 = 0;
        v10 = 0;
      }
    }

    else
    {
      v13 = 0;
    }

    v14 = [v1 _className];
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;

    if (!v10)
    {

      goto LABEL_23;
    }

    if (v13 == v15 && v10 == v17)
    {
      break;
    }

    v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v19)
    {
      goto LABEL_30;
    }

LABEL_23:

    ++v7;
  }

LABEL_30:

  specialized Dictionary.subscript.getter(0xD000000000000014, 0x8000000000231C70, v9, &v22);

  if (!*(&v23 + 1))
  {
    goto LABEL_25;
  }

  if (swift_dynamicCast())
  {
    return v20 > 0;
  }

  return 0;
}

Swift::String __swiftcall INIntent.verb()()
{
  v0 = INIntent.verb()(&selRef_categoryVerb);
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

Swift::Bool __swiftcall INIntent.shouldSupressIntentResponseDialog()()
{
  v1 = [v0 typeName];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  String.lowercased()();

  if ((INIntent.showsWhenRun.getter() & 1) != 0 && (String.lowercased()(), lazy protocol witness table accessor for type String and conformance String(), v2 = OUTLINED_FUNCTION_0_18(), , (v2 & 1) == 0))
  {
    String.lowercased()();
    v3 = OUTLINED_FUNCTION_0_18();
  }

  else
  {

    v3 = 1;
  }

  return v3 & 1;
}

uint64_t INIntent.showsWhenRun.getter()
{
  v1 = [v0 _metadata];
  if (!v1)
  {
    return 1;
  }

  v2 = v1;
  v3 = [v1 showsWhenRun];

  return v3;
}

uint64_t INIntent.verb()(SEL *a1)
{
  v3 = [v1 _metadata];
  if (!v3 || (result = outlined bridged method (ob) of @objc _INPBIntentMetadata.launchId.getter(v3, a1), !v5))
  {

    return 0;
  }

  return result;
}

uint64_t outlined bridged method (ob) of @objc _INPBIntentMetadata.launchId.getter(void *a1, SEL *a2)
{
  v3 = [a1 *a2];

  if (!v3)
  {
    return 0;
  }

  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v4;
}

uint64_t OUTLINED_FUNCTION_0_18()
{

  return StringProtocol.contains<A>(_:)();
}

uint64_t static LocaleUtils.siriLanguageCode()()
{
  v0 = [objc_opt_self() sharedPreferences];
  if (!v0 || (result = outlined bridged method (ob) of @objc INPreferences._cachedSiriLanguageCode.getter(v0, &selRef__cachedSiriLanguageCode), !v2))
  {

    return 28261;
  }

  return result;
}

uint64_t static LocaleUtils.getPreferredLocationFromIntent(intentName:preferredLanguageCode:)(uint64_t a1, unint64_t a2)
{
  v2 = static LocaleUtils.getBundle(intentName:)(a1, a2);
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  isa = [v2 localizations];
  if (!isa)
  {
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
    isa = Array._bridgeToObjectiveC()().super.isa;
  }

  v5 = objc_opt_self();
  v6 = Array._bridgeToObjectiveC()().super.isa;
  v7 = [v5 preferredLocalizationsFromArray:isa forPreferences:v6];

  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  return v8;
}

uint64_t static LocaleUtils.getLocale(preferredLocalizations:)(void *a1)
{
  v2 = [objc_opt_self() sharedPreferences];
  if (v2 && (outlined bridged method (ob) of @objc INPreferences._cachedSiriLanguageCode.getter(v2, &selRef__cachedSiriLanguageCode), v3))
  {
    if (!a1)
    {
      return OUTLINED_FUNCTION_22_4();
    }
  }

  else
  {

    if (!a1)
    {
      return OUTLINED_FUNCTION_22_4();
    }
  }

  if (a1[2])
  {
    v5 = a1[4];
    v4 = a1[5];
    swift_bridgeObjectRetain_n();
    specialized Collection.prefix(_:)(2);
    v6 = Substring.lowercased()();

    specialized Collection.prefix(_:)(2);
    v7 = Substring.lowercased()();

    if (v6._countAndFlagsBits != v7._countAndFlagsBits || v6._object != v7._object)
    {
      _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  return OUTLINED_FUNCTION_22_4();
}

uint64_t specialized Collection.prefix(_:)(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    String.index(_:offsetBy:limitedBy:)();
    OUTLINED_FUNCTION_7_13();
    String.subscript.getter();
    OUTLINED_FUNCTION_11_11();

    return OUTLINED_FUNCTION_12_12();
  }

  return result;
}

uint64_t specialized Collection.prefix(_:)(uint64_t a1, unint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    v12 = _CocoaArrayWrapper.subscript.getter();

    return v12;
  }

  v4 = specialized Array.count.getter(a2);
  v5 = specialized Array.index(_:offsetBy:limitedBy:)(0, a1, v4);
  if (v6)
  {
    v7 = v4;
  }

  else
  {
    v7 = v5;
  }

  if (v7 < 0)
  {
    goto LABEL_16;
  }

  specialized Array._checkIndex(_:)(0, a2);
  v8 = OUTLINED_FUNCTION_22_4();
  specialized Array._checkIndex(_:)(v8, v9);
  if ((a2 & 0xC000000000000001) != 0 && v7)
  {
    type metadata accessor for NSError(0, &lazy cache variable for type metadata for LNStaticDeferredLocalizedString, LNStaticDeferredLocalizedString_ptr);

    v10 = 0;
    do
    {
      v11 = v10 + 1;
      _ArrayBuffer._typeCheckSlowPath(_:)(v10);
      v10 = v11;
    }

    while (v7 != v11);
  }

  else
  {
  }

  if (a2 >> 62)
  {
    goto LABEL_17;
  }

  return a2 & 0xFFFFFFFFFFFFFF8;
}

uint64_t one-time initialization function for TargetNodesForType()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_SaySSGtGMd, &_ss23_ContiguousArrayStorageCySS_SaySSGtGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21B6F0;
  *(inited + 32) = 0xD000000000000010;
  *(inited + 40) = 0x800000000022E080;
  *(inited + 48) = &outlined read-only object #0 of one-time initialization function for TargetNodesForType;
  *(inited + 56) = 0xD000000000000011;
  *(inited + 64) = 0x8000000000231EE0;
  *(inited + 72) = &outlined read-only object #1 of one-time initialization function for TargetNodesForType;
  *(inited + 80) = 0xD000000000000010;
  *(inited + 88) = 0x8000000000231F00;
  *(inited + 96) = &outlined read-only object #2 of one-time initialization function for TargetNodesForType;
  *(inited + 104) = 0xD000000000000011;
  *(inited + 112) = 0x8000000000231F20;
  *(inited + 120) = &outlined read-only object #3 of one-time initialization function for TargetNodesForType;
  strcpy((inited + 128), "foundation.URL");
  *(inited + 143) = -18;
  *(inited + 144) = &outlined read-only object #4 of one-time initialization function for TargetNodesForType;
  *(inited + 152) = 0xD000000000000019;
  *(inited + 160) = 0x8000000000231F40;
  *(inited + 168) = &outlined read-only object #5 of one-time initialization function for TargetNodesForType;
  *(inited + 176) = 0xD000000000000017;
  *(inited + 184) = 0x8000000000231F60;
  *(inited + 192) = &outlined read-only object #6 of one-time initialization function for TargetNodesForType;
  *(inited + 200) = 0xD000000000000019;
  *(inited + 208) = 0x8000000000231F80;
  *(inited + 216) = &outlined read-only object #7 of one-time initialization function for TargetNodesForType;
  *(inited + 224) = 0xD000000000000013;
  *(inited + 232) = 0x8000000000231FA0;
  *(inited + 240) = &outlined read-only object #8 of one-time initialization function for TargetNodesForType;
  *(inited + 248) = 0xD000000000000016;
  *(inited + 256) = 0x8000000000231FC0;
  *(inited + 264) = &outlined read-only object #9 of one-time initialization function for TargetNodesForType;
  *(inited + 272) = 0xD000000000000011;
  *(inited + 280) = 0x8000000000231FE0;
  *(inited + 288) = &outlined read-only object #10 of one-time initialization function for TargetNodesForType;
  *(inited + 296) = 0x697461646E756F66;
  *(inited + 304) = 0xEF7373614D2E6E6FLL;
  *(inited + 312) = &outlined read-only object #11 of one-time initialization function for TargetNodesForType;
  *(inited + 320) = 0xD000000000000011;
  *(inited + 328) = 0x8000000000232000;
  *(inited + 336) = &outlined read-only object #12 of one-time initialization function for TargetNodesForType;
  *(inited + 344) = 0xD000000000000010;
  *(inited + 352) = 0x8000000000232020;
  *(inited + 360) = &outlined read-only object #13 of one-time initialization function for TargetNodesForType;
  *(inited + 368) = 0xD000000000000011;
  *(inited + 376) = 0x8000000000232040;
  *(inited + 384) = &outlined read-only object #14 of one-time initialization function for TargetNodesForType;
  *(inited + 392) = 0xD000000000000018;
  *(inited + 400) = 0x8000000000232060;
  *(inited + 408) = &outlined read-only object #15 of one-time initialization function for TargetNodesForType;
  *(inited + 416) = 0xD000000000000014;
  *(inited + 424) = 0x8000000000232080;
  *(inited + 432) = &outlined read-only object #16 of one-time initialization function for TargetNodesForType;
  *(inited + 440) = 0xD000000000000011;
  *(inited + 448) = 0x80000000002320A0;
  *(inited + 456) = &outlined read-only object #17 of one-time initialization function for TargetNodesForType;
  *(inited + 464) = 0x697461646E756F66;
  *(inited + 472) = 0xEF656C69462E6E6FLL;
  *(inited + 480) = _swiftEmptyArrayStorage;
  *(inited + 488) = 0xD000000000000011;
  *(inited + 496) = 0x800000000022E0A0;
  *(inited + 504) = &outlined read-only object #18 of one-time initialization function for TargetNodesForType;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  result = Dictionary.init(dictionaryLiteral:)();
  static INCodableAttribute.TargetNodesForType = result;
  return result;
}

void INCodableAttribute.localizedPrompt(promptDialogType:intent:appInfo:tokens:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_16_10();
  a25 = v27;
  a26 = v28;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = [v26 promptDialogWithType:v35];
  if (v36)
  {
    v37 = v36;
    v73 = v30;
    v38 = static LocaleUtils.siriLanguageCode()();
    v40 = v39;
    if (one-time initialization token for voiceCommands != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v41 = type metadata accessor for Logger();
    __swift_project_value_buffer(v41, static Logger.voiceCommands);

    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = OUTLINED_FUNCTION_48();
      v45 = OUTLINED_FUNCTION_85();
      a14 = v45;
      *v44 = 136315138;
      *(v44 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, v40, &a14);
      _os_log_impl(&dword_0, v42, v43, "INCodableAttribute localized prompt, siri locale: %s", v44, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v45);
      OUTLINED_FUNCTION_11_0();
      OUTLINED_FUNCTION_15_0();
    }

    v46 = INCodableAttributePromptDialog.getLanguageCode()();
    v47 = [v37 formatString];
    v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v50 = v49;

    v74 = static LocaleUtils.getContentLocale(dialogLocale:appInfo:formatString:)(v46.value._countAndFlagsBits, v46.value._object, v32, v48, v50);
    v52 = v51;

    v53 = Logger.logObject.getter();
    v54 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      a14 = swift_slowAlloc();
      *v55 = 136315394;
      v72 = v34;
      v56 = v40;
      if (v52)
      {
        v57 = v74;
      }

      else
      {
        v57 = 7104878;
      }

      if (v52)
      {
        v58 = v52;
      }

      else
      {
        v58 = 0xE300000000000000;
      }

      v59 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v57, v58, &a14);

      *(v55 + 4) = v59;
      v40 = v56;
      *(v55 + 12) = 2080;
      if (v46.value._object)
      {
        countAndFlagsBits = v46.value._countAndFlagsBits;
      }

      else
      {
        countAndFlagsBits = 7104878;
      }

      if (v46.value._object)
      {
        object = v46.value._object;
      }

      else
      {
        object = 0xE300000000000000;
      }

      v62 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(countAndFlagsBits, object, &a14);

      *(v55 + 14) = v62;
      v34 = v72;
      _os_log_impl(&dword_0, v53, v54, "INCodableAttribute localized prompt, content locale: %s, dialog language code: %s", v55, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_15_0();
      OUTLINED_FUNCTION_15_0();
    }

    else
    {
    }

    v63 = static LocaleUtils.compatibleLocale(siriLocale:contentLocale:)(v38, v40, v74, v52);

    if (v63)
    {
      if (v73)
      {
        v64.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
      }

      else
      {
        v64.super.isa = 0;
      }

      v70 = String._bridgeToObjectiveC()();

      v71 = [v37 localizedDialogWithIntent:v34 tokens:v64.super.isa forLanguage:v70];

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      OUTLINED_FUNCTION_11_11();

      goto LABEL_32;
    }
  }

  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v65 = type metadata accessor for Logger();
  __swift_project_value_buffer(v65, static Logger.voiceCommands);
  v66 = Logger.logObject.getter();
  v67 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_17_11(v67))
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_25(&dword_0, v68, v69, "INCodableAttribute localized prompt dialog is nil");
    OUTLINED_FUNCTION_15_0();
  }

LABEL_32:
  OUTLINED_FUNCTION_12_12();
  OUTLINED_FUNCTION_15_10();
}

Swift::String_optional __swiftcall INCodableAttributePromptDialog.getLanguageCode()()
{
  v1 = outlined bridged method (pb) of @objc SAAppInfo.appNameMap.getter(v0, &selRef_dictionaryRepresentation);
  if (!v1)
  {
    if (one-time initialization token for voiceCommands != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v14 = type metadata accessor for Logger();
    __swift_project_value_buffer(v14, static Logger.voiceCommands);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.debug.getter();
    if (!OUTLINED_FUNCTION_17_11(v16))
    {
      goto LABEL_15;
    }

    *swift_slowAlloc() = 0;
    v19 = "INCodableAttributePromptDialog dictionary is nil";
    goto LABEL_14;
  }

  v2 = v1;
  OUTLINED_FUNCTION_2_21();
  specialized Dictionary.subscript.getter(0xD000000000000035, v3, v2, v4);

  if (!v27)
  {
    outlined destroy of Any?(v26);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_3_17(v5, v6, v7, &type metadata for String, v8, v9, v10, v11, v23);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_10:
    if (one-time initialization token for voiceCommands != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v20 = type metadata accessor for Logger();
    __swift_project_value_buffer(v20, static Logger.voiceCommands);
    v15 = Logger.logObject.getter();
    v21 = static os_log_type_t.debug.getter();
    if (!OUTLINED_FUNCTION_17_11(v21))
    {
      goto LABEL_15;
    }

    *swift_slowAlloc() = 0;
    v19 = "INCodableAttributePromptDialog language code is nil";
LABEL_14:
    OUTLINED_FUNCTION_25(&dword_0, v17, v18, v19);
    OUTLINED_FUNCTION_15_0();
LABEL_15:

    v12 = 0;
    v13 = 0;
    goto LABEL_16;
  }

  v12 = v24;
  v13 = v25;
LABEL_16:
  result.value._object = v13;
  result.value._countAndFlagsBits = v12;
  return result;
}

uint64_t static LocaleUtils.getContentLocale(dialogLocale:appInfo:formatString:)(uint64_t a1, unint64_t a2, void *a3, uint64_t a4, char *a5)
{
  if (!a5)
  {
    if (one-time initialization token for voiceCommands != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v20 = type metadata accessor for Logger();
    __swift_project_value_buffer(v20, static Logger.voiceCommands);
    v21 = a3;
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = OUTLINED_FUNCTION_48();
      v25 = OUTLINED_FUNCTION_85();
      v46 = v25;
      *v24 = 136315138;
      if (a3 && (v26 = SAAppInfo.getAppLanguage()(), v26.value._object))
      {
        countAndFlagsBits = v26.value._countAndFlagsBits;
        object = v26.value._object;
      }

      else
      {
        countAndFlagsBits = 7104878;

        object = 0xE300000000000000;
      }

      v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(countAndFlagsBits, object, &v46);

      *(v24 + 4) = v41;
      OUTLINED_FUNCTION_18_13(&dword_0, v42, v43, "LocationUtils.getContentLocale(), format String is nil, appInfo language: %s");
      __swift_destroy_boxed_opaque_existential_1Tm(v25);
      OUTLINED_FUNCTION_15_0();
      OUTLINED_FUNCTION_11_0();
    }

    if (!a3 || (v44 = SAAppInfo.getAppLanguage()(), v40 = v44.value._countAndFlagsBits, !v44.value._object))
    {

      return 28261;
    }

    return v40;
  }

  type metadata accessor for CATSpeakableString();
  v10 = static CATSpeakableString.getPropertiesInTemplateString(templateString:)(a4, a5)[2];

  if (v10)
  {
    if (one-time initialization token for voiceCommands != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, static Logger.voiceCommands);
    v12 = a3;
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = OUTLINED_FUNCTION_48();
      v16 = OUTLINED_FUNCTION_85();
      v46 = v16;
      *v15 = 136315138;
      if (a3 && (v17 = SAAppInfo.getAppLanguage()(), v17.value._object))
      {
        v18 = v17.value._countAndFlagsBits;
        v19 = v17.value._object;
      }

      else
      {
        v18 = 7104878;

        v19 = 0xE300000000000000;
      }

      v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v19, &v46);

      *(v15 + 4) = v37;
      OUTLINED_FUNCTION_18_13(&dword_0, v38, v39, "LocationUtils.getContentLocale(), appInfo language: %s");
      __swift_destroy_boxed_opaque_existential_1Tm(v16);
      OUTLINED_FUNCTION_15_0();
      OUTLINED_FUNCTION_11_0();
    }

    if (a3)
    {
      return SAAppInfo.getAppLanguage()().value._countAndFlagsBits;
    }

    return 0;
  }

  else
  {
    if (one-time initialization token for voiceCommands != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v29 = type metadata accessor for Logger();
    __swift_project_value_buffer(v29, static Logger.voiceCommands);

    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = OUTLINED_FUNCTION_48();
      v33 = OUTLINED_FUNCTION_85();
      v46 = v33;
      *v32 = 136315138;
      if (a2)
      {
        v34 = a1;
      }

      else
      {
        v34 = 7104878;
      }

      if (a2)
      {
        v35 = a2;
      }

      else
      {
        v35 = 0xE300000000000000;
      }

      v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v35, &v46);

      *(v32 + 4) = v36;
      _os_log_impl(&dword_0, v30, v31, "LocationUtils.getContentLocale(), no properties in template, dialogLocale: %s", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v33);
      OUTLINED_FUNCTION_11_0();
      OUTLINED_FUNCTION_15_0();
    }
  }

  return a1;
}

BOOL static LocaleUtils.compatibleLocale(siriLocale:contentLocale:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    v4 = static LocaleUtils.extractLanguageCode(locale:)();
    v6 = v5;
    OUTLINED_FUNCTION_22_4();
    v7 = static LocaleUtils.extractLanguageCode(locale:)();
    v9 = v8;
    v10 = v4 == 26746 && v6 == 0xE200000000000000;
    if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || (v4 == 6649209 ? (v11 = v6 == 0xE300000000000000) : (v11 = 0), v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
    {

      v13 = &outlined read-only object #0 of static LocaleUtils.compatibleLocale(siriLocale:contentLocale:);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, _ss23_ContiguousArrayStorageCySSGMR);
      v12 = swift_allocObject();
      v13 = v12;
      *(v12 + 16) = xmmword_216850;
      *(v12 + 32) = v4;
      *(v12 + 40) = v6;
    }

    v17[0] = v7;
    v17[1] = v9;
    __chkstk_darwin(v12);
    v16[2] = v17;
    v14 = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), v16, v13);
  }

  else
  {
    return 1;
  }

  return v14;
}

uint64_t INCodableAttribute.localizedUnsupportedDialog(unsupportedReasonCode:intent:appInfo:tokens:)(uint64_t a1, uint64_t a2, void *a3, Class isa)
{
  v8 = [v4 unsupportedReasonWithIndex:a1];
  if (!v8)
  {
    return 0;
  }

  v9 = v8;
  v25 = a2;
  v10 = static LocaleUtils.siriLanguageCode()();
  v12 = v11;
  v13 = INCodableAttributeUnsupportedReason.getLanguageCode()();
  v14 = [v9 formatString];
  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;

  v18 = static LocaleUtils.getContentLocale(dialogLocale:appInfo:formatString:)(v13.value._countAndFlagsBits, v13.value._object, a3, v15, v17);
  v20 = v19;

  LOBYTE(v17) = static LocaleUtils.compatibleLocale(siriLocale:contentLocale:)(v10, v12, v18, v20);

  if ((v17 & 1) == 0)
  {

    return 0;
  }

  if (isa)
  {
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  v21 = String._bridgeToObjectiveC()();

  v22 = [v9 localizedDialogWithIntent:v25 tokens:isa forLanguage:v21];

  v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v23;
}

Swift::String_optional __swiftcall INCodableAttributeUnsupportedReason.getLanguageCode()()
{
  v1 = outlined bridged method (pb) of @objc SAAppInfo.appNameMap.getter(v0, &selRef_dictionaryRepresentation);
  if (!v1)
  {
    goto LABEL_7;
  }

  v2 = v1;
  OUTLINED_FUNCTION_2_21();
  specialized Dictionary.subscript.getter(0xD00000000000003ALL, v3, v2, v4);

  if (!v18)
  {
    outlined destroy of Any?(v17);
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_3_17(v5, v6, v7, &type metadata for String, v8, v9, v10, v11, v14);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_6:
    v1 = 0;
LABEL_7:
    v12 = 0;
    goto LABEL_8;
  }

  v1 = v15;
  v12 = v16;
LABEL_8:
  result.value._object = v12;
  result.value._countAndFlagsBits = v1;
  return result;
}

Swift::Bool __swiftcall INCodableAttribute.requiresDictationPrompt()()
{
  v4[0] = INCodableAttribute.typeString()();
  v4[1] = v0;
  v3[2] = v4;
  v1 = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, v3, &outlined read-only object #0 of one-time initialization function for TypesRequiringDictationMode);

  return v1;
}

uint64_t INCodableAttribute.typeString()()
{
  if ([v0 valueType] || (v8 = outlined bridged method (pb) of @objc INCodableDescription.dictionaryRepresentation()(v0)) == 0)
  {
    v1 = static CustomTypeReference.fromSlotValueType(valueType:)([v0 valueType]);
    v3 = v2;
    v5 = v4;
    v17 = v1;

    v6._countAndFlagsBits = 46;
    v6._object = 0xE100000000000000;
    String.append(_:)(v6);

    v7._countAndFlagsBits = v3;
    v7._object = v5;
    String.append(_:)(v7);
  }

  else
  {
    v9 = static CustomTypeReference.buildFromAttributeHash(attributeHash:)(v8);
    v11 = v10;
    v13 = v12;

    v17 = v9;

    v14._countAndFlagsBits = 46;
    v14._object = 0xE100000000000000;
    String.append(_:)(v14);

    v15._countAndFlagsBits = v11;
    v15._object = v13;
    String.append(_:)(v15);
  }

  return v17;
}

void *INCodableAttribute.promptTargets()()
{
  if (one-time initialization token for TargetNodesForType != -1)
  {
    swift_once();
  }

  v0 = static INCodableAttribute.TargetNodesForType;
  v1 = INCodableAttribute.typeString()();
  v3 = specialized Dictionary.subscript.getter(v1, v2, v0);

  if (v3)
  {
    return v3;
  }

  else
  {
    return _swiftEmptyArrayStorage;
  }
}

void *INCodableAttribute.disambiguationPromptTargets()()
{
  v1 = INCodableAttribute.promptTargets()();
  specialized Array.append<A>(contentsOf:)(&outlined read-only object #0 of INCodableAttribute.disambiguationPromptTargets());
  return v1;
}

uint64_t *LocaleUtils.intentBundleCache.unsafeMutableAddressor()
{
  if (one-time initialization token for intentBundleCache != -1)
  {
    OUTLINED_FUNCTION_1_25();
  }

  return &static LocaleUtils.intentBundleCache;
}

uint64_t static LocaleUtils.intentBundleCache.getter()
{
  if (one-time initialization token for intentBundleCache != -1)
  {
    OUTLINED_FUNCTION_1_25();
  }

  swift_beginAccess();
}

uint64_t static LocaleUtils.intentBundleCache.setter(uint64_t a1)
{
  if (one-time initialization token for intentBundleCache != -1)
  {
    OUTLINED_FUNCTION_1_25();
  }

  swift_beginAccess();
  static LocaleUtils.intentBundleCache = a1;
}

uint64_t (*static LocaleUtils.intentBundleCache.modify())()
{
  if (one-time initialization token for intentBundleCache != -1)
  {
    OUTLINED_FUNCTION_1_25();
  }

  OUTLINED_FUNCTION_22_4();
  swift_beginAccess();
  return static LocaleUtils.intentBundleCache.modify;
}

uint64_t key path getter for static LocaleUtils.intentBundleCache : LocaleUtils.Type@<X0>(void *a1@<X8>)
{
  LocaleUtils.intentBundleCache.unsafeMutableAddressor();
  swift_beginAccess();
  *a1 = static LocaleUtils.intentBundleCache;
}

uint64_t key path setter for static LocaleUtils.intentBundleCache : LocaleUtils.Type(uint64_t *a1)
{
  v1 = *a1;

  LocaleUtils.intentBundleCache.unsafeMutableAddressor();
  swift_beginAccess();
  static LocaleUtils.intentBundleCache = v1;
}

Swift::String_optional __swiftcall SAAppInfo.getAppLanguage()()
{
  if ((SAAppInfo.isShortcutsApp()() & 1) == 0)
  {
    goto LABEL_33;
  }

  v1 = outlined bridged method (pb) of @objc SAAppInfo.displayAppName.getter(v0);
  if (!v2)
  {
    goto LABEL_33;
  }

  v3 = v1;
  v4 = v2;
  v5 = outlined bridged method (pb) of @objc SAAppInfo.appNameMap.getter(v0, &selRef_appNameMap);
  if (!v5)
  {
LABEL_32:

LABEL_33:
    v8 = [v0 appIdentifyingInfo];
    if (!v8)
    {
LABEL_50:
      __break(1u);
      goto LABEL_51;
    }

    v24 = outlined bridged method (ob) of @objc INPreferences._cachedSiriLanguageCode.getter(v8, &selRef_bundleId);
    if (!v25)
    {
      goto LABEL_40;
    }

    if (v24 == 0xD000000000000026 && v25 == 0x8000000000231C90)
    {

      goto LABEL_47;
    }

    v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v27 & 1) == 0)
    {
LABEL_40:
      v8 = [v0 appIdentifyingInfo];
      if (!v8)
      {
LABEL_51:
        __break(1u);
        goto LABEL_52;
      }

      v8 = outlined bridged method (ob) of @objc INPreferences._cachedSiriLanguageCode.getter(v8, &selRef_bundleId);
      if (!v9)
      {
LABEL_52:
        __break(1u);
        goto LABEL_53;
      }

      type metadata accessor for NSError(0, &lazy cache variable for type metadata for NSBundle, NSBundle_ptr);
      v28 = @nonobjc NSBundle.__allocating_init(identifier:)();
      if (v28)
      {
        v29 = v28;
        v30 = [v28 developmentLocalization];
        if (v30)
        {
          v31 = v30;
          v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v10 = v32;

          goto LABEL_48;
        }
      }
    }

LABEL_47:
    v11 = 0;
    v10 = 0;
    goto LABEL_48;
  }

  v6 = v5;
  if (!*(v5 + 16))
  {

    goto LABEL_32;
  }

  if (v3 != 0x74756374726F6853 || v4 != 0xE900000000000073)
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
    if ((v8 & 1) == 0)
    {
      v12 = 0;
      v13 = 1 << *(v6 + 32);
      v14 = -1;
      if (v13 < 64)
      {
        v14 = ~(-1 << v13);
      }

      v15 = v14 & *(v6 + 64);
      v16 = (v13 + 63) >> 6;
      while (v15)
      {
LABEL_20:
        v18 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
        v19 = (v12 << 10) | (16 * v18);
        v20 = (*(v6 + 48) + v19);
        v11 = *v20;
        v10 = v20[1];
        v21 = (*(v6 + 56) + v19);
        v8 = *v21;
        v9 = v21[1];
        if (*v21 != v3 || v4 != v9)
        {
          v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
          if ((v8 & 1) == 0)
          {
            continue;
          }
        }

        if (v11 != 1702060354 || v10 != 0xE400000000000000)
        {
          v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
          if ((v8 & 1) == 0)
          {

            goto LABEL_48;
          }
        }
      }

      while (1)
      {
        v17 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v17 >= v16)
        {

          goto LABEL_32;
        }

        v15 = *(v6 + 64 + 8 * v17);
        ++v12;
        if (v15)
        {
          v12 = v17;
          goto LABEL_20;
        }
      }

      __break(1u);
      goto LABEL_50;
    }
  }

  v10 = 0xE200000000000000;
  v11 = 28261;
LABEL_48:
  v8 = v11;
  v9 = v10;
LABEL_53:
  result.value._object = v9;
  result.value._countAndFlagsBits = v8;
  return result;
}

uint64_t static LocaleUtils.extractLanguageCode(locale:)()
{
  OUTLINED_FUNCTION_7_13();
  specialized Collection<>.firstIndex(of:)(v0, v1, v2, v3);
  if (v4 & 1) != 0 && (OUTLINED_FUNCTION_7_13(), specialized Collection<>.firstIndex(of:)(v5, v6, v7, v8), (v9))
  {
    OUTLINED_FUNCTION_22_4();

    return String.lowercased()()._countAndFlagsBits;
  }

  else
  {
    OUTLINED_FUNCTION_7_13();
    String.subscript.getter();
    static String._fromSubstring(_:)();
    OUTLINED_FUNCTION_11_11();

    OUTLINED_FUNCTION_12_12();
    countAndFlagsBits = String.lowercased()()._countAndFlagsBits;

    return countAndFlagsBits;
  }
}

unint64_t specialized Collection<>.firstIndex(of:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v6 = a3 & 0xFFFFFFFFFFFFLL;
  }

  v7 = 4 * v6;
  for (i = 15; ; i = String.index(after:)())
  {
    if (i >> 14 == v7)
    {
      return 0;
    }

    if (String.subscript.getter() == a1 && v9 == a2)
    {
      break;
    }

    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v11)
    {
      return i;
    }
  }

  return i;
}

uint64_t specialized Collection<>.firstIndex(of:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = 0;
  v6 = *(a3 + 16);
  v7 = (a3 + 40);
  while (v6 != v5)
  {
    if (*(v7 - 1) == a1 && *v7 == a2)
    {
      return v5;
    }

    OUTLINED_FUNCTION_7_13();
    if (_stringCompareWithSmolCheck(_:_:expecting:)())
    {
      return v5;
    }

    ++v5;
    v7 += 2;
  }

  return 0;
}

unint64_t specialized Collection.subscript.getter(unint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v3 >= result >> 14)
  {
    return String.subscript.getter();
  }

  __break(1u);
  return result;
}

id static LocaleUtils.getBundle(intentName:)(uint64_t a1, unint64_t a2)
{
  if (one-time initialization token for intentBundleCache != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = static LocaleUtils.intentBundleCache;
  if (*(static LocaleUtils.intentBundleCache + 16) && (v5 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2), (v6 & 1) != 0))
  {
    v7 = *(*(v4 + 56) + 8 * v5);
    swift_endAccess();
    v8 = v7;
  }

  else
  {
    swift_endAccess();
    type metadata accessor for NSError(0, &lazy cache variable for type metadata for NSBundle, NSBundle_ptr);
    static LocaleUtils.getBundleId(intentName:)(a1, a2);
    v7 = @nonobjc NSBundle.__allocating_init(identifier:)();
    if (v7)
    {
      swift_beginAccess();
      v9 = v7;
      swift_isUniquelyReferenced_nonNull_native();
      v11 = static LocaleUtils.intentBundleCache;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v9, a1, a2);
      static LocaleUtils.intentBundleCache = v11;
      swift_endAccess();
    }
  }

  return v7;
}

uint64_t static LocaleUtils.getBundleId(intentName:)(uint64_t a1, unint64_t a2)
{
  v4 = String.count.getter();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = String.count.getter();

  if (v5 >= v4)
  {
    return 0;
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.count.getter();

  lazy protocol witness table accessor for type String and conformance String();

  v6 = String.Index.init<A>(utf16Offset:in:)();
  specialized Collection.subscript.getter(v6, a1, a2);
  lazy protocol witness table accessor for type Substring and conformance Substring();
  v7 = StringProtocol.components<A>(separatedBy:)();

  v8 = *(v7 + 16);
  if (v8 <= 1)
  {

    return 0;
  }

  specialized Array.subscript.getter(0, v8 - 1, v7);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss10ArraySliceVySSGMd, &_ss10ArraySliceVySSGMR);
  lazy protocol witness table accessor for type ArraySlice<String> and conformance ArraySlice<A>();
  v9 = BidirectionalCollection<>.joined(separator:)();
  swift_unknownObjectRelease();
  return v9;
}

id @nonobjc NSBundle.__allocating_init(identifier:)()
{
  v0 = String._bridgeToObjectiveC()();

  v1 = [swift_getObjCClassFromMetadata() bundleWithIdentifier:v0];

  return v1;
}

id SAAppInfo.isShortcutsApp()()
{
  result = [v0 appIdentifyingInfo];
  if (result)
  {
    v2 = outlined bridged method (ob) of @objc INPreferences._cachedSiriLanguageCode.getter(result, &selRef_bundleId);
    if (v3)
    {
      if (v2 == 0xD000000000000013 && v3 == 0x800000000022F740)
      {
        goto LABEL_16;
      }

      v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v5)
      {
        v6 = 1;
        return (v6 & 1);
      }
    }

    result = [v0 appIdentifyingInfo];
    if (result)
    {
      v7 = outlined bridged method (ob) of @objc INPreferences._cachedSiriLanguageCode.getter(result, &selRef_bundleId);
      if (!v8)
      {
        v6 = 0;
        return (v6 & 1);
      }

      if (v7 != 0xD000000000000026 || v8 != 0x8000000000231C90)
      {
        v6 = _stringCompareWithSmolCheck(_:_:expecting:)();
LABEL_17:

        return (v6 & 1);
      }

LABEL_16:
      v6 = 1;
      goto LABEL_17;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t outlined bridged method (pb) of @objc SAAppInfo.displayAppName.getter(void *a1)
{
  v1 = [a1 displayAppName];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t outlined bridged method (ob) of @objc INPreferences._cachedSiriLanguageCode.getter(void *a1, SEL *a2)
{
  v3 = [a1 *a2];

  if (v3)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_11_11();
  }

  return OUTLINED_FUNCTION_12_12();
}

uint64_t outlined bridged method (pb) of @objc SAAppInfo.appNameMap.getter(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  return v4;
}

uint64_t specialized Array.index(_:offsetBy:limitedBy:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = a3 - result;
  if (__OFSUB__(a3, result))
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if (a2 < 1)
  {
    if (v3 <= 0 && v3 > a2)
    {
      return 0;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0 && v3 < a2)
  {
    return 0;
  }

  v5 = __OFADD__(result, a2);
  result += a2;
  if (v5)
  {
    goto LABEL_14;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Substring and conformance Substring()
{
  result = lazy protocol witness table cache variable for type Substring and conformance Substring;
  if (!lazy protocol witness table cache variable for type Substring and conformance Substring)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Substring and conformance Substring);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Substring and conformance Substring;
  if (!lazy protocol witness table cache variable for type Substring and conformance Substring)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Substring and conformance Substring);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ArraySlice<String> and conformance ArraySlice<A>()
{
  result = lazy protocol witness table cache variable for type ArraySlice<String> and conformance ArraySlice<A>;
  if (!lazy protocol witness table cache variable for type ArraySlice<String> and conformance ArraySlice<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss10ArraySliceVySSGMd, &_ss10ArraySliceVySSGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ArraySlice<String> and conformance ArraySlice<A>);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_25()
{

  return swift_once();
}

double OUTLINED_FUNCTION_8_17@<D0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, __int128 a4)
{

  return specialized Dictionary.subscript.getter(v5 + 12, (a1 - 32) | 0x8000000000000000, v4, &a4);
}

uint64_t OUTLINED_FUNCTION_9_13()
{

  return static LocaleUtils.getContentLocale(dialogLocale:appInfo:formatString:)(v2, v1, v0, v3, v4);
}

BOOL OUTLINED_FUNCTION_16_15()
{

  return static LocaleUtils.compatibleLocale(siriLocale:contentLocale:)(v2, v1, v0, v3);
}

void OUTLINED_FUNCTION_18_13(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

id static LNValueTypeMap.mapLNValueTypeToIntentValueType(valueType:)(void *a1)
{
  objc_opt_self();
  if (OUTLINED_FUNCTION_56_0())
  {
    v2 = objc_opt_self();
    v3 = a1;
    v4 = [v2 dateValueType];
    type metadata accessor for NSError(0, &lazy cache variable for type metadata for LNPrimitiveValueType, LNPrimitiveValueType_ptr);
    v5 = static NSObject.== infix(_:_:)();

    if (v5)
    {
LABEL_3:

      OUTLINED_FUNCTION_26_10();
      return &dword_4;
    }

    v10 = v3;
    v11 = [v2 dateComponentsValueType];
    v12 = OUTLINED_FUNCTION_52_3();

    if (v12)
    {

      OUTLINED_FUNCTION_26_10();
      return &dword_4 + 1;
    }

    v13 = v10;
    v14 = [v2 BOOLValueType];
    v15 = OUTLINED_FUNCTION_52_3();

    if (v15)
    {

      return &dword_0 + 2;
    }

    v21 = v13;
    v22 = [v2 doubleValueType];
    v23 = OUTLINED_FUNCTION_52_3();

    if (v23)
    {

      OUTLINED_FUNCTION_26_10();
      return &dword_8 + 1;
    }

    v35 = v21;
    v36 = [v2 intValueType];
    v37 = OUTLINED_FUNCTION_52_3();

    if (v37)
    {
      goto LABEL_31;
    }

    v35 = v35;
    v38 = [v2 int8ValueType];
    v39 = OUTLINED_FUNCTION_52_3();

    if (v39)
    {
      goto LABEL_31;
    }

    v35 = v35;
    v40 = [v2 int16ValueType];
    v41 = OUTLINED_FUNCTION_52_3();

    if (v41)
    {
      goto LABEL_31;
    }

    v35 = v35;
    v42 = [v2 int32ValueType];
    v43 = OUTLINED_FUNCTION_52_3();

    if (v43 & 1) != 0 || (v35 = v35, v44 = [v2 int64ValueType], v45 = OUTLINED_FUNCTION_52_3(), v35, v4, (v45))
    {
LABEL_31:

      OUTLINED_FUNCTION_26_10();
      return &dword_8 + 3;
    }

    v63 = v35;
    v64 = [v2 placemarkValueType];
    v65 = OUTLINED_FUNCTION_52_3();

    if (v65)
    {

      OUTLINED_FUNCTION_26_10();
      return &dword_C + 2;
    }

    v66 = v63;
    v67 = [v2 URLValueType];
    v68 = OUTLINED_FUNCTION_52_3();

    if (v68)
    {

      OUTLINED_FUNCTION_26_10();
      return &dword_10 + 2;
    }

    v75 = v66;
    v76 = [v2 stringValueType];
    v77 = OUTLINED_FUNCTION_52_3();

    if (v77)
    {

      OUTLINED_FUNCTION_26_10();
      return &dword_10;
    }

    v78 = v75;
    v79 = [v2 attributedStringValueType];
    v80 = static NSObject.== infix(_:_:)();

    if (v80)
    {

      OUTLINED_FUNCTION_26_10();
      return &dword_0 + 1;
    }

    if (one-time initialization token for voiceCommands != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v81 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_59(v81, static Logger.voiceCommands);
    v29 = v78;
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();

    if (OUTLINED_FUNCTION_85_1())
    {
      OUTLINED_FUNCTION_48();
      v32 = OUTLINED_FUNCTION_83();
      v33 = OUTLINED_FUNCTION_48_4(v32, 5.7779e-34);
      v34 = "#LNValueTypeMap: cannot map unsupported LNPrimitiveValueType %@";
      goto LABEL_36;
    }

LABEL_73:

    goto LABEL_74;
  }

  objc_opt_self();
  if (OUTLINED_FUNCTION_56_0())
  {
    type metadata accessor for NSError(0, &lazy cache variable for type metadata for LNCodableValueType, LNCodableValueType_ptr);
    v7 = a1;
    v8 = static LNCodableValueType.dateInterval.getter();
    v9 = static NSObject.== infix(_:_:)();

    if (v9)
    {

      OUTLINED_FUNCTION_26_10();
      return &dword_4 + 2;
    }

    v19 = v7;
    v20 = static LNCodableValueType.personNameComponents.getter();
    v4 = static NSObject.== infix(_:_:)();

    if (v4)
    {

      OUTLINED_FUNCTION_26_10();
      return &dword_C + 1;
    }

    v24 = v19;
    v25 = static LNCodableValueType.duration.getter();
    v26 = static NSObject.== infix(_:_:)();

    if (v26)
    {

      OUTLINED_FUNCTION_26_10();
      return &dword_4 + 3;
    }

    if (one-time initialization token for voiceCommands != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v46 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_59(v46, static Logger.voiceCommands);
    v29 = v24;
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();

    if (!OUTLINED_FUNCTION_85_1())
    {
      goto LABEL_73;
    }

    OUTLINED_FUNCTION_48();
    v32 = OUTLINED_FUNCTION_83();
    v33 = OUTLINED_FUNCTION_48_4(v32, 5.7779e-34);
    v34 = "#LNValueTypeMap: cannot map unsupported LNCodableValueType %@";
    goto LABEL_36;
  }

  objc_opt_self();
  if (OUTLINED_FUNCTION_56_0())
  {
    v4 = objc_opt_self();
    v16 = a1;
    v17 = [v4 recurrenceRuleType];
    type metadata accessor for NSError(0, &lazy cache variable for type metadata for LNFoundationValueType, LNFoundationValueType_ptr);
    v18 = static NSObject.== infix(_:_:)();

    if (v18)
    {

      OUTLINED_FUNCTION_26_10();
      return &dword_8;
    }

    if (one-time initialization token for voiceCommands != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v28 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_59(v28, static Logger.voiceCommands);
    v29 = v16;
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();

    if (!OUTLINED_FUNCTION_85_1())
    {
      goto LABEL_73;
    }

    OUTLINED_FUNCTION_48();
    v32 = OUTLINED_FUNCTION_83();
    v33 = OUTLINED_FUNCTION_48_4(v32, 5.7779e-34);
    v34 = "#LNValueTypeMap: cannot map unsupported LNFoundationValueType %@";
LABEL_36:
    _os_log_impl(&dword_0, v30, v31, v34, v4, 0xCu);
    outlined destroy of String?(v32, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    OUTLINED_FUNCTION_15_0();
    OUTLINED_FUNCTION_15_0();

LABEL_37:
LABEL_74:
    OUTLINED_FUNCTION_26_10();
    return &dword_10 + 1;
  }

  objc_opt_self();
  v27 = OUTLINED_FUNCTION_56_0();
  if (v27)
  {
    return [v27 unitType];
  }

  objc_opt_self();
  if (OUTLINED_FUNCTION_56_0())
  {
    v47 = objc_opt_self();
    v3 = a1;
    v4 = [v47 timerValueType];
    type metadata accessor for NSError(0, &lazy cache variable for type metadata for LNIntentsValueType, LNIntentsValueType_ptr);
    v48 = static NSObject.== infix(_:_:)();

    if (v48)
    {
      goto LABEL_3;
    }

    v49 = v3;
    v50 = [v47 personValueType];
    v51 = OUTLINED_FUNCTION_52_3();

    if (v51)
    {

      OUTLINED_FUNCTION_26_10();
      return &dword_C;
    }

    v55 = v49;
    v56 = [v47 currencyAmountValueType];
    v57 = static NSObject.== infix(_:_:)();

    if (v57)
    {

      OUTLINED_FUNCTION_26_10();
      return &dword_0 + 3;
    }

    if (one-time initialization token for voiceCommands != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v62 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_59(v62, static Logger.voiceCommands);
    v29 = v55;
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();

    if (!OUTLINED_FUNCTION_85_1())
    {
      goto LABEL_73;
    }

    OUTLINED_FUNCTION_48();
    v32 = OUTLINED_FUNCTION_83();
    v33 = OUTLINED_FUNCTION_48_4(v32, 5.7779e-34);
    v34 = "#LNValueTypeMap: cannot map unsupported LNIntentsValueType %@";
    goto LABEL_36;
  }

  objc_opt_self();
  if (!OUTLINED_FUNCTION_56_0())
  {
    objc_opt_self();
    v58 = OUTLINED_FUNCTION_56_0();
    if (v58)
    {
      v59 = v58;
      v60 = a1;
      v61 = [v59 enumerationIdentifier];
      v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();

      return v6;
    }

    objc_opt_self();
    if (OUTLINED_FUNCTION_56_0())
    {
      return 0;
    }

    if (one-time initialization token for voiceCommands != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v69 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_59(v69, static Logger.voiceCommands);
    v70 = a1;
    v33 = Logger.logObject.getter();
    v71 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v33, v71))
    {
      v72 = OUTLINED_FUNCTION_48();
      v73 = swift_slowAlloc();
      *v72 = 138412290;
      *(v72 + 4) = v70;
      *v73 = v70;
      v74 = v70;
      _os_log_impl(&dword_0, v33, v71, "#LNValueTypeMap: cannot map unsupported %@", v72, 0xCu);
      outlined destroy of String?(v73, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      OUTLINED_FUNCTION_15_0();
      OUTLINED_FUNCTION_8_15();
    }

    goto LABEL_37;
  }

  objc_opt_self();
  if (OUTLINED_FUNCTION_56_0() && (type metadata accessor for NSError(0, &lazy cache variable for type metadata for NSObject, NSObject_ptr), type metadata accessor for NSError(0, &lazy cache variable for type metadata for LNSystemEntityValueType, LNSystemEntityValueType_ptr), v52 = a1, v53 = static LNSystemEntityValueType.placeDescriptor.getter(), v54 = static NSObject.== infix(_:_:)(), v53, v52, (v54 & 1) != 0))
  {
    OUTLINED_FUNCTION_26_10();
    return &dword_C + 3;
  }

  else
  {
    OUTLINED_FUNCTION_26_10();
    return &dword_8 + 2;
  }
}

uint64_t LNValueType.getLNValue(nlIntent:parameterMetadata:contactResolver:locale:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v9 = a3[3];
  v10 = a3[4];
  v11 = __swift_project_boxed_opaque_existential_1(a3, v9);
  OUTLINED_FUNCTION_54(&async function pointer to specialized LNValueType.getLNValue(nlIntent:parameterMetadata:contactResolver:locale:));
  v15 = v12;
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = protocol witness for IntentExtensionCommunicatingAsync.makeIntentExecutionBehavior(app:intent:) in conformance CustomIntentRCHFlowStrategy;

  return v15(a1, a2, v11, a4, v4, v9, v10);
}

uint64_t static VoiceCommandIntentValueType.__derived_enum_equals(_:_:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a3)
  {
    if (a3 == 1)
    {
      if (a6 == 1)
      {
        return a1 == a4;
      }

      return 0;
    }

    switch(a1)
    {
      case 1:
        if (a6 != 2 || a4 != 1)
        {
          return 0;
        }

        break;
      case 2:
        if (a6 != 2 || a4 != 2)
        {
          return 0;
        }

        break;
      case 3:
        if (a6 != 2 || a4 != 3)
        {
          return 0;
        }

        break;
      case 4:
        if (a6 != 2 || a4 != 4)
        {
          return 0;
        }

        break;
      case 5:
        if (a6 != 2 || a4 != 5)
        {
          return 0;
        }

        break;
      case 6:
        if (a6 != 2 || a4 != 6)
        {
          return 0;
        }

        break;
      case 7:
        if (a6 != 2 || a4 != 7)
        {
          return 0;
        }

        break;
      case 8:
        if (a6 != 2 || a4 != 8)
        {
          return 0;
        }

        break;
      case 9:
        if (a6 != 2 || a4 != 9)
        {
          return 0;
        }

        break;
      case 10:
        if (a6 != 2 || a4 != 10)
        {
          return 0;
        }

        break;
      case 11:
        if (a6 != 2 || a4 != 11)
        {
          return 0;
        }

        break;
      case 12:
        if (a6 != 2 || a4 != 12)
        {
          return 0;
        }

        break;
      case 13:
        if (a6 != 2 || a4 != 13)
        {
          return 0;
        }

        break;
      case 14:
        if (a6 != 2 || a4 != 14)
        {
          return 0;
        }

        break;
      case 15:
        if (a6 != 2 || a4 != 15)
        {
          return 0;
        }

        break;
      case 16:
        if (a6 != 2 || a4 != 16)
        {
          return 0;
        }

        break;
      case 17:
        if (a6 != 2 || a4 != 17)
        {
          return 0;
        }

        break;
      case 18:
        if (a6 != 2 || a4 != 18)
        {
          return 0;
        }

        break;
      default:
        return a6 == 2 && !(a5 | a4);
    }

    return !a5;
  }

  if (a6)
  {
    return 0;
  }

  if (a1 != a4 || a2 != a5)
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return 1;
}

_UNKNOWN **LNValueType.toPromptTargetType()()
{
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.voiceCommands);
  v2 = v0;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = OUTLINED_FUNCTION_48();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    *(v5 + 4) = v2;
    *v6 = v2;
    v7 = v2;
    _os_log_impl(&dword_0, v3, v4, "#LNValueType has type %@", v5, 0xCu);
    outlined destroy of String?(v6, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    OUTLINED_FUNCTION_15_0();
    OUTLINED_FUNCTION_8_15();
  }

  v8 = static LNValueTypeMap.mapLNValueTypeToIntentValueType(valueType:)(v2);
  if (v10)
  {
    if (v10 == 1)
    {
      return &outlined read-only object #2 of LNValueType.toPromptTargetType();
    }

    else
    {
      return off_29B228[v8];
    }
  }

  else
  {
    outlined consume of VoiceCommandIntentValueType(v8, v9, 0);
    return &outlined read-only object #4 of LNValueType.toPromptTargetType();
  }
}

Swift::Bool __swiftcall LNValueType.requiresStrictDictationPrompt()()
{
  v1 = static LNValueTypeMap.mapLNValueTypeToIntentValueType(valueType:)(v0);
  if (v3 == 2 && __PAIR128__(v2, v1) < 0x13 && ((0x50401u >> v1) & 1) != 0)
  {
    return 1;
  }

  outlined consume of VoiceCommandIntentValueType(v1, v2, v3);
  return 0;
}

void closure #1 in OSLogArguments.append(_:)(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

uint64_t specialized LNValueType.getLNValue(nlIntent:parameterMetadata:contactResolver:locale:)()
{
  OUTLINED_FUNCTION_8_0();
  v2 = v1;
  v0[85] = v3;
  v0[84] = v4;
  v0[83] = v5;
  v0[82] = v6;
  v7 = type metadata accessor for Locale();
  v0[86] = v7;
  OUTLINED_FUNCTION_5_0(v7);
  v0[87] = v8;
  v10 = *(v9 + 64);
  v0[88] = OUTLINED_FUNCTION_28();
  v11 = type metadata accessor for PlaceDescriptorEntity();
  v0[89] = v11;
  OUTLINED_FUNCTION_5_0(v11);
  v0[90] = v12;
  v14 = *(v13 + 64);
  v0[91] = OUTLINED_FUNCTION_28();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  OUTLINED_FUNCTION_14(v15);
  v17 = *(v16 + 64);
  v0[92] = OUTLINED_FUNCTION_28();
  v18 = type metadata accessor for URL();
  v0[93] = v18;
  OUTLINED_FUNCTION_5_0(v18);
  v0[94] = v19;
  v21 = *(v20 + 64);
  v0[95] = OUTLINED_FUNCTION_28();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PersonNameComponentsVSgMd, &_s10Foundation20PersonNameComponentsVSgMR);
  OUTLINED_FUNCTION_14(v22);
  v24 = *(v23 + 64);
  v0[96] = OUTLINED_FUNCTION_28();
  v25 = type metadata accessor for PersonNameComponents();
  v0[97] = v25;
  OUTLINED_FUNCTION_5_0(v25);
  v0[98] = v26;
  v28 = *(v27 + 64) + 15;
  v0[99] = swift_task_alloc();
  v0[100] = swift_task_alloc();
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10GeoToolbox15PlaceDescriptorVSgMd, &_s10GeoToolbox15PlaceDescriptorVSgMR);
  OUTLINED_FUNCTION_14(v29);
  v31 = *(v30 + 64);
  v0[101] = OUTLINED_FUNCTION_28();
  v32 = type metadata accessor for PlaceDescriptor();
  v0[102] = v32;
  OUTLINED_FUNCTION_5_0(v32);
  v0[103] = v33;
  v35 = *(v34 + 64);
  v0[104] = OUTLINED_FUNCTION_28();
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation8CalendarV14RecurrenceRuleVSgMd, &_s10Foundation8CalendarV14RecurrenceRuleVSgMR);
  OUTLINED_FUNCTION_14(v36);
  v38 = *(v37 + 64);
  v0[105] = OUTLINED_FUNCTION_28();
  v39 = type metadata accessor for Calendar.RecurrenceRule();
  v0[106] = v39;
  OUTLINED_FUNCTION_5_0(v39);
  v0[107] = v40;
  v42 = *(v41 + 64) + 15;
  v0[108] = swift_task_alloc();
  v0[109] = swift_task_alloc();
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
  OUTLINED_FUNCTION_14(v43);
  v45 = *(v44 + 64);
  v0[110] = OUTLINED_FUNCTION_28();
  v46 = type metadata accessor for DateInterval();
  v0[111] = v46;
  OUTLINED_FUNCTION_5_0(v46);
  v0[112] = v47;
  v49 = *(v48 + 64) + 15;
  v0[113] = swift_task_alloc();
  v0[114] = swift_task_alloc();
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
  OUTLINED_FUNCTION_14(v50);
  v52 = *(v51 + 64);
  v0[115] = OUTLINED_FUNCTION_28();
  v53 = type metadata accessor for DateComponents();
  v0[116] = v53;
  OUTLINED_FUNCTION_5_0(v53);
  v0[117] = v54;
  v56 = *(v55 + 64);
  v0[118] = OUTLINED_FUNCTION_28();
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology15TerminalElementV13DateTimeValueVSgMd, &_s12SiriOntology15TerminalElementV13DateTimeValueVSgMR);
  OUTLINED_FUNCTION_14(v57);
  v59 = *(v58 + 64);
  v0[119] = OUTLINED_FUNCTION_28();
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  OUTLINED_FUNCTION_14(v60);
  v62 = *(v61 + 64);
  v0[120] = OUTLINED_FUNCTION_28();
  v63 = type metadata accessor for Date();
  v0[121] = v63;
  OUTLINED_FUNCTION_5_0(v63);
  v0[122] = v64;
  v66 = *(v65 + 64);
  v0[123] = OUTLINED_FUNCTION_28();
  v67 = type metadata accessor for ContactResolver();
  v0[124] = v67;
  v0[5] = v67;
  v0[6] = &protocol witness table for ContactResolver;
  v0[2] = v2;

  return _swift_task_switch(specialized LNValueType.getLNValue(nlIntent:parameterMetadata:contactResolver:locale:), 0, 0);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v2 = v1;
  OUTLINED_FUNCTION_3_0();
  *v3 = v2;
  v5 = *(v4 + 1008);
  v6 = *(v4 + 952);
  v7 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v8 = v7;

  __swift_destroy_boxed_opaque_existential_1Tm((v2 + 416));
  __swift_destroy_boxed_opaque_existential_1Tm((v2 + 376));
  outlined destroy of String?(v2 + 336, &_s18SiriLinkFlowPlugin17LocationProviding_pSgMd, &_s18SiriLinkFlowPlugin17LocationProviding_pSgMR);
  outlined destroy of String?(v6, &_s12SiriOntology15TerminalElementV13DateTimeValueVSgMd, &_s12SiriOntology15TerminalElementV13DateTimeValueVSgMR);
  v9 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v9, v10, v11);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v2 = v1;
  OUTLINED_FUNCTION_3_0();
  *v3 = v2;
  v5 = *(v4 + 1016);
  v6 = *(v4 + 952);
  v7 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v8 = v7;

  __swift_destroy_boxed_opaque_existential_1Tm((v2 + 296));
  __swift_destroy_boxed_opaque_existential_1Tm((v2 + 256));
  outlined destroy of String?(v2 + 216, &_s18SiriLinkFlowPlugin17LocationProviding_pSgMd, &_s18SiriLinkFlowPlugin17LocationProviding_pSgMR);
  outlined destroy of String?(v6, &_s12SiriOntology15TerminalElementV13DateTimeValueVSgMd, &_s12SiriOntology15TerminalElementV13DateTimeValueVSgMR);
  v9 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v9, v10, v11);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v2 = v1;
  OUTLINED_FUNCTION_3_0();
  *v3 = v2;
  v5 = *(v4 + 1024);
  v6 = *(v4 + 952);
  v7 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v8 = v7;

  __swift_destroy_boxed_opaque_existential_1Tm((v2 + 176));
  __swift_destroy_boxed_opaque_existential_1Tm((v2 + 136));
  outlined destroy of String?(v2 + 96, &_s18SiriLinkFlowPlugin17LocationProviding_pSgMd, &_s18SiriLinkFlowPlugin17LocationProviding_pSgMR);
  outlined destroy of String?(v6, &_s12SiriOntology15TerminalElementV13DateTimeValueVSgMd, &_s12SiriOntology15TerminalElementV13DateTimeValueVSgMR);
  v9 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v9, v10, v11);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_3();
  *v2 = v1;
  OUTLINED_FUNCTION_46_4(v3, v4, v5);
  v7 = *(v6 + 1032);
  v8 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v9 = v8;
  *(v11 + 625) = v10;

  v12 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v12, v13, v14);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v2 = *(v1 + 1040);
  v3 = *(v1 + 952);
  v4 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v5 = v4;

  outlined destroy of String?(v3, &_s12SiriOntology15TerminalElementV13DateTimeValueVSgMd, &_s12SiriOntology15TerminalElementV13DateTimeValueVSgMR);
  v6 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v6, v7, v8);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_3();
  *v2 = v1;
  v4 = *(v3 + 1048);
  *v2 = *v0;
  *(v1 + 1056) = v5;

  v6 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v6, v7, v8);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v2 = *(v1 + 1064);
  v3 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v5, v6, v7);
}

{
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_3();
  *v2 = v1;
  v4 = v3[137];
  v5 = v3[136];
  v6 = v3[135];
  v7 = v3[88];
  v8 = v3[87];
  v9 = v3[86];
  v10 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v11 = v10;
  *(v13 + 1104) = v12;

  (*(v8 + 8))(v7, v9);
  v14 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v14, v15, v16);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v2 = v1;
  OUTLINED_FUNCTION_3_0();
  *v3 = v2;
  v5 = *(v4 + 1000);
  v6 = *(v4 + 952);
  v7 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v8 = v7;

  __swift_destroy_boxed_opaque_existential_1Tm((v2 + 416));
  __swift_destroy_boxed_opaque_existential_1Tm((v2 + 376));
  outlined destroy of String?(v2 + 336, &_s18SiriLinkFlowPlugin17LocationProviding_pSgMd, &_s18SiriLinkFlowPlugin17LocationProviding_pSgMR);
  outlined destroy of String?(v6, &_s12SiriOntology15TerminalElementV13DateTimeValueVSgMd, &_s12SiriOntology15TerminalElementV13DateTimeValueVSgMR);
  v9 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v9, v10, v11);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v2 = v1;
  OUTLINED_FUNCTION_3_0();
  *v3 = v2;
  v5 = *(v4 + 1008);
  v6 = *(v4 + 952);
  v7 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v8 = v7;

  __swift_destroy_boxed_opaque_existential_1Tm((v2 + 296));
  __swift_destroy_boxed_opaque_existential_1Tm((v2 + 256));
  outlined destroy of String?(v2 + 216, &_s18SiriLinkFlowPlugin17LocationProviding_pSgMd, &_s18SiriLinkFlowPlugin17LocationProviding_pSgMR);
  outlined destroy of String?(v6, &_s12SiriOntology15TerminalElementV13DateTimeValueVSgMd, &_s12SiriOntology15TerminalElementV13DateTimeValueVSgMR);
  v9 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v9, v10, v11);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v2 = v1;
  OUTLINED_FUNCTION_3_0();
  *v3 = v2;
  v5 = *(v4 + 1016);
  v6 = *(v4 + 952);
  v7 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v8 = v7;

  __swift_destroy_boxed_opaque_existential_1Tm((v2 + 176));
  __swift_destroy_boxed_opaque_existential_1Tm((v2 + 136));
  outlined destroy of String?(v2 + 96, &_s18SiriLinkFlowPlugin17LocationProviding_pSgMd, &_s18SiriLinkFlowPlugin17LocationProviding_pSgMR);
  outlined destroy of String?(v6, &_s12SiriOntology15TerminalElementV13DateTimeValueVSgMd, &_s12SiriOntology15TerminalElementV13DateTimeValueVSgMR);
  v9 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v9, v10, v11);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_3();
  *v2 = v1;
  OUTLINED_FUNCTION_46_4(v3, v4, v5);
  v7 = *(v6 + 1024);
  v8 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v9 = v8;
  *(v11 + 625) = v10;

  v12 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v12, v13, v14);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v2 = *(v1 + 1032);
  v3 = *(v1 + 952);
  v4 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v5 = v4;

  outlined destroy of String?(v3, &_s12SiriOntology15TerminalElementV13DateTimeValueVSgMd, &_s12SiriOntology15TerminalElementV13DateTimeValueVSgMR);
  v6 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v6, v7, v8);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_3();
  *v2 = v1;
  v4 = *(v3 + 1040);
  *v2 = *v0;
  *(v1 + 1048) = v5;

  v6 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v6, v7, v8);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v2 = *(v1 + 1056);
  v3 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v5, v6, v7);
}

{
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_3();
  *v2 = v1;
  v4 = v3[136];
  v5 = v3[135];
  v6 = v3[134];
  v7 = v3[88];
  v8 = v3[87];
  v9 = v3[86];
  v10 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v11 = v10;
  *(v13 + 1096) = v12;

  (*(v8 + 8))(v7, v9);
  v14 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v14, v15, v16);
}

uint64_t specialized LNValueType.getLNValue(nlIntent:parameterMetadata:contactResolver:locale:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_32_9();
  OUTLINED_FUNCTION_41_5();
  v25 = v24[121];
  v26 = v24[120];
  OUTLINED_FUNCTION_6_14();
  if (v27)
  {
    outlined destroy of String?(v26, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v28 = v24[125];
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_30_1(v30))
    {
      v31 = OUTLINED_FUNCTION_52();
      OUTLINED_FUNCTION_45(v31);
      OUTLINED_FUNCTION_26(&dword_0, v32, v33, "#LNValueType: getLNValue returning nil");
      OUTLINED_FUNCTION_17();
    }

    a21 = 0;
  }

  else
  {
    v34 = v24[123];
    v35 = v24[85];
    v36 = OUTLINED_FUNCTION_5_13(v24[122]);
    v37(v36);
    v24[68] = v25;
    __swift_allocate_boxed_opaque_existential_1(v24 + 65);
    OUTLINED_FUNCTION_23_9();
    v38();
    objc_allocWithZone(LNValue);
    v39 = @nonobjc LNValue.init(_:valueType:)(v24 + 65, v35);
    v40 = OUTLINED_FUNCTION_24_9(v39);
    v41(v40);
  }

  OUTLINED_FUNCTION_0_19();

  OUTLINED_FUNCTION_13_13();
  OUTLINED_FUNCTION_100();

  return v44(v42, v43, v44, v45, v46, v47, v48, v49, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
}

{
  OUTLINED_FUNCTION_32_9();
  OUTLINED_FUNCTION_41_5();
  v25 = v24[116];
  v26 = v24[115];
  OUTLINED_FUNCTION_6_14();
  if (v27)
  {
    outlined destroy of String?(v26, &_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
    v28 = v24[125];
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_30_1(v30))
    {
      v31 = OUTLINED_FUNCTION_52();
      OUTLINED_FUNCTION_45(v31);
      OUTLINED_FUNCTION_26(&dword_0, v32, v33, "#LNValueType: getLNValue returning nil");
      OUTLINED_FUNCTION_17();
    }

    a21 = 0;
  }

  else
  {
    v34 = v24[118];
    v35 = v24[85];
    v36 = OUTLINED_FUNCTION_5_13(v24[117]);
    v37(v36);
    v24[64] = v25;
    __swift_allocate_boxed_opaque_existential_1(v24 + 61);
    OUTLINED_FUNCTION_23_9();
    v38();
    objc_allocWithZone(LNValue);
    v39 = @nonobjc LNValue.init(_:valueType:)(v24 + 61, v35);
    v40 = OUTLINED_FUNCTION_24_9(v39);
    v41(v40);
  }

  OUTLINED_FUNCTION_0_19();

  OUTLINED_FUNCTION_13_13();
  OUTLINED_FUNCTION_100();

  return v44(v42, v43, v44, v45, v46, v47, v48, v49, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
}

{
  OUTLINED_FUNCTION_32_9();
  OUTLINED_FUNCTION_41_5();
  v25 = v24[102];
  v26 = v24[101];
  OUTLINED_FUNCTION_6_14();
  if (v27)
  {
    outlined destroy of String?(v26, &_s10GeoToolbox15PlaceDescriptorVSgMd, &_s10GeoToolbox15PlaceDescriptorVSgMR);
    v28 = v24[125];
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_30_1(v30))
    {
      v31 = OUTLINED_FUNCTION_52();
      OUTLINED_FUNCTION_45(v31);
      OUTLINED_FUNCTION_26(&dword_0, v32, v33, "#LNValueType: getLNValue returning nil");
      OUTLINED_FUNCTION_17();
    }

    a21 = 0;
  }

  else
  {
    v34 = v24[104];
    v35 = v24[103];
    v36 = v24[91];
    v37 = v24[90];
    v38 = v24[89];
    v39 = OUTLINED_FUNCTION_5_13(v35);
    v40(v39);
    PlaceDescriptor.convertToEntity()();
    OUTLINED_FUNCTION_30_7();
    lazy protocol witness table accessor for type PlaceDescriptorEntity and conformance PlaceDescriptorEntity(v41, v42);
    v43 = SystemIntentValueConvertibleEntity.asValue.getter();
    v44 = OUTLINED_FUNCTION_65_0(v43);
    v45(v44);
    (*(v35 + 8))(v34, v25);
  }

  OUTLINED_FUNCTION_0_19();

  OUTLINED_FUNCTION_13_13();
  OUTLINED_FUNCTION_100();

  return v48(v46, v47, v48, v49, v50, v51, v52, v53, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
}

{
  OUTLINED_FUNCTION_32_9();
  OUTLINED_FUNCTION_41_5();
  if (*(v24 + 1104))
  {
    v25 = [*(v24 + 1072) memberValueType];
    objc_opt_self();
    OUTLINED_FUNCTION_71();
    if (swift_dynamicCastObjCClass())
    {
      v26 = *(v24 + 680);

      v47 = *(v24 + 1104);
    }

    else
    {
      v33 = *(v24 + 1104);
      v34 = *(v24 + 680);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
      v35 = swift_allocObject();
      *(v35 + 16) = xmmword_216010;
      *(v35 + 32) = v33;
      v36 = v33;
      [v36 valueType];
      v37 = objc_allocWithZone(LNValue);
      v47 = OUTLINED_FUNCTION_77_1();
    }
  }

  else
  {

    v27 = *(v24 + 1000);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_30_1(v29))
    {
      v30 = OUTLINED_FUNCTION_52();
      OUTLINED_FUNCTION_45(v30);
      OUTLINED_FUNCTION_26(&dword_0, v31, v32, "#LNValueType: getLNValue returning nil");
      OUTLINED_FUNCTION_17();
    }

    v47 = 0;
  }

  OUTLINED_FUNCTION_0_19();

  OUTLINED_FUNCTION_13_13();
  OUTLINED_FUNCTION_100();

  return v40(v38, v39, v40, v41, v42, v43, v44, v45, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, v47, a22, a23, a24);
}

{
  OUTLINED_FUNCTION_32_9();
  OUTLINED_FUNCTION_41_5();
  v25 = v24[121];
  v26 = v24[120];
  OUTLINED_FUNCTION_6_14();
  if (v27)
  {
    outlined destroy of String?(v26, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v28 = v24[124];
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_30_1(v30))
    {
      v31 = OUTLINED_FUNCTION_52();
      OUTLINED_FUNCTION_45(v31);
      OUTLINED_FUNCTION_26(&dword_0, v32, v33, "#LNValueType: getLNValue returning nil");
      OUTLINED_FUNCTION_17();
    }

    a21 = 0;
  }

  else
  {
    v34 = v24[123];
    v35 = v24[85];
    v36 = OUTLINED_FUNCTION_5_13(v24[122]);
    v37(v36);
    v24[68] = v25;
    __swift_allocate_boxed_opaque_existential_1(v24 + 65);
    OUTLINED_FUNCTION_23_9();
    v38();
    objc_allocWithZone(LNValue);
    v39 = @nonobjc LNValue.init(_:valueType:)(v24 + 65, v35);
    v40 = OUTLINED_FUNCTION_24_9(v39);
    v41(v40);
  }

  OUTLINED_FUNCTION_0_19();

  OUTLINED_FUNCTION_13_13();
  OUTLINED_FUNCTION_100();

  return v44(v42, v43, v44, v45, v46, v47, v48, v49, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
}

{
  OUTLINED_FUNCTION_32_9();
  OUTLINED_FUNCTION_41_5();
  v25 = v24[116];
  v26 = v24[115];
  OUTLINED_FUNCTION_6_14();
  if (v27)
  {
    outlined destroy of String?(v26, &_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
    v28 = v24[124];
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_30_1(v30))
    {
      v31 = OUTLINED_FUNCTION_52();
      OUTLINED_FUNCTION_45(v31);
      OUTLINED_FUNCTION_26(&dword_0, v32, v33, "#LNValueType: getLNValue returning nil");
      OUTLINED_FUNCTION_17();
    }

    a21 = 0;
  }

  else
  {
    v34 = v24[118];
    v35 = v24[85];
    v36 = OUTLINED_FUNCTION_5_13(v24[117]);
    v37(v36);
    v24[64] = v25;
    __swift_allocate_boxed_opaque_existential_1(v24 + 61);
    OUTLINED_FUNCTION_23_9();
    v38();
    objc_allocWithZone(LNValue);
    v39 = @nonobjc LNValue.init(_:valueType:)(v24 + 61, v35);
    v40 = OUTLINED_FUNCTION_24_9(v39);
    v41(v40);
  }

  OUTLINED_FUNCTION_0_19();

  OUTLINED_FUNCTION_13_13();
  OUTLINED_FUNCTION_100();

  return v44(v42, v43, v44, v45, v46, v47, v48, v49, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
}

{
  OUTLINED_FUNCTION_32_9();
  OUTLINED_FUNCTION_41_5();
  v25 = v24[102];
  v26 = v24[101];
  OUTLINED_FUNCTION_6_14();
  if (v27)
  {
    outlined destroy of String?(v26, &_s10GeoToolbox15PlaceDescriptorVSgMd, &_s10GeoToolbox15PlaceDescriptorVSgMR);
    v28 = v24[124];
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_30_1(v30))
    {
      v31 = OUTLINED_FUNCTION_52();
      OUTLINED_FUNCTION_45(v31);
      OUTLINED_FUNCTION_26(&dword_0, v32, v33, "#LNValueType: getLNValue returning nil");
      OUTLINED_FUNCTION_17();
    }

    a21 = 0;
  }

  else
  {
    v34 = v24[104];
    v35 = v24[103];
    v36 = v24[91];
    v37 = v24[90];
    v38 = v24[89];
    v39 = OUTLINED_FUNCTION_5_13(v35);
    v40(v39);
    PlaceDescriptor.convertToEntity()();
    OUTLINED_FUNCTION_30_7();
    lazy protocol witness table accessor for type PlaceDescriptorEntity and conformance PlaceDescriptorEntity(v41, v42);
    v43 = SystemIntentValueConvertibleEntity.asValue.getter();
    v44 = OUTLINED_FUNCTION_65_0(v43);
    v45(v44);
    (*(v35 + 8))(v34, v25);
  }

  OUTLINED_FUNCTION_0_19();

  OUTLINED_FUNCTION_13_13();
  OUTLINED_FUNCTION_100();

  return v48(v46, v47, v48, v49, v50, v51, v52, v53, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
}

{
  OUTLINED_FUNCTION_32_9();
  OUTLINED_FUNCTION_41_5();
  if (*(v24 + 1096))
  {
    v25 = [*(v24 + 1064) memberValueType];
    objc_opt_self();
    OUTLINED_FUNCTION_71();
    if (swift_dynamicCastObjCClass())
    {
      v26 = *(v24 + 680);

      v47 = *(v24 + 1096);
    }

    else
    {
      v33 = *(v24 + 1096);
      v34 = *(v24 + 680);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
      v35 = swift_allocObject();
      *(v35 + 16) = xmmword_216010;
      *(v35 + 32) = v33;
      v36 = v33;
      [v36 valueType];
      v37 = objc_allocWithZone(LNValue);
      v47 = OUTLINED_FUNCTION_77_1();
    }
  }

  else
  {

    v27 = *(v24 + 992);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_30_1(v29))
    {
      v30 = OUTLINED_FUNCTION_52();
      OUTLINED_FUNCTION_45(v30);
      OUTLINED_FUNCTION_26(&dword_0, v31, v32, "#LNValueType: getLNValue returning nil");
      OUTLINED_FUNCTION_17();
    }

    v47 = 0;
  }

  OUTLINED_FUNCTION_0_19();

  OUTLINED_FUNCTION_13_13();
  OUTLINED_FUNCTION_100();

  return v40(v38, v39, v40, v41, v42, v43, v44, v45, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, v47, a22, a23, a24);
}

uint64_t specialized LNValueType.getLNValue(nlIntent:parameterMetadata:contactResolver:locale:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[85] = a5;
  v7[84] = a4;
  v7[83] = a2;
  v7[82] = a1;
  v11 = type metadata accessor for Locale();
  v7[86] = v11;
  v12 = *(v11 - 8);
  v7[87] = v12;
  v13 = *(v12 + 64) + 15;
  v7[88] = swift_task_alloc();
  v14 = type metadata accessor for PlaceDescriptorEntity();
  v7[89] = v14;
  v15 = *(v14 - 8);
  v7[90] = v15;
  v16 = *(v15 + 64) + 15;
  v7[91] = swift_task_alloc();
  v17 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR) - 8) + 64) + 15;
  v7[92] = swift_task_alloc();
  v18 = type metadata accessor for URL();
  v7[93] = v18;
  v19 = *(v18 - 8);
  v7[94] = v19;
  v20 = *(v19 + 64) + 15;
  v7[95] = swift_task_alloc();
  v21 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PersonNameComponentsVSgMd, &_s10Foundation20PersonNameComponentsVSgMR) - 8) + 64) + 15;
  v7[96] = swift_task_alloc();
  v22 = type metadata accessor for PersonNameComponents();
  v7[97] = v22;
  v23 = *(v22 - 8);
  v7[98] = v23;
  v24 = *(v23 + 64) + 15;
  v7[99] = swift_task_alloc();
  v7[100] = swift_task_alloc();
  v25 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10GeoToolbox15PlaceDescriptorVSgMd, &_s10GeoToolbox15PlaceDescriptorVSgMR) - 8) + 64) + 15;
  v7[101] = swift_task_alloc();
  v26 = type metadata accessor for PlaceDescriptor();
  v7[102] = v26;
  v27 = *(v26 - 8);
  v7[103] = v27;
  v28 = *(v27 + 64) + 15;
  v7[104] = swift_task_alloc();
  v29 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation8CalendarV14RecurrenceRuleVSgMd, &_s10Foundation8CalendarV14RecurrenceRuleVSgMR) - 8) + 64) + 15;
  v7[105] = swift_task_alloc();
  v30 = type metadata accessor for Calendar.RecurrenceRule();
  v7[106] = v30;
  v31 = *(v30 - 8);
  v7[107] = v31;
  v32 = *(v31 + 64) + 15;
  v7[108] = swift_task_alloc();
  v7[109] = swift_task_alloc();
  v33 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR) - 8) + 64) + 15;
  v7[110] = swift_task_alloc();
  v34 = type metadata accessor for DateInterval();
  v7[111] = v34;
  v35 = *(v34 - 8);
  v7[112] = v35;
  v36 = *(v35 + 64) + 15;
  v7[113] = swift_task_alloc();
  v7[114] = swift_task_alloc();
  v37 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR) - 8) + 64) + 15;
  v7[115] = swift_task_alloc();
  v38 = type metadata accessor for DateComponents();
  v7[116] = v38;
  v39 = *(v38 - 8);
  v7[117] = v39;
  v40 = *(v39 + 64) + 15;
  v7[118] = swift_task_alloc();
  v41 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology15TerminalElementV13DateTimeValueVSgMd, &_s12SiriOntology15TerminalElementV13DateTimeValueVSgMR) - 8) + 64) + 15;
  v7[119] = swift_task_alloc();
  v42 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR) - 8) + 64) + 15;
  v7[120] = swift_task_alloc();
  v43 = type metadata accessor for Date();
  v7[121] = v43;
  v44 = *(v43 - 8);
  v7[122] = v44;
  v45 = *(v44 + 64) + 15;
  v7[123] = swift_task_alloc();
  v7[5] = a6;
  v7[6] = a7;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v7 + 2);
  (*(*(a6 - 8) + 16))(boxed_opaque_existential_1, a3, a6);

  return _swift_task_switch(specialized LNValueType.getLNValue(nlIntent:parameterMetadata:contactResolver:locale:), 0, 0);
}

uint64_t get_enum_tag_for_layout_string_18SiriLinkFlowPlugin27VoiceCommandIntentValueTypeO(uint64_t a1)
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

uint64_t outlined copy of VoiceCommandIntentValueType(uint64_t a1, uint64_t a2, char a3)
{
  if (!a3)
  {
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type PlaceDescriptorEntity and conformance PlaceDescriptorEntity(unint64_t *a1, void (*a2)(uint64_t))
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

void outlined consume of ParsedMeasurement?(uint64_t a1, void *a2, char a3)
{
  if (a3 != -1)
  {
    outlined consume of ParsedMeasurement(a1, a2, a3 & 1);
  }
}

void outlined consume of ParsedMeasurement(uint64_t a1, void *a2, char a3)
{
  if (a3)
  {
  }
}

uint64_t OUTLINED_FUNCTION_0_19()
{
  v1 = v0[123];
  v2 = v0[120];
  v3 = v0[119];
  v4 = v0[118];
  v5 = v0[115];
  v6 = v0[114];
  v7 = v0[113];
  v8 = v0[110];
  v9 = v0[109];
  v12 = v0[108];
  v13 = v0[105];
  v14 = v0[104];
  v15 = v0[101];
  v16 = v0[100];
  v17 = v0[99];
  v18 = v0[96];
  v19 = v0[95];
  v20 = v0[92];
  v21 = v0[91];
  v22 = v0[88];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
}

uint64_t OUTLINED_FUNCTION_1_26()
{
  v4 = v0[108];
  v5 = v0[105];
  v6 = v0[104];
  v7 = v0[101];
  v8 = v0[100];
  v9 = v0[99];
  v10 = v0[96];
  v11 = v0[95];
  v2 = v0[92];
  v12 = v0[91];
  v13 = v0[88];

  return __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
}

uint64_t OUTLINED_FUNCTION_3_18()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_14_11()
{

  return IntentNodeTraversable.value<A>(forNode:)();
}

uint64_t OUTLINED_FUNCTION_24_9(uint64_t a1)
{
  *(v3 - 80) = a1;
  v4 = *(v2 + 8);
  return v1;
}

uint64_t OUTLINED_FUNCTION_34_6()
{
  v1 = v0[99];
  v2 = v0[97];
  v3 = v0[96];
  v4 = v0[85];
  v5 = *(v0[98] + 32);
  return v0[100];
}

uint64_t OUTLINED_FUNCTION_37_5()
{
  v1 = v0[93];
  v2 = v0[92];
  v3 = v0[85];
  v4 = *(v0[94] + 32);
  return v0[95];
}

uint64_t OUTLINED_FUNCTION_43_3(uint64_t a1, uint64_t a2, char a3)
{
  v8 = *(v4 + 680);
  v9 = *(v4 + 664);

  return ParsedMeasurement.toLNValue(unitType:parameterMetadata:valueType:)(v3, v9, v8, a1, a2, a3 & 1);
}

uint64_t OUTLINED_FUNCTION_46_4(uint64_t result, uint64_t a2, char a3)
{
  *(v3 + 576) = a3;
  *(v3 + 568) = a2;
  *(v3 + 560) = result;
  *(v3 + 552) = v4;
  return result;
}

id OUTLINED_FUNCTION_48_4(void *a1, float a2)
{
  *v4 = a2;
  *(v4 + 4) = v2;
  *a1 = v2;

  return v3;
}

uint64_t OUTLINED_FUNCTION_49_1(uint64_t result)
{
  *(result + 8) = v1;
  v3 = *(v2 + 952);
  return result;
}

uint64_t OUTLINED_FUNCTION_50_1(uint64_t a1)
{
  *(a1 + 8) = v1;
  result = *(v2 + 960);
  v4 = *(v2 + 952);
  return result;
}

uint64_t OUTLINED_FUNCTION_52_3()
{

  return static NSObject.== infix(_:_:)();
}

uint64_t OUTLINED_FUNCTION_56_0()
{

  return swift_dynamicCastObjCClass();
}

uint64_t OUTLINED_FUNCTION_57_2()
{
  *(v0 + 128) = 0;
  *(v0 + 112) = 0u;
  *(v0 + 96) = 0u;

  return static Device.current.getter();
}

uint64_t OUTLINED_FUNCTION_58_1()
{
  *(v0 + 248) = 0;
  *(v0 + 232) = 0u;
  *(v0 + 216) = 0u;

  return static Device.current.getter();
}

id OUTLINED_FUNCTION_59_3(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);

  return @nonobjc LNValue.init(_:valueType:)(va, a1);
}

uint64_t OUTLINED_FUNCTION_65_0(uint64_t a1)
{
  *(v3 - 80) = a1;
  v4 = *(v2 + 8);
  return v1;
}

void OUTLINED_FUNCTION_74_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_75_0()
{
  v2 = v0[71];
  v3 = v0[70];
  v4 = v0[85];

  return type metadata accessor for LNCodableValue();
}

void OUTLINED_FUNCTION_76_1(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 2u);
}

id OUTLINED_FUNCTION_77_1()
{

  return @nonobjc LNValue.init(_:memberValueType:)(v0, v1);
}

uint64_t OUTLINED_FUNCTION_78_0(float a1)
{
  *v1 = a1;

  return swift_getErrorValue();
}

Class OUTLINED_FUNCTION_79_0()
{
  v2 = v0[84];
  v3 = v0[82];

  return static InputUtils.getPerson(from:contactResolver:locale:)(v3, v0 + 2, v2);
}

void OUTLINED_FUNCTION_80_1()
{

  outlined consume of ParsedMeasurement?(v0, v1, v2);
}

uint64_t OUTLINED_FUNCTION_81_0()
{
  *(v0 + 368) = 0;
  *(v0 + 336) = 0u;
  *(v0 + 352) = 0u;

  return static Device.current.getter();
}

void OUTLINED_FUNCTION_82_1(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 2u);
}

void OUTLINED_FUNCTION_83_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

BOOL OUTLINED_FUNCTION_85_1()
{

  return os_log_type_enabled(v0, v1);
}

void static InstrumentationUtils.emitAutoShortcutUsedInstrumentation(autoShortcutTemplate:)()
{
  OUTLINED_FUNCTION_45_3();
  v0 = [objc_allocWithZone(FLOWLINKSchemaFLOWLINKAutoShortcutTemplateUsed) init];
  if (v0)
  {
    v1 = v0;
    v2 = OUTLINED_FUNCTION_17_14();
    outlined bridged method (mbgnn) of @objc FLOWLINKSchemaFLOWLINKAutoShortcutTemplateUsed.autoshortcutTemplate.setter(v2, v3, v4);
    if (one-time initialization token for voiceCommands != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v5 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_59(v5, static Logger.voiceCommands);
    v6 = v1;
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = OUTLINED_FUNCTION_48();
      v10 = OUTLINED_FUNCTION_85();
      v16 = v10;
      *v9 = 136315138;
      swift_getObjectType();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo46FLOWLINKSchemaFLOWLINKAutoShortcutTemplateUsedCmMd, &_sSo46FLOWLINKSchemaFLOWLINKAutoShortcutTemplateUsedCmMR);
      v11 = String.init<A>(describing:)();
      v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v16);

      *(v9 + 4) = v13;
      _os_log_impl(&dword_0, v7, v8, "#SLF SELF emitting event: %s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v10);
      OUTLINED_FUNCTION_19_0();
      OUTLINED_FUNCTION_15_0();
    }

    v14 = OUTLINED_FUNCTION_19_8();
    _s18SiriLinkFlowPlugin20InstrumentationUtilsO04emitbcE033_4B7DCD361232BDB55F45721261AF31265event0g7RequestB0yx_SbtSo08SISchemaE7MessageCRbzlFZSo46FLOWLINKSchemaFLOWLINKAutoShortcutTemplateUsedC_Tt1g5(v14, v15);
  }
}

void static InstrumentationUtils.emitAppShorcutGeneralizedInvocationInstrumentation(appShortcutIdentifier:)(uint64_t a1, uint64_t a2)
{
  v4 = [objc_allocWithZone(FLOWLINKSchemaFLOWLINKAppShortcutGeneralizedExecutionUsed) init];
  if (v4)
  {
    v5 = v4;
    outlined bridged method (mbgnn) of @objc FLOWLINKSchemaFLOWLINKAppShortcutGeneralizedExecutionUsed.appShortcutId.setter(a1, a2, v4);
    _s18SiriLinkFlowPlugin20InstrumentationUtilsO04emitbcE033_4B7DCD361232BDB55F45721261AF31265event0g7RequestB0yx_SbtSo08SISchemaE7MessageCRbzlFZSo57FLOWLINKSchemaFLOWLINKAppShortcutGeneralizedExecutionUsedC_Tt1g5(v5, 0);
  }
}

void _s18SiriLinkFlowPlugin20InstrumentationUtilsO04emitbcE033_4B7DCD361232BDB55F45721261AF3126LL5event0g7RequestB0yx_SbtSo08SISchemaE7MessageCRbzlFZSo46FLOWLINKSchemaFLOWLINKAutoShortcutTemplateUsedC_Tt1g5(uint64_t a1, int a2)
{
  v98 = a1;
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v8 = &v87 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v87 - v10;
  __chkstk_darwin(v9);
  v13 = &v87 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v15 = *(*(v14 - 8) + 64);
  v16 = __chkstk_darwin(v14 - 8);
  v18 = &v87 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v16);
  v21 = &v87 - v20;
  __chkstk_darwin(v19);
  v23 = &v87 - v22;
  v24 = [objc_allocWithZone(FLOWLINKSchemaFLOWLINKClientEvent) init];
  if (v24)
  {
    v95 = a2;
    v99 = v24;
    v25 = [objc_allocWithZone(FLOWSchemaFLOWEventMetadata) init];
    if (v25)
    {
      v96 = v25;
      v97 = v23;
      v93 = v13;
      v94 = v4;
      ObjectType = swift_getObjectType();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo46FLOWLINKSchemaFLOWLINKAutoShortcutTemplateUsedCmMd, &_sSo46FLOWLINKSchemaFLOWLINKAutoShortcutTemplateUsedCmMR);
      v26 = String.init<A>(describing:)();
      v28 = v27;
      type metadata accessor for SiriEnvironment();
      static SiriEnvironment.default.getter();
      SiriEnvironment.flowTask.getter();

      v29 = dispatch thunk of FlowTaskProvider.id.getter();
      v31 = v30;

      if (v31)
      {
        v91 = v26;
        v32 = v28;
        v33 = v3;
        v34 = v97;
        UUID.init(uuidString:)();
        outlined init with copy of UUID?(v34, v21);
        if (__swift_getEnumTagSinglePayload(v21, 1, v33) == 1)
        {
          v35 = v29;
          outlined destroy of UUID?(v21);
          v36 = v32;
          if (one-time initialization token for voiceCommands != -1)
          {
            swift_once();
          }

          v37 = type metadata accessor for Logger();
          __swift_project_value_buffer(v37, static Logger.voiceCommands);

          v38 = Logger.logObject.getter();
          v39 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v38, v39))
          {
            v40 = swift_slowAlloc();
            ObjectType = swift_slowAlloc();
            *v40 = 136315394;
            v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v31, &ObjectType);

            *(v40 + 4) = v41;
            *(v40 + 12) = 2080;
            v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v91, v36, &ObjectType);

            *(v40 + 14) = v42;
            _os_log_impl(&dword_0, v38, v39, "#SLF SELF Log, current taskId: %s, is not a valid UUID String, cannot emit %s", v40, 0x16u);
            swift_arrayDestroy();
          }

          else
          {
          }
        }

        else
        {
          v89 = v29;
          v90 = v31;
          v51 = v93;
          v50 = v94;
          v88 = *(v94 + 32);
          v88(v93, v21, v33);
          v52 = static InstrumentationUtils.createFlowId()();
          v92 = v33;
          v53 = v32;
          if (v52)
          {
            v54 = v52;

            type metadata accessor for SISchemaUUID();
            v87 = *(v50 + 16);
            v87(v11, v51, v92);
            v55 = SISchemaUUID.__allocating_init(nsuuid:)(v11);
            v56 = v96;
            [v96 setTaskId:v55];

            v91 = v54;
            [v56 setFlowId:v54];
            static SiriEnvironment.default.getter();
            SiriEnvironment.currentRequest.getter();

            CurrentRequest.resultCandidateId.getter();
            v58 = v57;

            if (v58)
            {

              UUID.init(uuidString:)();

              if (__swift_getEnumTagSinglePayload(v18, 1, v92) == 1)
              {
                outlined destroy of UUID?(v18);
                v59 = v96;
                v60 = v97;
                v61 = v94;
                v62 = v90;
                v63 = v92;
              }

              else
              {
                v63 = v92;
                v88(v8, v18, v92);
                v87(v11, v8, v63);
                v74 = SISchemaUUID.__allocating_init(nsuuid:)(v11);
                v59 = v96;
                [v96 setTrpId:v74];

                v61 = v94;
                (*(v94 + 8))(v8, v63);
                v60 = v97;
                v62 = v90;
              }

              v73 = String._bridgeToObjectiveC()();
            }

            else
            {
              v73 = 0;
              v59 = v96;
              v60 = v97;
              v61 = v94;
              v62 = v90;
              v63 = v92;
            }

            [v59 setResultCandidateId:v73];

            [v99 setEventMetadata:v59];
            objc_opt_self();
            v75 = swift_dynamicCastObjCClass();
            v76 = v93;
            if (v75)
            {
              [v99 setLinkActionContext:v75];
            }

            else
            {
              objc_opt_self();
              v77 = swift_dynamicCastObjCClass();
              if (v77)
              {
                [v99 setEntityDisambiguationContext:v77];
              }

              else
              {
                objc_opt_self();
                v79 = swift_dynamicCastObjCClass();
                if (v79)
                {
                  [v99 setActionConversionContext:v79];
                }

                else
                {
                  objc_opt_self();
                  v80 = swift_dynamicCastObjCClass();
                  if (v80)
                  {
                    [v99 setActionExecutionContext:v80];
                  }

                  else
                  {
                    objc_opt_self();
                    v81 = swift_dynamicCastObjCClass();
                    if (v81)
                    {
                      [v99 setActionPromptForValueContext:v81];
                    }

                    else
                    {
                      objc_opt_self();
                      v82 = swift_dynamicCastObjCClass();
                      if (v82)
                      {
                        [v99 setActionParameterDisambiguationContext:v82];
                      }

                      else
                      {
                        objc_opt_self();
                        v83 = swift_dynamicCastObjCClass();
                        if (v83)
                        {
                          [v99 setActionParameterConfirmationContext:v83];
                        }

                        else
                        {
                          objc_opt_self();
                          v84 = swift_dynamicCastObjCClass();
                          if (v84)
                          {
                            [v99 setActionConfirmationContext:v84];
                          }

                          else
                          {
                            [v99 setAutoShortcutTemplateUsed:v98];
                          }
                        }
                      }
                    }
                  }
                }
              }
            }

            v85 = [objc_opt_self() sharedStream];
            [v85 emitMessage:v99];
            swift_unknownObjectRelease();
            v86 = v91;
            if (v95)
            {
              static InstrumentationUtils.emitLinkFlowRequestLink(taskId:flowId:)(v89, v62, v91);
            }

            (*(v61 + 8))(v76, v63);
            v78 = v60;
            goto LABEL_52;
          }

          v64 = v92;

          if (one-time initialization token for voiceCommands != -1)
          {
            swift_once();
          }

          v65 = type metadata accessor for Logger();
          __swift_project_value_buffer(v65, static Logger.voiceCommands);

          v66 = Logger.logObject.getter();
          v67 = static os_log_type_t.error.getter();

          v68 = os_log_type_enabled(v66, v67);
          v69 = v96;
          if (v68)
          {
            v70 = swift_slowAlloc();
            v71 = swift_slowAlloc();
            ObjectType = v71;
            *v70 = 136315138;
            v72 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v91, v53, &ObjectType);

            *(v70 + 4) = v72;
            _os_log_impl(&dword_0, v66, v67, "#SLF SELF Log, current flowId is not a valid UUID String, cannot emit %s", v70, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v71);
          }

          else
          {
          }

          (*(v94 + 8))(v93, v64);
        }

        v78 = v97;
LABEL_52:
        outlined destroy of UUID?(v78);
        return;
      }

      if (one-time initialization token for voiceCommands != -1)
      {
        swift_once();
      }

      v44 = type metadata accessor for Logger();
      __swift_project_value_buffer(v44, static Logger.voiceCommands);

      v45 = Logger.logObject.getter();
      v46 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        v48 = swift_slowAlloc();
        ObjectType = v48;
        *v47 = 136315138;
        v49 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v28, &ObjectType);

        *(v47 + 4) = v49;
        _os_log_impl(&dword_0, v45, v46, "#SLF SELF Log, current taskId is nil, cannot emit %s", v47, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v48);
      }

      else
      {
      }
    }

    else
    {
      v43 = v99;
    }
  }
}

void _s18SiriLinkFlowPlugin20InstrumentationUtilsO04emitbcE033_4B7DCD361232BDB55F45721261AF3126LL5event0g7RequestB0yx_SbtSo08SISchemaE7MessageCRbzlFZSo57FLOWLINKSchemaFLOWLINKAppShortcutGeneralizedExecutionUsedC_Tt1g5(uint64_t a1, int a2)
{
  v116 = a1;
  v7 = type metadata accessor for UUID();
  v8 = OUTLINED_FUNCTION_7_1(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  __chkstk_darwin(v8);
  OUTLINED_FUNCTION_50_0();
  OUTLINED_FUNCTION_34_7();
  v14 = __chkstk_darwin(v13);
  v16 = v105 - v15;
  __chkstk_darwin(v14);
  OUTLINED_FUNCTION_33_4();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v18 = OUTLINED_FUNCTION_14(v17);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  OUTLINED_FUNCTION_50_0();
  v23 = v21 - v22;
  __chkstk_darwin(v24);
  OUTLINED_FUNCTION_44_4();
  __chkstk_darwin(v25);
  v27 = v105 - v26;
  v28 = OUTLINED_FUNCTION_35_6(objc_allocWithZone(FLOWLINKSchemaFLOWLINKClientEvent));
  if (!v28)
  {
    goto LABEL_52;
  }

  v113 = a2;
  v117 = v28;
  v29 = [objc_allocWithZone(FLOWSchemaFLOWEventMetadata) *(v2 + 2304)];
  if (v29)
  {
    v30 = v29;
    v114 = v7;
    v115 = v27;
    v111 = v3;
    v112 = v10;
    ObjectType = swift_getObjectType();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo57FLOWLINKSchemaFLOWLINKAppShortcutGeneralizedExecutionUsedCmMd, &_sSo57FLOWLINKSchemaFLOWLINKAppShortcutGeneralizedExecutionUsedCmMR);
    v110 = String.init<A>(describing:)();
    v32 = v31;
    type metadata accessor for SiriEnvironment();
    static SiriEnvironment.default.getter();
    SiriEnvironment.flowTask.getter();

    v33 = dispatch thunk of FlowTaskProvider.id.getter();
    v35 = v34;

    if (!v35)
    {
      if (one-time initialization token for voiceCommands != -1)
      {
        OUTLINED_FUNCTION_0();
      }

      v50 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_59(v50, static Logger.voiceCommands);

      v51 = Logger.logObject.getter();
      v52 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v51, v52))
      {
        v53 = OUTLINED_FUNCTION_48();
        v54 = OUTLINED_FUNCTION_85();
        ObjectType = v54;
        *v53 = 136315138;
        v55 = v30;
        v56 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v110, v32, &ObjectType);

        *(v53 + 4) = v56;
        OUTLINED_FUNCTION_46_5(&dword_0, v57, v58, "#SLF SELF Log, current taskId is nil, cannot emit %s");
        __swift_destroy_boxed_opaque_existential_1Tm(v54);
        OUTLINED_FUNCTION_15_0();
        OUTLINED_FUNCTION_15_0();
      }

      else
      {
      }

      goto LABEL_52;
    }

    v36 = v32;
    v37 = v115;
    v109 = v35;
    UUID.init(uuidString:)();
    outlined init with copy of UUID?(v37, v5);
    v38 = v114;
    if (__swift_getEnumTagSinglePayload(v5, 1, v114) == 1)
    {
      v39 = v33;
      outlined destroy of UUID?(v5);
      if (one-time initialization token for voiceCommands != -1)
      {
        OUTLINED_FUNCTION_0();
      }

      v40 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_59(v40, static Logger.voiceCommands);
      v41 = v36;

      v42 = v109;

      v43 = Logger.logObject.getter();
      v44 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v43, v44))
      {
        v45 = OUTLINED_FUNCTION_25_5();
        ObjectType = OUTLINED_FUNCTION_20_6();
        *v45 = 136315394;
        v46 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v42, &ObjectType);

        *(v45 + 4) = v46;
        *(v45 + 12) = 2080;
        v47 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v110, v41, &ObjectType);

        *(v45 + 14) = v47;
        _os_log_impl(&dword_0, v43, v44, "#SLF SELF Log, current taskId: %s, is not a valid UUID String, cannot emit %s", v45, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_19_0();
        OUTLINED_FUNCTION_15_0();
      }

      else
      {
      }
    }

    else
    {
      v107 = v33;
      v108 = v30;
      v60 = v111;
      v59 = v112;
      v106 = *(v112 + 32);
      v106(v111, v5, v38);
      v61 = static InstrumentationUtils.createFlowId()();
      if (v61)
      {
        v62 = v61;

        v63 = type metadata accessor for SISchemaUUID();
        v105[0] = *(v59 + 16);
        v105[1] = v59 + 16;
        (v105[0])(v16, v60, v38);
        v105[2] = v63;
        v64 = SISchemaUUID.__allocating_init(nsuuid:)(v16);
        v65 = v108;
        [v108 setTaskId:v64];

        v110 = v62;
        [v65 setFlowId:v62];
        static SiriEnvironment.default.getter();
        SiriEnvironment.currentRequest.getter();

        CurrentRequest.resultCandidateId.getter();
        v67 = v66;

        if (v67)
        {

          UUID.init(uuidString:)();

          v68 = OUTLINED_FUNCTION_14_12();
          if (__swift_getEnumTagSinglePayload(v68, v69, v38) == 1)
          {
            outlined destroy of UUID?(v23);
            v70 = v108;
          }

          else
          {
            v106(v4, v23, v38);
            (v105[0])(v16, v4, v38);
            v86 = SISchemaUUID.__allocating_init(nsuuid:)(v16);
            v70 = v108;
            [v108 setTrpId:v86];

            (*(v112 + 8))(v4, v38);
          }

          v85 = v115;
          v84 = v109;
          v83 = String._bridgeToObjectiveC()();
        }

        else
        {
          v83 = 0;
          v70 = v108;
          v84 = v109;
          v85 = v115;
        }

        [v70 setResultCandidateId:v83];

        [v117 setEventMetadata:v70];
        objc_opt_self();
        v87 = OUTLINED_FUNCTION_37_6();
        v89 = v111;
        v88 = v112;
        v90 = v114;
        if (v87)
        {
          [v117 setLinkActionContext:v87];
        }

        else
        {
          objc_opt_self();
          v91 = OUTLINED_FUNCTION_37_6();
          if (v91)
          {
            [v117 setEntityDisambiguationContext:v91];
          }

          else
          {
            objc_opt_self();
            v93 = OUTLINED_FUNCTION_37_6();
            if (v93)
            {
              [v117 setActionConversionContext:v93];
            }

            else
            {
              objc_opt_self();
              v94 = OUTLINED_FUNCTION_37_6();
              if (v94)
              {
                [v117 setActionExecutionContext:v94];
              }

              else
              {
                objc_opt_self();
                v95 = OUTLINED_FUNCTION_37_6();
                if (v95)
                {
                  [v117 setActionPromptForValueContext:v95];
                }

                else
                {
                  objc_opt_self();
                  v96 = OUTLINED_FUNCTION_37_6();
                  if (v96)
                  {
                    [v117 setActionParameterDisambiguationContext:v96];
                  }

                  else
                  {
                    objc_opt_self();
                    v97 = OUTLINED_FUNCTION_37_6();
                    if (v97)
                    {
                      [v117 setActionParameterConfirmationContext:v97];
                    }

                    else
                    {
                      objc_opt_self();
                      v98 = OUTLINED_FUNCTION_37_6();
                      if (v98)
                      {
                        [v117 setActionConfirmationContext:v98];
                      }

                      else
                      {
                        objc_opt_self();
                        v101 = OUTLINED_FUNCTION_49_2();
                        if (v101)
                        {
                          [v117 setAutoShortcutTemplateUsed:v101];
                        }

                        else
                        {
                          objc_opt_self();
                          v102 = OUTLINED_FUNCTION_49_2();
                          if (v102)
                          {
                            [v117 setLinkActionTier1:v102];
                          }

                          else
                          {
                            objc_opt_self();
                            v103 = OUTLINED_FUNCTION_49_2();
                            if (v103)
                            {
                              [v117 setActionParameterUpdated:v103];
                            }

                            else
                            {
                              objc_opt_self();
                              v104 = OUTLINED_FUNCTION_49_2();
                              if (v104)
                              {
                                [v117 setAppShortcutFirstRunConfirmationContext:v104];
                              }

                              else
                              {
                                [v117 setAppShortcutGeneralizedExecutionUsed:v116];
                              }
                            }
                          }
                        }

                        v70 = v108;
                        v84 = v109;
                        v90 = v114;
                        v85 = v115;
                        v89 = v111;
                        v88 = v112;
                      }
                    }
                  }
                }
              }
            }
          }
        }

        v99 = [objc_opt_self() sharedStream];
        [v99 emitMessage:v117];
        swift_unknownObjectRelease();
        v100 = v110;
        if (v113)
        {
          static InstrumentationUtils.emitLinkFlowRequestLink(taskId:flowId:)(v107, v84, v110);
        }

        (*(v88 + 8))(v89, v90);
        v92 = v85;
        goto LABEL_51;
      }

      if (one-time initialization token for voiceCommands != -1)
      {
        OUTLINED_FUNCTION_0();
      }

      v71 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_59(v71, static Logger.voiceCommands);
      v72 = v36;

      v73 = Logger.logObject.getter();
      v74 = static os_log_type_t.error.getter();

      v75 = os_log_type_enabled(v73, v74);
      v76 = v108;
      v77 = v112;
      if (v75)
      {
        v78 = OUTLINED_FUNCTION_48();
        v79 = OUTLINED_FUNCTION_85();
        ObjectType = v79;
        *v78 = 136315138;
        v80 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v110, v72, &ObjectType);

        *(v78 + 4) = v80;
        OUTLINED_FUNCTION_46_5(&dword_0, v81, v82, "#SLF SELF Log, current flowId is not a valid UUID String, cannot emit %s");
        __swift_destroy_boxed_opaque_existential_1Tm(v79);
        OUTLINED_FUNCTION_11_0();
        OUTLINED_FUNCTION_15_0();
      }

      else
      {
      }

      (*(v77 + 8))(v111, v114);
    }

    v92 = v115;
LABEL_51:
    outlined destroy of UUID?(v92);
LABEL_52:
    OUTLINED_FUNCTION_42();
    return;
  }

  OUTLINED_FUNCTION_42();
}

void _s18SiriLinkFlowPlugin20InstrumentationUtilsO04emitbcE033_4B7DCD361232BDB55F45721261AF3126LL5event0g7RequestB0yx_SbtSo08SISchemaE7MessageCRbzlFZSo35FLOWLINKSchemaFLOWLINKActionContextC_Tt1g5(uint64_t a1, int a2)
{
  v89 = a1;
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v8 = &v76 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v76 - v10;
  __chkstk_darwin(v9);
  v13 = &v76 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v15 = *(*(v14 - 8) + 64);
  v16 = __chkstk_darwin(v14 - 8);
  v18 = &v76 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v16);
  v21 = &v76 - v20;
  __chkstk_darwin(v19);
  v23 = &v76 - v22;
  v24 = [objc_allocWithZone(FLOWLINKSchemaFLOWLINKClientEvent) init];
  if (v24)
  {
    v90 = v24;
    v25 = [objc_allocWithZone(FLOWSchemaFLOWEventMetadata) init];
    if (v25)
    {
      v85 = v4;
      v86 = v3;
      v83 = a2;
      v87 = v23;
      v88 = v25;
      ObjectType = swift_getObjectType();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo35FLOWLINKSchemaFLOWLINKActionContextCmMd, &_sSo35FLOWLINKSchemaFLOWLINKActionContextCmMR);
      v84 = String.init<A>(describing:)();
      v27 = v26;
      type metadata accessor for SiriEnvironment();
      static SiriEnvironment.default.getter();
      SiriEnvironment.flowTask.getter();

      v28 = dispatch thunk of FlowTaskProvider.id.getter();
      v30 = v29;

      if (v30)
      {
        v31 = v87;
        v82 = v28;
        UUID.init(uuidString:)();
        outlined init with copy of UUID?(v31, v21);
        v32 = v86;
        if (__swift_getEnumTagSinglePayload(v21, 1, v86) == 1)
        {
          v33 = v30;
          outlined destroy of UUID?(v21);
          if (one-time initialization token for voiceCommands != -1)
          {
            swift_once();
          }

          v34 = type metadata accessor for Logger();
          __swift_project_value_buffer(v34, static Logger.voiceCommands);

          v35 = Logger.logObject.getter();
          v36 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v35, v36))
          {
            v37 = swift_slowAlloc();
            ObjectType = swift_slowAlloc();
            *v37 = 136315394;
            v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v82, v33, &ObjectType);

            *(v37 + 4) = v38;
            *(v37 + 12) = 2080;
            v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v84, v27, &ObjectType);

            *(v37 + 14) = v39;
            _os_log_impl(&dword_0, v35, v36, "#SLF SELF Log, current taskId: %s, is not a valid UUID String, cannot emit %s", v37, 0x16u);
            swift_arrayDestroy();
          }

          else
          {
          }

          v62 = v31;
        }

        else
        {
          v81 = v30;
          v47 = v85;
          v48 = v32;
          v79 = *(v85 + 32);
          v80 = v85 + 32;
          v79(v13, v21, v32);
          v49 = static InstrumentationUtils.createFlowId()();
          if (v49)
          {
            v50 = v49;

            v51 = type metadata accessor for SISchemaUUID();
            v52 = *(v47 + 16);
            v84 = v13;
            v53 = v13;
            v54 = v48;
            v77 = v52;
            v52(v11, v53, v48);
            v78 = v51;
            v55 = SISchemaUUID.__allocating_init(nsuuid:)(v11);
            v56 = v88;
            [v88 setTaskId:v55];

            [v56 setFlowId:v50];
            static SiriEnvironment.default.getter();
            SiriEnvironment.currentRequest.getter();

            CurrentRequest.resultCandidateId.getter();
            v58 = v57;

            if (v58)
            {

              UUID.init(uuidString:)();

              if (__swift_getEnumTagSinglePayload(v18, 1, v54) == 1)
              {
                outlined destroy of UUID?(v18);
                v60 = v87;
                v59 = v88;
                v61 = v85;
              }

              else
              {
                v79(v8, v18, v54);
                v77(v11, v8, v54);
                v74 = SISchemaUUID.__allocating_init(nsuuid:)(v11);
                v59 = v88;
                [v88 setTrpId:v74];

                v61 = v85;
                (*(v85 + 8))(v8, v54);
                v60 = v87;
              }

              v73 = v84;
              v72 = String._bridgeToObjectiveC()();
            }

            else
            {
              v72 = 0;
              v60 = v87;
              v59 = v88;
              v73 = v84;
              v61 = v85;
            }

            [v59 setResultCandidateId:v72];

            [v90 setEventMetadata:v59];
            [v90 setLinkActionContext:v89];
            v75 = [objc_opt_self() sharedStream];
            [v75 emitMessage:v90];
            swift_unknownObjectRelease();
            if (v83)
            {
              static InstrumentationUtils.emitLinkFlowRequestLink(taskId:flowId:)(v82, v81, v50);
            }

            (*(v61 + 8))(v73, v86);
            v62 = v60;
          }

          else
          {

            v63 = v27;
            if (one-time initialization token for voiceCommands != -1)
            {
              swift_once();
            }

            v64 = type metadata accessor for Logger();
            __swift_project_value_buffer(v64, static Logger.voiceCommands);

            v65 = Logger.logObject.getter();
            v66 = static os_log_type_t.error.getter();

            v67 = os_log_type_enabled(v65, v66);
            v68 = v87;
            if (v67)
            {
              v69 = swift_slowAlloc();
              v70 = swift_slowAlloc();
              ObjectType = v70;
              *v69 = 136315138;
              v71 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v84, v63, &ObjectType);

              *(v69 + 4) = v71;
              _os_log_impl(&dword_0, v65, v66, "#SLF SELF Log, current flowId is not a valid UUID String, cannot emit %s", v69, 0xCu);
              __swift_destroy_boxed_opaque_existential_1Tm(v70);
            }

            else
            {
            }

            (*(v85 + 8))(v13, v86);
            v62 = v68;
          }
        }

        outlined destroy of UUID?(v62);
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
          v45 = swift_slowAlloc();
          ObjectType = v45;
          *v44 = 136315138;
          v46 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v84, v27, &ObjectType);

          *(v44 + 4) = v46;
          _os_log_impl(&dword_0, v42, v43, "#SLF SELF Log, current taskId is nil, cannot emit %s", v44, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v45);
        }

        else
        {
        }
      }
    }

    else
    {
      v40 = v90;
    }
  }
}

void _s18SiriLinkFlowPlugin20InstrumentationUtilsO04emitbcE033_4B7DCD361232BDB55F45721261AF3126LL5event0g7RequestB0yx_SbtSo08SISchemaE7MessageCRbzlFZSo33FLOWLINKSchemaFLOWLINKActionTier1C_Tt1g5(uint64_t a1, int a2)
{
  v102 = a1;
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v8 = &v91 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v91 - v10;
  __chkstk_darwin(v9);
  v13 = &v91 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v15 = *(*(v14 - 8) + 64);
  v16 = __chkstk_darwin(v14 - 8);
  v18 = &v91 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v16);
  v21 = &v91 - v20;
  __chkstk_darwin(v19);
  v23 = &v91 - v22;
  v24 = [objc_allocWithZone(FLOWLINKSchemaFLOWLINKClientEvent) init];
  if (v24)
  {
    v99 = a2;
    v103 = v24;
    v25 = [objc_allocWithZone(FLOWSchemaFLOWEventMetadata) init];
    if (v25)
    {
      v26 = v25;
      v97 = v13;
      v98 = v4;
      v101 = v23;
      ObjectType = swift_getObjectType();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo33FLOWLINKSchemaFLOWLINKActionTier1CmMd, &_sSo33FLOWLINKSchemaFLOWLINKActionTier1CmMR);
      v96 = String.init<A>(describing:)();
      v28 = v27;
      type metadata accessor for SiriEnvironment();
      static SiriEnvironment.default.getter();
      SiriEnvironment.flowTask.getter();

      v29 = dispatch thunk of FlowTaskProvider.id.getter();
      v31 = v30;

      if (v31)
      {
        v100 = v3;
        v32 = v101;
        UUID.init(uuidString:)();
        v33 = v32;
        v34 = v100;
        outlined init with copy of UUID?(v33, v21);
        if (__swift_getEnumTagSinglePayload(v21, 1, v34) == 1)
        {
          v35 = v29;
          outlined destroy of UUID?(v21);
          if (one-time initialization token for voiceCommands != -1)
          {
            swift_once();
          }

          v36 = type metadata accessor for Logger();
          __swift_project_value_buffer(v36, static Logger.voiceCommands);

          v37 = Logger.logObject.getter();
          v38 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v37, v38))
          {
            v39 = swift_slowAlloc();
            ObjectType = swift_slowAlloc();
            *v39 = 136315394;
            v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v31, &ObjectType);
            v41 = v26;
            v42 = v40;

            *(v39 + 4) = v42;
            *(v39 + 12) = 2080;
            v43 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v96, v28, &ObjectType);

            *(v39 + 14) = v43;
            _os_log_impl(&dword_0, v37, v38, "#SLF SELF Log, current taskId: %s, is not a valid UUID String, cannot emit %s", v39, 0x16u);
            swift_arrayDestroy();
          }

          else
          {
          }
        }

        else
        {
          v93 = v29;
          v94 = v31;
          v95 = v26;
          v53 = v97;
          v52 = v98;
          v92 = *(v98 + 32);
          v92(v97, v21, v34);
          v54 = static InstrumentationUtils.createFlowId()();
          if (v54)
          {
            v55 = v54;

            v56 = type metadata accessor for SISchemaUUID();
            v57 = *(v52 + 16);
            v57(v11, v53, v100);
            v91 = v56;
            v58 = SISchemaUUID.__allocating_init(nsuuid:)(v11);
            v59 = v95;
            [v95 setTaskId:v58];

            v96 = v55;
            [v59 setFlowId:v55];
            static SiriEnvironment.default.getter();
            SiriEnvironment.currentRequest.getter();

            CurrentRequest.resultCandidateId.getter();
            v61 = v60;

            if (v61)
            {

              UUID.init(uuidString:)();

              if (__swift_getEnumTagSinglePayload(v18, 1, v100) == 1)
              {
                outlined destroy of UUID?(v18);
                v63 = v94;
                v62 = v95;
                v65 = v100;
                v64 = v101;
                v66 = v98;
              }

              else
              {
                v65 = v100;
                v92(v8, v18, v100);
                v57(v11, v8, v65);
                v77 = SISchemaUUID.__allocating_init(nsuuid:)(v11);
                v62 = v95;
                [v95 setTrpId:v77];

                v66 = v98;
                (*(v98 + 8))(v8, v65);
                v64 = v101;
                v63 = v94;
              }

              v76 = String._bridgeToObjectiveC()();
            }

            else
            {
              v76 = 0;
              v63 = v94;
              v62 = v95;
              v65 = v100;
              v64 = v101;
              v66 = v98;
            }

            [v62 setResultCandidateId:v76];

            [v103 setEventMetadata:v62];
            objc_opt_self();
            v78 = swift_dynamicCastObjCClass();
            v79 = v97;
            if (v78)
            {
              [v103 setLinkActionContext:v78];
            }

            else
            {
              objc_opt_self();
              v80 = swift_dynamicCastObjCClass();
              if (v80)
              {
                [v103 setEntityDisambiguationContext:v80];
              }

              else
              {
                objc_opt_self();
                v82 = swift_dynamicCastObjCClass();
                if (v82)
                {
                  [v103 setActionConversionContext:v82];
                }

                else
                {
                  objc_opt_self();
                  v83 = swift_dynamicCastObjCClass();
                  if (v83)
                  {
                    [v103 setActionExecutionContext:v83];
                  }

                  else
                  {
                    objc_opt_self();
                    v84 = swift_dynamicCastObjCClass();
                    if (v84)
                    {
                      [v103 setActionPromptForValueContext:v84];
                    }

                    else
                    {
                      objc_opt_self();
                      v85 = swift_dynamicCastObjCClass();
                      if (v85)
                      {
                        [v103 setActionParameterDisambiguationContext:v85];
                      }

                      else
                      {
                        objc_opt_self();
                        v86 = swift_dynamicCastObjCClass();
                        if (v86)
                        {
                          [v103 setActionParameterConfirmationContext:v86];
                        }

                        else
                        {
                          objc_opt_self();
                          v87 = swift_dynamicCastObjCClass();
                          if (v87)
                          {
                            [v103 setActionConfirmationContext:v87];
                          }

                          else
                          {
                            objc_opt_self();
                            v90 = swift_dynamicCastObjCClass();
                            if (v90)
                            {
                              [v103 setAutoShortcutTemplateUsed:v90];
                            }

                            else
                            {
                              [v103 setLinkActionTier1:v102];
                            }

                            v63 = v94;
                            v62 = v95;
                            v65 = v100;
                            v64 = v101;
                            v79 = v97;
                            v66 = v98;
                          }
                        }
                      }
                    }
                  }
                }
              }
            }

            v88 = [objc_opt_self() sharedStream];
            [v88 emitMessage:v103];
            swift_unknownObjectRelease();
            v89 = v96;
            if (v99)
            {
              static InstrumentationUtils.emitLinkFlowRequestLink(taskId:flowId:)(v93, v63, v96);
            }

            (*(v66 + 8))(v79, v65);
            v81 = v64;
            goto LABEL_51;
          }

          v67 = v100;

          if (one-time initialization token for voiceCommands != -1)
          {
            swift_once();
          }

          v68 = type metadata accessor for Logger();
          __swift_project_value_buffer(v68, static Logger.voiceCommands);

          v69 = Logger.logObject.getter();
          v70 = static os_log_type_t.error.getter();

          v71 = os_log_type_enabled(v69, v70);
          v72 = v95;
          if (v71)
          {
            v73 = swift_slowAlloc();
            v74 = swift_slowAlloc();
            ObjectType = v74;
            *v73 = 136315138;
            v75 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v96, v28, &ObjectType);

            *(v73 + 4) = v75;
            _os_log_impl(&dword_0, v69, v70, "#SLF SELF Log, current flowId is not a valid UUID String, cannot emit %s", v73, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v74);
          }

          else
          {
          }

          (*(v98 + 8))(v97, v67);
        }

        v81 = v101;
LABEL_51:
        outlined destroy of UUID?(v81);
        return;
      }

      if (one-time initialization token for voiceCommands != -1)
      {
        swift_once();
      }

      v45 = type metadata accessor for Logger();
      __swift_project_value_buffer(v45, static Logger.voiceCommands);

      v46 = Logger.logObject.getter();
      v47 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        v49 = swift_slowAlloc();
        ObjectType = v49;
        *v48 = 136315138;
        v50 = v26;
        v51 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v96, v28, &ObjectType);

        *(v48 + 4) = v51;
        _os_log_impl(&dword_0, v46, v47, "#SLF SELF Log, current taskId is nil, cannot emit %s", v48, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v49);
      }

      else
      {
      }
    }

    else
    {
      v44 = v103;
    }
  }
}

void _s18SiriLinkFlowPlugin20InstrumentationUtilsO04emitbcE033_4B7DCD361232BDB55F45721261AF3126LL5event0g7RequestB0yx_SbtSo08SISchemaE7MessageCRbzlFZSo44FLOWLINKSchemaFLOWLINKActionExecutionContextC_Tt1g5(uint64_t a1, int a2)
{
  v94 = a1;
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v8 = v84 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = v84 - v10;
  __chkstk_darwin(v9);
  v13 = v84 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v15 = *(*(v14 - 8) + 64);
  v16 = __chkstk_darwin(v14 - 8);
  v18 = v84 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v16);
  v21 = v84 - v20;
  __chkstk_darwin(v19);
  v23 = v84 - v22;
  v24 = [objc_allocWithZone(FLOWLINKSchemaFLOWLINKClientEvent) init];
  if (v24)
  {
    v91 = a2;
    v95 = v24;
    v25 = [objc_allocWithZone(FLOWSchemaFLOWEventMetadata) init];
    if (v25)
    {
      v92 = v25;
      v93 = v23;
      v89 = v13;
      v90 = v4;
      ObjectType = swift_getObjectType();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo44FLOWLINKSchemaFLOWLINKActionExecutionContextCmMd, &_sSo44FLOWLINKSchemaFLOWLINKActionExecutionContextCmMR);
      v26 = String.init<A>(describing:)();
      v28 = v27;
      type metadata accessor for SiriEnvironment();
      static SiriEnvironment.default.getter();
      SiriEnvironment.flowTask.getter();

      v29 = dispatch thunk of FlowTaskProvider.id.getter();
      v31 = v30;

      if (v31)
      {
        v88 = v26;
        v32 = v3;
        v33 = v28;
        v34 = v93;
        UUID.init(uuidString:)();
        outlined init with copy of UUID?(v34, v21);
        if (__swift_getEnumTagSinglePayload(v21, 1, v32) == 1)
        {
          v35 = v29;
          outlined destroy of UUID?(v21);
          if (one-time initialization token for voiceCommands != -1)
          {
            swift_once();
          }

          v36 = type metadata accessor for Logger();
          __swift_project_value_buffer(v36, static Logger.voiceCommands);

          v37 = Logger.logObject.getter();
          v38 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v37, v38))
          {
            v39 = swift_slowAlloc();
            ObjectType = swift_slowAlloc();
            *v39 = 136315394;
            v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v31, &ObjectType);

            *(v39 + 4) = v40;
            *(v39 + 12) = 2080;
            v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v88, v33, &ObjectType);

            *(v39 + 14) = v41;
            _os_log_impl(&dword_0, v37, v38, "#SLF SELF Log, current taskId: %s, is not a valid UUID String, cannot emit %s", v39, 0x16u);
            swift_arrayDestroy();
          }

          else
          {
          }
        }

        else
        {
          v86 = v29;
          v87 = v31;
          v49 = v89;
          v50 = v90;
          v51 = v90 + 32;
          v85 = *(v90 + 32);
          v85(v89, v21, v32);
          v52 = static InstrumentationUtils.createFlowId()();
          if (v52)
          {
            v53 = v52;
            v84[0] = v51;

            v54 = type metadata accessor for SISchemaUUID();
            v55 = *(v50 + 16);
            v55(v11, v49, v32);
            v84[1] = v54;
            v56 = SISchemaUUID.__allocating_init(nsuuid:)(v11);
            v57 = v92;
            [v92 setTaskId:v56];

            v88 = v53;
            [v57 setFlowId:v53];
            static SiriEnvironment.default.getter();
            SiriEnvironment.currentRequest.getter();

            CurrentRequest.resultCandidateId.getter();
            v59 = v58;

            v60 = v32;
            if (v59)
            {

              UUID.init(uuidString:)();

              if (__swift_getEnumTagSinglePayload(v18, 1, v32) == 1)
              {
                outlined destroy of UUID?(v18);
                v61 = v92;
                v62 = v93;
                v63 = v90;
              }

              else
              {
                v85(v8, v18, v32);
                v55(v11, v8, v32);
                v75 = SISchemaUUID.__allocating_init(nsuuid:)(v11);
                v61 = v92;
                [v92 setTrpId:v75];

                v63 = v90;
                (*(v90 + 8))(v8, v32);
                v62 = v93;
              }

              v74 = v87;
              v73 = String._bridgeToObjectiveC()();
            }

            else
            {
              v73 = 0;
              v61 = v92;
              v62 = v93;
              v63 = v90;
              v74 = v87;
            }

            [v61 setResultCandidateId:v73];

            [v95 setEventMetadata:v61];
            objc_opt_self();
            v76 = v94;
            v77 = swift_dynamicCastObjCClass();
            v78 = v89;
            if (v77)
            {
              [v95 setLinkActionContext:v77];
            }

            else
            {
              objc_opt_self();
              v79 = swift_dynamicCastObjCClass();
              if (v79)
              {
                [v95 setEntityDisambiguationContext:v79];
              }

              else
              {
                objc_opt_self();
                v81 = swift_dynamicCastObjCClass();
                if (v81)
                {
                  [v95 setActionConversionContext:v81];
                }

                else
                {
                  [v95 setActionExecutionContext:v76];
                }
              }
            }

            v82 = [objc_opt_self() sharedStream];
            [v82 emitMessage:v95];
            swift_unknownObjectRelease();
            v83 = v88;
            if (v91)
            {
              static InstrumentationUtils.emitLinkFlowRequestLink(taskId:flowId:)(v86, v74, v88);
            }

            (*(v63 + 8))(v78, v60);
            v80 = v62;
            goto LABEL_42;
          }

          v64 = v32;

          if (one-time initialization token for voiceCommands != -1)
          {
            swift_once();
          }

          v65 = type metadata accessor for Logger();
          __swift_project_value_buffer(v65, static Logger.voiceCommands);

          v66 = Logger.logObject.getter();
          v67 = static os_log_type_t.error.getter();

          v68 = os_log_type_enabled(v66, v67);
          v69 = v92;
          if (v68)
          {
            v70 = swift_slowAlloc();
            v71 = swift_slowAlloc();
            ObjectType = v71;
            *v70 = 136315138;
            v72 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v88, v33, &ObjectType);

            *(v70 + 4) = v72;
            _os_log_impl(&dword_0, v66, v67, "#SLF SELF Log, current flowId is not a valid UUID String, cannot emit %s", v70, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v71);
          }

          else
          {
          }

          (*(v90 + 8))(v89, v64);
        }

        v80 = v93;
LABEL_42:
        outlined destroy of UUID?(v80);
        return;
      }

      if (one-time initialization token for voiceCommands != -1)
      {
        swift_once();
      }

      v43 = type metadata accessor for Logger();
      __swift_project_value_buffer(v43, static Logger.voiceCommands);

      v44 = Logger.logObject.getter();
      v45 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        v47 = swift_slowAlloc();
        ObjectType = v47;
        *v46 = 136315138;
        v48 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v28, &ObjectType);

        *(v46 + 4) = v48;
        _os_log_impl(&dword_0, v44, v45, "#SLF SELF Log, current taskId is nil, cannot emit %s", v46, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v47);
      }

      else
      {
      }
    }

    else
    {
      v42 = v95;
    }
  }
}

void _s18SiriLinkFlowPlugin20InstrumentationUtilsO04emitbcE033_4B7DCD361232BDB55F45721261AF3126LL5event0g7RequestB0yx_SbtSo08SISchemaE7MessageCRbzlFZSo45FLOWLINKSchemaFLOWLINKActionConversionContextC_Tt1g5(uint64_t a1, int a2)
{
  v94 = a1;
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v8 = v82 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = v82 - v10;
  __chkstk_darwin(v9);
  v13 = v82 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v15 = *(*(v14 - 8) + 64);
  v16 = __chkstk_darwin(v14 - 8);
  v18 = v82 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v16);
  v21 = v82 - v20;
  __chkstk_darwin(v19);
  v23 = v82 - v22;
  v24 = [objc_allocWithZone(FLOWLINKSchemaFLOWLINKClientEvent) init];
  if (v24)
  {
    v95 = v24;
    v25 = [objc_allocWithZone(FLOWSchemaFLOWEventMetadata) init];
    if (v25)
    {
      v90 = v4;
      v91 = v3;
      v88 = a2;
      v92 = v23;
      v93 = v25;
      ObjectType = swift_getObjectType();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo45FLOWLINKSchemaFLOWLINKActionConversionContextCmMd, &_sSo45FLOWLINKSchemaFLOWLINKActionConversionContextCmMR);
      v89 = String.init<A>(describing:)();
      v27 = v26;
      type metadata accessor for SiriEnvironment();
      static SiriEnvironment.default.getter();
      SiriEnvironment.flowTask.getter();

      v28 = dispatch thunk of FlowTaskProvider.id.getter();
      v30 = v29;

      if (v30)
      {
        v31 = v92;
        v87 = v28;
        UUID.init(uuidString:)();
        outlined init with copy of UUID?(v31, v21);
        v32 = v91;
        if (__swift_getEnumTagSinglePayload(v21, 1, v91) == 1)
        {
          v33 = v30;
          outlined destroy of UUID?(v21);
          if (one-time initialization token for voiceCommands != -1)
          {
            swift_once();
          }

          v34 = type metadata accessor for Logger();
          __swift_project_value_buffer(v34, static Logger.voiceCommands);

          v35 = Logger.logObject.getter();
          v36 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v35, v36))
          {
            v37 = swift_slowAlloc();
            ObjectType = swift_slowAlloc();
            *v37 = 136315394;
            v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v87, v33, &ObjectType);

            *(v37 + 4) = v38;
            *(v37 + 12) = 2080;
            v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v89, v27, &ObjectType);

            *(v37 + 14) = v39;
            _os_log_impl(&dword_0, v35, v36, "#SLF SELF Log, current taskId: %s, is not a valid UUID String, cannot emit %s", v37, 0x16u);
            swift_arrayDestroy();
          }

          else
          {
          }

          v60 = v31;
        }

        else
        {
          v86 = v30;
          v47 = v90;
          v48 = v32;
          v83 = *(v90 + 32);
          v84 = v90 + 32;
          v83(v13, v21, v32);
          v49 = static InstrumentationUtils.createFlowId()();
          if (v49)
          {
            v50 = v49;

            v51 = type metadata accessor for SISchemaUUID();
            v52 = *(v47 + 16);
            v85 = v13;
            v53 = v13;
            v54 = v48;
            v82[0] = v52;
            v52(v11, v53, v48);
            v82[1] = v51;
            v55 = SISchemaUUID.__allocating_init(nsuuid:)(v11);
            v56 = v93;
            [v93 setTaskId:v55];

            v89 = v50;
            [v56 setFlowId:v50];
            static SiriEnvironment.default.getter();
            SiriEnvironment.currentRequest.getter();

            CurrentRequest.resultCandidateId.getter();
            v58 = v57;

            if (v58)
            {

              UUID.init(uuidString:)();

              if (__swift_getEnumTagSinglePayload(v18, 1, v54) == 1)
              {
                outlined destroy of UUID?(v18);
                v59 = v93;
              }

              else
              {
                v83(v8, v18, v54);
                (v82[0])(v11, v8, v54);
                v73 = SISchemaUUID.__allocating_init(nsuuid:)(v11);
                v59 = v93;
                [v93 setTrpId:v73];

                (*(v90 + 8))(v8, v54);
              }

              v71 = v92;
              v72 = v85;
              v70 = String._bridgeToObjectiveC()();
            }

            else
            {
              v70 = 0;
              v71 = v92;
              v59 = v93;
              v72 = v85;
            }

            [v59 setResultCandidateId:v70];

            [v95 setEventMetadata:v59];
            objc_opt_self();
            v74 = v94;
            v75 = swift_dynamicCastObjCClass();
            v76 = v90;
            v77 = v88;
            v78 = v87;
            if (v75)
            {
              [v95 setLinkActionContext:v75];
            }

            else
            {
              objc_opt_self();
              v79 = swift_dynamicCastObjCClass();
              if (v79)
              {
                [v95 setEntityDisambiguationContext:v79];
              }

              else
              {
                [v95 setActionConversionContext:v74];
              }
            }

            v80 = [objc_opt_self() sharedStream];
            [v80 emitMessage:v95];
            swift_unknownObjectRelease();
            v81 = v89;
            if (v77)
            {
              static InstrumentationUtils.emitLinkFlowRequestLink(taskId:flowId:)(v78, v86, v89);
            }

            (*(v76 + 8))(v72, v91);
            v60 = v71;
          }

          else
          {

            if (one-time initialization token for voiceCommands != -1)
            {
              swift_once();
            }

            v61 = type metadata accessor for Logger();
            __swift_project_value_buffer(v61, static Logger.voiceCommands);

            v62 = Logger.logObject.getter();
            v63 = static os_log_type_t.error.getter();

            v64 = os_log_type_enabled(v62, v63);
            v65 = v90;
            v66 = v92;
            if (v64)
            {
              v67 = swift_slowAlloc();
              v68 = swift_slowAlloc();
              ObjectType = v68;
              *v67 = 136315138;
              v69 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v89, v27, &ObjectType);

              *(v67 + 4) = v69;
              _os_log_impl(&dword_0, v62, v63, "#SLF SELF Log, current flowId is not a valid UUID String, cannot emit %s", v67, 0xCu);
              __swift_destroy_boxed_opaque_existential_1Tm(v68);
            }

            else
            {
            }

            (*(v65 + 8))(v13, v91);
            v60 = v66;
          }
        }

        outlined destroy of UUID?(v60);
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
          v45 = swift_slowAlloc();
          ObjectType = v45;
          *v44 = 136315138;
          v46 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v89, v27, &ObjectType);

          *(v44 + 4) = v46;
          _os_log_impl(&dword_0, v42, v43, "#SLF SELF Log, current taskId is nil, cannot emit %s", v44, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v45);
        }

        else
        {
        }
      }
    }

    else
    {
      v40 = v95;
    }
  }
}