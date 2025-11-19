void ReadVoicemailResultSetFlowProvider.getVoiceMailPosition(callRecordsCount:currentRecord:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = *(a2 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_unseen);
  v6 = *(v2 + 120);
  INSearchCallHistoryIntentResponse.newRecordsCount.getter();
  if (v5)
  {
    v8 = v7;
  }

  else
  {
    v8 = a1;
  }

  if (v5)
  {
    v9 = 0;
  }

  else
  {
    v9 = v7;
  }

  v10 = *(v3 + 400);
  if (v9 != v10)
  {
    if (__OFSUB__(v8, 1))
    {
      __break(1u);
    }

    else if (v8 - 1 == v10 || v8 >= v9)
    {
      return;
    }

    __break(1u);
  }
}

void *ReadVoicemailResultSetFlowProvider.getVoicemailData(voicemailIdentifier:)(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    OUTLINED_FUNCTION_1_15();
    type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INPlayVoicemailIntent, INPlayVoicemailIntent_ptr);
    v4 = static INPlayVoicemailIntent.makeFirstPartyHandleIntent(identifier:)();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    OUTLINED_FUNCTION_4_68();
    result = swift_allocObject();
    *(result + 1) = xmmword_426260;
    result[4] = v4;
  }

  else
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, static Logger.siriPhone);

    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v7, v8))
    {
      OUTLINED_FUNCTION_42();
      v10 = OUTLINED_FUNCTION_83();
      *v3 = 136315138;
      DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v2[51], v2[52], v2[53], v2[54]);
      v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0, 0xE000000000000000, &v10);

      *(v3 + 4) = v9;
      _os_log_impl(&dword_0, v7, v8, "%s received an empty voicemailIdentifier", v3, 0xCu);
      OUTLINED_FUNCTION_3_7();
      OUTLINED_FUNCTION_35();
    }

    return _swiftEmptyArrayStorage;
  }

  return result;
}

BOOL ReadVoicemailResultSetFlowProvider.isRepeatRequestAfterPlayingVoicemail()()
{
  v1 = v0[8];
  __swift_project_boxed_opaque_existential_1(v0 + 4, v0[7]);
  v2 = *(v1 + 72);
  v3 = OUTLINED_FUNCTION_40_0();
  v5 = v4(v3, v1);
  (*(*v5 + 152))(v8);

  if (!v8[4])
  {
    outlined destroy of PhoneCallNLIntent?(v8, &_s27PhoneCallFlowDelegatePlugin20TransformationResultVSgMd, &_s27PhoneCallFlowDelegatePlugin20TransformationResultVSgMR);
    v9 = 0u;
    v10 = 0u;
    v11 = 0;
    goto LABEL_5;
  }

  outlined init with copy of PersonNameComponents?();
  outlined destroy of TransformationResult(v8);
  if (!*(&v10 + 1))
  {
LABEL_5:
    outlined destroy of PhoneCallNLIntent?(&v9, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMR);
    return 0;
  }

  outlined init with take of PhoneCallFeatureFlagProviding(&v9, v8);
  __swift_project_boxed_opaque_existential_1(v8, v8[3]);
  OUTLINED_FUNCTION_19_0();
  v6 = PhoneCallNLIntent.isRepeatAfterPlayingVoiceMail()();
  __swift_destroy_boxed_opaque_existential_1(v8);
  return v6;
}

void ReadVoicemailResultSetFlowProvider.generatePlayVoicemailModel(items:)()
{
  OUTLINED_FUNCTION_24_10();
  v1 = type metadata accessor for SingleVoicemailModel();
  v2 = OUTLINED_FUNCTION_13_2(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  __chkstk_darwin(v2);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v0 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *(&dword_10 + (v0 & 0xFFFFFFFFFFFFFF8)); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v22 = _swiftEmptyArrayStorage;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    if (i < 0)
    {
      __break(1u);
      return;
    }

    v10 = 0;
    v11 = v22;
    v18 = v0 & 0xFFFFFFFFFFFFFF8;
    v19 = v0 & 0xC000000000000001;
    v12 = v0;
    while (1)
    {
      v13 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v19)
      {
        v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v10 >= *(v18 + 16))
        {
          goto LABEL_16;
        }

        v14 = *(v0 + 8 * v10 + 32);
      }

      v21 = v14;
      closure #1 in ReadVoicemailResultSetFlowProvider.generatePlayVoicemailModel(items:)(&v21, v20, v8);

      v22 = v11;
      v15 = v11[2];
      if (v15 >= v11[3] >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v11 = v22;
      }

      v11[2] = v15 + 1;
      v16 = v11 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
      v17 = *(v4 + 72);
      _s27PhoneCallFlowDelegatePlugin0A17SnippetDataModelsOWObTm_0();
      ++v10;
      v0 = v12;
      if (v13 == i)
      {
        return;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }
}

void closure #1 in ReadVoicemailResultSetFlowProvider.generatePlayVoicemailModel(items:)(unint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v60 = a2;
  v59 = type metadata accessor for CommonDirectAction();
  v5 = *(*(v59 - 8) + 64);
  __chkstk_darwin(v59);
  v7 = (&v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v63 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v62 = &v58 - v12;
  __chkstk_darwin(v13);
  v61 = &v58 - v14;
  __chkstk_darwin(v15);
  v17 = &v58 - v16;
  __chkstk_darwin(v18);
  v20 = &v58 - v19;
  __chkstk_darwin(v21);
  v23 = &v58 - v22;
  v24 = *a1;
  v65 = [objc_allocWithZone(SAIntentGroupRunSiriKitExecutor) init];
  outlined init with copy of PersonNameComponents?();
  v25 = type metadata accessor for SpeakableString();
  if (__swift_getEnumTagSinglePayload(v23, 1, v25) == 1)
  {
    outlined destroy of PhoneCallNLIntent?(v23, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  }

  else
  {
    v58 = v24;
    SpeakableString.print.getter();
    (*(*(v25 - 8) + 8))(v23, v25);
    v26 = Data.init(base64Encoded:options:)();
    if (v27 >> 60 == 15)
    {
    }

    else
    {
      v28 = v26;
      v29 = v27;
      type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SAIntentGroupRunSiriKitExecutor, SAIntentGroupRunSiriKitExecutor_ptr);
      outlined copy of Data._Representation(v28, v29);
      v30 = @nonobjc SAIntentGroupRunSiriKitExecutor.__allocating_init(plistData:)(v28, v29);
      if (!v30)
      {
        __break(1u);
        return;
      }

      v31 = v30;

      outlined consume of Data?(v28, v29);

      v65 = v31;
    }

    v24 = v58;
  }

  v32 = *(v24 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_caller);
  if (v32)
  {
    dispatch thunk of DialogPerson.fullName.getter();
    if (__swift_getEnumTagSinglePayload(v20, 1, v25) != 1)
    {
      v32 = SpeakableString.print.getter();
      v33 = v34;
      (*(*(v25 - 8) + 8))(v20, v25);
      goto LABEL_13;
    }

    outlined destroy of PhoneCallNLIntent?(v20, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    v32 = 0;
  }

  v33 = 0;
LABEL_13:
  *v7 = v32;
  v7[1] = v33;
  swift_storeEnumTagMultiPayload();
  v35 = v60[7];
  v36 = v60[8];
  __swift_project_boxed_opaque_existential_1(v60 + 4, v35);
  (*(v36 + 8))(v64, v35, v36);
  v60 = CommonDirectAction.toSAIntentGroupRunSiriKitExecutor(deviceState:)(v64);
  __swift_destroy_boxed_opaque_existential_1(v64);
  _s27PhoneCallFlowDelegatePlugin0A5ErrorOWOhTm_10();
  outlined init with copy of PersonNameComponents?();
  if (__swift_getEnumTagSinglePayload(v17, 1, v25) == 1)
  {
    outlined destroy of PhoneCallNLIntent?(v17, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    v58 = 0xE000000000000000;
    v59 = 0;
  }

  else
  {
    v37 = SpeakableString.print.getter();
    v58 = v38;
    v59 = v37;
    (*(*(v25 - 8) + 8))(v17, v25);
  }

  v39 = v61;
  v40 = v62;
  outlined init with copy of PersonNameComponents?();
  if (__swift_getEnumTagSinglePayload(v39, 1, v25) == 1)
  {
    outlined destroy of PhoneCallNLIntent?(v39, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    v62 = 0;
    v41 = 0xE000000000000000;
  }

  else
  {
    v62 = SpeakableString.print.getter();
    v41 = v42;
    (*(*(v25 - 8) + 8))(v39, v25);
  }

  outlined init with copy of PersonNameComponents?();
  if (__swift_getEnumTagSinglePayload(v40, 1, v25) == 1)
  {
    outlined destroy of PhoneCallNLIntent?(v40, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    v43 = 0;
    v44 = 0xE000000000000000;
  }

  else
  {
    v43 = SpeakableString.print.getter();
    v44 = v45;
    (*(*(v25 - 8) + 8))(v40, v25);
  }

  v46 = v63;
  outlined init with copy of PersonNameComponents?();
  if (__swift_getEnumTagSinglePayload(v46, 1, v25) == 1)
  {
    outlined destroy of PhoneCallNLIntent?(v46, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    v47 = 0;
    v48 = 0xE000000000000000;
  }

  else
  {
    v49 = SpeakableString.print.getter();
    v48 = v50;
    v51 = v46;
    v47 = v49;
    (*(*(v25 - 8) + 8))(v51, v25);
  }

  v52 = *(v24 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_unseen);
  *a3 = 0x6F56656C676E6953;
  *(a3 + 8) = 0xEF6C69616D656369;
  v53 = v58;
  *(a3 + 16) = v59;
  *(a3 + 24) = v53;
  *(a3 + 32) = v62;
  *(a3 + 40) = v41;
  *(a3 + 48) = v43;
  *(a3 + 56) = v44;
  v54 = type metadata accessor for SingleVoicemailModel();
  v55 = *(v54 + 40);
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SAIntentGroupRunSiriKitExecutor, SAIntentGroupRunSiriKitExecutor_ptr);
  v56 = v65;
  CodableAceObject.init(wrappedValue:)();
  *(a3 + 64) = v47;
  *(a3 + 72) = v48;
  *(a3 + 80) = v52;
  v57 = a3 + *(v54 + 44);
  CodableAceObject.init(wrappedValue:)();
}

uint64_t ReadVoicemailResultSetFlowProvider.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  __swift_destroy_boxed_opaque_existential_1((v0 + 32));
  __swift_destroy_boxed_opaque_existential_1((v0 + 72));

  v3 = *(v0 + 128);

  v4 = *(v0 + 136);

  outlined destroy of SearchCallHistorySharedGlobals(v0 + 144);
  __swift_destroy_boxed_opaque_existential_1((v0 + 344));
  v5 = *(v0 + 384);

  v6 = *(v0 + 392);

  v7 = *(v0 + 416);
  v8 = *(v0 + 432);

  return v0;
}

uint64_t ReadVoicemailResultSetFlowProvider.__deallocating_deinit()
{
  ReadVoicemailResultSetFlowProvider.deinit();

  return swift_deallocClassInstance();
}

uint64_t protocol witness for ResultSetFlowProvider.makeEmptyResultSetFlow() in conformance ReadVoicemailResultSetFlowProvider()
{
  v2 = *(**v0 + 280);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = AddCallParticipantCATs.unsupportedParticipantsMultipleContactsUnsupported();

  return v6();
}

uint64_t protocol witness for ResultSetFlowProvider.makeSingleItemFlow() in conformance ReadVoicemailResultSetFlowProvider()
{
  v2 = *(**v0 + 272);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = AddCallParticipantCATs.unsupportedParticipantsMultipleContactsUnsupported();

  return v6();
}

uint64_t protocol witness for ResultSetFlowProvider.makeAllResultsFlow() in conformance ReadVoicemailResultSetFlowProvider()
{
  v2 = *(**v0 + 288);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = AddCallParticipantCATs.unsupportedParticipantsMultipleContactsUnsupported();

  return v6();
}

uint64_t protocol witness for ResultSetFlowProvider.makeWindowingConfiguration(promptType:) in conformance ReadVoicemailResultSetFlowProvider(uint64_t a1, uint64_t a2)
{
  v6 = *(**v2 + 296);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = closure #2 in ActionableCallControlFlow.execute();

  return v10(a1, a2);
}

uint64_t protocol witness for ContinuationPromptFlowProvider.makeFinalWindowFlow(paginationParameters:windowContent:) in conformance ReadVoicemailResultSetFlowProvider(uint64_t a1, uint64_t *a2)
{
  v5 = *a2;
  v6 = *(**v2 + 312);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = AddCallParticipantCATs.errorNoTargetCall();

  return v10(a1, v5);
}

uint64_t protocol witness for WindowingFlowProvider.makeWindowFlow(paginationParameters:windowContent:) in conformance ReadVoicemailResultSetFlowProvider(uint64_t a1, uint64_t *a2)
{
  v5 = *a2;
  v6 = *(**v2 + 304);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = AddCallParticipantCATs.unsupportedParticipantsMultipleContactsUnsupported();

  return v10(a1, v5);
}

unint64_t lazy protocol witness table accessor for type ContinueReadingVoicemailFlow<PromptForValueAfterReadingVoicemailFlowStrategy> and conformance ContinueReadingVoicemailFlow<A>()
{
  result = lazy protocol witness table cache variable for type ContinueReadingVoicemailFlow<PromptForValueAfterReadingVoicemailFlowStrategy> and conformance ContinueReadingVoicemailFlow<A>;
  if (!lazy protocol witness table cache variable for type ContinueReadingVoicemailFlow<PromptForValueAfterReadingVoicemailFlowStrategy> and conformance ContinueReadingVoicemailFlow<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s27PhoneCallFlowDelegatePlugin024ContinueReadingVoicemailC0CyAA019PromptForValueAfterghC8StrategyCGMd, &_s27PhoneCallFlowDelegatePlugin024ContinueReadingVoicemailC0CyAA019PromptForValueAfterghC8StrategyCGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContinueReadingVoicemailFlow<PromptForValueAfterReadingVoicemailFlowStrategy> and conformance ContinueReadingVoicemailFlow<A>);
  }

  return result;
}

uint64_t partial apply for closure #1 in ReadVoicemailResultSetFlowProvider.makeEmptyResultSetFlow()()
{
  OUTLINED_FUNCTION_27();
  v2 = v1;
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_18(v5);
  *v6 = v7;
  v6[1] = closure #1 in ActionableCallControlFlow.execute();

  return closure #1 in ReadVoicemailResultSetFlowProvider.makeEmptyResultSetFlow()(v2, v4, v3);
}

uint64_t partial apply for implicit closure #3 in ReadVoicemailResultSetFlowProvider.makeAllResultsFlow()()
{
  OUTLINED_FUNCTION_15();
  v2 = v1;
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_18(v3);
  *v4 = v5;
  v4[1] = closure #1 in ActionableCallControlFlow.execute();

  return implicit closure #3 in ReadVoicemailResultSetFlowProvider.makeAllResultsFlow()(v2, v0);
}

uint64_t partial apply for implicit closure #4 in ReadVoicemailResultSetFlowProvider.makeAllResultsFlow()()
{
  OUTLINED_FUNCTION_27();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v3);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v0 + 16);
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_18(v7);
  *v8 = v9;
  v8[1] = closure #1 in ActionableCallControlFlow.execute();

  return implicit closure #4 in ReadVoicemailResultSetFlowProvider.makeAllResultsFlow()(v2, v6, v0 + v5);
}

uint64_t outlined init with copy of PlayVoicemailModel()
{
  OUTLINED_FUNCTION_1_15();
  v2 = v1(0);
  OUTLINED_FUNCTION_23_1(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_19_0();
  v6(v5);
  return v0;
}

uint64_t partial apply for closure #2 in ReadVoicemailResultSetFlowProvider.makeAllResultsFlow()()
{
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_24_10();
  v2 = type metadata accessor for PhoneSnippetDataModels();
  OUTLINED_FUNCTION_13_2(v2);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v6 = (*(v5 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = type metadata accessor for PlayVoicemailModel();
  OUTLINED_FUNCTION_21(v7);
  v9 = (v6 + *(v8 + 80) + 8) & ~*(v8 + 80);
  v10 = *(v0 + 16);
  v11 = *(v0 + v6);
  v12 = swift_task_alloc();
  *(v1 + 16) = v12;
  *v12 = v1;
  v12[1] = closure #2 in ActionableCallControlFlow.execute();

  return closure #2 in ReadVoicemailResultSetFlowProvider.makeAllResultsFlow()(v1, v10, v0 + v4, v11, v0 + v9);
}

uint64_t _s27PhoneCallFlowDelegatePlugin0A5ErrorOACs0F0AAWlTm_10(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t _s27PhoneCallFlowDelegatePlugin0A17SnippetDataModelsOWObTm_0()
{
  OUTLINED_FUNCTION_1_15();
  v2 = v1(0);
  OUTLINED_FUNCTION_23_1(v2);
  v4 = *(v3 + 32);
  v5 = OUTLINED_FUNCTION_19_0();
  v6(v5);
  return v0;
}

uint64_t _s27PhoneCallFlowDelegatePlugin0A5ErrorOWOhTm_10()
{
  v1 = OUTLINED_FUNCTION_2_4();
  v3 = v2(v1);
  OUTLINED_FUNCTION_23_5(v3);
  (*(v4 + 8))(v0);
  return v0;
}

uint64_t RecipientSlotTemplating.init(deviceState:catFamily:startCallCatFamily:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  result = outlined init with take of PhoneCallFeatureFlagProviding(a1, a4);
  *(a4 + 40) = a2;
  *(a4 + 48) = a3;
  return result;
}

uint64_t RecipientSlotTemplating.makeParameterValueConfirmationDialog(app:parameterName:intentResolutionResult:intent:inferenceSource:_:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v24 = a8;
  v12 = type metadata accessor for Locale();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  *&v15 = __chkstk_darwin(v12).n128_u64[0];
  v17 = &v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = [a4 itemToConfirm];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  type metadata accessor for INPerson();
  if (swift_dynamicCast())
  {
    v19 = v25[5];
  }

  else
  {
    v19 = [a5 recipient];
  }

  v20 = *(v8 + 40);
  type metadata accessor for PhonePerson(0);
  static Device.current.getter();
  __swift_project_boxed_opaque_existential_1(v25, v25[3]);
  dispatch thunk of DeviceState.siriLocale.getter();
  __swift_destroy_boxed_opaque_existential_1(v25);
  v21 = static PhonePerson.make(phonePerson:options:locale:)(v19, 0, v17);
  (*(v13 + 8))(v17, v12);
  (*(*v20 + class metadata base offset for SearchCallHistoryCATs + 128))(v21, a7, v24);
}

uint64_t RecipientSlotTemplating.makeParameterValueDisambiguationDialog(app:parameterName:intentResolutionResult:disambiguationList:deviceIsLocked:intent:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v18 - v13;
  v15 = *(v9 + 48);
  v16 = type metadata accessor for SpeakableString();
  __swift_storeEnumTagSinglePayload(v14, 1, 1, v16);
  (*(*v15 + class metadata base offset for StartCallCATs + 288))(v14, a8, a9);
  return outlined destroy of SpeakableString?(v14);
}

uint64_t getEnumTagSinglePayload for RecipientSlotTemplating(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
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

uint64_t storeEnumTagSinglePayload for RecipientSlotTemplating(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t static Transformer<>.transformer(device:callCapability:participants:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 24) = a3;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo18INCallRecordFilterCSgMd, &_sSo18INCallRecordFilterCSgMR);

  return Transformer.init(transform:)();
}

id closure #1 in static Transformer<>.transformer(device:callCapability:participants:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  OUTLINED_FUNCTION_0_101();
  if (PhoneCallNLIntent.isRedial()() || (v7 = a1[4], __swift_project_boxed_opaque_existential_1(a1, a1[3]), OUTLINED_FUNCTION_0_101(), PhoneCallNLIntent.isCallBack()()))
  {
    v8 = a1[3];
    v9 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v8);
    v10 = (*(v9 + 40))(v8, v9);
    if (v10)
    {
      v25 = a2;
      v11 = *(v10 + 16);
      if (v11)
      {
        v12 = 0;
        v13 = (v10 + 32);
        do
        {
          v14 = a1[4];
          v15 = *v13++;
          __swift_project_boxed_opaque_existential_1(a1, a1[3]);
          v26 = PhoneCallNLIntent.getCallRecordTypeOption(attr:)(v15);
          if (v26.is_nil || (v26.value.rawValue & ~v12) == 0)
          {
            rawValue = 0;
          }

          else
          {
            rawValue = v26.value.rawValue;
          }

          v12 |= rawValue;
          --v11;
        }

        while (v11);
      }

      else
      {
        v12 = 0;
      }

      a2 = v25;
    }

    else
    {
      v12 = 0;
    }

    v18 = a1[3];
    v19 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v18);
    v20 = *((*(v19 + 24))(v18, v19) + 16);

    if (v20 == 1 && (v21 = a1[4], __swift_project_boxed_opaque_existential_1(a1, a1[3]), PhoneCallNLIntent.hasAnyContactReference()()))
    {
      v22 = objc_allocWithZone(INCallRecordFilter);
      v23 = 0;
    }

    else
    {
      v24 = objc_allocWithZone(INCallRecordFilter);
    }

    result = @nonobjc INCallRecordFilter.init(participants:callTypes:callCapability:)(v23, v12, a2);
  }

  else
  {
    result = 0;
  }

  *a3 = result;
  return result;
}

unint64_t closure #1 in static Transformer<>.transformer(sharedGlobals:previousIntent:)@<X0>(void *a1@<X0>, unint64_t *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  result = PhoneCallNLIntent.getCallRecordType()(v3, v4);
  *a2 = result;
  return result;
}

uint64_t RedirectToCompanionFlow.__allocating_init(parse:sharedGlobals:)(uint64_t a1, uint64_t *a2)
{
  v5 = type metadata accessor for Parse();
  v6 = OUTLINED_FUNCTION_7(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6);
  OUTLINED_FUNCTION_4();
  v13 = v12 - v11;
  v14 = OUTLINED_FUNCTION_4_72();
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  OUTLINED_FUNCTION_4();
  v19 = v18 - v17;
  (*(v8 + 16))(v13, a1, v5);
  Input.init(parse:)();
  v20 = type metadata accessor for Input();
  __swift_storeEnumTagSinglePayload(v19, 0, 3, v20);
  outlined init with copy of SignalProviding(a2, v23);
  v21 = (*(v2 + 120))(v19, v23);
  __swift_destroy_boxed_opaque_existential_1(a2);
  (*(v8 + 8))(a1, v5);
  return v21;
}

uint64_t key path setter for RedirectToCompanionFlow.state : RedirectToCompanionFlow(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RedirectToCompanionFlow.State(0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of RedirectToCompanionFlow.State(a1, v7);
  return (*(**a2 + 104))(v7);
}

void RedirectToCompanionFlow.state.didset()
{
  v1 = v0;
  v2 = type metadata accessor for RedirectToCompanionFlow.State(0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for siriPhone != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Logger.siriPhone);

  v17 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v17, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v18 = v9;
    *v8 = 136315138;
    v10 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin23RedirectToCompanionFlow_state;
    swift_beginAccess();
    outlined init with copy of RedirectToCompanionFlow.State(v1 + v10, v5);
    v11 = RedirectToCompanionFlow.State.description.getter();
    v13 = v12;
    outlined destroy of RedirectToCompanionFlow.State(v5);
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v13, &v18);

    *(v8 + 4) = v14;
    _os_log_impl(&dword_0, v17, v7, "#RedirectToCompanionFlow: state: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
  }

  else
  {
    v15 = v17;
  }
}

uint64_t RedirectToCompanionFlow.state.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin23RedirectToCompanionFlow_state;
  swift_beginAccess();
  return outlined init with copy of RedirectToCompanionFlow.State(v1 + v3, a1);
}

uint64_t outlined init with copy of RedirectToCompanionFlow.State(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RedirectToCompanionFlow.State(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t RedirectToCompanionFlow.state.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin23RedirectToCompanionFlow_state;
  swift_beginAccess();
  outlined assign with copy of RedirectToCompanionFlow.State(a1, v1 + v3);
  swift_endAccess();
  RedirectToCompanionFlow.state.didset();
  return outlined destroy of RedirectToCompanionFlow.State(a1);
}

uint64_t outlined assign with copy of RedirectToCompanionFlow.State(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RedirectToCompanionFlow.State(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of RedirectToCompanionFlow.State(uint64_t a1)
{
  v2 = type metadata accessor for RedirectToCompanionFlow.State(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void (*RedirectToCompanionFlow.state.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return RedirectToCompanionFlow.state.modify;
}

void RedirectToCompanionFlow.state.modify(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = *(a1 + 24);
    RedirectToCompanionFlow.state.didset();
  }
}

uint64_t RedirectToCompanionFlow.__allocating_init(state:sharedGlobals:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  v7 = swift_allocObject();
  outlined init with take of RedirectToCompanionFlow.State(a1, v7 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin23RedirectToCompanionFlow_state);
  outlined init with take of PhoneCallFeatureFlagProviding(a2, v7 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin23RedirectToCompanionFlow_sharedGlobals);
  return v7;
}

uint64_t RedirectToCompanionFlow.init(state:sharedGlobals:)(uint64_t a1, uint64_t a2)
{
  outlined init with take of RedirectToCompanionFlow.State(a1, v2 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin23RedirectToCompanionFlow_state);
  outlined init with take of PhoneCallFeatureFlagProviding(a2, v2 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin23RedirectToCompanionFlow_sharedGlobals);
  return v2;
}

uint64_t outlined init with take of RedirectToCompanionFlow.State(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RedirectToCompanionFlow.State(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

BOOL RedirectToCompanionFlow.on(input:)()
{
  v1 = v0;
  v2 = OUTLINED_FUNCTION_4_72();
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  OUTLINED_FUNCTION_4();
  v7 = v6 - v5;
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
    v15 = swift_slowAlloc();
    *v11 = 136315394;
    *(v11 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000083, 0x8000000000460B30, &v15);
    *(v11 + 12) = 2080;
    *(v11 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x7475706E69286E6FLL, 0xEA0000000000293ALL, &v15);
    _os_log_impl(&dword_0, v9, v10, "%s:%s", v11, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_26_0();
    OUTLINED_FUNCTION_26_0();
  }

  (*(*v1 + 96))();
  v12 = type metadata accessor for Input();
  v13 = __swift_getEnumTagSinglePayload(v7, 3, v12) == 0;
  outlined destroy of RedirectToCompanionFlow.State(v7);
  return v13;
}

uint64_t RedirectToCompanionFlow.execute()()
{
  OUTLINED_FUNCTION_15();
  v1[2] = v2;
  v1[3] = v0;
  v3 = type metadata accessor for FlowUnhandledReason();
  v1[4] = v3;
  OUTLINED_FUNCTION_13_2(v3);
  v1[5] = v4;
  v6 = *(v5 + 64);
  v1[6] = OUTLINED_FUNCTION_45();
  OUTLINED_FUNCTION_4_72();
  v8 = *(v7 + 64) + 15;
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v9 = type metadata accessor for Input();
  v1[10] = v9;
  OUTLINED_FUNCTION_13_2(v9);
  v1[11] = v10;
  v12 = *(v11 + 64);
  v1[12] = OUTLINED_FUNCTION_45();
  v13 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v13, v14, v15);
}

{
  v35 = v0;
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
    v34 = swift_slowAlloc();
    *v4 = 136315394;
    *(v4 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000083, 0x8000000000460B30, &v34);
    *(v4 + 12) = 2080;
    *(v4 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x2865747563657865, 0xE900000000000029, &v34);
    _os_log_impl(&dword_0, v2, v3, "%s:%s", v4, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_26_0();
    OUTLINED_FUNCTION_26_0();
  }

  v6 = *(v0 + 72);
  v5 = *(v0 + 80);
  v7 = *(**(v0 + 24) + 96);
  v7();
  if (__swift_getEnumTagSinglePayload(v6, 3, v5))
  {
    v8 = *(v0 + 80);
    v9 = *(v0 + 56);
    v10 = *(v0 + 24);
    v11 = outlined destroy of RedirectToCompanionFlow.State(*(v0 + 72));
    (v7)(v11);
    LODWORD(v10) = __swift_getEnumTagSinglePayload(v9, 3, v8);
    outlined destroy of RedirectToCompanionFlow.State(v9);
    if (v10 == 3)
    {
      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        _os_log_impl(&dword_0, v12, v13, "ExecuteOnRemote: remote flow failed, redirecting to server", v14, 2u);
        OUTLINED_FUNCTION_26_0();
      }

      v16 = *(v0 + 40);
      v15 = *(v0 + 48);
      v17 = *(v0 + 32);
      v18 = *(v0 + 16);

      (*(v16 + 104))(v15, enum case for FlowUnhandledReason.needsServerExecution(_:), v17);
      static ExecuteResponse.unhandled(reason:)();
      (*(v16 + 8))(v15, v17);
    }

    else
    {
      v27 = *(v0 + 16);
      static ExecuteResponse.complete()();
    }

    v28 = *(v0 + 96);
    v29 = *(v0 + 64);
    v30 = *(v0 + 72);
    v32 = *(v0 + 48);
    v31 = *(v0 + 56);

    OUTLINED_FUNCTION_11();

    return v33();
  }

  else
  {
    v19 = *(v0 + 80);
    v20 = *(v0 + 64);
    v21 = *(v0 + 24);
    (*(*(v0 + 88) + 32))(*(v0 + 96), *(v0 + 72), v19);
    __swift_storeEnumTagSinglePayload(v20, 1, 3, v19);
    (*(*v21 + 104))(v20);
    v22 = swift_task_alloc();
    *(v0 + 104) = v22;
    *v22 = v0;
    v22[1] = RedirectToCompanionFlow.execute();
    v23 = *(v0 + 96);
    v24 = *(v0 + 16);
    v25 = *(v0 + 24);

    return RedirectToCompanionFlow.executeOnRemote(input:)();
  }
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  v2 = *(v1 + 104);
  v3 = *v0;
  OUTLINED_FUNCTION_4_2();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v5, v6, v7);
}

{
  (*(v0[11] + 8))(v0[12], v0[10]);
  v1 = v0[12];
  v2 = v0[8];
  v3 = v0[9];
  v5 = v0[6];
  v4 = v0[7];

  OUTLINED_FUNCTION_11();

  return v6();
}

uint64_t RedirectToCompanionFlow.executeOnRemote(input:)()
{
  OUTLINED_FUNCTION_15();
  v1[6] = v2;
  v1[7] = v0;
  v1[5] = v3;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow017UserIdentityCheckC8StrategyV20HandoffConfigurationVSgMd, &_s11SiriKitFlow017UserIdentityCheckC8StrategyV20HandoffConfigurationVSgMR) - 8) + 64);
  v1[8] = OUTLINED_FUNCTION_45();
  v5 = type metadata accessor for UserIdentityCheckFlowStrategy();
  v1[9] = v5;
  OUTLINED_FUNCTION_13_2(v5);
  v1[10] = v6;
  v8 = *(v7 + 64);
  v1[11] = OUTLINED_FUNCTION_45();
  v9 = type metadata accessor for ExecuteOnRemoteDeviceSpecification();
  v1[12] = v9;
  OUTLINED_FUNCTION_13_2(v9);
  v1[13] = v10;
  v12 = *(v11 + 64);
  v1[14] = OUTLINED_FUNCTION_45();
  v13 = type metadata accessor for Input();
  v1[15] = v13;
  OUTLINED_FUNCTION_13_2(v13);
  v1[16] = v14;
  v16 = *(v15 + 64);
  v1[17] = OUTLINED_FUNCTION_45();
  v17 = type metadata accessor for UserIdentityCheckFlowStrategy.HandoffConfiguration();
  v1[18] = v17;
  OUTLINED_FUNCTION_13_2(v17);
  v1[19] = v18;
  v20 = *(v19 + 64);
  v1[20] = OUTLINED_FUNCTION_45();
  v21 = type metadata accessor for CompanionDeviceInfoRequirement();
  v1[21] = v21;
  OUTLINED_FUNCTION_13_2(v21);
  v1[22] = v22;
  v24 = *(v23 + 64);
  v1[23] = OUTLINED_FUNCTION_45();
  v25 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v25, v26, v27);
}

{
  v2 = v0[22];
  v1 = v0[23];
  v4 = v0[20];
  v3 = v0[21];
  v5 = v0[16];
  v21 = v0[15];
  v6 = v0[13];
  v29 = v0[17];
  v30 = v0[14];
  v22 = v0[12];
  v31 = v0[11];
  v32 = v0[19];
  v24 = v0[18];
  v25 = v0[10];
  v23 = v0[8];
  v26 = v0[9];
  v27 = v0[7];
  v7 = v0[6];
  v28 = v0[5];
  type metadata accessor for CompanionCompatibilityCheckFlowStrategy();
  (*(v2 + 104))(v1, enum case for CompanionDeviceInfoRequirement.supportsPeerToPeerHandoff(_:), v3);
  static CompanionCompatibilityCheckFlowStrategy.require(_:redirectToServerOnFailure:shouldOutputErrorDialog:)();
  (*(v2 + 8))(v1, v3);
  type metadata accessor for SimpleHandoffStrategy();
  swift_allocObject();
  lazy protocol witness table accessor for type RedirectToCompanionFlow and conformance RedirectToCompanionFlow(&lazy protocol witness table cache variable for type SimpleHandoffStrategy and conformance SimpleHandoffStrategy, v8, type metadata accessor for SimpleHandoffStrategy);

  UserIdentityCheckFlowStrategy.HandoffConfiguration.init(companionCompatiblityCheck:handoffStrategy:)();
  (*(v5 + 16))(v29, v7, v21);
  (*(v6 + 104))(v30, enum case for ExecuteOnRemoteDeviceSpecification.userCompanion(_:), v22);
  static OutputPublisherFactory.makeOutputPublisherAsync()();
  v9 = type metadata accessor for ExecuteOnRemoteFlow();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  v0[2] = ExecuteOnRemoteFlow.init(inputToExecute:device:outputPublisher:shouldSendSpeechPackage:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11SiriKitFlow06CommonF5GuardVGMd, &_ss23_ContiguousArrayStorageCy11SiriKitFlow06CommonF5GuardVGMR);
  v12 = type metadata accessor for CommonFlowGuard();
  OUTLINED_FUNCTION_13_2(v12);
  v14 = *(v13 + 72);
  v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  *(swift_allocObject() + 16) = xmmword_426980;
  static CommonFlowGuard.ensuringPersonalRequestsAreEnabledWhenApplicable.getter();
  (*(v32 + 16))(v23, v4, v24);
  __swift_storeEnumTagSinglePayload(v23, 0, 1, v24);
  UserIdentityCheckFlowStrategy.init(allowsAnonymousUser:allowsUserInteraction:handoffConfiguration:requireSpeechProfile:)();
  static CommonFlowGuard.ensuringUserIdentity(using:)();
  (*(v25 + 8))(v31, v26);
  static CommonFlowGuard.ensuringUserHasSupportedCompanion(using:)();
  v17 = static CommonGuardFlowUtils.makeGuardFlow(withGuards:)();

  v0[3] = v17;
  type metadata accessor for GuardFlow();
  v18 = Flow.guarded<A>(by:)();

  v0[4] = v18;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow011ConditionalC0CyAA015ExecuteOnRemoteC6ResultOGMd, &_s11SiriKitFlow011ConditionalC0CyAA015ExecuteOnRemoteC6ResultOGMR);
  lazy protocol witness table accessor for type ConditionalFlow<ExecuteOnRemoteFlowResult> and conformance ConditionalFlow<A>();
  static ExecuteResponse.ongoing<A>(next:childCompletion:)();

  (*(v32 + 8))(v4, v24);

  OUTLINED_FUNCTION_11();

  return v19();
}

uint64_t closure #1 in RedirectToCompanionFlow.executeOnRemote(input:)(uint64_t a1, uint64_t a2)
{
  v61 = a2;
  v3 = type metadata accessor for ExecuteOnRemoteFlowResult();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v56 - v9;
  __chkstk_darwin(v11);
  v13 = &v56 - v12;
  __chkstk_darwin(v14);
  v16 = &v56 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow011ConditionalC6ResultOyAA015ExecuteOnRemotecE0OGMd, &_s11SiriKitFlow011ConditionalC6ResultOyAA015ExecuteOnRemotecE0OGMR);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v20 = &v56 - v19;
  v21 = type metadata accessor for RedirectToCompanionFlow.State(0);
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21 - 8);
  v60 = &v56 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v26 = &v56 - v25;
  outlined init with copy of ConditionalFlowResult<ExecuteOnRemoteFlowResult>(a1, v20);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow015ExecuteOnRemoteC6ResultO6result_tMd, &_s11SiriKitFlow015ExecuteOnRemoteC6ResultO6result_tMR);
  if (__swift_getEnumTagSinglePayload(v20, 1, v27) == 1)
  {
    if (one-time initialization token for siriPhone != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    __swift_project_value_buffer(v28, static Logger.siriPhone);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_0, v29, v30, "ExecuteOnRemote guard flows failed, assuming a server redirect or handoff should have happened, doing nothing.", v31, 2u);
    }

    v32 = type metadata accessor for Input();
    __swift_storeEnumTagSinglePayload(v26, 2, 3, v32);
    outlined destroy of ConditionalFlowResult<ExecuteOnRemoteFlowResult>(v20);
  }

  else
  {
    (*(v4 + 32))(v16, v20, v3);
    v33 = *(v4 + 16);
    v33(v13, v16, v3);
    if ((*(v4 + 88))(v13, v3) == enum case for ExecuteOnRemoteFlowResult.remoteFlowFailure(_:))
    {
      (*(v4 + 96))(v13, v3);
      v34 = *v13;
      if (one-time initialization token for siriPhone != -1)
      {
        swift_once();
      }

      v35 = type metadata accessor for Logger();
      __swift_project_value_buffer(v35, static Logger.siriPhone);
      swift_errorRetain();
      v36 = Logger.logObject.getter();
      v37 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        v59 = swift_slowAlloc();
        v62 = v34;
        v63 = v59;
        *v38 = 136315138;
        swift_errorRetain();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
        v39 = String.init<A>(describing:)();
        v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v40, &v63);

        *(v38 + 4) = v41;
        _os_log_impl(&dword_0, v36, v37, "ExecuteOnRemote failed with an error=%s: Possible server redirect. Will redirect this input to server as a fallback.", v38, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v59);
      }

      else
      {
      }

      (*(v4 + 8))(v16, v3);
      v52 = type metadata accessor for Input();
      __swift_storeEnumTagSinglePayload(v26, 3, 3, v52);
    }

    else
    {
      if (one-time initialization token for siriPhone != -1)
      {
        swift_once();
      }

      v42 = type metadata accessor for Logger();
      __swift_project_value_buffer(v42, static Logger.siriPhone);
      v33(v10, v16, v3);
      v43 = Logger.logObject.getter();
      LODWORD(v59) = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v43, v59))
      {
        v44 = swift_slowAlloc();
        v57 = v43;
        v45 = v44;
        v58 = swift_slowAlloc();
        v63 = v58;
        *v45 = 136315138;
        v33(v7, v10, v3);
        v56 = String.init<A>(describing:)();
        v47 = v46;
        v48 = *(v4 + 8);
        v48(v10, v3);
        v49 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v56, v47, &v63);

        v50 = v45;
        *(v45 + 4) = v49;
        v51 = v57;
        _os_log_impl(&dword_0, v57, v59, "ExecuteOnRemote flow completed with: %s", v50, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v58);
      }

      else
      {

        v48 = *(v4 + 8);
        v48(v10, v3);
      }

      v48(v16, v3);
      v53 = type metadata accessor for Input();
      __swift_storeEnumTagSinglePayload(v26, 2, 3, v53);
      v48(v13, v3);
    }
  }

  v54 = v60;
  outlined init with copy of RedirectToCompanionFlow.State(v26, v60);
  (*(*v61 + 104))(v54);
  return outlined destroy of RedirectToCompanionFlow.State(v26);
}

uint64_t RedirectToCompanionFlow.execute(completion:)()
{
  type metadata accessor for RedirectToCompanionFlow(0);
  lazy protocol witness table accessor for type RedirectToCompanionFlow and conformance RedirectToCompanionFlow(&lazy protocol witness table cache variable for type RedirectToCompanionFlow and conformance RedirectToCompanionFlow, 255, type metadata accessor for RedirectToCompanionFlow);
  return Flow.deferToExecuteAsync(_:)();
}

unint64_t RedirectToCompanionFlow.State.description.getter()
{
  v1 = type metadata accessor for Input();
  v2 = OUTLINED_FUNCTION_7(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  __chkstk_darwin(v2);
  OUTLINED_FUNCTION_4();
  v9 = v8 - v7;
  v10 = OUTLINED_FUNCTION_4_72();
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  OUTLINED_FUNCTION_4();
  v15 = v14 - v13;
  outlined init with copy of RedirectToCompanionFlow.State(v0, v14 - v13);
  v16 = 0x676E696E6E75722ELL;
  switch(__swift_getEnumTagSinglePayload(v15, 3, v1))
  {
    case 1u:
      return v16;
    case 2u:
      v16 = 0x74656C706D6F632ELL;
      break;
    case 3u:
      v16 = 0xD000000000000011;
      break;
    default:
      (*(v4 + 32))(v9, v15, v1);
      _StringGuts.grow(_:)(18);

      lazy protocol witness table accessor for type RedirectToCompanionFlow and conformance RedirectToCompanionFlow(&lazy protocol witness table cache variable for type Input and conformance Input, 255, &type metadata accessor for Input);
      v17._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v17);

      v18._countAndFlagsBits = 41;
      v18._object = 0xE100000000000000;
      String.append(_:)(v18);
      v16 = 0x65527475706E692ELL;
      (*(v4 + 8))(v9, v1);
      break;
  }

  return v16;
}

uint64_t RedirectToCompanionFlow.deinit()
{
  outlined destroy of RedirectToCompanionFlow.State(v0 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin23RedirectToCompanionFlow_state);
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin23RedirectToCompanionFlow_sharedGlobals));
  return v0;
}

uint64_t RedirectToCompanionFlow.__deallocating_deinit()
{
  outlined destroy of RedirectToCompanionFlow.State(v0 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin23RedirectToCompanionFlow_state);
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin23RedirectToCompanionFlow_sharedGlobals));
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void (*protocol witness for SiriEnvironmentLocating.siriEnvironment.modify in conformance RedirectToCompanionFlow(void *a1))(void *a1)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v4 = *v1;
  v3[4] = SiriEnvironmentLocating<>.siriEnvironment.modify();
  return protocol witness for SiriEnvironmentLocating.siriEnvironment.modify in conformance BusinessCompositionFlow;
}

uint64_t protocol witness for Flow.execute() in conformance RedirectToCompanionFlow(uint64_t a1)
{
  v4 = *(**v1 + 136);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = closure #2 in ActionableCallControlFlow.execute();

  return v8(a1);
}

uint64_t protocol witness for Flow.exitValue.getter in conformance RedirectToCompanionFlow(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for RedirectToCompanionFlow(0);

  return Flow<>.exitValue.getter(v3, a2);
}

uint64_t protocol witness for HandoffSessionToCompanionFlowStrategyAsync.makeHandoffResponse() in conformance SimpleHandoffStrategy(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = async function pointer to HandoffSessionToCompanionFlowStrategyAsync.makeHandoffResponse()[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = closure #2 in ActionableCallControlFlow.execute();

  return HandoffSessionToCompanionFlowStrategyAsync.makeHandoffResponse()(a1, a2, a3);
}

uint64_t lazy protocol witness table accessor for type RedirectToCompanionFlow and conformance RedirectToCompanionFlow(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t type metadata completion function for RedirectToCompanionFlow()
{
  result = type metadata accessor for RedirectToCompanionFlow.State(319);
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

uint64_t type metadata completion function for RedirectToCompanionFlow.State()
{
  v0 = type metadata accessor for Input();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v0;
}

unint64_t lazy protocol witness table accessor for type ConditionalFlow<ExecuteOnRemoteFlowResult> and conformance ConditionalFlow<A>()
{
  result = lazy protocol witness table cache variable for type ConditionalFlow<ExecuteOnRemoteFlowResult> and conformance ConditionalFlow<A>;
  if (!lazy protocol witness table cache variable for type ConditionalFlow<ExecuteOnRemoteFlowResult> and conformance ConditionalFlow<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s11SiriKitFlow011ConditionalC0CyAA015ExecuteOnRemoteC6ResultOGMd, &_s11SiriKitFlow011ConditionalC0CyAA015ExecuteOnRemoteC6ResultOGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ConditionalFlow<ExecuteOnRemoteFlowResult> and conformance ConditionalFlow<A>);
  }

  return result;
}

uint64_t outlined destroy of ConditionalFlowResult<ExecuteOnRemoteFlowResult>(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow011ConditionalC6ResultOyAA015ExecuteOnRemotecE0OGMd, &_s11SiriKitFlow011ConditionalC6ResultOyAA015ExecuteOnRemotecE0OGMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t RedirectToServerFlow.__allocating_init(to:sharedGlobals:isSentinelFlow:)(char a1, uint64_t a2, char a3)
{
  v6 = swift_allocObject();
  RedirectToServerFlow.init(to:sharedGlobals:isSentinelFlow:)(a1, a2, a3);
  return v6;
}

uint64_t RedirectToServerFlow.init(to:sharedGlobals:isSentinelFlow:)(char a1, uint64_t a2, char a3)
{
  *(v3 + 16) = a1;
  outlined init with take of PhoneCallFeatureFlagProviding(a2, v3 + 24);
  *(v3 + 64) = a3;
  return v3;
}

uint64_t RedirectToServerFlow.execute()()
{
  OUTLINED_FUNCTION_15();
  v1[13] = v2;
  v1[14] = v0;
  v3 = type metadata accessor for FlowUnhandledReason();
  v1[15] = v3;
  OUTLINED_FUNCTION_13_2(v3);
  v1[16] = v4;
  v6 = *(v5 + 64);
  v1[17] = OUTLINED_FUNCTION_45();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR) - 8) + 64);
  v1[18] = OUTLINED_FUNCTION_45();
  v8 = type metadata accessor for PommesContext.Source();
  v1[19] = v8;
  OUTLINED_FUNCTION_13_2(v8);
  v1[20] = v9;
  v11 = *(v10 + 64);
  v1[21] = OUTLINED_FUNCTION_45();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR) - 8) + 64);
  v1[22] = OUTLINED_FUNCTION_45();
  v13 = type metadata accessor for NLContextUpdate();
  v1[23] = v13;
  OUTLINED_FUNCTION_13_2(v13);
  v1[24] = v14;
  v16 = *(v15 + 64);
  v1[25] = OUTLINED_FUNCTION_45();

  return _swift_task_switch(RedirectToServerFlow.execute(), 0, 0);
}

{
  OUTLINED_FUNCTION_15();
  v3 = *(*v1 + 216);
  v2 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v4 = v2;
  *(v2 + 224) = v0;

  if (v0)
  {
    v5 = RedirectToServerFlow.execute();
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1((v2 + 64));
    v5 = RedirectToServerFlow.execute();
  }

  return _swift_task_switch(v5, 0, 0);
}

{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v2 = v0[16];
  v1 = v0[17];
  v4 = v0[14];
  v3 = v0[15];
  v5 = v0[13];
  v6 = OUTLINED_FUNCTION_6_72();
  v7(v6);
  v8 = *(v4 + 64);
  static ExecuteResponse.unhandled(reason:isComplete:)();
  (*(v2 + 8))(v1, v3);
  v9 = OUTLINED_FUNCTION_0_102();
  v10(v9);

  OUTLINED_FUNCTION_11();

  return v11();
}

{
  v1 = v0[26];
  __swift_destroy_boxed_opaque_existential_1(v0 + 8);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[28];
  if (v4)
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_0, v2, v3, "#RedirectToServerFlow: Couldn't submit PommesContext before server fallback", v6, 2u);
    OUTLINED_FUNCTION_26_0();
  }

  v8 = v0[16];
  v7 = v0[17];
  v10 = v0[14];
  v9 = v0[15];
  v11 = v0[13];
  v12 = OUTLINED_FUNCTION_6_72();
  v13(v12);
  v14 = *(v10 + 64);
  static ExecuteResponse.unhandled(reason:isComplete:)();
  (*(v8 + 8))(v7, v9);
  v15 = OUTLINED_FUNCTION_0_102();
  v16(v15);

  OUTLINED_FUNCTION_11();

  return v17();
}

uint64_t RedirectToServerFlow.execute()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v70 = v16;
  if (one-time initialization token for siriPhone != -1)
  {
    swift_once();
  }

  v17 = *(v16 + 112);
  v18 = type metadata accessor for Logger();
  *(v16 + 208) = __swift_project_value_buffer(v18, static Logger.siriPhone);
  swift_retain_n();
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.debug.getter();
  v21 = os_log_type_enabled(v19, v20);
  v22 = *(v16 + 112);
  if (v21)
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *&v68[0] = v24;
    *v23 = 136315394;
    *(v16 + 232) = *(v22 + 16);
    v25 = String.init<A>(describing:)();
    v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v26, v68);

    *(v23 + 4) = v27;
    *(v23 + 12) = 1024;
    v28 = *(v22 + 64);

    *(v23 + 14) = v28;

    _os_log_impl(&dword_0, v19, v20, "#RedirectToServerFlow: Triggering server redirect to %s, isSentinelFlow = %{BOOL}d", v23, 0x12u);
    __swift_destroy_boxed_opaque_existential_1(v24);
    OUTLINED_FUNCTION_26_0();
    OUTLINED_FUNCTION_26_0();
  }

  else
  {
    v29 = *(v16 + 112);
  }

  v30 = *(v16 + 112);
  if (*(v30 + 16))
  {
    if (*(v30 + 16) == 1)
    {
      v32 = *(v16 + 192);
      v31 = *(v16 + 200);
      v33 = *(v16 + 176);
      v34 = *(v16 + 184);
      v36 = *(v16 + 160);
      v35 = *(v16 + 168);
      v37 = *(v16 + 144);
      v38 = *(v16 + 152);
      NLContextUpdate.init()();
      (*(v36 + 104))(v35, enum case for PommesContext.Source.pluginDefined(_:), v38);
      PommesContext.init(source:domain:listenAfterSpeaking:)();
      v39 = type metadata accessor for PommesContext();
      __swift_storeEnumTagSinglePayload(v33, 0, 1, v39);
      NLContextUpdate.pommesContext.setter();
      v40 = *(v30 + 48);
      v41 = *(v30 + 56);
      __swift_project_boxed_opaque_existential_1((v30 + 24), v40);
      (*(v41 + 16))(v40, v41);
      v42 = *(v16 + 40);
      v43 = *(v16 + 56);
      __swift_project_boxed_opaque_existential_1((v16 + 16), v42);
      v69 = 0;
      memset(v68, 0, sizeof(v68));
      (*(v32 + 16))(v37, v31, v34);
      __swift_storeEnumTagSinglePayload(v37, 0, 1, v34);
      *(v16 + 88) = type metadata accessor for AceOutput();
      *(v16 + 96) = &protocol witness table for AceOutput;
      __swift_allocate_boxed_opaque_existential_1((v16 + 64));
      AceOutput.init(commands:flowActivity:nlContextUpdate:)();
      v44 = async function pointer to dispatch thunk of OutputPublisherAsync.publish(output:)[1];
      v50 = swift_task_alloc();
      *(v16 + 216) = v50;
      *v50 = v16;
      v50[1] = RedirectToServerFlow.execute();

      return dispatch thunk of OutputPublisherAsync.publish(output:)(v16 + 64, v42, v43, v45, v46, v47, v48, v49, a9, a10, a11, a12, a13, a14, a15, a16);
    }

    v53 = Logger.logObject.getter();
    v54 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      *v55 = 0;
      _os_log_impl(&dword_0, v53, v54, "#RedirectToServerFlow: Invalid location.", v55, 2u);
      OUTLINED_FUNCTION_26_0();
    }

    v57 = *(v16 + 128);
    v56 = *(v16 + 136);
    v59 = *(v16 + 112);
    v58 = *(v16 + 120);
    v60 = *(v16 + 104);

    (*(v57 + 104))(v56, enum case for FlowUnhandledReason.needsServerExecution(_:), v58);
    v61 = *(v59 + 64);
  }

  else
  {
    v51 = *(v16 + 104);
    (*(*(v16 + 128) + 104))(*(v16 + 136), enum case for FlowUnhandledReason.needsServerExecution(_:), *(v16 + 120));
    v52 = *(v30 + 64);
  }

  static ExecuteResponse.unhandled(reason:isComplete:)();
  v62 = *(v16 + 200);
  v64 = *(v16 + 168);
  v63 = *(v16 + 176);
  v65 = *(v16 + 144);
  (*(*(v16 + 128) + 8))(*(v16 + 136), *(v16 + 120));

  OUTLINED_FUNCTION_11();

  return v66();
}

uint64_t RedirectToServerFlow.execute(completion:)()
{
  type metadata accessor for RedirectToServerFlow();
  _s27PhoneCallFlowDelegatePlugin016RedirectToServerC0CAC07SiriKitC00C0AAWlTm_0(&lazy protocol witness table cache variable for type RedirectToServerFlow and conformance RedirectToServerFlow);
  return Flow.deferToExecuteAsync(_:)();
}

uint64_t RedirectToServerFlow.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  return swift_deallocClassInstance();
}

void (*protocol witness for SiriEnvironmentLocating.siriEnvironment.modify in conformance RedirectToServerFlow(void *a1))(void *a1)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v4 = *v1;
  v3[4] = SiriEnvironmentLocating<>.siriEnvironment.modify();
  return protocol witness for SiriEnvironmentLocating.siriEnvironment.modify in conformance BusinessCompositionFlow;
}

uint64_t protocol witness for Flow.execute() in conformance RedirectToServerFlow(uint64_t a1)
{
  v4 = *(**v1 + 120);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = protocol witness for Flow.execute() in conformance AnnounceCallFlow;

  return v8(a1);
}

uint64_t protocol witness for Flow.exitValue.getter in conformance RedirectToServerFlow(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for RedirectToServerFlow();

  return Flow<>.exitValue.getter(v3, a2);
}

uint64_t _s27PhoneCallFlowDelegatePlugin016RedirectToServerC0CAC07SiriKitC00C0AAWlTm_0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for RedirectToServerFlow();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *_sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay12SiriOntology9UsoEntityCG_0D28ReferenceResolutionDataModel12ResolveQueryCs5NeverOTg5033_s27PhoneCallFlowDelegatePlugin33h7Contacti183WrapperO20runCombinedSRRandCRR33_6E03C60D186988DA16A96BF8932754FFLL13siriKitIntent3app02nlW013sharedGlobals20contactGroupResolverAC20SRRResolutionResultsAELLVAA013NCRResolvableW0_p_07d91AppH03AppCAA0aB8NLIntent_pAA22SharedGlobalsProviding_pAA0G14GroupResolving_ptFZSay04SirifH9j26Model8RRResultOGyXEfU_AT12lm3C12d9Ontology9fG6CXEfU_AJ21MatchedResultsSettingOTf1cn_n(unint64_t a1, uint64_t a2)
{
  v3 = v2;
  v23 = a2;
  v22 = type metadata accessor for MatchedResultsSetting();
  v5 = *(v22 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v22);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    result = _swiftEmptyArrayStorage;
    if (!i)
    {
      break;
    }

    v24 = _swiftEmptyArrayStorage;
    result = specialized ContiguousArray.reserveCapacity(_:)();
    if (i < 0)
    {
      __break(1u);
      return result;
    }

    v21 = i;
    v19 = v3;
    v11 = a1 & 0xC000000000000001;
    swift_beginAccess();
    v12 = 0;
    v13 = a1;
    v20 = a1 & 0xFFFFFFFFFFFFFF8;
    v14 = (v5 + 16);
    while (1)
    {
      a1 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v11)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v12 >= *(v20 + 16))
        {
          goto LABEL_15;
        }

        v15 = *(v13 + 8 * v12 + 32);
      }

      (*v14)(v8, v23, v22);
      v16 = type metadata accessor for ResolveQuery();
      v17 = *(v16 + 48);
      v18 = *(v16 + 52);
      swift_allocObject();
      v5 = ResolveQuery.init(referenceEntity:alternativeEntityTypes:restrictedEntitiesKey:matchedResultsSetting:)();
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v3 = v24[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      ++v12;
      if (a1 == v21)
      {
        return v24;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  return result;
}

__n128 static ReferenceContactResolutionWrapper.resolveUpdateSKIntent(siriKitIntent:contactQueries:hasEmergencyContact:app:nlIntent:sharedGlobals:multicardinalIndex:siriKitEventSender:emergencyContactResolution:contactGroupResolver:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  ObjectType = swift_getObjectType();
  specialized static ReferenceContactResolutionWrapper.resolveUpdateSKIntent(siriKitIntent:contactQueries:hasEmergencyContact:app:nlIntent:sharedGlobals:multicardinalIndex:siriKitEventSender:emergencyContactResolution:contactGroupResolver:)(a1, a3, a4, a5, a6, a7, a8, a9 & 1, a10, a11, a12, ObjectType, a2, v22, a10, a11, v23, v24, v25, v26, v27, v28, v29, v30, v31);
  return result;
}

void specialized Sequence.filter(_:)(uint64_t a1, uint64_t *a2)
{
  v3 = specialized Array.count.getter(a1);
  v4 = 0;
  while (1)
  {
LABEL_2:
    v5 = v4;
    if (v4 == v3)
    {

      return;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v4 >= *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_20;
      }

      v6 = *(a1 + 32 + 8 * v4);
    }

    v7 = v6;
    ++v4;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    v8 = *a2;
    if (*(*a2 + 16))
    {
      v9 = *(v8 + 40);
      v10 = static Hasher._hash(seed:_:)();
      v11 = ~(-1 << *(v8 + 32));
      while (1)
      {
        v12 = v10 & v11;
        if (((*(v8 + 56 + (((v10 & v11) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v10 & v11)) & 1) == 0)
        {
          break;
        }

        v10 = v12 + 1;
        if (*(*(v8 + 48) + 8 * v12) == v5)
        {

          goto LABEL_2;
        }
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, _swiftEmptyArrayStorage[2] + 1, 1);
    }

    v14 = _swiftEmptyArrayStorage[2];
    v13 = _swiftEmptyArrayStorage[3];
    if (v14 >= v13 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1);
    }

    _swiftEmptyArrayStorage[2] = v14 + 1;
    v15 = &_swiftEmptyArrayStorage[2 * v14];
    v15[4] = v5;
    v15[5] = v7;
  }

  __break(1u);
LABEL_20:
  __break(1u);
}

uint64_t closure #1 in static ReferenceContactResolutionWrapper.runCombinedSRRandCRR(siriKitIntent:app:nlIntent:sharedGlobals:contactGroupResolver:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v7 = *a1;

  v9 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay12SiriOntology9UsoEntityCG_0D28ReferenceResolutionDataModel12ResolveQueryCs5NeverOTg5033_s27PhoneCallFlowDelegatePlugin33h7Contacti183WrapperO20runCombinedSRRandCRR33_6E03C60D186988DA16A96BF8932754FFLL13siriKitIntent3app02nlW013sharedGlobals20contactGroupResolverAC20SRRResolutionResultsAELLVAA013NCRResolvableW0_p_07d91AppH03AppCAA0aB8NLIntent_pAA22SharedGlobalsProviding_pAA0G14GroupResolving_ptFZSay04SirifH9j26Model8RRResultOGyXEfU_AT12lm3C12d9Ontology9fG6CXEfU_AJ21MatchedResultsSettingOTf1cn_n(v8, a2);

  v12[2] = a3;
  v10 = specialized Sequence.compactMap<A>(_:)(partial apply for closure #2 in closure #1 in static ReferenceContactResolutionWrapper.runCombinedSRRandCRR(siriKitIntent:app:nlIntent:sharedGlobals:contactGroupResolver:), v12, v9);

  *a4 = v10;
  return result;
}

uint64_t closure #2 in closure #1 in static ReferenceContactResolutionWrapper.runCombinedSRRandCRR(siriKitIntent:app:nlIntent:sharedGlobals:contactGroupResolver:)(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a2[3];
  v4 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v3);
  (*(v4 + 200))(v6, v3, v4);
  __swift_project_boxed_opaque_existential_1(v6, v6[3]);
  RRReferenceResolverProtocol.resolveReference(resolveQuery:)();
  return __swift_destroy_boxed_opaque_existential_1(v6);
}

void static ReferenceContactResolutionWrapper.dedupePersons(persons:sharedGlobals:)(uint64_t a1, void *a2)
{
  v76 = _swiftEmptyArrayStorage;
  v3 = specialized Array.count.getter(a1);
  if (!v3)
  {
    v25 = _swiftEmptyArrayStorage;
    goto LABEL_23;
  }

  v4 = v3;
  if (v3 < 1)
  {
LABEL_58:
    __break(1u);
    return;
  }

  for (i = 0; i != v4; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v6 = *(a1 + 8 * i + 32);
    }

    v7 = v6;
    v8 = [v6 personHandle];
    if (v8)
    {
      v9 = v8;
      v10 = a2[3];
      v11 = a2[4];
      __swift_project_boxed_opaque_existential_1(a2, v10);
      (*(v11 + 120))(v72, v10, v11);
      v12 = v73;
      v13 = v74;
      __swift_project_boxed_opaque_existential_1(v72, v73);
      v14 = (*(v13 + 48))(v12, v13);
      v16 = (*(v15 + 16))(v9, v14, v15);
      if (v16)
      {
        v17 = v16;
        __swift_destroy_boxed_opaque_existential_1(v72);
        v18 = v17;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (v76[2] >= v76[3] >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        goto LABEL_20;
      }

      __swift_destroy_boxed_opaque_existential_1(v72);
    }

    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_0_6();
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_9_0(v19, static Logger.siriPhone);
    v9 = v7;
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = OUTLINED_FUNCTION_42();
      v23 = OUTLINED_FUNCTION_49_22();
      *v22 = 138412290;
      v24 = [v9 personHandle];
      *(v22 + 4) = v24;
      *v23 = v24;
      _os_log_impl(&dword_0, v20, v21, "#ReferenceContactResolutionWrapper: Could not normalize handles %@ for validation.", v22, 0xCu);
      _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v23, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      OUTLINED_FUNCTION_26_0();
      OUTLINED_FUNCTION_26_0();
    }

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (v76[2] >= v76[3] >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
LABEL_20:
  }

  v25 = v76;
LABEL_23:
  v72[0] = _swiftEmptySetSingleton;
  v26 = v25[2];
  v27 = v25 + 4;

  v28 = 0;
  v29 = static Logger.siriPhone;
  v67 = v26;
  v68 = v25 + 4;
LABEL_24:
  while (v28 != v26)
  {
    v30 = v28;
    v31 = v25[2];
    if (v28 >= v31)
    {
      goto LABEL_57;
    }

    v32 = v27[v28++];
    if (v32)
    {
      v71 = v30 + 1;
      v33 = v72[0];
      if (*(v72[0] + 16))
      {
        v34 = *(v72[0] + 40);
        v35 = static Hasher._hash(seed:_:)();
        v36 = v33 + 56;
        v37 = ~(-1 << *(v33 + 32));
        while (1)
        {
          OUTLINED_FUNCTION_43_25(v35, v36);
          if ((v39 & 1) == 0)
          {
            break;
          }

          v35 = v38 + 1;
          if (*(*(v33 + 48) + 8 * v38) == v30)
          {
            v28 = v30 + 1;
            goto LABEL_24;
          }
        }
      }

      v28 = v30 + 1;
      if (v71 != v31)
      {
        v40 = v32;
        v41 = v30 + 1;
        v70 = v40;
        while (v41 < v31)
        {
          if (v41 >= v25[2])
          {
            goto LABEL_56;
          }

          v42 = v27[v41];
          v43 = v72[0];
          if (*(v72[0] + 16))
          {
            v44 = *(v72[0] + 40);
            v45 = static Hasher._hash(seed:_:)();
            v46 = v43 + 56;
            v47 = ~(-1 << *(v43 + 32));
            while (1)
            {
              OUTLINED_FUNCTION_43_25(v45, v46);
              if ((v49 & 1) == 0)
              {
                break;
              }

              v45 = v48 + 1;
              if (*(*(v43 + 48) + 8 * v48) == v41)
              {
                goto LABEL_49;
              }
            }
          }

          if (v42)
          {
            v50 = v42;
            if (TUHandlesAreCanonicallyEqual())
            {
              if (one-time initialization token for siriPhone != -1)
              {
                OUTLINED_FUNCTION_0_6();
                swift_once();
              }

              v51 = type metadata accessor for Logger();
              __swift_project_value_buffer(v51, v29);
              v52 = v50;
              v53 = Logger.logObject.getter();
              v54 = static os_log_type_t.debug.getter();

              if (os_log_type_enabled(v53, v54))
              {
                v55 = swift_slowAlloc();
                v56 = v25;
                v57 = v29;
                v58 = OUTLINED_FUNCTION_49_22();
                *v55 = 134218242;
                *(v55 + 4) = v41;
                *(v55 + 12) = 2112;
                *(v55 + 14) = v52;
                *v58 = v42;
                v59 = v52;
                _os_log_impl(&dword_0, v53, v54, "#ReferenceContactResolutionWrapper index:%ld handle:%@ is a dupe, filter it out.", v55, 0x16u);
                _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v58, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
                v29 = v57;
                v25 = v56;
                v27 = v68;
                OUTLINED_FUNCTION_26_0();
                OUTLINED_FUNCTION_26_0();
              }

              specialized Set._Variant.insert(_:)(&v75, v41);
              v40 = v70;
              v28 = v71;
            }

            else
            {
            }
          }

LABEL_49:
          if (++v41 == v31)
          {

            v26 = v67;
            goto LABEL_24;
          }
        }

        __break(1u);
LABEL_56:
        __break(1u);
LABEL_57:
        __break(1u);
        goto LABEL_58;
      }
    }
  }

  specialized Sequence.filter(_:)(v60, v72);
  v62 = v61;
  v63 = *(v61 + 16);
  if (v63)
  {
    v75 = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v64 = 40;
    do
    {
      v65 = *(v62 + v64);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v66 = v75[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v64 += 16;
      --v63;
    }

    while (v63);
  }
}

void static ReferenceContactResolutionWrapper.skeletonINPerson(persons:)()
{
  OUTLINED_FUNCTION_66();
  v1 = v0;
  v2 = type metadata accessor for PersonNameComponents();
  v3 = OUTLINED_FUNCTION_7(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v3);
  OUTLINED_FUNCTION_16_2();
  v50 = v8;
  __chkstk_darwin(v9);
  OUTLINED_FUNCTION_91();
  v49 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PersonNameComponentsVSgMd, &_s10Foundation20PersonNameComponentsVSgMR);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  OUTLINED_FUNCTION_16_2();
  v51 = v13;
  __chkstk_darwin(v14);
  v16 = &v44 - v15;
  v55 = _swiftEmptyArrayStorage;
  v17 = specialized Array.count.getter(v1);
  if (v17)
  {
    if (v17 < 1)
    {
      __break(1u);
      goto LABEL_28;
    }

    v18 = 0;
    v52 = v17;
    v53 = v1 & 0xC000000000000001;
    v46 = (v5 + 8);
    v47 = (v5 + 16);
    v19 = &unk_548000;
    v48 = v1;
    v45 = v2;
    do
    {
      if (v53)
      {
        v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v20 = *(v1 + 8 * v18 + 32);
      }

      v21 = v20;
      v22 = [v20 v19[365]];
      if (v22)
      {
        v23 = v22;
        static PersonNameComponents._unconditionallyBridgeFromObjectiveC(_:)();

        OUTLINED_FUNCTION_57_19(v16, 0);
      }

      else
      {
        OUTLINED_FUNCTION_57_19(v16, 1);
        v24 = [v21 personHandle];
        if (v24)
        {
          outlined bridged method (ob) of @objc INPersonHandle.value.getter(v24);
        }

        v25 = v49;
        PersonNameComponents.init()();
        PersonNameComponents.givenName.setter();
        v26 = v50;
        PersonNameComponents.init()();
        PersonNameComponents.givenName.setter();
        v27 = v51;
        v28 = v45;
        (*v47)(v51, v26, v45);
        __swift_storeEnumTagSinglePayload(v27, 0, 1, v28);
        PersonNameComponents.phoneticRepresentation.setter();
        v29 = *v46;
        (*v46)(v26, v28);
        isa = PersonNameComponents._bridgeToObjectiveC()().super.isa;
        v29(v25, v28);
        [v21 setNameComponents:isa];

        v1 = v48;
        v19 = &unk_548000;
      }

      v31 = v21;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*(&dword_10 + (v55 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v55 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      ++v18;
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }

    while (v52 != v18);
    v32 = v55;
  }

  else
  {
    v32 = _swiftEmptyArrayStorage;
  }

  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INPerson, INPerson_ptr);
  v33 = objc_allocWithZone(INPersonHandle);
  v34 = OUTLINED_FUNCTION_88();
  v35 = @nonobjc INPersonHandle.init(value:type:)(v34, 0, 0);
  v36.super.isa = INPerson.init(personHandle:)(v35).super.isa;
  v37 = specialized Array.count.getter(v32);
  if (!v37)
  {

    v43 = _swiftEmptyArrayStorage;
LABEL_26:
    outlined bridged method (mbnn) of @objc INPerson.scoredAlternatives.setter(v43, v36.super.isa);
    OUTLINED_FUNCTION_65();
    return;
  }

  v38 = v37;
  v54 = _swiftEmptyArrayStorage;
  specialized ContiguousArray.reserveCapacity(_:)();
  if ((v38 & 0x8000000000000000) == 0)
  {
    v39 = 0;
    do
    {
      if ((v32 & 0xC000000000000001) != 0)
      {
        v40 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v40 = *(v32 + 8 * v39 + 32);
      }

      v41 = v40;
      ++v39;
      [objc_allocWithZone(INScoredPerson) initWithPerson:v40 recommendation:2];

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v42 = v54[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    while (v38 != v39);

    v43 = v54;
    goto LABEL_26;
  }

LABEL_28:
  __break(1u);
}

uint64_t closure #1 in static ReferenceContactResolutionWrapper.resolveRREntity(rrEntity:siriKitIntent:app:nlIntent:sharedGlobals:contactGroupResolver:)@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = RREntity.appBundleId.getter();
  v6 = static ReferenceContactResolutionWrapper.attachSourceBundleId(person:appBundleId:)(v3, v4, v5);

  *a2 = v6;
  return result;
}

id static ReferenceContactResolutionWrapper.attachSourceBundleId(person:appBundleId:)(void *a1, uint64_t a2, unint64_t a3)
{
  v5 = static PhoneReferenceResolution.getContactSourceType(contactSource:)(a2, a3);
  if (static PhoneReferenceResolution.isTelephonyTargetFromSrr(contactSourceType:)(v5))
  {
    if (one-time initialization token for siriPhone != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, static Logger.siriPhone);

    v7 = a1;
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v16 = v12;
      *v10 = 136315394;
      *(v10 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a2, a3, &v16);
      *(v10 + 12) = 2112;
      *(v10 + 14) = v7;
      *v11 = v7;
      v13 = v7;
      _os_log_impl(&dword_0, v8, v9, "#ReferenceContactResolutionWrapper attach %s to sourceAppBundleIdentifier for person %@", v10, 0x16u);
      _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v11, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);

      __swift_destroy_boxed_opaque_existential_1(v12);
    }

    outlined bridged method (mbgnn) of @objc INPerson.sourceAppBundleIdentifier.setter(a2, a3, v7);
  }

  return a1;
}

void outlined bridged method (mbnn) of @objc INPerson.scoredAlternatives.setter(uint64_t a1, void *a2)
{
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INScoredPerson, INScoredPerson_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [a2 setScoredAlternatives:isa];
}

void outlined bridged method (mbgnn) of @objc INPerson.sourceAppBundleIdentifier.setter(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = String._bridgeToObjectiveC()();
  [a3 setSourceAppBundleIdentifier:v4];
}

void specialized static ReferenceContactResolutionWrapper.resolveUpdateSKIntent(siriKitIntent:contactQueries:hasEmergencyContact:app:nlIntent:sharedGlobals:multicardinalIndex:siriKitEventSender:emergencyContactResolution:contactGroupResolver:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  OUTLINED_FUNCTION_66();
  HIDWORD(v71) = v25;
  v81 = v26;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v75 = v33;
  v78 = v34;
  v36 = v35;
  v76 = type metadata accessor for Locale();
  v37 = OUTLINED_FUNCTION_7(v76);
  v72 = v38;
  v40 = *(v39 + 64);
  __chkstk_darwin(v37);
  OUTLINED_FUNCTION_4();
  v43 = v42 - v41;
  v79 = v32;
  v80 = v30;
  v44 = specialized static ReferenceContactResolutionWrapper.runCombinedSRRandCRR(siriKitIntent:app:nlIntent:sharedGlobals:contactGroupResolver:)(v36, v32, v30, v28, a23, a24, a25);
  v46 = v45;
  if (specialized Array.count.getter(v44))
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_0_6();
      swift_once();
    }

    v47 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_9_0(v47, static Logger.siriPhone);
    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_16_4(v49))
    {
      *OUTLINED_FUNCTION_65_0() = 0;
      OUTLINED_FUNCTION_55_20(&dword_0, v50, v51, "#ReferenceContactResolutionWrapper updated SKIntent with contacts");
      OUTLINED_FUNCTION_26_0();
    }

    (*(*(a25 + 8) + 16))(v44, a24);
  }

  if (specialized Array.count.getter(v46))
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_0_6();
      swift_once();
    }

    v52 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_9_0(v52, static Logger.siriPhone);
    v53 = Logger.logObject.getter();
    v54 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_16_4(v54))
    {
      *OUTLINED_FUNCTION_65_0() = 0;
      OUTLINED_FUNCTION_55_20(&dword_0, v55, v56, "#ReferenceContactResolutionWrapper updated SKIntent with groups");
      OUTLINED_FUNCTION_26_0();
    }

    (*(*(a25 + 8) + 32))(v46, a24);
  }

  if (specialized Array.count.getter(v46))
  {
  }

  else
  {
    v57 = specialized Array.count.getter(v44);

    if (!v57)
    {
      v66 = type metadata accessor for ContactResolution();
      v67 = v28[3];
      v68 = v28[4];
      __swift_project_boxed_opaque_existential_1(v28, v67);
      (*(v68 + 8))(v83, v67, v68);
      __swift_project_boxed_opaque_existential_1(v83, v83[3]);
      dispatch thunk of DeviceState.siriLocale.getter();
      LOBYTE(v69) = BYTE4(v71) & 1;
      specialized static ContactResolution.updateSiriKitIntent(siriKitIntent:contactQueries:hasEmergencyContact:app:locale:nlIntent:sharedGlobals:multicardinalIndex:siriKitEventSender:emergencyContactResolution:)(v36, v78, v75 & 1, v79, v43, v80, v28, v81, v69, a21, a22, v66, a24, a25, v70, v28, v71, a21, a22, v72, v74, v76, v78, v79, v80, v81);
      (*(v73 + 8))(v43, v77);
      __swift_destroy_boxed_opaque_existential_1(v83);
      OUTLINED_FUNCTION_65();
      return;
    }
  }

  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

  v58 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_9_0(v58, static Logger.siriPhone);
  v59 = v36;
  v82 = Logger.logObject.getter();
  v60 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v82, v60))
  {
    v61 = OUTLINED_FUNCTION_42();
    v62 = OUTLINED_FUNCTION_49_22();
    *v61 = 138412290;
    *(v61 + 4) = v59;
    *v62 = v59;
    v63 = v59;
    _os_log_impl(&dword_0, v82, v60, "#ReferenceContactResolutionWrapper skipping CRR - UpdatedSKIntent %@", v61, 0xCu);
    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v62, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    OUTLINED_FUNCTION_52();
    OUTLINED_FUNCTION_12_3();
  }

  OUTLINED_FUNCTION_65();
}

void *specialized static ReferenceContactResolutionWrapper.runCombinedSRRandCRR(siriKitIntent:app:nlIntent:sharedGlobals:contactGroupResolver:)(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v198 = a7;
  v200 = a6;
  v211 = a5;
  v215 = a4;
  v208 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s32SiriReferenceResolutionDataModel11RRCandidateVSgMd, &_s32SiriReferenceResolutionDataModel11RRCandidateVSgMR);
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9 - 8);
  v189 = v185 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v195 = (v185 - v13);
  v209 = type metadata accessor for RREntity();
  v191 = *(v209 - 8);
  v14 = *(v191 + 64);
  v15 = __chkstk_darwin(v209);
  v207 = v185 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v187 = v185 - v18;
  v19 = __chkstk_darwin(v17);
  v188 = v185 - v20;
  v21 = __chkstk_darwin(v19);
  v192 = v185 - v22;
  __chkstk_darwin(v21);
  v193 = v185 - v23;
  v203 = type metadata accessor for RRCandidate();
  v214 = *(v203 - 8);
  v24 = *(v214 + 64);
  v25 = __chkstk_darwin(v203);
  v206 = v185 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __chkstk_darwin(v25);
  v194 = v185 - v28;
  __chkstk_darwin(v27);
  v202 = v185 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s32SiriReferenceResolutionDataModel8RRResultOSgMd, &_s32SiriReferenceResolutionDataModel8RRResultOSgMR);
  v31 = *(*(v30 - 8) + 64);
  __chkstk_darwin(v30 - 8);
  v213 = v185 - v32;
  v201 = type metadata accessor for RRResult();
  v199 = *(v201 - 8);
  v33 = *(v199 + 64);
  v34 = __chkstk_darwin(v201);
  v186 = v185 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __chkstk_darwin(v34);
  v196 = (v185 - v37);
  __chkstk_darwin(v36);
  v197 = v185 - v38;
  v39 = type metadata accessor for MatchedResultsSetting();
  v40 = *(v39 - 8);
  v41 = *(v40 + 64);
  v42 = __chkstk_darwin(v39);
  v44 = v185 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v42);
  v46 = v185 - v45;
  v47 = a3[3];
  v48 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v47);
  v49 = (*(v48 + 144))(v47, v48);
  v217 = v49;
  v204 = v46;
  v205 = v40;
  v50 = *(v40 + 104);
  v51 = v46;
  v52 = v39;
  v50(v51, enum case for MatchedResultsSetting.defaultMatching(_:), v39);
  v53 = a3[3];
  v54 = a3[4];
  v210 = a3;
  __swift_project_boxed_opaque_existential_1(a3, v53);
  v55 = PhoneCallNLIntent.hasOnlyCallVerb()();
  v212 = a2;
  if (v55 && App.isFirstParty()() && static UsoUtils.buildDummyReferenceEntity()())
  {
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*(&dword_10 + (v217 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v217 & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v49 = v217;
    v56 = v204;
    (*(v205 + 8))(v204, v39);
    v50(v56, enum case for MatchedResultsSetting.extremelySalientResultsOnly(_:), v39);
  }

  if (!specialized Array.count.getter(v49))
  {
    v68 = v204;
    if (one-time initialization token for siriPhone != -1)
    {
      goto LABEL_94;
    }

    goto LABEL_12;
  }

  if (one-time initialization token for siriPhone != -1)
  {
LABEL_89:
    swift_once();
  }

  v57 = type metadata accessor for Logger();
  v58 = __swift_project_value_buffer(v57, static Logger.siriPhone);
  v59 = Logger.logObject.getter();
  v60 = static os_log_type_t.debug.getter();
  v61 = os_log_type_enabled(v59, v60);
  v190 = v52;
  if (v61)
  {
    v62 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    v216 = v63;
    *v62 = 136315138;
    v64 = v204;
    swift_beginAccess();
    (*(v205 + 16))(v44, v64, v52);
    v65 = String.init<A>(describing:)();
    v67 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v65, v66, &v216);

    *(v62 + 4) = v67;
    v52 = v190;
    _os_log_impl(&dword_0, v59, v60, "#ReferenceContactResolutionWrapper Querying SRR with match setting: %s", v62, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v63);
  }

  else
  {

    v64 = v204;
  }

  v73 = v203;
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INStartCallIntent, INStartCallIntent_ptr);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v75 = outlined bridged method (pb) of @objc static INIntent.typeName()(ObjCClassFromMetadata);
  __chkstk_darwin(v75);
  v185[-4] = &v217;
  v185[-3] = v64;
  v185[-2] = v215;
  static SiriKitEventSender.current.getter();
  v76 = _s27PhoneCallFlowDelegatePlugin0A21SelfPerformanceLoggerC8signpost19domainExecutionType04taskL018siriKitEventSender_xSo020FLOWSchemaFLOWDomainkL0V_SS04SirioC00toP7Sending_pxyXEtlFZSay0T28ReferenceResolutionDataModel8RRResultOG_Tt4g5();

  __swift_destroy_boxed_opaque_existential_1(&v216);
  v77 = v213;
  specialized Collection.first.getter(v76);

  v78 = v201;
  v79 = v64;
  if (__swift_getEnumTagSinglePayload(v77, 1, v201) == 1)
  {
    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v77, &_s32SiriReferenceResolutionDataModel8RRResultOSgMd, &_s32SiriReferenceResolutionDataModel8RRResultOSgMR);
LABEL_18:
    (*(v205 + 8))(v79, v52);
    goto LABEL_19;
  }

  v185[1] = v58;
  v82 = v199;
  v83 = v197;
  (*(v199 + 32))(v197, v77, v78);
  v84 = *(v82 + 16);
  v85 = v196;
  v84(v196, v83, v78);
  v86 = (*(v82 + 88))(v85, v78);
  if (v86 == enum case for RRResult.foundMatch(_:))
  {
    (*(v82 + 96))(v85, v78);
    v87 = v214;
    v88 = v202;
    (*(v214 + 32))(v202, v85, v73);
    v89 = *(v87 + 16);
    v90 = v194;
    v89(v194, v88, v73);
    v91 = Logger.logObject.getter();
    v92 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v91, v92))
    {
      v93 = swift_slowAlloc();
      v94 = swift_slowAlloc();
      v216 = v94;
      *v93 = 136315138;
      lazy protocol witness table accessor for type RRResult and conformance RRResult(&lazy protocol witness table cache variable for type RRCandidate and conformance RRCandidate, &type metadata accessor for RRCandidate);
      v95 = dispatch thunk of CustomStringConvertible.description.getter();
      v96 = v90;
      v98 = v97;
      v99 = *(v214 + 8);
      v99(v96, v73);
      v100 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v95, v98, &v216);

      *(v93 + 4) = v100;
      _os_log_impl(&dword_0, v91, v92, "#ReferenceContactResolutionWrapper .foundMatch %s", v93, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v94);

      v87 = v214;
    }

    else
    {

      v99 = *(v87 + 8);
      v99(v90, v73);
    }

    v138 = v200;
    v139 = v195;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy32SiriReferenceResolutionDataModel11RRCandidateVGMd, &_ss23_ContiguousArrayStorageCy32SiriReferenceResolutionDataModel11RRCandidateVGMR);
    v140 = *(v87 + 72);
    v141 = (*(v87 + 80) + 32) & ~*(v87 + 80);
    v142 = swift_allocObject();
    *(v142 + 16) = xmmword_424FD0;
    v89((v142 + v141), v202, v73);
    specialized Collection.first.getter(v142);

    if (__swift_getEnumTagSinglePayload(v139, 1, v73) == 1)
    {
      _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v139, &_s32SiriReferenceResolutionDataModel11RRCandidateVSgMd, &_s32SiriReferenceResolutionDataModel11RRCandidateVSgMR);
      v143 = Logger.logObject.getter();
      v144 = static os_log_type_t.debug.getter();
      v145 = os_log_type_enabled(v143, v144);
      v146 = v190;
      v147 = v204;
      v148 = v199;
      if (v145)
      {
        v149 = swift_slowAlloc();
        *v149 = 0;
        _os_log_impl(&dword_0, v143, v144, "#ReferenceContactResolutionWrapper no entity resolved for rrCandidate", v149, 2u);
      }

      v80 = _swiftEmptyArrayStorage;
    }

    else
    {
      v164 = v192;
      RRCandidate.entity.getter();
      v99(v139, v73);
      v165 = v191;
      v166 = v193;
      v167 = v209;
      (*(v191 + 32))(v193, v164, v209);
      v80 = specialized static ReferenceContactResolutionWrapper.resolveRREntity(rrEntity:siriKitIntent:app:nlIntent:sharedGlobals:contactGroupResolver:)(v166, v208, v212, v210, v215, v211, v138, v198);
      (*(v165 + 8))(v166, v167);
      v146 = v190;
      v147 = v204;
      v148 = v199;
    }

    v99(v202, v73);
    (*(v148 + 8))(v197, v201);
    (*(v205 + 8))(v147, v146);
    goto LABEL_20;
  }

  if (v86 != enum case for RRResult.needsDisambiguation(_:))
  {
    if (v86 == enum case for RRResult.foundMatchPlural(_:))
    {
      (*(v199 + 96))(v85, v201);
      v150 = *v85;

      v151 = Logger.logObject.getter();
      v152 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v151, v152))
      {
        v153 = swift_slowAlloc();
        v154 = swift_slowAlloc();
        v216 = v154;
        *v153 = 136315138;
        v155 = Array.description.getter();
        v157 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v155, v156, &v216);

        *(v153 + 4) = v157;
        v83 = v197;
        _os_log_impl(&dword_0, v151, v152, "#ReferenceContactResolutionWrapper .foundMatchPlural %s", v153, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v154);
      }

      v158 = v200;
      v159 = v189;
      specialized Collection.first.getter(v150);

      if (__swift_getEnumTagSinglePayload(v159, 1, v73) != 1)
      {
        v170 = v187;
        RRCandidate.entity.getter();
        (*(v214 + 8))(v159, v73);
        v171 = v191;
        v172 = v188;
        v173 = v209;
        (*(v191 + 32))(v188, v170, v209);
        v80 = specialized static ReferenceContactResolutionWrapper.resolveRREntity(rrEntity:siriKitIntent:app:nlIntent:sharedGlobals:contactGroupResolver:)(v172, v208, v212, v210, v215, v211, v158, v198);
        (*(v171 + 8))(v172, v173);
        (*(v199 + 8))(v83, v201);
        (*(v205 + 8))(v79, v52);
        goto LABEL_20;
      }

      _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v159, &_s32SiriReferenceResolutionDataModel11RRCandidateVSgMd, &_s32SiriReferenceResolutionDataModel11RRCandidateVSgMR);
      v160 = Logger.logObject.getter();
      v161 = static os_log_type_t.debug.getter();
      if (!os_log_type_enabled(v160, v161))
      {
        goto LABEL_79;
      }

      v162 = swift_slowAlloc();
      *v162 = 0;
      v163 = "#ReferenceContactResolutionWrapper no entity resolved for rrCandidate";
    }

    else
    {
      if (v86 != enum case for RRResult.noMatch(_:))
      {
        v174 = v186;
        v175 = v201;
        v84(v186, v83, v201);
        v176 = Logger.logObject.getter();
        v177 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v176, v177))
        {
          v178 = swift_slowAlloc();
          v179 = swift_slowAlloc();
          v216 = v179;
          *v178 = 136315138;
          lazy protocol witness table accessor for type RRResult and conformance RRResult(&lazy protocol witness table cache variable for type RRResult and conformance RRResult, &type metadata accessor for RRResult);
          v180 = dispatch thunk of CustomStringConvertible.description.getter();
          v182 = v181;
          v183 = *(v199 + 8);
          v183(v174, v175);
          v184 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v180, v182, &v216);

          *(v178 + 4) = v184;
          _os_log_impl(&dword_0, v176, v177, "#ReferenceContactResolutionWrapper dropping result of type %s!", v178, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v179);

          v183(v197, v175);
        }

        else
        {

          v183 = *(v199 + 8);
          v183(v174, v175);
          v183(v83, v175);
        }

        v183(v196, v175);
        v52 = v190;
        v79 = v204;
        goto LABEL_18;
      }

      v160 = Logger.logObject.getter();
      v161 = static os_log_type_t.debug.getter();
      if (!os_log_type_enabled(v160, v161))
      {
        goto LABEL_79;
      }

      v162 = swift_slowAlloc();
      *v162 = 0;
      v163 = "#ReferenceContactResolutionWrapper found a .nomatch";
    }

    _os_log_impl(&dword_0, v160, v161, v163, v162, 2u);

LABEL_79:

    (*(v199 + 8))(v83, v201);
    goto LABEL_18;
  }

  v101 = v199;
  (*(v199 + 96))(v85, v201);
  v102 = *v85;

  v103 = Logger.logObject.getter();
  v104 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v103, v104))
  {
    v105 = swift_slowAlloc();
    v106 = swift_slowAlloc();
    v216 = v106;
    *v105 = 136315138;
    v107 = Array.description.getter();
    v109 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v107, v108, &v216);

    *(v105 + 4) = v109;
    _os_log_impl(&dword_0, v103, v104, "#ReferenceContactResolutionWrapper found a .needsDisambiguation match %s", v105, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v106);
  }

  v52 = v200;
  v110 = v212;
  v196 = *(v102 + 16);
  if (!v196)
  {

    v44 = _swiftEmptyArrayStorage;
LABEL_81:
    static ReferenceContactResolutionWrapper.dedupePersons(persons:sharedGlobals:)(v44, v215);

    static ReferenceContactResolutionWrapper.skeletonINPerson(persons:)();
    v169 = v168;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v80 = swift_allocObject();
    *(v80 + 1) = xmmword_426260;
    v80[4] = v169;
    (*(v101 + 8))(v197, v201);
    (*(v205 + 8))(v204, v190);
    goto LABEL_20;
  }

  v111 = v102;
  v112 = 0;
  v195 = *(v214 + 16);
  v113 = (*(v214 + 80) + 32) & ~*(v214 + 80);
  v186 = v111;
  v194 = &v111[v113];
  v44 = _swiftEmptyArrayStorage;
  v193 = (v214 + 8);
  v192 = *(v214 + 72);
  v191 += 8;
  v114 = v198;
  v214 += 16;
  while (1)
  {
    v115 = v206;
    v195(v206, &v194[v192 * v112], v73);
    v116 = v207;
    RRCandidate.entity.getter();
    (*v193)(v115, v73);
    v117 = specialized static ReferenceContactResolutionWrapper.resolveRREntity(rrEntity:siriKitIntent:app:nlIntent:sharedGlobals:contactGroupResolver:)(v116, v208, v110, v210, v215, v211, v52, v114);
    (*v191)(v116, v209);

    if (v117 >> 62)
    {
      v68 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v68 = *(&dword_10 + (v117 & 0xFFFFFFFFFFFFFF8));
    }

    v118 = v44 >> 62;
    if (v44 >> 62)
    {
      v119 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v119 = *(&dword_10 + (v44 & 0xFFFFFFFFFFFFFF8));
    }

    v120 = v119 + v68;
    if (__OFADD__(v119, v68))
    {
      __break(1u);
LABEL_88:
      __break(1u);
      goto LABEL_89;
    }

    if (swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (v118)
      {
        goto LABEL_41;
      }

      v121 = v44 & 0xFFFFFFFFFFFFFF8;
      if (v120 <= *(&dword_18 + (v44 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        v213 = v44;
        goto LABEL_43;
      }
    }

    else
    {
      if (v118)
      {
LABEL_41:
        _CocoaArrayWrapper.endIndex.getter();
        goto LABEL_42;
      }

      v121 = v44 & 0xFFFFFFFFFFFFFF8;
    }

    v122 = *(v121 + 16);
LABEL_42:
    v213 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    v121 = v213 & 0xFFFFFFFFFFFFFF8;
LABEL_43:
    v123 = *(v121 + 16);
    v124 = (*(v121 + 24) >> 1) - v123;
    v125 = v121 + 8 * v123;
    v202 = v121;
    if (v117 >> 62)
    {
      break;
    }

    v126 = *(&dword_10 + (v117 & 0xFFFFFFFFFFFFFF8));
    if (v126)
    {
      if (v124 < v126)
      {
        goto LABEL_92;
      }

      type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INPerson, INPerson_ptr);
      swift_arrayInitWithCopy();
      goto LABEL_53;
    }

LABEL_57:

    v44 = v213;
    if (v68 > 0)
    {
      goto LABEL_88;
    }

LABEL_58:
    ++v112;
    v110 = v212;
    if (v112 == v196)
    {

      v101 = v199;
      goto LABEL_81;
    }
  }

  v127 = _CocoaArrayWrapper.endIndex.getter();
  if (!v127)
  {
    goto LABEL_57;
  }

  v128 = v127;
  v129 = _CocoaArrayWrapper.endIndex.getter();
  if (v124 < v129)
  {
    goto LABEL_91;
  }

  if (v128 < 1)
  {
    goto LABEL_93;
  }

  v187 = v129;
  v188 = v68;
  v189 = v112;
  v130 = v125 + 32;
  lazy protocol witness table accessor for type [INPerson] and conformance [A]();
  for (i = 0; i != v128; ++i)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8INPersonCGMd, &_sSaySo8INPersonCGMR);
    v132 = specialized protocol witness for Collection.subscript.read in conformance [A](&v216, i, v117);
    v134 = *v133;
    v132(&v216, 0);
    *(v130 + 8 * i) = v134;
  }

  v114 = v198;
  v52 = v200;
  v73 = v203;
  v112 = v189;
  v68 = v188;
  v126 = v187;
LABEL_53:

  v44 = v213;
  if (v126 < v68)
  {
    goto LABEL_88;
  }

  if (v126 <= 0)
  {
    goto LABEL_58;
  }

  v135 = *(v202 + 2);
  v136 = __OFADD__(v135, v126);
  v137 = v135 + v126;
  if (!v136)
  {
    *(v202 + 2) = v137;
    goto LABEL_58;
  }

  __break(1u);
LABEL_91:
  __break(1u);
LABEL_92:
  __break(1u);
LABEL_93:
  __break(1u);
LABEL_94:
  swift_once();
LABEL_12:
  v69 = type metadata accessor for Logger();
  __swift_project_value_buffer(v69, static Logger.siriPhone);
  v70 = Logger.logObject.getter();
  v71 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v70, v71))
  {
    v72 = swift_slowAlloc();
    *v72 = 0;
    _os_log_impl(&dword_0, v70, v71, "#ReferenceContactResolutionWrapper - No references found", v72, 2u);
  }

  (*(v205 + 8))(v68, v52);
LABEL_19:
  v80 = _swiftEmptyArrayStorage;
LABEL_20:

  return v80;
}

uint64_t specialized static ReferenceContactResolutionWrapper.resolveRREntity(rrEntity:siriKitIntent:app:nlIntent:sharedGlobals:contactGroupResolver:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v40 = a7;
  v41 = a8;
  v38 = a4;
  v39 = a5;
  v37 = a3;
  static Signpost.begin(_:)();
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INPerson, INPerson_ptr);
  v10 = RREntity.convertData<A>(to:)();
  Signpost.OpenSignpost.end()();
  if (v10)
  {
    v11 = one-time initialization token for siriPhone;
    v12 = v10;
    if (v11 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    __swift_project_value_buffer(v13, static Logger.siriPhone);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_0, v14, v15, "#ReferenceContactResolutionWrapper resolved to an INPerson", v16, 2u);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v17 = swift_allocObject();
    v18 = v17;
    *(v17 + 16) = xmmword_426260;
    *(v17 + 32) = v12;
  }

  else
  {
    RREntity.usoEntity.getter();
    type metadata accessor for UsoEntity_common_Person();
    static UsoEntity_CodeGenConverter.convertAs<A>(entity:asType:)();

    if (v42)
    {
      if (one-time initialization token for siriPhone != -1)
      {
        swift_once();
      }

      v19 = type metadata accessor for Logger();
      __swift_project_value_buffer(v19, static Logger.siriPhone);
      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&dword_0, v20, v21, "#ReferenceContactResolutionWrapper resolved to a common_Person", v22, 2u);
      }

      v23 = type metadata accessor for ContactResolution();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy13SiriInference12ContactQueryVGMd, &_ss23_ContiguousArrayStorageCy13SiriInference12ContactQueryVGMR);
      v24 = *(type metadata accessor for ContactQuery() - 8);
      v25 = *(v24 + 72);
      v26 = (*(v24 + 80) + 32) & ~*(v24 + 80);
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_424FD0;
      UsoEntity_common_Person.toContactQuery()();
      specialized static ContactResolution.resolveContactQueries(contactQueries:siriKitIntent:app:nlIntent:sharedGlobals:)(v27, a2, v37, v38, v39, v23, v40, v41, v36[4], v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47);
      v18 = v28;
    }

    else
    {
      RREntity.usoEntity.getter();
      type metadata accessor for UsoEntity_common_Group();
      static UsoEntity_CodeGenConverter.convertAs<A>(entity:asType:)();

      RREntity.usoEntity.getter();
      type metadata accessor for UsoEntity_common_Agent();
      static UsoEntity_CodeGenConverter.convertAs<A>(entity:asType:)();

      RREntity.usoEntity.getter();
      type metadata accessor for UsoEntity_common_App();
      static UsoEntity_CodeGenConverter.convertAs<A>(entity:asType:)();

      if (one-time initialization token for siriPhone != -1)
      {
        swift_once();
      }

      v32 = type metadata accessor for Logger();
      __swift_project_value_buffer(v32, static Logger.siriPhone);
      v33 = Logger.logObject.getter();
      v34 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        *v35 = 0;
        _os_log_impl(&dword_0, v33, v34, "#ReferenceContactResolutionWrapper resolved entity was not recognized as a person or group", v35, 2u);
      }

      v18 = _swiftEmptyArrayStorage;
    }
  }

  __chkstk_darwin(v17);
  v36[2] = a1;
  specialized Sequence.compactMap<A>(_:)(closure #1 in static ReferenceContactResolutionWrapper.resolveRREntity(rrEntity:siriKitIntent:app:nlIntent:sharedGlobals:contactGroupResolver:)partial apply, v36, v18);
  v30 = v29;

  return v30;
}

void specialized static ReferenceContactResolutionWrapper.resolveCommonGroup(group:siriKitIntent:app:nlIntent:sharedGlobals:contactGroupResolver:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v54 = a7;
  v55 = a8;
  v53 = a4;
  v52 = a3;
  v51 = a2;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVySay27PhoneCallFlowDelegatePlugin8SmsGroup_pGSaySo06INCallJ0CGSgGMd, &_s13SiriUtilities11TransformerVySay27PhoneCallFlowDelegatePlugin8SmsGroup_pGSaySo06INCallJ0CGSgGMR);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v49 - v14;
  v57 = type metadata accessor for ContactQuery();
  v16 = *(v57 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v57);
  v50 = &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = dispatch thunk of UsoEntity_common_Group.name.getter();
  v21 = specialized Optional<A>.isNilOrEmpty.getter(v19, v20);

  if ((v21 & 1) != 0 && (v22 = dispatch thunk of UsoEntity_common_Group.members.getter()) != 0)
  {
    v23 = v22;
    v49 = a5;
    v61[0] = _swiftEmptyArrayStorage;
    a6 = specialized Array.count.getter(v22);
    v11 = 0;
    a5 = (v23 & 0xC000000000000001);
    a1 = v23 & 0xFFFFFFFFFFFFFF8;
    v56 = _swiftEmptyArrayStorage;
    while (a6 != v11)
    {
      if (a5)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v11 >= *(&dword_10 + (v23 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_35;
        }

        v24 = *(v23 + 8 * v11 + 32);
      }

      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        __break(1u);
LABEL_35:
        __break(1u);
        goto LABEL_36;
      }

      dispatch thunk of CodeGenListEntry.entry.getter();

      v15 = *&v60[0];
      ++v11;
      if (*&v60[0])
      {
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*(&dword_10 + (v61[0] & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v61[0] & 0xFFFFFFFFFFFFFF8)) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v56 = v61[0];
        v11 = v12;
      }
    }

    v34 = v56;
    v35 = specialized Array.count.getter(v56);
    if (v35)
    {
      v36 = v35;
      v61[0] = _swiftEmptyArrayStorage;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      if (v36 < 0)
      {
        __break(1u);
        return;
      }

      v37 = 0;
      v38 = v61[0];
      v39 = v34 & 0xC000000000000001;
      v40 = v50;
      do
      {
        if (v39)
        {
          specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v41 = *(v34 + 8 * v37 + 32);
        }

        UsoEntity_common_Agent.toContactQuery()();

        v61[0] = v38;
        v42 = v38[2];
        if (v42 >= v38[3] >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          v38 = v61[0];
        }

        ++v37;
        v38[2] = v42 + 1;
        (*(v16 + 32))(v38 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + *(v16 + 72) * v42, v40, v57);
        v34 = v56;
      }

      while (v36 != v37);
    }

    else
    {

      v38 = _swiftEmptyArrayStorage;
    }

    v43 = v49;
    if (one-time initialization token for siriPhone != -1)
    {
      swift_once();
    }

    v44 = type metadata accessor for Logger();
    __swift_project_value_buffer(v44, static Logger.siriPhone);
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&dword_0, v45, v46, "#ReferenceContactResolutionWrapper resolved to an unnamed common_Group", v47, 2u);
    }

    v48 = type metadata accessor for ContactResolution();
    specialized static ContactResolution.resolveContactQueries(contactQueries:siriKitIntent:app:nlIntent:sharedGlobals:)(v38, v51, v52, v53, v43, v48, v54, v55, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, *&v59[0], *(&v59[0] + 1));
  }

  else
  {
    if (one-time initialization token for siriPhone != -1)
    {
LABEL_36:
      swift_once();
    }

    v57 = v12;
    v25 = type metadata accessor for Logger();
    __swift_project_value_buffer(v25, static Logger.siriPhone);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_0, v26, v27, "#ReferenceContactResolutionWrapper resolved to a named common_Group", v28, 2u);
    }

    v29 = a5[3];
    v30 = a5[4];
    __swift_project_boxed_opaque_existential_1(a5, v29);
    (*(v30 + 8))(v61, v29, v30);
    outlined init with copy of SignalProviding(v61, v60);
    outlined init with copy of SignalProviding(a6, v59);
    v31 = swift_allocObject();
    outlined init with take of SPHConversation(v60, v31 + 16);
    outlined init with take of SPHConversation(v59, v31 + 56);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay27PhoneCallFlowDelegatePlugin8SmsGroup_pGMd, &_sSay27PhoneCallFlowDelegatePlugin8SmsGroup_pGMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo11INCallGroupCGSgMd, &_sSaySo11INCallGroupCGSgMR);
    Transformer.init(transform:)();
    __swift_destroy_boxed_opaque_existential_1(v61);
    v32 = Transformer.transform.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy27PhoneCallFlowDelegatePlugin8SmsGroup_pGMd, &_ss23_ContiguousArrayStorageCy27PhoneCallFlowDelegatePlugin8SmsGroup_pGMR);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_424FD0;
    *(v33 + 56) = type metadata accessor for UsoEntity_common_Group();
    *(v33 + 64) = &protocol witness table for UsoEntity_common_Group;
    *(v33 + 32) = a1;
    v61[0] = v33;

    v32(v60, v61);

    (*(v57 + 8))(v15, v11);
  }
}

void _s27PhoneCallFlowDelegatePlugin33ReferenceContactResolutionWrapperO21resolveUpdateSKIntent13siriKitIntent14contactQueries012hasEmergencyG03app02nlO013sharedGlobals18multicardinalIndex0mN11EventSender09emergencygH00P13GroupResolveryAA013NCRResolvableO0_p_Say13SiriInference0G5QueryVGSb07SiriAppH03AppCAA0aB8NLIntent_pAA06SharedW9Providing_pSiSg04SirinC004SirinZ7Sending_pAA0sgH0CAA0G14GroupResolving_ptFZTf4ennnnnnnnnn_nSo07INStartbO0C_Tt9g5Tf4nnnnnnnnne_n()
{
  OUTLINED_FUNCTION_66();
  v88 = OUTLINED_FUNCTION_7_64(v4, v5, v6, v7, v8, v9, v10, v11);
  v12 = OUTLINED_FUNCTION_7(v88);
  v83 = v13;
  v15 = *(v14 + 64);
  __chkstk_darwin(v12);
  OUTLINED_FUNCTION_4();
  v77 = v17 - v16;
  OUTLINED_FUNCTION_9_1();
  v19 = *(v18 + 64);
  __chkstk_darwin(v20);
  OUTLINED_FUNCTION_4();
  v22 = OUTLINED_FUNCTION_10_64(v21);
  v24 = v23(v22);
  OUTLINED_FUNCTION_11_53(v24, v25, v26, v27, v28, v29, v30, closure #1 in static ReferenceContactResolutionWrapper.runCombinedSRRandCRR(siriKitIntent:app:nlIntent:sharedGlobals:contactGroupResolver:)partial apply, closure #1 in static ReferenceContactResolutionWrapper.resolveRREntity(rrEntity:siriKitIntent:app:nlIntent:sharedGlobals:contactGroupResolver:)partial apply, _s27PhoneCallFlowDelegatePlugin17ContactResolutionC07resolveF7Queries07contactI013siriKitIntent3app02nlM013sharedGlobalsSaySo8INPersonCGSay13SiriInference0F5QueryVG_AA013NCRResolvableM0_p0s3AppG00W0CSgAA0aB8NLIntent_pAA06SharedQ9Providing_ptFZTf4nennnn_nSo07INStartbM0C_Tt4g5, _s27PhoneCallFlowDelegatePlugin17ContactResolutionC07resolveF7Queries07contactI013siriKitIntent3app02nlM013sharedGlobalsSaySo8INPersonCGSay13SiriInference0F5QueryVG_AA013NCRResolvableM0_p0s3AppG00W0CSgAA0aB8NLIntent_pAA06SharedQ9Providing_ptFZTf4nennnn_nSo07INStartbM0C_Tt4g5, &unk_52DC48, closure #1 in static Transformer<>.transformer(device:groupResolver:)partial apply, v71, v73, v75, v77, v79, v81, v83, v85, v87, v88, v89, v90);
  if (OUTLINED_FUNCTION_50_22())
  {
    OUTLINED_FUNCTION_11_8();
    if (!v31)
    {
      OUTLINED_FUNCTION_0_6();
      swift_once();
    }

    v32 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_9_0(v32, static Logger.siriPhone);
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_6_43(v34))
    {
      v35 = OUTLINED_FUNCTION_65_0();
      OUTLINED_FUNCTION_39_22(v35);
      OUTLINED_FUNCTION_14_51(&dword_0, v36, v37, "#ReferenceContactResolutionWrapper updated SKIntent with contacts");
      OUTLINED_FUNCTION_14_0();
    }

    v0 = v1;
    INStartCallIntent.overwriteContacts(newContacts:)(v2);
  }

  if (specialized Array.count.getter(v3._rawValue))
  {
    OUTLINED_FUNCTION_11_8();
    if (!v31)
    {
      OUTLINED_FUNCTION_0_6();
      swift_once();
    }

    v38 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_9_0(v38, static Logger.siriPhone);
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_6_43(v40))
    {
      v41 = OUTLINED_FUNCTION_65_0();
      OUTLINED_FUNCTION_39_22(v41);
      OUTLINED_FUNCTION_14_51(&dword_0, v42, v43, "#ReferenceContactResolutionWrapper updated SKIntent with groups");
      OUTLINED_FUNCTION_14_0();
    }

    v0 = v1;
    INStartCallIntent.overwriteCallGroups(newCallGroups:)(v3);
  }

  if (specialized Array.count.getter(v3._rawValue))
  {
  }

  else
  {
    specialized Array.count.getter(v2._rawValue);
    OUTLINED_FUNCTION_51_25();

    if (!v0)
    {
      v53 = OUTLINED_FUNCTION_9_63();
      v54(v53);
      __swift_project_boxed_opaque_existential_1(v91, v91[3]);
      OUTLINED_FUNCTION_12_56();
      dispatch thunk of DeviceState.siriLocale.getter();
      v55 = v80[4];
      __swift_project_boxed_opaque_existential_1(v80, v80[3]);
      v56 = OUTLINED_FUNCTION_2_98();
      _s27PhoneCallFlowDelegatePlugin17ContactResolutionC19updateSiriKitIntent04sirijK014contactQueries012hasEmergencyF03app6locale02nlK013sharedGlobals18multicardinalIndex0lJ11EventSender09emergencyfG0yAA013NCRResolvableK0_p_Say0I9Inference0F5QueryVGSb0i3AppG03AppCSg10Foundation6LocaleVAA0aB8NLIntent_pAA06SharedU9Providing_pSiSg0ijC00ijX7Sending_pAA0pfG0CtFZTf4ennnnnnnnnn_nSo07INStartbK0C_Tt9g5Tf4nnnnnennnn_n(v56, v57, v58, v59, v60, v61, v62, v63, v66, v67, v68, v69, v70, v72, v74, v76, v78, v80, v82, v84, v86);
      v64 = OUTLINED_FUNCTION_17_43();
      v65(v64);
      __swift_destroy_boxed_opaque_existential_1(v91);
      goto LABEL_21;
    }
  }

  OUTLINED_FUNCTION_11_8();
  if (!v31)
  {
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

  v44 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_9_0(v44, static Logger.siriPhone);
  v45 = v1;
  v46 = Logger.logObject.getter();
  v47 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v46, v47))
  {
    OUTLINED_FUNCTION_42();
    v48 = OUTLINED_FUNCTION_49_22();
    OUTLINED_FUNCTION_48_21(v48, 5.7779e-34);
    OUTLINED_FUNCTION_45_1(&dword_0, v49, v50, "#ReferenceContactResolutionWrapper skipping CRR - UpdatedSKIntent %@");
    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v48, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    OUTLINED_FUNCTION_26_0();
    OUTLINED_FUNCTION_14_0();
  }

LABEL_21:
  v51 = OUTLINED_FUNCTION_41_28();
  v52(v51);
  OUTLINED_FUNCTION_65();
}

void _s27PhoneCallFlowDelegatePlugin33ReferenceContactResolutionWrapperO21resolveUpdateSKIntent13siriKitIntent14contactQueries012hasEmergencyG03app02nlO013sharedGlobals18multicardinalIndex0mN11EventSender09emergencygH00P13GroupResolveryAA013NCRResolvableO0_p_Say13SiriInference0G5QueryVGSb07SiriAppH03AppCAA0aB8NLIntent_pAA06SharedW9Providing_pSiSg04SirinC004SirinZ7Sending_pAA0sgH0CAA0G14GroupResolving_ptFZTf4ennnnnnnnnn_nSo012INStartAudiobO0C_Tt9g5Tf4nnnnnnnnne_n()
{
  OUTLINED_FUNCTION_66();
  v87 = OUTLINED_FUNCTION_7_64(v4, v5, v6, v7, v8, v9, v10, v11);
  v12 = OUTLINED_FUNCTION_7(v87);
  v82 = v13;
  v15 = *(v14 + 64);
  __chkstk_darwin(v12);
  OUTLINED_FUNCTION_4();
  v76 = v17 - v16;
  OUTLINED_FUNCTION_9_1();
  v19 = *(v18 + 64);
  __chkstk_darwin(v20);
  OUTLINED_FUNCTION_4();
  v22 = OUTLINED_FUNCTION_10_64(v21);
  v24 = v23(v22);
  OUTLINED_FUNCTION_11_53(v24, v25, v26, v27, v28, v29, v30, closure #1 in static ReferenceContactResolutionWrapper.runCombinedSRRandCRR(siriKitIntent:app:nlIntent:sharedGlobals:contactGroupResolver:)partial apply, closure #1 in static ReferenceContactResolutionWrapper.resolveRREntity(rrEntity:siriKitIntent:app:nlIntent:sharedGlobals:contactGroupResolver:)partial apply, _s27PhoneCallFlowDelegatePlugin17ContactResolutionC07resolveF7Queries07contactI013siriKitIntent3app02nlM013sharedGlobalsSaySo8INPersonCGSay13SiriInference0F5QueryVG_AA013NCRResolvableM0_p0s3AppG00W0CSgAA0aB8NLIntent_pAA06SharedQ9Providing_ptFZTf4nennnn_nSo012INStartAudiobM0C_Tt4g5, _s27PhoneCallFlowDelegatePlugin17ContactResolutionC07resolveF7Queries07contactI013siriKitIntent3app02nlM013sharedGlobalsSaySo8INPersonCGSay13SiriInference0F5QueryVG_AA013NCRResolvableM0_p0s3AppG00W0CSgAA0aB8NLIntent_pAA06SharedQ9Providing_ptFZTf4nennnn_nSo012INStartAudiobM0C_Tt4g5, &unk_52DC20, closure #1 in static Transformer<>.transformer(device:groupResolver:)partial apply, v70, v72, v74, v76, v78, v80, v82, v84, v86, v87, v88, v89);
  if (OUTLINED_FUNCTION_50_22())
  {
    OUTLINED_FUNCTION_11_8();
    if (!v31)
    {
      OUTLINED_FUNCTION_0_6();
      swift_once();
    }

    v32 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_9_0(v32, static Logger.siriPhone);
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_6_43(v34))
    {
      v35 = OUTLINED_FUNCTION_65_0();
      OUTLINED_FUNCTION_39_22(v35);
      OUTLINED_FUNCTION_14_51(&dword_0, v36, v37, "#ReferenceContactResolutionWrapper updated SKIntent with contacts");
      OUTLINED_FUNCTION_14_0();
    }

    v0 = v1;
    INStartAudioCallIntent.overwriteContacts(newContacts:)(v2);
  }

  if (specialized Array.count.getter(v3))
  {
    OUTLINED_FUNCTION_11_8();
    if (!v31)
    {
      OUTLINED_FUNCTION_0_6();
      swift_once();
    }

    v38 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_9_0(v38, static Logger.siriPhone);
    v0 = Logger.logObject.getter();
    v39 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_6_43(v39))
    {
      v40 = OUTLINED_FUNCTION_65_0();
      OUTLINED_FUNCTION_39_22(v40);
      OUTLINED_FUNCTION_14_51(&dword_0, v41, v42, "#ReferenceContactResolutionWrapper updated SKIntent with groups");
      OUTLINED_FUNCTION_14_0();
    }
  }

  if (specialized Array.count.getter(v3))
  {
  }

  else
  {
    specialized Array.count.getter(v2._rawValue);
    OUTLINED_FUNCTION_51_25();

    if (!v0)
    {
      v52 = OUTLINED_FUNCTION_9_63();
      v53(v52);
      __swift_project_boxed_opaque_existential_1(v90, v90[3]);
      OUTLINED_FUNCTION_12_56();
      dispatch thunk of DeviceState.siriLocale.getter();
      v54 = v79[4];
      __swift_project_boxed_opaque_existential_1(v79, v79[3]);
      v55 = OUTLINED_FUNCTION_2_98();
      _s27PhoneCallFlowDelegatePlugin17ContactResolutionC19updateSiriKitIntent04sirijK014contactQueries012hasEmergencyF03app6locale02nlK013sharedGlobals18multicardinalIndex0lJ11EventSender09emergencyfG0yAA013NCRResolvableK0_p_Say0I9Inference0F5QueryVGSb0i3AppG03AppCSg10Foundation6LocaleVAA0aB8NLIntent_pAA06SharedU9Providing_pSiSg0ijC00ijX7Sending_pAA0pfG0CtFZTf4ennnnnnnnnn_nSo012INStartAudiobK0C_Tt9g5Tf4nnnnnennnn_n(v55, v56, v57, v58, v59, v60, v61, v62, v65, v66, v67, v68, v69, v71, v73, v75, v77, v79, v81, v83, v85);
      v63 = OUTLINED_FUNCTION_17_43();
      v64(v63);
      __swift_destroy_boxed_opaque_existential_1(v90);
      goto LABEL_21;
    }
  }

  OUTLINED_FUNCTION_11_8();
  if (!v31)
  {
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

  v43 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_9_0(v43, static Logger.siriPhone);
  v44 = v1;
  v45 = Logger.logObject.getter();
  v46 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v45, v46))
  {
    OUTLINED_FUNCTION_42();
    v47 = OUTLINED_FUNCTION_49_22();
    OUTLINED_FUNCTION_48_21(v47, 5.7779e-34);
    OUTLINED_FUNCTION_45_1(&dword_0, v48, v49, "#ReferenceContactResolutionWrapper skipping CRR - UpdatedSKIntent %@");
    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v47, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    OUTLINED_FUNCTION_26_0();
    OUTLINED_FUNCTION_14_0();
  }

LABEL_21:
  v50 = OUTLINED_FUNCTION_41_28();
  v51(v50);
  OUTLINED_FUNCTION_65();
}

void _s27PhoneCallFlowDelegatePlugin33ReferenceContactResolutionWrapperO20runCombinedSRRandCRR33_6E03C60D186988DA16A96BF8932754FFLL13siriKitIntent3app02nlW013sharedGlobals20contactGroupResolverAC20SRRResolutionResultsAELLVAA013NCRResolvableW0_p_07SiriAppH03AppCAA0aB8NLIntent_pAA22SharedGlobalsProviding_pAA0G14GroupResolving_ptFZTf4ennnnn_nSo07INStartbW0C_Tt4g5Tf4nnnne_nTm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  OUTLINED_FUNCTION_66();
  v305 = v25;
  v301 = v26;
  v28 = v27;
  v307 = v29;
  v31 = v30;
  v33 = v32;
  v298 = v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s32SiriReferenceResolutionDataModel11RRCandidateVSgMd, &_s32SiriReferenceResolutionDataModel11RRCandidateVSgMR);
  v36 = *(*(v35 - 8) + 64);
  __chkstk_darwin(v35 - 8);
  OUTLINED_FUNCTION_16_2();
  OUTLINED_FUNCTION_9_3();
  __chkstk_darwin(v37);
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_13(v38);
  v299 = type metadata accessor for RREntity();
  v39 = OUTLINED_FUNCTION_7(v299);
  v278 = v40;
  v42 = *(v41 + 64);
  __chkstk_darwin(v39);
  OUTLINED_FUNCTION_16_2();
  v297 = v43;
  __chkstk_darwin(v44);
  OUTLINED_FUNCTION_13_5();
  OUTLINED_FUNCTION_9_3();
  __chkstk_darwin(v45);
  OUTLINED_FUNCTION_13_5();
  OUTLINED_FUNCTION_9_3();
  __chkstk_darwin(v46);
  OUTLINED_FUNCTION_13_5();
  OUTLINED_FUNCTION_9_3();
  __chkstk_darwin(v47);
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_13(v48);
  v303 = type metadata accessor for RRCandidate();
  v49 = OUTLINED_FUNCTION_7(v303);
  v306 = v50;
  v52 = *(v51 + 64);
  __chkstk_darwin(v49);
  OUTLINED_FUNCTION_16_2();
  OUTLINED_FUNCTION_9_3();
  __chkstk_darwin(v53);
  OUTLINED_FUNCTION_13_5();
  OUTLINED_FUNCTION_9_3();
  __chkstk_darwin(v54);
  OUTLINED_FUNCTION_91();
  v283 = v55;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s32SiriReferenceResolutionDataModel8RRResultOSgMd, &_s32SiriReferenceResolutionDataModel8RRResultOSgMR);
  v57 = *(*(v56 - 8) + 64);
  __chkstk_darwin(v56 - 8);
  OUTLINED_FUNCTION_13(&v271 - v58);
  v292 = type metadata accessor for RRResult();
  v59 = OUTLINED_FUNCTION_7(v292);
  v277 = v60;
  v62 = *(v61 + 64);
  __chkstk_darwin(v59);
  OUTLINED_FUNCTION_16_2();
  OUTLINED_FUNCTION_9_3();
  __chkstk_darwin(v63);
  OUTLINED_FUNCTION_13_5();
  OUTLINED_FUNCTION_9_3();
  __chkstk_darwin(v64);
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_13(v65);
  v66 = type metadata accessor for MatchedResultsSetting();
  v67 = OUTLINED_FUNCTION_7(v66);
  v69 = v68;
  v71 = *(v70 + 64);
  __chkstk_darwin(v67);
  v73 = &v271 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v74);
  v76 = &v271 - v75;
  OUTLINED_FUNCTION_9_1();
  v78 = *(v77 + 64);
  __chkstk_darwin(v79);
  OUTLINED_FUNCTION_4();
  v82 = v81 - v80;
  v290 = v83;
  v84 = *(v83 + 16);
  v293 = v82;
  v308 = v28;
  v84();
  v85 = v31[3];
  v86 = v31[4];
  __swift_project_boxed_opaque_existential_1(v31, v85);
  v87 = (*(v86 + 144))(v85, v86);
  v310 = v87;
  v294 = v69;
  v88 = *(v69 + 104);
  v304 = v76;
  v295 = v66;
  v88(v76, enum case for MatchedResultsSetting.defaultMatching(_:), v66);
  v89 = v31[3];
  v90 = v31[4];
  v300 = v31;
  __swift_project_boxed_opaque_existential_1(v31, v89);
  v91 = PhoneCallNLIntent.hasOnlyCallVerb()();
  v302 = v33;
  if (v91 && App.isFirstParty()())
  {
    v92 = static UsoUtils.buildDummyReferenceEntity()();
    v93 = v304;
    if (v92)
    {
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*(&dword_10 + (v310 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v310 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v87 = v310;
      v94 = v295;
      (*(v294 + 8))(v93, v295);
      v88(v93, enum case for MatchedResultsSetting.extremelySalientResultsOnly(_:), v94);
    }
  }

  else
  {
    v93 = v304;
  }

  if (!specialized Array.count.getter(v87))
  {
    if (one-time initialization token for siriPhone != -1)
    {
      goto LABEL_96;
    }

    goto LABEL_16;
  }

  if (one-time initialization token for siriPhone != -1)
  {
LABEL_91:
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

  v95 = type metadata accessor for Logger();
  v96 = __swift_project_value_buffer(v95, static Logger.siriPhone);
  v97 = Logger.logObject.getter();
  v98 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_16_4(v98))
  {
    v99 = OUTLINED_FUNCTION_42();
    v100 = swift_slowAlloc();
    v309[0] = v100;
    *v99 = 136315138;
    swift_beginAccess();
    (*(v294 + 16))(v73, v93, v295);
    v101 = String.init<A>(describing:)();
    v103 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v101, v102, v309);

    *(v99 + 4) = v103;
    _os_log_impl(&dword_0, v97, v98, "#ReferenceContactResolutionWrapper Querying SRR with match setting: %s", v99, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v100);
    OUTLINED_FUNCTION_26_0();
    OUTLINED_FUNCTION_12_3();
  }

  v104 = v292;
  v105 = v291;
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INStartCallIntent, INStartCallIntent_ptr);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v107 = outlined bridged method (pb) of @objc static INIntent.typeName()(ObjCClassFromMetadata);
  __chkstk_darwin(v107);
  *(&v271 - 4) = &v310;
  *(&v271 - 3) = v93;
  *(&v271 - 2) = v307;
  static SiriKitEventSender.current.getter();
  v108 = _s27PhoneCallFlowDelegatePlugin0A21SelfPerformanceLoggerC8signpost19domainExecutionType04taskL018siriKitEventSender_xSo020FLOWSchemaFLOWDomainkL0V_SS04SirioC00toP7Sending_pxyXEtlFZSay0T28ReferenceResolutionDataModel8RRResultOG_Tt4g5();

  __swift_destroy_boxed_opaque_existential_1(v309);
  specialized Collection.first.getter(v108);

  if (__swift_getEnumTagSinglePayload(v105, 1, v104) == 1)
  {
    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v105, &_s32SiriReferenceResolutionDataModel8RRResultOSgMd, &_s32SiriReferenceResolutionDataModel8RRResultOSgMR);
LABEL_14:
    OUTLINED_FUNCTION_31_26();
    goto LABEL_19;
  }

  v285 = a25;
  v286 = a24;
  v287 = a23;
  v288 = a22;
  v289 = a21;
  v120 = v284;
  v121 = v277;
  (*(v277 + 32))(v284, v105, v104);
  v122 = *(v121 + 16);
  v123 = v282;
  v122(v282, v120, v104);
  v124 = (*(v121 + 88))(v123, v104);
  if (v124 == enum case for RRResult.foundMatch(_:))
  {
    v125 = OUTLINED_FUNCTION_27_30();
    v126(v125);
    v127 = v306;
    v128 = v283;
    v93 = v303;
    (*(v306 + 32))(v283, v123, v303);
    v129 = *(v127 + 16);
    v130 = v280;
    v129(v280, v128, v93);
    v131 = Logger.logObject.getter();
    v132 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v131, v132))
    {
      OUTLINED_FUNCTION_42();
      v305 = OUTLINED_FUNCTION_62();
      v309[0] = v305;
      *v130 = 136315138;
      lazy protocol witness table accessor for type RRResult and conformance RRResult(&lazy protocol witness table cache variable for type RRCandidate and conformance RRCandidate, &type metadata accessor for RRCandidate);
      v133 = dispatch thunk of CustomStringConvertible.description.getter();
      v134 = v129;
      v135 = v96;
      v137 = v136;
      v138 = *(v306 + 8);
      v138(v130, v93);
      v139 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v133, v137, v309);
      v96 = v135;
      v129 = v134;

      *(v130 + 4) = v139;
      _os_log_impl(&dword_0, v131, v132, "#ReferenceContactResolutionWrapper .foundMatch %s", v130, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v305);
      v127 = v306;
      OUTLINED_FUNCTION_26_0();
      OUTLINED_FUNCTION_52();
    }

    else
    {

      v138 = *(v127 + 8);
      v138(v130, v93);
    }

    v190 = v302;
    v191 = v281;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy32SiriReferenceResolutionDataModel11RRCandidateVGMd, &_ss23_ContiguousArrayStorageCy32SiriReferenceResolutionDataModel11RRCandidateVGMR);
    v192 = *(v127 + 72);
    v193 = (*(v127 + 80) + 32) & ~*(v127 + 80);
    v194 = swift_allocObject();
    *(v194 + 16) = xmmword_424FD0;
    v129((v194 + v193), v283, v93);
    specialized Collection.first.getter(v194);

    if (__swift_getEnumTagSinglePayload(v191, 1, v93) == 1)
    {
      _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v191, &_s32SiriReferenceResolutionDataModel11RRCandidateVSgMd, &_s32SiriReferenceResolutionDataModel11RRCandidateVSgMR);
      v195 = Logger.logObject.getter();
      v196 = static os_log_type_t.debug.getter();
      OUTLINED_FUNCTION_10_0(v196);
      OUTLINED_FUNCTION_38_23();
      if (v197)
      {
        v198 = OUTLINED_FUNCTION_65_0();
        OUTLINED_FUNCTION_11_1(v198);
        OUTLINED_FUNCTION_18_30();
        _os_log_impl(v199, v200, v201, v202, v203, 2u);
        OUTLINED_FUNCTION_26_0();
      }

      OUTLINED_FUNCTION_31_26();
      v204 = v303;
    }

    else
    {
      v215 = v276;
      RRCandidate.entity.getter();
      v138(v191, v93);
      v216 = v278;
      v217 = v279;
      v191 = v299;
      (*(v278 + 32))(v279, v215, v299);
      OUTLINED_FUNCTION_4_73();
      v218 = v190;
      v190 = v293;
      _s27PhoneCallFlowDelegatePlugin33ReferenceContactResolutionWrapperO15resolveRREntity33_6E03C60D186988DA16A96BF8932754FFLL8rrEntity13siriKitIntent3app02nlW013sharedGlobals20contactGroupResolverAC20SRRResolutionResultsAELLV04SirifH9DataModel0K0V_AA013NCRResolvableW0_p07SiriAppH03AppCSgAA0aB8NLIntent_pAA22SharedGlobalsProviding_pAA0G14GroupResolving_ptFZTf4nennnnn_nSo07INStartbW0C_Tt5g5Tf4nnnnne_nTm(v217, v298, v218, v300, v307, v293, v308, v301, v271, v272, v273, v274, v275, v276, v277, v278, v279, v280, v281, v282, v283, v284);
      v219 = *(v216 + 8);
      v96 = (v216 + 8);
      v219(v217, v191);
      v93 = v190;
      OUTLINED_FUNCTION_38_23();
    }

    v138(v283, v204);
    (*(v191 + 8))(v96, v190);
    OUTLINED_FUNCTION_16_47();
    goto LABEL_72;
  }

  if (v124 != enum case for RRResult.needsDisambiguation(_:))
  {
    if (v124 != enum case for RRResult.foundMatchPlural(_:))
    {
      if (v124 == enum case for RRResult.noMatch(_:))
      {
        v221 = Logger.logObject.getter();
        v222 = static os_log_type_t.debug.getter();
        if (OUTLINED_FUNCTION_10_0(v222))
        {
          v223 = OUTLINED_FUNCTION_65_0();
          OUTLINED_FUNCTION_11_1(v223);
          OUTLINED_FUNCTION_18_30();
          _os_log_impl(v224, v225, v226, v227, v228, 2u);
          OUTLINED_FUNCTION_12_3();
        }

        v229 = OUTLINED_FUNCTION_13_51();
        v230(v229);
      }

      else
      {
        v250 = v272;
        v251 = v284;
        v122(v272, v284, v104);
        v252 = Logger.logObject.getter();
        v93 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v252, v93))
        {
          OUTLINED_FUNCTION_42();
          v307 = OUTLINED_FUNCTION_62();
          v309[0] = v307;
          *v251 = 136315138;
          lazy protocol witness table accessor for type RRResult and conformance RRResult(&lazy protocol witness table cache variable for type RRResult and conformance RRResult, &type metadata accessor for RRResult);
          v253 = dispatch thunk of CustomStringConvertible.description.getter();
          v255 = v254;
          v256 = *(v121 + 8);
          v256(v250, v104);
          getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v253, v255, v309);
          OUTLINED_FUNCTION_51_25();
          *(v251 + 4) = v253;
          _os_log_impl(&dword_0, v252, v93, "#ReferenceContactResolutionWrapper dropping result of type %s!", v251, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v307);
          OUTLINED_FUNCTION_26_0();
          OUTLINED_FUNCTION_52();

          v256(v284, v104);
          v123 = v282;
        }

        else
        {

          v256 = *(v121 + 8);
          v256(v250, v104);
          v256(v251, v104);
        }

        v256(v123, v104);
      }

      goto LABEL_14;
    }

    v205 = OUTLINED_FUNCTION_27_30();
    v206(v205);
    v207 = *v123;

    v208 = Logger.logObject.getter();
    v209 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v208, v209))
    {
      OUTLINED_FUNCTION_42();
      v210 = OUTLINED_FUNCTION_62();
      v309[0] = v210;
      *v120 = 136315138;
      v211 = Array.description.getter();
      v305 = v96;
      v213 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v211, v212, v309);

      *(v120 + 4) = v213;
      _os_log_impl(&dword_0, v208, v209, "#ReferenceContactResolutionWrapper .foundMatchPlural %s", v120, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v210);
      OUTLINED_FUNCTION_26_0();
      v214 = v303;
      OUTLINED_FUNCTION_26_0();
    }

    else
    {

      v214 = v303;
    }

    v237 = v306;
    v238 = v275;
    specialized Collection.first.getter(v207);

    if (__swift_getEnumTagSinglePayload(v238, 1, v214) == 1)
    {
      _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v238, &_s32SiriReferenceResolutionDataModel11RRCandidateVSgMd, &_s32SiriReferenceResolutionDataModel11RRCandidateVSgMR);
      v239 = Logger.logObject.getter();
      v240 = static os_log_type_t.debug.getter();
      if (OUTLINED_FUNCTION_10_0(v240))
      {
        v241 = OUTLINED_FUNCTION_65_0();
        OUTLINED_FUNCTION_11_1(v241);
        OUTLINED_FUNCTION_18_30();
        _os_log_impl(v242, v243, v244, v245, v246, 2u);
        OUTLINED_FUNCTION_12_3();
      }

      v247 = OUTLINED_FUNCTION_13_51();
      v248(v247);
      OUTLINED_FUNCTION_16_47();
      OUTLINED_FUNCTION_54_23();
      v249();
      OUTLINED_FUNCTION_31_26();
      goto LABEL_20;
    }

    v257 = v273;
    RRCandidate.entity.getter();
    (*(v237 + 8))(v238, v214);
    v258 = v278;
    v259 = v274;
    v260 = v299;
    (*(v278 + 32))(v274, v257, v299);
    OUTLINED_FUNCTION_4_73();
    OUTLINED_FUNCTION_52_17();
    v261 = v293;
    _s27PhoneCallFlowDelegatePlugin33ReferenceContactResolutionWrapperO15resolveRREntity33_6E03C60D186988DA16A96BF8932754FFLL8rrEntity13siriKitIntent3app02nlW013sharedGlobals20contactGroupResolverAC20SRRResolutionResultsAELLV04SirifH9DataModel0K0V_AA013NCRResolvableW0_p07SiriAppH03AppCSgAA0aB8NLIntent_pAA22SharedGlobalsProviding_pAA0G14GroupResolving_ptFZTf4nennnnn_nSo07INStartbW0C_Tt5g5Tf4nnnnne_nTm(v262, v263, v264, v265, v266, v293, v267, v268, v271, v272, v273, v274, v275, v276, v277, v278, v279, v280, v281, v282, v283, v284);
    (*(v258 + 8))(v259, v260);
    v93 = v261;
    v269 = OUTLINED_FUNCTION_13_51();
    v270(v269);
    OUTLINED_FUNCTION_16_47();
LABEL_72:
    OUTLINED_FUNCTION_54_23();
    v220();
    goto LABEL_20;
  }

  v140 = OUTLINED_FUNCTION_27_30();
  v141(v140);
  v93 = *v123;

  v142 = Logger.logObject.getter();
  v143 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v142, v143))
  {
    v144 = OUTLINED_FUNCTION_42();
    v145 = swift_slowAlloc();
    v309[0] = v145;
    *v144 = 136315138;
    v146 = Array.description.getter();
    v148 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v146, v147, v309);

    *(v144 + 4) = v148;
    OUTLINED_FUNCTION_18_30();
    _os_log_impl(v149, v150, v151, v152, v153, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v145);
    OUTLINED_FUNCTION_52();
    OUTLINED_FUNCTION_12_3();
  }

  v283 = *(v93 + 16);
  if (!v283)
  {

    v156 = _swiftEmptyArrayStorage;
    OUTLINED_FUNCTION_31_26();
LABEL_78:
    static ReferenceContactResolutionWrapper.dedupePersons(persons:sharedGlobals:)(v156, v307);

    static ReferenceContactResolutionWrapper.skeletonINPerson(persons:)();
    v232 = v231;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v233 = swift_allocObject();
    *(v233 + 16) = xmmword_426260;
    *(v233 + 32) = v232;
    v234 = OUTLINED_FUNCTION_13_51();
    v235(v234);
    OUTLINED_FUNCTION_16_47();
    OUTLINED_FUNCTION_54_23();
    v236();
    goto LABEL_20;
  }

  v154 = 0;
  v282 = *(v306 + 16);
  v155 = (*(v306 + 80) + 32) & ~*(v306 + 80);
  v273 = v93;
  v281 = v93 + v155;
  v156 = _swiftEmptyArrayStorage;
  v280 = (v306 + 8);
  v279 = *(v306 + 72);
  v278 += 8;
  OUTLINED_FUNCTION_31_26();
  v306 = v157;
  while (1)
  {
    v158 = v296;
    v159 = v303;
    (v282)(v296, v281 + v279 * v154, v303);
    v160 = v297;
    RRCandidate.entity.getter();
    (*v280)(v158, v159);
    OUTLINED_FUNCTION_4_73();
    OUTLINED_FUNCTION_52_17();
    _s27PhoneCallFlowDelegatePlugin33ReferenceContactResolutionWrapperO15resolveRREntity33_6E03C60D186988DA16A96BF8932754FFLL8rrEntity13siriKitIntent3app02nlW013sharedGlobals20contactGroupResolverAC20SRRResolutionResultsAELLV04SirifH9DataModel0K0V_AA013NCRResolvableW0_p07SiriAppH03AppCSgAA0aB8NLIntent_pAA22SharedGlobalsProviding_pAA0G14GroupResolving_ptFZTf4nennnnn_nSo07INStartbW0C_Tt5g5Tf4nnnnne_nTm(v161, v162, v163, v164, v165, v93, v166, v167, v271, v272, v273, v274, v275, v276, v277, v278, v279, v280, v281, v282, v283, v284);
    v169 = v168;
    (*v278)(v160, v299);

    if (v169 >> 62)
    {
      v73 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v73 = *(&dword_10 + (v169 & 0xFFFFFFFFFFFFFF8));
    }

    v170 = v156 >> 62;
    if (v156 >> 62)
    {
      v171 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v171 = *(&dword_10 + (v156 & 0xFFFFFFFFFFFFFF8));
    }

    v172 = &v73[v171];
    if (__OFADD__(v171, v73))
    {
      __break(1u);
LABEL_90:
      __break(1u);
      goto LABEL_91;
    }

    if (swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (v170)
      {
        goto LABEL_41;
      }

      v173 = v156 & 0xFFFFFFFFFFFFFF8;
      if (v172 <= *(&dword_18 + (v156 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        goto LABEL_43;
      }
    }

    else
    {
      if (v170)
      {
LABEL_41:
        _CocoaArrayWrapper.endIndex.getter();
        goto LABEL_42;
      }

      v173 = v156 & 0xFFFFFFFFFFFFFF8;
    }

    v174 = *(v173 + 16);
LABEL_42:
    v156 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    v173 = v156 & 0xFFFFFFFFFFFFFF8;
LABEL_43:
    v305 = v156;
    v175 = *(v173 + 16);
    v176 = (*(v173 + 24) >> 1) - v175;
    v177 = v173 + 8 * v175;
    v291 = v173;
    if (v169 >> 62)
    {
      break;
    }

    v178 = *(&dword_10 + (v169 & 0xFFFFFFFFFFFFFF8));
    if (v178)
    {
      if (v176 < v178)
      {
        goto LABEL_94;
      }

      type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INPerson, INPerson_ptr);
      swift_arrayInitWithCopy();
      goto LABEL_53;
    }

LABEL_57:

    v156 = v305;
    if (v73 > 0)
    {
      goto LABEL_90;
    }

LABEL_58:
    if (++v154 == v283)
    {

      goto LABEL_78;
    }
  }

  v179 = _CocoaArrayWrapper.endIndex.getter();
  if (!v179)
  {
    goto LABEL_57;
  }

  v180 = v179;
  v181 = _CocoaArrayWrapper.endIndex.getter();
  if (v176 < v181)
  {
    goto LABEL_93;
  }

  if (v180 < 1)
  {
    goto LABEL_95;
  }

  v274 = v181;
  v275 = v73;
  v276 = v154;
  v182 = v177 + 32;
  v93 = lazy protocol witness table accessor for type [INPerson] and conformance [A]();
  for (i = 0; i != v180; ++i)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8INPersonCGMd, &_sSaySo8INPersonCGMR);
    v184 = specialized protocol witness for Collection.subscript.read in conformance [A](v309, i, v169);
    v186 = *v185;
    v184(v309, 0);
    *(v182 + 8 * i) = v186;
  }

  OUTLINED_FUNCTION_31_26();
  v154 = v276;
  v73 = v275;
  v178 = v274;
LABEL_53:

  v156 = v305;
  if (v178 < v73)
  {
    goto LABEL_90;
  }

  if (v178 < 1)
  {
    goto LABEL_58;
  }

  v187 = *(v291 + 16);
  v188 = __OFADD__(v187, v178);
  v189 = v187 + v178;
  if (!v188)
  {
    *(v291 + 16) = v189;
    goto LABEL_58;
  }

  __break(1u);
LABEL_93:
  __break(1u);
LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
LABEL_96:
  OUTLINED_FUNCTION_0_6();
  swift_once();
LABEL_16:
  v109 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_9_0(v109, static Logger.siriPhone);
  v110 = Logger.logObject.getter();
  v111 = static os_log_type_t.debug.getter();
  OUTLINED_FUNCTION_10_0(v111);
  OUTLINED_FUNCTION_31_26();
  if (v112)
  {
    v113 = OUTLINED_FUNCTION_65_0();
    OUTLINED_FUNCTION_11_1(v113);
    OUTLINED_FUNCTION_18_30();
    _os_log_impl(v114, v115, v116, v117, v118, 2u);
    OUTLINED_FUNCTION_12_3();
  }

LABEL_19:
  OUTLINED_FUNCTION_16_47();
  OUTLINED_FUNCTION_54_23();
  v119();
LABEL_20:

  (*(v290 + 8))(v93, v308);
  OUTLINED_FUNCTION_65();
}

void _s27PhoneCallFlowDelegatePlugin33ReferenceContactResolutionWrapperO18resolveCommonGroup33_6E03C60D186988DA16A96BF8932754FFLL5group13siriKitIntent3app02nlW013sharedGlobals07contactL8ResolverAC20SRRResolutionResultsAELLV12SiriOntology017UsoEntity_common_L0C_AA013NCRResolvableW0_p07SiriAppH03AppCSgAA0aB8NLIntent_pAA22SharedGlobalsProviding_pAA0gL9Resolving_ptFZTf4nennnnn_nSo07INStartbW0C_Tt5g5Tf4nnnnne_nTm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void (*a21)(void *, uint64_t, uint64_t, uint64_t, void *))
{
  OUTLINED_FUNCTION_66();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v85 = v27;
  v29 = v28;
  v31 = v30;
  v84 = v32;
  v34 = v33;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVySay27PhoneCallFlowDelegatePlugin8SmsGroup_pGSaySo06INCallJ0CGSgGMd, &_s13SiriUtilities11TransformerVySay27PhoneCallFlowDelegatePlugin8SmsGroup_pGSaySo06INCallJ0CGSgGMR);
  v36 = OUTLINED_FUNCTION_7(v35);
  v86 = v37;
  v39 = *(v38 + 64);
  __chkstk_darwin(v36);
  v41 = &v81 - v40;
  v88 = type metadata accessor for ContactQuery();
  v42 = OUTLINED_FUNCTION_7(v88);
  v44 = v43;
  v46 = *(v45 + 64);
  __chkstk_darwin(v42);
  OUTLINED_FUNCTION_4();
  v87 = v48 - v47;
  v92[3] = v24;
  v92[4] = v22;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v92);
  (*(*(v24 - 8) + 16))(boxed_opaque_existential_1, v26, v24);
  v50 = dispatch thunk of UsoEntity_common_Group.name.getter();
  LOBYTE(v24) = specialized Optional<A>.isNilOrEmpty.getter(v50, v51);

  if ((v24 & 1) == 0 || (v52 = dispatch thunk of UsoEntity_common_Group.members.getter()) == 0)
  {
    if (one-time initialization token for siriPhone != -1)
    {
LABEL_37:
      OUTLINED_FUNCTION_0_6();
      swift_once();
    }

    v56 = type metadata accessor for Logger();
    v57 = __swift_project_value_buffer(v56, static Logger.siriPhone);
    v58 = Logger.logObject.getter();
    v59 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_10_0(v59))
    {
      v60 = OUTLINED_FUNCTION_65_0();
      *v60 = 0;
      _os_log_impl(&dword_0, v58, v57, "#ReferenceContactResolutionWrapper resolved to a named common_Group", v60, 2u);
      OUTLINED_FUNCTION_26_0();
    }

    v61 = v85[3];
    v62 = v85[4];
    __swift_project_boxed_opaque_existential_1(v85, v61);
    (*(v62 + 8))(v91, v61, v62);
    outlined init with copy of SignalProviding(v91, v90);
    outlined init with copy of SignalProviding(v92, v89);
    v63 = swift_allocObject();
    outlined init with take of SPHConversation(v90, v63 + 16);
    outlined init with take of SPHConversation(v89, v63 + 56);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay27PhoneCallFlowDelegatePlugin8SmsGroup_pGMd, &_sSay27PhoneCallFlowDelegatePlugin8SmsGroup_pGMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo11INCallGroupCGSgMd, &_sSaySo11INCallGroupCGSgMR);
    Transformer.init(transform:)();
    __swift_destroy_boxed_opaque_existential_1(v91);
    v64 = Transformer.transform.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy27PhoneCallFlowDelegatePlugin8SmsGroup_pGMd, &_ss23_ContiguousArrayStorageCy27PhoneCallFlowDelegatePlugin8SmsGroup_pGMR);
    v65 = swift_allocObject();
    *(v65 + 16) = xmmword_424FD0;
    *(v65 + 56) = type metadata accessor for UsoEntity_common_Group();
    *(v65 + 64) = &protocol witness table for UsoEntity_common_Group;
    *(v65 + 32) = v34;
    v91[0] = v65;

    v64(v90, v91);

    (v86[1])(v41, v35);
    goto LABEL_34;
  }

  v53 = v52;
  v82 = v31;
  v83 = v29;
  v81 = a21;
  v91[0] = _swiftEmptyArrayStorage;
  v35 = specialized Array.count.getter(v52);
  v41 = 0;
  v34 = v53 & 0xFFFFFFFFFFFFFF8;
  v86 = _swiftEmptyArrayStorage;
  while (v35 != v41)
  {
    if ((v53 & 0xC000000000000001) != 0)
    {
      specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v41 >= *(&dword_10 + (v53 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_36;
      }

      v54 = *(v53 + 8 * v41 + 32);
    }

    v55 = v41 + 1;
    if (__OFADD__(v41, 1))
    {
      __break(1u);
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    dispatch thunk of CodeGenListEntry.entry.getter();

    ++v41;
    if (*&v90[0])
    {
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*(&dword_10 + (v91[0] & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v91[0] & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v86 = v91[0];
      v41 = v55;
    }
  }

  v66 = v86;
  v67 = specialized Array.count.getter(v86);
  if (!v67)
  {

    v70 = _swiftEmptyArrayStorage;
LABEL_29:
    v75 = v83;
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_0_6();
      swift_once();
    }

    v76 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_9_0(v76, static Logger.siriPhone);
    v77 = Logger.logObject.getter();
    v78 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_10_0(v78))
    {
      *OUTLINED_FUNCTION_65_0() = 0;
      OUTLINED_FUNCTION_44(&dword_0, v79, v80, "#ReferenceContactResolutionWrapper resolved to an unnamed common_Group");
      OUTLINED_FUNCTION_52();
    }

    v81(v70, v84, v82, v75, v85);

LABEL_34:
    __swift_destroy_boxed_opaque_existential_1(v92);
    OUTLINED_FUNCTION_65();
    return;
  }

  v68 = v67;
  v91[0] = _swiftEmptyArrayStorage;
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  if ((v68 & 0x8000000000000000) == 0)
  {
    v69 = 0;
    v70 = v91[0];
    v71 = v66 & 0xC000000000000001;
    v72 = v87;
    do
    {
      if (v71)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v73 = *(v66 + 8 * v69 + 32);
      }

      UsoEntity_common_Agent.toContactQuery()();

      v91[0] = v70;
      v74 = v70[2];
      if (v74 >= v70[3] >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v70 = v91[0];
      }

      ++v69;
      v70[2] = v74 + 1;
      (*(v44 + 32))(v70 + ((*(v44 + 80) + 32) & ~*(v44 + 80)) + *(v44 + 72) * v74, v72, v88);
      v66 = v86;
    }

    while (v68 != v69);

    goto LABEL_29;
  }

  __break(1u);
}

void _s27PhoneCallFlowDelegatePlugin33ReferenceContactResolutionWrapperO21resolveUpdateSKIntent13siriKitIntent14contactQueries012hasEmergencyG03app02nlO013sharedGlobals18multicardinalIndex0mN11EventSender09emergencygH00P13GroupResolveryAA013NCRResolvableO0_p_Say13SiriInference0G5QueryVGSb07SiriAppH03AppCAA0aB8NLIntent_pAA06SharedW9Providing_pSiSg04SirinC004SirinZ7Sending_pAA0sgH0CAA0G14GroupResolving_ptFZTf4ennnnnnnnnn_nSo012INStartVideobO0C_Tt9g5Tf4nnnnnnnnne_n()
{
  OUTLINED_FUNCTION_66();
  v88 = OUTLINED_FUNCTION_7_64(v4, v5, v6, v7, v8, v9, v10, v11);
  v12 = OUTLINED_FUNCTION_7(v88);
  v82 = v13;
  v15 = *(v14 + 64);
  __chkstk_darwin(v12);
  OUTLINED_FUNCTION_4();
  v76 = v17 - v16;
  OUTLINED_FUNCTION_9_1();
  v19 = *(v18 + 64);
  __chkstk_darwin(v20);
  OUTLINED_FUNCTION_4();
  v22 = OUTLINED_FUNCTION_10_64(v21);
  v24 = v23(v22);
  OUTLINED_FUNCTION_11_53(v24, v25, v26, v27, v28, v29, v30, partial apply for closure #1 in static ReferenceContactResolutionWrapper.runCombinedSRRandCRR(siriKitIntent:app:nlIntent:sharedGlobals:contactGroupResolver:), partial apply for closure #1 in static ReferenceContactResolutionWrapper.resolveRREntity(rrEntity:siriKitIntent:app:nlIntent:sharedGlobals:contactGroupResolver:), _s27PhoneCallFlowDelegatePlugin17ContactResolutionC07resolveF7Queries07contactI013siriKitIntent3app02nlM013sharedGlobalsSaySo8INPersonCGSay13SiriInference0F5QueryVG_AA013NCRResolvableM0_p0s3AppG00W0CSgAA0aB8NLIntent_pAA06SharedQ9Providing_ptFZTf4nennnn_nSo012INStartVideobM0C_Tt4g5, _s27PhoneCallFlowDelegatePlugin17ContactResolutionC07resolveF7Queries07contactI013siriKitIntent3app02nlM013sharedGlobalsSaySo8INPersonCGSay13SiriInference0F5QueryVG_AA013NCRResolvableM0_p0s3AppG00W0CSgAA0aB8NLIntent_pAA06SharedQ9Providing_ptFZTf4nennnn_nSo012INStartVideobM0C_Tt4g5, &unk_52DBF8, partial apply for closure #1 in static Transformer<>.transformer(device:groupResolver:), v70, v72, v74, v76, v78, v80, v82, v84, v86, v88, v90, v92);
  if (OUTLINED_FUNCTION_50_22())
  {
    OUTLINED_FUNCTION_11_8();
    if (!v31)
    {
      OUTLINED_FUNCTION_0_6();
      swift_once();
    }

    v32 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_9_0(v32, static Logger.siriPhone);
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_6_43(v34))
    {
      v35 = OUTLINED_FUNCTION_65_0();
      OUTLINED_FUNCTION_39_22(v35);
      OUTLINED_FUNCTION_14_51(&dword_0, v36, v37, "#ReferenceContactResolutionWrapper updated SKIntent with contacts");
      OUTLINED_FUNCTION_14_0();
    }

    v0 = v1;
    INStartVideoCallIntent.overwriteContacts(newContacts:)(v2);
  }

  if (specialized Array.count.getter(v3))
  {
    OUTLINED_FUNCTION_11_8();
    if (!v31)
    {
      OUTLINED_FUNCTION_0_6();
      swift_once();
    }

    v38 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_9_0(v38, static Logger.siriPhone);
    v0 = Logger.logObject.getter();
    v39 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_6_43(v39))
    {
      v40 = OUTLINED_FUNCTION_65_0();
      OUTLINED_FUNCTION_39_22(v40);
      OUTLINED_FUNCTION_14_51(&dword_0, v41, v42, "#ReferenceContactResolutionWrapper updated SKIntent with groups");
      OUTLINED_FUNCTION_14_0();
    }
  }

  if (specialized Array.count.getter(v3))
  {
  }

  else
  {
    specialized Array.count.getter(v2._rawValue);
    OUTLINED_FUNCTION_51_25();

    if (!v0)
    {
      v52 = OUTLINED_FUNCTION_9_63();
      v53(v52);
      __swift_project_boxed_opaque_existential_1(v94, v94[3]);
      OUTLINED_FUNCTION_12_56();
      dispatch thunk of DeviceState.siriLocale.getter();
      v54 = v79[4];
      __swift_project_boxed_opaque_existential_1(v79, v79[3]);
      v55 = OUTLINED_FUNCTION_2_98();
      _s27PhoneCallFlowDelegatePlugin17ContactResolutionC19updateSiriKitIntent04sirijK014contactQueries012hasEmergencyF03app6locale02nlK013sharedGlobals18multicardinalIndex0lJ11EventSender09emergencyfG0yAA013NCRResolvableK0_p_Say0I9Inference0F5QueryVGSb0i3AppG03AppCSg10Foundation6LocaleVAA0aB8NLIntent_pAA06SharedU9Providing_pSiSg0ijC00ijX7Sending_pAA0pfG0CtFZTf4ennnnnnnnnn_nSo012INStartVideobK0C_Tt9g5Tf4nnnnnennnn_n(v55, v56, v57, v58, v59, v60, v61, v62, v65, v66, v67, v68, v69, v71, v73, v75, v77, v79, v81, v83, v85, v87, v89, v91, v93);
      v63 = OUTLINED_FUNCTION_17_43();
      v64(v63);
      __swift_destroy_boxed_opaque_existential_1(v94);
      goto LABEL_21;
    }
  }

  OUTLINED_FUNCTION_11_8();
  if (!v31)
  {
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

  v43 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_9_0(v43, static Logger.siriPhone);
  v44 = v1;
  v45 = Logger.logObject.getter();
  v46 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v45, v46))
  {
    OUTLINED_FUNCTION_42();
    v47 = OUTLINED_FUNCTION_49_22();
    OUTLINED_FUNCTION_48_21(v47, 5.7779e-34);
    OUTLINED_FUNCTION_45_1(&dword_0, v48, v49, "#ReferenceContactResolutionWrapper skipping CRR - UpdatedSKIntent %@");
    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v47, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    OUTLINED_FUNCTION_26_0();
    OUTLINED_FUNCTION_14_0();
  }

LABEL_21:
  v50 = OUTLINED_FUNCTION_41_28();
  v51(v50);
  OUTLINED_FUNCTION_65();
}

void _s27PhoneCallFlowDelegatePlugin33ReferenceContactResolutionWrapperO15resolveRREntity33_6E03C60D186988DA16A96BF8932754FFLL8rrEntity13siriKitIntent3app02nlW013sharedGlobals20contactGroupResolverAC20SRRResolutionResultsAELLV04SirifH9DataModel0K0V_AA013NCRResolvableW0_p07SiriAppH03AppCSgAA0aB8NLIntent_pAA22SharedGlobalsProviding_pAA0G14GroupResolving_ptFZTf4nennnnn_nSo07INStartbW0C_Tt5g5Tf4nnnnne_nTm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void (*a22)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  OUTLINED_FUNCTION_66();
  v23 = v22;
  v69 = v24;
  v70 = v25;
  v67 = v26;
  v68 = v27;
  v29 = v28;
  OUTLINED_FUNCTION_9_1();
  v31 = v30;
  v33 = *(v32 + 64);
  v71 = a21;
  __chkstk_darwin(v34);
  OUTLINED_FUNCTION_4();
  v37 = v36 - v35;
  (*(v31 + 16))(v36 - v35, v38, v39);
  static Signpost.begin(_:)();
  v73 = v40;
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INPerson, INPerson_ptr);
  v72 = v29;
  v41 = RREntity.convertData<A>(to:)();
  Signpost.OpenSignpost.end()();
  if (v41)
  {
    v42 = one-time initialization token for siriPhone;
    v43 = v41;
    if (v42 != -1)
    {
      OUTLINED_FUNCTION_0_6();
      swift_once();
    }

    v44 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_9_0(v44, static Logger.siriPhone);
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_7_39(v46))
    {
      v47 = OUTLINED_FUNCTION_65_0();
      OUTLINED_FUNCTION_59(v47);
      OUTLINED_FUNCTION_15_46(&dword_0, v48, v49, "#ReferenceContactResolutionWrapper resolved to an INPerson");
      OUTLINED_FUNCTION_26_0();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v50 = swift_allocObject();
    v51 = v50;
    *(v50 + 16) = xmmword_426260;
    *(v50 + 32) = v43;
LABEL_13:
    v52 = v72;
    goto LABEL_14;
  }

  v52 = v72;
  RREntity.usoEntity.getter();
  OUTLINED_FUNCTION_88();
  type metadata accessor for UsoEntity_common_Person();
  OUTLINED_FUNCTION_3_83();

  v53 = v74;
  if (v74)
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_0_6();
      swift_once();
    }

    v54 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_9_0(v54, static Logger.siriPhone);
    v55 = Logger.logObject.getter();
    v56 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_7_39(v56))
    {
      v57 = OUTLINED_FUNCTION_65_0();
      OUTLINED_FUNCTION_59(v57);
      OUTLINED_FUNCTION_15_46(&dword_0, v58, v59, "#ReferenceContactResolutionWrapper resolved to a common_Person");
      OUTLINED_FUNCTION_26_0();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy13SiriInference12ContactQueryVGMd, &_ss23_ContiguousArrayStorageCy13SiriInference12ContactQueryVGMR);
    OUTLINED_FUNCTION_88();
    v60 = *(*(type metadata accessor for ContactQuery() - 8) + 72);
    v61 = OUTLINED_FUNCTION_42_22();
    *(v61 + 16) = xmmword_424FD0;
    v51 = v53;
    UsoEntity_common_Person.toContactQuery()();
    a22(v61, v67, v68, v69, v70);
    OUTLINED_FUNCTION_51_25();

    goto LABEL_13;
  }

  RREntity.usoEntity.getter();
  OUTLINED_FUNCTION_88();
  type metadata accessor for UsoEntity_common_Group();
  OUTLINED_FUNCTION_3_83();

  RREntity.usoEntity.getter();
  OUTLINED_FUNCTION_88();
  type metadata accessor for UsoEntity_common_Agent();
  OUTLINED_FUNCTION_3_83();

  RREntity.usoEntity.getter();
  OUTLINED_FUNCTION_88();
  type metadata accessor for UsoEntity_common_App();
  OUTLINED_FUNCTION_3_83();

  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

  v62 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_9_0(v62, static Logger.siriPhone);
  v63 = Logger.logObject.getter();
  v64 = static os_log_type_t.error.getter();
  if (OUTLINED_FUNCTION_16_4(v64))
  {
    v65 = OUTLINED_FUNCTION_65_0();
    *v65 = 0;
    _os_log_impl(&dword_0, v63, v64, "#ReferenceContactResolutionWrapper resolved entity was not recognized as a person or group", v65, 2u);
    v52 = v72;
    OUTLINED_FUNCTION_26_0();
  }

  v51 = _swiftEmptyArrayStorage;
LABEL_14:
  __chkstk_darwin(v50);
  v66[2] = v52;
  specialized Sequence.compactMap<A>(_:)(v71, v66, v51);

  (*(v31 + 8))(v37, v23);
  OUTLINED_FUNCTION_65();
}

unint64_t lazy protocol witness table accessor for type [INPerson] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [INPerson] and conformance [A];
  if (!lazy protocol witness table cache variable for type [INPerson] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo8INPersonCGMd, &_sSaySo8INPersonCGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [INPerson] and conformance [A]);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type RRResult and conformance RRResult(unint64_t *a1, void (*a2)(uint64_t))
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

void OUTLINED_FUNCTION_38_23()
{
  v1 = *(v0 - 296);
  v2 = *(v0 - 416);
  v3 = *(v0 - 360);
}

uint64_t OUTLINED_FUNCTION_50_22()
{

  return specialized Array.count.getter();
}

uint64_t OUTLINED_FUNCTION_51_25()
{
}

void OUTLINED_FUNCTION_55_20(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

void INPerson.identifier.getter()
{
  OUTLINED_FUNCTION_66();
  v1 = v0;
  v2 = type metadata accessor for String.Encoding();
  v3 = OUTLINED_FUNCTION_7(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v3);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = outlined bridged method (pb) of @objc INPerson.contactIdentifier.getter(v1);
  if (v11 || (v10 = outlined bridged method (pb) of @objc INPerson.customIdentifier.getter(v1), v11))
  {
    v28 = v10;
    v29 = v11;
    v12 = [v1 personHandle];
    if (v12)
    {
      outlined bridged method (ob) of @objc INPersonHandle.value.getter(v12);
      if (v13)
      {
        static String.Encoding.utf8.getter();
        v14 = String.data(using:allowLossyConversion:)();
        v16 = v15;

        v17 = *(v5 + 8);
        v17(v9, v2);
        if (v16 >> 60 != 15)
        {
          v18 = [v1 personHandle];
          v19 = v18;
          if (v18)
          {
            v20 = [v18 label];

            if (v20)
            {
              static String._unconditionallyBridgeFromObjectiveC(_:)();
            }
          }

          static String.Encoding.utf8.getter();
          v21 = String.data(using:allowLossyConversion:)();
          v23 = v22;

          v17(v9, v2);
          if (v23 >> 60 != 15)
          {
            v27._countAndFlagsBits = v14;
            v27._object = v16;
            outlined copy of Data._Representation(v14, v16);
            specialized Data.append<A>(contentsOf:)(v21, v23);
            countAndFlagsBits = v27._countAndFlagsBits;
            object = v27._object;
            v26 = Data.base64EncodedString(options:)(0);
            v27._countAndFlagsBits = 58;
            v27._object = 0xE100000000000000;
            String.append(_:)(v26);

            String.append(_:)(v27);

            outlined consume of Data._Representation(countAndFlagsBits, object);
            outlined consume of Data?(v21, v23);
          }

          outlined consume of Data?(v14, v16);
        }
      }
    }
  }

  else
  {
    INPerson.asBase64()();
  }

  OUTLINED_FUNCTION_65();
}

void INPerson.toRREntity()()
{
  OUTLINED_FUNCTION_66();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy0A8Ontology23UsoEntity_common_PersonCSo8INPersonCGMd, &_s13SiriUtilities11TransformerVy0A8Ontology23UsoEntity_common_PersonCSo8INPersonCGMR);
  v4 = OUTLINED_FUNCTION_7(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  __chkstk_darwin(v4);
  v10 = &v28 - v9;
  static Transformer<>.transformer.getter();
  v11 = Transformer.reverseTransform.getter();
  v34 = v0;
  v11(&v33, &v34);

  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2();
  }

  v12 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_9_0(v12, static Logger.siriPhone);
  v13 = v0;

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v32 = v6;
    v17 = v16;
    v18 = swift_slowAlloc();
    v30 = v18;
    v31 = OUTLINED_FUNCTION_36();
    v34 = v31;
    *v17 = 138412546;
    *(v17 + 4) = v13;
    *v18 = v13;
    *(v17 + 12) = 2080;
    v19 = v13;
    v29 = v15;
    CodeGenBase.entity.getter();
    v20 = UsoEntity.valueTypeString.getter();
    v28 = v14;
    v21 = v20;
    v22 = v2;
    v24 = v23;

    v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v24, &v34);
    v2 = v22;

    *(v17 + 14) = v25;
    v26 = v28;
    _os_log_impl(&dword_0, v28, v29, "#ReferenceResolution INPerson-SRR: Transformed person %@ to USO entity %s", v17, 0x16u);
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v30, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    OUTLINED_FUNCTION_26_0();
    __swift_destroy_boxed_opaque_existential_1(v31);
    OUTLINED_FUNCTION_26_0();
    v6 = v32;
    OUTLINED_FUNCTION_26_0();
  }

  else
  {
  }

  CodeGenBase.entity.getter();

  INPerson.makeRREntity(usoEntity:)();
  (*(v6 + 8))(v10, v3);

  v27 = type metadata accessor for RREntity();
  __swift_storeEnumTagSinglePayload(v2, 0, 1, v27);
  OUTLINED_FUNCTION_65();
}

void RRReferenceResolverProtocol.resolveEntity(resolveQuery:)()
{
  OUTLINED_FUNCTION_66();
  v97 = v0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s32SiriReferenceResolutionDataModel11RRCandidateVSgMd, &_s32SiriReferenceResolutionDataModel11RRCandidateVSgMR);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v92 = &v89 - v3;
  v4 = type metadata accessor for RRCandidate();
  v5 = OUTLINED_FUNCTION_7(v4);
  v94 = v6;
  v95 = v5;
  v8 = *(v7 + 64);
  __chkstk_darwin(v5);
  OUTLINED_FUNCTION_12_5();
  v93 = v9 - v10;
  __chkstk_darwin(v11);
  v96 = (&v89 - v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s32SiriReferenceResolutionDataModel8RRResultOSgMd, &_s32SiriReferenceResolutionDataModel8RRResultOSgMR);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v89 - v15;
  v17 = type metadata accessor for RRResult();
  v18 = OUTLINED_FUNCTION_7(v17);
  v20 = v19;
  v22 = *(v21 + 64);
  __chkstk_darwin(v18);
  OUTLINED_FUNCTION_12_5();
  v91 = v23 - v24;
  v26 = __chkstk_darwin(v25);
  v28 = (&v89 - v27);
  __chkstk_darwin(v26);
  v30 = &v89 - v29;
  RRReferenceResolverProtocol.resolveReference(resolveQuery:)();
  if (__swift_getEnumTagSinglePayload(v16, 1, v17) != 1)
  {
    (*(v20 + 32))(v30, v16, v17);
    v31 = *(v20 + 16);
    (v31)(v28, v30, v17);
    v32 = (*(v20 + 88))(v28, v17);
    v33 = v17;
    if (v32 == enum case for RRResult.foundMatch(_:))
    {
      v91 = v20;
      v92 = v30;
      (*(v20 + 96))(v28, v17);
      v34 = v94;
      v35 = v95;
      v36 = v96;
      (*(v94 + 32))(v96, v28, v95);
      if (one-time initialization token for siriPhone != -1)
      {
        OUTLINED_FUNCTION_6_2();
      }

      v37 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_9_0(v37, static Logger.siriPhone);
      v38 = v93;
      (*(v34 + 16))(v93, v36, v35);

      v39 = Logger.logObject.getter();
      v40 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v39, v40))
      {
        v41 = v34;
        v42 = swift_slowAlloc();
        v89 = swift_slowAlloc();
        v98 = v89;
        *v42 = 136315394;
        lazy protocol witness table accessor for type RRResult and conformance RRResult(&lazy protocol witness table cache variable for type RRCandidate and conformance RRCandidate, &type metadata accessor for RRCandidate);
        v43 = dispatch thunk of CustomStringConvertible.description.getter();
        v90 = v33;
        v45 = v44;
        v46 = *(v41 + 8);
        v46(v38, v35);
        v36 = v96;
        v47 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v43, v45, &v98);

        *(v42 + 4) = v47;
        *(v42 + 12) = 2080;
        v48 = dispatch thunk of ResolveQuery.description.getter();
        v50 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v48, v49, &v98);

        *(v42 + 14) = v50;
        v33 = v90;
        _os_log_impl(&dword_0, v39, v40, "#ReferenceResolution Found a candidate %s by using query:%s", v42, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_26_0();
        OUTLINED_FUNCTION_26_0();
      }

      else
      {

        v46 = *(v34 + 8);
        v46(v38, v35);
      }

      v59 = v97;
      RRCandidate.entity.getter();
      v46(v36, v35);
      (*(v91 + 8))(v92, v33);
      goto LABEL_18;
    }

    if (v32 == enum case for RRResult.needsDisambiguation(_:))
    {
      v51 = OUTLINED_FUNCTION_6_73();
      v31(v51);
      if (one-time initialization token for siriPhone != -1)
      {
        OUTLINED_FUNCTION_6_2();
      }

      v52 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_9_0(v52, static Logger.siriPhone);
      v53 = Logger.logObject.getter();
      v54 = static os_log_type_t.debug.getter();
      if (!OUTLINED_FUNCTION_10_0(v54))
      {
        goto LABEL_14;
      }

      *swift_slowAlloc() = 0;
      v57 = "#ReferenceResolution Found ambiguous entities -> nil";
LABEL_13:
      OUTLINED_FUNCTION_33(&dword_0, v55, v56, v57);
      OUTLINED_FUNCTION_26_0();
LABEL_14:

      (v31)(v20 + 16, v17);
      goto LABEL_15;
    }

    if (v32 == enum case for RRResult.foundMatchPlural(_:))
    {
      v61 = v30;
      v62 = v20;
      (*(v20 + 96))(v28, v17);
      v63 = *v28;
      if (one-time initialization token for siriPhone != -1)
      {
        OUTLINED_FUNCTION_6_2();
      }

      v64 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_9_0(v64, static Logger.siriPhone);

      v65 = Logger.logObject.getter();
      v66 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v65, v66))
      {
        v67 = OUTLINED_FUNCTION_42();
        *v67 = 134217984;
        *(v67 + 4) = *(v63 + 16);

        _os_log_impl(&dword_0, v65, v66, "#ReferenceResolution Found %ld candidates. Using the first one", v67, 0xCu);
        OUTLINED_FUNCTION_26_0();
      }

      else
      {
      }

      v59 = v97;
      v71 = v92;
      specialized Collection.first.getter(v63);

      v72 = v95;
      if (__swift_getEnumTagSinglePayload(v71, 1, v95) != 1)
      {
        RRCandidate.entity.getter();
        (*(v62 + 8))(v61, v17);
        (*(v94 + 8))(v71, v72);
LABEL_18:
        v58 = 0;
        goto LABEL_19;
      }

      (*(v62 + 8))(v61, v17);
      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v71, &_s32SiriReferenceResolutionDataModel11RRCandidateVSgMd, &_s32SiriReferenceResolutionDataModel11RRCandidateVSgMR);
    }

    else
    {
      if (v32 == enum case for RRResult.needsDisambiguationPlural(_:))
      {
        v68 = OUTLINED_FUNCTION_6_73();
        v31(v68);
        if (one-time initialization token for siriPhone != -1)
        {
          OUTLINED_FUNCTION_6_2();
        }

        v69 = type metadata accessor for Logger();
        OUTLINED_FUNCTION_9_0(v69, static Logger.siriPhone);
        v53 = Logger.logObject.getter();
        v70 = static os_log_type_t.debug.getter();
        if (!OUTLINED_FUNCTION_10_0(v70))
        {
          goto LABEL_14;
        }

        *swift_slowAlloc() = 0;
        v57 = "#ReferenceResolution Found plural disambiguation -> nil";
        goto LABEL_13;
      }

      if (v32 == enum case for RRResult.noMatch(_:))
      {
        if (one-time initialization token for siriPhone != -1)
        {
          OUTLINED_FUNCTION_6_2();
        }

        v73 = type metadata accessor for Logger();
        OUTLINED_FUNCTION_9_0(v73, static Logger.siriPhone);
        v74 = Logger.logObject.getter();
        v75 = static os_log_type_t.debug.getter();
        if (OUTLINED_FUNCTION_10_0(v75))
        {
          *swift_slowAlloc() = 0;
          OUTLINED_FUNCTION_33(&dword_0, v76, v77, "#ReferenceResolution No matches found");
          OUTLINED_FUNCTION_26_0();
        }

        (*(v20 + 8))(v30, v17);
        goto LABEL_15;
      }

      if (one-time initialization token for siriPhone != -1)
      {
        OUTLINED_FUNCTION_6_2();
      }

      v78 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_9_0(v78, static Logger.siriPhone);
      v92 = v30;
      (v31)(v91, v30, v17);
      v79 = Logger.logObject.getter();
      v80 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v79, v80))
      {
        v81 = OUTLINED_FUNCTION_42();
        v95 = v81;
        v96 = OUTLINED_FUNCTION_36();
        v98 = v96;
        *v81 = 136315138;
        lazy protocol witness table accessor for type RRResult and conformance RRResult(&lazy protocol witness table cache variable for type RRResult and conformance RRResult, &type metadata accessor for RRResult);
        v82 = dispatch thunk of CustomStringConvertible.description.getter();
        v84 = v83;
        v85 = OUTLINED_FUNCTION_5_79();
        v17(v85);
        v86 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v82, v84, &v98);

        v87 = v95;
        *(v95 + 1) = v86;
        _os_log_impl(&dword_0, v79, v80, "#ReferenceResolution Received unknown result type %s", v87, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v96);
        OUTLINED_FUNCTION_26_0();
        OUTLINED_FUNCTION_26_0();
      }

      else
      {

        v88 = OUTLINED_FUNCTION_5_79();
        v17(v88);
      }

      (v17)(v92, v17);
      v59 = v97;
      (v17)(v28, v17);
    }

    v58 = 1;
    goto LABEL_19;
  }

  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v16, &_s32SiriReferenceResolutionDataModel8RRResultOSgMd, &_s32SiriReferenceResolutionDataModel8RRResultOSgMR);
LABEL_15:
  v58 = 1;
  v59 = v97;
LABEL_19:
  v60 = type metadata accessor for RREntity();
  __swift_storeEnumTagSinglePayload(v59, v58, 1, v60);
  OUTLINED_FUNCTION_65();
}

void RRReferenceResolverProtocol.resolveReference(resolveQuery:)()
{
  OUTLINED_FUNCTION_66();
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy32SiriReferenceResolutionDataModel8RRResultOs5Error_pGMd, &_ss6ResultOy32SiriReferenceResolutionDataModel8RRResultOs5Error_pGMR);
  v3 = OUTLINED_FUNCTION_23_1(v2);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  OUTLINED_FUNCTION_12_5();
  v8 = (v6 - v7);
  __chkstk_darwin(v9);
  v11 = &v27 - v10;
  static Signpost.begin(_:)();
  v30 = v12;
  v29 = v13;
  dispatch thunk of RRReferenceResolverProtocol.resolve(query:)();
  outlined init with copy of Result<RRResult, Error>(v11, v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = *v8;
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2();
    }

    v15 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_9_0(v15, static Logger.siriPhone);
    swift_errorRetain();
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = OUTLINED_FUNCTION_42();
      v28 = OUTLINED_FUNCTION_36();
      v31 = v14;
      v32 = v28;
      *v18 = 136315138;
      swift_errorRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v19 = String.init<A>(describing:)();
      v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v20, &v32);

      *(v18 + 4) = v21;
      _os_log_impl(&dword_0, v16, v17, "#ReferenceResolution Received a failure: %s -> nil", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v28);
      OUTLINED_FUNCTION_26_0();
      OUTLINED_FUNCTION_26_0();
    }

    else
    {
    }

    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v11, &_ss6ResultOy32SiriReferenceResolutionDataModel8RRResultOs5Error_pGMd, &_ss6ResultOy32SiriReferenceResolutionDataModel8RRResultOs5Error_pGMR);
    v26 = type metadata accessor for RRResult();
    v24 = v1;
    v25 = 1;
  }

  else
  {
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v11, &_ss6ResultOy32SiriReferenceResolutionDataModel8RRResultOs5Error_pGMd, &_ss6ResultOy32SiriReferenceResolutionDataModel8RRResultOs5Error_pGMR);
    v22 = type metadata accessor for RRResult();
    OUTLINED_FUNCTION_23_1(v22);
    (*(v23 + 32))(v1, v8, v22);
    v24 = v1;
    v25 = 0;
    v26 = v22;
  }

  __swift_storeEnumTagSinglePayload(v24, v25, 1, v26);
  Signpost.OpenSignpost.end()();

  OUTLINED_FUNCTION_65();
}

uint64_t INPerson.makeRREntity(usoEntity:)()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s32SiriReferenceResolutionDataModel15GroupIdentifierVSgMd, &_s32SiriReferenceResolutionDataModel15GroupIdentifierVSgMR);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v8 - v3;
  INPerson.identifier.getter();
  v5 = type metadata accessor for GroupIdentifier();
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v5);
  type metadata accessor for INPerson();

  v6 = v0;
  return RREntity.init<A>(id:appBundleId:usoEntity:intentEntity:group:)();
}

uint64_t outlined bridged method (pb) of @objc INPerson.customIdentifier.getter(void *a1)
{
  v1 = [a1 customIdentifier];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t specialized Data.append<A>(contentsOf:)(uint64_t a1, unint64_t a2)
{
  v8[3] = &type metadata for Data;
  v8[4] = &protocol witness table for Data;
  v8[0] = a1;
  v8[1] = a2;
  v4 = __swift_project_boxed_opaque_existential_1(v8, &type metadata for Data);
  v5 = *v4;
  v6 = v4[1];
  outlined copy of Data._Representation(a1, a2);
  specialized Data.withUnsafeBytes<A>(_:)(v5, v6);
  return __swift_destroy_boxed_opaque_existential_1(v8);
}

uint64_t outlined init with copy of Result<RRResult, Error>(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy32SiriReferenceResolutionDataModel8RRResultOs5Error_pGMd, &_ss6ResultOy32SiriReferenceResolutionDataModel8RRResultOs5Error_pGMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type SRRMatchType and conformance SRRMatchType()
{
  result = lazy protocol witness table cache variable for type SRRMatchType and conformance SRRMatchType;
  if (!lazy protocol witness table cache variable for type SRRMatchType and conformance SRRMatchType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SRRMatchType and conformance SRRMatchType);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SRRMatchType(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t specialized Data.withUnsafeBytes<A>(_:)(uint64_t a1, unint64_t a2)
{
  switch(a2 >> 62)
  {
    case 1uLL:
      v5 = a1 >> 32;
      if (a1 >> 32 < a1)
      {
        __break(1u);
      }

      a1 = a1;
      v3 = v5;
      goto LABEL_6;
    case 2uLL:
      v2 = *(a1 + 24);
      a1 = *(a1 + 16);
      v3 = v2;
LABEL_6:
      result = specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(a1, v3);
      break;
    default:
      result = Data._Representation.append(contentsOf:)();
      break;
  }

  return result;
}

uint64_t specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(uint64_t a1, uint64_t a2)
{
  result = __DataStorage._bytes.getter();
  if (!result || (result = __DataStorage._offset.getter(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      __DataStorage._length.getter();
      return Data._Representation.append(contentsOf:)();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t static RelationshipLabel.from(intentsRelationship:)@<X0>(uint64_t *a1@<X8>)
{
  countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
  object = v3;
  lazy protocol witness table accessor for type String and conformance String();
  if (StringProtocol.contains<A>(_:)())
  {

    v5 = StringProtocol<>.split(separator:maxSplits:omittingEmptySubsequences:)();

    specialized BidirectionalCollection.last.getter(v5);
    v7 = v6;

    if (v7)
    {
      static String._fromSubstring(_:)();
      swift_bridgeObjectRelease_n();
    }

    v8 = String.lowercased()();
    countAndFlagsBits = v8._countAndFlagsBits;

    object = v8._object;
  }

  *a1 = countAndFlagsBits;
  a1[1] = object;
  v9 = enum case for RelationshipLabel.custom(_:);
  v10 = type metadata accessor for RelationshipLabel();
  return (*(*(v10 - 8) + 104))(a1, v9, v10);
}

uint64_t ResponseMode.isDisplayMode()(void (*a1)(uint64_t), void (*a2)(uint64_t))
{
  v4 = type metadata accessor for ResponseMode();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  a1(v7);
  LOBYTE(a1) = static ResponseMode.== infix(_:_:)();
  v10 = *(v5 + 8);
  v11 = v10(v9, v4);
  if (a1)
  {
    v12 = 1;
  }

  else
  {
    a2(v11);
    v12 = static ResponseMode.== infix(_:_:)();
    v10(v9, v4);
  }

  return v12 & 1;
}

uint64_t RestrictionCheckGuardFlow.__allocating_init(parse:sharedGlobals:phoneCallCommonCATsSimple:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 48);
  v8 = *(v3 + 52);
  v9 = swift_allocObject();
  RestrictionCheckGuardFlow.init(parse:sharedGlobals:phoneCallCommonCATsSimple:)(a1, a2, a3);
  return v9;
}

uint64_t one-time initialization function for phoneCallCommand()
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v0;
  v1._countAndFlagsBits = 35;
  v1._object = 0xE100000000000000;
  String.append(_:)(v1);
  v2._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.append(_:)(v2);

  static RestrictionCheckGuardFlow.phoneCallCommand = v4;
  *algn_59A258 = v5;
  return result;
}

uint64_t *RestrictionCheckGuardFlow.phoneCallCommand.unsafeMutableAddressor()
{
  if (one-time initialization token for phoneCallCommand != -1)
  {
    OUTLINED_FUNCTION_1_99();
  }

  return &static RestrictionCheckGuardFlow.phoneCallCommand;
}

uint64_t static RestrictionCheckGuardFlow.phoneCallCommand.getter()
{
  if (one-time initialization token for phoneCallCommand != -1)
  {
    OUTLINED_FUNCTION_1_99();
  }

  v0 = static RestrictionCheckGuardFlow.phoneCallCommand;

  return v0;
}

uint64_t key path setter for RestrictionCheckGuardFlow.exitValue : RestrictionCheckGuardFlow(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin25RestrictionCheckGuardFlow_exitValue;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t RestrictionCheckGuardFlow.execute(completion:)()
{
  type metadata accessor for RestrictionCheckGuardFlow();
  lazy protocol witness table accessor for type RestrictionCheckGuardFlow and conformance RestrictionCheckGuardFlow(&lazy protocol witness table cache variable for type RestrictionCheckGuardFlow and conformance RestrictionCheckGuardFlow, type metadata accessor for RestrictionCheckGuardFlow);
  return Flow.deferToExecuteAsync(_:)();
}

uint64_t closure #1 in RestrictionCheckGuardFlow.execute()()
{
  v1 = *(**(*(v0 + 16) + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin25RestrictionCheckGuardFlow_phoneCallCommonCATsSimple) + class metadata base offset for PhoneCallCommonCATsSimple + 32);
  v5 = (v1 + *v1);
  v2 = v1[1];
  v3 = swift_task_alloc();
  *(v0 + 24) = v3;
  *v3 = v0;
  v3[1] = closure #1 in RestrictionCheckGuardFlow.execute();

  return v5();
}

{
  OUTLINED_FUNCTION_15();
  v3 = v2;
  OUTLINED_FUNCTION_28();
  v5 = *(v4 + 24);
  v6 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v7 = v6;

  v9 = *(v6 + 8);
  if (!v0)
  {
    v8 = v3;
  }

  return v9(v8);
}

uint64_t RestrictionCheckGuardFlow.isVoiceDialRestrictedRequest()()
{
  v1 = v0;
  v2 = type metadata accessor for Parse.DirectInvocation();
  v3 = OUTLINED_FUNCTION_7(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v3);
  v9 = v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Parse();
  v11 = OUTLINED_FUNCTION_7(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  __chkstk_darwin(v11);
  v17 = v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin25RestrictionCheckGuardFlow_parse;
  (*(v13 + 16))(v17, v1 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin25RestrictionCheckGuardFlow_parse, v10);
  v19 = *(v13 + 88);
  v20 = OUTLINED_FUNCTION_55_0();
  v22 = v21(v20);
  if (v22 == enum case for Parse.NLv3IntentOnly(_:))
  {
    goto LABEL_2;
  }

  if (v22 == enum case for Parse.NLv3IntentPlusServerConversion(_:))
  {
    v26 = *(v13 + 96);
    v27 = OUTLINED_FUNCTION_55_0();
    v28(v27);
    v29 = *&v17[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology8NLIntentV_0A7KitFlow5ParseO16ServerConversionCtMd, &_s12SiriOntology8NLIntentV_0A7KitFlow5ParseO16ServerConversionCtMR) + 48)];

    v30 = type metadata accessor for NLIntent();
    OUTLINED_FUNCTION_23_1(v30);
    (*(v31 + 8))(v17);
LABEL_5:
    v32 = *(v1 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin25RestrictionCheckGuardFlow_sharedGlobals + 32);
    __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin25RestrictionCheckGuardFlow_sharedGlobals), *(v1 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin25RestrictionCheckGuardFlow_sharedGlobals + 24));
    v33 = *(v32 + 72);
    v34 = OUTLINED_FUNCTION_55_0();
    v36 = v35(v34);
    (*(*v36 + 192))(v59, v1 + v18);

    outlined init with copy of PhoneCallNLIntent?(v59, v57);
    v37 = v58;
    if (v58)
    {
      __swift_project_boxed_opaque_existential_1(v57, v58);
      v37 = PhoneCallNLIntent.isOutgoingCall()();
      outlined destroy of PhoneCallNLIntent?(v59);
      __swift_destroy_boxed_opaque_existential_1(v57);
    }

    else
    {
      outlined destroy of PhoneCallNLIntent?(v59);
      outlined destroy of PhoneCallNLIntent?(v57);
    }

    goto LABEL_12;
  }

  if (v22 == enum case for Parse.directInvocation(_:))
  {
    v38 = *(v13 + 96);
    v39 = OUTLINED_FUNCTION_55_0();
    v40(v39);
    (*(v5 + 32))(v9, v17, v2);
    if (one-time initialization token for voiceDialRestrictedInvocations != -1)
    {
      swift_once();
    }

    v41 = static RestrictionCheckGuardFlow.voiceDialRestrictedInvocations;
    v42 = Parse.DirectInvocation.identifier.getter();
    LOBYTE(v1) = v43;
    v37 = specialized Set.contains(_:)(v42, v43, v41);

    (*(v5 + 8))(v9, v2);
  }

  else
  {
    if (v22 == enum case for Parse.NLv4IntentOnly(_:) || v22 == enum case for Parse.uso(_:))
    {
LABEL_2:
      v23 = *(v13 + 8);
      v24 = OUTLINED_FUNCTION_55_0();
      v25(v24);
      goto LABEL_5;
    }

    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2();
    }

    v49 = type metadata accessor for Logger();
    __swift_project_value_buffer(v49, static Logger.siriPhone);
    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_51_0(v51))
    {
      *OUTLINED_FUNCTION_65_0() = 0;
      OUTLINED_FUNCTION_15_3(&dword_0, v52, v53, "#RestrictionCheckFlow Unknown parse type, not applying VoiceDial restriction");
      OUTLINED_FUNCTION_26_0();
    }

    v54 = *(v13 + 8);
    v55 = OUTLINED_FUNCTION_55_0();
    v56(v55);
    v37 = 0;
  }

LABEL_12:
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2();
  }

  v44 = type metadata accessor for Logger();
  __swift_project_value_buffer(v44, static Logger.siriPhone);
  v45 = Logger.logObject.getter();
  v46 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_51_0(v46))
  {
    v47 = swift_slowAlloc();
    *v47 = 67109120;
    *(v47 + 4) = v37 & 1;
    _os_log_impl(&dword_0, v45, v1, "#RestrictionCheckFlow isVoiceDialRestrictedRequest: %{BOOL}d", v47, 8u);
    OUTLINED_FUNCTION_26_0();
  }

  return v37 & 1;
}

uint64_t partial apply for closure #1 in RestrictionCheckGuardFlow.execute()()
{
  OUTLINED_FUNCTION_15();
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = partial apply for closure #1 in static CommonOutputs.promptCancelled(sharedGlobals:phoneCallCommonCATsSimple:);

  return closure #1 in RestrictionCheckGuardFlow.execute()(v0);
}

uint64_t type metadata completion function for RestrictionCheckGuardFlow()
{
  result = type metadata accessor for Parse();
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

uint64_t Result<>.merge(with:behaviorAfterSpeaking:)@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v2 = *(a1 + 16);
  return _ss6ResultO7flatMapyAByqd__q_GADxXERi_d__lF(partial apply for closure #1 in Result<>.merge(with:behaviorAfterSpeaking:), a1, a2);
}

uint64_t _ss6ResultO3mapyAByqd__q_Gqd__xXERi_d__lF@<X0>(void (*a1)(char *)@<X0>, void *a2@<X2>, uint64_t a3@<X8>)
{
  v6 = a2[2];
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(a1);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(*(v11 - 8) + 64);
  v14 = __chkstk_darwin(v13);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v16, v18, v14);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(*(a2[3] - 8) + 32))(a3, v16, a2[3]);
  }

  else
  {
    (*(v7 + 32))(v10, v16, v6);
    a1(v10);
    (*(v7 + 8))(v10, v6);
    v19 = a2[3];
  }

  v20 = a2[4];
  type metadata accessor for Result();
  return swift_storeEnumTagMultiPayload();
}

uint64_t _ss6ResultO7flatMapyAByqd__q_GADxXERi_d__lF@<X0>(void (*a1)(char *)@<X0>, void *a2@<X2>, uint64_t a3@<X8>)
{
  v6 = a2[2];
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(a1);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(*(v11 - 8) + 64);
  v14 = __chkstk_darwin(v13);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v16, v18, v14);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(*(a2[3] - 8) + 32))(a3, v16, a2[3]);
    v19 = a2[4];
    type metadata accessor for Result();
    return swift_storeEnumTagMultiPayload();
  }

  else
  {
    (*(v7 + 32))(v10, v16, v6);
    a1(v10);
    return (*(v7 + 8))(v10, v6);
  }
}

uint64_t closure #1 in Result<>.merge(with:behaviorAfterSpeaking:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  type metadata accessor for TemplatingResult();
  v8 = type metadata accessor for Result();
  v9 = *(*(v8 - 1) + 64);
  __chkstk_darwin(v8);
  v16 = a1;
  _ss6ResultO3mapyAByqd__q_Gqd__xXERi_d__lF(partial apply for closure #1 in closure #1 in Result<>.merge(with:behaviorAfterSpeaking:), v8, &v12[-v10]);
  v13 = a2;
  v14 = a3;
  v15 = a1;
  return _ss6ResultOsRi_zrlE12flatMapErroryAByxqd__GADq_XEs0D0Rd__lF(partial apply for closure #2 in closure #1 in Result<>.merge(with:behaviorAfterSpeaking:), v8, a4);
}

uint64_t closure #1 in closure #1 in Result<>.merge(with:behaviorAfterSpeaking:)@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow21BehaviorAfterSpeakingOSgMd, &_s11SiriKitFlow21BehaviorAfterSpeakingOSgMR);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v8 - v4;
  v6 = type metadata accessor for BehaviorAfterSpeaking();
  __swift_storeEnumTagSinglePayload(v5, 1, 1, v6);
  TemplatingResult.merge(with:behaviorAfterSpeaking:)(v5, a1);
  return outlined destroy of BehaviorAfterSpeaking?(v5);
}

uint64_t closure #2 in closure #1 in Result<>.merge(with:behaviorAfterSpeaking:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for TemplatingResult();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  type metadata accessor for Result();

  return swift_storeEnumTagMultiPayload();
}

uint64_t _ss6ResultOsRi_zrlE12flatMapErroryAByxqd__GADq_XEs0D0Rd__lF@<X0>(void (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v7 = *(a2 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(a1);
  v11 = &v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v8 + 32))(v11, v3, v7);
    a1(v11);
    return (*(v8 + 8))(v11, v7);
  }

  else
  {
    (*(*(*(a2 + 16) - 8) + 32))(a3, v3, *(a2 + 16));
    type metadata accessor for Result();

    return swift_storeEnumTagMultiPayload();
  }
}

uint64_t Result.zip<A>(with:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 16);
  v6 = *(a1 + 32);
  swift_getTupleTypeMetadata2();
  return _ss6ResultO7flatMapyAByqd__q_GADxXERi_d__lF(partial apply for closure #1 in Result.zip<A>(with:), a1, a2);
}

uint64_t closure #1 in Result.zip<A>(with:)@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Result();
  swift_getTupleTypeMetadata2();
  return _ss6ResultO3mapyAByqd__q_Gqd__xXERi_d__lF(partial apply for closure #1 in closure #1 in Result.zip<A>(with:), v2, a1);
}

uint64_t outlined destroy of BehaviorAfterSpeaking?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow21BehaviorAfterSpeakingOSgMd, &_s11SiriKitFlow21BehaviorAfterSpeakingOSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t closure #1 in closure #1 in Result.zip<A>(with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v10 = *(swift_getTupleTypeMetadata2() + 48);
  (*(*(a3 - 8) + 16))(a5, a2, a3);
  v11 = *(*(a4 - 8) + 16);

  return v11(a5 + v10, a1, a4);
}

uint64_t partial apply for closure #2 in closure #1 in Result<>.merge(with:behaviorAfterSpeaking:)@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  return closure #2 in closure #1 in Result<>.merge(with:behaviorAfterSpeaking:)(v1[4], a1);
}

id SAUIPlayNotificationSound.init(notificationId:soundType:)(uint64_t a1, uint64_t a2)
{
  v3 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v4 = v3;
  if (a2)
  {
    v5 = String._bridgeToObjectiveC()();
  }

  else
  {
    v5 = 0;
  }

  [v3 setNotificationId:v5];

  outlined bridged method (mbnn) of @objc SAUIPlayNotificationSound.notificationType.setter();
  return v3;
}

id SANotificationsSearch.init(after:isOnDeviceSearch:)(uint64_t a1, uint64_t a2, char a3)
{
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;
  outlined bridged method (mbnn) of @objc SAUIPlayNotificationSound.notificationType.setter();
  OUTLINED_FUNCTION_8_2();
  outlined bridged method (mbnn) of @objc SAUIPlayNotificationSound.notificationType.setter();
  v6 = [objc_allocWithZone(NSNumber) initWithBool:a3 & 1];
  [v5 setIsOnDeviceSearch:v6];

  return v5;
}

id SASTButtonItem.init(label:commands:centered:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v6 setCentered:a4 & 1];
  v7 = [objc_allocWithZone(SASTCommandTemplateAction) init];
  outlined bridged method (mbnn) of @objc SASTCommandTemplateAction.commands.setter(a3, v7, &_sSo20SAClientBoundCommand_pMd, &_sSo20SAClientBoundCommand_pMR);
  [v6 setAction:v7];

  v8 = [objc_allocWithZone(SAUIDecoratedText) init];
  outlined bridged method (mbnn) of @objc SAUIPlayNotificationSound.notificationType.setter();
  [v6 setDecoratedLabel:v8];

  return v6;
}

id SAPhoneCallConfirmationSnippet.init(confirmOption:confirmationDisplayText:)(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SAUIConfirmationOptions, SAUIConfirmationOptions_ptr);
  v6 = v5;
  v7 = a1;
  v8 = SAUIConfirmationOptions.init(denyOption:confirmOption:)(0, v7);
  [v6 setConfirmationOptions:v8];

  if (a3)
  {
    OUTLINED_FUNCTION_20_0();
    v9 = String._bridgeToObjectiveC()();
  }

  else
  {
    v9 = 0;
  }

  [v6 setConfirmationDisplayText:v9];

  return v6;
}

id SAUIConfirmationOption.init(label:type:iconType:commands:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  outlined bridged method (mbnn) of @objc SAUIPlayNotificationSound.notificationType.setter();
  outlined bridged method (mbnn) of @objc SAUIPlayNotificationSound.notificationType.setter();
  if (a6)
  {
    OUTLINED_FUNCTION_8_2();
    v10 = String._bridgeToObjectiveC()();
  }

  else
  {
    v10 = 0;
  }

  [v9 setIconType:v10];

  outlined bridged method (mbnn) of @objc SASTCommandTemplateAction.commands.setter(a7, v9, &_sSo20SAClientBoundCommand_pMd, &_sSo20SAClientBoundCommand_pMR);
  return v9;
}

void *SAUIConfirmationOptions.init(denyOption:confirmOption:)(void *a1, void *a2)
{
  v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v7 = OUTLINED_FUNCTION_7_65();
  v8 = outlined bridged method (pb) of @objc SAUIConfirmationOption.commands.getter(v7);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20SAClientBoundCommand_pMd, &_sSo20SAClientBoundCommand_pMR);
    Array._bridgeToObjectiveC()();
    v8 = OUTLINED_FUNCTION_2_99();
  }

  else
  {
    v3 = 0;
  }

  OUTLINED_FUNCTION_4_74(v8, "setConfirmCommands:");

  if (!a1 || (v9 = outlined bridged method (ob) of @objc SAUIConfirmationOption.commands.getter(a1)) == 0)
  {

    v9 = _swiftEmptyArrayStorage;
  }

  outlined bridged method (mbnn) of @objc SASTCommandTemplateAction.commands.setter(v9, v2, &_sSo20SAClientBoundCommand_pMd, &_sSo20SAClientBoundCommand_pMR);
  v10 = outlined bridged method (pb) of @objc _UNNotificationContact.cnContactIdentifier.getter(a2, &selRef_label);
  if (v11)
  {
    String._bridgeToObjectiveC()();
    v10 = OUTLINED_FUNCTION_2_99();
  }

  else
  {
    v3 = 0;
  }

  OUTLINED_FUNCTION_4_74(v10, "setConfirmText:");

  if (a1 && (v12 = outlined bridged method (ob) of @objc SAUIConfirmationOption.label.getter(a1), v13))
  {
    String._bridgeToObjectiveC()();
    v12 = OUTLINED_FUNCTION_2_99();
  }

  else
  {
    v3 = 0;
  }

  OUTLINED_FUNCTION_4_74(v12, "setDenyText:");

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  outlined bridged method (mbnn) of @objc SAUIPlayNotificationSound.notificationType.setter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo22SAUIConfirmationOptionCSgGMd, &_ss23_ContiguousArrayStorageCySo22SAUIConfirmationOptionCSgGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_424FF0;
  *(inited + 32) = a1;
  *(inited + 40) = a2;
  v15 = a1;
  v16 = a2;
  for (i = 0; i != 2; ++i)
  {
    v18 = *(inited + 8 * i + 32);
    if (v18)
    {
      v19 = v18;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }
  }

  swift_setDeallocating();
  specialized _ContiguousArrayStorage.__deallocating_deinit(&_sSo22SAUIConfirmationOptionCSgMd, &_sSo22SAUIConfirmationOptionCSgMR);
  outlined bridged method (mbnn) of @objc SAUIConfirmationOptions.allConfirmationOptions.setter(_swiftEmptyArrayStorage, v2, &lazy cache variable for type metadata for SAUIConfirmationOption, SAUIConfirmationOption_ptr);

  return v2;
}

id SAUIAddDialogs.init(dialogString:templateIdentifier:)()
{
  v0 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v1 = objc_allocWithZone(SADialogText);
  v2 = v0;
  v3 = [v1 init];
  outlined bridged method (mbnn) of @objc SAUIPlayNotificationSound.notificationType.setter();
  v4 = [objc_allocWithZone(SADialog) init];
  [v4 setContent:v3];
  OUTLINED_FUNCTION_8_2();
  outlined bridged method (mbnn) of @objc SAUIPlayNotificationSound.notificationType.setter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_426260;
  *(v5 + 32) = v4;
  v6 = v4;
  v7 = OUTLINED_FUNCTION_20_0();
  outlined bridged method (mbnn) of @objc SAUIConfirmationOptions.allConfirmationOptions.setter(v7, v8, v9, SADialog_ptr);

  return v2;
}

id SASTItemGroup.init(items:)()
{
  return SASTItemGroup.init(items:)();
}

{
  v3 = [objc_allocWithZone(OUTLINED_FUNCTION_5_80()) init];
  outlined bridged method (mbnn) of @objc SASTCommandTemplateAction.commands.setter(v2, v3, v1, v0);
  return v3;
}

id SAUIColor.init(r:g:b:alpha:)()
{
  v3 = [objc_allocWithZone(OUTLINED_FUNCTION_5_80()) init];
  [v3 setRedValue:v2];
  OUTLINED_FUNCTION_10_65([v3 setGreenValue:v1], "setBlueValue:");
  v4 = v0;
  [v3 setAlpha:v4];

  return v3;
}

void *SAUIConfirmationView.init(confirmOption:denyOption:)(void *a1, void *a2)
{
  v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v7 = OUTLINED_FUNCTION_7_65();
  v8 = outlined bridged method (pb) of @objc SAUIConfirmationOption.commands.getter(v7);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20SAClientBoundCommand_pMd, &_sSo20SAClientBoundCommand_pMR);
    Array._bridgeToObjectiveC()();
    v8 = OUTLINED_FUNCTION_2_99();
  }

  else
  {
    v3 = 0;
  }

  OUTLINED_FUNCTION_4_74(v8, "setConfirmCommands:");

  v9 = outlined bridged method (pb) of @objc SAUIConfirmationOption.commands.getter(a2);
  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20SAClientBoundCommand_pMd, &_sSo20SAClientBoundCommand_pMR);
    Array._bridgeToObjectiveC()();
    v9 = OUTLINED_FUNCTION_2_99();
  }

  else
  {
    v3 = 0;
  }

  OUTLINED_FUNCTION_4_74(v9, "setDenyCommands:");

  v10 = outlined bridged method (pb) of @objc _UNNotificationContact.cnContactIdentifier.getter(a1, &selRef_label);
  if (v11)
  {
    String._bridgeToObjectiveC()();
    v10 = OUTLINED_FUNCTION_2_99();
  }

  else
  {
    v3 = 0;
  }

  OUTLINED_FUNCTION_4_74(v10, "setConfirmText:");

  v12 = outlined bridged method (pb) of @objc _UNNotificationContact.cnContactIdentifier.getter(a2, &selRef_label);
  if (v13)
  {
    String._bridgeToObjectiveC()();
    v12 = OUTLINED_FUNCTION_2_99();
  }

  else
  {
    v3 = 0;
  }

  OUTLINED_FUNCTION_4_74(v12, "setDenyText:");

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  outlined bridged method (mbnn) of @objc SAUIPlayNotificationSound.notificationType.setter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_427BB0;
  *(v14 + 32) = a2;
  *(v14 + 40) = a1;
  v15 = a2;
  v16 = a1;
  outlined bridged method (mbnn) of @objc SAUIConfirmationOptions.allConfirmationOptions.setter(v14, v2, &lazy cache variable for type metadata for SAUIConfirmationOption, SAUIConfirmationOption_ptr);

  return v2;
}

id static SASTItemGroup.makeButtonGroup(label:commands:centered:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_426260;
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SASTButtonItem, SASTButtonItem_ptr);

  v7 = OUTLINED_FUNCTION_8_2();
  *(v6 + 32) = SASTButtonItem.init(label:commands:centered:)(v7, v8, a3, a4);
  v9 = [objc_allocWithZone(SASTItemGroup) init];
  outlined bridged method (mbnn) of @objc SASTCommandTemplateAction.commands.setter(v6, v9, &_sSo16SASTTemplateItem_pMd, &_sSo16SASTTemplateItem_pMR);
  return v9;
}

id SAUIButton.init(text:commands:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  OUTLINED_FUNCTION_8_2();
  outlined bridged method (mbnn) of @objc SAUIPlayNotificationSound.notificationType.setter();
  outlined bridged method (mbnn) of @objc SASTCommandTemplateAction.commands.setter(a3, v4, &_sSo20SAClientBoundCommand_pMd, &_sSo20SAClientBoundCommand_pMR);

  return v4;
}

id SAIntentGroupHandleIntent.init(intent:appIdentifier:)(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = OUTLINED_FUNCTION_7(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  __chkstk_darwin(v7);
  OUTLINED_FUNCTION_3_92();
  v12 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  UUID.init()();
  v13 = UUID.uuidString.getter();
  v15 = v14;
  (*(v9 + 8))(v3, v6);
  outlined bridged method (mbnn) of @objc SABaseClientBoundCommand.aceId.setter(v13, v15, v12);
  if (a3)
  {
    v16 = String._bridgeToObjectiveC()();
  }

  else
  {
    v16 = 0;
  }

  [v12 setAppId:v16];

  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SAIntentGroupProtobufMessage, SAIntentGroupProtobufMessage_ptr);
  v17 = a1;
  v18 = SAIntentGroupProtobufMessage.init(intent:)();
  [v12 setIntent:v18];

  return v12;
}

id SAAceConfirmationContext.init(reason:)()
{
  v0 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v1 = OUTLINED_FUNCTION_20_0();
  outlined bridged method (mbnn) of @objc SAAceConfirmationContext.reason.setter(v1, v2, v0);
  return v0;
}

id SAUISayIt.init(message:dialogIdentifier:canUseServerTTS:listenAfterSpeaking:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6)
{
  v9 = type metadata accessor for UUID();
  v10 = OUTLINED_FUNCTION_7(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  __chkstk_darwin(v10);
  OUTLINED_FUNCTION_3_92();
  v15 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  outlined bridged method (mbnn) of @objc SAUIPlayNotificationSound.notificationType.setter();
  v16 = v15;
  [v16 setCanUseServerTTS:a5 & 1];
  UUID.init()();
  v17 = UUID.uuidString.getter();
  v19 = v18;
  (*(v12 + 8))(v6, v9);
  outlined bridged method (mbnn) of @objc SABaseClientBoundCommand.aceId.setter(v17, v19, v16);

  OUTLINED_FUNCTION_8_2();
  outlined bridged method (mbnn) of @objc SAUIPlayNotificationSound.notificationType.setter();
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for NSNumber, NSNumber_ptr);
  isa = NSNumber.init(integerLiteral:)(a6 & 1).super.super.isa;
  [v16 setListenAfterSpeaking:isa];

  return v16;
}

id SAIntentGroupProtobufMessage.init(intent:)()
{
  OUTLINED_FUNCTION_7_65();
  v1 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v2 = outlined bridged method (ob) of @objc PBCodable.data.getter([v0 backingStore]);
  if (v3 >> 60 == 15)
  {
    isa = 0;
  }

  else
  {
    v5 = v2;
    v6 = v3;
    isa = Data._bridgeToObjectiveC()().super.isa;
    v2 = outlined consume of Data?(v5, v6);
  }

  OUTLINED_FUNCTION_10_65(v2, "setData:");

  v7 = [v0 typeName];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  outlined bridged method (mbnn) of @objc SAUIPlayNotificationSound.notificationType.setter();
  return v1;
}

id SAAppsLaunchApp.init(app:)(uint64_t a1, SEL *a2)
{
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  App.appIdentifier.getter();
  if (v5)
  {
    String._bridgeToObjectiveC()();
    OUTLINED_FUNCTION_2_99();
  }

  else
  {
    v2 = 0;
  }

  [v4 *a2];

  return v4;
}

id SAABPersonPicker.init(canUseServerTTS:showImmediately:canBeRefreshed:)(char a1, char a2, char a3)
{
  v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  outlined bridged method (mbnn) of @objc SAUIPlayNotificationSound.notificationType.setter();
  [v6 setShowImmediately:a2 & 1];
  [v6 setCanBeRefreshed:a3 & 1];
  [v6 setCanUseServerTTS:a1 & 1];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  outlined bridged method (mbnn) of @objc SAUIPlayNotificationSound.notificationType.setter();

  return v6;
}

id SAUIDecoratedText.init(label:)()
{
  v0 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  OUTLINED_FUNCTION_20_0();
  outlined bridged method (mbnn) of @objc SAUIPlayNotificationSound.notificationType.setter();
  return v0;
}

id SAIntentGroupProtobufMessage.init(response:)()
{
  OUTLINED_FUNCTION_7_65();
  v1 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  result = [v0 backingStore];
  if (result)
  {
    v3 = outlined bridged method (ob) of @objc PBCodable.data.getter(result);
    if (v4 >> 60 == 15)
    {
      isa = 0;
    }

    else
    {
      v6 = v3;
      v7 = v4;
      isa = Data._bridgeToObjectiveC()().super.isa;
      v3 = outlined consume of Data?(v6, v7);
    }

    OUTLINED_FUNCTION_10_65(v3, "setData:");

    v8 = outlined bridged method (pb) of @objc _UNNotificationContact.cnContactIdentifier.getter(v0, &selRef__payloadResponseTypeName);
    if (v9)
    {
      v10 = String._bridgeToObjectiveC()();
    }

    else
    {
      v10 = 0;
    }

    OUTLINED_FUNCTION_10_65(v8, "setTypeName:");

    return v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t specialized _ContiguousArrayStorage.__deallocating_deinit()
{
  v1 = *(v0 + 16);
  swift_arrayDestroy();
  OUTLINED_FUNCTION_2_12();

  return swift_deallocClassInstance();
}

{
  v1 = *(v0 + 16);
  swift_arrayDestroy();
  OUTLINED_FUNCTION_2_12();

  return swift_deallocClassInstance();
}

{
  return specialized _ContiguousArrayStorage.__deallocating_deinit(&_s27PhoneCallFlowDelegatePlugin16UsoVocIdentifier_pMd, &_s27PhoneCallFlowDelegatePlugin16UsoVocIdentifier_pMR);
}

{
  return specialized _ContiguousArrayStorage.__deallocating_deinit(&_sSSSgMd, &_sSSSgMR);
}

{
  v1 = *(v0 + 16);
  swift_arrayDestroy();
  OUTLINED_FUNCTION_2_12();

  return swift_deallocClassInstance();
}

{
  return specialized _ContiguousArrayStorage.__deallocating_deinit(&_sSo8INPersonCSgMd, &_sSo8INPersonCSgMR);
}

{
  v1 = *(v0 + 16);
  swift_arrayDestroy();
  OUTLINED_FUNCTION_2_12();

  return swift_deallocClassInstance();
}

uint64_t specialized _ContiguousArrayStorage.__deallocating_deinit(uint64_t *a1, uint64_t *a2)
{
  v3 = *(v2 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  swift_arrayDestroy();
  OUTLINED_FUNCTION_2_12();

  return swift_deallocClassInstance();
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

uint64_t outlined bridged method (ob) of @objc SAUIConfirmationOption.label.getter(void *a1)
{
  v2 = [a1 label];

  if (!v2)
  {
    return 0;
  }

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t outlined bridged method (ob) of @objc SAUIConfirmationOption.commands.getter(void *a1)
{
  v2 = [a1 commands];

  if (!v2)
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20SAClientBoundCommand_pMd, &_sSo20SAClientBoundCommand_pMR);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

void outlined bridged method (mbnn) of @objc SAUIConfirmationOptions.allConfirmationOptions.setter(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t *a4)
{
  type metadata accessor for CNContactStore(0, a3, a4);
  isa = Array._bridgeToObjectiveC()().super.isa;

  OUTLINED_FUNCTION_6_74(v4, v5, v6, v7, v8, v9, v10, v11, v12, isa);
}

void outlined bridged method (mbnn) of @objc SASTCommandTemplateAction.commands.setter(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  isa = Array._bridgeToObjectiveC()().super.isa;

  OUTLINED_FUNCTION_6_74(v4, v5, v6, v7, v8, v9, v10, v11, v12, isa);
}

void outlined bridged method (mbnn) of @objc SAUIPlayNotificationSound.notificationType.setter()
{
  v9 = String._bridgeToObjectiveC()();

  OUTLINED_FUNCTION_6_74(v0, v1, v2, v3, v4, v5, v6, v7, v8, v9);
}

INPerson __swiftcall SAPerson.toINPerson()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PersonNameComponentsVSgMd, &_s10Foundation20PersonNameComponentsVSgMR);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  OUTLINED_FUNCTION_12_5();
  v5 = v3 - v4;
  __chkstk_darwin(v6);
  v8 = &v32 - v7;
  v9 = type metadata accessor for PersonNameComponents();
  v10 = *(v9 - 8);
  v11 = v10[8];
  __chkstk_darwin(v9);
  OUTLINED_FUNCTION_12_5();
  v14 = (v12 - v13);
  __chkstk_darwin(v15);
  v17 = &v32 - v16;
  PersonNameComponents.init()();
  outlined bridged method (pb) of @objc _UNNotificationContact.cnContactIdentifier.getter(v0, &selRef_firstNamePhonetic);
  PersonNameComponents.givenName.setter();
  outlined bridged method (pb) of @objc _UNNotificationContact.cnContactIdentifier.getter(v0, &selRef_lastNamePhonetic);
  PersonNameComponents.familyName.setter();
  PersonNameComponents.init()();
  v18 = v10[2];
  v18(v8, v17, v9);
  __swift_storeEnumTagSinglePayload(v8, 0, 1, v9);
  PersonNameComponents.phoneticRepresentation.setter();
  outlined bridged method (pb) of @objc _UNNotificationContact.cnContactIdentifier.getter(v0, &selRef_firstName);
  PersonNameComponents.givenName.setter();
  outlined bridged method (pb) of @objc _UNNotificationContact.cnContactIdentifier.getter(v0, &selRef_lastName);
  PersonNameComponents.familyName.setter();
  v19 = objc_allocWithZone(INPersonHandle);
  v35 = @nonobjc INPersonHandle.init(value:type:)(0, 0, 0);
  v18(v5, v14, v9);
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v9);
  v20 = outlined bridged method (pb) of @objc _UNNotificationContact.cnContactIdentifier.getter(v0, &selRef_fullName);
  v33 = v21;
  v34 = v20;
  v22 = outlined bridged method (pb) of @objc _UNNotificationContact.cnContactIdentifier.getter(v0, &selRef_internalGUID);
  v24 = v23;
  v25 = [v0 me];
  type metadata accessor for NSNumber();
  v26.super.super.isa = NSNumber.init(integerLiteral:)(1).super.super.isa;
  if (v25)
  {
    v27 = static NSObject.== infix(_:_:)();

    v26.super.super.isa = v25;
  }

  else
  {
    v27 = 0;
  }

  v28 = objc_allocWithZone(INPerson);
  v29 = @nonobjc INPerson.init(personHandle:nameComponents:displayName:image:contactIdentifier:customIdentifier:isMe:)(v35, v5, v34, v33, 0, v22, v24, 0, 0, v27 & 1);
  v30 = v10[1];
  v30(v14, v9);
  v30(v17, v9);
  return v29;
}

id SAPerson.init(person:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PersonNameComponentsVSgMd, &_s10Foundation20PersonNameComponentsVSgMR);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  OUTLINED_FUNCTION_12_5();
  v6 = v4 - v5;
  v8 = __chkstk_darwin(v7);
  v76 = &v75 - v9;
  v10 = __chkstk_darwin(v8);
  v77 = &v75 - v11;
  v12 = __chkstk_darwin(v10);
  v75 = &v75 - v13;
  v14 = __chkstk_darwin(v12);
  v16 = &v75 - v15;
  v17 = __chkstk_darwin(v14);
  v19 = &v75 - v18;
  v20 = __chkstk_darwin(v17);
  v22 = &v75 - v21;
  v23 = __chkstk_darwin(v20);
  v25 = &v75 - v24;
  v26 = __chkstk_darwin(v23);
  v28 = &v75 - v27;
  __chkstk_darwin(v26);
  v30 = &v75 - v29;
  v31 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v32 = [a1 nameComponents];
  if (v32)
  {
    v33 = v32;
    static PersonNameComponents._unconditionallyBridgeFromObjectiveC(_:)();

    type metadata accessor for PersonNameComponents();
    v34 = 0;
  }

  else
  {
    type metadata accessor for PersonNameComponents();
    v34 = 1;
  }

  v78 = v6;
  OUTLINED_FUNCTION_3_93(v28, v34);
  outlined init with take of PersonNameComponents?(v28, v30);
  type metadata accessor for PersonNameComponents();
  if (OUTLINED_FUNCTION_1_100(v30))
  {
    v35 = outlined destroy of PersonNameComponents?(v30);
LABEL_6:
    v36 = 0;
    goto LABEL_9;
  }

  PersonNameComponents.givenName.getter();
  v38 = v37;
  v35 = outlined destroy of PersonNameComponents?(v30);
  if (!v38)
  {
    goto LABEL_6;
  }

  v36 = String._bridgeToObjectiveC()();

LABEL_9:
  OUTLINED_FUNCTION_2_100(v35, "setFirstName:");

  v39 = [a1 displayName];
  v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v42 = v41;

  outlined bridged method (mbnn) of @objc SAPerson.fullName.setter(v40, v42, v31);
  v43 = [a1 nameComponents];
  if (v43)
  {
    v44 = v43;
    static PersonNameComponents._unconditionallyBridgeFromObjectiveC(_:)();

    v45 = 0;
  }

  else
  {
    v45 = 1;
  }

  OUTLINED_FUNCTION_3_93(v22, v45);
  outlined init with take of PersonNameComponents?(v22, v25);
  v46 = OUTLINED_FUNCTION_1_100(v25);
  v47 = v78;
  if (v46)
  {
    v48 = outlined destroy of PersonNameComponents?(v25);
    v49 = 0;
    v50 = v77;
  }

  else
  {
    PersonNameComponents.familyName.getter();
    v52 = v51;
    v48 = outlined destroy of PersonNameComponents?(v25);
    v50 = v77;
    if (v52)
    {
      v49 = String._bridgeToObjectiveC()();
    }

    else
    {
      v49 = 0;
    }
  }

  OUTLINED_FUNCTION_2_100(v48, "setLastName:");

  v53 = [a1 nameComponents];
  if (v53)
  {
    v54 = v53;
    static PersonNameComponents._unconditionallyBridgeFromObjectiveC(_:)();

    v55 = 0;
  }

  else
  {
    v55 = 1;
  }

  OUTLINED_FUNCTION_3_93(v16, v55);
  outlined init with take of PersonNameComponents?(v16, v19);
  if (OUTLINED_FUNCTION_1_100(v19))
  {
    v56 = outlined destroy of PersonNameComponents?(v19);
    v57 = 0;
    v58 = v76;
    goto LABEL_28;
  }

  v59 = v75;
  PersonNameComponents.phoneticRepresentation.getter();
  if (OUTLINED_FUNCTION_1_100(v59))
  {
    outlined destroy of PersonNameComponents?(v59);
    v56 = outlined destroy of PersonNameComponents?(v19);
  }

  else
  {
    PersonNameComponents.givenName.getter();
    v61 = v60;
    outlined destroy of PersonNameComponents?(v59);
    v56 = outlined destroy of PersonNameComponents?(v19);
    if (v61)
    {
      v57 = String._bridgeToObjectiveC()();

      goto LABEL_27;
    }
  }

  v57 = 0;
LABEL_27:
  v58 = v76;
LABEL_28:
  OUTLINED_FUNCTION_2_100(v56, "setFirstNamePhonetic:");

  v62 = [a1 nameComponents];
  if (v62)
  {
    v63 = v62;
    static PersonNameComponents._unconditionallyBridgeFromObjectiveC(_:)();

    v64 = 0;
  }

  else
  {
    v64 = 1;
  }

  OUTLINED_FUNCTION_3_93(v58, v64);
  outlined init with take of PersonNameComponents?(v58, v50);
  if (OUTLINED_FUNCTION_1_100(v50))
  {
    goto LABEL_34;
  }

  PersonNameComponents.phoneticRepresentation.getter();
  if (OUTLINED_FUNCTION_1_100(v47))
  {
    outlined destroy of PersonNameComponents?(v47);
LABEL_34:
    v65 = outlined destroy of PersonNameComponents?(v50);
LABEL_35:
    v66 = 0;
    goto LABEL_36;
  }

  PersonNameComponents.familyName.getter();
  v74 = v73;
  outlined destroy of PersonNameComponents?(v47);
  v65 = outlined destroy of PersonNameComponents?(v50);
  if (!v74)
  {
    goto LABEL_35;
  }

  v66 = String._bridgeToObjectiveC()();

LABEL_36:
  OUTLINED_FUNCTION_2_100(v65, "setLastNamePhonetic:");

  v67 = outlined bridged method (pb) of @objc INPerson.contactIdentifier.getter(a1);
  if (v68)
  {
    v69 = String._bridgeToObjectiveC()();
  }

  else
  {
    v69 = 0;
  }

  OUTLINED_FUNCTION_2_100(v67, "setInternalGUID:");

  v70 = [a1 isMe];
  type metadata accessor for NSNumber();
  isa = NSNumber.init(integerLiteral:)(v70).super.super.isa;
  OUTLINED_FUNCTION_2_100(isa, "setMe:");

  return v31;
}

id @nonobjc INPerson.init(personHandle:nameComponents:displayName:image:contactIdentifier:customIdentifier:isMe:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
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

  LOBYTE(v24) = a10 & 1;
  v22 = [v11 initWithPersonHandle:a1 nameComponents:isa displayName:v19 image:a5 contactIdentifier:v20 customIdentifier:v21 isMe:v24];

  return v22;
}

void outlined bridged method (mbnn) of @objc SAPerson.fullName.setter(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = String._bridgeToObjectiveC()();

  [a3 setFullName:v4];
}

id SCHCardItemComponents.toCardItem()()
{
  v1 = [objc_allocWithZone(SASTCardItem) init];
  v2 = [objc_allocWithZone(SAUIDecoratedText) init];
  CallRecordDisplayTextComponents.callerNameText.getter();
  outlined bridged method (mbnn) of @objc SAUIDecoratedText.text.setter();
  [v1 setTitle:v2];

  if ([*v0 callRecordType] == &dword_0 + 2)
  {
    if (one-time initialization token for missedRed != -1)
    {
      swift_once();
    }

    v3 = static ColorFactory.missedRed;
  }

  else
  {
    v3 = static ColorFactory.white.getter();
  }

  v4 = v3;
  [v1 setTitleTextColor:v3];

  v5 = SCHCardItemComponents.dateString.getter();
  [v1 setFootnote:v5];

  if (one-time initialization token for watchDarkCardItemBackgroundColor != -1)
  {
    swift_once();
  }

  [v1 setBackgroundColor:static ColorFactory.watchDarkCardItemBackgroundColor];
  if (one-time initialization token for watchDarkCardItemTitleBackgroundColor != -1)
  {
    swift_once();
  }

  [v1 setTitleBackgroundColor:static ColorFactory.watchDarkCardItemTitleBackgroundColor];
  return v1;
}

id SCHCardItemComponents.callerName.getter()
{
  v0 = [objc_allocWithZone(SAUIDecoratedText) init];
  CallRecordDisplayTextComponents.callerNameText.getter();
  outlined bridged method (mbnn) of @objc SAUIDecoratedText.text.setter();
  return v0;
}

id SCHCardItemComponents.dateString.getter()
{
  v0 = CallRecordDisplayTextComponents.callDateText.getter();
  v2 = v1;

  v3 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v3 = v0 & 0xFFFFFFFFFFFFLL;
  }

  if (!v3)
  {
    return 0;
  }

  v4 = [objc_allocWithZone(SAUIDecoratedText) init];
  CallRecordDisplayTextComponents.callDateText.getter();
  outlined bridged method (mbnn) of @objc SAUIDecoratedText.text.setter();
  return v4;
}

uint64_t Array<A>.toCardSnippet()(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v12 = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v3 = a1 + 32;
    do
    {
      outlined init with copy of SignalProviding(v3, v9);
      v4 = v10;
      v5 = v11;
      __swift_project_boxed_opaque_existential_1(v9, v10);
      SCHRowCardSectionComponents.toCardSection()(v4, v5);
      __swift_destroy_boxed_opaque_existential_1(v9);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v6 = v12[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v3 += 40;
      --v1;
    }

    while (v1);
  }

  type metadata accessor for SACardSnippet();
  v7 = static SACardSnippet.makeFromCardSections(cardSections:shouldGenerateAceId:)();

  return v7;
}

id SCHRowCardSectionComponents.toCardSection()(uint64_t a1, void *a2)
{
  v3 = [objc_allocWithZone(SFRowCardSection) init];
  [v3 setSeparatorStyle:4];
  v4 = a2[2];
  v5 = OUTLINED_FUNCTION_5_26();
  v7 = v6(v5);
  OUTLINED_FUNCTION_1_101(v7, "setLeadingText:");

  v8 = a2[3];
  v9 = OUTLINED_FUNCTION_5_26();
  v11 = v10(v9);
  OUTLINED_FUNCTION_1_101(v11, "setLeadingSubtitle:");

  v12 = a2[4];
  v13 = OUTLINED_FUNCTION_5_26();
  v15 = v14(v13);
  OUTLINED_FUNCTION_1_101(v15, "setTrailingText:");

  v16 = a2[5];
  v17 = OUTLINED_FUNCTION_5_26();
  v19 = v18(v17);
  OUTLINED_FUNCTION_1_101(v19, "setTrailingSubtitle:");

  v20 = a2[6];
  v21 = OUTLINED_FUNCTION_5_26();
  v23 = v22(v21);
  [v3 setImage:v23];

  return v3;
}

unint64_t type metadata accessor for SACardSnippet()
{
  result = lazy cache variable for type metadata for SACardSnippet;
  if (!lazy cache variable for type metadata for SACardSnippet)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for SACardSnippet);
  }

  return result;
}

void _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay12SiriOntology21NonTerminalIntentNodeVG_27PhoneCallFlowDelegatePlugin8SmsGroup_ps5NeverOTg5Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_30_1();
  a19 = v21;
  a20 = v24;
  v46 = v26;
  v47 = v25;
  v27 = v20;
  v28 = *(v22 + 16);
  if (v28)
  {
    v29 = v22;
    a10 = _swiftEmptyArrayStorage;
    v45 = v23;
    v23(0, v28, 0);
    v30 = a10;
    v31 = *(type metadata accessor for NonTerminalIntentNode() - 8);
    v32 = v29 + ((*(v31 + 80) + 32) & ~*(v31 + 80));
    v33 = *(v31 + 72);
    while (1)
    {
      v47(v48, v32);
      if (v27)
      {
        break;
      }

      v27 = 0;
      a10 = v30;
      v35 = v30[2];
      v34 = v30[3];
      if (v35 >= v34 >> 1)
      {
        v45(v34 > 1, v35 + 1, 1);
      }

      v36 = v49;
      v37 = v50;
      __swift_mutable_project_boxed_opaque_existential_1(v48, v49);
      OUTLINED_FUNCTION_9_1();
      v39 = *(v38 + 64);
      __chkstk_darwin(v40);
      OUTLINED_FUNCTION_4();
      v43 = v42 - v41;
      (*(v44 + 16))(v42 - v41);
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)(v35, v43, &a10, v36, v37, v46);
      __swift_destroy_boxed_opaque_existential_1(v48);
      v30 = a10;
      v32 += v33;
      if (!--v28)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_7:
    OUTLINED_FUNCTION_4_75();
    OUTLINED_FUNCTION_29_2();
  }
}

void _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay27PhoneCallFlowDelegatePlugin04SiriD7Contact_pG_AfG_psAE_pTg5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_30_1();
  a19 = v21;
  a20 = v24;
  v25 = v20;
  v26 = *(v23 + 16);
  if (v26)
  {
    v27 = v23;
    v28 = v22;
    a10 = _swiftEmptyArrayStorage;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v26, 0);
    v29 = a10;
    v30 = v27 + 32;
    while (1)
    {
      v28(v43, v30, &v42);
      if (v25)
      {
        break;
      }

      v25 = 0;
      a10 = v29;
      v32 = v29[2];
      v31 = v29[3];
      if (v32 >= v31 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v31 > 1), v32 + 1, 1);
      }

      v33 = v44;
      v34 = v45;
      __swift_mutable_project_boxed_opaque_existential_1(v43, v44);
      OUTLINED_FUNCTION_9_1();
      v36 = *(v35 + 64);
      __chkstk_darwin(v37);
      OUTLINED_FUNCTION_4();
      v40 = v39 - v38;
      (*(v41 + 16))(v39 - v38);
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)(v32, v40, &a10, v33, v34, outlined init with take of SPHConversation);
      __swift_destroy_boxed_opaque_existential_1(v43);
      v29 = a10;
      v30 += 40;
      if (!--v26)
      {
        goto LABEL_9;
      }
    }
  }

LABEL_9:
  OUTLINED_FUNCTION_4_75();
  OUTLINED_FUNCTION_29_2();
}

void _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSaySo12INCallRecordCG_27PhoneCallFlowDelegatePlugin27SCHRowCardSectionComponents_ps5NeverOTg5(void (*a1)(__int128 *__return_ptr, id *), uint64_t a2, unint64_t a3)
{
  v5 = v3;
  if (a3 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v17 = _swiftEmptyArrayStorage;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      __break(1u);
LABEL_20:

      __break(1u);
      return;
    }

    v8 = 0;
    v9 = v17;
    while (1)
    {
      v10 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if ((a3 & 0xC000000000000001) != 0)
      {
        v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v8 >= *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_17;
        }

        v11 = *(a3 + 8 * v8 + 32);
      }

      v4 = v11;
      v15 = v11;
      a1(v16, &v15);
      if (v5)
      {
        goto LABEL_20;
      }

      v5 = 0;

      v17 = v9;
      v13 = v9[2];
      v12 = v9[3];
      v4 = (v13 + 1);
      if (v13 >= v12 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1);
        v9 = v17;
      }

      v9[2] = v4;
      outlined init with take of SPHConversation(v16, &v9[5 * v13 + 4]);
      ++v8;
      if (v10 == i)
      {
        return;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }
}

void *_sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSaySo12INCallRecordCG_So12SASTCardItemCs5NeverOTg5Tm(void (*a1)(void **__return_ptr, id *), uint64_t a2, unint64_t a3)
{
  v5 = v3;
  if (a3 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    result = _swiftEmptyArrayStorage;
    if (!i)
    {
      break;
    }

    v16 = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    if (i < 0)
    {
      __break(1u);
LABEL_19:

      __break(1u);
      return result;
    }

    for (j = 0; ; ++j)
    {
      v10 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      if ((a3 & 0xC000000000000001) != 0)
      {
        v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (j >= *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_16;
        }

        v11 = *(a3 + 8 * j + 32);
      }

      v4 = v11;
      v14 = v11;
      a1(&v15, &v14);
      if (v5)
      {
        goto LABEL_19;
      }

      v5 = 0;

      v4 = v15;
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v12 = v16[2];
      OUTLINED_FUNCTION_3_94();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      OUTLINED_FUNCTION_3_94();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      if (v10 == i)
      {
        return v16;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

  return result;
}

void _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSaySo8INPersonCG_Say11SiriKitFlow11DisplayHintVG12displayHints_AI13SemanticValueV02idM0ts5NeverOTg5()
{
  OUTLINED_FUNCTION_30_1();
  v1 = v0;
  v3 = v2;
  v24 = v4;
  v25 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11SiriKitFlow11DisplayHintVG12displayHints_AA13SemanticValueV02idI0tMd, &_sSay11SiriKitFlow11DisplayHintVG12displayHints_AA13SemanticValueV02idI0tMR);
  v23 = *(v6 - 8);
  v7 = *(v23 + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v19 - v8;
  if (v3 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8)); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    if (!i)
    {
LABEL_15:
      OUTLINED_FUNCTION_4_75();
      OUTLINED_FUNCTION_29_2();
      return;
    }

    v11 = OUTLINED_FUNCTION_1_102();
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v11, v12, v13);
    if (i < 0)
    {
      break;
    }

    v14 = 0;
    v21 = i;
    v22 = v3 & 0xC000000000000001;
    v20 = v3 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      v15 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v22)
      {
        v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v14 >= *(v20 + 16))
        {
          goto LABEL_17;
        }

        v16 = *(v3 + 8 * v14 + 32);
      }

      i = v16;
      v26 = v16;
      v24(&v26);
      if (v1)
      {
        goto LABEL_20;
      }

      v1 = 0;

      v18 = _swiftEmptyArrayStorage[2];
      v17 = _swiftEmptyArrayStorage[3];
      if (v18 >= v17 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v17 > 1, v18 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v18 + 1;
      outlined init with take of (displayHints: [DisplayHint], idValue: SemanticValue)(v9, _swiftEmptyArrayStorage + ((*(v23 + 80) + 32) & ~*(v23 + 80)) + *(v23 + 72) * v18);
      ++v14;
      if (v15 == v21)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  __break(1u);
LABEL_20:

  __break(1u);
}

void *_sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF10Foundation8IndexSetV9RangeViewV_SnySS0E0VGs5NeverOTg5(void (*a1)(__int128 *__return_ptr, __int128 *))
{
  v3 = v1;
  type metadata accessor for IndexSet.RangeView();
  v4 = lazy protocol witness table accessor for type IndexSet.RangeView and conformance IndexSet.RangeView();
  v5 = dispatch thunk of Collection.count.getter();
  result = _swiftEmptyArrayStorage;
  if (v5)
  {
    v27 = _swiftEmptyArrayStorage;
    v7 = OUTLINED_FUNCTION_1_102();
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v7, v8, v9);
    v22 = _swiftEmptyArrayStorage;
    dispatch thunk of Collection.startIndex.getter();
    if ((v5 & 0x8000000000000000) == 0)
    {
      for (i = 0; ; ++i)
      {
        v11 = i + 1;
        if (__OFADD__(i, 1))
        {
          break;
        }

        v12 = v4;
        v13 = v3;
        v14 = v12;
        v15 = dispatch thunk of Collection.subscript.read();
        v24 = *v16;
        v15(v25, 0);
        a1(&v26, &v24);
        if (v2)
        {
          goto LABEL_13;
        }

        v17 = v26;
        v18 = v22;
        v27 = v22;
        v20 = v22[2];
        v19 = v22[3];
        if (v20 >= v19 >> 1)
        {
          v23 = v26;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v20 + 1, 1);
          v17 = v23;
          v18 = v27;
        }

        v18[2] = v20 + 1;
        v22 = v18;
        *&v18[2 * v20 + 4] = v17;
        v3 = v13;
        v4 = v14;
        dispatch thunk of Collection.formIndex(after:)();
        if (v11 == v5)
        {
          return v22;
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_13:

    __break(1u);
  }

  return result;
}

void *_sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay12SiriOntology23UsoEntity_common_PersonCG_So8INPersonCsAE_pTg5(void (*a1)(uint64_t *__return_ptr, uint64_t *, uint64_t *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    result = _swiftEmptyArrayStorage;
    if (!i)
    {
      break;
    }

    v15 = _swiftEmptyArrayStorage;
    result = specialized ContiguousArray.reserveCapacity(_:)();
    if (i < 0)
    {
      __break(1u);
      return result;
    }

    for (j = 0; ; ++j)
    {
      v8 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      if ((a3 & 0xC000000000000001) != 0)
      {
        v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (j >= *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_17;
        }

        v9 = *(a3 + 8 * j + 32);
      }

      v13 = v9;
      a1(&v14, &v13, &v12);

      if (v3)
      {
      }

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v10 = v15[2];
      OUTLINED_FUNCTION_3_94();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      OUTLINED_FUNCTION_3_94();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      if (v8 == i)
      {
        return v15;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  return result;
}

void _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay17SiriAppResolution0E0CG_0D8NLUTypes0D27_Nlu_External_UserDialogActVs5NeverOTg5()
{
  OUTLINED_FUNCTION_30_1();
  v1 = v0;
  v3 = v2;
  v21 = v4;
  v20 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  OUTLINED_FUNCTION_9_1();
  v6 = v5;
  v8 = *(v7 + 64);
  __chkstk_darwin(v9);
  OUTLINED_FUNCTION_4();
  v22 = v11 - v10;
  if (v3 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8)); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    if (!i)
    {
LABEL_15:
      OUTLINED_FUNCTION_4_75();
      OUTLINED_FUNCTION_29_2();
      return;
    }

    OUTLINED_FUNCTION_1_102();
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    if (i < 0)
    {
      break;
    }

    v13 = 0;
    v18 = v3;
    v19 = v3 & 0xC000000000000001;
    v17 = v3 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      v14 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v19)
      {
        v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v13 >= *(v17 + 16))
        {
          goto LABEL_17;
        }

        v15 = *(v3 + 8 * v13 + 32);
      }

      v23 = v15;
      v21(&v23);
      if (v1)
      {
        goto LABEL_20;
      }

      v1 = 0;

      v16 = _swiftEmptyArrayStorage[2];
      if (v16 >= _swiftEmptyArrayStorage[3] >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      _swiftEmptyArrayStorage[2] = v16 + 1;
      (*(v6 + 32))(_swiftEmptyArrayStorage + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v16, v22, v20);
      ++v13;
      v3 = v18;
      if (v14 == i)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  __break(1u);
LABEL_20:

  __break(1u);
}

uint64_t SCHRowCardSectionComponentsFactory.init(device:displayTextCats:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = outlined init with take of SPHConversation(a1, a3);
  *(a3 + 40) = a2;
  return result;
}

void SCHRowCardSectionComponentsFactory.getRowCardSectionComponents(callRecords:)(unint64_t a1)
{
  v3 = specialized Array.count.getter(a1);
  v4 = v3;
  v5 = 0;
  while (1)
  {
    if (v4 == v5)
    {
LABEL_10:
      __chkstk_darwin(v3);
      v10[2] = v9;
      v10[3] = 0;
      v10[4] = v1;
      _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSaySo12INCallRecordCG_27PhoneCallFlowDelegatePlugin27SCHRowCardSectionComponents_ps5NeverOTg5(partial apply for closure #2 in SCHRowCardSectionComponentsFactory.getRowCardSectionComponents(callRecords:), v10, a1);
      return;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v5 >= *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_12;
      }

      v6 = *(a1 + 8 * v5 + 32);
    }

    v7 = v6;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    v8 = [v6 callRecordType];

    ++v5;
    if (v8 != &dword_4 + 1)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
}

uint64_t implicit closure #1 in SCHRowCardSectionComponentsFactory.getRowCardSectionComponents(callRecords:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  outlined init with copy of SignalProviding(a2, (a4 + 2));
  *a4 = a1;
  a4[1] = a1;
  a4[7] = a3;
  v7 = a1;
}

uint64_t specialized thunk for @escaping @callee_guaranteed (@guaranteed INCallRecord, @in_guaranteed DeviceState, @guaranteed PhoneCallDisplayTextCATs) -> (@out VoicemailRowCardSectionComponents)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  a6[3] = a4;
  a6[4] = a5;
  v10 = swift_allocObject();
  *a6 = v10;
  return implicit closure #1 in SCHRowCardSectionComponentsFactory.getRowCardSectionComponents(callRecords:)(a1, a2, a3, (v10 + 16));
}

uint64_t specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  return specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)(a1, a2, a3, a4, a5, outlined init with take of PhoneCallFeatureFlagProviding);
}

{
  return specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)(a1, a2, a3, a4, a5, outlined init with take of SPHConversation);
}

uint64_t specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t *, uint64_t))
{
  v14[3] = a4;
  v14[4] = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v14);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a2, a4);
  v12 = *a3;
  *(v12 + 16) = a1 + 1;
  return a6(v14, v12 + 40 * a1 + 32);
}

uint64_t outlined init with take of (displayHints: [DisplayHint], idValue: SemanticValue)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11SiriKitFlow11DisplayHintVG12displayHints_AA13SemanticValueV02idI0tMd, &_sSay11SiriKitFlow11DisplayHintVG12displayHints_AA13SemanticValueV02idI0tMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type IndexSet.RangeView and conformance IndexSet.RangeView()
{
  result = lazy protocol witness table cache variable for type IndexSet.RangeView and conformance IndexSet.RangeView;
  if (!lazy protocol witness table cache variable for type IndexSet.RangeView and conformance IndexSet.RangeView)
  {
    type metadata accessor for IndexSet.RangeView();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IndexSet.RangeView and conformance IndexSet.RangeView);
  }

  return result;
}

uint64_t objectdestroyTm_10()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 32));
  v1 = *(v0 + 72);

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t specialized IdiomSensitiveViewBuilder.makeViews(utteranceViews:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  OUTLINED_FUNCTION_47_22();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  OUTLINED_FUNCTION_102_0();
  v15 = swift_allocObject();
  *(v15 + 16) = v8;
  *(v15 + 24) = v10;
  v100 = v10;
  v101 = v12;
  *(v15 + 32) = v12;
  *(v15 + 40) = v14;
  *(v15 + 41) = HIBYTE(v14) & 1;
  v102 = a2;
  *(v15 + 48) = a2;
  *(v15 + 56) = a3;
  v16 = v4[13];
  v17 = v4[14];
  OUTLINED_FUNCTION_28_0(v4 + 10, v16);
  v18 = *(v17 + 8);

  v18(v105, v16, v17);
  v19 = v106;
  __swift_project_boxed_opaque_existential_1(v105, v106);
  OUTLINED_FUNCTION_26_4();
  v20 = dispatch thunk of DeviceState.isWatch.getter();
  OUTLINED_FUNCTION_64_13(v20, v21, v22, v23, v24, v25);
  if (a2)
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2();
    }

    v26 = type metadata accessor for Logger();
    v27 = OUTLINED_FUNCTION_12_1(v26, static Logger.siriPhone);
    v28 = static os_log_type_t.info.getter();
    if (OUTLINED_FUNCTION_16_4(v28))
    {
      v29 = OUTLINED_FUNCTION_65_0();
      OUTLINED_FUNCTION_11_1(v29);
      OUTLINED_FUNCTION_36_25(&dword_0, v30, v31, "#IdiomSensitiveViewBuilder: Building views for Watch");
      OUTLINED_FUNCTION_26_0();
    }

    OUTLINED_FUNCTION_57_20(v32, v33, v34, v35, v36, v37);
    swift_allocObject();
    OUTLINED_FUNCTION_5_81();
    *(v38 + 16) = v39;
    *(v38 + 24) = v15;
    OUTLINED_FUNCTION_56_11(v38, v40, v41, v42, v43, v44, v45, v46, v99, v10, v101, v102, a1, v8, v105[0]);
    *(v19 + 152) = v104;
    v47 = *(*v27 + class metadata base offset for PhoneCallBaseCatTemplatingService + 144);

    v47(partial apply for closure #1 in CallCancelSlotConfirmationButtonsBuilder.makeViewsForWatch(utteranceViews:_:), v19);
  }

  else
  {
    v48 = v4[14];
    OUTLINED_FUNCTION_35_22(v4 + 10, v4[13]);
    v49 = OUTLINED_FUNCTION_26_4();
    v50(v49);
    __swift_project_boxed_opaque_existential_1(v105, v106);
    OUTLINED_FUNCTION_26_4();
    v51 = dispatch thunk of DeviceState.isMac.getter();
    OUTLINED_FUNCTION_64_13(v51, v52, v53, v54, v55, v56);
    v58 = v4[14];
    OUTLINED_FUNCTION_35_22(v4 + 10, v4[13]);
    v59 = OUTLINED_FUNCTION_26_4();
    v60(v59);
    __swift_project_boxed_opaque_existential_1(v105, v106);
    OUTLINED_FUNCTION_26_4();
    v61 = dispatch thunk of DeviceState.isCarPlay.getter();
    OUTLINED_FUNCTION_64_13(v61, v62, v63, v64, v65, v66);
    v67 = v4[14];
    OUTLINED_FUNCTION_35_22(v4 + 10, v4[13]);
    v68 = OUTLINED_FUNCTION_26_4();
    v69(v68);
    v70 = v106;
    __swift_project_boxed_opaque_existential_1(v105, v106);
    OUTLINED_FUNCTION_26_4();
    v71 = dispatch thunk of DeviceState.isAppleTV.getter();
    OUTLINED_FUNCTION_64_13(v71, v72, v73, v74, v75, v76);
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2();
    }

    v77 = type metadata accessor for Logger();
    v78 = OUTLINED_FUNCTION_12_1(v77, static Logger.siriPhone);
    v79 = static os_log_type_t.info.getter();
    if (OUTLINED_FUNCTION_16_4(v79))
    {
      v80 = OUTLINED_FUNCTION_65_0();
      OUTLINED_FUNCTION_11_1(v80);
      OUTLINED_FUNCTION_36_25(&dword_0, v81, v82, "#IdiomSensitiveViewBuilder: Building views for IOS");
      OUTLINED_FUNCTION_26_0();
    }

    OUTLINED_FUNCTION_57_20(v83, v84, v85, v86, v87, v88);
    swift_allocObject();
    OUTLINED_FUNCTION_5_81();
    *(v89 + 16) = v90;
    *(v89 + 24) = v15;
    OUTLINED_FUNCTION_56_11(v89, v91, v92, v93, v94, v95, v96, v97, v99, v100, v101, v102, a1, v8, v105[0]);
    v98 = *(*v78 + class metadata base offset for PhoneCallBaseCatTemplatingService + 144);

    v98(partial apply for closure #1 in CallCancelSlotConfirmationButtonsBuilder.makeViewsForIOS(utteranceViews:_:), v70);
  }
}

{
  v4 = v3;
  OUTLINED_FUNCTION_47_22();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  OUTLINED_FUNCTION_102_0();
  v15 = swift_allocObject();
  *(v15 + 16) = v8;
  *(v15 + 24) = v10;
  *(v15 + 32) = v12;
  *(v15 + 40) = v14;
  *(v15 + 41) = HIBYTE(v14) & 1;
  *(v15 + 48) = a2;
  *(v15 + 56) = a3;
  v16 = v4[25];
  v17 = v4[26];
  LOBYTE(v12) = __swift_project_boxed_opaque_existential_1(v4 + 22, v16);
  v18 = *(v17 + 8);

  v18(v56, v16, v17);
  OUTLINED_FUNCTION_2_101(v56);
  v19 = dispatch thunk of DeviceState.isWatch.getter();
  OUTLINED_FUNCTION_46_22(v19);
  if (v12)
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2();
    }

    v20 = type metadata accessor for Logger();
    v21 = OUTLINED_FUNCTION_12_1(v20, static Logger.siriPhone);
    v22 = static os_log_type_t.info.getter();
    if (OUTLINED_FUNCTION_43(v22))
    {
      v23 = OUTLINED_FUNCTION_65_0();
      OUTLINED_FUNCTION_8_43(v23);
      OUTLINED_FUNCTION_6_44(&dword_0, v24, v25, "#IdiomSensitiveViewBuilder: Building views for Watch");
      OUTLINED_FUNCTION_26_0();
    }

    OUTLINED_FUNCTION_16_24();
    v27 = *(v26 + 104);
    v28 = OUTLINED_FUNCTION_21_38();
    v29(v28);
  }

  else
  {
    v30 = v4[25];
    v31 = v4[26];
    OUTLINED_FUNCTION_16_48(v4 + 22);
    v32 = OUTLINED_FUNCTION_25_0();
    v33(v32);
    OUTLINED_FUNCTION_2_101(v56);
    v34 = dispatch thunk of DeviceState.isMac.getter();
    OUTLINED_FUNCTION_46_22(v34);
    v35 = v4[25];
    v36 = v4[26];
    OUTLINED_FUNCTION_16_48(v4 + 22);
    v37 = OUTLINED_FUNCTION_25_0();
    v38(v37);
    OUTLINED_FUNCTION_2_101(v56);
    v39 = dispatch thunk of DeviceState.isCarPlay.getter();
    OUTLINED_FUNCTION_46_22(v39);
    v40 = v4[25];
    v41 = v4[26];
    OUTLINED_FUNCTION_16_48(v4 + 22);
    v42 = OUTLINED_FUNCTION_25_0();
    v43(v42);
    OUTLINED_FUNCTION_2_101(v56);
    v44 = dispatch thunk of DeviceState.isAppleTV.getter();
    OUTLINED_FUNCTION_46_22(v44);
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2();
    }

    v45 = type metadata accessor for Logger();
    v46 = OUTLINED_FUNCTION_12_1(v45, static Logger.siriPhone);
    v47 = static os_log_type_t.info.getter();
    if (OUTLINED_FUNCTION_43(v47))
    {
      v48 = OUTLINED_FUNCTION_65_0();
      OUTLINED_FUNCTION_8_43(v48);
      OUTLINED_FUNCTION_6_44(&dword_0, v49, v50, "#IdiomSensitiveViewBuilder: Building views for IOS");
      OUTLINED_FUNCTION_26_0();
    }

    OUTLINED_FUNCTION_16_24();
    v52 = *(v51 + 136);
    v53 = OUTLINED_FUNCTION_21_38();
    v54(v53);
  }
}

{
  v4 = v3;
  OUTLINED_FUNCTION_47_22();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  OUTLINED_FUNCTION_102_0();
  v15 = swift_allocObject();
  *(v15 + 16) = v8;
  *(v15 + 24) = v10;
  v82 = v10;
  v83 = v12;
  *(v15 + 32) = v12;
  *(v15 + 40) = v14;
  *(v15 + 41) = HIBYTE(v14) & 1;
  v84 = a2;
  *(v15 + 48) = a2;
  *(v15 + 56) = a3;
  v16 = v4[7];
  v17 = v4[8];
  OUTLINED_FUNCTION_28_0(v4 + 4, v16);
  v18 = *(v17 + 8);

  v18(v86, v16, v17);
  __swift_project_boxed_opaque_existential_1(v86, v87);
  OUTLINED_FUNCTION_12_56();
  v19 = dispatch thunk of DeviceState.isWatch.getter();
  OUTLINED_FUNCTION_45_17(v19, v20, v21, v22, v23);
  if (a2)
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2();
    }

    v24 = type metadata accessor for Logger();
    v25 = OUTLINED_FUNCTION_12_1(v24, static Logger.siriPhone);
    v26 = static os_log_type_t.info.getter();
    if (OUTLINED_FUNCTION_43(v26))
    {
      v27 = OUTLINED_FUNCTION_65_0();
      OUTLINED_FUNCTION_102(v27);
      OUTLINED_FUNCTION_20_39(&dword_0, v28, a3, "#IdiomSensitiveViewBuilder: Building views for Watch");
      OUTLINED_FUNCTION_35();
    }

    v37 = OUTLINED_FUNCTION_3_95(v29, v30, v31, v32, v33, v34, v35, v36, v81, v10, v83, v84, a1);
    EmergencyCountdownBuilder.makeViewsForWatch(utteranceViews:_:)(v37, v38, v39);
  }

  else
  {
    v40 = v4[8];
    __swift_project_boxed_opaque_existential_1(v4 + 4, v4[7]);
    v41 = OUTLINED_FUNCTION_7_66();
    v42(v41, v40);
    __swift_project_boxed_opaque_existential_1(v86, v87);
    OUTLINED_FUNCTION_12_56();
    v43 = dispatch thunk of DeviceState.isMac.getter();
    OUTLINED_FUNCTION_45_17(v43, v44, v45, v46, v47);
    v48 = v4[8];
    __swift_project_boxed_opaque_existential_1(v4 + 4, v4[7]);
    v49 = OUTLINED_FUNCTION_7_66();
    v50(v49, v48);
    __swift_project_boxed_opaque_existential_1(v86, v87);
    OUTLINED_FUNCTION_12_56();
    v51 = dispatch thunk of DeviceState.isCarPlay.getter();
    OUTLINED_FUNCTION_45_17(v51, v52, v53, v54, v55);
    v56 = v4[8];
    __swift_project_boxed_opaque_existential_1(v4 + 4, v4[7]);
    v57 = OUTLINED_FUNCTION_7_66();
    v58(v57, v56);
    __swift_project_boxed_opaque_existential_1(v86, v87);
    OUTLINED_FUNCTION_12_56();
    v59 = dispatch thunk of DeviceState.isAppleTV.getter();
    OUTLINED_FUNCTION_45_17(v59, v60, v61, v62, v63);
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2();
    }

    v64 = type metadata accessor for Logger();
    v65 = OUTLINED_FUNCTION_12_1(v64, static Logger.siriPhone);
    v66 = static os_log_type_t.info.getter();
    if (OUTLINED_FUNCTION_43(v66))
    {
      v67 = OUTLINED_FUNCTION_65_0();
      OUTLINED_FUNCTION_102(v67);
      OUTLINED_FUNCTION_20_39(&dword_0, v68, a3, "#IdiomSensitiveViewBuilder: Building views for IOS");
      OUTLINED_FUNCTION_35();
    }

    v77 = OUTLINED_FUNCTION_3_95(v69, v70, v71, v72, v73, v74, v75, v76, v81, v82, v83, v84, a1);
    EmergencyCountdownBuilder.makeViewsForIOS(utteranceViews:_:)(v77, v78, v79);
  }
}

uint64_t specialized IdiomSensitiveViewBuilder.makeViews(utteranceViews:_:)()
{
  v1 = v0;
  OUTLINED_FUNCTION_47_22();
  v65 = v2;
  v66 = v3;
  v5 = v0[5];
  v4 = v0[6];
  OUTLINED_FUNCTION_28_0(v0 + 2, v5);
  v6 = *(v4 + 8);
  OUTLINED_FUNCTION_60_15();
  swift_retain_n();
  swift_retain_n();
  v6(v67, v5, v4);
  OUTLINED_FUNCTION_28_0(v67, v68);
  v7 = dispatch thunk of DeviceState.isWatch.getter();
  OUTLINED_FUNCTION_65_15(v7, v8, v9);
  if (v0)
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2();
    }

    v10 = type metadata accessor for Logger();
    v11 = OUTLINED_FUNCTION_12_1(v10, static Logger.siriPhone);
    v12 = static os_log_type_t.info.getter();
    if (OUTLINED_FUNCTION_29_28(v12))
    {
      v13 = OUTLINED_FUNCTION_65_0();
      OUTLINED_FUNCTION_103(v13);
      OUTLINED_FUNCTION_38_24(&dword_0, v14, v15, "#IdiomSensitiveViewBuilder: Building views for Watch");
      OUTLINED_FUNCTION_26_0();
    }

    v16 = v1[1];
    SiriKitDisambiguationList.disambiguationItems.getter();
    v18 = v1[5];
    v17 = v1[6];
    OUTLINED_FUNCTION_18_31(v1 + 2, v18);
    v19(v67, v18, v17);
    OUTLINED_FUNCTION_28_0(v67, v68);
    dispatch thunk of DeviceState.isTextToSpeechEnabled.getter();
    v20 = static SiriKitDisambiguationSnippetFactory.makeDisambiguationSnippetForWatch(disambiguationItems:textToSpeechIsEnabled:)();

    __swift_destroy_boxed_opaque_existential_1(v67);
    type metadata accessor for SiriKitAceViewBuilder();
    v21 = v1[5];
    v22 = v1[6];
    OUTLINED_FUNCTION_35_22(v1 + 2, v21);
    v23(v67, v21, v22);
    dispatch thunk of static SiriKitAceViewBuilder.makeBuilder(deviceState:)();
    __swift_destroy_boxed_opaque_existential_1(v67);
    dispatch thunk of SiriKitAceViewBuilder.withUtteranceViews(utteranceViews:)();
    OUTLINED_FUNCTION_65_13();
    dispatch thunk of SiriKitAceViewBuilder.addSnippet(snippet:)();
    OUTLINED_FUNCTION_61();

    dispatch thunk of SiriKitAceViewBuilder.build()();
    OUTLINED_FUNCTION_65_13();
    OUTLINED_FUNCTION_28_24();
    closure #1 in IdiomSensitiveViewBuilder.makeViews(utteranceViews:_:)(v24, v25, v26, v27, v28, v29, v30);
  }

  else
  {
    v31 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
    v32 = *(v31 + 8);
    v33 = OUTLINED_FUNCTION_61();
    v34(v33, v31);
    OUTLINED_FUNCTION_28_0(v67, v68);
    v35 = dispatch thunk of DeviceState.isMac.getter();
    OUTLINED_FUNCTION_65_15(v35, v36, v37);
    v38 = v0[6];
    OUTLINED_FUNCTION_18_31(v0 + 2, v0[5]);
    v39 = OUTLINED_FUNCTION_8_8();
    v40(v39);
    __swift_project_boxed_opaque_existential_1(v67, v68);
    OUTLINED_FUNCTION_8_8();
    v41 = dispatch thunk of DeviceState.isCarPlay.getter();
    OUTLINED_FUNCTION_65_15(v41, v42, v43);
    v45 = v0[6];
    OUTLINED_FUNCTION_18_31(v0 + 2, v0[5]);
    v46 = OUTLINED_FUNCTION_8_8();
    v47(v46);
    __swift_project_boxed_opaque_existential_1(v67, v68);
    OUTLINED_FUNCTION_8_8();
    v48 = dispatch thunk of DeviceState.isAppleTV.getter();
    OUTLINED_FUNCTION_65_15(v48, v49, v50, v65, v66);
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2();
    }

    v51 = type metadata accessor for Logger();
    v52 = OUTLINED_FUNCTION_12_1(v51, static Logger.siriPhone);
    v53 = static os_log_type_t.info.getter();
    if (OUTLINED_FUNCTION_29_28(v53))
    {
      v54 = OUTLINED_FUNCTION_65_0();
      OUTLINED_FUNCTION_103(v54);
      OUTLINED_FUNCTION_38_24(&dword_0, v55, v56, "#IdiomSensitiveViewBuilder: Building views for IOS");
      OUTLINED_FUNCTION_26_0();
    }

    OUTLINED_FUNCTION_28_24();
    specialized ForeignEmergencyButtonsBuilder.makeViewsForIOS(utteranceViews:_:)(v57, v58, v59, v60, v61, v62, v63, v64);
  }

  OUTLINED_FUNCTION_60_15();
}

{
  OUTLINED_FUNCTION_47_22();
  v1 = v0[7];
  __swift_project_boxed_opaque_existential_1(v0 + 3, v0[6]);
  v2 = OUTLINED_FUNCTION_8_64();
  v3(v2);
  __swift_project_boxed_opaque_existential_1(v29, v30);
  OUTLINED_FUNCTION_2();
  v4 = dispatch thunk of DeviceState.isWatch.getter();
  OUTLINED_FUNCTION_46_22(v4);
  if (v0)
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2();
    }

    v5 = type metadata accessor for Logger();
    v6 = OUTLINED_FUNCTION_12_1(v5, static Logger.siriPhone);
    v7 = static os_log_type_t.info.getter();
    if (OUTLINED_FUNCTION_16_4(v7))
    {
      *OUTLINED_FUNCTION_65_0() = 0;
      OUTLINED_FUNCTION_61_19(&dword_0, v8, v9, "#IdiomSensitiveViewBuilder: Building views for Watch");
      OUTLINED_FUNCTION_26_0();
    }

    v10 = CallRecordTableSnippetBuilder.makeItemGroup()();
  }

  else
  {
    v12 = v0[7];
    __swift_project_boxed_opaque_existential_1(v0 + 3, v0[6]);
    v13 = OUTLINED_FUNCTION_8_64();
    v14(v13);
    __swift_project_boxed_opaque_existential_1(v29, v30);
    OUTLINED_FUNCTION_2();
    v15 = dispatch thunk of DeviceState.isMac.getter();
    OUTLINED_FUNCTION_46_22(v15);
    v16 = v0[7];
    __swift_project_boxed_opaque_existential_1(v0 + 3, v0[6]);
    v17 = OUTLINED_FUNCTION_8_64();
    v18(v17);
    __swift_project_boxed_opaque_existential_1(v29, v30);
    OUTLINED_FUNCTION_2();
    v19 = dispatch thunk of DeviceState.isCarPlay.getter();
    OUTLINED_FUNCTION_46_22(v19);
    v20 = v0[7];
    __swift_project_boxed_opaque_existential_1(v0 + 3, v0[6]);
    v21 = OUTLINED_FUNCTION_8_64();
    v22(v21);
    __swift_project_boxed_opaque_existential_1(v29, v30);
    OUTLINED_FUNCTION_2();
    v23 = dispatch thunk of DeviceState.isAppleTV.getter();
    OUTLINED_FUNCTION_46_22(v23);
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2();
    }

    v24 = type metadata accessor for Logger();
    v25 = OUTLINED_FUNCTION_12_1(v24, static Logger.siriPhone);
    v26 = static os_log_type_t.info.getter();
    if (OUTLINED_FUNCTION_16_4(v26))
    {
      *OUTLINED_FUNCTION_65_0() = 0;
      OUTLINED_FUNCTION_61_19(&dword_0, v27, v28, "#IdiomSensitiveViewBuilder: Building views for IOS");
      OUTLINED_FUNCTION_26_0();
    }

    v10 = CallRecordTableSnippetBuilder.makeCardSnippet()();
  }

  OUTLINED_FUNCTION_41_29(v10);
}

uint64_t specialized IdiomSensitiveViewBuilder.makeViews(utteranceViews:_:)(unint64_t a1, uint64_t a2, uint64_t a3)
{
  return specialized IdiomSensitiveViewBuilder.makeViews(utteranceViews:_:)(a1, a2, a3, specialized DefaultDisambiguationBuilder.makeViewsForIOS(utteranceViews:_:));
}

{
  return specialized IdiomSensitiveViewBuilder.makeViews(utteranceViews:_:)(a1, a2, a3, specialized DefaultDisambiguationBuilder.makeViewsForIOS(utteranceViews:_:));
}

{
  return specialized IdiomSensitiveViewBuilder.makeViews(utteranceViews:_:)(a1, a2, a3, specialized DefaultDisambiguationBuilder.makeViewsForIOS(utteranceViews:_:));
}

uint64_t specialized IdiomSensitiveViewBuilder.makeViews(utteranceViews:_:)(unint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = v3;
  OUTLINED_FUNCTION_47_22();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  OUTLINED_FUNCTION_102_0();
  v16 = swift_allocObject();
  *(v16 + 16) = v9;
  *(v16 + 24) = v11;
  v85 = v11;
  v86 = v13;
  *(v16 + 32) = v13;
  *(v16 + 40) = v15;
  HIDWORD(v84) = v15;
  *(v16 + 41) = BYTE1(v15) & 1;
  v87 = a2;
  *(v16 + 48) = a2;
  *(v16 + 56) = a3;
  v17 = v4[4];
  v18 = v4[5];
  OUTLINED_FUNCTION_28_0(v4 + 1, v17);
  v19 = *(v18 + 8);

  v19(v88, v17, v18);
  OUTLINED_FUNCTION_2_101(v88);
  v20 = dispatch thunk of DeviceState.isWatch.getter();
  OUTLINED_FUNCTION_66_14(v20, v21, v22, v23, v24, v25, v26);
  if (a2)
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2();
    }

    v27 = type metadata accessor for Logger();
    v28 = OUTLINED_FUNCTION_12_1(v27, static Logger.siriPhone);
    v29 = static os_log_type_t.info.getter();
    if (OUTLINED_FUNCTION_29_28(v29))
    {
      v30 = OUTLINED_FUNCTION_65_0();
      OUTLINED_FUNCTION_39_22(v30);
      OUTLINED_FUNCTION_13_7(&dword_0, v31, v4, "#IdiomSensitiveViewBuilder: Building views for Watch");
      OUTLINED_FUNCTION_26_0();
    }

    if (a1 >> 62)
    {
      type metadata accessor for SAAceView();

      _bridgeCocoaArray<A>(_:)();
      OUTLINED_FUNCTION_61();
    }

    else
    {

      dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
      type metadata accessor for SAAceView();
    }

    OUTLINED_FUNCTION_43_26();
    v32 = OUTLINED_FUNCTION_49_23();
    OUTLINED_FUNCTION_62_20(v32, v33, v34, v35, v36, v37, v38, v39, v83, v84, v85, v86, v87, a3, v9);
  }

  else
  {
    v41 = v4[4];
    v42 = v4[5];
    OUTLINED_FUNCTION_16_48(v4 + 1);
    v43 = OUTLINED_FUNCTION_25_0();
    v44(v43);
    OUTLINED_FUNCTION_2_101(v88);
    v45 = dispatch thunk of DeviceState.isMac.getter();
    OUTLINED_FUNCTION_66_14(v45, v46, v47, v48, v49, v50, v51);
    v52 = v4[4];
    v53 = v4[5];
    OUTLINED_FUNCTION_16_48(v4 + 1);
    v54 = OUTLINED_FUNCTION_25_0();
    v55(v54);
    OUTLINED_FUNCTION_2_101(v88);
    v56 = dispatch thunk of DeviceState.isCarPlay.getter();
    OUTLINED_FUNCTION_66_14(v56, v57, v58, v59, v60, v61, v62);
    v63 = v4[4];
    v64 = v4[5];
    OUTLINED_FUNCTION_16_48(v4 + 1);
    v65 = OUTLINED_FUNCTION_25_0();
    v66(v65);
    OUTLINED_FUNCTION_2_101(v88);
    v67 = dispatch thunk of DeviceState.isAppleTV.getter();
    OUTLINED_FUNCTION_66_14(v67, v68, v69, v70, v71, v72, v73);
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2();
    }

    v74 = type metadata accessor for Logger();
    v75 = OUTLINED_FUNCTION_12_1(v74, static Logger.siriPhone);
    v76 = static os_log_type_t.info.getter();
    if (OUTLINED_FUNCTION_16_4(v76))
    {
      v77 = OUTLINED_FUNCTION_65_0();
      OUTLINED_FUNCTION_39_22(v77);
      OUTLINED_FUNCTION_13_7(&dword_0, v78, v76, "#IdiomSensitiveViewBuilder: Building views for IOS");
      OUTLINED_FUNCTION_26_0();
    }

    v79 = *v4;
    outlined init with copy of FaceTimeSettingsBuilder(v4, v88);
    v80 = swift_allocObject();
    v81 = v88[1];
    *(v80 + 16) = v88[0];
    *(v80 + 32) = v81;
    *(v80 + 48) = v88[2];
    *(v80 + 64) = v89;
    *(v80 + 72) = a1;
    *(v80 + 80) = closure #1 in IdiomSensitiveViewBuilder.makeViews(utteranceViews:_:)partial apply;
    *(v80 + 88) = v16;
    v82 = *(*v79 + class metadata base offset for PhoneCallBaseCatTemplatingService + 120);

    v82(partial apply for closure #1 in FaceTimeSettingsBuilder.makeViewsForIOS(utteranceViews:_:), v80);
  }
}

{
  v4 = v3;
  OUTLINED_FUNCTION_47_22();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  OUTLINED_FUNCTION_102_0();
  v15 = swift_allocObject();
  *(v15 + 16) = v8;
  *(v15 + 24) = v10;
  v148 = v12;
  v149 = v10;
  *(v15 + 32) = v12;
  *(v15 + 40) = v14;
  *(v15 + 41) = HIBYTE(v14) & 1;
  v150 = a2;
  *(v15 + 48) = a2;
  *(v15 + 56) = a3;
  v17 = v4[6];
  v16 = v4[7];
  OUTLINED_FUNCTION_28_0(v4 + 3, v17);
  v18 = *(v16 + 8);
  swift_retain_n();
  swift_retain_n();
  v18(&v152, v17, v16);
  v19 = *(&v153 + 1);
  __swift_project_boxed_opaque_existential_1(&v152, *(&v153 + 1));
  OUTLINED_FUNCTION_13_52();
  v20 = dispatch thunk of DeviceState.isWatch.getter();
  OUTLINED_FUNCTION_63_13(v20, v21, v22, v23, v24, v25);
  if (v19)
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2();
    }

    v26 = type metadata accessor for Logger();
    v27 = OUTLINED_FUNCTION_12_1(v26, static Logger.siriPhone);
    v28 = static os_log_type_t.info.getter();
    if (OUTLINED_FUNCTION_16_4(v28))
    {
      v29 = OUTLINED_FUNCTION_65_0();
      OUTLINED_FUNCTION_53_0(v29);
      OUTLINED_FUNCTION_26_30(&dword_0, v30, v31, "#IdiomSensitiveViewBuilder: Building views for Watch");
      OUTLINED_FUNCTION_26_0();
    }

    OUTLINED_FUNCTION_40_26(v32, v33, v34, v35, v36, v37);
    OUTLINED_FUNCTION_39_23();
    swift_allocObject();
    OUTLINED_FUNCTION_1_103();
    *(v38 + 16) = v39;
    *(v38 + 24) = v15;
    OUTLINED_FUNCTION_9_64(v38, v40, v41, v42, v43, v44, v45, v46, v147, v148, v149, v150, a1, v8, v152, v153, v154, v155);

    v47 = _s27PhoneCallFlowDelegatePlugin13ButtonBuilderV17makeViewsForWatch09utteranceI0_ySaySo26SAUIAssistantUtteranceViewCG_ys6ResultOySaySo05SAAceO0CGs5Error_pGctFyAJy07SiriKitC0010TemplatingP0VsAN_pGcfU_TA_0;
LABEL_13:
    (v16)(v47, v19);
  }

  v48 = v4[7];
  OUTLINED_FUNCTION_18_31(v4 + 3, v4[6]);
  v49 = OUTLINED_FUNCTION_13_52();
  v50(v49);
  v19 = *(&v153 + 1);
  __swift_project_boxed_opaque_existential_1(&v152, *(&v153 + 1));
  OUTLINED_FUNCTION_13_52();
  v51 = dispatch thunk of DeviceState.isMac.getter();
  OUTLINED_FUNCTION_63_13(v51, v52, v53, v54, v55, v56);
  if (v19)
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2();
    }

    v57 = type metadata accessor for Logger();
    v58 = OUTLINED_FUNCTION_12_1(v57, static Logger.siriPhone);
    v59 = static os_log_type_t.info.getter();
    if (OUTLINED_FUNCTION_16_4(v59))
    {
      v60 = OUTLINED_FUNCTION_65_0();
      OUTLINED_FUNCTION_53_0(v60);
      OUTLINED_FUNCTION_26_30(&dword_0, v61, v62, "#IdiomSensitiveViewBuilder: Building views for Mac");
      OUTLINED_FUNCTION_26_0();
    }

    OUTLINED_FUNCTION_40_26(v63, v64, v65, v66, v67, v68);
    OUTLINED_FUNCTION_39_23();
    swift_allocObject();
    OUTLINED_FUNCTION_1_103();
    *(v69 + 16) = v70;
    *(v69 + 24) = v15;
    OUTLINED_FUNCTION_9_64(v69, v71, v72, v73, v74, v75, v76, v77, v147, v148, v149, v150, a1, v8, v152, v153, v154, v155);

    v47 = closure #1 in ButtonBuilder.makeViewsForIOS(utteranceViews:_:)partial apply;
    goto LABEL_13;
  }

  v79 = v4[7];
  OUTLINED_FUNCTION_18_31(v4 + 3, v4[6]);
  v80 = OUTLINED_FUNCTION_13_52();
  v81(v80);
  v82 = *(&v153 + 1);
  __swift_project_boxed_opaque_existential_1(&v152, *(&v153 + 1));
  OUTLINED_FUNCTION_13_52();
  v83 = dispatch thunk of DeviceState.isCarPlay.getter();
  OUTLINED_FUNCTION_63_13(v83, v84, v85, v86, v87, v88);
  if ((v82 & 1) == 0)
  {
    v96 = v4[7];
    OUTLINED_FUNCTION_18_31(v4 + 3, v4[6]);
    v97 = OUTLINED_FUNCTION_13_52();
    v98(v97);
    v19 = *(&v153 + 1);
    __swift_project_boxed_opaque_existential_1(&v152, *(&v153 + 1));
    OUTLINED_FUNCTION_13_52();
    v99 = dispatch thunk of DeviceState.isAppleTV.getter();
    OUTLINED_FUNCTION_63_13(v99, v100, v101, v102, v103, v104);
    if (v19)
    {
      if (one-time initialization token for siriPhone != -1)
      {
        OUTLINED_FUNCTION_6_2();
      }

      v105 = type metadata accessor for Logger();
      v106 = OUTLINED_FUNCTION_12_1(v105, static Logger.siriPhone);
      v107 = static os_log_type_t.info.getter();
      if (OUTLINED_FUNCTION_16_4(v107))
      {
        v108 = OUTLINED_FUNCTION_65_0();
        OUTLINED_FUNCTION_53_0(v108);
        OUTLINED_FUNCTION_26_30(&dword_0, v109, v110, "#IdiomSensitiveViewBuilder: Building views for AppleTV");
        OUTLINED_FUNCTION_26_0();
      }

      OUTLINED_FUNCTION_40_26(v111, v112, v113, v114, v115, v116);
      OUTLINED_FUNCTION_39_23();
      swift_allocObject();
      OUTLINED_FUNCTION_1_103();
      *(v117 + 16) = v118;
      *(v117 + 24) = v15;
      OUTLINED_FUNCTION_9_64(v117, v119, v120, v121, v122, v123, v124, v125, v147, v148, v149, v150, a1, v8, v152, v153, v154, v155);

      v47 = _s27PhoneCallFlowDelegatePlugin13ButtonBuilderV14makeViewsForTV09utteranceI0_ySaySo26SAUIAssistantUtteranceViewCG_ys6ResultOySaySo05SAAceO0CGs5Error_pGctFyAJy07SiriKitC0010TemplatingP0VsAN_pGcfU_TA_0;
    }

    else
    {
      if (one-time initialization token for siriPhone != -1)
      {
        OUTLINED_FUNCTION_6_2();
      }

      v126 = type metadata accessor for Logger();
      v127 = OUTLINED_FUNCTION_12_1(v126, static Logger.siriPhone);
      v128 = static os_log_type_t.info.getter();
      if (OUTLINED_FUNCTION_16_4(v128))
      {
        v129 = OUTLINED_FUNCTION_65_0();
        OUTLINED_FUNCTION_53_0(v129);
        OUTLINED_FUNCTION_26_30(&dword_0, v130, v131, "#IdiomSensitiveViewBuilder: Building views for IOS");
        OUTLINED_FUNCTION_26_0();
      }

      OUTLINED_FUNCTION_40_26(v132, v133, v134, v135, v136, v137);
      OUTLINED_FUNCTION_39_23();
      swift_allocObject();
      OUTLINED_FUNCTION_1_103();
      *(v138 + 16) = v139;
      *(v138 + 24) = v15;
      OUTLINED_FUNCTION_9_64(v138, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, a1, v8, v152, v153, v154, v155);

      v47 = _s27PhoneCallFlowDelegatePlugin13ButtonBuilderV15makeViewsForIOS09utteranceI0_ySaySo26SAUIAssistantUtteranceViewCG_ys6ResultOySaySo05SAAceO0CGs5Error_pGctFyAJy07SiriKitC0010TemplatingP0VsAN_pGcfU_TA_0;
    }

    goto LABEL_13;
  }

  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2();
  }

  v89 = type metadata accessor for Logger();
  v90 = OUTLINED_FUNCTION_12_1(v89, static Logger.siriPhone);
  v91 = static os_log_type_t.info.getter();
  if (OUTLINED_FUNCTION_43(v91))
  {
    v92 = OUTLINED_FUNCTION_65_0();
    OUTLINED_FUNCTION_53_0(v92);
    _os_log_impl(&dword_0, v90, v4, "#IdiomSensitiveViewBuilder: Building views for CarPlay", v82, 2u);
    OUTLINED_FUNCTION_26_0();
  }

  if (a1 >> 62)
  {
    type metadata accessor for SAAceView();

    _bridgeCocoaArray<A>(_:)();
  }

  else
  {

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    type metadata accessor for SAAceView();
  }

  v93 = OUTLINED_FUNCTION_49_23();
  closure #1 in IdiomSensitiveViewBuilder.makeViews(utteranceViews:_:)(v93, v94, v8, v149, v148, v95, v150);
}

uint64_t specialized IdiomSensitiveViewBuilder.makeViews(utteranceViews:_:)(unint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  v6 = v4;
  OUTLINED_FUNCTION_47_22();
  v9 = v8;
  v89 = v10;
  v90 = v11;
  v12 = v4[9];
  v13 = v4[10];
  OUTLINED_FUNCTION_28_0(v4 + 6, v12);
  v14 = *(v13 + 8);
  OUTLINED_FUNCTION_60_15();
  swift_retain_n();
  swift_retain_n();
  v14(v91, v12, v13);
  __swift_project_boxed_opaque_existential_1(v91, v92);
  OUTLINED_FUNCTION_8_8();
  v15 = dispatch thunk of DeviceState.isWatch.getter();
  OUTLINED_FUNCTION_45_17(v15, v16, v17, v18, v19);
  if (v4)
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2();
    }

    v20 = type metadata accessor for Logger();
    v21 = OUTLINED_FUNCTION_12_1(v20, static Logger.siriPhone);
    v22 = static os_log_type_t.info.getter();
    if (OUTLINED_FUNCTION_19_9(v22))
    {
      v23 = OUTLINED_FUNCTION_65_0();
      OUTLINED_FUNCTION_102(v23);
      OUTLINED_FUNCTION_47_1(&dword_0, v24, v25, "#IdiomSensitiveViewBuilder: Building views for Watch");
      OUTLINED_FUNCTION_35();
    }

    v26 = v6[4];
    SiriKitDisambiguationList.disambiguationItems.getter();
    v27 = v6[10];
    __swift_project_boxed_opaque_existential_1(v6 + 6, v6[9]);
    v28 = OUTLINED_FUNCTION_7_66();
    v29(v28, v27);
    OUTLINED_FUNCTION_28_0(v91, v92);
    dispatch thunk of DeviceState.isTextToSpeechEnabled.getter();
    v30 = static SiriKitDisambiguationSnippetFactory.makeDisambiguationSnippetForWatch(disambiguationItems:textToSpeechIsEnabled:)();

    __swift_destroy_boxed_opaque_existential_1(v91);
    type metadata accessor for SiriKitAceViewBuilder();
    v31 = v6[10];
    __swift_project_boxed_opaque_existential_1(v6 + 6, v6[9]);
    v32 = OUTLINED_FUNCTION_7_66();
    v33(v32, v31);
    dispatch thunk of static SiriKitAceViewBuilder.makeBuilder(deviceState:)();
    __swift_destroy_boxed_opaque_existential_1(v91);
    dispatch thunk of SiriKitAceViewBuilder.withUtteranceViews(utteranceViews:)();
    OUTLINED_FUNCTION_65_13();
    dispatch thunk of SiriKitAceViewBuilder.addSnippet(snippet:)();
    OUTLINED_FUNCTION_61();

    dispatch thunk of SiriKitAceViewBuilder.build()();
    OUTLINED_FUNCTION_65_13();
    OUTLINED_FUNCTION_43_26();
    OUTLINED_FUNCTION_27_31();
    closure #1 in IdiomSensitiveViewBuilder.makeViews(utteranceViews:_:)(v42, v43, v44, v45, v46, v47, v48);

LABEL_8:

    goto LABEL_9;
  }

  v34 = v4[10];
  OUTLINED_FUNCTION_18_31(v4 + 6, v4[9]);
  v35 = OUTLINED_FUNCTION_8_8();
  v36(v35);
  __swift_project_boxed_opaque_existential_1(v91, v92);
  OUTLINED_FUNCTION_8_8();
  v37 = dispatch thunk of DeviceState.isMac.getter();
  OUTLINED_FUNCTION_45_17(v37, v38, v39, v40, v41);
  v50 = v4[10];
  OUTLINED_FUNCTION_18_31(v4 + 6, v4[9]);
  v51 = OUTLINED_FUNCTION_8_8();
  v52(v51);
  __swift_project_boxed_opaque_existential_1(v91, v92);
  OUTLINED_FUNCTION_8_8();
  v53 = dispatch thunk of DeviceState.isCarPlay.getter();
  OUTLINED_FUNCTION_45_17(v53, v54, v55, v56, v57);
  if (v4)
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2();
    }

    v58 = type metadata accessor for Logger();
    v59 = OUTLINED_FUNCTION_12_1(v58, static Logger.siriPhone);
    v60 = static os_log_type_t.info.getter();
    if (OUTLINED_FUNCTION_19_9(v60))
    {
      v61 = OUTLINED_FUNCTION_65_0();
      OUTLINED_FUNCTION_102(v61);
      OUTLINED_FUNCTION_47_1(&dword_0, v62, v63, "#IdiomSensitiveViewBuilder: Building views for CarPlay");
      OUTLINED_FUNCTION_35();
    }

    v64 = v6[4];
    SiriKitDisambiguationList.disambiguationItems.getter();
    v65 = *(v6 + 40);
    v66 = static SiriKitDisambiguationSnippetFactory.makeDisambiguationSnippetForCarPlay(disambiguationItems:deviceIsLocked:)();

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v67 = swift_allocObject();
    *(v67 + 16) = xmmword_426260;
    *(v67 + 32) = v66;
    if (a1 >> 62)
    {
      OUTLINED_FUNCTION_37_25();
      v87 = v66;

      v88 = _bridgeCocoaArray<A>(_:)();

      a1 = v88;
    }

    else
    {
      v68 = v66;

      dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
      type metadata accessor for SAAceView();
    }

    v91[0] = v67;
    specialized Array.append<A>(contentsOf:)(a1);
    OUTLINED_FUNCTION_43_26();
    v69 = OUTLINED_FUNCTION_49_23();
    closure #1 in IdiomSensitiveViewBuilder.makeViews(utteranceViews:_:)(v69, v70, v9, v89, v90, v71, v72);

    goto LABEL_8;
  }

  v73 = v4[10];
  OUTLINED_FUNCTION_18_31(v4 + 6, v4[9]);
  v74 = OUTLINED_FUNCTION_8_8();
  v75(v74);
  __swift_project_boxed_opaque_existential_1(v91, v92);
  OUTLINED_FUNCTION_8_8();
  v76 = dispatch thunk of DeviceState.isAppleTV.getter();
  OUTLINED_FUNCTION_45_17(v76, v77, v78, v79, v80);
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2();
  }

  v81 = type metadata accessor for Logger();
  v82 = OUTLINED_FUNCTION_12_1(v81, static Logger.siriPhone);
  v83 = static os_log_type_t.info.getter();
  if (OUTLINED_FUNCTION_19_9(v83))
  {
    v84 = OUTLINED_FUNCTION_65_0();
    OUTLINED_FUNCTION_102(v84);
    OUTLINED_FUNCTION_47_1(&dword_0, v85, v86, "#IdiomSensitiveViewBuilder: Building views for IOS");
    OUTLINED_FUNCTION_35();
  }

  OUTLINED_FUNCTION_43_26();
  OUTLINED_FUNCTION_27_31();
  a4();

LABEL_9:

  OUTLINED_FUNCTION_60_15();
}

uint64_t SearchCallHistoryAceViewProvider.__allocating_init(templatingService:sharedGlobals:appInfoBuilder:)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *(v3 + 48);
  v6 = *(v3 + 52);
  swift_allocObject();
  v7 = a3[4];
  __swift_mutable_project_boxed_opaque_existential_1(a3, a3[3]);
  OUTLINED_FUNCTION_9_10();
  v9 = *(v8 + 64);
  __chkstk_darwin(v10);
  v12 = OUTLINED_FUNCTION_3_5(v11, v16);
  v13(v12);
  v14 = OUTLINED_FUNCTION_44_17();
  __swift_destroy_boxed_opaque_existential_1(a3);
  return v14;
}

uint64_t SearchCallHistoryAceViewProvider.init(templatingService:sharedGlobals:appInfoBuilder:)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = a3[4];
  __swift_mutable_project_boxed_opaque_existential_1(a3, a3[3]);
  OUTLINED_FUNCTION_9_10();
  v6 = *(v5 + 64);
  __chkstk_darwin(v7);
  v9 = OUTLINED_FUNCTION_3_5(v8, v13);
  v10(v9);
  v11 = OUTLINED_FUNCTION_44_17();
  __swift_destroy_boxed_opaque_existential_1(a3);
  return v11;
}

uint64_t SearchCallHistoryAceViewProvider.makeAceViewsForResolveNeedsDisambiguation(app:parameterName:intent:utteranceViews:disambiguationList:deviceIsLocked:_:)(uint64_t a1, uint64_t a2, void *a3, void *a4, unint64_t a5, uint64_t a6, char a7, uint64_t a8, uint64_t a9)
{
  v17 = type metadata accessor for CATOption();
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);

  v19._countAndFlagsBits = a2;
  v19._object = a3;
  if (PhoneCallSlotNames.init(rawValue:)(v19).value == PhoneCallFlowDelegatePlugin_PhoneCallSlotNames_recipient)
  {
    v30 = a7;
    v31 = v9;
    v29 = direct field offset for SearchCallHistoryAceViewProvider.sharedGlobals;
    type metadata accessor for PhoneCallDisplayTextCATs();
    static CATOption.defaultMode.getter();
    v20 = CATWrapper.__allocating_init(options:globals:)();
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2();
    }

    v21 = type metadata accessor for Logger();
    v22 = OUTLINED_FUNCTION_12_1(v21, static Logger.siriPhone);
    v23 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_16_4(v23))
    {
      v24 = OUTLINED_FUNCTION_65_0();
      OUTLINED_FUNCTION_102(v24);
      OUTLINED_FUNCTION_20_39(&dword_0, v25, v23, "#StartCallViewBuilders Providing DefaultDisambiguationBuilder");
      OUTLINED_FUNCTION_26_0();
    }

    outlined init with copy of SignalProviding(v31 + v29, v35);
    v33[0] = a1;
    v33[1] = a4;
    v33[2] = a2;
    v33[3] = a3;
    v33[4] = a6;
    v34 = v30 & 1;
    v35[5] = v20;

    v26 = a4;

    specialized IdiomSensitiveViewBuilder.makeViews(utteranceViews:_:)(a5, a8, a9, specialized DefaultDisambiguationBuilder.makeViewsForIOS(utteranceViews:_:));
    return outlined destroy of DefaultDisambiguationBuilder<INSearchCallHistoryIntent>(v33);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow22DefaultAceViewProviderCySo25INSearchCallHistoryIntentCSo0hijK8ResponseCGMd, &_s11SiriKitFlow22DefaultAceViewProviderCySo25INSearchCallHistoryIntentCSo0hijK8ResponseCGMR);
    v28 = method lookup function for DefaultAceViewProvider();

    return v28(a1, a2, a3, a4, a5, a6, a7 & 1, a8, a9);
  }
}

uint64_t SearchCallHistoryAceViewProvider.makeAceViewsForHandleIntentWithUser(app:intent:intentResponse:_:)(uint64_t a1, void *a2, void *a3)
{
  outlined init with copy of SignalProviding(v3 + direct field offset for SearchCallHistoryAceViewProvider.sharedGlobals, &v11);
  outlined init with copy of SignalProviding(v3 + direct field offset for SearchCallHistoryAceViewProvider.appInfoBuilder, &v12);
  v10[0] = a1;
  v10[1] = a2;
  v10[2] = a3;

  v7 = a2;
  v8 = a3;
  specialized IdiomSensitiveViewBuilder.makeViews(utteranceViews:_:)();
  return outlined destroy of CallRecordTableSnippetBuilder(v10);
}

uint64_t SearchCallHistoryAceViewProvider.makeAceViewsForLaunchAppWithButton(app:intent:intentResolutionResult:intentResponse:utteranceViews:_:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = *(v7 + direct field offset for SearchCallHistoryAceViewProvider.templatingService);
  v18[3] = type metadata accessor for SearchCallHistoryTemplatingService();
  v18[4] = &protocol witness table for PhoneCallBaseCatTemplatingService<A, B>;

  v14 = [a2 preferredCallProvider];
  static SCHViewBuilders.makeErrorButtonBuilder(templatingService:app:preferredCallProvider:sharedGlobals:)(v18, a1, v14, (v7 + direct field offset for SearchCallHistoryAceViewProvider.sharedGlobals), v19);
  __swift_destroy_boxed_opaque_existential_1(v18);
  v15 = v20;
  v16 = v21;
  OUTLINED_FUNCTION_28_0(v19, v20);
  (*(v16 + 8))(a5, a6, a7, v15, v16);
  return __swift_destroy_boxed_opaque_existential_1(v19);
}

uint64_t SearchCallHistoryAceViewProvider.__ivar_destroyer()
{
  v1 = *(v0 + direct field offset for SearchCallHistoryAceViewProvider.templatingService);

  __swift_destroy_boxed_opaque_existential_1((v0 + direct field offset for SearchCallHistoryAceViewProvider.sharedGlobals));
  v2 = (v0 + direct field offset for SearchCallHistoryAceViewProvider.appInfoBuilder);

  return __swift_destroy_boxed_opaque_existential_1(v2);
}

uint64_t SearchCallHistoryAceViewProvider.deinit()
{
  v0 = DefaultAceViewProvider.deinit();
  v1 = *(v0 + direct field offset for SearchCallHistoryAceViewProvider.templatingService);

  __swift_destroy_boxed_opaque_existential_1((v0 + direct field offset for SearchCallHistoryAceViewProvider.sharedGlobals));
  __swift_destroy_boxed_opaque_existential_1((v0 + direct field offset for SearchCallHistoryAceViewProvider.appInfoBuilder));
  return v0;
}

uint64_t SearchCallHistoryAceViewProvider.__deallocating_deinit()
{
  SearchCallHistoryAceViewProvider.deinit();
  OUTLINED_FUNCTION_39_23();

  return swift_deallocClassInstance();
}

uint64_t specialized SearchCallHistoryAceViewProvider.init(templatingService:sharedGlobals:appInfoBuilder:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v14[3] = a5;
  v14[4] = a6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v14);
  (*(*(a5 - 8) + 32))(boxed_opaque_existential_1, a3, a5);
  *(a4 + direct field offset for SearchCallHistoryAceViewProvider.templatingService) = a1;
  outlined init with copy of SignalProviding(a2, a4 + direct field offset for SearchCallHistoryAceViewProvider.sharedGlobals);
  outlined init with copy of SignalProviding(v14, a4 + direct field offset for SearchCallHistoryAceViewProvider.appInfoBuilder);
  v12 = DefaultAceViewProvider.init()();
  __swift_destroy_boxed_opaque_existential_1(a2);
  __swift_destroy_boxed_opaque_existential_1(v14);
  return v12;
}

uint64_t outlined destroy of DefaultDisambiguationBuilder<INSearchCallHistoryIntent>(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin28DefaultDisambiguationBuilder33_6270EEFB01DDA464E81F258DCCAFA0E4LLVySo08INSearchB13HistoryIntentCGMd, &_s27PhoneCallFlowDelegatePlugin28DefaultDisambiguationBuilder33_6270EEFB01DDA464E81F258DCCAFA0E4LLVySo08INSearchB13HistoryIntentCGMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for SearchCallHistoryAceViewProvider()
{
  result = type metadata singleton initialization cache for SearchCallHistoryAceViewProvider;
  if (!type metadata singleton initialization cache for SearchCallHistoryAceViewProvider)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t type metadata accessor for SAAceView()
{
  result = lazy cache variable for type metadata for SAAceView;
  if (!lazy cache variable for type metadata for SAAceView)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for SAAceView);
  }

  return result;
}

uint64_t objectdestroy_3Tm_0()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[7];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 8);
  OUTLINED_FUNCTION_39_23();

  return _swift_deallocObject(v5, v6, v7);
}

uint64_t objectdestroyTm_11()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 56);

  OUTLINED_FUNCTION_102_0();

  return _swift_deallocObject(v3, v4, v5);
}

void OUTLINED_FUNCTION_26_30(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v6, a4, v4, 2u);
}

BOOL OUTLINED_FUNCTION_29_28(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

void OUTLINED_FUNCTION_36_25(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 2u);
}

unint64_t OUTLINED_FUNCTION_37_25()
{

  return type metadata accessor for SAAceView();
}

void OUTLINED_FUNCTION_38_24(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 2u);
}

uint64_t OUTLINED_FUNCTION_40_26(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  v9 = *v6;
  v8 = v6[1];

  return outlined init with copy of ButtonBuilder(v6, va);
}

uint64_t OUTLINED_FUNCTION_45_17(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);

  return __swift_destroy_boxed_opaque_existential_1(va);
}

void OUTLINED_FUNCTION_47_22()
{

  static Signpost.begin(_:)();
}

void *OUTLINED_FUNCTION_56_11(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char __src)
{
  v16 = (a1 + 32);

  return memcpy(v16, &__src, 0x78uLL);
}

uint64_t OUTLINED_FUNCTION_64_13(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);

  return __swift_destroy_boxed_opaque_existential_1(va);
}

uint64_t OUTLINED_FUNCTION_65_15(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);

  return __swift_destroy_boxed_opaque_existential_1(va);
}

uint64_t OUTLINED_FUNCTION_66_14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);

  return __swift_destroy_boxed_opaque_existential_1(va);
}

uint64_t SearchCallHistoryBaseFlowStrategy.__allocating_init(sharedGlobals:responseGenerator:searchCallCatPatterns:appInfoBuilder:)(__int128 *a1, __int128 *a2, __int128 *a3, __int128 *a4)
{
  v8 = swift_allocObject();
  SearchCallHistoryBaseFlowStrategy.init(sharedGlobals:responseGenerator:searchCallCatPatterns:appInfoBuilder:)(a1, a2, a3, a4);
  return v8;
}

uint64_t SearchCallHistoryBaseFlowStrategy.init(sharedGlobals:responseGenerator:searchCallCatPatterns:appInfoBuilder:)(__int128 *a1, __int128 *a2, __int128 *a3, __int128 *a4)
{
  outlined init with take of SPHConversation(a1, v4 + 16);
  outlined init with take of SPHConversation(a3, v4 + 56);
  outlined init with take of SPHConversation(a2, v4 + 96);
  outlined init with take of SPHConversation(a4, v4 + 136);
  return v4;
}

uint64_t SearchCallHistoryBaseFlowStrategy.makeIntentHandledResponse(app:intent:intentResponse:_:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void *))
{
  v5 = type metadata accessor for PhoneError();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for siriPhone != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, static Logger.siriPhone);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_0, v10, v11, "#SearchCallHistoryBaseFlowStrategy makeIntentHandledResponse should be overridden", v12, 2u);
  }

  swift_storeEnumTagMultiPayload();
  _s27PhoneCallFlowDelegatePlugin0A5ErrorOACs0F0AAWlTm_11(&lazy protocol witness table cache variable for type PhoneError and conformance PhoneError, 255, type metadata accessor for PhoneError);
  v13 = swift_allocError();
  PhoneError.logged()(v14);
  outlined destroy of PhoneError(v8);
  v16[0] = v13;
  v17 = 1;
  a4(v16);
  return outlined destroy of Result<Output, Error>(v16);
}

uint64_t *SearchCallHistoryBaseFlowStrategy.deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  __swift_destroy_boxed_opaque_existential_1(v0 + 12);
  __swift_destroy_boxed_opaque_existential_1(v0 + 17);
  return v0;
}

uint64_t SearchCallHistoryBaseFlowStrategy.__deallocating_deinit()
{
  SearchCallHistoryBaseFlowStrategy.deinit();

  return swift_deallocClassInstance();
}

uint64_t protocol witness for HandleIntentFlowStrategy.makePromptForDeviceUnlock(app:intent:intentResponse:_:) in conformance SearchCallHistoryBaseFlowStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for SearchCallHistoryBaseFlowStrategy();

  return HandleIntentFlowStrategy.makePromptForDeviceUnlock(app:intent:intentResponse:_:)(a1, a2, a3, a4, a5, v13, a7);
}

uint64_t protocol witness for HandleIntentFlowStrategy.makeHandoffForAuthenticationResponse(app:intent:intentResponse:_:) in conformance SearchCallHistoryBaseFlowStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for SearchCallHistoryBaseFlowStrategy();

  return HandleIntentFlowStrategy.makeHandoffForAuthenticationResponse(app:intent:intentResponse:_:)(a1, a2, a3, a4, a5, v13, a7);
}

uint64_t protocol witness for HandleIntentFlowStrategy.makePreHandleIntentOutput(app:intent:intentResponse:_:) in conformance SearchCallHistoryBaseFlowStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for SearchCallHistoryBaseFlowStrategy();

  return HandleIntentFlowStrategy.makePreHandleIntentOutput(app:intent:intentResponse:_:)(a1, a2, a3, a4, a5, v13, a7);
}

uint64_t protocol witness for HandleIntentFlowStrategy.makeContinueInAppResponse(app:intent:intentResponse:_:) in conformance SearchCallHistoryBaseFlowStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for SearchCallHistoryBaseFlowStrategy();

  return HandleIntentFlowStrategy.makeContinueInAppResponse(app:intent:intentResponse:_:)(a1, a2, a3, a4, a5, v13, a7);
}

uint64_t protocol witness for HandleIntentFlowStrategy.makeInProgressResponse(app:intent:intentResponse:_:) in conformance SearchCallHistoryBaseFlowStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for SearchCallHistoryBaseFlowStrategy();

  return HandleIntentFlowStrategy.makeInProgressResponse(app:intent:intentResponse:_:)(a1, a2, a3, a4, a5, v13, a7);
}

uint64_t protocol witness for HandleIntentFlowStrategy.makeFailureHandlingIntentResponse(app:intent:intentResponse:_:) in conformance SearchCallHistoryBaseFlowStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for SearchCallHistoryBaseFlowStrategy();

  return HandleIntentFlowStrategy.makeFailureHandlingIntentResponse(app:intent:intentResponse:_:)(a1, a2, a3, a4, a5, v13, a7);
}

uint64_t protocol witness for IntentExtensionCommunicating.shouldIntentBeExecutedOnRemoteCompanion(intent:) in conformance SearchCallHistoryBaseFlowStrategy(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for SearchCallHistoryBaseFlowStrategy();

  return IntentExtensionCommunicating.shouldIntentBeExecutedOnRemoteCompanion(intent:)(a1, v5, a3);
}

uint64_t protocol witness for IntentExtensionCommunicating.makeSiriKitIntentHandler(app:intent:) in conformance SearchCallHistoryBaseFlowStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for SearchCallHistoryBaseFlowStrategy();

  return IntentExtensionCommunicating.makeSiriKitIntentHandler(app:intent:)(a1, a2, v7, a4);
}

uint64_t protocol witness for IntentExtensionCommunicating.makeIntentExecutionBehavior(app:intent:) in conformance SearchCallHistoryBaseFlowStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for SearchCallHistoryBaseFlowStrategy();

  return IntentExtensionCommunicating.makeIntentExecutionBehavior(app:intent:)(a1, a2, v7, a4);
}

uint64_t protocol witness for IntentExtensionCommunicating.makeIntentExecutionBehavior(app:intent:completion:) in conformance SearchCallHistoryBaseFlowStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for SearchCallHistoryBaseFlowStrategy();

  return IntentExtensionCommunicating.makeIntentExecutionBehavior(app:intent:completion:)(a1, a2, a3, a4, v11, a6);
}

uint64_t _s27PhoneCallFlowDelegatePlugin0A5ErrorOACs0F0AAWlTm_11(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t (*SearchCallHistoryBinaryButtonModel.primaryText.modify())()
{
  v1 = OUTLINED_FUNCTION_14_4();
  v2 = __swift_coroFrameAllocStub(v1);
  *v0 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  v2[4] = Loggable.wrappedValue.modify();
  return EmergencyCountdownModel.callAction.modify;
}

uint64_t property wrapper backing initializer of SearchCallHistoryBinaryButtonModel.primaryAction()
{
  type metadata accessor for SABaseClientBoundCommand();

  return CodableAceObject.init(wrappedValue:)();
}

unint64_t type metadata accessor for SABaseClientBoundCommand()
{
  result = lazy cache variable for type metadata for SABaseClientBoundCommand;
  if (!lazy cache variable for type metadata for SABaseClientBoundCommand)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for SABaseClientBoundCommand);
  }

  return result;
}

uint64_t SearchCallHistoryBinaryButtonModel.primaryAction.getter()
{
  v0 = *(type metadata accessor for SearchCallHistoryBinaryButtonModel() + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo24SABaseClientBoundCommandCGMd, &_s10SnippetKit16CodableAceObjectVySo24SABaseClientBoundCommandCGMR);
  return CodableAceObject.wrappedValue.getter();
}

uint64_t type metadata accessor for SearchCallHistoryBinaryButtonModel()
{
  result = type metadata singleton initialization cache for SearchCallHistoryBinaryButtonModel;
  if (!type metadata singleton initialization cache for SearchCallHistoryBinaryButtonModel)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SearchCallHistoryBinaryButtonModel.primaryAction.setter()
{
  v0 = *(type metadata accessor for SearchCallHistoryBinaryButtonModel() + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo24SABaseClientBoundCommandCGMd, &_s10SnippetKit16CodableAceObjectVySo24SABaseClientBoundCommandCGMR);
  return CodableAceObject.wrappedValue.setter();
}

uint64_t (*SearchCallHistoryBinaryButtonModel.primaryAction.modify())()
{
  v1 = OUTLINED_FUNCTION_14_4();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = *(OUTLINED_FUNCTION_4_76(v2) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo24SABaseClientBoundCommandCGMd, &_s10SnippetKit16CodableAceObjectVySo24SABaseClientBoundCommandCGMR);
  OUTLINED_FUNCTION_3_40();
  *(v0 + 32) = CodableAceObject.wrappedValue.modify();
  return EmergencyCountdownModel.sashTitle.modify;
}

uint64_t SearchCallHistoryBinaryButtonModel.secondaryText.getter()
{
  v0 = *(type metadata accessor for SearchCallHistoryBinaryButtonModel() + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  Loggable.wrappedValue.getter();
  return v2;
}

uint64_t key path setter for SearchCallHistoryBinaryButtonModel.secondaryText : SearchCallHistoryBinaryButtonModel(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return SearchCallHistoryBinaryButtonModel.secondaryText.setter();
}

uint64_t SearchCallHistoryBinaryButtonModel.secondaryText.setter()
{
  v0 = *(type metadata accessor for SearchCallHistoryBinaryButtonModel() + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  return Loggable.wrappedValue.setter();
}

uint64_t (*SearchCallHistoryBinaryButtonModel.secondaryText.modify())()
{
  v1 = OUTLINED_FUNCTION_14_4();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = *(OUTLINED_FUNCTION_4_76(v2) + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  OUTLINED_FUNCTION_3_40();
  *(v0 + 32) = Loggable.wrappedValue.modify();
  return EmergencyCountdownModel.sashTitle.modify;
}