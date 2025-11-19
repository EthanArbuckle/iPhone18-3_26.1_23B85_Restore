uint64_t DisableConfirmRequestsConfirmationStrategy.makePromptForConfirmation(itemToConfirm:)()
{
  v30 = v0[39];
  v26 = v0[36];
  v27 = v0[38];
  v32 = v0[35];
  v1 = v0[33];
  v23 = v0[32];
  v2 = v0[30];
  v3 = v0[31];
  v4 = v0[26];
  v5 = v0[24];
  v28 = v0[20];
  v24 = v0[17];
  v31 = v0[16];
  v33 = [objc_allocWithZone(DialogExecutionResult) init];
  v0[40] = v33;
  v6 = [objc_allocWithZone(DialogElement) init];
  v0[41] = v6;

  v7 = String._bridgeToObjectiveC()();

  [v6 setFullPrint:v7];

  v8 = String._bridgeToObjectiveC()();

  [v6 setFullSpeak:v8];

  v9 = String._bridgeToObjectiveC()();

  [v6 setSupportingPrint:v9];

  v10 = String._bridgeToObjectiveC()();

  [v6 setSupportingSpeak:v10];

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_B9BD0;
  *(v11 + 32) = v6;
  type metadata accessor for DialogElement();
  v12 = v6;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v33 setDialog:isa];

  static DialogPhase.confirmation.getter();
  v14 = swift_task_alloc();
  v14[2] = v1;
  v14[3] = v5;
  v14[4] = v23;
  v14[5] = v4;
  v14[6] = v3;
  v14[7] = v2;
  v14[8] = v32;
  v14[9] = v26;
  v14[10] = v27;
  v14[11] = v30;
  v14[12] = 0xD00000000000002CLL;
  v14[13] = 0x80000000000BEB30;
  OutputGenerationManifest.init(dialogPhase:_:)();

  v25 = v31[5];
  v29 = v31[6];
  __swift_project_boxed_opaque_existential_1(v31 + 2, v25);

  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();
  v0[5] = &type metadata for SiriInformationDataModels;
  v0[6] = lazy protocol witness table accessor for type SiriInformationDataModels and conformance SiriInformationDataModels();
  v15 = swift_allocObject();
  v0[2] = v15;
  *(v15 + 16) = v32;
  *(v15 + 24) = v26;
  *(v15 + 32) = v27;
  *(v15 + 40) = v30;
  *(v15 + 48) = 1;
  v16 = swift_allocObject();
  v0[42] = v16;
  *(v16 + 16) = xmmword_B9BD0;
  *(v16 + 32) = v33;
  v17 = async function pointer to dispatch thunk of ResponseGenerating.makeResponseOutput(conversationModel:dialog:outputGenerationManifest:)[1];
  v18 = v33;
  v19 = swift_task_alloc();
  v0[43] = v19;
  *v19 = v0;
  v19[1] = DisableConfirmRequestsConfirmationStrategy.makePromptForConfirmation(itemToConfirm:);
  v20 = v0[20];
  v21 = v0[15];

  return dispatch thunk of ResponseGenerating.makeResponseOutput(conversationModel:dialog:outputGenerationManifest:)(v21, v0 + 2, v16, v20, v25, v29);
}

{
  v1 = *v0;
  v2 = *(*v0 + 344);
  v3 = *(*v0 + 336);
  v5 = *v0;

  __swift_destroy_boxed_opaque_existential_0Tm((v1 + 16));

  return _swift_task_switch(DisableConfirmRequestsConfirmationStrategy.makePromptForConfirmation(itemToConfirm:), 0, 0);
}

{
  v1 = *(v0 + 328);
  v3 = *(v0 + 152);
  v2 = *(v0 + 160);
  v5 = *(v0 + 136);
  v4 = *(v0 + 144);

  (*(v3 + 8))(v2, v4);

  v6 = *(v0 + 8);

  return v6();
}

{
  v1 = v0[27];
  v2 = v0[24];

  v3 = v0[20];
  v4 = v0[17];

  v5 = v0[1];

  return v5();
}

{
  v1 = v0[24];

  v2 = v0[29];
  v3 = v0[26];

  v4 = v0[20];
  v5 = v0[17];

  v6 = v0[1];

  return v6();
}

uint64_t closure #1 in DisableConfirmRequestsConfirmationStrategy.makePromptForConfirmation(itemToConfirm:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 80);
  v3 = *(a2 + 88);
  OutputGenerationManifest.canUseServerTTS.setter();
  OutputGenerationManifest.listenAfterSpeaking.setter();
  OutputGenerationManifest.printSupportingDialogInDisplayModes.setter();

  return OutputGenerationManifest.responseViewId.setter();
}

uint64_t *DisableConfirmRequestsConfirmationStrategy.deinit()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 7);
  v1 = v0[12];

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 13);
  return v0;
}

uint64_t DisableConfirmRequestsConfirmationStrategy.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 7);
  v1 = v0[12];

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 13);

  return swift_deallocClassInstance();
}

uint64_t protocol witness for PromptForConfirmationFlowStrategyAsync.parseConfirmationResponse(input:) in conformance DisableConfirmRequestsConfirmationStrategy(uint64_t a1, uint64_t a2)
{
  *(v3 + 16) = a1;
  v5 = *(*v2 + 184);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v3 + 24) = v7;
  *v7 = v3;
  v7[1] = protocol witness for PromptForConfirmationFlowStrategyAsync.parseConfirmationResponse(input:) in conformance DisableConfirmRequestsConfirmationStrategy;

  return v9(a2);
}

uint64_t protocol witness for PromptForConfirmationFlowStrategyAsync.parseConfirmationResponse(input:) in conformance DisableConfirmRequestsConfirmationStrategy(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 24);
  v6 = *v2;

  if (!v1)
  {
    **(v4 + 16) = a1;
  }

  v7 = *(v6 + 8);

  return v7();
}

uint64_t protocol witness for PromptForConfirmationFlowStrategyAsync.makePromptForConfirmation(itemToConfirm:) in conformance DisableConfirmRequestsConfirmationStrategy(uint64_t a1)
{
  v4 = *(*v1 + 192);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return v8(a1);
}

uint64_t protocol witness for PromptForConfirmationFlowStrategyAsync.makeRepromptOnEmptyParse(itemToConfirm:) in conformance DisableConfirmRequestsConfirmationStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = async function pointer to PromptForConfirmationFlowStrategyAsync.makeRepromptOnEmptyParse(itemToConfirm:)[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for DisableConfirmRequestsConfirmationStrategy();
  *v9 = v4;
  v9[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return PromptForConfirmationFlowStrategyAsync.makeRepromptOnEmptyParse(itemToConfirm:)(a1, a2, v10, a4);
}

uint64_t protocol witness for PromptForConfirmationFlowStrategyAsync.makeRepromptOnLowConfidence(itemToConfirm:) in conformance DisableConfirmRequestsConfirmationStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = async function pointer to PromptForConfirmationFlowStrategyAsync.makeRepromptOnLowConfidence(itemToConfirm:)[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for DisableConfirmRequestsConfirmationStrategy();
  *v9 = v4;
  v9[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return PromptForConfirmationFlowStrategyAsync.makeRepromptOnLowConfidence(itemToConfirm:)(a1, a2, v10, a4);
}

uint64_t protocol witness for PromptForConfirmationFlowStrategyAsync.makeConfirmationRejectedResponse() in conformance DisableConfirmRequestsConfirmationStrategy(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = async function pointer to PromptForConfirmationFlowStrategyAsync.makeConfirmationRejectedResponse()[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return PromptForConfirmationFlowStrategyAsync.makeConfirmationRejectedResponse()(a1, a2, a3);
}

uint64_t protocol witness for PromptForConfirmationFlowStrategyAsync.makeFlowCancelledResponse() in conformance DisableConfirmRequestsConfirmationStrategy(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = async function pointer to PromptForConfirmationFlowStrategyAsync.makeFlowCancelledResponse()[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = protocol witness for Flow.execute() in conformance NavigateToShimFlow;

  return PromptForConfirmationFlowStrategyAsync.makeFlowCancelledResponse()(a1, a2, a3);
}

uint64_t protocol witness for PromptForConfirmationFlowStrategyAsync.makeErrorResponse(_:) in conformance DisableConfirmRequestsConfirmationStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = async function pointer to PromptForConfirmationFlowStrategyAsync.makeErrorResponse(_:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return PromptForConfirmationFlowStrategyAsync.makeErrorResponse(_:)(a1, a2, a3, a4);
}

uint64_t DisableConfirmRequestsConfirmationResponseProvider.confirmationResponse.getter@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  if (a1 == 2)
  {
    v3 = type metadata accessor for ConfirmationResponse();
    v4 = *(*(v3 - 8) + 56);
    v5 = v3;
    v6 = a2;
    v7 = 1;
  }

  else
  {
    v9 = type metadata accessor for ConfirmationResponse();
    v10 = *(v9 - 8);
    v13 = (v10 + 56);
    if (a1)
    {
      v11 = &enum case for ConfirmationResponse.rejected(_:);
    }

    else
    {
      v11 = &enum case for ConfirmationResponse.confirmed(_:);
    }

    (*(v10 + 104))(a2, *v11, v9);
    v4 = *v13;
    v6 = a2;
    v7 = 0;
    v5 = v9;
  }

  return v4(v6, v7, 1, v5);
}

uint64_t protocol witness for ConfirmationResponseProviding.confirmationResponse.getter in conformance DisableConfirmRequestsConfirmationResponseProvider@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  if (v3 == 2)
  {
    v4 = type metadata accessor for ConfirmationResponse();
    v5 = *(*(v4 - 8) + 56);
    v6 = v4;
    v7 = a1;
    v8 = 1;
  }

  else
  {
    v9 = type metadata accessor for ConfirmationResponse();
    v10 = *(v9 - 8);
    v13 = (v10 + 56);
    if (v3)
    {
      v11 = &enum case for ConfirmationResponse.rejected(_:);
    }

    else
    {
      v11 = &enum case for ConfirmationResponse.confirmed(_:);
    }

    (*(v10 + 104))(a1, *v11, v9);
    v5 = *v13;
    v7 = a1;
    v8 = 0;
    v6 = v9;
  }

  return v5(v7, v8, 1, v6);
}

unint64_t lazy protocol witness table accessor for type [String] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [String] and conformance [A];
  if (!lazy protocol witness table cache variable for type [String] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySSGMd, &_sSaySSGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [String] and conformance [A]);
  }

  return result;
}

uint64_t outlined destroy of ConfirmationResponse?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow20ConfirmationResponseOSgMd, &_s11SiriKitFlow20ConfirmationResponseOSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with copy of ConfirmationResponse?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow20ConfirmationResponseOSgMd, &_s11SiriKitFlow20ConfirmationResponseOSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type Input and conformance Input()
{
  result = lazy protocol witness table cache variable for type Input and conformance Input;
  if (!lazy protocol witness table cache variable for type Input and conformance Input)
  {
    type metadata accessor for Input();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Input and conformance Input);
  }

  return result;
}

unint64_t type metadata accessor for DialogElement()
{
  result = lazy cache variable for type metadata for DialogElement;
  if (!lazy cache variable for type metadata for DialogElement)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for DialogElement);
  }

  return result;
}

uint64_t partial apply for closure #1 in DisableConfirmRequestsConfirmationStrategy.makePromptForConfirmation(itemToConfirm:)(uint64_t a1)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 48);
  v4 = *(v1 + 64);
  v5 = *(v1 + 80);
  v6 = *(v1 + 96);
  v7 = *(v1 + 104);
  v9[0] = *(v1 + 16);
  v9[1] = v2;
  v9[2] = v3;
  v9[3] = v4;
  v9[4] = v5;
  v10 = v6;
  v11 = v7;
  return closure #1 in DisableConfirmRequestsConfirmationStrategy.makePromptForConfirmation(itemToConfirm:)(a1, v9);
}

uint64_t sub_39A58()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  outlined consume of SiriInformationDataModels();

  return _swift_deallocObject(v0, 49, 7);
}

uint64_t outlined consume of SiriInformationDataModels()
{
}

unint64_t lazy protocol witness table accessor for type DisableConfirmRequestsConfirmationResponseProvider and conformance DisableConfirmRequestsConfirmationResponseProvider()
{
  result = lazy protocol witness table cache variable for type DisableConfirmRequestsConfirmationResponseProvider and conformance DisableConfirmRequestsConfirmationResponseProvider;
  if (!lazy protocol witness table cache variable for type DisableConfirmRequestsConfirmationResponseProvider and conformance DisableConfirmRequestsConfirmationResponseProvider)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DisableConfirmRequestsConfirmationResponseProvider and conformance DisableConfirmRequestsConfirmationResponseProvider);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DisableConfirmRequestsConfirmationResponse and conformance DisableConfirmRequestsConfirmationResponse()
{
  result = lazy protocol witness table cache variable for type DisableConfirmRequestsConfirmationResponse and conformance DisableConfirmRequestsConfirmationResponse;
  if (!lazy protocol witness table cache variable for type DisableConfirmRequestsConfirmationResponse and conformance DisableConfirmRequestsConfirmationResponse)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DisableConfirmRequestsConfirmationResponse and conformance DisableConfirmRequestsConfirmationResponse);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DisableConfirmRequestsConfirmationResponseProvider(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  if (v6 <= 2)
  {
    v7 = 2;
  }

  else
  {
    v7 = *a1;
  }

  v8 = v7 - 3;
  if (v6 < 2)
  {
    v9 = -1;
  }

  else
  {
    v9 = v8;
  }

  return (v9 + 1);
}

uint64_t SearchFlow.nlContextUpdate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC21InformationFlowPlugin10SearchFlow_nlContextUpdate;
  swift_beginAccess();
  return outlined init with copy of (String, Decodable & Encodable & Sendable)(v1 + v3, a1, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
}

uint64_t SearchFlow.nlContextUpdate.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC21InformationFlowPlugin10SearchFlow_nlContextUpdate;
  swift_beginAccess();
  outlined assign with take of NLContextUpdate?(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t SearchFlow.targetedRequest.getter()
{
  v1 = OBJC_IVAR____TtC21InformationFlowPlugin10SearchFlow_targetedRequest;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t SearchFlow.targetedRequest.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC21InformationFlowPlugin10SearchFlow_targetedRequest;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t key path setter for SearchFlow.state : SearchFlow(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchFlow.State(0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of SearchFlow.State(a1, v7, type metadata accessor for SearchFlow.State);
  return (*(**a2 + 208))(v7);
}

void SearchFlow.state.didset()
{
  v1 = v0;
  v2 = type metadata accessor for SearchFlow.State(0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for information != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Logger.information);

  v16 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v16, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v17 = v9;
    *v8 = 136315138;
    v10 = OBJC_IVAR____TtC21InformationFlowPlugin10SearchFlow_state;
    swift_beginAccess();
    outlined init with copy of SearchFlow.State(v1 + v10, v5, type metadata accessor for SearchFlow.State);
    v11 = String.init<A>(describing:)();
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v17);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_0, v16, v7, "#InformationSearchFlow transitioning to state %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v9);
  }

  else
  {
    v14 = v16;
  }
}

uint64_t SearchFlow.state.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC21InformationFlowPlugin10SearchFlow_state;
  swift_beginAccess();
  return outlined init with copy of SearchFlow.State(v1 + v3, a1, type metadata accessor for SearchFlow.State);
}

uint64_t SearchFlow.state.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC21InformationFlowPlugin10SearchFlow_state;
  swift_beginAccess();
  outlined assign with copy of SearchFlow.State(a1, v1 + v3);
  swift_endAccess();
  SearchFlow.state.didset();
  return outlined destroy of SearchFlow.State(a1, type metadata accessor for SearchFlow.State);
}

uint64_t outlined assign with copy of SearchFlow.State(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchFlow.State(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void (*SearchFlow.state.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return SearchFlow.state.modify;
}

void SearchFlow.state.modify(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = *(a1 + 24);
    SearchFlow.state.didset();
  }
}

uint64_t SearchFlow.exitValue.getter@<X0>(char *a1@<X8>)
{
  v29 = a1;
  v2 = type metadata accessor for CompositionResolutionError();
  v27 = *(v2 - 8);
  v28 = v2;
  v3 = *(v27 + 64);
  __chkstk_darwin(v2);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SearchFlow.State(0);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v26 - v11;
  v13 = type metadata accessor for RREntity();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v13);
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(*v1 + 200);
  v19(v16);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    v20 = *(v14 + 32);
    v20(v18, v12, v13);
    v20(v29, v18, v13);
  }

  else
  {
    v21 = v29;
    v22 = outlined destroy of SearchFlow.State(v12, type metadata accessor for SearchFlow.State);
    v19(v22);
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      v23 = v28;
      v24 = *(v27 + 32);
      v24(v5, v10, v28);
      v24(v21, v5, v23);
    }

    else
    {
      outlined destroy of SearchFlow.State(v10, type metadata accessor for SearchFlow.State);
      (*(v27 + 104))(v21, enum case for CompositionResolutionError.unknownError(_:), v28);
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy32SiriReferenceResolutionDataModel8RREntityV0B7KitFlow011CompositionD5ErrorOGMd, &_ss6ResultOy32SiriReferenceResolutionDataModel8RREntityV0B7KitFlow011CompositionD5ErrorOGMR);
  return swift_storeEnumTagMultiPayload();
}

uint64_t SearchFlow.__allocating_init(parse:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for CATOption();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v6 = type metadata accessor for USOParse();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, a1, v6);
  static OutputPublisherFactory.makeOutputPublisherAsync()();
  static Device.current.getter();
  type metadata accessor for CommonCATs();
  static CATOption.defaultMode.getter();
  v11 = CATWrapper.__allocating_init(options:globals:)();
  type metadata accessor for InformationViewFactory();
  v12 = swift_allocObject();
  v13 = [objc_opt_self() sharedPreferences];
  v14 = type metadata accessor for PommesServerFallbackPreferences();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();
  v17 = PommesServerFallbackPreferences.init(_:)();
  v12[11] = v14;
  v12[12] = &protocol witness table for PommesServerFallbackPreferences;
  v12[8] = v17;
  outlined init with take of SiriSuggestionsBroker(v30, (v12 + 3));
  v12[2] = v11;
  type metadata accessor for PommesSearch();
  static PommesSearch.UserDefaultsSuiteName.getter();
  v18 = type metadata accessor for PommesDialogStateManager();
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  swift_allocObject();
  v21 = PommesDialogStateManager.init(suiteName:)();
  type metadata accessor for RenderComponentFlowFactory();
  v22 = swift_allocObject();
  outlined init with take of SiriSuggestionsBroker(&v31, v22 + 16);
  *(v22 + 56) = v12;
  *(v22 + 64) = v21;
  v23 = type metadata accessor for PommesSearchClient();
  v24 = *(v23 + 48);
  v25 = *(v23 + 52);
  swift_allocObject();
  v26 = PommesSearchClient.init()();
  if (v26)
  {
    v27 = &protocol witness table for PommesSearchClient;
  }

  else
  {
    v23 = 0;
    v27 = 0;
    *(&v31 + 1) = 0;
    v32 = 0;
  }

  *&v31 = v26;
  v33 = v23;
  v34 = v27;
  v28 = (*(v2 + 232))(v10, v22, &v31);
  (*(v7 + 8))(a1, v6);
  return v28;
}

uint64_t SearchFlow.__allocating_init(parse:renderComponentFlowFactory:pommesSearchClient:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 48);
  v8 = *(v3 + 52);
  swift_allocObject();
  v9 = specialized SearchFlow.init(parse:renderComponentFlowFactory:pommesSearchClient:)(a1, a2, a3);

  return v9;
}

uint64_t SearchFlow.init(parse:renderComponentFlowFactory:pommesSearchClient:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = specialized SearchFlow.init(parse:renderComponentFlowFactory:pommesSearchClient:)(a1, a2, a3);

  return v3;
}

uint64_t SearchFlow.setState(_:)(uint64_t a1)
{
  v3 = type metadata accessor for SearchFlow.State(0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of SearchFlow.State(a1, v6, type metadata accessor for SearchFlow.State);
  return (*(*v1 + 208))(v6);
}

uint64_t SearchFlow.on(input:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Parse();
  v47 = *(v4 - 8);
  v5 = *(v47 + 64);
  __chkstk_darwin(v4);
  v46 = &v39[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for SearchFlow.State(0);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7);
  v45 = &v39[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v44 = &v39[-v11];
  v12 = type metadata accessor for Input();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v39[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (one-time initialization token for information != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  __swift_project_value_buffer(v17, static Logger.information);
  (*(v13 + 16))(v16, a1, v12);

  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v43 = v4;
    v21 = v20;
    v41 = swift_slowAlloc();
    v48 = v41;
    *v21 = 136315394;
    v22 = *v1;
    v40 = v19;
    v23 = *(v22 + 200);
    v42 = a1;
    v23();
    v24 = String.init<A>(describing:)();
    v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v25, &v48);

    *(v21 + 4) = v26;
    *(v21 + 12) = 2080;
    v27 = Input.description.getter();
    v29 = v28;
    (*(v13 + 8))(v16, v12);
    v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v29, &v48);

    *(v21 + 14) = v30;
    _os_log_impl(&dword_0, v18, v40, "#InformationSearchFlow entering on with state: %s, input: %s", v21, 0x16u);
    swift_arrayDestroy();

    v4 = v43;
  }

  else
  {

    (*(v13 + 8))(v16, v12);
  }

  v31 = v45;
  (*(*v2 + 200))();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  outlined destroy of SearchFlow.State(v31, type metadata accessor for SearchFlow.State);
  v33 = v46;
  if (EnumCaseMultiPayload == 4)
  {
    Input.parse.getter();
    if ((*(v47 + 88))(v33, v4) == enum case for Parse.pommesResponse(_:))
    {
      (*(v47 + 96))(v33, v4);
      v34 = *v33;
      if (specialized SearchFlow.hasDelayedAction(pommesResponse:)())
      {
        v35 = v44;
        *v44 = v34;
        swift_storeEnumTagMultiPayload();
        v36 = *(*v2 + 208);
        v37 = v34;
        v36(v35);

        return 1;
      }
    }

    else
    {
      (*(v47 + 8))(v33, v4);
    }
  }

  return 0;
}

uint64_t SearchFlow.execute()(uint64_t a1)
{
  v2[11] = a1;
  v2[12] = v1;
  v3 = type metadata accessor for USOParse();
  v2[13] = v3;
  v4 = *(v3 - 8);
  v2[14] = v4;
  v5 = *(v4 + 64) + 15;
  v2[15] = swift_task_alloc();
  v6 = type metadata accessor for SearchFlow.State(0);
  v2[16] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();

  return _swift_task_switch(SearchFlow.execute(), 0, 0);
}

{
  v4 = *v2;
  v5 = *(*v2 + 192);
  v6 = *v2;
  *(*v2 + 200) = v1;

  if (v1)
  {
    v7 = SearchFlow.execute();
  }

  else
  {
    *(v4 + 208) = a1;
    v7 = SearchFlow.execute();
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t SearchFlow.execute()()
{
  v55 = v0;
  if (one-time initialization token for information != -1)
  {
    swift_once();
  }

  v1 = v0[12];
  v2 = type metadata accessor for Logger();
  v0[19] = __swift_project_value_buffer(v2, static Logger.information);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[18];
    v6 = v0[16];
    v7 = v0[12];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v54 = v9;
    *v8 = 136315138;
    (*(*v7 + 200))();
    v10 = String.init<A>(describing:)();
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, &v54);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_0, v3, v4, "#InformationSearchFlow entering execute with state: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v9);
  }

  else
  {
    v7 = v0[12];
  }

  v0[20] = v7;
  v13 = v0[16];
  v14 = v0[17];
  (*(*v0[12] + 200))();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2 || EnumCaseMultiPayload == 3)
    {
      v16 = v0[17];
      v17 = v0[11];
      static ExecuteResponse.complete()();
      outlined destroy of SearchFlow.State(v16, type metadata accessor for SearchFlow.State);
    }

    else
    {
      v29 = v0[11];
      static ExecuteResponse.ongoing(requireInput:)();
    }

    goto LABEL_22;
  }

  if (!EnumCaseMultiPayload)
  {
    v18 = v0[18];
    v19 = v0[15];
    v20 = v0[12];
    (*(v0[14] + 32))(v19, v0[17], v0[13]);
    swift_storeEnumTagMultiPayload();
    v21 = *(*v20 + 208);
    v22 = (*v20 + 208) & 0xFFFFFFFFFFFFLL | 0x45B000000000000;
    v0[21] = v21;
    v0[22] = v22;
    v21(v18);
    v23 = (*(*v20 + 280))(v19);
    v0[23] = v23;
    if (v23)
    {
      v24 = v23;
      outlined init with copy of (String, Decodable & Encodable & Sendable)(v0[12] + OBJC_IVAR____TtC21InformationFlowPlugin10SearchFlow_pommesSearchClient, (v0 + 2), &_s21SiriInformationSearch18PommesXPCSearching_pSgMd, &_s21SiriInformationSearch18PommesXPCSearching_pSgMR);
      v25 = v0[5];
      if (v25)
      {
        v26 = v0[6];
        __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
        v27 = async function pointer to dispatch thunk of PommesXPCSearching.searchInfiEntity(request:)[1];
        v28 = swift_task_alloc();
        v0[24] = v28;
        *v28 = v0;
        v28[1] = SearchFlow.execute();

        return dispatch thunk of PommesXPCSearching.searchInfiEntity(request:)(v24, v25, v26);
      }

      outlined destroy of Any?((v0 + 2), &_s21SiriInformationSearch18PommesXPCSearching_pSgMd, &_s21SiriInformationSearch18PommesXPCSearching_pSgMR);
    }

    v38 = v0[21];
    v37 = v0[22];
    v39 = v0[18];
    v40 = v0[16];
    v53 = v0[15];
    v42 = v0[13];
    v41 = v0[14];
    v44 = v0[11];
    v43 = v0[12];
    v45 = enum case for CompositionResolutionError.searchFlowExecutionError(_:);
    v46 = type metadata accessor for CompositionResolutionError();
    (*(*(v46 - 8) + 104))(v39, v45, v46);
    swift_storeEnumTagMultiPayload();
    v38(v39);
    static ExecuteResponse.complete()();
    (*(v41 + 8))(v53, v42);
LABEL_22:
    v48 = v0[17];
    v47 = v0[18];
    v49 = v0[15];

    v50 = v0[1];

    return v50();
  }

  v30 = v0[12];
  v31 = *v0[17];
  v0[28] = v31;
  v32 = *(*v30 + 272);
  v52 = (v32 + *v32);
  v33 = v32[1];
  v34 = swift_task_alloc();
  v0[29] = v34;
  *v34 = v0;
  v34[1] = SearchFlow.execute();
  v35 = v0[11];
  v36 = v0[12];

  return v52(v35, v31);
}

{
  v1 = v0[26];
  v3 = v0[21];
  v2 = v0[22];
  v4 = v0[20];
  v5 = v0[18];
  v6 = v0[16];
  v7 = v0[12];
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  *v5 = v1;
  swift_storeEnumTagMultiPayload();
  v8 = v1;
  v3(v5);
  v15 = (*v7 + 272);
  v16 = (*v15 + **v15);
  v9 = (*v15)[1];
  v10 = swift_task_alloc();
  v0[27] = v10;
  *v10 = v0;
  v10[1] = SearchFlow.execute();
  v11 = v0[26];
  v12 = v0[11];
  v13 = v0[12];

  return v16(v12, v11);
}

{
  v1 = *(*v0 + 216);
  v3 = *v0;

  return _swift_task_switch(SearchFlow.execute(), 0, 0);
}

{
  v1 = *(v0 + 184);
  v3 = *(v0 + 112);
  v2 = *(v0 + 120);
  v4 = *(v0 + 104);

  (*(v3 + 8))(v2, v4);
  v6 = *(v0 + 136);
  v5 = *(v0 + 144);
  v7 = *(v0 + 120);

  v8 = *(v0 + 8);

  return v8();
}

{
  v1 = *(*v0 + 232);
  v3 = *v0;

  return _swift_task_switch(SearchFlow.execute(), 0, 0);
}

{

  v2 = *(v0 + 136);
  v1 = *(v0 + 144);
  v3 = *(v0 + 120);

  v4 = *(v0 + 8);

  return v4();
}

{
  v32 = v0;
  v1 = *(v0 + 200);
  v2 = *(v0 + 152);

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 200);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v31 = v7;
    *v6 = 136315138;
    swift_getErrorValue();
    v9 = *(v0 + 56);
    v8 = *(v0 + 64);
    v10 = *(v0 + 72);
    v11 = Error.localizedDescription.getter();
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v31);

    *(v6 + 4) = v13;
    _os_log_impl(&dword_0, v3, v4, "#InformationSearchFlow requestInfiEntityResolution call has an error %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
  }

  else
  {
    v14 = *(v0 + 200);
  }

  v16 = *(v0 + 168);
  v15 = *(v0 + 176);
  v17 = *(v0 + 144);
  v18 = *(v0 + 128);
  v30 = *(v0 + 120);
  v20 = *(v0 + 104);
  v19 = *(v0 + 112);
  v22 = *(v0 + 88);
  v21 = *(v0 + 96);
  v23 = enum case for CompositionResolutionError.searchFlowExecutionError(_:);
  v24 = type metadata accessor for CompositionResolutionError();
  (*(*(v24 - 8) + 104))(v17, v23, v24);
  swift_storeEnumTagMultiPayload();
  v16(v17);
  static ExecuteResponse.complete()();
  (*(v19 + 8))(v30, v20);
  v26 = *(v0 + 136);
  v25 = *(v0 + 144);
  v27 = *(v0 + 120);

  v28 = *(v0 + 8);

  return v28();
}

uint64_t SearchFlow.execute(completion:)()
{
  type metadata accessor for SearchFlow(0);
  lazy protocol witness table accessor for type SearchFlow and conformance SearchFlow(&lazy protocol witness table cache variable for type SearchFlow and conformance SearchFlow, type metadata accessor for SearchFlow);
  return Flow.deferToExecuteAsync(_:)();
}

uint64_t SearchFlow.handlePommesResponse(_:)(uint64_t a1, uint64_t a2)
{
  v3[10] = a2;
  v3[11] = v2;
  v3[9] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s32SiriReferenceResolutionDataModel8RREntityVSgMd, &_s32SiriReferenceResolutionDataModel8RREntityVSgMR) - 8) + 64) + 15;
  v3[12] = swift_task_alloc();
  v5 = type metadata accessor for RREntity();
  v3[13] = v5;
  v6 = *(v5 - 8);
  v3[14] = v6;
  v7 = *(v6 + 64) + 15;
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v8 = type metadata accessor for Apple_Parsec_Siri_Context_ResultEntity();
  v3[17] = v8;
  v9 = *(v8 - 8);
  v3[18] = v9;
  v10 = *(v9 + 64) + 15;
  v3[19] = swift_task_alloc();
  v11 = type metadata accessor for SearchFlow.State(0);
  v3[20] = v11;
  v12 = *(*(v11 - 8) + 64) + 15;
  v3[21] = swift_task_alloc();

  return _swift_task_switch(SearchFlow.handlePommesResponse(_:), 0, 0);
}

uint64_t SearchFlow.handlePommesResponse(_:)()
{
  if (one-time initialization token for information != -1)
  {
    goto LABEL_42;
  }

  while (1)
  {
    v1 = type metadata accessor for Logger();
    __swift_project_value_buffer(v1, static Logger.information);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_0, v2, v3, "#InformationSearchFlow going to handlePommesResponse...", v4, 2u);
    }

    v5 = *(v0 + 80);

    if ((specialized SearchFlow.supportedOnDevice(pommesResponse:)() & 1) == 0)
    {
      v12 = *(v0 + 160);
      v8 = *(v0 + 168);
      v9 = *(v0 + 88);
      v13 = *(v0 + 72);
      v11 = &enum case for CompositionResolutionError.featureDisabled(_:);
      goto LABEL_8;
    }

    v6 = *(v0 + 80);
    if (specialized PushOffQueryFlow.isUserCanceled(pommesResponse:)())
    {
      v7 = *(v0 + 160);
      v8 = *(v0 + 168);
      v9 = *(v0 + 88);
      v10 = *(v0 + 72);
      v11 = &enum case for CompositionResolutionError.userCanceled(_:);
LABEL_8:
      v14 = *v11;
      v15 = type metadata accessor for CompositionResolutionError();
      (*(*(v15 - 8) + 104))(v8, v14, v15);
      swift_storeEnumTagMultiPayload();
      (*(*v9 + 208))(v8);
LABEL_9:
      static ExecuteResponse.complete()();
LABEL_10:
      v16 = *(v0 + 168);
      v17 = *(v0 + 152);
      v19 = *(v0 + 120);
      v18 = *(v0 + 128);
      v20 = *(v0 + 96);

      v21 = *(v0 + 8);

      return v21();
    }

    v99 = v0;
    v23 = *(v0 + 80);
    v24 = dispatch thunk of PommesResponse.experiences.getter();
    v0 = v24;
    if (!(v24 >> 62))
    {
      v25 = *(&dword_10 + (v24 & 0xFFFFFFFFFFFFFF8));
      if (!v25)
      {
        break;
      }

      goto LABEL_15;
    }

    v25 = _CocoaArrayWrapper.endIndex.getter();
    if (!v25)
    {
      break;
    }

LABEL_15:
    v26 = 0;
    v27 = v99[18];
    v28 = &_swiftEmptyArrayStorage;
    while (1)
    {
      if ((v0 & 0xC000000000000001) != 0)
      {
        v29 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v26 >= *(&dword_10 + (v0 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_37;
        }

        v29 = *(v0 + 8 * v26 + 32);
      }

      v30 = v29;
      v31 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        break;
      }

      v32 = dispatch thunk of Experience.associatedEntities.getter();

      v33 = *(v32 + 16);
      v34 = v28[2];
      v35 = v34 + v33;
      if (__OFADD__(v34, v33))
      {
        goto LABEL_38;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v35 <= v28[3] >> 1)
      {
        if (*(v32 + 16))
        {
          goto LABEL_31;
        }
      }

      else
      {
        if (v34 <= v35)
        {
          v37 = v34 + v33;
        }

        else
        {
          v37 = v34;
        }

        v28 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v37, 1, v28);
        if (*(v32 + 16))
        {
LABEL_31:
          if ((v28[3] >> 1) - v28[2] < v33)
          {
            goto LABEL_40;
          }

          v38 = v99[17];
          v39 = (*(v27 + 80) + 32) & ~*(v27 + 80);
          v40 = *(v27 + 72);
          swift_arrayInitWithCopy();

          if (v33)
          {
            v41 = v28[2];
            v42 = __OFADD__(v41, v33);
            v43 = v41 + v33;
            if (v42)
            {
              goto LABEL_41;
            }

            v28[2] = v43;
          }

          goto LABEL_17;
        }
      }

      if (v33)
      {
        goto LABEL_39;
      }

LABEL_17:
      ++v26;
      if (v31 == v25)
      {
        goto LABEL_45;
      }
    }

    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    swift_once();
  }

  v28 = &_swiftEmptyArrayStorage;
LABEL_45:

  v44 = v28[2];
  if (v44)
  {
    v45 = v99[18];
    v46 = v99[14];
    v97 = *(v45 + 16);
    v47 = v28 + ((*(v45 + 80) + 32) & ~*(v45 + 80));
    v95 = (v45 + 8);
    v96 = *(v45 + 72);
    v48 = (v46 + 48);
    v93 = v46;
    v94 = (v46 + 32);
    v49 = &_swiftEmptyArrayStorage;
    do
    {
      v50 = v49;
      v51 = v99[19];
      v52 = v99[17];
      v53 = v99[12];
      v54 = v99[13];
      v97(v51, v47, v52);
      Apple_Parsec_Siri_Context_ResultEntity.toRREntity()(v53);
      (*v95)(v51, v52);
      if ((*v48)(v53, 1, v54) == 1)
      {
        outlined destroy of Any?(v99[12], &_s32SiriReferenceResolutionDataModel8RREntityVSgMd, &_s32SiriReferenceResolutionDataModel8RREntityVSgMR);
        v49 = v50;
      }

      else
      {
        v55 = *v94;
        (*v94)(v99[16], v99[12], v99[13]);
        v49 = v50;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v49 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v50[2] + 1, 1, v50);
        }

        v57 = v49[2];
        v56 = v49[3];
        if (v57 >= v56 >> 1)
        {
          v49 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v56 > 1, v57 + 1, 1, v49);
        }

        v58 = v99[16];
        v59 = v99[13];
        v49[2] = v57 + 1;
        v55(v49 + ((*(v93 + 80) + 32) & ~*(v93 + 80)) + *(v93 + 72) * v57, v58, v59);
      }

      v47 += v96;
      --v44;
    }

    while (v44);
  }

  else
  {

    v49 = &_swiftEmptyArrayStorage;
  }

  v0 = v99;
  v99[22] = v49;

  v60 = Logger.logObject.getter();
  v61 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v60, v61))
  {
    v62 = swift_slowAlloc();
    *v62 = 134217984;
    *(v62 + 4) = v49[2];

    _os_log_impl(&dword_0, v60, v61, "#InformationSearchFlow extracted %ld rrEntities", v62, 0xCu);
  }

  else
  {
  }

  v63 = v99[10];
  *(v99 + 1) = 0u;
  *(v99 + 2) = 0u;
  v99[6] = 0;
  static CurareDonation.donateCurareResponseUsedMarker(from:into:)();
  outlined destroy of Any?((v99 + 2), &_s21SiriInformationSearch23CurareInteractionStream_pSgMd, &_s21SiriInformationSearch23CurareInteractionStream_pSgMR);
  v64 = dispatch thunk of PommesResponse.primaryPluginIdentifier()();
  if (v65)
  {
    v99[7] = v64;
    v99[8] = v65;
    v66 = swift_task_alloc();
    *(v66 + 16) = v99 + 7;
    v67 = specialized Sequence.contains(where:)(_sSTsSQ7ElementRpzrlE8containsySbABFSbABXEfU_SaySSG_TG5TA_0, v66, &outlined read-only object #0 of one-time initialization function for defaultPegasusBundleIdentifiers);

    if ((v67 & 1) == 0)
    {
      v73 = v49[2];
      if (v73 >= 2)
      {
        v74 = v99[10];
        v75 = v99[11];
        v76 = v99[9];

        SearchFlow.handleClientDrivenExperience(pommesResponse:)(v74);
        goto LABEL_10;
      }

      goto LABEL_69;
    }
  }

  v68 = v99[10];
  if ((dispatch thunk of PommesResponse.listenAfterSpeaking.getter() & 1) == 0)
  {
    v73 = v49[2];
LABEL_69:
    v78 = v99[20];
    v77 = v99[21];
    if (v73 == 1)
    {
      v81 = v99[14];
      v98 = v99[15];
      v82 = v99[13];
      v83 = v99[11];
      v84 = *(v81 + 80);
      v85 = *(v81 + 16);
      v85();
      v86 = *(v83 + OBJC_IVAR____TtC21InformationFlowPlugin10SearchFlow_rrClient);
      v87 = dispatch thunk of ReferenceResolutionClient.siriMentioned(entities:)();
      v89 = v88;

      outlined consume of Result<(), Error>(v87, v89 & 1);
      (v85)(v77, v98, v82);
      swift_storeEnumTagMultiPayload();
      (*(*v83 + 208))(v77);
      (*(v81 + 8))(v98, v82);
    }

    else
    {
      v79 = v99[11];
      if (v73)
      {

        v80 = &enum case for CompositionResolutionError.invalidState(_:);
      }

      else
      {

        v80 = &enum case for CompositionResolutionError.noSearchResult(_:);
      }

      v90 = *v80;
      v91 = type metadata accessor for CompositionResolutionError();
      (*(*(v91 - 8) + 104))(v77, v90, v91);
      swift_storeEnumTagMultiPayload();
      (*(*v79 + 208))(v77);
    }

    v92 = v99[9];
    goto LABEL_9;
  }

  v69 = swift_task_alloc();
  v99[23] = v69;
  *v69 = v99;
  v69[1] = SearchFlow.handlePommesResponse(_:);
  v70 = v99[10];
  v71 = v99[11];
  v72 = v99[9];

  return SearchFlow.handleServerDrivenExperience(pommesResponse:rrEntities:)(v72, v70, v49);
}

{
  v1 = *v0;
  v2 = *(*v0 + 184);
  v3 = *(*v0 + 176);
  v11 = *v0;

  v4 = v1[21];
  v5 = v1[19];
  v6 = v1[16];
  v7 = v1[15];
  v8 = v1[12];

  v9 = *(v11 + 8);

  return v9();
}

uint64_t Apple_Parsec_Siri_Context_ResultEntity.toRREntity()@<X0>(uint64_t a1@<X8>)
{
  v46 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s32SiriReferenceResolutionDataModel15GroupIdentifierVSgMd, &_s32SiriReferenceResolutionDataModel15GroupIdentifierVSgMR);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v45 = v36 - v3;
  v44 = type metadata accessor for Typespb_Domain();
  v42 = *(v44 - 8);
  v4 = *(v42 + 64);
  __chkstk_darwin(v44);
  v6 = v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for GroupIdentifier();
  v43 = *(v7 - 8);
  v8 = *(v43 + 64);
  __chkstk_darwin(v7);
  v10 = v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for BinaryDecodingOptions();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v13 = type metadata accessor for Siri_Nlu_External_UsoGraph();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  Apple_Parsec_Siri_Context_ResultEntity.usoEntity.getter();
  v49 = 0;
  v47 = 0u;
  v48 = 0u;
  BinaryDecodingOptions.init()();
  lazy protocol witness table accessor for type SearchFlow and conformance SearchFlow(&lazy protocol witness table cache variable for type Siri_Nlu_External_UsoGraph and conformance Siri_Nlu_External_UsoGraph, &type metadata accessor for Siri_Nlu_External_UsoGraph);
  Message.init(serializedData:extensions:partial:options:)();
  v40 = v13;
  v41 = v14;
  v18 = v44;
  v19 = v45;
  v39 = static UsoGraphProtoReader.fromSwiftProtobuf(protobufGraph:vocabManager:)();
  v28 = static UsoConversionUtils.extractFirstEntityFromGraph(graph:)();
  v38 = v28;
  if (v28)
  {
    v37 = v17;
    Apple_Parsec_Siri_Context_ResultEntity.groupID.getter();
    Apple_Parsec_Siri_Context_ResultEntity.groupSequenceNumber.getter();
    GroupIdentifier.init(id:seq:)();
    v29 = Apple_Parsec_Siri_Context_ResultEntity.id.getter();
    v36[1] = v30;
    v36[2] = v29;
    *&v47 = 0;
    *(&v47 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(20);
    v31._object = 0x80000000000BEBF0;
    v31._countAndFlagsBits = 0xD000000000000012;
    String.append(_:)(v31);
    Apple_Parsec_Siri_Context_ResultEntity.domain.getter();
    _print_unlocked<A, B>(_:_:)();
    (*(v42 + 8))(v6, v18);
    v32 = v43;
    v33 = v10;
    (*(v43 + 16))(v19, v10, v7);
    (*(v32 + 56))(v19, 0, 1, v7);
    v20 = v46;
    RREntity.init(id:appBundleId:usoEntity:dataType:data:group:)();

    (*(v32 + 8))(v33, v7);
    (*(v41 + 8))(v37, v40);
    v25 = 0;
  }

  else
  {
    v34 = type metadata accessor for CompositionResolutionError();
    lazy protocol witness table accessor for type SearchFlow and conformance SearchFlow(&lazy protocol witness table cache variable for type CompositionResolutionError and conformance CompositionResolutionError, &type metadata accessor for CompositionResolutionError);
    swift_allocError();
    (*(*(v34 - 8) + 104))(v35, enum case for CompositionResolutionError.usoError(_:), v34);
    swift_willThrow();

    (*(v41 + 8))(v17, v40);
    v20 = v46;
    if (one-time initialization token for information != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    __swift_project_value_buffer(v21, static Logger.information);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_0, v22, v23, "#InformationSearchFlow failed to convert ContextResultEntity to RREntity", v24, 2u);
    }

    v25 = 1;
  }

  v26 = type metadata accessor for RREntity();
  return (*(*(v26 - 8) + 56))(v20, v25, 1, v26);
}

uint64_t SearchFlow.buildPommesSearchRequest(parse:)(uint64_t a1)
{
  v163 = a1;
  v2 = type metadata accessor for DeviceRestrictions();
  v159 = *(v2 - 8);
  v160 = v2;
  v3 = *(v159 + 64);
  __chkstk_darwin(v2);
  v158 = v125 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v157 = type metadata accessor for InputOrigin();
  v166 = *(v157 - 8);
  v5 = v166[8];
  v6 = __chkstk_darwin(v157);
  v144 = v125 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v156 = v125 - v9;
  v10 = __chkstk_darwin(v8);
  v155 = v125 - v11;
  __chkstk_darwin(v10);
  v164 = v125 - v12;
  v154 = type metadata accessor for ResponseMode();
  v153 = *(v154 - 8);
  v13 = *(v153 + 64);
  __chkstk_darwin(v154);
  v152 = v125 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities16AudioDestinationVSgMd, &_s13SiriUtilities16AudioDestinationVSgMR);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v151 = v125 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11AudioSourceVSgMd, &_s13SiriUtilities11AudioSourceVSgMR);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v150 = v125 - v20;
  v21 = type metadata accessor for MultiUserState();
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21 - 8);
  v149 = v125 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v147 = type metadata accessor for ParseStateXPC();
  v146 = *(v147 - 8);
  v24 = *(v146 + 64);
  __chkstk_darwin(v147);
  v148 = (v125 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v168 = *(v26 - 8);
  v27 = *(v168 + 64);
  v28 = __chkstk_darwin(v26);
  v167 = v125 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v145 = v125 - v30;
  v165 = type metadata accessor for Siri_Nlu_External_UserParse();
  v162 = *(v165 - 8);
  v31 = *(v162 + 64);
  v32 = __chkstk_darwin(v165);
  v161 = v125 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v35 = v125 - v34;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  v37 = *(*(v36 - 8) + 64);
  __chkstk_darwin(v36 - 8);
  v39 = v125 - v38;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
  v41 = *(*(v40 - 8) + 64);
  __chkstk_darwin(v40 - 8);
  v43 = v125 - v42;
  v44 = type metadata accessor for PommesContext();
  v45 = *(v44 - 8);
  v46 = *(v45 + 64);
  v47 = __chkstk_darwin(v44);
  v49 = v125 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = (*(*v1 + 176))(v47);
  if (v50)
  {
    v51 = v50;
  }

  else
  {
    type metadata accessor for SiriEnvironment();
    static SiriEnvironment.default.getter();
    v51 = SiriEnvironment.currentRequest.getter();
  }

  (*(*v1 + 152))();
  v52 = type metadata accessor for NLContextUpdate();
  if ((*(*(v52 - 8) + 48))(v39, 1, v52))
  {
    outlined destroy of Any?(v39, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
    (*(v45 + 56))(v43, 1, 1, v44);
LABEL_7:
    outlined destroy of Any?(v43, &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
    if (one-time initialization token for information != -1)
    {
      swift_once();
    }

    v53 = type metadata accessor for Logger();
    __swift_project_value_buffer(v53, static Logger.information);
    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      *v56 = 0;
      _os_log_impl(&dword_0, v54, v55, "#InformationSearchFlow PommesContext is not available, cannot construct PommesSearchRequestXPC", v56, 2u);
    }

    return 0;
  }

  NLContextUpdate.pommesContext.getter();
  outlined destroy of Any?(v39, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  if ((*(v45 + 48))(v43, 1, v44) == 1)
  {
    goto LABEL_7;
  }

  (*(v45 + 32))(v49, v43, v44);
  v58 = PommesContext.domain.getter();
  if (!v59)
  {
    v81 = v49;
    if (one-time initialization token for information != -1)
    {
      swift_once();
    }

    v82 = type metadata accessor for Logger();
    __swift_project_value_buffer(v82, static Logger.information);
    v83 = Logger.logObject.getter();
    v84 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v83, v84))
    {
      goto LABEL_40;
    }

    v85 = swift_slowAlloc();
    *v85 = 0;
    v86 = "#InformationSearchFlow domain is not available, cannot construct PommesSearchRequestXPC";
    goto LABEL_39;
  }

  v60 = v58;
  v61 = v59;
  v62 = CurrentRequest.executionRequestId.getter();
  if (!v63)
  {
    v81 = v49;

    if (one-time initialization token for information != -1)
    {
      swift_once();
    }

    v87 = type metadata accessor for Logger();
    __swift_project_value_buffer(v87, static Logger.information);
    v83 = Logger.logObject.getter();
    v84 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v83, v84))
    {
      goto LABEL_40;
    }

LABEL_38:
    v85 = swift_slowAlloc();
    *v85 = 0;
    v86 = "#InformationSearchFlow utterance is not available, cannot construct PommesSearchRequestXPC";
LABEL_39:
    _os_log_impl(&dword_0, v83, v84, v86, v85, 2u);

LABEL_40:

    (*(v45 + 8))(v81, v44);
    return 0;
  }

  v64 = v63;
  v138 = v62;
  v65 = CurrentRequest.resultCandidateId.getter();
  if (!v66)
  {
    v81 = v49;

    if (one-time initialization token for information != -1)
    {
      swift_once();
    }

    v88 = type metadata accessor for Logger();
    __swift_project_value_buffer(v88, static Logger.information);
    v83 = Logger.logObject.getter();
    v84 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v83, v84))
    {
      goto LABEL_40;
    }

    v85 = swift_slowAlloc();
    *v85 = 0;
    v86 = "#InformationSearchFlow resultCandidateId is not available, cannot construct PommesSearchRequestXPC";
    goto LABEL_39;
  }

  v134 = v65;
  v137 = v66;
  v67 = CurrentRequest.utterance.getter();
  if (!v68)
  {
    v81 = v49;

    if (one-time initialization token for information != -1)
    {
      swift_once();
    }

    v89 = type metadata accessor for Logger();
    __swift_project_value_buffer(v89, static Logger.information);
    v83 = Logger.logObject.getter();
    v84 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v83, v84))
    {
      goto LABEL_40;
    }

    goto LABEL_38;
  }

  v129 = v68;
  v130 = v67;
  v131 = v60;
  v132 = v64;
  v136 = v49;
  v128 = v45;
  USOParse.userParse.getter();
  v69 = Siri_Nlu_External_UserParse.userDialogActs.getter();
  v70 = *(v162 + 8);
  v127 = v162 + 8;
  v126 = v70;
  v70(v35, v165);
  v71 = *(v69 + 16);
  v133 = v44;
  v135 = v51;
  if (v71)
  {
    v125[1] = v61;
    v173 = &_swiftEmptyArrayStorage;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v71, 0);
    v72 = v173;
    v143 = *(v168 + 16);
    v73 = (*(v168 + 80) + 32) & ~*(v168 + 80);
    v125[0] = v69;
    v142 = v73;
    v74 = v69 + v73;
    v141 = *(v168 + 72);
    v140 = (v168 + 8);
    v168 += 16;
    v139 = (v168 + 16);
    v75 = v145;
    do
    {
      v76 = v167;
      v77 = v143(v167, v74, v26);
      __chkstk_darwin(v77);
      lazy protocol witness table accessor for type SearchFlow and conformance SearchFlow(&lazy protocol witness table cache variable for type Siri_Nlu_External_UserDialogAct and conformance Siri_Nlu_External_UserDialogAct, &type metadata accessor for Siri_Nlu_External_UserDialogAct);
      static Message.with(_:)();
      (*v140)(v76, v26);
      v173 = v72;
      v79 = v72[2];
      v78 = v72[3];
      if (v79 >= v78 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v78 > 1, v79 + 1, 1);
        v72 = v173;
      }

      v72[2] = v79 + 1;
      v80 = v141;
      (*v139)(v72 + v142 + v79 * v141, v75, v26);
      v74 += v80;
      --v71;
    }

    while (v71);
  }

  __chkstk_darwin(v90);
  lazy protocol witness table accessor for type SearchFlow and conformance SearchFlow(&lazy protocol witness table cache variable for type Siri_Nlu_External_UserParse and conformance Siri_Nlu_External_UserParse, &type metadata accessor for Siri_Nlu_External_UserParse);
  v91 = v161;
  v92 = v165;
  static Message.with(_:)();

  CurrentRequest.currentDeviceAssistantId.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D23_Nlu_External_UserParseVGMd, &_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D23_Nlu_External_UserParseVGMR);
  v93 = v162;
  v94 = *(v162 + 72);
  v95 = (*(v162 + 80) + 32) & ~*(v162 + 80);
  v96 = swift_allocObject();
  *(v96 + 16) = xmmword_B8690;
  (*(v93 + 16))(v96 + v95, v91, v92);
  v97 = v148;
  v98 = v137;
  *v148 = v134;
  v97[1] = v98;
  v97[2] = v96;
  *(v97 + 24) = 1;
  (*(v146 + 104))(v97, enum case for ParseStateXPC.rc(_:), v147);
  v99 = type metadata accessor for PommesSearchRequestXPCBuilder();
  v100 = *(v99 + 48);
  v101 = *(v99 + 52);
  swift_allocObject();
  PommesSearchRequestXPCBuilder.init(domain:assistantId:requestId:parseState:utterance:)();
  PommesContext.listenAfterSpeaking.getter();
  dispatch thunk of PommesSearchRequestXPCBuilder.withListenAfterSpeaking(_:)();

  v102 = v149;
  CurrentRequest.multiUserState.getter();
  MultiUserState.isEnabled.getter();
  outlined destroy of SearchFlow.State(v102, &type metadata accessor for MultiUserState);
  dispatch thunk of PommesSearchRequestXPCBuilder.withIsMultiUser(_:)();

  v103 = v150;
  CurrentRequest.audioSource.getter();
  v104 = type metadata accessor for AudioSource();
  v105 = *(v104 - 8);
  if ((*(v105 + 48))(v103, 1, v104) == 1)
  {
    outlined destroy of Any?(v103, &_s13SiriUtilities11AudioSourceVSgMd, &_s13SiriUtilities11AudioSourceVSgMR);
  }

  else
  {
    AudioSource.aceValue.getter();
    (*(v105 + 8))(v103, v104);
  }

  v106 = v157;
  v107 = v151;
  dispatch thunk of PommesSearchRequestXPCBuilder.withAudioSource(_:)();

  CurrentRequest.audioDestination.getter();
  v108 = type metadata accessor for AudioDestination();
  v109 = *(v108 - 8);
  if ((*(v109 + 48))(v107, 1, v108) == 1)
  {
    outlined destroy of Any?(v107, &_s13SiriUtilities16AudioDestinationVSgMd, &_s13SiriUtilities16AudioDestinationVSgMR);
  }

  else
  {
    AudioDestination.aceValue.getter();
    (*(v109 + 8))(v107, v108);
  }

  dispatch thunk of PommesSearchRequestXPCBuilder.withAudioDestination(_:)();

  v110 = v152;
  CurrentRequest.responseMode.getter();
  ResponseMode.aceValue.getter();
  (*(v153 + 8))(v110, v154);
  dispatch thunk of PommesSearchRequestXPCBuilder.withResponseMode(_:)();

  static Device.current.getter();
  __swift_project_boxed_opaque_existential_1(&v173, v174);
  dispatch thunk of DeviceState.isEyesFree.getter();
  dispatch thunk of PommesSearchRequestXPCBuilder.withIsEyesFree(_:)();

  __swift_destroy_boxed_opaque_existential_0Tm(&v173);
  static Device.current.getter();
  __swift_project_boxed_opaque_existential_1(&v173, v174);
  dispatch thunk of DeviceState.isVoiceTriggerEnabled.getter();
  dispatch thunk of PommesSearchRequestXPCBuilder.withIsVoiceTriggerEnabled(_:)();

  __swift_destroy_boxed_opaque_existential_0Tm(&v173);
  static Device.current.getter();
  __swift_project_boxed_opaque_existential_1(&v173, v174);
  dispatch thunk of DeviceState.isTextToSpeechEnabled.getter();
  v168 = dispatch thunk of PommesSearchRequestXPCBuilder.withIsTextToSpeechEnabled(_:)();

  __swift_destroy_boxed_opaque_existential_0Tm(&v173);
  static Device.current.getter();
  __swift_project_boxed_opaque_existential_1(&v173, v174);
  dispatch thunk of DeviceState.inputOrigin.getter();
  v111 = v166[13];
  v112 = v155;
  v111(v155, enum case for InputOrigin.clientGenerated(_:), v106);
  lazy protocol witness table accessor for type SearchFlow and conformance SearchFlow(&lazy protocol witness table cache variable for type InputOrigin and conformance InputOrigin, &type metadata accessor for InputOrigin);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v171 == v169 && v172 == v170)
  {
    v113 = 1;
  }

  else
  {
    v113 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v115 = v166 + 1;
  v114 = v166[1];
  v114(v112, v106);
  v166 = v115;
  v114(v164, v106);

  __swift_destroy_boxed_opaque_existential_0Tm(&v173);
  if (v113)
  {
    v116 = v133;
  }

  else
  {
    static Device.current.getter();
    __swift_project_boxed_opaque_existential_1(&v173, v174);
    dispatch thunk of DeviceState.inputOrigin.getter();
    v117 = v144;
    v111(v144, enum case for InputOrigin.triggerlessFollowup(_:), v106);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    if (v171 != v169 || v172 != v170)
    {
      _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    v116 = v133;
    v114(v117, v106);
    v114(v156, v106);

    __swift_destroy_boxed_opaque_existential_0Tm(&v173);
  }

  dispatch thunk of PommesSearchRequestXPCBuilder.withIsTriggerlessFollowup(_:)();

  type metadata accessor for SiriEnvironment();
  static SiriEnvironment.default.getter();
  SiriEnvironment.currentDevice.getter();

  v118 = v158;
  dispatch thunk of CurrentDevice.restrictions.getter();

  v119 = DeviceRestrictions.aceSet.getter();
  (*(v159 + 8))(v118, v160);
  v120 = *(v119 + 16);
  if (!v120)
  {
    goto LABEL_60;
  }

  v121 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSS_Tt1g5(*(v119 + 16), 0);
  v122 = specialized Sequence._copySequenceContents(initializing:)(&v173, v121 + 4, v120, v119);
  outlined consume of Set<String>.Iterator._Variant();
  if (v122 != v120)
  {
    __break(1u);
LABEL_60:
  }

  v123 = v128;
  dispatch thunk of PommesSearchRequestXPCBuilder.withDeviceRestrictions(_:)();

  v124 = dispatch thunk of PommesSearchRequestXPCBuilder.build()();

  v126(v161, v165);
  (*(v123 + 8))(v136, v116);
  return v124;
}

uint64_t closure #1 in closure #1 in SearchFlow.buildPommesSearchRequest(parse:)()
{
  v0 = type metadata accessor for Siri_Nlu_External_DelegatedUserDialogAct();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v0);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v11 - v6;
  v8 = type metadata accessor for Siri_Nlu_External_UserStatedTask();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  Siri_Nlu_External_UserDialogAct.userStatedTask.getter();
  Siri_Nlu_External_UserDialogAct.userStatedTask.setter();
  Siri_Nlu_External_DelegatedUserDialogAct.init()();
  static PommesSearchRequest.PommesParserId.getter();
  Siri_Nlu_External_DelegatedUserDialogAct.externalParserID.setter();
  (*(v1 + 16))(v5, v7, v0);
  Siri_Nlu_External_UserDialogAct.delegated.setter();
  return (*(v1 + 8))(v7, v0);
}

uint64_t closure #2 in SearchFlow.buildPommesSearchRequest(parse:)()
{
  v0 = type metadata accessor for Siri_Nlu_External_Parser();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v2 = type metadata accessor for Siri_Nlu_External_UserParse();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);

  Siri_Nlu_External_UserParse.userDialogActs.setter();
  USOParse.userParse.getter();
  Siri_Nlu_External_UserParse.parser.getter();
  (*(v3 + 8))(v6, v2);
  Siri_Nlu_External_UserParse.parser.setter();
  Siri_Nlu_External_UserParse.probability.setter();
  return Siri_Nlu_External_UserParse.comparableProbability.setter();
}

uint64_t SearchFlow.handleClientDrivenExperience(pommesResponse:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for SearchFlow.State(0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = &v19[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19[0] = v1;
  type metadata accessor for SearchFlow(0);
  lazy protocol witness table accessor for type SearchFlow and conformance SearchFlow(&lazy protocol witness table cache variable for type SearchFlow and conformance SearchFlow, type metadata accessor for SearchFlow);
  v8 = CompositionSearchFlow.findFlowForPommesResponse(_:)();
  if (v8)
  {
    v9 = v8;
    v19[3] = type metadata accessor for AnyFlow();
    v19[4] = &protocol witness table for AnyFlow;
    v19[0] = v9;
    v10 = *(*v1 + 304);

    v10(a1, v19);

    return __swift_destroy_boxed_opaque_existential_0Tm(v19);
  }

  else
  {
    if (one-time initialization token for information != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    __swift_project_value_buffer(v12, static Logger.information);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_0, v13, v14, "#InformationSearchFlow failed to render a client-driven experience", v15, 2u);
    }

    v16 = enum case for CompositionResolutionError.searchFlowExecutionError(_:);
    v17 = type metadata accessor for CompositionResolutionError();
    (*(*(v17 - 8) + 104))(v7, v16, v17);
    swift_storeEnumTagMultiPayload();
    (*(*v2 + 208))(v7);
    return static ExecuteResponse.complete()();
  }
}

uint64_t SearchFlow.handleClientDrivenExperience(pommesResponse:renderFlow:)@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v52 = a3;
  v5 = type metadata accessor for Date();
  v47 = *(v5 - 8);
  v48 = v5;
  v6 = *(v47 + 64);
  __chkstk_darwin(v5);
  v46 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = type metadata accessor for SearchFlow.State(0);
  v8 = *(*(v49 - 8) + 64);
  __chkstk_darwin(v49);
  v50 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Parse();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = (&v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = type metadata accessor for Input();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = a2[3];
  v20 = a2[4];
  v45 = a2;
  __swift_project_boxed_opaque_existential_1(a2, v21);
  *v14 = a1;
  (*(v11 + 104))(v14, enum case for Parse.pommesResponse(_:), v10);
  v22 = a1;
  Input.init(parse:)();
  LOBYTE(v14) = dispatch thunk of Flow.on(input:)();
  (*(v16 + 8))(v19, v15);
  if (v14)
  {
    if (one-time initialization token for information != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    __swift_project_value_buffer(v23, static Logger.information);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_0, v24, v25, "#InformationSearchFlow pushing render component flow for client-driven experience", v26, 2u);
    }

    v27 = v50;
    swift_storeEnumTagMultiPayload();
    (*(*v51 + 208))(v27);
    v28 = v45[4];
    __swift_project_boxed_opaque_existential_1(v45, v45[3]);
    return static ExecuteResponse.ongoing<A>(next:)();
  }

  else
  {
    if (one-time initialization token for information != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    __swift_project_value_buffer(v30, static Logger.information);
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_0, v31, v32, "#InformationSearchFlow render flow refused input, returning error flow", v33, 2u);
    }

    v34 = enum case for CompositionResolutionError.searchFlowExecutionError(_:);
    v35 = type metadata accessor for CompositionResolutionError();
    v36 = v50;
    (*(*(v35 - 8) + 104))(v50, v34, v35);
    swift_storeEnumTagMultiPayload();
    v37 = v51;
    (*(*v51 + 208))(v36);
    v53 = v37;
    type metadata accessor for PerformanceUtil();
    v38 = static PerformanceUtil.shared.getter();
    __chkstk_darwin(v38);
    v41 = &v53;
    v39 = v46;
    Date.init()();
    v43 = v40;
    v44 = type metadata accessor for ExecuteResponse();
    v42 = partial apply for specialized closure #1 in FlowTrampolining.makeResponse(forErrorMessage:);
    LOBYTE(v41) = 2;
    v40[0] = "makeResponse(forErrorMessage:)";
    v40[1] = 30;
    dispatch thunk of PerformanceUtil.recordMeasurement<A>(for:logMeasurement:date:fileId:lineNumber:callingFunction:block:)();

    return (*(v47 + 8))(v39, v48);
  }
}

uint64_t SearchFlow.handleServerDrivenExperience(pommesResponse:rrEntities:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[14] = a3;
  v4[15] = v3;
  v4[12] = a1;
  v4[13] = a2;
  v5 = type metadata accessor for SearchFlow.State(0);
  v4[16] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v4[17] = swift_task_alloc();
  v7 = type metadata accessor for PerformanceUtil.Ticket();
  v4[18] = v7;
  v8 = *(v7 - 8);
  v4[19] = v8;
  v9 = *(v8 + 64) + 15;
  v4[20] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI50Apple_Parsec_Siri_V2alpha_DirectExecutionComponentVSgMd, &_s10PegasusAPI50Apple_Parsec_Siri_V2alpha_DirectExecutionComponentVSgMR) - 8) + 64) + 15;
  v4[21] = swift_task_alloc();
  v11 = type metadata accessor for Date();
  v4[22] = v11;
  v12 = *(v11 - 8);
  v4[23] = v12;
  v13 = *(v12 + 64) + 15;
  v4[24] = swift_task_alloc();
  v14 = type metadata accessor for PegasusExperience();
  v4[25] = v14;
  v15 = *(*(v14 - 8) + 64) + 15;
  v4[26] = swift_task_alloc();
  v4[27] = swift_task_alloc();

  return _swift_task_switch(SearchFlow.handleServerDrivenExperience(pommesResponse:rrEntities:), 0, 0);
}

uint64_t SearchFlow.handleServerDrivenExperience(pommesResponse:rrEntities:)()
{
  v1 = v0[27];
  v3 = v0[24];
  v2 = v0[25];
  v4 = v0[23];
  v47 = v0[22];
  v48 = v0[26];
  v5 = v0[15];
  v6 = v0[13];
  v0[28] = type metadata accessor for PerformanceUtil();
  static PerformanceUtil.shared.getter();
  v7 = swift_task_alloc();
  *(v7 + 16) = v5;
  *(v7 + 24) = v6;
  Date.init()();
  dispatch thunk of PerformanceUtil.recordMeasurement<A>(for:logMeasurement:date:fileId:lineNumber:callingFunction:block:)();

  (*(v4 + 8))(v3, v47);

  outlined init with copy of SearchFlow.State(v1, v48, type metadata accessor for PegasusExperience);
  if (!swift_getEnumCaseMultiPayload())
  {
    v28 = v0[26];
    v29 = v0[24];
    v30 = v0[20];
    v31 = v0[21];
    v32 = v0[15];
    v33 = v0[13];
    v0[29] = *v28;
    v0[30] = v28[1];
    v0[31] = v28[2];
    v0[32] = v28[3];
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10PegasusAPI48Apple_Parsec_Siri_V2alpha_LayoutSnippetComponentVG_SayAA0c1_d1_e1_f15_RenderedDialogI0VGSayAA0c1_d1_e1_f11_ButtonViewI0VGSayAA0c1_d1_e1_f14_DelayedActionI0VGAA0c1_d1_e1_f16_DirectExecutionI0VSgSayAA0c1_d1_e1_f6_SayItI0VGSayAA0c1_d1_e1_f19_DisambiguationListI0VGSayAA0c1_d1_e1_f13_DomainObjectI0VG0E17InformationSearch19PommesRenderOptionsCSgtMd, &_sSay10PegasusAPI48Apple_Parsec_Siri_V2alpha_LayoutSnippetComponentVG_SayAA0c1_d1_e1_f15_RenderedDialogI0VGSayAA0c1_d1_e1_f11_ButtonViewI0VGSayAA0c1_d1_e1_f14_DelayedActionI0VGAA0c1_d1_e1_f16_DirectExecutionI0VSgSayAA0c1_d1_e1_f6_SayItI0VGSayAA0c1_d1_e1_f19_DisambiguationListI0VGSayAA0c1_d1_e1_f13_DomainObjectI0VG0E17InformationSearch19PommesRenderOptionsCSgtMR);
    v35 = v34[24];
    v0[33] = *(v28 + v34[28]);
    v0[34] = *(v28 + v34[32]);
    v0[35] = *(v28 + v34[36]);
    v0[36] = *(v28 + v34[40]);
    outlined init with take of Apple_Parsec_Siri_V2alpha_DirectExecutionComponent?(v28 + v35, v31);
    Date.init()();
    PerformanceUtil.Ticket.init(description:startDate:fileId:lineNumber:callingFunction:)();
    v36 = *(v32 + OBJC_IVAR____TtC21InformationFlowPlugin10SearchFlow_renderComponentFlowFactory);
    static SiriKitEventSender.current.getter();
    type metadata accessor for PegasusFlowEventLogger();
    v37 = swift_allocObject();
    v0[37] = v37;
    *(v37 + 16) = v33;
    outlined init with copy of OutputPublisherAsync((v0 + 2), v37 + 24);
    v38 = v33;
    v39 = PommesResponse.metadataDomainName.getter();
    v41 = v40;
    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
    *(v37 + 64) = v39;
    *(v37 + 72) = v41;
    *(v37 + 80) = 1;
    static AceService.currentAsync.getter();
    v42 = *(*v36 + 112);
    v46 = v42 + *v42;
    v43 = v42[1];
    v44 = swift_task_alloc();
    v0[38] = v44;
    *v44 = v0;
    v44[1] = SearchFlow.handleServerDrivenExperience(pommesResponse:rrEntities:);
    v45 = v0[21];
    v50 = v0[14];

    __asm { BRAA            X8, X16 }
  }

  if (one-time initialization token for information != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static Logger.information);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_0, v9, v10, "#InformationSearchFlow failed to render a server-driven experience", v11, 2u);
  }

  v13 = v0[26];
  v12 = v0[27];
  v15 = v0[16];
  v14 = v0[17];
  v16 = v0[15];
  v17 = v0[12];

  v18 = enum case for CompositionResolutionError.searchFlowExecutionError(_:);
  v19 = type metadata accessor for CompositionResolutionError();
  (*(*(v19 - 8) + 104))(v14, v18, v19);
  swift_storeEnumTagMultiPayload();
  (*(*v16 + 208))(v14);
  static ExecuteResponse.complete()();
  outlined destroy of SearchFlow.State(v12, type metadata accessor for PegasusExperience);
  outlined destroy of SearchFlow.State(v13, type metadata accessor for PegasusExperience);
  v21 = v0[26];
  v20 = v0[27];
  v22 = v0[24];
  v24 = v0[20];
  v23 = v0[21];
  v25 = v0[17];

  v26 = v0[1];

  return v26();
}

{
  v1 = v0[28];
  v2 = v0[20];
  static PerformanceUtil.shared.getter();
  dispatch thunk of PerformanceUtil.recordMeasurement(for:logMeasurement:)();

  if (one-time initialization token for information != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Logger.information);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_0, v4, v5, "#InformationSearchFlow pushing render component flow for server-driven experience", v6, 2u);
  }

  v7 = v0[39];
  v8 = v0[36];
  v24 = v0[21];
  v25 = v0[27];
  v23 = v0[20];
  v10 = v0[18];
  v9 = v0[19];
  v12 = v0[16];
  v11 = v0[17];
  v13 = v0[15];
  v14 = v0[12];

  swift_storeEnumTagMultiPayload();
  (*(*v13 + 208))(v11);
  static ExecuteResponse.ongoing(next:)();

  (*(v9 + 8))(v23, v10);
  outlined destroy of Any?(v24, &_s10PegasusAPI50Apple_Parsec_Siri_V2alpha_DirectExecutionComponentVSgMd, &_s10PegasusAPI50Apple_Parsec_Siri_V2alpha_DirectExecutionComponentVSgMR);
  outlined destroy of SearchFlow.State(v25, type metadata accessor for PegasusExperience);
  v16 = v0[26];
  v15 = v0[27];
  v17 = v0[24];
  v19 = v0[20];
  v18 = v0[21];
  v20 = v0[17];

  v21 = v0[1];

  return v21();
}

uint64_t SearchFlow.handleServerDrivenExperience(pommesResponse:rrEntities:)(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 304);
  v4 = *(*v1 + 296);
  v5 = *(*v1 + 280);
  v6 = *(*v1 + 272);
  v7 = *(*v1 + 264);
  v8 = *(*v1 + 256);
  v9 = *(*v1 + 248);
  v10 = *(*v1 + 240);
  v11 = *(*v1 + 232);
  v13 = *v1;
  *(v2 + 312) = a1;

  __swift_destroy_boxed_opaque_existential_0Tm((v2 + 56));

  return _swift_task_switch(SearchFlow.handleServerDrivenExperience(pommesResponse:rrEntities:), 0, 0);
}

uint64_t SearchFlow.deinit()
{
  outlined destroy of Any?(v0 + OBJC_IVAR____TtC21InformationFlowPlugin10SearchFlow_nlContextUpdate, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  v1 = *(v0 + OBJC_IVAR____TtC21InformationFlowPlugin10SearchFlow_targetedRequest);

  v2 = *(v0 + OBJC_IVAR____TtC21InformationFlowPlugin10SearchFlow_experienceSelector);

  v3 = *(v0 + OBJC_IVAR____TtC21InformationFlowPlugin10SearchFlow_renderComponentFlowFactory);

  v4 = *(v0 + OBJC_IVAR____TtC21InformationFlowPlugin10SearchFlow_rrClient);

  outlined destroy of Any?(v0 + OBJC_IVAR____TtC21InformationFlowPlugin10SearchFlow_pommesSearchClient, &_s21SiriInformationSearch18PommesXPCSearching_pSgMd, &_s21SiriInformationSearch18PommesXPCSearching_pSgMR);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + OBJC_IVAR____TtC21InformationFlowPlugin10SearchFlow_outputPublisher));
  v5 = *(v0 + OBJC_IVAR____TtC21InformationFlowPlugin10SearchFlow_informationViewFactory);

  outlined destroy of SearchFlow.State(v0 + OBJC_IVAR____TtC21InformationFlowPlugin10SearchFlow_state, type metadata accessor for SearchFlow.State);
  return v0;
}

uint64_t SearchFlow.__deallocating_deinit()
{
  SearchFlow.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t (*protocol witness for CompositionSearchFlow.nlContextUpdate.modify in conformance SearchFlow(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*(**v1 + 168))();
  return protocol witness for CompositionSearchFlow.nlContextUpdate.modify in conformance PushOffQueryFlow;
}

uint64_t (*protocol witness for CompositionSearchFlow.targetedRequest.modify in conformance SearchFlow(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*(**v1 + 192))();
  return protocol witness for CompositionSearchFlow.targetedRequest.modify in conformance PushOffQueryFlow;
}

uint64_t (*protocol witness for SiriEnvironmentLocating.siriEnvironment.modify in conformance SearchFlow(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *v1;
  *(v3 + 32) = SiriEnvironmentLocating<>.siriEnvironment.modify();
  return protocol witness for CompositionSearchFlow.targetedRequest.modify in conformance PushOffQueryFlow;
}

uint64_t protocol witness for Flow.execute() in conformance SearchFlow(uint64_t a1)
{
  v4 = *(**v1 + 256);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = protocol witness for Flow.execute() in conformance NavigateToShimFlow;

  return v8(a1);
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSS_Tt1g5(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return &_swiftEmptyArrayStorage;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

char *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(char *a1, int64_t a2, char a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(size_t a1, int64_t a2, char a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D27_Nlu_External_UserDialogActVGMd, &_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D27_Nlu_External_UserDialogActVGMR, &type metadata accessor for Siri_Nlu_External_UserDialogAct);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy10PegasusAPI51Apple_Parsec_Siri_V2alpha_ServerSuggestionCandidateVGMd, &_ss23_ContiguousArrayStorageCy10PegasusAPI51Apple_Parsec_Siri_V2alpha_ServerSuggestionCandidateVGMR, &type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerSuggestionCandidate);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy10PegasusAPI17Moviespb_CoverArtVGMd, &_ss23_ContiguousArrayStorageCy10PegasusAPI17Moviespb_CoverArtVGMR, &type metadata accessor for Moviespb_CoverArt);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy10PegasusAPI13Tvpb_CoverArtVGMd, &_ss23_ContiguousArrayStorageCy10PegasusAPI13Tvpb_CoverArtVGMR, &type metadata accessor for Tvpb_CoverArt);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy10PegasusAPI21Searchfoundation_CardVGMd, &_ss23_ContiguousArrayStorageCy10PegasusAPI21Searchfoundation_CardVGMR, &type metadata accessor for Searchfoundation_Card);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy13SiriInference27SportsPersonalizationEntityVGMd, &_ss23_ContiguousArrayStorageCy13SiriInference27SportsPersonalizationEntityVGMR, &type metadata accessor for SportsPersonalizationEntity);
  *v3 = result;
  return result;
}

void *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(void *a1, int64_t a2, char a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyytGMd, &_ss23_ContiguousArrayStorageCyytGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy21InformationFlowPlugin20GenericResultSetItemVGMd, &_ss23_ContiguousArrayStorageCy21InformationFlowPlugin20GenericResultSetItemVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySDySSypGGMd, &_ss23_ContiguousArrayStorageCySDySSypGGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd, &_sSDySSypGMR);
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

void *specialized Sequence._copySequenceContents(initializing:)(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t specialized static SearchFlow.State.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v70 = a1;
  v71 = a2;
  v2 = type metadata accessor for CompositionResolutionError();
  v66 = *(v2 - 8);
  v67 = v2;
  v3 = *(v66 + 64);
  v4 = __chkstk_darwin(v2);
  v63 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v62 = &v60 - v6;
  v7 = type metadata accessor for RREntity();
  v64 = *(v7 - 8);
  v65 = v7;
  v8 = *(v64 + 64);
  v9 = __chkstk_darwin(v7);
  v61 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v60 = &v60 - v11;
  v12 = type metadata accessor for USOParse();
  v68 = *(v12 - 8);
  v69 = v12;
  v13 = *(v68 + 64);
  v14 = __chkstk_darwin(v12);
  v16 = &v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v60 - v17;
  v19 = type metadata accessor for SearchFlow.State(0);
  v20 = *(*(v19 - 8) + 64);
  v21 = __chkstk_darwin(v19);
  v23 = &v60 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v21);
  v26 = &v60 - v25;
  v27 = __chkstk_darwin(v24);
  v29 = (&v60 - v28);
  __chkstk_darwin(v27);
  v31 = &v60 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21InformationFlowPlugin06SearchB0C5StateO_AEtMd, &_s21InformationFlowPlugin06SearchB0C5StateO_AEtMR);
  v33 = *(*(v32 - 8) + 64);
  v34 = __chkstk_darwin(v32 - 8);
  v36 = &v60 - v35;
  v37 = *(v34 + 56);
  outlined init with copy of SearchFlow.State(v70, &v60 - v35, type metadata accessor for SearchFlow.State);
  outlined init with copy of SearchFlow.State(v71, &v36[v37], type metadata accessor for SearchFlow.State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    v46 = v18;
    v48 = v68;
    v47 = v69;
    if (EnumCaseMultiPayload)
    {
      outlined init with copy of SearchFlow.State(v36, v29, type metadata accessor for SearchFlow.State);
      v55 = *v29;
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v56 = *&v36[v37];
        type metadata accessor for NSObject();
        v44 = static NSObject.== infix(_:_:)();

        goto LABEL_21;
      }
    }

    else
    {
      outlined init with copy of SearchFlow.State(v36, v31, type metadata accessor for SearchFlow.State);
      if (!swift_getEnumCaseMultiPayload())
      {
        v57 = *(v48 + 32);
        v57(v46, v31, v47);
        v57(v16, &v36[v37], v47);
        v44 = static USOParse.== infix(_:_:)();
        v58 = *(v48 + 8);
        v58(v16, v47);
        v58(v46, v47);
        goto LABEL_21;
      }

      (*(v48 + 8))(v31, v47);
    }

    goto LABEL_19;
  }

  if (EnumCaseMultiPayload == 2)
  {
    outlined init with copy of SearchFlow.State(v36, v26, type metadata accessor for SearchFlow.State);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v50 = v64;
      v49 = v65;
      v51 = *(v64 + 32);
      v52 = v60;
      v51(v60, v26, v65);
      v53 = v61;
      v51(v61, &v36[v37], v49);
      v44 = static RREntity.== infix(_:_:)();
      v54 = *(v50 + 8);
      v54(v53, v49);
      v54(v52, v49);
      goto LABEL_21;
    }

    (*(v64 + 8))(v26, v65);
    goto LABEL_19;
  }

  if (EnumCaseMultiPayload == 3)
  {
    outlined init with copy of SearchFlow.State(v36, v23, type metadata accessor for SearchFlow.State);
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      v40 = v66;
      v39 = v67;
      v41 = *(v66 + 32);
      v42 = v62;
      v41(v62, v23, v67);
      v43 = v63;
      v41(v63, &v36[v37], v39);
      v44 = static CompositionResolutionError.== infix(_:_:)();
      v45 = *(v40 + 8);
      v45(v43, v39);
      v45(v42, v39);
LABEL_21:
      outlined destroy of SearchFlow.State(v36, type metadata accessor for SearchFlow.State);
      return v44 & 1;
    }

    (*(v66 + 8))(v23, v67);
    goto LABEL_19;
  }

  if (swift_getEnumCaseMultiPayload() != 4)
  {
LABEL_19:
    outlined destroy of Any?(v36, &_s21InformationFlowPlugin06SearchB0C5StateO_AEtMd, &_s21InformationFlowPlugin06SearchB0C5StateO_AEtMR);
    v44 = 0;
    return v44 & 1;
  }

  outlined destroy of SearchFlow.State(v36, type metadata accessor for SearchFlow.State);
  v44 = 1;
  return v44 & 1;
}

unint64_t specialized SearchFlow.hasDelayedAction(pommesResponse:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI45Apple_Parsec_Siri_V2alpha_ExperienceComponentV06OneOf_H0OSgMd, "В");
  v1 = *(*(v0 - 8) + 64);
  v2 = __chkstk_darwin(v0 - 8);
  v4 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v39 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI48Apple_Parsec_Siri_V2alpha_DelayedActionComponentVSgMd, &_s10PegasusAPI48Apple_Parsec_Siri_V2alpha_DelayedActionComponentVSgMR);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v39 - v9;
  v11 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DelayedActionComponent();
  v43 = *(v11 - 8);
  v12 = *(v43 + 64);
  __chkstk_darwin(v11);
  v51 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ExperienceComponent();
  v14 = *(v50 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v50);
  v17 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = dispatch thunk of PommesResponse.experiences.getter();
  if (!(result >> 62))
  {
    if (*(&dword_10 + (result & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_3;
    }

LABEL_26:

    return 0;
  }

  v37 = result;
  v38 = _CocoaArrayWrapper.endIndex.getter();
  result = v37;
  if (!v38)
  {
    goto LABEL_26;
  }

LABEL_3:
  if ((result & 0xC000000000000001) != 0)
  {
    v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*(&dword_10 + (result & 0xFFFFFFFFFFFFFF8)))
    {
      __break(1u);
      return result;
    }

    v19 = *(result + 32);
  }

  v20 = v19;

  type metadata accessor for GenericExperience();
  if (!swift_dynamicCastClass())
  {

    return 0;
  }

  v21 = GenericExperience.components.getter();
  v22 = *(v21 + 16);
  if (v22)
  {
    v39 = v21;
    v40 = v20;
    v42 = v4;
    v24 = *(v14 + 16);
    v23 = v14 + 16;
    v25 = v21 + ((*(v23 + 64) + 32) & ~*(v23 + 64));
    v47 = *(v23 + 56);
    v48 = v24;
    v49 = v23;
    v46 = (v23 - 8);
    v52 = (v43 + 32);
    v44 = (v43 + 48);
    v45 = (v43 + 56);
    v26 = &_swiftEmptyArrayStorage;
    v41 = enum case for Apple_Parsec_Siri_V2alpha_ExperienceComponent.OneOf_Component.delayedActionComponent(_:);
    do
    {
      v27 = v50;
      v48(v17, v25, v50);
      Apple_Parsec_Siri_V2alpha_ExperienceComponent.component.getter();
      (*v46)(v17, v27);
      v28 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ExperienceComponent.OneOf_Component();
      v29 = *(v28 - 8);
      v30 = 1;
      if ((*(v29 + 48))(v6, 1, v28) != 1)
      {
        v31 = v42;
        outlined init with copy of (String, Decodable & Encodable & Sendable)(v6, v42, &_s10PegasusAPI45Apple_Parsec_Siri_V2alpha_ExperienceComponentV06OneOf_H0OSgMd, "В");
        v32 = (*(v29 + 88))(v31, v28);
        if (v32 == v41)
        {
          (*(v29 + 96))(v31, v28);
          (*v52)(v10, v31, v11);
          v30 = 0;
        }

        else
        {
          (*(v29 + 8))(v31, v28);
          v30 = 1;
        }
      }

      (*v45)(v10, v30, 1, v11);
      outlined destroy of Any?(v6, &_s10PegasusAPI45Apple_Parsec_Siri_V2alpha_ExperienceComponentV06OneOf_H0OSgMd, "В");
      if ((*v44)(v10, 1, v11) == 1)
      {
        outlined destroy of Any?(v10, &_s10PegasusAPI48Apple_Parsec_Siri_V2alpha_DelayedActionComponentVSgMd, &_s10PegasusAPI48Apple_Parsec_Siri_V2alpha_DelayedActionComponentVSgMR);
      }

      else
      {
        v33 = *v52;
        (*v52)(v51, v10, v11);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v26 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v26 + 2) + 1, 1, v26);
        }

        v35 = *(v26 + 2);
        v34 = *(v26 + 3);
        if (v35 >= v34 >> 1)
        {
          v26 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v34 > 1, v35 + 1, 1, v26);
        }

        *(v26 + 2) = v35 + 1;
        v33(&v26[((*(v43 + 80) + 32) & ~*(v43 + 80)) + *(v43 + 72) * v35], v51, v11);
      }

      v25 += v47;
      --v22;
    }

    while (v22);
  }

  else
  {

    v26 = &_swiftEmptyArrayStorage;
  }

  v36 = *(v26 + 2);

  return v36 != 0;
}

uint64_t specialized SearchFlow.init(parse:renderComponentFlowFactory:pommesSearchClient:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for CATOption();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v10 = OBJC_IVAR____TtC21InformationFlowPlugin10SearchFlow_nlContextUpdate;
  v11 = type metadata accessor for NLContextUpdate();
  (*(*(v11 - 8) + 56))(v4 + v10, 1, 1, v11);
  *(v4 + OBJC_IVAR____TtC21InformationFlowPlugin10SearchFlow_targetedRequest) = 0;
  type metadata accessor for ExperienceSelector();
  *(v4 + OBJC_IVAR____TtC21InformationFlowPlugin10SearchFlow_experienceSelector) = swift_allocObject();
  *(v4 + OBJC_IVAR____TtC21InformationFlowPlugin10SearchFlow_renderComponentFlowFactory) = a2;
  type metadata accessor for ReferenceResolutionClient();

  *(v4 + OBJC_IVAR____TtC21InformationFlowPlugin10SearchFlow_rrClient) = ReferenceResolutionClient.__allocating_init()();
  outlined init with copy of (String, Decodable & Encodable & Sendable)(a3, v4 + OBJC_IVAR____TtC21InformationFlowPlugin10SearchFlow_pommesSearchClient, &_s21SiriInformationSearch18PommesXPCSearching_pSgMd, &_s21SiriInformationSearch18PommesXPCSearching_pSgMR);
  static OutputPublisherFactory.makeOutputPublisherAsync()();
  outlined init with take of SiriSuggestionsBroker(v22, v4 + OBJC_IVAR____TtC21InformationFlowPlugin10SearchFlow_outputPublisher);
  static Device.current.getter();
  type metadata accessor for CommonCATs();
  static CATOption.defaultMode.getter();
  v12 = CATWrapper.__allocating_init(options:globals:)();
  type metadata accessor for InformationViewFactory();
  v13 = swift_allocObject();
  v14 = [objc_opt_self() sharedPreferences];
  v15 = type metadata accessor for PommesServerFallbackPreferences();
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();
  v18 = PommesServerFallbackPreferences.init(_:)();
  v13[11] = v15;
  v13[12] = &protocol witness table for PommesServerFallbackPreferences;
  v13[8] = v18;
  outlined destroy of Any?(a3, &_s21SiriInformationSearch18PommesXPCSearching_pSgMd, &_s21SiriInformationSearch18PommesXPCSearching_pSgMR);
  outlined init with take of SiriSuggestionsBroker(v22, (v13 + 3));
  v13[2] = v12;
  *(v4 + OBJC_IVAR____TtC21InformationFlowPlugin10SearchFlow_informationViewFactory) = v13;
  v19 = OBJC_IVAR____TtC21InformationFlowPlugin10SearchFlow_state;
  v20 = type metadata accessor for USOParse();
  (*(*(v20 - 8) + 32))(v4 + v19, a1, v20);
  type metadata accessor for SearchFlow.State(0);
  swift_storeEnumTagMultiPayload();
  return v4;
}

unint64_t specialized SearchFlow.supportedOnDevice(pommesResponse:)()
{
  result = dispatch thunk of PommesResponse.experiences.getter();
  if (result >> 62)
  {
    goto LABEL_15;
  }

  if (*(&dword_10 + (result & 0xFFFFFFFFFFFFFF8)))
  {
    do
    {
      if ((result & 0xC000000000000001) != 0)
      {
        v1 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (!*(&dword_10 + (result & 0xFFFFFFFFFFFFFF8)))
        {
          __break(1u);
          return result;
        }

        v1 = *(result + 32);
      }

      v2 = v1;

      type metadata accessor for GenericExperience();
      if (!swift_dynamicCastClass())
      {
LABEL_13:

        return 1;
      }

      result = dispatch thunk of Experience.catIds.getter();
      v3 = result;
      v4 = (result + 40);
      v5 = -*(result + 16);
      v6 = -1;
      while (1)
      {
        if (v5 + v6 == -1)
        {

          goto LABEL_13;
        }

        if (++v6 >= *(v3 + 16))
        {
          break;
        }

        v7 = v4 + 2;
        v10 = *(v4 - 1);
        v11 = *v4;
        lazy protocol witness table accessor for type String and conformance String();
        result = StringProtocol.contains<A>(_:)();
        v4 = v7;
        if (result)
        {

          return 0;
        }
      }

      __break(1u);
LABEL_15:
      v8 = result;
      v9 = _CocoaArrayWrapper.endIndex.getter();
      result = v8;
    }

    while (v9);
  }

  return 1;
}

uint64_t outlined consume of Result<(), Error>(uint64_t a1, char a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type SearchFlow and conformance SearchFlow(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t partial apply for closure #2 in SearchFlow.buildPommesSearchRequest(parse:)()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return closure #2 in SearchFlow.buildPommesSearchRequest(parse:)();
}

uint64_t outlined destroy of SearchFlow.State(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void type metadata completion function for SearchFlow()
{
  type metadata accessor for NLContextUpdate?();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    v2 = type metadata accessor for SearchFlow.State(319);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

uint64_t type metadata completion function for SearchFlow.State()
{
  result = type metadata accessor for USOParse();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for PommesResponse();
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for RREntity();
      if (v3 <= 0x3F)
      {
        result = type metadata accessor for CompositionResolutionError();
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

uint64_t outlined init with copy of SearchFlow.State(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with take of Apple_Parsec_Siri_V2alpha_DirectExecutionComponent?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI50Apple_Parsec_Siri_V2alpha_DirectExecutionComponentVSgMd, &_s10PegasusAPI50Apple_Parsec_Siri_V2alpha_DirectExecutionComponentVSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void *PegasusComponents.__allocating_init(dialogs:layouts:catDialogs:buttonViews:directExecutions:delayedActions:sayItComponents:disambiguationLists:domainObjectComponents:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v16 = swift_allocObject();
  if (one-time initialization token for information != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  __swift_project_value_buffer(v17, static Logger.information);

  v18 = Logger.logObject.getter();
  v24 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v18, v24))
  {
    v25 = a3;
    v19 = a4;
    v20 = a6;
    v21 = a8;
    v22 = swift_slowAlloc();
    *v22 = 134220032;
    *(v22 + 4) = *(a1 + 16);

    *(v22 + 12) = 2048;
    *(v22 + 14) = *(a2 + 16);

    *(v22 + 22) = 2048;
    *(v22 + 24) = *(v25 + 16);

    *(v22 + 32) = 2048;
    *(v22 + 34) = *(v19 + 16);

    *(v22 + 42) = 2048;
    *(v22 + 44) = *(a5 + 16);

    *(v22 + 52) = 2048;
    *(v22 + 54) = *(v20 + 16);

    *(v22 + 62) = 2048;
    *(v22 + 64) = *(a7 + 16);

    *(v22 + 72) = 2048;
    *(v22 + 74) = *(v21 + 16);

    *(v22 + 82) = 2048;
    *(v22 + 84) = *(a9 + 16);

    _os_log_impl(&dword_0, v18, v24, "PegasusComponents:\n    dialogs: %ld,\n    layouts: %ld,\n    catDialogs: %ld,\n    buttonViews: %ld,\n    directExecutions: %ld,\n    delayedActions: %ld,\n    sayItComponents: %ld,\n    disambiguationLists: %ld,\n    domainObjectComponents: %ld", v22, 0x5Cu);
    a8 = v21;
    a6 = v20;
    a4 = v19;
    a3 = v25;
  }

  else
  {
  }

  v16[2] = a1;
  v16[3] = a2;
  v16[4] = a3;
  v16[5] = a4;
  v16[6] = a5;
  v16[7] = a6;
  v16[8] = a7;
  v16[9] = a8;
  v16[10] = a9;
  return v16;
}

void *PegasusComponents.init(dialogs:layouts:catDialogs:buttonViews:directExecutions:delayedActions:sayItComponents:disambiguationLists:domainObjectComponents:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = v9;
  if (one-time initialization token for information != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  __swift_project_value_buffer(v18, static Logger.information);

  v19 = Logger.logObject.getter();
  v25 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v19, v25))
  {
    v26 = a3;
    v20 = a4;
    v21 = a6;
    v22 = a8;
    v23 = swift_slowAlloc();
    *v23 = 134220032;
    *(v23 + 4) = *(a1 + 16);

    *(v23 + 12) = 2048;
    *(v23 + 14) = *(a2 + 16);

    *(v23 + 22) = 2048;
    *(v23 + 24) = *(v26 + 16);

    *(v23 + 32) = 2048;
    *(v23 + 34) = *(v20 + 16);

    *(v23 + 42) = 2048;
    *(v23 + 44) = *(a5 + 16);

    *(v23 + 52) = 2048;
    *(v23 + 54) = *(v21 + 16);

    *(v23 + 62) = 2048;
    *(v23 + 64) = *(a7 + 16);

    *(v23 + 72) = 2048;
    *(v23 + 74) = *(v22 + 16);

    *(v23 + 82) = 2048;
    *(v23 + 84) = *(a9 + 16);

    _os_log_impl(&dword_0, v19, v25, "PegasusComponents:\n    dialogs: %ld,\n    layouts: %ld,\n    catDialogs: %ld,\n    buttonViews: %ld,\n    directExecutions: %ld,\n    delayedActions: %ld,\n    sayItComponents: %ld,\n    disambiguationLists: %ld,\n    domainObjectComponents: %ld", v23, 0x5Cu);
    a8 = v22;
    a6 = v21;
    a4 = v20;
    a3 = v26;
  }

  else
  {
  }

  v10[2] = a1;
  v10[3] = a2;
  v10[4] = a3;
  v10[5] = a4;
  v10[6] = a5;
  v10[7] = a6;
  v10[8] = a7;
  v10[9] = a8;
  v10[10] = a9;
  return v10;
}

void *PegasusComponents.deinit()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  v5 = v0[6];

  v6 = v0[7];

  v7 = v0[8];

  v8 = v0[9];

  v9 = v0[10];

  return v0;
}

uint64_t PegasusComponents.__deallocating_deinit()
{
  PegasusComponents.deinit();

  return swift_deallocClassInstance();
}

unint64_t static PegasusComponentsParser.parseAlternateComponents(pegasusResult:)()
{
  v55 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SingleExperience();
  v49 = *(v55 - 8);
  v0 = *(v49 + 64);
  __chkstk_darwin(v55);
  v54 = v48 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = type metadata accessor for Date();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v53 = v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for PerformanceUtil.Ticket();
  v50 = *(v5 - 8);
  v51 = v5;
  v6 = *(v50 + 64);
  __chkstk_darwin(v5);
  v52 = v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerDrivenExperience();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v22 = v48 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  Parse.PegasusResult.response.getter();
  Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.siriInstruction.getter();
  (*(v19 + 8))(v22, v18);
  Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.serverDrivenExperience.getter();
  (*(v14 + 8))(v17, v13);
  v23 = Apple_Parsec_Siri_V2alpha_ServerDrivenExperience.alternateExperiences.getter();
  (*(v9 + 8))(v12, v8);
  if (one-time initialization token for information != -1)
  {
    swift_once();
  }

  v24 = type metadata accessor for Logger();
  v25 = __swift_project_value_buffer(v24, static Logger.information);

  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 134217984;
    *(v28 + 4) = *(v23 + 16);

    _os_log_impl(&dword_0, v26, v27, "PegasusResult: parseAlternateServerComponents : %ld", v28, 0xCu);
  }

  else
  {
  }

  v29 = v52;
  Date.init()();
  PerformanceUtil.Ticket.init(description:startDate:fileId:lineNumber:callingFunction:)();
  v56 = &_swiftEmptyArrayStorage;
  v30 = *(v23 + 16);
  if (v30)
  {
    v31 = v49 + 16;
    v32 = *(v49 + 16);
    v33 = *(v49 + 80);
    v48[1] = v25;
    v49 = v23;
    v34 = v23 + ((v33 + 32) & ~v33);
    v35 = *(v31 + 56);
    v36 = (v31 - 8);
    v53 = &_swiftEmptyArrayStorage;
    do
    {
      v37 = v54;
      v38 = v55;
      v32(v54, v34, v55);
      v39 = Apple_Parsec_Siri_V2alpha_SingleExperience.components.getter();
      v40 = specialized static PegasusComponentsParser.collateComponents(components:)(v39);

      (*v36)(v37, v38);
      if (v40)
      {
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*(&dword_10 + (v56 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v56 & 0xFFFFFFFFFFFFFF8)) >> 1)
        {
          v41 = *(&dword_10 + (v56 & 0xFFFFFFFFFFFFFF8));
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v53 = v56;
      }

      v34 += v35;
      --v30;
    }

    while (v30);

    v29 = v52;
    v42 = v53;
  }

  else
  {

    v42 = &_swiftEmptyArrayStorage;
  }

  type metadata accessor for PerformanceUtil();
  static PerformanceUtil.shared.getter();
  dispatch thunk of PerformanceUtil.recordMeasurement(for:logMeasurement:)();

  v43 = Logger.logObject.getter();
  v44 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    *v45 = 134217984;
    if (v42 >> 62)
    {
      v46 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v46 = *(&dword_10 + (v42 & 0xFFFFFFFFFFFFFF8));
    }

    *(v45 + 4) = v46;

    _os_log_impl(&dword_0, v43, v44, "PegasusResult: parseAlternateServerComponents found : %ld", v45, 0xCu);
  }

  else
  {
  }

  (*(v50 + 8))(v29, v51);
  return v42;
}

uint64_t specialized static PegasusComponentsParser.parseLegacyComponents(pegasusResult:)()
{
  v0 = type metadata accessor for Date();
  v31 = *(v0 - 8);
  v32 = v0;
  v1 = *(v31 + 64);
  __chkstk_darwin(v0);
  v30 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerDrivenExperience();
  v3 = *(v29 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v29);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse();
  v12 = *(v28 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v28);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for information != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  __swift_project_value_buffer(v16, static Logger.information);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v27 = v8;
    *v19 = 0;
    _os_log_impl(&dword_0, v17, v18, "PegasusResult: parseLegacyServerComponents", v19, 2u);
    v8 = v27;
  }

  Parse.PegasusResult.response.getter();
  Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.siriInstruction.getter();
  (*(v12 + 8))(v15, v28);
  Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.serverDrivenExperience.getter();
  (*(v8 + 8))(v11, v7);
  Apple_Parsec_Siri_V2alpha_ServerDrivenExperience.components.getter();
  (*(v3 + 8))(v6, v29);
  type metadata accessor for PerformanceUtil();
  v20 = static PerformanceUtil.shared.getter();
  __chkstk_darwin(v20);
  v21 = v30;
  Date.init()();
  v25 = &v23;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21InformationFlowPlugin17PegasusComponentsCSgMd, &_s21InformationFlowPlugin17PegasusComponentsCSgMR);
  v24 = partial apply for closure #1 in static PegasusComponentsParser.parseLegacyComponents(pegasusResult:);
  v23 = 2;
  dispatch thunk of PerformanceUtil.recordMeasurement<A>(for:logMeasurement:date:fileId:lineNumber:callingFunction:block:)();

  (*(v31 + 8))(v21, v32);
  return v33;
}

void *specialized static PegasusComponentsParser.collateComponents(components:)(uint64_t a1)
{
  v245 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DomainObjectComponent();
  v244 = *(v245 - 8);
  v2 = *(v244 + 64);
  v3 = __chkstk_darwin(v245);
  v243 = &v182 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v242 = &v182 - v5;
  v209 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DisambiguationListComponent();
  v230 = *(v209 - 8);
  v6 = *(v230 + 64);
  v7 = __chkstk_darwin(v209);
  v9 = &v182 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v208 = &v182 - v10;
  v212 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ButtonViewComponent();
  v231 = *(v212 - 8);
  v11 = *(v231 + 64);
  v12 = __chkstk_darwin(v212);
  v211 = &v182 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v210 = &v182 - v14;
  v215 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SayItComponent();
  v232 = *(v215 - 8);
  v15 = *(v232 + 64);
  v16 = __chkstk_darwin(v215);
  v214 = &v182 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v213 = &v182 - v18;
  v225 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DelayedActionComponent();
  v234 = *(v225 - 8);
  v19 = *(v234 + 64);
  v20 = __chkstk_darwin(v225);
  v224 = &v182 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v223 = &v182 - v22;
  v229 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DirectExecutionComponent();
  v239 = *(v229 - 8);
  v23 = *(v239 + 64);
  v24 = __chkstk_darwin(v229);
  v228 = &v182 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v227 = &v182 - v26;
  v278 = type metadata accessor for Apple_Parsec_Siri_V2alpha_RenderedDialogComponent();
  v264 = *(v278 - 8);
  v27 = *(v264 + 64);
  v28 = __chkstk_darwin(v278);
  v277 = &v182 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v276 = &v182 - v30;
  v263 = type metadata accessor for Apple_Parsec_Siri_V2alpha_CatDialogComponent();
  v255 = *(v263 - 8);
  v31 = *(v255 + 64);
  v32 = __chkstk_darwin(v263);
  v262 = &v182 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v261 = &v182 - v34;
  v254 = type metadata accessor for Apple_Parsec_Siri_V2alpha_LayoutSnippetComponent();
  v246 = *(v254 - 8);
  v35 = *(v246 + 64);
  v36 = __chkstk_darwin(v254);
  v253 = &v182 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v252 = &v182 - v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI45Apple_Parsec_Siri_V2alpha_ExperienceComponentV06OneOf_H0OSgMd, "В");
  v40 = *(*(v39 - 8) + 64);
  __chkstk_darwin(v39 - 8);
  v42 = &v182 - v41;
  v43 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ExperienceComponent.OneOf_Component();
  v44 = *(v43 - 8);
  v45 = *(v44 + 64);
  v46 = __chkstk_darwin(v43);
  v206 = &v182 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = __chkstk_darwin(v46);
  v50 = &v182 - v49;
  v51 = __chkstk_darwin(v48);
  v268 = &v182 - v52;
  __chkstk_darwin(v51);
  v267 = &v182 - v53;
  v286 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ExperienceComponent();
  v54 = *(v286 - 8);
  v55 = *(v54 + 64);
  __chkstk_darwin(v286);
  v57 = &v182 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for information != -1)
  {
    swift_once();
  }

  v58 = type metadata accessor for Logger();
  v59 = __swift_project_value_buffer(v58, static Logger.information);

  v279 = v59;
  v60 = Logger.logObject.getter();
  v61 = static os_log_type_t.debug.getter();
  v62 = os_log_type_enabled(v60, v61);
  v207 = v50;
  if (v62)
  {
    v63 = swift_slowAlloc();
    *v63 = 134217984;
    *(v63 + 4) = *(a1 + 16);

    _os_log_impl(&dword_0, v60, v61, "PegasusResult: sorting pegasus components : %ld", v63, 0xCu);
  }

  else
  {
  }

  v65 = a1;
  v66 = *(a1 + 16);
  if (!v66)
  {
    return 0;
  }

  v193 = v9;
  v68 = *(v54 + 16);
  v67 = v54 + 16;
  v69 = v65 + ((*(v67 + 64) + 32) & ~*(v67 + 64));
  v283 = (v44 + 48);
  v284 = v68;
  v274 = (v44 + 16);
  v275 = (v44 + 32);
  v273 = (v44 + 88);
  v272 = (v44 + 8);
  v282 = (v67 - 8);
  v269 = (v44 + 96);
  v192 = (v230 + 32);
  v188 = (v230 + 16);
  v187 = v230 + 8;
  v197 = (v231 + 32);
  v271 = enum case for Apple_Parsec_Siri_V2alpha_ExperienceComponent.OneOf_Component.renderedDialog(_:);
  v191 = (v231 + 16);
  v190 = v231 + 8;
  v259 = enum case for Apple_Parsec_Siri_V2alpha_ExperienceComponent.OneOf_Component.catDialog(_:);
  v201 = (v232 + 32);
  v196 = (v232 + 16);
  v250 = enum case for Apple_Parsec_Siri_V2alpha_ExperienceComponent.OneOf_Component.layoutExperience(_:);
  v195 = v232 + 8;
  v205 = (v234 + 32);
  v238 = enum case for Apple_Parsec_Siri_V2alpha_ExperienceComponent.OneOf_Component.domainObjectComponent(_:);
  v200 = (v234 + 16);
  v199 = v234 + 8;
  *&v64 = 136315138;
  v186 = v64;
  v221 = (v239 + 32);
  v220 = enum case for Apple_Parsec_Siri_V2alpha_ExperienceComponent.OneOf_Component.directExecutionComponent(_:);
  v204 = enum case for Apple_Parsec_Siri_V2alpha_ExperienceComponent.OneOf_Component.delayedActionComponent(_:);
  v198 = enum case for Apple_Parsec_Siri_V2alpha_ExperienceComponent.OneOf_Component.sayItComponent(_:);
  v194 = enum case for Apple_Parsec_Siri_V2alpha_ExperienceComponent.OneOf_Component.buttonViewComponent(_:);
  v189 = enum case for Apple_Parsec_Siri_V2alpha_ExperienceComponent.OneOf_Component.disambiguationListComponent(_:);
  v203 = (v239 + 16);
  v202 = v239 + 8;
  v237 = (v244 + 32);
  v219 = (v244 + 16);
  v218 = v244 + 8;
  v249 = (v246 + 32);
  v260 = &_swiftEmptyArrayStorage;
  v265 = &_swiftEmptyArrayStorage;
  v285 = v67;
  v281 = *(v67 + 56);
  v226 = &_swiftEmptyArrayStorage;
  v241 = &_swiftEmptyArrayStorage;
  v233 = &_swiftEmptyArrayStorage;
  v240 = &_swiftEmptyArrayStorage;
  v222 = &_swiftEmptyArrayStorage;
  v280 = &_swiftEmptyArrayStorage;
  v251 = &_swiftEmptyArrayStorage;
  v236 = (v246 + 16);
  v235 = v246 + 8;
  v258 = (v255 + 32);
  v248 = (v255 + 16);
  v247 = v255 + 8;
  v270 = (v264 + 32);
  v257 = (v264 + 16);
  v256 = v264 + 8;
  v70 = v267;
  v71 = v268;
  v266 = v42;
  v68(v57, v69, v286);
  while (1)
  {
    Apple_Parsec_Siri_V2alpha_ExperienceComponent.component.getter();
    if ((*v283)(v42, 1, v43) == 1)
    {
      outlined destroy of Apple_Parsec_Siri_V2alpha_ExperienceComponent.OneOf_Component?(v42);
      v72 = Logger.logObject.getter();
      v73 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v72, v73))
      {
        v74 = swift_slowAlloc();
        *v74 = 0;
        _os_log_impl(&dword_0, v72, v73, "PegasusResult component missing type", v74, 2u);
      }

      (*v282)(v57, v286);
    }

    else
    {
      (*v275)(v70, v42, v43);
      v75 = *v274;
      (*v274)(v71, v70, v43);
      v76 = (*v273)(v71, v43);
      if (v76 == v271)
      {
        (*v269)(v71, v43);
        v77 = *v270;
        v78 = v276;
        v79 = v278;
        (*v270)(v276, v71, v278);
        (*v257)(v277, v78, v79);
        v80 = v280;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v80 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v80[2] + 1, 1, v80);
        }

        v81 = v272;
        v83 = v80[2];
        v82 = v80[3];
        if (v83 >= v82 >> 1)
        {
          v280 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v82 > 1, v83 + 1, 1, v80);
        }

        else
        {
          v280 = v80;
        }

        v84 = v264;
        v85 = v278;
        (*(v264 + 8))(v276, v278);
        v86 = *v81;
        v87 = v267;
        v86(v267, v43);
        (*v282)(v57, v286);
        v88 = v280;
        v280[2] = v83 + 1;
        v89 = v88 + ((*(v84 + 80) + 32) & ~*(v84 + 80)) + *(v84 + 72) * v83;
        v90 = v277;
        v91 = v85;
        v70 = v87;
LABEL_26:
        v77(v89, v90, v91);
LABEL_27:
        v71 = v268;
        v42 = v266;
        goto LABEL_9;
      }

      if (v76 == v259)
      {
        (*v269)(v71, v43);
        v77 = *v258;
        v92 = v261;
        v93 = v263;
        (*v258)(v261, v71, v263);
        (*v248)(v262, v92, v93);
        v94 = v265;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v94 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v94[2] + 1, 1, v94);
        }

        v96 = v94[2];
        v95 = v94[3];
        if (v96 >= v95 >> 1)
        {
          v265 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v95 > 1, v96 + 1, 1, v94);
        }

        else
        {
          v265 = v94;
        }

        v97 = v255;
        v98 = v263;
        (*(v255 + 8))(v261, v263);
        v70 = v267;
        (*v272)(v267, v43);
        (*v282)(v57, v286);
        v99 = v265;
        v265[2] = v96 + 1;
        v89 = v99 + ((*(v97 + 80) + 32) & ~*(v97 + 80)) + *(v97 + 72) * v96;
        v90 = v262;
        v91 = v98;
        goto LABEL_26;
      }

      if (v76 == v250)
      {
        (*v269)(v71, v43);
        v100 = *v249;
        v101 = v252;
        v102 = v254;
        (*v249)(v252, v71, v254);
        (*v236)(v253, v101, v102);
        v103 = v260;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v103 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v103[2] + 1, 1, v103);
        }

        v105 = v103[2];
        v104 = v103[3];
        if (v105 >= v104 >> 1)
        {
          v260 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v104 > 1, v105 + 1, 1, v103);
        }

        else
        {
          v260 = v103;
        }

        v106 = v246;
        v107 = v254;
        (*(v246 + 8))(v252, v254);
        v70 = v267;
        (*v272)(v267, v43);
        (*v282)(v57, v286);
        v108 = v260;
        v260[2] = v105 + 1;
        v100(&v108[((*(v106 + 80) + 32) & ~*(v106 + 80)) + *(v106 + 72) * v105], v253, v107);
        goto LABEL_27;
      }

      if (v76 == v238)
      {
        (*v269)(v71, v43);
        v109 = v242;
        v110 = v245;
        v217 = *v237;
        v217(v242, v71, v245);
        (*v219)(v243, v109, v110);
        v111 = v251;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v111 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v111[2] + 1, 1, v111);
        }

        v113 = v111[2];
        v112 = v111[3];
        v216 = (v113 + 1);
        if (v113 >= v112 >> 1)
        {
          v251 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v112 > 1, v113 + 1, 1, v111);
        }

        else
        {
          v251 = v111;
        }

        v114 = v244;
        v115 = v245;
        (*(v244 + 8))(v242, v245);
        (*v272)(v70, v43);
        (*v282)(v57, v286);
        v116 = v251;
        v251[2] = v216;
        v117 = v116 + ((*(v114 + 80) + 32) & ~*(v114 + 80)) + *(v114 + 72) * v113;
        v118 = v243;
        v119 = v115;
        v120 = &v269;
LABEL_70:
        v157 = *(v120 - 32);
        v217(v117, v118, v119);
        goto LABEL_9;
      }

      if (v76 == v220)
      {
        (*v269)(v71, v43);
        v121 = v227;
        v122 = v229;
        v217 = *v221;
        v217(v227, v71, v229);
        (*v203)(v228, v121, v122);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v241 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v241[2] + 1, 1, v241);
        }

        v124 = v241[2];
        v123 = v241[3];
        v216 = (v124 + 1);
        if (v124 >= v123 >> 1)
        {
          v241 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v123 > 1, v124 + 1, 1, v241);
        }

        v125 = v239;
        v126 = v229;
        (*(v239 + 8))(v227, v229);
        (*v272)(v70, v43);
        (*v282)(v57, v286);
        v127 = v241;
        v241[2] = v216;
        v117 = v127 + ((*(v125 + 80) + 32) & ~*(v125 + 80)) + *(v125 + 72) * v124;
        v118 = v228;
        v119 = v126;
        v120 = &v253;
        goto LABEL_70;
      }

      if (v76 == v204)
      {
        (*v269)(v71, v43);
        v128 = v223;
        v129 = v225;
        v217 = *v205;
        v217(v223, v71, v225);
        (*v200)(v224, v128, v129);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v233 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v233[2] + 1, 1, v233);
        }

        v131 = v233[2];
        v130 = v233[3];
        v216 = (v131 + 1);
        if (v131 >= v130 >> 1)
        {
          v233 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v130 > 1, v131 + 1, 1, v233);
        }

        v132 = v234;
        v133 = v225;
        (*(v234 + 8))(v223, v225);
        (*v272)(v70, v43);
        (*v282)(v57, v286);
        v134 = v233;
        v233[2] = v216;
        v117 = v134 + ((*(v132 + 80) + 32) & ~*(v132 + 80)) + *(v132 + 72) * v131;
        v118 = v224;
        v119 = v133;
        v120 = &v237;
        goto LABEL_70;
      }

      if (v76 == v198)
      {
        (*v269)(v71, v43);
        v135 = v213;
        v136 = v215;
        v217 = *v201;
        v217(v213, v71, v215);
        (*v196)(v214, v135, v136);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v240 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v240[2] + 1, 1, v240);
        }

        v138 = v240[2];
        v137 = v240[3];
        v216 = (v138 + 1);
        if (v138 >= v137 >> 1)
        {
          v240 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v137 > 1, v138 + 1, 1, v240);
        }

        v139 = v232;
        v140 = v215;
        (*(v232 + 8))(v213, v215);
        (*v272)(v70, v43);
        (*v282)(v57, v286);
        v141 = v240;
        v240[2] = v216;
        v117 = v141 + ((*(v139 + 80) + 32) & ~*(v139 + 80)) + *(v139 + 72) * v138;
        v118 = v214;
        v119 = v140;
        v120 = &v233;
        goto LABEL_70;
      }

      if (v76 == v194)
      {
        (*v269)(v71, v43);
        v142 = v210;
        v143 = v212;
        v217 = *v197;
        v217(v210, v71, v212);
        (*v191)(v211, v142, v143);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v226 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v226[2] + 1, 1, v226);
        }

        v145 = v226[2];
        v144 = v226[3];
        v216 = (v145 + 1);
        if (v145 >= v144 >> 1)
        {
          v226 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v144 > 1, v145 + 1, 1, v226);
        }

        v146 = v231;
        v147 = v212;
        (*(v231 + 8))(v210, v212);
        (*v272)(v70, v43);
        (*v282)(v57, v286);
        v148 = v226;
        v226[2] = v216;
        v117 = v148 + ((*(v146 + 80) + 32) & ~*(v146 + 80)) + *(v146 + 72) * v145;
        v118 = v211;
        v119 = v147;
        v120 = &v229;
        goto LABEL_70;
      }

      if (v76 == v189)
      {
        (*v269)(v71, v43);
        v149 = v208;
        v150 = v209;
        v217 = *v192;
        v217(v208, v71, v209);
        (*v188)(v193, v149, v150);
        v151 = v222;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v151 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v151[2] + 1, 1, v151);
        }

        v153 = v151[2];
        v152 = v151[3];
        v216 = (v153 + 1);
        if (v153 >= v152 >> 1)
        {
          v222 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v152 > 1, v153 + 1, 1, v151);
        }

        else
        {
          v222 = v151;
        }

        v154 = v230;
        v155 = v209;
        (*(v230 + 8))(v208, v209);
        (*v272)(v70, v43);
        (*v282)(v57, v286);
        v156 = v222;
        v222[2] = v216;
        v117 = v156 + ((*(v154 + 80) + 32) & ~*(v154 + 80)) + *(v154 + 72) * v153;
        v118 = v193;
        v119 = v155;
        v120 = &v224;
        goto LABEL_70;
      }

      v158 = v207;
      v75(v207, v70, v43);
      v159 = Logger.logObject.getter();
      v185 = static os_log_type_t.error.getter();
      v216 = v159;
      v160 = os_log_type_enabled(v159, v185);
      v161 = v272;
      v217 = (v272 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
      if (v160)
      {
        v162 = swift_slowAlloc();
        v184 = v162;
        v183 = swift_slowAlloc();
        v287 = v183;
        *v162 = v186;
        v75(v206, v158, v43);
        v70 = v267;
        v182 = String.init<A>(describing:)();
        v164 = v163;
        v165 = *v161;
        (*v161)(v158, v43);
        v166 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v182, v164, &v287);

        v167 = v184;
        *(v184 + 1) = v166;
        v168 = v216;
        _os_log_impl(&dword_0, v216, v185, "PegasusResult unknown component %s", v167, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v183);
      }

      else
      {

        v165 = *v161;
        (*v161)(v158, v43);
      }

      v165(v70, v43);
      (*v282)(v57, v286);
      v71 = v268;
      v165(v268, v43);
    }

LABEL_9:
    v69 += v281;
    if (!--v66)
    {
      break;
    }

    v284(v57, v69, v286);
  }

  type metadata accessor for PegasusComponents();
  v169 = swift_allocObject();

  v170 = v265;

  v171 = v226;

  v172 = v241;

  v173 = v233;

  v174 = v240;

  v175 = v222;

  v176 = v251;

  v177 = Logger.logObject.getter();
  v178 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v177, v178))
  {
    v179 = swift_slowAlloc();
    *v179 = 134220032;
    *(v179 + 4) = v280[2];
    *(v179 + 12) = 2048;
    *(v179 + 14) = v260[2];
    *(v179 + 22) = 2048;
    *(v179 + 24) = v170[2];
    *(v179 + 32) = 2048;
    *(v179 + 34) = v171[2];
    *(v179 + 42) = 2048;
    *(v179 + 44) = v172[2];
    *(v179 + 52) = 2048;
    *(v179 + 54) = v173[2];
    *(v179 + 62) = 2048;
    *(v179 + 64) = v240[2];
    *(v179 + 72) = 2048;
    *(v179 + 74) = v175[2];
    *(v179 + 82) = 2048;
    *(v179 + 84) = v176[2];
    _os_log_impl(&dword_0, v177, v178, "PegasusComponents:\n    dialogs: %ld,\n    layouts: %ld,\n    catDialogs: %ld,\n    buttonViews: %ld,\n    directExecutions: %ld,\n    delayedActions: %ld,\n    sayItComponents: %ld,\n    disambiguationLists: %ld,\n    domainObjectComponents: %ld", v179, 0x5Cu);
    v174 = v240;
  }

  v180 = v260;
  v169[2] = v280;
  v169[3] = v180;
  v169[4] = v170;
  v169[5] = v171;
  v169[6] = v172;
  v169[7] = v173;
  v169[8] = v174;
  v169[9] = v175;
  v169[10] = v176;

  return v169;
}

uint64_t specialized static PegasusComponentsParser.parsePrimaryComponents(pegasusResult:)()
{
  v0 = type metadata accessor for Date();
  v40 = *(v0 - 8);
  v41 = v0;
  v1 = *(v40 + 64);
  __chkstk_darwin(v0);
  v39 = &v32 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerDrivenExperience();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction();
  v36 = *(v8 - 8);
  v9 = *(v36 + 64);
  __chkstk_darwin(v8);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse();
  v34 = *(v12 - 8);
  v35 = v12;
  v13 = *(v34 + 64);
  __chkstk_darwin(v12);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SingleExperience();
  v37 = *(v16 - 8);
  v38 = v16;
  v17 = *(v37 + 64);
  __chkstk_darwin(v16);
  v19 = &v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for information != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  __swift_project_value_buffer(v20, static Logger.information);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v33 = v8;
    *v23 = 0;
    _os_log_impl(&dword_0, v21, v22, "PegasusResult: parsePrimaryServerComponents", v23, 2u);
    v8 = v33;
  }

  Parse.PegasusResult.response.getter();
  Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.siriInstruction.getter();
  (*(v34 + 8))(v15, v35);
  Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.serverDrivenExperience.getter();
  (*(v36 + 8))(v11, v8);
  Apple_Parsec_Siri_V2alpha_ServerDrivenExperience.primaryExperience.getter();
  (*(v4 + 8))(v7, v3);
  type metadata accessor for PerformanceUtil();
  v24 = static PerformanceUtil.shared.getter();
  __chkstk_darwin(v24);
  v25 = v39;
  Date.init()();
  v30 = &v28;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21InformationFlowPlugin17PegasusComponentsCSgMd, &_s21InformationFlowPlugin17PegasusComponentsCSgMR);
  v29 = partial apply for closure #1 in static PegasusComponentsParser.parsePrimaryComponents(pegasusResult:);
  v28 = 2;
  dispatch thunk of PerformanceUtil.recordMeasurement<A>(for:logMeasurement:date:fileId:lineNumber:callingFunction:block:)();

  (*(v40 + 8))(v25, v41);
  v26 = v42;
  (*(v37 + 8))(v19, v38);
  return v26;
}

uint64_t specialized static PegasusComponentsParser.parsePegasusRenderOptions(response:)()
{
  v0 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerDrivenExperience();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for information != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static Logger.information);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_0, v11, v12, "PegasusResult: parsePegasusRenderOptions", v13, 2u);
  }

  Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.siriInstruction.getter();
  Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.serverDrivenExperience.getter();
  (*(v6 + 8))(v9, v5);
  v14 = Apple_Parsec_Siri_V2alpha_ServerDrivenExperience.isImmersiveExperience.getter();
  v15 = (*(v1 + 8))(v4, v0);
  if ((v14 & 1) == 0)
  {
    return 0;
  }

  __chkstk_darwin(v15);
  *(&v18 - 16) = 1;
  v16 = objc_allocWithZone(type metadata accessor for PommesRenderOptions());
  return PommesRenderOptions.init(_:)();
}

uint64_t partial apply for closure #1 in static PegasusComponentsParser.parsePrimaryComponents(pegasusResult:)@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = Apple_Parsec_Siri_V2alpha_SingleExperience.components.getter();
  v5 = specialized static PegasusComponentsParser.collateComponents(components:)(v4);

  *a1 = v5;
  return result;
}

uint64_t outlined destroy of Apple_Parsec_Siri_V2alpha_ExperienceComponent.OneOf_Component?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI45Apple_Parsec_Siri_V2alpha_ExperienceComponentV06OneOf_H0OSgMd, "В");
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *partial apply for closure #1 in static PegasusComponentsParser.parseLegacyComponents(pegasusResult:)@<X0>(void *a1@<X8>)
{
  result = specialized static PegasusComponentsParser.collateComponents(components:)(*(v1 + 16));
  *a1 = result;
  return result;
}

uint64_t PegasusFlowEventLogger.__allocating_init(pommesResponse:domainName:eventType:eventSending:)(void *a1, uint64_t a2, uint64_t a3, int a4, uint64_t *a5)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  outlined init with copy of OutputPublisherAsync(a5, v10 + 24);
  if (a1)
  {
    v11 = a1;
    a2 = PommesResponse.metadataDomainName.getter();
    v13 = v12;

    __swift_destroy_boxed_opaque_existential_0Tm(a5);

    a3 = v13;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0Tm(a5);
  }

  *(v10 + 64) = a2;
  *(v10 + 72) = a3;
  *(v10 + 80) = a4;
  return v10;
}

void *PegasusFlowEventLogger.pommesResponse.getter()
{
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

uint64_t PegasusFlowEventLogger.metadataDomainName.getter()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return v1;
}

uint64_t PegasusFlowEventLogger.init(pommesResponse:domainName:eventType:eventSending:)(void *a1, uint64_t a2, uint64_t a3, int a4, uint64_t *a5)
{
  v6 = v5;
  *(v6 + 16) = a1;
  outlined init with copy of OutputPublisherAsync(a5, v6 + 24);
  if (a1)
  {
    v12 = a1;
    a2 = PommesResponse.metadataDomainName.getter();
    v14 = v13;

    __swift_destroy_boxed_opaque_existential_0Tm(a5);

    a3 = v14;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0Tm(a5);
  }

  *(v6 + 64) = a2;
  *(v6 + 72) = a3;
  *(v6 + 80) = a4;
  return v6;
}

uint64_t PegasusFlowEventLogger.logGenericFlowStepEvent(stateType:parameterName:statusReason:statusReasonDescription:taskType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v37 = a5;
  v38 = a8;
  v35 = a2;
  v36 = a7;
  v34 = a4;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow0aB16ReliabilityCodesOSgMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMR);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v33 - v15;
  v17 = type metadata accessor for ActivityType();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v21 = &v33 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for information != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  __swift_project_value_buffer(v22, static Logger.information);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v33 = v17;
    *v25 = 0;
    _os_log_impl(&dword_0, v23, v24, "Logging generic SELF FlowStep event", v25, 2u);
    v17 = v33;
  }

  type metadata accessor for SiriKitEvent();
  (*(v18 + 16))(v21, a1, v17);
  v26 = v9[8];
  v27 = v9[9];
  outlined init with copy of SiriKitReliabilityCodes?(v34, v16);
  v28 = swift_allocObject();
  v29 = v35;
  v30 = v38;
  v28[2] = v36;
  v28[3] = v30;
  v28[4] = v29;
  v28[5] = a3;
  v28[6] = v37;
  v28[7] = a6;

  SiriKitEvent.__allocating_init(activityType:taskType:statusReason:_:)();
  v31 = v9[7];
  __swift_project_boxed_opaque_existential_1(v9 + 3, v9[6]);
  dispatch thunk of SiriKitEventSending.send(_:)();
}

uint64_t closure #1 in PegasusFlowEventLogger.logGenericFlowStepEvent(stateType:parameterName:statusReason:statusReasonDescription:taskType:)(uint64_t *a1)
{
  v1 = *a1;

  dispatch thunk of SiriKitEvent.SiriKitEventBuilder.attribute.setter();

  dispatch thunk of SiriKitEvent.SiriKitEventBuilder.parameterName.setter();

  return dispatch thunk of SiriKitEvent.SiriKitEventBuilder.statusReasonDescription.setter();
}

Swift::tuple_taskType_String_optional_isTerminalStepLogged_Bool __swiftcall PegasusFlowEventLogger.logFlowEventsFromPommesResponse()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow0aB16ReliabilityCodesOSgMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMR);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v41 = &v36 - v4;
  v5 = type metadata accessor for ActivityType();
  v42 = *(v5 - 8);
  v43 = v5;
  v6 = *(v42 + 64);
  __chkstk_darwin(v5);
  v40 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for PerformanceUtil.Ticket();
  v44 = *(v8 - 8);
  v9 = *(v44 + 64);
  __chkstk_darwin(v8);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Date();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for PerformanceUtil();
  static PerformanceUtil.shared.getter();
  Date.init()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSg8taskType_Sb20isTerminalStepLoggedtMd, &_sSSSg8taskType_Sb20isTerminalStepLoggedtMR);
  dispatch thunk of PerformanceUtil.recordMeasurement<A>(for:logMeasurement:date:fileId:lineNumber:callingFunction:block:)();
  v18 = v8;

  (*(v13 + 8))(v16, v12);
  v19 = v44;
  v20 = v46;
  v21 = v47;
  v45 = v48;
  if (v47)
  {

    Date.init()();
    PerformanceUtil.Ticket.init(description:startDate:fileId:lineNumber:callingFunction:)();
    (*(*v0 + 144))(v20, v21);

    static PerformanceUtil.shared.getter();
    dispatch thunk of PerformanceUtil.recordMeasurement(for:logMeasurement:)();

    (*(v19 + 8))(v11, v18);
  }

  if (v0[2])
  {
    if ((v45 | dispatch thunk of PommesResponse.listenAfterSpeaking.getter()))
    {
      goto LABEL_12;
    }
  }

  else if (v45)
  {
    goto LABEL_12;
  }

  v39 = v18;
  if (one-time initialization token for information != -1)
  {
    swift_once();
  }

  v37 = v20;
  v38 = v17;
  v22 = type metadata accessor for Logger();
  __swift_project_value_buffer(v22, static Logger.information);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&dword_0, v23, v24, "RenderPegasusFlow FlowTask logging completed", v25, 2u);
  }

  Date.init()();
  PerformanceUtil.Ticket.init(description:startDate:fileId:lineNumber:callingFunction:)();
  v27 = v42;
  v26 = v43;
  v28 = v40;
  (*(v42 + 104))(v40, enum case for ActivityType.completed(_:), v43);
  v29 = enum case for SiriKitReliabilityCodes.normal(_:);
  v30 = type metadata accessor for SiriKitReliabilityCodes();
  v31 = *(v30 - 8);
  v32 = v41;
  (*(v31 + 104))(v41, v29, v30);
  (*(v31 + 56))(v32, 0, 1, v30);
  (*(*v1 + 120))(v28, 0x6C7070615F746F6ELL, 0xEE00656C62616369, v32, 0, 0xE000000000000000, 0x54746E6572727543, 0xEB000000006B7361);
  outlined destroy of SiriKitReliabilityCodes?(v32);
  (*(v27 + 8))(v28, v26);
  static PerformanceUtil.shared.getter();
  dispatch thunk of PerformanceUtil.recordMeasurement(for:logMeasurement:)();

  (*(v44 + 8))(v11, v39);
  v20 = v37;
LABEL_12:
  v33 = v20;
  v34 = v21;
  v35 = v45;
  result.taskType.value._object = v34;
  result.taskType.value._countAndFlagsBits = v33;
  result.isTerminalStepLogged = v35;
  return result;
}

Swift::tuple_taskType_String_optional_isTerminalStepLogged_Bool __swiftcall PegasusFlowEventLogger.logPegasusFlowStepEventFromPommesResponse()()
{
  v34 = 0;
  v1 = v0[2];
  if (!v1)
  {
    if (one-time initialization token for information != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    __swift_project_value_buffer(v22, static Logger.information);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_0, v23, v24, "Pommes response is nil, no SELF Flow event could be logged from it", v25, 2u);
    }

    goto LABEL_20;
  }

  v2 = v0;
  v33 = _swiftEmptyArrayStorage;
  v3 = v1;
  v4 = dispatch thunk of PommesResponse.pegasusDomainFlowStepLog.getter();
  v6 = v5;
  v7 = type metadata accessor for NSThread(0, &lazy cache variable for type metadata for FLOWSchemaFLOWStep, FLOWSchemaFLOWStep_ptr);
  v8 = *(*v0 + 160);
  v9 = v8(v4, v6, v7, v7);
  outlined consume of Data?(v4, v6);
  if (!v9)
  {

LABEL_20:
    v19 = 0;
    v20 = 0;
    v21 = 0;
    goto LABEL_21;
  }

  v10 = v9;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*(&dword_10 + (v33 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v33 & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    v26 = *(&dword_10 + (v33 & 0xFFFFFFFFFFFFFF8));
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  v28 = v10;
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v11 = v33;
  v29 = v3;
  v12 = dispatch thunk of PommesResponse.taskStepLogs.getter();
  v13 = *(v12 + 16);
  if (v13)
  {
    v14 = (v12 + 40);
    do
    {
      v15 = *(v14 - 1);
      v16 = *v14;
      outlined copy of Data?(v15, *v14);
      v17 = v8(v15, v16, v7, v7);
      if (v17)
      {
        v18 = v17;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*(&dword_10 + (v33 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v33 & 0xFFFFFFFFFFFFFF8)) >> 1)
        {
          v27 = *(&dword_10 + (v33 & 0xFFFFFFFFFFFFFF8));
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        outlined consume of Data?(v15, v16);

        v11 = v33;
      }

      else
      {
        outlined consume of Data?(v15, v16);
      }

      v14 += 2;
      --v13;
    }

    while (v13);
  }

  v31 = 0x54746E6572727543;
  v32 = 0xEB000000006B7361;
  v30 = 152;

  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSaySo18FLOWSchemaFLOWStepCG_yts5NeverOTg50127_s21InformationFlowPlugin07PegasusB11EventLoggerC03logdb4StepE18FromPommesResponseSSSg8taskType_Sb010isTerminalH6LoggedtyFySo18dE6CXEfU_SSSo0d9FLOWStateV0VSb0hI6Plugin0kimN0CTf1cn_nTf4nnnng_n(v11, &v31, &v30, &v34, v2);

  v19 = v31;
  v20 = v32;
  v21 = v34;
LABEL_21:
  result.taskType.value._object = v20;
  result.taskType.value._countAndFlagsBits = v19;
  result.isTerminalStepLogged = v21;
  return result;
}

BOOL FLOWSchemaFLOWStateType.isLastTaskStep.getter(unsigned int a1)
{
  result = 1;
  if (a1 > 5 || ((1 << a1) & 0x34) == 0)
  {
    return a1 == 128;
  }

  return result;
}

uint64_t closure #1 in closure #1 in PegasusFlowEventLogger.logPegasusFlowStepEventFromPommesResponse()(uint64_t *a1, id a2)
{
  v3 = *a1;
  v4 = [a2 domainContexts];
  if (!v4)
  {
    goto LABEL_9;
  }

  v5 = v4;
  type metadata accessor for NSThread(0, &lazy cache variable for type metadata for FLOWSchemaFLOWDomainContext, FLOWSchemaFLOWDomainContext_ptr);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v6 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (result)
    {
LABEL_4:
      if ((v6 & 0xC000000000000001) != 0)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (!*(&dword_10 + (v6 & 0xFFFFFFFFFFFFFF8)))
        {
          __break(1u);
          return result;
        }

        v8 = *(v6 + 32);
      }
    }
  }

  else
  {
    result = *(&dword_10 + (v6 & 0xFFFFFFFFFFFFFF8));
    if (result)
    {
      goto LABEL_4;
    }
  }

LABEL_9:
  dispatch thunk of SiriKitEvent.SiriKitEventBuilder.domainContext.setter();

  dispatch thunk of SiriKitEvent.SiriKitEventBuilder.attribute.setter();
  v9 = [a2 flowState];
  if (v9)
  {
    v10 = v9;
    v11 = [v9 resolvedSlotName];

    if (v11)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }
  }

  dispatch thunk of SiriKitEvent.SiriKitEventBuilder.parameterName.setter();
  v12 = [a2 flowState];
  if (v12)
  {
    v13 = v12;
    v14 = [v12 flowStateReasonDescription];

    if (v14)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }
  }

  return dispatch thunk of SiriKitEvent.SiriKitEventBuilder.statusReasonDescription.setter();
}

Swift::Void __swiftcall PegasusFlowEventLogger.logPegasusContextTier1Event(taskType:)(Swift::String taskType)
{
  v2 = v1;
  if (v1[2])
  {
    v3 = dispatch thunk of PommesResponse.pegasusDomainUserSensitiveTier1Log.getter();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0xF000000000000000;
  }

  v6 = type metadata accessor for NSThread(0, &lazy cache variable for type metadata for FLOWSchemaFLOWPegasusContextTier1, FLOWSchemaFLOWPegasusContextTier1_ptr);
  v15 = (*(*v1 + 160))(v3, v5, v6, v6);
  outlined consume of Data?(v3, v5);
  if (v15)
  {
    v7 = [objc_allocWithZone(FLOWSchemaFLOWClientEvent) init];
    if (v7)
    {
      v8 = v7;
      [v7 setPegasusContextTier1:v15];
      type metadata accessor for SiriKitEvent();

      v9 = v8;
      SiriKitEvent.__allocating_init(taskType:tierOneFlowEvent:_:)();
      v10 = v2[7];
      __swift_project_boxed_opaque_existential_1(v2 + 3, v2[6]);
      dispatch thunk of SiriKitEventSending.send(_:)();
    }

    else
    {
      if (one-time initialization token for information != -1)
      {
        swift_once();
      }

      v11 = type metadata accessor for Logger();
      __swift_project_value_buffer(v11, static Logger.information);
      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        _os_log_impl(&dword_0, v12, v13, "Unable to create FLOWSchemaFLOWClientEvent to log flowEntityContextTier1", v14, 2u);
      }
    }
  }
}

Swift::Void __swiftcall PegasusFlowEventLogger.logInformationPluginPreprocessEvent()()
{
  v1 = v0;
  v2 = [objc_allocWithZone(FLOWSchemaFLOWInformationPluginContext) init];
  if (v2)
  {
    v3 = *(v0 + 64);
    v4 = *(v1 + 72);
    v17 = v2;
    v5 = String._bridgeToObjectiveC()();
    [v17 setExecutedPegasusDomain:v5];

    [v17 setEventType:*(v1 + 80)];
    v6 = [objc_allocWithZone(FLOWSchemaFLOWDomainContext) init];
    if (v6)
    {
      v7 = v6;
      [v6 setInformationPluginContext:v17];
      type metadata accessor for SiriKitEvent();
      *(swift_allocObject() + 16) = v7;

      v8 = v7;
      SiriKitEvent.__allocating_init(stateType:taskType:statusReason:_:)();
      v9 = *(v1 + 56);
      __swift_project_boxed_opaque_existential_1((v1 + 24), *(v1 + 48));
      dispatch thunk of SiriKitEventSending.send(_:)();

      return;
    }

    if (one-time initialization token for information != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    __swift_project_value_buffer(v13, static Logger.information);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_0, v14, v15, "Unable to create FLOWSchemaFLOWDomainContext to log info plugin domain and type", v16, 2u);
    }
  }

  else
  {
    if (one-time initialization token for information != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    __swift_project_value_buffer(v10, static Logger.information);
    v17 = Logger.logObject.getter();
    v11 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v17, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_0, v17, v11, "Unable to create FLOWSchemaFLOWInformationPluginContext to log info plugin domain and type", v12, 2u);
    }
  }
}

id PegasusFlowEventLogger.makeFlowObject<A>(from:ofType:)(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 == 15)
  {
    goto LABEL_11;
  }

  v2 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v2)
    {
      if ((a2 & 0xFF000000000000) == 0)
      {
        goto LABEL_9;
      }

LABEL_17:
      v14 = a1;
      v15 = a2;
      v16 = objc_allocWithZone(swift_getObjCClassFromMetadata());
      isa = Data._bridgeToObjectiveC()().super.isa;
      v18 = [v16 initWithData:isa];

      outlined consume of Data?(v14, v15);
      return v18;
    }

    if (a1 == a1 >> 32)
    {
      goto LABEL_11;
    }

LABEL_16:
    v12 = a1;
    v13 = a2;
    outlined copy of Data?(a1, a2);
    a1 = v12;
    a2 = v13;
    goto LABEL_17;
  }

  if (v2 != 2)
  {
LABEL_9:
    outlined consume of Data?(a1, a2);
    goto LABEL_11;
  }

  if (*(a1 + 16) != *(a1 + 24))
  {
    goto LABEL_16;
  }

LABEL_11:
  if (one-time initialization token for information != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Logger.information);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v19 = v7;
    *v6 = 136315138;
    swift_getMetatypeMetadata();
    v8 = String.init<A>(describing:)();
    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, &v19);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_0, v4, v5, "No data of type %s included in the pommes response for SELF FlowTask logging", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
  }

  return 0;
}

uint64_t PegasusFlowEventLogger.deinit()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 24));
  v1 = *(v0 + 72);

  return v0;
}

uint64_t PegasusFlowEventLogger.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 24));
  v1 = *(v0 + 72);

  return swift_deallocClassInstance();
}

uint64_t outlined init with copy of SiriKitReliabilityCodes?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow0aB16ReliabilityCodesOSgMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_47EC4()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t partial apply for closure #1 in PegasusFlowEventLogger.logGenericFlowStepEvent(stateType:parameterName:statusReason:statusReasonDescription:taskType:)(uint64_t *a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  v7 = v1[7];
  return closure #1 in PegasusFlowEventLogger.logGenericFlowStepEvent(stateType:parameterName:statusReason:statusReasonDescription:taskType:)(a1);
}

uint64_t partial apply for closure #1 in PegasusFlowEventLogger.logFlowEventsFromPommesResponse()@<X0>(uint64_t a1@<X8>)
{
  result = (*(*v1 + 136))();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  return result;
}

uint64_t outlined destroy of SiriKitReliabilityCodes?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow0aB16ReliabilityCodesOSgMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

char *_sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSaySo18FLOWSchemaFLOWStepCG_yts5NeverOTg50127_s21InformationFlowPlugin07PegasusB11EventLoggerC03logdb4StepE18FromPommesResponseSSSg8taskType_Sb010isTerminalH6LoggedtyFySo18dE6CXEfU_SSSo0d9FLOWStateV0VSb0hI6Plugin0kimN0CTf1cn_nTf4nnnng_n(unint64_t a1, uint64_t *a2, unsigned int *a3, _BYTE *a4, void *a5)
{
  if (a1 >> 62)
  {
    goto LABEL_34;
  }

  v7 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  while (1)
  {
    if (!v7)
    {
      return &_swiftEmptyArrayStorage;
    }

    v8 = a1;
    result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7 & ~(v7 >> 63), 0);
    if (v7 < 0)
    {
      break;
    }

    v43 = v5;
    v49 = v8 & 0xC000000000000001;
    a1 = type metadata accessor for SiriKitEvent();
    v10 = v8;
    v46 = v7;
    v11 = 0;
    v44 = v8 & 0xFFFFFFFFFFFFFF8;
    p_base_props = &SportsPersonalizationEntryPoint.base_props;
    v47 = v10;
    v48 = a3;
    while (!__OFADD__(v11, 1))
    {
      if (v49)
      {
        v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v11 >= *(v44 + 16))
        {
          goto LABEL_33;
        }

        v13 = *(v10 + 8 * v11 + 32);
      }

      v14 = v13;
      v15 = [v13 p:v43 base:?props[221]];
      v52 = v11 + 1;
      if (v15 && (v16 = v15, v17 = [v15 currentTaskName], v16, v17))
      {
        v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v20 = v19;
      }

      else
      {
        v18 = 0x54746E6572727543;
        v20 = 0xEB000000006B7361;
      }

      v21 = a2[1];
      *a2 = v18;
      a2[1] = v20;

      v22 = [v14 p_base_props[221]];
      if (v22)
      {
        v23 = v22;
        v24 = [v22 flowStateType];

        *a3 = v24;
        if (v24 <= 5 && ((1 << v24) & 0x34) != 0 || v24 == 128)
        {
          *a4 = 1;
        }
      }

      else
      {
        *a3 = 152;
      }

      v25 = [v14 p_base_props[221]];
      if (v25 && (v26 = v25, v27 = [v25 currentTaskType], v26, v27))
      {
        v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v29 = v28;
      }

      else
      {
        v51 = 0;
        v29 = 0;
      }

      v30 = [v14 p_base_props[221]];
      if (v30)
      {
        v31 = v30;
        v32 = [v30 flowStateReason];

        if (v32)
        {
          [v32 statusReason];
        }
      }

      v33 = *a3;
      v35 = *a2;
      v34 = a2[1];
      v36 = swift_allocObject();
      v36[2] = v14;
      v36[3] = v51;
      v36[4] = v29;

      v37 = v14;
      SiriKitEvent.__allocating_init(stateType:taskType:statusReason:_:)();
      v38 = a5[7];
      __swift_project_boxed_opaque_existential_1(a5 + 3, a5[6]);
      dispatch thunk of SiriKitEventSending.send(_:)();

      v40 = *(&_swiftEmptyArrayStorage + 2);
      v39 = *(&_swiftEmptyArrayStorage + 3);
      v41 = v40 + 1;
      if (v40 >= v39 >> 1)
      {
        a1 = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v39 > 1), v40 + 1, 1);
      }

      *(&_swiftEmptyArrayStorage + 2) = v41;
      ++v11;
      v10 = v47;
      a3 = v48;
      p_base_props = (&SportsPersonalizationEntryPoint + 64);
      if (v52 == v46)
      {
        return &_swiftEmptyArrayStorage;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    v42 = a1;
    v7 = _CocoaArrayWrapper.endIndex.getter();
    a1 = v42;
  }

  __break(1u);
  return result;
}

uint64_t sub_483E0()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t partial apply for closure #1 in PegasusFlowEventLogger.logInformationPluginPreprocessEvent()(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *a1;
  v4 = v2;
  return dispatch thunk of SiriKitEvent.SiriKitEventBuilder.domainContext.setter();
}

uint64_t sub_4846C()
{
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t partial apply for closure #1 in closure #1 in PegasusFlowEventLogger.logPegasusFlowStepEventFromPommesResponse()(uint64_t *a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  return closure #1 in closure #1 in PegasusFlowEventLogger.logPegasusFlowStepEventFromPommesResponse()(a1, *(v1 + 16));
}

uint64_t closure #1 in static ResultParamBuilder.displayPaginationParams.getter()
{
  WindowedPaginationParameters.isFirstWindow.setter();
  WindowedPaginationParameters.isConclusion.setter();
  WindowedPaginationParameters.isNextWindowLastWindow.setter();
  WindowedPaginationParameters.nextWindowItemCount.setter();
  return WindowedPaginationParameters.isLastWindow.setter();
}

uint64_t ResultParamBuilder.content.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 28);
  v5 = *(a1 + 16);
  v6 = type metadata accessor for Optional();
  v7 = *(*(v6 - 8) + 16);

  return v7(a2, v2 + v4, v6);
}

uint64_t ResultParamBuilder.init(parameters:content:contentFieldName:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  *a5 = a1;
  v9 = type metadata accessor for ResultParamBuilder();
  v10 = *(v9 + 28);
  v11 = type metadata accessor for Optional();
  result = (*(*(v11 - 8) + 32))(&a5[v10], a2, v11);
  v13 = &a5[*(v9 + 32)];
  *v13 = a3;
  *(v13 + 1) = a4;
  return result;
}

uint64_t ResultParamBuilder.init(parameters:contentFieldName:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v10 = type metadata accessor for Optional();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v21 - v16;
  v23 = a1;
  specialized Dictionary._Variant.removeValue(forKey:)(a2, a3, &v22);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  v18 = swift_dynamicCast();
  (*(*(a4 - 8) + 56))(v17, v18 ^ 1u, 1, a4);
  v19 = v23;
  (*(v11 + 16))(v15, v17, v10);
  ResultParamBuilder.init(parameters:content:contentFieldName:)(v19, v15, a2, a3, a5);
  return (*(v11 + 8))(v17, v10);
}

uint64_t ResultParamBuilder.patternParameters(for:)(uint64_t a1, uint64_t a2)
{
  v14 = *v2;
  v12 = *(a2 + 16);
  v5 = v12;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v11);
  (*(*(v5 - 8) + 16))(boxed_opaque_existential_1, a1, v5);
  v7 = (v2 + *(a2 + 32));
  v8 = *v7;
  v9 = v7[1];

  specialized Dictionary._Variant.updateValue(_:forKey:)(v11, v8, v9, v13);
  outlined destroy of Any?(v13);
  return v14;
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
    v12 = *v4;
    v15 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      specialized _NativeDictionary.copy()();
      v12 = v15;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    outlined init with take of Any((*(v12 + 56) + 32 * v9), a3);
    specialized _NativeDictionary._delete(at:)(v9, v12);
    *v4 = v12;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t specialized _NativeDictionary._delete(at:)(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v10 = *(a2 + 40);
      v11 = (*(a2 + 48) + 16 * v6);
      v12 = *v11;
      v13 = v11[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      v14 = Hasher._finalize()();

      v15 = v14 & v7;
      if (v3 >= v8)
      {
        if (v15 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v15 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v15)
      {
LABEL_10:
        v16 = *(a2 + 48);
        v17 = (v16 + 16 * v3);
        v18 = (v16 + 16 * v6);
        if (v3 != v6 || v17 >= v18 + 1)
        {
          *v17 = *v18;
        }

        v19 = *(a2 + 56);
        v20 = (v19 + 32 * v3);
        v21 = (v19 + 32 * v6);
        if (v3 != v6 || v20 >= v21 + 2)
        {
          v9 = v21[1];
          *v20 = *v21;
          v20[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t specialized Dictionary._Variant.updateValue(_:forKey:)@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v6 = v4;
  v11 = *v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *v4;
  v14 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v16 = v13[2];
  v17 = (v15 & 1) == 0;
  v18 = __OFADD__(v16, v17);
  v19 = v16 + v17;
  if (v18)
  {
    __break(1u);
    goto LABEL_9;
  }

  v5 = v15;
  if (v13[3] < v19)
  {
    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v19, isUniquelyReferenced_nonNull_native);
    v14 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
    if ((v5 & 1) == (v20 & 1))
    {
      goto LABEL_6;
    }

    v14 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_9:
    v23 = v14;
    specialized _NativeDictionary.copy()();
    v14 = v23;
    if (v5)
    {
      goto LABEL_7;
    }

LABEL_10:
    specialized _NativeDictionary._insert(at:key:value:)(v14, a2, a3, a1, v13);
    *a4 = 0u;
    a4[1] = 0u;

    goto LABEL_11;
  }

LABEL_6:
  if ((v5 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_7:
  v21 = 32 * v14;
  outlined init with take of Any((v13[7] + 32 * v14), a4);
  result = outlined init with take of Any(a1, (v13[7] + v21));
LABEL_11:
  *v6 = v13;
  return result;
}

void type metadata completion function for ResultParamBuilder(uint64_t a1)
{
  type metadata accessor for [String : Any]();
  if (v2 <= 0x3F)
  {
    v3 = *(a1 + 16);
    type metadata accessor for Optional();
    if (v4 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t getEnumTagSinglePayload for ResultParamBuilder(uint64_t *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (v5)
  {
    v6 = v5 - 1;
  }

  else
  {
    v6 = 0;
  }

  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v4 + 80);
  v9 = 7;
  if (!v5)
  {
    v9 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_33;
  }

  v10 = ((v9 + *(*(*(a3 + 16) - 8) + 64) + ((v8 + 8) & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 16;
  v11 = a2 - v7;
  v12 = v10 & 0xFFFFFFF8;
  if ((v10 & 0xFFFFFFF8) != 0)
  {
    v13 = 2;
  }

  else
  {
    v13 = v11 + 1;
  }

  if (v13 >= 0x10000)
  {
    v14 = 4;
  }

  else
  {
    v14 = 2;
  }

  if (v13 < 0x100)
  {
    v14 = 1;
  }

  if (v13 >= 2)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  if (v15 > 1)
  {
    if (v15 == 2)
    {
      v16 = *(a1 + v10);
      if (!v16)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v16 = *(a1 + v10);
      if (!v16)
      {
        goto LABEL_33;
      }
    }
  }

  else if (!v15 || (v16 = *(a1 + v10)) == 0)
  {
LABEL_33:
    if ((v6 & 0x80000000) != 0)
    {
      v20 = (*(v4 + 48))((a1 + v8 + 8) & ~v8);
      if (v20 >= 2)
      {
        return v20 - 1;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v19 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v19) = -1;
      }

      return (v19 + 1);
    }
  }

  v18 = v16 - 1;
  if (v12)
  {
    v18 = 0;
    LODWORD(v12) = *a1;
  }

  return v7 + (v12 | v18) + 1;
}

void storeEnumTagSinglePayload for ResultParamBuilder(void *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = v7 - 1;
  if (!v7)
  {
    v8 = 0;
  }

  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = v8;
  }

  v10 = *(v6 + 80);
  v11 = *(*(*(a4 + 16) - 8) + 64);
  if (!v7)
  {
    ++v11;
  }

  v12 = ((v11 + ((v10 + 8) & ~v10) + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v9 < a3)
  {
    v13 = a3 - v9;
    if (((v11 + ((v10 + 8) & ~v10) + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v14 = v13 + 1;
    }

    else
    {
      v14 = 2;
    }

    if (v14 >= 0x10000)
    {
      v15 = 4;
    }

    else
    {
      v15 = 2;
    }

    if (v14 < 0x100)
    {
      v15 = 1;
    }

    if (v14 >= 2)
    {
      v5 = v15;
    }

    else
    {
      v5 = 0;
    }
  }

  if (a2 > v9)
  {
    if (((v11 + ((v10 + 8) & ~v10) + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v16 = a2 - v9;
    }

    else
    {
      v16 = 1;
    }

    if (((v11 + ((v10 + 8) & ~v10) + 7) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v17 = ~v9 + a2;
      v18 = a1;
      bzero(a1, v12);
      a1 = v18;
      *v18 = v17;
    }

    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(a1 + v12) = v16;
      }

      else
      {
        *(a1 + v12) = v16;
      }
    }

    else if (v5)
    {
      *(a1 + v12) = v16;
    }

    return;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(a1 + v12) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_38;
    }

    *(a1 + v12) = 0;
LABEL_37:
    if (!a2)
    {
      return;
    }

    goto LABEL_38;
  }

  if (!v5)
  {
    goto LABEL_37;
  }

  *(a1 + v12) = 0;
  if (!a2)
  {
    return;
  }

LABEL_38:
  if ((v8 & 0x80000000) != 0)
  {
    v20 = ((a1 + v10 + 8) & ~v10);
    if (v8 >= a2)
    {
      v24 = *(v6 + 56);
      v25 = a2 + 1;
      v26 = (a1 + v10 + 8) & ~v10;

      v24(v26, v25);
    }

    else
    {
      if (v11 <= 3)
      {
        v21 = ~(-1 << (8 * v11));
      }

      else
      {
        v21 = -1;
      }

      if (v11)
      {
        v22 = v21 & (~v8 + a2);
        if (v11 <= 3)
        {
          v23 = v11;
        }

        else
        {
          v23 = 4;
        }

        bzero(v20, v11);
        if (v23 > 2)
        {
          if (v23 == 3)
          {
            *v20 = v22;
            v20[2] = BYTE2(v22);
          }

          else
          {
            *v20 = v22;
          }
        }

        else if (v23 == 1)
        {
          *v20 = v22;
        }

        else
        {
          *v20 = v22;
        }
      }
    }
  }

  else
  {
    if ((a2 & 0x80000000) != 0)
    {
      v19 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v19 = a2 - 1;
    }

    *a1 = v19;
  }
}

uint64_t one-time initialization function for kFlowEntryPoints()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy21InformationFlowPlugin0E10EntryPoint_pGMd, _ss23_ContiguousArrayStorageCy21InformationFlowPlugin0E10EntryPoint_pGMR);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_B9FF0;
  v1 = type metadata accessor for SportsPersonalizationEntryPoint();
  v2 = swift_allocObject();
  v8 = type metadata accessor for SportsResolver();
  v9 = &protocol witness table for SportsResolver;
  __swift_allocate_boxed_opaque_existential_1(&v7);
  SportsResolver.init()();
  outlined init with take of SiriSuggestionsBroker(&v7, v2 + 16);
  *(v2 + 80) = &type metadata for Features;
  *(v2 + 88) = &protocol witness table for Features;
  *(v2 + 56) = 1;
  v3 = type metadata accessor for IntentDonator();
  v4 = swift_allocObject();
  *(v2 + 120) = v3;
  *(v2 + 128) = &protocol witness table for IntentDonator;
  *(v2 + 96) = v4;
  *(v0 + 56) = v1;
  *(v0 + 64) = &protocol witness table for SportsPersonalizationEntryPoint;
  *(v0 + 32) = v2;
  v5 = type metadata accessor for SuggestionsEntryPoint();
  result = SuggestionsEntryPoint.__allocating_init()();
  *(v0 + 96) = v5;
  *(v0 + 104) = &protocol witness table for SuggestionsEntryPoint;
  *(v0 + 72) = result;
  *(v0 + 136) = &type metadata for InformationRoutingEntryPoint;
  *(v0 + 144) = &protocol witness table for InformationRoutingEntryPoint;
  static InformationRootFlow.kFlowEntryPoints = v0;
  return result;
}

uint64_t InformationRootFlow.__allocating_init(flowEntryPoints:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v14 - v5;
  v7 = *(v1 + 48);
  v8 = *(v1 + 52);
  v9 = swift_allocObject();
  v10 = OBJC_IVAR____TtC21InformationFlowPlugin19InformationRootFlow_originalInput;
  v11 = type metadata accessor for Input();
  v12 = *(*(v11 - 8) + 56);
  v12(v9 + v10, 1, 1, v11);
  v12(v6, 1, 1, v11);
  swift_beginAccess();
  outlined assign with take of Input?(v6, v9 + v10);
  swift_endAccess();
  *(v9 + OBJC_IVAR____TtC21InformationFlowPlugin19InformationRootFlow_flowEntryPoints) = a1;
  return v9;
}

uint64_t InformationRootFlow.init(flowEntryPoints:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v11 - v5;
  v7 = OBJC_IVAR____TtC21InformationFlowPlugin19InformationRootFlow_originalInput;
  v8 = type metadata accessor for Input();
  v9 = *(*(v8 - 8) + 56);
  v9(v1 + v7, 1, 1, v8);
  v9(v6, 1, 1, v8);
  swift_beginAccess();
  outlined assign with take of Input?(v6, v1 + v7);
  swift_endAccess();
  *(v1 + OBJC_IVAR____TtC21InformationFlowPlugin19InformationRootFlow_flowEntryPoints) = a1;
  return v1;
}

uint64_t outlined assign with take of Input?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

BOOL InformationRootFlow.on(input:)(uint64_t a1)
{
  v30 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
  v2 = *(*(v1 - 8) + 64);
  v3 = __chkstk_darwin(v1 - 8);
  v31 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v34 = &v30 - v5;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for DispatchQoS();
  v11 = *(v32 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v32);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchQoS.QoSClass();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for OS_dispatch_queue();
  (*(v16 + 104))(v19, enum case for DispatchQoS.QoSClass.userInitiated(_:), v15);
  v20 = static OS_dispatch_queue.global(qos:)();
  (*(v16 + 8))(v19, v15);
  aBlock[4] = closure #1 in InformationRootFlow.on(input:);
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_1;
  v21 = _Block_copy(aBlock);
  static DispatchQoS.unspecified.getter();
  v35 = _swiftEmptyArrayStorage;
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, &type metadata accessor for DispatchWorkItemFlags);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  v22 = v33;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v21);

  (*(v7 + 8))(v10, v6);
  (*(v11 + 8))(v14, v32);
  v23 = OBJC_IVAR____TtC21InformationFlowPlugin19InformationRootFlow_originalInput;
  swift_beginAccess();
  v24 = v34;
  outlined init with copy of Input?(v22 + v23, v34);
  v25 = type metadata accessor for Input();
  v26 = *(v25 - 8);
  v27 = (*(v26 + 48))(v24, 1, v25);
  outlined destroy of Input?(v24);
  if (v27 == 1)
  {
    v28 = v31;
    (*(v26 + 16))(v31, v30, v25);
    (*(v26 + 56))(v28, 0, 1, v25);
    swift_beginAccess();
    outlined assign with take of Input?(v28, v22 + v23);
    swift_endAccess();
  }

  return v27 == 1;
}

unint64_t type metadata accessor for OS_dispatch_queue()
{
  result = lazy cache variable for type metadata for OS_dispatch_queue;
  if (!lazy cache variable for type metadata for OS_dispatch_queue)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for OS_dispatch_queue);
  }

  return result;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t outlined init with copy of Input?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of Input?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t InformationRootFlow.execute()(uint64_t a1)
{
  v2[30] = a1;
  v2[31] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR) - 8) + 64) + 15;
  v2[32] = swift_task_alloc();
  v4 = type metadata accessor for Input();
  v2[33] = v4;
  v5 = *(v4 - 8);
  v2[34] = v5;
  v6 = *(v5 + 64) + 15;
  v2[35] = swift_task_alloc();
  v2[36] = swift_task_alloc();

  return _swift_task_switch(InformationRootFlow.execute(), 0, 0);
}

{
  v2 = *(*v1 + 336);
  v4 = *v1;
  *(*v1 + 344) = a1;

  return _swift_task_switch(InformationRootFlow.execute(), 0, 0);
}

void InformationRootFlow.execute()()
{
  v61 = v0;
  v1 = v0[33];
  v2 = v0[34];
  v4 = v0[31];
  v3 = v0[32];
  v5 = OBJC_IVAR____TtC21InformationFlowPlugin19InformationRootFlow_originalInput;
  swift_beginAccess();
  outlined init with copy of Input?(v4 + v5, v3);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    outlined destroy of Input?(v0[32]);
    if (one-time initialization token for information != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, static Logger.information);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_0, v7, v8, "Information root flow not called as root flow", v9, 2u);
    }

    v10 = v0[30];

    static ExecuteResponse.complete()();
LABEL_19:
    v49 = v0[35];
    v48 = v0[36];
    v50 = v0[32];

    v51 = v0[1];

    v51();
    return;
  }

  (*(v0[34] + 32))(v0[36], v0[32], v0[33]);
  if (one-time initialization token for information != -1)
  {
    swift_once();
  }

  v11 = v0[35];
  v12 = v0[36];
  v13 = v0[33];
  v14 = v0[34];
  v15 = type metadata accessor for Logger();
  v0[37] = __swift_project_value_buffer(v15, static Logger.information);
  (*(v14 + 16))(v11, v12, v13);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.debug.getter();
  v18 = os_log_type_enabled(v16, v17);
  v20 = v0[34];
  v19 = v0[35];
  v21 = v0[33];
  if (v18)
  {
    v22 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    v60 = v58;
    *v22 = 136315138;
    lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type Input and conformance Input, &type metadata accessor for Input);
    v23 = dispatch thunk of CustomStringConvertible.description.getter();
    v25 = v24;
    v26 = *(v20 + 8);
    v26(v19, v21);
    v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v25, &v60);

    *(v22 + 4) = v27;
    _os_log_impl(&dword_0, v16, v17, "InformationRootFlow executing with input: %s", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v58);
  }

  else
  {

    v26 = *(v20 + 8);
    v26(v19, v21);
  }

  v0[38] = v26;
  v28 = *(v0[31] + OBJC_IVAR____TtC21InformationFlowPlugin19InformationRootFlow_flowEntryPoints);
  v0[39] = v28;
  v29 = *(v28 + 16);
  v0[40] = v29;
  if (!v29)
  {
    v39 = v0[37];
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&dword_0, v40, v41, "InformationRootFlow not sure what to do with this input", v42, 2u);
    }

    v43 = v0[38];
    v44 = v0[36];
    v45 = v0[33];
    v46 = v0[34];
    v47 = v0[30];

    static ExecuteResponse.complete()();
    v43(v44, v45);
    goto LABEL_19;
  }

  v0[41] = 0;
  if (*(v28 + 16))
  {
    v30 = v0[37];
    outlined init with copy of OutputPublisherAsync(v28 + 32, (v0 + 2));
    outlined init with copy of OutputPublisherAsync((v0 + 2), (v0 + 7));
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v60 = v34;
      *v33 = 136315138;
      outlined init with copy of OutputPublisherAsync((v0 + 7), (v0 + 22));
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s21InformationFlowPlugin0B10EntryPoint_pMd, &_s21InformationFlowPlugin0B10EntryPoint_pMR);
      v35 = String.init<A>(describing:)();
      v37 = v36;
      __swift_destroy_boxed_opaque_existential_0Tm(v0 + 7);
      v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v37, &v60);

      *(v33 + 4) = v38;
      _os_log_impl(&dword_0, v31, v32, "Offering parse to entry point: %s", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v34);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_0Tm(v0 + 7);
    }

    v52 = v0[5];
    v53 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v52);
    v54 = *(v53 + 8);
    v59 = (v54 + *v54);
    v55 = v54[1];
    v56 = swift_task_alloc();
    v0[42] = v56;
    *v56 = v0;
    v56[1] = InformationRootFlow.execute();
    v57 = v0[36];

    v59(v57, v52, v53);
  }

  else
  {
    __break(1u);
  }
}

uint64_t InformationRootFlow.execute()()
{
  v50 = v0;
  if (v0[43])
  {
    v1 = v0[37];
    outlined init with copy of OutputPublisherAsync((v0 + 2), (v0 + 12));
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v49 = v5;
      *v4 = 136315138;
      outlined init with copy of OutputPublisherAsync((v0 + 12), (v0 + 17));
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s21InformationFlowPlugin0B10EntryPoint_pMd, &_s21InformationFlowPlugin0B10EntryPoint_pMR);
      v6 = String.init<A>(describing:)();
      v8 = v7;
      __swift_destroy_boxed_opaque_existential_0Tm(v0 + 12);
      v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v8, &v49);

      *(v4 + 4) = v9;
      _os_log_impl(&dword_0, v2, v3, "Using entry point: %s", v4, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v5);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_0Tm(v0 + 12);
    }

    v22 = v0[38];
    v23 = v0[36];
    v24 = v0[33];
    v25 = v0[34];
    v26 = v0[30];
    static ExecuteResponse.complete(next:)();

    v22(v23, v24);
    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
LABEL_10:
    v28 = v0[35];
    v27 = v0[36];
    v29 = v0[32];

    v30 = v0[1];

    return v30();
  }

  v10 = v0[40];
  v11 = v0[41] + 1;
  result = __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  if (v11 == v10)
  {
    v13 = v0[37];
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_0, v14, v15, "InformationRootFlow not sure what to do with this input", v16, 2u);
    }

    v17 = v0[38];
    v18 = v0[36];
    v19 = v0[33];
    v20 = v0[34];
    v21 = v0[30];

    static ExecuteResponse.complete()();
    v17(v18, v19);
    goto LABEL_10;
  }

  v31 = v0[41] + 1;
  v0[41] = v31;
  v32 = v0[39];
  if (v31 >= *(v32 + 16))
  {
    __break(1u);
  }

  else
  {
    v33 = v0[37];
    outlined init with copy of OutputPublisherAsync(v32 + 40 * v31 + 32, (v0 + 2));
    outlined init with copy of OutputPublisherAsync((v0 + 2), (v0 + 7));
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v49 = v37;
      *v36 = 136315138;
      outlined init with copy of OutputPublisherAsync((v0 + 7), (v0 + 22));
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s21InformationFlowPlugin0B10EntryPoint_pMd, &_s21InformationFlowPlugin0B10EntryPoint_pMR);
      v38 = String.init<A>(describing:)();
      v40 = v39;
      __swift_destroy_boxed_opaque_existential_0Tm(v0 + 7);
      v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, v40, &v49);

      *(v36 + 4) = v41;
      _os_log_impl(&dword_0, v34, v35, "Offering parse to entry point: %s", v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v37);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_0Tm(v0 + 7);
    }

    v42 = v0[5];
    v43 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v42);
    v44 = *(v43 + 8);
    v48 = (v44 + *v44);
    v45 = v44[1];
    v46 = swift_task_alloc();
    v0[42] = v46;
    *v46 = v0;
    v46[1] = InformationRootFlow.execute();
    v47 = v0[36];

    return v48(v47, v42, v43);
  }

  return result;
}

uint64_t InformationRootFlow.execute(completion:)()
{
  type metadata accessor for InformationRootFlow();
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type InformationRootFlow and conformance InformationRootFlow, type metadata accessor for InformationRootFlow);
  return Flow.deferToExecuteAsync(_:)();
}

uint64_t InformationRootFlow.deinit()
{
  outlined destroy of Input?(v0 + OBJC_IVAR____TtC21InformationFlowPlugin19InformationRootFlow_originalInput);
  v1 = *(v0 + OBJC_IVAR____TtC21InformationFlowPlugin19InformationRootFlow_flowEntryPoints);

  return v0;
}

uint64_t InformationRootFlow.__deallocating_deinit()
{
  outlined destroy of Input?(v0 + OBJC_IVAR____TtC21InformationFlowPlugin19InformationRootFlow_originalInput);
  v1 = *(v0 + OBJC_IVAR____TtC21InformationFlowPlugin19InformationRootFlow_flowEntryPoints);

  v2 = *(*v0 + 48);
  v3 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t protocol witness for Flow.execute() in conformance InformationRootFlow(uint64_t a1)
{
  v4 = *(**v1 + 136);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = protocol witness for Flow.execute() in conformance NavigateToShimFlow;

  return v8(a1);
}

uint64_t protocol witness for Flow.exitValue.getter in conformance InformationRootFlow(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for InformationRootFlow();

  return Flow<>.exitValue.getter(v3, a2);
}

uint64_t type metadata accessor for InformationRootFlow()
{
  result = type metadata singleton initialization cache for InformationRootFlow;
  if (!type metadata singleton initialization cache for InformationRootFlow)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(unint64_t *a1, void (*a2)(uint64_t))
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

void type metadata completion function for InformationRootFlow()
{
  type metadata accessor for Input?();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void type metadata accessor for Input?()
{
  if (!lazy cache variable for type metadata for Input?)
  {
    type metadata accessor for Input();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Input?);
    }
  }
}

void SportsProperty.apply(to:)(void **a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = *a1;
  v6 = String._bridgeToObjectiveC()();
  [v5 *off_DD758[a4]];
}

uint64_t specialized Parse.DirectInvocation.get<A>(protoMessage:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for BinaryDecodingOptions();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v8 = Parse.DirectInvocation.userData.getter();
  if (v8)
  {
    v9 = v8;
    if (*(v8 + 16) && (v10 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2), (v11 & 1) != 0))
    {
      outlined init with copy of Any(*(v9 + 56) + 32 * v10, v25);

      if (swift_dynamicCast())
      {
        v13 = v27;
        v12 = v28;
        v14 = type metadata accessor for Apple_Parsec_Responseframework_Engagement_Context();
        v26 = 0;
        memset(v25, 0, sizeof(v25));
        outlined copy of Data._Representation(v13, v12);
        BinaryDecodingOptions.init()();
        lazy protocol witness table accessor for type TapEngagementHandlingFlow and conformance TapEngagementHandlingFlow(&lazy protocol witness table cache variable for type Apple_Parsec_Responseframework_Engagement_Context and conformance Apple_Parsec_Responseframework_Engagement_Context, &type metadata accessor for Apple_Parsec_Responseframework_Engagement_Context);
        Message.init(serializedData:extensions:partial:options:)();
        outlined consume of Data._Representation(v13, v12);
        v21 = *(*(v14 - 8) + 56);
        v22 = a3;
        v23 = 0;
        v24 = v14;
        return v21(v22, v23, 1, v24);
      }
    }

    else
    {
    }
  }

  if (one-time initialization token for information != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  __swift_project_value_buffer(v15, static Logger.information);

  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *&v25[0] = v19;
    *v18 = 136315138;
    *(v18 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, v25);
    _os_log_impl(&dword_0, v16, v17, "Parse.DirectInvocation: No '%s' key found in DI Payload.", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v19);
  }

  v24 = type metadata accessor for Apple_Parsec_Responseframework_Engagement_Context();
  v21 = *(*(v24 - 8) + 56);
  v22 = a3;
  v23 = 1;
  return v21(v22, v23, 1, v24);
}

{
  v6 = type metadata accessor for BinaryDecodingOptions();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v8 = Parse.DirectInvocation.userData.getter();
  if (v8)
  {
    v9 = v8;
    if (*(v8 + 16) && (v10 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2), (v11 & 1) != 0))
    {
      outlined init with copy of Any(*(v9 + 56) + 32 * v10, v25);

      if (swift_dynamicCast())
      {
        v13 = v27;
        v12 = v28;
        Context = type metadata accessor for Apple_Parsec_Search_PegasusQueryContext();
        v26 = 0;
        memset(v25, 0, sizeof(v25));
        outlined copy of Data._Representation(v13, v12);
        BinaryDecodingOptions.init()();
        lazy protocol witness table accessor for type TapEngagementHandlingFlow and conformance TapEngagementHandlingFlow(&lazy protocol witness table cache variable for type Apple_Parsec_Search_PegasusQueryContext and conformance Apple_Parsec_Search_PegasusQueryContext, &type metadata accessor for Apple_Parsec_Search_PegasusQueryContext);
        Message.init(serializedData:extensions:partial:options:)();
        outlined consume of Data._Representation(v13, v12);
        v21 = *(*(Context - 8) + 56);
        v22 = a3;
        v23 = 0;
        v24 = Context;
        return v21(v22, v23, 1, v24);
      }
    }

    else
    {
    }
  }

  if (one-time initialization token for information != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  __swift_project_value_buffer(v15, static Logger.information);

  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *&v25[0] = v19;
    *v18 = 136315138;
    *(v18 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, v25);
    _os_log_impl(&dword_0, v16, v17, "Parse.DirectInvocation: No '%s' key found in DI Payload.", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v19);
  }

  v24 = type metadata accessor for Apple_Parsec_Search_PegasusQueryContext();
  v21 = *(*(v24 - 8) + 56);
  v22 = a3;
  v23 = 1;
  return v21(v22, v23, 1, v24);
}

uint64_t TapEngagementHandlingFlow.__allocating_init(invocation:outputPublisherAsync:pommesEngagement:patternExecutor:)(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v29 = a2;
  v9 = *(v5 + 48);
  v10 = *(v5 + 52);
  v11 = swift_allocObject();
  v13 = a3[3];
  v12 = a3[4];
  v14 = __swift_mutable_project_boxed_opaque_existential_1(a3, v13);
  v15 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v14);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v18 + 16))(v17);
  v20 = a4[3];
  v19 = a4[4];
  v21 = __swift_mutable_project_boxed_opaque_existential_1(a4, v20);
  v22 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v21);
  v24 = &v28 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v25 + 16))(v24);
  v26 = specialized TapEngagementHandlingFlow.init(invocation:outputPublisherAsync:pommesEngagement:patternExecutor:)(a1, v29, v17, v24, v11, v13, v20, v12, v19);
  __swift_destroy_boxed_opaque_existential_0Tm(a4);
  __swift_destroy_boxed_opaque_existential_0Tm(a3);
  return v26;
}

uint64_t TapEngagementHandlingFlow.init(invocation:outputPublisherAsync:pommesEngagement:patternExecutor:)(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v9 = a3[3];
  v8 = a3[4];
  v10 = __swift_mutable_project_boxed_opaque_existential_1(a3, v9);
  v11 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v10);
  v13 = v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v13);
  v16 = a4[3];
  v15 = a4[4];
  v17 = __swift_mutable_project_boxed_opaque_existential_1(a4, v16);
  v18 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v17);
  v20 = v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 16))(v20);
  v22 = specialized TapEngagementHandlingFlow.init(invocation:outputPublisherAsync:pommesEngagement:patternExecutor:)(a1, a2, v13, v20, v24[1], v9, v16, v8, v15);
  __swift_destroy_boxed_opaque_existential_0Tm(a4);
  __swift_destroy_boxed_opaque_existential_0Tm(a3);
  return v22;
}

uint64_t TapEngagementHandlingFlow.execute()()
{
  if (one-time initialization token for information != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.information);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "TapEngagementHandlingFlow: Processing Async Request in Execute method", v4, 2u);
  }

  v5 = *(v0 + 16);

  static ExecuteResponse.complete()();
  v6 = *(v0 + 8);

  return v6();
}

uint64_t TapEngagementHandlingFlow.execute(completion:)()
{
  type metadata accessor for TapEngagementHandlingFlow();
  lazy protocol witness table accessor for type TapEngagementHandlingFlow and conformance TapEngagementHandlingFlow(&lazy protocol witness table cache variable for type TapEngagementHandlingFlow and conformance TapEngagementHandlingFlow, type metadata accessor for TapEngagementHandlingFlow);
  return Flow.deferToExecuteAsync(_:)();
}

uint64_t TapEngagementHandlingFlow.deinit()
{
  v1 = OBJC_IVAR____TtC21InformationFlowPlugin25TapEngagementHandlingFlow_engagementContext;
  v2 = type metadata accessor for Apple_Parsec_Responseframework_Engagement_Context();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC21InformationFlowPlugin25TapEngagementHandlingFlow_pegasusContext;
  Context = type metadata accessor for Apple_Parsec_Search_PegasusQueryContext();
  (*(*(Context - 8) + 8))(v0 + v3, Context);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + OBJC_IVAR____TtC21InformationFlowPlugin25TapEngagementHandlingFlow_outputPublisherAsync));
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + OBJC_IVAR____TtC21InformationFlowPlugin25TapEngagementHandlingFlow_pommesEngagement));
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + OBJC_IVAR____TtC21InformationFlowPlugin25TapEngagementHandlingFlow_patternExecutor));
  return v0;
}

uint64_t TapEngagementHandlingFlow.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC21InformationFlowPlugin25TapEngagementHandlingFlow_engagementContext;
  v2 = type metadata accessor for Apple_Parsec_Responseframework_Engagement_Context();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC21InformationFlowPlugin25TapEngagementHandlingFlow_pegasusContext;
  Context = type metadata accessor for Apple_Parsec_Search_PegasusQueryContext();
  (*(*(Context - 8) + 8))(v0 + v3, Context);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + OBJC_IVAR____TtC21InformationFlowPlugin25TapEngagementHandlingFlow_outputPublisherAsync));
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + OBJC_IVAR____TtC21InformationFlowPlugin25TapEngagementHandlingFlow_pommesEngagement));
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + OBJC_IVAR____TtC21InformationFlowPlugin25TapEngagementHandlingFlow_patternExecutor));
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t protocol witness for Flow.execute() in conformance TapEngagementHandlingFlow(uint64_t a1)
{
  v4 = *(**v1 + 136);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = protocol witness for Flow.execute() in conformance NavigateToShimFlow;

  return v8(a1);
}

uint64_t protocol witness for Flow.exitValue.getter in conformance TapEngagementHandlingFlow(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for TapEngagementHandlingFlow();

  return Flow<>.exitValue.getter(v3, a2);
}

uint64_t specialized TapEngagementHandlingFlow.init(invocation:outputPublisherAsync:pommesEngagement:patternExecutor:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v59 = a5;
  v60 = a1;
  v61 = a2;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI020Apple_Parsec_Search_A12QueryContextVSgMd, &_s10PegasusAPI020Apple_Parsec_Search_A12QueryContextVSgMR);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v58 = &v54 - v16;
  Context = type metadata accessor for Apple_Parsec_Search_PegasusQueryContext();
  v56 = *(Context - 8);
  v57 = Context;
  v18 = *(v56 + 64);
  __chkstk_darwin(Context);
  v55 = &v54 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI49Apple_Parsec_Responseframework_Engagement_ContextVSgMd, &_s10PegasusAPI49Apple_Parsec_Responseframework_Engagement_ContextVSgMR);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8);
  v23 = &v54 - v22;
  v24 = type metadata accessor for Apple_Parsec_Responseframework_Engagement_Context();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  __chkstk_darwin(v24);
  v28 = &v54 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = a6;
  v67 = a8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v65);
  (*(*(a6 - 8) + 32))(boxed_opaque_existential_1, a3, a6);
  v63 = a7;
  v64 = a9;
  v30 = __swift_allocate_boxed_opaque_existential_1(&v62);
  (*(*(a7 - 8) + 32))(v30, a4, a7);
  if (one-time initialization token for information != -1)
  {
    swift_once();
  }

  v31 = type metadata accessor for Logger();
  __swift_project_value_buffer(v31, static Logger.information);
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    *v34 = 0;
    _os_log_impl(&dword_0, v32, v33, "TapEngagementHandlingFlow: Received Direct invocation", v34, 2u);
  }

  v35 = v60;
  specialized Parse.DirectInvocation.get<A>(protoMessage:)(0xD000000000000011, 0x80000000000BE1A0, v23);
  if ((*(v25 + 48))(v23, 1, v24) == 1)
  {
    v36 = &_s10PegasusAPI49Apple_Parsec_Responseframework_Engagement_ContextVSgMd;
    v37 = &_s10PegasusAPI49Apple_Parsec_Responseframework_Engagement_ContextVSgMR;
    v38 = v23;
  }

  else
  {
    v39 = *(v25 + 32);
    v39(v28, v23, v24);
    v40 = v58;
    specialized Parse.DirectInvocation.get<A>(protoMessage:)(0x4373757361676570, 0xEE00747865746E6FLL, v58);
    v41 = v56;
    v42 = v57;
    if ((*(v56 + 48))(v40, 1, v57) != 1)
    {
      v50 = type metadata accessor for Parse.DirectInvocation();
      (*(*(v50 - 8) + 8))(v35, v50);
      v51 = *(v41 + 32);
      v52 = v55;
      v51(v55, v40, v42);
      v53 = v59;
      v39((v59 + OBJC_IVAR____TtC21InformationFlowPlugin25TapEngagementHandlingFlow_engagementContext), v28, v24);
      v51((v53 + OBJC_IVAR____TtC21InformationFlowPlugin25TapEngagementHandlingFlow_pegasusContext), v52, v42);
      outlined init with take of SiriSuggestionsBroker(v61, v53 + OBJC_IVAR____TtC21InformationFlowPlugin25TapEngagementHandlingFlow_outputPublisherAsync);
      outlined init with take of SiriSuggestionsBroker(&v65, v53 + OBJC_IVAR____TtC21InformationFlowPlugin25TapEngagementHandlingFlow_pommesEngagement);
      outlined init with take of SiriSuggestionsBroker(&v62, v53 + OBJC_IVAR____TtC21InformationFlowPlugin25TapEngagementHandlingFlow_patternExecutor);
      return v53;
    }

    (*(v25 + 8))(v28, v24);
    v36 = &_s10PegasusAPI020Apple_Parsec_Search_A12QueryContextVSgMd;
    v37 = &_s10PegasusAPI020Apple_Parsec_Search_A12QueryContextVSgMR;
    v38 = v40;
  }

  outlined destroy of Any?(v38, v36, v37);
  v43 = Logger.logObject.getter();
  v44 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    *v45 = 0;
    _os_log_impl(&dword_0, v43, v44, "TapEngagementHandlingFlow: Unable to retrieve EngagementContext from DI Payload.", v45, 2u);
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v61);
  v46 = type metadata accessor for Parse.DirectInvocation();
  (*(*(v46 - 8) + 8))(v35, v46);
  __swift_destroy_boxed_opaque_existential_0Tm(&v62);
  __swift_destroy_boxed_opaque_existential_0Tm(&v65);
  type metadata accessor for TapEngagementHandlingFlow();
  v47 = *(*v59 + 48);
  v48 = *(*v59 + 52);
  swift_deallocPartialClassInstance();
  return 0;
}

uint64_t type metadata accessor for TapEngagementHandlingFlow()
{
  result = type metadata singleton initialization cache for TapEngagementHandlingFlow;
  if (!type metadata singleton initialization cache for TapEngagementHandlingFlow)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for TapEngagementHandlingFlow()
{
  result = type metadata accessor for Apple_Parsec_Responseframework_Engagement_Context();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = type metadata accessor for Apple_Parsec_Search_PegasusQueryContext();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type TapEngagementHandlingFlow and conformance TapEngagementHandlingFlow(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t static DetailedResultFlowFactory.makeDetailedResultFlow(patternId:parameters:bundle:pegasusConversationContext:outputPublisherAsync:informationViewFactory:deviceState:patternFlowProvider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[73] = v11;
  v8[72] = v10;
  v8[71] = a8;
  v8[70] = a7;
  v8[69] = a6;
  v8[68] = a5;
  v8[67] = a4;
  v8[66] = a3;
  v8[65] = a2;
  v8[64] = a1;
  return _swift_task_switch(static DetailedResultFlowFactory.makeDetailedResultFlow(patternId:parameters:bundle:pegasusConversationContext:outputPublisherAsync:informationViewFactory:deviceState:patternFlowProvider:), 0, 0);
}

uint64_t static DetailedResultFlowFactory.makeDetailedResultFlow(patternId:parameters:bundle:pegasusConversationContext:outputPublisherAsync:informationViewFactory:deviceState:patternFlowProvider:)()
{
  v34 = v0;
  if (one-time initialization token for information != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 528);
  v2 = *(v0 + 520);
  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Logger.information);

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 528);
    v7 = *(v0 + 520);
    v8 = *(v0 + 512);
    v9 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    *v9 = 136315394;
    *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v7, &v33);
    *(v9 + 12) = 2080;
    v10 = Dictionary.description.getter();
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, &v33);

    *(v9 + 14) = v12;
    _os_log_impl(&dword_0, v4, v5, "DetailedResultFlowFactory.makeDetailedResultFlow called with %s : %s", v9, 0x16u);
    swift_arrayDestroy();
  }

  v13 = *(v0 + 576);
  v14 = *(v0 + 560);
  v15 = *(v0 + 528);
  v16 = *(v0 + 520);
  v17 = *(v0 + 512);
  static PatternFlowProvidingHelper.unwrap(_:with:)(*(v0 + 584), v14, (v0 + 264));
  outlined init with copy of OutputPublisherAsync(v14, v0 + 304);
  outlined init with copy of OutputPublisherAsync(v13, v0 + 344);
  outlined init with copy of OutputPublisherAsync(v0 + 264, v0 + 384);
  v18 = type metadata accessor for PatternExecutor();
  v19 = swift_allocObject();
  *(v0 + 448) = v18;
  *(v0 + 456) = &protocol witness table for PatternExecutor;
  *(v0 + 424) = v19;
  *(v0 + 248) = v17;
  *(v0 + 256) = v16;
  v33 = v15;

  specialized Dictionary._Variant.removeValue(forKey:)(0x64656C6961746564, 0xEC00000074786554, (v0 + 464));
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  v20 = swift_dynamicCast();
  v21 = 0uLL;
  if (v20)
  {
    v21 = *(v0 + 496);
  }

  v22 = *(v0 + 568);
  v23 = *(v0 + 552);
  v24 = *(v0 + 544);
  v25 = *(v0 + 536);
  *(v0 + 16) = v33;
  *(v0 + 24) = v21;
  strcpy((v0 + 40), "detailedText");
  *(v0 + 53) = 0;
  *(v0 + 54) = -5120;
  *(v0 + 240) = v25;
  *(v0 + 136) = v24;
  *(v0 + 144) = v23;
  outlined init with copy of OutputPublisherAsync(v0 + 304, v0 + 56);
  outlined init with copy of OutputPublisherAsync(v0 + 344, v0 + 96);
  v26 = v25;
  outlined copy of Data?(v24, v23);
  static PatternFlowProvidingHelper.unwrap(_:with:)(v0 + 384, v0 + 304, (v0 + 152));
  outlined destroy of PatternFlowProviding?(v0 + 384);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 344));
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 304));
  *(v0 + 192) = v22;
  outlined init with take of SiriSuggestionsBroker((v0 + 424), v0 + 200);
  v27 = *(v0 + 288);
  v28 = *(v0 + 296);
  __swift_project_boxed_opaque_existential_1((v0 + 264), v27);
  v29 = async function pointer to dispatch thunk of PatternFlowProviding.makeDetailedResultFlow<A>(provider:)[1];

  v30 = swift_task_alloc();
  *(v0 + 592) = v30;
  v31 = lazy protocol witness table accessor for type DetailedResultProvider and conformance DetailedResultProvider();
  *v30 = v0;
  v30[1] = static DetailedResultFlowFactory.makeDetailedResultFlow(patternId:parameters:bundle:pegasusConversationContext:outputPublisherAsync:informationViewFactory:deviceState:patternFlowProvider:);

  return dispatch thunk of PatternFlowProviding.makeDetailedResultFlow<A>(provider:)(v0 + 16, &type metadata for DetailedResultProvider, v31, v27, v28);
}

{
  outlined destroy of DetailedResultProvider((v0 + 2));
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 33);
  v1 = v0[1];
  v2 = v0[76];

  return v1(v2);
}

{
  outlined destroy of DetailedResultProvider((v0 + 2));
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 33);
  v1 = v0[1];
  v2 = v0[75];

  return v1();
}

uint64_t static DetailedResultFlowFactory.makeDetailedResultFlow(patternId:parameters:bundle:pegasusConversationContext:outputPublisherAsync:informationViewFactory:deviceState:patternFlowProvider:)(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 592);
  v6 = *v2;
  *(*v2 + 600) = v1;

  if (v1)
  {
    v7 = static DetailedResultFlowFactory.makeDetailedResultFlow(patternId:parameters:bundle:pegasusConversationContext:outputPublisherAsync:informationViewFactory:deviceState:patternFlowProvider:);
  }

  else
  {
    *(v4 + 608) = a1;
    v7 = static DetailedResultFlowFactory.makeDetailedResultFlow(patternId:parameters:bundle:pegasusConversationContext:outputPublisherAsync:informationViewFactory:deviceState:patternFlowProvider:);
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t outlined destroy of PatternFlowProviding?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow07PatternC9Providing_pSgMd, _s11SiriKitFlow07PatternC9Providing_pSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type DetailedResultProvider and conformance DetailedResultProvider()
{
  result = lazy protocol witness table cache variable for type DetailedResultProvider and conformance DetailedResultProvider;
  if (!lazy protocol witness table cache variable for type DetailedResultProvider and conformance DetailedResultProvider)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DetailedResultProvider and conformance DetailedResultProvider);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DetailedResultProvider and conformance DetailedResultProvider;
  if (!lazy protocol witness table cache variable for type DetailedResultProvider and conformance DetailedResultProvider)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DetailedResultProvider and conformance DetailedResultProvider);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DetailedResultProvider and conformance DetailedResultProvider;
  if (!lazy protocol witness table cache variable for type DetailedResultProvider and conformance DetailedResultProvider)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DetailedResultProvider and conformance DetailedResultProvider);
  }

  return result;
}

uint64_t static ResultSetFlowFactory.makeResultSetFlow(settings:patternId:parameters:bundle:pegasusConversationContext:outputPublisherAsync:informationViewFactory:deviceState:patternFlowProvider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 528) = v11;
  *(v8 + 512) = v10;
  *(v8 + 496) = a7;
  *(v8 + 504) = a8;
  *(v8 + 480) = a5;
  *(v8 + 488) = a6;
  *(v8 + 464) = a3;
  *(v8 + 472) = a4;
  *(v8 + 456) = a2;
  return _swift_task_switch(static ResultSetFlowFactory.makeResultSetFlow(settings:patternId:parameters:bundle:pegasusConversationContext:outputPublisherAsync:informationViewFactory:deviceState:patternFlowProvider:), 0, 0);
}

uint64_t static ResultSetFlowFactory.makeResultSetFlow(settings:patternId:parameters:bundle:pegasusConversationContext:outputPublisherAsync:informationViewFactory:deviceState:patternFlowProvider:)()
{
  v36 = v0;
  static PatternFlowProvidingHelper.unwrap(_:with:)(v0[66], v0[63], v0 + 32);
  if (one-time initialization token for information != -1)
  {
    swift_once();
  }

  v2 = v0[58];
  v1 = v0[59];
  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Logger.information);

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v7 = v0[58];
    v6 = v0[59];
    v8 = v0[57];
    v9 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    *v9 = 136315394;
    *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v7, &v35);
    *(v9 + 12) = 2080;
    v10 = Dictionary.description.getter();
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, &v35);

    *(v9 + 14) = v12;
    _os_log_impl(&dword_0, v4, v5, "ResultSetFlowFactory.makeRenderPatternFlow called with %s : %s", v9, 0x16u);
    swift_arrayDestroy();
  }

  v13 = v0[65];
  v15 = v0[63];
  v14 = v0[64];
  v17 = v0[61];
  v16 = v0[62];
  v18 = v0[59];
  v19 = v0[60];
  v21 = v0[57];
  v20 = v0[58];
  static PatternFlowProvidingHelper.unwrap(_:with:)((v0 + 32), v15, v0 + 37);
  outlined init with copy of OutputPublisherAsync(v15, (v0 + 42));
  outlined init with copy of OutputPublisherAsync(v13, (v0 + 47));
  outlined init with copy of OutputPublisherAsync((v0 + 37), (v0 + 52));
  v22 = type metadata accessor for PatternExecutor();
  v23 = swift_allocObject();
  v0[27] = v22;
  v0[28] = &protocol witness table for PatternExecutor;
  v0[24] = v23;
  v0[30] = v21;
  v0[31] = v20;

  v0[2] = specialized GenericResultSetParamBuilder.init(parameters:)(v24);
  v0[3] = v25;
  v0[4] = v26;
  v0[5] = v27;
  v0[29] = v19;
  v0[16] = v17;
  v0[17] = v16;
  outlined init with copy of OutputPublisherAsync((v0 + 42), (v0 + 6));
  outlined init with copy of OutputPublisherAsync((v0 + 47), (v0 + 11));
  v28 = v19;
  outlined copy of Data?(v17, v16);
  static PatternFlowProvidingHelper.unwrap(_:with:)((v0 + 52), (v0 + 42), v0 + 18);
  outlined destroy of PatternFlowProviding?((v0 + 52));
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 47);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 42);
  v0[23] = v14;
  v29 = v0[40];
  v30 = v0[41];
  __swift_project_boxed_opaque_existential_1(v0 + 37, v29);
  v31 = *(&async function pointer to dispatch thunk of PatternFlowProviding.makeResultSetFlow<A>(provider:) + 1);

  v32 = swift_task_alloc();
  v0[67] = v32;
  v33 = lazy protocol witness table accessor for type ContinuationResultSetFlowProvider and conformance ContinuationResultSetFlowProvider();
  *v32 = v0;
  v32[1] = static ResultSetFlowFactory.makeResultSetFlow(settings:patternId:parameters:bundle:pegasusConversationContext:outputPublisherAsync:informationViewFactory:deviceState:patternFlowProvider:);

  return dispatch thunk of PatternFlowProviding.makeResultSetFlow<A>(provider:)(v0 + 2, &type metadata for ContinuationResultSetFlowProvider, v33, v29, v30);
}

{
  outlined destroy of PatternFlowProviding?((v0 + 32));
  outlined destroy of ContinuationResultSetFlowProvider((v0 + 2));
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 37);
  v1 = v0[1];
  v2 = v0[69];

  return v1(v2);
}

{
  outlined destroy of PatternFlowProviding?((v0 + 32));
  outlined destroy of ContinuationResultSetFlowProvider((v0 + 2));
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 37);
  v1 = v0[1];
  v2 = v0[68];

  return v1();
}

uint64_t static ResultSetFlowFactory.makeResultSetFlow(settings:patternId:parameters:bundle:pegasusConversationContext:outputPublisherAsync:informationViewFactory:deviceState:patternFlowProvider:)(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 536);
  v6 = *v2;
  *(*v2 + 544) = v1;

  if (v1)
  {
    v7 = static ResultSetFlowFactory.makeResultSetFlow(settings:patternId:parameters:bundle:pegasusConversationContext:outputPublisherAsync:informationViewFactory:deviceState:patternFlowProvider:);
  }

  else
  {
    *(v4 + 552) = a1;
    v7 = static ResultSetFlowFactory.makeResultSetFlow(settings:patternId:parameters:bundle:pegasusConversationContext:outputPublisherAsync:informationViewFactory:deviceState:patternFlowProvider:);
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t static ResultSetFlowFactory.makeContinuationFlow(patternId:parameters:bundle:pegasusConversationContext:outputPublisherAsync:informationViewFactory:deviceState:patternFlowProvider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[60] = v10;
  v8[61] = v11;
  v8[58] = a7;
  v8[59] = a8;
  v8[56] = a5;
  v8[57] = a6;
  v8[54] = a3;
  v8[55] = a4;
  v8[52] = a1;
  v8[53] = a2;
  return _swift_task_switch(static ResultSetFlowFactory.makeContinuationFlow(patternId:parameters:bundle:pegasusConversationContext:outputPublisherAsync:informationViewFactory:deviceState:patternFlowProvider:), 0, 0);
}

uint64_t static ResultSetFlowFactory.makeContinuationFlow(patternId:parameters:bundle:pegasusConversationContext:outputPublisherAsync:informationViewFactory:deviceState:patternFlowProvider:)()
{
  v36 = v0;
  if (one-time initialization token for information != -1)
  {
    swift_once();
  }

  v2 = v0[53];
  v1 = v0[54];
  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Logger.information);

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v7 = v0[53];
    v6 = v0[54];
    v8 = v0[52];
    v9 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    *v9 = 136315394;
    *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v7, &v35);
    *(v9 + 12) = 2080;
    v10 = Dictionary.description.getter();
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, &v35);

    *(v9 + 14) = v12;
    _os_log_impl(&dword_0, v4, v5, "ResultSetFlowFactory.makeRenderPatternFlow called with %s : %s", v9, 0x16u);
    swift_arrayDestroy();
  }

  v13 = v0[60];
  v15 = v0[58];
  v14 = v0[59];
  v17 = v0[56];
  v16 = v0[57];
  v18 = v0[54];
  v19 = v0[55];
  v21 = v0[52];
  v20 = v0[53];
  static PatternFlowProvidingHelper.unwrap(_:with:)(v0[61], v15, v0 + 32);
  outlined init with copy of OutputPublisherAsync(v15, (v0 + 37));
  outlined init with copy of OutputPublisherAsync(v13, (v0 + 42));
  outlined init with copy of OutputPublisherAsync((v0 + 32), (v0 + 47));
  v22 = type metadata accessor for PatternExecutor();
  v23 = swift_allocObject();
  v0[27] = v22;
  v0[28] = &protocol witness table for PatternExecutor;
  v0[24] = v23;
  v0[30] = v21;
  v0[31] = v20;

  v0[2] = specialized GenericResultSetParamBuilder.init(parameters:)(v24);
  v0[3] = v25;
  v0[4] = v26;
  v0[5] = v27;
  v0[29] = v19;
  v0[16] = v17;
  v0[17] = v16;
  outlined init with copy of OutputPublisherAsync((v0 + 37), (v0 + 6));
  outlined init with copy of OutputPublisherAsync((v0 + 42), (v0 + 11));
  v28 = v19;
  outlined copy of Data?(v17, v16);
  static PatternFlowProvidingHelper.unwrap(_:with:)((v0 + 47), (v0 + 37), v0 + 18);
  outlined destroy of PatternFlowProviding?((v0 + 47));
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 42);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 37);
  v0[23] = v14;
  v29 = v0[35];
  v30 = v0[36];
  __swift_project_boxed_opaque_existential_1(v0 + 32, v29);
  v31 = async function pointer to dispatch thunk of PatternFlowProviding.makeResultSetFlow<A>(provider:)[1];

  v32 = swift_task_alloc();
  v0[62] = v32;
  v33 = lazy protocol witness table accessor for type ContinuationResultSetFlowProvider and conformance ContinuationResultSetFlowProvider();
  *v32 = v0;
  v32[1] = static ResultSetFlowFactory.makeContinuationFlow(patternId:parameters:bundle:pegasusConversationContext:outputPublisherAsync:informationViewFactory:deviceState:patternFlowProvider:);

  return dispatch thunk of PatternFlowProviding.makeResultSetFlow<A>(provider:)(v0 + 2, &type metadata for ContinuationResultSetFlowProvider, v33, v29, v30);
}

{
  outlined destroy of ContinuationResultSetFlowProvider((v0 + 2));
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 32);
  v1 = v0[1];
  v2 = v0[64];

  return v1(v2);
}

{
  outlined destroy of ContinuationResultSetFlowProvider((v0 + 2));
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 32);
  v1 = v0[1];
  v2 = v0[63];

  return v1();
}

uint64_t static ResultSetFlowFactory.makeContinuationFlow(patternId:parameters:bundle:pegasusConversationContext:outputPublisherAsync:informationViewFactory:deviceState:patternFlowProvider:)(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 496);
  v6 = *v2;
  *(*v2 + 504) = v1;

  if (v1)
  {
    v7 = static ResultSetFlowFactory.makeContinuationFlow(patternId:parameters:bundle:pegasusConversationContext:outputPublisherAsync:informationViewFactory:deviceState:patternFlowProvider:);
  }

  else
  {
    *(v4 + 512) = a1;
    v7 = static ResultSetFlowFactory.makeContinuationFlow(patternId:parameters:bundle:pegasusConversationContext:outputPublisherAsync:informationViewFactory:deviceState:patternFlowProvider:);
  }

  return _swift_task_switch(v7, 0, 0);
}

unint64_t lazy protocol witness table accessor for type ContinuationResultSetFlowProvider and conformance ContinuationResultSetFlowProvider()
{
  result = lazy protocol witness table cache variable for type ContinuationResultSetFlowProvider and conformance ContinuationResultSetFlowProvider;
  if (!lazy protocol witness table cache variable for type ContinuationResultSetFlowProvider and conformance ContinuationResultSetFlowProvider)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContinuationResultSetFlowProvider and conformance ContinuationResultSetFlowProvider);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ContinuationResultSetFlowProvider and conformance ContinuationResultSetFlowProvider;
  if (!lazy protocol witness table cache variable for type ContinuationResultSetFlowProvider and conformance ContinuationResultSetFlowProvider)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContinuationResultSetFlowProvider and conformance ContinuationResultSetFlowProvider);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ContinuationResultSetFlowProvider and conformance ContinuationResultSetFlowProvider;
  if (!lazy protocol witness table cache variable for type ContinuationResultSetFlowProvider and conformance ContinuationResultSetFlowProvider)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContinuationResultSetFlowProvider and conformance ContinuationResultSetFlowProvider);
  }

  return result;
}

uint64_t InformationFlowPlugin.findFlowForX(parse:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v53 = a1;
  v55 = a2;
  v50 = *v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v46 - v5;
  v7 = type metadata accessor for Siri_Nlu_External_UserParse();
  v52 = *(v7 - 8);
  v8 = *(v52 + 64);
  __chkstk_darwin(v7);
  v51 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for USOParse();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v49 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v46 - v15;
  v17 = type metadata accessor for Parse();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v21 = &v46 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for information != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  __swift_project_value_buffer(v22, static Logger.information);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.debug.getter();
  v25 = os_log_type_enabled(v23, v24);
  v54 = v21;
  if (v25)
  {
    v26 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v48 = v16;
    v56[0] = v47;
    *v26 = 136315394;
    v27 = _typeName(_:qualified:)();
    v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v28, v56);
    v50 = v23;
    v30 = v7;
    v31 = v29;

    *(v26 + 4) = v31;
    v7 = v30;
    *(v26 + 12) = 2080;
    *(v26 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000014, 0x80000000000BF1F0, v56);
    v32 = v24;
    v33 = v50;
    _os_log_impl(&dword_0, v50, v32, "%s %s called", v26, 0x16u);
    swift_arrayDestroy();
    v16 = v48;

    v21 = v54;
  }

  else
  {
  }

  (*(v18 + 16))(v21, v53, v17);
  if ((*(v18 + 88))(v21, v17) == enum case for Parse.uso(_:))
  {
    (*(v18 + 96))(v21, v17);
    (*(v11 + 32))(v16, v21, v10);
    v34 = v51;
    USOParse.userParse.getter();
    v45 = Siri_Nlu_External_UserParse.firstRecipeTask()();
    (*(v52 + 8))(v34, v7);
    if (v45)
    {
      type metadata accessor for PommesFallbackFlow();
      v56[0] = swift_allocObject();
      lazy protocol witness table accessor for type InformationRootFlow and conformance InformationRootFlow(&lazy protocol witness table cache variable for type PommesFallbackFlow and conformance PommesFallbackFlow, 255, type metadata accessor for PommesFallbackFlow);
      Flow.eraseToAnyFlow()();

      static FlowSearchResult.flow(_:)();
    }

    else
    {
      type metadata accessor for SearchFlow(0);
      v35 = v49;
      (*(v11 + 16))(v49, v16, v10);
      v56[0] = SearchFlow.__allocating_init(parse:)(v35);
      lazy protocol witness table accessor for type InformationRootFlow and conformance InformationRootFlow(&lazy protocol witness table cache variable for type SearchFlow and conformance SearchFlow, 255, type metadata accessor for SearchFlow);
      Flow.eraseToAnyFlow()();

      static FlowSearchResult.flow(_:)();
    }

    return (*(v11 + 8))(v16, v10);
  }

  else
  {
    if (one-time initialization token for kFlowEntryPoints != -1)
    {
      swift_once();
    }

    v36 = static InformationRootFlow.kFlowEntryPoints;
    v37 = type metadata accessor for InformationRootFlow();
    v38 = *(v37 + 48);
    v39 = *(v37 + 52);
    v40 = swift_allocObject();
    v41 = OBJC_IVAR____TtC21InformationFlowPlugin19InformationRootFlow_originalInput;
    v42 = type metadata accessor for Input();
    v43 = *(*(v42 - 8) + 56);
    v43(v40 + v41, 1, 1, v42);
    v43(v6, 1, 1, v42);
    swift_beginAccess();

    outlined assign with take of Input?(v6, v40 + v41);
    swift_endAccess();
    *(v40 + OBJC_IVAR____TtC21InformationFlowPlugin19InformationRootFlow_flowEntryPoints) = v36;
    v56[0] = v40;
    lazy protocol witness table accessor for type InformationRootFlow and conformance InformationRootFlow(&lazy protocol witness table cache variable for type InformationRootFlow and conformance InformationRootFlow, 255, type metadata accessor for InformationRootFlow);
    Flow.eraseToAnyFlow()();

    static FlowSearchResult.flow(_:)();

    return (*(v18 + 8))(v54, v17);
  }
}

uint64_t protocol witness for FlowPlugin.init() in conformance InformationFlowPlugin@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 80))();
  *a1 = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type InformationRootFlow and conformance InformationRootFlow(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t SuggestionsEntryPoint.__allocating_init(suggestionsDonator:biomeDonator:localeProvider:)(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v9 = a2[3];
  v10 = a2[4];
  v11 = __swift_mutable_project_boxed_opaque_existential_1(a2, v9);
  v12 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v14);
  v16 = specialized SuggestionsEntryPoint.__allocating_init(suggestionsDonator:biomeDonator:localeProvider:)(a1, v14, a3, a4, v4, v9, v10);
  __swift_destroy_boxed_opaque_existential_0Tm(a2);
  return v16;
}

uint64_t closure #1 in SuggestionsEntryPoint.init(suggestionsDonator:biomeDonator:localeProvider:)()
{
  static AceService.currentAsync.getter();
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  started = dispatch thunk of AceServiceInvokerAsync.currentStartRequestId()();
  __swift_destroy_boxed_opaque_existential_0Tm(v2);
  return started;
}

void *SuggestionsEntryPoint.__allocating_init(suggestionsDonator:biomeDonator:requestIdProvider:localeProvider:)(__int128 *a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_allocObject();
  outlined init with take of SiriSuggestionsBroker(a1, (v12 + 2));
  outlined init with take of SiriSuggestionsBroker(a2, (v12 + 7));
  v12[12] = a3;
  v12[13] = a4;
  v12[14] = a5;
  v12[15] = a6;
  return v12;
}

void *SuggestionsEntryPoint.init(suggestionsDonator:biomeDonator:requestIdProvider:localeProvider:)(__int128 *a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  outlined init with take of SiriSuggestionsBroker(a1, (v6 + 2));
  outlined init with take of SiriSuggestionsBroker(a2, (v6 + 7));
  v6[12] = a3;
  v6[13] = a4;
  v6[14] = a5;
  v6[15] = a6;
  return v6;
}

uint64_t SuggestionsEntryPoint.flowFor(input:)(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for Parse();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();

  return _swift_task_switch(SuggestionsEntryPoint.flowFor(input:), 0, 0);
}

uint64_t SuggestionsEntryPoint.flowFor(input:)()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  v4 = v0[2];
  Input.parse.getter();
  v5 = (*(v2 + 88))(v1, v3);
  v6 = v0[5];
  v7 = v0[6];
  v8 = v0[4];
  if (v5 == enum case for Parse.pommesResponse(_:))
  {
    v9 = v0[3];
    v10 = (*(v6 + 96))(v0[6], v8);
    v11 = *v7;
    v0[7] = *v7;
    v12 = *(v9 + 104);
    v13 = (*(v9 + 96))(v10);
    v0[8] = v14;
    if (v14)
    {
      v15 = v13;
      v16 = v14;
      v17 = swift_task_alloc();
      v0[9] = v17;
      *v17 = v0;
      v17[1] = SuggestionsEntryPoint.flowFor(input:);
      v18 = v0[3];

      return SuggestionsEntryPoint.donateToSuggestions(_:requestId:)(v11, v15, v16);
    }

    if (one-time initialization token for information != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    __swift_project_value_buffer(v23, static Logger.information);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_0, v24, v25, "SuggestionsEntryPoint# No root requestId found, not donating to Siri Suggestions.", v26, 2u);
    }
  }

  else
  {
    (*(v6 + 8))(v0[6], v8);
    if (one-time initialization token for information != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    __swift_project_value_buffer(v20, static Logger.information);
    v11 = Logger.logObject.getter();
    v21 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v11, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_0, v11, v21, "SuggestionsEntryPoint# Received a non-POMMES Response, not donating to Siri Suggestions.", v22, 2u);
    }
  }

  v27 = v0[6];

  v28 = v0[1];

  return v28(0);
}

{
  v1 = *(*v0 + 72);
  v2 = *(*v0 + 64);
  v4 = *v0;

  return _swift_task_switch(SuggestionsEntryPoint.flowFor(input:), 0, 0);
}

{

  v1 = *(v0 + 48);

  v2 = *(v0 + 8);

  return v2(0);
}

uint64_t SuggestionsEntryPoint.donateToSuggestions(_:requestId:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = type metadata accessor for SiriSuggestions.Intent();
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();

  return _swift_task_switch(SuggestionsEntryPoint.donateToSuggestions(_:requestId:), 0, 0);
}

unint64_t SuggestionsEntryPoint.donateToSuggestions(_:requestId:)()
{
  if (one-time initialization token for information != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 72) = __swift_project_value_buffer(v1, static Logger.information);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "SuggestionsEntryPoint: donating intent to suggestions", v4, 2u);
  }

  v5 = *(v0 + 40);
  v6 = *(v0 + 16);

  v7 = *(v5 + 120);
  (*(v5 + 112))();
  v8 = PommesResponse.getINInformationUseCases(locale:)();
  *(v0 + 80) = v8;

  result = dispatch thunk of PommesResponse.experiences.getter();
  if (!(result >> 62))
  {
    if (*(&dword_10 + (result & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_7;
    }

LABEL_14:

    v12 = specialized SuggestionsEntryPoint.getSuggestionExecutionParams(_:)(0);
    v11 = 0;
LABEL_15:
    v13 = 0;
    goto LABEL_16;
  }

  v14 = result;
  v15 = _CocoaArrayWrapper.endIndex.getter();
  result = v14;
  if (!v15)
  {
    goto LABEL_14;
  }

LABEL_7:
  if ((result & 0xC000000000000001) != 0)
  {
    v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*(&dword_10 + (result & 0xFFFFFFFFFFFFFF8)))
    {
      __break(1u);
      goto LABEL_31;
    }

    v10 = *(result + 32);
  }

  v11 = v10;

  v12 = specialized SuggestionsEntryPoint.getSuggestionExecutionParams(_:)(v11);
  if (!v11)
  {
    goto LABEL_15;
  }

  type metadata accessor for GenericExperience();
  v13 = swift_dynamicCastClass();
  if (v13)
  {
    v11 = v11;
  }

LABEL_16:
  *(v0 + 96) = v11;
  *(v0 + 104) = v13;
  *(v0 + 88) = v12;
  if (v8 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    *(v0 + 112) = result;
    if (result)
    {
      goto LABEL_18;
    }
  }

  else
  {
    result = *(&dword_10 + (v8 & 0xFFFFFFFFFFFFFF8));
    *(v0 + 112) = result;
    if (result)
    {
LABEL_18:
      v16 = enum case for SiriSuggestions.Intent.inIntent(_:);
      *(v0 + 152) = enum case for SiriSuggestions.Intent.inIntent(_:);
      v17 = *(v0 + 80);
      if ((v17 & 0xC000000000000001) != 0)
      {
        v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v16 = *(v0 + 152);
LABEL_22:
        *(v0 + 120) = v18;
        *(v0 + 128) = 1;
        v20 = *(v0 + 56);
        v19 = *(v0 + 64);
        v21 = *(v0 + 40);
        v22 = *(v0 + 48);
        v23 = v21[5];
        v24 = v21[6];
        __swift_project_boxed_opaque_existential_1(v21 + 2, v23);
        *v19 = v18;
        (*(v20 + 104))(v19, v16, v22);
        v25 = *(v24 + 8);
        v26 = v18;
        v41 = (v25 + *v25);
        v27 = v25[1];
        v28 = swift_task_alloc();
        *(v0 + 136) = v28;
        *v28 = v0;
        v28[1] = SuggestionsEntryPoint.donateToSuggestions(_:requestId:);
        v29 = *(v0 + 104);
        v30 = *(v0 + 88);
        v31 = *(v0 + 64);
        v32 = *(v0 + 32);
        v33 = *(v0 + 16);
        v34 = *(v0 + 24);

        return v41(v34, v32, v33, v29, v30, v31, v23, v24);
      }

      if (*(&dword_10 + (v17 & 0xFFFFFFFFFFFFFF8)))
      {
        v18 = *(v17 + 32);
        goto LABEL_22;
      }

LABEL_31:
      __break(1u);
      return result;
    }
  }

  v36 = *(v0 + 96);
  v35 = *(v0 + 104);
  v38 = *(v0 + 80);
  v37 = *(v0 + 88);
  v39 = *(v0 + 64);

  v40 = *(v0 + 8);

  return v40();
}

uint64_t SuggestionsEntryPoint.donateToSuggestions(_:requestId:)()
{
  v2 = *(*v1 + 136);
  v3 = *(*v1 + 64);
  v4 = *(*v1 + 56);
  v5 = *(*v1 + 48);
  v8 = *v1;
  *(*v1 + 144) = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v6 = SuggestionsEntryPoint.donateToSuggestions(_:requestId:);
  }

  else
  {
    v6 = SuggestionsEntryPoint.donateToSuggestions(_:requestId:);
  }

  return _swift_task_switch(v6, 0, 0);
}

void SuggestionsEntryPoint.donateToSuggestions(_:requestId:)()
{
  v1 = *(v0 + 120);
  if (!INInformationUseCaseIntent.supportsRelatedQuestions()())
  {
    v2 = *(v0 + 72);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_0, v3, v4, "SuggestionsEntryPoint: donating intent to biome", v5, 2u);
    }

    v6 = *(v0 + 120);
    v7 = *(v0 + 40);

    v8 = v7[10];
    v9 = v7[11];
    __swift_project_boxed_opaque_existential_1(v7 + 7, v8);
    (*(v9 + 8))(v6, v8, v9);
  }

  v10 = *(v0 + 128);
  v11 = *(v0 + 112);

  if (v10 == v11)
  {
    v13 = *(v0 + 96);
    v12 = *(v0 + 104);
    v15 = *(v0 + 80);
    v14 = *(v0 + 88);
    v16 = *(v0 + 64);

    v17 = *(v0 + 8);

    v17();
    return;
  }

  v18 = *(v0 + 128);
  v19 = *(v0 + 80);
  if ((v19 & 0xC000000000000001) != 0)
  {
    v20 = *(v0 + 128);
    v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (v18 >= *(&dword_10 + (v19 & 0xFFFFFFFFFFFFFF8)))
    {
LABEL_18:
      __break(1u);
      return;
    }

    v21 = *(v19 + 8 * v18 + 32);
  }

  v22 = v21;
  *(v0 + 120) = v21;
  *(v0 + 128) = v18 + 1;
  if (__OFADD__(v18, 1))
  {
    __break(1u);
    goto LABEL_18;
  }

  v23 = *(v0 + 152);
  v25 = *(v0 + 56);
  v24 = *(v0 + 64);
  v26 = *(v0 + 40);
  v27 = *(v0 + 48);
  v28 = v26[5];
  v29 = v26[6];
  __swift_project_boxed_opaque_existential_1(v26 + 2, v28);
  *v24 = v22;
  (*(v25 + 104))(v24, v23, v27);
  v30 = *(v29 + 8);
  v31 = v22;
  v40 = (v30 + *v30);
  v32 = v30[1];
  v33 = swift_task_alloc();
  *(v0 + 136) = v33;
  *v33 = v0;
  v33[1] = SuggestionsEntryPoint.donateToSuggestions(_:requestId:);
  v34 = *(v0 + 104);
  v35 = *(v0 + 88);
  v36 = *(v0 + 64);
  v37 = *(v0 + 32);
  v38 = *(v0 + 16);
  v39 = *(v0 + 24);

  v40(v39, v37, v38, v34, v35, v36, v28, v29);
}

{
  v1 = *(v0 + 144);
  v2 = *(v0 + 72);
  v3 = *(v0 + 120);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 144);
  if (v6)
  {
    v8 = *(v0 + 120);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412546;
    *(v9 + 4) = v8;
    *v10 = v8;
    *(v9 + 12) = 2112;
    v11 = v8;
    swift_errorRetain();
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v12;
    v10[1] = v12;
    _os_log_impl(&dword_0, v4, v5, "SuggestionsEntryPoint: Unable to donate intent %@ to SiriSuggestions. Error: %@", v9, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    swift_arrayDestroy();
  }

  else
  {
  }

  v13 = *(v0 + 120);
  if (!INInformationUseCaseIntent.supportsRelatedQuestions()())
  {
    v14 = *(v0 + 72);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_0, v15, v16, "SuggestionsEntryPoint: donating intent to biome", v17, 2u);
    }

    v18 = *(v0 + 120);
    v19 = *(v0 + 40);

    v20 = v19[10];
    v21 = v19[11];
    __swift_project_boxed_opaque_existential_1(v19 + 7, v20);
    (*(v21 + 8))(v18, v20, v21);
  }

  v22 = *(v0 + 128);
  v23 = *(v0 + 112);

  if (v22 == v23)
  {
    v25 = *(v0 + 96);
    v24 = *(v0 + 104);
    v27 = *(v0 + 80);
    v26 = *(v0 + 88);
    v28 = *(v0 + 64);

    v29 = *(v0 + 8);

    v29();
    return;
  }

  v30 = *(v0 + 128);
  v31 = *(v0 + 80);
  if ((v31 & 0xC000000000000001) != 0)
  {
    v32 = *(v0 + 128);
    v33 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (v30 >= *(&dword_10 + (v31 & 0xFFFFFFFFFFFFFF8)))
    {
LABEL_21:
      __break(1u);
      return;
    }

    v33 = *(v31 + 8 * v30 + 32);
  }

  v34 = v33;
  *(v0 + 120) = v33;
  *(v0 + 128) = v30 + 1;
  if (__OFADD__(v30, 1))
  {
    __break(1u);
    goto LABEL_21;
  }

  v35 = *(v0 + 152);
  v37 = *(v0 + 56);
  v36 = *(v0 + 64);
  v38 = *(v0 + 40);
  v39 = *(v0 + 48);
  v40 = v38[5];
  v41 = v38[6];
  __swift_project_boxed_opaque_existential_1(v38 + 2, v40);
  *v36 = v34;
  (*(v37 + 104))(v36, v35, v39);
  v42 = *(v41 + 8);
  v43 = v34;
  v52 = (v42 + *v42);
  v44 = v42[1];
  v45 = swift_task_alloc();
  *(v0 + 136) = v45;
  *v45 = v0;
  v45[1] = SuggestionsEntryPoint.donateToSuggestions(_:requestId:);
  v46 = *(v0 + 104);
  v47 = *(v0 + 88);
  v48 = *(v0 + 64);
  v49 = *(v0 + 32);
  v50 = *(v0 + 16);
  v51 = *(v0 + 24);

  v52(v51, v49, v50, v46, v47, v48, v40, v41);
}

uint64_t *SuggestionsEntryPoint.deinit()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 7);
  v1 = v0[13];

  v2 = v0[15];

  return v0;
}

uint64_t SuggestionsEntryPoint.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 7);
  v1 = v0[13];

  v2 = v0[15];

  return swift_deallocClassInstance();
}

uint64_t protocol witness for FlowEntryPoint.flowFor(input:) in conformance SuggestionsEntryPoint(uint64_t a1)
{
  v4 = *(**v1 + 120);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = protocol witness for Flow.onAsync(input:) in conformance NavigateToShimFlow;

  return v8(a1);
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = specialized __RawDictionaryStorage.find<A>(_:)(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v18, a5 & 1);
      v22 = *v6;
      v13 = specialized __RawDictionaryStorage.find<A>(_:)(a3, a4);
      if ((v19 & 1) != (v23 & 1))
      {
LABEL_18:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      specialized _NativeDictionary.copy()();
      v13 = v21;
    }
  }

  v24 = *v6;
  if (v19)
  {
    v25 = (v24[7] + 16 * v13);
    v26 = *v25;
    v27 = v25[1];
    *v25 = a1;
    v25[1] = a2;

    return outlined consume of Data._Representation(v26, v27);
  }

  v24[(v13 >> 6) + 8] |= 1 << v13;
  v29 = (v24[6] + 16 * v13);
  *v29 = a3;
  v29[1] = a4;
  v30 = (v24[7] + 16 * v13);
  *v30 = a1;
  v30[1] = a2;
  v31 = v24[2];
  v17 = __OFADD__(v31, 1);
  v32 = v31 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v24[2] = v32;
}

_OWORD *specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = outlined init with take of Any(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

uint64_t specialized SuggestionsEntryPoint.__allocating_init(suggestionsDonator:biomeDonator:localeProvider:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v18[3] = a6;
  v18[4] = a7;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v18);
  (*(*(a6 - 8) + 32))(boxed_opaque_existential_1, a2, a6);
  outlined init with copy of OutputPublisherAsync(a1, v17);
  outlined init with copy of OutputPublisherAsync(v18, v16);
  v14 = (*(a5 + 112))(v17, v16, closure #1 in SuggestionsEntryPoint.init(suggestionsDonator:biomeDonator:localeProvider:), 0, a3, a4);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  __swift_destroy_boxed_opaque_existential_0Tm(v18);
  return v14;
}

unint64_t specialized SuggestionsEntryPoint.getSuggestionExecutionParams(_:)(void *a1)
{
  v83 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SuggestionIntent();
  v2 = *(v83 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v83);
  v85 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v84 = &v62 - v6;
  v79 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerSuggestionCandidate();
  v86 = *(v79 - 8);
  v7 = *(v86 + 64);
  v8 = __chkstk_darwin(v79);
  v81 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v12 = &v62 - v11;
  v13 = __chkstk_darwin(v10);
  v82 = &v62 - v14;
  __chkstk_darwin(v13);
  v16 = &v62 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI42Apple_Parsec_Siri_V2alpha_ServerSuggestionVSgMd, "Џ");
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v20 = &v62 - v19;
  v21 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerSuggestion();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  __chkstk_darwin(v21);
  v25 = &v62 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1 || (type metadata accessor for GenericExperience(), !swift_dynamicCastClass()))
  {

    return _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_10Foundation4DataVTt0g5Tf4g_n(_swiftEmptyArrayStorage);
  }

  v26 = a1;
  dispatch thunk of GenericExperience.serverSuggestions.getter();
  if ((*(v22 + 48))(v20, 1, v21) == 1)
  {
    outlined destroy of Apple_Parsec_Siri_V2alpha_ServerSuggestion?(v20);
    v70 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_10Foundation4DataVTt0g5Tf4g_n(_swiftEmptyArrayStorage);

    return v70;
  }

  (*(v22 + 32))(v25, v20, v21);
  lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_ServerSuggestion and conformance Apple_Parsec_Siri_V2alpha_ServerSuggestion(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_ServerSuggestion and conformance Apple_Parsec_Siri_V2alpha_ServerSuggestion, &type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerSuggestion);
  v66 = Message.serializedData(partial:)();
  v67 = v28;
  if (one-time initialization token for information != -1)
  {
    goto LABEL_44;
  }

  while (1)
  {
    v29 = type metadata accessor for Logger();
    __swift_project_value_buffer(v29, static Logger.information);
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_0, v30, v31, "Suggestions found on POMMES Response, trying donation to Siri Suggestions.", v32, 2u);
    }

    v77 = v12;
    v63 = v26;
    v64 = v22;
    v65 = v21;

    v68 = v25;
    v33 = Apple_Parsec_Siri_V2alpha_ServerSuggestion.candidates.getter();
    v78 = *(v33 + 16);
    v69 = v2;
    if (v78)
    {
      v25 = 0;
      v75 = v86 + 16;
      v74 = enum case for Apple_Parsec_Siri_V2alpha_SuggestionIntent.unspecified(_:);
      v72 = (v2 + 8);
      v73 = (v2 + 104);
      v70 = (v86 + 8);
      v71 = (v86 + 32);
      v34 = _swiftEmptyArrayStorage;
      v2 = v79;
      v76 = v33;
      while (v25 < *(v33 + 16))
      {
        v80 = (*(v86 + 80) + 32) & ~*(v86 + 80);
        v21 = *(v86 + 72);
        (*(v86 + 16))(v16, v33 + v80 + v21 * v25, v2);
        v22 = v84;
        Apple_Parsec_Siri_V2alpha_ServerSuggestionCandidate.intent.getter();
        v35 = v85;
        v12 = v83;
        (*v73)(v85, v74, v83);
        lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_ServerSuggestion and conformance Apple_Parsec_Siri_V2alpha_ServerSuggestion(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_SuggestionIntent and conformance Apple_Parsec_Siri_V2alpha_SuggestionIntent, &type metadata accessor for Apple_Parsec_Siri_V2alpha_SuggestionIntent);
        dispatch thunk of RawRepresentable.rawValue.getter();
        dispatch thunk of RawRepresentable.rawValue.getter();
        v26 = v72;
        v36 = *v72;
        (*v72)(v35, v12);
        v36(v22, v12);
        if (v88 == v87)
        {
          v37 = *v71;
          (*v71)(v82, v16, v2);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v89 = v34;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v34[2] + 1, 1);
            v2 = v79;
            v34 = v89;
          }

          v22 = v34[2];
          v39 = v34[3];
          v26 = (v22 + 1);
          if (v22 >= v39 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v39 > 1, v22 + 1, 1);
            v2 = v79;
            v34 = v89;
          }

          v34[2] = v26;
          v37(v34 + v80 + v22 * v21, v82, v2);
        }

        else
        {
          (*v70)(v16, v2);
        }

        ++v25;
        v33 = v76;
        if (v78 == v25)
        {
          goto LABEL_25;
        }
      }

      __break(1u);
      goto LABEL_43;
    }

    v34 = _swiftEmptyArrayStorage;
LABEL_25:

    v40 = v34[2];

    v70 = &_swiftEmptyDictionarySingleton;
    if (v40)
    {
      v41 = static SuggestionConstants.relatedQuestionsPayloadKey.getter();
      v43 = v42;
      v44 = v66;
      v45 = v67;
      outlined copy of Data._Representation(v66, v67);
      v46 = swift_isUniquelyReferenced_nonNull_native();
      v89 = &_swiftEmptyDictionarySingleton;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v44, v45, v41, v43, v46);

      v70 = v89;
    }

    v12 = &enum case for Apple_Parsec_Siri_V2alpha_SuggestionIntent.unspecified(_:);
    v47 = Apple_Parsec_Siri_V2alpha_ServerSuggestion.candidates.getter();
    v78 = *(v47 + 16);
    if (!v78)
    {
      break;
    }

    v2 = 0;
    v75 = v86 + 16;
    v74 = enum case for Apple_Parsec_Siri_V2alpha_SuggestionIntent.unspecified(_:);
    v72 = (v69 + 1);
    v73 = (v69 + 13);
    v71 = (v86 + 32);
    v69 = (v86 + 8);
    v48 = _swiftEmptyArrayStorage;
    v21 = v79;
    v76 = v47;
    while (v2 < *(v47 + 16))
    {
      v82 = ((*(v86 + 80) + 32) & ~*(v86 + 80));
      v80 = *(v86 + 72);
      v12 = v77;
      (*(v86 + 16))(v77, &v82[v47 + v80 * v2], v21);
      v26 = v84;
      v49 = v85;
      Apple_Parsec_Siri_V2alpha_ServerSuggestionCandidate.intent.getter();
      v50 = v83;
      (*v73)(v49, v74, v83);
      lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_ServerSuggestion and conformance Apple_Parsec_Siri_V2alpha_ServerSuggestion(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_SuggestionIntent and conformance Apple_Parsec_Siri_V2alpha_SuggestionIntent, &type metadata accessor for Apple_Parsec_Siri_V2alpha_SuggestionIntent);
      v25 = dispatch thunk of static Equatable.== infix(_:_:)();
      v16 = v72;
      v22 = *v72;
      (*v72)(v49, v50);
      (v22)(v26, v50);
      if (v25)
      {
        (*v69)(v12, v21);
      }

      else
      {
        v22 = *v71;
        (*v71)(v81, v12, v21);
        v51 = swift_isUniquelyReferenced_nonNull_native();
        v89 = v48;
        if ((v51 & 1) == 0)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v48[2] + 1, 1);
          v21 = v79;
          v48 = v89;
        }

        v12 = v82;
        v52 = v80;
        v16 = v48[2];
        v53 = v48[3];
        v26 = v16 + 1;
        if (v16 >= v53 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v53 > 1, (v16 + 1), 1);
          v21 = v79;
          v48 = v89;
        }

        v48[2] = v26;
        (v22)(&v12[v48 + v16 * v52], v81, v21);
      }

      v47 = v76;
      if (v78 == ++v2)
      {
        goto LABEL_39;
      }
    }

LABEL_43:
    __break(1u);
LABEL_44:
    swift_once();
  }

  v48 = _swiftEmptyArrayStorage;
LABEL_39:

  v54 = v48[2];

  if (v54)
  {
    v55 = static SuggestionConstants.serverPayloadKey.getter();
    v57 = v56;
    v58 = v66;
    v59 = v67;
    outlined copy of Data._Representation(v66, v67);
    v60 = v70;
    v61 = swift_isUniquelyReferenced_nonNull_native();
    v89 = v60;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v58, v59, v55, v57, v61);

    outlined consume of Data._Representation(v58, v59);
    (*(v64 + 8))(v68, v65);
    return v89;
  }

  else
  {
    (*(v64 + 8))(v68, v65);
    outlined consume of Data._Representation(v66, v67);
  }

  return v70;
}

uint64_t outlined destroy of Apple_Parsec_Siri_V2alpha_ServerSuggestion?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI42Apple_Parsec_Siri_V2alpha_ServerSuggestionVSgMd, "Џ");
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_ServerSuggestion and conformance Apple_Parsec_Siri_V2alpha_ServerSuggestion(unint64_t *a1, void (*a2)(uint64_t))
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

void SportsIntentDonator.donateIfNeeded(parse:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v13[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for PerformanceUtil();
  static PerformanceUtil.shared.getter();
  v14 = a1;
  Date.init()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s20SiriInferenceIntents21SearchForSportsIntentCSgMd, "ȏ");
  dispatch thunk of PerformanceUtil.recordMeasurement<A>(for:logMeasurement:date:fileId:lineNumber:callingFunction:block:)();

  (*(v5 + 8))(v8, v4);
  if (v15)
  {
    v9 = v15;
    v10 = String._bridgeToObjectiveC()();
    [v9 _setLaunchId:v10];

    v11 = v2[3];
    v12 = v2[4];
    __swift_project_boxed_opaque_existential_1(v2, v11);
    (*(v12 + 8))(v9, v11, v12);
  }
}

uint64_t closure #1 in static SportsIntentDonator.toDonatableIntent(parse:)(uint64_t a1)
{
  v2 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction();
  v34 = *(v2 - 8);
  v35 = v2;
  v3 = *(v34 + 64);
  __chkstk_darwin(v2);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse();
  v6 = *(v33 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v33);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Parse.PegasusResult();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Parse();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = (&v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v16 + 16))(v19, a1, v15);
  v20 = (*(v16 + 88))(v19, v15);
  if (v20 == enum case for Parse.pegasusResults(_:))
  {
    (*(v16 + 96))(v19, v15);
    (*(v11 + 32))(v14, v19, v10);
    Parse.PegasusResult.response.getter();
    Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.siriInstruction.getter();
    (*(v6 + 8))(v9, v33);
    v21 = Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.resultEntities.getter();
    (*(v34 + 8))(v5, v35);
    (*(v11 + 8))(v14, v10);
    return v21;
  }

  if (v20 != enum case for Parse.pommesResponse(_:))
  {
    if (one-time initialization token for information != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    __swift_project_value_buffer(v28, static Logger.information);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_0, v29, v30, "toDonatableIntent does not have pommesResponse or pegasusResults", v31, 2u);
    }

    (*(v16 + 8))(v19, v15);
    return 0;
  }

  (*(v16 + 96))(v19, v15);
  v22 = *v19;
  v23 = dispatch thunk of PommesResponse.experiences.getter();
  v24 = v23;
  if (!(v23 >> 62))
  {
    result = *(&dword_10 + (v23 & 0xFFFFFFFFFFFFFF8));
    if (result)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (!result)
  {
LABEL_16:

    return 0;
  }

LABEL_6:
  if ((v24 & 0xC000000000000001) != 0)
  {
    v26 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_9;
  }

  if (*(&dword_10 + (v24 & 0xFFFFFFFFFFFFFF8)))
  {
    v26 = *(v24 + 32);
LABEL_9:
    v27 = v26;

    v21 = dispatch thunk of Experience.associatedEntities.getter();

    return v21;
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall IntentDonator.donate(intent:)(INIntent intent)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v13 - v4;
  if (one-time initialization token for information != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Logger.information);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_0, v7, v8, "Donating sports intent for parse. Will log on background queue...", v9, 2u);
  }

  static TaskPriority.background.getter();
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v5, 0, 1, v10);
  v11 = swift_allocObject();
  v11[2].super.isa = 0;
  v11[3].super.isa = 0;
  v11[4].super.isa = intent.super.isa;
  v12 = intent.super.isa;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v5, &async function pointer to partial apply for closure #1 in IntentDonator.donate(intent:), v11);
}

uint64_t closure #1 in IntentDonator.donate(intent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a4;
  v5 = type metadata accessor for Date();
  v4[7] = v5;
  v6 = *(v5 - 8);
  v4[8] = v6;
  v7 = *(v6 + 64) + 15;
  v4[9] = swift_task_alloc();

  return _swift_task_switch(closure #1 in IntentDonator.donate(intent:), 0, 0);
}

void closure #1 in IntentDonator.donate(intent:)()
{
  v1 = v0[9];
  v2 = [objc_allocWithZone(INInteraction) initWithIntent:v0[6] response:0];
  v0[10] = v2;
  type metadata accessor for PerformanceUtil();
  v0[11] = static PerformanceUtil.shared.getter();
  v3 = swift_task_alloc();
  v0[12] = v3;
  *(v3 + 16) = v2;
  Date.init()();
  v4 = *(&async function pointer to dispatch thunk of PerformanceUtil.recordMeasurement<A>(for:logMeasurement:date:fileId:lineNumber:callingFunction:block:) + 1);
  v8 = &async function pointer to dispatch thunk of PerformanceUtil.recordMeasurement<A>(for:logMeasurement:date:fileId:lineNumber:callingFunction:block:) + async function pointer to dispatch thunk of PerformanceUtil.recordMeasurement<A>(for:logMeasurement:date:fileId:lineNumber:callingFunction:block:);
  v5 = swift_task_alloc();
  v0[13] = v5;
  *v5 = v0;
  v5[1] = closure #1 in IntentDonator.donate(intent:);
  v6 = v0[9];

  __asm { BR              X0 }
}

uint64_t closure #1 in IntentDonator.donate(intent:)()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 88);
  v5 = *(*v1 + 72);
  v6 = *(*v1 + 64);
  v7 = *(*v1 + 56);
  v8 = *v1;
  *(*v1 + 112) = v0;

  (*(v6 + 8))(v5, v7);

  if (v0)
  {
    v9 = closure #1 in IntentDonator.donate(intent:);
  }

  else
  {
    v10 = *(v2 + 96);

    v9 = closure #1 in IntentDonator.donate(intent:);
  }

  return _swift_task_switch(v9, 0, 0);
}

{
  v19 = v0;
  if (one-time initialization token for information != -1)
  {
    swift_once();
  }

  v1 = v0[10];
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.information);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[10];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v18 = v9;
    *v8 = 136315138;
    v10 = [v7 intent];
    v11 = INIntent.debugDescriptionLite.getter();
    v13 = v12;

    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v13, &v18);

    *(v8 + 4) = v14;
    _os_log_impl(&dword_0, v4, v5, "Sports intent that was successfully donated: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v9);
  }

  else
  {
  }

  v15 = v0[9];

  v16 = v0[1];

  return v16();
}

{
  v27 = v0;
  v1 = v0[12];

  if (one-time initialization token for information != -1)
  {
    swift_once();
  }

  v2 = v0[14];
  v3 = v0[10];
  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logger.information);
  v5 = v3;
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[14];
  v10 = v0[10];
  if (v8)
  {
    v11 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *v11 = 136315394;
    swift_getErrorValue();
    v13 = v0[2];
    v12 = v0[3];
    v14 = v0[4];
    v15 = Error.localizedDescription.getter();
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, &v26);

    *(v11 + 4) = v17;
    *(v11 + 12) = 2080;
    v18 = [v10 intent];
    v19 = INIntent.debugDescriptionLite.getter();
    v21 = v20;

    v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v21, &v26);

    *(v11 + 14) = v22;
    _os_log_impl(&dword_0, v6, v7, "Error when donating Sports intent: %s intent: %s", v11, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v23 = v0[9];

  v24 = v0[1];

  return v24();
}

uint64_t closure #1 in closure #1 in IntentDonator.donate(intent:)()
{
  v1 = v0[18];
  v0[2] = v0;
  v0[3] = closure #1 in closure #1 in IntentDonator.donate(intent:);
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccyyts5Error_pGMd, &_sSccyyts5Error_pGMR);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSError?) -> () with result type ();
  v0[13] = &block_descriptor_2;
  v0[14] = v2;
  [v1 donateInteractionWithCompletion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 152) = v2;
  if (v2)
  {
    v3 = closure #1 in closure #1 in IntentDonator.donate(intent:);
  }

  else
  {
    v3 = closure #1 in closure #1 in IntentDonator.donate(intent:);
  }

  return _swift_task_switch(v3, 0, 0);
}

{
  return (*(v0 + 8))();
}

{
  v1 = *(v0 + 152);
  swift_willThrow();
  v2 = *(v0 + 8);
  v3 = *(v0 + 152);

  return v2();
}

uint64_t @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSError?) -> () with result type ()(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v5 = swift_allocError();
    *v6 = a2;
    v7 = a2;

    return _swift_continuation_throwingResumeWithError(v4, v5);
  }

  else
  {
    v8 = *v3;

    return _swift_continuation_throwingResume(v8);
  }
}

void *partial apply for closure #1 in SportsIntentDonator.donateIfNeeded(parse:)@<X0>(void *a1@<X8>)
{
  result = specialized static SportsIntentDonator.toDonatableIntent(parse:)(*(v1 + 16));
  *a1 = result;
  return result;
}

uint64_t sub_52030()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t partial apply for closure #1 in IntentDonator.donate(intent:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = protocol witness for Flow.execute() in conformance NavigateToShimFlow;

  return closure #1 in IntentDonator.donate(intent:)(a1, v4, v5, v6);
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for SportsIntentDonator(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for SportsIntentDonator(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t partial apply for closure #1 in closure #1 in IntentDonator.donate(intent:)(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = protocol witness for Flow.execute() in conformance NavigateToShimFlow;

  return closure #1 in closure #1 in IntentDonator.donate(intent:)(a1, v4);
}

void *specialized static SportsIntentDonator.toDonatableIntent(parse:)(uint64_t a1)
{
  v2 = type metadata accessor for Apple_Parsec_Siri_Context_ResultEntity();
  v3 = *(v2 - 8);
  v4 = v3[8];
  __chkstk_darwin(v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = closure #1 in static SportsIntentDonator.toDonatableIntent(parse:)(a1);
  if (v7)
  {
    if (*(v7 + 16))
    {
      v8 = v7;
      (v3[2])(v6, v7 + ((*(v3 + 80) + 32) & ~*(v3 + 80)), v2);
      v9 = *(v8 + 16);

      if (v9 == 1)
      {
        if (one-time initialization token for information != -1)
        {
          goto LABEL_44;
        }

        while (1)
        {
          v10 = type metadata accessor for Logger();
          v11 = __swift_project_value_buffer(v10, static Logger.information);
          v12 = specialized static UsoEntity_common_SportsItem.from(resultEntity:logger:)(v6, v11);
          if (!v12)
          {
            goto LABEL_38;
          }

          v13 = v12;
          v14 = dispatch thunk of UsoEntity_common_SportsItem.associatedSportsItems.getter();
          if (!v14)
          {
            (v3[1])(v6, v2);

            return 0;
          }

          v15 = v14;
          v31 = v6;
          v34 = v3;
          v3 = [objc_allocWithZone(type metadata accessor for SearchForSportsIntent()) init];
          v6 = (v15 & 0xFFFFFFFFFFFFFF8);
          v32 = v2;
          v33 = v13;
          if (v15 >> 62)
          {
            v2 = _CocoaArrayWrapper.endIndex.getter();
            if (!v2)
            {
LABEL_46:

              (v34[1])(v31, v32);
              return v3;
            }
          }

          else
          {
            v2 = *(&dword_10 + (v15 & 0xFFFFFFFFFFFFFF8));
            if (!v2)
            {
              goto LABEL_46;
            }
          }

          v16 = 0;
          v35 = v2;
          v36 = v15 & 0xC000000000000001;
          while (v36)
          {
            specialized _ArrayBuffer._getElementSlowPath(_:)();
            v18 = v16 + 1;
            if (__OFADD__(v16, 1))
            {
LABEL_37:
              __break(1u);
              goto LABEL_38;
            }

LABEL_15:
            dispatch thunk of CodeGenListEntry.entry.getter();
            if (v37)
            {
              v19 = v15;

              v20 = specialized static SportsProperty.from(entity:)();
              v22 = v21;
              v24 = v23;

              if (v24 <= 3u)
              {
                if (v24 > 1u)
                {
                  v25 = String._bridgeToObjectiveC()();
                  if (v24 == 2)
                  {
                    [v3 setLeagueName:v25];

                    v26 = v20;
                    v27 = v22;
                    v28 = 2;
                  }

                  else
                  {
                    [v3 setLeagueQId:v25];

                    v26 = v20;
                    v27 = v22;
                    v28 = 3;
                  }
                }

                else
                {
                  v25 = String._bridgeToObjectiveC()();
                  if (v24)
                  {
                    [v3 setTeamQId:v25];

                    v26 = v20;
                    v27 = v22;
                    v28 = 1;
                  }

                  else
                  {
                    [v3 setTeamName:v25];

                    v26 = v20;
                    v27 = v22;
                    v28 = 0;
                  }
                }
              }

              else if (v24 <= 5u)
              {
                v25 = String._bridgeToObjectiveC()();
                if (v24 == 4)
                {
                  [v3 setSportName:v25];

                  v26 = v20;
                  v27 = v22;
                  v28 = 4;
                }

                else
                {
                  [v3 setSportQId:v25];

                  v26 = v20;
                  v27 = v22;
                  v28 = 5;
                }
              }

              else
              {
                if (v24 != 6)
                {
                  if (v24 == 7)
                  {
                    v25 = String._bridgeToObjectiveC()();
                    [v3 setAthleteQId:v25];

                    v26 = v20;
                    v27 = v22;
                    v28 = 7;
                    goto LABEL_33;
                  }

LABEL_34:
                  v15 = v19;
                  v2 = v35;
                  goto LABEL_11;
                }

                v25 = String._bridgeToObjectiveC()();
                [v3 setAthleteName:v25];

                v26 = v20;
                v27 = v22;
                v28 = 6;
              }

LABEL_33:
              outlined consume of SportsProperty?(v26, v27, v28);

              goto LABEL_34;
            }

LABEL_11:
            ++v16;
            if (v18 == v2)
            {
              goto LABEL_46;
            }
          }

          if (v16 < *(v6 + 2))
          {
            break;
          }

          __break(1u);
LABEL_44:
          swift_once();
        }

        v17 = *(v15 + 8 * v16 + 32);

        v18 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          goto LABEL_37;
        }

        goto LABEL_15;
      }

LABEL_38:
      (v3[1])(v6, v2);
    }

    else
    {
    }
  }

  return 0;
}