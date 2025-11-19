uint64_t OUTLINED_FUNCTION_6_32()
{

  return outlined consume of Data._Representation(v1, v0);
}

void InstallVoiceShortcutFlow.__allocating_init(invocationData:deviceState:aceService:vcClient:outputPublisher:installShortcutViewFactory:locationProvider:dateTimeResolver:)()
{
  OUTLINED_FUNCTION_40_0();
  swift_allocObject();
  InstallVoiceShortcutFlow.init(invocationData:deviceState:aceService:vcClient:outputPublisher:installShortcutViewFactory:locationProvider:dateTimeResolver:)();
  OUTLINED_FUNCTION_42();
}

void InstallVoiceShortcutFlow.init(invocationData:deviceState:aceService:vcClient:outputPublisher:installShortcutViewFactory:locationProvider:dateTimeResolver:)()
{
  OUTLINED_FUNCTION_40_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v18 = type metadata accessor for CATOption();
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  OUTLINED_FUNCTION_3();
  *(v1 + 136) = v17;
  outlined init with copy of DeviceState(v15, v1 + 16);
  outlined init with copy of DeviceState(v13, v1 + 96);
  outlined init with copy of DeviceState(v11, v1 + 152);
  outlined init with copy of DeviceState(v9, v1 + 56);
  if (v7)
  {
    OUTLINED_FUNCTION_19_17();
  }

  else
  {
    outlined init with copy of DeviceState(v15, v21);
    type metadata accessor for InstallShortcutCATs();

    static CATOption.defaultMode.getter();
    v20 = CATWrapper.__allocating_init(options:globals:)();

    OUTLINED_FUNCTION_19_17();
    type metadata accessor for InstallShortcutViewFactory();
    v7 = swift_allocObject();
    outlined init with take of AceServiceInvokerAsync(v21, v7 + 16);
    *(v7 + 56) = v20;
  }

  *(v1 + 144) = v7;
  outlined init with take of AceServiceInvokerAsync(v5, v1 + 192);
  outlined init with take of AceServiceInvokerAsync(v3, v1 + 232);
  OUTLINED_FUNCTION_42();
}

void InstallVoiceShortcutFlow.on(input:)()
{
  OUTLINED_FUNCTION_40_0();
  v1 = v0;
  v2 = type metadata accessor for Input();
  OUTLINED_FUNCTION_13_1();
  v4 = v3;
  v6 = *(v5 + 64);
  __chkstk_darwin(v7);
  OUTLINED_FUNCTION_3();
  v10 = v9 - v8;
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v11 = type metadata accessor for Logger();
  __swift_project_value_buffer(v11, static Logger.voiceCommands);
  (*(v4 + 16))(v10, v1, v2);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = OUTLINED_FUNCTION_48();
    v25 = OUTLINED_FUNCTION_85();
    *v14 = 136315138;
    _s11SiriKitFlow5InputVACs23CustomStringConvertibleAAWlTm_4(&lazy protocol witness table cache variable for type Input and conformance Input, 255, &type metadata accessor for Input);
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v17 = v16;
    v18 = *(v4 + 8);
    v19 = OUTLINED_FUNCTION_48_2();
    v20(v19);
    v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v17, &v25);

    *(v14 + 4) = v21;
    _os_log_impl(&dword_0, v12, v13, "InstallVoiceShortcutFlow.on %s", v14, 0xCu);
    OUTLINED_FUNCTION_29_10();
    OUTLINED_FUNCTION_15_0();
  }

  else
  {

    v22 = *(v4 + 8);
    v23 = OUTLINED_FUNCTION_48_2();
    v24(v23);
  }

  OUTLINED_FUNCTION_42();
}

uint64_t InstallVoiceShortcutFlow.execute(completion:)()
{
  type metadata accessor for InstallVoiceShortcutFlow();
  _s11SiriKitFlow5InputVACs23CustomStringConvertibleAAWlTm_4(&lazy protocol witness table cache variable for type InstallVoiceShortcutFlow and conformance InstallVoiceShortcutFlow, v0, type metadata accessor for InstallVoiceShortcutFlow);
  OUTLINED_FUNCTION_48_2();
  return Flow.deferToExecuteAsync(_:)();
}

uint64_t InstallVoiceShortcutFlow.execute()(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return _swift_task_switch(InstallVoiceShortcutFlow.execute(), 0, 0);
}

uint64_t InstallVoiceShortcutFlow.execute()()
{
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v1 = type metadata accessor for Logger();
  v0[5] = __swift_project_value_buffer(v1, static Logger.voiceCommands);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = OUTLINED_FUNCTION_52();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "InstallVoiceShortcutFlow.execute", v4, 2u);
    OUTLINED_FUNCTION_15_0();
  }

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_30_1(v6))
  {
    v7 = OUTLINED_FUNCTION_52();
    OUTLINED_FUNCTION_45(v7);
    OUTLINED_FUNCTION_9_8();
    _os_log_impl(v8, v9, v10, v11, v12, 2u);
    OUTLINED_FUNCTION_17();
  }

  v13 = v0[4];

  v14 = v13[17];
  v0[6] = v14;
  v15 = *(*v13 + 208);
  v20 = (v15 + *v15);
  v16 = v15[1];
  v17 = swift_task_alloc();
  v0[7] = v17;
  *v17 = v0;
  v17[1] = InstallVoiceShortcutFlow.execute();
  v18 = v0[4];

  return v20(v14);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v3 = *(v2 + 56);
  v4 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v5 = v4;
  *(v6 + 64) = v0;

  if (v0)
  {
    v7 = InstallVoiceShortcutFlow.execute();
  }

  else
  {
    v7 = InstallVoiceShortcutFlow.execute();
  }

  return _swift_task_switch(v7, 0, 0);
}

{
  v2 = v1[5];
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = OUTLINED_FUNCTION_52();
    OUTLINED_FUNCTION_45(v5);
    _os_log_impl(&dword_0, v3, v4, "InstallVoiceShortcutFlow shortcut installed, running shortcut", v0, 2u);
    OUTLINED_FUNCTION_17();
  }

  v6 = v1[6];
  v8 = v1[3];
  v7 = v1[4];

  OUTLINED_FUNCTION_18_4();
  (*(v9 + 216))(v6);
  static ExecuteResponse.complete(next:)();

  OUTLINED_FUNCTION_6_0();

  return v10();
}

{
  v23 = v0;
  v1 = v0[8];
  v2 = v0[5];
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[8];
    v6 = OUTLINED_FUNCTION_48();
    v7 = OUTLINED_FUNCTION_85();
    v22 = v7;
    OUTLINED_FUNCTION_22_20(4.8149e-34);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v8 = String.init<A>(describing:)();
    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, &v22);

    *(v6 + 4) = v10;
    OUTLINED_FUNCTION_9_8();
    _os_log_impl(v11, v12, v13, v14, v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    OUTLINED_FUNCTION_15_0();
    OUTLINED_FUNCTION_17();
  }

  v16 = v0[8];
  v18 = v0[3];
  v17 = v0[4];
  OUTLINED_FUNCTION_18_4();
  (*(v19 + 224))();
  static ExecuteResponse.complete(next:)();

  OUTLINED_FUNCTION_6_0();

  return v20();
}

uint64_t InstallVoiceShortcutFlow.installShortcut(invocationData:)()
{
  OUTLINED_FUNCTION_8_0();
  v1[3] = v2;
  v1[4] = v0;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR) - 8) + 64) + 15;
  v1[5] = swift_task_alloc();
  v4 = type metadata accessor for URL();
  v1[6] = v4;
  v5 = *(v4 - 8);
  v1[7] = v5;
  v6 = *(v5 + 64) + 15;
  v1[8] = swift_task_alloc();

  return _swift_task_switch(InstallVoiceShortcutFlow.installShortcut(invocationData:), 0, 0);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v2 = v1;
  v3 = *(v1 + 96);
  v6 = *v0;
  *(v2 + 120) = v4;

  return _swift_task_switch(InstallVoiceShortcutFlow.installShortcut(invocationData:), 0, 0);
}

{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v4 = *v1;
  *(*v1 + 112) = v0;

  v5 = *(v2 + 80);

  if (v0)
  {
    v6 = InstallVoiceShortcutFlow.installShortcut(invocationData:);
  }

  else
  {
    v6 = InstallVoiceShortcutFlow.installShortcut(invocationData:);
  }

  return _swift_task_switch(v6, 0, 0);
}

{
  v1 = v0[11];
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_30_1(v3))
  {
    v4 = OUTLINED_FUNCTION_52();
    OUTLINED_FUNCTION_45(v4);
    OUTLINED_FUNCTION_9_8();
    _os_log_impl(v5, v6, v7, v8, v9, 2u);
    OUTLINED_FUNCTION_17();
  }

  v11 = v0[7];
  v10 = v0[8];
  v13 = v0[5];
  v12 = v0[6];

  (*(v11 + 8))(v10, v12);

  OUTLINED_FUNCTION_6_0();

  return v14();
}

{
  v26 = v0;
  v1 = v0[14];
  v2 = v0[11];
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[14];
    v6 = OUTLINED_FUNCTION_48();
    v7 = OUTLINED_FUNCTION_85();
    v25 = v7;
    OUTLINED_FUNCTION_22_20(4.8149e-34);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v8 = String.init<A>(describing:)();
    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, &v25);

    *(v6 + 4) = v10;
    OUTLINED_FUNCTION_9_8();
    _os_log_impl(v11, v12, v13, v14, v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    OUTLINED_FUNCTION_15_0();
    OUTLINED_FUNCTION_17();
  }

  v16 = v0[14];
  v18 = v0[7];
  v17 = v0[8];
  v19 = v0[6];
  swift_willThrow();
  (*(v18 + 8))(v17, v19);
  v20 = v0[14];
  v21 = v0[8];
  v22 = v0[5];

  OUTLINED_FUNCTION_6_0();

  return v23();
}

void InstallVoiceShortcutFlow.installShortcut(invocationData:)()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  (*(**(v0 + 24) + 136))();
  if (__swift_getEnumTagSinglePayload(v2, 1, v1) == 1)
  {
    outlined destroy of URL?(*(v0 + 40));
  }

  else
  {
    v3 = *(v0 + 24);
    v4 = (*(*(v0 + 56) + 32))(*(v0 + 64), *(v0 + 40), *(v0 + 48));
    *(v0 + 72) = (*(*v3 + 128))(v4);
    *(v0 + 80) = v5;
    if (v5)
    {
      if (one-time initialization token for voiceCommands != -1)
      {
        OUTLINED_FUNCTION_0();
      }

      v6 = type metadata accessor for Logger();
      *(v0 + 88) = __swift_project_value_buffer(v6, static Logger.voiceCommands);

      v7 = Logger.logObject.getter();
      v8 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v7, v8))
      {
        v9 = OUTLINED_FUNCTION_48();
        v39 = OUTLINED_FUNCTION_85();
        *v9 = 136315138;
        v10 = OUTLINED_FUNCTION_48_2();
        *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, v12);
        _os_log_impl(&dword_0, v7, v8, "InstallVoiceShortcutFlow checking if shortcut already installed %s", v9, 0xCu);
        OUTLINED_FUNCTION_29_10();
        OUTLINED_FUNCTION_15_0();
      }

      v13 = *(v0 + 32);
      v14 = v13[23];
      __swift_project_boxed_opaque_existential_1(v13 + 19, v13[22]);
      v15 = *(v14 + 8);
      v38 = v15 + *v15;
      v16 = v15[1];
      v17 = swift_task_alloc();
      *(v0 + 96) = v17;
      *v17 = v0;
      v17[1] = InstallVoiceShortcutFlow.installShortcut(invocationData:);
      OUTLINED_FUNCTION_48_2();
      OUTLINED_FUNCTION_21_18();

      __asm { BRAA            X4, X16 }
    }

    (*(*(v0 + 56) + 8))(*(v0 + 64), *(v0 + 48));
  }

  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v20 = *(v0 + 24);
  v21 = type metadata accessor for Logger();
  __swift_project_value_buffer(v21, static Logger.voiceCommands);

  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = *(v0 + 24);
    v25 = OUTLINED_FUNCTION_48();
    v39 = OUTLINED_FUNCTION_85();
    *v25 = 136315138;
    v26 = (*(*v24 + 104))();
    v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v27, &v39);

    *(v25 + 4) = v28;
    _os_log_impl(&dword_0, v22, v23, "InstallVoiceShortcutInvocationData incomplete, unable to install shortcut : %s", v25, 0xCu);
    OUTLINED_FUNCTION_29_10();
    OUTLINED_FUNCTION_15_0();
  }

  v29 = type metadata accessor for CommandFailure();
  v30 = *(v29 + 48);
  v31 = *(v29 + 52);
  swift_allocObject();
  v32 = CommandFailure.init(errorCode:reason:)();
  _s11SiriKitFlow5InputVACs23CustomStringConvertibleAAWlTm_4(&lazy protocol witness table cache variable for type CommandFailure and conformance CommandFailure, 255, &type metadata accessor for CommandFailure);
  swift_allocError();
  *v33 = v32;
  swift_willThrow();
  v34 = *(v0 + 64);
  v35 = *(v0 + 40);

  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_21_18();

  __asm { BRAA            X1, X16 }
}

{
  v2 = *(v0 + 80);
  v1 = *(v0 + 88);
  if (*(v0 + 120) == 1)
  {
    v3 = *(v0 + 80);

    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_30_1(v5))
    {
      v6 = OUTLINED_FUNCTION_52();
      OUTLINED_FUNCTION_45(v6);
      OUTLINED_FUNCTION_9_8();
      _os_log_impl(v7, v8, v9, v10, v11, 2u);
      OUTLINED_FUNCTION_17();
    }

    v13 = *(v0 + 56);
    v12 = *(v0 + 64);
    v15 = *(v0 + 40);
    v14 = *(v0 + 48);

    (*(v13 + 8))(v12, v14);

    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_21_18();

    __asm { BRAA            X1, X16 }
  }

  v18 = *(v0 + 80);

  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v19, v20))
  {
    v22 = *(v0 + 72);
    v21 = *(v0 + 80);
    v23 = OUTLINED_FUNCTION_48();
    v35 = OUTLINED_FUNCTION_85();
    *v23 = 136315138;
    *(v23 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v21, &v35);
    _os_log_impl(&dword_0, v19, v20, "InstallVoiceShortcutFlow shortcut not perviously installed, attempting to install : %s", v23, 0xCu);
    OUTLINED_FUNCTION_29_10();
    OUTLINED_FUNCTION_15_0();
  }

  v24 = *(v0 + 80);
  v25 = *(v0 + 32);
  v26 = v25[23];
  __swift_project_boxed_opaque_existential_1(v25 + 19, v25[22]);
  v27 = *(v26 + 16);
  v34 = v27 + *v27;
  v28 = v27[1];
  v29 = swift_task_alloc();
  *(v0 + 104) = v29;
  *v29 = v0;
  v29[1] = InstallVoiceShortcutFlow.installShortcut(invocationData:);
  v31 = *(v0 + 64);
  v30 = *(v0 + 72);
  OUTLINED_FUNCTION_21_18();

  __asm { BRAA            X5, X16 }
}

void InstallVoiceShortcutFlow.makeRunShortcutFlow(invocationData:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_40_0();
  v14 = v13;
  v15 = type metadata accessor for CATOption();
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  OUTLINED_FUNCTION_3();
  v17 = (*(*v14 + 128))();
  if (v18)
  {
    v78[0] = v17;
    v78[1] = v18;
    v79 = 0;
    memset(v77, 0, sizeof(v77));
    outlined init with copy of DeviceState(v12 + 96, v76);
    outlined init with copy of DeviceState(v12 + 16, v75);
    outlined init with copy of DeviceState(v12 + 56, v74);
    outlined init with copy of DeviceState(v12 + 192, v71);
    outlined init with copy of DeviceState(v12 + 232, v68);
    v19 = one-time initialization token for shared;

    if (v19 != -1)
    {
      swift_once();
    }

    v67 = static WFDialogState.shared;
    type metadata accessor for RunCustomIntentCATs();

    static CATOption.defaultMode.getter();
    OUTLINED_FUNCTION_31_1();
    v66 = CATWrapper.__allocating_init(options:globals:)();
    type metadata accessor for RunVoiceCommandCATs();
    static CATOption.defaultMode.getter();
    OUTLINED_FUNCTION_31_1();
    v65 = CATWrapper.__allocating_init(options:globals:)();
    type metadata accessor for RunVoiceCommandCATsSimple();
    static CATOption.defaultMode.getter();
    OUTLINED_FUNCTION_31_1();
    v63 = CATWrapperSimple.__allocating_init(options:globals:)();
    type metadata accessor for WorkflowRunnerCATPatternsExecutor(0);
    static CATOption.defaultMode.getter();
    OUTLINED_FUNCTION_31_1();
    v61 = CATWrapper.__allocating_init(options:globals:)();
    v64 = type metadata accessor for WorkflowRunnerFlow(0);
    v20 = objc_allocWithZone(v64);
    v22 = v72;
    v21 = v73;
    __swift_mutable_project_boxed_opaque_existential_1(v71, v72);
    v62 = &v61;
    OUTLINED_FUNCTION_13_1();
    v24 = *(v23 + 64);
    __chkstk_darwin(v25);
    OUTLINED_FUNCTION_3();
    v28 = v27 - v26;
    (*(v29 + 16))(v27 - v26);
    v30 = v69;
    v31 = v70;
    __swift_mutable_project_boxed_opaque_existential_1(v68, v69);
    OUTLINED_FUNCTION_13_1();
    v33 = *(v32 + 64);
    __chkstk_darwin(v34);
    OUTLINED_FUNCTION_3();
    v37 = v36 - v35;
    (*(v38 + 16))(v36 - v35);
    specialized WorkflowRunnerFlow.init(workflowRunnerInput:workflowRunner:dialogState:aceServiceInvoker:deviceState:outputPublisher:runCustomCatWrapper:runVoiceCommandsCatWrapper:runVoiceCommandsCatWrapperSimple:catPatternsExecutor:locationGuardFlowProvider:locationProvider:tccTemplatesCATWrapper:dateTimeResolver:linkHandlingFlowFactory:)(v78, v77, v67, v76, v75, v74, v66, v65, v63, v61, closure #1 in variable initialization expression of static SLFLocationAccessGuardProvider.makeGuardFlow, 0, v28, v58, v37, v59, v20, &type metadata for DefaultLinkHandlingFlowFactory, v22, v30, &type metadata for DefaultTCCTemplatesCATWrapper, &protocol witness table for DefaultLinkHandlingFlowFactory, v21, v31, &protocol witness table for DefaultTCCTemplatesCATWrapper, v60, v61, v62, v63, v64, v65, v66, v67, v68[0], v68[1], v68[2], v69);
    v40 = v39;
    __swift_destroy_boxed_opaque_existential_1Tm(v68);
    __swift_destroy_boxed_opaque_existential_1Tm(v71);
    v77[0] = v40;
    _s11SiriKitFlow5InputVACs23CustomStringConvertibleAAWlTm_4(&lazy protocol witness table cache variable for type WorkflowRunnerFlow and conformance WorkflowRunnerFlow, 255, type metadata accessor for WorkflowRunnerFlow);
    Flow.eraseToAnyFlow()();

    OUTLINED_FUNCTION_42();
  }

  else
  {
    if (one-time initialization token for voiceCommands != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v41 = type metadata accessor for Logger();
    __swift_project_value_buffer(v41, static Logger.voiceCommands);

    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = OUTLINED_FUNCTION_48();
      v45 = OUTLINED_FUNCTION_85();
      v78[0] = v45;
      *v44 = 136315138;
      v46 = (*(*v14 + 104))();
      v48 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v46, v47, v78);

      *(v44 + 4) = v48;
      _os_log_impl(&dword_0, v42, v43, "InstallVoiceShortcutInvocationData incomplete, unable to runShortcut : %s", v44, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v45);
      OUTLINED_FUNCTION_15_0();
      OUTLINED_FUNCTION_15_0();
    }

    v49 = *(*v12 + 224);
    OUTLINED_FUNCTION_42();

    v50(v50, v51, v52, v53, v54, v55, v56, v57, a9, a10, a11, a12);
  }
}

uint64_t InstallVoiceShortcutFlow.makeErrorFlow()()
{
  outlined init with copy of DeviceState(v0 + 56, v6);
  v1 = type metadata accessor for SimpleOutputFlowAsync();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();

  v6[0] = SimpleOutputFlowAsync.init(outputPublisher:outputGenerator:)();
  v4 = Flow.eraseToAnyFlow()();

  return v4;
}

uint64_t closure #1 in InstallVoiceShortcutFlow.makeErrorFlow()(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(closure #1 in InstallVoiceShortcutFlow.makeErrorFlow(), 0, 0);
}

uint64_t closure #1 in InstallVoiceShortcutFlow.makeErrorFlow()()
{
  v1 = v0[2];
  v2 = *(v0[3] + 144);
  OUTLINED_FUNCTION_18_4();
  v4 = *(v3 + 104);
  v1[3] = type metadata accessor for AceOutput();
  v1[4] = &protocol witness table for AceOutput;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1);
  v9 = (v4 + *v4);
  v6 = v4[1];
  v7 = swift_task_alloc();
  v0[4] = v7;
  *v7 = v0;
  v7[1] = closure #1 in InstallVoiceShortcutFlow.makeErrorFlow();

  return v9(boxed_opaque_existential_1);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v2 = *(v1 + 32);
  v3 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v4 = v3;

  OUTLINED_FUNCTION_6_0();

  return v5();
}

uint64_t *InstallVoiceShortcutFlow.deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 12);
  v1 = v0[17];

  v2 = v0[18];

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 19);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 24);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 29);
  return v0;
}

uint64_t InstallVoiceShortcutFlow.__deallocating_deinit()
{
  InstallVoiceShortcutFlow.deinit();

  return swift_deallocClassInstance();
}

uint64_t protocol witness for Flow.execute() in conformance InstallVoiceShortcutFlow(uint64_t a1)
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

uint64_t _s11SiriKitFlow5InputVACs23CustomStringConvertibleAAWlTm_4(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t partial apply for closure #1 in InstallVoiceShortcutFlow.makeErrorFlow()()
{
  OUTLINED_FUNCTION_8_0();
  v3 = v2;
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = protocol witness for RouteConfirmIntentResponseFlowStrategyAsync.makeFailureConfirmingIntentResponse(app:intent:intentResponse:) in conformance CustomIntentRCHFlowStrategy;

  return closure #1 in InstallVoiceShortcutFlow.makeErrorFlow()(v3, v0);
}

uint64_t sub_183014(uint64_t *a1)
{
  v1 = *a1;
  OUTLINED_FUNCTION_18_4();
  return (*(v2 + 152))();
}

uint64_t sub_183054(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  OUTLINED_FUNCTION_18_4();
  return (*(v3 + 160))();
}

uint64_t OUTLINED_FUNCTION_19_17()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v3);
  __swift_destroy_boxed_opaque_existential_1Tm(v2);
  __swift_destroy_boxed_opaque_existential_1Tm(v1);

  return __swift_destroy_boxed_opaque_existential_1Tm(v0);
}

uint64_t OUTLINED_FUNCTION_22_20(float a1)
{
  *v1 = a1;
  *(v2 + 16) = v3;

  return swift_errorRetain();
}

uint64_t SuggestionsCATs.cancel(coldStartSuggestion:appName:appBundleIdentifier:entityType:entityName:description:)()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_5_31(v1, v2, v3, v4, v5, v6, v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v8);
  v10 = *(v9 + 64);
  v11 = OUTLINED_FUNCTION_27();
  v12 = OUTLINED_FUNCTION_48_0(v11);
  v13 = OUTLINED_FUNCTION_47_0(v12);
  v14 = OUTLINED_FUNCTION_46_0(v13);
  *(v0 + 104) = OUTLINED_FUNCTION_115(v14);
  v15 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v15, v16, v17);
}

{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_6_33();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v1 = OUTLINED_FUNCTION_45_0();
  v2 = OUTLINED_FUNCTION_28_13(v1);
  *(v2 + 16) = xmmword_216FA0;
  v3 = OUTLINED_FUNCTION_20_3(v2, "coldStartSuggestion");
  v4 = OUTLINED_FUNCTION_2_6(v3, &type metadata for Bool);
  OUTLINED_FUNCTION_54_0(v4, v5, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v6 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_4_47(v6);
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

  OUTLINED_FUNCTION_29_18();
  OUTLINED_FUNCTION_21_4("appBundleIdentifier");
  outlined init with copy of SpeakableString?(v11, v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_8_29();
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

  v15 = OUTLINED_FUNCTION_1_56();
  outlined init with copy of SpeakableString?(v15, v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_8_4();
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

  v19 = OUTLINED_FUNCTION_3_45();
  outlined init with copy of SpeakableString?(v19, v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_6_5();
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

  v23 = OUTLINED_FUNCTION_0_35();
  outlined init with copy of SpeakableString?(v23, v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_9_5();
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

  v27 = OUTLINED_FUNCTION_22_3(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  v28 = OUTLINED_FUNCTION_19_18(v27);
  *v28 = v29;
  OUTLINED_FUNCTION_11_28(v28);
  OUTLINED_FUNCTION_87();

  return v34(v30, v31, v32, v33, v34, v35, v36, v37);
}

{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_9_0();
  v3 = v2;
  OUTLINED_FUNCTION_4_1();
  *v4 = v3;
  v6 = *(v5 + 120);
  v7 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v8 = v7;
  *(v3 + 128) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_11_1();
    OUTLINED_FUNCTION_87();

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {
    OUTLINED_FUNCTION_26_21();

    OUTLINED_FUNCTION_6_7();
    OUTLINED_FUNCTION_87();

    return v14(v13, v14, v15, v16, v17, v18, v19, v20);
  }
}

uint64_t SuggestionsCATs.close(coldStartSuggestion:appName:appBundleIdentifier:entityType:entityName:description:)()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_5_31(v1, v2, v3, v4, v5, v6, v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v8);
  v10 = *(v9 + 64);
  v11 = OUTLINED_FUNCTION_27();
  v12 = OUTLINED_FUNCTION_48_0(v11);
  v13 = OUTLINED_FUNCTION_47_0(v12);
  v14 = OUTLINED_FUNCTION_46_0(v13);
  *(v0 + 104) = OUTLINED_FUNCTION_115(v14);
  v15 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v15, v16, v17);
}

{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_6_33();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v1 = OUTLINED_FUNCTION_45_0();
  v2 = OUTLINED_FUNCTION_28_13(v1);
  *(v2 + 16) = xmmword_216FA0;
  v3 = OUTLINED_FUNCTION_20_3(v2, "coldStartSuggestion");
  v4 = OUTLINED_FUNCTION_2_6(v3, &type metadata for Bool);
  OUTLINED_FUNCTION_54_0(v4, v5, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v6 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_4_47(v6);
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

  OUTLINED_FUNCTION_29_18();
  OUTLINED_FUNCTION_21_4("appBundleIdentifier");
  outlined init with copy of SpeakableString?(v11, v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_8_29();
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

  v15 = OUTLINED_FUNCTION_1_56();
  outlined init with copy of SpeakableString?(v15, v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_8_4();
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

  v19 = OUTLINED_FUNCTION_3_45();
  outlined init with copy of SpeakableString?(v19, v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_6_5();
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

  v23 = OUTLINED_FUNCTION_0_35();
  outlined init with copy of SpeakableString?(v23, v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_9_5();
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

  v27 = OUTLINED_FUNCTION_22_3(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  v28 = OUTLINED_FUNCTION_19_18(v27);
  *v28 = v29;
  OUTLINED_FUNCTION_18_26(v28);
  OUTLINED_FUNCTION_13_25();
  OUTLINED_FUNCTION_87();

  return v34(v30, v31, v32, v33, v34, v35, v36, v37);
}

uint64_t SuggestionsCATs.create(coldStartSuggestion:appName:appBundleIdentifier:entityType:entityName:description:)()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_5_31(v1, v2, v3, v4, v5, v6, v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v8);
  v10 = *(v9 + 64);
  v11 = OUTLINED_FUNCTION_27();
  v12 = OUTLINED_FUNCTION_48_0(v11);
  v13 = OUTLINED_FUNCTION_47_0(v12);
  v14 = OUTLINED_FUNCTION_46_0(v13);
  *(v0 + 104) = OUTLINED_FUNCTION_115(v14);
  v15 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v15, v16, v17);
}

{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_6_33();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v1 = OUTLINED_FUNCTION_45_0();
  v2 = OUTLINED_FUNCTION_28_13(v1);
  *(v2 + 16) = xmmword_216FA0;
  v3 = OUTLINED_FUNCTION_20_3(v2, "coldStartSuggestion");
  v4 = OUTLINED_FUNCTION_2_6(v3, &type metadata for Bool);
  OUTLINED_FUNCTION_54_0(v4, v5, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v6 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_4_47(v6);
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

  OUTLINED_FUNCTION_29_18();
  OUTLINED_FUNCTION_21_4("appBundleIdentifier");
  outlined init with copy of SpeakableString?(v11, v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_8_29();
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

  v15 = OUTLINED_FUNCTION_1_56();
  outlined init with copy of SpeakableString?(v15, v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_8_4();
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

  v19 = OUTLINED_FUNCTION_3_45();
  outlined init with copy of SpeakableString?(v19, v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_6_5();
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

  v23 = OUTLINED_FUNCTION_0_35();
  outlined init with copy of SpeakableString?(v23, v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_9_5();
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

  v27 = OUTLINED_FUNCTION_22_3(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  v28 = OUTLINED_FUNCTION_19_18(v27);
  *v28 = v29;
  OUTLINED_FUNCTION_11_28(v28);
  OUTLINED_FUNCTION_87();

  return v34(v30, v31, v32, v33, v34, v35, v36, v37);
}

uint64_t SuggestionsCATs.disable(coldStartSuggestion:appName:appBundleIdentifier:entityType:entityName:description:)()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_5_31(v1, v2, v3, v4, v5, v6, v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v8);
  v10 = *(v9 + 64);
  v11 = OUTLINED_FUNCTION_27();
  v12 = OUTLINED_FUNCTION_48_0(v11);
  v13 = OUTLINED_FUNCTION_47_0(v12);
  v14 = OUTLINED_FUNCTION_46_0(v13);
  *(v0 + 104) = OUTLINED_FUNCTION_115(v14);
  v15 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v15, v16, v17);
}

{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  v2 = *(v0 + 104);
  v3 = *(v0 + 24);
  v4 = *(v0 + 136);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v5 = OUTLINED_FUNCTION_45_0();
  v6 = OUTLINED_FUNCTION_28_13(v5);
  *(v6 + 16) = xmmword_216FA0;
  *(v6 + 32) = 0xD000000000000013;
  *(v6 + 40) = 0x8000000000230110;
  *(v6 + 48) = v4;
  *(v6 + 72) = &type metadata for Bool;
  *(v6 + 80) = 0x656D614E707061;
  *(v6 + 88) = 0xE700000000000000;
  OUTLINED_FUNCTION_54_0(v6, v7, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v8 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_4_47(v8);
  if (v9)
  {
    outlined destroy of String?(v2, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_31();
  }

  else
  {
    OUTLINED_FUNCTION_44_1();
    OUTLINED_FUNCTION_13_2();
    v11 = *(v10 + 32);
    OUTLINED_FUNCTION_24_4();
    v12();
  }

  v13 = OUTLINED_FUNCTION_29_18();
  *(v1 + 128) = 0xD000000000000013;
  *(v1 + 136) = 0x8000000000230130;
  outlined init with copy of SpeakableString?(v13, v2, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_8_29();
  if (v9)
  {
    outlined destroy of String?(v2, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_33_1();
  }

  else
  {
    OUTLINED_FUNCTION_55_0();
    OUTLINED_FUNCTION_13_2();
    v15 = *(v14 + 32);
    OUTLINED_FUNCTION_24_4();
    v16();
  }

  v17 = OUTLINED_FUNCTION_1_56();
  outlined init with copy of SpeakableString?(v17, v2, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_8_4();
  if (v9)
  {
    outlined destroy of String?(v2, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_35_1();
  }

  else
  {
    OUTLINED_FUNCTION_53();
    OUTLINED_FUNCTION_13_2();
    v19 = *(v18 + 32);
    OUTLINED_FUNCTION_24_4();
    v20();
  }

  v21 = OUTLINED_FUNCTION_3_45();
  outlined init with copy of SpeakableString?(v21, v2, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_6_5();
  if (v9)
  {
    outlined destroy of String?(v2, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_34_1();
  }

  else
  {
    OUTLINED_FUNCTION_52_0();
    OUTLINED_FUNCTION_13_2();
    v23 = *(v22 + 32);
    OUTLINED_FUNCTION_24_4();
    v24();
  }

  v25 = OUTLINED_FUNCTION_0_35();
  outlined init with copy of SpeakableString?(v25, v2, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_9_5();
  if (v9)
  {
    outlined destroy of String?(v2, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_32_2();
  }

  else
  {
    OUTLINED_FUNCTION_51();
    OUTLINED_FUNCTION_13_2();
    v27 = *(v26 + 32);
    OUTLINED_FUNCTION_24_4();
    v28();
  }

  v29 = OUTLINED_FUNCTION_22_3(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  v30 = OUTLINED_FUNCTION_19_18(v29);
  *v30 = v31;
  OUTLINED_FUNCTION_18_26(v30);
  OUTLINED_FUNCTION_87();

  return v36(v32, v33, v34, v35, v36, v37, v38, v39);
}

uint64_t SuggestionsCATs.enable(coldStartSuggestion:appName:appBundleIdentifier:entityType:entityName:description:)()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_5_31(v1, v2, v3, v4, v5, v6, v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v8);
  v10 = *(v9 + 64);
  v11 = OUTLINED_FUNCTION_27();
  v12 = OUTLINED_FUNCTION_48_0(v11);
  v13 = OUTLINED_FUNCTION_47_0(v12);
  v14 = OUTLINED_FUNCTION_46_0(v13);
  *(v0 + 104) = OUTLINED_FUNCTION_115(v14);
  v15 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v15, v16, v17);
}

{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_6_33();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v1 = OUTLINED_FUNCTION_45_0();
  v2 = OUTLINED_FUNCTION_28_13(v1);
  *(v2 + 16) = xmmword_216FA0;
  v3 = OUTLINED_FUNCTION_20_3(v2, "coldStartSuggestion");
  v4 = OUTLINED_FUNCTION_2_6(v3, &type metadata for Bool);
  OUTLINED_FUNCTION_54_0(v4, v5, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v6 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_4_47(v6);
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

  OUTLINED_FUNCTION_29_18();
  OUTLINED_FUNCTION_21_4("appBundleIdentifier");
  outlined init with copy of SpeakableString?(v11, v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_8_29();
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

  v15 = OUTLINED_FUNCTION_1_56();
  outlined init with copy of SpeakableString?(v15, v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_8_4();
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

  v19 = OUTLINED_FUNCTION_3_45();
  outlined init with copy of SpeakableString?(v19, v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_6_5();
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

  v23 = OUTLINED_FUNCTION_0_35();
  outlined init with copy of SpeakableString?(v23, v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_9_5();
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

  v27 = OUTLINED_FUNCTION_22_3(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  v28 = OUTLINED_FUNCTION_19_18(v27);
  *v28 = v29;
  OUTLINED_FUNCTION_11_28(v28);
  OUTLINED_FUNCTION_87();

  return v34(v30, v31, v32, v33, v34, v35, v36, v37);
}

uint64_t SuggestionsCATs.next(coldStartSuggestion:appName:appBundleIdentifier:entityType:entityName:description:)()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_5_31(v1, v2, v3, v4, v5, v6, v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v8);
  v10 = *(v9 + 64);
  v11 = OUTLINED_FUNCTION_27();
  v12 = OUTLINED_FUNCTION_48_0(v11);
  v13 = OUTLINED_FUNCTION_47_0(v12);
  v14 = OUTLINED_FUNCTION_46_0(v13);
  *(v0 + 104) = OUTLINED_FUNCTION_115(v14);
  v15 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v15, v16, v17);
}

{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_6_33();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v1 = OUTLINED_FUNCTION_45_0();
  v2 = OUTLINED_FUNCTION_28_13(v1);
  *(v2 + 16) = xmmword_216FA0;
  v3 = OUTLINED_FUNCTION_20_3(v2, "coldStartSuggestion");
  v4 = OUTLINED_FUNCTION_2_6(v3, &type metadata for Bool);
  OUTLINED_FUNCTION_54_0(v4, v5, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v6 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_4_47(v6);
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

  OUTLINED_FUNCTION_29_18();
  OUTLINED_FUNCTION_21_4("appBundleIdentifier");
  outlined init with copy of SpeakableString?(v11, v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_8_29();
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

  v15 = OUTLINED_FUNCTION_1_56();
  outlined init with copy of SpeakableString?(v15, v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_8_4();
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

  v19 = OUTLINED_FUNCTION_3_45();
  outlined init with copy of SpeakableString?(v19, v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_6_5();
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

  v23 = OUTLINED_FUNCTION_0_35();
  outlined init with copy of SpeakableString?(v23, v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_9_5();
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

  v27 = OUTLINED_FUNCTION_22_3(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  v28 = OUTLINED_FUNCTION_19_18(v27);
  *v28 = v29;
  OUTLINED_FUNCTION_18_26(v28);
  OUTLINED_FUNCTION_13_25();
  OUTLINED_FUNCTION_87();

  return v34(v30, v31, v32, v33, v34, v35, v36, v37);
}

{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_9_0();
  v3 = v2;
  OUTLINED_FUNCTION_4_1();
  *v4 = v3;
  v6 = *(v5 + 120);
  v7 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v8 = v7;
  *(v3 + 128) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_11_1();
    OUTLINED_FUNCTION_87();

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {
    OUTLINED_FUNCTION_26_21();

    OUTLINED_FUNCTION_6_7();
    OUTLINED_FUNCTION_87();

    return v14(v13, v14, v15, v16, v17, v18, v19, v20);
  }
}

{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  v2 = v0[13];
  v1 = v0[14];
  v4 = v0[11];
  v3 = v0[12];
  v6 = v0[9];
  v5 = v0[10];

  v7 = v0[1];
  v8 = v0[16];
  OUTLINED_FUNCTION_87();

  return v10(v9, v10, v11, v12, v13, v14, v15, v16);
}

uint64_t SuggestionsCATs.open(coldStartSuggestion:appName:appBundleIdentifier:entityType:entityName:description:)()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_5_31(v1, v2, v3, v4, v5, v6, v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v8);
  v10 = *(v9 + 64);
  v11 = OUTLINED_FUNCTION_27();
  v12 = OUTLINED_FUNCTION_48_0(v11);
  v13 = OUTLINED_FUNCTION_47_0(v12);
  v14 = OUTLINED_FUNCTION_46_0(v13);
  *(v0 + 104) = OUTLINED_FUNCTION_115(v14);
  v15 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v15, v16, v17);
}

{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_6_33();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v1 = OUTLINED_FUNCTION_45_0();
  v2 = OUTLINED_FUNCTION_28_13(v1);
  *(v2 + 16) = xmmword_216FA0;
  v3 = OUTLINED_FUNCTION_20_3(v2, "coldStartSuggestion");
  v4 = OUTLINED_FUNCTION_2_6(v3, &type metadata for Bool);
  OUTLINED_FUNCTION_54_0(v4, v5, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v6 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_4_47(v6);
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

  OUTLINED_FUNCTION_29_18();
  OUTLINED_FUNCTION_21_4("appBundleIdentifier");
  outlined init with copy of SpeakableString?(v11, v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_8_29();
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

  v15 = OUTLINED_FUNCTION_1_56();
  outlined init with copy of SpeakableString?(v15, v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_8_4();
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

  v19 = OUTLINED_FUNCTION_3_45();
  outlined init with copy of SpeakableString?(v19, v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_6_5();
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

  v23 = OUTLINED_FUNCTION_0_35();
  outlined init with copy of SpeakableString?(v23, v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_9_5();
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

  v27 = OUTLINED_FUNCTION_22_3(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  v28 = OUTLINED_FUNCTION_19_18(v27);
  *v28 = v29;
  OUTLINED_FUNCTION_18_26(v28);
  OUTLINED_FUNCTION_13_25();
  OUTLINED_FUNCTION_87();

  return v34(v30, v31, v32, v33, v34, v35, v36, v37);
}

uint64_t SuggestionsCATs.previous(coldStartSuggestion:appName:appBundleIdentifier:entityType:entityName:description:)()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_5_31(v1, v2, v3, v4, v5, v6, v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v8);
  v10 = *(v9 + 64);
  v11 = OUTLINED_FUNCTION_27();
  v12 = OUTLINED_FUNCTION_48_0(v11);
  v13 = OUTLINED_FUNCTION_47_0(v12);
  v14 = OUTLINED_FUNCTION_46_0(v13);
  *(v0 + 104) = OUTLINED_FUNCTION_115(v14);
  v15 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v15, v16, v17);
}

{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_6_33();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v1 = OUTLINED_FUNCTION_45_0();
  v2 = OUTLINED_FUNCTION_28_13(v1);
  *(v2 + 16) = xmmword_216FA0;
  v3 = OUTLINED_FUNCTION_20_3(v2, "coldStartSuggestion");
  v4 = OUTLINED_FUNCTION_2_6(v3, &type metadata for Bool);
  OUTLINED_FUNCTION_54_0(v4, v5, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v6 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_4_47(v6);
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

  OUTLINED_FUNCTION_29_18();
  OUTLINED_FUNCTION_21_4("appBundleIdentifier");
  outlined init with copy of SpeakableString?(v11, v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_8_29();
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

  v15 = OUTLINED_FUNCTION_1_56();
  outlined init with copy of SpeakableString?(v15, v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_8_4();
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

  v19 = OUTLINED_FUNCTION_3_45();
  outlined init with copy of SpeakableString?(v19, v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_6_5();
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

  v23 = OUTLINED_FUNCTION_0_35();
  outlined init with copy of SpeakableString?(v23, v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_9_5();
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

  v27 = OUTLINED_FUNCTION_22_3(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  v28 = OUTLINED_FUNCTION_19_18(v27);
  *v28 = v29;
  OUTLINED_FUNCTION_18_26(v28);
  OUTLINED_FUNCTION_13_25();
  OUTLINED_FUNCTION_87();

  return v34(v30, v31, v32, v33, v34, v35, v36, v37);
}

uint64_t SuggestionsCATs.search(coldStartSuggestion:appName:appBundleIdentifier:entityType:entityName:description:)()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_5_31(v1, v2, v3, v4, v5, v6, v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v8);
  v10 = *(v9 + 64);
  v11 = OUTLINED_FUNCTION_27();
  v12 = OUTLINED_FUNCTION_48_0(v11);
  v13 = OUTLINED_FUNCTION_47_0(v12);
  v14 = OUTLINED_FUNCTION_46_0(v13);
  *(v0 + 104) = OUTLINED_FUNCTION_115(v14);
  v15 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v15, v16, v17);
}

{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_6_33();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v1 = OUTLINED_FUNCTION_45_0();
  v2 = OUTLINED_FUNCTION_28_13(v1);
  *(v2 + 16) = xmmword_216FA0;
  v3 = OUTLINED_FUNCTION_20_3(v2, "coldStartSuggestion");
  v4 = OUTLINED_FUNCTION_2_6(v3, &type metadata for Bool);
  OUTLINED_FUNCTION_54_0(v4, v5, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v6 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_4_47(v6);
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

  OUTLINED_FUNCTION_29_18();
  OUTLINED_FUNCTION_21_4("appBundleIdentifier");
  outlined init with copy of SpeakableString?(v11, v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_8_29();
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

  v15 = OUTLINED_FUNCTION_1_56();
  outlined init with copy of SpeakableString?(v15, v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_8_4();
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

  v19 = OUTLINED_FUNCTION_3_45();
  outlined init with copy of SpeakableString?(v19, v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_6_5();
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

  v23 = OUTLINED_FUNCTION_0_35();
  outlined init with copy of SpeakableString?(v23, v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_9_5();
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

  v27 = OUTLINED_FUNCTION_22_3(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  v28 = OUTLINED_FUNCTION_19_18(v27);
  *v28 = v29;
  OUTLINED_FUNCTION_11_28(v28);
  OUTLINED_FUNCTION_87();

  return v34(v30, v31, v32, v33, v34, v35, v36, v37);
}

uint64_t SuggestionsCATs.toggle(coldStartSuggestion:appName:appBundleIdentifier:entityType:entityName:description:)()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_5_31(v1, v2, v3, v4, v5, v6, v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v8);
  v10 = *(v9 + 64);
  v11 = OUTLINED_FUNCTION_27();
  v12 = OUTLINED_FUNCTION_48_0(v11);
  v13 = OUTLINED_FUNCTION_47_0(v12);
  v14 = OUTLINED_FUNCTION_46_0(v13);
  *(v0 + 104) = OUTLINED_FUNCTION_115(v14);
  v15 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v15, v16, v17);
}

{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_6_33();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v1 = OUTLINED_FUNCTION_45_0();
  v2 = OUTLINED_FUNCTION_28_13(v1);
  *(v2 + 16) = xmmword_216FA0;
  v3 = OUTLINED_FUNCTION_20_3(v2, "coldStartSuggestion");
  v4 = OUTLINED_FUNCTION_2_6(v3, &type metadata for Bool);
  OUTLINED_FUNCTION_54_0(v4, v5, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v6 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_4_47(v6);
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

  OUTLINED_FUNCTION_29_18();
  OUTLINED_FUNCTION_21_4("appBundleIdentifier");
  outlined init with copy of SpeakableString?(v11, v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_8_29();
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

  v15 = OUTLINED_FUNCTION_1_56();
  outlined init with copy of SpeakableString?(v15, v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_8_4();
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

  v19 = OUTLINED_FUNCTION_3_45();
  outlined init with copy of SpeakableString?(v19, v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_6_5();
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

  v23 = OUTLINED_FUNCTION_0_35();
  outlined init with copy of SpeakableString?(v23, v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_9_5();
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

  v27 = OUTLINED_FUNCTION_22_3(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  v28 = OUTLINED_FUNCTION_19_18(v27);
  *v28 = v29;
  OUTLINED_FUNCTION_11_28(v28);
  OUTLINED_FUNCTION_87();

  return v34(v30, v31, v32, v33, v34, v35, v36, v37);
}

uint64_t SuggestionsCATs.__allocating_init(templateDir:options:globals:)()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  OUTLINED_FUNCTION_24_4();
  return SuggestionsCATs.init(templateDir:options:globals:)(v3, v4);
}

uint64_t SuggestionsCATs.init(templateDir:options:globals:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CATOption();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v10 = OUTLINED_FUNCTION_14(v9);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  outlined init with copy of SpeakableString?(a1, &v16 - v13, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  (*(v5 + 16))(v8, a2, v4);
  v14 = CATWrapper.init(templateDir:options:globals:)();
  (*(v5 + 8))(a2, v4);
  outlined destroy of String?(a1, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  return v14;
}

uint64_t type metadata accessor for SuggestionsCATs()
{
  result = type metadata singleton initialization cache for SuggestionsCATs;
  if (!type metadata singleton initialization cache for SuggestionsCATs)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_35()
{
  v2 = *(v0 + 72);
  result = *(v0 + 56);
  *(v1 + 272) = 0x7470697263736564;
  *(v1 + 280) = 0xEB000000006E6F69;
  return result;
}

uint64_t OUTLINED_FUNCTION_1_56()
{
  v2 = *(v0 + 88);
  result = *(v0 + 40);
  *(v1 + 176) = 0x7954797469746E65;
  *(v1 + 184) = 0xEA00000000006570;
  return result;
}

uint64_t OUTLINED_FUNCTION_3_45()
{
  v3 = *(v1 + 80);
  result = *(v1 + 48);
  *(v2 + 224) = 0x614E797469746E65;
  *(v2 + 232) = v0;
  return result;
}

uint64_t OUTLINED_FUNCTION_4_47(uint64_t a1)
{
  result = __swift_getEnumTagSinglePayload(v1, 1, a1);
  v4 = *(v2 + 104);
  return result;
}

uint64_t OUTLINED_FUNCTION_5_31(uint64_t result, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v8 + 56) = a7;
  *(v8 + 64) = v7;
  *(v8 + 40) = a5;
  *(v8 + 48) = a6;
  *(v8 + 24) = a3;
  *(v8 + 32) = a4;
  *(v8 + 136) = a2;
  *(v8 + 16) = result;
  return result;
}

void OUTLINED_FUNCTION_6_33()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 24);
  v3 = *(v0 + 136);
}

uint64_t OUTLINED_FUNCTION_8_29()
{
  result = __swift_getEnumTagSinglePayload(v1, 1, v0);
  v4 = *(v2 + 96);
  return result;
}

uint64_t OUTLINED_FUNCTION_11_28(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = *(v2 + 64);
  return *(v2 + 16);
}

uint64_t OUTLINED_FUNCTION_18_26(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = *(v2 + 64);
  return *(v2 + 16);
}

uint64_t OUTLINED_FUNCTION_26_21()
{
  v3 = v0[13];
  v2 = v0[14];
  v5 = v0[11];
  v4 = v0[12];
  v8 = v0 + 9;
  v6 = v0[9];
  v7 = v8[1];
}

uint64_t static VoiceCommandsParity.shouldRequestUnlock(intent:)(void *a1)
{
  v2 = [a1 typeName];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  if (v3 == 0xD000000000000029 && 0x800000000022DD30 == v5)
  {
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v7 & 1) == 0)
    {
      return 0;
    }
  }

  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (!result)
  {
    return result;
  }

  v9 = result;
  v10 = a1;
  v11 = outlined bridged method (pb) of @objc INSendMessageIntent.attachments.getter(v9);
  if (v11)
  {
    v12 = specialized Array.count.getter(v11);

    return v12 != 0;
  }

  return 0;
}

id static VoiceCommandsParity.processIntent(intent:)(void *a1)
{
  v45 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PersonNameComponentsVSgMd, &_s10Foundation20PersonNameComponentsVSgMR);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v38 - v3;
  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  v6 = v45;
  if (!v5)
  {
    goto LABEL_13;
  }

  v44 = v45;
  v7 = outlined bridged method (pb) of @objc INSendMessageIntent.recipients.getter(v5);
  if (!v7)
  {
    goto LABEL_11;
  }

  v8 = v7;
  if (!specialized Array.count.getter(v7))
  {

LABEL_11:
    v14 = v44;
LABEL_12:

    v6 = v45;
    goto LABEL_13;
  }

  specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v8 & 0xC000000000000001) == 0, v8);
  if ((v8 & 0xC000000000000001) != 0)
  {
    v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    v9 = *(v8 + 32);
  }

  v10 = v9;

  v11 = [v10 personHandle];
  if (!v11)
  {

    v14 = v10;
    goto LABEL_12;
  }

  v12 = v11;
  outlined bridged method (pb) of @objc INIntent.identifier.getter(v10, &selRef_contactIdentifier);
  if (v13)
  {
  }

  else
  {
    outlined bridged method (pb) of @objc INIntent.identifier.getter(v12, &selRef_value);
    if (v16)
    {

      v17 = type metadata accessor for PersonNameComponents();
      __swift_storeEnumTagSinglePayload(v4, 1, 1, v17);
      v18 = [v10 image];
      v19 = outlined bridged method (pb) of @objc INIntent.identifier.getter(v10, &selRef_customIdentifier);
      v21 = v20;
      v22 = objc_allocWithZone(INPerson);
      v45 = v12;
      v23 = @nonobjc INPerson.init(personHandle:nameComponents:displayName:image:contactIdentifier:customIdentifier:)(v45, v4, 0, 0, v18, 0, 0, v19, v21);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
      v24 = swift_allocObject();
      *(v24 + 16) = xmmword_216010;
      *(v24 + 32) = v23;
      v43 = v23;
      v42 = [v5 outgoingMessageType];
      v25 = outlined bridged method (pb) of @objc INIntent.identifier.getter(v5, &selRef_content);
      v40 = v26;
      v41 = v25;
      v39 = [v5 speakableGroupName];
      v27 = outlined bridged method (pb) of @objc INIntent.identifier.getter(v5, &selRef_conversationIdentifier);
      v29 = v28;
      v30 = outlined bridged method (pb) of @objc INIntent.identifier.getter(v5, &selRef_serviceName);
      v32 = v31;
      v33 = [v5 sender];
      v34 = outlined bridged method (pb) of @objc INSendMessageIntent.attachments.getter(v5);
      v35 = objc_allocWithZone(INSendMessageIntent);
      v36 = @nonobjc INSendMessageIntent.init(recipients:outgoingMessageType:content:speakableGroupName:conversationIdentifier:serviceName:sender:attachments:)(v24, v42, v41, v40, v39, v27, v29, v30, v32, v33, v34);
      v37 = [v5 _metadata];
      [v36 _setMetadata:v37];

      return v36;
    }
  }

  v6 = v44;
LABEL_13:

  return v6;
}

uint64_t static VoiceCommandsParity.buildDirectInvocationParse(intent:app:)(void *a1)
{
  v3 = OUTLINED_FUNCTION_11_29(a1);
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  LOBYTE(v3) = OUTLINED_FUNCTION_14_27(v4, v5, &outlined read-only object #0 of one-time initialization function for parityIntentsList, v6, v7, v8, v9, v10, v26);

  if (v3)
  {
    if (one-time initialization token for directInvocationIdMapping != -1)
    {
      OUTLINED_FUNCTION_1_57();
    }

    v11 = static VoiceCommandsParity.directInvocationIdMapping;
    v12 = [v1 *(v2 + 2896)];
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    specialized Dictionary.subscript.getter(v13, v15, v11);
    v17 = v16;

    if (v17)
    {
      v18 = App.appIdentifier.getter();
      if (v19)
      {
        v20 = v18;
        v21 = v19;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_216840;
        *(inited + 32) = 0x6449707061;
        *(inited + 40) = 0xE500000000000000;
        *(inited + 48) = v20;
        *(inited + 56) = v21;
        *(inited + 72) = &type metadata for String;
        *(inited + 80) = 0x746E65746E69;
        *(inited + 88) = 0xE600000000000000;
        *(inited + 120) = type metadata accessor for NSError(0, &lazy cache variable for type metadata for INIntent, INIntent_ptr);
        *(inited + 96) = v1;
        v23 = v1;
        Dictionary.init(dictionaryLiteral:)();
        Parse.DirectInvocation.init(identifier:userData:)();
      }

      else
      {
      }
    }
  }

  v24 = type metadata accessor for Parse.DirectInvocation();
  return OUTLINED_FUNCTION_18_27(v24);
}

uint64_t static VoiceCommandsParity.buildNLContextUpdate(intent:app:)(void *a1)
{
  v3 = OUTLINED_FUNCTION_11_29(a1);
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  LOBYTE(v3) = OUTLINED_FUNCTION_14_27(v4, v5, &outlined read-only object #0 of one-time initialization function for parityIntentsList, v6, v7, v8, v9, v10, v24);

  if (v3)
  {
    if (one-time initialization token for domainMapping != -1)
    {
      OUTLINED_FUNCTION_2_49();
    }

    v11 = static VoiceCommandsParity.domainMapping;
    v12 = [v1 *(v2 + 2896)];
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    specialized Dictionary.subscript.getter(v13, v15, v11);
    v17 = v16;

    if (v17)
    {
      App.appIdentifier.getter();
      if (v18)
      {
        NLContextUpdate.init()();
        NLContextUpdate.weightedPromptTargetDomain.setter();
        NLContextUpdate.weightedPromptStrict.setter();
        v19 = type metadata accessor for MachineUtteranceBuilder();
        v20 = *(v19 + 48);
        v21 = *(v19 + 52);
        swift_allocObject();
        MachineUtteranceBuilder.init()();
        dispatch thunk of MachineUtteranceBuilder.addMapping(node:value:)();

        dispatch thunk of MachineUtteranceBuilder.addMapping(node:value:)();

        dispatch thunk of MachineUtteranceBuilder.build()();

        NLContextUpdate.nlInput.setter();
      }

      else
      {
      }
    }
  }

  v22 = type metadata accessor for NLContextUpdate();
  return OUTLINED_FUNCTION_18_27(v22);
}

uint64_t static VoiceCommandsParity.processExecutionResult(intent:executionResult:)(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow13RCHFlowResultOySo17INStartCallIntentCSo0fgH8ResponseCGSgMd, &_s11SiriKitFlow13RCHFlowResultOySo17INStartCallIntentCSo0fgH8ResponseCGSgMR);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v161 - v6;
  v164 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow13RCHFlowResultOySo17INStartCallIntentCSo0fgH8ResponseCGMd, &_s11SiriKitFlow13RCHFlowResultOySo17INStartCallIntentCSo0fgH8ResponseCGMR);
  v8 = OUTLINED_FUNCTION_7_1(v164);
  v162 = v9;
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v8);
  v14 = (&v161 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v12);
  v163 = &v161 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow13RCHFlowResultOySo19INSendMessageIntentCSo0fgH8ResponseCGSgMd, &_s11SiriKitFlow13RCHFlowResultOySo19INSendMessageIntentCSo0fgH8ResponseCGSgMR);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v19 = &v161 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow13RCHFlowResultOySo19INSendMessageIntentCSo0fgH8ResponseCGMd, &_s11SiriKitFlow13RCHFlowResultOySo19INSendMessageIntentCSo0fgH8ResponseCGMR);
  v21 = OUTLINED_FUNCTION_7_1(v20);
  v23 = v22;
  v25 = *(v24 + 64);
  v26 = __chkstk_darwin(v21);
  v28 = (&v161 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v26);
  v165 = a1;
  v166 = &v161 - v29;
  v30 = [a1 typeName];
  v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v33 = v32;

  v34 = v31 == 0xD000000000000029 && 0x800000000022DD30 == v33;
  if (v34 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    outlined init with copy of Any(a2, v167);
    if (swift_dynamicCast())
    {
      __swift_storeEnumTagSinglePayload(v19, 0, 1, v20);
      v35 = v166;
      (*(v23 + 32))(v166, v19, v20);
      (*(v23 + 16))(v28, v35, v20);
      v36 = *(v23 + 88);
      v37 = OUTLINED_FUNCTION_18_15();
      v39 = v38(v37);
      if (v39 == enum case for RCHFlowResult.complete<A, B>(_:))
      {
        v40 = *(v23 + 96);
        v41 = OUTLINED_FUNCTION_18_15();
        v42(v41);
        v43 = *v28;
        v44 = v28[1];
        v45 = v28[2];

        if (one-time initialization token for voiceCommands != -1)
        {
          OUTLINED_FUNCTION_0();
        }

        v46 = type metadata accessor for Logger();
        OUTLINED_FUNCTION_59(v46, static Logger.voiceCommands);
        v47 = v165;
        v48 = v45;
        v49 = Logger.logObject.getter();
        v50 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v49, v50))
        {
          v51 = swift_slowAlloc();
          v52 = swift_slowAlloc();
          *v51 = 138412546;
          *(v51 + 4) = v47;
          *(v51 + 12) = 2112;
          *(v51 + 14) = v48;
          *v52 = v47;
          v52[1] = v48;
          v53 = v47;
          v54 = v48;
          _os_log_impl(&dword_0, v49, v50, "VoiceCommandsParity.processExecutionResult success with intent: %@, intentResponse: %@", v51, 0x16u);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
          swift_arrayDestroy();
          OUTLINED_FUNCTION_15_0();
          OUTLINED_FUNCTION_15_0();
        }

LABEL_12:

        v55 = OUTLINED_FUNCTION_4_48();
        v56(v55);
        return v44;
      }

      if (v39 == enum case for RCHFlowResult.error<A, B>(_:))
      {
        v87 = *(v23 + 96);
        v88 = OUTLINED_FUNCTION_18_15();
        v89(v88);
        v44 = *v28;
        if (one-time initialization token for voiceCommands != -1)
        {
          OUTLINED_FUNCTION_0();
        }

        v90 = type metadata accessor for Logger();
        OUTLINED_FUNCTION_59(v90, static Logger.voiceCommands);
        v49 = Logger.logObject.getter();
        v91 = static os_log_type_t.debug.getter();
        if (OUTLINED_FUNCTION_17_11(v91))
        {
          v92 = OUTLINED_FUNCTION_52();
          OUTLINED_FUNCTION_45(v92);
          OUTLINED_FUNCTION_3_46();
          _os_log_impl(v93, v94, v95, v96, v97, 2u);
          OUTLINED_FUNCTION_15_0();
        }

        goto LABEL_12;
      }

      if (v39 == enum case for RCHFlowResult.cancelled<A, B>(_:))
      {
        if (one-time initialization token for voiceCommands != -1)
        {
          OUTLINED_FUNCTION_0();
        }

        v117 = type metadata accessor for Logger();
        OUTLINED_FUNCTION_59(v117, static Logger.voiceCommands);
        v118 = Logger.logObject.getter();
        v119 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v118, v119))
        {
          v120 = OUTLINED_FUNCTION_52();
          *v120 = 0;
          _os_log_impl(&dword_0, v118, v119, "VoiceCommandsParity.processExecutionResult is cancelled", v120, 2u);
          OUTLINED_FUNCTION_15_0();

          v121 = OUTLINED_FUNCTION_4_48();
          v122(v121);
          return 0;
        }

        v143 = OUTLINED_FUNCTION_4_48();
        v144(v143);
        return 0;
      }

      if (one-time initialization token for voiceCommands != -1)
      {
        OUTLINED_FUNCTION_0();
      }

      v130 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_59(v130, static Logger.voiceCommands);
      v131 = Logger.logObject.getter();
      v132 = static os_log_type_t.debug.getter();
      if (OUTLINED_FUNCTION_17_11(v132))
      {
        v133 = OUTLINED_FUNCTION_52();
        OUTLINED_FUNCTION_45(v133);
        OUTLINED_FUNCTION_3_46();
        _os_log_impl(v134, v135, v136, v137, v138, 2u);
        OUTLINED_FUNCTION_15_0();
      }

      lazy protocol witness table accessor for type VoiceCommandsParityError and conformance VoiceCommandsParityError();
      v44 = swift_allocError();
      *v139 = 3;
      v140 = *(v23 + 8);
      v140(v35, v20);
      v141 = OUTLINED_FUNCTION_18_15();
      (v140)(v141);
      return v44;
    }

    __swift_storeEnumTagSinglePayload(v19, 1, 1, v20);
    v57 = &_s11SiriKitFlow13RCHFlowResultOySo19INSendMessageIntentCSo0fgH8ResponseCGSgMd;
    v58 = &_s11SiriKitFlow13RCHFlowResultOySo19INSendMessageIntentCSo0fgH8ResponseCGSgMR;
    v59 = v19;
    goto LABEL_14;
  }

  if (v31 == 0xD000000000000023 && 0x800000000022DD60 == v33)
  {
  }

  else
  {
    v71 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v71 & 1) == 0)
    {
      if (one-time initialization token for voiceCommands != -1)
      {
        OUTLINED_FUNCTION_0();
      }

      v72 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_59(v72, static Logger.voiceCommands);
      v73 = v165;
      v61 = Logger.logObject.getter();
      v74 = static os_log_type_t.error.getter();

      if (!os_log_type_enabled(v61, v74))
      {
        goto LABEL_19;
      }

      v75 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      v167[0] = v76;
      *v75 = 136315138;
      v77 = [v73 typeName];
      v78 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v80 = v79;

      v81 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v78, v80, v167);

      *(v75 + 4) = v81;
      OUTLINED_FUNCTION_3_46();
      _os_log_impl(v82, v83, v84, v85, v86, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v76);
      OUTLINED_FUNCTION_15_0();
      goto LABEL_18;
    }
  }

  outlined init with copy of Any(a2, v167);
  v98 = v164;
  if (!swift_dynamicCast())
  {
    __swift_storeEnumTagSinglePayload(v7, 1, 1, v98);
    v57 = &_s11SiriKitFlow13RCHFlowResultOySo17INStartCallIntentCSo0fgH8ResponseCGSgMd;
    v58 = &_s11SiriKitFlow13RCHFlowResultOySo17INStartCallIntentCSo0fgH8ResponseCGSgMR;
    v59 = v7;
LABEL_14:
    outlined destroy of String?(v59, v57, v58);
    if (one-time initialization token for voiceCommands != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v60 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_59(v60, static Logger.voiceCommands);
    v61 = Logger.logObject.getter();
    v62 = static os_log_type_t.error.getter();
    if (!OUTLINED_FUNCTION_17_11(v62))
    {
      goto LABEL_19;
    }

    v63 = OUTLINED_FUNCTION_52();
    OUTLINED_FUNCTION_45(v63);
    OUTLINED_FUNCTION_3_46();
    _os_log_impl(v64, v65, v66, v67, v68, 2u);
LABEL_18:
    OUTLINED_FUNCTION_15_0();
LABEL_19:

    lazy protocol witness table accessor for type VoiceCommandsParityError and conformance VoiceCommandsParityError();
    v44 = swift_allocError();
    *v69 = 3;
    return v44;
  }

  __swift_storeEnumTagSinglePayload(v7, 0, 1, v98);
  v100 = v162;
  v99 = v163;
  (*(v162 + 32))(v163, v7, v98);
  (*(v100 + 16))(v14, v99, v98);
  v101 = (*(v100 + 88))(v14, v98);
  if (v101 == enum case for RCHFlowResult.complete<A, B>(_:))
  {
    v102 = OUTLINED_FUNCTION_16_30();
    v103(v102);
    v104 = *v14;
    v44 = v14[1];
    v105 = v14[2];

    if (one-time initialization token for voiceCommands != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v106 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_59(v106, static Logger.voiceCommands);
    v107 = v165;
    v108 = v105;
    v109 = Logger.logObject.getter();
    v110 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v109, v110))
    {
      v111 = swift_slowAlloc();
      v112 = swift_slowAlloc();
      *v111 = 138412546;
      *(v111 + 4) = v107;
      *(v111 + 12) = 2112;
      *(v111 + 14) = v108;
      *v112 = v107;
      v112[1] = v108;
      v113 = v107;
      v114 = v108;
      _os_log_impl(&dword_0, v109, v110, "VoiceCommandsParity.processExecutionResult success with intent: %@, intentResponse: %@", v111, 0x16u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_15_0();
      OUTLINED_FUNCTION_15_0();
    }

LABEL_42:

    v115 = OUTLINED_FUNCTION_8_30();
    v116(v115);
    return v44;
  }

  if (v101 == enum case for RCHFlowResult.error<A, B>(_:))
  {
    v123 = OUTLINED_FUNCTION_16_30();
    v124(v123);
    v44 = *v14;
    if (one-time initialization token for voiceCommands != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v125 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_59(v125, static Logger.voiceCommands);
    v109 = Logger.logObject.getter();
    v126 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_30_1(v126))
    {
      v127 = OUTLINED_FUNCTION_52();
      OUTLINED_FUNCTION_45(v127);
      OUTLINED_FUNCTION_26(&dword_0, v128, v129, "VoiceCommandsParity.processExecutionResult has error");
      OUTLINED_FUNCTION_15_0();
    }

    goto LABEL_42;
  }

  if (v101 == enum case for RCHFlowResult.cancelled<A, B>(_:))
  {
    if (one-time initialization token for voiceCommands != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v145 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_59(v145, static Logger.voiceCommands);
    v146 = Logger.logObject.getter();
    v147 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_30_1(v147))
    {
      v148 = OUTLINED_FUNCTION_52();
      OUTLINED_FUNCTION_45(v148);
      OUTLINED_FUNCTION_26(&dword_0, v149, v150, "VoiceCommandsParity.processExecutionResult is cancelled");
      OUTLINED_FUNCTION_15_0();

      (*(v100 + 8))(v163, v98);
      return 0;
    }

    v159 = OUTLINED_FUNCTION_8_30();
    v160(v159);
    return 0;
  }

  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v151 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_59(v151, static Logger.voiceCommands);
  v152 = Logger.logObject.getter();
  v153 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_30_1(v153))
  {
    v154 = OUTLINED_FUNCTION_52();
    OUTLINED_FUNCTION_45(v154);
    OUTLINED_FUNCTION_26(&dword_0, v155, v156, "VoiceCommandsParity.processExecutionResult has unknown cases");
    v100 = v162;
    OUTLINED_FUNCTION_15_0();
  }

  lazy protocol witness table accessor for type VoiceCommandsParityError and conformance VoiceCommandsParityError();
  v44 = swift_allocError();
  *v157 = 3;
  v158 = *(v100 + 8);
  v158(v163, v98);
  v158(v14, v98);
  return v44;
}

uint64_t one-time initialization function for domainMapping()
{
  result = Dictionary.init(dictionaryLiteral:)();
  static VoiceCommandsParity.domainMapping = result;
  return result;
}

uint64_t *VoiceCommandsParity.domainMapping.unsafeMutableAddressor()
{
  if (one-time initialization token for domainMapping != -1)
  {
    OUTLINED_FUNCTION_2_49();
  }

  return &static VoiceCommandsParity.domainMapping;
}

uint64_t one-time initialization function for directInvocationIdMapping()
{
  result = Dictionary.init(dictionaryLiteral:)();
  static VoiceCommandsParity.directInvocationIdMapping = result;
  return result;
}

uint64_t *VoiceCommandsParity.directInvocationIdMapping.unsafeMutableAddressor()
{
  if (one-time initialization token for directInvocationIdMapping != -1)
  {
    OUTLINED_FUNCTION_1_57();
  }

  return &static VoiceCommandsParity.directInvocationIdMapping;
}

uint64_t static VoiceCommandsParity.domainMapping.getter(void *a1, uint64_t *a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = *a2;
}

id @nonobjc INSendMessageIntent.init(recipients:outgoingMessageType:content:speakableGroupName:conversationIdentifier:serviceName:sender:attachments:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11)
{
  if (a1)
  {
    type metadata accessor for NSError(0, &lazy cache variable for type metadata for INPerson, INPerson_ptr);
    v16.super.isa = Array._bridgeToObjectiveC()().super.isa;

    if (a4)
    {
LABEL_3:
      v17 = String._bridgeToObjectiveC()();

      goto LABEL_6;
    }
  }

  else
  {
    v16.super.isa = 0;
    if (a4)
    {
      goto LABEL_3;
    }
  }

  v17 = 0;
LABEL_6:
  if (a7)
  {
    v18 = String._bridgeToObjectiveC()();
  }

  else
  {
    v18 = 0;
  }

  if (a9)
  {
    v19 = String._bridgeToObjectiveC()();
  }

  else
  {
    v19 = 0;
  }

  if (a11)
  {
    type metadata accessor for NSError(0, &lazy cache variable for type metadata for INSendMessageAttachment, INSendMessageAttachment_ptr);
    v20.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v20.super.isa = 0;
  }

  v21 = [v11 initWithRecipients:v16.super.isa outgoingMessageType:a2 content:v17 speakableGroupName:a5 conversationIdentifier:v18 serviceName:v19 sender:a10 attachments:v20.super.isa];

  return v21;
}

uint64_t outlined bridged method (pb) of @objc INSendMessageIntent.recipients.getter(void *a1)
{
  v1 = [a1 recipients];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  type metadata accessor for NSError(0, &lazy cache variable for type metadata for INPerson, INPerson_ptr);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

_BYTE *storeEnumTagSinglePayload for VoiceCommandsParityError(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x187B18);
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

uint64_t OUTLINED_FUNCTION_1_57()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_2_49()
{

  return swift_once();
}

id OUTLINED_FUNCTION_11_29(void *a1)
{

  return [a1 typeName];
}

BOOL OUTLINED_FUNCTION_14_27(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return specialized Sequence.contains(where:)(v9, &a9, a3);
}

uint64_t OUTLINED_FUNCTION_18_27(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1, v2, 1, a1);
}

uint64_t UsoEntity_common_Number.intValue.getter()
{
  CodeGenBase.entity.getter();
  OUTLINED_FUNCTION_92();
  type metadata accessor for UsoEntity_common_MultipliedNumber();
  OUTLINED_FUNCTION_0_36();

  if (v4)
  {
    UsoEntity_common_MultipliedNumber.intValue.getter();
    OUTLINED_FUNCTION_3_47();
  }

  else
  {
    CodeGenBase.entity.getter();
    OUTLINED_FUNCTION_92();
    type metadata accessor for UsoEntity_common_MixedFraction();
    OUTLINED_FUNCTION_0_36();

    v2 = UsoEntity_common_Number.definedIntValue.getter();
    if (v3)
    {
      CodeGenBase.entity.getter();
      OUTLINED_FUNCTION_92();
      type metadata accessor for UsoEntity_common_Integer();
      OUTLINED_FUNCTION_0_36();

      return 0;
    }

    else
    {
      return v2;
    }
  }

  return v0;
}

uint64_t UsoEntity_common_MultipliedNumber.intValue.getter()
{
  if (dispatch thunk of UsoEntity_common_MultipliedNumber.value.getter() || (result = dispatch thunk of UsoEntity_common_MultipliedNumber.multiplier.getter()) != 0)
  {

    if (!dispatch thunk of UsoEntity_common_MultipliedNumber.value.getter() || (v1 = UsoEntity_common_Number.intValue.getter(), v3 = v2, , (v3 & 1) != 0))
    {
      v1 = 1;
    }

    if (!dispatch thunk of UsoEntity_common_MultipliedNumber.multiplier.getter() || (v4 = UsoEntity_common_Number.definedIntValue.getter(), v6 = v5, , (v6 & 1) != 0))
    {
      v4 = 1;
    }

    result = v1 * v4;
    if ((v1 * v4) >> 64 != (v1 * v4) >> 63)
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t UsoEntity_common_MixedFraction.intValue.getter()
{
  dispatch thunk of UsoEntity_common_MixedFraction.numeratorValue.getter();
  if (v0 & 1) != 0 && (dispatch thunk of UsoEntity_common_MixedFraction.denominatorValue.getter(), (v1))
  {
    return dispatch thunk of UsoEntity_common_MixedFraction.wholeValue.getter();
  }

  else
  {
    return 0;
  }
}

uint64_t UsoEntity_common_Number.definedIntValue.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology23UsoEntity_common_NumberC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_NumberC13DefinedValuesOSgMR);
  v1 = *(*(v0 - 8) + 64);
  v2 = __chkstk_darwin(v0 - 8);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v12 - v5;
  dispatch thunk of UsoEntity_common_Number.definedValue.getter();
  v7 = type metadata accessor for UsoEntity_common_Number.DefinedValues();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    v8 = 0;
  }

  else
  {
    outlined init with copy of UsoEntity_common_Number.DefinedValues?(v6, v4);
    v9 = *(v7 - 8);
    v10 = (*(v9 + 88))(v4, v7);
    if (v10 == enum case for UsoEntity_common_Number.DefinedValues.common_Number_Billion(_:))
    {
      v8 = 1000000000;
    }

    else if (v10 == enum case for UsoEntity_common_Number.DefinedValues.common_Number_Twelve(_:))
    {
      v8 = 12;
    }

    else if (v10 == enum case for UsoEntity_common_Number.DefinedValues.common_Number_Thousand(_:))
    {
      v8 = 1000;
    }

    else if (v10 == enum case for UsoEntity_common_Number.DefinedValues.common_Number_Trillion(_:))
    {
      v8 = 1000000000000;
    }

    else if (v10 == enum case for UsoEntity_common_Number.DefinedValues.common_Number_Million(_:))
    {
      v8 = 1000000;
    }

    else if (v10 == enum case for UsoEntity_common_Number.DefinedValues.common_Number_HundredThousand(_:))
    {
      v8 = 100000;
    }

    else if (v10 == enum case for UsoEntity_common_Number.DefinedValues.common_Number_TenThousand(_:))
    {
      v8 = 10000;
    }

    else if (v10 == enum case for UsoEntity_common_Number.DefinedValues.common_Number_Hundred(_:))
    {
      v8 = 100;
    }

    else if (v10 == enum case for UsoEntity_common_Number.DefinedValues.common_Number_TenMillion(_:))
    {
      v8 = 10000000;
    }

    else
    {
      (*(v9 + 8))(v4, v7);
      v8 = 0;
    }
  }

  outlined destroy of UsoEntity_common_Number.DefinedValues?(v6);
  return v8;
}

uint64_t outlined destroy of UsoEntity_common_Number.DefinedValues?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology23UsoEntity_common_NumberC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_NumberC13DefinedValuesOSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with copy of UsoEntity_common_Number.DefinedValues?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology23UsoEntity_common_NumberC13DefinedValuesOSgMd, &_s12SiriOntology23UsoEntity_common_NumberC13DefinedValuesOSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t UsoEntity_common_Number.doubleValue.getter()
{
  CodeGenBase.entity.getter();
  type metadata accessor for UsoEntity_common_MultipliedNumber();
  OUTLINED_FUNCTION_1_58();

  if (v6)
  {
    v0 = COERCE_DOUBLE(UsoEntity_common_MultipliedNumber.intValue.getter());
    v2 = v1;

    if ((v2 & 1) == 0)
    {
      _sSd7exactlySdSgx_tcSzRzlufCs5Int64V_Tt0g5(*&v0);
      OUTLINED_FUNCTION_3_47();
      return *&v0;
    }
  }

  else
  {
    CodeGenBase.entity.getter();
    type metadata accessor for UsoEntity_common_MixedFraction();
    OUTLINED_FUNCTION_1_58();

    v3 = UsoEntity_common_Number.definedIntValue.getter();
    if ((v4 & 1) == 0)
    {
      v0 = v3;
      return *&v0;
    }

    CodeGenBase.entity.getter();
    type metadata accessor for UsoEntity_common_Decimal();
    OUTLINED_FUNCTION_1_58();

    CodeGenBase.entity.getter();
    OUTLINED_FUNCTION_92();
    type metadata accessor for UsoEntity_common_Integer();
    OUTLINED_FUNCTION_0_36();
  }

  v0 = 0.0;
  return *&v0;
}

uint64_t _sSd7exactlySdSgx_tcSzRzlufCs5Int64V_Tt0g5(uint64_t result)
{
  v1 = result;
  if (result >= 9.22337204e18)
  {
    *&result = 0.0;
    return result;
  }

  if ((~*&v1 & 0x7FF0000000000000) == 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v1 <= -9.22337204e18)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  if (v1 == result)
  {
    *&result = result;
  }

  else
  {
    *&result = 0.0;
  }

  return result;
}

uint64_t UsoEntity_common_MixedFraction.doubleValue.getter()
{
  v0 = dispatch thunk of UsoEntity_common_MixedFraction.numeratorValue.getter();
  v2 = v1;
  v3 = dispatch thunk of UsoEntity_common_MixedFraction.denominatorValue.getter();
  if (v4)
  {
    goto LABEL_4;
  }

  if (!v3)
  {
    v5 = 0.0;
    return *&v5;
  }

  if (v2)
  {
LABEL_4:
    v5 = 0.0;
    v6 = 1;
  }

  else
  {
    v6 = 0;
    v5 = v0 / v3;
  }

  v7 = dispatch thunk of UsoEntity_common_MixedFraction.wholeValue.getter();
  if ((v8 & 1) == 0)
  {
    if (v6)
    {
      v9 = v7;
    }

    else
    {
      v9 = v5 + v7;
    }

    v5 = v9;
  }

  return *&v5;
}

uint64_t _sSdySdSgxcSyRzlufCSS_Tt0g5(uint64_t a1, uint64_t a2)
{
  specialized String.withCString<A>(_:)(a1, a2);

  return 0;
}

_BYTE *closure #1 in closure #1 in Double.init<A>(_:)@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v3 = *result;
  v4 = v3 > 0x20;
  v5 = (1 << v3) & 0x100003E01;
  v6 = v4 || v5 == 0;
  v7 = v6 && (result = _swift_stdlib_strtod_clocale()) != 0 && *result == 0;
  *a2 = v7;
  return result;
}

BOOL specialized String.withCString<A>(_:)(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((a1 & 0x1000000000000000) != 0)
    {
      v3 = *(&stru_20.cmd + (a2 & 0xFFFFFFFFFFFFFFFLL));
      if (v3 < 0x21 && ((0x100003E01uLL >> v3) & 1) != 0)
      {
        return 0;
      }

      goto LABEL_9;
    }

LABEL_13:
    _StringGuts._slowWithCString<A>(_:)();
    if (!v2)
    {
      return v7;
    }

    return v5;
  }

  if (a1 <= 0x20u && ((0x100003E01uLL >> a1) & 1) != 0)
  {
    return 0;
  }

LABEL_9:
  v4 = _swift_stdlib_strtod_clocale();
  if (!v4)
  {
    return 0;
  }

  return *v4 == 0;
}

uint64_t OUTLINED_FUNCTION_0_36()
{

  return static UsoEntity_CodeGenConverter.convertAs<A>(entity:asType:)();
}

uint64_t OUTLINED_FUNCTION_1_58()
{

  return static UsoEntity_CodeGenConverter.convertAs<A>(entity:asType:)();
}

uint64_t CodableAction.init(from:)(uint64_t *a1)
{
  type metadata accessor for CodableAction.CodingKeys();
  OUTLINED_FUNCTION_0_37();
  swift_getWitnessTable();
  v3 = type metadata accessor for KeyedDecodingContainer();
  v4 = OUTLINED_FUNCTION_7_1(v3);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = a1[4];
  v23 = a1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    lazy protocol witness table accessor for type Data and conformance Data();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    type metadata accessor for NSKeyedUnarchiver();
    v10 = static NSKeyedUnarchiver.unarchivedObject<A>(ofClass:from:)();
    v19 = v10;
    if (v10)
    {
      v21 = OUTLINED_FUNCTION_2_50();
      v22(v21);
      outlined consume of Data._Representation(v24, v25);
      goto LABEL_9;
    }

    type metadata accessor for CodableAction.Error();
    swift_getWitnessTable();
    swift_allocError();
    swift_willThrow();
    outlined consume of Data._Representation(v24, v25);
    v8 = OUTLINED_FUNCTION_2_50();
    v9(v8);
  }

  if (one-time initialization token for voiceCommands != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  __swift_project_value_buffer(v11, static Logger.voiceCommands);
  swift_errorRetain();
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v24 = v15;
    *v14 = 136315138;
    swift_getErrorValue();
    v16 = Error.localizedDescription.getter();
    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, &v24);

    *(v14 + 4) = v18;
    _os_log_impl(&dword_0, v12, v13, "Failed to decode LNAction; Error: %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v15);
  }

  else
  {
  }

  v19 = 0;
LABEL_9:
  __swift_destroy_boxed_opaque_existential_1Tm(v23);
  return v19;
}

uint64_t CodableAction.encode(to:)(void *a1, void *a2)
{
  type metadata accessor for CodableAction.CodingKeys();
  OUTLINED_FUNCTION_0_37();
  WitnessTable = swift_getWitnessTable();
  v4 = type metadata accessor for KeyedEncodingContainer();
  v5 = OUTLINED_FUNCTION_7_1(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v5);
  v11 = &v25 - v10;
  v12 = objc_opt_self();
  v28[0] = a2;
  type metadata accessor for Optional();
  v13 = Optional._bridgeToObjectiveC()();
  v28[0] = 0;
  v14 = [v12 archivedDataWithRootObject:v13 requiringSecureCoding:1 error:v28];
  swift_unknownObjectRelease();
  v15 = v28[0];
  if (v14)
  {
    v26 = v7;
    v16 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;

    v19 = a1[3];
    v20 = a1;
    v21 = v4;
    v22 = v20[4];
    __swift_project_boxed_opaque_existential_1(v20, v19);
    dispatch thunk of Encoder.container<A>(keyedBy:)();
    v28[0] = v16;
    v28[1] = v18;
    lazy protocol witness table accessor for type Data and conformance Data();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v26 + 8))(v11, v21);
    return outlined consume of Data._Representation(v16, v18);
  }

  else
  {
    v24 = v15;
    _convertNSErrorToError(_:)();

    return swift_willThrow();
  }
}

BOOL CodableAction.CodingKeys.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of CodableAction.CodingKeys.init(rawValue:), v2);

  return v3 != 0;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance CodableAction<A>.CodingKeys(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return == infix<A>(_:_:)(a1, a2, a3, WitnessTable, &protocol witness table for String);
}

uint64_t protocol witness for Hashable.hashValue.getter in conformance CodableAction<A>.CodingKeys(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return RawRepresentable<>.hashValue.getter(a1, a2, WitnessTable, &protocol witness table for String);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CodableAction<A>.CodingKeys(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return RawRepresentable<>.hash(into:)(a1, a2, a3, WitnessTable, &protocol witness table for String);
}

uint64_t protocol witness for Hashable._rawHashValue(seed:) in conformance CodableAction<A>.CodingKeys(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return RawRepresentable<>._rawHashValue(seed:)(a1, a2, a3, WitnessTable, &protocol witness table for String);
}

BOOL protocol witness for RawRepresentable.init(rawValue:) in conformance CodableAction<A>.CodingKeys@<W0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = CodableAction.CodingKeys.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance CodableAction<A>.CodingKeys@<X0>(_BYTE *a1@<X8>)
{
  result = CodableAction.CodingKeys.init(stringValue:)();
  *a1 = result & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance CodableAction<A>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return CodingKey.description.getter(a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CodableAction<A>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return CodingKey.debugDescription.getter(a1, WitnessTable);
}

uint64_t protocol witness for Decodable.init(from:) in conformance CodableAction<A>@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *(a2 + 16);
  result = CodableAction.init(from:)(a1);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

unint64_t type metadata accessor for NSKeyedUnarchiver()
{
  result = lazy cache variable for type metadata for NSKeyedUnarchiver;
  if (!lazy cache variable for type metadata for NSKeyedUnarchiver)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSKeyedUnarchiver);
  }

  return result;
}

uint64_t type metadata instantiation function for CodableAction()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

_BYTE *storeEnumTagSinglePayload for CodableAction.CodingKeys(_BYTE *result, int a2, int a3)
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
      JUMPOUT(0x189184);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t CodableOption.init(from:)(uint64_t *a1, uint64_t a2)
{
  type metadata accessor for CodableOption.CodingKeys();
  OUTLINED_FUNCTION_0_38();
  swift_getWitnessTable();
  v4 = type metadata accessor for KeyedDecodingContainer();
  v5 = OUTLINED_FUNCTION_7_1(v4);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    lazy protocol witness table accessor for type Data and conformance Data();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v22 = v33[0];
    v21 = v33[1];
    type metadata accessor for NSError(0, &lazy cache variable for type metadata for NSKeyedUnarchiver, NSKeyedUnarchiver_ptr);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlXpGMd, &_ss23_ContiguousArrayStorageCyyXlXpGMR);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_216840;
    *(v23 + 32) = type metadata accessor for NSError(0, &lazy cache variable for type metadata for NSArray, NSArray_ptr);
    *(v23 + 40) = a2;
    static NSKeyedUnarchiver.unarchivedObject(ofClasses:from:)();

    if (v33[3])
    {
      type metadata accessor for Array();
      v24 = v21;
      if (swift_dynamicCast())
      {
        v25 = OUTLINED_FUNCTION_3_48();
        v26(v25);
        outlined consume of Data._Representation(v22, v21);
        v19 = v32;
        goto LABEL_8;
      }
    }

    else
    {
      outlined destroy of Any?(v33);
      v24 = v21;
    }

    if (one-time initialization token for voiceCommands != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v27 = type metadata accessor for Logger();
    __swift_project_value_buffer(v27, static Logger.voiceCommands);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_0, v28, v29, "Failed to decode array of LNChoiceOption", v30, 2u);
    }

    type metadata accessor for CodableOption.Error();
    swift_getWitnessTable();
    swift_allocError();
    swift_willThrow();
    outlined consume of Data._Representation(v22, v24);
    v9 = OUTLINED_FUNCTION_3_48();
    v10(v9);
  }

  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v11 = type metadata accessor for Logger();
  __swift_project_value_buffer(v11, static Logger.voiceCommands);
  swift_errorRetain();
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v33[0] = v15;
    *v14 = 136315138;
    swift_getErrorValue();
    v16 = Error.localizedDescription.getter();
    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, v33);

    *(v14 + 4) = v18;
    _os_log_impl(&dword_0, v12, v13, "Failed to decode LNChoiceOption; Error: %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v15);
  }

  v19 = Array.init()();

LABEL_8:
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v19;
}

uint64_t CodableOption.encode(to:)(void *a1)
{
  type metadata accessor for CodableOption.CodingKeys();
  OUTLINED_FUNCTION_0_38();
  WitnessTable = swift_getWitnessTable();
  v2 = type metadata accessor for KeyedEncodingContainer();
  v3 = OUTLINED_FUNCTION_7_1(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v3);
  v9 = &v20 - v8;
  v10 = objc_opt_self();
  isa = Array._bridgeToObjectiveC()().super.isa;
  v23[0] = 0;
  v12 = [v10 archivedDataWithRootObject:isa requiringSecureCoding:1 error:v23];

  v13 = v23[0];
  if (v12)
  {
    v21 = v5;
    v14 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;

    v17 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    dispatch thunk of Encoder.container<A>(keyedBy:)();
    v23[0] = v14;
    v23[1] = v16;
    lazy protocol witness table accessor for type Data and conformance Data();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v21 + 8))(v9, v2);
    return outlined consume of Data._Representation(v14, v16);
  }

  else
  {
    v19 = v13;
    _convertNSErrorToError(_:)();

    return swift_willThrow();
  }
}

BOOL CodableOption.CodingKeys.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of CodableOption.CodingKeys.init(rawValue:), v2);

  return v3 != 0;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance CodableOption<A>.CodingKeys(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return == infix<A>(_:_:)(a1, a2, a3, WitnessTable, &protocol witness table for String);
}

uint64_t protocol witness for Hashable.hashValue.getter in conformance CodableOption<A>.CodingKeys(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return RawRepresentable<>.hashValue.getter(a1, a2, WitnessTable, &protocol witness table for String);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CodableOption<A>.CodingKeys(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return RawRepresentable<>.hash(into:)(a1, a2, a3, WitnessTable, &protocol witness table for String);
}

uint64_t protocol witness for Hashable._rawHashValue(seed:) in conformance CodableOption<A>.CodingKeys(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return RawRepresentable<>._rawHashValue(seed:)(a1, a2, a3, WitnessTable, &protocol witness table for String);
}

BOOL protocol witness for RawRepresentable.init(rawValue:) in conformance CodableOption<A>.CodingKeys@<W0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = CodableOption.CodingKeys.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance CodableOption<A>.CodingKeys@<X0>(_BYTE *a1@<X8>)
{
  result = CodableOption.CodingKeys.init(stringValue:)();
  *a1 = result & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance CodableOption<A>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return CodingKey.description.getter(a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CodableOption<A>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return CodingKey.debugDescription.getter(a1, WitnessTable);
}

uint64_t protocol witness for Decodable.init(from:) in conformance CodableOption<A>@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = CodableOption.init(from:)(a1, *(a2 + 16));
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t protocol witness for Encodable.encode(to:) in conformance CodableOption<A>(void *a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(a2 + 16);
  return CodableOption.encode(to:)(a1);
}

uint64_t type metadata instantiation function for CodableOption()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

_BYTE *storeEnumTagSinglePayload for CodableOption.CodingKeys(_BYTE *result, int a2, int a3)
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
      JUMPOUT(0x189DF8);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

id VoiceCommandsNLIntent.VoiceCommandUnit.unitType.getter(char a1)
{
  v1 = off_2A0700[a1];
  v2 = *off_2A0440[a1];
  v3 = [objc_opt_self() *v1];

  return v3;
}

uint64_t Logger.logAndCrash(_:file:line:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v33 = a6;
  v34 = a4;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s2os6LoggerVSgMd, &_s2os6LoggerVSgMR);
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11 - 8);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v30 - v16;
  v18 = type metadata accessor for Logger();
  v19 = *(v18 - 8);
  (*(v19 + 16))(v17, v7, v18);
  __swift_storeEnumTagSinglePayload(v17, 0, 1, v18);
  outlined init with copy of Logger?(v17, v15);
  if (__swift_getEnumTagSinglePayload(v15, 1, v18) == 1)
  {
    outlined destroy of Logger?(v15);
  }

  else
  {

    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v32 = a3;
      v23 = v22;
      v31 = swift_slowAlloc();
      v35 = v31;
      *v23 = 136315650;
      v24 = StaticString.description.getter();
      v30 = v20;
      v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v25, &v35);

      *(v23 + 4) = v26;
      *(v23 + 12) = 2048;
      *(v23 + 14) = v33;
      *(v23 + 22) = 2080;
      *(v23 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, &v35);
      v27 = v21;
      v28 = v30;
      _os_log_impl(&dword_0, v30, v27, "FatalError at %s:%lu - %s", v23, 0x20u);
      swift_arrayDestroy();
    }

    else
    {
    }

    (*(v19 + 8))(v15, v18);
  }

  static SiriKitLifecycle._logCrashToEventBus(_:)();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t one-time initialization function for voiceCommands()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logger.voiceCommands);
  __swift_project_value_buffer(v0, static Logger.voiceCommands);
  return Logger.init(subsystem:category:)();
}

{
  v0 = type metadata accessor for OSSignposter();
  __swift_allocate_value_buffer(v0, static Signposter.voiceCommands);
  __swift_project_value_buffer(v0, static Signposter.voiceCommands);
  return OSSignposter.init(subsystem:category:)();
}

uint64_t one-time initialization function for linkUI()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logger.linkUI);
  __swift_project_value_buffer(v0, static Logger.linkUI);
  return Logger.init(subsystem:category:)();
}

uint64_t one-time initialization function for siriKitUI()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logger.siriKitUI);
  __swift_project_value_buffer(v0, static Logger.siriKitUI);
  return Logger.init(subsystem:category:)();
}

uint64_t Logger.voiceCommands.unsafeMutableAddressor(void *a1, uint64_t a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();

  return __swift_project_value_buffer(v3, a2);
}

uint64_t static Logger.voiceCommands.getter@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t AutoShortcutFirstRunWatchVisual.bundleId.getter()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);

  return OUTLINED_FUNCTION_22();
}

uint64_t AutoShortcutFirstRunVisual.response.getter()
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

  return _swift_task_switch(AutoShortcutFirstRunVisual.response.getter, 0, 0);
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
  *(v0 + 304) = 1;
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

uint64_t AutoShortcutFirstRunVisual.data.getter()
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

  return AutoShortcutFirstRunVisual.response.getter();
}

uint64_t getEnumTagSinglePayload for AutoShortcutFirstRunVisual(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 88))
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

uint64_t storeEnumTagSinglePayload for AutoShortcutFirstRunVisual(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double OUTLINED_FUNCTION_5_32@<D0>(uint64_t a1@<X8>)
{
  *(v2 - 168) = a1;
  *(v2 - 160) = v1;
  *(v2 - 96) = 0;
  result = 0.0;
  *(v2 - 128) = 0u;
  *(v2 - 112) = 0u;
  return result;
}

uint64_t WorkflowCarplaySnippetProvider.makeSnippetForShowAlert(dialogRequest:appBundleId:shortcutName:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = a3;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t WorkflowCarplaySnippetProvider.makeSnippetForShowAlert(dialogRequest:appBundleId:shortcutName:)()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = [objc_allocWithZone(SAIntentGroupSnippet) init];
  outlined bridged method (mbgnn) of @objc SAIntentGroupSnippet.appId.setter(v1, v2, v3);
  v4 = v0[1];

  return v4(v3);
}

uint64_t WorkflowCarplaySnippetProvider.buildIntentSnippet(intent:intentResponse:shortcutName:)()
{
  if (one-time initialization token for voiceCommands != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.voiceCommands);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "#WorkflowCarplaySnippetProvider Creating empty snippet", v4, 2u);
  }

  v5 = *(v0 + 16);

  v6 = outlined bridged method (pb) of @objc INIntent.launchId.getter(v5);
  if (v7)
  {
    v8 = v6;
    v9 = v7;
    v10 = [objc_allocWithZone(SAIntentGroupSnippet) init];
    outlined bridged method (mbgnn) of @objc SAIntentGroupSnippet.appId.setter(v8, v9, v10);
  }

  else
  {
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_0, v11, v12, "#WorkflowCarplaySnippetProvider cannot get appBundleId from intent", v13, 2u);
    }

    v10 = 0;
  }

  v14 = *(v0 + 8);

  return v14(v10);
}

uint64_t WorkflowCarplaySnippetProvider.makeDisambiguationViews(disambiguationItems:shortcutName:appBundleId:utteranceViews:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[32] = a4;
  v5[33] = a5;
  v5[31] = a1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t WorkflowCarplaySnippetProvider.makeDisambiguationViews(disambiguationItems:shortcutName:appBundleId:utteranceViews:)()
{
  v1 = *(v0 + 248);
  v2 = *(v1 + 16);
  v3 = &off_2B4000;
  if (v2)
  {
    specialized ContiguousArray.reserveCapacity(_:)();
    type metadata accessor for NSError(0, &lazy cache variable for type metadata for SKIDirectInvocationPayload, SKIDirectInvocationPayload_ptr);
    v32 = objc_opt_self();
    v4 = (v1 + 32);
    v31 = SAInputOriginDialogButtonTapValue;
    do
    {
      v33 = *(v0 + 256);
      v34 = *(v0 + 264);
      v6 = v4[1];
      v5 = v4[2];
      v7 = *v4;
      *(v0 + 144) = *(v4 + 6);
      *(v0 + 112) = v6;
      *(v0 + 128) = v5;
      *(v0 + 96) = v7;
      v8 = *(v0 + 96);
      v9 = *(v0 + 104);
      v10 = objc_allocWithZone(SAUIListItem);
      outlined init with copy of WFChooseFromListDisambiguationItem(v0 + 96, v0 + 152);
      v35 = [v10 init];
      v11 = specialized DisambiguationItemProtocol.toDisplayString()();
      outlined bridged method (mbnn) of @objc SAUIButton.text.setter(v11, v12, v35, &selRef_setTitle_);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_216850;
      *(inited + 32) = 0x656C746974;
      *(inited + 40) = 0xE500000000000000;
      *(inited + 72) = &type metadata for String;
      *(inited + 48) = v8;
      *(inited + 56) = v9;

      v14 = Dictionary.init(dictionaryLiteral:)();
      v15 = SKIDirectInvocationPayload.__allocating_init(identifier:)();
      specialized _dictionaryUpCast<A, B, C, D>(_:)(v14);
      v17 = v16;

      outlined bridged method (mbnn) of @objc SKIDirectInvocationPayload.userData.setter(v17, v15);
      static Device.current.getter();
      v18 = *(v0 + 240);
      __swift_project_boxed_opaque_existential_1((v0 + 208), *(v0 + 232));
      v19 = DeviceState.asInvocationContext.getter();
      [v19 setInputOrigin:v31];
      v20 = [v32 runSiriKitExecutorCommandWithContext:v19 payload:v15];
      v21 = [objc_allocWithZone(SAIntentGroupSiriKitAppSelectionState) init];
      v22 = [objc_allocWithZone(SASyncAppIdentifyingInfo) init];
      v23 = String._bridgeToObjectiveC()();
      [v22 setBundleId:v23];

      [v21 setRequestedApp:v22];
      [v20 setAppSelectionState:v21];

      v24 = [v32 wrapCommandInStartLocalRequest:v20];
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 208));
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
      v25 = OUTLINED_FUNCTION_64();
      *(v25 + 16) = xmmword_216010;
      *(v25 + 32) = v24;
      outlined bridged method (mbnn) of @objc SAUIButton.commands.setter(v25, v35);

      outlined destroy of WFChooseFromListDisambiguationItem(v0 + 96);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v26 = _swiftEmptyArrayStorage[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v4 = (v4 + 56);
      --v2;
    }

    while (v2);
    v3 = &off_2B4000;
  }

  v27 = [objc_allocWithZone(SAUIDisambiguationList) v3[288]];
  outlined bridged method (mbnn) of @objc SAUIConfirmationOptions.allConfirmationOptions.setter(_swiftEmptyArrayStorage, v27, &lazy cache variable for type metadata for SAUIListItem, SAUIListItem_ptr, &selRef_setItems_);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v28 = OUTLINED_FUNCTION_64();
  *(v28 + 16) = xmmword_216010;
  *(v28 + 32) = v27;
  v29 = *(v0 + 8);

  return v29();
}

id WorkflowCarplaySnippetProvider.makeConfirmationOptions(confirmationButtonText:cancelButtonText:appBundleId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  static Device.current.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_216850;
  strcpy((inited + 32), "confirmation");
  *(inited + 45) = 0;
  *(inited + 46) = -5120;
  *(inited + 72) = &type metadata for String;
  *(inited + 48) = 7562617;
  *(inited + 56) = 0xE300000000000000;
  v5 = Dictionary.init(dictionaryLiteral:)();
  type metadata accessor for NSError(0, &lazy cache variable for type metadata for SKIDirectInvocationPayload, SKIDirectInvocationPayload_ptr);
  v6 = SKIDirectInvocationPayload.__allocating_init(identifier:)();
  specialized _dictionaryUpCast<A, B, C, D>(_:)(v5);
  v8 = v7;

  outlined bridged method (mbnn) of @objc SKIDirectInvocationPayload.userData.setter(v8, v6);
  __swift_project_boxed_opaque_existential_1(v49, v50);
  v9 = DeviceState.asInvocationContext.getter();
  v10 = SAInputOriginDialogButtonTapValue;
  [v9 setInputOrigin:SAInputOriginDialogButtonTapValue];
  v11 = objc_opt_self();
  v12 = [v11 runSiriKitExecutorCommandWithContext:v9 payload:v6];
  v13 = [objc_allocWithZone(SAIntentGroupSiriKitAppSelectionState) init];
  v14 = [objc_allocWithZone(SASyncAppIdentifyingInfo) init];
  v15 = String._bridgeToObjectiveC()();
  [v14 setBundleId:v15];

  [v13 setRequestedApp:v14];
  [v12 setAppSelectionState:v13];

  v16 = [v11 wrapCommandInStartLocalRequest:v12];
  __swift_destroy_boxed_opaque_existential_1Tm(v49);
  static Device.current.getter();
  v17 = swift_initStackObject();
  *(v17 + 16) = xmmword_216850;
  strcpy((v17 + 32), "confirmation");
  *(v17 + 45) = 0;
  *(v17 + 46) = -5120;
  *(v17 + 72) = &type metadata for String;
  *(v17 + 48) = 0x6C65636E6163;
  *(v17 + 56) = 0xE600000000000000;
  v18 = Dictionary.init(dictionaryLiteral:)();
  v19 = SKIDirectInvocationPayload.__allocating_init(identifier:)();
  specialized _dictionaryUpCast<A, B, C, D>(_:)(v18);
  v21 = v20;

  outlined bridged method (mbnn) of @objc SKIDirectInvocationPayload.userData.setter(v21, v19);
  __swift_project_boxed_opaque_existential_1(v49, v50);
  v22 = DeviceState.asInvocationContext.getter();
  [v22 setInputOrigin:v10];
  v23 = [v11 runSiriKitExecutorCommandWithContext:v22 payload:v19];
  v24 = [objc_allocWithZone(SAIntentGroupSiriKitAppSelectionState) init];
  v25 = [objc_allocWithZone(SASyncAppIdentifyingInfo) init];
  v26 = String._bridgeToObjectiveC()();
  [v25 setBundleId:v26];

  [v24 setRequestedApp:v25];
  [v23 setAppSelectionState:v24];

  v27 = [v11 wrapCommandInStartLocalRequest:v23];
  __swift_destroy_boxed_opaque_existential_1Tm(v49);
  v28 = [objc_allocWithZone(SAUIConfirmationOption) init];
  outlined bridged method (mbgnn) of @objc SAUIConfirmationOption.label.setter(a1, a2, v28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v29 = OUTLINED_FUNCTION_64();
  *(v29 + 16) = xmmword_216010;
  *(v29 + 32) = v16;
  v30 = v16;
  outlined bridged method (mbnn) of @objc SAUIButton.commands.setter(v29, v28);
  v31 = [objc_allocWithZone(SAUIConfirmationOption) init];
  outlined bridged method (mbgnn) of @objc SAUIConfirmationOption.label.setter(a3, a4, v31);
  v32 = OUTLINED_FUNCTION_64();
  *(v32 + 16) = xmmword_216010;
  *(v32 + 32) = v27;
  v33 = v27;
  outlined bridged method (mbnn) of @objc SAUIButton.commands.setter(v32, v31);
  v34 = [objc_allocWithZone(SAUIConfirmationOptions) init];
  v35 = outlined bridged method (pb) of @objc SAUIConfirmationOption.label.getter(v28);
  if (v36)
  {
    String._bridgeToObjectiveC()();
    v35 = OUTLINED_FUNCTION_2_52();
  }

  else
  {
    v32 = 0;
  }

  OUTLINED_FUNCTION_3_49(v35, "setConfirmText:");

  v37 = outlined bridged method (pb) of @objc SAUIConfirmationOption.commands.getter(v28);
  if (v37)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20SAClientBoundCommand_pMd, &_sSo20SAClientBoundCommand_pMR);
    Array._bridgeToObjectiveC()();
    v37 = OUTLINED_FUNCTION_2_52();
  }

  else
  {
    v32 = 0;
  }

  OUTLINED_FUNCTION_3_49(v37, "setConfirmCommands:");

  v38 = outlined bridged method (pb) of @objc SAUIConfirmationOption.label.getter(v31);
  if (v39)
  {
    String._bridgeToObjectiveC()();
    v38 = OUTLINED_FUNCTION_2_52();
  }

  else
  {
    v32 = 0;
  }

  OUTLINED_FUNCTION_3_49(v38, "setDenyText:");

  v40 = outlined bridged method (pb) of @objc SAUIConfirmationOption.commands.getter(v31);
  if (v40)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20SAClientBoundCommand_pMd, &_sSo20SAClientBoundCommand_pMR);
    Array._bridgeToObjectiveC()();
    v40 = OUTLINED_FUNCTION_2_52();
  }

  else
  {
    v32 = 0;
  }

  OUTLINED_FUNCTION_3_49(v40, "setDenyCommands:");

  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_224CE0;
  *(v41 + 32) = v28;
  *(v41 + 40) = v31;
  v42 = v28;
  v43 = v31;
  outlined bridged method (mbnn) of @objc SAUIConfirmationOptions.allConfirmationOptions.setter(v41, v34, &lazy cache variable for type metadata for SAUIConfirmationOption, SAUIConfirmationOption_ptr, &selRef_setAllConfirmationOptions_);
  outlined bridged method (mbnn) of @objc SAUIButton.text.setter(2037278020, 0xE400000000000000, v34, &selRef_setCancelTrigger_);

  return v34;
}

void outlined bridged method (mbgnn) of @objc SAUIConfirmationOption.label.setter(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = String._bridgeToObjectiveC()();
  [a3 setLabel:v4];
}

uint64_t outlined bridged method (pb) of @objc SAUIConfirmationOption.label.getter(void *a1)
{
  v1 = [a1 label];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t outlined bridged method (pb) of @objc SAUIConfirmationOption.commands.getter(void *a1)
{
  v1 = [a1 commands];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20SAClientBoundCommand_pMd, &_sSo20SAClientBoundCommand_pMR);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

void outlined bridged method (mbnn) of @objc SAUIConfirmationOptions.allConfirmationOptions.setter(uint64_t a1, void *a2, unint64_t *a3, uint64_t *a4, SEL *a5)
{
  type metadata accessor for NSError(0, a3, a4);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [a2 *a5];
}

void outlined bridged method (mbgnn) of @objc SAIntentGroupSnippet.appId.setter(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = String._bridgeToObjectiveC()();
  [a3 setAppId:v4];
}

uint64_t OUTLINED_FUNCTION_2_52()
{
}

id OUTLINED_FUNCTION_3_49(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

_OWORD *CustomIntentDisambiguationItem.getRawValue()@<X0>(uint64_t a1@<X8>)
{
  outlined init with copy of CustomIntentDisambiguationRawValue(v1 + 48, v6);
  if (v7)
  {
    return outlined init with take of Any(v6, a1);
  }

  v4 = *&v6[0];

  v5 = [objc_allocWithZone(NSNumber) initWithInteger:v4];
  result = type metadata accessor for NSNumber();
  *(a1 + 24) = result;
  *a1 = v5;
  return result;
}

unint64_t type metadata accessor for NSNumber()
{
  result = lazy cache variable for type metadata for NSNumber;
  if (!lazy cache variable for type metadata for NSNumber)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSNumber);
  }

  return result;
}

uint64_t Array<A>.toDisambiguationItemModels(intent:parameterName:)()
{
  OUTLINED_FUNCTION_8_0();
  v0[16] = v1;
  v0[17] = v2;
  v0[14] = v3;
  v0[15] = v4;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit14VisualPropertyVSgMd, &_s10SnippetKit14VisualPropertyVSgMR) - 8) + 64) + 15;
  v0[18] = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v6, v7, v8);
}

{
  *(v0 + 104) = _swiftEmptyArrayStorage;
  v1 = v0 + 104;
  v2 = *(v0 + 136);
  v3 = *(v2 + 16);
  *(v0 + 152) = v3;
  if (v3)
  {
    v4 = v0 + 16;
    v5 = type metadata accessor for CATSpeakableString();
    v6 = 0;
    *(v0 + 160) = v5;
    v57 = 0x800000000022FEE0;
    while (1)
    {
      *(v0 + 168) = v6;
      v8 = *(v0 + 120);
      v7 = *(v0 + 128);
      v9 = *(v0 + 112);
      outlined init with copy of CustomIntentDisambiguationItem(v2 + 88 * v6 + 32, v4);
      static CATSpeakableString.stripTTSHint(print:)(*(v0 + 16), *(v0 + 24), v10, v11, v12, v13, v14, v15, v54, v56, v57);
      v17 = v16;
      v19 = v18;
      *(v0 + 176) = v16;
      *(v0 + 184) = v18;
      v20 = static SLFDisambiguationItemConverter.toDirectInvocationPayloadData(intent:chosenItem:parameterName:)(v9, v4, v8, v7);
      *(v0 + 192) = v20;
      if (v20)
      {
        v27 = 0;
        v17 = 0xD000000000000043;
        v19 = v57;
      }

      else
      {

        v27 = 2;
      }

      *(v0 + 97) = v27;
      *(v0 + 200) = v17;
      *(v0 + 208) = v19;
      v28 = *(v0 + 32);
      v29 = *(v0 + 40);
      if (v29)
      {
        v30 = *(v0 + 160);
        static CATSpeakableString.stripTTSHint(print:)(v28, v29, v21, v22, v23, v24, v25, v26, v55, v56, v57);
      }

      *(v0 + 216) = v28;
      *(v0 + 224) = v29;
      if (*(v0 + 48))
      {
        break;
      }

      v31 = *(v0 + 144);
      v32 = type metadata accessor for VisualProperty();
      OUTLINED_FUNCTION_63_7(v32);
      v33 = *(v0 + 216);
      v58 = *(v0 + 224);
      v34 = *(v0 + 97);
      v36 = *(v0 + 200);
      v35 = *(v0 + 208);
      v37 = v1;
      v39 = *(v0 + 184);
      v38 = *(v0 + 192);
      v40 = *(v0 + 176);
      v41 = *(v0 + 144);
      v42 = type metadata accessor for WorkflowDataModels.DisambiguationItemModel(0);
      OUTLINED_FUNCTION_66(v42);
      v43 = v39;
      v1 = v37;
      WorkflowDataModels.DisambiguationItemModel.init(title:subtitle:thumbnail:invocationCommand:)(v40, v43, v33, v58, v41, v36, v35, v38, v34);

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*(&dword_10 + (*(v0 + 104) & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*(v0 + 104) & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      v44 = *(v0 + 152);
      v45 = *(v0 + 168) + 1;
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v46 = *(v0 + 104);
      v4 = v0 + 16;
      outlined destroy of CustomIntentDisambiguationItem(v0 + 16);
      if (v45 == v44)
      {
        goto LABEL_13;
      }

      v47 = *(v0 + 160);
      v6 = *(v0 + 168) + 1;
      v2 = *(v0 + 136);
    }

    v52 = swift_task_alloc();
    *(v0 + 232) = v52;
    *v52 = v0;
    v53 = OUTLINED_FUNCTION_0_40(v52);

    return INImage.convertToVisualProperty()(v53);
  }

  else
  {
LABEL_13:
    v48 = *(v0 + 144);

    v49 = OUTLINED_FUNCTION_10_15();

    return v50(v49);
  }
}

{
  OUTLINED_FUNCTION_8_0();
  v1 = *(*v0 + 232);
  v6 = *v0;

  v2 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v2, v3, v4);
}

{
  v49 = 0x800000000022FEE0;
  v50 = type metadata accessor for WorkflowDataModels.DisambiguationItemModel(0);
  while (1)
  {
    v2 = *(v0 + 216);
    v1 = *(v0 + 224);
    v3 = *(v0 + 97);
    v5 = *(v0 + 200);
    v4 = *(v0 + 208);
    v7 = *(v0 + 184);
    v6 = *(v0 + 192);
    v8 = *(v0 + 176);
    v9 = *(v0 + 144);
    OUTLINED_FUNCTION_66(v50);
    WorkflowDataModels.DisambiguationItemModel.init(title:subtitle:thumbnail:invocationCommand:)(v8, v7, v2, v1, v9, v5, v4, v6, v3);

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*(&dword_10 + (*(v0 + 104) & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*(v0 + 104) & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    v10 = *(v0 + 152);
    v11 = *(v0 + 168) + 1;
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    v12 = *(v0 + 104);
    outlined destroy of CustomIntentDisambiguationItem(v0 + 16);
    if (v11 == v10)
    {
      break;
    }

    v14 = *(v0 + 160);
    v13 = *(v0 + 168);
    *(v0 + 168) = v13 + 1;
    v15 = *(v0 + 128);
    v17 = *(v0 + 112);
    v16 = *(v0 + 120);
    outlined init with copy of CustomIntentDisambiguationItem(*(v0 + 136) + 88 * v13 + 120, v0 + 16);
    static CATSpeakableString.stripTTSHint(print:)(*(v0 + 16), *(v0 + 24), v18, v19, v20, v21, v22, v23, v47, v49, v50);
    v25 = v24;
    v27 = v26;
    *(v0 + 176) = v24;
    *(v0 + 184) = v26;
    v28 = static SLFDisambiguationItemConverter.toDirectInvocationPayloadData(intent:chosenItem:parameterName:)(v17, v0 + 16, v16, v15);
    *(v0 + 192) = v28;
    if (v28)
    {
      v35 = 0;
      v25 = 0xD000000000000043;
      v27 = v49;
    }

    else
    {

      v35 = 2;
    }

    *(v0 + 97) = v35;
    *(v0 + 200) = v25;
    *(v0 + 208) = v27;
    v36 = *(v0 + 32);
    v37 = *(v0 + 40);
    if (v37)
    {
      v38 = *(v0 + 160);
      static CATSpeakableString.stripTTSHint(print:)(v36, v37, v29, v30, v31, v32, v33, v34, v48, v49, v50);
    }

    *(v0 + 216) = v36;
    *(v0 + 224) = v37;
    if (*(v0 + 48))
    {
      v45 = swift_task_alloc();
      *(v0 + 232) = v45;
      *v45 = v0;
      v46 = OUTLINED_FUNCTION_0_40();

      return INImage.convertToVisualProperty()(v46);
    }

    v39 = *(v0 + 144);
    v40 = type metadata accessor for VisualProperty();
    OUTLINED_FUNCTION_63_7(v40);
  }

  v41 = *(v0 + 144);

  v42 = OUTLINED_FUNCTION_10_15();

  return v43(v42);
}

uint64_t CustomIntentDisambiguationItem.init(component:rawValue:)@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v5 = a1[1];
  *a3 = *a1;
  a3[1] = v5;
  a3[2] = a1[2];
  outlined init with copy of CustomIntentDisambiguationRawValue(a2, (a3 + 3));
  outlined init with copy of CustomIntentDisambiguationRawValue((a3 + 3), v8);
  if (v10 == 1)
  {
    outlined destroy of CustomIntentDisambiguationRawValue(a2);
    v6 = v8;
  }

  else
  {
    specialized Array.append<A>(contentsOf:)(v9);
    v6 = a2;
  }

  return outlined destroy of CustomIntentDisambiguationRawValue(v6);
}

uint64_t CustomIntentDisambiguationItem.getVoiceCommandPayloadsForItem()()
{
  v1 = type metadata accessor for UsoEntityBuilder_common_VoiceCommandPayload();
  OUTLINED_FUNCTION_66(v1);
  UsoEntityBuilder_common_VoiceCommandPayload.init()();
  type metadata accessor for CATSpeakableString();
  static CATSpeakableString.stripTTSHint(print:)(*v0, v0[1], v2, v3, v4, v5, v6, v7, v17, _swiftEmptyArrayStorage, v19);
  dispatch thunk of UsoEntityBuilder_common_VoiceCommandPayload.setStringValue(value:)();

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*(&dword_10 + (v18 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v18 & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v8 = v0[5];
  v9 = *(v8 + 16);
  if (v9)
  {
    specialized ContiguousArray.reserveCapacity(_:)();
    v10 = (v8 + 40);
    do
    {
      v11 = *(v10 - 1);
      v12 = *v10;
      v13 = *(v1 + 48);
      v14 = *(v1 + 52);
      swift_allocObject();

      UsoEntityBuilder_common_VoiceCommandPayload.init()();
      dispatch thunk of UsoEntityBuilder_common_VoiceCommandPayload.setStringValue(value:)();

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v15 = _swiftEmptyArrayStorage[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v10 += 2;
      --v9;
    }

    while (v9);
  }

  specialized Array.append<A>(contentsOf:)(_swiftEmptyArrayStorage);

  return v18;
}

uint64_t CustomIntentDisambiguationItem.toDisambiguationItemModel(intent:parameterName:)()
{
  OUTLINED_FUNCTION_8_0();
  v1[4] = v2;
  v1[5] = v0;
  v1[2] = v3;
  v1[3] = v4;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit14VisualPropertyVSgMd, &_s10SnippetKit14VisualPropertyVSgMR) - 8) + 64) + 15;
  v1[6] = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v6, v7, v8);
}

{
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);
  type metadata accessor for CATSpeakableString();
  static CATSpeakableString.stripTTSHint(print:)(*v1, v1[1], v5, v6, v7, v8, v9, v10, v36, v38, v40);
  v12 = v11;
  v14 = v13;
  *(v0 + 56) = v11;
  *(v0 + 64) = v13;
  v15 = static SLFDisambiguationItemConverter.toDirectInvocationPayloadData(intent:chosenItem:parameterName:)(v4, v1, v3, v2);
  *(v0 + 72) = v15;
  if (v15)
  {
    v22 = 0;
    v14 = 0x800000000022FEE0;
    v12 = 0xD000000000000043;
  }

  else
  {

    v22 = 2;
  }

  *(v0 + 120) = v22;
  *(v0 + 80) = v12;
  *(v0 + 88) = v14;
  v23 = *(v0 + 40);
  v24 = v23[2];
  v25 = v23[3];
  if (v25)
  {
    static CATSpeakableString.stripTTSHint(print:)(v24, v25, v16, v17, v18, v19, v20, v21, v37, v39, v41);
    v23 = *(v0 + 40);
  }

  *(v0 + 96) = v24;
  *(v0 + 104) = v25;
  if (!v23[4])
  {
    v31 = *(v0 + 48);
    v32 = type metadata accessor for VisualProperty();
    OUTLINED_FUNCTION_63_7(v32);
    v33 = OUTLINED_FUNCTION_5_33();
    OUTLINED_FUNCTION_66(v33);
    OUTLINED_FUNCTION_3_50();

    OUTLINED_FUNCTION_10_15();
    OUTLINED_FUNCTION_27_0();

    __asm { BRAA            X2, X16 }
  }

  v26 = swift_task_alloc();
  *(v0 + 112) = v26;
  *v26 = v0;
  v26[1] = CustomIntentDisambiguationItem.toDisambiguationItemModel(intent:parameterName:);
  v27 = *(v0 + 48);
  OUTLINED_FUNCTION_27_0();

  return INImage.convertToVisualProperty()(v28);
}

{
  OUTLINED_FUNCTION_8_0();
  v1 = *(*v0 + 112);
  v6 = *v0;

  v2 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v2, v3, v4);
}

void CustomIntentDisambiguationItem.toDisambiguationItemModel(intent:parameterName:)()
{
  v0 = OUTLINED_FUNCTION_5_33();
  OUTLINED_FUNCTION_66(v0);
  OUTLINED_FUNCTION_3_50();

  OUTLINED_FUNCTION_10_15();
  OUTLINED_FUNCTION_27_0();

  __asm { BRAA            X2, X16 }
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for CustomIntentDisambiguationRawValue(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 33))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 32);
  if (v3 >= 2)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for CustomIntentDisambiguationRawValue(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t destructiveInjectEnumTag for CustomIntentDisambiguationRawValue(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 32) = a2;
  return result;
}

uint64_t getEnumTagSinglePayload for CustomIntentDisambiguationItem(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 81))
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

uint64_t storeEnumTagSinglePayload for CustomIntentDisambiguationItem(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 81) = 1;
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

    *(result + 81) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *OUTLINED_FUNCTION_3_50()
{

  return WorkflowDataModels.DisambiguationItemModel.init(title:subtitle:thumbnail:invocationCommand:)(v6, v5, v0, v1, v7, v3, v2, v4, v8);
}

uint64_t OUTLINED_FUNCTION_5_33()
{
  v2 = *(v0 + 96);
  v3 = *(v0 + 104);
  v4 = *(v0 + 120);
  v6 = *(v0 + 80);
  v5 = *(v0 + 88);
  v8 = *(v0 + 64);
  v7 = *(v0 + 72);
  v10 = *(v0 + 48);
  v9 = *(v0 + 56);

  return type metadata accessor for WorkflowDataModels.DisambiguationItemModel(0);
}

const char *IntelligenceFlowFeatureFlags.feature.getter(char a1)
{
  if (a1)
  {
    return "FullPlanner";
  }

  else
  {
    return "IntelligenceFlow";
  }
}

uint64_t IntelligenceFlowFeatureFlags.isEnabled.getter(char a1)
{
  v4[3] = &type metadata for IntelligenceFlowFeatureFlags;
  v4[4] = lazy protocol witness table accessor for type IntelligenceFlowFeatureFlags and conformance IntelligenceFlowFeatureFlags();
  LOBYTE(v4[0]) = a1 & 1;
  v2 = isFeatureEnabled(_:)();
  __swift_destroy_boxed_opaque_existential_1Tm(v4);
  return v2 & 1;
}

unint64_t lazy protocol witness table accessor for type IntelligenceFlowFeatureFlags and conformance IntelligenceFlowFeatureFlags()
{
  result = lazy protocol witness table cache variable for type IntelligenceFlowFeatureFlags and conformance IntelligenceFlowFeatureFlags;
  if (!lazy protocol witness table cache variable for type IntelligenceFlowFeatureFlags and conformance IntelligenceFlowFeatureFlags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IntelligenceFlowFeatureFlags and conformance IntelligenceFlowFeatureFlags);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IntelligenceFlowFeatureFlags and conformance IntelligenceFlowFeatureFlags;
  if (!lazy protocol witness table cache variable for type IntelligenceFlowFeatureFlags and conformance IntelligenceFlowFeatureFlags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IntelligenceFlowFeatureFlags and conformance IntelligenceFlowFeatureFlags);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for IntelligenceFlowFeatureFlags(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x18D70CLL);
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

uint64_t static VoiceCommandConfirmationUtils.getVoiceCommandConfirmation(parse:)(uint64_t a1)
{
  v185 = type metadata accessor for Google_Protobuf_StringValue();
  v2 = OUTLINED_FUNCTION_7_1(v185);
  v172 = v3;
  v5 = *(v4 + 64);
  __chkstk_darwin(v2);
  OUTLINED_FUNCTION_4_27();
  v184 = v6;
  OUTLINED_FUNCTION_22_10();
  v191 = type metadata accessor for Siri_Nlu_External_UsoEntityIdentifier();
  v7 = OUTLINED_FUNCTION_7_1(v191);
  v186 = v8;
  v10 = *(v9 + 64);
  __chkstk_darwin(v7);
  OUTLINED_FUNCTION_4_27();
  v189 = v11;
  OUTLINED_FUNCTION_22_10();
  v178 = type metadata accessor for Siri_Nlu_External_UsoGraph();
  v12 = OUTLINED_FUNCTION_7_1(v178);
  v177 = v13;
  v15 = *(v14 + 64);
  __chkstk_darwin(v12);
  OUTLINED_FUNCTION_4_27();
  v176 = v16;
  OUTLINED_FUNCTION_22_10();
  v175 = type metadata accessor for Siri_Nlu_External_UserStatedTask();
  v17 = OUTLINED_FUNCTION_7_1(v175);
  v174 = v18;
  v20 = *(v19 + 64);
  __chkstk_darwin(v17);
  OUTLINED_FUNCTION_4_27();
  v173 = v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
  v23 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22 - 8);
  v180 = &v172 - v24;
  OUTLINED_FUNCTION_22_10();
  v187 = type metadata accessor for Siri_Nlu_External_UserParse();
  v25 = OUTLINED_FUNCTION_7_1(v187);
  v183 = v26;
  v28 = *(v27 + 64);
  __chkstk_darwin(v25);
  OUTLINED_FUNCTION_50_0();
  v179 = (v29 - v30);
  __chkstk_darwin(v31);
  v182 = &v172 - v32;
  OUTLINED_FUNCTION_22_10();
  v190 = type metadata accessor for USOParse();
  v33 = OUTLINED_FUNCTION_7_1(v190);
  v193 = v34;
  v36 = *(v35 + 64);
  __chkstk_darwin(v33);
  OUTLINED_FUNCTION_50_0();
  v181 = (v37 - v38);
  v40 = __chkstk_darwin(v39);
  v188 = &v172 - v41;
  __chkstk_darwin(v40);
  v192 = &v172 - v42;
  OUTLINED_FUNCTION_22_10();
  v43 = type metadata accessor for Parse.DirectInvocation();
  v44 = OUTLINED_FUNCTION_7_1(v43);
  v195 = v45;
  v196 = v44;
  v47 = *(v46 + 64);
  __chkstk_darwin(v44);
  OUTLINED_FUNCTION_4_27();
  v194 = v48;
  v49 = OUTLINED_FUNCTION_22_10();
  v50 = type metadata accessor for VoiceCommandsNLIntent(v49);
  v51 = *(*(v50 - 8) + 64);
  __chkstk_darwin(v50);
  v53 = &v172 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = type metadata accessor for NLIntent();
  v55 = OUTLINED_FUNCTION_7_1(v54);
  v57 = v56;
  v59 = *(v58 + 64);
  __chkstk_darwin(v55);
  OUTLINED_FUNCTION_50_0();
  v62 = v60 - v61;
  __chkstk_darwin(v63);
  v65 = &v172 - v64;
  v66 = type metadata accessor for Parse();
  v67 = OUTLINED_FUNCTION_7_1(v66);
  v69 = v68;
  v71 = *(v70 + 64);
  __chkstk_darwin(v67);
  v73 = &v172 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v69 + 16))(v73, a1, v66);
  v74 = (*(v69 + 88))(v73, v66);
  if (v74 == enum case for Parse.NLv3IntentOnly(_:))
  {
    v75 = OUTLINED_FUNCTION_5_34();
    v76(v75);
    (*(v57 + 32))(v65, v73, v54);
    OUTLINED_FUNCTION_12_27();
    if (!v95)
    {
      OUTLINED_FUNCTION_0();
    }

    v77 = type metadata accessor for Logger();
    __swift_project_value_buffer(v77, static Logger.voiceCommands);
    v78 = Logger.logObject.getter();
    v79 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v78, v79))
    {
      v80 = OUTLINED_FUNCTION_52();
      *v80 = 0;
      _os_log_impl(&dword_0, v78, v79, "VoiceCommandsConfirmationUtils getVoiceCommandConfirmation received NLv3 intent", v80, 2u);
      OUTLINED_FUNCTION_15_0();
    }

    (*(v57 + 16))(v53, v65, v54);
    if (one-time initialization token for voiceCommandConfirmationNode != -1)
    {
      OUTLINED_FUNCTION_4_49();
    }

    lazy protocol witness table accessor for type VoiceCommandsNLIntent and conformance VoiceCommandsNLIntent();
    IntentNodeTraversable.value<A>(forNode:)();
    outlined destroy of VoiceCommandsNLIntent(v53);
    (*(v57 + 8))(v65, v54);
    return v197;
  }

  if (v74 == enum case for Parse.NLv3IntentPlusServerConversion(_:))
  {
    v82 = OUTLINED_FUNCTION_5_34();
    v83(v82);
    v84 = *&v73[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology8NLIntentV_0A7KitFlow5ParseO16ServerConversionCtMd, &_s12SiriOntology8NLIntentV_0A7KitFlow5ParseO16ServerConversionCtMR) + 48)];

    (*(v57 + 32))(v62, v73, v54);
    (*(v57 + 16))(v53, v62, v54);
    if (one-time initialization token for voiceCommandConfirmationNode != -1)
    {
      OUTLINED_FUNCTION_4_49();
    }

    lazy protocol witness table accessor for type VoiceCommandsNLIntent and conformance VoiceCommandsNLIntent();
    IntentNodeTraversable.value<A>(forNode:)();
    outlined destroy of VoiceCommandsNLIntent(v53);
    (*(v57 + 8))(v62, v54);
    return v198;
  }

  if (v74 == enum case for Parse.directInvocation(_:))
  {
    v85 = OUTLINED_FUNCTION_5_34();
    v86(v85);
    v88 = v194;
    v87 = v195;
    v89 = v196;
    (*(v195 + 32))(v194, v73, v196);
    OUTLINED_FUNCTION_12_27();
    if (!v95)
    {
      OUTLINED_FUNCTION_0();
    }

    v90 = type metadata accessor for Logger();
    __swift_project_value_buffer(v90, static Logger.voiceCommands);
    v91 = Logger.logObject.getter();
    v92 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v91, v92))
    {
      v93 = OUTLINED_FUNCTION_52();
      *v93 = 0;
      _os_log_impl(&dword_0, v91, v92, "VoiceCommandsConfirmationUtils getVoiceCommandConfirmation received direct Invocation", v93, 2u);
      OUTLINED_FUNCTION_15_0();
    }

    v95 = Parse.DirectInvocation.identifier.getter() == 0xD00000000000003DLL && 0x800000000022FD30 == v94;
    if (v95)
    {
    }

    else
    {
      v96 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v96 & 1) == 0)
      {
LABEL_32:
        v119 = Logger.logObject.getter();
        v120 = static os_log_type_t.debug.getter();
        if (OUTLINED_FUNCTION_17_11(v120))
        {
          v121 = OUTLINED_FUNCTION_52();
          *v121 = 0;
          OUTLINED_FUNCTION_30_9();
          _os_log_impl(v122, v123, v124, v125, v121, 2u);
          OUTLINED_FUNCTION_15_0();
        }

        (*(v87 + 8))(v88, v89);
        return 3;
      }
    }

    v118 = Parse.DirectInvocation.userData.getter();
    if (!v118)
    {
      goto LABEL_32;
    }

    v81 = static SLFConfirmationItemConverter.toVoiceCommandConfirmation(userData:)(v118);

    if (v81 == 3)
    {
      goto LABEL_32;
    }

    (*(v87 + 8))(v88, v89);
    return v81;
  }

  if (v74 != enum case for Parse.uso(_:))
  {
    OUTLINED_FUNCTION_12_27();
    if (!v95)
    {
      OUTLINED_FUNCTION_0();
    }

    v126 = type metadata accessor for Logger();
    __swift_project_value_buffer(v126, static Logger.voiceCommands);
    v127 = Logger.logObject.getter();
    v128 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_17_11(v128))
    {
      v129 = OUTLINED_FUNCTION_52();
      *v129 = 0;
      OUTLINED_FUNCTION_30_9();
      _os_log_impl(v130, v131, v132, v133, v129, 2u);
      OUTLINED_FUNCTION_15_0();
    }

    (*(v69 + 8))(v73, v66);
    return 3;
  }

  v97 = OUTLINED_FUNCTION_5_34();
  v98(v97);
  v99 = v192;
  v100 = v193;
  v101 = v190;
  (*(v193 + 32))(v192, v73, v190);
  OUTLINED_FUNCTION_12_27();
  if (!v95)
  {
    OUTLINED_FUNCTION_0();
  }

  v102 = type metadata accessor for Logger();
  __swift_project_value_buffer(v102, static Logger.voiceCommands);
  v103 = *(v100 + 16);
  v104 = v188;
  v103(v188, v99, v101);
  v105 = Logger.logObject.getter();
  v106 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_17_11(v106))
  {
    v107 = swift_slowAlloc();
    v196 = swift_slowAlloc();
    v199 = v196;
    *v107 = 136315138;
    v103(v181, v104, v101);
    v108 = String.init<A>(describing:)();
    v109 = v104;
    v111 = v110;
    v112 = *(v100 + 8);
    v112(v109, v101);
    v113 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v108, v111, &v199);

    *(v107 + 4) = v113;
    OUTLINED_FUNCTION_30_9();
    _os_log_impl(v114, v115, v116, v117, v107, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v196);
    OUTLINED_FUNCTION_15_0();
    OUTLINED_FUNCTION_15_0();
  }

  else
  {

    v112 = *(v100 + 8);
    v112(v104, v101);
  }

  if ((SiriLinkFlowFeatureFlags.isEnabled.getter(0) & 1) == 0)
  {
LABEL_78:
    v171 = OUTLINED_FUNCTION_3_51();
    (v112)(v171);
    return 3;
  }

  v134 = v182;
  USOParse.userParse.getter();
  v135 = static ConversionUtils.toLegacyPreferredUserDialogAct(from:)();
  v136 = *(v183 + 8);
  v136(v134, v187);
  if (v135)
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      swift_unknownObjectRelease();
      v137 = OUTLINED_FUNCTION_3_51();
LABEL_45:
      (v112)(v137);
      return 0;
    }

    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      swift_unknownObjectRelease();
      v138 = OUTLINED_FUNCTION_3_51();
      (v112)(v138);
      return 1;
    }

    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      swift_unknownObjectRelease();
      v139 = OUTLINED_FUNCTION_3_51();
      (v112)(v139);
      return 2;
    }
  }

  v188 = v135;
  v140 = v179;
  USOParse.userParse.getter();
  v141 = Siri_Nlu_External_UserParse.userDialogActs.getter();
  v136(v140, v187);
  v142 = v180;
  specialized Collection.first.getter(v141, v180);

  v143 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  if (__swift_getEnumTagSinglePayload(v142, 1, v143) == 1)
  {
    outlined destroy of Siri_Nlu_External_UserDialogAct?(v142);
    v144 = Logger.logObject.getter();
    v145 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_17_11(v145))
    {
      v146 = OUTLINED_FUNCTION_52();
      *v146 = 0;
      OUTLINED_FUNCTION_30_9();
      _os_log_impl(v147, v148, v149, v150, v146, 2u);
      OUTLINED_FUNCTION_15_0();
    }

    goto LABEL_77;
  }

  v151 = v173;
  Siri_Nlu_External_UserDialogAct.userStatedTask.getter();
  (*(*(v143 - 8) + 8))(v142, v143);
  v152 = v176;
  Siri_Nlu_External_UserStatedTask.task.getter();
  (*(v174 + 8))(v151, v175);
  v153 = Siri_Nlu_External_UsoGraph.identifiers.getter();
  result = (*(v177 + 8))(v152, v178);
  v194 = *(v153 + 16);
  if (!v194)
  {
LABEL_76:

LABEL_77:
    swift_unknownObjectRelease();
    goto LABEL_78;
  }

  v155 = 0;
  v196 = (v153 + ((*(v186 + 80) + 32) & ~*(v186 + 80)));
  v195 = v186 + 16;
  v156 = (v172 + 8);
  v157 = (v186 + 8);
  v158 = v189;
  v159 = v184;
  while (v155 < *(v153 + 16))
  {
    (*(v186 + 16))(v158, v196 + *(v186 + 72) * v155, v191);
    Siri_Nlu_External_UsoEntityIdentifier.namespace.getter();
    v160 = Google_Protobuf_StringValue.value.getter();
    v162 = v161;
    (*v156)(v159, v185);
    if (v160 == 0xD000000000000018 && 0x8000000000232140 == v162)
    {
    }

    else
    {
      v164 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v164 & 1) == 0)
      {
        v158 = v189;
        result = (*v157)(v189, v191);
        goto LABEL_75;
      }
    }

    if (Siri_Nlu_External_UsoEntityIdentifier.value.getter() == 0x747065636361 && v165 == 0xE600000000000000)
    {

LABEL_82:

      swift_unknownObjectRelease();
      (*v157)(v189, v191);
      v137 = v192;
      goto LABEL_45;
    }

    v167 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v167)
    {
      goto LABEL_82;
    }

    v158 = v189;
    if (Siri_Nlu_External_UsoEntityIdentifier.value.getter() == 0x7463656A6572 && v168 == 0xE600000000000000)
    {

      (*v157)(v158, v191);
LABEL_84:
      v112(v192, v190);

      swift_unknownObjectRelease();
      return 1;
    }

    v170 = _stringCompareWithSmolCheck(_:_:expecting:)();

    result = (*v157)(v158, v191);
    if (v170)
    {
      goto LABEL_84;
    }

LABEL_75:
    if (v194 == ++v155)
    {
      goto LABEL_76;
    }
  }

  __break(1u);
  return result;
}

uint64_t static VoiceCommandConfirmationUtils.getSiriKitConfirmationState(parse:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = static VoiceCommandConfirmationUtils.getVoiceCommandConfirmation(parse:)(a1);
  v4 = type metadata accessor for SiriKitConfirmationState();
  v5 = *(*(v4 - 8) + 104);
  v6 = **(&off_2A0CF8 + v3);

  return v5(a2, v6, v4);
}

uint64_t outlined destroy of Siri_Nlu_External_UserDialogAct?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type VoiceCommandsNLIntent and conformance VoiceCommandsNLIntent()
{
  result = lazy protocol witness table cache variable for type VoiceCommandsNLIntent and conformance VoiceCommandsNLIntent;
  if (!lazy protocol witness table cache variable for type VoiceCommandsNLIntent and conformance VoiceCommandsNLIntent)
  {
    type metadata accessor for VoiceCommandsNLIntent(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VoiceCommandsNLIntent and conformance VoiceCommandsNLIntent);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_4_49()
{

  return swift_once();
}

uint64_t Measurement.asLocalizedString(locale:)(uint64_t a1, uint64_t a2)
{
  v3 = [objc_allocWithZone(NSMeasurementFormatter) init];
  isa = Locale._bridgeToObjectiveC()().super.isa;
  [v3 setLocale:isa];

  [v3 setUnitOptions:1];
  v5 = *(a2 + 16);
  v6 = NSMeasurementFormatter.string<A>(from:)();

  return v6;
}

uint64_t static CustomIntentDisambiguationItemFactory.convertEnumStringToDictionary(enumString:)()
{
  v0 = type metadata accessor for String.Encoding();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  static String.Encoding.utf8.getter();
  v5 = String.data(using:allowLossyConversion:)();
  v7 = v6;
  (*(v1 + 8))(v4, v0);
  result = 0;
  if (v7 >> 60 != 15)
  {
    v9 = objc_opt_self();
    isa = Data._bridgeToObjectiveC()().super.isa;
    v15[0] = 0;
    v11 = [v9 JSONObjectWithData:isa options:0 error:v15];

    if (v11)
    {
      v12 = v15[0];
      _bridgeAnyObjectToAny(_:)();
      outlined consume of Data?(v5, v7);
      swift_unknownObjectRelease();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd, &_sSDySSypGMR);
      if (swift_dynamicCast())
      {
        return v14[1];
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v13 = v15[0];
      _convertNSErrorToError(_:)();

      swift_willThrow();
      outlined consume of Data?(v5, v7);

      return 0;
    }
  }

  return result;
}

SiriLinkFlowPlugin::InstallShortcutCATsSimple::Properties_optional __swiftcall InstallShortcutCATsSimple.Properties.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of InstallShortcutCATsSimple.Properties.init(rawValue:), v2);

  if (v3 == 1)
  {
    v4.value = SiriLinkFlowPlugin_InstallShortcutCATsSimple_Properties_launchApp;
  }

  else
  {
    v4.value = SiriLinkFlowPlugin_InstallShortcutCATsSimple_Properties_unknownDefault;
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

unint64_t InstallShortcutCATsSimple.Properties.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0xD000000000000019;
  }

  else
  {
    return 0xD000000000000024;
  }
}

SiriLinkFlowPlugin::InstallShortcutCATsSimple::Properties_optional protocol witness for RawRepresentable.init(rawValue:) in conformance InstallShortcutCATsSimple.Properties@<W0>(Swift::String *a1@<X0>, SiriLinkFlowPlugin::InstallShortcutCATsSimple::Properties_optional *a2@<X8>)
{
  result.value = InstallShortcutCATsSimple.Properties.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance InstallShortcutCATsSimple.Properties@<X0>(unint64_t *a1@<X8>)
{
  result = InstallShortcutCATsSimple.Properties.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t InstallShortcutCATsSimple.errorInstallShortcut(device:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t InstallShortcutCATsSimple.errorInstallShortcut(device:)()
{
  OUTLINED_FUNCTION_15_2();
  v2 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_48_1();
  v4 = OUTLINED_FUNCTION_66_4(v3);
  v5 = OUTLINED_FUNCTION_1_3(v4, xmmword_216850);
  if (v2)
  {
    v5 = type metadata accessor for SirikitDeviceState();
  }

  else
  {
    *(v1 + 56) = 0;
    *(v1 + 64) = 0;
  }

  OUTLINED_FUNCTION_47_5(v5);
  OUTLINED_FUNCTION_3_2(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v6 = swift_task_alloc();
  *(v0 + 40) = v6;
  *v6 = v0;
  OUTLINED_FUNCTION_44_10(v6);
  v7 = OUTLINED_FUNCTION_23_8(36);

  return v9(v7);
}

{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_18_3();
  v3 = v2;
  OUTLINED_FUNCTION_4_1();
  *v4 = v3;
  v6 = *(v5 + 40);
  v7 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v8 = v7;
  *(v3 + 48) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_18_0();

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {
    v12 = *(v3 + 32);

    v13 = OUTLINED_FUNCTION_8_11();

    return v14(v13);
  }
}

BOOL InstallShortcutCATsSimple.ErrorInstallShortcutDialogIds.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of InstallShortcutCATsSimple.ErrorInstallShortcutDialogIds.init(rawValue:), v2);

  return v3 != 0;
}

BOOL protocol witness for RawRepresentable.init(rawValue:) in conformance InstallShortcutCATsSimple.ErrorInstallShortcutDialogIds@<W0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = InstallShortcutCATsSimple.ErrorInstallShortcutDialogIds.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

uint64_t InstallShortcutCATsSimple.errorInstallShortcutAsLabels(device:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t InstallShortcutCATsSimple.errorInstallShortcutAsLabels(device:)()
{
  OUTLINED_FUNCTION_15_2();
  v2 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_48_1();
  v4 = OUTLINED_FUNCTION_66_4(v3);
  v5 = OUTLINED_FUNCTION_1_3(v4, xmmword_216850);
  if (v2)
  {
    v5 = type metadata accessor for SirikitDeviceState();
  }

  else
  {
    *(v1 + 56) = 0;
    *(v1 + 64) = 0;
  }

  OUTLINED_FUNCTION_47_5(v5);
  OUTLINED_FUNCTION_3_2(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  v6 = swift_task_alloc();
  v0[5] = v6;
  lazy protocol witness table accessor for type InstallShortcutCATsSimple.ErrorInstallShortcutDialogIds and conformance InstallShortcutCATsSimple.ErrorInstallShortcutDialogIds();
  *v6 = v0;
  v6[1] = InstallShortcutCATsSimple.errorInstallShortcutAsLabels(device:);
  v7 = v0[3];
  v8 = OUTLINED_FUNCTION_23_8(36);

  return v10(v8);
}

{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_18_3();
  v3 = v2;
  OUTLINED_FUNCTION_4_1();
  *v4 = v3;
  v6 = *(v5 + 40);
  v7 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v8 = v7;
  *(v3 + 48) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_18_0();

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {
    v12 = *(v3 + 32);

    v13 = OUTLINED_FUNCTION_8_11();

    return v14(v13);
  }
}

unint64_t lazy protocol witness table accessor for type InstallShortcutCATsSimple.ErrorInstallShortcutDialogIds and conformance InstallShortcutCATsSimple.ErrorInstallShortcutDialogIds()
{
  result = lazy protocol witness table cache variable for type InstallShortcutCATsSimple.ErrorInstallShortcutDialogIds and conformance InstallShortcutCATsSimple.ErrorInstallShortcutDialogIds;
  if (!lazy protocol witness table cache variable for type InstallShortcutCATsSimple.ErrorInstallShortcutDialogIds and conformance InstallShortcutCATsSimple.ErrorInstallShortcutDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InstallShortcutCATsSimple.ErrorInstallShortcutDialogIds and conformance InstallShortcutCATsSimple.ErrorInstallShortcutDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type InstallShortcutCATsSimple.ErrorInstallShortcutDialogIds and conformance InstallShortcutCATsSimple.ErrorInstallShortcutDialogIds;
  if (!lazy protocol witness table cache variable for type InstallShortcutCATsSimple.ErrorInstallShortcutDialogIds and conformance InstallShortcutCATsSimple.ErrorInstallShortcutDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InstallShortcutCATsSimple.ErrorInstallShortcutDialogIds and conformance InstallShortcutCATsSimple.ErrorInstallShortcutDialogIds);
  }

  return result;
}

uint64_t InstallShortcutCATsSimple.launchApp(device:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t InstallShortcutCATsSimple.launchApp(device:)()
{
  OUTLINED_FUNCTION_15_2();
  v2 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_48_1();
  v4 = OUTLINED_FUNCTION_66_4(v3);
  v5 = OUTLINED_FUNCTION_1_3(v4, xmmword_216850);
  if (v2)
  {
    v5 = type metadata accessor for SirikitDeviceState();
  }

  else
  {
    *(v1 + 56) = 0;
    *(v1 + 64) = 0;
  }

  OUTLINED_FUNCTION_47_5(v5);
  OUTLINED_FUNCTION_3_2(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v6 = swift_task_alloc();
  *(v0 + 40) = v6;
  *v6 = v0;
  OUTLINED_FUNCTION_44_10(v6);
  v7 = OUTLINED_FUNCTION_23_8(25);

  return v9(v7);
}

BOOL InstallShortcutCATsSimple.LaunchAppDialogIds.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of InstallShortcutCATsSimple.LaunchAppDialogIds.init(rawValue:), v2);

  return v3 != 0;
}

BOOL protocol witness for RawRepresentable.init(rawValue:) in conformance InstallShortcutCATsSimple.LaunchAppDialogIds@<W0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = InstallShortcutCATsSimple.LaunchAppDialogIds.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

uint64_t InstallShortcutCATsSimple.launchAppAsLabels(device:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t InstallShortcutCATsSimple.launchAppAsLabels(device:)()
{
  OUTLINED_FUNCTION_15_2();
  v2 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_48_1();
  v4 = OUTLINED_FUNCTION_66_4(v3);
  v5 = OUTLINED_FUNCTION_1_3(v4, xmmword_216850);
  if (v2)
  {
    v5 = type metadata accessor for SirikitDeviceState();
  }

  else
  {
    *(v1 + 56) = 0;
    *(v1 + 64) = 0;
  }

  OUTLINED_FUNCTION_47_5(v5);
  OUTLINED_FUNCTION_3_2(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  v6 = swift_task_alloc();
  v0[5] = v6;
  lazy protocol witness table accessor for type InstallShortcutCATsSimple.LaunchAppDialogIds and conformance InstallShortcutCATsSimple.LaunchAppDialogIds();
  *v6 = v0;
  v6[1] = InstallShortcutCATsSimple.errorInstallShortcutAsLabels(device:);
  v7 = v0[3];
  v8 = OUTLINED_FUNCTION_23_8(25);

  return v10(v8);
}

unint64_t lazy protocol witness table accessor for type InstallShortcutCATsSimple.LaunchAppDialogIds and conformance InstallShortcutCATsSimple.LaunchAppDialogIds()
{
  result = lazy protocol witness table cache variable for type InstallShortcutCATsSimple.LaunchAppDialogIds and conformance InstallShortcutCATsSimple.LaunchAppDialogIds;
  if (!lazy protocol witness table cache variable for type InstallShortcutCATsSimple.LaunchAppDialogIds and conformance InstallShortcutCATsSimple.LaunchAppDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InstallShortcutCATsSimple.LaunchAppDialogIds and conformance InstallShortcutCATsSimple.LaunchAppDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type InstallShortcutCATsSimple.LaunchAppDialogIds and conformance InstallShortcutCATsSimple.LaunchAppDialogIds;
  if (!lazy protocol witness table cache variable for type InstallShortcutCATsSimple.LaunchAppDialogIds and conformance InstallShortcutCATsSimple.LaunchAppDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InstallShortcutCATsSimple.LaunchAppDialogIds and conformance InstallShortcutCATsSimple.LaunchAppDialogIds);
  }

  return result;
}

uint64_t InstallShortcutCATsSimple.__allocating_init(templateDir:options:globals:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  return InstallShortcutCATsSimple.init(templateDir:options:globals:)(a1, a2);
}

uint64_t InstallShortcutCATsSimple.init(templateDir:options:globals:)(uint64_t a1, uint64_t a2)
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

uint64_t InstallShortcutCATsSimple.__allocating_init(useResponseMode:options:)()
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

uint64_t InstallShortcutCATsSimple.init(useResponseMode:options:)()
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

unint64_t lazy protocol witness table accessor for type InstallShortcutCATsSimple.Properties and conformance InstallShortcutCATsSimple.Properties()
{
  result = lazy protocol witness table cache variable for type InstallShortcutCATsSimple.Properties and conformance InstallShortcutCATsSimple.Properties;
  if (!lazy protocol witness table cache variable for type InstallShortcutCATsSimple.Properties and conformance InstallShortcutCATsSimple.Properties)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InstallShortcutCATsSimple.Properties and conformance InstallShortcutCATsSimple.Properties);
  }

  return result;
}

uint64_t type metadata accessor for InstallShortcutCATsSimple()
{
  result = type metadata singleton initialization cache for InstallShortcutCATsSimple;
  if (!type metadata singleton initialization cache for InstallShortcutCATsSimple)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for InstallShortcutCATsSimple.Properties(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x18FC28);
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

_BYTE *storeEnumTagSinglePayload for InstallShortcutCATsSimple.ErrorInstallShortcutDialogIds(_BYTE *result, int a2, int a3)
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
      JUMPOUT(0x18FD10);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t ShortcutsLinkPromptForActionConfirmationFlowStrategy.__allocating_init(action:request:actionMetadata:appBundleId:deviceState:serviceInvoker:outputPublisher:)(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t *a7, __int128 *a8)
{
  v16 = swift_allocObject();
  ShortcutsLinkPromptForActionConfirmationFlowStrategy.init(action:request:actionMetadata:appBundleId:deviceState:serviceInvoker:outputPublisher:)(a1, a2, a3, a4, a5, a6, a7, a8);
  return v16;
}

uint64_t *ShortcutsLinkPromptForActionConfirmationFlowStrategy.init(action:request:actionMetadata:appBundleId:deviceState:serviceInvoker:outputPublisher:)(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t *a7, __int128 *a8)
{
  v9 = v8;
  v39 = a8;
  v17 = *v9;
  v35 = a7;
  v36 = v17;
  v18 = type metadata accessor for Locale();
  v19 = OUTLINED_FUNCTION_7_1(v18);
  v37 = v20;
  v38 = v19;
  v22 = *(v21 + 64);
  __chkstk_darwin(v19);
  v24 = &v34 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9[2] = a1;
  v9[3] = a2;
  v9[4] = a3;
  v9[5] = a4;
  v9[6] = a5;
  outlined init with copy of DeviceState(a6, (v9 + 7));
  outlined init with copy of DeviceState(a7, (v9 + 12));
  v25 = a1;
  v26 = a2;
  v27 = a3;
  v28 = [v26 result];
  v29 = [v28 output];

  v30 = [v29 confirmationActionName];
  v31 = a6[4];
  __swift_project_boxed_opaque_existential_1(a6, a6[3]);
  dispatch thunk of DeviceState.siriLocale.getter();
  static ShortcutsLinkPromptForActionConfirmationFlowStrategy.makeConfirmationNames(confirmationActionName:siriLocale:)(v30, v40);

  __swift_destroy_boxed_opaque_existential_1Tm(v35);
  (*(v37 + 8))(v24, v38);
  v32 = v40[1];
  *(v9 + 11) = v40[0];
  *(v9 + 12) = v32;
  *(v9 + 13) = v40[2];
  outlined init with take of AceServiceInvokerAsync(v39, (v9 + 17));
  __swift_destroy_boxed_opaque_existential_1Tm(a6);
  return v9;
}

void static ShortcutsLinkPromptForActionConfirmationFlowStrategy.makeConfirmationNames(confirmationActionName:siriLocale:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  if (!a1)
  {
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v6 = _swiftEmptyArrayStorage;
    v27 = _swiftEmptyArrayStorage;
    goto LABEL_49;
  }

  v78 = a2;
  v3 = Locale.identifier.getter();
  v4 = a1;
  v5 = [v4 acceptLabel];
  v6 = _swiftEmptyArrayStorage;
  v7 = &off_2B4000;
  v79 = v4;
  if (!v5)
  {
    v76 = 0;
    v77 = 0;
    goto LABEL_26;
  }

  v8 = v5;
  v9 = String._bridgeToObjectiveC()();
  v80 = v8;
  v10 = [v8 localizedStringForLocaleIdentifier:v9];

  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v76 = v12;
  v77 = v11;

  v13 = [v4 acceptAlternatives];
  type metadata accessor for NSError(0, &lazy cache variable for type metadata for LNStaticDeferredLocalizedString, LNStaticDeferredLocalizedString_ptr);
  v14 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v15 = specialized Collection.prefix(_:)(10, v14);
  v17 = v16;
  v19 = v18;
  v21 = v20;
  if (v20)
  {
    type metadata accessor for __ContiguousArrayStorageBase();
    swift_unknownObjectRetain_n();
    v28 = swift_dynamicCastClass();
    if (!v28)
    {
      swift_unknownObjectRelease();
      v28 = _swiftEmptyArrayStorage;
    }

    v29 = v28[2];

    if (__OFSUB__(v21 >> 1, v19))
    {
      goto LABEL_52;
    }

    if (v29 != (v21 >> 1) - v19)
    {
      goto LABEL_54;
    }

    v21 = swift_dynamicCastClass();
    swift_unknownObjectRelease();
    v4 = v79;
    v17 = v80;
    if (v21)
    {
      goto LABEL_14;
    }

    v21 = _swiftEmptyArrayStorage;
    goto LABEL_13;
  }

  while (1)
  {
    specialized _copyCollectionToContiguousArray<A>(_:)(v15, v17, v19, v21);
    v21 = v22;
    v17 = v80;
LABEL_13:
    swift_unknownObjectRelease();
LABEL_14:
    v30 = specialized Array.count.getter(v21);
    if (!v30)
    {

      goto LABEL_25;
    }

    v31 = v30;
    v83 = v6;
    v15 = &v83;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    if ((v31 & 0x8000000000000000) == 0)
    {
      break;
    }

    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    swift_unknownObjectRelease();
    v4 = v79;
  }

  v32 = 0;
  v6 = v83;
  v82 = v21 & 0xC000000000000001;
  v33 = v21;
  v34 = v31;
  do
  {
    if (v82)
    {
      v35 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v35 = *(v21 + 8 * v32 + 32);
    }

    v36 = v35;
    v37 = v3;
    v38 = String._bridgeToObjectiveC()();
    v39 = [v36 localizedStringForLocaleIdentifier:v38];

    v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v42 = v41;

    v83 = v6;
    v43 = v6[2];
    if (v43 >= v6[3] >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      v6 = v83;
    }

    ++v32;
    v6[2] = v43 + 1;
    v44 = &v6[2 * v43];
    v44[4] = v40;
    v44[5] = v42;
    v3 = v37;
    v21 = v33;
  }

  while (v34 != v32);

  v4 = v79;
LABEL_25:
  v7 = &off_2B4000;
LABEL_26:
  v45 = [v4 denyLabel];
  if (!v45)
  {

    v25 = 0;
    v26 = 0;
    v27 = _swiftEmptyArrayStorage;
    v23 = v77;
    a2 = v78;
    v24 = v76;
    goto LABEL_49;
  }

  v46 = v45;
  v47 = String._bridgeToObjectiveC()();
  v73 = v46;
  v48 = [v46 localizedStringForLocaleIdentifier:v47];

  v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v74 = v50;
  v75 = v49;

  v51 = [v4 denyAlternatives];
  type metadata accessor for NSError(0, &lazy cache variable for type metadata for LNStaticDeferredLocalizedString, LNStaticDeferredLocalizedString_ptr);
  v52 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v15 = specialized Collection.prefix(_:)(10, v52);
  v17 = v53;
  v19 = v54;
  v21 = v55;
  if ((v55 & 1) == 0)
  {
    goto LABEL_28;
  }

  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain_n();
  v57 = swift_dynamicCastClass();
  if (!v57)
  {
    swift_unknownObjectRelease();
    v57 = _swiftEmptyArrayStorage;
  }

  v58 = v57[2];

  if (__OFSUB__(v21 >> 1, v19))
  {
    goto LABEL_53;
  }

  if (v58 != (v21 >> 1) - v19)
  {
    swift_unknownObjectRelease();
    v4 = v79;
LABEL_28:
    specialized _copyCollectionToContiguousArray<A>(_:)(v15, v17, v19, v21);
    v17 = v56;
    goto LABEL_36;
  }

  v17 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  v4 = v79;
  if (v17)
  {
    goto LABEL_37;
  }

  v17 = _swiftEmptyArrayStorage;
LABEL_36:
  swift_unknownObjectRelease();
LABEL_37:
  v59 = specialized Array.count.getter(v17);
  if (!v59)
  {

    v27 = _swiftEmptyArrayStorage;
    goto LABEL_48;
  }

  v60 = v59;
  v83 = _swiftEmptyArrayStorage;
  v15 = &v83;
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  if (v60 < 0)
  {
    goto LABEL_51;
  }

  v61 = 0;
  v27 = v83;
  v81 = v17 & 0xC000000000000001;
  v62 = v17;
  v63 = v60;
  do
  {
    if (v81)
    {
      v64 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v64 = *(v17 + 8 * v61 + 32);
    }

    v65 = v64;
    v66 = String._bridgeToObjectiveC()();
    v67 = [v65 v7[327]];

    v68 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v70 = v69;

    v83 = v27;
    v71 = v27[2];
    if (v71 >= v27[3] >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      v27 = v83;
    }

    ++v61;
    v27[2] = v71 + 1;
    v72 = &v27[2 * v71];
    v72[4] = v68;
    v72[5] = v70;
    v7 = &off_2B4000;
    v17 = v62;
  }

  while (v63 != v61);

LABEL_48:
  v23 = v77;
  a2 = v78;
  v25 = v75;
  v24 = v76;
  v26 = v74;
LABEL_49:
  *a2 = v23;
  a2[1] = v24;
  a2[2] = v25;
  a2[3] = v26;
  a2[4] = v6;
  a2[5] = v27;
}

uint64_t ShortcutsLinkPromptForActionConfirmationFlowStrategy.actionForInput(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for Input();
  v7 = OUTLINED_FUNCTION_7_1(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  __chkstk_darwin(v7);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v15 = OUTLINED_FUNCTION_14(v14);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v36 - v18;
  v20 = type metadata accessor for TaskPriority();
  __swift_storeEnumTagSinglePayload(v19, 1, 1, v20);
  OUTLINED_FUNCTION_27_6();
  v21 = swift_allocObject();
  v21[2] = 0;
  v21[3] = 0;
  v21[4] = v3;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5();

  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v22 = type metadata accessor for Logger();
  __swift_project_value_buffer(v22, static Logger.voiceCommands);
  (*(v9 + 16))(v13, a1, v6);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v36 = a2;
    v26 = v25;
    v27 = swift_slowAlloc();
    v37 = v27;
    *v26 = 136315138;
    v28 = Input.description.getter();
    v30 = v29;
    (*(v9 + 8))(v13, v6);
    v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v30, &v37);

    *(v26 + 4) = v31;
    _os_log_impl(&dword_0, v23, v24, "#ShortcutsLinkPromptForActionConfirmationFlowStrategy on input: %s", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v27);
    OUTLINED_FUNCTION_15_0();
    OUTLINED_FUNCTION_15_0();
  }

  else
  {

    (*(v9 + 8))(v13, v6);
  }

  v32 = ShortcutsLinkPromptForActionConfirmationFlowStrategy.getConfirmationValue(input:)();
  switch(v32)
  {
    case 2:
      goto LABEL_9;
    case 3:
      return static ActionForInput.ignore()();
    default:
      v33 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v33)
      {
        return static ActionForInput.cancel()();
      }

      if (v32)
      {
LABEL_9:

        return static ActionForInput.cancel()();
      }

      v35 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v35)
      {
        return static ActionForInput.cancel()();
      }

      return static ActionForInput.handle()();
  }
}

uint64_t closure #1 in ShortcutsLinkPromptForActionConfirmationFlowStrategy.actionForInput(_:)()
{
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v2 = type metadata accessor for Logger();
  v1[13] = __swift_project_value_buffer(v2, static Logger.voiceCommands);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_30_1(v4))
  {
    v5 = OUTLINED_FUNCTION_52();
    *v5 = 0;
    _os_log_impl(&dword_0, v3, v0, "#ShortcutsLinkPromptForActionConfirmationFlowStrategy submitting empty output to clear screen and prevent double-taps", v5, 2u);
    OUTLINED_FUNCTION_15_0();
  }

  v6 = v1[12];

  outlined init with copy of DeviceState(v6 + 136, (v1 + 2));
  v7 = v1[5];
  v8 = v1[6];
  OUTLINED_FUNCTION_47(v1 + 2);
  static OutputUtils.makeTemporaryOutput()(v1 + 7);
  v9 = async function pointer to dispatch thunk of OutputPublisherAsync.publish(output:)[1];
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  v1[14] = v10;
  *v10 = v11;
  v10[1] = closure #1 in ShortcutsLinkPromptForActionConfirmationFlowStrategy.actionForInput(_:);

  return dispatch thunk of OutputPublisherAsync.publish(output:)(v1 + 7, v7, v8);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v3 = v2;
  OUTLINED_FUNCTION_3_0();
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
    _os_log_impl(&dword_0, v3, v4, "#ShortcutsLinkPromptForActionConfirmationFlowStrategy failed to submit empty output to clear screen", v5, 2u);
    OUTLINED_FUNCTION_15_0();
  }

  OUTLINED_FUNCTION_6_0();

  return v6();
}

uint64_t ShortcutsLinkPromptForActionConfirmationFlowStrategy.getConfirmationValue(input:)()
{
  v1 = type metadata accessor for Parse();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  Input.parse.getter();
  v6 = static VoiceCommandConfirmationUtils.getVoiceCommandConfirmation(parse:)(v5);
  (*(v2 + 8))(v5, v1);
  if (v6 != 3)
  {
    return v6;
  }

  ShortcutsLinkPromptForActionConfirmationFlowStrategy.getVoiceCommandText(input:)();
  if (!v7)
  {
    return 3;
  }

  v8 = String.lowercased()();
  if (v0[23])
  {
    v9 = v0[22];
    v10 = String.lowercased()();
    if (v8._countAndFlagsBits == v10._countAndFlagsBits && v8._object == v10._object)
    {
LABEL_20:

LABEL_21:

      return 0;
    }

    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v12)
    {
      goto LABEL_21;
    }
  }

  else
  {
  }

  v14 = v0[26];
  v15 = (v14 + 40);
  v16 = -*(v14 + 16);
  v17 = -1;
  while (1)
  {
    if (v16 + v17 == -1)
    {
      v24 = String.lowercased()();
      if (v0[25])
      {
        v25 = v0[24];
        v26 = String.lowercased()();
        if (v24._countAndFlagsBits == v26._countAndFlagsBits && v24._object == v26._object)
        {
LABEL_43:

LABEL_44:

          return 1;
        }

        v28 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v28)
        {
          goto LABEL_44;
        }
      }

      else
      {
      }

      v29 = v0[27];
      v30 = (v29 + 40);
      v31 = -*(v29 + 16);
      v32 = -1;
      while (v31 + v32 != -1)
      {
        if (++v32 >= *(v29 + 16))
        {
          goto LABEL_46;
        }

        v33 = *(v30 - 1);
        v34 = *v30;
        v35 = String.lowercased()();
        v36 = String.lowercased()();
        if (v35._countAndFlagsBits == v36._countAndFlagsBits && v35._object == v36._object)
        {
          goto LABEL_43;
        }

        v30 += 2;
        v38 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v38)
        {
          goto LABEL_44;
        }
      }

      return 3;
    }

    if (++v17 >= *(v14 + 16))
    {
      break;
    }

    v18 = *(v15 - 1);
    v19 = *v15;
    v20 = String.lowercased()();
    v21 = String.lowercased()();
    if (v20._countAndFlagsBits == v21._countAndFlagsBits && v20._object == v21._object)
    {
      goto LABEL_20;
    }

    v15 += 2;
    v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v23)
    {
      goto LABEL_21;
    }
  }

  __break(1u);
LABEL_46:
  __break(1u);
  return result;
}

uint64_t ShortcutsLinkPromptForActionConfirmationFlowStrategy.parseConfirmationResponse(input:)()
{
  OUTLINED_FUNCTION_8_0();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow20ConfirmationResponseOSgMd, &_s11SiriKitFlow20ConfirmationResponseOSgMR);
  OUTLINED_FUNCTION_14(v4);
  v6 = *(v5 + 64);
  v1[5] = OUTLINED_FUNCTION_28();
  v7 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v7, v8, v9);
}

{
  v2 = v1[3];
  v3 = v1[4];
  switch(ShortcutsLinkPromptForActionConfirmationFlowStrategy.getConfirmationValue(input:)())
  {
    case 1u:
      if (one-time initialization token for voiceCommands != -1)
      {
        OUTLINED_FUNCTION_0();
      }

      v16 = type metadata accessor for Logger();
      __swift_project_value_buffer(v16, static Logger.voiceCommands);
      v11 = Logger.logObject.getter();
      v17 = static os_log_type_t.error.getter();
      if (!OUTLINED_FUNCTION_30_1(v17))
      {
        goto LABEL_18;
      }

      v13 = "#ShortcutsLinkPromptForActionConfirmationFlowStrategy shouldn't receive no in parse";
      break;
    case 2u:
      if (one-time initialization token for voiceCommands != -1)
      {
        OUTLINED_FUNCTION_0();
      }

      v10 = type metadata accessor for Logger();
      __swift_project_value_buffer(v10, static Logger.voiceCommands);
      v11 = Logger.logObject.getter();
      v12 = static os_log_type_t.error.getter();
      if (!OUTLINED_FUNCTION_30_1(v12))
      {
        goto LABEL_18;
      }

      v13 = "#ShortcutsLinkPromptForActionConfirmationFlowStrategy shouldn't receive cancel in parse";
      break;
    case 3u:
      if (one-time initialization token for voiceCommands != -1)
      {
        OUTLINED_FUNCTION_0();
      }

      v14 = type metadata accessor for Logger();
      __swift_project_value_buffer(v14, static Logger.voiceCommands);
      v11 = Logger.logObject.getter();
      v15 = static os_log_type_t.error.getter();
      if (!OUTLINED_FUNCTION_30_1(v15))
      {
        goto LABEL_18;
      }

      v13 = "#ShortcutsLinkPromptForActionConfirmationFlowStrategy has no confirmation";
      break;
    default:
      v4 = v1[4];
      v5 = [*(v4 + 32) systemProtocols];
      type metadata accessor for NSError(0, &lazy cache variable for type metadata for LNSystemProtocol, LNSystemProtocol_ptr);
      v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
      v1[6] = v6;

      swift_task_alloc();
      OUTLINED_FUNCTION_20_0();
      v1[7] = v7;
      *v7 = v8;
      v7[1] = ShortcutsLinkPromptForActionConfirmationFlowStrategy.parseConfirmationResponse(input:);

      return static SharedAudioStartingIntentSetup.setup(deviceState:aceServiceInvoker:systemProtocols:)(v4 + 56, v4 + 96, v6);
  }

  v18 = OUTLINED_FUNCTION_52();
  *v18 = 0;
  _os_log_impl(&dword_0, v11, v0, v13, v18, 2u);
  OUTLINED_FUNCTION_15_0();
LABEL_18:
  v19 = v1[5];

  lazy protocol witness table accessor for type ShortcutsLinkConfirmationError and conformance ShortcutsLinkConfirmationError();
  swift_allocError();
  swift_willThrow();

  OUTLINED_FUNCTION_6_0();

  return v20();
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v2 = *(v1 + 56);
  v3 = *(v1 + 48);
  v4 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v6, v7, v8);
}

{
  OUTLINED_FUNCTION_12_0();
  v1 = *(v0 + 40);
  v2 = *(v0 + 16);
  v3 = enum case for ConfirmationResponse.confirmed(_:);
  v4 = type metadata accessor for ConfirmationResponse();
  (*(*(v4 - 8) + 104))(v1, v3, v4);
  __swift_storeEnumTagSinglePayload(v1, 0, 1, v4);
  SimpleConfirmationResponseProvider.init(_:)();

  OUTLINED_FUNCTION_6_0();

  return v5();
}

uint64_t ShortcutsLinkPromptForActionConfirmationFlowStrategy.makePromptForConfirmation(itemToConfirm:)()
{
  OUTLINED_FUNCTION_8_0();
  v1[35] = v2;
  v1[36] = v0;
  v1[37] = *v0;
  v3 = type metadata accessor for Locale();
  v1[38] = v3;
  OUTLINED_FUNCTION_5_0(v3);
  v1[39] = v4;
  v6 = *(v5 + 64);
  v1[40] = OUTLINED_FUNCTION_28();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  OUTLINED_FUNCTION_14(v7);
  v9 = *(v8 + 64);
  v1[41] = OUTLINED_FUNCTION_28();
  v10 = type metadata accessor for DialogPhase();
  OUTLINED_FUNCTION_14(v10);
  v12 = *(v11 + 64);
  v1[42] = OUTLINED_FUNCTION_28();
  v13 = type metadata accessor for OutputGenerationManifest();
  v1[43] = v13;
  OUTLINED_FUNCTION_5_0(v13);
  v1[44] = v14;
  v16 = *(v15 + 64) + 15;
  v1[45] = swift_task_alloc();
  v1[46] = swift_task_alloc();
  v17 = type metadata accessor for NLContextUpdate();
  v1[47] = v17;
  OUTLINED_FUNCTION_5_0(v17);
  v1[48] = v18;
  v20 = *(v19 + 64);
  v1[49] = OUTLINED_FUNCTION_28();
  v21 = type metadata accessor for CATOption();
  OUTLINED_FUNCTION_14(v21);
  v23 = *(v22 + 64);
  v1[50] = OUTLINED_FUNCTION_28();
  v24 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v24, v25, v26);
}

{
  v1 = *(v0 + 400);
  v2 = *(*(v0 + 288) + 24);
  *(v0 + 408) = v2;
  v3 = [v2 result];
  v4 = [v3 output];

  *(v0 + 416) = [v4 confirmationActionName];
  static Device.current.getter();
  type metadata accessor for RunLinkActionCATs();
  OUTLINED_FUNCTION_51_2();
  OUTLINED_FUNCTION_76_0();
  v5 = CATWrapper.__allocating_init(options:globals:)();
  type metadata accessor for RunLinkActionCATsSimple();
  OUTLINED_FUNCTION_51_2();
  OUTLINED_FUNCTION_76_0();
  v6 = CATWrapperSimple.__allocating_init(options:globals:)();
  type metadata accessor for RunVoiceCommandCATs();
  OUTLINED_FUNCTION_51_2();
  OUTLINED_FUNCTION_76_0();
  v7 = CATWrapper.__allocating_init(options:globals:)();
  type metadata accessor for RunVoiceCommandCATsSimple();
  OUTLINED_FUNCTION_51_2();
  OUTLINED_FUNCTION_76_0();
  v8 = CATWrapperSimple.__allocating_init(options:globals:)();
  type metadata accessor for RunLinkActionCATPatternsExecutor(0);
  OUTLINED_FUNCTION_51_2();
  OUTLINED_FUNCTION_76_0();
  v9 = CATWrapper.__allocating_init(options:globals:)();
  type metadata accessor for LinkActionDialogTemplating();
  inited = swift_initStackObject();
  *(v0 + 424) = inited;
  inited[14] = v3;
  inited[15] = &protocol witness table for RunLinkActionCATPatternsExecutor;
  inited[11] = v9;
  outlined init with take of AceServiceInvokerAsync((v0 + 144), (inited + 2));
  inited[7] = v5;
  inited[8] = v6;
  inited[9] = v7;
  inited[10] = v8;
  v11 = swift_task_alloc();
  *(v0 + 432) = v11;
  *v11 = v0;
  v11[1] = ShortcutsLinkPromptForActionConfirmationFlowStrategy.makePromptForConfirmation(itemToConfirm:);

  return LinkActionDialogTemplating.makeConfirmAndCancelButton(confirmationActionName:)();
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_0();
  *v3 = v2;
  v5 = *(v4 + 432);
  *v3 = *v1;
  v2[55] = v6;
  v2[56] = v7;
  v2[57] = v8;
  v2[58] = v9;
  v2[59] = v0;

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v10, v11, v12);
}

{
  OUTLINED_FUNCTION_12_0();
  v1 = [*(v0 + 408) result];
  v2 = [v1 output];

  *(v0 + 480) = [v2 dialog];
  v3 = swift_task_alloc();
  *(v0 + 488) = v3;
  *v3 = v0;
  v3[1] = ShortcutsLinkPromptForActionConfirmationFlowStrategy.makePromptForConfirmation(itemToConfirm:);
  v4 = *(v0 + 424);

  return LinkActionDialogTemplating.actionConfirmationHeader(customDialog:)();
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v3 = v2;
  OUTLINED_FUNCTION_3_0();
  *v4 = v3;
  v6 = *(v5 + 488);
  *v4 = *v1;
  *(v3 + 496) = v7;
  *(v3 + 504) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v8, v9, v10);
}

{
  v1 = v0[62];
  v3 = v0[48];
  v2 = v0[49];
  v4 = v0[46];
  v5 = v0[47];
  v6 = v0[41];
  v7 = v0[42];
  v8 = v0[36];
  type metadata accessor for ShortcutsLinkNLContextProvider();
  swift_initStackObject();
  ShortcutsLinkNLContextProvider.makeContextForActionConfirmation(acceptLabel:denyLabel:acceptAlternatives:denyAlternatives:)(v8[22], v8[23], v8[24], v8[25], v8[26], v8[27]);
  static DialogPhase.confirmation.getter();
  OutputGenerationManifest.init(dialogPhase:_:)();
  (*(v3 + 16))(v6, v2, v5);
  __swift_storeEnumTagSinglePayload(v6, 0, 1, v5);
  OutputGenerationManifest.nlContextUpdate.setter();
  static TemplatingResult.getListenAfterSpeakingDisabled()();
  OutputGenerationManifest.listenAfterSpeaking.setter();
  v9 = [v1 catId];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  OutputGenerationManifest.responseViewId.setter();
  type metadata accessor for App();
  v0[64] = v8[5];
  v0[65] = v8[6];

  OUTLINED_FUNCTION_9_3();
  App.__allocating_init(appIdentifier:)();
  v10 = specialized App.toAppDisplayName(_:appInfoResolving:isFirstParty:)((v8 + 7), 2);
  v12 = v11;

  v0[66] = v12;
  v0[67] = v10;
  v13 = v10 & 0xFFFFFFFFFFFFLL;
  v14 = 0xE000000000000000;
  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v13 = 0;
  }

  if ((v14 & 0x2000000000000000) != 0)
  {
    v13 = HIBYTE(v14) & 0xF;
  }

  if (!v13)
  {
    if (one-time initialization token for voiceCommands != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v15 = v0[36];
    v16 = type metadata accessor for Logger();
    __swift_project_value_buffer(v16, static Logger.voiceCommands);

    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      *v19 = 136315138;
      v20 = OUTLINED_FUNCTION_9_3();
      *(v19 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v21, v22);
      _os_log_impl(&dword_0, v17, v18, "#ShortcutsLinkPromptForActionConfirmationFlowStrategy: failed to get app's displayName; bundleId='%s'", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v35);
      OUTLINED_FUNCTION_15_0();
      OUTLINED_FUNCTION_15_0();
    }
  }

  v24 = v0[39];
  v23 = v0[40];
  v25 = v0[38];
  v26 = v0[36];
  type metadata accessor for NSError(0, &lazy cache variable for type metadata for LNSnippetEnvironment, LNSnippetEnvironment_ptr);
  v27 = *(v26 + 88);
  __swift_project_boxed_opaque_existential_1(v8 + 7, *(v26 + 80));
  dispatch thunk of DeviceState.siriLocale.getter();
  Locale.identifier.getter();
  v0[68] = v28;
  (*(v24 + 8))(v23, v25);
  v29 = swift_task_alloc();
  v0[69] = v29;
  *v29 = v0;
  v29[1] = ShortcutsLinkPromptForActionConfirmationFlowStrategy.makePromptForConfirmation(itemToConfirm:);
  OUTLINED_FUNCTION_27_0();

  return static LNSnippetEnvironment.getEnvironmentFor(localeIdentifier:serviceInvoker:)(v30, v31, v32);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_0();
  *v2 = v1;
  v4 = *(v3 + 552);
  v5 = *(v3 + 544);
  v6 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v7 = v6;
  *(v9 + 560) = v8;

  v10 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v10, v11, v12);
}

{
  v1 = *(v0 + 408);
  v3 = *(v0 + 360);
  v2 = *(v0 + 368);
  v4 = *(v0 + 344);
  v5 = *(v0 + 352);
  outlined init with copy of DeviceState(*(v0 + 288) + 56, v0 + 184);
  (*(v5 + 16))(v3, v2, v4);
  v6 = [v1 result];
  v7 = [v6 output];

  [v7 shouldShowPrompt];
  v8 = [v1 result];
  v9 = [v8 output];

  v10 = [v9 viewSnippet];
  if (v10)
  {
    v11 = [v10 viewData];

    v12 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;
  }

  else
  {
    v12 = 0;
    v14 = 0xF000000000000000;
  }

  *(v0 + 576) = v14;
  *(v0 + 568) = v12;
  v15 = *(v0 + 416);
  if (v15)
  {
    [v15 destructive];
  }

  v16 = *(v0 + 536);
  v17 = *(v0 + 528);
  v18 = [*(v0 + 408) result];
  v19 = [v18 output];

  *(v0 + 584) = [v19 snippetAction];
  v20 = type metadata accessor for ResponseFactory();
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  swift_allocObject();
  v23 = ResponseFactory.init()();
  *(v0 + 248) = v20;
  *(v0 + 256) = &protocol witness table for ResponseFactory;
  *(v0 + 224) = v23;
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  *(v0 + 592) = v24;
  *v24 = v25;
  v24[1] = ShortcutsLinkPromptForActionConfirmationFlowStrategy.makePromptForConfirmation(itemToConfirm:);
  v26 = *(v0 + 520);
  v27 = *(v0 + 512);
  v28 = *(v0 + 496);
  v29 = *(v0 + 360);
  v30 = *(v0 + 280);
  v44 = *(v0 + 560);
  v42 = *(v0 + 456);
  v43 = *(v0 + 464);
  v41 = *(v0 + 440);
  OUTLINED_FUNCTION_27_0();

  return static ShortcutsLinkPromptForActionConfirmationFlowStrategy.makePromptForConfirmation(deviceState:dialogResult:manifest:shouldShowPrompt:appBundleId:displayName:archivedViewData:confirmLabel:noLabel:isDestructive:snippetAction:environment:responseFactory:)(v31, v32, v33, v34, v35, v36, v37, v38);
}

{
  OUTLINED_FUNCTION_9_0();
  v3 = v2;
  OUTLINED_FUNCTION_3_0();
  *v4 = v3;
  v6 = v5[74];
  v7 = v5[73];
  v8 = v5[72];
  v9 = v5[71];
  v19 = v5[58];
  v10 = v5[56];
  v21 = v5[45];
  v11 = v5[44];
  v20 = v5[43];
  v5[66];
  v12 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v13 = v12;
  v3[75] = v0;

  outlined consume of Data?(v9, v8);

  v14 = *(v11 + 8);
  v3[76] = v14;
  v3[77] = (v11 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v14(v21, v20);
  __swift_destroy_boxed_opaque_existential_1Tm(v3 + 23);
  __swift_destroy_boxed_opaque_existential_1Tm(v3 + 28);
  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v15, v16, v17);
}

{
  v1 = *(v0 + 424);

  v2 = *(v0 + 472);
  OUTLINED_FUNCTION_8_31();

  OUTLINED_FUNCTION_6_0();

  return v3();
}

{
  v1 = *(v0 + 480);
  v2 = *(v0 + 464);
  v3 = *(v0 + 448);
  v4 = *(v0 + 424);

  v5 = *(v0 + 504);
  OUTLINED_FUNCTION_8_31();

  OUTLINED_FUNCTION_6_0();

  return v6();
}

void ShortcutsLinkPromptForActionConfirmationFlowStrategy.makePromptForConfirmation(itemToConfirm:)()
{
  v1 = *(v0 + 608);
  v2 = *(v0 + 560);
  v4 = *(v0 + 416);
  v3 = *(v0 + 424);
  v5 = *(v0 + 392);
  v12 = *(v0 + 616);
  v13 = *(v0 + 400);
  v7 = *(v0 + 376);
  v6 = *(v0 + 384);
  v8 = *(v0 + 368);
  v9 = *(v0 + 344);
  v14 = *(v0 + 360);
  v15 = *(v0 + 336);
  v16 = *(v0 + 328);
  v17 = *(v0 + 320);

  swift_setDeallocating();
  LinkActionDialogTemplating.deinit();
  swift_deallocClassInstance();

  v1(v8, v9);
  (*(v6 + 8))(v5, v7);

  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_77();

  __asm { BRAA            X1, X16 }
}

{
  v16 = *(v0 + 616);
  v1 = *(v0 + 608);
  v2 = *(v0 + 560);
  v4 = *(v0 + 416);
  v3 = *(v0 + 424);
  v6 = *(v0 + 384);
  v5 = *(v0 + 392);
  v8 = *(v0 + 368);
  v7 = *(v0 + 376);
  v9 = *(v0 + 344);

  v1(v8, v9);
  v10 = *(v6 + 8);
  v11 = OUTLINED_FUNCTION_9_3();
  v12(v11);
  v13 = *(v0 + 600);
  OUTLINED_FUNCTION_8_31();

  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_27_0();

  __asm { BRAA            X1, X16 }
}

uint64_t static ShortcutsLinkPromptForActionConfirmationFlowStrategy.makePromptForConfirmation(deviceState:dialogResult:manifest:shouldShowPrompt:appBundleId:displayName:archivedViewData:confirmLabel:noLabel:isDestructive:snippetAction:environment:responseFactory:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 584) = v20;
  *(v8 + 576) = v19;
  *(v8 + 568) = v18;
  *(v8 + 130) = v17;
  *(v8 + 560) = v16;
  *(v8 + 528) = v14;
  *(v8 + 544) = v15;
  *(v8 + 512) = v13;
  *(v8 + 496) = a7;
  *(v8 + 504) = a8;
  *(v8 + 480) = a4;
  *(v8 + 488) = a6;
  *(v8 + 129) = a5;
  *(v8 + 464) = a2;
  *(v8 + 472) = a3;
  *(v8 + 456) = a1;
  v9 = OUTLINED_FUNCTION_4();
  return _swift_task_switch(v9, v10, v11);
}

uint64_t static ShortcutsLinkPromptForActionConfirmationFlowStrategy.makePromptForConfirmation(deviceState:dialogResult:manifest:shouldShowPrompt:appBundleId:displayName:archivedViewData:confirmLabel:noLabel:isDestructive:snippetAction:environment:responseFactory:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v13 = *(v12 + 464);
  v14 = v13[3];
  v15 = v13[4];
  OUTLINED_FUNCTION_47(v13);
  OUTLINED_FUNCTION_9_3();
  if (dispatch thunk of DeviceState.isHomePod.getter())
  {
    v16 = *(v12 + 584);
    v17 = *(v12 + 472);
    v18 = v16[3];
    v19 = v16[4];
    OUTLINED_FUNCTION_47(v16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    OUTLINED_FUNCTION_27_6();
    v20 = swift_allocObject();
    *(v12 + 608) = v20;
    *(v20 + 16) = xmmword_216010;
    *(v20 + 32) = v17;
    v21 = async function pointer to dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)[1];
    v22 = v17;
    swift_task_alloc();
    OUTLINED_FUNCTION_20_0();
    *(v12 + 616) = v23;
    *v23 = v24;
    v23[1] = static ShortcutsLinkPromptForActionConfirmationFlowStrategy.makePromptForConfirmation(deviceState:dialogResult:manifest:shouldShowPrompt:appBundleId:displayName:archivedViewData:confirmLabel:noLabel:isDestructive:snippetAction:environment:responseFactory:);
    v25 = *(v12 + 480);
    v26 = *(v12 + 456);
    OUTLINED_FUNCTION_77();

    return dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10, a11, a12);
  }

  else
  {
    if (*(v12 + 129) == 1)
    {
      v35 = *(v12 + 472);
      v38 = DialogExecutionResult.firstDialogFullPrint()();
      object = v38.value._object;
      countAndFlagsBits = v38.value._countAndFlagsBits;
    }

    else
    {
      countAndFlagsBits = 0;
      object = 0;
    }

    v39 = *(v12 + 584);
    v40 = *(v12 + 130);
    v41 = *(v12 + 560);
    v42 = *(v12 + 552);
    v43 = *(v12 + 544);
    v44 = *(v12 + 536);
    v69 = *(v12 + 520);
    v70 = *(v12 + 568);
    v45 = *(v12 + 504);
    v46 = *(v12 + 512);
    v47 = *(v12 + 496);
    v68 = *(v12 + 472);
    *(v12 + 256) = *(v12 + 488);
    *(v12 + 264) = v47;
    *(v12 + 272) = v45;
    *(v12 + 280) = v46;
    *(v12 + 288) = countAndFlagsBits;
    *(v12 + 296) = object;
    *(v12 + 304) = v69;
    *(v12 + 320) = v70;
    memcpy((v12 + 16), (v12 + 256), 0x50uLL);
    *(v12 + 96) = v44;
    *(v12 + 104) = v43;
    *(v12 + 112) = v42;
    *(v12 + 120) = v41;
    *(v12 + 128) = v40;
    v48 = v39[3];
    v71 = v39[4];
    OUTLINED_FUNCTION_47(v39);
    *(v12 + 440) = type metadata accessor for WorkflowDataModels(0);
    *(v12 + 448) = lazy protocol witness table accessor for type WorkflowDataModels and conformance WorkflowDataModels(&lazy protocol witness table cache variable for type WorkflowDataModels and conformance WorkflowDataModels, type metadata accessor for WorkflowDataModels);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v12 + 416));
    memcpy(boxed_opaque_existential_1, (v12 + 16), 0x71uLL);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    OUTLINED_FUNCTION_27_6();
    v50 = swift_allocObject();
    *(v12 + 592) = v50;
    *(v50 + 16) = xmmword_216010;
    *(v50 + 32) = v68;

    outlined copy of Data?(v69, *(&v69 + 1));
    v51 = *(&v70 + 1);
    v52 = v70;
    outlined init with copy of WorkflowDataModels.LinkActionModel(v12 + 256, v12 + 336);

    outlined init with copy of WorkflowDataModels.LinkConfirmationModel(v12 + 16, v12 + 136);
    v53 = async function pointer to dispatch thunk of ResponseGenerating.makeResponseOutput(resultModel:dialog:outputGenerationManifest:)[1];
    v54 = v68;
    swift_task_alloc();
    OUTLINED_FUNCTION_20_0();
    *(v12 + 600) = v55;
    *v55 = v56;
    v55[1] = static ShortcutsLinkPromptForActionConfirmationFlowStrategy.makePromptForConfirmation(deviceState:dialogResult:manifest:shouldShowPrompt:appBundleId:displayName:archivedViewData:confirmLabel:noLabel:isDestructive:snippetAction:environment:responseFactory:);
    v57 = *(v12 + 480);
    v58 = *(v12 + 456);
    OUTLINED_FUNCTION_77();

    return dispatch thunk of ResponseGenerating.makeResponseOutput(resultModel:dialog:outputGenerationManifest:)(v59, v60, v61, v62, v63, v64, v65, v66, a9, a10, a11, a12);
  }
}

uint64_t static ShortcutsLinkPromptForActionConfirmationFlowStrategy.makePromptForConfirmation(deviceState:dialogResult:manifest:shouldShowPrompt:appBundleId:displayName:archivedViewData:confirmLabel:noLabel:isDestructive:snippetAction:environment:responseFactory:)()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v2 = v1;
  OUTLINED_FUNCTION_3_0();
  *v3 = v2;
  v5 = *(v4 + 600);
  v6 = *(v4 + 592);
  v7 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v8 = v7;

  __swift_destroy_boxed_opaque_existential_1Tm((v2 + 416));
  v9 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v9, v10, v11);
}

{
  OUTLINED_FUNCTION_8_0();
  outlined destroy of WorkflowDataModels.LinkConfirmationModel(v0 + 16);
  outlined destroy of WorkflowDataModels.LinkActionModel(v0 + 256);
  OUTLINED_FUNCTION_6_0();

  return v1();
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v2 = *(v1 + 616);
  v3 = *(v1 + 608);
  v4 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v5 = v4;

  OUTLINED_FUNCTION_6_0();

  return v6();
}

uint64_t ShortcutsLinkPromptForActionConfirmationFlowStrategy.getVoiceCommandText(input:)()
{
  v0 = type metadata accessor for VoiceCommandsNLIntent(0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Parse();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for NLIntent();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  Input.parse.getter();
  if ((*(v5 + 88))(v8, v4) == enum case for Parse.NLv3IntentOnly(_:))
  {
    (*(v5 + 96))(v8, v4);
    (*(v10 + 32))(v13, v8, v9);
    (*(v10 + 16))(v3, v13, v9);
    if (one-time initialization token for voiceCommandTextNode != -1)
    {
      swift_once();
    }

    lazy protocol witness table accessor for type WorkflowDataModels and conformance WorkflowDataModels(&lazy protocol witness table cache variable for type VoiceCommandsNLIntent and conformance VoiceCommandsNLIntent, type metadata accessor for VoiceCommandsNLIntent);
    IntentNodeTraversable.value<A>(forNode:)();
    outlined destroy of VoiceCommandsNLIntent(v3);
    (*(v10 + 8))(v13, v9);
    return v15;
  }

  else
  {
    (*(v5 + 8))(v8, v4);
    return 0;
  }
}

uint64_t ShortcutsLinkPromptForActionConfirmationFlowStrategy.deinit()
{
  v1 = *(v0 + 48);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 96));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 136));
  v2 = *(v0 + 184);
  v3 = *(v0 + 200);
  v4 = *(v0 + 208);
  v5 = *(v0 + 216);

  return v0;
}

uint64_t ShortcutsLinkPromptForActionConfirmationFlowStrategy.__deallocating_deinit()
{
  ShortcutsLinkPromptForActionConfirmationFlowStrategy.deinit();

  return swift_deallocClassInstance();
}

uint64_t protocol witness for PromptForConfirmationFlowStrategyAsync.parseConfirmationResponse(input:) in conformance ShortcutsLinkPromptForActionConfirmationFlowStrategy()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = CustomIntentRCHFlowStrategy.makeErrorResponse(error:app:intent:);

  return ShortcutsLinkPromptForActionConfirmationFlowStrategy.parseConfirmationResponse(input:)();
}

uint64_t protocol witness for PromptForConfirmationFlowStrategyAsync.makePromptForConfirmation(itemToConfirm:) in conformance ShortcutsLinkPromptForActionConfirmationFlowStrategy()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = CustomIntentRCHFlowStrategy.makeErrorResponse(error:app:intent:);

  return ShortcutsLinkPromptForActionConfirmationFlowStrategy.makePromptForConfirmation(itemToConfirm:)();
}

uint64_t sub_193648()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  OUTLINED_FUNCTION_27_6();

  return _swift_deallocObject(v3, v4, v5);
}

uint64_t partial apply for closure #1 in ShortcutsLinkPromptForActionConfirmationFlowStrategy.actionForInput(_:)()
{
  OUTLINED_FUNCTION_12_0();
  v3 = v2;
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  *(v1 + 16) = v7;
  *v7 = v8;
  v7[1] = protocol witness for RouteConfirmIntentResponseFlowStrategyAsync.makeFailureConfirmingIntentResponse(app:intent:intentResponse:) in conformance CustomIntentRCHFlowStrategy;

  return closure #1 in ShortcutsLinkPromptForActionConfirmationFlowStrategy.actionForInput(_:)(v3, v4, v5, v6);
}

_BYTE *storeEnumTagSinglePayload for ShortcutsLinkConfirmationError(_BYTE *result, int a2, int a3)
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
      JUMPOUT(0x1938D4);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ShortcutsLinkPromptForActionConfirmationFlowStrategy.ConfirmationNames(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for ShortcutsLinkPromptForActionConfirmationFlowStrategy.ConfirmationNames(uint64_t result, int a2, int a3)
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

uint64_t OUTLINED_FUNCTION_8_31()
{
  v3 = v0[49];
  v2 = v0[50];
  v5 = v0[45];
  v4 = v0[46];
  v7 = v0[41];
  v6 = v0[42];
  v8 = v0[40];
}

uint64_t WorkflowMacSnippetProvider.buildSnippetForShowAlert(dialogRequest:shortcutName:appBundleId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[4] = a5;
  v6[5] = v5;
  v6[2] = a1;
  v6[3] = a4;
  v7 = type metadata accessor for ImageSize();
  v6[6] = v7;
  v8 = *(v7 - 8);
  v6[7] = v8;
  v9 = *(v8 + 64) + 15;
  v6[8] = swift_task_alloc();

  return _swift_task_switch(WorkflowMacSnippetProvider.buildSnippetForShowAlert(dialogRequest:shortcutName:appBundleId:), 0, 0);
}

uint64_t WorkflowMacSnippetProvider.buildSnippetForShowAlert(dialogRequest:shortcutName:appBundleId:)()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];
  v5 = v0[3];
  v4 = v0[4];
  v6 = v0[2];
  outlined bridged method (pb) of @objc WFShowAlertDialogRequest.message.getter(v6);
  (*(v2 + 104))(v1, enum case for ImageSize.original(_:), v3);
  LOBYTE(v36) = 1;
  v37 = OUTLINED_FUNCTION_0_41();

  (*(v2 + 8))(v1, v3);
  v7 = [v6 okButton];
  v8 = [v7 title];

  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  v12 = WorkflowMacSnippetProvider.buildCardSectionForButton(title:confirmation:appBundleId:)(v9, v11, 0, v5, v4);
  v14 = v13;

  v15 = [v6 cancelButton];
  if (v15)
  {
    v16 = v15;
    v17 = [v15 title];

    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;
  }

  else
  {
    v18 = 0;
    v20 = 0xE000000000000000;
  }

  v38 = v0[8];
  v21 = v0[5];
  v22 = WorkflowMacSnippetProvider.buildCardSectionForButton(title:confirmation:appBundleId:)(v18, v20, 2, v0[3], v0[4]);
  v24 = v23;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_225690;
  *(v25 + 32) = v37;
  *(v25 + 40) = v12;
  *(v25 + 48) = v22;
  type metadata accessor for NSError(0, &lazy cache variable for type metadata for SACardSnippet, SACardSnippet_ptr);
  v26 = v37;
  v27 = v12;
  v28 = v22;
  v29 = static SACardSnippet.makeFromCardSections(cardSections:shouldGenerateAceId:)();

  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_224CE0;
  *(v30 + 32) = v14;
  *(v30 + 40) = v24;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  outlined bridged method (mbnn) of @objc SACardSnippet.referencedCommands.setter(v30, v29);
  type metadata accessor for NSError(0, &lazy cache variable for type metadata for NSNumber, NSNumber_ptr);
  v31 = v29;
  isa = NSNumber.init(BOOLeanLiteral:)(1).super.super.isa;
  [v31 setListenAfterSpeaking:isa];

  [v31 setCanUseServerTTS:0];
  type metadata accessor for SiriKitAceViewBuilder();
  dispatch thunk of static SiriKitAceViewBuilder.makeBuilder(deviceState:)();
  dispatch thunk of SiriKitAceViewBuilder.addSnippet(snippet:)();

  v33 = dispatch thunk of SiriKitAceViewBuilder.build()();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  v34 = v0[1];

  return v34(v33);
}

void *WorkflowMacSnippetProvider.buildCardSectionForButton(title:confirmation:appBundleId:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v8 = type metadata accessor for ImageSize();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v20[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 104))(v12, enum case for ImageSize.original(_:), v8);
  v13 = OUTLINED_FUNCTION_0_41();
  (*(v9 + 8))(v12, v8);
  static Device.current.getter();
  v14 = static SLFConfirmationItemConverter.toDirectInvocationCommand(confirmation:appBundleId:deviceState:)(a3, a4, a5, v20);
  __swift_destroy_boxed_opaque_existential_1Tm(v20);
  v15 = v14;
  v16 = static CasinoFactory.makeReferentialAbstractCommand(originalCommand:)();

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_216010;
  *(v17 + 32) = v16;
  outlined bridged method (mbnn) of @objc SFCardSection.commands.setter(v17, v13);
  return v13;
}

uint64_t OUTLINED_FUNCTION_0_41()
{

  return static CasinoFactory.makeRowCardSection(possibleTitle:imageSize:possibleLeadingSubtitle:possibleTrailingSubtitle:possibleImage:possibleMonogramLetters:possibleContactIdentifiers:possibleImageUri:maxLines:shouldCropToCircle:)();
}

uint64_t AutoShortcutsSetEnablementFlow.__allocating_init(deviceState:outputPublisher:linkActionPatterns:autoShortcutCATs:autoShortcutCATsSimple:voiceShortcutsClient:provider:appNameResolver:preferences:userDefaults:)(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, __int128 *a6, __int128 *a7, uint64_t *a8, uint64_t a9, uint64_t *a10)
{
  v13 = swift_allocObject();
  v14 = a8[3];
  v15 = a8[4];
  __swift_mutable_project_boxed_opaque_existential_1(a8, v14);
  OUTLINED_FUNCTION_13_1();
  v17 = *(v16 + 64);
  __chkstk_darwin(v18);
  OUTLINED_FUNCTION_3();
  v20 = OUTLINED_FUNCTION_99_1(v19);
  v21(v20);
  v22 = a10[3];
  v23 = a10[4];
  __swift_mutable_project_boxed_opaque_existential_1(a10, v22);
  OUTLINED_FUNCTION_13_1();
  v25 = *(v24 + 64);
  __chkstk_darwin(v26);
  OUTLINED_FUNCTION_3();
  v28 = OUTLINED_FUNCTION_77_6(v27);
  v29(v28);
  v30 = specialized AutoShortcutsSetEnablementFlow.init(deviceState:outputPublisher:linkActionPatterns:autoShortcutCATs:autoShortcutCATsSimple:voiceShortcutsClient:provider:appNameResolver:preferences:userDefaults:)(a1, a2, a3, a4, a5, a6, a7, v10, a9, v11, v13, v22, v14, v23, v15);
  __swift_destroy_boxed_opaque_existential_1Tm(a10);
  __swift_destroy_boxed_opaque_existential_1Tm(a8);
  return v30;
}

uint64_t key path setter for AutoShortcutsSetEnablementFlow.state : AutoShortcutsSetEnablementFlow(void *__src, uint64_t *a2)
{
  memcpy(__dst, __src, 0x41uLL);
  v3 = *a2;
  swift_beginAccess();
  memcpy(v7, (v3 + 288), 0x41uLL);
  memcpy((v3 + 288), __dst, 0x41uLL);
  outlined init with copy of AutoShortcutsSetEnablementFlow.State(__dst, &v5);
  return outlined destroy of AutoShortcutsSetEnablementFlow.State(v7);
}

void *AutoShortcutsSetEnablementFlow.state.getter()
{
  swift_beginAccess();
  memcpy(__dst, (v0 + 288), 0x41uLL);
  v1 = outlined init with copy of AutoShortcutsSetEnablementFlow.State(__dst, v3);
  return OUTLINED_FUNCTION_110_0(v1, __dst);
}

uint64_t static AutoShortcutsSetEnablementFlow.State.__derived_enum_equals(_:_:)(unsigned __int8 *a1, int8x16_t *a2)
{
  v3 = *a1;
  v4 = *(a1 + 5) | (a1[7] << 16);
  v5 = *(a1 + 1);
  v6 = *(a1 + 1);
  v7 = *(a1 + 2);
  v8 = *(a1 + 3);
  v10 = *(a1 + 4);
  v9 = *(a1 + 5);
  v12 = *(a1 + 6);
  v11 = *(a1 + 7);
  v13 = a1[64];
  switch(v13 >> 5)
  {
    case 1u:
      if (a2[4].i8[0] & 0xE0) != 0x20 || ((v3 ^ a2->u8[0]))
      {
        goto LABEL_72;
      }

      v26 = a2[1].i64[1];
      v27 = a2[2].i64[0];
      v29 = a2[3].i64[0];
      v28 = a2[3].i64[1];
      v30 = a2[2].i64[1];
      v31 = v6 == a2->i64[1] && v7 == a2[1].i64[0];
      if (!v31 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        goto LABEL_72;
      }

      v32 = v8 == v26 && v10 == v27;
      if (!v32 && (OUTLINED_FUNCTION_81_6() & 1) == 0 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(v9, v30) & 1) == 0)
      {
        goto LABEL_72;
      }

      if (v11)
      {
        if (v28)
        {
          if (v12 == v29 && v11 == v28)
          {
            goto LABEL_68;
          }

          OUTLINED_FUNCTION_22_4();
          if (_stringCompareWithSmolCheck(_:_:expecting:)())
          {
            goto LABEL_68;
          }
        }
      }

      else if (!v28)
      {
        goto LABEL_68;
      }

      goto LABEL_72;
    case 2u:
      v18 = a2[4].i8[0];
      if (v18 & 0xE0) != 0x40 || ((v3 ^ a2->u8[0]))
      {
        goto LABEL_72;
      }

      v19 = a2[1].i64[1];
      v20 = a2[2].i64[0];
      v37 = a2[3].i64[0];
      v38 = a2[3].i64[1];
      v21 = a2[2].i64[1];
      v22 = v6 == a2->i64[1] && v7 == a2[1].i64[0];
      if (!v22 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        goto LABEL_72;
      }

      v23 = v8 == v19 && v10 == v20;
      if (!v23 && (OUTLINED_FUNCTION_81_6() & 1) == 0 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(v9, v21) & 1) == 0)
      {
        goto LABEL_72;
      }

      if (v11)
      {
        if (!v38)
        {
          goto LABEL_72;
        }

        if (v12 != v37 || v11 != v38)
        {
          OUTLINED_FUNCTION_22_4();
          if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
          {
            goto LABEL_72;
          }
        }
      }

      else if (v38)
      {
        goto LABEL_72;
      }

      v25 = v13 ^ v18 ^ 1;
      return v25 & 1;
    case 3u:
      if ((a2[4].i8[0] & 0xE0) != 0x60)
      {
        goto LABEL_72;
      }

      v25 = v3 == a2->u8[0];
      return v25 & 1;
    case 4u:
      if (v13 != 128 || v7 | v6 | v8 | v10 | v9 | v12 | (v5 << 8) | (v4 << 40) | v3 | v11)
      {
        v34 = a2[4].u8[0];
        if ((v34 & 0xE0) != 0x80)
        {
          goto LABEL_72;
        }

        if (v34 != 128 || a2->i64[0] != 1)
        {
          goto LABEL_72;
        }

        v36 = vorrq_s8(a2[2], a2[3]);
        if (*&vorr_s8(*v36.i8, *&vextq_s8(v36, v36, 8uLL)) | a2[1].i64[1] | a2[1].i64[0] | a2->i64[1])
        {
          goto LABEL_72;
        }

LABEL_68:
        v25 = 1;
        return v25 & 1;
      }

      v16 = a2[4].u8[0];
      if ((v16 & 0xE0) == 0x80 && v16 == 128)
      {
        v17 = vorrq_s8(vorrq_s8(*a2, a2[2]), vorrq_s8(a2[1], a2[3]));
        if (!*&vorr_s8(*v17.i8, *&vextq_s8(v17, v17, 8uLL)))
        {
          goto LABEL_68;
        }
      }

LABEL_72:
      v25 = 0;
      return v25 & 1;
    default:
      if (a2[4].u8[0] > 0x1Fu || v3 != a2->u8[0])
      {
        goto LABEL_72;
      }

      if (v6 == a2->i64[1] && v7 == a2[1].i64[0])
      {
        goto LABEL_68;
      }

      return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t AutoShortcutsSetEnablementFlow.init(deviceState:outputPublisher:linkActionPatterns:autoShortcutCATs:autoShortcutCATsSimple:voiceShortcutsClient:provider:appNameResolver:preferences:userDefaults:)(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, __int128 *a6, __int128 *a7, uint64_t *a8, uint64_t a9, uint64_t *a10)
{
  v15 = a8[3];
  v14 = a8[4];
  __swift_mutable_project_boxed_opaque_existential_1(a8, v15);
  OUTLINED_FUNCTION_13_1();
  v17 = *(v16 + 64);
  __chkstk_darwin(v18);
  OUTLINED_FUNCTION_3();
  v20 = OUTLINED_FUNCTION_99_1(v19);
  v21(v20);
  v22 = a10[3];
  v23 = a10[4];
  __swift_mutable_project_boxed_opaque_existential_1(a10, v22);
  OUTLINED_FUNCTION_13_1();
  v25 = *(v24 + 64);
  __chkstk_darwin(v26);
  OUTLINED_FUNCTION_3();
  v28 = OUTLINED_FUNCTION_77_6(v27);
  v29(v28);
  v30 = specialized AutoShortcutsSetEnablementFlow.init(deviceState:outputPublisher:linkActionPatterns:autoShortcutCATs:autoShortcutCATsSimple:voiceShortcutsClient:provider:appNameResolver:preferences:userDefaults:)(a1, a2, a3, a4, a5, a6, a7, v10, a9, v11, v34, v22, v15, v23, v14);
  __swift_destroy_boxed_opaque_existential_1Tm(a10);
  __swift_destroy_boxed_opaque_existential_1Tm(a8);
  return v30;
}

uint64_t AutoShortcutsSetEnablementFlow.on(input:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriLinkFlowPlugin16VoiceCommandTaskOSgMd, &_s18SiriLinkFlowPlugin16VoiceCommandTaskOSgMR);
  v5 = OUTLINED_FUNCTION_14(v4);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v101 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
  v11 = OUTLINED_FUNCTION_14(v10);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v101 - v14;
  v110 = type metadata accessor for Siri_Nlu_External_UserParse();
  OUTLINED_FUNCTION_13_1();
  v109 = v16;
  v18 = *(v17 + 64);
  __chkstk_darwin(v19);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_27_14(v21 - v20);
  *&v111 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  OUTLINED_FUNCTION_13_1();
  v104 = v22;
  v24 = *(v23 + 64);
  __chkstk_darwin(v25);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_27_14(v27 - v26);
  v115 = type metadata accessor for Parse();
  OUTLINED_FUNCTION_13_1();
  v114 = v28;
  v30 = *(v29 + 64);
  v32 = __chkstk_darwin(v31);
  v113 = &v101 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  OUTLINED_FUNCTION_27_14(&v101 - v34);
  v107 = type metadata accessor for USOParse();
  OUTLINED_FUNCTION_13_1();
  v106 = v35;
  v37 = *(v36 + 64);
  __chkstk_darwin(v38);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_27_14(v40 - v39);
  v41 = type metadata accessor for Input();
  OUTLINED_FUNCTION_13_1();
  v43 = v42;
  v45 = *(v44 + 64);
  __chkstk_darwin(v46);
  OUTLINED_FUNCTION_3();
  v49 = v48 - v47;
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v50 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_59(v50, static Logger.voiceCommands);
  (*(v43 + 16))(v49, a1, v41);
  v117 = v1;
  v51 = Logger.logObject.getter();
  v52 = static os_log_type_t.debug.getter();
  v53 = os_log_type_enabled(v51, v52);
  v116 = a1;
  if (v53)
  {
    v54 = OUTLINED_FUNCTION_48();
    v102 = v1;
    v101 = v9;
    v55 = v54;
    v56 = swift_slowAlloc();
    v119 = v56;
    *v55 = 136315138;
    v57 = Input.description.getter();
    v58 = v15;
    v60 = v59;
    (*(v43 + 8))(v49, v41);
    v61 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v57, v60, &v119);
    v15 = v58;

    *(v55 + 4) = v61;
    _os_log_impl(&dword_0, v51, v52, "#AutoShortcutsSetEnablementFlow on input: %s", v55, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v56);
    OUTLINED_FUNCTION_11_0();
    v9 = v101;
    v2 = v102;
  }

  else
  {

    v62 = (*(v43 + 8))(v49, v41);
  }

  (*(*v2 + 168))(&v119, v62);
  v63 = v119;
  v65 = v122;
  v64 = v123;
  v66 = v124;
  v67 = 0;
  switch(v125 >> 5)
  {
    case 1:
      v111 = v121;
      v112 = v120;
      OUTLINED_FUNCTION_105_1(&v127);
      v82 = static VoiceCommandConfirmationUtils.getVoiceCommandConfirmation(parse:)(v52);
      (*(v114 + 8))(v52, v115);
      v83 = 1;
      switch(v82)
      {
        case 1:
        case 2:
          v83 = _stringCompareWithSmolCheck(_:_:expecting:)();
          break;
        case 3:

          v86 = Logger.logObject.getter();
          v87 = static os_log_type_t.info.getter();
          if (!os_log_type_enabled(v86, v87))
          {
            goto LABEL_27;
          }

          v88 = OUTLINED_FUNCTION_52();
          OUTLINED_FUNCTION_45(v88);
          v89 = "#AutoShortcutsSetEnablementFlow: ignoring parse input without confirmation response";
          goto LABEL_26;
        default:
          break;
      }

      v67 = 1;
      OUTLINED_FUNCTION_53_6();
      OUTLINED_FUNCTION_82_8();
      *(v2 + 288) = v63 & 1;
      v84 = v111;
      *(v2 + 296) = v112;
      *(v2 + 312) = v84;
      *(v2 + 328) = v65;
      *(v2 + 336) = v64;
      *(v2 + 344) = v66;
      *(v2 + 352) = v83 & 1 | 0x40;
      outlined destroy of AutoShortcutsSetEnablementFlow.State(v118);
      return v67;
    case 3:
      return v67;
    case 4:
      v67 = 0;
      if (v125 != 128 || *(&v120 + 1) | v120 | (*(&v119 + 1) << 8) | ((*(&v119 + 5) | (HIBYTE(v119) << 16)) << 40) | v119 | v121 | *(&v121 + 1) | v122 | v123 | v124)
      {
        return v67;
      }

      OUTLINED_FUNCTION_105_1(&v126);
      v71 = v114;
      v72 = v115;
      if ((*(v114 + 88))(v52, v115) != enum case for Parse.uso(_:))
      {
        v85 = *(v71 + 8);
        v66 = (v71 + 8);
        v85(v52, v72);
LABEL_24:
        v86 = Logger.logObject.getter();
        v87 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v86, v87))
        {
          v96 = OUTLINED_FUNCTION_52();
          OUTLINED_FUNCTION_45(v96);
          v89 = "#AutoShortcutsSetEnablementFlow: ignoring parse input without mode and appId";
LABEL_26:
          _os_log_impl(&dword_0, v86, v87, v89, v66, 2u);
          OUTLINED_FUNCTION_17();
        }

LABEL_27:

        return 0;
      }

      (*(v71 + 96))(v52, v72);
      v73 = v106;
      (*(v106 + 32))(v105, v52, v107);
      v74 = v108;
      USOParse.userParse.getter();
      v75 = Siri_Nlu_External_UserParse.userDialogActs.getter();
      (*(v109 + 8))(v74, v110);
      specialized Collection.first.getter(v75, v15);

      v66 = v111;
      if (__swift_getEnumTagSinglePayload(v15, 1, v111) == 1)
      {
        v76 = *(v73 + 8);
        v77 = OUTLINED_FUNCTION_51_6();
        v78(v77);
        v79 = &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd;
        v80 = &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR;
        v81 = v15;
LABEL_23:
        outlined destroy of String?(v81, v79, v80);
        goto LABEL_24;
      }

      v90 = v104;
      v91 = v103;
      (*(v104 + 32))(v103, v15, v66);
      Siri_Nlu_External_UserDialogAct.convertToVoiceCommandTask()(v9);
      (*(v90 + 8))(v91, v66);
      v92 = *(v73 + 8);
      v93 = OUTLINED_FUNCTION_51_6();
      v94(v93);
      v95 = type metadata accessor for VoiceCommandTask(0);
      if (__swift_getEnumTagSinglePayload(v9, 1, v95) == 1)
      {
        v79 = &_s18SiriLinkFlowPlugin16VoiceCommandTaskOSgMd;
        v80 = &_s18SiriLinkFlowPlugin16VoiceCommandTaskOSgMR;
        v81 = v9;
        goto LABEL_23;
      }

      if (swift_getEnumCaseMultiPayload() != 1)
      {
        outlined destroy of VoiceCommandTask(v9);
        goto LABEL_24;
      }

      v98 = *(v9 + 1);
      v99 = *(v9 + 2);
      v100 = *v9 & 7;
      OUTLINED_FUNCTION_53_6();
      OUTLINED_FUNCTION_82_8();
      *(v2 + 288) = v100;
      *(v2 + 296) = v98;
      *(v2 + 304) = v99;
      *(v2 + 352) = 0;
      outlined destroy of AutoShortcutsSetEnablementFlow.State(v118);
      return 1;
    default:
      outlined destroy of AutoShortcutsSetEnablementFlow.State(&v119);
      v68 = Logger.logObject.getter();
      v69 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v68, v69))
      {
        v70 = OUTLINED_FUNCTION_52();
        *v70 = 0;
      }

      OUTLINED_FUNCTION_53_6();
      OUTLINED_FUNCTION_82_8();
      *(v2 + 288) = 0;
      *(v2 + 352) = 96;
      outlined destroy of AutoShortcutsSetEnablementFlow.State(v118);
      return 0;
  }
}

uint64_t AutoShortcutsSetEnablementFlow.execute()(uint64_t a1)
{
  *(v2 + 184) = a1;
  *(v2 + 192) = v1;
  return OUTLINED_FUNCTION_0_16(AutoShortcutsSetEnablementFlow.execute());
}

uint64_t AutoShortcutsSetEnablementFlow.execute()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  OUTLINED_FUNCTION_24_1();
  v16 = *(v15 + 192);
  OUTLINED_FUNCTION_18_4();
  (*(v17 + 168))();
  v18 = *(v15 + 16);
  v19 = *(v15 + 21) | (*(v15 + 23) << 16);
  v20 = *(v15 + 17);
  v22 = *(v15 + 24);
  v21 = *(v15 + 32);
  v24 = *(v15 + 40);
  v23 = *(v15 + 48);
  *(v15 + 200) = v21;
  *(v15 + 208) = v23;
  v25 = *(v15 + 56);
  v26 = *(v15 + 64);
  v27 = *(v15 + 72);
  *(v15 + 216) = v25;
  *(v15 + 224) = v27;
  v28 = *(v15 + 80);
  v29 = (v20 << 8) | (v19 << 40) | v18;
  switch(v28 >> 5)
  {
    case 1u:
      outlined destroy of AutoShortcutsSetEnablementFlow.State(v15 + 16);
      goto LABEL_13;
    case 2u:
      if (v28)
      {
        swift_task_alloc();
        OUTLINED_FUNCTION_20_0();
        *(v15 + 240) = v37;
        *v37 = v38;
        v37[1] = AutoShortcutsSetEnablementFlow.execute();
        v39 = *(v15 + 184);
        v40 = *(v15 + 192);
        OUTLINED_FUNCTION_27_0();

        return AutoShortcutsSetEnablementFlow.executeIntentConfirmed(isEnabling:appId:appName:shortcutPhrases:moreShortcutsLabel:)(v41, v42, v43, v44, v45, v46, v47, v48, a9, a10, a11, a12, a13, a14, a15);
      }

      else
      {

        swift_task_alloc();
        OUTLINED_FUNCTION_20_0();
        *(v15 + 248) = v63;
        *v63 = v64;
        v63[1] = AutoShortcutsSetEnablementFlow.execute();
        v65 = *(v15 + 184);
        v66 = *(v15 + 192);
        OUTLINED_FUNCTION_74_5();
        OUTLINED_FUNCTION_102_0();

        return AutoShortcutsSetEnablementFlow.publishChangeDeclinedAck(appName:isStillEnabled:)();
      }

    case 3u:
      goto LABEL_7;
    case 4u:
      if (!(v21 | v22 | v24 | v23 | v25 | v26 | v29 | v27) && v28 == 128)
      {
LABEL_13:
        if (one-time initialization token for voiceCommands != -1)
        {
          OUTLINED_FUNCTION_0();
        }

        v50 = type metadata accessor for Logger();
        OUTLINED_FUNCTION_59(v50, static Logger.voiceCommands);
        v51 = Logger.logObject.getter();
        v52 = static os_log_type_t.error.getter();
        if (OUTLINED_FUNCTION_30_1(v52))
        {
          v53 = OUTLINED_FUNCTION_52();
          OUTLINED_FUNCTION_45(v53);
          OUTLINED_FUNCTION_9_8();
          _os_log_impl(v54, v55, v56, v57, v58, 2u);
          OUTLINED_FUNCTION_17();
        }

        v59 = *(v15 + 184);
        v60 = *(v15 + 192);

        OUTLINED_FUNCTION_53_6();
        memcpy((v15 + 88), (v60 + 288), 0x41uLL);
        *(v60 + 288) = 0;
        *(v60 + 352) = 96;
        outlined destroy of AutoShortcutsSetEnablementFlow.State(v15 + 88);
      }

      else
      {
LABEL_7:
        v36 = *(v15 + 184);
      }

      static ExecuteResponse.complete()();
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_102_0();

      __asm { BRAA            X1, X16 }

      return result;
    default:
      swift_task_alloc();
      OUTLINED_FUNCTION_20_0();
      *(v15 + 232) = v30;
      *v30 = v31;
      v30[1] = AutoShortcutsSetEnablementFlow.execute();
      v32 = *(v15 + 184);
      v33 = *(v15 + 192);
      OUTLINED_FUNCTION_102_0();

      return AutoShortcutsSetEnablementFlow.executeIntentReceived(mode:appId:)();
  }
}

uint64_t AutoShortcutsSetEnablementFlow.execute()()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v2 = v1;
  OUTLINED_FUNCTION_4_1();
  *v3 = v2;
  v5 = *(v4 + 232);
  v6 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v7 = v6;

  outlined destroy of AutoShortcutsSetEnablementFlow.State(v2 + 16);
  OUTLINED_FUNCTION_6_0();

  return v8();
}

{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_9_0();
  v2 = v1[30];
  v3 = v1[28];
  v4 = v1[27];
  v5 = v1[26];
  v6 = v1[25];
  v7 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v8 = v7;

  OUTLINED_FUNCTION_6_0();

  return v9();
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v2 = *(v1 + 248);
  v3 = *(v1 + 208);
  v4 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v5 = v4;

  OUTLINED_FUNCTION_6_0();

  return v6();
}

uint64_t AutoShortcutsSetEnablementFlow.executeIntentReceived(mode:appId:)()
{
  OUTLINED_FUNCTION_12_0();
  v2 = v0;
  v4 = v3;
  v6 = v5;
  *(v1 + 320) = v3;
  *(v1 + 328) = v2;
  *(v1 + 81) = v7;
  *(v1 + 304) = v8;
  *(v1 + 312) = v5;
  v9 = (v2 + 14);
  *(v1 + 336) = *v2;
  *(v1 + 344) = type metadata accessor for AutoShortcutFirstRunFlow();
  v10 = swift_task_alloc();
  *(v1 + 352) = v10;
  *v10 = v1;
  OUTLINED_FUNCTION_64_2(v10);

  return static AutoShortcutFirstRunFlow.isAutoShortcutsEnabledFor(bundleId:voiceShortcutsClient:)(v6, v4, v9);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_3();
  *v2 = v1;
  v4 = *(v3 + 352);
  *v2 = *v0;
  *(v1 + 82) = v5;

  v6 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v6, v7, v8);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_3();
  *v2 = v1;
  v4 = *(v3 + 384);
  *v2 = *v0;
  *(v1 + 392) = v5;
  *(v1 + 83) = v6;

  v7 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v7, v8, v9);
}

{
  OUTLINED_FUNCTION_15_2();
  if (*(v0 + 83))
  {
    v1 = *(v0 + 368);

    if (one-time initialization token for voiceCommands != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v2 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_59(v2, static Logger.voiceCommands);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_30_1(v4))
    {
      v5 = OUTLINED_FUNCTION_52();
      OUTLINED_FUNCTION_45(v5);
      OUTLINED_FUNCTION_9_8();
      _os_log_impl(v6, v7, v8, v9, v10, 2u);
      OUTLINED_FUNCTION_17();
    }

    v11 = *(v0 + 392);
    v12 = *(v0 + 328);
    v13 = *(v0 + 304);

    OUTLINED_FUNCTION_53_6();
    memcpy((v0 + 160), (v12 + 288), 0x41uLL);
    OUTLINED_FUNCTION_35_16();
    outlined destroy of AutoShortcutsSetEnablementFlow.State(v0 + 160);
    static ExecuteResponse.complete()();
    OUTLINED_FUNCTION_6_0();

    return v14();
  }

  else
  {
    v16 = *(*(v0 + 392) + 16);
    v17 = *(**(v0 + 376) + 248);
    v21 = (v17 + *v17);
    v18 = v17[1];
    v19 = swift_task_alloc();
    *(v0 + 400) = v19;
    *v19 = v0;
    v19[1] = AutoShortcutsSetEnablementFlow.executeIntentReceived(mode:appId:);
    v20 = *(v0 + 376);

    return v21(v16);
  }
}

{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_9_0();
  v2 = v1[53];
  v3 = v1[52];
  v4 = v1[51];
  v5 = v1[46];
  v6 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v7 = v6;

  OUTLINED_FUNCTION_6_0();

  return v8();
}

{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_9_0();
  v2 = v1[56];
  v3 = v1[55];
  v4 = v1[54];
  v5 = v1[46];
  v6 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v7 = v6;

  OUTLINED_FUNCTION_6_0();

  return v8();
}

uint64_t AutoShortcutsSetEnablementFlow.executeIntentReceived(mode:appId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_15_2();
  v10 = *(v9 + 82);
  if (v10 == 2)
  {
    if (one-time initialization token for voiceCommands != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v11 = v9 + 16;
    v12 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_59(v12, static Logger.voiceCommands);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v13, v14))
    {
      *OUTLINED_FUNCTION_52() = 0;
      OUTLINED_FUNCTION_81(&dword_0, v15, v16, "#AutoShortcutsSetEnablementFlow: failed to determine if app already has appShortcuts enabled");
      OUTLINED_FUNCTION_11_0();
    }

    v17 = 3;
LABEL_17:
    v34 = *(v9 + 328);
    v35 = *(v9 + 304);

    v36 = OUTLINED_FUNCTION_53_6();
    OUTLINED_FUNCTION_110_0(v36, (v34 + 288));
    *(v34 + 288) = v17;
    *(v34 + 352) = 96;
    outlined destroy of AutoShortcutsSetEnablementFlow.State(v11);
    static ExecuteResponse.complete()();
    OUTLINED_FUNCTION_6_0();

    return v37();
  }

  v18 = *(v9 + 344);
  v20 = *(v9 + 320);
  v19 = *(v9 + 328);
  v21 = *(v9 + 312);
  v22 = v19[27];
  v23 = v19[28];
  __swift_project_boxed_opaque_existential_1(v19 + 24, v22);
  v24 = OUTLINED_FUNCTION_48_2();
  *(v9 + 360) = specialized static AutoShortcutFirstRunFlow.getAppName(bundleId:appNameResolver:)(v24, v25, v26, v18, v22, v23);
  *(v9 + 368) = v27;
  if (!v27)
  {
    v11 = v9 + 88;
    if (one-time initialization token for voiceCommands != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v30 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_59(v30, static Logger.voiceCommands);
    v13 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v13, v31))
    {
      *OUTLINED_FUNCTION_52() = 0;
      OUTLINED_FUNCTION_81(&dword_0, v32, v33, "#AutoShortcutsSetEnablementFlow: failed to determine app name");
      OUTLINED_FUNCTION_11_0();
    }

    v17 = 4;
    goto LABEL_17;
  }

  if (!*(v9 + 81))
  {
LABEL_25:
    v45 = *(v9 + 328);
    v46 = *(v45 + 232);
    v47 = *(v45 + 96);
    *(v9 + 376) = v47;
    v48 = swift_task_alloc();
    *(v9 + 384) = v48;
    *v48 = v9;
    v48[1] = AutoShortcutsSetEnablementFlow.executeIntentReceived(mode:appId:);
    v49 = *(v9 + 320);
    v50 = OUTLINED_FUNCTION_73(*(v9 + 312));

    return static AutoShortcutsSetEnablementFlow.prepareAppShortcutPhrases(appId:deviceState:provider:preferences:dialogTemplating:)(v50, v51, v52, v53, v46, v47);
  }

  v28 = v27;
  if (*(v9 + 81) != 1)
  {
    if (v10)
    {
      v29 = *(v9 + 82) ^ 1;
      goto LABEL_22;
    }

    goto LABEL_25;
  }

  if (*(v9 + 82))
  {
    v29 = 0;
LABEL_22:
    *(v9 + 408) = _swiftEmptyArrayStorage;
    *(v9 + 416) = 0;
    swift_task_alloc();
    OUTLINED_FUNCTION_20_0();
    *(v9 + 424) = v39;
    *v39 = v40;
    v41 = OUTLINED_FUNCTION_75_5(v39);

    return AutoShortcutsSetEnablementFlow.publishConfirmation(isEnabling:appId:appName:shortcutPhrases:moreShortcutsLabel:)(v41, v29 & 1, v42, v43, v44, v28, _swiftEmptyArrayStorage, 0, a9);
  }

  *(v9 + 432) = _swiftEmptyArrayStorage;
  *(v9 + 440) = 0;
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  *(v9 + 448) = v54;
  *v54 = v55;
  v56 = OUTLINED_FUNCTION_75_5(v54);

  return AutoShortcutsSetEnablementFlow.publishChangeNotNeeded(wasAppAlreadyEnabled:appId:appName:shortcutPhrases:moreShortcutsLabel:)(v56, 0, v57, v58, v59, v28, _swiftEmptyArrayStorage, 0, a9);
}

{
  OUTLINED_FUNCTION_14_0();
  v12 = v11;
  OUTLINED_FUNCTION_9_0();
  v14 = v13;
  OUTLINED_FUNCTION_4_1();
  *v15 = v14;
  v17 = *(v16 + 400);
  v18 = *v10;
  OUTLINED_FUNCTION_2_0();
  *v19 = v18;

  if (v9)
  {

    v12 = 0;
  }

  if (!*(v14 + 81))
  {
    v20 = *(v14 + 392);
    if (*(v14 + 82))
    {
      goto LABEL_8;
    }

LABEL_12:
    *(v14 + 408) = v20;
    *(v14 + 416) = v12;
    v34 = *(v14 + 368);
    v35 = swift_task_alloc();
    *(v14 + 424) = v35;
    *v35 = v18;
    OUTLINED_FUNCTION_76_7(v35);
    OUTLINED_FUNCTION_25_2();

    return AutoShortcutsSetEnablementFlow.publishConfirmation(isEnabling:appId:appName:shortcutPhrases:moreShortcutsLabel:)(v36, v37, v38, v39, v40, v41, v42, v43, a9);
  }

  if (*(v14 + 81) != 1)
  {
    v20 = *(v14 + 392);
    v33 = *(v14 + 82) ^ 1u;
    goto LABEL_12;
  }

  v20 = *(v14 + 392);
  if (*(v14 + 82))
  {
    goto LABEL_12;
  }

LABEL_8:
  *(v14 + 432) = v20;
  *(v14 + 440) = v12;
  v21 = *(v14 + 368);
  v22 = swift_task_alloc();
  *(v14 + 448) = v22;
  *v22 = v18;
  OUTLINED_FUNCTION_76_7(v22);
  OUTLINED_FUNCTION_25_2();

  return AutoShortcutsSetEnablementFlow.publishChangeNotNeeded(wasAppAlreadyEnabled:appId:appName:shortcutPhrases:moreShortcutsLabel:)(v23, v24, v25, v26, v27, v28, v29, v30, a9);
}

uint64_t static AutoShortcutsSetEnablementFlow.prepareAppShortcutPhrases(appId:deviceState:provider:preferences:dialogTemplating:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return OUTLINED_FUNCTION_0_16(static AutoShortcutsSetEnablementFlow.prepareAppShortcutPhrases(appId:deviceState:provider:preferences:dialogTemplating:));
}

uint64_t static AutoShortcutsSetEnablementFlow.prepareAppShortcutPhrases(appId:deviceState:provider:preferences:dialogTemplating:)()
{
  OUTLINED_FUNCTION_8_0();
  v1 = v0[4];
  v2 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  OUTLINED_FUNCTION_22_4();
  if (DeviceState.canOutputAppShortcutPhrases()())
  {
    v3 = swift_task_alloc();
    v0[8] = v3;
    *v3 = v0;
    v3[1] = static AutoShortcutsSetEnablementFlow.prepareAppShortcutPhrases(appId:deviceState:provider:preferences:dialogTemplating:);
    v4 = v0[5];
    v5 = v0[6];
    v6 = v0[3];
    OUTLINED_FUNCTION_73(v0[2]);

    return static AutoShortcutInvocation.getAutoShortcuts(bundleId:provider:preferences:baseTemplatePhrase:)();
  }

  else
  {
    OUTLINED_FUNCTION_12_7();

    return v8(_swiftEmptyArrayStorage, 0);
  }
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_3();
  *v2 = v1;
  v4 = *(v3 + 64);
  *v2 = *v0;
  *(v1 + 72) = v5;

  v6 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v6, v7, v8);
}

{
  OUTLINED_FUNCTION_12_0();
  v3 = v2;
  OUTLINED_FUNCTION_9_0();
  v5 = v4;
  OUTLINED_FUNCTION_4_1();
  *v6 = v5;
  v8 = *(v7 + 88);
  v9 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v10 = v9;
  v5[12] = v0;

  if (v0)
  {
    v11 = v5[10];
  }

  else
  {
    v5[13] = v3;
  }

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v12, v13, v14);
}

{
  OUTLINED_FUNCTION_8_0();
  v1 = *(v0 + 104);
  v2 = *(v0 + 80);

  OUTLINED_FUNCTION_12_7();

  return v3(v1, 0);
}

{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v1 = *(v0 + 96);
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.voiceCommands);
  OUTLINED_FUNCTION_1_18();
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  static os_log_type_t.error.getter();
  OUTLINED_FUNCTION_77_5();
  v4 = OUTLINED_FUNCTION_76_6();
  v5 = *(v0 + 96);
  if (v4)
  {
    OUTLINED_FUNCTION_48();
    v6 = OUTLINED_FUNCTION_83();
    OUTLINED_FUNCTION_74_4(5.7779e-34);
    v7 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_58_6(v7);
    OUTLINED_FUNCTION_5_7(&dword_0, v8, v9, "#AutoShortcutsSetEnablementFlow error handling appShortcutPhrases; %@");
    outlined destroy of String?(v6, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    OUTLINED_FUNCTION_11_0();
    OUTLINED_FUNCTION_19_0();
  }

  else
  {
  }

  OUTLINED_FUNCTION_12_7();
  OUTLINED_FUNCTION_87();

  return v13(v10, v11, v12, v13, v14, v15, v16, v17);
}