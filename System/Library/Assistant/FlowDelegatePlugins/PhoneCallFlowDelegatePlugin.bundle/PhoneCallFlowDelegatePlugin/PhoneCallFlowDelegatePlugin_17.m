uint64_t FaceTimeSettingsBuilder.makeViewsForIOS(utteranceViews:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *v3;
  outlined init with copy of FaceTimeSettingsBuilder(v4, v13);
  v9 = swift_allocObject();
  v10 = v13[1];
  *(v9 + 16) = v13[0];
  *(v9 + 32) = v10;
  *(v9 + 48) = v13[2];
  *(v9 + 64) = v14;
  *(v9 + 72) = a1;
  *(v9 + 80) = a2;
  *(v9 + 88) = a3;
  v11 = *(*v8 + class metadata base offset for PhoneCallBaseCatTemplatingService + 120);

  v11(partial apply for closure #1 in FaceTimeSettingsBuilder.makeViewsForIOS(utteranceViews:_:), v9);
}

void *closure #1 in FaceTimeSettingsBuilder.makeViewsForIOS(utteranceViews:_:)(uint64_t a1, void *a2, uint64_t a3, void (*a4)(void, void))
{
  v44 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v42 - v9;
  v11 = type metadata accessor for TemplatingResult();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  OUTLINED_FUNCTION_4();
  v16 = v15 - v14;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17);
  v20 = (&v42 - v19);
  outlined init with copy of Result<TemplatingResult, Error>(a1, &v42 - v19);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v21 = *v20;
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2();
    }

    v22 = type metadata accessor for Logger();
    __swift_project_value_buffer(v22, static Logger.siriPhone);
    swift_errorRetain();
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = a4;
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *v26 = 138412290;
      swift_errorRetain();
      v28 = _swift_stdlib_bridgeErrorToNSError();
      *(v26 + 4) = v28;
      *v27 = v28;
      _os_log_impl(&dword_0, v23, v24, "#FaceTimeSettingsBuilder failed to generate templating result for appSettings: %@", v26, 0xCu);
      outlined destroy of NSObject?(v27);

      a4 = v25;
    }

    swift_errorRetain();
    a4(v21, 1);
  }

  else
  {
    (*(v12 + 32))(v16, v20, v11);
    v30 = [objc_allocWithZone(SAUIOpenLink) init];
    URL.init(string:)();
    v31 = type metadata accessor for URL();
    v33 = 0;
    if (__swift_getEnumTagSinglePayload(v10, 1, v31) != 1)
    {
      URL._bridgeToObjectiveC()(v32);
      v33 = v34;
      (*(*(v31 - 8) + 8))(v10, v31);
    }

    [v30 setRef:v33];

    type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SAUIButton, SAUIButton_ptr);
    result = TemplatingResult.print.getter();
    if (result[2])
    {
      v43 = a4;
      v36 = result[4];
      v35 = result[5];

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
      v37 = swift_allocObject();
      *(v37 + 16) = xmmword_426260;
      *(v37 + 32) = v30;
      v42 = v30;
      v38 = SAUIButton.init(text:commands:)(v36, v35, v37);
      type metadata accessor for SiriKitAceViewBuilder();
      v40 = a2[4];
      v39 = a2[5];
      __swift_project_boxed_opaque_existential_1(a2 + 1, v40);
      (*(v39 + 8))(v45, v40, v39);
      dispatch thunk of static SiriKitAceViewBuilder.makeBuilder(deviceState:)();
      __swift_destroy_boxed_opaque_existential_1(v45);
      dispatch thunk of SiriKitAceViewBuilder.addButton(button:)();

      dispatch thunk of SiriKitAceViewBuilder.withUtteranceViews(utteranceViews:)();

      v41 = dispatch thunk of SiriKitAceViewBuilder.build()();

      v43(v41, 0);

      return (*(v12 + 8))(v16, v11);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

void static FileRadarUtils.tapToRadar(title:desc:reason:logger:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, const char *a5, uint64_t a6, NSObject *a7)
{
  v57 = a2;
  v58 = a7;
  v51 = a5;
  v55 = a4;
  v56 = a1;
  v8 = type metadata accessor for Logger();
  v9 = OUTLINED_FUNCTION_7(v8);
  v52 = v10;
  v12 = *(v11 + 64);
  __chkstk_darwin(v9);
  v13 = v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriFlowEnvironment17RadarFilingExtrasVSgMd, &_s19SiriFlowEnvironment17RadarFilingExtrasVSgMR);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = v50 - v16;
  v18 = type metadata accessor for RadarFilingExtras();
  v19 = OUTLINED_FUNCTION_7(v18);
  v21 = v20;
  v23 = *(v22 + 64);
  __chkstk_darwin(v19);
  v25 = v50 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for TTRComponentInfo();
  v27 = OUTLINED_FUNCTION_7(v26);
  v53 = v28;
  v54 = v27;
  v30 = *(v29 + 64);
  __chkstk_darwin(v27);
  v32 = v50 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (AFIsInternalInstall() && AFProcessIsAssistantService())
  {
    v33 = type metadata accessor for TapToRadarManager();
    v34 = *(v33 + 48);
    v35 = *(v33 + 52);
    swift_allocObject();
    v50[2] = a3;
    v50[1] = TapToRadarManager.init()();
    TTRComponentInfo.init(componentName:componentVersion:componentID:)();

    RadarFilingExtras.init(attachmentURLs:extensionIDs:deviceIDs:displayReason:)();
    v51 = "SingleResultVoicemail";
    (*(v21 + 16))(v17, v25, v18);
    __swift_storeEnumTagSinglePayload(v17, 0, 1, v18);
    v36 = v52;
    (*(v52 + 16))(v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v58, v8);
    v37 = (*(v36 + 80) + 16) & ~*(v36 + 80);
    v38 = swift_allocObject();
    (*(v36 + 32))(v38 + v37, v13, v8);
    dispatch thunk of TapToRadarManager.createProblem(errStatus:userDefaultSuiteName:radarComponentInfo:title:description:radarFilingExtras:completion:)();

    outlined destroy of RadarFilingExtras?(v17);
    (*(v21 + 8))(v25, v18);
    (*(v53 + 8))(v32, v54);
LABEL_6:
    OUTLINED_FUNCTION_65();
    return;
  }

  v39 = v57;

  v58 = Logger.logObject.getter();
  v40 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v58, v40))
  {
    v41 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    *v41 = 136315394;
    *(v41 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v56, v39, &v59);
    *(v41 + 12) = 2080;
    v42 = [objc_opt_self() processInfo];
    v43 = [v42 processName];

    v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v46 = v45;

    v47 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v44, v46, &v59);

    *(v41 + 14) = v47;
    _os_log_impl(&dword_0, v58, v40, "#FileRadarUtils tapToRadar: not an internal build. Skipping filing radar for %s, process=%s", v41, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_26_0();
    OUTLINED_FUNCTION_26_0();

    goto LABEL_6;
  }

  OUTLINED_FUNCTION_65();
}

void static FileRadarUtils.autoBugCapture(errorType:errorSubType:subTypeContext:logger:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v31 = a1;
  v32 = a3;
  v10 = type metadata accessor for Logger();
  v11 = OUTLINED_FUNCTION_7(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  __chkstk_darwin(v11);
  if (AFIsInternalInstall() && AFProcessIsAssistantService())
  {
    v16 = type metadata accessor for AutoBugCaptureManager();
    v17 = *(v16 + 48);
    v18 = *(v16 + 52);
    swift_allocObject();
    AutoBugCaptureManager.init(domain:sessionDuration:)();
    (*(v13 + 16))(&v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), a7, v10);
    v19 = (*(v13 + 80) + 16) & ~*(v13 + 80);
    v20 = swift_allocObject();
    (*(v13 + 32))(v20 + v19, &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v10);
    dispatch thunk of AutoBugCaptureManager.generateSnapshot(errorType:errorSubType:subTypeContext:completion:)();

LABEL_6:
    OUTLINED_FUNCTION_65();
    return;
  }

  v33 = Logger.logObject.getter();
  v21 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v33, v21))
  {
    v22 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    *v22 = 136315650;
    *(v22 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, a2, &v34);
    *(v22 + 12) = 2080;
    *(v22 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, a4, &v34);
    *(v22 + 22) = 2080;
    v23 = [objc_opt_self() processInfo];
    v24 = [v23 processName];

    v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v27 = v26;

    v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v27, &v34);

    *(v22 + 24) = v28;
    _os_log_impl(&dword_0, v33, v21, "#FileRadarUtils autoBugCapture: not an internal build. Skipping filing radar for %s/%s, process=%s", v22, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_26_0();
    OUTLINED_FUNCTION_26_0();

    goto LABEL_6;
  }

  OUTLINED_FUNCTION_65();
}

void closure #1 in static FileRadarUtils.tapToRadar(title:desc:reason:logger:)(char a1, uint64_t a2, uint64_t (*a3)(void), const char *a4)
{
  oslog = Logger.logObject.getter();
  v7 = a3();
  if (os_log_type_enabled(oslog, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 67109120;
    *(v8 + 4) = a1 & 1;
    _os_log_impl(&dword_0, oslog, v7, a4, v8, 8u);
    OUTLINED_FUNCTION_26_0();
  }
}

uint64_t outlined destroy of RadarFilingExtras?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriFlowEnvironment17RadarFilingExtrasVSgMd, &_s19SiriFlowEnvironment17RadarFilingExtrasVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroyTm_6()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

void specialized Sequence.contains(where:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = OUTLINED_FUNCTION_17_19(a1, a2, a3);
  specialized Array.count.getter(v8);
  OUTLINED_FUNCTION_16_28();
  while (1)
  {
    v10 = v9;
    if (v4 == v9)
    {
      break;
    }

    if (v7)
    {
      v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v9 >= *(v6 + 16))
      {
        goto LABEL_13;
      }

      v11 = *(v5 + 8 * v9 + 32);
    }

    v12 = v11;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
LABEL_13:
      __break(1u);
      return;
    }

    OUTLINED_FUNCTION_18_14();
    v14 = v13();

    if (!v3)
    {
      v9 = v10 + 1;
      if ((v14 & 1) == 0)
      {
        continue;
      }
    }

    return;
  }
}

{
  v8 = OUTLINED_FUNCTION_17_19(a1, a2, a3);
  specialized Array.count.getter(v8);
  OUTLINED_FUNCTION_16_28();
  while (1)
  {
    v10 = v9;
    if (v4 == v9)
    {
      break;
    }

    if (v7)
    {
      specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v9 >= *(v6 + 16))
      {
        goto LABEL_13;
      }

      v11 = *(v5 + 8 * v9 + 32);
    }

    if (__OFADD__(v10, 1))
    {
      __break(1u);
LABEL_13:
      __break(1u);
      return;
    }

    OUTLINED_FUNCTION_18_14();
    v13 = v12();

    if (!v3)
    {
      v9 = v10 + 1;
      if ((v13 & 1) == 0)
      {
        continue;
      }
    }

    return;
  }
}

uint64_t FirstPartyAnnotatedAppStore.getDefaultApp(for:avMode:)@<X0>(void *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (dispatch thunk of DeviceState.isMac.getter())
  {
    if (a2 == 2 || (a2 & 1) != 0)
    {
      if (one-time initialization token for siriFaceTimeMacExtension != -1)
      {
        OUTLINED_FUNCTION_5_41();
      }

      v6 = &static DefaultPhoneApps.siriFaceTimeMacExtension;
    }

    else
    {
      if (one-time initialization token for siriPhoneMacExtension != -1)
      {
        OUTLINED_FUNCTION_3_43();
      }

      v6 = &static DefaultPhoneApps.siriPhoneMacExtension;
    }
  }

  else
  {
    OUTLINED_FUNCTION_22_12();
    if (dispatch thunk of DeviceState.isWatch.getter())
    {
      if (one-time initialization token for siriPhoneWatchExtension != -1)
      {
        OUTLINED_FUNCTION_4_32();
      }

      v6 = &static DefaultPhoneApps.siriPhoneWatchExtension;
    }

    else
    {
      OUTLINED_FUNCTION_22_12();
      if (dispatch thunk of DeviceState.isXRDevice.getter())
      {
        if (one-time initialization token for siriPhoneFaceTimeExtension != -1)
        {
          OUTLINED_FUNCTION_2_53();
        }

        v6 = &static DefaultPhoneApps.siriPhoneFaceTimeExtension;
      }

      else
      {
        if (one-time initialization token for siriPhoneExtension != -1)
        {
          OUTLINED_FUNCTION_1_62();
        }

        v6 = &static DefaultPhoneApps.siriPhoneExtension;
      }
    }
  }

  v7 = *v6;
  v8 = v6[1];
  v10 = v6[2];
  v9 = v6[3];
  v11 = *(v6 + 32);
  v12 = v6[5];

  *a3 = v7;
  *(a3 + 8) = v8;
  *(a3 + 16) = v10;
  *(a3 + 24) = v9;
  *(a3 + 32) = v11;
  *(a3 + 40) = v12;
  return result;
}

void FirstPartyAnnotatedAppStore.getApp(for:device:avMode:)(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, char a4@<W3>, uint64_t (*a5)(uint64_t, uint64_t)@<X4>, uint64_t a6@<X6>, uint64_t *a7@<X8>)
{
  if (one-time initialization token for siriPhone != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static Logger.siriPhone);

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    *v13 = 136315394;
    *(v13 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001ALL, 0x800000000045B6A0, &v63);
    *(v13 + 12) = 2080;
    v14 = OUTLINED_FUNCTION_104();
    *(v13 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, v16);
    _os_log_impl(&dword_0, v11, v12, "#FirstPartyAnnotatedAppStore %s identifier=%s", v13, 0x16u);
    swift_arrayDestroy();

    OUTLINED_FUNCTION_12_3();
  }

  if (one-time initialization token for defaultFirstPartyBundleIds != -1)
  {
    v17 = swift_once();
  }

  v63 = a1;
  v64 = a2;
  __chkstk_darwin(v17);
  if (specialized Sequence.contains(where:)())
  {
    v18 = OUTLINED_FUNCTION_104();
    FirstPartyAnnotatedAppStore.getDefaultApp(for:device:avMode:)(v18, v19, a3, a4, a5, a6, v20);
    v21 = v64;
    v55 = v63;
    v22 = v65;
    v23 = v66;
    v24 = v67;
    v25 = v68;
    outlined init with copy of AnnotatedApp?(&v63, &v56);
  }

  else
  {
    v26 = OUTLINED_FUNCTION_104();
    if ((a5)(v26))
    {
      v27 = a3[4];
      __swift_project_boxed_opaque_existential_1(a3, a3[3]);
      if (dispatch thunk of DeviceState.isWatch.getter() & 1) != 0 && (v63 = a1, v64 = a2, v56 = 0xD000000000000010, v57 = 0x8000000000458F10, lazy protocol witness table accessor for type String and conformance String(), lazy protocol witness table accessor for type String and conformance String(), (BidirectionalCollection<>.starts<A>(with:)()))
      {
        if (one-time initialization token for walkieTalkieWatchExtension != -1)
        {
          OUTLINED_FUNCTION_6_40();
        }

        v28 = static DefaultPhoneApps.walkieTalkieWatchExtension;
        v21 = *algn_599A68;
        v22 = qword_599A70;
        v23 = unk_599A78;
        v24 = byte_599A80;
        v25 = qword_599A88;
        swift_bridgeObjectRetain_n();
        swift_bridgeObjectRetain_n();
        v55 = v28;
        swift_retain_n();
        swift_bridgeObjectRetain_n();
      }

      else
      {
        v33 = Logger.logObject.getter();
        v34 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v33, v34))
        {
          *swift_slowAlloc() = 0;
          OUTLINED_FUNCTION_33(&dword_0, v35, v36, "#FirstPartyAnnotatedAppStore 1P app found on device, returning app with no supported intents.");
          OUTLINED_FUNCTION_12_3();
        }

        type metadata accessor for App();

        OUTLINED_FUNCTION_104();
        v37 = App.__allocating_init(appIdentifier:)();
        v22 = App.appIdentifier.getter();
        v23 = v38;

        v55 = v37;

        v24 = 0;
        v21 = _swiftEmptySetSingleton;
        v25 = _swiftEmptySetSingleton;
      }
    }

    else
    {
      v29 = Logger.logObject.getter();
      v30 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v29, v30))
      {
        *swift_slowAlloc() = 0;
        OUTLINED_FUNCTION_33(&dword_0, v31, v32, "#FirstPartyAnnotatedAppStore 1P app not found on device, returning nil.");
        OUTLINED_FUNCTION_12_3();
      }

      v55 = 0;
      v21 = 0;
      v22 = 0;
      v23 = 0;
      v24 = 0;
      v25 = 0;
    }
  }

  OUTLINED_FUNCTION_7_34();
  outlined copy of AnnotatedApp?(v39);
  v40 = Logger.logObject.getter();
  v41 = static os_log_type_t.debug.getter();
  OUTLINED_FUNCTION_7_34();
  outlined consume of AnnotatedApp?(v42);
  if (os_log_type_enabled(v40, v41))
  {
    v43 = swift_slowAlloc();
    v62[0] = swift_slowAlloc();
    *v43 = 136315394;
    *(v43 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001ALL, 0x800000000045B6A0, v62);
    *(v43 + 12) = 2080;
    v56 = v55;
    v57 = v21;
    v58 = v22;
    v59 = v23;
    v60 = v24;
    v61 = v25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin12AnnotatedAppVSgMd, &_s27PhoneCallFlowDelegatePlugin12AnnotatedAppVSgMR);
    v44 = String.init<A>(describing:)();
    v46 = v21;
    v47 = v24;
    v48 = v22;
    v49 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v44, v45, v62);

    *(v43 + 14) = v49;
    v22 = v48;
    v24 = v47;
    v21 = v46;
    _os_log_impl(&dword_0, v40, v41, "#FirstPartyAnnotatedAppStore %s => %s", v43, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    OUTLINED_FUNCTION_7_34();
    outlined consume of AnnotatedApp?(v50);
  }

  *a7 = v55;
  a7[1] = v21;
  a7[2] = v22;
  a7[3] = v23;
  a7[4] = v24;
  a7[5] = v25;
}

uint64_t one-time initialization function for defaultFirstPartyBundleIds()
{
  result = closure #1 in variable initialization expression of static FirstPartyAnnotatedAppStore.defaultFirstPartyBundleIds();
  static FirstPartyAnnotatedAppStore.defaultFirstPartyBundleIds = result;
  return result;
}

uint64_t closure #1 in variable initialization expression of static FirstPartyAnnotatedAppStore.defaultFirstPartyBundleIds()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_431D00;
  *(v0 + 32) = 0xD000000000000017;
  *(v0 + 40) = 0x8000000000459750;
  *(v0 + 48) = 0xD000000000000012;
  *(v0 + 56) = 0x80000000004574F0;
  if (one-time initialization token for macFaceTimeBundleId != -1)
  {
    swift_once();
  }

  v1 = *algn_599C28;
  *(v0 + 64) = static PhoneCallAppNameConstants.macFaceTimeBundleId;
  *(v0 + 72) = v1;
  *(v0 + 80) = 0xD000000000000012;
  *(v0 + 88) = 0x800000000045B6E0;
  *(v0 + 96) = 0xD000000000000012;
  *(v0 + 104) = 0x800000000045B700;
  *(v0 + 112) = 0xD000000000000013;
  *(v0 + 120) = 0x800000000045B720;
  *(v0 + 128) = 0xD000000000000015;
  *(v0 + 136) = 0x8000000000452BD0;

  return v0;
}

uint64_t *DefaultPhoneApps.siriPhoneMacExtension.unsafeMutableAddressor()
{
  if (one-time initialization token for siriPhoneMacExtension != -1)
  {
    OUTLINED_FUNCTION_3_43();
  }

  return &static DefaultPhoneApps.siriPhoneMacExtension;
}

uint64_t *DefaultPhoneApps.siriFaceTimeMacExtension.unsafeMutableAddressor()
{
  if (one-time initialization token for siriFaceTimeMacExtension != -1)
  {
    OUTLINED_FUNCTION_5_41();
  }

  return &static DefaultPhoneApps.siriFaceTimeMacExtension;
}

uint64_t *DefaultPhoneApps.siriPhoneWatchExtension.unsafeMutableAddressor()
{
  if (one-time initialization token for siriPhoneWatchExtension != -1)
  {
    OUTLINED_FUNCTION_4_32();
  }

  return &static DefaultPhoneApps.siriPhoneWatchExtension;
}

uint64_t *DefaultPhoneApps.siriPhoneFaceTimeExtension.unsafeMutableAddressor()
{
  if (one-time initialization token for siriPhoneFaceTimeExtension != -1)
  {
    OUTLINED_FUNCTION_2_53();
  }

  return &static DefaultPhoneApps.siriPhoneFaceTimeExtension;
}

uint64_t *DefaultPhoneApps.siriPhoneExtension.unsafeMutableAddressor()
{
  if (one-time initialization token for siriPhoneExtension != -1)
  {
    OUTLINED_FUNCTION_1_62();
  }

  return &static DefaultPhoneApps.siriPhoneExtension;
}

void FirstPartyAnnotatedAppStore.getDefaultApp(for:device:avMode:)(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, char a4@<W3>, uint64_t (*a5)(uint64_t, uint64_t)@<X4>, uint64_t a6@<X6>, uint64_t *a7@<X8>)
{
  v11 = a2;
  v12 = a1;
  v14 = static PhoneCallAppNameConstants.isFaceTimeCaseInsensitive(appId:)(a1, a2);
  if (v14)
  {
    v11 = 0x80000000004574F0;
    v12 = 0xD000000000000012;
  }

  else
  {
  }

  if ((*(*a6 + 168))(v14) & 1) != 0 && (v15 = a3[4], __swift_project_boxed_opaque_existential_1(a3, a3[3]), (DeviceState.requiresAppForFaceTime.getter()) && (, v16 = static PhoneCallAppNameConstants.isFaceTimeCaseInsensitive(appId:)(v12, v11), , (v16) && (a5(v12, v11) & 1) == 0)
  {

    if (one-time initialization token for siriPhone != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    __swift_project_value_buffer(v26, static Logger.siriPhone);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_0, v27, v28, "#FirstPartyAnnotatedAppStore Device requires that FaceTime app is installed for FaceTime calls, returning nil.", v29, 2u);
    }

    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v25 = 0;
    v24 = 0;
  }

  else
  {
    FirstPartyAnnotatedAppStore.getDefaultApp(for:avMode:)(a3, a4, v30);
    App.systemExtensionBundleId.getter();
    App.systemUIExtensionBundleId.getter();
    App.pluginIdentifier.getter();
    v17 = type metadata accessor for App();
    v18 = *(v17 + 48);
    v19 = *(v17 + 52);
    swift_allocObject();

    v20 = App.init(appIdentifier:systemExtensionBundleId:systemUIExtensionBundleId:pluginIdentifier:)();
    v21 = v30[1];
    v22 = v30[2];
    v23 = v30[3];
    v24 = v32;

    v25 = v31;
  }

  *a7 = v20;
  a7[1] = v21;
  a7[2] = v22;
  a7[3] = v23;
  a7[4] = v25;
  a7[5] = v24;
}

uint64_t *DefaultPhoneApps.walkieTalkieWatchExtension.unsafeMutableAddressor()
{
  if (one-time initialization token for walkieTalkieWatchExtension != -1)
  {
    OUTLINED_FUNCTION_6_40();
  }

  return &static DefaultPhoneApps.walkieTalkieWatchExtension;
}

void one-time initialization function for supportedFirstPartyIntents()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_431D00;
  v1 = [objc_allocWithZone(INStartCallIntent) init];
  v2 = [v1 _className];

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  *(inited + 32) = v3;
  *(inited + 40) = v5;
  v6 = [objc_allocWithZone(INSearchCallHistoryIntent) init];
  v7 = [v6 _className];

  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  *(inited + 48) = v8;
  *(inited + 56) = v10;
  v11 = [objc_allocWithZone(INHangUpCallIntent) init];
  v12 = [v11 _className];

  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  *(inited + 64) = v13;
  *(inited + 72) = v15;
  v16 = [objc_allocWithZone(INIdentifyIncomingCallerIntent) init];
  v17 = [v16 _className];

  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v19;

  *(inited + 80) = v18;
  *(inited + 88) = v20;
  v21 = [objc_allocWithZone(INAnswerCallIntent) init];
  v22 = [v21 _className];

  v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v25 = v24;

  *(inited + 96) = v23;
  *(inited + 104) = v25;
  v26 = [objc_allocWithZone(INJoinCallIntent) init];
  v27 = [v26 _className];

  v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v30 = v29;

  *(inited + 112) = v28;
  *(inited + 120) = v30;
  v31 = [objc_allocWithZone(INAddCallParticipantIntent) init];
  v32 = [v31 _className];

  v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v35 = v34;

  *(inited + 128) = v33;
  *(inited + 136) = v35;
  _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0g5();
  static DefaultPhoneApps.supportedFirstPartyIntents = v36;
}

uint64_t one-time initialization function for siriPhoneExtension()
{
  v0 = type metadata accessor for App();
  OUTLINED_FUNCTION_41_1(v0);
  App.init(appIdentifier:systemExtensionBundleId:systemUIExtensionBundleId:pluginIdentifier:)();
  if (one-time initialization token for supportedFirstPartyIntents != -1)
  {
    OUTLINED_FUNCTION_9_31();
  }

  v1 = App.appIdentifier.getter();
  result = OUTLINED_FUNCTION_10_33(v1, v2, &static DefaultPhoneApps.siriPhoneExtension);
  *(v4 + 40) = _swiftEmptySetSingleton;
  return result;
}

uint64_t static DefaultPhoneApps.siriPhoneExtension.getter()
{
  if (one-time initialization token for siriPhoneExtension != -1)
  {
    OUTLINED_FUNCTION_1_62();
  }

  OUTLINED_FUNCTION_0_57(&static DefaultPhoneApps.siriPhoneExtension);
}

uint64_t one-time initialization function for siriPhoneWatchExtension()
{
  v1 = type metadata accessor for App();
  OUTLINED_FUNCTION_41_1(v1);
  OUTLINED_FUNCTION_8_41();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_42BF20;
  v3 = [objc_allocWithZone(INStartCallIntent) init];
  v4 = [v3 _className];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_14_31();
  *(inited + 32) = v3;
  *(inited + 40) = v0;
  v5 = OUTLINED_FUNCTION_21_16([objc_allocWithZone(INSearchCallHistoryIntent) init]);

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_14_31();
  *(inited + 48) = v3;
  *(inited + 56) = v0;
  v6 = OUTLINED_FUNCTION_21_16([objc_allocWithZone(INHangUpCallIntent) init]);

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_14_31();
  *(inited + 64) = v3;
  *(inited + 72) = v0;
  v7 = OUTLINED_FUNCTION_21_16([objc_allocWithZone(INIdentifyIncomingCallerIntent) init]);

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_14_31();
  *(inited + 80) = v3;
  *(inited + 88) = v0;
  v8 = OUTLINED_FUNCTION_21_16([objc_allocWithZone(INAnswerCallIntent) init]);

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_14_31();
  *(inited + 96) = v3;
  *(inited + 104) = v0;
  _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0g5();
  v9 = App.appIdentifier.getter();
  result = OUTLINED_FUNCTION_10_33(v9, v10, &static DefaultPhoneApps.siriPhoneWatchExtension);
  *(v12 + 40) = _swiftEmptySetSingleton;
  return result;
}

uint64_t static DefaultPhoneApps.siriPhoneWatchExtension.getter()
{
  if (one-time initialization token for siriPhoneWatchExtension != -1)
  {
    OUTLINED_FUNCTION_4_32();
  }

  OUTLINED_FUNCTION_0_57(&static DefaultPhoneApps.siriPhoneWatchExtension);
}

uint64_t one-time initialization function for siriPhoneFaceTimeExtension()
{
  v0 = type metadata accessor for App();
  OUTLINED_FUNCTION_41_1(v0);
  OUTLINED_FUNCTION_8_41();
  if (one-time initialization token for supportedFirstPartyIntents != -1)
  {
    OUTLINED_FUNCTION_9_31();
  }

  v1 = App.appIdentifier.getter();
  result = OUTLINED_FUNCTION_10_33(v1, v2, &static DefaultPhoneApps.siriPhoneFaceTimeExtension);
  *(v4 + 40) = _swiftEmptySetSingleton;
  return result;
}

uint64_t static DefaultPhoneApps.siriPhoneFaceTimeExtension.getter()
{
  if (one-time initialization token for siriPhoneFaceTimeExtension != -1)
  {
    OUTLINED_FUNCTION_2_53();
  }

  OUTLINED_FUNCTION_0_57(&static DefaultPhoneApps.siriPhoneFaceTimeExtension);
}

uint64_t one-time initialization function for siriPhoneMacExtension()
{
  v0 = type metadata accessor for App();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  v3 = App.init(appIdentifier:systemExtensionBundleId:systemUIExtensionBundleId:pluginIdentifier:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_424FF0;
  v5 = [objc_allocWithZone(INStartCallIntent) init];
  v6 = [v5 _className];

  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  *(inited + 32) = v7;
  *(inited + 40) = v9;
  v10 = [objc_allocWithZone(INSearchCallHistoryIntent) init];
  v11 = [v10 _className];

  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  *(inited + 48) = v12;
  *(inited + 56) = v14;
  _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0g5();
  v16 = v15;
  result = App.appIdentifier.getter();
  static DefaultPhoneApps.siriPhoneMacExtension = v3;
  *algn_599A08 = v16;
  qword_599A10 = result;
  unk_599A18 = v18;
  byte_599A20 = 0;
  qword_599A28 = _swiftEmptySetSingleton;
  return result;
}

uint64_t static DefaultPhoneApps.siriPhoneMacExtension.getter()
{
  if (one-time initialization token for siriPhoneMacExtension != -1)
  {
    OUTLINED_FUNCTION_3_43();
  }

  OUTLINED_FUNCTION_0_57(&static DefaultPhoneApps.siriPhoneMacExtension);
}

uint64_t one-time initialization function for siriFaceTimeMacExtension()
{
  if (one-time initialization token for macFaceTimeBundleId != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for App();
  OUTLINED_FUNCTION_41_1(v1);

  App.init(appIdentifier:systemExtensionBundleId:systemUIExtensionBundleId:pluginIdentifier:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_424FD0;
  v3 = [objc_allocWithZone(INStartCallIntent) init];
  v4 = [v3 _className];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_14_31();
  *(inited + 32) = v3;
  *(inited + 40) = v0;
  _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0g5();
  v5 = App.appIdentifier.getter();
  result = OUTLINED_FUNCTION_10_33(v5, v6, &static DefaultPhoneApps.siriFaceTimeMacExtension);
  *(v8 + 40) = _swiftEmptySetSingleton;
  return result;
}

uint64_t static DefaultPhoneApps.siriFaceTimeMacExtension.getter()
{
  if (one-time initialization token for siriFaceTimeMacExtension != -1)
  {
    OUTLINED_FUNCTION_5_41();
  }

  OUTLINED_FUNCTION_0_57(&static DefaultPhoneApps.siriFaceTimeMacExtension);
}

uint64_t one-time initialization function for walkieTalkieWatchExtension()
{
  v0 = type metadata accessor for App();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  v3 = App.init(appIdentifier:systemExtensionBundleId:systemUIExtensionBundleId:pluginIdentifier:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_424FD0;
  v5 = [objc_allocWithZone(INStartCallIntent) init];
  v6 = [v5 _className];

  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  *(inited + 32) = v7;
  *(inited + 40) = v9;
  _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0g5();
  v11 = v10;
  result = App.appIdentifier.getter();
  static DefaultPhoneApps.walkieTalkieWatchExtension = v3;
  *algn_599A68 = v11;
  qword_599A70 = result;
  unk_599A78 = v13;
  byte_599A80 = 0;
  qword_599A88 = _swiftEmptySetSingleton;
  return result;
}

uint64_t static DefaultPhoneApps.walkieTalkieWatchExtension.getter()
{
  if (one-time initialization token for walkieTalkieWatchExtension != -1)
  {
    OUTLINED_FUNCTION_6_40();
  }

  OUTLINED_FUNCTION_0_57(&static DefaultPhoneApps.walkieTalkieWatchExtension);
}

double ForcedAppDisambiguationHistory.init(phase:date:apps:)(uint64_t a1, uint64_t a2)
{
  Date.timeIntervalSince1970.getter();
  v4 = v3;
  v5 = type metadata accessor for Date();
  (*(*(v5 - 8) + 8))(a2, v5);
  return v4;
}

PhoneCallFlowDelegatePlugin::ForcedAppDisambiguationHistory __swiftcall ForcedAppDisambiguationHistory.init()()
{
  v0 = type metadata accessor for Date();
  v1 = OUTLINED_FUNCTION_7(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  __chkstk_darwin(v1);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Date.distantPast.getter();
  Date.timeIntervalSince1970.getter();
  v9 = v8;
  (*(v3 + 8))(v7, v0);
  v10 = _swiftEmptyArrayStorage;
  v11 = PhoneCallFlowDelegatePlugin_ForcedAppDisambiguationPhase_showedForcedAppDisambiguation;
  v12 = v9;
  result.timestamp = v12;
  result.apps._rawValue = v10;
  result.phase = v11;
  return result;
}

PhoneCallFlowDelegatePlugin::ForcedAppDisambiguationPhase_optional __swiftcall ForcedAppDisambiguationPhase.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of ForcedAppDisambiguationPhase.init(rawValue:), v2);

  if (v3 == 1)
  {
    v4.value = PhoneCallFlowDelegatePlugin_ForcedAppDisambiguationPhase_loggedForcedAppDisambiguation;
  }

  else
  {
    v4.value = PhoneCallFlowDelegatePlugin_ForcedAppDisambiguationPhase_unknownDefault;
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

PhoneCallFlowDelegatePlugin::ForcedAppDisambiguationPhase_optional protocol witness for RawRepresentable.init(rawValue:) in conformance ForcedAppDisambiguationPhase@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::ForcedAppDisambiguationPhase_optional *a2@<X8>)
{
  result.value = ForcedAppDisambiguationPhase.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance ForcedAppDisambiguationPhase@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  result = ForcedAppDisambiguationPhase.rawValue.getter();
  *a1 = 0xD00000000000001DLL;
  a1[1] = v5;
  return result;
}

void ForcedAppDisambiguationHistory.daysSinceLastShowed.getter()
{
  v0 = type metadata accessor for Date();
  v1 = OUTLINED_FUNCTION_7(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  __chkstk_darwin(v1);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v27 - v9;
  Date.init(timeIntervalSince1970:)();
  Date.init()();
  Date.distance(to:)();
  v12 = v11;
  v13 = *(v3 + 8);
  v13(v7, v0);
  v13(v10, v0);
  v14 = v12 / 86400.0;
  if (v12 / 86400.0 < 0.0)
  {
    v15 = 0.0;
  }

  else
  {
    v15 = v12 / 86400.0;
  }

  if (one-time initialization token for siriPhone != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  __swift_project_value_buffer(v16, static Logger.siriPhone);

  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v27 = v14;
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *v19 = 136315650;
    v28 = 0;
    v29 = 0xE000000000000000;
    v30 = v20;
    DefaultStringInterpolation.appendInterpolation(type:tags:function:)(&type metadata for ForcedAppDisambiguationHistory, &outlined read-only object #0 of ForcedAppDisambiguationHistory.daysSinceLastShowed.getter, 0, 0);
    v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v29, &v30);

    *(v19 + 4) = v21;
    *(v19 + 12) = 2080;
    Date.init(timeIntervalSince1970:)();
    lazy protocol witness table accessor for type Date and conformance Date();
    v22 = dispatch thunk of CustomStringConvertible.description.getter();
    v24 = v23;
    v13(v10, v0);
    v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v24, &v30);

    *(v19 + 14) = v25;
    *(v19 + 22) = 2048;
    if (v14 >= 0.0 && (*&v27 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_21;
    }

    if (v15 <= -9.22337204e18)
    {
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    if (v15 >= 9.22337204e18)
    {
LABEL_23:
      __break(1u);
      return;
    }

    v26 = fabs(v14);
    *(v19 + 24) = v15;
    _os_log_impl(&dword_0, v17, v18, "%s is shown at %s, which is %ld days ago last time", v19, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    v26 = fabs(v14);
  }

  if (v14 >= 0.0 && v26 == INFINITY)
  {
    __break(1u);
    goto LABEL_19;
  }

  if (v15 <= -9.22337204e18)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v15 >= 9.22337204e18)
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }
}

uint64_t ForcedAppDisambiguationHistory.description.getter(char a1)
{
  _StringGuts.grow(_:)(28);
  v2._countAndFlagsBits = 0x3A65736168700A7BLL;
  v2._object = 0xE900000000000020;
  String.append(_:)(v2);
  v3 = "showedForcedAppDisambiguation";
  if (a1)
  {
    v3 = "loggedForcedAppDisambiguation";
  }

  v4._object = ((v3 - 32) | 0x8000000000000000);
  v4._countAndFlagsBits = 0xD00000000000001DLL;
  String.append(_:)(v4);

  v5._countAndFlagsBits = 0x7473656D69740A2CLL;
  v5._object = 0xED0000203A706D61;
  String.append(_:)(v5);
  Double.write<A>(to:)();
  v6._countAndFlagsBits = 32010;
  v6._object = 0xE200000000000000;
  String.append(_:)(v6);
  return 0;
}

uint64_t ForcedAppDisambiguationHistory.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6573616870 && a2 == 0xE500000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 1936748641 && a2 == 0xE400000000000000)
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

uint64_t ForcedAppDisambiguationHistory.CodingKeys.stringValue.getter(char a1)
{
  if (!a1)
  {
    return 0x6573616870;
  }

  if (a1 == 1)
  {
    return 0x6D617473656D6974;
  }

  return 1936748641;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance ForcedAppDisambiguationHistory.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = ForcedAppDisambiguationHistory.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ForcedAppDisambiguationHistory.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ForcedAppDisambiguationHistory.CodingKeys and conformance ForcedAppDisambiguationHistory.CodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ForcedAppDisambiguationHistory.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ForcedAppDisambiguationHistory.CodingKeys and conformance ForcedAppDisambiguationHistory.CodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t static ForcedAppDisambiguationHistory.__derived_struct_equals(_:_:)(char a1, uint64_t a2, char a3, uint64_t a4, double a5, double a6)
{
  if ((specialized == infix<A>(_:_:)(a1 & 1, a3 & 1) & 1) == 0 || a5 != a6)
  {
    return 0;
  }

  return _sSasSQRzlE2eeoiySbSayxG_ABtFZ27PhoneCallFlowDelegatePlugin8AppQueryV8OverrideO_Tt1g5(a2, a4);
}

uint64_t ForcedAppDisambiguationHistory.encode(to:)(void *a1, char a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy27PhoneCallFlowDelegatePlugin30ForcedAppDisambiguationHistoryV10CodingKeys33_B783770BDBAD7745F4E7DECB323B7440LLOGMd, &_ss22KeyedEncodingContainerVy27PhoneCallFlowDelegatePlugin30ForcedAppDisambiguationHistoryV10CodingKeys33_B783770BDBAD7745F4E7DECB323B7440LLOGMR);
  v8 = OUTLINED_FUNCTION_7(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  __chkstk_darwin(v8);
  v14 = &v17[-v13];
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ForcedAppDisambiguationHistory.CodingKeys and conformance ForcedAppDisambiguationHistory.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v21 = a2 & 1;
  v20 = 0;
  lazy protocol witness table accessor for type ForcedAppDisambiguationPhase and conformance ForcedAppDisambiguationPhase();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v3)
  {
    v19 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v18 = a3;
    v17[15] = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    lazy protocol witness table accessor for type [String] and conformance <A> [A](&lazy protocol witness table cache variable for type [String] and conformance <A> [A]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v10 + 8))(v14, v7);
}

double ForcedAppDisambiguationHistory.init(from:)(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy27PhoneCallFlowDelegatePlugin30ForcedAppDisambiguationHistoryV10CodingKeys33_B783770BDBAD7745F4E7DECB323B7440LLOGMd, &_ss22KeyedDecodingContainerVy27PhoneCallFlowDelegatePlugin30ForcedAppDisambiguationHistoryV10CodingKeys33_B783770BDBAD7745F4E7DECB323B7440LLOGMR);
  v3 = OUTLINED_FUNCTION_7(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v3);
  v9 = &v14[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ForcedAppDisambiguationHistory.CodingKeys and conformance ForcedAppDisambiguationHistory.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  v14[30] = 0;
  lazy protocol witness table accessor for type ForcedAppDisambiguationPhase and conformance ForcedAppDisambiguationPhase();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v14[29] = 1;
  KeyedDecodingContainer.decode(_:forKey:)();
  v13 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  v14[28] = 2;
  lazy protocol witness table accessor for type [String] and conformance <A> [A](&lazy protocol witness table cache variable for type [String] and conformance <A> [A]);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v5 + 8))(v9, v2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v13;
}

void protocol witness for Decodable.init(from:) in conformance ForcedAppDisambiguationHistory(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v6 = ForcedAppDisambiguationHistory.init(from:)(a1);
  if (!v2)
  {
    *a2 = v4 & 1;
    *(a2 + 8) = v6;
    *(a2 + 16) = v5;
  }
}

unint64_t lazy protocol witness table accessor for type ForcedAppDisambiguationHistory.CodingKeys and conformance ForcedAppDisambiguationHistory.CodingKeys()
{
  result = lazy protocol witness table cache variable for type ForcedAppDisambiguationHistory.CodingKeys and conformance ForcedAppDisambiguationHistory.CodingKeys;
  if (!lazy protocol witness table cache variable for type ForcedAppDisambiguationHistory.CodingKeys and conformance ForcedAppDisambiguationHistory.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ForcedAppDisambiguationHistory.CodingKeys and conformance ForcedAppDisambiguationHistory.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ForcedAppDisambiguationHistory.CodingKeys and conformance ForcedAppDisambiguationHistory.CodingKeys;
  if (!lazy protocol witness table cache variable for type ForcedAppDisambiguationHistory.CodingKeys and conformance ForcedAppDisambiguationHistory.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ForcedAppDisambiguationHistory.CodingKeys and conformance ForcedAppDisambiguationHistory.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ForcedAppDisambiguationHistory.CodingKeys and conformance ForcedAppDisambiguationHistory.CodingKeys;
  if (!lazy protocol witness table cache variable for type ForcedAppDisambiguationHistory.CodingKeys and conformance ForcedAppDisambiguationHistory.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ForcedAppDisambiguationHistory.CodingKeys and conformance ForcedAppDisambiguationHistory.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ForcedAppDisambiguationHistory.CodingKeys and conformance ForcedAppDisambiguationHistory.CodingKeys;
  if (!lazy protocol witness table cache variable for type ForcedAppDisambiguationHistory.CodingKeys and conformance ForcedAppDisambiguationHistory.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ForcedAppDisambiguationHistory.CodingKeys and conformance ForcedAppDisambiguationHistory.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ForcedAppDisambiguationPhase and conformance ForcedAppDisambiguationPhase()
{
  result = lazy protocol witness table cache variable for type ForcedAppDisambiguationPhase and conformance ForcedAppDisambiguationPhase;
  if (!lazy protocol witness table cache variable for type ForcedAppDisambiguationPhase and conformance ForcedAppDisambiguationPhase)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ForcedAppDisambiguationPhase and conformance ForcedAppDisambiguationPhase);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ForcedAppDisambiguationPhase and conformance ForcedAppDisambiguationPhase;
  if (!lazy protocol witness table cache variable for type ForcedAppDisambiguationPhase and conformance ForcedAppDisambiguationPhase)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ForcedAppDisambiguationPhase and conformance ForcedAppDisambiguationPhase);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ForcedAppDisambiguationPhase and conformance ForcedAppDisambiguationPhase;
  if (!lazy protocol witness table cache variable for type ForcedAppDisambiguationPhase and conformance ForcedAppDisambiguationPhase)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ForcedAppDisambiguationPhase and conformance ForcedAppDisambiguationPhase);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ForcedAppDisambiguationPhase and conformance ForcedAppDisambiguationPhase;
  if (!lazy protocol witness table cache variable for type ForcedAppDisambiguationPhase and conformance ForcedAppDisambiguationPhase)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ForcedAppDisambiguationPhase and conformance ForcedAppDisambiguationPhase);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for ForcedAppDisambiguationHistory(void *a1)
{
  a1[1] = lazy protocol witness table accessor for type ForcedAppDisambiguationHistory and conformance ForcedAppDisambiguationHistory();
  a1[2] = lazy protocol witness table accessor for type ForcedAppDisambiguationHistory and conformance ForcedAppDisambiguationHistory();
  result = lazy protocol witness table accessor for type ForcedAppDisambiguationHistory and conformance ForcedAppDisambiguationHistory();
  a1[3] = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for ForcedAppDisambiguationHistory(uint64_t a1)
{
  *(a1 + 8) = lazy protocol witness table accessor for type ForcedAppDisambiguationHistory and conformance ForcedAppDisambiguationHistory();
  result = lazy protocol witness table accessor for type ForcedAppDisambiguationHistory and conformance ForcedAppDisambiguationHistory();
  *(a1 + 16) = result;
  return result;
}

_BYTE *storeEnumTagSinglePayload for ForcedAppDisambiguationPhase(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for ForcedAppDisambiguationHistory.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t static StartCallViewBuilders.makeForeignEmergencyButtonsBuilder(templatingService:disambiguationList:sharedGlobals:isDirectInvocation:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  if (one-time initialization token for siriPhone != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static Logger.siriPhone);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_0, v11, v12, "#StartCallViewBuilders Providing ForeignEmergencyButtonsBuilder", v13, 2u);
  }

  outlined init with copy of SignalProviding(a3, a5 + 16);
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 56) = a4 & 1;
}

uint64_t ForeignEmergencyButtonsBuilder.makeViewsForWatch(utteranceViews:_:)(uint64_t a1, void (*a2)(uint64_t, void))
{
  v3 = v2;
  v6 = v2[1];
  SiriKitDisambiguationList.disambiguationItems.getter();
  v7 = v3[6];
  __swift_project_boxed_opaque_existential_1(v3 + 2, v3[5]);
  v8 = *(v7 + 8);
  v9 = OUTLINED_FUNCTION_11_0();
  v10(v9, v7);
  __swift_project_boxed_opaque_existential_1(v15, v15[3]);
  OUTLINED_FUNCTION_11_0();
  dispatch thunk of DeviceState.isTextToSpeechEnabled.getter();
  v11 = static SiriKitDisambiguationSnippetFactory.makeDisambiguationSnippetForWatch(disambiguationItems:textToSpeechIsEnabled:)();

  __swift_destroy_boxed_opaque_existential_1(v15);
  type metadata accessor for SiriKitAceViewBuilder();
  v12 = v3[5];
  v13 = v3[6];
  __swift_project_boxed_opaque_existential_1(v3 + 2, v12);
  (*(v13 + 8))(v15, v12, v13);
  dispatch thunk of static SiriKitAceViewBuilder.makeBuilder(deviceState:)();
  __swift_destroy_boxed_opaque_existential_1(v15);
  dispatch thunk of SiriKitAceViewBuilder.withUtteranceViews(utteranceViews:)();
  OUTLINED_FUNCTION_34_0();

  dispatch thunk of SiriKitAceViewBuilder.addSnippet(snippet:)();

  dispatch thunk of SiriKitAceViewBuilder.build()();
  OUTLINED_FUNCTION_34_0();

  a2(a1, 0);
}

uint64_t ForeignEmergencyButtonsBuilder.makeViewsForCar(utteranceViews:_:)(uint64_t a1, void (*a2)(uint64_t, void))
{
  v6 = *(v2 + 8);
  SiriKitDisambiguationList.disambiguationItems.getter();
  static SiriKitDisambiguationSnippetFactory.makeDisambiguationSnippetForCarPlay(disambiguationItems:deviceIsLocked:)();
  OUTLINED_FUNCTION_34_0();

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_426260;
  *(v7 + 32) = v3;
  if (a1 >> 62)
  {
    if (a1 < 0)
    {
      v10 = a1;
    }

    else
    {
      v10 = a1 & 0xFFFFFFFFFFFFFF8;
    }

    type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SAAceView, SAAceView_ptr);
    v11 = v3;

    _bridgeCocoaArray<A>(_:)();
    OUTLINED_FUNCTION_11_0();

    a1 = v10;
  }

  else
  {
    v8 = v3;

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SAAceView, SAAceView_ptr);
  }

  specialized Array.append<A>(contentsOf:)(a1);
  a2(v7, 0);
}

uint64_t specialized ForeignEmergencyButtonsBuilder.makeViewsForIOS(utteranceViews:_:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, __int16 a6, unint64_t a7, uint64_t a8)
{
  v13 = a2[1];
  v14 = SiriKitDisambiguationList.rawItems.getter();
  v15 = specialized _arrayConditionalCast<A, B>(_:)(v14);

  v16 = SiriKitDisambiguationList.disambiguationItems.getter();
  v17 = specialized Array.count.getter(v16);
  if (!v17)
  {

    v32 = _swiftEmptyArrayStorage;
LABEL_21:
    type metadata accessor for SiriKitAceViewBuilder();
    v33 = a2[5];
    v34 = a2[6];
    __swift_project_boxed_opaque_existential_1(a2 + 2, v33);
    (*(v34 + 8))(v42, v33, v34);
    dispatch thunk of static SiriKitAceViewBuilder.makeBuilder(deviceState:)();
    __swift_destroy_boxed_opaque_existential_1(v42);
    dispatch thunk of SiriKitAceViewBuilder.withUtteranceViews(utteranceViews:)();

    dispatch thunk of SiriKitAceViewBuilder.withButtons(buttons:)();
    OUTLINED_FUNCTION_11_0();

    dispatch thunk of SiriKitAceViewBuilder.build()();
    OUTLINED_FUNCTION_34_0();

    closure #1 in IdiomSensitiveViewBuilder.makeViews(utteranceViews:_:)(v32, 0, a3, a4, a5, a6 & 0x1FF, a7);
  }

  v18 = v17;
  v42[0] = _swiftEmptyArrayStorage;
  result = specialized ContiguousArray.reserveCapacity(_:)();
  if (v18 < 0)
  {
    goto LABEL_26;
  }

  v35 = a4;
  v36 = a5;
  v37 = a7;
  v38 = a3;
  v39 = a8;
  result = specialized Array.count.getter(v16);
  v20 = -v18;
  v21 = 0x7FFFFFFFFFFFFFFFLL;
  v22 = 4;
  v23 = result & ~(result >> 63);
  while (v23)
  {
    v24 = v22 - 4;
    if ((v16 & 0xC000000000000001) != 0)
    {
      result = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v25 = result;
      if (!v15)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v24 >= *(&dword_10 + (v16 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_25;
      }

      v25 = *(v16 + 8 * v22);

      if (!v15)
      {
        goto LABEL_15;
      }
    }

    if ((v15 & 0xC000000000000001) != 0)
    {
      v26 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v24 >= *(&dword_10 + (v15 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_24;
      }

      v26 = *(v15 + 8 * v22);
    }

    v27 = v26;
    v28 = [v26 personHandle];

    if (v28)
    {
      v29 = [v28 emergencyType];

      v30 = 0;
      goto LABEL_16;
    }

LABEL_15:
    v29 = 0;
    v30 = 1;
LABEL_16:
    ForeignEmergencyButtonsBuilder.makeButtonView(item:emergencyType:)(v25, v29, v30);

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    v31 = *(v42[0] + 16);
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    result = specialized ContiguousArray._endMutation()();
    if (!v21)
    {
      goto LABEL_23;
    }

    --v21;
    --v23;
    ++v22;
    if (v20 + v22 == 4)
    {

      v32 = v42[0];
      a3 = v38;
      a5 = v36;
      a7 = v37;
      a4 = v35;
      goto LABEL_21;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t ForeignEmergencyButtonsBuilder.makeViewsForIOS(utteranceViews:_:)(uint64_t a1, void (*a2)(uint64_t, void), uint64_t a3)
{
  v7 = *(v3 + 8);
  v8 = SiriKitDisambiguationList.rawItems.getter();
  v9 = specialized _arrayConditionalCast<A, B>(_:)(v8);

  v10 = SiriKitDisambiguationList.disambiguationItems.getter();
  v11 = specialized Array.count.getter(v10);
  if (!v11)
  {

LABEL_21:
    type metadata accessor for SiriKitAceViewBuilder();
    v26 = v32[5];
    v27 = v32[6];
    __swift_project_boxed_opaque_existential_1(v32 + 2, v26);
    (*(v27 + 8))(v33, v26, v27);
    dispatch thunk of static SiriKitAceViewBuilder.makeBuilder(deviceState:)();
    __swift_destroy_boxed_opaque_existential_1(v33);
    dispatch thunk of SiriKitAceViewBuilder.withUtteranceViews(utteranceViews:)();

    dispatch thunk of SiriKitAceViewBuilder.withButtons(buttons:)();

    v28 = dispatch thunk of SiriKitAceViewBuilder.build()();

    a2(v28, 0);
  }

  v12 = v11;
  v33[0] = _swiftEmptyArrayStorage;
  result = specialized ContiguousArray.reserveCapacity(_:)();
  if (v12 < 0)
  {
    goto LABEL_26;
  }

  v29 = a1;
  v30 = a3;
  v31 = a2;
  result = specialized Array.count.getter(v10);
  v14 = -v12;
  v15 = 0x7FFFFFFFFFFFFFFFLL;
  v16 = 4;
  v17 = result & ~(result >> 63);
  while (v17)
  {
    v18 = v16 - 4;
    if ((v10 & 0xC000000000000001) != 0)
    {
      result = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v19 = result;
      if (!v9)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v18 >= *(&dword_10 + (v10 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_25;
      }

      v19 = *(v10 + 8 * v16);

      if (!v9)
      {
        goto LABEL_15;
      }
    }

    if ((v9 & 0xC000000000000001) != 0)
    {
      v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v18 >= *(&dword_10 + (v9 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_24;
      }

      v20 = *(v9 + 8 * v16);
    }

    v21 = v20;
    v22 = [v20 personHandle];

    if (v22)
    {
      v23 = [v22 emergencyType];

      v24 = 0;
      goto LABEL_16;
    }

LABEL_15:
    v23 = 0;
    v24 = 1;
LABEL_16:
    ForeignEmergencyButtonsBuilder.makeButtonView(item:emergencyType:)(v19, v23, v24);

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    v25 = *(v33[0] + 16);
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    result = specialized ContiguousArray._endMutation()();
    if (!v15)
    {
      goto LABEL_23;
    }

    --v15;
    --v17;
    ++v16;
    if (v14 + v16 == 4)
    {

      a2 = v31;
      goto LABEL_21;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

id ForeignEmergencyButtonsBuilder.makeButtonView(item:emergencyType:)(uint64_t a1, uint64_t a2, char a3)
{
  if (dispatch thunk of SiriKitDisambiguationItem.getFirstComponent()())
  {
    type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SAUIButton, SAUIButton_ptr);
    v5 = SiriKitDisambiguationItemComponent.print.getter();
    v7 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_426260;
    *(v8 + 32) = ForeignEmergencyButtonsBuilder.getButtonCommands(_:)();
    v9 = SAUIButton.init(text:commands:)(v5, v7, v8);
    if ((a3 & 1) == 0 && a2 == 1)
    {
      v10 = static ColorFactory.white.getter();
      [v9 setTextColor:v10];

      v11 = static ColorFactory.emergencyRed.getter();
      [v9 setBackgroundColor:v11];
    }

    return v9;
  }

  else
  {
    if (one-time initialization token for siriPhone != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    __swift_project_value_buffer(v13, static Logger.siriPhone);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_0, v14, v15, "Missing first component display text for Foreign Emergency Disambiguation button", v16, 2u);
    }

    v17 = objc_allocWithZone(SAUIButton);

    return [v17 init];
  }
}

uint64_t ForeignEmergencyButtonsBuilder.getButtonCommands(_:)()
{
  if (*(v0 + 56) == 1 && (v1 = SiriKitDisambiguationItem.directInvocation.getter()) != 0)
  {
    v2 = v1;
    v3 = *(v0 + 40);
    v4 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v3);
    (*(v4 + 8))(v7, v3, v4);
    v5 = SKIDirectInvocationPayload.toStartLocalRequest(deviceState:)(v7);

    __swift_destroy_boxed_opaque_existential_1(v7);
  }

  else
  {
    SiriKitDisambiguationItem.utterance.getter();
    v5 = static CasinoFactory.makeSendCommandsFromMachineUtterance(machineUtterance:)();
  }

  return v5;
}

__n128 __swift_memcpy57_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for ForeignEmergencyButtonsBuilder(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 57))
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

uint64_t storeEnumTagSinglePayload for ForeignEmergencyButtonsBuilder(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t HandleIntentSubmitter.submit(app:intent:)(uint64_t a1, uint64_t a2)
{
  v3[10] = a2;
  v3[11] = v2;
  v3[9] = a1;
  v3[12] = *v2;
  return _swift_task_switch(HandleIntentSubmitter.submit(app:intent:), 0, 0);
}

uint64_t HandleIntentSubmitter.submit(app:intent:)()
{
  v37 = v0;
  if (one-time initialization token for siriPhone != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 80);
  v2 = *(v0 + 88);
  v3 = *(v0 + 72);
  v4 = type metadata accessor for Logger();
  *(v0 + 104) = __swift_project_value_buffer(v4, static Logger.siriPhone);

  v5 = v1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v0 + 88);
    v9 = *(v0 + 96);
    v11 = *(v0 + 72);
    v10 = *(v0 + 80);
    v12 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    *v12 = 136315650;
    *(v0 + 56) = v8;
    v13 = *(v9 + 80);
    v14 = *(v9 + 88);
    type metadata accessor for HandleIntentSubmitter();

    v15 = String.init<A>(describing:)();
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, &v36);

    *(v12 + 4) = v17;
    *(v12 + 12) = 2080;
    *(v0 + 64) = v11;
    type metadata accessor for App();
    lazy protocol witness table accessor for type App and conformance App();
    v18 = dispatch thunk of CustomStringConvertible.description.getter();
    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v19, &v36);

    *(v12 + 14) = v20;
    *(v12 + 22) = 2080;
    v21 = [v10 typeName];
    v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v23;

    v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v24, &v36);

    *(v12 + 24) = v25;
    _os_log_impl(&dword_0, v6, v7, "#%s Submitting single HandleIntent for app: %s, intent: %s", v12, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_26_0();
    OUTLINED_FUNCTION_26_0();
  }

  v26 = *(v0 + 88);
  v27 = *(v0 + 72);
  v28 = *(v0 + 80);
  HandleIntentSubmitter.applyAppToIntent(app:intent:)(v27, v28);
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SAIntentGroupHandleIntent, SAIntentGroupHandleIntent_ptr);
  v29 = SAIntentGroupHandleIntent.init(intent:appIdentifier:)(v28, 0, 0);
  *(v0 + 112) = v29;
  v30 = v26[5];
  v31 = v26[6];
  __swift_project_boxed_opaque_existential_1(v26 + 2, v30);
  v32 = async function pointer to AceServiceInvokerAsync.submit<A>(_:)[1];
  v33 = swift_task_alloc();
  *(v0 + 120) = v33;
  v34 = type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SAIntentGroupHandleIntentCompleted, SAIntentGroupHandleIntentCompleted_ptr);
  *v33 = v0;
  v33[1] = HandleIntentSubmitter.submit(app:intent:);

  return AceServiceInvokerAsync.submit<A>(_:)(v29, v30, v34, v31);
}

{
  v1 = v0[17];
  v2 = v0[14];
  v3 = v0[11];
  v4 = HandleIntentSubmitter.makeIntentResponse(from:)(v1);

  v5 = v0[1];

  return v5(v4);
}

{
  v28 = v0;
  v1 = v0[16];
  v2 = v0[13];
  v3 = v0[11];

  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[16];
    v7 = v0[11];
    v8 = v0[12];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v0[5] = v7;
    v27[0] = v10;
    *v9 = 136315394;
    v11 = *(v8 + 80);
    v12 = *(v8 + 88);
    type metadata accessor for HandleIntentSubmitter();

    v13 = String.init<A>(describing:)();
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, v27);

    *(v9 + 4) = v15;
    *(v9 + 12) = 2080;
    swift_getErrorValue();
    v17 = v0[2];
    v16 = v0[3];
    v18 = v0[4];
    v19 = Error.localizedDescription.getter();
    v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v20, v27);

    *(v9 + 14) = v21;
    _os_log_impl(&dword_0, v4, v5, "#%s makeIntentResponse threw an error: %s", v9, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_26_0();
    OUTLINED_FUNCTION_26_0();
  }

  v22 = v0[16];
  v23 = v0[14];
  swift_willThrow();

  v24 = v0[1];
  v25 = v0[16];

  return v24();
}

uint64_t HandleIntentSubmitter.submit(app:intent:)(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 120);
  v6 = *v2;
  *(*v2 + 128) = v1;

  if (v1)
  {
    v7 = HandleIntentSubmitter.submit(app:intent:);
  }

  else
  {
    *(v4 + 136) = a1;
    v7 = HandleIntentSubmitter.submit(app:intent:);
  }

  return _swift_task_switch(v7, 0, 0);
}

id HandleIntentSubmitter.makeIntentResponse(from:)(void *a1)
{
  v3 = *v1;
  result = [a1 intentResponse];
  if (!result)
  {
    __break(1u);
    goto LABEL_12;
  }

  v5 = result;
  v6 = [result typeName];

  result = [a1 intentResponse];
  if (!result)
  {
LABEL_12:
    __break(1u);
    return result;
  }

  v7 = result;
  v8 = [result data];

  if (v8)
  {
    v9 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    v12.super.isa = Data._bridgeToObjectiveC()().super.isa;
    outlined consume of Data._Representation(v9, v11);
  }

  else
  {
    v12.super.isa = 0;
  }

  v13 = INIntentResponseCreate();

  if (v13)
  {
    v14 = *(v3 + 88);
    result = swift_dynamicCastUnknownClass();
    if (result)
    {
      return result;
    }
  }

  return 0;
}

Swift::Bool __swiftcall PhoneSettingProvider.restrictReturnMissedCalls()()
{
  v0 = String._bridgeToObjectiveC()();
  v1 = String._bridgeToObjectiveC()();
  AppBooleanValue = CFPreferencesGetAppBooleanValue(v0, v1, 0);

  return AppBooleanValue == 0;
}

uint64_t specialized RawRepresentable<>.hash(into:)()
{
  OUTLINED_FUNCTION_52_9();
  switch(v0)
  {
    case 1:
    case 4:
      OUTLINED_FUNCTION_55_10();
      break;
    case 3:
      OUTLINED_FUNCTION_87_3();
      break;
    case 5:
      OUTLINED_FUNCTION_90_0();
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
  return OUTLINED_FUNCTION_0_58();
}

{
  OUTLINED_FUNCTION_25_16();
  String.hash(into:)();
}

{
  String.hash(into:)();
}

{
  OUTLINED_FUNCTION_58_4();
  switch(v0)
  {
    case 2:
      break;
    default:
      OUTLINED_FUNCTION_23_12();
      break;
  }

  String.hash(into:)();
}

{
  OUTLINED_FUNCTION_86_4();
  String.hash(into:)();
}

{
  OUTLINED_FUNCTION_81_2();
  String.hash(into:)();
}

{
  OUTLINED_FUNCTION_15_28();
  String.hash(into:)();
}

{
  OUTLINED_FUNCTION_8_42();
  String.hash(into:)();
}

{
  OUTLINED_FUNCTION_31_11();
  String.hash(into:)();
}

{
  return OUTLINED_FUNCTION_0_58();
}

{
  OUTLINED_FUNCTION_52_9();
  switch(v0)
  {
    case 1:
    case 4:
      OUTLINED_FUNCTION_55_10();
      break;
    case 3:
      OUTLINED_FUNCTION_87_3();
      break;
    default:
      break;
  }

  String.hash(into:)();
}

{
  OUTLINED_FUNCTION_15_28();
  String.hash(into:)();
}

{
  OUTLINED_FUNCTION_48_12();
  switch(v0)
  {
    case 1:
    case 3:
      OUTLINED_FUNCTION_24_7();
      break;
    case 2:
      OUTLINED_FUNCTION_24_7();
      OUTLINED_FUNCTION_77_6();
      break;
    default:
      break;
  }

  String.hash(into:)();
}

{
  OUTLINED_FUNCTION_25_16();
  String.hash(into:)();
}

{
  OUTLINED_FUNCTION_25_16();
  String.hash(into:)();
}

{
  OUTLINED_FUNCTION_36_13();
  switch(v0)
  {
    case 1:
      OUTLINED_FUNCTION_89_1();
      break;
    case 3:
      OUTLINED_FUNCTION_11_31();
      break;
    default:
      break;
  }

  String.hash(into:)();
}

{
  OUTLINED_FUNCTION_55_10();
  String.hash(into:)();
}

{
  OUTLINED_FUNCTION_52_9();
  switch(v0)
  {
    case 1:
    case 2:
    case 3:
      OUTLINED_FUNCTION_23_12();
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
  OUTLINED_FUNCTION_73_3();
  return OUTLINED_FUNCTION_21_17();
}

{
  OUTLINED_FUNCTION_24_7();
  return OUTLINED_FUNCTION_44_8();
}

{
  OUTLINED_FUNCTION_52_9();
  switch(v0)
  {
    case 2:
      OUTLINED_FUNCTION_37_13();
      break;
    case 3:
      OUTLINED_FUNCTION_11_31();
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
  OUTLINED_FUNCTION_94_3();
  return String.hash(into:)();
}

{
  String.hash(into:)();
}

{
  String.hash(into:)();
}

{
  String.hash(into:)();
}

{
  OUTLINED_FUNCTION_52_9();
  switch(v0)
  {
    case 1:
      OUTLINED_FUNCTION_73_3();
      break;
    case 2:
      goto LABEL_4;
    case 3:
      OUTLINED_FUNCTION_84_4();
LABEL_4:
      OUTLINED_FUNCTION_13_16();
      break;
    case 5:
      OUTLINED_FUNCTION_1_63();
      break;
    case 6:
      OUTLINED_FUNCTION_14_32();
      break;
    case 7:
      OUTLINED_FUNCTION_63_5();
      break;
    case 8:
      OUTLINED_FUNCTION_82_3();
      break;
    default:
      break;
  }

  String.hash(into:)();
}

{
  OUTLINED_FUNCTION_8_42();
  String.hash(into:)();
}

{
  return OUTLINED_FUNCTION_19_22();
}

{
  OUTLINED_FUNCTION_63_5();
  return OUTLINED_FUNCTION_17_20();
}

{
  return OUTLINED_FUNCTION_0_58();
}

{
  return OUTLINED_FUNCTION_17_20();
}

{
  return OUTLINED_FUNCTION_2_54();
}

{
  return OUTLINED_FUNCTION_17_20();
}

{
  return OUTLINED_FUNCTION_21_17();
}

{
  String.hash(into:)();
}

{
  return OUTLINED_FUNCTION_2_54();
}

{
  String.hash(into:)();
}

{
  return OUTLINED_FUNCTION_6_41();
}

{
  return String.hash(into:)();
}

{
  return OUTLINED_FUNCTION_42_10();
}

{
  return OUTLINED_FUNCTION_2_54();
}

{
  return OUTLINED_FUNCTION_40_12();
}

{
  return OUTLINED_FUNCTION_19_22();
}

{
  return OUTLINED_FUNCTION_6_41();
}

{
  return OUTLINED_FUNCTION_6_41();
}

{
  OUTLINED_FUNCTION_59_5();
  switch(v0)
  {
    case 2:
      OUTLINED_FUNCTION_10_34();
      break;
    case 3:
      OUTLINED_FUNCTION_9_32();
      break;
    default:
      break;
  }

  String.hash(into:)();
}

{
  OUTLINED_FUNCTION_52_9();
  switch(v0)
  {
    case 1:
    case 2:
      OUTLINED_FUNCTION_61_10();
      break;
    case 3:
    case 4:
      OUTLINED_FUNCTION_60_6();
      break;
    case 6:
      OUTLINED_FUNCTION_14_32();
      break;
    default:
      break;
  }

  String.hash(into:)();
}

{
  OUTLINED_FUNCTION_56_3();
  switch(v0)
  {
    case 3:
      OUTLINED_FUNCTION_1_63();
      break;
    default:
      break;
  }

  String.hash(into:)();
}

{
  OUTLINED_FUNCTION_60_6();
  switch(v0)
  {
    case 1:
      OUTLINED_FUNCTION_61_10();
      break;
    case 3:
      OUTLINED_FUNCTION_62_9();
      OUTLINED_FUNCTION_23_12();
      break;
    case 4:
      OUTLINED_FUNCTION_23_12();
      OUTLINED_FUNCTION_29_17();
      break;
    default:
      break;
  }

  String.hash(into:)();
}

{
  OUTLINED_FUNCTION_52_9();
  switch(v0)
  {
    case 1:
      OUTLINED_FUNCTION_73_3();
      break;
    case 2:
      goto LABEL_6;
    case 3:
      OUTLINED_FUNCTION_84_4();
LABEL_6:
      OUTLINED_FUNCTION_13_16();
      break;
    case 4:
      OUTLINED_FUNCTION_1_63();
      break;
    case 6:
      OUTLINED_FUNCTION_55_10();
      break;
    case 12:
      OUTLINED_FUNCTION_90_0();
      break;
    default:
      break;
  }

  String.hash(into:)();
}

{
  OUTLINED_FUNCTION_59_5();
  switch(v0)
  {
    case 3:
      OUTLINED_FUNCTION_10_34();
      break;
    case 4:
      OUTLINED_FUNCTION_9_32();
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
  String.hash(into:)();
}

{
  OUTLINED_FUNCTION_1_63();
  switch(v0)
  {
    case 1:
      OUTLINED_FUNCTION_14_32();
      break;
    case 2:
      OUTLINED_FUNCTION_82_3();
      break;
    default:
      break;
  }

  String.hash(into:)();
}

{
  OUTLINED_FUNCTION_73_3();
  switch(v0)
  {
    case 1:
      OUTLINED_FUNCTION_23_12();
      OUTLINED_FUNCTION_29_17();
      break;
    case 2:
      OUTLINED_FUNCTION_62_9();
      OUTLINED_FUNCTION_23_12();
      break;
    default:
      break;
  }

  String.hash(into:)();
}

{
  OUTLINED_FUNCTION_73_3();
  switch(v0)
  {
    case 2:
      OUTLINED_FUNCTION_23_12();
      break;
    case 4:
      OUTLINED_FUNCTION_58_4();
      break;
    case 5:
      OUTLINED_FUNCTION_73_3();
      break;
    default:
      break;
  }

  String.hash(into:)();
}

{
  return OUTLINED_FUNCTION_44_8();
}

{
  return OUTLINED_FUNCTION_0_58();
}

{
  return String.hash(into:)();
}

{
  OUTLINED_FUNCTION_56_3();
  switch(v0)
  {
    case 1:
      OUTLINED_FUNCTION_73_3();
      break;
    case 8:
      OUTLINED_FUNCTION_1_63();
      break;
    default:
      break;
  }

  String.hash(into:)();
}

{
  OUTLINED_FUNCTION_63_5();
  return String.hash(into:)();
}

{
  OUTLINED_FUNCTION_31_11();
  String.hash(into:)();
}

{
  OUTLINED_FUNCTION_86_4();
  String.hash(into:)();
}

{
  return OUTLINED_FUNCTION_6_41();
}

{
  String.hash(into:)();
}

{
  String.hash(into:)();
}

{
  OUTLINED_FUNCTION_30_15();
  String.hash(into:)();
}

{
  String.hash(into:)();
}

{
  String.hash(into:)();
}

{
  String.hash(into:)();
}

{
  return OUTLINED_FUNCTION_42_10();
}

{
  OUTLINED_FUNCTION_31_11();
  String.hash(into:)();
}

{
  OUTLINED_FUNCTION_15_28();
  String.hash(into:)();
}

{
  OUTLINED_FUNCTION_15_28();
  String.hash(into:)();
}

{
  OUTLINED_FUNCTION_25_16();
  String.hash(into:)();
}

{
  OUTLINED_FUNCTION_75_4();
  String.hash(into:)();
}

{
  String.hash(into:)();
}

{
  OUTLINED_FUNCTION_8_42();
  String.hash(into:)();
}

{
  return OUTLINED_FUNCTION_21_17();
}

{
  OUTLINED_FUNCTION_31_11();
  String.hash(into:)();
}

{
  return OUTLINED_FUNCTION_2_54();
}

{
  return OUTLINED_FUNCTION_0_58();
}

{
  OUTLINED_FUNCTION_8_42();
  String.hash(into:)();
}

{
  OUTLINED_FUNCTION_8_42();
  String.hash(into:)();
}

{
  OUTLINED_FUNCTION_15_28();
  String.hash(into:)();
}

{
  return OUTLINED_FUNCTION_0_58();
}

{
  OUTLINED_FUNCTION_76_4();
  OUTLINED_FUNCTION_8_42();
  String.hash(into:)();
}

{
  OUTLINED_FUNCTION_76_4();
  OUTLINED_FUNCTION_25_16();
  String.hash(into:)();
}

{
  OUTLINED_FUNCTION_15_28();
  String.hash(into:)();
}

{
  OUTLINED_FUNCTION_15_28();
  String.hash(into:)();
}

{
  OUTLINED_FUNCTION_8_42();
  String.hash(into:)();
}

{
  String.hash(into:)();
}

{
  OUTLINED_FUNCTION_5_42();
  switch(v0)
  {
    case 1:
    case 2:
    case 3:
    case 4:
      break;
    default:
      OUTLINED_FUNCTION_23_12();
      break;
  }

  String.hash(into:)();
}

{
  OUTLINED_FUNCTION_69_5();
  switch(v0)
  {
    case 1:
      OUTLINED_FUNCTION_85_2();
      break;
    case 4:
      OUTLINED_FUNCTION_14_32();
      break;
    default:
      break;
  }

  String.hash(into:)();
}

{
  OUTLINED_FUNCTION_8_42();
  String.hash(into:)();
}

{
  String.hash(into:)();
}

{
  String.hash(into:)();
}

{
  String.hash(into:)();
}

{
  OUTLINED_FUNCTION_69_5();
  OUTLINED_FUNCTION_85_2();
  switch(v0)
  {
    case 2:
      OUTLINED_FUNCTION_5_42();
      break;
    default:
      break;
  }

  String.hash(into:)();
}

{
  OUTLINED_FUNCTION_8_42();
  String.hash(into:)();
}

{
  String.hash(into:)();
}

uint64_t specialized RawRepresentable<>.hash(into:)(uint64_t a1, uint64_t a2)
{
  return specialized RawRepresentable<>.hash(into:)(a1, a2, AnnounceGroupFaceTimeInviteCATsSimple.ReadGroupFaceTimeInviteAnnouncementDialogIds.rawValue.getter);
}

{
  return specialized RawRepresentable<>.hash(into:)(a1, a2, UsoIdentifierNamespaceType.rawValue.getter);
}

{
  return specialized RawRepresentable<>.hash(into:)(a1, a2, DucFamilyNames.rawValue.getter);
}

{
  return specialized RawRepresentable<>.hash(into:)(a1, a2, PhoneCallSlotNames.rawValue.getter);
}

{
  return specialized RawRepresentable<>.hash(into:)(a1, a2, PhoneCallReference.rawValue.getter);
}

{
  return specialized RawRepresentable<>.hash(into:)(a1, a2, PhoneCallAttribute.rawValue.getter);
}

{
  return specialized RawRepresentable<>.hash(into:)(a1, a2, PhoneCallRecord.CodingKeys.rawValue.getter);
}

{
  return specialized RawRepresentable<>.hash(into:)(a1, a2, PhoneCallVerb.rawValue.getter);
}

{
  return specialized RawRepresentable<>.hash(into:)(a1, a2, PhoneCallDisplayTextCATsSimple.Properties.rawValue.getter);
}

{
  return specialized RawRepresentable<>.hash(into:)(a1, a2, PhoneCallControlCATsSimple.UnsupportedSwitchToFaceTimeDialogIds.rawValue.getter);
}

{
  return specialized RawRepresentable<>.hash(into:)(a1, a2, PhoneCallControlCATsSimple.Properties.rawValue.getter);
}

{
  return specialized RawRepresentable<>.hash(into:)(a1, a2, PhoneCallContactReference.rawValue.getter);
}

{
  return specialized RawRepresentable<>.hash(into:)(a1, a2, PhoneCallDisplayTextCATs.Properties.rawValue.getter);
}

{
  return specialized RawRepresentable<>.hash(into:)(a1, a2, PhoneCallControlAction.rawValue.getter);
}

{
  return specialized RawRepresentable<>.hash(into:)(a1, a2, PhoneCallNLConstants.rawValue.getter);
}

{
  return specialized RawRepresentable<>.hash(into:)(a1, a2, PhoneCallControlCATs.Properties.rawValue.getter);
}

{
  return specialized RawRepresentable<>.hash(into:)(a1, a2, OngoingCallCATs.Properties.rawValue.getter);
}

{
  return specialized RawRepresentable<>.hash(into:)(a1, a2, OngoingCallCATsSimple.Properties.rawValue.getter);
}

{
  return specialized RawRepresentable<>.hash(into:)(a1, a2, SearchCallHistoryCATPatternsIdentifiers.rawValue.getter);
}

{
  return specialized RawRepresentable<>.hash(into:)(a1, a2, SearchCallHistoryCATsSimple.Properties.rawValue.getter);
}

{
  return specialized RawRepresentable<>.hash(into:)(a1, a2, SearchCallHistoryCATs.Properties.rawValue.getter);
}

{
  return specialized RawRepresentable<>.hash(into:)(a1, a2, StartCallCATs.Properties.rawValue.getter);
}

{
  return specialized RawRepresentable<>.hash(into:)(a1, a2, StartCallCATPatternsIdentifiers.rawValue.getter);
}

{
  return specialized RawRepresentable<>.hash(into:)(a1, a2, StartCallCATsSimple.UnsupportedContactsNoContactFoundDialogIds.rawValue.getter);
}

{
  return specialized RawRepresentable<>.hash(into:)(a1, a2, StartCallCATsSimple.IntentHandledResponseDialogIds.rawValue.getter);
}

{
  return specialized RawRepresentable<>.hash(into:)(a1, a2, StartCallCATsSimple.ConfirmContactsDialogIds.rawValue.getter);
}

{
  return specialized RawRepresentable<>.hash(into:)(a1, a2, StartCallCATsSimple.RelationshipDialogIds.rawValue.getter);
}

{
  return specialized RawRepresentable<>.hash(into:)(a1, a2, StartCallCATsSimple.Properties.rawValue.getter);
}

{
  return specialized RawRepresentable<>.hash(into:)(a1, a2, AddCallParticipantCATsSimple.Properties.rawValue.getter);
}

{
  return specialized RawRepresentable<>.hash(into:)(a1, a2, AddCallParticipantCATs.Properties.rawValue.getter);
}

{
  return specialized RawRepresentable<>.hash(into:)(a1, a2, UnsupportedPhoneCall.rawValue.getter);
}

{
  return specialized RawRepresentable<>.hash(into:)(a1, a2, UnsupportedFlowCATs.Properties.rawValue.getter);
}

{
  return specialized RawRepresentable<>.hash(into:)(a1, a2, UnsupportedFlowCATPatternsIdentifiers.rawValue.getter);
}

{
  return specialized RawRepresentable<>.hash(into:)(a1, a2, UnsupportedFlowCATsSimple.Properties.rawValue.getter);
}

{
  return specialized RawRepresentable<>.hash(into:)(a1, a2, ActionableCallControlFlow.UnsupportedSwitchToFaceTimeReason.rawValue.getter);
}

uint64_t specialized RawRepresentable<>.hash(into:)(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 1:
      OUTLINED_FUNCTION_30_15();
      break;
    case 2:
      OUTLINED_FUNCTION_30_15();
      break;
    case 3:
      OUTLINED_FUNCTION_36_13();
      break;
    case 4:
      OUTLINED_FUNCTION_36_13();
      break;
    default:
      break;
  }

  String.hash(into:)();
}

{
  switch(a2)
  {
    case 2:
    case 3:
      break;
    default:
      OUTLINED_FUNCTION_23_12();
      break;
  }

  String.hash(into:)();
}

{
  if (a2)
  {
    OUTLINED_FUNCTION_26_3();
    OUTLINED_FUNCTION_27_13();
  }

  else
  {
    OUTLINED_FUNCTION_58_4();
  }

  String.hash(into:)();
}

{
  switch(a2)
  {
    case 1:
      OUTLINED_FUNCTION_23_12();
      break;
    case 2:
    case 3:
      OUTLINED_FUNCTION_23_12();
      OUTLINED_FUNCTION_76_4();
      break;
    default:
      break;
  }

  String.hash(into:)();
}

{
  if (a2)
  {
    OUTLINED_FUNCTION_47_12();
    OUTLINED_FUNCTION_26_3();
    OUTLINED_FUNCTION_27_13();
  }

  else
  {
    OUTLINED_FUNCTION_35_9();
  }

  String.hash(into:)();
}

{
  if (a2)
  {
    OUTLINED_FUNCTION_39_0();
    OUTLINED_FUNCTION_27_13();
  }

  String.hash(into:)();
}

{
  if (a2)
  {
    OUTLINED_FUNCTION_78_5();
  }

  else
  {
    OUTLINED_FUNCTION_28_14();
  }

  String.hash(into:)();
}

{
  if (a2)
  {
    OUTLINED_FUNCTION_12_34();
  }

  else
  {
    OUTLINED_FUNCTION_23_12();
    OUTLINED_FUNCTION_29_17();
  }

  String.hash(into:)();
}

{
  if (!a2)
  {
    OUTLINED_FUNCTION_88_3();
  }

  String.hash(into:)();
}

{
  if (!a2)
  {
    OUTLINED_FUNCTION_80_3();
  }

  OUTLINED_FUNCTION_79_4();
  String.hash(into:)();
}

{
  if (!a2)
  {
    OUTLINED_FUNCTION_49_9();
  }

  String.hash(into:)();
}

{
  if (a2)
  {
    OUTLINED_FUNCTION_39_0();
    OUTLINED_FUNCTION_12_34();
  }

  String.hash(into:)();
}

{
  if (!a2)
  {
    OUTLINED_FUNCTION_46_10();
  }

  String.hash(into:)();
}

{
  switch(a2)
  {
    case 1:
      OUTLINED_FUNCTION_63_5();
      break;
    case 4:
      OUTLINED_FUNCTION_73_3();
      break;
    default:
      break;
  }

  String.hash(into:)();
}

{
  if (a2)
  {
    OUTLINED_FUNCTION_78_5();
  }

  String.hash(into:)();
}

{
  if (!a2)
  {
    OUTLINED_FUNCTION_54_12();
  }

  String.hash(into:)();
}

{
  if (a2)
  {
    OUTLINED_FUNCTION_26_3();
    OUTLINED_FUNCTION_27_13();
  }

  String.hash(into:)();
}

{
  if (!a2)
  {
    OUTLINED_FUNCTION_53_12();
  }

  String.hash(into:)();
}

{
  if (!a2)
  {
    OUTLINED_FUNCTION_24_7();
  }

  String.hash(into:)();
}

{
  if (a2)
  {
    OUTLINED_FUNCTION_65_7();
    OUTLINED_FUNCTION_12_34();
  }

  else
  {
    OUTLINED_FUNCTION_23_12();
  }

  String.hash(into:)();
}

{
  switch(a2)
  {
    case 1:
      OUTLINED_FUNCTION_67_4();
      break;
    case 2:
      OUTLINED_FUNCTION_34_9();
      break;
    default:
      break;
  }

  String.hash(into:)();
}

{
  if (a2)
  {
    OUTLINED_FUNCTION_26_3();
  }

  else
  {
    OUTLINED_FUNCTION_23_12();
  }

  String.hash(into:)();
}

{
  switch(a2)
  {
    case 2:
      OUTLINED_FUNCTION_5_42();
      break;
    case 3:
      OUTLINED_FUNCTION_14_32();
      break;
    default:
      break;
  }

  String.hash(into:)();
}

{
  if (a2)
  {
    OUTLINED_FUNCTION_65_7();
    OUTLINED_FUNCTION_26_3();
  }

  else
  {
    OUTLINED_FUNCTION_23_12();
  }

  String.hash(into:)();
}

{
  if (a2)
  {
    OUTLINED_FUNCTION_12_34();
  }

  else
  {
    OUTLINED_FUNCTION_23_12();
  }

  String.hash(into:)();
}

{
  if (a2)
  {
    OUTLINED_FUNCTION_39_0();
    OUTLINED_FUNCTION_27_13();
  }

  else
  {
    OUTLINED_FUNCTION_73_3();
  }

  String.hash(into:)();
}

{
  if (!a2)
  {
    OUTLINED_FUNCTION_68_3();
  }

  String.hash(into:)();
}

{
  if (!a2)
  {
    OUTLINED_FUNCTION_51_11();
  }

  String.hash(into:)();
}

{
  switch(a2)
  {
    case 1:
      OUTLINED_FUNCTION_62_9();
      break;
    default:
      break;
  }

  String.hash(into:)();
}

{
  if (a2)
  {
    OUTLINED_FUNCTION_39_0();
    OUTLINED_FUNCTION_27_13();
  }

  String.hash(into:)();
}

{
  if (!a2)
  {
    OUTLINED_FUNCTION_5_42();
  }

  String.hash(into:)();
}

{
  if (!a2)
  {
    OUTLINED_FUNCTION_50_11();
  }

  String.hash(into:)();
}

{
  switch(a2)
  {
    case 1:
    case 3:
      break;
    case 2:
      OUTLINED_FUNCTION_28_14();
      break;
    default:
      OUTLINED_FUNCTION_23_12();
      break;
  }

  String.hash(into:)();
}

{
  if (a2)
  {
    OUTLINED_FUNCTION_39_0();
    OUTLINED_FUNCTION_12_34();
  }

  String.hash(into:)();
}

uint64_t specialized RawRepresentable<>.hash(into:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  a3(a2);
  String.hash(into:)();
}

Swift::Int specialized RawRepresentable<>._rawHashValue(seed:)(uint64_t a1, uint64_t a2)
{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2, ActionableCallControlFlow.UnsupportedHoldActionReason.rawValue.getter);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2, ActionableCallControlFlow.UnsupportedSwitchToFaceTimeReason.rawValue.getter);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2, UnsupportedFlowCATsSimple.Properties.rawValue.getter);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2, UnsupportedFlowCATPatternsIdentifiers.rawValue.getter);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2, UnsupportedFlowCATs.Properties.rawValue.getter);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2, UnsupportedPhoneCall.rawValue.getter);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2, AnnounceIncomingCallCATsSimple.IntentHandledResponseDialogIds.rawValue.getter);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2, FaceTimeMessageControllerFlow.State.rawValue.getter);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2, AddCallParticipantCATs.Properties.rawValue.getter);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2, AddCallParticipantCATsSimple.Properties.rawValue.getter);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2, AddCallParticipantCATPatternsIdentifiers.rawValue.getter);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2, AnswerCallCATsSimple.IntentHandledResponseDialogIds.rawValue.getter);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2, SiriPhoneDefaultsKey.rawValue.getter);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2, StartCallCATsSimple.UnsupportedPreferredCallProviderDialogIds.rawValue.getter);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2, StartCallCATsSimple.UnsupportedPreferredCallProviderTelephonyUnsupportedDialogIds.rawValue.getter);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2, StartCallCATsSimple.Properties.rawValue.getter);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2, StartCallCATsSimple.RelationshipDialogIds.rawValue.getter);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2, StartCallCATsSimple.ConfirmContactsDialogIds.rawValue.getter);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2, StartCallCATsSimple.ErrorWithCodeAirplaneModeEnabledDialogIds.rawValue.getter);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2, StartCallCATsSimple.EmergencyCountdownDialogIds.rawValue.getter);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2, StartCallCATsSimple.IntentHandledResponseDialogIds.rawValue.getter);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2, StartCallCATsSimple.DisambiguateContactsHandlesDialogIds.rawValue.getter);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2, StartCallCATsSimple.IntentHandledResponseEmergencyDialogIds.rawValue.getter);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2, StartCallCATsSimple.UnsupportedContactsNoContactFoundDialogIds.rawValue.getter);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2, StartCallCATsSimple.UnsupportedContactsNoHandleForLabelDialogIds.rawValue.getter);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2, StartCallCATPatternsIdentifiers.rawValue.getter);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2, StartCallCATs.Properties.rawValue.getter);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2, HangUpCallCATs.Properties.rawValue.getter);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2, SearchCallHistoryCATs.Properties.rawValue.getter);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2, SearchCallHistoryCATsSimple.ConfirmCallTypesDialogIds.rawValue.getter);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2, SearchCallHistoryCATsSimple.Properties.rawValue.getter);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2, SearchCallHistoryCATPatternsIdentifiers.rawValue.getter);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2, OngoingCallCATsSimple.NewCallPromptDialogIds.rawValue.getter);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2, OngoingCallCATsSimple.Properties.rawValue.getter);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2, OngoingCallCATs.Properties.rawValue.getter);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2, AnnounceCallBellCATs.Properties.rawValue.getter);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2, CallControlUsoIdentifiers.PhoneSetting.rawValue.getter);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2, PhoneStartCallIntent.CodingKeys.rawValue.getter);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2, PhoneSearchCallHistoryIntent.CodingKeys.rawValue.getter);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2, PhoneIncomingCall.CodingKeys.rawValue.getter);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2, PhoneCallAudioRoute.rawValue.getter);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2, PhoneCallCommonCATs.Properties.rawValue.getter);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2, PhoneCallControlCATs.Properties.rawValue.getter);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2, PhoneCallNLConstants.rawValue.getter);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2, PhoneCallConfirmation.rawValue.getter);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2, PhoneCallControlAction.rawValue.getter);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2, PhoneCallVerbSemantics.rawValue.getter);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2, PhoneCallControlNLIntent.Verb.rawValue.getter);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2, PhoneCallControlNLIntent.Target.rawValue.getter);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2, PhoneCallDestinationType.rawValue.getter);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2, PhoneCallDisplayTextCATs.Properties.rawValue.getter);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2, PhoneCallCommonCATsSimple.Properties.rawValue.getter);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2, PhoneCallContactReference.rawValue.getter);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2, PhoneCallControlCATsSimple.CallControlDialogIds.rawValue.getter);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2, PhoneCallControlCATsSimple.Properties.rawValue.getter);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2, PhoneCallControlCATsSimple.UnsupportedHoldActionDialogIds.rawValue.getter);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2, PhoneCallControlCATsSimple.UnsupportedSwitchToFaceTimeDialogIds.rawValue.getter);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2, PhoneCallDisplayTextCATsSimple.Properties.rawValue.getter);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2, PhoneCallNoun.rawValue.getter);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2, PhoneCallVerb.rawValue.getter);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2, PhoneCallRecord.CodingKeys.rawValue.getter);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2, PhoneCallProvider.CodingKeys.rawValue.getter);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2, PhoneCallAttribute.rawValue.getter);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2, PhoneCallReference.rawValue.getter);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2, PhoneCallSlotNames.rawValue.getter);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2, DucFamilyNames.rawValue.getter);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2, SuggestionsCATsSimple.Properties.rawValue.getter);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2, ContactSourceType.rawValue.getter);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2, FollowUpOfferType.rawValue.getter);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2, ReaderNLConstants.rawValue.getter);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2, VoicemailVerbSemantics.rawValue.getter);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2, UsoIdentifierNamespaceType.rawValue.getter);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2, AnnounceVoicemailCATsSimple.ReadVoicemailAnnouncementDialogIds.rawValue.getter);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2, AnnounceVoicemailDirectAction.CodingKeys.rawValue.getter);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2, TrialSmartAppSelectionConfigKey.rawValue.getter);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2, IdentifyIncomingCallerCATsSimple.IntentHandledResponseDialogIds.rawValue.getter);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2, AnnounceGroupFaceTimeInviteCATsSimple.ReadGroupFaceTimeInviteAnnouncementDialogIds.rawValue.getter);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2, LogTag.rawValue.getter);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2, VoiceMail.VoiceMailVerb.rawValue.getter);
}

Swift::Int specialized RawRepresentable<>._rawHashValue(seed:)()
{
  OUTLINED_FUNCTION_38_11();
  OUTLINED_FUNCTION_93_0();

  return Hasher._finalize()();
}

{
  OUTLINED_FUNCTION_38_11();
  if (!v0)
  {
    OUTLINED_FUNCTION_50_11();
  }

  OUTLINED_FUNCTION_39_3();

  return Hasher._finalize()();
}

{
  OUTLINED_FUNCTION_38_11();
  if (!v0)
  {
    OUTLINED_FUNCTION_5_42();
  }

  OUTLINED_FUNCTION_39_3();

  return Hasher._finalize()();
}

{
  OUTLINED_FUNCTION_38_11();
  OUTLINED_FUNCTION_39_3();

  return Hasher._finalize()();
}

{
  OUTLINED_FUNCTION_38_11();
  OUTLINED_FUNCTION_39_3();

  return Hasher._finalize()();
}

{
  OUTLINED_FUNCTION_38_11();
  if (!v0)
  {
    OUTLINED_FUNCTION_51_11();
  }

  OUTLINED_FUNCTION_39_3();

  return Hasher._finalize()();
}

{
  OUTLINED_FUNCTION_38_11();
  if (!v0)
  {
    OUTLINED_FUNCTION_68_3();
  }

  OUTLINED_FUNCTION_39_3();

  return Hasher._finalize()();
}

{
  OUTLINED_FUNCTION_38_11();
  OUTLINED_FUNCTION_93_0();

  return Hasher._finalize()();
}

{
  OUTLINED_FUNCTION_38_11();
  OUTLINED_FUNCTION_16_10();
  OUTLINED_FUNCTION_39_3();

  return Hasher._finalize()();
}

{
  OUTLINED_FUNCTION_38_11();
  OUTLINED_FUNCTION_16_10();
  OUTLINED_FUNCTION_39_3();

  return Hasher._finalize()();
}

{
  v0 = Hasher.init(_seed:)();
  OUTLINED_FUNCTION_13_3(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10);
  String.hash(into:)();
  return Hasher._finalize()();
}

{
  OUTLINED_FUNCTION_38_11();
  OUTLINED_FUNCTION_16_10();
  OUTLINED_FUNCTION_39_3();

  return Hasher._finalize()();
}

{
  v0 = Hasher.init(_seed:)();
  OUTLINED_FUNCTION_13_3(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10);
  String.hash(into:)();
  return Hasher._finalize()();
}

{
  return OUTLINED_FUNCTION_3_44();
}

{
  return OUTLINED_FUNCTION_22_13();
}

{
  OUTLINED_FUNCTION_71_2();
  OUTLINED_FUNCTION_75_4();
  OUTLINED_FUNCTION_39_3();

  return Hasher._finalize()();
}

{
  OUTLINED_FUNCTION_71_2();
  switch(v0)
  {
    case 1:
      OUTLINED_FUNCTION_67_4();
      break;
    case 2:
      OUTLINED_FUNCTION_34_9();
      break;
    default:
      break;
  }

  OUTLINED_FUNCTION_39_3();

  return Hasher._finalize()();
}

{
  OUTLINED_FUNCTION_38_11();
  OUTLINED_FUNCTION_16_10();
  OUTLINED_FUNCTION_39_3();

  return Hasher._finalize()();
}

{
  OUTLINED_FUNCTION_38_11();
  OUTLINED_FUNCTION_16_10();
  OUTLINED_FUNCTION_39_3();

  return Hasher._finalize()();
}

{
  return OUTLINED_FUNCTION_43_13();
}

{
  OUTLINED_FUNCTION_38_11();
  OUTLINED_FUNCTION_64_5();
  OUTLINED_FUNCTION_93_0();

  return Hasher._finalize()();
}

{
  OUTLINED_FUNCTION_38_11();
  OUTLINED_FUNCTION_39_3();

  return Hasher._finalize()();
}

{
  OUTLINED_FUNCTION_38_11();
  OUTLINED_FUNCTION_39_3();

  return Hasher._finalize()();
}

{
  OUTLINED_FUNCTION_38_11();
  OUTLINED_FUNCTION_39_3();

  return Hasher._finalize()();
}

{
  OUTLINED_FUNCTION_38_11();
  OUTLINED_FUNCTION_30_15();
  OUTLINED_FUNCTION_39_3();

  return Hasher._finalize()();
}

{
  OUTLINED_FUNCTION_38_11();
  OUTLINED_FUNCTION_39_3();

  return Hasher._finalize()();
}

{
  return OUTLINED_FUNCTION_7_35();
}

{
  OUTLINED_FUNCTION_38_11();
  if (!v0)
  {
    OUTLINED_FUNCTION_24_7();
  }

  OUTLINED_FUNCTION_39_3();

  return Hasher._finalize()();
}

{
  OUTLINED_FUNCTION_63_5();
  return specialized RawRepresentable<>._rawHashValue(seed:)();
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)();
}

{
  OUTLINED_FUNCTION_38_11();
  if (!v0)
  {
    OUTLINED_FUNCTION_53_12();
  }

  OUTLINED_FUNCTION_39_3();

  return Hasher._finalize()();
}

{
  v0 = Hasher.init(_seed:)();
  OUTLINED_FUNCTION_13_3(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10);
  OUTLINED_FUNCTION_62_9();
  String.hash(into:)();
  return Hasher._finalize()();
}

{
  return OUTLINED_FUNCTION_45_9();
}

{
  OUTLINED_FUNCTION_38_11();
  String.hash(into:)();

  return Hasher._finalize()();
}

{
  OUTLINED_FUNCTION_38_11();
  String.hash(into:)();

  return Hasher._finalize()();
}

{
  OUTLINED_FUNCTION_38_11();
  if (v0)
  {
    OUTLINED_FUNCTION_78_5();
  }

  OUTLINED_FUNCTION_39_3();

  return Hasher._finalize()();
}

{
  OUTLINED_FUNCTION_38_11();
  if (!v0)
  {
    OUTLINED_FUNCTION_46_10();
  }

  OUTLINED_FUNCTION_39_3();

  return Hasher._finalize()();
}

{
  v0 = Hasher.init(_seed:)();
  OUTLINED_FUNCTION_13_3(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10);
  String.hash(into:)();
  return Hasher._finalize()();
}

{
  OUTLINED_FUNCTION_38_11();
  if (!v0)
  {
    OUTLINED_FUNCTION_54_12();
  }

  OUTLINED_FUNCTION_39_3();

  return Hasher._finalize()();
}

{
  OUTLINED_FUNCTION_71_2();
  OUTLINED_FUNCTION_59_5();
  switch(v0)
  {
    case 2:
      OUTLINED_FUNCTION_10_34();
      break;
    case 3:
      OUTLINED_FUNCTION_9_32();
      break;
    default:
      break;
  }

  OUTLINED_FUNCTION_39_3();

  return Hasher._finalize()();
}

{
  return OUTLINED_FUNCTION_7_35();
}

{
  return OUTLINED_FUNCTION_7_35();
}

{
  return OUTLINED_FUNCTION_20_22();
}

{
  return OUTLINED_FUNCTION_41_12();
}

{
  return OUTLINED_FUNCTION_3_44();
}

{
  return OUTLINED_FUNCTION_43_13();
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)();
}

{
  return OUTLINED_FUNCTION_7_35();
}

{
  OUTLINED_FUNCTION_38_11();
  OUTLINED_FUNCTION_39_3();

  return Hasher._finalize()();
}

{
  return OUTLINED_FUNCTION_3_44();
}

{
  OUTLINED_FUNCTION_38_11();
  String.hash(into:)();

  return Hasher._finalize()();
}

{
  return OUTLINED_FUNCTION_22_13();
}

{
  return OUTLINED_FUNCTION_18_15();
}

{
  return OUTLINED_FUNCTION_3_44();
}

{
  return OUTLINED_FUNCTION_18_15();
}

{
  v0 = Hasher.init(_seed:)();
  OUTLINED_FUNCTION_13_3(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10);
  String.hash(into:)();
  return Hasher._finalize()();
}

{
  OUTLINED_FUNCTION_38_11();
  if (!v0)
  {
    OUTLINED_FUNCTION_49_9();
  }

  OUTLINED_FUNCTION_39_3();

  return Hasher._finalize()();
}

{
  OUTLINED_FUNCTION_63_5();
  return OUTLINED_FUNCTION_18_15();
}

{
  OUTLINED_FUNCTION_38_11();
  if (!v0)
  {
    OUTLINED_FUNCTION_80_3();
  }

  OUTLINED_FUNCTION_79_4();
  OUTLINED_FUNCTION_39_3();

  return Hasher._finalize()();
}

{
  return OUTLINED_FUNCTION_20_22();
}

{
  OUTLINED_FUNCTION_38_11();
  if (!v0)
  {
    OUTLINED_FUNCTION_88_3();
  }

  OUTLINED_FUNCTION_39_3();

  return Hasher._finalize()();
}

{
  OUTLINED_FUNCTION_38_11();
  OUTLINED_FUNCTION_39_3();

  return Hasher._finalize()();
}

{
  OUTLINED_FUNCTION_38_11();
  OUTLINED_FUNCTION_39_3();

  return Hasher._finalize()();
}

{
  OUTLINED_FUNCTION_38_11();
  OUTLINED_FUNCTION_39_3();

  return Hasher._finalize()();
}

{
  OUTLINED_FUNCTION_38_11();
  if (v0)
  {
    OUTLINED_FUNCTION_78_5();
  }

  else
  {
    OUTLINED_FUNCTION_28_14();
  }

  OUTLINED_FUNCTION_39_3();

  return Hasher._finalize()();
}

{
  OUTLINED_FUNCTION_94_3();
  return specialized RawRepresentable<>._rawHashValue(seed:)();
}

{
  OUTLINED_FUNCTION_38_11();
  OUTLINED_FUNCTION_39_3();

  return Hasher._finalize()();
}

{
  OUTLINED_FUNCTION_71_2();
  switch(v0)
  {
    case 2:
      OUTLINED_FUNCTION_37_13();
      break;
    case 3:
      OUTLINED_FUNCTION_11_31();
      break;
    default:
      break;
  }

  OUTLINED_FUNCTION_39_3();

  return Hasher._finalize()();
}

{
  OUTLINED_FUNCTION_24_7();
  return OUTLINED_FUNCTION_45_9();
}

{
  OUTLINED_FUNCTION_73_3();
  return OUTLINED_FUNCTION_22_13();
}

{
  OUTLINED_FUNCTION_71_2();
  OUTLINED_FUNCTION_36_13();
  switch(v0)
  {
    case 1:
      OUTLINED_FUNCTION_89_1();
      break;
    case 3:
      OUTLINED_FUNCTION_11_31();
      break;
    default:
      break;
  }

  OUTLINED_FUNCTION_39_3();

  return Hasher._finalize()();
}

{
  OUTLINED_FUNCTION_38_11();
  if (v0)
  {
    OUTLINED_FUNCTION_47_12();
    OUTLINED_FUNCTION_26_3();
    OUTLINED_FUNCTION_27_13();
  }

  else
  {
    OUTLINED_FUNCTION_35_9();
  }

  OUTLINED_FUNCTION_39_3();

  return Hasher._finalize()();
}

{
  OUTLINED_FUNCTION_38_11();
  specialized RawRepresentable<>.hash(into:)(v2, v0);
  return Hasher._finalize()();
}

{
  OUTLINED_FUNCTION_71_2();
  OUTLINED_FUNCTION_48_12();
  switch(v0)
  {
    case 1:
    case 3:
      OUTLINED_FUNCTION_24_7();
      break;
    case 2:
      OUTLINED_FUNCTION_24_7();
      OUTLINED_FUNCTION_77_6();
      break;
    default:
      break;
  }

  OUTLINED_FUNCTION_39_3();

  return Hasher._finalize()();
}

{
  v0 = Hasher.init(_seed:)();
  OUTLINED_FUNCTION_13_3(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10);
  OUTLINED_FUNCTION_62_9();
  String.hash(into:)();
  return Hasher._finalize()();
}

{
  OUTLINED_FUNCTION_38_11();
  OUTLINED_FUNCTION_16_10();
  OUTLINED_FUNCTION_39_3();

  return Hasher._finalize()();
}

{
  v0 = Hasher.init(_seed:)();
  OUTLINED_FUNCTION_13_3(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10);
  String.hash(into:)();
  return Hasher._finalize()();
}

{
  OUTLINED_FUNCTION_38_11();
  OUTLINED_FUNCTION_16_10();
  OUTLINED_FUNCTION_39_3();

  return Hasher._finalize()();
}

{
  OUTLINED_FUNCTION_38_11();
  OUTLINED_FUNCTION_81_2();
  String.hash(into:)();

  return Hasher._finalize()();
}

{
  OUTLINED_FUNCTION_38_11();
  OUTLINED_FUNCTION_39_3();

  return Hasher._finalize()();
}

{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

{
  v0 = Hasher.init(_seed:)();
  OUTLINED_FUNCTION_13_3(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10);
  String.hash(into:)();
  return Hasher._finalize()();
}

{
  OUTLINED_FUNCTION_38_11();
  OUTLINED_FUNCTION_93_0();

  return Hasher._finalize()();
}

{
  OUTLINED_FUNCTION_38_11();
  OUTLINED_FUNCTION_39_3();

  return Hasher._finalize()();
}

Swift::Int specialized RawRepresentable<>._rawHashValue(seed:)(uint64_t a1, char a2)
{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2, AnnounceIncomingCallCATs.Properties.rawValue.getter);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2, PostCallInquiryAnswerCallCATs.Properties.rawValue.getter);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2, StartCallCATsSimple.ConfirmAppDialogIds.rawValue.getter);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2, StartCallCATsSimple.DisambiguateContactsDialogIds.rawValue.getter);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2, StartCallCATsSimple.DisambiguateAppsVoiceModeDialogIds.rawValue.getter);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2, StartCallCATsSimple.BusinessCallingFeatureDisabledDialogIds.rawValue.getter);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2, StartCallCATsSimple.UnsupportedContactsInvalidHandleDialogIds.rawValue.getter);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2, StartCallCATsSimple.IntentConfirmationWithRestrictedContactsDialogIds.rawValue.getter);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2, AnswerCallCATs.Properties.rawValue.getter);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2, SearchCallHistoryCATsSimple.ShowCallHistoryIntroDialogIds.rawValue.getter);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2, SearchCallHistoryCATsSimple.ConfirmDateCreatedDialogIds.rawValue.getter);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2, PhoneAppResolutionLogger.CodePathId.rawValue.getter);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2, PhoneAppSelectionSignalsGathererType.rawValue.getter);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2, PhoneCallCommonCATPatternsIdentifiers.rawValue.getter);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2, SlotResolutionError.rawValue.getter);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2, AnnounceVoicemailCATsSimple.Properties.rawValue.getter);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2, SpecifyingContactAddress.rawValue.getter);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2, IdentifyIncomingCallerCATsSimple.Properties.rawValue.getter);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2, ForcedAppDisambiguationPhase.rawValue.getter);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2, AnnounceGroupFaceTimeInviteCATPatternsIdentifiers.rawValue.getter);
}

Swift::Int specialized RawRepresentable<>._rawHashValue(seed:)(uint64_t a1, char a2, void (*a3)(void))
{
  Hasher.init(_seed:)();
  a3(a2 & 1);
  OUTLINED_FUNCTION_72_3();

  return Hasher._finalize()();
}

Swift::Int specialized RawRepresentable<>._rawHashValue(seed:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  Hasher.init(_seed:)();
  a3(a2);
  OUTLINED_FUNCTION_72_3();

  return Hasher._finalize()();
}

uint64_t specialized CallingIntentContinueInAppStrategy.init(sharedGlobals:startCallCATsSimple:phoneCallDisplayTextCATsSimple:)(__int128 *a1, uint64_t a2, uint64_t a3)
{
  static UnlockDevicePolicy.default.getter();
  *(v3 + direct field offset for CallingIntentContinueInAppStrategy.additionalCommands) = &_swiftEmptyArrayStorage;
  outlined init with take of SPHConversation(a1, v3 + 16);
  *(v3 + 56) = a2;
  *(v3 + 64) = a3;
  return v3;
}

uint64_t specialized CallingIntentContinueInAppStrategy.makePostDialogCommands(intentResolutionRecord:dialogTemplating:)(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow22IntentResolutionRecordVySo011INStartCallD0CSo0ghD8ResponseCGMd, &_s11SiriKitFlow22IntentResolutionRecordVySo011INStartCallD0CSo0ghD8ResponseCGMR);
  v2[6] = v3;
  v4 = *(v3 - 8);
  v2[7] = v4;
  v5 = *(v4 + 64) + 15;
  v2[8] = swift_task_alloc();

  return _swift_task_switch(specialized CallingIntentContinueInAppStrategy.makePostDialogCommands(intentResolutionRecord:dialogTemplating:), 0, 0);
}

uint64_t specialized CallingIntentContinueInAppStrategy.makePostDialogCommands(intentResolutionRecord:dialogTemplating:)()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];
  v4 = v0[4];
  v0[2] = _swiftEmptyArrayStorage;
  (*(v2 + 16))(v1, v4, v3);
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2();
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static Logger.siriPhone);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_16_4(v7))
  {
    *OUTLINED_FUNCTION_65_0() = 0;
    OUTLINED_FUNCTION_14_1(&dword_0, v8, v9, "#CallingIntentContinueInAppStrategy: Building launch app command for INStartCallIntent");
    OUTLINED_FUNCTION_26_0();
  }

  v10 = v0[8];
  v11 = v0[5];

  v12 = swift_task_alloc();
  v0[9] = v12;
  *(v12 + 16) = v10;
  *(v12 + 24) = v11;
  v13 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v14 = swift_task_alloc();
  v0[10] = v14;
  v15 = type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SAIntentGroupLaunchAppWithIntent, SAIntentGroupLaunchAppWithIntent_ptr);
  *v14 = v0;
  v14[1] = specialized CallingIntentContinueInAppStrategy.makePostDialogCommands(intentResolutionRecord:dialogTemplating:);

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 3, 0, 0, 0xD000000000000040, 0x8000000000458F30, partial apply for specialized closure #1 in CallingIntentContinueInAppStrategy.makePostDialogCommands(intentResolutionRecord:dialogTemplating:), v12, v15);
}

{
  v2 = *(*v1 + 80);
  v3 = *(*v1 + 72);
  v6 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v4 = specialized CallingIntentContinueInAppStrategy.makePostDialogCommands(intentResolutionRecord:dialogTemplating:);
  }

  else
  {
    v4 = specialized CallingIntentContinueInAppStrategy.makePostDialogCommands(intentResolutionRecord:dialogTemplating:);
  }

  return _swift_task_switch(v4, 0, 0);
}

{
  v1 = *(v0 + 64);
  v2 = *(v0 + 48);
  v3 = *(*(v0 + 56) + 8);
  v4 = *(v0 + 24);
  v3(v1, v2);
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*(&dword_10 + (*(v0 + 16) & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*(v0 + 16) & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  v5 = *(v0 + 64);
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v6 = *(v0 + 16);

  v7 = *(v0 + 8);

  return v7(v6);
}

{
  (*(v0[7] + 8))(v0[8], v0[6]);

  v1 = v0[1];
  v2 = v0[11];

  return v1();
}

uint64_t specialized closure #1 in CallingIntentContinueInAppStrategy.makePostDialogCommands(intentResolutionRecord:dialogTemplating:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16[1] = a3;
  v4 = type metadata accessor for CATOption();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo32SAIntentGroupLaunchAppWithIntentCs5Error_pGMd, &_sScCySo32SAIntentGroupLaunchAppWithIntentCs5Error_pGMR);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v16 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow22IntentResolutionRecordVySo011INStartCallD0CSo0ghD8ResponseCGMd, &_s11SiriKitFlow22IntentResolutionRecordVySo011INStartCallD0CSo0ghD8ResponseCGMR);
  IntentResolutionRecord.app.getter();
  v11 = IntentResolutionRecord.intent.getter();
  v12 = IntentResolutionRecord.intentResponse.getter();
  (*(v7 + 16))(v10, a1, v6);
  v13 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v14 = swift_allocObject();
  (*(v7 + 32))(v14 + v13, v10, v6);
  if (one-time initialization token for instance != -1)
  {
    swift_once();
  }

  type metadata accessor for UnsupportedFlowCATs();
  static CATOption.defaultMode.getter();
  CATWrapper.__allocating_init(options:globals:)();
  _s27PhoneCallFlowDelegatePlugin05Startb7RCHFlowD0C29makeLaunchAppCommandForHandle3app13sharedGlobals6intent0Q8Response16biomeEventSender011unsupportedC4Cats_y04SiriJ10Resolution0J0C_AA06SharedP9Providing_pSo07INStartB6IntentCSo07INStartb6IntentR0CSgAA05BiomeT7Sending_pAA011UnsupportedC4CATsCys6ResultOySo013SAIntentGroupiJ10WithIntentCs5Error_pGctFZTf4nnnnennn_nAA05BiometU0V_Tt6g5();
}

uint64_t *specialized CallingIntentContinueInAppStrategy.deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v1 = v0[7];

  v2 = v0[8];

  v3 = direct field offset for CallingIntentContinueInAppStrategy.authenticationPolicy;
  v4 = type metadata accessor for UnlockDevicePolicy();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(v0 + direct field offset for CallingIntentContinueInAppStrategy.additionalCommands);

  return v0;
}

uint64_t HangUpAndCallHandleIntentStrategy.__allocating_init(sharedGlobals:options:)(uint64_t *a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  return HangUpAndCallHandleIntentStrategy.init(sharedGlobals:options:)(a1, a2);
}

uint64_t HangUpAndCallHandleIntentStrategy.init(sharedGlobals:options:)(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for CATOption();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  *(v3 + direct field offset for HangUpAndCallHandleIntentStrategy.options) = a2;
  outlined init with copy of SignalProviding(a1, v12);
  type metadata accessor for StartCallCATsSimple();
  static CATOption.defaultMode.getter();
  v8 = CATWrapperSimple.__allocating_init(options:globals:)();
  type metadata accessor for PhoneCallDisplayTextCATsSimple();
  static CATOption.defaultMode.getter();
  v9 = CATWrapperSimple.__allocating_init(options:globals:)();
  v10 = specialized CallingIntentContinueInAppStrategy.init(sharedGlobals:startCallCATsSimple:phoneCallDisplayTextCATsSimple:)(v12, v8, v9);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v10;
}

uint64_t HangUpAndCallHandleIntentStrategy.makePostDialogCommands(intentResolutionRecord:dialogTemplating:)(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  return _swift_task_switch(HangUpAndCallHandleIntentStrategy.makePostDialogCommands(intentResolutionRecord:dialogTemplating:), 0, 0);
}

uint64_t HangUpAndCallHandleIntentStrategy.makePostDialogCommands(intentResolutionRecord:dialogTemplating:)()
{
  v17 = v0;
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2();
  }

  v1 = v0[9];
  v2 = type metadata accessor for Logger();
  v0[10] = __swift_project_value_buffer(v2, static Logger.siriPhone);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[9];
    v6 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v6 = 136315394;
    *(v6 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000040, 0x8000000000458F30, &v16);
    *(v6 + 12) = 2080;
    v7 = *(v5 + direct field offset for HangUpAndCallHandleIntentStrategy.options);
    lazy protocol witness table accessor for type OngoingCallOfferOptions and conformance OngoingCallOfferOptions();
    v8 = Set.description.getter();
    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, &v16);

    *(v6 + 14) = v10;
    _os_log_impl(&dword_0, v3, v4, "#HangUpAndCallHandleIntentStrategy %s, options: %s", v6, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_26_0();
    OUTLINED_FUNCTION_26_0();
  }

  v11 = swift_task_alloc();
  v0[11] = v11;
  *v11 = v0;
  v11[1] = HangUpAndCallHandleIntentStrategy.makePostDialogCommands(intentResolutionRecord:dialogTemplating:);
  v12 = v0[8];
  v13 = v0[9];
  v14 = v0[7];

  return specialized CallingIntentContinueInAppStrategy.makePostDialogCommands(intentResolutionRecord:dialogTemplating:)(v14);
}

{
  v2 = *(v0[9] + direct field offset for HangUpAndCallHandleIntentStrategy.options);
  if (!v2[2])
  {
    goto LABEL_32;
  }

  v3 = v2[5];
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();
  OUTLINED_FUNCTION_33_11(v4);
  if ((v5 & 1) == 0)
  {
LABEL_7:
    if (v2[2])
    {
      v8 = v2[5];
      Hasher.init(_seed:)();
      String.hash(into:)();
      v9 = Hasher._finalize()();
      OUTLINED_FUNCTION_33_11(v9);
      if (v10)
      {
        while (!*(v2[6] + v1) || *(v2[6] + v1) == 1)
        {
          v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v11)
          {
            goto LABEL_27;
          }

          OUTLINED_FUNCTION_57_9();
          if ((v12 & 1) == 0)
          {
            goto LABEL_32;
          }
        }

LABEL_27:
        v31 = v0[9];
        v32 = v31[5];
        v33 = v31[6];
        __swift_project_boxed_opaque_existential_1(v31 + 2, v32);
        (*(v33 + 120))(v32, v33);
        v34 = v0[5];
        v35 = v0[6];
        __swift_project_boxed_opaque_existential_1(v0 + 2, v34);
        if ((*(v35 + 24))(v34, v35))
        {
          v37 = v36;
          v38 = v0[10];
          __swift_destroy_boxed_opaque_existential_1(v0 + 2);
          v39 = Logger.logObject.getter();
          v40 = static os_log_type_t.debug.getter();
          if (OUTLINED_FUNCTION_16_4(v40))
          {
            v41 = OUTLINED_FUNCTION_65_0();
            *v41 = 0;
            _os_log_impl(&dword_0, v39, v40, "#HangUpAndCallHandleIntentStrategy Holding call and sending default continueInApp commands", v41, 2u);
            OUTLINED_FUNCTION_26_0();
          }

          ObjectType = swift_getObjectType();
          (*(v37 + 200))(ObjectType, v37);
          swift_unknownObjectRelease();
          goto LABEL_35;
        }

        __swift_destroy_boxed_opaque_existential_1(v0 + 2);
      }
    }

LABEL_32:
    v43 = v0[10];
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_16_4(v45))
    {
      *OUTLINED_FUNCTION_65_0() = 0;
      OUTLINED_FUNCTION_14_1(&dword_0, v46, v47, "#HangUpAndCallHandleIntentStrategy Unexpected case: sending default continueInApp commands");
      OUTLINED_FUNCTION_26_0();
    }

LABEL_35:
    v29 = v0[12];
    goto LABEL_36;
  }

  while (!*(v2[6] + v1) || *(v2[6] + v1) == 2)
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      goto LABEL_15;
    }

    OUTLINED_FUNCTION_57_9();
    if ((v7 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

LABEL_15:
  v13 = specialized Array.count.getter(v0[12]);
  if (!v13)
  {
    v30 = v0[12];

    v29 = _swiftEmptyArrayStorage;
LABEL_36:
    v48 = v0[1];

    return v48(v29);
  }

  v14 = v13;
  v15 = v0[9];

  result = specialized ContiguousArray.reserveCapacity(_:)();
  if (v14 < 0)
  {
    goto LABEL_41;
  }

  v17 = 0;
  v18 = v0[12];
  v19 = v18 & 0xC000000000000001;
  v20 = v18 & 0xFFFFFFFFFFFFFF8;
  v21 = v18 + 32;
  while (1)
  {
    if (v19)
    {
      v22 = v0[12];
      v23 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      goto LABEL_23;
    }

    if ((v17 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v17 >= *(v20 + 16))
    {
      goto LABEL_40;
    }

    v23 = *(v21 + 8 * v17);
LABEL_23:
    v24 = v23;
    v25 = v0[9];
    ++v17;
    HangUpAndCallHandleIntentStrategy.wrapLaunchAppWithHangUp(command:)(v23);

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    v26 = _swiftEmptyArrayStorage[2];
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    result = specialized ContiguousArray._endMutation()();
    if (v14 == v17)
    {
      v27 = v0[12];
      v28 = v0[9];

      v29 = _swiftEmptyArrayStorage;
      goto LABEL_36;
    }
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
  return result;
}

uint64_t HangUpAndCallHandleIntentStrategy.makePostDialogCommands(intentResolutionRecord:dialogTemplating:)(uint64_t a1)
{
  v3 = *(*v2 + 88);
  v4 = *v2;
  *(v4 + 96) = a1;

  if (v1)
  {
    v5 = *(v4 + 8);

    return v5();
  }

  else
  {

    return _swift_task_switch(HangUpAndCallHandleIntentStrategy.makePostDialogCommands(intentResolutionRecord:dialogTemplating:), 0, 0);
  }
}

id HangUpAndCallHandleIntentStrategy.wrapLaunchAppWithHangUp(command:)(void *a1)
{
  v2 = v1;
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  v4 = one-time initialization token for siriPhone;
  if (v3)
  {
    v5 = v3;
    v6 = a1;
    if (v4 != -1)
    {
      OUTLINED_FUNCTION_6_2();
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, static Logger.siriPhone);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_16_4(v9))
    {
      v10 = OUTLINED_FUNCTION_65_0();
      *v10 = 0;
      _os_log_impl(&dword_0, v8, v9, "#HangUpAndCallHandleIntentStrategy HandleIntent(INHangUpCallIntent) before LaunchAppWithIntent", v10, 2u);
      OUTLINED_FUNCTION_26_0();
    }

    v11 = [objc_allocWithZone(SAResultCallback) init];
    [v11 setCode:SAResultCallbackAnySuccessCodeValue];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_426260;
    *(v12 + 32) = v5;
    v13 = v6;
    outlined bridged method (mbnn) of @objc SAResultCallback.commands.setter(v12, v11);
    v14 = [objc_allocWithZone(INHangUpCallIntent) init];
    if (one-time initialization token for instance != -1)
    {
      swift_once();
    }

    memcpy(__dst, &static PhoneCallFeatureFlags.instance, sizeof(__dst));
    v35 = &type metadata for PhoneCallFeatureFlags;
    v36 = &protocol witness table for PhoneCallFeatureFlags;
    *&v34 = swift_allocObject();
    memcpy((v34 + 16), &static PhoneCallFeatureFlags.instance, 0xC0uLL);
    outlined init with take of SPHConversation(&v34, v37);
    outlined init with copy of PhoneCallFeatureFlags(__dst, v32);
    __swift_destroy_boxed_opaque_existential_1(v37);
    v15 = v2[6];
    __swift_project_boxed_opaque_existential_1(v2 + 2, v2[5]);
    v16 = *(v15 + 8);
    v17 = OUTLINED_FUNCTION_3_13();
    v18(v17);
    __swift_project_boxed_opaque_existential_1(v32, v33);
    OUTLINED_FUNCTION_3_13();
    if (dispatch thunk of DeviceState.isMac.getter())
    {
      if (one-time initialization token for siriFaceTimeMacExtension != -1)
      {
        swift_once();
      }

      v19 = &static DefaultPhoneApps.siriFaceTimeMacExtension;
    }

    else
    {
      __swift_project_boxed_opaque_existential_1(v32, v33);
      OUTLINED_FUNCTION_3_13();
      if (dispatch thunk of DeviceState.isWatch.getter())
      {
        if (one-time initialization token for siriPhoneWatchExtension != -1)
        {
          swift_once();
        }

        v19 = &static DefaultPhoneApps.siriPhoneWatchExtension;
      }

      else
      {
        __swift_project_boxed_opaque_existential_1(v32, v33);
        OUTLINED_FUNCTION_3_13();
        if (dispatch thunk of DeviceState.isXRDevice.getter())
        {
          if (one-time initialization token for siriPhoneFaceTimeExtension != -1)
          {
            swift_once();
          }

          v19 = &static DefaultPhoneApps.siriPhoneFaceTimeExtension;
        }

        else
        {
          if (one-time initialization token for siriPhoneExtension != -1)
          {
            swift_once();
          }

          v19 = &static DefaultPhoneApps.siriPhoneExtension;
        }
      }
    }

    v25 = *v19;

    __swift_destroy_boxed_opaque_existential_1(v32);

    v26 = v14;
    INIntent.setMetaData(app:previousIntent:sharedGlobals:)(v25, 0, v2 + 2);

    type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SAIntentGroupHandleIntent, SAIntentGroupHandleIntent_ptr);
    v27 = SAIntentGroupHandleIntent.init(intent:appIdentifier:)(v26, 0, 0);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_426260;
    *(v28 + 32) = v11;
    v29 = v27;
    v30 = v11;
    outlined bridged method (mbnn) of @objc SABaseClientBoundCommand.callbacks.setter(v28, v29);

    return v29;
  }

  else
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2();
    }

    v20 = type metadata accessor for Logger();
    __swift_project_value_buffer(v20, static Logger.siriPhone);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = OUTLINED_FUNCTION_65_0();
      *v23 = 0;
      _os_log_impl(&dword_0, v21, v22, "#HangUpAndCallHandleIntentStrategy Not LaunchApp - no modification to AceCommand", v23, 2u);
      OUTLINED_FUNCTION_26_0();
    }

    return a1;
  }
}

uint64_t *HangUpAndCallHandleIntentStrategy.deinit()
{
  v0 = specialized CallingIntentContinueInAppStrategy.deinit();
  v1 = *(v0 + direct field offset for HangUpAndCallHandleIntentStrategy.options);

  return v0;
}

uint64_t HangUpAndCallHandleIntentStrategy.__deallocating_deinit()
{
  v0 = specialized CallingIntentContinueInAppStrategy.deinit();
  v1 = *(v0 + direct field offset for HangUpAndCallHandleIntentStrategy.options);

  v2 = *(*v0 + 48);
  v3 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

unint64_t lazy protocol witness table accessor for type OngoingCallOfferOptions and conformance OngoingCallOfferOptions()
{
  result = lazy protocol witness table cache variable for type OngoingCallOfferOptions and conformance OngoingCallOfferOptions;
  if (!lazy protocol witness table cache variable for type OngoingCallOfferOptions and conformance OngoingCallOfferOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OngoingCallOfferOptions and conformance OngoingCallOfferOptions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OngoingCallOfferOptions and conformance OngoingCallOfferOptions;
  if (!lazy protocol witness table cache variable for type OngoingCallOfferOptions and conformance OngoingCallOfferOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OngoingCallOfferOptions and conformance OngoingCallOfferOptions);
  }

  return result;
}

uint64_t type metadata accessor for HangUpAndCallHandleIntentStrategy()
{
  result = type metadata singleton initialization cache for HangUpAndCallHandleIntentStrategy;
  if (!type metadata singleton initialization cache for HangUpAndCallHandleIntentStrategy)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t _s27PhoneCallFlowDelegatePlugin34CallingIntentContinueInAppStrategyC22makePostDialogCommands22intentResolutionRecord16dialogTemplatingSaySo13SABaseCommandCG07SiriKitC00gqR0Vyxq_G_AA05Startb3CatT7ServiceCSgtYaKFyScCySo019SAIntentGroupLaunchj4WithG0Cs5Error_pGXEfU_ys6ResultOyARsAS_pGYucATcfu_yAWYucfu0_TA_0(void *a1, char a2)
{
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo32SAIntentGroupLaunchAppWithIntentCs5Error_pGMd, &_sScCySo32SAIntentGroupLaunchAppWithIntentCs5Error_pGMR) - 8) + 80);

  return _s27PhoneCallFlowDelegatePlugin34CallingIntentContinueInAppStrategyC22makePostDialogCommands22intentResolutionRecord16dialogTemplatingSaySo13SABaseCommandCG07SiriKitC00gqR0Vyxq_G_AA05Startb3CatT7ServiceCSgtYaKFyScCySo019SAIntentGroupLaunchj4WithG0Cs5Error_pGXEfU_ys6ResultOyARsAS_pGYucATcfu_yAWYucfu0_(a1, a2 & 1);
}

uint64_t OUTLINED_FUNCTION_38_11()
{

  return Hasher.init(_seed:)();
}

uint64_t OUTLINED_FUNCTION_72_3()
{

  return String.hash(into:)();
}

PhoneCallFlowDelegatePlugin::HangUpCallCATs::Properties_optional __swiftcall HangUpCallCATs.Properties.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of HangUpCallCATs.Properties.init(rawValue:), v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

unint64_t HangUpCallCATs.Properties.rawValue.getter(char a1)
{
  result = 0xD000000000000018;
  if (a1)
  {
    if (a1 == 1)
    {
      return 0xD000000000000026;
    }

    else
    {
      return 0xD000000000000020;
    }
  }

  return result;
}

PhoneCallFlowDelegatePlugin::HangUpCallCATs::Properties_optional protocol witness for RawRepresentable.init(rawValue:) in conformance HangUpCallCATs.Properties@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::HangUpCallCATs::Properties_optional *a2@<X8>)
{
  result.value = HangUpCallCATs.Properties.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance HangUpCallCATs.Properties@<X0>(unint64_t *a1@<X8>)
{
  result = HangUpCallCATs.Properties.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t HangUpCallCATs.errorWithCode()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  v6 = v0;
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_15_2(v1);
  *v2 = v3;
  v2[1] = HangUpCallCATs.errorWithCode();
  v4 = OUTLINED_FUNCTION_5_0();

  return v6(v4, 0xD000000000000018);
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapper.executeDialog(catId:parameters:));
  v5 = v0;
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_15_2(v1);
  *v2 = v3;
  v2[1] = AnnounceCallBellCATPatternsExecutor.informDoubleTapToEnd();

  return v5(0xD000000000000018, 0x8000000000452600, _swiftEmptyArrayStorage);
}

{
  return OUTLINED_FUNCTION_33_1();
}

uint64_t HangUpCallCATs.errorWithCodeNoCallToHangUp()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  v6 = v0;
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_15_2(v1);
  *v2 = v3;
  v2[1] = protocol witness for UnlockDeviceFlowStrategyAsync.makePromptForDeviceUnlock() in conformance DefaultUnlockDeviceFlowStrategyAsync;
  v4 = OUTLINED_FUNCTION_5_0();

  return v6(v4, 0xD000000000000026);
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapper.executeDialog(catId:parameters:));
  v5 = v0;
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_15_2(v1);
  *v2 = v3;
  v2[1] = AnnounceCallBellCATPatternsExecutor.announceCallBellEnded();

  return v5(0xD000000000000026, 0x8000000000452620, _swiftEmptyArrayStorage);
}

{
  return OUTLINED_FUNCTION_33_1();
}

uint64_t HangUpCallCATs.intentHandledResponse()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  v6 = v0;
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_15_2(v1);
  *v2 = v3;
  v2[1] = HangUpCallCATs.errorWithCode();
  v4 = OUTLINED_FUNCTION_5_0();

  return v6(v4, 0xD000000000000020);
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapper.executeDialog(catId:parameters:));
  v5 = v0;
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_15_2(v1);
  *v2 = v3;
  v2[1] = AnnounceCallBellCATPatternsExecutor.informDoubleTapToEnd();

  return v5(0xD000000000000020, 0x8000000000452650, _swiftEmptyArrayStorage);
}

{
  return OUTLINED_FUNCTION_33_1();
}

uint64_t HangUpCallCATs.__allocating_init(templateDir:options:globals:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  return HangUpCallCATs.init(templateDir:options:globals:)(a1, a2);
}

uint64_t HangUpCallCATs.init(templateDir:options:globals:)(uint64_t a1, uint64_t a2)
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

unint64_t lazy protocol witness table accessor for type HangUpCallCATs.Properties and conformance HangUpCallCATs.Properties()
{
  result = lazy protocol witness table cache variable for type HangUpCallCATs.Properties and conformance HangUpCallCATs.Properties;
  if (!lazy protocol witness table cache variable for type HangUpCallCATs.Properties and conformance HangUpCallCATs.Properties)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HangUpCallCATs.Properties and conformance HangUpCallCATs.Properties);
  }

  return result;
}

uint64_t type metadata accessor for HangUpCallCATs()
{
  result = type metadata singleton initialization cache for HangUpCallCATs;
  if (!type metadata singleton initialization cache for HangUpCallCATs)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for HangUpCallCATs.Properties(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

PhoneCallFlowDelegatePlugin::HangUpCallCATsSimple::Properties_optional __swiftcall HangUpCallCATsSimple.Properties.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_38();
  v3._object = v1;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of HangUpCallCATsSimple.Properties.init(rawValue:), v3);
  OUTLINED_FUNCTION_33_2();
  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

PhoneCallFlowDelegatePlugin::HangUpCallCATsSimple::Properties_optional protocol witness for RawRepresentable.init(rawValue:) in conformance HangUpCallCATsSimple.Properties@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::HangUpCallCATsSimple::Properties_optional *a2@<X8>)
{
  result.value = HangUpCallCATsSimple.Properties.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t HangUpCallCATsSimple.errorWithCode()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v4 = v1;
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  *v2 = v0;
  v2[1] = AnnounceCallBellCATPatternsExecutor.informDoubleTapToEnd();

  return v4(0xD000000000000018, 0x8000000000452600, _swiftEmptyArrayStorage);
}

BOOL HangUpCallCATsSimple.ErrorWithCodeDialogIds.init(rawValue:)()
{
  OUTLINED_FUNCTION_38();
  v2._object = v0;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of HangUpCallCATsSimple.ErrorWithCodeDialogIds.init(rawValue:), v2);
  OUTLINED_FUNCTION_33_2();
  return v1 != 0;
}

BOOL protocol witness for RawRepresentable.init(rawValue:) in conformance HangUpCallCATsSimple.ErrorWithCodeDialogIds@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = HangUpCallCATsSimple.ErrorWithCodeDialogIds.init(rawValue:)();
  *a2 = result;
  return result;
}

uint64_t HangUpCallCATsSimple.errorWithCodeAsLabels()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  v5 = v1;
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  lazy protocol witness table accessor for type HangUpCallCATsSimple.ErrorWithCodeDialogIds and conformance HangUpCallCATsSimple.ErrorWithCodeDialogIds();
  OUTLINED_FUNCTION_9();
  *v2 = v3;
  v2[1] = AnnounceCallBellCATPatternsExecutor.informDoubleTapToEnd();

  return v5(0xD000000000000018, 0x8000000000452600, _swiftEmptyArrayStorage, &type metadata for HangUpCallCATsSimple.ErrorWithCodeDialogIds);
}

unint64_t lazy protocol witness table accessor for type HangUpCallCATsSimple.ErrorWithCodeDialogIds and conformance HangUpCallCATsSimple.ErrorWithCodeDialogIds()
{
  result = lazy protocol witness table cache variable for type HangUpCallCATsSimple.ErrorWithCodeDialogIds and conformance HangUpCallCATsSimple.ErrorWithCodeDialogIds;
  if (!lazy protocol witness table cache variable for type HangUpCallCATsSimple.ErrorWithCodeDialogIds and conformance HangUpCallCATsSimple.ErrorWithCodeDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HangUpCallCATsSimple.ErrorWithCodeDialogIds and conformance HangUpCallCATsSimple.ErrorWithCodeDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HangUpCallCATsSimple.ErrorWithCodeDialogIds and conformance HangUpCallCATsSimple.ErrorWithCodeDialogIds;
  if (!lazy protocol witness table cache variable for type HangUpCallCATsSimple.ErrorWithCodeDialogIds and conformance HangUpCallCATsSimple.ErrorWithCodeDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HangUpCallCATsSimple.ErrorWithCodeDialogIds and conformance HangUpCallCATsSimple.ErrorWithCodeDialogIds);
  }

  return result;
}

uint64_t HangUpCallCATsSimple.errorWithCodeNoCallToHangUp()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v4 = v1;
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  *v2 = v0;
  v2[1] = AnnounceCallBellCATPatternsExecutor.announceCallBellEnded();

  return v4(0xD000000000000026, 0x8000000000452620, _swiftEmptyArrayStorage);
}

BOOL HangUpCallCATsSimple.ErrorWithCodeNoCallToHangUpDialogIds.init(rawValue:)()
{
  OUTLINED_FUNCTION_38();
  v2._object = v0;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of HangUpCallCATsSimple.ErrorWithCodeNoCallToHangUpDialogIds.init(rawValue:), v2);
  OUTLINED_FUNCTION_33_2();
  return v1 != 0;
}

BOOL protocol witness for RawRepresentable.init(rawValue:) in conformance HangUpCallCATsSimple.ErrorWithCodeNoCallToHangUpDialogIds@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = HangUpCallCATsSimple.ErrorWithCodeNoCallToHangUpDialogIds.init(rawValue:)();
  *a2 = result;
  return result;
}

uint64_t HangUpCallCATsSimple.errorWithCodeNoCallToHangUpAsLabels()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  v5 = v1;
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  lazy protocol witness table accessor for type HangUpCallCATsSimple.ErrorWithCodeNoCallToHangUpDialogIds and conformance HangUpCallCATsSimple.ErrorWithCodeNoCallToHangUpDialogIds();
  OUTLINED_FUNCTION_9();
  *v2 = v3;
  v2[1] = AnnounceCallBellCATPatternsExecutor.informDoubleTapToEnd();

  return v5(0xD000000000000026, 0x8000000000452620, _swiftEmptyArrayStorage, &type metadata for HangUpCallCATsSimple.ErrorWithCodeNoCallToHangUpDialogIds);
}

unint64_t lazy protocol witness table accessor for type HangUpCallCATsSimple.ErrorWithCodeNoCallToHangUpDialogIds and conformance HangUpCallCATsSimple.ErrorWithCodeNoCallToHangUpDialogIds()
{
  result = lazy protocol witness table cache variable for type HangUpCallCATsSimple.ErrorWithCodeNoCallToHangUpDialogIds and conformance HangUpCallCATsSimple.ErrorWithCodeNoCallToHangUpDialogIds;
  if (!lazy protocol witness table cache variable for type HangUpCallCATsSimple.ErrorWithCodeNoCallToHangUpDialogIds and conformance HangUpCallCATsSimple.ErrorWithCodeNoCallToHangUpDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HangUpCallCATsSimple.ErrorWithCodeNoCallToHangUpDialogIds and conformance HangUpCallCATsSimple.ErrorWithCodeNoCallToHangUpDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HangUpCallCATsSimple.ErrorWithCodeNoCallToHangUpDialogIds and conformance HangUpCallCATsSimple.ErrorWithCodeNoCallToHangUpDialogIds;
  if (!lazy protocol witness table cache variable for type HangUpCallCATsSimple.ErrorWithCodeNoCallToHangUpDialogIds and conformance HangUpCallCATsSimple.ErrorWithCodeNoCallToHangUpDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HangUpCallCATsSimple.ErrorWithCodeNoCallToHangUpDialogIds and conformance HangUpCallCATsSimple.ErrorWithCodeNoCallToHangUpDialogIds);
  }

  return result;
}

uint64_t HangUpCallCATsSimple.intentHandledResponse(callRinging:)(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 48) = a1;
  return _swift_task_switch(HangUpCallCATsSimple.intentHandledResponse(callRinging:), 0, 0);
}

uint64_t HangUpCallCATsSimple.intentHandledResponse(callRinging:)()
{
  OUTLINED_FUNCTION_27();
  v1 = *(v0 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v2 = swift_allocObject();
  *(v2 + 32) = 0x676E69526C6C6163;
  *(v2 + 40) = 0xEB00000000676E69;
  *(v2 + 72) = &type metadata for Bool;
  *(v2 + 48) = v1;
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v8 = v3;
  *(v0 + 24) = v2;
  *(v2 + 16) = v4;
  v5 = swift_task_alloc();
  *(v0 + 32) = v5;
  *v5 = v0;
  v5[1] = HangUpCallCATsSimple.intentHandledResponse(callRinging:);
  v6 = *(v0 + 16);

  return v8(0xD000000000000020, 0x8000000000452650, v2);
}

{
  OUTLINED_FUNCTION_27();
  v3 = v2;
  v4 = *v1;
  v5 = *(*v1 + 32);
  v6 = *v1;
  *(*v1 + 40) = v0;

  if (v0)
  {

    return _swift_task_switch(HangUpCallCATsSimple.intentHandledResponse(callRinging:), 0, 0);
  }

  else
  {
    v7 = *(v4 + 24);

    v8 = *(v6 + 8);

    return v8(v3);
  }
}

{
  v1 = v0[3];

  v2 = v0[1];
  v3 = v0[5];

  return v2();
}

BOOL HangUpCallCATsSimple.IntentHandledResponseDialogIds.init(rawValue:)()
{
  OUTLINED_FUNCTION_38();
  v2._object = v0;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of HangUpCallCATsSimple.IntentHandledResponseDialogIds.init(rawValue:), v2);
  OUTLINED_FUNCTION_33_2();
  return v1 != 0;
}

BOOL protocol witness for RawRepresentable.init(rawValue:) in conformance HangUpCallCATsSimple.IntentHandledResponseDialogIds@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = HangUpCallCATsSimple.IntentHandledResponseDialogIds.init(rawValue:)();
  *a2 = result;
  return result;
}

uint64_t HangUpCallCATsSimple.intentHandledResponseAsLabels()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  v5 = v1;
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  lazy protocol witness table accessor for type HangUpCallCATsSimple.IntentHandledResponseDialogIds and conformance HangUpCallCATsSimple.IntentHandledResponseDialogIds();
  OUTLINED_FUNCTION_9();
  *v2 = v3;
  v2[1] = AnnounceCallBellCATPatternsExecutor.informDoubleTapToEnd();

  return v5(0xD000000000000020, 0x8000000000452650, _swiftEmptyArrayStorage, &type metadata for HangUpCallCATsSimple.IntentHandledResponseDialogIds);
}

unint64_t lazy protocol witness table accessor for type HangUpCallCATsSimple.IntentHandledResponseDialogIds and conformance HangUpCallCATsSimple.IntentHandledResponseDialogIds()
{
  result = lazy protocol witness table cache variable for type HangUpCallCATsSimple.IntentHandledResponseDialogIds and conformance HangUpCallCATsSimple.IntentHandledResponseDialogIds;
  if (!lazy protocol witness table cache variable for type HangUpCallCATsSimple.IntentHandledResponseDialogIds and conformance HangUpCallCATsSimple.IntentHandledResponseDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HangUpCallCATsSimple.IntentHandledResponseDialogIds and conformance HangUpCallCATsSimple.IntentHandledResponseDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HangUpCallCATsSimple.IntentHandledResponseDialogIds and conformance HangUpCallCATsSimple.IntentHandledResponseDialogIds;
  if (!lazy protocol witness table cache variable for type HangUpCallCATsSimple.IntentHandledResponseDialogIds and conformance HangUpCallCATsSimple.IntentHandledResponseDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HangUpCallCATsSimple.IntentHandledResponseDialogIds and conformance HangUpCallCATsSimple.IntentHandledResponseDialogIds);
  }

  return result;
}

uint64_t HangUpCallCATsSimple.__allocating_init(templateDir:options:globals:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  return HangUpCallCATsSimple.init(templateDir:options:globals:)(a1, a2);
}

uint64_t HangUpCallCATsSimple.init(templateDir:options:globals:)(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for CATOption();
  v6 = OUTLINED_FUNCTION_14_5(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6);
  OUTLINED_FUNCTION_4();
  v13 = v12 - v11;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  outlined init with copy of URL?(a1, &v19 - v16);
  (*(v8 + 16))(v13, a2, v2);
  v17 = CATWrapperSimple.init(templateDir:options:globals:)();
  (*(v8 + 8))(a2, v2);
  outlined destroy of URL?(a1);
  return v17;
}

uint64_t HangUpCallCATsSimple.__allocating_init(useResponseMode:options:)()
{
  v1 = type metadata accessor for CATOption();
  v2 = OUTLINED_FUNCTION_14_5(v1);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  OUTLINED_FUNCTION_4();
  v5 = *(v0 + 48);
  v6 = *(v0 + 52);
  v7 = swift_allocObject();
  v8 = OUTLINED_FUNCTION_39_1();
  v9(v8);
  CATWrapperSimple.init(useResponseMode:options:)();
  v10 = OUTLINED_FUNCTION_53();
  v11(v10);
  return v7;
}

uint64_t HangUpCallCATsSimple.init(useResponseMode:options:)()
{
  v1 = type metadata accessor for CATOption();
  v2 = OUTLINED_FUNCTION_14_5(v1);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  OUTLINED_FUNCTION_4();
  v5 = OUTLINED_FUNCTION_39_1();
  v6(v5);
  CATWrapperSimple.init(useResponseMode:options:)();
  v7 = OUTLINED_FUNCTION_53();
  v8(v7);
  return v0;
}

unint64_t lazy protocol witness table accessor for type HangUpCallCATsSimple.Properties and conformance HangUpCallCATsSimple.Properties()
{
  result = lazy protocol witness table cache variable for type HangUpCallCATsSimple.Properties and conformance HangUpCallCATsSimple.Properties;
  if (!lazy protocol witness table cache variable for type HangUpCallCATsSimple.Properties and conformance HangUpCallCATsSimple.Properties)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HangUpCallCATsSimple.Properties and conformance HangUpCallCATsSimple.Properties);
  }

  return result;
}

uint64_t type metadata accessor for HangUpCallCATsSimple()
{
  result = type metadata singleton initialization cache for HangUpCallCATsSimple;
  if (!type metadata singleton initialization cache for HangUpCallCATsSimple)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for HangUpCallCATsSimple.Properties(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for HangUpCallCATsSimple.ErrorWithCodeDialogIds(_BYTE *result, int a2, int a3)
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

void *specialized PhoneFlow.init(state:sharedGlobals:)(uint64_t a1, __int128 *a2)
{
  return specialized PhoneFlow.init(state:sharedGlobals:)(a1, a2, &_s27PhoneCallFlowDelegatePlugin0abC5StateOySo30INIdentifyIncomingCallerIntentCSo0ghiJ8ResponseCGMd, &_s27PhoneCallFlowDelegatePlugin0abC5StateOySo30INIdentifyIncomingCallerIntentCSo0ghiJ8ResponseCGMR);
}

{
  return specialized PhoneFlow.init(state:sharedGlobals:)(a1, a2, &_s27PhoneCallFlowDelegatePlugin0abC5StateOySo08INAnswerB6IntentCSo0gbH8ResponseCGMd, &_s27PhoneCallFlowDelegatePlugin0abC5StateOySo08INAnswerB6IntentCSo0gbH8ResponseCGMR);
}

void *specialized PhoneFlow.init(state:sharedGlobals:)(uint64_t a1, __int128 *a2, uint64_t *a3, uint64_t *a4)
{
  v4[2] = 0x6F6C46656E6F6850;
  v4[3] = 0xE900000000000077;
  outlined init with take of PhoneCallFlowState<INAnswerCallIntent, INAnswerCallIntentResponse>(a1, v4 + *(*v4 + 112), a3, a4);
  outlined init with take of SPHConversation(a2, v4 + *(*v4 + 120));
  return v4;
}

void *HangUpCallFlow.__allocating_init(input:sharedGlobals:app:)(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v7 = *(v3 + 48);
  v8 = *(v3 + 52);
  swift_allocObject();
  return HangUpCallFlow.init(input:sharedGlobals:app:)(a1, a2, a3);
}

void *HangUpCallFlow.init(input:sharedGlobals:app:)(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = v3;
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static Logger.siriPhone);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_0, v9, v10, "#HangUpCallFlow: initialize", v11, 2u);
    OUTLINED_FUNCTION_26_0();
  }

  *(v4 + direct field offset for HangUpCallFlow.app) = a3;
  outlined init with copy of SignalProviding(a2, v17);
  v12 = specialized PhoneFlow.init(sharedGlobals:)(v17);
  v13 = *(*v12 + 192);

  v13(a1);

  __swift_destroy_boxed_opaque_existential_1(a2);
  v14 = type metadata accessor for Input();
  OUTLINED_FUNCTION_23_1(v14);
  (*(v15 + 8))(a1);
  return v12;
}

void *HangUpCallFlow.__allocating_init(state:sharedGlobals:)(uint64_t a1, uint64_t *a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  return HangUpCallFlow.init(state:sharedGlobals:)(a1, a2);
}

void *HangUpCallFlow.init(state:sharedGlobals:)(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0abC5StateOySo08INHangUpB6IntentCSo0ghbI8ResponseCGMd, &_s27PhoneCallFlowDelegatePlugin0abC5StateOySo08INHangUpB6IntentCSo0ghbI8ResponseCGMR);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v18 - v8;
  if (one-time initialization token for instance != -1)
  {
    swift_once();
  }

  memcpy(v24, &static PhoneCallFeatureFlags.instance, sizeof(v24));
  v21 = &type metadata for PhoneCallFeatureFlags;
  v22 = &protocol witness table for PhoneCallFeatureFlags;
  *&v20 = swift_allocObject();
  memcpy((v20 + 16), &static PhoneCallFeatureFlags.instance, 0xC0uLL);
  outlined init with take of SPHConversation(&v20, v23);
  outlined init with copy of PhoneCallFeatureFlags(v24, &v18);
  __swift_destroy_boxed_opaque_existential_1(v23);
  v10 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v11 = *(v10 + 8);
  v12 = OUTLINED_FUNCTION_3_13();
  v13(v12);
  __swift_project_boxed_opaque_existential_1(&v18, v19);
  OUTLINED_FUNCTION_3_13();
  if (dispatch thunk of DeviceState.isMac.getter())
  {
    if (one-time initialization token for siriFaceTimeMacExtension != -1)
    {
      swift_once();
    }

    v14 = &static DefaultPhoneApps.siriFaceTimeMacExtension;
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(&v18, v19);
    OUTLINED_FUNCTION_3_13();
    if (dispatch thunk of DeviceState.isWatch.getter())
    {
      if (one-time initialization token for siriPhoneWatchExtension != -1)
      {
        swift_once();
      }

      v14 = &static DefaultPhoneApps.siriPhoneWatchExtension;
    }

    else
    {
      __swift_project_boxed_opaque_existential_1(&v18, v19);
      OUTLINED_FUNCTION_3_13();
      if (dispatch thunk of DeviceState.isXRDevice.getter())
      {
        if (one-time initialization token for siriPhoneFaceTimeExtension != -1)
        {
          swift_once();
        }

        v14 = &static DefaultPhoneApps.siriPhoneFaceTimeExtension;
      }

      else
      {
        if (one-time initialization token for siriPhoneExtension != -1)
        {
          swift_once();
        }

        v14 = &static DefaultPhoneApps.siriPhoneExtension;
      }
    }
  }

  v15 = *v14;

  __swift_destroy_boxed_opaque_existential_1(&v18);
  *(v3 + direct field offset for HangUpCallFlow.app) = v15;
  outlined init with copy of PhoneCallFlowState<INHangUpCallIntent, INHangUpCallIntentResponse>(a1, v9);
  outlined init with copy of SignalProviding(a2, &v18);
  v16 = specialized PhoneFlow.init(state:sharedGlobals:)(v9, &v18, &_s27PhoneCallFlowDelegatePlugin0abC5StateOySo08INHangUpB6IntentCSo0ghbI8ResponseCGMd, &_s27PhoneCallFlowDelegatePlugin0abC5StateOySo08INHangUpB6IntentCSo0ghbI8ResponseCGMR);
  outlined destroy of PhoneCallFlowState<INHangUpCallIntent, INHangUpCallIntentResponse>(a1);
  __swift_destroy_boxed_opaque_existential_1(a2);
  return v16;
}

uint64_t HangUpCallFlow.on(input:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0abC5StateOySo08INHangUpB6IntentCSo0ghbI8ResponseCGMd, &_s27PhoneCallFlowDelegatePlugin0abC5StateOySo08INHangUpB6IntentCSo0ghbI8ResponseCGMR);
  v5 = OUTLINED_FUNCTION_23_1(v4);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v10 = (&v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v8);
  v12 = &v37 - v11;
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2();
  }

  v13 = type metadata accessor for Logger();
  __swift_project_value_buffer(v13, static Logger.siriPhone);

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = OUTLINED_FUNCTION_42();
    v39 = v4;
    v17 = v16;
    v38 = OUTLINED_FUNCTION_36();
    v40[0] = v38;
    *v17 = 136315138;
    (*(*v1 + 128))();
    v18 = specialized PhoneCallFlowState.description.getter();
    v19 = a1;
    v21 = v20;
    outlined destroy of PhoneCallFlowState<INHangUpCallIntent, INHangUpCallIntentResponse>(v12);
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v21, v40);
    OUTLINED_FUNCTION_11_0();
    a1 = v19;

    *(v17 + 4) = v18;
    _os_log_impl(&dword_0, v14, v15, "#HangUpCallFlow: State = %s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v38);
    OUTLINED_FUNCTION_26_0();
    OUTLINED_FUNCTION_26_0();
  }

  (*(*v2 + 128))();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    v35 = *v10;
    v34 = dispatch thunk of AnyValueFlow.on(input:)();
  }

  else if (EnumCaseMultiPayload == 5)
  {
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5InputV_0A13AppResolution0E0CAA11DeviceState_ptMd, &_s11SiriKitFlow5InputV_0A13AppResolution0E0CAA11DeviceState_ptMR);
    v24 = *(v23 + 48);
    v25 = *(v23 + 64);
    v26 = type metadata accessor for Input();
    OUTLINED_FUNCTION_23_1(v26);
    (*(v27 + 16))(v12, a1);
    *&v12[v24] = *(v2 + direct field offset for HangUpCallFlow.app);
    v28 = *(*v2 + 152);

    v28(v40, v29);
    v30 = v40[4];
    __swift_project_boxed_opaque_existential_1(v40, v40[3]);
    v31 = *(v30 + 8);
    v32 = OUTLINED_FUNCTION_11_0();
    v33(v32, v30);
    v34 = 1;
    swift_storeEnumTagMultiPayload();
    (*(*v2 + 136))(v12);
    __swift_destroy_boxed_opaque_existential_1(v40);
  }

  else
  {
    outlined destroy of PhoneCallFlowState<INHangUpCallIntent, INHangUpCallIntentResponse>(v10);
    v34 = 0;
  }

  return v34 & 1;
}

uint64_t HangUpCallFlow.execute()(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = type metadata accessor for Input();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0abC5StateOySo08INHangUpB6IntentCSo0ghbI8ResponseCGMd, &_s27PhoneCallFlowDelegatePlugin0abC5StateOySo08INHangUpB6IntentCSo0ghbI8ResponseCGMR);
  v2[10] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();

  return _swift_task_switch(HangUpCallFlow.execute(), 0, 0);
}

uint64_t HangUpCallFlow.execute()()
{
  v95 = v0;
  v1 = v0[12];
  v2 = v0[10];
  v3 = v0[4];
  OUTLINED_FUNCTION_41_0();
  v5 = *(v4 + 128);
  v5();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v29 = v0[12];
      v30 = v0[9];
      v32 = v0[5];
      v31 = v0[6];
      v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5InputV_0A13AppResolution0E0CAA11DeviceState_ptMd, &_s11SiriKitFlow5InputV_0A13AppResolution0E0CAA11DeviceState_ptMR);
      v93 = *(v29 + *(v33 + 48));
      (*(v31 + 32))(v30, v29, v32);
      if (one-time initialization token for siriPhone != -1)
      {
        OUTLINED_FUNCTION_6_2();
      }

      v35 = v0[8];
      v34 = v0[9];
      v37 = v0[5];
      v36 = v0[6];
      v38 = type metadata accessor for Logger();
      __swift_project_value_buffer(v38, static Logger.siriPhone);
      v91 = *(v36 + 16);
      v91(v35, v34, v37);
      v39 = Logger.logObject.getter();
      v40 = static os_log_type_t.debug.getter();
      v41 = os_log_type_enabled(v39, v40);
      v42 = v0[8];
      v44 = v0[5];
      v43 = v0[6];
      if (v41)
      {
        v45 = OUTLINED_FUNCTION_42();
        v87 = OUTLINED_FUNCTION_36();
        *&v94[0] = v87;
        *v45 = 136315138;
        lazy protocol witness table accessor for type Input and conformance Input();
        v46 = dispatch thunk of CustomStringConvertible.description.getter();
        v89 = v33;
        v48 = v47;
        v49 = OUTLINED_FUNCTION_4_33();
        v50(v49);
        getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v46, v48, v94);
        OUTLINED_FUNCTION_11_0();
        v33 = v89;

        *(v45 + 4) = v42;
        _os_log_impl(&dword_0, v39, v40, "#HangUpCallFlow: Converting input: %s to INHangUpCallIntent.", v45, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v87);
        OUTLINED_FUNCTION_26_0();
        OUTLINED_FUNCTION_26_0();
      }

      else
      {

        v74 = OUTLINED_FUNCTION_4_33();
        v75(v74);
      }

      v76 = v0[9];
      v77 = v0[7];
      v79 = v0[4];
      v78 = v0[5];
      v86 = v0[3];
      v88 = *(v33 + 64);
      v90 = v0[12];
      v91(v77, v76, v78);
      v80 = *(*v79 + 152);

      v80(v94, v81);
      v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin016IntentConversionC0CySo08INHangUpbF0CGMd, &_s27PhoneCallFlowDelegatePlugin016IntentConversionC0CySo08INHangUpbF0CGMR);
      v83 = *(v82 + 48);
      v84 = *(v82 + 52);
      swift_allocObject();
      v0[2] = specialized IntentConversionFlow.init(input:app:sharedGlobals:)(v77, v93, v94, &_s27PhoneCallFlowDelegatePlugin016IntentConversionC0CySo08INHangUpbF0CGMd, &_s27PhoneCallFlowDelegatePlugin016IntentConversionC0CySo08INHangUpbF0CGMR, &outlined read-only object #0 of specialized IntentConversionFlow.init(input:app:sharedGlobals:));
      v85 = swift_allocObject();
      *(v85 + 16) = partial apply for implicit closure #4 in implicit closure #3 in HangUpCallFlow.execute();
      *(v85 + 24) = v79;
      lazy protocol witness table accessor for type TerminalOntologyNode<VoiceMail.VoiceMailNoun> and conformance TerminalOntologyNode<A>(&lazy protocol witness table cache variable for type IntentConversionFlow<INHangUpCallIntent> and conformance IntentConversionFlow<A>, &_s27PhoneCallFlowDelegatePlugin016IntentConversionC0CySo08INHangUpbF0CGMd, &_s27PhoneCallFlowDelegatePlugin016IntentConversionC0CySo08INHangUpbF0CGMR);

      static ExecuteResponse.ongoing<A>(next:childCompletion:)();

      v92(v76, v78);
      __swift_destroy_boxed_opaque_existential_1((v90 + v88));
      goto LABEL_19;
    case 2u:
      v22 = *v0[12];
      if (one-time initialization token for siriPhone != -1)
      {
        OUTLINED_FUNCTION_6_2();
      }

      v23 = type metadata accessor for Logger();
      __swift_project_value_buffer(v23, static Logger.siriPhone);
      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        *v26 = 0;
        _os_log_impl(&dword_0, v24, v25, "#HangUpCallFlow: Executing RCHFlow.", v26, 2u);
        OUTLINED_FUNCTION_26_0();
      }

      v28 = v0[3];
      v27 = v0[4];

      static ExecuteResponse.ongoing<A>(next:childCompletion:)();

      goto LABEL_19;
    case 4u:
      if (one-time initialization token for siriPhone != -1)
      {
        OUTLINED_FUNCTION_6_2();
      }

      v59 = v0[4];
      v60 = type metadata accessor for Logger();
      __swift_project_value_buffer(v60, static Logger.siriPhone);
      OUTLINED_FUNCTION_11_0();

      v61 = Logger.logObject.getter();
      v62 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v61, v62))
      {
        v63 = v0[11];
        v64 = v0[4];
        v65 = OUTLINED_FUNCTION_42();
        v66 = OUTLINED_FUNCTION_36();
        *&v94[0] = v66;
        *v65 = 136315138;
        v5();
        v67 = specialized PhoneCallFlowState.description.getter();
        v69 = v68;
        outlined destroy of PhoneCallFlowState<INHangUpCallIntent, INHangUpCallIntentResponse>(v63);
        v70 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v67, v69, v94);

        *(v65 + 4) = v70;
        _os_log_impl(&dword_0, v61, v62, "#HangUpCallFlow: encountered unexpected state %s", v65, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v66);
        OUTLINED_FUNCTION_26_0();
        OUTLINED_FUNCTION_26_0();
      }

      v71 = v0[12];
      v72 = v0[3];
      static ExecuteResponse.complete()();
      outlined destroy of PhoneCallFlowState<INHangUpCallIntent, INHangUpCallIntentResponse>(v71);
      goto LABEL_19;
    case 5u:
      goto LABEL_3;
    case 6u:
      v73 = v0[3];
      (*(*v0[4] + 232))();
      goto LABEL_19;
    case 7u:
      v51 = v0[3];
      goto LABEL_18;
    default:
      outlined destroy of PhoneCallFlowState<INHangUpCallIntent, INHangUpCallIntentResponse>(v0[12]);
LABEL_3:
      if (one-time initialization token for siriPhone != -1)
      {
        OUTLINED_FUNCTION_6_2();
      }

      v6 = v0[4];
      v7 = type metadata accessor for Logger();
      __swift_project_value_buffer(v7, static Logger.siriPhone);

      v8 = Logger.logObject.getter();
      v9 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v8, v9))
      {
        v10 = v0[11];
        v11 = v0[4];
        v12 = OUTLINED_FUNCTION_42();
        v13 = OUTLINED_FUNCTION_36();
        *&v94[0] = v13;
        *v12 = 136315138;
        v5();
        v14 = specialized PhoneCallFlowState.description.getter();
        v16 = v15;
        outlined destroy of PhoneCallFlowState<INHangUpCallIntent, INHangUpCallIntentResponse>(v10);
        v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v16, v94);

        *(v12 + 4) = v17;
        _os_log_impl(&dword_0, v8, v9, "#HangUpCallFlow: encountered unexpected state %s", v12, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v13);
        OUTLINED_FUNCTION_26_0();
        OUTLINED_FUNCTION_26_0();
      }

      v18 = v0[10];
      v19 = v0[11];
      v21 = v0[3];
      v20 = v0[4];
      swift_storeEnumTagMultiPayload();
      (*(*v20 + 136))(v19);
LABEL_18:
      static ExecuteResponse.complete()();
LABEL_19:
      v53 = v0[11];
      v52 = v0[12];
      v55 = v0[8];
      v54 = v0[9];
      v56 = v0[7];

      v57 = v0[1];

      return v57();
  }
}

uint64_t HangUpCallFlow.makeRCHFlow(input:intent:app:)(uint64_t a1, void *a2)
{
  v3 = v2;
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2();
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static Logger.siriPhone);
  v6 = a2;

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v21[0] = swift_slowAlloc();
    *v9 = 136315394;
    v10 = [v6 debugDescription];
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;

    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v13, v21);

    *(v9 + 4) = v14;
    *(v9 + 12) = 2080;
    v15 = dispatch thunk of App.debugDescription.getter();
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, v21);

    *(v9 + 14) = v17;
    _os_log_impl(&dword_0, v7, v8, "#HangUpCallFlow: Making RCHFlow for intent %s and App %s.", v9, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_26_0();
    OUTLINED_FUNCTION_26_0();
  }

  (*(*v3 + 152))(v21);
  static PhoneCallFlowFactory.makeHangUpCallRCHFlow(intent:app:sharedGlobals:)();
  v19 = v18;
  __swift_destroy_boxed_opaque_existential_1(v21);
  return v19;
}

uint64_t HangUpCallFlow.processIntentConversionResult(exitValue:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0abC5StateOySo08INHangUpB6IntentCSo0ghbI8ResponseCGMd, &_s27PhoneCallFlowDelegatePlugin0abC5StateOySo08INHangUpB6IntentCSo0ghbI8ResponseCGMR);
  v4 = OUTLINED_FUNCTION_23_1(v3);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v47 = (&v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v7);
  v10 = &v45 - v9;
  v11 = type metadata accessor for Input();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v16 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(*v1 + 128);
  (v17)(v14);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5InputV_0A13AppResolution0E0CAA11DeviceState_ptMd, &_s11SiriKitFlow5InputV_0A13AppResolution0E0CAA11DeviceState_ptMR);
    v19 = *&v10[*(v18 + 48)];
    v20 = *(v18 + 64);
    (*(v12 + 32))(v16, v10, v11);
    __swift_destroy_boxed_opaque_existential_1(&v10[v20]);
    if (a1)
    {
      v21 = a1;
      v48 = HangUpCallFlow.makeRCHFlow(input:intent:app:)(v21, v21);
      v46 = v11;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow08AnyValueC0CyAA13RCHFlowResultOySo18INHangUpCallIntentCSo0hijK8ResponseCGGMd, &_s11SiriKitFlow08AnyValueC0CyAA13RCHFlowResultOySo18INHangUpCallIntentCSo0hijK8ResponseCGGMR);
      lazy protocol witness table accessor for type TerminalOntologyNode<VoiceMail.VoiceMailNoun> and conformance TerminalOntologyNode<A>(&lazy protocol witness table cache variable for type AnyValueFlow<RCHFlowResult<INHangUpCallIntent, INHangUpCallIntentResponse>> and conformance AnyValueFlow<A>, &_s11SiriKitFlow08AnyValueC0CyAA13RCHFlowResultOySo18INHangUpCallIntentCSo0hijK8ResponseCGGMd, &_s11SiriKitFlow08AnyValueC0CyAA13RCHFlowResultOySo18INHangUpCallIntentCSo0hijK8ResponseCGGMR);
      v22 = Flow.eraseToAnyValueFlow()();

      v23 = v47;
      *v47 = v22;
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_41_0();
      (*(v24 + 136))(v23);

      return (*(v12 + 8))(v16, v46);
    }

    else
    {
      if (one-time initialization token for siriPhone != -1)
      {
        OUTLINED_FUNCTION_6_2();
      }

      v39 = type metadata accessor for Logger();
      __swift_project_value_buffer(v39, static Logger.siriPhone);
      v40 = Logger.logObject.getter();
      v41 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        *v42 = 0;
        _os_log_impl(&dword_0, v40, v41, "#HangUpCallFlow: Could not convert input to INHangUpCallIntent, stopping", v42, 2u);
        OUTLINED_FUNCTION_26_0();
      }

      v43 = v47;
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_41_0();
      (*(v44 + 136))(v43);

      return (*(v12 + 8))(v16, v11);
    }
  }

  else
  {
    outlined destroy of PhoneCallFlowState<INHangUpCallIntent, INHangUpCallIntentResponse>(v10);
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2();
    }

    v26 = type metadata accessor for Logger();
    __swift_project_value_buffer(v26, static Logger.siriPhone);

    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();

    v29 = os_log_type_enabled(v27, v28);
    v30 = v47;
    if (v29)
    {
      v31 = OUTLINED_FUNCTION_42();
      v46 = v3;
      v32 = v31;
      v33 = OUTLINED_FUNCTION_36();
      v48 = v33;
      *v32 = 136315138;
      v17();
      v34 = specialized PhoneCallFlowState.description.getter();
      v36 = v35;
      outlined destroy of PhoneCallFlowState<INHangUpCallIntent, INHangUpCallIntentResponse>(v30);
      v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v36, &v48);

      *(v32 + 4) = v37;
      _os_log_impl(&dword_0, v27, v28, "#HangUpCallFlow: Unexpected state, stopping: %s", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v33);
      OUTLINED_FUNCTION_26_0();
      OUTLINED_FUNCTION_26_0();
    }

    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_41_0();
    return (*(v38 + 136))(v30);
  }
}

void *HangUpCallFlow.deinit()
{
  v0 = specialized PhoneFlow.deinit();
  v1 = *(v0 + direct field offset for HangUpCallFlow.app);

  return v0;
}

uint64_t HangUpCallFlow.__deallocating_deinit()
{
  v0 = specialized PhoneFlow.deinit();
  v1 = *(v0 + direct field offset for HangUpCallFlow.app);

  v2 = *(*v0 + 48);
  v3 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t specialized IntentConversionFlow.init(input:app:sharedGlobals:)(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t *a4, uint64_t *a5, uint64_t a6)
{
  *(v6 + 16) = 0;
  v11 = (v6 + direct field offset for IntentConversionFlow.logPrefix);
  *v11 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v11[1] = a6;
  v11[2] = 0;
  v11[3] = 0;
  v12 = direct field offset for IntentConversionFlow.input;
  v13 = type metadata accessor for Input();
  OUTLINED_FUNCTION_23_1(v13);
  (*(v14 + 32))(v6 + v12, a1);
  *(v6 + direct field offset for IntentConversionFlow.appResolved) = a2;
  outlined init with take of SPHConversation(a3, v6 + direct field offset for IntentConversionFlow.sharedGlobals);
  return v6;
}

uint64_t outlined init with copy of PhoneCallFlowState<INHangUpCallIntent, INHangUpCallIntentResponse>(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0abC5StateOySo08INHangUpB6IntentCSo0ghbI8ResponseCGMd, &_s27PhoneCallFlowDelegatePlugin0abC5StateOySo08INHangUpB6IntentCSo0ghbI8ResponseCGMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of PhoneCallFlowState<INHangUpCallIntent, INHangUpCallIntentResponse>(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0abC5StateOySo08INHangUpB6IntentCSo0ghbI8ResponseCGMd, &_s27PhoneCallFlowDelegatePlugin0abC5StateOySo08INHangUpB6IntentCSo0ghbI8ResponseCGMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@guaranteed INHangUpCallIntent?) -> ()(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

uint64_t type metadata accessor for HangUpCallFlow()
{
  result = type metadata singleton initialization cache for HangUpCallFlow;
  if (!type metadata singleton initialization cache for HangUpCallFlow)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t outlined init with take of PhoneCallFlowState<INAnswerCallIntent, INAnswerCallIntentResponse>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_23_1(v6);
  (*(v7 + 32))(a2, a1);
  return a2;
}

void *HangUpCallHandleIntentFlowStrategy.__allocating_init(sharedGlobals:hangUpCallCATsSimple:biomeEventSender:callRegistrationManager:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v9 = swift_allocObject();
  v11 = a3[3];
  v10 = a3[4];
  __swift_mutable_project_boxed_opaque_existential_1(a3, v11);
  OUTLINED_FUNCTION_9_1();
  v13 = *(v12 + 64);
  __chkstk_darwin(v14);
  OUTLINED_FUNCTION_4();
  v16 = OUTLINED_FUNCTION_29_5(v15);
  v17(v16);
  v19 = a4[3];
  v18 = a4[4];
  __swift_mutable_project_boxed_opaque_existential_1(a4, v19);
  OUTLINED_FUNCTION_9_1();
  v21 = *(v20 + 64);
  __chkstk_darwin(v22);
  OUTLINED_FUNCTION_4();
  v24 = OUTLINED_FUNCTION_24_0(v23);
  v25(v24);
  v26 = specialized HangUpCallHandleIntentFlowStrategy.init(sharedGlobals:hangUpCallCATsSimple:biomeEventSender:callRegistrationManager:)(a1, a2, v4, v5, v9, v11, v19, v10, v18);
  __swift_destroy_boxed_opaque_existential_1(a4);
  __swift_destroy_boxed_opaque_existential_1(a3);
  return v26;
}

void *HangUpCallHandleIntentFlowStrategy.init(sharedGlobals:hangUpCallCATsSimple:biomeEventSender:callRegistrationManager:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v11 = a3[3];
  v10 = a3[4];
  __swift_mutable_project_boxed_opaque_existential_1(a3, v11);
  OUTLINED_FUNCTION_9_1();
  v13 = *(v12 + 64);
  __chkstk_darwin(v14);
  OUTLINED_FUNCTION_4();
  v16 = OUTLINED_FUNCTION_29_5(v15);
  v17(v16);
  v19 = a4[3];
  v18 = a4[4];
  __swift_mutable_project_boxed_opaque_existential_1(a4, v19);
  OUTLINED_FUNCTION_9_1();
  v21 = *(v20 + 64);
  __chkstk_darwin(v22);
  OUTLINED_FUNCTION_4();
  v24 = OUTLINED_FUNCTION_24_0(v23);
  v25(v24);
  v26 = specialized HangUpCallHandleIntentFlowStrategy.init(sharedGlobals:hangUpCallCATsSimple:biomeEventSender:callRegistrationManager:)(a1, a2, v4, v5, v28, v11, v19, v10, v18);
  __swift_destroy_boxed_opaque_existential_1(a4);
  __swift_destroy_boxed_opaque_existential_1(a3);
  return v26;
}

uint64_t HangUpCallHandleIntentFlowStrategy.makePreHandleIntentOutput(rchRecord:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t HangUpCallHandleIntentFlowStrategy.makePreHandleIntentOutput(rchRecord:)()
{
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2();
  }

  v1 = v0[4];
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.siriPhone);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v3, v4))
  {
    swift_slowAlloc();
    v23 = OUTLINED_FUNCTION_83();
    *v1 = 136315138;
    type metadata accessor for HangUpCallHandleIntentFlowStrategy();
    OUTLINED_FUNCTION_16_29();
    v7 = OUTLINED_FUNCTION_27_14(v5, _swiftEmptyArrayStorage, v6);
    v15 = OUTLINED_FUNCTION_20_23(v7, v8, v9, v10, v11, v12, v13, v14, v22, v23, v24, v25);

    *(v1 + 4) = v15;
    OUTLINED_FUNCTION_12(&dword_0, v16, v17, "%s");
    OUTLINED_FUNCTION_3_7();
    OUTLINED_FUNCTION_35();
  }

  v18 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow22IntentResolutionRecordVySo012INHangUpCallD0CSo0ghiD8ResponseCGMd, &_s11SiriKitFlow22IntentResolutionRecordVySo012INHangUpCallD0CSo0ghiD8ResponseCGMR);
  v0[5] = IntentResolutionRecord.app.getter();
  v0[6] = IntentResolutionRecord.intent.getter();
  v0[7] = IntentResolutionRecord.intentResponse.getter();
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[8] = v19;
  *v19 = v20;
  OUTLINED_FUNCTION_51_1(v19);

  return HangUpCallHandleIntentFlowStrategy.makePreHandleIntentOutput(app:intent:intentResponse:)();
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_28();
  v3 = v2;
  OUTLINED_FUNCTION_13_1();
  *v4 = v3;
  v6 = *(v5 + 64);
  v7 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v8 = v7;
  *(v3 + 72) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_66_0();

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {
    v12 = *(v3 + 48);
    v13 = *(v3 + 40);

    OUTLINED_FUNCTION_8_1();

    return v14();
  }
}

uint64_t HangUpCallHandleIntentFlowStrategy.makeIntentHandledResponse(rchRecord:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t HangUpCallHandleIntentFlowStrategy.makeIntentHandledResponse(rchRecord:)()
{
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2();
  }

  v1 = v0[4];
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.siriPhone);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v3, v4))
  {
    swift_slowAlloc();
    v26 = OUTLINED_FUNCTION_83();
    *v1 = 136315138;
    type metadata accessor for HangUpCallHandleIntentFlowStrategy();
    OUTLINED_FUNCTION_16_29();
    v7 = OUTLINED_FUNCTION_27_14(v5, _swiftEmptyArrayStorage, v6);
    v15 = OUTLINED_FUNCTION_20_23(v7, v8, v9, v10, v11, v12, v13, v14, v25, v26, v27, v28);

    *(v1 + 4) = v15;
    OUTLINED_FUNCTION_12(&dword_0, v16, v17, "%s");
    OUTLINED_FUNCTION_3_7();
    OUTLINED_FUNCTION_35();
  }

  v19 = v0[3];
  v18 = v0[4];
  v20 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow22IntentResolutionRecordVySo012INHangUpCallD0CSo0ghiD8ResponseCGMd, &_s11SiriKitFlow22IntentResolutionRecordVySo012INHangUpCallD0CSo0ghiD8ResponseCGMR);
  v21 = IntentResolutionRecord.intent.getter();
  v22 = IntentResolutionRecord.intentResponse.getter();
  HangUpCallHandleIntentFlowStrategy.logForHandleIntent(intent:intentResponse:)(v22, v22);

  type metadata accessor for EmptyOutput();
  static EmptyOutput.instance.getter();
  OUTLINED_FUNCTION_8_1();

  return v23();
}

uint64_t HangUpCallHandleIntentFlowStrategy.makeFailureHandlingIntentResponse(rchRecord:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t HangUpCallHandleIntentFlowStrategy.makeFailureHandlingIntentResponse(rchRecord:)()
{
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2();
  }

  v1 = v0[4];
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.siriPhone);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v3, v4))
  {
    swift_slowAlloc();
    v26 = OUTLINED_FUNCTION_83();
    *v1 = 136315138;
    type metadata accessor for HangUpCallHandleIntentFlowStrategy();
    OUTLINED_FUNCTION_16_29();
    v7 = DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v6, _swiftEmptyArrayStorage, 0xD00000000000002DLL, v5 | 0x8000000000000000);
    v15 = OUTLINED_FUNCTION_20_23(v7, v8, v9, v10, v11, v12, v13, v14, v25, v26, v27, v28);

    *(v1 + 4) = v15;
    OUTLINED_FUNCTION_12(&dword_0, v16, v17, "%s");
    OUTLINED_FUNCTION_3_7();
    OUTLINED_FUNCTION_35();
  }

  v19 = v0[3];
  v18 = v0[4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow22IntentResolutionRecordVySo012INHangUpCallD0CSo0ghiD8ResponseCGMd, &_s11SiriKitFlow22IntentResolutionRecordVySo012INHangUpCallD0CSo0ghiD8ResponseCGMR);
  v20 = IntentResolutionRecord.intent.getter();
  v21 = IntentResolutionRecord.intentResponse.getter();
  HangUpCallHandleIntentFlowStrategy.logForHandleIntent(intent:intentResponse:)(v21, v21);

  v0[5] = IntentResolutionRecord.app.getter();
  v0[6] = IntentResolutionRecord.intent.getter();
  v0[7] = IntentResolutionRecord.intentResponse.getter();
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[8] = v22;
  *v22 = v23;
  OUTLINED_FUNCTION_51_1(v22);

  return HangUpCallHandleIntentFlowStrategy.makeFailureHandlingIntentOutput(app:intent:intentResponse:)();
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_28();
  v3 = v2;
  OUTLINED_FUNCTION_13_1();
  *v4 = v3;
  v6 = *(v5 + 64);
  v7 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v8 = v7;
  *(v3 + 72) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_66_0();

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {
    v12 = *(v3 + 48);
    v13 = *(v3 + 40);

    OUTLINED_FUNCTION_8_1();

    return v14();
  }
}

{
  OUTLINED_FUNCTION_15();
  v1 = *(v0 + 48);
  v2 = *(v0 + 40);

  v3 = *(v0 + 8);
  v4 = *(v0 + 72);

  return v3();
}

uint64_t HangUpCallHandleIntentFlowStrategy.makePreHandleIntentOutput(app:intent:intentResponse:)()
{
  OUTLINED_FUNCTION_15();
  v1[12] = v2;
  v1[13] = v0;
  v3 = *(*(type metadata accessor for DialogPhase() - 8) + 64);
  v1[14] = OUTLINED_FUNCTION_45();
  v4 = type metadata accessor for OutputGenerationManifest();
  v1[15] = v4;
  v5 = *(v4 - 8);
  v1[16] = v5;
  v6 = *(v5 + 64);
  v1[17] = OUTLINED_FUNCTION_45();
  v7 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v7, v8, v9);
}

{
  OUTLINED_FUNCTION_23_0();
  v1 = v0[13];
  v2 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v1[5]);
  v3 = *(v2 + 120);
  v4 = OUTLINED_FUNCTION_4_3();
  v5(v4);
  v6 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  v7 = *(v6 + 24);
  v8 = OUTLINED_FUNCTION_4_3();
  v11 = v9(v8);
  if (v11)
  {
    v12 = v10;
    ObjectType = swift_getObjectType();
    LODWORD(v12) = (*(v12 + 16))(ObjectType, v12);
    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1(v0 + 2);
    v11 = v12 == 4;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  }

  v14 = *(**(v0[13] + 56) + class metadata base offset for HangUpCallCATsSimple + 32);
  v18 = (v14 + *v14);
  v15 = v14[1];
  v16 = swift_task_alloc();
  v0[18] = v16;
  *v16 = v0;
  v16[1] = HangUpCallHandleIntentFlowStrategy.makePreHandleIntentOutput(app:intent:intentResponse:);

  return v18(v11);
}

{
  OUTLINED_FUNCTION_27();
  v3 = v2;
  OUTLINED_FUNCTION_28();
  v5 = v4;
  OUTLINED_FUNCTION_13_1();
  *v6 = v5;
  v8 = *(v7 + 144);
  v9 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v10 = v9;

  if (v0)
  {
    v11 = v5[17];
    v12 = v5[14];

    v13 = *(v9 + 8);

    return v13();
  }

  else
  {
    v5[19] = v3;
    OUTLINED_FUNCTION_66_0();

    return _swift_task_switch(v15, v16, v17);
  }
}

{
  OUTLINED_FUNCTION_23_0();
  v1 = v0[19];
  v2 = v0[17];
  v4 = v0[13];
  v3 = v0[14];
  static DialogPhase.completion.getter();
  OUTLINED_FUNCTION_0_59();
  OutputGenerationManifest.init(dialogPhase:_:)();
  v5 = v4[6];
  __swift_project_boxed_opaque_existential_1(v4 + 2, v4[5]);
  v6 = *(v5 + 136);
  v7 = OUTLINED_FUNCTION_4_3();
  v8(v7);
  v9 = v0[10];
  v10 = v0[11];
  __swift_project_boxed_opaque_existential_1(v0 + 7, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v11 = swift_allocObject();
  v0[20] = v11;
  *(v11 + 16) = xmmword_426260;
  *(v11 + 32) = v1;
  v12 = *(v10 + 8);
  v13 = async function pointer to dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)[1];
  v14 = v1;
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[21] = v15;
  *v15 = v16;
  v15[1] = HangUpCallHandleIntentFlowStrategy.makePreHandleIntentOutput(app:intent:intentResponse:);
  v17 = v0[17];
  v18 = v0[12];

  return dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)(v18, v11, v17, v9, v12);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  v2 = *(v1 + 168);
  v3 = *(v1 + 160);
  v4 = *v0;
  OUTLINED_FUNCTION_4_2();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v6, v7, v8);
}

{
  OUTLINED_FUNCTION_27();
  v2 = *(v0 + 128);
  v1 = *(v0 + 136);
  v4 = *(v0 + 112);
  v3 = *(v0 + 120);

  (*(v2 + 8))(v1, v3);
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));

  OUTLINED_FUNCTION_8_1();

  return v5();
}

uint64_t HangUpCallHandleIntentFlowStrategy.makeFailureHandlingIntentOutput(app:intent:intentResponse:)()
{
  OUTLINED_FUNCTION_15();
  v1[14] = v2;
  v1[15] = v0;
  v1[13] = v3;
  v4 = *(*(type metadata accessor for DialogPhase() - 8) + 64);
  v1[16] = OUTLINED_FUNCTION_45();
  v5 = type metadata accessor for OutputGenerationManifest();
  v1[17] = v5;
  v6 = *(v5 - 8);
  v1[18] = v6;
  v7 = *(v6 + 64);
  v1[19] = OUTLINED_FUNCTION_45();
  v8 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v8, v9, v10);
}

{
  OUTLINED_FUNCTION_27();
  v1 = *(v0 + 120);
  v2 = [*(v0 + 112) code];
  v3 = (**(v1 + 56) + class metadata base offset for HangUpCallCATsSimple);
  if (v2 == &dword_4 + 2)
  {
    v10 = (v3[2] + *v3[2]);
    v4 = v3[2][1];
    v5 = swift_task_alloc();
    *(v0 + 160) = v5;
    *v5 = v0;
    v5[1] = HangUpCallHandleIntentFlowStrategy.makeFailureHandlingIntentOutput(app:intent:intentResponse:);
    v6 = v10;
  }

  else
  {
    v11 = (*v3 + **v3);
    v12 = **(v1 + 56) + class metadata base offset for HangUpCallCATsSimple;
    v7 = (*v3)[1];
    v8 = swift_task_alloc();
    *(v0 + 168) = v8;
    *v8 = v0;
    v8[1] = HangUpCallHandleIntentFlowStrategy.makeFailureHandlingIntentOutput(app:intent:intentResponse:);
    v6 = v11;
  }

  return v6();
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_28();
  v3 = v2;
  OUTLINED_FUNCTION_13_1();
  *v4 = v3;
  v3[7] = v1;
  v3[8] = v5;
  v3[9] = v0;
  v7 = *(v6 + 160);
  v8 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v9 = v8;

  if (v0)
  {
    v10 = v3[19];
    v11 = v3[16];

    v12 = *(v8 + 8);

    return v12();
  }

  else
  {
    OUTLINED_FUNCTION_66_0();

    return _swift_task_switch(v14, v15, v16);
  }
}

{
  OUTLINED_FUNCTION_23_0();
  v1 = v0[8];
  v2 = v0[19];
  v4 = v0[15];
  v3 = v0[16];
  v0[22] = v1;
  v5 = v1;
  static DialogPhase.completion.getter();
  OUTLINED_FUNCTION_0_59();
  OutputGenerationManifest.init(dialogPhase:_:)();
  v6 = v4[6];
  __swift_project_boxed_opaque_existential_1(v4 + 2, v4[5]);
  v7 = OUTLINED_FUNCTION_13_30();
  v8(v7);
  v9 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v10 = swift_allocObject();
  v0[23] = v10;
  *(v10 + 16) = xmmword_426260;
  *(v10 + 32) = v5;
  v11 = *(v9 + 8);
  v12 = async function pointer to dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)[1];
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[24] = v13;
  *v13 = v14;
  v15 = OUTLINED_FUNCTION_4_34(v13);

  return dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)(v15, v16, v17, v18, v19);
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_28();
  v3 = v2;
  OUTLINED_FUNCTION_13_1();
  *v4 = v3;
  v3[10] = v1;
  v3[11] = v5;
  v3[12] = v0;
  v7 = *(v6 + 168);
  v8 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v9 = v8;

  if (v0)
  {
    v10 = v3[19];
    v11 = v3[16];

    v12 = *(v8 + 8);

    return v12();
  }

  else
  {
    OUTLINED_FUNCTION_66_0();

    return _swift_task_switch(v14, v15, v16);
  }
}

{
  OUTLINED_FUNCTION_23_0();
  v1 = v0[11];
  v2 = v0[19];
  v4 = v0[15];
  v3 = v0[16];
  v0[22] = v1;
  v5 = v1;
  static DialogPhase.completion.getter();
  OUTLINED_FUNCTION_0_59();
  OutputGenerationManifest.init(dialogPhase:_:)();
  v6 = v4[6];
  __swift_project_boxed_opaque_existential_1(v4 + 2, v4[5]);
  v7 = OUTLINED_FUNCTION_13_30();
  v8(v7);
  v9 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v10 = swift_allocObject();
  v0[23] = v10;
  *(v10 + 16) = xmmword_426260;
  *(v10 + 32) = v5;
  v11 = *(v9 + 8);
  v12 = async function pointer to dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)[1];
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[24] = v13;
  *v13 = v14;
  v15 = OUTLINED_FUNCTION_4_34(v13);

  return dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)(v15, v16, v17, v18, v19);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  v2 = *(v1 + 192);
  v3 = *(v1 + 184);
  v4 = *v0;
  OUTLINED_FUNCTION_4_2();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v6, v7, v8);
}

{
  OUTLINED_FUNCTION_27();
  v2 = *(v0 + 144);
  v1 = *(v0 + 152);
  v4 = *(v0 + 128);
  v3 = *(v0 + 136);

  (*(v2 + 8))(v1, v3);
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  OUTLINED_FUNCTION_8_1();

  return v5();
}

uint64_t HangUpCallHandleIntentFlowStrategy.logForHandleIntent(intent:intentResponse:)(int a1, id a2)
{
  if ([a2 code] == &dword_0 + 3 || objc_msgSend(a2, "code") == &dword_4 + 2)
  {
    v4 = v2[5];
    v5 = v2[6];
    __swift_project_boxed_opaque_existential_1(v2 + 2, v4);
    (*(v5 + 40))(v11, v4, v5);
    __swift_project_boxed_opaque_existential_1(v11, v11[3]);
    SiriKitEventSending.sendCallStateEvent(hangUpIntentResponse:)(a2);
    __swift_destroy_boxed_opaque_existential_1(v11);
  }

  v6 = v2[11];
  v7 = v2[12];
  __swift_project_boxed_opaque_existential_1(v2 + 8, v6);
  v8 = v2[5];
  v9 = v2[6];
  __swift_project_boxed_opaque_existential_1(v2 + 2, v8);
  (*(v9 + 8))(v11, v8, v9);
  BiomeEventSending.logEventForHangUp(intentResponse:device:)(a2, v11, v6, v7);
  return __swift_destroy_boxed_opaque_existential_1(v11);
}

uint64_t HangUpCallHandleIntentFlowStrategy.makeIntentExecutionBehavior(app:intent:)()
{
  OUTLINED_FUNCTION_27();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = HangUpCallHandleIntentFlowStrategy.makeIntentExecutionBehavior(app:intent:);

  return static HangUpCallIntentExecutionBehavior.getIntentExecutionBehavior(app:intent:sharedGlobals:callRegistrationManager:)();
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_13_1();
  *v2 = v1;
  v4 = *(v3 + 16);
  *v2 = *v0;
  v1[3] = v5;
  v1[4] = v6;
  v1[5] = v7;

  v8 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v8, v9, v10);
}

{
  OUTLINED_FUNCTION_27();
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[3];
  v4 = PhoneIntentExecutionBehavior.asSiriKitIntentExecutionBehavior.getter(v3, v1, v2);
  outlined consume of PhoneIntentExecutionBehavior(v3, v1, v2);
  v5 = v0[1];

  return v5(v4);
}

uint64_t *HangUpCallHandleIntentFlowStrategy.deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v1 = v0[7];

  __swift_destroy_boxed_opaque_existential_1(v0 + 8);
  __swift_destroy_boxed_opaque_existential_1(v0 + 13);
  return v0;
}

uint64_t HangUpCallHandleIntentFlowStrategy.__deallocating_deinit()
{
  HangUpCallHandleIntentFlowStrategy.deinit();

  return swift_deallocClassInstance();
}

uint64_t protocol witness for HandleIntentFlowStrategyAsync.makePromptForDeviceUnlock(rchRecord:) in conformance HangUpCallHandleIntentFlowStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = async function pointer to HandleIntentFlowStrategyAsync.makePromptForDeviceUnlock(rchRecord:)[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for HangUpCallHandleIntentFlowStrategy();
  *v9 = v4;
  v9[1] = protocol witness for HandleIntentFlowStrategyAsync.makeHandoffForAuthenticationResponse(rchRecord:) in conformance HangUpCallHandleIntentFlowStrategy;

  return HandleIntentFlowStrategyAsync.makePromptForDeviceUnlock(rchRecord:)(a1, a2, v10, a4);
}

uint64_t protocol witness for HandleIntentFlowStrategyAsync.makeHandoffForAuthenticationResponse(rchRecord:) in conformance HangUpCallHandleIntentFlowStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = async function pointer to HandleIntentFlowStrategyAsync.makeHandoffForAuthenticationResponse(rchRecord:)[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for HangUpCallHandleIntentFlowStrategy();
  *v9 = v4;
  v9[1] = protocol witness for HandleIntentFlowStrategyAsync.makeHandoffForAuthenticationResponse(rchRecord:) in conformance HangUpCallHandleIntentFlowStrategy;

  return HandleIntentFlowStrategyAsync.makeHandoffForAuthenticationResponse(rchRecord:)(a1, a2, v10, a4);
}

uint64_t protocol witness for HandleIntentFlowStrategyAsync.makePreHandleIntentOutput(rchRecord:) in conformance HangUpCallHandleIntentFlowStrategy(uint64_t a1, uint64_t a2)
{
  v6 = *(**v2 + 120);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = protocol witness for HandleIntentFlowStrategyAsync.makeHandoffForAuthenticationResponse(rchRecord:) in conformance HangUpCallHandleIntentFlowStrategy;

  return v10(a1, a2);
}

uint64_t protocol witness for HandleIntentFlowStrategyAsync.makeIntentHandledResponse(rchRecord:) in conformance HangUpCallHandleIntentFlowStrategy(uint64_t a1, uint64_t a2)
{
  v6 = *(**v2 + 128);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = protocol witness for HandleIntentFlowStrategyAsync.makeHandoffForAuthenticationResponse(rchRecord:) in conformance HangUpCallHandleIntentFlowStrategy;

  return v10(a1, a2);
}

uint64_t protocol witness for HandleIntentFlowStrategyAsync.makeContinueInAppResponse(rchRecord:) in conformance HangUpCallHandleIntentFlowStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = async function pointer to HandleIntentFlowStrategyAsync.makeContinueInAppResponse(rchRecord:)[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for HangUpCallHandleIntentFlowStrategy();
  *v9 = v4;
  v9[1] = protocol witness for HandleIntentFlowStrategyAsync.makeHandoffForAuthenticationResponse(rchRecord:) in conformance HangUpCallHandleIntentFlowStrategy;

  return HandleIntentFlowStrategyAsync.makeContinueInAppResponse(rchRecord:)(a1, a2, v10, a4);
}

uint64_t protocol witness for HandleIntentFlowStrategyAsync.makeInProgressResponse(rchRecord:) in conformance HangUpCallHandleIntentFlowStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = async function pointer to HandleIntentFlowStrategyAsync.makeInProgressResponse(rchRecord:)[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for HangUpCallHandleIntentFlowStrategy();
  *v9 = v4;
  v9[1] = protocol witness for HandleIntentFlowStrategyAsync.makeHandoffForAuthenticationResponse(rchRecord:) in conformance HangUpCallHandleIntentFlowStrategy;

  return HandleIntentFlowStrategyAsync.makeInProgressResponse(rchRecord:)(a1, a2, v10, a4);
}

uint64_t protocol witness for HandleIntentFlowStrategyAsync.makeFailureHandlingIntentResponse(rchRecord:) in conformance HangUpCallHandleIntentFlowStrategy(uint64_t a1, uint64_t a2)
{
  v6 = *(**v2 + 136);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = protocol witness for Flow.execute() in conformance CallingIntentContinueInAppFlow<A, B>;

  return v10(a1, a2);
}

uint64_t protocol witness for IntentExtensionCommunicatingAsync.makeIntentExecutionBehavior(app:intent:) in conformance HangUpCallHandleIntentFlowStrategy(uint64_t a1, uint64_t a2)
{
  v6 = *(**v2 + 176);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = protocol witness for Flow.onAsync(input:) in conformance ActionableCallControlFlow;

  return v10(a1, a2);
}

void *specialized HangUpCallHandleIntentFlowStrategy.init(sharedGlobals:hangUpCallCATsSimple:biomeEventSender:callRegistrationManager:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  a5[11] = a6;
  a5[12] = a8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a5 + 8);
  (*(*(a6 - 8) + 32))(boxed_opaque_existential_1, a3, a6);
  a5[16] = a7;
  a5[17] = a9;
  v17 = __swift_allocate_boxed_opaque_existential_1(a5 + 13);
  (*(*(a7 - 8) + 32))(v17, a4, a7);
  outlined init with take of PhoneCallFeatureFlagProviding(a1, a5 + 2);
  a5[7] = a2;
  return a5;
}

void outlined consume of PhoneIntentExecutionBehavior(uint64_t a1, void *a2, void *a3)
{
  if (a1)
  {
  }
}

unint64_t lazy protocol witness table accessor for type HangUpCallHandleIntentFlowStrategy and conformance HangUpCallHandleIntentFlowStrategy()
{
  result = lazy protocol witness table cache variable for type HangUpCallHandleIntentFlowStrategy and conformance HangUpCallHandleIntentFlowStrategy;
  if (!lazy protocol witness table cache variable for type HangUpCallHandleIntentFlowStrategy and conformance HangUpCallHandleIntentFlowStrategy)
  {
    type metadata accessor for HangUpCallHandleIntentFlowStrategy();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HangUpCallHandleIntentFlowStrategy and conformance HangUpCallHandleIntentFlowStrategy);
  }

  return result;
}

uint64_t static HangUpCallIntentConversion.convertToIntent(phoneCallNLIntent:app:sharedGlobals:previousIntent:previousIntentResponse:groupResolver:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo08INHangUpE6IntentCGMd, &_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo08INHangUpE6IntentCGMR);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v21[-1] - v13;
  outlined init with copy of SignalProviding(a3, v21);
  v15 = swift_allocObject();
  v15[2] = a2;
  v15[3] = a4;
  outlined init with take of PhoneCallFeatureFlagProviding(v21, v15 + 4);
  v15[9] = a5;
  v16 = a5;

  v17 = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMR);
  type metadata accessor for INHangUpCallIntent();
  Transformer.init(transform:)();
  v18 = Transformer.transform.getter();
  (*(v11 + 8))(v14, v10);
  v18(v21, a1);

  return v21[0];
}

void partial apply for closure #1 in static Transformer<>.transformer(sharedGlobals:app:previousIntent:previousIntentResponse:)()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[9];
  closure #1 in static Transformer<>.transformer(sharedGlobals:app:previousIntent:previousIntentResponse:)();
}

{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[9];
  closure #1 in static Transformer<>.transformer(sharedGlobals:app:previousIntent:previousIntentResponse:)();
}

unint64_t type metadata accessor for INHangUpCallIntent()
{
  result = lazy cache variable for type metadata for INHangUpCallIntent;
  if (!lazy cache variable for type metadata for INHangUpCallIntent)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for INHangUpCallIntent);
  }

  return result;
}

void *HangUpCallIntentRCHFlowStrategy.__allocating_init(app:sharedGlobals:hangUpCallCATsSimple:responseGenerator:callRegistrationManager:)(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v10 = swift_allocObject();
  v12 = a4[3];
  v11 = a4[4];
  __swift_mutable_project_boxed_opaque_existential_1(a4, v12);
  OUTLINED_FUNCTION_9_1();
  v14 = *(v13 + 64);
  __chkstk_darwin(v15);
  OUTLINED_FUNCTION_4();
  v17 = OUTLINED_FUNCTION_29_5(v16);
  v18(v17);
  v20 = a5[3];
  v19 = a5[4];
  __swift_mutable_project_boxed_opaque_existential_1(a5, v20);
  OUTLINED_FUNCTION_9_1();
  v22 = *(v21 + 64);
  __chkstk_darwin(v23);
  OUTLINED_FUNCTION_4();
  v25 = OUTLINED_FUNCTION_24_0(v24);
  v26(v25);
  v27 = specialized HangUpCallIntentRCHFlowStrategy.init(app:sharedGlobals:hangUpCallCATsSimple:responseGenerator:callRegistrationManager:)(a1, a2, a3, v5, v6, v10, v20, v12, v19, v11);
  __swift_destroy_boxed_opaque_existential_1(a5);
  __swift_destroy_boxed_opaque_existential_1(a4);
  return v27;
}

void *HangUpCallIntentRCHFlowStrategy.init(app:sharedGlobals:hangUpCallCATsSimple:responseGenerator:callRegistrationManager:)(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v12 = a4[3];
  v11 = a4[4];
  __swift_mutable_project_boxed_opaque_existential_1(a4, v12);
  OUTLINED_FUNCTION_9_1();
  v14 = *(v13 + 64);
  __chkstk_darwin(v15);
  OUTLINED_FUNCTION_4();
  v17 = OUTLINED_FUNCTION_29_5(v16);
  v18(v17);
  v20 = a5[3];
  v19 = a5[4];
  __swift_mutable_project_boxed_opaque_existential_1(a5, v20);
  OUTLINED_FUNCTION_9_1();
  v22 = *(v21 + 64);
  __chkstk_darwin(v23);
  OUTLINED_FUNCTION_4();
  v25 = OUTLINED_FUNCTION_24_0(v24);
  v26(v25);
  v27 = specialized HangUpCallIntentRCHFlowStrategy.init(app:sharedGlobals:hangUpCallCATsSimple:responseGenerator:callRegistrationManager:)(a1, a2, a3, v5, v6, v30, v20, v12, v19, v11);
  __swift_destroy_boxed_opaque_existential_1(a5);
  __swift_destroy_boxed_opaque_existential_1(a4);
  return v27;
}

uint64_t HangUpCallIntentRCHFlowStrategy.makeIntentFromParse(parse:currentIntent:)(uint64_t a1, uint64_t a2)
{
  v3[13] = a2;
  v3[14] = v2;
  v3[12] = a1;
  v4 = OUTLINED_FUNCTION_10();
  return _swift_task_switch(v4, v5, v6);
}

uint64_t HangUpCallIntentRCHFlowStrategy.makeIntentFromParse(parse:currentIntent:)()
{
  v35 = v0;
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2();
  }

  v2 = *(v0 + 112);
  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Logger.siriPhone);

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 112);
    v7 = swift_slowAlloc();
    v1 = swift_slowAlloc();
    v34[0] = v1;
    *v7 = 136315394;
    *(v0 + 16) = v6;
    type metadata accessor for HangUpCallIntentRCHFlowStrategy();

    v8 = String.init<A>(describing:)();
    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, v34);

    *(v7 + 4) = v10;
    *(v7 + 12) = 2080;
    *(v7 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000029, 0x800000000045BB60, v34);
    _os_log_impl(&dword_0, v4, v5, "#%s %s", v7, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_26_0();
    OUTLINED_FUNCTION_26_0();
  }

  v11 = *(v0 + 112);
  v12 = *(v0 + 96);
  OUTLINED_FUNCTION_9_33();
  v13 = *(v1 + 72);
  v14 = OUTLINED_FUNCTION_7_1();
  v16 = v15(v14);
  (*(*v16 + 192))(v12);

  if (*(v0 + 80))
  {
    v17 = *(v0 + 104);
    v18 = *(v0 + 112);
    outlined init with take of SPHConversation((v0 + 56), v0 + 16);
    OUTLINED_FUNCTION_9_33();
    v19 = *(v1 + 80);
    v20 = OUTLINED_FUNCTION_7_1();
    v21(v20);
    v22 = *(v18 + 16);
    v23 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));

    v24 = v17;
    specialized SKTransformer.convertToSKIntent<A>(phoneCallNLIntent:rchFlowContext:)();
    v26 = v25;

    outlined destroy of SKTransformer(v0 + 56);
    if (v26)
    {
      __swift_destroy_boxed_opaque_existential_1((v0 + 16));
      OUTLINED_FUNCTION_17_5();

      return v27(v26);
    }

    lazy protocol witness table accessor for type ParseError and conformance ParseError();
    v31 = swift_allocError();
    OUTLINED_FUNCTION_15_5(xmmword_42D060, v31, v32);
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  }

  else
  {
    outlined destroy of PhoneCallNLIntent?(v0 + 56);
    lazy protocol witness table accessor for type ParseError and conformance ParseError();
    v29 = swift_allocError();
    OUTLINED_FUNCTION_15_5(xmmword_42D060, v29, v30);
  }

  v33 = *(v0 + 8);

  return v33();
}

uint64_t HangUpCallIntentRCHFlowStrategy.makeIntentExecutionBehavior(app:intent:)()
{
  OUTLINED_FUNCTION_27();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = HangUpCallIntentRCHFlowStrategy.makeIntentExecutionBehavior(app:intent:);

  return static HangUpCallIntentExecutionBehavior.getIntentExecutionBehavior(app:intent:sharedGlobals:callRegistrationManager:)();
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  v2 = v1;
  v3 = v1[2];
  v11 = *v0;
  v2[3] = v4;
  v2[4] = v5;
  v2[5] = v6;

  v7 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v7, v8, v9);
}

{
  OUTLINED_FUNCTION_27();
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[3];
  v4 = PhoneIntentExecutionBehavior.asSiriKitIntentExecutionBehavior.getter(v3, v1, v2);
  outlined consume of PhoneIntentExecutionBehavior(v3, v1, v2);
  OUTLINED_FUNCTION_17_5();

  return v5(v4);
}

uint64_t HangUpCallIntentRCHFlowStrategy.makeFailureConfirmingIntentResponse(app:intent:intentResponse:)()
{
  OUTLINED_FUNCTION_15();
  v1[14] = v2;
  v1[15] = v0;
  v1[13] = v3;
  v4 = *(*(type metadata accessor for DialogPhase() - 8) + 64) + 15;
  v1[16] = swift_task_alloc();
  v5 = type metadata accessor for OutputGenerationManifest();
  v1[17] = v5;
  v6 = *(v5 - 8);
  v1[18] = v6;
  v7 = *(v6 + 64) + 15;
  v1[19] = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v8, v9, v10);
}

{
  v19 = v0;
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.siriPhone);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v18 = v5;
    *v4 = 136315138;
    *(v4 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000003FLL, 0x800000000045BB90, &v18);
    _os_log_impl(&dword_0, v2, v3, "#HangUpCallIntentRCHFlowStrategy %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v5);
    OUTLINED_FUNCTION_26_0();
    OUTLINED_FUNCTION_26_0();
  }

  v6 = *(v0 + 120);
  v7 = [*(v0 + 112) code];
  v8 = (**(v6 + 64) + class metadata base offset for HangUpCallCATsSimple);
  if (v7 == &dword_4 + 2)
  {
    v15 = (v8[2] + *v8[2]);
    v9 = v8[2][1];
    v10 = swift_task_alloc();
    *(v0 + 160) = v10;
    *v10 = v0;
    v10[1] = HangUpCallIntentRCHFlowStrategy.makeFailureConfirmingIntentResponse(app:intent:intentResponse:);
    v11 = v15;
  }

  else
  {
    v16 = (*v8 + **v8);
    v17 = **(v6 + 64) + class metadata base offset for HangUpCallCATsSimple;
    v13 = (*v8)[1];
    v14 = swift_task_alloc();
    *(v0 + 168) = v14;
    *v14 = v0;
    v14[1] = HangUpCallIntentRCHFlowStrategy.makeFailureConfirmingIntentResponse(app:intent:intentResponse:);
    v11 = v16;
  }

  return v11();
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_28();
  v3 = v2;
  v2[7] = v1;
  v2[8] = v4;
  v2[9] = v0;
  v5 = v2[20];
  v6 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v7 = v6;

  if (v0)
  {
    v8 = v3[19];
    v9 = v3[16];

    v10 = *(v6 + 8);

    return v10();
  }

  else
  {

    return _swift_task_switch(HangUpCallIntentRCHFlowStrategy.makeFailureConfirmingIntentResponse(app:intent:intentResponse:), 0, 0);
  }
}

{
  v2 = v0[8];
  v3 = v0[19];
  v5 = v0[15];
  v4 = v0[16];
  v0[22] = v2;
  v6 = v2;
  static DialogPhase.completion.getter();
  OUTLINED_FUNCTION_2_55();
  OUTLINED_FUNCTION_9_33();
  v7 = *(v1 + 136);
  v8 = OUTLINED_FUNCTION_7_1();
  v9(v8);
  v10 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v11 = swift_allocObject();
  v0[23] = v11;
  *(v11 + 16) = xmmword_426260;
  *(v11 + 32) = v6;
  v12 = *(v10 + 8);
  v13 = async function pointer to dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)[1];
  v14 = swift_task_alloc();
  v0[24] = v14;
  *v14 = v0;
  v15 = OUTLINED_FUNCTION_1_64(v14);

  return dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)(v15, v16, v17, v18, v19);
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_28();
  v3 = v2;
  v2[10] = v1;
  v2[11] = v4;
  v2[12] = v0;
  v5 = v2[21];
  v6 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v7 = v6;

  if (v0)
  {
    v8 = v3[19];
    v9 = v3[16];

    v10 = *(v6 + 8);

    return v10();
  }

  else
  {

    return _swift_task_switch(HangUpCallIntentRCHFlowStrategy.makeFailureConfirmingIntentResponse(app:intent:intentResponse:), 0, 0);
  }
}

{
  v2 = v0[11];
  v3 = v0[19];
  v5 = v0[15];
  v4 = v0[16];
  v0[22] = v2;
  v6 = v2;
  static DialogPhase.completion.getter();
  OUTLINED_FUNCTION_2_55();
  OUTLINED_FUNCTION_9_33();
  v7 = *(v1 + 136);
  v8 = OUTLINED_FUNCTION_7_1();
  v9(v8);
  v10 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v11 = swift_allocObject();
  v0[23] = v11;
  *(v11 + 16) = xmmword_426260;
  *(v11 + 32) = v6;
  v12 = *(v10 + 8);
  v13 = async function pointer to dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)[1];
  v14 = swift_task_alloc();
  v0[24] = v14;
  *v14 = v0;
  v15 = OUTLINED_FUNCTION_1_64(v14);

  return dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)(v15, v16, v17, v18, v19);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  v2 = *(v1 + 192);
  v3 = *(v1 + 184);
  v4 = *v0;
  OUTLINED_FUNCTION_4_2();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v6, v7, v8);
}

{
  OUTLINED_FUNCTION_27();
  v2 = *(v0 + 144);
  v1 = *(v0 + 152);
  v4 = *(v0 + 128);
  v3 = *(v0 + 136);

  (*(v2 + 8))(v1, v3);
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  v5 = *(v0 + 8);

  return v5();
}

uint64_t *HangUpCallIntentRCHFlowStrategy.deinit()
{
  v1 = v0[2];

  __swift_destroy_boxed_opaque_existential_1(v0 + 3);
  v2 = v0[8];

  __swift_destroy_boxed_opaque_existential_1(v0 + 9);
  __swift_destroy_boxed_opaque_existential_1(v0 + 14);
  return v0;
}

uint64_t HangUpCallIntentRCHFlowStrategy.__deallocating_deinit()
{
  HangUpCallIntentRCHFlowStrategy.deinit();

  return swift_deallocClassInstance();
}

uint64_t protocol witness for RCHFlowStrategyAsync.makeIntentFromParse(parse:currentIntent:) in conformance HangUpCallIntentRCHFlowStrategy(uint64_t a1, uint64_t a2)
{
  v6 = *(**v2 + 136);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = implicit closure #4 in implicit closure #3 in implicit closure #2 in AddCallParticipantGuardFlowFactory.makeCallStateGuardFlow();

  return v10(a1, a2);
}

uint64_t protocol witness for RCHFlowStrategyAsync.makeParameterMetadata(intent:) in conformance HangUpCallIntentRCHFlowStrategy(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for HangUpCallIntentRCHFlowStrategy();

  return RCHFlowStrategyAsync.makeParameterMetadata(intent:)(a1, v5, a3);
}

uint64_t protocol witness for RCHFlowStrategyAsync.makeErrorResponse(error:) in conformance HangUpCallIntentRCHFlowStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = async function pointer to RCHFlowStrategyAsync.makeErrorResponse(error:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = protocol witness for HandleIntentFlowStrategyAsync.makeHandoffForAuthenticationResponse(rchRecord:) in conformance HangUpCallHandleIntentFlowStrategy;

  return RCHFlowStrategyAsync.makeErrorResponse(error:)(a1, a2, a3, a4);
}

uint64_t protocol witness for ResolveConfirmFlowStrategyAsync.makeAppDoesNotSupportIntentResponse(app:intent:) in conformance HangUpCallIntentRCHFlowStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = async function pointer to ResolveConfirmFlowStrategyAsync.makeAppDoesNotSupportIntentResponse(app:intent:)[1];
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v12 = type metadata accessor for HangUpCallIntentRCHFlowStrategy();
  *v11 = v5;
  v11[1] = protocol witness for HandleIntentFlowStrategyAsync.makeHandoffForAuthenticationResponse(rchRecord:) in conformance HangUpCallHandleIntentFlowStrategy;

  return ResolveConfirmFlowStrategyAsync.makeAppDoesNotSupportIntentResponse(app:intent:)(a1, a2, a3, v12, a5);
}

uint64_t protocol witness for ResolveConfirmFlowStrategyAsync.makeAppNotFoundOnDeviceResponse(app:intent:) in conformance HangUpCallIntentRCHFlowStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = async function pointer to ResolveConfirmFlowStrategyAsync.makeAppNotFoundOnDeviceResponse(app:intent:)[1];
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v12 = type metadata accessor for HangUpCallIntentRCHFlowStrategy();
  *v11 = v5;
  v11[1] = protocol witness for HandleIntentFlowStrategyAsync.makeHandoffForAuthenticationResponse(rchRecord:) in conformance HangUpCallHandleIntentFlowStrategy;

  return ResolveConfirmFlowStrategyAsync.makeAppNotFoundOnDeviceResponse(app:intent:)(a1, a2, a3, v12, a5);
}

uint64_t protocol witness for ResolveConfirmFlowStrategyAsync.makeDeviceIncompatibleResponse(app:intent:) in conformance HangUpCallIntentRCHFlowStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = async function pointer to ResolveConfirmFlowStrategyAsync.makeDeviceIncompatibleResponse(app:intent:)[1];
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v12 = type metadata accessor for HangUpCallIntentRCHFlowStrategy();
  *v11 = v5;
  v11[1] = protocol witness for HandleIntentFlowStrategyAsync.makeHandoffForAuthenticationResponse(rchRecord:) in conformance HangUpCallHandleIntentFlowStrategy;

  return ResolveConfirmFlowStrategyAsync.makeDeviceIncompatibleResponse(app:intent:)(a1, a2, a3, v12, a5);
}

uint64_t protocol witness for ResolveConfirmFlowStrategyAsync.makeErrorResponse(error:app:intent:) in conformance HangUpCallIntentRCHFlowStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = async function pointer to ResolveConfirmFlowStrategyAsync.makeErrorResponse(error:app:intent:)[1];
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  v14 = type metadata accessor for HangUpCallIntentRCHFlowStrategy();
  *v13 = v6;
  v13[1] = protocol witness for HandleIntentFlowStrategyAsync.makeHandoffForAuthenticationResponse(rchRecord:) in conformance HangUpCallHandleIntentFlowStrategy;

  return ResolveConfirmFlowStrategyAsync.makeErrorResponse(error:app:intent:)(a1, a2, a3, a4, v14, a6);
}

uint64_t protocol witness for RouteConfirmIntentResponseFlowStrategyAsync.makeFailureConfirmingIntentResponse(app:intent:intentResponse:) in conformance HangUpCallIntentRCHFlowStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(**v4 + 152);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = protocol witness for Flow.execute() in conformance CallingIntentContinueInAppFlow<A, B>;

  return v14(a1, a2, a3, a4);
}

uint64_t protocol witness for IntentExtensionCommunicatingAsync.makeIntentExecutionBehavior(app:intent:) in conformance HangUpCallIntentRCHFlowStrategy(uint64_t a1, uint64_t a2)
{
  v6 = *(**v2 + 144);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = protocol witness for Flow.onAsync(input:) in conformance CallingIntentContinueInAppFlow<A1, B1>;

  return v10(a1, a2);
}

void *specialized HangUpCallIntentRCHFlowStrategy.init(app:sharedGlobals:hangUpCallCATsSimple:responseGenerator:callRegistrationManager:)(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  a6[12] = a8;
  a6[13] = a10;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a6 + 9);
  (*(*(a8 - 8) + 32))(boxed_opaque_existential_1, a4, a8);
  a6[17] = a7;
  a6[18] = a9;
  v19 = __swift_allocate_boxed_opaque_existential_1(a6 + 14);
  (*(*(a7 - 8) + 32))(v19, a5, a7);
  a6[2] = a1;
  outlined init with take of SPHConversation(a2, (a6 + 3));
  a6[8] = a3;
  return a6;
}

uint64_t lazy protocol witness table accessor for type HangUpCallIntentRCHFlowStrategy and conformance HangUpCallIntentRCHFlowStrategy(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for HangUpCallIntentRCHFlowStrategy();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static HangUpDirectInvocationFlowFactory.makeHangUpFlow(sharedGlobals:)(void *a1)
{
  if (one-time initialization token for instance != -1)
  {
    swift_once();
  }

  memcpy(__dst, &static PhoneCallFeatureFlags.instance, 0xC0uLL);
  v21 = &type metadata for PhoneCallFeatureFlags;
  v22 = &protocol witness table for PhoneCallFeatureFlags;
  *&v20 = swift_allocObject();
  memcpy((v20 + 16), &static PhoneCallFeatureFlags.instance, 0xC0uLL);
  outlined init with take of SPHConversation(&v20, v23);
  outlined init with copy of PhoneCallFeatureFlags(__dst, v18);
  __swift_destroy_boxed_opaque_existential_1(v23);
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v3 = *(v2 + 8);
  v4 = OUTLINED_FUNCTION_1_1();
  v5(v4);
  __swift_project_boxed_opaque_existential_1(v18, v19);
  OUTLINED_FUNCTION_1_1();
  if (dispatch thunk of DeviceState.isMac.getter())
  {
    if (one-time initialization token for siriFaceTimeMacExtension != -1)
    {
      swift_once();
    }

    v6 = &static DefaultPhoneApps.siriFaceTimeMacExtension;
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(v18, v19);
    OUTLINED_FUNCTION_1_1();
    if (dispatch thunk of DeviceState.isWatch.getter())
    {
      if (one-time initialization token for siriPhoneWatchExtension != -1)
      {
        swift_once();
      }

      v6 = &static DefaultPhoneApps.siriPhoneWatchExtension;
    }

    else
    {
      __swift_project_boxed_opaque_existential_1(v18, v19);
      OUTLINED_FUNCTION_1_1();
      if (dispatch thunk of DeviceState.isXRDevice.getter())
      {
        if (one-time initialization token for siriPhoneFaceTimeExtension != -1)
        {
          swift_once();
        }

        v6 = &static DefaultPhoneApps.siriPhoneFaceTimeExtension;
      }

      else
      {
        if (one-time initialization token for siriPhoneExtension != -1)
        {
          swift_once();
        }

        v6 = &static DefaultPhoneApps.siriPhoneExtension;
      }
    }
  }

  v7 = *v6;

  __swift_destroy_boxed_opaque_existential_1(v18);
  v8 = [objc_allocWithZone(INHangUpCallIntent) init];

  INIntent.setMetaData(app:previousIntent:sharedGlobals:)(v9, 0, a1);

  static PhoneCallFlowFactory.makeHangUpCallRCHFlow(intent:app:sharedGlobals:)();
  v11 = v10;
  v12 = a1[3];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v12);
  (*(v13 + 40))(v18, v12, v13);
  __swift_project_boxed_opaque_existential_1(v18, v19);
  type metadata accessor for SiriKitEvent();
  if (one-time initialization token for emptyHangUpCallIntent != -1)
  {
    swift_once();
  }

  v14 = [static PhoneCallIntentClassNames.emptyHangUpCallIntent typeName];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  outlined init with copy of SignalProviding(a1, &v20);
  v15 = swift_allocObject();
  *(v15 + 16) = v7;
  outlined init with take of SPHConversation(&v20, v15 + 24);

  SiriKitEvent.__allocating_init(stateType:taskType:statusReason:_:)();
  dispatch thunk of SiriKitEventSending.send(_:)();

  __swift_destroy_boxed_opaque_existential_1(v18);
  v18[0] = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow08AnyValueC0CyAA13RCHFlowResultOySo18INHangUpCallIntentCSo0hijK8ResponseCGGMd, &_s11SiriKitFlow08AnyValueC0CyAA13RCHFlowResultOySo18INHangUpCallIntentCSo0hijK8ResponseCGGMR);
  lazy protocol witness table accessor for type AnyValueFlow<RCHFlowResult<INHangUpCallIntent, INHangUpCallIntentResponse>> and conformance AnyValueFlow<A>();
  v16 = Flow.eraseToAnyFlow()();

  return v16;
}

uint64_t closure #1 in static HangUpDirectInvocationFlowFactory.makeHangUpFlow(sharedGlobals:)(uint64_t *a1, uint64_t a2, void *a3)
{
  v4 = *a1;

  dispatch thunk of SiriKitEvent.SiriKitEventBuilder.app.setter();
  v5 = a3[3];
  v6 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v5);
  (*(v6 + 120))(v8, v5, v6);
  static PhoneDomainContextMetricsUtils.populatePhoneDomainContextForHangUpDirectInvocation(callStateProvider:)(v8);
  __swift_destroy_boxed_opaque_existential_1(v8);
  return dispatch thunk of SiriKitEvent.SiriKitEventBuilder.domainContext.setter();
}

unint64_t lazy protocol witness table accessor for type AnyValueFlow<RCHFlowResult<INHangUpCallIntent, INHangUpCallIntentResponse>> and conformance AnyValueFlow<A>()
{
  result = lazy protocol witness table cache variable for type AnyValueFlow<RCHFlowResult<INHangUpCallIntent, INHangUpCallIntentResponse>> and conformance AnyValueFlow<A>;
  if (!lazy protocol witness table cache variable for type AnyValueFlow<RCHFlowResult<INHangUpCallIntent, INHangUpCallIntentResponse>> and conformance AnyValueFlow<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s11SiriKitFlow08AnyValueC0CyAA13RCHFlowResultOySo18INHangUpCallIntentCSo0hijK8ResponseCGGMd, &_s11SiriKitFlow08AnyValueC0CyAA13RCHFlowResultOySo18INHangUpCallIntentCSo0hijK8ResponseCGGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnyValueFlow<RCHFlowResult<INHangUpCallIntent, INHangUpCallIntentResponse>> and conformance AnyValueFlow<A>);
  }

  return result;
}

uint64_t static HangUpCallIntentExecutionBehavior.getIntentExecutionBehavior(app:intent:sharedGlobals:callRegistrationManager:)()
{
  return _swift_task_switch(static HangUpCallIntentExecutionBehavior.getIntentExecutionBehavior(app:intent:sharedGlobals:callRegistrationManager:), 0, 0);
}

{
  if (one-time initialization token for siriPhone != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.siriPhone);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "#HangUpCallIntentExecutionBehavior getIntentExecutionBehavior using standard PhoneIntentHandler", v4, 2u);
  }

  v5 = *(v0 + 8);

  return v5(0, 0, 0);
}

uint64_t HangUpTipGenerator.init(sharedGlobals:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 1;
  *(a2 + 8) = 0xD000000000000013;
  *(a2 + 16) = 0x8000000000455210;
  return outlined init with take of PhoneCallFeatureFlagProviding(a1, a2 + 24);
}

uint64_t HangUpTipGenerator.templateIdentifier.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

Swift::Bool __swiftcall HangUpTipGenerator.isEnabled()()
{
  v1 = v0[6];
  v2 = v0[7];
  __swift_project_boxed_opaque_existential_1(v0 + 3, v1);
  (*(v2 + 8))(v4, v1, v2);
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  LOBYTE(v1) = dispatch thunk of DeviceState.isHomePod.getter();
  __swift_destroy_boxed_opaque_existential_1(v4);
  return v1 & 1;
}

unint64_t instantiation function for generic protocol witness table for HangUpTipGenerator(uint64_t a1)
{
  result = lazy protocol witness table accessor for type HangUpTipGenerator and conformance HangUpTipGenerator();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type HangUpTipGenerator and conformance HangUpTipGenerator()
{
  result = lazy protocol witness table cache variable for type HangUpTipGenerator and conformance HangUpTipGenerator;
  if (!lazy protocol witness table cache variable for type HangUpTipGenerator and conformance HangUpTipGenerator)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HangUpTipGenerator and conformance HangUpTipGenerator);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HangUpTipGenerator(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 64))
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

uint64_t storeEnumTagSinglePayload for HangUpTipGenerator(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t HashableParse.Category.init(_:)(uint64_t a1)
{
  v2 = type metadata accessor for Parse();
  OUTLINED_FUNCTION_7(v2);
  v4 = v3;
  v6 = (*(v5 + 88))(a1, v2);
  if (v6 == enum case for Parse.NLv3IntentOnly(_:))
  {
    v7 = OUTLINED_FUNCTION_5_43();
    v8(v7);
    return 0;
  }

  v9 = v6;
  if (v6 == enum case for Parse.NLv3IntentPlusServerConversion(_:))
  {
    (*(v4 + 96))(a1, v2);
    v10 = *(a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology8NLIntentV_0A7KitFlow5ParseO16ServerConversionCtMd, &_s12SiriOntology8NLIntentV_0A7KitFlow5ParseO16ServerConversionCtMR) + 48));

    v11 = type metadata accessor for NLIntent();
    (*(*(v11 - 8) + 8))(a1, v11);
    return 0;
  }

  if (v6 == enum case for Parse.NLv4IntentOnly(_:) || v6 == enum case for Parse.uso(_:))
  {
    v14 = OUTLINED_FUNCTION_5_43();
    v15(v14);
    return 1;
  }

  else
  {
    v16 = enum case for Parse.ifClientAction(_:);
    v17 = OUTLINED_FUNCTION_5_43();
    v18(v17);
    if (v9 == v16)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t HashableParse.Category.description.getter(char a1)
{
  result = 863390798;
  switch(a1)
  {
    case 1:
      result = 880168014;
      break;
    case 2:
      result = 0x746E65696C434649;
      break;
    case 3:
      result = 0x6E776F6E6B6E75;
      break;
    default:
      return result;
  }

  return result;
}

PhoneCallFlowDelegatePlugin::HashableParse::Category_optional __swiftcall HashableParse.Category.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of HashableParse.Category.init(rawValue:), v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

PhoneCallFlowDelegatePlugin::HashableParse::Category_optional protocol witness for RawRepresentable.init(rawValue:) in conformance HashableParse.Category@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::HashableParse::Category_optional *a2@<X8>)
{
  result.value = HashableParse.Category.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance HashableParse.Category@<X0>(uint64_t *a1@<X8>)
{
  result = HashableParse.Category.description.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t static HashableParse.from(_:)@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v126 = a2;
  v3 = type metadata accessor for MessagePayload.ClientAction();
  v4 = OUTLINED_FUNCTION_7(v3);
  v113 = v5;
  v114 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v4);
  OUTLINED_FUNCTION_4();
  v111 = v9 - v8;
  v112 = type metadata accessor for IFClientActionParse();
  v10 = OUTLINED_FUNCTION_7(v112);
  v110 = v11;
  v13 = *(v12 + 64);
  __chkstk_darwin(v10);
  OUTLINED_FUNCTION_4();
  v109 = v15 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMd, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMR);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v19 = &v109 - v18;
  v119 = type metadata accessor for Siri_Nlu_External_UserParse();
  v20 = OUTLINED_FUNCTION_7(v119);
  v117 = v21;
  v23 = *(v22 + 64);
  __chkstk_darwin(v20);
  OUTLINED_FUNCTION_4();
  v116 = (v25 - v24);
  v26 = type metadata accessor for USOParse();
  v27 = OUTLINED_FUNCTION_7(v26);
  v115 = v28;
  v30 = *(v29 + 64);
  __chkstk_darwin(v27);
  OUTLINED_FUNCTION_4();
  v33 = v32 - v31;
  v34 = type metadata accessor for Parse();
  v35 = OUTLINED_FUNCTION_7(v34);
  v37 = v36;
  v39 = *(v38 + 64);
  v40 = __chkstk_darwin(v35);
  v42 = &v109 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v40);
  v44 = &v109 - v43;
  v123 = type metadata accessor for NLIntent();
  v45 = OUTLINED_FUNCTION_7(v123);
  v125 = v46;
  v48 = *(v47 + 64);
  __chkstk_darwin(v45);
  OUTLINED_FUNCTION_4();
  v51 = (v50 - v49);
  v52 = *(v37 + 16);
  v124 = a1;
  v122 = v52;
  v52(v44, a1, v34);
  v121 = *(v37 + 88);
  v53 = v121(v44, v34);
  v120 = enum case for Parse.NLv3IntentOnly(_:);
  if (v53 == enum case for Parse.NLv3IntentOnly(_:))
  {
    v54 = OUTLINED_FUNCTION_1_65();
    v55(v54);
LABEL_5:
    v59 = *(v125 + 32);
    v60 = v123;
    v59(v51, v44, v123);
    v128 = v60;
    v61 = _s10Foundation4UUIDVACSHAAWlTm_2(&lazy protocol witness table cache variable for type NLIntent and conformance NLIntent, &type metadata accessor for NLIntent);
    v62 = OUTLINED_FUNCTION_6_42(v61);
    v59(v62, v51, v60);
    goto LABEL_6;
  }

  if (v53 == enum case for Parse.NLv3IntentPlusServerConversion(_:))
  {
    v56 = OUTLINED_FUNCTION_1_65();
    v57(v56);
    v58 = *&v44[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology8NLIntentV_0A7KitFlow5ParseO16ServerConversionCtMd, &_s12SiriOntology8NLIntentV_0A7KitFlow5ParseO16ServerConversionCtMR) + 48)];

    goto LABEL_5;
  }

  if (v53 == enum case for Parse.NLv4IntentOnly(_:))
  {
    v77 = *(v37 + 96);
    v77(v44, v34);
    v78 = *v44;
    static ConversionUtils.toUserParse(from:)();
    v79 = v119;
    if (__swift_getEnumTagSinglePayload(v19, 1, v119) == 1)
    {
      swift_unknownObjectRelease();
      result = outlined destroy of Siri_Nlu_External_UserParse?(v19);
      v80 = v126;
      *v126 = 0u;
      v80[1] = 0u;
      v80[2] = 0u;
      return result;
    }

    v118 = v77;
    v93 = v116;
    v94 = v19;
    v95 = *(v117 + 32);
    v95(v116, v94, v79);
    v128 = v79;
    OUTLINED_FUNCTION_3_45();
    v98 = _s10Foundation4UUIDVACSHAAWlTm_2(v96, v97);
    v99 = OUTLINED_FUNCTION_6_42(v98);
    v95(v99, v93, v79);
    swift_unknownObjectRelease();
LABEL_29:
    v60 = v123;
LABEL_6:
    v122(v42, v124, v34);
    v63 = v121(v42, v34);
    if (v63 == v120)
    {
      v64 = OUTLINED_FUNCTION_4_35();
      v65(v64);
    }

    else
    {
      v66 = v63;
      if (v63 != enum case for Parse.NLv3IntentPlusServerConversion(_:))
      {
        if (v63 == enum case for Parse.NLv4IntentOnly(_:) || v63 == enum case for Parse.uso(_:))
        {
          v82 = OUTLINED_FUNCTION_4_35();
          v83(v82);
          v68 = 1;
        }

        else
        {
          v90 = enum case for Parse.ifClientAction(_:);
          v91 = OUTLINED_FUNCTION_4_35();
          v92(v91);
          if (v66 == v90)
          {
            v68 = 2;
          }

          else
          {
            v68 = 3;
          }
        }

        goto LABEL_11;
      }

      v118(v42, v34);
      v67 = *&v42[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology8NLIntentV_0A7KitFlow5ParseO16ServerConversionCtMd, &_s12SiriOntology8NLIntentV_0A7KitFlow5ParseO16ServerConversionCtMR) + 48)];

      (*(v125 + 8))(v42, v60);
    }

    v68 = 0;
LABEL_11:
    v69 = v128;
    v70 = __swift_project_boxed_opaque_existential_1(v127, v128);
    v71 = *(*(v69 - 8) + 64);
    __chkstk_darwin(v70);
    OUTLINED_FUNCTION_4();
    (*(v74 + 16))(v73 - v72);
    v75 = v126;
    AnyHashable.init<A>(_:)();
    *v75 = v68;
    return __swift_destroy_boxed_opaque_existential_1(v127);
  }

  if (v53 == enum case for Parse.uso(_:))
  {
    v84 = OUTLINED_FUNCTION_1_65();
    v85(v84);
    v86 = v115;
    (*(v115 + 32))(v33, v44, v26);
    v128 = v119;
    OUTLINED_FUNCTION_3_45();
    v89 = _s10Foundation4UUIDVACSHAAWlTm_2(v87, v88);
    OUTLINED_FUNCTION_6_42(v89);
    USOParse.userParse.getter();
    (*(v86 + 8))(v33, v26);
    goto LABEL_29;
  }

  if (v53 == enum case for Parse.ifClientAction(_:))
  {
    v100 = OUTLINED_FUNCTION_1_65();
    v101(v100);
    v102 = v110;
    v103 = v109;
    v104 = v44;
    v105 = v112;
    (*(v110 + 32))(v109, v104, v112);
    v106 = v111;
    IFClientActionParse.clientAction.getter();
    v128 = type metadata accessor for UUID();
    v107 = _s10Foundation4UUIDVACSHAAWlTm_2(&lazy protocol witness table cache variable for type UUID and conformance UUID, &type metadata accessor for UUID);
    OUTLINED_FUNCTION_6_42(v107);
    MessagePayload.ClientAction.eventId.getter();
    (*(v113 + 8))(v106, v114);
    (*(v102 + 8))(v103, v105);
    goto LABEL_29;
  }

  v108 = v126;
  v126[1] = 0u;
  v108[2] = 0u;
  *v108 = 0u;
  return (*(v37 + 8))(v44, v34);
}

__n128 HashableParse.init(category:backingData:)@<Q0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = a1;
  result = *a2;
  v4 = *(a2 + 16);
  *(a3 + 8) = *a2;
  *(a3 + 24) = v4;
  *(a3 + 40) = *(a2 + 32);
  return result;
}

uint64_t outlined destroy of Siri_Nlu_External_UserParse?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMd, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t _s10Foundation4UUIDVACSHAAWlTm_2(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t static HashableParse.== infix(_:_:)(unsigned __int8 *a1, _BYTE *a2)
{
  v2 = 863390798;
  v3 = *a1;
  v4 = 0xE400000000000000;
  v5 = 863390798;
  switch(v3)
  {
    case 1:
      v5 = 880168014;
      break;
    case 2:
      v5 = 0x746E65696C434649;
      v4 = 0xEE006E6F69746341;
      break;
    case 3:
      v4 = 0xE700000000000000;
      v5 = 0x6E776F6E6B6E75;
      break;
    default:
      break;
  }

  v6 = 0xE400000000000000;
  switch(*a2)
  {
    case 1:
      v2 = 880168014;
      break;
    case 2:
      v2 = 0x746E65696C434649;
      v6 = 0xEE006E6F69746341;
      break;
    case 3:
      v6 = 0xE700000000000000;
      v2 = 0x6E776F6E6B6E75;
      break;
    default:
      break;
  }

  if (v5 == v2 && v4 == v6)
  {
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v8 & 1) == 0)
    {
      return 0;
    }
  }

  return static AnyHashable.== infix(_:_:)();
}

Swift::Int HashableParse.hashValue.getter()
{
  Hasher.init(_seed:)();
  specialized RawRepresentable<>.hash(into:)(v2, *v0);
  AnyHashable.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance HashableParse()
{
  Hasher.init(_seed:)();
  HashableParse.hash(into:)(v1);
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type HashableParse.Category and conformance HashableParse.Category()
{
  result = lazy protocol witness table cache variable for type HashableParse.Category and conformance HashableParse.Category;
  if (!lazy protocol witness table cache variable for type HashableParse.Category and conformance HashableParse.Category)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HashableParse.Category and conformance HashableParse.Category);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type HashableParse and conformance HashableParse()
{
  result = lazy protocol witness table cache variable for type HashableParse and conformance HashableParse;
  if (!lazy protocol witness table cache variable for type HashableParse and conformance HashableParse)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HashableParse and conformance HashableParse);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HashableParse(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 32);
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

uint64_t storeEnumTagSinglePayload for HashableParse(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

_BYTE *storeEnumTagSinglePayload for HashableParse.Category(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

uint64_t HoldControlFlow.executeAction(currentCall:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return _swift_task_switch(HoldControlFlow.executeAction(currentCall:), 0, 0);
}

uint64_t HoldControlFlow.executeAction(currentCall:)()
{
  v59 = v0;
  v1 = *(v0[5] + 56);
  if ((PhoneCallControlAction.isHoldAction.getter(v1) & 1) == 0)
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2();
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, static Logger.siriPhone);
    v8 = Logger.logObject.getter();
    ObjectType = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v8, ObjectType))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_0, v8, ObjectType, "#HoldControlFlow used to handle a call control not related to hold.", v9, 2u);
      OUTLINED_FUNCTION_26_0();
    }

    lazy protocol witness table accessor for type ActionableCallControlFlow.ActionableCallControlFlowError and conformance ActionableCallControlFlow.ActionableCallControlFlowError();
    OUTLINED_FUNCTION_3_46();
    OUTLINED_FUNCTION_2_56();
    v6 = 0;
    *v10 = v1;
    goto LABEL_13;
  }

  v3 = v0[3];
  v2 = v0[4];
  ObjectType = swift_getObjectType();
  if (SPHCall.isFTVideo.getter())
  {
    lazy protocol witness table accessor for type ActionableCallControlFlow.ActionableCallControlFlowError and conformance ActionableCallControlFlow.ActionableCallControlFlowError();
    OUTLINED_FUNCTION_3_46();
    OUTLINED_FUNCTION_2_56();
    *(v5 + 24) = &type metadata for ActionableCallControlFlow.UnsupportedHoldActionReason;
    *(ObjectType + 32) = lazy protocol witness table accessor for type ActionableCallControlFlow.UnsupportedHoldActionReason and conformance ActionableCallControlFlow.UnsupportedHoldActionReason();
    v6 = 1;
    *ObjectType = 1;
LABEL_13:
    *(ObjectType + 40) = v6;
    swift_willThrow();
    v15 = v0[1];
    goto LABEL_14;
  }

  v11 = v0[3];
  v12 = *(v0[4] + 16);
  if (v12(ObjectType) == 3 || (v13 = v0[3], (v12)(ObjectType, v0[4]) == 4))
  {
    lazy protocol witness table accessor for type ActionableCallControlFlow.ActionableCallControlFlowError and conformance ActionableCallControlFlow.ActionableCallControlFlowError();
    OUTLINED_FUNCTION_3_46();
    OUTLINED_FUNCTION_2_56();
    *(v14 + 24) = &type metadata for ActionableCallControlFlow.UnsupportedHoldActionReason;
    *(ObjectType + 32) = lazy protocol witness table accessor for type ActionableCallControlFlow.UnsupportedHoldActionReason and conformance ActionableCallControlFlow.UnsupportedHoldActionReason();
    *ObjectType = 2;
LABEL_12:
    v6 = 1;
    goto LABEL_13;
  }

  v17 = v0[3];
  if (((*(v0[4] + 192))(ObjectType) & 1) == 0)
  {
    lazy protocol witness table accessor for type ActionableCallControlFlow.ActionableCallControlFlowError and conformance ActionableCallControlFlow.ActionableCallControlFlowError();
    OUTLINED_FUNCTION_3_46();
    OUTLINED_FUNCTION_2_56();
    *(v28 + 24) = &type metadata for ActionableCallControlFlow.UnsupportedHoldActionReason;
    *(ObjectType + 32) = lazy protocol witness table accessor for type ActionableCallControlFlow.UnsupportedHoldActionReason and conformance ActionableCallControlFlow.UnsupportedHoldActionReason();
    *ObjectType = 0;
    goto LABEL_12;
  }

  v18 = v0[3];
  v19 = (v12)(ObjectType, v0[4]);
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2();
  }

  v20 = type metadata accessor for Logger();
  __swift_project_value_buffer(v20, static Logger.siriPhone);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 67109120;
    *(v23 + 4) = v19 == 2;
    _os_log_impl(&dword_0, v21, v22, "#HoldControlFlow isHeld = %{BOOL}d", v23, 8u);
    OUTLINED_FUNCTION_26_0();
  }

  v24 = PhoneCallControlAction.rawValue.getter(v1);
  if (v19 != 2)
  {
    if (v24 == 0x6F48656C62616E65 && v25 == 0xEA0000000000646CLL)
    {
    }

    else
    {
      v30 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v30 & 1) == 0)
      {
        goto LABEL_35;
      }
    }

    v42 = v0[3];
    (*(v0[4] + 200))(ObjectType);
    goto LABEL_48;
  }

  if (v24 != 0x48656C6261736964 || v25 != 0xEB00000000646C6FLL)
  {
    v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v27)
    {
      goto LABEL_45;
    }

LABEL_35:
    v31 = v0[5];

    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v58[0] = swift_slowAlloc();
      *v34 = 136315394;
      if (v19 == 2)
      {
        v35 = 0x646C6F68206E6FLL;
      }

      else
      {
        v35 = 0x646C6F682066666FLL;
      }

      if (v19 == 2)
      {
        v36 = 0xE700000000000000;
      }

      else
      {
        v36 = 0xE800000000000000;
      }

      v56 = v33;
      v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v36, v58);

      *(v34 + 4) = v37;
      *(v34 + 12) = 2080;
      v38 = PhoneCallControlAction.description.getter(v1);
      v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, v39, v58);

      *(v34 + 14) = v40;
      _os_log_impl(&dword_0, v32, v56, "#HoldControlFlow not changing hold status because call is %s and action is %s", v34, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_26_0();
      OUTLINED_FUNCTION_26_0();
    }

    goto LABEL_48;
  }

LABEL_45:
  v41 = v0[3];
  (*(v0[4] + 208))(ObjectType);
LABEL_48:
  v43 = v0[3];
  swift_unknownObjectRetain();
  v44 = Logger.logObject.getter();
  v45 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v44, v45))
  {
    v47 = v0[3];
    v46 = v0[4];
    v48 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    v58[0] = v57;
    *v48 = 136315138;
    (v12)(ObjectType, v46);
    v49 = TUStringForCallStatus();
    result = swift_unknownObjectRelease();
    if (!v49)
    {
      __break(1u);
      return result;
    }

    v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v52 = v51;

    v53 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v50, v52, v58);

    *(v48 + 4) = v53;
    _os_log_impl(&dword_0, v44, v45, "#HoldControlFlow: After applying action, callStatus=%s", v48, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v57);
    OUTLINED_FUNCTION_26_0();
    OUTLINED_FUNCTION_26_0();
  }

  else
  {
    v54 = v0[3];

    swift_unknownObjectRelease();
  }

  v55 = v0[2];
  *v55 = 0;
  *(v55 + 8) = 0;
  *(v55 + 16) = 0;
  *(v55 + 24) = xmmword_42D060;
  v15 = v0[1];
LABEL_14:

  return v15();
}