uint64_t AddOrCallPromptForValueStrategy.getAction(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  OUTLINED_FUNCTION_41_4();
  if (PhoneCallNLIntent.isOutgoingCall()())
  {
    *a2 = 0;
  }

  else
  {
    OUTLINED_FUNCTION_32_4();
    OUTLINED_FUNCTION_41_4();
    if (!PhoneCallNLIntent.isAddParticipant()())
    {
      OUTLINED_FUNCTION_32_4();
      if (PhoneCallNLIntent.hasCallConfirmation(_:)(PhoneCallFlowDelegatePlugin_PhoneCallConfirmation_no) || (OUTLINED_FUNCTION_32_4(), PhoneCallNLIntent.hasCallConfirmation(_:)(PhoneCallFlowDelegatePlugin_PhoneCallConfirmation_cancel)))
      {
        v4 = &enum case for PromptResult.cancelled<A>(_:);
      }

      else
      {
        v4 = &enum case for PromptResult.unanswered<A>(_:);
      }

      goto LABEL_6;
    }

    *a2 = 1;
  }

  v4 = &enum case for PromptResult.answered<A>(_:);
LABEL_6:
  v5 = *v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow12PromptResultOy09PhoneCallC14DelegatePlugin07Ongoingg13ConfirmIntentC0C6ActionOGMd, &_s11SiriKitFlow12PromptResultOy09PhoneCallC14DelegatePlugin07Ongoingg13ConfirmIntentC0C6ActionOGMR);
  v7 = OUTLINED_FUNCTION_23_1(v6);
  v9 = *(v8 + 104);

  return v9(a2, v5, v7);
}

void AddOrCallPromptForValueStrategy.getNLContextUpdate()()
{
  OUTLINED_FUNCTION_66();
  v42 = v0;
  v43 = type metadata accessor for Siri_Nlu_External_SystemDialogAct();
  v1 = OUTLINED_FUNCTION_7(v43);
  v3 = v2;
  v5 = *(v4 + 64);
  __chkstk_darwin(v1);
  OUTLINED_FUNCTION_4();
  v8 = v7 - v6;
  v9 = type metadata accessor for Siri_Nlu_External_SystemGaveOptions();
  v10 = OUTLINED_FUNCTION_7(v9);
  v40 = v11;
  v41 = v10;
  v13 = *(v12 + 64);
  __chkstk_darwin(v10);
  OUTLINED_FUNCTION_12_5();
  v39 = v14 - v15;
  __chkstk_darwin(v16);
  v18 = &v38 - v17;
  Siri_Nlu_External_SystemGaveOptions.init()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D27_Nlu_External_UserDialogActVGMd, &_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D27_Nlu_External_UserDialogActVGMR);
  v19 = *(type metadata accessor for Siri_Nlu_External_UserDialogAct() - 8);
  v20 = *(v19 + 72);
  v21 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  *(swift_allocObject() + 16) = xmmword_426980;
  v22 = type metadata accessor for UsoTaskBuilder_call_common_PhoneCall();
  OUTLINED_FUNCTION_41_1(v22);
  UsoTaskBuilder_call_common_PhoneCall.init()();
  UsoTaskBuilder.toUserStatedTaskDialogAct()();

  AddOrCallPromptForValueStrategy.faceTimeDialogAct()();
  AddOrCallPromptForValueStrategy.addParticipantDialogAct()();
  Siri_Nlu_External_SystemGaveOptions.choices.setter();
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
    v27 = swift_slowAlloc();
    v44 = v27;
    *v26 = 136315138;
    swift_beginAccess();
    Siri_Nlu_External_SystemGaveOptions.choices.getter();
    swift_endAccess();
    v28 = Array.description.getter();
    v30 = v29;

    v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v30, &v44);

    *(v26 + 4) = v31;
    _os_log_impl(&dword_0, v24, v25, "Returning NLUSystemGaveOptions: %s", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v27);
    OUTLINED_FUNCTION_26_0();
    OUTLINED_FUNCTION_26_0();
  }

  Siri_Nlu_External_SystemDialogAct.init()();
  swift_beginAccess();
  v32 = v40;
  v33 = v41;
  (*(v40 + 16))(v39, v18, v41);
  Siri_Nlu_External_SystemDialogAct.gaveOptions.setter();
  NLContextUpdate.init()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D29_Nlu_External_SystemDialogActVGMd, &_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D29_Nlu_External_SystemDialogActVGMR);
  v34 = *(v3 + 72);
  v35 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_424FD0;
  v37 = v43;
  (*(v3 + 16))(v36 + v35, v8, v43);
  NLContextUpdate.nluSystemDialogActs.setter();
  (*(v3 + 8))(v8, v37);
  (*(v32 + 8))(v18, v33);
  OUTLINED_FUNCTION_65();
}

uint64_t AddOrCallPromptForValueStrategy.faceTimeDialogAct()()
{
  v0 = type metadata accessor for UsoTaskBuilder_call_common_PhoneCall();
  OUTLINED_FUNCTION_41_1(v0);
  UsoTaskBuilder_call_common_PhoneCall.init()();
  v1 = type metadata accessor for UsoEntityBuilder_common_PhoneCall();
  OUTLINED_FUNCTION_41_1(v1);
  UsoEntityBuilder_common_PhoneCall.init()();
  if (one-time initialization token for faceTimeUsoApp != -1)
  {
    swift_once();
  }

  dispatch thunk of UsoEntityBuilderGlobalArgs.setUsoAssociatedApp(value:)();
  dispatch thunk of Uso_VerbTemplateBuilder_Target.setTarget(value:)();
  UsoTaskBuilder.toUserStatedTaskDialogAct()();
}

uint64_t AddOrCallPromptForValueStrategy.addParticipantDialogAct()()
{
  v0 = type metadata accessor for ListOperators();
  v1 = OUTLINED_FUNCTION_7(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  __chkstk_darwin(v1);
  OUTLINED_FUNCTION_4();
  v8 = v7 - v6;
  v9 = type metadata accessor for UsoTaskBuilder_update_common_PhoneCall();
  OUTLINED_FUNCTION_41_1(v9);
  UsoTaskBuilder_update_common_PhoneCall.init()();
  v10 = type metadata accessor for UsoEntityBuilder_common_PhoneCall();
  OUTLINED_FUNCTION_41_1(v10);
  UsoEntityBuilder_common_PhoneCall.init()();
  v11 = type metadata accessor for UsoEntityBuilder_common_Person();
  OUTLINED_FUNCTION_41_1(v11);
  UsoEntityBuilder_common_Person.init()();
  (*(v3 + 104))(v8, enum case for ListOperators.addToSet(_:), v0);
  dispatch thunk of UsoEntityBuilder_common_PhoneCall.addRecipientsListExpression(operatorValue:operand:)();
  (*(v3 + 8))(v8, v0);
  dispatch thunk of Uso_VerbTemplateBuilder_ReferenceTarget.setTarget(value:)();
  UsoTaskBuilder.toUserStatedTaskDialogAct()();
}

uint64_t *AddOrCallPromptForValueStrategy.deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 3);
  v1 = v0[8];

  v2 = v0[9];

  v3 = v0[10];

  __swift_destroy_boxed_opaque_existential_1(v0 + 11);
  return v0;
}

uint64_t AddOrCallPromptForValueStrategy.__deallocating_deinit()
{
  AddOrCallPromptForValueStrategy.deinit();

  return swift_deallocClassInstance();
}

uint64_t protocol witness for PromptForValueFlowStrategyAsync.parseValueResponse(input:) in conformance AddOrCallPromptForValueStrategy(uint64_t a1, uint64_t a2)
{
  *(v3 + 16) = a1;
  v5 = *(*v2 + 168);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v3 + 24) = v7;
  *v7 = v3;
  v7[1] = protocol witness for PromptForValueFlowStrategyAsync.parseValueResponse(input:) in conformance AddOrCallPromptForValueStrategy;

  return v9(a2);
}

uint64_t protocol witness for PromptForValueFlowStrategyAsync.parseValueResponse(input:) in conformance AddOrCallPromptForValueStrategy()
{
  OUTLINED_FUNCTION_27();
  v3 = v2;
  OUTLINED_FUNCTION_28();
  v5 = v4;
  OUTLINED_FUNCTION_6();
  *v6 = v5;
  v8 = *(v7 + 24);
  v9 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v10 = v9;

  if (!v0)
  {
    **(v5 + 16) = v3;
  }

  OUTLINED_FUNCTION_13_6();

  return v11();
}

uint64_t protocol witness for PromptForValueFlowStrategyAsync.makePromptForValue() in conformance AddOrCallPromptForValueStrategy(uint64_t a1)
{
  v4 = *(*v1 + 176);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = closure #1 in ActionableCallControlFlow.execute();

  return v8(a1);
}

uint64_t protocol witness for PromptForValueFlowStrategyAsync.makeRepromptOnEmptyParse() in conformance AddOrCallPromptForValueStrategy(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = async function pointer to PromptForValueFlowStrategyAsync.makeRepromptOnEmptyParse()[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = closure #1 in ActionableCallControlFlow.execute();

  return PromptForValueFlowStrategyAsync.makeRepromptOnEmptyParse()(a1, a2, a3);
}

uint64_t protocol witness for PromptForValueFlowStrategyAsync.makeRepromptOnLowConfidence() in conformance AddOrCallPromptForValueStrategy(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = async function pointer to PromptForValueFlowStrategyAsync.makeRepromptOnLowConfidence()[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = closure #1 in ActionableCallControlFlow.execute();

  return PromptForValueFlowStrategyAsync.makeRepromptOnLowConfidence()(a1, a2, a3);
}

uint64_t protocol witness for PromptForValueFlowStrategyAsync.makeFlowCancelledResponse() in conformance AddOrCallPromptForValueStrategy(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = async function pointer to PromptForValueFlowStrategyAsync.makeFlowCancelledResponse()[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = closure #2 in ActionableCallControlFlow.execute();

  return PromptForValueFlowStrategyAsync.makeFlowCancelledResponse()(a1, a2, a3);
}

uint64_t protocol witness for PromptForValueFlowStrategyAsync.makeErrorResponse(_:) in conformance AddOrCallPromptForValueStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = async function pointer to PromptForValueFlowStrategyAsync.makeErrorResponse(_:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = closure #1 in ActionableCallControlFlow.execute();

  return PromptForValueFlowStrategyAsync.makeErrorResponse(_:)(a1, a2, a3, a4);
}

uint64_t specialized AddOrCallPromptForValueStrategy.init(sharedGlobals:ongoingCallCats:ongoingCallCATsSimple:phoneCallDisplayTextCATsSimple:responseGenerator:)(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(a6 + 112) = a7;
  *(a6 + 120) = a8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((a6 + 88));
  (*(*(a7 - 8) + 32))(boxed_opaque_existential_1, a5, a7);
  *(a6 + 16) = 2;
  outlined init with take of SPHConversation(a1, a6 + 24);
  *(a6 + 64) = a2;
  *(a6 + 72) = a3;
  *(a6 + 80) = a4;
  return a6;
}

uint64_t partial apply for implicit closure #1 in AddOrCallPromptForValueStrategy.makePromptForValue()()
{
  OUTLINED_FUNCTION_15();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_18(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_10_5(v1);

  return implicit closure #1 in AddOrCallPromptForValueStrategy.makePromptForValue()(v3, v4);
}

uint64_t partial apply for implicit closure #2 in AddOrCallPromptForValueStrategy.makePromptForValue()()
{
  OUTLINED_FUNCTION_15();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_18(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_10_5(v1);

  return implicit closure #2 in AddOrCallPromptForValueStrategy.makePromptForValue()(v3, v4);
}

uint64_t partial apply for implicit closure #3 in AddOrCallPromptForValueStrategy.makePromptForValue()()
{
  OUTLINED_FUNCTION_15();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_18(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_10_5(v1);

  return implicit closure #3 in AddOrCallPromptForValueStrategy.makePromptForValue()(v3, v4);
}

uint64_t partial apply for implicit closure #4 in AddOrCallPromptForValueStrategy.makePromptForValue()()
{
  OUTLINED_FUNCTION_15();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_18(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_10_5(v1);

  return implicit closure #4 in AddOrCallPromptForValueStrategy.makePromptForValue()(v3, v4);
}

uint64_t outlined destroy of CommonDirectAction(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_23_1(v3);
  (*(v4 + 8))(a1);
  return a1;
}

unint64_t lazy protocol witness table accessor for type PhoneSnippetDataModels and conformance PhoneSnippetDataModels()
{
  result = lazy protocol witness table cache variable for type PhoneSnippetDataModels and conformance PhoneSnippetDataModels;
  if (!lazy protocol witness table cache variable for type PhoneSnippetDataModels and conformance PhoneSnippetDataModels)
  {
    type metadata accessor for PhoneSnippetDataModels();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneSnippetDataModels and conformance PhoneSnippetDataModels);
  }

  return result;
}

uint64_t outlined init with take of CommonDirectAction(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CommonDirectAction();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of CommonDirectAction(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CommonDirectAction();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_37_7()
{
  result = v0[419];
  v2 = v0[407];
  v3 = *(v0[413] + 8);
  return result;
}

double AnnotatedAppFinding.find(appQuery:device:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, _OWORD *a7@<X8>)
{
  (*(a6 + 8))(v10, a1, a2, a3, a4, 2, a5);
  v8 = v10[1];
  *a7 = v10[0];
  a7[1] = v8;
  result = *&v11;
  a7[2] = v11;
  return result;
}

uint64_t AnnotatedAppFinder.firstPartyAnnotatedAppStore.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];

  return v1;
}

uint64_t AnnotatedAppFinder.init(firstPartyAnnotatedAppStore:thirdPartyAnnotatedAppStore:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X3>, void *a5@<X8>)
{
  *a5 = a1;
  a5[1] = a2;
  a5[2] = a3;
  return outlined init with take of SPHConversation(a4, (a5 + 3));
}

void AnnotatedAppFinder.find(appQuery:device:avMode:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  OUTLINED_FUNCTION_10_2();
  a29 = v31;
  a30 = v32;
  v33 = v30;
  v78 = v34;
  v77 = v35;
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v43 = v42;
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2();
  }

  v44 = type metadata accessor for Logger();
  __swift_project_value_buffer(v44, static Logger.siriPhone);

  v45 = Logger.logObject.getter();
  v46 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    a13 = swift_slowAlloc();
    *v47 = 136315394;
    *(v47 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001DLL, 0x8000000000457510, &a13);
    *(v47 + 12) = 2080;
    v48 = OUTLINED_FUNCTION_8_2();
    v50 = AppQuery.description.getter(v48, v49, v37);
    v52 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v50, v51, &a13);

    *(v47 + 14) = v52;
    _os_log_impl(&dword_0, v45, v46, "#AnnotatedAppFinder %s appQuery=%s", v47, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_26_0();
    OUTLINED_FUNCTION_26_0();
  }

  if (v39)
  {
    type metadata accessor for App();

    OUTLINED_FUNCTION_8_2();
    App.__allocating_init(appIdentifier:)();
    v53 = App.isFirstParty()();

    if (!v53)
    {

      OUTLINED_FUNCTION_8_2();
      App.__allocating_init(appIdentifier:)();
      v66 = App.isFirstParty()();

      if (v66)
      {
        v67 = Logger.logObject.getter();
        v68 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v67, v68))
        {
          v69 = swift_slowAlloc();
          *v69 = 0;
          _os_log_impl(&dword_0, v67, v68, "#AnnotatedAppFinder Malformed query! Returning nil", v69, 2u);
          OUTLINED_FUNCTION_26_0();
        }

        v60 = 0;
      }

      else
      {
        v70 = v33[7];
        __swift_project_boxed_opaque_existential_1(v33 + 3, v33[6]);
        v71 = *(v70 + 1);
        v72 = OUTLINED_FUNCTION_8_2();
        v73(v72);
        v60 = a13;
        if (a13)
        {
          v64 = a18;
          v63 = a15;
          v62 = a16;
          v65 = 2;
          v61 = a14;
          goto LABEL_22;
        }
      }

LABEL_19:
      v61 = 0;
      v63 = 0;
      v62 = 0;
      v65 = 0;
      v64 = 0;
      goto LABEL_22;
    }

    v54 = v39;
  }

  else
  {
    v55 = AppQuery.defaultAppId.getter(v41, 0, v37);
    if (!v56)
    {
      v74 = *v33;
      v75 = v33[1];
      v76 = v33[2];
      FirstPartyAnnotatedAppStore.getDefaultApp(for:avMode:)(v77, v78, &a13);
      v60 = a13;
      v61 = a14;
      v63 = a15;
      v62 = a16;
      v64 = a18;

      outlined destroy of AnnotatedApp(&a13);
      goto LABEL_21;
    }

    v41 = v55;
    v54 = v56;
  }

  v57 = *v33;
  v58 = v33[1];
  v59 = v33[2];

  FirstPartyAnnotatedAppStore.getApp(for:device:avMode:)(v41, v54, v77, v78, v57, v59, &a13);
  v60 = a13;
  v61 = a14;
  v63 = a15;
  v62 = a16;
  v64 = a18;

  if (!v60)
  {
    goto LABEL_19;
  }

  if (!v39)
  {
LABEL_21:
    v65 = 1;
    goto LABEL_22;
  }

  v65 = 2;
LABEL_22:
  *v43 = v60;
  v43[1] = v61;
  v43[2] = v63;
  v43[3] = v62;
  v43[4] = v65;
  v43[5] = v64;
  OUTLINED_FUNCTION_11_10();
}

uint64_t AnnotatedApp.withSource(_:)@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v3 = *v2;
  v4 = v2[1];
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[5];
  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  *(a2 + 24) = v6;
  *(a2 + 32) = a1;
  *(a2 + 40) = v7;
}

__n128 AnnotatedAppFinder.findForAppSelection(app:device:appResolutionSource:)@<Q0>(uint64_t a1@<X1>, unsigned __int8 a2@<W2>, uint64_t a3@<X8>)
{
  v6 = App.appIdentifier.getter();
  v8 = v7;
  type metadata accessor for AppQuery.Builder();
  swift_allocObject();
  v9 = AppQuery.Builder.init(requestedAppId:overrides:)(v6, v8, _swiftEmptyArrayStorage);
  v10 = (*(*v9 + 160))(v9);
  v12 = v11;
  v14 = v13;

  AnnotatedAppFinder.find(appQuery:device:avMode:)(v10, v12, v14, a1, 2, v15, v16, v17, v31, v33, v34, v36, v37, v38, v39, *(&v39 + 1), v40, *(&v40 + 1), v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52);
  v32 = v40;
  v35 = v39;
  v18 = v41;
  v19 = v42;

  v20 = v39;
  if (v39)
  {
    v18 = a2;
  }

  else
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2();
    }

    v21 = type metadata accessor for Logger();
    __swift_project_value_buffer(v21, static Logger.siriPhone);

    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      *v24 = 136315394;
      *(v24 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000034, 0x8000000000457530, &v38);
      *(v24 + 12) = 2080;
      type metadata accessor for App();
      OUTLINED_FUNCTION_2_18();
      lazy protocol witness table accessor for type App and conformance App(v25, v26);
      v27 = dispatch thunk of CustomStringConvertible.description.getter();
      v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v28, &v38);

      *(v24 + 14) = v29;
      _os_log_impl(&dword_0, v22, v23, "#AnnotatedAppFinder %s Could not find AnnotatedApp for %s", v24, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_26_0();
      OUTLINED_FUNCTION_26_0();
    }

    v20 = v35;
  }

  *a3 = v20;
  result = v32;
  *(a3 + 16) = v32;
  *(a3 + 32) = v18;
  *(a3 + 40) = v19;
  return result;
}

Swift::Bool __swiftcall AnnotatedAppFinder.isInstalledOnDevice(appBundleId:)(Swift::String appBundleId)
{
  object = appBundleId._object;
  countAndFlagsBits = appBundleId._countAndFlagsBits;
  objc_allocWithZone(LSApplicationRecord);

  v3 = @nonobjc LSApplicationRecord.init(bundleIdentifier:allowPlaceholder:)(countAndFlagsBits, object, 0);
  if (v3)
  {

    LOBYTE(v3) = 1;
  }

  return v3;
}

double protocol witness for AnnotatedAppFinding.findForAppSelection(app:device:appResolutionSource:) in conformance AnnotatedAppFinder@<D0>(uint64_t a1@<X1>, unsigned __int8 a2@<W2>, _OWORD *a3@<X8>)
{
  AnnotatedAppFinder.findForAppSelection(app:device:appResolutionSource:)(a1, a2, v6);
  v4 = v6[1];
  *a3 = v6[0];
  a3[1] = v4;
  result = *&v7;
  a3[2] = v7;
  return result;
}

uint64_t ContactResolverConfigHashable.intentTypeName.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t AnnotatedApp.init(app:supportedIntents:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = App.appIdentifier.getter();
  *a3 = a1;
  *(a3 + 8) = a2;
  *(a3 + 16) = result;
  *(a3 + 24) = v7;
  *(a3 + 32) = 0;
  *(a3 + 40) = _swiftEmptySetSingleton;
  return result;
}

uint64_t AnnotatedApp.init(app:supportedIntents:launchId:source:actionsRestrictedWhileLocked:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  *a7 = result;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3;
  *(a7 + 24) = a4;
  *(a7 + 32) = a5;
  *(a7 + 40) = a6;
  return result;
}

uint64_t AnnotatedApp.init(app:supportedIntents:actionsRestrictedWhileLocked:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  result = App.appIdentifier.getter();
  *a4 = a1;
  *(a4 + 8) = a2;
  *(a4 + 16) = result;
  *(a4 + 24) = v9;
  *(a4 + 32) = 0;
  *(a4 + 40) = a3;
  return result;
}

uint64_t AnnotatedApp.init(app:supportedIntents:launchId:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = result;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4;
  *(a5 + 32) = 0;
  *(a5 + 40) = &_swiftEmptySetSingleton;
  return result;
}

void specialized Set.contains(_:)()
{
  OUTLINED_FUNCTION_10_2();
  if (*(v3 + 16))
  {
    OUTLINED_FUNCTION_12_12(v2, v3);
    PhoneCallVerb.rawValue.getter(v1);
    String.hash(into:)();

    Hasher._finalize()();
    OUTLINED_FUNCTION_0_16();
    v6 = v5 & ~v4;
    if ((*(v0 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
    {
      v7 = ~v4;
      while (1)
      {
        v8 = 0xE400000000000000;
        v9 = 1819042147;
        switch(*(*(v0 + 48) + v6))
        {
          case 1:
            v9 = 0x636162206C6C6163;
            v8 = 0xE90000000000006BLL;
            break;
          case 2:
            v8 = 0xE800000000000000;
            v9 = 0x656D697465636166;
            break;
          case 3:
            v9 = 0x656D697465636166;
            v11 = 0x6F6964756120;
            goto LABEL_15;
          case 4:
            v9 = 0x7072656B61657073;
            v10 = 1701736296;
            goto LABEL_19;
          case 5:
            v9 = 1684957542;
            break;
          case 6:
            v8 = 0xE600000000000000;
            v9 = 0x6C6169646572;
            break;
          case 7:
            v8 = 0xE700000000000000;
            v9 = 0x79666972616C63;
            break;
          case 8:
            v9 = 1684104562;
            break;
          case 9:
            v8 = 0xE700000000000000;
            v9 = 0x6D7269666E6F63;
            break;
          case 0xA:
            v8 = 0xE600000000000000;
            v9 = 0x726577736E61;
            break;
          case 0xB:
            v8 = 0xE700000000000000;
            v9 = 0x70755F676E6168;
            break;
          case 0xC:
            v8 = 0xE600000000000000;
            v9 = 0x6574656C6564;
            break;
          case 0xD:
            v9 = 0x65526F54746E6177;
            v10 = 1952540016;
LABEL_19:
            v8 = v10 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
            break;
          case 0xE:
            v9 = 1852403562;
            break;
          case 0xF:
            v9 = 0x6974726150646461;
            v11 = 0x746E61706963;
LABEL_15:
            v8 = v11 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
            break;
          case 0x10:
            v9 = 0xD000000000000011;
            v8 = 0x8000000000453820;
            break;
          default:
            break;
        }

        v12 = 0xE400000000000000;
        v13 = 1819042147;
        switch(v1)
        {
          case 1:
            v13 = 0x636162206C6C6163;
            v12 = 0xE90000000000006BLL;
            break;
          case 2:
            v12 = 0xE800000000000000;
            v13 = 0x656D697465636166;
            break;
          case 3:
            v13 = 0x656D697465636166;
            v15 = 0x6F6964756120;
            goto LABEL_34;
          case 4:
            v13 = 0x7072656B61657073;
            v14 = 1701736296;
            goto LABEL_38;
          case 5:
            v13 = 1684957542;
            break;
          case 6:
            v12 = 0xE600000000000000;
            v13 = 0x6C6169646572;
            break;
          case 7:
            v12 = 0xE700000000000000;
            v13 = 0x79666972616C63;
            break;
          case 8:
            v13 = 1684104562;
            break;
          case 9:
            v12 = 0xE700000000000000;
            v13 = 0x6D7269666E6F63;
            break;
          case 10:
            v12 = 0xE600000000000000;
            v13 = 0x726577736E61;
            break;
          case 11:
            v12 = 0xE700000000000000;
            v13 = 0x70755F676E6168;
            break;
          case 12:
            v12 = 0xE600000000000000;
            v13 = 0x6574656C6564;
            break;
          case 13:
            v13 = 0x65526F54746E6177;
            v14 = 1952540016;
LABEL_38:
            v12 = v14 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
            break;
          case 14:
            v13 = 1852403562;
            break;
          case 15:
            v13 = 0x6974726150646461;
            v15 = 0x746E61706963;
LABEL_34:
            v12 = v15 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
            break;
          case 16:
            v13 = 0xD000000000000011;
            v12 = 0x8000000000453820;
            break;
          default:
            break;
        }

        if (v9 == v13 && v8 == v12)
        {
          break;
        }

        v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v17 & 1) == 0)
        {
          v6 = (v6 + 1) & v7;
          if ((*(v0 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
          {
            continue;
          }
        }

        goto LABEL_48;
      }
    }
  }

LABEL_48:
  OUTLINED_FUNCTION_11_10();
}

BOOL specialized Set.contains(_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SiriKitReliabilityCodes();
  v5 = OUTLINED_FUNCTION_7(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v5);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(a2 + 16))
  {
    return 0;
  }

  v12 = *(a2 + 40);
  OUTLINED_FUNCTION_1_24();
  lazy protocol witness table accessor for type App and conformance App(v13, v14);
  v25 = a1;
  dispatch thunk of Hashable._rawHashValue(seed:)();
  v15 = a2 + 56;
  v26 = a2;
  OUTLINED_FUNCTION_0_16();
  v18 = ~v17;
  do
  {
    v19 = v16 & v18;
    v20 = (1 << (v16 & v18)) & *(v15 + (((v16 & v18) >> 3) & 0xFFFFFFFFFFFFFF8));
    v21 = v20 != 0;
    if (!v20)
    {
      break;
    }

    (*(v7 + 16))(v11, *(v26 + 48) + *(v7 + 72) * v19, v4);
    OUTLINED_FUNCTION_1_24();
    lazy protocol witness table accessor for type App and conformance App(&lazy protocol witness table cache variable for type SiriKitReliabilityCodes and conformance SiriKitReliabilityCodes, v22);
    v23 = dispatch thunk of static Equatable.== infix(_:_:)();
    (*(v7 + 8))(v11, v4);
    v16 = v19 + 1;
  }

  while ((v23 & 1) == 0);
  return v21;
}

{
  if (!*(a2 + 16))
  {
    return 0;
  }

  OUTLINED_FUNCTION_12_12(a1, a2);
  Hasher._combine(_:)(v3 & 1);
  v4 = Hasher._finalize()();
  v5 = v2 + 56;
  do
  {
    v6 = v4 & ~(-1 << *(v2 + 32));
    result = ((1 << v6) & *(v5 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8))) != 0;
    if (((1 << v6) & *(v5 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8))) == 0)
    {
      break;
    }

    v8 = *(*(v2 + 48) + v6);
    v4 = v6 + 1;
  }

  while (v8 != (v3 & 1));
  return result;
}

uint64_t specialized Set.contains(_:)(uint64_t a1, void *a2)
{
  v46 = a1;
  v3 = type metadata accessor for UsoEntity_applePhoneCall_PhoneCallAttribute.DefinedValues();
  v4 = OUTLINED_FUNCTION_7(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  __chkstk_darwin(v4);
  v39 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSg_AFtMd, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSg_AFtMR);
  v11 = OUTLINED_FUNCTION_23_1(v10);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v35 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMd, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMR);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = __chkstk_darwin(v16 - 8);
  __chkstk_darwin(v19);
  v22 = &v35 - v21;
  if (!a2[2])
  {
    return 0;
  }

  v43 = v20;
  v23 = a2[5];
  Hasher.init(_seed:)();
  specialized Optional<A>.hash(into:)();
  Hasher._finalize()();
  v24 = a2 + 7;
  OUTLINED_FUNCTION_0_16();
  v27 = v26 & ~v25;
  if (((*(a2 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v27) & 1) == 0)
  {
    return 0;
  }

  v44 = ~v25;
  v37 = (v6 + 32);
  v38 = v10;
  v45 = *(v17 + 72);
  v41 = (v6 + 8);
  v42 = a2 + 7;
  v36 = a2;
  while (1)
  {
    OUTLINED_FUNCTION_15_13(a2[6] + v45 * v27, v22);
    v28 = *(v10 + 48);
    OUTLINED_FUNCTION_15_13(v22, v15);
    OUTLINED_FUNCTION_15_13(v46, &v15[v28]);
    OUTLINED_FUNCTION_14_3(v15);
    if (v30)
    {
      break;
    }

    v29 = v43;
    OUTLINED_FUNCTION_15_13(v15, v43);
    OUTLINED_FUNCTION_14_3(&v15[v28]);
    if (v30)
    {
      OUTLINED_FUNCTION_6_10();
      (*v41)(v29, v3);
      v24 = v42;
LABEL_12:
      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v15, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSg_AFtMd, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSg_AFtMR);
      goto LABEL_14;
    }

    v31 = v39;
    (*v37)(v39, &v15[v28], v3);
    lazy protocol witness table accessor for type App and conformance App(&lazy protocol witness table cache variable for type UsoEntity_applePhoneCall_PhoneCallAttribute.DefinedValues and conformance UsoEntity_applePhoneCall_PhoneCallAttribute.DefinedValues, &type metadata accessor for UsoEntity_applePhoneCall_PhoneCallAttribute.DefinedValues);
    v40 = dispatch thunk of static Equatable.== infix(_:_:)();
    v32 = *v41;
    v33 = v31;
    v10 = v38;
    (*v41)(v33, v3);
    OUTLINED_FUNCTION_6_10();
    v32(v29, v3);
    a2 = v36;
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v15, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMd, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMR);
    v24 = v42;
    if (v40)
    {
      return 1;
    }

LABEL_14:
    v27 = (v27 + 1) & v44;
    if (((*(v24 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27) & 1) == 0)
    {
      return 0;
    }
  }

  OUTLINED_FUNCTION_6_10();
  OUTLINED_FUNCTION_14_3(&v15[v28]);
  if (!v30)
  {
    goto LABEL_12;
  }

  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v15, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMd, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMR);
  return 1;
}

uint64_t specialized Set.contains(_:)(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    return 0;
  }

  v2 = *(a1 + 40);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  Hasher._finalize()();
  OUTLINED_FUNCTION_0_16();
  return (*(a1 + (((v3 & ~v4) >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> (v3 & ~v4)) & 1;
}

uint64_t AnnotatedApp.withAppIdentifier(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v8 = v3;
  v10 = *v3;
  if (a2)
  {
    v4 = a2;
    v5 = a1;
    App.systemExtensionBundleId.getter();
    v7 = v11;
    App.systemUIExtensionBundleId.getter();
    v6 = App.pluginIdentifier.getter();
    v12 = type metadata accessor for App();
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    swift_allocObject();

    v10 = App.init(appIdentifier:systemExtensionBundleId:systemUIExtensionBundleId:pluginIdentifier:)();
    OUTLINED_FUNCTION_13_9();
  }

  else
  {
    OUTLINED_FUNCTION_13_9();
  }

  v16 = *(v8 + 32);
  *a3 = v10;
  *(a3 + 8) = v4;
  *(a3 + 16) = v7;
  *(a3 + 24) = v5;
  *(a3 + 32) = v16;
  *(a3 + 40) = v6;
  return result;
}

void static AnnotatedApp.__derived_struct_equals(_:_:)(uint64_t *a1, uint64_t *a2)
{
  type metadata accessor for App();
  v4 = *a1;
  v5 = *a2;
  if ((static App.== infix(_:_:)() & 1) == 0)
  {
    return;
  }

  v6 = a1[1];
  v7 = a2[1];
  _sSh2eeoiySbShyxG_ABtFZSS_Tt1g5();
  if ((v8 & 1) == 0)
  {
    return;
  }

  v9 = a1[3];
  v10 = a2[3];
  if (v9)
  {
    if (!v10)
    {
      return;
    }

    v11 = a1[2] == a2[2] && v9 == v10;
    if (!v11 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return;
    }
  }

  else if (v10)
  {
    return;
  }

  if (*(a1 + 32) == *(a2 + 32))
  {
    v12 = a1[5];
    v13 = a2[5];

    _sSh2eeoiySbShyxG_ABtFZSS_Tt1g5();
  }
}

void _sSh2eeoiySbShyxG_ABtFZSS_Tt1g5()
{
  OUTLINED_FUNCTION_10_2();
  if (v0 == v1 || (v2 = v1, *(v0 + 16) != *(v1 + 16)))
  {
LABEL_24:
    OUTLINED_FUNCTION_11_10();
  }

  else
  {
    v3 = 0;
    v4 = v0 + 56;
    v5 = 1 << *(v0 + 32);
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    else
    {
      v6 = -1;
    }

    v7 = v6 & *(v0 + 56);
    v8 = (v5 + 63) >> 6;
    v9 = v1 + 56;
    v24 = v0;
    if (v7)
    {
      while (2)
      {
        v10 = __clz(__rbit64(v7));
        v7 &= v7 - 1;
LABEL_13:
        v13 = (*(v0 + 48) + 16 * (v10 | (v3 << 6)));
        v15 = *v13;
        v14 = v13[1];
        v16 = *(v2 + 40);
        Hasher.init(_seed:)();

        String.hash(into:)();
        Hasher._finalize()();
        OUTLINED_FUNCTION_0_16();
        v19 = ~v18;
        do
        {
          v20 = v17 & v19;
          if (((*(v9 + (((v17 & v19) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v17 & v19)) & 1) == 0)
          {

            goto LABEL_24;
          }

          v21 = (*(v2 + 48) + 16 * v20);
          if (*v21 == v15 && v21[1] == v14)
          {
            break;
          }

          v23 = _stringCompareWithSmolCheck(_:_:expecting:)();
          v17 = v20 + 1;
        }

        while ((v23 & 1) == 0);

        v0 = v24;
        if (v7)
        {
          continue;
        }

        break;
      }
    }

    v11 = v3;
    while (1)
    {
      v3 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v3 >= v8)
      {
        goto LABEL_24;
      }

      v12 = *(v4 + 8 * v3);
      ++v11;
      if (v12)
      {
        v10 = __clz(__rbit64(v12));
        v7 = (v12 - 1) & v12;
        goto LABEL_13;
      }
    }

    __break(1u);
  }
}

Swift::Int AppResolutionSource.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AppResolutionSource()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  AppResolutionSource.hash(into:)(v3, v1);
  return Hasher._finalize()();
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

unint64_t lazy protocol witness table accessor for type AppResolutionSource and conformance AppResolutionSource()
{
  result = lazy protocol witness table cache variable for type AppResolutionSource and conformance AppResolutionSource;
  if (!lazy protocol witness table cache variable for type AppResolutionSource and conformance AppResolutionSource)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppResolutionSource and conformance AppResolutionSource);
  }

  return result;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for AnnotatedAppFinder(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 64))
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

uint64_t storeEnumTagSinglePayload for AnnotatedAppFinder(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for AppResolutionSource(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFC)
  {
    if (a2 + 4 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 4) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 5;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v5 = v6 - 5;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for AppResolutionSource(_BYTE *result, unsigned int a2, unsigned int a3)
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

PhoneCallFlowDelegatePlugin::AnnounceCallBellCATPatternsIdentifiers_optional __swiftcall AnnounceCallBellCATPatternsIdentifiers.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of AnnounceCallBellCATPatternsIdentifiers.init(rawValue:), v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

unint64_t AnnounceCallBellCATs.Properties.rawValue.getter(char a1)
{
  if (!a1)
  {
    return 0xD000000000000026;
  }

  if (a1 == 1)
  {
    return 0xD000000000000028;
  }

  return 0xD000000000000025;
}

PhoneCallFlowDelegatePlugin::AnnounceCallBellCATPatternsIdentifiers_optional protocol witness for RawRepresentable.init(rawValue:) in conformance AnnounceCallBellCATPatternsIdentifiers@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::AnnounceCallBellCATPatternsIdentifiers_optional *a2@<X8>)
{
  result.value = AnnounceCallBellCATPatternsIdentifiers.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance AnnounceCallBellCATPatternsIdentifiers@<X0>(unint64_t *a1@<X8>)
{
  result = AnnounceCallBellCATs.Properties.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

__n128 *AnnounceCallBellAnnounceCallBellStartedParameters.asKeyValuePairs()(unint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v2 = swift_allocObject();
  OUTLINED_FUNCTION_0_2(v2, xmmword_424FD0);
  if (a1)
  {
    v3 = type metadata accessor for SirikitDeviceState();
    v4 = a1;
  }

  else
  {
    v4 = 0;
    v3 = 0;
    v2[3].n128_u64[1] = 0;
    v2[4].n128_u64[0] = 0;
  }

  v2[3].n128_u64[0] = v4;
  v2[4].n128_u64[1] = v3;

  return v2;
}

uint64_t AnnounceCallBellCATPatternsExecutor.announceCallBellEnded()()
{
  v1 = OUTLINED_FUNCTION_1(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = AnnounceCallBellCATPatternsExecutor.announceCallBellEnded();

  return v3(0xD000000000000026, 0x8000000000451C70, _swiftEmptyArrayStorage);
}

uint64_t AnnounceCallBellCATPatternsExecutor.announceCallBellEnded()(uint64_t a1)
{
  v4 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

uint64_t AnnounceCallBellCATPatternsExecutor.announceCallBellStarted(_:)(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  return _swift_task_switch(AnnounceCallBellCATPatternsExecutor.announceCallBellStarted(_:), 0, 0);
}

uint64_t AnnounceCallBellCATPatternsExecutor.announceCallBellStarted(_:)()
{
  *(v0 + 16) = 0;
  v1 = *(v0 + 32);
  (*(v0 + 24))(v0 + 16);
  v2 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = swift_allocObject();
  *(v0 + 48) = v3;
  OUTLINED_FUNCTION_0_2(v3, xmmword_424FD0);
  v4 = 0;
  if (v2)
  {
    v4 = type metadata accessor for SirikitDeviceState();
  }

  else
  {
    v3[3].n128_u64[1] = 0;
    v3[4].n128_u64[0] = 0;
  }

  *(v0 + 56) = v2;
  v3[3].n128_u64[0] = v2;
  v3[4].n128_u64[1] = v4;
  v5 = *(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + 1);
  v9 = (&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));

  v6 = swift_task_alloc();
  *(v0 + 64) = v6;
  *v6 = v0;
  v6[1] = AnnounceCallBellCATPatternsExecutor.announceCallBellStarted(_:);
  v7 = *(v0 + 40);

  return v9(0xD000000000000028, 0x8000000000451CA0, v3);
}

{
  v1 = v0[7];

  v2 = v0[1];
  v3 = v0[10];

  return v2(v3);
}

{
  v1 = v0[7];

  v2 = v0[1];
  v3 = v0[9];

  return v2();
}

uint64_t AnnounceCallBellCATPatternsExecutor.announceCallBellStarted(_:)(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 64);
  v6 = *(*v2 + 48);
  v7 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v8 = AnnounceCallBellCATPatternsExecutor.announceCallBellStarted(_:);
  }

  else
  {
    *(v4 + 80) = a1;
    v8 = AnnounceCallBellCATPatternsExecutor.announceCallBellStarted(_:);
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t AnnounceCallBellCATPatternsExecutor.informDoubleTapToEnd()()
{
  v1 = OUTLINED_FUNCTION_1(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = AnnounceCallBellCATPatternsExecutor.informDoubleTapToEnd();

  return v3(0xD000000000000025, 0x8000000000451CD0, _swiftEmptyArrayStorage);
}

uint64_t AnnounceCallBellCATPatternsExecutor.__allocating_init(templateDir:options:globals:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  return AnnounceCallBellCATPatternsExecutor.init(templateDir:options:globals:)(a1, a2);
}

uint64_t AnnounceCallBellCATPatternsExecutor.init(templateDir:options:globals:)(uint64_t a1, uint64_t a2)
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

unint64_t lazy protocol witness table accessor for type AnnounceCallBellCATPatternsIdentifiers and conformance AnnounceCallBellCATPatternsIdentifiers()
{
  result = lazy protocol witness table cache variable for type AnnounceCallBellCATPatternsIdentifiers and conformance AnnounceCallBellCATPatternsIdentifiers;
  if (!lazy protocol witness table cache variable for type AnnounceCallBellCATPatternsIdentifiers and conformance AnnounceCallBellCATPatternsIdentifiers)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnnounceCallBellCATPatternsIdentifiers and conformance AnnounceCallBellCATPatternsIdentifiers);
  }

  return result;
}

uint64_t protocol witness for AnnounceCallBellCATPatternsExecuting.announceCallBellEnded() in conformance AnnounceCallBellCATPatternsExecutor()
{
  v5 = (**v0 + class metadata base offset for AnnounceCallBellCATPatternsExecutor);
  v6 = (*v5 + **v5);
  v2 = (*v5)[1];
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = AnnounceCallBellCATPatternsExecutor.informDoubleTapToEnd();

  return v6();
}

uint64_t protocol witness for AnnounceCallBellCATPatternsExecuting.announceCallBellStarted(_:) in conformance AnnounceCallBellCATPatternsExecutor(uint64_t a1, uint64_t a2)
{
  v6 = *(**v2 + class metadata base offset for AnnounceCallBellCATPatternsExecutor + 8);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = AnnounceCallBellCATPatternsExecutor.informDoubleTapToEnd();

  return v10(a1, a2);
}

uint64_t protocol witness for AnnounceCallBellCATPatternsExecuting.informDoubleTapToEnd() in conformance AnnounceCallBellCATPatternsExecutor()
{
  v2 = *(**v0 + class metadata base offset for AnnounceCallBellCATPatternsExecutor + 16);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = AnnounceCallBellCATPatternsExecutor.informDoubleTapToEnd();

  return v6();
}

_BYTE *storeEnumTagSinglePayload for AnnounceCallBellCATPatternsIdentifiers(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for AnnounceCallBellAnnounceCallBellStartedParameters(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 8))
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

uint64_t storeEnumTagSinglePayload for AnnounceCallBellAnnounceCallBellStartedParameters(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t type metadata accessor for AnnounceCallBellCATPatternsExecutor()
{
  result = type metadata singleton initialization cache for AnnounceCallBellCATPatternsExecutor;
  if (!type metadata singleton initialization cache for AnnounceCallBellCATPatternsExecutor)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

PhoneCallFlowDelegatePlugin::AnnounceCallBellCATs::Properties_optional __swiftcall AnnounceCallBellCATs.Properties.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of AnnounceCallBellCATs.Properties.init(rawValue:), v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

PhoneCallFlowDelegatePlugin::AnnounceCallBellCATs::Properties_optional protocol witness for RawRepresentable.init(rawValue:) in conformance AnnounceCallBellCATs.Properties@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::AnnounceCallBellCATs::Properties_optional *a2@<X8>)
{
  result.value = AnnounceCallBellCATs.Properties.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t AnnounceCallBellCATs.announceCallBellEnded()()
{
  OUTLINED_FUNCTION_27();
  v1 = v0;
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  v7 = v2;
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_15_2(v3);
  *v4 = v5;
  v4[1] = closure #2 in ActionableCallControlFlow.execute();

  return v7(v1, 0xD000000000000026, 0x8000000000451C70, _swiftEmptyArrayStorage);
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapper.executeDialog(catId:parameters:));
  v5 = v0;
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_15_2(v1);
  *v2 = v3;
  v2[1] = AddCallParticipantCATs.errorNoTargetCall();

  return v5(0xD000000000000026, 0x8000000000451C70, _swiftEmptyArrayStorage);
}

{
  return OUTLINED_FUNCTION_33_1();
}

uint64_t AnnounceCallBellCATs.announceCallBellStarted(device:completion:)(unint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v2 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_0_2(v2, xmmword_424FD0);
  if (a1)
  {
    v3 = type metadata accessor for SirikitDeviceState();
    v4 = a1;
  }

  else
  {
    v4 = 0;
    v3 = 0;
    v2[3].n128_u64[1] = 0;
    v2[4].n128_u64[0] = 0;
  }

  v2[3].n128_u64[0] = v4;
  v2[4].n128_u64[1] = v3;

  dispatch thunk of CATWrapper.execute(catId:parameters:completion:)();
}

uint64_t AnnounceCallBellCATs.announceCallBellStarted(device:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t AnnounceCallBellCATs.announceCallBellStarted(device:)()
{
  v1 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v2 = OUTLINED_FUNCTION_35_1();
  v0[5] = v2;
  OUTLINED_FUNCTION_0_2(v2, xmmword_424FD0);
  v3 = 0;
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
  OUTLINED_FUNCTION_8_3(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = AnnounceCallBellCATs.announceCallBellStarted(device:);
  v5 = v0[4];
  v6 = v0[2];

  return v8(v6, 0xD000000000000028, 0x8000000000451CA0, v2);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  v3 = v2;
  v4 = *(v2 + 48);
  v5 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v6 = v5;
  *(v3 + 56) = v0;

  if (v0)
  {

    return _swift_task_switch(AddCallParticipantCATs.errorParticipantAlreadyActive(participant:shouldIncludeHandleLabel:currentCall:), 0, 0);
  }

  else
  {
    v7 = *(v3 + 40);

    OUTLINED_FUNCTION_11();

    return v8();
  }
}

{
  v1 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v2 = OUTLINED_FUNCTION_35_1();
  v0[4] = v2;
  OUTLINED_FUNCTION_0_2(v2, xmmword_424FD0);
  v3 = 0;
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
  OUTLINED_FUNCTION_8_3(&async function pointer to dispatch thunk of CATWrapper.executeDialog(catId:parameters:));
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = AnnounceCallBellCATs.announceCallBellStarted(device:);
  v5 = v0[3];

  return v7(0xD000000000000028, 0x8000000000451CA0, v2);
}

{
  OUTLINED_FUNCTION_27();
  v3 = v2;
  OUTLINED_FUNCTION_28();
  v5 = v4;
  v6 = *(v4 + 40);
  v7 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v8 = v7;
  *(v5 + 48) = v0;

  if (v0)
  {

    return _swift_task_switch(AddCallParticipantCATs.errorRestrictedForParticipant(participant:shouldIncludeHandleLabel:), 0, 0);
  }

  else
  {
    v9 = *(v5 + 32);

    v10 = *(v7 + 8);

    return v10(v3);
  }
}

uint64_t AnnounceCallBellCATs.announceCallBellStarted(device:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t AnnounceCallBellCATs.announceCallBellStarted(device:)(unint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v2 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_0_2(v2, xmmword_424FD0);
  if (a1)
  {
    v3 = type metadata accessor for SirikitDeviceState();
    v4 = a1;
  }

  else
  {
    v4 = 0;
    v3 = 0;
    v2[3].n128_u64[1] = 0;
    v2[4].n128_u64[0] = 0;
  }

  v2[3].n128_u64[0] = v4;
  v2[4].n128_u64[1] = v3;

  dispatch thunk of CATWrapper.execute(catId:parameters:)();
}

uint64_t AnnounceCallBellCATs.informDoubleTapToEnd()()
{
  OUTLINED_FUNCTION_27();
  v1 = v0;
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  v7 = v2;
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_15_2(v3);
  *v4 = v5;
  v4[1] = closure #1 in ActionableCallControlFlow.execute();

  return v7(v1, 0xD000000000000025, 0x8000000000451CD0, _swiftEmptyArrayStorage);
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapper.executeDialog(catId:parameters:));
  v5 = v0;
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_15_2(v1);
  *v2 = v3;
  v2[1] = AddCallParticipantCATs.unsupportedParticipantsMultipleContactsUnsupported();

  return v5(0xD000000000000025, 0x8000000000451CD0, _swiftEmptyArrayStorage);
}

{
  return OUTLINED_FUNCTION_33_1();
}

uint64_t AnnounceCallBellCATs.__allocating_init(templateDir:options:globals:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  return AnnounceCallBellCATs.init(templateDir:options:globals:)(a1, a2);
}

uint64_t AnnounceCallBellCATs.init(templateDir:options:globals:)(uint64_t a1, uint64_t a2)
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

unint64_t lazy protocol witness table accessor for type AnnounceCallBellCATs.Properties and conformance AnnounceCallBellCATs.Properties()
{
  result = lazy protocol witness table cache variable for type AnnounceCallBellCATs.Properties and conformance AnnounceCallBellCATs.Properties;
  if (!lazy protocol witness table cache variable for type AnnounceCallBellCATs.Properties and conformance AnnounceCallBellCATs.Properties)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnnounceCallBellCATs.Properties and conformance AnnounceCallBellCATs.Properties);
  }

  return result;
}

uint64_t type metadata accessor for AnnounceCallBellCATs()
{
  result = type metadata singleton initialization cache for AnnounceCallBellCATs;
  if (!type metadata singleton initialization cache for AnnounceCallBellCATs)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AnnounceCallBellCATs.Properties(_BYTE *result, unsigned int a2, unsigned int a3)
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

PhoneCallFlowDelegatePlugin::AnnounceCallBellCATsSimple::Properties_optional __swiftcall AnnounceCallBellCATsSimple.Properties.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of AnnounceCallBellCATsSimple.Properties.init(rawValue:), v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

PhoneCallFlowDelegatePlugin::AnnounceCallBellCATsSimple::Properties_optional protocol witness for RawRepresentable.init(rawValue:) in conformance AnnounceCallBellCATsSimple.Properties@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::AnnounceCallBellCATsSimple::Properties_optional *a2@<X8>)
{
  result.value = AnnounceCallBellCATsSimple.Properties.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t AnnounceCallBellCATsSimple.announceCallBellEnded()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v4 = v1;
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  *v2 = v0;
  v2[1] = AnnounceCallBellCATsSimple.announceCallBellEnded();

  return v4(0xD000000000000026, 0x8000000000451C70, _swiftEmptyArrayStorage);
}

BOOL AnnounceCallBellCATsSimple.AnnounceCallBellEndedDialogIds.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of AnnounceCallBellCATsSimple.AnnounceCallBellEndedDialogIds.init(rawValue:), v2);

  return v3 != 0;
}

BOOL protocol witness for RawRepresentable.init(rawValue:) in conformance AnnounceCallBellCATsSimple.AnnounceCallBellEndedDialogIds@<W0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = AnnounceCallBellCATsSimple.AnnounceCallBellEndedDialogIds.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

uint64_t AnnounceCallBellCATsSimple.announceCallBellEndedAsLabels()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  v5 = v1;
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  lazy protocol witness table accessor for type AnnounceCallBellCATsSimple.AnnounceCallBellEndedDialogIds and conformance AnnounceCallBellCATsSimple.AnnounceCallBellEndedDialogIds();
  OUTLINED_FUNCTION_9();
  *v2 = v3;
  v2[1] = AnnounceCallBellCATsSimple.announceCallBellEndedAsLabels();

  return v5(0xD000000000000026, 0x8000000000451C70, _swiftEmptyArrayStorage, &type metadata for AnnounceCallBellCATsSimple.AnnounceCallBellEndedDialogIds);
}

uint64_t AnnounceCallBellCATsSimple.announceCallBellEndedAsLabels()(uint64_t a1)
{
  v4 = *(*v2 + 16);
  v5 = *v2;
  OUTLINED_FUNCTION_4_2();
  *v6 = v5;

  v8 = *(v5 + 8);
  if (!v1)
  {
    v7 = a1;
  }

  return v8(v7);
}

unint64_t lazy protocol witness table accessor for type AnnounceCallBellCATsSimple.AnnounceCallBellEndedDialogIds and conformance AnnounceCallBellCATsSimple.AnnounceCallBellEndedDialogIds()
{
  result = lazy protocol witness table cache variable for type AnnounceCallBellCATsSimple.AnnounceCallBellEndedDialogIds and conformance AnnounceCallBellCATsSimple.AnnounceCallBellEndedDialogIds;
  if (!lazy protocol witness table cache variable for type AnnounceCallBellCATsSimple.AnnounceCallBellEndedDialogIds and conformance AnnounceCallBellCATsSimple.AnnounceCallBellEndedDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnnounceCallBellCATsSimple.AnnounceCallBellEndedDialogIds and conformance AnnounceCallBellCATsSimple.AnnounceCallBellEndedDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnnounceCallBellCATsSimple.AnnounceCallBellEndedDialogIds and conformance AnnounceCallBellCATsSimple.AnnounceCallBellEndedDialogIds;
  if (!lazy protocol witness table cache variable for type AnnounceCallBellCATsSimple.AnnounceCallBellEndedDialogIds and conformance AnnounceCallBellCATsSimple.AnnounceCallBellEndedDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnnounceCallBellCATsSimple.AnnounceCallBellEndedDialogIds and conformance AnnounceCallBellCATsSimple.AnnounceCallBellEndedDialogIds);
  }

  return result;
}

uint64_t AnnounceCallBellCATsSimple.announceCallBellStarted(device:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t AnnounceCallBellCATsSimple.announceCallBellStarted(device:)()
{
  v1 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v2 = swift_allocObject();
  v0[4] = v2;
  v3 = OUTLINED_FUNCTION_3_0(v2, xmmword_424FD0);
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
  OUTLINED_FUNCTION_8_3(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = AnnounceCallBellCATsSimple.announceCallBellStarted(device:);
  v5 = v0[3];

  return v7(0xD000000000000028, 0x8000000000451CA0, v2);
}

{
  OUTLINED_FUNCTION_27();
  v2 = *v1;
  v3 = *(*v1 + 40);
  v4 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v5 = v4;
  *(v2 + 48) = v0;

  if (v0)
  {

    return _swift_task_switch(AnnounceCallBellCATsSimple.announceCallBellStarted(device:), 0, 0);
  }

  else
  {
    v6 = *(v2 + 32);

    v7 = OUTLINED_FUNCTION_5_2();

    return v8(v7);
  }
}

PhoneCallFlowDelegatePlugin::AnnounceCallBellCATsSimple::AnnounceCallBellStartedDialogIds_optional protocol witness for RawRepresentable.init(rawValue:) in conformance AnnounceCallBellCATsSimple.AnnounceCallBellStartedDialogIds@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::AnnounceCallBellCATsSimple::AnnounceCallBellStartedDialogIds_optional *a2@<X8>)
{
  result.value = AnnounceCallBellCATsSimple.AnnounceCallBellStartedDialogIds.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance AnnounceCallBellCATsSimple.AnnounceCallBellStartedDialogIds@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  result = AnnounceCallBellCATsSimple.AnnounceCallBellStartedDialogIds.rawValue.getter();
  *a1 = 0x6423317473726966;
  a1[1] = v5;
  return result;
}

uint64_t AnnounceCallBellCATsSimple.announceCallBellStartedAsLabels(device:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t AnnounceCallBellCATsSimple.announceCallBellStartedAsLabels(device:)()
{
  v1 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v2 = swift_allocObject();
  v0[4] = v2;
  v3 = OUTLINED_FUNCTION_3_0(v2, xmmword_424FD0);
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
  OUTLINED_FUNCTION_8_3(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  v4 = swift_task_alloc();
  v0[5] = v4;
  lazy protocol witness table accessor for type AnnounceCallBellCATsSimple.AnnounceCallBellStartedDialogIds and conformance AnnounceCallBellCATsSimple.AnnounceCallBellStartedDialogIds();
  OUTLINED_FUNCTION_9();
  *v4 = v5;
  v4[1] = AnnounceCallBellCATsSimple.announceCallBellStartedAsLabels(device:);
  v6 = v0[3];

  return v8(0xD000000000000028, 0x8000000000451CA0, v2, &type metadata for AnnounceCallBellCATsSimple.AnnounceCallBellStartedDialogIds);
}

{
  OUTLINED_FUNCTION_27();
  v2 = *v1;
  v3 = *(*v1 + 40);
  v4 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v5 = v4;
  *(v2 + 48) = v0;

  if (v0)
  {

    return _swift_task_switch(AnnounceCallBellCATsSimple.announceCallBellStartedAsLabels(device:), 0, 0);
  }

  else
  {
    v6 = *(v2 + 32);

    v7 = OUTLINED_FUNCTION_5_2();

    return v8(v7);
  }
}

{
  v1 = v0[4];

  v2 = v0[1];
  v3 = v0[6];

  return v2();
}

unint64_t lazy protocol witness table accessor for type AnnounceCallBellCATsSimple.AnnounceCallBellStartedDialogIds and conformance AnnounceCallBellCATsSimple.AnnounceCallBellStartedDialogIds()
{
  result = lazy protocol witness table cache variable for type AnnounceCallBellCATsSimple.AnnounceCallBellStartedDialogIds and conformance AnnounceCallBellCATsSimple.AnnounceCallBellStartedDialogIds;
  if (!lazy protocol witness table cache variable for type AnnounceCallBellCATsSimple.AnnounceCallBellStartedDialogIds and conformance AnnounceCallBellCATsSimple.AnnounceCallBellStartedDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnnounceCallBellCATsSimple.AnnounceCallBellStartedDialogIds and conformance AnnounceCallBellCATsSimple.AnnounceCallBellStartedDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnnounceCallBellCATsSimple.AnnounceCallBellStartedDialogIds and conformance AnnounceCallBellCATsSimple.AnnounceCallBellStartedDialogIds;
  if (!lazy protocol witness table cache variable for type AnnounceCallBellCATsSimple.AnnounceCallBellStartedDialogIds and conformance AnnounceCallBellCATsSimple.AnnounceCallBellStartedDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnnounceCallBellCATsSimple.AnnounceCallBellStartedDialogIds and conformance AnnounceCallBellCATsSimple.AnnounceCallBellStartedDialogIds);
  }

  return result;
}

uint64_t AnnounceCallBellCATsSimple.informDoubleTapToEnd()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v4 = v1;
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  *v2 = v0;
  v2[1] = AnnounceCallBellCATsSimple.announceCallBellEnded();

  return v4(0xD000000000000025, 0x8000000000451CD0, _swiftEmptyArrayStorage);
}

uint64_t AnnounceCallBellCATsSimple.AnnounceCallBellStartedDialogIds.init(rawValue:)(Swift::String string, Swift::OpaquePointer cases)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(cases, v3);

  if (v5 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (v5)
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

uint64_t AnnounceCallBellCATsSimple.InformDoubleTapToEndDialogIds.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0x32676F6C616964;
  }

  else
  {
    return 0x6573557473726946;
  }
}

PhoneCallFlowDelegatePlugin::AnnounceCallBellCATsSimple::InformDoubleTapToEndDialogIds_optional protocol witness for RawRepresentable.init(rawValue:) in conformance AnnounceCallBellCATsSimple.InformDoubleTapToEndDialogIds@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::AnnounceCallBellCATsSimple::InformDoubleTapToEndDialogIds_optional *a2@<X8>)
{
  result.value = AnnounceCallBellCATsSimple.InformDoubleTapToEndDialogIds.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance AnnounceCallBellCATsSimple.InformDoubleTapToEndDialogIds@<X0>(uint64_t *a1@<X8>)
{
  result = AnnounceCallBellCATsSimple.InformDoubleTapToEndDialogIds.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t AnnounceCallBellCATsSimple.informDoubleTapToEndAsLabels()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  v5 = v1;
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  lazy protocol witness table accessor for type AnnounceCallBellCATsSimple.InformDoubleTapToEndDialogIds and conformance AnnounceCallBellCATsSimple.InformDoubleTapToEndDialogIds();
  OUTLINED_FUNCTION_9();
  *v2 = v3;
  v2[1] = AnnounceCallBellCATsSimple.announceCallBellEnded();

  return v5(0xD000000000000025, 0x8000000000451CD0, _swiftEmptyArrayStorage, &type metadata for AnnounceCallBellCATsSimple.InformDoubleTapToEndDialogIds);
}

unint64_t lazy protocol witness table accessor for type AnnounceCallBellCATsSimple.InformDoubleTapToEndDialogIds and conformance AnnounceCallBellCATsSimple.InformDoubleTapToEndDialogIds()
{
  result = lazy protocol witness table cache variable for type AnnounceCallBellCATsSimple.InformDoubleTapToEndDialogIds and conformance AnnounceCallBellCATsSimple.InformDoubleTapToEndDialogIds;
  if (!lazy protocol witness table cache variable for type AnnounceCallBellCATsSimple.InformDoubleTapToEndDialogIds and conformance AnnounceCallBellCATsSimple.InformDoubleTapToEndDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnnounceCallBellCATsSimple.InformDoubleTapToEndDialogIds and conformance AnnounceCallBellCATsSimple.InformDoubleTapToEndDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnnounceCallBellCATsSimple.InformDoubleTapToEndDialogIds and conformance AnnounceCallBellCATsSimple.InformDoubleTapToEndDialogIds;
  if (!lazy protocol witness table cache variable for type AnnounceCallBellCATsSimple.InformDoubleTapToEndDialogIds and conformance AnnounceCallBellCATsSimple.InformDoubleTapToEndDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnnounceCallBellCATsSimple.InformDoubleTapToEndDialogIds and conformance AnnounceCallBellCATsSimple.InformDoubleTapToEndDialogIds);
  }

  return result;
}

uint64_t AnnounceCallBellCATsSimple.__allocating_init(templateDir:options:globals:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  return AnnounceCallBellCATsSimple.init(templateDir:options:globals:)(a1, a2);
}

uint64_t AnnounceCallBellCATsSimple.init(templateDir:options:globals:)(uint64_t a1, uint64_t a2)
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

uint64_t AnnounceCallBellCATsSimple.__allocating_init(useResponseMode:options:)()
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

uint64_t AnnounceCallBellCATsSimple.init(useResponseMode:options:)()
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

unint64_t lazy protocol witness table accessor for type AnnounceCallBellCATsSimple.Properties and conformance AnnounceCallBellCATsSimple.Properties()
{
  result = lazy protocol witness table cache variable for type AnnounceCallBellCATsSimple.Properties and conformance AnnounceCallBellCATsSimple.Properties;
  if (!lazy protocol witness table cache variable for type AnnounceCallBellCATsSimple.Properties and conformance AnnounceCallBellCATsSimple.Properties)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnnounceCallBellCATsSimple.Properties and conformance AnnounceCallBellCATsSimple.Properties);
  }

  return result;
}

uint64_t type metadata accessor for AnnounceCallBellCATsSimple()
{
  result = type metadata singleton initialization cache for AnnounceCallBellCATsSimple;
  if (!type metadata singleton initialization cache for AnnounceCallBellCATsSimple)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AnnounceCallBellCATsSimple.Properties(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for AnnounceCallBellCATsSimple.AnnounceCallBellEndedDialogIds(_BYTE *result, int a2, int a3)
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

_BYTE *storeEnumTagSinglePayload for AnnounceCallBellCATsSimple.AnnounceCallBellStartedDialogIds(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t AnnounceCallConfirmationStrategy.__allocating_init(wrapped:sharedGlobals:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  AnnounceCallConfirmationStrategy.init(wrapped:sharedGlobals:)(a1, a2);
  return v4;
}

uint64_t AnnounceCallConfirmationStrategy.init(wrapped:sharedGlobals:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 64) = &outlined read-only object #0 of AnnounceCallConfirmationStrategy.init(wrapped:sharedGlobals:);
  *(v2 + 16) = a1;
  outlined init with take of PhoneCallFeatureFlagProviding(a2, v2 + 24);
  return v2;
}

uint64_t AnnounceCallConfirmationStrategy.actionForInput(_:section:isBargeIn:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, int a4@<W5>, uint64_t a5@<X8>)
{
  v137 = a4;
  v135 = a2;
  v132 = type metadata accessor for ConfirmationResponse();
  v8 = OUTLINED_FUNCTION_7(v132);
  v134 = v9;
  v11 = *(v10 + 64);
  __chkstk_darwin(v8);
  v125 = &v121 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow20ConfirmationResponseOSg_ADtMd, &_s11SiriKitFlow20ConfirmationResponseOSg_ADtMR);
  v13 = OUTLINED_FUNCTION_23_1(v133);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  OUTLINED_FUNCTION_16_2();
  v129 = v16;
  OUTLINED_FUNCTION_4_0();
  __chkstk_darwin(v17);
  OUTLINED_FUNCTION_13_5();
  v128 = v18;
  OUTLINED_FUNCTION_4_0();
  __chkstk_darwin(v19);
  v140 = &v121 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow20ConfirmationResponseOSgMd, &_s11SiriKitFlow20ConfirmationResponseOSgMR);
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21 - 8);
  OUTLINED_FUNCTION_16_2();
  v122 = v23;
  OUTLINED_FUNCTION_4_0();
  __chkstk_darwin(v24);
  OUTLINED_FUNCTION_13_5();
  v124 = v25;
  OUTLINED_FUNCTION_4_0();
  __chkstk_darwin(v26);
  OUTLINED_FUNCTION_13_5();
  v123 = v27;
  OUTLINED_FUNCTION_4_0();
  __chkstk_darwin(v28);
  OUTLINED_FUNCTION_13_5();
  v127 = v29;
  OUTLINED_FUNCTION_4_0();
  v31 = __chkstk_darwin(v30);
  v33 = &v121 - v32;
  __chkstk_darwin(v31);
  OUTLINED_FUNCTION_13_5();
  v141 = v34;
  OUTLINED_FUNCTION_4_0();
  __chkstk_darwin(v35);
  v142 = &v121 - v36;
  v37 = type metadata accessor for Input();
  v38 = OUTLINED_FUNCTION_7(v37);
  v40 = v39;
  v42 = *(v41 + 64);
  __chkstk_darwin(v38);
  v44 = &v121 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for siriPhone != -1)
  {
    swift_once();
  }

  v45 = type metadata accessor for Logger();
  v46 = __swift_project_value_buffer(v45, static Logger.siriPhone);
  v47 = *(v40 + 16);
  v138 = a1;
  v47(v44, a1, v37);

  v131 = v46;
  v48 = Logger.logObject.getter();
  v49 = static os_log_type_t.debug.getter();

  v50 = os_log_type_enabled(v48, v49);
  v136 = a5;
  v126 = v33;
  v130 = a3;
  if (v50)
  {
    v51 = swift_slowAlloc();
    v143[0] = swift_slowAlloc();
    *v51 = 136315906;
    *(v51 + 4) = OUTLINED_FUNCTION_19_15("n26AnnounceCallBellCATsSimple");
    *(v51 + 12) = 2080;
    *(v51 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v135, a3, v143);
    *(v51 + 22) = 1024;
    v52 = v137;
    *(v51 + 24) = v137 & 1;
    *(v51 + 28) = 2080;
    lazy protocol witness table accessor for type ConfirmationResponse and conformance ConfirmationResponse(&lazy protocol witness table cache variable for type Input and conformance Input, &type metadata accessor for Input);
    v53 = dispatch thunk of CustomStringConvertible.description.getter();
    v55 = v54;
    (*(v40 + 8))(v44, v37);
    v56 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v53, v55, v143);

    *(v51 + 30) = v56;
    _os_log_impl(&dword_0, v48, v49, "#AnnounceCallConfirmationStrategy %s section %s, isBargeIn: %{BOOL}d, input: %s", v51, 0x26u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_26_0();
    OUTLINED_FUNCTION_26_0();

    v57 = v141;
  }

  else
  {

    (*(v40 + 8))(v44, v37);
    v57 = v141;
    v52 = v137;
  }

  v58 = v142;
  v59 = v140;
  if ((v52 & 1) == 0)
  {
    OUTLINED_FUNCTION_10_11(v139);
    return (*(v75 + 168))();
  }

  v60 = v139;
  outlined init with copy of SignalProviding(v139 + 24, v143);
  type metadata accessor for YesNoConfirmationParser();
  v61 = swift_allocObject();
  *(v61 + 16) = 5;
  outlined init with take of PhoneCallFeatureFlagProviding(v143, v61 + 24);
  YesNoConfirmationParser.parseConfirmationResponse(input:)(v58);

  v63 = *(v60 + 64);
  v64 = *(v63 + 16);
  if (!v64)
  {
    __break(1u);
    return result;
  }

  v65 = *(v63 + v64 + 31);
  if (v65)
  {
    v66 = 0xD000000000000028;
  }

  else
  {
    v66 = 0xD00000000000002ALL;
  }

  if (v65)
  {
    v67 = "Call#IntentHandledResponse";
  }

  else
  {
    v67 = "amedGroupWithThree";
  }

  v68 = v66 == v135 && (v67 | 0x8000000000000000) == v130;
  if (v68)
  {
  }

  else
  {
    v69 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v69 & 1) == 0)
    {
      v70 = v124;
      v71 = v132;
      (*(v134 + 104))(v124, enum case for ConfirmationResponse.rejected(_:), v132);
      __swift_storeEnumTagSinglePayload(v70, 0, 1, v71);
      v72 = *(v133 + 48);
      v73 = v129;
      outlined init with copy of ConfirmationResponse?(v58, v129);
      outlined init with copy of ConfirmationResponse?(v70, v73 + v72);
      OUTLINED_FUNCTION_21_3(v73);
      if (!v68)
      {
        v96 = v129;
        v97 = v122;
        outlined init with copy of ConfirmationResponse?(v129, v122);
        OUTLINED_FUNCTION_21_3(v96 + v72);
        if (!v98)
        {
          v108 = v134;
          v109 = *(v134 + 32);
          v110 = v129;
          v111 = OUTLINED_FUNCTION_8_16();
          v112(v111);
          OUTLINED_FUNCTION_0_17();
          lazy protocol witness table accessor for type ConfirmationResponse and conformance ConfirmationResponse(v113, v114);
          v105 = dispatch thunk of static Equatable.== infix(_:_:)();
          v115 = *(v108 + 8);
          v115(v57, v71);
          OUTLINED_FUNCTION_20_6(v70);
          v115(v97, v71);
          v107 = v110;
          goto LABEL_52;
        }

        outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v70, &_s11SiriKitFlow20ConfirmationResponseOSgMd, &_s11SiriKitFlow20ConfirmationResponseOSgMR);
        (*(v134 + 8))(v97, v71);
        goto LABEL_50;
      }

      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v70, &_s11SiriKitFlow20ConfirmationResponseOSgMd, &_s11SiriKitFlow20ConfirmationResponseOSgMR);
      OUTLINED_FUNCTION_21_3(v129 + v72);
      if (!v68)
      {
LABEL_50:
        v87 = v129;
        goto LABEL_51;
      }

      v74 = v129;
      goto LABEL_40;
    }
  }

  v76 = *(v134 + 104);
  v77 = v132;
  v76(v57, enum case for ConfirmationResponse.confirmed(_:), v132);
  OUTLINED_FUNCTION_18_5();
  v78 = v133;
  v79 = *(v133 + 48);
  outlined init with copy of ConfirmationResponse?(v58, v59);
  outlined init with copy of ConfirmationResponse?(v57, v59 + v79);
  OUTLINED_FUNCTION_1_11(v59);
  if (v68)
  {
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v57, &_s11SiriKitFlow20ConfirmationResponseOSgMd, &_s11SiriKitFlow20ConfirmationResponseOSgMR);
    OUTLINED_FUNCTION_1_11(v59 + v79);
    if (v68)
    {
      v74 = v59;
      goto LABEL_40;
    }
  }

  else
  {
    v80 = v126;
    outlined init with copy of ConfirmationResponse?(v59, v126);
    OUTLINED_FUNCTION_1_11(v59 + v79);
    if (!v81)
    {
      v88 = v134;
      v89 = *(v134 + 32);
      v90 = OUTLINED_FUNCTION_8_16();
      v91(v90);
      OUTLINED_FUNCTION_0_17();
      lazy protocol witness table accessor for type ConfirmationResponse and conformance ConfirmationResponse(v92, v93);
      v94 = dispatch thunk of static Equatable.== infix(_:_:)();
      v95 = *(v88 + 8);
      v95(v57, v77);
      OUTLINED_FUNCTION_20_6(v141);
      v95(v80, v77);
      v78 = v133;
      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v59, &_s11SiriKitFlow20ConfirmationResponseOSgMd, &_s11SiriKitFlow20ConfirmationResponseOSgMR);
      v58 = v142;
      if (v94)
      {
        goto LABEL_46;
      }

      goto LABEL_35;
    }

    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v57, &_s11SiriKitFlow20ConfirmationResponseOSgMd, &_s11SiriKitFlow20ConfirmationResponseOSgMR);
    (*(v134 + 8))(v80, v77);
    v58 = v142;
  }

  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v59, &_s11SiriKitFlow20ConfirmationResponseOSg_ADtMd, &_s11SiriKitFlow20ConfirmationResponseOSg_ADtMR);
LABEL_35:
  v82 = v127;
  v76(v127, enum case for ConfirmationResponse.rejected(_:), v77);
  OUTLINED_FUNCTION_18_5();
  v83 = *(v78 + 48);
  v84 = v128;
  outlined init with copy of ConfirmationResponse?(v58, v128);
  outlined init with copy of ConfirmationResponse?(v82, v84 + v83);
  OUTLINED_FUNCTION_1_11(v84);
  if (!v68)
  {
    v85 = v123;
    outlined init with copy of ConfirmationResponse?(v84, v123);
    OUTLINED_FUNCTION_1_11(v84 + v83);
    if (!v86)
    {
      v99 = v134;
      v100 = *(v134 + 32);
      v101 = OUTLINED_FUNCTION_8_16();
      v102(v101);
      OUTLINED_FUNCTION_0_17();
      lazy protocol witness table accessor for type ConfirmationResponse and conformance ConfirmationResponse(v103, v104);
      v105 = dispatch thunk of static Equatable.== infix(_:_:)();
      v106 = *(v99 + 8);
      v106(v82, v77);
      OUTLINED_FUNCTION_20_6(v82);
      v106(v85, v77);
      v107 = v84;
LABEL_52:
      OUTLINED_FUNCTION_20_6(v107);
      goto LABEL_53;
    }

    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v82, &_s11SiriKitFlow20ConfirmationResponseOSgMd, &_s11SiriKitFlow20ConfirmationResponseOSgMR);
    (*(v134 + 8))(v85, v77);
    goto LABEL_44;
  }

  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v82, &_s11SiriKitFlow20ConfirmationResponseOSgMd, &_s11SiriKitFlow20ConfirmationResponseOSgMR);
  OUTLINED_FUNCTION_1_11(v84 + v83);
  if (!v68)
  {
LABEL_44:
    v87 = v84;
LABEL_51:
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v87, &_s11SiriKitFlow20ConfirmationResponseOSg_ADtMd, &_s11SiriKitFlow20ConfirmationResponseOSg_ADtMR);
    v105 = 0;
    goto LABEL_53;
  }

  v74 = v84;
LABEL_40:
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v74, &_s11SiriKitFlow20ConfirmationResponseOSgMd, &_s11SiriKitFlow20ConfirmationResponseOSgMR);
LABEL_46:
  v105 = 1;
LABEL_53:
  v116 = Logger.logObject.getter();
  v117 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v116, v117))
  {
    v118 = swift_slowAlloc();
    v143[0] = swift_slowAlloc();
    *v118 = 136315394;
    *(v118 + 4) = OUTLINED_FUNCTION_19_15("n26AnnounceCallBellCATsSimple");
    *(v118 + 12) = 2080;
    if (v105)
    {
      v119 = 0x676E696C646E6148;
    }

    else
    {
      v119 = 0x676E69726F6E6749;
    }

    v120 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v119, 0xE800000000000000, v143);

    *(v118 + 14) = v120;
    _os_log_impl(&dword_0, v116, v117, "#AnnounceCallConfirmationStrategy %s %s barge-in Input", v118, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_26_0();
    OUTLINED_FUNCTION_26_0();
  }

  if (v105)
  {
    static ActionForInput.handle()();
  }

  else
  {
    static ActionForInput.ignore()();
  }

  return outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v58, &_s11SiriKitFlow20ConfirmationResponseOSgMd, &_s11SiriKitFlow20ConfirmationResponseOSgMR);
}

uint64_t AnnounceCallConfirmationStrategy.parseConfirmationResponse(input:section:isBargeIn:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return _swift_task_switch(AnnounceCallConfirmationStrategy.parseConfirmationResponse(input:section:isBargeIn:), 0, 0);
}

uint64_t AnnounceCallConfirmationStrategy.parseConfirmationResponse(input:section:isBargeIn:)()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_11(v0[4]);
  v2 = *(v1 + 176);
  v9 = (v2 + *v2);
  v3 = v2[1];
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[5] = v4;
  *v4 = v5;
  v4[1] = AnnounceCallConfirmationStrategy.parseConfirmationResponse(input:section:isBargeIn:);
  v6 = v0[2];
  v7 = v0[3];

  return v9(v6, v7);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  v3 = *(v2 + 40);
  v4 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v5 = v4;

  if (v0)
  {
    OUTLINED_FUNCTION_11();

    return v6();
  }

  else
  {

    return _swift_task_switch(AnnounceCallConfirmationStrategy.parseConfirmationResponse(input:section:isBargeIn:), 0, 0);
  }
}

{
  OUTLINED_FUNCTION_15();
  v1 = *(v0 + 16);
  v2 = enum case for PromptResult.answered<A>(_:);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow12PromptResultOy09PhoneCallC14DelegatePlugin08IncomingG18ActionConfirmationOGMd, &_s11SiriKitFlow12PromptResultOy09PhoneCallC14DelegatePlugin08IncomingG18ActionConfirmationOGMR);
  OUTLINED_FUNCTION_23_1(v3);
  (*(v4 + 104))(v1, v2);
  OUTLINED_FUNCTION_11();

  return v5();
}

uint64_t AnnounceCallConfirmationStrategy.makeSections(itemToConfirm:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy27PhoneCallFlowDelegatePlugin21BargeInCapableSectionVGMd, &_ss23_ContiguousArrayStorageCy27PhoneCallFlowDelegatePlugin21BargeInCapableSectionVGMR);
  result = swift_allocObject();
  *(result + 16) = xmmword_424FF0;
  v4 = *(v1 + 64);
  v5 = *(v4 + 16);
  if (!v5)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  v6 = result;
  if (*(v4 + 32))
  {
    v7 = 0xD000000000000028;
  }

  else
  {
    v7 = 0xD00000000000002ALL;
  }

  if (*(v4 + 32))
  {
    v8 = "Call#IntentHandledResponse";
  }

  else
  {
    v8 = "amedGroupWithThree";
  }

  v9 = v8 | 0x8000000000000000;
  OUTLINED_FUNCTION_50();
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = v1;
  v6[4] = v7;
  v6[5] = v9;
  v6[6] = &async function pointer to partial apply for closure #1 in AnnounceCallConfirmationStrategy.makeSections(itemToConfirm:);
  v6[7] = result;
  if (v5 == 1)
  {
    goto LABEL_17;
  }

  v10 = *(v4 + 33);
  if (*(v4 + 33))
  {
    v11 = 0xD000000000000028;
  }

  else
  {
    v11 = 0xD00000000000002ALL;
  }

  if (v10)
  {
    v12 = "Call#IntentHandledResponse";
  }

  else
  {
    v12 = "amedGroupWithThree";
  }

  v13 = v12 | 0x8000000000000000;
  OUTLINED_FUNCTION_50();
  v14 = swift_allocObject();
  *(v14 + 16) = v1;
  *(v14 + 24) = a1;
  v6[8] = v11;
  v6[9] = v13;
  v6[10] = &async function pointer to partial apply for closure #2 in AnnounceCallConfirmationStrategy.makeSections(itemToConfirm:);
  v6[11] = v14;
  v15 = a1;
  swift_retain_n();
  v16 = v15;
  return v6;
}

uint64_t closure #1 in AnnounceCallConfirmationStrategy.makeSections(itemToConfirm:)(uint64_t a1, uint64_t a2, void *a3)
{
  v3[13] = a2;
  v3[14] = a3;
  v3[12] = a1;
  v3[15] = *a3;
  v4 = *(*(type metadata accessor for DialogPhase() - 8) + 64) + 15;
  v3[16] = swift_task_alloc();
  v5 = type metadata accessor for OutputGenerationManifest();
  v3[17] = v5;
  v6 = *(v5 - 8);
  v3[18] = v6;
  v7 = *(v6 + 64) + 15;
  v3[19] = swift_task_alloc();
  v8 = *(*(type metadata accessor for Locale() - 8) + 64) + 15;
  v3[20] = swift_task_alloc();
  v9 = *(*(type metadata accessor for CATOption() - 8) + 64) + 15;
  v3[21] = swift_task_alloc();

  return _swift_task_switch(closure #1 in AnnounceCallConfirmationStrategy.makeSections(itemToConfirm:), 0, 0);
}

uint64_t closure #1 in AnnounceCallConfirmationStrategy.makeSections(itemToConfirm:)()
{
  v2 = v0[20];
  v1 = v0[21];
  v4 = v0[14];
  v3 = v0[15];
  v5 = v0[13];
  type metadata accessor for AnnounceIncomingCallCATsSimple();
  static CATOption.defaultMode.getter();
  v6 = CATWrapperSimple.__allocating_init(options:globals:)();
  v0[22] = v6;
  v7 = v4[6];
  v8 = v4[7];
  __swift_project_boxed_opaque_existential_1(v4 + 3, v7);
  (*(v8 + 8))(v7, v8);
  v9 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  dispatch thunk of DeviceState.siriLocale.getter();
  type metadata accessor for AppInfoBuilder();
  v10 = swift_allocObject();
  v11 = *(v3 + 88);
  v12 = _s27PhoneCallFlowDelegatePlugin0a8IncomingB0C14intentResponse10siriLocale7options14appInfoBuilderAcA0fb6IntentH0_p_10Foundation0J0VAA0aB6RecordC7OptionsVAA03AppM8Building_ptcfCTf4nnnen_nAA0smN0C_Tt3g5Tf4ennn_n(v5, v2, 2, v10, *(v3 + 80));
  v0[23] = v12;
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v16 = (*v6 + class metadata base offset for AnnounceIncomingCallCATsSimple);
  v17 = (*v16 + **v16);
  v13 = (*v16)[1];
  v14 = swift_task_alloc();
  v0[24] = v14;
  *v14 = v0;
  v14[1] = closure #1 in AnnounceCallConfirmationStrategy.makeSections(itemToConfirm:);

  return v17(v12);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  v3 = v2;
  v4 = v2[24];
  v10 = *v1;
  v3[25] = v5;
  v3[26] = v0;

  if (v0)
  {
    v6 = closure #1 in AnnounceCallConfirmationStrategy.makeSections(itemToConfirm:);
  }

  else
  {
    v8 = v3[22];
    v7 = v3[23];

    v6 = closure #1 in AnnounceCallConfirmationStrategy.makeSections(itemToConfirm:);
  }

  return _swift_task_switch(v6, 0, 0);
}

{
  v62 = v0;
  if (one-time initialization token for announceTelephony != -1)
  {
    goto LABEL_22;
  }

  while (1)
  {
    v1 = *(v0 + 200);
    v2 = type metadata accessor for Logger();
    __swift_project_value_buffer(v2, static Logger.announceTelephony);
    v3 = v1;
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.debug.getter();

    if (!os_log_type_enabled(v4, v5))
    {
      break;
    }

    v6 = *(v0 + 200);
    v7 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    *v7 = 136315394;
    v8 = [v6 catId];
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v11, &v58);

    *(v7 + 4) = v12;
    *(v7 + 12) = 2080;
    v13 = [v6 dialog];
    type metadata accessor for DialogElement();
    v14 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v15 = specialized Array.count.getter(v14);
    if (!v15)
    {

LABEL_16:
      v33 = Array.description.getter();
      v35 = v34;

      v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v35, &v58);

      *(v7 + 14) = v36;
      _os_log_impl(&dword_0, v4, v5, "#AnnounceCallConfirmationStrategy Call Announcement: { \n    catId=%s,\n    dialog={\n        %s\n    }\n}", v7, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_26_0();
      OUTLINED_FUNCTION_26_0();
      break;
    }

    v16 = v15;
    v59 = _swiftEmptyArrayStorage;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    if (v16 < 0)
    {
      __break(1u);
      return dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)(v17, v18, v19, v20, v21);
    }

    v52 = v5;
    v53 = v7;
    v54 = v4;
    v22 = 0;
    v23 = v59;
    v56 = v14 & 0xFFFFFFFFFFFFFF8;
    v57 = v14 & 0xC000000000000001;
    v55 = v0;
    v24 = *(v0 + 208);
    v25 = v14;
    v26 = v16;
    while (1)
    {
      v27 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v57)
      {
        v28 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v22 >= *(v56 + 16))
        {
          goto LABEL_21;
        }

        v28 = *(v14 + 8 * v22 + 32);
      }

      v29 = v28;
      v61 = v28;
      closure #1 in implicit closure #2 in closure #1 in AnnounceCallConfirmationStrategy.makeSections(itemToConfirm:)(&v61, v60);

      v30 = v60[0];
      v31 = v60[1];
      v59 = v23;
      v0 = v23[2];
      if (v0 >= v23[3] >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v23 = v59;
      }

      v23[2] = v0 + 1;
      v32 = &v23[2 * v0];
      v32[4] = v30;
      v32[5] = v31;
      ++v22;
      v14 = v25;
      if (v27 == v26)
      {

        v4 = v54;
        v0 = v55;
        v7 = v53;
        v5 = v52;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    swift_once();
  }

  v37 = *(v0 + 200);
  v38 = *(v0 + 152);
  v39 = *(v0 + 128);
  v40 = *(v0 + 112);
  v41 = v40[6];
  v42 = v40[7];
  __swift_project_boxed_opaque_existential_1(v40 + 3, v41);
  (*(v42 + 136))(v41, v42);
  v43 = *(v0 + 80);
  v44 = *(v0 + 88);
  __swift_project_boxed_opaque_existential_1((v0 + 56), v43);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v45 = swift_allocObject();
  *(v0 + 216) = v45;
  *(v45 + 16) = xmmword_426260;
  *(v45 + 32) = v37;
  v46 = v37;
  static DialogPhase.confirmed.getter();
  OutputGenerationManifest.init(dialogPhase:_:)();
  v47 = *(v44 + 8);
  v48 = async function pointer to dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)[1];
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 224) = v49;
  *v49 = v50;
  v49[1] = closure #1 in AnnounceCallConfirmationStrategy.makeSections(itemToConfirm:);
  v19 = *(v0 + 152);
  v17 = *(v0 + 96);
  v18 = v45;
  v20 = v43;
  v21 = v47;

  return dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)(v17, v18, v19, v20, v21);
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_28();
  v2 = v1[28];
  v3 = v1[27];
  v4 = v1[19];
  v5 = v1[18];
  v6 = v1[17];
  v7 = *v0;
  OUTLINED_FUNCTION_4_2();
  *v8 = v7;

  (*(v5 + 8))(v4, v6);

  return _swift_task_switch(closure #1 in AnnounceCallConfirmationStrategy.makeSections(itemToConfirm:), 0, 0);
}

{
  OUTLINED_FUNCTION_27();
  v1 = *(v0 + 160);
  v2 = *(v0 + 168);
  v3 = *(v0 + 152);
  v4 = *(v0 + 128);

  __swift_destroy_boxed_opaque_existential_1((v0 + 56));

  OUTLINED_FUNCTION_11();

  return v5();
}

{
  v2 = v0[22];
  v1 = v0[23];
  v4 = v0[20];
  v3 = v0[21];
  v5 = v0[19];
  v6 = v0[16];

  OUTLINED_FUNCTION_11();
  v8 = v0[26];

  return v7();
}

uint64_t closure #1 in implicit closure #2 in closure #1 in AnnounceCallConfirmationStrategy.makeSections(itemToConfirm:)@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  _StringGuts.grow(_:)(30);
  v4 = [v3 id];
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  v21 = v5;
  v22 = v7;
  v8._countAndFlagsBits = 0x72506C6C7566203ALL;
  v8._object = 0xEC0000003D746E69;
  String.append(_:)(v8);
  v9 = [v3 fullPrint];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v10 = String.debugDescription.getter();
  v12 = v11;

  v13._countAndFlagsBits = v10;
  v13._object = v12;
  String.append(_:)(v13);

  v14._countAndFlagsBits = 0x70536C6C7566202CLL;
  v14._object = 0xEC0000003D6B6165;
  String.append(_:)(v14);
  v15 = [v3 fullSpeak];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v16 = String.debugDescription.getter();
  v18 = v17;

  v19._countAndFlagsBits = v16;
  v19._object = v18;
  String.append(_:)(v19);

  *a2 = v21;
  a2[1] = v22;
  return result;
}

uint64_t closure #2 in AnnounceCallConfirmationStrategy.makeSections(itemToConfirm:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return _swift_task_switch(closure #2 in AnnounceCallConfirmationStrategy.makeSections(itemToConfirm:), 0, 0);
}

uint64_t closure #2 in AnnounceCallConfirmationStrategy.makeSections(itemToConfirm:)()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_11(v0[3]);
  v2 = *(v1 + 224);
  v9 = (v2 + *v2);
  v3 = v2[1];
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[5] = v4;
  *v4 = v5;
  v4[1] = closure #2 in AnnounceCallConfirmationStrategy.makeSections(itemToConfirm:);
  v6 = v0[4];
  v7 = v0[2];

  return v9(v7, v6);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  v2 = *(v1 + 40);
  v3 = *v0;
  OUTLINED_FUNCTION_4_2();
  *v4 = v3;

  OUTLINED_FUNCTION_11();

  return v5();
}

void *AnnounceCallConfirmationStrategy.deinit()
{
  v1 = v0[2];

  __swift_destroy_boxed_opaque_existential_1(v0 + 3);
  v2 = v0[8];

  return v0;
}

uint64_t AnnounceCallConfirmationStrategy.__deallocating_deinit()
{
  AnnounceCallConfirmationStrategy.deinit();

  return swift_deallocClassInstance();
}

uint64_t protocol witness for BargeInCapablePromptForConfirmationStrategyAsync.parseConfirmationResponse(input:section:isBargeIn:) in conformance AnnounceCallConfirmationStrategy<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v16 = *(**v7 + 136);
  v20 = (v16 + *v16);
  v17 = v16[1];
  v18 = swift_task_alloc();
  *(v8 + 16) = v18;
  *v18 = v8;
  v18[1] = closure #2 in ActionableCallControlFlow.execute();

  return v20(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t outlined init with copy of ConfirmationResponse?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow20ConfirmationResponseOSgMd, &_s11SiriKitFlow20ConfirmationResponseOSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t lazy protocol witness table accessor for type ConfirmationResponse and conformance ConfirmationResponse(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t partial apply for closure #1 in AnnounceCallConfirmationStrategy.makeSections(itemToConfirm:)()
{
  OUTLINED_FUNCTION_27();
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v1 + 16) = v4;
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_11_12(v4);

  return closure #1 in AnnounceCallConfirmationStrategy.makeSections(itemToConfirm:)(v6, v7, v8);
}

uint64_t partial apply for closure #2 in AnnounceCallConfirmationStrategy.makeSections(itemToConfirm:)()
{
  OUTLINED_FUNCTION_27();
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v1 + 16) = v4;
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_11_12(v4);

  return closure #2 in AnnounceCallConfirmationStrategy.makeSections(itemToConfirm:)(v6, v7, v8);
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

uint64_t AnnounceCallFlow.State.description.getter(void *a1)
{
  if (!a1)
  {
    return 0x6E41726566666F2ELL;
  }

  _StringGuts.grow(_:)(26);

  v2 = [a1 description];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  v6._countAndFlagsBits = v3;
  v6._object = v5;
  String.append(_:)(v6);

  v7._countAndFlagsBits = 41;
  v7._object = 0xE100000000000000;
  String.append(_:)(v7);
  return 0xD000000000000017;
}

void key path setter for AnnounceCallFlow.state : AnnounceCallFlow(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  AnnounceCallFlow.state.setter(v2);
}

void AnnounceCallFlow.state.didset()
{
  v1 = v0;
  if (one-time initialization token for siriPhone != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.siriPhone);

  oslog = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v13 = v5;
    *v4 = 136315138;
    swift_beginAccess();
    v6 = *(v1 + 16);
    v7 = v6;
    v8 = AnnounceCallFlow.State.description.getter(v6);
    v10 = v9;

    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v10, &v13);

    *(v4 + 4) = v11;
    _os_log_impl(&dword_0, oslog, v3, "#AnnounceCallFlow state = %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v5);
  }

  else
  {
  }
}

void *PhoneCallProvider.mockGlobals.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

void AnnounceCallFlow.state.setter(void *a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  *(v1 + 16) = a1;
  v4 = a1;

  AnnounceCallFlow.state.didset();
}

uint64_t AnnounceCallFlow.intentRecord.getter()
{
  v1 = *(v0 + 128);
  v2 = objc_allocWithZone(INIdentifyIncomingCallerIntent);

  [v2 init];
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INIdentifyIncomingCallerIntentResponse, INIdentifyIncomingCallerIntentResponse_ptr);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_426260;
  v4 = *(v0 + 24);
  *(v3 + 32) = v4;
  v5 = v4;
  INIdentifyIncomingCallerIntentResponse.init(statusCode:callRecords:)(2, v3);
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INIdentifyIncomingCallerIntent, INIdentifyIncomingCallerIntent_ptr);

  return IntentResolutionRecord.init(app:intent:intentResponse:)();
}

uint64_t AnnounceCallFlow.__allocating_init(directAction:sharedGlobals:)(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  if (one-time initialization token for instance != -1)
  {
    swift_once();
  }

  memcpy(__dst, &static PhoneCallFeatureFlags.instance, 0xC0uLL);
  v23 = &type metadata for PhoneCallFeatureFlags;
  v24 = &protocol witness table for PhoneCallFeatureFlags;
  *&v22 = swift_allocObject();
  memcpy((v22 + 16), &static PhoneCallFeatureFlags.instance, 0xC0uLL);
  outlined init with take of SPHConversation(&v22, v25);
  outlined init with copy of PhoneCallFeatureFlags(__dst, v20);
  __swift_destroy_boxed_opaque_existential_1(v25);
  v6 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v7 = *(v6 + 8);
  v8 = OUTLINED_FUNCTION_1_16();
  v9(v8);
  __swift_project_boxed_opaque_existential_1(v20, v21);
  OUTLINED_FUNCTION_1_16();
  if (dispatch thunk of DeviceState.isMac.getter())
  {
    if (one-time initialization token for siriFaceTimeMacExtension != -1)
    {
      swift_once();
    }

    v10 = &static DefaultPhoneApps.siriFaceTimeMacExtension;
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(v20, v21);
    OUTLINED_FUNCTION_1_16();
    if (dispatch thunk of DeviceState.isWatch.getter())
    {
      if (one-time initialization token for siriPhoneWatchExtension != -1)
      {
        swift_once();
      }

      v10 = &static DefaultPhoneApps.siriPhoneWatchExtension;
    }

    else
    {
      __swift_project_boxed_opaque_existential_1(v20, v21);
      OUTLINED_FUNCTION_1_16();
      if (dispatch thunk of DeviceState.isXRDevice.getter())
      {
        if (one-time initialization token for siriPhoneFaceTimeExtension != -1)
        {
          swift_once();
        }

        v10 = &static DefaultPhoneApps.siriPhoneFaceTimeExtension;
      }

      else
      {
        if (one-time initialization token for siriPhoneExtension != -1)
        {
          swift_once();
        }

        v10 = &static DefaultPhoneApps.siriPhoneExtension;
      }
    }
  }

  v11 = v10[5];
  v12 = v10[3];
  v13 = *v10;
  v14 = v10[1];

  v15 = __swift_destroy_boxed_opaque_existential_1(v20);
  v16 = (*(*a1 + 352))(v15);
  outlined init with copy of SignalProviding(a2, v20);
  v17 = *(v3 + 152);

  v18 = v17(0, v16, v13, 0, v20);

  __swift_destroy_boxed_opaque_existential_1(a2);
  return v18;
}

uint64_t AnnounceCallFlow.__allocating_init(directAction:sharedGlobals:appFinder:)(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v29 = *(*a1 + 256);
  v6 = (v29)(a1);
  v7 = outlined bridged method (ob) of @objc INCallRecord.providerBundleId.getter(v6);
  if (!v8)
  {
    goto LABEL_4;
  }

  v9 = v7;
  v10 = v8;
  v11 = a3[3];
  v12 = a3[4];
  v30 = a3;
  __swift_project_boxed_opaque_existential_1(a3, v11);
  v14 = a2[3];
  v13 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v14);
  (*(v13 + 8))(v32, v14, v13);
  AnnotatedAppFinding.find(appQuery:device:)(v9, v10, _swiftEmptyArrayStorage, v32, v11, v12, v33);

  v15 = __swift_destroy_boxed_opaque_existential_1(v32);
  v16 = *&v33[0];
  if (*&v33[0])
  {
    v17 = *(&v33[0] + 1);
    v18 = v34;
    v19 = (*(*a1 + 200))(v15);
    v20 = v29();
    outlined init with copy of SignalProviding(a2, v32);
    v21 = *(v31 + 152);

    v22 = v21(v19, v20, v16, 1, v32);

    v35 = v17;
    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(&v35, &_sShySSGMd, &_sShySSGMR);
    v36 = v33[1];
    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(&v36, &_sSSSgMd, &_sSSSgMR);
    v37 = v18;
    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(&v37, &_sShySSGMd, &_sShySSGMR);
    __swift_destroy_boxed_opaque_existential_1(v30);
    __swift_destroy_boxed_opaque_existential_1(a2);
    return v22;
  }

  else
  {
LABEL_4:
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_0_6();
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    __swift_project_value_buffer(v24, static Logger.siriPhone);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v32[0] = v28;
      *v27 = 136315138;
      *(v27 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000051, 0x8000000000457750, v32);
      _os_log_impl(&dword_0, v25, v26, "%s", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v28);
      OUTLINED_FUNCTION_26_0();
      OUTLINED_FUNCTION_26_0();
    }

    static SiriKitLifecycle._logCrashToEventBus(_:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t AnnounceCallFlow.__allocating_init(state:callRecord:app:invocationType:sharedGlobals:)(void *a1, void *a2, uint64_t a3, char a4, __int128 *a5)
{
  v10 = swift_allocObject();
  AnnounceCallFlow.init(state:callRecord:app:invocationType:sharedGlobals:)(a1, a2, a3, a4 & 1, a5);
  return v10;
}

uint64_t AnnounceCallFlow.init(state:callRecord:app:invocationType:sharedGlobals:)(void *a1, void *a2, uint64_t a3, char a4, __int128 *a5)
{
  v6 = v5;
  v12 = type metadata accessor for CATOption();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v14 = type metadata accessor for AnnounceIncomingCallCATsSimple();
  v15 = a1;
  v16 = a2;
  static CATOption.defaultMode.getter();
  v17 = CATWrapperSimple.__allocating_init(options:globals:)();

  *(v6 + 32) = v17;
  *(v6 + 40) = v19;
  *(v6 + 56) = v14;
  *(v6 + 64) = &protocol witness table for AnnounceIncomingCallCATsSimple;
  *(v6 + 72) = v16;
  *(v6 + 80) = a4 & 1;
  *(v6 + 128) = a3;
  outlined init with take of SPHConversation(a5, v6 + 88);
  return v6;
}

uint64_t AnnounceCallFlow.execute()()
{
  OUTLINED_FUNCTION_15();
  v1[20] = v2;
  v1[21] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow22IntentResolutionRecordVySo024INIdentifyIncomingCallerD0CSo0ghiD8ResponseCGMd, &_s11SiriKitFlow22IntentResolutionRecordVySo024INIdentifyIncomingCallerD0CSo0ghiD8ResponseCGMR);
  v1[22] = v3;
  v4 = *(v3 - 8);
  v1[23] = v4;
  v5 = *(v4 + 64) + 15;
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();

  return _swift_task_switch(AnnounceCallFlow.execute(), 0, 0);
}

{
  v1 = (*(**(v0 + 168) + 120))();
  *(v0 + 208) = v1;
  if (v1)
  {
    v2 = v1;
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_0_6();
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    *(v0 + 216) = __swift_project_value_buffer(v3, static Logger.siriPhone);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_0, v4, v5, "#AnnounceCallFlow: playNotificationSound without ringtone, use regular chime", v6, 2u);
      OUTLINED_FUNCTION_26_0();
    }

    v7 = *(v0 + 168);

    type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SAUIPlayNotificationSound, SAUIPlayNotificationSound_ptr);
    v8 = [v2 request];
    v9 = [v8 identifier];

    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = SAUIPlayNotificationSound.init(notificationId:soundType:)(v10, v12);
    *(v0 + 224) = v13;
    v14 = v7[14];
    v15 = v7[15];
    __swift_project_boxed_opaque_existential_1(v7 + 11, v14);
    (*(v15 + 32))(v14, v15);
    v16 = *(v0 + 136);
    v17 = *(v0 + 144);
    __swift_project_boxed_opaque_existential_1((v0 + 112), v16);
    v18 = async function pointer to AceServiceInvokerAsync.submit<A>(_:)[1];
    v19 = swift_task_alloc();
    *(v0 + 232) = v19;
    v20 = type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SABaseCommand, SABaseCommand_ptr);
    *v19 = v0;
    v19[1] = AnnounceCallFlow.execute();

    return AceServiceInvokerAsync.submit<A>(_:)(v13, v16, v20, v17);
  }

  else
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_0_6();
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    __swift_project_value_buffer(v21, static Logger.siriPhone);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_0, v22, v23, "#AnnounceCallFlow: Pushing IncomingCallFollowUpFlow for follow-up offer", v24, 2u);
      OUTLINED_FUNCTION_26_0();
    }

    v26 = *(v0 + 192);
    v25 = *(v0 + 200);
    v27 = *(v0 + 176);
    v28 = *(v0 + 184);
    v29 = *(v0 + 168);
    v41 = *(v0 + 160);

    v30 = *(v29 + 128);

    AnnounceCallFlow.intentRecord.getter();
    v31 = IntentResolutionRecord.intent.getter();
    v32 = *(v28 + 8);
    v32(v25, v27);
    AnnounceCallFlow.intentRecord.getter();
    v33 = IntentResolutionRecord.intentResponse.getter();
    v32(v26, v27);
    outlined init with copy of AnnounceIncomingCallerOutputStrategy(v29 + 32, v0 + 16);
    outlined init with copy of SignalProviding(v29 + 88, v0 + 72);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin08Incomingb8FollowUpC0CySo010INIdentifyF12CallerIntentCSo0ifjK8ResponseCGMd, &_s27PhoneCallFlowDelegatePlugin08Incomingb8FollowUpC0CySo010INIdentifyF12CallerIntentCSo0ifjK8ResponseCGMR);
    v34 = swift_allocObject();
    v34[5] = &type metadata for AnnounceIncomingCallerOutputStrategy;
    v34[6] = &protocol witness table for AnnounceIncomingCallerOutputStrategy;
    v35 = swift_allocObject();
    v34[2] = v35;
    v36 = *(v0 + 32);
    *(v35 + 16) = *(v0 + 16);
    *(v35 + 32) = v36;
    *(v35 + 48) = *(v0 + 48);
    *(v35 + 64) = *(v0 + 64);
    v34[12] = v30;
    v34[13] = v31;
    v34[14] = v33;
    outlined init with take of SPHConversation((v0 + 72), (v34 + 7));
    *(v0 + 152) = v34;
    lazy protocol witness table accessor for type IncomingCallFollowUpFlow<INIdentifyIncomingCallerIntent, INIdentifyIncomingCallerIntentResponse> and conformance IncomingCallFollowUpFlow<A, B>();
    static ExecuteResponse.complete<A>(next:)();

    v38 = *(v0 + 192);
    v37 = *(v0 + 200);

    OUTLINED_FUNCTION_11();

    return v39();
  }
}

{
  OUTLINED_FUNCTION_15();
  v3 = v2;
  v4 = *(*v1 + 232);
  v5 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v6 = v5;
  *(v7 + 240) = v0;

  if (v0)
  {
    v8 = AnnounceCallFlow.execute();
  }

  else
  {

    v8 = AnnounceCallFlow.execute();
  }

  return _swift_task_switch(v8, 0, 0);
}

{
  __swift_destroy_boxed_opaque_existential_1(v1 + 14);
  OUTLINED_FUNCTION_6_11();
  static ExecuteResponse.replan(requireInput:)();

  v4 = v1[24];
  v3 = v1[25];

  OUTLINED_FUNCTION_11();

  return v5();
}

{
  v2 = v0[30];
  v3 = v0[27];
  __swift_destroy_boxed_opaque_existential_1(v0 + 14);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[30];
  if (v6)
  {
    v1 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v1 = 138412290;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v1 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&dword_0, v4, v5, "#AnnounceCallFlow: Error playing sound %@, proceeding to dialog", v1, 0xCu);
    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v8, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    OUTLINED_FUNCTION_26_0();
    OUTLINED_FUNCTION_26_0();
  }

  else
  {
  }

  OUTLINED_FUNCTION_6_11();
  static ExecuteResponse.replan(requireInput:)();

  v11 = v0[24];
  v10 = v0[25];

  OUTLINED_FUNCTION_11();

  return v12();
}

uint64_t AnnounceCallFlow.execute(completion:)()
{
  type metadata accessor for AnnounceCallFlow();
  lazy protocol witness table accessor for type AnnounceCallFlow and conformance AnnounceCallFlow();
  return Flow.deferToExecuteAsync(_:)();
}

uint64_t AnnounceCallFlow.deinit()
{
  outlined destroy of AnnounceIncomingCallerOutputStrategy(v0 + 32);
  __swift_destroy_boxed_opaque_existential_1((v0 + 88));
  v1 = *(v0 + 128);

  return v0;
}

uint64_t AnnounceCallFlow.__deallocating_deinit()
{
  AnnounceCallFlow.deinit();

  return swift_deallocClassInstance();
}

uint64_t protocol witness for Flow.onAsync(input:) in conformance AnnounceCallFlow(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = async function pointer to Flow.onAsync(input:)[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = protocol witness for Flow.onAsync(input:) in conformance AnnounceCallFlow;

  return Flow.onAsync(input:)(a1, a2, a3);
}

uint64_t protocol witness for Flow.onAsync(input:) in conformance AnnounceCallFlow()
{
  OUTLINED_FUNCTION_15();
  v2 = v1;
  v3 = *(*v0 + 16);
  v4 = *v0;
  OUTLINED_FUNCTION_4_2();
  *v5 = v4;

  v6 = *(v4 + 8);

  return v6(v2);
}

uint64_t protocol witness for Flow.execute() in conformance AnnounceCallFlow(uint64_t a1)
{
  v4 = *(**v1 + 168);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = protocol witness for Flow.execute() in conformance AnnounceCallFlow;

  return v8(a1);
}

uint64_t protocol witness for Flow.execute() in conformance AnnounceCallFlow()
{
  OUTLINED_FUNCTION_15();
  v1 = *(*v0 + 16);
  v2 = *v0;
  OUTLINED_FUNCTION_4_2();
  *v3 = v2;

  OUTLINED_FUNCTION_11();

  return v4();
}

uint64_t protocol witness for Flow.exitValue.getter in conformance AnnounceCallFlow(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for AnnounceCallFlow();

  return Flow<>.exitValue.getter(v3, a2);
}

uint64_t outlined bridged method (ob) of @objc INCallRecord.providerBundleId.getter(void *a1)
{
  v2 = [a1 providerBundleId];

  if (!v2)
  {
    return 0;
  }

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

unint64_t lazy protocol witness table accessor for type IncomingCallFollowUpFlow<INIdentifyIncomingCallerIntent, INIdentifyIncomingCallerIntentResponse> and conformance IncomingCallFollowUpFlow<A, B>()
{
  result = lazy protocol witness table cache variable for type IncomingCallFollowUpFlow<INIdentifyIncomingCallerIntent, INIdentifyIncomingCallerIntentResponse> and conformance IncomingCallFollowUpFlow<A, B>;
  if (!lazy protocol witness table cache variable for type IncomingCallFollowUpFlow<INIdentifyIncomingCallerIntent, INIdentifyIncomingCallerIntentResponse> and conformance IncomingCallFollowUpFlow<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s27PhoneCallFlowDelegatePlugin08Incomingb8FollowUpC0CySo010INIdentifyF12CallerIntentCSo0ifjK8ResponseCGMd, &_s27PhoneCallFlowDelegatePlugin08Incomingb8FollowUpC0CySo010INIdentifyF12CallerIntentCSo0ifjK8ResponseCGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncomingCallFollowUpFlow<INIdentifyIncomingCallerIntent, INIdentifyIncomingCallerIntentResponse> and conformance IncomingCallFollowUpFlow<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AnnounceCallFlow and conformance AnnounceCallFlow()
{
  result = lazy protocol witness table cache variable for type AnnounceCallFlow and conformance AnnounceCallFlow;
  if (!lazy protocol witness table cache variable for type AnnounceCallFlow and conformance AnnounceCallFlow)
  {
    type metadata accessor for AnnounceCallFlow();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnnounceCallFlow and conformance AnnounceCallFlow);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AnnounceCallFlow.State(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for AnnounceCallFlow.State(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t getEnumTag for AnnounceCallFlow.State(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *destructiveInjectEnumTag for AnnounceCallFlow.State(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

uint64_t one-time initialization function for identifier()
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  static AnnounceDropInCallDirectAction.identifier = result;
  unk_5996C0 = v1;
  return result;
}

{
  v0._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = DIIdentifier.init(_:)(v0);
  *static AnnounceVoicemailDirectAction.identifier = v2;
  return v2.namespace._countAndFlagsBits;
}

{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  static IdentifyIncomingCallerDirectAction.identifier = result;
  *algn_599AD8 = v1;
  return result;
}

uint64_t *AnnounceDropInCallDirectAction.identifier.unsafeMutableAddressor()
{
  if (one-time initialization token for identifier != -1)
  {
    OUTLINED_FUNCTION_10_12();
  }

  return &static AnnounceDropInCallDirectAction.identifier;
}

uint64_t static AnnounceDropInCallDirectAction.identifier.getter()
{
  if (one-time initialization token for identifier != -1)
  {
    OUTLINED_FUNCTION_10_12();
  }

  v0 = static AnnounceDropInCallDirectAction.identifier;

  return v0;
}

uint64_t one-time initialization function for announcementTypeKey()
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  static AnnounceDropInCallDirectAction.announcementTypeKey = result;
  unk_54D9A0 = v1;
  return result;
}

uint64_t AnnounceDropInCallDirectAction.init(from:)(uint64_t a1)
{
  if (one-time initialization token for announcementTypeKey != -1)
  {
    swift_once();
  }

  if (*(a1 + 16) && (v2 = specialized __RawDictionaryStorage.find<A>(_:)(static AnnounceDropInCallDirectAction.announcementTypeKey, unk_54D9A0), (v3 & 1) != 0))
  {
    outlined init with copy of Any(*(a1 + 56) + 32 * v2, v6);

    if (swift_dynamicCast())
    {
      return v5;
    }
  }

  else
  {
  }

  return 0;
}

uint64_t specialized Dictionary.subscript.getter(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v2 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_26_8(v2);
}

{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v2 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if (v3)
  {
    return OUTLINED_FUNCTION_26_8(v2);
  }

  else
  {
    return 0;
  }
}

double specialized Dictionary.subscript.getter@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  if (*(a3 + 16) && (v6 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2), (v7 & 1) != 0))
  {
    v8 = *(a3 + 56) + 32 * v6;

    outlined init with copy of Any(v8, a4);
  }

  else
  {
    result = 0.0;
    *a4 = 0u;
    a4[1] = 0u;
  }

  return result;
}

uint64_t specialized Dictionary.subscript.getter(char a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v2 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_26_8(v2);
}

uint64_t specialized Dictionary.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v3 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
  if (v4)
  {
    return OUTLINED_FUNCTION_26_8(v3);
  }

  else
  {
    return 0;
  }
}

{
  if (!*(a3 + 16))
  {
    return 5;
  }

  v4 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
  if (v5)
  {
    return *(*(a3 + 56) + v4);
  }

  else
  {
    return 5;
  }
}

void *specialized Dictionary.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 8 * v4);
  v7 = v6;
  return v6;
}

uint64_t specialized Dictionary.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*(a3 + 16) && (v6 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2), (v7 & 1) != 0))
  {
    v8 = v6;
    v9 = *(a3 + 56);
    v10 = type metadata accessor for SignalValue();
    OUTLINED_FUNCTION_23_1(v10);
    (*(v11 + 16))(a4, v9 + *(v11 + 72) * v8, v10);
    v12 = a4;
    v13 = 0;
    v14 = v10;
  }

  else
  {
    v14 = type metadata accessor for SignalValue();
    v12 = a4;
    v13 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v12, v13, 1, v14);
}

uint64_t specialized Dictionary.subscript.getter(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    return 0;
  }

  v1 = specialized __RawDictionaryStorage.find<A>(_:)();
  if ((v2 & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_26_8(v1);
}

uint64_t AnnounceDropInCallFlow.__allocating_init(announcementType:sharedGlobals:announceCallBellCatPatterns:responseGenerator:)(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v7 = v4;
  v11 = *(v7 + 48);
  v12 = *(v7 + 52);
  v13 = swift_allocObject();
  v15 = a3[3];
  v14 = a3[4];
  __swift_mutable_project_boxed_opaque_existential_1(a3, v15);
  OUTLINED_FUNCTION_9_1();
  v17 = *(v16 + 64);
  __chkstk_darwin(v18);
  OUTLINED_FUNCTION_4();
  v20 = OUTLINED_FUNCTION_29_5(v19);
  v21(v20);
  v23 = a4[3];
  v22 = a4[4];
  __swift_mutable_project_boxed_opaque_existential_1(a4, v23);
  OUTLINED_FUNCTION_9_1();
  v25 = *(v24 + 64);
  __chkstk_darwin(v26);
  OUTLINED_FUNCTION_4();
  v28 = OUTLINED_FUNCTION_24_0(v27);
  v29(v28);
  v30 = specialized AnnounceDropInCallFlow.init(announcementType:sharedGlobals:announceCallBellCatPatterns:responseGenerator:)(a1, a2, v5, v6, v13, v15, v23, v14, v22);
  __swift_destroy_boxed_opaque_existential_1(a4);
  __swift_destroy_boxed_opaque_existential_1(a3);
  return v30;
}

uint64_t AnnounceDropInCallFlow.init(announcementType:sharedGlobals:announceCallBellCatPatterns:responseGenerator:)(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
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
  v26 = specialized AnnounceDropInCallFlow.init(announcementType:sharedGlobals:announceCallBellCatPatterns:responseGenerator:)(a1, a2, v4, v5, v28, v11, v19, v10, v18);
  __swift_destroy_boxed_opaque_existential_1(a4);
  __swift_destroy_boxed_opaque_existential_1(a3);
  return v26;
}

uint64_t AnnounceDropInCallFlow.on(input:)()
{
  v1 = v0[16];
  v2 = v0[17];
  __swift_project_boxed_opaque_existential_1(v0 + 13, v1);
  (*(v2 + 8))(v12, v1, v2);
  OUTLINED_FUNCTION_7_0(v12);
  v3 = dispatch thunk of DeviceState.isHomePod.getter();
  __swift_destroy_boxed_opaque_existential_1(v12);
  if ((v3 & 1) == 0)
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2();
    }

    v4 = type metadata accessor for Logger();
    __swift_project_value_buffer(v4, static Logger.siriPhone);

    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = OUTLINED_FUNCTION_42();
      v12[0] = OUTLINED_FUNCTION_36();
      *v7 = 136315138;
      type metadata accessor for AnnounceDropInCallFlow();

      v8 = String.init<A>(describing:)();
      v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, v12);

      *(v7 + 4) = v10;
      _os_log_impl(&dword_0, v5, v6, "#%s Drop in call is only supported on HomePod.", v7, 0xCu);
      OUTLINED_FUNCTION_3_7();
      OUTLINED_FUNCTION_26_0();
    }
  }

  return v3 & 1;
}

uint64_t AnnounceDropInCallFlow.execute(completion:)()
{
  type metadata accessor for AnnounceDropInCallFlow();
  lazy protocol witness table accessor for type AnnounceDropInCallFlow and conformance AnnounceDropInCallFlow(&lazy protocol witness table cache variable for type AnnounceDropInCallFlow and conformance AnnounceDropInCallFlow, type metadata accessor for AnnounceDropInCallFlow);
  return Flow.deferToExecuteAsync(_:)();
}

uint64_t AnnounceDropInCallFlow.execute()(uint64_t a1)
{
  *(v2 + 104) = a1;
  *(v2 + 112) = v1;
  return _swift_task_switch(AnnounceDropInCallFlow.execute(), 0, 0);
}

uint64_t AnnounceDropInCallFlow.execute()()
{
  v36 = v0;
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2();
  }

  v2 = v0[14];
  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Logger.siriPhone);

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[14];
    v7 = OUTLINED_FUNCTION_42();
    v8 = OUTLINED_FUNCTION_36();
    v35 = v8;
    *v7 = 136315138;
    v0[2] = v6;
    type metadata accessor for AnnounceDropInCallFlow();
    OUTLINED_FUNCTION_31_3();

    v9 = String.init<A>(describing:)();
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v35);
    OUTLINED_FUNCTION_31_3();

    *(v7 + 4) = v1;
    _os_log_impl(&dword_0, v4, v5, "#%s Announcing drop in call.", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    OUTLINED_FUNCTION_26_0();
    OUTLINED_FUNCTION_26_0();
  }

  v11 = v0[14];
  v12 = v11[16];
  v13 = v11[17];
  __swift_project_boxed_opaque_existential_1(v11 + 13, v12);
  v14 = *(v13 + 16);

  v14(v12, v13);
  v15 = v0[5];
  v16 = v0[7];
  v17 = __swift_project_boxed_opaque_existential_1(v0 + 2, v15);
  v0[11] = v15;
  v0[12] = v16;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 8);
  (*(*(v15 - 8) + 16))(boxed_opaque_existential_1, v17, v15);
  v19 = type metadata accessor for SimpleOutputFlowAsync();
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();

  v22 = SimpleOutputFlowAsync.init(outputPublisher:outputGenerator:)();
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = v0[14];
    v26 = OUTLINED_FUNCTION_42();
    v27 = OUTLINED_FUNCTION_36();
    v35 = v27;
    *v26 = 136315138;
    v0[2] = v25;
    type metadata accessor for AnnounceDropInCallFlow();

    v28 = String.init<A>(describing:)();
    v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v29, &v35);

    *(v26 + 4) = v30;
    _os_log_impl(&dword_0, v23, v24, "#%s Announcement completed.", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v27);
    OUTLINED_FUNCTION_26_0();
    OUTLINED_FUNCTION_26_0();
  }

  v31 = v0[13];
  v32 = v0[14];
  v0[2] = v22;
  static ExecuteResponse.complete<A>(next:)();

  OUTLINED_FUNCTION_11();

  return v33();
}

uint64_t closure #1 in AnnounceDropInCallFlow.execute()(uint64_t a1, uint64_t a2)
{
  v4 = *(*a2 + 160);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = closure #2 in ActionableCallControlFlow.execute();

  return v8(a1);
}

uint64_t AnnounceDropInCallFlow.makeAnnouncement()()
{
  OUTLINED_FUNCTION_15();
  v1[16] = v2;
  v1[17] = v0;
  v3 = type metadata accessor for PhoneError();
  v1[18] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v1[19] = swift_task_alloc();

  return _swift_task_switch(AnnounceDropInCallFlow.makeAnnouncement(), 0, 0);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v2[2] = v1;
  v2[3] = v4;
  v2[4] = v0;
  v6 = *(v5 + 160);
  v7 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v8 = v7;
  *(v9 + 168) = v0;

  if (v0)
  {
    v10 = AnnounceDropInCallFlow.makeAnnouncement();
  }

  else
  {
    v10 = AnnounceDropInCallFlow.makeAnnouncement();
  }

  return _swift_task_switch(v10, 0, 0);
}

{
  v1 = v0[3];
  v2 = v0[17];
  v0[24] = v1;
  v3 = v2[11];
  v4 = v2[12];
  OUTLINED_FUNCTION_7_0(v2 + 8);
  v5 = async function pointer to dispatch thunk of ResponseGenerating.makeResponseOutput(patternExecutionResult:outputGenerationManifest:)[1];
  v6 = v1;
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_18_6(v7);
  *v8 = v9;
  v10 = OUTLINED_FUNCTION_0_18(v8);

  return dispatch thunk of ResponseGenerating.makeResponseOutput(patternExecutionResult:outputGenerationManifest:)(v10, v11, v12, v13, v14);
}

{
  OUTLINED_FUNCTION_28();
  v3 = v2;
  OUTLINED_FUNCTION_13_1();
  *v4 = v3;
  v3[5] = v1;
  v3[6] = v5;
  v3[7] = v0;
  v7 = *(v6 + 176);
  v8 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v9 = v8;

  if (v0)
  {
    v10 = v3[19];

    v11 = *(v8 + 8);

    return v11();
  }

  else
  {
    OUTLINED_FUNCTION_19_5();

    return _swift_task_switch(v13, v14, v15);
  }
}

{
  v1 = v0[6];
  v2 = v0[17];
  v0[24] = v1;
  v3 = v2[11];
  v4 = v2[12];
  OUTLINED_FUNCTION_7_0(v2 + 8);
  v5 = async function pointer to dispatch thunk of ResponseGenerating.makeResponseOutput(patternExecutionResult:outputGenerationManifest:)[1];
  v6 = v1;
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_18_6(v7);
  *v8 = v9;
  v10 = OUTLINED_FUNCTION_0_18(v8);

  return dispatch thunk of ResponseGenerating.makeResponseOutput(patternExecutionResult:outputGenerationManifest:)(v10, v11, v12, v13, v14);
}

{
  OUTLINED_FUNCTION_28();
  v3 = v2;
  OUTLINED_FUNCTION_13_1();
  *v4 = v3;
  v3[8] = v1;
  v3[9] = v5;
  v3[10] = v0;
  v7 = *(v6 + 184);
  v8 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v9 = v8;

  if (v0)
  {
    v10 = v3[19];

    v11 = *(v8 + 8);

    return v11();
  }

  else
  {
    OUTLINED_FUNCTION_19_5();

    return _swift_task_switch(v13, v14, v15);
  }
}

{
  v1 = v0[9];
  v2 = v0[17];
  v0[24] = v1;
  v3 = v2[11];
  v4 = v2[12];
  OUTLINED_FUNCTION_7_0(v2 + 8);
  v5 = async function pointer to dispatch thunk of ResponseGenerating.makeResponseOutput(patternExecutionResult:outputGenerationManifest:)[1];
  v6 = v1;
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_18_6(v7);
  *v8 = v9;
  v10 = OUTLINED_FUNCTION_0_18(v8);

  return dispatch thunk of ResponseGenerating.makeResponseOutput(patternExecutionResult:outputGenerationManifest:)(v10, v11, v12, v13, v14);
}

{
  v2 = *v1;
  OUTLINED_FUNCTION_13_1();
  *v4 = v3;
  v5 = *(v2 + 200);
  *v4 = *v1;
  *(v3 + 208) = v0;

  OUTLINED_FUNCTION_19_5();

  return _swift_task_switch(v6, v7, v8);
}

{
  OUTLINED_FUNCTION_15();
  v1 = *(v0 + 152);

  OUTLINED_FUNCTION_11();

  return v2();
}

{
  OUTLINED_FUNCTION_15();
  v1 = *(v0 + 168);
  v2 = *(v0 + 152);

  OUTLINED_FUNCTION_11();

  return v3();
}

{
  OUTLINED_FUNCTION_15();

  v1 = *(v0 + 208);
  v2 = *(v0 + 152);

  OUTLINED_FUNCTION_11();

  return v3();
}

void AnnounceDropInCallFlow.makeAnnouncement()()
{
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2();
  }

  v3 = v0[17];
  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logger.siriPhone);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[17];
    v8 = OUTLINED_FUNCTION_42();
    v1 = OUTLINED_FUNCTION_36();
    v80 = v1;
    *v8 = 136315138;
    v0[15] = v7;
    type metadata accessor for AnnounceDropInCallFlow();
    OUTLINED_FUNCTION_31_3();

    v9 = String.init<A>(describing:)();
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v80);
    OUTLINED_FUNCTION_31_3();

    *(v8 + 4) = v2;
    _os_log_impl(&dword_0, v5, v6, "#%s Making announcement using RF.", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v1);
    OUTLINED_FUNCTION_26_0();
    OUTLINED_FUNCTION_26_0();
  }

  v11 = v0[17];
  v12 = *(v11 + 144);

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.debug.getter();

  v15 = os_log_type_enabled(v13, v14);
  if (v12 != 3)
  {
    if (v12 != 2)
    {
      if (v12 == 1)
      {
        if (v15)
        {
          OUTLINED_FUNCTION_16_17();
          OUTLINED_FUNCTION_32_0();
          OUTLINED_FUNCTION_30_8();
          *v11 = 136315138;
          v0[14] = 1;
          type metadata accessor for AnnounceDropInCallFlow();
          OUTLINED_FUNCTION_12_13();

          v16 = String.init<A>(describing:)();
          OUTLINED_FUNCTION_32_5(v16, v17, v18, v19);
          OUTLINED_FUNCTION_12_13();

          *(v11 + 4) = v1;
          OUTLINED_FUNCTION_6_7(&dword_0, v20, v21, "#%s Announcing CallBellStarted.");
          OUTLINED_FUNCTION_3_7();
          OUTLINED_FUNCTION_26_0();
        }

        v22 = v0[17];
        v23 = v22[6];
        v24 = v22[7];
        OUTLINED_FUNCTION_7_0(v22 + 3);
        v25 = *(v24 + 16);
        OUTLINED_FUNCTION_20_9();
        v77 = v26 + *v26;
        v28 = *(v27 + 4);
        v29 = swift_task_alloc();
        v0[20] = v29;
        *v29 = v0;
        v29[1] = AnnounceDropInCallFlow.makeAnnouncement();
        v30 = v0[17];
        OUTLINED_FUNCTION_23_7();

        __asm { BRAA            X4, X16 }
      }

      if (v15)
      {
        OUTLINED_FUNCTION_16_17();
        OUTLINED_FUNCTION_32_0();
        OUTLINED_FUNCTION_30_8();
        *v11 = 136315138;
        v0[11] = v12;
        type metadata accessor for AnnounceDropInCallFlow();
        OUTLINED_FUNCTION_12_13();

        v65 = String.init<A>(describing:)();
        OUTLINED_FUNCTION_32_5(v65, v66, v67, v68);
        OUTLINED_FUNCTION_12_13();

        *(v11 + 4) = v1;
        OUTLINED_FUNCTION_6_7(&dword_0, v69, v70, "#%s Received unsupported announcement type");
        OUTLINED_FUNCTION_3_7();
        OUTLINED_FUNCTION_26_0();
      }

      v71 = v0[18];
      v72 = v0[19];
      swift_storeEnumTagMultiPayload();
      lazy protocol witness table accessor for type AnnounceDropInCallFlow and conformance AnnounceDropInCallFlow(&lazy protocol witness table cache variable for type PhoneError and conformance PhoneError, type metadata accessor for PhoneError);
      swift_allocError();
      PhoneError.logged()(v73);
      outlined destroy of PhoneError(v72, type metadata accessor for PhoneError);
      swift_willThrow();
      v74 = v0[19];

      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_23_7();

      __asm { BRAA            X1, X16 }
    }

    if (v15)
    {
      OUTLINED_FUNCTION_16_17();
      OUTLINED_FUNCTION_32_0();
      OUTLINED_FUNCTION_30_8();
      *v11 = 136315138;
      v0[13] = 2;
      type metadata accessor for AnnounceDropInCallFlow();
      OUTLINED_FUNCTION_12_13();

      v33 = String.init<A>(describing:)();
      OUTLINED_FUNCTION_32_5(v33, v34, v35, v36);
      OUTLINED_FUNCTION_12_13();

      *(v11 + 4) = v1;
      OUTLINED_FUNCTION_6_7(&dword_0, v37, v38, "#%s Announcing CallBellEnded.");
      OUTLINED_FUNCTION_3_7();
      OUTLINED_FUNCTION_26_0();
    }

    v39 = v0[17];
    v40 = v39[6];
    v41 = v39[7];
    OUTLINED_FUNCTION_7_0(v39 + 3);
    v42 = *(v41 + 8);
    OUTLINED_FUNCTION_20_9();
    v78 = v43 + *v43;
    v45 = *(v44 + 4);
    v46 = swift_task_alloc();
    v0[22] = v46;
    *v46 = v0;
    OUTLINED_FUNCTION_25_5(v46);
    OUTLINED_FUNCTION_23_7();

    __asm { BRAA            X2, X16 }
  }

  if (v15)
  {
    OUTLINED_FUNCTION_16_17();
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_30_8();
    *v11 = 136315138;
    v0[12] = 3;
    type metadata accessor for AnnounceDropInCallFlow();
    OUTLINED_FUNCTION_12_13();

    v49 = String.init<A>(describing:)();
    OUTLINED_FUNCTION_32_5(v49, v50, v51, v52);
    OUTLINED_FUNCTION_12_13();

    *(v11 + 4) = v1;
    OUTLINED_FUNCTION_6_7(&dword_0, v53, v54, "#%s Received Single Tap, Informing user double tap to hang up.");
    OUTLINED_FUNCTION_3_7();
    OUTLINED_FUNCTION_26_0();
  }

  v55 = v0[17];
  v56 = v55[6];
  v57 = v55[7];
  OUTLINED_FUNCTION_7_0(v55 + 3);
  v58 = *(v57 + 24);
  OUTLINED_FUNCTION_20_9();
  v79 = v59 + *v59;
  v61 = *(v60 + 4);
  v62 = swift_task_alloc();
  v0[23] = v62;
  *v62 = v0;
  OUTLINED_FUNCTION_25_5(v62);
  OUTLINED_FUNCTION_23_7();

  __asm { BRAA            X2, X16 }
}

uint64_t closure #1 in AnnounceDropInCallFlow.makeAnnouncement()(uint64_t *a1, void *a2)
{
  type metadata accessor for SirikitDeviceState();
  v4 = a2[16];
  v5 = a2[17];
  __swift_project_boxed_opaque_existential_1(a2 + 13, v4);
  (*(v5 + 8))(v9, v4, v5);
  v6 = SirikitDeviceState.__allocating_init(from:)();
  v7 = *a1;

  *a1 = v6;
  return result;
}

uint64_t *AnnounceDropInCallFlow.deinit()
{
  v1 = v0[2];

  __swift_destroy_boxed_opaque_existential_1(v0 + 3);
  __swift_destroy_boxed_opaque_existential_1(v0 + 8);
  __swift_destroy_boxed_opaque_existential_1(v0 + 13);
  v2 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin22AnnounceDropInCallFlow_completionOutputManifest;
  v3 = type metadata accessor for OutputGenerationManifest();
  OUTLINED_FUNCTION_23_1(v3);
  (*(v4 + 8))(v0 + v2);
  return v0;
}

uint64_t AnnounceDropInCallFlow.__deallocating_deinit()
{
  AnnounceDropInCallFlow.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t protocol witness for Flow.execute() in conformance AnnounceDropInCallFlow(uint64_t a1)
{
  v4 = *(**v1 + 152);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = closure #2 in ActionableCallControlFlow.execute();

  return v8(a1);
}

uint64_t protocol witness for Flow.exitValue.getter in conformance AnnounceDropInCallFlow(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for AnnounceDropInCallFlow();

  return Flow<>.exitValue.getter(v3, a2);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1)
{
  OUTLINED_FUNCTION_28_8();
  specialized Array<A>.hash(into:)(v4, a1);
  v2 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v2);
}

{
  v3 = *(v1 + 40);
  v4 = static Hasher._hash(seed:_:)();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v4);
}

{
  v2 = v1;
  v4 = *(v2 + 40);
  type metadata accessor for UUID();
  lazy protocol witness table accessor for type AnnounceDropInCallFlow and conformance AnnounceDropInCallFlow(&lazy protocol witness table cache variable for type UUID and conformance UUID, &type metadata accessor for UUID);
  v5 = dispatch thunk of Hashable._rawHashValue(seed:)();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v5);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(void *a1)
{
  OUTLINED_FUNCTION_28_8();
  ContactResolverConfigHashable.hash(into:)(v4);
  v2 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v2);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(char a1)
{
  v3 = *(v1 + 40);
  Hasher.init(_seed:)();
  FollowUpOfferType.rawValue.getter(a1);
  String.hash(into:)();

  v4 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v4);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)()
{
  OUTLINED_FUNCTION_28_8();
  OUTLINED_FUNCTION_27_6();
  v0 = Hasher._finalize()();
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(v0);
}

{
  OUTLINED_FUNCTION_28_8();
  OUTLINED_FUNCTION_27_6();
  v0 = Hasher._finalize()();
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(v0);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for ContactQuery();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v26 - v11;
  v13 = v2 + 64;
  v14 = -1 << *(v2 + 32);
  result = a2 & ~v14;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v16 = ~v14;
    v35 = *(a1 + 16);
    v32 = v6 + 16;
    v17 = (v6 + 8);
    v29 = a1;
    v30 = v2;
    v27 = ~v14;
    v28 = v2 + 64;
    while (1)
    {
      v18 = *(*(v2 + 48) + 8 * result);
      if (*(v18 + 16) == v35)
      {
        break;
      }

LABEL_13:
      result = (result + 1) & v16;
      if (((*(v13 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) == 0)
      {
        return result;
      }
    }

    if (v35 && v18 != a1)
    {
      v31 = result;
      v19 = (*(v6 + 80) + 32) & ~*(v6 + 80);
      v33 = a1 + v19;
      v34 = v18 + v19;

      v20 = 0;
      while (v20 < *(v18 + 16))
      {
        v21 = *(v6 + 72) * v20;
        v22 = v6;
        v23 = *(v6 + 16);
        result = v23(v12, v34 + v21, v5);
        if (v35 == v20)
        {
          goto LABEL_17;
        }

        v23(v9, v33 + v21, v5);
        lazy protocol witness table accessor for type AnnounceDropInCallFlow and conformance AnnounceDropInCallFlow(&lazy protocol witness table cache variable for type ContactQuery and conformance ContactQuery, &type metadata accessor for ContactQuery);
        v24 = dispatch thunk of static Equatable.== infix(_:_:)();
        v25 = *v17;
        (*v17)(v9, v5);
        result = (v25)(v12, v5);
        if ((v24 & 1) == 0)
        {

          a1 = v29;
          v2 = v30;
          result = v31;
          v6 = v22;
          v16 = v27;
          v13 = v28;
          goto LABEL_13;
        }

        ++v20;
        v6 = v22;
        if (v35 == v20)
        {

          return v31;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
    }
  }

  return result;
}

{
  v3 = ~(-1 << *(v2 + 32));
    ;
  }

  return i;
}

{
  v14 = a1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = v2 + 64;
  v13 = ~(-1 << *(v2 + 32));
  for (i = a2 & v13; ((1 << i) & *(v15 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v13)
  {
    (*(v5 + 16))(v8, *(v2 + 48) + *(v5 + 72) * i, v4);
    lazy protocol witness table accessor for type AnnounceDropInCallFlow and conformance AnnounceDropInCallFlow(&lazy protocol witness table cache variable for type UUID and conformance UUID, &type metadata accessor for UUID);
    v10 = dispatch thunk of static Equatable.== infix(_:_:)();
    (*(v5 + 8))(v8, v4);
    if (v10)
    {
      break;
    }
  }

  return i;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(void *a1, uint64_t a2)
{
  v57 = type metadata accessor for ContactActionType();
  v5 = *(v57 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v57);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ContactResolverConfigHashable();
  v10 = *(*(v9 - 1) + 64);
  __chkstk_darwin(v9);
  v13 = (&v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v52 = v2 + 64;
  v53 = v2;
  v14 = -1 << *(v2 + 32);
  v15 = a2 & ~v14;
  if ((*(v2 + 64 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
  {
    v42 = ~v14;
    v16 = v9[7];
    v51 = v9[6];
    v17 = v9[8];
    v49 = *a1;
    v50 = v17;
    v18 = a1[1];
    v47 = a1[2];
    v48 = v18;
    v46 = a1[3];
    v19 = *(a1 + v16);
    v45 = *(v19 + 16);
    v44 = *(v11 + 72);
    v56 = (v5 + 8);
    v43 = (v19 + 40);
    v55 = v9;
    do
    {
      outlined init with copy of ContactResolverConfigHashable(*(v53 + 48) + v44 * v15, v13);
      Hasher.init(_seed:)();
      v20 = *v13;
      v21 = v13[1];
      String.hash(into:)();
      v22 = v13[2];
      v23 = v13[3];
      String.hash(into:)();
      v24 = v9[6];
      type metadata accessor for Locale();
      lazy protocol witness table accessor for type AnnounceDropInCallFlow and conformance AnnounceDropInCallFlow(&lazy protocol witness table cache variable for type Locale and conformance Locale, &type metadata accessor for Locale);
      dispatch thunk of Hashable.hash(into:)();
      v25 = *(v13 + v9[7]);
      Hasher._combine(_:)(*(v25 + 16));
      v26 = *(v25 + 16);
      if (v26)
      {
        v27 = (v25 + 40);
        do
        {
          v28 = *(v27 - 1);
          v29 = *v27;

          String.hash(into:)();

          v27 += 2;
          --v26;
        }

        while (v26);
      }

      v30 = v13 + v55[8];
      ContactResolverConfig.actionType.getter();
      lazy protocol witness table accessor for type AnnounceDropInCallFlow and conformance AnnounceDropInCallFlow(&lazy protocol witness table cache variable for type ContactActionType and conformance ContactActionType, &type metadata accessor for ContactActionType);
      v31 = v57;
      dispatch thunk of Hashable.hash(into:)();
      v32 = *v56;
      (*v56)(v8, v31);
      v54 = Hasher._finalize()();
      Hasher.init(_seed:)();
      String.hash(into:)();
      String.hash(into:)();
      v33 = a1;
      dispatch thunk of Hashable.hash(into:)();
      v34 = v45;
      Hasher._combine(_:)(v45);
      v35 = v43;
      for (i = v34; i; --i)
      {
        v37 = *(v35 - 1);
        v38 = *v35;

        String.hash(into:)();

        v35 += 2;
      }

      a1 = v33;
      ContactResolverConfig.actionType.getter();
      v39 = v57;
      dispatch thunk of Hashable.hash(into:)();
      v32(v8, v39);
      v40 = Hasher._finalize()();
      outlined destroy of PhoneError(v13, type metadata accessor for ContactResolverConfigHashable);
      if (v54 == v40)
      {
        break;
      }

      v15 = (v15 + 1) & v42;
      v9 = v55;
    }

    while (((*(v52 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) != 0);
  }

  return v15;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = 0xE400000000000000;
      v8 = 1162760014;
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          v8 = 0xD000000000000012;
          v7 = 0x8000000000452800;
          break;
        case 2:
          v8 = 0xD000000000000013;
          v7 = 0x8000000000452820;
          break;
        case 3:
          v8 = 0xD000000000000011;
          v7 = 0x8000000000452840;
          break;
        case 4:
          v8 = 0x4C41435F44414552;
          v7 = 0xE90000000000004CLL;
          break;
        default:
          break;
      }

      v9 = 0xE400000000000000;
      v10 = 1162760014;
      switch(a1)
      {
        case 1:
          v10 = 0xD000000000000012;
          v9 = 0x8000000000452800;
          break;
        case 2:
          v10 = 0xD000000000000013;
          v9 = 0x8000000000452820;
          break;
        case 3:
          v10 = 0xD000000000000011;
          v9 = 0x8000000000452840;
          break;
        case 4:
          v10 = 0x4C41435F44414552;
          v9 = 0xE90000000000004CLL;
          break;
        default:
          break;
      }

      if (v8 == v10 && v7 == v9)
      {
        break;
      }

      v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v6;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1)
{
  result = a1 & ~(-1 << *(v1 + 32));
  v3 = *(v1 + ((result >> 3) & 0xFFFFFFFFFFFFFF8) + 64) >> result;
  return result;
}

uint64_t specialized AnnounceDropInCallFlow.init(announcementType:sharedGlobals:announceCallBellCatPatterns:responseGenerator:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v16 = type metadata accessor for CATOption();
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v18 = type metadata accessor for DialogPhase();
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v29 = a6;
  v30 = a8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v28);
  (*(*(a6 - 8) + 32))(boxed_opaque_existential_1, a3, a6);
  v26 = a7;
  v27 = a9;
  v21 = __swift_allocate_boxed_opaque_existential_1(&v25);
  (*(*(a7 - 8) + 32))(v21, a4, a7);
  static DialogPhase.completion.getter();
  OutputGenerationManifest.init(dialogPhase:_:)();
  *(a5 + 144) = a1;
  outlined init with copy of SignalProviding(a2, a5 + 104);
  type metadata accessor for AnnounceCallBellCATs();
  static CATOption.defaultMode.getter();
  v22 = CATWrapper.__allocating_init(options:globals:)();
  __swift_destroy_boxed_opaque_existential_1(a2);
  *(a5 + 16) = v22;
  outlined init with take of SPHConversation(&v28, a5 + 24);
  outlined init with take of SPHConversation(&v25, a5 + 64);
  return a5;
}

uint64_t type metadata accessor for AnnounceDropInCallFlow()
{
  result = type metadata singleton initialization cache for AnnounceDropInCallFlow;
  if (!type metadata singleton initialization cache for AnnounceDropInCallFlow)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t partial apply for closure #1 in AnnounceDropInCallFlow.execute()()
{
  OUTLINED_FUNCTION_15();
  v3 = v2;
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = closure #2 in ActionableCallControlFlow.execute();

  return closure #1 in AnnounceDropInCallFlow.execute()(v3, v0);
}

uint64_t type metadata completion function for AnnounceDropInCallFlow()
{
  result = type metadata accessor for OutputGenerationManifest();
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

uint64_t outlined init with copy of ContactResolverConfigHashable(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContactResolverConfigHashable();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t lazy protocol witness table accessor for type AnnounceDropInCallFlow and conformance AnnounceDropInCallFlow(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t outlined destroy of PhoneError(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_23_1(v3);
  (*(v4 + 8))(a1);
  return a1;
}

PhoneCallFlowDelegatePlugin::AnnounceGroupFaceTimeInviteCATPatternsIdentifiers_optional __swiftcall AnnounceGroupFaceTimeInviteCATPatternsIdentifiers.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of AnnounceGroupFaceTimeInviteCATPatternsIdentifiers.init(rawValue:), v2);

  if (v3 == 1)
  {
    v4.value = PhoneCallFlowDelegatePlugin_AnnounceGroupFaceTimeInviteCATPatternsIdentifiers_readGroupFaceTimeInviteAnnouncement;
  }

  else
  {
    v4.value = PhoneCallFlowDelegatePlugin_AnnounceGroupFaceTimeInviteCATPatternsIdentifiers_unknownDefault;
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

unint64_t AnnounceGroupFaceTimeInviteCATPatternsIdentifiers.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0xD00000000000003FLL;
  }

  else
  {
    return 0xD00000000000002FLL;
  }
}

PhoneCallFlowDelegatePlugin::AnnounceGroupFaceTimeInviteCATPatternsIdentifiers_optional protocol witness for RawRepresentable.init(rawValue:) in conformance AnnounceGroupFaceTimeInviteCATPatternsIdentifiers@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::AnnounceGroupFaceTimeInviteCATPatternsIdentifiers_optional *a2@<X8>)
{
  result.value = AnnounceGroupFaceTimeInviteCATPatternsIdentifiers.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance AnnounceGroupFaceTimeInviteCATPatternsIdentifiers@<X0>(unint64_t *a1@<X8>)
{
  result = AnnounceGroupFaceTimeInviteCATPatternsIdentifiers.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t outlined assign with take of SpeakableString?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t AnnounceGroupFaceTimeInviteOfferFollowUpIntentParameters.rejectAction.setter()
{
  v2 = OUTLINED_FUNCTION_2_4();
  v3 = v1 + *(type metadata accessor for AnnounceGroupFaceTimeInviteOfferFollowUpIntentParameters(v2) + 20);

  return outlined assign with take of SpeakableString?(v0, v3);
}

uint64_t AnnounceGroupFaceTimeInviteOfferFollowUpIntentParameters.rejectAction.modify()
{
  v0 = OUTLINED_FUNCTION_2_4();
  v1 = *(type metadata accessor for AnnounceGroupFaceTimeInviteOfferFollowUpIntentParameters(v0) + 20);
  return OUTLINED_FUNCTION_9_11();
}

uint64_t AnnounceGroupFaceTimeInviteOfferFollowUpIntentParameters.asKeyValuePairs()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v2 = OUTLINED_FUNCTION_21(v1);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v16 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_424FF0;
  strcpy((v10 + 32), "confirmAction");
  *(v10 + 46) = -4864;
  outlined init with copy of SpeakableString?(v0, v9, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v11 = type metadata accessor for SpeakableString();
  if (__swift_getEnumTagSinglePayload(v9, 1, v11) == 1)
  {
    outlined destroy of SpeakableString?(v9, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v10 + 48) = 0u;
    *(v10 + 64) = 0u;
  }

  else
  {
    *(v10 + 72) = v11;
    __swift_allocate_boxed_opaque_existential_1((v10 + 48));
    OUTLINED_FUNCTION_40(v11);
    (*(v12 + 32))();
  }

  strcpy((v10 + 80), "rejectAction");
  *(v10 + 93) = 0;
  *(v10 + 94) = -5120;
  OUTLINED_FUNCTION_4_10();
  outlined init with copy of SpeakableString?(v0 + v13, v7, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  if (__swift_getEnumTagSinglePayload(v7, 1, v11) == 1)
  {
    outlined destroy of SpeakableString?(v7, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v10 + 96) = 0u;
    *(v10 + 112) = 0u;
  }

  else
  {
    *(v10 + 120) = v11;
    __swift_allocate_boxed_opaque_existential_1((v10 + 96));
    OUTLINED_FUNCTION_40(v11);
    (*(v14 + 32))();
  }

  return v10;
}

uint64_t AnnounceGroupFaceTimeInviteOfferFollowUpIntentParameters.init()()
{
  v0 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_7_6();
  __swift_storeEnumTagSinglePayload(v1, v2, v3, v0);
  OUTLINED_FUNCTION_4_10();
  OUTLINED_FUNCTION_7_6();

  return __swift_storeEnumTagSinglePayload(v4, v5, v6, v0);
}

uint64_t AnnounceGroupFaceTimeInviteOfferFollowUpIntentParameters.init(confirmAction:rejectAction:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  outlined init with take of SpeakableString?(a1, a3);
  OUTLINED_FUNCTION_4_10();

  return outlined init with take of SpeakableString?(a2, a3 + v5);
}

uint64_t AnnounceGroupFaceTimeInviteReadGroupFaceTimeInviteAnnouncementParameters.burstIndex.getter()
{
  result = *v0;
  v2 = *(v0 + 8);
  return result;
}

uint64_t AnnounceGroupFaceTimeInviteReadGroupFaceTimeInviteAnnouncementParameters.burstIndex.setter(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

uint64_t StartCallSimpleDisambiguateContactsHandlesParameters.requestedContact.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t AnnounceGroupFaceTimeInviteReadGroupFaceTimeInviteAnnouncementParameters.messagesGroupName.setter()
{
  v2 = OUTLINED_FUNCTION_2_4();
  v3 = v1 + *(type metadata accessor for AnnounceGroupFaceTimeInviteReadGroupFaceTimeInviteAnnouncementParameters(v2) + 24);

  return outlined assign with take of SpeakableString?(v0, v3);
}

uint64_t AnnounceGroupFaceTimeInviteReadGroupFaceTimeInviteAnnouncementParameters.messagesGroupName.modify()
{
  v0 = OUTLINED_FUNCTION_2_4();
  v1 = *(type metadata accessor for AnnounceGroupFaceTimeInviteReadGroupFaceTimeInviteAnnouncementParameters(v0) + 24);
  return OUTLINED_FUNCTION_9_11();
}

uint64_t AnnounceGroupFaceTimeInviteReadGroupFaceTimeInviteAnnouncementParameters.numberOfParticipants.getter()
{
  v1 = (v0 + *(type metadata accessor for AnnounceGroupFaceTimeInviteReadGroupFaceTimeInviteAnnouncementParameters(0) + 28));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t AnnounceGroupFaceTimeInviteReadGroupFaceTimeInviteAnnouncementParameters.numberOfParticipants.modify()
{
  v0 = OUTLINED_FUNCTION_2_4();
  v1 = *(type metadata accessor for AnnounceGroupFaceTimeInviteReadGroupFaceTimeInviteAnnouncementParameters(v0) + 28);
  return OUTLINED_FUNCTION_9_11();
}

uint64_t AnnounceGroupFaceTimeInviteReadGroupFaceTimeInviteAnnouncementParameters.numberOfParticipantsNotAnnounced.getter()
{
  v1 = (v0 + *(type metadata accessor for AnnounceGroupFaceTimeInviteReadGroupFaceTimeInviteAnnouncementParameters(0) + 32));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t AnnounceGroupFaceTimeInviteReadGroupFaceTimeInviteAnnouncementParameters.numberOfParticipantsNotAnnounced.modify()
{
  v0 = OUTLINED_FUNCTION_2_4();
  v1 = *(type metadata accessor for AnnounceGroupFaceTimeInviteReadGroupFaceTimeInviteAnnouncementParameters(v0) + 32);
  return OUTLINED_FUNCTION_9_11();
}

uint64_t AnnounceGroupFaceTimeInviteReadGroupFaceTimeInviteAnnouncementParameters.participants.getter()
{
  v1 = *(v0 + *(type metadata accessor for AnnounceGroupFaceTimeInviteReadGroupFaceTimeInviteAnnouncementParameters(0) + 36));
}

uint64_t AnnounceGroupFaceTimeInviteReadGroupFaceTimeInviteAnnouncementParameters.asKeyValuePairs()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v2 = OUTLINED_FUNCTION_21(v1);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v25 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v7 = swift_allocObject();
  v8 = v7;
  *(v7 + 16) = xmmword_427BC0;
  *(v7 + 32) = 0x646E497473727562;
  *(v7 + 40) = 0xEA00000000007865;
  if (v0[1])
  {
    v9 = 0;
    *(v7 + 56) = 0;
    *(v7 + 64) = 0;
    v10 = 0;
  }

  else
  {
    v10 = *v0;
    v9 = &type metadata for Double;
  }

  *(v7 + 48) = v10;
  *(v7 + 72) = v9;
  *(v7 + 80) = 0x72656C6C6163;
  *(v7 + 88) = 0xE600000000000000;
  v11 = v0[2];
  if (v11)
  {
    v12 = type metadata accessor for PhonePerson(0);
    v13 = v11;
  }

  else
  {
    v13 = 0;
    v12 = 0;
    *(v8 + 104) = 0;
    *(v8 + 112) = 0;
  }

  *(v8 + 96) = v13;
  *(v8 + 120) = v12;
  *(v8 + 128) = 0xD000000000000011;
  *(v8 + 136) = 0x8000000000457900;
  GroupFaceTimeInviteAnnouncementParameters = type metadata accessor for AnnounceGroupFaceTimeInviteReadGroupFaceTimeInviteAnnouncementParameters(0);
  outlined init with copy of SpeakableString?(v0 + GroupFaceTimeInviteAnnouncementParameters[6], v6, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v15 = type metadata accessor for SpeakableString();
  if (__swift_getEnumTagSinglePayload(v6, 1, v15) == 1)
  {

    outlined destroy of SpeakableString?(v6, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v8 + 144) = 0u;
    *(v8 + 160) = 0u;
  }

  else
  {
    *(v8 + 168) = v15;
    __swift_allocate_boxed_opaque_existential_1((v8 + 144));
    OUTLINED_FUNCTION_40(v15);
    (*(v16 + 32))();
  }

  *(v8 + 176) = 0xD000000000000014;
  *(v8 + 184) = 0x8000000000457920;
  v17 = (v0 + GroupFaceTimeInviteAnnouncementParameters[7]);
  if (v17[1])
  {
    v18 = 0;
    *(v8 + 200) = 0;
    *(v8 + 208) = 0;
    v19 = 0;
  }

  else
  {
    v19 = *v17;
    v18 = &type metadata for Double;
  }

  *(v8 + 192) = v19;
  *(v8 + 216) = v18;
  *(v8 + 224) = 0xD000000000000020;
  *(v8 + 232) = 0x8000000000457940;
  v20 = (v0 + GroupFaceTimeInviteAnnouncementParameters[8]);
  if (v20[1])
  {
    v21 = 0;
    *(v8 + 248) = 0;
    *(v8 + 256) = 0;
    v22 = 0;
  }

  else
  {
    v22 = *v20;
    v21 = &type metadata for Double;
  }

  *(v8 + 240) = v22;
  *(v8 + 264) = v21;
  strcpy((v8 + 272), "participants");
  *(v8 + 285) = 0;
  *(v8 + 286) = -5120;
  v23 = *(v0 + GroupFaceTimeInviteAnnouncementParameters[9]);
  *(v8 + 312) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay27PhoneCallFlowDelegatePlugin0A6PersonCGMd, &_sSay27PhoneCallFlowDelegatePlugin0A6PersonCGMR);
  *(v8 + 288) = v23;

  return v8;
}

uint64_t AnnounceGroupFaceTimeInviteReadGroupFaceTimeInviteAnnouncementParameters.init(burstIndex:caller:messagesGroupName:numberOfParticipants:numberOfParticipantsNotAnnounced:participants:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, uint64_t a10)
{
  *a9 = a1;
  *(a9 + 8) = a2 & 1;
  *(a9 + 16) = a3;
  GroupFaceTimeInviteAnnouncementParameters = type metadata accessor for AnnounceGroupFaceTimeInviteReadGroupFaceTimeInviteAnnouncementParameters(0);
  result = outlined init with take of SpeakableString?(a4, a9 + GroupFaceTimeInviteAnnouncementParameters[6]);
  v18 = a9 + GroupFaceTimeInviteAnnouncementParameters[7];
  *v18 = a5;
  *(v18 + 8) = a6 & 1;
  v19 = a9 + GroupFaceTimeInviteAnnouncementParameters[8];
  *v19 = a7;
  *(v19 + 8) = a8 & 1;
  *(a9 + GroupFaceTimeInviteAnnouncementParameters[9]) = a10;
  return result;
}

uint64_t AnnounceGroupFaceTimeInviteCATPatternsExecutor.offerFollowUpIntent(_:)()
{
  OUTLINED_FUNCTION_15();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = type metadata accessor for AnnounceGroupFaceTimeInviteOfferFollowUpIntentParameters(0);
  v1[5] = v4;
  OUTLINED_FUNCTION_21(v4);
  v6 = *(v5 + 64) + 15;
  v1[6] = swift_task_alloc();
  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v7, v8, v9);
}

{
  v2 = v0[5];
  v1 = v0[6];
  v4 = v0[2];
  v3 = v0[3];
  v5 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_7_6();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v5);
  v9 = *(v2 + 20);
  OUTLINED_FUNCTION_7_6();
  __swift_storeEnumTagSinglePayload(v10, v11, v12, v5);
  v4(v1);
  v13 = AnnounceGroupFaceTimeInviteOfferFollowUpIntentParameters.asKeyValuePairs()();
  v0[7] = v13;
  v14 = OUTLINED_FUNCTION_12_0(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v0[8] = v14;
  *v14 = v0;
  v14[1] = AnnounceGroupFaceTimeInviteCATPatternsExecutor.offerFollowUpIntent(_:);
  v15 = v0[4];

  return v17(0xD00000000000002FLL, 0x8000000000451D20, v13);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_0_19();

  v1 = *(v0 + 8);
  v2 = *(v0 + 80);

  return v1(v2);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_0_19();

  v1 = *(v0 + 8);
  v2 = *(v0 + 72);

  return v1();
}

uint64_t AnnounceGroupFaceTimeInviteCATPatternsExecutor.offerFollowUpIntent(_:)(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 64);
  v6 = *(*v2 + 56);
  v7 = *v2;
  OUTLINED_FUNCTION_4_2();
  *v8 = v7;
  *(v4 + 72) = v1;

  if (!v1)
  {
    *(v4 + 80) = a1;
  }

  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t AnnounceGroupFaceTimeInviteCATPatternsExecutor.readGroupFaceTimeInviteAnnouncement(participants:_:)()
{
  OUTLINED_FUNCTION_15();
  v1[4] = v2;
  v1[5] = v0;
  v1[2] = v3;
  v1[3] = v4;
  GroupFaceTimeInviteAnnouncementParameters = type metadata accessor for AnnounceGroupFaceTimeInviteReadGroupFaceTimeInviteAnnouncementParameters(0);
  v1[6] = GroupFaceTimeInviteAnnouncementParameters;
  OUTLINED_FUNCTION_21(GroupFaceTimeInviteAnnouncementParameters);
  v7 = *(v6 + 64) + 15;
  v1[7] = swift_task_alloc();
  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v8, v9, v10);
}

{
  v2 = v0[6];
  v1 = v0[7];
  v4 = v0[3];
  v3 = v0[4];
  v5 = v0[2];
  v6 = v2[6];
  type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_7_6();
  __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  *v1 = 0;
  *(v1 + 8) = 1;
  *(v1 + 16) = 0;
  v11 = v1 + v2[7];
  *v11 = 0;
  *(v11 + 8) = 1;
  v12 = v1 + v2[8];
  *v12 = 0;
  *(v12 + 8) = 1;
  *(v1 + v2[9]) = v5;

  v4(v1);
  GroupFaceTimeInviteAnnouncement = AnnounceGroupFaceTimeInviteReadGroupFaceTimeInviteAnnouncementParameters.asKeyValuePairs()();
  v0[8] = GroupFaceTimeInviteAnnouncement;
  v14 = OUTLINED_FUNCTION_12_0(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v0[9] = v14;
  *v14 = v0;
  v14[1] = AnnounceGroupFaceTimeInviteCATPatternsExecutor.readGroupFaceTimeInviteAnnouncement(participants:_:);
  v15 = v0[5];

  return v17(0xD00000000000003FLL, 0x8000000000451D50, GroupFaceTimeInviteAnnouncement);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_1_25();

  v1 = *(v0 + 8);
  v2 = *(v0 + 88);

  return v1(v2);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_1_25();

  v1 = *(v0 + 8);
  v2 = *(v0 + 80);

  return v1();
}

uint64_t AnnounceGroupFaceTimeInviteCATPatternsExecutor.readGroupFaceTimeInviteAnnouncement(participants:_:)(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 72);
  v6 = *(*v2 + 64);
  v7 = *v2;
  OUTLINED_FUNCTION_4_2();
  *v8 = v7;
  *(v4 + 80) = v1;

  if (!v1)
  {
    *(v4 + 88) = a1;
  }

  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t outlined destroy of AnnounceGroupFaceTimeInviteOfferFollowUpIntentParameters()
{
  v1 = OUTLINED_FUNCTION_2_4();
  v3 = v2(v1);
  OUTLINED_FUNCTION_40(v3);
  (*(v4 + 8))(v0);
  return v0;
}

uint64_t AnnounceGroupFaceTimeInviteCATPatternsExecutor.__allocating_init(templateDir:options:globals:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  return AnnounceGroupFaceTimeInviteCATPatternsExecutor.init(templateDir:options:globals:)(a1, a2);
}

uint64_t AnnounceGroupFaceTimeInviteCATPatternsExecutor.init(templateDir:options:globals:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_2_4();
  v4 = type metadata accessor for CATOption();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v10 = OUTLINED_FUNCTION_21(v9);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  outlined init with copy of SpeakableString?(v2, &v16 - v13, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  (*(v5 + 16))(v8, a2, v4);
  v14 = CATWrapper.init(templateDir:options:globals:)();
  (*(v5 + 8))(a2, v4);
  outlined destroy of SpeakableString?(v2, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  return v14;
}

unint64_t lazy protocol witness table accessor for type AnnounceGroupFaceTimeInviteCATPatternsIdentifiers and conformance AnnounceGroupFaceTimeInviteCATPatternsIdentifiers()
{
  result = lazy protocol witness table cache variable for type AnnounceGroupFaceTimeInviteCATPatternsIdentifiers and conformance AnnounceGroupFaceTimeInviteCATPatternsIdentifiers;
  if (!lazy protocol witness table cache variable for type AnnounceGroupFaceTimeInviteCATPatternsIdentifiers and conformance AnnounceGroupFaceTimeInviteCATPatternsIdentifiers)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnnounceGroupFaceTimeInviteCATPatternsIdentifiers and conformance AnnounceGroupFaceTimeInviteCATPatternsIdentifiers);
  }

  return result;
}

uint64_t protocol witness for AnnounceGroupFaceTimeInviteCATPatternsExecuting.offerFollowUpIntent(_:) in conformance AnnounceGroupFaceTimeInviteCATPatternsExecutor(uint64_t a1, uint64_t a2)
{
  v9 = (**v2 + class metadata base offset for AnnounceGroupFaceTimeInviteCATPatternsExecutor);
  v10 = (*v9 + **v9);
  v6 = (*v9)[1];
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = AddCallParticipantCATPatternsExecutor.unsupportedParticipantsMultipleContactsUnsupported();

  return v10(a1, a2);
}

uint64_t protocol witness for AnnounceGroupFaceTimeInviteCATPatternsExecuting.readGroupFaceTimeInviteAnnouncement(participants:_:) in conformance AnnounceGroupFaceTimeInviteCATPatternsExecutor(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(**v3 + class metadata base offset for AnnounceGroupFaceTimeInviteCATPatternsExecutor + 8);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = AddCallParticipantCATPatternsExecutor.unsupportedNoActiveCall();

  return v12(a1, a2, a3);
}

_BYTE *storeEnumTagSinglePayload for AnnounceGroupFaceTimeInviteCATPatternsIdentifiers(_BYTE *result, unsigned int a2, unsigned int a3)
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

void type metadata completion function for AnnounceGroupFaceTimeInviteOfferFollowUpIntentParameters()
{
  type metadata accessor for SpeakableString?(319, &lazy cache variable for type metadata for SpeakableString?, &type metadata accessor for SpeakableString, &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t type metadata completion function for AnnounceGroupFaceTimeInviteReadGroupFaceTimeInviteAnnouncementParameters()
{
  type metadata accessor for Double?();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    type metadata accessor for SpeakableString?(319, &lazy cache variable for type metadata for PhonePerson?, type metadata accessor for PhonePerson, &type metadata accessor for Optional);
    if (v4 > 0x3F)
    {
      return v3;
    }

    type metadata accessor for SpeakableString?(319, &lazy cache variable for type metadata for SpeakableString?, &type metadata accessor for SpeakableString, &type metadata accessor for Optional);
    if (v5 > 0x3F)
    {
      return v3;
    }

    else
    {
      type metadata accessor for SpeakableString?(319, &lazy cache variable for type metadata for [PhonePerson], type metadata accessor for PhonePerson, &type metadata accessor for Array);
      v1 = v6;
      if (v7 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v1;
}

void type metadata accessor for Double?()
{
  if (!lazy cache variable for type metadata for Double?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Double?);
    }
  }
}

void type metadata accessor for SpeakableString?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

PhoneCallFlowDelegatePlugin::AnnounceGroupFaceTimeInviteCATs::Properties_optional __swiftcall AnnounceGroupFaceTimeInviteCATs.Properties.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of AnnounceGroupFaceTimeInviteCATs.Properties.init(rawValue:), v2);

  if (v3 == 1)
  {
    v4.value = PhoneCallFlowDelegatePlugin_AnnounceGroupFaceTimeInviteCATs_Properties_readGroupFaceTimeInviteAnnouncement;
  }

  else
  {
    v4.value = PhoneCallFlowDelegatePlugin_AnnounceGroupFaceTimeInviteCATs_Properties_unknownDefault;
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

PhoneCallFlowDelegatePlugin::AnnounceGroupFaceTimeInviteCATs::Properties_optional protocol witness for RawRepresentable.init(rawValue:) in conformance AnnounceGroupFaceTimeInviteCATs.Properties@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::AnnounceGroupFaceTimeInviteCATs::Properties_optional *a2@<X8>)
{
  result.value = AnnounceGroupFaceTimeInviteCATs.Properties.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t AnnounceGroupFaceTimeInviteCATs.offerFollowUpIntent()(uint64_t a1)
{
  v3 = *(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:) + 1);
  v6 = &async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:) + async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = closure #2 in ActionableCallControlFlow.execute();

  return (v6)(a1, 0xD00000000000002FLL, 0x8000000000451D20, _swiftEmptyArrayStorage);
}

uint64_t AnnounceGroupFaceTimeInviteCATs.offerFollowUpIntent()()
{
  v1 = *(&async function pointer to dispatch thunk of CATWrapper.executeDialog(catId:parameters:) + 1);
  v4 = &async function pointer to dispatch thunk of CATWrapper.executeDialog(catId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executeDialog(catId:parameters:);
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  *v2 = v0;
  v2[1] = AddCallParticipantCATs.errorNoTargetCall();

  return (v4)(0xD00000000000002FLL, 0x8000000000451D20, _swiftEmptyArrayStorage);
}

{
  return dispatch thunk of CATWrapper.execute(catId:parameters:)();
}

uint64_t AnnounceGroupFaceTimeInviteCATs.readGroupFaceTimeInviteAnnouncement(messagesGroupName:caller:participants:burstIndex:numberOfParticipants:numberOfParticipantsNotAnnounced:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, int a7, uint64_t a8)
{
  v38 = a6;
  v39 = a8;
  v40 = a7;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v14 = OUTLINED_FUNCTION_21(v13);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v38 - v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v19 = OUTLINED_FUNCTION_19_16();
  *(v19 + 16) = xmmword_427BC0;
  OUTLINED_FUNCTION_27_2();
  *(v20 + 32) = 0xD000000000000011;
  *(v20 + 40) = v21;
  outlined init with copy of SpeakableString?(a1, v18, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v22 = type metadata accessor for SpeakableString();
  if (__swift_getEnumTagSinglePayload(v18, 1, v22) == 1)
  {
    outlined destroy of SpeakableString?(v18, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v19 + 48) = 0u;
    *(v19 + 64) = 0u;
  }

  else
  {
    *(v19 + 72) = v22;
    __swift_allocate_boxed_opaque_existential_1((v19 + 48));
    OUTLINED_FUNCTION_40(v22);
    (*(v23 + 32))();
  }

  OUTLINED_FUNCTION_2_19();
  *(v19 + 80) = v24;
  *(v19 + 88) = v25;
  if (a2)
  {
    v26 = type metadata accessor for PhonePerson(0);
    v27 = a2;
  }

  else
  {
    v27 = 0;
    v26 = 0;
    *(v19 + 104) = 0;
    *(v19 + 112) = 0;
  }

  *(v19 + 96) = v27;
  *(v19 + 120) = v26;
  strcpy((v19 + 128), "participants");
  *(v19 + 141) = 0;
  *(v19 + 142) = -5120;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay27PhoneCallFlowDelegatePlugin0A6PersonCGMd, &_sSay27PhoneCallFlowDelegatePlugin0A6PersonCGMR);
  *(v19 + 144) = a3;
  *(v19 + 168) = v28;
  *(v19 + 176) = 0x646E497473727562;
  *(v19 + 184) = 0xEA00000000007865;
  if (a5)
  {
    a4 = 0;
    *(v19 + 200) = 0;
    *(v19 + 208) = 0;
  }

  *(v19 + 192) = a4;
  OUTLINED_FUNCTION_13_10();
  *(v19 + 216) = v29;
  *(v19 + 224) = 0xD000000000000014;
  *(v19 + 232) = v30;
  if (v40)
  {
    v31 = 0;
    *(v19 + 248) = 0;
    *(v19 + 256) = 0;
  }

  else
  {
    v31 = v38;
  }

  *(v19 + 240) = v31;
  OUTLINED_FUNCTION_13_10();
  *(v19 + 264) = v32;
  *(v19 + 272) = 0xD000000000000020;
  *(v19 + 280) = v33;
  if (v34)
  {
    OUTLINED_FUNCTION_5_15();
    *(v19 + 296) = 0;
    *(v19 + 304) = 0;
  }

  else
  {
    v35 = &type metadata for Double;
    v36 = v39;
  }

  *(v19 + 288) = v36;
  *(v19 + 312) = v35;

  dispatch thunk of CATWrapper.execute(catId:parameters:completion:)();
}

uint64_t AnnounceGroupFaceTimeInviteCATs.readGroupFaceTimeInviteAnnouncement(messagesGroupName:caller:participants:burstIndex:numberOfParticipants:numberOfParticipantsNotAnnounced:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  OUTLINED_FUNCTION_15();
  *(v11 + 114) = a10;
  *(v11 + 64) = a9;
  *(v11 + 72) = v10;
  *(v11 + 113) = v12;
  *(v11 + 112) = v13;
  *(v11 + 48) = v14;
  *(v11 + 56) = v15;
  *(v11 + 32) = v16;
  *(v11 + 40) = v17;
  *(v11 + 16) = v18;
  *(v11 + 24) = v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v20);
  v22 = *(v21 + 64) + 15;
  *(v11 + 80) = swift_task_alloc();
  OUTLINED_FUNCTION_66_0();
  return OUTLINED_FUNCTION_17_1(v23, v24, v25);
}

uint64_t AnnounceGroupFaceTimeInviteCATs.readGroupFaceTimeInviteAnnouncement(messagesGroupName:caller:participants:burstIndex:numberOfParticipants:numberOfParticipantsNotAnnounced:)()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_19_16();
  *(v0 + 88) = v3;
  *(v3 + 16) = xmmword_427BC0;
  OUTLINED_FUNCTION_27_2();
  *(v4 + 32) = 0xD000000000000011;
  *(v4 + 40) = v5;
  outlined init with copy of SpeakableString?(v2, v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v6 = type metadata accessor for SpeakableString();
  v7 = OUTLINED_FUNCTION_58(v6);
  v8 = *(v0 + 80);
  if (v7 == 1)
  {
    outlined destroy of SpeakableString?(*(v0 + 80), &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v3 + 48) = 0u;
    *(v3 + 64) = 0u;
  }

  else
  {
    *(v3 + 72) = v2;
    __swift_allocate_boxed_opaque_existential_1((v3 + 48));
    OUTLINED_FUNCTION_40(v2);
    (*(v9 + 32))();
  }

  v10 = *(v0 + 32);
  OUTLINED_FUNCTION_2_19();
  *(v3 + 80) = v11;
  *(v3 + 88) = v12;
  if (v10)
  {
    v13 = type metadata accessor for PhonePerson(0);
    v14 = v10;
  }

  else
  {
    v13 = OUTLINED_FUNCTION_7_7();
  }

  v15 = *(v0 + 112);
  v16 = *(v0 + 40);
  OUTLINED_FUNCTION_0_20(v13, v14);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay27PhoneCallFlowDelegatePlugin0A6PersonCGMd, &_sSay27PhoneCallFlowDelegatePlugin0A6PersonCGMR);
  OUTLINED_FUNCTION_1_26(v17);
  if (v15)
  {
    OUTLINED_FUNCTION_5_15();
    *(v3 + 200) = 0;
    *(v3 + 208) = 0;
  }

  else
  {
    v19 = *(v0 + 48);
    v18 = &type metadata for Double;
  }

  v20 = *(v0 + 113);
  *(v3 + 192) = v19;
  OUTLINED_FUNCTION_10_8(v18);
  if (v21)
  {
    OUTLINED_FUNCTION_5_15();
    *(v3 + 248) = 0;
    *(v3 + 256) = 0;
  }

  else
  {
    v23 = *(v0 + 56);
    v22 = &type metadata for Double;
  }

  v24 = *(v0 + 114);
  *(v3 + 240) = v23;
  OUTLINED_FUNCTION_9_12(v22);
  if (v25)
  {
    v26 = 0;
    v27 = 0;
    *(v3 + 296) = 0;
    *(v3 + 304) = 0;
  }

  else
  {
    v26 = *(v0 + 64);
    v27 = &type metadata for Double;
  }

  *(v3 + 288) = v26;
  *(v3 + 312) = v27;
  OUTLINED_FUNCTION_11_7(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));

  v28 = swift_task_alloc();
  *(v0 + 96) = v28;
  *v28 = v0;
  v28[1] = AnnounceGroupFaceTimeInviteCATs.readGroupFaceTimeInviteAnnouncement(messagesGroupName:caller:participants:burstIndex:numberOfParticipants:numberOfParticipantsNotAnnounced:);
  v29 = *(v0 + 72);
  v30 = *(v0 + 16);

  return v32(v30, 0xD00000000000003FLL, 0x8000000000451D50, v3);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  v3 = v2;
  v4 = v2[12];
  v5 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v6 = v5;
  v3[13] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_66_0();

    return _swift_task_switch(v7, v8, v9);
  }

  else
  {
    v11 = v3[10];
    v10 = v3[11];

    OUTLINED_FUNCTION_11();

    return v12();
  }
}

{
  OUTLINED_FUNCTION_15();
  v2 = v0[10];
  v1 = v0[11];

  OUTLINED_FUNCTION_11();
  v4 = v0[13];

  return v3();
}

{
  v1 = *(v0 + 72);
  v2 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_19_16();
  *(v0 + 80) = v3;
  *(v3 + 16) = xmmword_427BC0;
  OUTLINED_FUNCTION_27_2();
  *(v4 + 32) = 0xD000000000000011;
  *(v4 + 40) = v5;
  outlined init with copy of SpeakableString?(v2, v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v6 = type metadata accessor for SpeakableString();
  v7 = OUTLINED_FUNCTION_58(v6);
  v8 = *(v0 + 72);
  if (v7 == 1)
  {
    outlined destroy of SpeakableString?(*(v0 + 72), &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v3 + 48) = 0u;
    *(v3 + 64) = 0u;
  }

  else
  {
    *(v3 + 72) = v2;
    __swift_allocate_boxed_opaque_existential_1((v3 + 48));
    OUTLINED_FUNCTION_40(v2);
    (*(v9 + 32))();
  }

  v10 = *(v0 + 24);
  OUTLINED_FUNCTION_2_19();
  *(v3 + 80) = v11;
  *(v3 + 88) = v12;
  if (v10)
  {
    v13 = type metadata accessor for PhonePerson(0);
    v14 = v10;
  }

  else
  {
    v13 = OUTLINED_FUNCTION_7_7();
  }

  v15 = *(v0 + 104);
  v16 = *(v0 + 32);
  OUTLINED_FUNCTION_0_20(v13, v14);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay27PhoneCallFlowDelegatePlugin0A6PersonCGMd, &_sSay27PhoneCallFlowDelegatePlugin0A6PersonCGMR);
  OUTLINED_FUNCTION_1_26(v17);
  if (v15)
  {
    OUTLINED_FUNCTION_5_15();
    *(v3 + 200) = 0;
    *(v3 + 208) = 0;
  }

  else
  {
    v19 = *(v0 + 40);
    v18 = &type metadata for Double;
  }

  v20 = *(v0 + 105);
  *(v3 + 192) = v19;
  OUTLINED_FUNCTION_10_8(v18);
  if (v21)
  {
    OUTLINED_FUNCTION_5_15();
    *(v3 + 248) = 0;
    *(v3 + 256) = 0;
  }

  else
  {
    v23 = *(v0 + 48);
    v22 = &type metadata for Double;
  }

  v24 = *(v0 + 106);
  *(v3 + 240) = v23;
  OUTLINED_FUNCTION_9_12(v22);
  if (v25)
  {
    v26 = 0;
    v27 = 0;
    *(v3 + 296) = 0;
    *(v3 + 304) = 0;
  }

  else
  {
    v26 = *(v0 + 56);
    v27 = &type metadata for Double;
  }

  *(v3 + 288) = v26;
  *(v3 + 312) = v27;
  OUTLINED_FUNCTION_11_7(&async function pointer to dispatch thunk of CATWrapper.executeDialog(catId:parameters:));

  v28 = swift_task_alloc();
  *(v0 + 88) = v28;
  *v28 = v0;
  v28[1] = AnnounceGroupFaceTimeInviteCATs.readGroupFaceTimeInviteAnnouncement(messagesGroupName:caller:participants:burstIndex:numberOfParticipants:numberOfParticipantsNotAnnounced:);
  v29 = *(v0 + 64);

  return v31(0xD00000000000003FLL, 0x8000000000451D50, v3);
}

{
  OUTLINED_FUNCTION_15();
  v2 = v0[9];
  v1 = v0[10];

  OUTLINED_FUNCTION_11();
  v4 = v0[12];

  return v3();
}

uint64_t AnnounceGroupFaceTimeInviteCATs.readGroupFaceTimeInviteAnnouncement(messagesGroupName:caller:participants:burstIndex:numberOfParticipants:numberOfParticipantsNotAnnounced:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  OUTLINED_FUNCTION_15();
  *(v10 + 56) = v11;
  *(v10 + 64) = v9;
  *(v10 + 106) = a9;
  *(v10 + 105) = v12;
  *(v10 + 40) = v13;
  *(v10 + 48) = v14;
  *(v10 + 104) = v15;
  *(v10 + 24) = v16;
  *(v10 + 32) = v17;
  *(v10 + 16) = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v19);
  v21 = *(v20 + 64) + 15;
  *(v10 + 72) = swift_task_alloc();
  OUTLINED_FUNCTION_66_0();
  return OUTLINED_FUNCTION_17_1(v22, v23, v24);
}

uint64_t AnnounceGroupFaceTimeInviteCATs.readGroupFaceTimeInviteAnnouncement(messagesGroupName:caller:participants:burstIndex:numberOfParticipants:numberOfParticipantsNotAnnounced:)(uint64_t a1)
{
  OUTLINED_FUNCTION_28();
  v5 = v4;
  v6 = v4[11];
  v7 = *v2;
  OUTLINED_FUNCTION_4_2();
  *v8 = v7;
  v5[12] = v1;

  if (v1)
  {
    OUTLINED_FUNCTION_66_0();

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {
    v13 = v5[9];
    v12 = v5[10];

    v14 = *(v7 + 8);

    return v14(a1);
  }
}

uint64_t AnnounceGroupFaceTimeInviteCATs.readGroupFaceTimeInviteAnnouncement(messagesGroupName:caller:participants:burstIndex:numberOfParticipants:numberOfParticipantsNotAnnounced:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, int a4@<W4>, uint64_t a5@<X5>, int a6@<W6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v39 = a8;
  v36 = a7;
  v37 = a4;
  v38 = a6;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v13 = OUTLINED_FUNCTION_21(v12);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v36 - v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v18 = OUTLINED_FUNCTION_19_16();
  *(v18 + 16) = xmmword_427BC0;
  OUTLINED_FUNCTION_27_2();
  *(v19 + 32) = 0xD000000000000011;
  *(v19 + 40) = v20;
  outlined init with copy of SpeakableString?(a1, v17, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v21 = type metadata accessor for SpeakableString();
  if (__swift_getEnumTagSinglePayload(v17, 1, v21) == 1)
  {
    outlined destroy of SpeakableString?(v17, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v18 + 48) = 0u;
    *(v18 + 64) = 0u;
  }

  else
  {
    *(v18 + 72) = v21;
    __swift_allocate_boxed_opaque_existential_1((v18 + 48));
    OUTLINED_FUNCTION_40(v21);
    (*(v22 + 32))();
  }

  OUTLINED_FUNCTION_2_19();
  *(v18 + 80) = v23;
  *(v18 + 88) = v24;
  if (a2)
  {
    v25 = type metadata accessor for PhonePerson(0);
    v26 = a2;
  }

  else
  {
    v25 = OUTLINED_FUNCTION_7_7();
  }

  OUTLINED_FUNCTION_0_20(v25, v26);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay27PhoneCallFlowDelegatePlugin0A6PersonCGMd, &_sSay27PhoneCallFlowDelegatePlugin0A6PersonCGMR);
  OUTLINED_FUNCTION_1_26(v27);
  if (v37)
  {
    a3 = 0;
    *(v18 + 200) = 0;
    *(v18 + 208) = 0;
  }

  *(v18 + 192) = a3;
  OUTLINED_FUNCTION_13_10();
  *(v18 + 216) = v28;
  *(v18 + 224) = 0xD000000000000014;
  *(v18 + 232) = v29;
  if (v38)
  {
    a5 = 0;
    *(v18 + 248) = 0;
    *(v18 + 256) = 0;
  }

  *(v18 + 240) = a5;
  OUTLINED_FUNCTION_13_10();
  *(v18 + 264) = v30;
  *(v18 + 272) = 0xD000000000000020;
  *(v18 + 280) = v31;
  if (v32)
  {
    OUTLINED_FUNCTION_5_15();
    *(v18 + 296) = 0;
    *(v18 + 304) = 0;
  }

  else
  {
    v33 = &type metadata for Double;
    v34 = v36;
  }

  *(v18 + 288) = v34;
  *(v18 + 312) = v33;

  dispatch thunk of CATWrapper.execute(catId:parameters:)();
}

uint64_t AnnounceGroupFaceTimeInviteCATs.__allocating_init(templateDir:options:globals:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  return AnnounceGroupFaceTimeInviteCATs.init(templateDir:options:globals:)(a1, a2);
}

uint64_t AnnounceGroupFaceTimeInviteCATs.init(templateDir:options:globals:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CATOption();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v10 = OUTLINED_FUNCTION_21(v9);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  outlined init with copy of SpeakableString?(a1, &v16 - v13, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  (*(v5 + 16))(v8, a2, v4);
  v14 = CATWrapper.init(templateDir:options:globals:)();
  (*(v5 + 8))(a2, v4);
  outlined destroy of SpeakableString?(a1, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  return v14;
}

unint64_t lazy protocol witness table accessor for type AnnounceGroupFaceTimeInviteCATs.Properties and conformance AnnounceGroupFaceTimeInviteCATs.Properties()
{
  result = lazy protocol witness table cache variable for type AnnounceGroupFaceTimeInviteCATs.Properties and conformance AnnounceGroupFaceTimeInviteCATs.Properties;
  if (!lazy protocol witness table cache variable for type AnnounceGroupFaceTimeInviteCATs.Properties and conformance AnnounceGroupFaceTimeInviteCATs.Properties)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnnounceGroupFaceTimeInviteCATs.Properties and conformance AnnounceGroupFaceTimeInviteCATs.Properties);
  }

  return result;
}

uint64_t type metadata accessor for AnnounceGroupFaceTimeInviteCATs()
{
  result = type metadata singleton initialization cache for AnnounceGroupFaceTimeInviteCATs;
  if (!type metadata singleton initialization cache for AnnounceGroupFaceTimeInviteCATs)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AnnounceGroupFaceTimeInviteCATs.Properties(_BYTE *result, unsigned int a2, unsigned int a3)
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

PhoneCallFlowDelegatePlugin::AnnounceGroupFaceTimeInviteCATsSimple::Properties_optional protocol witness for RawRepresentable.init(rawValue:) in conformance AnnounceGroupFaceTimeInviteCATsSimple.Properties@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::AnnounceGroupFaceTimeInviteCATsSimple::Properties_optional *a2@<X8>)
{
  result.value = AnnounceGroupFaceTimeInviteCATsSimple.Properties.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t AnnounceGroupFaceTimeInviteCATsSimple.offerFollowUpIntent()()
{
  OUTLINED_FUNCTION_27();
  v1 = *(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + 1);
  v4 = &async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:);
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  *v2 = v0;
  v2[1] = AddCallParticipantCATPatternsExecutor.unsupportedNoActiveCall();

  return (v4)(0xD00000000000002FLL, 0x8000000000451D20, _swiftEmptyArrayStorage);
}

PhoneCallFlowDelegatePlugin::AnnounceGroupFaceTimeInviteCATsSimple::OfferFollowUpIntentDialogIds_optional protocol witness for RawRepresentable.init(rawValue:) in conformance AnnounceGroupFaceTimeInviteCATsSimple.OfferFollowUpIntentDialogIds@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::AnnounceGroupFaceTimeInviteCATsSimple::OfferFollowUpIntentDialogIds_optional *a2@<X8>)
{
  result.value = AnnounceGroupFaceTimeInviteCATsSimple.OfferFollowUpIntentDialogIds.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance AnnounceGroupFaceTimeInviteCATsSimple.OfferFollowUpIntentDialogIds@<X0>(uint64_t *a1@<X8>)
{
  result = AnnounceGroupFaceTimeInviteCATsSimple.OfferFollowUpIntentDialogIds.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = 0xE700000000000000;
  return result;
}

uint64_t AnnounceGroupFaceTimeInviteCATsSimple.offerFollowUpIntentAsLabels()()
{
  OUTLINED_FUNCTION_27();
  v1 = *(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:) + 1);
  v5 = &async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:) + async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:);
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  v3 = lazy protocol witness table accessor for type AnnounceGroupFaceTimeInviteCATsSimple.OfferFollowUpIntentDialogIds and conformance AnnounceGroupFaceTimeInviteCATsSimple.OfferFollowUpIntentDialogIds();
  *v2 = v0;
  v2[1] = AddCallParticipantCATPatternsExecutor.unsupportedParticipantsMultipleContactsUnsupported();

  return (v5)(0xD00000000000002FLL, 0x8000000000451D20, _swiftEmptyArrayStorage, &type metadata for AnnounceGroupFaceTimeInviteCATsSimple.OfferFollowUpIntentDialogIds, v3);
}

unint64_t lazy protocol witness table accessor for type AnnounceGroupFaceTimeInviteCATsSimple.OfferFollowUpIntentDialogIds and conformance AnnounceGroupFaceTimeInviteCATsSimple.OfferFollowUpIntentDialogIds()
{
  result = lazy protocol witness table cache variable for type AnnounceGroupFaceTimeInviteCATsSimple.OfferFollowUpIntentDialogIds and conformance AnnounceGroupFaceTimeInviteCATsSimple.OfferFollowUpIntentDialogIds;
  if (!lazy protocol witness table cache variable for type AnnounceGroupFaceTimeInviteCATsSimple.OfferFollowUpIntentDialogIds and conformance AnnounceGroupFaceTimeInviteCATsSimple.OfferFollowUpIntentDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnnounceGroupFaceTimeInviteCATsSimple.OfferFollowUpIntentDialogIds and conformance AnnounceGroupFaceTimeInviteCATsSimple.OfferFollowUpIntentDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnnounceGroupFaceTimeInviteCATsSimple.OfferFollowUpIntentDialogIds and conformance AnnounceGroupFaceTimeInviteCATsSimple.OfferFollowUpIntentDialogIds;
  if (!lazy protocol witness table cache variable for type AnnounceGroupFaceTimeInviteCATsSimple.OfferFollowUpIntentDialogIds and conformance AnnounceGroupFaceTimeInviteCATsSimple.OfferFollowUpIntentDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnnounceGroupFaceTimeInviteCATsSimple.OfferFollowUpIntentDialogIds and conformance AnnounceGroupFaceTimeInviteCATsSimple.OfferFollowUpIntentDialogIds);
  }

  return result;
}

uint64_t AnnounceGroupFaceTimeInviteCATsSimple.readGroupFaceTimeInviteAnnouncement(messagesGroupName:caller:participants:burstIndex:numberOfParticipants:numberOfParticipantsNotAnnounced:)()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_3_8(v1, v2, v3, v4, v5, v6, v7, v8);
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR) - 8) + 64) + 15;
  *(v0 + 72) = swift_task_alloc();
  OUTLINED_FUNCTION_66_0();
  return OUTLINED_FUNCTION_17_1(v10, v11, v12);
}

{
  OUTLINED_FUNCTION_15_14();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v5 = swift_allocObject();
  *(v3 + 80) = v5;
  *(v5 + 16) = xmmword_427BC0;
  *(v5 + 32) = v4;
  *(v5 + 40) = 0x8000000000457900;
  outlined init with copy of SpeakableString?(v0, v2, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v6 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_20_12(v6);
  if (v7)
  {
    outlined destroy of SpeakableString?(v2, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v5 + 48) = 0u;
    *(v5 + 64) = 0u;
  }

  else
  {
    *(v5 + 72) = v0;
    __swift_allocate_boxed_opaque_existential_1((v5 + 48));
    OUTLINED_FUNCTION_40(v0);
    (*(v8 + 32))();
  }

  OUTLINED_FUNCTION_4_11();
  if (v0)
  {
    v9 = type metadata accessor for PhonePerson(0);
    v10 = v0;
  }

  else
  {
    v10 = 0;
    v9 = 0;
    *(v5 + 104) = 0;
    *(v5 + 112) = 0;
  }

  OUTLINED_FUNCTION_1_27(v9, v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay27PhoneCallFlowDelegatePlugin0A6PersonCGMd, &_sSay27PhoneCallFlowDelegatePlugin0A6PersonCGMR);
  OUTLINED_FUNCTION_1_26(v11);
  if (v1)
  {
    OUTLINED_FUNCTION_5_15();
    *(v5 + 200) = 0;
    *(v5 + 208) = 0;
  }

  else
  {
    v13 = *(v3 + 40);
    v12 = &type metadata for Double;
  }

  v14 = *(v3 + 105);
  *(v5 + 192) = v13;
  OUTLINED_FUNCTION_10_8(v12);
  if (v15)
  {
    OUTLINED_FUNCTION_5_15();
    *(v5 + 248) = 0;
    *(v5 + 256) = 0;
  }

  else
  {
    v17 = *(v3 + 48);
    v16 = &type metadata for Double;
  }

  v18 = *(v3 + 106);
  *(v5 + 240) = v17;
  OUTLINED_FUNCTION_9_12(v16);
  if (v19)
  {
    v20 = 0;
    v21 = 0;
    *(v5 + 296) = 0;
    *(v5 + 304) = 0;
  }

  else
  {
    v20 = *(v3 + 56);
    v21 = &type metadata for Double;
  }

  *(v5 + 288) = v20;
  *(v5 + 312) = v21;
  OUTLINED_FUNCTION_11_7(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));

  v22 = swift_task_alloc();
  *(v3 + 88) = v22;
  *v22 = v3;
  v22[1] = AnnounceGroupFaceTimeInviteCATsSimple.readGroupFaceTimeInviteAnnouncement(messagesGroupName:caller:participants:burstIndex:numberOfParticipants:numberOfParticipantsNotAnnounced:);
  v23 = *(v3 + 64);

  return v25(v4 + 46, 0x8000000000451D50, v5);
}

{
  OUTLINED_FUNCTION_27();
  v3 = *(*v1 + 88);
  v2 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v4 = v2;
  v2[12] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_66_0();

    return _swift_task_switch(v5, v6, v7);
  }

  else
  {
    v9 = v2[9];
    v8 = v2[10];

    v10 = OUTLINED_FUNCTION_49();

    return v11(v10);
  }
}

{
  OUTLINED_FUNCTION_15();
  v2 = v0[9];
  v1 = v0[10];

  v3 = v0[1];
  v4 = v0[12];

  return v3();
}

PhoneCallFlowDelegatePlugin::AnnounceGroupFaceTimeInviteCATsSimple::ReadGroupFaceTimeInviteAnnouncementDialogIds_optional __swiftcall AnnounceGroupFaceTimeInviteCATsSimple.ReadGroupFaceTimeInviteAnnouncementDialogIds.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of AnnounceGroupFaceTimeInviteCATsSimple.ReadGroupFaceTimeInviteAnnouncementDialogIds.init(rawValue:), v2);

  if (v3 >= 0xC)
  {
    return 12;
  }

  else
  {
    return v3;
  }
}

unint64_t AnnounceGroupFaceTimeInviteCATsSimple.ReadGroupFaceTimeInviteAnnouncementDialogIds.rawValue.getter(char a1)
{
  result = 0xD000000000000015;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000030;
      break;
    case 2:
      result = 0xD000000000000031;
      break;
    case 3:
      result = 0xD00000000000003BLL;
      break;
    case 4:
    case 8:
      result = 0xD000000000000033;
      break;
    case 5:
      result = 0xD000000000000020;
      break;
    case 6:
      result = 0xD000000000000017;
      break;
    case 7:
      result = 0xD000000000000032;
      break;
    case 9:
      result = 0xD00000000000003DLL;
      break;
    case 10:
      result = 0xD000000000000035;
      break;
    case 11:
      result = 0xD000000000000022;
      break;
    default:
      return result;
  }

  return result;
}

PhoneCallFlowDelegatePlugin::AnnounceGroupFaceTimeInviteCATsSimple::ReadGroupFaceTimeInviteAnnouncementDialogIds_optional protocol witness for RawRepresentable.init(rawValue:) in conformance AnnounceGroupFaceTimeInviteCATsSimple.ReadGroupFaceTimeInviteAnnouncementDialogIds@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::AnnounceGroupFaceTimeInviteCATsSimple::ReadGroupFaceTimeInviteAnnouncementDialogIds_optional *a2@<X8>)
{
  result.value = AnnounceGroupFaceTimeInviteCATsSimple.ReadGroupFaceTimeInviteAnnouncementDialogIds.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance AnnounceGroupFaceTimeInviteCATsSimple.ReadGroupFaceTimeInviteAnnouncementDialogIds@<X0>(unint64_t *a1@<X8>)
{
  result = AnnounceGroupFaceTimeInviteCATsSimple.ReadGroupFaceTimeInviteAnnouncementDialogIds.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t AnnounceGroupFaceTimeInviteCATsSimple.readGroupFaceTimeInviteAnnouncementAsLabels(messagesGroupName:caller:participants:burstIndex:numberOfParticipants:numberOfParticipantsNotAnnounced:)()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_3_8(v1, v2, v3, v4, v5, v6, v7, v8);
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR) - 8) + 64) + 15;
  *(v0 + 72) = swift_task_alloc();
  OUTLINED_FUNCTION_66_0();
  return OUTLINED_FUNCTION_17_1(v10, v11, v12);
}

{
  OUTLINED_FUNCTION_15_14();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v5 = swift_allocObject();
  *(v3 + 80) = v5;
  *(v5 + 16) = xmmword_427BC0;
  *(v5 + 32) = v4;
  *(v5 + 40) = 0x8000000000457900;
  outlined init with copy of SpeakableString?(v0, v2, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v6 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_20_12(v6);
  if (v7)
  {
    outlined destroy of SpeakableString?(v2, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v5 + 48) = 0u;
    *(v5 + 64) = 0u;
  }

  else
  {
    *(v5 + 72) = v0;
    __swift_allocate_boxed_opaque_existential_1((v5 + 48));
    OUTLINED_FUNCTION_40(v0);
    (*(v8 + 32))();
  }

  OUTLINED_FUNCTION_4_11();
  if (v0)
  {
    v9 = type metadata accessor for PhonePerson(0);
    v10 = v0;
  }

  else
  {
    v10 = 0;
    v9 = 0;
    *(v5 + 104) = 0;
    *(v5 + 112) = 0;
  }

  OUTLINED_FUNCTION_1_27(v9, v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay27PhoneCallFlowDelegatePlugin0A6PersonCGMd, &_sSay27PhoneCallFlowDelegatePlugin0A6PersonCGMR);
  OUTLINED_FUNCTION_1_26(v11);
  if (v1)
  {
    OUTLINED_FUNCTION_5_15();
    *(v5 + 200) = 0;
    *(v5 + 208) = 0;
  }

  else
  {
    v13 = *(v3 + 40);
    v12 = &type metadata for Double;
  }

  v14 = *(v3 + 105);
  *(v5 + 192) = v13;
  OUTLINED_FUNCTION_10_8(v12);
  if (v15)
  {
    OUTLINED_FUNCTION_5_15();
    *(v5 + 248) = 0;
    *(v5 + 256) = 0;
  }

  else
  {
    v17 = *(v3 + 48);
    v16 = &type metadata for Double;
  }

  v18 = *(v3 + 106);
  *(v5 + 240) = v17;
  OUTLINED_FUNCTION_9_12(v16);
  if (v19)
  {
    v20 = 0;
    v21 = 0;
    *(v5 + 296) = 0;
    *(v5 + 304) = 0;
  }

  else
  {
    v20 = *(v3 + 56);
    v21 = &type metadata for Double;
  }

  *(v5 + 288) = v20;
  *(v5 + 312) = v21;
  OUTLINED_FUNCTION_11_7(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));

  v22 = swift_task_alloc();
  *(v3 + 88) = v22;
  GroupFaceTimeInviteAnnouncementDialogIds = lazy protocol witness table accessor for type AnnounceGroupFaceTimeInviteCATsSimple.ReadGroupFaceTimeInviteAnnouncementDialogIds and conformance AnnounceGroupFaceTimeInviteCATsSimple.ReadGroupFaceTimeInviteAnnouncementDialogIds();
  *v22 = v3;
  v22[1] = AnnounceGroupFaceTimeInviteCATsSimple.readGroupFaceTimeInviteAnnouncementAsLabels(messagesGroupName:caller:participants:burstIndex:numberOfParticipants:numberOfParticipantsNotAnnounced:);
  v24 = *(v3 + 64);

  return v26(v4 + 46, 0x8000000000451D50, v5, &type metadata for AnnounceGroupFaceTimeInviteCATsSimple.ReadGroupFaceTimeInviteAnnouncementDialogIds, GroupFaceTimeInviteAnnouncementDialogIds);
}

{
  OUTLINED_FUNCTION_27();
  v3 = *(*v1 + 88);
  v2 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v4 = v2;
  v2[12] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_66_0();

    return _swift_task_switch(v5, v6, v7);
  }

  else
  {
    v9 = v2[9];
    v8 = v2[10];

    v10 = OUTLINED_FUNCTION_49();

    return v11(v10);
  }
}

unint64_t lazy protocol witness table accessor for type AnnounceGroupFaceTimeInviteCATsSimple.ReadGroupFaceTimeInviteAnnouncementDialogIds and conformance AnnounceGroupFaceTimeInviteCATsSimple.ReadGroupFaceTimeInviteAnnouncementDialogIds()
{
  result = lazy protocol witness table cache variable for type AnnounceGroupFaceTimeInviteCATsSimple.ReadGroupFaceTimeInviteAnnouncementDialogIds and conformance AnnounceGroupFaceTimeInviteCATsSimple.ReadGroupFaceTimeInviteAnnouncementDialogIds;
  if (!lazy protocol witness table cache variable for type AnnounceGroupFaceTimeInviteCATsSimple.ReadGroupFaceTimeInviteAnnouncementDialogIds and conformance AnnounceGroupFaceTimeInviteCATsSimple.ReadGroupFaceTimeInviteAnnouncementDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnnounceGroupFaceTimeInviteCATsSimple.ReadGroupFaceTimeInviteAnnouncementDialogIds and conformance AnnounceGroupFaceTimeInviteCATsSimple.ReadGroupFaceTimeInviteAnnouncementDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnnounceGroupFaceTimeInviteCATsSimple.ReadGroupFaceTimeInviteAnnouncementDialogIds and conformance AnnounceGroupFaceTimeInviteCATsSimple.ReadGroupFaceTimeInviteAnnouncementDialogIds;
  if (!lazy protocol witness table cache variable for type AnnounceGroupFaceTimeInviteCATsSimple.ReadGroupFaceTimeInviteAnnouncementDialogIds and conformance AnnounceGroupFaceTimeInviteCATsSimple.ReadGroupFaceTimeInviteAnnouncementDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnnounceGroupFaceTimeInviteCATsSimple.ReadGroupFaceTimeInviteAnnouncementDialogIds and conformance AnnounceGroupFaceTimeInviteCATsSimple.ReadGroupFaceTimeInviteAnnouncementDialogIds);
  }

  return result;
}

uint64_t AnnounceGroupFaceTimeInviteCATsSimple.__allocating_init(templateDir:options:globals:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  return AnnounceGroupFaceTimeInviteCATsSimple.init(templateDir:options:globals:)(a1, a2);
}

uint64_t AnnounceGroupFaceTimeInviteCATsSimple.init(templateDir:options:globals:)(uint64_t a1, uint64_t a2)
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
  outlined init with copy of SpeakableString?(a1, &v19 - v16, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  (*(v8 + 16))(v13, a2, v2);
  v17 = CATWrapperSimple.init(templateDir:options:globals:)();
  (*(v8 + 8))(a2, v2);
  outlined destroy of SpeakableString?(a1, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  return v17;
}

uint64_t AnnounceGroupFaceTimeInviteCATsSimple.__allocating_init(useResponseMode:options:)()
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

uint64_t AnnounceGroupFaceTimeInviteCATsSimple.init(useResponseMode:options:)()
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

unint64_t lazy protocol witness table accessor for type AnnounceGroupFaceTimeInviteCATsSimple.Properties and conformance AnnounceGroupFaceTimeInviteCATsSimple.Properties()
{
  result = lazy protocol witness table cache variable for type AnnounceGroupFaceTimeInviteCATsSimple.Properties and conformance AnnounceGroupFaceTimeInviteCATsSimple.Properties;
  if (!lazy protocol witness table cache variable for type AnnounceGroupFaceTimeInviteCATsSimple.Properties and conformance AnnounceGroupFaceTimeInviteCATsSimple.Properties)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnnounceGroupFaceTimeInviteCATsSimple.Properties and conformance AnnounceGroupFaceTimeInviteCATsSimple.Properties);
  }

  return result;
}

uint64_t type metadata accessor for AnnounceGroupFaceTimeInviteCATsSimple()
{
  result = type metadata singleton initialization cache for AnnounceGroupFaceTimeInviteCATsSimple;
  if (!type metadata singleton initialization cache for AnnounceGroupFaceTimeInviteCATsSimple)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AnnounceGroupFaceTimeInviteCATsSimple.Properties(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for AnnounceGroupFaceTimeInviteCATsSimple.ReadGroupFaceTimeInviteAnnouncementDialogIds(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF5)
  {
    if (a2 + 11 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 11) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 12;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v5 = v6 - 12;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for AnnounceGroupFaceTimeInviteCATsSimple.ReadGroupFaceTimeInviteAnnouncementDialogIds(_BYTE *result, unsigned int a2, unsigned int a3)
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

PhoneCallFlowDelegatePlugin::AnnounceIncomingCallCATs::Properties_optional __swiftcall AnnounceIncomingCallCATs.Properties.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of AnnounceIncomingCallCATs.Properties.init(rawValue:), v2);

  if (v3 == 1)
  {
    v4.value = PhoneCallFlowDelegatePlugin_AnnounceIncomingCallCATs_Properties_offerFollowUpIntent;
  }

  else
  {
    v4.value = PhoneCallFlowDelegatePlugin_AnnounceIncomingCallCATs_Properties_unknownDefault;
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

unint64_t AnnounceIncomingCallCATs.Properties.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0xD000000000000028;
  }

  else
  {
    return 0xD00000000000002ALL;
  }
}

PhoneCallFlowDelegatePlugin::AnnounceIncomingCallCATs::Properties_optional protocol witness for RawRepresentable.init(rawValue:) in conformance AnnounceIncomingCallCATs.Properties@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::AnnounceIncomingCallCATs::Properties_optional *a2@<X8>)
{
  result.value = AnnounceIncomingCallCATs.Properties.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance AnnounceIncomingCallCATs.Properties@<X0>(unint64_t *a1@<X8>)
{
  result = AnnounceIncomingCallCATs.Properties.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t AnnounceIncomingCallCATs.intentHandledResponse(incomingCallConcept:completion:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v2 = OUTLINED_FUNCTION_35_1();
  *(v2 + 16) = xmmword_424FD0;
  OUTLINED_FUNCTION_0_8(v2, "incomingCallConcept");
  if (a1)
  {
    v3 = type metadata accessor for PhoneIncomingCall();
    v4 = a1;
  }

  else
  {
    v4 = 0;
    v3 = 0;
    *(v2 + 56) = 0;
    *(v2 + 64) = 0;
  }

  *(v2 + 48) = v4;
  *(v2 + 72) = v3;

  dispatch thunk of CATWrapper.execute(catId:parameters:completion:)();
}

uint64_t AnnounceIncomingCallCATs.intentHandledResponse(incomingCallConcept:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t AnnounceIncomingCallCATs.intentHandledResponse(incomingCallConcept:)()
{
  v1 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v2 = OUTLINED_FUNCTION_35_1();
  v0[5] = v2;
  *(v2 + 16) = xmmword_424FD0;
  OUTLINED_FUNCTION_0_8(v2, "incomingCallConcept");
  v3 = 0;
  if (v1)
  {
    v3 = type metadata accessor for PhoneIncomingCall();
  }

  else
  {
    *(v2 + 56) = 0;
    *(v2 + 64) = 0;
  }

  *(v2 + 48) = v1;
  *(v2 + 72) = v3;
  OUTLINED_FUNCTION_9_13(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[6] = v4;
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_10_14(v4);

  return v8(v6);
}

{
  v1 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v2 = OUTLINED_FUNCTION_35_1();
  v0[4] = v2;
  *(v2 + 16) = xmmword_424FD0;
  OUTLINED_FUNCTION_0_8(v2, "incomingCallConcept");
  v3 = 0;
  if (v1)
  {
    v3 = type metadata accessor for PhoneIncomingCall();
  }

  else
  {
    *(v2 + 56) = 0;
    *(v2 + 64) = 0;
  }

  *(v2 + 48) = v1;
  *(v2 + 72) = v3;
  OUTLINED_FUNCTION_9_13(&async function pointer to dispatch thunk of CATWrapper.executeDialog(catId:parameters:));
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[5] = v4;
  *v4 = v5;
  v4[1] = AnnounceIncomingCallCATs.intentHandledResponse(incomingCallConcept:);
  v6 = v0[3];

  return v8(0xD00000000000002ALL, 0x8000000000452030, v2);
}

uint64_t AnnounceIncomingCallCATs.intentHandledResponse(incomingCallConcept:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_0();
}

{
  OUTLINED_FUNCTION_28();
  v5 = v4;
  OUTLINED_FUNCTION_6();
  *v6 = v5;
  v8 = *(v7 + 40);
  v9 = *v2;
  OUTLINED_FUNCTION_4_2();
  *v10 = v9;
  *(v5 + 48) = v1;

  if (v1)
  {
    OUTLINED_FUNCTION_66_0();

    return _swift_task_switch(v11, v12, v13);
  }

  else
  {
    v14 = *(v5 + 32);

    v15 = *(v9 + 8);

    return v15(a1);
  }
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v2 = OUTLINED_FUNCTION_35_1();
  *(v2 + 16) = xmmword_424FD0;
  *(v2 + 32) = 0xD000000000000013;
  *(v2 + 40) = 0x8000000000457A70;
  if (a1)
  {
    v3 = type metadata accessor for PhoneIncomingCall();
    v4 = a1;
  }

  else
  {
    v4 = 0;
    v3 = 0;
    *(v2 + 56) = 0;
    *(v2 + 64) = 0;
  }

  *(v2 + 48) = v4;
  *(v2 + 72) = v3;

  dispatch thunk of CATWrapper.execute(catId:parameters:)();
}

uint64_t AnnounceIncomingCallCATs.offerFollowUpIntent(followUpOfferType:completion:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v3 = OUTLINED_FUNCTION_21(v2);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v12 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v8 = OUTLINED_FUNCTION_35_1();
  *(v8 + 16) = xmmword_424FD0;
  *(v8 + 32) = 0xD000000000000011;
  *(v8 + 40) = 0x8000000000457A90;
  outlined init with copy of SpeakableString?(a1, v7, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v9 = type metadata accessor for SpeakableString();
  if (__swift_getEnumTagSinglePayload(v7, 1, v9) == 1)
  {
    outlined destroy of SpeakableString?(v7, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v8 + 48) = 0u;
    *(v8 + 64) = 0u;
  }

  else
  {
    *(v8 + 72) = v9;
    __swift_allocate_boxed_opaque_existential_1((v8 + 48));
    OUTLINED_FUNCTION_40(v9);
    (*(v10 + 32))();
  }

  dispatch thunk of CATWrapper.execute(catId:parameters:completion:)();
}

uint64_t AnnounceIncomingCallCATs.offerFollowUpIntent(followUpOfferType:)()
{
  OUTLINED_FUNCTION_15();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v4);
  v6 = *(v5 + 64) + 15;
  v1[5] = swift_task_alloc();
  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v7, v8, v9);
}

{
  v1 = v0[5];
  v2 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_35_1();
  v0[6] = v3;
  *(v3 + 16) = xmmword_424FD0;
  OUTLINED_FUNCTION_0_8(v3, "followUpOfferType");
  outlined init with copy of SpeakableString?(v2, v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v4 = type metadata accessor for SpeakableString();
  v5 = OUTLINED_FUNCTION_58(v4);
  v6 = v0[5];
  if (v5 == 1)
  {
    outlined destroy of SpeakableString?(v0[5], &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v3 + 48) = 0u;
    *(v3 + 64) = 0u;
  }

  else
  {
    *(v3 + 72) = v2;
    __swift_allocate_boxed_opaque_existential_1((v3 + 48));
    OUTLINED_FUNCTION_40(v2);
    (*(v7 + 32))();
  }

  OUTLINED_FUNCTION_12_0(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  OUTLINED_FUNCTION_25();
  v0[7] = v8;
  *v8 = v9;
  v10 = OUTLINED_FUNCTION_10_14(v8);

  return v12(v10);
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

    OUTLINED_FUNCTION_11();

    return v14();
  }
}

{
  OUTLINED_FUNCTION_15();
  v1[2] = v2;
  v1[3] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v3);
  v5 = *(v4 + 64) + 15;
  v1[4] = swift_task_alloc();
  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v6, v7, v8);
}

{
  v1 = v0[4];
  v2 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_35_1();
  v0[5] = v3;
  *(v3 + 16) = xmmword_424FD0;
  OUTLINED_FUNCTION_0_8(v3, "followUpOfferType");
  outlined init with copy of SpeakableString?(v2, v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v4 = type metadata accessor for SpeakableString();
  v5 = OUTLINED_FUNCTION_58(v4);
  v6 = v0[4];
  if (v5 == 1)
  {
    outlined destroy of SpeakableString?(v0[4], &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v3 + 48) = 0u;
    *(v3 + 64) = 0u;
  }

  else
  {
    *(v3 + 72) = v2;
    __swift_allocate_boxed_opaque_existential_1((v3 + 48));
    OUTLINED_FUNCTION_40(v2);
    (*(v7 + 32))();
  }

  OUTLINED_FUNCTION_12_0(&async function pointer to dispatch thunk of CATWrapper.executeDialog(catId:parameters:));
  OUTLINED_FUNCTION_25();
  v0[6] = v8;
  *v8 = v9;
  v8[1] = AnnounceIncomingCallCATs.offerFollowUpIntent(followUpOfferType:);
  v10 = v0[3];

  return v12(0xD000000000000028, 0x8000000000452060, v3);
}

{
  OUTLINED_FUNCTION_15();
  v2 = v0[4];
  v1 = v0[5];

  OUTLINED_FUNCTION_11();
  v4 = v0[7];

  return v3();
}

uint64_t AnnounceIncomingCallCATs.offerFollowUpIntent(followUpOfferType:)(uint64_t a1)
{
  OUTLINED_FUNCTION_28();
  v5 = v4;
  OUTLINED_FUNCTION_6();
  *v6 = v5;
  v8 = *(v7 + 48);
  v9 = *v2;
  OUTLINED_FUNCTION_4_2();
  *v10 = v9;
  v5[7] = v1;

  if (v1)
  {
    OUTLINED_FUNCTION_66_0();

    return _swift_task_switch(v11, v12, v13);
  }

  else
  {
    v15 = v5[4];
    v14 = v5[5];

    v16 = *(v9 + 8);

    return v16(a1);
  }
}

{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v3 = OUTLINED_FUNCTION_21(v2);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v12 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v8 = OUTLINED_FUNCTION_35_1();
  *(v8 + 16) = xmmword_424FD0;
  *(v8 + 32) = 0xD000000000000011;
  *(v8 + 40) = 0x8000000000457A90;
  outlined init with copy of SpeakableString?(a1, v7, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v9 = type metadata accessor for SpeakableString();
  if (__swift_getEnumTagSinglePayload(v7, 1, v9) == 1)
  {
    outlined destroy of SpeakableString?(v7, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v8 + 48) = 0u;
    *(v8 + 64) = 0u;
  }

  else
  {
    *(v8 + 72) = v9;
    __swift_allocate_boxed_opaque_existential_1((v8 + 48));
    OUTLINED_FUNCTION_40(v9);
    (*(v10 + 32))();
  }

  dispatch thunk of CATWrapper.execute(catId:parameters:)();
}

uint64_t AnnounceIncomingCallCATs.__allocating_init(templateDir:options:globals:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  return AnnounceIncomingCallCATs.init(templateDir:options:globals:)(a1, a2);
}

uint64_t AnnounceIncomingCallCATs.init(templateDir:options:globals:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CATOption();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v10 = OUTLINED_FUNCTION_21(v9);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  outlined init with copy of SpeakableString?(a1, &v16 - v13, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  (*(v5 + 16))(v8, a2, v4);
  v14 = CATWrapper.init(templateDir:options:globals:)();
  (*(v5 + 8))(a2, v4);
  outlined destroy of SpeakableString?(a1, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  return v14;
}

unint64_t lazy protocol witness table accessor for type AnnounceIncomingCallCATs.Properties and conformance AnnounceIncomingCallCATs.Properties()
{
  result = lazy protocol witness table cache variable for type AnnounceIncomingCallCATs.Properties and conformance AnnounceIncomingCallCATs.Properties;
  if (!lazy protocol witness table cache variable for type AnnounceIncomingCallCATs.Properties and conformance AnnounceIncomingCallCATs.Properties)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnnounceIncomingCallCATs.Properties and conformance AnnounceIncomingCallCATs.Properties);
  }

  return result;
}

uint64_t type metadata accessor for AnnounceIncomingCallCATs()
{
  result = type metadata singleton initialization cache for AnnounceIncomingCallCATs;
  if (!type metadata singleton initialization cache for AnnounceIncomingCallCATs)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AnnounceIncomingCallCATs.Properties(_BYTE *result, unsigned int a2, unsigned int a3)
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

PhoneCallFlowDelegatePlugin::AnnounceIncomingCallCATsSimple::Properties_optional __swiftcall AnnounceIncomingCallCATsSimple.Properties.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of AnnounceIncomingCallCATsSimple.Properties.init(rawValue:), v2);

  if (v3 == 1)
  {
    v4.value = PhoneCallFlowDelegatePlugin_AnnounceIncomingCallCATsSimple_Properties_offerFollowUpIntent;
  }

  else
  {
    v4.value = PhoneCallFlowDelegatePlugin_AnnounceIncomingCallCATsSimple_Properties_unknownDefault;
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

PhoneCallFlowDelegatePlugin::AnnounceIncomingCallCATsSimple::Properties_optional protocol witness for RawRepresentable.init(rawValue:) in conformance AnnounceIncomingCallCATsSimple.Properties@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::AnnounceIncomingCallCATsSimple::Properties_optional *a2@<X8>)
{
  result.value = AnnounceIncomingCallCATsSimple.Properties.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t AnnounceIncomingCallCATsSimple.intentHandledResponse(incomingCallConcept:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t AnnounceIncomingCallCATsSimple.intentHandledResponse(incomingCallConcept:)()
{
  v1 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v2 = OUTLINED_FUNCTION_35_1();
  v0[4] = v2;
  *(v2 + 16) = xmmword_424FD0;
  OUTLINED_FUNCTION_0_8(v2, "incomingCallConcept");
  v3 = 0;
  if (v1)
  {
    v3 = type metadata accessor for PhoneIncomingCall();
  }

  else
  {
    *(v2 + 56) = 0;
    *(v2 + 64) = 0;
  }

  *(v2 + 48) = v1;
  *(v2 + 72) = v3;
  OUTLINED_FUNCTION_9_13(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = AnnounceIncomingCallCATsSimple.intentHandledResponse(incomingCallConcept:);
  v5 = v0[3];

  return v7(0xD00000000000002ALL, 0x8000000000452030, v2);
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_4();
  v3 = v2;
  OUTLINED_FUNCTION_13_1();
  *v4 = v3;
  v6 = *(v5 + 40);
  v7 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v8 = v7;
  *(v3 + 48) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_66_0();

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {
    v12 = *(v3 + 32);

    v13 = OUTLINED_FUNCTION_5_2();

    return v14(v13);
  }
}

{
  OUTLINED_FUNCTION_15();
  v1 = v0[4];

  v2 = v0[1];
  v3 = v0[6];

  return v2();
}

PhoneCallFlowDelegatePlugin::AnnounceIncomingCallCATsSimple::IntentHandledResponseDialogIds_optional __swiftcall AnnounceIncomingCallCATsSimple.IntentHandledResponseDialogIds.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of AnnounceIncomingCallCATsSimple.IntentHandledResponseDialogIds.init(rawValue:), v2);

  if (v3 >= 7)
  {
    return 7;
  }

  else
  {
    return v3;
  }
}

uint64_t AnnounceIncomingCallCATsSimple.IntentHandledResponseDialogIds.rawValue.getter(char a1)
{
  result = 0x656D695465636146;
  switch(a1)
  {
    case 2:
      result = 0x636972656E6547;
      break;
    case 3:
      result = 0x656E6F6850;
      break;
    case 4:
    case 5:
    case 6:
      result = 0x7261506472696854;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance AnnounceIncomingCallCATsSimple.IntentHandledResponseDialogIds(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *a1;
  return specialized == infix<A>(_:_:)();
}

PhoneCallFlowDelegatePlugin::AnnounceIncomingCallCATsSimple::IntentHandledResponseDialogIds_optional protocol witness for RawRepresentable.init(rawValue:) in conformance AnnounceIncomingCallCATsSimple.IntentHandledResponseDialogIds@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::AnnounceIncomingCallCATsSimple::IntentHandledResponseDialogIds_optional *a2@<X8>)
{
  result.value = AnnounceIncomingCallCATsSimple.IntentHandledResponseDialogIds.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance AnnounceIncomingCallCATsSimple.IntentHandledResponseDialogIds@<X0>(uint64_t *a1@<X8>)
{
  result = AnnounceIncomingCallCATsSimple.IntentHandledResponseDialogIds.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t AnnounceIncomingCallCATsSimple.intentHandledResponseAsLabels(incomingCallConcept:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t AnnounceIncomingCallCATsSimple.intentHandledResponseAsLabels(incomingCallConcept:)()
{
  v1 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v2 = OUTLINED_FUNCTION_35_1();
  v0[4] = v2;
  *(v2 + 16) = xmmword_424FD0;
  OUTLINED_FUNCTION_0_8(v2, "incomingCallConcept");
  v3 = 0;
  if (v1)
  {
    v3 = type metadata accessor for PhoneIncomingCall();
  }

  else
  {
    *(v2 + 56) = 0;
    *(v2 + 64) = 0;
  }

  *(v2 + 48) = v1;
  *(v2 + 72) = v3;
  OUTLINED_FUNCTION_9_13(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  v4 = swift_task_alloc();
  v0[5] = v4;
  v5 = lazy protocol witness table accessor for type AnnounceIncomingCallCATsSimple.IntentHandledResponseDialogIds and conformance AnnounceIncomingCallCATsSimple.IntentHandledResponseDialogIds();
  *v4 = v0;
  v4[1] = AnnounceIncomingCallCATsSimple.intentHandledResponseAsLabels(incomingCallConcept:);
  v6 = v0[3];

  return v8(0xD00000000000002ALL, 0x8000000000452030, v2, &type metadata for AnnounceIncomingCallCATsSimple.IntentHandledResponseDialogIds, v5);
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_4();
  v3 = v2;
  OUTLINED_FUNCTION_13_1();
  *v4 = v3;
  v6 = *(v5 + 40);
  v7 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v8 = v7;
  *(v3 + 48) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_66_0();

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {
    v12 = *(v3 + 32);

    v13 = OUTLINED_FUNCTION_5_2();

    return v14(v13);
  }
}

unint64_t lazy protocol witness table accessor for type AnnounceIncomingCallCATsSimple.IntentHandledResponseDialogIds and conformance AnnounceIncomingCallCATsSimple.IntentHandledResponseDialogIds()
{
  result = lazy protocol witness table cache variable for type AnnounceIncomingCallCATsSimple.IntentHandledResponseDialogIds and conformance AnnounceIncomingCallCATsSimple.IntentHandledResponseDialogIds;
  if (!lazy protocol witness table cache variable for type AnnounceIncomingCallCATsSimple.IntentHandledResponseDialogIds and conformance AnnounceIncomingCallCATsSimple.IntentHandledResponseDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnnounceIncomingCallCATsSimple.IntentHandledResponseDialogIds and conformance AnnounceIncomingCallCATsSimple.IntentHandledResponseDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnnounceIncomingCallCATsSimple.IntentHandledResponseDialogIds and conformance AnnounceIncomingCallCATsSimple.IntentHandledResponseDialogIds;
  if (!lazy protocol witness table cache variable for type AnnounceIncomingCallCATsSimple.IntentHandledResponseDialogIds and conformance AnnounceIncomingCallCATsSimple.IntentHandledResponseDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnnounceIncomingCallCATsSimple.IntentHandledResponseDialogIds and conformance AnnounceIncomingCallCATsSimple.IntentHandledResponseDialogIds);
  }

  return result;
}

uint64_t AnnounceIncomingCallCATsSimple.offerFollowUpIntent(followUpOfferType:)()
{
  OUTLINED_FUNCTION_15();
  v1[2] = v2;
  v1[3] = v0;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR) - 8) + 64) + 15;
  v1[4] = swift_task_alloc();
  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v4, v5, v6);
}

{
  OUTLINED_FUNCTION_17_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v4 = OUTLINED_FUNCTION_35_1();
  v2[5] = v4;
  *(v4 + 16) = xmmword_424FD0;
  OUTLINED_FUNCTION_0_8(v4, "followUpOfferType");
  outlined init with copy of SpeakableString?(v0, v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v5 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_20(v5);
  if (v6)
  {
    outlined destroy of SpeakableString?(v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v4 + 48) = 0u;
    *(v4 + 64) = 0u;
  }

  else
  {
    *(v4 + 72) = v0;
    __swift_allocate_boxed_opaque_existential_1((v4 + 48));
    OUTLINED_FUNCTION_40(v0);
    (*(v7 + 32))();
  }

  v8 = OUTLINED_FUNCTION_12_0(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v2[6] = v8;
  *v8 = v2;
  v8[1] = AnnounceIncomingCallCATsSimple.offerFollowUpIntent(followUpOfferType:);
  v9 = v2[3];

  return v11(v3 + 23, 0x8000000000452060, v4);
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_4();
  v3 = v2;
  OUTLINED_FUNCTION_13_1();
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

{
  OUTLINED_FUNCTION_15();
  v2 = v0[4];
  v1 = v0[5];

  v3 = v0[1];
  v4 = v0[7];

  return v3();
}

PhoneCallFlowDelegatePlugin::AnnounceIncomingCallCATsSimple::OfferFollowUpIntentDialogIds_optional __swiftcall AnnounceIncomingCallCATsSimple.OfferFollowUpIntentDialogIds.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of AnnounceIncomingCallCATsSimple.OfferFollowUpIntentDialogIds.init(rawValue:), v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

PhoneCallFlowDelegatePlugin::AnnounceIncomingCallCATsSimple::OfferFollowUpIntentDialogIds_optional protocol witness for RawRepresentable.init(rawValue:) in conformance AnnounceIncomingCallCATsSimple.OfferFollowUpIntentDialogIds@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::AnnounceIncomingCallCATsSimple::OfferFollowUpIntentDialogIds_optional *a2@<X8>)
{
  result.value = AnnounceIncomingCallCATsSimple.OfferFollowUpIntentDialogIds.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance AnnounceIncomingCallCATsSimple.OfferFollowUpIntentDialogIds@<X0>(unint64_t *a1@<X8>)
{
  result = SearchCallHistoryCATsSimple.ReadSingleVoiceMailRecordDialogIds.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = 0xE700000000000000;
  return result;
}

uint64_t AnnounceIncomingCallCATsSimple.offerFollowUpIntentAsLabels(followUpOfferType:)()
{
  OUTLINED_FUNCTION_15();
  v1[2] = v2;
  v1[3] = v0;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR) - 8) + 64) + 15;
  v1[4] = swift_task_alloc();
  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v4, v5, v6);
}

{
  OUTLINED_FUNCTION_17_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v4 = OUTLINED_FUNCTION_35_1();
  v2[5] = v4;
  *(v4 + 16) = xmmword_424FD0;
  OUTLINED_FUNCTION_0_8(v4, "followUpOfferType");
  outlined init with copy of SpeakableString?(v0, v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v5 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_20(v5);
  if (v6)
  {
    outlined destroy of SpeakableString?(v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v4 + 48) = 0u;
    *(v4 + 64) = 0u;
  }

  else
  {
    *(v4 + 72) = v0;
    __swift_allocate_boxed_opaque_existential_1((v4 + 48));
    OUTLINED_FUNCTION_40(v0);
    (*(v7 + 32))();
  }

  v8 = OUTLINED_FUNCTION_12_0(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  v2[6] = v8;
  v9 = lazy protocol witness table accessor for type AnnounceIncomingCallCATsSimple.OfferFollowUpIntentDialogIds and conformance AnnounceIncomingCallCATsSimple.OfferFollowUpIntentDialogIds();
  *v8 = v2;
  v8[1] = AnnounceIncomingCallCATsSimple.offerFollowUpIntentAsLabels(followUpOfferType:);
  v10 = v2[3];

  return v12(v3 + 23, 0x8000000000452060, v4, &type metadata for AnnounceIncomingCallCATsSimple.OfferFollowUpIntentDialogIds, v9);
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_4();
  v3 = v2;
  OUTLINED_FUNCTION_13_1();
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

unint64_t lazy protocol witness table accessor for type AnnounceIncomingCallCATsSimple.OfferFollowUpIntentDialogIds and conformance AnnounceIncomingCallCATsSimple.OfferFollowUpIntentDialogIds()
{
  result = lazy protocol witness table cache variable for type AnnounceIncomingCallCATsSimple.OfferFollowUpIntentDialogIds and conformance AnnounceIncomingCallCATsSimple.OfferFollowUpIntentDialogIds;
  if (!lazy protocol witness table cache variable for type AnnounceIncomingCallCATsSimple.OfferFollowUpIntentDialogIds and conformance AnnounceIncomingCallCATsSimple.OfferFollowUpIntentDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnnounceIncomingCallCATsSimple.OfferFollowUpIntentDialogIds and conformance AnnounceIncomingCallCATsSimple.OfferFollowUpIntentDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnnounceIncomingCallCATsSimple.OfferFollowUpIntentDialogIds and conformance AnnounceIncomingCallCATsSimple.OfferFollowUpIntentDialogIds;
  if (!lazy protocol witness table cache variable for type AnnounceIncomingCallCATsSimple.OfferFollowUpIntentDialogIds and conformance AnnounceIncomingCallCATsSimple.OfferFollowUpIntentDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnnounceIncomingCallCATsSimple.OfferFollowUpIntentDialogIds and conformance AnnounceIncomingCallCATsSimple.OfferFollowUpIntentDialogIds);
  }

  return result;
}

uint64_t AnnounceIncomingCallCATsSimple.__allocating_init(templateDir:options:globals:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  return AnnounceIncomingCallCATsSimple.init(templateDir:options:globals:)(a1, a2);
}

uint64_t AnnounceIncomingCallCATsSimple.init(templateDir:options:globals:)(uint64_t a1, uint64_t a2)
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
  outlined init with copy of SpeakableString?(a1, &v19 - v16, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  (*(v8 + 16))(v13, a2, v2);
  v17 = CATWrapperSimple.init(templateDir:options:globals:)();
  (*(v8 + 8))(a2, v2);
  outlined destroy of SpeakableString?(a1, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  return v17;
}

uint64_t AnnounceIncomingCallCATsSimple.__allocating_init(useResponseMode:options:)()
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

uint64_t AnnounceIncomingCallCATsSimple.init(useResponseMode:options:)()
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

unint64_t lazy protocol witness table accessor for type AnnounceIncomingCallCATsSimple.Properties and conformance AnnounceIncomingCallCATsSimple.Properties()
{
  result = lazy protocol witness table cache variable for type AnnounceIncomingCallCATsSimple.Properties and conformance AnnounceIncomingCallCATsSimple.Properties;
  if (!lazy protocol witness table cache variable for type AnnounceIncomingCallCATsSimple.Properties and conformance AnnounceIncomingCallCATsSimple.Properties)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnnounceIncomingCallCATsSimple.Properties and conformance AnnounceIncomingCallCATsSimple.Properties);
  }

  return result;
}

uint64_t type metadata accessor for AnnounceIncomingCallCATsSimple()
{
  result = type metadata singleton initialization cache for AnnounceIncomingCallCATsSimple;
  if (!type metadata singleton initialization cache for AnnounceIncomingCallCATsSimple)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AnnounceIncomingCallCATsSimple.Properties(_BYTE *result, unsigned int a2, unsigned int a3)
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