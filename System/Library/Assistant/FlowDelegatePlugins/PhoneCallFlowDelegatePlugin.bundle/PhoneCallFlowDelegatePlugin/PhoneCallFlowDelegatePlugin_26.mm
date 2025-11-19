uint64_t PhoneCallFlow.execute()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_135();
  v15 = *(v14 + 2344);
  v16 = *(v14 + 2256);
  v17 = *(v14 + 2224);
  v18 = *(v14 + 2216);

  *(v14 + 2088) = *(v14 + 216);
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v14 + 2088, &_sShySSGMd, &_sShySSGMR);
  *(v14 + 1920) = *(v14 + 224);
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v14 + 1920, &_sSSSgMd, &_sSSSgMR);
  *(v14 + 2096) = *(v14 + 248);
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v14 + 2096, &_sShySSGMd, &_sShySSGMR);
  __swift_destroy_boxed_opaque_existential_1((v14 + 976));
  v19 = *(v17 + 8);
  v20 = OUTLINED_FUNCTION_0();
  v21(v20);
  OUTLINED_FUNCTION_2_77();
  v33 = v23;
  v34 = v22;

  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_15_11();

  return v25(v24, v25, v26, v27, v28, v29, v30, v31, a9, v33, v34, a12, a13, a14);
}

{
  OUTLINED_FUNCTION_135();
  v15 = *(v14 + 2240);
  v16 = *(v14 + 2224);
  v17 = *(v14 + 2216);
  v18 = *(v14 + 2136);
  if (*(v14 + 2368))
  {
    v19 = (v14 + 1856);
    v20 = (v14 + 2016);
    v21 = (v14 + 2040);
    v22 = *(v14 + 2368);
    static ExecuteResponse.complete(next:)();
  }

  else
  {
    v19 = (v14 + 1872);
    v20 = (v14 + 2048);
    v21 = (v14 + 2056);
    static ExecuteResponse.complete()();
  }

  v23 = *(v14 + 160);

  *v20 = *(v14 + 168);
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v20, &_sShySSGMd, &_sShySSGMR);
  *v19 = *(v14 + 176);
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v19, &_sSSSgMd, &_sSSSgMR);
  *v21 = *(v14 + 200);
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v21, &_sShySSGMd, &_sShySSGMR);
  __swift_destroy_boxed_opaque_existential_1((v14 + 936));
  v24 = *(v16 + 8);
  v25 = OUTLINED_FUNCTION_0();
  v26(v25);
  OUTLINED_FUNCTION_2_77();
  v38 = v28;
  v39 = v27;

  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_15_11();

  return v30(v29, v30, v31, v32, v33, v34, v35, v36, a9, v38, v39, a12, a13, a14);
}

void *static PhoneCallFlow.buildIntentTypeSequence(intentTypeName:)(uint64_t a1, void *a2)
{
  v35 = _swiftEmptyArrayStorage;

  v4._countAndFlagsBits = a1;
  v4._object = a2;
  value = PhoneCallIntentClassNames.init(intentClassName:)(v4).value;
  if ((value - 4) < 2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_424FF0;
    if (one-time initialization token for emptyStartCallIntent != -1)
    {
      swift_once();
    }

    v7 = [static PhoneCallIntentClassNames.emptyStartCallIntent _className];
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;

    *(inited + 32) = v8;
    *(inited + 40) = v10;
    if (one-time initialization token for emptyStartAudioCallIntent != -1)
    {
      swift_once();
    }

    v11 = [static PhoneCallIntentClassNames.emptyStartAudioCallIntent _className];
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    *(inited + 48) = v12;
    *(inited + 56) = v14;
LABEL_13:
    specialized Array.append<A>(contentsOf:)(inited);
    return v35;
  }

  if (value == 6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_426980;
    if (one-time initialization token for emptyStartCallIntent != -1)
    {
      swift_once();
    }

    v15 = [static PhoneCallIntentClassNames.emptyStartCallIntent _className];
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;

    *(inited + 32) = v16;
    *(inited + 40) = v18;
    v19 = PhoneCallIntentClassNames.intentInstance.getter(6);
    v20 = [v19 _className];

    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v22;

    *(inited + 48) = v21;
    *(inited + 56) = v23;
    if (one-time initialization token for emptyStartAudioCallIntent != -1)
    {
      swift_once();
    }

    v24 = [static PhoneCallIntentClassNames.emptyStartAudioCallIntent _className];
    v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v27 = v26;

    *(inited + 64) = v25;
    *(inited + 72) = v27;
    goto LABEL_13;
  }

  specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  v29 = v28;
  v30 = *(v28 + 16);
  v31 = v30 + 1;
  if (v30 >= *(v28 + 24) >> 1)
  {
    specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    v31 = v30 + 1;
    v29 = v34;
  }

  *(v29 + 16) = v31;
  v32 = v29 + 16 * v30;
  *(v32 + 32) = a1;
  *(v32 + 40) = a2;
  return v29;
}

uint64_t closure #3 in PhoneCallFlow.execute()(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t *a6)
{
  v12 = type metadata accessor for PhoneCallFlow.State(0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v15 = &v35[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (*a1)
  {
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
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_0, v17, v18, "#PhoneCallFlow Failed AppResolution postconditions", v19, 2u);
    }

    swift_storeEnumTagMultiPayload();
    v20 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin13PhoneCallFlow_state;
    swift_beginAccess();
    v21 = a2 + v20;
  }

  else
  {
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
      _os_log_impl(&dword_0, v23, v24, "#PhoneCallFlow Passed AppResolution postconditions, proceed to RCH", v25, 2u);
    }

    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5InputV5input_09PhoneCallC14DelegatePlugin0fG8NLIntent_p05phonegJ0AE0fG16IntentClassNamesO08selectedL4NameAE12AnnotatedAppV08resolvedR0tMd, &_s11SiriKitFlow5InputV5input_09PhoneCallC14DelegatePlugin0fG8NLIntent_p05phonegJ0AE0fG16IntentClassNamesO08selectedL4NameAE12AnnotatedAppV08resolvedR0tMR);
    v27 = v26[12];
    v28 = v26[16];
    v29 = &v15[v26[20]];
    v30 = type metadata accessor for Input();
    (*(*(v30 - 8) + 16))(v15, a3, v30);
    outlined init with copy of SignalProviding(a4, &v15[v27]);
    v15[v28] = a5;
    v31 = *a6;
    v38 = a6[1];
    v32 = *(a6 + 2);
    v37 = *(a6 + 1);
    v36 = a6[5];
    v29[1] = v37;
    v29[2] = v32;
    *v29 = *a6;
    swift_storeEnumTagMultiPayload();
    v33 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin13PhoneCallFlow_state;
    swift_beginAccess();

    outlined init with copy of PhoneCallFlowState<INHangUpCallIntent, INHangUpCallIntentResponse>(&v38, v35, &_sShySSGMd, &_sShySSGMR);
    outlined init with copy of PhoneCallFlowState<INHangUpCallIntent, INHangUpCallIntentResponse>(&v37, v35, &_sSSSgMd, &_sSSSgMR);
    outlined init with copy of PhoneCallFlowState<INHangUpCallIntent, INHangUpCallIntentResponse>(&v36, v35, &_sShySSGMd, &_sShySSGMR);
    v21 = a2 + v33;
  }

  outlined assign with take of PhoneCallFlow.State(v15, v21);
  return swift_endAccess();
}

void PhoneCallFlow.onAppResolutionComplete(originalInput:phoneCallNLIntent:intentType:)()
{
  OUTLINED_FUNCTION_66();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = type metadata accessor for Input();
  OUTLINED_FUNCTION_9_1();
  v11 = v10;
  v13 = *(v12 + 64);
  __chkstk_darwin(v14);
  v15 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v15, v8, v9);
  outlined init with copy of SignalProviding(v6, v21);
  v16 = (*(v11 + 80) + 24) & ~*(v11 + 80);
  v17 = (v13 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  *(v18 + 16) = v0;
  (*(v11 + 32))(v18 + v16, v15, v9);
  outlined init with take of SPHConversation(v21, v18 + v17);
  v19 = (v18 + ((v17 + 47) & 0xFFFFFFFFFFFFFFF8));
  *v19 = v4;
  v19[1] = v2;

  OUTLINED_FUNCTION_65();
}

void PhoneCallFlow.onAppResolutionComplete(input:phoneCallNLIntent:intentType:appResolutionFlowResult:)()
{
  OUTLINED_FUNCTION_66();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v73 = v8;
  v9 = type metadata accessor for PhoneCallFlow.State(0);
  v10 = OUTLINED_FUNCTION_23_1(v9);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  OUTLINED_FUNCTION_4();
  v15 = v14 - v13;
  v16 = type metadata accessor for AppResolutionFlowResult();
  OUTLINED_FUNCTION_9_1();
  v18 = v17;
  v20 = *(v19 + 64);
  __chkstk_darwin(v21);
  OUTLINED_FUNCTION_4();
  v24 = (v23 - v22);
  v25 = *(v18 + 16);
  v26 = OUTLINED_FUNCTION_33_4();
  v27(v26);
  if ((*(v18 + 88))(v24, v16) == enum case for AppResolutionFlowResult.resolved(_:))
  {
    v71 = v7;
    v72 = v3;
    (*(v18 + 96))(v24, v16);
    v28 = *v24;
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2();
    }

    v29 = type metadata accessor for Logger();
    __swift_project_value_buffer(v29, static Logger.siriPhone);
    OUTLINED_FUNCTION_19_7();

    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v30, v31))
    {
      OUTLINED_FUNCTION_42();
      v32 = OUTLINED_FUNCTION_44_12();
      v75[0] = v32;
      *v5 = 136315138;
      v74[0] = v28;
      v33 = type metadata accessor for App();
      OUTLINED_FUNCTION_14_43();
      lazy protocol witness table accessor for type PhoneCallFlow and conformance PhoneCallFlow(v34, v35);
      v36 = dispatch thunk of CustomStringConvertible.description.getter();
      getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v37, v75);
      OUTLINED_FUNCTION_34_0();

      *(v5 + 4) = v33;
      _os_log_impl(&dword_0, v30, v31, "#PhoneCallFlow: resolved app: %s", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v32);
      OUTLINED_FUNCTION_26_0();
      OUTLINED_FUNCTION_26_0();
    }

    v38 = v1[11];
    __swift_project_boxed_opaque_existential_1(v1 + 7, v1[10]);
    v39 = *(v38 + 152);
    v40 = OUTLINED_FUNCTION_61();
    v41(v40, v38);
    v42 = v74[4];
    __swift_project_boxed_opaque_existential_1(v74, v74[3]);
    v43 = App.appIdentifier.getter();
    (*(v42 + 16))(v75, v43);

    v44 = v75[0];
    if (v75[0])
    {
      v45 = v75[1];
      v46 = v78;
      v70 = v77;
      v79 = v76;
      __swift_destroy_boxed_opaque_existential_1(v74);
      v68 = v45;
      v80 = v45;
      v81 = v76;
      v69 = v46;
      v82[0] = v46;

      outlined init with copy of PhoneCallFlowState<INHangUpCallIntent, INHangUpCallIntentResponse>(&v80, v74, &_sShySSGMd, &_sShySSGMR);
      outlined init with copy of PhoneCallFlowState<INHangUpCallIntent, INHangUpCallIntentResponse>(&v81, v74, &_sSSSgMd, &_sSSSgMR);
      outlined init with copy of PhoneCallFlowState<INHangUpCallIntent, INHangUpCallIntentResponse>(v82, v74, &_sShySSGMd, &_sShySSGMR);
      v47 = Logger.logObject.getter();
      v48 = static os_log_type_t.debug.getter();

      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(&v80, &_sShySSGMd, &_sShySSGMR);
      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(&v81, &_sSSSgMd, &_sSSSgMR);
      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v82, &_sShySSGMd, &_sShySSGMR);
      if (os_log_type_enabled(v47, v48))
      {
        OUTLINED_FUNCTION_42();
        v49 = OUTLINED_FUNCTION_44_12();
        v74[0] = v49;
        _sSSSgMd = 136315138;
        v50 = type metadata accessor for App();
        OUTLINED_FUNCTION_14_43();
        lazy protocol witness table accessor for type PhoneCallFlow and conformance PhoneCallFlow(v51, v52);
        v53 = dispatch thunk of CustomStringConvertible.description.getter();
        getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v53, v54, v74);
        OUTLINED_FUNCTION_34_0();

        *algn_5508E4 = v50;
        OUTLINED_FUNCTION_62_13(&dword_0, v55, v56, "#PhoneCallFlow: Using cached annotated app: %s");
        __swift_destroy_boxed_opaque_existential_1(v49);
        OUTLINED_FUNCTION_26_0();
        OUTLINED_FUNCTION_26_0();
      }

      v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5InputV5input_09PhoneCallC14DelegatePlugin0fG8NLIntent_p05phonegJ0SS10intentTypeAE12AnnotatedAppV08resolvedO0tMd, &_s11SiriKitFlow5InputV5input_09PhoneCallC14DelegatePlugin0fG8NLIntent_p05phonegJ0SS10intentTypeAE12AnnotatedAppV08resolvedO0tMR);
      v58 = v57[12];
      v59 = (v15 + v57[16]);
      v60 = v15 + v57[20];
      v61 = type metadata accessor for Input();
      OUTLINED_FUNCTION_23_1(v61);
      (*(v62 + 16))(v15, v73);
      outlined init with copy of SignalProviding(v71, v15 + v58);
      *v59 = v5;
      v59[1] = v72;
      *v60 = v44;
      *(v60 + 8) = v68;
      *(v60 + 16) = v79;
      *(v60 + 32) = v70;
      *(v60 + 40) = v69;
      swift_storeEnumTagMultiPayload();
      v63 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin13PhoneCallFlow_state;
      OUTLINED_FUNCTION_61_13();
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1(v74);
      v65 = Logger.logObject.getter();
      v66 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v65, v66))
      {
        v67 = OUTLINED_FUNCTION_65_0();
        *v67 = 0;
        _os_log_impl(&dword_0, v65, v66, "#PhoneCallFlow onAppResolutionComplete: can't find appId in the cache, return complete", v67, 2u);
        OUTLINED_FUNCTION_26_0();
      }

      swift_storeEnumTagMultiPayload();
      v63 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin13PhoneCallFlow_state;
      OUTLINED_FUNCTION_61_13();
    }

    outlined assign with take of PhoneCallFlow.State(v15, v1 + v63);
    swift_endAccess();
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    v64 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin13PhoneCallFlow_state;
    swift_beginAccess();
    outlined assign with take of PhoneCallFlow.State(v15, v1 + v64);
    swift_endAccess();
    (*(v18 + 8))(v24, v16);
  }

  OUTLINED_FUNCTION_65();
}

uint64_t PhoneCallFlow.publishUnsupportedOutput(unsupportedReason:input:intentName:app:)(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5)
{
  *(v6 + 616) = v5;
  *(v6 + 608) = a5;
  *(v6 + 688) = a2;
  *(v6 + 600) = a1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow25DucTemplatingLocalContextVSgMd, &_s11SiriKitFlow25DucTemplatingLocalContextVSgMR);
  OUTLINED_FUNCTION_21(v10);
  v12 = *(v11 + 64);
  *(v6 + 624) = OUTLINED_FUNCTION_45();
  v13 = type metadata accessor for Locale();
  *(v6 + 632) = v13;
  OUTLINED_FUNCTION_13_2(v13);
  *(v6 + 640) = v14;
  v16 = *(v15 + 64);
  *(v6 + 648) = OUTLINED_FUNCTION_45();
  v17 = type metadata accessor for DialogPhase();
  OUTLINED_FUNCTION_21(v17);
  v19 = *(v18 + 64);
  *(v6 + 656) = OUTLINED_FUNCTION_45();
  v20 = type metadata accessor for CATOption();
  OUTLINED_FUNCTION_21(v20);
  v22 = *(v21 + 64);
  *(v6 + 664) = OUTLINED_FUNCTION_45();
  v23 = swift_task_alloc();
  *(v6 + 672) = v23;
  *v23 = v6;
  v23[1] = PhoneCallFlow.publishUnsupportedOutput(unsupportedReason:input:intentName:app:);

  return static PhoneCallRequestSupportPolicy.getSiriKitIntent(forIntent:input:app:sharedGlobals:)(a4, a3, a5, v5 + 56);
}

uint64_t PhoneCallFlow.publishUnsupportedOutput(unsupportedReason:input:intentName:app:)()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_13_1();
  *v2 = v1;
  v4 = *(v3 + 672);
  *v2 = *v0;
  *(v1 + 680) = v5;

  v6 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v6, v7, v8);
}

{
  v74 = v0;
  v1 = *(v0 + 680);
  v65 = v1;
  v2 = *(v0 + 664);
  v3 = *(v0 + 656);
  v72 = *(v0 + 648);
  v61 = *(v0 + 640);
  v62 = *(v0 + 632);
  v64 = *(v0 + 624);
  v66 = *(v0 + 616);
  v57 = *(v0 + 608);
  v59 = *(v0 + 688);
  v68 = *(v0 + 600);
  outlined init with copy of SignalProviding((v66 + 7), v0 + 64);
  type metadata accessor for UnsupportedFlowCATs();
  v67 = v1;
  static CATOption.defaultMode.getter();
  OUTLINED_FUNCTION_49_5();
  v71 = CATWrapper.__allocating_init(options:globals:)();
  type metadata accessor for SearchCallHistoryCATs();
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_49_5();
  v69 = CATWrapper.__allocating_init(options:globals:)();
  type metadata accessor for UnsupportedFlowCATsSimple();
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_49_5();
  v70 = CATWrapperSimple.__allocating_init(options:globals:)();
  v4 = type metadata accessor for ResponseFactory();
  OUTLINED_FUNCTION_41_1(v4);
  v5 = ResponseFactory.init()();
  v56 = type metadata accessor for AppInfoBuilder();
  v6 = OUTLINED_FUNCTION_79();
  type metadata accessor for PhoneCallDisplayTextCATsSimple();
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_49_5();
  v63 = CATWrapperSimple.__allocating_init(options:globals:)();
  v7 = type metadata accessor for UnsupportedCallFlowOutputFactory();
  v8 = OUTLINED_FUNCTION_41_1(v7);
  *(v0 + 128) = v4;
  *(v0 + 136) = &protocol witness table for ResponseFactory;
  *(v0 + 104) = v5;
  *(v0 + 168) = &type metadata for LabelTemplatesProvider;
  *(v0 + 176) = &protocol witness table for LabelTemplatesProvider;
  v9 = swift_allocObject();
  *(v0 + 144) = v9;
  *(v9 + 16) = 0u;
  *(v9 + 32) = 0u;
  *(v0 + 208) = v56;
  *(v0 + 216) = &protocol witness table for AppInfoBuilder;
  *(v0 + 184) = v6;

  static DialogPhase.completion.getter();
  OutputGenerationManifest.init(dialogPhase:_:)();
  *(v8 + 24) = v59;
  *(v8 + 32) = v71;
  *(v8 + 40) = v70;
  *(v8 + 16) = v69;
  v60 = v8;
  outlined init with copy of SignalProviding(v0 + 104, v8 + 48);
  outlined init with copy of SignalProviding(v0 + 64, v8 + 88);
  *(v8 + 128) = v57;
  outlined init with copy of SignalProviding(v0 + 64, v0 + 264);
  outlined init with copy of SignalProviding(v0 + 144, v0 + 304);
  type metadata accessor for PhoneCallDisplayTextCATs();
  OUTLINED_FUNCTION_19_7();

  static CATOption.defaultMode.getter();
  OUTLINED_FUNCTION_49_5();
  v10 = CATWrapper.__allocating_init(options:globals:)();
  type metadata accessor for PhoneCallCommonCATs();
  OUTLINED_FUNCTION_99();
  v11 = CATWrapper.__allocating_init(options:globals:)();
  v12 = OUTLINED_FUNCTION_79();
  type metadata accessor for StartCallCATs();
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_49_5();
  v13 = CATWrapper.__allocating_init(options:globals:)();
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0aB24BaseCatTemplatingServiceCySo8INIntentCSo0J8ResponseCGMd, &_s27PhoneCallFlowDelegatePlugin0aB24BaseCatTemplatingServiceCySo8INIntentCSo0J8ResponseCGMR);
  v14 = OUTLINED_FUNCTION_41_1(v58);
  *(v0 + 368) = v56;
  *(v0 + 376) = &protocol witness table for AppInfoBuilder;
  *(v0 + 344) = v12;
  v15 = (v14 + *(*v14 + class metadata base offset for PhoneCallBaseCatTemplatingService + 16));
  *v15 = 0x3D65737561705C1BLL;
  v15[1] = 0xEC0000005C303532;
  v16 = OUTLINED_FUNCTION_40_9(v14);
  v19 = v16 + *(v18 + v17 + 56);
  *v19 = 0u;
  *(v19 + 1) = 0u;
  *(v19 + 4) = 0;
  OUTLINED_FUNCTION_40_9(v16);
  outlined init with copy of SignalProviding(v0 + 264, v14 + *(v21 + v20 + 72));
  v22 = *(v0 + 288);
  v23 = *(v0 + 296);
  __swift_project_boxed_opaque_existential_1((v0 + 264), v22);
  (*(v23 + 8))(v22, v23);
  OUTLINED_FUNCTION_70_0();
  v25 = *(v24 + class metadata base offset for PhoneCallBaseCatTemplatingService + 40);
  outlined init with take of SPHConversation((v0 + 384), v14 + v25);
  OUTLINED_FUNCTION_70_0();
  *(v14 + *(v26 + class metadata base offset for PhoneCallBaseCatTemplatingService + 24)) = v10;
  OUTLINED_FUNCTION_70_0();
  *(v14 + *(v28 + v27 + 32)) = v11;
  OUTLINED_FUNCTION_70_0();
  outlined init with copy of SignalProviding(v0 + 344, v14 + *(v30 + v29 + 48));
  OUTLINED_FUNCTION_70_0();
  outlined init with copy of SignalProviding(v0 + 304, v14 + *(v31 + class metadata base offset for PhoneCallBaseCatTemplatingService + 64));
  OUTLINED_FUNCTION_70_0();
  *(v14 + *(v32 + class metadata base offset for PhoneCallBaseCatTemplatingService + 80)) = v13;
  outlined init with copy of SignalProviding(v14 + v25, v0 + 424);
  v33 = *(v0 + 456);
  __swift_project_boxed_opaque_existential_1((v0 + 424), *(v0 + 448));
  OUTLINED_FUNCTION_5();

  dispatch thunk of DeviceState.siriLocale.getter();
  *(v0 + 544) = Locale.identifier.getter();
  *(v0 + 552) = v34;
  *(v0 + 560) = 45;
  *(v0 + 568) = 0xE100000000000000;
  *(v0 + 576) = 95;
  *(v0 + 584) = 0xE100000000000000;
  lazy protocol witness table accessor for type String and conformance String();
  StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  (*(v61 + 8))(v72, v62);

  type metadata accessor for INIntentSlotValueType(0);
  lazy protocol witness table accessor for type PhoneCallFlow and conformance PhoneCallFlow(&lazy protocol witness table cache variable for type INIntentSlotValueType and conformance INIntentSlotValueType, type metadata accessor for INIntentSlotValueType);
  Dictionary.init(dictionaryLiteral:)();
  v36 = *(v0 + 288);
  v35 = *(v0 + 296);
  __swift_project_boxed_opaque_existential_1((v0 + 264), v36);
  (*(v35 + 24))(v73, v36, v35);
  outlined init with copy of SignalProviding(v14 + v25, v0 + 464);
  v37 = type metadata accessor for DucTemplatingLocalContext();
  __swift_storeEnumTagSinglePayload(v64, 1, 1, v37);
  DucTemplatingService.init(ducFamily:locale:extensionValueTypeNamesByValueType:aceServiceInvoker:deviceState:localContext:)();
  OUTLINED_FUNCTION_19_7();

  __swift_destroy_boxed_opaque_existential_1((v0 + 304));
  __swift_destroy_boxed_opaque_existential_1((v0 + 344));
  __swift_destroy_boxed_opaque_existential_1((v0 + 424));
  __swift_destroy_boxed_opaque_existential_1((v0 + 264));
  *(v0 + 248) = v58;
  *(v0 + 256) = &protocol witness table for PhoneCallBaseCatTemplatingService<A, B>;

  *(v0 + 224) = v14;
  __swift_destroy_boxed_opaque_existential_1((v0 + 64));
  __swift_destroy_boxed_opaque_existential_1((v0 + 144));
  __swift_destroy_boxed_opaque_existential_1((v0 + 104));
  outlined init with take of SPHConversation((v0 + 224), v60 + 136);
  *(v60 + 176) = v65;
  outlined init with take of SPHConversation((v0 + 184), v60 + 192);
  *(v60 + 184) = v63;
  v38 = v66[10];
  v39 = v66[11];
  OUTLINED_FUNCTION_8_52(v66 + 7);
  v41 = *(v40 + 16);
  v42 = OUTLINED_FUNCTION_4_3();
  v43(v42);
  v44 = *(v0 + 40);
  v45 = *(v0 + 56);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v44);
  *(v0 + 528) = v44;
  *(v0 + 536) = v45;
  __swift_allocate_boxed_opaque_existential_1((v0 + 504));
  v46 = *(*(v44 - 8) + 16);
  OUTLINED_FUNCTION_28_2();
  v51(v47, v48, v49, v50);
  v52 = type metadata accessor for SimpleOutputFlowAsync();
  OUTLINED_FUNCTION_41_1(v52);

  v53 = SimpleOutputFlowAsync.init(outputPublisher:outputGenerator:)();
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  *(v0 + 592) = v53;
  static ExecuteResponse.complete<A>(next:)();

  OUTLINED_FUNCTION_11();

  return v54();
}

uint64_t closure #1 in PhoneCallFlow.publishUnsupportedOutput(unsupportedReason:input:intentName:app:)(uint64_t a1, uint64_t a2)
{
  v4 = *(*a2 + 224);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = closure #2 in ActionableCallControlFlow.execute();

  return v8(a1);
}

uint64_t PhoneCallFlow.chooseRCHFlow(input:phoneCallNLIntent:intentName:resolvedApp:)()
{
  OUTLINED_FUNCTION_15();
  *(v1 + 136) = v2;
  *(v1 + 144) = v0;
  *(v1 + 216) = v3;
  *(v1 + 120) = v4;
  *(v1 + 128) = v5;
  v6 = type metadata accessor for CATOption();
  OUTLINED_FUNCTION_21(v6);
  v8 = *(v7 + 64);
  *(v1 + 152) = OUTLINED_FUNCTION_45();
  v9 = type metadata accessor for Parse();
  *(v1 + 160) = v9;
  OUTLINED_FUNCTION_13_2(v9);
  *(v1 + 168) = v10;
  v12 = *(v11 + 64) + 15;
  *(v1 + 176) = swift_task_alloc();
  *(v1 + 184) = swift_task_alloc();
  v13 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v13, v14, v15);
}

{
  v1 = *(v0 + 184);
  v2 = *(v0 + 160);
  v3 = *(v0 + 168);
  v4 = *(v0 + 120);
  Input.parse.getter();
  v5 = *(v3 + 88);
  v6 = OUTLINED_FUNCTION_55();
  v8 = v7(v6);
  if (v8 != enum case for Parse.NLv3IntentOnly(_:))
  {
    v19 = v8;
    v20 = enum case for Parse.NLv4IntentOnly(_:);
    v21 = enum case for Parse.uso(_:);
    v22 = enum case for Parse.ifClientAction(_:);
    v23 = *(*(v0 + 168) + 8);
    (v23)(*(v0 + 184), *(v0 + 160));
    if (v19 == v20 || v19 == v21 || v19 == v22)
    {
      v26 = *(v0 + 176);
      v27 = *(v0 + 160);
      v29 = *(v0 + 136);
      v28 = *(v0 + 144);
      v30 = *(v0 + 120);
      v31 = *(v0 + 128);
      v32 = *(v0 + 216);
      Input.parse.getter();
      static PhoneCallRequestSupportPolicy.getFlowFromParse(parse:intentTypeName:resolvedApp:phoneCallNLIntent:sharedGlobals:)(v26, v32, *v29, v31, (v28 + 56));
      v33 = OUTLINED_FUNCTION_4_3();
      v23(v33);
    }

    v35 = *(v0 + 176);
    v34 = *(v0 + 184);
    v36 = *(v0 + 152);

    OUTLINED_FUNCTION_17_5();
    OUTLINED_FUNCTION_16();

    __asm { BRAA            X2, X16 }
  }

  v9 = *(v0 + 144);
  *(v0 + 192) = **(v0 + 136);
  v10 = swift_task_alloc();
  *(v0 + 200) = v10;
  *v10 = v0;
  v10[1] = PhoneCallFlow.chooseRCHFlow(input:phoneCallNLIntent:intentName:resolvedApp:);
  v11 = *(v0 + 120);
  v12 = *(v0 + 216);
  OUTLINED_FUNCTION_16();

  return static PhoneCallRequestSupportPolicy.getSiriKitIntent(forIntent:input:app:sharedGlobals:)(v13, v14, v15, v16);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_13_1();
  *v2 = v1;
  v4 = *(v3 + 200);
  *v2 = *v0;
  *(v1 + 208) = v5;

  v6 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v6, v7, v8);
}

void PhoneCallFlow.chooseRCHFlow(input:phoneCallNLIntent:intentName:resolvedApp:)()
{
  v2 = *(v0 + 208);
  if (v2)
  {
    v3 = *(v0 + 192);
    v4 = *(v0 + 144);
    v5 = v2;
    static PhoneCallFlowFactory.makeRCHFlow(app:intent:sharedGlobals:)();
    if (v6)
    {
      v7 = v6;
      v8 = *(v0 + 144);
      v9 = *(v0 + 120);
      v10 = *(v0 + 128);

      dispatch thunk of AnyFlow.on(input:)();

      outlined init with copy of SignalProviding(v10, v0 + 16);
      LOBYTE(v9) = static PhoneCallRequestSupportPolicy.isHomePodPersonalRequest(intent:sharedGlobals:nlIntent:)(v5, (v8 + 56), v0 + 16);
      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v0 + 16, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMR);
      if (v9)
      {
        v11 = *(v0 + 184);
        v12 = *(v0 + 160);
        v13 = *(v0 + 168);
        outlined init with copy of SignalProviding(*(v0 + 144) + 56, v0 + 56);
        type metadata accessor for PhoneCallActivityNotificationFlow();
        swift_allocObject();
        OUTLINED_FUNCTION_40_0();

        *(v0 + 112) = PhoneCallActivityNotificationFlow.init(_:sharedGlobals:)(v14, (v0 + 56));
        lazy protocol witness table accessor for type PhoneCallFlow and conformance PhoneCallFlow(&lazy protocol witness table cache variable for type PhoneCallActivityNotificationFlow and conformance PhoneCallActivityNotificationFlow, type metadata accessor for PhoneCallActivityNotificationFlow);
        Flow.eraseToAnyFlow()();

        v15 = *(v13 + 8);
        v16 = OUTLINED_FUNCTION_33_4();
        v17(v16);
      }

      else
      {
        if (one-time initialization token for siriPhone != -1)
        {
          OUTLINED_FUNCTION_6_2();
        }

        v27 = type metadata accessor for Logger();
        __swift_project_value_buffer(v27, static Logger.siriPhone);

        v28 = Logger.logObject.getter();
        v29 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v28, v29))
        {
          OUTLINED_FUNCTION_42();
          v30 = OUTLINED_FUNCTION_44_12();
          v52 = v30;
          *v1 = 136315138;
          *(v0 + 104) = v7;
          type metadata accessor for AnyFlow();
          lazy protocol witness table accessor for type PhoneCallFlow and conformance PhoneCallFlow(&lazy protocol witness table cache variable for type AnyFlow and conformance AnyFlow, &type metadata accessor for AnyFlow);
          v31 = dispatch thunk of CustomStringConvertible.description.getter();
          v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v32, &v52);

          *(v1 + 4) = v33;
          OUTLINED_FUNCTION_62_13(&dword_0, v34, v35, "#PhoneCallFlow .appResolutionComplete, returning flow: %s");
          __swift_destroy_boxed_opaque_existential_1(v30);
          OUTLINED_FUNCTION_26_0();
          OUTLINED_FUNCTION_26_0();
        }

        v36 = v5;
        v37 = Logger.logObject.getter();
        v38 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v37, v38))
        {
          v39 = OUTLINED_FUNCTION_42();
          v40 = swift_slowAlloc();
          v52 = v40;
          *v39 = 136315138;
          v41 = v36;
          v42 = [v41 description];
          v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v45 = v44;

          v46 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v43, v45, &v52);

          *(v39 + 4) = v46;
          _os_log_impl(&dword_0, v37, v38, "#PhoneCallFlow .appResolutionComplete, for intent: %s", v39, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v40);
          OUTLINED_FUNCTION_26_0();
          OUTLINED_FUNCTION_26_0();
        }

        else
        {
        }

        (*(*(v0 + 168) + 8))(*(v0 + 184), *(v0 + 160));
      }

LABEL_15:
      v48 = *(v0 + 176);
      v47 = *(v0 + 184);
      v49 = *(v0 + 152);

      OUTLINED_FUNCTION_17_5();
      OUTLINED_FUNCTION_16();

      __asm { BRAA            X2, X16 }
    }
  }

  v18 = *(v0 + 184);
  v19 = *(v0 + 160);
  v20 = *(v0 + 168);
  v22 = *(v0 + 144);
  v21 = *(v0 + 152);
  type metadata accessor for StartCallCATsSimple();
  static CATOption.defaultMode.getter();
  v23 = CATWrapperSimple.__allocating_init(options:globals:)();
  v24 = static CommonOutputs.genericError(sharedGlobals:startCallCATsSimple:)((v22 + 56), v23);

  v26 = (*(*v24 + 112))(v25);

  *(v0 + 96) = v26;
  type metadata accessor for SimpleOutputFlowAsync();
  Flow.eraseToAnyFlow()();

  (*(v20 + 8))(v18, v19);
  goto LABEL_15;
}

void PhoneCallFlow.selfLogging(input:phoneCallNLIntent:intentTypeName:resolvedApp:)()
{
  OUTLINED_FUNCTION_66();
  v3 = v2;
  v33 = v4;
  v34 = v5;
  v7 = v6;
  v9 = v8;
  type metadata accessor for Input();
  OUTLINED_FUNCTION_51_17();
  v32[0] = v10;
  OUTLINED_FUNCTION_9_1();
  v12 = v11;
  v14 = *(v13 + 64);
  __chkstk_darwin(v15);
  v16 = v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v18 = OUTLINED_FUNCTION_21(v17);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v22 = v32 - v21;
  static TaskPriority.utility.getter();
  v23 = type metadata accessor for TaskPriority();
  __swift_storeEnumTagSinglePayload(v22, 0, 1, v23);
  (*(v12 + 16))(v16, v9, v0);
  v24 = *(v3 + 8);
  v32[1] = *v3;
  v38 = v24;
  v37 = *(v3 + 16);
  v36 = *(v3 + 40);
  outlined init with copy of SignalProviding(v7, v35);
  v25 = (*(v12 + 80) + 56) & ~*(v12 + 80);
  v26 = (v14 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
  v27 = swift_allocObject();
  *(v27 + 2) = 0;
  *(v27 + 3) = 0;
  v28 = v33;
  v29 = v34;
  *(v27 + 4) = v1;
  *(v27 + 5) = v28;
  *(v27 + 6) = v29;
  (*(v12 + 32))(&v27[v25], v16, v32[0]);
  v30 = &v27[v26];
  v31 = *(v3 + 16);
  *v30 = *v3;
  *(v30 + 1) = v31;
  *(v30 + 2) = *(v3 + 32);
  outlined init with take of SPHConversation(v35, &v27[(v26 + 55) & 0xFFFFFFFFFFFFFFF8]);

  outlined init with copy of PhoneCallFlowState<INHangUpCallIntent, INHangUpCallIntentResponse>(&v38, v35, &_sShySSGMd, &_sShySSGMR);
  outlined init with copy of PhoneCallFlowState<INHangUpCallIntent, INHangUpCallIntentResponse>(&v37, v35, &_sSSSgMd, &_sSSSgMR);
  outlined init with copy of PhoneCallFlowState<INHangUpCallIntent, INHangUpCallIntentResponse>(&v36, v35, &_sShySSGMd, &_sShySSGMR);
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5();
  OUTLINED_FUNCTION_65();
}

uint64_t closure #1 in PhoneCallFlow.selfLogging(input:phoneCallNLIntent:intentTypeName:resolvedApp:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[47] = a8;
  v8[48] = v21;
  v8[45] = a6;
  v8[46] = a7;
  v8[43] = a4;
  v8[44] = a5;
  v9 = type metadata accessor for Parse();
  v8[49] = v9;
  v10 = *(v9 - 8);
  v8[50] = v10;
  v11 = *(v10 + 64) + 15;
  v8[51] = swift_task_alloc();
  v12 = type metadata accessor for TaskFlowType();
  v8[52] = v12;
  v13 = *(v12 - 8);
  v8[53] = v13;
  v14 = *(v13 + 64) + 15;
  v8[54] = swift_task_alloc();
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow04TaskC13ConfigurationVSgMd, &_s11SiriKitFlow04TaskC13ConfigurationVSgMR) - 8) + 64) + 15;
  v8[55] = swift_task_alloc();
  v16 = type metadata accessor for TaskFlowConfiguration();
  v8[56] = v16;
  v17 = *(v16 - 8);
  v8[57] = v17;
  v18 = *(v17 + 64) + 15;
  v8[58] = swift_task_alloc();
  v8[59] = swift_task_alloc();

  return _swift_task_switch(closure #1 in PhoneCallFlow.selfLogging(input:phoneCallNLIntent:intentTypeName:resolvedApp:), 0, 0);
}

uint64_t closure #1 in PhoneCallFlow.selfLogging(input:phoneCallNLIntent:intentTypeName:resolvedApp:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_135();
  v15 = v14[43];
  v16 = v15[16];
  __swift_project_boxed_opaque_existential_1(v15 + 12, v15[15]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  v17 = swift_allocObject();
  v14[60] = v17;
  *(v17 + 16) = xmmword_424FF0;
  v18 = [objc_allocWithZone(INStartCallIntent) init];
  v19 = [v18 _className];

  v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = v21;

  *(v17 + 32) = v20;
  *(v17 + 40) = v22;
  v23 = [objc_allocWithZone(INStartAudioCallIntent) init];
  v24 = [v23 _className];

  v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v27 = v26;

  *(v17 + 48) = v25;
  *(v17 + 56) = v27;
  v28 = *(v16 + 16);
  v40 = v28 + *v28;
  v29 = v28[1];
  v30 = swift_task_alloc();
  v14[61] = v30;
  *v30 = v14;
  v30[1] = closure #1 in PhoneCallFlow.selfLogging(input:phoneCallNLIntent:intentTypeName:resolvedApp:);
  OUTLINED_FUNCTION_15_11();

  return v34(v31, v32, v33, v34, v35, v36, v37, v38, a9, v16 + 16, v40, a12, a13, a14);
}

uint64_t closure #1 in PhoneCallFlow.selfLogging(input:phoneCallNLIntent:intentTypeName:resolvedApp:)()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_13_1();
  *v2 = v1;
  v4 = *(v3 + 488);
  v5 = *(v3 + 480);
  v6 = *v0;
  OUTLINED_FUNCTION_4_2();
  *v7 = v6;
  *(v9 + 496) = v8;

  v10 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v10, v11, v12);
}

{
  v87 = v0;
  v1 = *(v0 + 496);
  v3 = *(v0 + 352);
  v2 = *(v0 + 360);
  v4 = *(v0 + 344);
  v5 = v4[20];
  v6 = v4[21];
  __swift_project_boxed_opaque_existential_1(v4 + 17, v5);
  OUTLINED_FUNCTION_57_13();
  v8 = (*(v7 + 8))(v1, v5, v6);

  v9._countAndFlagsBits = v3;
  v9._object = v2;
  v10.value = PhoneCallIntentClassNames.init(intentClassName:)(v9).value;
  if (v10.value != PhoneCallFlowDelegatePlugin_PhoneCallIntentClassNames_unknownDefault)
  {
    v84 = v8;
    v85 = PhoneCallIntentClassNames.intentInstance.getter(v10.value);
    v11 = _sSo8INIntentC27PhoneCallFlowDelegatePluginE5typed2asxSgxm_tABRbzlFSo07INStartC6IntentC_Ttg5();
    if (v11)
    {
      v12 = *(v0 + 440);
      v13 = *(v0 + 448);
      v15 = *(v0 + 424);
      v14 = *(v0 + 432);
      v16 = *(v0 + 416);
      v18 = *(v0 + 352);
      v17 = *(v0 + 360);

      *v14 = 5;
      (*(v15 + 104))(v14, enum case for TaskFlowType.longDurationTask(_:), v16);

      TaskFlowConfiguration.init(taskName:taskType:)();
      if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
      {
        outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(*(v0 + 440), &_s11SiriKitFlow04TaskC13ConfigurationVSgMd, &_s11SiriKitFlow04TaskC13ConfigurationVSgMR);
      }

      else
      {
        (*(*(v0 + 456) + 32))(*(v0 + 472), *(v0 + 440), *(v0 + 448));
        if (one-time initialization token for siriPhone != -1)
        {
          OUTLINED_FUNCTION_6_2();
        }

        v19 = *(v0 + 360);
        v20 = type metadata accessor for Logger();
        __swift_project_value_buffer(v20, static Logger.siriPhone);
        OUTLINED_FUNCTION_5();

        v21 = Logger.logObject.getter();
        v22 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v21, v22))
        {
          v24 = *(v0 + 352);
          v23 = *(v0 + 360);
          v25 = OUTLINED_FUNCTION_42();
          v26 = swift_slowAlloc();
          v86 = v26;
          *v25 = 136315138;
          *(v25 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v23, &v86);
          _os_log_impl(&dword_0, v21, v22, "#PhoneCallFlow task flow configuration instrumentation with intentTypeName: %s", v25, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v26);
          OUTLINED_FUNCTION_26_0();
          OUTLINED_FUNCTION_26_0();
        }

        v28 = *(v0 + 464);
        v27 = *(v0 + 472);
        v29 = *(v0 + 448);
        v30 = *(v0 + 456);
        v31 = *(v0 + 344);
        v32 = v31[11];
        __swift_project_boxed_opaque_existential_1(v31 + 7, v31[10]);
        v33 = *(v32 + 40);
        v34 = OUTLINED_FUNCTION_19_7();
        v35(v34, v32);
        v36 = *(v0 + 208);
        __swift_project_boxed_opaque_existential_1((v0 + 176), *(v0 + 200));
        type metadata accessor for SiriKitEvent();
        OUTLINED_FUNCTION_40_17();
        (*(v37 + 16))(v28, v27, v29);
        SiriKitEvent.__allocating_init(taskFlowConfiguration:_:)();
        dispatch thunk of SiriKitEventSending.send(_:)();

        v38 = *(v30 + 8);
        v39 = OUTLINED_FUNCTION_55();
        v40(v39);
        __swift_destroy_boxed_opaque_existential_1((v0 + 176));
      }
    }

    v42 = *(v0 + 400);
    v41 = *(v0 + 408);
    v43 = *(v0 + 392);
    v44 = *(v0 + 368);
    Input.parse.getter();
    v45 = *(v42 + 88);
    v46 = OUTLINED_FUNCTION_55();
    v48 = v47(v46);
    v50 = *(v0 + 400);
    v49 = *(v0 + 408);
    v51 = *(v0 + 384);
    v52 = *(v0 + 376);
    v53 = *(v0 + 344);
    if (v48 == enum case for Parse.NLv4IntentOnly(_:) || v48 == enum case for Parse.uso(_:))
    {
      (*(v50 + 8))(*(v0 + 408), *(v0 + 392));
      v55 = v53[10];
      v56 = v53[11];
      OUTLINED_FUNCTION_8_52(v53 + 7);
      v58 = *(v57 + 40);
      v59 = OUTLINED_FUNCTION_4_3();
      v60(v59);
      v82 = *(v0 + 128);
      __swift_project_boxed_opaque_existential_1((v0 + 96), *(v0 + 120));
      type metadata accessor for SiriKitEvent();
      v61 = [v85 typeName];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v62 = *v52;
      *(v0 + 296) = v52[1];
      *(v0 + 232) = *(v52 + 1);
      *(v0 + 304) = v52[5];
      outlined init with copy of SignalProviding(v51, v0 + 136);
      v63 = swift_allocObject();
      OUTLINED_FUNCTION_37_19(v63);
      outlined init with take of SPHConversation((v0 + 136), v51 + 64);
      *(v51 + 104) = v84;
      *(v51 + 112) = v53;

      outlined init with copy of PhoneCallFlowState<INHangUpCallIntent, INHangUpCallIntentResponse>(v0 + 296, v0 + 328, &_sShySSGMd, &_sShySSGMR);
      outlined init with copy of PhoneCallFlowState<INHangUpCallIntent, INHangUpCallIntentResponse>(v0 + 232, v0 + 264, &_sSSSgMd, &_sSSSgMR);
      outlined init with copy of PhoneCallFlowState<INHangUpCallIntent, INHangUpCallIntentResponse>(v0 + 304, v0 + 336, &_sShySSGMd, &_sShySSGMR);

      SiriKitEvent.__allocating_init(stateType:taskType:statusReason:_:)();
      dispatch thunk of SiriKitEventSending.send(_:)();

      __swift_destroy_boxed_opaque_existential_1((v0 + 96));
    }

    else
    {
      v64 = v53[10];
      v65 = v53[11];
      v81 = *(v0 + 408);
      v83 = *(v0 + 392);
      OUTLINED_FUNCTION_8_52(v53 + 7);
      v67 = *(v66 + 40);
      v68 = OUTLINED_FUNCTION_4_3();
      v69(v68);
      v80 = *(v0 + 48);
      __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
      type metadata accessor for SiriKitEvent();
      v70 = [v85 typeName];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v71 = *v52;
      *(v0 + 280) = v52[1];
      *(v0 + 216) = *(v52 + 1);
      *(v0 + 288) = v52[5];
      outlined init with copy of SignalProviding(v51, v0 + 56);
      v72 = swift_allocObject();
      OUTLINED_FUNCTION_37_19(v72);
      outlined init with take of SPHConversation((v0 + 56), v51 + 64);
      *(v51 + 104) = v84;
      *(v51 + 112) = v53;

      outlined init with copy of PhoneCallFlowState<INHangUpCallIntent, INHangUpCallIntentResponse>(v0 + 280, v0 + 312, &_sShySSGMd, &_sShySSGMR);
      outlined init with copy of PhoneCallFlowState<INHangUpCallIntent, INHangUpCallIntentResponse>(v0 + 216, v0 + 248, &_sSSSgMd, &_sSSSgMR);
      outlined init with copy of PhoneCallFlowState<INHangUpCallIntent, INHangUpCallIntentResponse>(v0 + 288, v0 + 320, &_sShySSGMd, &_sShySSGMR);
      OUTLINED_FUNCTION_28_2();
      SiriKitEvent.__allocating_init(stateType:taskType:statusReason:_:)();
      dispatch thunk of SiriKitEventSending.send(_:)();

      __swift_destroy_boxed_opaque_existential_1((v0 + 16));
      (*(v50 + 8))(v81, v83);
    }
  }

  v74 = *(v0 + 464);
  v73 = *(v0 + 472);
  v76 = *(v0 + 432);
  v75 = *(v0 + 440);
  v77 = *(v0 + 408);

  OUTLINED_FUNCTION_11();

  return v78();
}

uint64_t closure #2 in closure #1 in PhoneCallFlow.selfLogging(input:phoneCallNLIntent:intentTypeName:resolvedApp:)(uint64_t *a1, uint64_t *a2, void *a3, uint64_t a4, void *a5, char a6)
{
  v10 = *a1;
  v11 = *a2;

  dispatch thunk of SiriKitEvent.SiriKitEventBuilder.app.setter();
  v12 = a5[10];
  v13 = a5[11];
  __swift_project_boxed_opaque_existential_1(a5 + 7, v12);
  (*(v13 + 120))(v22, v12, v13);
  v14 = v23;
  v15 = v24;
  v16 = __swift_project_boxed_opaque_existential_1(v22, v23);
  v17 = specialized static PhoneDomainContextMetricsUtils.populatePhoneDomainContext(phoneCallNLIntent:contextNLType:app:resolvedSiriKitContacts:callStateProvider:)(a3, a6, v11, _swiftEmptyArrayStorage, v16, v14, v15);
  v18 = v17;
  if (v17)
  {
    v19 = [v17 phoneCallContext];
    if (v19)
    {
      v20 = v19;
      [v19 setUserPersona:a4];
      [v18 setPhoneCallContext:v20];
    }
  }

  __swift_destroy_boxed_opaque_existential_1(v22);
  return dispatch thunk of SiriKitEvent.SiriKitEventBuilder.domainContext.setter();
}

uint64_t *PhoneCallFlow.deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  __swift_destroy_boxed_opaque_existential_1(v0 + 12);
  __swift_destroy_boxed_opaque_existential_1(v0 + 17);
  v1 = v0[22];

  outlined destroy of PhoneCallFlow.State(v0 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin13PhoneCallFlow_state);
  return v0;
}

uint64_t PhoneCallFlow.__deallocating_deinit()
{
  PhoneCallFlow.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t protocol witness for Flow.execute() in conformance PhoneCallFlow(uint64_t a1)
{
  v4 = *(**v1 + 208);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = closure #2 in ActionableCallControlFlow.execute();

  return v8(a1);
}

uint64_t protocol witness for Flow.exitValue.getter in conformance PhoneCallFlow(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for PhoneCallFlow(0);

  return Flow<>.exitValue.getter(v3, a2);
}

uint64_t specialized PhoneAppResolutionHelper.init(sharedGlobals:eligibleAppsFinder:smartAppSelection:phoneAppResolutionLogger:appUsageProvider:appResolver:)(uint64_t *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = type metadata accessor for EligibleAppFinder();
  v51[3] = v14;
  v51[4] = &protocol witness table for EligibleAppFinder;
  v51[0] = a2;
  v15 = (a7 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin24PhoneAppResolutionHelper_logPrefix);
  *v15 = type metadata accessor for PhoneAppResolutionHelper();
  v15[1] = &outlined read-only object #0 of specialized PhoneAppResolutionHelper.init(sharedGlobals:eligibleAppsFinder:smartAppSelection:phoneAppResolutionLogger:appUsageProvider:appResolver:);
  v15[2] = 0;
  v15[3] = 0;
  outlined init with copy of SignalProviding(a1, a7 + 56);
  outlined init with copy of SignalProviding(v51, a7 + 16);
  v16 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin24PhoneAppResolutionHelper_appResolver;
  v17 = type metadata accessor for AppResolver();
  v18 = *(v17 - 8);
  (*(v18 + 16))(&v16[a7], a6, v17);
  *(a7 + 144) = a5;
  if (a3)
  {

    v19 = a3;
  }

  else
  {
    outlined init with copy of SignalProviding(a1, __src);
    objc_opt_self();
    OUTLINED_FUNCTION_61();

    v20 = [v16 clientWithIdentifier:112];
    type metadata accessor for TrialSmartAppSelectionConfigProvider();
    v21 = swift_allocObject();
    *(v21 + 16) = v20;
    type metadata accessor for DiagnosticLogPermission();
    v22 = OUTLINED_FUNCTION_79();
    type metadata accessor for SmartAppSelectionFeatureManager();
    swift_allocObject();
    v19 = SmartAppSelectionFeatureManager.init(sharedGlobals:trialSmartAppSelectionConfigProvider:diagnosticLogPermission:)(__src, v21, v22);
  }

  *(a7 + 96) = v19;
  outlined init with copy of PhoneCallFlowState<INHangUpCallIntent, INHangUpCallIntentResponse>(a4, &v48, &_s27PhoneCallFlowDelegatePlugin0A20AppResolutionLogging_pSgMd, &_s27PhoneCallFlowDelegatePlugin0A20AppResolutionLogging_pSgMR);
  if (v49)
  {

    (*(v18 + 8))(a6, v17);
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(a4, &_s27PhoneCallFlowDelegatePlugin0A20AppResolutionLogging_pSgMd, &_s27PhoneCallFlowDelegatePlugin0A20AppResolutionLogging_pSgMR);
    __swift_destroy_boxed_opaque_existential_1(a1);
    __swift_destroy_boxed_opaque_existential_1(v51);
    outlined init with take of SPHConversation(&v48, __src);
    v23 = __src;
  }

  else
  {
    v38 = a6;
    v39 = a4;

    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(&v48, &_s27PhoneCallFlowDelegatePlugin0A20AppResolutionLogging_pSgMd, &_s27PhoneCallFlowDelegatePlugin0A20AppResolutionLogging_pSgMR);
    v40 = a1;
    outlined init with copy of SignalProviding(a1, v45);
    v24 = [objc_opt_self() sharedAnalytics];
    v37 = [v24 defaultMessageStream];

    if (one-time initialization token for instance != -1)
    {
      OUTLINED_FUNCTION_60_2();
    }

    v43 = v14;
    v44 = &protocol witness table for EligibleAppFinder;
    *&v42 = static EligibleAppFinder.instance;
    v49 = &type metadata for PhoneAppResolutionLogger;
    v50 = &protocol witness table for PhoneAppResolutionLogger;
    OUTLINED_FUNCTION_50_15();
    v25 = swift_allocObject();
    *&v48 = v25;
    v27 = v46;
    v26 = v47;
    __swift_project_boxed_opaque_existential_1(v45, v46);
    v28 = *(v26 + 112);

    if (v28(v27, v26))
    {
      v29 = CurrentRequest.executionRequestId.getter();
      v31 = v30;
    }

    else
    {
      v29 = 0;
      v31 = 0;
    }

    __src[0] = v29;
    __src[1] = v31;
    __src[2] = v37;
    outlined init with copy of SignalProviding(v45, &__src[3]);
    v32 = v47;
    __swift_project_boxed_opaque_existential_1(v45, v46);
    v33 = *(v32 + 216);
    v34 = OUTLINED_FUNCTION_61();
    v35(v34, v32);
    outlined init with take of SPHConversation(&v42, &__src[13]);
    memcpy((v25 + 16), __src, 0x90uLL);

    (*(v18 + 8))(v38, v17);
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v39, &_s27PhoneCallFlowDelegatePlugin0A20AppResolutionLogging_pSgMd, &_s27PhoneCallFlowDelegatePlugin0A20AppResolutionLogging_pSgMR);
    __swift_destroy_boxed_opaque_existential_1(v40);
    __swift_destroy_boxed_opaque_existential_1(v51);
    __swift_destroy_boxed_opaque_existential_1(v45);
    v23 = &v48;
  }

  outlined init with take of SPHConversation(v23, a7 + 104);
  return a7;
}

uint64_t specialized PhoneCallFlow.__allocating_init(input:sharedGlobals:appFinder:eligibleAppsFinder:)(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = type metadata accessor for PhoneCallFlow.State(0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14);
  v17 = &v28[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v31[3] = a6;
  v31[4] = a7;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v31);
  (*(*(a6 - 8) + 32))(boxed_opaque_existential_1, a4, a6);
  v19 = type metadata accessor for Input();
  v20 = *(v19 - 8);
  (*(v20 + 16))(v17, a1, v19);
  swift_storeEnumTagMultiPayload();
  outlined init with copy of SignalProviding(a2, v30);
  outlined init with copy of SignalProviding(a3, v29);
  outlined init with copy of SignalProviding(v31, v28);
  v21 = (*(a5 + 184))(v17, v30, v29, v28);
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
    _os_log_impl(&dword_0, v23, v24, "#PhoneCallFlow state is initialized.", v25, 2u);
  }

  __swift_destroy_boxed_opaque_existential_1(a3);
  __swift_destroy_boxed_opaque_existential_1(a2);
  (*(v20 + 8))(a1, v19);
  __swift_destroy_boxed_opaque_existential_1(v31);
  return v21;
}

uint64_t outlined init with copy of PhoneCallFlow.State(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PhoneCallFlow.State(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t specialized PhoneCallFlow.init(state:sharedGlobals:appFinder:eligibleAppsFinder:)(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v18[3] = a6;
  v18[4] = a7;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v18);
  (*(*(a6 - 8) + 32))(boxed_opaque_existential_1, a4, a6);
  *(a5 + 176) = _swiftEmptyArrayStorage;
  outlined init with copy of SignalProviding(a3, a5 + 16);
  outlined init with copy of PhoneCallFlow.State(a1, a5 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin13PhoneCallFlow_state);
  outlined init with copy of SignalProviding(a2, a5 + 56);
  outlined init with copy of SignalProviding(v18, a5 + 96);
  v14 = a2[3];
  v15 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v14);
  (*(v15 + 216))(v17, v14, v15);
  __swift_destroy_boxed_opaque_existential_1(a3);
  outlined destroy of PhoneCallFlow.State(a1);
  __swift_destroy_boxed_opaque_existential_1(v18);
  outlined init with take of SPHConversation(v17, a5 + 136);
  __swift_destroy_boxed_opaque_existential_1(a2);
  return a5;
}

uint64_t partial apply for closure #3 in PhoneCallFlow.execute()(_BYTE *a1)
{
  v3 = type metadata accessor for Input();
  OUTLINED_FUNCTION_13_2(v3);
  v5 = v4;
  v7 = v6;
  v8 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v9 = v8 + *(v7 + 64);
  v10 = *(v1 + 16);
  v11 = v1 + ((v9 + 7) & 0xFFFFFFFFFFFFFFF8);
  v12 = *(v11 + 40);

  return closure #3 in PhoneCallFlow.execute()(a1, v10, v1 + v8, v11, v12, (v1 + ((v9 + 55) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t lazy protocol witness table accessor for type PhoneCallFlow and conformance PhoneCallFlow(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t outlined assign with take of PhoneCallFlow.State(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PhoneCallFlow.State(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t closure #1 in static CommonOutputs.promptCancelled(sharedGlobals:phoneCallCommonCATsSimple:)partial apply()
{
  OUTLINED_FUNCTION_15();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = closure #1 in AddCallParticipantGuardFlowFactory.makeAddRestricted(_:)partial apply;
  v2 = OUTLINED_FUNCTION_34_0();

  return closure #1 in static CommonOutputs.promptCancelled(sharedGlobals:phoneCallCommonCATsSimple:)(v2);
}

uint64_t partial apply for closure #1 in PhoneCallFlow.onAppResolutionComplete(originalInput:phoneCallNLIntent:intentType:)(uint64_t a1)
{
  v3 = type metadata accessor for Input();
  OUTLINED_FUNCTION_13_2(v3);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v7 = (*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  return (*(**(v1 + 16) + 224))(v1 + v5, v1 + v7, *(v1 + ((v7 + 47) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v7 + 47) & 0xFFFFFFFFFFFFFFF8) + 8), a1);
}

uint64_t outlined destroy of PhoneCallFlow.State(uint64_t a1)
{
  v2 = type metadata accessor for PhoneCallFlow.State(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata completion function for PhoneCallFlow()
{
  result = type metadata accessor for PhoneCallFlow.State(319);
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

void type metadata completion function for PhoneCallFlow.State()
{
  type metadata accessor for (input: Input)();
  if (v0 <= 0x3F)
  {
    type metadata accessor for (input: Input, phoneCallNLIntent: PhoneCallNLIntent, intentType: String)();
    if (v1 <= 0x3F)
    {
      type metadata accessor for (input: Input, phoneCallNLIntent: PhoneCallNLIntent, intentType: String, resolvedApp: AnnotatedApp)();
      if (v2 <= 0x3F)
      {
        type metadata accessor for (input: Input, phoneCallNLIntent: PhoneCallNLIntent, selectedIntentName: PhoneCallIntentClassNames, resolvedApp: AnnotatedApp)();
        if (v3 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        }
      }
    }
  }
}

void type metadata accessor for (input: Input)()
{
  if (!lazy cache variable for type metadata for (input: Input))
  {
    v0 = type metadata accessor for Input();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for (input: Input));
    }
  }
}

void type metadata accessor for (input: Input, phoneCallNLIntent: PhoneCallNLIntent, intentType: String)()
{
  if (!lazy cache variable for type metadata for (input: Input, phoneCallNLIntent: PhoneCallNLIntent, intentType: String))
  {
    type metadata accessor for Input();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMR);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &lazy cache variable for type metadata for (input: Input, phoneCallNLIntent: PhoneCallNLIntent, intentType: String));
    }
  }
}

void type metadata accessor for (input: Input, phoneCallNLIntent: PhoneCallNLIntent, intentType: String, resolvedApp: AnnotatedApp)()
{
  if (!lazy cache variable for type metadata for (input: Input, phoneCallNLIntent: PhoneCallNLIntent, intentType: String, resolvedApp: AnnotatedApp))
  {
    __chkstk_darwin(0);
    type metadata accessor for Input();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMR);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata, &lazy cache variable for type metadata for (input: Input, phoneCallNLIntent: PhoneCallNLIntent, intentType: String, resolvedApp: AnnotatedApp));
    }
  }
}

void type metadata accessor for (input: Input, phoneCallNLIntent: PhoneCallNLIntent, selectedIntentName: PhoneCallIntentClassNames, resolvedApp: AnnotatedApp)()
{
  if (!lazy cache variable for type metadata for (input: Input, phoneCallNLIntent: PhoneCallNLIntent, selectedIntentName: PhoneCallIntentClassNames, resolvedApp: AnnotatedApp))
  {
    __chkstk_darwin(0);
    type metadata accessor for Input();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMR);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata, &lazy cache variable for type metadata for (input: Input, phoneCallNLIntent: PhoneCallNLIntent, selectedIntentName: PhoneCallIntentClassNames, resolvedApp: AnnotatedApp));
    }
  }
}

uint64_t partial apply for closure #1 in PhoneCallFlow.publishUnsupportedOutput(unsupportedReason:input:intentName:app:)()
{
  OUTLINED_FUNCTION_15();
  v3 = v2;
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = closure #2 in ActionableCallControlFlow.execute();

  return closure #1 in PhoneCallFlow.publishUnsupportedOutput(unsupportedReason:input:intentName:app:)(v3, v0);
}

uint64_t partial apply for closure #1 in PhoneCallFlow.selfLogging(input:phoneCallNLIntent:intentTypeName:resolvedApp:)()
{
  v2 = type metadata accessor for Input();
  OUTLINED_FUNCTION_13_2(v2);
  v5 = (*(v4 + 64) + ((*(v3 + 80) + 56) & ~*(v3 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = v0[2];
  v7 = v0[3];
  v8 = v0[4];
  v9 = v0[5];
  v10 = v0[6];
  v11 = swift_task_alloc();
  *(v1 + 16) = v11;
  *v11 = v1;
  v11[1] = closure #2 in ActionableCallControlFlow.execute();
  OUTLINED_FUNCTION_16();

  return closure #1 in PhoneCallFlow.selfLogging(input:phoneCallNLIntent:intentTypeName:resolvedApp:)(v12, v13, v14, v15, v16, v17, v18, v19);
}

uint64_t objectdestroy_40Tm()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[5];

  v4 = v0[7];

  __swift_destroy_boxed_opaque_existential_1(v0 + 8);
  v5 = v0[14];

  return _swift_deallocObject(v0, 120, 7);
}

__n128 OUTLINED_FUNCTION_37_19(uint64_t a1)
{
  v3 = *(v1 + 16);
  result = *(v1 + 32);
  *(a1 + 16) = *v1;
  *(a1 + 32) = v3;
  *(a1 + 48) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_64_8()
{

  return Dictionary.init(dictionaryLiteral:)();
}

uint64_t OUTLINED_FUNCTION_66_9()
{

  return CATWrapperSimple.__allocating_init(options:globals:)();
}

uint64_t PhoneCallFlowDelegatePlugin.__allocating_init()()
{
  v9[3] = type metadata accessor for FlowFinder();
  v9[4] = &protocol witness table for FlowFinder;
  v9[0] = swift_allocObject();
  if (one-time initialization token for instance != -1)
  {
    swift_once();
  }

  v1 = static EligibleAppFinder.instance;
  v2 = one-time initialization token for shared;
  swift_retain_n();
  if (v2 != -1)
  {
    swift_once();
  }

  v3 = static CallRegistrationManager.shared;
  v4 = type metadata accessor for PluginPrewarmProvider();
  v5 = swift_allocObject();

  v6 = specialized PluginPrewarmProvider.init(eligibleAppsFinder:callRegistrationManager:)(v1, v3, v5);

  v8[3] = v4;
  v8[4] = &protocol witness table for PluginPrewarmProvider;
  v8[0] = v6;
  return (*(v0 + 112))(v9, implicit closure #1 in PhoneCallFlowDelegatePlugin.init(), 0, v8);
}

uint64_t PhoneCallFlowDelegatePlugin.__allocating_init(flowFinder:sharedGlobalsFactory:pluginPrewarmProvider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  swift_allocObject();
  v8 = OUTLINED_FUNCTION_11_0();
  PhoneCallFlowDelegatePlugin.init(flowFinder:sharedGlobalsFactory:pluginPrewarmProvider:)(v8, a2, a3, a4);
  return v4;
}

uint64_t PhoneCallFlowDelegatePlugin.init(flowFinder:sharedGlobalsFactory:pluginPrewarmProvider:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = v4;
  outlined init with copy of SignalProviding(a1, v5 + 16);
  *(v5 + 56) = a2;
  *(v5 + 64) = a3;
  outlined init with copy of SignalProviding(a4, v5 + 72);
  type metadata accessor for CATExecutor();
  type metadata accessor for PhoneCallFlowDelegatePlugin();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v11 = objc_opt_self();

  v12 = [v11 bundleForClass:ObjCClassFromMetadata];
  static CATExecutor.registerBundle(bundle:)();

  __swift_destroy_boxed_opaque_existential_1(a4);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v5;
}

uint64_t PhoneCallFlowDelegatePlugin.makeFlowFor(parse:)(uint64_t a1)
{
  v3 = *(v1 + 56);
  v4 = *(v1 + 64);
  v3(v7);
  v5 = PhoneCallFlowDelegatePlugin.makeFlowForCommon(parse:sharedGlobals:)(a1);
  __swift_destroy_boxed_opaque_existential_1(v7);
  return v5;
}

void PhoneCallFlowDelegatePlugin.sendPreWarmExtensionCommand(resultCandidateId:phoneCallNLIntent:aceServiceInvoker:)(uint64_t a1, unint64_t a2, void *a3, void *a4)
{
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
    v12 = swift_slowAlloc();
    v29 = v12;
    *v11 = 136315138;
    *(v11 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, &v29);
    OUTLINED_FUNCTION_9_47();
    _os_log_impl(v13, v14, v15, v16, v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v12);
    OUTLINED_FUNCTION_26_0();
    OUTLINED_FUNCTION_26_0();
  }

  v18 = a1 == 48 && a2 == 0xE100000000000000;
  if (v18 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v19 = a3[4];
    __swift_project_boxed_opaque_existential_1(a3, a3[3]);
    if (PhoneCallNLIntent.isFirstPartyOrDefaultAppRequest()())
    {
      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.debug.getter();
      if (OUTLINED_FUNCTION_16_4(v21))
      {
        v22 = OUTLINED_FUNCTION_65_0();
        *v22 = 0;
        _os_log_impl(&dword_0, v20, v21, "#PhoneCallFlowDelegatePlugin sending IntentSignal to pre-warm first party extension", v22, 2u);
        OUTLINED_FUNCTION_26_0();
      }

      v23 = [objc_allocWithZone(SAIntentGroupIntentSignal) init];
      v28 = [objc_allocWithZone(INStartCallIntent) init];
      v24 = String._bridgeToObjectiveC()();
      [v28 _setLaunchId:v24];

      v25 = String._bridgeToObjectiveC()();
      [v28 _setExtensionBundleId:v25];

      type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SAIntentGroupProtobufMessage, SAIntentGroupProtobufMessage_ptr);
      v26 = SAIntentGroupProtobufMessage.init(intent:)();
      [v23 setIntent:v26];

      v27 = a4[4];
      __swift_project_boxed_opaque_existential_1(a4, a4[3]);
      dispatch thunk of AceServiceInvoker.submitAndForget(_:)();
    }
  }
}

uint64_t PhoneCallFlowDelegatePlugin.makeFlowForEmergencyResourceCall(parse:nlTransformer:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for Parse.DirectInvocation();
  v7 = OUTLINED_FUNCTION_7(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  __chkstk_darwin(v7);
  OUTLINED_FUNCTION_4();
  v14 = v13 - v12;
  (*(*a2 + 192))(&v56, a1);
  if (!v57)
  {
    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(&v56, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMR);
LABEL_9:
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2();
    }

    v27 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_9_0(v27, static Logger.siriPhone);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = OUTLINED_FUNCTION_65_0();
      *v30 = 0;
      _os_log_impl(&dword_0, v28, v29, "#PhoneCallFlowDelegatePlugin No emergency resource found", v30, 2u);
      OUTLINED_FUNCTION_26_0();
    }

    return 0;
  }

  outlined init with take of SPHConversation(&v56, v59);
  v15 = v59[4];
  __swift_project_boxed_opaque_existential_1(v59, v59[3]);
  v16 = *(v15 + 24);
  v17 = OUTLINED_FUNCTION_11_0();
  v18(v17, v15);
  specialized Collection.first.getter(&v56);

  if (!v57)
  {
    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(&v56, &_s27PhoneCallFlowDelegatePlugin04SiriA7Contact_pSgMd, &_s27PhoneCallFlowDelegatePlugin04SiriA7Contact_pSgMR);
    goto LABEL_8;
  }

  v19 = v58;
  __swift_project_boxed_opaque_existential_1(&v56, v57);
  v20 = *(v19 + 272);
  v21 = OUTLINED_FUNCTION_11_0();
  v22(v21, v19);
  v24 = v23;
  __swift_destroy_boxed_opaque_existential_1(&v56);
  if (v24 < 3)
  {
    v25 = OUTLINED_FUNCTION_104();
    outlined consume of PhoneCallEmergencyType?(v25, v26);
LABEL_8:
    __swift_destroy_boxed_opaque_existential_1(v59);
    goto LABEL_9;
  }

  if (v24 == 3)
  {
    goto LABEL_8;
  }

  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2();
  }

  v33 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_9_0(v33, static Logger.siriPhone);
  v34 = OUTLINED_FUNCTION_104();
  outlined copy of PhoneCallEmergencyType(v34, v35);
  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.debug.getter();
  v38 = OUTLINED_FUNCTION_104();
  outlined consume of PhoneCallEmergencyType?(v38, v39);
  if (os_log_type_enabled(v36, v37))
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    *&v56 = v41;
    *v40 = 136315138;
    v42 = OUTLINED_FUNCTION_104();
    *(v40 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v42, v43, v44);
    OUTLINED_FUNCTION_9_47();
    _os_log_impl(v45, v46, v47, v48, v49, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v41);
    OUTLINED_FUNCTION_26_0();
    OUTLINED_FUNCTION_26_0();
  }

  v50 = OUTLINED_FUNCTION_104();
  static CallEmergencyResourceDirectInvocation.invocation(for:)(v50, v51);
  v52 = OUTLINED_FUNCTION_104();
  outlined consume of PhoneCallEmergencyType?(v52, v53);
  v54 = v3[5];
  v55 = v3[6];
  __swift_project_boxed_opaque_existential_1(v3 + 2, v54);
  v31 = (*(v55 + 8))(v14, v54, v55);
  (*(v9 + 8))(v14, v6);
  __swift_destroy_boxed_opaque_existential_1(v59);
  return v31;
}

Swift::Void __swiftcall PhoneCallFlowDelegatePlugin.warmup(refId:)(Swift::String refId)
{
  object = refId._object;
  countAndFlagsBits = refId._countAndFlagsBits;
  v4 = v1[12];
  v5 = v1[13];
  __swift_project_boxed_opaque_existential_1(v1 + 9, v4);
  (*(v5 + 8))(countAndFlagsBits, object, v4, v5);
}

uint64_t *PhoneCallFlowDelegatePlugin.deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v1 = v0[8];

  __swift_destroy_boxed_opaque_existential_1(v0 + 9);
  return v0;
}

uint64_t PhoneCallFlowDelegatePlugin.__deallocating_deinit()
{
  PhoneCallFlowDelegatePlugin.deinit();

  return swift_deallocClassInstance();
}

uint64_t protocol witness for FlowPlugin.init() in conformance PhoneCallFlowDelegatePlugin@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 104))();
  *a1 = result;
  return result;
}

void *specialized PluginPrewarmProvider.init(eligibleAppsFinder:callRegistrationManager:)(uint64_t a1, uint64_t a2, void *a3)
{
  v16[0] = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v6 = *(v16[0] - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v16[0]);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for OS_dispatch_queue.Attributes();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v12 = type metadata accessor for DispatchQoS();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v21 = type metadata accessor for EligibleAppFinder();
  v22 = &protocol witness table for EligibleAppFinder;
  *&v20 = a1;
  v18 = type metadata accessor for CallRegistrationManager();
  v19 = &protocol witness table for CallRegistrationManager;
  *&v17 = a2;
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for OS_dispatch_queue, OS_dispatch_queue_ptr);
  static DispatchQoS.userInteractive.getter();
  v16[1] = _swiftEmptyArrayStorage;
  lazy protocol witness table accessor for type RedirectToServerFlow and conformance RedirectToServerFlow(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, 255, &type metadata accessor for OS_dispatch_queue.Attributes);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v6 + 104))(v9, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v16[0]);
  v14 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  a3[13] = 0;
  a3[14] = 0;
  a3[12] = v14;
  outlined init with take of SPHConversation(&v20, (a3 + 2));
  outlined init with take of SPHConversation(&v17, (a3 + 7));
  return a3;
}

uint64_t lazy protocol witness table accessor for type RedirectToServerFlow and conformance RedirectToServerFlow(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

void specialized closure #1 in static CallingIntentContinueInAppFlow.makeProducer(sharedGlobals:)()
{
  OUTLINED_FUNCTION_66();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow22IntentResolutionRecordVySo011INStartCallD0CSo0ghD8ResponseCGMd, &_s11SiriKitFlow22IntentResolutionRecordVySo011INStartCallD0CSo0ghD8ResponseCGMR);
  OUTLINED_FUNCTION_7(v7);
  v9 = v8;
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v12);
  OUTLINED_FUNCTION_94_5();
  (*(v9 + 16))(v0, v4, v7);
  outlined init with copy of SignalProviding(v2, v25);
  v13 = [objc_allocWithZone(AFDeviceStateConnection) init];
  v14 = type metadata accessor for PhoneSettingProvider();
  v15 = OUTLINED_FUNCTION_79();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin026CallingIntentContinueInAppC0CySo07INStartbG0CSo0kbG8ResponseCGMd, &_s27PhoneCallFlowDelegatePlugin026CallingIntentContinueInAppC0CySo07INStartbG0CSo0kbG8ResponseCGMR);
  OUTLINED_FUNCTION_12_8(v16);
  v17 = swift_allocObject();
  v18 = OUTLINED_FUNCTION_40_9(v17);
  v20 = (v18 + *(v19 + 136));
  v20[3] = v14;
  v20[4] = &protocol witness table for PhoneSettingProvider;
  *v20 = v15;
  v18[2] = v6;
  v21 = OUTLINED_FUNCTION_40_9(v18);
  (*(v9 + 32))(v21 + *(v22 + 112), v0, v7);
  OUTLINED_FUNCTION_10_20();
  outlined init with take of SPHConversation(v25, v17 + *(v23 + 120));
  OUTLINED_FUNCTION_10_20();
  *(v17 + *(v24 + 128)) = v13;
  *&v25[0] = v17;
  lazy protocol witness table accessor for type AnyValueFlow<ExecuteOnRemoteFlowResult> and conformance AnyValueFlow<A>(&lazy protocol witness table cache variable for type CallingIntentContinueInAppFlow<INStartCallIntent, INStartCallIntentResponse> and conformance CallingIntentContinueInAppFlow<A, B>, &_s27PhoneCallFlowDelegatePlugin026CallingIntentContinueInAppC0CySo07INStartbG0CSo0kbG8ResponseCGMd, &_s27PhoneCallFlowDelegatePlugin026CallingIntentContinueInAppC0CySo07INStartbG0CSo0kbG8ResponseCGMR);

  Flow.eraseToAnyFlow()();

  OUTLINED_FUNCTION_91_5();
  OUTLINED_FUNCTION_65();
}

uint64_t static PhoneCallFlowFactory.makeRCHFlow(input:app:intent:sharedGlobals:)()
{
  static PhoneCallFlowFactory.makeRCHFlow(app:intent:sharedGlobals:)();
  v1 = v0;
  if (v0)
  {

    dispatch thunk of AnyFlow.on(input:)();
  }

  return v1;
}

uint64_t _s27PhoneCallFlowDelegatePlugin026ContactNeedsDisambiguationC8StrategyC14promptProvider13sharedGlobalsACyxGx_AA06SharedM9Providing_ptcfCAA017ParticipantOutputK0C_Tt1g5(uint64_t a1, uint64_t a2)
{
  v46 = a2;
  v47 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow25DucTemplatingLocalContextVSgMd, &_s11SiriKitFlow25DucTemplatingLocalContextVSgMR);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v45 = v40 - v5;
  v6 = type metadata accessor for Locale();
  v42 = *(v6 - 8);
  v43 = v6;
  v7 = *(v42 + 64);
  __chkstk_darwin(v6);
  v9 = v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for CATOption();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  outlined init with copy of SignalProviding(a2, v54);
  v44 = "com.apple.camera";
  type metadata accessor for PhoneCallDisplayTextCATs();
  static CATOption.defaultMode.getter();
  v12 = CATWrapper.__allocating_init(options:globals:)();
  type metadata accessor for PhoneCallCommonCATs();
  static CATOption.defaultMode.getter();
  v13 = CATWrapper.__allocating_init(options:globals:)();
  v14 = type metadata accessor for AppInfoBuilder();
  v15 = swift_allocObject();
  type metadata accessor for StartCallCATs();
  static CATOption.defaultMode.getter();
  v41 = CATWrapper.__allocating_init(options:globals:)();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0aB24BaseCatTemplatingServiceCySo05INAddB17ParticipantIntentCSo0jbkL8ResponseCGMd, &_s27PhoneCallFlowDelegatePlugin0aB24BaseCatTemplatingServiceCySo05INAddB17ParticipantIntentCSo0jbkL8ResponseCGMR);
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  v19 = swift_allocObject();
  v53[3] = v14;
  v53[4] = &protocol witness table for AppInfoBuilder;
  v53[0] = v15;
  v52[3] = &type metadata for LabelTemplatesProvider;
  v52[4] = &protocol witness table for LabelTemplatesProvider;
  v20 = swift_allocObject();
  v52[0] = v20;
  *(v20 + 16) = 0u;
  *(v20 + 32) = 0u;
  v21 = class metadata base offset for PhoneCallBaseCatTemplatingService;
  v22 = (v19 + *(*v19 + class metadata base offset for PhoneCallBaseCatTemplatingService + 16));
  *v22 = 0x3D65737561705C1BLL;
  v22[1] = 0xEC0000005C303532;
  v23 = v19 + *(*v19 + v21 + 56);
  *v23 = 0u;
  *(v23 + 1) = 0u;
  *(v23 + 4) = 0;
  outlined init with copy of SignalProviding(v54, v19 + *(*v19 + v21 + 72));
  v24 = v55;
  v25 = v56;
  __swift_project_boxed_opaque_existential_1(v54, v55);
  (*(v25 + 8))(&v50, v24, v25);
  v26 = *(*v19 + class metadata base offset for PhoneCallBaseCatTemplatingService + 40);
  outlined init with take of SPHConversation(&v50, v19 + v26);
  v27 = class metadata base offset for PhoneCallBaseCatTemplatingService;
  v28 = *(*v19 + class metadata base offset for PhoneCallBaseCatTemplatingService + 24);
  v40[0] = v13;
  v40[1] = v12;
  *(v19 + v28) = v12;
  *(v19 + *(*v19 + v27 + 32)) = v13;
  outlined init with copy of SignalProviding(v53, v19 + *(*v19 + v27 + 48));
  outlined init with copy of SignalProviding(v52, v19 + *(*v19 + class metadata base offset for PhoneCallBaseCatTemplatingService + 64));
  *(v19 + *(*v19 + class metadata base offset for PhoneCallBaseCatTemplatingService + 80)) = v41;
  outlined init with copy of SignalProviding(v19 + v26, &v50);
  __swift_project_boxed_opaque_existential_1(&v50, v51);

  dispatch thunk of DeviceState.siriLocale.getter();
  v49[0] = Locale.identifier.getter();
  v49[1] = v29;
  v48[0] = 45;
  v48[1] = 0xE100000000000000;
  v49[5] = 95;
  v49[6] = 0xE100000000000000;
  lazy protocol witness table accessor for type String and conformance String();
  StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  (*(v42 + 8))(v9, v43);

  type metadata accessor for INIntentSlotValueType(0);
  lazy protocol witness table accessor for type SearchCallHistoryHandleFlowStrategy and conformance SearchCallHistoryHandleFlowStrategy(&lazy protocol witness table cache variable for type INIntentSlotValueType and conformance INIntentSlotValueType, type metadata accessor for INIntentSlotValueType);
  Dictionary.init(dictionaryLiteral:)();
  v30 = v55;
  v31 = v56;
  __swift_project_boxed_opaque_existential_1(v54, v55);
  (*(v31 + 24))(v49, v30, v31);
  outlined init with copy of SignalProviding(v19 + v26, v48);
  v32 = type metadata accessor for DucTemplatingLocalContext();
  __swift_storeEnumTagSinglePayload(v45, 1, 1, v32);
  v33 = DucTemplatingService.init(ducFamily:locale:extensionValueTypeNamesByValueType:aceServiceInvoker:deviceState:localContext:)();

  __swift_destroy_boxed_opaque_existential_1(v52);
  __swift_destroy_boxed_opaque_existential_1(v53);
  __swift_destroy_boxed_opaque_existential_1(&v50);
  __swift_destroy_boxed_opaque_existential_1(v54);
  v34 = v46;
  outlined init with copy of SignalProviding(v46, v54);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin026ContactNeedsDisambiguationC8StrategyCyAA25ParticipantOutputProviderCGMd, &_s27PhoneCallFlowDelegatePlugin026ContactNeedsDisambiguationC8StrategyCyAA25ParticipantOutputProviderCGMR);
  v36 = *(v35 + 48);
  v37 = *(v35 + 52);
  swift_allocObject();
  v38 = specialized ContactNeedsDisambiguationFlowStrategy.init(promptProvider:sharedGlobals:templatingService:cachedPromptResponse:)(v47, v54, v33, 0, 0xFFu);
  __swift_destroy_boxed_opaque_existential_1(v34);
  return v38;
}

uint64_t specialized ContactNeedsDisambiguationFlowStrategy.init(promptProvider:sharedGlobals:templatingService:cachedPromptResponse:)(uint64_t a1, uint64_t *a2, uint64_t a3, void *a4, unsigned __int8 a5)
{
  v6 = v5;
  static UnlockDevicePolicy.default.getter();
  *(v6 + direct field offset for ContactNeedsDisambiguationFlowStrategy.personsToDisambiguate) = _swiftEmptyArrayStorage;
  v12 = v6 + *(*v6 + 144);
  *v12 = 0;
  *(v12 + 8) = -1;
  *(v6 + *(*v6 + 112)) = a1;
  outlined init with copy of SignalProviding(a2, v6 + *(*v6 + 120));
  *(v6 + *(*v6 + 128)) = a3;
  v13 = a2[3];
  v14 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v13);
  v15 = (*(v14 + 72))(v13, v14);
  outlined init with copy of SignalProviding(v15 + 160, v19);

  outlined init with take of SPHConversation(v19, v6 + *(*v6 + 136));
  v16 = v6 + *(*v6 + 144);
  swift_beginAccess();
  v17 = *v16;
  *v16 = a4;
  LOBYTE(v14) = *(v16 + 8);
  *(v16 + 8) = a5;
  outlined copy of ContactDisambiguationPromptResponse?(a4, a5);
  outlined consume of ContactDisambiguationPromptResponse?(v17, v14);
  outlined consume of ContactDisambiguationPromptResponse?(a4, a5);
  __swift_destroy_boxed_opaque_existential_1(a2);
  return v6;
}

uint64_t specialized ContactNeedsValueGuardFlow.init(flow:state:sharedGlobals:app:)(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4)
{
  OUTLINED_FUNCTION_2_0();
  *(v4 + *(v7 + 104)) = v8;
  OUTLINED_FUNCTION_2_0();
  outlined init with take of ButtonConfigurationModel?(v12, v4 + *(v9 + 96), v10, v11);
  OUTLINED_FUNCTION_2_0();
  outlined init with take of SPHConversation(a3, v4 + *(v13 + 112));
  OUTLINED_FUNCTION_2_0();
  *(v4 + *(v14 + 120)) = a4;
  return v4;
}

void _s27PhoneCallFlowDelegatePlugin024ContactUnsetRelationshipC8StrategyV13sharedGlobals12contactStore14labelTemplates05unsethO020displayTextCatFamily05phoneB10CommonCatsACyxGAA06SharedK9Providing_p_AA0F7Storing_pAA05LabeloY0_pAA0gh8TemplateY0_pAA0ab7DisplayR4CATsCAA0abV4CATsCtcfCSo012INStartAudioB6IntentC_Tt6g5Tm()
{
  OUTLINED_FUNCTION_66();
  v63 = v0;
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v68 = v7;
  v10 = v9;
  v12 = v11;
  v70 = v11;
  v14 = v13;
  v16 = v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow25DucTemplatingLocalContextVSgMd, &_s11SiriKitFlow25DucTemplatingLocalContextVSgMR);
  OUTLINED_FUNCTION_21(v17);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v20);
  OUTLINED_FUNCTION_27_3();
  v71 = v21;
  OUTLINED_FUNCTION_15_0();
  v66 = type metadata accessor for Locale();
  v22 = OUTLINED_FUNCTION_7(v66);
  v65 = v23;
  v25 = *(v24 + 64);
  __chkstk_darwin(v22);
  OUTLINED_FUNCTION_4();
  v64 = v27 - v26;
  OUTLINED_FUNCTION_15_0();
  v28 = type metadata accessor for CATOption();
  v29 = OUTLINED_FUNCTION_21(v28);
  v31 = *(v30 + 64);
  __chkstk_darwin(v29);
  OUTLINED_FUNCTION_4();
  v69 = v14;
  outlined init with copy of SignalProviding(v14, v16);
  outlined init with copy of SignalProviding(v12, (v16 + 5));
  v67 = v10;
  outlined init with copy of SignalProviding(v10, (v16 + 10));
  outlined init with copy of SignalProviding(v8, (v16 + 15));
  v16[20] = v6;
  v16[21] = v4;
  v73 = v4;
  outlined init with copy of SignalProviding(v14, v79);
  outlined init with copy of SignalProviding(v10, v78);
  v32 = type metadata accessor for AppInfoBuilder();
  v33 = OUTLINED_FUNCTION_79();
  type metadata accessor for StartCallCATs();

  static CATOption.defaultMode.getter();
  v72 = CATWrapper.__allocating_init(options:globals:)();
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v63);
  OUTLINED_FUNCTION_12_8(v34);
  v35 = swift_allocObject();
  v77[3] = v32;
  v77[4] = &protocol witness table for AppInfoBuilder;
  v77[0] = v33;
  v36 = (v35 + *(*v35 + class metadata base offset for PhoneCallBaseCatTemplatingService + 16));
  *v36 = 0x3D65737561705C1BLL;
  v36[1] = 0xEC0000005C303532;
  v37 = OUTLINED_FUNCTION_40_9(v35);
  v40 = v37 + *(v39 + v38 + 56);
  *v40 = 0u;
  *(v40 + 1) = 0u;
  *(v40 + 4) = 0;
  OUTLINED_FUNCTION_40_9(v37);
  outlined init with copy of SignalProviding(v79, v35 + *(v42 + v41 + 72));
  v43 = v81;
  __swift_project_boxed_opaque_existential_1(v79, v80);
  v44 = *(v43 + 8);
  v45 = OUTLINED_FUNCTION_61();
  v46(v45, v43);
  OUTLINED_FUNCTION_10_20();
  v48 = *(v47 + class metadata base offset for PhoneCallBaseCatTemplatingService + 40);
  outlined init with take of SPHConversation(&v75, v35 + v48);
  OUTLINED_FUNCTION_10_20();
  *(v35 + *(v49 + class metadata base offset for PhoneCallBaseCatTemplatingService + 24)) = v6;
  OUTLINED_FUNCTION_10_20();
  *(v35 + *(v51 + v50 + 32)) = v73;
  OUTLINED_FUNCTION_10_20();
  outlined init with copy of SignalProviding(v77, v35 + *(v53 + v52 + 48));
  OUTLINED_FUNCTION_10_20();
  outlined init with copy of SignalProviding(v78, v35 + *(v54 + class metadata base offset for PhoneCallBaseCatTemplatingService + 64));
  OUTLINED_FUNCTION_10_20();
  *(v35 + *(v55 + class metadata base offset for PhoneCallBaseCatTemplatingService + 80)) = v72;
  outlined init with copy of SignalProviding(v35 + v48, &v75);
  OUTLINED_FUNCTION_28_0(&v75, v76);

  dispatch thunk of DeviceState.siriLocale.getter();
  v74[5] = Locale.identifier.getter();
  v74[6] = v56;
  v74[0] = 45;
  v74[1] = 0xE100000000000000;
  v74[10] = 95;
  v74[11] = 0xE100000000000000;
  lazy protocol witness table accessor for type String and conformance String();
  StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  (*(v65 + 8))(v64, v66);

  type metadata accessor for INIntentSlotValueType(0);
  lazy protocol witness table accessor for type SearchCallHistoryHandleFlowStrategy and conformance SearchCallHistoryHandleFlowStrategy(&lazy protocol witness table cache variable for type INIntentSlotValueType and conformance INIntentSlotValueType, type metadata accessor for INIntentSlotValueType);
  Dictionary.init(dictionaryLiteral:)();
  v57 = v81;
  __swift_project_boxed_opaque_existential_1(v79, v80);
  v58 = *(v57 + 24);
  v59 = OUTLINED_FUNCTION_33_3();
  v60(v59, v57);
  outlined init with copy of SignalProviding(v35 + v48, v74);
  v61 = type metadata accessor for DucTemplatingLocalContext();
  __swift_storeEnumTagSinglePayload(v71, 1, 1, v61);
  v62 = DucTemplatingService.init(ducFamily:locale:extensionValueTypeNamesByValueType:aceServiceInvoker:deviceState:localContext:)();

  __swift_destroy_boxed_opaque_existential_1(v68);
  __swift_destroy_boxed_opaque_existential_1(v67);
  __swift_destroy_boxed_opaque_existential_1(v70);
  __swift_destroy_boxed_opaque_existential_1(v69);
  __swift_destroy_boxed_opaque_existential_1(v78);
  __swift_destroy_boxed_opaque_existential_1(v77);
  __swift_destroy_boxed_opaque_existential_1(&v75);
  __swift_destroy_boxed_opaque_existential_1(v79);
  v16[22] = v62;
  OUTLINED_FUNCTION_65();
}

void static PhoneCallFlowFactory.makeHangUpCallRCHFlow(intent:app:sharedGlobals:)()
{
  OUTLINED_FUNCTION_66();
  v2 = v1;
  v4 = v3;
  v84 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow08RCHChildC14ProducersAsyncVySo18INHangUpCallIntentCSo0ghiJ8ResponseCGMd, &_s11SiriKitFlow08RCHChildC14ProducersAsyncVySo18INHangUpCallIntentCSo0ghiJ8ResponseCGMR);
  v7 = OUTLINED_FUNCTION_7(v6);
  v85 = v8;
  v10 = *(v9 + 64);
  __chkstk_darwin(v7);
  OUTLINED_FUNCTION_16_2();
  v82 = v11;
  OUTLINED_FUNCTION_4_0();
  __chkstk_darwin(v12);
  v14 = &v70 - v13;
  v15 = type metadata accessor for CATOption();
  v16 = OUTLINED_FUNCTION_21(v15);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_94_5();
  OUTLINED_FUNCTION_112_3();
  type metadata accessor for HangUpCallCATsSimple();
  OUTLINED_FUNCTION_47_5();
  OUTLINED_FUNCTION_38_2();
  v78 = v0;
  v19 = CATWrapperSimple.__allocating_init(options:globals:)();
  v20 = type metadata accessor for ResponseFactory();
  OUTLINED_FUNCTION_12_8(v20);
  swift_allocObject();
  v21 = ResponseFactory.init()();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v22 = static CallRegistrationManager.shared;
  v80 = type metadata accessor for HangUpCallIntentRCHFlowStrategy();
  v23 = swift_allocObject();
  v23[12] = v20;
  v23[13] = &protocol witness table for ResponseFactory;
  v23[9] = v21;
  v77 = type metadata accessor for CallRegistrationManager();
  v23[17] = v77;
  v23[18] = &protocol witness table for CallRegistrationManager;
  v23[14] = v22;
  v23[2] = v4;
  outlined init with take of SPHConversation(&v94, (v23 + 3));
  v23[8] = v19;
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INHangUpCallIntent, INHangUpCallIntent_ptr);
  v75 = type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INHangUpCallIntentResponse, INHangUpCallIntentResponse_ptr);
  v79 = v22;

  OUTLINED_FUNCTION_19_0();
  RCHChildFlowProducersAsync.init()();
  OUTLINED_FUNCTION_28_2();
  static RCHChildFlowFactoryHelper.makeAppResolutionFlowProducer<A, B>(app:)();
  RCHChildFlowProducersAsync.appResolutionFlowProducer.setter();
  OUTLINED_FUNCTION_112_3();
  type metadata accessor for PhoneCallCommonCATs();
  OUTLINED_FUNCTION_47_5();
  OUTLINED_FUNCTION_38_2();
  v73 = CATWrapper.__allocating_init(options:globals:)();
  v72 = type metadata accessor for PhoneCallCommonCATPatternsExecutor();
  static CATOption.defaultMode.getter();
  OUTLINED_FUNCTION_38_2();
  v24 = CATWrapper.__allocating_init(options:globals:)();
  v71 = type metadata accessor for AppInfoBuilder();
  v25 = OUTLINED_FUNCTION_79();
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0A15TCCFlowStrategyCySo08INHangUpB6IntentCSo0hibJ8ResponseCGMd, &_s27PhoneCallFlowDelegatePlugin0A15TCCFlowStrategyCySo08INHangUpB6IntentCSo0hibJ8ResponseCGMR);
  v26 = swift_allocObject();
  v83 = v14;
  v27 = v26;
  v92 = v25;
  v93 = v24;
  v70 = v24;
  v91[3] = &type metadata for LabelTemplatesProvider;
  v91[4] = &protocol witness table for LabelTemplatesProvider;
  OUTLINED_FUNCTION_68_0();
  v28 = swift_allocObject();
  v91[0] = v28;
  *(v28 + 16) = 0u;
  *(v28 + 32) = 0u;
  v90[3] = &type metadata for TCCTemplatesProvider;
  v90[4] = &protocol witness table for TCCTemplatesProvider;
  outlined init with copy of SignalProviding(&v94, v27 + 272);
  outlined init with copy of SignalProviding(v91, v27 + 192);
  outlined init with copy of SignalProviding(v90, v27 + 232);
  v76 = v4;
  v81 = v6;
  v29 = v2;
  v30 = v95;
  v31 = v96;
  OUTLINED_FUNCTION_28_0(&v94, v95);
  v32 = *(v31 + 136);

  v32(v87, v30, v31);
  v33 = v88;
  v34 = v89;
  __swift_project_boxed_opaque_existential_1(v87, v88);
  v35 = v96;
  __swift_project_boxed_opaque_existential_1(&v94, v95);
  v36 = *(v35 + 8);
  v37 = OUTLINED_FUNCTION_61();
  v38(v37, v35);
  OUTLINED_FUNCTION_9_1();
  v40 = *(v39 + 64);
  __chkstk_darwin(v41);
  OUTLINED_FUNCTION_4();
  v43 = OUTLINED_FUNCTION_65_10(v42);
  v44 = v29;
  v45 = v81;
  v46(v43);
  v47 = v27;
  v48 = v83;
  v49 = specialized PhoneCallStrategy.init(catFamily:catPatternFamily:responseGenerator:appInfoBuilder:deviceState:)(v73, &v93, v25, &v92, &v86, v47, v33, v72, v71, *(v34 + 8), &protocol witness table for PhoneCallCommonCATPatternsExecutor, &protocol witness table for AppInfoBuilder, v70);

  __swift_destroy_boxed_opaque_existential_1(v90);
  __swift_destroy_boxed_opaque_existential_1(v91);
  __swift_destroy_boxed_opaque_existential_1(v87);
  __swift_destroy_boxed_opaque_existential_1(&v94);
  *&v94 = v49;
  OUTLINED_FUNCTION_27_21();
  lazy protocol witness table accessor for type AnyValueFlow<ExecuteOnRemoteFlowResult> and conformance AnyValueFlow<A>(v50, &_s27PhoneCallFlowDelegatePlugin0A15TCCFlowStrategyCySo08INHangUpB6IntentCSo0hibJ8ResponseCGMd, &_s27PhoneCallFlowDelegatePlugin0A15TCCFlowStrategyCySo08INHangUpB6IntentCSo0hibJ8ResponseCGMR);
  static RCHChildFlowFactoryHelper.makeRequestTCCAcceptanceFlow<A, B>(strategy:)();

  RCHChildFlowProducersAsync.requestTCCAcceptanceFlowProducer.setter();
  outlined init with copy of SignalProviding(v29, &v94);
  static CATOption.defaultMode.getter();
  OUTLINED_FUNCTION_38_2();
  v51 = CATWrapperSimple.__allocating_init(options:globals:)();
  if (one-time initialization token for instance != -1)
  {
    OUTLINED_FUNCTION_0_9();
  }

  v52 = static BiomeEventSender.instance;
  type metadata accessor for HangUpCallHandleIntentFlowStrategy();
  v53 = swift_allocObject();
  v53[11] = &type metadata for BiomeEventSender;
  v53[12] = &protocol witness table for BiomeEventSender;
  v53[8] = v52;
  v53[16] = v77;
  v53[17] = &protocol witness table for CallRegistrationManager;
  v53[13] = v79;
  outlined init with take of SPHConversation(&v94, (v53 + 2));
  v53[7] = v51;
  *&v94 = v53;
  lazy protocol witness table accessor for type SearchCallHistoryHandleFlowStrategy and conformance SearchCallHistoryHandleFlowStrategy(&lazy protocol witness table cache variable for type HangUpCallHandleIntentFlowStrategy and conformance HangUpCallHandleIntentFlowStrategy, type metadata accessor for HangUpCallHandleIntentFlowStrategy);
  OUTLINED_FUNCTION_48_16();

  v54 = v52;
  static RCHChildFlowFactoryHelper.makeHandleIntentFlowProducer<A>(strategy:)();

  OUTLINED_FUNCTION_19_0();
  RCHChildFlowProducersAsync.handleIntentFlowProducer.setter();
  v55 = v44[4];
  __swift_project_boxed_opaque_existential_1(v44, v44[3]);
  v56 = OUTLINED_FUNCTION_54_17();
  v57(v56);
  v58 = v95;
  v59 = v96;
  v79 = __swift_project_boxed_opaque_existential_1(&v94, v95);
  v91[0] = v23;
  v60 = v85;
  v61 = *(v85 + 16);
  v62 = OUTLINED_FUNCTION_69_8();
  v63(v62);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow08RCHChildC7FactoryCySo18INHangUpCallIntentCSo0fghI8ResponseCGMd, &_s11SiriKitFlow08RCHChildC7FactoryCySo18INHangUpCallIntentCSo0fghI8ResponseCGMR);
  OUTLINED_FUNCTION_12_8(v64);
  swift_allocObject();
  OUTLINED_FUNCTION_11_0();
  v65 = RCHChildFlowFactory.init(producers:)();
  v66 = v45;
  v67 = v48;
  v68 = *(v59 + 8);
  v69 = lazy protocol witness table accessor for type SearchCallHistoryHandleFlowStrategy and conformance SearchCallHistoryHandleFlowStrategy(&lazy protocol witness table cache variable for type HangUpCallIntentRCHFlowStrategy and conformance HangUpCallIntentRCHFlowStrategy, type metadata accessor for HangUpCallIntentRCHFlowStrategy);
  v68(v91, v65, v76, v84, v80, v69, v58, v59);
  OUTLINED_FUNCTION_48_16();

  (*(v60 + 8))(v67, v66);

  __swift_destroy_boxed_opaque_existential_1(&v94);
  OUTLINED_FUNCTION_91_5();
  OUTLINED_FUNCTION_65();
}

void static PhoneCallFlowFactory.makeIncomingCallRCHFlow<A, B>(strategy:intent:app:sharedGlobals:)()
{
  OUTLINED_FUNCTION_66();
  v1 = v0;
  v3 = v2;
  v44 = v4;
  v41 = v5;
  v6 = type metadata accessor for RCHChildFlowProducersAsync();
  v7 = OUTLINED_FUNCTION_7(v6);
  v43 = v8;
  v10 = *(v9 + 64);
  __chkstk_darwin(v7);
  OUTLINED_FUNCTION_16_2();
  v42 = v11;
  OUTLINED_FUNCTION_4_0();
  __chkstk_darwin(v12);
  v14 = &v38 - v13;
  OUTLINED_FUNCTION_69();
  RCHChildFlowProducersAsync.init()();
  OUTLINED_FUNCTION_93_5();
  static RCHChildFlowFactoryHelper.makeAppResolutionFlowProducer<A, B>(app:)();
  RCHChildFlowProducersAsync.appResolutionFlowProducer.setter();
  OUTLINED_FUNCTION_18_23();
  type metadata accessor for PhoneTCCFlowStrategy();
  OUTLINED_FUNCTION_112_3();
  v15 = OUTLINED_FUNCTION_69();
  v17 = default argument 3 of PhoneCallBaseCatTemplatingService.init(ducFamily:sharedGlobals:displayTextCats:phoneCallCommonCats:appInfoBuilder:labelTemplating:startCallCats:)(v15, v16);
  v18 = OUTLINED_FUNCTION_69();
  default argument 2 of PhoneTCCFlowStrategy.init(sharedGlobals:phoneCallCommonCats:phoneCallCommonCatPatterns:labelTemplatesProvider:tccTemplatesProvider:appInfoBuilder:)(v20, v18, v19);
  v21 = OUTLINED_FUNCTION_69();
  default argument 5 of PhoneCallBaseCatTemplatingService.init(ducFamily:sharedGlobals:displayTextCats:phoneCallCommonCats:appInfoBuilder:labelTemplating:startCallCats:)(v21);
  OUTLINED_FUNCTION_69();
  default argument 4 of PhoneTCCFlowStrategy.init(sharedGlobals:phoneCallCommonCats:phoneCallCommonCatPatterns:labelTemplatesProvider:tccTemplatesProvider:appInfoBuilder:)(v22);
  v23 = OUTLINED_FUNCTION_69();
  default argument 4 of PhoneCallBaseCatTemplatingService.init(ducFamily:sharedGlobals:displayTextCats:phoneCallCommonCats:appInfoBuilder:labelTemplating:startCallCats:)(v23);
  *&v50 = PhoneTCCFlowStrategy.__allocating_init(sharedGlobals:phoneCallCommonCats:phoneCallCommonCatPatterns:labelTemplatesProvider:tccTemplatesProvider:appInfoBuilder:)(&v50, v17, v49, v48, v47, &v46);
  OUTLINED_FUNCTION_82_4();
  static RCHChildFlowFactoryHelper.makeRequestTCCAcceptanceFlow<A, B>(strategy:)();
  OUTLINED_FUNCTION_86_5();
  OUTLINED_FUNCTION_60_10();
  RCHChildFlowProducersAsync.requestTCCAcceptanceFlowProducer.setter();
  OUTLINED_FUNCTION_18_23();
  type metadata accessor for IncomingCallActionHandleIntentFlowStrategy();
  outlined init with copy of SignalProviding(v41, &v50);
  outlined init with copy of SignalProviding(v1, v49);
  OUTLINED_FUNCTION_69();
  default argument 2 of IncomingCallActionHandleIntentFlowStrategy.init(strategy:sharedGlobals:callStateNotificationManager:audioSessionManager:sbsManager:)();
  OUTLINED_FUNCTION_69();
  default argument 3 of IncomingCallActionHandleIntentFlowStrategy.init(strategy:sharedGlobals:callStateNotificationManager:audioSessionManager:sbsManager:)(v24);
  OUTLINED_FUNCTION_69();
  default argument 4 of IncomingCallActionHandleIntentFlowStrategy.init(strategy:sharedGlobals:callStateNotificationManager:audioSessionManager:sbsManager:)(v25);
  *&v50 = IncomingCallActionHandleIntentFlowStrategy.__allocating_init(strategy:sharedGlobals:callStateNotificationManager:audioSessionManager:sbsManager:)();
  OUTLINED_FUNCTION_82_4();
  OUTLINED_FUNCTION_17_31();
  static RCHChildFlowFactoryHelper.makeHandleIntentFlowProducer<A>(strategy:)();
  OUTLINED_FUNCTION_86_5();
  OUTLINED_FUNCTION_60_10();
  v40 = v6;
  v45 = v14;
  RCHChildFlowProducersAsync.handleIntentFlowProducer.setter();
  OUTLINED_FUNCTION_18_23();
  type metadata accessor for IncomingCallActionContinueInAppStrategy();
  *&v50 = UnsetRelationshipTemplatesWrapper.__allocating_init()();
  OUTLINED_FUNCTION_82_4();
  OUTLINED_FUNCTION_17_31();
  static RCHChildFlowFactoryHelper.makeContinueInAppFlowWithAutomaticPunchOutProducer<A>(strategy:)();
  OUTLINED_FUNCTION_86_5();
  OUTLINED_FUNCTION_60_10();
  RCHChildFlowProducersAsync.continueInAppFlowProducer.setter();
  OUTLINED_FUNCTION_18_23();
  v26 = type metadata accessor for PhoneIntentRCHFlowStrategy();
  OUTLINED_FUNCTION_112_3();
  v39 = v3;
  v27 = PhoneIntentRCHFlowStrategy.__allocating_init(sharedGlobals:app:)(&v50, v3);
  v29 = v1[3];
  v28 = v1[4];
  OUTLINED_FUNCTION_28_0(v1, v29);
  v30 = *(v28 + 104);

  v30(&v50, v29, v28);
  v31 = v51;
  v32 = v52;
  v41 = __swift_project_boxed_opaque_existential_1(&v50, v51);
  v49[0] = v27;
  OUTLINED_FUNCTION_18_23();
  type metadata accessor for RCHChildFlowFactory();
  v33 = v43;
  v34 = v40;
  (*(v43 + 16))(v42, v45, v40);
  v35 = RCHChildFlowFactory.__allocating_init(producers:)();
  v36 = *(v32 + 8);
  WitnessTable = swift_getWitnessTable();
  v36(v49, v35, v39, v44, v26, WitnessTable, v31, v32);
  OUTLINED_FUNCTION_19_7();

  (*(v33 + 8))(v45, v34);

  __swift_destroy_boxed_opaque_existential_1(&v50);
  OUTLINED_FUNCTION_68_6();
  OUTLINED_FUNCTION_65();
}

void static PhoneCallFlowFactoryProtocol.makeIncomingCallFlow<A, B>(strategy:intent:app:sharedGlobals:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  (*(a8 + 40))(a1);
  v15[0] = a6;
  v15[1] = a7;
  v15[2] = a9;
  v15[3] = a10;
  type metadata accessor for IncomingCallFlow();
  outlined init with copy of SignalProviding(a1, v15);
  outlined init with copy of SignalProviding(a4, v14);

  IncomingCallFlow.__allocating_init(rchFlow:app:strategy:sharedGlobals:)();
}

void static PhoneCallFlowFactory.makeAddCallParticipantRCHFlow(intent:app:sharedGlobals:)()
{
  OUTLINED_FUNCTION_66();
  v2 = v1;
  v4 = v3;
  v61 = v5;
  v6 = type metadata accessor for CATOption();
  v7 = OUTLINED_FUNCTION_21(v6);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  OUTLINED_FUNCTION_4();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow08RCHChildC14ProducersAsyncVySo26INAddCallParticipantIntentCSo0ghiJ8ResponseCGMd, &_s11SiriKitFlow08RCHChildC14ProducersAsyncVySo26INAddCallParticipantIntentCSo0ghiJ8ResponseCGMR);
  v11 = OUTLINED_FUNCTION_7(v10);
  v62 = v12;
  v14 = *(v13 + 64);
  __chkstk_darwin(v11);
  OUTLINED_FUNCTION_16_2();
  v60 = v15;
  OUTLINED_FUNCTION_4_0();
  __chkstk_darwin(v16);
  v18 = &v56 - v17;
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INAddCallParticipantIntent, INAddCallParticipantIntent_ptr);
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INAddCallParticipantIntentResponse, INAddCallParticipantIntentResponse_ptr);
  OUTLINED_FUNCTION_19_0();
  RCHChildFlowProducersAsync.init()();
  OUTLINED_FUNCTION_28_2();
  static RCHChildFlowFactoryHelper.makeAppResolutionFlowProducer<A, B>(app:)();
  RCHChildFlowProducersAsync.appResolutionFlowProducer.setter();
  OUTLINED_FUNCTION_87_4();
  type metadata accessor for AddCallParticipantCATsSimple();
  static CATOption.defaultMode.getter();
  OUTLINED_FUNCTION_67_9();
  CATWrapperSimple.__allocating_init(options:globals:)();
  OUTLINED_FUNCTION_47_4();
  type metadata accessor for AddCallParticipantHandleIntentFlowStrategy();
  OUTLINED_FUNCTION_102_0();
  v19 = swift_allocObject();
  outlined init with take of SPHConversation(&v64, v19 + 16);
  *(v19 + 56) = v0;
  *&v63 = v19;
  OUTLINED_FUNCTION_87_4();
  OUTLINED_FUNCTION_102_0();
  v20 = swift_allocObject();
  *(v20 + 16) = v4;
  outlined init with take of SPHConversation(&v64, v20 + 24);
  lazy protocol witness table accessor for type SearchCallHistoryHandleFlowStrategy and conformance SearchCallHistoryHandleFlowStrategy(&lazy protocol witness table cache variable for type AddCallParticipantHandleIntentFlowStrategy and conformance AddCallParticipantHandleIntentFlowStrategy, type metadata accessor for AddCallParticipantHandleIntentFlowStrategy);

  static RCHChildFlowFactoryHelper.makeHandleIntentFlowProducer<A>(strategy:responseFlowProducer:)();

  OUTLINED_FUNCTION_62_14();
  RCHChildFlowProducersAsync.handleIntentFlowProducer.setter();
  type metadata accessor for ParticipantOutputProvider();
  OUTLINED_FUNCTION_87_4();
  type metadata accessor for AddCallParticipantCATs();

  static CATOption.defaultMode.getter();
  OUTLINED_FUNCTION_67_9();
  CATWrapper.__allocating_init(options:globals:)();
  OUTLINED_FUNCTION_47_4();
  type metadata accessor for StartCallCATs();
  static CATOption.defaultMode.getter();
  OUTLINED_FUNCTION_67_9();
  v21 = CATWrapper.__allocating_init(options:globals:)();
  v22 = ParticipantOutputProvider.__allocating_init(sharedGlobals:app:cats:startCallCats:)(&v64, v4, v20, v21);
  outlined init with copy of SignalProviding(v2, &v64 + 8);
  *&v64 = v22;

  v23 = OUTLINED_FUNCTION_19_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v23, v24);
  OUTLINED_FUNCTION_28_2();
  lazy protocol witness table accessor for type AnyValueFlow<ExecuteOnRemoteFlowResult> and conformance AnyValueFlow<A>(v25, v26, v27);
  OUTLINED_FUNCTION_19_29();
  static RCHChildFlowFactoryHelper.makeNeedsValueFlowProducer<A>(strategy:)();
  OUTLINED_FUNCTION_28_2();
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v28, v29, v30);
  OUTLINED_FUNCTION_62_14();
  RCHChildFlowProducersAsync.needsValueFlowProducer.setter();
  outlined init with copy of SignalProviding(v2, &v64 + 8);
  *&v64 = v22;

  v31 = OUTLINED_FUNCTION_19_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v31, v32);
  OUTLINED_FUNCTION_28_2();
  lazy protocol witness table accessor for type AnyValueFlow<ExecuteOnRemoteFlowResult> and conformance AnyValueFlow<A>(v33, v34, v35);
  OUTLINED_FUNCTION_19_29();
  static RCHChildFlowFactoryHelper.makeNeedsConfirmationFlowProducer<A>(strategy:)();
  OUTLINED_FUNCTION_28_2();
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v36, v37, v38);
  OUTLINED_FUNCTION_62_14();
  RCHChildFlowProducersAsync.needsConfirmationFlowProducer.setter();
  OUTLINED_FUNCTION_87_4();
  OUTLINED_FUNCTION_102_0();
  v39 = swift_allocObject();
  outlined init with take of SPHConversation(&v64, v39 + 16);
  *(v39 + 56) = v22;

  RCHChildFlowProducersAsync.unsupportedValueFlowProducer.setter();
  OUTLINED_FUNCTION_87_4();

  v41 = _s27PhoneCallFlowDelegatePlugin026ContactNeedsDisambiguationC8StrategyC14promptProvider13sharedGlobalsACyxGx_AA06SharedM9Providing_ptcfCAA017ParticipantOutputK0C_Tt1g5(v40, &v64);
  OUTLINED_FUNCTION_96_2(v41);
  v42 = OUTLINED_FUNCTION_43_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(v42, v43);
  lazy protocol witness table accessor for type AnyValueFlow<ExecuteOnRemoteFlowResult> and conformance AnyValueFlow<A>(&lazy protocol witness table cache variable for type ContactNeedsDisambiguationFlowStrategy<ParticipantOutputProvider> and conformance ContactNeedsDisambiguationFlowStrategy<A>, &_s27PhoneCallFlowDelegatePlugin026ContactNeedsDisambiguationC8StrategyCyAA25ParticipantOutputProviderCGMd, &_s27PhoneCallFlowDelegatePlugin026ContactNeedsDisambiguationC8StrategyCyAA25ParticipantOutputProviderCGMR);
  OUTLINED_FUNCTION_19_29();
  static RCHChildFlowFactoryHelper.makeNeedsDisambiguationFlowProducer<A>(strategy:)();
  OUTLINED_FUNCTION_29_18();

  OUTLINED_FUNCTION_43_3();
  v57 = v18;
  v58 = v10;
  RCHChildFlowProducersAsync.needsDisambiguationFlowProducer.setter();
  v44 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  v45 = OUTLINED_FUNCTION_54_17();
  v46(v45);
  v47 = v65;
  v56 = v66;
  v59 = __swift_project_boxed_opaque_existential_1(&v64, v65);
  outlined init with copy of SignalProviding(v2, &v63);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0A21IntentRCHFlowStrategyCySo05INAddb11ParticipantF0CSo0ibjF8ResponseCGMd, &_s27PhoneCallFlowDelegatePlugin0A21IntentRCHFlowStrategyCySo05INAddb11ParticipantF0CSo0ibjF8ResponseCGMR);
  OUTLINED_FUNCTION_102_0();
  v49 = swift_allocObject();
  outlined init with take of SPHConversation(&v63, v49 + 16);
  *(v49 + 56) = v4;
  *&v63 = v49;
  (*(v62 + 16))(v60, v18, v10);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow08RCHChildC7FactoryCySo26INAddCallParticipantIntentCSo0fghI8ResponseCGMd, &_s11SiriKitFlow08RCHChildC7FactoryCySo26INAddCallParticipantIntentCSo0fghI8ResponseCGMR);
  OUTLINED_FUNCTION_12_8(v50);
  swift_allocObject();

  v51 = RCHChildFlowFactory.init(producers:)();
  v52 = v56;
  v53 = *(v56 + 8);
  OUTLINED_FUNCTION_24_25();
  v55 = lazy protocol witness table accessor for type AnyValueFlow<ExecuteOnRemoteFlowResult> and conformance AnyValueFlow<A>(v54, &_s27PhoneCallFlowDelegatePlugin0A21IntentRCHFlowStrategyCySo05INAddb11ParticipantF0CSo0ibjF8ResponseCGMd, &_s27PhoneCallFlowDelegatePlugin0A21IntentRCHFlowStrategyCySo05INAddb11ParticipantF0CSo0ibjF8ResponseCGMR);
  v53(&v63, v51, v4, v61, v48, v55, v47, v52);

  (*(v62 + 8))(v57, v58);
  __swift_destroy_boxed_opaque_existential_1(&v64);
  OUTLINED_FUNCTION_91_5();
  OUTLINED_FUNCTION_65();
}

uint64_t specialized ParameterResolutionRecord<>.isUnsetRelationship.getter()
{
  v0 = type metadata accessor for ParameterIdentifier();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow25ParameterResolutionRecordVySo22INStartAudioCallIntentCGMd, &_s11SiriKitFlow25ParameterResolutionRecordVySo22INStartAudioCallIntentCGMR);
  ParameterResolutionRecord.app.getter();
  v5 = App.isFirstParty()();

  if (!v5)
  {
    return 0;
  }

  ParameterResolutionRecord.parameter.getter();
  v6 = ParameterIdentifier.multicardinalIndex.getter();
  v8 = v7;
  (*(v1 + 8))(v4, v0);
  v9 = ParameterResolutionRecord.intent.getter();
  v10 = outlined bridged method (pb) of @objc INStartAudioCallIntent.contacts.getter(v9);

  if (!v10)
  {
    return 0;
  }

  v11 = (v8 & 1) != 0 ? 0 : v6;
  v12 = specialized Array.subscript.getter(v11, v10);

  if (!v12)
  {
    return 0;
  }

  v13 = [v12 relationship];

  if (!v13)
  {
    return 0;
  }

  v14 = ParameterResolutionRecord.intent.getter();
  v15 = ParameterResolutionRecord.result.getter();
  v36 = v14;
  v37 = v15;
  v16 = v14;
  v17 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo22INStartAudioCallIntentC_So24INIntentResolutionResultCtMd, &_sSo22INStartAudioCallIntentC_So24INIntentResolutionResultCtMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo17INStartCallIntentC_So0aB23ContactResolutionResultCtMd, &_sSo17INStartCallIntentC_So0aB23ContactResolutionResultCtMR);
  if (swift_dynamicCast())
  {
  }

  else
  {
    v18 = v36;

    v36 = v16;
    v37 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo26INAddCallParticipantIntentC_So0abcC16ResolutionResultCtMd, &_sSo26INAddCallParticipantIntentC_So0abcC16ResolutionResultCtMR);
    if ((swift_dynamicCast() & 1) == 0)
    {

      v13 = v36;
      goto LABEL_17;
    }
  }

  v19 = v35;
  v20 = [v35 unsupportedReason];

  v21 = v36;
  if (v20 != &dword_0 + 1)
  {
LABEL_17:

    return 0;
  }

  if (one-time initialization token for siriPhone != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  __swift_project_value_buffer(v22, static Logger.siriPhone);
  v23 = v13;
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    *v26 = 136315650;
    v34 = type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INStartAudioCallIntent, INStartAudioCallIntent_ptr);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo22INStartAudioCallIntentCmMd, &_sSo22INStartAudioCallIntentCmMR);
    v27 = String.init<A>(describing:)();
    v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v28, &v36);

    *(v26 + 4) = v29;
    *(v26 + 12) = 2080;
    *(v26 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000013, 0x800000000045D050, &v36);
    *(v26 + 22) = 2080;
    v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v31, &v36);

    *(v26 + 24) = v32;
    _os_log_impl(&dword_0, v24, v25, "#ParameterResolutionRecord<%s> %s Found unsetRelationship = %s", v26, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
  }

  return 1;
}

{
  v0 = type metadata accessor for ParameterIdentifier();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow25ParameterResolutionRecordVySo22INStartVideoCallIntentCGMd, &_s11SiriKitFlow25ParameterResolutionRecordVySo22INStartVideoCallIntentCGMR);
  ParameterResolutionRecord.app.getter();
  v5 = App.isFirstParty()();

  if (!v5)
  {
    return 0;
  }

  ParameterResolutionRecord.parameter.getter();
  v6 = ParameterIdentifier.multicardinalIndex.getter();
  v8 = v7;
  (*(v1 + 8))(v4, v0);
  v9 = ParameterResolutionRecord.intent.getter();
  v10 = outlined bridged method (pb) of @objc INStartVideoCallIntent.contacts.getter(v9);

  if (!v10)
  {
    return 0;
  }

  v11 = (v8 & 1) != 0 ? 0 : v6;
  v12 = specialized Array.subscript.getter(v11, v10);

  if (!v12)
  {
    return 0;
  }

  v13 = [v12 relationship];

  if (!v13)
  {
    return 0;
  }

  v14 = ParameterResolutionRecord.intent.getter();
  v15 = ParameterResolutionRecord.result.getter();
  v36 = v14;
  v37 = v15;
  v16 = v14;
  v17 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo22INStartVideoCallIntentC_So24INIntentResolutionResultCtMd, &_sSo22INStartVideoCallIntentC_So24INIntentResolutionResultCtMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo17INStartCallIntentC_So0aB23ContactResolutionResultCtMd, &_sSo17INStartCallIntentC_So0aB23ContactResolutionResultCtMR);
  if (swift_dynamicCast())
  {
  }

  else
  {
    v18 = v36;

    v36 = v16;
    v37 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo26INAddCallParticipantIntentC_So0abcC16ResolutionResultCtMd, &_sSo26INAddCallParticipantIntentC_So0abcC16ResolutionResultCtMR);
    if ((swift_dynamicCast() & 1) == 0)
    {

      v13 = v36;
      goto LABEL_17;
    }
  }

  v19 = v35;
  v20 = [v35 unsupportedReason];

  v21 = v36;
  if (v20 != &dword_0 + 1)
  {
LABEL_17:

    return 0;
  }

  if (one-time initialization token for siriPhone != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  __swift_project_value_buffer(v22, static Logger.siriPhone);
  v23 = v13;
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    *v26 = 136315650;
    v34 = type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INStartVideoCallIntent, INStartVideoCallIntent_ptr);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo22INStartVideoCallIntentCmMd, &_sSo22INStartVideoCallIntentCmMR);
    v27 = String.init<A>(describing:)();
    v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v28, &v36);

    *(v26 + 4) = v29;
    *(v26 + 12) = 2080;
    *(v26 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000013, 0x800000000045D050, &v36);
    *(v26 + 22) = 2080;
    v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v31, &v36);

    *(v26 + 24) = v32;
    _os_log_impl(&dword_0, v24, v25, "#ParameterResolutionRecord<%s> %s Found unsetRelationship = %s", v26, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
  }

  return 1;
}

{
  v0 = type metadata accessor for ParameterIdentifier();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow25ParameterResolutionRecordVySo17INStartCallIntentCGMd, &_s11SiriKitFlow25ParameterResolutionRecordVySo17INStartCallIntentCGMR);
  ParameterResolutionRecord.app.getter();
  v5 = App.isFirstParty()();

  if (!v5)
  {
    return 0;
  }

  ParameterResolutionRecord.parameter.getter();
  v6 = ParameterIdentifier.multicardinalIndex.getter();
  v8 = v7;
  (*(v1 + 8))(v4, v0);
  v9 = ParameterResolutionRecord.intent.getter();
  v10 = outlined bridged method (pb) of @objc INStartCallIntent.contacts.getter(v9);

  if (!v10)
  {
    return 0;
  }

  v11 = (v8 & 1) != 0 ? 0 : v6;
  v12 = specialized Array.subscript.getter(v11, v10);

  if (!v12)
  {
    return 0;
  }

  v13 = [v12 relationship];

  if (!v13)
  {
    return 0;
  }

  v14 = ParameterResolutionRecord.intent.getter();
  v15 = ParameterResolutionRecord.result.getter();
  v36 = v14;
  v37 = v15;
  v16 = v14;
  v17 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo17INStartCallIntentC_So24INIntentResolutionResultCtMd, &_sSo17INStartCallIntentC_So24INIntentResolutionResultCtMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo17INStartCallIntentC_So0aB23ContactResolutionResultCtMd, &_sSo17INStartCallIntentC_So0aB23ContactResolutionResultCtMR);
  if (swift_dynamicCast())
  {
  }

  else
  {
    v18 = v36;

    v36 = v16;
    v37 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo26INAddCallParticipantIntentC_So0abcC16ResolutionResultCtMd, &_sSo26INAddCallParticipantIntentC_So0abcC16ResolutionResultCtMR);
    if ((swift_dynamicCast() & 1) == 0)
    {

      v13 = v36;
      goto LABEL_17;
    }
  }

  v19 = v35;
  v20 = [v35 unsupportedReason];

  v21 = v36;
  if (v20 != &dword_0 + 1)
  {
LABEL_17:

    return 0;
  }

  if (one-time initialization token for siriPhone != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  __swift_project_value_buffer(v22, static Logger.siriPhone);
  v23 = v13;
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    *v26 = 136315650;
    v34 = type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INStartCallIntent, INStartCallIntent_ptr);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo17INStartCallIntentCmMd, &_sSo17INStartCallIntentCmMR);
    v27 = String.init<A>(describing:)();
    v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v28, &v36);

    *(v26 + 4) = v29;
    *(v26 + 12) = 2080;
    *(v26 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000013, 0x800000000045D050, &v36);
    *(v26 + 22) = 2080;
    v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v31, &v36);

    *(v26 + 24) = v32;
    _os_log_impl(&dword_0, v24, v25, "#ParameterResolutionRecord<%s> %s Found unsetRelationship = %s", v26, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
  }

  return 1;
}

{
  v0 = type metadata accessor for ParameterIdentifier();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow25ParameterResolutionRecordVySo26INAddCallParticipantIntentCGMd, &_s11SiriKitFlow25ParameterResolutionRecordVySo26INAddCallParticipantIntentCGMR);
  ParameterResolutionRecord.app.getter();
  v5 = App.isFirstParty()();

  if (!v5)
  {
    return 0;
  }

  ParameterResolutionRecord.parameter.getter();
  v6 = ParameterIdentifier.multicardinalIndex.getter();
  v8 = v7;
  (*(v1 + 8))(v4, v0);
  v9 = ParameterResolutionRecord.intent.getter();
  v10 = outlined bridged method (pb) of @objc INAddCallParticipantIntent.participants.getter(v9);

  if (!v10)
  {
    return 0;
  }

  v11 = (v8 & 1) != 0 ? 0 : v6;
  v12 = specialized Array.subscript.getter(v11, v10);

  if (!v12)
  {
    return 0;
  }

  v13 = [v12 relationship];

  if (!v13)
  {
    return 0;
  }

  v14 = ParameterResolutionRecord.intent.getter();
  v15 = ParameterResolutionRecord.result.getter();
  v36 = v14;
  v37 = v15;
  v16 = v14;
  v17 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo26INAddCallParticipantIntentC_So24INIntentResolutionResultCtMd, &_sSo26INAddCallParticipantIntentC_So24INIntentResolutionResultCtMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo17INStartCallIntentC_So0aB23ContactResolutionResultCtMd, &_sSo17INStartCallIntentC_So0aB23ContactResolutionResultCtMR);
  if (swift_dynamicCast())
  {
  }

  else
  {
    v18 = v36;

    v36 = v16;
    v37 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo26INAddCallParticipantIntentC_So0abcC16ResolutionResultCtMd, &_sSo26INAddCallParticipantIntentC_So0abcC16ResolutionResultCtMR);
    if ((swift_dynamicCast() & 1) == 0)
    {

      v13 = v36;
      goto LABEL_17;
    }
  }

  v19 = v35;
  v20 = [v35 unsupportedReason];

  v21 = v36;
  if (v20 != &dword_0 + 1)
  {
LABEL_17:

    return 0;
  }

  if (one-time initialization token for siriPhone != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  __swift_project_value_buffer(v22, static Logger.siriPhone);
  v23 = v13;
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    *v26 = 136315650;
    v34 = type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INAddCallParticipantIntent, INAddCallParticipantIntent_ptr);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo26INAddCallParticipantIntentCmMd, &_sSo26INAddCallParticipantIntentCmMR);
    v27 = String.init<A>(describing:)();
    v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v28, &v36);

    *(v26 + 4) = v29;
    *(v26 + 12) = 2080;
    *(v26 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000013, 0x800000000045D050, &v36);
    *(v26 + 22) = 2080;
    v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v31, &v36);

    *(v26 + 24) = v32;
    _os_log_impl(&dword_0, v24, v25, "#ParameterResolutionRecord<%s> %s Found unsetRelationship = %s", v26, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
  }

  return 1;
}

void static PhoneCallFlowFactory.makeVoiceCommandsParityFlow(app:intent:sharedGlobals:)()
{
  OUTLINED_FUNCTION_66();
  v1 = v0;
  v47 = v2;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow08RCHChildC9ProducersVySo17INStartCallIntentCSo0fgH8ResponseCGMd, &_s11SiriKitFlow08RCHChildC9ProducersVySo17INStartCallIntentCSo0fgH8ResponseCGMR);
  v6 = OUTLINED_FUNCTION_7(v5);
  v48 = v7;
  v49 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v10);
  OUTLINED_FUNCTION_27_3();
  v46 = v11;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow08RCHChildC14ProducersAsyncVySo17INStartCallIntentCSo0ghI8ResponseCGMd, &_s11SiriKitFlow08RCHChildC14ProducersAsyncVySo17INStartCallIntentCSo0ghI8ResponseCGMR);
  OUTLINED_FUNCTION_7(v45);
  v13 = v12;
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v16);
  OUTLINED_FUNCTION_27_3();
  v44 = v17;
  v18 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0abC7FactoryO0A16RCHFlowProducersVy_So07INStartB6IntentCSo0ibJ8ResponseCGMd, &_s27PhoneCallFlowDelegatePlugin0abC7FactoryO0A16RCHFlowProducersVy_So07INStartB6IntentCSo0ibJ8ResponseCGMR) - 8);
  v19 = *(*v18 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v20);
  v22 = v43 - v21;
  v23 = type metadata accessor for CATOption();
  v24 = OUTLINED_FUNCTION_21(v23);
  v26 = *(v25 + 64);
  __chkstk_darwin(v24);
  OUTLINED_FUNCTION_4();
  type metadata accessor for StartCallRCHFlowDelegate();
  outlined init with copy of SignalProviding(v1, &v51);
  swift_retain_n();
  v43[1] = StartCallRCHFlowDelegate.__allocating_init(sharedGlobals:appResolved:)(&v51, v4);
  outlined init with copy of SignalProviding(v1, &v51);
  type metadata accessor for PhoneCallDisplayTextCATsSimple();
  static CATOption.defaultMode.getter();
  v27 = OUTLINED_FUNCTION_88_4();
  type metadata accessor for StartCallCATsSimple();
  static CATOption.defaultMode.getter();
  v28 = OUTLINED_FUNCTION_88_4();
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin28CallingIntentRCHFlowStrategyCySo07INStartbG0CSo0jbG8ResponseCGMd, &_s27PhoneCallFlowDelegatePlugin28CallingIntentRCHFlowStrategyCySo07INStartbG0CSo0jbG8ResponseCGMR);
  OUTLINED_FUNCTION_70();
  v30 = swift_allocObject();
  outlined init with take of SPHConversation(&v51, (v30 + 2));
  v43[0] = v4;
  v30[7] = v4;
  v30[8] = v27;
  v30[9] = v28;
  v31 = v47;
  static PhoneCallFlowFactory.getStartCallProducers(skIntent:delegate:app:sharedGlobals:)();
  (*(v13 + 16))(v44, &v22[v18[11]], v45);
  (*(v48 + 16))(v46, v22, v49);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow08RCHChildC7FactoryCySo17INStartCallIntentCSo0fgH8ResponseCGMd, &_s11SiriKitFlow08RCHChildC7FactoryCySo17INStartCallIntentCSo0fgH8ResponseCGMR);
  OUTLINED_FUNCTION_12_8(v32);
  swift_allocObject();
  OUTLINED_FUNCTION_11_0();
  v33 = RCHChildFlowFactory.init(producers:withFallbacks:)();
  v34 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  v35 = *(v34 + 104);
  v36 = OUTLINED_FUNCTION_11_0();
  v37(v36, v34);
  v38 = v52;
  v39 = v53;
  OUTLINED_FUNCTION_28_0(&v51, v52);
  v50 = v30;
  v40 = *(v39 + 64);
  OUTLINED_FUNCTION_4_54();
  v42 = lazy protocol witness table accessor for type AnyValueFlow<ExecuteOnRemoteFlowResult> and conformance AnyValueFlow<A>(v41, &_s27PhoneCallFlowDelegatePlugin28CallingIntentRCHFlowStrategyCySo07INStartbG0CSo0jbG8ResponseCGMd, &_s27PhoneCallFlowDelegatePlugin28CallingIntentRCHFlowStrategyCySo07INStartbG0CSo0jbG8ResponseCGMR);
  v40(&v50, v33, v43[0], v31, v29, v42, v38, v39);

  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v22, &_s27PhoneCallFlowDelegatePlugin0abC7FactoryO0A16RCHFlowProducersVy_So07INStartB6IntentCSo0ibJ8ResponseCGMd, &_s27PhoneCallFlowDelegatePlugin0abC7FactoryO0A16RCHFlowProducersVy_So07INStartB6IntentCSo0ibJ8ResponseCGMR);

  __swift_destroy_boxed_opaque_existential_1(&v51);
  OUTLINED_FUNCTION_68_6();
  OUTLINED_FUNCTION_65();
}

void _s27PhoneCallFlowDelegatePlugin0abC7FactoryO015getGenericStartB9Producers8delegate3appAC0a7RCHFlowJ0Vy_10IntentTypeQz0n8ResponseO0QzGx_17SiriAppResolution0R0CtAA07CallingnmD0RzlFZAA0i5AudiobmD0C_Tt2g5()
{
  OUTLINED_FUNCTION_66();
  v3 = OUTLINED_FUNCTION_84_5(v1, v2);
  v4 = OUTLINED_FUNCTION_21(v3);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_15_0();
  v7 = type metadata accessor for CATOption();
  v8 = OUTLINED_FUNCTION_21(v7);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  OUTLINED_FUNCTION_4();
  v11 = OUTLINED_FUNCTION_47_17();
  _s27PhoneCallFlowDelegatePlugin0abC7FactoryO12getProducers33_CD8279EFAB3EC33E52197D7782D744418delegate3appAC0a7RCHFlowH0Vy_10IntentTypeQz0r8ResponseS0QzGx_17SiriAppResolution0V0CtAA0aqD0RzlFZAA010StartAudiobqD0C_Tt2g5(v11, v12, v13);
  outlined init with copy of SignalProviding(v0 + direct field offset for StartAudioCallRCHFlowDelegate.sharedGlobals, v82);
  OUTLINED_FUNCTION_102_0();
  v14 = swift_allocObject();
  OUTLINED_FUNCTION_100_3(v14);
  v62 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0abC7FactoryO0A16RCHFlowProducersVy_So012INStartAudioB6IntentCSo0ijbK8ResponseCGMd, &_s27PhoneCallFlowDelegatePlugin0abC7FactoryO0A16RCHFlowProducersVy_So012INStartAudioB6IntentCSo0ijbK8ResponseCGMR) + 36);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow08RCHChildC14ProducersAsyncVySo22INStartAudioCallIntentCSo0ghiJ8ResponseCGMd, &_s11SiriKitFlow08RCHChildC14ProducersAsyncVySo22INStartAudioCallIntentCSo0ghiJ8ResponseCGMR);
  OUTLINED_FUNCTION_34_11();
  RCHChildFlowProducersAsync.appResolutionBeforeNextResolveFlowProducer.setter();
  v15 = type metadata accessor for StartCallCATs();
  OUTLINED_FUNCTION_111_3(v15);
  OUTLINED_FUNCTION_19_13();
  CATWrapper.__allocating_init(options:globals:)();
  v16 = type metadata accessor for StartCallCATPatternsExecutor(0);
  static CATOption.defaultMode.getter();
  OUTLINED_FUNCTION_19_13();
  v17 = v16;
  v59 = v16;
  v18 = CATWrapper.__allocating_init(options:globals:)();
  v19 = type metadata accessor for StartCallCATsSimple();
  OUTLINED_FUNCTION_110_2(v19);
  OUTLINED_FUNCTION_19_13();
  CATWrapperSimple.__allocating_init(options:globals:)();
  v20 = type metadata accessor for PhoneCallCommonCATs();
  OUTLINED_FUNCTION_109_2(v20);
  OUTLINED_FUNCTION_19_13();
  CATWrapper.__allocating_init(options:globals:)();
  v21 = type metadata accessor for PhoneCallCommonCATsSimple();
  OUTLINED_FUNCTION_108_2(v21);
  OUTLINED_FUNCTION_19_13();
  CATWrapperSimple.__allocating_init(options:globals:)();
  v22 = type metadata accessor for PhoneCallCommonCATPatternsExecutor();
  static CATOption.defaultMode.getter();
  OUTLINED_FUNCTION_19_13();
  v60 = v22;
  v55 = CATWrapper.__allocating_init(options:globals:)();
  type metadata accessor for PhoneCallDisplayTextCATsSimple();
  static CATOption.defaultMode.getter();
  OUTLINED_FUNCTION_19_13();
  CATWrapperSimple.__allocating_init(options:globals:)();
  v23 = type metadata accessor for ResponseFactory();
  v63 = OUTLINED_FUNCTION_12_8(v23);
  swift_allocObject();
  v57 = ResponseFactory.init()();
  static SiriKitEventSender.current.getter();
  v61 = type metadata accessor for AppInfoBuilder();
  v24 = OUTLINED_FUNCTION_79();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin039CallingIntentContactNeedsDisambiguationC8StrategyCyAA010StartAudiob7RCHFlowD0CGMd, &_s27PhoneCallFlowDelegatePlugin039CallingIntentContactNeedsDisambiguationC8StrategyCyAA010StartAudiob7RCHFlowD0CGMR);
  OUTLINED_FUNCTION_12_8(v25);
  v26 = swift_allocObject();
  v80 = v17;
  v81 = &protocol witness table for StartCallCATPatternsExecutor;
  v79 = v18;
  v78 = &protocol witness table for PhoneCallCommonCATPatternsExecutor;
  v77 = v22;
  v76 = v55;
  *(v26 + direct field offset for CallingIntentContactNeedsDisambiguationFlowStrategy.personsToDisambiguate) = &_swiftEmptyArrayStorage;
  v75 = &protocol witness table for AppInfoBuilder;
  v74 = v61;
  v73 = v24;
  *(v26 + direct field offset for CallingIntentContactNeedsDisambiguationFlowStrategy.selectedPerson) = 0;
  *(v26 + direct field offset for CallingIntentContactNeedsDisambiguationFlowStrategy.requiresReprompt) = 0;
  *(v26 + direct field offset for CallingIntentContactNeedsDisambiguationFlowStrategy.shouldClearContext) = 0;
  OUTLINED_FUNCTION_79_5();
  OUTLINED_FUNCTION_80_4();
  OUTLINED_FUNCTION_83_4();
  OUTLINED_FUNCTION_78_7();
  v69 = v63;
  v70 = &protocol witness table for ResponseFactory;
  v68 = v57;

  OUTLINED_FUNCTION_77_8();
  OUTLINED_FUNCTION_23_21();
  OutputGenerationManifest.init(dialogPhase:_:)();
  OUTLINED_FUNCTION_76_5();
  OUTLINED_FUNCTION_30_22();
  OUTLINED_FUNCTION_12_44();
  OUTLINED_FUNCTION_32_15();
  OUTLINED_FUNCTION_105_3();
  OUTLINED_FUNCTION_104_1();
  v27 = v67;
  OUTLINED_FUNCTION_28_0(v65, v66);
  v28 = *(v27 + 72);

  v29 = OUTLINED_FUNCTION_72();
  v28(v29);

  OUTLINED_FUNCTION_2_78();

  OUTLINED_FUNCTION_5_61();
  OUTLINED_FUNCTION_22_20();
  lazy protocol witness table accessor for type AnyValueFlow<ExecuteOnRemoteFlowResult> and conformance AnyValueFlow<A>(v30, &_s27PhoneCallFlowDelegatePlugin039CallingIntentContactNeedsDisambiguationC8StrategyCyAA010StartAudiob7RCHFlowD0CGMd, &_s27PhoneCallFlowDelegatePlugin039CallingIntentContactNeedsDisambiguationC8StrategyCyAA010StartAudiob7RCHFlowD0CGMR);
  OUTLINED_FUNCTION_19_29();
  static RCHChildFlowFactoryHelper.makeNeedsDisambiguationFlowProducer<A>(strategy:)();
  OUTLINED_FUNCTION_52_13();
  OUTLINED_FUNCTION_72();
  RCHChildFlowProducersAsync.needsDisambiguationFlowProducer.setter();
  static CATOption.defaultMode.getter();
  OUTLINED_FUNCTION_19_13();
  CATWrapper.__allocating_init(options:globals:)();
  static CATOption.defaultMode.getter();
  OUTLINED_FUNCTION_19_13();
  v58 = CATWrapper.__allocating_init(options:globals:)();
  static CATOption.defaultMode.getter();
  OUTLINED_FUNCTION_19_13();
  CATWrapperSimple.__allocating_init(options:globals:)();
  static CATOption.defaultMode.getter();
  OUTLINED_FUNCTION_19_13();
  CATWrapper.__allocating_init(options:globals:)();
  static CATOption.defaultMode.getter();
  OUTLINED_FUNCTION_19_13();
  CATWrapperSimple.__allocating_init(options:globals:)();
  static CATOption.defaultMode.getter();
  OUTLINED_FUNCTION_19_13();
  v31 = CATWrapper.__allocating_init(options:globals:)();
  static CATOption.defaultMode.getter();
  OUTLINED_FUNCTION_19_13();
  CATWrapperSimple.__allocating_init(options:globals:)();
  v32 = OUTLINED_FUNCTION_12_8(v63);
  swift_allocObject();
  ResponseFactory.init()();
  OUTLINED_FUNCTION_90_1();
  static SiriKitEventSender.current.getter();
  v33 = OUTLINED_FUNCTION_79();
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin025CallingIntentConfirmationC8StrategyCyAA010StartAudiob7RCHFlowD0CGMd, &_s27PhoneCallFlowDelegatePlugin025CallingIntentConfirmationC8StrategyCyAA010StartAudiob7RCHFlowD0CGMR);
  OUTLINED_FUNCTION_12_8(v56);
  v34 = swift_allocObject();
  v80 = v59;
  v81 = &protocol witness table for StartCallCATPatternsExecutor;
  v79 = v58;
  v77 = v60;
  v78 = &protocol witness table for PhoneCallCommonCATPatternsExecutor;
  v76 = v31;
  v74 = v61;
  v75 = &protocol witness table for AppInfoBuilder;
  v73 = v33;
  v35 = type metadata accessor for ConfirmationResponse();
  OUTLINED_FUNCTION_99_1(v35);
  *(v34 + direct field offset for CallingIntentConfirmationFlowStrategy.personToConfirm) = 0;
  OUTLINED_FUNCTION_79_5();
  OUTLINED_FUNCTION_80_4();
  OUTLINED_FUNCTION_83_4();
  OUTLINED_FUNCTION_78_7();
  v69 = v32;
  v70 = &protocol witness table for ResponseFactory;
  v68 = v28;

  OUTLINED_FUNCTION_77_8();
  OUTLINED_FUNCTION_53_16();
  OUTLINED_FUNCTION_74_5();
  OUTLINED_FUNCTION_30_22();
  OUTLINED_FUNCTION_12_44();
  OUTLINED_FUNCTION_32_15();
  OUTLINED_FUNCTION_105_3();
  OUTLINED_FUNCTION_104_1();
  v37 = v66;
  v36 = v67;
  OUTLINED_FUNCTION_28_0(v65, v66);
  v38 = *(v36 + 72);

  v38(v37, v36);

  OUTLINED_FUNCTION_2_78();

  OUTLINED_FUNCTION_5_61();
  OUTLINED_FUNCTION_21_26();
  lazy protocol witness table accessor for type AnyValueFlow<ExecuteOnRemoteFlowResult> and conformance AnyValueFlow<A>(v39, &_s27PhoneCallFlowDelegatePlugin025CallingIntentConfirmationC8StrategyCyAA010StartAudiob7RCHFlowD0CGMd, &_s27PhoneCallFlowDelegatePlugin025CallingIntentConfirmationC8StrategyCyAA010StartAudiob7RCHFlowD0CGMR);
  OUTLINED_FUNCTION_19_29();
  static RCHChildFlowFactoryHelper.makeNeedsConfirmationFlowProducer<A>(strategy:)();
  OUTLINED_FUNCTION_52_13();
  OUTLINED_FUNCTION_72();
  RCHChildFlowProducersAsync.needsConfirmationFlowProducer.setter();
  v40 = swift_allocObject();
  OUTLINED_FUNCTION_81_4(v40);

  OUTLINED_FUNCTION_34_11();
  RCHChildFlowProducersAsync.needsValueFlowProducer.setter();

  OUTLINED_FUNCTION_101_2();
  static CATOption.defaultMode.getter();
  OUTLINED_FUNCTION_19_13();
  v41 = CATWrapper.__allocating_init(options:globals:)();
  OUTLINED_FUNCTION_111_3(v41);
  OUTLINED_FUNCTION_19_13();
  v42 = CATWrapper.__allocating_init(options:globals:)();
  static CATOption.defaultMode.getter();
  OUTLINED_FUNCTION_19_13();
  v43 = CATWrapperSimple.__allocating_init(options:globals:)();
  OUTLINED_FUNCTION_110_2(v43);
  OUTLINED_FUNCTION_19_13();
  v44 = CATWrapper.__allocating_init(options:globals:)();
  OUTLINED_FUNCTION_109_2(v44);
  OUTLINED_FUNCTION_19_13();
  v45 = CATWrapperSimple.__allocating_init(options:globals:)();
  OUTLINED_FUNCTION_108_2(v45);
  OUTLINED_FUNCTION_19_13();
  v46 = CATWrapper.__allocating_init(options:globals:)();
  static CATOption.defaultMode.getter();
  OUTLINED_FUNCTION_19_13();
  CATWrapperSimple.__allocating_init(options:globals:)();
  OUTLINED_FUNCTION_12_8(v63);
  swift_allocObject();
  v47 = ResponseFactory.init()();
  static SiriKitEventSender.current.getter();
  v48 = OUTLINED_FUNCTION_79();
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin019CallingIntentHandlegC8StrategyCyAA010StartAudiob7RCHFlowD0CGMd, &_s27PhoneCallFlowDelegatePlugin019CallingIntentHandlegC8StrategyCyAA010StartAudiob7RCHFlowD0CGMR);
  OUTLINED_FUNCTION_12_8(v49);
  v50 = swift_allocObject();
  v80 = v59;
  v81 = &protocol witness table for StartCallCATPatternsExecutor;
  v79 = v42;
  v77 = v60;
  v78 = &protocol witness table for PhoneCallCommonCATPatternsExecutor;
  v76 = v46;
  v74 = v61;
  v75 = &protocol witness table for AppInfoBuilder;
  v73 = v48;
  *(v50 + direct field offset for CallingIntentHandleIntentFlowStrategy.cancellable) = 0;
  OUTLINED_FUNCTION_79_5();
  OUTLINED_FUNCTION_80_4();
  OUTLINED_FUNCTION_83_4();
  OUTLINED_FUNCTION_78_7();
  v69 = v63;
  v70 = &protocol witness table for ResponseFactory;
  v68 = v47;

  OUTLINED_FUNCTION_77_8();
  OUTLINED_FUNCTION_53_16();
  OUTLINED_FUNCTION_75_7();
  OUTLINED_FUNCTION_98_4();
  OUTLINED_FUNCTION_63_8();
  OUTLINED_FUNCTION_97_2();
  outlined init with copy of SignalProviding(&v72, v50 + 224);
  outlined init with copy of SignalProviding(v50 + 24, v65);
  v51 = v67;
  OUTLINED_FUNCTION_28_0(v65, v66);
  v52 = *(v51 + 72);

  v53 = OUTLINED_FUNCTION_93_5();
  v52(v53);

  OUTLINED_FUNCTION_2_78();

  outlined init with take of SPHConversation(&v64, v50 + 264);
  __swift_destroy_boxed_opaque_existential_1(v65);
  OUTLINED_FUNCTION_10_50(&v71, v50 + 304);
  v82[0] = v50;
  OUTLINED_FUNCTION_26_21();
  lazy protocol witness table accessor for type AnyValueFlow<ExecuteOnRemoteFlowResult> and conformance AnyValueFlow<A>(v54, &_s27PhoneCallFlowDelegatePlugin019CallingIntentHandlegC8StrategyCyAA010StartAudiob7RCHFlowD0CGMd, &_s27PhoneCallFlowDelegatePlugin019CallingIntentHandlegC8StrategyCyAA010StartAudiob7RCHFlowD0CGMR);
  OUTLINED_FUNCTION_19_29();
  static RCHChildFlowFactoryHelper.makeHandleIntentFlowProducer<A>(strategy:)();
  OUTLINED_FUNCTION_29_18();

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow08RCHChildC9ProducersVySo22INStartAudioCallIntentCSo0fghI8ResponseCGMd, &_s11SiriKitFlow08RCHChildC9ProducersVySo22INStartAudioCallIntentCSo0fghI8ResponseCGMR);
  OUTLINED_FUNCTION_43_3();
  RCHChildFlowProducers.handleIntentFlowCompletion.setter();
  OUTLINED_FUNCTION_65();
}

void _s27PhoneCallFlowDelegatePlugin0abC7FactoryO015getGenericStartB9Producers8delegate3appAC0a7RCHFlowJ0Vy_10IntentTypeQz0n8ResponseO0QzGx_17SiriAppResolution0R0CtAA07CallingnmD0RzlFZAA0i5VideobmD0C_Tt2g5()
{
  OUTLINED_FUNCTION_66();
  v3 = OUTLINED_FUNCTION_84_5(v1, v2);
  v4 = OUTLINED_FUNCTION_21(v3);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_15_0();
  v7 = type metadata accessor for CATOption();
  v8 = OUTLINED_FUNCTION_21(v7);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  OUTLINED_FUNCTION_4();
  v11 = OUTLINED_FUNCTION_47_17();
  _s27PhoneCallFlowDelegatePlugin0abC7FactoryO12getProducers33_CD8279EFAB3EC33E52197D7782D744418delegate3appAC0a7RCHFlowH0Vy_10IntentTypeQz0r8ResponseS0QzGx_17SiriAppResolution0V0CtAA0aqD0RzlFZAA010StartVideobqD0C_Tt2g5(v11, v12, v13);
  outlined init with copy of SignalProviding(v0 + direct field offset for StartVideoCallRCHFlowDelegate.sharedGlobals, v82);
  OUTLINED_FUNCTION_102_0();
  v14 = swift_allocObject();
  OUTLINED_FUNCTION_100_3(v14);
  v62 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0abC7FactoryO0A16RCHFlowProducersVy_So012INStartVideoB6IntentCSo0ijbK8ResponseCGMd, &_s27PhoneCallFlowDelegatePlugin0abC7FactoryO0A16RCHFlowProducersVy_So012INStartVideoB6IntentCSo0ijbK8ResponseCGMR) + 36);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow08RCHChildC14ProducersAsyncVySo22INStartVideoCallIntentCSo0ghiJ8ResponseCGMd, &_s11SiriKitFlow08RCHChildC14ProducersAsyncVySo22INStartVideoCallIntentCSo0ghiJ8ResponseCGMR);
  OUTLINED_FUNCTION_34_11();
  RCHChildFlowProducersAsync.appResolutionBeforeNextResolveFlowProducer.setter();
  v15 = type metadata accessor for StartCallCATs();
  OUTLINED_FUNCTION_111_3(v15);
  OUTLINED_FUNCTION_19_13();
  CATWrapper.__allocating_init(options:globals:)();
  v16 = type metadata accessor for StartCallCATPatternsExecutor(0);
  static CATOption.defaultMode.getter();
  OUTLINED_FUNCTION_19_13();
  v17 = v16;
  v59 = v16;
  v18 = CATWrapper.__allocating_init(options:globals:)();
  v19 = type metadata accessor for StartCallCATsSimple();
  OUTLINED_FUNCTION_110_2(v19);
  OUTLINED_FUNCTION_19_13();
  CATWrapperSimple.__allocating_init(options:globals:)();
  v20 = type metadata accessor for PhoneCallCommonCATs();
  OUTLINED_FUNCTION_109_2(v20);
  OUTLINED_FUNCTION_19_13();
  CATWrapper.__allocating_init(options:globals:)();
  v21 = type metadata accessor for PhoneCallCommonCATsSimple();
  OUTLINED_FUNCTION_108_2(v21);
  OUTLINED_FUNCTION_19_13();
  CATWrapperSimple.__allocating_init(options:globals:)();
  v22 = type metadata accessor for PhoneCallCommonCATPatternsExecutor();
  static CATOption.defaultMode.getter();
  OUTLINED_FUNCTION_19_13();
  v60 = v22;
  v55 = CATWrapper.__allocating_init(options:globals:)();
  type metadata accessor for PhoneCallDisplayTextCATsSimple();
  static CATOption.defaultMode.getter();
  OUTLINED_FUNCTION_19_13();
  CATWrapperSimple.__allocating_init(options:globals:)();
  v23 = type metadata accessor for ResponseFactory();
  v63 = OUTLINED_FUNCTION_12_8(v23);
  swift_allocObject();
  v57 = ResponseFactory.init()();
  static SiriKitEventSender.current.getter();
  v61 = type metadata accessor for AppInfoBuilder();
  v24 = OUTLINED_FUNCTION_79();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin039CallingIntentContactNeedsDisambiguationC8StrategyCyAA010StartVideob7RCHFlowD0CGMd, &_s27PhoneCallFlowDelegatePlugin039CallingIntentContactNeedsDisambiguationC8StrategyCyAA010StartVideob7RCHFlowD0CGMR);
  OUTLINED_FUNCTION_12_8(v25);
  v26 = swift_allocObject();
  v80 = v17;
  v81 = &protocol witness table for StartCallCATPatternsExecutor;
  v79 = v18;
  v78 = &protocol witness table for PhoneCallCommonCATPatternsExecutor;
  v77 = v22;
  v76 = v55;
  *(v26 + direct field offset for CallingIntentContactNeedsDisambiguationFlowStrategy.personsToDisambiguate) = &_swiftEmptyArrayStorage;
  v75 = &protocol witness table for AppInfoBuilder;
  v74 = v61;
  v73 = v24;
  *(v26 + direct field offset for CallingIntentContactNeedsDisambiguationFlowStrategy.selectedPerson) = 0;
  *(v26 + direct field offset for CallingIntentContactNeedsDisambiguationFlowStrategy.requiresReprompt) = 0;
  *(v26 + direct field offset for CallingIntentContactNeedsDisambiguationFlowStrategy.shouldClearContext) = 0;
  OUTLINED_FUNCTION_79_5();
  OUTLINED_FUNCTION_80_4();
  OUTLINED_FUNCTION_83_4();
  OUTLINED_FUNCTION_78_7();
  v69 = v63;
  v70 = &protocol witness table for ResponseFactory;
  v68 = v57;

  OUTLINED_FUNCTION_77_8();
  OUTLINED_FUNCTION_23_21();
  OutputGenerationManifest.init(dialogPhase:_:)();
  OUTLINED_FUNCTION_76_5();
  OUTLINED_FUNCTION_30_22();
  OUTLINED_FUNCTION_12_44();
  OUTLINED_FUNCTION_32_15();
  OUTLINED_FUNCTION_105_3();
  OUTLINED_FUNCTION_104_1();
  v27 = v67;
  OUTLINED_FUNCTION_28_0(v65, v66);
  v28 = *(v27 + 72);

  v29 = OUTLINED_FUNCTION_72();
  v28(v29);

  OUTLINED_FUNCTION_2_78();

  OUTLINED_FUNCTION_5_61();
  OUTLINED_FUNCTION_22_20();
  lazy protocol witness table accessor for type AnyValueFlow<ExecuteOnRemoteFlowResult> and conformance AnyValueFlow<A>(v30, &_s27PhoneCallFlowDelegatePlugin039CallingIntentContactNeedsDisambiguationC8StrategyCyAA010StartVideob7RCHFlowD0CGMd, &_s27PhoneCallFlowDelegatePlugin039CallingIntentContactNeedsDisambiguationC8StrategyCyAA010StartVideob7RCHFlowD0CGMR);
  OUTLINED_FUNCTION_19_29();
  static RCHChildFlowFactoryHelper.makeNeedsDisambiguationFlowProducer<A>(strategy:)();
  OUTLINED_FUNCTION_52_13();
  OUTLINED_FUNCTION_72();
  RCHChildFlowProducersAsync.needsDisambiguationFlowProducer.setter();
  static CATOption.defaultMode.getter();
  OUTLINED_FUNCTION_19_13();
  CATWrapper.__allocating_init(options:globals:)();
  static CATOption.defaultMode.getter();
  OUTLINED_FUNCTION_19_13();
  v58 = CATWrapper.__allocating_init(options:globals:)();
  static CATOption.defaultMode.getter();
  OUTLINED_FUNCTION_19_13();
  CATWrapperSimple.__allocating_init(options:globals:)();
  static CATOption.defaultMode.getter();
  OUTLINED_FUNCTION_19_13();
  CATWrapper.__allocating_init(options:globals:)();
  static CATOption.defaultMode.getter();
  OUTLINED_FUNCTION_19_13();
  CATWrapperSimple.__allocating_init(options:globals:)();
  static CATOption.defaultMode.getter();
  OUTLINED_FUNCTION_19_13();
  v31 = CATWrapper.__allocating_init(options:globals:)();
  static CATOption.defaultMode.getter();
  OUTLINED_FUNCTION_19_13();
  CATWrapperSimple.__allocating_init(options:globals:)();
  v32 = OUTLINED_FUNCTION_12_8(v63);
  swift_allocObject();
  ResponseFactory.init()();
  OUTLINED_FUNCTION_90_1();
  static SiriKitEventSender.current.getter();
  v33 = OUTLINED_FUNCTION_79();
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin025CallingIntentConfirmationC8StrategyCyAA010StartVideob7RCHFlowD0CGMd, &_s27PhoneCallFlowDelegatePlugin025CallingIntentConfirmationC8StrategyCyAA010StartVideob7RCHFlowD0CGMR);
  OUTLINED_FUNCTION_12_8(v56);
  v34 = swift_allocObject();
  v80 = v59;
  v81 = &protocol witness table for StartCallCATPatternsExecutor;
  v79 = v58;
  v77 = v60;
  v78 = &protocol witness table for PhoneCallCommonCATPatternsExecutor;
  v76 = v31;
  v74 = v61;
  v75 = &protocol witness table for AppInfoBuilder;
  v73 = v33;
  v35 = type metadata accessor for ConfirmationResponse();
  OUTLINED_FUNCTION_99_1(v35);
  *(v34 + direct field offset for CallingIntentConfirmationFlowStrategy.personToConfirm) = 0;
  OUTLINED_FUNCTION_79_5();
  OUTLINED_FUNCTION_80_4();
  OUTLINED_FUNCTION_83_4();
  OUTLINED_FUNCTION_78_7();
  v69 = v32;
  v70 = &protocol witness table for ResponseFactory;
  v68 = v28;

  OUTLINED_FUNCTION_77_8();
  OUTLINED_FUNCTION_53_16();
  OUTLINED_FUNCTION_74_5();
  OUTLINED_FUNCTION_30_22();
  OUTLINED_FUNCTION_12_44();
  OUTLINED_FUNCTION_32_15();
  OUTLINED_FUNCTION_105_3();
  OUTLINED_FUNCTION_104_1();
  v37 = v66;
  v36 = v67;
  OUTLINED_FUNCTION_28_0(v65, v66);
  v38 = *(v36 + 72);

  v38(v37, v36);

  OUTLINED_FUNCTION_2_78();

  OUTLINED_FUNCTION_5_61();
  OUTLINED_FUNCTION_21_26();
  lazy protocol witness table accessor for type AnyValueFlow<ExecuteOnRemoteFlowResult> and conformance AnyValueFlow<A>(v39, &_s27PhoneCallFlowDelegatePlugin025CallingIntentConfirmationC8StrategyCyAA010StartVideob7RCHFlowD0CGMd, &_s27PhoneCallFlowDelegatePlugin025CallingIntentConfirmationC8StrategyCyAA010StartVideob7RCHFlowD0CGMR);
  OUTLINED_FUNCTION_19_29();
  static RCHChildFlowFactoryHelper.makeNeedsConfirmationFlowProducer<A>(strategy:)();
  OUTLINED_FUNCTION_52_13();
  OUTLINED_FUNCTION_72();
  RCHChildFlowProducersAsync.needsConfirmationFlowProducer.setter();
  v40 = swift_allocObject();
  OUTLINED_FUNCTION_81_4(v40);

  OUTLINED_FUNCTION_34_11();
  RCHChildFlowProducersAsync.needsValueFlowProducer.setter();

  OUTLINED_FUNCTION_101_2();
  static CATOption.defaultMode.getter();
  OUTLINED_FUNCTION_19_13();
  v41 = CATWrapper.__allocating_init(options:globals:)();
  OUTLINED_FUNCTION_111_3(v41);
  OUTLINED_FUNCTION_19_13();
  v42 = CATWrapper.__allocating_init(options:globals:)();
  static CATOption.defaultMode.getter();
  OUTLINED_FUNCTION_19_13();
  v43 = CATWrapperSimple.__allocating_init(options:globals:)();
  OUTLINED_FUNCTION_110_2(v43);
  OUTLINED_FUNCTION_19_13();
  v44 = CATWrapper.__allocating_init(options:globals:)();
  OUTLINED_FUNCTION_109_2(v44);
  OUTLINED_FUNCTION_19_13();
  v45 = CATWrapperSimple.__allocating_init(options:globals:)();
  OUTLINED_FUNCTION_108_2(v45);
  OUTLINED_FUNCTION_19_13();
  v46 = CATWrapper.__allocating_init(options:globals:)();
  static CATOption.defaultMode.getter();
  OUTLINED_FUNCTION_19_13();
  CATWrapperSimple.__allocating_init(options:globals:)();
  OUTLINED_FUNCTION_12_8(v63);
  swift_allocObject();
  v47 = ResponseFactory.init()();
  static SiriKitEventSender.current.getter();
  v48 = OUTLINED_FUNCTION_79();
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin019CallingIntentHandlegC8StrategyCyAA010StartVideob7RCHFlowD0CGMd, &_s27PhoneCallFlowDelegatePlugin019CallingIntentHandlegC8StrategyCyAA010StartVideob7RCHFlowD0CGMR);
  OUTLINED_FUNCTION_12_8(v49);
  v50 = swift_allocObject();
  v80 = v59;
  v81 = &protocol witness table for StartCallCATPatternsExecutor;
  v79 = v42;
  v77 = v60;
  v78 = &protocol witness table for PhoneCallCommonCATPatternsExecutor;
  v76 = v46;
  v74 = v61;
  v75 = &protocol witness table for AppInfoBuilder;
  v73 = v48;
  *(v50 + direct field offset for CallingIntentHandleIntentFlowStrategy.cancellable) = 0;
  OUTLINED_FUNCTION_79_5();
  OUTLINED_FUNCTION_80_4();
  OUTLINED_FUNCTION_83_4();
  OUTLINED_FUNCTION_78_7();
  v69 = v63;
  v70 = &protocol witness table for ResponseFactory;
  v68 = v47;

  OUTLINED_FUNCTION_77_8();
  OUTLINED_FUNCTION_53_16();
  OUTLINED_FUNCTION_75_7();
  OUTLINED_FUNCTION_98_4();
  OUTLINED_FUNCTION_63_8();
  OUTLINED_FUNCTION_97_2();
  outlined init with copy of SignalProviding(&v72, v50 + 224);
  outlined init with copy of SignalProviding(v50 + 24, v65);
  v51 = v67;
  OUTLINED_FUNCTION_28_0(v65, v66);
  v52 = *(v51 + 72);

  v53 = OUTLINED_FUNCTION_93_5();
  v52(v53);

  OUTLINED_FUNCTION_2_78();

  outlined init with take of SPHConversation(&v64, v50 + 264);
  __swift_destroy_boxed_opaque_existential_1(v65);
  OUTLINED_FUNCTION_10_50(&v71, v50 + 304);
  v82[0] = v50;
  OUTLINED_FUNCTION_26_21();
  lazy protocol witness table accessor for type AnyValueFlow<ExecuteOnRemoteFlowResult> and conformance AnyValueFlow<A>(v54, &_s27PhoneCallFlowDelegatePlugin019CallingIntentHandlegC8StrategyCyAA010StartVideob7RCHFlowD0CGMd, &_s27PhoneCallFlowDelegatePlugin019CallingIntentHandlegC8StrategyCyAA010StartVideob7RCHFlowD0CGMR);
  OUTLINED_FUNCTION_19_29();
  static RCHChildFlowFactoryHelper.makeHandleIntentFlowProducer<A>(strategy:)();
  OUTLINED_FUNCTION_29_18();

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow08RCHChildC9ProducersVySo22INStartVideoCallIntentCSo0fghI8ResponseCGMd, &_s11SiriKitFlow08RCHChildC9ProducersVySo22INStartVideoCallIntentCSo0fghI8ResponseCGMR);
  OUTLINED_FUNCTION_43_3();
  RCHChildFlowProducers.handleIntentFlowCompletion.setter();
  OUTLINED_FUNCTION_65();
}

uint64_t static PhoneCallFlowFactory.getGenericStartCallProducers<A>(delegate:app:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v8 = *(a4 + 8);
  static PhoneCallFlowFactory.getProducers<A>(delegate:app:)(a1, a2, a3, v8, a5);
  v99[0] = a1;
  (*(*(v8 + 8) + 8))(v100, a3);
  v10 = static PhoneCallFlowFactory.makeAppResolutionFlowBeforeNextResolveFlowProducer<A>(delegate:app:sharedGlobal:)(a1, a2, v100, a3, v8);
  __swift_destroy_boxed_opaque_existential_1(v100);
  v11 = *(v8 + 16);
  OUTLINED_FUNCTION_102_2();
  OUTLINED_FUNCTION_102_2();
  OUTLINED_FUNCTION_28_2();
  v95 = *(type metadata accessor for PhoneCallFlowFactory.PhoneRCHFlowProducers() + 36);
  OUTLINED_FUNCTION_28_2();
  type metadata accessor for RCHChildFlowProducersAsync();
  RCHChildFlowProducersAsync.appResolutionBeforeNextResolveFlowProducer.setter();
  OUTLINED_FUNCTION_61_14();
  type metadata accessor for CallingIntentContactNeedsDisambiguationFlowStrategy();
  OUTLINED_FUNCTION_5();
  swift_unknownObjectRetain();
  v12 = OUTLINED_FUNCTION_14_6();
  default argument 1 of CallingIntentBaseFlowStrategy.init(delegate:startCallCATs:startCallCatPatterns:startCallCATsSimple:phoneCallCommonCATs:phoneCallCommonCATsSimple:phoneCallCommonCatPatterns:phoneCallDisplayTextCATsSimple:responseGenerator:siriKitEventSender:appInfoBuilder:)(v12, v13);
  OUTLINED_FUNCTION_90_1();
  OUTLINED_FUNCTION_14_6();
  default argument 2 of CallingIntentBaseFlowStrategy.init(delegate:startCallCATs:startCallCatPatterns:startCallCATsSimple:phoneCallCommonCATs:phoneCallCommonCATsSimple:phoneCallCommonCatPatterns:phoneCallDisplayTextCATsSimple:responseGenerator:siriKitEventSender:appInfoBuilder:)(v14);
  v15 = OUTLINED_FUNCTION_14_6();
  v17 = default argument 3 of CallingIntentBaseFlowStrategy.init(delegate:startCallCATs:startCallCatPatterns:startCallCATsSimple:phoneCallCommonCATs:phoneCallCommonCATsSimple:phoneCallCommonCatPatterns:phoneCallDisplayTextCATsSimple:responseGenerator:siriKitEventSender:appInfoBuilder:)(v15, v16);
  v18 = OUTLINED_FUNCTION_14_6();
  v20 = default argument 4 of CallingIntentBaseFlowStrategy.init(delegate:startCallCATs:startCallCatPatterns:startCallCATsSimple:phoneCallCommonCATs:phoneCallCommonCATsSimple:phoneCallCommonCatPatterns:phoneCallDisplayTextCATsSimple:responseGenerator:siriKitEventSender:appInfoBuilder:)(v18, v19);
  v21 = OUTLINED_FUNCTION_14_6();
  v23 = default argument 5 of CallingIntentBaseFlowStrategy.init(delegate:startCallCATs:startCallCatPatterns:startCallCATsSimple:phoneCallCommonCATs:phoneCallCommonCATsSimple:phoneCallCommonCatPatterns:phoneCallDisplayTextCATsSimple:responseGenerator:siriKitEventSender:appInfoBuilder:)(v21, v22);
  OUTLINED_FUNCTION_14_6();
  default argument 6 of CallingIntentBaseFlowStrategy.init(delegate:startCallCATs:startCallCatPatterns:startCallCATsSimple:phoneCallCommonCATs:phoneCallCommonCATsSimple:phoneCallCommonCatPatterns:phoneCallDisplayTextCATsSimple:responseGenerator:siriKitEventSender:appInfoBuilder:)(v24);
  v25 = OUTLINED_FUNCTION_14_6();
  v27 = default argument 7 of CallingIntentBaseFlowStrategy.init(delegate:startCallCATs:startCallCatPatterns:startCallCATsSimple:phoneCallCommonCATs:phoneCallCommonCATsSimple:phoneCallCommonCatPatterns:phoneCallDisplayTextCATsSimple:responseGenerator:siriKitEventSender:appInfoBuilder:)(v25, v26);
  OUTLINED_FUNCTION_14_6();
  default argument 8 of CallingIntentBaseFlowStrategy.init(delegate:startCallCATs:startCallCatPatterns:startCallCATsSimple:phoneCallCommonCATs:phoneCallCommonCATsSimple:phoneCallCommonCatPatterns:phoneCallDisplayTextCATsSimple:responseGenerator:siriKitEventSender:appInfoBuilder:)();
  v28 = OUTLINED_FUNCTION_14_6();
  SharedGlobalsProviding.siriKitEventSender.getter(v30, v28, v29);
  v31 = OUTLINED_FUNCTION_14_6();
  default argument 10 of CallingIntentBaseFlowStrategy.init(delegate:startCallCATs:startCallCatPatterns:startCallCATsSimple:phoneCallCommonCATs:phoneCallCommonCATsSimple:phoneCallCommonCatPatterns:phoneCallDisplayTextCATsSimple:responseGenerator:siriKitEventSender:appInfoBuilder:)(v31, v32);
  v33 = CallingIntentContactNeedsDisambiguationFlowStrategy.__allocating_init(delegate:startCallCATs:startCallCatPatterns:startCallCATsSimple:phoneCallCommonCATs:phoneCallCommonCATsSimple:phoneCallCommonCatPatterns:phoneCallDisplayTextCATsSimple:responseGenerator:siriKitEventSender:appInfoBuilder:)(a1, v10, v100, v17, v20, v23, v99, v27, v98, v97, v96);
  OUTLINED_FUNCTION_96_2(v33);
  OUTLINED_FUNCTION_82_4();
  OUTLINED_FUNCTION_17_31();
  static RCHChildFlowFactoryHelper.makeNeedsDisambiguationFlowProducer<A>(strategy:)();

  RCHChildFlowProducersAsync.needsDisambiguationFlowProducer.setter();
  OUTLINED_FUNCTION_61_14();
  type metadata accessor for CallingIntentConfirmationFlowStrategy();
  OUTLINED_FUNCTION_5();
  swift_unknownObjectRetain();
  v34 = OUTLINED_FUNCTION_14_6();
  default argument 1 of CallingIntentBaseFlowStrategy.init(delegate:startCallCATs:startCallCatPatterns:startCallCATsSimple:phoneCallCommonCATs:phoneCallCommonCATsSimple:phoneCallCommonCatPatterns:phoneCallDisplayTextCATsSimple:responseGenerator:siriKitEventSender:appInfoBuilder:)(v34, v35);
  OUTLINED_FUNCTION_90_1();
  OUTLINED_FUNCTION_14_6();
  default argument 2 of CallingIntentBaseFlowStrategy.init(delegate:startCallCATs:startCallCatPatterns:startCallCATsSimple:phoneCallCommonCATs:phoneCallCommonCATsSimple:phoneCallCommonCatPatterns:phoneCallDisplayTextCATsSimple:responseGenerator:siriKitEventSender:appInfoBuilder:)(v36);
  v37 = OUTLINED_FUNCTION_14_6();
  v39 = default argument 3 of CallingIntentBaseFlowStrategy.init(delegate:startCallCATs:startCallCatPatterns:startCallCATsSimple:phoneCallCommonCATs:phoneCallCommonCATsSimple:phoneCallCommonCatPatterns:phoneCallDisplayTextCATsSimple:responseGenerator:siriKitEventSender:appInfoBuilder:)(v37, v38);
  v40 = OUTLINED_FUNCTION_14_6();
  v42 = default argument 4 of CallingIntentBaseFlowStrategy.init(delegate:startCallCATs:startCallCatPatterns:startCallCATsSimple:phoneCallCommonCATs:phoneCallCommonCATsSimple:phoneCallCommonCatPatterns:phoneCallDisplayTextCATsSimple:responseGenerator:siriKitEventSender:appInfoBuilder:)(v40, v41);
  v43 = OUTLINED_FUNCTION_14_6();
  v45 = default argument 5 of CallingIntentBaseFlowStrategy.init(delegate:startCallCATs:startCallCatPatterns:startCallCATsSimple:phoneCallCommonCATs:phoneCallCommonCATsSimple:phoneCallCommonCatPatterns:phoneCallDisplayTextCATsSimple:responseGenerator:siriKitEventSender:appInfoBuilder:)(v43, v44);
  OUTLINED_FUNCTION_14_6();
  default argument 6 of CallingIntentBaseFlowStrategy.init(delegate:startCallCATs:startCallCatPatterns:startCallCATsSimple:phoneCallCommonCATs:phoneCallCommonCATsSimple:phoneCallCommonCatPatterns:phoneCallDisplayTextCATsSimple:responseGenerator:siriKitEventSender:appInfoBuilder:)(v46);
  v47 = OUTLINED_FUNCTION_14_6();
  v49 = default argument 7 of CallingIntentBaseFlowStrategy.init(delegate:startCallCATs:startCallCatPatterns:startCallCATsSimple:phoneCallCommonCATs:phoneCallCommonCATsSimple:phoneCallCommonCatPatterns:phoneCallDisplayTextCATsSimple:responseGenerator:siriKitEventSender:appInfoBuilder:)(v47, v48);
  OUTLINED_FUNCTION_14_6();
  default argument 8 of CallingIntentBaseFlowStrategy.init(delegate:startCallCATs:startCallCatPatterns:startCallCATsSimple:phoneCallCommonCATs:phoneCallCommonCATsSimple:phoneCallCommonCatPatterns:phoneCallDisplayTextCATsSimple:responseGenerator:siriKitEventSender:appInfoBuilder:)();
  v50 = OUTLINED_FUNCTION_14_6();
  SharedGlobalsProviding.siriKitEventSender.getter(v52, v50, v51);
  v53 = OUTLINED_FUNCTION_14_6();
  default argument 10 of CallingIntentBaseFlowStrategy.init(delegate:startCallCATs:startCallCatPatterns:startCallCATsSimple:phoneCallCommonCATs:phoneCallCommonCATsSimple:phoneCallCommonCatPatterns:phoneCallDisplayTextCATsSimple:responseGenerator:siriKitEventSender:appInfoBuilder:)(v53, v54);
  v55 = OUTLINED_FUNCTION_35_16();
  v58 = CallingIntentConfirmationFlowStrategy.__allocating_init(delegate:startCallCATs:startCallCatPatterns:startCallCATsSimple:phoneCallCommonCATs:phoneCallCommonCATsSimple:phoneCallCommonCatPatterns:phoneCallDisplayTextCATsSimple:responseGenerator:siriKitEventSender:appInfoBuilder:)(v55, v10, v56, v39, v42, v45, v57, v49, v88, v90, v92);
  OUTLINED_FUNCTION_96_2(v58);
  OUTLINED_FUNCTION_82_4();
  OUTLINED_FUNCTION_17_31();
  static RCHChildFlowFactoryHelper.makeNeedsConfirmationFlowProducer<A>(strategy:)();

  RCHChildFlowProducersAsync.needsConfirmationFlowProducer.setter();
  OUTLINED_FUNCTION_68_0();
  v59 = swift_allocObject();
  v59[2] = a3;
  v59[3] = a4;
  v59[4] = a1;
  v59[5] = a2;
  swift_unknownObjectRetain();

  RCHChildFlowProducersAsync.needsValueFlowProducer.setter();
  v60 = swift_allocObject();
  v60[2] = a3;
  v60[3] = a4;
  v60[4] = a1;
  swift_unknownObjectRetain();
  RCHChildFlowProducersAsync.unsupportedValueFlowProducer.setter();
  OUTLINED_FUNCTION_61_14();
  type metadata accessor for CallingIntentHandleIntentFlowStrategy();
  OUTLINED_FUNCTION_5();
  swift_unknownObjectRetain();
  v61 = OUTLINED_FUNCTION_14_6();
  v63 = default argument 1 of CallingIntentBaseFlowStrategy.init(delegate:startCallCATs:startCallCatPatterns:startCallCATsSimple:phoneCallCommonCATs:phoneCallCommonCATsSimple:phoneCallCommonCatPatterns:phoneCallDisplayTextCATsSimple:responseGenerator:siriKitEventSender:appInfoBuilder:)(v61, v62);
  OUTLINED_FUNCTION_14_6();
  default argument 2 of CallingIntentBaseFlowStrategy.init(delegate:startCallCATs:startCallCatPatterns:startCallCATsSimple:phoneCallCommonCATs:phoneCallCommonCATsSimple:phoneCallCommonCatPatterns:phoneCallDisplayTextCATsSimple:responseGenerator:siriKitEventSender:appInfoBuilder:)(v64);
  v65 = OUTLINED_FUNCTION_14_6();
  v67 = default argument 3 of CallingIntentBaseFlowStrategy.init(delegate:startCallCATs:startCallCatPatterns:startCallCATsSimple:phoneCallCommonCATs:phoneCallCommonCATsSimple:phoneCallCommonCatPatterns:phoneCallDisplayTextCATsSimple:responseGenerator:siriKitEventSender:appInfoBuilder:)(v65, v66);
  v68 = OUTLINED_FUNCTION_14_6();
  v70 = default argument 4 of CallingIntentBaseFlowStrategy.init(delegate:startCallCATs:startCallCatPatterns:startCallCATsSimple:phoneCallCommonCATs:phoneCallCommonCATsSimple:phoneCallCommonCatPatterns:phoneCallDisplayTextCATsSimple:responseGenerator:siriKitEventSender:appInfoBuilder:)(v68, v69);
  v71 = OUTLINED_FUNCTION_14_6();
  v73 = default argument 5 of CallingIntentBaseFlowStrategy.init(delegate:startCallCATs:startCallCatPatterns:startCallCATsSimple:phoneCallCommonCATs:phoneCallCommonCATsSimple:phoneCallCommonCatPatterns:phoneCallDisplayTextCATsSimple:responseGenerator:siriKitEventSender:appInfoBuilder:)(v71, v72);
  OUTLINED_FUNCTION_14_6();
  default argument 6 of CallingIntentBaseFlowStrategy.init(delegate:startCallCATs:startCallCatPatterns:startCallCATsSimple:phoneCallCommonCATs:phoneCallCommonCATsSimple:phoneCallCommonCatPatterns:phoneCallDisplayTextCATsSimple:responseGenerator:siriKitEventSender:appInfoBuilder:)(v74);
  v75 = OUTLINED_FUNCTION_14_6();
  v77 = default argument 7 of CallingIntentBaseFlowStrategy.init(delegate:startCallCATs:startCallCatPatterns:startCallCATsSimple:phoneCallCommonCATs:phoneCallCommonCATsSimple:phoneCallCommonCatPatterns:phoneCallDisplayTextCATsSimple:responseGenerator:siriKitEventSender:appInfoBuilder:)(v75, v76);
  OUTLINED_FUNCTION_14_6();
  default argument 8 of CallingIntentBaseFlowStrategy.init(delegate:startCallCATs:startCallCatPatterns:startCallCATsSimple:phoneCallCommonCATs:phoneCallCommonCATsSimple:phoneCallCommonCatPatterns:phoneCallDisplayTextCATsSimple:responseGenerator:siriKitEventSender:appInfoBuilder:)();
  v78 = OUTLINED_FUNCTION_14_6();
  SharedGlobalsProviding.siriKitEventSender.getter(v80, v78, v79);
  v81 = OUTLINED_FUNCTION_14_6();
  default argument 10 of CallingIntentBaseFlowStrategy.init(delegate:startCallCATs:startCallCatPatterns:startCallCATsSimple:phoneCallCommonCATs:phoneCallCommonCATsSimple:phoneCallCommonCatPatterns:phoneCallDisplayTextCATsSimple:responseGenerator:siriKitEventSender:appInfoBuilder:)(v81, v82);
  v83 = OUTLINED_FUNCTION_35_16();
  v86 = CallingIntentHandleIntentFlowStrategy.__allocating_init(delegate:startCallCATs:startCallCatPatterns:startCallCATsSimple:phoneCallCommonCATs:phoneCallCommonCATsSimple:phoneCallCommonCatPatterns:phoneCallDisplayTextCATsSimple:responseGenerator:siriKitEventSender:appInfoBuilder:)(v83, v63, v84, v67, v70, v73, v85, v77, v89, v91, v93);
  OUTLINED_FUNCTION_96_2(v86);
  OUTLINED_FUNCTION_82_4();
  OUTLINED_FUNCTION_17_31();
  static RCHChildFlowFactoryHelper.makeHandleIntentFlowProducer<A>(strategy:)();
  OUTLINED_FUNCTION_29_18();

  type metadata accessor for RCHChildFlowProducers();
  OUTLINED_FUNCTION_43_3();
  return RCHChildFlowProducers.handleIntentFlowCompletion.setter();
}

uint64_t _s27PhoneCallFlowDelegatePlugin0abC7FactoryO12getProducers33_CD8279EFAB3EC33E52197D7782D74441LL8delegate3appAC0a7RCHFlowH0Vy_10IntentTypeQz0r8ResponseS0QzGx_17SiriAppResolution0V0CtAA0aqD0RzlFZAA010StartAudiobqD0C_Tt2g5@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v39 = a2;
  v5 = type metadata accessor for CATOption();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v7 = a1 + direct field offset for StartAudioCallRCHFlowDelegate.sharedGlobals;
  v8 = *(a1 + direct field offset for StartAudioCallRCHFlowDelegate.sharedGlobals + 24);
  v9 = *(a1 + direct field offset for StartAudioCallRCHFlowDelegate.sharedGlobals + 32);
  __swift_project_boxed_opaque_existential_1((a1 + direct field offset for StartAudioCallRCHFlowDelegate.sharedGlobals), v8);
  (*(v9 + 104))(v51, v8, v9);
  v10 = v52;
  v11 = v53;
  __swift_project_boxed_opaque_existential_1(v51, v52);
  v12 = *(v11 + 56);
  v13 = type metadata accessor for StartAudioCallRCHFlowDelegate();
  v14 = lazy protocol witness table accessor for type SearchCallHistoryHandleFlowStrategy and conformance SearchCallHistoryHandleFlowStrategy(&lazy protocol witness table cache variable for type StartAudioCallRCHFlowDelegate and conformance BaseRCHFlowDelegate<A, B>, type metadata accessor for StartAudioCallRCHFlowDelegate);
  v12(a1, v13, v14, v10, v11);
  __swift_destroy_boxed_opaque_existential_1(v51);
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0abC7FactoryO0A16RCHFlowProducersVy_So012INStartAudioB6IntentCSo0ijbK8ResponseCGMd, &_s27PhoneCallFlowDelegatePlugin0abC7FactoryO0A16RCHFlowProducersVy_So012INStartAudioB6IntentCSo0ijbK8ResponseCGMR) + 36);
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INStartAudioCallIntent, INStartAudioCallIntent_ptr);
  v42 = type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INStartAudioCallIntentResponse, INStartAudioCallIntentResponse_ptr);
  v40 = a3;
  v41 = v15;
  RCHChildFlowProducersAsync.init()();
  static RCHChildFlowFactoryHelper.makeAppResolutionFlowProducer<A, B>(app:)();
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow08RCHChildC14ProducersAsyncVySo22INStartAudioCallIntentCSo0ghiJ8ResponseCGMd, &_s11SiriKitFlow08RCHChildC14ProducersAsyncVySo22INStartAudioCallIntentCSo0ghiJ8ResponseCGMR);
  RCHChildFlowProducersAsync.appResolutionFlowProducer.setter();
  outlined init with copy of SignalProviding(v7, v51);
  type metadata accessor for PhoneCallCommonCATs();
  static CATOption.defaultMode.getter();
  v38 = CATWrapper.__allocating_init(options:globals:)();
  v16 = type metadata accessor for PhoneCallCommonCATPatternsExecutor();
  static CATOption.defaultMode.getter();
  v17 = CATWrapper.__allocating_init(options:globals:)();
  v18 = type metadata accessor for AppInfoBuilder();
  v19 = swift_allocObject();
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0A15TCCFlowStrategyCySo012INStartAudioB6IntentCSo0hibJ8ResponseCGMd, &_s27PhoneCallFlowDelegatePlugin0A15TCCFlowStrategyCySo012INStartAudioB6IntentCSo0hibJ8ResponseCGMR);
  v20 = swift_allocObject();
  v49 = v19;
  v50 = v17;
  v48[3] = &type metadata for LabelTemplatesProvider;
  v48[4] = &protocol witness table for LabelTemplatesProvider;
  v21 = swift_allocObject();
  v48[0] = v21;
  *(v21 + 16) = 0u;
  *(v21 + 32) = 0u;
  v47[3] = &type metadata for TCCTemplatesProvider;
  v47[4] = &protocol witness table for TCCTemplatesProvider;
  outlined init with copy of SignalProviding(v51, v20 + 272);
  outlined init with copy of SignalProviding(v48, v20 + 192);
  outlined init with copy of SignalProviding(v47, v20 + 232);
  v23 = v52;
  v22 = v53;
  __swift_project_boxed_opaque_existential_1(v51, v52);
  v24 = *(v22 + 136);

  v24(v44, v23, v22);
  v26 = v45;
  v25 = v46;
  v27 = __swift_project_boxed_opaque_existential_1(v44, v45);
  v28 = v52;
  v29 = v53;
  __swift_project_boxed_opaque_existential_1(v51, v52);
  v30 = (*(v29 + 8))(v43, v28, v29);
  v31 = *(*(v26 - 8) + 64);
  __chkstk_darwin(v30);
  v33 = &v37 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v34 + 16))(v33, v27, v26);
  v35 = specialized PhoneCallStrategy.init(catFamily:catPatternFamily:responseGenerator:appInfoBuilder:deviceState:)(v38, &v50, v33, &v49, v43, v20, v26, v16, v18, *(v25 + 8), &protocol witness table for PhoneCallCommonCATPatternsExecutor, &protocol witness table for AppInfoBuilder, v37);

  __swift_destroy_boxed_opaque_existential_1(v47);
  __swift_destroy_boxed_opaque_existential_1(v48);
  __swift_destroy_boxed_opaque_existential_1(v44);
  __swift_destroy_boxed_opaque_existential_1(v51);
  v51[0] = v35;
  lazy protocol witness table accessor for type AnyValueFlow<ExecuteOnRemoteFlowResult> and conformance AnyValueFlow<A>(&lazy protocol witness table cache variable for type PhoneTCCFlowStrategy<INStartAudioCallIntent, INStartAudioCallIntentResponse> and conformance PhoneTCCFlowStrategy<A, B>, &_s27PhoneCallFlowDelegatePlugin0A15TCCFlowStrategyCySo012INStartAudioB6IntentCSo0hibJ8ResponseCGMd, &_s27PhoneCallFlowDelegatePlugin0A15TCCFlowStrategyCySo012INStartAudioB6IntentCSo0hibJ8ResponseCGMR);
  static RCHChildFlowFactoryHelper.makeRequestTCCAcceptanceFlow<A, B>(strategy:)();

  return RCHChildFlowProducersAsync.requestTCCAcceptanceFlowProducer.setter();
}

uint64_t _s27PhoneCallFlowDelegatePlugin0abC7FactoryO12getProducers33_CD8279EFAB3EC33E52197D7782D74441LL8delegate3appAC0a7RCHFlowH0Vy_10IntentTypeQz0r8ResponseS0QzGx_17SiriAppResolution0V0CtAA0aqD0RzlFZAA010StartVideobqD0C_Tt2g5@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v39 = a2;
  v5 = type metadata accessor for CATOption();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v7 = a1 + direct field offset for StartVideoCallRCHFlowDelegate.sharedGlobals;
  v8 = *(a1 + direct field offset for StartVideoCallRCHFlowDelegate.sharedGlobals + 24);
  v9 = *(a1 + direct field offset for StartVideoCallRCHFlowDelegate.sharedGlobals + 32);
  __swift_project_boxed_opaque_existential_1((a1 + direct field offset for StartVideoCallRCHFlowDelegate.sharedGlobals), v8);
  (*(v9 + 104))(v51, v8, v9);
  v10 = v52;
  v11 = v53;
  __swift_project_boxed_opaque_existential_1(v51, v52);
  v12 = *(v11 + 56);
  v13 = type metadata accessor for StartVideoCallRCHFlowDelegate();
  v14 = lazy protocol witness table accessor for type SearchCallHistoryHandleFlowStrategy and conformance SearchCallHistoryHandleFlowStrategy(&lazy protocol witness table cache variable for type StartVideoCallRCHFlowDelegate and conformance BaseRCHFlowDelegate<A, B>, type metadata accessor for StartVideoCallRCHFlowDelegate);
  v12(a1, v13, v14, v10, v11);
  __swift_destroy_boxed_opaque_existential_1(v51);
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0abC7FactoryO0A16RCHFlowProducersVy_So012INStartVideoB6IntentCSo0ijbK8ResponseCGMd, &_s27PhoneCallFlowDelegatePlugin0abC7FactoryO0A16RCHFlowProducersVy_So012INStartVideoB6IntentCSo0ijbK8ResponseCGMR) + 36);
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INStartVideoCallIntent, INStartVideoCallIntent_ptr);
  v42 = type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INStartVideoCallIntentResponse, INStartVideoCallIntentResponse_ptr);
  v40 = a3;
  v41 = v15;
  RCHChildFlowProducersAsync.init()();
  static RCHChildFlowFactoryHelper.makeAppResolutionFlowProducer<A, B>(app:)();
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow08RCHChildC14ProducersAsyncVySo22INStartVideoCallIntentCSo0ghiJ8ResponseCGMd, &_s11SiriKitFlow08RCHChildC14ProducersAsyncVySo22INStartVideoCallIntentCSo0ghiJ8ResponseCGMR);
  RCHChildFlowProducersAsync.appResolutionFlowProducer.setter();
  outlined init with copy of SignalProviding(v7, v51);
  type metadata accessor for PhoneCallCommonCATs();
  static CATOption.defaultMode.getter();
  v38 = CATWrapper.__allocating_init(options:globals:)();
  v16 = type metadata accessor for PhoneCallCommonCATPatternsExecutor();
  static CATOption.defaultMode.getter();
  v17 = CATWrapper.__allocating_init(options:globals:)();
  v18 = type metadata accessor for AppInfoBuilder();
  v19 = swift_allocObject();
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0A15TCCFlowStrategyCySo012INStartVideoB6IntentCSo0hibJ8ResponseCGMd, &_s27PhoneCallFlowDelegatePlugin0A15TCCFlowStrategyCySo012INStartVideoB6IntentCSo0hibJ8ResponseCGMR);
  v20 = swift_allocObject();
  v49 = v19;
  v50 = v17;
  v48[3] = &type metadata for LabelTemplatesProvider;
  v48[4] = &protocol witness table for LabelTemplatesProvider;
  v21 = swift_allocObject();
  v48[0] = v21;
  *(v21 + 16) = 0u;
  *(v21 + 32) = 0u;
  v47[3] = &type metadata for TCCTemplatesProvider;
  v47[4] = &protocol witness table for TCCTemplatesProvider;
  outlined init with copy of SignalProviding(v51, v20 + 272);
  outlined init with copy of SignalProviding(v48, v20 + 192);
  outlined init with copy of SignalProviding(v47, v20 + 232);
  v23 = v52;
  v22 = v53;
  __swift_project_boxed_opaque_existential_1(v51, v52);
  v24 = *(v22 + 136);

  v24(v44, v23, v22);
  v26 = v45;
  v25 = v46;
  v27 = __swift_project_boxed_opaque_existential_1(v44, v45);
  v28 = v52;
  v29 = v53;
  __swift_project_boxed_opaque_existential_1(v51, v52);
  v30 = (*(v29 + 8))(v43, v28, v29);
  v31 = *(*(v26 - 8) + 64);
  __chkstk_darwin(v30);
  v33 = &v37 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v34 + 16))(v33, v27, v26);
  v35 = specialized PhoneCallStrategy.init(catFamily:catPatternFamily:responseGenerator:appInfoBuilder:deviceState:)(v38, &v50, v33, &v49, v43, v20, v26, v16, v18, *(v25 + 8), &protocol witness table for PhoneCallCommonCATPatternsExecutor, &protocol witness table for AppInfoBuilder, v37);

  __swift_destroy_boxed_opaque_existential_1(v47);
  __swift_destroy_boxed_opaque_existential_1(v48);
  __swift_destroy_boxed_opaque_existential_1(v44);
  __swift_destroy_boxed_opaque_existential_1(v51);
  v51[0] = v35;
  lazy protocol witness table accessor for type AnyValueFlow<ExecuteOnRemoteFlowResult> and conformance AnyValueFlow<A>(&lazy protocol witness table cache variable for type PhoneTCCFlowStrategy<INStartVideoCallIntent, INStartVideoCallIntentResponse> and conformance PhoneTCCFlowStrategy<A, B>, &_s27PhoneCallFlowDelegatePlugin0A15TCCFlowStrategyCySo012INStartVideoB6IntentCSo0hibJ8ResponseCGMd, &_s27PhoneCallFlowDelegatePlugin0A15TCCFlowStrategyCySo012INStartVideoB6IntentCSo0hibJ8ResponseCGMR);
  static RCHChildFlowFactoryHelper.makeRequestTCCAcceptanceFlow<A, B>(strategy:)();

  return RCHChildFlowProducersAsync.requestTCCAcceptanceFlowProducer.setter();
}

uint64_t _s27PhoneCallFlowDelegatePlugin0abC7FactoryO12getProducers33_CD8279EFAB3EC33E52197D7782D74441LL8delegate3appAC0a7RCHFlowH0Vy_10IntentTypeQz0r8ResponseS0QzGx_17SiriAppResolution0V0CtAA0aqD0RzlFZAA06Searchb7HistoryqD0C_Tt2g5@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v39 = a2;
  v5 = type metadata accessor for CATOption();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v7 = a1 + direct field offset for SearchCallHistoryRCHFlowDelegate.sharedGlobals;
  v8 = *(a1 + direct field offset for SearchCallHistoryRCHFlowDelegate.sharedGlobals + 24);
  v9 = *(a1 + direct field offset for SearchCallHistoryRCHFlowDelegate.sharedGlobals + 32);
  __swift_project_boxed_opaque_existential_1((a1 + direct field offset for SearchCallHistoryRCHFlowDelegate.sharedGlobals), v8);
  (*(v9 + 104))(v51, v8, v9);
  v10 = v52;
  v11 = v53;
  __swift_project_boxed_opaque_existential_1(v51, v52);
  v12 = *(v11 + 56);
  v13 = type metadata accessor for SearchCallHistoryRCHFlowDelegate();
  v14 = lazy protocol witness table accessor for type SearchCallHistoryHandleFlowStrategy and conformance SearchCallHistoryHandleFlowStrategy(&lazy protocol witness table cache variable for type SearchCallHistoryRCHFlowDelegate and conformance BaseRCHFlowDelegate<A, B>, type metadata accessor for SearchCallHistoryRCHFlowDelegate);
  v12(a1, v13, v14, v10, v11);
  __swift_destroy_boxed_opaque_existential_1(v51);
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0abC7FactoryO0A16RCHFlowProducersVy_So08INSearchB13HistoryIntentCSo0ibjK8ResponseCGMd, &_s27PhoneCallFlowDelegatePlugin0abC7FactoryO0A16RCHFlowProducersVy_So08INSearchB13HistoryIntentCSo0ibjK8ResponseCGMR) + 36);
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INSearchCallHistoryIntent, INSearchCallHistoryIntent_ptr);
  v42 = type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INSearchCallHistoryIntentResponse, INSearchCallHistoryIntentResponse_ptr);
  v40 = a3;
  v41 = v15;
  RCHChildFlowProducersAsync.init()();
  static RCHChildFlowFactoryHelper.makeAppResolutionFlowProducer<A, B>(app:)();
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow08RCHChildC14ProducersAsyncVySo25INSearchCallHistoryIntentCSo0ghiJ8ResponseCGMd, &_s11SiriKitFlow08RCHChildC14ProducersAsyncVySo25INSearchCallHistoryIntentCSo0ghiJ8ResponseCGMR);
  RCHChildFlowProducersAsync.appResolutionFlowProducer.setter();
  outlined init with copy of SignalProviding(v7, v51);
  type metadata accessor for PhoneCallCommonCATs();
  static CATOption.defaultMode.getter();
  v38 = CATWrapper.__allocating_init(options:globals:)();
  v16 = type metadata accessor for PhoneCallCommonCATPatternsExecutor();
  static CATOption.defaultMode.getter();
  v17 = CATWrapper.__allocating_init(options:globals:)();
  v18 = type metadata accessor for AppInfoBuilder();
  v19 = swift_allocObject();
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0A15TCCFlowStrategyCySo08INSearchB13HistoryIntentCSo0hbiJ8ResponseCGMd, &_s27PhoneCallFlowDelegatePlugin0A15TCCFlowStrategyCySo08INSearchB13HistoryIntentCSo0hbiJ8ResponseCGMR);
  v20 = swift_allocObject();
  v49 = v19;
  v50 = v17;
  v48[3] = &type metadata for LabelTemplatesProvider;
  v48[4] = &protocol witness table for LabelTemplatesProvider;
  v21 = swift_allocObject();
  v48[0] = v21;
  *(v21 + 16) = 0u;
  *(v21 + 32) = 0u;
  v47[3] = &type metadata for TCCTemplatesProvider;
  v47[4] = &protocol witness table for TCCTemplatesProvider;
  outlined init with copy of SignalProviding(v51, v20 + 272);
  outlined init with copy of SignalProviding(v48, v20 + 192);
  outlined init with copy of SignalProviding(v47, v20 + 232);
  v23 = v52;
  v22 = v53;
  __swift_project_boxed_opaque_existential_1(v51, v52);
  v24 = *(v22 + 136);

  v24(v44, v23, v22);
  v26 = v45;
  v25 = v46;
  v27 = __swift_project_boxed_opaque_existential_1(v44, v45);
  v28 = v52;
  v29 = v53;
  __swift_project_boxed_opaque_existential_1(v51, v52);
  v30 = (*(v29 + 8))(v43, v28, v29);
  v31 = *(*(v26 - 8) + 64);
  __chkstk_darwin(v30);
  v33 = &v37 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v34 + 16))(v33, v27, v26);
  v35 = specialized PhoneCallStrategy.init(catFamily:catPatternFamily:responseGenerator:appInfoBuilder:deviceState:)(v38, &v50, v33, &v49, v43, v20, v26, v16, v18, *(v25 + 8), &protocol witness table for PhoneCallCommonCATPatternsExecutor, &protocol witness table for AppInfoBuilder, v37);

  __swift_destroy_boxed_opaque_existential_1(v47);
  __swift_destroy_boxed_opaque_existential_1(v48);
  __swift_destroy_boxed_opaque_existential_1(v44);
  __swift_destroy_boxed_opaque_existential_1(v51);
  v51[0] = v35;
  lazy protocol witness table accessor for type AnyValueFlow<ExecuteOnRemoteFlowResult> and conformance AnyValueFlow<A>(&lazy protocol witness table cache variable for type PhoneTCCFlowStrategy<INSearchCallHistoryIntent, INSearchCallHistoryIntentResponse> and conformance PhoneTCCFlowStrategy<A, B>, &_s27PhoneCallFlowDelegatePlugin0A15TCCFlowStrategyCySo08INSearchB13HistoryIntentCSo0hbiJ8ResponseCGMd, &_s27PhoneCallFlowDelegatePlugin0A15TCCFlowStrategyCySo08INSearchB13HistoryIntentCSo0hbiJ8ResponseCGMR);
  static RCHChildFlowFactoryHelper.makeRequestTCCAcceptanceFlow<A, B>(strategy:)();

  return RCHChildFlowProducersAsync.requestTCCAcceptanceFlowProducer.setter();
}

uint64_t static PhoneCallFlowFactory.getProducers<A>(delegate:app:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v28 = a2;
  v29 = a5;
  v25 = *(a4 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = swift_getAssociatedTypeWitness();
  v26 = type metadata accessor for RCHChildFlowProducersAsync();
  v10 = *(*(v26 - 8) + 64);
  __chkstk_darwin(v26);
  v30 = &v24 - v11;
  v12 = type metadata accessor for RCHChildFlowProducers();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v27 = &v24 - v14;
  v33[0] = a1;
  v15 = a1;
  v16 = *(a4 + 8);
  v24 = *(v16 + 8);
  v24(v37, a3, v16);
  v17 = v38;
  v18 = v39;
  __swift_project_boxed_opaque_existential_1(v37, v38);
  (*(v18 + 104))(v34, v17, v18);
  v19 = v35;
  v20 = v36;
  __swift_project_boxed_opaque_existential_1(v34, v35);
  (*(v20 + 56))(v15, a3, v25, v19, v20);
  __swift_destroy_boxed_opaque_existential_1(v34);
  __swift_destroy_boxed_opaque_existential_1(v37);
  RCHChildFlowProducersAsync.init()();
  static RCHChildFlowFactoryHelper.makeAppResolutionFlowProducer<A, B>(app:)();
  RCHChildFlowProducersAsync.appResolutionFlowProducer.setter();
  type metadata accessor for PhoneTCCFlowStrategy();
  v33[5] = v15;
  v24(v37, a3, v16);
  v21 = default argument 3 of PhoneCallBaseCatTemplatingService.init(ducFamily:sharedGlobals:displayTextCats:phoneCallCommonCats:appInfoBuilder:labelTemplating:startCallCats:)(AssociatedTypeWitness, v9);
  default argument 2 of PhoneTCCFlowStrategy.init(sharedGlobals:phoneCallCommonCats:phoneCallCommonCatPatterns:labelTemplatesProvider:tccTemplatesProvider:appInfoBuilder:)(v34, AssociatedTypeWitness, v9);
  default argument 5 of PhoneCallBaseCatTemplatingService.init(ducFamily:sharedGlobals:displayTextCats:phoneCallCommonCats:appInfoBuilder:labelTemplating:startCallCats:)(AssociatedTypeWitness);
  default argument 4 of PhoneTCCFlowStrategy.init(sharedGlobals:phoneCallCommonCats:phoneCallCommonCatPatterns:labelTemplatesProvider:tccTemplatesProvider:appInfoBuilder:)(v32);
  default argument 4 of PhoneCallBaseCatTemplatingService.init(ducFamily:sharedGlobals:displayTextCats:phoneCallCommonCats:appInfoBuilder:labelTemplating:startCallCats:)(AssociatedTypeWitness);
  v37[0] = PhoneTCCFlowStrategy.__allocating_init(sharedGlobals:phoneCallCommonCats:phoneCallCommonCatPatterns:labelTemplatesProvider:tccTemplatesProvider:appInfoBuilder:)(v37, v21, v34, v33, v32, v31);
  swift_getWitnessTable();
  static RCHChildFlowFactoryHelper.makeRequestTCCAcceptanceFlow<A, B>(strategy:)();

  v22 = v30;
  RCHChildFlowProducersAsync.requestTCCAcceptanceFlowProducer.setter();
  return PhoneCallFlowFactory.PhoneRCHFlowProducers.init(completionProducers:asyncProducers:)(v22, v29);
}

uint64_t PhoneCallFlowFactory.PhoneRCHFlowProducers.completionProducers.getter(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 24);
  v3 = type metadata accessor for RCHChildFlowProducers();
  OUTLINED_FUNCTION_23_1(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_19_0();

  return v7(v6);
}

uint64_t PhoneCallFlowFactory.PhoneRCHFlowProducers.completionProducers.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 16);
  v4 = *(a2 + 24);
  v6 = type metadata accessor for RCHChildFlowProducers();
  v7 = OUTLINED_FUNCTION_23_1(v6);
  v9 = *(v8 + 40);

  return v9(v2, a1, v7);
}

uint64_t PhoneCallFlowFactory.PhoneRCHFlowProducers.asyncProducers.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 36);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = type metadata accessor for RCHChildFlowProducersAsync();
  v8 = OUTLINED_FUNCTION_23_1(v7);
  v10 = *(v9 + 16);

  return v10(a2, v2 + v4, v8);
}

uint64_t PhoneCallFlowFactory.PhoneRCHFlowProducers.asyncProducers.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 36);
  v6 = *(a2 + 16);
  v5 = *(a2 + 24);
  v7 = type metadata accessor for RCHChildFlowProducersAsync();
  OUTLINED_FUNCTION_23_1(v7);
  v9 = *(v8 + 40);

  return v9(v2 + v4, a1);
}

Swift::Void (__swiftcall *PhoneCallFlowFactory.PhoneRCHFlowProducers.asyncProducers.modify(uint64_t a1, uint64_t a2))(Swift::OpaquePointer newCallGroups)
{
  result = INAddCallParticipantIntent.overwriteCallGroups(newCallGroups:);
  v4 = v2 + *(a2 + 36);
  return result;
}

uint64_t PhoneCallFlowFactory.PhoneRCHFlowProducers.init(completionProducers:asyncProducers:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for RCHChildFlowProducers();
  OUTLINED_FUNCTION_23_1(v4);
  v6 = *(v5 + 32);
  v7 = OUTLINED_FUNCTION_14_6();
  v8(v7);
  v9 = *(type metadata accessor for PhoneCallFlowFactory.PhoneRCHFlowProducers() + 36);
  v10 = type metadata accessor for RCHChildFlowProducersAsync();
  OUTLINED_FUNCTION_23_1(v10);
  v12 = *(v11 + 32);

  return v12(a2 + v9, a1);
}

uint64_t (*static PhoneCallFlowFactory.makeAppResolutionFlowBeforeNextResolveFlowProducer<A>(delegate:app:sharedGlobal:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  outlined init with copy of SignalProviding(a3, v10);
  v8 = swift_allocObject();
  v8[2] = a4;
  v8[3] = a5;
  v8[4] = a2;
  outlined init with take of SPHConversation(v10, (v8 + 5));

  return partial apply for closure #1 in static PhoneCallFlowFactory.makeAppResolutionFlowBeforeNextResolveFlowProducer<A>(delegate:app:sharedGlobal:);
}

uint64_t specialized closure #1 in static PhoneCallFlowFactory.getGenericStartCallProducers<A>(delegate:app:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v61 = a4;
  v74 = a1;
  v75 = a3;
  v69 = a2;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin022ContactNeedsValueGuardC0C0C5StateOySo012INStartAudioB6IntentC_GMd, &_s27PhoneCallFlowDelegatePlugin022ContactNeedsValueGuardC0C0C5StateOySo012INStartAudioB6IntentC_GMR);
  v4 = *(*(v59 - 8) + 64);
  __chkstk_darwin(v59);
  v60 = &v58 - v5;
  v6 = type metadata accessor for ParameterIdentifier();
  v71 = *(v6 - 8);
  v72 = v6;
  v7 = *(v71 + 64);
  __chkstk_darwin(v6);
  v70 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DialogPhase();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v67 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CATOption();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  type metadata accessor for StartCallCATs();
  static CATOption.defaultMode.getter();
  v68 = CATWrapper.__allocating_init(options:globals:)();
  v14 = type metadata accessor for StartCallCATPatternsExecutor(0);
  static CATOption.defaultMode.getter();
  v15 = CATWrapper.__allocating_init(options:globals:)();
  type metadata accessor for StartCallCATsSimple();
  static CATOption.defaultMode.getter();
  v66 = CATWrapperSimple.__allocating_init(options:globals:)();
  type metadata accessor for PhoneCallCommonCATs();
  static CATOption.defaultMode.getter();
  v65 = CATWrapper.__allocating_init(options:globals:)();
  type metadata accessor for PhoneCallCommonCATsSimple();
  static CATOption.defaultMode.getter();
  v64 = CATWrapperSimple.__allocating_init(options:globals:)();
  v16 = type metadata accessor for PhoneCallCommonCATPatternsExecutor();
  static CATOption.defaultMode.getter();
  v17 = CATWrapper.__allocating_init(options:globals:)();
  type metadata accessor for PhoneCallDisplayTextCATsSimple();
  static CATOption.defaultMode.getter();
  v63 = CATWrapperSimple.__allocating_init(options:globals:)();
  v18 = type metadata accessor for ResponseFactory();
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  swift_allocObject();
  v21 = ResponseFactory.init()();
  static SiriKitEventSender.current.getter();
  v22 = type metadata accessor for AppInfoBuilder();
  v23 = swift_allocObject();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin023CallingIntentNeedsValueC8StrategyCyAA010StartAudiob7RCHFlowD0CGMd, &_s27PhoneCallFlowDelegatePlugin023CallingIntentNeedsValueC8StrategyCyAA010StartAudiob7RCHFlowD0CGMR);
  v25 = *(v24 + 48);
  v26 = *(v24 + 52);
  v73 = v24;
  v27 = swift_allocObject();
  v87[3] = v14;
  v87[4] = &protocol witness table for StartCallCATPatternsExecutor;
  v87[0] = v15;
  v86[4] = &protocol witness table for PhoneCallCommonCATPatternsExecutor;
  v86[3] = v16;
  v62 = v17;
  v85[4] = &protocol witness table for AppInfoBuilder;
  v86[0] = v17;
  v85[3] = v22;
  v85[0] = v23;
  *(v27 + direct field offset for CallingIntentNeedsValueFlowStrategy.rePromptCount) = 0;
  *(v27 + direct field offset for CallingIntentNeedsValueFlowStrategy.startingOver) = 0;
  *(v27 + direct field offset for CallingIntentNeedsValueFlowStrategy.isUnsupportedFollowUp) = 0;
  outlined init with copy of SignalProviding(v87, v84);
  outlined init with copy of SignalProviding(v86, v83);
  outlined init with copy of SignalProviding(v88, v82);
  outlined init with copy of SignalProviding(v85, v81);
  v80[3] = v18;
  v80[4] = &protocol witness table for ResponseFactory;
  v80[0] = v21;

  static DialogPhase.completion.getter();
  OutputGenerationManifest.init(dialogPhase:_:)();
  v28 = v75;
  v27[2] = v75;
  v67 = direct field offset for StartAudioCallRCHFlowDelegate.sharedGlobals;
  outlined init with copy of SignalProviding(v28 + direct field offset for StartAudioCallRCHFlowDelegate.sharedGlobals, (v27 + 3));
  v27[8] = v68;
  outlined init with copy of SignalProviding(v84, (v27 + 9));
  v29 = v65;
  v27[14] = v66;
  v27[15] = v29;
  v27[16] = v64;
  outlined init with copy of SignalProviding(v83, (v27 + 17));
  v27[22] = v63;
  outlined init with copy of SignalProviding(v80, (v27 + 23));
  outlined init with copy of SignalProviding(v82, (v27 + 28));
  outlined init with copy of SignalProviding((v27 + 3), v77);
  v30 = v78;
  v31 = v79;
  __swift_project_boxed_opaque_existential_1(v77, v78);
  v32 = *(v31 + 72);

  v33 = v31;
  v34 = v69;
  v35 = v32(v30, v33);

  __swift_destroy_boxed_opaque_existential_1(v82);
  __swift_destroy_boxed_opaque_existential_1(v83);
  __swift_destroy_boxed_opaque_existential_1(v84);
  __swift_destroy_boxed_opaque_existential_1(v88);
  __swift_destroy_boxed_opaque_existential_1(v80);
  outlined init with copy of SignalProviding(v35 + 160, v76);

  outlined init with take of SPHConversation(v76, (v27 + 33));
  __swift_destroy_boxed_opaque_existential_1(v77);
  outlined init with take of SPHConversation(v81, (v27 + 38));
  __swift_destroy_boxed_opaque_existential_1(v85);
  __swift_destroy_boxed_opaque_existential_1(v86);
  __swift_destroy_boxed_opaque_existential_1(v87);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow25ParameterResolutionRecordVySo22INStartAudioCallIntentCGMd, &_s11SiriKitFlow25ParameterResolutionRecordVySo22INStartAudioCallIntentCGMR);
  v36 = v70;
  ParameterResolutionRecord.parameter.getter();
  v37 = ParameterIdentifier.name.getter();
  v39 = v38;
  (*(v71 + 8))(v36, v72);
  v40._countAndFlagsBits = v37;
  v40._object = v39;
  if ((PhoneCallSlotNames.init(rawValue:)(v40).value & 0xFE) == 4)
  {
    if (one-time initialization token for siriPhone != -1)
    {
      swift_once();
    }

    v41 = type metadata accessor for Logger();
    __swift_project_value_buffer(v41, static Logger.siriPhone);
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&dword_0, v42, v43, "#PhoneCallFlowFactory Contact slot needs value. Wrapping needsValueStrategy in NeedsValueGuardFlow.", v44, 2u);
    }

    *&v88[0] = v27;
    lazy protocol witness table accessor for type AnyValueFlow<ExecuteOnRemoteFlowResult> and conformance AnyValueFlow<A>(&lazy protocol witness table cache variable for type CallingIntentNeedsValueFlowStrategy<StartAudioCallRCHFlowDelegate> and conformance CallingIntentNeedsValueFlowStrategy<A>, &_s27PhoneCallFlowDelegatePlugin023CallingIntentNeedsValueC8StrategyCyAA010StartAudiob7RCHFlowD0CGMd, &_s27PhoneCallFlowDelegatePlugin023CallingIntentNeedsValueC8StrategyCyAA010StartAudiob7RCHFlowD0CGMR);
    v45 = static RCHChildFlowFactoryHelper.makeNeedsValueFlowProducer<A>(strategy:)();
    v46 = v45(v74, v34);

    outlined init with copy of SignalProviding(&v67[v75], v88);
    v47 = v60;
    swift_storeEnumTagMultiPayload();
    v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin022ContactNeedsValueGuardC0CySo012INStartAudioB6IntentCGMd, &_s27PhoneCallFlowDelegatePlugin022ContactNeedsValueGuardC0CySo012INStartAudioB6IntentCGMR);
    v49 = *(v48 + 48);
    v50 = *(v48 + 52);
    swift_allocObject();
    *&v88[0] = specialized ContactNeedsValueGuardFlow.init(flow:state:sharedGlobals:app:)(v46, v47, v88, v61);
    lazy protocol witness table accessor for type AnyValueFlow<ExecuteOnRemoteFlowResult> and conformance AnyValueFlow<A>(&lazy protocol witness table cache variable for type ContactNeedsValueGuardFlow<INStartAudioCallIntent> and conformance ContactNeedsValueGuardFlow<A>, &_s27PhoneCallFlowDelegatePlugin022ContactNeedsValueGuardC0CySo012INStartAudioB6IntentCGMd, &_s27PhoneCallFlowDelegatePlugin022ContactNeedsValueGuardC0CySo012INStartAudioB6IntentCGMR);

    v51 = Flow.eraseToAnyValueFlow()();
  }

  else
  {
    if (one-time initialization token for siriPhone != -1)
    {
      swift_once();
    }

    v52 = type metadata accessor for Logger();
    __swift_project_value_buffer(v52, static Logger.siriPhone);
    v53 = Logger.logObject.getter();
    v54 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      *v55 = 0;
      _os_log_impl(&dword_0, v53, v54, "#PhoneCallFlowFactory Needs value for non contact slot. Appending needsValueStrategy only.", v55, 2u);
    }

    *&v88[0] = v27;
    lazy protocol witness table accessor for type AnyValueFlow<ExecuteOnRemoteFlowResult> and conformance AnyValueFlow<A>(&lazy protocol witness table cache variable for type CallingIntentNeedsValueFlowStrategy<StartAudioCallRCHFlowDelegate> and conformance CallingIntentNeedsValueFlowStrategy<A>, &_s27PhoneCallFlowDelegatePlugin023CallingIntentNeedsValueC8StrategyCyAA010StartAudiob7RCHFlowD0CGMd, &_s27PhoneCallFlowDelegatePlugin023CallingIntentNeedsValueC8StrategyCyAA010StartAudiob7RCHFlowD0CGMR);
    v56 = static RCHChildFlowFactoryHelper.makeNeedsValueFlowProducer<A>(strategy:)();
    v51 = v56(v74, v34);
  }

  return v51;
}

{
  v61 = a4;
  v74 = a1;
  v75 = a3;
  v69 = a2;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin022ContactNeedsValueGuardC0C0C5StateOySo012INStartVideoB6IntentC_GMd, &_s27PhoneCallFlowDelegatePlugin022ContactNeedsValueGuardC0C0C5StateOySo012INStartVideoB6IntentC_GMR);
  v4 = *(*(v59 - 8) + 64);
  __chkstk_darwin(v59);
  v60 = &v58 - v5;
  v6 = type metadata accessor for ParameterIdentifier();
  v71 = *(v6 - 8);
  v72 = v6;
  v7 = *(v71 + 64);
  __chkstk_darwin(v6);
  v70 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DialogPhase();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v67 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CATOption();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  type metadata accessor for StartCallCATs();
  static CATOption.defaultMode.getter();
  v68 = CATWrapper.__allocating_init(options:globals:)();
  v14 = type metadata accessor for StartCallCATPatternsExecutor(0);
  static CATOption.defaultMode.getter();
  v15 = CATWrapper.__allocating_init(options:globals:)();
  type metadata accessor for StartCallCATsSimple();
  static CATOption.defaultMode.getter();
  v66 = CATWrapperSimple.__allocating_init(options:globals:)();
  type metadata accessor for PhoneCallCommonCATs();
  static CATOption.defaultMode.getter();
  v65 = CATWrapper.__allocating_init(options:globals:)();
  type metadata accessor for PhoneCallCommonCATsSimple();
  static CATOption.defaultMode.getter();
  v64 = CATWrapperSimple.__allocating_init(options:globals:)();
  v16 = type metadata accessor for PhoneCallCommonCATPatternsExecutor();
  static CATOption.defaultMode.getter();
  v17 = CATWrapper.__allocating_init(options:globals:)();
  type metadata accessor for PhoneCallDisplayTextCATsSimple();
  static CATOption.defaultMode.getter();
  v63 = CATWrapperSimple.__allocating_init(options:globals:)();
  v18 = type metadata accessor for ResponseFactory();
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  swift_allocObject();
  v21 = ResponseFactory.init()();
  static SiriKitEventSender.current.getter();
  v22 = type metadata accessor for AppInfoBuilder();
  v23 = swift_allocObject();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin023CallingIntentNeedsValueC8StrategyCyAA010StartVideob7RCHFlowD0CGMd, &_s27PhoneCallFlowDelegatePlugin023CallingIntentNeedsValueC8StrategyCyAA010StartVideob7RCHFlowD0CGMR);
  v25 = *(v24 + 48);
  v26 = *(v24 + 52);
  v73 = v24;
  v27 = swift_allocObject();
  v87[3] = v14;
  v87[4] = &protocol witness table for StartCallCATPatternsExecutor;
  v87[0] = v15;
  v86[4] = &protocol witness table for PhoneCallCommonCATPatternsExecutor;
  v86[3] = v16;
  v62 = v17;
  v85[4] = &protocol witness table for AppInfoBuilder;
  v86[0] = v17;
  v85[3] = v22;
  v85[0] = v23;
  *(v27 + direct field offset for CallingIntentNeedsValueFlowStrategy.rePromptCount) = 0;
  *(v27 + direct field offset for CallingIntentNeedsValueFlowStrategy.startingOver) = 0;
  *(v27 + direct field offset for CallingIntentNeedsValueFlowStrategy.isUnsupportedFollowUp) = 0;
  outlined init with copy of SignalProviding(v87, v84);
  outlined init with copy of SignalProviding(v86, v83);
  outlined init with copy of SignalProviding(v88, v82);
  outlined init with copy of SignalProviding(v85, v81);
  v80[3] = v18;
  v80[4] = &protocol witness table for ResponseFactory;
  v80[0] = v21;

  static DialogPhase.completion.getter();
  OutputGenerationManifest.init(dialogPhase:_:)();
  v28 = v75;
  v27[2] = v75;
  v67 = direct field offset for StartVideoCallRCHFlowDelegate.sharedGlobals;
  outlined init with copy of SignalProviding(v28 + direct field offset for StartVideoCallRCHFlowDelegate.sharedGlobals, (v27 + 3));
  v27[8] = v68;
  outlined init with copy of SignalProviding(v84, (v27 + 9));
  v29 = v65;
  v27[14] = v66;
  v27[15] = v29;
  v27[16] = v64;
  outlined init with copy of SignalProviding(v83, (v27 + 17));
  v27[22] = v63;
  outlined init with copy of SignalProviding(v80, (v27 + 23));
  outlined init with copy of SignalProviding(v82, (v27 + 28));
  outlined init with copy of SignalProviding((v27 + 3), v77);
  v30 = v78;
  v31 = v79;
  __swift_project_boxed_opaque_existential_1(v77, v78);
  v32 = *(v31 + 72);

  v33 = v31;
  v34 = v69;
  v35 = v32(v30, v33);

  __swift_destroy_boxed_opaque_existential_1(v82);
  __swift_destroy_boxed_opaque_existential_1(v83);
  __swift_destroy_boxed_opaque_existential_1(v84);
  __swift_destroy_boxed_opaque_existential_1(v88);
  __swift_destroy_boxed_opaque_existential_1(v80);
  outlined init with copy of SignalProviding(v35 + 160, v76);

  outlined init with take of SPHConversation(v76, (v27 + 33));
  __swift_destroy_boxed_opaque_existential_1(v77);
  outlined init with take of SPHConversation(v81, (v27 + 38));
  __swift_destroy_boxed_opaque_existential_1(v85);
  __swift_destroy_boxed_opaque_existential_1(v86);
  __swift_destroy_boxed_opaque_existential_1(v87);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow25ParameterResolutionRecordVySo22INStartVideoCallIntentCGMd, &_s11SiriKitFlow25ParameterResolutionRecordVySo22INStartVideoCallIntentCGMR);
  v36 = v70;
  ParameterResolutionRecord.parameter.getter();
  v37 = ParameterIdentifier.name.getter();
  v39 = v38;
  (*(v71 + 8))(v36, v72);
  v40._countAndFlagsBits = v37;
  v40._object = v39;
  if ((PhoneCallSlotNames.init(rawValue:)(v40).value & 0xFE) == 4)
  {
    if (one-time initialization token for siriPhone != -1)
    {
      swift_once();
    }

    v41 = type metadata accessor for Logger();
    __swift_project_value_buffer(v41, static Logger.siriPhone);
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&dword_0, v42, v43, "#PhoneCallFlowFactory Contact slot needs value. Wrapping needsValueStrategy in NeedsValueGuardFlow.", v44, 2u);
    }

    *&v88[0] = v27;
    lazy protocol witness table accessor for type AnyValueFlow<ExecuteOnRemoteFlowResult> and conformance AnyValueFlow<A>(&lazy protocol witness table cache variable for type CallingIntentNeedsValueFlowStrategy<StartVideoCallRCHFlowDelegate> and conformance CallingIntentNeedsValueFlowStrategy<A>, &_s27PhoneCallFlowDelegatePlugin023CallingIntentNeedsValueC8StrategyCyAA010StartVideob7RCHFlowD0CGMd, &_s27PhoneCallFlowDelegatePlugin023CallingIntentNeedsValueC8StrategyCyAA010StartVideob7RCHFlowD0CGMR);
    v45 = static RCHChildFlowFactoryHelper.makeNeedsValueFlowProducer<A>(strategy:)();
    v46 = v45(v74, v34);

    outlined init with copy of SignalProviding(&v67[v75], v88);
    v47 = v60;
    swift_storeEnumTagMultiPayload();
    v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin022ContactNeedsValueGuardC0CySo012INStartVideoB6IntentCGMd, &_s27PhoneCallFlowDelegatePlugin022ContactNeedsValueGuardC0CySo012INStartVideoB6IntentCGMR);
    v49 = *(v48 + 48);
    v50 = *(v48 + 52);
    swift_allocObject();
    *&v88[0] = specialized ContactNeedsValueGuardFlow.init(flow:state:sharedGlobals:app:)(v46, v47, v88, v61);
    lazy protocol witness table accessor for type AnyValueFlow<ExecuteOnRemoteFlowResult> and conformance AnyValueFlow<A>(&lazy protocol witness table cache variable for type ContactNeedsValueGuardFlow<INStartVideoCallIntent> and conformance ContactNeedsValueGuardFlow<A>, &_s27PhoneCallFlowDelegatePlugin022ContactNeedsValueGuardC0CySo012INStartVideoB6IntentCGMd, &_s27PhoneCallFlowDelegatePlugin022ContactNeedsValueGuardC0CySo012INStartVideoB6IntentCGMR);

    v51 = Flow.eraseToAnyValueFlow()();
  }

  else
  {
    if (one-time initialization token for siriPhone != -1)
    {
      swift_once();
    }

    v52 = type metadata accessor for Logger();
    __swift_project_value_buffer(v52, static Logger.siriPhone);
    v53 = Logger.logObject.getter();
    v54 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      *v55 = 0;
      _os_log_impl(&dword_0, v53, v54, "#PhoneCallFlowFactory Needs value for non contact slot. Appending needsValueStrategy only.", v55, 2u);
    }

    *&v88[0] = v27;
    lazy protocol witness table accessor for type AnyValueFlow<ExecuteOnRemoteFlowResult> and conformance AnyValueFlow<A>(&lazy protocol witness table cache variable for type CallingIntentNeedsValueFlowStrategy<StartVideoCallRCHFlowDelegate> and conformance CallingIntentNeedsValueFlowStrategy<A>, &_s27PhoneCallFlowDelegatePlugin023CallingIntentNeedsValueC8StrategyCyAA010StartVideob7RCHFlowD0CGMd, &_s27PhoneCallFlowDelegatePlugin023CallingIntentNeedsValueC8StrategyCyAA010StartVideob7RCHFlowD0CGMR);
    v56 = static RCHChildFlowFactoryHelper.makeNeedsValueFlowProducer<A>(strategy:)();
    v51 = v56(v74, v34);
  }

  return v51;
}

{
  v61 = a4;
  v74 = a1;
  v75 = a3;
  v69 = a2;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin022ContactNeedsValueGuardC0C0C5StateOySo07INStartB6IntentC_GMd, &_s27PhoneCallFlowDelegatePlugin022ContactNeedsValueGuardC0C0C5StateOySo07INStartB6IntentC_GMR);
  v4 = *(*(v59 - 8) + 64);
  __chkstk_darwin(v59);
  v60 = &v58 - v5;
  v6 = type metadata accessor for ParameterIdentifier();
  v71 = *(v6 - 8);
  v72 = v6;
  v7 = *(v71 + 64);
  __chkstk_darwin(v6);
  v70 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DialogPhase();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v67 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CATOption();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  type metadata accessor for StartCallCATs();
  static CATOption.defaultMode.getter();
  v68 = CATWrapper.__allocating_init(options:globals:)();
  v14 = type metadata accessor for StartCallCATPatternsExecutor(0);
  static CATOption.defaultMode.getter();
  v15 = CATWrapper.__allocating_init(options:globals:)();
  type metadata accessor for StartCallCATsSimple();
  static CATOption.defaultMode.getter();
  v66 = CATWrapperSimple.__allocating_init(options:globals:)();
  type metadata accessor for PhoneCallCommonCATs();
  static CATOption.defaultMode.getter();
  v65 = CATWrapper.__allocating_init(options:globals:)();
  type metadata accessor for PhoneCallCommonCATsSimple();
  static CATOption.defaultMode.getter();
  v64 = CATWrapperSimple.__allocating_init(options:globals:)();
  v16 = type metadata accessor for PhoneCallCommonCATPatternsExecutor();
  static CATOption.defaultMode.getter();
  v17 = CATWrapper.__allocating_init(options:globals:)();
  type metadata accessor for PhoneCallDisplayTextCATsSimple();
  static CATOption.defaultMode.getter();
  v63 = CATWrapperSimple.__allocating_init(options:globals:)();
  v18 = type metadata accessor for ResponseFactory();
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  swift_allocObject();
  v21 = ResponseFactory.init()();
  static SiriKitEventSender.current.getter();
  v22 = type metadata accessor for AppInfoBuilder();
  v23 = swift_allocObject();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin023CallingIntentNeedsValueC8StrategyCyAA05Startb7RCHFlowD0CGMd, &_s27PhoneCallFlowDelegatePlugin023CallingIntentNeedsValueC8StrategyCyAA05Startb7RCHFlowD0CGMR);
  v25 = *(v24 + 48);
  v26 = *(v24 + 52);
  v73 = v24;
  v27 = swift_allocObject();
  v87[3] = v14;
  v87[4] = &protocol witness table for StartCallCATPatternsExecutor;
  v87[0] = v15;
  v86[4] = &protocol witness table for PhoneCallCommonCATPatternsExecutor;
  v86[3] = v16;
  v62 = v17;
  v85[4] = &protocol witness table for AppInfoBuilder;
  v86[0] = v17;
  v85[3] = v22;
  v85[0] = v23;
  *(v27 + direct field offset for CallingIntentNeedsValueFlowStrategy.rePromptCount) = 0;
  *(v27 + direct field offset for CallingIntentNeedsValueFlowStrategy.startingOver) = 0;
  *(v27 + direct field offset for CallingIntentNeedsValueFlowStrategy.isUnsupportedFollowUp) = 0;
  outlined init with copy of SignalProviding(v87, v84);
  outlined init with copy of SignalProviding(v86, v83);
  outlined init with copy of SignalProviding(v88, v82);
  outlined init with copy of SignalProviding(v85, v81);
  v80[3] = v18;
  v80[4] = &protocol witness table for ResponseFactory;
  v80[0] = v21;

  static DialogPhase.completion.getter();
  OutputGenerationManifest.init(dialogPhase:_:)();
  v28 = v75;
  v27[2] = v75;
  v67 = direct field offset for StartCallRCHFlowDelegate.sharedGlobals;
  outlined init with copy of SignalProviding(v28 + direct field offset for StartCallRCHFlowDelegate.sharedGlobals, (v27 + 3));
  v27[8] = v68;
  outlined init with copy of SignalProviding(v84, (v27 + 9));
  v29 = v65;
  v27[14] = v66;
  v27[15] = v29;
  v27[16] = v64;
  outlined init with copy of SignalProviding(v83, (v27 + 17));
  v27[22] = v63;
  outlined init with copy of SignalProviding(v80, (v27 + 23));
  outlined init with copy of SignalProviding(v82, (v27 + 28));
  outlined init with copy of SignalProviding((v27 + 3), v77);
  v30 = v78;
  v31 = v79;
  __swift_project_boxed_opaque_existential_1(v77, v78);
  v32 = *(v31 + 72);

  v33 = v31;
  v34 = v69;
  v35 = v32(v30, v33);

  __swift_destroy_boxed_opaque_existential_1(v82);
  __swift_destroy_boxed_opaque_existential_1(v83);
  __swift_destroy_boxed_opaque_existential_1(v84);
  __swift_destroy_boxed_opaque_existential_1(v88);
  __swift_destroy_boxed_opaque_existential_1(v80);
  outlined init with copy of SignalProviding(v35 + 160, v76);

  outlined init with take of SPHConversation(v76, (v27 + 33));
  __swift_destroy_boxed_opaque_existential_1(v77);
  outlined init with take of SPHConversation(v81, (v27 + 38));
  __swift_destroy_boxed_opaque_existential_1(v85);
  __swift_destroy_boxed_opaque_existential_1(v86);
  __swift_destroy_boxed_opaque_existential_1(v87);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow25ParameterResolutionRecordVySo17INStartCallIntentCGMd, &_s11SiriKitFlow25ParameterResolutionRecordVySo17INStartCallIntentCGMR);
  v36 = v70;
  ParameterResolutionRecord.parameter.getter();
  v37 = ParameterIdentifier.name.getter();
  v39 = v38;
  (*(v71 + 8))(v36, v72);
  v40._countAndFlagsBits = v37;
  v40._object = v39;
  if ((PhoneCallSlotNames.init(rawValue:)(v40).value & 0xFE) == 4)
  {
    if (one-time initialization token for siriPhone != -1)
    {
      swift_once();
    }

    v41 = type metadata accessor for Logger();
    __swift_project_value_buffer(v41, static Logger.siriPhone);
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&dword_0, v42, v43, "#PhoneCallFlowFactory Contact slot needs value. Wrapping needsValueStrategy in NeedsValueGuardFlow.", v44, 2u);
    }

    *&v88[0] = v27;
    lazy protocol witness table accessor for type AnyValueFlow<ExecuteOnRemoteFlowResult> and conformance AnyValueFlow<A>(&lazy protocol witness table cache variable for type CallingIntentNeedsValueFlowStrategy<StartCallRCHFlowDelegate> and conformance CallingIntentNeedsValueFlowStrategy<A>, &_s27PhoneCallFlowDelegatePlugin023CallingIntentNeedsValueC8StrategyCyAA05Startb7RCHFlowD0CGMd, &_s27PhoneCallFlowDelegatePlugin023CallingIntentNeedsValueC8StrategyCyAA05Startb7RCHFlowD0CGMR);
    v45 = static RCHChildFlowFactoryHelper.makeNeedsValueFlowProducer<A>(strategy:)();
    v46 = v45(v74, v34);

    outlined init with copy of SignalProviding(&v67[v75], v88);
    v47 = v60;
    swift_storeEnumTagMultiPayload();
    v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin022ContactNeedsValueGuardC0CySo07INStartB6IntentCGMd, &_s27PhoneCallFlowDelegatePlugin022ContactNeedsValueGuardC0CySo07INStartB6IntentCGMR);
    v49 = *(v48 + 48);
    v50 = *(v48 + 52);
    swift_allocObject();
    *&v88[0] = specialized ContactNeedsValueGuardFlow.init(flow:state:sharedGlobals:app:)(v46, v47, v88, v61);
    lazy protocol witness table accessor for type AnyValueFlow<ExecuteOnRemoteFlowResult> and conformance AnyValueFlow<A>(&lazy protocol witness table cache variable for type ContactNeedsValueGuardFlow<INStartCallIntent> and conformance ContactNeedsValueGuardFlow<A>, &_s27PhoneCallFlowDelegatePlugin022ContactNeedsValueGuardC0CySo07INStartB6IntentCGMd, &_s27PhoneCallFlowDelegatePlugin022ContactNeedsValueGuardC0CySo07INStartB6IntentCGMR);

    v51 = Flow.eraseToAnyValueFlow()();
  }

  else
  {
    if (one-time initialization token for siriPhone != -1)
    {
      swift_once();
    }

    v52 = type metadata accessor for Logger();
    __swift_project_value_buffer(v52, static Logger.siriPhone);
    v53 = Logger.logObject.getter();
    v54 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      *v55 = 0;
      _os_log_impl(&dword_0, v53, v54, "#PhoneCallFlowFactory Needs value for non contact slot. Appending needsValueStrategy only.", v55, 2u);
    }

    *&v88[0] = v27;
    lazy protocol witness table accessor for type AnyValueFlow<ExecuteOnRemoteFlowResult> and conformance AnyValueFlow<A>(&lazy protocol witness table cache variable for type CallingIntentNeedsValueFlowStrategy<StartCallRCHFlowDelegate> and conformance CallingIntentNeedsValueFlowStrategy<A>, &_s27PhoneCallFlowDelegatePlugin023CallingIntentNeedsValueC8StrategyCyAA05Startb7RCHFlowD0CGMd, &_s27PhoneCallFlowDelegatePlugin023CallingIntentNeedsValueC8StrategyCyAA05Startb7RCHFlowD0CGMR);
    v56 = static RCHChildFlowFactoryHelper.makeNeedsValueFlowProducer<A>(strategy:)();
    v51 = v56(v74, v34);
  }

  return v51;
}

uint64_t closure #1 in static PhoneCallFlowFactory.getGenericStartCallProducers<A>(delegate:app:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v42 = a4;
  v45 = a2;
  v9 = *a1;
  v48 = a1;
  v46 = v9;
  v47 = type metadata accessor for ParameterIdentifier();
  v10 = *(v47 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v47);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for CallingIntentNeedsValueFlowStrategy();
  swift_unknownObjectRetain();
  v43 = default argument 1 of CallingIntentBaseFlowStrategy.init(delegate:startCallCATs:startCallCatPatterns:startCallCATsSimple:phoneCallCommonCATs:phoneCallCommonCATsSimple:phoneCallCommonCatPatterns:phoneCallDisplayTextCATsSimple:responseGenerator:siriKitEventSender:appInfoBuilder:)(a5, a6);
  default argument 2 of CallingIntentBaseFlowStrategy.init(delegate:startCallCATs:startCallCatPatterns:startCallCATsSimple:phoneCallCommonCATs:phoneCallCommonCATsSimple:phoneCallCommonCatPatterns:phoneCallDisplayTextCATsSimple:responseGenerator:siriKitEventSender:appInfoBuilder:)(v53);
  v14 = default argument 3 of CallingIntentBaseFlowStrategy.init(delegate:startCallCATs:startCallCatPatterns:startCallCATsSimple:phoneCallCommonCATs:phoneCallCommonCATsSimple:phoneCallCommonCatPatterns:phoneCallDisplayTextCATsSimple:responseGenerator:siriKitEventSender:appInfoBuilder:)(a5, a6);
  v15 = default argument 4 of CallingIntentBaseFlowStrategy.init(delegate:startCallCATs:startCallCatPatterns:startCallCATsSimple:phoneCallCommonCATs:phoneCallCommonCATsSimple:phoneCallCommonCatPatterns:phoneCallDisplayTextCATsSimple:responseGenerator:siriKitEventSender:appInfoBuilder:)(a5, a6);
  v16 = default argument 5 of CallingIntentBaseFlowStrategy.init(delegate:startCallCATs:startCallCatPatterns:startCallCATsSimple:phoneCallCommonCATs:phoneCallCommonCATsSimple:phoneCallCommonCatPatterns:phoneCallDisplayTextCATsSimple:responseGenerator:siriKitEventSender:appInfoBuilder:)(a5, a6);
  default argument 6 of CallingIntentBaseFlowStrategy.init(delegate:startCallCATs:startCallCatPatterns:startCallCATsSimple:phoneCallCommonCATs:phoneCallCommonCATsSimple:phoneCallCommonCatPatterns:phoneCallDisplayTextCATsSimple:responseGenerator:siriKitEventSender:appInfoBuilder:)(v52);
  v17 = default argument 7 of CallingIntentBaseFlowStrategy.init(delegate:startCallCATs:startCallCatPatterns:startCallCATsSimple:phoneCallCommonCATs:phoneCallCommonCATsSimple:phoneCallCommonCatPatterns:phoneCallDisplayTextCATsSimple:responseGenerator:siriKitEventSender:appInfoBuilder:)(a5, a6);
  default argument 8 of CallingIntentBaseFlowStrategy.init(delegate:startCallCATs:startCallCatPatterns:startCallCATsSimple:phoneCallCommonCATs:phoneCallCommonCATsSimple:phoneCallCommonCatPatterns:phoneCallDisplayTextCATsSimple:responseGenerator:siriKitEventSender:appInfoBuilder:)();
  SharedGlobalsProviding.siriKitEventSender.getter(v50, a5, a6);
  default argument 10 of CallingIntentBaseFlowStrategy.init(delegate:startCallCATs:startCallCatPatterns:startCallCATsSimple:phoneCallCommonCATs:phoneCallCommonCATsSimple:phoneCallCommonCatPatterns:phoneCallDisplayTextCATsSimple:responseGenerator:siriKitEventSender:appInfoBuilder:)(a5, a6);
  v18 = v45;
  v41 = a3;
  v19 = CallingIntentNeedsValueFlowStrategy.__allocating_init(delegate:startCallCATs:startCallCatPatterns:startCallCATsSimple:phoneCallCommonCATs:phoneCallCommonCATsSimple:phoneCallCommonCatPatterns:phoneCallDisplayTextCATsSimple:responseGenerator:siriKitEventSender:appInfoBuilder:)(a3, v43, v53, v14, v15, v16, v52, v17, v51, v50, v49);
  v20 = *(v46 + class metadata base offset for RCHChildFlowFactory);
  type metadata accessor for ParameterResolutionRecord();
  ParameterResolutionRecord.parameter.getter();
  v21 = ParameterIdentifier.name.getter();
  v23 = v22;
  (*(v10 + 8))(v13, v47);
  v24._countAndFlagsBits = v21;
  v24._object = v23;
  if ((PhoneCallSlotNames.init(rawValue:)(v24).value & 0xFE) == 4)
  {
    if (one-time initialization token for siriPhone != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    __swift_project_value_buffer(v25, static Logger.siriPhone);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_0, v26, v27, "#PhoneCallFlowFactory Contact slot needs value. Wrapping needsValueStrategy in NeedsValueGuardFlow.", v28, 2u);
    }

    v53[0] = v19;
    swift_getWitnessTable();
    v29 = static RCHChildFlowFactoryHelper.makeNeedsValueFlowProducer<A>(strategy:)();
    v30 = v29(v48, v18);

    swift_getAssociatedConformanceWitness();
    type metadata accessor for ContactNeedsValueGuardFlow();
    v52[0] = v41;
    v31 = *(*(a6 + 8) + 8);
    v32 = *(v31 + 8);

    v32(v53, a5, v31);
    v33 = v42;

    v53[0] = ContactNeedsValueGuardFlow.__allocating_init(_:_:app:)(v30, v53, v33);
    swift_getWitnessTable();
    v34 = Flow.eraseToAnyValueFlow()();
  }

  else
  {
    if (one-time initialization token for siriPhone != -1)
    {
      swift_once();
    }

    v35 = type metadata accessor for Logger();
    __swift_project_value_buffer(v35, static Logger.siriPhone);
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_0, v36, v37, "#PhoneCallFlowFactory Needs value for non contact slot. Appending needsValueStrategy only.", v38, 2u);
    }

    v53[0] = v19;
    swift_getWitnessTable();
    v39 = static RCHChildFlowFactoryHelper.makeNeedsValueFlowProducer<A>(strategy:)();
    v34 = v39(v48, v18);
  }

  return v34;
}

uint64_t closure #2 in static PhoneCallFlowFactory.getGenericStartCallProducers<A>(delegate:app:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *a1;
  v37 = a1;
  v38 = v8;
  v39 = a2;
  v9 = type metadata accessor for ParameterIdentifier();
  v35 = *(v9 - 8);
  v36 = v9;
  v10 = *(v35 + 64);
  __chkstk_darwin(v9);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for CallingIntentUnsupportedValueFlowStrategy();
  swift_unknownObjectRetain();
  v34 = default argument 6 of PhoneCallBaseCatTemplatingService.init(ducFamily:sharedGlobals:displayTextCats:phoneCallCommonCats:appInfoBuilder:labelTemplating:startCallCats:)(a4);
  default argument 2 of CallingIntentUnsupportedValueFlowStrategy.init(delegate:startCallCATs:startCallCatPatterns:phoneCallCommonCATs:phoneCallCommonCatPatterns:startCallCatsSimple:phoneCallDisplayTextCATsSimple:siriKitEventSender:appInfoBuilder:)(v41, a4, a5);
  v13 = default argument 3 of PhoneCallBaseCatTemplatingService.init(ducFamily:sharedGlobals:displayTextCats:phoneCallCommonCats:appInfoBuilder:labelTemplating:startCallCats:)(a4, a5);
  default argument 2 of PhoneTCCFlowStrategy.init(sharedGlobals:phoneCallCommonCats:phoneCallCommonCatPatterns:labelTemplatesProvider:tccTemplatesProvider:appInfoBuilder:)(v44, a4, a5);
  v14 = default argument 5 of CallingIntentUnsupportedValueFlowStrategy.init(delegate:startCallCATs:startCallCatPatterns:phoneCallCommonCATs:phoneCallCommonCatPatterns:startCallCatsSimple:phoneCallDisplayTextCATsSimple:siriKitEventSender:appInfoBuilder:)(a4, a5);
  v15 = default argument 6 of CallingIntentUnsupportedValueFlowStrategy.init(delegate:startCallCATs:startCallCatPatterns:phoneCallCommonCATs:phoneCallCommonCatPatterns:startCallCatsSimple:phoneCallDisplayTextCATsSimple:siriKitEventSender:appInfoBuilder:)(a4, a5);
  default argument 7 of static ReferenceContactResolutionWrapper.resolveUpdateSKIntent(siriKitIntent:contactQueries:hasEmergencyContact:app:nlIntent:sharedGlobals:multicardinalIndex:siriKitEventSender:emergencyContactResolution:contactGroupResolver:)(v43, a4, a5);
  default argument 4 of PhoneCallBaseCatTemplatingService.init(ducFamily:sharedGlobals:displayTextCats:phoneCallCommonCats:appInfoBuilder:labelTemplating:startCallCats:)(a4);
  v33 = a3;
  v16 = CallingIntentUnsupportedValueFlowStrategy.__allocating_init(delegate:startCallCATs:startCallCatPatterns:phoneCallCommonCATs:phoneCallCommonCatPatterns:startCallCatsSimple:phoneCallDisplayTextCATsSimple:siriKitEventSender:appInfoBuilder:)(a3, v34, v41, v13, v44, v14, v15, v43, v42);
  v17 = *(v38 + class metadata base offset for RCHChildFlowFactory);
  v18 = type metadata accessor for ParameterResolutionRecord();
  ParameterResolutionRecord.parameter.getter();
  v19 = ParameterIdentifier.name.getter();
  v21 = v20;
  (*(v35 + 8))(v12, v36);
  v22._countAndFlagsBits = v19;
  v22._object = v21;
  if ((PhoneCallSlotNames.init(rawValue:)(v22).value & 0xFE) == 4)
  {
    v23 = v16;
    v24 = *(swift_getAssociatedConformanceWitness() + 8);
    v25 = v39;
    if (ParameterResolutionRecord<>.isUnsetRelationship.getter(v18, v24))
    {
      v40[5] = v33;
      (*(*(*(a5 + 8) + 8) + 8))(v44, a4);
      default argument 1 of ContactUnsetRelationshipFlowStrategy.init(sharedGlobals:contactStore:labelTemplates:unsetRelationshipTemplates:displayTextCatFamily:phoneCallCommonCats:)(v43);
      default argument 2 of ContactUnsetRelationshipFlowStrategy.init(sharedGlobals:contactStore:labelTemplates:unsetRelationshipTemplates:displayTextCatFamily:phoneCallCommonCats:)(v42);
      default argument 3 of ContactUnsetRelationshipFlowStrategy.init(sharedGlobals:contactStore:labelTemplates:unsetRelationshipTemplates:displayTextCatFamily:phoneCallCommonCats:)(v17, v24);
      v26 = default argument 4 of ContactUnsetRelationshipFlowStrategy.init(sharedGlobals:contactStore:labelTemplates:unsetRelationshipTemplates:displayTextCatFamily:phoneCallCommonCats:)(v17, v24);
      v27 = default argument 3 of PhoneCallBaseCatTemplatingService.init(ducFamily:sharedGlobals:displayTextCats:phoneCallCommonCats:appInfoBuilder:labelTemplating:startCallCats:)(v17, v24);
      ContactUnsetRelationshipFlowStrategy.init(sharedGlobals:contactStore:labelTemplates:unsetRelationshipTemplates:displayTextCatFamily:phoneCallCommonCats:)(v44, v43, v42, v40, v26, v27, v41);
      v28 = type metadata accessor for ContactUnsetRelationshipFlowStrategy();
      v29 = *(v38 + class metadata base offset for RCHChildFlowFactory + 8);
      swift_getWitnessTable();
      v30 = static RCHChildFlowFactoryHelper.makeUnsupportedUnsetRelationshipFlowProducer<A, B>(strategy:)();
      (*(*(v28 - 8) + 8))(v41, v28);
    }

    else
    {
      v41[0] = v23;
      swift_getWitnessTable();
      v30 = static RCHChildFlowFactoryHelper.makeUnsupportedValueAndPromptFlowProducer<A>(strategy:)();
    }
  }

  else
  {
    v41[0] = v16;
    swift_getWitnessTable();
    v30 = static RCHChildFlowFactoryHelper.makeUnsupportedValueAndCancelFlowProducer<A>(strategy:)();
    v25 = v39;
  }

  v31 = v30(v37, v25);

  return v31;
}

uint64_t closure #1 in static PhoneCallFlowFactory.getStartCallProducers(skIntent:delegate:app:sharedGlobals:)(uint64_t a1, void *a2, void *a3, void *a4)
{
  v112 = a3;
  v7 = type metadata accessor for CATOption();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = (&v100 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v110 = type metadata accessor for ResponseMode();
  v108 = *(v110 - 8);
  v11 = *(v108 + 64);
  __chkstk_darwin(v110);
  v107 = &v100 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities12ResponseModeVSg_ADtMd, &_s13SiriUtilities12ResponseModeVSg_ADtMR);
  v13 = *(*(v111 - 8) + 64);
  __chkstk_darwin(v111);
  v15 = &v100 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities12ResponseModeVSgMd, &_s13SiriUtilities12ResponseModeVSgMR);
  v17 = *(*(v16 - 8) + 64);
  v18 = __chkstk_darwin(v16 - 8);
  v109 = &v100 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v113 = &v100 - v21;
  __chkstk_darwin(v20);
  v114 = &v100 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow22IntentResolutionRecordVySo011INStartCallD0CSo0ghD8ResponseCGMd, &_s11SiriKitFlow22IntentResolutionRecordVySo011INStartCallD0CSo0ghD8ResponseCGMR);
  v24 = *(v23 - 1);
  v25 = *(v24 + 64);
  __chkstk_darwin(v23);
  v27 = &v100 - v26;
  v28 = IntentResolutionRecord.intentResponse.getter();
  v29 = [v28 _intentResponseCode];

  if (v29 == &dword_8)
  {
    v101 = a1;
    if (one-time initialization token for siriPhone != -1)
    {
LABEL_51:
      swift_once();
    }

    v103 = v15;
    v104 = v10;
    v100 = a4;
    v30 = type metadata accessor for Logger();
    v31 = __swift_project_value_buffer(v30, static Logger.siriPhone);
    (*(v24 + 16))(v27, a2, v23);
    v102 = v31;
    v10 = Logger.logObject.getter();
    v32 = static os_log_type_t.debug.getter();
    v33 = os_log_type_enabled(v10, v32);
    v106 = v23;
    if (v33)
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      *v34 = 138412290;
      v36 = IntentResolutionRecord.intent.getter();
      v37 = [v36 backingStore];

      if (!outlined bridged method (ob) of @objc PBCodable.dictionaryRepresentation()(v37))
      {
        Dictionary.init(dictionaryLiteral:)();
      }

      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      v39 = v106;
      (*(v24 + 8))(v27, v106);
      *(v34 + 4) = isa;
      *v35 = isa;
      _os_log_impl(&dword_0, v10, v32, "#PhoneCallFlowFactory Extension explicitly asked to confirm, intent = %@", v34, 0xCu);
      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v35, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v23 = v39;
    }

    else
    {

      (*(v24 + 8))(v27, v23);
    }

    v105 = a2;
    v44 = IntentResolutionRecord.intent.getter();
    v45 = outlined bridged method (ob) of @objc INStartCallIntent.contacts.getter(v44);
    if (v45)
    {
      v46 = v45;
    }

    else
    {
      v46 = &_swiftEmptyArrayStorage;
    }

    v47 = specialized Array.count.getter(v46);
    v27 = 0;
    v24 = v46 & 0xC000000000000001;
    v15 = (v46 & 0xFFFFFFFFFFFFFF8);
    a2 = &unk_548000;
    a4 = &unk_548000;
    while (v47 != v27)
    {
      if (v24)
      {
        v48 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v27 >= *(&dword_10 + (v46 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_50;
        }

        v48 = *(v46 + 8 * v27 + 32);
      }

      v10 = v48;
      if (__OFADD__(v27, 1))
      {
        __break(1u);
LABEL_50:
        __break(1u);
        goto LABEL_51;
      }

      v49 = [v48 personHandle];
      if (v49)
      {
        v50 = v49;
        v23 = [v49 emergencyType];

        if (v23 == (&dword_0 + 1))
        {

          v58 = v10;
          v41 = Logger.logObject.getter();
          v59 = static os_log_type_t.debug.getter();

          if (os_log_type_enabled(v41, v59))
          {
            v60 = swift_slowAlloc();
            v61 = swift_slowAlloc();
            *v60 = 138412290;
            *(v60 + 4) = v58;
            *v61 = v58;
            v62 = v58;
            _os_log_impl(&dword_0, v41, v59, "#PhoneCallFlowFactory skipping confirmation because contacts contains local emergency handle: %@", v60, 0xCu);
            outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v61, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);

            return 0;
          }

          goto LABEL_37;
        }
      }

      ++v27;
    }

    v51 = v112;
    v52 = v112[3];
    v53 = v112[4];
    __swift_project_boxed_opaque_existential_1(v112, v52);
    if ((*(v53 + 112))(v52, v53))
    {
      v54 = v114;
      CurrentRequest.responseMode.getter();

      v55 = 0;
      v56 = v105;
      v57 = v110;
    }

    else
    {
      v55 = 1;
      v56 = v105;
      v57 = v110;
      v54 = v114;
    }

    v63 = v113;
    __swift_storeEnumTagSinglePayload(v54, v55, 1, v57);
    static ResponseMode.voiceOnly.getter();
    __swift_storeEnumTagSinglePayload(v63, 0, 1, v57);
    v64 = *(v111 + 48);
    v65 = v103;
    outlined init with copy of ButtonConfigurationModel?(v54, v103, &_s13SiriUtilities12ResponseModeVSgMd, &_s13SiriUtilities12ResponseModeVSgMR);
    outlined init with copy of ButtonConfigurationModel?(v63, v65 + v64, &_s13SiriUtilities12ResponseModeVSgMd, &_s13SiriUtilities12ResponseModeVSgMR);
    if (__swift_getEnumTagSinglePayload(v65, 1, v57) == 1)
    {
      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v63, &_s13SiriUtilities12ResponseModeVSgMd, &_s13SiriUtilities12ResponseModeVSgMR);
      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v54, &_s13SiriUtilities12ResponseModeVSgMd, &_s13SiriUtilities12ResponseModeVSgMR);
      if (__swift_getEnumTagSinglePayload(v65 + v64, 1, v57) == 1)
      {
        outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v65, &_s13SiriUtilities12ResponseModeVSgMd, &_s13SiriUtilities12ResponseModeVSgMR);
        v66 = 1;
LABEL_40:
        v74 = v51[3];
        v75 = v51[4];
        __swift_project_boxed_opaque_existential_1(v51, v74);
        if ((*(v75 + 112))(v74, v75))
        {
          v76 = v51[3];
          v77 = v51[4];
          __swift_project_boxed_opaque_existential_1(v51, v76);
          (*(v77 + 8))(v116, v76, v77);

          __swift_destroy_boxed_opaque_existential_1(v116);
        }

        if (v66 & 1) != 0 && (v78 = IntentResolutionRecord.intent.getter(), v79 = static EmergencyUtils.requiresEmergencyConfirmation(intent:intentResponse:)(v78, 0), v78, (v79))
        {
          v80 = Logger.logObject.getter();
          v81 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v80, v81))
          {
            v82 = swift_slowAlloc();
            *v82 = 0;
            _os_log_impl(&dword_0, v80, v81, "#PhoneCallFlowFactory making confirmation producer for voice only emergency call request", v82, 2u);
          }

          outlined init with copy of SignalProviding(v51, v116);
          v83 = IntentResolutionRecord.intent.getter();
          type metadata accessor for StartCallCATsSimple();
          static CATOption.defaultMode.getter();
          v84 = CATWrapperSimple.__allocating_init(options:globals:)();
          type metadata accessor for PhoneCallCommonCATsSimple();
          static CATOption.defaultMode.getter();
          v85 = CATWrapperSimple.__allocating_init(options:globals:)();
          type metadata accessor for VoiceOnlyEmergencyConfirmationFlow();
          swift_allocObject();
          v116[0] = VoiceOnlyEmergencyConfirmationFlow.init(sharedGlobals:skIntent:startCallCATsSimple:phoneCallCommonCATsSimple:)(v116, v83, v84, v85);
          v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow016AnyConfirmIntentC0CySo011INStartCallF0CGMd, &_s11SiriKitFlow016AnyConfirmIntentC0CySo011INStartCallF0CGMR);
          v87 = *(v86 + 48);
          v88 = *(v86 + 52);
          swift_allocObject();
          lazy protocol witness table accessor for type SearchCallHistoryHandleFlowStrategy and conformance SearchCallHistoryHandleFlowStrategy(&lazy protocol witness table cache variable for type VoiceOnlyEmergencyConfirmationFlow and conformance VoiceOnlyEmergencyConfirmationFlow, type metadata accessor for VoiceOnlyEmergencyConfirmationFlow);
          v116[0] = AnyConfirmIntentFlow.init<A>(_:)();
          lazy protocol witness table accessor for type AnyValueFlow<ExecuteOnRemoteFlowResult> and conformance AnyValueFlow<A>(&lazy protocol witness table cache variable for type AnyConfirmIntentFlow<INStartCallIntent> and conformance AnyConfirmIntentFlow<A>, &_s11SiriKitFlow016AnyConfirmIntentC0CySo011INStartCallF0CGMd, &_s11SiriKitFlow016AnyConfirmIntentC0CySo011INStartCallF0CGMR);
          v68 = Flow.eraseToAnyValueFlow()();
        }

        else
        {
          v89 = v51[3];
          v90 = v51[4];
          __swift_project_boxed_opaque_existential_1(v51, v89);
          (*(v90 + 104))(v116, v89, v90);
          v91 = v117;
          v92 = v118;
          __swift_project_boxed_opaque_existential_1(v116, v117);
          type metadata accessor for StartCallCATsSimple();
          static CATOption.defaultMode.getter();
          v93 = CATWrapperSimple.__allocating_init(options:globals:)();
          type metadata accessor for PhoneCallDisplayTextCATsSimple();
          static CATOption.defaultMode.getter();
          v94 = CATWrapperSimple.__allocating_init(options:globals:)();
          v95 = type metadata accessor for StartCallConfirmIntentFlowStrategy();
          swift_allocObject();
          v115 = StartCallConfirmIntentFlowStrategy.init(delegate:startCallCATsSimple:displayTextCATsSimple:)(v100, v93, v94);
          v96 = *(v92 + 16);
          v97 = lazy protocol witness table accessor for type SearchCallHistoryHandleFlowStrategy and conformance SearchCallHistoryHandleFlowStrategy(&lazy protocol witness table cache variable for type StartCallConfirmIntentFlowStrategy and conformance StartCallConfirmIntentFlowStrategy, type metadata accessor for StartCallConfirmIntentFlowStrategy);

          v98 = v96(&v115, v95, v97, v91, v92);

          v68 = v98(v101, v56);

          __swift_destroy_boxed_opaque_existential_1(v116);
        }

        return v68;
      }
    }

    else
    {
      v67 = v109;
      outlined init with copy of ButtonConfigurationModel?(v65, v109, &_s13SiriUtilities12ResponseModeVSgMd, &_s13SiriUtilities12ResponseModeVSgMR);
      if (__swift_getEnumTagSinglePayload(v65 + v64, 1, v57) != 1)
      {
        v69 = v107;
        v70 = v108;
        (*(v108 + 32))(v107, v65 + v64, v57);
        lazy protocol witness table accessor for type SearchCallHistoryHandleFlowStrategy and conformance SearchCallHistoryHandleFlowStrategy(&lazy protocol witness table cache variable for type ResponseMode and conformance ResponseMode, &type metadata accessor for ResponseMode);
        v71 = v67;
        v66 = dispatch thunk of static Equatable.== infix(_:_:)();
        v72 = *(v70 + 8);
        v72(v69, v57);
        outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v113, &_s13SiriUtilities12ResponseModeVSgMd, &_s13SiriUtilities12ResponseModeVSgMR);
        outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v114, &_s13SiriUtilities12ResponseModeVSgMd, &_s13SiriUtilities12ResponseModeVSgMR);
        v73 = v71;
        v56 = v105;
        v72(v73, v57);
        outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v65, &_s13SiriUtilities12ResponseModeVSgMd, &_s13SiriUtilities12ResponseModeVSgMR);
        goto LABEL_40;
      }

      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v63, &_s13SiriUtilities12ResponseModeVSgMd, &_s13SiriUtilities12ResponseModeVSgMR);
      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v54, &_s13SiriUtilities12ResponseModeVSgMd, &_s13SiriUtilities12ResponseModeVSgMR);
      (*(v108 + 8))(v67, v57);
    }

    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v65, &_s13SiriUtilities12ResponseModeVSg_ADtMd, &_s13SiriUtilities12ResponseModeVSg_ADtMR);
    v66 = 0;
    goto LABEL_40;
  }

  if (one-time initialization token for siriPhone != -1)
  {
    swift_once();
  }

  v40 = type metadata accessor for Logger();
  __swift_project_value_buffer(v40, static Logger.siriPhone);
  v41 = Logger.logObject.getter();
  v42 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    *v43 = 0;
    _os_log_impl(&dword_0, v41, v42, "#PhoneCallFlowFactory skipping confirmation", v43, 2u);
  }

LABEL_37:

  return 0;
}

uint64_t closure #2 in static PhoneCallFlowFactory.getStartCallProducers(skIntent:delegate:app:sharedGlobals:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t), uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for CATOption();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow22IntentResolutionRecordVySo011INStartCallD0CSo0ghD8ResponseCGMd, &_s11SiriKitFlow22IntentResolutionRecordVySo011INStartCallD0CSo0ghD8ResponseCGMR);
  v13 = IntentResolutionRecord.intent.getter();
  v14 = outlined bridged method (ob) of @objc INStartCallIntent.faceTimeLink.getter(v13);
  v16 = specialized Optional<A>.isNilOrEmpty.getter(v14, v15);

  if ((v16 & 1) == 0)
  {
    if (one-time initialization token for siriPhone != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    __swift_project_value_buffer(v24, static Logger.siriPhone);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_0, v25, v26, "#PhoneCallFlowFactory Received FaceTime request and has FaceTimeLink set", v27, 2u);
    }

    v28 = IntentResolutionRecord.app.getter();
    v29 = IntentResolutionRecord.intent.getter();
    v30 = IntentResolutionRecord.intentResponse.getter();
    outlined init with copy of SignalProviding(a3, v45);
    type metadata accessor for StartCallCATsSimple();
    static CATOption.defaultMode.getter();
    v31 = CATWrapperSimple.__allocating_init(options:globals:)();
    v32 = type metadata accessor for FlowFinder();
    v33 = swift_allocObject();
    static SiriKitEventSender.current.getter();
    type metadata accessor for FaceTimeMessageControllerFlow();
    v34 = swift_allocObject();
    *(v34 + 112) = v32;
    *(v34 + 120) = &protocol witness table for FlowFinder;
    *(v34 + 88) = v33;
    *(v34 + 169) = 5;
    *(v34 + 16) = v28;
    *(v34 + 24) = v29;
    *(v34 + 32) = v30;
    outlined init with take of SPHConversation(v45, v34 + 40);
    *(v34 + 168) = 0;
    *(v34 + 80) = v31;
    outlined init with take of SPHConversation(&v44, v34 + 128);
    *&v45[0] = v34;
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow016AnyConfirmIntentC0CySo011INStartCallF0CGMd, &_s11SiriKitFlow016AnyConfirmIntentC0CySo011INStartCallF0CGMR);
    v36 = *(v35 + 48);
    v37 = *(v35 + 52);
    swift_allocObject();
    lazy protocol witness table accessor for type SearchCallHistoryHandleFlowStrategy and conformance SearchCallHistoryHandleFlowStrategy(&lazy protocol witness table cache variable for type FaceTimeMessageControllerFlow and conformance FaceTimeMessageControllerFlow, type metadata accessor for FaceTimeMessageControllerFlow);
    *&v45[0] = AnyConfirmIntentFlow.init<A>(_:)();
    lazy protocol witness table accessor for type AnyValueFlow<ExecuteOnRemoteFlowResult> and conformance AnyValueFlow<A>(&lazy protocol witness table cache variable for type AnyConfirmIntentFlow<INStartCallIntent> and conformance AnyConfirmIntentFlow<A>, &_s11SiriKitFlow016AnyConfirmIntentC0CySo011INStartCallF0CGMd, &_s11SiriKitFlow016AnyConfirmIntentC0CySo011INStartCallF0CGMR);
    v23 = Flow.eraseToAnyValueFlow()();
    goto LABEL_14;
  }

  if (a4)
  {
    v17 = one-time initialization token for siriPhone;

    if (v17 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    __swift_project_value_buffer(v18, static Logger.siriPhone);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_0, v19, v20, "#PhoneCallFlowFactory using default confirmIntentFlowCompletion", v21, 2u);
    }

    v22 = a4(a6, a2);
    if (!v22)
    {
      outlined consume of (@escaping @callee_guaranteed (@guaranteed RCHChildFlowFactory<INStartCallIntent, INStartCallIntentResponse>, @in_guaranteed IntentResolutionRecord<INStartCallIntent, INStartCallIntentResponse>) -> (@owned AnyValueFlow<PromptResult<ConfirmIntentAnswer<INStartCallIntent>>>?))?(a4, a5);
      return 0;
    }

    *&v45[0] = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow08AnyValueC0CyAA12PromptResultOyAA19ConfirmIntentAnswerVySo011INStartCallI0CGGGMd, &_s11SiriKitFlow08AnyValueC0CyAA12PromptResultOyAA19ConfirmIntentAnswerVySo011INStartCallI0CGGGMR);
    lazy protocol witness table accessor for type AnyValueFlow<ExecuteOnRemoteFlowResult> and conformance AnyValueFlow<A>(&lazy protocol witness table cache variable for type AnyValueFlow<PromptResult<ConfirmIntentAnswer<INStartCallIntent>>> and conformance AnyValueFlow<A>, &_s11SiriKitFlow08AnyValueC0CyAA12PromptResultOyAA19ConfirmIntentAnswerVySo011INStartCallI0CGGGMd, &_s11SiriKitFlow08AnyValueC0CyAA12PromptResultOyAA19ConfirmIntentAnswerVySo011INStartCallI0CGGGMR);
    v23 = Flow.eraseToAnyValueFlow()();
    outlined consume of (@escaping @callee_guaranteed (@guaranteed RCHChildFlowFactory<INStartCallIntent, INStartCallIntentResponse>, @in_guaranteed IntentResolutionRecord<INStartCallIntent, INStartCallIntentResponse>) -> (@owned AnyValueFlow<PromptResult<ConfirmIntentAnswer<INStartCallIntent>>>?))?(a4, a5);
LABEL_14:

    return v23;
  }

  if (one-time initialization token for siriPhone != -1)
  {
    swift_once();
  }

  v39 = type metadata accessor for Logger();
  __swift_project_value_buffer(v39, static Logger.siriPhone);
  v40 = Logger.logObject.getter();
  v41 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    *&v45[0] = v43;
    *v42 = 136315138;
    *(v42 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000048, 0x800000000045E570, v45);
    _os_log_impl(&dword_0, v40, v41, "%s", v42, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v43);
  }

  static SiriKitLifecycle._logCrashToEventBus(_:)();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t closure #1 in static PhoneCallFlowFactory.makeAddCallParticipantRCHFlow(intent:app:sharedGlobals:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[10] = a3;
  v4[11] = a4;
  v4[8] = a1;
  v4[9] = a2;
  v5 = *(*(type metadata accessor for CATOption() - 8) + 64) + 15;
  v4[12] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow22IntentResolutionRecordVySo020INAddCallParticipantD0CSo0ghiD8ResponseCGMd, &_s11SiriKitFlow22IntentResolutionRecordVySo020INAddCallParticipantD0CSo0ghiD8ResponseCGMR);
  v4[13] = v6;
  v7 = *(v6 - 8);
  v4[14] = v7;
  v8 = *(v7 + 64) + 15;
  v4[15] = swift_task_alloc();

  return _swift_task_switch(closure #1 in static PhoneCallFlowFactory.makeAddCallParticipantRCHFlow(intent:app:sharedGlobals:), 0, 0);
}

uint64_t closure #1 in static PhoneCallFlowFactory.makeAddCallParticipantRCHFlow(intent:app:sharedGlobals:)()
{
  v2 = *(v0 + 112);
  v1 = *(v0 + 120);
  v3 = *(v0 + 96);
  v17 = *(v0 + 104);
  v5 = *(v0 + 80);
  v4 = *(v0 + 88);
  v7 = *(v0 + 64);
  v6 = *(v0 + 72);
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INAddCallParticipantIntent, INAddCallParticipantIntent_ptr);
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INAddCallParticipantIntentResponse, INAddCallParticipantIntentResponse_ptr);

  v8 = v7;
  v9 = v6;
  IntentResolutionRecord.init(app:intent:intentResponse:)();
  outlined init with copy of SignalProviding(v4, v0 + 16);
  v10 = type metadata accessor for AddCallParticipantCATPatternsExecutor();
  static CATOption.defaultMode.getter();
  v11 = CATWrapper.__allocating_init(options:globals:)();
  v12 = type metadata accessor for AddCallParticipantHandleIntentFollowUpFlow();
  OUTLINED_FUNCTION_12_8(v12);
  v13 = swift_allocObject();
  v14 = (v13 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin42AddCallParticipantHandleIntentFollowUpFlow_patterns);
  v14[3] = v10;
  v14[4] = &protocol witness table for AddCallParticipantCATPatternsExecutor;
  *v14 = v11;
  (*(v2 + 32))(v13 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin42AddCallParticipantHandleIntentFollowUpFlow_rchRecord, v1, v17);
  outlined init with take of SPHConversation((v0 + 16), v13 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin42AddCallParticipantHandleIntentFollowUpFlow_sharedGlobals);
  *(v0 + 56) = v13;
  lazy protocol witness table accessor for type SearchCallHistoryHandleFlowStrategy and conformance SearchCallHistoryHandleFlowStrategy(&lazy protocol witness table cache variable for type AddCallParticipantHandleIntentFollowUpFlow and conformance AddCallParticipantHandleIntentFollowUpFlow, type metadata accessor for AddCallParticipantHandleIntentFollowUpFlow);
  Flow.eraseToAnyFlow()();
  OUTLINED_FUNCTION_64();

  v15 = *(v0 + 8);

  return v15(v0 + 56);
}

uint64_t closure #2 in static PhoneCallFlowFactory.makeAddCallParticipantRCHFlow(intent:app:sharedGlobals:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for CATOption();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow25ParameterResolutionRecordVySo26INAddCallParticipantIntentCGMd, &_s11SiriKitFlow25ParameterResolutionRecordVySo26INAddCallParticipantIntentCGMR);
  v10 = ParameterResolutionRecord.result.getter();
  v11 = [v10 unsupportedReason];

  if ((v11 - 5) > 1)
  {
    if (specialized ParameterResolutionRecord<>.isUnsetRelationship.getter())
    {
      outlined init with copy of SignalProviding(a3, &v20);
      [objc_allocWithZone(CNContactStore) init];
      type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for CNContactStore, CNContactStore_ptr);
      v19 = swift_allocObject();
      *(v19 + 16) = 0u;
      *(v19 + 32) = 0u;
      type metadata accessor for UnsetRelationshipTemplatesWrapper();
      swift_allocObject();
      type metadata accessor for PhoneCallDisplayTextCATs();
      static CATOption.defaultMode.getter();
      CATWrapper.__allocating_init(options:globals:)();
      type metadata accessor for PhoneCallCommonCATs();
      static CATOption.defaultMode.getter();
      CATWrapper.__allocating_init(options:globals:)();
      _s27PhoneCallFlowDelegatePlugin024ContactUnsetRelationshipC8StrategyV13sharedGlobals12contactStore14labelTemplates05unsethO020displayTextCatFamily05phoneB10CommonCatsACyxGAA06SharedK9Providing_p_AA0F7Storing_pAA05LabeloY0_pAA0gh8TemplateY0_pAA0ab7DisplayR4CATsCAA0abV4CATsCtcfCSo012INStartAudioB6IntentC_Tt6g5Tm();
      v14 = &_s27PhoneCallFlowDelegatePlugin024ContactUnsetRelationshipC8StrategyVySo05INAddB17ParticipantIntentCGMd;
      v15 = &_s27PhoneCallFlowDelegatePlugin024ContactUnsetRelationshipC8StrategyVySo05INAddB17ParticipantIntentCGMR;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin024ContactUnsetRelationshipC8StrategyVySo05INAddB17ParticipantIntentCGMd, &_s27PhoneCallFlowDelegatePlugin024ContactUnsetRelationshipC8StrategyVySo05INAddB17ParticipantIntentCGMR);
      type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INAddCallParticipantIntentResponse, INAddCallParticipantIntentResponse_ptr);
      lazy protocol witness table accessor for type AnyValueFlow<ExecuteOnRemoteFlowResult> and conformance AnyValueFlow<A>(&lazy protocol witness table cache variable for type ContactUnsetRelationshipFlowStrategy<INAddCallParticipantIntent> and conformance ContactUnsetRelationshipFlowStrategy<A>, &_s27PhoneCallFlowDelegatePlugin024ContactUnsetRelationshipC8StrategyVySo05INAddB17ParticipantIntentCGMd, &_s27PhoneCallFlowDelegatePlugin024ContactUnsetRelationshipC8StrategyVySo05INAddB17ParticipantIntentCGMR);
      v16 = static RCHChildFlowFactoryHelper.makeUnsupportedUnsetRelationshipFlowProducer<A, B>(strategy:)();
    }

    else
    {
      outlined init with copy of SignalProviding(a3, v21 + 8);
      *&v21[0] = a4;

      v14 = &_s27PhoneCallFlowDelegatePlugin018ContactUnsupportedC8StrategyVyAA25ParticipantOutputProviderCGMd;
      v15 = &_s27PhoneCallFlowDelegatePlugin018ContactUnsupportedC8StrategyVyAA25ParticipantOutputProviderCGMR;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin018ContactUnsupportedC8StrategyVyAA25ParticipantOutputProviderCGMd, &_s27PhoneCallFlowDelegatePlugin018ContactUnsupportedC8StrategyVyAA25ParticipantOutputProviderCGMR);
      lazy protocol witness table accessor for type AnyValueFlow<ExecuteOnRemoteFlowResult> and conformance AnyValueFlow<A>(&lazy protocol witness table cache variable for type ContactUnsupportedFlowStrategy<ParticipantOutputProvider> and conformance ContactUnsupportedFlowStrategy<A>, &_s27PhoneCallFlowDelegatePlugin018ContactUnsupportedC8StrategyVyAA25ParticipantOutputProviderCGMd, &_s27PhoneCallFlowDelegatePlugin018ContactUnsupportedC8StrategyVyAA25ParticipantOutputProviderCGMR);
      v16 = static RCHChildFlowFactoryHelper.makeUnsupportedValueAndPromptFlowProducer<A>(strategy:)();
    }

    v13 = v16;
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v21, v14, v15);
  }

  else
  {
    outlined init with copy of SignalProviding(a3, v21);
    v12 = swift_allocObject();
    outlined init with take of SPHConversation(v21, v12 + 16);
    v13 = partial apply for specialized closure #1 in static OngoingCallFlowProducers.makeUnsupportedValueOfferFlowProducer<A, B>(sharedGlobals:);
  }

  v17 = v13(a1, a2);

  return v17;
}

uint64_t specialized closure #1 in static PhoneCallFlowFactory.makeAppResolutionFlowBeforeNextResolveFlowProducer<A>(delegate:app:sharedGlobal:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (specialized Sequence<>.contains(_:)(a6, a9))
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2();
    }

    v16 = type metadata accessor for Logger();
    __swift_project_value_buffer(v16, static Logger.siriPhone);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = OUTLINED_FUNCTION_65_0();
      *v19 = 0;
      _os_log_impl(&dword_0, v17, v18, "#PhoneCallFlowFactory makeAppResolutionFlowBeforeNextResolveFlowProducer: resolutionResultCode is needsDisambiguation or needsConfirmation, don't start app resolution again", v19, 2u);
      OUTLINED_FUNCTION_26_0();
    }

    return 0;
  }

  else
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2();
    }

    v20 = type metadata accessor for Logger();
    __swift_project_value_buffer(v20, static Logger.siriPhone);

    v21 = a3;

    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v35 = a8;
      v24 = swift_slowAlloc();
      *&v37[0] = swift_slowAlloc();
      *v24 = 136315906;
      *&v36[0] = a2;
      type metadata accessor for App();
      lazy protocol witness table accessor for type SearchCallHistoryHandleFlowStrategy and conformance SearchCallHistoryHandleFlowStrategy(&lazy protocol witness table cache variable for type App and conformance App, &type metadata accessor for App);
      v25 = dispatch thunk of CustomStringConvertible.description.getter();
      v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v26, v37);

      *(v24 + 4) = v27;
      *(v24 + 12) = 2048;
      *(v24 + 14) = a6;
      *(v24 + 22) = 2080;
      v28 = INIntent.debugDescriptionLite.getter();
      v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v29, v37);

      *(v24 + 24) = v30;
      *(v24 + 32) = 2080;
      *(v24 + 34) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a4, a5, v37);
      _os_log_impl(&dword_0, v22, v23, "#PhoneCallFlowFactory makeAppResolutionFlowBeforeNextResolveFlowProducer: app:%s resolutionResultCode:%ld intent:%s parameterName: %s ", v24, 0x2Au);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_26_0();
      a8 = v35;
      OUTLINED_FUNCTION_26_0();
    }

    v31 = outlined init with copy of SignalProviding(a8, v37);
    default argument 2 of PhoneCallFlow.init(state:sharedGlobals:appFinder:eligibleAppsFinder:)(v36, v31);
    v32 = type metadata accessor for AppResolutionBeforeResolveFlow(0);
    OUTLINED_FUNCTION_12_8(v32);
    swift_allocObject();
    *&v37[0] = AppResolutionBeforeResolveFlow.init(previousTurnIntent:previouslyResolvedApp:sharedGlobals:appFinder:)(v21, a7, v37, v36);
    lazy protocol witness table accessor for type SearchCallHistoryHandleFlowStrategy and conformance SearchCallHistoryHandleFlowStrategy(&lazy protocol witness table cache variable for type AppResolutionBeforeResolveFlow and conformance AppResolutionBeforeResolveFlow, type metadata accessor for AppResolutionBeforeResolveFlow);
    v33 = v21;

    Flow.eraseToAnyValueFlow()();
    OUTLINED_FUNCTION_48_16();
  }

  return a7;
}

uint64_t closure #1 in static PhoneCallFlowFactory.makeAppResolutionFlowBeforeNextResolveFlowProducer<A>(delegate:app:sharedGlobal:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (specialized Sequence<>.contains(_:)(a6, &outlined read-only object #0 of closure #1 in static PhoneCallFlowFactory.makeAppResolutionFlowBeforeNextResolveFlowProducer<A>(delegate:app:sharedGlobal:)))
  {
    if (one-time initialization token for siriPhone != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    __swift_project_value_buffer(v15, static Logger.siriPhone);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_0, v16, v17, "#PhoneCallFlowFactory makeAppResolutionFlowBeforeNextResolveFlowProducer: resolutionResultCode is needsDisambiguation or needsConfirmation, don't start app resolution again", v18, 2u);
    }

    return 0;
  }

  else
  {
    if (one-time initialization token for siriPhone != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    __swift_project_value_buffer(v20, static Logger.siriPhone);

    v21 = a3;

    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v37 = a8;
      v24 = swift_slowAlloc();
      *&v39[0] = swift_slowAlloc();
      *v24 = 136315906;
      *&v38[0] = a2;
      type metadata accessor for App();
      lazy protocol witness table accessor for type SearchCallHistoryHandleFlowStrategy and conformance SearchCallHistoryHandleFlowStrategy(&lazy protocol witness table cache variable for type App and conformance App, &type metadata accessor for App);
      v25 = dispatch thunk of CustomStringConvertible.description.getter();
      v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v26, v39);

      *(v24 + 4) = v27;
      *(v24 + 12) = 2048;
      *(v24 + 14) = a6;
      *(v24 + 22) = 2080;
      v28 = INIntent.debugDescriptionLite.getter();
      v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v29, v39);

      *(v24 + 24) = v30;
      *(v24 + 32) = 2080;
      *(v24 + 34) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a4, a5, v39);
      _os_log_impl(&dword_0, v22, v23, "#PhoneCallFlowFactory makeAppResolutionFlowBeforeNextResolveFlowProducer: app:%s resolutionResultCode:%ld intent:%s parameterName: %s ", v24, 0x2Au);
      swift_arrayDestroy();

      a8 = v37;
    }

    v31 = outlined init with copy of SignalProviding(a8, v39);
    default argument 2 of PhoneCallFlow.init(state:sharedGlobals:appFinder:eligibleAppsFinder:)(v38, v31);
    v32 = type metadata accessor for AppResolutionBeforeResolveFlow(0);
    v33 = *(v32 + 48);
    v34 = *(v32 + 52);
    swift_allocObject();
    *&v39[0] = AppResolutionBeforeResolveFlow.init(previousTurnIntent:previouslyResolvedApp:sharedGlobals:appFinder:)(v21, a7, v39, v38);
    lazy protocol witness table accessor for type SearchCallHistoryHandleFlowStrategy and conformance SearchCallHistoryHandleFlowStrategy(&lazy protocol witness table cache variable for type AppResolutionBeforeResolveFlow and conformance AppResolutionBeforeResolveFlow, type metadata accessor for AppResolutionBeforeResolveFlow);
    v35 = v21;

    v19 = Flow.eraseToAnyValueFlow()();
  }

  return v19;
}

uint64_t outlined bridged method (ob) of @objc PBCodable.dictionaryRepresentation()(void *a1)
{
  v2 = [a1 dictionaryRepresentation];

  if (!v2)
  {
    return 0;
  }

  v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t outlined bridged method (ob) of @objc INStartCallIntent.faceTimeLink.getter(void *a1)
{
  v2 = [a1 faceTimeLink];

  if (!v2)
  {
    return 0;
  }

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

void *specialized StartAudioCallRCHFlowDelegate.init(sharedGlobals:appResolved:biomeEventSender:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, void *a7)
{
  v13[3] = &type metadata for BiomeEventSender;
  v13[4] = &protocol witness table for BiomeEventSender;
  v13[0] = a3;
  outlined init with copy of SignalProviding(a1, a4 + *a5);
  *(a4 + *a6) = a2;
  outlined init with copy of SignalProviding(v13, a4 + *a7);
  BaseRCHFlowDelegate.init()();
  v11 = OUTLINED_FUNCTION_48_16();
  __swift_destroy_boxed_opaque_existential_1(v11);
  __swift_destroy_boxed_opaque_existential_1(v13);
  return a7;
}

void _s27PhoneCallFlowDelegatePlugin0abC7FactoryO012makeIncomingB7RCHFlow8strategy6intent3app13sharedGlobals07SiriKitC008AnyValueC0CyAI0I6ResultOyxq_GGAA0hbC14OutputStrategy_p_x0O13AppResolution0V0CAA06SharedN9Providing_ptSo8INIntentCRbzAA0hB14IntentResponseR_r0_lFZSo08INAnswerB6IntentC_So08INAnswerB14IntentResponseCTt3g5Tf4ennn_nAA06AnswerbtU0V_Tg5()
{
  OUTLINED_FUNCTION_66();
  v1 = v0;
  v66 = v0;
  v3 = v2;
  v74 = v4;
  v6 = v5;
  v7 = type metadata accessor for CATOption();
  v8 = OUTLINED_FUNCTION_21(v7);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_94_5();
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow08RCHChildC14ProducersAsyncVySo18INAnswerCallIntentCSo0ghI8ResponseCGMd, &_s11SiriKitFlow08RCHChildC14ProducersAsyncVySo18INAnswerCallIntentCSo0ghI8ResponseCGMR);
  OUTLINED_FUNCTION_9_1();
  v72 = v11;
  v13 = *(v12 + 64);
  __chkstk_darwin(v14);
  OUTLINED_FUNCTION_16_2();
  v71 = v15;
  OUTLINED_FUNCTION_4_0();
  __chkstk_darwin(v16);
  v69 = &v65 - v17;
  v89[3] = &type metadata for AnswerCallOutputStrategy;
  v89[4] = &protocol witness table for AnswerCallOutputStrategy;
  v89[0] = swift_allocObject();
  outlined init with copy of AnswerCallOutputStrategy(v6, v89[0] + 16);
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INAnswerCallIntent, INAnswerCallIntent_ptr);
  v70 = type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INAnswerCallIntentResponse, INAnswerCallIntentResponse_ptr);
  RCHChildFlowProducersAsync.init()();
  v73 = v3;
  static RCHChildFlowFactoryHelper.makeAppResolutionFlowProducer<A, B>(app:)();
  RCHChildFlowProducersAsync.appResolutionFlowProducer.setter();
  outlined init with copy of SignalProviding(v1, &v86);
  type metadata accessor for PhoneCallCommonCATs();
  OUTLINED_FUNCTION_47_5();
  OUTLINED_FUNCTION_38_2();
  v67 = CATWrapper.__allocating_init(options:globals:)();
  v65 = type metadata accessor for PhoneCallCommonCATPatternsExecutor();
  static CATOption.defaultMode.getter();
  OUTLINED_FUNCTION_38_2();
  v18 = CATWrapper.__allocating_init(options:globals:)();
  v19 = type metadata accessor for AppInfoBuilder();
  v20 = OUTLINED_FUNCTION_79();
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0A15TCCFlowStrategyCySo08INAnswerB6IntentCSo0hbI8ResponseCGMd, &_s27PhoneCallFlowDelegatePlugin0A15TCCFlowStrategyCySo08INAnswerB6IntentCSo0hbI8ResponseCGMR);
  v21 = swift_allocObject();
  v84 = v20;
  v85 = v18;
  v82 = &type metadata for LabelTemplatesProvider;
  v83 = &protocol witness table for LabelTemplatesProvider;
  OUTLINED_FUNCTION_68_0();
  v22 = swift_allocObject();
  *&v81 = v22;
  *(v22 + 16) = 0u;
  *(v22 + 32) = 0u;
  v80[3] = &type metadata for TCCTemplatesProvider;
  v80[4] = &protocol witness table for TCCTemplatesProvider;
  outlined init with copy of SignalProviding(&v86, v21 + 272);
  outlined init with copy of SignalProviding(&v81, v21 + 192);
  outlined init with copy of SignalProviding(v80, v21 + 232);
  v23 = v87;
  v24 = v88;
  OUTLINED_FUNCTION_28_0(&v86, v87);
  v25 = *(v24 + 136);

  v25(v77, v23, v24);
  v26 = v78;
  v27 = v79;
  __swift_project_boxed_opaque_existential_1(v77, v78);
  v28 = v88;
  __swift_project_boxed_opaque_existential_1(&v86, v87);
  v29 = *(v28 + 8);
  v30 = OUTLINED_FUNCTION_19_7();
  v31(v30, v28);
  OUTLINED_FUNCTION_9_1();
  v33 = *(v32 + 64);
  __chkstk_darwin(v34);
  OUTLINED_FUNCTION_4();
  v36 = OUTLINED_FUNCTION_65_10(v35);
  v37 = v66;
  v38(v36);
  v39 = v20;
  v40 = v69;
  v41 = specialized PhoneCallStrategy.init(catFamily:catPatternFamily:responseGenerator:appInfoBuilder:deviceState:)(v67, &v85, v39, &v84, v76, v21, v26, v65, v19, *(v27 + 8), &protocol witness table for PhoneCallCommonCATPatternsExecutor, &protocol witness table for AppInfoBuilder, v65);

  __swift_destroy_boxed_opaque_existential_1(v80);
  __swift_destroy_boxed_opaque_existential_1(&v81);
  __swift_destroy_boxed_opaque_existential_1(v77);
  __swift_destroy_boxed_opaque_existential_1(&v86);
  *&v86 = v41;
  OUTLINED_FUNCTION_27_21();
  lazy protocol witness table accessor for type AnyValueFlow<ExecuteOnRemoteFlowResult> and conformance AnyValueFlow<A>(v42, &_s27PhoneCallFlowDelegatePlugin0A15TCCFlowStrategyCySo08INAnswerB6IntentCSo0hbI8ResponseCGMd, &_s27PhoneCallFlowDelegatePlugin0A15TCCFlowStrategyCySo08INAnswerB6IntentCSo0hbI8ResponseCGMR);
  static RCHChildFlowFactoryHelper.makeRequestTCCAcceptanceFlow<A, B>(strategy:)();

  OUTLINED_FUNCTION_72();
  v43 = v40;
  RCHChildFlowProducersAsync.requestTCCAcceptanceFlowProducer.setter();
  outlined init with copy of SignalProviding(v89, &v86);
  outlined init with copy of SignalProviding(v37, &v81);
  if (one-time initialization token for instance != -1)
  {
    swift_once();
  }

  v44 = static CallStateNotificationManager.instance;
  v45 = OUTLINED_FUNCTION_69_8();
  __swift_instantiateConcreteTypeFromMangledNameV2(v45, v46);
  v47 = swift_allocObject();
  v47[10] = type metadata accessor for CallStateNotificationManager();
  v47[11] = &protocol witness table for CallStateNotificationManager;
  v47[7] = v44;
  v47[20] = &type metadata for AudioSessionManager;
  v47[21] = &protocol witness table for AudioSessionManager;
  v47[25] = &type metadata for SpringBoardServicesManager;
  v47[26] = &protocol witness table for SpringBoardServicesManager;
  outlined init with take of SPHConversation(&v86, (v47 + 2));
  outlined init with take of SPHConversation(&v81, (v47 + 12));
  *&v86 = v47;
  lazy protocol witness table accessor for type AnyValueFlow<ExecuteOnRemoteFlowResult> and conformance AnyValueFlow<A>(&lazy protocol witness table cache variable for type IncomingCallActionHandleIntentFlowStrategy<INAnswerCallIntent, INAnswerCallIntentResponse> and conformance IncomingCallActionHandleIntentFlowStrategy<A, B>, &_s27PhoneCallFlowDelegatePlugin08Incomingb18ActionHandleIntentC8StrategyCySo08INAnswerbI0CSo0kbI8ResponseCGMd, &_s27PhoneCallFlowDelegatePlugin08Incomingb18ActionHandleIntentC8StrategyCySo08INAnswerbI0CSo0kbI8ResponseCGMR);

  static RCHChildFlowFactoryHelper.makeHandleIntentFlowProducer<A>(strategy:)();
  OUTLINED_FUNCTION_29_18();

  OUTLINED_FUNCTION_43_3();
  RCHChildFlowProducersAsync.handleIntentFlowProducer.setter();
  v48 = OUTLINED_FUNCTION_43_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(v48, v49);
  *&v86 = OUTLINED_FUNCTION_79();
  lazy protocol witness table accessor for type AnyValueFlow<ExecuteOnRemoteFlowResult> and conformance AnyValueFlow<A>(&lazy protocol witness table cache variable for type IncomingCallActionContinueInAppStrategy<INAnswerCallIntent, INAnswerCallIntentResponse> and conformance IncomingCallActionContinueInAppStrategy<A, B>, &_s27PhoneCallFlowDelegatePlugin08IncomingB27ActionContinueInAppStrategyCySo08INAnswerB6IntentCSo0lbM8ResponseCGMd, &_s27PhoneCallFlowDelegatePlugin08IncomingB27ActionContinueInAppStrategyCySo08INAnswerB6IntentCSo0lbM8ResponseCGMR);
  static RCHChildFlowFactoryHelper.makeContinueInAppFlowWithAutomaticPunchOutProducer<A>(strategy:)();
  OUTLINED_FUNCTION_29_18();

  OUTLINED_FUNCTION_43_3();
  RCHChildFlowProducersAsync.continueInAppFlowProducer.setter();
  outlined init with copy of SignalProviding(v37, &v86);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0A21IntentRCHFlowStrategyCySo08INAnswerbF0CSo0ibF8ResponseCGMd, &_s27PhoneCallFlowDelegatePlugin0A21IntentRCHFlowStrategyCySo08INAnswerbF0CSo0ibF8ResponseCGMR);
  OUTLINED_FUNCTION_102_0();
  v50 = swift_allocObject();
  outlined init with take of SPHConversation(&v86, v50 + 16);
  v51 = v73;
  *(v50 + 56) = v73;
  v52 = v37[3];
  v53 = v37[4];
  OUTLINED_FUNCTION_28_0(v37, v52);
  v54 = *(v53 + 104);

  v54(&v86, v52, v53);
  v55 = v88;
  v68 = v87;
  v67 = __swift_project_boxed_opaque_existential_1(&v86, v87);
  *&v81 = v50;
  v56 = v72;
  v57 = *(v72 + 16);
  v58 = OUTLINED_FUNCTION_69_8();
  v59(v58);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow08RCHChildC7FactoryCySo18INAnswerCallIntentCSo0fgH8ResponseCGMd, &_s11SiriKitFlow08RCHChildC7FactoryCySo18INAnswerCallIntentCSo0fgH8ResponseCGMR);
  OUTLINED_FUNCTION_12_8(v60);
  swift_allocObject();
  OUTLINED_FUNCTION_11_0();
  v61 = RCHChildFlowFactory.init(producers:)();
  v62 = *(v55 + 8);
  OUTLINED_FUNCTION_24_25();
  v64 = lazy protocol witness table accessor for type AnyValueFlow<ExecuteOnRemoteFlowResult> and conformance AnyValueFlow<A>(v63, &_s27PhoneCallFlowDelegatePlugin0A21IntentRCHFlowStrategyCySo08INAnswerbF0CSo0ibF8ResponseCGMd, &_s27PhoneCallFlowDelegatePlugin0A21IntentRCHFlowStrategyCySo08INAnswerbF0CSo0ibF8ResponseCGMR);
  v62(&v81, v61, v51, v74, v70, v64, v68, v55);
  OUTLINED_FUNCTION_19_7();

  (*(v56 + 8))(v43, v75);

  __swift_destroy_boxed_opaque_existential_1(&v86);
  __swift_destroy_boxed_opaque_existential_1(v89);
  OUTLINED_FUNCTION_68_6();
  OUTLINED_FUNCTION_65();
}

void _s27PhoneCallFlowDelegatePlugin08IncomingbC0C03rchC03app8strategy13sharedGlobalsACyxq_G07SiriKitC008AnyValueC0CyAI13RCHFlowResultOyxq_GG_0L13AppResolution0R0CAA0fbC14OutputStrategy_pAA06SharedK9Providing_ptcfCSo08INAnswerB6IntentC_So0xbY8ResponseCTt3g5Tf4nnen_nAA06AnswerbtU0V_Tg5()
{
  OUTLINED_FUNCTION_66();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0abC5StateOySo08INAnswerB6IntentCSo0gbH8ResponseCGMd, &_s27PhoneCallFlowDelegatePlugin0abC5StateOySo08INAnswerB6IntentCSo0gbH8ResponseCGMR);
  v9 = OUTLINED_FUNCTION_23_1(v8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = (&v23 - v15);
  v26[0] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow08AnyValueC0CyAA13RCHFlowResultOySo18INAnswerCallIntentCSo0hiJ8ResponseCGGMd, &_s11SiriKitFlow08AnyValueC0CyAA13RCHFlowResultOySo18INAnswerCallIntentCSo0hiJ8ResponseCGGMR);
  OUTLINED_FUNCTION_3_68();
  lazy protocol witness table accessor for type AnyValueFlow<ExecuteOnRemoteFlowResult> and conformance AnyValueFlow<A>(v17, v18, &_s11SiriKitFlow08AnyValueC0CyAA13RCHFlowResultOySo18INAnswerCallIntentCSo0hiJ8ResponseCGGMR);
  *v16 = Flow.eraseToAnyValueFlow()();
  swift_storeEnumTagMultiPayload();
  outlined init with copy of SignalProviding(v1, v26);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin08IncomingbC0CySo08INAnswerB6IntentCSo0gbH8ResponseCGMd, &_s27PhoneCallFlowDelegatePlugin08IncomingbC0CySo08INAnswerB6IntentCSo0gbH8ResponseCGMR);
  OUTLINED_FUNCTION_12_8(v19);
  v20 = swift_allocObject();
  v25[3] = &type metadata for AnswerCallOutputStrategy;
  v25[4] = &protocol witness table for AnswerCallOutputStrategy;
  v25[0] = swift_allocObject();
  memcpy((v25[0] + 16), v3, 0xB0uLL);
  OUTLINED_FUNCTION_2_0();
  outlined init with copy of SignalProviding(v25, v20 + *(v21 + 288));
  OUTLINED_FUNCTION_2_0();
  *(v20 + *(v22 + 296)) = v5;
  outlined init with copy of ButtonConfigurationModel?(v16, v14, &_s27PhoneCallFlowDelegatePlugin0abC5StateOySo08INAnswerB6IntentCSo0gbH8ResponseCGMd, &_s27PhoneCallFlowDelegatePlugin0abC5StateOySo08INAnswerB6IntentCSo0gbH8ResponseCGMR);
  outlined init with copy of SignalProviding(v26, v24);
  specialized PhoneFlow.init(state:sharedGlobals:)(v14, v24);
  OUTLINED_FUNCTION_48_16();

  __swift_destroy_boxed_opaque_existential_1(v1);
  __swift_destroy_boxed_opaque_existential_1(v26);
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v16, &_s27PhoneCallFlowDelegatePlugin0abC5StateOySo08INAnswerB6IntentCSo0gbH8ResponseCGMd, &_s27PhoneCallFlowDelegatePlugin0abC5StateOySo08INAnswerB6IntentCSo0gbH8ResponseCGMR);
  __swift_destroy_boxed_opaque_existential_1(v25);
  OUTLINED_FUNCTION_91_5();
  OUTLINED_FUNCTION_65();
}

uint64_t _s27PhoneCallFlowDelegatePlugin0abC7FactoryO012makeIncomingB7RCHFlow8strategy6intent3app13sharedGlobals07SiriKitC008AnyValueC0CyAI0I6ResultOyxq_GGAA0hbC14OutputStrategy_p_x0O13AppResolution0V0CAA06SharedN9Providing_ptSo8INIntentCRbzAA0hB14IntentResponseR_r0_lFZSo010INIdentifyH12CallerIntentC_So010INIdentifyH20CallerIntentResponseCTt3g5Tf4ennn_nAA08Identifyh6CallertU0V_Tg5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v59 = a4;
  v67 = a2;
  v7 = type metadata accessor for CATOption();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow08RCHChildC14ProducersAsyncVySo30INIdentifyIncomingCallerIntentCSo0ghiJ8ResponseCGMd, &_s11SiriKitFlow08RCHChildC14ProducersAsyncVySo30INIdentifyIncomingCallerIntentCSo0ghiJ8ResponseCGMR);
  v65 = *(v68 - 8);
  v9 = *(v65 + 64);
  v10 = __chkstk_darwin(v68);
  v64 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v62 = &v58 - v12;
  v82[3] = &type metadata for IdentifyIncomingCallerOutputStrategy;
  v82[4] = &protocol witness table for IdentifyIncomingCallerOutputStrategy;
  v82[0] = swift_allocObject();
  outlined init with copy of IdentifyIncomingCallerOutputStrategy(a1, v82[0] + 16);
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INIdentifyIncomingCallerIntent, INIdentifyIncomingCallerIntent_ptr);
  v63 = type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INIdentifyIncomingCallerIntentResponse, INIdentifyIncomingCallerIntentResponse_ptr);
  RCHChildFlowProducersAsync.init()();
  v66 = a3;
  static RCHChildFlowFactoryHelper.makeAppResolutionFlowProducer<A, B>(app:)();
  RCHChildFlowProducersAsync.appResolutionFlowProducer.setter();
  outlined init with copy of SignalProviding(a4, &v79);
  type metadata accessor for PhoneCallCommonCATs();
  static CATOption.defaultMode.getter();
  v60 = CATWrapper.__allocating_init(options:globals:)();
  v58 = type metadata accessor for PhoneCallCommonCATPatternsExecutor();
  static CATOption.defaultMode.getter();
  v13 = CATWrapper.__allocating_init(options:globals:)();
  v14 = type metadata accessor for AppInfoBuilder();
  v15 = swift_allocObject();
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0A15TCCFlowStrategyCySo30INIdentifyIncomingCallerIntentCSo0hijK8ResponseCGMd, &_s27PhoneCallFlowDelegatePlugin0A15TCCFlowStrategyCySo30INIdentifyIncomingCallerIntentCSo0hijK8ResponseCGMR);
  v16 = swift_allocObject();
  v77 = v15;
  v78 = v13;
  v75 = &type metadata for LabelTemplatesProvider;
  v76 = &protocol witness table for LabelTemplatesProvider;
  v17 = swift_allocObject();
  *&v74 = v17;
  *(v17 + 16) = 0u;
  *(v17 + 32) = 0u;
  v73[3] = &type metadata for TCCTemplatesProvider;
  v73[4] = &protocol witness table for TCCTemplatesProvider;
  outlined init with copy of SignalProviding(&v79, v16 + 272);
  outlined init with copy of SignalProviding(&v74, v16 + 192);
  outlined init with copy of SignalProviding(v73, v16 + 232);
  v18 = v80;
  v19 = v81;
  __swift_project_boxed_opaque_existential_1(&v79, v80);
  v20 = *(v19 + 136);

  v20(v70, v18, v19);
  v21 = v71;
  v22 = v72;
  v23 = __swift_project_boxed_opaque_existential_1(v70, v71);
  v24 = v80;
  v25 = v81;
  __swift_project_boxed_opaque_existential_1(&v79, v80);
  v26 = v24;
  v27 = v68;
  v28 = (*(v25 + 8))(v69, v26, v25);
  v29 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v28);
  v31 = &v58 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = v23;
  v34 = v59;
  (*(v32 + 16))(v31, v33, v21);
  v35 = v31;
  v36 = v62;
  v37 = specialized PhoneCallStrategy.init(catFamily:catPatternFamily:responseGenerator:appInfoBuilder:deviceState:)(v60, &v78, v35, &v77, v69, v16, v21, v58, v14, *(v22 + 8), &protocol witness table for PhoneCallCommonCATPatternsExecutor, &protocol witness table for AppInfoBuilder, v58);

  __swift_destroy_boxed_opaque_existential_1(v73);
  __swift_destroy_boxed_opaque_existential_1(&v74);
  __swift_destroy_boxed_opaque_existential_1(v70);
  __swift_destroy_boxed_opaque_existential_1(&v79);
  *&v79 = v37;
  lazy protocol witness table accessor for type AnyValueFlow<ExecuteOnRemoteFlowResult> and conformance AnyValueFlow<A>(&lazy protocol witness table cache variable for type PhoneTCCFlowStrategy<INIdentifyIncomingCallerIntent, INIdentifyIncomingCallerIntentResponse> and conformance PhoneTCCFlowStrategy<A, B>, &_s27PhoneCallFlowDelegatePlugin0A15TCCFlowStrategyCySo30INIdentifyIncomingCallerIntentCSo0hijK8ResponseCGMd, &_s27PhoneCallFlowDelegatePlugin0A15TCCFlowStrategyCySo30INIdentifyIncomingCallerIntentCSo0hijK8ResponseCGMR);
  static RCHChildFlowFactoryHelper.makeRequestTCCAcceptanceFlow<A, B>(strategy:)();

  v38 = v36;
  RCHChildFlowProducersAsync.requestTCCAcceptanceFlowProducer.setter();
  outlined init with copy of SignalProviding(v82, &v79);
  outlined init with copy of SignalProviding(v34, &v74);
  if (one-time initialization token for instance != -1)
  {
    swift_once();
  }

  v39 = static CallStateNotificationManager.instance;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin08Incomingb18ActionHandleIntentC8StrategyCySo010INIdentifyf6CallerI0CSo0kflI8ResponseCGMd, &_s27PhoneCallFlowDelegatePlugin08Incomingb18ActionHandleIntentC8StrategyCySo010INIdentifyf6CallerI0CSo0kflI8ResponseCGMR);
  v40 = swift_allocObject();
  v40[10] = type metadata accessor for CallStateNotificationManager();
  v40[11] = &protocol witness table for CallStateNotificationManager;
  v40[7] = v39;
  v40[20] = &type metadata for AudioSessionManager;
  v40[21] = &protocol witness table for AudioSessionManager;
  v40[25] = &type metadata for SpringBoardServicesManager;
  v40[26] = &protocol witness table for SpringBoardServicesManager;
  outlined init with take of SPHConversation(&v79, (v40 + 2));
  outlined init with take of SPHConversation(&v74, (v40 + 12));
  *&v79 = v40;
  lazy protocol witness table accessor for type AnyValueFlow<ExecuteOnRemoteFlowResult> and conformance AnyValueFlow<A>(&lazy protocol witness table cache variable for type IncomingCallActionHandleIntentFlowStrategy<INIdentifyIncomingCallerIntent, INIdentifyIncomingCallerIntentResponse> and conformance IncomingCallActionHandleIntentFlowStrategy<A, B>, &_s27PhoneCallFlowDelegatePlugin08Incomingb18ActionHandleIntentC8StrategyCySo010INIdentifyf6CallerI0CSo0kflI8ResponseCGMd, &_s27PhoneCallFlowDelegatePlugin08Incomingb18ActionHandleIntentC8StrategyCySo010INIdentifyf6CallerI0CSo0kflI8ResponseCGMR);

  static RCHChildFlowFactoryHelper.makeHandleIntentFlowProducer<A>(strategy:)();

  v41 = v38;
  RCHChildFlowProducersAsync.handleIntentFlowProducer.setter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin08IncomingB27ActionContinueInAppStrategyCySo010INIdentifyF12CallerIntentCSo0lfmN8ResponseCGMd, &_s27PhoneCallFlowDelegatePlugin08IncomingB27ActionContinueInAppStrategyCySo010INIdentifyF12CallerIntentCSo0lfmN8ResponseCGMR);
  *&v79 = swift_allocObject();
  lazy protocol witness table accessor for type AnyValueFlow<ExecuteOnRemoteFlowResult> and conformance AnyValueFlow<A>(&lazy protocol witness table cache variable for type IncomingCallActionContinueInAppStrategy<INIdentifyIncomingCallerIntent, INIdentifyIncomingCallerIntentResponse> and conformance IncomingCallActionContinueInAppStrategy<A, B>, &_s27PhoneCallFlowDelegatePlugin08IncomingB27ActionContinueInAppStrategyCySo010INIdentifyF12CallerIntentCSo0lfmN8ResponseCGMd, &_s27PhoneCallFlowDelegatePlugin08IncomingB27ActionContinueInAppStrategyCySo010INIdentifyF12CallerIntentCSo0lfmN8ResponseCGMR);
  static RCHChildFlowFactoryHelper.makeContinueInAppFlowWithAutomaticPunchOutProducer<A>(strategy:)();

  RCHChildFlowProducersAsync.continueInAppFlowProducer.setter();
  outlined init with copy of SignalProviding(v34, &v79);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0A21IntentRCHFlowStrategyCySo024INIdentifyIncomingCallerF0CSo0ijkF8ResponseCGMd, &_s27PhoneCallFlowDelegatePlugin0A21IntentRCHFlowStrategyCySo024INIdentifyIncomingCallerF0CSo0ijkF8ResponseCGMR);
  v42 = swift_allocObject();
  outlined init with take of SPHConversation(&v79, v42 + 16);
  v43 = v66;
  *(v42 + 56) = v66;
  v44 = v27;
  v45 = v34[3];
  v46 = v34[4];
  __swift_project_boxed_opaque_existential_1(v34, v45);
  v47 = *(v46 + 104);

  v47(&v79, v45, v46);
  v48 = v81;
  v61 = v80;
  v60 = __swift_project_boxed_opaque_existential_1(&v79, v80);
  *&v74 = v42;
  v49 = v65;
  (*(v65 + 16))(v64, v41, v44);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow08RCHChildC7FactoryCySo30INIdentifyIncomingCallerIntentCSo0fghI8ResponseCGMd, &_s11SiriKitFlow08RCHChildC7FactoryCySo30INIdentifyIncomingCallerIntentCSo0fghI8ResponseCGMR);
  v51 = *(v50 + 48);
  v52 = *(v50 + 52);
  swift_allocObject();
  v53 = RCHChildFlowFactory.init(producers:)();
  v54 = *(v48 + 8);
  v55 = lazy protocol witness table accessor for type AnyValueFlow<ExecuteOnRemoteFlowResult> and conformance AnyValueFlow<A>(&lazy protocol witness table cache variable for type PhoneIntentRCHFlowStrategy<INIdentifyIncomingCallerIntent, INIdentifyIncomingCallerIntentResponse> and conformance PhoneIntentRCHFlowStrategy<A, B>, &_s27PhoneCallFlowDelegatePlugin0A21IntentRCHFlowStrategyCySo024INIdentifyIncomingCallerF0CSo0ijkF8ResponseCGMd, &_s27PhoneCallFlowDelegatePlugin0A21IntentRCHFlowStrategyCySo024INIdentifyIncomingCallerF0CSo0ijkF8ResponseCGMR);
  v56 = v54(&v74, v53, v43, v67, v63, v55, v61, v48);

  (*(v49 + 8))(v41, v68);

  __swift_destroy_boxed_opaque_existential_1(&v79);
  __swift_destroy_boxed_opaque_existential_1(v82);
  return v56;
}

void *_s27PhoneCallFlowDelegatePlugin08IncomingbC0C03rchC03app8strategy13sharedGlobalsACyxq_G07SiriKitC008AnyValueC0CyAI13RCHFlowResultOyxq_GG_0L13AppResolution0R0CAA0fbC14OutputStrategy_pAA06SharedK9Providing_ptcfCSo010INIdentifyF12CallerIntentC_So0xfyZ8ResponseCTt3g5Tf4nnen_nAA08IdentifyfytU0V_Tg5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0abC5StateOySo30INIdentifyIncomingCallerIntentCSo0ghiJ8ResponseCGMd, &_s27PhoneCallFlowDelegatePlugin0abC5StateOySo30INIdentifyIncomingCallerIntentCSo0ghiJ8ResponseCGMR);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = (&v23 - v13);
  v26[0] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow08AnyValueC0CyAA13RCHFlowResultOySo30INIdentifyIncomingCallerIntentCSo0hijK8ResponseCGGMd, &_s11SiriKitFlow08AnyValueC0CyAA13RCHFlowResultOySo30INIdentifyIncomingCallerIntentCSo0hijK8ResponseCGGMR);
  lazy protocol witness table accessor for type AnyValueFlow<ExecuteOnRemoteFlowResult> and conformance AnyValueFlow<A>(&lazy protocol witness table cache variable for type AnyValueFlow<RCHFlowResult<INIdentifyIncomingCallerIntent, INIdentifyIncomingCallerIntentResponse>> and conformance AnyValueFlow<A>, &_s11SiriKitFlow08AnyValueC0CyAA13RCHFlowResultOySo30INIdentifyIncomingCallerIntentCSo0hijK8ResponseCGGMd, &_s11SiriKitFlow08AnyValueC0CyAA13RCHFlowResultOySo30INIdentifyIncomingCallerIntentCSo0hijK8ResponseCGGMR);
  *v14 = Flow.eraseToAnyValueFlow()();
  swift_storeEnumTagMultiPayload();
  outlined init with copy of SignalProviding(a4, v26);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin08IncomingbC0CySo010INIdentifyF12CallerIntentCSo0gfhI8ResponseCGMd, &_s27PhoneCallFlowDelegatePlugin08IncomingbC0CySo010INIdentifyF12CallerIntentCSo0gfhI8ResponseCGMR);
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  v18 = swift_allocObject();
  v25[3] = &type metadata for IdentifyIncomingCallerOutputStrategy;
  v25[4] = &protocol witness table for IdentifyIncomingCallerOutputStrategy;
  v19 = swift_allocObject();
  v25[0] = v19;
  v20 = *(a3 + 16);
  *(v19 + 16) = *a3;
  *(v19 + 32) = v20;
  *(v19 + 48) = *(a3 + 32);
  *(v19 + 64) = *(a3 + 48);
  outlined init with copy of SignalProviding(v25, v18 + *(*v18 + 288));
  *(v18 + *(*v18 + 296)) = a2;
  outlined init with copy of ButtonConfigurationModel?(v14, v12, &_s27PhoneCallFlowDelegatePlugin0abC5StateOySo30INIdentifyIncomingCallerIntentCSo0ghiJ8ResponseCGMd, &_s27PhoneCallFlowDelegatePlugin0abC5StateOySo30INIdentifyIncomingCallerIntentCSo0ghiJ8ResponseCGMR);
  outlined init with copy of SignalProviding(v26, v24);
  v21 = specialized PhoneFlow.init(state:sharedGlobals:)(v12, v24);

  __swift_destroy_boxed_opaque_existential_1(a4);
  __swift_destroy_boxed_opaque_existential_1(v26);
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v14, &_s27PhoneCallFlowDelegatePlugin0abC5StateOySo30INIdentifyIncomingCallerIntentCSo0ghiJ8ResponseCGMd, &_s27PhoneCallFlowDelegatePlugin0abC5StateOySo30INIdentifyIncomingCallerIntentCSo0ghiJ8ResponseCGMR);
  __swift_destroy_boxed_opaque_existential_1(v25);
  return v21;
}

uint64_t partial apply for closure #1 in static PhoneCallFlowFactory.makeAddCallParticipantRCHFlow(intent:app:sharedGlobals:)(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = partial apply for closure #1 in static PhoneCallFlowFactory.makeAddCallParticipantRCHFlow(intent:app:sharedGlobals:);

  return closure #1 in static PhoneCallFlowFactory.makeAddCallParticipantRCHFlow(intent:app:sharedGlobals:)(a1, a2, v6, v2 + 24);
}

uint64_t partial apply for closure #1 in static PhoneCallFlowFactory.makeAddCallParticipantRCHFlow(intent:app:sharedGlobals:)(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t type metadata completion function for PhoneCallFlowFactory.PhoneRCHFlowProducers(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 24);
  result = type metadata accessor for RCHChildFlowProducers();
  if (v4 <= 0x3F)
  {
    result = type metadata accessor for RCHChildFlowProducersAsync();
    if (v5 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t partial apply for closure #1 in static PhoneCallFlowFactory.makeAppResolutionFlowBeforeNextResolveFlowProducer<A>(delegate:app:sharedGlobal:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  v8 = v6[2];
  v9 = v6[3];
  return closure #1 in static PhoneCallFlowFactory.makeAppResolutionFlowBeforeNextResolveFlowProducer<A>(delegate:app:sharedGlobal:)(a1, a2, a3, a4, a5, a6, v6[4], (v6 + 5));
}

uint64_t partial apply for specialized closure #1 in static PhoneCallFlowFactory.makeAppResolutionFlowBeforeNextResolveFlowProducer<A>(delegate:app:sharedGlobal:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  return specialized closure #1 in static PhoneCallFlowFactory.makeAppResolutionFlowBeforeNextResolveFlowProducer<A>(delegate:app:sharedGlobal:)(a1, a2, a3, a4, a5, a6, *(v6 + 16), v6 + 24, &outlined read-only object #0 of specialized closure #1 in static PhoneCallFlowFactory.makeAppResolutionFlowBeforeNextResolveFlowProducer<A>(delegate:app:sharedGlobal:));
}

{
  return specialized closure #1 in static PhoneCallFlowFactory.makeAppResolutionFlowBeforeNextResolveFlowProducer<A>(delegate:app:sharedGlobal:)(a1, a2, a3, a4, a5, a6, *(v6 + 16), v6 + 24, &outlined read-only object #0 of specialized closure #1 in static PhoneCallFlowFactory.makeAppResolutionFlowBeforeNextResolveFlowProducer<A>(delegate:app:sharedGlobal:));
}

{
  return specialized closure #1 in static PhoneCallFlowFactory.makeAppResolutionFlowBeforeNextResolveFlowProducer<A>(delegate:app:sharedGlobal:)(a1, a2, a3, a4, a5, a6, *(v6 + 16), v6 + 24, &outlined read-only object #0 of specialized closure #1 in static PhoneCallFlowFactory.makeAppResolutionFlowBeforeNextResolveFlowProducer<A>(delegate:app:sharedGlobal:));
}

uint64_t partial apply for specialized closure #1 in static PhoneCallFlowFactory.getGenericStartCallProducers<A>(delegate:app:)(uint64_t a1, uint64_t a2)
{
  return specialized closure #1 in static PhoneCallFlowFactory.getGenericStartCallProducers<A>(delegate:app:)(a1, a2, *(v2 + 16), *(v2 + 24));
}

{
  return specialized closure #1 in static PhoneCallFlowFactory.getGenericStartCallProducers<A>(delegate:app:)(a1, a2, *(v2 + 16), *(v2 + 24));
}

{
  return specialized closure #1 in static PhoneCallFlowFactory.getGenericStartCallProducers<A>(delegate:app:)(a1, a2, *(v2 + 16), *(v2 + 24));
}

uint64_t partial apply for specialized closure #2 in static PhoneCallFlowFactory.getGenericStartCallProducers<A>(delegate:app:)(uint64_t a1, uint64_t a2)
{
  return specialized closure #2 in static PhoneCallFlowFactory.getGenericStartCallProducers<A>(delegate:app:)(a1, a2, v2);
}

{
  return specialized closure #2 in static PhoneCallFlowFactory.getGenericStartCallProducers<A>(delegate:app:)(a1, a2, v2);
}

{
  return specialized closure #2 in static PhoneCallFlowFactory.getGenericStartCallProducers<A>(delegate:app:)(a1, a2, v2);
}

uint64_t OUTLINED_FUNCTION_47_17()
{
  *(v0 + 192) = v1;
  *(v0 + 200) = v2;
  return v2;
}

uint64_t OUTLINED_FUNCTION_53_16()
{
  v2 = *(v0 + 104);

  return OutputGenerationManifest.init(dialogPhase:_:)();
}

uint64_t OUTLINED_FUNCTION_74_5()
{
  v3 = *(v0 + 200);
  *(v1 + 16) = v3;
  v4 = v3 + *(v0 + 184);

  return outlined init with copy of SignalProviding(v4, v1 + 24);
}

uint64_t OUTLINED_FUNCTION_77_8()
{
  v2 = *(v0 + 176);

  return static DialogPhase.completion.getter();
}

uint64_t OUTLINED_FUNCTION_78_7()
{

  return outlined init with copy of SignalProviding(v1 - 248, v0 + 328);
}

uint64_t OUTLINED_FUNCTION_79_5()
{

  return outlined init with copy of SignalProviding(v1 - 168, v0 + 448);
}

uint64_t OUTLINED_FUNCTION_80_4()
{

  return outlined init with copy of SignalProviding(v1 - 208, v0 + 408);
}

uint64_t OUTLINED_FUNCTION_81_4(uint64_t a1)
{
  *(a1 + 16) = *(v1 + 200);
  *(a1 + 24) = *(v1 + 56);
}

uint64_t OUTLINED_FUNCTION_82_4()
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_84_5(uint64_t a1, uint64_t a2)
{
  *(v2 + 56) = a2;

  return type metadata accessor for DialogPhase();
}

uint64_t OUTLINED_FUNCTION_85_3()
{
  v2 = *(v0 + 168);

  return static CATOption.defaultMode.getter();
}

uint64_t OUTLINED_FUNCTION_86_5()
{
}

uint64_t OUTLINED_FUNCTION_88_4()
{

  return CATWrapperSimple.__allocating_init(options:globals:)();
}

uint64_t OUTLINED_FUNCTION_97_2()
{
  *(v1 + 176) = *(v0 + 128);

  return outlined init with copy of SignalProviding(v0 + 288, v1 + 184);
}

uint64_t OUTLINED_FUNCTION_99_1(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v2 + v1, 1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_100_3(uint64_t a1)
{
  *(a1 + 16) = v1;

  return outlined init with take of SPHConversation((v2 - 128), a1 + 24);
}

uint64_t OUTLINED_FUNCTION_101_2()
{

  return RCHChildFlowProducersAsync.unsupportedValueFlowProducer.setter();
}

uint64_t OUTLINED_FUNCTION_102_2()
{

  return swift_getAssociatedTypeWitness();
}

uint64_t OUTLINED_FUNCTION_105_3()
{

  return outlined init with copy of SignalProviding(v0 + 368, v1 + 224);
}

uint64_t OUTLINED_FUNCTION_107_2()
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
}

uint64_t OUTLINED_FUNCTION_108_2(uint64_t a1)
{
  *(v1 + 136) = a1;

  return static CATOption.defaultMode.getter();
}

uint64_t OUTLINED_FUNCTION_109_2(uint64_t a1)
{
  *(v1 + 144) = a1;

  return static CATOption.defaultMode.getter();
}

uint64_t OUTLINED_FUNCTION_111_3(uint64_t a1)
{
  *(v1 + 160) = a1;

  return static CATOption.defaultMode.getter();
}

uint64_t OUTLINED_FUNCTION_112_3()
{

  return outlined init with copy of SignalProviding(v0, v1 - 128);
}

uint64_t PhoneCallFlowState.description.getter(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = type metadata accessor for RCHFlowResult();
  OUTLINED_FUNCTION_9_1();
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v11);
  v13 = &v54 - v12;
  v14 = type metadata accessor for Input();
  OUTLINED_FUNCTION_9_1();
  v16 = v15;
  v18 = *(v17 + 64);
  __chkstk_darwin(v19);
  v21 = &v54 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_9_1();
  v23 = *(v22 + 64);
  __chkstk_darwin(v24);
  v26 = (&v54 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v27 + 16))(v26, v2, a1);
  v28 = 0x6C616974696E692ELL;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5InputV_0A13AppResolution0E0CAA11DeviceState_ptMd, &_s11SiriKitFlow5InputV_0A13AppResolution0E0CAA11DeviceState_ptMR);
      v37 = *(v26 + *(v36 + 48));
      v38 = *(v36 + 64);
      v39 = OUTLINED_FUNCTION_3_69();
      v40(v39);
      outlined init with take of PhoneCallFeatureFlagProviding(v26 + v38, &v57);
      v55 = 0;
      v56 = 0xE000000000000000;
      _StringGuts.grow(_:)(32);
      OUTLINED_FUNCTION_5_12(".runIntentConversion(");
      v54 = v37;
      type metadata accessor for App();
      _s17SiriAppResolution0B0CACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type App and conformance App, &type metadata accessor for App);
      v41._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v41);

      v42._countAndFlagsBits = 8236;
      v42._object = 0xE200000000000000;
      String.append(_:)(v42);
      OUTLINED_FUNCTION_0_79();
      _s17SiriAppResolution0B0CACs23CustomStringConvertibleAAWlTm_0(v43, v44);
      v45._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v45);

      v46._countAndFlagsBits = 8236;
      v46._object = 0xE200000000000000;
      String.append(_:)(v46);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow11DeviceState_pMd, &_s11SiriKitFlow11DeviceState_pMR);
      v47 = _print_unlocked<A, B>(_:_:)();
      OUTLINED_FUNCTION_6_5(v47);

      v28 = v55;
      __swift_destroy_boxed_opaque_existential_1(&v57);
      goto LABEL_5;
    case 2u:
      v48 = *v26;
      v57 = 0;
      v58 = 0xE000000000000000;
      v49._countAndFlagsBits = 0x284843526E75722ELL;
      v49._object = 0xE800000000000000;
      String.append(_:)(v49);
      v55 = v48;
      type metadata accessor for AnyValueFlow();
      swift_getWitnessTable();
      v50 = DefaultStringInterpolation.appendInterpolation<A>(_:)();
      goto LABEL_9;
    case 3u:
      (*(v8 + 32))(v13, v26, v6);
      OUTLINED_FUNCTION_2_16();
      _StringGuts.grow(_:)(24);
      OUTLINED_FUNCTION_5_12(".offerFollowUpAction(");
      v35 = DefaultStringInterpolation.appendInterpolation<A>(_:)();
      OUTLINED_FUNCTION_6_5(v35);
      v28 = v57;
      (*(v8 + 8))(v13, v6);
      return v28;
    case 4u:
      v51 = *v26;
      OUTLINED_FUNCTION_2_16();
      _StringGuts.grow(_:)(16);
      v52._countAndFlagsBits = 0x6F707075736E752ELL;
      v52._object = 0xED00002864657472;
      String.append(_:)(v52);
      v55 = v51;
      type metadata accessor for SimpleOutputFlowAsync();
      v50 = _print_unlocked<A, B>(_:_:)();
LABEL_9:
      OUTLINED_FUNCTION_6_5(v50);

      v28 = v57;
      break;
    case 5u:
      return v28;
    case 6u:
      v28 = 0x7373696D7369642ELL;
      break;
    case 7u:
      v28 = 0x706F74732ELL;
      break;
    default:
      v29 = OUTLINED_FUNCTION_3_69();
      v30(v29);
      OUTLINED_FUNCTION_2_16();
      _StringGuts.grow(_:)(21);

      v57 = 0xD000000000000012;
      v58 = 0x80000000004572D0;
      OUTLINED_FUNCTION_0_79();
      _s17SiriAppResolution0B0CACs23CustomStringConvertibleAAWlTm_0(v31, v32);
      v33._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v33);

      OUTLINED_FUNCTION_6_5(v34);
      v28 = v57;
LABEL_5:
      (*(v16 + 8))(v21, v14);
      break;
  }

  return v28;
}

void type metadata completion function for PhoneCallFlowState(uint64_t a1)
{
  type metadata accessor for Input();
  if (v2 <= 0x3F)
  {
    type metadata accessor for (Input, App, DeviceState)();
    if (v3 <= 0x3F)
    {
      v4 = *(a1 + 16);
      v5 = *(a1 + 24);
      type metadata accessor for RCHFlowResult();
      v7 = v6;
      type metadata accessor for AnyValueFlow();
      if (v8 <= 0x3F && v7 <= 0x3F)
      {
        type metadata accessor for SimpleOutputFlowAsync();
        if (v9 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        }
      }
    }
  }
}

void type metadata accessor for (Input, App, DeviceState)()
{
  if (!lazy cache variable for type metadata for (Input, App, DeviceState))
  {
    type metadata accessor for Input();
    type metadata accessor for App();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s11SiriKitFlow11DeviceState_pMd, &_s11SiriKitFlow11DeviceState_pMR);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &lazy cache variable for type metadata for (Input, App, DeviceState));
    }
  }
}

uint64_t key path setter for PhoneCallGroup.Builder.groupName : PhoneCallGroup.Builder(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v9 - v6;
  outlined init with copy of SpeakableString?(a1, &v9 - v6);
  return (*(**a2 + 104))(v7);
}

uint64_t outlined init with copy of SpeakableString?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t key path setter for PhoneCallGroup.Builder.groupId : PhoneCallGroup.Builder(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v9 - v6;
  outlined init with copy of SpeakableString?(a1, &v9 - v6);
  return (*(**a2 + 128))(v7);
}

uint64_t PhoneCallGroup.Builder.groupName.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  swift_beginAccess();
  return outlined init with copy of SpeakableString?(v2 + v4, a2);
}

uint64_t PhoneCallGroup.Builder.groupName.setter(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  OUTLINED_FUNCTION_17_3();
  outlined assign with take of SpeakableString?(a1, v2 + v4);
  return swift_endAccess();
}

uint64_t PhoneCallGroup.Builder.__allocating_init()()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  v4 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_7_6();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v4);
  OUTLINED_FUNCTION_7_6();
  __swift_storeEnumTagSinglePayload(v8, v9, v10, v4);
  return v3;
}

uint64_t PhoneCallGroup.Builder.init()()
{
  v1 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_7_6();
  __swift_storeEnumTagSinglePayload(v2, v3, v4, v1);
  OUTLINED_FUNCTION_7_6();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v1);
  return v0;
}

uint64_t PhoneCallGroup.Builder.__allocating_init(groupName:groupId:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_8_7();
  v4 = swift_allocObject();
  PhoneCallGroup.Builder.init(groupName:groupId:)(a1, a2);
  return v4;
}

uint64_t PhoneCallGroup.Builder.init(groupName:groupId:)(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v8);
  v10 = &v28 - v9;
  v11 = OBJC_IVAR____TtCC27PhoneCallFlowDelegatePlugin14PhoneCallGroup7Builder_groupName;
  v12 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_7_6();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v12);
  v16 = OBJC_IVAR____TtCC27PhoneCallFlowDelegatePlugin14PhoneCallGroup7Builder_groupId;
  OUTLINED_FUNCTION_7_6();
  __swift_storeEnumTagSinglePayload(v17, v18, v19, v12);
  v20 = *(*(v12 - 8) + 32);
  v20(v10, a1, v12);
  OUTLINED_FUNCTION_23_3();
  __swift_storeEnumTagSinglePayload(v21, v22, v23, v12);
  OUTLINED_FUNCTION_17_3();
  outlined assign with take of SpeakableString?(v10, v2 + v11);
  swift_endAccess();
  v20(v10, a2, v12);
  OUTLINED_FUNCTION_23_3();
  __swift_storeEnumTagSinglePayload(v24, v25, v26, v12);
  OUTLINED_FUNCTION_17_3();
  outlined assign with take of SpeakableString?(v10, v2 + v16);
  swift_endAccess();
  return v2;
}

uint64_t PhoneCallGroup.Builder.withGroupName(_:)()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v4);
  OUTLINED_FUNCTION_9_48(v5, v8);
  OUTLINED_FUNCTION_2_0();
  (*(v6 + 104))(v0);
}

uint64_t PhoneCallGroup.Builder.withGroupName(print:speak:)()
{
  OUTLINED_FUNCTION_7_8();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v4);
  OUTLINED_FUNCTION_16_8();

  OUTLINED_FUNCTION_12_7();
  type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_23_3();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  OUTLINED_FUNCTION_2_0();
  (*(v9 + 104))(v0);
}

uint64_t PhoneCallGroup.Builder.withGroupId(_:)()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v4);
  OUTLINED_FUNCTION_9_48(v5, v8);
  OUTLINED_FUNCTION_2_0();
  (*(v6 + 128))(v0);
}

uint64_t PhoneCallGroup.Builder.withGroupId(print:speak:)()
{
  OUTLINED_FUNCTION_7_8();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v4);
  OUTLINED_FUNCTION_16_8();

  OUTLINED_FUNCTION_12_7();
  type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_23_3();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  OUTLINED_FUNCTION_2_0();
  (*(v9 + 128))(v0);
}

uint64_t PhoneCallGroup.Builder.build()()
{
  v0 = type metadata accessor for PhoneCallGroup(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();

  PhoneCallGroup.init(builder:)(v4);
  return v3;
}

uint64_t PhoneCallGroup.__allocating_init(builder:)(uint64_t a1)
{
  OUTLINED_FUNCTION_8_7();
  v2 = swift_allocObject();
  PhoneCallGroup.init(builder:)(a1);
  return v2;
}

uint64_t PhoneCallGroup.Builder.deinit()
{
  outlined destroy of SpeakableString?(v0 + OBJC_IVAR____TtCC27PhoneCallFlowDelegatePlugin14PhoneCallGroup7Builder_groupName);
  outlined destroy of SpeakableString?(v0 + OBJC_IVAR____TtCC27PhoneCallFlowDelegatePlugin14PhoneCallGroup7Builder_groupId);
  return v0;
}

uint64_t PhoneCallGroup.Builder.__deallocating_deinit()
{
  outlined destroy of SpeakableString?(v0 + OBJC_IVAR____TtCC27PhoneCallFlowDelegatePlugin14PhoneCallGroup7Builder_groupName);
  outlined destroy of SpeakableString?(v0 + OBJC_IVAR____TtCC27PhoneCallFlowDelegatePlugin14PhoneCallGroup7Builder_groupId);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t key path setter for PhoneCallGroup.mockGlobals : PhoneCallGroup(id *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 128);
  v4 = *a1;
  return v3(v2);
}

void *PhoneCallGroup.init(builder:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_49_0();
  v8 = __chkstk_darwin(v7);
  v10 = v19 - v9;
  v1[2] = 0;
  (*(*a1 + 96))(v8);
  v11 = outlined init with take of SpeakableString?(v10, v1 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin14PhoneCallGroup_groupName);
  (*(*a1 + 120))(v11);
  v12 = outlined init with take of SpeakableString?(v10, v1 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin14PhoneCallGroup_groupId);
  if (((*(*v1 + 152))(v12) & 1) == 0)
  {
    v13 = static Log.siriDialogEngine.getter();
    static os_log_type_t.error.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_424FD0;
    v19[1] = *v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0aB5GroupCmMd, &_s27PhoneCallFlowDelegatePlugin0aB5GroupCmMR);
    v15 = String.init<A>(describing:)();
    v17 = v16;
    *(v14 + 56) = &type metadata for String;
    *(v14 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v14 + 32) = v15;
    *(v14 + 40) = v17;
    os_log(_:dso:log:type:_:)();
  }

  return v2;
}

uint64_t PhoneCallGroup.__allocating_init(groupName:groupId:)(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for PhoneCallGroup.Builder(0);
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  v8 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_7_6();
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v8);
  OUTLINED_FUNCTION_7_6();
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v8);
  PhoneCallGroup.Builder.withGroupName(_:)();

  OUTLINED_FUNCTION_2_0();
  v16 = (*(v15 + 176))(a2);

  v17 = (*(v2 + 144))(v16);
  outlined destroy of SpeakableString?(a2);
  outlined destroy of SpeakableString?(a1);
  return v17;
}

Swift::Bool __swiftcall PhoneCallGroup.allRequiredInputsHaveValues()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v2 = OUTLINED_FUNCTION_21(v1);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  OUTLINED_FUNCTION_12_5();
  v7 = v5 - v6;
  __chkstk_darwin(v8);
  v10 = &v15 - v9;
  outlined init with copy of SpeakableString?(v0 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin14PhoneCallGroup_groupName, &v15 - v9);
  v11 = type metadata accessor for SpeakableString();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  outlined destroy of SpeakableString?(v10);
  if (EnumTagSinglePayload == 1)
  {
    return 0;
  }

  outlined init with copy of SpeakableString?(v0 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin14PhoneCallGroup_groupId, v7);
  v13 = __swift_getEnumTagSinglePayload(v7, 1, v11) != 1;
  outlined destroy of SpeakableString?(v7);
  return v13;
}

uint64_t PhoneCallGroup.getProperty(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v8 = OUTLINED_FUNCTION_21(v7);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  OUTLINED_FUNCTION_12_5();
  v13 = v11 - v12;
  __chkstk_darwin(v14);
  v16 = &v25 - v15;
  v17 = a1 == 0x6D614E70756F7267 && a2 == 0xE900000000000065;
  if (v17 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    outlined init with copy of SpeakableString?(v3 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin14PhoneCallGroup_groupName, v16);
    v18 = type metadata accessor for SpeakableString();
    if (__swift_getEnumTagSinglePayload(v16, 1, v18) == 1)
    {
      v19 = v16;
LABEL_8:
      result = outlined destroy of SpeakableString?(v19);
LABEL_9:
      *a3 = 0u;
      *(a3 + 16) = 0u;
      return result;
    }

    *(a3 + 24) = v18;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a3);
    return (*(*(v18 - 8) + 32))(boxed_opaque_existential_1, v16, v18);
  }

  else
  {
    if (a1 != 0x644970756F7267 || a2 != 0xE700000000000000)
    {
      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      if ((result & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    outlined init with copy of SpeakableString?(v3 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin14PhoneCallGroup_groupId, v13);
    v23 = type metadata accessor for SpeakableString();
    if (__swift_getEnumTagSinglePayload(v13, 1, v23) == 1)
    {
      v19 = v13;
      goto LABEL_8;
    }

    *(a3 + 24) = v23;
    v24 = __swift_allocate_boxed_opaque_existential_1(a3);
    return (*(*(v23 - 8) + 32))(v24, v13, v23);
  }
}

uint64_t PhoneCallGroup.CodingKeys.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of PhoneCallGroup.CodingKeys.init(rawValue:), v2);

  if (v3 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
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

uint64_t PhoneCallGroup.CodingKeys.stringValue.getter(char a1)
{
  if (a1)
  {
    return 0x644970756F7267;
  }

  else
  {
    return 0x6D614E70756F7267;
  }
}

PhoneCallFlowDelegatePlugin::PhoneCallGroup::CodingKeys_optional protocol witness for RawRepresentable.init(rawValue:) in conformance PhoneCallGroup.CodingKeys@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::PhoneCallGroup::CodingKeys_optional *a2@<X8>)
{
  result.value = PhoneCallGroup.CodingKeys.init(stringValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance PhoneCallGroup.CodingKeys@<X0>(uint64_t *a1@<X8>)
{
  result = PhoneCallGroup.CodingKeys.stringValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PhoneCallGroup.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PhoneCallGroup.CodingKeys and conformance PhoneCallGroup.CodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PhoneCallGroup.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PhoneCallGroup.CodingKeys and conformance PhoneCallGroup.CodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t PhoneCallGroup.deinit()
{
  outlined destroy of SpeakableString?(v0 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin14PhoneCallGroup_groupName);
  outlined destroy of SpeakableString?(v0 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin14PhoneCallGroup_groupId);
  return v0;
}

uint64_t PhoneCallGroup.__deallocating_deinit()
{
  PhoneCallGroup.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t PhoneCallGroup.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy27PhoneCallFlowDelegatePlugin0dE5GroupC10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy27PhoneCallFlowDelegatePlugin0dE5GroupC10CodingKeysOGMR);
  OUTLINED_FUNCTION_7(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v8);
  v10 = &v15[-v9];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PhoneCallGroup.CodingKeys and conformance PhoneCallGroup.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v15[15] = 0;
  type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_0_80();
  lazy protocol witness table accessor for type SpeakableString and conformance SpeakableString(v12, v13);
  OUTLINED_FUNCTION_11_9();
  if (!v1)
  {
    v15[14] = 1;
    OUTLINED_FUNCTION_11_9();
  }

  return (*(v5 + 8))(v10, v3);
}

unint64_t lazy protocol witness table accessor for type PhoneCallGroup.CodingKeys and conformance PhoneCallGroup.CodingKeys()
{
  result = lazy protocol witness table cache variable for type PhoneCallGroup.CodingKeys and conformance PhoneCallGroup.CodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneCallGroup.CodingKeys and conformance PhoneCallGroup.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallGroup.CodingKeys and conformance PhoneCallGroup.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneCallGroup.CodingKeys and conformance PhoneCallGroup.CodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneCallGroup.CodingKeys and conformance PhoneCallGroup.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallGroup.CodingKeys and conformance PhoneCallGroup.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneCallGroup.CodingKeys and conformance PhoneCallGroup.CodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneCallGroup.CodingKeys and conformance PhoneCallGroup.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallGroup.CodingKeys and conformance PhoneCallGroup.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneCallGroup.CodingKeys and conformance PhoneCallGroup.CodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneCallGroup.CodingKeys and conformance PhoneCallGroup.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallGroup.CodingKeys and conformance PhoneCallGroup.CodingKeys);
  }

  return result;
}

uint64_t PhoneCallGroup.__allocating_init(from:)(uint64_t *a1)
{
  OUTLINED_FUNCTION_8_7();
  v2 = swift_allocObject();
  PhoneCallGroup.init(from:)(a1);
  return v2;
}

id *PhoneCallGroup.init(from:)(uint64_t *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v5 = OUTLINED_FUNCTION_21(v4);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  OUTLINED_FUNCTION_12_5();
  v10 = v8 - v9;
  __chkstk_darwin(v11);
  v28 = v27 - v12;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy27PhoneCallFlowDelegatePlugin0dE5GroupC10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy27PhoneCallFlowDelegatePlugin0dE5GroupC10CodingKeysOGMR);
  OUTLINED_FUNCTION_7(v29);
  v14 = v13;
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v17);
  v1[2] = 0;
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PhoneCallGroup.CodingKeys and conformance PhoneCallGroup.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {

    type metadata accessor for PhoneCallGroup(0);
    v22 = *(*v1 + 12);
    v23 = *(*v1 + 26);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v27[1] = v14;
    type metadata accessor for SpeakableString();
    v31 = 0;
    OUTLINED_FUNCTION_0_80();
    lazy protocol witness table accessor for type SpeakableString and conformance SpeakableString(v19, v20);
    v21 = v28;
    OUTLINED_FUNCTION_17_32();
    outlined init with take of SpeakableString?(v21, v1 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin14PhoneCallGroup_groupName);
    v30 = 1;
    OUTLINED_FUNCTION_17_32();
    v25 = OUTLINED_FUNCTION_1_79();
    v26(v25);
    outlined init with take of SpeakableString?(v10, v1 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin14PhoneCallGroup_groupId);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v1;
}

uint64_t lazy protocol witness table accessor for type SpeakableString and conformance SpeakableString(unint64_t *a1, void (*a2)(uint64_t))
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

void (*protocol witness for CATType.mockGlobals.modify in conformance PhoneCallGroup(void *a1))(void *a1)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = (*(**v1 + 136))();
  return protocol witness for SiriEnvironmentLocating.siriEnvironment.modify in conformance BusinessCompositionFlow;
}

uint64_t protocol witness for Decodable.init(from:) in conformance PhoneCallGroup@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 176))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

void type metadata completion function for PhoneCallGroup()
{
  type metadata accessor for SpeakableString?();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void type metadata accessor for SpeakableString?()
{
  if (!lazy cache variable for type metadata for SpeakableString?)
  {
    type metadata accessor for SpeakableString();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for SpeakableString?);
    }
  }
}

void type metadata completion function for PhoneCallGroup.Builder()
{
  type metadata accessor for SpeakableString?();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

_BYTE *storeEnumTagSinglePayload for PhoneCallGroup.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

void specialized SiriPhoneContact.asSiriInferenceContact.getter()
{
  OUTLINED_FUNCTION_66();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference18ContactHandleQueryVSgMd, &_s13SiriInference18ContactHandleQueryVSgMR);
  OUTLINED_FUNCTION_21(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v7);
  v9 = v105 - v8;
  v10 = type metadata accessor for ContactHandle.HandleType();
  v11 = OUTLINED_FUNCTION_7(v10);
  v114 = v12;
  v14 = *(v13 + 64);
  __chkstk_darwin(v11);
  OUTLINED_FUNCTION_12_5();
  v113 = v15 - v16;
  __chkstk_darwin(v17);
  v19 = v105 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference12ContactQueryVSgMd, &_s13SiriInference12ContactQueryVSgMR);
  OUTLINED_FUNCTION_21(v20);
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v23);
  v25 = v105 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference24ContactRelationshipQueryVSgMd, &_s13SiriInference24ContactRelationshipQueryVSgMR);
  OUTLINED_FUNCTION_21(v26);
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v29);
  ContactQuery.init()();
  specialized SiriPhoneContact.getFullName(filteredAlternatives:)();
  if (v30)
  {
    ContactQuery.fullName.setter();
  }

  specialized SiriPhoneContact.getPrefixName()();
  if (v31)
  {
    ContactQuery.namePrefix.setter();
  }

  specialized SiriPhoneContact.getFirstName(filteredAlternatives:)();
  if (v32)
  {
    ContactQuery.givenName.setter();
  }

  specialized SiriPhoneContact.getMiddleName(filteredAlternatives:)();
  if (v33)
  {
    ContactQuery.middleName.setter();
  }

  specialized SiriPhoneContact.getLastName(filteredAlternatives:)();
  if (v34)
  {
    ContactQuery.familyName.setter();
  }

  specialized SiriPhoneContact.getPostfixName()();
  if (v35)
  {
    ContactQuery.nameSuffix.setter();
  }

  v115 = v10;
  specialized SiriPhoneContact.getNickName()();
  if (v36)
  {
    ContactQuery.nickname.setter();
  }

  OUTLINED_FUNCTION_26_5();
  (*(v37 + 376))();
  if (v38)
  {
    v39 = type metadata accessor for ContactQuery();
    __swift_storeEnumTagSinglePayload(v25, 1, 1, v39);
    ContactRelationshipQuery.init(label:fromContact:)();
    type metadata accessor for ContactRelationshipQuery();
    OUTLINED_FUNCTION_23_3();
    __swift_storeEnumTagSinglePayload(v40, v41, v42, v43);
    ContactQuery.relationship.setter();
  }

  OUTLINED_FUNCTION_26_5();
  (*(v44 + 328))();
  if (v45)
  {
    ContactQuery.organizationName.setter();
  }

  v112 = v19;
  OUTLINED_FUNCTION_26_5();
  v47 = (*(v46 + 280))();
  v48 = v114;
  if (v47)
  {
    ContactQuery.isMe.setter();
  }

  OUTLINED_FUNCTION_26_5();
  (*(v49 + 256))();
  if (v50)
  {
    ContactQuery.givenName.getter();
    OUTLINED_FUNCTION_34_12();

    OUTLINED_FUNCTION_16_37();
    if (v51)
    {
      goto LABEL_25;
    }

    ContactQuery.middleName.getter();
    OUTLINED_FUNCTION_34_12();

    OUTLINED_FUNCTION_16_37();
    if (v52 || (ContactQuery.familyName.getter(), OUTLINED_FUNCTION_34_12(), , OUTLINED_FUNCTION_16_37(), v53))
    {
LABEL_25:
    }

    else
    {
      ContactQuery.givenName.setter();
    }
  }

  OUTLINED_FUNCTION_26_5();
  v55 = (*(v54 + 400))();
  if (v56)
  {
    v108 = v0;
    v109 = v9;
    v110 = v3;
    v106 = v55;
    v107 = v56;
    v120 = v55;
    v121 = v56;
    lazy protocol witness table accessor for type String and conformance String();
    OUTLINED_FUNCTION_49_14();
    v105[1] = v57;
    v58 = StringProtocol<>.split(separator:maxSplits:omittingEmptySubsequences:)();
    v59 = 0;
    v60 = *(v58 + 16);
    v61 = v58 + 56;
    v111 = _swiftEmptyArrayStorage;
    v105[0] = v58 + 56;
LABEL_28:
    v62 = (v61 + 32 * v59);
    while (v60 != v59)
    {
      if (v59 >= *(v58 + 16))
      {
        __break(1u);
LABEL_71:
        OUTLINED_FUNCTION_0_6();
        swift_once();
LABEL_60:
        v86 = type metadata accessor for Logger();
        OUTLINED_FUNCTION_9_0(v86, static Logger.siriPhone);
        v87 = Logger.logObject.getter();
        v88 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v87, v88))
        {
          v89 = swift_slowAlloc();
          *v89 = 0;
          _os_log_impl(&dword_0, v87, v88, "#ContactResolution received AmbiguousHandle. Setting handleType as unknown", v89, 2u);
          OUTLINED_FUNCTION_8();
        }

        v81 = v114;
        v84 = v115;
        v90 = *(v114 + 8);
        v83 = v112;
        v91 = OUTLINED_FUNCTION_13_17();
        v92(v91);
        (v1)(v83, enum case for ContactHandle.HandleType.unknown(_:), v84);
        goto LABEL_63;
      }

      v63 = *(v62 - 3);
      v1 = *(v62 - 2);
      v65 = *(v62 - 1);
      v64 = *v62;
      v66 = v63 >> 16;
      v67 = v1 >> 16;
      if (v65 != 0x656E6F6870 || v64 != 0xE500000000000000 || v66 != 0 || v67 != 5)
      {
        OUTLINED_FUNCTION_38_16();
        if ((_stringCompareInternal(_:_:_:_:expecting:)() & 1) == 0)
        {
          v71 = v65 == 0x6C69616D65 && v64 == 0xE500000000000000;
          if (!v71 || v66 || v67 != 5)
          {
            OUTLINED_FUNCTION_38_16();
            if ((_stringCompareInternal(_:_:_:_:expecting:)() & 1) == 0)
            {

              v72 = v111;
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v120 = v72;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                v74 = v72[2];
                specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
                v72 = v120;
              }

              v75 = v72[2];
              if (v75 >= v72[3] >> 1)
              {
                specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
                v72 = v120;
              }

              ++v59;
              v72[2] = v75 + 1;
              v111 = v72;
              v76 = &v72[4 * v75];
              v76[4] = v63;
              v76[5] = v1;
              v76[6] = v65;
              v76[7] = v64;
              v61 = v105[0];
              goto LABEL_28;
            }
          }
        }
      }

      v62 += 4;
      ++v59;
    }

    v120 = v111;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySsGMd, &_sSaySsGMR);
    lazy protocol witness table accessor for type [Substring] and conformance [A]();
    lazy protocol witness table accessor for type Substring and conformance Substring();
    OUTLINED_FUNCTION_49_14();
    v77 = Sequence<>.joined(separator:)();
    v79 = v78;

    v120 = v77;
    v121 = v79;
    v118 = 0x6C616E6F73726570;
    v119 = 0xE800000000000000;
    v116 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v117 = v80;
    OUTLINED_FUNCTION_19_3();
    v111 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

    v120 = v106;
    v121 = v107;
    v118 = 0x6C69616D65;
    v119 = 0xE500000000000000;
    LOBYTE(v77) = StringProtocol.contains<A>(_:)();

    v81 = v114;
    v1 = *(v114 + 104);
    v82 = &enum case for ContactHandle.HandleType.email(_:);
    if ((v77 & 1) == 0)
    {
      v82 = &enum case for ContactHandle.HandleType.phone(_:);
    }

    v83 = v112;
    v84 = v115;
    v85 = (v1)(v112, *v82, v115);
    if ((*(*v108 + 472))(v85))
    {
      if (one-time initialization token for siriPhone != -1)
      {
        goto LABEL_71;
      }

      goto LABEL_60;
    }

LABEL_63:
    (*(v81 + 16))(v113, v83, v84);
    ContactHandleQuery.init(type:label:value:)();
    v93 = type metadata accessor for ContactHandleQuery();
    OUTLINED_FUNCTION_20_29(v93);
    v94 = *(v81 + 8);
    v95 = OUTLINED_FUNCTION_13_17();
    v96(v95);
    v48 = v81;
  }

  OUTLINED_FUNCTION_26_5();
  (*(v97 + 352))(v98);
  if (v99)
  {
    (*(v48 + 104))(v113, enum case for ContactHandle.HandleType.phone(_:), v115);
    OUTLINED_FUNCTION_32_16();
    v100 = type metadata accessor for ContactHandleQuery();
    OUTLINED_FUNCTION_20_29(v100);
  }

  OUTLINED_FUNCTION_26_5();
  (*(v101 + 232))(v102);
  if (v103)
  {
    (*(v48 + 104))(v113, enum case for ContactHandle.HandleType.email(_:), v115);
    OUTLINED_FUNCTION_32_16();
    v104 = type metadata accessor for ContactHandleQuery();
    OUTLINED_FUNCTION_20_29(v104);
  }

  OUTLINED_FUNCTION_65();
}

uint64_t specialized SiriPhoneContact.getFullName(filteredAlternatives:)()
{
  (*(*v0 + 304))(v3);
  if (v3[1] == 1)
  {
    return 0;
  }

  v1 = v3[8];

  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v3, &_s27PhoneCallFlowDelegatePlugin0aB10PersonNameVSgMd, &_s27PhoneCallFlowDelegatePlugin0aB10PersonNameVSgMR);
  return v1;
}

uint64_t specialized SiriPhoneContact.getPrefixName()()
{
  (*(*v0 + 304))(v3);
  if (v3[1] == 1)
  {
    return 0;
  }

  v1 = v3[10];

  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v3, &_s27PhoneCallFlowDelegatePlugin0aB10PersonNameVSgMd, &_s27PhoneCallFlowDelegatePlugin0aB10PersonNameVSgMR);
  return v1;
}

uint64_t specialized SiriPhoneContact.getFirstName(filteredAlternatives:)()
{
  (*(*v0 + 304))(v3);
  if (v3[1] == 1)
  {
    return 0;
  }

  v1 = v3[0];

  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v3, &_s27PhoneCallFlowDelegatePlugin0aB10PersonNameVSgMd, &_s27PhoneCallFlowDelegatePlugin0aB10PersonNameVSgMR);
  return v1;
}

uint64_t specialized SiriPhoneContact.getMiddleName(filteredAlternatives:)()
{
  (*(*v0 + 304))(v3);
  if (v3[1] == 1)
  {
    return 0;
  }

  v1 = v3[2];

  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v3, &_s27PhoneCallFlowDelegatePlugin0aB10PersonNameVSgMd, &_s27PhoneCallFlowDelegatePlugin0aB10PersonNameVSgMR);
  return v1;
}

uint64_t specialized SiriPhoneContact.getLastName(filteredAlternatives:)()
{
  (*(*v0 + 304))(v3);
  if (v3[1] == 1)
  {
    return 0;
  }

  v1 = v3[4];

  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v3, &_s27PhoneCallFlowDelegatePlugin0aB10PersonNameVSgMd, &_s27PhoneCallFlowDelegatePlugin0aB10PersonNameVSgMR);
  return v1;
}

uint64_t specialized SiriPhoneContact.getPostfixName()()
{
  (*(*v0 + 304))(v3);
  if (v3[1] == 1)
  {
    return 0;
  }

  v1 = v3[12];

  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v3, &_s27PhoneCallFlowDelegatePlugin0aB10PersonNameVSgMd, &_s27PhoneCallFlowDelegatePlugin0aB10PersonNameVSgMR);
  return v1;
}

uint64_t specialized SiriPhoneContact.getNickName()()
{
  (*(*v0 + 304))(v3);
  if (v3[1] == 1)
  {
    return 0;
  }

  v1 = v3[6];

  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v3, &_s27PhoneCallFlowDelegatePlugin0aB10PersonNameVSgMd, &_s27PhoneCallFlowDelegatePlugin0aB10PersonNameVSgMR);
  return v1;
}

uint64_t static PhoneCallIFIntent.from(clientAction:contactStore:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v55 = type metadata accessor for PhoneError();
  v7 = OUTLINED_FUNCTION_23_1(v55);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  OUTLINED_FUNCTION_4();
  v56 = (v11 - v10);
  v54 = type metadata accessor for MessagePayload.ClientAction();
  v12 = OUTLINED_FUNCTION_7(v54);
  v14 = v13;
  v16 = *(v15 + 64);
  __chkstk_darwin(v12);
  OUTLINED_FUNCTION_4();
  v19 = v18 - v17;
  if (MessagePayload.ClientAction.toolId.getter() == 0x61635F7472617473 && v20 == 0xEA00000000006C6CLL)
  {

LABEL_11:
    v36 = MessagePayload.ClientAction.app.getter();
    MessagePayload.ClientAction.destinations.getter();
    v38 = v37;
    __chkstk_darwin(v37);
    *(&v53 - 2) = v36;
    *(&v53 - 1) = a2;
    _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay27PhoneCallFlowDelegatePlugin04SiriD7Contact_pG_AfG_psAE_pTg5(partial apply for closure #1 in static PhoneCallIFIntent.preprocess(app:resolvedDestinations:contactStore:), (&v53 - 4), v38, v39, v40, v41, v42, v43, v53, v54, v55, v56, v57, v58, v59, v60[0], v60[1], v60[2], v60[3], v60[4]);
    v45 = v44;

    if (v3)
    {
    }

    if (v36)
    {
      v47 = type metadata accessor for App();
      v48 = &protocol witness table for App;
    }

    else
    {
      v47 = 0;
      v48 = 0;
    }

    if (MessagePayload.ClientAction.speakerphone.getter())
    {
      v52 = 0;
    }

    else
    {
      v52 = 4;
    }

    *a3 = v36;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    *(a3 + 24) = v47;
    *(a3 + 32) = v48;
    *(a3 + 40) = v45;
    *(a3 + 48) = 0;
    *(a3 + 56) = 0;
    *(a3 + 64) = v52;
    *(a3 + 65) = 0x600230309050502;
    *(a3 + 73) = 2;

    *(a3 + 80) = _swiftEmptyArrayStorage;
    *(a3 + 88) = _swiftEmptyArrayStorage;
    return result;
  }

  v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v22)
  {
    goto LABEL_11;
  }

  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

  v23 = type metadata accessor for Logger();
  __swift_project_value_buffer(v23, static Logger.siriPhone);
  v24 = v14;
  v25 = *(v14 + 16);
  v26 = v54;
  v25(v19, a1, v54);
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v27, v28))
  {
    OUTLINED_FUNCTION_21_21();
    v29 = swift_slowAlloc();
    OUTLINED_FUNCTION_24_19();
    v53 = swift_slowAlloc();
    v60[0] = v53;
    *v29 = 136315394;
    v57 = 0;
    v58 = 0xE000000000000000;
    OUTLINED_FUNCTION_19_3();
    DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v30, v31, v32, v33);
    v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0, 0xE000000000000000, v60);

    *(v29 + 4) = v34;
    *(v29 + 12) = 2080;
    MessagePayload.ClientAction.toolId.getter();
    OUTLINED_FUNCTION_34_12();
    (*(v24 + 8))(v19, v26);
    v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v34, v60);

    *(v29 + 14) = v35;
    _os_log_impl(&dword_0, v27, v28, "%s Unrecognized toolId %s", v29, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_8();

    OUTLINED_FUNCTION_8();
  }

  else
  {

    (*(v24 + 8))(v19, v54);
  }

  v49 = v56;
  *v56 = MessagePayload.ClientAction.toolId.getter();
  v49[1] = v50;
  *(v49 + 16) = 1;
  OUTLINED_FUNCTION_0();
  swift_storeEnumTagMultiPayload();
  lazy protocol witness table accessor for type PhoneError and conformance PhoneError();
  swift_allocError();
  PhoneError.logged()(v51);
  _s27PhoneCallFlowDelegatePlugin0A5ErrorOWOhTm_5(v49, type metadata accessor for PhoneError);
  return swift_willThrow();
}

void specialized SiriPhoneContact.update(person:)()
{
  OUTLINED_FUNCTION_66();
  v201 = v0;
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin14BackingContactOSgMd, &_s27PhoneCallFlowDelegatePlugin14BackingContactOSgMR);
  OUTLINED_FUNCTION_21(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v6);
  v209 = (&v197 - v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PersonNameComponentsVSgMd, &_s10Foundation20PersonNameComponentsVSgMR);
  v9 = OUTLINED_FUNCTION_21(v8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  OUTLINED_FUNCTION_12_5();
  OUTLINED_FUNCTION_9_3();
  __chkstk_darwin(v12);
  OUTLINED_FUNCTION_13_5();
  OUTLINED_FUNCTION_9_3();
  __chkstk_darwin(v13);
  OUTLINED_FUNCTION_13_5();
  OUTLINED_FUNCTION_9_3();
  __chkstk_darwin(v14);
  OUTLINED_FUNCTION_13_5();
  OUTLINED_FUNCTION_9_3();
  __chkstk_darwin(v15);
  OUTLINED_FUNCTION_13_5();
  OUTLINED_FUNCTION_9_3();
  __chkstk_darwin(v16);
  OUTLINED_FUNCTION_13_5();
  OUTLINED_FUNCTION_9_3();
  __chkstk_darwin(v17);
  OUTLINED_FUNCTION_13_5();
  OUTLINED_FUNCTION_9_3();
  __chkstk_darwin(v18);
  OUTLINED_FUNCTION_13_5();
  OUTLINED_FUNCTION_9_3();
  __chkstk_darwin(v19);
  OUTLINED_FUNCTION_13_5();
  OUTLINED_FUNCTION_9_3();
  __chkstk_darwin(v20);
  OUTLINED_FUNCTION_13_5();
  OUTLINED_FUNCTION_9_3();
  v22 = __chkstk_darwin(v21);
  v24 = &v197 - v23;
  v25 = __chkstk_darwin(v22);
  v27 = &v197 - v26;
  v28 = __chkstk_darwin(v25);
  v30 = &v197 - v29;
  v31 = __chkstk_darwin(v28);
  v33 = &v197 - v32;
  v34 = __chkstk_darwin(v31);
  v36 = &v197 - v35;
  v37 = __chkstk_darwin(v34);
  v39 = &v197 - v38;
  v40 = __chkstk_darwin(v37);
  v42 = &v197 - v41;
  __chkstk_darwin(v40);
  v44 = &v197 - v43;
  v45 = [v2 nameComponents];
  if (v45)
  {
    v46 = v45;
    static PersonNameComponents._unconditionallyBridgeFromObjectiveC(_:)();
  }

  type metadata accessor for PersonNameComponents();
  OUTLINED_FUNCTION_10_51();
  __swift_storeEnumTagSinglePayload(v47, v48, v49, v50);
  outlined init with take of PersonNameComponents?(v42, v44);
  type metadata accessor for PersonNameComponents();
  if (OUTLINED_FUNCTION_21_27())
  {
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v44, &_s10Foundation20PersonNameComponentsVSgMd, &_s10Foundation20PersonNameComponentsVSgMR);
    OUTLINED_FUNCTION_47_18();
    goto LABEL_22;
  }

  v198 = v24;
  v51 = PersonNameComponents.givenName.getter();
  v53 = v52;
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v44, &_s10Foundation20PersonNameComponentsVSgMd, &_s10Foundation20PersonNameComponentsVSgMR);
  if (!v53)
  {
    goto LABEL_20;
  }

  v54 = HIBYTE(v53) & 0xF;
  if ((v53 & 0x2000000000000000) == 0)
  {
    v54 = v51 & 0xFFFFFFFFFFFFLL;
  }

  if (!v54)
  {
    goto LABEL_19;
  }

  v55 = [v2 nameComponents];
  if (v55)
  {
    v56 = v55;
    static PersonNameComponents._unconditionallyBridgeFromObjectiveC(_:)();
  }

  OUTLINED_FUNCTION_10_51();
  __swift_storeEnumTagSinglePayload(v57, v58, v59, v60);
  outlined init with take of PersonNameComponents?(v36, v39);
  if (!OUTLINED_FUNCTION_31_18(v39))
  {
    v61 = PersonNameComponents.familyName.getter();
    v63 = v62;
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v39, &_s10Foundation20PersonNameComponentsVSgMd, &_s10Foundation20PersonNameComponentsVSgMR);
    if (v63)
    {
      v64 = HIBYTE(v63) & 0xF;
      if ((v63 & 0x2000000000000000) == 0)
      {
        v64 = v61 & 0xFFFFFFFFFFFFLL;
      }

      if (v64)
      {
        v197 = v61;
        v199 = v63;
        v65 = [v2 nameComponents];
        if (v65)
        {
          v66 = v65;
          v67 = v53;
          v68 = v200;
          static PersonNameComponents._unconditionallyBridgeFromObjectiveC(_:)();

          v69 = v210;
        }

        else
        {
          v67 = v53;
          v69 = v210;
          v68 = v200;
        }

        OUTLINED_FUNCTION_10_51();
        __swift_storeEnumTagSinglePayload(v185, v186, v187, v188);
        outlined init with take of PersonNameComponents?(v68, v69);
        if (OUTLINED_FUNCTION_21_27())
        {
          outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v69, &_s10Foundation20PersonNameComponentsVSgMd, &_s10Foundation20PersonNameComponentsVSgMR);
        }

        else
        {
          v191 = PersonNameComponents.middleName.getter();
          v193 = v192;
          outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v69, &_s10Foundation20PersonNameComponentsVSgMd, &_s10Foundation20PersonNameComponentsVSgMR);
          if (v193)
          {
            v194 = HIBYTE(v193) & 0xF;
            if ((v193 & 0x2000000000000000) == 0)
            {
              v194 = v191 & 0xFFFFFFFFFFFFLL;
            }

            if (v194)
            {
              v213 = v51;
              v214 = v67;
              v195._countAndFlagsBits = OUTLINED_FUNCTION_49_14();
              String.append(_:)(v195);
              v196._countAndFlagsBits = v191;
              v196._object = v193;
              String.append(_:)(v196);

              goto LABEL_87;
            }
          }
        }

        v213 = v51;
        v214 = v67;
LABEL_87:
        v189._countAndFlagsBits = OUTLINED_FUNCTION_49_14();
        String.append(_:)(v189);
        v190._countAndFlagsBits = v197;
        v190._object = v199;
        String.append(_:)(v190);

        v199 = v213;
        v210 = v214;
        goto LABEL_21;
      }
    }

LABEL_19:

    goto LABEL_20;
  }

  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v39, &_s10Foundation20PersonNameComponentsVSgMd, &_s10Foundation20PersonNameComponentsVSgMR);
LABEL_20:
  OUTLINED_FUNCTION_47_18();
LABEL_21:
  v24 = v198;
LABEL_22:
  [v2 isMe];
  v70 = *v201;
  OUTLINED_FUNCTION_72_0();
  (*(v71 + 232))();
  v72 = [v2 contactIdentifier];
  if (v72)
  {
    v73 = v72;
    v74 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v76 = v75;
  }

  else
  {
    v74 = 0;
    v76 = 0;
  }

  v77 = v207;
  OUTLINED_FUNCTION_72_0();
  (*(v78 + 256))(v74, v76);
  v79 = OUTLINED_FUNCTION_50_16();
  if (v79)
  {
    v80 = v79;
    static PersonNameComponents._unconditionallyBridgeFromObjectiveC(_:)();
  }

  OUTLINED_FUNCTION_10_51();
  __swift_storeEnumTagSinglePayload(v81, v82, v83, v84);
  outlined init with take of PersonNameComponents?(v30, v33);
  if (OUTLINED_FUNCTION_31_18(v33))
  {
    v207 = 0;
    v201 = 0;
  }

  else
  {
    v207 = PersonNameComponents.givenName.getter();
    v201 = v85;
  }

  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v33, &_s10Foundation20PersonNameComponentsVSgMd, &_s10Foundation20PersonNameComponentsVSgMR);
  v86 = OUTLINED_FUNCTION_50_16();
  if (v86)
  {
    v87 = v86;
    static PersonNameComponents._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v88 = v204;
  OUTLINED_FUNCTION_10_51();
  __swift_storeEnumTagSinglePayload(v89, v90, v91, v92);
  outlined init with take of PersonNameComponents?(v24, v27);
  if (OUTLINED_FUNCTION_31_18(v27))
  {
    v204 = 0;
    v200 = 0;
  }

  else
  {
    v204 = PersonNameComponents.middleName.getter();
    v200 = v93;
  }

  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v27, &_s10Foundation20PersonNameComponentsVSgMd, &_s10Foundation20PersonNameComponentsVSgMR);
  v94 = OUTLINED_FUNCTION_50_16();
  if (v94)
  {
    v95 = v94;
    static PersonNameComponents._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v96 = v203;
  OUTLINED_FUNCTION_10_51();
  __swift_storeEnumTagSinglePayload(v97, v98, v99, v100);
  v101 = OUTLINED_FUNCTION_35_17();
  outlined init with take of PersonNameComponents?(v101, v102);
  if (OUTLINED_FUNCTION_21_27())
  {
    v203 = 0;
    v202 = 0;
  }

  else
  {
    v203 = PersonNameComponents.familyName.getter();
    v202 = v103;
  }

  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v96, &_s10Foundation20PersonNameComponentsVSgMd, &_s10Foundation20PersonNameComponentsVSgMR);
  v104 = OUTLINED_FUNCTION_50_16();
  if (v104)
  {
    v105 = v104;
    static PersonNameComponents._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v106 = v205;
  OUTLINED_FUNCTION_10_51();
  __swift_storeEnumTagSinglePayload(v107, v108, v109, v110);
  outlined init with take of PersonNameComponents?(v88, v106);
  if (OUTLINED_FUNCTION_21_27())
  {
    v205 = 0;
    v111 = 0;
  }

  else
  {
    v205 = PersonNameComponents.nickname.getter();
    v111 = v112;
  }

  v113 = outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v106, &_s10Foundation20PersonNameComponentsVSgMd, &_s10Foundation20PersonNameComponentsVSgMR);
  (*(*v70 + 320))(v212, v113);
  v115 = v212[8];
  v114 = v212[9];
  if (v212[1] == 1)
  {
    OUTLINED_FUNCTION_12_45(v212[0]);
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(&v213, &_s27PhoneCallFlowDelegatePlugin0aB10PersonNameVSgMd, &_s27PhoneCallFlowDelegatePlugin0aB10PersonNameVSgMR);
  }

  else
  {
    OUTLINED_FUNCTION_12_45(v212[0]);

    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(&v213, &_s27PhoneCallFlowDelegatePlugin0aB10PersonNameVSgMd, &_s27PhoneCallFlowDelegatePlugin0aB10PersonNameVSgMR);
    if (v114)
    {
      goto LABEL_49;
    }
  }

  v114 = v210;

  v115 = v199;
LABEL_49:
  v116 = [v2 nameComponents];
  v117 = v206;
  if (v116)
  {
    v118 = v116;
    static PersonNameComponents._unconditionallyBridgeFromObjectiveC(_:)();
  }

  OUTLINED_FUNCTION_10_51();
  __swift_storeEnumTagSinglePayload(v119, v120, v121, v122);
  v123 = v211;
  outlined init with take of PersonNameComponents?(v117, v211);
  if (OUTLINED_FUNCTION_21_27())
  {
    v124 = 0;
    v125 = 0;
  }

  else
  {
    v126 = PersonNameComponents.namePrefix.getter();
    v123 = v211;
    v124 = v126;
    v125 = v127;
  }

  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v123, &_s10Foundation20PersonNameComponentsVSgMd, &_s10Foundation20PersonNameComponentsVSgMR);
  v128 = [v2 nameComponents];
  if (v128)
  {
    v129 = v128;
    static PersonNameComponents._unconditionallyBridgeFromObjectiveC(_:)();
  }

  OUTLINED_FUNCTION_10_51();
  __swift_storeEnumTagSinglePayload(v130, v131, v132, v133);
  v134 = v208;
  outlined init with take of PersonNameComponents?(v77, v208);
  if (OUTLINED_FUNCTION_21_27())
  {
    v135 = 0;
    v136 = 0;
  }

  else
  {
    v135 = PersonNameComponents.nameSuffix.getter();
    v136 = v137;
  }

  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v134, &_s10Foundation20PersonNameComponentsVSgMd, &_s10Foundation20PersonNameComponentsVSgMR);
  v213 = v207;
  v214 = v201;
  v215 = v204;
  v216 = v200;
  v217 = v203;
  v218 = v202;
  v219 = v205;
  v220 = v111;
  v221 = v115;
  v222 = v114;
  v223 = v124;
  v224 = v125;
  v225 = v135;
  v226 = v136;
  (*(*v70 + 328))(&v213);
  v138 = [v2 relationship];
  if (v138)
  {
    v139 = v138;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_29_18();
  }

  OUTLINED_FUNCTION_72_0();
  v141 = *(v140 + 424);
  v142 = OUTLINED_FUNCTION_22_21();
  v143(v142);
  v144 = OUTLINED_FUNCTION_40_18();
  if (v144)
  {
    v145 = v144;
    v146 = [v144 type];

    if (v146 == &dword_0 + 2)
    {
      v147 = OUTLINED_FUNCTION_40_18();
      v148 = v147;
      if (v147)
      {
        v149 = [v147 value];

        if (v149)
        {
          static String._unconditionallyBridgeFromObjectiveC(_:)();
          OUTLINED_FUNCTION_29_18();
        }
      }

      OUTLINED_FUNCTION_72_0();
      v157 = *(v156 + 376);
      v158 = OUTLINED_FUNCTION_22_21();
      v159(v158);
LABEL_73:
      OUTLINED_FUNCTION_72_0();
      (*(v164 + 448))();
      goto LABEL_74;
    }
  }

  v150 = OUTLINED_FUNCTION_40_18();
  if (v150)
  {
    v151 = v150;
    v152 = [v150 type];

    if (v152 == &dword_0 + 1)
    {
      v153 = OUTLINED_FUNCTION_40_18();
      v154 = v153;
      if (v153)
      {
        v155 = [v153 value];

        if (v155)
        {
          static String._unconditionallyBridgeFromObjectiveC(_:)();
          OUTLINED_FUNCTION_29_18();
        }
      }

      OUTLINED_FUNCTION_72_0();
      v161 = *(v160 + 400);
      v162 = OUTLINED_FUNCTION_22_21();
      v163(v162);
      goto LABEL_73;
    }
  }

LABEL_74:
  v165 = OUTLINED_FUNCTION_40_18();
  v166 = v165;
  if (v165)
  {
    v167 = [v165 label];

    if (v167)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      OUTLINED_FUNCTION_29_18();
    }
  }

  OUTLINED_FUNCTION_72_0();
  v169 = *(v168 + 472);
  v170 = OUTLINED_FUNCTION_22_21();
  v171(v170);
  v172 = OUTLINED_FUNCTION_40_18();
  if (!v172 || (v173 = v172, v174 = [v172 emergencyType], v173, v174 != &dword_0 + 1))
  {
    v175 = OUTLINED_FUNCTION_40_18();
    if (v175)
    {
      v176 = v175;
      [v175 emergencyType];
    }
  }

  OUTLINED_FUNCTION_72_0();
  (*(v177 + 520))();
  v178 = v209;
  *v209 = v2;
  v179 = type metadata accessor for BackingContact(0);
  OUTLINED_FUNCTION_35_17();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_23_3();
  __swift_storeEnumTagSinglePayload(v180, v181, v182, v179);
  v183 = *(*v70 + 640);
  v184 = v2;
  v183(v178);

  OUTLINED_FUNCTION_65();
}

void PhoneCallIFIntent.contactQueries.getter()
{
  OUTLINED_FUNCTION_66();
  v45 = type metadata accessor for BackingContact(0);
  v1 = OUTLINED_FUNCTION_23_1(v45);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  OUTLINED_FUNCTION_4();
  v44 = (v5 - v4);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin14BackingContactOSgMd, &_s27PhoneCallFlowDelegatePlugin14BackingContactOSgMR);
  OUTLINED_FUNCTION_21(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v9);
  v11 = &v42 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference12ContactQueryVSgMd, &_s13SiriInference12ContactQueryVSgMR);
  OUTLINED_FUNCTION_21(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v15);
  v17 = &v42 - v16;
  v18 = type metadata accessor for ContactQuery();
  v19 = OUTLINED_FUNCTION_7(v18);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19);
  OUTLINED_FUNCTION_4();
  v43 = (v24 - v23);
  v25 = *(v0 + 40);
  v26 = *(v25 + 16);
  if (v26)
  {
    v27 = v25 + 32;
    v42 = v22;
    v28 = (v22 + 32);
    v29 = _swiftEmptyArrayStorage;
    do
    {
      outlined init with copy of SignalProviding(v27, v47);
      v30 = v48;
      v31 = v49;
      __swift_project_boxed_opaque_existential_1(v47, v48);
      (*(v31 + 384))(v30, v31);
      if (__swift_getEnumTagSinglePayload(v11, 1, v45) == 1)
      {
        outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v11, &_s27PhoneCallFlowDelegatePlugin14BackingContactOSgMd, &_s27PhoneCallFlowDelegatePlugin14BackingContactOSgMR);
        v32 = 1;
      }

      else
      {
        outlined init with copy of BackingContact(v11, v44);
        switch(swift_getEnumCaseMultiPayload())
        {
          case 1u:
            v36 = *v44;
            specialized SiriPhoneContact.asSiriInferenceContact.getter();

            break;
          case 2u:
            outlined init with take of SPHConversation(v44, v46);
            v34 = v46[4];
            __swift_project_boxed_opaque_existential_1(v46, v46[3]);
            v35 = *(v34 + 8);
            dispatch thunk of ToContactQuery.toContactQuery()();
            __swift_destroy_boxed_opaque_existential_1(v46);
            break;
          case 3u:
            (*v28)(v17, v44, v18);
            break;
          default:
            v33 = *v44;
            INPerson.toContactQuery()();

            break;
        }

        _s27PhoneCallFlowDelegatePlugin0A5ErrorOWOhTm_5(v11, type metadata accessor for BackingContact);
        v32 = 0;
      }

      __swift_storeEnumTagSinglePayload(v17, v32, 1, v18);
      __swift_destroy_boxed_opaque_existential_1(v47);
      if (__swift_getEnumTagSinglePayload(v17, 1, v18) == 1)
      {
        outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v17, &_s13SiriInference12ContactQueryVSgMd, &_s13SiriInference12ContactQueryVSgMR);
      }

      else
      {
        v37 = *v28;
        (*v28)(v43, v17, v18);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v39 = *(v29 + 2);
          OUTLINED_FUNCTION_10_51();
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v29 = v40;
        }

        v38 = *(v29 + 2);
        if (v38 >= *(v29 + 3) >> 1)
        {
          OUTLINED_FUNCTION_10_51();
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v29 = v41;
        }

        *(v29 + 2) = v38 + 1;
        v37(&v29[((*(v42 + 80) + 32) & ~*(v42 + 80)) + *(v42 + 72) * v38], v43, v18);
      }

      v27 += 40;
      --v26;
    }

    while (v26);
  }

  OUTLINED_FUNCTION_65();
}

uint64_t MessagePayload.ClientAction.app.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16IntelligenceFlow14MessagePayloadO12ClientActionV13ShimParameterOSgMd, &_s16IntelligenceFlow14MessagePayloadO12ClientActionV13ShimParameterOSgMR);
  OUTLINED_FUNCTION_21(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v3);
  v5 = &v11 - v4;
  v6 = MessagePayload.ClientAction.shimParameters.getter();
  Dictionary<>.single(name:)(7368801, 0xE300000000000000, v6, v5);

  v7 = type metadata accessor for MessagePayload.ClientAction.ShimParameter();
  if (__swift_getEnumTagSinglePayload(v5, 1, v7) == 1)
  {
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v5, &_s16IntelligenceFlow14MessagePayloadO12ClientActionV13ShimParameterOSgMd, &_s16IntelligenceFlow14MessagePayloadO12ClientActionV13ShimParameterOSgMR);
    return 0;
  }

  else
  {
    MessagePayload.ClientAction.ShimParameter.toApp.getter();
    v8 = v9;
    (*(*(v7 - 8) + 8))(v5, v7);
  }

  return v8;
}

void MessagePayload.ClientAction.destinations.getter()
{
  OUTLINED_FUNCTION_66();
  v31 = type metadata accessor for MessagePayload.ClientAction.ShimParameter();
  v0 = OUTLINED_FUNCTION_7(v31);
  v2 = v1;
  v4 = *(v3 + 64);
  __chkstk_darwin(v0);
  OUTLINED_FUNCTION_4();
  v7 = v6 - v5;
  v8 = MessagePayload.ClientAction.shimParameters.getter();
  v9 = OUTLINED_FUNCTION_43_18();
  v11 = Dictionary<>.multicardinal(name:)(v9, v10, v8);

  v12 = v11[2];
  if (v12)
  {
    v14 = *(v2 + 16);
    v13 = v2 + 16;
    v15 = v11 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v29 = *(v13 + 56);
    v30 = v14;
    v16 = (v13 - 8);
    v17 = _swiftEmptyArrayStorage;
    v28 = v13;
    do
    {
      v30(v7, v15, v31);
      MessagePayload.ClientAction.ShimParameter.toSiriPhoneContact.getter();
      v32 = v35;
      v33 = v36;
      v34 = v37;
      (*v16)(v7, v31);
      if (*(&v33 + 1))
      {
        outlined init with take of SPHConversation(&v32, &v35);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v38 = v17;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v25 = v17[2];
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v17 = v26;
          v38 = v26;
        }

        v19 = v17[2];
        if (v19 >= v17[3] >> 1)
        {
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v17 = v27;
          v38 = v27;
        }

        v20 = *(&v36 + 1);
        v21 = v37;
        v22 = __swift_mutable_project_boxed_opaque_existential_1(&v35, *(&v36 + 1));
        v23 = *(*(v20 - 8) + 64);
        __chkstk_darwin(v22);
        OUTLINED_FUNCTION_2_79();
        (*(v24 + 16))(v13);
        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)(v19, v13, &v38, v20, v21);
        __swift_destroy_boxed_opaque_existential_1(&v35);
        v13 = v28;
      }

      else
      {
        outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(&v32, &_s27PhoneCallFlowDelegatePlugin04SiriA7Contact_pSgMd, &_s27PhoneCallFlowDelegatePlugin04SiriA7Contact_pSgMR);
      }

      v15 += v29;
      --v12;
    }

    while (v12);
  }

  else
  {
  }

  OUTLINED_FUNCTION_65();
}

uint64_t MessagePayload.ClientAction.speakerphone.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16IntelligenceFlow14MessagePayloadO12ClientActionV13ShimParameterOSgMd, &_s16IntelligenceFlow14MessagePayloadO12ClientActionV13ShimParameterOSgMR);
  OUTLINED_FUNCTION_21(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v3);
  v5 = &v12 - v4;
  v6 = MessagePayload.ClientAction.shimParameters.getter();
  v7 = OUTLINED_FUNCTION_42_16();
  Dictionary<>.single(name:)(v7, v8, v6, v5);

  v9 = type metadata accessor for MessagePayload.ClientAction.ShimParameter();
  if (__swift_getEnumTagSinglePayload(v5, 1, v9) == 1)
  {
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v5, &_s16IntelligenceFlow14MessagePayloadO12ClientActionV13ShimParameterOSgMd, &_s16IntelligenceFlow14MessagePayloadO12ClientActionV13ShimParameterOSgMR);
    v10 = 0;
  }

  else
  {
    v10 = MessagePayload.ClientAction.ShimParameter.toBool.getter();
    (*(*(v9 - 8) + 8))(v5, v9);
  }

  return v10 & 1;
}

double PhoneCallIFIntent.init(app:contacts:phoneCallAVMode:phoneCallAudioRoute:phoneCallVerb:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, char a4@<W3>, char a5@<W4>, uint64_t a6@<X8>)
{
  v6 = *(a1 + 16);
  *a6 = *a1;
  *(a6 + 16) = v6;
  *(a6 + 32) = *(a1 + 32);
  *(a6 + 40) = a2;
  *(a6 + 48) = a3;
  *(a6 + 56) = 0;
  *(a6 + 64) = a4;
  *&result = 151323906;
  *(a6 + 65) = 151323906;
  *(a6 + 69) = 8963;
  *(a6 + 71) = a5;
  *(a6 + 72) = 518;
  *(a6 + 80) = &_swiftEmptyArrayStorage;
  *(a6 + 88) = &_swiftEmptyArrayStorage;
  return result;
}

void closure #1 in static PhoneCallIFIntent.preprocess(app:resolvedDestinations:contactStore:)(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X3>, uint64_t *a5@<X8>)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin14BackingContactOSgMd, &_s27PhoneCallFlowDelegatePlugin14BackingContactOSgMR);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = (&v43 - v12);
  v15 = a1[3];
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v15);
  (*(v14 + 384))(v15, v14);
  v16 = type metadata accessor for BackingContact(0);
  if (__swift_getEnumTagSinglePayload(v13, 1, v16) == 1)
  {
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v13, &_s27PhoneCallFlowDelegatePlugin14BackingContactOSgMd, &_s27PhoneCallFlowDelegatePlugin14BackingContactOSgMR);
LABEL_5:
    if (one-time initialization token for siriPhone != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    __swift_project_value_buffer(v17, static Logger.siriPhone);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v51 = v21;
      *v20 = 136315138;
      v49 = 0;
      v50 = 0xE000000000000000;
      DefaultStringInterpolation.appendInterpolation(type:tags:function:)(&type metadata for PhoneCallIFIntent, _swiftEmptyArrayStorage, 0, 0);
      v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v49, v50, &v51);

      *(v20 + 4) = v22;
      _os_log_impl(&dword_0, v18, v19, "%s Skip preprocessing when backingContact is not an INPerson", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v21);
    }

    goto LABEL_9;
  }

  if (swift_getEnumCaseMultiPayload())
  {
    _s27PhoneCallFlowDelegatePlugin0A5ErrorOWOhTm_5(v13, type metadata accessor for BackingContact);
    goto LABEL_5;
  }

  v18 = *v13;
  if (!a2)
  {
LABEL_14:
    v25 = [v18 personHandle];
    if (v25)
    {
      v26 = v25;
      v47 = outlined bridged method (pb) of @objc INPersonHandle.value.getter(v25);
      if (v27)
      {
        v28 = v27;
        if ([v26 type] == &dword_0 + 1)
        {
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
            v45 = v32;
            v46 = swift_slowAlloc();
            v51 = v46;
            *v32 = 136315138;
            v49 = 0;
            v50 = 0xE000000000000000;
            v44 = v30;
            DefaultStringInterpolation.appendInterpolation(type:tags:function:)(&type metadata for PhoneCallIFIntent, _swiftEmptyArrayStorage, 0, 0);
            v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v49, v50, &v51);

            v34 = v45;
            *(v45 + 1) = v33;
            v30 = v44;
            _os_log_impl(&dword_0, v44, v31, "%s Preprocessing: Telephony call to email address", v34, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v46);
          }

          v35 = v48;
          static PhoneCallIFIntent.mapEmailHandleToPerson(personRepresentation:emailAddress:contactStore:)(v18, v47, v28, a3, a5);

          if (v35)
          {
            *a4 = v35;
          }

          return;
        }
      }

      else
      {
      }
    }

LABEL_9:

    outlined init with copy of SignalProviding(a1, a5);
    return;
  }

  v23 = App.isFirstParty()();
  v24 = App.isFaceTime()();
  if (v23)
  {
    if (v24)
    {
      goto LABEL_9;
    }

    goto LABEL_14;
  }

  v36 = [v18 personHandle];
  if (!v36)
  {
    goto LABEL_9;
  }

  if (one-time initialization token for siriPhone != -1)
  {
    swift_once();
  }

  v37 = type metadata accessor for Logger();
  __swift_project_value_buffer(v37, static Logger.siriPhone);
  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v51 = v41;
    *v40 = 136315138;
    v49 = 0;
    v50 = 0xE000000000000000;
    DefaultStringInterpolation.appendInterpolation(type:tags:function:)(&type metadata for PhoneCallIFIntent, _swiftEmptyArrayStorage, 0, 0);
    v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v49, v50, &v51);

    *(v40 + 4) = v42;
    _os_log_impl(&dword_0, v38, v39, "%s Preprocessing: 3P call", v40, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v41);
  }

  static PhoneCallIFIntent.removeHandleForThirdPartyCall(person:)(v18, a5);
}

uint64_t static PhoneCallIFIntent.removeHandleForThirdPartyCall(person:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  [a1 setPersonHandle:0];
  v3 = type metadata accessor for SiriPhoneContactImpl(0);
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  v7 = SiriPhoneContactImpl.init()();

  specialized SiriPhoneContact.update(person:)();
  a2[3] = v3;
  a2[4] = &protocol witness table for SiriPhoneContactImpl;

  *a2 = v7;
  return result;
}

void static PhoneCallIFIntent.mapEmailHandleToPerson(personRepresentation:emailAddress:contactStore:)(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t *a5@<X8>)
{
  v10.super.isa = INPerson.mutableCopyPerson()().super.isa;
  if (v11)
  {
    return;
  }

  isa = v10.super.isa;
  [(objc_class *)v10.super.isa setPersonHandle:0];
  v13 = type metadata accessor for SiriPhoneContactImpl(0);
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  v54 = v13;
  swift_allocObject();
  v55 = SiriPhoneContactImpl.init()();
  v56 = isa;
  v58[2] = v55;
  specialized SiriPhoneContact.update(person:)();
  v16 = outlined bridged method (pb) of @objc INPerson.contactIdentifier.getter(a1);
  LOBYTE(isa) = specialized Optional<A>.isNilOrEmpty.getter(v16, v17);

  if ((isa & 1) == 0)
  {
    if (one-time initialization token for siriPhone != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    __swift_project_value_buffer(v27, static Logger.siriPhone);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      *v30 = 136315138;
      v58[0] = v31;
      DefaultStringInterpolation.appendInterpolation(type:tags:function:)(&type metadata for PhoneCallIFIntent, _swiftEmptyArrayStorage, 0, 0);
      v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0, 0xE000000000000000, v58);

      *(v30 + 4) = v32;
      _os_log_impl(&dword_0, v28, v29, "%s INPerson has an email address but also has a 1P contactIdentifier. Return destination w/o email address", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v31);
    }

    a5[3] = v54;
    a5[4] = &protocol witness table for SiriPhoneContactImpl;

    goto LABEL_24;
  }

  if (one-time initialization token for siriPhone != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  __swift_project_value_buffer(v18, static Logger.siriPhone);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.debug.getter();
  v53 = a5;
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    *v21 = 136315138;
    v58[0] = v52;
    DefaultStringInterpolation.appendInterpolation(type:tags:function:)(&type metadata for PhoneCallIFIntent, _swiftEmptyArrayStorage, 0, 0);
    v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0, 0xE000000000000000, v58);

    *(v21 + 4) = v22;
    _os_log_impl(&dword_0, v19, v20, "%s Received a fully-resolved INPerson with an email address", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v52);
  }

  v23 = a4[3];
  v24 = a4[4];
  __swift_project_boxed_opaque_existential_1(a4, v23);
  v25 = outlined bridged method (pb) of @objc INPerson._displayName()(a1);
  v33 = (*(v24 + 16))(a2, a3, v25, v26, v23, v24);

  if (specialized Array.count.getter(v33) != 1 || !specialized Array.count.getter(v33))
  {

    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      *v48 = 136315394;
      v58[0] = v49;
      DefaultStringInterpolation.appendInterpolation(type:tags:function:)(&type metadata for PhoneCallIFIntent, _swiftEmptyArrayStorage, 0, 0);
      v50 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0, 0xE000000000000000, v58);

      *(v48 + 4) = v50;
      *(v48 + 12) = 2048;
      v51 = specialized Array.count.getter(v33);

      *(v48 + 14) = v51;

      _os_log_impl(&dword_0, v46, v47, "%s Reverse handle lookup for email address handle found %ld matches. Remove email address and return as-is", v48, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v49);
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }

    a5 = v53;
    v53[3] = v54;
    v53[4] = &protocol witness table for SiriPhoneContactImpl;

LABEL_24:
    *a5 = v55;
    return;
  }

  specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v33 & 0xC000000000000001) == 0, v33);
  if ((v33 & 0xC000000000000001) != 0)
  {
    v34 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    v34 = *(v33 + 32);
  }

  v35 = v34;

  v36 = v35;
  v37 = Logger.logObject.getter();
  v38 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    *v39 = 136315394;
    v58[0] = v41;
    DefaultStringInterpolation.appendInterpolation(type:tags:function:)(&type metadata for PhoneCallIFIntent, _swiftEmptyArrayStorage, 0, 0);
    v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0, 0xE000000000000000, v58);

    *(v39 + 4) = v42;
    *(v39 + 12) = 2112;
    *(v39 + 14) = v36;
    *v40 = v36;
    v43 = v36;
    _os_log_impl(&dword_0, v37, v38, "%s Reverse handle lookup for email address handle found person %@", v39, 0x16u);
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v40, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);

    __swift_destroy_boxed_opaque_existential_1(v41);
  }

  v44 = *(v54 + 48);
  v45 = *(v54 + 52);
  swift_allocObject();
  v57 = SiriPhoneContactImpl.init()();

  specialized SiriPhoneContact.update(person:)();
  v53[3] = v54;
  v53[4] = &protocol witness table for SiriPhoneContactImpl;

  *v53 = v57;
}

void *Dictionary<>.multicardinal(name:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return _swiftEmptyArrayStorage;
  }

  v4 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
  if ((v5 & 1) == 0)
  {
    return _swiftEmptyArrayStorage;
  }

  v6 = *(*(a3 + 56) + 8 * v4);
}

void MessagePayload.ClientAction.ShimParameter.toSiriPhoneContact.getter()
{
  OUTLINED_FUNCTION_66();
  v122 = v1;
  v2 = type metadata accessor for MessagePayload.ClientAction.StringQuery();
  v3 = OUTLINED_FUNCTION_7(v2);
  v120 = v4;
  v6 = *(v5 + 64);
  __chkstk_darwin(v3);
  OUTLINED_FUNCTION_12_5();
  v9 = v7 - v8;
  __chkstk_darwin(v10);
  v12 = (&v116 - v11);
  v121 = type metadata accessor for MessagePayload.ClientAction.PersonQuery();
  v13 = OUTLINED_FUNCTION_7(v121);
  v117 = v14;
  v16 = *(v15 + 64);
  __chkstk_darwin(v13);
  OUTLINED_FUNCTION_12_5();
  v118 = v17 - v18;
  __chkstk_darwin(v19);
  OUTLINED_FUNCTION_13_5();
  v116 = v20;
  __chkstk_darwin(v21);
  v119 = &v116 - v22;
  v23 = type metadata accessor for TypedValue();
  v24 = OUTLINED_FUNCTION_7(v23);
  v26 = v25;
  v28 = *(v27 + 64);
  __chkstk_darwin(v24);
  OUTLINED_FUNCTION_4();
  v31 = (v30 - v29);
  v32 = type metadata accessor for MessagePayload.ClientAction.ShimParameter();
  v33 = OUTLINED_FUNCTION_7(v32);
  v35 = v34;
  v37 = *(v36 + 64);
  __chkstk_darwin(v33);
  OUTLINED_FUNCTION_2_79();
  v38 = v35[2];
  v39 = OUTLINED_FUNCTION_3_1();
  v40(v39);
  v41 = v35[11];
  v42 = OUTLINED_FUNCTION_8_2();
  v44 = v43(v42);
  if (v44 == enum case for MessagePayload.ClientAction.ShimParameter.resolved(_:))
  {
    v45 = v35[12];
    v46 = OUTLINED_FUNCTION_8_2();
    v47(v46);
    OUTLINED_FUNCTION_45_13();
    v48(v31, v0, v23);
    TypedValue.toPerson.getter();
    if (v49)
    {
      v50 = v49;
      if (one-time initialization token for siriPhone != -1)
      {
        OUTLINED_FUNCTION_0_6();
        swift_once();
      }

      v51 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_9_0(v51, static Logger.siriPhone);
      v52 = v50;
      v53 = Logger.logObject.getter();
      v54 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v53, v54))
      {
        OUTLINED_FUNCTION_21_21();
        v55 = swift_slowAlloc();
        v120 = swift_slowAlloc();
        v56 = OUTLINED_FUNCTION_36();
        v121 = v56;
        *v55 = 136315394;
        v57 = OUTLINED_FUNCTION_5_8(v56);
        OUTLINED_FUNCTION_15_37(v57, _swiftEmptyArrayStorage);
        v58 = OUTLINED_FUNCTION_11_40();

        *(v55 + 4) = v58;
        *(v55 + 12) = 2112;
        *(v55 + 14) = v52;
        v59 = v120;
        *v120 = v50;
        v60 = v52;
        _os_log_impl(&dword_0, v53, v54, "%s Received resolved value for SiriPhoneContact: %@", v55, 0x16u);
        outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v59, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        OUTLINED_FUNCTION_8();

        __swift_destroy_boxed_opaque_existential_1(v121);
        OUTLINED_FUNCTION_8();

        OUTLINED_FUNCTION_8();
      }

      v61 = type metadata accessor for SiriPhoneContactImpl(0);
      v62 = *(v61 + 48);
      v63 = *(v61 + 52);
      swift_allocObject();
      v64 = SiriPhoneContactImpl.init()();
      v123 = v64;

      specialized SiriPhoneContact.update(person:)();
      v65 = v122;
      v122[3] = v61;
      v65[4] = &protocol witness table for SiriPhoneContactImpl;

      *v65 = v64;
      (*(v26 + 8))(v31, v23);
      goto LABEL_26;
    }

    (*(v26 + 8))(v31, v23);
LABEL_25:
    v110 = v122;
    v122[4] = 0;
    *v110 = 0u;
    *(v110 + 1) = 0u;
    goto LABEL_26;
  }

  if (v44 == enum case for MessagePayload.ClientAction.ShimParameter.stringQuery(_:))
  {
    v66 = v35[12];
    v67 = OUTLINED_FUNCTION_8_2();
    v68(v67);
    v69 = v120;
    OUTLINED_FUNCTION_45_13();
    v70(v12, v0, v2);
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_0_6();
      swift_once();
    }

    v71 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_9_0(v71, static Logger.siriPhone);
    (v69[2])(v9, v12, v2);
    v72 = Logger.logObject.getter();
    v73 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v72, v73))
    {
      OUTLINED_FUNCTION_21_21();
      v74 = swift_slowAlloc();
      v121 = v12;
      v75 = v74;
      OUTLINED_FUNCTION_24_19();
      v76 = swift_slowAlloc();
      *v75 = 136315394;
      v77 = OUTLINED_FUNCTION_5_8(v76);
      OUTLINED_FUNCTION_15_37(v77, _swiftEmptyArrayStorage);
      v78 = OUTLINED_FUNCTION_11_40();

      *(v75 + 4) = v78;
      *(v75 + 12) = 2080;
      MessagePayload.ClientAction.StringQuery.text.getter();
      OUTLINED_FUNCTION_29_18();
      v79 = v69[1];
      v79(v9, v2);
      v80 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v78, &v125);

      *(v75 + 14) = v80;
      _os_log_impl(&dword_0, v72, v73, "%s Received unresolved stringQuery %s for SiriPhoneContact. This is not expected!", v75, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_8();

      OUTLINED_FUNCTION_8();

      v79(v121, v2);
    }

    else
    {

      v99 = v69[1];
      v99(v9, v2);
      v99(v12, v2);
    }

    goto LABEL_25;
  }

  if (v44 != enum case for MessagePayload.ClientAction.ShimParameter.personQuery(_:))
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_0_6();
      swift_once();
    }

    v100 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_9_0(v100, static Logger.siriPhone);
    v101 = Logger.logObject.getter();
    v102 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v101, v102))
    {
      v103 = swift_slowAlloc();
      v104 = OUTLINED_FUNCTION_36();
      *v103 = 136315138;
      v105 = OUTLINED_FUNCTION_5_8(v104);
      OUTLINED_FUNCTION_15_37(v105, _swiftEmptyArrayStorage);
      v106 = OUTLINED_FUNCTION_11_40();

      *(v103 + 4) = v106;
      _os_log_impl(&dword_0, v101, v102, "%s Received unknown ShimParameterResolution case", v103, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v104);
      OUTLINED_FUNCTION_8();

      OUTLINED_FUNCTION_8();
    }

    v107 = v35[1];
    v108 = OUTLINED_FUNCTION_8_2();
    v109(v108);
    goto LABEL_25;
  }

  v81 = v35[12];
  v82 = OUTLINED_FUNCTION_8_2();
  v83(v82);
  v84 = v117;
  v85 = v119;
  v86 = v0;
  v87 = v121;
  (*(v117 + 32))(v119, v86, v121);
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

  v88 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_9_0(v88, static Logger.siriPhone);
  v89 = v116;
  v120 = *(v84 + 16);
  (v120)(v116, v85, v87);
  v90 = Logger.logObject.getter();
  v91 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v90, v91))
  {
    OUTLINED_FUNCTION_21_21();
    v92 = swift_slowAlloc();
    OUTLINED_FUNCTION_24_19();
    v93 = swift_slowAlloc();
    *v92 = 136315394;
    v94 = OUTLINED_FUNCTION_5_8(v93);
    OUTLINED_FUNCTION_15_37(v94, _swiftEmptyArrayStorage);
    v95 = OUTLINED_FUNCTION_11_40();

    *(v92 + 4) = v95;
    *(v92 + 12) = 2080;
    v123 = MessagePayload.ClientAction.PersonQuery.name.getter();
    v124 = v96;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
    String.init<A>(describing:)();
    OUTLINED_FUNCTION_29_18();
    v97 = OUTLINED_FUNCTION_44_13();
    v31(v97, v121);
    v98 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v89, v95, &v125);

    *(v92 + 14) = v98;
    _os_log_impl(&dword_0, v90, v91, "%s Received unresolved personQuery for SiriPhoneContact: %s", v92, 0x16u);
    swift_arrayDestroy();
    v85 = v119;
    OUTLINED_FUNCTION_8();

    v87 = v121;
    OUTLINED_FUNCTION_8();
  }

  else
  {

    v111 = OUTLINED_FUNCTION_44_13();
    v31(v111, v87);
  }

  v112 = type metadata accessor for SiriPhoneContactImpl(0);
  v113 = v118;
  (v120)(v118, v85, v87);
  v114 = SiriPhoneContactImpl.__allocating_init(ifPersonQuery:)(v113);
  v115 = v122;
  v122[3] = v112;
  v115[4] = &protocol witness table for SiriPhoneContactImpl;
  *v115 = v114;
  v31(v85, v87);
LABEL_26:
  OUTLINED_FUNCTION_65();
}

uint64_t Dictionary<>.single(name:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*(a3 + 16) && (v6 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2), (v7 & 1) != 0) && (v8 = *(*(a3 + 56) + 8 * v6), *(v8 + 16) == 1))
  {
    v9 = type metadata accessor for MessagePayload.ClientAction.ShimParameter();
    OUTLINED_FUNCTION_23_1(v9);
    (*(v10 + 16))(a4, v8 + ((*(v10 + 80) + 32) & ~*(v10 + 80)), v9);
    OUTLINED_FUNCTION_23_3();
    v14 = v9;
  }

  else
  {
    v14 = type metadata accessor for MessagePayload.ClientAction.ShimParameter();
    v11 = a4;
    v12 = 1;
    v13 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
}

uint64_t MessagePayload.ClientAction.ShimParameter.toBool.getter()
{
  v1 = type metadata accessor for MessagePayload.ClientAction.ShimParameter();
  v2 = OUTLINED_FUNCTION_7(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  __chkstk_darwin(v2);
  OUTLINED_FUNCTION_4();
  v7 = OUTLINED_FUNCTION_41_19();
  v8 = OUTLINED_FUNCTION_7(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  __chkstk_darwin(v8);
  OUTLINED_FUNCTION_2_79();
  (*(v4 + 16))(v0, v0, v1);
  v13 = *(v4 + 88);
  v14 = OUTLINED_FUNCTION_0();
  if (v15(v14) == enum case for MessagePayload.ClientAction.ShimParameter.resolved(_:))
  {
    v16 = *(v4 + 96);
    v17 = OUTLINED_FUNCTION_0();
    v18(v17);
    v19 = *(v10 + 32);
    v20 = OUTLINED_FUNCTION_3_1();
    v21(v20);
    v22 = TypedValue.toBool.getter();
    v23 = *(v10 + 8);
    v24 = OUTLINED_FUNCTION_8_2();
    v25(v24);
  }

  else
  {
    v26 = *(v4 + 8);
    v27 = OUTLINED_FUNCTION_0();
    v28(v27);
    v22 = 0;
  }

  return v22 & 1;
}

void MessagePayload.ClientAction.ShimParameter.toApp.getter()
{
  OUTLINED_FUNCTION_66();
  v1 = type metadata accessor for TypedValue();
  v2 = OUTLINED_FUNCTION_7(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  __chkstk_darwin(v2);
  OUTLINED_FUNCTION_2_79();
  v7 = type metadata accessor for MessagePayload.ClientAction.ShimParameter();
  v8 = OUTLINED_FUNCTION_7(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  __chkstk_darwin(v8);
  OUTLINED_FUNCTION_4();
  v15 = v14 - v13;
  v16 = v10[2];
  v17 = OUTLINED_FUNCTION_35_17();
  v18(v17);
  v19 = v10[11];
  v20 = OUTLINED_FUNCTION_13_17();
  if (v21(v20) == enum case for MessagePayload.ClientAction.ShimParameter.resolved(_:))
  {
    v22 = v10[12];
    v23 = OUTLINED_FUNCTION_13_17();
    v24(v23);
    (*(v4 + 32))(v0, v15, v1);
    TypedValue.toApp.getter();
    if (v25)
    {
      if (one-time initialization token for siriPhone != -1)
      {
        OUTLINED_FUNCTION_0_6();
        swift_once();
      }

      v26 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_9_0(v26, static Logger.siriPhone);

      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v27, v28))
      {
        OUTLINED_FUNCTION_21_21();
        v29 = swift_slowAlloc();
        OUTLINED_FUNCTION_24_19();
        v30 = swift_slowAlloc();
        *v29 = 136315394;
        OUTLINED_FUNCTION_5_8(v30);
        OUTLINED_FUNCTION_19_3();
        DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v31, v32, v33, v34);
        v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v55, v56, &v57);

        *(v29 + 4) = v35;
        *(v29 + 12) = 2080;
        App.appIdentifier.getter();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
        v36 = String.init<A>(describing:)();
        v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v37, &v57);

        *(v29 + 14) = v38;
        _os_log_impl(&dword_0, v27, v28, "%s Received resolved value for App: %s", v29, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_8();

        OUTLINED_FUNCTION_8();
      }
    }

    v39 = *(v4 + 8);
    v40 = OUTLINED_FUNCTION_8_2();
    v41(v40);
  }

  else
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_0_6();
      swift_once();
    }

    v42 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_9_0(v42, static Logger.siriPhone);
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = OUTLINED_FUNCTION_36();
      *v45 = 136315138;
      OUTLINED_FUNCTION_5_8(v46);
      OUTLINED_FUNCTION_19_3();
      DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v47, v48, v49, v50);
      v51 = OUTLINED_FUNCTION_11_40();

      *(v45 + 4) = v51;
      _os_log_impl(&dword_0, v43, v44, "%s Received unknown ShimParameterResolution case for App", v45, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v46);
      OUTLINED_FUNCTION_8();

      OUTLINED_FUNCTION_8();
    }

    v52 = v10[1];
    v53 = OUTLINED_FUNCTION_13_17();
    v54(v53);
  }

  OUTLINED_FUNCTION_65();
}

void TypedValue.toPerson.getter()
{
  OUTLINED_FUNCTION_66();
  v0 = type metadata accessor for TypedValue.PrimitiveValue();
  v1 = OUTLINED_FUNCTION_7(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  __chkstk_darwin(v1);
  OUTLINED_FUNCTION_4();
  v6 = OUTLINED_FUNCTION_41_19();
  v7 = OUTLINED_FUNCTION_7(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  __chkstk_darwin(v7);
  OUTLINED_FUNCTION_4();
  v14 = (v13 - v12);
  v15 = type metadata accessor for TypedValue.PrimitiveValue.PersonValue();
  v16 = OUTLINED_FUNCTION_7(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  __chkstk_darwin(v16);
  OUTLINED_FUNCTION_2_79();
  v21 = OUTLINED_FUNCTION_33_17();
  v22(v21);
  v23 = v9[11];
  v24 = OUTLINED_FUNCTION_30_23();
  if (v25(v24) == enum case for TypedValue.primitive(_:))
  {
    v26 = v9[12];
    v27 = OUTLINED_FUNCTION_30_23();
    v28(v27);
    v29 = *v14;
    swift_projectBox();
    v30 = OUTLINED_FUNCTION_37_20();
    v31(v30);
    v32 = v3[11];
    v33 = OUTLINED_FUNCTION_0();
    if (v34(v33) == enum case for TypedValue.PrimitiveValue.person(_:))
    {
      v35 = v3[12];
      v36 = OUTLINED_FUNCTION_0();
      v37(v36);
      OUTLINED_FUNCTION_45_13();
      v38 = OUTLINED_FUNCTION_3_1();
      v39(v38);

      TypedValue.PrimitiveValue.PersonValue.person.getter();
      v40 = *(v18 + 8);
      v41 = OUTLINED_FUNCTION_8_2();
      v42(v41);
    }

    else
    {
      v46 = v3[1];
      v47 = OUTLINED_FUNCTION_0();
      v48(v47);
    }
  }

  else
  {
    v43 = v9[1];
    v44 = OUTLINED_FUNCTION_30_23();
    v45(v44);
  }

  OUTLINED_FUNCTION_65();
}

uint64_t SiriPhoneContactImpl.__allocating_init(ifPersonQuery:)(uint64_t a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin14BackingContactOSgMd, &_s27PhoneCallFlowDelegatePlugin14BackingContactOSgMR);
  OUTLINED_FUNCTION_21(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_49_0();
  v8 = __chkstk_darwin(v7);
  v10 = __dst - v9 + 64;
  v11 = (*(v1 + 656))(v8);

  MessagePayload.ClientAction.PersonQuery.name.getter();
  OUTLINED_FUNCTION_34_12();
  swift_beginAccess();
  memcpy(__dst, (v11 + 64), sizeof(__dst));
  *(v11 + 64) = 0u;
  *(v11 + 80) = 0u;
  *(v11 + 96) = 0u;
  *(v11 + 112) = 0u;
  *(v11 + 128) = a1;
  *(v11 + 136) = v2;
  *(v11 + 144) = 0u;
  *(v11 + 160) = 0u;
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(__dst, &_s27PhoneCallFlowDelegatePlugin0aB10PersonNameVSgMd, &_s27PhoneCallFlowDelegatePlugin0aB10PersonNameVSgMR);
  v12 = MessagePayload.ClientAction.PersonQuery.isMe.getter();
  swift_beginAccess();
  *(v11 + 16) = v12 & 1;
  MessagePayload.ClientAction.PersonQuery.toContactQuery()();
  v13 = type metadata accessor for MessagePayload.ClientAction.PersonQuery();
  OUTLINED_FUNCTION_23_1(v13);
  (*(v14 + 8))(a1);
  v15 = type metadata accessor for BackingContact(0);
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_23_3();
  __swift_storeEnumTagSinglePayload(v16, v17, v18, v15);
  v19 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin20SiriPhoneContactImpl_backingContact;
  swift_beginAccess();
  outlined assign with take of BackingContact?(v10, v11 + v19);
  swift_endAccess();

  return v11;
}