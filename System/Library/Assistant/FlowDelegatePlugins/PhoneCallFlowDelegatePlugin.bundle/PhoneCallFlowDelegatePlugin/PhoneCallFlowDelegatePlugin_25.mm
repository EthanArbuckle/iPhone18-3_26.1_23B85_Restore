uint64_t PhoneCallControlCATsSimple.init(templateDir:options:globals:)(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for CATOption();
  v6 = OUTLINED_FUNCTION_14_5(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6);
  OUTLINED_FUNCTION_4();
  v13 = v12 - v11;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v15 = OUTLINED_FUNCTION_21(v14);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  outlined init with copy of PhoneCallNLIntent?(a1, &v21 - v18, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  (*(v8 + 16))(v13, a2, v2);
  v19 = CATWrapperSimple.init(templateDir:options:globals:)();
  (*(v8 + 8))(a2, v2);
  _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(a1, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  return v19;
}

uint64_t PhoneCallControlCATsSimple.__allocating_init(useResponseMode:options:)()
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

uint64_t PhoneCallControlCATsSimple.init(useResponseMode:options:)()
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

unint64_t lazy protocol witness table accessor for type PhoneCallControlCATsSimple.Properties and conformance PhoneCallControlCATsSimple.Properties()
{
  result = lazy protocol witness table cache variable for type PhoneCallControlCATsSimple.Properties and conformance PhoneCallControlCATsSimple.Properties;
  if (!lazy protocol witness table cache variable for type PhoneCallControlCATsSimple.Properties and conformance PhoneCallControlCATsSimple.Properties)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallControlCATsSimple.Properties and conformance PhoneCallControlCATsSimple.Properties);
  }

  return result;
}

uint64_t type metadata accessor for PhoneCallControlCATsSimple()
{
  result = type metadata singleton initialization cache for PhoneCallControlCATsSimple;
  if (!type metadata singleton initialization cache for PhoneCallControlCATsSimple)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PhoneCallControlCATsSimple.Properties(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for PhoneCallControlCATsSimple.CallControlDialogIds(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PhoneCallControlCATsSimple.UnsupportedHoldActionDialogIds(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for PhoneCallControlCATsSimple.UnsupportedCallControlDialogIds(_BYTE *result, int a2, int a3)
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

_BYTE *storeEnumTagSinglePayload for PhoneCallControlCATsSimple.UnsupportedSwitchToFaceTimeDialogIds(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF7)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF6)
  {
    v6 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
          *result = a2 + 9;
        }

        break;
    }
  }

  return result;
}

uint64_t PhoneCallControlFlow.__allocating_init(input:sharedGlobals:appFinder:)(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v7 = *(v3 + 48);
  v8 = *(v3 + 52);
  v9 = swift_allocObject();
  PhoneCallControlFlow.init(input:sharedGlobals:appFinder:)(a1, a2, a3);
  return v9;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance PhoneCallControlFlow.PhoneCallControlFlowError()
{
  Hasher.init(_seed:)();
  SharedNeedsValueContext.NeedsValueCase.hash(into:)();
  return Hasher._finalize()();
}

uint64_t PhoneCallControlFlow.init(input:sharedGlobals:appFinder:)(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  outlined init with copy of SignalProviding(a2, v3 + 16);
  v8 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin20PhoneCallControlFlow_input;
  v9 = type metadata accessor for Input();
  v10 = *(v9 - 8);
  (*(v10 + 16))(v4 + v8, a1, v9);
  outlined init with copy of SignalProviding(a3, v4 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin20PhoneCallControlFlow_appFinder);
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  __swift_project_value_buffer(v11, static Logger.siriPhone);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.debug.getter();
  v14 = OUTLINED_FUNCTION_10_6();
  if (os_log_type_enabled(v14, v15))
  {
    OUTLINED_FUNCTION_9_18();
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_0, v12, v13, "#PhoneCallControlFlow state is initialized.", v16, 2u);
    OUTLINED_FUNCTION_8();
  }

  __swift_destroy_boxed_opaque_existential_1(a3);
  __swift_destroy_boxed_opaque_existential_1(a2);
  (*(v10 + 8))(a1, v9);
  return v4;
}

uint64_t PhoneCallControlFlow.execute(completion:)()
{
  type metadata accessor for PhoneCallControlFlow();
  lazy protocol witness table accessor for type PhoneCallControlFlow and conformance PhoneCallControlFlow(&lazy protocol witness table cache variable for type PhoneCallControlFlow and conformance PhoneCallControlFlow, type metadata accessor for PhoneCallControlFlow);
  return Flow.deferToExecuteAsync(_:)();
}

uint64_t PhoneCallControlFlow.execute()(uint64_t a1)
{
  v2[56] = a1;
  v2[57] = v1;
  v3 = *(*(type metadata accessor for CATOption() - 8) + 64) + 15;
  v2[58] = swift_task_alloc();
  v4 = type metadata accessor for Parse();
  v2[59] = v4;
  v5 = *(v4 - 8);
  v2[60] = v5;
  v6 = *(v5 + 64) + 15;
  v2[61] = swift_task_alloc();

  return _swift_task_switch(PhoneCallControlFlow.execute(), 0, 0);
}

uint64_t PhoneCallControlFlow.execute()()
{
  v85 = v0;
  v2 = v0[60];
  v1 = v0[61];
  v3 = v0[59];
  v4 = v0[57];
  v5 = v4[5];
  v6 = v4[6];
  __swift_project_boxed_opaque_existential_1(v4 + 2, v5);
  v7 = (*(v6 + 72))(v5, v6);
  Input.parse.getter();
  v8 = (*(*v7 + 248))(v1);

  (*(v2 + 8))(v1, v3);
  if (v8)
  {
    v9 = v4[6];
    __swift_project_boxed_opaque_existential_1(v4 + 2, v4[5]);
    v10 = *(v9 + 120);
    v11 = OUTLINED_FUNCTION_5();
    v12(v11, v9);
    v13 = v0[11];
    __swift_project_boxed_opaque_existential_1(v0 + 7, v0[10]);
    v14 = *(v13 + 24);
    v15 = OUTLINED_FUNCTION_5();
    v17 = v16(v15, v13);
    if (!v17)
    {
      __swift_destroy_boxed_opaque_existential_1(v0 + 7);
      if (one-time initialization token for siriPhone != -1)
      {
        OUTLINED_FUNCTION_0_6();
        swift_once();
      }

      v40 = type metadata accessor for Logger();
      __swift_project_value_buffer(v40, static Logger.siriPhone);
      v41 = Logger.logObject.getter();
      static os_log_type_t.debug.getter();
      v42 = OUTLINED_FUNCTION_10_6();
      if (os_log_type_enabled(v42, v43))
      {
        OUTLINED_FUNCTION_9_18();
        v44 = swift_slowAlloc();
        OUTLINED_FUNCTION_102(v44);
        OUTLINED_FUNCTION_2_74();
        _os_log_impl(v45, v46, v47, v48, v49, v50);
        OUTLINED_FUNCTION_5_39();
      }

      v51 = v0[58];
      v52 = v0[56];

      static SiriKitEventSender.current.getter();
      v53 = v0[15];
      v54 = v0[16];
      OUTLINED_FUNCTION_6_53(v0 + 12);
      SiriKitEventSending.sendCallControlEvent(action:target:state:)(11, v55, 0);
      __swift_destroy_boxed_opaque_existential_1(v0 + 12);
      outlined init with copy of SignalProviding((v4 + 2), (v0 + 17));
      type metadata accessor for PhoneCallControlCATsSimple();

      static CATOption.defaultMode.getter();
      CATWrapperSimple.__allocating_init(options:globals:)();
      type metadata accessor for UnsupportedFlowCATsSimple();
      static CATOption.defaultMode.getter();
      CATWrapperSimple.__allocating_init(options:globals:)();
      type metadata accessor for UnsupportedCallControlIntentOutputProvider();
      v56 = swift_allocObject();
      v57 = OUTLINED_FUNCTION_9_46(v56, (v0 + 17));
      v58 = (*(*v57 + 120))();

      v0[51] = v58;
      type metadata accessor for SimpleOutputFlowAsync();
      static ExecuteResponse.complete<A>(next:)();
      goto LABEL_26;
    }

    v19 = v17;
    v20 = v18;
    __swift_destroy_boxed_opaque_existential_1(v0 + 7);
    v21 = (*(*v8 + 136))(v19, v20);
    if (PhoneCallControlAction.rawValue.getter(v21) == 0xD000000000000011 && 0x8000000000452EF0 == v22)
    {
    }

    else
    {
      v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v24 & 1) == 0)
      {
        v77 = PhoneCallControlFlow.getActionnableCallControlFlow(action:)(v21);
        v78 = v0[58];
        v79 = v0[56];
        static SiriKitEventSender.current.getter();
        v80 = v0[30];
        v81 = v0[31];
        OUTLINED_FUNCTION_6_53(v0 + 27);
        SiriKitEventSending.sendCallControlEvent(action:target:state:)(v21, v82, 256);
        __swift_destroy_boxed_opaque_existential_1(v0 + 27);
        outlined init with copy of SignalProviding((v4 + 2), (v0 + 32));
        type metadata accessor for PhoneCallControlCATsSimple();
        static CATOption.defaultMode.getter();
        v83 = CATWrapperSimple.__allocating_init(options:globals:)();
        v0[54] = (*(v77 + 136))(v0 + 32, v21, v83);
        type metadata accessor for ActionableCallControlFlow();
        lazy protocol witness table accessor for type PhoneCallControlFlow and conformance PhoneCallControlFlow(&lazy protocol witness table cache variable for type ActionableCallControlFlow and conformance ActionableCallControlFlow, type metadata accessor for ActionableCallControlFlow);
LABEL_25:
        static ExecuteResponse.complete<A>(next:)();
        swift_unknownObjectRelease();
LABEL_26:

        goto LABEL_27;
      }
    }

    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_0_6();
      swift_once();
    }

    v59 = type metadata accessor for Logger();
    __swift_project_value_buffer(v59, static Logger.siriPhone);
    v60 = Logger.logObject.getter();
    v61 = static os_log_type_t.debug.getter();
    v62 = OUTLINED_FUNCTION_10_6();
    if (os_log_type_enabled(v62, v63))
    {
      OUTLINED_FUNCTION_9_18();
      v64 = swift_slowAlloc();
      *v64 = 0;
      _os_log_impl(&dword_0, v60, v61, "#PhoneCallControlFlow recognized unsupported action. Pushing UnsupportedFeatureGuardFlow output flow", v64, 2u);
      OUTLINED_FUNCTION_8();
    }

    v65 = v0[58];
    v66 = v0[56];

    static SiriKitEventSender.current.getter();
    v67 = v0[40];
    v68 = v0[41];
    OUTLINED_FUNCTION_6_53(v0 + 37);
    SiriKitEventSending.sendCallControlEvent(action:target:state:)(v21, v69, 1);
    __swift_destroy_boxed_opaque_existential_1(v0 + 37);
    outlined init with copy of SignalProviding((v4 + 2), (v0 + 42));
    type metadata accessor for PhoneCallControlCATsSimple();

    static CATOption.defaultMode.getter();
    CATWrapperSimple.__allocating_init(options:globals:)();
    type metadata accessor for UnsupportedFlowCATsSimple();
    static CATOption.defaultMode.getter();
    CATWrapperSimple.__allocating_init(options:globals:)();
    type metadata accessor for UnsupportedCallControlIntentOutputProvider();
    v70 = swift_allocObject();
    v71 = OUTLINED_FUNCTION_9_46(v70, (v0 + 42));
    v72 = (*(*v71 + 120))();

    v0[55] = v72;
    type metadata accessor for SimpleOutputFlowAsync();
    goto LABEL_25;
  }

  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

  v25 = v0[57];
  v26 = type metadata accessor for Logger();
  __swift_project_value_buffer(v26, static Logger.siriPhone);

  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v84 = v30;
    *v29 = 136315138;
    type metadata accessor for Input();
    lazy protocol witness table accessor for type PhoneCallControlFlow and conformance PhoneCallControlFlow(&lazy protocol witness table cache variable for type Input and conformance Input, &type metadata accessor for Input);
    v31 = dispatch thunk of CustomStringConvertible.description.getter();
    v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v32, &v84);

    *(v29 + 4) = v33;
    _os_log_impl(&dword_0, v27, v28, "#PhoneCallControlFlow failed to get action from input %s", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v30);
    OUTLINED_FUNCTION_8();

    OUTLINED_FUNCTION_5_39();
  }

  v34 = v0[58];
  v35 = v0[56];
  static SiriKitEventSender.current.getter();
  v36 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  SiriKitEventSending.sendCallControlEvent(action:target:state:)(11, 5, 1);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  type metadata accessor for StartCallCATsSimple();
  static CATOption.defaultMode.getter();
  v37 = CATWrapperSimple.__allocating_init(options:globals:)();
  v38 = static CommonOutputs.genericError(sharedGlobals:startCallCATsSimple:)(v4 + 2, v37);

  (*(*v38 + 112))(v39);
  OUTLINED_FUNCTION_5();

  v0[50] = v38;
  type metadata accessor for SimpleOutputFlowAsync();
  static ExecuteResponse.complete<A>(next:)();
LABEL_27:

  v73 = v0[61];
  v74 = v0[58];

  v75 = v0[1];

  return v75();
}

uint64_t PhoneCallControlFlow.getActionnableCallControlFlow(action:)(uint64_t a1)
{
  if (PhoneCallControlAction.isMicrophoneAction.getter(a1))
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_0_6();
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    __swift_project_value_buffer(v2, static Logger.siriPhone);
    v3 = Logger.logObject.getter();
    static os_log_type_t.debug.getter();
    v4 = OUTLINED_FUNCTION_10_6();
    if (os_log_type_enabled(v4, v5))
    {
      OUTLINED_FUNCTION_9_18();
      v6 = swift_slowAlloc();
      OUTLINED_FUNCTION_102(v6);
      OUTLINED_FUNCTION_2_74();
      _os_log_impl(v7, v8, v9, v10, v11, v12);
      OUTLINED_FUNCTION_5_39();
    }

    return type metadata accessor for MicrophoneControlFlow();
  }

  else if (PhoneCallControlAction.isCameraAction.getter(a1))
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_0_6();
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    __swift_project_value_buffer(v14, static Logger.siriPhone);
    v15 = Logger.logObject.getter();
    static os_log_type_t.debug.getter();
    v16 = OUTLINED_FUNCTION_10_6();
    if (os_log_type_enabled(v16, v17))
    {
      OUTLINED_FUNCTION_9_18();
      v18 = swift_slowAlloc();
      OUTLINED_FUNCTION_102(v18);
      OUTLINED_FUNCTION_2_74();
      _os_log_impl(v19, v20, v21, v22, v23, v24);
      OUTLINED_FUNCTION_5_39();
    }

    return type metadata accessor for CameraControlFlow();
  }

  else if (PhoneCallControlAction.isSpeakerphoneAction.getter(a1))
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_0_6();
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    __swift_project_value_buffer(v25, static Logger.siriPhone);
    v26 = Logger.logObject.getter();
    static os_log_type_t.debug.getter();
    v27 = OUTLINED_FUNCTION_10_6();
    if (os_log_type_enabled(v27, v28))
    {
      OUTLINED_FUNCTION_9_18();
      v29 = swift_slowAlloc();
      OUTLINED_FUNCTION_102(v29);
      OUTLINED_FUNCTION_2_74();
      _os_log_impl(v30, v31, v32, v33, v34, v35);
      OUTLINED_FUNCTION_5_39();
    }

    return type metadata accessor for SpeakerphoneControlFlow();
  }

  else if (PhoneCallControlAction.isHoldAction.getter(a1))
  {
    return type metadata accessor for HoldControlFlow();
  }

  else if (PhoneCallControlAction.isSwitchToFaceTimeAction.getter(a1))
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_0_6();
      swift_once();
    }

    v36 = type metadata accessor for Logger();
    __swift_project_value_buffer(v36, static Logger.siriPhone);
    v37 = Logger.logObject.getter();
    static os_log_type_t.debug.getter();
    v38 = OUTLINED_FUNCTION_10_6();
    if (os_log_type_enabled(v38, v39))
    {
      OUTLINED_FUNCTION_9_18();
      v40 = swift_slowAlloc();
      OUTLINED_FUNCTION_102(v40);
      OUTLINED_FUNCTION_2_74();
      _os_log_impl(v41, v42, v43, v44, v45, v46);
      OUTLINED_FUNCTION_5_39();
    }

    return type metadata accessor for SwitchToFaceTimeControlFlow();
  }

  else
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_0_6();
      swift_once();
    }

    v47 = type metadata accessor for Logger();
    __swift_project_value_buffer(v47, static Logger.siriPhone);
    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v55 = v51;
      *v50 = 136315138;
      v52 = PhoneCallControlAction.description.getter(a1);
      v54 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v52, v53, &v55);

      *(v50 + 4) = v54;
      _os_log_impl(&dword_0, v48, v49, "#PhoneCallControlFlow action %s did not match microphone/camera/speakerphone/switchToFaceTime action and will not be handled. Throwing error.", v50, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v51);
      OUTLINED_FUNCTION_8();

      OUTLINED_FUNCTION_8();
    }

    lazy protocol witness table accessor for type PhoneCallControlFlow.PhoneCallControlFlowError and conformance PhoneCallControlFlow.PhoneCallControlFlowError();
    swift_allocError();
    return swift_willThrow();
  }
}

uint64_t PhoneCallControlFlow.deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin20PhoneCallControlFlow_input;
  v2 = type metadata accessor for Input();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin20PhoneCallControlFlow_appFinder));
  return v0;
}

uint64_t PhoneCallControlFlow.__deallocating_deinit()
{
  PhoneCallControlFlow.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t protocol witness for Flow.execute() in conformance PhoneCallControlFlow(uint64_t a1)
{
  v4 = *(**v1 + 128);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = protocol witness for UnlockDeviceFlowStrategyAsync.makePromptForDeviceUnlock() in conformance DefaultUnlockDeviceFlowStrategyAsync;

  return v8(a1);
}

uint64_t protocol witness for Flow.exitValue.getter in conformance PhoneCallControlFlow(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for PhoneCallControlFlow();

  return Flow<>.exitValue.getter(v3, a2);
}

uint64_t type metadata accessor for PhoneCallControlFlow()
{
  result = type metadata singleton initialization cache for PhoneCallControlFlow;
  if (!type metadata singleton initialization cache for PhoneCallControlFlow)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type PhoneCallControlFlow and conformance PhoneCallControlFlow(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t lazy protocol witness table accessor for type PhoneCallControlFlow.PhoneCallControlFlowError and conformance PhoneCallControlFlow.PhoneCallControlFlowError()
{
  result = lazy protocol witness table cache variable for type PhoneCallControlFlow.PhoneCallControlFlowError and conformance PhoneCallControlFlow.PhoneCallControlFlowError;
  if (!lazy protocol witness table cache variable for type PhoneCallControlFlow.PhoneCallControlFlowError and conformance PhoneCallControlFlow.PhoneCallControlFlowError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallControlFlow.PhoneCallControlFlowError and conformance PhoneCallControlFlow.PhoneCallControlFlowError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneCallControlFlow.PhoneCallControlFlowError and conformance PhoneCallControlFlow.PhoneCallControlFlowError;
  if (!lazy protocol witness table cache variable for type PhoneCallControlFlow.PhoneCallControlFlowError and conformance PhoneCallControlFlow.PhoneCallControlFlowError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallControlFlow.PhoneCallControlFlowError and conformance PhoneCallControlFlow.PhoneCallControlFlowError);
  }

  return result;
}

uint64_t type metadata completion function for PhoneCallControlFlow()
{
  result = type metadata accessor for Input();
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

_BYTE *storeEnumTagSinglePayload for PhoneCallControlFlow.PhoneCallControlFlowError(_BYTE *result, int a2, int a3)
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

uint64_t PhoneCallControlAction.toSpeakableString.getter(uint64_t a1)
{
  PhoneCallControlAction.description.getter(a1);
  String.toSpeakableString.getter();
}

uint64_t PhoneCallControlAction.isCameraAction.getter(uint64_t a1)
{
  if (PhoneCallControlAction.description.getter(a1) == 0x6143656C62616E65 && v1 == 0xEC0000006172656DLL)
  {
  }

  else
  {
    OUTLINED_FUNCTION_2_75();
    _stringCompareWithSmolCheck(_:_:expecting:)();
    OUTLINED_FUNCTION_5_57();
  }

  return 1;
}

uint64_t PhoneCallControlAction.isHoldAction.getter(uint64_t a1)
{
  if (PhoneCallControlAction.description.getter(a1) == 0x6F48656C62616E65 && v1 == 0xEA0000000000646CLL)
  {
  }

  else
  {
    OUTLINED_FUNCTION_2_75();
    _stringCompareWithSmolCheck(_:_:expecting:)();
    OUTLINED_FUNCTION_5_57();
  }

  return 1;
}

uint64_t PhoneCallControlAction.isMicrophoneAction.getter(uint64_t a1)
{
  if (PhoneCallControlAction.description.getter(a1) == 0x7263694D6574756DLL && v1 == 0xEE00656E6F68706FLL)
  {
  }

  else
  {
    OUTLINED_FUNCTION_2_75();
    _stringCompareWithSmolCheck(_:_:expecting:)();
    OUTLINED_FUNCTION_5_57();
  }

  return 1;
}

_BYTE *PhoneCallControlNLIntent.__allocating_init(verb:target:)(char a1, char a2)
{
  result = swift_allocObject();
  result[18] = 11;
  result[16] = a1;
  result[17] = a2;
  return result;
}

uint64_t PhoneCallControlAction.isSpeakerphoneAction.getter(uint64_t a1)
{
  PhoneCallControlAction.description.getter(a1);
  v4 = v3;
  OUTLINED_FUNCTION_7_46();
  if (v7 == 0xD000000000000012 && v6 == v5)
  {
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_2_75();
  _stringCompareWithSmolCheck(_:_:expecting:)();
  OUTLINED_FUNCTION_5_57();
  if ((v2 & 1) == 0)
  {
    OUTLINED_FUNCTION_7_46();
    if (v1 != 0xD000000000000013 || v10 != v4)
    {
      v9 = OUTLINED_FUNCTION_1_78();
LABEL_13:

      return v9 & 1;
    }

LABEL_12:
    v9 = 1;
    goto LABEL_13;
  }

  v9 = 1;
  return v9 & 1;
}

uint64_t PhoneCallControlAction.isSwitchToFaceTimeAction.getter(uint64_t a1)
{
  PhoneCallControlAction.description.getter(a1);
  v4 = v3;
  OUTLINED_FUNCTION_7_46();
  if (v7 == 0xD000000000000010 && v6 == v5)
  {
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_2_75();
  _stringCompareWithSmolCheck(_:_:expecting:)();
  OUTLINED_FUNCTION_5_57();
  if ((v2 & 1) == 0)
  {
    OUTLINED_FUNCTION_7_46();
    if (v1 != 0xD000000000000015 || v10 != v4)
    {
      v9 = OUTLINED_FUNCTION_1_78();
LABEL_13:

      return v9 & 1;
    }

LABEL_12:
    v9 = 1;
    goto LABEL_13;
  }

  v9 = 1;
  return v9 & 1;
}

_BYTE *PhoneCallControlNLIntent.init(verb:target:)(char a1, char a2)
{
  v2[18] = 11;
  v2[16] = a1;
  v2[17] = a2;
  return v2;
}

uint64_t PhoneCallControlNLIntent.action(for:)(uint64_t a1, uint64_t a2)
{
  result = *(v2 + 18);
  if (result == 11)
  {
    result = static PhoneCallControlAction.from(nlIntent:for:)(v2, a1, a2);
    *(v2 + 18) = result;
  }

  return result;
}

uint64_t static PhoneCallControlAction.from(nlIntent:for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 17);
  switch(*(a1 + 16))
  {
    case 0:
      result = 6;
      switch(v4)
      {
        case 1:
          return result;
        case 2:
          result = 3;
          break;
        case 3:
          result = 0;
          break;
        case 4:
        case 5:
          goto LABEL_8;
        default:
          ObjectType = swift_getObjectType();
          v7 = (*(a3 + 24))(ObjectType, a3);
          goto LABEL_26;
      }

      break;
    case 1:
      result = 0xA0A01020705uLL >> (8 * v4);
      break;
    case 2:
      switch(*(a1 + 17))
      {
        case 1:
          v12 = swift_getObjectType();
          if ((*(a3 + 16))(v12, a3) == 2)
          {
            result = 7;
          }

          else
          {
            result = 6;
          }

          break;
        case 2:
          v15 = swift_getObjectType();
          if ((*(a3 + 96))(v15, a3))
          {
            result = 3;
          }

          else
          {
            result = 2;
          }

          break;
        case 3:
          v14 = swift_getObjectType();
          result = (*(a3 + 120))(v14, a3) & 1;
          break;
        case 4:
        case 5:
          goto LABEL_8;
        default:
          v13 = swift_getObjectType();
          if ((*(a3 + 144))(v13, a3))
          {
            goto LABEL_18;
          }

          v7 = (*(a3 + 24))(v13, a3);
LABEL_26:
          if (v7)
          {
            result = 4;
          }

          else
          {
            result = 8;
          }

          break;
      }

      break;
    case 3:
      swift_getObjectType();
      if ((SPHCall.isFTVideo.getter() & 1) != 0 && (v10 = OUTLINED_FUNCTION_6_54(), (v11(v10) & 1) == 0))
      {
        result = 4;
      }

      else
      {
        result = 8;
      }

      break;
    case 4:
      swift_getObjectType();
      if ((*(a3 + 32))() & 1) != 0 && (v8 = OUTLINED_FUNCTION_6_54(), (v9(v8)))
      {
LABEL_18:
        result = 5;
      }

      else
      {
        result = 9;
      }

      break;
    default:
LABEL_8:
      result = 10;
      break;
  }

  return result;
}

unint64_t PhoneCallControlNLIntent.description.getter()
{
  _StringGuts.grow(_:)(46);

  v1._countAndFlagsBits = PhoneCallControlNLIntent.Verb.description.getter(*(v0 + 16));
  String.append(_:)(v1);

  v2._countAndFlagsBits = 0x746567726174202CLL;
  v2._object = 0xEA0000000000203ALL;
  String.append(_:)(v2);
  v6 = *(v0 + 17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0aB15ControlNLIntentC6TargetOSgMd, &_s27PhoneCallFlowDelegatePlugin0aB15ControlNLIntentC6TargetOSgMR);
  v3._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v3);

  v4._countAndFlagsBits = 41;
  v4._object = 0xE100000000000000;
  String.append(_:)(v4);
  return 0xD00000000000001FLL;
}

void PhoneCallControlNLIntent.Verb.description.getter(char a1)
{
  switch(a1)
  {
    case 3:
      OUTLINED_FUNCTION_119();
      break;
    case 4:
      OUTLINED_FUNCTION_0_77();
      break;
    default:
      return;
  }
}

PhoneCallFlowDelegatePlugin::PhoneCallControlNLIntent::Verb_optional __swiftcall PhoneCallControlNLIntent.Verb.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of PhoneCallControlNLIntent.Verb.init(rawValue:), v2);

  if (v3 >= 7)
  {
    return 7;
  }

  else
  {
    return v3;
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance PhoneCallControlNLIntent.Verb(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *a1;
  return specialized == infix<A>(_:_:)();
}

PhoneCallFlowDelegatePlugin::PhoneCallControlNLIntent::Verb_optional protocol witness for RawRepresentable.init(rawValue:) in conformance PhoneCallControlNLIntent.Verb@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::PhoneCallControlNLIntent::Verb_optional *a2@<X8>)
{
  result.value = PhoneCallControlNLIntent.Verb.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance PhoneCallControlNLIntent.Verb@<X0>(uint64_t *a1@<X8>)
{
  result = PhoneCallControlNLIntent.Verb.description.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t PhoneCallControlNLIntent.Target.description.getter(char a1)
{
  result = 0x6172656D6163;
  switch(a1)
  {
    case 1:
      result = 1684828008;
      break;
    case 2:
      result = 0x6F68706F7263696DLL;
      break;
    case 3:
      result = 0x7072656B61657073;
      break;
    case 4:
      result = 0x656D756C6F76;
      break;
    default:
      return result;
  }

  return result;
}

PhoneCallFlowDelegatePlugin::PhoneCallControlNLIntent::Target_optional __swiftcall PhoneCallControlNLIntent.Target.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of PhoneCallControlNLIntent.Target.init(rawValue:), v2);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance PhoneCallControlNLIntent.Target(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *a1;
  return specialized == infix<A>(_:_:)();
}

PhoneCallFlowDelegatePlugin::PhoneCallControlNLIntent::Target_optional protocol witness for RawRepresentable.init(rawValue:) in conformance PhoneCallControlNLIntent.Target@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::PhoneCallControlNLIntent::Target_optional *a2@<X8>)
{
  result.value = PhoneCallControlNLIntent.Target.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance PhoneCallControlNLIntent.Target@<X0>(uint64_t *a1@<X8>)
{
  result = PhoneCallControlNLIntent.Target.description.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

void PhoneCallControlAction.description.getter(char a1)
{
  switch(a1)
  {
    case 3:
    case 8:
      OUTLINED_FUNCTION_119();
      break;
    case 9:
      OUTLINED_FUNCTION_0_77();
      break;
    default:
      return;
  }
}

PhoneCallFlowDelegatePlugin::PhoneCallControlAction_optional __swiftcall PhoneCallControlAction.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of PhoneCallControlAction.init(rawValue:), v2);

  if (v3 >= 0xB)
  {
    return 11;
  }

  else
  {
    return v3;
  }
}

PhoneCallFlowDelegatePlugin::PhoneCallControlAction_optional protocol witness for RawRepresentable.init(rawValue:) in conformance PhoneCallControlAction@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::PhoneCallControlAction_optional *a2@<X8>)
{
  result.value = PhoneCallControlAction.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance PhoneCallControlAction@<X0>(uint64_t *a1@<X8>)
{
  result = PhoneCallControlAction.description.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t lazy protocol witness table accessor for type PhoneCallControlNLIntent.Verb and conformance PhoneCallControlNLIntent.Verb()
{
  result = lazy protocol witness table cache variable for type PhoneCallControlNLIntent.Verb and conformance PhoneCallControlNLIntent.Verb;
  if (!lazy protocol witness table cache variable for type PhoneCallControlNLIntent.Verb and conformance PhoneCallControlNLIntent.Verb)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallControlNLIntent.Verb and conformance PhoneCallControlNLIntent.Verb);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PhoneCallControlNLIntent.Target and conformance PhoneCallControlNLIntent.Target()
{
  result = lazy protocol witness table cache variable for type PhoneCallControlNLIntent.Target and conformance PhoneCallControlNLIntent.Target;
  if (!lazy protocol witness table cache variable for type PhoneCallControlNLIntent.Target and conformance PhoneCallControlNLIntent.Target)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallControlNLIntent.Target and conformance PhoneCallControlNLIntent.Target);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PhoneCallControlAction and conformance PhoneCallControlAction()
{
  result = lazy protocol witness table cache variable for type PhoneCallControlAction and conformance PhoneCallControlAction;
  if (!lazy protocol witness table cache variable for type PhoneCallControlAction and conformance PhoneCallControlAction)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallControlAction and conformance PhoneCallControlAction);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [PhoneCallControlAction] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [PhoneCallControlAction] and conformance [A];
  if (!lazy protocol witness table cache variable for type [PhoneCallControlAction] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay27PhoneCallFlowDelegatePlugin0aB13ControlActionOGMd, &_sSay27PhoneCallFlowDelegatePlugin0aB13ControlActionOGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [PhoneCallControlAction] and conformance [A]);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PhoneCallControlNLIntent.Verb(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PhoneCallControlNLIntent.Target(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PhoneCallControlAction(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF6)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF5)
  {
    v6 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
          *result = a2 + 10;
        }

        break;
    }
  }

  return result;
}

uint64_t PhoneCallControlNLTransformer.__allocating_init(cacheProvider:)(uint64_t a1)
{
  v2 = swift_allocObject();
  v3 = *(a1 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(a1, *(a1 + 24));
  OUTLINED_FUNCTION_8_6();
  v5 = *(v4 + 64);
  __chkstk_darwin(v6);
  OUTLINED_FUNCTION_4();
  v8 = OUTLINED_FUNCTION_10_47(v7);
  v9(v8);
  OUTLINED_FUNCTION_16_35();
  v10 = OUTLINED_FUNCTION_40_0();
  __swift_destroy_boxed_opaque_existential_1(v10);
  return v2;
}

uint64_t SingleIntentCacheProvider.cacheIntent(uda:value:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = Siri_Nlu_External_UserDialogAct.hashValue.getter();
  v6 = *(v2 + 24);
  *(v3 + 16) = v5;
  *(v3 + 24) = a2;
}

uint64_t SingleIntentCacheProvider.getCachedIntent(matching:)()
{
  if (Siri_Nlu_External_UserDialogAct.hashValue.getter() != *(v0 + 16))
  {
    return 0;
  }

  v1 = *(v0 + 24);
}

uint64_t SingleIntentCacheProvider.deinit()
{
  v1 = *(v0 + 24);

  return v0;
}

double SingleIntentCacheProvider.__allocating_init()()
{
  v0 = swift_allocObject();
  result = NAN;
  *(v0 + 16) = xmmword_424FE0;
  return result;
}

double SingleIntentCacheProvider.init()()
{
  result = NAN;
  *(v0 + 16) = xmmword_424FE0;
  return result;
}

uint64_t PhoneCallControlNLTransformer.init(cacheProvider:)(uint64_t a1)
{
  v2 = *(a1 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(a1, *(a1 + 24));
  OUTLINED_FUNCTION_8_6();
  v4 = *(v3 + 64);
  __chkstk_darwin(v5);
  OUTLINED_FUNCTION_4();
  v7 = OUTLINED_FUNCTION_10_47(v6);
  v8(v7);
  OUTLINED_FUNCTION_16_35();
  v9 = OUTLINED_FUNCTION_40_0();
  __swift_destroy_boxed_opaque_existential_1(v9);
  return v1;
}

uint64_t PhoneCallControlNLTransformer.transformToCallControlNLIntent(parse:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v80 - v4;
  v6 = type metadata accessor for Siri_Nlu_External_UserParse();
  v7 = OUTLINED_FUNCTION_7(v6);
  v83 = v8;
  v84 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v7);
  OUTLINED_FUNCTION_4();
  v13 = v12 - v11;
  v14 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v15 = OUTLINED_FUNCTION_7(v14);
  v81 = v16;
  v18 = *(v17 + 64);
  __chkstk_darwin(v15);
  OUTLINED_FUNCTION_4();
  v82 = v20 - v19;
  v21 = type metadata accessor for Parse();
  v22 = OUTLINED_FUNCTION_7(v21);
  v24 = v23;
  v26 = *(v25 + 64);
  __chkstk_darwin(v22);
  OUTLINED_FUNCTION_4();
  v29 = v28 - v27;
  v30 = type metadata accessor for USOParse();
  v31 = OUTLINED_FUNCTION_7(v30);
  v33 = v32;
  v35 = *(v34 + 64);
  __chkstk_darwin(v31);
  OUTLINED_FUNCTION_4();
  v38 = v37 - v36;
  (*(v24 + 16))(v29, a1, v21);
  if ((*(v24 + 88))(v29, v21) != enum case for Parse.uso(_:))
  {
    (*(v24 + 8))(v29, v21);
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2();
    }

    v50 = type metadata accessor for Logger();
    __swift_project_value_buffer(v50, static Logger.siriPhone);
    v51 = v85;

    v52 = Logger.logObject.getter();
    v53 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v55 = OUTLINED_FUNCTION_36();
      v86[2] = v55;
      *v54 = 136315138;
      OUTLINED_FUNCTION_5_58(v51[7], v51[8], v51[9], v51[10]);
      v56 = OUTLINED_FUNCTION_11_40();

      *(v54 + 4) = v56;
      _os_log_impl(&dword_0, v52, v53, "%s only USO parses are supported for call controls. This is not a call controls parse.", v54, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v55);
      OUTLINED_FUNCTION_26_0();
      OUTLINED_FUNCTION_26_0();
    }

    return 0;
  }

  (*(v24 + 96))(v29, v21);
  (*(v33 + 32))(v38, v29, v30);
  USOParse.userParse.getter();
  v39 = Siri_Nlu_External_UserParse.userDialogActs.getter();
  (*(v83 + 8))(v13, v84);
  specialized Collection.first.getter(v39);

  v40 = v33;
  v41 = v30;
  v42 = v38;
  if (__swift_getEnumTagSinglePayload(v5, 1, v14) == 1)
  {
    outlined destroy of Siri_Nlu_External_UserDialogAct?(v5);
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2();
    }

    v43 = type metadata accessor for Logger();
    __swift_project_value_buffer(v43, static Logger.siriPhone);
    v44 = v85;

    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = OUTLINED_FUNCTION_36();
      OUTLINED_FUNCTION_13_40(v48);
      *v47 = 136315138;
      OUTLINED_FUNCTION_5_58(v44[7], v44[8], v44[9], v44[10]);
      v49 = OUTLINED_FUNCTION_11_40();

      *(v47 + 4) = v49;
      _os_log_impl(&dword_0, v45, v46, "%s No user dialog act found in userParse.", v47, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v39);
      OUTLINED_FUNCTION_4_5();
      OUTLINED_FUNCTION_26_0();

      (*(v40 + 8))(v38, v41);
      return 0;
    }

LABEL_16:
    (*(v40 + 8))(v42, v41);
    return 0;
  }

  v58 = v81;
  v57 = v82;
  (*(v81 + 32))(v82, v5, v14);
  v59 = v85[5];
  v60 = v85[6];
  __swift_project_boxed_opaque_existential_1(v85 + 2, v59);
  v61 = (*(v60 + 16))(v57, v59, v60);
  if (v61)
  {
    v62 = v61;
    (*(v58 + 8))(v57, v14);
  }

  else
  {
    if (one-time initialization token for transformer != -1)
    {
      swift_once();
    }

    v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy0A8NLUTypes0A27_Nlu_External_UserDialogActV27PhoneCallFlowDelegatePlugin0ghI5ParseVGMd, &_s13SiriUtilities11TransformerVy0A8NLUTypes0A27_Nlu_External_UserDialogActV27PhoneCallFlowDelegatePlugin0ghI5ParseVGMR);
    __swift_project_value_buffer(v64, static Transformer<>.transformer);
    OUTLINED_FUNCTION_40_0();
    v65 = Transformer.transform.getter();
    v65(v86, v57);

    v67 = v85;
    v62 = PhoneCallControlNLTransformer.transformToCallControlNLIntent(usoTask:)(v66);

    v80 = v14;
    if (!v62)
    {
      if (one-time initialization token for siriPhone != -1)
      {
        OUTLINED_FUNCTION_6_2();
      }

      v71 = type metadata accessor for Logger();
      __swift_project_value_buffer(v71, static Logger.siriPhone);
      v72 = v85;

      v73 = Logger.logObject.getter();
      v74 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v73, v74))
      {
        v75 = swift_slowAlloc();
        v83 = v40;
        v84 = v41;
        v76 = v75;
        v77 = OUTLINED_FUNCTION_36();
        OUTLINED_FUNCTION_13_40(v77);
        *v76 = 136315138;
        OUTLINED_FUNCTION_5_58(v72[7], v72[8], v72[9], v72[10]);
        v78 = v58;
        v79 = OUTLINED_FUNCTION_11_40();

        *(v76 + 4) = v79;
        __swift_destroy_boxed_opaque_existential_1(v64);
        OUTLINED_FUNCTION_4_5();
        OUTLINED_FUNCTION_26_0();

        (*(v78 + 8))(v82, v80);
        (*(v83 + 8))(v42, v84);
        return 0;
      }

      (*(v58 + 8))(v82, v80);
      goto LABEL_16;
    }

    v68 = v57;
    v69 = v67[5];
    v70 = v67[6];
    __swift_project_boxed_opaque_existential_1(v67 + 2, v69);
    (*(v70 + 8))(v68, v62, v69, v70);

    (*(v58 + 8))(v68, v80);
  }

  (*(v40 + 8))(v42, v41);
  return v62;
}

uint64_t PhoneCallControlNLTransformer.transformToCallControlNLIntent(usoTask:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy0A8Ontology7UsoTaskC27PhoneCallFlowDelegatePlugin0gH15ControlNLIntentCSgGMd, &_s13SiriUtilities11TransformerVy0A8Ontology7UsoTaskC27PhoneCallFlowDelegatePlugin0gH15ControlNLIntentCSgGMR);
  v3 = OUTLINED_FUNCTION_7(v2);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  static Signpost.begin(_:)();
  v7 = v6;
  type metadata accessor for UsoTask();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0aB15ControlNLIntentCSgMd, &_s27PhoneCallFlowDelegatePlugin0aB15ControlNLIntentCSgMR);
  Transformer.init(transform:)();
  v8 = Transformer.transform.getter();
  v30[0] = a1;
  v8(&v31, v30);

  v9 = v31;
  if (v31)
  {
    v10 = one-time initialization token for siriPhone;

    if (v10 != -1)
    {
      OUTLINED_FUNCTION_6_2();
    }

    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, static Logger.siriPhone);

    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v12, v13))
    {
      OUTLINED_FUNCTION_36();
      v14 = OUTLINED_FUNCTION_17_30();
      OUTLINED_FUNCTION_13_40(v14);
      OUTLINED_FUNCTION_7_48(4.8152e-34);
      v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30[0], v30[1], &v31);

      v16 = OUTLINED_FUNCTION_15_34();
      v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, &v31);

      *(v7 + 14) = v18;
      *(v7 + 22) = v15;
      v19 = *(*v9 + 144);

      v21 = v19(v20);
      v23 = v22;

      v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v23, &v31);

      *(v7 + 24) = v24;
      OUTLINED_FUNCTION_14_41(&dword_0, v25, v26, "%s transformed %s into %s");
      swift_arrayDestroy();
      OUTLINED_FUNCTION_4_5();
      OUTLINED_FUNCTION_26_0();
    }

    else
    {
    }
  }

  v27 = OUTLINED_FUNCTION_3_65();
  v28(v27);
  Signpost.OpenSignpost.end()();

  return v9;
}

uint64_t *PhoneCallControlNLTransformer.deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v1 = v0[8];
  v2 = v0[10];

  return v0;
}

uint64_t *specialized PhoneCallControlNLTransformer.init(cacheProvider:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  a2[5] = a3;
  a2[6] = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2 + 2);
  (*(*(a3 - 8) + 32))(boxed_opaque_existential_1, a1, a3);
  a2[7] = type metadata accessor for PhoneCallControlNLTransformer();
  a2[8] = &outlined read-only object #0 of specialized PhoneCallControlNLTransformer.init(cacheProvider:);
  a2[9] = 0;
  a2[10] = 0;
  return a2;
}

uint64_t outlined destroy of Siri_Nlu_External_UserDialogAct?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t static PhoneCallControlRequestSupportPolicy.unsupportedCameraControlReason(for:action:sharedGlobals:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (PhoneCallControlAction.rawValue.getter(a3) == 0xD000000000000015 && 0x8000000000452E80 == v7)
  {
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v9 & 1) == 0)
    {
      if (PhoneCallControlAction.rawValue.getter(a3) == 0x43656C6261736964 && v10 == 0xED00006172656D61)
      {
      }

      else
      {
        v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v12 & 1) == 0)
        {
          return 10;
        }
      }

      ObjectType = swift_getObjectType();
      if (((*(a2 + 144))(ObjectType, a2) & 1) == 0)
      {
        return 10;
      }
    }
  }

  v13 = *(a4 + 24);
  v14 = *(a4 + 32);
  v15 = OUTLINED_FUNCTION_55();
  __swift_project_boxed_opaque_existential_1(v15, v16);
  OUTLINED_FUNCTION_6_55();
  v17(v13, v14);
  v18 = v34[4];
  __swift_project_boxed_opaque_existential_1(v34, v34[3]);
  v19 = *(v18 + 40);
  v20 = OUTLINED_FUNCTION_55();
  v21(v20);
  v22 = v33[4];
  __swift_project_boxed_opaque_existential_1(v33, v33[3]);
  v23 = *(v22 + 32);
  v24 = OUTLINED_FUNCTION_55();
  v26 = v25(v24);
  __swift_destroy_boxed_opaque_existential_1(v33);
  __swift_destroy_boxed_opaque_existential_1(v34);
  if ((v26 & 1) == 0)
  {
    return 10;
  }

  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2();
  }

  v27 = type metadata accessor for Logger();
  v28 = OUTLINED_FUNCTION_12_1(v27, static Logger.siriPhone);
  v29 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = OUTLINED_FUNCTION_65_0();
    *v30 = 0;
    _os_log_impl(&dword_0, v28, v29, "#PhoneCallControlRequestSupportPolicy cannot switch to FaceTime Audio because it is restricted in region", v30, 2u);
  }

  return 6;
}

uint64_t static PhoneCallControlRequestSupportPolicy.unsupportedSwitchToFaceTimeReason(for:action:sharedGlobals:)(uint8_t *a1, void *a2, uint64_t a3, void *a4)
{
  v9 = PhoneCallControlAction.rawValue.getter(a3) == 0xD000000000000015 && 0x8000000000452E80 == v8;
  if (v9)
  {
  }

  else
  {
    v10 = OUTLINED_FUNCTION_4_51();

    if ((v10 & 1) == 0)
    {
LABEL_13:
      swift_getObjectType();
      v26 = a2[5];
      v27 = a1;
      if ((v26() & 1) == 0)
      {
        goto LABEL_19;
      }

      PhoneCallControlAction.rawValue.getter(a3);
      OUTLINED_FUNCTION_10_48();
      if (v9 && 0x8000000000452E80 == v28)
      {
      }

      else
      {
        v30 = OUTLINED_FUNCTION_4_51();

        if ((v30 & 1) == 0)
        {
LABEL_19:
          v31 = a2[3];
          v32 = OUTLINED_FUNCTION_2_76();
          if (v33(v32))
          {
            if (PhoneCallControlAction.rawValue.getter(a3) == 0xD000000000000010 && 0x8000000000452E60 == v34)
            {
LABEL_38:

              goto LABEL_39;
            }

            v36 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v36)
            {
LABEL_39:
              if (one-time initialization token for siriPhone != -1)
              {
                OUTLINED_FUNCTION_6_2();
              }

              v54 = type metadata accessor for Logger();
              v20 = OUTLINED_FUNCTION_12_1(v54, static Logger.siriPhone);
              v55 = static os_log_type_t.debug.getter();
              if (OUTLINED_FUNCTION_3_66(v55))
              {
                v56 = OUTLINED_FUNCTION_65_0();
                OUTLINED_FUNCTION_7_14(v56);
                OUTLINED_FUNCTION_11_34(&dword_0, v57, v58, "#PhoneCallControlRequestSupportPolicy call is already FaceTime call. Not switching to FaceTime.");
                v25 = 0;
                goto LABEL_53;
              }

              v25 = 0;
              goto LABEL_54;
            }
          }

          if ((SPHCall.isFTAudio.getter() & 1) == 0)
          {
            goto LABEL_31;
          }

          PhoneCallControlAction.rawValue.getter(a3);
          OUTLINED_FUNCTION_10_48();
          if (!v9 || 0x8000000000452E80 != v37)
          {
            v39 = OUTLINED_FUNCTION_4_51();

            if ((v39 & 1) == 0)
            {
LABEL_31:
              v40 = a2[2];
              v41 = OUTLINED_FUNCTION_2_76();
              if (v42(v41) == 1)
              {
                v43 = a4[3];
                v44 = a4[4];
                __swift_project_boxed_opaque_existential_1(a4, v43);
                OUTLINED_FUNCTION_6_55();
                v45(v43, v44);
                v46 = v100;
                v47 = v101;
                __swift_project_boxed_opaque_existential_1(v99, v100);
                v48 = (*(v47 + 32))(v46, v47);
                __swift_destroy_boxed_opaque_existential_1(v99);
                if (v48 < 2)
                {
                  v68 = a2[22];
                  v69 = OUTLINED_FUNCTION_2_76();
                  if (v70(v69))
                  {
                    if (one-time initialization token for siriPhone != -1)
                    {
                      OUTLINED_FUNCTION_6_2();
                    }

                    v71 = type metadata accessor for Logger();
                    v20 = OUTLINED_FUNCTION_12_1(v71, static Logger.siriPhone);
                    v72 = static os_log_type_t.debug.getter();
                    if (!OUTLINED_FUNCTION_3_66(v72))
                    {
                      v25 = 1;
                      goto LABEL_54;
                    }

                    v73 = OUTLINED_FUNCTION_65_0();
                    OUTLINED_FUNCTION_7_14(v73);
                    OUTLINED_FUNCTION_11_34(&dword_0, v74, v75, "#PhoneCallControlRequestSupportPolicy cannot switch to FaceTime because caller ID is blocked.");
                    v25 = 1;
                  }

                  else
                  {
                    v76 = OUTLINED_FUNCTION_2_76();
                    if (((v26)(v76) & 1) != 0 && (v77 = a2[6], v78 = OUTLINED_FUNCTION_2_76(), (v79(v78) & 1) == 0))
                    {
                      if (one-time initialization token for siriPhone != -1)
                      {
                        OUTLINED_FUNCTION_6_2();
                      }

                      v91 = type metadata accessor for Logger();
                      v20 = OUTLINED_FUNCTION_12_1(v91, static Logger.siriPhone);
                      v92 = static os_log_type_t.debug.getter();
                      if (!OUTLINED_FUNCTION_3_66(v92))
                      {
                        v25 = 7;
                        goto LABEL_54;
                      }

                      v93 = OUTLINED_FUNCTION_65_0();
                      OUTLINED_FUNCTION_7_14(v93);
                      OUTLINED_FUNCTION_11_34(&dword_0, v94, v95, "#PhoneCallControlRequestSupportPolicy cannot switch to FaceTime because FaceTime status is not valid.");
                      v25 = 7;
                    }

                    else
                    {
                      v80 = a4[3];
                      v81 = a4[4];
                      v82 = OUTLINED_FUNCTION_55();
                      __swift_project_boxed_opaque_existential_1(v82, v83);
                      (*(v81 + 144))(v99, v80, v81);
                      v84 = v100;
                      v85 = v101;
                      __swift_project_boxed_opaque_existential_1(v99, v100);
                      LOBYTE(v84) = (*(v85 + 24))(0xD000000000000012, 0x80000000004574F0, v84, v85);
                      __swift_destroy_boxed_opaque_existential_1(v99);
                      if (v84)
                      {
                        return 10;
                      }

                      if (one-time initialization token for siriPhone != -1)
                      {
                        OUTLINED_FUNCTION_6_2();
                      }

                      v86 = type metadata accessor for Logger();
                      v20 = OUTLINED_FUNCTION_12_1(v86, static Logger.siriPhone);
                      v87 = static os_log_type_t.debug.getter();
                      if (!OUTLINED_FUNCTION_3_66(v87))
                      {
                        v25 = 4;
                        goto LABEL_54;
                      }

                      v88 = OUTLINED_FUNCTION_65_0();
                      OUTLINED_FUNCTION_7_14(v88);
                      OUTLINED_FUNCTION_11_34(&dword_0, v89, v90, "#PhoneCallControlRequestSupportPolicy FaceTime app nor installed.");
                      v25 = 4;
                    }
                  }
                }

                else
                {
                  if (one-time initialization token for siriPhone != -1)
                  {
                    OUTLINED_FUNCTION_6_2();
                  }

                  v49 = type metadata accessor for Logger();
                  v20 = OUTLINED_FUNCTION_12_1(v49, static Logger.siriPhone);
                  v50 = static os_log_type_t.debug.getter();
                  if (!OUTLINED_FUNCTION_3_66(v50))
                  {
                    v25 = 8;
                    goto LABEL_54;
                  }

                  v51 = OUTLINED_FUNCTION_65_0();
                  OUTLINED_FUNCTION_7_14(v51);
                  OUTLINED_FUNCTION_11_34(&dword_0, v52, v53, "#PhoneCallControlRequestSupportPolicy cannot switch to FaceTime because there are multiple active calls.");
                  v25 = 8;
                }
              }

              else
              {
                if (one-time initialization token for siriPhone != -1)
                {
                  OUTLINED_FUNCTION_6_2();
                }

                v62 = type metadata accessor for Logger();
                v20 = OUTLINED_FUNCTION_12_1(v62, static Logger.siriPhone);
                v63 = static os_log_type_t.debug.getter();
                if (!OUTLINED_FUNCTION_3_66(v63))
                {
                  v25 = 3;
                  goto LABEL_54;
                }

                v64 = OUTLINED_FUNCTION_65_0();
                OUTLINED_FUNCTION_7_14(v64);
                OUTLINED_FUNCTION_11_34(&dword_0, v65, v66, "#PhoneCallControlRequestSupportPolicy cannot switch to FaceTime because current call is not active.");
                v25 = 3;
              }

              goto LABEL_53;
            }

            goto LABEL_39;
          }

          goto LABEL_38;
        }
      }

      if (one-time initialization token for siriPhone != -1)
      {
        OUTLINED_FUNCTION_6_2();
      }

      v59 = type metadata accessor for Logger();
      v20 = OUTLINED_FUNCTION_12_1(v59, static Logger.siriPhone);
      v60 = static os_log_type_t.debug.getter();
      v25 = 2;
      if (!os_log_type_enabled(v20, v60))
      {
        goto LABEL_54;
      }

      v61 = OUTLINED_FUNCTION_65_0();
      OUTLINED_FUNCTION_7_14(v61);
      _os_log_impl(&dword_0, v20, v60, "#PhoneCallControlRequestSupportPolicy cannot switch to FTA from telephony.", v27, 2u);
      goto LABEL_53;
    }
  }

  v11 = a4[3];
  v12 = a4[4];
  __swift_project_boxed_opaque_existential_1(a4, v11);
  OUTLINED_FUNCTION_6_55();
  v13(v11, v12);
  v14 = v100;
  v15 = v101;
  __swift_project_boxed_opaque_existential_1(v99, v100);
  (*(v15 + 40))(v96, v14, v15);
  v16 = v97;
  v17 = v98;
  __swift_project_boxed_opaque_existential_1(v96, v97);
  v18 = (*(v17 + 32))(v16, v17);
  __swift_destroy_boxed_opaque_existential_1(v96);
  __swift_destroy_boxed_opaque_existential_1(v99);
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2();
  }

  v19 = type metadata accessor for Logger();
  v20 = OUTLINED_FUNCTION_12_1(v19, static Logger.siriPhone);
  v21 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_3_66(v21))
  {
    v22 = OUTLINED_FUNCTION_65_0();
    OUTLINED_FUNCTION_7_14(v22);
    OUTLINED_FUNCTION_11_34(&dword_0, v23, v24, "#PhoneCallControlRequestSupportPolicy cannot switch to FaceTime Audio because it is restricted in region.");
    v25 = 6;
LABEL_53:

    goto LABEL_54;
  }

  v25 = 6;
LABEL_54:

  return v25;
}

__n128 PhoneCallDirectInvocationNLIntent.init(app:contacts:phoneCallAVMode:phoneCallAttributes:phoneCallAudioRoute:phoneCallCapability:phoneCallConfirmation:phoneCallDestinationType:phoneCallNoun:phoneCallPreferredProvider:phoneCallReference:phoneCallVerb:voiceMailVerb:voiceMailNoun:smsGroups:contactQueries:references:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, char a5@<W4>, char a6@<W5>, char a7@<W6>, char a8@<W7>, uint64_t a9@<X8>, uint64_t a10, __n128 a11, uint64_t a12)
{
  result = a11;
  v13 = *(a1 + 16);
  *a9 = *a1;
  *(a9 + 16) = v13;
  *(a9 + 32) = *(a1 + 32);
  *(a9 + 40) = a2;
  *(a9 + 48) = a3;
  *(a9 + 56) = a4;
  *(a9 + 64) = a5;
  *(a9 + 65) = a6;
  *(a9 + 66) = a7;
  *(a9 + 67) = a8;
  *(a9 + 68) = a10;
  *(a9 + 70) = *(&a10 + 2);
  *(a9 + 80) = a11;
  *(a9 + 96) = a12;
  return result;
}

uint64_t outlined init with copy of PhoneCallApp?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0aB3App_pSgMd, &_s27PhoneCallFlowDelegatePlugin0aB3App_pSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined assign with take of PhoneCallApp?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0aB3App_pSgMd, &_s27PhoneCallFlowDelegatePlugin0aB3App_pSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t PhoneCallDirectInvocationNLIntent.contacts.setter(uint64_t a1)
{
  v3 = *(v1 + 40);

  *(v1 + 40) = a1;
  return result;
}

uint64_t PhoneCallDirectInvocationNLIntent.phoneCallAttributes.setter(uint64_t a1)
{
  v3 = *(v1 + 56);

  *(v1 + 56) = a1;
  return result;
}

uint64_t PhoneCallDirectInvocationNLIntent.smsGroups.setter(uint64_t a1)
{
  v3 = *(v1 + 80);

  *(v1 + 80) = a1;
  return result;
}

uint64_t SingleResultVoicemailModel.contactIds.setter(uint64_t a1)
{
  v3 = *(v1 + 88);

  *(v1 + 88) = a1;
  return result;
}

uint64_t PhoneCallDirectInvocationNLIntent.references.setter(uint64_t a1)
{
  v3 = *(v1 + 96);

  *(v1 + 96) = a1;
  return result;
}

uint64_t getEnumTagSinglePayload for PhoneCallDirectInvocationNLIntent(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 104))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 40);
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

uint64_t storeEnumTagSinglePayload for PhoneCallDirectInvocationNLIntent(uint64_t result, int a2, int a3)
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
      *(result + 40) = (a2 - 1);
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

PhoneCallFlowDelegatePlugin::PhoneCallDisplayTextCATs::Properties_optional __swiftcall PhoneCallDisplayTextCATs.Properties.init(rawValue:)(Swift::String rawValue)
{
  v1 = _findStringSwitchCaseWithCache(cases:string:cache:)();

  if (v1 >= 0x16)
  {
    return 22;
  }

  else
  {
    return v1;
  }
}

unint64_t PhoneCallDisplayTextCATs.Properties.rawValue.getter(char a1)
{
  result = 0xD000000000000028;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000020;
      break;
    case 2:
    case 12:
    case 14:
    case 20:
      result = 0xD000000000000023;
      break;
    case 3:
      result = 0xD000000000000025;
      break;
    case 4:
    case 17:
    case 19:
      result = 0xD000000000000022;
      break;
    case 5:
      result = 0xD00000000000001ELL;
      break;
    case 6:
    case 18:
      result = 0xD00000000000001FLL;
      break;
    case 7:
    case 8:
    case 11:
      result = 0xD000000000000027;
      break;
    case 9:
    case 13:
      result = 0xD000000000000026;
      break;
    case 10:
      result = 0xD00000000000002CLL;
      break;
    case 15:
      result = 0xD00000000000001CLL;
      break;
    case 16:
      result = 0xD00000000000002BLL;
      break;
    case 21:
      result = 0xD00000000000001BLL;
      break;
    default:
      return result;
  }

  return result;
}

PhoneCallFlowDelegatePlugin::PhoneCallDisplayTextCATs::Properties_optional protocol witness for RawRepresentable.init(rawValue:) in conformance PhoneCallDisplayTextCATs.Properties@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::PhoneCallDisplayTextCATs::Properties_optional *a2@<X8>)
{
  result.value = PhoneCallDisplayTextCATs.Properties.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance PhoneCallDisplayTextCATs.Properties@<X0>(unint64_t *a1@<X8>)
{
  result = PhoneCallDisplayTextCATs.Properties.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t PhoneCallDisplayTextCATs.addToCallButtonText()()
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
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapper.executeDialog(catId:parameters:));
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_15_2(v0);
  *v1 = v2;
  v1[1] = AddCallParticipantCATs.unsupportedParticipantsMultipleContactsUnsupported();
  OUTLINED_FUNCTION_32();
  v3 = OUTLINED_FUNCTION_36_1(40);

  return v4(v3);
}

{
  return OUTLINED_FUNCTION_33_1();
}

void PhoneCallDisplayTextCATs.appSettings(appName:completion:)()
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

uint64_t PhoneCallDisplayTextCATs.appSettings(appName:)()
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
  v16 = v2;
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_64_7();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_35_1();
  v4 = OUTLINED_FUNCTION_46_15(v3);
  v5 = OUTLINED_FUNCTION_0_4(v4, xmmword_424FD0);
  OUTLINED_FUNCTION_54_2(v5, v6, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v7 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_1_7(v7);
  if (v8)
  {
    outlined destroy of SpeakableString?(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_35_2();
  }

  else
  {
    OUTLINED_FUNCTION_43_2();
    OUTLINED_FUNCTION_6_0();
    v10 = *(v9 + 32);
    OUTLINED_FUNCTION_16_0();
    v11();
  }

  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v1 + 56) = v12;
  *v12 = v13;
  OUTLINED_FUNCTION_10_49(v12);
  OUTLINED_FUNCTION_37_17();

  return v14();
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  v3 = v2;
  OUTLINED_FUNCTION_6();
  *v4 = v3;
  v6 = *(v5 + 56);
  v7 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v8 = v7;
  v3[8] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_66_0();

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {
    v13 = v3[5];
    v12 = v3[6];

    OUTLINED_FUNCTION_8_1();

    return v14();
  }
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

  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapper.executeDialog(catId:parameters:));
  v11 = swift_task_alloc();
  v12 = OUTLINED_FUNCTION_61_4(v11);
  *v12 = v13;
  OUTLINED_FUNCTION_19_2(v12);
  v14 = OUTLINED_FUNCTION_38_1(32);

  return v15(v14);
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_4();
  v3 = v2;
  OUTLINED_FUNCTION_6();
  *v4 = v3;
  v6 = *(v5 + 48);
  v7 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v8 = v7;
  v3[7] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_66_0();

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {
    v13 = v3[4];
    v12 = v3[5];

    v14 = OUTLINED_FUNCTION_49();

    return v15(v14);
  }
}

void PhoneCallDisplayTextCATs.appSettings(appName:)()
{
  OUTLINED_FUNCTION_61_6();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v6);
  OUTLINED_FUNCTION_17_17();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v7 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_0_4(v7, xmmword_424FD0);
  OUTLINED_FUNCTION_50_14();
  v8 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_7_47(v8);
  if (v9)
  {
    outlined destroy of SpeakableString?(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v7 + 48) = 0u;
    *(v7 + 64) = 0u;
  }

  else
  {
    *(v7 + 72) = v2;
    __swift_allocate_boxed_opaque_existential_1((v7 + 48));
    OUTLINED_FUNCTION_40(v2);
    (*(v10 + 32))();
  }

  OUTLINED_FUNCTION_119();
  dispatch thunk of CATWrapper.execute(catId:parameters:)();

  OUTLINED_FUNCTION_60_1();
}

void PhoneCallDisplayTextCATs.callButtonText(label:completion:)()
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
  *(OUTLINED_FUNCTION_35_1() + 16) = xmmword_424FD0;
  OUTLINED_FUNCTION_5_59();
  *(v5 + 32) = v6;
  *(v5 + 40) = v7;
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

  OUTLINED_FUNCTION_119();
  OUTLINED_FUNCTION_49_12();

  OUTLINED_FUNCTION_60_1();
}

uint64_t PhoneCallDisplayTextCATs.callButtonText(label:)()
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
  v17 = v2;
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_64_7();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_35_1();
  *(OUTLINED_FUNCTION_46_15(v3) + 16) = xmmword_424FD0;
  OUTLINED_FUNCTION_5_59();
  *(v4 + 32) = v5;
  *(v4 + 40) = v6;
  OUTLINED_FUNCTION_54_2(v4, v7, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
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

  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v1 + 56) = v13;
  *v13 = v14;
  OUTLINED_FUNCTION_10_49(v13);
  OUTLINED_FUNCTION_37_17();

  return v15();
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  v3 = v2;
  OUTLINED_FUNCTION_6();
  *v4 = v3;
  v6 = *(v5 + 56);
  v7 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v8 = v7;
  v3[8] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_66_0();

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {
    v13 = v3[5];
    v12 = v3[6];

    OUTLINED_FUNCTION_8_1();

    return v14();
  }
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
  v18 = v1;
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_60_9();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v2 = OUTLINED_FUNCTION_35_1();
  *(OUTLINED_FUNCTION_50_0(v2) + 16) = xmmword_424FD0;
  OUTLINED_FUNCTION_5_59();
  *(v3 + 32) = v4;
  *(v3 + 40) = v5;
  OUTLINED_FUNCTION_54_2(v3, v6, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v7 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_20(v7);
  if (v8)
  {
    outlined destroy of SpeakableString?(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_35_2();
  }

  else
  {
    OUTLINED_FUNCTION_43_2();
    OUTLINED_FUNCTION_6_0();
    v10 = *(v9 + 32);
    OUTLINED_FUNCTION_16_0();
    v11();
  }

  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapper.executeDialog(catId:parameters:));
  v12 = swift_task_alloc();
  v13 = OUTLINED_FUNCTION_61_4(v12);
  *v13 = v14;
  OUTLINED_FUNCTION_19_2(v13);
  v15 = OUTLINED_FUNCTION_38_1(35);

  return v16(v15);
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_4();
  v3 = v2;
  OUTLINED_FUNCTION_6();
  *v4 = v3;
  v6 = *(v5 + 48);
  v7 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v8 = v7;
  v3[7] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_66_0();

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {
    v13 = v3[4];
    v12 = v3[5];

    v14 = OUTLINED_FUNCTION_49();

    return v15(v14);
  }
}

void PhoneCallDisplayTextCATs.callButtonText(label:)()
{
  OUTLINED_FUNCTION_61_6();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v6);
  OUTLINED_FUNCTION_17_17();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v7 = OUTLINED_FUNCTION_35_1();
  *(v7 + 16) = xmmword_424FD0;
  OUTLINED_FUNCTION_5_59();
  *(v8 + 32) = v9;
  *(v8 + 40) = v10;
  OUTLINED_FUNCTION_50_14();
  v11 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_7_47(v11);
  if (v12)
  {
    outlined destroy of SpeakableString?(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v7 + 48) = 0u;
    *(v7 + 64) = 0u;
  }

  else
  {
    *(v7 + 72) = v2;
    __swift_allocate_boxed_opaque_existential_1((v7 + 48));
    OUTLINED_FUNCTION_40(v2);
    (*(v13 + 32))();
  }

  OUTLINED_FUNCTION_119();
  dispatch thunk of CATWrapper.execute(catId:parameters:)();

  OUTLINED_FUNCTION_60_1();
}

uint64_t PhoneCallDisplayTextCATs.cancelButtonText()()
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
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapper.executeDialog(catId:parameters:));
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

uint64_t PhoneCallDisplayTextCATs.cancelledText()()
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
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapper.executeDialog(catId:parameters:));
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_15_2(v0);
  *v1 = v2;
  v1[1] = AddCallParticipantCATs.unsupportedParticipantsMultipleContactsUnsupported();
  OUTLINED_FUNCTION_32();
  v3 = OUTLINED_FUNCTION_36_1(34);

  return v4(v3);
}

{
  return OUTLINED_FUNCTION_33_1();
}

uint64_t PhoneCallDisplayTextCATs.changeApp()()
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
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapper.executeDialog(catId:parameters:));
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_15_2(v0);
  *v1 = v2;
  v1[1] = AddCallParticipantCATs.unsupportedParticipantsMultipleContactsUnsupported();
  OUTLINED_FUNCTION_32();
  v3 = OUTLINED_FUNCTION_36_1(30);

  return v4(v3);
}

{
  return OUTLINED_FUNCTION_33_1();
}

uint64_t PhoneCallDisplayTextCATs.changeText()()
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
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapper.executeDialog(catId:parameters:));
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_15_2(v0);
  *v1 = v2;
  v1[1] = AddCallParticipantCATs.unsupportedParticipantsMultipleContactsUnsupported();
  OUTLINED_FUNCTION_32();
  v3 = OUTLINED_FUNCTION_36_1(31);

  return v4(v3);
}

{
  return OUTLINED_FUNCTION_33_1();
}

uint64_t PhoneCallDisplayTextCATs.contactComposition()()
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
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapper.executeDialog(catId:parameters:));
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_15_2(v0);
  *v1 = v2;
  v1[1] = AddCallParticipantCATs.unsupportedParticipantsMultipleContactsUnsupported();
  OUTLINED_FUNCTION_32();
  v3 = OUTLINED_FUNCTION_36_1(39);

  return v4(v3);
}

{
  return OUTLINED_FUNCTION_33_1();
}

uint64_t PhoneCallDisplayTextCATs.emergencySashTitle()()
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
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapper.executeDialog(catId:parameters:));
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_15_2(v0);
  *v1 = v2;
  v1[1] = AddCallParticipantCATs.unsupportedParticipantsMultipleContactsUnsupported();
  OUTLINED_FUNCTION_32();
  v3 = OUTLINED_FUNCTION_36_1(39);

  return v4(v3);
}

{
  return OUTLINED_FUNCTION_33_1();
}

uint64_t PhoneCallDisplayTextCATs.emergencyServices()()
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
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapper.executeDialog(catId:parameters:));
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

uint64_t PhoneCallDisplayTextCATs.emergencyServicesPrompt()()
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
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapper.executeDialog(catId:parameters:));
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_15_2(v0);
  *v1 = v2;
  v1[1] = AddCallParticipantCATs.unsupportedParticipantsMultipleContactsUnsupported();
  OUTLINED_FUNCTION_32();
  v3 = OUTLINED_FUNCTION_36_1(44);

  return v4(v3);
}

{
  return OUTLINED_FUNCTION_33_1();
}

void PhoneCallDisplayTextCATs.handleLabelAndType(personHandleLabel:label:type:completion:)()
{
  OUTLINED_FUNCTION_66();
  v32[2] = v0;
  v32[1] = v1;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v9 = OUTLINED_FUNCTION_21(v8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v14 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v12);
  v17 = v32 - v16;
  __chkstk_darwin(v15);
  v19 = v32 - v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v20 = OUTLINED_FUNCTION_47();
  *(v20 + 16) = xmmword_426980;
  OUTLINED_FUNCTION_27_2();
  *(v21 + 32) = 0xD000000000000011;
  *(v21 + 40) = v22;
  outlined init with copy of SpeakableString?(v7, v19, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v23 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_46_16(v19);
  if (v24)
  {
    outlined destroy of SpeakableString?(v19, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_35_2();
  }

  else
  {
    *(v20 + 72) = v23;
    __swift_allocate_boxed_opaque_existential_1((v20 + 48));
    OUTLINED_FUNCTION_40(v23);
    (*(v25 + 32))();
  }

  OUTLINED_FUNCTION_5_59();
  *(v20 + 80) = v26;
  *(v20 + 88) = v27;
  outlined init with copy of SpeakableString?(v5, v17, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_46_16(v17);
  if (v24)
  {
    outlined destroy of SpeakableString?(v17, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v20 + 96) = 0u;
    *(v20 + 112) = 0u;
  }

  else
  {
    *(v20 + 120) = v23;
    __swift_allocate_boxed_opaque_existential_1((v20 + 96));
    OUTLINED_FUNCTION_40(v23);
    (*(v28 + 32))();
  }

  OUTLINED_FUNCTION_47_16();
  *(v20 + 128) = v29;
  *(v20 + 136) = v30;
  outlined init with copy of SpeakableString?(v3, v14, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_46_16(v14);
  if (v24)
  {
    outlined destroy of SpeakableString?(v14, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v20 + 144) = 0u;
    *(v20 + 160) = 0u;
  }

  else
  {
    *(v20 + 168) = v23;
    __swift_allocate_boxed_opaque_existential_1((v20 + 144));
    OUTLINED_FUNCTION_40(v23);
    (*(v31 + 32))();
  }

  OUTLINED_FUNCTION_65_9();
  dispatch thunk of CATWrapper.execute(catId:parameters:completion:)();

  OUTLINED_FUNCTION_65();
}

uint64_t PhoneCallDisplayTextCATs.handleLabelAndType(personHandleLabel:label:type:)()
{
  OUTLINED_FUNCTION_15();
  v1[5] = v2;
  v1[6] = v0;
  v1[3] = v3;
  v1[4] = v4;
  v1[2] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v6);
  v8 = *(v7 + 64) + 15;
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v9, v10, v11);
}

{
  OUTLINED_FUNCTION_23_0();
  v1 = v0[9];
  v2 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_47();
  v0[10] = v3;
  *(v3 + 16) = xmmword_426980;
  OUTLINED_FUNCTION_27_2();
  *(v4 + 32) = 0xD000000000000011;
  *(v4 + 40) = v5;
  OUTLINED_FUNCTION_54_2(v4, v6, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v7 = type metadata accessor for SpeakableString();
  if (OUTLINED_FUNCTION_58(v7) == 1)
  {
    outlined destroy of SpeakableString?(v0[9], &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
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

  v11 = v0[8];
  v12 = v0[4];
  OUTLINED_FUNCTION_5_59();
  *(v3 + 80) = v13;
  *(v3 + 88) = v14;
  outlined init with copy of SpeakableString?(v15, v11, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  if (OUTLINED_FUNCTION_15_4() == 1)
  {
    outlined destroy of SpeakableString?(v0[8], &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v3 + 96) = 0u;
    *(v3 + 112) = 0u;
  }

  else
  {
    *(v3 + 120) = v2;
    __swift_allocate_boxed_opaque_existential_1((v3 + 96));
    OUTLINED_FUNCTION_6_0();
    v17 = *(v16 + 32);
    OUTLINED_FUNCTION_16_0();
    v18();
  }

  v19 = v0[7];
  v20 = v0[5];
  OUTLINED_FUNCTION_47_16();
  *(v3 + 128) = v21;
  *(v3 + 136) = v22;
  outlined init with copy of SpeakableString?(v23, v19, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  if (OUTLINED_FUNCTION_15_4() == 1)
  {
    outlined destroy of SpeakableString?(v0[7], &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v3 + 144) = 0u;
    *(v3 + 160) = 0u;
  }

  else
  {
    *(v3 + 168) = v2;
    __swift_allocate_boxed_opaque_existential_1((v3 + 144));
    OUTLINED_FUNCTION_6_0();
    v25 = *(v24 + 32);
    OUTLINED_FUNCTION_16_0();
    v26();
  }

  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  v33 = v27;
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[11] = v28;
  *v28 = v29;
  v28[1] = PhoneCallDisplayTextCATs.handleLabelAndType(personHandleLabel:label:type:);
  v30 = v0[6];
  v31 = v0[2];

  return v33(v31, 0xD000000000000027, 0x8000000000453100, v3);
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_28();
  v3 = v2;
  OUTLINED_FUNCTION_6();
  *v4 = v3;
  v6 = *(v5 + 88);
  v7 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v8 = v7;
  v3[12] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_66_0();

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {
    v13 = v3[9];
    v12 = v3[10];
    v16 = v3 + 7;
    v14 = v3[7];
    v15 = v16[1];

    OUTLINED_FUNCTION_8_1();

    return v17();
  }
}

{
  OUTLINED_FUNCTION_27();
  v2 = v0[9];
  v1 = v0[10];
  v4 = v0[7];
  v3 = v0[8];

  OUTLINED_FUNCTION_11();
  v6 = v0[12];

  return v5();
}

{
  OUTLINED_FUNCTION_15();
  v1[4] = v2;
  v1[5] = v0;
  v1[2] = v3;
  v1[3] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v5);
  v7 = *(v6 + 64) + 15;
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v8, v9, v10);
}

{
  OUTLINED_FUNCTION_23_0();
  v1 = v0[8];
  v2 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_47();
  v0[9] = v3;
  *(v3 + 16) = xmmword_426980;
  OUTLINED_FUNCTION_27_2();
  *(v4 + 32) = 0xD000000000000011;
  *(v4 + 40) = v5;
  OUTLINED_FUNCTION_54_2(v4, v6, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v7 = type metadata accessor for SpeakableString();
  if (OUTLINED_FUNCTION_58(v7) == 1)
  {
    outlined destroy of SpeakableString?(v0[8], &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
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

  v11 = v0[7];
  v12 = v0[3];
  OUTLINED_FUNCTION_5_59();
  *(v3 + 80) = v13;
  *(v3 + 88) = v14;
  outlined init with copy of SpeakableString?(v15, v11, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  if (OUTLINED_FUNCTION_15_4() == 1)
  {
    outlined destroy of SpeakableString?(v0[7], &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v3 + 96) = 0u;
    *(v3 + 112) = 0u;
  }

  else
  {
    *(v3 + 120) = v2;
    __swift_allocate_boxed_opaque_existential_1((v3 + 96));
    OUTLINED_FUNCTION_6_0();
    v17 = *(v16 + 32);
    OUTLINED_FUNCTION_16_0();
    v18();
  }

  v19 = v0[6];
  v20 = v0[4];
  OUTLINED_FUNCTION_47_16();
  *(v3 + 128) = v21;
  *(v3 + 136) = v22;
  outlined init with copy of SpeakableString?(v23, v19, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  if (OUTLINED_FUNCTION_15_4() == 1)
  {
    outlined destroy of SpeakableString?(v0[6], &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v3 + 144) = 0u;
    *(v3 + 160) = 0u;
  }

  else
  {
    *(v3 + 168) = v2;
    __swift_allocate_boxed_opaque_existential_1((v3 + 144));
    OUTLINED_FUNCTION_6_0();
    v25 = *(v24 + 32);
    OUTLINED_FUNCTION_16_0();
    v26();
  }

  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapper.executeDialog(catId:parameters:));
  v32 = v27;
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[10] = v28;
  *v28 = v29;
  v28[1] = PhoneCallDisplayTextCATs.handleLabelAndType(personHandleLabel:label:type:);
  v30 = v0[5];

  return v32(0xD000000000000027, 0x8000000000453100, v3);
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_4();
  v3 = v2;
  OUTLINED_FUNCTION_6();
  *v4 = v3;
  v6 = *(v5 + 80);
  v7 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v8 = v7;
  v3[11] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_66_0();

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {
    v13 = v3[8];
    v12 = v3[9];
    v16 = v3 + 6;
    v14 = v3[6];
    v15 = v16[1];

    v17 = OUTLINED_FUNCTION_49();

    return v18(v17);
  }
}

{
  OUTLINED_FUNCTION_27();
  v2 = v0[8];
  v1 = v0[9];
  v4 = v0[6];
  v3 = v0[7];

  OUTLINED_FUNCTION_11();
  v6 = v0[11];

  return v5();
}

void PhoneCallDisplayTextCATs.handleLabelAndType(personHandleLabel:label:type:)()
{
  OUTLINED_FUNCTION_66();
  v34[0] = v0;
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v8 = OUTLINED_FUNCTION_21(v7);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v13 = v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v16 = v34 - v15;
  __chkstk_darwin(v14);
  v18 = v34 - v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v19 = OUTLINED_FUNCTION_47();
  *(v19 + 16) = xmmword_426980;
  OUTLINED_FUNCTION_27_2();
  *(v20 + 32) = 0xD000000000000011;
  *(v20 + 40) = v21;
  outlined init with copy of SpeakableString?(v6, v18, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v22 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_4_1(v18);
  if (v23)
  {
    outlined destroy of SpeakableString?(v18, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_41_17();
  }

  else
  {
    OUTLINED_FUNCTION_55_2();
    OUTLINED_FUNCTION_24_23();
    (*(v24 + 32))(v25);
  }

  OUTLINED_FUNCTION_5_59();
  *(v19 + 80) = v26;
  *(v19 + 88) = v27;
  outlined init with copy of SpeakableString?(v4, v16, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_4_1(v16);
  if (v23)
  {
    outlined destroy of SpeakableString?(v16, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v19 + 96) = 0u;
    *(v19 + 112) = 0u;
  }

  else
  {
    *(v19 + 120) = v22;
    __swift_allocate_boxed_opaque_existential_1((v19 + 96));
    OUTLINED_FUNCTION_24_23();
    (*(v28 + 32))(v29);
  }

  OUTLINED_FUNCTION_47_16();
  *(v19 + 128) = v30;
  *(v19 + 136) = v31;
  outlined init with copy of SpeakableString?(v2, v13, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_4_1(v13);
  if (v23)
  {
    outlined destroy of SpeakableString?(v13, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v19 + 144) = 0u;
    *(v19 + 160) = 0u;
  }

  else
  {
    *(v19 + 168) = v22;
    __swift_allocate_boxed_opaque_existential_1((v19 + 144));
    OUTLINED_FUNCTION_24_23();
    (*(v32 + 32))(v33);
  }

  OUTLINED_FUNCTION_65_9();
  dispatch thunk of CATWrapper.execute(catId:parameters:)();

  OUTLINED_FUNCTION_65();
}

uint64_t PhoneCallDisplayTextCATs.joinButtonText()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_18(v0);
  *v1 = v2;
  v1[1] = closure #2 in ActionableCallControlFlow.execute();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_35_14();

  return v3();
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapper.executeDialog(catId:parameters:));
  v6 = v0;
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_15_2(v1);
  *v2 = v3;
  v2[1] = AddCallParticipantCATs.errorNoTargetCall();
  v4 = OUTLINED_FUNCTION_28_6();

  return v6(v4);
}

{
  return OUTLINED_FUNCTION_33_1();
}

uint64_t PhoneCallDisplayTextCATs.newCallButtonText()()
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
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapper.executeDialog(catId:parameters:));
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

uint64_t PhoneCallDisplayTextCATs.nextButtonText()()
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
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapper.executeDialog(catId:parameters:));
  v6 = v0;
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_15_2(v1);
  *v2 = v3;
  v2[1] = AddCallParticipantCATs.unsupportedParticipantsMultipleContactsUnsupported();
  v4 = OUTLINED_FUNCTION_28_6();

  return v6(v4);
}

{
  return OUTLINED_FUNCTION_33_1();
}

void PhoneCallDisplayTextCATs.openApp(appName:completion:)()
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

uint64_t PhoneCallDisplayTextCATs.openApp(appName:)()
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
  v16 = v2;
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_64_7();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_35_1();
  v4 = OUTLINED_FUNCTION_46_15(v3);
  v5 = OUTLINED_FUNCTION_0_4(v4, xmmword_424FD0);
  OUTLINED_FUNCTION_54_2(v5, v6, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v7 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_1_7(v7);
  if (v8)
  {
    outlined destroy of SpeakableString?(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_35_2();
  }

  else
  {
    OUTLINED_FUNCTION_43_2();
    OUTLINED_FUNCTION_6_0();
    v10 = *(v9 + 32);
    OUTLINED_FUNCTION_16_0();
    v11();
  }

  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v1 + 56) = v12;
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

  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapper.executeDialog(catId:parameters:));
  v11 = swift_task_alloc();
  v12 = OUTLINED_FUNCTION_61_4(v11);
  *v12 = v13;
  OUTLINED_FUNCTION_19_2(v12);
  v14 = OUTLINED_FUNCTION_38_1(28);

  return v15(v14);
}

void PhoneCallDisplayTextCATs.openApp(appName:)()
{
  OUTLINED_FUNCTION_61_6();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v6);
  OUTLINED_FUNCTION_17_17();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v7 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_0_4(v7, xmmword_424FD0);
  OUTLINED_FUNCTION_50_14();
  v8 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_7_47(v8);
  if (v9)
  {
    outlined destroy of SpeakableString?(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v7 + 48) = 0u;
    *(v7 + 64) = 0u;
  }

  else
  {
    *(v7 + 72) = v2;
    __swift_allocate_boxed_opaque_existential_1((v7 + 48));
    OUTLINED_FUNCTION_40(v2);
    (*(v10 + 32))();
  }

  OUTLINED_FUNCTION_119();
  dispatch thunk of CATWrapper.execute(catId:parameters:)();

  OUTLINED_FUNCTION_60_1();
}

uint64_t PhoneCallDisplayTextCATs.openContactsButtonText()()
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
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapper.executeDialog(catId:parameters:));
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

uint64_t PhoneCallDisplayTextCATs.transcription()()
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
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapper.executeDialog(catId:parameters:));
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_15_2(v0);
  *v1 = v2;
  v1[1] = AddCallParticipantCATs.unsupportedParticipantsMultipleContactsUnsupported();
  OUTLINED_FUNCTION_32();
  v3 = OUTLINED_FUNCTION_36_1(34);

  return v4(v3);
}

{
  return OUTLINED_FUNCTION_33_1();
}

void PhoneCallDisplayTextCATs.tryWithApp(appName:isThirdPartyApp:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_66();
  a19 = v20;
  a20 = v21;
  OUTLINED_FUNCTION_74_4();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v22);
  v24 = *(v23 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v25);
  v27 = &a9 - v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v28 = OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_0_4(v28, xmmword_424FF0);
  OUTLINED_FUNCTION_77_7();
  v29 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_46_16(v27);
  if (v30)
  {
    outlined destroy of SpeakableString?(v27, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_35_2();
  }

  else
  {
    v28[4].n128_u64[1] = v29;
    __swift_allocate_boxed_opaque_existential_1(&v28[3]);
    OUTLINED_FUNCTION_40(v29);
    (*(v31 + 32))();
  }

  OUTLINED_FUNCTION_4_52();
  v28[5].n128_u64[0] = v32;
  v28[5].n128_u64[1] = v33;
  OUTLINED_FUNCTION_72_4();
  OUTLINED_FUNCTION_78_0();

  OUTLINED_FUNCTION_65();
}

uint64_t PhoneCallDisplayTextCATs.tryWithApp(appName:isThirdPartyApp:)()
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
  v21 = v3;
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
  OUTLINED_FUNCTION_4_52();
  *(v2 + 80) = v14;
  *(v2 + 88) = v15;
  OUTLINED_FUNCTION_73_1(v16);
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v1 + 56) = v17;
  *v17 = v18;
  OUTLINED_FUNCTION_10_49(v17);
  OUTLINED_FUNCTION_37_17();

  return v19();
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
  OUTLINED_FUNCTION_4_52();
  *(v2 + 80) = v14;
  *(v2 + 88) = v15;
  OUTLINED_FUNCTION_73_1(v16);
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapper.executeDialog(catId:parameters:));
  v17 = swift_task_alloc();
  v18 = OUTLINED_FUNCTION_61_4(v17);
  *v18 = v19;
  OUTLINED_FUNCTION_19_2(v18);
  v20 = OUTLINED_FUNCTION_38_1(31);

  return v21(v20);
}

void PhoneCallDisplayTextCATs.tryWithApp(appName:isThirdPartyApp:)()
{
  OUTLINED_FUNCTION_61_6();
  v1 = OUTLINED_FUNCTION_53_2();
  OUTLINED_FUNCTION_21(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v4);
  OUTLINED_FUNCTION_27_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v5 = OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_0_4(v5, xmmword_424FF0);
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

  OUTLINED_FUNCTION_4_52();
  v5[5].n128_u64[0] = v11;
  v5[5].n128_u64[1] = v12;
  OUTLINED_FUNCTION_67_8();
  dispatch thunk of CATWrapper.execute(catId:parameters:)();

  OUTLINED_FUNCTION_60_1();
}

uint64_t PhoneCallDisplayTextCATs.unknownCaller()()
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
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapper.executeDialog(catId:parameters:));
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_15_2(v0);
  *v1 = v2;
  v1[1] = AddCallParticipantCATs.unsupportedParticipantsMultipleContactsUnsupported();
  OUTLINED_FUNCTION_32();
  v3 = OUTLINED_FUNCTION_36_1(34);

  return v4(v3);
}

{
  return OUTLINED_FUNCTION_33_1();
}

uint64_t PhoneCallDisplayTextCATs.updateSettings()()
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
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapper.executeDialog(catId:parameters:));
  v6 = v0;
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_15_2(v1);
  *v2 = v3;
  v2[1] = AddCallParticipantCATs.unsupportedParticipantsMultipleContactsUnsupported();
  v4 = OUTLINED_FUNCTION_28_6();

  return v6(v4);
}

{
  return OUTLINED_FUNCTION_33_1();
}

void PhoneCallDisplayTextCATs.useApp(appName:isPhoneApp:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_66();
  a19 = v20;
  a20 = v21;
  OUTLINED_FUNCTION_74_4();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v22);
  v24 = *(v23 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v25);
  v27 = &a9 - v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v28 = OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_0_4(v28, xmmword_424FF0);
  OUTLINED_FUNCTION_77_7();
  v29 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_46_16(v27);
  if (v30)
  {
    outlined destroy of SpeakableString?(v27, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_35_2();
  }

  else
  {
    v28[4].n128_u64[1] = v29;
    __swift_allocate_boxed_opaque_existential_1(&v28[3]);
    OUTLINED_FUNCTION_40(v29);
    (*(v31 + 32))();
  }

  OUTLINED_FUNCTION_16_6();
  v28[5].n128_u64[0] = v32;
  v28[5].n128_u64[1] = v33;
  OUTLINED_FUNCTION_72_4();
  OUTLINED_FUNCTION_78_0();

  OUTLINED_FUNCTION_65();
}

uint64_t PhoneCallDisplayTextCATs.useApp(appName:isPhoneApp:)()
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
  v21 = v3;
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
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v1 + 56) = v17;
  *v17 = v18;
  OUTLINED_FUNCTION_10_49(v17);
  OUTLINED_FUNCTION_37_17();

  return v19();
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
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapper.executeDialog(catId:parameters:));
  v17 = swift_task_alloc();
  v18 = OUTLINED_FUNCTION_61_4(v17);
  *v18 = v19;
  OUTLINED_FUNCTION_19_2(v18);
  v20 = OUTLINED_FUNCTION_38_1(27);

  return v21(v20);
}

void PhoneCallDisplayTextCATs.useApp(appName:isPhoneApp:)()
{
  OUTLINED_FUNCTION_61_6();
  v1 = OUTLINED_FUNCTION_53_2();
  OUTLINED_FUNCTION_21(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v4);
  OUTLINED_FUNCTION_27_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v5 = OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_0_4(v5, xmmword_424FF0);
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

  OUTLINED_FUNCTION_16_6();
  v5[5].n128_u64[0] = v11;
  v5[5].n128_u64[1] = v12;
  OUTLINED_FUNCTION_67_8();
  dispatch thunk of CATWrapper.execute(catId:parameters:)();

  OUTLINED_FUNCTION_60_1();
}

void PhoneCallDisplayTextCATs.init(templateDir:options:globals:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_66();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v25 = v24;
  v26 = type metadata accessor for CATOption();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  __chkstk_darwin(v26);
  v30 = &a9 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = OUTLINED_FUNCTION_53_2();
  OUTLINED_FUNCTION_21(v31);
  v33 = *(v32 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v34);
  outlined init with copy of SpeakableString?(v25, &a9 - v35, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  (*(v27 + 16))(v30, v23, v26);
  CATWrapper.init(templateDir:options:globals:)();
  (*(v27 + 8))(v23, v26);
  outlined destroy of SpeakableString?(v25, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  OUTLINED_FUNCTION_65();
}

unint64_t lazy protocol witness table accessor for type PhoneCallDisplayTextCATs.Properties and conformance PhoneCallDisplayTextCATs.Properties()
{
  result = lazy protocol witness table cache variable for type PhoneCallDisplayTextCATs.Properties and conformance PhoneCallDisplayTextCATs.Properties;
  if (!lazy protocol witness table cache variable for type PhoneCallDisplayTextCATs.Properties and conformance PhoneCallDisplayTextCATs.Properties)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallDisplayTextCATs.Properties and conformance PhoneCallDisplayTextCATs.Properties);
  }

  return result;
}

uint64_t type metadata accessor for PhoneCallDisplayTextCATs()
{
  result = type metadata singleton initialization cache for PhoneCallDisplayTextCATs;
  if (!type metadata singleton initialization cache for PhoneCallDisplayTextCATs)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PhoneCallDisplayTextCATs.Properties(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xEB)
  {
    if (a2 + 21 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 21) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 22;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x16;
  v5 = v6 - 22;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for PhoneCallDisplayTextCATs.Properties(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 21 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 21) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xEB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xEA)
  {
    v6 = ((a2 - 235) >> 8) + 1;
    *result = a2 + 21;
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
          *result = a2 + 21;
        }

        break;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_40_15()
{

  return outlined init with copy of SpeakableString?(v1, v0, v2, v3);
}

uint64_t OUTLINED_FUNCTION_50_14()
{

  return outlined init with copy of SpeakableString?(v1, v0, v2, v3);
}

uint64_t OUTLINED_FUNCTION_77_7()
{

  return outlined init with copy of SpeakableString?(v1, v0, v2, v3);
}

PhoneCallFlowDelegatePlugin::PhoneCallDisplayTextCATsSimple::Properties_optional __swiftcall PhoneCallDisplayTextCATsSimple.Properties.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_38();
  _findStringSwitchCaseWithCache(cases:string:cache:)();
  OUTLINED_FUNCTION_33_2();
  if (v1 >= 0x16)
  {
    return 22;
  }

  else
  {
    return v1;
  }
}

unint64_t PhoneCallDisplayTextCATsSimple.Properties.rawValue.getter(char a1)
{
  result = 0xD000000000000028;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000020;
      break;
    case 2:
    case 12:
    case 14:
    case 20:
      result = 0xD000000000000023;
      break;
    case 3:
      result = 0xD000000000000025;
      break;
    case 4:
    case 17:
    case 19:
      result = 0xD000000000000022;
      break;
    case 5:
      result = 0xD00000000000001ELL;
      break;
    case 6:
    case 18:
      result = 0xD00000000000001FLL;
      break;
    case 7:
    case 8:
    case 11:
      result = 0xD000000000000027;
      break;
    case 9:
    case 13:
      result = 0xD000000000000026;
      break;
    case 10:
      result = 0xD00000000000002CLL;
      break;
    case 15:
      result = 0xD00000000000001CLL;
      break;
    case 16:
      result = 0xD00000000000002BLL;
      break;
    case 21:
      result = 0xD00000000000001BLL;
      break;
    default:
      return result;
  }

  return result;
}

PhoneCallFlowDelegatePlugin::PhoneCallDisplayTextCATsSimple::Properties_optional protocol witness for RawRepresentable.init(rawValue:) in conformance PhoneCallDisplayTextCATsSimple.Properties@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::PhoneCallDisplayTextCATsSimple::Properties_optional *a2@<X8>)
{
  result.value = PhoneCallDisplayTextCATsSimple.Properties.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance PhoneCallDisplayTextCATsSimple.Properties()
{
  v1 = OUTLINED_FUNCTION_40_2();
  result = PhoneCallDisplayTextCATsSimple.Properties.rawValue.getter(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t PhoneCallDisplayTextCATsSimple.addToCallButtonText()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_15_2(v0);
  *v1 = v2;
  v1[1] = AddCallParticipantCATPatternsExecutor.unsupportedParticipantsMultipleContactsUnsupported();
  OUTLINED_FUNCTION_32();
  v3 = OUTLINED_FUNCTION_36_1(40);

  return v4(v3);
}

BOOL PhoneCallDisplayTextCATsSimple.AddToCallButtonTextDialogIds.init(rawValue:)()
{
  OUTLINED_FUNCTION_38();
  v1._object = v0;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of PhoneCallDisplayTextCATsSimple.AddToCallButtonTextDialogIds.init(rawValue:), v1);
  OUTLINED_FUNCTION_33_2();
  return OUTLINED_FUNCTION_28_1();
}

BOOL protocol witness for RawRepresentable.init(rawValue:) in conformance PhoneCallDisplayTextCATsSimple.AddToCallButtonTextDialogIds@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = PhoneCallDisplayTextCATsSimple.AddToCallButtonTextDialogIds.init(rawValue:)();
  *a2 = result;
  return result;
}

uint64_t PhoneCallDisplayTextCATsSimple.addToCallButtonTextAsLabels()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  v1 = swift_task_alloc();
  OUTLINED_FUNCTION_24_6(v1);
  lazy protocol witness table accessor for type PhoneCallDisplayTextCATsSimple.AddToCallButtonTextDialogIds and conformance PhoneCallDisplayTextCATsSimple.AddToCallButtonTextDialogIds();
  OUTLINED_FUNCTION_9();
  *v0 = v2;
  v0[1] = AddCallParticipantCATPatternsExecutor.unsupportedParticipantsMultipleContactsUnsupported();
  OUTLINED_FUNCTION_19_4();
  v3 = OUTLINED_FUNCTION_26_20(40);

  return v4(v3);
}

unint64_t lazy protocol witness table accessor for type PhoneCallDisplayTextCATsSimple.AddToCallButtonTextDialogIds and conformance PhoneCallDisplayTextCATsSimple.AddToCallButtonTextDialogIds()
{
  result = lazy protocol witness table cache variable for type PhoneCallDisplayTextCATsSimple.AddToCallButtonTextDialogIds and conformance PhoneCallDisplayTextCATsSimple.AddToCallButtonTextDialogIds;
  if (!lazy protocol witness table cache variable for type PhoneCallDisplayTextCATsSimple.AddToCallButtonTextDialogIds and conformance PhoneCallDisplayTextCATsSimple.AddToCallButtonTextDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallDisplayTextCATsSimple.AddToCallButtonTextDialogIds and conformance PhoneCallDisplayTextCATsSimple.AddToCallButtonTextDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneCallDisplayTextCATsSimple.AddToCallButtonTextDialogIds and conformance PhoneCallDisplayTextCATsSimple.AddToCallButtonTextDialogIds;
  if (!lazy protocol witness table cache variable for type PhoneCallDisplayTextCATsSimple.AddToCallButtonTextDialogIds and conformance PhoneCallDisplayTextCATsSimple.AddToCallButtonTextDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallDisplayTextCATsSimple.AddToCallButtonTextDialogIds and conformance PhoneCallDisplayTextCATsSimple.AddToCallButtonTextDialogIds);
  }

  return result;
}

uint64_t PhoneCallDisplayTextCATsSimple.appSettings(appName:)()
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
  OUTLINED_FUNCTION_48_1(v4, v5, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v6 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_20(v6);
  if (v7)
  {
    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
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

  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v11 = swift_task_alloc();
  v12 = OUTLINED_FUNCTION_61_4(v11);
  *v12 = v13;
  OUTLINED_FUNCTION_19_2(v12);
  v14 = OUTLINED_FUNCTION_38_1(32);

  return v15(v14);
}

BOOL PhoneCallDisplayTextCATsSimple.AppSettingsDialogIds.init(rawValue:)()
{
  OUTLINED_FUNCTION_38();
  v1._object = v0;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of PhoneCallDisplayTextCATsSimple.AppSettingsDialogIds.init(rawValue:), v1);
  OUTLINED_FUNCTION_33_2();
  return OUTLINED_FUNCTION_28_1();
}

BOOL protocol witness for RawRepresentable.init(rawValue:) in conformance PhoneCallDisplayTextCATsSimple.AppSettingsDialogIds@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = PhoneCallDisplayTextCATsSimple.AppSettingsDialogIds.init(rawValue:)();
  *a2 = result;
  return result;
}

uint64_t PhoneCallDisplayTextCATsSimple.appSettingsAsLabels(appName:)()
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
  v17 = v2;
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_60_9();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_35_1();
  v4 = OUTLINED_FUNCTION_50_0(v3);
  v5 = OUTLINED_FUNCTION_0_4(v4, xmmword_424FD0);
  OUTLINED_FUNCTION_48_1(v5, v6, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v7 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_20(v7);
  if (v8)
  {
    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_35_2();
  }

  else
  {
    OUTLINED_FUNCTION_43_2();
    OUTLINED_FUNCTION_6_0();
    v10 = *(v9 + 32);
    OUTLINED_FUNCTION_16_0();
    v11();
  }

  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  v12 = swift_task_alloc();
  OUTLINED_FUNCTION_27_20(v12);
  lazy protocol witness table accessor for type PhoneCallDisplayTextCATsSimple.AppSettingsDialogIds and conformance PhoneCallDisplayTextCATsSimple.AppSettingsDialogIds();
  OUTLINED_FUNCTION_9();
  *v0 = v13;
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_19_4();
  v14 = OUTLINED_FUNCTION_29_9(32);

  return v15(v14);
}

unint64_t lazy protocol witness table accessor for type PhoneCallDisplayTextCATsSimple.AppSettingsDialogIds and conformance PhoneCallDisplayTextCATsSimple.AppSettingsDialogIds()
{
  result = lazy protocol witness table cache variable for type PhoneCallDisplayTextCATsSimple.AppSettingsDialogIds and conformance PhoneCallDisplayTextCATsSimple.AppSettingsDialogIds;
  if (!lazy protocol witness table cache variable for type PhoneCallDisplayTextCATsSimple.AppSettingsDialogIds and conformance PhoneCallDisplayTextCATsSimple.AppSettingsDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallDisplayTextCATsSimple.AppSettingsDialogIds and conformance PhoneCallDisplayTextCATsSimple.AppSettingsDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneCallDisplayTextCATsSimple.AppSettingsDialogIds and conformance PhoneCallDisplayTextCATsSimple.AppSettingsDialogIds;
  if (!lazy protocol witness table cache variable for type PhoneCallDisplayTextCATsSimple.AppSettingsDialogIds and conformance PhoneCallDisplayTextCATsSimple.AppSettingsDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallDisplayTextCATsSimple.AppSettingsDialogIds and conformance PhoneCallDisplayTextCATsSimple.AppSettingsDialogIds);
  }

  return result;
}

uint64_t PhoneCallDisplayTextCATsSimple.callButtonText(label:)()
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
  v18 = v1;
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_60_9();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v2 = OUTLINED_FUNCTION_35_1();
  *(OUTLINED_FUNCTION_50_0(v2) + 16) = xmmword_424FD0;
  OUTLINED_FUNCTION_5_59();
  *(v3 + 32) = v4;
  *(v3 + 40) = v5;
  OUTLINED_FUNCTION_48_1(v3, v6, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v7 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_20(v7);
  if (v8)
  {
    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_35_2();
  }

  else
  {
    OUTLINED_FUNCTION_43_2();
    OUTLINED_FUNCTION_6_0();
    v10 = *(v9 + 32);
    OUTLINED_FUNCTION_16_0();
    v11();
  }

  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v12 = swift_task_alloc();
  v13 = OUTLINED_FUNCTION_61_4(v12);
  *v13 = v14;
  OUTLINED_FUNCTION_19_2(v13);
  v15 = OUTLINED_FUNCTION_38_1(35);

  return v16(v15);
}

BOOL PhoneCallDisplayTextCATsSimple.CallButtonTextDialogIds.init(rawValue:)()
{
  OUTLINED_FUNCTION_38();
  v1._object = v0;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of PhoneCallDisplayTextCATsSimple.CallButtonTextDialogIds.init(rawValue:), v1);
  OUTLINED_FUNCTION_33_2();
  return OUTLINED_FUNCTION_28_1();
}

BOOL protocol witness for RawRepresentable.init(rawValue:) in conformance PhoneCallDisplayTextCATsSimple.CallButtonTextDialogIds@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = PhoneCallDisplayTextCATsSimple.CallButtonTextDialogIds.init(rawValue:)();
  *a2 = result;
  return result;
}

uint64_t PhoneCallDisplayTextCATsSimple.callButtonTextAsLabels(label:)()
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
  v19 = v2;
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_60_9();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_35_1();
  *(OUTLINED_FUNCTION_50_0(v3) + 16) = xmmword_424FD0;
  OUTLINED_FUNCTION_5_59();
  *(v4 + 32) = v5;
  *(v4 + 40) = v6;
  OUTLINED_FUNCTION_48_1(v4, v7, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v8 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_20(v8);
  if (v9)
  {
    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
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

  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  v18 = v13;
  v14 = swift_task_alloc();
  OUTLINED_FUNCTION_27_20(v14);
  lazy protocol witness table accessor for type PhoneCallDisplayTextCATsSimple.CallButtonTextDialogIds and conformance PhoneCallDisplayTextCATsSimple.CallButtonTextDialogIds();
  OUTLINED_FUNCTION_9();
  *v0 = v15;
  OUTLINED_FUNCTION_41();
  v16 = OUTLINED_FUNCTION_14_42();

  return v18(v16);
}

unint64_t lazy protocol witness table accessor for type PhoneCallDisplayTextCATsSimple.CallButtonTextDialogIds and conformance PhoneCallDisplayTextCATsSimple.CallButtonTextDialogIds()
{
  result = lazy protocol witness table cache variable for type PhoneCallDisplayTextCATsSimple.CallButtonTextDialogIds and conformance PhoneCallDisplayTextCATsSimple.CallButtonTextDialogIds;
  if (!lazy protocol witness table cache variable for type PhoneCallDisplayTextCATsSimple.CallButtonTextDialogIds and conformance PhoneCallDisplayTextCATsSimple.CallButtonTextDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallDisplayTextCATsSimple.CallButtonTextDialogIds and conformance PhoneCallDisplayTextCATsSimple.CallButtonTextDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneCallDisplayTextCATsSimple.CallButtonTextDialogIds and conformance PhoneCallDisplayTextCATsSimple.CallButtonTextDialogIds;
  if (!lazy protocol witness table cache variable for type PhoneCallDisplayTextCATsSimple.CallButtonTextDialogIds and conformance PhoneCallDisplayTextCATsSimple.CallButtonTextDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallDisplayTextCATsSimple.CallButtonTextDialogIds and conformance PhoneCallDisplayTextCATsSimple.CallButtonTextDialogIds);
  }

  return result;
}

uint64_t PhoneCallDisplayTextCATsSimple.cancelButtonText()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_15_2(v0);
  *v1 = v2;
  v1[1] = AddCallParticipantCATPatternsExecutor.unsupportedParticipantsMultipleContactsUnsupported();
  OUTLINED_FUNCTION_32();
  v3 = OUTLINED_FUNCTION_36_1(37);

  return v4(v3);
}

BOOL PhoneCallDisplayTextCATsSimple.CancelButtonTextDialogIds.init(rawValue:)()
{
  OUTLINED_FUNCTION_38();
  v1._object = v0;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of PhoneCallDisplayTextCATsSimple.CancelButtonTextDialogIds.init(rawValue:), v1);
  OUTLINED_FUNCTION_33_2();
  return OUTLINED_FUNCTION_28_1();
}

BOOL protocol witness for RawRepresentable.init(rawValue:) in conformance PhoneCallDisplayTextCATsSimple.CancelButtonTextDialogIds@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = PhoneCallDisplayTextCATsSimple.CancelButtonTextDialogIds.init(rawValue:)();
  *a2 = result;
  return result;
}

uint64_t PhoneCallDisplayTextCATsSimple.cancelButtonTextAsLabels()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  v1 = swift_task_alloc();
  OUTLINED_FUNCTION_24_6(v1);
  lazy protocol witness table accessor for type PhoneCallDisplayTextCATsSimple.CancelButtonTextDialogIds and conformance PhoneCallDisplayTextCATsSimple.CancelButtonTextDialogIds();
  OUTLINED_FUNCTION_9();
  *v0 = v2;
  v0[1] = AddCallParticipantCATPatternsExecutor.unsupportedParticipantsMultipleContactsUnsupported();
  OUTLINED_FUNCTION_19_4();
  v3 = OUTLINED_FUNCTION_26_20(37);

  return v4(v3);
}

unint64_t lazy protocol witness table accessor for type PhoneCallDisplayTextCATsSimple.CancelButtonTextDialogIds and conformance PhoneCallDisplayTextCATsSimple.CancelButtonTextDialogIds()
{
  result = lazy protocol witness table cache variable for type PhoneCallDisplayTextCATsSimple.CancelButtonTextDialogIds and conformance PhoneCallDisplayTextCATsSimple.CancelButtonTextDialogIds;
  if (!lazy protocol witness table cache variable for type PhoneCallDisplayTextCATsSimple.CancelButtonTextDialogIds and conformance PhoneCallDisplayTextCATsSimple.CancelButtonTextDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallDisplayTextCATsSimple.CancelButtonTextDialogIds and conformance PhoneCallDisplayTextCATsSimple.CancelButtonTextDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneCallDisplayTextCATsSimple.CancelButtonTextDialogIds and conformance PhoneCallDisplayTextCATsSimple.CancelButtonTextDialogIds;
  if (!lazy protocol witness table cache variable for type PhoneCallDisplayTextCATsSimple.CancelButtonTextDialogIds and conformance PhoneCallDisplayTextCATsSimple.CancelButtonTextDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallDisplayTextCATsSimple.CancelButtonTextDialogIds and conformance PhoneCallDisplayTextCATsSimple.CancelButtonTextDialogIds);
  }

  return result;
}

uint64_t PhoneCallDisplayTextCATsSimple.cancelledText()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_15_2(v0);
  *v1 = v2;
  v1[1] = AddCallParticipantCATPatternsExecutor.unsupportedParticipantsMultipleContactsUnsupported();
  OUTLINED_FUNCTION_32();
  v3 = OUTLINED_FUNCTION_36_1(34);

  return v4(v3);
}

BOOL PhoneCallDisplayTextCATsSimple.CancelledTextDialogIds.init(rawValue:)()
{
  OUTLINED_FUNCTION_38();
  v1._object = v0;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of PhoneCallDisplayTextCATsSimple.CancelledTextDialogIds.init(rawValue:), v1);
  OUTLINED_FUNCTION_33_2();
  return OUTLINED_FUNCTION_28_1();
}

BOOL protocol witness for RawRepresentable.init(rawValue:) in conformance PhoneCallDisplayTextCATsSimple.CancelledTextDialogIds@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = PhoneCallDisplayTextCATsSimple.CancelledTextDialogIds.init(rawValue:)();
  *a2 = result;
  return result;
}

uint64_t PhoneCallDisplayTextCATsSimple.cancelledTextAsLabels()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  v1 = swift_task_alloc();
  OUTLINED_FUNCTION_24_6(v1);
  lazy protocol witness table accessor for type PhoneCallDisplayTextCATsSimple.CancelledTextDialogIds and conformance PhoneCallDisplayTextCATsSimple.CancelledTextDialogIds();
  OUTLINED_FUNCTION_9();
  *v0 = v2;
  v0[1] = AddCallParticipantCATPatternsExecutor.unsupportedParticipantsMultipleContactsUnsupported();
  OUTLINED_FUNCTION_19_4();
  v3 = OUTLINED_FUNCTION_26_20(34);

  return v4(v3);
}

unint64_t lazy protocol witness table accessor for type PhoneCallDisplayTextCATsSimple.CancelledTextDialogIds and conformance PhoneCallDisplayTextCATsSimple.CancelledTextDialogIds()
{
  result = lazy protocol witness table cache variable for type PhoneCallDisplayTextCATsSimple.CancelledTextDialogIds and conformance PhoneCallDisplayTextCATsSimple.CancelledTextDialogIds;
  if (!lazy protocol witness table cache variable for type PhoneCallDisplayTextCATsSimple.CancelledTextDialogIds and conformance PhoneCallDisplayTextCATsSimple.CancelledTextDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallDisplayTextCATsSimple.CancelledTextDialogIds and conformance PhoneCallDisplayTextCATsSimple.CancelledTextDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneCallDisplayTextCATsSimple.CancelledTextDialogIds and conformance PhoneCallDisplayTextCATsSimple.CancelledTextDialogIds;
  if (!lazy protocol witness table cache variable for type PhoneCallDisplayTextCATsSimple.CancelledTextDialogIds and conformance PhoneCallDisplayTextCATsSimple.CancelledTextDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallDisplayTextCATsSimple.CancelledTextDialogIds and conformance PhoneCallDisplayTextCATsSimple.CancelledTextDialogIds);
  }

  return result;
}

uint64_t PhoneCallDisplayTextCATsSimple.changeApp()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_15_2(v0);
  *v1 = v2;
  v1[1] = AddCallParticipantCATPatternsExecutor.unsupportedParticipantsMultipleContactsUnsupported();
  OUTLINED_FUNCTION_32();
  v3 = OUTLINED_FUNCTION_36_1(30);

  return v4(v3);
}

BOOL PhoneCallDisplayTextCATsSimple.ChangeAppDialogIds.init(rawValue:)()
{
  OUTLINED_FUNCTION_38();
  v1._object = v0;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of PhoneCallDisplayTextCATsSimple.ChangeAppDialogIds.init(rawValue:), v1);
  OUTLINED_FUNCTION_33_2();
  return OUTLINED_FUNCTION_28_1();
}

BOOL protocol witness for RawRepresentable.init(rawValue:) in conformance PhoneCallDisplayTextCATsSimple.ChangeAppDialogIds@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = PhoneCallDisplayTextCATsSimple.ChangeAppDialogIds.init(rawValue:)();
  *a2 = result;
  return result;
}

uint64_t PhoneCallDisplayTextCATsSimple.changeAppAsLabels()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  v1 = swift_task_alloc();
  OUTLINED_FUNCTION_24_6(v1);
  lazy protocol witness table accessor for type PhoneCallDisplayTextCATsSimple.ChangeAppDialogIds and conformance PhoneCallDisplayTextCATsSimple.ChangeAppDialogIds();
  OUTLINED_FUNCTION_9();
  *v0 = v2;
  v0[1] = AddCallParticipantCATPatternsExecutor.unsupportedParticipantsMultipleContactsUnsupported();
  OUTLINED_FUNCTION_19_4();
  v3 = OUTLINED_FUNCTION_26_20(30);

  return v4(v3);
}

unint64_t lazy protocol witness table accessor for type PhoneCallDisplayTextCATsSimple.ChangeAppDialogIds and conformance PhoneCallDisplayTextCATsSimple.ChangeAppDialogIds()
{
  result = lazy protocol witness table cache variable for type PhoneCallDisplayTextCATsSimple.ChangeAppDialogIds and conformance PhoneCallDisplayTextCATsSimple.ChangeAppDialogIds;
  if (!lazy protocol witness table cache variable for type PhoneCallDisplayTextCATsSimple.ChangeAppDialogIds and conformance PhoneCallDisplayTextCATsSimple.ChangeAppDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallDisplayTextCATsSimple.ChangeAppDialogIds and conformance PhoneCallDisplayTextCATsSimple.ChangeAppDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneCallDisplayTextCATsSimple.ChangeAppDialogIds and conformance PhoneCallDisplayTextCATsSimple.ChangeAppDialogIds;
  if (!lazy protocol witness table cache variable for type PhoneCallDisplayTextCATsSimple.ChangeAppDialogIds and conformance PhoneCallDisplayTextCATsSimple.ChangeAppDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallDisplayTextCATsSimple.ChangeAppDialogIds and conformance PhoneCallDisplayTextCATsSimple.ChangeAppDialogIds);
  }

  return result;
}

uint64_t PhoneCallDisplayTextCATsSimple.changeText()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_15_2(v0);
  *v1 = v2;
  v1[1] = AddCallParticipantCATPatternsExecutor.unsupportedParticipantsMultipleContactsUnsupported();
  OUTLINED_FUNCTION_32();
  v3 = OUTLINED_FUNCTION_36_1(31);

  return v4(v3);
}

BOOL PhoneCallDisplayTextCATsSimple.ChangeTextDialogIds.init(rawValue:)()
{
  OUTLINED_FUNCTION_38();
  v1._object = v0;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of PhoneCallDisplayTextCATsSimple.ChangeTextDialogIds.init(rawValue:), v1);
  OUTLINED_FUNCTION_33_2();
  return OUTLINED_FUNCTION_28_1();
}

BOOL protocol witness for RawRepresentable.init(rawValue:) in conformance PhoneCallDisplayTextCATsSimple.ChangeTextDialogIds@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = PhoneCallDisplayTextCATsSimple.ChangeTextDialogIds.init(rawValue:)();
  *a2 = result;
  return result;
}

uint64_t PhoneCallDisplayTextCATsSimple.changeTextAsLabels()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  v1 = swift_task_alloc();
  OUTLINED_FUNCTION_24_6(v1);
  lazy protocol witness table accessor for type PhoneCallDisplayTextCATsSimple.ChangeTextDialogIds and conformance PhoneCallDisplayTextCATsSimple.ChangeTextDialogIds();
  OUTLINED_FUNCTION_9();
  *v0 = v2;
  v0[1] = AddCallParticipantCATPatternsExecutor.unsupportedParticipantsMultipleContactsUnsupported();
  OUTLINED_FUNCTION_19_4();
  v3 = OUTLINED_FUNCTION_26_20(31);

  return v4(v3);
}

unint64_t lazy protocol witness table accessor for type PhoneCallDisplayTextCATsSimple.ChangeTextDialogIds and conformance PhoneCallDisplayTextCATsSimple.ChangeTextDialogIds()
{
  result = lazy protocol witness table cache variable for type PhoneCallDisplayTextCATsSimple.ChangeTextDialogIds and conformance PhoneCallDisplayTextCATsSimple.ChangeTextDialogIds;
  if (!lazy protocol witness table cache variable for type PhoneCallDisplayTextCATsSimple.ChangeTextDialogIds and conformance PhoneCallDisplayTextCATsSimple.ChangeTextDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallDisplayTextCATsSimple.ChangeTextDialogIds and conformance PhoneCallDisplayTextCATsSimple.ChangeTextDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneCallDisplayTextCATsSimple.ChangeTextDialogIds and conformance PhoneCallDisplayTextCATsSimple.ChangeTextDialogIds;
  if (!lazy protocol witness table cache variable for type PhoneCallDisplayTextCATsSimple.ChangeTextDialogIds and conformance PhoneCallDisplayTextCATsSimple.ChangeTextDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallDisplayTextCATsSimple.ChangeTextDialogIds and conformance PhoneCallDisplayTextCATsSimple.ChangeTextDialogIds);
  }

  return result;
}

uint64_t PhoneCallDisplayTextCATsSimple.contactComposition()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_15_2(v0);
  *v1 = v2;
  v1[1] = AddCallParticipantCATPatternsExecutor.unsupportedParticipantsMultipleContactsUnsupported();
  OUTLINED_FUNCTION_32();
  v3 = OUTLINED_FUNCTION_36_1(39);

  return v4(v3);
}

PhoneCallFlowDelegatePlugin::PhoneCallDisplayTextCATsSimple::ContactCompositionDialogIds_optional __swiftcall PhoneCallDisplayTextCATsSimple.ContactCompositionDialogIds.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_38();
  v3._object = v1;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of PhoneCallDisplayTextCATsSimple.ContactCompositionDialogIds.init(rawValue:), v3);
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

uint64_t PhoneCallDisplayTextCATsSimple.ContactCompositionDialogIds.rawValue.getter(char a1)
{
  if (!a1)
  {
    return 0x546563614677656ELL;
  }

  if (a1 == 1)
  {
    return 28532;
  }

  return 0x6F68576F74;
}

PhoneCallFlowDelegatePlugin::PhoneCallDisplayTextCATsSimple::ContactCompositionDialogIds_optional protocol witness for RawRepresentable.init(rawValue:) in conformance PhoneCallDisplayTextCATsSimple.ContactCompositionDialogIds@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::PhoneCallDisplayTextCATsSimple::ContactCompositionDialogIds_optional *a2@<X8>)
{
  result.value = PhoneCallDisplayTextCATsSimple.ContactCompositionDialogIds.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance PhoneCallDisplayTextCATsSimple.ContactCompositionDialogIds()
{
  v1 = OUTLINED_FUNCTION_40_2();
  result = PhoneCallDisplayTextCATsSimple.ContactCompositionDialogIds.rawValue.getter(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t PhoneCallDisplayTextCATsSimple.contactCompositionAsLabels()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  v1 = swift_task_alloc();
  OUTLINED_FUNCTION_24_6(v1);
  lazy protocol witness table accessor for type PhoneCallDisplayTextCATsSimple.ContactCompositionDialogIds and conformance PhoneCallDisplayTextCATsSimple.ContactCompositionDialogIds();
  OUTLINED_FUNCTION_9();
  *v0 = v2;
  v0[1] = AddCallParticipantCATPatternsExecutor.unsupportedParticipantsMultipleContactsUnsupported();
  OUTLINED_FUNCTION_19_4();
  v3 = OUTLINED_FUNCTION_26_20(39);

  return v4(v3);
}

unint64_t lazy protocol witness table accessor for type PhoneCallDisplayTextCATsSimple.ContactCompositionDialogIds and conformance PhoneCallDisplayTextCATsSimple.ContactCompositionDialogIds()
{
  result = lazy protocol witness table cache variable for type PhoneCallDisplayTextCATsSimple.ContactCompositionDialogIds and conformance PhoneCallDisplayTextCATsSimple.ContactCompositionDialogIds;
  if (!lazy protocol witness table cache variable for type PhoneCallDisplayTextCATsSimple.ContactCompositionDialogIds and conformance PhoneCallDisplayTextCATsSimple.ContactCompositionDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallDisplayTextCATsSimple.ContactCompositionDialogIds and conformance PhoneCallDisplayTextCATsSimple.ContactCompositionDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneCallDisplayTextCATsSimple.ContactCompositionDialogIds and conformance PhoneCallDisplayTextCATsSimple.ContactCompositionDialogIds;
  if (!lazy protocol witness table cache variable for type PhoneCallDisplayTextCATsSimple.ContactCompositionDialogIds and conformance PhoneCallDisplayTextCATsSimple.ContactCompositionDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallDisplayTextCATsSimple.ContactCompositionDialogIds and conformance PhoneCallDisplayTextCATsSimple.ContactCompositionDialogIds);
  }

  return result;
}

uint64_t PhoneCallDisplayTextCATsSimple.emergencySashTitle()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_15_2(v0);
  *v1 = v2;
  v1[1] = AddCallParticipantCATPatternsExecutor.unsupportedParticipantsMultipleContactsUnsupported();
  OUTLINED_FUNCTION_32();
  v3 = OUTLINED_FUNCTION_36_1(39);

  return v4(v3);
}

BOOL PhoneCallDisplayTextCATsSimple.EmergencySashTitleDialogIds.init(rawValue:)()
{
  OUTLINED_FUNCTION_38();
  v1._object = v0;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of PhoneCallDisplayTextCATsSimple.EmergencySashTitleDialogIds.init(rawValue:), v1);
  OUTLINED_FUNCTION_33_2();
  return OUTLINED_FUNCTION_28_1();
}

BOOL protocol witness for RawRepresentable.init(rawValue:) in conformance PhoneCallDisplayTextCATsSimple.EmergencySashTitleDialogIds@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = PhoneCallDisplayTextCATsSimple.EmergencySashTitleDialogIds.init(rawValue:)();
  *a2 = result;
  return result;
}

uint64_t PhoneCallDisplayTextCATsSimple.emergencySashTitleAsLabels()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  v1 = swift_task_alloc();
  OUTLINED_FUNCTION_24_6(v1);
  lazy protocol witness table accessor for type PhoneCallDisplayTextCATsSimple.EmergencySashTitleDialogIds and conformance PhoneCallDisplayTextCATsSimple.EmergencySashTitleDialogIds();
  OUTLINED_FUNCTION_9();
  *v0 = v2;
  v0[1] = AddCallParticipantCATPatternsExecutor.unsupportedParticipantsMultipleContactsUnsupported();
  OUTLINED_FUNCTION_19_4();
  v3 = OUTLINED_FUNCTION_26_20(39);

  return v4(v3);
}

unint64_t lazy protocol witness table accessor for type PhoneCallDisplayTextCATsSimple.EmergencySashTitleDialogIds and conformance PhoneCallDisplayTextCATsSimple.EmergencySashTitleDialogIds()
{
  result = lazy protocol witness table cache variable for type PhoneCallDisplayTextCATsSimple.EmergencySashTitleDialogIds and conformance PhoneCallDisplayTextCATsSimple.EmergencySashTitleDialogIds;
  if (!lazy protocol witness table cache variable for type PhoneCallDisplayTextCATsSimple.EmergencySashTitleDialogIds and conformance PhoneCallDisplayTextCATsSimple.EmergencySashTitleDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallDisplayTextCATsSimple.EmergencySashTitleDialogIds and conformance PhoneCallDisplayTextCATsSimple.EmergencySashTitleDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneCallDisplayTextCATsSimple.EmergencySashTitleDialogIds and conformance PhoneCallDisplayTextCATsSimple.EmergencySashTitleDialogIds;
  if (!lazy protocol witness table cache variable for type PhoneCallDisplayTextCATsSimple.EmergencySashTitleDialogIds and conformance PhoneCallDisplayTextCATsSimple.EmergencySashTitleDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallDisplayTextCATsSimple.EmergencySashTitleDialogIds and conformance PhoneCallDisplayTextCATsSimple.EmergencySashTitleDialogIds);
  }

  return result;
}

uint64_t PhoneCallDisplayTextCATsSimple.emergencyServices()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_15_2(v0);
  *v1 = v2;
  v1[1] = AddCallParticipantCATPatternsExecutor.unsupportedParticipantsMultipleContactsUnsupported();
  OUTLINED_FUNCTION_32();
  v3 = OUTLINED_FUNCTION_36_1(38);

  return v4(v3);
}

BOOL PhoneCallDisplayTextCATsSimple.EmergencyServicesDialogIds.init(rawValue:)()
{
  OUTLINED_FUNCTION_38();
  v1._object = v0;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of PhoneCallDisplayTextCATsSimple.EmergencyServicesDialogIds.init(rawValue:), v1);
  OUTLINED_FUNCTION_33_2();
  return OUTLINED_FUNCTION_28_1();
}

BOOL protocol witness for RawRepresentable.init(rawValue:) in conformance PhoneCallDisplayTextCATsSimple.EmergencyServicesDialogIds@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = PhoneCallDisplayTextCATsSimple.EmergencyServicesDialogIds.init(rawValue:)();
  *a2 = result;
  return result;
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance PhoneCallDisplayTextCATsSimple.EmergencyServicesDialogIds@<X0>(void *a1@<X8>)
{
  result = PhoneCallDisplayTextCATsSimple.EmergencyServicesDialogIds.rawValue.getter();
  *a1 = 0xD000000000000011;
  a1[1] = v3;
  return result;
}

uint64_t PhoneCallDisplayTextCATsSimple.emergencyServicesAsLabels()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  v1 = swift_task_alloc();
  OUTLINED_FUNCTION_24_6(v1);
  lazy protocol witness table accessor for type PhoneCallDisplayTextCATsSimple.EmergencyServicesDialogIds and conformance PhoneCallDisplayTextCATsSimple.EmergencyServicesDialogIds();
  OUTLINED_FUNCTION_9();
  *v0 = v2;
  v0[1] = AddCallParticipantCATPatternsExecutor.unsupportedParticipantsMultipleContactsUnsupported();
  OUTLINED_FUNCTION_19_4();
  v3 = OUTLINED_FUNCTION_26_20(38);

  return v4(v3);
}

unint64_t lazy protocol witness table accessor for type PhoneCallDisplayTextCATsSimple.EmergencyServicesDialogIds and conformance PhoneCallDisplayTextCATsSimple.EmergencyServicesDialogIds()
{
  result = lazy protocol witness table cache variable for type PhoneCallDisplayTextCATsSimple.EmergencyServicesDialogIds and conformance PhoneCallDisplayTextCATsSimple.EmergencyServicesDialogIds;
  if (!lazy protocol witness table cache variable for type PhoneCallDisplayTextCATsSimple.EmergencyServicesDialogIds and conformance PhoneCallDisplayTextCATsSimple.EmergencyServicesDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallDisplayTextCATsSimple.EmergencyServicesDialogIds and conformance PhoneCallDisplayTextCATsSimple.EmergencyServicesDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneCallDisplayTextCATsSimple.EmergencyServicesDialogIds and conformance PhoneCallDisplayTextCATsSimple.EmergencyServicesDialogIds;
  if (!lazy protocol witness table cache variable for type PhoneCallDisplayTextCATsSimple.EmergencyServicesDialogIds and conformance PhoneCallDisplayTextCATsSimple.EmergencyServicesDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallDisplayTextCATsSimple.EmergencyServicesDialogIds and conformance PhoneCallDisplayTextCATsSimple.EmergencyServicesDialogIds);
  }

  return result;
}

uint64_t PhoneCallDisplayTextCATsSimple.emergencyServicesPrompt()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_15_2(v0);
  *v1 = v2;
  v1[1] = AddCallParticipantCATPatternsExecutor.unsupportedParticipantsMultipleContactsUnsupported();
  OUTLINED_FUNCTION_32();
  v3 = OUTLINED_FUNCTION_36_1(44);

  return v4(v3);
}

BOOL PhoneCallDisplayTextCATsSimple.EmergencyServicesPromptDialogIds.init(rawValue:)()
{
  OUTLINED_FUNCTION_38();
  v1._object = v0;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of PhoneCallDisplayTextCATsSimple.EmergencyServicesPromptDialogIds.init(rawValue:), v1);
  OUTLINED_FUNCTION_33_2();
  return OUTLINED_FUNCTION_28_1();
}

BOOL protocol witness for RawRepresentable.init(rawValue:) in conformance PhoneCallDisplayTextCATsSimple.EmergencyServicesPromptDialogIds@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = PhoneCallDisplayTextCATsSimple.EmergencyServicesPromptDialogIds.init(rawValue:)();
  *a2 = result;
  return result;
}

uint64_t PhoneCallDisplayTextCATsSimple.emergencyServicesPromptAsLabels()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  v1 = swift_task_alloc();
  OUTLINED_FUNCTION_24_6(v1);
  lazy protocol witness table accessor for type PhoneCallDisplayTextCATsSimple.EmergencyServicesPromptDialogIds and conformance PhoneCallDisplayTextCATsSimple.EmergencyServicesPromptDialogIds();
  OUTLINED_FUNCTION_9();
  *v0 = v2;
  v0[1] = AddCallParticipantCATPatternsExecutor.unsupportedParticipantsMultipleContactsUnsupported();
  OUTLINED_FUNCTION_19_4();
  v3 = OUTLINED_FUNCTION_26_20(44);

  return v4(v3);
}

unint64_t lazy protocol witness table accessor for type PhoneCallDisplayTextCATsSimple.EmergencyServicesPromptDialogIds and conformance PhoneCallDisplayTextCATsSimple.EmergencyServicesPromptDialogIds()
{
  result = lazy protocol witness table cache variable for type PhoneCallDisplayTextCATsSimple.EmergencyServicesPromptDialogIds and conformance PhoneCallDisplayTextCATsSimple.EmergencyServicesPromptDialogIds;
  if (!lazy protocol witness table cache variable for type PhoneCallDisplayTextCATsSimple.EmergencyServicesPromptDialogIds and conformance PhoneCallDisplayTextCATsSimple.EmergencyServicesPromptDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallDisplayTextCATsSimple.EmergencyServicesPromptDialogIds and conformance PhoneCallDisplayTextCATsSimple.EmergencyServicesPromptDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneCallDisplayTextCATsSimple.EmergencyServicesPromptDialogIds and conformance PhoneCallDisplayTextCATsSimple.EmergencyServicesPromptDialogIds;
  if (!lazy protocol witness table cache variable for type PhoneCallDisplayTextCATsSimple.EmergencyServicesPromptDialogIds and conformance PhoneCallDisplayTextCATsSimple.EmergencyServicesPromptDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallDisplayTextCATsSimple.EmergencyServicesPromptDialogIds and conformance PhoneCallDisplayTextCATsSimple.EmergencyServicesPromptDialogIds);
  }

  return result;
}

uint64_t PhoneCallDisplayTextCATsSimple.handleLabelAndType(personHandleLabel:label:type:)()
{
  OUTLINED_FUNCTION_15();
  v1[4] = v2;
  v1[5] = v0;
  v1[2] = v3;
  v1[3] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v5);
  v7 = *(v6 + 64) + 15;
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v8, v9, v10);
}

{
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_58_8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = swift_allocObject();
  v1[9] = v3;
  *(v3 + 16) = xmmword_426980;
  *(v3 + 32) = v2;
  *(v3 + 40) = 0x800000000045E060;
  OUTLINED_FUNCTION_48_1(v3, v4, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v5 = type metadata accessor for SpeakableString();
  if (OUTLINED_FUNCTION_58(v5) == 1)
  {
    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v1[8], &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_35_2();
  }

  else
  {
    OUTLINED_FUNCTION_43_2();
    OUTLINED_FUNCTION_6_0();
    v7 = *(v6 + 32);
    OUTLINED_FUNCTION_16_0();
    v8();
  }

  v9 = v1[7];
  v10 = v1[3];
  OUTLINED_FUNCTION_5_59();
  *(v3 + 80) = v11;
  *(v3 + 88) = v12;
  outlined init with copy of PhoneCallNLIntent?(v13, v9, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v14 = OUTLINED_FUNCTION_15_4();
  v15 = v1[7];
  if (v14 == 1)
  {
    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v1[7], &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v3 + 96) = 0u;
    *(v3 + 112) = 0u;
  }

  else
  {
    *(v3 + 120) = v0;
    __swift_allocate_boxed_opaque_existential_1((v3 + 96));
    OUTLINED_FUNCTION_6_0();
    v17 = *(v16 + 32);
    OUTLINED_FUNCTION_16_0();
    v18();
  }

  v19 = OUTLINED_FUNCTION_41_18();
  outlined init with copy of PhoneCallNLIntent?(v19, v15, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  if (OUTLINED_FUNCTION_15_4() == 1)
  {
    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v1[6], &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v3 + 144) = 0u;
    *(v3 + 160) = 0u;
  }

  else
  {
    *(v3 + 168) = v0;
    __swift_allocate_boxed_opaque_existential_1((v3 + 144));
    OUTLINED_FUNCTION_6_0();
    v21 = *(v20 + 32);
    OUTLINED_FUNCTION_16_0();
    v22();
  }

  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v27 = v23;
  v24 = swift_task_alloc();
  v1[10] = v24;
  *v24 = v1;
  v24[1] = PhoneCallDisplayTextCATsSimple.handleLabelAndType(personHandleLabel:label:type:);
  v25 = v1[5];

  return v27(v2 + 22, 0x8000000000453100, v3);
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_4();
  v3 = v2;
  OUTLINED_FUNCTION_6();
  *v4 = v3;
  v6 = *(v5 + 80);
  v7 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v8 = v7;
  v3[11] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_66_0();

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {
    v13 = v3[8];
    v12 = v3[9];
    v16 = v3 + 6;
    v14 = v3[6];
    v15 = v16[1];

    v17 = OUTLINED_FUNCTION_49();

    return v18(v17);
  }
}

{
  OUTLINED_FUNCTION_27();
  v2 = v0[8];
  v1 = v0[9];
  v4 = v0[6];
  v3 = v0[7];

  v5 = v0[1];
  v6 = v0[11];

  return v5();
}

PhoneCallFlowDelegatePlugin::PhoneCallDisplayTextCATsSimple::HandleLabelAndTypeDialogIds_optional __swiftcall PhoneCallDisplayTextCATsSimple.HandleLabelAndTypeDialogIds.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_38();
  v3._object = v1;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of PhoneCallDisplayTextCATsSimple.HandleLabelAndTypeDialogIds.init(rawValue:), v3);
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

PhoneCallFlowDelegatePlugin::PhoneCallDisplayTextCATsSimple::HandleLabelAndTypeDialogIds_optional protocol witness for RawRepresentable.init(rawValue:) in conformance PhoneCallDisplayTextCATsSimple.HandleLabelAndTypeDialogIds@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::PhoneCallDisplayTextCATsSimple::HandleLabelAndTypeDialogIds_optional *a2@<X8>)
{
  result.value = PhoneCallDisplayTextCATsSimple.HandleLabelAndTypeDialogIds.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance PhoneCallDisplayTextCATsSimple.HandleLabelAndTypeDialogIds()
{
  OUTLINED_FUNCTION_40_2();
  result = PhoneCallDisplayTextCATsSimple.HandleLabelAndTypeDialogIds.rawValue.getter();
  *v0 = 0x2331686374697773;
  v0[1] = v2;
  return result;
}

uint64_t PhoneCallDisplayTextCATsSimple.handleLabelAndTypeAsLabels(personHandleLabel:label:type:)()
{
  OUTLINED_FUNCTION_15();
  v1[4] = v2;
  v1[5] = v0;
  v1[2] = v3;
  v1[3] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v5);
  v7 = *(v6 + 64) + 15;
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v8, v9, v10);
}

{
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_58_8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = swift_allocObject();
  v1[9] = v3;
  *(v3 + 16) = xmmword_426980;
  *(v3 + 32) = v2;
  *(v3 + 40) = 0x800000000045E060;
  OUTLINED_FUNCTION_48_1(v3, v4, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v5 = type metadata accessor for SpeakableString();
  if (OUTLINED_FUNCTION_58(v5) == 1)
  {
    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v1[8], &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_35_2();
  }

  else
  {
    OUTLINED_FUNCTION_43_2();
    OUTLINED_FUNCTION_6_0();
    v7 = *(v6 + 32);
    OUTLINED_FUNCTION_16_0();
    v8();
  }

  v9 = v1[7];
  v10 = v1[3];
  OUTLINED_FUNCTION_5_59();
  *(v3 + 80) = v11;
  *(v3 + 88) = v12;
  outlined init with copy of PhoneCallNLIntent?(v13, v9, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v14 = OUTLINED_FUNCTION_15_4();
  v15 = v1[7];
  if (v14 == 1)
  {
    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v1[7], &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v3 + 96) = 0u;
    *(v3 + 112) = 0u;
  }

  else
  {
    *(v3 + 120) = v0;
    __swift_allocate_boxed_opaque_existential_1((v3 + 96));
    OUTLINED_FUNCTION_6_0();
    v17 = *(v16 + 32);
    OUTLINED_FUNCTION_16_0();
    v18();
  }

  v19 = OUTLINED_FUNCTION_41_18();
  outlined init with copy of PhoneCallNLIntent?(v19, v15, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  if (OUTLINED_FUNCTION_15_4() == 1)
  {
    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v1[6], &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v3 + 144) = 0u;
    *(v3 + 160) = 0u;
  }

  else
  {
    *(v3 + 168) = v0;
    __swift_allocate_boxed_opaque_existential_1((v3 + 144));
    OUTLINED_FUNCTION_6_0();
    v21 = *(v20 + 32);
    OUTLINED_FUNCTION_16_0();
    v22();
  }

  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  v28 = v23;
  v24 = swift_task_alloc();
  v1[10] = v24;
  lazy protocol witness table accessor for type PhoneCallDisplayTextCATsSimple.HandleLabelAndTypeDialogIds and conformance PhoneCallDisplayTextCATsSimple.HandleLabelAndTypeDialogIds();
  OUTLINED_FUNCTION_9();
  *v24 = v25;
  v24[1] = PhoneCallDisplayTextCATsSimple.handleLabelAndTypeAsLabels(personHandleLabel:label:type:);
  v26 = v1[5];
  OUTLINED_FUNCTION_19_4();

  return v28();
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_4();
  v3 = v2;
  OUTLINED_FUNCTION_6();
  *v4 = v3;
  v6 = *(v5 + 80);
  v7 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v8 = v7;
  v3[11] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_66_0();

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {
    v13 = v3[8];
    v12 = v3[9];
    v16 = v3 + 6;
    v14 = v3[6];
    v15 = v16[1];

    v17 = OUTLINED_FUNCTION_49();

    return v18(v17);
  }
}

unint64_t lazy protocol witness table accessor for type PhoneCallDisplayTextCATsSimple.HandleLabelAndTypeDialogIds and conformance PhoneCallDisplayTextCATsSimple.HandleLabelAndTypeDialogIds()
{
  result = lazy protocol witness table cache variable for type PhoneCallDisplayTextCATsSimple.HandleLabelAndTypeDialogIds and conformance PhoneCallDisplayTextCATsSimple.HandleLabelAndTypeDialogIds;
  if (!lazy protocol witness table cache variable for type PhoneCallDisplayTextCATsSimple.HandleLabelAndTypeDialogIds and conformance PhoneCallDisplayTextCATsSimple.HandleLabelAndTypeDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallDisplayTextCATsSimple.HandleLabelAndTypeDialogIds and conformance PhoneCallDisplayTextCATsSimple.HandleLabelAndTypeDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneCallDisplayTextCATsSimple.HandleLabelAndTypeDialogIds and conformance PhoneCallDisplayTextCATsSimple.HandleLabelAndTypeDialogIds;
  if (!lazy protocol witness table cache variable for type PhoneCallDisplayTextCATsSimple.HandleLabelAndTypeDialogIds and conformance PhoneCallDisplayTextCATsSimple.HandleLabelAndTypeDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallDisplayTextCATsSimple.HandleLabelAndTypeDialogIds and conformance PhoneCallDisplayTextCATsSimple.HandleLabelAndTypeDialogIds);
  }

  return result;
}

uint64_t PhoneCallDisplayTextCATsSimple.joinButtonText()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v6 = v0;
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_15_2(v1);
  *v2 = v3;
  v2[1] = AddCallParticipantCATPatternsExecutor.unsupportedNoActiveCall();
  v4 = OUTLINED_FUNCTION_28_6();

  return v6(v4);
}

BOOL PhoneCallDisplayTextCATsSimple.JoinButtonTextDialogIds.init(rawValue:)()
{
  OUTLINED_FUNCTION_38();
  v1._object = v0;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of PhoneCallDisplayTextCATsSimple.JoinButtonTextDialogIds.init(rawValue:), v1);
  OUTLINED_FUNCTION_33_2();
  return OUTLINED_FUNCTION_28_1();
}

BOOL protocol witness for RawRepresentable.init(rawValue:) in conformance PhoneCallDisplayTextCATsSimple.JoinButtonTextDialogIds@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = PhoneCallDisplayTextCATsSimple.JoinButtonTextDialogIds.init(rawValue:)();
  *a2 = result;
  return result;
}

uint64_t PhoneCallDisplayTextCATsSimple.joinButtonTextAsLabels()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  v6 = v1;
  v2 = swift_task_alloc();
  OUTLINED_FUNCTION_24_6(v2);
  lazy protocol witness table accessor for type PhoneCallDisplayTextCATsSimple.JoinButtonTextDialogIds and conformance PhoneCallDisplayTextCATsSimple.JoinButtonTextDialogIds();
  OUTLINED_FUNCTION_9();
  *v0 = v3;
  v0[1] = AddCallParticipantCATPatternsExecutor.unsupportedParticipantsMultipleContactsUnsupported();
  v4 = OUTLINED_FUNCTION_14_42();

  return v6(v4);
}

unint64_t lazy protocol witness table accessor for type PhoneCallDisplayTextCATsSimple.JoinButtonTextDialogIds and conformance PhoneCallDisplayTextCATsSimple.JoinButtonTextDialogIds()
{
  result = lazy protocol witness table cache variable for type PhoneCallDisplayTextCATsSimple.JoinButtonTextDialogIds and conformance PhoneCallDisplayTextCATsSimple.JoinButtonTextDialogIds;
  if (!lazy protocol witness table cache variable for type PhoneCallDisplayTextCATsSimple.JoinButtonTextDialogIds and conformance PhoneCallDisplayTextCATsSimple.JoinButtonTextDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallDisplayTextCATsSimple.JoinButtonTextDialogIds and conformance PhoneCallDisplayTextCATsSimple.JoinButtonTextDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneCallDisplayTextCATsSimple.JoinButtonTextDialogIds and conformance PhoneCallDisplayTextCATsSimple.JoinButtonTextDialogIds;
  if (!lazy protocol witness table cache variable for type PhoneCallDisplayTextCATsSimple.JoinButtonTextDialogIds and conformance PhoneCallDisplayTextCATsSimple.JoinButtonTextDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallDisplayTextCATsSimple.JoinButtonTextDialogIds and conformance PhoneCallDisplayTextCATsSimple.JoinButtonTextDialogIds);
  }

  return result;
}

uint64_t PhoneCallDisplayTextCATsSimple.newCallButtonText()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_15_2(v0);
  *v1 = v2;
  v1[1] = AddCallParticipantCATPatternsExecutor.unsupportedParticipantsMultipleContactsUnsupported();
  OUTLINED_FUNCTION_32();
  v3 = OUTLINED_FUNCTION_36_1(38);

  return v4(v3);
}

BOOL PhoneCallDisplayTextCATsSimple.NewCallButtonTextDialogIds.init(rawValue:)()
{
  OUTLINED_FUNCTION_38();
  v1._object = v0;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of PhoneCallDisplayTextCATsSimple.NewCallButtonTextDialogIds.init(rawValue:), v1);
  OUTLINED_FUNCTION_33_2();
  return OUTLINED_FUNCTION_28_1();
}

BOOL protocol witness for RawRepresentable.init(rawValue:) in conformance PhoneCallDisplayTextCATsSimple.NewCallButtonTextDialogIds@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = PhoneCallDisplayTextCATsSimple.NewCallButtonTextDialogIds.init(rawValue:)();
  *a2 = result;
  return result;
}

uint64_t PhoneCallDisplayTextCATsSimple.newCallButtonTextAsLabels()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  v1 = swift_task_alloc();
  OUTLINED_FUNCTION_24_6(v1);
  lazy protocol witness table accessor for type PhoneCallDisplayTextCATsSimple.NewCallButtonTextDialogIds and conformance PhoneCallDisplayTextCATsSimple.NewCallButtonTextDialogIds();
  OUTLINED_FUNCTION_9();
  *v0 = v2;
  v0[1] = AddCallParticipantCATPatternsExecutor.unsupportedParticipantsMultipleContactsUnsupported();
  OUTLINED_FUNCTION_19_4();
  v3 = OUTLINED_FUNCTION_26_20(38);

  return v4(v3);
}

unint64_t lazy protocol witness table accessor for type PhoneCallDisplayTextCATsSimple.NewCallButtonTextDialogIds and conformance PhoneCallDisplayTextCATsSimple.NewCallButtonTextDialogIds()
{
  result = lazy protocol witness table cache variable for type PhoneCallDisplayTextCATsSimple.NewCallButtonTextDialogIds and conformance PhoneCallDisplayTextCATsSimple.NewCallButtonTextDialogIds;
  if (!lazy protocol witness table cache variable for type PhoneCallDisplayTextCATsSimple.NewCallButtonTextDialogIds and conformance PhoneCallDisplayTextCATsSimple.NewCallButtonTextDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallDisplayTextCATsSimple.NewCallButtonTextDialogIds and conformance PhoneCallDisplayTextCATsSimple.NewCallButtonTextDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneCallDisplayTextCATsSimple.NewCallButtonTextDialogIds and conformance PhoneCallDisplayTextCATsSimple.NewCallButtonTextDialogIds;
  if (!lazy protocol witness table cache variable for type PhoneCallDisplayTextCATsSimple.NewCallButtonTextDialogIds and conformance PhoneCallDisplayTextCATsSimple.NewCallButtonTextDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallDisplayTextCATsSimple.NewCallButtonTextDialogIds and conformance PhoneCallDisplayTextCATsSimple.NewCallButtonTextDialogIds);
  }

  return result;
}

uint64_t PhoneCallDisplayTextCATsSimple.nextButtonText()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v6 = v0;
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_15_2(v1);
  *v2 = v3;
  v2[1] = AddCallParticipantCATPatternsExecutor.unsupportedParticipantsMultipleContactsUnsupported();
  v4 = OUTLINED_FUNCTION_28_6();

  return v6(v4);
}

BOOL PhoneCallDisplayTextCATsSimple.NextButtonTextDialogIds.init(rawValue:)()
{
  OUTLINED_FUNCTION_38();
  v1._object = v0;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of PhoneCallDisplayTextCATsSimple.NextButtonTextDialogIds.init(rawValue:), v1);
  OUTLINED_FUNCTION_33_2();
  return OUTLINED_FUNCTION_28_1();
}

BOOL protocol witness for RawRepresentable.init(rawValue:) in conformance PhoneCallDisplayTextCATsSimple.NextButtonTextDialogIds@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = PhoneCallDisplayTextCATsSimple.NextButtonTextDialogIds.init(rawValue:)();
  *a2 = result;
  return result;
}

uint64_t PhoneCallDisplayTextCATsSimple.nextButtonTextAsLabels()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  v6 = v1;
  v2 = swift_task_alloc();
  OUTLINED_FUNCTION_24_6(v2);
  lazy protocol witness table accessor for type PhoneCallDisplayTextCATsSimple.NextButtonTextDialogIds and conformance PhoneCallDisplayTextCATsSimple.NextButtonTextDialogIds();
  OUTLINED_FUNCTION_9();
  *v0 = v3;
  v0[1] = AddCallParticipantCATPatternsExecutor.unsupportedParticipantsMultipleContactsUnsupported();
  v4 = OUTLINED_FUNCTION_14_42();

  return v6(v4);
}

unint64_t lazy protocol witness table accessor for type PhoneCallDisplayTextCATsSimple.NextButtonTextDialogIds and conformance PhoneCallDisplayTextCATsSimple.NextButtonTextDialogIds()
{
  result = lazy protocol witness table cache variable for type PhoneCallDisplayTextCATsSimple.NextButtonTextDialogIds and conformance PhoneCallDisplayTextCATsSimple.NextButtonTextDialogIds;
  if (!lazy protocol witness table cache variable for type PhoneCallDisplayTextCATsSimple.NextButtonTextDialogIds and conformance PhoneCallDisplayTextCATsSimple.NextButtonTextDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallDisplayTextCATsSimple.NextButtonTextDialogIds and conformance PhoneCallDisplayTextCATsSimple.NextButtonTextDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneCallDisplayTextCATsSimple.NextButtonTextDialogIds and conformance PhoneCallDisplayTextCATsSimple.NextButtonTextDialogIds;
  if (!lazy protocol witness table cache variable for type PhoneCallDisplayTextCATsSimple.NextButtonTextDialogIds and conformance PhoneCallDisplayTextCATsSimple.NextButtonTextDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallDisplayTextCATsSimple.NextButtonTextDialogIds and conformance PhoneCallDisplayTextCATsSimple.NextButtonTextDialogIds);
  }

  return result;
}

uint64_t PhoneCallDisplayTextCATsSimple.openApp(appName:)()
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
  OUTLINED_FUNCTION_48_1(v4, v5, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v6 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_20(v6);
  if (v7)
  {
    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
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

  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v11 = swift_task_alloc();
  v12 = OUTLINED_FUNCTION_61_4(v11);
  *v12 = v13;
  OUTLINED_FUNCTION_19_2(v12);
  v14 = OUTLINED_FUNCTION_38_1(28);

  return v15(v14);
}

BOOL PhoneCallDisplayTextCATsSimple.OpenAppDialogIds.init(rawValue:)()
{
  OUTLINED_FUNCTION_38();
  v1._object = v0;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of PhoneCallDisplayTextCATsSimple.OpenAppDialogIds.init(rawValue:), v1);
  OUTLINED_FUNCTION_33_2();
  return OUTLINED_FUNCTION_28_1();
}

BOOL protocol witness for RawRepresentable.init(rawValue:) in conformance PhoneCallDisplayTextCATsSimple.OpenAppDialogIds@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = PhoneCallDisplayTextCATsSimple.OpenAppDialogIds.init(rawValue:)();
  *a2 = result;
  return result;
}

uint64_t PhoneCallDisplayTextCATsSimple.openAppAsLabels(appName:)()
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
  v17 = v2;
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_60_9();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_35_1();
  v4 = OUTLINED_FUNCTION_50_0(v3);
  v5 = OUTLINED_FUNCTION_0_4(v4, xmmword_424FD0);
  OUTLINED_FUNCTION_48_1(v5, v6, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v7 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_20(v7);
  if (v8)
  {
    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_35_2();
  }

  else
  {
    OUTLINED_FUNCTION_43_2();
    OUTLINED_FUNCTION_6_0();
    v10 = *(v9 + 32);
    OUTLINED_FUNCTION_16_0();
    v11();
  }

  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  v12 = swift_task_alloc();
  OUTLINED_FUNCTION_27_20(v12);
  lazy protocol witness table accessor for type PhoneCallDisplayTextCATsSimple.OpenAppDialogIds and conformance PhoneCallDisplayTextCATsSimple.OpenAppDialogIds();
  OUTLINED_FUNCTION_9();
  *v0 = v13;
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_19_4();
  v14 = OUTLINED_FUNCTION_29_9(28);

  return v15(v14);
}

unint64_t lazy protocol witness table accessor for type PhoneCallDisplayTextCATsSimple.OpenAppDialogIds and conformance PhoneCallDisplayTextCATsSimple.OpenAppDialogIds()
{
  result = lazy protocol witness table cache variable for type PhoneCallDisplayTextCATsSimple.OpenAppDialogIds and conformance PhoneCallDisplayTextCATsSimple.OpenAppDialogIds;
  if (!lazy protocol witness table cache variable for type PhoneCallDisplayTextCATsSimple.OpenAppDialogIds and conformance PhoneCallDisplayTextCATsSimple.OpenAppDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallDisplayTextCATsSimple.OpenAppDialogIds and conformance PhoneCallDisplayTextCATsSimple.OpenAppDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneCallDisplayTextCATsSimple.OpenAppDialogIds and conformance PhoneCallDisplayTextCATsSimple.OpenAppDialogIds;
  if (!lazy protocol witness table cache variable for type PhoneCallDisplayTextCATsSimple.OpenAppDialogIds and conformance PhoneCallDisplayTextCATsSimple.OpenAppDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallDisplayTextCATsSimple.OpenAppDialogIds and conformance PhoneCallDisplayTextCATsSimple.OpenAppDialogIds);
  }

  return result;
}

uint64_t PhoneCallDisplayTextCATsSimple.openContactsButtonText()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_15_2(v0);
  *v1 = v2;
  v1[1] = AddCallParticipantCATPatternsExecutor.unsupportedParticipantsMultipleContactsUnsupported();
  OUTLINED_FUNCTION_32();
  v3 = OUTLINED_FUNCTION_36_1(43);

  return v4(v3);
}

BOOL PhoneCallDisplayTextCATsSimple.OpenContactsButtonTextDialogIds.init(rawValue:)()
{
  OUTLINED_FUNCTION_38();
  v1._object = v0;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of PhoneCallDisplayTextCATsSimple.OpenContactsButtonTextDialogIds.init(rawValue:), v1);
  OUTLINED_FUNCTION_33_2();
  return OUTLINED_FUNCTION_28_1();
}

BOOL protocol witness for RawRepresentable.init(rawValue:) in conformance PhoneCallDisplayTextCATsSimple.OpenContactsButtonTextDialogIds@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = PhoneCallDisplayTextCATsSimple.OpenContactsButtonTextDialogIds.init(rawValue:)();
  *a2 = result;
  return result;
}

uint64_t PhoneCallDisplayTextCATsSimple.openContactsButtonTextAsLabels()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  v1 = swift_task_alloc();
  OUTLINED_FUNCTION_24_6(v1);
  lazy protocol witness table accessor for type PhoneCallDisplayTextCATsSimple.OpenContactsButtonTextDialogIds and conformance PhoneCallDisplayTextCATsSimple.OpenContactsButtonTextDialogIds();
  OUTLINED_FUNCTION_9();
  *v0 = v2;
  v0[1] = AddCallParticipantCATPatternsExecutor.unsupportedParticipantsMultipleContactsUnsupported();
  OUTLINED_FUNCTION_19_4();
  v3 = OUTLINED_FUNCTION_26_20(43);

  return v4(v3);
}

unint64_t lazy protocol witness table accessor for type PhoneCallDisplayTextCATsSimple.OpenContactsButtonTextDialogIds and conformance PhoneCallDisplayTextCATsSimple.OpenContactsButtonTextDialogIds()
{
  result = lazy protocol witness table cache variable for type PhoneCallDisplayTextCATsSimple.OpenContactsButtonTextDialogIds and conformance PhoneCallDisplayTextCATsSimple.OpenContactsButtonTextDialogIds;
  if (!lazy protocol witness table cache variable for type PhoneCallDisplayTextCATsSimple.OpenContactsButtonTextDialogIds and conformance PhoneCallDisplayTextCATsSimple.OpenContactsButtonTextDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallDisplayTextCATsSimple.OpenContactsButtonTextDialogIds and conformance PhoneCallDisplayTextCATsSimple.OpenContactsButtonTextDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneCallDisplayTextCATsSimple.OpenContactsButtonTextDialogIds and conformance PhoneCallDisplayTextCATsSimple.OpenContactsButtonTextDialogIds;
  if (!lazy protocol witness table cache variable for type PhoneCallDisplayTextCATsSimple.OpenContactsButtonTextDialogIds and conformance PhoneCallDisplayTextCATsSimple.OpenContactsButtonTextDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallDisplayTextCATsSimple.OpenContactsButtonTextDialogIds and conformance PhoneCallDisplayTextCATsSimple.OpenContactsButtonTextDialogIds);
  }

  return result;
}

uint64_t PhoneCallDisplayTextCATsSimple.transcription()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_15_2(v0);
  *v1 = v2;
  v1[1] = AddCallParticipantCATPatternsExecutor.unsupportedParticipantsMultipleContactsUnsupported();
  OUTLINED_FUNCTION_32();
  v3 = OUTLINED_FUNCTION_36_1(34);

  return v4(v3);
}

BOOL PhoneCallDisplayTextCATsSimple.TranscriptionDialogIds.init(rawValue:)()
{
  OUTLINED_FUNCTION_38();
  v1._object = v0;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of PhoneCallDisplayTextCATsSimple.TranscriptionDialogIds.init(rawValue:), v1);
  OUTLINED_FUNCTION_33_2();
  return OUTLINED_FUNCTION_28_1();
}

BOOL protocol witness for RawRepresentable.init(rawValue:) in conformance PhoneCallDisplayTextCATsSimple.TranscriptionDialogIds@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = PhoneCallDisplayTextCATsSimple.TranscriptionDialogIds.init(rawValue:)();
  *a2 = result;
  return result;
}

uint64_t PhoneCallDisplayTextCATsSimple.transcriptionAsLabels()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  v1 = swift_task_alloc();
  OUTLINED_FUNCTION_24_6(v1);
  lazy protocol witness table accessor for type PhoneCallDisplayTextCATsSimple.TranscriptionDialogIds and conformance PhoneCallDisplayTextCATsSimple.TranscriptionDialogIds();
  OUTLINED_FUNCTION_9();
  *v0 = v2;
  v0[1] = AddCallParticipantCATPatternsExecutor.unsupportedParticipantsMultipleContactsUnsupported();
  OUTLINED_FUNCTION_19_4();
  v3 = OUTLINED_FUNCTION_26_20(34);

  return v4(v3);
}

unint64_t lazy protocol witness table accessor for type PhoneCallDisplayTextCATsSimple.TranscriptionDialogIds and conformance PhoneCallDisplayTextCATsSimple.TranscriptionDialogIds()
{
  result = lazy protocol witness table cache variable for type PhoneCallDisplayTextCATsSimple.TranscriptionDialogIds and conformance PhoneCallDisplayTextCATsSimple.TranscriptionDialogIds;
  if (!lazy protocol witness table cache variable for type PhoneCallDisplayTextCATsSimple.TranscriptionDialogIds and conformance PhoneCallDisplayTextCATsSimple.TranscriptionDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallDisplayTextCATsSimple.TranscriptionDialogIds and conformance PhoneCallDisplayTextCATsSimple.TranscriptionDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneCallDisplayTextCATsSimple.TranscriptionDialogIds and conformance PhoneCallDisplayTextCATsSimple.TranscriptionDialogIds;
  if (!lazy protocol witness table cache variable for type PhoneCallDisplayTextCATsSimple.TranscriptionDialogIds and conformance PhoneCallDisplayTextCATsSimple.TranscriptionDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallDisplayTextCATsSimple.TranscriptionDialogIds and conformance PhoneCallDisplayTextCATsSimple.TranscriptionDialogIds);
  }

  return result;
}

uint64_t PhoneCallDisplayTextCATsSimple.tryWithApp(appName:isThirdPartyApp:)()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_57_12(v1, v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v3);
  v5 = *(v4 + 64);
  *(v0 + 32) = OUTLINED_FUNCTION_45();
  v6 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v6, v7, v8);
}

{
  OUTLINED_FUNCTION_75_6();
  v20 = v2;
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_60_9();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_45_0();
  v4 = OUTLINED_FUNCTION_50_0(v3);
  v5 = OUTLINED_FUNCTION_0_4(v4, xmmword_424FF0);
  OUTLINED_FUNCTION_48_1(v5, v6, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v7 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_20(v7);
  if (v8)
  {
    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_35_2();
  }

  else
  {
    OUTLINED_FUNCTION_43_2();
    OUTLINED_FUNCTION_6_0();
    v10 = *(v9 + 32);
    OUTLINED_FUNCTION_16_0();
    v11();
  }

  v12 = *(v1 + 64);
  OUTLINED_FUNCTION_37_18();
  OUTLINED_FUNCTION_73_1(v13);
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v14 = swift_task_alloc();
  v15 = OUTLINED_FUNCTION_61_4(v14);
  *v15 = v16;
  OUTLINED_FUNCTION_19_2(v15);
  v17 = OUTLINED_FUNCTION_38_1(31);

  return v18(v17);
}

uint64_t PhoneCallDisplayTextCATsSimple.TryWithAppDialogIds.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0x7261506472696874;
  }

  else
  {
    return 0x7261507473726966;
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance PhoneCallDisplayTextCATsSimple.TryWithAppDialogIds(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  return specialized == infix<A>(_:_:)();
}

PhoneCallFlowDelegatePlugin::PhoneCallDisplayTextCATsSimple::TryWithAppDialogIds_optional protocol witness for RawRepresentable.init(rawValue:) in conformance PhoneCallDisplayTextCATsSimple.TryWithAppDialogIds@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::PhoneCallDisplayTextCATsSimple::TryWithAppDialogIds_optional *a2@<X8>)
{
  result.value = PhoneCallDisplayTextCATsSimple.TryWithAppDialogIds.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance PhoneCallDisplayTextCATsSimple.TryWithAppDialogIds()
{
  v1 = OUTLINED_FUNCTION_40_2();
  result = PhoneCallDisplayTextCATsSimple.TryWithAppDialogIds.rawValue.getter(v1);
  *v0 = result;
  v0[1] = 0xEA00000000007974;
  return result;
}

uint64_t PhoneCallDisplayTextCATsSimple.tryWithAppAsLabels(appName:isThirdPartyApp:)()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_57_12(v1, v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v3);
  v5 = *(v4 + 64);
  *(v0 + 32) = OUTLINED_FUNCTION_45();
  v6 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v6, v7, v8);
}

{
  OUTLINED_FUNCTION_75_6();
  v20 = v3;
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_60_9();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v4 = OUTLINED_FUNCTION_45_0();
  v5 = OUTLINED_FUNCTION_50_0(v4);
  v6 = OUTLINED_FUNCTION_0_4(v5, xmmword_424FF0);
  OUTLINED_FUNCTION_48_1(v6, v7, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v8 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_20(v8);
  if (v9)
  {
    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
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

  v13 = *(v2 + 64);
  OUTLINED_FUNCTION_37_18();
  OUTLINED_FUNCTION_73_1(v14);
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  v15 = swift_task_alloc();
  OUTLINED_FUNCTION_27_20(v15);
  lazy protocol witness table accessor for type PhoneCallDisplayTextCATsSimple.TryWithAppDialogIds and conformance PhoneCallDisplayTextCATsSimple.TryWithAppDialogIds();
  OUTLINED_FUNCTION_9();
  *v0 = v16;
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_19_4();
  v17 = OUTLINED_FUNCTION_29_9(31);

  return v18(v17);
}

unint64_t lazy protocol witness table accessor for type PhoneCallDisplayTextCATsSimple.TryWithAppDialogIds and conformance PhoneCallDisplayTextCATsSimple.TryWithAppDialogIds()
{
  result = lazy protocol witness table cache variable for type PhoneCallDisplayTextCATsSimple.TryWithAppDialogIds and conformance PhoneCallDisplayTextCATsSimple.TryWithAppDialogIds;
  if (!lazy protocol witness table cache variable for type PhoneCallDisplayTextCATsSimple.TryWithAppDialogIds and conformance PhoneCallDisplayTextCATsSimple.TryWithAppDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallDisplayTextCATsSimple.TryWithAppDialogIds and conformance PhoneCallDisplayTextCATsSimple.TryWithAppDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneCallDisplayTextCATsSimple.TryWithAppDialogIds and conformance PhoneCallDisplayTextCATsSimple.TryWithAppDialogIds;
  if (!lazy protocol witness table cache variable for type PhoneCallDisplayTextCATsSimple.TryWithAppDialogIds and conformance PhoneCallDisplayTextCATsSimple.TryWithAppDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallDisplayTextCATsSimple.TryWithAppDialogIds and conformance PhoneCallDisplayTextCATsSimple.TryWithAppDialogIds);
  }

  return result;
}

uint64_t PhoneCallDisplayTextCATsSimple.unknownCaller()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_15_2(v0);
  *v1 = v2;
  v1[1] = AddCallParticipantCATPatternsExecutor.unsupportedParticipantsMultipleContactsUnsupported();
  OUTLINED_FUNCTION_32();
  v3 = OUTLINED_FUNCTION_36_1(34);

  return v4(v3);
}

BOOL PhoneCallDisplayTextCATsSimple.UnknownCallerDialogIds.init(rawValue:)()
{
  OUTLINED_FUNCTION_38();
  v1._object = v0;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of PhoneCallDisplayTextCATsSimple.UnknownCallerDialogIds.init(rawValue:), v1);
  OUTLINED_FUNCTION_33_2();
  return OUTLINED_FUNCTION_28_1();
}

BOOL protocol witness for RawRepresentable.init(rawValue:) in conformance PhoneCallDisplayTextCATsSimple.UnknownCallerDialogIds@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = PhoneCallDisplayTextCATsSimple.UnknownCallerDialogIds.init(rawValue:)();
  *a2 = result;
  return result;
}

uint64_t PhoneCallDisplayTextCATsSimple.unknownCallerAsLabels()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  v1 = swift_task_alloc();
  OUTLINED_FUNCTION_24_6(v1);
  lazy protocol witness table accessor for type PhoneCallDisplayTextCATsSimple.UnknownCallerDialogIds and conformance PhoneCallDisplayTextCATsSimple.UnknownCallerDialogIds();
  OUTLINED_FUNCTION_9();
  *v0 = v2;
  v0[1] = AddCallParticipantCATPatternsExecutor.unsupportedParticipantsMultipleContactsUnsupported();
  OUTLINED_FUNCTION_19_4();
  v3 = OUTLINED_FUNCTION_26_20(34);

  return v4(v3);
}

unint64_t lazy protocol witness table accessor for type PhoneCallDisplayTextCATsSimple.UnknownCallerDialogIds and conformance PhoneCallDisplayTextCATsSimple.UnknownCallerDialogIds()
{
  result = lazy protocol witness table cache variable for type PhoneCallDisplayTextCATsSimple.UnknownCallerDialogIds and conformance PhoneCallDisplayTextCATsSimple.UnknownCallerDialogIds;
  if (!lazy protocol witness table cache variable for type PhoneCallDisplayTextCATsSimple.UnknownCallerDialogIds and conformance PhoneCallDisplayTextCATsSimple.UnknownCallerDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallDisplayTextCATsSimple.UnknownCallerDialogIds and conformance PhoneCallDisplayTextCATsSimple.UnknownCallerDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneCallDisplayTextCATsSimple.UnknownCallerDialogIds and conformance PhoneCallDisplayTextCATsSimple.UnknownCallerDialogIds;
  if (!lazy protocol witness table cache variable for type PhoneCallDisplayTextCATsSimple.UnknownCallerDialogIds and conformance PhoneCallDisplayTextCATsSimple.UnknownCallerDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallDisplayTextCATsSimple.UnknownCallerDialogIds and conformance PhoneCallDisplayTextCATsSimple.UnknownCallerDialogIds);
  }

  return result;
}

uint64_t PhoneCallDisplayTextCATsSimple.updateSettings()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v6 = v0;
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_15_2(v1);
  *v2 = v3;
  v2[1] = AddCallParticipantCATPatternsExecutor.unsupportedParticipantsMultipleContactsUnsupported();
  v4 = OUTLINED_FUNCTION_28_6();

  return v6(v4);
}

BOOL PhoneCallDisplayTextCATsSimple.UpdateSettingsDialogIds.init(rawValue:)()
{
  OUTLINED_FUNCTION_38();
  v1._object = v0;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of PhoneCallDisplayTextCATsSimple.UpdateSettingsDialogIds.init(rawValue:), v1);
  OUTLINED_FUNCTION_33_2();
  return OUTLINED_FUNCTION_28_1();
}

BOOL protocol witness for RawRepresentable.init(rawValue:) in conformance PhoneCallDisplayTextCATsSimple.UpdateSettingsDialogIds@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = PhoneCallDisplayTextCATsSimple.UpdateSettingsDialogIds.init(rawValue:)();
  *a2 = result;
  return result;
}

uint64_t PhoneCallDisplayTextCATsSimple.updateSettingsAsLabels()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  v6 = v1;
  v2 = swift_task_alloc();
  OUTLINED_FUNCTION_24_6(v2);
  lazy protocol witness table accessor for type PhoneCallDisplayTextCATsSimple.UpdateSettingsDialogIds and conformance PhoneCallDisplayTextCATsSimple.UpdateSettingsDialogIds();
  OUTLINED_FUNCTION_9();
  *v0 = v3;
  v0[1] = AddCallParticipantCATPatternsExecutor.unsupportedParticipantsMultipleContactsUnsupported();
  v4 = OUTLINED_FUNCTION_14_42();

  return v6(v4);
}

unint64_t lazy protocol witness table accessor for type PhoneCallDisplayTextCATsSimple.UpdateSettingsDialogIds and conformance PhoneCallDisplayTextCATsSimple.UpdateSettingsDialogIds()
{
  result = lazy protocol witness table cache variable for type PhoneCallDisplayTextCATsSimple.UpdateSettingsDialogIds and conformance PhoneCallDisplayTextCATsSimple.UpdateSettingsDialogIds;
  if (!lazy protocol witness table cache variable for type PhoneCallDisplayTextCATsSimple.UpdateSettingsDialogIds and conformance PhoneCallDisplayTextCATsSimple.UpdateSettingsDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallDisplayTextCATsSimple.UpdateSettingsDialogIds and conformance PhoneCallDisplayTextCATsSimple.UpdateSettingsDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneCallDisplayTextCATsSimple.UpdateSettingsDialogIds and conformance PhoneCallDisplayTextCATsSimple.UpdateSettingsDialogIds;
  if (!lazy protocol witness table cache variable for type PhoneCallDisplayTextCATsSimple.UpdateSettingsDialogIds and conformance PhoneCallDisplayTextCATsSimple.UpdateSettingsDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallDisplayTextCATsSimple.UpdateSettingsDialogIds and conformance PhoneCallDisplayTextCATsSimple.UpdateSettingsDialogIds);
  }

  return result;
}

uint64_t PhoneCallDisplayTextCATsSimple.useApp(appName:isPhoneApp:)()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_57_12(v1, v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v3);
  v5 = *(v4 + 64);
  *(v0 + 32) = OUTLINED_FUNCTION_45();
  v6 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v6, v7, v8);
}

{
  OUTLINED_FUNCTION_75_6();
  v20 = v2;
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_60_9();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_45_0();
  v4 = OUTLINED_FUNCTION_50_0(v3);
  v5 = OUTLINED_FUNCTION_0_4(v4, xmmword_424FF0);
  OUTLINED_FUNCTION_48_1(v5, v6, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v7 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_20(v7);
  if (v8)
  {
    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_35_2();
  }

  else
  {
    OUTLINED_FUNCTION_43_2();
    OUTLINED_FUNCTION_6_0();
    v10 = *(v9 + 32);
    OUTLINED_FUNCTION_16_0();
    v11();
  }

  v12 = *(v1 + 64);
  OUTLINED_FUNCTION_40_16();
  OUTLINED_FUNCTION_73_1(v13);
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v14 = swift_task_alloc();
  v15 = OUTLINED_FUNCTION_61_4(v14);
  *v15 = v16;
  OUTLINED_FUNCTION_19_2(v15);
  v17 = OUTLINED_FUNCTION_38_1(27);

  return v18(v17);
}

uint64_t PhoneCallDisplayTextCATsSimple.UseAppDialogIds.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0x656E6F6850657375;
  }

  else
  {
    return 0x68506E6F4E657375;
  }
}

PhoneCallFlowDelegatePlugin::PhoneCallDisplayTextCATsSimple::UseAppDialogIds_optional protocol witness for RawRepresentable.init(rawValue:) in conformance PhoneCallDisplayTextCATsSimple.UseAppDialogIds@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::PhoneCallDisplayTextCATsSimple::UseAppDialogIds_optional *a2@<X8>)
{
  result.value = PhoneCallDisplayTextCATsSimple.UseAppDialogIds.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance PhoneCallDisplayTextCATsSimple.UseAppDialogIds()
{
  v1 = OUTLINED_FUNCTION_40_2();
  result = PhoneCallDisplayTextCATsSimple.UseAppDialogIds.rawValue.getter(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t PhoneCallDisplayTextCATsSimple.useAppAsLabels(appName:isPhoneApp:)()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_57_12(v1, v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v3);
  v5 = *(v4 + 64);
  *(v0 + 32) = OUTLINED_FUNCTION_45();
  v6 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v6, v7, v8);
}

{
  OUTLINED_FUNCTION_75_6();
  v20 = v3;
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_60_9();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v4 = OUTLINED_FUNCTION_45_0();
  v5 = OUTLINED_FUNCTION_50_0(v4);
  v6 = OUTLINED_FUNCTION_0_4(v5, xmmword_424FF0);
  OUTLINED_FUNCTION_48_1(v6, v7, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v8 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_20(v8);
  if (v9)
  {
    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
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

  v13 = *(v2 + 64);
  OUTLINED_FUNCTION_40_16();
  OUTLINED_FUNCTION_73_1(v14);
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  v15 = swift_task_alloc();
  OUTLINED_FUNCTION_27_20(v15);
  lazy protocol witness table accessor for type PhoneCallDisplayTextCATsSimple.UseAppDialogIds and conformance PhoneCallDisplayTextCATsSimple.UseAppDialogIds();
  OUTLINED_FUNCTION_9();
  *v0 = v16;
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_19_4();
  v17 = OUTLINED_FUNCTION_29_9(27);

  return v18(v17);
}

unint64_t lazy protocol witness table accessor for type PhoneCallDisplayTextCATsSimple.UseAppDialogIds and conformance PhoneCallDisplayTextCATsSimple.UseAppDialogIds()
{
  result = lazy protocol witness table cache variable for type PhoneCallDisplayTextCATsSimple.UseAppDialogIds and conformance PhoneCallDisplayTextCATsSimple.UseAppDialogIds;
  if (!lazy protocol witness table cache variable for type PhoneCallDisplayTextCATsSimple.UseAppDialogIds and conformance PhoneCallDisplayTextCATsSimple.UseAppDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallDisplayTextCATsSimple.UseAppDialogIds and conformance PhoneCallDisplayTextCATsSimple.UseAppDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneCallDisplayTextCATsSimple.UseAppDialogIds and conformance PhoneCallDisplayTextCATsSimple.UseAppDialogIds;
  if (!lazy protocol witness table cache variable for type PhoneCallDisplayTextCATsSimple.UseAppDialogIds and conformance PhoneCallDisplayTextCATsSimple.UseAppDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallDisplayTextCATsSimple.UseAppDialogIds and conformance PhoneCallDisplayTextCATsSimple.UseAppDialogIds);
  }

  return result;
}

uint64_t PhoneCallDisplayTextCATsSimple.__allocating_init(useResponseMode:options:)()
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

uint64_t PhoneCallDisplayTextCATsSimple.init(useResponseMode:options:)()
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

unint64_t lazy protocol witness table accessor for type PhoneCallDisplayTextCATsSimple.Properties and conformance PhoneCallDisplayTextCATsSimple.Properties()
{
  result = lazy protocol witness table cache variable for type PhoneCallDisplayTextCATsSimple.Properties and conformance PhoneCallDisplayTextCATsSimple.Properties;
  if (!lazy protocol witness table cache variable for type PhoneCallDisplayTextCATsSimple.Properties and conformance PhoneCallDisplayTextCATsSimple.Properties)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallDisplayTextCATsSimple.Properties and conformance PhoneCallDisplayTextCATsSimple.Properties);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PhoneCallDisplayTextCATsSimple.Properties(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 21 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 21) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xEB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xEA)
  {
    v6 = ((a2 - 235) >> 8) + 1;
    *result = a2 + 21;
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
          *result = a2 + 21;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PhoneCallDisplayTextCATsSimple.ContactCompositionDialogIds(_BYTE *result, unsigned int a2, unsigned int a3)
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
          result = OUTLINED_FUNCTION_52_11(result, a2 + 2);
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PhoneCallDisplayTextCATsSimple.AddToCallButtonTextDialogIds(_BYTE *result, int a2, int a3)
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

_BYTE *storeEnumTagSinglePayload for PhoneCallDisplayTextCATsSimple.TryWithAppDialogIds(_BYTE *result, unsigned int a2, unsigned int a3)
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
          result = OUTLINED_FUNCTION_52_11(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

unint64_t PhoneCallFeatureFlags.init()@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12FeatureFlags0dE3Key_pGMd, &_ss23_ContiguousArrayStorageCy12FeatureFlags0dE3Key_pGMR);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_424FD0;
  *(v22 + 56) = &type metadata for SiriInCallFeature;
  *(v22 + 64) = lazy protocol witness table accessor for type SiriInCallFeature and conformance SiriInCallFeature();
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_424FD0;
  *(v21 + 56) = &type metadata for TelephonyUtilitiesFeature;
  v2 = lazy protocol witness table accessor for type TelephonyUtilitiesFeature and conformance TelephonyUtilitiesFeature();
  *(v21 + 64) = v2;
  *(v21 + 32) = 0;
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_424FD0;
  *(v20 + 56) = &type metadata for TelephonyUtilitiesFeature;
  *(v20 + 64) = v2;
  *(v20 + 32) = 1;
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_424FD0;
  *(v19 + 56) = &type metadata for TelephonyUtilitiesFeature;
  *(v19 + 64) = v2;
  *(v19 + 32) = 2;
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_424FD0;
  *(v18 + 56) = &type metadata for IDSFeature;
  *(v18 + 64) = lazy protocol witness table accessor for type IDSFeature and conformance IDSFeature();
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_424FD0;
  *(v17 + 56) = &type metadata for SiriPhoneFeature;
  v3 = lazy protocol witness table accessor for type SiriPhoneFeature and conformance SiriPhoneFeature();
  *(v17 + 64) = v3;
  *(v17 + 32) = 3;
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_424FD0;
  *(v16 + 56) = &type metadata for SiriPhoneFeature;
  *(v16 + 64) = v3;
  *(v16 + 32) = 4;
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_424FD0;
  *(v4 + 56) = &type metadata for SiriPhoneFeature;
  *(v4 + 64) = v3;
  *(v4 + 32) = 6;
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_424FD0;
  *(v5 + 56) = &type metadata for SiriPhoneFeature;
  *(v5 + 64) = v3;
  *(v5 + 32) = 8;
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_424FD0;
  *(v15 + 56) = &type metadata for SiriPlaybackControlFeature;
  *(v15 + 64) = lazy protocol witness table accessor for type SiriPlaybackControlFeature and conformance SiriPlaybackControlFeature();
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_424FF0;
  *(v6 + 56) = &type metadata for SiriPhoneFeature;
  *(v6 + 64) = v3;
  *(v6 + 32) = 5;
  *(v6 + 96) = &type metadata for PommesFeature;
  *(v6 + 104) = lazy protocol witness table accessor for type PommesFeature and conformance PommesFeature();
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_424FD0;
  *(v7 + 56) = &type metadata for SiriPhoneFeature;
  *(v7 + 64) = v3;
  *(v7 + 32) = 7;
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_424FD0;
  *(v8 + 56) = &type metadata for SiriPhoneFeature;
  *(v8 + 64) = v3;
  *(v8 + 32) = 9;
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_424FD0;
  *(v9 + 56) = &type metadata for SiriPhoneFeature;
  *(v9 + 64) = v3;
  *(v9 + 32) = 10;
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_424FD0;
  *(v10 + 56) = &type metadata for SiriPhoneFeature;
  *(v10 + 64) = v3;
  *(v10 + 32) = 12;
  v14 = static RFFeatureFlags.ResponseFramework.SMART.getter() & 1;
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_424FD0;
  *(v11 + 56) = &type metadata for AppProtection;
  *(v11 + 64) = lazy protocol witness table accessor for type AppProtection and conformance AppProtection();
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_424FD0;
  *(v12 + 56) = &type metadata for CarPlayFeature;
  result = lazy protocol witness table accessor for type CarPlayFeature and conformance CarPlayFeature();
  *(v12 + 64) = result;
  *a1 = 0xD000000000000012;
  *(a1 + 8) = 0x8000000000456B00;
  *(a1 + 16) = 1;
  *(a1 + 24) = 0xD000000000000014;
  *(a1 + 32) = 0x8000000000456B20;
  *(a1 + 40) = 1;
  *(a1 + 48) = v22;
  *(a1 + 56) = v21;
  *(a1 + 64) = v20;
  *(a1 + 72) = v19;
  *(a1 + 80) = v18;
  *(a1 + 88) = v17;
  *(a1 + 96) = v16;
  *(a1 + 104) = v4;
  *(a1 + 112) = v5;
  *(a1 + 120) = v15;
  *(a1 + 128) = v6;
  *(a1 + 136) = v7;
  *(a1 + 144) = v8;
  *(a1 + 152) = v9;
  *(a1 + 160) = v10;
  *(a1 + 168) = v14;
  *(a1 + 176) = v11;
  *(a1 + 184) = v12;
  return result;
}

void *PhoneCallFeatureFlags.instance.unsafeMutableAddressor()
{
  if (one-time initialization token for instance != -1)
  {
    OUTLINED_FUNCTION_6_8();
  }

  return &static PhoneCallFeatureFlags.instance;
}

uint64_t static PhoneCallFeatureFlags.instance.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for instance != -1)
  {
    OUTLINED_FUNCTION_6_8();
  }

  return outlined init with copy of PhoneCallFeatureFlags(&static PhoneCallFeatureFlags.instance, a1);
}

id one-time initialization function for userDefaults()
{
  v0 = objc_allocWithZone(NSUserDefaults);
  result = @nonobjc NSUserDefaults.init(suiteName:)(0xD000000000000014, 0x8000000000456D50);
  static PhoneCallFeatureFlags.userDefaults = result;
  return result;
}

uint64_t *PhoneCallFeatureFlags.userDefaults.unsafeMutableAddressor()
{
  if (one-time initialization token for userDefaults != -1)
  {
    OUTLINED_FUNCTION_0_78();
  }

  return &static PhoneCallFeatureFlags.userDefaults;
}

uint64_t static PhoneCallFeatureFlags.userDefaults.getter()
{
  if (one-time initialization token for userDefaults != -1)
  {
    OUTLINED_FUNCTION_0_78();
  }

  v0 = static PhoneCallFeatureFlags.userDefaults;
  v1 = static PhoneCallFeatureFlags.userDefaults;
  return v0;
}

uint64_t specialized UserDefaultsSetting.wrappedValue.getter(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) != 0 && !AFIsInternalInstall())
  {
    return 0;
  }

  if (one-time initialization token for userDefaults != -1)
  {
    swift_once();
  }

  v3 = static PhoneCallFeatureFlags.userDefaults;
  if (static PhoneCallFeatureFlags.userDefaults)
  {
    v4 = String._bridgeToObjectiveC()();
    v5 = [v3 valueForKey:v4];

    if (v5)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v7 = 0;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  if (swift_dynamicCast())
  {
    return v7;
  }

  else
  {
    return 0;
  }
}

uint64_t UserDefaultsSetting.wrappedValue.getter@<X0>(char a1@<W2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  if ((a1 & 1) != 0 && !AFIsInternalInstall())
  {

    return __swift_storeEnumTagSinglePayload(a3, 1, 1, a2);
  }

  else
  {
    if (one-time initialization token for userDefaults != -1)
    {
      OUTLINED_FUNCTION_0_78();
    }

    v5 = static PhoneCallFeatureFlags.userDefaults;
    if (static PhoneCallFeatureFlags.userDefaults)
    {
      v6 = String._bridgeToObjectiveC()();
      v7 = [v5 valueForKey:v6];

      if (v7)
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
    v9 = swift_dynamicCast();
    return __swift_storeEnumTagSinglePayload(a3, v9 ^ 1u, 1, a2);
  }
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance SiriPhoneFeature(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  Hasher.init(_seed:)();
  a4(v8, v6);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance PommesFeature(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  Hasher.init(_seed:)();
  a4(v6);
  return Hasher._finalize()();
}

uint64_t getEnumTagSinglePayload for PhoneCallFeatureFlags(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 192))
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

uint64_t storeEnumTagSinglePayload for PhoneCallFeatureFlags(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 184) = 0;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
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
      *(result + 192) = 1;
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

    *(result + 192) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SiriPhoneFeature(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF4)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF3)
  {
    v6 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
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
          *result = a2 + 12;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for TelephonyUtilitiesFeature(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for PommesFeature(_BYTE *result, int a2, int a3)
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

uint64_t type metadata instantiation function for UserDefaultsSetting()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t getEnumTagSinglePayload for UserDefaultsSetting(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 17))
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

uint64_t storeEnumTagSinglePayload for UserDefaultsSetting(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t PhoneCallFeatureManager.__allocating_init(featureFlags:)(uint64_t *a1)
{
  swift_allocObject();
  v2 = a1[4];
  __swift_mutable_project_boxed_opaque_existential_1(a1, a1[3]);
  OUTLINED_FUNCTION_8_6();
  v4 = *(v3 + 64);
  __chkstk_darwin(v5);
  v7 = OUTLINED_FUNCTION_4_53(v6, v11);
  v8(v7);
  v9 = OUTLINED_FUNCTION_6_56();
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v9;
}

uint64_t key path setter for PhoneCallFeatureManager.featureFlags : PhoneCallFeatureManager(uint64_t a1, uint64_t *a2)
{
  outlined init with copy of SignalProviding(a1, v5);
  v3 = *a2;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1((v3 + 16));
  outlined init with take of PhoneCallFeatureFlagProviding(v5, v3 + 16);
  return swift_endAccess();
}

uint64_t PhoneCallFeatureManager.init(featureFlags:)(uint64_t *a1)
{
  v2 = a1[4];
  __swift_mutable_project_boxed_opaque_existential_1(a1, a1[3]);
  OUTLINED_FUNCTION_8_6();
  v4 = *(v3 + 64);
  __chkstk_darwin(v5);
  v7 = OUTLINED_FUNCTION_4_53(v6, v11);
  v8(v7);
  v9 = OUTLINED_FUNCTION_6_56();
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v9;
}

uint64_t PhoneCallFeatureManager.forceCallsToHandle.getter()
{
  OUTLINED_FUNCTION_2_0();
  (*(v0 + 88))(v7);
  OUTLINED_FUNCTION_1_6(v7);
  v2 = *(v1 + 8);
  v3 = OUTLINED_FUNCTION_4_3();
  v5 = v4(v3);
  __swift_destroy_boxed_opaque_existential_1(v7);
  return v5;
}

uint64_t PhoneCallFeatureManager.shouldEnablePOMMESFallback.getter()
{
  OUTLINED_FUNCTION_2_0();
  (*(v0 + 88))(v6);
  OUTLINED_FUNCTION_1_6(v6);
  v2 = *(v1 + 104);
  v3 = OUTLINED_FUNCTION_4_3();
  v4(v3);
  return OUTLINED_FUNCTION_3_67(v6);
}

uint64_t PhoneCallFeatureManager.shouldEnableSiriCallExperiencePhoneApp.getter()
{
  OUTLINED_FUNCTION_2_0();
  (*(v0 + 88))(v6);
  OUTLINED_FUNCTION_1_6(v6);
  v2 = *(v1 + 32);
  v3 = OUTLINED_FUNCTION_4_3();
  v4(v3);
  return OUTLINED_FUNCTION_3_67(v6);
}

uint64_t PhoneCallFeatureManager.shouldEnableSiriLaguna.getter()
{
  OUTLINED_FUNCTION_2_0();
  (*(v0 + 88))(v6);
  OUTLINED_FUNCTION_1_6(v6);
  v2 = *(v1 + 40);
  v3 = OUTLINED_FUNCTION_4_3();
  v4(v3);
  return OUTLINED_FUNCTION_3_67(v6);
}

uint64_t PhoneCallFeatureManager.shouldEnableSiriUplevelFTA.getter()
{
  OUTLINED_FUNCTION_2_0();
  (*(v0 + 88))(v6);
  OUTLINED_FUNCTION_1_6(v6);
  v2 = *(v1 + 48);
  v3 = OUTLINED_FUNCTION_4_3();
  v4(v3);
  return OUTLINED_FUNCTION_3_67(v6);
}

uint64_t PhoneCallFeatureManager.shouldEnableHSAnswerCallNotification.getter()
{
  OUTLINED_FUNCTION_2_0();
  (*(v0 + 88))(v6);
  OUTLINED_FUNCTION_1_6(v6);
  v2 = *(v1 + 88);
  v3 = OUTLINED_FUNCTION_4_3();
  v4(v3);
  return OUTLINED_FUNCTION_3_67(v6);
}

uint64_t PhoneCallFeatureManager.shouldEnableForcedAppDisambiguation.getter()
{
  OUTLINED_FUNCTION_2_0();
  (*(v0 + 88))(v6);
  OUTLINED_FUNCTION_1_6(v6);
  v2 = *(v1 + 64);
  v3 = OUTLINED_FUNCTION_4_3();
  v4(v3);
  return OUTLINED_FUNCTION_3_67(v6);
}

uint64_t PhoneCallFeatureManager.shouldForceTrialFeatureOff.getter()
{
  OUTLINED_FUNCTION_2_0();
  (*(v0 + 88))(v10);
  OUTLINED_FUNCTION_1_6(v10);
  v2 = *(v1 + 16);
  v3 = OUTLINED_FUNCTION_4_3();
  v4(v3);
  if (v5)
  {
    v6 = String.lowercased()();

    __swift_destroy_boxed_opaque_existential_1(v10);
    if (v6._countAndFlagsBits == 1702195828 && v6._object == 0xE400000000000000)
    {

      v8 = 1;
    }

    else
    {
      v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v10);
    v8 = 0;
  }

  return v8 & 1;
}

uint64_t PhoneCallFeatureManager.shouldEnableSmartEnoughAppSelection.getter()
{
  OUTLINED_FUNCTION_2_0();
  (*(v0 + 88))(v6);
  OUTLINED_FUNCTION_1_6(v6);
  v2 = *(v1 + 72);
  v3 = OUTLINED_FUNCTION_4_3();
  v4(v3);
  return OUTLINED_FUNCTION_3_67(v6);
}

uint64_t PhoneCallFeatureManager.shouldEnableAnswerCallNotificationOnLockedScreen.getter()
{
  OUTLINED_FUNCTION_2_0();
  (*(v0 + 88))(v6);
  OUTLINED_FUNCTION_1_6(v6);
  v2 = *(v1 + 80);
  v3 = OUTLINED_FUNCTION_4_3();
  v4(v3);
  return OUTLINED_FUNCTION_3_67(v6);
}

uint64_t PhoneCallFeatureManager.shouldEnableQuickStopCallBell.getter()
{
  OUTLINED_FUNCTION_2_0();
  (*(v0 + 88))(v6);
  OUTLINED_FUNCTION_1_6(v6);
  v2 = *(v1 + 96);
  v3 = OUTLINED_FUNCTION_4_3();
  v4(v3);
  return OUTLINED_FUNCTION_3_67(v6);
}

uint64_t PhoneCallFeatureManager.shouldEnableCompositionFlow.getter()
{
  OUTLINED_FUNCTION_2_0();
  (*(v0 + 88))(v6);
  OUTLINED_FUNCTION_1_6(v6);
  v2 = *(v1 + 112);
  v3 = OUTLINED_FUNCTION_4_3();
  v4(v3);
  return OUTLINED_FUNCTION_3_67(v6);
}

uint64_t PhoneCallFeatureManager.shouldEnableSRRRefactor.getter()
{
  OUTLINED_FUNCTION_2_0();
  (*(v0 + 88))(v6);
  OUTLINED_FUNCTION_1_6(v6);
  v2 = *(v1 + 120);
  v3 = OUTLINED_FUNCTION_4_3();
  v4(v3);
  return OUTLINED_FUNCTION_3_67(v6);
}

uint64_t PhoneCallFeatureManager.useEntitySpansForBusinessCall.getter()
{
  OUTLINED_FUNCTION_2_0();
  (*(v0 + 88))(v6);
  OUTLINED_FUNCTION_1_6(v6);
  v2 = *(v1 + 128);
  v3 = OUTLINED_FUNCTION_4_3();
  v4(v3);
  return OUTLINED_FUNCTION_3_67(v6);
}

uint64_t PhoneCallFeatureManager.shouldEnableCompositionFlowForAllLocales.getter()
{
  OUTLINED_FUNCTION_2_0();
  (*(v0 + 88))(v6);
  OUTLINED_FUNCTION_1_6(v6);
  v2 = *(v1 + 136);
  v3 = OUTLINED_FUNCTION_4_3();
  v4(v3);
  return OUTLINED_FUNCTION_3_67(v6);
}

uint64_t PhoneCallFeatureManager.shouldEnableSmartUI.getter()
{
  OUTLINED_FUNCTION_2_0();
  (*(v0 + 88))(v6);
  OUTLINED_FUNCTION_1_6(v6);
  v2 = *(v1 + 144);
  v3 = OUTLINED_FUNCTION_4_3();
  v4(v3);
  return OUTLINED_FUNCTION_3_67(v6);
}

uint64_t PhoneCallFeatureManager.shouldEnableProtectedApps.getter()
{
  OUTLINED_FUNCTION_2_0();
  (*(v0 + 88))(v6);
  OUTLINED_FUNCTION_1_6(v6);
  v2 = *(v1 + 152);
  v3 = OUTLINED_FUNCTION_4_3();
  v4(v3);
  return OUTLINED_FUNCTION_3_67(v6);
}

uint64_t PhoneCallFeatureManager.shouldEnableCarPlayUIRefresh.getter()
{
  OUTLINED_FUNCTION_2_0();
  (*(v0 + 88))(v6);
  OUTLINED_FUNCTION_1_6(v6);
  v2 = *(v1 + 160);
  v3 = OUTLINED_FUNCTION_4_3();
  v4(v3);
  return OUTLINED_FUNCTION_3_67(v6);
}

uint64_t specialized PhoneCallFeatureManager.init(featureFlags:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[3] = a3;
  v9[4] = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v9);
  (*(*(a3 - 8) + 32))(boxed_opaque_existential_1, a1, a3);
  outlined init with take of PhoneCallFeatureFlagProviding(v9, a2 + 16);
  return a2;
}

void PhoneCallFlow.__allocating_init(input:sharedGlobals:appFinder:eligibleAppsFinder:)()
{
  PhoneCallFlow.__allocating_init(input:sharedGlobals:appFinder:eligibleAppsFinder:)();
}

{
  OUTLINED_FUNCTION_66();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = *(v3 + 24);
  v12 = *(v3 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v3, v11);
  OUTLINED_FUNCTION_9_1();
  v14 = *(v13 + 64);
  __chkstk_darwin(v15);
  OUTLINED_FUNCTION_4();
  v18 = v17 - v16;
  (*(v19 + 16))(v17 - v16);
  v2(v10, v8, v6, v18, v0, v11, v12);
  __swift_destroy_boxed_opaque_existential_1(v4);
  OUTLINED_FUNCTION_65();
}

uint64_t key path setter for PhoneCallFlow.state : PhoneCallFlow(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for PhoneCallFlow.State(0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PhoneCallFlow.State(a1, v7);
  v8 = *a2;
  v9 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin13PhoneCallFlow_state;
  swift_beginAccess();
  outlined assign with take of PhoneCallFlow.State(v7, v8 + v9);
  return swift_endAccess();
}

uint64_t PhoneCallFlow.state.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin13PhoneCallFlow_state;
  swift_beginAccess();
  return outlined init with copy of PhoneCallFlow.State(v1 + v3, a1);
}

uint64_t PhoneCallFlow.__allocating_init(state:sharedGlobals:appFinder:eligibleAppsFinder:)(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v9 = *(v4 + 48);
  v10 = *(v4 + 52);
  v11 = swift_allocObject();
  v12 = *(a4 + 24);
  v13 = *(a4 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(a4, v12);
  OUTLINED_FUNCTION_9_1();
  v15 = *(v14 + 64);
  __chkstk_darwin(v16);
  OUTLINED_FUNCTION_4();
  v19 = v18 - v17;
  (*(v20 + 16))(v18 - v17);
  specialized PhoneCallFlow.init(state:sharedGlobals:appFinder:eligibleAppsFinder:)(a1, a2, a3, v19, v11, v12, v13);
  v21 = OUTLINED_FUNCTION_40_0();
  __swift_destroy_boxed_opaque_existential_1(v21);
  return v11;
}

uint64_t PhoneCallFlow.execute(completion:)()
{
  type metadata accessor for PhoneCallFlow(0);
  lazy protocol witness table accessor for type PhoneCallFlow and conformance PhoneCallFlow(&lazy protocol witness table cache variable for type PhoneCallFlow and conformance PhoneCallFlow, type metadata accessor for PhoneCallFlow);
  return Flow.deferToExecuteAsync(_:)();
}

uint64_t PhoneCallFlow.execute()()
{
  OUTLINED_FUNCTION_15();
  v1[268] = v0;
  v1[267] = v2;
  v1[269] = *v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5ParseOSgMd, &_s11SiriKitFlow5ParseOSgMR);
  OUTLINED_FUNCTION_21(v3);
  v5 = *(v4 + 64);
  v1[270] = OUTLINED_FUNCTION_45();
  v6 = type metadata accessor for AppResolver();
  OUTLINED_FUNCTION_21(v6);
  v8 = *(v7 + 64);
  v1[271] = OUTLINED_FUNCTION_45();
  v9 = type metadata accessor for DialogPhase();
  OUTLINED_FUNCTION_21(v9);
  v11 = *(v10 + 64);
  v1[272] = OUTLINED_FUNCTION_45();
  v12 = type metadata accessor for CATOption();
  OUTLINED_FUNCTION_21(v12);
  v14 = *(v13 + 64);
  v1[273] = OUTLINED_FUNCTION_45();
  v15 = type metadata accessor for Parse();
  v1[274] = v15;
  OUTLINED_FUNCTION_13_2(v15);
  v1[275] = v16;
  v18 = *(v17 + 64);
  v1[276] = OUTLINED_FUNCTION_45();
  v19 = type metadata accessor for Input();
  v1[277] = v19;
  OUTLINED_FUNCTION_13_2(v19);
  v1[278] = v20;
  v1[279] = *(v21 + 64);
  v1[280] = swift_task_alloc();
  v1[281] = swift_task_alloc();
  v1[282] = swift_task_alloc();
  v1[283] = swift_task_alloc();
  v1[284] = swift_task_alloc();
  v22 = type metadata accessor for PhoneCallFlow.State(0);
  v1[285] = v22;
  OUTLINED_FUNCTION_21(v22);
  v24 = *(v23 + 64) + 15;
  v1[286] = swift_task_alloc();
  v1[287] = swift_task_alloc();
  v25 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v25, v26, v27);
}

{
  v496 = v0;
  v1 = v0;
  v2 = (v0 + 776);
  v476 = (v1 + 1904);
  v3 = *(v1 + 2280);
  v4 = *(v1 + 2296);
  (*(**(v1 + 2144) + 152))();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v458 = v2;
      v487 = (v1 + 1576);
      v138 = *(v1 + 2296);
      v139 = *(v1 + 2264);
      v140 = *(v1 + 2224);
      v141 = *(v1 + 2216);
      v142 = *(v1 + 2144);
      v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5InputV5input_09PhoneCallC14DelegatePlugin0fG8NLIntent_p05phonegJ0SS10intentTypetMd, &_s11SiriKitFlow5InputV5input_09PhoneCallC14DelegatePlugin0fG8NLIntent_p05phonegJ0SS10intentTypetMR);
      v144 = *(v143 + 48);
      v145 = (v138 + *(v143 + 64));
      v146 = *v145;
      *(v1 + 2304) = *v145;
      v147 = v145[1];
      *(v1 + 2312) = v147;
      (*(v140 + 32))(v139, v138, v141);
      outlined init with take of SPHConversation((v138 + v144), v1 + 1416);
      v148 = v142[10];
      v149 = v142[11];
      OUTLINED_FUNCTION_1_6(v142 + 7);
      v151 = *(v150 + 56);
      v152 = OUTLINED_FUNCTION_4_3();
      v154 = v153(v152);
      v155 = OUTLINED_FUNCTION_40_9(v154);
      LOBYTE(v148) = (*(v156 + 176))(v155);

      if (v148)
      {
        v157 = v142[10];
        v158 = v142[11];
        OUTLINED_FUNCTION_8_52(v142 + 7);
        v160 = *(v159 + 8);
        v161 = OUTLINED_FUNCTION_4_3();
        v162(v161);
        v163 = *(v1 + 1408);
        __swift_project_boxed_opaque_existential_1((v1 + 1376), *(v1 + 1400));
        OUTLINED_FUNCTION_14_7();
        v164 = DeviceState.isStandaloneIOS.getter();
        __swift_destroy_boxed_opaque_existential_1((v1 + 1376));
        if (v164)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
          v165 = swift_allocObject();
          *(v165 + 16) = xmmword_424FF0;
          *(v165 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
          *(v165 + 40) = v166;
          *(v165 + 48) = static String._unconditionallyBridgeFromObjectiveC(_:)();
          *(v165 + 56) = v167;
          *(v1 + 1840) = v146;
          *(v1 + 1848) = v147;
          *(swift_task_alloc() + 16) = v1 + 1840;
          OUTLINED_FUNCTION_28_2();
          v168 = specialized Sequence.contains(where:)();
          swift_setDeallocating();
          specialized _ContiguousArrayStorage.__deallocating_deinit();

          if (v168)
          {
            v169 = v142[10];
            v170 = v142[11];
            OUTLINED_FUNCTION_1_6(v142 + 7);
            v172 = *(v171 + 112);
            v173 = OUTLINED_FUNCTION_4_3();
            if (v174(v173))
            {
              CurrentRequest.refId.getter();
              v176 = v175;

              *(v1 + 2320) = v176;
              if (v176)
              {
                v177 = v142[11];
                __swift_project_boxed_opaque_existential_1(v142 + 7, v142[10]);
                v178 = *(v177 + 160);
                v179 = OUTLINED_FUNCTION_33_4();
                v180(v179);
                v181 = *(v1 + 1288);
                __swift_project_boxed_opaque_existential_1((v1 + 1256), *(v1 + 1280));
                v182 = v142[10];
                v183 = v142[11];
                __swift_project_boxed_opaque_existential_1(v142 + 7, v182);
                (*(v183 + 32))(v182, v183);
                v184 = *(v1 + 1440);
                v185 = *(v1 + 1448);
                __swift_project_boxed_opaque_existential_1((v1 + 1416), v184);
                PhoneCallNLIntent.applicationId.getter(v184, v185);
                *(v1 + 2328) = v186;
                v187 = *(v181 + 8);
                v488 = v187 + *v187;
                v188 = v187[1];
                v189 = swift_task_alloc();
                *(v1 + 2336) = v189;
                *v189 = v1;
                v189[1] = PhoneCallFlow.execute();
                OUTLINED_FUNCTION_35_15();

                __asm { BRAA            X7, X16 }
              }
            }
          }
        }
      }

      v226 = *(v1 + 2184);
      v227 = *(v1 + 2144);
      v228 = v227[11];
      __swift_project_boxed_opaque_existential_1(v227 + 7, v227[10]);
      v229 = *(v228 + 104);
      v230 = OUTLINED_FUNCTION_5();
      v231(v230, v228);
      v475 = *(v1 + 1488);
      v477 = *(v1 + 1480);
      __swift_project_boxed_opaque_existential_1((v1 + 1456), v477);
      v232 = v227[22];
      outlined init with copy of SignalProviding((v227 + 2), v1 + 1496);
      outlined init with copy of SignalProviding((v227 + 7), v1 + 1536);
      type metadata accessor for StartCallCATsSimple();
      *v487 = 0u;
      *(v1 + 1592) = 0u;
      *(v1 + 1608) = 0;

      static CATOption.defaultMode.getter();
      v480 = OUTLINED_FUNCTION_66_9();
      type metadata accessor for PhoneCallDisplayTextCATsSimple();
      static CATOption.defaultMode.getter();
      v483 = OUTLINED_FUNCTION_66_9();
      v233 = type metadata accessor for ResponseFactory();
      OUTLINED_FUNCTION_41_1(v233);
      v234 = ResponseFactory.init()();
      if (one-time initialization token for instance != -1)
      {
        OUTLINED_FUNCTION_60_2();
      }

      v467 = *(v1 + 2168);
      v235 = static EligibleAppFinder.instance;
      v236 = type metadata accessor for AppInfoBuilder();
      v237 = OUTLINED_FUNCTION_79();
      v238 = type metadata accessor for PhoneAppResolutionOnDeviceFlowStrategy();
      v239 = swift_allocObject();
      *(v1 + 1640) = v233;
      *(v1 + 1648) = &protocol witness table for ResponseFactory;
      *(v1 + 1616) = v234;
      v453 = type metadata accessor for EligibleAppFinder();
      *(v1 + 1680) = v453;
      *(v1 + 1688) = &protocol witness table for EligibleAppFinder;
      *(v1 + 1656) = v235;
      *(v1 + 1720) = v236;
      *(v1 + 1728) = &protocol witness table for AppInfoBuilder;
      *(v1 + 1696) = v237;
      *(v239 + 16) = _swiftEmptyArrayStorage;
      *(v239 + 24) = 0;

      v456 = v235;

      OUTLINED_FUNCTION_16_25();
      *(v239 + 344) = Dictionary.init(dictionaryLiteral:)();
      OUTLINED_FUNCTION_16_25();
      *(v239 + 352) = Dictionary.init(dictionaryLiteral:)();
      *(v239 + 360) = v238;
      *(v239 + 368) = &outlined read-only object #0 of PhoneCallFlow.execute();
      *(v239 + 376) = 0;
      *(v239 + 384) = 0;
      *(v239 + 392) = v238;
      *(v239 + 400) = &outlined read-only object #1 of PhoneCallFlow.execute();
      *(v239 + 408) = 0;
      *(v239 + 416) = 0;
      *(v239 + 424) = v238;
      v471 = v238;
      *(v239 + 432) = &outlined read-only object #2 of PhoneCallFlow.execute();
      *(v239 + 440) = 0u;
      *(v239 + 456) = 0u;
      *(v239 + 472) = 0u;
      *(v239 + 488) = 0;
      *(v239 + 192) = v232;
      outlined init with copy of SignalProviding(v1 + 1496, v239 + 32);
      v240 = *(v1 + 1568);
      __swift_project_boxed_opaque_existential_1((v1 + 1536), *(v1 + 1560));
      v241 = *(v240 + 8);
      v242 = OUTLINED_FUNCTION_5();
      v243(v242, v240);
      outlined init with take of SPHConversation((v1 + 296), v239 + 152);
      outlined init with copy of SignalProviding(v1 + 1536, v239 + 200);
      outlined init with copy of SignalProviding(v1 + 1656, v239 + 112);
      outlined init with copy of SignalProviding(v1 + 1696, v239 + 72);
      *(v239 + 240) = v480;
      *(v239 + 248) = v483;
      outlined init with copy of SignalProviding(v1 + 1616, v239 + 256);
      outlined init with copy of SignalProviding(v1 + 1536, v1 + 736);
      outlined init with copy of SignalProviding(v1 + 1656, v1 + 696);
      type metadata accessor for AppUsageProvider();
      memset(v494, 0, sizeof(v494));
      v495 = 0;
      v464 = OUTLINED_FUNCTION_79();

      AppResolver.init(appResolutionRules:)();
      v244 = type metadata accessor for PhoneAppResolutionHelper();
      v245 = OUTLINED_FUNCTION_41_1(v244);
      v246 = *(v1 + 720);
      v247 = __swift_mutable_project_boxed_opaque_existential_1(v1 + 696, v246);
      OUTLINED_FUNCTION_9_1();
      v249 = v248;
      v251 = *(v250 + 64);
      v252 = OUTLINED_FUNCTION_45();
      (*(v249 + 16))(v252, v247, v246);
      v253 = specialized PhoneAppResolutionHelper.init(sharedGlobals:eligibleAppsFinder:smartAppSelection:phoneAppResolutionLogger:appUsageProvider:appResolver:)((v1 + 736), *v252, 0, v494, v464, v467, v245);
      __swift_destroy_boxed_opaque_existential_1((v1 + 696));

      *(v239 + 296) = v253;
      outlined init with copy of PhoneCallFlowState<INHangUpCallIntent, INHangUpCallIntentResponse>(v487, v1 + 1336, &_s27PhoneCallFlowDelegatePlugin0A20AppResolutionLogging_pSgMd, &_s27PhoneCallFlowDelegatePlugin0A20AppResolutionLogging_pSgMR);
      if (*(v1 + 1360))
      {

        outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v487, &_s27PhoneCallFlowDelegatePlugin0A20AppResolutionLogging_pSgMd, &_s27PhoneCallFlowDelegatePlugin0A20AppResolutionLogging_pSgMR);
        __swift_destroy_boxed_opaque_existential_1((v1 + 1496));
        __swift_destroy_boxed_opaque_existential_1((v1 + 1696));
        __swift_destroy_boxed_opaque_existential_1((v1 + 1656));
        __swift_destroy_boxed_opaque_existential_1((v1 + 1616));
        v254 = (v1 + 1736);
        outlined init with take of SPHConversation((v1 + 1336), v1 + 1736);
      }

      else
      {
        outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v1 + 1336, &_s27PhoneCallFlowDelegatePlugin0A20AppResolutionLogging_pSgMd, &_s27PhoneCallFlowDelegatePlugin0A20AppResolutionLogging_pSgMR);
        outlined init with copy of SignalProviding(v1 + 1536, v1 + 656);
        v279 = [objc_opt_self() sharedAnalytics];
        v468 = [v279 defaultMessageStream];

        *(v1 + 560) = v453;
        *(v1 + 568) = &protocol witness table for EligibleAppFinder;
        *(v1 + 536) = v456;
        *(v1 + 800) = &type metadata for PhoneAppResolutionLogger;
        *(v1 + 808) = &protocol witness table for PhoneAppResolutionLogger;
        OUTLINED_FUNCTION_50_15();
        v280 = swift_allocObject();
        *(v1 + 776) = v280;
        v281 = *(v1 + 680);
        v282 = *(v1 + 688);
        __swift_project_boxed_opaque_existential_1((v1 + 656), v281);
        v283 = *(v282 + 112);

        if (v283(v281, v282))
        {
          v284 = CurrentRequest.executionRequestId.getter();
          v286 = v285;
        }

        else
        {
          v284 = 0;
          v286 = 0;
        }

        v254 = v458;
        *(v1 + 16) = v284;
        *(v1 + 24) = v286;
        *(v1 + 32) = v468;
        outlined init with copy of SignalProviding(v1 + 656, v1 + 40);
        v373 = *(v1 + 688);
        __swift_project_boxed_opaque_existential_1((v1 + 656), *(v1 + 680));
        v374 = *(v373 + 216);
        v375 = OUTLINED_FUNCTION_5();
        v376(v375, v373);
        outlined init with take of SPHConversation((v1 + 536), v1 + 120);
        memcpy((v280 + 16), (v1 + 16), 0x90uLL);

        outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v487, &_s27PhoneCallFlowDelegatePlugin0A20AppResolutionLogging_pSgMd, &_s27PhoneCallFlowDelegatePlugin0A20AppResolutionLogging_pSgMR);
        __swift_destroy_boxed_opaque_existential_1((v1 + 1496));
        __swift_destroy_boxed_opaque_existential_1((v1 + 1696));
        __swift_destroy_boxed_opaque_existential_1((v1 + 1656));
        __swift_destroy_boxed_opaque_existential_1((v1 + 1616));
        __swift_destroy_boxed_opaque_existential_1((v1 + 656));
      }

      outlined init with take of SPHConversation(v254, v239 + 304);
      v377 = *(v1 + 2312);
      v378 = *(v1 + 2264);
      v379 = *(v1 + 2224);
      v491 = *(v1 + 2216);
      v380 = *(v1 + 2144);
      v481 = *(v1 + 2304);
      v485 = *(v1 + 2136);
      __swift_destroy_boxed_opaque_existential_1((v1 + 1536));
      *(v1 + 1960) = v239;
      outlined init with copy of SignalProviding(v1 + 1416, v1 + 256);
      outlined init with copy of SignalProviding(v380 + 56, v1 + 416);
      v381 = type metadata accessor for PhoneProtectedAppCheckStrategy();
      v382 = swift_allocObject();
      outlined init with take of SPHConversation((v1 + 256), v382 + 16);
      outlined init with take of SPHConversation((v1 + 416), v382 + 56);
      *(v1 + 1240) = v381;
      OUTLINED_FUNCTION_16_36();
      *(v1 + 1248) = lazy protocol witness table accessor for type PhoneCallFlow and conformance PhoneCallFlow(v383, v384);
      *(v1 + 1216) = v382;
      v385 = *(v475 + 72);
      v386 = type metadata accessor for INIntent();
      OUTLINED_FUNCTION_15_36();
      v389 = lazy protocol witness table accessor for type PhoneCallFlow and conformance PhoneCallFlow(v387, v388);
      v390 = v385(v378, v1 + 1960, v1 + 1216, v471, v386, v389, v477, v475);

      __swift_destroy_boxed_opaque_existential_1((v1 + 1216));
      __swift_destroy_boxed_opaque_existential_1((v1 + 1456));
      *(v1 + 1968) = v390;
      (*(*v380 + 216))(v378, v1 + 1416, v481, v377);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow016AnyAppResolutionC0CySo8INIntentCGMd, &_s11SiriKitFlow016AnyAppResolutionC0CySo8INIntentCGMR);
      lazy protocol witness table accessor for type AnyAppResolutionFlow<INIntent> and conformance AnyAppResolutionFlow<A>();
      static ExecuteResponse.ongoing<A>(next:childCompletion:)();

      (*(v379 + 8))(v378, v491);

      v391 = (v1 + 1416);
      goto LABEL_111;
    case 2u:
      v474 = (v1 + 1936);
      v466 = (v1 + 1888);
      v75 = *(v1 + 2296);
      v76 = *(v1 + 2256);
      v77 = *(v1 + 2224);
      v78 = *(v1 + 2216);
      v79 = *(v1 + 2144);
      v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5InputV5input_09PhoneCallC14DelegatePlugin0fG8NLIntent_p05phonegJ0SS10intentTypeAE12AnnotatedAppV08resolvedO0tMd, &_s11SiriKitFlow5InputV5input_09PhoneCallC14DelegatePlugin0fG8NLIntent_p05phonegJ0SS10intentTypeAE12AnnotatedAppV08resolvedO0tMR);
      v81 = v80[12];
      v82 = (v75 + v80[16]);
      v83 = *v82;
      v84 = v82[1];
      v85 = (v75 + v80[20]);
      v86 = *v85;
      v87 = v85[2];
      *(v1 + 224) = v85[1];
      *(v1 + 240) = v87;
      *(v1 + 208) = v86;
      v470 = *(v77 + 32);
      v470(v76, v75, v78);
      outlined init with take of SPHConversation((v75 + v81), v1 + 976);
      PhoneCallFlow.selfLogging(input:phoneCallNLIntent:intentTypeName:resolvedApp:)();

      v88 = *(v79 + 176);
      v89 = *(v88 + 16);
      v479 = v1;
      v1 = *(v1 + 216);

      v90 = 0;
      v91 = _swiftEmptyArrayStorage;
      v482 = v89;
LABEL_13:
      while (2)
      {
        if (v90 == v89)
        {

          v192 = 0;
          v193 = _swiftEmptyArrayStorage[2];
          v194 = _swiftEmptyArrayStorage;
LABEL_44:
          v195 = &_swiftEmptyArrayStorage[2 * v192 + 5];
          while (v193 != v192)
          {
            if (v192 >= _swiftEmptyArrayStorage[2])
            {
              goto LABEL_122;
            }

            v196 = v195 + 2;
            ++v192;
            v198 = *(v195 - 1);
            v197 = *v195;

            v199._countAndFlagsBits = v198;
            v199._object = v197;
            v200.value = PhoneCallIntentClassNames.init(intentClassName:)(v199).value;
            v195 = v196;
            if (v200.value != PhoneCallFlowDelegatePlugin_PhoneCallIntentClassNames_unknownDefault)
            {
              value = v200.value;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v194[2] + 1, 1, v194);
                v194 = v204;
              }

              v203 = v194[2];
              v202 = v194[3];
              if (v203 >= v202 >> 1)
              {
                specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v202 > 1, v203 + 1, 1, v194);
                v194 = v205;
              }

              v194[2] = v203 + 1;
              *(v194 + v203 + 32) = value;
              goto LABEL_44;
            }
          }

          if (v194[2])
          {
            v1 = v479;
            v206 = *(v479 + 2144);
            v207 = *(v194 + 32);

            v208 = *(v479 + 208);
            *(v479 + 2344) = v208;
            if (static UnsupportedPhoneCall.from(nlIntent:app:sharedGlobals:)((v479 + 976), v208, (v206 + 56)) == 14)
            {
              v209 = *(v479 + 2256);
              v462 = v207;
              v210 = *(v479 + 2248);
              v455 = *(v479 + 2232);
              v211 = *(v479 + 2224);
              v212 = *(v479 + 2216);
              v460 = *(v479 + 2144);
              v489 = *(v479 + 2136);
              type metadata accessor for PhoneIntentsRestrictedGuardFlow();
              v213 = PhoneCallIntentClassNames.getTypeName()();
              outlined init with copy of SignalProviding(v206 + 56, v479 + 1016);
              outlined init with copy of SignalProviding(v479 + 976, v479 + 1056);

              *(v479 + 2008) = PhoneIntentsRestrictedGuardFlow.__allocating_init(selectedIntent:app:sharedGlobals:phoneCallNLIntent:)(v213._countAndFlagsBits, v213._object, v208, (v479 + 1016), (v479 + 1056));
              v214 = v211;
              v215 = *(v211 + 16);
              v216 = v210;
              v215(v210, v209, v212);
              outlined init with copy of SignalProviding(v479 + 976, v479 + 1136);
              *(v479 + 2104) = *(v479 + 216);
              *v474 = *(v479 + 224);
              *(v479 + 2112) = *(v479 + 248);
              v217 = v214;
              v218 = (*(v214 + 80) + 24) & ~*(v214 + 80);
              v219 = (v218 + v455 + 7) & 0xFFFFFFFFFFFFFFF8;
              v220 = swift_allocObject();
              *(v220 + 16) = v460;
              v470(v220 + v218, v216, v212);
              outlined init with take of SPHConversation((v479 + 1136), v220 + v219);
              *(v220 + v219 + 40) = v462;
              v221 = (v220 + ((v218 + v455 + 55) & 0xFFFFFFFFFFFFFFF8));
              v222 = *(v479 + 240);
              v221[1] = *(v479 + 224);
              v221[2] = v222;
              *v221 = *(v479 + 208);

              outlined init with copy of PhoneCallFlowState<INHangUpCallIntent, INHangUpCallIntentResponse>(v479 + 2104, v479 + 2000, &_sShySSGMd, &_sShySSGMR);
              outlined init with copy of PhoneCallFlowState<INHangUpCallIntent, INHangUpCallIntentResponse>(v474, v479 + 1824, &_sSSSgMd, &_sSSSgMR);
              outlined init with copy of PhoneCallFlowState<INHangUpCallIntent, INHangUpCallIntentResponse>(v479 + 2112, v479 + 1992, &_sShySSGMd, &_sShySSGMR);
              lazy protocol witness table accessor for type PhoneCallFlow and conformance PhoneCallFlow(&lazy protocol witness table cache variable for type PhoneIntentsRestrictedGuardFlow and conformance PhoneIntentsRestrictedGuardFlow, type metadata accessor for PhoneIntentsRestrictedGuardFlow);
              static ExecuteResponse.ongoing<A>(next:childCompletion:)();

              outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v479 + 2104, &_sShySSGMd, &_sShySSGMR);
              OUTLINED_FUNCTION_28_2();
              outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v223, v224, v225);
              outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v479 + 2112, &_sShySSGMd, &_sShySSGMR);

              __swift_destroy_boxed_opaque_existential_1((v479 + 976));
              (*(v217 + 8))(v209, v212);
            }

            else
            {
              if (UnsupportedPhoneCall.rawValue.getter() == 0xD00000000000001ELL && 0x80000000004569A0 == v325)
              {
              }

              else
              {
                v327 = _stringCompareWithSmolCheck(_:_:expecting:)();

                if ((v327 & 1) == 0)
                {
                  v328 = swift_task_alloc();
                  *(v479 + 2352) = v328;
                  *v328 = v479;
                  v328[1] = PhoneCallFlow.execute();
                  v329 = *(v479 + 2256);
                  v330 = *(v479 + 2144);
                  v331 = *(v479 + 2136);
                  OUTLINED_FUNCTION_35_15();

                  return PhoneCallFlow.publishUnsupportedOutput(unsupportedReason:input:intentName:app:)(v332, v333, v334, v335, v336);
                }
              }

              if (one-time initialization token for siriPhone != -1)
              {
                OUTLINED_FUNCTION_6_2();
              }

              v364 = type metadata accessor for Logger();
              v365 = OUTLINED_FUNCTION_12_1(v364, static Logger.siriPhone);
              v366 = static os_log_type_t.debug.getter();
              if (os_log_type_enabled(v365, v366))
              {
                v367 = OUTLINED_FUNCTION_65_0();
                *v367 = 0;
                _os_log_impl(&dword_0, v365, v366, "#PhoneCallFlow Returning unsupported device GroupFaceTime", v367, 2u);
                OUTLINED_FUNCTION_26_0();
              }

              v1 = v479;
              v368 = *(v479 + 2224);
              v484 = *(v479 + 2216);
              v490 = *(v479 + 2256);
              v369 = *(v479 + 2184);
              v370 = *(v479 + 2136);

              outlined init with copy of SignalProviding(v206 + 56, v479 + 1296);
              type metadata accessor for StartCallCATs();
              OUTLINED_FUNCTION_40_17();
              static CATOption.defaultMode.getter();
              OUTLINED_FUNCTION_52_12();
              CATWrapper.__allocating_init(options:globals:)();
              type metadata accessor for StartCallCATsSimple();
              OUTLINED_FUNCTION_40_17();
              static CATOption.defaultMode.getter();
              OUTLINED_FUNCTION_52_12();
              CATWrapperSimple.__allocating_init(options:globals:)();
              type metadata accessor for PhoneCallDisplayTextCATsSimple();
              OUTLINED_FUNCTION_40_17();
              static CATOption.defaultMode.getter();
              OUTLINED_FUNCTION_52_12();
              CATWrapperSimple.__allocating_init(options:globals:)();
              type metadata accessor for UnsupportedFlowCATsSimple();
              OUTLINED_FUNCTION_40_17();
              static CATOption.defaultMode.getter();
              OUTLINED_FUNCTION_52_12();
              CATWrapperSimple.__allocating_init(options:globals:)();
              type metadata accessor for UnsupportedFaceTimeOutputProvider();
              swift_allocObject();
              v371 = UnsupportedFaceTimeOutputProvider.init(unsupportedPhoneCall:sharedGlobals:startCallCats:startCallCATsSimple:phoneCallDisplayTextCATsSimple:unsupportedFlowCATsSimple:)();
              OUTLINED_FUNCTION_40_9(v371);
              *(v479 + 1984) = (*(v372 + 136))();
              type metadata accessor for SimpleOutputFlowAsync();
              static ExecuteResponse.complete<A>(next:)();

              *(v479 + 2064) = *(v479 + 216);
              outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v479 + 2064, &_sShySSGMd, &_sShySSGMR);
              *v466 = *(v479 + 224);
              outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v466, &_sSSSgMd, &_sSSSgMR);
              *(v479 + 2072) = *(v479 + 248);
              outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v479 + 2072, &_sShySSGMd, &_sShySSGMR);
              __swift_destroy_boxed_opaque_existential_1((v479 + 976));
              (*(v368 + 8))(v490, v484);
            }
          }

          else
          {

            if (one-time initialization token for siriPhone != -1)
            {
              OUTLINED_FUNCTION_6_2();
            }

            v257 = type metadata accessor for Logger();
            v258 = OUTLINED_FUNCTION_12_1(v257, static Logger.siriPhone);
            v259 = static os_log_type_t.error.getter();
            if (OUTLINED_FUNCTION_8_0(v259))
            {
              v260 = OUTLINED_FUNCTION_65_0();
              OUTLINED_FUNCTION_11_1(v260);
              OUTLINED_FUNCTION_14_1(&dword_0, v261, v262, "#PhoneCallFlow appResolutionComplete is completed but we can't find a valid intent to match");
              OUTLINED_FUNCTION_12_3();
            }

            v263 = *(v479 + 2256);
            v264 = *(v479 + 2224);
            v265 = *(v479 + 2216);
            v266 = *(v479 + 2192);
            v267 = *(v479 + 2184);
            v268 = *(v479 + 2160);
            v269 = *(v479 + 2144);
            v270 = *(v479 + 2136);

            Input.parse.getter();
            __swift_storeEnumTagSinglePayload(v268, 0, 1, v266);
            type metadata accessor for StartCallCATsSimple();
            static CATOption.defaultMode.getter();
            v271 = CATWrapperSimple.__allocating_init(options:globals:)();
            v272 = (v269 + 56);
            v1 = v479;
            v273 = static CommonOutputs.conversionError(sharedGlobals:parse:startCallCATsSimple:)(v272, v268, v271);

            v274 = outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v268, &_s11SiriKitFlow5ParseOSgMd, &_s11SiriKitFlow5ParseOSgMR);
            (*(*v273 + 112))(v274);
            OUTLINED_FUNCTION_19_7();

            *(v479 + 1976) = v273;
            type metadata accessor for SimpleOutputFlowAsync();
            static ExecuteResponse.complete<A>(next:)();
            v275 = *(v479 + 208);

            *(v479 + 2120) = *(v479 + 216);
            outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v479 + 2120, &_sShySSGMd, &_sShySSGMR);
            *v476 = *(v479 + 224);
            outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v476, &_sSSSgMd, &_sSSSgMR);
            *(v479 + 1952) = *(v479 + 248);
            outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v479 + 1952, &_sShySSGMd, &_sShySSGMR);

            __swift_destroy_boxed_opaque_existential_1((v479 + 976));
            v276 = *(v264 + 8);
            v277 = OUTLINED_FUNCTION_55();
            v278(v277);
          }

LABEL_112:
          v401 = *(v1 + 2296);
          v402 = *(v1 + 2288);
          v403 = *(v1 + 2272);
          v404 = *(v1 + 2264);
          v405 = *(v1 + 2256);
          v406 = *(v1 + 2248);
          v407 = v1;
          v408 = *(v1 + 2240);
          v409 = v407[276];
          v410 = v407[273];
          v411 = v407[272];
          v486 = v407[271];
          v492 = v407[270];

          OUTLINED_FUNCTION_11();
          OUTLINED_FUNCTION_35_15();

          __asm { BRAA            X1, X16 }
        }

        v92 = v90;
        if (v90 < *(v88 + 16))
        {
          ++v90;
          if (!*(v1 + 16))
          {
            continue;
          }

          v93 = (v88 + 32 + 16 * v92);
          v95 = *v93;
          v94 = v93[1];
          v96 = *(v1 + 40);
          Hasher.init(_seed:)();

          String.hash(into:)();
          v97 = Hasher._finalize()();
          v98 = ~(-1 << *(v1 + 32));
          do
          {
            v99 = v97 & v98;
            if (((*(v1 + 56 + (((v97 & v98) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v97 & v98)) & 1) == 0)
            {

              goto LABEL_13;
            }

            v100 = (*(v1 + 48) + 16 * v99);
            if (*v100 == v95 && v100[1] == v94)
            {
              break;
            }

            v102 = _stringCompareWithSmolCheck(_:_:expecting:)();
            v97 = v99 + 1;
          }

          while ((v102 & 1) == 0);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v103 = _swiftEmptyArrayStorage[2];
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          v104 = _swiftEmptyArrayStorage[2];
          if (v104 >= _swiftEmptyArrayStorage[3] >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          _swiftEmptyArrayStorage[2] = v104 + 1;
          v105 = &_swiftEmptyArrayStorage[2 * v104];
          v105[4] = v95;
          v105[5] = v94;
          v89 = v482;
          continue;
        }

        break;
      }

      __break(1u);
LABEL_122:
      __break(1u);
LABEL_123:
      OUTLINED_FUNCTION_6_2();
LABEL_30:
      v115 = *(v1 + 2144);
      v116 = type metadata accessor for Logger();
      __swift_project_value_buffer(v116, static Logger.siriPhone);
      OUTLINED_FUNCTION_5();

      v117 = Logger.logObject.getter();
      v118 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v117, v118))
      {
        v119 = *(v1 + 2144);
        v120 = swift_slowAlloc();
        *&v494[0] = swift_slowAlloc();
        *v120 = 136315394;
        v121 = v1;
        v122 = *(v119 + 176);

        v123 = Array.description.getter();
        v125 = v124;

        v126 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v123, v125, v494);

        *(v120 + 4) = v126;
        *(v120 + 12) = 2080;
        v127 = PhoneCallIntentClassNames.intentInstance.getter(v91);
        v128 = [v127 _className];

        v129 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v131 = v130;

        v132 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v129, v131, v494);

        *(v120 + 14) = v132;
        v1 = v121;
        _os_log_impl(&dword_0, v117, v118, "#PhoneCallFlow From list %s, selecting %s", v120, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_26_0();
        OUTLINED_FUNCTION_12_3();
      }

      v133 = swift_task_alloc();
      *(v1 + 2360) = v133;
      *v133 = v1;
      v133[1] = PhoneCallFlow.execute();
      v134 = *(v1 + 2240);
      v135 = *(v1 + 2144);
      OUTLINED_FUNCTION_35_15();

      return PhoneCallFlow.chooseRCHFlow(input:phoneCallNLIntent:intentName:resolvedApp:)();
    case 3u:
      v106 = *(v1 + 2296);
      v107 = *(v1 + 2240);
      v108 = *(v1 + 2224);
      v109 = *(v1 + 2216);
      v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5InputV5input_09PhoneCallC14DelegatePlugin0fG8NLIntent_p05phonegJ0AE0fG16IntentClassNamesO08selectedL4NameAE12AnnotatedAppV08resolvedR0tMd, &_s11SiriKitFlow5InputV5input_09PhoneCallC14DelegatePlugin0fG8NLIntent_p05phonegJ0AE0fG16IntentClassNamesO08selectedL4NameAE12AnnotatedAppV08resolvedR0tMR);
      v111 = v110[12];
      LOBYTE(v91) = *(v106 + v110[16]);
      v112 = (v106 + v110[20]);
      v114 = v112[1];
      v113 = v112[2];
      *(v1 + 160) = *v112;
      *(v1 + 176) = v114;
      *(v1 + 192) = v113;
      (*(v108 + 32))(v107, v106, v109);
      outlined init with take of SPHConversation((v106 + v111), v1 + 936);
      if (one-time initialization token for siriPhone == -1)
      {
        goto LABEL_30;
      }

      goto LABEL_123;
    case 4u:
      v74 = *(v1 + 2136);
      static ExecuteResponse.complete()();
      goto LABEL_112;
    default:
      v5 = *(v1 + 2208);
      v6 = *(v1 + 2200);
      v7 = *(v1 + 2192);
      v8 = *(v1 + 2144);
      (*(*(v1 + 2224) + 32))(*(v1 + 2272), *(v1 + 2296), *(v1 + 2216));
      v478 = v1;
      v9 = v8[11];
      __swift_project_boxed_opaque_existential_1(v8 + 7, v8[10]);
      v10 = *(v9 + 72);
      v11 = OUTLINED_FUNCTION_19_7();
      v12 = v9;
      v1 = v478;
      v14 = v13(v11, v12);
      Input.parse.getter();
      (*(*v14 + 192))(v5);

      v16 = *(v6 + 8);
      v15 = v6 + 8;
      v16(v5, v7);
      if (!*(v478 + 840))
      {
        outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v478 + 816, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMR);
        v255 = type metadata accessor for TransformationError();
        lazy protocol witness table accessor for type PhoneCallFlow and conformance PhoneCallFlow(&lazy protocol witness table cache variable for type TransformationError and conformance TransformationError, &type metadata accessor for TransformationError);
        swift_allocError();
        *v256 = 0xD00000000000001FLL;
        v256[1] = 0x800000000045E3B0;
        (*(*(v255 - 8) + 104))(v256, enum case for TransformationError.cannotTransform(_:), v255);
        swift_willThrow();
        if (one-time initialization token for siriPhone != -1)
        {
          OUTLINED_FUNCTION_6_2();
        }

        v345 = type metadata accessor for Logger();
        __swift_project_value_buffer(v345, static Logger.siriPhone);
        OUTLINED_FUNCTION_40_0();
        swift_errorRetain();
        v346 = Logger.logObject.getter();
        v347 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v346, v347))
        {
          v348 = OUTLINED_FUNCTION_42();
          v349 = swift_slowAlloc();
          *&v494[0] = v349;
          *v348 = 136315138;
          swift_getErrorValue();
          v350 = *(v478 + 1776);
          v351 = *(v478 + 1784);
          v352 = *(v478 + 1792);
          v353 = Error.localizedDescription.getter();
          v355 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v353, v354, v494);

          *(v348 + 4) = v355;
          v1 = v478;
          _os_log_impl(&dword_0, v346, v347, "#PhoneCallFlow Encountered error when converting Input: %s", v348, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v349);
          OUTLINED_FUNCTION_26_0();
          OUTLINED_FUNCTION_26_0();
        }

        v356 = *(v1 + 2272);
        v357 = *(v1 + 2224);
        v358 = *(v1 + 2216);
        v359 = *(v1 + 2192);
        v1 = *(v478 + 2184);
        v360 = *(v478 + 2160);
        v361 = *(v478 + 2136);
        Input.parse.getter();
        __swift_storeEnumTagSinglePayload(v360, 0, 1, v359);
        type metadata accessor for StartCallCATsSimple();
        OUTLINED_FUNCTION_57_13();
        static CATOption.defaultMode.getter();
        v362 = OUTLINED_FUNCTION_46_17();
        static CommonOutputs.conversionError(sharedGlobals:parse:startCallCATsSimple:)(v8 + 7, v360, v362);
        OUTLINED_FUNCTION_34_0();

        v363 = outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v360, &_s11SiriKitFlow5ParseOSgMd, &_s11SiriKitFlow5ParseOSgMR);
        (*(*v359 + 112))(v363);
        OUTLINED_FUNCTION_61();

        *(v1 + 2024) = v359;
        type metadata accessor for SimpleOutputFlowAsync();
        static ExecuteResponse.complete<A>(next:)();

        (*(v357 + 8))(v356, v358);
        goto LABEL_112;
      }

      outlined init with take of SPHConversation((v478 + 816), v478 + 1096);
      v17 = *(v478 + 1128);
      __swift_project_boxed_opaque_existential_1((v478 + 1096), *(v478 + 1120));
      OUTLINED_FUNCTION_14_7();
      if (PhoneCallNLIntent.hasCancellation()())
      {
        v18 = v8[10];
        v19 = v8[11];
        OUTLINED_FUNCTION_8_52(v8 + 7);
        v21 = *(v20 + 120);
        v22 = OUTLINED_FUNCTION_4_3();
        v23(v22);
        v24 = *(v478 + 480);
        v25 = *(v478 + 488);
        OUTLINED_FUNCTION_8_52((v478 + 456));
        v27 = *(v26 + 16);
        v28 = OUTLINED_FUNCTION_4_3();
        v29(v28);
        v30 = *(v478 + 400);
        v31 = *(v478 + 408);
        OUTLINED_FUNCTION_1_6((v478 + 376));
        v33 = *(v32 + 8);
        v34 = OUTLINED_FUNCTION_4_3();
        v36 = v35(v34);
        __swift_destroy_boxed_opaque_existential_1((v478 + 376));
        __swift_destroy_boxed_opaque_existential_1((v478 + 456));
        if ((v36 & 4) == 0)
        {
          v37 = v8[10];
          v38 = v8[11];
          OUTLINED_FUNCTION_8_52(v8 + 7);
          v40 = *(v39 + 120);
          v41 = OUTLINED_FUNCTION_4_3();
          v42(v41);
          v43 = *(v478 + 360);
          v44 = *(v478 + 368);
          OUTLINED_FUNCTION_8_52((v478 + 336));
          v46 = *(v45 + 16);
          v47 = OUTLINED_FUNCTION_4_3();
          v48(v47);
          v49 = *(v478 + 880);
          v50 = *(v478 + 888);
          OUTLINED_FUNCTION_1_6((v478 + 856));
          v52 = *(v51 + 8);
          v53 = OUTLINED_FUNCTION_4_3();
          v55 = v54(v53);
          __swift_destroy_boxed_opaque_existential_1((v478 + 856));
          __swift_destroy_boxed_opaque_existential_1((v478 + 336));
          if ((v55 & 1) == 0)
          {
            if (one-time initialization token for siriPhone != -1)
            {
              OUTLINED_FUNCTION_6_2();
            }

            v56 = type metadata accessor for Logger();
            OUTLINED_FUNCTION_12_1(v56, static Logger.siriPhone);
            v57 = static os_log_type_t.debug.getter();
            v58 = OUTLINED_FUNCTION_8_0(v57);
            if (v58)
            {
              v66 = OUTLINED_FUNCTION_65_0();
              OUTLINED_FUNCTION_11_1(v66);
              OUTLINED_FUNCTION_14_1(&dword_0, v67, v68, "#PhoneCallFlow received cancel from user, prompt cancel dialog");
              v58 = OUTLINED_FUNCTION_12_3();
            }

            OUTLINED_FUNCTION_24_24(v58, v59, v60, v61, v62, v63, v64, v65, v451, v452, v454, v457, v459, v461, v463, v465, v469, v472, v473, v476, v478);
            type metadata accessor for PhoneCallCommonCATsSimple();
            OUTLINED_FUNCTION_57_13();
            static CATOption.defaultMode.getter();
            OUTLINED_FUNCTION_46_17();
            static DialogPhase.canceled.getter();
            outlined init with copy of SignalProviding((v8 + 7), v1 + 896);
            v69 = type metadata accessor for DialogOutputFactory();
            OUTLINED_FUNCTION_41_1(v69);
            OUTLINED_FUNCTION_16_25();
            v70 = DialogOutputFactory.init(dialog:dialogPhase:sharedGlobals:)();
            v71 = OUTLINED_FUNCTION_40_9(v70);
            v73 = (*(v72 + 112))(v71);

            *(v1 + 2128) = v73;
            type metadata accessor for SimpleOutputFlowAsync();
LABEL_75:
            static ExecuteResponse.complete<A>(next:)();
LABEL_109:

            v398 = *(v15 + 8);
            v399 = OUTLINED_FUNCTION_55();
            goto LABEL_110;
          }
        }

        if (one-time initialization token for siriPhone != -1)
        {
          OUTLINED_FUNCTION_6_2();
        }

        v338 = type metadata accessor for Logger();
        v339 = OUTLINED_FUNCTION_12_1(v338, static Logger.siriPhone);
        v340 = static os_log_type_t.debug.getter();
        if (OUTLINED_FUNCTION_8_0(v340))
        {
          v341 = OUTLINED_FUNCTION_65_0();
          OUTLINED_FUNCTION_11_1(v341);
          v344 = "#PhoneCallFlow received cancel from user for a ringing or active call, sending hang up flow.";
LABEL_107:
          OUTLINED_FUNCTION_14_1(&dword_0, v342, v343, v344);
          OUTLINED_FUNCTION_12_3();
        }
      }

      else
      {
        v287 = *(v478 + 1128);
        __swift_project_boxed_opaque_existential_1((v478 + 1096), *(v478 + 1120));
        OUTLINED_FUNCTION_14_7();
        if (!PhoneCallNLIntent.hasRejection()())
        {
          v414 = static PhoneCallRequestSupportPolicy.getIntentFromInputParse(phoneCallNLIntent:sharedGlobals:)((v478 + 1096), v8 + 7);
          v415 = *(v478 + 2288);
          v416 = *(v478 + 2280);
          v417 = *(v478 + 2272);
          v418 = *(v478 + 2224);
          v419 = *(v478 + 2216);
          v493 = *(v478 + 2152);
          v420 = *(v478 + 2144);
          v421 = [v414 _className];

          v422 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v424 = v423;

          v425 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5InputV5input_09PhoneCallC14DelegatePlugin0fG8NLIntent_p05phonegJ0SS10intentTypetMd, &_s11SiriKitFlow5InputV5input_09PhoneCallC14DelegatePlugin0fG8NLIntent_p05phonegJ0SS10intentTypetMR);
          v426 = *(v425 + 48);
          v427 = (v415 + *(v425 + 64));
          (*(v418 + 16))(v415, v417, v419);
          outlined init with copy of SignalProviding(v478 + 1096, v415 + v426);
          *v427 = v422;
          v427[1] = v424;
          swift_storeEnumTagMultiPayload();
          v428 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin13PhoneCallFlow_state;
          swift_beginAccess();

          v429 = v420 + v428;
          v430 = v422;
          outlined assign with take of PhoneCallFlow.State(v415, v429);
          swift_endAccess();
          v431 = OUTLINED_FUNCTION_0();
          v433 = static PhoneCallFlow.buildIntentTypeSequence(intentTypeName:)(v431, v432);
          v434 = *(v420 + 176);
          *(v420 + 176) = v433;

          if (one-time initialization token for siriPhone != -1)
          {
            OUTLINED_FUNCTION_6_2();
          }

          v435 = *(v478 + 2144);
          v436 = type metadata accessor for Logger();
          __swift_project_value_buffer(v436, static Logger.siriPhone);
          OUTLINED_FUNCTION_40_0();

          v437 = Logger.logObject.getter();
          v438 = static os_log_type_t.debug.getter();

          if (os_log_type_enabled(v437, v438))
          {
            v439 = swift_slowAlloc();
            *&v494[0] = swift_slowAlloc();
            *v439 = 136315394;
            v440 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v430, v424, v494);

            *(v439 + 4) = v440;
            *(v439 + 12) = 2080;
            v441 = *(v420 + 176);

            v442 = Array.description.getter();
            v444 = v443;

            v445 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v442, v444, v494);

            *(v439 + 14) = v445;
            _os_log_impl(&dword_0, v437, v438, "#PhoneCallFlow Chose SKIntent name: %s. Will try %s. Proceeding to app resolution.", v439, 0x16u);
            swift_arrayDestroy();
            v1 = v478;
            OUTLINED_FUNCTION_26_0();
            OUTLINED_FUNCTION_26_0();
          }

          else
          {
          }

          v446 = *(v1 + 2272);
          v447 = *(v1 + 2224);
          v448 = *(v1 + 2216);
          v449 = *(v1 + 2136);
          static ExecuteResponse.replan(requireInput:)();
          v450 = *(v447 + 8);
          v399 = OUTLINED_FUNCTION_0();
LABEL_110:
          v400(v399);
          v391 = (v1 + 1096);
LABEL_111:
          __swift_destroy_boxed_opaque_existential_1(v391);
          goto LABEL_112;
        }

        v288 = v8[10];
        v289 = v8[11];
        OUTLINED_FUNCTION_8_52(v8 + 7);
        v291 = *(v290 + 120);
        v292 = OUTLINED_FUNCTION_4_3();
        v293(v292);
        v294 = *(v478 + 640);
        v295 = *(v478 + 648);
        OUTLINED_FUNCTION_8_52((v478 + 616));
        v297 = *(v296 + 16);
        v298 = OUTLINED_FUNCTION_4_3();
        v299(v298);
        v300 = *(v478 + 600);
        v301 = *(v478 + 608);
        OUTLINED_FUNCTION_1_6((v478 + 576));
        v303 = *(v302 + 8);
        v304 = OUTLINED_FUNCTION_4_3();
        v306 = v305(v304);
        __swift_destroy_boxed_opaque_existential_1((v478 + 576));
        __swift_destroy_boxed_opaque_existential_1((v478 + 616));
        if ((v306 & 4) == 0)
        {
          if (one-time initialization token for siriPhone != -1)
          {
            OUTLINED_FUNCTION_6_2();
          }

          v307 = type metadata accessor for Logger();
          OUTLINED_FUNCTION_12_1(v307, static Logger.siriPhone);
          v308 = static os_log_type_t.debug.getter();
          v309 = OUTLINED_FUNCTION_8_0(v308);
          if (v309)
          {
            v317 = OUTLINED_FUNCTION_65_0();
            OUTLINED_FUNCTION_11_1(v317);
            OUTLINED_FUNCTION_14_1(&dword_0, v318, v319, "#PhoneCallFlow parse has rejection. Prompt cancel dialog.");
            v309 = OUTLINED_FUNCTION_12_3();
          }

          OUTLINED_FUNCTION_24_24(v309, v310, v311, v312, v313, v314, v315, v316, v451, v452, v454, v457, v459, v461, v463, v465, v469, v472, v473, v476, v478);
          type metadata accessor for PhoneCallCommonCATsSimple();
          OUTLINED_FUNCTION_57_13();
          static CATOption.defaultMode.getter();
          OUTLINED_FUNCTION_46_17();
          static DialogPhase.canceled.getter();
          outlined init with copy of SignalProviding((v8 + 7), v1 + 496);
          v320 = type metadata accessor for DialogOutputFactory();
          OUTLINED_FUNCTION_41_1(v320);
          OUTLINED_FUNCTION_16_25();
          v321 = DialogOutputFactory.init(dialog:dialogPhase:sharedGlobals:)();
          v322 = OUTLINED_FUNCTION_40_9(v321);
          v324 = (*(v323 + 112))(v322);

          *(v1 + 2080) = v324;
          type metadata accessor for SimpleOutputFlowAsync();
          goto LABEL_75;
        }

        if (one-time initialization token for siriPhone != -1)
        {
          OUTLINED_FUNCTION_6_2();
        }

        v392 = type metadata accessor for Logger();
        v339 = OUTLINED_FUNCTION_12_1(v392, static Logger.siriPhone);
        v393 = static os_log_type_t.debug.getter();
        if (OUTLINED_FUNCTION_8_0(v393))
        {
          v394 = OUTLINED_FUNCTION_65_0();
          OUTLINED_FUNCTION_11_1(v394);
          v344 = "#PhoneCallFlow received rejection from user for a ringing call, sending hang up flow.";
          goto LABEL_107;
        }
      }

      v395 = *(v478 + 2272);
      v15 = *(v478 + 2224);
      v396 = *(v478 + 2216);
      v397 = *(v478 + 2136);

      static HangUpDirectInvocationFlowFactory.makeHangUpFlow(sharedGlobals:)(v8 + 7);
      static ExecuteResponse.complete(next:)();
      goto LABEL_109;
  }
}

{
  OUTLINED_FUNCTION_28();
  v2 = v1;
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v5 = v4[292];
  v6 = v4[291];
  v7 = v4[290];
  v8 = *v0;
  OUTLINED_FUNCTION_4_2();
  *v9 = v8;

  __swift_destroy_boxed_opaque_existential_1((v2 + 1176));
  v10 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v10, v11, v12);
}

{
  v72 = v0;
  __swift_destroy_boxed_opaque_existential_1((v0 + 1256));
  v1 = *(v0 + 2184);
  v2 = *(v0 + 2144);
  v3 = v2[11];
  __swift_project_boxed_opaque_existential_1(v2 + 7, v2[10]);
  v4 = *(v3 + 104);
  v5 = OUTLINED_FUNCTION_5();
  v6(v5, v3);
  v62 = *(v0 + 1488);
  v63 = *(v0 + 1480);
  __swift_project_boxed_opaque_existential_1((v0 + 1456), v63);
  v7 = v2[22];
  outlined init with copy of SignalProviding((v2 + 2), v0 + 1496);
  outlined init with copy of SignalProviding((v2 + 7), v0 + 1536);
  type metadata accessor for StartCallCATsSimple();
  *(v0 + 1576) = 0u;
  *(v0 + 1592) = 0u;
  v66 = v0 + 1576;
  *(v0 + 1608) = 0;

  static CATOption.defaultMode.getter();
  v64 = OUTLINED_FUNCTION_66_9();
  type metadata accessor for PhoneCallDisplayTextCATsSimple();
  static CATOption.defaultMode.getter();
  v68 = OUTLINED_FUNCTION_66_9();
  v8 = type metadata accessor for ResponseFactory();
  OUTLINED_FUNCTION_41_1(v8);
  v9 = ResponseFactory.init()();
  if (one-time initialization token for instance != -1)
  {
    OUTLINED_FUNCTION_60_2();
  }

  v10 = *(v0 + 2168);
  v11 = static EligibleAppFinder.instance;
  v12 = type metadata accessor for AppInfoBuilder();
  v13 = OUTLINED_FUNCTION_79();
  v14 = type metadata accessor for PhoneAppResolutionOnDeviceFlowStrategy();
  v15 = swift_allocObject();
  *(v0 + 1640) = v8;
  *(v0 + 1648) = &protocol witness table for ResponseFactory;
  *(v0 + 1616) = v9;
  v60 = type metadata accessor for EligibleAppFinder();
  *(v0 + 1680) = v60;
  *(v0 + 1688) = &protocol witness table for EligibleAppFinder;
  *(v0 + 1656) = v11;
  *(v0 + 1720) = v12;
  *(v0 + 1728) = &protocol witness table for AppInfoBuilder;
  *(v0 + 1696) = v13;
  *(v15 + 16) = _swiftEmptyArrayStorage;
  *(v15 + 24) = 0;

  *(v15 + 344) = OUTLINED_FUNCTION_64_8();
  *(v15 + 352) = OUTLINED_FUNCTION_64_8();
  *(v15 + 360) = v14;
  *(v15 + 368) = &outlined read-only object #0 of PhoneCallFlow.execute();
  *(v15 + 376) = 0;
  *(v15 + 384) = 0;
  *(v15 + 392) = v14;
  *(v15 + 400) = &outlined read-only object #1 of PhoneCallFlow.execute();
  *(v15 + 408) = 0;
  *(v15 + 416) = 0;
  *(v15 + 424) = v14;
  v61 = v14;
  *(v15 + 432) = &outlined read-only object #2 of PhoneCallFlow.execute();
  *(v15 + 440) = 0u;
  *(v15 + 456) = 0u;
  *(v15 + 472) = 0u;
  *(v15 + 488) = 0;
  *(v15 + 192) = v7;
  outlined init with copy of SignalProviding(v0 + 1496, v15 + 32);
  v16 = *(v0 + 1568);
  __swift_project_boxed_opaque_existential_1((v0 + 1536), *(v0 + 1560));
  v17 = *(v16 + 8);
  v18 = OUTLINED_FUNCTION_5();
  v19(v18, v16);
  outlined init with take of SPHConversation((v0 + 296), v15 + 152);
  outlined init with copy of SignalProviding(v0 + 1536, v15 + 200);
  outlined init with copy of SignalProviding(v0 + 1656, v15 + 112);
  outlined init with copy of SignalProviding(v0 + 1696, v15 + 72);
  *(v15 + 240) = v64;
  *(v15 + 248) = v68;
  outlined init with copy of SignalProviding(v0 + 1616, v15 + 256);
  outlined init with copy of SignalProviding(v0 + 1536, v0 + 736);
  outlined init with copy of SignalProviding(v0 + 1656, v0 + 696);
  type metadata accessor for AppUsageProvider();
  memset(v70, 0, sizeof(v70));
  v71 = 0;
  OUTLINED_FUNCTION_79();
  OUTLINED_FUNCTION_40_0();

  AppResolver.init(appResolutionRules:)();
  v20 = type metadata accessor for PhoneAppResolutionHelper();
  v21 = OUTLINED_FUNCTION_41_1(v20);
  v22 = *(v0 + 720);
  v23 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 696, v22);
  OUTLINED_FUNCTION_9_1();
  v25 = v24;
  v27 = *(v26 + 64);
  v28 = OUTLINED_FUNCTION_45();
  (*(v25 + 16))(v28, v23, v22);
  v29 = specialized PhoneAppResolutionHelper.init(sharedGlobals:eligibleAppsFinder:smartAppSelection:phoneAppResolutionLogger:appUsageProvider:appResolver:)((v0 + 736), *v28, 0, v70, &type metadata for String, v10, v21);
  __swift_destroy_boxed_opaque_existential_1((v0 + 696));

  *(v15 + 296) = v29;
  outlined init with copy of PhoneCallFlowState<INHangUpCallIntent, INHangUpCallIntentResponse>(v66, v0 + 1336, &_s27PhoneCallFlowDelegatePlugin0A20AppResolutionLogging_pSgMd, &_s27PhoneCallFlowDelegatePlugin0A20AppResolutionLogging_pSgMR);
  if (*(v0 + 1360))
  {
    v30 = (v0 + 1736);

    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v66, &_s27PhoneCallFlowDelegatePlugin0A20AppResolutionLogging_pSgMd, &_s27PhoneCallFlowDelegatePlugin0A20AppResolutionLogging_pSgMR);
    OUTLINED_FUNCTION_49_13();
    outlined init with take of SPHConversation((v0 + 1336), v0 + 1736);
  }

  else
  {
    v30 = (v0 + 776);
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v0 + 1336, &_s27PhoneCallFlowDelegatePlugin0A20AppResolutionLogging_pSgMd, &_s27PhoneCallFlowDelegatePlugin0A20AppResolutionLogging_pSgMR);
    outlined init with copy of SignalProviding(v0 + 1536, v0 + 656);
    v31 = [objc_opt_self() sharedAnalytics];
    v59 = [v31 defaultMessageStream];

    *(v0 + 560) = v60;
    *(v0 + 568) = &protocol witness table for EligibleAppFinder;
    *(v0 + 536) = v11;
    *(v0 + 800) = &type metadata for PhoneAppResolutionLogger;
    *(v0 + 808) = &protocol witness table for PhoneAppResolutionLogger;
    OUTLINED_FUNCTION_50_15();
    v32 = swift_allocObject();
    *(v0 + 776) = v32;
    v33 = *(v0 + 688);
    __swift_project_boxed_opaque_existential_1((v0 + 656), *(v0 + 680));
    v34 = *(v33 + 112);

    v35 = OUTLINED_FUNCTION_33_4();
    if (v34(v35))
    {
      v36 = CurrentRequest.executionRequestId.getter();
      v38 = v37;
    }

    else
    {
      v36 = 0;
      v38 = 0;
    }

    *(v0 + 16) = v36;
    *(v0 + 24) = v38;
    *(v0 + 32) = v59;
    outlined init with copy of SignalProviding(v0 + 656, v0 + 40);
    v39 = *(v0 + 688);
    __swift_project_boxed_opaque_existential_1((v0 + 656), *(v0 + 680));
    v40 = *(v39 + 216);
    v41 = OUTLINED_FUNCTION_40_0();
    v42(v41, v39);
    outlined init with take of SPHConversation((v0 + 536), v0 + 120);
    memcpy((v32 + 16), (v0 + 16), 0x90uLL);

    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v66, &_s27PhoneCallFlowDelegatePlugin0A20AppResolutionLogging_pSgMd, &_s27PhoneCallFlowDelegatePlugin0A20AppResolutionLogging_pSgMR);
    OUTLINED_FUNCTION_49_13();
    __swift_destroy_boxed_opaque_existential_1((v0 + 656));
  }

  outlined init with take of SPHConversation(v30, v15 + 304);
  v43 = *(v0 + 2312);
  v44 = *(v0 + 2264);
  v45 = *(v0 + 2224);
  v69 = *(v0 + 2216);
  v46 = *(v0 + 2144);
  v65 = *(v0 + 2304);
  v67 = *(v0 + 2136);
  __swift_destroy_boxed_opaque_existential_1((v0 + 1536));
  *(v0 + 1960) = v15;
  outlined init with copy of SignalProviding(v0 + 1416, v0 + 256);
  outlined init with copy of SignalProviding(v46 + 56, v0 + 416);
  v47 = type metadata accessor for PhoneProtectedAppCheckStrategy();
  v48 = swift_allocObject();
  outlined init with take of SPHConversation((v0 + 256), v48 + 16);
  outlined init with take of SPHConversation((v0 + 416), v48 + 56);
  *(v0 + 1240) = v47;
  OUTLINED_FUNCTION_16_36();
  *(v0 + 1248) = lazy protocol witness table accessor for type PhoneCallFlow and conformance PhoneCallFlow(v49, v50);
  *(v0 + 1216) = v48;
  v51 = *(v62 + 72);
  v52 = type metadata accessor for INIntent();
  OUTLINED_FUNCTION_15_36();
  v55 = lazy protocol witness table accessor for type PhoneCallFlow and conformance PhoneCallFlow(v53, v54);
  v56 = v51(v44, v0 + 1960, v0 + 1216, v61, v52, v55, v63, v62);

  __swift_destroy_boxed_opaque_existential_1((v0 + 1216));
  __swift_destroy_boxed_opaque_existential_1((v0 + 1456));
  *(v0 + 1968) = v56;
  (*(*v46 + 216))(v44, v0 + 1416, v65, v43);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow016AnyAppResolutionC0CySo8INIntentCGMd, &_s11SiriKitFlow016AnyAppResolutionC0CySo8INIntentCGMR);
  lazy protocol witness table accessor for type AnyAppResolutionFlow<INIntent> and conformance AnyAppResolutionFlow<A>();
  static ExecuteResponse.ongoing<A>(next:childCompletion:)();

  (*(v45 + 8))(v44, v69);

  __swift_destroy_boxed_opaque_existential_1((v0 + 1416));
  OUTLINED_FUNCTION_2_77();

  OUTLINED_FUNCTION_11();

  return v57();
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  v2 = *(v1 + 2352);
  v3 = *v0;
  OUTLINED_FUNCTION_4_2();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v5, v6, v7);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_13_1();
  *v2 = v1;
  v4 = *(v3 + 2360);
  *v2 = *v0;
  *(v1 + 2368) = v5;

  v6 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v6, v7, v8);
}