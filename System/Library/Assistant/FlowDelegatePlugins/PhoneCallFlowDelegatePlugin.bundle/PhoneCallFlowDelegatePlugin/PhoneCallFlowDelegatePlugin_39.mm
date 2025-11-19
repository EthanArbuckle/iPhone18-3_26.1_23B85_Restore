uint64_t outlined destroy of SiriKitReliabilityCodes?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow0aB16ReliabilityCodesOSgMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t closure #1 in SiriKitEventSending.sendCallStateEvent(hangUpIntentResponse:)(uint64_t *a1)
{
  v1 = *a1;
  dispatch thunk of SiriKitEvent.SiriKitEventBuilder.app.setter();
  return dispatch thunk of SiriKitEvent.SiriKitEventBuilder.parameterName.setter();
}

uint64_t SiriKitEventSending.sendCallControlEvent(action:target:state:)(uint64_t a1, uint64_t a2, __int16 a3)
{
  v4 = a1;
  SiriKitEventSending.getTaskType(for:target:)(a1, a2);
  v5 = SiriKitEventSending.getTaskName(for:)(v4);
  v7 = v6;
  type metadata accessor for SiriKitEvent();
  v8 = swift_allocObject();
  *(v8 + 16) = v5;
  *(v8 + 24) = v7;
  *(v8 + 32) = a3;
  *(v8 + 33) = HIBYTE(a3) & 1;
  SiriKitEvent.__allocating_init(stateType:taskType:statusReason:_:)();
  dispatch thunk of SiriKitEventSending.send(_:)();
}

uint64_t static CallControlEventState.__derived_enum_equals(_:_:)(__int16 a1, __int16 a2)
{
  if ((a1 & 0x100) != 0)
  {
    if ((a2 & 0x100) == 0)
    {
      return 0;
    }
  }

  else
  {
    if ((a2 & 0x100) != 0)
    {
      return 0;
    }

    if (a1)
    {
      if ((a2 & 1) == 0)
      {
        return 0;
      }
    }

    else if (a2)
    {
      return 0;
    }
  }

  return 1;
}

BOOL CallControlEventFailureReason.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of CallControlEventFailureReason.init(rawValue:), v2);

  return v3 != 0;
}

BOOL protocol witness for RawRepresentable.init(rawValue:) in conformance CallControlEventFailureReason@<W0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = CallControlEventFailureReason.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

uint64_t SiriKitEventSending.getTaskType(for:target:)(uint64_t a1, uint64_t a2)
{
  if (a1 == 11)
  {
    return 0;
  }

  if (PhoneCallControlAction.rawValue.getter(a1) == 0xD000000000000011 && 0x8000000000452EF0 == v5)
  {
    goto LABEL_15;
  }

  v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v7)
  {
LABEL_16:
    strcpy(v18, "CallControl.");
    v16._countAndFlagsBits = PhoneCallControlAction.description.getter(a1);
    String.append(_:)(v16);

    return v18[0];
  }

  if (PhoneCallControlAction.rawValue.getter(a1) == 0xD000000000000010 && 0x8000000000452E60 == v8)
  {
LABEL_15:

    goto LABEL_16;
  }

  v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v10)
  {
    goto LABEL_16;
  }

  if (a2 == 5)
  {
    return 0;
  }

  v18[0] = PhoneCallControlNLIntent.Target.rawValue.getter(a2);
  v18[1] = v11;
  lazy protocol witness table accessor for type String and conformance String();
  v12 = StringProtocol.capitalized.getter();
  v14 = v13;

  strcpy(v17, "CallControl.");
  BYTE5(v17[1]) = 0;
  HIWORD(v17[1]) = -5120;
  v15._countAndFlagsBits = v12;
  v15._object = v14;
  String.append(_:)(v15);

  return v17[0];
}

uint64_t SiriKitEventSending.getTaskName(for:)(char a1)
{
  result = 28239;
  switch(a1)
  {
    case 1:
    case 2:
    case 5:
    case 7:
      result = 6710863;
      break;
    case 8:
    case 9:
    case 10:
    case 11:
      result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t closure #1 in SiriKitEventSending.sendCallControlEvent(action:target:state:)(uint64_t *a1, uint64_t a2, uint64_t a3, __int16 a4)
{
  v5 = *a1;

  result = dispatch thunk of SiriKitEvent.SiriKitEventBuilder.parameterName.setter();
  if ((a4 & 0x100) == 0 && (a4 & 1) == 0)
  {
    return dispatch thunk of SiriKitEvent.SiriKitEventBuilder.statusReasonDescription.setter();
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CallControlEventFailureReason and conformance CallControlEventFailureReason()
{
  result = lazy protocol witness table cache variable for type CallControlEventFailureReason and conformance CallControlEventFailureReason;
  if (!lazy protocol witness table cache variable for type CallControlEventFailureReason and conformance CallControlEventFailureReason)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CallControlEventFailureReason and conformance CallControlEventFailureReason);
  }

  return result;
}

unsigned __int16 *getEnumTagSinglePayload for CallControlEventState(unsigned __int16 *result, int a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = a2 + 0xFFFF;
  if ((a2 + 0xFFFF) <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (v2 < 0xFF0000)
  {
    v3 = 1;
  }

  if (v2 >= 0x10000)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  switch(v4)
  {
    case 1:
      v4 = *(result + 2);
      if (!*(result + 2))
      {
        return v4;
      }

      goto LABEL_17;
    case 2:
      v4 = result[1];
      if (!result[1])
      {
        return v4;
      }

      goto LABEL_17;
    case 3:
      __break(1u);
      return result;
    case 4:
      v4 = *(result + 1);
      if (!v4)
      {
        return v4;
      }

LABEL_17:
      v4 = (*result | (v4 << 16)) - 0xFFFF;
      break;
    default:
      return v4;
  }

  return v4;
}

uint64_t storeEnumTagSinglePayload for CallControlEventState(uint64_t result, int a2, int a3)
{
  v3 = a3 + 0xFFFF;
  if ((a3 + 0xFFFF) <= 0xFFFEFFFF)
  {
    v4 = 2;
  }

  else
  {
    v4 = 4;
  }

  if (v3 < 0xFF0000)
  {
    v4 = 1;
  }

  if (v3 >= 0x10000)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if (a2)
  {
    v7 = ((a2 - 1) >> 16) + 1;
    *result = a2 - 1;
    switch(v6)
    {
      case 1:
        *(result + 2) = v7;
        break;
      case 2:
        *(result + 2) = v7;
        break;
      case 3:
        goto LABEL_21;
      case 4:
        *(result + 2) = v7;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v6)
    {
      case 1:
        *(result + 2) = 0;
        break;
      case 2:
        *(result + 2) = 0;
        break;
      case 3:
LABEL_21:
        __break(1u);
        break;
      case 4:
        *(result + 2) = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t getEnumTag for CallControlEventState(unsigned __int8 *a1)
{
  if (a1[1])
  {
    return (*a1 | (a1[1] << 8)) - 255;
  }

  else
  {
    return 0;
  }
}

_BYTE *destructiveInjectEnumTag for CallControlEventState(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 - 1;
    v2 = ((a2 - 1) >> 8) + 1;
  }

  else
  {
    LOBYTE(v2) = 0;
  }

  result[1] = v2;
  return result;
}

_BYTE *storeEnumTagSinglePayload for CallControlEventFailureReason(_BYTE *result, int a2, int a3)
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

uint64_t SiriKitFlowFactoryProtocol.makeDelegateBasedRCHFlow<A>(delegate:app:intent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v24 = a4;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  v13 = type metadata accessor for RCHChildFlowProducers();
  v14 = type metadata accessor for Optional();
  OUTLINED_FUNCTION_7(v14);
  v16 = v15;
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v19);
  v21 = &v24 - v20;
  __swift_storeEnumTagSinglePayload(&v24 - v20, 1, 1, v13);
  v22 = (*(a6 + 40))(a1, a2, a3, v21, a5, a7, v24, a6);
  (*(v16 + 8))(v21, v14);
  return v22;
}

uint64_t SiriKitFlowFactoryProtocol.makeAuthenticationGuardFlow()(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UnlockDevicePolicy();
  v5 = OUTLINED_FUNCTION_7(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v5);
  OUTLINED_FUNCTION_4();
  v12 = v11 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11SiriKitFlow06CommonF5GuardVGMd, &_ss23_ContiguousArrayStorageCy11SiriKitFlow06CommonF5GuardVGMR);
  v13 = *(type metadata accessor for CommonFlowGuard() - 8);
  v14 = *(v13 + 72);
  v15 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_424FD0;
  static UnlockDevicePolicy.default.getter();
  static CommonFlowGuard.ensuringDeviceIsAuthenticated(using:)();
  (*(v7 + 8))(v12, v4);
  v17 = (*(a2 + 104))(v16, a1, a2);

  return v17;
}

uint64_t *SiriKitFlowFactory.makeContinueInAppAutoPunchOutFlow<A>(strategy:factory:rchRecord:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = static RCHChildFlowFactoryHelper.makeContinueInAppFlowWithAutomaticPunchOutProducer<A>(strategy:)();
  v5(a2, a3);
  OUTLINED_FUNCTION_7_75();
  v7 = a3;
  type metadata accessor for AnyFlow();
  Flow.eraseToAnyFlow()();
  OUTLINED_FUNCTION_11_62();
  return &v7;
}

uint64_t SiriKitFlowFactory.makeDelegateBasedRCHFlow<A>(delegate:app:intent:producers:)()
{
  RCHFlowDelegate.makeRCHFlow(app:intent:producers:)();
  type metadata accessor for RCHDelegateToRCHFlowStrategyAdapter();
  OUTLINED_FUNCTION_3_107();
  swift_getWitnessTable();
  type metadata accessor for RCHFlow();
  OUTLINED_FUNCTION_2_110();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_8_74();
  v0 = Flow.eraseToAnyValueFlow()();

  return v0;
}

uint64_t SiriKitFlowFactory.makeDelegateBasedRCHFlow<A>(delegate:input:)()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  v0 = type metadata accessor for RCHChildFlowProducers();
  v1 = type metadata accessor for Optional();
  OUTLINED_FUNCTION_7(v1);
  v3 = v2;
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v6);
  v8 = v12 - v7;
  __swift_storeEnumTagSinglePayload(v12 - v7, 1, 1, v0);
  v9 = RCHFlowDelegate.makeRCHFlow(producers:)();
  (*(v3 + 8))(v8, v1);
  v12[1] = v9;
  type metadata accessor for RCHDelegateToRCHFlowStrategyAdapter();
  OUTLINED_FUNCTION_3_107();
  swift_getWitnessTable();
  type metadata accessor for RCHFlow();
  OUTLINED_FUNCTION_2_110();
  swift_getWitnessTable();
  v10 = Flow.eraseToAnyValueFlow()();

  dispatch thunk of AnyValueFlow.on(input:)();
  return v10;
}

uint64_t SiriKitFlowFactory.makeVoiceCommandRCHFlow<A>(strategy:childFlowFactory:app:intent:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *a2;
  v30[1] = a4;
  v31 = v7;
  OUTLINED_FUNCTION_10_69(a1, a2, a3, a4, a5);
  v9 = v8;
  v11 = *(v10 + 64);
  __chkstk_darwin(v12);
  OUTLINED_FUNCTION_4();
  v15 = v14 - v13;
  v16 = type metadata accessor for RCHFlowFactory();
  OUTLINED_FUNCTION_7(v16);
  v18 = v17;
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_49_0();
  v22 = __chkstk_darwin(v21);
  v24 = v30 - v23;
  (*(v9 + 16))(v15, a1, a5, v22);

  RCHFlowFactory.init(strategy:childFlowFactory:)();
  v25 = RCHFlowFactory.makeRCHFlowWithResolvedApp(_:intent:)();
  (*(v18 + 8))(v24, v16);
  v32 = v25;
  v26 = *(v31 + class metadata base offset for RCHChildFlowFactory);
  v27 = *(v31 + class metadata base offset for RCHChildFlowFactory + 8);
  type metadata accessor for RCHFlowResult();
  v28 = type metadata accessor for AnyValueFlow();
  swift_getWitnessTable();
  VoiceCommandsParityFlow.eraseToAnyVoiceCommandsParityFlow()();
  OUTLINED_FUNCTION_7_75();
  return v28;
}

uint64_t SiriKitFlowFactory.makeAppResolutionFlow<A, B>(resolving:strategy:protectedAppStrategy:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15[3] = a4;
  v15[4] = a6;
  __swift_allocate_boxed_opaque_existential_1(v15);
  OUTLINED_FUNCTION_40(a4);
  (*(v8 + 16))();
  v9 = type metadata accessor for DefaultUnlockDeviceFlowStrategyAsync();
  v10 = swift_allocObject();
  v14[3] = v9;
  v14[4] = lazy protocol witness table accessor for type DefaultUnlockDeviceFlowStrategyAsync and conformance DefaultUnlockDeviceFlowStrategyAsync();
  v14[0] = v10;
  outlined init with copy of SignalProviding(a3, v13);
  v11 = static AppFlowFactory.makeOnDeviceAppResolutionFlow<A>(resolving:appResolutionStrategy:unlockDeviceStrategy:protectedAppCheckStrategy:)();
  outlined destroy of SpeakableString?(v13, &_s11SiriKitFlow25ProtectedAppCheckStrategy_pSgMd, &_s11SiriKitFlow25ProtectedAppCheckStrategy_pSgMR);
  outlined destroy of SpeakableString?(v14, &_s11SiriKitFlow012UnlockDeviceC13StrategyAsync_pSgMd, &_s11SiriKitFlow012UnlockDeviceC13StrategyAsync_pSgMR);
  __swift_destroy_boxed_opaque_existential_1(v15);
  return v11;
}

uint64_t SiriKitFlowFactory.makePersonalDomainActivityNotificationFlow<A>(strategy:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7[3] = a2;
  v7[4] = a3;
  __swift_allocate_boxed_opaque_existential_1(v7);
  OUTLINED_FUNCTION_40(a2);
  (*(v4 + 16))();
  v5 = type metadata accessor for PostPersonalDomainActivityNotificationFlow();
  OUTLINED_FUNCTION_41_1(v5);
  v7[0] = PostPersonalDomainActivityNotificationFlow.init(strategy:)();
  OUTLINED_FUNCTION_8_74();
  Flow.eraseToAnyFlow()();
  OUTLINED_FUNCTION_7_75();
  return v5;
}

uint64_t *SiriKitFlowFactory.makeExecuteOnRemoteFlow(inputToExecute:device:sharedGlobals:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ExecuteOnRemoteDeviceSpecification();
  v5 = OUTLINED_FUNCTION_7(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v5);
  OUTLINED_FUNCTION_4();
  v12 = v11 - v10;
  v13 = type metadata accessor for Input();
  v14 = OUTLINED_FUNCTION_7(v13);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  OUTLINED_FUNCTION_4();
  (*(v19 + 16))(v18 - v17, a1);
  (*(v7 + 16))(v12, a2, v4);
  OUTLINED_FUNCTION_6_86();
  v21 = *(v20 + 16);
  v22 = OUTLINED_FUNCTION_1_16();
  v23(v22);
  v24 = v41;
  v25 = v42;
  __swift_project_boxed_opaque_existential_1(v40, v41);
  v39[3] = v24;
  v39[4] = v25;
  __swift_allocate_boxed_opaque_existential_1(v39);
  OUTLINED_FUNCTION_40(v24);
  (*(v26 + 16))();
  OUTLINED_FUNCTION_6_86();
  v28 = *(v27 + 32);
  v29 = OUTLINED_FUNCTION_1_16();
  v30(v29);
  OUTLINED_FUNCTION_6_86();
  v32 = *(v31 + 8);
  v33 = OUTLINED_FUNCTION_1_16();
  v34(v33);
  v35 = type metadata accessor for ExecuteOnRemoteFlowStrategy();
  OUTLINED_FUNCTION_41_1(v35);
  ExecuteOnRemoteFlowStrategy.init(shouldFallbackOnAWDL:shouldSendSpeechPackage:shouldOutputErrorDialog:)();
  v36 = type metadata accessor for ExecuteOnRemoteFlow();
  OUTLINED_FUNCTION_41_1(v36);
  v37 = ExecuteOnRemoteFlow.init(inputToExecute:device:outputPublisher:aceService:deviceState:executeOnRemoteFlowStrategy:)();
  __swift_destroy_boxed_opaque_existential_1(v40);
  v40[0] = v37;
  Flow.eraseToAnyValueFlow()();
  OUTLINED_FUNCTION_11_62();
  return v40;
}

uint64_t *SiriKitFlowFactory.makeGuardFlow(withGuards:)()
{
  v1 = static CommonGuardFlowUtils.makeGuardFlow(withGuards:)();
  type metadata accessor for GuardFlow();
  Flow.eraseToAnyValueFlow()();
  OUTLINED_FUNCTION_11_62();
  return &v1;
}

uint64_t SiriKitFlowFactory.makeLocationAccessGuardFlow()()
{
  v0 = type metadata accessor for SiriLocationAccessGuardFlow();
  SiriLocationAccessGuardFlow.__allocating_init(needsPreciseLocation:)();
  OUTLINED_FUNCTION_8_74();
  Flow.eraseToAnyValueFlow()();
  OUTLINED_FUNCTION_7_75();
  return v0;
}

uint64_t *SiriKitFlowFactory.makeCompositionResolutionFlow(from:to:expectMultipleResolutionResults:nlContextUpdate:targetedRequest:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR) - 8) + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v6);
  outlined init with copy of NLContextUpdate?(a4, &v10 - v7);
  v8 = type metadata accessor for CompositionResolutionFlow();
  OUTLINED_FUNCTION_41_1(v8);

  v11 = CompositionResolutionFlow.init(from:to:expectMultipleResolutionResults:nlContextUpdate:targetedRequest:)();
  Flow.eraseToAnyValueFlow()();
  OUTLINED_FUNCTION_11_62();
  return &v11;
}

unint64_t lazy protocol witness table accessor for type DefaultUnlockDeviceFlowStrategyAsync and conformance DefaultUnlockDeviceFlowStrategyAsync()
{
  result = lazy protocol witness table cache variable for type DefaultUnlockDeviceFlowStrategyAsync and conformance DefaultUnlockDeviceFlowStrategyAsync;
  if (!lazy protocol witness table cache variable for type DefaultUnlockDeviceFlowStrategyAsync and conformance DefaultUnlockDeviceFlowStrategyAsync)
  {
    type metadata accessor for DefaultUnlockDeviceFlowStrategyAsync();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DefaultUnlockDeviceFlowStrategyAsync and conformance DefaultUnlockDeviceFlowStrategyAsync);
  }

  return result;
}

uint64_t Siri_Nlu_External_UserDialogAct.toParse.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1;
  v37 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMd, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMR);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  OUTLINED_FUNCTION_29_3();
  v6 = type metadata accessor for Siri_Nlu_External_UserParse();
  v7 = OUTLINED_FUNCTION_7(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  __chkstk_darwin(v7);
  OUTLINED_FUNCTION_12_5();
  v14 = v12 - v13;
  __chkstk_darwin(v15);
  v17 = &v36 - v16;
  Siri_Nlu_External_UserParse.init()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D27_Nlu_External_UserDialogActVGMd, &_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D27_Nlu_External_UserDialogActVGMR);
  v18 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  OUTLINED_FUNCTION_7(v18);
  v20 = v19;
  v22 = *(v21 + 72);
  v23 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_424FD0;
  (*(v20 + 16))(v24 + v23, v3, v18);
  Siri_Nlu_External_UserParse.userDialogActs.setter();
  (*(v9 + 16))(v14, v17, v6);
  v25 = enum case for Siri_Nlu_External_Parser.ParserIdentifier.nlv4(_:);
  v26 = type metadata accessor for Siri_Nlu_External_Parser.ParserIdentifier();
  OUTLINED_FUNCTION_23_1(v26);
  (*(v27 + 104))(v2, v25, v26);
  __swift_storeEnumTagSinglePayload(v2, 0, 1, v26);
  v28 = v37;
  OUTLINED_FUNCTION_14_6();
  USOParse.init(userParse:parserIdentifier:appBundleId:)();
  v29 = *(v9 + 8);
  v30 = OUTLINED_FUNCTION_43_3();
  v31(v30);
  v32 = enum case for Parse.uso(_:);
  v33 = type metadata accessor for Parse();
  OUTLINED_FUNCTION_23_1(v33);
  return (*(v34 + 104))(v28, v32);
}

uint64_t String.init(describing:)(uint64_t *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  v4 = __swift_mutable_project_boxed_opaque_existential_1(a1, v2);
  v5 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v4);
  OUTLINED_FUNCTION_4();
  v8 = v7 - v6;
  (*(v9 + 16))(v7 - v6);
  specialized String.init(describing:)(v8, v2, v3);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return OUTLINED_FUNCTION_43_3();
}

void Siri_Nlu_External_UserParse.preferredUserDialogAct.getter(uint64_t a1@<X8>)
{
  v55 = a1;
  v1 = type metadata accessor for Siri_Nlu_External_CorrectionOutcome.CorrectionType();
  v2 = OUTLINED_FUNCTION_7(v1);
  v54 = v3;
  v5 = *(v4 + 64);
  __chkstk_darwin(v2);
  OUTLINED_FUNCTION_12_5();
  v53 = v6 - v7;
  __chkstk_darwin(v8);
  v10 = &v49 - v9;
  v11 = type metadata accessor for Siri_Nlu_External_CorrectionOutcome();
  v12 = OUTLINED_FUNCTION_7(v11);
  v52 = v13;
  v15 = *(v14 + 64);
  __chkstk_darwin(v12);
  OUTLINED_FUNCTION_4();
  v18 = v17 - v16;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  OUTLINED_FUNCTION_12_5();
  v51 = v21 - v22;
  __chkstk_darwin(v23);
  v25 = &v49 - v24;
  v26 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v27 = OUTLINED_FUNCTION_7(v26);
  v29 = v28;
  v31 = *(v30 + 64);
  __chkstk_darwin(v27);
  OUTLINED_FUNCTION_4();
  v34 = v33 - v32;
  v35 = Siri_Nlu_External_UserParse.userDialogActs.getter();
  v58 = v35;
  specialized Collection.first.getter(v35);
  OUTLINED_FUNCTION_14_3(v25);
  if (v36)
  {
    outlined destroy of Siri_Nlu_External_UserDialogAct?(v25);
LABEL_16:
    specialized Collection.first.getter(v58);

    return;
  }

  v50 = v29;
  v37 = *(v29 + 32);
  v38 = OUTLINED_FUNCTION_14_6();
  v39(v38);
  if (*(v35 + 16) < 2uLL)
  {
    goto LABEL_15;
  }

  Siri_Nlu_External_UserParse.correctionOutcome.getter();
  Siri_Nlu_External_CorrectionOutcome.type.getter();
  (*(v52 + 8))(v18, v11);
  v41 = v53;
  v40 = v54;
  (*(v54 + 104))(v53, enum case for Siri_Nlu_External_CorrectionOutcome.CorrectionType.userInitiated(_:), v1);
  lazy protocol witness table accessor for type Siri_Nlu_External_UserParse and conformance Siri_Nlu_External_UserParse(&lazy protocol witness table cache variable for type Siri_Nlu_External_CorrectionOutcome.CorrectionType and conformance Siri_Nlu_External_CorrectionOutcome.CorrectionType, &type metadata accessor for Siri_Nlu_External_CorrectionOutcome.CorrectionType);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v42 = *(v40 + 8);
  v42(v41, v1);
  v42(v10, v1);
  if (v57 != v56 || (Siri_Nlu_External_UserDialogAct.hasRejected.getter() & 1) == 0)
  {
LABEL_15:
    (*(v50 + 8))(v34, v26);
    goto LABEL_16;
  }

  if (one-time initialization token for siriPhone != -1)
  {
    swift_once();
  }

  v43 = type metadata accessor for Logger();
  __swift_project_value_buffer(v43, static Logger.siriPhone);
  v44 = Logger.logObject.getter();
  v45 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    *v46 = 0;
    _os_log_impl(&dword_0, v44, v45, "#NLUUserParse detected a correction! Skipping first UserRejected", v46, 2u);
  }

  if (!*(v35 + 16))
  {
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v47 = v51;
  specialized Collection.first.getter(v35);
  OUTLINED_FUNCTION_14_3(v47);
  v48 = v50;
  if (!v36)
  {
    outlined destroy of Siri_Nlu_External_UserDialogAct?(v47);
    if (*(v35 + 16))
    {
      specialized Array.replaceSubrange<A>(_:with:)(0, 1);
      (*(v48 + 8))(v34, v26);
      goto LABEL_16;
    }

    goto LABEL_18;
  }

LABEL_19:
  __break(1u);
}

uint64_t Siri_Nlu_External_UserDialogAct.isRejectedOrCancelled.getter()
{
  if (Siri_Nlu_External_UserDialogAct.hasRejected.getter())
  {
    return 1;
  }

  return Siri_Nlu_External_UserDialogAct.hasCancelled.getter();
}

uint64_t Siri_Nlu_External_UserDialogAct.siriKitConfirmationState.getter@<X0>(uint64_t a1@<X8>)
{
  if (Siri_Nlu_External_UserDialogAct.hasAccepted.getter())
  {
    v2 = &enum case for SiriKitConfirmationState.confirmed(_:);
  }

  else
  {
    if ((Siri_Nlu_External_UserDialogAct.hasRejected.getter() & 1) == 0)
    {
      v11 = Siri_Nlu_External_UserDialogAct.hasCancelled.getter();
      v12 = type metadata accessor for SiriKitConfirmationState();
      OUTLINED_FUNCTION_23_1(v12);
      v7 = *(v13 + 104);
      if (v11)
      {
        v14 = &enum case for SiriKitConfirmationState.cancelled(_:);
      }

      else
      {
        v14 = &enum case for SiriKitConfirmationState.unset(_:);
      }

      v10 = *v14;
      v9 = a1;
      goto LABEL_10;
    }

    v2 = &enum case for SiriKitConfirmationState.rejected(_:);
  }

  v3 = *v2;
  v4 = type metadata accessor for SiriKitConfirmationState();
  v5 = OUTLINED_FUNCTION_23_1(v4);
  v7 = *(v6 + 104);
  v8 = v5;
  v9 = a1;
  v10 = v3;
LABEL_10:

  return v7(v9, v10, v8);
}

uint64_t Siri_Nlu_External_UserParse.siriKitConfirmationState.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  OUTLINED_FUNCTION_29_3();
  v5 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v6 = OUTLINED_FUNCTION_7(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6);
  OUTLINED_FUNCTION_4();
  v13 = v12 - v11;
  v14 = Siri_Nlu_External_UserParse.userDialogActs.getter();
  specialized Collection.first.getter(v14);

  OUTLINED_FUNCTION_14_3(v1);
  if (v15)
  {
    outlined destroy of Siri_Nlu_External_UserDialogAct?(v1);
    v16 = enum case for SiriKitConfirmationState.unset(_:);
    v17 = type metadata accessor for SiriKitConfirmationState();
    OUTLINED_FUNCTION_23_1(v17);
    return (*(v18 + 104))(a1, v16);
  }

  else
  {
    v19 = *(v8 + 32);
    v20 = OUTLINED_FUNCTION_14_6();
    v21(v20);
    Siri_Nlu_External_UserDialogAct.siriKitConfirmationState.getter(a1);
    return (*(v8 + 8))(v13, v5);
  }
}

uint64_t specialized Array.replaceSubrange<A>(_:with:)(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v4 = *(*v2 + 16);
  if (v4 < a2)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v5 = result;
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v7 = result - a2;
  if (__OFSUB__(0, v6))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  result = v4 - v6;
  if (__OFADD__(v4, v7))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(result, 1);
  v8 = *v2;
  v9 = *(type metadata accessor for Siri_Nlu_External_UserDialogAct() - 8);
  v10 = v8 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
  v11 = *(v9 + 72);
  v12 = v10 + v11 * v5;
  result = swift_arrayDestroy();
  if (!v6)
  {
LABEL_10:
    *v2 = v8;
    return result;
  }

  v13 = *(v8 + 16);
  if (__OFSUB__(v13, a2))
  {
    goto LABEL_16;
  }

  result = specialized UnsafeMutablePointer.moveInitialize(from:count:)(v10 + v11 * a2, v13 - a2, v12);
  v14 = *(v8 + 16);
  v15 = __OFADD__(v14, v7);
  v16 = v14 - v6;
  if (!v15)
  {
    *(v8 + 16) = v16;
    goto LABEL_10;
  }

LABEL_17:
  __break(1u);
  return result;
}

void specialized Array.replaceSubrange<A>(_:with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v7 = *v3;
  if (specialized Array.count.getter(*v3) < a2)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v8 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v9 = specialized Array.count.getter(a3);
  v10 = __OFSUB__(v9, v8);
  v11 = v9 - v8;
  if (v10)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v12 = specialized Array.count.getter(v7);
  v10 = __OFADD__(v12, v11);
  v13 = v12 + v11;
  if (v10)
  {
LABEL_13:
    __break(1u);
    return;
  }

  specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(v13, 1);

  specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)();
}

uint64_t specialized String.init(describing:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8[3] = a2;
  v8[4] = a3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v8);
  (*(*(a2 - 8) + 32))(boxed_opaque_existential_1, a1, a2);
  type metadata accessor for SiriNLUTypesPrintUtils();
  static SiriNLUTypesPrintUtils.printableProtoObject(object:)();
  v6 = String.init<A>(_:)();
  __swift_destroy_boxed_opaque_existential_1(v8);
  return v6;
}

uint64_t lazy protocol witness table accessor for type Siri_Nlu_External_UserParse and conformance Siri_Nlu_External_UserParse(unint64_t *a1, void (*a2)(uint64_t))
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

id static SiriPhoneActionFactory.makeConfirmAndRejectActions()()
{
  v1 = type metadata accessor for CommonDirectAction();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1);
  OUTLINED_FUNCTION_8_30();
  swift_storeEnumTagMultiPayload();
  type metadata accessor for SKIDirectInvocationPayload();
  CommonDirectAction.identifier.getter();
  v3 = SKIDirectInvocationPayload.__allocating_init(identifier:)();
  v4 = CommonDirectAction.userData.getter();
  v5 = specialized _dictionaryUpCast<A, B, C, D>(_:)(v4);

  outlined bridged method (mbnn) of @objc SKIDirectInvocationPayload.userData.setter(v5, v3);
  outlined destroy of CommonDirectAction(v0);
  v6 = objc_opt_self();
  v7 = [objc_allocWithZone(SKIDirectInvocationContext) init];
  v8 = [v6 runSiriKitExecutorCommandWithContext:v7 payload:v3];

  swift_storeEnumTagMultiPayload();
  CommonDirectAction.identifier.getter();
  v9 = SKIDirectInvocationPayload.__allocating_init(identifier:)();
  v10 = CommonDirectAction.userData.getter();
  v11 = specialized _dictionaryUpCast<A, B, C, D>(_:)(v10);

  outlined bridged method (mbnn) of @objc SKIDirectInvocationPayload.userData.setter(v11, v9);
  outlined destroy of CommonDirectAction(v0);
  v12 = [objc_allocWithZone(SKIDirectInvocationContext) init];
  v13 = [v6 runSiriKitExecutorCommandWithContext:v12 payload:v9];

  return v8;
}

id static SiriPhoneActionFactory.makeSelectionAction(contact:)(void *a1)
{
  v3 = type metadata accessor for CommonDirectAction();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3);
  OUTLINED_FUNCTION_8_30();
  *v1 = a1;
  swift_storeEnumTagMultiPayload();
  type metadata accessor for SKIDirectInvocationPayload();
  v5 = a1;
  CommonDirectAction.identifier.getter();
  v6 = SKIDirectInvocationPayload.__allocating_init(identifier:)();
  v7 = CommonDirectAction.userData.getter();
  v8 = specialized _dictionaryUpCast<A, B, C, D>(_:)(v7);

  outlined bridged method (mbnn) of @objc SKIDirectInvocationPayload.userData.setter(v8, v6);
  outlined destroy of CommonDirectAction(v1);
  v9 = objc_opt_self();
  v10 = [objc_allocWithZone(SKIDirectInvocationContext) init];
  v11 = [v9 runSiriKitExecutorCommandWithContext:v10 payload:v6];

  return v11;
}

INPerson __swiftcall SiriPhoneContact.toINPerson()()
{
  v3 = v1;
  v4 = v0;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PersonNameComponentsVSgMd, &_s10Foundation20PersonNameComponentsVSgMR);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v85 = &v77 - v7;
  v87 = type metadata accessor for PersonNameComponents();
  v8 = *(v87 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v87);
  v86 = &v77 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v3 + 248);
  v12 = OUTLINED_FUNCTION_29_31();
  v13(v12);
  if (v14)
  {
    v84 = String._bridgeToObjectiveC()();
  }

  else
  {
    v84 = 0;
  }

  v83 = v8;
  v15 = *(v3 + 296);
  v16 = OUTLINED_FUNCTION_29_31();
  switch(v15(v16))
  {
    case 1u:
    case 2u:
      v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v17 & 1) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    case 3u:
LABEL_8:
      v19 = OUTLINED_FUNCTION_29_31();
      v18 = 0;
      switch(v15(v19))
      {
        case 1u:

          goto LABEL_11;
        case 3u:
          goto LABEL_13;
        default:
          v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v20)
          {
LABEL_11:
            v18 = 2;
          }

          else
          {
            v18 = 0;
          }

          break;
      }

      break;
    default:

LABEL_7:
      v18 = 1;
      break;
  }

LABEL_13:
  v21 = objc_allocWithZone(INPersonHandle);
  v22 = v84;
  v23 = v84;
  v24 = @nonobjc INPersonHandle.init(value:type:label:)(0, 0, 0, v22);
  v25 = *(v3 + 152);
  v26 = v4;
  v27 = OUTLINED_FUNCTION_29_31();
  v29 = v28(v27);
  v82 = v23;
  if (!v30)
  {
    goto LABEL_17;
  }

  v31 = v29;
  OUTLINED_FUNCTION_13_54();
  if (!v32)
  {

LABEL_17:
    v36 = (*(v3 + 176))(v4, v3);
    if (v37)
    {
      v38 = v36;
      OUTLINED_FUNCTION_13_54();
      if (v39)
      {
        objc_allocWithZone(INPersonHandle);
        v40 = v23;
        v41 = @nonobjc INPersonHandle.init(value:type:label:)(v38, v2, 1, v84);

        v84 = v41;
      }

      else
      {
        v84 = v24;
      }
    }

    else
    {
      v84 = v24;
    }

    goto LABEL_22;
  }

  v33 = objc_allocWithZone(INPersonHandle);
  v34 = v23;
  v26 = v4;
  v35 = @nonobjc INPersonHandle.init(value:type:label:emergencyType:)(v31, v2, 2, v84, v18);

  v84 = v35;
LABEL_22:
  v42 = v86;
  PersonNameComponents.init()();
  v43 = *(v3 + 104);
  v44 = OUTLINED_FUNCTION_3_108();
  v43(v44);
  if (v88[1] == 1)
  {
    OUTLINED_FUNCTION_21_42();
  }

  else
  {

    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v88, &_s27PhoneCallFlowDelegatePlugin0aB10PersonNameVSgMd, &_s27PhoneCallFlowDelegatePlugin0aB10PersonNameVSgMR);
  }

  OUTLINED_FUNCTION_7_76();
  PersonNameComponents.givenName.setter();
  v45 = OUTLINED_FUNCTION_3_108();
  v43(v45);
  if (v89[1] == 1)
  {
    OUTLINED_FUNCTION_21_42();
  }

  else
  {

    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v89, &_s27PhoneCallFlowDelegatePlugin0aB10PersonNameVSgMd, &_s27PhoneCallFlowDelegatePlugin0aB10PersonNameVSgMR);
  }

  OUTLINED_FUNCTION_7_76();
  PersonNameComponents.middleName.setter();
  v46 = OUTLINED_FUNCTION_3_108();
  v43(v46);
  if (v90[1] == 1)
  {
    OUTLINED_FUNCTION_21_42();
  }

  else
  {

    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v90, &_s27PhoneCallFlowDelegatePlugin0aB10PersonNameVSgMd, &_s27PhoneCallFlowDelegatePlugin0aB10PersonNameVSgMR);
  }

  OUTLINED_FUNCTION_7_76();
  PersonNameComponents.familyName.setter();
  v47 = OUTLINED_FUNCTION_3_108();
  v43(v47);
  if (v91[1] == 1)
  {
    OUTLINED_FUNCTION_21_42();
  }

  else
  {

    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v91, &_s27PhoneCallFlowDelegatePlugin0aB10PersonNameVSgMd, &_s27PhoneCallFlowDelegatePlugin0aB10PersonNameVSgMR);
  }

  OUTLINED_FUNCTION_7_76();
  PersonNameComponents.nickname.setter();
  v48 = OUTLINED_FUNCTION_3_108();
  v43(v48);
  if (v92[1] == 1)
  {
    OUTLINED_FUNCTION_21_42();
  }

  else
  {

    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v92, &_s27PhoneCallFlowDelegatePlugin0aB10PersonNameVSgMd, &_s27PhoneCallFlowDelegatePlugin0aB10PersonNameVSgMR);
  }

  OUTLINED_FUNCTION_7_76();
  PersonNameComponents.namePrefix.setter();
  v49 = OUTLINED_FUNCTION_3_108();
  v43(v49);
  if (v94 == 1)
  {
    OUTLINED_FUNCTION_21_42();
  }

  else
  {

    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v93, &_s27PhoneCallFlowDelegatePlugin0aB10PersonNameVSgMd, &_s27PhoneCallFlowDelegatePlugin0aB10PersonNameVSgMR);
  }

  OUTLINED_FUNCTION_7_76();
  PersonNameComponents.nameSuffix.setter();
  v50 = *(v3 + 200);
  v51 = OUTLINED_FUNCTION_3_108();
  v52(v51);
  if (v53)
  {
    OUTLINED_FUNCTION_13_54();
    if (v54)
    {
      v55 = String._bridgeToObjectiveC()();

      goto LABEL_45;
    }
  }

  v55 = 0;
LABEL_45:
  v56 = *(v3 + 408);
  v57 = OUTLINED_FUNCTION_3_108();
  v56(v57);
  if (v58)
  {

    v59 = v85;
    (*(v83 + 16))(v85, v42, v87);
    v60 = 0;
  }

  else
  {
    v60 = 1;
    v59 = v85;
  }

  __swift_storeEnumTagSinglePayload(v59, v60, 1, v87);
  v61 = OUTLINED_FUNCTION_3_108();
  v62 = (v56)(v61);
  v79 = v63;
  v80 = v62;
  v64 = *(v3 + 32);
  v65 = v64(v26, v3);
  v78 = v66;
  v67 = v64(v26, v3);
  v69 = v68;
  v70 = objc_allocWithZone(INPerson);
  v81 = v55;
  v71 = v84;
  v72 = @nonobjc INPerson.init(personHandle:nameComponents:displayName:image:contactIdentifier:customIdentifier:relationship:)(v71, v85, v80, v79, 0, v65, v78, v67, v69, v55);
  v73 = *(v3 + 8);
  v74 = OUTLINED_FUNCTION_3_108();
  [v72 setIsMe:v75(v74) & 1];

  (*(v83 + 8))(v86, v87);
  return v72;
}

Swift::String_optional __swiftcall SiriPhoneContact.getPrefixName()()
{
  OUTLINED_FUNCTION_25_35(v0, v1);
  v2();
  OUTLINED_FUNCTION_20_44();
  if (v3)
  {
    OUTLINED_FUNCTION_19_39();
  }

  else
  {

    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(&v7, &_s27PhoneCallFlowDelegatePlugin0aB10PersonNameVSgMd, &_s27PhoneCallFlowDelegatePlugin0aB10PersonNameVSgMR);
  }

  v4 = OUTLINED_FUNCTION_0();
  result.value._object = v5;
  result.value._countAndFlagsBits = v4;
  return result;
}

Swift::String_optional __swiftcall SiriPhoneContact.getPostfixName()()
{
  OUTLINED_FUNCTION_25_35(v0, v1);
  v2();
  OUTLINED_FUNCTION_20_44();
  if (v3)
  {
    OUTLINED_FUNCTION_19_39();
  }

  else
  {

    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(&v7, &_s27PhoneCallFlowDelegatePlugin0aB10PersonNameVSgMd, &_s27PhoneCallFlowDelegatePlugin0aB10PersonNameVSgMR);
  }

  v4 = OUTLINED_FUNCTION_0();
  result.value._object = v5;
  result.value._countAndFlagsBits = v4;
  return result;
}

Swift::String_optional __swiftcall SiriPhoneContact.getNickName()()
{
  OUTLINED_FUNCTION_25_35(v0, v1);
  v2();
  OUTLINED_FUNCTION_20_44();
  if (v3)
  {
    OUTLINED_FUNCTION_19_39();
  }

  else
  {

    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(&v7, &_s27PhoneCallFlowDelegatePlugin0aB10PersonNameVSgMd, &_s27PhoneCallFlowDelegatePlugin0aB10PersonNameVSgMR);
  }

  v4 = OUTLINED_FUNCTION_0();
  result.value._object = v5;
  result.value._countAndFlagsBits = v4;
  return result;
}

Swift::String_optional __swiftcall SiriPhoneContact.getOrganzationName()()
{
  v1 = (*(v0 + 128))();
  result.value._object = v2;
  result.value._countAndFlagsBits = v1;
  return result;
}

Swift::String_optional __swiftcall SiriPhoneContact.getContactName()()
{
  v1 = (*(v0 + 56))();
  result.value._object = v2;
  result.value._countAndFlagsBits = v1;
  return result;
}

Swift::String_optional __swiftcall SiriPhoneContact.getHandleType()()
{
  v1 = (*(v0 + 224))();
  result.value._object = v2;
  result.value._countAndFlagsBits = v1;
  return result;
}

Swift::String_optional __swiftcall SiriPhoneContact.getPhoneNumber()()
{
  v1 = (*(v0 + 152))();
  result.value._object = v2;
  result.value._countAndFlagsBits = v1;
  return result;
}

Swift::String_optional __swiftcall SiriPhoneContact.getEmailAddress()()
{
  v1 = (*(v0 + 176))();
  result.value._object = v2;
  result.value._countAndFlagsBits = v1;
  return result;
}

uint64_t SiriPhoneContactImpl.__allocating_init()()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  SiriPhoneContactImpl.init()();
  return v3;
}

Swift::Void __swiftcall SiriPhoneContact.update(person:)(INPerson person)
{
  v3 = v2;
  v172 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin14BackingContactOSgMd, &_s27PhoneCallFlowDelegatePlugin14BackingContactOSgMR);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v169 = (&v157 - v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PersonNameComponentsVSgMd, &_s10Foundation20PersonNameComponentsVSgMR);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  OUTLINED_FUNCTION_9_3();
  __chkstk_darwin(v10);
  OUTLINED_FUNCTION_13_5();
  OUTLINED_FUNCTION_9_3();
  __chkstk_darwin(v11);
  OUTLINED_FUNCTION_13_5();
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
  v19 = __chkstk_darwin(v18);
  v21 = &v157 - v20;
  v22 = __chkstk_darwin(v19);
  v24 = &v157 - v23;
  v25 = __chkstk_darwin(v22);
  v27 = &v157 - v26;
  __chkstk_darwin(v25);
  OUTLINED_FUNCTION_13_5();
  OUTLINED_FUNCTION_9_3();
  __chkstk_darwin(v28);
  OUTLINED_FUNCTION_13_5();
  OUTLINED_FUNCTION_9_3();
  v30 = __chkstk_darwin(v29);
  v32 = &v157 - v31;
  v33 = __chkstk_darwin(v30);
  v35 = &v157 - v34;
  v36 = __chkstk_darwin(v33);
  v38 = &v157 - v37;
  __chkstk_darwin(v36);
  v40 = &v157 - v39;
  v41 = [(objc_class *)person.super.isa nameComponents];
  if (v41)
  {
    v42 = v41;
    static PersonNameComponents._unconditionallyBridgeFromObjectiveC(_:)();

    type metadata accessor for PersonNameComponents();
    v43 = 0;
  }

  else
  {
    type metadata accessor for PersonNameComponents();
    v43 = 1;
  }

  OUTLINED_FUNCTION_42_11(v38, v43);
  outlined init with take of PersonNameComponents?(v38, v40);
  type metadata accessor for PersonNameComponents();
  if (OUTLINED_FUNCTION_17_48())
  {
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v40, &_s10Foundation20PersonNameComponentsVSgMd, &_s10Foundation20PersonNameComponentsVSgMR);
    v44 = 0;
    v170 = 0;
    goto LABEL_24;
  }

  v159 = v21;
  v45 = PersonNameComponents.givenName.getter();
  v47 = v46;
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v40, &_s10Foundation20PersonNameComponentsVSgMd, &_s10Foundation20PersonNameComponentsVSgMR);
  if (!v47)
  {
    goto LABEL_22;
  }

  v48 = HIBYTE(v47) & 0xF;
  if ((v47 & 0x2000000000000000) == 0)
  {
    v48 = v45 & 0xFFFFFFFFFFFFLL;
  }

  if (!v48)
  {
    goto LABEL_21;
  }

  v49 = [(objc_class *)person.super.isa nameComponents];
  if (v49)
  {
    v50 = v49;
    static PersonNameComponents._unconditionallyBridgeFromObjectiveC(_:)();

    v51 = 0;
  }

  else
  {
    v51 = 1;
  }

  OUTLINED_FUNCTION_42_11(v32, v51);
  outlined init with take of PersonNameComponents?(v32, v35);
  if (!OUTLINED_FUNCTION_32_1(v35))
  {
    v52 = PersonNameComponents.familyName.getter();
    v54 = v53;
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v35, &_s10Foundation20PersonNameComponentsVSgMd, &_s10Foundation20PersonNameComponentsVSgMR);
    if (v54)
    {
      v55 = HIBYTE(v54) & 0xF;
      if ((v54 & 0x2000000000000000) == 0)
      {
        v55 = v52 & 0xFFFFFFFFFFFFLL;
      }

      if (v55)
      {
        v158 = v54;
        v56 = v47;
        v57 = [(objc_class *)person.super.isa nameComponents];
        if (v57)
        {
          v58 = v57;
          v59 = v160;
          static PersonNameComponents._unconditionallyBridgeFromObjectiveC(_:)();

          v60 = 0;
          v61 = v170;
        }

        else
        {
          v60 = 1;
          v61 = v170;
          v59 = v160;
        }

        OUTLINED_FUNCTION_42_11(v59, v60);
        outlined init with take of PersonNameComponents?(v59, v61);
        if (OUTLINED_FUNCTION_17_48())
        {
          outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v61, &_s10Foundation20PersonNameComponentsVSgMd, &_s10Foundation20PersonNameComponentsVSgMR);
        }

        else
        {
          v170 = PersonNameComponents.middleName.getter();
          v153 = v152;
          outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v61, &_s10Foundation20PersonNameComponentsVSgMd, &_s10Foundation20PersonNameComponentsVSgMR);
          if (v153)
          {
            v154 = HIBYTE(v153) & 0xF;
            if ((v153 & 0x2000000000000000) == 0)
            {
              v154 = v170 & 0xFFFFFFFFFFFFLL;
            }

            if (v154)
            {
              v174 = v45;
              v175 = v56;
              v155._countAndFlagsBits = 32;
              v155._object = 0xE100000000000000;
              String.append(_:)(v155);
              v156._countAndFlagsBits = v170;
              v156._object = v153;
              String.append(_:)(v156);

              goto LABEL_98;
            }
          }
        }

        v174 = v45;
        v175 = v56;
LABEL_98:
        v150._countAndFlagsBits = 32;
        v150._object = 0xE100000000000000;
        String.append(_:)(v150);
        v151._countAndFlagsBits = v52;
        v151._object = v158;
        String.append(_:)(v151);

        v44 = v174;
        v170 = v175;
        goto LABEL_23;
      }
    }

LABEL_21:

    goto LABEL_22;
  }

  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v35, &_s10Foundation20PersonNameComponentsVSgMd, &_s10Foundation20PersonNameComponentsVSgMR);
LABEL_22:
  v44 = 0;
  v170 = 0;
LABEL_23:
  v21 = v159;
LABEL_24:
  v62 = [(objc_class *)person.super.isa isMe];
  (*(v3 + 16))(v62, v172, v3);
  v63 = [(objc_class *)person.super.isa contactIdentifier];
  if (v63)
  {
    v64 = v63;
    v65 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v67 = v66;
  }

  else
  {
    v65 = 0;
    v67 = 0;
  }

  (*(v3 + 40))(v65, v67, v172, v3);
  v68 = OUTLINED_FUNCTION_31_29();
  if (v68)
  {
    v69 = v68;
    static PersonNameComponents._unconditionallyBridgeFromObjectiveC(_:)();

    v70 = 0;
  }

  else
  {
    v70 = 1;
  }

  v71 = v167;
  OUTLINED_FUNCTION_42_11(v24, v70);
  outlined init with take of PersonNameComponents?(v24, v27);
  if (OUTLINED_FUNCTION_32_1(v27))
  {
    v167 = 0;
    v160 = 0;
  }

  else
  {
    v167 = PersonNameComponents.givenName.getter();
    v160 = v72;
  }

  v73 = v164;
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v27, &_s10Foundation20PersonNameComponentsVSgMd, &_s10Foundation20PersonNameComponentsVSgMR);
  v74 = OUTLINED_FUNCTION_31_29();
  if (v74)
  {
    v75 = v74;
    v76 = v161;
    static PersonNameComponents._unconditionallyBridgeFromObjectiveC(_:)();

    v77 = v76;
    v78 = 0;
    v79 = v165;
  }

  else
  {
    v78 = 1;
    v79 = v165;
    v77 = v161;
  }

  OUTLINED_FUNCTION_42_11(v77, v78);
  outlined init with take of PersonNameComponents?(v77, v21);
  if (OUTLINED_FUNCTION_32_1(v21))
  {
    v165 = 0;
    v164 = 0;
  }

  else
  {
    v165 = PersonNameComponents.middleName.getter();
    v164 = v80;
  }

  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v21, &_s10Foundation20PersonNameComponentsVSgMd, &_s10Foundation20PersonNameComponentsVSgMR);
  v81 = OUTLINED_FUNCTION_31_29();
  if (v81)
  {
    v82 = v81;
    v83 = v162;
    static PersonNameComponents._unconditionallyBridgeFromObjectiveC(_:)();

    v84 = 0;
    v85 = v163;
  }

  else
  {
    v84 = 1;
    v85 = v163;
    v83 = v162;
  }

  OUTLINED_FUNCTION_42_11(v83, v84);
  outlined init with take of PersonNameComponents?(v83, v85);
  if (OUTLINED_FUNCTION_17_48())
  {
    v163 = 0;
    v162 = 0;
  }

  else
  {
    v163 = PersonNameComponents.familyName.getter();
    v162 = v86;
  }

  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v85, &_s10Foundation20PersonNameComponentsVSgMd, &_s10Foundation20PersonNameComponentsVSgMR);
  v87 = OUTLINED_FUNCTION_31_29();
  if (v87)
  {
    v88 = v87;
    static PersonNameComponents._unconditionallyBridgeFromObjectiveC(_:)();

    v89 = 0;
  }

  else
  {
    v89 = 1;
  }

  OUTLINED_FUNCTION_42_11(v73, v89);
  outlined init with take of PersonNameComponents?(v73, v79);
  if (OUTLINED_FUNCTION_32_1(v79))
  {
    v161 = 0;
    v90 = 0;
  }

  else
  {
    v161 = PersonNameComponents.nickname.getter();
    v90 = v91;
  }

  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v79, &_s10Foundation20PersonNameComponentsVSgMd, &_s10Foundation20PersonNameComponentsVSgMR);
  (*(v3 + 104))(v173, v172, v3);
  v93 = v173[8];
  v92 = v173[9];
  if (v173[1] == 1)
  {
    OUTLINED_FUNCTION_14_56(v173[0]);
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(&v174, &_s27PhoneCallFlowDelegatePlugin0aB10PersonNameVSgMd, &_s27PhoneCallFlowDelegatePlugin0aB10PersonNameVSgMR);
  }

  else
  {
    OUTLINED_FUNCTION_14_56(v173[0]);

    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(&v174, &_s27PhoneCallFlowDelegatePlugin0aB10PersonNameVSgMd, &_s27PhoneCallFlowDelegatePlugin0aB10PersonNameVSgMR);
    if (v92)
    {
      goto LABEL_55;
    }
  }

  v92 = v170;

  v93 = v44;
LABEL_55:
  v94 = [(objc_class *)person.super.isa nameComponents];
  v95 = v166;
  if (v94)
  {
    v96 = v94;
    static PersonNameComponents._unconditionallyBridgeFromObjectiveC(_:)();

    v97 = 0;
  }

  else
  {
    v97 = 1;
  }

  OUTLINED_FUNCTION_42_11(v95, v97);
  v98 = v171;
  outlined init with take of PersonNameComponents?(v95, v171);
  if (OUTLINED_FUNCTION_17_48())
  {
    v99 = 0;
    v100 = 0;
  }

  else
  {
    v101 = PersonNameComponents.namePrefix.getter();
    v98 = v171;
    v99 = v101;
    v100 = v102;
  }

  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v98, &_s10Foundation20PersonNameComponentsVSgMd, &_s10Foundation20PersonNameComponentsVSgMR);
  v103 = [(objc_class *)person.super.isa nameComponents];
  if (v103)
  {
    v104 = v103;
    static PersonNameComponents._unconditionallyBridgeFromObjectiveC(_:)();

    v105 = 0;
  }

  else
  {
    v105 = 1;
  }

  OUTLINED_FUNCTION_42_11(v71, v105);
  v106 = v168;
  outlined init with take of PersonNameComponents?(v71, v168);
  if (OUTLINED_FUNCTION_17_48())
  {
    v107 = 0;
    v108 = 0;
  }

  else
  {
    v107 = PersonNameComponents.nameSuffix.getter();
    v108 = v109;
  }

  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v106, &_s10Foundation20PersonNameComponentsVSgMd, &_s10Foundation20PersonNameComponentsVSgMR);
  v174 = v167;
  v175 = v160;
  v176 = v165;
  v177 = v164;
  v178 = v163;
  v179 = v162;
  v180 = v161;
  v181 = v90;
  v182 = v93;
  v183 = v92;
  v184 = v99;
  v185 = v100;
  v186 = v107;
  v187 = v108;
  v110 = v172;
  (*(v3 + 112))(&v174, v172, v3);
  if ([(objc_class *)person.super.isa relationship])
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_30_35();
  }

  v111 = *(v3 + 208);
  v112 = OUTLINED_FUNCTION_5_87();
  v113(v112);
  v114 = OUTLINED_FUNCTION_26_33();
  if (v114)
  {
    v115 = v114;
    v116 = [v114 type];

    if (v116 == &dword_0 + 2)
    {
      v117 = OUTLINED_FUNCTION_26_33();
      v118 = v117;
      if (v117)
      {
        v119 = [v117 value];

        if (v119)
        {
          static String._unconditionallyBridgeFromObjectiveC(_:)();
          OUTLINED_FUNCTION_30_35();
        }
      }

      v126 = *(v3 + 160);
      v127 = OUTLINED_FUNCTION_5_87();
      v128(v127);
      v129 = 0x656E6F6870;
LABEL_81:
      (*(v3 + 232))(v129, 0xE500000000000000, v110, v3);
      goto LABEL_82;
    }
  }

  v120 = OUTLINED_FUNCTION_26_33();
  if (v120)
  {
    v121 = v120;
    v122 = [v120 type];

    if (v122 == &dword_0 + 1)
    {
      v123 = OUTLINED_FUNCTION_26_33();
      v124 = v123;
      if (v123)
      {
        v125 = [v123 value];

        if (v125)
        {
          static String._unconditionallyBridgeFromObjectiveC(_:)();
          OUTLINED_FUNCTION_30_35();
        }
      }

      v130 = *(v3 + 184);
      v131 = OUTLINED_FUNCTION_5_87();
      v132(v131);
      v129 = 0x6C69616D65;
      goto LABEL_81;
    }
  }

LABEL_82:
  v133 = OUTLINED_FUNCTION_26_33();
  v134 = v133;
  if (v133)
  {
    v135 = [v133 label];

    if (v135)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      OUTLINED_FUNCTION_30_35();
    }
  }

  v136 = *(v3 + 256);
  v137 = OUTLINED_FUNCTION_5_87();
  v138(v137);
  v139 = OUTLINED_FUNCTION_26_33();
  if (v139 && (v140 = v139, v141 = [v139 emergencyType], v140, v141 == &dword_0 + 1))
  {
    v142 = 0;
  }

  else
  {
    v143 = OUTLINED_FUNCTION_26_33();
    if (v143 && (v144 = v143, v145 = [v143 emergencyType], v144, v145 == &dword_0 + 2))
    {
      v142 = 1;
    }

    else
    {
      v142 = 2;
    }
  }

  (*(v3 + 304))(v142, v110, v3);
  v146 = v169;
  v169->super.isa = person.super.isa;
  v147 = type metadata accessor for BackingContact(0);
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v146, 0, 1, v147);
  v148 = *(v3 + 392);
  v149 = person.super.isa;
  v148(v146, v110, v3);
}

void BackingContact.toContactQuery()()
{
  v1 = v0;
  v2 = type metadata accessor for BackingContact(0);
  v3 = OUTLINED_FUNCTION_23_1(v2);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = (&v18[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  outlined init with copy of BackingContact(v1, v7);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v16 = *v7;
      specialized SiriPhoneContact.asSiriInferenceContact.getter();

      break;
    case 2u:
      outlined init with take of PhoneCallFeatureFlagProviding(v7, v18);
      v9 = v18[4];
      __swift_project_boxed_opaque_existential_1(v18, v18[3]);
      v10 = *(v9 + 8);
      dispatch thunk of ToContactQuery.toContactQuery()();
      __swift_destroy_boxed_opaque_existential_1(v18);
      break;
    case 3u:
      v11 = type metadata accessor for ContactQuery();
      OUTLINED_FUNCTION_23_1(v11);
      v13 = *(v12 + 32);
      v14 = OUTLINED_FUNCTION_19_0();
      v15(v14);
      break;
    default:
      v8 = *v7;
      INPerson.toContactQuery()();

      break;
  }
}

void __swiftcall PhoneCallPersonName.init(firstName:middleName:lastName:nickName:fullName:namePrefix:nameSuffix:)(PhoneCallFlowDelegatePlugin::PhoneCallPersonName *__return_ptr retstr, Swift::String_optional firstName, Swift::String_optional middleName, Swift::String_optional lastName, Swift::String_optional nickName, Swift::String_optional fullName, Swift::String_optional namePrefix, Swift::String_optional nameSuffix)
{
  retstr->firstName = firstName;
  retstr->middleName = middleName;
  retstr->lastName = lastName;
  retstr->nickName = nickName;
  retstr->fullName = fullName;
  retstr->namePrefix = namePrefix;
  retstr->nameSuffix = nameSuffix;
}

uint64_t PhoneCallEmergencyType.semanticValue.getter(uint64_t a1, uint64_t a2)
{
  if (a2 == 1)
  {
    v2 = 0xD000000000000012;
  }

  else
  {
    v2 = 0xD000000000000011;
  }

  if (a2 == 2)
  {
    return 0x636E656772656D65;
  }

  else
  {
    return v2;
  }
}

PhoneCallFlowDelegatePlugin::PhoneCallContactSearchQualifier __swiftcall PhoneCallContactSearchQualifier.init(role:exclusive:nobody:)(PhoneCallFlowDelegatePlugin::PhoneCallContactRole role, Swift::Bool exclusive, Swift::Bool nobody)
{
  if (nobody)
  {
    v3 = 0x10000;
  }

  else
  {
    v3 = 0;
  }

  if (exclusive)
  {
    v4 = 256;
  }

  else
  {
    v4 = 0;
  }

  return (v4 & 0xFFFFFF00 | role | v3);
}

Swift::String_optional __swiftcall SiriPhoneContact.getDisplayName()()
{
  countAndFlagsBits = (*(v0 + 56))();
  if (object)
  {
    goto LABEL_4;
  }

  OUTLINED_FUNCTION_104();
  v3 = SiriPhoneContact.getNickName()();
  object = v3.value._object;
  countAndFlagsBits = v3.value._countAndFlagsBits;
  if (v3.value._object || (v4 = OUTLINED_FUNCTION_104(), default argument 3 of SAUISayIt.init(message:dialogIdentifier:canUseServerTTS:listenAfterSpeaking:)(v4, v5), v6 = OUTLINED_FUNCTION_22_33(), v7 = SiriPhoneContact.getFullName(filteredAlternatives:)(v6), object = v7.value._object, countAndFlagsBits = v7.value._countAndFlagsBits, v7.value._object))
  {
LABEL_4:
    v8 = countAndFlagsBits;
    v9 = object;
  }

  else
  {
    v12 = OUTLINED_FUNCTION_104();
    default argument 3 of SAUISayIt.init(message:dialogIdentifier:canUseServerTTS:listenAfterSpeaking:)(v12, v13);
    v14 = OUTLINED_FUNCTION_22_33();
    v15 = SiriPhoneContact.getFirstName(filteredAlternatives:)(v14);
    v8 = v15.value._countAndFlagsBits;
    v16 = v15.value._object;
    v17 = OUTLINED_FUNCTION_104();
    default argument 3 of SAUISayIt.init(message:dialogIdentifier:canUseServerTTS:listenAfterSpeaking:)(v17, v18);
    v19 = OUTLINED_FUNCTION_22_33();
    v20 = SiriPhoneContact.getLastName(filteredAlternatives:)(v19);
    v9 = v20.value._object;
    if (v15.value._object && (OUTLINED_FUNCTION_27_34(), v21))
    {
      if (!v20.value._object)
      {
        v9 = v15.value._object;
        goto LABEL_5;
      }
    }

    else
    {
      if (!v20.value._object)
      {

        v8 = 0;
        goto LABEL_5;
      }

      v22 = (v20.value._object >> 56) & 0xF;
      if ((v20.value._object & 0x2000000000000000) == 0)
      {
        v22 = v20.value._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
      }

      if (!v22)
      {

        v8 = 0;
        v9 = 0;
        goto LABEL_5;
      }

      if (!v15.value._object)
      {
        v8 = 0;
        v16 = 0xE000000000000000;
      }
    }

    OUTLINED_FUNCTION_27_34();
    if (v23)
    {
      v24._countAndFlagsBits = 32;
      v24._object = 0xE100000000000000;
      String.append(_:)(v24);
      String.append(_:)(v20.value);

      v9 = v16;
    }

    else
    {

      v8 = v20.value._countAndFlagsBits;
    }
  }

LABEL_5:
  v10 = v8;
  v11 = v9;
  result.value._object = v11;
  result.value._countAndFlagsBits = v10;
  return result;
}

Swift::String_optional __swiftcall SiriPhoneContact.getRelationship()()
{
  v1 = (*(v0 + 200))();
  result.value._object = v2;
  result.value._countAndFlagsBits = v1;
  return result;
}

uint64_t key path setter for SiriPhoneContactImpl.contactId : SiriPhoneContactImpl(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 256);

  return v4(v2, v3);
}

uint64_t SiriPhoneContactImpl.contactId.getter()
{
  OUTLINED_FUNCTION_4_4();
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return OUTLINED_FUNCTION_19_0();
}

uint64_t SiriPhoneContactImpl.contactId.setter()
{
  OUTLINED_FUNCTION_24_3();
  OUTLINED_FUNCTION_11_2();
  v3 = *(v1 + 32);
  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
}

uint64_t key path setter for SiriPhoneContactImpl.contactName : SiriPhoneContactImpl(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 280);

  return v4(v2, v3);
}

uint64_t SiriPhoneContactImpl.contactName.getter()
{
  OUTLINED_FUNCTION_4_4();
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return OUTLINED_FUNCTION_19_0();
}

uint64_t SiriPhoneContactImpl.contactName.setter()
{
  OUTLINED_FUNCTION_24_3();
  OUTLINED_FUNCTION_11_2();
  v3 = *(v1 + 48);
  *(v1 + 40) = v2;
  *(v1 + 48) = v0;
}

uint64_t SiriPhoneContactImpl.contactSource.setter(char a1)
{
  result = OUTLINED_FUNCTION_11_2();
  *(v1 + 56) = a1;
  return result;
}

uint64_t key path setter for SiriPhoneContactImpl.personName : SiriPhoneContactImpl(void *__src, uint64_t a2)
{
  memcpy(__dst, __src, sizeof(__dst));
  v3 = *(**a2 + 328);
  _s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgWOcTm_0(__dst, &v5, &_s27PhoneCallFlowDelegatePlugin0aB10PersonNameVSgMd, &_s27PhoneCallFlowDelegatePlugin0aB10PersonNameVSgMR);
  return v3(__dst);
}

void *SiriPhoneContactImpl.personName.getter@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  memcpy(__dst, (v1 + 64), 0x70uLL);
  _s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgWOcTm_0(__dst, &v4, &_s27PhoneCallFlowDelegatePlugin0aB10PersonNameVSgMd, &_s27PhoneCallFlowDelegatePlugin0aB10PersonNameVSgMR);
  return memcpy(a1, __dst, 0x70uLL);
}

uint64_t SiriPhoneContactImpl.personName.setter(const void *a1)
{
  swift_beginAccess();
  v2 = *(v1 + 72);
  v14 = *(v1 + 64);
  v3 = *(v1 + 80);
  v4 = *(v1 + 88);
  v5 = *(v1 + 96);
  v6 = *(v1 + 104);
  v7 = *(v1 + 112);
  v8 = *(v1 + 120);
  v12 = *(v1 + 144);
  v13 = *(v1 + 128);
  v9 = *(v1 + 160);
  v10 = *(v1 + 168);
  memcpy((v1 + 64), a1, 0x70uLL);
  return outlined consume of PhoneCallPersonName?(v14, v2);
}

uint64_t key path setter for SiriPhoneContactImpl.organizationName : SiriPhoneContactImpl(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 352);

  return v4(v2, v3);
}

uint64_t SiriPhoneContactImpl.organizationName.getter()
{
  OUTLINED_FUNCTION_4_4();
  v1 = *(v0 + 176);
  v2 = *(v0 + 184);

  return OUTLINED_FUNCTION_19_0();
}

uint64_t SiriPhoneContactImpl.organizationName.setter()
{
  OUTLINED_FUNCTION_24_3();
  OUTLINED_FUNCTION_11_2();
  v3 = *(v1 + 184);
  *(v1 + 176) = v2;
  *(v1 + 184) = v0;
}

uint64_t key path setter for SiriPhoneContactImpl.telephoneNumber : SiriPhoneContactImpl(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 376);

  return v4(v2, v3);
}

uint64_t SiriPhoneContactImpl.telephoneNumber.getter()
{
  OUTLINED_FUNCTION_4_4();
  v1 = *(v0 + 192);
  v2 = *(v0 + 200);

  return OUTLINED_FUNCTION_19_0();
}

uint64_t SiriPhoneContactImpl.telephoneNumber.setter()
{
  OUTLINED_FUNCTION_24_3();
  OUTLINED_FUNCTION_11_2();
  v3 = *(v1 + 200);
  *(v1 + 192) = v2;
  *(v1 + 200) = v0;
}

uint64_t key path setter for SiriPhoneContactImpl.emailAddress : SiriPhoneContactImpl(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 400);

  return v4(v2, v3);
}

uint64_t SiriPhoneContactImpl.emailAddress.getter()
{
  OUTLINED_FUNCTION_4_4();
  v1 = *(v0 + 208);
  v2 = *(v0 + 216);

  return OUTLINED_FUNCTION_19_0();
}

uint64_t SiriPhoneContactImpl.emailAddress.setter()
{
  OUTLINED_FUNCTION_24_3();
  OUTLINED_FUNCTION_11_2();
  v3 = *(v1 + 216);
  *(v1 + 208) = v2;
  *(v1 + 216) = v0;
}

uint64_t key path setter for SiriPhoneContactImpl.relationship : SiriPhoneContactImpl(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 424);

  return v4(v2, v3);
}

uint64_t SiriPhoneContactImpl.relationship.getter()
{
  OUTLINED_FUNCTION_4_4();
  v1 = *(v0 + 224);
  v2 = *(v0 + 232);

  return OUTLINED_FUNCTION_19_0();
}

uint64_t SiriPhoneContactImpl.relationship.setter()
{
  OUTLINED_FUNCTION_24_3();
  OUTLINED_FUNCTION_11_2();
  v3 = *(v1 + 232);
  *(v1 + 224) = v2;
  *(v1 + 232) = v0;
}

uint64_t key path setter for SiriPhoneContactImpl.handleType : SiriPhoneContactImpl(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 448);

  return v4(v2, v3);
}

uint64_t SiriPhoneContactImpl.handleType.getter()
{
  OUTLINED_FUNCTION_4_4();
  v1 = *(v0 + 240);
  v2 = *(v0 + 248);

  return OUTLINED_FUNCTION_19_0();
}

uint64_t SiriPhoneContactImpl.handleType.setter()
{
  OUTLINED_FUNCTION_24_3();
  OUTLINED_FUNCTION_11_2();
  v3 = *(v1 + 248);
  *(v1 + 240) = v2;
  *(v1 + 248) = v0;
}

uint64_t key path setter for SiriPhoneContactImpl.handleLabel : SiriPhoneContactImpl(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 472);

  return v4(v2, v3);
}

uint64_t SiriPhoneContactImpl.handleLabel.getter()
{
  OUTLINED_FUNCTION_4_4();
  v1 = *(v0 + 256);
  v2 = *(v0 + 264);

  return OUTLINED_FUNCTION_19_0();
}

uint64_t SiriPhoneContactImpl.handleLabel.setter()
{
  OUTLINED_FUNCTION_24_3();
  OUTLINED_FUNCTION_11_2();
  v3 = *(v1 + 264);
  *(v1 + 256) = v2;
  *(v1 + 264) = v0;
}

uint64_t key path setter for SiriPhoneContactImpl.emergencyType : SiriPhoneContactImpl(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 496);
  outlined copy of PhoneCallEmergencyType?(*a1, v3);
  return v4(v2, v3);
}

uint64_t SiriPhoneContactImpl.emergencyType.getter()
{
  OUTLINED_FUNCTION_4_4();
  v1 = *(v0 + 272);
  v2 = *(v0 + 280);
  v3 = OUTLINED_FUNCTION_19_0();
  outlined copy of PhoneCallEmergencyType?(v3, v4);
  return OUTLINED_FUNCTION_19_0();
}

uint64_t SiriPhoneContactImpl.emergencyType.setter()
{
  OUTLINED_FUNCTION_24_3();
  OUTLINED_FUNCTION_11_2();
  v3 = *(v1 + 272);
  v4 = *(v1 + 280);
  *(v1 + 272) = v2;
  *(v1 + 280) = v0;
  return outlined consume of PhoneCallEmergencyType?(v3, v4);
}

uint64_t SiriPhoneContactImpl.emergencyLocationType.setter(char a1)
{
  result = OUTLINED_FUNCTION_11_2();
  *(v1 + 288) = a1;
  return result;
}

uint64_t SiriPhoneContactImpl.contactReference.setter(char a1)
{
  result = OUTLINED_FUNCTION_11_2();
  *(v1 + 289) = a1;
  return result;
}

uint64_t SiriPhoneContactImpl.isAmbiguousHandle.setter(char a1)
{
  result = OUTLINED_FUNCTION_11_2();
  *(v1 + 290) = a1;
  return result;
}

uint64_t SiriPhoneContactImpl.searchQualifier.setter(int a1)
{
  result = swift_beginAccess();
  *(v1 + 293) = BYTE2(a1);
  *(v1 + 291) = a1;
  return result;
}

uint64_t key path setter for SiriPhoneContactImpl.vocabularyAppsBundleSet : SiriPhoneContactImpl(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 616);

  return v3(v4);
}

uint64_t SiriPhoneContactImpl.vocabularyAppsBundleSet.getter()
{
  OUTLINED_FUNCTION_4_4();
  v1 = *(v0 + 296);
}

uint64_t SiriPhoneContactImpl.vocabularyAppsBundleSet.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_11_2();
  v3 = *(v1 + 296);
  *(v1 + 296) = a1;
}

uint64_t key path setter for SiriPhoneContactImpl.backingContact : SiriPhoneContactImpl(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin14BackingContactOSgMd, &_s27PhoneCallFlowDelegatePlugin14BackingContactOSgMR);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v9 - v6;
  _s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgWOcTm_0(a1, &v9 - v6, &_s27PhoneCallFlowDelegatePlugin14BackingContactOSgMd, &_s27PhoneCallFlowDelegatePlugin14BackingContactOSgMR);
  return (*(**a2 + 640))(v7);
}

uint64_t SiriPhoneContactImpl.backingContact.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin20SiriPhoneContactImpl_backingContact;
  OUTLINED_FUNCTION_4_4();
  return _s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgWOcTm_0(v1 + v3, a1, &_s27PhoneCallFlowDelegatePlugin14BackingContactOSgMd, &_s27PhoneCallFlowDelegatePlugin14BackingContactOSgMR);
}

uint64_t SiriPhoneContactImpl.backingContact.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin20SiriPhoneContactImpl_backingContact;
  swift_beginAccess();
  outlined assign with take of BackingContact?(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t SiriPhoneContactImpl.init()()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 0u;
  *(v0 + 40) = 0u;
  *(v0 + 56) = 3;
  *(v0 + 64) = xmmword_425000;
  bzero((v0 + 80), 0xC8uLL);
  *(v0 + 280) = 3;
  *(v0 + 288) = 9731;
  *(v0 + 290) = 0;
  *(v0 + 293) = 0;
  *(v0 + 291) = 512;
  *(v0 + 296) = _swiftEmptySetSingleton;
  v1 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin20SiriPhoneContactImpl_backingContact;
  v2 = type metadata accessor for BackingContact(0);
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  return v0;
}

uint64_t SiriPhoneContactImpl.deinit()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  v3 = *(v0 + 80);
  v4 = *(v0 + 88);
  v5 = *(v0 + 96);
  v6 = *(v0 + 104);
  v7 = *(v0 + 112);
  v8 = *(v0 + 120);
  v19 = *(v0 + 160);
  v20 = *(v0 + 168);
  v17 = *(v0 + 128);
  v18 = *(v0 + 144);
  outlined consume of PhoneCallPersonName?(*(v0 + 64), *(v0 + 72));
  v9 = *(v0 + 184);

  v10 = *(v0 + 200);

  v11 = *(v0 + 216);

  v12 = *(v0 + 232);

  v13 = *(v0 + 248);

  v14 = *(v0 + 264);

  outlined consume of PhoneCallEmergencyType?(*(v0 + 272), *(v0 + 280));
  v15 = *(v0 + 296);

  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v0 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin20SiriPhoneContactImpl_backingContact, &_s27PhoneCallFlowDelegatePlugin14BackingContactOSgMd, &_s27PhoneCallFlowDelegatePlugin14BackingContactOSgMR);
  return v0;
}

uint64_t SiriPhoneContactImpl.__deallocating_deinit()
{
  SiriPhoneContactImpl.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t (*protocol witness for SiriPhoneContact.isMe.modify in conformance SiriPhoneContactImpl(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = (*(**v1 + 240))();
  return protocol witness for SiriPhoneContact.contactId.modify in conformance SiriPhoneContactImpl;
}

uint64_t (*protocol witness for SiriPhoneContact.contactId.modify in conformance SiriPhoneContactImpl(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = (*(**v1 + 264))();
  return protocol witness for SiriPhoneContact.contactId.modify in conformance SiriPhoneContactImpl;
}

uint64_t (*protocol witness for SiriPhoneContact.contactName.modify in conformance SiriPhoneContactImpl(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = (*(**v1 + 288))();
  return protocol witness for SiriPhoneContact.contactId.modify in conformance SiriPhoneContactImpl;
}

uint64_t (*protocol witness for SiriPhoneContact.contactSource.modify in conformance SiriPhoneContactImpl(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = (*(**v1 + 312))();
  return protocol witness for SiriPhoneContact.contactId.modify in conformance SiriPhoneContactImpl;
}

void *protocol witness for SiriPhoneContact.personName.getter in conformance SiriPhoneContactImpl@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_43_0();
  (*(v2 + 320))(v4);
  return memcpy(a1, v4, 0x70uLL);
}

uint64_t (*protocol witness for SiriPhoneContact.personName.modify in conformance SiriPhoneContactImpl(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = (*(**v1 + 336))();
  return protocol witness for SiriPhoneContact.contactId.modify in conformance SiriPhoneContactImpl;
}

uint64_t (*protocol witness for SiriPhoneContact.organizationName.modify in conformance SiriPhoneContactImpl(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = (*(**v1 + 360))();
  return protocol witness for SiriPhoneContact.contactId.modify in conformance SiriPhoneContactImpl;
}

uint64_t (*protocol witness for SiriPhoneContact.telephoneNumber.modify in conformance SiriPhoneContactImpl(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = (*(**v1 + 384))();
  return protocol witness for SiriPhoneContact.contactId.modify in conformance SiriPhoneContactImpl;
}

uint64_t (*protocol witness for SiriPhoneContact.emailAddress.modify in conformance SiriPhoneContactImpl(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = (*(**v1 + 408))();
  return protocol witness for SiriPhoneContact.contactId.modify in conformance SiriPhoneContactImpl;
}

uint64_t (*protocol witness for SiriPhoneContact.relationship.modify in conformance SiriPhoneContactImpl(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = (*(**v1 + 432))();
  return protocol witness for SiriPhoneContact.contactId.modify in conformance SiriPhoneContactImpl;
}

uint64_t (*protocol witness for SiriPhoneContact.handleType.modify in conformance SiriPhoneContactImpl(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = (*(**v1 + 456))();
  return protocol witness for SiriPhoneContact.contactId.modify in conformance SiriPhoneContactImpl;
}

uint64_t (*protocol witness for SiriPhoneContact.handleLabel.modify in conformance SiriPhoneContactImpl(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = (*(**v1 + 480))();
  return protocol witness for SiriPhoneContact.contactId.modify in conformance SiriPhoneContactImpl;
}

uint64_t (*protocol witness for SiriPhoneContact.emergencyType.modify in conformance SiriPhoneContactImpl(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = (*(**v1 + 504))();
  return protocol witness for SiriPhoneContact.contactId.modify in conformance SiriPhoneContactImpl;
}

uint64_t (*protocol witness for SiriPhoneContact.emergencyLocationType.modify in conformance SiriPhoneContactImpl(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = (*(**v1 + 528))();
  return protocol witness for SiriPhoneContact.contactId.modify in conformance SiriPhoneContactImpl;
}

uint64_t (*protocol witness for SiriPhoneContact.contactReference.modify in conformance SiriPhoneContactImpl(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = (*(**v1 + 552))();
  return protocol witness for SiriPhoneContact.contactId.modify in conformance SiriPhoneContactImpl;
}

uint64_t (*protocol witness for SiriPhoneContact.isAmbiguousHandle.modify in conformance SiriPhoneContactImpl(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = (*(**v1 + 576))();
  return protocol witness for SiriPhoneContact.contactId.modify in conformance SiriPhoneContactImpl;
}

uint64_t (*protocol witness for SiriPhoneContact.backingContact.modify in conformance SiriPhoneContactImpl(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = (*(**v1 + 648))();
  return protocol witness for SiriPhoneContact.backingContact.modify in conformance PhoneCallContactIntentNode;
}

PhoneCallFlowDelegatePlugin::PhoneCallEmergencyLocationType_optional __swiftcall PhoneCallEmergencyLocationType.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of PhoneCallEmergencyLocationType.init(rawValue:), v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t PhoneCallEmergencyLocationType.rawValue.getter(char a1)
{
  if (!a1)
  {
    return 0x6C61636F6CLL;
  }

  if (a1 == 1)
  {
    return 0x6C61636F4C6E6F6ELL;
  }

  return 1701736302;
}

PhoneCallFlowDelegatePlugin::PhoneCallEmergencyLocationType_optional protocol witness for RawRepresentable.init(rawValue:) in conformance PhoneCallEmergencyLocationType@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::PhoneCallEmergencyLocationType_optional *a2@<X8>)
{
  result.value = PhoneCallEmergencyLocationType.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance PhoneCallEmergencyLocationType@<X0>(uint64_t *a1@<X8>)
{
  result = PhoneCallEmergencyLocationType.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t static PhoneCallEmergencyType.__derived_enum_equals(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  switch(a2)
  {
    case 0:
      return !a4;
    case 1:
      return a4 == 1;
    case 2:
      return a4 == 2;
  }

  if (a4 < 3)
  {
    return 0;
  }

  if (a1 != a3 || a2 != a4)
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return 1;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance PhoneCallContactSearchQualifier(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (a1[2])
  {
    v2 = 0x10000;
  }

  else
  {
    v2 = 0;
  }

  if (a1[1])
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  if (a2[2])
  {
    v4 = 0x10000;
  }

  else
  {
    v4 = 0;
  }

  if (a2[1])
  {
    v5 = 256;
  }

  else
  {
    v5 = 0;
  }

  return static PhoneCallContactSearchQualifier.__derived_struct_equals(_:_:)(v3 | *a1 | v2, v5 | *a2 | v4);
}

uint64_t PhoneCallPersonName.namePrefix.getter()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  return OUTLINED_FUNCTION_19_0();
}

uint64_t PhoneCallPersonName.namePrefix.setter()
{
  OUTLINED_FUNCTION_24_3();
  v3 = *(v1 + 88);

  *(v1 + 80) = v2;
  *(v1 + 88) = v0;
  return result;
}

void __swiftcall PhoneCallPersonName.init()(PhoneCallFlowDelegatePlugin::PhoneCallPersonName *__return_ptr retstr)
{
  retstr->namePrefix = 0u;
  retstr->nameSuffix = 0u;
  retstr->nickName = 0u;
  retstr->fullName = 0u;
  retstr->middleName = 0u;
  retstr->lastName = 0u;
  retstr->firstName = 0u;
}

Swift::String_optional __swiftcall SiriPhoneContact.getContactId()()
{
  v1 = (*(v0 + 32))();
  result.value._object = v2;
  result.value._countAndFlagsBits = v1;
  return result;
}

id @nonobjc INPersonHandle.init(value:type:label:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  if (a2)
  {
    v8 = String._bridgeToObjectiveC()();
  }

  else
  {
    v8 = 0;
  }

  v9 = [v5 initWithValue:v8 type:a3 label:a4];

  return v9;
}

id @nonobjc INPerson.init(personHandle:nameComponents:displayName:image:contactIdentifier:customIdentifier:relationship:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  v11 = v10;
  v17 = type metadata accessor for PersonNameComponents();
  isa = 0;
  if (__swift_getEnumTagSinglePayload(a2, 1, v17) != 1)
  {
    isa = PersonNameComponents._bridgeToObjectiveC()().super.isa;
    (*(*(v17 - 8) + 8))(a2, v17);
  }

  if (a4)
  {
    v19 = String._bridgeToObjectiveC()();
  }

  else
  {
    v19 = 0;
  }

  if (a7)
  {
    v20 = String._bridgeToObjectiveC()();
  }

  else
  {
    v20 = 0;
  }

  if (a9)
  {
    v21 = String._bridgeToObjectiveC()();
  }

  else
  {
    v21 = 0;
  }

  v22 = [v11 initWithPersonHandle:a1 nameComponents:isa displayName:v19 image:a5 contactIdentifier:v20 customIdentifier:v21 relationship:a10];

  return v22;
}

id @nonobjc INPersonHandle.init(value:type:label:emergencyType:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v9 = String._bridgeToObjectiveC()();

  v10 = [v5 initWithValue:v9 type:a3 label:a4 emergencyType:a5];

  return v10;
}

uint64_t outlined consume of PhoneCallPersonName?(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PhoneCallEmergencyLocationType and conformance PhoneCallEmergencyLocationType()
{
  result = lazy protocol witness table cache variable for type PhoneCallEmergencyLocationType and conformance PhoneCallEmergencyLocationType;
  if (!lazy protocol witness table cache variable for type PhoneCallEmergencyLocationType and conformance PhoneCallEmergencyLocationType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallEmergencyLocationType and conformance PhoneCallEmergencyLocationType);
  }

  return result;
}

void type metadata completion function for SiriPhoneContactImpl()
{
  type metadata accessor for BackingContact?();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void type metadata accessor for BackingContact?()
{
  if (!lazy cache variable for type metadata for BackingContact?)
  {
    type metadata accessor for BackingContact(255);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for BackingContact?);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for PhoneCallEmergencyLocationType(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t get_enum_tag_for_layout_string_27PhoneCallFlowDelegatePlugin0aB13EmergencyTypeO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t getEnumTagSinglePayload for PhoneCallEmergencyType(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 16))
  {
    return (*a1 + 2147483645);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 2;
  if (v4 >= 4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for PhoneCallEmergencyType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 2;
    }
  }

  return result;
}

uint64_t __swift_memcpy3_1(uint64_t result, __int16 *a2)
{
  v2 = *a2;
  *(result + 2) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for PhoneCallContactSearchQualifier(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v3 = -1;
    return (v3 + 1);
  }

  if (a2 >= 0xFF)
  {
    if ((a2 + 33554177) >> 24)
    {
      v2 = a1[3];
      if (a1[3])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
LABEL_5:
        v3 = (*a1 | (a1[2] << 16) | (v2 << 24)) - 16776962;
        return (v3 + 1);
      }
    }
  }

  v4 = a1[1];
  v5 = v4 >= 2;
  v3 = (v4 + 2147483646) & 0x7FFFFFFF;
  if (!v5)
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t storeEnumTagSinglePayload for PhoneCallContactSearchQualifier(uint64_t result, unsigned int a2, unsigned int a3)
{
  if ((a3 + 33554177) >> 24)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (a3 <= 0xFE)
  {
    v3 = 0;
  }

  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 2) = (a2 - 255) >> 16;
    if (v3)
    {
      v4 = ((a2 - 255) >> 24) + 1;
      if (v3 == 2)
      {
        *(result + 3) = v4;
      }

      else
      {
        *(result + 3) = v4;
      }
    }
  }

  else
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    if (v3 == 2)
    {
      *(result + 3) = 0;
LABEL_10:
      if (!a2)
      {
        return result;
      }

LABEL_16:
      *(result + 1) = a2 + 1;
      return result;
    }

    *(result + 3) = 0;
    if (a2)
    {
      goto LABEL_16;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PhoneCallPersonName(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 112))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
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

uint64_t storeEnumTagSinglePayload for PhoneCallPersonName(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 112) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 112) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t type metadata completion function for BackingContact()
{
  result = type metadata accessor for INPerson();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for PhoneCallContactIntentNode(319);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for UsoContactConvertible();
      if (v3 <= 0x3F)
      {
        result = type metadata accessor for ContactQuery();
        if (v4 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

unint64_t type metadata accessor for UsoContactConvertible()
{
  result = lazy cache variable for type metadata for UsoContactConvertible;
  if (!lazy cache variable for type metadata for UsoContactConvertible)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for UsoContactConvertible);
  }

  return result;
}

id OUTLINED_FUNCTION_26_33()
{
  v3 = *(v1 + 2120);

  return [v0 v3];
}

id OUTLINED_FUNCTION_31_29()
{
  v3 = *(v1 + 2920);

  return [v0 v3];
}

uint64_t *SiriPhoneDefaults.instance.unsafeMutableAddressor()
{
  if (one-time initialization token for instance != -1)
  {
    OUTLINED_FUNCTION_2_111();
  }

  return &static SiriPhoneDefaults.instance;
}

void SiriPhoneDefaultsProviding.getOrDefault<A>(key:defaultValue:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v28 = a2;
  v13 = type metadata accessor for Optional();
  OUTLINED_FUNCTION_9_1();
  v15 = v14;
  v17 = *(v16 + 64);
  __chkstk_darwin(v18);
  v20 = &v27 - v19;
  (*(a5 + 8))(a1, a4, a6, a3, a5);
  v21 = OUTLINED_FUNCTION_96();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v21, v22, a4);
  v24 = *(a4 - 8);
  if (EnumTagSinglePayload == 1)
  {
    (*(v24 + 16))(a7, v28, a4);
    v25 = OUTLINED_FUNCTION_96();
    if (__swift_getEnumTagSinglePayload(v25, v26, a4) != 1)
    {
      (*(v15 + 8))(v20, v13);
    }
  }

  else
  {
    (*(v24 + 32))(a7, v20, a4);
  }

  OUTLINED_FUNCTION_65();
}

unint64_t SiriPhoneDefaultsKey.rawValue.getter(char a1)
{
  result = 0xD000000000000011;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000010;
      break;
    case 2:
      result = 0xD00000000000001ELL;
      break;
    case 3:
      result = 0xD00000000000002DLL;
      break;
    default:
      return result;
  }

  return result;
}

PhoneCallFlowDelegatePlugin::SiriPhoneDefaultsKey_optional __swiftcall SiriPhoneDefaultsKey.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of SiriPhoneDefaultsKey.init(rawValue:), v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

PhoneCallFlowDelegatePlugin::SiriPhoneDefaultsKey_optional protocol witness for RawRepresentable.init(rawValue:) in conformance SiriPhoneDefaultsKey@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::SiriPhoneDefaultsKey_optional *a2@<X8>)
{
  result.value = SiriPhoneDefaultsKey.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance SiriPhoneDefaultsKey@<X0>(unint64_t *a1@<X8>)
{
  result = SiriPhoneDefaultsKey.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t static SiriPhoneDefaults.instance.getter()
{
  if (one-time initialization token for instance != -1)
  {
    OUTLINED_FUNCTION_2_111();
  }

  v0 = static SiriPhoneDefaults.instance;
  v1 = static SiriPhoneDefaults.instance;
  return v0;
}

void SiriPhoneDefaults.get<A>(key:)(void *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, char *a4@<X8>)
{
  type metadata accessor for Optional();
  OUTLINED_FUNCTION_9_1();
  v9 = *(v8 + 64);
  __chkstk_darwin(v10);
  v12 = &v60 - v11;
  OUTLINED_FUNCTION_9_1();
  v64 = v13;
  v15 = *(v14 + 64);
  __chkstk_darwin(v16);
  v18 = &v60 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v60 - v20;
  __chkstk_darwin(v22);
  v65 = &v60 - v23;
  if (!a1)
  {
    goto LABEL_4;
  }

  v66 = a3;
  v67 = a4;
  v24 = String._bridgeToObjectiveC()();

  v25 = [a1 dictionaryForKey:v24];

  v26 = v66;
  v27 = v67;
  if (v25)
  {
    v28 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    specialized _dictionaryUpCast<A, B, C, D>(_:)(v28);
    v29 = *(*(v26 + 8) + 8);
    static DictionaryEncoderDecoder.decode<A>(type:_:)();

    OUTLINED_FUNCTION_12_9();
    __swift_storeEnumTagSinglePayload(v39, v40, v41, v42);
    v43 = v64;
    v44 = v65;
    v63 = *(v64 + 32);
    v63(v65, v12, a2);
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2();
    }

    v45 = type metadata accessor for Logger();
    __swift_project_value_buffer(v45, static Logger.siriPhone);
    v46 = *(v43 + 16);
    v46(v21, v44, a2);
    v47 = Logger.logObject.getter();
    v62 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v47, v62))
    {
      v48 = OUTLINED_FUNCTION_42();
      v61 = OUTLINED_FUNCTION_36();
      v68 = v61;
      *v48 = 136315138;
      v46(v18, v21, a2);
      v49 = *(v43 + 8);
      v49(v21, a2);
      v50 = *(v66 + 16);
      v51 = v47;
      v52 = dispatch thunk of CustomStringConvertible.description.getter();
      v54 = v53;
      v49(v18, a2);
      v55 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v52, v54, &v68);

      *(v48 + 4) = v55;
      _os_log_impl(&dword_0, v51, v62, "#SiriPhoneDefaults Get: %s", v48, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v61);
      OUTLINED_FUNCTION_26_0();
      v44 = v65;
      OUTLINED_FUNCTION_26_0();
    }

    else
    {
      (*(v43 + 8))(v21, a2);
    }

    v63(v27, v44, a2);
    OUTLINED_FUNCTION_12_9();
    __swift_storeEnumTagSinglePayload(v56, v57, v58, v59);
    OUTLINED_FUNCTION_65();
  }

  else
  {
LABEL_4:
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2();
    }

    v30 = type metadata accessor for Logger();
    __swift_project_value_buffer(v30, static Logger.siriPhone);
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_0, v31, v32, "#SiriPhoneDefaults No entry found.", v33, 2u);
      OUTLINED_FUNCTION_26_0();
    }

    OUTLINED_FUNCTION_96();
    OUTLINED_FUNCTION_12_9();
    OUTLINED_FUNCTION_65();

    __swift_storeEnumTagSinglePayload(v34, v35, v36, v37);
  }
}

void SiriPhoneDefaults.set<A>(key:value:)(uint64_t a1, uint64_t a2, void *a3)
{
  OUTLINED_FUNCTION_9_1();
  v5 = *(v4 + 64);
  __chkstk_darwin(v6);
  __chkstk_darwin(v7);
  v9 = *(*(v8 + 8) + 16);
  static DictionaryEncoderDecoder.encode<A>(_:)(v10);
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
    v14 = OUTLINED_FUNCTION_42();
    v15 = OUTLINED_FUNCTION_36();
    v24 = v15;
    *v14 = 136315138;
    v16 = Dictionary.description.getter();
    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, &v24);

    *(v14 + 4) = v18;
    _os_log_impl(&dword_0, v12, v13, "#SiriPhoneDefaults Set: %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v15);
    OUTLINED_FUNCTION_26_0();
    OUTLINED_FUNCTION_26_0();
  }

  if (a3)
  {
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v23 = String._bridgeToObjectiveC()();

    [a3 setObject:isa forKey:v23];

    OUTLINED_FUNCTION_65();
  }

  else
  {
    OUTLINED_FUNCTION_65();
  }
}

Swift::Void __swiftcall SiriPhoneDefaults.clear(key:)(PhoneCallFlowDelegatePlugin::SiriPhoneDefaultsKey key)
{
  if (v1)
  {
    v2 = v1;
    v3 = String._bridgeToObjectiveC()();

    [v2 removeObjectForKey:v3];
  }
}

unint64_t lazy protocol witness table accessor for type SiriPhoneDefaultsKey and conformance SiriPhoneDefaultsKey()
{
  result = lazy protocol witness table cache variable for type SiriPhoneDefaultsKey and conformance SiriPhoneDefaultsKey;
  if (!lazy protocol witness table cache variable for type SiriPhoneDefaultsKey and conformance SiriPhoneDefaultsKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriPhoneDefaultsKey and conformance SiriPhoneDefaultsKey);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SiriPhoneDefaultsKey(_BYTE *result, unsigned int a2, unsigned int a3)
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

void SiriPhoneHintGenerator.generateHint()()
{
  OUTLINED_FUNCTION_66();
  v2 = v1;
  v4 = v3;
  v5 = OUTLINED_FUNCTION_7(v3);
  v7 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v5);
  v38 = v10;
  v11 = v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = OUTLINED_FUNCTION_7(AssociatedTypeWitness);
  v39 = v14;
  v16 = *(v15 + 64);
  __chkstk_darwin(v13);
  v40 = v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v17);
  v20 = v35 - v19;
  v21 = *(v2 + 48);
  v41 = v0;
  if (v21(v4, v2, v18))
  {
    v37 = v11;
    v35[0] = v7;
    (*(v2 + 40))(v45, v4, v2, 0);
    v22 = v46;
    v23 = v47;
    __swift_project_boxed_opaque_existential_1(v45, v46);
    (*(v23 + 64))(v42, v22, v23);
    v24 = v43;
    v36 = v44;
    v35[1] = __swift_project_boxed_opaque_existential_1(v42, v43);
    v25 = (*(v2 + 24))(v4, v2);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v27 = v40;
    (*(AssociatedConformanceWitness + 32))(AssociatedTypeWitness, AssociatedConformanceWitness);
    SiriPhoneDefaultsProviding.getOrDefault<A>(key:defaultValue:)(v25, v27, v24, AssociatedTypeWitness, v36, AssociatedConformanceWitness, v20);
    v28 = *(v39 + 8);
    v28(v27, AssociatedTypeWitness);
    __swift_destroy_boxed_opaque_existential_1(v42);
    __swift_destroy_boxed_opaque_existential_1(v45);
    (*(v2 + 56))(v20, v4, v2);
    if (v29)
    {
      v30 = v35[0];
      (*(v35[0] + 16))(v37, v41, v4);
      v31 = v39 + 32;
      v41 = *(v39 + 32);
      v41(v40, v20, AssociatedTypeWitness);
      v32 = (*(v30 + 80) + 32) & ~*(v30 + 80);
      v33 = (v38 + v32 + *(v31 + 48)) & ~*(v31 + 48);
      v34 = swift_allocObject();
      *(v34 + 16) = v4;
      *(v34 + 24) = v2;
      (*(v30 + 32))(v34 + v32, v37, v4);
      v41((v34 + v33), v40, AssociatedTypeWitness);
    }

    else
    {
      v28(v20, AssociatedTypeWitness);
    }
  }

  OUTLINED_FUNCTION_65();
}

void HintInstance.updateHintHistory(_:)(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void *))
{
  v5 = [a1 dialog];
  type metadata accessor for DialogElement();
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v7 = specialized Array.count.getter(v6);
  if (v7)
  {
    v8 = v7;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    if (v8 < 0)
    {
      __break(1u);
      return;
    }

    v9 = 0;
    do
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v10 = *(v6 + 8 * v9 + 32);
      }

      v11 = v10;
      v12 = [v10 id];
      v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v15 = v14;

      v16 = _swiftEmptyArrayStorage[2];
      if (v16 >= _swiftEmptyArrayStorage[3] >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      ++v9;
      _swiftEmptyArrayStorage[2] = v16 + 1;
      v17 = &_swiftEmptyArrayStorage[2 * v16];
      v17[4] = v13;
      v17[5] = v15;
    }

    while (v8 != v9);
  }

  a4(_swiftEmptyArrayStorage);
}

void HintInstance.updateHintHistory(_:)()
{
  OUTLINED_FUNCTION_66();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = type metadata accessor for TemplatingSection();
  v41 = OUTLINED_FUNCTION_7(v6);
  v42 = v7;
  v9 = *(v8 + 64);
  __chkstk_darwin(v41);
  v11 = v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v15 = (v37 - v14);
  v16 = type metadata accessor for TemplatingResult();
  v17 = OUTLINED_FUNCTION_7(v16);
  v19 = v18;
  v21 = *(v20 + 64);
  __chkstk_darwin(v17);
  v23 = v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Result<TemplatingResult, Error>(v5, v15);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v43 = *v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    swift_willThrowTypedImpl();

LABEL_10:
    v26 = _swiftEmptyArrayStorage;
    goto LABEL_11;
  }

  (*(v19 + 32))(v23, v15, v16);
  v24 = TemplatingResult.sections.getter();
  (*(v19 + 8))(v23, v16);
  v25 = *(v24 + 16);
  if (!v25)
  {

    goto LABEL_10;
  }

  v37[1] = v1;
  v38 = v3;
  v43 = _swiftEmptyArrayStorage;
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  v26 = v43;
  v27 = *(v42 + 16);
  v28 = *(v42 + 80);
  v37[0] = v24;
  v29 = v24 + ((v28 + 32) & ~v28);
  v39 = *(v42 + 72);
  v40 = v27;
  v42 += 16;
  v30 = (v42 - 8);
  do
  {
    v31 = v41;
    v40(v11, v29, v41);
    v32 = TemplatingSection.id.getter();
    v34 = v33;
    (*v30)(v11, v31);
    v43 = v26;
    v35 = v26[2];
    if (v35 >= v26[3] >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      v26 = v43;
    }

    v26[2] = v35 + 1;
    v36 = &v26[2 * v35];
    v36[4] = v32;
    v36[5] = v34;
    v29 += v39;
    --v25;
  }

  while (v25);

  v3 = v38;
LABEL_11:
  v3(v26);

  OUTLINED_FUNCTION_65();
}

void updateHintHistory #1 <A>(_:) in SiriPhoneHintGenerator.generateHint()()
{
  OUTLINED_FUNCTION_66();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = OUTLINED_FUNCTION_7(AssociatedTypeWitness);
  v11 = v10;
  v13 = *(v12 + 64);
  __chkstk_darwin(v9);
  v15 = v25 - v14;
  v26[2] = v3;
  v26[3] = v1;
  v26[4] = v5;
  v16 = specialized Sequence.first(where:)(partial apply for closure #1 in updateHintHistory #1 <A>(_:) in SiriPhoneHintGenerator.generateHint(), v26, v7);
  if (v17)
  {
    (*(v1 + 64))(v16);

    (*(v1 + 40))(v30, v3, v1);
    v18 = v31;
    v19 = v32;
    __swift_project_boxed_opaque_existential_1(v30, v31);
    (*(v19 + 64))(v27, v18, v19);
    v20 = v28;
    v21 = v29;
    v25[1] = __swift_project_boxed_opaque_existential_1(v27, v28);
    v22 = (*(v1 + 24))(v3, v1);
    v23 = *(v21 + 16);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v23(v22, v15, AssociatedTypeWitness, AssociatedConformanceWitness, v20, v21);
    (*(v11 + 8))(v15, AssociatedTypeWitness);
    __swift_destroy_boxed_opaque_existential_1(v27);
    __swift_destroy_boxed_opaque_existential_1(v30);
  }

  OUTLINED_FUNCTION_65();
}

void partial apply for updateHintHistory #1 <A>(_:) in SiriPhoneHintGenerator.generateHint()()
{
  v1 = *(v0 + 24);
  v2 = *(*(v0 + 16) - 8);
  OUTLINED_FUNCTION_1_116();
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  OUTLINED_FUNCTION_1_116();
  v6 = *(v5 + 64);
  v7 = *(swift_getAssociatedTypeWitness() - 8);
  v8 = v0 + ((v4 + v6 + *(v7 + 80)) & ~*(v7 + 80));

  updateHintHistory #1 <A>(_:) in SiriPhoneHintGenerator.generateHint()();
}

uint64_t closure #1 in updateHintHistory #1 <A>(_:) in SiriPhoneHintGenerator.generateHint()(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *a1;
  v7 = a1[1];
  (*(a4 + 32))(a3, a4);
  lazy protocol witness table accessor for type String and conformance String();
  lazy protocol witness table accessor for type String and conformance String();
  v4 = BidirectionalCollection<>.starts<A>(with:)();

  return v4 & 1;
}

uint64_t one-time initialization function for messageStore()
{
  type metadata accessor for MessageStoreController();
  result = static MessageStoreController.shared.getter();
  static SiriPhoneMessageStoreController.messageStore = result;
  return result;
}

uint64_t SiriPhoneMessageStoreController.getMessages(recordUUIDs:)(uint64_t a1)
{
  *(v1 + 16) = a1;
  return _swift_task_switch(SiriPhoneMessageStoreController.getMessages(recordUUIDs:), 0, 0);
}

{
  v4 = *(*v2 + 24);
  v8 = *v2;

  v6 = *(v8 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

uint64_t SiriPhoneMessageStoreController.getMessages(recordUUIDs:)()
{
  if (one-time initialization token for messageStore != -1)
  {
    swift_once();
  }

  v1 = async function pointer to MessageStoreController.getMessages(recordUUIDs:)[1];
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = SiriPhoneMessageStoreController.getMessages(recordUUIDs:);
  v3 = *(v0 + 16);

  return MessageStoreController.getMessages(recordUUIDs:)(v3);
}

uint64_t protocol witness for SiriPhoneMessageStoreProtocol.getMessages(recordUUIDs:) in conformance SiriPhoneMessageStoreController(uint64_t a1)
{
  v4 = *(**v1 + 80);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = AnnounceCallBellCATPatternsExecutor.announceCallBellEnded();

  return v8(a1);
}

uint64_t AnyIntentResolver.resolve(skIntent:nlIntent:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t AnyIntentResolver.resolve(skIntent:nlIntent:)()
{
  OUTLINED_FUNCTION_15();
  v1 = v0[4];
  v2 = *(v1 + 56);
  v8 = (*(v1 + 48) + **(v1 + 48));
  v3 = *(*(v1 + 48) + 4);
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = AnyIntentResolver.resolve(skIntent:nlIntent:);
  v6 = v0[2];
  v5 = v0[3];

  return v8(v6, v5);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_18_4();
  v4 = *(v3 + 40);
  v5 = *v2;
  OUTLINED_FUNCTION_4_2();
  *v6 = v5;

  OUTLINED_FUNCTION_17_5();
  if (!v1)
  {
    v7 = v0;
  }

  return v8(v7);
}

uint64_t SKIntentResolver.run(skIntent:nlIntent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t SKIntentResolver.run(skIntent:nlIntent:)()
{
  v1 = *(v0 + 48);
  if ((*(*(v0 + 40) + 16))(*(v0 + 16), *(v0 + 24), *(v0 + 32)))
  {
    v11 = (*(v0 + 40) + 24);
    v12 = (*v11 + **v11);
    v2 = (*v11)[1];
    v3 = swift_task_alloc();
    *(v0 + 56) = v3;
    *v3 = v0;
    v3[1] = SKIntentResolver.run(skIntent:nlIntent:);
    v4 = *(v0 + 40);
    v5 = *(v0 + 48);
    v6 = *(v0 + 24);
    v7 = *(v0 + 32);
    v8 = *(v0 + 16);

    return v12(v8, v6, v7, v4);
  }

  else
  {
    v13 = *(v0 + 8);
    v10 = *(v0 + 16);

    return v13(v10);
  }
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_18_4();
  v4 = *(v3 + 56);
  v5 = *v2;
  OUTLINED_FUNCTION_4_2();
  *v6 = v5;

  OUTLINED_FUNCTION_17_5();
  if (!v1)
  {
    v7 = v0;
  }

  return v8(v7);
}

uint64_t SKIntentResolver.toAnyIntentResolver()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(a1);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = *(v5 + 16);
  v10(&v16 - v11, v2, a1);
  swift_getAssociatedTypeWitness();
  type metadata accessor for AnyIntentResolver();
  result = swift_dynamicCast();
  if (result)
  {
    v13 = v17;
    *a2 = v16;
    *(a2 + 16) = v13;
    v14 = v19;
    *(a2 + 32) = v18;
    *(a2 + 48) = v14;
  }

  else
  {
    v15 = type metadata accessor for Optional();
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    (*(*(v15 - 8) + 8))(&v16, v15);
    v10(v9, v2, a1);
    return AnyIntentResolver.init<A>(_:)(v9, a1, a2);
  }

  return result;
}

uint64_t AnyIntentResolver.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  a3[3] = a2;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a3);
  v7 = *(a2 - 8);
  (*(v7 + 16))(boxed_opaque_existential_1, a1, a2);
  v8 = OUTLINED_FUNCTION_5_88();
  a3[4] = implicit closure #1 in AnyIntentResolver.init<A>(_:)(v8, v9, v10, v11);
  a3[5] = v12;
  v13 = OUTLINED_FUNCTION_5_88();
  v17 = implicit closure #3 in AnyIntentResolver.init<A>(_:)(v13, v14, v15, v16);
  v19 = v18;
  result = (*(v7 + 8))(a1, a2);
  a3[6] = v17;
  a3[7] = v19;
  return result;
}

uint64_t AnyIntentResolver.description.getter()
{
  outlined init with copy of Any(v0, v2);
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  swift_getDynamicType();
  __swift_destroy_boxed_opaque_existential_1(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXpMd, &_sypXpMR);
  return String.init<A>(describing:)();
}

uint64_t (*implicit closure #1 in AnyIntentResolver.init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(a1);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9);
  v10 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v11 = swift_allocObject();
  *(v11 + 2) = a2;
  *(v11 + 3) = a3;
  *(v11 + 4) = a4;
  (*(v7 + 32))(&v11[v10], v9, a3);
  return partial apply for implicit closure #2 in implicit closure #1 in AnyIntentResolver.init<A>(_:);
}

void *implicit closure #3 in AnyIntentResolver.init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(a1);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9);
  v10 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v11 = swift_allocObject();
  *(v11 + 2) = a2;
  *(v11 + 3) = a3;
  *(v11 + 4) = a4;
  (*(v7 + 32))(&v11[v10], v9, a3);
  return &async function pointer to partial apply for implicit closure #4 in implicit closure #3 in AnyIntentResolver.init<A>(_:);
}

uint64_t implicit closure #4 in implicit closure #3 in AnyIntentResolver.init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *(a6 + 24);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = protocol witness for PhoneIntentResolving.resolve<A>(nlIntent:skIntent:rchFlowContext:sharedGlobals:) in conformance PhoneIntentResolver;

  return v15(a1, a2, a5, a6);
}

uint64_t AnyIntentResolver.shouldRunResolver(skIntent:nlIntent:)()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  return v1() & 1;
}

uint64_t AnyIntentResolver.unbox<A>(as:)@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v3 = v2;
  outlined init with copy of Any(v3, &v8);
  v6 = swift_dynamicCast();
  return __swift_storeEnumTagSinglePayload(a2, v6 ^ 1u, 1, a1);
}

uint64_t protocol witness for SKIntentResolver.resolve(skIntent:nlIntent:) in conformance AnyIntentResolver<A>(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = specialized implicit closure #4 in implicit closure #3 in AnyIntentResolver.init<A>(_:);

  return AnyIntentResolver.resolve(skIntent:nlIntent:)(a1, a2);
}

uint64_t type metadata instantiation function for AnyIntentResolver()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t getEnumTagSinglePayload for AnyIntentResolver(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 64))
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

uint64_t storeEnumTagSinglePayload for AnyIntentResolver(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t partial apply for implicit closure #4 in implicit closure #3 in AnyIntentResolver.init<A>(_:)(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = (*(*(v7 - 8) + 80) + 40) & ~*(*(v7 - 8) + 80);
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = partial apply for specialized implicit closure #4 in implicit closure #3 in AnyIntentResolver.init<A>(_:);

  return implicit closure #4 in implicit closure #3 in AnyIntentResolver.init<A>(_:)(a1, a2, v2 + v9, v6, v7, v8);
}

uint64_t static SKIntentResolverChain.firstHit<A>(_:)@<X0>(uint64_t (*a1)(void)@<X2>, uint64_t a2@<X8>)
{
  v3 = a1(0);

  swift_getWitnessTable();
  SKIntentResolver.toAnyIntentResolver()(v3, a2);
}

uint64_t ChainedIntentResolver.resolve(skIntent:nlIntent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[41] = a3;
  v4[42] = a4;
  v4[39] = a1;
  v4[40] = a2;
  return _swift_task_switch(ChainedIntentResolver.resolve(skIntent:nlIntent:), 0, 0);
}

uint64_t ChainedIntentResolver.resolve(skIntent:nlIntent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_135();
  a21 = v24;
  a22 = v25;
  OUTLINED_FUNCTION_39_4();
  a20 = v22;
  v26 = *(v22 + 336);
  v27 = *(v22 + 312);
  *(v22 + 264) = *(v22 + 328);
  *(v22 + 344) = type metadata accessor for AnyIntentResolver();
  *(v22 + 352) = type metadata accessor for Array();
  OUTLINED_FUNCTION_5_89();
  *(v22 + 360) = swift_getWitnessTable();
  Sequence.enumerated()();
  *(v22 + 272) = *(v22 + 256);
  type metadata accessor for EnumeratedSequence();
  EnumeratedSequence.makeIterator()();
  v28 = *(v22 + 312);
  *(v22 + 368) = v28;
  v30 = *(v22 + 352);
  v29 = *(v22 + 360);
  v31 = v27;
  type metadata accessor for EnumeratedSequence.Iterator();
  EnumeratedSequence.Iterator.next()();
  v32 = *(v22 + 16);
  *(v22 + 208) = *(v22 + 24);
  v33 = *(v22 + 48);
  *(v22 + 224) = *(v22 + 40);
  OUTLINED_FUNCTION_12_62();
  if (v34)
  {
    OUTLINED_FUNCTION_3_109(v34);
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2();
    }

    v35 = type metadata accessor for Logger();
    *(v22 + 376) = __swift_project_value_buffer(v35, static Logger.siriPhone);
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_51_0(v37))
    {
      OUTLINED_FUNCTION_27_35();
      v38 = OUTLINED_FUNCTION_83();
      a11 = v38;
      OUTLINED_FUNCTION_25_36(4.8151e-34);
      v39 = String.init<A>(describing:)();
      getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v40, &a11);
      OUTLINED_FUNCTION_30_36();
      OUTLINED_FUNCTION_7_77();
      OUTLINED_FUNCTION_16_53(&dword_0, v41, v42, "#ChainedIntentResolver<%s> Running resolver @ index=%ld");
      __swift_destroy_boxed_opaque_existential_1(v38);
      OUTLINED_FUNCTION_5_7();
      OUTLINED_FUNCTION_35();
    }

    v43 = *(v22 + 344);
    v44 = swift_task_alloc();
    *(v22 + 384) = v44;
    OUTLINED_FUNCTION_1_117();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_9_72();
    *v44 = v45;
    OUTLINED_FUNCTION_2_112();
    OUTLINED_FUNCTION_15_11();

    return SKIntentResolver.run(skIntent:nlIntent:)(v46, v47, v48, v49);
  }

  else
  {
    v52 = *(v22 + 184);

    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2();
    }

    v53 = *(v22 + 328);
    v54 = type metadata accessor for Logger();
    __swift_project_value_buffer(v54, static Logger.siriPhone);
    OUTLINED_FUNCTION_23_33();
    v55 = v28;
    v56 = Logger.logObject.getter();
    v57 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v56, v57))
    {
      OUTLINED_FUNCTION_10_70();
      OUTLINED_FUNCTION_22_34();
      v58 = OUTLINED_FUNCTION_24_37();
      a11 = v58;
      OUTLINED_FUNCTION_24_38(4.8152e-34);
      v59 = String.init<A>(describing:)();
      getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v59, v60, &a11);

      v61 = OUTLINED_FUNCTION_8_75();

      *(v30 + 14) = v61;

      OUTLINED_FUNCTION_15_55();
      OUTLINED_FUNCTION_17_49(&dword_0, v62, v63, "#ChainedIntentResolver<%s> Ran %ld resolvers, calling completion on skIntent: %@");
      outlined destroy of NSObject?(v23);
      OUTLINED_FUNCTION_5_7();
      __swift_destroy_boxed_opaque_existential_1(v58);
      OUTLINED_FUNCTION_26_0();
      OUTLINED_FUNCTION_26_0();
    }

    else
    {
      v64 = *(v22 + 328);
      swift_bridgeObjectRelease_n();
    }

    OUTLINED_FUNCTION_11_63();
    OUTLINED_FUNCTION_15_11();

    return v67(v65, v66, v67, v68, v69, v70, v71, v72, a9, a10, a11, a12, a13, a14);
  }
}

{
  OUTLINED_FUNCTION_135();
  a21 = v25;
  a22 = v26;
  OUTLINED_FUNCTION_39_4();
  a20 = v23;
  v27 = *(v23 + 344);

  (*(*(v27 - 8) + 8))(v23 + 88, v27);
  v28 = *(v23 + 400);
  *(v23 + 368) = v28;
  v29 = *(v23 + 352);
  v30 = *(v23 + 360);
  type metadata accessor for EnumeratedSequence.Iterator();
  EnumeratedSequence.Iterator.next()();
  v31 = *(v23 + 16);
  *(v23 + 208) = *(v23 + 24);
  v32 = *(v23 + 48);
  *(v23 + 224) = *(v23 + 40);
  OUTLINED_FUNCTION_12_62();
  if (v33)
  {
    OUTLINED_FUNCTION_3_109(v33);
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2();
    }

    v34 = type metadata accessor for Logger();
    *(v23 + 376) = __swift_project_value_buffer(v34, static Logger.siriPhone);
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_51_0(v36))
    {
      OUTLINED_FUNCTION_27_35();
      v37 = OUTLINED_FUNCTION_83();
      a11 = v37;
      OUTLINED_FUNCTION_25_36(4.8151e-34);
      v38 = String.init<A>(describing:)();
      getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, v39, &a11);
      OUTLINED_FUNCTION_30_36();
      OUTLINED_FUNCTION_7_77();
      OUTLINED_FUNCTION_16_53(&dword_0, v40, v41, "#ChainedIntentResolver<%s> Running resolver @ index=%ld");
      __swift_destroy_boxed_opaque_existential_1(v37);
      OUTLINED_FUNCTION_5_7();
      OUTLINED_FUNCTION_35();
    }

    v42 = *(v23 + 344);
    v43 = swift_task_alloc();
    *(v23 + 384) = v43;
    OUTLINED_FUNCTION_1_117();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_9_72();
    *v43 = v44;
    OUTLINED_FUNCTION_2_112();
    OUTLINED_FUNCTION_15_11();

    return SKIntentResolver.run(skIntent:nlIntent:)(v45, v46, v47, v48);
  }

  else
  {
    v51 = *(v23 + 184);

    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2();
    }

    v52 = *(v23 + 328);
    v53 = type metadata accessor for Logger();
    __swift_project_value_buffer(v53, static Logger.siriPhone);
    OUTLINED_FUNCTION_23_33();
    v54 = v28;
    v55 = Logger.logObject.getter();
    v56 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v55, v56))
    {
      OUTLINED_FUNCTION_10_70();
      OUTLINED_FUNCTION_22_34();
      v57 = OUTLINED_FUNCTION_24_37();
      a11 = v57;
      OUTLINED_FUNCTION_24_38(4.8152e-34);
      v58 = String.init<A>(describing:)();
      getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v58, v59, &a11);

      v60 = OUTLINED_FUNCTION_8_75();

      *(v22 + 14) = v60;

      OUTLINED_FUNCTION_15_55();
      OUTLINED_FUNCTION_17_49(&dword_0, v61, v62, "#ChainedIntentResolver<%s> Ran %ld resolvers, calling completion on skIntent: %@");
      outlined destroy of NSObject?(v24);
      OUTLINED_FUNCTION_5_7();
      __swift_destroy_boxed_opaque_existential_1(v57);
      OUTLINED_FUNCTION_26_0();
      OUTLINED_FUNCTION_26_0();
    }

    else
    {
      v63 = *(v23 + 328);
      swift_bridgeObjectRelease_n();
    }

    OUTLINED_FUNCTION_11_63();
    OUTLINED_FUNCTION_15_11();

    return v66(v64, v65, v66, v67, v68, v69, v70, v71, a9, a10, a11, a12, a13, a14);
  }
}

uint64_t ChainedIntentResolver.resolve(skIntent:nlIntent:)(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 384);
  v6 = *v2;
  OUTLINED_FUNCTION_4_2();
  *v7 = v6;
  *(v4 + 392) = v1;

  if (v1)
  {
    v8 = ChainedIntentResolver.resolve(skIntent:nlIntent:);
  }

  else
  {
    *(v4 + 400) = a1;
    v8 = ChainedIntentResolver.resolve(skIntent:nlIntent:);
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t ChainedIntentResolver.resolve(skIntent:nlIntent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_135();
  a21 = v24;
  a22 = v25;
  OUTLINED_FUNCTION_39_4();
  a20 = v22;
  v26 = *(v22 + 392);
  v27 = *(v22 + 376);
  swift_errorRetain();
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = *(v22 + 392);
    v31 = *(v22 + 336);
    v26 = *(v22 + 344);
    v23 = swift_slowAlloc();
    a11 = swift_slowAlloc();
    *v23 = 136315394;
    *(v22 + 288) = v31;
    swift_getMetatypeMetadata();
    v32 = String.init<A>(describing:)();
    v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v33, &a11);

    *(v23 + 4) = v34;
    *(v23 + 12) = 2080;
    swift_getErrorValue();
    v36 = *(v22 + 232);
    v35 = *(v22 + 240);
    v37 = *(v22 + 248);
    v38 = Error.localizedDescription.getter();
    v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, v39, &a11);

    *(v23 + 14) = v40;
    _os_log_impl(&dword_0, v28, v29, "#ChainedIntentResolver<%s> Error: %s", v23, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_26_0();
    OUTLINED_FUNCTION_5_7();

    (*(*(v26 - 8) + 8))(v22 + 88, v26);
  }

  else
  {
    v41 = *(v22 + 392);
    v42 = *(v22 + 344);

    (*(*(v42 - 8) + 8))(v22 + 88, v42);
  }

  v43 = *(v22 + 360);
  v44 = *(v22 + 368);
  v45 = *(v22 + 352);
  type metadata accessor for EnumeratedSequence.Iterator();
  EnumeratedSequence.Iterator.next()();
  v46 = *(v22 + 16);
  *(v22 + 208) = *(v22 + 24);
  v47 = *(v22 + 48);
  *(v22 + 224) = *(v22 + 40);
  OUTLINED_FUNCTION_12_62();
  if (v48)
  {
    OUTLINED_FUNCTION_3_109(v48);
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2();
    }

    v49 = type metadata accessor for Logger();
    *(v22 + 376) = __swift_project_value_buffer(v49, static Logger.siriPhone);
    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_51_0(v51))
    {
      OUTLINED_FUNCTION_27_35();
      v52 = OUTLINED_FUNCTION_83();
      a11 = v52;
      OUTLINED_FUNCTION_25_36(4.8151e-34);
      v53 = String.init<A>(describing:)();
      getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v53, v54, &a11);
      OUTLINED_FUNCTION_30_36();
      OUTLINED_FUNCTION_7_77();
      OUTLINED_FUNCTION_16_53(&dword_0, v55, v56, "#ChainedIntentResolver<%s> Running resolver @ index=%ld");
      __swift_destroy_boxed_opaque_existential_1(v52);
      OUTLINED_FUNCTION_5_7();
      OUTLINED_FUNCTION_35();
    }

    v57 = *(v22 + 344);
    v58 = swift_task_alloc();
    *(v22 + 384) = v58;
    OUTLINED_FUNCTION_1_117();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_9_72();
    *v58 = v59;
    OUTLINED_FUNCTION_2_112();
    OUTLINED_FUNCTION_15_11();

    return SKIntentResolver.run(skIntent:nlIntent:)(v60, v61, v62, v63);
  }

  else
  {
    v66 = *(v22 + 184);

    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2();
    }

    v67 = *(v22 + 328);
    v68 = type metadata accessor for Logger();
    __swift_project_value_buffer(v68, static Logger.siriPhone);
    OUTLINED_FUNCTION_23_33();
    v69 = v44;
    v70 = Logger.logObject.getter();
    v71 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v70, v71))
    {
      OUTLINED_FUNCTION_10_70();
      OUTLINED_FUNCTION_22_34();
      v72 = OUTLINED_FUNCTION_24_37();
      a11 = v72;
      OUTLINED_FUNCTION_24_38(4.8152e-34);
      v73 = String.init<A>(describing:)();
      getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v73, v74, &a11);

      v75 = OUTLINED_FUNCTION_8_75();

      *(v26 + 14) = v75;

      OUTLINED_FUNCTION_15_55();
      OUTLINED_FUNCTION_17_49(&dword_0, v76, v77, "#ChainedIntentResolver<%s> Ran %ld resolvers, calling completion on skIntent: %@");
      outlined destroy of NSObject?(v23);
      OUTLINED_FUNCTION_5_7();
      __swift_destroy_boxed_opaque_existential_1(v72);
      OUTLINED_FUNCTION_26_0();
      OUTLINED_FUNCTION_26_0();
    }

    else
    {
      v78 = *(v22 + 328);
      swift_bridgeObjectRelease_n();
    }

    OUTLINED_FUNCTION_11_63();
    OUTLINED_FUNCTION_15_11();

    return v81(v79, v80, v81, v82, v83, v84, v85, v86, a9, a10, a11, a12, a13, a14);
  }
}

uint64_t protocol witness for SKIntentResolver.shouldRunResolver(skIntent:nlIntent:) in conformance ChainedIntentResolver<A>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  v5 = *(a3 + 16);
  return default argument 1 of SharedConfirmationRepromptContext.hasPrompted(for:times:)();
}

uint64_t protocol witness for SKIntentResolver.resolve(skIntent:nlIntent:) in conformance ChainedIntentResolver<A>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = *(a3 + 16);
  *v9 = v4;
  v9[1] = AnnounceCallBellCATsSimple.announceCallBellEndedAsLabels();

  return ChainedIntentResolver.resolve(skIntent:nlIntent:)(a1, a2, v8, v10);
}

uint64_t FirstHitIntentResolver.resolve(skIntent:nlIntent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[47] = a3;
  v4[48] = a4;
  v4[45] = a1;
  v4[46] = a2;
  return _swift_task_switch(FirstHitIntentResolver.resolve(skIntent:nlIntent:), 0, 0);
}

uint64_t FirstHitIntentResolver.resolve(skIntent:nlIntent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_135();
  a21 = v24;
  a22 = v25;
  OUTLINED_FUNCTION_39_4();
  a20 = v22;
  v27 = *(v22 + 376);
  v26 = *(v22 + 384);
  *(v22 + 336) = v27;
  v28 = swift_task_alloc();
  v29 = *(v22 + 360);
  *(v28 + 16) = v26;
  *(v28 + 24) = v29;
  v30 = type metadata accessor for AnyIntentResolver();
  *(v22 + 392) = v30;
  type metadata accessor for Array();

  OUTLINED_FUNCTION_5_89();
  swift_getWitnessTable();
  Sequence.first(where:)();

  v31 = type metadata accessor for Optional();
  *(v22 + 400) = v31;
  v32 = *(v31 - 8);
  *(v22 + 408) = v32;
  (*(v32 + 16))(v22 + 144, v22 + 16, v31);
  if (*(v22 + 168))
  {
    v33 = *(v22 + 160);
    *(v22 + 80) = *(v22 + 144);
    *(v22 + 96) = v33;
    v34 = *(v22 + 192);
    *(v22 + 112) = *(v22 + 176);
    *(v22 + 128) = v34;
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2();
    }

    v35 = type metadata accessor for Logger();
    __swift_project_value_buffer(v35, static Logger.siriPhone);
    v36 = *(v30 - 8);
    *(v22 + 416) = v36;
    v37 = *(v36 + 16);
    v37(v22 + 208, v22 + 80, v30);
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = *(v22 + 384);
      v41 = swift_slowAlloc();
      a10 = swift_slowAlloc();
      *v41 = 136315394;
      *(v22 + 352) = v40;
      swift_getMetatypeMetadata();
      v42 = String.init<A>(describing:)();
      v44 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v42, v43, &a10);

      *(v41 + 4) = v44;
      *(v41 + 12) = 2080;
      v37(v22 + 272, v22 + 208, v30);
      v45 = *(v36 + 8);
      v45(v22 + 208, v30);
      v46 = AnyIntentResolver.description.getter();
      v48 = v47;
      v45(v22 + 272, v30);
      v49 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v46, v48, &a10);

      *(v41 + 14) = v49;
      _os_log_impl(&dword_0, v38, v39, "#FirstHitIntentResolver<%s> Chose resolver: %s)", v41, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_26_0();
      OUTLINED_FUNCTION_35();
    }

    else
    {
      v45 = *(v36 + 8);
      v45(v22 + 208, v30);
    }

    *(v22 + 424) = v45;
    v69 = swift_task_alloc();
    *(v22 + 432) = v69;
    OUTLINED_FUNCTION_1_117();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_9_72();
    *v69 = v70;
    v69[1] = FirstHitIntentResolver.resolve(skIntent:nlIntent:);
    v71 = *(v22 + 360);
    v72 = *(v22 + 368);
    OUTLINED_FUNCTION_15_11();

    return SKIntentResolver.run(skIntent:nlIntent:)(v73, v74, v75, v76);
  }

  else
  {
    v50 = *(v32 + 8);
    v50(v22 + 144, v31);
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2();
    }

    v51 = type metadata accessor for Logger();
    __swift_project_value_buffer(v51, static Logger.siriPhone);
    v52 = Logger.logObject.getter();
    v53 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = *(v22 + 384);
      swift_slowAlloc();
      v55 = OUTLINED_FUNCTION_83();
      a10 = v55;
      *v27 = 136315138;
      *(v22 + 344) = v54;
      swift_getMetatypeMetadata();
      v56 = String.init<A>(describing:)();
      getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v56, v57, &a10);
      OUTLINED_FUNCTION_30_36();
      *(v27 + 4) = v23;
      _os_log_impl(&dword_0, v52, v53, "#FirstHitIntentResolver<%s> Didn't find a resolver that supports this request, returning skIntent as-is.", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v55);
      OUTLINED_FUNCTION_5_7();
      OUTLINED_FUNCTION_35();
    }

    v50(v22 + 16, v31);
    v58 = *(v22 + 360);
    v59 = *(v22 + 8);
    OUTLINED_FUNCTION_15_11();

    return v62(v60, v61, v62, v63, v64, v65, v66, v67, a9, a10, a11, a12, a13, a14);
  }
}

uint64_t FirstHitIntentResolver.resolve(skIntent:nlIntent:)(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 432);
  v6 = *v2;
  OUTLINED_FUNCTION_4_2();
  *v7 = v6;
  *(v4 + 440) = v1;

  if (v1)
  {
    v8 = FirstHitIntentResolver.resolve(skIntent:nlIntent:);
  }

  else
  {
    *(v4 + 448) = a1;
    v8 = FirstHitIntentResolver.resolve(skIntent:nlIntent:);
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t FirstHitIntentResolver.resolve(skIntent:nlIntent:)()
{
  v3 = OUTLINED_FUNCTION_21_43();
  v4(v3);
  (*(v0 + 8))(v2 + 16, v1);
  v5 = *(v2 + 448);
  v6 = *(v2 + 8);

  return v6(v5);
}

{
  v3 = OUTLINED_FUNCTION_21_43();
  v4(v3);
  (*(v0 + 8))(v2 + 16, v1);
  v5 = *(v2 + 8);
  v6 = *(v2 + 440);

  return v5();
}

uint64_t closure #1 in FirstHitIntentResolver.resolve(skIntent:nlIntent:)(uint64_t a1)
{
  v2 = type metadata accessor for AnyIntentResolver();
  v17 = AnyIntentResolver.shouldRunResolver(skIntent:nlIntent:)();
  if (one-time initialization token for siriPhone != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Logger.siriPhone);
  v4 = *(v2 - 8);
  v5 = *(v4 + 16);
  v5(v19, a1, v2);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v20 = v9;
    *v8 = 136315394;
    v5(v18, v19, v2);
    v10 = *(v4 + 8);
    v10(v19, v2);
    v11 = AnyIntentResolver.description.getter();
    v13 = v12;
    v10(v18, v2);
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v13, &v20);

    *(v8 + 4) = v14;
    *(v8 + 12) = 1024;
    v15 = v17;
    *(v8 + 14) = v17 & 1;
    _os_log_impl(&dword_0, v6, v7, "#%s shouldRunResolver = %{BOOL}d", v8, 0x12u);
    __swift_destroy_boxed_opaque_existential_1(v9);
  }

  else
  {
    (*(v4 + 8))(v19, v2);

    v15 = v17;
  }

  return v15 & 1;
}

uint64_t protocol witness for SKIntentResolver.resolve(skIntent:nlIntent:) in conformance FirstHitIntentResolver<A>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = *(a3 + 16);
  *v9 = v4;
  v9[1] = AnnounceCallBellCATsSimple.announceCallBellEnded();

  return FirstHitIntentResolver.resolve(skIntent:nlIntent:)(a1, a2, v8, v10);
}

uint64_t partial apply for closure #1 in FirstHitIntentResolver.resolve(skIntent:nlIntent:)(uint64_t a1)
{
  v3 = v1[2];
  v2 = v1[3];
  v4 = v1[4];
  return closure #1 in FirstHitIntentResolver.resolve(skIntent:nlIntent:)(a1) & 1;
}

void SKTransformer.convertToSKIntent<A>(phoneCallNLIntent:rchFlowContext:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_66();
  a19 = v21;
  a20 = v22;
  v23 = v20;
  v25 = v24;
  v60 = v26;
  v27 = type metadata accessor for PhoneCallNLv3Intent(0);
  v28 = OUTLINED_FUNCTION_8_76(v27, &a9);
  v30 = *(v29 + 64);
  __chkstk_darwin(v28);
  OUTLINED_FUNCTION_5_4();
  v59 = v31;
  OUTLINED_FUNCTION_46_26();
  v33 = v32;
  v61 = v25;
  v34 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v35 = [v34 _className];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_2_113();
  static Signpost.begin(_:string1:)();

  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2();
  }

  v36 = type metadata accessor for Logger();
  v58 = __swift_project_value_buffer(v36, static Logger.siriPhone);
  v37 = Logger.logObject.getter();
  v38 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v37, v38))
  {
    OUTLINED_FUNCTION_86_1();
    v63[0] = OUTLINED_FUNCTION_55_4();
    *v33 = 136315394;
    *(v33 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000034, 0x800000000045C090, v63);
    *(v33 + 12) = 2080;
    v64[0] = v61;
    swift_getMetatypeMetadata();
    v39 = String.init<A>(describing:)();
    v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v40, v63);

    *(v33 + 14) = v41;
    _os_log_impl(&dword_0, v37, v38, "#SKTransformer %s to %s", v33, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_26_0();
    OUTLINED_FUNCTION_26_0();
  }

  _s27PhoneCallFlowDelegatePlugin22SharedGlobalsProviding_pWOcTm_0(v60, v64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMR);
  if (swift_dynamicCast())
  {
    v42 = OUTLINED_FUNCTION_31_30();
    SKTransformer.nlv3Conversion<A>(phoneCallNLIntent:rchFlowContext:)(v42, v43, v44, v45);
    if (!v23)
    {
      outlined destroy of PhoneCallNLv3Intent(v59);
      __swift_destroy_boxed_opaque_existential_1(v64);
      goto LABEL_19;
    }

    outlined destroy of PhoneCallNLv3Intent(v59);
    __swift_destroy_boxed_opaque_existential_1(v64);
  }

  else
  {
    if (OUTLINED_FUNCTION_31_21())
    {
      outlined destroy of PhoneCallNLv4Intent(v63);
    }

    else
    {
      if (!OUTLINED_FUNCTION_31_21())
      {
        __swift_destroy_boxed_opaque_existential_1(v64);
        goto LABEL_19;
      }

      outlined destroy of PhoneCallIFIntent(v63);
    }

    __swift_destroy_boxed_opaque_existential_1(v64);
    v46 = OUTLINED_FUNCTION_31_30();
    SKTransformer.nlv4Conversion<A>(phoneCallNLIntent:rchFlowContext:)(v46, v47, v48, v49, v50);
    if (!v23)
    {
      goto LABEL_19;
    }
  }

  swift_errorRetain();
  v51 = Logger.logObject.getter();
  static os_log_type_t.error.getter();
  OUTLINED_FUNCTION_47_24();
  if (OUTLINED_FUNCTION_49_27())
  {
    OUTLINED_FUNCTION_86_1();
    v63[0] = OUTLINED_FUNCTION_55_4();
    *v33 = 136315394;
    v52 = _typeName(_:qualified:)();
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v52, v53, v63);
    OUTLINED_FUNCTION_40_0();

    *(v33 + 4) = v58;
    *(v33 + 12) = 2080;
    swift_getErrorValue();
    v54 = Error.localizedDescription.getter();
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v54, v55, v63);
    OUTLINED_FUNCTION_40_0();

    *(v33 + 14) = v62;
    OUTLINED_FUNCTION_24_39(&dword_0, v56, v57, "#SKTransformer Error converting PhoneCallNLIntent to %s: %s");
    OUTLINED_FUNCTION_34_22();
    OUTLINED_FUNCTION_26_0();
    OUTLINED_FUNCTION_26_0();
  }

  else
  {
  }

LABEL_19:
  Signpost.OpenSignpost.end()();
  Signpost.OpenSignpost.end()();

  OUTLINED_FUNCTION_65();
}

void SKTransformer.convertToSKIntent<A>(input:rchFlowContext:)()
{
  OUTLINED_FUNCTION_66();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v63 = v8;
  v10 = v9;
  v11 = type metadata accessor for Input();
  v12 = OUTLINED_FUNCTION_7(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  __chkstk_darwin(v12);
  OUTLINED_FUNCTION_5_4();
  v62 = v17;
  v18 = type metadata accessor for Parse();
  v19 = OUTLINED_FUNCTION_7(v18);
  v65 = v20;
  v66 = v19;
  v22 = *(v21 + 64);
  __chkstk_darwin(v19);
  v24 = &v58 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2();
  }

  v25 = type metadata accessor for Logger();
  v61 = __swift_project_value_buffer(v25, static Logger.siriPhone);
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.debug.getter();
  v28 = os_log_type_enabled(v26, v27);
  v64 = v3;
  if (v28)
  {
    v29 = OUTLINED_FUNCTION_86_1();
    v59 = v14;
    v30 = v29;
    v31 = swift_slowAlloc();
    v60 = v11;
    v58 = v31;
    v70[0] = v31;
    *v30 = 136315394;
    *(v30 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000028, 0x8000000000461B90, v70);
    *(v30 + 12) = 2080;
    *&v67 = v3;
    swift_getMetatypeMetadata();
    v32 = OUTLINED_FUNCTION_48_24();
    v34 = v24;
    v35 = v7;
    v36 = v1;
    v37 = v10;
    v38 = v5;
    v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v33, v70);

    *(v30 + 14) = v39;
    v5 = v38;
    v10 = v37;
    v1 = v36;
    v7 = v35;
    v24 = v34;
    _os_log_impl(&dword_0, v26, v27, "#SKTransformer %s to %s", v30, 0x16u);
    swift_arrayDestroy();
    v11 = v60;
    OUTLINED_FUNCTION_26_0();
    v14 = v59;
    OUTLINED_FUNCTION_26_0();
  }

  v40 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  v41 = *(v40 + 72);
  v42 = OUTLINED_FUNCTION_40_0();
  v44 = v43(v42, v40);
  Input.parse.getter();
  (*(*v44 + 192))(&v67, v24);

  (*(v65 + 8))(v24, v66);
  if (v69)
  {
    outlined init with take of SPHConversation(&v67, v70);
    SKTransformer.convertToSKIntent<A>(phoneCallNLIntent:rchFlowContext:)(v70, v63, v7, v5, v64, v45, v46, v47, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, *(&v67 + 1), v68);
    __swift_destroy_boxed_opaque_existential_1(v70);
  }

  else
  {
    outlined destroy of PhoneCallNLIntent?(&v67);
    v48 = v10;
    v49 = v62;
    (*(v14 + 16))(v62, v48, v11);
    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v70[0] = v53;
      *v52 = 136315138;
      Input.parse.getter();
      v54 = String.init(describing:)(v24);
      v56 = v55;
      (*(v14 + 8))(v49, v11);
      v57 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v54, v56, v70);

      *(v52 + 4) = v57;
      _os_log_impl(&dword_0, v50, v51, "#SKTransformer Could not transform Input to PhoneCallNLIntent: %s. Returning nil.", v52, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v53);
      OUTLINED_FUNCTION_12_3();
      OUTLINED_FUNCTION_26_0();
    }

    else
    {

      (*(v14 + 8))(v49, v11);
    }
  }

  OUTLINED_FUNCTION_65();
}

uint64_t SKTransformer.nlv3Conversion<A>(phoneCallNLIntent:rchFlowContext:)(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v96 = a4;
  v103 = a3;
  v104 = a2;
  v106 = a1;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo08INSearchE13HistoryIntentCGMd, &_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo08INSearchE13HistoryIntentCGMR);
  v84 = *(v85 - 8);
  v4 = *(v84 + 64);
  __chkstk_darwin(v85);
  v83 = &v81 - v5;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo08INHangUpE6IntentCGMd, &_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo08INHangUpE6IntentCGMR);
  v88 = *(v87 - 8);
  v6 = *(v88 + 64);
  __chkstk_darwin(v87);
  v86 = &v81 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo30INIdentifyIncomingCallerIntentCGMd, &_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo30INIdentifyIncomingCallerIntentCGMR);
  v9 = *(v8 - 8);
  v90 = v8;
  v91 = v9;
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v89 = &v81 - v11;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo06INJoinE6IntentCGMd, &_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo06INJoinE6IntentCGMR);
  v94 = *(v92 - 8);
  v12 = *(v94 + 64);
  __chkstk_darwin(v92);
  v93 = &v81 - v13;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo08INAnswerE6IntentCGMd, &_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo08INAnswerE6IntentCGMR);
  v95 = *(v99 - 8);
  v14 = *(v95 + 64);
  __chkstk_darwin(v99);
  v16 = &v81 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo012INStartVideoE6IntentCGMd, &_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo012INStartVideoE6IntentCGMR);
  v97 = *(v17 - 8);
  v18 = *(v97 + 64);
  __chkstk_darwin(v17);
  v20 = &v81 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo012INStartAudioE6IntentCGMd, &_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo012INStartAudioE6IntentCGMR);
  v98 = *(v21 - 8);
  v22 = *(v98 + 64);
  __chkstk_darwin(v21);
  v24 = &v81 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo07INStartE6IntentCGMd, &_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo07INStartE6IntentCGMR);
  v100 = *(v25 - 8);
  v26 = *(v100 + 64);
  __chkstk_darwin(v25);
  v28 = &v81 - v27;
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INStartCallIntent, INStartCallIntent_ptr);
  if (swift_dynamicCastMetatype())
  {
    _s27PhoneCallFlowDelegatePlugin22SharedGlobalsProviding_pWOcTm_0(v102, v105);
    v29 = swift_allocObject();
    v30 = v103;
    *(v29 + 16) = v104;
    *(v29 + 24) = v30;
    outlined init with take of SPHConversation(v105, v29 + 32);
    v31 = v30;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMR);
    Transformer.init(transform:)();
    v32 = Transformer.transform.getter();
    (*(v100 + 8))(v28, v25);
    v33 = v101;
    v32(v105, v106);
    if (v33)
    {
    }

    goto LABEL_14;
  }

  v82 = v20;
  v100 = v17;
  v81 = v16;
  v35 = v99;
  v36 = v102;
  v37 = v103;
  v38 = v104;
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INStartAudioCallIntent, INStartAudioCallIntent_ptr);
  if (swift_dynamicCastMetatype())
  {
    _s27PhoneCallFlowDelegatePlugin22SharedGlobalsProviding_pWOcTm_0(v36, v105);
    v39 = swift_allocObject();
    *(v39 + 16) = v38;
    *(v39 + 24) = v37;
    outlined init with take of SPHConversation(v105, v39 + 32);
    v40 = v37;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMR);
    Transformer.init(transform:)();
    v41 = Transformer.transform.getter();
    (*(v98 + 8))(v24, v21);
    v42 = v101;
    v41(v105, v106);
    goto LABEL_13;
  }

  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INStartVideoCallIntent, INStartVideoCallIntent_ptr);
  if (swift_dynamicCastMetatype())
  {
    _s27PhoneCallFlowDelegatePlugin22SharedGlobalsProviding_pWOcTm_0(v36, v105);
    v43 = swift_allocObject();
    *(v43 + 16) = v38;
    *(v43 + 24) = v37;
    outlined init with take of SPHConversation(v105, v43 + 32);
    v44 = v37;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMR);
    v45 = v82;
    Transformer.init(transform:)();
    v46 = v100;
    v47 = Transformer.transform.getter();
    v48 = v97;
  }

  else
  {
    type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INAnswerCallIntent, INAnswerCallIntent_ptr);
    v53 = swift_dynamicCastMetatype();
    v54 = v106;
    v55 = v36;
    if (v53)
    {
      _s27PhoneCallFlowDelegatePlugin22SharedGlobalsProviding_pWOcTm_0(v36, v105);
      v56 = swift_allocObject();
      v56[2] = v38;
      v56[3] = v37;
      outlined init with take of SPHConversation(v105, (v56 + 4));
      v57 = v96;
      v56[9] = v96;
      v58 = v57;

      v59 = v37;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMR);
      v60 = v81;
      Transformer.init(transform:)();
      v47 = Transformer.transform.getter();
      (*(v95 + 8))(v60, v35);
      v52 = v54;
      goto LABEL_12;
    }

    type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INJoinCallIntent, INJoinCallIntent_ptr);
    v62 = swift_dynamicCastMetatype();
    v63 = v38;
    v64 = v96;
    if (!v62)
    {
      type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INIdentifyIncomingCallerIntent, INIdentifyIncomingCallerIntent_ptr);
      if (swift_dynamicCastMetatype())
      {
        _s27PhoneCallFlowDelegatePlugin22SharedGlobalsProviding_pWOcTm_0(v55, v105);
        v67 = swift_allocObject();
        *(v67 + 16) = v38;
        *(v67 + 24) = v37;
        outlined init with take of SPHConversation(v105, v67 + 32);
        v68 = v37;

        __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMR);
        v69 = v89;
        Transformer.init(transform:)();
        v70 = v90;
        v47 = Transformer.transform.getter();
        v49 = *(v91 + 8);
        v50 = v69;
      }

      else
      {
        type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INHangUpCallIntent, INHangUpCallIntent_ptr);
        if (!swift_dynamicCastMetatype())
        {
          type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INSearchCallHistoryIntent, INSearchCallHistoryIntent_ptr);
          v75 = swift_dynamicCastMetatype();
          v76 = v106;
          if (!v75)
          {
            v79 = type metadata accessor for TransformationError();
            lazy protocol witness table accessor for type TransformationError and conformance TransformationError();
            swift_allocError();
            (*(*(v79 - 8) + 104))(v80, enum case for TransformationError.notImplemented(_:), v79);
            return swift_willThrow();
          }

          v77 = v83;
          static Transformer<>.transformer(sharedGlobals:app:previousIntent:)(v55, v63, v37);
          v78 = v85;
          v47 = Transformer.transform.getter();
          (*(v84 + 8))(v77, v78);
          v52 = v76;
          goto LABEL_12;
        }

        _s27PhoneCallFlowDelegatePlugin22SharedGlobalsProviding_pWOcTm_0(v55, v105);
        v71 = swift_allocObject();
        v71[2] = v38;
        v71[3] = v37;
        outlined init with take of SPHConversation(v105, (v71 + 4));
        v71[9] = v64;
        v72 = v64;

        v73 = v37;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMR);
        v74 = v86;
        Transformer.init(transform:)();
        v70 = v87;
        v47 = Transformer.transform.getter();
        v49 = *(v88 + 8);
        v50 = v74;
      }

      v51 = v70;
      goto LABEL_9;
    }

    _s27PhoneCallFlowDelegatePlugin22SharedGlobalsProviding_pWOcTm_0(v55, v105);
    v65 = swift_allocObject();
    *(v65 + 16) = v38;
    *(v65 + 24) = v37;
    outlined init with take of SPHConversation(v105, v65 + 32);
    v66 = v37;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMR);
    v45 = v93;
    Transformer.init(transform:)();
    v46 = v92;
    v47 = Transformer.transform.getter();
    v48 = v94;
  }

  v49 = *(v48 + 8);
  v50 = v45;
  v51 = v46;
LABEL_9:
  v49(v50, v51);
  v52 = v106;
LABEL_12:
  v42 = v101;
  v47(v105, v52);
LABEL_13:
  if (v42)
  {
  }

LABEL_14:

  v61 = *&v105[0];
  result = swift_dynamicCastUnknownClass();
  if (!result)
  {

    return 0;
  }

  return result;
}

uint64_t SKTransformer.nlv4Conversion<A>(phoneCallNLIntent:rchFlowContext:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v104 = a1;
  v6 = v5;
  v99 = a4;
  v103 = a3;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo08INHangUpE6IntentCGMd, &_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo08INHangUpE6IntentCGMR);
  v94 = *(v95 - 8);
  v9 = *(v94 + 64);
  __chkstk_darwin(v95);
  v93 = &v92 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo05INAddE17ParticipantIntentCGMd, &_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo05INAddE17ParticipantIntentCGMR);
  v97 = *(v11 - 8);
  v12 = *(v97 + 64);
  __chkstk_darwin(v11);
  v14 = &v92 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo06INJoinE6IntentCGMd, &_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo06INJoinE6IntentCGMR);
  v98 = *(v15 - 8);
  v16 = *(v98 + 64);
  __chkstk_darwin(v15);
  v18 = &v92 - v17;
  v19 = type metadata accessor for ContactGroupResolver();
  v20 = *(v19 - 8);
  v101 = v19;
  v102 = v20;
  v21 = *(v20 + 64);
  v22 = __chkstk_darwin(v19);
  v24 = &v92 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v22);
  v96 = &v92 - v26;
  __chkstk_darwin(v25);
  v28 = &v92 - v27;
  v106 = a2;
  if (a2)
  {
    type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INStartCallIntent, INStartCallIntent_ptr);
    v29 = swift_dynamicCastMetatype();
    v100 = a5;
    if (v29)
    {
      _s27PhoneCallFlowDelegatePlugin22SharedGlobalsProviding_pWOcTm_0(v6, v108);
      if (v103)
      {
        objc_opt_self();
        swift_dynamicCastObjCClass();
      }

      ContactGroupResolver.init()();
      _s27PhoneCallFlowDelegatePlugin05StartB16IntentConversionO09convertToG005phoneB8NLIntent3app13sharedGlobals08previousG00pG8Response13groupResolverSo07INStartbG0CSgAA0abL0_p_17SiriAppResolution0V0CAA06SharedO9Providing_pAMSo08INIntentQ0CSgAA21ContactGroupResolving_ptFZTf4nnnnnen_n0U9Inference012ContactGroupS0V_Tt5g5();
      goto LABEL_18;
    }

    type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INStartAudioCallIntent, INStartAudioCallIntent_ptr);
    if (swift_dynamicCastMetatype())
    {
      _s27PhoneCallFlowDelegatePlugin22SharedGlobalsProviding_pWOcTm_0(v6, v108);
      v31 = v103;
      if (v103)
      {
        objc_opt_self();
        v31 = swift_dynamicCastObjCClass();
      }

      v32 = v106;
      v33 = v104;

      ContactGroupResolver.init()();
      _s27PhoneCallFlowDelegatePlugin010StartAudioB16IntentConversionO09convertToH005phoneB8NLIntent3app13sharedGlobals08previousH00qH8Response13groupResolverSo07INStartgbH0CSgAA0abM0_p_17SiriAppResolution0W0CAA06SharedP9Providing_pAMSo08INIntentR0CSgAA21ContactGroupResolving_ptFZTf4nnnnnen_n0V9Inference012ContactGroupT0V_Tt5g5(v33, v32, v108, v31, 0, v28, v34, v35, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103);
      goto LABEL_18;
    }

    type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INStartVideoCallIntent, INStartVideoCallIntent_ptr);
    if (swift_dynamicCastMetatype())
    {
      _s27PhoneCallFlowDelegatePlugin22SharedGlobalsProviding_pWOcTm_0(v6, v108);
      v36 = v103;
      if (v103)
      {
        objc_opt_self();
        v36 = swift_dynamicCastObjCClass();
      }

      v37 = v106;
      v38 = v104;

      ContactGroupResolver.init()();
      _s27PhoneCallFlowDelegatePlugin010StartVideoB16IntentConversionO09convertToH005phoneB8NLIntent3app13sharedGlobals08previousH00qH8Response13groupResolverSo07INStartgbH0CSgAA0abM0_p_17SiriAppResolution0W0CAA06SharedP9Providing_pAMSo08INIntentR0CSgAA21ContactGroupResolving_ptFZTf4nnnnnen_n0V9Inference012ContactGroupT0V_Tt5g5(v38, v37, v108, v36, 0, v28, v39, v40, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103);
      goto LABEL_18;
    }

    type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INAnswerCallIntent, INAnswerCallIntent_ptr);
    if (swift_dynamicCastMetatype())
    {
      _s27PhoneCallFlowDelegatePlugin22SharedGlobalsProviding_pWOcTm_0(v6, v108);
      if (v103)
      {
        objc_opt_self();
        swift_dynamicCastObjCClass();
      }

      ContactGroupResolver.init()();
      _s27PhoneCallFlowDelegatePlugin06AnswerB16IntentConversionO09convertToG005phoneB8NLIntent3app13sharedGlobals08previousG00pG8Response13groupResolverSo08INAnswerbG0CSgAA0abL0_p_17SiriAppResolution0V0CAA06SharedO9Providing_pAMSo08INIntentQ0CSgAA21ContactGroupResolving_ptFZTf4nnnnnen_n0U9Inference012ContactGroupS0V_Tt5g5();
LABEL_18:
      v41 = v30;

      __swift_destroy_boxed_opaque_existential_1(v108);
      (*(v102 + 8))(v28, v101);
      if (!v41)
      {
        return 0;
      }

      goto LABEL_19;
    }

    type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INJoinCallIntent, INJoinCallIntent_ptr);
    if (swift_dynamicCastMetatype())
    {
      _s27PhoneCallFlowDelegatePlugin22SharedGlobalsProviding_pWOcTm_0(v6, v108);
      v43 = swift_allocObject();
      v44 = v103;
      *(v43 + 16) = v106;
      *(v43 + 24) = v44;
      outlined init with take of SPHConversation(v108, v43 + 32);
      v45 = v44;
      swift_retain_n();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMR);
      Transformer.init(transform:)();
      v46 = Transformer.transform.getter();
      (*(v98 + 8))(v18, v15);
      v47 = v105;
      v46(v108, v104);
      if (v47)
      {
        goto LABEL_28;
      }
    }

    else
    {
      type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INAddCallParticipantIntent, INAddCallParticipantIntent_ptr);
      if (!swift_dynamicCastMetatype())
      {
        type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INIdentifyIncomingCallerIntent, INIdentifyIncomingCallerIntent_ptr);
        if (swift_dynamicCastMetatype())
        {
          _s27PhoneCallFlowDelegatePlugin22SharedGlobalsProviding_pWOcTm_0(v6, v108);
          v53 = v103;
          if (v103)
          {
            objc_opt_self();
            v53 = swift_dynamicCastObjCClass();
          }

          v54 = v106;
          v55 = v104;
          v56 = v96;

          ContactGroupResolver.init()();
          v57 = v55[4];
          __swift_project_boxed_opaque_existential_1(v55, v55[3]);
          if (PhoneCallNLIntent.hasAnyConfirmation()())
          {
            if (one-time initialization token for siriPhone != -1)
            {
              swift_once();
            }

            v58 = type metadata accessor for Logger();
            __swift_project_value_buffer(v58, static Logger.siriPhone);
            v59 = v53;
            v60 = Logger.logObject.getter();
            v61 = static os_log_type_t.debug.getter();

            if (os_log_type_enabled(v60, v61))
            {
              v62 = swift_slowAlloc();
              v63 = swift_slowAlloc();
              *&v107[0] = v63;
              *v62 = 136315138;
              v109 = v53;
              v64 = v59;
              __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo30INIdentifyIncomingCallerIntentCSgMd, &_sSo30INIdentifyIncomingCallerIntentCSgMR);
              v65 = String.init<A>(describing:)();
              v67 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v65, v66, v107);

              *(v62 + 4) = v67;
              _os_log_impl(&dword_0, v60, v61, "#IdentifyCallerIntentConversion is confirmation, returning previousIntent: %s.", v62, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v63);

              (*(v102 + 8))(v96, v101);
            }

            else
            {

              (*(v102 + 8))(v56, v101);
            }

            __swift_destroy_boxed_opaque_existential_1(v108);
            if (!v53)
            {
              return 0;
            }

            v41 = v59;
            goto LABEL_19;
          }

          v79 = [objc_allocWithZone(INIdentifyIncomingCallerIntent) init];
          v41 = _s27PhoneCallFlowDelegatePlugin20NLv4IntentConversionPAAE03setG8Metadata3for13sharedGlobals3app08previousG00G4TypeQzAJ_AA06SharedM9Providing_p17SiriAppResolution0T0CAJSgtFZAA014IdentifyCallergH0O_Tt3g5(v79, v108, v54, v53);

          (*(v102 + 8))(v56, v101);
        }

        else
        {
          type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INHangUpCallIntent, INHangUpCallIntent_ptr);
          if (swift_dynamicCastMetatype())
          {
            _s27PhoneCallFlowDelegatePlugin22SharedGlobalsProviding_pWOcTm_0(v6, v108);
            v68 = v106;
            v69 = v103;
            if (v103)
            {
              objc_opt_self();
              v69 = swift_dynamicCastObjCClass();
            }

            v70 = v99;
            v71 = v95;
            v72 = v94;
            v73 = v93;

            ContactGroupResolver.init()();
            _s27PhoneCallFlowDelegatePlugin22SharedGlobalsProviding_pWOcTm_0(v108, v107);
            v74 = swift_allocObject();
            v74[2] = v68;
            v74[3] = v69;
            outlined init with take of SPHConversation(v107, (v74 + 4));
            v74[9] = v70;
            v75 = v70;

            v76 = v69;
            __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMR);
            Transformer.init(transform:)();
            v77 = Transformer.transform.getter();
            (*(v72 + 8))(v73, v71);
            v78 = v105;
            v77(v107, v104);
            if (v78)
            {

              (*(v102 + 8))(v24, v101);
              __swift_destroy_boxed_opaque_existential_1(v108);
              return 0;
            }

            (*(v102 + 8))(v24, v101);
            __swift_destroy_boxed_opaque_existential_1(v108);
            v41 = *&v107[0];
            goto LABEL_19;
          }

          type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INSearchCallHistoryIntent, INSearchCallHistoryIntent_ptr);
          v80 = swift_dynamicCastMetatype();
          v81 = v106;
          if (!v80)
          {
            v85 = type metadata accessor for TransformationError();
            lazy protocol witness table accessor for type TransformationError and conformance TransformationError();
            swift_allocError();
            (*(*(v85 - 8) + 104))(v86, enum case for TransformationError.notImplemented(_:), v85);
            return swift_willThrow();
          }

          _s27PhoneCallFlowDelegatePlugin22SharedGlobalsProviding_pWOcTm_0(v6, v108);
          v82 = v103;
          if (v103)
          {
            objc_opt_self();
            v82 = swift_dynamicCastObjCClass();
          }

          v83 = v104;

          ContactGroupResolver.init()();
          v84 = static Transformer<>.convertToIntent(phoneCallNLIntent:app:sharedGlobals:previousIntent:)(v83, v81, v108);
          v41 = _s27PhoneCallFlowDelegatePlugin20NLv4IntentConversionPAAE03setG8Metadata3for13sharedGlobals3app08previousG00G4TypeQzAJ_AA06SharedM9Providing_p17SiriAppResolution0T0CAJSgtFZAA06Searchb7HistorygH0O_Tt3g5(v84, v108, v81, v82);

          (*(v102 + 8))(v28, v101);
        }

        __swift_destroy_boxed_opaque_existential_1(v108);
LABEL_19:
        result = swift_dynamicCastUnknownClass();
        if (result)
        {
          return result;
        }

        return 0;
      }

      _s27PhoneCallFlowDelegatePlugin22SharedGlobalsProviding_pWOcTm_0(v6, v108);
      v48 = swift_allocObject();
      v49 = v103;
      *(v48 + 16) = v106;
      *(v48 + 24) = v49;
      outlined init with take of SPHConversation(v108, v48 + 32);
      v50 = v49;
      swift_retain_n();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMR);
      Transformer.init(transform:)();
      v51 = Transformer.transform.getter();
      (*(v97 + 8))(v14, v11);
      v52 = v105;
      v51(v108, v104);
      if (v52)
      {
LABEL_28:
      }
    }

    v41 = *&v108[0];
    goto LABEL_19;
  }

  if (one-time initialization token for siriPhone != -1)
  {
    swift_once();
  }

  v87 = type metadata accessor for Logger();
  __swift_project_value_buffer(v87, static Logger.siriPhone);
  v88 = Logger.logObject.getter();
  v89 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v88, v89))
  {
    v90 = swift_slowAlloc();
    v91 = swift_slowAlloc();
    *&v108[0] = v91;
    *v90 = 136315138;
    *(v90 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000032, 0x8000000000461BC0, v108);
    _os_log_impl(&dword_0, v88, v89, "%s", v90, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v91);
  }

  static SiriKitLifecycle._logCrashToEventBus(_:)();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t getEnumTagSinglePayload for SKTransformer.RCHFlowContext(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 24))
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

uint64_t storeEnumTagSinglePayload for SKTransformer.RCHFlowContext(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

void specialized SKTransformer.convertToSKIntent<A>(phoneCallNLIntent:rchFlowContext:)()
{
  OUTLINED_FUNCTION_66();
  v8 = OUTLINED_FUNCTION_3_110(v3, v4, v5, v6, v7);
  v9 = OUTLINED_FUNCTION_8_76(v8, &v46);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  OUTLINED_FUNCTION_4_84(v12, v43);
  OUTLINED_FUNCTION_40(v0);
  v14 = *(v13 + 16);
  OUTLINED_FUNCTION_51_27();
  v15();
  OUTLINED_FUNCTION_46_26();
  OUTLINED_FUNCTION_6_87(v16, v17);
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INHangUpCallIntent, INHangUpCallIntent_ptr);
  v18 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v19 = [v18 _className];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_54_24();
  OUTLINED_FUNCTION_2_113();
  OUTLINED_FUNCTION_57_24();
  OUTLINED_FUNCTION_18_36(v20, v21, v22, v23);
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2();
  }

  v24 = type metadata accessor for Logger();
  v25 = OUTLINED_FUNCTION_38_26(v24, static Logger.siriPhone);
  v26 = static os_log_type_t.debug.getter();
  OUTLINED_FUNCTION_43(v26);
  v27 = &unk_426000;
  OUTLINED_FUNCTION_52_21();
  if (v28)
  {
    OUTLINED_FUNCTION_86_1();
    v29 = OUTLINED_FUNCTION_46_4();
    OUTLINED_FUNCTION_20_45(v29);
    *v19 = 136315394;
    v30 = OUTLINED_FUNCTION_21_44("convertToSKIntent(phoneCallNLIntent:rchFlowContext:)");
    OUTLINED_FUNCTION_19_40(v30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo18INHangUpCallIntentCmMd, &_sSo18INHangUpCallIntentCmMR);
    v31 = OUTLINED_FUNCTION_48_24();
    v27 = v2;
    OUTLINED_FUNCTION_25_37(v31, v32);
    OUTLINED_FUNCTION_15_56();
    OUTLINED_FUNCTION_33_23();
    OUTLINED_FUNCTION_30_37(&dword_0, v33, v34, "#SKTransformer %s to %s");
    OUTLINED_FUNCTION_22_35();
    OUTLINED_FUNCTION_26_0();
    OUTLINED_FUNCTION_12_3();
  }

  OUTLINED_FUNCTION_29_32();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMR);
  if (OUTLINED_FUNCTION_11_64())
  {
    OUTLINED_FUNCTION_0_113();
    specialized SKTransformer.nlv3Conversion<A>(phoneCallNLIntent:rchFlowContext:)();
    if (!v19)
    {
      OUTLINED_FUNCTION_55_24();
      __swift_destroy_boxed_opaque_existential_1(v45);
      goto LABEL_19;
    }

    outlined destroy of PhoneCallNLv3Intent(v27);
    __swift_destroy_boxed_opaque_existential_1(v45);
  }

  else
  {
    if (OUTLINED_FUNCTION_13_55())
    {
      outlined destroy of PhoneCallNLv4Intent(v44);
    }

    else
    {
      if ((OUTLINED_FUNCTION_13_55() & 1) == 0)
      {
        __swift_destroy_boxed_opaque_existential_1(v45);
        goto LABEL_19;
      }

      outlined destroy of PhoneCallIFIntent(v44);
    }

    __swift_destroy_boxed_opaque_existential_1(v45);
    OUTLINED_FUNCTION_0_113();
    specialized SKTransformer.nlv4Conversion<A>(phoneCallNLIntent:rchFlowContext:)();
    if (!v19)
    {
      goto LABEL_19;
    }
  }

  swift_errorRetain();
  v35 = OUTLINED_FUNCTION_56_15();
  static os_log_type_t.error.getter();
  OUTLINED_FUNCTION_47_24();
  if (OUTLINED_FUNCTION_49_27())
  {
    OUTLINED_FUNCTION_86_1();
    v36 = OUTLINED_FUNCTION_55_4();
    OUTLINED_FUNCTION_9_73(v36);
    v37 = OUTLINED_FUNCTION_27_36(4.8151e-34);
    OUTLINED_FUNCTION_10_71(v37, v38);
    OUTLINED_FUNCTION_40_0();

    OUTLINED_FUNCTION_16_54();
    v39 = OUTLINED_FUNCTION_14_57();
    OUTLINED_FUNCTION_39_26(v39, v40);
    OUTLINED_FUNCTION_12_63();
    *(v1 + 14) = v25;
    OUTLINED_FUNCTION_24_39(&dword_0, v41, v42, "#SKTransformer Error converting PhoneCallNLIntent to %s: %s");
    OUTLINED_FUNCTION_34_22();
    OUTLINED_FUNCTION_23_34();
    OUTLINED_FUNCTION_26_0();
  }

  else
  {
  }

LABEL_19:
  OUTLINED_FUNCTION_7_78();
  OUTLINED_FUNCTION_17_50();

  OUTLINED_FUNCTION_44_20();
  OUTLINED_FUNCTION_65();
}

{
  OUTLINED_FUNCTION_66();
  v8 = OUTLINED_FUNCTION_3_110(v3, v4, v5, v6, v7);
  v9 = OUTLINED_FUNCTION_8_76(v8, &v46);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  OUTLINED_FUNCTION_4_84(v12, v43);
  OUTLINED_FUNCTION_40(v0);
  v14 = *(v13 + 16);
  OUTLINED_FUNCTION_51_27();
  v15();
  OUTLINED_FUNCTION_46_26();
  OUTLINED_FUNCTION_6_87(v16, v17);
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INStartAudioCallIntent, INStartAudioCallIntent_ptr);
  v18 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v19 = [v18 _className];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_54_24();
  OUTLINED_FUNCTION_2_113();
  OUTLINED_FUNCTION_57_24();
  OUTLINED_FUNCTION_18_36(v20, v21, v22, v23);
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2();
  }

  v24 = type metadata accessor for Logger();
  v25 = OUTLINED_FUNCTION_38_26(v24, static Logger.siriPhone);
  v26 = static os_log_type_t.debug.getter();
  OUTLINED_FUNCTION_43(v26);
  v27 = &unk_426000;
  OUTLINED_FUNCTION_52_21();
  if (v28)
  {
    OUTLINED_FUNCTION_86_1();
    v29 = OUTLINED_FUNCTION_46_4();
    OUTLINED_FUNCTION_20_45(v29);
    *v19 = 136315394;
    v30 = OUTLINED_FUNCTION_21_44("convertToSKIntent(phoneCallNLIntent:rchFlowContext:)");
    OUTLINED_FUNCTION_19_40(v30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo22INStartAudioCallIntentCmMd, &_sSo22INStartAudioCallIntentCmMR);
    v31 = OUTLINED_FUNCTION_48_24();
    v27 = v2;
    OUTLINED_FUNCTION_25_37(v31, v32);
    OUTLINED_FUNCTION_15_56();
    OUTLINED_FUNCTION_33_23();
    OUTLINED_FUNCTION_30_37(&dword_0, v33, v34, "#SKTransformer %s to %s");
    OUTLINED_FUNCTION_22_35();
    OUTLINED_FUNCTION_26_0();
    OUTLINED_FUNCTION_12_3();
  }

  OUTLINED_FUNCTION_29_32();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMR);
  if (OUTLINED_FUNCTION_11_64())
  {
    OUTLINED_FUNCTION_0_113();
    specialized SKTransformer.nlv3Conversion<A>(phoneCallNLIntent:rchFlowContext:)();
    if (!v19)
    {
      OUTLINED_FUNCTION_55_24();
      __swift_destroy_boxed_opaque_existential_1(v45);
      goto LABEL_19;
    }

    outlined destroy of PhoneCallNLv3Intent(v27);
    __swift_destroy_boxed_opaque_existential_1(v45);
  }

  else
  {
    if (OUTLINED_FUNCTION_13_55())
    {
      outlined destroy of PhoneCallNLv4Intent(v44);
    }

    else
    {
      if ((OUTLINED_FUNCTION_13_55() & 1) == 0)
      {
        __swift_destroy_boxed_opaque_existential_1(v45);
        goto LABEL_19;
      }

      outlined destroy of PhoneCallIFIntent(v44);
    }

    __swift_destroy_boxed_opaque_existential_1(v45);
    OUTLINED_FUNCTION_0_113();
    specialized SKTransformer.nlv4Conversion<A>(phoneCallNLIntent:rchFlowContext:)();
    if (!v19)
    {
      goto LABEL_19;
    }
  }

  swift_errorRetain();
  v35 = OUTLINED_FUNCTION_56_15();
  static os_log_type_t.error.getter();
  OUTLINED_FUNCTION_47_24();
  if (OUTLINED_FUNCTION_49_27())
  {
    OUTLINED_FUNCTION_86_1();
    v36 = OUTLINED_FUNCTION_55_4();
    OUTLINED_FUNCTION_9_73(v36);
    v37 = OUTLINED_FUNCTION_27_36(4.8151e-34);
    OUTLINED_FUNCTION_10_71(v37, v38);
    OUTLINED_FUNCTION_40_0();

    OUTLINED_FUNCTION_16_54();
    v39 = OUTLINED_FUNCTION_14_57();
    OUTLINED_FUNCTION_39_26(v39, v40);
    OUTLINED_FUNCTION_12_63();
    *(v1 + 14) = v25;
    OUTLINED_FUNCTION_24_39(&dword_0, v41, v42, "#SKTransformer Error converting PhoneCallNLIntent to %s: %s");
    OUTLINED_FUNCTION_34_22();
    OUTLINED_FUNCTION_23_34();
    OUTLINED_FUNCTION_26_0();
  }

  else
  {
  }

LABEL_19:
  OUTLINED_FUNCTION_7_78();
  OUTLINED_FUNCTION_17_50();

  OUTLINED_FUNCTION_44_20();
  OUTLINED_FUNCTION_65();
}

{
  OUTLINED_FUNCTION_66();
  v8 = OUTLINED_FUNCTION_3_110(v3, v4, v5, v6, v7);
  v9 = OUTLINED_FUNCTION_8_76(v8, &v46);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  OUTLINED_FUNCTION_4_84(v12, v43);
  OUTLINED_FUNCTION_40(v0);
  v14 = *(v13 + 16);
  OUTLINED_FUNCTION_51_27();
  v15();
  OUTLINED_FUNCTION_46_26();
  OUTLINED_FUNCTION_6_87(v16, v17);
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INStartCallIntent, INStartCallIntent_ptr);
  v18 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v19 = [v18 _className];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_54_24();
  OUTLINED_FUNCTION_2_113();
  OUTLINED_FUNCTION_57_24();
  OUTLINED_FUNCTION_18_36(v20, v21, v22, v23);
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2();
  }

  v24 = type metadata accessor for Logger();
  v25 = OUTLINED_FUNCTION_38_26(v24, static Logger.siriPhone);
  v26 = static os_log_type_t.debug.getter();
  OUTLINED_FUNCTION_43(v26);
  v27 = &unk_426000;
  OUTLINED_FUNCTION_52_21();
  if (v28)
  {
    OUTLINED_FUNCTION_86_1();
    v29 = OUTLINED_FUNCTION_46_4();
    OUTLINED_FUNCTION_20_45(v29);
    *v19 = 136315394;
    v30 = OUTLINED_FUNCTION_21_44("convertToSKIntent(phoneCallNLIntent:rchFlowContext:)");
    OUTLINED_FUNCTION_19_40(v30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo17INStartCallIntentCmMd, &_sSo17INStartCallIntentCmMR);
    v31 = OUTLINED_FUNCTION_48_24();
    v27 = v2;
    OUTLINED_FUNCTION_25_37(v31, v32);
    OUTLINED_FUNCTION_15_56();
    OUTLINED_FUNCTION_33_23();
    OUTLINED_FUNCTION_30_37(&dword_0, v33, v34, "#SKTransformer %s to %s");
    OUTLINED_FUNCTION_22_35();
    OUTLINED_FUNCTION_26_0();
    OUTLINED_FUNCTION_12_3();
  }

  OUTLINED_FUNCTION_29_32();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMR);
  if (OUTLINED_FUNCTION_11_64())
  {
    OUTLINED_FUNCTION_0_113();
    specialized SKTransformer.nlv3Conversion<A>(phoneCallNLIntent:rchFlowContext:)();
    if (!v19)
    {
      OUTLINED_FUNCTION_55_24();
      __swift_destroy_boxed_opaque_existential_1(v45);
      goto LABEL_19;
    }

    outlined destroy of PhoneCallNLv3Intent(v27);
    __swift_destroy_boxed_opaque_existential_1(v45);
  }

  else
  {
    if (OUTLINED_FUNCTION_13_55())
    {
      outlined destroy of PhoneCallNLv4Intent(v44);
    }

    else
    {
      if ((OUTLINED_FUNCTION_13_55() & 1) == 0)
      {
        __swift_destroy_boxed_opaque_existential_1(v45);
        goto LABEL_19;
      }

      outlined destroy of PhoneCallIFIntent(v44);
    }

    __swift_destroy_boxed_opaque_existential_1(v45);
    OUTLINED_FUNCTION_0_113();
    specialized SKTransformer.nlv4Conversion<A>(phoneCallNLIntent:rchFlowContext:)();
    if (!v19)
    {
      goto LABEL_19;
    }
  }

  swift_errorRetain();
  v35 = OUTLINED_FUNCTION_56_15();
  static os_log_type_t.error.getter();
  OUTLINED_FUNCTION_47_24();
  if (OUTLINED_FUNCTION_49_27())
  {
    OUTLINED_FUNCTION_86_1();
    v36 = OUTLINED_FUNCTION_55_4();
    OUTLINED_FUNCTION_9_73(v36);
    v37 = OUTLINED_FUNCTION_27_36(4.8151e-34);
    OUTLINED_FUNCTION_10_71(v37, v38);
    OUTLINED_FUNCTION_40_0();

    OUTLINED_FUNCTION_16_54();
    v39 = OUTLINED_FUNCTION_14_57();
    OUTLINED_FUNCTION_39_26(v39, v40);
    OUTLINED_FUNCTION_12_63();
    *(v1 + 14) = v25;
    OUTLINED_FUNCTION_24_39(&dword_0, v41, v42, "#SKTransformer Error converting PhoneCallNLIntent to %s: %s");
    OUTLINED_FUNCTION_34_22();
    OUTLINED_FUNCTION_23_34();
    OUTLINED_FUNCTION_26_0();
  }

  else
  {
  }

LABEL_19:
  OUTLINED_FUNCTION_7_78();
  OUTLINED_FUNCTION_17_50();

  OUTLINED_FUNCTION_44_20();
  OUTLINED_FUNCTION_65();
}

{
  OUTLINED_FUNCTION_66();
  v8 = OUTLINED_FUNCTION_3_110(v3, v4, v5, v6, v7);
  v9 = OUTLINED_FUNCTION_8_76(v8, &v46);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  OUTLINED_FUNCTION_4_84(v12, v43);
  OUTLINED_FUNCTION_40(v0);
  v14 = *(v13 + 16);
  OUTLINED_FUNCTION_51_27();
  v15();
  OUTLINED_FUNCTION_46_26();
  OUTLINED_FUNCTION_6_87(v16, v17);
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INStartVideoCallIntent, INStartVideoCallIntent_ptr);
  v18 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v19 = [v18 _className];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_54_24();
  OUTLINED_FUNCTION_2_113();
  OUTLINED_FUNCTION_57_24();
  OUTLINED_FUNCTION_18_36(v20, v21, v22, v23);
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2();
  }

  v24 = type metadata accessor for Logger();
  v25 = OUTLINED_FUNCTION_38_26(v24, static Logger.siriPhone);
  v26 = static os_log_type_t.debug.getter();
  OUTLINED_FUNCTION_43(v26);
  v27 = &unk_426000;
  OUTLINED_FUNCTION_52_21();
  if (v28)
  {
    OUTLINED_FUNCTION_86_1();
    v29 = OUTLINED_FUNCTION_46_4();
    OUTLINED_FUNCTION_20_45(v29);
    *v19 = 136315394;
    v30 = OUTLINED_FUNCTION_21_44("convertToSKIntent(phoneCallNLIntent:rchFlowContext:)");
    OUTLINED_FUNCTION_19_40(v30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo22INStartVideoCallIntentCmMd, &_sSo22INStartVideoCallIntentCmMR);
    v31 = OUTLINED_FUNCTION_48_24();
    v27 = v2;
    OUTLINED_FUNCTION_25_37(v31, v32);
    OUTLINED_FUNCTION_15_56();
    OUTLINED_FUNCTION_33_23();
    OUTLINED_FUNCTION_30_37(&dword_0, v33, v34, "#SKTransformer %s to %s");
    OUTLINED_FUNCTION_22_35();
    OUTLINED_FUNCTION_26_0();
    OUTLINED_FUNCTION_12_3();
  }

  OUTLINED_FUNCTION_29_32();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMR);
  if (OUTLINED_FUNCTION_11_64())
  {
    OUTLINED_FUNCTION_0_113();
    specialized SKTransformer.nlv3Conversion<A>(phoneCallNLIntent:rchFlowContext:)();
    if (!v19)
    {
      OUTLINED_FUNCTION_55_24();
      __swift_destroy_boxed_opaque_existential_1(v45);
      goto LABEL_19;
    }

    outlined destroy of PhoneCallNLv3Intent(v27);
    __swift_destroy_boxed_opaque_existential_1(v45);
  }

  else
  {
    if (OUTLINED_FUNCTION_13_55())
    {
      outlined destroy of PhoneCallNLv4Intent(v44);
    }

    else
    {
      if ((OUTLINED_FUNCTION_13_55() & 1) == 0)
      {
        __swift_destroy_boxed_opaque_existential_1(v45);
        goto LABEL_19;
      }

      outlined destroy of PhoneCallIFIntent(v44);
    }

    __swift_destroy_boxed_opaque_existential_1(v45);
    OUTLINED_FUNCTION_0_113();
    specialized SKTransformer.nlv4Conversion<A>(phoneCallNLIntent:rchFlowContext:)();
    if (!v19)
    {
      goto LABEL_19;
    }
  }

  swift_errorRetain();
  v35 = OUTLINED_FUNCTION_56_15();
  static os_log_type_t.error.getter();
  OUTLINED_FUNCTION_47_24();
  if (OUTLINED_FUNCTION_49_27())
  {
    OUTLINED_FUNCTION_86_1();
    v36 = OUTLINED_FUNCTION_55_4();
    OUTLINED_FUNCTION_9_73(v36);
    v37 = OUTLINED_FUNCTION_27_36(4.8151e-34);
    OUTLINED_FUNCTION_10_71(v37, v38);
    OUTLINED_FUNCTION_40_0();

    OUTLINED_FUNCTION_16_54();
    v39 = OUTLINED_FUNCTION_14_57();
    OUTLINED_FUNCTION_39_26(v39, v40);
    OUTLINED_FUNCTION_12_63();
    *(v1 + 14) = v25;
    OUTLINED_FUNCTION_24_39(&dword_0, v41, v42, "#SKTransformer Error converting PhoneCallNLIntent to %s: %s");
    OUTLINED_FUNCTION_34_22();
    OUTLINED_FUNCTION_23_34();
    OUTLINED_FUNCTION_26_0();
  }

  else
  {
  }

LABEL_19:
  OUTLINED_FUNCTION_7_78();
  OUTLINED_FUNCTION_17_50();

  OUTLINED_FUNCTION_44_20();
  OUTLINED_FUNCTION_65();
}

unint64_t lazy protocol witness table accessor for type TransformationError and conformance TransformationError()
{
  result = lazy protocol witness table cache variable for type TransformationError and conformance TransformationError;
  if (!lazy protocol witness table cache variable for type TransformationError and conformance TransformationError)
  {
    type metadata accessor for TransformationError();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TransformationError and conformance TransformationError);
  }

  return result;
}

uint64_t objectdestroy_7Tm_0()
{
  v1 = *(v0 + 16);

  __swift_destroy_boxed_opaque_existential_1((v0 + 32));

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t OUTLINED_FUNCTION_29_32()
{
  v2 = *(v0 - 344);

  return _s27PhoneCallFlowDelegatePlugin22SharedGlobalsProviding_pWOcTm_0(v0 - 128, v0 - 168);
}

uint64_t OUTLINED_FUNCTION_31_30()
{
  result = v0;
  v3 = *(v1 - 352);
  v4 = *(v1 - 344);
  v5 = *(v1 - 280);
  return result;
}

uint64_t OUTLINED_FUNCTION_38_26(uint64_t a1, uint64_t a2)
{
  *(v2 - 392) = __swift_project_value_buffer(a1, a2);

  return Logger.logObject.getter();
}

uint64_t OUTLINED_FUNCTION_39_26(uint64_t a1, unint64_t a2)
{

  return getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, (v2 - 272));
}

uint64_t OUTLINED_FUNCTION_47_24()
{
}

void OUTLINED_FUNCTION_54_24()
{
}

uint64_t OUTLINED_FUNCTION_55_24()
{

  return outlined destroy of PhoneCallNLv3Intent(v0);
}

uint64_t OUTLINED_FUNCTION_56_15()
{
  v2 = *(v0 - 392);

  return Logger.logObject.getter();
}

uint64_t protocol witness for SKIntentResolver.resolve(skIntent:nlIntent:) in conformance AddCallParticipantContactSlotResolver()
{
  OUTLINED_FUNCTION_27();
  v2 = *v0;
  v3 = OUTLINED_FUNCTION_12_0(&async function pointer to specialized SlotResolver.resolve(skIntent:nlIntent:));
  *(v1 + 16) = v3;
  *v3 = v1;
  v4 = OUTLINED_FUNCTION_6_17(v3);

  return v6(v4);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_18_4();
  v4 = *(v3 + 16);
  v5 = *v2;
  OUTLINED_FUNCTION_4_2();
  *v6 = v5;

  v8 = *(v5 + 8);
  if (!v1)
  {
    v7 = v0;
  }

  return v8(v7);
}

uint64_t specialized SlotResolver.resolve(skIntent:nlIntent:)()
{
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_17_51(v0);
  OUTLINED_FUNCTION_2_0();
  v2 = *(v1 + 104);
  v9 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_38_0(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_6_17(v5);

  return v9(v7);
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_18_4();
  v4 = v3;
  OUTLINED_FUNCTION_6();
  *v5 = v4;
  v7 = *(v6 + 32);
  v8 = *v2;
  OUTLINED_FUNCTION_4_2();
  *v9 = v8;

  if (v1)
  {
    OUTLINED_FUNCTION_13_6();

    return v10();
  }

  else
  {
    *(v4 + 40) = v0;
    v12 = OUTLINED_FUNCTION_9_2();

    return _swift_task_switch(v12, v13, v14);
  }
}

{
  OUTLINED_FUNCTION_23_0();
  v1 = v0[5];
  v3 = v0[2];
  v2 = v0[3];
  OUTLINED_FUNCTION_2_0();
  (*(v4 + 120))(v1, v3);

  OUTLINED_FUNCTION_11();
  v9 = v5;
  v6 = v3;
  v7 = v0[2];

  return v9(v7);
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_17_51(v0);
  v1 = OUTLINED_FUNCTION_12_0(&async function pointer to specialized SlotResolver.resolveSlot(skIntent:nlIntent:));
  v2 = OUTLINED_FUNCTION_38_0(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_6_17(v2);

  return v6(v4);
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_18_4();
  v4 = v3;
  OUTLINED_FUNCTION_6();
  *v5 = v4;
  v7 = *(v6 + 32);
  v8 = *v2;
  OUTLINED_FUNCTION_4_2();
  *v9 = v8;

  if (v1)
  {
    OUTLINED_FUNCTION_13_6();

    return v10();
  }

  else
  {
    *(v4 + 40) = v0;
    v12 = OUTLINED_FUNCTION_9_2();

    return _swift_task_switch(v12, v13, v14);
  }
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_17_51(v0);
  v1 = OUTLINED_FUNCTION_12_0(&async function pointer to specialized SlotResolver.resolveSlot(skIntent:nlIntent:));
  v2 = OUTLINED_FUNCTION_38_0(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_6_17(v2);

  return v6(v4);
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_18_4();
  v4 = v3;
  OUTLINED_FUNCTION_6();
  *v5 = v4;
  v7 = *(v6 + 32);
  v8 = *v2;
  OUTLINED_FUNCTION_4_2();
  *v9 = v8;

  if (v1)
  {
    OUTLINED_FUNCTION_13_6();

    return v10();
  }

  else
  {
    *(v4 + 40) = v0;
    v12 = OUTLINED_FUNCTION_9_2();

    return _swift_task_switch(v12, v13, v14);
  }
}

{
  OUTLINED_FUNCTION_23_0();
  v1 = v0[5];
  v3 = v0[2];
  v2 = v0[3];
  OUTLINED_FUNCTION_2_0();
  (*(v4 + 144))(v1, v3);

  OUTLINED_FUNCTION_11();
  v9 = v5;
  v6 = v3;
  v7 = v0[2];

  return v9(v7);
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_17_51(v0);
  v1 = OUTLINED_FUNCTION_12_0(async function pointer to specialized SlotResolver.resolveSlot(skIntent:nlIntent:));
  v2 = OUTLINED_FUNCTION_38_0(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_6_17(v2);

  return v6(v4);
}

uint64_t SlotResolver.resolve(skIntent:nlIntent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[4] = a4;
  v5[5] = v4;
  v5[2] = a1;
  v5[3] = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5[6] = AssociatedTypeWitness;
  v8 = *(AssociatedTypeWitness - 8);
  v5[7] = v8;
  v9 = *(v8 + 64) + 15;
  v5[8] = swift_task_alloc();
  v10 = *(a4 + 24);
  v15 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  v5[9] = v12;
  *v12 = v5;
  v13 = OUTLINED_FUNCTION_20_46(v12);

  return v15(v13);
}

uint64_t SlotResolver.resolve(skIntent:nlIntent:)()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  v3 = *(v2 + 72);
  v4 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v5 = v4;
  *(v6 + 80) = v0;

  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v7, v8, v9);
}

{
  OUTLINED_FUNCTION_23_0();
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[2];
  (*(v0[4] + 40))(v1, v5, v0[3]);
  (*(v2 + 8))(v1, v4);
  v6 = v5;

  v7 = v0[1];
  v8 = v0[2];

  return v7(v8);
}

{
  OUTLINED_FUNCTION_15();
  v1 = *(v0 + 64);

  OUTLINED_FUNCTION_11();
  v3 = *(v0 + 80);

  return v2();
}

uint64_t specialized EmergencyContactSlotResolver.resolveSlot(skIntent:nlIntent:_:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v18 = a1;
  v8 = type metadata accessor for Locale();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v19[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for EmergencyContactResolution();
  v14 = v4[3];
  v15 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v14);
  (*(v15 + 8))(v19, v14, v15);
  __swift_project_boxed_opaque_existential_1(v19, v19[3]);
  dispatch thunk of DeviceState.siriLocale.getter();
  v16 = swift_allocObject();
  *(v16 + 16) = a3;
  *(v16 + 24) = a4;

  specialized static EmergencyContactResolution.fetchEmergencyContacts(sirikitIntent:locale:medicalIDStore:_:)(v18, v12, v5 + 5, closure #1 in EmergencyContactSlotResolver.resolveSlot(skIntent:nlIntent:_:)partial apply, v16, v13, &unk_531C20, &protocol witness table for INStartVideoCallIntent, closure #1 in static EmergencyContactResolution.fetchEmergencyContacts(sirikitIntent:locale:medicalIDStore:_:)partial apply);

  (*(v9 + 8))(v12, v8);
  return __swift_destroy_boxed_opaque_existential_1(v19);
}

{
  v5 = v4;
  v18 = a1;
  v8 = type metadata accessor for Locale();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v19[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for EmergencyContactResolution();
  v14 = v4[3];
  v15 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v14);
  (*(v15 + 8))(v19, v14, v15);
  __swift_project_boxed_opaque_existential_1(v19, v19[3]);
  dispatch thunk of DeviceState.siriLocale.getter();
  v16 = swift_allocObject();
  *(v16 + 16) = a3;
  *(v16 + 24) = a4;

  specialized static EmergencyContactResolution.fetchEmergencyContacts(sirikitIntent:locale:medicalIDStore:_:)(v18, v12, v5 + 5, closure #1 in EmergencyContactSlotResolver.resolveSlot(skIntent:nlIntent:_:)partial apply, v16, v13, &unk_531B30, &protocol witness table for INStartAudioCallIntent, closure #1 in static EmergencyContactResolution.fetchEmergencyContacts(sirikitIntent:locale:medicalIDStore:_:)partial apply);

  (*(v9 + 8))(v12, v8);
  return __swift_destroy_boxed_opaque_existential_1(v19);
}

{
  v5 = v4;
  v18 = a1;
  v8 = type metadata accessor for Locale();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v19[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for EmergencyContactResolution();
  v14 = v4[3];
  v15 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v14);
  (*(v15 + 8))(v19, v14, v15);
  __swift_project_boxed_opaque_existential_1(v19, v19[3]);
  dispatch thunk of DeviceState.siriLocale.getter();
  v16 = swift_allocObject();
  *(v16 + 16) = a3;
  *(v16 + 24) = a4;

  specialized static EmergencyContactResolution.fetchEmergencyContacts(sirikitIntent:locale:medicalIDStore:_:)(v18, v12, v5 + 5, partial apply for closure #1 in EmergencyContactSlotResolver.resolveSlot(skIntent:nlIntent:_:), v16, v13, &unk_531A40, &protocol witness table for INStartCallIntent, _s27PhoneCallFlowDelegatePlugin26EmergencyContactResolutionC05fetchF8Contacts13sirikitIntent6locale14medicalIDStore_yAA018INPersonContainingL0_p_10Foundation6LocaleVAA0fG9Providing_pys6ResultOySaySo0P0CGs5Error_pGctFZySaySo012_HKEmergencyG0CGSg_sAR_pSgtcfU_TA_0);

  (*(v9 + 8))(v12, v8);
  return __swift_destroy_boxed_opaque_existential_1(v19);
}

uint64_t protocol witness for SlotResolver.resolveSlot(skIntent:nlIntent:) in conformance EmergencyContactSlotResolver<A>()
{
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_23_35();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_20_46(v1);

  return SlotResolver.resolveSlot(skIntent:nlIntent:)(v2, v3, v4, v5, v6);
}

uint64_t specialized SlotResolver.resolveSlot(skIntent:nlIntent:)(uint64_t a1, uint64_t a2)
{
  v3[4] = a1;
  v3[5] = a2;
  v3[3] = v2;
  return _swift_task_switch(specialized SlotResolver.resolveSlot(skIntent:nlIntent:), 0, 0);
}

{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  return OUTLINED_FUNCTION_0_0();
}

{
  v3[4] = a1;
  v3[5] = a2;
  v3[3] = v2;
  return _swift_task_switch(specialized SlotResolver.resolveSlot(skIntent:nlIntent:), 0, 0);
}

{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  return OUTLINED_FUNCTION_0_0();
}

{
  v3[4] = a1;
  v3[5] = a2;
  v3[3] = v2;
  return _swift_task_switch(specialized SlotResolver.resolveSlot(skIntent:nlIntent:), 0, 0);
}

{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t specialized SlotResolver.resolveSlot(skIntent:nlIntent:)()
{
  OUTLINED_FUNCTION_27();
  v1 = OUTLINED_FUNCTION_25_38();
  OUTLINED_FUNCTION_9_74(v1);
  v2 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v3 = swift_task_alloc();
  OUTLINED_FUNCTION_66_3(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8INPersonCGMd, &_sSaySo8INPersonCGMR);
  OUTLINED_FUNCTION_63_0();
  *(v0 + 24) = v4;
  *(v0 + 32) = specialized SlotResolver.resolveSlot(skIntent:nlIntent:);
  v5 = OUTLINED_FUNCTION_0_114();

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v5, v6, v7, v8, v9, v10, v11, v12);
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
  *(v3 + 64) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_66_0();

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {
    v12 = *(v3 + 48);

    v13 = OUTLINED_FUNCTION_6_88();

    return v14(v13);
  }
}

{
  OUTLINED_FUNCTION_27();
  v1 = *(v0 + 40);
  v2 = OUTLINED_FUNCTION_25_38();
  OUTLINED_FUNCTION_8_77(v2);
  v3 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v4 = swift_task_alloc();
  OUTLINED_FUNCTION_66_3(v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8INPersonCGMd, &_sSaySo8INPersonCGMR);
  OUTLINED_FUNCTION_63_0();
  *v1 = v5;
  v1[1] = specialized SlotResolver.resolveSlot(skIntent:nlIntent:);
  v6 = OUTLINED_FUNCTION_0_114();

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v6, v7, v8, v9, v10, v11, v12, v13);
}

{
  OUTLINED_FUNCTION_27();
  v1 = OUTLINED_FUNCTION_25_38();
  OUTLINED_FUNCTION_9_74(v1);
  v2 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v3 = swift_task_alloc();
  OUTLINED_FUNCTION_66_3(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8INPersonCGMd, &_sSaySo8INPersonCGMR);
  OUTLINED_FUNCTION_63_0();
  *(v0 + 24) = v4;
  *(v0 + 32) = specialized SlotResolver.resolveSlot(skIntent:nlIntent:);
  v5 = OUTLINED_FUNCTION_0_114();

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v5, v6, v7, v8, v9, v10, v11, v12);
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
  *(v3 + 64) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_66_0();

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {
    v12 = *(v3 + 48);

    v13 = OUTLINED_FUNCTION_6_88();

    return v14(v13);
  }
}

{
  OUTLINED_FUNCTION_27();
  v1 = *(v0 + 40);
  v2 = OUTLINED_FUNCTION_25_38();
  OUTLINED_FUNCTION_8_77(v2);
  v3 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v4 = swift_task_alloc();
  OUTLINED_FUNCTION_66_3(v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8INPersonCGMd, &_sSaySo8INPersonCGMR);
  OUTLINED_FUNCTION_63_0();
  *v1 = v5;
  v1[1] = specialized SlotResolver.resolveSlot(skIntent:nlIntent:);
  v6 = OUTLINED_FUNCTION_0_114();

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v6, v7, v8, v9, v10, v11, v12, v13);
}

{
  OUTLINED_FUNCTION_27();
  v1 = OUTLINED_FUNCTION_25_38();
  OUTLINED_FUNCTION_9_74(v1);
  v2 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v3 = swift_task_alloc();
  OUTLINED_FUNCTION_66_3(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8INPersonCGMd, &_sSaySo8INPersonCGMR);
  OUTLINED_FUNCTION_63_0();
  *(v0 + 24) = v4;
  *(v0 + 32) = specialized SlotResolver.resolveSlot(skIntent:nlIntent:);
  v5 = OUTLINED_FUNCTION_0_114();

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v5, v6, v7, v8, v9, v10, v11, v12);
}

{
  OUTLINED_FUNCTION_27();
  v1 = *(v0 + 40);
  v2 = OUTLINED_FUNCTION_25_38();
  OUTLINED_FUNCTION_8_77(v2);
  v3 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v4 = swift_task_alloc();
  OUTLINED_FUNCTION_66_3(v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8INPersonCGMd, &_sSaySo8INPersonCGMR);
  OUTLINED_FUNCTION_63_0();
  *v1 = v5;
  v1[1] = specialized SlotResolver.resolveSlot(skIntent:nlIntent:);
  v6 = OUTLINED_FUNCTION_0_114();

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v6, v7, v8, v9, v10, v11, v12, v13);
}

uint64_t SlotResolver.resolveSlot(skIntent:nlIntent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t SlotResolver.resolveSlot(skIntent:nlIntent:)()
{
  OUTLINED_FUNCTION_23_0();
  v1 = *(v0 + 40);
  v2 = swift_task_alloc();
  *(v0 + 64) = v2;
  v3 = *(v0 + 48);
  v4 = *(v0 + 24);
  *(v2 + 16) = v1;
  *(v2 + 24) = v3;
  *(v2 + 40) = v4;
  v5 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v6 = swift_task_alloc();
  *(v0 + 72) = v6;
  swift_getAssociatedTypeWitness();
  *v6 = v0;
  v6[1] = SlotResolver.resolveSlot(skIntent:nlIntent:);
  v7 = *(v0 + 16);
  OUTLINED_FUNCTION_66_0();

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v8, v9, v10, 0xD00000000000001FLL, v11, v12, v2, v13);
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
  *(v3 + 80) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_66_0();

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {
    v12 = *(v3 + 64);

    OUTLINED_FUNCTION_11();

    return v13();
  }
}

uint64_t protocol witness for SKIntentResolver.resolve(skIntent:nlIntent:) in conformance EmergencyContactSlotResolver<A>()
{
  OUTLINED_FUNCTION_23_0();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  swift_getWitnessTable();
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_24_40();

  return SlotResolver.resolve(skIntent:nlIntent:)(v2, v3, v4, v5);
}

uint64_t protocol witness for SlotResolver.resolveSlot(skIntent:nlIntent:) in conformance SiriInferenceContactSlotResolver<A>()
{
  OUTLINED_FUNCTION_23_35();
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = *(v1 + 80);
  v8 = *(v1 + 88);
  v9 = type metadata accessor for SiriInferenceContactSlotResolver();
  *v6 = v2;
  v6[1] = closure #1 in ActionableCallControlFlow.execute();

  return SlotResolver.resolveSlot(skIntent:nlIntent:)(v5, v4, v3, v9, v0);
}

uint64_t protocol witness for SKIntentResolver.resolve(skIntent:nlIntent:) in conformance SiriInferenceContactSlotResolver<A>()
{
  OUTLINED_FUNCTION_23_0();
  v2 = v1;
  v3 = swift_task_alloc();
  *(v0 + 16) = v3;
  v4 = *(v2 + 80);
  v5 = *(v2 + 88);
  type metadata accessor for SiriInferenceContactSlotResolver();
  swift_getWitnessTable();
  *v3 = v0;
  v6 = OUTLINED_FUNCTION_24_40();

  return SlotResolver.resolve(skIntent:nlIntent:)(v6, v7, v8, v9);
}

uint64_t specialized closure #1 in SlotResolver.resolveSlot(skIntent:nlIntent:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySaySo8INPersonCGs5Error_pGMd, &_sScCySaySo8INPersonCGs5Error_pGMR);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v12 = &v17 - v11;
  (*(v8 + 16))(&v17 - v11, a1, v7, v10);
  v13 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v14 = swift_allocObject();
  (*(v8 + 32))(v14 + v13, v12, v7);
  v15 = swift_allocObject();
  *(v15 + 16) = _s27PhoneCallFlowDelegatePlugin12SlotResolverPAAE07resolveF08skIntent02nlJ00F4TypeQz0jL0Qz_AA0aB8NLIntent_ptYaKFyScCyAHs5Error_pGXEfU_ys6ResultOyAhA0fgN0OGYucAMcfu_yARYucfu0_AA020SiriInferenceContactfG0CySo07INStartbJ0CG_TG5TA;
  *(v15 + 24) = v14;

  specialized EmergencyContactSlotResolver.resolveSlot(skIntent:nlIntent:_:)(a3, a4, thunk for @escaping @callee_guaranteed (@in_guaranteed Result<[INPerson], SlotResolverError>) -> ()partial apply, v15);
}

{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySaySo8INPersonCGs5Error_pGMd, &_sScCySaySo8INPersonCGs5Error_pGMR);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v12 = &v17 - v11;
  (*(v8 + 16))(&v17 - v11, a1, v7, v10);
  v13 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v14 = swift_allocObject();
  (*(v8 + 32))(v14 + v13, v12, v7);
  v15 = swift_allocObject();
  *(v15 + 16) = _s27PhoneCallFlowDelegatePlugin12SlotResolverPAAE07resolveF08skIntent02nlJ00F4TypeQz0jL0Qz_AA0aB8NLIntent_ptYaKFyScCyAHs5Error_pGXEfU_ys6ResultOyAhA0fgN0OGYucAMcfu_yARYucfu0_AA016EmergencyContactfG0VySo012INStartAudiobJ0CG_TG5TA;
  *(v15 + 24) = v14;

  specialized EmergencyContactSlotResolver.resolveSlot(skIntent:nlIntent:_:)(a3, a4, thunk for @escaping @callee_guaranteed (@in_guaranteed Result<[INPerson], SlotResolverError>) -> ()partial apply, v15);
}

{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySaySo8INPersonCGs5Error_pGMd, &_sScCySaySo8INPersonCGs5Error_pGMR);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v12 = &v17 - v11;
  (*(v8 + 16))(&v17 - v11, a1, v7, v10);
  v13 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v14 = swift_allocObject();
  (*(v8 + 32))(v14 + v13, v12, v7);
  v15 = swift_allocObject();
  *(v15 + 16) = _s27PhoneCallFlowDelegatePlugin12SlotResolverPAAE07resolveF08skIntent02nlJ00F4TypeQz0jL0Qz_AA0aB8NLIntent_ptYaKFyScCyAHs5Error_pGXEfU_ys6ResultOyAhA0fgN0OGYucAMcfu_yARYucfu0_AA020SiriInferenceContactfG0CySo07INStartbJ0CG_TG5TA;
  *(v15 + 24) = v14;

  specialized EmergencyContactSlotResolver.resolveSlot(skIntent:nlIntent:_:)(a3, a4, thunk for @escaping @callee_guaranteed (@in_guaranteed Result<[INPerson], SlotResolverError>) -> ()partial apply, v15);
}

uint64_t specialized closure #1 in SlotResolver.resolveSlot(skIntent:nlIntent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v26 = a4;
  v27 = a8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySaySo8INPersonCGs5Error_pGMd, &_sScCySaySo8INPersonCGs5Error_pGMR);
  v12 = OUTLINED_FUNCTION_7(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(v12);
  v19 = &v26 - v18;
  (*(v14 + 16))(&v26 - v18, a1, v11, v17);
  v20 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v21 = swift_allocObject();
  (*(v14 + 32))(v21 + v20, v19, v11);
  v22 = swift_allocObject();
  *(v22 + 16) = a7;
  *(v22 + 24) = v21;
  OUTLINED_FUNCTION_2_0();
  v24 = *(v23 + 136);

  v24(a3, v26, v27, v22);
}

uint64_t closure #1 in SlotResolver.resolveSlot(skIntent:nlIntent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = _s27PhoneCallFlowDelegatePlugin12SlotResolverPAAE07resolveF08skIntent02nlJ00F4TypeQz0jL0Qz_AA0aB8NLIntent_ptYaKFyScCyAHs5Error_pGXEfU_ys6ResultOyAhA0fgN0OGYucAMcfu_(a1, a5, a6);
  (*(a6 + 32))(a3, a4, v10, v11, a5, a6);
}

uint64_t (*_s27PhoneCallFlowDelegatePlugin12SlotResolverPAAE07resolveF08skIntent02nlJ00F4TypeQz0jL0Qz_AA0aB8NLIntent_ptYaKFyScCyAHs5Error_pGXEfU_ys6ResultOyAhA0fgN0OGYucAMcfu_(uint64_t a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v6 = type metadata accessor for CheckedContinuation();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = &v15 - v10;
  (*(v7 + 16))(&v15 - v10, a1, v6, v9);
  v12 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;
  (*(v7 + 32))(v13 + v12, v11, v6);
  return _s27PhoneCallFlowDelegatePlugin12SlotResolverPAAE07resolveF08skIntent02nlJ00F4TypeQz0jL0Qz_AA0aB8NLIntent_ptYaKFyScCyAHs5Error_pGXEfU_ys6ResultOyAhA0fgN0OGYucAMcfu_yARYucfu0_TA;
}

uint64_t _s27PhoneCallFlowDelegatePlugin12SlotResolverPAAE07resolveF08skIntent02nlJ00F4TypeQz0jL0Qz_AA0aB8NLIntent_ptYaKFyScCyAHs5Error_pGXEfU_ys6ResultOyAhA0fgN0OGYucAMcfu_yARYucfu0_AA020SiriInferenceContactfG0CySo012INStartVideobJ0CG_Tg5Tm(uint64_t a1, uint64_t a2, __int16 a3)
{
  if ((a3 & 0x100) != 0)
  {
    v5 = a3;
    lazy protocol witness table accessor for type SlotResolverError and conformance SlotResolverError();
    swift_allocError();
    *v7 = a1;
    *(v7 + 8) = a2;
    *(v7 + 16) = v5;
    outlined copy of SlotResolverError(a1, a2, v5);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySaySo8INPersonCGs5Error_pGMd, &_sScCySaySo8INPersonCGs5Error_pGMR);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySaySo8INPersonCGs5Error_pGMd, &_sScCySaySo8INPersonCGs5Error_pGMR);
    return CheckedContinuation.resume(returning:)();
  }
}

uint64_t _s27PhoneCallFlowDelegatePlugin12SlotResolverPAAE07resolveF08skIntent02nlJ00F4TypeQz0jL0Qz_AA0aB8NLIntent_ptYaKFyScCyAHs5Error_pGXEfU_ys6ResultOyAhA0fgN0OGYucAMcfu_yARYucfu0_(uint64_t a1)
{
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v2 = type metadata accessor for CheckedContinuation();
  lazy protocol witness table accessor for type SlotResolverError and conformance SlotResolverError();
  return CheckedContinuation.resume<A>(with:)(a1, v2, &type metadata for SlotResolverError);
}

uint64_t CheckedContinuation.resume<A>(with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v26[1] = a2;
  v5 = *(a2 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(a1);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v13);
  v15 = v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Result();
  v17 = *(*(v16 - 8) + 64);
  v18 = __chkstk_darwin(v16);
  v20 = v26 - v19;
  (*(v21 + 16))(v26 - v19, a1, v16, v18);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v22 = *(v11 + 32);
    v22(v15, v20, a3);
    v23 = swift_allocError();
    v22(v24, v15, a3);
    v26[3] = v23;
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    (*(v6 + 32))(v9, v20, v5);
    return CheckedContinuation.resume(returning:)();
  }
}

uint64_t specialized static EmergencyContactResolution.fetchEmergencyContacts(sirikitIntent:locale:medicalIDStore:_:)(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v47 = a6;
  v48 = a8;
  v43 = a7;
  v44 = a4;
  v45 = a5;
  v46 = a1;
  v49 = a9;
  v11 = type metadata accessor for Locale();
  v12 = OUTLINED_FUNCTION_7(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  __chkstk_darwin(v12);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Signpost.begin(_:)();
  v19 = v18;
  v39 = v20;
  v22 = v21;
  v24 = v23;
  v25 = a3[4];
  v42 = a3[3];
  v40 = v25;
  v41 = __swift_project_boxed_opaque_existential_1(a3, v42);
  (*(v14 + 16))(v17, a2, v11);
  v26 = (*(v14 + 80) + 64) & ~*(v14 + 80);
  v27 = (v16 + v26 + 7) & 0xFFFFFFFFFFFFFFF8;
  v28 = swift_allocObject();
  v29 = v39;
  *(v28 + 16) = v19;
  *(v28 + 24) = v29;
  *(v28 + 32) = v22;
  *(v28 + 40) = v24;
  *(v28 + 41) = HIBYTE(v24) & 1;
  v30 = v45;
  *(v28 + 48) = v44;
  *(v28 + 56) = v30;
  (*(v14 + 32))(v28 + v26, v17, v11);
  v31 = (v28 + v27);
  v32 = v46;
  v33 = v48;
  *v31 = v46;
  v31[1] = v33;
  *(v28 + ((v27 + 23) & 0xFFFFFFFFFFFFFFF8)) = v47;
  v34 = v40;
  v35 = *(v40 + 8);

  v36 = v32;
  v35(v49, v28, v42, v34);
}

uint64_t specialized closure #1 in SlotResolver.resolveSlot(skIntent:nlIntent:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  return specialized closure #1 in SlotResolver.resolveSlot(skIntent:nlIntent:)(a1, *a2, a3, a4, &unk_531B58, &unk_531B80, _s27PhoneCallFlowDelegatePlugin12SlotResolverPAAE07resolveF08skIntent02nlJ00F4TypeQz0jL0Qz_AA0aB8NLIntent_ptYaKFyScCyAHs5Error_pGXEfU_ys6ResultOyAhA0fgN0OGYucAMcfu_yARYucfu0_AA020SiriInferenceContactfG0CySo07INStartbJ0CG_TG5TA, thunk for @escaping @callee_guaranteed (@in_guaranteed Result<[INPerson], SlotResolverError>) -> ()partial apply);
}

{
  return specialized closure #1 in SlotResolver.resolveSlot(skIntent:nlIntent:)(a1, *a2, a3, a4, &unk_531A68, &unk_531A90, _s27PhoneCallFlowDelegatePlugin12SlotResolverPAAE07resolveF08skIntent02nlJ00F4TypeQz0jL0Qz_AA0aB8NLIntent_ptYaKFyScCyAHs5Error_pGXEfU_ys6ResultOyAhA0fgN0OGYucAMcfu_yARYucfu0_AA020SiriInferenceContactfG0CySo07INStartbJ0CG_TG5TA, thunk for @escaping @callee_guaranteed (@in_guaranteed Result<[INPerson], SlotResolverError>) -> ()partial apply);
}

{
  return specialized closure #1 in SlotResolver.resolveSlot(skIntent:nlIntent:)(a1, *a2, a3, a4, &unk_531978, &unk_5319A0, _s27PhoneCallFlowDelegatePlugin12SlotResolverPAAE07resolveF08skIntent02nlJ00F4TypeQz0jL0Qz_AA0aB8NLIntent_ptYaKFyScCyAHs5Error_pGXEfU_ys6ResultOyAhA0fgN0OGYucAMcfu_yARYucfu0_AA020SiriInferenceContactfG0CySo07INStartbJ0CG_TG5TA, _ss6ResultOySaySo8INPersonCG27PhoneCallFlowDelegatePlugin17SlotResolverErrorOGIegn_AIIegg_TRTA_1);
}

uint64_t partial apply for specialized closure #1 in SlotResolver.resolveSlot(skIntent:nlIntent:)(uint64_t a1)
{
  return specialized closure #1 in SlotResolver.resolveSlot(skIntent:nlIntent:)(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32));
}

{
  return specialized closure #1 in SlotResolver.resolveSlot(skIntent:nlIntent:)(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32));
}

{
  return specialized closure #1 in SlotResolver.resolveSlot(skIntent:nlIntent:)(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32));
}

{
  return specialized closure #1 in SlotResolver.resolveSlot(skIntent:nlIntent:)(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32));
}

{
  return specialized closure #1 in SlotResolver.resolveSlot(skIntent:nlIntent:)(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32));
}

{
  return specialized closure #1 in SlotResolver.resolveSlot(skIntent:nlIntent:)(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32));
}

unint64_t lazy protocol witness table accessor for type SlotResolverError and conformance SlotResolverError()
{
  result = lazy protocol witness table cache variable for type SlotResolverError and conformance SlotResolverError;
  if (!lazy protocol witness table cache variable for type SlotResolverError and conformance SlotResolverError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SlotResolverError and conformance SlotResolverError);
  }

  return result;
}

uint64_t outlined copy of SlotResolverError(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 1)
  {
  }

  if (!a3)
  {
    return swift_errorRetain();
  }

  return result;
}

uint64_t objectdestroyTm_12()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySaySo8INPersonCGs5Error_pGMd, &_sScCySaySo8INPersonCGs5Error_pGMR);
  OUTLINED_FUNCTION_23_5(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t objectdestroy_37Tm_0()
{
  v1 = type metadata accessor for Locale();
  OUTLINED_FUNCTION_7(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 64) & ~v4;
  v7 = (*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v0 + 16);

  v9 = *(v0 + 56);

  (*(v3 + 8))(v0 + v5, v1);

  return _swift_deallocObject(v0, ((v7 + 23) & 0xFFFFFFFFFFFFFFF8) + 8, v4 | 7);
}

uint64_t _s27PhoneCallFlowDelegatePlugin12SlotResolverPAAE07resolveF08skIntent02nlJ00F4TypeQz0jL0Qz_AA0aB8NLIntent_ptYaKFyScCyAHs5Error_pGXEfU_ys6ResultOyAhA0fgN0OGYucAMcfu_yARYucfu0_TA(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v5 = *(*(type metadata accessor for CheckedContinuation() - 8) + 80);

  return _s27PhoneCallFlowDelegatePlugin12SlotResolverPAAE07resolveF08skIntent02nlJ00F4TypeQz0jL0Qz_AA0aB8NLIntent_ptYaKFyScCyAHs5Error_pGXEfU_ys6ResultOyAhA0fgN0OGYucAMcfu_yARYucfu0_(a1);
}

uint64_t get_enum_tag_for_layout_string_27PhoneCallFlowDelegatePlugin17SlotResolverErrorO(uint64_t a1)
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

double SlotTemplating.toAnySlotTemplating()@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v7 = *(*(a1 - 8) + 64);
  v8 = __chkstk_darwin(a1);
  v10 = v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v10, v3, a1, v8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AnySlotTemplating.init<A>(delegate:)(v10, AssociatedTypeWitness, a1, a2, v16);
  v13 = v16[1];
  *a3 = v16[0];
  a3[1] = v13;
  result = *&v17;
  v15 = v18;
  a3[2] = v17;
  a3[3] = v15;
  return result;
}

uint64_t AnySlotTemplating.makeParameterPromptDialog(app:parameterName:intent:_:)()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  return v1();
}

uint64_t AnySlotTemplating.makeParameterValueConfirmationDialog(app:parameterName:intentResolutionResult:intent:inferenceSource:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v7 = *(v6 + 16);
  v8 = *(v6 + 24);
  return v7(a1, a2, a3, a4, a5, a6 & 1);
}

uint64_t AnySlotTemplating.makeParameterValueUnsupportedDialog(app:parameterName:intentResolutionResult:intent:multicardinalValueIndex:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  v8 = *(v7 + 48);
  v9 = *(v7 + 56);
  return v8(a1, a2, a3, a4, a5, a6, a7 & 1);
}

uint64_t AnySlotTemplating.makeParameterValueDisambiguationDialog(app:parameterName:intentResolutionResult:disambiguationList:deviceIsLocked:intent:_:)(uint64_t a1)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  return v2(a1);
}

uint64_t AnySlotTemplating.init<A>(delegate:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t (**a5)()@<X8>)
{
  v32 = implicit closure #1 in AnySlotTemplating.init<A>(delegate:)(a1, a2, a3, a4);
  v9 = v8;
  v10 = OUTLINED_FUNCTION_5_88();
  v14 = implicit closure #3 in AnySlotTemplating.init<A>(delegate:)(v10, v11, v12, v13);
  v16 = v15;
  v17 = OUTLINED_FUNCTION_5_88();
  v21 = implicit closure #5 in AnySlotTemplating.init<A>(delegate:)(v17, v18, v19, v20);
  v23 = v22;
  v24 = OUTLINED_FUNCTION_5_88();
  v28 = implicit closure #7 in AnySlotTemplating.init<A>(delegate:)(v24, v25, v26, v27);
  v30 = v29;
  result = (*(*(a3 - 8) + 8))(a1, a3);
  *a5 = v32;
  a5[1] = v9;
  a5[2] = v14;
  a5[3] = v16;
  a5[4] = v21;
  a5[5] = v23;
  a5[6] = v28;
  a5[7] = v30;
  return result;
}

uint64_t (*implicit closure #1 in AnySlotTemplating.init<A>(delegate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(a1);
  v10 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, v9);
  v11 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v12 = swift_allocObject();
  *(v12 + 2) = a2;
  *(v12 + 3) = a3;
  *(v12 + 4) = a4;
  (*(v7 + 32))(&v12[v11], v10, a3);
  return partial apply for implicit closure #2 in implicit closure #1 in AnySlotTemplating.init<A>(delegate:);
}

uint64_t (*implicit closure #3 in AnySlotTemplating.init<A>(delegate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(a1);
  v10 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, v9);
  v11 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v12 = swift_allocObject();
  *(v12 + 2) = a2;
  *(v12 + 3) = a3;
  *(v12 + 4) = a4;
  (*(v7 + 32))(&v12[v11], v10, a3);
  return partial apply for implicit closure #4 in implicit closure #3 in AnySlotTemplating.init<A>(delegate:);
}

uint64_t (*implicit closure #5 in AnySlotTemplating.init<A>(delegate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(a1);
  v10 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, v9);
  v11 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v12 = swift_allocObject();
  *(v12 + 2) = a2;
  *(v12 + 3) = a3;
  *(v12 + 4) = a4;
  (*(v7 + 32))(&v12[v11], v10, a3);
  return partial apply for implicit closure #6 in implicit closure #5 in AnySlotTemplating.init<A>(delegate:);
}

uint64_t (*implicit closure #7 in AnySlotTemplating.init<A>(delegate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(a1);
  v10 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, v9);
  v11 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v12 = swift_allocObject();
  *(v12 + 2) = a2;
  *(v12 + 3) = a3;
  *(v12 + 4) = a4;
  (*(v7 + 32))(&v12[v11], v10, a3);
  return partial apply for implicit closure #8 in implicit closure #7 in AnySlotTemplating.init<A>(delegate:);
}

uint64_t type metadata instantiation function for AnySlotTemplating()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t partial apply for implicit closure #8 in implicit closure #7 in AnySlotTemplating.init<A>(delegate:)()
{
  OUTLINED_FUNCTION_1_118();
  v3 = v0 + ((*(v1 + 80) + 40) & ~*(v1 + 80));
  return (*(v2 + 40))(v4, v5, v6);
}

uint64_t partial apply for implicit closure #6 in implicit closure #5 in AnySlotTemplating.init<A>(delegate:)()
{
  OUTLINED_FUNCTION_1_118();
  v3 = v0 + ((*(v1 + 80) + 40) & ~*(v1 + 80));
  return (*(v2 + 32))(v4, v5, v6);
}

uint64_t partial apply for implicit closure #4 in implicit closure #3 in AnySlotTemplating.init<A>(delegate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v9 = *(v6 + 32);
  v7 = v6 + ((*(*(*(v6 + 24) - 8) + 80) + 40) & ~*(*(*(v6 + 24) - 8) + 80));
  return (*(v9 + 24))(a1, a2, a3, a4, a5, a6 & 1);
}

uint64_t SmartAppSelectionFeatureManager.__allocating_init(sharedGlobals:trialSmartAppSelectionConfigProvider:diagnosticLogPermission:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  SmartAppSelectionFeatureManager.init(sharedGlobals:trialSmartAppSelectionConfigProvider:diagnosticLogPermission:)(a1, a2, a3);
  return v6;
}

void *SmartAppSelectionFeatureManager.init(sharedGlobals:trialSmartAppSelectionConfigProvider:diagnosticLogPermission:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[9] = type metadata accessor for SmartAppSelectionFeatureManager();
  v3[10] = &outlined read-only object #0 of SmartAppSelectionFeatureManager.init(sharedGlobals:trialSmartAppSelectionConfigProvider:diagnosticLogPermission:);
  v3[11] = 0;
  v3[12] = 0;
  v3[2] = a2;
  outlined init with take of PhoneCallFeatureFlagProviding(a1, v3 + 3);
  v3[8] = a3;
  return v3;
}

Swift::Bool __swiftcall SmartAppSelectionFeatureManager.isForcedAppDisambiguationEnabled()()
{
  OUTLINED_FUNCTION_11_65();
  v4 = *(v2 + 56);
  v5 = OUTLINED_FUNCTION_1_1();
  v7 = v6(v5);
  v8 = OUTLINED_FUNCTION_24_2(v7);
  v10 = (*(v9 + 184))(v8);

  if (v10)
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2();
    }

    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, static Logger.siriPhone);
    OUTLINED_FUNCTION_40_0();

    v12 = Logger.logObject.getter();
    static os_log_type_t.debug.getter();
    OUTLINED_FUNCTION_162();
    if (!OUTLINED_FUNCTION_108())
    {
      goto LABEL_7;
    }

    OUTLINED_FUNCTION_42();
    OUTLINED_FUNCTION_83();
    OUTLINED_FUNCTION_49_3();
    v13 = OUTLINED_FUNCTION_1_119(4.8149e-34);
    v17 = OUTLINED_FUNCTION_19_41(v13, v14, v15, v16);
    OUTLINED_FUNCTION_7_79(v17, v18, v19);
    OUTLINED_FUNCTION_40_0();

    *(v3 + 4) = v1;
LABEL_6:
    OUTLINED_FUNCTION_2_114();
    _os_log_impl(v20, v21, v22, v23, v24, v25);
    OUTLINED_FUNCTION_3_7();
    OUTLINED_FUNCTION_35();
LABEL_7:

    return 1;
  }

  v27 = v0[7];
  __swift_project_boxed_opaque_existential_1(v0 + 3, v0[6]);
  v28 = *(v27 + 56);
  v29 = OUTLINED_FUNCTION_1_1();
  v31 = v30(v29);
  v32 = OUTLINED_FUNCTION_24_2(v31);
  v34 = (*(v33 + 192))(v32);

  if (v34)
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2();
    }

    v36 = type metadata accessor for Logger();
    __swift_project_value_buffer(v36, static Logger.siriPhone);
    OUTLINED_FUNCTION_40_0();

    v37 = Logger.logObject.getter();
    static os_log_type_t.debug.getter();
    OUTLINED_FUNCTION_162();
    if (!OUTLINED_FUNCTION_108())
    {
      goto LABEL_15;
    }

    OUTLINED_FUNCTION_42();
    OUTLINED_FUNCTION_83();
    OUTLINED_FUNCTION_49_3();
    v38 = OUTLINED_FUNCTION_1_119(4.8149e-34);
    v42 = OUTLINED_FUNCTION_19_41(v38, v39, v40, v41);
    OUTLINED_FUNCTION_7_79(v42, v43, v44);
    OUTLINED_FUNCTION_40_0();

    *(v3 + 4) = v1;
  }

  else
  {
    if (((*(*v0 + 144))(v35) & 1) == 0)
    {
      return 0;
    }

    if (!SmartAppSelectionFeatureManager.isLongEnoughSinceLastForcedAppDisambiguationShowed()())
    {
      if (one-time initialization token for siriPhone != -1)
      {
        OUTLINED_FUNCTION_6_2();
      }

      v60 = type metadata accessor for Logger();
      __swift_project_value_buffer(v60, static Logger.siriPhone);
      OUTLINED_FUNCTION_40_0();

      v37 = Logger.logObject.getter();
      static os_log_type_t.debug.getter();
      OUTLINED_FUNCTION_162();
      if (!OUTLINED_FUNCTION_108())
      {
        goto LABEL_15;
      }

      swift_slowAlloc();
      OUTLINED_FUNCTION_83();
      OUTLINED_FUNCTION_49_3();
      v61 = OUTLINED_FUNCTION_1_119(4.8151e-34);
      v65 = OUTLINED_FUNCTION_19_41(v61, v62, v63, v64);
      OUTLINED_FUNCTION_7_79(v65, v66, v67);
      OUTLINED_FUNCTION_40_0();

      OUTLINED_FUNCTION_21_45();
      OUTLINED_FUNCTION_24_41();
      goto LABEL_14;
    }

    OUTLINED_FUNCTION_17_52();
    if ((*(v51 + 96))(0, v0 + 3))
    {
      if (one-time initialization token for siriPhone != -1)
      {
        OUTLINED_FUNCTION_6_2();
      }

      v52 = type metadata accessor for Logger();
      __swift_project_value_buffer(v52, static Logger.siriPhone);
      OUTLINED_FUNCTION_40_0();

      v12 = Logger.logObject.getter();
      static os_log_type_t.debug.getter();
      OUTLINED_FUNCTION_162();
      if (!OUTLINED_FUNCTION_108())
      {
        goto LABEL_7;
      }

      OUTLINED_FUNCTION_42();
      OUTLINED_FUNCTION_83();
      OUTLINED_FUNCTION_49_3();
      v53 = OUTLINED_FUNCTION_1_119(4.8149e-34);
      v57 = OUTLINED_FUNCTION_19_41(v53, v54, v55, v56);
      OUTLINED_FUNCTION_7_79(v57, v58, v59);
      OUTLINED_FUNCTION_40_0();

      *(v3 + 4) = v0;
      goto LABEL_6;
    }

    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2();
    }

    v68 = type metadata accessor for Logger();
    __swift_project_value_buffer(v68, static Logger.siriPhone);
    OUTLINED_FUNCTION_40_0();

    v37 = Logger.logObject.getter();
    static os_log_type_t.debug.getter();
    OUTLINED_FUNCTION_162();
    if (!OUTLINED_FUNCTION_108())
    {
      goto LABEL_15;
    }

    OUTLINED_FUNCTION_42();
    OUTLINED_FUNCTION_83();
    OUTLINED_FUNCTION_49_3();
    v69 = OUTLINED_FUNCTION_1_119(4.8149e-34);
    v73 = OUTLINED_FUNCTION_19_41(v69, v70, v71, v72);
    OUTLINED_FUNCTION_7_79(v73, v74, v75);
    OUTLINED_FUNCTION_40_0();

    *(v3 + 4) = v0;
  }

  OUTLINED_FUNCTION_2_114();
LABEL_14:
  _os_log_impl(v45, v46, v47, v48, v49, v50);
  OUTLINED_FUNCTION_3_7();
  OUTLINED_FUNCTION_35();
LABEL_15:

  return 0;
}

Swift::Bool __swiftcall SmartAppSelectionFeatureManager.isAppNameSpecifiedByUserSignalCollectionEnabled()()
{
  if (((*(*v0 + 144))() & 1) == 0)
  {
    return 0;
  }

  if (!SmartAppSelectionFeatureManager.isLongEnoughSinceLastAppNameSpecifiedByUserSignalCollected()())
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2();
    }

    v19 = type metadata accessor for Logger();
    __swift_project_value_buffer(v19, static Logger.siriPhone);
    OUTLINED_FUNCTION_40_0();

    v20 = Logger.logObject.getter();
    static os_log_type_t.debug.getter();
    OUTLINED_FUNCTION_162();
    if (!OUTLINED_FUNCTION_108())
    {
      goto LABEL_18;
    }

    swift_slowAlloc();
    OUTLINED_FUNCTION_83();
    OUTLINED_FUNCTION_49_3();
    v21 = OUTLINED_FUNCTION_1_119(4.8151e-34);
    v25 = OUTLINED_FUNCTION_19_41(v21, v22, v23, v24);
    OUTLINED_FUNCTION_7_79(v25, v26, v27);
    OUTLINED_FUNCTION_40_0();

    OUTLINED_FUNCTION_21_45();
    OUTLINED_FUNCTION_24_41();
    goto LABEL_17;
  }

  OUTLINED_FUNCTION_17_52();
  if (((*(v2 + 96))(1, v0 + 24) & 1) == 0)
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2();
    }

    v34 = type metadata accessor for Logger();
    __swift_project_value_buffer(v34, static Logger.siriPhone);
    OUTLINED_FUNCTION_40_0();

    v20 = Logger.logObject.getter();
    static os_log_type_t.debug.getter();
    OUTLINED_FUNCTION_162();
    if (!OUTLINED_FUNCTION_108())
    {
      goto LABEL_18;
    }

    OUTLINED_FUNCTION_42();
    OUTLINED_FUNCTION_83();
    OUTLINED_FUNCTION_49_3();
    v35 = OUTLINED_FUNCTION_1_119(4.8149e-34);
    v39 = OUTLINED_FUNCTION_19_41(v35, v36, v37, v38);
    OUTLINED_FUNCTION_7_79(v39, v40, v41);
    OUTLINED_FUNCTION_40_0();

    *(v1 + 4) = v0;
    OUTLINED_FUNCTION_2_114();
LABEL_17:
    _os_log_impl(v28, v29, v30, v31, v32, v33);
    OUTLINED_FUNCTION_3_7();
    OUTLINED_FUNCTION_35();
LABEL_18:

    return 0;
  }

  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Logger.siriPhone);
  OUTLINED_FUNCTION_40_0();

  v4 = Logger.logObject.getter();
  static os_log_type_t.debug.getter();
  OUTLINED_FUNCTION_162();
  if (OUTLINED_FUNCTION_108())
  {
    OUTLINED_FUNCTION_42();
    OUTLINED_FUNCTION_83();
    OUTLINED_FUNCTION_49_3();
    v5 = OUTLINED_FUNCTION_1_119(4.8149e-34);
    v9 = OUTLINED_FUNCTION_19_41(v5, v6, v7, v8);
    OUTLINED_FUNCTION_7_79(v9, v10, v11);
    OUTLINED_FUNCTION_40_0();

    *(v1 + 4) = v0;
    OUTLINED_FUNCTION_2_114();
    _os_log_impl(v12, v13, v14, v15, v16, v17);
    OUTLINED_FUNCTION_3_7();
    OUTLINED_FUNCTION_35();
  }

  return 1;
}

Swift::Bool __swiftcall SmartAppSelectionFeatureManager.isAppSelectionEnabled()()
{
  OUTLINED_FUNCTION_11_65();
  v4 = *(v2 + 56);
  v5 = OUTLINED_FUNCTION_1_1();
  v7 = v6(v5);
  v8 = OUTLINED_FUNCTION_24_2(v7);
  v10 = (*(v9 + 200))(v8);

  if (v10)
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2();
    }

    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, static Logger.siriPhone);
    OUTLINED_FUNCTION_40_0();

    v12 = Logger.logObject.getter();
    static os_log_type_t.debug.getter();
    OUTLINED_FUNCTION_162();
    if (!OUTLINED_FUNCTION_108())
    {
      goto LABEL_7;
    }

    OUTLINED_FUNCTION_42();
    OUTLINED_FUNCTION_83();
    OUTLINED_FUNCTION_66_1();
    v13 = OUTLINED_FUNCTION_1_119(4.8149e-34);
    v17 = OUTLINED_FUNCTION_62_19(v13, v14, v15, v16);
    OUTLINED_FUNCTION_9_75(v17, v18, v19, v20, v21, v22, v23, v24, v72, v73, v74);
    OUTLINED_FUNCTION_40_0();

    *(v3 + 4) = v1;
LABEL_6:
    OUTLINED_FUNCTION_2_114();
    _os_log_impl(v25, v26, v27, v28, v29, v30);
    OUTLINED_FUNCTION_3_7();
    OUTLINED_FUNCTION_35();
LABEL_7:

    return 1;
  }

  v32 = v0[7];
  __swift_project_boxed_opaque_existential_1(v0 + 3, v0[6]);
  v33 = *(v32 + 8);
  v34 = OUTLINED_FUNCTION_1_1();
  v35(v34);
  v36 = SmartAppSelectionFeatureManager.validateDevice(_:)(&v73);
  __swift_destroy_boxed_opaque_existential_1(&v73);
  if ((v36 & 1) == 0)
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2();
    }

    v51 = type metadata accessor for Logger();
    __swift_project_value_buffer(v51, static Logger.siriPhone);
    OUTLINED_FUNCTION_40_0();

    v52 = Logger.logObject.getter();
    static os_log_type_t.debug.getter();
    OUTLINED_FUNCTION_162();
    if (!OUTLINED_FUNCTION_108())
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  OUTLINED_FUNCTION_17_52();
  if ((*(v37 + 96))(3, v0 + 3))
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2();
    }

    v38 = type metadata accessor for Logger();
    __swift_project_value_buffer(v38, static Logger.siriPhone);
    OUTLINED_FUNCTION_40_0();

    v12 = Logger.logObject.getter();
    static os_log_type_t.debug.getter();
    OUTLINED_FUNCTION_162();
    if (!OUTLINED_FUNCTION_108())
    {
      goto LABEL_7;
    }

    OUTLINED_FUNCTION_42();
    OUTLINED_FUNCTION_83();
    OUTLINED_FUNCTION_66_1();
    v39 = OUTLINED_FUNCTION_1_119(4.8149e-34);
    v43 = OUTLINED_FUNCTION_62_19(v39, v40, v41, v42);
    OUTLINED_FUNCTION_9_75(v43, v44, v45, v46, v47, v48, v49, v50, v72, v73, v74);
    OUTLINED_FUNCTION_40_0();

    *(v3 + 4) = v36;
    goto LABEL_6;
  }

  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2();
  }

  v53 = type metadata accessor for Logger();
  __swift_project_value_buffer(v53, static Logger.siriPhone);
  OUTLINED_FUNCTION_40_0();

  v52 = Logger.logObject.getter();
  static os_log_type_t.debug.getter();
  OUTLINED_FUNCTION_162();
  if (OUTLINED_FUNCTION_108())
  {
LABEL_21:
    OUTLINED_FUNCTION_42();
    OUTLINED_FUNCTION_83();
    OUTLINED_FUNCTION_66_1();
    v54 = OUTLINED_FUNCTION_1_119(4.8149e-34);
    v58 = OUTLINED_FUNCTION_62_19(v54, v55, v56, v57);
    OUTLINED_FUNCTION_9_75(v58, v59, v60, v61, v62, v63, v64, v65, v72, v73, v74);
    OUTLINED_FUNCTION_40_0();

    *(v3 + 4) = v36;
    OUTLINED_FUNCTION_2_114();
    _os_log_impl(v66, v67, v68, v69, v70, v71);
    OUTLINED_FUNCTION_3_7();
    OUTLINED_FUNCTION_35();
  }

LABEL_22:

  return 0;
}

Swift::Bool __swiftcall SmartAppSelectionFeatureManager.shouldEnableSignalCollectionBasedOnCommonConditions()()
{
  OUTLINED_FUNCTION_11_65();
  v3 = *(v1 + 8);
  v4 = OUTLINED_FUNCTION_1_1();
  v5(v4);
  v6 = SmartAppSelectionFeatureManager.validateDevice(_:)(v31);
  v7 = __swift_destroy_boxed_opaque_existential_1(v31);
  if ((v6 & 1) == 0)
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2();
    }

    v9 = type metadata accessor for Logger();
    __swift_project_value_buffer(v9, static Logger.siriPhone);
    OUTLINED_FUNCTION_40_0();

    v10 = Logger.logObject.getter();
    static os_log_type_t.debug.getter();
    OUTLINED_FUNCTION_162();
    if (!OUTLINED_FUNCTION_108())
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v6 = *(v0 + 64);
  if ((*(*v6 + 80))(v7))
  {
    return 1;
  }

  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2();
  }

  v11 = type metadata accessor for Logger();
  __swift_project_value_buffer(v11, static Logger.siriPhone);
  OUTLINED_FUNCTION_40_0();

  v10 = Logger.logObject.getter();
  static os_log_type_t.debug.getter();
  OUTLINED_FUNCTION_162();
  if (OUTLINED_FUNCTION_108())
  {
LABEL_11:
    OUTLINED_FUNCTION_42();
    OUTLINED_FUNCTION_83();
    OUTLINED_FUNCTION_66_1();
    v12 = OUTLINED_FUNCTION_1_119(4.8149e-34);
    v16 = OUTLINED_FUNCTION_62_19(v12, v13, v14, v15);
    OUTLINED_FUNCTION_9_75(v16, v17, v18, v19, v20, v21, v22, v23, v30, v31[0], v31[1]);
    OUTLINED_FUNCTION_40_0();

    *(v2 + 4) = v6;
    OUTLINED_FUNCTION_2_114();
    _os_log_impl(v24, v25, v26, v27, v28, v29);
    OUTLINED_FUNCTION_3_7();
    OUTLINED_FUNCTION_35();
  }

LABEL_12:

  return 0;
}

BOOL SmartAppSelectionFeatureManager.isLongEnoughSinceLastForcedAppDisambiguationShowed()()
{
  v2 = type metadata accessor for Date();
  v3 = OUTLINED_FUNCTION_1_5(v2);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v6 = v0[6];
  v7 = v0[7];
  __swift_project_boxed_opaque_existential_1(v0 + 3, v6);
  v8 = OUTLINED_FUNCTION_14_58();
  v9(v8);
  OUTLINED_FUNCTION_25_39();
  Date.timeIntervalSince1970.getter();
  v10 = OUTLINED_FUNCTION_23_36();
  v11(v10);
  v16[0] = 0;
  v17 = v1;
  v18 = _swiftEmptyArrayStorage;
  v12 = lazy protocol witness table accessor for type ForcedAppDisambiguationHistory and conformance ForcedAppDisambiguationHistory();
  SiriPhoneDefaultsProviding.getOrDefault<A>(key:defaultValue:)(2, v16, v6, &type metadata for ForcedAppDisambiguationHistory, v7, v12, v19);
  __swift_destroy_boxed_opaque_existential_1(v20);
  ForcedAppDisambiguationHistory.daysSinceLastShowed.getter();
  v14 = v13;

  return v14 > 28;
}

BOOL SmartAppSelectionFeatureManager.isLongEnoughSinceLastAppNameSpecifiedByUserSignalCollected()()
{
  v3 = type metadata accessor for Date();
  v4 = OUTLINED_FUNCTION_1_5(v3);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = v0[6];
  v8 = v0[7];
  __swift_project_boxed_opaque_existential_1(v0 + 3, v7);
  v9 = OUTLINED_FUNCTION_14_58();
  v10(v9);
  OUTLINED_FUNCTION_25_39();
  Date.timeIntervalSince1970.getter();
  v11 = OUTLINED_FUNCTION_23_36();
  v12(v11);
  v15[0] = v2;
  v15[1] = _swiftEmptyArrayStorage;
  v13 = lazy protocol witness table accessor for type AppNameSpecifiedByUserSignalCollectionHistory and conformance AppNameSpecifiedByUserSignalCollectionHistory();
  SiriPhoneDefaultsProviding.getOrDefault<A>(key:defaultValue:)(3, v15, v7, &type metadata for AppNameSpecifiedByUserSignalCollectionHistory, v8, v13, &v16);
  __swift_destroy_boxed_opaque_existential_1(v17);
  AppNameSpecifiedByUserSignalCollectionHistory.daysSinceLastShowed.getter();
  OUTLINED_FUNCTION_40_0();

  return v1 > 28;
}

uint64_t SmartAppSelectionFeatureManager.validateDevice(_:)(void *a1)
{
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  OUTLINED_FUNCTION_1_1();
  if (dispatch thunk of DeviceState.isPhone.getter())
  {
    return 1;
  }

  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  OUTLINED_FUNCTION_1_1();
  return dispatch thunk of DeviceState.isCarPlay.getter() & 1;
}

void *SmartAppSelectionFeatureManager.deinit()
{
  v1 = v0[2];

  __swift_destroy_boxed_opaque_existential_1(v0 + 3);
  v2 = v0[8];

  v3 = v0[10];
  v4 = v0[12];

  return v0;
}

uint64_t SmartAppSelectionFeatureManager.__deallocating_deinit()
{
  SmartAppSelectionFeatureManager.deinit();

  return swift_deallocClassInstance();
}

uint64_t SpeakerphoneControlFlow.executeAction(currentCall:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[8] = a3;
  v4[9] = v3;
  v4[6] = a1;
  v4[7] = a2;
  return _swift_task_switch(SpeakerphoneControlFlow.executeAction(currentCall:), 0, 0);
}

uint64_t SpeakerphoneControlFlow.executeAction(currentCall:)()
{
  v74 = v0;
  v1 = *(v0[9] + 56);
  if ((PhoneCallControlAction.isSpeakerphoneAction.getter(v1) & 1) == 0)
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2();
    }

    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, static Logger.siriPhone);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_0, v6, v7, "#SpeakerphoneControlFlow used to handle a call control not related to the microphone.", v8, 2u);
      OUTLINED_FUNCTION_26_0();
    }

    lazy protocol witness table accessor for type ActionableCallControlFlow.ActionableCallControlFlowError and conformance ActionableCallControlFlow.ActionableCallControlFlowError();
    swift_allocError();
    v10 = v9;
    v11 = 0;
    *v9 = v1;
    goto LABEL_13;
  }

  if (PhoneCallControlAction.rawValue.getter(v1) == 0xD000000000000013 && 0x8000000000452ED0 == v2)
  {
  }

  else
  {
    v4 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v4 & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  v13 = v0[7];
  v14 = v0[8];
  ObjectType = swift_getObjectType();
  if ((*(v14 + 32))(ObjectType, v14))
  {
    v16 = v0[7];
    if ((*(v0[8] + 24))(ObjectType))
    {
      if (one-time initialization token for siriPhone != -1)
      {
        OUTLINED_FUNCTION_6_2();
      }

      v17 = type metadata accessor for Logger();
      __swift_project_value_buffer(v17, static Logger.siriPhone);
      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 0;
        _os_log_impl(&dword_0, v18, v19, "#SpeakerphoneControlFlow cannot turn off speakerphone on FaceTime call.", v20, 2u);
        OUTLINED_FUNCTION_26_0();
      }

      lazy protocol witness table accessor for type ActionableCallControlFlow.ActionableCallControlFlowError and conformance ActionableCallControlFlow.ActionableCallControlFlowError();
      swift_allocError();
      v10 = v21;
      *(v21 + 24) = &type metadata for ActionableCallControlFlow.UnsupportedSpeakerphoneActionReason;
      *(v21 + 32) = lazy protocol witness table accessor for type ActionableCallControlFlow.UnsupportedSpeakerphoneActionReason and conformance ActionableCallControlFlow.UnsupportedSpeakerphoneActionReason();
      v11 = 1;
LABEL_13:
      v10[40] = v11;
      swift_willThrow();
      v12 = v0[1];
      goto LABEL_63;
    }
  }

LABEL_22:
  v22 = v0[7];
  v23 = v0[8];
  v24 = swift_getObjectType();
  v25 = *(v23 + 120);
  v72 = v24;
  v26 = v25(v24, v23);
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
    v30 = swift_slowAlloc();
    v71 = v25;
    v31 = swift_slowAlloc();
    v73[0] = v31;
    *v30 = 136315138;
    if (v26)
    {
      v32 = 0x64656C62616E65;
    }

    else
    {
      v32 = 0x64656C6261736964;
    }

    if (v26)
    {
      v33 = 0xE700000000000000;
    }

    else
    {
      v33 = 0xE800000000000000;
    }

    v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v33, v73);

    *(v30 + 4) = v34;
    _os_log_impl(&dword_0, v28, v29, "#SpeakerphoneControlFlow speakerphone is currently %s", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v31);
    v25 = v71;
    OUTLINED_FUNCTION_26_0();
    OUTLINED_FUNCTION_26_0();
  }

  v35 = PhoneCallControlAction.rawValue.getter(v1);
  if (v26)
  {
    if (v35 != 0xD000000000000013 || 0x8000000000452ED0 != v36)
    {
      goto LABEL_42;
    }

LABEL_52:

    goto LABEL_53;
  }

  if (v35 == 0xD000000000000012 && 0x8000000000452EB0 == v36)
  {
    goto LABEL_52;
  }

LABEL_42:
  v39 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v39)
  {
LABEL_53:
    v55 = v0[7];
    v56 = (*(v0[8] + 136))(v0 + 2, v72);
    *v57 = !*v57;
    v56(v0 + 2, 0);
    swift_unknownObjectRetain();
    v58 = Logger.logObject.getter();
    v59 = static os_log_type_t.debug.getter();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = v0[7];
      v61 = v0[8];
      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v73[0] = v63;
      *v62 = 136315138;
      v64 = v25(v72, v61);
      v65 = (v64 & 1) == 0;
      if (v64)
      {
        v66 = 0x64656C62616E65;
      }

      else
      {
        v66 = 0x64656C6261736964;
      }

      if (v65)
      {
        v67 = 0xE800000000000000;
      }

      else
      {
        v67 = 0xE700000000000000;
      }

      v68 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v66, v67, v73);

      *(v62 + 4) = v68;
      _os_log_impl(&dword_0, v58, v59, "#SpeakerphoneControlFlow toggled speakerphone to %s", v62, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v63);
      OUTLINED_FUNCTION_26_0();
      OUTLINED_FUNCTION_26_0();
    }

    goto LABEL_62;
  }

  v40 = v0[9];
  v41 = v0[7];
  swift_unknownObjectRetain();

  v42 = Logger.logObject.getter();
  v43 = static os_log_type_t.debug.getter();
  swift_unknownObjectRelease();

  if (os_log_type_enabled(v42, v43))
  {
    v44 = v0[7];
    v45 = v0[8];
    v46 = swift_slowAlloc();
    v73[0] = swift_slowAlloc();
    *v46 = 136315394;
    v47 = v25(v72, v45);
    v48 = (v47 & 1) == 0;
    if (v47)
    {
      v49 = 0x64656C62616E65;
    }

    else
    {
      v49 = 0x64656C6261736964;
    }

    if (v48)
    {
      v50 = 0xE800000000000000;
    }

    else
    {
      v50 = 0xE700000000000000;
    }

    v51 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v49, v50, v73);

    *(v46 + 4) = v51;
    *(v46 + 12) = 2080;
    v52 = PhoneCallControlAction.description.getter(v1);
    v54 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v52, v53, v73);

    *(v46 + 14) = v54;
    _os_log_impl(&dword_0, v42, v43, "#SpeakerphoneControlFlow not changing speakerphone state because speakerphone is %s and action is %s", v46, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_26_0();
    OUTLINED_FUNCTION_26_0();
  }

LABEL_62:
  v69 = v0[6];
  *v69 = 0;
  *(v69 + 8) = 0;
  *(v69 + 16) = 0;
  *(v69 + 24) = xmmword_42D060;
  v12 = v0[1];
LABEL_63:

  return v12();
}

uint64_t specialized Set.count.getter(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    return __CocoaSet.count.getter();
  }

  else
  {
    return *(a1 + 16);
  }
}

void SPHCall.isFTAudioCallOnHold.getter(uint64_t a1, void *a2)
{
  if ((SPHCall.isFTAudio.getter() & 1) == 0)
  {
    return;
  }

  v3 = a2[10];
  v4 = OUTLINED_FUNCTION_20_0();
  if ((v5(v4) & 1) == 0)
  {
    return;
  }

  v6 = a2[11];
  v7 = OUTLINED_FUNCTION_20_0();
  v8(v7);
  if (!v41)
  {
    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(&v39, &_s27PhoneCallFlowDelegatePlugin15SPHConversation_pSgMd, &_s27PhoneCallFlowDelegatePlugin15SPHConversation_pSgMR);
    return;
  }

  outlined init with take of SPHConversation(&v39, v36);
  v9 = a2[2];
  v10 = OUTLINED_FUNCTION_20_0();
  if (v11(v10) == 2 || (v12 = v38, __swift_project_boxed_opaque_existential_1(v36, v37), v13 = *(v12 + 8), v14 = OUTLINED_FUNCTION_40_0(), (v15(v14, v12) & 1) == 0))
  {
LABEL_5:
    __swift_destroy_boxed_opaque_existential_1(v36);
    return;
  }

  v16 = v38;
  __swift_project_boxed_opaque_existential_1(v36, v37);
  v17 = *(v16 + 24);
  v18 = OUTLINED_FUNCTION_40_0();
  v20 = v19(v18, v16);
  v21 = v20;
  if ((v20 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for TUConversationParticipant, TUConversationParticipant_ptr);
    lazy protocol witness table accessor for type TUConversationParticipant and conformance NSObject(&lazy protocol witness table cache variable for type TUConversationParticipant and conformance NSObject, &lazy cache variable for type metadata for TUConversationParticipant, TUConversationParticipant_ptr);
    Set.Iterator.init(_cocoa:)();
    v22 = *(&v39 + 1);
    v23 = v39;
    v24 = v40;
    v25 = v41;
    v26 = v42;
  }

  else
  {
    v27 = -1 << *(v20 + 32);
    v22 = v20 + 56;
    v24 = ~v27;
    v28 = -v27;
    if (v28 < 64)
    {
      v29 = ~(-1 << v28);
    }

    else
    {
      v29 = -1;
    }

    v26 = v29 & *(v20 + 56);

    v25 = 0;
    v23 = v21;
  }

  v30 = (v24 + 64) >> 6;
  while (v23 < 0)
  {
    if (!__CocoaSet.Iterator.next()() || (type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for TUConversationParticipant, TUConversationParticipant_ptr), swift_dynamicCast(), (v33 = v35) == 0))
    {
LABEL_27:
      outlined consume of Set<LSApplicationExtensionRecord>.Iterator._Variant();

      goto LABEL_5;
    }

LABEL_26:
    v34 = [v33 isAudioPaused];

    if (v34)
    {
      goto LABEL_27;
    }
  }

  v31 = v25;
  v32 = v26;
  if (v26)
  {
LABEL_22:
    v26 = (v32 - 1) & v32;
    v33 = *(*(v23 + 48) + ((v25 << 9) | (8 * __clz(__rbit64(v32)))));
    if (!v33)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  while (1)
  {
    v25 = v31 + 1;
    if (__OFADD__(v31, 1))
    {
      break;
    }

    if (v25 >= v30)
    {
      goto LABEL_27;
    }

    v32 = *(v22 + 8 * v25);
    ++v31;
    if (v32)
    {
      goto LABEL_22;
    }
  }

  __break(1u);
}

uint64_t SPHCall.toPhoneCallRecord()()
{
  v0 = type metadata accessor for Locale();
  v1 = OUTLINED_FUNCTION_7(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  __chkstk_darwin(v1);
  OUTLINED_FUNCTION_4();
  v8 = (v7 - v6);
  isa = SPHCall.toINCallRecord()().super.isa;
  type metadata accessor for AppInfoBuilder();
  v10 = swift_allocObject();
  static Device.current.getter();
  __swift_project_boxed_opaque_existential_1(v20, v20[3]);
  dispatch thunk of DeviceState.siriLocale.getter();
  __swift_destroy_boxed_opaque_existential_1(v20);
  v11 = _s27PhoneCallFlowDelegatePlugin0aB6RecordC10getBuilder04callF07options07appInfoH06localeAC0H0CSo06INCallF0C_AC7OptionsVAA03AppL8Building_p10Foundation6LocaleVtFZTf4nnenn_nAA0plH0C_Tt3g5(isa, 0, v10, v8);
  v12 = type metadata accessor for PhoneCallRecord(0);
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  v15 = PhoneCallRecord.init(builder:)(v11);

  v16 = *(v3 + 8);
  v17 = OUTLINED_FUNCTION_20_0();
  v18(v17);
  return v15;
}

uint64_t specialized AppInfoBuilding.getAppNameIfThirdParty(_:requestedLocale:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (App.isFirstParty()())
  {
    return 0;
  }

  else
  {
    return (*(*v3 + 88))(a1, a2);
  }
}

uint64_t SPHCall.isFTVideo.getter()
{
  OUTLINED_FUNCTION_10_55();
  if (((*(v1 + 32))() & 1) == 0)
  {
    return 0;
  }

  v2 = *(v0 + 24);
  v3 = OUTLINED_FUNCTION_20_0();

  return v4(v3);
}

id SPHCall.localHandle.getter()
{
  OUTLINED_FUNCTION_10_55();
  if (((*(v1 + 32))() & 1) == 0)
  {
    v12 = *(v0 + 64);
    v13 = OUTLINED_FUNCTION_20_0();
    v15 = v14(v13);
    v11 = [v15 handle];

    return v11;
  }

  v2 = *(v0 + 88);
  v3 = OUTLINED_FUNCTION_20_0();
  v4(v3);
  if (!v18)
  {
    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v17, &_s27PhoneCallFlowDelegatePlugin15SPHConversation_pSgMd, &_s27PhoneCallFlowDelegatePlugin15SPHConversation_pSgMR);
    return 0;
  }

  v5 = v19;
  __swift_project_boxed_opaque_existential_1(v17, v18);
  v6 = *(v5 + 32);
  v7 = OUTLINED_FUNCTION_40_0();
  v9 = v8(v7, v5);
  if (!v9)
  {
    __swift_destroy_boxed_opaque_existential_1(v17);
    return 0;
  }

  v10 = v9;
  v11 = [v9 handle];

  __swift_destroy_boxed_opaque_existential_1(v17);
  return v11;
}

uint64_t SPHCall.isFTAudio.getter()
{
  OUTLINED_FUNCTION_10_55();
  if ((*(v1 + 32))())
  {
    v2 = *(v0 + 24);
    v3 = OUTLINED_FUNCTION_20_0();
    v5 = v4(v3) ^ 1;
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

BOOL specialized Set.isEmpty.getter(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    v1 = __CocoaSet.count.getter();
  }

  else
  {
    v1 = *(a1 + 16);
  }

  return v1 == 0;
}

uint64_t TUCall.conversation.getter@<X0>(void *a1@<X8>)
{
  if (one-time initialization token for instance != -1)
  {
    OUTLINED_FUNCTION_0_36();
  }

  OUTLINED_FUNCTION_19_6();
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  v4 = v1;
  specialized CallStateProvider.onCallCenterQueue<A>(_:)(partial apply for closure #1 in TUCall.conversation.getter, v3);
  OUTLINED_FUNCTION_32_25();
  if (&static CallStateProvider.instance)
  {
    result = type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for TUConversation, TUConversation_ptr);
    v6 = &protocol witness table for TUConversation;
  }

  else
  {
    result = 0;
    v6 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  *a1 = &static CallStateProvider.instance;
  a1[3] = result;
  a1[4] = v6;
  return result;
}

id closure #1 in TUCall.conversation.getter@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = [a1 activeConversationForCall:a2];
  *a3 = result;
  return result;
}

id TUCall.maxRemoteParticipants.getter()
{
  v1 = [v0 provider];
  v2 = [v1 isFaceTimeProvider];

  if (!v2 || ![v0 isConversation])
  {
    return &dword_0 + 1;
  }

  v3 = objc_opt_self();

  return [v3 maximumNumberOfInvitedMembers];
}

uint64_t (*TUCall.isMicrophoneMuted.modify(uint64_t a1))(uint64_t *a1)
{
  *a1 = v1;
  *(a1 + 8) = [v1 isUplinkMuted];
  return TUCall.isMicrophoneMuted.modify;
}

uint64_t TUCall.isSpeakerphoneEnabled.getter()
{
  if (one-time initialization token for instance != -1)
  {
    OUTLINED_FUNCTION_0_36();
  }

  return OUTLINED_FUNCTION_6_89() & 1;
}

uint64_t TUCall.isSpeakerphoneEnabled.setter(char a1)
{
  if (one-time initialization token for instance != -1)
  {
    OUTLINED_FUNCTION_0_36();
  }

  v2 = swift_allocObject();
  *(v2 + 16) = a1 & 1;
  v3 = static CallStateProvider.instance;
  OUTLINED_FUNCTION_50();
  v4 = swift_allocObject();
  *(v4 + 16) = partial apply for closure #1 in TUCall.isSpeakerphoneEnabled.setter;
  *(v4 + 24) = v2;
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for TUCallCenter, TUCallCenter_ptr);
  v5 = v3;

  OUTLINED_FUNCTION_21_46();
}

void closure #1 in TUCall.isSpeakerphoneEnabled.getter(void *a1@<X0>, unsigned __int8 *a2@<X8>)
{
  v3 = [a1 routeController];
  v4 = [v3 speakerRoute];

  if (v4)
  {
    v5 = [v4 isCurrentlyPicked];
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
}

void closure #1 in TUCall.isSpeakerphoneEnabled.setter(void *a1, char a2)
{
  v4 = [a1 routeController];
  v5 = [v4 speakerRoute];
  if (v5)
  {
    v14 = v5;
    v6 = [v4 receiverRoute];
    if (v6)
    {
      v7 = v6;
      v8 = [a1 routeController];
      v9 = v8;
      if (a2)
      {
        v10 = v14;
      }

      else
      {
        v10 = v7;
      }

      [v8 pickRoute:v10];

      goto LABEL_13;
    }
  }

  if (one-time initialization token for siriPhone != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  __swift_project_value_buffer(v11, static Logger.siriPhone);
  v7 = Logger.logObject.getter();
  v12 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v7, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
  }

  v14 = v4;
LABEL_13:
}

uint64_t (*TUCall.isSpeakerphoneEnabled.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  if (one-time initialization token for instance != -1)
  {
    OUTLINED_FUNCTION_0_36();
  }

  *(a1 + 8) = OUTLINED_FUNCTION_6_89() & 1;
  return TUCall.isSpeakerphoneEnabled.modify;
}

uint64_t TUCall.isMicrophoneMuted.setter(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (one-time initialization token for instance != -1)
  {
    OUTLINED_FUNCTION_0_36();
  }

  v7 = swift_allocObject();
  *(v7 + 16) = v4;
  *(v7 + 24) = a1 & 1;
  v8 = static CallStateProvider.instance;
  OUTLINED_FUNCTION_50();
  v9 = swift_allocObject();
  *(v9 + 16) = a4;
  *(v9 + 24) = v7;
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for TUCallCenter, TUCallCenter_ptr);
  v10 = v4;
  v11 = v8;

  OUTLINED_FUNCTION_20_47();
}

void closure #1 in TUCall.isCameraEnabled.setter(int a1, id a2, char a3)
{
  [a2 setIsSendingVideo:a3 & 1];
  if (one-time initialization token for siriPhone != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logger.siriPhone);
  v5 = a2;
  oslog = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 67109120;
    *(v7 + 4) = [v5 isSendingVideo];

    _os_log_impl(&dword_0, oslog, v6, "#SPHCall toggled camera state to %{BOOL}d", v7, 8u);

    v8 = oslog;
  }

  else
  {

    v8 = v5;
  }
}

uint64_t (*TUCall.isCameraEnabled.modify(uint64_t a1))(uint64_t *a1)
{
  *a1 = v1;
  *(a1 + 8) = [v1 isSendingVideo];
  return TUCall.isCameraEnabled.modify;
}

Swift::Void __swiftcall TUCall.switchToFaceTime()()
{
  if ([v0 isVideo])
  {
    if (one-time initialization token for siriPhone != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    __swift_project_value_buffer(v1, static Logger.siriPhone);
    oslog = Logger.logObject.getter();
    v2 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v2))
    {
      v3 = swift_slowAlloc();
      *v3 = 0;
      _os_log_impl(&dword_0, oslog, v2, "#SPHCall cannot switch to FaceTime because the call is already a FaceTime call", v3, 2u);
    }
  }

  else
  {
    if (one-time initialization token for instance != -1)
    {
      OUTLINED_FUNCTION_0_36();
    }

    OUTLINED_FUNCTION_19_6();
    v4 = swift_allocObject();
    *(v4 + 16) = v0;
    v5 = static CallStateProvider.instance;
    OUTLINED_FUNCTION_50();
    v6 = swift_allocObject();
    *(v6 + 16) = partial apply for closure #1 in TUCall.switchToFaceTime();
    *(v6 + 24) = v4;
    type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for TUCallCenter, TUCallCenter_ptr);
    v7 = v0;
    v8 = v5;

    OUTLINED_FUNCTION_21_46();
  }
}

id closure #1 in TUCall.switchToFaceTime()(void *a1, void *a2)
{
  if (one-time initialization token for siriPhone != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logger.siriPhone);
  v5 = a2;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 67109120;
    *(v8 + 4) = [v5 isConversation];

    _os_log_impl(&dword_0, v6, v7, "#SPHCall call is conversation %{BOOL}d", v8, 8u);
  }

  else
  {

    v6 = v5;
  }

  return [a1 requestVideoUpgradeForCall:v5 originatingUIType:11];
}

id TUCall.isFaceTime.getter(SEL *a1, SEL *a2)
{
  v4 = [v2 *a1];
  v5 = [v4 *a2];

  return v5;
}

uint64_t TUCall.hold()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (one-time initialization token for instance != -1)
  {
    OUTLINED_FUNCTION_0_36();
  }

  OUTLINED_FUNCTION_19_6();
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  v6 = static CallStateProvider.instance;
  OUTLINED_FUNCTION_50();
  v7 = swift_allocObject();
  *(v7 + 16) = a3;
  *(v7 + 24) = v5;
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for TUCallCenter, TUCallCenter_ptr);
  v8 = v3;
  v9 = v6;

  OUTLINED_FUNCTION_20_47();
}

uint64_t @nonobjc TUCall.callUUID.getter()
{
  v1 = [v0 callUUID];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

id @nonobjc TUCall.localSenderIdentity.getter()
{
  v1 = [v0 localSenderIdentity];

  return v1;
}

uint64_t (*protocol witness for SPHCall.isSpeakerphoneEnabled.modify in conformance TUCall(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  if (one-time initialization token for instance != -1)
  {
    swift_once();
  }

  *(a1 + 8) = specialized CallStateProvider.onCallCenterQueue<A>(_:)(closure #1 in TUCall.isSpeakerphoneEnabled.getter, 0) & 1;
  return TUCall.isSpeakerphoneEnabled.modify;
}

uint64_t SPHCall.isBlockedOrHasNoHandles.getter()
{
  OUTLINED_FUNCTION_10_55();
  if ((*(v1 + 168))())
  {
    return 1;
  }

  v3 = *(v0 + 56);
  v4 = OUTLINED_FUNCTION_20_0();
  v6 = v5(v4);
  v7 = specialized Set.isEmpty.getter(v6);

  return v7;
}

uint64_t @nonobjc TUCall.remoteParticipantHandles.getter(SEL *a1, unint64_t *a2, uint64_t *a3, unint64_t *a4)
{
  v8 = [v4 *a1];
  type metadata accessor for CNContactStore(0, a2, a3);
  lazy protocol witness table accessor for type TUConversationParticipant and conformance NSObject(a4, a2, a3);
  v9 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  return v9;
}

id @nonobjc TUConversation.localMember.getter()
{
  v1 = [v0 localMember];

  return v1;
}

INCallRecord __swiftcall SPHCall.toINCallRecord()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v3 = OUTLINED_FUNCTION_21(v2);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v34 - v6;
  v8 = *(v1 + 8);
  v9 = OUTLINED_FUNCTION_104();
  v11 = v10(v9);
  v13 = v12;
  type metadata accessor for Date();
  v14 = 1;
  OUTLINED_FUNCTION_7_6();
  __swift_storeEnumTagSinglePayload(v15, v16, v17, v18);
  v19 = OUTLINED_FUNCTION_104();
  v21 = SPHCall.inCallRecordType.getter(v19, v20);
  v22 = *(v1 + 24);
  v23 = OUTLINED_FUNCTION_104();
  if (v24(v23))
  {
    v14 = 2;
  }

  v25 = OUTLINED_FUNCTION_104();
  v27 = SPHCall.inCallProvider.getter(v25, v26);
  v28 = OUTLINED_FUNCTION_104();
  v30 = SPHCall.inParticipants.getter(v28, v29);
  v31 = [objc_allocWithZone(NSNumber) initWithInteger:1];
  v32 = objc_allocWithZone(INCallRecord);
  return @nonobjc INCallRecord.init(__identifier:dateCreated:callRecordType:callCapability:callDuration:unseen:preferredCallProvider:participants:numberOfCalls:providerId:providerBundleId:isCallerIdBlocked:)(v11, v13, v7, v21, v14, 0, 0, v27, v30, v31, 0, 0, 0, 0, 0);
}

uint64_t SPHCall.inCallRecordType.getter(uint64_t a1, uint64_t a2)
{
  v2 = (*(a2 + 16))() - 1;
  if (v2 > 3)
  {
    return 0;
  }

  else
  {
    return qword_4493F0[v2];
  }
}

uint64_t SPHCall.inCallProvider.getter(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 32))())
  {
    return 2;
  }

  else
  {
    return (*(a2 + 40))(a1, a2) & 1;
  }
}

void *SPHCall.inParticipants.getter(uint64_t a1, uint64_t a2)
{
  v2 = (*(a2 + 56))();
  v3 = specialized Set.count.getter(v2);
  if (v3)
  {
    v4 = v3;
    v30 = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    result = specialized Set.startIndex.getter(v2);
    v27 = result;
    v28 = v6;
    v29 = v7 & 1;
    if ((v4 & 0x8000000000000000) == 0)
    {
      result = type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INPerson, INPerson_ptr);
      v8 = 0;
      while (!__OFADD__(v8++, 1))
      {
        v11 = v27;
        v10 = v28;
        v12 = v29;
        specialized Set.subscript.getter(v27, v28, v29, v2);
        v14 = v13;
        INPerson.init(personHandle:)([v13 personHandle]);

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v15 = v30[2];
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        result = specialized ContiguousArray._endMutation()();
        if ((v2 & 0xC000000000000001) != 0)
        {
          if (!v12)
          {
            goto LABEL_31;
          }

          if (__CocoaSet.Index.handleBitPattern.getter())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSh5IndexVySo8TUHandleC_GMd, &_sSh5IndexVySo8TUHandleC_GMR);
          v20 = Set.Index._asCocoa.modify();
          __CocoaSet.formIndex(after:isUnique:)();
          result = v20(v26, 0);
        }

        else
        {
          if (v12)
          {
            goto LABEL_32;
          }

          if ((v11 & 0x8000000000000000) != 0)
          {
            goto LABEL_27;
          }

          v16 = 1 << *(v2 + 32);
          if (v11 >= v16)
          {
            goto LABEL_27;
          }

          v17 = v11 >> 6;
          v18 = *(v2 + 56 + 8 * (v11 >> 6));
          if (((v18 >> v11) & 1) == 0)
          {
            goto LABEL_28;
          }

          if (*(v2 + 36) != v10)
          {
            goto LABEL_29;
          }

          v19 = v18 & (-2 << (v11 & 0x3F));
          if (v19)
          {
            v16 = __clz(__rbit64(v19)) | v11 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v21 = v17 << 6;
            v22 = v17 + 1;
            v23 = (v2 + 64 + 8 * v17);
            while (v22 < (v16 + 63) >> 6)
            {
              v25 = *v23++;
              v24 = v25;
              v21 += 64;
              ++v22;
              if (v25)
              {
                result = outlined consume of Set<TUHandle>.Index._Variant(v11, v10, 0);
                v16 = __clz(__rbit64(v24)) + v21;
                goto LABEL_22;
              }
            }

            result = outlined consume of Set<TUHandle>.Index._Variant(v11, v10, 0);
          }

LABEL_22:
          v27 = v16;
          v28 = v10;
          v29 = 0;
        }

        if (v8 == v4)
        {

          outlined consume of Set<TUHandle>.Index._Variant(v27, v28, v29);
          return v30;
        }
      }

      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {

    return _swiftEmptyArrayStorage;
  }

  return result;
}