void closure #1 in WorkflowRunnerFlow.guardLocationAccess(needsPreciseLocation:iterator:_:)(uint64_t a1, void *a2, void *a3)
{
  v5 = type metadata accessor for WorkflowRunnerFlow.State(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5);
  v59 = v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = v58 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS8IteratorVy18SiriLinkFlowPlugin0B19WorkflowRunnerEventO_GMd, &_sScS8IteratorVy18SiriLinkFlowPlugin0B19WorkflowRunnerEventO_GMR);
  v61 = *(v11 - 8);
  v12 = *(v61 + 64);
  __chkstk_darwin(v11);
  v60 = v58 - v13;
  if (one-time initialization token for voiceCommands != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  v15 = __swift_project_value_buffer(v14, static Logger.voiceCommands);
  outlined init with copy of DeviceState(a2, v67);
  outlined init with copy of DeviceState(a2, v64);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v58[1] = v15;
    v19 = v18;
    v58[0] = swift_slowAlloc();
    v63 = v58[0];
    *v19 = 136315394;
    v58[2] = v5;
    v20 = v67[4];
    __swift_project_boxed_opaque_existential_1(v67, v67[3]);
    v21 = *(v20 + 8);
    dispatch thunk of Flow.exitValue.getter();
    v22 = GuardFlowResult.description.getter();
    v24 = v23;
    __swift_destroy_boxed_opaque_existential_1Tm(v67);
    v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v24, &v63);

    *(v19 + 4) = v25;
    *(v19 + 12) = 2080;
    v26 = a3;
    v27 = v11;
    v28 = v65;
    v29 = v66;
    __swift_project_boxed_opaque_existential_1(v64, v65);
    v30 = *(v29 + 16);
    v31 = v29;
    v11 = v27;
    a3 = v26;
    v62 = v30(v28, v31);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pSgMd, _ss5Error_pSgMR);
    v32 = String.init<A>(describing:)();
    v34 = v33;
    __swift_destroy_boxed_opaque_existential_1Tm(v64);
    v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v34, &v63);

    *(v19 + 14) = v35;
    _os_log_impl(&dword_0, v16, v17, "#WorkflowRunnerFlow guardLocationAccess - received guardFlow response; exitValue=%s; failure: %s", v19, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1Tm(v67);
    __swift_destroy_boxed_opaque_existential_1Tm(v64);
  }

  v36 = OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_state;
  swift_beginAccess();
  outlined init with copy of WorkflowRunnerFlow.State(a3 + v36, v10);
  if (swift_getEnumCaseMultiPayload() == 7)
  {
    v37 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScS8IteratorVy18SiriLinkFlowPlugin0B19WorkflowRunnerEventO_G8iterator_yyc17completionHandlertMd, &_sScS8IteratorVy18SiriLinkFlowPlugin0B19WorkflowRunnerEventO_G8iterator_yyc17completionHandlertMR) + 48)];
    v39 = *v37;
    v38 = *(v37 + 1);
    v41 = v60;
    v40 = v61;
    (*(v61 + 32))(v60, v10, v11);
    v42 = *(v40 + 16);
    v43 = v59;
    v42(v59, v41, v11);
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    outlined assign with take of WorkflowRunnerFlow.State(v43, a3 + v36);
    swift_endAccess();
    v44 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, a2[3]);
    v45 = *(v44 + 8);
    dispatch thunk of Flow.exitValue.getter();
    v46 = LOBYTE(v64[0]);
    v47 = a2[3];
    v48 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v47);
    v49 = (*(v48 + 16))(v47, v48);
    if (v49)
    {
      v39(0, v49);
    }

    else
    {
      v39(v46 == 0, 0);
    }

    (*(v61 + 8))(v60, v11);
  }

  else
  {
    outlined destroy of WorkflowRunnerFlow.State();
    v50 = a3;
    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v64[0] = v54;
      *v53 = 136315138;
      outlined init with copy of WorkflowRunnerFlow.State(a3 + v36, v59);
      v55 = String.init<A>(describing:)();
      v57 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v55, v56, v64);

      *(v53 + 4) = v57;
      _os_log_impl(&dword_0, v51, v52, "#WorkflowRunnerFlow guardLocationAccess - unexpected state=%s", v53, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v54);
    }
  }
}

id NSUserActivity.__allocating_init(activityType:)(uint64_t a1, uint64_t a2, SEL *a3)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v5 = String._bridgeToObjectiveC()();

  v6 = [v4 *a3];

  return v6;
}

id AnonymousConnectionDelegate.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AnonymousConnectionDelegate.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void (*protocol witness for SiriEnvironmentLocating.siriEnvironment.modify in conformance WorkflowRunnerFlow(void *a1))(void *a1)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v4 = *v1;
  v3[4] = SiriEnvironmentLocating<>.siriEnvironment.modify();
  return protocol witness for SiriEnvironmentLocating.siriEnvironment.modify in conformance WFExecuteCustomIntentFlow;
}

uint64_t protocol witness for Flow.on(input:) in conformance WorkflowRunnerFlow()
{
  v1 = *v0;
  WorkflowRunnerFlow.on(input:)();
  return v2 & 1;
}

uint64_t protocol witness for Flow.execute() in conformance WorkflowRunnerFlow()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = protocol witness for RouteConfirmIntentResponseFlowStrategyAsync.makeFailureConfirmingIntentResponse(app:intent:intentResponse:) in conformance CustomIntentRCHFlowStrategy;

  return WorkflowRunnerFlow.execute()();
}

uint64_t LinkHandlingFlowType.GetFlowConfig.workflowRunner.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1Tm((v1 + 32));

  return outlined init with take of AceServiceInvokerAsync(a1, v1 + 32);
}

uint64_t DefaultLinkHandlingFlowFactory.getFlow(config:deviceState:outputPublisher:linkActionDialogTemplate:linkMetadataProviding:)()
{
  OUTLINED_FUNCTION_8_0();
  v0[100] = v1;
  v0[99] = v2;
  v0[98] = v3;
  v0[97] = v4;
  v0[96] = v5;
  v0[95] = v6;
  v7 = type metadata accessor for CATOption();
  OUTLINED_FUNCTION_14(v7);
  v9 = *(v8 + 64);
  v0[101] = OUTLINED_FUNCTION_28();
  v10 = type metadata accessor for DialogPhase();
  OUTLINED_FUNCTION_14(v10);
  v12 = *(v11 + 64);
  v0[102] = OUTLINED_FUNCTION_28();
  v13 = type metadata accessor for OutputGenerationManifest();
  v0[103] = v13;
  OUTLINED_FUNCTION_5_0(v13);
  v0[104] = v14;
  v16 = *(v15 + 64);
  v0[105] = OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v17, v18, v19);
}

{
  v1 = *(v0 + 776);
  v2 = *(v0 + 768);
  v3 = *v2;
  v4 = v2[1];
  v5 = v2[2];
  v6 = [v5 identifier];
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  v10 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  if ((dispatch thunk of DeviceState.isCarPlay.getter() & 1) != 0 && (v11 = OUTLINED_FUNCTION_60_0(), (static DefaultLinkHandlingFlowFactory.isSupportedCarPlayAction(bundleId:actionId:)(v11, v12, v7, v9) & 1) == 0))
  {

    v63 = swift_task_alloc();
    *(v0 + 848) = v63;
    *v63 = v0;
    v63[1] = DefaultLinkHandlingFlowFactory.getFlow(config:deviceState:outputPublisher:linkActionDialogTemplate:linkMetadataProviding:);
    v64 = *(v0 + 792);

    return LinkActionDialogTemplating.unsupportedOnPlatform()();
  }

  else
  {
    v13 = *(v0 + 800);
    v14 = v13[4];
    __swift_project_boxed_opaque_existential_1(v13, v13[3]);
    OUTLINED_FUNCTION_39_4();
    v16 = *(v15 + 8);
    v17 = OUTLINED_FUNCTION_60_0();
    v19 = v18(v17);

    v21 = [objc_opt_self() policyWithActionMetadata:v19];
    *(v0 + 744) = 0;
    v22 = [v21 connectionWithError:v0 + 744];
    v23 = *(v0 + 744);
    if (v22)
    {
      v24 = v22;
      v76 = v21;
      v25 = *(v0 + 808);
      v26 = *(v0 + 768);
      v73 = *(v26 + 24);
      outlined init with copy of DeviceState(v26 + 32, v0 + 144);
      *(v0 + 16) = 0u;
      *(v0 + 32) = 0u;
      *(v0 + 48) = 0u;
      *(v0 + 64) = 0;
      *(v0 + 72) = -1;
      v27 = v23;
      v28 = v5;

      static AceService.currentAsync.getter();
      static Device.current.getter();
      static OutputPublisherFactory.makeOutputPublisherAsync()();
      type metadata accessor for LinkRCHFlow();
      v29 = swift_allocObject();
      *(v0 + 328) = type metadata accessor for NSError(0, &lazy cache variable for type metadata for LNConnection, LNConnection_ptr);
      *(v0 + 336) = &protocol witness table for LNConnection;
      *(v0 + 304) = v24;
      *(v29 + 16) = v28;
      *(v29 + 24) = v19;
      v75 = v28;
      v30 = v19;
      v68 = v24;
      v31 = [v24 bundleIdentifier];
      v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v34 = v33;

      *(v29 + 112) = v32;
      *(v29 + 120) = v34;
      outlined init with copy of SiriWorkflowRunnerEvent?(v0 + 144, v29 + 168, &_s18SiriLinkFlowPlugin0A15WorkflowRunning_pSgMd, &_s18SiriLinkFlowPlugin0A15WorkflowRunning_pSgMR);
      outlined init with copy of DeviceState(v0 + 224, v29 + 208);
      outlined init with copy of DeviceState(v0 + 224, v0 + 344);
      outlined init with copy of DeviceState(v0 + 264, v0 + 384);
      outlined init with copy of DeviceState(v0 + 184, v0 + 424);
      type metadata accessor for RunLinkActionCATs();
      v35 = v30;
      static CATOption.defaultMode.getter();
      OUTLINED_FUNCTION_76_0();
      v72 = CATWrapper.__allocating_init(options:globals:)();
      type metadata accessor for RunLinkActionCATsSimple();
      static CATOption.defaultMode.getter();
      OUTLINED_FUNCTION_76_0();
      v71 = CATWrapperSimple.__allocating_init(options:globals:)();
      v36 = type metadata accessor for RunLinkActionCATPatternsExecutor(0);
      static CATOption.defaultMode.getter();
      OUTLINED_FUNCTION_76_0();
      v37 = CATWrapper.__allocating_init(options:globals:)();
      type metadata accessor for ShortcutsLinkRCHFlowStrategy();
      v38 = swift_allocObject();
      *(v0 + 488) = v36;
      *(v0 + 496) = &protocol witness table for RunLinkActionCATPatternsExecutor;
      *(v0 + 464) = v37;
      *(v38 + 16) = v3;
      *(v38 + 24) = v4;
      *(v38 + 32) = v35;
      outlined init with copy of DeviceState(v0 + 344, v38 + 40);
      *(v38 + 80) = v73;
      outlined init with copy of DeviceState(v0 + 384, v38 + 88);
      outlined init with copy of DeviceState(v0 + 424, v38 + 128);
      outlined init with copy of DeviceState(v0 + 344, v0 + 504);
      outlined init with copy of DeviceState(v0 + 464, v0 + 544);
      type metadata accessor for RunVoiceCommandCATs();
      v70 = v35;

      static CATOption.defaultMode.getter();
      OUTLINED_FUNCTION_76_0();
      v74 = CATWrapper.__allocating_init(options:globals:)();
      type metadata accessor for RunVoiceCommandCATsSimple();
      static CATOption.defaultMode.getter();
      OUTLINED_FUNCTION_76_0();
      v69 = CATWrapperSimple.__allocating_init(options:globals:)();

      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 424));
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 384));
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 344));
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 464));
      type metadata accessor for LinkActionDialogTemplating();
      v39 = swift_allocObject();
      v40 = *(v0 + 568);
      v41 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 544, v40);
      OUTLINED_FUNCTION_13_1();
      v43 = v42;
      v45 = *(v44 + 64);
      v46 = OUTLINED_FUNCTION_28();
      (*(v43 + 16))(v46, v41, v40);
      v47 = *v46;
      *(v0 + 608) = v36;
      *(v0 + 616) = &protocol witness table for RunLinkActionCATPatternsExecutor;

      *(v0 + 584) = v47;
      outlined init with take of AceServiceInvokerAsync((v0 + 504), v39 + 16);
      *(v39 + 56) = v72;
      *(v39 + 64) = v71;
      *(v39 + 72) = v74;
      *(v39 + 80) = v69;
      outlined init with take of AceServiceInvokerAsync((v0 + 584), v39 + 88);
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 544));

      *(v38 + 168) = v39;
      *(v29 + 32) = v38;
      v48 = [v70 systemProtocols];
      type metadata accessor for NSError(0, &lazy cache variable for type metadata for LNSystemProtocol, LNSystemProtocol_ptr);
      v49 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v50 = [objc_opt_self() sessionStartingProtocol];
      *(v0 + 752) = v50;
      v51 = swift_task_alloc();
      *(v51 + 16) = v0 + 752;
      specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), v51, v49);
      LOBYTE(v39) = v52;

      v53 = 0;
      if (v39)
      {
        v54 = [v68 bundleIdentifier];
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        type metadata accessor for LinkActivityManager();
        swift_allocObject();
        v55 = OUTLINED_FUNCTION_9_3();
        v53 = LinkActivityManager.init(bundleId:)(v55, v56);
      }

      *(v29 + 40) = v53;
      outlined init with copy of DeviceState(v0 + 184, v29 + 128);
      outlined init with copy of DeviceState(v0 + 304, v29 + 248);
      outlined init with copy of SiriWorkflowRunnerEvent?(v0 + 16, v0 + 80, &_s18SiriLinkFlowPlugin0B7RCHFlowC5StateOSgMd, &_s18SiriLinkFlowPlugin0B7RCHFlowC5StateOSgMR);
      v57 = *(v0 + 136);
      if (v57 == 255)
      {
        v61 = 0;
        LOBYTE(v57) = 14;
        v58 = 0uLL;
        v60 = 0uLL;
        v62 = v76;
        v59 = 0uLL;
      }

      else
      {
        v59 = *(v0 + 80);
        v58 = *(v0 + 96);
        v60 = *(v0 + 112);
        v61 = *(v0 + 128);
        v62 = v76;
      }

      v67 = *(v0 + 760);
      *(v29 + 48) = v59;
      *(v29 + 64) = v58;
      *(v29 + 80) = v60;
      *(v29 + 96) = v61;
      *(v29 + 104) = v57;
      *(v29 + 288) = closure #1 in default argument 8 of WFExecuteCustomIntentFlow.init(intent:workflowName:runner:deviceState:aceServiceInvoker:outputPublisher:preferences:appPolicyHandler:guardFlowProvider:);
      *(v29 + 296) = 0;

      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 264));
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 224));
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 184));
      outlined destroy of Any?(v0 + 144, &_s18SiriLinkFlowPlugin0A15WorkflowRunning_pSgMd, &_s18SiriLinkFlowPlugin0A15WorkflowRunning_pSgMR);
      outlined destroy of Any?(v0 + 16, &_s18SiriLinkFlowPlugin0B7RCHFlowC5StateOSgMd, &_s18SiriLinkFlowPlugin0B7RCHFlowC5StateOSgMR);
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 304));

      *v67 = v29;
      *(v67 + 40) = 0;
      OUTLINED_FUNCTION_85_0();

      OUTLINED_FUNCTION_6_0();
    }

    else
    {
      v66 = v23;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      OUTLINED_FUNCTION_85_0();

      OUTLINED_FUNCTION_6_0();
    }

    return v20();
  }
}

{
  OUTLINED_FUNCTION_12_0();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_4_1();
  *v5 = v4;
  v7 = *(v6 + 848);
  v8 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v9 = v8;

  if (v0)
  {
    v10 = v4[105];
    v11 = v4[102];
    v12 = v4[101];

    OUTLINED_FUNCTION_6_0();

    return v13();
  }

  else
  {
    v4[107] = v3;
    OUTLINED_FUNCTION_11_1();

    return _swift_task_switch(v15, v16, v17);
  }
}

{
  OUTLINED_FUNCTION_14_0();
  v1 = v0[107];
  v2 = v0[105];
  v3 = v0[102];
  static DialogPhase.completion.getter();
  OUTLINED_FUNCTION_1_14();
  OUTLINED_FUNCTION_109();
  v4 = type metadata accessor for ResponseFactory();
  OUTLINED_FUNCTION_66(v4);
  v0[108] = ResponseFactory.init()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v5 = OUTLINED_FUNCTION_64();
  v0[109] = v5;
  *(v5 + 16) = xmmword_216010;
  *(v5 + 32) = v1;
  v6 = *(&async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(dialog:outputGenerationManifest:) + 1);
  v7 = async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(dialog:outputGenerationManifest:);
  v8 = v1;
  v9 = swift_task_alloc();
  v0[110] = v9;
  *v9 = v0;
  v9[1] = DefaultLinkHandlingFlowFactory.getFlow(config:deviceState:outputPublisher:linkActionDialogTemplate:linkMetadataProviding:);
  v10 = v0[105];

  return ((&async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(dialog:outputGenerationManifest:) + v7))(v0 + 78, v5, v10);
}

{
  OUTLINED_FUNCTION_12_0();
  v1 = *(*v0 + 880);
  v2 = *(*v0 + 872);
  v3 = *(*v0 + 864);
  v4 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v5 = v4;

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v6, v7, v8);
}

{
  OUTLINED_FUNCTION_14_0();
  v1 = *(v0 + 856);
  v2 = *(v0 + 840);
  v3 = *(v0 + 832);
  v4 = *(v0 + 824);
  v5 = *(v0 + 760);
  outlined init with copy of DeviceState(*(v0 + 784), v0 + 664);
  outlined init with copy of DeviceState(v0 + 624, v0 + 704);
  v6 = swift_allocObject();
  outlined init with take of AceServiceInvokerAsync((v0 + 704), v6 + 16);
  v7 = type metadata accessor for SimpleOutputFlowAsync();
  OUTLINED_FUNCTION_66(v7);
  v8 = SimpleOutputFlowAsync.init(outputPublisher:outputGenerator:)();
  *(v5 + 24) = v7;
  *(v5 + 32) = &protocol witness table for SimpleOutputFlowAsync;

  *v5 = v8;
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 624));
  v9 = *(v3 + 8);
  v10 = OUTLINED_FUNCTION_9_3();
  v11(v10);
  *(v5 + 40) = 1;
  OUTLINED_FUNCTION_85_0();

  OUTLINED_FUNCTION_6_0();

  return v12();
}

uint64_t closure #1 in DefaultLinkHandlingFlowFactory.getFlow(config:deviceState:outputPublisher:linkActionDialogTemplate:linkMetadataProviding:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(closure #1 in DefaultLinkHandlingFlowFactory.getFlow(config:deviceState:outputPublisher:linkActionDialogTemplate:linkMetadataProviding:), 0, 0);
}

uint64_t closure #1 in DefaultLinkHandlingFlowFactory.getFlow(config:deviceState:outputPublisher:linkActionDialogTemplate:linkMetadataProviding:)()
{
  OUTLINED_FUNCTION_8_0();
  outlined init with copy of DeviceState(*(v0 + 24), *(v0 + 16));
  OUTLINED_FUNCTION_6_0();

  return v1();
}

uint64_t static DefaultLinkHandlingFlowFactory.isSupportedCarPlayAction(bundleId:actionId:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  if (one-time initialization token for unsupportedCarPlayAppIntents != -1)
  {
    swift_once();
  }

  v8 = static DefaultLinkHandlingFlowFactory.unsupportedCarPlayAppIntents[0];
  if (!*(static DefaultLinkHandlingFlowFactory.unsupportedCarPlayAppIntents[0] + &dword_10))
  {
    return 1;
  }

  v9 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
  if ((v10 & 1) == 0)
  {
    return 1;
  }

  v11 = *(*&stru_20.segname[v8 + 16] + 8 * v9);
  v18[0] = a3;
  v18[1] = a4;
  __chkstk_darwin(v9);
  v17[2] = v18;

  v12 = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), v17, v11);

  if ((v12 & 1) == 0)
  {
    return 1;
  }

  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v13 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_59(v13, static Logger.voiceCommands);

  v14 = Logger.logObject.getter();
  static os_log_type_t.debug.getter();
  OUTLINED_FUNCTION_80_0();

  if (os_log_type_enabled(v14, v12))
  {
    v15 = swift_slowAlloc();
    v18[0] = swift_slowAlloc();
    *v15 = 136315394;
    *(v15 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, v18);
    *(v15 + 12) = 2080;
    *(v15 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a3, a4, v18);
    _os_log_impl(&dword_0, v14, v12, "#DefaultLinkHandlingFlowFactory isSupportedCarPlayAction - NO support for bundleId=%s; actionId=%s", v15, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_15_0();
    OUTLINED_FUNCTION_15_0();
  }

  return 0;
}

int *one-time initialization function for unsupportedCarPlayAppIntents()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  result = Dictionary.init(dictionaryLiteral:)();
  static DefaultLinkHandlingFlowFactory.unsupportedCarPlayAppIntents[0] = result;
  return result;
}

uint64_t protocol witness for LinkHandlingFlowType.LinkHandlingFlowFactory.getFlow(config:deviceState:outputPublisher:linkActionDialogTemplate:linkMetadataProviding:) in conformance DefaultLinkHandlingFlowFactory()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = CustomIntentRCHFlowStrategy.makeErrorResponse(error:app:intent:);

  return DefaultLinkHandlingFlowFactory.getFlow(config:deviceState:outputPublisher:linkActionDialogTemplate:linkMetadataProviding:)();
}

uint64_t SiriLocationAccessGuardFlow.failureReasonAsError.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow27LocationAccessFailureReasonOSgMd, &_s11SiriKitFlow27LocationAccessFailureReasonOSgMR);
  v1 = OUTLINED_FUNCTION_14(v0);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v27 - v4;
  v6 = type metadata accessor for LocationAccessFailureReason();
  OUTLINED_FUNCTION_13_1();
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v11);
  OUTLINED_FUNCTION_50_0();
  __chkstk_darwin(v12);
  dispatch thunk of SiriLocationAccessGuardFlow.failureReason.getter();
  if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
  {
    outlined destroy of Any?(v5, &_s11SiriKitFlow27LocationAccessFailureReasonOSgMd, &_s11SiriKitFlow27LocationAccessFailureReasonOSgMR);
    return 0;
  }

  else
  {
    v14 = *(v8 + 32);
    v15 = OUTLINED_FUNCTION_95();
    v16(v15);
    v17 = OUTLINED_FUNCTION_69_0(v8);
    v18(v17);
    OUTLINED_FUNCTION_54_1();
    v19 = String.init<A>(describing:)();
    v21 = v20;
    lazy protocol witness table accessor for type WorkflowRunnerError and conformance WorkflowRunnerError();
    v13 = OUTLINED_FUNCTION_16_6();
    *v22 = v19;
    v22[1] = v21;
    v23 = *(v8 + 8);
    v24 = OUTLINED_FUNCTION_48_2();
    v25(v24);
  }

  return v13;
}

uint64_t SLFLocationAccessGuardFlowStrategy.makeFailureResponse(deviceState:requestingPreciseLocation:)(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = OUTLINED_FUNCTION_4();
  return _swift_task_switch(v2, v3, v4);
}

uint64_t SLFLocationAccessGuardFlowStrategy.makeErrorResponse(error:)(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = OUTLINED_FUNCTION_4();
  return _swift_task_switch(v2, v3, v4);
}

uint64_t SLFLocationAccessGuardFlowStrategy.makeErrorResponse(error:)()
{
  v1 = *(v0 + 16);
  *(v1 + 32) = 0;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  OUTLINED_FUNCTION_6_0();
  return v2();
}

uint64_t protocol witness for SiriLocationAccessGuardFlowStrategy.makeFailureResponse(deviceState:requestingPreciseLocation:) in conformance SLFLocationAccessGuardFlowStrategy(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = CustomIntentRCHFlowStrategy.makeErrorResponse(error:app:intent:);

  return SLFLocationAccessGuardFlowStrategy.makeFailureResponse(deviceState:requestingPreciseLocation:)(a1);
}

uint64_t protocol witness for SiriLocationAccessGuardFlowStrategy.makeErrorResponse(error:) in conformance SLFLocationAccessGuardFlowStrategy(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = protocol witness for RouteConfirmIntentResponseFlowStrategyAsync.makeFailureConfirmingIntentResponse(app:intent:intentResponse:) in conformance CustomIntentRCHFlowStrategy;

  return SLFLocationAccessGuardFlowStrategy.makeErrorResponse(error:)(a1);
}

uint64_t closure #1 in variable initialization expression of static SLFLocationAccessGuardProvider.makeGuardFlow@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for SiriLocationAccessGuardFlow();
  lazy protocol witness table accessor for type SLFLocationAccessGuardFlowStrategy and conformance SLFLocationAccessGuardFlowStrategy();
  result = SiriLocationAccessGuardFlow.__allocating_init(needsPreciseLocation:strategy:)();
  a1[3] = v2;
  a1[4] = &protocol witness table for SiriLocationAccessGuardFlow;
  *a1 = result;
  return result;
}

uint64_t specialized TCCTemplatesCATWrapper.makeNoImplFailureResponse(deviceState:requestingPreciseLocation:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a1;
  v6 = *(*(type metadata accessor for DialogPhase() - 8) + 64) + 15;
  v3[3] = swift_task_alloc();
  v7 = type metadata accessor for OutputGenerationManifest();
  v3[4] = v7;
  v8 = *(v7 - 8);
  v3[5] = v8;
  v9 = *(v8 + 64) + 15;
  v3[6] = swift_task_alloc();
  v10 = async function pointer to static TCCTemplates.errorSiriNeedsLocationAccess(deviceState:requestingPreciseLocation:)[1];
  v11 = swift_task_alloc();
  v3[7] = v11;
  *v11 = v3;
  v11[1] = specialized TCCTemplatesCATWrapper.makeNoImplFailureResponse(deviceState:requestingPreciseLocation:);

  return static TCCTemplates.errorSiriNeedsLocationAccess(deviceState:requestingPreciseLocation:)(a2, a3);
}

uint64_t specialized TCCTemplatesCATWrapper.makeNoImplFailureResponse(deviceState:requestingPreciseLocation:)()
{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_9_0();
  v3 = v2;
  OUTLINED_FUNCTION_4_1();
  *v4 = v3;
  v6 = *(v5 + 56);
  v7 = *v1;
  *v4 = *v1;
  v3[8] = v8;

  if (v0)
  {
    v9 = v3[6];
    v10 = v3[3];

    v11 = *(v7 + 8);

    return v11();
  }

  else
  {
    OUTLINED_FUNCTION_11_1();

    return _swift_task_switch(v13, v14, v15);
  }
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v2 = v1[11];
  v3 = v1[10];
  v4 = v1[9];
  v5 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v6 = v5;

  v7 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v7, v8, v9);
}

{
  OUTLINED_FUNCTION_12_0();
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v4 = *(v0 + 24);
  v3 = *(v0 + 32);

  v5 = *(v2 + 8);
  v6 = OUTLINED_FUNCTION_22_4();
  v7(v6);

  OUTLINED_FUNCTION_6_0();

  return v8();
}

void specialized TCCTemplatesCATWrapper.makeNoImplFailureResponse(deviceState:requestingPreciseLocation:)()
{
  OUTLINED_FUNCTION_24_1();
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v2 = v0[8];
  v3 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_59(v3, static Logger.voiceCommands);
  v4 = v2;
  v5 = Logger.logObject.getter();
  LOBYTE(v2) = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v5, v2))
  {
    v6 = v0[8];
    v7 = OUTLINED_FUNCTION_48();
    v1 = OUTLINED_FUNCTION_85();
    *v7 = 136315138;
    v8 = [v6 catId];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v9 = OUTLINED_FUNCTION_75();
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, v11);

    *(v7 + 4) = v12;
    OUTLINED_FUNCTION_9_8();
    _os_log_impl(v13, v14, v15, v16, v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v1);
    OUTLINED_FUNCTION_19_0();
    OUTLINED_FUNCTION_17();
  }

  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_1_14();
  OUTLINED_FUNCTION_109();
  OutputGenerationManifest.listenAfterSpeaking.setter();
  v18 = type metadata accessor for ResponseFactory();
  OUTLINED_FUNCTION_66(v18);
  v0[9] = ResponseFactory.init()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v19 = OUTLINED_FUNCTION_64();
  v0[10] = v19;
  *(v19 + 16) = xmmword_216010;
  *(v19 + 32) = v1;
  OUTLINED_FUNCTION_104(&async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(dialog:outputGenerationManifest:));
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  v0[11] = v20;
  *v20 = v21;
  v20[1] = specialized TCCTemplatesCATWrapper.makeNoImplFailureResponse(deviceState:requestingPreciseLocation:);
  v22 = v0[6];
  OUTLINED_FUNCTION_29_3();
  OUTLINED_FUNCTION_103();

  __asm { BR              X3 }
}

uint64_t TCCTemplatesCATWrapper.makeNoImplFailureResponse(deviceState:requestingPreciseLocation:)()
{
  OUTLINED_FUNCTION_14_0();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v0[2] = v9;
  v10 = type metadata accessor for DialogPhase();
  OUTLINED_FUNCTION_14(v10);
  v12 = *(v11 + 64);
  v0[3] = OUTLINED_FUNCTION_28();
  v13 = type metadata accessor for OutputGenerationManifest();
  v0[4] = v13;
  OUTLINED_FUNCTION_5_0(v13);
  v0[5] = v14;
  v16 = *(v15 + 64);
  v0[6] = OUTLINED_FUNCTION_28();
  v17 = *(v2 + 16);
  OUTLINED_FUNCTION_16_1();
  v23 = (v18 + *v18);
  v20 = *(v19 + 4);
  v21 = swift_task_alloc();
  v0[7] = v21;
  *v21 = v0;
  v21[1] = TCCTemplatesCATWrapper.makeNoImplFailureResponse(deviceState:requestingPreciseLocation:);

  return v23(v8, v6, v4, v2);
}

{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_9_0();
  v3 = v2;
  OUTLINED_FUNCTION_4_1();
  *v4 = v3;
  v6 = *(v5 + 56);
  v7 = *v1;
  *v4 = *v1;
  v3[8] = v8;

  if (v0)
  {
    v9 = v3[6];
    v10 = v3[3];

    v11 = *(v7 + 8);

    return v11();
  }

  else
  {
    OUTLINED_FUNCTION_11_1();

    return _swift_task_switch(v13, v14, v15);
  }
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v2 = v1[11];
  v3 = v1[10];
  v4 = v1[9];
  v5 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v6 = v5;

  v7 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v7, v8, v9);
}

void TCCTemplatesCATWrapper.makeNoImplFailureResponse(deviceState:requestingPreciseLocation:)()
{
  OUTLINED_FUNCTION_24_1();
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v2 = v0[8];
  v3 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_59(v3, static Logger.voiceCommands);
  v4 = v2;
  v5 = Logger.logObject.getter();
  LOBYTE(v2) = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v5, v2))
  {
    v6 = v0[8];
    v7 = OUTLINED_FUNCTION_48();
    v1 = OUTLINED_FUNCTION_85();
    *v7 = 136315138;
    v8 = [v6 catId];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v9 = OUTLINED_FUNCTION_75();
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, v11);

    *(v7 + 4) = v12;
    OUTLINED_FUNCTION_9_8();
    _os_log_impl(v13, v14, v15, v16, v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v1);
    OUTLINED_FUNCTION_19_0();
    OUTLINED_FUNCTION_17();
  }

  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_1_14();
  OUTLINED_FUNCTION_109();
  OutputGenerationManifest.listenAfterSpeaking.setter();
  v18 = type metadata accessor for ResponseFactory();
  OUTLINED_FUNCTION_66(v18);
  v0[9] = ResponseFactory.init()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v19 = OUTLINED_FUNCTION_64();
  v0[10] = v19;
  *(v19 + 16) = xmmword_216010;
  *(v19 + 32) = v1;
  OUTLINED_FUNCTION_104(&async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(dialog:outputGenerationManifest:));
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  v0[11] = v20;
  *v20 = v21;
  v20[1] = TCCTemplatesCATWrapper.makeNoImplFailureResponse(deviceState:requestingPreciseLocation:);
  v22 = v0[6];
  OUTLINED_FUNCTION_29_3();
  OUTLINED_FUNCTION_103();

  __asm { BR              X3 }
}

uint64_t DefaultTCCTemplatesCATWrapper.errorSiriNeedsLocationAccess(deviceState:requestingPreciseLocation:)(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to static TCCTemplates.errorSiriNeedsLocationAccess(deviceState:requestingPreciseLocation:)[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = protocol witness for RCHFlowStrategyAsync.makeIntentFromParse(parse:currentIntent:) in conformance CustomIntentRCHFlowStrategy;

  return static TCCTemplates.errorSiriNeedsLocationAccess(deviceState:requestingPreciseLocation:)(a1, a2);
}

uint64_t protocol witness for TCCTemplatesCATWrapper.makeNoImplFailureResponse(deviceState:requestingPreciseLocation:) in conformance DefaultTCCTemplatesCATWrapper(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = CustomIntentRCHFlowStrategy.makeErrorResponse(error:app:intent:);

  return specialized TCCTemplatesCATWrapper.makeNoImplFailureResponse(deviceState:requestingPreciseLocation:)(a1, a2, a3);
}

uint64_t protocol witness for TCCTemplatesCATWrapper.errorSiriNeedsLocationAccess(deviceState:requestingPreciseLocation:) in conformance DefaultTCCTemplatesCATWrapper(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = protocol witness for TCCTemplatesCATWrapper.errorSiriNeedsLocationAccess(deviceState:requestingPreciseLocation:) in conformance DefaultTCCTemplatesCATWrapper;

  return DefaultTCCTemplatesCATWrapper.errorSiriNeedsLocationAccess(deviceState:requestingPreciseLocation:)(a1, a2);
}

id SISchemaUUID.__allocating_init(nsuuid:)(uint64_t a1)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v4 = [v2 initWithNSUUID:isa];

  v5 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_7(v5);
  (*(v6 + 8))(a1);
  return v4;
}

uint64_t @nonobjc LNConnection.bundleIdentifier.getter()
{
  v1 = [v0 bundleIdentifier];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

id @nonobjc LNActionOutput.init(identifier:dialog:viewSnippet:snippetAction:attribution:value:showOutputAction:showOutputActionHint:showOutputActionOptions:deferred:nextAction:suggestedFollowUp:activityIdentifier:confirmationActionName:showPrompt:confirmationConditions:undoContext:)(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, uint64_t a8, uint64_t a9, char a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, char a16, uint64_t a17, void *a18)
{
  v33.super.isa = UUID._bridgeToObjectiveC()().super.isa;
  if (a12)
  {
    type metadata accessor for NSError(0, &lazy cache variable for type metadata for LNAction, LNAction_ptr);
    v18.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v18.super.isa = 0;
  }

  if (a14)
  {
    v19 = String._bridgeToObjectiveC()();
  }

  else
  {
    v19 = 0;
  }

  LOBYTE(v23) = a16 & 1;
  LOBYTE(v22) = a10 & 1;
  v26 = [v24 initWithIdentifier:v33.super.isa dialog:a2 viewSnippet:a3 snippetAction:a4 attribution:a5 value:a6 showOutputAction:a7 showOutputActionHint:a8 showOutputActionOptions:a9 deferred:v22 nextAction:a11 suggestedFollowUpActions:v18.super.isa activityIdentifier:v19 confirmationActionName:a15 showPrompt:v23 confirmationConditions:a17 undoContext:a18];

  v20 = type metadata accessor for UUID();
  (*(*(v20 - 8) + 8))(a1, v20);
  return v26;
}

void outlined bridged method (mbgnn) of @objc INIntent.launchId.setter(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = String._bridgeToObjectiveC()();
  [a3 _setLaunchId:v4];
}

void outlined bridged method (mbnn) of @objc NSUserActivity.userInfo.setter(uint64_t a1, void *a2)
{
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [a2 setUserInfo:isa];
}

uint64_t outlined bridged method (pb) of @objc LNActionOutput.suggestedFollowUpActions.getter(void *a1)
{
  v1 = [a1 suggestedFollowUpActions];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  type metadata accessor for NSError(0, &lazy cache variable for type metadata for LNAction, LNAction_ptr);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t outlined bridged method (pb) of @objc _INPBIntentMetadata.launchId.getter(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (v2)
  {
    v3 = v2;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  return OUTLINED_FUNCTION_22();
}

void specialized WorkflowRunnerFlow.init(workflowRunnerInput:workflowRunner:dialogState:aceServiceInvoker:deviceState:outputPublisher:runCustomCatWrapper:runVoiceCommandsCatWrapper:runVoiceCommandsCatWrapperSimple:catPatternsExecutor:locationGuardFlowProvider:locationProvider:tccTemplatesCATWrapper:dateTimeResolver:linkHandlingFlowFactory:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char *a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37)
{
  OUTLINED_FUNCTION_40_0();
  v105 = v37;
  v111 = v39;
  v112 = v38;
  v114 = v40;
  v115 = v41;
  v113 = v42;
  v108 = v43;
  v110 = v44;
  v109 = a22;
  v106 = a21;
  v107 = a24;
  v98 = a23;
  v97 = a28;
  v95 = a27;
  v96 = a34;
  v93[1] = a26;
  v94 = a36;
  ObjectType = swift_getObjectType();
  v103 = type metadata accessor for WorkflowRunnerFlow.State(0);
  v45 = OUTLINED_FUNCTION_7(v103);
  v47 = *(v46 + 64);
  __chkstk_darwin(v45);
  OUTLINED_FUNCTION_3();
  v102 = v49 - v48;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSy18SiriLinkFlowPlugin0A19WorkflowRunnerEventOGMd, &_sScSy18SiriLinkFlowPlugin0A19WorkflowRunnerEventOGMR);
  OUTLINED_FUNCTION_13_1();
  v100 = v51;
  v101 = v50;
  v53 = *(v52 + 64);
  __chkstk_darwin(v50);
  v99 = v93 - v54;
  v55 = type metadata accessor for CATOption();
  v56 = OUTLINED_FUNCTION_14(v55);
  v58 = *(v57 + 64);
  __chkstk_darwin(v56);
  OUTLINED_FUNCTION_3();
  v126[3] = a31;
  v126[4] = a35;
  __swift_allocate_boxed_opaque_existential_1(v126);
  OUTLINED_FUNCTION_21_2(a31);
  (*(v59 + 32))();
  v125[3] = a33;
  v125[4] = a37;
  __swift_allocate_boxed_opaque_existential_1(v125);
  OUTLINED_FUNCTION_21_2(a33);
  (*(v60 + 32))();
  v124[3] = a32;
  v124[4] = v94;
  __swift_allocate_boxed_opaque_existential_1(v124);
  OUTLINED_FUNCTION_21_2(a32);
  (*(v61 + 32))();
  v123[3] = a30;
  v123[4] = v96;
  __swift_allocate_boxed_opaque_existential_1(v123);
  OUTLINED_FUNCTION_21_2(a30);
  (*(v62 + 32))();
  v63 = v114;
  memcpy(&a29[OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_workflowRunnerInput], v114, 0x41uLL);
  outlined init with copy of DeviceState(v113, &a29[OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_aceServiceInvoker]);
  v64 = v115;
  outlined init with copy of DeviceState(v115, &a29[OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_deviceState]);
  *&a29[OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_dialogState] = v108;
  outlined init with copy of DeviceState(v112, &a29[OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_outputPublisher]);
  outlined init with copy of DeviceState(v126, &a29[OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_locationProvider]);
  outlined init with copy of DeviceState(v124, &a29[OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_dateTimeResolver]);
  outlined init with copy of DeviceState(v123, &a29[OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_linkHandlingFlowFactory]);
  v65 = v107;
  *&a29[OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_runVoiceCommandsCatWrapperSimple] = v106;
  v66 = &a29[OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_locationGuardFlowProvider];
  *v66 = v98;
  *(v66 + 1) = v65;
  outlined init with copy of DeviceState(v125, &a29[OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_tccTemplatesCATWrapper]);
  outlined init with copy of DeviceState(v64, &v121);
  v67 = type metadata accessor for RunLinkActionCATs();
  outlined init with copy of SiriWorkflowRunnerInput(v63, &v118);

  static CATOption.defaultMode.getter();
  OUTLINED_FUNCTION_31_1();
  v68 = CATWrapper.__allocating_init(options:globals:)();
  type metadata accessor for RunLinkActionCATsSimple();
  OUTLINED_FUNCTION_39_4();
  static CATOption.defaultMode.getter();
  OUTLINED_FUNCTION_31_1();
  v69 = CATWrapperSimple.__allocating_init(options:globals:)();
  type metadata accessor for RunVoiceCommandCATs();
  OUTLINED_FUNCTION_39_4();
  static CATOption.defaultMode.getter();
  OUTLINED_FUNCTION_31_1();
  v70 = CATWrapper.__allocating_init(options:globals:)();
  type metadata accessor for RunVoiceCommandCATsSimple();
  OUTLINED_FUNCTION_39_4();
  static CATOption.defaultMode.getter();
  OUTLINED_FUNCTION_31_1();
  v71 = CATWrapperSimple.__allocating_init(options:globals:)();
  type metadata accessor for RunLinkActionCATPatternsExecutor(0);
  OUTLINED_FUNCTION_39_4();
  static CATOption.defaultMode.getter();
  OUTLINED_FUNCTION_31_1();
  v72 = CATWrapper.__allocating_init(options:globals:)();
  type metadata accessor for LinkActionDialogTemplating();
  v73 = swift_allocObject();
  v73[14] = v67;
  v73[15] = &protocol witness table for RunLinkActionCATPatternsExecutor;
  v73[11] = v72;
  outlined init with take of AceServiceInvokerAsync(&v121, (v73 + 2));
  v73[7] = v68;
  v73[8] = v69;
  v73[9] = v70;
  v73[10] = v71;
  *&a29[OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_linkActionDialogTemplate] = v73;
  outlined init with copy of SiriWorkflowRunnerEvent?(v110, &v121, &_s18SiriLinkFlowPlugin0A15WorkflowRunning_pSgMd, &_s18SiriLinkFlowPlugin0A15WorkflowRunning_pSgMR);
  if (v122)
  {
    outlined init with take of AceServiceInvokerAsync(&v121, &v118);
    outlined init with take of AceServiceInvokerAsync(&v118, &a29[OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_workflowRunner]);
    v74 = v115;
  }

  else
  {
    outlined destroy of Any?(&v121, &_s18SiriLinkFlowPlugin0A15WorkflowRunning_pSgMd, &_s18SiriLinkFlowPlugin0A15WorkflowRunning_pSgMR);
    v74 = v115;
    outlined init with copy of DeviceState(v115, &v121);
    outlined init with copy of DeviceState(v113, v117);
    v75 = type metadata accessor for SiriWorkflowRunner();
    swift_allocObject();
    v76 = v114;
    outlined init with copy of SiriWorkflowRunnerInput(v114, &v118);
    v77 = SiriWorkflowRunner.init(workflowRunnerInput:deviceState:aceServiceInvoker:)(v76, &v121, v117);
    v78 = &a29[OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_workflowRunner];
    *(v78 + 3) = v75;
    *(v78 + 4) = &protocol witness table for SiriWorkflowRunner;
    *v78 = v77;
  }

  outlined init with copy of DeviceState(v74, &v118);
  v79 = type metadata accessor for WorkflowRunnerCATs();
  v80 = v108;

  v81 = v106;

  v82 = v105;

  v83 = v109;

  static CATOption.defaultMode.getter();
  OUTLINED_FUNCTION_31_1();
  v84 = CATWrapper.__allocating_init(options:globals:)();
  type metadata accessor for WorkflowRunnerCATsSimple();
  OUTLINED_FUNCTION_39_4();
  static CATOption.defaultMode.getter();
  OUTLINED_FUNCTION_31_1();
  v85 = CATWrapperSimple.__allocating_init(options:globals:)();
  type metadata accessor for RunCustomIntentCATsSimple();
  OUTLINED_FUNCTION_39_4();
  static CATOption.defaultMode.getter();
  OUTLINED_FUNCTION_31_1();
  CATWrapperSimple.__allocating_init(options:globals:)();
  OUTLINED_FUNCTION_88_0();
  type metadata accessor for WorkflowDialogTemplating();
  swift_allocObject();
  *&a29[OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_dialogTemplating] = WorkflowDialogTemplating.init(deviceState:dialogState:workflowCatWrapper:workflowCatWrapperSimple:runCustomCatWrapper:runCustomCatWrapperSimple:runVoiceCommandsCatWrapper:runVoiceCommandsCatWrapperSimple:catPatternsExecutor:)(&v118, v80, v84, v85, v111, v79, v82, v81, v83);
  outlined init with copy of DeviceState(&a29[OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_workflowRunner], &v118);
  v86 = v120;
  __swift_project_boxed_opaque_existential_1(&v118, v119);
  v87 = *(v86 + 8);
  v88 = v99;
  v89 = OUTLINED_FUNCTION_95();
  v90(v89);
  __swift_destroy_boxed_opaque_existential_1Tm(&v118);
  v92 = v101;
  v91 = v102;
  AsyncStream.makeAsyncIterator()();
  (*(v100 + 8))(v88, v92);
  swift_storeEnumTagMultiPayload();
  outlined init with take of SiriWorkflowRunnerEvent(v91, &a29[OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_state]);
  v116.receiver = a29;
  v116.super_class = ObjectType;
  objc_msgSendSuper2(&v116, "init");

  outlined destroy of SiriWorkflowRunnerInput(v114);
  __swift_destroy_boxed_opaque_existential_1Tm(v112);
  __swift_destroy_boxed_opaque_existential_1Tm(v115);
  __swift_destroy_boxed_opaque_existential_1Tm(v113);
  outlined destroy of Any?(v110, &_s18SiriLinkFlowPlugin0A15WorkflowRunning_pSgMd, &_s18SiriLinkFlowPlugin0A15WorkflowRunning_pSgMR);
  __swift_destroy_boxed_opaque_existential_1Tm(v123);
  __swift_destroy_boxed_opaque_existential_1Tm(v124);
  __swift_destroy_boxed_opaque_existential_1Tm(v125);
  __swift_destroy_boxed_opaque_existential_1Tm(v126);
  OUTLINED_FUNCTION_42();
}

uint64_t outlined assign with take of WorkflowRunnerFlow.State(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorkflowRunnerFlow.State(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type WorkflowRunnerError and conformance WorkflowRunnerError()
{
  result = lazy protocol witness table cache variable for type WorkflowRunnerError and conformance WorkflowRunnerError;
  if (!lazy protocol witness table cache variable for type WorkflowRunnerError and conformance WorkflowRunnerError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowRunnerError and conformance WorkflowRunnerError);
  }

  return result;
}

uint64_t outlined init with copy of WorkflowRunnerFlow.State(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_88_0();
  v5 = v4(v3);
  OUTLINED_FUNCTION_4_11(v5);
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_22();
  v9(v8);
  return a2;
}

uint64_t outlined destroy of WorkflowRunnerFlow.State()
{
  v1 = OUTLINED_FUNCTION_92();
  v3 = v2(v1);
  OUTLINED_FUNCTION_7(v3);
  (*(v4 + 8))(v0);
  return v0;
}

uint64_t outlined assign with take of SiriWorkflowRunnerEvent?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriLinkFlowPlugin0A19WorkflowRunnerEventOSgMd, &_s18SiriLinkFlowPlugin0A19WorkflowRunnerEventOSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t _s11SiriKitFlow5InputVACs23CustomStringConvertibleAAWlTm_1(unint64_t *a1, void (*a2)(uint64_t))
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

id outlined copy of LinkRCHFlowResult(id result, char a2)
{
  if (a2 == 2 || a2 == 1)
  {
    return swift_errorRetain();
  }

  if (!a2)
  {
    return result;
  }

  return result;
}

uint64_t sub_61F10()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t partial apply for closure #1 in DefaultLinkHandlingFlowFactory.getFlow(config:deviceState:outputPublisher:linkActionDialogTemplate:linkMetadataProviding:)()
{
  OUTLINED_FUNCTION_8_0();
  v3 = v2;
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  *(v1 + 16) = v4;
  *v4 = v5;
  v4[1] = CustomIntentRCHFlowStrategy.makeErrorResponse(error:app:intent:);

  return closure #1 in DefaultLinkHandlingFlowFactory.getFlow(config:deviceState:outputPublisher:linkActionDialogTemplate:linkMetadataProviding:)(v3, v0 + 16);
}

uint64_t get_enum_tag_for_layout_string_18SiriLinkFlowPlugin19WorkflowRunnerErrorO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for WorkflowRunnerError(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFA && *(a1 + 16))
  {
    return (*a1 + 2147483643);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 4;
  if (v4 >= 6)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for WorkflowRunnerError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFB)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483643;
    if (a3 >= 0x7FFFFFFB)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFB)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 4;
    }
  }

  return result;
}

void *destructiveInjectEnumTag for WorkflowRunnerError(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_18SiriLinkFlowPlugin0B9ExitValueO(uint64_t a1)
{
  if ((*(a1 + 8) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t getEnumTagSinglePayload for LinkExitValue(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 9))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 8);
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

uint64_t storeEnumTagSinglePayload for LinkExitValue(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

uint64_t destructiveInjectEnumTag for LinkExitValue(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t type metadata completion function for WorkflowRunnerFlow()
{
  result = type metadata accessor for WorkflowRunnerFlow.State(319);
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    return swift_updateClassMetadata2();
  }

  return result;
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for LinkHandlingFlowType(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 41))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 40);
  if (v3 >= 2)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for LinkHandlingFlowType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t destructiveInjectEnumTag for LinkHandlingFlowType(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 40) = a2;
  return result;
}

uint64_t getEnumTagSinglePayload for LinkHandlingFlowType.GetFlowConfig(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 72))
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

uint64_t storeEnumTagSinglePayload for LinkHandlingFlowType.GetFlowConfig(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void type metadata completion function for WorkflowRunnerFlow.State()
{
  type metadata accessor for (iterator: AsyncStream<SiriWorkflowRunnerEvent>.Iterator)();
  if (v0 <= 0x3F)
  {
    type metadata accessor for (iterator: AsyncStream<SiriWorkflowRunnerEvent>.Iterator, bundleId: String, action: LNAction, completionHandler: ())();
    if (v1 <= 0x3F)
    {
      type metadata accessor for (iterator: AsyncStream<SiriWorkflowRunnerEvent>.Iterator, completionHandler: ())();
      if (v2 <= 0x3F)
      {
        type metadata accessor for (Error, iterator: AsyncStream<SiriWorkflowRunnerEvent>.Iterator)();
        if (v3 <= 0x3F)
        {
          type metadata accessor for Error();
          if (v4 <= 0x3F)
          {
            swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
          }
        }
      }
    }
  }
}

void type metadata accessor for (iterator: AsyncStream<SiriWorkflowRunnerEvent>.Iterator)()
{
  if (!lazy cache variable for type metadata for (iterator: AsyncStream<SiriWorkflowRunnerEvent>.Iterator))
  {
    type metadata accessor for AsyncStream<SiriWorkflowRunnerEvent>.Iterator();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for (iterator: AsyncStream<SiriWorkflowRunnerEvent>.Iterator));
    }
  }
}

void type metadata accessor for AsyncStream<SiriWorkflowRunnerEvent>.Iterator()
{
  if (!lazy cache variable for type metadata for AsyncStream<SiriWorkflowRunnerEvent>.Iterator)
  {
    type metadata accessor for SiriWorkflowRunnerEvent(255);
    v0 = type metadata accessor for AsyncStream.Iterator();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AsyncStream<SiriWorkflowRunnerEvent>.Iterator);
    }
  }
}

void type metadata accessor for (iterator: AsyncStream<SiriWorkflowRunnerEvent>.Iterator, bundleId: String, action: LNAction, completionHandler: ())()
{
  if (!lazy cache variable for type metadata for (iterator: AsyncStream<SiriWorkflowRunnerEvent>.Iterator, bundleId: String, action: LNAction, completionHandler: ()))
  {
    __chkstk_darwin(0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sScS8IteratorVy18SiriLinkFlowPlugin0B19WorkflowRunnerEventO_GMd, &_sScS8IteratorVy18SiriLinkFlowPlugin0B19WorkflowRunnerEventO_GMR);
    type metadata accessor for NSError(255, &lazy cache variable for type metadata for LNAction, LNAction_ptr);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_syycMd, &_syycMR);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata, &lazy cache variable for type metadata for (iterator: AsyncStream<SiriWorkflowRunnerEvent>.Iterator, bundleId: String, action: LNAction, completionHandler: ()));
    }
  }
}

void type metadata accessor for (iterator: AsyncStream<SiriWorkflowRunnerEvent>.Iterator, completionHandler: ())()
{
  if (!lazy cache variable for type metadata for (iterator: AsyncStream<SiriWorkflowRunnerEvent>.Iterator, completionHandler: ()))
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sScS8IteratorVy18SiriLinkFlowPlugin0B19WorkflowRunnerEventO_GMd, &_sScS8IteratorVy18SiriLinkFlowPlugin0B19WorkflowRunnerEventO_GMR);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_syycMd, &_syycMR);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (iterator: AsyncStream<SiriWorkflowRunnerEvent>.Iterator, completionHandler: ()));
    }
  }
}

void type metadata accessor for (Error, iterator: AsyncStream<SiriWorkflowRunnerEvent>.Iterator)()
{
  if (!lazy cache variable for type metadata for (Error, iterator: AsyncStream<SiriWorkflowRunnerEvent>.Iterator))
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5Error_pMd, &_ss5Error_pMR);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sScS8IteratorVy18SiriLinkFlowPlugin0B19WorkflowRunnerEventO_GMd, &_sScS8IteratorVy18SiriLinkFlowPlugin0B19WorkflowRunnerEventO_GMR);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (Error, iterator: AsyncStream<SiriWorkflowRunnerEvent>.Iterator));
    }
  }
}

unint64_t type metadata accessor for Error()
{
  result = lazy cache variable for type metadata for Error;
  if (!lazy cache variable for type metadata for Error)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for Error);
  }

  return result;
}

void *outlined consume of SiriWorkflowRunnerInput(void *result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, void *a7, void *a8, char a9)
{
  switch(a9)
  {
    case 0:
      goto LABEL_5;
    case 1:
      goto LABEL_3;
    case 2:
      a5 = a7;
      a6 = a8;
LABEL_3:

      result = a6;
      goto LABEL_4;
    case 3:
LABEL_4:

LABEL_5:

      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_629EC()
{
  swift_unknownObjectWeakDestroy();
  OUTLINED_FUNCTION_21();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t outlined init with copy of SiriWorkflowRunnerEvent?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_4_11(v5);
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_22();
  v9(v8);
  return a2;
}

void outlined consume of LinkExitValue(id a1, char a2)
{
  if (a2 == 1)
  {
  }

  else if (!a2)
  {
  }
}

id outlined copy of LinkExitValue(id result, char a2)
{
  if (a2 == 1)
  {
    return swift_errorRetain();
  }

  if (!a2)
  {
    return result;
  }

  return result;
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@guaranteed WFOpenInteractionResponse) -> ()(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

unint64_t outlined consume of WFOpenInteractionResponse(unint64_t result)
{
  if (!(result >> 62))
  {
  }

  return result;
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@guaranteed CustomIntentExecutionResult) -> ()(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1, *(a1 + 8), *(a1 + 16));
}

void outlined consume of CustomIntentExecutionResult(void *a1, void *a2, char a3)
{
  if (a3 == 1)
  {
  }

  else if (!a3)
  {
  }
}

uint64_t sub_62BBC()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@guaranteed DialogResponse) -> ()(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1, *(a1 + 8));
}

uint64_t sub_62C28()
{
  OUTLINED_FUNCTION_21();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t partial apply for closure #1 in WorkflowRunnerFlow.createPunchOutRequestedFlow(iterator:_:)()
{
  OUTLINED_FUNCTION_8_0();
  v2 = *(v0 + 16);
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  *(v1 + 16) = v3;
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_89(v3);

  return closure #1 in WorkflowRunnerFlow.createPunchOutRequestedFlow(iterator:_:)(v5, v6);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed () -> ()()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t partial apply for closure #1 in WorkflowRunnerFlow.createUnsupportedPunchOutOnCarPlayFlow(iterator:punchOutCompletion:)()
{
  OUTLINED_FUNCTION_8_0();
  v2 = *(v0 + 16);
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  *(v1 + 16) = v3;
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_89(v3);

  return closure #1 in WorkflowRunnerFlow.createUnsupportedPunchOutOnCarPlayFlow(iterator:punchOutCompletion:)(v5, v6);
}

uint64_t lazy protocol witness table accessor for type ReactiveFlow<SendMailPlan> and conformance ReactiveFlow<A>(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_62E50()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t outlined init with take of SiriWorkflowRunnerEvent(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_88_0();
  v5 = v4(v3);
  OUTLINED_FUNCTION_4_11(v5);
  v7 = *(v6 + 32);
  v8 = OUTLINED_FUNCTION_22();
  v9(v8);
  return a2;
}

{
  v4 = type metadata accessor for SiriWorkflowRunnerEvent(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type SLFLocationAccessGuardFlowStrategy and conformance SLFLocationAccessGuardFlowStrategy()
{
  result = lazy protocol witness table cache variable for type SLFLocationAccessGuardFlowStrategy and conformance SLFLocationAccessGuardFlowStrategy;
  if (!lazy protocol witness table cache variable for type SLFLocationAccessGuardFlowStrategy and conformance SLFLocationAccessGuardFlowStrategy)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SLFLocationAccessGuardFlowStrategy and conformance SLFLocationAccessGuardFlowStrategy);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_11()
{
  v2 = v0[51];
  result = v0[52];
  v4 = v0[48];
  v3 = v0[49];
  v6 = v0[44];
  v5 = v0[45];
  v8 = v0[42];
  v7 = v0[43];
  v10 = v0[40];
  v9 = v0[41];
  v11 = v0[38];
  v12 = v0[39];
  return result;
}

uint64_t OUTLINED_FUNCTION_17_5()
{
  v2 = *(v0 + 296);
  v4 = *(v0 + 280);
}

uint64_t OUTLINED_FUNCTION_23_5()
{
  v2 = v0[25];
  v3 = v0[23];
  v5 = v0[19];
  v4 = v0[20];
  v6 = v0[18];
  v7 = v0[16];

  return static ExecuteResponse.complete()();
}

BOOL OUTLINED_FUNCTION_38_4(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_46_2(uint64_t a1, void *a2)
{
  *a2 = 0;
  a2[1] = 0;
  return 0;
}

uint64_t OUTLINED_FUNCTION_57_0()
{

  return swift_beginAccess();
}

id OUTLINED_FUNCTION_59_1@<X0>(int *a1@<X8>)
{
  v3 = a1[1];
  v5 = a1 + *a1;

  return v1;
}

uint64_t OUTLINED_FUNCTION_62_1()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[2];
  v5 = v1[1];
  v6 = v1[2];
  return *v1;
}

uint64_t OUTLINED_FUNCTION_63_1()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[2];
  result = *v1;
  v6 = v1[1];
  v7 = v1[2];
  v8 = v1[3];
  return result;
}

uint64_t OUTLINED_FUNCTION_72_0@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 424);
  v4 = *(v1 + 400);
  v5 = *(v1 + 256);
  **(v1 + 408) = a1;

  return swift_storeEnumTagMultiPayload();
}

uint64_t OUTLINED_FUNCTION_73_0()
{
  v3 = v0[48];
  v2 = v0[49];
  v5 = v0[46];
  v4 = v0[47];
  v6 = v0[44];
  v7 = v0[45];
  v9 = v0[42];
  v8 = v0[43];
  v10 = v0[34];

  return static ExecuteResponse.ongoing(requireInput:)();
}

uint64_t OUTLINED_FUNCTION_82_0()
{
  v2 = *(v0 + 80);
  v3 = *(v0 + 64);
}

uint64_t OUTLINED_FUNCTION_83()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_85_0()
{
  v2 = v0[105];
  v3 = v0[102];
  v4 = v0[101];
}

void OUTLINED_FUNCTION_101(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

void OUTLINED_FUNCTION_102(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v6, v4, a4, v5, 0xCu);
}

id OUTLINED_FUNCTION_104@<X0>(int *a1@<X8>)
{
  v3 = a1[1];
  v5 = a1 + *a1;

  return v1;
}

uint64_t OUTLINED_FUNCTION_105()
{
  v2 = v0[8];
  v3 = v0[6];
  v4 = v0[3];

  return static DialogPhase.error.getter();
}

uint64_t OUTLINED_FUNCTION_106()
{
  v2 = v0[28];
  v3 = v0[24];
  v4 = v0[25];
}

uint64_t OUTLINED_FUNCTION_108()
{
  v2 = *(v0 + 480);
  v3 = *(v0 + 456);
}

uint64_t OUTLINED_FUNCTION_109()
{

  return OutputGenerationManifest.init(dialogPhase:_:)();
}

uint64_t VoiceShortcutClientWrapper.isVoiceShortcutInstalled(voiceCommandPhrase:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 152) = a1;
  *(v2 + 160) = a2;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t VoiceShortcutClientWrapper.isVoiceShortcutInstalled(voiceCommandPhrase:)()
{
  OUTLINED_FUNCTION_15_2();
  v2 = v0[19];
  v1 = v0[20];
  v3 = [objc_opt_self() standardClient];
  v0[21] = v3;
  v4 = String._bridgeToObjectiveC()();
  v0[22] = v4;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = VoiceShortcutClientWrapper.isVoiceShortcutInstalled(voiceCommandPhrase:);
  OUTLINED_FUNCTION_17_6();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySo15VCVoiceShortcutCs5Error_pGMd, &_sSccySo15VCVoiceShortcutCs5Error_pGMR);
  OUTLINED_FUNCTION_5_5(v5);
  v0[11] = 1107296256;
  OUTLINED_FUNCTION_4_12();
  [v3 getVoiceShortcutWithPhrase:v4 completion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_3();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 184) = v4;
  if (v4)
  {
    v5 = VoiceShortcutClientWrapper.isVoiceShortcutInstalled(voiceCommandPhrase:);
  }

  else
  {
    v5 = VoiceShortcutClientWrapper.isVoiceShortcutInstalled(voiceCommandPhrase:);
  }

  return _swift_task_switch(v5, 0, 0);
}

{
  OUTLINED_FUNCTION_8_0();
  v1 = *(v0 + 168);
  v2 = *(v0 + 176);

  OUTLINED_FUNCTION_6_6();
  v4 = *(v0 + 184) == 0;

  return v3(v4);
}

{
  OUTLINED_FUNCTION_15_2();
  v1 = v0[22];
  v2 = v0[23];
  v3 = v0[21];
  swift_willThrow();

  OUTLINED_FUNCTION_6_6();
  v5 = v0[23] == 0;

  return v4(v5);
}

uint64_t VoiceShortcutClientWrapper.installVoiceShortcut(url:voiceCommandPhrase:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[20] = a2;
  v3[21] = a3;
  v3[19] = a1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t VoiceShortcutClientWrapper.installVoiceShortcut(url:voiceCommandPhrase:)()
{
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[19];
  v4 = [objc_opt_self() standardClient];
  v0[22] = v4;
  URL._bridgeToObjectiveC()(v5);
  v7 = v6;
  v0[23] = v6;
  v8 = String._bridgeToObjectiveC()();
  v0[24] = v8;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = VoiceShortcutClientWrapper.installVoiceShortcut(url:voiceCommandPhrase:);
  v9 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySo15VCVoiceShortcutCs5Error_pGMd, &_sSccySo15VCVoiceShortcutCs5Error_pGMR);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned LNDynamicOptionsResult?, @unowned NSError?) -> () with result type LNDynamicOptionsResult;
  v0[13] = &block_descriptor_3;
  v0[14] = v9;
  [v4 importTopLevelShortcutFromURL:v7 withName:v8 completion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_3();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 200) = v4;
  if (v4)
  {
    v5 = VoiceShortcutClientWrapper.installVoiceShortcut(url:voiceCommandPhrase:);
  }

  else
  {
    v5 = VoiceShortcutClientWrapper.installVoiceShortcut(url:voiceCommandPhrase:);
  }

  return _swift_task_switch(v5, 0, 0);
}

{
  OUTLINED_FUNCTION_12_0();
  v1 = *(v0 + 184);
  v2 = *(v0 + 192);
  v3 = *(v0 + 176);

  OUTLINED_FUNCTION_6_0();

  return v4();
}

{
  OUTLINED_FUNCTION_15_2();
  v1 = v0[24];
  v2 = v0[25];
  v4 = v0[22];
  v3 = v0[23];
  swift_willThrow();

  OUTLINED_FUNCTION_6_0();
  v6 = v0[25];

  return v5();
}

uint64_t VoiceShortcutClientWrapper.getVoiceShortcut(voiceCommandName:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 152) = a1;
  *(v2 + 160) = a2;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t VoiceShortcutClientWrapper.getVoiceShortcut(voiceCommandName:)()
{
  OUTLINED_FUNCTION_15_2();
  if (v0[20])
  {
    v1 = v0[19];
    v2 = [objc_opt_self() standardClient];
    v0[21] = v2;
    v3 = String._bridgeToObjectiveC()();
    v0[22] = v3;
    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = VoiceShortcutClientWrapper.getVoiceShortcut(voiceCommandName:);
    v4 = OUTLINED_FUNCTION_17_6();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySo15VCVoiceShortcutCs5Error_pGMd, &_sSccySo15VCVoiceShortcutCs5Error_pGMR);
    v0[10] = _NSConcreteStackBlock;
    v0[11] = 1107296256;
    v0[12] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned LNDynamicOptionsResult?, @unowned NSError?) -> () with result type LNDynamicOptionsResult;
    v0[13] = &block_descriptor_7;
    v0[14] = v4;
    [v2 getVoiceShortcutWithPhrase:v3 completion:v0 + 10];

    return _swift_continuation_await(v0 + 2);
  }

  else
  {
    OUTLINED_FUNCTION_6_6();

    return v5(0);
  }
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_3();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 184) = v4;
  if (v4)
  {
    v5 = VoiceShortcutClientWrapper.getVoiceShortcut(voiceCommandName:);
  }

  else
  {
    v5 = VoiceShortcutClientWrapper.getVoiceShortcut(voiceCommandName:);
  }

  return _swift_task_switch(v5, 0, 0);
}

{
  OUTLINED_FUNCTION_8_0();
  v1 = *(v0 + 176);
  v2 = *(v0 + 144);

  OUTLINED_FUNCTION_6_6();

  return v3(v2);
}

{
  OUTLINED_FUNCTION_15_2();
  v1 = v0[22];
  v2 = v0[23];
  v3 = v0[21];
  swift_willThrow();

  OUTLINED_FUNCTION_6_6();

  return v4(0);
}

uint64_t VoiceShortcutClientWrapper.getVoiceShortcutName(voiceCommandId:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t VoiceShortcutClientWrapper.getVoiceShortcutName(voiceCommandId:)()
{
  OUTLINED_FUNCTION_8_0();
  v0[4] = [objc_opt_self() standardClient];
  v1 = swift_task_alloc();
  v0[5] = v1;
  *v1 = v0;
  v1[1] = VoiceShortcutClientWrapper.getVoiceShortcutName(voiceCommandId:);
  v2 = v0[2];
  v3 = v0[3];
  OUTLINED_FUNCTION_2();

  return _s18SiriLinkFlowPlugin26VoiceShortcutClientWrapperC03geteF4Name14voiceCommandId0kf2ByM0SSSgSS_So07VCVoiceF0CSSYaKXEtYaFZfA0_AISSYaKYCcSo0ofG0Ccfu_AISSYaKYCcfu0_();
}

{
  OUTLINED_FUNCTION_12_0();
  v3 = v2;
  OUTLINED_FUNCTION_9_0();
  v5 = v4;
  v6 = *(v4 + 40);
  v7 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v8 = v7;
  *(v5 + 48) = v0;

  if (v0)
  {
    v9 = VoiceShortcutClientWrapper.getVoiceShortcutName(voiceCommandId:);
  }

  else
  {
    *(v5 + 56) = v3;
    v9 = VoiceShortcutClientWrapper.getVoiceShortcutName(voiceCommandId:);
  }

  return _swift_task_switch(v9, 0, 0);
}

{
  OUTLINED_FUNCTION_15_2();
  v1 = *(v0 + 56);
  v2 = *(v0 + 32);
  v3 = [v1 shortcutName];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  OUTLINED_FUNCTION_12_7();

  return v7(v4, v6);
}

{
  v22 = v0;
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v1 = v0[6];
  v2 = v0[3];
  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Logger.voiceCommands);

  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[6];
  v8 = v0[4];
  if (v6)
  {
    v10 = v0[2];
    v9 = v0[3];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v21 = v13;
    *v11 = 136315394;
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v9, &v21);
    OUTLINED_FUNCTION_16_8(v14);
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 14) = v15;
    *v12 = v15;
    OUTLINED_FUNCTION_15_7(&dword_0, v16, v17, "voiceShortcut NOT found from identifier=%s; error: %@");
    outlined destroy of NSObject?(v12);
    OUTLINED_FUNCTION_15_0();
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
    OUTLINED_FUNCTION_15_0();
    OUTLINED_FUNCTION_15_0();
  }

  else
  {
  }

  OUTLINED_FUNCTION_12_7();
  v18 = OUTLINED_FUNCTION_2();

  return v19(v18);
}

uint64_t static VoiceShortcutClientWrapper.getVoiceShortcutName(voiceCommandId:voiceShortcutById:)()
{
  OUTLINED_FUNCTION_12_0();
  v2 = v1;
  v4 = v3;
  v0[2] = v3;
  v0[3] = v1;
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  v0[4] = v7;
  *v7 = v0;
  v7[1] = static VoiceShortcutClientWrapper.getVoiceShortcutName(voiceCommandId:voiceShortcutById:);

  return v9(v4, v2);
}

{
  OUTLINED_FUNCTION_12_0();
  v3 = v2;
  OUTLINED_FUNCTION_9_0();
  v5 = v4;
  v6 = *(v4 + 32);
  v7 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v8 = v7;
  *(v5 + 40) = v0;

  if (v0)
  {
    v9 = static VoiceShortcutClientWrapper.getVoiceShortcutName(voiceCommandId:voiceShortcutById:);
  }

  else
  {
    *(v5 + 48) = v3;
    v9 = static VoiceShortcutClientWrapper.getVoiceShortcutName(voiceCommandId:voiceShortcutById:);
  }

  return _swift_task_switch(v9, 0, 0);
}

{
  OUTLINED_FUNCTION_12_0();
  v1 = *(v0 + 48);
  v2 = [v1 shortcutName];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  OUTLINED_FUNCTION_12_7();

  return v6(v3, v5);
}

{
  v21 = v0;
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v1 = v0[5];
  v2 = v0[3];
  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Logger.voiceCommands);

  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[5];
  if (v6)
  {
    v9 = v0[2];
    v8 = v0[3];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v20 = v12;
    *v10 = 136315394;
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v8, &v20);
    OUTLINED_FUNCTION_16_8(v13);
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 14) = v14;
    *v11 = v14;
    OUTLINED_FUNCTION_15_7(&dword_0, v15, v16, "voiceShortcut NOT found from identifier=%s; error: %@");
    outlined destroy of NSObject?(v11);
    OUTLINED_FUNCTION_15_0();
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
    OUTLINED_FUNCTION_15_0();
    OUTLINED_FUNCTION_15_0();
  }

  else
  {
  }

  OUTLINED_FUNCTION_12_7();
  v17 = OUTLINED_FUNCTION_2();

  return v18(v17);
}

uint64_t _s18SiriLinkFlowPlugin26VoiceShortcutClientWrapperC03geteF4Name14voiceCommandId0kf2ByM0SSSgSS_So07VCVoiceF0CSSYaKXEtYaFZfA0_AISSYaKYCcSo0ofG0Ccfu_AISSYaKYCcfu0_()
{
  OUTLINED_FUNCTION_8_0();
  v0[20] = v1;
  v0[21] = v2;
  v0[19] = v3;
  if (v4)
  {
    swift_getObjectType();
    v5 = dispatch thunk of Actor.unownedExecutor.getter();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v0[22] = v5;
  v0[23] = v7;

  return _swift_task_switch(_s18SiriLinkFlowPlugin26VoiceShortcutClientWrapperC03geteF4Name14voiceCommandId0kf2ByM0SSSgSS_So07VCVoiceF0CSSYaKXEtYaFZfA0_AISSYaKYCcSo0ofG0Ccfu_AISSYaKYCcfu0_TY0_, v5, v7);
}

uint64_t _s18SiriLinkFlowPlugin26VoiceShortcutClientWrapperC03geteF4Name14voiceCommandId0kf2ByM0SSSgSS_So07VCVoiceF0CSSYaKXEtYaFZfA0_AISSYaKYCcSo0ofG0Ccfu_AISSYaKYCcfu0_TY0_()
{
  OUTLINED_FUNCTION_15_2();
  v1 = v0[20];
  v2 = v0[21];
  v3 = v0[19];
  v4 = String._bridgeToObjectiveC()();
  v0[24] = v4;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = _s18SiriLinkFlowPlugin26VoiceShortcutClientWrapperC03geteF4Name14voiceCommandId0kf2ByM0SSSgSS_So07VCVoiceF0CSSYaKXEtYaFZfA0_AISSYaKYCcSo0ofG0Ccfu_AISSYaKYCcfu0_TQ1_;
  OUTLINED_FUNCTION_17_6();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySo15VCVoiceShortcutCs5Error_pGMd, &_sSccySo15VCVoiceShortcutCs5Error_pGMR);
  OUTLINED_FUNCTION_5_5(v5);
  v0[11] = 1107296256;
  OUTLINED_FUNCTION_4_12();
  [v2 getVoiceShortcutWithIdentifier:v4 completion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t _s18SiriLinkFlowPlugin26VoiceShortcutClientWrapperC03geteF4Name14voiceCommandId0kf2ByM0SSSgSS_So07VCVoiceF0CSSYaKXEtYaFZfA0_AISSYaKYCcSo0ofG0Ccfu_AISSYaKYCcfu0_TQ1_()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_3();
  *v2 = v1;
  *v2 = *v0;
  v4 = v3[6];
  *(v1 + 200) = v4;
  v5 = v3[23];
  v6 = v3[22];
  if (v4)
  {
    v7 = _s18SiriLinkFlowPlugin26VoiceShortcutClientWrapperC03geteF4Name14voiceCommandId0kf2ByM0SSSgSS_So07VCVoiceF0CSSYaKXEtYaFZfA0_AISSYaKYCcSo0ofG0Ccfu_AISSYaKYCcfu0_TY3_;
  }

  else
  {
    v7 = _s18SiriLinkFlowPlugin26VoiceShortcutClientWrapperC03geteF4Name14voiceCommandId0kf2ByM0SSSgSS_So07VCVoiceF0CSSYaKXEtYaFZfA0_AISSYaKYCcSo0ofG0Ccfu_AISSYaKYCcfu0_TY2_;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t _s18SiriLinkFlowPlugin26VoiceShortcutClientWrapperC03geteF4Name14voiceCommandId0kf2ByM0SSSgSS_So07VCVoiceF0CSSYaKXEtYaFZfA0_AISSYaKYCcSo0ofG0Ccfu_AISSYaKYCcfu0_TY2_()
{
  OUTLINED_FUNCTION_8_0();
  v1 = *(v0 + 144);

  OUTLINED_FUNCTION_6_6();

  return v2(v1);
}

uint64_t _s18SiriLinkFlowPlugin26VoiceShortcutClientWrapperC03geteF4Name14voiceCommandId0kf2ByM0SSSgSS_So07VCVoiceF0CSSYaKXEtYaFZfA0_AISSYaKYCcSo0ofG0Ccfu_AISSYaKYCcfu0_TY3_()
{
  OUTLINED_FUNCTION_12_0();
  v1 = *(v0 + 192);
  v2 = *(v0 + 200);
  swift_willThrow();

  OUTLINED_FUNCTION_6_0();
  v4 = *(v0 + 200);

  return v3();
}

uint64_t _sScA_pSgSSSo15VCVoiceShortcutCs5Error_pIegHgILgozo_SSACsAD_pIegHgozo_TR()
{
  OUTLINED_FUNCTION_12_0();
  v6 = (v1 + *v1);
  v2 = v1[1];
  v3 = swift_task_alloc();
  *(v0 + 16) = v3;
  *v3 = v0;
  v3[1] = protocol witness for AppShortcutInvoking.action.getter in conformance AutoShortcutInvocation;
  v4 = OUTLINED_FUNCTION_2();

  return v6(v4);
}

void VoiceShortcutClientWrapper.getSiriAutoShortcutsEnablement(forBundleIdentifier:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = [objc_opt_self() standardClient];
  v7 = String._bridgeToObjectiveC()();
  v9[4] = a3;
  v9[5] = a4;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = thunk for @escaping @callee_guaranteed (@unowned Bool, @guaranteed Error?) -> ();
  v9[3] = &block_descriptor_12;
  v8 = _Block_copy(v9);

  [v6 getSiriAutoShortcutsEnablementForBundleIdentifier:v7 completion:v8];
  _Block_release(v8);
}

uint64_t VoiceShortcutClientWrapper.setSiriAutoShortcutsEnablement(_:forBundleIdentifier:)(char a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 144) = a2;
  *(v3 + 152) = a3;
  *(v3 + 184) = a1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t VoiceShortcutClientWrapper.setSiriAutoShortcutsEnablement(_:forBundleIdentifier:)()
{
  OUTLINED_FUNCTION_15_2();
  v2 = *(v0 + 144);
  v1 = *(v0 + 152);
  v3 = *(v0 + 184);
  v4 = [objc_opt_self() standardClient];
  *(v0 + 160) = v4;
  v5 = String._bridgeToObjectiveC()();
  *(v0 + 168) = v5;
  *(v0 + 16) = v0;
  *(v0 + 24) = VoiceShortcutClientWrapper.setSiriAutoShortcutsEnablement(_:forBundleIdentifier:);
  v6 = OUTLINED_FUNCTION_17_6();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccyyts5Error_pGMd, &_sSccyyts5Error_pGMR);
  *(v0 + 80) = _NSConcreteStackBlock;
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSError?) -> () with result type ();
  *(v0 + 104) = &block_descriptor_15;
  *(v0 + 112) = v6;
  [v4 setSiriAutoShortcutsEnablement:v3 forBundleIdentifier:v5 completion:v0 + 80];

  return _swift_continuation_await(v0 + 16);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_3();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 176) = v4;
  if (v4)
  {
    v5 = VoiceShortcutClientWrapper.setSiriAutoShortcutsEnablement(_:forBundleIdentifier:);
  }

  else
  {
    v5 = VoiceShortcutClientWrapper.setSiriAutoShortcutsEnablement(_:forBundleIdentifier:);
  }

  return _swift_task_switch(v5, 0, 0);
}

{
  OUTLINED_FUNCTION_8_0();
  v1 = *(v0 + 168);

  OUTLINED_FUNCTION_6_0();

  return v2();
}

{
  OUTLINED_FUNCTION_12_0();
  v1 = v0[21];
  v2 = v0[22];
  v3 = v0[20];
  swift_willThrow();

  OUTLINED_FUNCTION_6_0();
  v5 = v0[22];

  return v4();
}

uint64_t @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSError?) -> () with result type ()(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    v5 = a2;

    return specialized _resumeUnsafeThrowingContinuationWithError<A>(_:_:)(v4, v5);
  }

  else
  {
    v7 = *v3;

    return specialized _resumeUnsafeThrowingContinuation<A>(_:_:)();
  }
}

uint64_t protocol witness for VoiceShortcutClientWrapping.isVoiceShortcutInstalled(voiceCommandPhrase:) in conformance VoiceShortcutClientWrapper(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = protocol witness for AppShortcutInvoking.autoShortcuts.getter in conformance AutoShortcutInvocation;

  return VoiceShortcutClientWrapper.isVoiceShortcutInstalled(voiceCommandPhrase:)(a1, a2);
}

uint64_t protocol witness for VoiceShortcutClientWrapping.installVoiceShortcut(url:voiceCommandPhrase:) in conformance VoiceShortcutClientWrapper(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = CustomIntentRCHFlowStrategy.makeErrorResponse(error:app:intent:);

  return VoiceShortcutClientWrapper.installVoiceShortcut(url:voiceCommandPhrase:)(a1, a2, a3);
}

uint64_t protocol witness for VoiceShortcutClientWrapping.getVoiceShortcut(voiceCommandName:) in conformance VoiceShortcutClientWrapper(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = protocol witness for AppShortcutInvoking.autoShortcuts.getter in conformance AutoShortcutInvocation;

  return VoiceShortcutClientWrapper.getVoiceShortcut(voiceCommandName:)(a1, a2);
}

uint64_t protocol witness for VoiceShortcutClientWrapping.getVoiceShortcutName(voiceCommandId:) in conformance VoiceShortcutClientWrapper()
{
  OUTLINED_FUNCTION_8_0();
  v2 = v1;
  v4 = v3;
  v5 = swift_task_alloc();
  *(v0 + 16) = v5;
  *v5 = v0;
  v5[1] = protocol witness for VoiceShortcutClientWrapping.getVoiceShortcutName(voiceCommandId:) in conformance VoiceShortcutClientWrapper;

  return VoiceShortcutClientWrapper.getVoiceShortcutName(voiceCommandId:)(v4, v2);
}

{
  OUTLINED_FUNCTION_8_0();
  v2 = v1;
  v4 = v3;
  OUTLINED_FUNCTION_9_0();
  v6 = *(v5 + 16);
  v7 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v8 = v7;

  OUTLINED_FUNCTION_12_7();

  return v9(v4, v2);
}

uint64_t protocol witness for VoiceShortcutClientWrapping.setSiriAutoShortcutsEnablement(_:forBundleIdentifier:) in conformance VoiceShortcutClientWrapper(char a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = protocol witness for RouteConfirmIntentResponseFlowStrategyAsync.makeFailureConfirmingIntentResponse(app:intent:intentResponse:) in conformance CustomIntentRCHFlowStrategy;

  return VoiceShortcutClientWrapper.setSiriAutoShortcutsEnablement(_:forBundleIdentifier:)(a1, a2, a3);
}

uint64_t implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:)(void (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void OUTLINED_FUNCTION_4_12()
{
  v1[12] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned LNDynamicOptionsResult?, @unowned NSError?) -> () with result type LNDynamicOptionsResult;
  v1[13] = v0;
  v1[14] = v2;
}

uint64_t OUTLINED_FUNCTION_5_5(uint64_t result)
{
  *(v1 + 136) = result;
  *(v1 + 80) = _NSConcreteStackBlock;
  return result;
}

void OUTLINED_FUNCTION_15_7(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x16u);
}

uint64_t OUTLINED_FUNCTION_16_8(uint64_t a1)
{
  *(v1 + 4) = a1;
  *(v1 + 12) = 2112;

  return swift_errorRetain();
}

uint64_t OUTLINED_FUNCTION_17_6()
{

  return swift_continuation_init();
}

uint64_t LocationResolver.makeRecommendation(value:context:)()
{
  v0 = type metadata accessor for LocationResolutionSpec();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  LocationResolutionSpec.init()();
  LocationResolver.makeRecommendation(value:context:spec:)();
  return (*(v1 + 8))(v4, v0);
}

uint64_t CustomIntentContinueInAppWithDialogStrategy.__allocating_init(runner:deviceState:)(__int128 *a1, uint64_t *a2)
{
  v4 = swift_allocObject();
  CustomIntentContinueInAppWithDialogStrategy.init(runner:deviceState:)(a1, a2);
  return v4;
}

uint64_t CustomIntentContinueInAppWithDialogStrategy.init(runner:deviceState:)(__int128 *a1, uint64_t *a2)
{
  v3 = v2;
  v6 = type metadata accessor for CATOption();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  outlined init with copy of DeviceState(a2, v2 + 16);
  outlined init with copy of DeviceState(v2 + 16, v17);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v8 = static WFDialogState.shared;
  type metadata accessor for RunCustomIntentCATs();

  static CATOption.defaultMode.getter();
  OUTLINED_FUNCTION_10_8();
  v9 = CATWrapper.__allocating_init(options:globals:)();
  type metadata accessor for RunCustomIntentCATsSimple();
  static CATOption.defaultMode.getter();
  OUTLINED_FUNCTION_10_8();
  v10 = CATWrapperSimple.__allocating_init(options:globals:)();
  type metadata accessor for RunVoiceCommandCATs();
  static CATOption.defaultMode.getter();
  OUTLINED_FUNCTION_10_8();
  v11 = CATWrapper.__allocating_init(options:globals:)();
  type metadata accessor for RunVoiceCommandCATsSimple();
  static CATOption.defaultMode.getter();
  OUTLINED_FUNCTION_10_8();
  v12 = CATWrapperSimple.__allocating_init(options:globals:)();
  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  v13 = type metadata accessor for AppNameResolver();
  v14 = swift_allocObject();
  type metadata accessor for CustomIntentsDialogTemplating();
  v15 = swift_allocObject();
  *(v15 + 136) = v13;
  *(v15 + 144) = &protocol witness table for AppNameResolver;
  *(v15 + 112) = v14;
  *(v15 + 56) = v8;
  outlined init with take of AceServiceInvokerAsync(v17, v15 + 16);
  *(v15 + 64) = 0;
  *(v15 + 72) = 1;
  *(v15 + 80) = v9;
  *(v15 + 88) = v10;
  *(v15 + 96) = v11;
  *(v15 + 104) = v12;
  *(v3 + 56) = v15;
  outlined init with take of AceServiceInvokerAsync(a1, v3 + 64);
  return v3;
}

uint64_t CustomIntentContinueInAppWithDialogStrategy.makeContinueInAppHandoffResponse(intentResolutionRecord:)()
{
  OUTLINED_FUNCTION_8_0();
  v1[17] = v2;
  v1[18] = v0;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR) - 8) + 64);
  v1[19] = OUTLINED_FUNCTION_28();
  v4 = type metadata accessor for TemplatingResult();
  v1[20] = v4;
  OUTLINED_FUNCTION_5_0(v4);
  v1[21] = v5;
  v7 = *(v6 + 64);
  v1[22] = OUTLINED_FUNCTION_28();
  v8 = type metadata accessor for DialogPhase();
  v1[23] = v8;
  OUTLINED_FUNCTION_5_0(v8);
  v1[24] = v9;
  v11 = *(v10 + 64) + 15;
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  v12 = type metadata accessor for OutputGenerationManifest();
  v1[27] = v12;
  OUTLINED_FUNCTION_5_0(v12);
  v1[28] = v13;
  v15 = *(v14 + 64);
  v1[29] = OUTLINED_FUNCTION_28();
  v16 = type metadata accessor for RFFeatureFlags.ResponseFramework();
  v1[30] = v16;
  OUTLINED_FUNCTION_5_0(v16);
  v1[31] = v17;
  v19 = *(v18 + 64);
  v1[32] = OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v20, v21, v22);
}

{
  v2 = v0[31];
  v1 = v0[32];
  v3 = v0[30];
  v4 = v0[18];
  (*(v2 + 104))(v1, enum case for RFFeatureFlags.ResponseFramework._SMART(_:), v3);
  v5 = RFFeatureFlags.ResponseFramework.isEnabled.getter();
  (*(v2 + 8))(v1, v3);
  v6 = **(v4 + 56);
  if (v5)
  {
    v13 = (*(v6 + 368) + **(v6 + 368));
    v7 = *(*(v6 + 368) + 4);
    v8 = swift_task_alloc();
    v0[33] = v8;
    *v8 = v0;
    v8[1] = CustomIntentContinueInAppWithDialogStrategy.makeContinueInAppHandoffResponse(intentResolutionRecord:);

    return v13();
  }

  else
  {
    v14 = (*(v6 + 376) + **(v6 + 376));
    v10 = *(*(v6 + 376) + 4);
    v11 = swift_task_alloc();
    v0[39] = v11;
    *v11 = v0;
    v11[1] = CustomIntentContinueInAppWithDialogStrategy.makeContinueInAppHandoffResponse(intentResolutionRecord:);
    v12 = v0[22];

    return v14(v12);
  }
}

{
  v1 = v0[35];
  v2 = v0[29];
  v4 = v0[25];
  v3 = v0[26];
  v5 = v0[23];
  v6 = v0[24];
  static DialogPhase.completion.getter();
  v7 = [v1 catId];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  (*(v6 + 16))(v4, v3, v5);
  OutputGenerationManifest.init(dialogPhase:_:)();
  OutputGenerationManifest.responseViewId.setter();
  (*(v6 + 8))(v3, v5);
  v8 = type metadata accessor for ResponseFactory();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  v0[36] = ResponseFactory.init()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v11 = swift_allocObject();
  v0[37] = v11;
  *(v11 + 16) = xmmword_216010;
  *(v11 + 32) = v1;
  v12 = *(&async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(dialog:outputGenerationManifest:) + 1);
  v17 = &async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(dialog:outputGenerationManifest:) + async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(dialog:outputGenerationManifest:);
  v13 = v1;
  v14 = swift_task_alloc();
  v0[38] = v14;
  *v14 = v0;
  v14[1] = CustomIntentContinueInAppWithDialogStrategy.makeContinueInAppHandoffResponse(intentResolutionRecord:);
  v15 = v0[29];

  return (v17)(v0 + 2, v11, v15);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v2 = v1[38];
  v3 = v1[37];
  v4 = v1[36];
  v5 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v6 = v5;

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v7, v8, v9);
}

{
  v2 = *(v0 + 224);
  v1 = *(v0 + 232);
  v3 = *(v0 + 216);

  (*(v2 + 8))(v1, v3);
  v4 = async function pointer to static NotificationTemplates.genericHandoffNotification()[1];
  v5 = swift_task_alloc();
  *(v0 + 328) = v5;
  *v5 = v0;
  v6 = OUTLINED_FUNCTION_1_15(v5);

  return static NotificationTemplates.genericHandoffNotification()(v6);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_0();
  *v3 = v2;
  v5 = *(v4 + 312);
  v6 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v7 = v6;
  *(v8 + 320) = v0;

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v9, v10, v11);
}

{
  v2 = *(v0 + 168);
  v1 = *(v0 + 176);
  v4 = *(v0 + 152);
  v3 = *(v0 + 160);
  v5 = *(v0 + 144);
  v6 = v5[6];
  __swift_project_boxed_opaque_existential_1(v5 + 2, v5[5]);
  dispatch thunk of DeviceState.isTextToSpeechEnabled.getter();
  v7 = type metadata accessor for NLContextUpdate();
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v7);
  v8 = type metadata accessor for AceOutput();
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0;
  *(v0 + 56) = 0u;
  *(v0 + 40) = v8;
  *(v0 + 48) = &protocol witness table for AceOutput;
  __swift_allocate_boxed_opaque_existential_1((v0 + 16));
  static AceOutputHelper.makeCompletionViewOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
  outlined destroy of String?(v0 + 56, &_s11SiriKitFlow0C8Activity_pSgMd, &_s11SiriKitFlow0C8Activity_pSgMR);
  outlined destroy of String?(v4, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  (*(v2 + 8))(v1, v3);
  v9 = async function pointer to static NotificationTemplates.genericHandoffNotification()[1];
  v10 = swift_task_alloc();
  *(v0 + 328) = v10;
  *v10 = v0;
  v11 = OUTLINED_FUNCTION_1_15(v10);

  return static NotificationTemplates.genericHandoffNotification()(v11);
}

{
  OUTLINED_FUNCTION_15_2();
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_9_0();
  v7 = v6;
  OUTLINED_FUNCTION_3_0();
  *v8 = v7;
  v10 = *(v9 + 328);
  v11 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v12 = v11;
  v7[42] = v0;

  if (!v0)
  {
    v7[43] = v3;
    v7[44] = v5;
  }

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v13, v14, v15);
}

{
  OUTLINED_FUNCTION_15_2();
  v1 = *(v0 + 144);
  v2 = v1[11];
  v3 = v1[12];
  __swift_project_boxed_opaque_existential_1(v1 + 8, v2);
  v4 = *(v3 + 32);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v0 + 360) = v6;
  *v6 = v0;
  v6[1] = CustomIntentContinueInAppWithDialogStrategy.makeContinueInAppHandoffResponse(intentResolutionRecord:);

  return v8(v2, v3);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_0();
  *v2 = v1;
  v4 = *(v3 + 360);
  *v2 = *v0;
  *(v1 + 368) = v5;

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v6, v7, v8);
}

{
  v1 = v0[46];
  v3 = v0[43];
  v2 = v0[44];
  v4 = v0[32];
  v5 = v0[29];
  v7 = v0[25];
  v6 = v0[26];
  v8 = v0[22];
  v12 = v0[19];
  v9 = v0[17];
  outlined init with copy of DeviceState((v0 + 2), (v0 + 12));
  HandoffResponse.init(output:companionNotificationText:runSiriKitExecutorCommand:)();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);

  OUTLINED_FUNCTION_6_0();

  return v10();
}

{
  OUTLINED_FUNCTION_15_2();
  v1 = *(v0 + 272);
  OUTLINED_FUNCTION_2_12();

  OUTLINED_FUNCTION_6_0();

  return v2();
}

{
  OUTLINED_FUNCTION_15_2();
  v1 = *(v0 + 320);
  OUTLINED_FUNCTION_2_12();

  OUTLINED_FUNCTION_6_0();

  return v2();
}

{
  OUTLINED_FUNCTION_15_2();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  v1 = *(v0 + 336);
  OUTLINED_FUNCTION_2_12();

  OUTLINED_FUNCTION_6_0();

  return v2();
}

uint64_t CustomIntentContinueInAppWithDialogStrategy.makeContinueInAppHandoffResponse(intentResolutionRecord:)(uint64_t a1)
{
  OUTLINED_FUNCTION_9_0();
  v5 = v4;
  OUTLINED_FUNCTION_3_0();
  *v6 = v5;
  v8 = *(v7 + 264);
  v9 = *v2;
  OUTLINED_FUNCTION_2_0();
  *v10 = v9;
  *(v5 + 272) = v1;

  if (!v1)
  {
    *(v5 + 280) = a1;
  }

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t *CustomIntentContinueInAppWithDialogStrategy.deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v1 = v0[7];

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 8);
  return v0;
}

uint64_t CustomIntentContinueInAppWithDialogStrategy.__deallocating_deinit()
{
  CustomIntentContinueInAppWithDialogStrategy.deinit();

  return swift_deallocClassInstance();
}

uint64_t protocol witness for ContinueInAppHandoffToCompanionFlowStrategyAsync.makeContinueInAppHandoffResponse(intentResolutionRecord:) in conformance CustomIntentContinueInAppWithDialogStrategy(uint64_t a1, uint64_t a2)
{
  v6 = *(**v2 + 112);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = protocol witness for RouteConfirmIntentResponseFlowStrategyAsync.makeFailureConfirmingIntentResponse(app:intent:intentResponse:) in conformance CustomIntentRCHFlowStrategy;

  return v10(a1, a2);
}

unint64_t lazy protocol witness table accessor for type CustomIntentContinueInAppWithDialogStrategy and conformance CustomIntentContinueInAppWithDialogStrategy()
{
  result = lazy protocol witness table cache variable for type CustomIntentContinueInAppWithDialogStrategy and conformance CustomIntentContinueInAppWithDialogStrategy;
  if (!lazy protocol witness table cache variable for type CustomIntentContinueInAppWithDialogStrategy and conformance CustomIntentContinueInAppWithDialogStrategy)
  {
    type metadata accessor for CustomIntentContinueInAppWithDialogStrategy();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CustomIntentContinueInAppWithDialogStrategy and conformance CustomIntentContinueInAppWithDialogStrategy);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_12()
{
  v2 = v0[32];
  v3 = v0[29];
  v5 = v0[25];
  v4 = v0[26];
  v6 = v0[22];
  v7 = v0[19];
}

Swift::Bool __swiftcall INIntent.isBooleanParameter(parameterName:)(Swift::String parameterName)
{
  v2 = OUTLINED_FUNCTION_0_12([v1 _codableDescription]);

  if (v2)
  {
    objc_opt_self();
    v3 = swift_dynamicCastObjCClass();
    if (v3 && (v4 = outlined bridged method (pb) of @objc INCodableObjectAttribute.typeName.getter(v3), v5))
    {
      if (v4 == 0x6E61656C6F6F42 && v5 == 0xE700000000000000)
      {
        v7 = 1;
      }

      else
      {
        v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
      }
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t INIntent.BOOLeanAttributeMetadata(parameterName:)()
{
  v1 = OUTLINED_FUNCTION_0_12([v0 _codableDescription]);

  if (v1)
  {
    objc_opt_self();
    v2 = swift_dynamicCastObjCClass();
    if (v2)
    {
      v3 = [v2 metadata];

      if (v3)
      {
        objc_opt_self();
        result = swift_dynamicCastObjCClass();
        if (result)
        {
          return result;
        }
      }
    }

    else
    {
    }
  }

  return 0;
}

id outlined bridged method (mbgnn) of @objc INCodableDescription.attribute(byKeyPath:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = String._bridgeToObjectiveC()();
  v5 = [a3 attributeByKeyPath:v4];

  return v5;
}

uint64_t outlined bridged method (pb) of @objc INCodableObjectAttribute.typeName.getter(void *a1)
{
  v1 = [a1 typeName];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

id OUTLINED_FUNCTION_0_12(void *a1)
{

  return outlined bridged method (mbgnn) of @objc INCodableDescription.attribute(byKeyPath:)(v2, v1, a1);
}

uint64_t SiriLinkViewModel.encoded()()
{
  if (one-time initialization token for encoder != -1)
  {
    OUTLINED_FUNCTION_1_16();
    swift_once();
  }

  memcpy(__dst, v0, sizeof(__dst));
  lazy protocol witness table accessor for type SiriLinkViewModel and conformance SiriLinkViewModel();
  return dispatch thunk of PropertyListEncoder.encode<A>(_:)();
}

uint64_t *SiriLinkViewModel.encoder.unsafeMutableAddressor()
{
  if (one-time initialization token for encoder != -1)
  {
    OUTLINED_FUNCTION_1_16();
    swift_once();
  }

  return &static SiriLinkViewModel.encoder;
}

uint64_t one-time initialization function for encoder(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void), uint64_t *a4)
{
  v6 = a2(0);
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  result = a3();
  *a4 = result;
  return result;
}

uint64_t *SiriLinkViewModel.decoder.unsafeMutableAddressor()
{
  if (one-time initialization token for decoder != -1)
  {
    OUTLINED_FUNCTION_13_7();
    swift_once();
  }

  return &static SiriLinkViewModel.decoder;
}

uint64_t static SiriLinkViewModel.encoder.getter(void *a1, uint64_t *a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = *a2;
}

void *static SiriLinkViewModel.decode(from:)@<X0>(void *a1@<X8>)
{
  if (one-time initialization token for decoder != -1)
  {
    OUTLINED_FUNCTION_13_7();
    swift_once();
  }

  lazy protocol witness table accessor for type SiriLinkViewModel and conformance SiriLinkViewModel();
  result = dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  if (!v1)
  {
    return memcpy(a1, __src, 0x51uLL);
  }

  return result;
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SiriLinkViewModel.base64EncodedString()()
{
  if (one-time initialization token for encoder != -1)
  {
    OUTLINED_FUNCTION_1_16();
    swift_once();
  }

  memcpy(__dst, v0, sizeof(__dst));
  lazy protocol witness table accessor for type SiriLinkViewModel and conformance SiriLinkViewModel();
  v4 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  if (!v1)
  {
    v6 = v4;
    v7 = v5;
    v8 = Data.base64EncodedString(options:)(0);
    countAndFlagsBits = v8._countAndFlagsBits;
    object = v8._object;
    outlined consume of Data._Representation(v6, v7);
  }

  v9 = countAndFlagsBits;
  v10 = object;
  result._object = v10;
  result._countAndFlagsBits = v9;
  return result;
}

uint64_t SiriLinkViewModel.asPatternParams(with:)(uint64_t a1)
{
  v3 = v2;
  v5 = one-time initialization token for encoder;

  if (v5 != -1)
  {
    OUTLINED_FUNCTION_1_16();
    swift_once();
  }

  memcpy(__dst, v1, 0x51uLL);
  lazy protocol witness table accessor for type SiriLinkViewModel and conformance SiriLinkViewModel();
  v6 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  if (v3)
  {
  }

  v9 = v6;
  v10 = v7;
  v11 = Data.base64EncodedString(options:)(0);
  outlined consume of Data._Representation(v9, v10);
  v14 = &type metadata for String;
  v13 = v11;
  outlined init with take of Any(&v13, __dst);
  swift_isUniquelyReferenced_nonNull_native();
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(__dst, 0x61645F6C65646F6DLL, 0xEA00000000006174);
  return a1;
}

uint64_t SiriLinkViewModel.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000011 && 0x8000000000231340 == a2;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000014 && 0x8000000000231360 == a2;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000019 && 0x8000000000231380 == a2;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000016 && 0x80000000002313A0 == a2;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD00000000000001BLL && 0x80000000002313C0 == a2;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0x654874706D6F7270 && a2 == 0xEC00000072656461)
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

unint64_t SiriLinkViewModel.CodingKeys.stringValue.getter(char a1)
{
  result = 0x654874706D6F7270;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000014;
      break;
    case 2:
      result = 0xD000000000000019;
      break;
    case 3:
      result = 0xD000000000000016;
      break;
    case 4:
      result = 0xD00000000000001BLL;
      break;
    case 5:
      return result;
    default:
      result = 0xD000000000000011;
      break;
  }

  return result;
}

uint64_t SiriLinkViewModel.ArchivedViewModelCodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
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

uint64_t _s18SiriLinkFlowPlugin0aB9ViewModelO32AutoShortcutAppEnabledCodingKeys33_6F048630F2575EA8BE528D40D7B34107LLOs0K3KeyAAsAGP11stringValuexSgSS_tcfCTW_0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = SiriLinkViewModel.ArchivedViewModelCodingKeys.init(stringValue:)(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance SiriLinkViewModel.ArchivedViewModelCodingKeys@<X0>(_BYTE *a1@<X8>)
{
  result = default argument 3 of INIntentResolutionResult.getDisplayHints(intent:parameter:locale:shouldIncludeOrdinalReference:)();
  *a1 = result & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SiriLinkViewModel.ArchivedViewModelCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SiriLinkViewModel.ArchivedViewModelCodingKeys and conformance SiriLinkViewModel.ArchivedViewModelCodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SiriLinkViewModel.ArchivedViewModelCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SiriLinkViewModel.ArchivedViewModelCodingKeys and conformance SiriLinkViewModel.ArchivedViewModelCodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SiriLinkViewModel.AutoShortcutAppEnabledCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SiriLinkViewModel.AutoShortcutAppEnabledCodingKeys and conformance SiriLinkViewModel.AutoShortcutAppEnabledCodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SiriLinkViewModel.AutoShortcutAppEnabledCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SiriLinkViewModel.AutoShortcutAppEnabledCodingKeys and conformance SiriLinkViewModel.AutoShortcutAppEnabledCodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SiriLinkViewModel.AutoShortcutAppEnabledWatchCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SiriLinkViewModel.AutoShortcutAppEnabledWatchCodingKeys and conformance SiriLinkViewModel.AutoShortcutAppEnabledWatchCodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SiriLinkViewModel.AutoShortcutAppEnabledWatchCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SiriLinkViewModel.AutoShortcutAppEnabledWatchCodingKeys and conformance SiriLinkViewModel.AutoShortcutAppEnabledWatchCodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SiriLinkViewModel.AutoShortcutFirstRunCodingKeys(uint64_t a1)
{
  RunCoding = lazy protocol witness table accessor for type SiriLinkViewModel.AutoShortcutFirstRunCodingKeys and conformance SiriLinkViewModel.AutoShortcutFirstRunCodingKeys();

  return CodingKey.description.getter(a1, RunCoding);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SiriLinkViewModel.AutoShortcutFirstRunCodingKeys(uint64_t a1)
{
  RunCoding = lazy protocol witness table accessor for type SiriLinkViewModel.AutoShortcutFirstRunCodingKeys and conformance SiriLinkViewModel.AutoShortcutFirstRunCodingKeys();

  return CodingKey.debugDescription.getter(a1, RunCoding);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SiriLinkViewModel.AutoShortcutFirstRunWatchCodingKeys(uint64_t a1)
{
  RunWatchCoding = lazy protocol witness table accessor for type SiriLinkViewModel.AutoShortcutFirstRunWatchCodingKeys and conformance SiriLinkViewModel.AutoShortcutFirstRunWatchCodingKeys();

  return CodingKey.description.getter(a1, RunWatchCoding);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SiriLinkViewModel.AutoShortcutFirstRunWatchCodingKeys(uint64_t a1)
{
  RunWatchCoding = lazy protocol witness table accessor for type SiriLinkViewModel.AutoShortcutFirstRunWatchCodingKeys and conformance SiriLinkViewModel.AutoShortcutFirstRunWatchCodingKeys();

  return CodingKey.debugDescription.getter(a1, RunWatchCoding);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance SiriLinkViewModel.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = SiriLinkViewModel.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance SiriLinkViewModel.CodingKeys@<X0>(_BYTE *a1@<X8>)
{
  result = variable initialization expression of WFChooseFromListPromptFlowStrategy.WINDOWSIZE();
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SiriLinkViewModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SiriLinkViewModel.CodingKeys and conformance SiriLinkViewModel.CodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SiriLinkViewModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SiriLinkViewModel.CodingKeys and conformance SiriLinkViewModel.CodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance SiriLinkViewModel.ArchivedViewModelCodingKeys()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SiriLinkViewModel.PromptHeaderCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SiriLinkViewModel.PromptHeaderCodingKeys and conformance SiriLinkViewModel.PromptHeaderCodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SiriLinkViewModel.PromptHeaderCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SiriLinkViewModel.PromptHeaderCodingKeys and conformance SiriLinkViewModel.PromptHeaderCodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t SiriLinkViewModel.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy18SiriLinkFlowPlugin0dE9ViewModelO22PromptHeaderCodingKeys33_6F048630F2575EA8BE528D40D7B34107LLOGMd, &_ss22KeyedEncodingContainerVy18SiriLinkFlowPlugin0dE9ViewModelO22PromptHeaderCodingKeys33_6F048630F2575EA8BE528D40D7B34107LLOGMR);
  v5 = OUTLINED_FUNCTION_7_1(v4);
  v81 = v6;
  v82 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v9);
  OUTLINED_FUNCTION_16_9();
  v78 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy18SiriLinkFlowPlugin0dE9ViewModelO37AutoShortcutAppEnabledWatchCodingKeys33_6F048630F2575EA8BE528D40D7B34107LLOGMd, &_ss22KeyedEncodingContainerVy18SiriLinkFlowPlugin0dE9ViewModelO37AutoShortcutAppEnabledWatchCodingKeys33_6F048630F2575EA8BE528D40D7B34107LLOGMR);
  v12 = OUTLINED_FUNCTION_7_1(v11);
  v79 = v13;
  v80 = v12;
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v16);
  OUTLINED_FUNCTION_16_9();
  v77 = v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy18SiriLinkFlowPlugin0dE9ViewModelO32AutoShortcutAppEnabledCodingKeys33_6F048630F2575EA8BE528D40D7B34107LLOGMd, &_ss22KeyedEncodingContainerVy18SiriLinkFlowPlugin0dE9ViewModelO32AutoShortcutAppEnabledCodingKeys33_6F048630F2575EA8BE528D40D7B34107LLOGMR);
  v19 = OUTLINED_FUNCTION_7_1(v18);
  v75 = v20;
  v76 = v19;
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v23);
  OUTLINED_FUNCTION_16_9();
  v74 = v24;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy18SiriLinkFlowPlugin0dE9ViewModelO35AutoShortcutFirstRunWatchCodingKeys33_6F048630F2575EA8BE528D40D7B34107LLOGMd, &_ss22KeyedEncodingContainerVy18SiriLinkFlowPlugin0dE9ViewModelO35AutoShortcutFirstRunWatchCodingKeys33_6F048630F2575EA8BE528D40D7B34107LLOGMR);
  OUTLINED_FUNCTION_7_1(v73);
  v72 = v25;
  v27 = *(v26 + 64);
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v28);
  OUTLINED_FUNCTION_16_9();
  v71 = v29;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy18SiriLinkFlowPlugin0dE9ViewModelO30AutoShortcutFirstRunCodingKeys33_6F048630F2575EA8BE528D40D7B34107LLOGMd, &_ss22KeyedEncodingContainerVy18SiriLinkFlowPlugin0dE9ViewModelO30AutoShortcutFirstRunCodingKeys33_6F048630F2575EA8BE528D40D7B34107LLOGMR);
  OUTLINED_FUNCTION_7_1(v70);
  v69[1] = v30;
  v32 = *(v31 + 64);
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v33);
  v35 = v69 - v34;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy18SiriLinkFlowPlugin0dE9ViewModelO08ArchivedhI10CodingKeys33_6F048630F2575EA8BE528D40D7B34107LLOGMd, &_ss22KeyedEncodingContainerVy18SiriLinkFlowPlugin0dE9ViewModelO08ArchivedhI10CodingKeys33_6F048630F2575EA8BE528D40D7B34107LLOGMR);
  OUTLINED_FUNCTION_7_1(v36);
  v69[0] = v37;
  v39 = *(v38 + 64);
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v40);
  v42 = v69 - v41;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy18SiriLinkFlowPlugin0dE9ViewModelO10CodingKeys33_6F048630F2575EA8BE528D40D7B34107LLOGMd, &_ss22KeyedEncodingContainerVy18SiriLinkFlowPlugin0dE9ViewModelO10CodingKeys33_6F048630F2575EA8BE528D40D7B34107LLOGMR);
  v83 = OUTLINED_FUNCTION_7_1(v43);
  v84 = v44;
  v46 = *(v45 + 64);
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v47);
  v49 = v69 - v48;
  v50 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type SiriLinkViewModel.CodingKeys and conformance SiriLinkViewModel.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v51 = *v2;
  v52 = v2[1];
  switch(*(v2 + 80))
  {
    case 1:
      v85 = 1;
      lazy protocol witness table accessor for type SiriLinkViewModel.AutoShortcutFirstRunCodingKeys and conformance SiriLinkViewModel.AutoShortcutFirstRunCodingKeys();
      v64 = v83;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      OUTLINED_FUNCTION_6_9();
      OUTLINED_FUNCTION_19_3();
      v65 = v70;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      OUTLINED_FUNCTION_14_6(&v87);
      v66(v35, v65);
      return (*(v84 + 8))(v49, v64);
    case 2:
      v85 = 2;
      lazy protocol witness table accessor for type SiriLinkViewModel.AutoShortcutFirstRunWatchCodingKeys and conformance SiriLinkViewModel.AutoShortcutFirstRunWatchCodingKeys();
      v59 = v71;
      OUTLINED_FUNCTION_10_9();
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      OUTLINED_FUNCTION_6_9();
      OUTLINED_FUNCTION_19_3();
      v60 = v73;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      OUTLINED_FUNCTION_14_6(&v88);
      v61(v59, v60);
      v62 = *(v84 + 8);
      v63 = v49;
      return v62(v63, v35);
    case 3:
      v85 = 3;
      lazy protocol witness table accessor for type SiriLinkViewModel.AutoShortcutAppEnabledCodingKeys and conformance SiriLinkViewModel.AutoShortcutAppEnabledCodingKeys();
      v56 = v74;
      OUTLINED_FUNCTION_10_9();
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      OUTLINED_FUNCTION_6_9();
      OUTLINED_FUNCTION_19_3();
      v57 = v76;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      v58 = v75;
      goto LABEL_6;
    case 4:
      v85 = 4;
      lazy protocol witness table accessor for type SiriLinkViewModel.AutoShortcutAppEnabledWatchCodingKeys and conformance SiriLinkViewModel.AutoShortcutAppEnabledWatchCodingKeys();
      v56 = v77;
      OUTLINED_FUNCTION_10_9();
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      OUTLINED_FUNCTION_6_9();
      OUTLINED_FUNCTION_19_3();
      v57 = v80;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      v58 = v79;
LABEL_6:
      v53 = *(v58 + 8);
      v54 = v56;
      goto LABEL_9;
    case 5:
      v85 = 5;
      lazy protocol witness table accessor for type SiriLinkViewModel.PromptHeaderCodingKeys and conformance SiriLinkViewModel.PromptHeaderCodingKeys();
      v68 = v78;
      OUTLINED_FUNCTION_10_9();
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v57 = v82;
      KeyedEncodingContainer.encode(_:forKey:)();
      v53 = *(v81 + 8);
      v54 = v68;
LABEL_9:
      v55 = v57;
      break;
    default:
      v85 = 0;
      lazy protocol witness table accessor for type SiriLinkViewModel.ArchivedViewModelCodingKeys and conformance SiriLinkViewModel.ArchivedViewModelCodingKeys();
      OUTLINED_FUNCTION_10_9();
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      OUTLINED_FUNCTION_6_9();
      lazy protocol witness table accessor for type ArchivedViewModel and conformance ArchivedViewModel();
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      OUTLINED_FUNCTION_14_6(&v86);
      v54 = v42;
      v55 = v36;
      break;
  }

  v53(v54, v55);
  v62 = *(v84 + 8);
  v63 = v49;
  return v62(v63, v35);
}

__n128 SiriLinkViewModel.init(from:)@<Q0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v107 = a2;
  *&v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy18SiriLinkFlowPlugin0dE9ViewModelO22PromptHeaderCodingKeys33_6F048630F2575EA8BE528D40D7B34107LLOGMd, &_ss22KeyedDecodingContainerVy18SiriLinkFlowPlugin0dE9ViewModelO22PromptHeaderCodingKeys33_6F048630F2575EA8BE528D40D7B34107LLOGMR);
  OUTLINED_FUNCTION_7_1(v112);
  v106 = v3;
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v6);
  OUTLINED_FUNCTION_16_9();
  v111 = v7;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy18SiriLinkFlowPlugin0dE9ViewModelO37AutoShortcutAppEnabledWatchCodingKeys33_6F048630F2575EA8BE528D40D7B34107LLOGMd, &_ss22KeyedDecodingContainerVy18SiriLinkFlowPlugin0dE9ViewModelO37AutoShortcutAppEnabledWatchCodingKeys33_6F048630F2575EA8BE528D40D7B34107LLOGMR);
  OUTLINED_FUNCTION_7_1(v100);
  v105 = v8;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v11);
  OUTLINED_FUNCTION_16_9();
  v110 = v12;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy18SiriLinkFlowPlugin0dE9ViewModelO32AutoShortcutAppEnabledCodingKeys33_6F048630F2575EA8BE528D40D7B34107LLOGMd, &_ss22KeyedDecodingContainerVy18SiriLinkFlowPlugin0dE9ViewModelO32AutoShortcutAppEnabledCodingKeys33_6F048630F2575EA8BE528D40D7B34107LLOGMR);
  OUTLINED_FUNCTION_7_1(v99);
  v104 = v13;
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v16);
  OUTLINED_FUNCTION_16_9();
  v109 = v17;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy18SiriLinkFlowPlugin0dE9ViewModelO35AutoShortcutFirstRunWatchCodingKeys33_6F048630F2575EA8BE528D40D7B34107LLOGMd, &_ss22KeyedDecodingContainerVy18SiriLinkFlowPlugin0dE9ViewModelO35AutoShortcutFirstRunWatchCodingKeys33_6F048630F2575EA8BE528D40D7B34107LLOGMR);
  OUTLINED_FUNCTION_7_1(v98);
  v103 = v18;
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v21);
  OUTLINED_FUNCTION_16_9();
  v108 = v22;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy18SiriLinkFlowPlugin0dE9ViewModelO30AutoShortcutFirstRunCodingKeys33_6F048630F2575EA8BE528D40D7B34107LLOGMd, &_ss22KeyedDecodingContainerVy18SiriLinkFlowPlugin0dE9ViewModelO30AutoShortcutFirstRunCodingKeys33_6F048630F2575EA8BE528D40D7B34107LLOGMR);
  OUTLINED_FUNCTION_7_1(v97);
  v102 = v23;
  v25 = *(v24 + 64);
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v26);
  v28 = v95 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy18SiriLinkFlowPlugin0dE9ViewModelO08ArchivedhI10CodingKeys33_6F048630F2575EA8BE528D40D7B34107LLOGMd, &_ss22KeyedDecodingContainerVy18SiriLinkFlowPlugin0dE9ViewModelO08ArchivedhI10CodingKeys33_6F048630F2575EA8BE528D40D7B34107LLOGMR);
  OUTLINED_FUNCTION_7_1(v29);
  v101 = v30;
  v32 = *(v31 + 64);
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v33);
  v35 = v95 - v34;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy18SiriLinkFlowPlugin0dE9ViewModelO10CodingKeys33_6F048630F2575EA8BE528D40D7B34107LLOGMd, &_ss22KeyedDecodingContainerVy18SiriLinkFlowPlugin0dE9ViewModelO10CodingKeys33_6F048630F2575EA8BE528D40D7B34107LLOGMR);
  OUTLINED_FUNCTION_7_1(v36);
  v38 = v37;
  v40 = *(v39 + 64);
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v41);
  v43 = v95 - v42;
  v44 = a1[3];
  v45 = a1[4];
  v120 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v44);
  lazy protocol witness table accessor for type SiriLinkViewModel.CodingKeys and conformance SiriLinkViewModel.CodingKeys();
  v46 = v113.n128_u64[0];
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v46)
  {
LABEL_8:
    v58 = v120;
LABEL_9:
    __swift_destroy_boxed_opaque_existential_1Tm(v58);
    return result;
  }

  v95[2] = v35;
  v95[1] = v29;
  v95[3] = v28;
  v96 = 0;
  v48 = v111;
  v47 = v112;
  v113.n128_u64[0] = v38;
  v49 = KeyedDecodingContainer.allKeys.getter();
  _ss12_SliceBufferV7_buffer19shiftedToStartIndexAByxGs016_ContiguousArrayB0VyxG_SitcfC18SiriLinkFlowPlugin0jK9ViewModelO10CodingKeys33_6F048630F2575EA8BE528D40D7B34107LLO_Tt1g5Tm(v49, 0);
  if (v52 == v53 >> 1)
  {
    goto LABEL_7;
  }

  if (v52 >= (v53 >> 1))
  {
    __break(1u);
    JUMPOUT(0x68FB4);
  }

  v54 = *(v51 + v52);
  specialized ArraySlice.subscript.getter(v52 + 1, v53 >> 1, v50, v51, v52, v53);
  v56 = v55;
  v58 = v57;
  swift_unknownObjectRelease();
  if (v56 != v58 >> 1)
  {
LABEL_7:
    v59 = type metadata accessor for DecodingError();
    swift_allocError();
    v61 = v60;
    v62 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR) + 48);
    *v61 = &type metadata for SiriLinkViewModel;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v59 - 8) + 104))(v61, enum case for DecodingError.typeMismatch(_:), v59);
    swift_willThrow();
    swift_unknownObjectRelease();
    v63 = OUTLINED_FUNCTION_2_13();
    v64(v63);
    goto LABEL_8;
  }

  switch(v54)
  {
    case 1:
      LOBYTE(v114) = 1;
      lazy protocol witness table accessor for type SiriLinkViewModel.AutoShortcutFirstRunCodingKeys and conformance SiriLinkViewModel.AutoShortcutFirstRunCodingKeys();
      OUTLINED_FUNCTION_4_13();
      lazy protocol witness table accessor for type AutoShortcutAppPhrasesViewModel and conformance AutoShortcutAppPhrasesViewModel();
      OUTLINED_FUNCTION_7_7();
      v85 = 0;
      v69 = v113.n128_u64[0];
      swift_unknownObjectRelease();
      v86 = OUTLINED_FUNCTION_5_6(&v121);
      v87(v86);
      (*(v69 + 8))(v43, v36);
      OUTLINED_FUNCTION_18_7();
      v58 = v120;
      goto LABEL_20;
    case 2:
      LOBYTE(v114) = 2;
      lazy protocol witness table accessor for type SiriLinkViewModel.AutoShortcutFirstRunWatchCodingKeys and conformance SiriLinkViewModel.AutoShortcutFirstRunWatchCodingKeys();
      OUTLINED_FUNCTION_4_13();
      OUTLINED_FUNCTION_20_5();
      lazy protocol witness table accessor for type AutoShortcutAppPhrasesViewModel and conformance AutoShortcutAppPhrasesViewModel();
      OUTLINED_FUNCTION_7_7();
      v85 = 0;
      OUTLINED_FUNCTION_24_7();
      v76 = &v122;
      goto LABEL_18;
    case 3:
      LOBYTE(v114) = 3;
      lazy protocol witness table accessor for type SiriLinkViewModel.AutoShortcutAppEnabledCodingKeys and conformance SiriLinkViewModel.AutoShortcutAppEnabledCodingKeys();
      OUTLINED_FUNCTION_4_13();
      OUTLINED_FUNCTION_20_5();
      lazy protocol witness table accessor for type AutoShortcutAppPhrasesViewModel and conformance AutoShortcutAppPhrasesViewModel();
      OUTLINED_FUNCTION_7_7();
      v85 = 0;
      OUTLINED_FUNCTION_24_7();
      v76 = &v123;
      goto LABEL_18;
    case 4:
      LOBYTE(v114) = 4;
      lazy protocol witness table accessor for type SiriLinkViewModel.AutoShortcutAppEnabledWatchCodingKeys and conformance SiriLinkViewModel.AutoShortcutAppEnabledWatchCodingKeys();
      OUTLINED_FUNCTION_4_13();
      OUTLINED_FUNCTION_20_5();
      lazy protocol witness table accessor for type AutoShortcutAppPhrasesViewModel and conformance AutoShortcutAppPhrasesViewModel();
      OUTLINED_FUNCTION_7_7();
      v85 = 0;
      OUTLINED_FUNCTION_24_7();
      v76 = &v124;
LABEL_18:
      v77 = OUTLINED_FUNCTION_5_6(v76);
      v78(v77);
      v79 = OUTLINED_FUNCTION_2_13();
      v80(v79);
      OUTLINED_FUNCTION_18_7();
      goto LABEL_20;
    case 5:
      LOBYTE(v114) = 5;
      lazy protocol witness table accessor for type SiriLinkViewModel.PromptHeaderCodingKeys and conformance SiriLinkViewModel.PromptHeaderCodingKeys();
      v66 = v96;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      OUTLINED_FUNCTION_20_5();
      if (v66)
      {
        v67 = OUTLINED_FUNCTION_2_13();
        v68(v67);
        swift_unknownObjectRelease();
        goto LABEL_9;
      }

      v85 = v48;
      v70 = v47;
      v71 = KeyedDecodingContainer.decode(_:forKey:)();
      v110 = v72;
      if (v43)
      {
        swift_unknownObjectRelease();
        OUTLINED_FUNCTION_14_6(&v125);
        v73(v48, v47);
        v74 = OUTLINED_FUNCTION_2_13();
        v75(v74);
        goto LABEL_9;
      }

      v47 = v71;
      swift_unknownObjectRelease();
      OUTLINED_FUNCTION_14_6(&v125);
      v88(v48, v70);
      v89 = OUTLINED_FUNCTION_2_13();
      v91 = v90(v89);
      v91.n128_u64[0] = v110;
      v113 = v91;
LABEL_20:
      __swift_destroy_boxed_opaque_existential_1Tm(v58);
      v92 = v107;
      *v107 = v47;
      v93 = v112;
      *(v92 + 1) = v113;
      v92[3] = v85;
      result = v118;
      v94 = v119;
      *(v92 + 2) = v93;
      *(v92 + 3) = result;
      *(v92 + 4) = v94;
      *(v92 + 80) = v54;
      break;
    default:
      LOBYTE(v114) = 0;
      lazy protocol witness table accessor for type SiriLinkViewModel.ArchivedViewModelCodingKeys and conformance SiriLinkViewModel.ArchivedViewModelCodingKeys();
      OUTLINED_FUNCTION_4_13();
      OUTLINED_FUNCTION_20_5();
      lazy protocol witness table accessor for type ArchivedViewModel and conformance ArchivedViewModel();
      OUTLINED_FUNCTION_7_7();
      OUTLINED_FUNCTION_24_7();
      v81 = OUTLINED_FUNCTION_5_6(&v120);
      v82(v81);
      v83 = OUTLINED_FUNCTION_2_13();
      v84(v83);
      v47 = v114;
      v85 = v116;
      v112 = v117;
      v113 = v115;
      goto LABEL_20;
  }

  return result;
}

void protocol witness for Decodable.init(from:) in conformance SiriLinkViewModel(uint64_t *a1@<X0>, void *a2@<X8>)
{
  SiriLinkViewModel.init(from:)(a1, __src);
  if (!v2)
  {
    memcpy(a2, __src, 0x51uLL);
  }
}

void specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = OUTLINED_FUNCTION_8_8(a1, a2, a3);
  OUTLINED_FUNCTION_3_10(v7, v8);
  if (v9)
  {
    __break(1u);
LABEL_14:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  OUTLINED_FUNCTION_23_6();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySSSo8NSBundleCGMd, &_ss17_NativeDictionaryVySSSo8NSBundleCGMR);
  if (OUTLINED_FUNCTION_11_6())
  {
    OUTLINED_FUNCTION_21_7();
    OUTLINED_FUNCTION_9_9();
    if (!v11)
    {
      goto LABEL_14;
    }

    v6 = v10;
  }

  if (v5)
  {
    v12 = *(*v4 + 56);
    v13 = *(v12 + 8 * v6);
    *(v12 + 8 * v6) = v3;
    OUTLINED_FUNCTION_22_5();
  }

  else
  {
    v16 = OUTLINED_FUNCTION_15_8();
    specialized _NativeDictionary._insert(at:key:value:)(v16, v17, v18, v19, v20);
    OUTLINED_FUNCTION_22_5();
  }
}

{
  v7 = OUTLINED_FUNCTION_8_8(a1, a2, a3);
  OUTLINED_FUNCTION_3_10(v7, v8);
  if (v9)
  {
    __break(1u);
LABEL_12:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  OUTLINED_FUNCTION_23_6();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySSSo9DMFPolicyVGMd, &_ss17_NativeDictionaryVySSSo9DMFPolicyVGMR);
  if (OUTLINED_FUNCTION_11_6())
  {
    OUTLINED_FUNCTION_21_7();
    OUTLINED_FUNCTION_9_9();
    if (!v11)
    {
      goto LABEL_12;
    }

    v6 = v10;
  }

  if (v5)
  {
    *(*(*v4 + 56) + 8 * v6) = v3;
    OUTLINED_FUNCTION_22_5();
  }

  else
  {
    v12 = OUTLINED_FUNCTION_15_8();
    specialized _NativeDictionary._insert(at:key:value:)(v12, v13, v14, v15, v16);
    OUTLINED_FUNCTION_22_5();
  }
}

_OWORD *specialized _NativeDictionary.setValue(_:forKey:isUnique:)(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  OUTLINED_FUNCTION_3_10(v9, v10);
  if (v13)
  {
    __break(1u);
LABEL_12:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v14 = v11;
  v15 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVys11AnyHashableVypGMd, &_ss17_NativeDictionaryVys11AnyHashableVypGMR);
  if (_NativeDictionary.ensureUnique(isUnique:capacity:)(a3 & 1, v8))
  {
    v16 = *v4;
    specialized __RawDictionaryStorage.find<A>(_:)(a2);
    OUTLINED_FUNCTION_9_9();
    if (!v18)
    {
      goto LABEL_12;
    }

    v14 = v17;
  }

  v19 = *v4;
  if (v15)
  {
    v20 = (*(v19 + 56) + 32 * v14);
    __swift_destroy_boxed_opaque_existential_1Tm(v20);

    return outlined init with take of Any(a1, v20);
  }

  else
  {
    outlined init with copy of AnyHashable(a2, v22);
    return specialized _NativeDictionary._insert(at:key:value:)(v14, v22, a1, v19);
  }
}

_OWORD *specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = v3;
  v10 = *v3;
  v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  OUTLINED_FUNCTION_3_10(v11, v12);
  if (v13)
  {
    __break(1u);
LABEL_14:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  OUTLINED_FUNCTION_23_6();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySSypGMd, &_ss17_NativeDictionaryVySSypGMR);
  if (OUTLINED_FUNCTION_11_6())
  {
    v14 = *v6;
    specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
    OUTLINED_FUNCTION_9_9();
    if (!v16)
    {
      goto LABEL_14;
    }

    v5 = v15;
  }

  v17 = *v6;
  if (v4)
  {
    __swift_destroy_boxed_opaque_existential_1Tm((*(v17 + 56) + 32 * v5));
    OUTLINED_FUNCTION_22_5();

    return outlined init with take of Any(v18, v19);
  }

  else
  {
    specialized _NativeDictionary._insert(at:key:value:)(v5, a2, a3, a1, v17);
    OUTLINED_FUNCTION_22_5();
  }
}

unint64_t lazy protocol witness table accessor for type SiriLinkViewModel.CodingKeys and conformance SiriLinkViewModel.CodingKeys()
{
  result = lazy protocol witness table cache variable for type SiriLinkViewModel.CodingKeys and conformance SiriLinkViewModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type SiriLinkViewModel.CodingKeys and conformance SiriLinkViewModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriLinkViewModel.CodingKeys and conformance SiriLinkViewModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SiriLinkViewModel.CodingKeys and conformance SiriLinkViewModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type SiriLinkViewModel.CodingKeys and conformance SiriLinkViewModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriLinkViewModel.CodingKeys and conformance SiriLinkViewModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SiriLinkViewModel.CodingKeys and conformance SiriLinkViewModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type SiriLinkViewModel.CodingKeys and conformance SiriLinkViewModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriLinkViewModel.CodingKeys and conformance SiriLinkViewModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SiriLinkViewModel.CodingKeys and conformance SiriLinkViewModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type SiriLinkViewModel.CodingKeys and conformance SiriLinkViewModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriLinkViewModel.CodingKeys and conformance SiriLinkViewModel.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SiriLinkViewModel.PromptHeaderCodingKeys and conformance SiriLinkViewModel.PromptHeaderCodingKeys()
{
  result = lazy protocol witness table cache variable for type SiriLinkViewModel.PromptHeaderCodingKeys and conformance SiriLinkViewModel.PromptHeaderCodingKeys;
  if (!lazy protocol witness table cache variable for type SiriLinkViewModel.PromptHeaderCodingKeys and conformance SiriLinkViewModel.PromptHeaderCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriLinkViewModel.PromptHeaderCodingKeys and conformance SiriLinkViewModel.PromptHeaderCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SiriLinkViewModel.PromptHeaderCodingKeys and conformance SiriLinkViewModel.PromptHeaderCodingKeys;
  if (!lazy protocol witness table cache variable for type SiriLinkViewModel.PromptHeaderCodingKeys and conformance SiriLinkViewModel.PromptHeaderCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriLinkViewModel.PromptHeaderCodingKeys and conformance SiriLinkViewModel.PromptHeaderCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SiriLinkViewModel.PromptHeaderCodingKeys and conformance SiriLinkViewModel.PromptHeaderCodingKeys;
  if (!lazy protocol witness table cache variable for type SiriLinkViewModel.PromptHeaderCodingKeys and conformance SiriLinkViewModel.PromptHeaderCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriLinkViewModel.PromptHeaderCodingKeys and conformance SiriLinkViewModel.PromptHeaderCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SiriLinkViewModel.PromptHeaderCodingKeys and conformance SiriLinkViewModel.PromptHeaderCodingKeys;
  if (!lazy protocol witness table cache variable for type SiriLinkViewModel.PromptHeaderCodingKeys and conformance SiriLinkViewModel.PromptHeaderCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriLinkViewModel.PromptHeaderCodingKeys and conformance SiriLinkViewModel.PromptHeaderCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SiriLinkViewModel.AutoShortcutAppEnabledWatchCodingKeys and conformance SiriLinkViewModel.AutoShortcutAppEnabledWatchCodingKeys()
{
  result = lazy protocol witness table cache variable for type SiriLinkViewModel.AutoShortcutAppEnabledWatchCodingKeys and conformance SiriLinkViewModel.AutoShortcutAppEnabledWatchCodingKeys;
  if (!lazy protocol witness table cache variable for type SiriLinkViewModel.AutoShortcutAppEnabledWatchCodingKeys and conformance SiriLinkViewModel.AutoShortcutAppEnabledWatchCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriLinkViewModel.AutoShortcutAppEnabledWatchCodingKeys and conformance SiriLinkViewModel.AutoShortcutAppEnabledWatchCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SiriLinkViewModel.AutoShortcutAppEnabledWatchCodingKeys and conformance SiriLinkViewModel.AutoShortcutAppEnabledWatchCodingKeys;
  if (!lazy protocol witness table cache variable for type SiriLinkViewModel.AutoShortcutAppEnabledWatchCodingKeys and conformance SiriLinkViewModel.AutoShortcutAppEnabledWatchCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriLinkViewModel.AutoShortcutAppEnabledWatchCodingKeys and conformance SiriLinkViewModel.AutoShortcutAppEnabledWatchCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SiriLinkViewModel.AutoShortcutAppEnabledWatchCodingKeys and conformance SiriLinkViewModel.AutoShortcutAppEnabledWatchCodingKeys;
  if (!lazy protocol witness table cache variable for type SiriLinkViewModel.AutoShortcutAppEnabledWatchCodingKeys and conformance SiriLinkViewModel.AutoShortcutAppEnabledWatchCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriLinkViewModel.AutoShortcutAppEnabledWatchCodingKeys and conformance SiriLinkViewModel.AutoShortcutAppEnabledWatchCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SiriLinkViewModel.AutoShortcutAppEnabledWatchCodingKeys and conformance SiriLinkViewModel.AutoShortcutAppEnabledWatchCodingKeys;
  if (!lazy protocol witness table cache variable for type SiriLinkViewModel.AutoShortcutAppEnabledWatchCodingKeys and conformance SiriLinkViewModel.AutoShortcutAppEnabledWatchCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriLinkViewModel.AutoShortcutAppEnabledWatchCodingKeys and conformance SiriLinkViewModel.AutoShortcutAppEnabledWatchCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AutoShortcutAppPhrasesViewModel and conformance AutoShortcutAppPhrasesViewModel()
{
  result = lazy protocol witness table cache variable for type AutoShortcutAppPhrasesViewModel and conformance AutoShortcutAppPhrasesViewModel;
  if (!lazy protocol witness table cache variable for type AutoShortcutAppPhrasesViewModel and conformance AutoShortcutAppPhrasesViewModel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutoShortcutAppPhrasesViewModel and conformance AutoShortcutAppPhrasesViewModel);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AutoShortcutAppPhrasesViewModel and conformance AutoShortcutAppPhrasesViewModel;
  if (!lazy protocol witness table cache variable for type AutoShortcutAppPhrasesViewModel and conformance AutoShortcutAppPhrasesViewModel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutoShortcutAppPhrasesViewModel and conformance AutoShortcutAppPhrasesViewModel);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SiriLinkViewModel.AutoShortcutAppEnabledCodingKeys and conformance SiriLinkViewModel.AutoShortcutAppEnabledCodingKeys()
{
  result = lazy protocol witness table cache variable for type SiriLinkViewModel.AutoShortcutAppEnabledCodingKeys and conformance SiriLinkViewModel.AutoShortcutAppEnabledCodingKeys;
  if (!lazy protocol witness table cache variable for type SiriLinkViewModel.AutoShortcutAppEnabledCodingKeys and conformance SiriLinkViewModel.AutoShortcutAppEnabledCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriLinkViewModel.AutoShortcutAppEnabledCodingKeys and conformance SiriLinkViewModel.AutoShortcutAppEnabledCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SiriLinkViewModel.AutoShortcutAppEnabledCodingKeys and conformance SiriLinkViewModel.AutoShortcutAppEnabledCodingKeys;
  if (!lazy protocol witness table cache variable for type SiriLinkViewModel.AutoShortcutAppEnabledCodingKeys and conformance SiriLinkViewModel.AutoShortcutAppEnabledCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriLinkViewModel.AutoShortcutAppEnabledCodingKeys and conformance SiriLinkViewModel.AutoShortcutAppEnabledCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SiriLinkViewModel.AutoShortcutAppEnabledCodingKeys and conformance SiriLinkViewModel.AutoShortcutAppEnabledCodingKeys;
  if (!lazy protocol witness table cache variable for type SiriLinkViewModel.AutoShortcutAppEnabledCodingKeys and conformance SiriLinkViewModel.AutoShortcutAppEnabledCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriLinkViewModel.AutoShortcutAppEnabledCodingKeys and conformance SiriLinkViewModel.AutoShortcutAppEnabledCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SiriLinkViewModel.AutoShortcutAppEnabledCodingKeys and conformance SiriLinkViewModel.AutoShortcutAppEnabledCodingKeys;
  if (!lazy protocol witness table cache variable for type SiriLinkViewModel.AutoShortcutAppEnabledCodingKeys and conformance SiriLinkViewModel.AutoShortcutAppEnabledCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriLinkViewModel.AutoShortcutAppEnabledCodingKeys and conformance SiriLinkViewModel.AutoShortcutAppEnabledCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SiriLinkViewModel.AutoShortcutFirstRunWatchCodingKeys and conformance SiriLinkViewModel.AutoShortcutFirstRunWatchCodingKeys()
{
  result = lazy protocol witness table cache variable for type SiriLinkViewModel.AutoShortcutFirstRunWatchCodingKeys and conformance SiriLinkViewModel.AutoShortcutFirstRunWatchCodingKeys;
  if (!lazy protocol witness table cache variable for type SiriLinkViewModel.AutoShortcutFirstRunWatchCodingKeys and conformance SiriLinkViewModel.AutoShortcutFirstRunWatchCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriLinkViewModel.AutoShortcutFirstRunWatchCodingKeys and conformance SiriLinkViewModel.AutoShortcutFirstRunWatchCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SiriLinkViewModel.AutoShortcutFirstRunWatchCodingKeys and conformance SiriLinkViewModel.AutoShortcutFirstRunWatchCodingKeys;
  if (!lazy protocol witness table cache variable for type SiriLinkViewModel.AutoShortcutFirstRunWatchCodingKeys and conformance SiriLinkViewModel.AutoShortcutFirstRunWatchCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriLinkViewModel.AutoShortcutFirstRunWatchCodingKeys and conformance SiriLinkViewModel.AutoShortcutFirstRunWatchCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SiriLinkViewModel.AutoShortcutFirstRunWatchCodingKeys and conformance SiriLinkViewModel.AutoShortcutFirstRunWatchCodingKeys;
  if (!lazy protocol witness table cache variable for type SiriLinkViewModel.AutoShortcutFirstRunWatchCodingKeys and conformance SiriLinkViewModel.AutoShortcutFirstRunWatchCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriLinkViewModel.AutoShortcutFirstRunWatchCodingKeys and conformance SiriLinkViewModel.AutoShortcutFirstRunWatchCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SiriLinkViewModel.AutoShortcutFirstRunWatchCodingKeys and conformance SiriLinkViewModel.AutoShortcutFirstRunWatchCodingKeys;
  if (!lazy protocol witness table cache variable for type SiriLinkViewModel.AutoShortcutFirstRunWatchCodingKeys and conformance SiriLinkViewModel.AutoShortcutFirstRunWatchCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriLinkViewModel.AutoShortcutFirstRunWatchCodingKeys and conformance SiriLinkViewModel.AutoShortcutFirstRunWatchCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SiriLinkViewModel.AutoShortcutFirstRunCodingKeys and conformance SiriLinkViewModel.AutoShortcutFirstRunCodingKeys()
{
  result = lazy protocol witness table cache variable for type SiriLinkViewModel.AutoShortcutFirstRunCodingKeys and conformance SiriLinkViewModel.AutoShortcutFirstRunCodingKeys;
  if (!lazy protocol witness table cache variable for type SiriLinkViewModel.AutoShortcutFirstRunCodingKeys and conformance SiriLinkViewModel.AutoShortcutFirstRunCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriLinkViewModel.AutoShortcutFirstRunCodingKeys and conformance SiriLinkViewModel.AutoShortcutFirstRunCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SiriLinkViewModel.AutoShortcutFirstRunCodingKeys and conformance SiriLinkViewModel.AutoShortcutFirstRunCodingKeys;
  if (!lazy protocol witness table cache variable for type SiriLinkViewModel.AutoShortcutFirstRunCodingKeys and conformance SiriLinkViewModel.AutoShortcutFirstRunCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriLinkViewModel.AutoShortcutFirstRunCodingKeys and conformance SiriLinkViewModel.AutoShortcutFirstRunCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SiriLinkViewModel.AutoShortcutFirstRunCodingKeys and conformance SiriLinkViewModel.AutoShortcutFirstRunCodingKeys;
  if (!lazy protocol witness table cache variable for type SiriLinkViewModel.AutoShortcutFirstRunCodingKeys and conformance SiriLinkViewModel.AutoShortcutFirstRunCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriLinkViewModel.AutoShortcutFirstRunCodingKeys and conformance SiriLinkViewModel.AutoShortcutFirstRunCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SiriLinkViewModel.AutoShortcutFirstRunCodingKeys and conformance SiriLinkViewModel.AutoShortcutFirstRunCodingKeys;
  if (!lazy protocol witness table cache variable for type SiriLinkViewModel.AutoShortcutFirstRunCodingKeys and conformance SiriLinkViewModel.AutoShortcutFirstRunCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriLinkViewModel.AutoShortcutFirstRunCodingKeys and conformance SiriLinkViewModel.AutoShortcutFirstRunCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SiriLinkViewModel.ArchivedViewModelCodingKeys and conformance SiriLinkViewModel.ArchivedViewModelCodingKeys()
{
  result = lazy protocol witness table cache variable for type SiriLinkViewModel.ArchivedViewModelCodingKeys and conformance SiriLinkViewModel.ArchivedViewModelCodingKeys;
  if (!lazy protocol witness table cache variable for type SiriLinkViewModel.ArchivedViewModelCodingKeys and conformance SiriLinkViewModel.ArchivedViewModelCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriLinkViewModel.ArchivedViewModelCodingKeys and conformance SiriLinkViewModel.ArchivedViewModelCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SiriLinkViewModel.ArchivedViewModelCodingKeys and conformance SiriLinkViewModel.ArchivedViewModelCodingKeys;
  if (!lazy protocol witness table cache variable for type SiriLinkViewModel.ArchivedViewModelCodingKeys and conformance SiriLinkViewModel.ArchivedViewModelCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriLinkViewModel.ArchivedViewModelCodingKeys and conformance SiriLinkViewModel.ArchivedViewModelCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SiriLinkViewModel.ArchivedViewModelCodingKeys and conformance SiriLinkViewModel.ArchivedViewModelCodingKeys;
  if (!lazy protocol witness table cache variable for type SiriLinkViewModel.ArchivedViewModelCodingKeys and conformance SiriLinkViewModel.ArchivedViewModelCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriLinkViewModel.ArchivedViewModelCodingKeys and conformance SiriLinkViewModel.ArchivedViewModelCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SiriLinkViewModel.ArchivedViewModelCodingKeys and conformance SiriLinkViewModel.ArchivedViewModelCodingKeys;
  if (!lazy protocol witness table cache variable for type SiriLinkViewModel.ArchivedViewModelCodingKeys and conformance SiriLinkViewModel.ArchivedViewModelCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriLinkViewModel.ArchivedViewModelCodingKeys and conformance SiriLinkViewModel.ArchivedViewModelCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ArchivedViewModel and conformance ArchivedViewModel()
{
  result = lazy protocol witness table cache variable for type ArchivedViewModel and conformance ArchivedViewModel;
  if (!lazy protocol witness table cache variable for type ArchivedViewModel and conformance ArchivedViewModel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ArchivedViewModel and conformance ArchivedViewModel);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ArchivedViewModel and conformance ArchivedViewModel;
  if (!lazy protocol witness table cache variable for type ArchivedViewModel and conformance ArchivedViewModel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ArchivedViewModel and conformance ArchivedViewModel);
  }

  return result;
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = specialized __RawDictionaryStorage.find<A>(_:)(a3, a4);
  OUTLINED_FUNCTION_3_10(v13, v14);
  if (v17)
  {
    __break(1u);
    goto LABEL_13;
  }

  v18 = v15;
  v19 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySS10Foundation4DataVGMd, &_ss17_NativeDictionaryVySS10Foundation4DataVGMR);
  if (!_NativeDictionary.ensureUnique(isUnique:capacity:)(a5 & 1, v12))
  {
    goto LABEL_5;
  }

  v20 = *v6;
  v21 = specialized __RawDictionaryStorage.find<A>(_:)(a3, a4);
  if ((v19 & 1) != (v22 & 1))
  {
LABEL_13:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v18 = v21;
LABEL_5:
  v23 = *v6;
  if (v19)
  {
    v24 = (*(v23 + 56) + 16 * v18);
    v25 = *v24;
    v26 = v24[1];
    *v24 = a1;
    v24[1] = a2;

    return outlined consume of Data._Representation(v25, v26);
  }

  else
  {
    specialized _NativeDictionary._insert(at:key:value:)(v18, a3, a4, a1, a2, v23);
  }
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(char a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for RFFeatureFlags.ResponseFramework();
  v7 = OUTLINED_FUNCTION_7_1(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  __chkstk_darwin(v7);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v2;
  v15 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  OUTLINED_FUNCTION_3_10(v15, v16);
  if (v19)
  {
    __break(1u);
    goto LABEL_10;
  }

  v20 = v17;
  v21 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVy10SnippetKit14RFFeatureFlagsO17ResponseFrameworkOSbGMd, &_ss17_NativeDictionaryVy10SnippetKit14RFFeatureFlagsO17ResponseFrameworkOSbGMR);
  result = OUTLINED_FUNCTION_11_6();
  if ((result & 1) == 0)
  {
    goto LABEL_5;
  }

  v23 = *v3;
  result = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  if ((v21 & 1) != (v24 & 1))
  {
LABEL_10:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v20 = result;
LABEL_5:
  v25 = *v3;
  if (v21)
  {
    *(*(v25 + 56) + v20) = a1 & 1;
  }

  else
  {
    (*(v9 + 16))(v13, a2, v6);
    return specialized _NativeDictionary._insert(at:key:value:)(v20, v13, a1 & 1, v25);
  }

  return result;
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = OUTLINED_FUNCTION_8_8(a1, a2, a3);
  OUTLINED_FUNCTION_3_10(v7, v8);
  if (v9)
  {
    __break(1u);
LABEL_14:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  OUTLINED_FUNCTION_23_6();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySSSDySSypGGMd, &_ss17_NativeDictionaryVySSSDySSypGGMR);
  if (OUTLINED_FUNCTION_11_6())
  {
    OUTLINED_FUNCTION_21_7();
    OUTLINED_FUNCTION_9_9();
    if (!v11)
    {
      goto LABEL_14;
    }

    v6 = v10;
  }

  if (v5)
  {
    v12 = *(*v4 + 56);
    v13 = *(v12 + 8 * v6);
    *(v12 + 8 * v6) = v3;
    OUTLINED_FUNCTION_22_5();
  }

  else
  {
    v16 = OUTLINED_FUNCTION_15_8();
    specialized _NativeDictionary._insert(at:key:value:)(v16, v17, v18, v19, v20);
    OUTLINED_FUNCTION_22_5();
  }
}

void specialized _NativeDictionary.setValue(_:forKey:isUnique:)(char a1, unsigned __int8 a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  OUTLINED_FUNCTION_3_10(v9, v10);
  if (v13)
  {
    __break(1u);
LABEL_12:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  v14 = v11;
  v15 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVy18SiriLinkFlowPlugin0cdE12FeatureFlagsOSbGMd, &_ss17_NativeDictionaryVy18SiriLinkFlowPlugin0cdE12FeatureFlagsOSbGMR);
  if (_NativeDictionary.ensureUnique(isUnique:capacity:)(a3 & 1, v8))
  {
    v16 = *v4;
    specialized __RawDictionaryStorage.find<A>(_:)(a2);
    OUTLINED_FUNCTION_9_9();
    if (!v18)
    {
      goto LABEL_12;
    }

    v14 = v17;
  }

  if (v15)
  {
    *(*(*v4 + 56) + v14) = a1 & 1;
    OUTLINED_FUNCTION_22_5();
  }

  else
  {
    OUTLINED_FUNCTION_22_5();

    specialized _NativeDictionary._insert(at:key:value:)(v19, v20, v21, v22);
  }
}

void _ss12_SliceBufferV7_buffer19shiftedToStartIndexAByxGs016_ContiguousArrayB0VyxG_SitcfC18SiriLinkFlowPlugin0jK9ViewModelO10CodingKeys33_6F048630F2575EA8BE528D40D7B34107LLO_Tt1g5Tm(uint64_t a1, uint64_t a2)
{
  if (__OFSUB__(0, a2))
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = *(a1 + 16);
  v3 = __OFADD__(a2, v2);
  v4 = a2 + v2;
  if (v3)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v4 < a2)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if ((v4 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_17_7();
    return;
  }

LABEL_9:
  __break(1u);
}

uint64_t getEnumTagSinglePayload for SiriLinkViewModel(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFB && *(a1 + 81))
    {
      v2 = *a1 + 250;
    }

    else
    {
      v3 = *(a1 + 80);
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

uint64_t storeEnumTagSinglePayload for SiriLinkViewModel(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 - 251;
    if (a3 >= 0xFB)
    {
      *(result + 81) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *(result + 81) = 0;
    }

    if (a2)
    {
      *(result + 80) = -a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SiriLinkViewModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFB)
  {
    if (a2 + 5 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 5) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 6;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v5 = v6 - 6;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for SiriLinkViewModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x69E7CLL);
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

_BYTE *storeEnumTagSinglePayload for SiriLinkViewModel.ArchivedViewModelCodingKeys(_BYTE *result, int a2, int a3)
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
      JUMPOUT(0x69FA8);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t specialized ArraySlice.subscript.getter(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (result < a5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if ((a6 >> 1) < result || (a6 >> 1) < a2)
  {
    goto LABEL_10;
  }

  if (a2 < a5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    return swift_unknownObjectRetain();
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t OUTLINED_FUNCTION_4_13()
{
  v2 = *(v0 - 368);

  return KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
}

__n128 OUTLINED_FUNCTION_6_9()
{
  *(v3 - 168) = v1;
  *(v3 - 160) = v2;
  result = *(v0 + 16);
  v5 = *(v0 + 32);
  *(v3 - 152) = result;
  *(v3 - 136) = v5;
  return result;
}

uint64_t OUTLINED_FUNCTION_7_7()
{
  v2 = *(v0 - 256);

  return KeyedDecodingContainer.decode<A>(_:forKey:)();
}

unint64_t OUTLINED_FUNCTION_8_8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v3;

  return specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
}

BOOL OUTLINED_FUNCTION_11_6()
{

  return _NativeDictionary.ensureUnique(isUnique:capacity:)(v1 & 1, v0);
}

__n128 OUTLINED_FUNCTION_18_7()
{
  v1 = *(v0 - 208);
  v2 = *(v0 - 200);
  v3 = *(v0 - 184);
  result = *(v0 - 160);
  *(v0 - 240) = *(v0 - 176);
  *(v0 - 224) = v2;
  v5 = *(v0 - 144);
  *(v0 - 128) = result;
  *(v0 - 112) = v5;
  return result;
}

unint64_t OUTLINED_FUNCTION_19_3()
{
  v3 = *(v0 + 64);
  *(v1 - 120) = *(v0 + 48);
  *(v1 - 104) = v3;

  return lazy protocol witness table accessor for type AutoShortcutAppPhrasesViewModel and conformance AutoShortcutAppPhrasesViewModel();
}

unint64_t OUTLINED_FUNCTION_21_7()
{
  v4 = *v2;

  return specialized __RawDictionaryStorage.find<A>(_:)(v1, v0);
}

uint64_t OUTLINED_FUNCTION_24_7()
{

  return swift_unknownObjectRelease();
}

Swift::String_optional __swiftcall SiriWorkflowRunnerInput.getShortcutName()()
{
  if (*(v0 + 64) == 3)
  {
    v1 = *(v0 + 16);
    v0 += 8;
  }

  else
  {
    if (*(v0 + 64))
    {
      v2 = 0;
      v1 = 0;
      goto LABEL_7;
    }

    v1 = *(v0 + 8);
  }

  v2 = *v0;

LABEL_7:
  v3 = v2;
  v4 = v1;
  result.value._object = v4;
  result.value._countAndFlagsBits = v3;
  return result;
}

id @nonobjc WFSiriWorkflowRunnerClient.delegate.getter()
{
  v1 = [v0 delegate];

  return v1;
}

uint64_t @nonobjc WFSiriWorkflowRunnerClient.delegate.setter(uint64_t a1)
{
  [v1 setDelegate:a1];

  return swift_unknownObjectRelease();
}

uint64_t (*protocol witness for SiriRunnerClient.delegate.modify in conformance WFSiriWorkflowRunnerClient(void *a1))(uint64_t a1)
{
  v3 = *v1;
  a1[1] = *v1;
  *a1 = [v3 delegate];
  return protocol witness for SiriRunnerClient.delegate.modify in conformance WFSiriWorkflowRunnerClient;
}

uint64_t protocol witness for SiriRunnerClient.delegate.modify in conformance WFSiriWorkflowRunnerClient(uint64_t a1)
{
  [*(a1 + 8) setDelegate:*a1];

  return swift_unknownObjectRelease();
}

id @nonobjc WFSiriWorkflowRunnerClient.siriExecutionMetrics.getter()
{
  v1 = [v0 siriExecutionMetrics];

  return v1;
}

void @nonobjc WFSiriWorkflowRunnerClient.siriExecutionMetrics.setter(void *a1)
{
  [v1 setSiriExecutionMetrics:a1];
}

void (*protocol witness for SiriRunnerClient.siriExecutionMetrics.modify in conformance WFSiriWorkflowRunnerClient(void *a1))(id *a1)
{
  v3 = *v1;
  a1[1] = *v1;
  *a1 = [v3 siriExecutionMetrics];
  return protocol witness for SiriRunnerClient.siriExecutionMetrics.modify in conformance WFSiriWorkflowRunnerClient;
}

void protocol witness for SiriRunnerClient.siriExecutionMetrics.modify in conformance WFSiriWorkflowRunnerClient(id *a1)
{
  v1 = *a1;
  [a1[1] setSiriExecutionMetrics:?];
}

id @nonobjc WFSiriWorkflowRunnerClient.pauseRunningShortcut()()
{
  v1 = [v0 pauseRunningShortcut];

  return v1;
}

id SiriWorkflowRunnerInput.toWFSiriWorkflowRunnerClient(deviceState:aceServiceInvoker:dialogState:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = *v3;
  v5 = *(v3 + 8);
  v7 = *(v3 + 16);
  v8 = *(v3 + 24);
  v9 = *(v3 + 32);
  v10 = *(v3 + 40);
  v11 = *(v3 + 48);
  v12 = *(v3 + 56);
  switch(*(v3 + 64))
  {
    case 1:
      v108 = *(v3 + 48);
      v83 = one-time initialization token for voiceCommands;
      v106 = v9;
      v105 = v10;

      if (v83 != -1)
      {
        OUTLINED_FUNCTION_0();
      }

      v110 = a1;
      v84 = type metadata accessor for Logger();
      __swift_project_value_buffer(v84, static Logger.voiceCommands);

      v85 = Logger.logObject.getter();
      v86 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v85, v86))
      {
        v87 = swift_slowAlloc();
        v111[0] = swift_slowAlloc();
        *v87 = 136315394;
        v88 = OUTLINED_FUNCTION_2_14();
        *(v87 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v88, v89, v90);
        *(v87 + 12) = 2080;
        *(v87 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v8, v111);
        _os_log_impl(&dword_0, v85, v86, "#SiriWorkflowRunner creating async stream for app shortcut with actionIdentifier: %s and bundleId: %s", v87, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_15_0();
        OUTLINED_FUNCTION_15_0();
      }

      v91 = objc_allocWithZone(LNFullyQualifiedActionIdentifier);

      OUTLINED_FUNCTION_2_14();
      v92 = @nonobjc LNFullyQualifiedActionIdentifier.init(actionIdentifier:bundleIdentifier:)();

      v93 = Logger.logObject.getter();
      v94 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v93, v94))
      {
        v95 = OUTLINED_FUNCTION_48();
        v96 = swift_slowAlloc();
        v111[1] = v12;
        v112 = v96;
        *v95 = 136315138;
        v97 = v108;
        v111[0] = v108;

        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
        v98 = String.init<A>(describing:)();
        v100 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v98, v99, &v112);

        *(v95 + 4) = v100;
        _os_log_impl(&dword_0, v93, v94, "#SiriWorkflowRunner runAppShortcut with phrase: %s", v95, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v96);
        OUTLINED_FUNCTION_15_0();
        OUTLINED_FUNCTION_15_0();
      }

      else
      {

        v97 = v108;
      }

      v101 = v110[3];
      v102 = v110[4];
      OUTLINED_FUNCTION_3_11(v110);
      v103 = DeviceState.asWFSiriRunSource()();
      v104 = objc_allocWithZone(WFSiriWorkflowRunnerClient);
      v60 = v92;
      v61 = v97;
      v62 = v12;
      v63 = v103;
      v65 = v105;
      v64 = v106;
      goto LABEL_25;
    case 2:
      v35 = one-time initialization token for voiceCommands;
      v36 = *(v3 + 8);
      v37 = *(v3 + 48);

      v38 = v37;
      v39 = v12;
      if (v35 != -1)
      {
        OUTLINED_FUNCTION_0();
      }

      v109 = a1;
      v40 = type metadata accessor for Logger();
      __swift_project_value_buffer(v40, static Logger.voiceCommands);

      v41 = v39;
      v42 = Logger.logObject.getter();
      v43 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v42, v43))
      {
        v107 = v38;
        v44 = swift_slowAlloc();
        v111[0] = swift_slowAlloc();
        *v44 = 136315394;
        v45 = [v41 identifier];
        v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v48 = v47;

        v49 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v46, v48, v111);

        *(v44 + 4) = v49;
        *(v44 + 12) = 2080;
        v50 = OUTLINED_FUNCTION_2_14();
        *(v44 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v50, v51, v52);
        _os_log_impl(&dword_0, v42, v43, "#WorkflowRunnerFlow initialized with app shortcut (generalized) action: %s, bundleId: %s", v44, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_15_0();
        v38 = v107;
        OUTLINED_FUNCTION_15_0();
      }

      v53 = [v41 identifier];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v54 = objc_allocWithZone(LNFullyQualifiedActionIdentifier);
      v55 = @nonobjc LNFullyQualifiedActionIdentifier.init(actionIdentifier:bundleIdentifier:)();
      v56 = v109[3];
      v57 = v109[4];
      OUTLINED_FUNCTION_3_11(v109);
      v58 = DeviceState.asWFSiriRunSource()();
      v59 = objc_allocWithZone(WFSiriWorkflowRunnerClient);
      v60 = v55;
      v61 = 0;
      v62 = 0;
      v63 = v58;
      v64 = v41;
      v65 = v38;
LABEL_25:
      result = @nonobjc WFSiriWorkflowRunnerClient.init(autoShortcutIdentifier:phrase:runSource:action:metadata:)(v60, v61, v62, v63, v64, v65);
      break;
    case 3:
      v66 = one-time initialization token for voiceCommands;
      v67 = v6;
      if (v66 != -1)
      {
        OUTLINED_FUNCTION_0();
      }

      v68 = type metadata accessor for Logger();
      __swift_project_value_buffer(v68, static Logger.voiceCommands);
      v69 = v67;
      v70 = Logger.logObject.getter();
      v71 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v70, v71))
      {
        v72 = OUTLINED_FUNCTION_48();
        v73 = a1;
        v74 = swift_slowAlloc();
        *v72 = 138412290;
        *(v72 + 4) = v69;
        *v74 = v6;
        v75 = v69;
        OUTLINED_FUNCTION_5_7(&dword_0, v76, v77, "#SiriWorkflowRunner creating async stream for pausedShortcut: %@");
        outlined destroy of NSObject?(v74);
        a1 = v73;
        OUTLINED_FUNCTION_15_0();
        OUTLINED_FUNCTION_15_0();
      }

      v78 = OUTLINED_FUNCTION_4_14();
      type metadata accessor for WFSiriWorkflowRunnerClient();
      v79 = a1;
      v80 = a1[3];
      v81 = a1[4];
      OUTLINED_FUNCTION_3_11(v79);
      v82 = DeviceState.asWFSiriRunSource()();
      result = WFSiriWorkflowRunnerClient.__allocating_init(pausedShortcutData:runSource:options:)(v69, v82, v78);
      break;
    default:
      v14 = *(*a3 + 216);

      v15 = OUTLINED_FUNCTION_2_14();
      v14(v15);
      if (one-time initialization token for voiceCommands != -1)
      {
        OUTLINED_FUNCTION_0();
      }

      v16 = type metadata accessor for Logger();
      __swift_project_value_buffer(v16, static Logger.voiceCommands);

      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.debug.getter();
      outlined destroy of SiriWorkflowRunnerInput(v4);
      if (os_log_type_enabled(v17, v18))
      {
        v19 = OUTLINED_FUNCTION_48();
        v20 = a1;
        v21 = swift_slowAlloc();
        v111[0] = v21;
        *v19 = 136315138;
        v22 = OUTLINED_FUNCTION_2_14();
        *(v19 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v23, v24);
        OUTLINED_FUNCTION_5_7(&dword_0, v25, v26, "#SiriWorkflowRunner creating async stream for shortcut: %s");
        __swift_destroy_boxed_opaque_existential_1Tm(v21);
        a1 = v20;
        OUTLINED_FUNCTION_15_0();
        OUTLINED_FUNCTION_15_0();
      }

      v27 = OUTLINED_FUNCTION_4_14();
      v28 = a1[3];
      v29 = a1[4];
      OUTLINED_FUNCTION_3_11(a1);
      v30 = DeviceState.asWFSiriRunSource()();
      v31 = objc_allocWithZone(WFSiriWorkflowRunnerClient);
      v32 = OUTLINED_FUNCTION_2_14();
      result = @nonobjc WFSiriWorkflowRunnerClient.init(workflowName:runSource:options:)(v32, v33, v30, v27);
      break;
  }

  return result;
}

id AceServiceInvokerAsync.toWFSiriWorkflowRunnerClientOption(deviceState:)(void *a1)
{
  v1 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if ((dispatch thunk of DeviceState.isHomePod.getter() & 1) == 0)
  {
    goto LABEL_13;
  }

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
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_0, v3, v4, "#SiriWorkflowRunner the request is happening on homepod", v5, 2u);
    OUTLINED_FUNCTION_15_0();
  }

  OUTLINED_FUNCTION_6_10();
  __swift_project_boxed_opaque_existential_1(v32, v33);
  v6 = dispatch thunk of PeerInfoProviding.getMediaRouteIdentifier()();
  if (!v7)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v32);
LABEL_13:
    v15 = &_swiftEmptyArrayStorage;
    goto LABEL_14;
  }

  v8 = v6;
  v9 = v7;
  __swift_destroy_boxed_opaque_existential_1Tm(v32);

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = OUTLINED_FUNCTION_48();
    v13 = swift_slowAlloc();
    v32[0] = v13;
    *v12 = 136315138;
    *(v12 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, v32);
    _os_log_impl(&dword_0, v10, v11, "#SiriWorkflowRunner got airplayRouteId: %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
    OUTLINED_FUNCTION_15_0();
    OUTLINED_FUNCTION_15_0();
  }

  specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  v15 = v14;
  v16 = v14[2];
  if (v16 >= v14[3] >> 1)
  {
    specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    v15 = v31;
  }

  v15[2] = v16 + 1;
  v17 = &v15[2 * v16];
  *(v17 + 4) = v8;
  *(v17 + 5) = v9;
LABEL_14:
  OUTLINED_FUNCTION_6_10();
  __swift_project_boxed_opaque_existential_1(v32, v33);
  v18 = dispatch thunk of PeerInfoProviding.getIdsIdentifier()();
  v20 = v19;
  __swift_project_boxed_opaque_existential_1(v32, v33);
  v21 = dispatch thunk of PeerInfoProviding.getRapportEffectiveIdentifier()();
  v23 = v22;
  __swift_project_boxed_opaque_existential_1(v32, v33);
  v24 = dispatch thunk of PeerInfoProviding.getMediaSystemIdentifier()();
  v26 = v25;
  __swift_project_boxed_opaque_existential_1(v32, v33);
  v27 = dispatch thunk of PeerInfoProviding.isOwnedByCurrentUser()();
  v28 = objc_allocWithZone(WFSiriWorkflowRunnerClientOptions);
  v29 = @nonobjc WFSiriWorkflowRunnerClientOptions.init(airPlayRouteIDs:executionContext:originatingDeviceIDSIdentifier:originatingDeviceRapportEffectiveIdentifier:originatingDeviceRapportMediaSystemIdentifier:isOwnedByCurrentUser:)(v15, 2, v18, v20, v21, v23, v24, v26, v27 & 1);
  __swift_destroy_boxed_opaque_existential_1Tm(v32);
  return v29;
}

id WFSiriWorkflowRunnerClient.__allocating_init(pausedShortcutData:runSource:options:)(void *a1, uint64_t a2, void *a3)
{
  v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithPausedShortcutData:a1 runSource:a2 options:a3];

  return v5;
}

Swift::Bool __swiftcall SiriRunnerClient.isLastStep()()
{
  v2 = v1;
  v3 = v0;
  v4 = *(v1 + 32);
  v5 = v4();
  v6 = [v5 shortcutActionCount];

  v7 = (v4)(v3, v2);
  v8 = [v7 currentShortcutStep];

  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, static Logger.voiceCommands);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *v12 = 136315394;
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, &v20);

    *(v12 + 4) = v15;
    *(v12 + 12) = 2080;
    v16 = dispatch thunk of CustomStringConvertible.description.getter();
    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, &v20);

    *(v12 + 14) = v18;
    _os_log_impl(&dword_0, v10, v11, "#SiriWorkflowRunner totalStepCount: %s, currentStepCount: %s", v12, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_15_0();
    OUTLINED_FUNCTION_15_0();
  }

  return v6 == v8;
}

unint64_t type metadata accessor for WFSiriWorkflowRunnerClient()
{
  result = lazy cache variable for type metadata for WFSiriWorkflowRunnerClient;
  if (!lazy cache variable for type metadata for WFSiriWorkflowRunnerClient)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for WFSiriWorkflowRunnerClient);
  }

  return result;
}

id @nonobjc WFSiriWorkflowRunnerClient.init(workflowName:runSource:options:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = String._bridgeToObjectiveC()();

  v8 = [v4 initWithWorkflowName:v7 runSource:a3 options:a4];

  return v8;
}

id @nonobjc LNFullyQualifiedActionIdentifier.init(actionIdentifier:bundleIdentifier:)()
{
  v1 = String._bridgeToObjectiveC()();

  v2 = String._bridgeToObjectiveC()();

  v3 = [v0 initWithActionIdentifier:v1 bundleIdentifier:v2];

  return v3;
}

id @nonobjc WFSiriWorkflowRunnerClient.init(autoShortcutIdentifier:phrase:runSource:action:metadata:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  v7 = v6;
  if (a3)
  {
    v12 = String._bridgeToObjectiveC()();
  }

  else
  {
    v12 = 0;
  }

  v13 = [v7 initWithAutoShortcutIdentifier:a1 phrase:v12 runSource:a4 action:a5 metadata:a6];

  return v13;
}

id @nonobjc WFSiriWorkflowRunnerClientOptions.init(airPlayRouteIDs:executionContext:originatingDeviceIDSIdentifier:originatingDeviceRapportEffectiveIdentifier:originatingDeviceRapportMediaSystemIdentifier:isOwnedByCurrentUser:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if (a1)
  {
    v14.super.isa = Array._bridgeToObjectiveC()().super.isa;

    if (a4)
    {
      goto LABEL_3;
    }

LABEL_6:
    v15 = 0;
    if (a6)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v14.super.isa = 0;
  if (!a4)
  {
    goto LABEL_6;
  }

LABEL_3:
  v15 = String._bridgeToObjectiveC()();

  if (a6)
  {
LABEL_4:
    v16 = String._bridgeToObjectiveC()();

    goto LABEL_8;
  }

LABEL_7:
  v16 = 0;
LABEL_8:
  if (a8)
  {
    v17 = String._bridgeToObjectiveC()();
  }

  else
  {
    v17 = 0;
  }

  v18 = [v9 initWithAirPlayRouteIDs:v14.super.isa executionContext:a2 originatingDeviceIDSIdentifier:v15 originatingDeviceRapportEffectiveIdentifier:v16 originatingDeviceRapportMediaSystemIdentifier:v17 isOwnedByCurrentUser:a9 & 1];

  return v18;
}

uint64_t getEnumTagSinglePayload for SiriWorkflowRunnerInput(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFD && *(a1 + 65))
    {
      v2 = *a1 + 252;
    }

    else
    {
      v3 = *(a1 + 64);
      if (v3 <= 3)
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

uint64_t storeEnumTagSinglePayload for SiriWorkflowRunnerInput(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 65) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 65) = 0;
    }

    if (a2)
    {
      *(result + 64) = -a2;
    }
  }

  return result;
}

id OUTLINED_FUNCTION_4_14()
{
  v2 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);

  return AceServiceInvokerAsync.toWFSiriWorkflowRunnerClientOption(deviceState:)(v0);
}

void OUTLINED_FUNCTION_5_7(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_6_10()
{

  return dispatch thunk of AceServiceInvokerAsync.peerInfo()();
}

__n128 ActionConfirmationVisual.init(appBundleId:confirmButton:noButton:destructive:prompt:viewData:deviceState:)@<Q0>(unint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X4>, unint64_t a6@<X5>, unsigned __int8 a7@<W6>, unint64_t a8@<X7>, __n128 *a9@<X8>, __n128 a10, unint64_t a11, uint64_t *a12)
{
  type metadata accessor for App();

  App.__allocating_init(appIdentifier:)();
  v17 = specialized App.toAppDisplayName(_:appInfoResolving:isFirstParty:)(a12, 2);
  v19 = v18;

  __swift_destroy_boxed_opaque_existential_1Tm(a12);
  a9->n128_u64[0] = a1;
  a9->n128_u64[1] = a2;
  a9[1].n128_u64[0] = v17;
  a9[1].n128_u64[1] = v19;
  a9[2].n128_u64[0] = a3;
  a9[2].n128_u64[1] = a4;
  a9[3].n128_u64[0] = a5;
  a9[3].n128_u64[1] = a6;
  a9[4].n128_u8[0] = a7;
  a9[4].n128_u64[1] = a8;
  result = a10;
  a9[5] = a10;
  a9[6].n128_u64[0] = a11;
  return result;
}

uint64_t ActionConfirmationVisual.response.getter()
{
  OUTLINED_FUNCTION_8_0();
  v1[68] = v0;
  v1[67] = v2;
  v3 = type metadata accessor for BinaryButton();
  v1[69] = v3;
  OUTLINED_FUNCTION_5_0(v3);
  v1[70] = v4;
  v6 = *(v5 + 64);
  v1[71] = OUTLINED_FUNCTION_28();
  v7 = type metadata accessor for Button.LabelStyle();
  v1[72] = v7;
  OUTLINED_FUNCTION_5_0(v7);
  v1[73] = v8;
  v10 = *(v9 + 64);
  v1[74] = OUTLINED_FUNCTION_28();
  v11 = type metadata accessor for _ProtoButton.FormAction();
  v1[75] = v11;
  OUTLINED_FUNCTION_5_0(v11);
  v1[76] = v12;
  v14 = *(v13 + 64);
  v1[77] = OUTLINED_FUNCTION_28();
  v15 = type metadata accessor for ButtonRole();
  v1[78] = v15;
  OUTLINED_FUNCTION_5_0(v15);
  v1[79] = v16;
  v18 = *(v17 + 64);
  v1[80] = OUTLINED_FUNCTION_27();
  v1[81] = swift_task_alloc();
  v19 = type metadata accessor for Button();
  v1[82] = v19;
  OUTLINED_FUNCTION_5_0(v19);
  v1[83] = v20;
  v22 = *(v21 + 64);
  v1[84] = OUTLINED_FUNCTION_27();
  v1[85] = swift_task_alloc();
  v1[86] = swift_task_alloc();
  v1[87] = swift_task_alloc();
  v23 = type metadata accessor for Command();
  v1[88] = v23;
  OUTLINED_FUNCTION_5_0(v23);
  v1[89] = v24;
  v26 = *(v25 + 64);
  v1[90] = OUTLINED_FUNCTION_27();
  v1[91] = swift_task_alloc();
  v27 = type metadata accessor for SeparatorStyle();
  v1[92] = v27;
  OUTLINED_FUNCTION_5_0(v27);
  v1[93] = v28;
  v30 = *(v29 + 64);
  v1[94] = OUTLINED_FUNCTION_27();
  v1[95] = swift_task_alloc();
  v31 = *(*(type metadata accessor for Separators() - 8) + 64);
  v1[96] = OUTLINED_FUNCTION_28();
  v32 = type metadata accessor for ComponentWrapper();
  v1[97] = v32;
  OUTLINED_FUNCTION_5_0(v32);
  v1[98] = v33;
  v35 = *(v34 + 64);
  v1[99] = OUTLINED_FUNCTION_27();
  v1[100] = swift_task_alloc();
  v1[101] = swift_task_alloc();
  v1[102] = swift_task_alloc();
  v36 = type metadata accessor for CustomCanvas();
  v1[103] = v36;
  OUTLINED_FUNCTION_5_0(v36);
  v1[104] = v37;
  v39 = *(v38 + 64);
  v1[105] = OUTLINED_FUNCTION_27();
  v1[106] = swift_task_alloc();
  v1[107] = swift_task_alloc();

  return _swift_task_switch(ActionConfirmationVisual.response.getter, 0, 0);
}

{
  v1 = *(v0 + 544);
  v2 = v1[10];
  if (v2)
  {
    v3 = v1[9];
    v4 = one-time initialization token for encoder;
    v5 = v1[10];

    if (v4 != -1)
    {
      OUTLINED_FUNCTION_1_17();
    }

    *(v0 + 104) = v3;
    *(v0 + 112) = v2;
    *(v0 + 184) = 5;
    lazy protocol witness table accessor for type SiriLinkViewModel and conformance SiriLinkViewModel();
    dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    v7 = *(v0 + 856);
    v8 = *(v0 + 832);
    v9 = *(v0 + 824);
    v148 = *(v0 + 808);
    v10 = *(v0 + 784);
    v140 = *(v0 + 816);
    v145 = *(v0 + 776);
    v137 = *(v0 + 768);
    v11 = *(v0 + 760);
    v12 = *(v0 + 752);
    v13 = *(v0 + 744);
    v14 = *(v0 + 736);
    OUTLINED_FUNCTION_4_15();
    OUTLINED_FUNCTION_8_9();
    CustomCanvas.init(bundleName:viewId:viewData:componentName:safeForLogging:requestsKeyWindow:hideConversationKeyline:)();
    *(v0 + 416) = v9;
    *(v0 + 424) = &protocol witness table for CustomCanvas;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 392));
    (*(v8 + 16))(boxed_opaque_existential_1, v7, v9);
    v16 = *(v13 + 104);
    v16(v11, enum case for SeparatorStyle.edgeToEdge(_:), v14);
    v16(v12, enum case for SeparatorStyle.standard(_:), v14);
    Separators.init(top:bottom:)();
    v17 = v140;
    ComponentWrapper.init(_:separators:)();
    v141 = *(v10 + 16);
    v141(v148, v17, v145);
    specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    v20 = *(v18 + 16);
    v19 = *(v18 + 24);
    if (v20 >= v19 >> 1)
    {
      OUTLINED_FUNCTION_2_15(v19);
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    v21 = *(v0 + 856);
    v22 = *(v0 + 832);
    v23 = *(v0 + 824);
    v24 = *(v0 + 816);
    v25 = *(v0 + 808);
    v26 = *(v0 + 784);
    v27 = *(v0 + 776);

    v28 = *(v26 + 8);
    v28(v24, v27);
    (*(v22 + 8))(v21, v23);
    *(v0 + 456) = v27;
    *(v0 + 464) = &protocol witness table for ComponentWrapper;
    v29 = __swift_allocate_boxed_opaque_existential_1((v0 + 432));
    v141(v29, v25, v27);
    OUTLINED_FUNCTION_10_10();
    v32 = v31 + v20 * v30;
    v6 = v31;
    outlined init with take of AceServiceInvokerAsync((v0 + 432), (v32 + 32));
    v28(v25, v27);
    v1 = *(v0 + 544);
  }

  else
  {
    v6 = _swiftEmptyArrayStorage;
  }

  *(v0 + 472) = *(v1 + 11);
  v33 = *(v0 + 480);
  if (v33 >> 60 == 15)
  {
    v149 = v6;
  }

  else
  {
    v34 = *(v0 + 472);
    v35 = *v1;
    v36 = v1[1];
    v37 = v1[2];
    v38 = v1[3];
    outlined init with copy of Data?(v0 + 472, v0 + 520);
    v39 = one-time initialization token for encoder;

    if (v39 != -1)
    {
      OUTLINED_FUNCTION_1_17();
    }

    *(v0 + 16) = v34;
    *(v0 + 24) = v33;
    *(v0 + 32) = v35;
    *(v0 + 40) = v36;
    *(v0 + 48) = v37;
    *(v0 + 56) = v38;
    *(v0 + 96) = 0;
    lazy protocol witness table accessor for type SiriLinkViewModel and conformance SiriLinkViewModel();
    dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    v40 = *(v0 + 848);
    v41 = *(v0 + 840);
    v42 = *(v0 + 832);
    v43 = *(v0 + 824);
    OUTLINED_FUNCTION_4_15();
    OUTLINED_FUNCTION_8_9();
    CustomCanvas.init(bundleName:viewId:viewData:componentName:safeForLogging:requestsKeyWindow:hideConversationKeyline:)();
    v142 = *(v42 + 16);
    v142(v41, v40, v43);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v87 = v6[2];
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v6 = v88;
    }

    v45 = v6[2];
    v44 = v6[3];
    if (v45 >= v44 >> 1)
    {
      OUTLINED_FUNCTION_2_15(v44);
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v149 = v89;
    }

    else
    {
      v149 = v6;
    }

    v46 = *(v0 + 848);
    v47 = *(v0 + 840);
    v48 = *(v0 + 832);
    v49 = *(v0 + 824);
    outlined consume of Data._Representation(v34, v33);

    v50 = *(v48 + 8);
    v50(v46, v49);
    *(v0 + 376) = v49;
    *(v0 + 384) = &protocol witness table for CustomCanvas;
    v51 = __swift_allocate_boxed_opaque_existential_1((v0 + 352));
    v142(v51, v47, v49);
    OUTLINED_FUNCTION_10_10();
    outlined init with take of AceServiceInvokerAsync((v0 + 352), v53 + v45 * v52 + 32);
    v50(v47, v49);
    v1 = *(v0 + 544);
  }

  v129 = *(v0 + 800);
  v133 = *(v0 + 792);
  v109 = *(v0 + 784);
  v131 = *(v0 + 776);
  v127 = *(v0 + 768);
  v54 = *(v0 + 728);
  v105 = *(v0 + 720);
  v55 = *(v0 + 712);
  v56 = *(v0 + 704);
  v135 = *(v0 + 696);
  v123 = *(v0 + 672);
  v111 = *(v0 + 688);
  v113 = *(v0 + 664);
  v117 = *(v0 + 656);
  v119 = *(v0 + 680);
  v94 = *(v0 + 648);
  v107 = *(v0 + 640);
  v138 = *(v0 + 632);
  v57 = *(v0 + 624);
  v99 = *(v0 + 616);
  v143 = *(v0 + 608);
  v92 = *(v0 + 600);
  v102 = *(v0 + 592);
  v146 = *(v0 + 584);
  v101 = *(v0 + 576);
  v115 = *(v0 + 568);
  v125 = *(v0 + 560);
  v121 = *(v0 + 552);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys11AnyHashableV_yptGMd, &_ss23_ContiguousArrayStorageCys11AnyHashableV_yptGMR);
  v58 = swift_allocObject();
  OUTLINED_FUNCTION_6_3(v58, xmmword_216850);
  *(v0 + 488) = v59;
  *(v0 + 496) = 0xEC0000006E6F6974;
  AnyHashable.init<A>(_:)();
  v58[6].n128_u64[0] = &type metadata for String;
  v58[4].n128_u64[1] = 7562617;
  v58[5].n128_u64[0] = 0xE300000000000000;
  Dictionary.init(dictionaryLiteral:)();
  static Command.directInvocation(identifier:payload:isNavigation:)();

  *(v0 + 216) = v56;
  *(v0 + 224) = &protocol witness table for Command;
  v60 = __swift_allocate_boxed_opaque_existential_1((v0 + 192));
  v95 = *(v55 + 16);
  v95(v60, v54, v56);
  v151 = v1[4];
  v153 = v1[5];
  v96 = *(v138 + 104);
  v61 = &enum case for ButtonRole.preferredAndDestructive(_:);
  if ((v1[8] & 1) == 0)
  {
    v61 = &enum case for ButtonRole.preferred(_:);
  }

  (*(v138 + 104))(v94, *v61, v57);
  v91 = enum case for _ProtoButton.FormAction.none(_:);
  v93 = *(v143 + 104);
  v93(v99);
  v62 = enum case for Button.LabelStyle.automatic(_:);
  v90 = *(v146 + 104);
  v90(v102, enum case for Button.LabelStyle.automatic(_:), v101);

  OUTLINED_FUNCTION_8_9();
  Button.init(action:label:thumbnail:formAction:labelStyle:buttonRole:componentName:linkIdentifier:)();
  v63 = swift_allocObject();
  OUTLINED_FUNCTION_6_3(v63, xmmword_216850);
  *(v0 + 504) = v64;
  *(v0 + 512) = 0xEC0000006E6F6974;
  AnyHashable.init<A>(_:)();
  v63[6].n128_u64[0] = &type metadata for String;
  v63[4].n128_u64[1] = 28526;
  v63[5].n128_u64[0] = 0xE200000000000000;
  Dictionary.init(dictionaryLiteral:)();
  static Command.directInvocation(identifier:payload:isNavigation:)();

  *(v0 + 256) = v56;
  *(v0 + 264) = &protocol witness table for Command;
  v65 = __swift_allocate_boxed_opaque_existential_1((v0 + 232));
  v95(v65, v105, v56);
  v152 = v1[6];
  v154 = v1[7];
  (v93)(v99, v91, v92);
  v90(v102, v62, v101);
  v96(v107, enum case for ButtonRole.standard(_:), v57);

  OUTLINED_FUNCTION_8_9();
  Button.init(action:label:thumbnail:formAction:labelStyle:buttonRole:componentName:linkIdentifier:)();
  v66 = *(v113 + 16);
  v66(v119, v135, v117);
  v66(v123, v111, v117);
  BinaryButton.init(primaryButton:secondaryButton:componentName:linkIdentifier:)();
  *(v0 + 296) = v121;
  *(v0 + 304) = &protocol witness table for BinaryButton;
  v67 = __swift_allocate_boxed_opaque_existential_1((v0 + 272));
  (*(v125 + 16))(v67, v115, v121);
  static Separators.none.getter();
  ComponentWrapper.init(_:separators:)();
  v110 = *(v109 + 16);
  v110(v133, v129, v131);
  v68 = v149;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v84 = v149[2];
    specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    v68 = v85;
  }

  v70 = v68[2];
  v69 = v68[3];
  if (v70 >= v69 >> 1)
  {
    OUTLINED_FUNCTION_2_15(v69);
    specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    v150 = v86;
  }

  else
  {
    v150 = v68;
  }

  v112 = *(v0 + 856);
  v114 = *(v0 + 848);
  v116 = *(v0 + 840);
  v118 = *(v0 + 816);
  v100 = *(v0 + 800);
  v71 = *(v0 + 792);
  v72 = *(v0 + 784);
  v73 = *(v0 + 776);
  v120 = *(v0 + 808);
  v122 = *(v0 + 768);
  v124 = *(v0 + 760);
  v126 = *(v0 + 752);
  v104 = *(v0 + 720);
  v74 = *(v0 + 712);
  v103 = *(v0 + 704);
  v106 = *(v0 + 696);
  v108 = *(v0 + 728);
  v144 = *(v0 + 688);
  v128 = *(v0 + 680);
  v130 = *(v0 + 672);
  v75 = *(v0 + 664);
  v98 = *(v0 + 656);
  v132 = *(v0 + 648);
  v134 = *(v0 + 640);
  v136 = *(v0 + 616);
  v139 = *(v0 + 592);
  v147 = *(v0 + 568);
  v76 = *(v0 + 560);
  v97 = *(v0 + 552);
  *(v0 + 336) = v73;
  *(v0 + 344) = &protocol witness table for ComponentWrapper;
  v77 = *(v0 + 536);
  v78 = __swift_allocate_boxed_opaque_existential_1((v0 + 312));
  v110(v78, v71, v73);
  v150[2] = v70 + 1;
  outlined init with take of AceServiceInvokerAsync((v0 + 312), &v150[5 * v70 + 4]);
  v79 = *(v72 + 8);
  v79(v71, v73);
  Response.init(_:backgrounds:ornaments:hideRedactedElements:)();
  v79(v100, v73);
  (*(v76 + 8))(v147, v97);
  v80 = *(v75 + 8);
  v80(v144, v98);
  v81 = *(v74 + 8);
  v81(v104, v103);
  v80(v106, v98);
  v81(v108, v103);

  OUTLINED_FUNCTION_6_0();

  return v82();
}

uint64_t ActionConfirmationVisual.data.getter()
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

  return ActionConfirmationVisual.response.getter();
}

uint64_t outlined init with copy of Data?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataVSg(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

uint64_t getEnumTagSinglePayload for ActionConfirmationVisual(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 104))
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

uint64_t storeEnumTagSinglePayload for ActionConfirmationVisual(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_17()
{

  return swift_once();
}

uint64_t WFChooseFromListFlow.exitValue.getter()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);
  if (v2 == 1)
  {
    v4 = *(v0 + 88);
    swift_errorRetain();
  }

  else if (v2 == 2)
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

unint64_t lazy protocol witness table accessor for type WFShowAlertFlowError and conformance WFShowAlertFlowError()
{
  result = lazy protocol witness table cache variable for type WFShowAlertFlowError and conformance WFShowAlertFlowError;
  if (!lazy protocol witness table cache variable for type WFShowAlertFlowError and conformance WFShowAlertFlowError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WFShowAlertFlowError and conformance WFShowAlertFlowError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WFShowAlertFlowError and conformance WFShowAlertFlowError;
  if (!lazy protocol witness table cache variable for type WFShowAlertFlowError and conformance WFShowAlertFlowError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WFShowAlertFlowError and conformance WFShowAlertFlowError);
  }

  return result;
}

uint64_t WFChooseFromListFlow.__allocating_init(shortcutName:request:deviceState:)(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
{
  v8 = swift_allocObject();
  WFChooseFromListFlow.init(shortcutName:request:deviceState:)(a1, a2, a3, a4);
  return v8;
}

uint64_t WFChooseFromListFlow.init(shortcutName:request:deviceState:)(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v17 - v11;
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  *(v4 + 32) = a3;
  outlined init with copy of DeviceState(a4, v4 + 40);
  *(v4 + 96) = 3;
  *(v4 + 80) = _swiftEmptyArrayStorage;
  *(v4 + 88) = 0;
  v13 = type metadata accessor for TaskPriority();
  __swift_storeEnumTagSinglePayload(v12, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = v4;
  v14[5] = a3;
  v15 = a3;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5();

  __swift_destroy_boxed_opaque_existential_1Tm(a4);
  return v4;
}

uint64_t closure #1 in WFChooseFromListFlow.init(shortcutName:request:deviceState:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return _swift_task_switch(closure #1 in WFChooseFromListFlow.init(shortcutName:request:deviceState:), 0, 0);
}

uint64_t closure #1 in WFChooseFromListFlow.init(shortcutName:request:deviceState:)()
{
  OUTLINED_FUNCTION_12_0();
  v1 = v0[3];
  v2 = [v1 items];
  type metadata accessor for NSError(0, &lazy cache variable for type metadata for WFDialogListItem, WFDialogListItem_ptr);
  v0[4] = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v0[5] = [v1 dataStore];
  v3 = swift_task_alloc();
  v0[6] = v3;
  *v3 = v0;
  v3[1] = closure #1 in WFChooseFromListFlow.init(shortcutName:request:deviceState:);
  v4 = v0[2];
  v5 = OUTLINED_FUNCTION_48_2();

  return WFChooseFromListFlow.loadDisambiguationItems(items:dataStore:)(v5, v6);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v2 = v1[6];
  v3 = v1[5];
  v4 = v1[4];
  v5 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v6 = v5;

  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_6_0();

  return v7();
}

uint64_t sub_6DAF4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t partial apply for closure #1 in WFChooseFromListFlow.init(shortcutName:request:deviceState:)()
{
  OUTLINED_FUNCTION_15_2();
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_9_2(v5);
  *v6 = v7;
  v8 = OUTLINED_FUNCTION_24_8(v6);

  return closure #1 in WFChooseFromListFlow.init(shortcutName:request:deviceState:)(v8, v9, v10, v11, v3);
}

uint64_t WFChooseFromListFlow.on(input:)(uint64_t a1)
{
  v2 = type metadata accessor for Input();
  v3 = OUTLINED_FUNCTION_7_1(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v3);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static Logger.voiceCommands);
  (*(v5 + 16))(v9, a1, v2);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v27 = v14;
    *v13 = 136315138;
    v15 = Input.description.getter();
    v17 = v16;
    v18 = *(v5 + 8);
    v19 = OUTLINED_FUNCTION_48_2();
    v20(v19);
    v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v17, &v27);

    *(v13 + 4) = v21;
    _os_log_impl(&dword_0, v11, v12, "#WFChooseFromListFlow received input: %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v14);
    OUTLINED_FUNCTION_15_0();
    OUTLINED_FUNCTION_19_0();
  }

  else
  {

    v22 = *(v5 + 8);
    v23 = OUTLINED_FUNCTION_48_2();
    v24(v23);
  }

  return 0;
}

uint64_t WFChooseFromListFlow.execute()()
{
  OUTLINED_FUNCTION_8_0();
  v1[18] = v2;
  v1[19] = v0;
  v1[20] = *v0;
  v3 = *(*(type metadata accessor for CATOption() - 8) + 64) + 15;
  v1[21] = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v4, v5, v6);
}

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
    v5 = OUTLINED_FUNCTION_52();
    OUTLINED_FUNCTION_44_2(v5);
    _os_log_impl(&dword_0, v3, v4, "#WFChooseFromListFlow execute", v1, 2u);
    OUTLINED_FUNCTION_19_0();
  }

  v6 = v0[19];

  v7 = *(v6 + 32);
  if (![v7 allowsMultipleSelection])
  {
    v19 = v0[19];
    switch(*(v19 + 96))
    {
      case 1:
        v45 = Logger.logObject.getter();
        v57 = static os_log_type_t.debug.getter();
        if (!OUTLINED_FUNCTION_30_1(v57))
        {
          goto LABEL_30;
        }

        v58 = OUTLINED_FUNCTION_52();
        OUTLINED_FUNCTION_45(v58);
        v50 = "#WFChooseFromListFlow in error state";
        break;
      case 2:
        v45 = Logger.logObject.getter();
        v46 = static os_log_type_t.debug.getter();
        if (!OUTLINED_FUNCTION_30_1(v46))
        {
          goto LABEL_30;
        }

        v47 = OUTLINED_FUNCTION_52();
        OUTLINED_FUNCTION_45(v47);
        v50 = "#WFChooseFromListFlow complete";
        break;
      case 3:
        v51 = Logger.logObject.getter();
        v52 = static os_log_type_t.debug.getter();
        if (OUTLINED_FUNCTION_30_1(v52))
        {
          v53 = OUTLINED_FUNCTION_52();
          OUTLINED_FUNCTION_45(v53);
          OUTLINED_FUNCTION_26(&dword_0, v54, v55, "#WFChooseFromListFlow uninitialized");
          OUTLINED_FUNCTION_17();
        }

        v56 = v0[18];

        static ExecuteResponse.ongoing(requireInput:)();
        goto LABEL_31;
      default:
        v66 = *(v19 + 88);

        v20 = Logger.logObject.getter();
        v21 = static os_log_type_t.debug.getter();
        if (OUTLINED_FUNCTION_30_1(v21))
        {
          v22 = OUTLINED_FUNCTION_52();
          OUTLINED_FUNCTION_45(v22);
          OUTLINED_FUNCTION_26(&dword_0, v23, v24, "#WFChooseFromListFlow initialized, pushing PromptForDisambiguationFlow");
          OUTLINED_FUNCTION_17();
        }

        v25 = v0[21];
        v26 = v0[19];
        v65 = v0[18];

        v27 = v26[9];
        __swift_project_boxed_opaque_existential_1(v26 + 5, v26[8]);
        v28 = dispatch thunk of DeviceState.isWatch.getter();
        v29 = 0xD000000000000013;
        if (v28)
        {
          v29 = 0xD000000000000019;
        }

        v64 = v29;
        if (v28)
        {
          v30 = "CHFlowStrategy.swift";
        }

        else
        {
          v30 = "rCodeUnsupportedInCarPlay";
        }

        v31 = v26[3];
        v63 = v26[2];
        type metadata accessor for WFChooseFromListFlow();
        OUTLINED_FUNCTION_7_8();
        lazy protocol witness table accessor for type WFChooseFromListFlow and conformance WFChooseFromListFlow(v32, v33, v34);
        v35 = v7;

        v36 = SiriEnvironmentLocating<>.siriEnvironment.getter();
        outlined init with copy of DeviceState((v26 + 5), (v0 + 2));
        type metadata accessor for RunCustomIntentCATs();
        static CATOption.defaultMode.getter();
        v37 = CATWrapper.__allocating_init(options:globals:)();
        type metadata accessor for RunCustomIntentCATsSimple();
        static CATOption.defaultMode.getter();
        v38 = CATWrapperSimple.__allocating_init(options:globals:)();
        type metadata accessor for WFChooseFromListPromptFlowStrategy();
        swift_allocObject();
        WFChooseFromListPromptFlowStrategy.init(request:shortcutName:appBundleId:siriEnvironment:deviceState:runCustomCatWrapper:runCustomCatWrapperSimple:)(v35, v63, v31, v64, v30 | 0x8000000000000000, v36, (v0 + 2), v37, v38);

        static OutputPublisherFactory.makeOutputPublisherAsync()();
        v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow023PromptForDisambiguationC5AsyncCy0a4LinkC6Plugin016WFChooseFromListF4ItemVSayAFGGMd, &_s11SiriKitFlow023PromptForDisambiguationC5AsyncCy0a4LinkC6Plugin016WFChooseFromListF4ItemVSayAFGGMR);
        v40 = *(v39 + 48);
        v41 = *(v39 + 52);
        swift_allocObject();
        lazy protocol witness table accessor for type WFChooseFromListFlow and conformance WFChooseFromListFlow(&lazy protocol witness table cache variable for type WFChooseFromListPromptFlowStrategy and conformance WFChooseFromListPromptFlowStrategy, 255, type metadata accessor for WFChooseFromListPromptFlowStrategy);
        v0[17] = PromptForDisambiguationFlowAsync.init<A>(items:strategy:outputPublisher:)();
        lazy protocol witness table accessor for type PromptForDisambiguationFlowAsync<WFChooseFromListDisambiguationItem, [WFChooseFromListDisambiguationItem]> and conformance PromptForDisambiguationFlowAsync<A, B>();

        static ExecuteResponse.ongoing<A>(next:childCompletion:)();

        goto LABEL_31;
    }

    OUTLINED_FUNCTION_26(&dword_0, v48, v49, v50);
    OUTLINED_FUNCTION_17();
LABEL_30:
    v59 = v0[18];

    static ExecuteResponse.complete()();
LABEL_31:
    v60 = v0[21];

    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_35_4();

    __asm { BRAA            X1, X16 }
  }

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_30_1(v9))
  {
    v10 = OUTLINED_FUNCTION_52();
    OUTLINED_FUNCTION_45(v10);
    OUTLINED_FUNCTION_26(&dword_0, v11, v12, "#WFChooseFromListFlow allowsMultipleSelection, exiting");
    OUTLINED_FUNCTION_17();
  }

  v13 = v0[19];

  v14 = v13[8];
  v15 = v13[9];
  __swift_project_boxed_opaque_existential_1(v13 + 5, v14);
  if ((dispatch thunk of DeviceState.isHomePod.getter() & 1) == 0)
  {
    v42 = v0[18];
    v43 = v0[19];
    v44 = OUTLINED_FUNCTION_28_4([objc_allocWithZone(WFDialogResponse) initWithResponseCode:4]);
    outlined consume of WFChooseFromListFlow.State(v14, v15);
    static ExecuteResponse.complete()();

    goto LABEL_31;
  }

  v0[22] = default argument 0 of static WFChooseFromListFlow.submitHandoffToCompanionDialog(templating:outputPublisher:deviceState:)();
  static OutputPublisherFactory.makeOutputPublisherAsync()();
  static Device.current.getter();
  v16 = swift_task_alloc();
  v0[23] = v16;
  *v16 = v0;
  v16[1] = WFChooseFromListFlow.execute();
  OUTLINED_FUNCTION_35_4();

  return static WFChooseFromListFlow.submitHandoffToCompanionDialog(templating:outputPublisher:deviceState:)();
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v2 = v1;
  v3 = *(v1 + 184);
  v4 = *(v1 + 176);
  v5 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v6 = v5;

  __swift_destroy_boxed_opaque_existential_1Tm((v2 + 96));
  __swift_destroy_boxed_opaque_existential_1Tm((v2 + 56));
  v7 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v7, v8, v9);
}

{
  OUTLINED_FUNCTION_12_0();
  v3 = v2[18];
  v4 = v2[19];
  v5 = OUTLINED_FUNCTION_28_4([objc_allocWithZone(WFDialogResponse) initWithResponseCode:4]);
  outlined consume of WFChooseFromListFlow.State(v0, v1);
  static ExecuteResponse.complete()();

  v6 = v2[21];

  OUTLINED_FUNCTION_6_0();

  return v7();
}

uint64_t static WFChooseFromListFlow.submitHandoffToCompanionDialog(templating:outputPublisher:deviceState:)()
{
  OUTLINED_FUNCTION_12_0();
  v2 = v1;
  v0[7] = v3;
  v4 = type metadata accessor for DialogPhase();
  v0[8] = v4;
  v5 = *(v4 - 8);
  v0[9] = v5;
  v6 = *(v5 + 64) + 15;
  v0[10] = swift_task_alloc();
  v0[11] = swift_task_alloc();
  v7 = type metadata accessor for OutputGenerationManifest();
  v0[12] = v7;
  v8 = *(v7 - 8);
  v0[13] = v8;
  v9 = *(v8 + 64) + 15;
  v0[14] = swift_task_alloc();
  v13 = (*v2 + 272);
  v14 = (*v13 + **v13);
  v10 = (*v13)[1];
  v11 = swift_task_alloc();
  v0[15] = v11;
  *v11 = v0;
  v11[1] = static WFChooseFromListFlow.submitHandoffToCompanionDialog(templating:outputPublisher:deviceState:);

  return v14();
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v3 = v2;
  v4 = *(v2 + 120);
  v10 = *v1;
  *(v3 + 128) = v5;
  *(v3 + 136) = v0;

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v6, v7, v8);
}

{
  v1 = v0[16];
  v2 = v0[14];
  v4 = v0[10];
  v3 = v0[11];
  v5 = v0[8];
  v6 = v0[9];
  static DialogPhase.completion.getter();
  v7 = [v1 catId];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  (*(v6 + 16))(v4, v3, v5);
  OutputGenerationManifest.init(dialogPhase:_:)();
  OutputGenerationManifest.responseViewId.setter();
  (*(v6 + 8))(v3, v5);
  v8 = type metadata accessor for ResponseFactory();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  v0[18] = ResponseFactory.init()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v11 = swift_allocObject();
  v0[19] = v11;
  *(v11 + 16) = xmmword_216010;
  *(v11 + 32) = v1;
  v12 = *(&async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(dialog:outputGenerationManifest:) + 1);
  v18 = &async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(dialog:outputGenerationManifest:) + async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(dialog:outputGenerationManifest:);
  v13 = v1;
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  v0[20] = v14;
  *v14 = v15;
  v14[1] = static WFChooseFromListFlow.submitHandoffToCompanionDialog(templating:outputPublisher:deviceState:);
  v16 = v0[14];

  return (v18)(v0 + 2, v11, v16);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v2 = v1[20];
  v3 = v1[19];
  v4 = v1[18];
  v5 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v6 = v5;

  v7 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v7, v8, v9);
}

{
  OUTLINED_FUNCTION_12_0();
  v1 = *(v0 + 56);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = async function pointer to dispatch thunk of OutputPublisherAsync.publish(output:)[1];
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  *(v0 + 168) = v5;
  *v5 = v6;
  v5[1] = static WFChooseFromListFlow.submitHandoffToCompanionDialog(templating:outputPublisher:deviceState:);

  return dispatch thunk of OutputPublisherAsync.publish(output:)(v0 + 16, v2, v3);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v3 = *(v2 + 168);
  v4 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v5 = v4;
  *(v6 + 176) = v0;

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v7, v8, v9);
}

{
  OUTLINED_FUNCTION_12_0();
  v2 = *(v0 + 104);
  v1 = *(v0 + 112);
  v3 = *(v0 + 96);

  (*(v2 + 8))(v1, v3);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  v4 = *(v0 + 112);
  v5 = *(v0 + 80);
  v6 = *(v0 + 88);

  OUTLINED_FUNCTION_6_0();

  return v7();
}

{
  OUTLINED_FUNCTION_12_0();
  v1 = v0[17];
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
    v5 = OUTLINED_FUNCTION_52();
    OUTLINED_FUNCTION_44_2(v5);
    OUTLINED_FUNCTION_23_7(&dword_0, v6, v4, "#WFChooseFromListFlow failure to submit Handoff dialog");
    OUTLINED_FUNCTION_19_0();
  }

  v7 = v0[14];
  v8 = v0[10];
  v9 = v0[11];

  OUTLINED_FUNCTION_6_0();

  return v10();
}

{
  OUTLINED_FUNCTION_12_0();
  v2 = *(v0 + 104);
  v1 = *(v0 + 112);
  v3 = *(v0 + 96);

  (*(v2 + 8))(v1, v3);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  v4 = *(v0 + 176);
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static Logger.voiceCommands);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_50(v7))
  {
    v8 = OUTLINED_FUNCTION_52();
    OUTLINED_FUNCTION_44_2(v8);
    OUTLINED_FUNCTION_23_7(&dword_0, v9, v7, "#WFChooseFromListFlow failure to submit Handoff dialog");
    OUTLINED_FUNCTION_19_0();
  }

  v10 = *(v0 + 112);
  v11 = *(v0 + 80);
  v12 = *(v0 + 88);

  OUTLINED_FUNCTION_6_0();

  return v13();
}

uint64_t WFChooseFromListFlow.execute(completion:)()
{
  type metadata accessor for WFChooseFromListFlow();
  OUTLINED_FUNCTION_7_8();
  lazy protocol witness table accessor for type WFChooseFromListFlow and conformance WFChooseFromListFlow(v0, v1, v2);
  OUTLINED_FUNCTION_48_2();
  return Flow.deferToExecuteAsync(_:)();
}

void WFChooseFromListFlow.onPromptForDisambiguationFinished(exitValue:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow12PromptResultOySay0a4LinkC6Plugin34WFChooseFromListDisambiguationItemVGGMd, &_s11SiriKitFlow12PromptResultOySay0a4LinkC6Plugin34WFChooseFromListDisambiguationItemVGGMR);
  v5 = OUTLINED_FUNCTION_7_1(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v5);
  v11 = &v59 - v10;
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v12 = type metadata accessor for Logger();
  __swift_project_value_buffer(v12, static Logger.voiceCommands);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = OUTLINED_FUNCTION_52();
    *v15 = 0;
    _os_log_impl(&dword_0, v13, v14, "#WFChooseFromListFlow onPromptForDisambiguationFinished", v15, 2u);
    OUTLINED_FUNCTION_15_0();
  }

  (*(v7 + 16))(v11, a1, v4);
  v16 = *(v7 + 88);
  v17 = OUTLINED_FUNCTION_20_4();
  v19 = v18(v17);
  if (v19 == enum case for PromptResult.answered<A>(_:))
  {
    v20 = *(v7 + 96);
    v21 = OUTLINED_FUNCTION_20_4();
    v22(v21);
    v23 = *v11;
    v24 = *(*v11 + 16);
    if (v24 != 1)
    {
      if (v24)
      {
        v49 = Logger.logObject.getter();
        v50 = static os_log_type_t.debug.getter();
        if (OUTLINED_FUNCTION_50(v50))
        {
          v51 = OUTLINED_FUNCTION_52();
          OUTLINED_FUNCTION_44_2(v51);
          OUTLINED_FUNCTION_23_7(&dword_0, v52, v50, "#WFChooseFromListFlow received more than one items from disambiguation, reprompting");
          OUTLINED_FUNCTION_19_0();
        }

        v31 = *(v2 + 88);
        *(v2 + 88) = v23;
        v32 = *(v2 + 96);
        *(v2 + 96) = 0;
      }

      else
      {
        v25 = *v11;

        v26 = Logger.logObject.getter();
        v27 = static os_log_type_t.debug.getter();
        if (OUTLINED_FUNCTION_50(v27))
        {
          v28 = OUTLINED_FUNCTION_52();
          *v28 = 0;
          _os_log_impl(&dword_0, v26, v27, "#WFChooseFromListFlow received no item from disambiguation, reprompting", v28, 2u);
          OUTLINED_FUNCTION_15_0();
        }

        swift_beginAccess();
        v29 = *(v2 + 88);
        *(v2 + 88) = *(v2 + 80);
        v30 = *(v2 + 96);
        *(v2 + 96) = 0;

        v31 = v29;
        v32 = v30;
      }

      goto LABEL_25;
    }

    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_50(v39))
    {
      v40 = OUTLINED_FUNCTION_52();
      OUTLINED_FUNCTION_44_2(v40);
      OUTLINED_FUNCTION_23_7(&dword_0, v41, v39, "#WFChooseFromListFlow received one item from disambiguation, finishing");
      OUTLINED_FUNCTION_19_0();
    }

    if (*(v23 + 2))
    {
      v42 = *(v23 + 5);
      v43 = *(v23 + 7);
      v45 = *(v23 + 9);
      v44 = *(v23 + 10);
      v46 = *(v23 + 8);

      v47 = v44;

      type metadata accessor for NSError(0, &lazy cache variable for type metadata for WFChooseFromListDialogResponse, WFChooseFromListDialogResponse_ptr);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
      v48 = swift_allocObject();
      *(v48 + 16) = xmmword_216010;
      *(v48 + 32) = v47;
      v23 = v47;
      v39 = WFChooseFromListDialogResponse.__allocating_init(items:cancelled:)(v48, 0);
      if (one-time initialization token for shared == -1)
      {
LABEL_21:
        (*(*static WFDialogState.shared + 232))();

        v31 = *(v2 + 88);
        *(v2 + 88) = v39;
        v32 = *(v2 + 96);
        *(v2 + 96) = 2;
        goto LABEL_25;
      }
    }

    else
    {
      __break(1u);
    }

    swift_once();
    goto LABEL_21;
  }

  if (v19 == enum case for PromptResult.error<A>(_:))
  {
    v33 = *(v7 + 8);
    v34 = OUTLINED_FUNCTION_20_4();
    v35(v34);
    goto LABEL_13;
  }

  if (v19 == enum case for PromptResult.cancelled<A>(_:))
  {
    type metadata accessor for NSError(0, &lazy cache variable for type metadata for WFChooseFromListDialogResponse, WFChooseFromListDialogResponse_ptr);
    v36 = WFChooseFromListDialogResponse.__allocating_init(items:cancelled:)(_swiftEmptyArrayStorage, 1);
    goto LABEL_16;
  }

  if (v19 == enum case for PromptResult.unanswered<A>(_:))
  {
LABEL_13:
    v36 = [objc_allocWithZone(WFDialogResponse) initWithResponseCode:1];
LABEL_16:
    v37 = *(v1 + 88);
    *(v1 + 88) = v36;
    v32 = *(v1 + 96);
    *(v1 + 96) = 2;
    v31 = v37;
LABEL_25:
    outlined consume of WFChooseFromListFlow.State(v31, v32);
    return;
  }

  lazy protocol witness table accessor for type WFChooseFromListFlowError and conformance WFChooseFromListFlowError();
  v53 = swift_allocError();
  *v54 = 0;
  v55 = *(v1 + 88);
  *(v1 + 88) = v53;
  LOBYTE(v54) = *(v1 + 96);
  *(v1 + 96) = 1;
  outlined consume of WFChooseFromListFlow.State(v55, v54);
  v56 = *(v7 + 8);
  v57 = OUTLINED_FUNCTION_20_4();
  v58(v57);
}

id WFChooseFromListDialogResponse.__allocating_init(items:cancelled:)(uint64_t a1, char a2)
{
  v3 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  type metadata accessor for NSError(0, &lazy cache variable for type metadata for WFDialogListItem, WFDialogListItem_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v5 = [v3 initWithItems:isa cancelled:a2 & 1];

  return v5;
}

uint64_t WFChooseFromListFlow.loadDisambiguationItems(items:dataStore:)(uint64_t a1, uint64_t a2)
{
  v3[16] = a2;
  v3[17] = v2;
  v3[15] = a1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t WFChooseFromListFlow.loadDisambiguationItems(items:dataStore:)()
{
  OUTLINED_FUNCTION_15_2();
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v1 = type metadata accessor for Logger();
  v0[18] = __swift_project_value_buffer(v1, static Logger.voiceCommands);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_30_1(v3))
  {
    v4 = OUTLINED_FUNCTION_52();
    OUTLINED_FUNCTION_45(v4);
    OUTLINED_FUNCTION_26(&dword_0, v5, v6, "#WFChooseFromListFlow starts initializing dialog items");
    OUTLINED_FUNCTION_17();
  }

  v8 = v0[16];
  v7 = v0[17];
  v9 = v0[15];

  v0[14] = Dictionary.init(dictionaryLiteral:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_18SiriLinkFlowPlugin34WFChooseFromListDisambiguationItemVtMd, &_sSi_18SiriLinkFlowPlugin34WFChooseFromListDisambiguationItemVtMR);
  v10 = swift_task_alloc();
  v0[19] = v10;
  v10[2] = v9;
  v10[3] = v7;
  v10[4] = v8;
  v10[5] = v0 + 14;
  v11 = async function pointer to withTaskGroup<A, B>(of:returning:isolation:body:)[1];
  v12 = swift_task_alloc();
  v0[20] = v12;
  *v12 = v0;
  v12[1] = WFChooseFromListFlow.loadDisambiguationItems(items:dataStore:);

  return withTaskGroup<A, B>(of:returning:isolation:body:)();
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v2 = *(v1 + 160);
  v3 = *(v1 + 152);
  v4 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v6, v7, v8);
}

void WFChooseFromListFlow.loadDisambiguationItems(items:dataStore:)()
{
  v1 = 0;
  v2 = *(v0 + 112);
  v47 = *(v0 + 136);
  v43 = v2;
  v44 = *(v2 + 16);
  while (v44 != v1)
  {
    if (!*(v2 + 16) || (v3 = specialized __RawDictionaryStorage.find<A>(_:)(v1), (v4 & 1) == 0))
    {
      v23 = v42;
      v24 = *(v42 + 144);
      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.debug.getter();
      if (OUTLINED_FUNCTION_30_1(v26))
      {
        v27 = OUTLINED_FUNCTION_52();
        OUTLINED_FUNCTION_45(v27);
        OUTLINED_FUNCTION_26(&dword_0, v28, v29, "Disambiguation list is missing elements");
        OUTLINED_FUNCTION_17();
      }

LABEL_16:

      v37 = *(v23 + 136);
      swift_beginAccess();
      v38 = *(v37 + 88);
      *(v37 + 88) = *(v47 + 80);
      v39 = *(v37 + 96);
      *(v37 + 96) = 0;

      outlined consume of WFChooseFromListFlow.State(v38, v39);

      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_35_4();

      __asm { BRAA            X1, X16 }
    }

    v5 = (*(v2 + 56) + 56 * v3);
    v6 = v5[1];
    v7 = v5[3];
    v45 = v5[2];
    v46 = *v5;
    v9 = v5[4];
    v8 = v5[5];
    v10 = v5[6];
    swift_beginAccess();
    v11 = *(v47 + 80);
    v12 = v9;
    swift_bridgeObjectRetain_n();
    v13 = v10;
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    v14 = v12;
    v15 = v13;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v47 + 80) = v11;
    v17 = v14;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v11 + 16) + 1, 1, v11);
      v11 = v21;
      *(v47 + 80) = v21;
    }

    v19 = *(v11 + 16);
    v18 = *(v11 + 24);
    if (v19 >= v18 >> 1)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v18 > 1, v19 + 1, 1, v11);
      v11 = v22;
    }

    *(v11 + 16) = v19 + 1;
    v20 = (v11 + 56 * v19);
    v20[4] = v46;
    v20[5] = v6;
    v20[6] = v45;
    v20[7] = v7;
    v20[8] = v9;
    v20[9] = v8;
    v20[10] = v15;
    *(v47 + 80) = v11;
    swift_endAccess();

    ++v1;
    v2 = v43;
  }

  v23 = v42;
  v30 = *(v42 + 136);
  v31 = *(v42 + 144);

  v25 = Logger.logObject.getter();
  v32 = static os_log_type_t.debug.getter();
  v33 = OUTLINED_FUNCTION_50(v32);
  v34 = *(v42 + 136);
  if (v33)
  {
    v35 = swift_slowAlloc();
    *v35 = 134217984;
    swift_beginAccess();
    *(v35 + 4) = *(*(v47 + 80) + 16);

    _os_log_impl(&dword_0, v25, v32, "#WFChooseFromListFlow initialized dialog items, count: %ld", v35, 0xCu);
    OUTLINED_FUNCTION_15_0();
  }

  else
  {
    v36 = *(v42 + 136);
  }

  goto LABEL_16;
}

uint64_t closure #1 in WFChooseFromListFlow.loadDisambiguationItems(items:dataStore:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[29] = a5;
  v6[30] = a6;
  v6[27] = a3;
  v6[28] = a4;
  v6[26] = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScG8IteratorVySi_18SiriLinkFlowPlugin34WFChooseFromListDisambiguationItemVt_GMd, &_sScG8IteratorVySi_18SiriLinkFlowPlugin34WFChooseFromListDisambiguationItemVt_GMR);
  v6[31] = v7;
  v8 = *(v7 - 8);
  v6[32] = v8;
  v9 = *(v8 + 64) + 15;
  v6[33] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR) - 8) + 64) + 15;
  v6[34] = swift_task_alloc();
  v6[35] = swift_task_alloc();

  return _swift_task_switch(closure #1 in WFChooseFromListFlow.loadDisambiguationItems(items:dataStore:), 0, 0);
}

uint64_t closure #1 in WFChooseFromListFlow.loadDisambiguationItems(items:dataStore:)()
{
  v1 = specialized Array.count.getter(*(v0 + 216));
  if (v1 < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = v1;
    if (v1)
    {
      v29 = *(v0 + 232);
      v28 = **(v0 + 208);
      v3 = type metadata accessor for TaskPriority();
      v4 = 0;
      v30 = v2;
      do
      {
        v6 = *(v0 + 272);
        v5 = *(v0 + 280);
        v7 = *(v0 + 224);
        v8 = *(v0 + 232);
        v9 = *(v0 + 216);
        __swift_storeEnumTagSinglePayload(v5, 1, 1, v3);
        v10 = swift_allocObject();
        v10[2] = 0;
        v11 = v10 + 2;
        v10[3] = 0;
        v10[4] = v4;
        v10[5] = v7;
        v10[6] = v9;
        v10[7] = v8;
        outlined init with copy of TaskPriority?(v5, v6);
        LODWORD(v6) = __swift_getEnumTagSinglePayload(v6, 1, v3);

        swift_unknownObjectRetain();
        v12 = *(v0 + 272);
        if (v6 == 1)
        {
          outlined destroy of String?(*(v0 + 272), &_sScPSgMd, &_sScPSgMR);
        }

        else
        {
          TaskPriority.rawValue.getter();
          (*(*(v3 - 8) + 8))(v12, v3);
        }

        if (*v11)
        {
          v13 = v10[3];
          v14 = *v11;
          swift_getObjectType();
          swift_unknownObjectRetain();
          v15 = dispatch thunk of Actor.unownedExecutor.getter();
          v17 = v16;
          swift_unknownObjectRelease();
        }

        else
        {
          v15 = 0;
          v17 = 0;
        }

        v18 = swift_allocObject();
        *(v18 + 16) = &async function pointer to partial apply for closure #1 in closure #1 in WFChooseFromListFlow.loadDisambiguationItems(items:dataStore:);
        *(v18 + 24) = v10;

        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_18SiriLinkFlowPlugin34WFChooseFromListDisambiguationItemVtMd, &_sSi_18SiriLinkFlowPlugin34WFChooseFromListDisambiguationItemVtMR);
        v19 = v17 | v15;
        if (v17 | v15)
        {
          v19 = v0 + 144;
          *(v0 + 144) = 0;
          *(v0 + 152) = 0;
          *(v0 + 160) = v15;
          *(v0 + 168) = v17;
        }

        ++v4;
        v20 = *(v0 + 280);
        *(v0 + 176) = 1;
        *(v0 + 184) = v19;
        *(v0 + 192) = v28;
        swift_task_create();

        outlined destroy of String?(v20, &_sScPSgMd, &_sScPSgMR);
      }

      while (v30 != v4);
    }

    v21 = *(v0 + 264);
    v22 = **(v0 + 208);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_18SiriLinkFlowPlugin34WFChooseFromListDisambiguationItemVtMd, &_sSi_18SiriLinkFlowPlugin34WFChooseFromListDisambiguationItemVtMR);
    TaskGroup.makeAsyncIterator()();
    v23 = async function pointer to TaskGroup.Iterator.next(isolation:)[1];
    swift_task_alloc();
    OUTLINED_FUNCTION_20_0();
    *(v0 + 288) = v24;
    *v24 = v25;
    OUTLINED_FUNCTION_4_16(v24);
    OUTLINED_FUNCTION_58();
  }

  return TaskGroup.Iterator.next(isolation:)();
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v2 = *(v1 + 288);
  v3 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v5, v6, v7);
}

{
  v1 = *(v0 + 96);
  *(v0 + 16) = *(v0 + 80);
  *(v0 + 32) = v1;
  v2 = *(v0 + 128);
  *(v0 + 48) = *(v0 + 112);
  *(v0 + 64) = v2;
  if (!*(v0 + 32))
  {
    v24 = *(v0 + 272);
    v25 = *(v0 + 280);
    (*(*(v0 + 256) + 8))(*(v0 + 264), *(v0 + 248));

    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_58();

    __asm { BRAA            X1, X16 }
  }

  v3 = *(v0 + 16);
  v4 = *(v0 + 48);
  v46 = *(v0 + 24);
  v47 = *(v0 + 40);
  v5 = *(v0 + 64);
  v6 = *(v0 + 72);
  v7 = *(v0 + 240);
  v48 = *(v0 + 56);
  v8 = v48;

  v45 = v6;
  v9 = *v7;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *v7;
  *(v0 + 200) = *v7;
  *v7 = 0x8000000000000000;
  v12 = specialized __RawDictionaryStorage.find<A>(_:)(v3);
  v14 = *(v11 + 16);
  v15 = (v13 & 1) == 0;
  v16 = v14 + v15;
  if (__OFADD__(v14, v15))
  {
    __break(1u);
    goto LABEL_20;
  }

  v17 = v12;
  v18 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySi18SiriLinkFlowPlugin34WFChooseFromListDisambiguationItemVGMd, &_ss17_NativeDictionaryVySi18SiriLinkFlowPlugin34WFChooseFromListDisambiguationItemVGMR);
  if (!_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v16))
  {
LABEL_12:
    v28 = *(v0 + 200);
    if (v18)
    {
      v29 = (v28[7] + 56 * v17);
      v30 = v29[1];
      v31 = v29[3];
      v32 = v29[4];
      v33 = v29[5];
      v34 = v29[6];
      OUTLINED_FUNCTION_18_8(v29, v44, v45, v46, v47, v48);

      outlined destroy of String?(v0 + 16, &_sSi_18SiriLinkFlowPlugin34WFChooseFromListDisambiguationItemVtSgMd, &_sSi_18SiriLinkFlowPlugin34WFChooseFromListDisambiguationItemVtSgMR);
      goto LABEL_16;
    }

    v28[(v17 >> 6) + 8] |= 1 << v17;
    *(v28[6] + 8 * v17) = v3;
    OUTLINED_FUNCTION_18_8((v28[7] + 56 * v17), v44, v45, v46, v47, v48);
    outlined destroy of String?(v0 + 16, &_sSi_18SiriLinkFlowPlugin34WFChooseFromListDisambiguationItemVtSgMd, &_sSi_18SiriLinkFlowPlugin34WFChooseFromListDisambiguationItemVtSgMR);
    v35 = v28[2];
    v36 = __OFADD__(v35, 1);
    v37 = v35 + 1;
    if (!v36)
    {
      v28[2] = v37;
LABEL_16:
      v38 = *(v0 + 240);
      v39 = *v38;
      *v38 = v28;

      v40 = async function pointer to TaskGroup.Iterator.next(isolation:)[1];
      swift_task_alloc();
      OUTLINED_FUNCTION_20_0();
      *(v0 + 288) = v41;
      *v41 = v42;
      OUTLINED_FUNCTION_4_16();
      OUTLINED_FUNCTION_58();

      return TaskGroup.Iterator.next(isolation:)();
    }

LABEL_20:
    __break(1u);
    return TaskGroup.Iterator.next(isolation:)();
  }

  v19 = *(v0 + 200);
  v20 = specialized __RawDictionaryStorage.find<A>(_:)(v3);
  if ((v18 & 1) == (v21 & 1))
  {
    v17 = v20;
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_58();

  return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
}

uint64_t closure #1 in closure #1 in WFChooseFromListFlow.loadDisambiguationItems(items:dataStore:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[12] = a6;
  v7[13] = a7;
  v7[10] = a4;
  v7[11] = a5;
  v7[9] = a1;
  return _swift_task_switch(closure #1 in closure #1 in WFChooseFromListFlow.loadDisambiguationItems(items:dataStore:), 0, 0);
}

uint64_t closure #1 in closure #1 in WFChooseFromListFlow.loadDisambiguationItems(items:dataStore:)()
{
  OUTLINED_FUNCTION_8_0();
  v1 = *(v0 + 96);
  v2 = *(v0 + 80);
  **(v0 + 72) = v2;
  v3 = v1 & 0xC000000000000001;
  specialized Array._checkSubscript(_:wasNativeTypeChecked:)(v2, (v1 & 0xC000000000000001) == 0, v1);
  if (v3)
  {
    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    v4 = *(*(v0 + 96) + 8 * *(v0 + 80) + 32);
  }

  v5 = v4;
  *(v0 + 112) = v4;
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  *(v0 + 120) = v6;
  *v6 = v7;
  v6[1] = closure #1 in closure #1 in WFChooseFromListFlow.loadDisambiguationItems(items:dataStore:);
  v8 = *(v0 + 104);

  return WFChooseFromListFlow.loadDialogListItem(item:dataStore:)(v0 + 16, v5, v8);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v2 = *(v1 + 120);
  v3 = *(v1 + 112);
  v4 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v6, v7, v8);
}

{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  v3 = *(v0 + 48);
  v4 = *(v0 + 72);
  *(v4 + 56) = *(v0 + 64);
  *(v4 + 40) = v3;
  *(v4 + 24) = v2;
  *(v4 + 8) = v1;
  OUTLINED_FUNCTION_6_0();
  return v5();
}

uint64_t WFChooseFromListFlow.loadDialogListItem(item:dataStore:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[45] = a2;
  v3[46] = a3;
  v3[44] = a1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t WFChooseFromListFlow.loadDialogListItem(item:dataStore:)()
{
  OUTLINED_FUNCTION_14_0();
  v1 = [*(v0 + 360) identifier];
  v2 = v1;
  v3 = v1;
  v4 = v1;
  v5 = v1;
  if (!v1)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = String._bridgeToObjectiveC()();

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v4 = String._bridgeToObjectiveC()();

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v3 = String._bridgeToObjectiveC()();

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v2 = String._bridgeToObjectiveC()();
  }

  *(v0 + 392) = v4;
  *(v0 + 400) = v5;
  *(v0 + 376) = v2;
  *(v0 + 384) = v3;
  if (*(v0 + 368))
  {
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 336;
    *(v0 + 24) = WFChooseFromListFlow.loadDialogListItem(item:dataStore:);
    v6 = swift_continuation_init();
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySbs5NeverOGMd, &_sSccySbs5NeverOGMR);
    *(v0 + 408) = v7;
    *(v0 + 328) = v7;
    *(v0 + 272) = _NSConcreteStackBlock;
    OUTLINED_FUNCTION_32_6(COERCE_DOUBLE(1107296256));
    *(v0 + 288) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned Bool) -> () with result type Bool;
    *(v0 + 296) = &block_descriptor_3;
    *(v0 + 304) = v6;
    v8 = v1;
    [swift_unknownObjectRetain() hasSubtitleForIdentifier:v5 completion:v0 + 272];

    return _swift_continuation_await(v0 + 16);
  }

  else
  {
    v9 = *(v0 + 360);
    v10 = v1;

    v11 = [v9 title];
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    v16 = *(v0 + 352);
    v15 = *(v0 + 360);
    *v16 = v12;
    v16[1] = v14;
    v16[2] = 0;
    v16[3] = 0;
    v16[4] = 0;
    v16[5] = _swiftEmptyArrayStorage;
    v16[6] = v15;
    OUTLINED_FUNCTION_6_0();
    v21 = v17;
    v19 = v18;

    return v21();
  }
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_34_4();
  v1 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v2 = v1;
  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v3, v4, v5);
}

{
  OUTLINED_FUNCTION_15_2();
  v1 = v0 + 336;
  v2 = *(v0 + 336);

  v3 = *(v0 + 392);
  if (v2 == 1)
  {
    v4 = v0 + 208;
    v5 = *(v0 + 368);
    *(v0 + 208) = v0;
    *(v0 + 248) = v1;
    *(v0 + 216) = WFChooseFromListFlow.loadDialogListItem(item:dataStore:);
    v6 = swift_continuation_init();
    *(v0 + 328) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySSSgs5NeverOGMd, &_sSccySSSgs5NeverOGMR);
    OUTLINED_FUNCTION_8_10();
    OUTLINED_FUNCTION_32_6(COERCE_DOUBLE(1107296256));
    *(v0 + 288) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSString?) -> () with result type String?;
    *(v0 + 296) = &block_descriptor_25;
    *(v0 + 304) = v6;
    [v5 loadSubtitleWithIdentifier:v3 completion:v0 + 272];
  }

  else
  {
    v4 = v0 + 80;

    *(v0 + 416) = 0;
    *(v0 + 424) = 0;
    v7 = *(v0 + 408);
    v8 = *(v0 + 384);
    v9 = *(v0 + 368);
    *(v0 + 80) = v0;
    *(v0 + 120) = v1;
    *(v0 + 88) = WFChooseFromListFlow.loadDialogListItem(item:dataStore:);
    swift_continuation_init();
    *(v0 + 328) = v7;
    OUTLINED_FUNCTION_8_10();
    OUTLINED_FUNCTION_32_6(COERCE_DOUBLE(1107296256));
    *(v0 + 288) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned Bool) -> () with result type Bool;
    *(v0 + 296) = &block_descriptor_19;
    *(v0 + 304) = v10;
    [v9 hasImageForIdentifier:v8 completion:v0 + 272];
  }

  return _swift_continuation_await(v4);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_34_4();
  v1 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v2 = v1;
  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v3, v4, v5);
}

{
  OUTLINED_FUNCTION_14_0();
  v6 = *(v0 + 336);

  *(v0 + 416) = v6;
  v1 = *(v0 + 408);
  v2 = *(v0 + 384);
  v3 = *(v0 + 368);
  *(v0 + 80) = v0;
  *(v0 + 120) = v0 + 336;
  *(v0 + 88) = WFChooseFromListFlow.loadDialogListItem(item:dataStore:);
  v4 = swift_continuation_init();
  *(v0 + 328) = v1;
  *(v0 + 272) = _NSConcreteStackBlock;
  *(v0 + 280) = 1107296256;
  *(v0 + 288) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned Bool) -> () with result type Bool;
  *(v0 + 296) = &block_descriptor_19;
  *(v0 + 304) = v4;
  [v3 hasImageForIdentifier:v2 completion:v0 + 272];

  return _swift_continuation_await(v0 + 80);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_34_4();
  v1 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v2 = v1;
  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v3, v4, v5);
}

{
  OUTLINED_FUNCTION_14_0();
  v1 = *(v0 + 336);

  if (v1 == 1)
  {
    v3 = *(v0 + 368);
    v2 = *(v0 + 376);
    *(v0 + 144) = v0;
    *(v0 + 184) = v0 + 336;
    *(v0 + 152) = WFChooseFromListFlow.loadDialogListItem(item:dataStore:);
    v4 = swift_continuation_init();
    *(v0 + 328) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySo7WFImageCSg_SDySo32WFContentItemListThumbnailOptionaypGSgts5NeverOGMd, &_sSccySo7WFImageCSg_SDySo32WFContentItemListThumbnailOptionaypGSgts5NeverOGMR);
    *(v0 + 272) = _NSConcreteStackBlock;
    OUTLINED_FUNCTION_32_6(COERCE_DOUBLE(1107296256));
    *(v0 + 288) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned WFImage?, @unowned NSDictionary?) -> () with result type (WFImage?, [WFContentItemListThumbnailOption : Any]?);
    *(v0 + 296) = &block_descriptor_22;
    *(v0 + 304) = v4;
    [v3 loadImageWithIdentifier:v2 size:v0 + 272 completion:{31.0, 31.0}];

    return _swift_continuation_await(v0 + 144);
  }

  else
  {

    v5 = *(v0 + 368);
    v6 = [*(v0 + 360) title];
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;

    swift_unknownObjectRelease();
    v11 = *(v0 + 352);
    v10 = *(v0 + 360);
    v12 = *(v0 + 416);
    *v11 = v7;
    *(v11 + 8) = v9;
    *(v11 + 16) = v12;
    *(v11 + 32) = 0;
    *(v11 + 40) = _swiftEmptyArrayStorage;
    *(v11 + 48) = v10;
    OUTLINED_FUNCTION_6_0();
    v17 = v13;
    v15 = v14;

    return v17();
  }
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_34_4();
  v1 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v2 = v1;
  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v3, v4, v5);
}

{
  OUTLINED_FUNCTION_14_0();
  v1 = *(v0 + 336);
  v2 = *(v0 + 344);

  if (v1)
  {
    v3 = v1;
    v4 = WFImage.convertToINImage()();
  }

  else
  {
    v4 = 0;
  }

  v5 = *(v0 + 368);
  v6 = [*(v0 + 360) title];
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  swift_unknownObjectRelease();
  v11 = *(v0 + 352);
  v10 = *(v0 + 360);
  v12 = *(v0 + 416);
  *v11 = v7;
  *(v11 + 8) = v9;
  *(v11 + 16) = v12;
  *(v11 + 32) = v4;
  *(v11 + 40) = _swiftEmptyArrayStorage;
  *(v11 + 48) = v10;
  OUTLINED_FUNCTION_6_0();
  v17 = v13;
  v15 = v14;

  return v17();
}

uint64_t @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned Bool) -> () with result type Bool(uint64_t a1, char a2)
{
  v3 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));

  return specialized _resumeUnsafeContinuation<A>(_:_:)(v3, a2);
}

uint64_t specialized _resumeUnsafeContinuation<A>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*(a1 + 64) + 40);
  *v3 = a2;
  v3[1] = a3;
  return _swift_continuation_resume();
}

uint64_t @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSString?) -> () with result type String?(uint64_t a1, uint64_t a2)
{
  v3 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a2)
  {
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  return specialized _resumeUnsafeContinuation<A>(_:_:)(v3, v4, v6);
}

uint64_t WFChooseFromListFlow.deinit()
{
  v1 = *(v0 + 24);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 40));
  v2 = *(v0 + 80);

  outlined consume of WFChooseFromListFlow.State(*(v0 + 88), *(v0 + 96));
  return v0;
}

uint64_t WFChooseFromListFlow.__deallocating_deinit()
{
  WFChooseFromListFlow.deinit();

  return swift_deallocClassInstance();
}

void (*protocol witness for SiriEnvironmentLocating.siriEnvironment.modify in conformance WFChooseFromListFlow(void *a1))(void *a1)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v4 = *v1;
  v3[4] = SiriEnvironmentLocating<>.siriEnvironment.modify();
  return protocol witness for SiriEnvironmentLocating.siriEnvironment.modify in conformance WFExecuteCustomIntentFlow;
}

uint64_t protocol witness for Flow.execute() in conformance WFChooseFromListFlow(uint64_t a1)
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

uint64_t protocol witness for Flow.exitValue.getter in conformance WFChooseFromListFlow@<X0>(uint64_t a1@<X8>)
{
  result = (*(**v1 + 168))();
  *a1 = result;
  *(a1 + 8) = v4 & 1;
  return result;
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzlTRSi_18SiriLinkFlowPlugin34WFChooseFromListDisambiguationItemVt_Tg5(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzlTRSi_18SiriLinkFlowPlugin34WFChooseFromListDisambiguationItemVt_Tg5TQ0_;

  return v7(a1);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzlTRSi_11SiriKitFlow16TemplatingResultVtSg_Tg5()
{
  OUTLINED_FUNCTION_12_0();
  v1 = v0;
  v8 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_9_2(v4);
  *v5 = v6;
  v5[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TQ0_;

  return v8(v1);
}

unint64_t lazy protocol witness table accessor for type PromptForDisambiguationFlowAsync<WFChooseFromListDisambiguationItem, [WFChooseFromListDisambiguationItem]> and conformance PromptForDisambiguationFlowAsync<A, B>()
{
  result = lazy protocol witness table cache variable for type PromptForDisambiguationFlowAsync<WFChooseFromListDisambiguationItem, [WFChooseFromListDisambiguationItem]> and conformance PromptForDisambiguationFlowAsync<A, B>;
  if (!lazy protocol witness table cache variable for type PromptForDisambiguationFlowAsync<WFChooseFromListDisambiguationItem, [WFChooseFromListDisambiguationItem]> and conformance PromptForDisambiguationFlowAsync<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s11SiriKitFlow023PromptForDisambiguationC5AsyncCy0a4LinkC6Plugin016WFChooseFromListF4ItemVSayAFGGMd, &_s11SiriKitFlow023PromptForDisambiguationC5AsyncCy0a4LinkC6Plugin016WFChooseFromListF4ItemVSayAFGGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptForDisambiguationFlowAsync<WFChooseFromListDisambiguationItem, [WFChooseFromListDisambiguationItem]> and conformance PromptForDisambiguationFlowAsync<A, B>);
  }

  return result;
}

void outlined consume of WFChooseFromListFlow.State(void *a1, char a2)
{
  switch(a2)
  {
    case 2:

      break;
    case 1:

      break;
    case 0:

      break;
  }
}

unint64_t lazy protocol witness table accessor for type WFChooseFromListFlowError and conformance WFChooseFromListFlowError()
{
  result = lazy protocol witness table cache variable for type WFChooseFromListFlowError and conformance WFChooseFromListFlowError;
  if (!lazy protocol witness table cache variable for type WFChooseFromListFlowError and conformance WFChooseFromListFlowError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WFChooseFromListFlowError and conformance WFChooseFromListFlowError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WFChooseFromListFlowError and conformance WFChooseFromListFlowError;
  if (!lazy protocol witness table cache variable for type WFChooseFromListFlowError and conformance WFChooseFromListFlowError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WFChooseFromListFlowError and conformance WFChooseFromListFlowError);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for WFChooseFromListFlowError(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x71B44);
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

uint64_t get_enum_tag_for_layout_string_18SiriLinkFlowPlugin016WFChooseFromListC0C5State33_2B2242C592B47B793C0A0F3DBCDAA481LLO(uint64_t a1)
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

uint64_t getEnumTagSinglePayload for WFChooseFromListFlow.State(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFD && *(a1 + 9))
    {
      v2 = *a1 + 252;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 3)
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

uint64_t storeEnumTagSinglePayload for WFChooseFromListFlow.State(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
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

uint64_t destructiveInjectEnumTag for WFChooseFromListFlow.State(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t lazy protocol witness table accessor for type WFChooseFromListFlow and conformance WFChooseFromListFlow(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t partial apply for closure #1 in WFChooseFromListFlow.loadDisambiguationItems(items:dataStore:)()
{
  OUTLINED_FUNCTION_15_2();
  v2 = v1;
  v4 = v3;
  v5 = v0[2];
  v6 = v0[3];
  v8 = v0[4];
  v7 = v0[5];
  v9 = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_9_2(v9);
  *v10 = v11;
  v10[1] = CustomIntentRCHFlowStrategy.makeErrorResponse(error:app:intent:);

  return closure #1 in WFChooseFromListFlow.loadDisambiguationItems(items:dataStore:)(v4, v2, v5, v6, v8, v7);
}

uint64_t sub_71D74()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[6];

  v4 = v0[7];
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t partial apply for closure #1 in closure #1 in WFChooseFromListFlow.loadDisambiguationItems(items:dataStore:)()
{
  OUTLINED_FUNCTION_14_0();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v6 = v0[6];
  v5 = v0[7];
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_9_2(v7);
  *v8 = v9;
  v10 = OUTLINED_FUNCTION_24_8(v8);

  return closure #1 in closure #1 in WFChooseFromListFlow.loadDisambiguationItems(items:dataStore:)(v10, v11, v12, v13, v4, v6, v5);
}

uint64_t sub_71E78()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzlTRSi_18SiriLinkFlowPlugin34WFChooseFromListDisambiguationItemVt_Tg5TA()
{
  OUTLINED_FUNCTION_12_0();
  v2 = v1;
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_9_2(v5);
  *v6 = v7;
  v6[1] = protocol witness for RouteConfirmIntentResponseFlowStrategyAsync.makeFailureConfirmingIntentResponse(app:intent:intentResponse:) in conformance CustomIntentRCHFlowStrategy;

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzlTRSi_18SiriLinkFlowPlugin34WFChooseFromListDisambiguationItemVt_Tg5(v2, v4);
}

uint64_t OUTLINED_FUNCTION_4_16(uint64_t a1)
{
  *(a1 + 8) = closure #1 in WFChooseFromListFlow.loadDisambiguationItems(items:dataStore:);
  v2 = *(v1 + 264);
  v3 = *(v1 + 248);
  return v1 + 80;
}

void OUTLINED_FUNCTION_18_8(void *a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *a1 = a4;
  a1[1] = v6;
  a1[2] = a5;
  a1[3] = v8;
  a1[4] = a6;
  a1[5] = v7;
  a1[6] = a3;
}

void OUTLINED_FUNCTION_23_7(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 2u);
}

id OUTLINED_FUNCTION_28_4(id a1)
{
  v3 = *(v1 + 88);
  *(v1 + 88) = a1;
  v4 = *(v1 + 96);
  *(v1 + 96) = 2;

  return a1;
}

SiriLinkFlowPlugin::ListShortcutsCATsSimple::Properties_optional __swiftcall ListShortcutsCATsSimple.Properties.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of ListShortcutsCATsSimple.Properties.init(rawValue:), v2);

  if (v3 == 1)
  {
    v4.value = SiriLinkFlowPlugin_ListShortcutsCATsSimple_Properties_viewShortcutsInApp;
  }

  else
  {
    v4.value = SiriLinkFlowPlugin_ListShortcutsCATsSimple_Properties_unknownDefault;
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

unint64_t ListShortcutsCATsSimple.Properties.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0xD000000000000020;
  }

  else
  {
    return 0xD000000000000017;
  }
}

SiriLinkFlowPlugin::ListShortcutsCATsSimple::Properties_optional protocol witness for RawRepresentable.init(rawValue:) in conformance ListShortcutsCATsSimple.Properties@<W0>(Swift::String *a1@<X0>, SiriLinkFlowPlugin::ListShortcutsCATsSimple::Properties_optional *a2@<X8>)
{
  result.value = ListShortcutsCATsSimple.Properties.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance ListShortcutsCATsSimple.Properties@<X0>(unint64_t *a1@<X8>)
{
  result = ListShortcutsCATsSimple.Properties.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t ListShortcutsCATsSimple.launchApp(device:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t ListShortcutsCATsSimple.launchApp(device:)()
{
  v1 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v2 = swift_allocObject();
  v0[4] = v2;
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
  OUTLINED_FUNCTION_3_2(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = ListShortcutsCATsSimple.launchApp(device:);
  v5 = v0[3];

  return v7(0xD000000000000017, 0x800000000022DE30, v2);
}

{
  OUTLINED_FUNCTION_12_0();
  v2 = *v1;
  v3 = *(*v1 + 40);
  v4 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v5 = v4;
  *(v2 + 48) = v0;

  if (v0)
  {

    return _swift_task_switch(ListShortcutsCATsSimple.launchApp(device:), 0, 0);
  }

  else
  {
    v6 = *(v2 + 32);

    v7 = OUTLINED_FUNCTION_8_11();

    return v8(v7);
  }
}

BOOL ListShortcutsCATsSimple.LaunchAppDialogIds.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of ListShortcutsCATsSimple.LaunchAppDialogIds.init(rawValue:), v2);

  return v3 != 0;
}

BOOL protocol witness for RawRepresentable.init(rawValue:) in conformance ListShortcutsCATsSimple.LaunchAppDialogIds@<W0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = ListShortcutsCATsSimple.LaunchAppDialogIds.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

uint64_t ListShortcutsCATsSimple.launchAppAsLabels(device:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t ListShortcutsCATsSimple.launchAppAsLabels(device:)()
{
  v1 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v2 = swift_allocObject();
  v0[4] = v2;
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
  OUTLINED_FUNCTION_3_2(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  v4 = swift_task_alloc();
  v0[5] = v4;
  v5 = lazy protocol witness table accessor for type ListShortcutsCATsSimple.LaunchAppDialogIds and conformance ListShortcutsCATsSimple.LaunchAppDialogIds();
  *v4 = v0;
  v4[1] = ListShortcutsCATsSimple.launchAppAsLabels(device:);
  v6 = v0[3];

  return v8(0xD000000000000017, 0x800000000022DE30, v2, &type metadata for ListShortcutsCATsSimple.LaunchAppDialogIds, v5);
}

{
  OUTLINED_FUNCTION_12_0();
  v2 = *v1;
  v3 = *(*v1 + 40);
  v4 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v5 = v4;
  *(v2 + 48) = v0;

  if (v0)
  {

    return _swift_task_switch(ListShortcutsCATsSimple.launchAppAsLabels(device:), 0, 0);
  }

  else
  {
    v6 = *(v2 + 32);

    v7 = OUTLINED_FUNCTION_8_11();

    return v8(v7);
  }
}

{
  v1 = v0[4];

  v2 = v0[1];
  v3 = v0[6];

  return v2();
}

unint64_t lazy protocol witness table accessor for type ListShortcutsCATsSimple.LaunchAppDialogIds and conformance ListShortcutsCATsSimple.LaunchAppDialogIds()
{
  result = lazy protocol witness table cache variable for type ListShortcutsCATsSimple.LaunchAppDialogIds and conformance ListShortcutsCATsSimple.LaunchAppDialogIds;
  if (!lazy protocol witness table cache variable for type ListShortcutsCATsSimple.LaunchAppDialogIds and conformance ListShortcutsCATsSimple.LaunchAppDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ListShortcutsCATsSimple.LaunchAppDialogIds and conformance ListShortcutsCATsSimple.LaunchAppDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ListShortcutsCATsSimple.LaunchAppDialogIds and conformance ListShortcutsCATsSimple.LaunchAppDialogIds;
  if (!lazy protocol witness table cache variable for type ListShortcutsCATsSimple.LaunchAppDialogIds and conformance ListShortcutsCATsSimple.LaunchAppDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ListShortcutsCATsSimple.LaunchAppDialogIds and conformance ListShortcutsCATsSimple.LaunchAppDialogIds);
  }

  return result;
}

uint64_t ListShortcutsCATsSimple.viewShortcutsInApp()()
{
  OUTLINED_FUNCTION_12_0();
  v1 = *(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + 1);
  v4 = &async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:);
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  *v2 = v0;
  v2[1] = ListShortcutsCATsSimple.viewShortcutsInApp();

  return (v4)(0xD000000000000020, 0x800000000022DE50, _swiftEmptyArrayStorage);
}

BOOL ListShortcutsCATsSimple.ViewShortcutsInAppDialogIds.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of ListShortcutsCATsSimple.ViewShortcutsInAppDialogIds.init(rawValue:), v2);

  return v3 != 0;
}

BOOL protocol witness for RawRepresentable.init(rawValue:) in conformance ListShortcutsCATsSimple.ViewShortcutsInAppDialogIds@<W0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = ListShortcutsCATsSimple.ViewShortcutsInAppDialogIds.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

uint64_t ListShortcutsCATsSimple.viewShortcutsInAppAsLabels()()
{
  OUTLINED_FUNCTION_12_0();
  v1 = *(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:) + 1);
  v5 = &async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:) + async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:);
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  v3 = lazy protocol witness table accessor for type ListShortcutsCATsSimple.ViewShortcutsInAppDialogIds and conformance ListShortcutsCATsSimple.ViewShortcutsInAppDialogIds();
  *v2 = v0;
  v2[1] = ListShortcutsCATsSimple.viewShortcutsInAppAsLabels();

  return (v5)(0xD000000000000020, 0x800000000022DE50, _swiftEmptyArrayStorage, &type metadata for ListShortcutsCATsSimple.ViewShortcutsInAppDialogIds, v3);
}

uint64_t ListShortcutsCATsSimple.viewShortcutsInAppAsLabels()(uint64_t a1)
{
  v4 = *(*v2 + 16);
  v5 = *v2;
  OUTLINED_FUNCTION_2_0();
  *v6 = v5;

  v8 = *(v5 + 8);
  if (!v1)
  {
    v7 = a1;
  }

  return v8(v7);
}

unint64_t lazy protocol witness table accessor for type ListShortcutsCATsSimple.ViewShortcutsInAppDialogIds and conformance ListShortcutsCATsSimple.ViewShortcutsInAppDialogIds()
{
  result = lazy protocol witness table cache variable for type ListShortcutsCATsSimple.ViewShortcutsInAppDialogIds and conformance ListShortcutsCATsSimple.ViewShortcutsInAppDialogIds;
  if (!lazy protocol witness table cache variable for type ListShortcutsCATsSimple.ViewShortcutsInAppDialogIds and conformance ListShortcutsCATsSimple.ViewShortcutsInAppDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ListShortcutsCATsSimple.ViewShortcutsInAppDialogIds and conformance ListShortcutsCATsSimple.ViewShortcutsInAppDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ListShortcutsCATsSimple.ViewShortcutsInAppDialogIds and conformance ListShortcutsCATsSimple.ViewShortcutsInAppDialogIds;
  if (!lazy protocol witness table cache variable for type ListShortcutsCATsSimple.ViewShortcutsInAppDialogIds and conformance ListShortcutsCATsSimple.ViewShortcutsInAppDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ListShortcutsCATsSimple.ViewShortcutsInAppDialogIds and conformance ListShortcutsCATsSimple.ViewShortcutsInAppDialogIds);
  }

  return result;
}

uint64_t ListShortcutsCATsSimple.__allocating_init(templateDir:options:globals:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  return ListShortcutsCATsSimple.init(templateDir:options:globals:)(a1, a2);
}

uint64_t ListShortcutsCATsSimple.init(templateDir:options:globals:)(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for CATOption();
  v6 = OUTLINED_FUNCTION_39_2(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6);
  OUTLINED_FUNCTION_3();
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

uint64_t ListShortcutsCATsSimple.__allocating_init(useResponseMode:options:)()
{
  v1 = type metadata accessor for CATOption();
  v2 = OUTLINED_FUNCTION_39_2(v1);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  OUTLINED_FUNCTION_3();
  v5 = *(v0 + 48);
  v6 = *(v0 + 52);
  v7 = swift_allocObject();
  v8 = OUTLINED_FUNCTION_58_0();
  v9(v8);
  CATWrapperSimple.init(useResponseMode:options:)();
  v10 = OUTLINED_FUNCTION_63_0();
  v11(v10);
  return v7;
}

uint64_t ListShortcutsCATsSimple.init(useResponseMode:options:)()
{
  v1 = type metadata accessor for CATOption();
  v2 = OUTLINED_FUNCTION_39_2(v1);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  OUTLINED_FUNCTION_3();
  v5 = OUTLINED_FUNCTION_58_0();
  v6(v5);
  CATWrapperSimple.init(useResponseMode:options:)();
  v7 = OUTLINED_FUNCTION_63_0();
  v8(v7);
  return v0;
}

unint64_t lazy protocol witness table accessor for type ListShortcutsCATsSimple.Properties and conformance ListShortcutsCATsSimple.Properties()
{
  result = lazy protocol witness table cache variable for type ListShortcutsCATsSimple.Properties and conformance ListShortcutsCATsSimple.Properties;
  if (!lazy protocol witness table cache variable for type ListShortcutsCATsSimple.Properties and conformance ListShortcutsCATsSimple.Properties)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ListShortcutsCATsSimple.Properties and conformance ListShortcutsCATsSimple.Properties);
  }

  return result;
}

uint64_t type metadata accessor for ListShortcutsCATsSimple()
{
  result = type metadata singleton initialization cache for ListShortcutsCATsSimple;
  if (!type metadata singleton initialization cache for ListShortcutsCATsSimple)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ListShortcutsCATsSimple.Properties(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x73178);
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

_BYTE *storeEnumTagSinglePayload for ListShortcutsCATsSimple.LaunchAppDialogIds(_BYTE *result, int a2, int a3)
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
      JUMPOUT(0x73260);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

id static LNActionOutput.shouldSuppressOpensIntent(bundleId:)(uint64_t a1, uint64_t a2)
{
  static Device.current.getter();
  __swift_project_boxed_opaque_existential_1(v29, v30);
  if (DeviceState.isVox.getter() & 1) != 0 || (__swift_project_boxed_opaque_existential_1(v29, v30), OUTLINED_FUNCTION_2_16(), (dispatch thunk of DeviceState.isHomePod.getter()) || (__swift_project_boxed_opaque_existential_1(v29, v30), OUTLINED_FUNCTION_2_16(), (dispatch thunk of DeviceState.isLockedWithPasscode.getter()))
  {
    v4 = &dword_0 + 1;
    goto LABEL_5;
  }

  __swift_project_boxed_opaque_existential_1(v29, v30);
  OUTLINED_FUNCTION_2_16();
  if ((dispatch thunk of DeviceState.isCarPlay.getter() & 1) == 0)
  {
LABEL_13:
    v4 = 0;
    goto LABEL_5;
  }

  v6 = objc_allocWithZone(LSApplicationRecord);
  OUTLINED_FUNCTION_1_18();

  v7 = @nonobjc LSApplicationRecord.init(bundleIdentifier:allowPlaceholder:)(a1, a2, 0);
  v12 = v7;
  if (!v7)
  {
    if (one-time initialization token for voiceCommands != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v8 = type metadata accessor for Logger();
    __swift_project_value_buffer(v8, static Logger.voiceCommands);
    OUTLINED_FUNCTION_1_18();

    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *v11 = 136315138;
      *(v11 + 4) = OUTLINED_FUNCTION_4_17(v27);
      _os_log_impl(&dword_0, v9, v10, "#LNActionOutput shouldSuppressOpensIntent Application record not found for: %s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v27);
      OUTLINED_FUNCTION_15_0();
      OUTLINED_FUNCTION_15_0();
    }

    goto LABEL_13;
  }

  v13 = [objc_opt_self() declarationForAppRecord:v7];
  if (!v13)
  {
    if (one-time initialization token for voiceCommands != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v22 = type metadata accessor for Logger();
    __swift_project_value_buffer(v22, static Logger.voiceCommands);
    OUTLINED_FUNCTION_1_18();

    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *v25 = 136315138;
      *(v25 + 4) = OUTLINED_FUNCTION_4_17(v28);
      _os_log_impl(&dword_0, v23, v24, "#LNActionOutput shouldSuppressOpensIntent unable to get CarPlayAppDeclaration for %s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v28);
      OUTLINED_FUNCTION_15_0();
      OUTLINED_FUNCTION_15_0();
    }

    goto LABEL_13;
  }

  v14 = v13;
  v15 = [objc_allocWithZone(CRCarPlayAppPolicyEvaluator) init];
  v16 = [v15 effectivePolicyForAppDeclaration:v14];
  v4 = [v16 isCarPlaySupported];
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v17 = type metadata accessor for Logger();
  __swift_project_value_buffer(v17, static Logger.voiceCommands);
  OUTLINED_FUNCTION_1_18();

  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v26 = v15;
    v21 = swift_slowAlloc();
    *v20 = 136315394;
    *(v20 + 4) = OUTLINED_FUNCTION_4_17(v21);
    *(v20 + 12) = 1024;
    *(v20 + 14) = v4;
    _os_log_impl(&dword_0, v18, v19, "##LNActionOutput shouldSuppressOpensIntent CarPlay support for %s = %{BOOL}d", v20, 0x12u);
    __swift_destroy_boxed_opaque_existential_1Tm(v21);
    OUTLINED_FUNCTION_15_0();
    OUTLINED_FUNCTION_15_0();
  }

  else
  {
  }

LABEL_5:
  __swift_destroy_boxed_opaque_existential_1Tm(v29);
  return v4;
}

Swift::Bool __swiftcall LNActionOutput.hasCustomOutput()()
{
  v1 = [v0 dialog];
  if (v1 || (v1 = [v0 viewSnippet]) != 0 || (v1 = objc_msgSend(v0, "snippetAction")) != 0)
  {

    LOBYTE(v1) = 1;
  }

  return v1;
}

Swift::Bool __swiftcall LNSuccessResult.hasCustomOutput()()
{
  v1 = [v0 output];
  v2 = LNActionOutput.hasCustomOutput()();

  return v2;
}

uint64_t static LNActionOutput.shouldSuppressSnippetIntent()()
{
  v0 = static Device.current.getter();
  OUTLINED_FUNCTION_5_8(v0);
  v1 = DeviceState.isVox.getter();
  if (v1 & 1) != 0 || (OUTLINED_FUNCTION_5_8(v1), OUTLINED_FUNCTION_1_18(), v2 = dispatch thunk of DeviceState.isHomePod.getter(), (v2) || (OUTLINED_FUNCTION_5_8(v2), OUTLINED_FUNCTION_1_18(), v3 = dispatch thunk of DeviceState.isLockedWithPasscode.getter(), (v3))
  {
    v4 = 1;
  }

  else
  {
    OUTLINED_FUNCTION_5_8(v3);
    OUTLINED_FUNCTION_1_18();
    v4 = dispatch thunk of DeviceState.isCarPlay.getter();
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v6);
  return v4 & 1;
}

id @nonobjc LSApplicationRecord.init(bundleIdentifier:allowPlaceholder:)(uint64_t a1, uint64_t a2, char a3)
{
  v5 = String._bridgeToObjectiveC()();

  v10 = 0;
  v6 = [v3 initWithBundleIdentifier:v5 allowPlaceholder:a3 & 1 error:&v10];

  if (v6)
  {
    v7 = v10;
  }

  else
  {
    v8 = v10;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v6;
}

uint64_t OUTLINED_FUNCTION_4_17(uint64_t a1, ...)
{
  va_start(va, a1);

  return getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v2, v1, va);
}

void *OUTLINED_FUNCTION_5_8(uint64_t a1, ...)
{
  va_start(va, a1);

  return __swift_project_boxed_opaque_existential_1(va, v1);
}

uint64_t String.convertedToURL()@<X0>(uint64_t a1@<X8>)
{
  v32[0] = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v2 = *(*(v1 - 8) + 64);
  v3 = __chkstk_darwin(v1 - 8);
  v5 = v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v3);
  v8 = v32 - v7;
  v9 = __chkstk_darwin(v6);
  v11 = v32 - v10;
  __chkstk_darwin(v9);
  v13 = v32 - v12;
  OUTLINED_FUNCTION_0_13();
  URL.init(string:)();
  outlined init with copy of URL?(v13, v11);
  v14 = type metadata accessor for URL();
  if (__swift_getEnumTagSinglePayload(v11, 1, v14) == 1)
  {
    goto LABEL_5;
  }

  URL.scheme.getter();
  v16 = v15;
  v17 = *(*(v14 - 8) + 8);
  v17(v11, v14);
  if (v16)
  {

    outlined init with copy of URL?(v13, v8);
    if (__swift_getEnumTagSinglePayload(v8, 1, v14) == 1)
    {
      v11 = v8;
LABEL_5:
      outlined destroy of URL?(v11);
      goto LABEL_6;
    }

    URL.host.getter();
    v30 = v29;
    v17(v8, v14);
    if (v30)
    {

      v31 = v13;
      return outlined init with take of URL?(v31, v32[0]);
    }
  }

LABEL_6:
  v18 = objc_allocWithZone(NSDataDetector);
  v19 = @nonobjc NSDataDetector.init(types:)(-1);
  v21 = v19;
  if (v19)
  {
    OUTLINED_FUNCTION_0_13();
    v22 = String._bridgeToObjectiveC()();
    OUTLINED_FUNCTION_0_13();
    v23 = [v21 firstMatchInString:v22 options:0 range:{0, String.count.getter(), v32[0]}];

    if (v23)
    {
      if (![v23 range])
      {
        [v23 range];
        v25 = v24;
        OUTLINED_FUNCTION_0_13();
        if (v25 == String.count.getter())
        {
          v26 = [v23 URL];
          if (v26)
          {
            v27 = v26;
            static URL._unconditionallyBridgeFromObjectiveC(_:)();

            outlined destroy of URL?(v13);
            v28 = 0;
          }

          else
          {
            outlined destroy of URL?(v13);

            v28 = 1;
          }

          __swift_storeEnumTagSinglePayload(v5, v28, 1, v14);
          v31 = v5;
          return outlined init with take of URL?(v31, v32[0]);
        }
      }

      outlined destroy of URL?(v13);
    }

    else
    {
      outlined destroy of URL?(v13);
    }
  }

  else
  {
    outlined destroy of URL?(v13);
  }

  return __swift_storeEnumTagSinglePayload(v32[0], 1, 1, v14);
}

id @nonobjc NSDataDetector.init(types:)(uint64_t a1)
{
  v6 = 0;
  v2 = [v1 initWithTypes:a1 error:&v6];
  if (v2)
  {
    v3 = v6;
  }

  else
  {
    v4 = v6;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v2;
}

uint64_t ShowOutputAndCloseFlow.__allocating_init(shouldCloseSiri:outputPublisher:aceServiceInvoker:outputGenerator:)(char a1, __int128 *a2, __int128 *a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  ShowOutputAndCloseFlow.init(shouldCloseSiri:outputPublisher:aceServiceInvoker:outputGenerator:)(a1, a2, a3, a4, a5);
  return v10;
}

uint64_t ShowOutputAndCloseFlow.init(shouldCloseSiri:outputPublisher:aceServiceInvoker:outputGenerator:)(char a1, __int128 *a2, __int128 *a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 112) = a1;
  outlined init with take of AceServiceInvokerAsync(a2, v5 + 16);
  outlined init with take of AceServiceInvokerAsync(a3, v5 + 56);
  *(v5 + 96) = a4;
  *(v5 + 104) = a5;
  return v5;
}

uint64_t ShowOutputAndCloseFlow.execute(completion:)()
{
  v1 = *v0;
  lazy protocol witness table accessor for type ShowOutputAndCloseFlow and conformance ShowOutputAndCloseFlow();
  return Flow.deferToExecuteAsync(_:)();
}

unint64_t lazy protocol witness table accessor for type ShowOutputAndCloseFlow and conformance ShowOutputAndCloseFlow()
{
  result = lazy protocol witness table cache variable for type ShowOutputAndCloseFlow and conformance ShowOutputAndCloseFlow;
  if (!lazy protocol witness table cache variable for type ShowOutputAndCloseFlow and conformance ShowOutputAndCloseFlow)
  {
    type metadata accessor for ShowOutputAndCloseFlow();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ShowOutputAndCloseFlow and conformance ShowOutputAndCloseFlow);
  }

  return result;
}

uint64_t ShowOutputAndCloseFlow.execute()(uint64_t a1)
{
  *(v2 + 88) = a1;
  *(v2 + 96) = v1;
  return _swift_task_switch(ShowOutputAndCloseFlow.execute(), 0, 0);
}

uint64_t ShowOutputAndCloseFlow.execute()()
{
  if (one-time initialization token for voiceCommands != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[13] = __swift_project_value_buffer(v1, static Logger.voiceCommands);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_26(&dword_0, v4, v5, "Submitting output");
    OUTLINED_FUNCTION_15_0();
  }

  v6 = v0[12];

  v7 = *(v6 + 104);
  v11 = (*(v6 + 96) + **(v6 + 96));
  v8 = *(*(v6 + 96) + 4);
  v9 = swift_task_alloc();
  v0[14] = v9;
  *v9 = v0;
  v9[1] = ShowOutputAndCloseFlow.execute();

  return v11(v0 + 2);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v3 = *(v2 + 112);
  v4 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v5 = v4;
  *(v6 + 120) = v0;

  if (v0)
  {
    v7 = ShowOutputAndCloseFlow.execute();
  }

  else
  {
    v7 = ShowOutputAndCloseFlow.execute();
  }

  return _swift_task_switch(v7, 0, 0);
}

{
  v1 = *(v0 + 96);
  v2 = v1[5];
  v3 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v2);
  v4 = async function pointer to dispatch thunk of OutputPublisherAsync.publish(output:)[1];
  v5 = swift_task_alloc();
  *(v0 + 128) = v5;
  *v5 = v0;
  v5[1] = ShowOutputAndCloseFlow.execute();

  return dispatch thunk of OutputPublisherAsync.publish(output:)(v0 + 16, v2, v3);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v3 = *(v2 + 128);
  v4 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v5 = v4;
  *(v6 + 136) = v0;

  if (v0)
  {
    v7 = ShowOutputAndCloseFlow.execute();
  }

  else
  {
    v7 = ShowOutputAndCloseFlow.execute();
  }

  return _swift_task_switch(v7, 0, 0);
}

{
  if (*(v0[12] + 112) == 1)
  {
    v1 = v0[13];
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v2, v3))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_26(&dword_0, v4, v5, "Dismissing Siri");
      OUTLINED_FUNCTION_15_0();
    }

    v6 = v0[12];

    v7 = v6[11];
    __swift_project_boxed_opaque_existential_1(v6 + 7, v6[10]);
    v8 = [objc_allocWithZone(SAUICloseAssistant) init];
    AceServiceInvokerAsync.submitAndForget(_:)();
  }

  v9 = v0[11];
  static ExecuteResponse.complete()();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  OUTLINED_FUNCTION_6_0();

  return v10();
}

{
  v19 = v0;
  v1 = v0[15];
  v2 = v0[13];
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v18 = v6;
    OUTLINED_FUNCTION_6_11(4.8149e-34);
    v8 = v0[7];
    v7 = v0[8];
    v9 = v0[9];
    v10 = Error.localizedDescription.getter();
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, &v18);

    *(v5 + 4) = v12;
    OUTLINED_FUNCTION_101(&dword_0, v13, v14, "Hit an error publishing output %s");
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    OUTLINED_FUNCTION_15_0();
    OUTLINED_FUNCTION_15_0();
  }

  else
  {
  }

  v15 = v0[11];
  static ExecuteResponse.complete()();
  OUTLINED_FUNCTION_6_0();

  return v16();
}

{
  v19 = v0;
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v1 = v0[17];
  v2 = v0[13];
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v18 = v6;
    OUTLINED_FUNCTION_6_11(4.8149e-34);
    v8 = v0[7];
    v7 = v0[8];
    v9 = v0[9];
    v10 = Error.localizedDescription.getter();
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, &v18);

    *(v5 + 4) = v12;
    OUTLINED_FUNCTION_101(&dword_0, v13, v14, "Hit an error publishing output %s");
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    OUTLINED_FUNCTION_15_0();
    OUTLINED_FUNCTION_15_0();
  }

  else
  {
  }

  v15 = v0[11];
  static ExecuteResponse.complete()();
  OUTLINED_FUNCTION_6_0();

  return v16();
}