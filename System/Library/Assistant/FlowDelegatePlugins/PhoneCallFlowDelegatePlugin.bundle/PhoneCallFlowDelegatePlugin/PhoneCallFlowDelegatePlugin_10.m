uint64_t CallingIntentContactNeedsDisambiguationFlowStrategy.getSimpleDisambiguationMixedLabels(sharedGlobals:outputManifest:responseGenerator:crrOutputGenerator:persons:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[2] = a1;
  v6[3] = a3;
  return OUTLINED_FUNCTION_0_1(CallingIntentContactNeedsDisambiguationFlowStrategy.getSimpleDisambiguationMixedLabels(sharedGlobals:outputManifest:responseGenerator:crrOutputGenerator:persons:));
}

uint64_t CallingIntentContactNeedsDisambiguationFlowStrategy.getSimpleDisambiguationMixedLabels(sharedGlobals:outputManifest:responseGenerator:crrOutputGenerator:persons:)()
{
  OUTLINED_FUNCTION_27();
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2();
  }

  v1 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_9_0(v1, static Logger.siriPhone);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_8_0(v3))
  {
    v4 = OUTLINED_FUNCTION_65_0();
    OUTLINED_FUNCTION_11_1(v4);
    OUTLINED_FUNCTION_14_1(&dword_0, v5, v6, "#CallingIntentContactNeedsDisambiguationFlowStrategy makePromptForNeedsDisambiguationOutput: generating simple disambiguation for 2 or 3 mixed handles by using output result generator");
    OUTLINED_FUNCTION_12_3();
  }

  v7 = *(v0 + 32);

  OUTLINED_FUNCTION_28_10();
  v8 = async function pointer to dispatch thunk of ContactResolutionSnippetGenerating.generateSimpleDisambiguationMixedLabels(contacts:directInvocationID:outputGenerationManifest:)[1];
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 48) = v9;
  *v9 = v10;
  v11 = OUTLINED_FUNCTION_4_15(v9);

  return dispatch thunk of ContactResolutionSnippetGenerating.generateSimpleDisambiguationMixedLabels(contacts:directInvocationID:outputGenerationManifest:)(v11);
}

uint64_t CallingIntentContactNeedsDisambiguationFlowStrategy.getDetailedDisambiguationMixedLabels(sharedGlobals:outputManifest:responseGenerator:crrOutputGenerator:persons:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[2] = a1;
  v6[3] = a3;
  return OUTLINED_FUNCTION_0_1(CallingIntentContactNeedsDisambiguationFlowStrategy.getDetailedDisambiguationMixedLabels(sharedGlobals:outputManifest:responseGenerator:crrOutputGenerator:persons:));
}

uint64_t CallingIntentContactNeedsDisambiguationFlowStrategy.getDetailedDisambiguationMixedLabels(sharedGlobals:outputManifest:responseGenerator:crrOutputGenerator:persons:)()
{
  OUTLINED_FUNCTION_27();
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2();
  }

  v1 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_9_0(v1, static Logger.siriPhone);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_8_0(v3))
  {
    v4 = OUTLINED_FUNCTION_65_0();
    OUTLINED_FUNCTION_11_1(v4);
    OUTLINED_FUNCTION_14_1(&dword_0, v5, v6, "#CallingIntentContactNeedsDisambiguationFlowStrategy makePromptForNeedsDisambiguationOutput: generating detailed disambiguation for more than 3 mixed handles by using output result generator");
    OUTLINED_FUNCTION_12_3();
  }

  v7 = *(v0 + 32);

  OUTLINED_FUNCTION_28_10();
  v8 = async function pointer to dispatch thunk of ContactResolutionSnippetGenerating.generateDetailedDisambiguationForMixedLabels(contacts:directInvocationID:outputGenerationManifest:)[1];
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 48) = v9;
  *v9 = v10;
  v11 = OUTLINED_FUNCTION_4_15(v9);

  return dispatch thunk of ContactResolutionSnippetGenerating.generateDetailedDisambiguationForMixedLabels(contacts:directInvocationID:outputGenerationManifest:)(v11);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  v2 = *(v1 + 48);
  v3 = *v0;
  OUTLINED_FUNCTION_4_2();
  *v4 = v3;

  OUTLINED_FUNCTION_11();

  return v5();
}

uint64_t CallingIntentContactNeedsDisambiguationFlowStrategy.getDetailedDisambiguationContactNames(sharedGlobals:outputManifest:responseGenerator:crrOutputGenerator:persons:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[2] = a1;
  v6[3] = a3;
  return OUTLINED_FUNCTION_0_1(CallingIntentContactNeedsDisambiguationFlowStrategy.getDetailedDisambiguationContactNames(sharedGlobals:outputManifest:responseGenerator:crrOutputGenerator:persons:));
}

uint64_t CallingIntentContactNeedsDisambiguationFlowStrategy.getDetailedDisambiguationContactNames(sharedGlobals:outputManifest:responseGenerator:crrOutputGenerator:persons:)()
{
  OUTLINED_FUNCTION_27();
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2();
  }

  v1 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_9_0(v1, static Logger.siriPhone);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_8_0(v3))
  {
    v4 = OUTLINED_FUNCTION_65_0();
    OUTLINED_FUNCTION_11_1(v4);
    OUTLINED_FUNCTION_14_1(&dword_0, v5, v6, "#CallingIntentContactNeedsDisambiguationFlowStrategy makePromptForNeedsDisambiguationOutput: generating contact name disambiguation by using output result generator");
    OUTLINED_FUNCTION_12_3();
  }

  v7 = *(v0 + 32);

  OUTLINED_FUNCTION_28_10();
  v8 = async function pointer to dispatch thunk of ContactResolutionSnippetGenerating.generateDetailedDisambiguationContactNames(contacts:directInvocationID:outputGenerationManifest:)[1];
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 48) = v9;
  *v9 = v10;
  v11 = OUTLINED_FUNCTION_4_15(v9);

  return dispatch thunk of ContactResolutionSnippetGenerating.generateDetailedDisambiguationContactNames(contacts:directInvocationID:outputGenerationManifest:)(v11);
}

uint64_t CallingIntentContactNeedsDisambiguationFlowStrategy.makePromptForEmergencyNeedsDisambiguation(app:disambiguationItems:nlContextUpdate:)()
{
  OUTLINED_FUNCTION_15();
  v1[5] = v2;
  v1[6] = v0;
  v1[3] = v3;
  v1[4] = v4;
  v1[2] = v5;
  v6 = type metadata accessor for PhoneError();
  v1[7] = v6;
  OUTLINED_FUNCTION_21(v6);
  v8 = *(v7 + 64);
  v1[8] = OUTLINED_FUNCTION_45();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin43DisambiguationItemWithDirectInvocationModelVSgMd, &_s27PhoneCallFlowDelegatePlugin43DisambiguationItemWithDirectInvocationModelVSgMR);
  OUTLINED_FUNCTION_21(v9);
  v11 = *(v10 + 64);
  v1[9] = OUTLINED_FUNCTION_45();
  v12 = type metadata accessor for DisambiguationItemWithDirectInvocationModel(0);
  v1[10] = v12;
  OUTLINED_FUNCTION_13_2(v12);
  v1[11] = v13;
  v15 = *(v14 + 64);
  v1[12] = OUTLINED_FUNCTION_62_4();
  v1[13] = swift_task_alloc();
  v16 = type metadata accessor for DialogPhase();
  OUTLINED_FUNCTION_21(v16);
  v18 = *(v17 + 64);
  v1[14] = OUTLINED_FUNCTION_45();
  v19 = type metadata accessor for OutputGenerationManifest();
  v1[15] = v19;
  OUTLINED_FUNCTION_13_2(v19);
  v1[16] = v20;
  v22 = *(v21 + 64);
  v1[17] = OUTLINED_FUNCTION_45();
  v23 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v23, v24, v25);
}

{
  OUTLINED_FUNCTION_24_1();
  v76 = v0;
  v2 = *(v0 + 48);
  OUTLINED_FUNCTION_2_0();
  v3 += 40;
  v4 = *v3;
  v5._rawValue = (*v3)();
  LOBYTE(v6) = EmergencyType.init(for:)(v5);
  *(v0 + 216) = v6;
  if (v6 == 2)
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2();
    }

    v7 = *(v0 + 48);
    v8 = type metadata accessor for Logger();
    __swift_project_value_buffer(v8, static Logger.siriPhone);

    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    v11 = os_log_type_enabled(v9, v10);
    v12 = *(v0 + 48);
    if (v11)
    {
      OUTLINED_FUNCTION_42();
      v13 = OUTLINED_FUNCTION_83();
      v75[0] = v13;
      *v1 = 136315138;
      (v4)(v13);
      type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INPerson, INPerson_ptr);
      v14 = Array.description.getter();
      v16 = v15;

      getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v16, v75);
      OUTLINED_FUNCTION_109();

      *(v1 + 4) = v12;
      _os_log_impl(&dword_0, v9, v10, "#CallingIntentContactNeedsDisambiguationFlowStrategy makePromptForEmergencyNeedsDisambiguation called for neither a foreign or a local emergency. %s", v1, 0xCu);
      OUTLINED_FUNCTION_3_7();
      OUTLINED_FUNCTION_35();
    }

    else
    {
    }

    v41 = *(v0 + 56);
    v42 = *(v0 + 64);
    OUTLINED_FUNCTION_0();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_6_21();
    lazy protocol witness table accessor for type Input and conformance Input(v43, v44);
    swift_allocError();
    PhoneError.logged()(v45);
    OUTLINED_FUNCTION_2_32();
    _s27PhoneCallFlowDelegatePlugin0A5ErrorOWOhTm_1(v42, v46);
    swift_willThrow();
    v47 = *(v0 + 136);
    v49 = *(v0 + 104);
    v48 = *(v0 + 112);
    v50 = *(v0 + 96);
    v52 = *(v0 + 64);
    v51 = *(v0 + 72);

    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_98_0();

    __asm { BRAA            X1, X16 }
  }

  v17 = v6;
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2();
  }

  v18 = type metadata accessor for Logger();
  *(v0 + 144) = __swift_project_value_buffer(v18, static Logger.siriPhone);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_51_0(v20))
  {
    OUTLINED_FUNCTION_42();
    v75[0] = OUTLINED_FUNCTION_83();
    *v1 = 136315138;
    v21 = EmergencyType.description.getter(v17);
    v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v22, v75);

    *(v1 + 4) = v23;
    OUTLINED_FUNCTION_18_10();
    _os_log_impl(v24, v25, v26, v27, v28, 0xCu);
    OUTLINED_FUNCTION_3_7();
    OUTLINED_FUNCTION_35();
  }

  v29 = *(*(v0 + 32) + 16);
  *(v0 + 160) = 0;
  *(v0 + 168) = _swiftEmptyArrayStorage;
  *(v0 + 152) = v29;
  if (v29)
  {
    v30 = type metadata accessor for SiriKitDisambiguationItemPair();
    OUTLINED_FUNCTION_21(v30);
    v32 = (*(v31 + 80) + 32) & ~*(v31 + 80);
    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    *(v0 + 176) = v33;
    *v33 = v34;
    OUTLINED_FUNCTION_39_10(v33);
    OUTLINED_FUNCTION_98_0();

    return closure #1 in CallingIntentContactNeedsDisambiguationFlowStrategy.makePromptForEmergencyNeedsDisambiguation(app:disambiguationItems:nlContextUpdate:)(v35, v36, v37, v38);
  }

  else
  {
    v55 = *(v0 + 216);
    v56 = *(v0 + 136);
    v57 = *(v0 + 144);
    v58 = *(v0 + 112);
    v59 = *(v0 + 40);
    static DialogPhase.clarification.getter();
    *(swift_task_alloc() + 16) = v59;
    OUTLINED_FUNCTION_50_6();
    OutputGenerationManifest.init(dialogPhase:_:)();

    v60 = Logger.logObject.getter();
    v61 = static os_log_type_t.debug.getter();
    v62 = OUTLINED_FUNCTION_8_0(v61);
    if (v55)
    {
      if (v62)
      {
        v63 = OUTLINED_FUNCTION_65_0();
        OUTLINED_FUNCTION_11_1(v63);
        OUTLINED_FUNCTION_14_1(&dword_0, v64, v65, "#CallingIntentContactNeedsDisambiguationFlowStrategy makePromptForEmergencyNeedsDisambiguation for local emergency");
        OUTLINED_FUNCTION_12_3();
      }

      swift_task_alloc();
      OUTLINED_FUNCTION_25();
      *(v0 + 200) = v66;
      *v66 = v67;
      OUTLINED_FUNCTION_40_8(v66);
      OUTLINED_FUNCTION_98_0();

      return CallingIntentContactNeedsDisambiguationFlowStrategy.makePromptForLocalEmergencyDisambiguation(app:disambiguationItems:outputGenerationManifest:)();
    }

    else
    {
      if (v62)
      {
        v69 = OUTLINED_FUNCTION_65_0();
        OUTLINED_FUNCTION_11_1(v69);
        OUTLINED_FUNCTION_14_1(&dword_0, v70, v71, "#CallingIntentContactNeedsDisambiguationFlowStrategy makePromptForEmergencyNeedsDisambiguation for foreign emergency");
        OUTLINED_FUNCTION_12_3();
      }

      swift_task_alloc();
      OUTLINED_FUNCTION_25();
      *(v0 + 184) = v72;
      *v72 = v73;
      OUTLINED_FUNCTION_38_7(v72);
      OUTLINED_FUNCTION_98_0();

      return CallingIntentContactNeedsDisambiguationFlowStrategy.makePromptForForeignEmergencyDisambiguation(disambiguationItems:outputGenerationManifest:)();
    }
  }
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  v3 = v2;
  OUTLINED_FUNCTION_6();
  *v4 = v3;
  v6 = *(v5 + 176);
  v7 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v8 = v7;

  if (v0)
  {
    v9 = *(v3 + 168);
  }

  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v10, v11, v12);
}

{
  v1 = *(v0 + 72);
  if (__swift_getEnumTagSinglePayload(v1, 1, *(v0 + 80)) == 1)
  {
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v1, &_s27PhoneCallFlowDelegatePlugin43DisambiguationItemWithDirectInvocationModelVSgMd, &_s27PhoneCallFlowDelegatePlugin43DisambiguationItemWithDirectInvocationModelVSgMR);
    v2 = *(v0 + 168);
  }

  else
  {
    v3 = *(v0 + 168);
    v5 = *(v0 + 96);
    v4 = *(v0 + 104);
    OUTLINED_FUNCTION_3_26();
    outlined init with take of PhoneRRTarget(v1, v4);
    outlined init with copy of LocalEmergencyCallDisambiguationModel(v4, v5);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v2 = *(v0 + 168);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v50 = *(v2 + 16);
      OUTLINED_FUNCTION_92_0();
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v2 = v51;
    }

    v7 = *(v2 + 16);
    if (v7 >= *(v2 + 24) >> 1)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v2 = v52;
    }

    v8 = *(v0 + 96);
    v9 = *(v0 + 88);
    _s27PhoneCallFlowDelegatePlugin0A5ErrorOWOhTm_1(*(v0 + 104), type metadata accessor for DisambiguationItemWithDirectInvocationModel);
    *(v2 + 16) = v7 + 1;
    v10 = *(v9 + 80);
    OUTLINED_FUNCTION_19_1();
    v11 = *(v9 + 72);
    OUTLINED_FUNCTION_3_26();
    outlined init with take of PhoneRRTarget(v8, v12);
  }

  v13 = *(v0 + 152);
  v14 = *(v0 + 160) + 1;
  *(v0 + 160) = v14;
  *(v0 + 168) = v2;
  if (v14 == v13)
  {
    v15 = *(v0 + 216);
    v17 = *(v0 + 136);
    v16 = *(v0 + 144);
    v18 = *(v0 + 112);
    v19 = *(v0 + 40);
    static DialogPhase.clarification.getter();
    *(swift_task_alloc() + 16) = v19;
    OUTLINED_FUNCTION_50_6();
    OutputGenerationManifest.init(dialogPhase:_:)();

    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.debug.getter();
    v22 = OUTLINED_FUNCTION_51_0(v21);
    if (v15)
    {
      if (v22)
      {
        v23 = OUTLINED_FUNCTION_65_0();
        OUTLINED_FUNCTION_102(v23);
        OUTLINED_FUNCTION_18_10();
        _os_log_impl(v24, v25, v26, v27, v28, 2u);
        OUTLINED_FUNCTION_35();
      }

      swift_task_alloc();
      OUTLINED_FUNCTION_25();
      *(v0 + 200) = v29;
      *v29 = v30;
      OUTLINED_FUNCTION_40_8(v29);

      return CallingIntentContactNeedsDisambiguationFlowStrategy.makePromptForLocalEmergencyDisambiguation(app:disambiguationItems:outputGenerationManifest:)();
    }

    else
    {
      if (v22)
      {
        v42 = OUTLINED_FUNCTION_65_0();
        OUTLINED_FUNCTION_102(v42);
        OUTLINED_FUNCTION_18_10();
        _os_log_impl(v43, v44, v45, v46, v47, 2u);
        OUTLINED_FUNCTION_35();
      }

      swift_task_alloc();
      OUTLINED_FUNCTION_25();
      *(v0 + 184) = v48;
      *v48 = v49;
      OUTLINED_FUNCTION_38_7(v48);

      return CallingIntentContactNeedsDisambiguationFlowStrategy.makePromptForForeignEmergencyDisambiguation(disambiguationItems:outputGenerationManifest:)();
    }
  }

  else
  {
    v32 = *(v0 + 32);
    v33 = type metadata accessor for SiriKitDisambiguationItemPair();
    OUTLINED_FUNCTION_13_2(v33);
    v36 = v32 + ((*(v34 + 80) + 32) & ~*(v34 + 80)) + *(v35 + 72) * v14;
    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    *(v0 + 176) = v37;
    *v37 = v38;
    v39 = OUTLINED_FUNCTION_39_10();

    return closure #1 in CallingIntentContactNeedsDisambiguationFlowStrategy.makePromptForEmergencyNeedsDisambiguation(app:disambiguationItems:nlContextUpdate:)(v39, v36, v40, v41);
  }
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_2_5();
  *v3 = v2;
  v5 = *(v4 + 184);
  v6 = *(v4 + 168);
  v7 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v8 = v7;
  *(v9 + 192) = v0;

  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v10, v11, v12);
}

{
  OUTLINED_FUNCTION_23_0();
  v1 = v0[14];
  v3 = v0[12];
  v2 = v0[13];
  v5 = v0[8];
  v4 = v0[9];
  (*(v0[16] + 8))(v0[17], v0[15]);

  OUTLINED_FUNCTION_8_1();

  return v6();
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_2_5();
  *v3 = v2;
  v5 = *(v4 + 200);
  v6 = *(v4 + 168);
  v7 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v8 = v7;
  *(v9 + 208) = v0;

  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v10, v11, v12);
}

{
  OUTLINED_FUNCTION_23_0();
  (*(v0[16] + 8))(v0[17], v0[15]);
  v1 = v0[24];
  OUTLINED_FUNCTION_145();

  OUTLINED_FUNCTION_11();

  return v2();
}

{
  OUTLINED_FUNCTION_23_0();
  (*(v0[16] + 8))(v0[17], v0[15]);
  v1 = v0[26];
  OUTLINED_FUNCTION_145();

  OUTLINED_FUNCTION_11();

  return v2();
}

uint64_t closure #1 in CallingIntentContactNeedsDisambiguationFlowStrategy.makePromptForEmergencyNeedsDisambiguation(app:disambiguationItems:nlContextUpdate:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  *(v4 + 200) = a2;
  *(v4 + 208) = a4;
  *(v4 + 401) = a3;
  *(v4 + 192) = a1;
  v5 = type metadata accessor for SiriKitDisambiguationItemPair();
  *(v4 + 216) = v5;
  v6 = *(v5 - 8);
  *(v4 + 224) = v6;
  v7 = *(v6 + 64) + 15;
  *(v4 + 232) = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
  *(v4 + 240) = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  *(v4 + 248) = swift_task_alloc();
  v10 = type metadata accessor for DisambiguationItemWithDirectInvocationModel(0);
  *(v4 + 256) = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  *(v4 + 264) = swift_task_alloc();
  v12 = type metadata accessor for UUID();
  *(v4 + 272) = v12;
  v13 = *(v12 - 8);
  *(v4 + 280) = v13;
  v14 = *(v13 + 64) + 15;
  *(v4 + 288) = swift_task_alloc();
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR) - 8) + 64) + 15;
  *(v4 + 296) = swift_task_alloc();

  return _swift_task_switch(closure #1 in CallingIntentContactNeedsDisambiguationFlowStrategy.makePromptForEmergencyNeedsDisambiguation(app:disambiguationItems:nlContextUpdate:), 0, 0);
}

void closure #1 in CallingIntentContactNeedsDisambiguationFlowStrategy.makePromptForEmergencyNeedsDisambiguation(app:disambiguationItems:nlContextUpdate:)()
{
  v1 = *(v0 + 200);
  SiriKitDisambiguationItemPair.rawItem.getter();
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INPerson, INPerson_ptr);
  if ((swift_dynamicCast() & 1) == 0)
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2();
    }

    v24 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_9_0(v24, static Logger.siriPhone);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_8_0(v26))
    {
      v27 = OUTLINED_FUNCTION_65_0();
      OUTLINED_FUNCTION_11_1(v27);
      OUTLINED_FUNCTION_14_1(&dword_0, v28, v29, "#CallingIntentContactNeedsDisambiguationFlowStrategy rawItem is of wrong type. Skipping.");
      OUTLINED_FUNCTION_12_3();
    }

    goto LABEL_45;
  }

  v2 = *(v0 + 200);
  v3 = *(v0 + 184);
  *(v0 + 304) = v3;
  SiriKitDisambiguationItemPair.formattedItem.getter();
  v4 = SiriKitDisambiguationItem.directInvocation.getter();
  *(v0 + 312) = v4;

  if (!v4)
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2();
    }

    v30 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_9_0(v30, static Logger.siriPhone);
    v25 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_51_0(v31))
    {
      v32 = OUTLINED_FUNCTION_65_0();
      OUTLINED_FUNCTION_102(v32);
      OUTLINED_FUNCTION_18_10();
      _os_log_impl(v33, v34, v35, v36, v37, 2u);
      OUTLINED_FUNCTION_35();
    }

LABEL_44:

LABEL_45:
    goto LABEL_46;
  }

  v5 = [v3 personHandle];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 value];

    if (v7)
    {
      v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v9 = v8;

      v10 = HIBYTE(v9) & 0xF;
      if ((v9 & 0x2000000000000000) == 0)
      {
        v10 = v6 & 0xFFFFFFFFFFFFLL;
      }

      if (v10)
      {
        goto LABEL_11;
      }
    }

    v6 = 0;
  }

  v9 = 0;
LABEL_11:
  *(v0 + 320) = v6;
  *(v0 + 328) = v9;
  v11 = *(v0 + 200);
  SiriKitDisambiguationItemPair.formattedItem.getter();
  v12 = SiriKitDisambiguationItem.components.getter();

  v13 = specialized Array.count.getter(v12);

  SiriKitDisambiguationItemPair.formattedItem.getter();
  v14 = SiriKitDisambiguationItem.components.getter();

  if (v13 > 1)
  {
    OUTLINED_FUNCTION_82_0();
    if ((v14 & 0xC000000000000001) != 0)
    {
      OUTLINED_FUNCTION_151();
    }

    else
    {
      v38 = *(v14 + 32);
    }

    v39 = *(v0 + 200);

    v18 = SiriKitDisambiguationItemComponent.print.getter();
    v23 = v40;

    SiriKitDisambiguationItemPair.formattedItem.getter();
    v41 = SiriKitDisambiguationItem.components.getter();

    OUTLINED_FUNCTION_82_0();
    if ((v41 & 0xC000000000000001) != 0)
    {
      OUTLINED_FUNCTION_151();
    }

    else
    {
      v42 = *(v41 + 32);
    }

    v43 = *(v0 + 200);

    v21 = SiriKitDisambiguationItemComponent.speak.getter();
    v22 = v44;

    SiriKitDisambiguationItemPair.formattedItem.getter();
    v45 = SiriKitDisambiguationItem.components.getter();

    OUTLINED_FUNCTION_82_0();
    if ((v45 & 0xC000000000000001) != 0)
    {
      OUTLINED_FUNCTION_151();
    }

    else
    {
      v46 = *(v45 + 32);
    }

    v47 = *(v0 + 200);

    v20 = SiriKitDisambiguationItemComponent.printBlue.getter();

    SiriKitDisambiguationItemPair.formattedItem.getter();
    v48 = SiriKitDisambiguationItem.components.getter();

    specialized Array._checkSubscript(_:wasNativeTypeChecked:)(1, (v48 & 0xC000000000000001) == 0, v48);
    if ((v48 & 0xC000000000000001) != 0)
    {
      specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v49 = *(v48 + 40);
    }

LABEL_32:
    *(v0 + 352) = v18;
    *(v0 + 360) = v23;
    *(v0 + 336) = v21;
    *(v0 + 344) = v22;
    *(v0 + 402) = v20 & 1;
    v50 = *(v0 + 401);

    v51 = SiriKitDisambiguationItemComponent.print.getter();
    v53 = v52;

    *(v0 + 368) = v53;
    *(v0 + 376) = v51;
    if (v50)
    {
      v54 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v54 & 1) == 0)
      {
        v135 = *(v0 + 352);
        HIDWORD(v136) = *(v0 + 402);
        v55 = *(v0 + 312);
        v56 = *(v0 + 280);
        v57 = *(v0 + 264);
        v132 = *(v0 + 288);
        v133 = *(v0 + 272);
        v142 = *(v0 + 256);
        v145 = *(v0 + 360);
        v137 = *(v0 + 248);
        v138 = *(v0 + 240);
        v139 = *(v0 + 344);
        v58 = *(v0 + 208);
        v59 = objc_opt_self();
        v60 = v58[7];
        __swift_project_boxed_opaque_existential_1(v58 + 3, v58[6]);
        OUTLINED_FUNCTION_93_1();
        v61 = OUTLINED_FUNCTION_129();
        v62(v61);
        v63 = *(v0 + 48);
        __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
        OUTLINED_FUNCTION_0();
        v64 = DeviceState.asInvocationContext.getter();
        v134 = [v59 runSiriKitExecutorCommandWithContext:v64 payload:v55];

        __swift_destroy_boxed_opaque_existential_1((v0 + 16));
        UUID.init()();
        v65 = v142[5];
        *(v0 + 88) = 0;
        *(v0 + 96) = 0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
        Loggable.init(wrappedValue:)();
        v131 = v142[8];
        *(v0 + 104) = 0;
        *(v0 + 112) = 0;
        Loggable.init(wrappedValue:)();
        (*(v56 + 16))(v57, v132, v133);

        v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSSgGMd, &_s10SnippetKit8LoggableVySSSgGMR);
        OUTLINED_FUNCTION_23_1(v66);
        v68 = *(v67 + 8);
        v68(v57 + v65, v66);
        *(v0 + 120) = v135;
        *(v0 + 128) = v145;
        Loggable.init(wrappedValue:)();
        v69 = v142[7];
        *(v0 + 400) = BYTE4(v136);
        Loggable.init(wrappedValue:)();
        v68(v57 + v131, v66);
        *(v0 + 136) = v51;
        *(v0 + 144) = v53;
        Loggable.init(wrappedValue:)();
        v70 = v142[9];
        type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SAIntentGroupRunSiriKitExecutor, SAIntentGroupRunSiriKitExecutor_ptr);
        v143 = v134;
        CodableAceObject.init(wrappedValue:)();
        Loggable.init(wrappedValue:)();
        if (v139)
        {
          v71 = *(v0 + 344);

          v72 = *(v0 + 336);
        }

        else
        {
          v108 = *(v0 + 360);
          v109 = v108 == 0;
          if (v108)
          {
            v72 = *(v0 + 352);
          }

          else
          {
            v72 = 0;
          }

          if (v109)
          {
            v71 = 0xE000000000000000;
          }

          else
          {
            v71 = v145;
          }
        }

        v111 = *(v0 + 320);
        v110 = *(v0 + 328);
        v112 = *(v0 + 304);
        v113 = *(v0 + 312);
        v114 = *(v0 + 280);
        v141 = *(v0 + 288);
        v116 = *(v0 + 264);
        v115 = *(v0 + 272);
        v117 = *(v0 + 256);
        v148 = *(v0 + 192);
        v118 = *(v117 + 24);
        *(v0 + 152) = v72;
        *(v0 + 160) = v71;
        Loggable.init(wrappedValue:)();
        v119 = *(v117 + 40);
        *(v0 + 168) = v111;
        *(v0 + 176) = v110;
        Loggable.init(wrappedValue:)();

        v128 = OUTLINED_FUNCTION_94_1(v120, v121, v122, v123, v124, v125, v126, v127, v130, v131, v132, v133, v134, v135, v136, v137, v138, v141);
        v129(v128);
        OUTLINED_FUNCTION_3_26();
        outlined init with take of PhoneRRTarget(v116, v148);
LABEL_46:
        v103 = OUTLINED_FUNCTION_37_10();
        __swift_storeEnumTagSinglePayload(v103, v104, 1, v105);

        OUTLINED_FUNCTION_8_1();
        OUTLINED_FUNCTION_138();

        __asm { BRAA            X1, X16 }
      }
    }

    else
    {
    }

    v73 = *(v0 + 296);
    v74 = *(*(v0 + 208) + 176);
    String.toSpeakableString.getter();
    type metadata accessor for SpeakableString();
    OUTLINED_FUNCTION_23_3();
    __swift_storeEnumTagSinglePayload(v75, v76, v77, v78);
    v79 = *(*v74 + class metadata base offset for PhoneCallDisplayTextCATsSimple + 40);
    OUTLINED_FUNCTION_24_5();
    v146 = v80 + *v80;
    v82 = *(v81 + 4);
    v83 = swift_task_alloc();
    *(v0 + 384) = v83;
    *v83 = v0;
    v83[1] = closure #1 in CallingIntentContactNeedsDisambiguationFlowStrategy.makePromptForEmergencyNeedsDisambiguation(app:disambiguationItems:nlContextUpdate:);
    v84 = *(v0 + 296);
    OUTLINED_FUNCTION_138();

    __asm { BRAA            X1, X16 }
  }

  v15 = specialized Array.count.getter(v14);

  if (v15 >= 1)
  {
    v16 = *(v0 + 200);
    v17 = SiriKitDisambiguationItemPair.formattedItem.getter();
    SiriKitDisambiguationItem.components.getter();
    OUTLINED_FUNCTION_40_0();

    v18 = v17 & 0xC000000000000001;
    OUTLINED_FUNCTION_82_0();
    if ((v17 & 0xC000000000000001) != 0)
    {
      OUTLINED_FUNCTION_151();
      v20 = 0;
      v21 = 0;
      v22 = 0;
      v18 = 0;
    }

    else
    {
      v19 = *(v17 + 32);

      v20 = 0;
      v21 = 0;
      v22 = 0;
    }

    v23 = 0;
    goto LABEL_32;
  }

  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2();
  }

  v88 = *(v0 + 224);
  v87 = *(v0 + 232);
  v89 = *(v0 + 216);
  v90 = *(v0 + 200);
  v91 = type metadata accessor for Logger();
  __swift_project_value_buffer(v91, static Logger.siriPhone);
  (*(v88 + 16))(v87, v90, v89);
  v92 = Logger.logObject.getter();
  v93 = static os_log_type_t.error.getter();
  v94 = os_log_type_enabled(v92, v93);
  v96 = *(v0 + 224);
  v95 = *(v0 + 232);
  v97 = *(v0 + 216);
  if (!v94)
  {

    (*(v96 + 8))(v95, v97);
    goto LABEL_46;
  }

  v98 = OUTLINED_FUNCTION_42();
  v147 = OUTLINED_FUNCTION_36();
  v149 = v147;
  *v98 = 136315138;
  v144 = v92;
  v99 = SiriKitDisambiguationItemPair.formattedItem.getter();
  v140 = SiriKitDisambiguationItem.description.getter();
  v101 = v100;

  (*(v96 + 8))(v95, v97);
  getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v140, v101, &v149);
  OUTLINED_FUNCTION_109();

  *(v98 + 4) = v99;
  v25 = v144;
  __swift_destroy_boxed_opaque_existential_1(v147);
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_26_0();

  goto LABEL_44;
}

uint64_t closure #1 in CallingIntentContactNeedsDisambiguationFlowStrategy.makePromptForEmergencyNeedsDisambiguation(app:disambiguationItems:nlContextUpdate:)()
{
  OUTLINED_FUNCTION_27();
  v3 = v2;
  OUTLINED_FUNCTION_28();
  v5 = v4;
  OUTLINED_FUNCTION_6();
  *v6 = v5;
  v8 = *(v7 + 384);
  v9 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v10 = v9;

  if (v0)
  {
    v11 = v5[37];

    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v11, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  }

  else
  {
    v12 = v5[46];
    v13 = v5[37];
    v5[49] = v3;
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v13, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  }

  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v14, v15, v16);
}

uint64_t closure #2 in CallingIntentContactNeedsDisambiguationFlowStrategy.makePromptForEmergencyNeedsDisambiguation(app:disambiguationItems:nlContextUpdate:)(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for ResponseMode();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v5 = type metadata accessor for ResponseType();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v15 - v12;
  OutputGenerationManifest.canUseServerTTS.setter();
  OutputGenerationManifest.listenAfterSpeaking.setter();
  _s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgWOcTm_0(a2, v13, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  OutputGenerationManifest.nlContextUpdate.setter();
  (*(v6 + 104))(v9, enum case for ResponseType.disambiguation(_:), v5);
  OutputGenerationManifest.responseType.setter();
  static ResponseMode.voiceForward.getter();
  return OutputGenerationManifest.responseMode.setter();
}

uint64_t CallingIntentContactNeedsDisambiguationFlowStrategy.makePromptForForeignEmergencyDisambiguation(disambiguationItems:outputGenerationManifest:)()
{
  OUTLINED_FUNCTION_15();
  v1[14] = v2;
  v1[15] = v0;
  v1[12] = v3;
  v1[13] = v4;
  v5 = type metadata accessor for PhoneError();
  v1[16] = v5;
  OUTLINED_FUNCTION_21(v5);
  v7 = *(v6 + 64);
  v1[17] = OUTLINED_FUNCTION_45();
  v8 = type metadata accessor for OutputGenerationManifest();
  v1[18] = v8;
  OUTLINED_FUNCTION_13_2(v8);
  v1[19] = v9;
  v11 = *(v10 + 64);
  v1[20] = OUTLINED_FUNCTION_45();
  v12 = type metadata accessor for PhoneSnippetDataModels();
  v1[21] = v12;
  OUTLINED_FUNCTION_21(v12);
  v14 = *(v13 + 64);
  v1[22] = OUTLINED_FUNCTION_45();
  v15 = type metadata accessor for ForeignEmergencyCallDisambiguationModel(0);
  v1[23] = v15;
  OUTLINED_FUNCTION_21(v15);
  v17 = *(v16 + 64);
  v1[24] = OUTLINED_FUNCTION_45();
  v18 = type metadata accessor for Locale();
  v1[25] = v18;
  OUTLINED_FUNCTION_13_2(v18);
  v1[26] = v19;
  v21 = *(v20 + 64);
  v1[27] = OUTLINED_FUNCTION_45();
  v22 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v22, v23, v24);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_2_5();
  *v3 = v2;
  v5 = *(v4 + 248);
  *v3 = *v1;
  *(v2 + 256) = v6;
  *(v2 + 264) = v0;

  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v7, v8, v9);
}

{
  OUTLINED_FUNCTION_27();
  v3 = v2;
  OUTLINED_FUNCTION_28();
  v5 = v4;
  OUTLINED_FUNCTION_6();
  *v6 = v5;
  v8 = *(v7 + 280);
  v9 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v10 = v9;
  v5[36] = v0;

  if (!v0)
  {
    v11 = v5[34];
    v12 = v5[29];

    v5[37] = v3;
  }

  OUTLINED_FUNCTION_19_5();

  return _swift_task_switch(v13, v14, v15);
}

{
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_76_1();
  v40 = v0[32];
  v41 = v0[37];
  v1 = v0[23];
  v2 = v0[24];
  v3 = v0[22];
  v5 = v0[19];
  v4 = v0[20];
  v39 = v0[18];
  v6 = v0[15];
  v37 = v0[21];
  v38 = v0[14];
  v7 = v0[13];
  specialized BidirectionalCollection.last.getter(v7, v2);
  v8 = v2 + v1[5];
  specialized Collection.first.getter(v7);
  v9 = v6[7];
  __swift_project_boxed_opaque_existential_1(v6 + 3, v6[6]);
  v10 = *(v9 + 56);
  v11 = OUTLINED_FUNCTION_109();
  v13 = *v12(v11, v9);
  v14 = (*(v13 + 272))();

  v15 = (v2 + v1[8]);
  *v15 = 0xD00000000000001ELL;
  v15[1] = 0x8000000000456AC0;
  v16 = (v2 + v1[6]);
  *v16 = 0;
  v16[1] = 0xE000000000000000;
  *(v2 + v1[7]) = v14 & 1;
  outlined init with copy of LocalEmergencyCallDisambiguationModel(v2, v3);
  swift_storeEnumTagMultiPayload();
  (*(v5 + 16))(v4, v38, v39);
  OutputGenerationManifest.responseViewId.setter();
  OutputGenerationManifest.printSupportingDialogInDisplayModes.setter();
  v17 = v6[27];
  __swift_project_boxed_opaque_existential_1(v6 + 23, v6[26]);
  v0[10] = v37;
  OUTLINED_FUNCTION_52_5();
  v0[11] = lazy protocol witness table accessor for type Input and conformance Input(v18, v19);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 7);
  OUTLINED_FUNCTION_53_9(boxed_opaque_existential_1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v21 = swift_allocObject();
  v0[38] = v21;
  *(v21 + 16) = xmmword_427BB0;
  *(v21 + 32) = v40;
  *(v21 + 40) = v41;
  v22 = async function pointer to dispatch thunk of ResponseGenerating.makeResponseOutput(conversationModel:dialog:outputGenerationManifest:)[1];
  v23 = v40;
  v24 = v41;
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[39] = v25;
  *v25 = v26;
  v25[1] = CallingIntentContactNeedsDisambiguationFlowStrategy.makePromptForForeignEmergencyDisambiguation(disambiguationItems:outputGenerationManifest:);
  v27 = v0[20];
  v28 = v0[12];
  OUTLINED_FUNCTION_31_0();

  return dispatch thunk of ResponseGenerating.makeResponseOutput(conversationModel:dialog:outputGenerationManifest:)(v29, v30, v31, v32, v33, v34);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  v2 = v1;
  OUTLINED_FUNCTION_6();
  *v3 = v2;
  v5 = *(v4 + 312);
  v6 = *(v4 + 304);
  v7 = *v0;
  OUTLINED_FUNCTION_4_2();
  *v8 = v7;

  __swift_destroy_boxed_opaque_existential_1((v2 + 56));
  v9 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v9, v10, v11);
}

{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_23_0();
  v2 = v0[28];
  v1 = v0[29];

  v3 = v0[33];
  OUTLINED_FUNCTION_111();

  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_65_1();

  return v5(v4, v5, v6, v7, v8, v9, v10, v11);
}

{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_23_0();
  v1 = v0[34];
  v2 = v0[32];
  v4 = v0[28];
  v3 = v0[29];

  v5 = v0[36];
  OUTLINED_FUNCTION_111();

  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_65_1();

  return v7(v6, v7, v8, v9, v10, v11, v12, v13);
}

uint64_t CallingIntentContactNeedsDisambiguationFlowStrategy.makePromptForForeignEmergencyDisambiguation(disambiguationItems:outputGenerationManifest:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_136();
  a27 = v29;
  a28 = v30;
  a26 = v28;
  v31 = v28[15];
  OUTLINED_FUNCTION_2_0();
  v83 = v31;
  v33 = (*(v32 + 320))();
  v34 = specialized Array.count.getter(v33);
  for (i = 0; v34 != i; ++i)
  {
    if ((v33 & 0xC000000000000001) != 0)
    {
      v36 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (i >= *(&dword_10 + (v33 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_21;
      }

      v36 = *(v33 + 8 * i + 32);
    }

    v37 = v36;
    v28[28] = v36;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    v38 = [v36 personHandle];
    if (v38)
    {
      v39 = v38;
      v40 = [v38 emergencyType];

      if (v40 == &dword_0 + 2)
      {
        v67 = v28[15];

        type metadata accessor for SirikitDeviceState();
        (*(*v67 + 208))(&a12);
        v28[29] = SirikitDeviceState.__allocating_init(from:)();
        v28[30] = v67[14];
        OUTLINED_FUNCTION_2_0();
        v82 = (v68 + class metadata base offset for StartCallCATsSimple + 816);
        v69 = *v82;
        OUTLINED_FUNCTION_24_5();
        v84 = v70 + *v70;
        v72 = *(v71 + 4);
        v73 = swift_task_alloc();
        v28[31] = v73;
        *v73 = v28;
        v73[1] = CallingIntentContactNeedsDisambiguationFlowStrategy.makePromptForForeignEmergencyDisambiguation(disambiguationItems:outputGenerationManifest:);
        OUTLINED_FUNCTION_21_7();

        return v74(v74, v75, v76, v77, v78, v79, v80, v81, a9, v82, v84, a12, a13, a14, a15, a16, a17, a18, a19, a20);
      }
    }
  }

  if (one-time initialization token for siriPhone == -1)
  {
    goto LABEL_12;
  }

LABEL_22:
  OUTLINED_FUNCTION_6_2();
LABEL_12:
  v41 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_9_0(v41, static Logger.siriPhone);
  v42 = Logger.logObject.getter();
  v43 = static os_log_type_t.error.getter();
  if (OUTLINED_FUNCTION_8_0(v43))
  {
    v44 = OUTLINED_FUNCTION_65_0();
    OUTLINED_FUNCTION_11_1(v44);
    OUTLINED_FUNCTION_14_1(&dword_0, v45, v46, "#CallingIntentContactNeedsDisambiguationFlowStrategy Foreign emergency check should guarantee the presence of a nonLocal emergencyType INPerson");
    OUTLINED_FUNCTION_12_3();
  }

  v48 = v28[16];
  v47 = v28[17];

  OUTLINED_FUNCTION_55();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_6_21();
  lazy protocol witness table accessor for type Input and conformance Input(v49, v50);
  OUTLINED_FUNCTION_147();
  PhoneError.logged()(v51);
  OUTLINED_FUNCTION_2_32();
  _s27PhoneCallFlowDelegatePlugin0A5ErrorOWOhTm_1(v47, v52);
  swift_willThrow();
  v53 = v28[27];
  v54 = v28[24];
  v55 = v28[22];
  v56 = v28[20];
  v57 = v28[17];

  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_21_7();

  return v59(v58, v59, v60, v61, v62, v63, v64, v65, a9, a10, v83, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t CallingIntentContactNeedsDisambiguationFlowStrategy.makePromptForForeignEmergencyDisambiguation(disambiguationItems:outputGenerationManifest:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_135();
  v15 = v14[30];
  v17 = v14[27];
  v16 = v14[28];
  v18 = v14[26];
  v37 = v14[25];
  v39 = v14[29];
  type metadata accessor for PhonePerson(0);

  v19 = v16;
  static Device.current.getter();
  v20 = v14[6];
  __swift_project_boxed_opaque_existential_1(v14 + 2, v14[5]);
  OUTLINED_FUNCTION_129();
  dispatch thunk of DeviceState.siriLocale.getter();
  __swift_destroy_boxed_opaque_existential_1(v14 + 2);
  v14[34] = static PhonePerson.make(phonePerson:options:locale:)(v16, 0, v17);

  (*(v18 + 8))(v17, v37);
  v21 = *(*v15 + class metadata base offset for StartCallCATsSimple + 160);
  v36 = *v15 + class metadata base offset for StartCallCATsSimple + 160;
  OUTLINED_FUNCTION_24_5();
  v38 = v22 + *v22;
  v24 = *(v23 + 4);
  v25 = swift_task_alloc();
  v14[35] = v25;
  *v25 = v14;
  v25[1] = CallingIntentContactNeedsDisambiguationFlowStrategy.makePromptForForeignEmergencyDisambiguation(disambiguationItems:outputGenerationManifest:);
  v26 = v14[30];
  OUTLINED_FUNCTION_15_11();

  return v29(v27, v28, v29, v30, v31, v32, v33, v34, v36, v38, v39, a12, a13, a14);
}

uint64_t CallingIntentContactNeedsDisambiguationFlowStrategy.makePromptForForeignEmergencyDisambiguation(disambiguationItems:outputGenerationManifest:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_24_1();
  v13 = *(v12 + 256);
  v15 = *(v12 + 224);
  v14 = *(v12 + 232);
  v16 = *(v12 + 216);
  v17 = *(v12 + 192);
  v18 = *(v12 + 176);
  v20 = *(v12 + 152);
  v19 = *(v12 + 160);
  v21 = *(v12 + 144);
  v35 = *(v12 + 136);

  v22 = *(v20 + 8);
  v23 = OUTLINED_FUNCTION_123();
  v24(v23);
  OUTLINED_FUNCTION_12_21();
  _s27PhoneCallFlowDelegatePlugin0A5ErrorOWOhTm_1(v18, v25);
  _s27PhoneCallFlowDelegatePlugin0A5ErrorOWOhTm_1(v17, type metadata accessor for ForeignEmergencyCallDisambiguationModel);

  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_16();

  return v27(v26, v27, v28, v29, v30, v31, v32, v33, v35, a10, a11, a12);
}

uint64_t CallingIntentContactNeedsDisambiguationFlowStrategy.makePromptForLocalEmergencyDisambiguation(app:disambiguationItems:outputGenerationManifest:)()
{
  OUTLINED_FUNCTION_15();
  v1[227] = v0;
  v1[221] = v2;
  v1[215] = v3;
  v1[209] = v4;
  v5 = type metadata accessor for OutputGenerationManifest();
  v1[228] = v5;
  OUTLINED_FUNCTION_13_2(v5);
  v1[229] = v6;
  v8 = *(v7 + 64);
  v1[230] = OUTLINED_FUNCTION_45();
  v9 = type metadata accessor for PhoneSnippetDataModels();
  v1[231] = v9;
  OUTLINED_FUNCTION_21(v9);
  v11 = *(v10 + 64);
  v1[232] = OUTLINED_FUNCTION_45();
  v12 = type metadata accessor for LocalEmergencyCallDisambiguationModel(0);
  v1[233] = v12;
  OUTLINED_FUNCTION_21(v12);
  v14 = *(v13 + 64);
  v1[234] = OUTLINED_FUNCTION_45();
  v15 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v15, v16, v17);
}

{
  OUTLINED_FUNCTION_27();
  v1 = v0[227];
  v2 = v1[7];
  __swift_project_boxed_opaque_existential_1(v1 + 3, v1[6]);
  v3 = *(v2 + 8);
  v4 = OUTLINED_FUNCTION_5();
  v5(v4, v2);
  v0[201] = static UserFacingCallingAppUtils.getAppBundleId(preferredCallProvider:deviceState:)(1, v0 + 167);
  v0[202] = v6;
  v0[235] = v6;
  __swift_destroy_boxed_opaque_existential_1(v0 + 167);

  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for DialogExecutionResult, DialogExecutionResult_ptr);
  swift_asyncLet_begin();

  swift_asyncLet_begin();
  v7 = OUTLINED_FUNCTION_62_6();

  return _swift_asyncLet_get_throwing(v7, v8, v9, v0 + 162);
}

{
  v1[236] = v0;
  if (v0)
  {
    return OUTLINED_FUNCTION_0_1(CallingIntentContactNeedsDisambiguationFlowStrategy.makePromptForLocalEmergencyDisambiguation(app:disambiguationItems:outputGenerationManifest:));
  }

  v1[237] = v1[201];
  return OUTLINED_FUNCTION_0_1(CallingIntentContactNeedsDisambiguationFlowStrategy.makePromptForLocalEmergencyDisambiguation(app:disambiguationItems:outputGenerationManifest:));
}

{
  OUTLINED_FUNCTION_79_1();
  OUTLINED_FUNCTION_101();
  v24 = *(v0 + 1880);
  v25 = *(v0 + 1896);
  v1 = *(v0 + 1872);
  v2 = *(v0 + 1864);
  v27 = *(v0 + 1856);
  v28 = *(v0 + 1848);
  v31 = *(v0 + 1840);
  v32 = *(v0 + 1824);
  v3 = *(v0 + 1816);
  v29 = *(v0 + 1832);
  v30 = *(v0 + 1768);
  v23 = *(v0 + 1720);
  v26 = *(v0 + 1576);
  v4 = *(v0 + 1584);
  v6 = v3[6];
  v5 = v3[7];
  __swift_project_boxed_opaque_existential_1(v3 + 3, v6);
  v7 = *(v5 + 56);

  v8 = *v7(v6, v5);
  LOBYTE(v6) = (*(v8 + 272))();

  v9 = (v1 + v2[9]);
  *v9 = 0xD00000000000001CLL;
  v9[1] = 0x8000000000456AE0;
  *v1 = v25;
  *(v1 + 8) = v24;
  *(v1 + 16) = v23;
  *(v1 + 24) = v6 & 1;
  v10 = v2[7];

  UUID.init()();
  v11 = v2[8];
  *(v0 + 1592) = v26;
  *(v0 + 1600) = v4;
  Loggable.init(wrappedValue:)();
  outlined init with copy of LocalEmergencyCallDisambiguationModel(v1, v27);
  swift_storeEnumTagMultiPayload();
  (*(v29 + 16))(v31, v30, v32);
  OutputGenerationManifest.responseViewId.setter();
  outlined init with copy of SignalProviding((v3 + 23), v0 + 1416);
  v12 = *(v0 + 1440);
  *(v0 + 1904) = v12;
  *(v0 + 1920) = __swift_project_boxed_opaque_existential_1((v0 + 1416), v12);
  *(v0 + 1520) = v28;
  OUTLINED_FUNCTION_52_5();
  *(v0 + 1528) = lazy protocol witness table accessor for type Input and conformance Input(v13, v14);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 1496));
  OUTLINED_FUNCTION_53_9(boxed_opaque_existential_1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v16 = swift_allocObject();
  *(v0 + 1928) = v16;
  *(v16 + 16) = xmmword_426260;
  OUTLINED_FUNCTION_42_5();

  return _swift_asyncLet_get_throwing(v17, v18, v19, v20);
}

{
  *(v1 + 1936) = v0;
  if (v0)
  {
    return OUTLINED_FUNCTION_0_1(CallingIntentContactNeedsDisambiguationFlowStrategy.makePromptForLocalEmergencyDisambiguation(app:disambiguationItems:outputGenerationManifest:));
  }

  else
  {
    return OUTLINED_FUNCTION_0_1(CallingIntentContactNeedsDisambiguationFlowStrategy.makePromptForLocalEmergencyDisambiguation(app:disambiguationItems:outputGenerationManifest:));
  }
}

{
  OUTLINED_FUNCTION_15();
  v1 = v0[203];
  *(v0[241] + 32) = v1;
  v2 = async function pointer to dispatch thunk of ResponseGenerating.makeResponseOutput(resultModel:dialog:outputGenerationManifest:)[1];
  v3 = v1;
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[243] = v4;
  *v4 = v5;
  v4[1] = CallingIntentContactNeedsDisambiguationFlowStrategy.makePromptForLocalEmergencyDisambiguation(app:disambiguationItems:outputGenerationManifest:);
  v6 = v0[241];
  v7 = v0[240];
  v8 = v0[239];
  v9 = v0[238];
  v10 = v0[230];
  v11 = v0[209];

  return dispatch thunk of ResponseGenerating.makeResponseOutput(resultModel:dialog:outputGenerationManifest:)(v11, v0 + 187, v6, v10, v9, v8);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  v2 = v1;
  OUTLINED_FUNCTION_6();
  *v3 = v2;
  v5 = *(v4 + 1944);
  v6 = *(v4 + 1928);
  v7 = *v0;
  OUTLINED_FUNCTION_4_2();
  *v8 = v7;

  __swift_destroy_boxed_opaque_existential_1((v2 + 1496));
  v9 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v9, v10, v11);
}

{
  OUTLINED_FUNCTION_15();
  v1 = v0[234];
  v2 = v0[232];
  v3 = OUTLINED_FUNCTION_119_0();
  v4(v3);
  OUTLINED_FUNCTION_12_21();
  _s27PhoneCallFlowDelegatePlugin0A5ErrorOWOhTm_1(v2, v5);
  OUTLINED_FUNCTION_49_4();
  _s27PhoneCallFlowDelegatePlugin0A5ErrorOWOhTm_1(v1, v6);
  __swift_destroy_boxed_opaque_existential_1(v0 + 177);
  v7 = OUTLINED_FUNCTION_62_6();

  return _swift_asyncLet_finish(v7, v8, v9, v0 + 216);
}

{
  return OUTLINED_FUNCTION_0_1(CallingIntentContactNeedsDisambiguationFlowStrategy.makePromptForLocalEmergencyDisambiguation(app:disambiguationItems:outputGenerationManifest:));
}

{
  return _swift_asyncLet_finish(v0 + 16, v0 + 1624, CallingIntentContactNeedsDisambiguationFlowStrategy.makePromptForLocalEmergencyDisambiguation(app:disambiguationItems:outputGenerationManifest:), v0 + 1776);
}

{
  return OUTLINED_FUNCTION_0_1(CallingIntentContactNeedsDisambiguationFlowStrategy.makePromptForLocalEmergencyDisambiguation(app:disambiguationItems:outputGenerationManifest:));
}

{
  OUTLINED_FUNCTION_27();
  v1 = v0[234];
  v2 = v0[232];
  v3 = v0[230];
  v4 = v0[227];

  OUTLINED_FUNCTION_8_1();

  return v5();
}

{
  OUTLINED_FUNCTION_15();
  v1 = *(v0 + 1880);

  v2 = OUTLINED_FUNCTION_62_6();

  return _swift_asyncLet_finish(v2, v3, v4, v0 + 1376);
}

{
  return OUTLINED_FUNCTION_0_1(CallingIntentContactNeedsDisambiguationFlowStrategy.makePromptForLocalEmergencyDisambiguation(app:disambiguationItems:outputGenerationManifest:));
}

{
  return OUTLINED_FUNCTION_70_2(v0 + 16, v0 + 1624, CallingIntentContactNeedsDisambiguationFlowStrategy.makePromptForLocalEmergencyDisambiguation(app:disambiguationItems:outputGenerationManifest:));
}

{
  return OUTLINED_FUNCTION_0_1(CallingIntentContactNeedsDisambiguationFlowStrategy.makePromptForLocalEmergencyDisambiguation(app:disambiguationItems:outputGenerationManifest:));
}

{
  OUTLINED_FUNCTION_27();
  v1 = *(v0 + 1888);
  OUTLINED_FUNCTION_112_0();

  OUTLINED_FUNCTION_11();

  return v2();
}

{
  OUTLINED_FUNCTION_27();
  v1 = v0[241];
  v2 = v0[234];
  v3 = v0[232];
  v4 = OUTLINED_FUNCTION_119_0();
  v5(v4);
  OUTLINED_FUNCTION_12_21();
  _s27PhoneCallFlowDelegatePlugin0A5ErrorOWOhTm_1(v3, v6);
  OUTLINED_FUNCTION_49_4();
  _s27PhoneCallFlowDelegatePlugin0A5ErrorOWOhTm_1(v2, v7);
  *(v1 + 16) = 0;

  __swift_destroy_boxed_opaque_existential_1(v0 + 187);
  __swift_destroy_boxed_opaque_existential_1(v0 + 177);
  v8 = OUTLINED_FUNCTION_62_6();

  return _swift_asyncLet_finish(v8, v9, v10, v0 + 204);
}

{
  return OUTLINED_FUNCTION_0_1(CallingIntentContactNeedsDisambiguationFlowStrategy.makePromptForLocalEmergencyDisambiguation(app:disambiguationItems:outputGenerationManifest:));
}

{
  return _swift_asyncLet_finish(v0 + 16, v0 + 1624, CallingIntentContactNeedsDisambiguationFlowStrategy.makePromptForLocalEmergencyDisambiguation(app:disambiguationItems:outputGenerationManifest:), v0 + 1680);
}

{
  return OUTLINED_FUNCTION_0_1(CallingIntentContactNeedsDisambiguationFlowStrategy.makePromptForLocalEmergencyDisambiguation(app:disambiguationItems:outputGenerationManifest:));
}

{
  OUTLINED_FUNCTION_27();
  v1 = *(v0 + 1936);
  OUTLINED_FUNCTION_112_0();

  OUTLINED_FUNCTION_11();

  return v2();
}

uint64_t implicit closure #1 in CallingIntentContactNeedsDisambiguationFlowStrategy.makePromptForLocalEmergencyDisambiguation(app:disambiguationItems:outputGenerationManifest:)(uint64_t a1, uint64_t a2)
{
  v2[7] = a1;
  v2[8] = a2;
  v3 = type metadata accessor for Locale();
  v2[9] = v3;
  v4 = *(v3 - 8);
  v2[10] = v4;
  v5 = *(v4 + 64) + 15;
  v2[11] = swift_task_alloc();

  return _swift_task_switch(implicit closure #1 in CallingIntentContactNeedsDisambiguationFlowStrategy.makePromptForLocalEmergencyDisambiguation(app:disambiguationItems:outputGenerationManifest:), 0, 0);
}

id implicit closure #1 in CallingIntentContactNeedsDisambiguationFlowStrategy.makePromptForLocalEmergencyDisambiguation(app:disambiguationItems:outputGenerationManifest:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_136();
  v21 = v20[10];
  v48 = *(v20[8] + 112);
  OUTLINED_FUNCTION_2_0();
  v23 = (*(v22 + 320))();
  result = specialized Array.count.getter(v23);
  v52 = result;
  v25 = 0;
  v50 = v23 & 0xC000000000000001;
  v49 = (v21 + 8);
LABEL_2:
  v20[12] = _swiftEmptyArrayStorage;
  while (v52 != v25)
  {
    if (v50)
    {
      result = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v25 >= *(&dword_10 + (v23 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_18;
      }

      result = *(v23 + 8 * v25 + 32);
    }

    v26 = result;
    v27 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      __break(1u);
LABEL_18:
      __break(1u);
      return result;
    }

    v28 = v20[11];
    v29 = v20[9];
    type metadata accessor for PhonePerson(0);
    static Device.current.getter();
    v30 = v20[6];
    __swift_project_boxed_opaque_existential_1(v20 + 2, v20[5]);
    OUTLINED_FUNCTION_5();
    dispatch thunk of DeviceState.siriLocale.getter();
    __swift_destroy_boxed_opaque_existential_1(v20 + 2);
    v31 = static PhonePerson.make(phonePerson:options:locale:)(v26, 0, v28);

    v32 = *v49;
    v33 = OUTLINED_FUNCTION_129();
    result = v34(v33);
    ++v25;
    if (v31)
    {
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      result = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v25 = v27;
      goto LABEL_2;
    }
  }

  v35 = *(*v48 + class metadata base offset for StartCallCATsSimple + 192);
  v51 = *v48 + class metadata base offset for StartCallCATsSimple + 192;
  OUTLINED_FUNCTION_24_5();
  v53 = v36 + *v36;
  v38 = *(v37 + 4);
  v39 = swift_task_alloc();
  v20[13] = v39;
  *v39 = v20;
  v39[1] = implicit closure #1 in CallingIntentContactNeedsDisambiguationFlowStrategy.makePromptForLocalEmergencyDisambiguation(app:disambiguationItems:outputGenerationManifest:);
  OUTLINED_FUNCTION_21_7();

  return v41(v40, v41, v42, v43, v44, v45, v46, v47, a9, v48, _swiftEmptyArrayStorage, v49, v23 & 0xFFFFFFFFFFFFFF8, v50, v51, v53, _swiftEmptyArrayStorage, a18, a19, a20);
}

uint64_t implicit closure #1 in CallingIntentContactNeedsDisambiguationFlowStrategy.makePromptForLocalEmergencyDisambiguation(app:disambiguationItems:outputGenerationManifest:)()
{
  OUTLINED_FUNCTION_27();
  v3 = v2;
  OUTLINED_FUNCTION_28();
  v5 = v4;
  OUTLINED_FUNCTION_6();
  *v6 = v5;
  v8 = *(v7 + 104);
  v9 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v10 = v9;
  v5[14] = v0;

  if (!v0)
  {
    v11 = v5[12];

    v5[15] = v3;
  }

  OUTLINED_FUNCTION_19_5();

  return _swift_task_switch(v12, v13, v14);
}

{
  OUTLINED_FUNCTION_15();
  v1 = *(v0 + 88);
  **(v0 + 56) = *(v0 + 120);

  OUTLINED_FUNCTION_8_1();

  return v2();
}

{
  OUTLINED_FUNCTION_15();
  v2 = v0[11];
  v1 = v0[12];

  OUTLINED_FUNCTION_11();
  v4 = v0[14];

  return v3();
}

uint64_t implicit closure #2 in CallingIntentContactNeedsDisambiguationFlowStrategy.makePromptForLocalEmergencyDisambiguation(app:disambiguationItems:outputGenerationManifest:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(implicit closure #2 in CallingIntentContactNeedsDisambiguationFlowStrategy.makePromptForLocalEmergencyDisambiguation(app:disambiguationItems:outputGenerationManifest:), 0, 0);
}

uint64_t implicit closure #2 in CallingIntentContactNeedsDisambiguationFlowStrategy.makePromptForLocalEmergencyDisambiguation(app:disambiguationItems:outputGenerationManifest:)()
{
  OUTLINED_FUNCTION_27();
  v1 = *(*(v0 + 24) + 176);
  OUTLINED_FUNCTION_2_0();
  v3 = *(v2 + class metadata base offset for PhoneCallDisplayTextCATsSimple + 168);
  OUTLINED_FUNCTION_24_5();
  v9 = (v4 + *v4);
  v6 = *(v5 + 4);
  v7 = swift_task_alloc();
  *(v0 + 32) = v7;
  *v7 = v0;
  v7[1] = implicit closure #2 in CallingIntentContactNeedsDisambiguationFlowStrategy.makePromptForLocalEmergencyDisambiguation(app:disambiguationItems:outputGenerationManifest:);

  return v9();
}

{
  OUTLINED_FUNCTION_27();
  v3 = v2;
  OUTLINED_FUNCTION_28();
  v5 = v4;
  OUTLINED_FUNCTION_6();
  *v6 = v5;
  v8 = *(v7 + 32);
  v9 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v10 = v9;

  if (v0)
  {
    v11 = *(v9 + 8);

    return v11();
  }

  else
  {
    *(v5 + 40) = v3;
    OUTLINED_FUNCTION_91_1();

    return _swift_task_switch(v13, v14, v15);
  }
}

{
  OUTLINED_FUNCTION_27();
  v1 = *(v0 + 40);
  v2 = *(v0 + 16);
  v3 = dispatch thunk of LabelExecutionResult.subscript.getter();
  v5 = v4;

  *v2 = v3;
  v2[1] = v5;
  OUTLINED_FUNCTION_8_1();

  return v6();
}

void *CallingIntentContactNeedsDisambiguationFlowStrategy.__allocating_init(delegate:startCallCATs:startCallCatPatterns:startCallCATsSimple:phoneCallCommonCATs:phoneCallCommonCATsSimple:phoneCallCommonCatPatterns:phoneCallDisplayTextCATsSimple:responseGenerator:siriKitEventSender:appInfoBuilder:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t a8, uint64_t *a9, uint64_t *a10, uint64_t *a11)
{
  v18 = *(v11 + 48);
  v19 = *(v11 + 52);
  swift_allocObject();
  v20 = OUTLINED_FUNCTION_130_0();
  return CallingIntentContactNeedsDisambiguationFlowStrategy.init(delegate:startCallCATs:startCallCatPatterns:startCallCATsSimple:phoneCallCommonCATs:phoneCallCommonCATsSimple:phoneCallCommonCatPatterns:phoneCallDisplayTextCATsSimple:responseGenerator:siriKitEventSender:appInfoBuilder:)(v20, v21, a3, a4, a5, a6, a7, a8, a9, a10, a11);
}

void *CallingIntentContactNeedsDisambiguationFlowStrategy.init(delegate:startCallCATs:startCallCatPatterns:startCallCATsSimple:phoneCallCommonCATs:phoneCallCommonCATsSimple:phoneCallCommonCatPatterns:phoneCallDisplayTextCATsSimple:responseGenerator:siriKitEventSender:appInfoBuilder:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t a8, uint64_t *a9, uint64_t *a10, uint64_t *a11)
{
  *(v11 + direct field offset for CallingIntentContactNeedsDisambiguationFlowStrategy.personsToDisambiguate) = _swiftEmptyArrayStorage;
  *(v11 + direct field offset for CallingIntentContactNeedsDisambiguationFlowStrategy.selectedPerson) = 0;
  *(v11 + direct field offset for CallingIntentContactNeedsDisambiguationFlowStrategy.requiresReprompt) = 0;
  *(v11 + direct field offset for CallingIntentContactNeedsDisambiguationFlowStrategy.shouldClearContext) = 0;
  outlined init with copy of SignalProviding(a3, v26);
  outlined init with copy of SignalProviding(a7, v25);
  outlined init with copy of SignalProviding(a9, v24);
  outlined init with copy of SignalProviding(a10, v23);
  outlined init with copy of SignalProviding(a11, v22);
  v17 = CallingIntentBaseFlowStrategy.init(delegate:startCallCATs:startCallCatPatterns:startCallCATsSimple:phoneCallCommonCATs:phoneCallCommonCATsSimple:phoneCallCommonCatPatterns:phoneCallDisplayTextCATsSimple:responseGenerator:siriKitEventSender:appInfoBuilder:)(a1, a2, v26, a4, a5, a6, v25, a8, v24, v23, v22);
  __swift_destroy_boxed_opaque_existential_1(a11);
  __swift_destroy_boxed_opaque_existential_1(a10);
  __swift_destroy_boxed_opaque_existential_1(a9);
  __swift_destroy_boxed_opaque_existential_1(a7);
  __swift_destroy_boxed_opaque_existential_1(a3);
  return v17;
}

void CallingIntentContactNeedsDisambiguationFlowStrategy.__ivar_destroyer()
{
  v1 = *(v0 + direct field offset for CallingIntentContactNeedsDisambiguationFlowStrategy.personsToDisambiguate);

  v2 = *(v0 + direct field offset for CallingIntentContactNeedsDisambiguationFlowStrategy.selectedPerson);
}

uint64_t protocol witness for NeedsDisambiguationFlowStrategyAsync.paginationStyle(resolveRecord:) in conformance CallingIntentContactNeedsDisambiguationFlowStrategy<A>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 264);
  v5 = *(a2 + 272);
  v7 = type metadata accessor for CallingIntentContactNeedsDisambiguationFlowStrategy();

  return NeedsDisambiguationFlowStrategyAsync.paginationStyle(resolveRecord:)(a1, v7, a3);
}

uint64_t protocol witness for NeedsDisambiguationFlowStrategyAsync.makeDisambiguationItemContainer(resolveRecord:) in conformance CallingIntentContactNeedsDisambiguationFlowStrategy<A>(uint64_t a1, uint64_t a2)
{
  *(v3 + 16) = a1;
  v5 = *(**v2 + 440);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v3 + 24) = v7;
  *v7 = v3;
  v7[1] = protocol witness for NeedsDisambiguationFlowStrategyAsync.makeDisambiguationItemContainer(resolveRecord:) in conformance CallingIntentContactNeedsDisambiguationFlowStrategy<A>;

  return v9(a2);
}

uint64_t protocol witness for NeedsDisambiguationFlowStrategyAsync.makeDisambiguationItemContainer(resolveRecord:) in conformance CallingIntentContactNeedsDisambiguationFlowStrategy<A>()
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

  v11 = *(v9 + 8);

  return v11();
}

uint64_t protocol witness for NeedsDisambiguationFlowStrategyAsync.parseDisambiguationResult(input:paginatedItems:resolveRecord:) in conformance CallingIntentContactNeedsDisambiguationFlowStrategy<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(**v4 + 448);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = closure #1 in ActionableCallControlFlow.execute();

  return v14(a1, a2, a3, a4);
}

uint64_t protocol witness for NeedsDisambiguationFlowStrategyAsync.makePromptForDisambiguation(paginatedItems:resolveRecord:) in conformance CallingIntentContactNeedsDisambiguationFlowStrategy<A>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(**v3 + 456);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = closure #2 in ActionableCallControlFlow.execute();

  return v12(a1, a2, a3);
}

uint64_t protocol witness for NeedsDisambiguationFlowStrategyAsync.makeRepromptOnEmptyParse(paginatedItems:resolveRecord:) in conformance CallingIntentContactNeedsDisambiguationFlowStrategy<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = async function pointer to NeedsDisambiguationFlowStrategyAsync.makeRepromptOnEmptyParse(paginatedItems:resolveRecord:)[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  v13 = *(a4 + 264);
  v14 = *(a4 + 272);
  v15 = type metadata accessor for CallingIntentContactNeedsDisambiguationFlowStrategy();
  *v12 = v5;
  v12[1] = closure #1 in ActionableCallControlFlow.execute();

  return NeedsDisambiguationFlowStrategyAsync.makeRepromptOnEmptyParse(paginatedItems:resolveRecord:)(a1, a2, a3, v15, a5);
}

uint64_t protocol witness for NeedsDisambiguationFlowStrategyAsync.makeRepromptOnLowConfidence(paginatedItems:resolveRecord:) in conformance CallingIntentContactNeedsDisambiguationFlowStrategy<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = async function pointer to NeedsDisambiguationFlowStrategyAsync.makeRepromptOnLowConfidence(paginatedItems:resolveRecord:)[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  v13 = *(a4 + 264);
  v14 = *(a4 + 272);
  v15 = type metadata accessor for CallingIntentContactNeedsDisambiguationFlowStrategy();
  *v12 = v5;
  v12[1] = closure #1 in ActionableCallControlFlow.execute();

  return NeedsDisambiguationFlowStrategyAsync.makeRepromptOnLowConfidence(paginatedItems:resolveRecord:)(a1, a2, a3, v15, a5);
}

uint64_t protocol witness for NeedsDisambiguationFlowStrategyAsync.makePromptForDeviceUnlock(resolveRecord:) in conformance CallingIntentContactNeedsDisambiguationFlowStrategy<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = async function pointer to NeedsDisambiguationFlowStrategyAsync.makePromptForDeviceUnlock(resolveRecord:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  v11 = *(a3 + 264);
  v12 = *(a3 + 272);
  v13 = type metadata accessor for CallingIntentContactNeedsDisambiguationFlowStrategy();
  *v10 = v4;
  v10[1] = closure #1 in ActionableCallControlFlow.execute();

  return NeedsDisambiguationFlowStrategyAsync.makePromptForDeviceUnlock(resolveRecord:)(a1, a2, v13, a4);
}

uint64_t protocol witness for NeedsDisambiguationFlowStrategyAsync.makeHandoffForAuthenticationResponse(resolveRecord:) in conformance CallingIntentContactNeedsDisambiguationFlowStrategy<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = async function pointer to NeedsDisambiguationFlowStrategyAsync.makeHandoffForAuthenticationResponse(resolveRecord:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  v11 = *(a3 + 264);
  v12 = *(a3 + 272);
  v13 = type metadata accessor for CallingIntentContactNeedsDisambiguationFlowStrategy();
  *v10 = v4;
  v10[1] = closure #1 in ActionableCallControlFlow.execute();

  return NeedsDisambiguationFlowStrategyAsync.makeHandoffForAuthenticationResponse(resolveRecord:)(a1, a2, v13, a4);
}

uint64_t protocol witness for NeedsDisambiguationFlowStrategyAsync.pervasiveUseCaseDescription(resolveRecord:) in conformance CallingIntentContactNeedsDisambiguationFlowStrategy<A>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 264);
  v5 = *(a2 + 272);
  v7 = type metadata accessor for CallingIntentContactNeedsDisambiguationFlowStrategy();

  return NeedsDisambiguationFlowStrategyAsync.pervasiveUseCaseDescription(resolveRecord:)(a1, v7, a3);
}

uint64_t protocol witness for ParameterResolutionHandlingAsync.makeFlowCancelledResponse(app:intent:parameter:) in conformance CallingIntentContactNeedsDisambiguationFlowStrategy<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = async function pointer to ParameterResolutionHandlingAsync.makeFlowCancelledResponse(app:intent:parameter:)[1];
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  v15 = *(a5 + 264);
  v16 = *(a5 + 272);
  v17 = type metadata accessor for CallingIntentContactNeedsDisambiguationFlowStrategy();
  *v14 = v6;
  v14[1] = closure #1 in ActionableCallControlFlow.execute();

  return ParameterResolutionHandlingAsync.makeFlowCancelledResponse(app:intent:parameter:)(a1, a2, a3, a4, v17, a6);
}

uint64_t protocol witness for ParameterResolutionHandlingAsync.makeErrorResponse(error:app:intent:parameter:) in conformance CallingIntentContactNeedsDisambiguationFlowStrategy<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = async function pointer to ParameterResolutionHandlingAsync.makeErrorResponse(error:app:intent:parameter:)[1];
  v16 = swift_task_alloc();
  *(v7 + 16) = v16;
  v17 = *(a6 + 264);
  v18 = *(a6 + 272);
  v19 = type metadata accessor for CallingIntentContactNeedsDisambiguationFlowStrategy();
  *v16 = v7;
  v16[1] = closure #1 in ActionableCallControlFlow.execute();

  return ParameterResolutionHandlingAsync.makeErrorResponse(error:app:intent:parameter:)(a1, a2, a3, a4, a5, v19, a7);
}

void outlined consume of ContactDisambiguationPromptResponse?(id a1, unsigned __int8 a2)
{
  if (a2 != 0xFF)
  {
    outlined consume of ContactDisambiguationPromptResponse(a1, a2);
  }
}

void outlined consume of ContactDisambiguationPromptResponse(id a1, unsigned __int8 a2)
{
  if ((a2 | 2) == 3)
  {
  }
}

id outlined copy of ContactDisambiguationPromptResponse(id result, unsigned __int8 a2)
{
  if ((a2 | 2) == 3)
  {
    return result;
  }

  return result;
}

uint64_t _s27PhoneCallFlowDelegatePlugin34AppSelectionSignalsGatheringHelperO23triggerSignalCollection13sharedGlobals8contacts05phoneB8NLIntent05smartfG018eligibleAppsFinder8skIntentyAA06SharedO9Providing_p_SaySo8INPersonCGSgAA0abR0_pAA05SmartfG14FeatureManagerCSgAA012PrefetchableF7Finding_pAA07CallingX0_pSgtFZTf4nnnnenn_nAA08EligiblefV0C_Tt5g5(void *a1, uint8_t *a2, void *a3, void *a4, uint64_t a5)
{
  v9 = type metadata accessor for AppResolver();
  v10 = OUTLINED_FUNCTION_7(v9);
  v67 = v11;
  v68 = v10;
  v13 = *(v12 + 64);
  __chkstk_darwin(v10);
  OUTLINED_FUNCTION_4();
  v16 = v15 - v14;
  v69 = static AppSelectionSignalsGatheringHelper.getShowedForcedAppDisambiguationList(sharedGlobals:)(a1);
  v70 = a1;
  if (a4)
  {
    v17 = a4;
  }

  else
  {
    outlined init with copy of SignalProviding(a1, v71);
    v18 = [objc_opt_self() clientWithIdentifier:112];
    OUTLINED_FUNCTION_88();
    type metadata accessor for TrialSmartAppSelectionConfigProvider();
    v19 = swift_allocObject();
    *(v19 + 16) = v5;
    type metadata accessor for DiagnosticLogPermission();
    swift_allocObject();
    OUTLINED_FUNCTION_88();
    type metadata accessor for SmartAppSelectionFeatureManager();
    swift_allocObject();
    v17 = SmartAppSelectionFeatureManager.init(sharedGlobals:trialSmartAppSelectionConfigProvider:diagnosticLogPermission:)(v71, v19, v5);
  }

  outlined init with copy of SignalProviding(a1, &v84);
  type metadata accessor for AppUsageProvider();
  memset(v82, 0, sizeof(v82));
  v83 = 0;
  v20 = swift_allocObject();

  AppResolver.init(appResolutionRules:)();
  v21 = type metadata accessor for PhoneAppResolutionHelper();
  v22 = *(v21 + 48);
  v23 = *(v21 + 52);
  v24 = swift_allocObject();
  v25 = type metadata accessor for EligibleAppFinder();
  v81[3] = v25;
  v81[4] = &protocol witness table for EligibleAppFinder;
  v81[0] = a5;
  v26 = (v24 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin24PhoneAppResolutionHelper_logPrefix);
  *v26 = v21;
  v26[1] = &outlined read-only object #0 of specialized PhoneAppResolutionHelper.init(sharedGlobals:eligibleAppsFinder:smartAppSelection:phoneAppResolutionLogger:appUsageProvider:appResolver:);
  v26[2] = 0;
  v26[3] = 0;
  outlined init with copy of SignalProviding(&v84, v24 + 56);
  outlined init with copy of SignalProviding(v81, v24 + 16);
  (*(v67 + 16))(v24 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin24PhoneAppResolutionHelper_appResolver, v16, v68);
  *(v24 + 144) = v20;
  *(v24 + 96) = v17;
  _s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgWOcTm_0(v82, &v78, &_s27PhoneCallFlowDelegatePlugin0A20AppResolutionLogging_pSgMd, &_s27PhoneCallFlowDelegatePlugin0A20AppResolutionLogging_pSgMR);
  if (v79)
  {
    v27 = *(v67 + 8);

    v27(v16, v68);
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v82, &_s27PhoneCallFlowDelegatePlugin0A20AppResolutionLogging_pSgMd, &_s27PhoneCallFlowDelegatePlugin0A20AppResolutionLogging_pSgMR);
    __swift_destroy_boxed_opaque_existential_1(&v84);
    __swift_destroy_boxed_opaque_existential_1(v81);
    outlined init with take of SPHConversation(&v78, v71);
    outlined init with take of SPHConversation(v71, v24 + 104);
    v28 = v17;
  }

  else
  {
    v64 = v17;

    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(&v78, &_s27PhoneCallFlowDelegatePlugin0A20AppResolutionLogging_pSgMd, &_s27PhoneCallFlowDelegatePlugin0A20AppResolutionLogging_pSgMR);
    outlined init with copy of SignalProviding(&v84, v75);
    v29 = [objc_opt_self() sharedAnalytics];
    v63 = [v29 defaultMessageStream];

    if (one-time initialization token for instance != -1)
    {
      OUTLINED_FUNCTION_60_2();
    }

    v73 = v25;
    v74 = &protocol witness table for EligibleAppFinder;
    *&v72 = static EligibleAppFinder.instance;
    v79 = &type metadata for PhoneAppResolutionLogger;
    v80 = &protocol witness table for PhoneAppResolutionLogger;
    v30 = swift_allocObject();
    *&v78 = v30;
    v31 = v77;
    __swift_project_boxed_opaque_existential_1(v75, v76);
    v32 = *(v31 + 112);

    v33 = OUTLINED_FUNCTION_130_0();
    if (v32(v33))
    {
      v34 = CurrentRequest.executionRequestId.getter();
      v36 = v35;
    }

    else
    {
      v34 = 0;
      v36 = 0;
    }

    *&v71[0] = v34;
    *(&v71[0] + 1) = v36;
    *&v71[1] = v63;
    outlined init with copy of SignalProviding(v75, &v71[1] + 8);
    v37 = v77;
    __swift_project_boxed_opaque_existential_1(v75, v76);
    v38 = *(v37 + 216);
    v39 = OUTLINED_FUNCTION_5();
    v40(v39, v37);
    outlined init with take of SPHConversation(&v72, &v71[6] + 8);
    memcpy((v30 + 16), v71, 0x90uLL);

    v28 = v64;

    (*(v67 + 8))(v16, v68);
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v82, &_s27PhoneCallFlowDelegatePlugin0A20AppResolutionLogging_pSgMd, &_s27PhoneCallFlowDelegatePlugin0A20AppResolutionLogging_pSgMR);
    __swift_destroy_boxed_opaque_existential_1(&v84);
    __swift_destroy_boxed_opaque_existential_1(v81);
    __swift_destroy_boxed_opaque_existential_1(v75);
    outlined init with take of SPHConversation(&v78, v24 + 104);
  }

  v41 = v70;
  if (v69[2])
  {
    v42 = v70[4];
    __swift_project_boxed_opaque_existential_1(v70, v70[3]);
    v43 = *(v42 + 152);
    v44 = OUTLINED_FUNCTION_5();
    v45(v44, v42);
    v46 = v86;
    __swift_project_boxed_opaque_existential_1(&v84, v85);
    v47 = *(v46 + 32);
    v48 = OUTLINED_FUNCTION_5();
    v49(v48, v46);
    if (*&v71[0])
    {
      v50 = *(&v71[0] + 1);
      v51 = *(&v71[2] + 1);
      v52 = LOBYTE(v71[2]);
      __swift_destroy_boxed_opaque_existential_1(&v84);
      if (v52 == 4)
      {
        v53 = App.appIdentifier.getter();
        if (v54)
        {
          v55 = v53;
        }

        else
        {
          v55 = 0;
        }

        if (v54)
        {
          v56 = v54;
        }

        else
        {
          v56 = 0xE000000000000000;
        }

        static AppSelectionSignalsGatheringHelper.triggerForcedAppDisambiguationSignalCollection(sharedGlobals:contacts:phoneCallNLIntent:phoneAppResolutionHelper:appBundleIds:selectedAppId:skIntent:)(v70, a2, a3, v24, v69, v55, v56);

        v81[0] = v50;
        outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v81, &_sShySSGMd, &_sShySSGMR);
        v84 = v71[1];
        outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(&v84, &_sSSSgMd, &_sSSSgMR);
        *&v82[0] = v51;
        outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v82, &_sShySSGMd, &_sShySSGMR);
      }

      v81[0] = v50;
      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v81, &_sShySSGMd, &_sShySSGMR);
      v84 = v71[1];
      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(&v84, &_sSSSgMd, &_sSSSgMR);
      *&v82[0] = v51;
      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v82, &_sShySSGMd, &_sShySSGMR);
      v41 = v70;
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1(&v84);
    }
  }

  else
  {
  }

  v58 = a3[3];
  v59 = a3[4];
  v60 = OUTLINED_FUNCTION_86(a3);
  PhoneCallNLIntent.applicationId.getter(v60, v59);
  if (v61)
  {

    if ((*(*v28 + 128))(v62))
    {
      static AppSelectionSignalsGatheringHelper.triggerAppNameSpecifiedSignalCollection(sharedGlobals:contacts:phoneCallNLIntent:phoneAppResolutionHelper:skIntent:)(v41, a2, a3, v24);
    }
  }
}

unint64_t lazy protocol witness table accessor for type EmergencyType and conformance EmergencyType()
{
  result = lazy protocol witness table cache variable for type EmergencyType and conformance EmergencyType;
  if (!lazy protocol witness table cache variable for type EmergencyType and conformance EmergencyType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EmergencyType and conformance EmergencyType);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for EmergencyType(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t partial apply for implicit closure #1 in CallingIntentContactNeedsDisambiguationFlowStrategy.makePromptForLocalEmergencyDisambiguation(app:disambiguationItems:outputGenerationManifest:)()
{
  OUTLINED_FUNCTION_15();
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 16) = v1;
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_10_5(v1);

  return implicit closure #1 in CallingIntentContactNeedsDisambiguationFlowStrategy.makePromptForLocalEmergencyDisambiguation(app:disambiguationItems:outputGenerationManifest:)(v3, v4);
}

uint64_t partial apply for implicit closure #2 in CallingIntentContactNeedsDisambiguationFlowStrategy.makePromptForLocalEmergencyDisambiguation(app:disambiguationItems:outputGenerationManifest:)()
{
  OUTLINED_FUNCTION_15();
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 16) = v1;
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_10_5(v1);

  return implicit closure #2 in CallingIntentContactNeedsDisambiguationFlowStrategy.makePromptForLocalEmergencyDisambiguation(app:disambiguationItems:outputGenerationManifest:)(v3, v4);
}

uint64_t lazy protocol witness table accessor for type Input and conformance Input(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t outlined init with take of PhoneRRTarget(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_88();
  v5 = v4(v3);
  OUTLINED_FUNCTION_23_1(v5);
  v7 = *(v6 + 32);
  v8 = OUTLINED_FUNCTION_19_0();
  v9(v8);
  return a2;
}

{
  v4 = type metadata accessor for PhoneRRTarget(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of LocalEmergencyCallDisambiguationModel(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_88();
  v5 = v4(v3);
  OUTLINED_FUNCTION_23_1(v5);
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_19_0();
  v9(v8);
  return a2;
}

uint64_t _s27PhoneCallFlowDelegatePlugin0A5ErrorOWOhTm_1(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_23_1(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t partial apply for implicit closure #1 in CallingIntentContactNeedsDisambiguationFlowStrategy.makeLegacyPromptForDisambiguation(resolveRecord:disambiguationList:)()
{
  OUTLINED_FUNCTION_27();
  v2 = v1;
  v4 = v3;
  OUTLINED_FUNCTION_22_6();
  swift_getAssociatedTypeWitness();
  v5 = OUTLINED_FUNCTION_89();
  OUTLINED_FUNCTION_21(v5);
  v7 = (*(v6 + 80) + 40) & ~*(v6 + 80);
  v8 = *(v0 + 32);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = closure #2 in ActionableCallControlFlow.execute();

  return implicit closure #1 in CallingIntentContactNeedsDisambiguationFlowStrategy.makeLegacyPromptForDisambiguation(resolveRecord:disambiguationList:)(v4, v8, v0 + v7);
}

uint64_t partial apply for implicit closure #2 in CallingIntentContactNeedsDisambiguationFlowStrategy.makeLegacyPromptForDisambiguation(resolveRecord:disambiguationList:)()
{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_22_6();
  swift_getAssociatedTypeWitness();
  v2 = OUTLINED_FUNCTION_89();
  OUTLINED_FUNCTION_13_2(v2);
  v5 = *(v0 + 32);
  v6 = *(v0 + ((*(v4 + 64) + ((*(v3 + 80) + 40) & ~*(v3 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = closure #1 in ActionableCallControlFlow.execute();
  OUTLINED_FUNCTION_65_1();

  return implicit closure #2 in CallingIntentContactNeedsDisambiguationFlowStrategy.makeLegacyPromptForDisambiguation(resolveRecord:disambiguationList:)(v8, v9, v10, v11);
}

uint64_t partial apply for closure #1 in closure #3 in implicit closure #2 in CallingIntentContactNeedsDisambiguationFlowStrategy.makeLegacyPromptForDisambiguation(resolveRecord:disambiguationList:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy11SiriKitFlow16TemplatingResultVs5Error_pGMd, &_sScCy11SiriKitFlow16TemplatingResultVs5Error_pGMR);
  OUTLINED_FUNCTION_21(v2);
  v4 = *(v3 + 80);

  return closure #1 in closure #3 in implicit closure #2 in CallingIntentContactNeedsDisambiguationFlowStrategy.makeLegacyPromptForDisambiguation(resolveRecord:disambiguationList:)(a1);
}

uint64_t partial apply for closure #1 in closure #1 in CallingIntentContactNeedsDisambiguationFlowStrategy.makeLegacyPromptForDisambiguation(resolveRecord:disambiguationList:)(uint64_t a1, char a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySaySo9SAAceViewCGs5Error_pGMd, &_sScCySaySo9SAAceViewCGs5Error_pGMR);
  OUTLINED_FUNCTION_21(v4);
  v6 = *(v5 + 80);

  return closure #1 in closure #1 in CallingIntentContactNeedsDisambiguationFlowStrategy.makeLegacyPromptForDisambiguation(resolveRecord:disambiguationList:)(a1, a2 & 1);
}

uint64_t objectdestroy_93Tm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  OUTLINED_FUNCTION_23_1(v3);
  v5 = *(v4 + 80);
  v6 = (v5 + 16) & ~v5;
  v7 = *(v4 + 64);
  (*(v4 + 8))(v2 + v6);

  return _swift_deallocObject(v2, v6 + v7, v5 | 7);
}

uint64_t partial apply for closure #1 in closure #2 in implicit closure #1 in CallingIntentContactNeedsDisambiguationFlowStrategy.makeLegacyPromptForDisambiguation(resolveRecord:disambiguationList:)(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_21(v3);
  v5 = *(v4 + 80);
  return closure #1 in closure #4 in CallingIntentContactNeedsDisambiguationFlowStrategy.makePromptForDisambiguation(paginatedItems:resolveRecord:)();
}

uint64_t _s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgWOcTm_0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_23_1(v5);
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_19_0();
  v9(v8);
  return a2;
}

uint64_t partial apply for closure #1 in closure #1 in CallingIntentContactNeedsDisambiguationFlowStrategy.parseDisambiguationResult(input:paginatedItems:resolveRecord:)()
{
  OUTLINED_FUNCTION_22_6();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_133();
  type metadata accessor for IntentPromptAnswer();
  OUTLINED_FUNCTION_133();
  type metadata accessor for DisambiguationResult();
  v0 = type metadata accessor for CheckedContinuation();
  OUTLINED_FUNCTION_21(v0);
  v2 = *(v1 + 80);
  v3 = OUTLINED_FUNCTION_108_0();

  return closure #1 in closure #1 in CallingIntentContactNeedsDisambiguationFlowStrategy.parseDisambiguationResult(input:paginatedItems:resolveRecord:)(v3, v4);
}

uint64_t partial apply for closure #1 in closure #1 in CallingIntentContactNeedsDisambiguationFlowStrategy.makeDisambiguationItemContainer(resolveRecord:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy11SiriKitFlow0aB25DisambiguationListAdapterCs5NeverOGMd, &_sScCy11SiriKitFlow0aB25DisambiguationListAdapterCs5NeverOGMR);
  OUTLINED_FUNCTION_21(v0);
  v2 = *(v1 + 80);
  v3 = OUTLINED_FUNCTION_108_0();

  return closure #1 in closure #1 in CallingIntentContactNeedsDisambiguationFlowStrategy.makeDisambiguationItemContainer(resolveRecord:)(v3, v4);
}

uint64_t OUTLINED_FUNCTION_37_10()
{
  v1 = v0[36];
  v2 = v0[37];
  v3 = v0[32];
  v4 = v0[33];
  v5 = v0[31];
  v6 = v0[29];
  return v0[24];
}

uint64_t OUTLINED_FUNCTION_38_7(uint64_t a1)
{
  *(a1 + 8) = CallingIntentContactNeedsDisambiguationFlowStrategy.makePromptForEmergencyNeedsDisambiguation(app:disambiguationItems:nlContextUpdate:);
  v2 = v1[17];
  v3 = v1[6];
  return v1[2];
}

uint64_t OUTLINED_FUNCTION_39_10(uint64_t a1)
{
  *(a1 + 8) = CallingIntentContactNeedsDisambiguationFlowStrategy.makePromptForEmergencyNeedsDisambiguation(app:disambiguationItems:nlContextUpdate:);
  result = *(v1 + 72);
  v3 = *(v1 + 48);
  v4 = *(v1 + 216);
  return result;
}

uint64_t OUTLINED_FUNCTION_40_8(uint64_t a1)
{
  *(a1 + 8) = CallingIntentContactNeedsDisambiguationFlowStrategy.makePromptForEmergencyNeedsDisambiguation(app:disambiguationItems:nlContextUpdate:);
  v2 = v1[17];
  v3 = v1[6];
  return v1[2];
}

void *OUTLINED_FUNCTION_51_8@<X0>(uint64_t a1@<X8>)
{
  v4 = v1[40];
  v3 = v1[41];
  v5 = v1[38];
  v6 = v1[39];
  v7 = v1[36];
  v9 = v1[33];
  v8 = v1[34];
  v12 = v1[24];
  v10 = *(v1[32] + 24);
  v1[19] = a1;
  result = v1 + 19;
  v1[20] = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_53_9(uint64_t a1)
{

  return outlined init with copy of LocalEmergencyCallDisambiguationModel(v1, a1);
}

uint64_t OUTLINED_FUNCTION_73_2()
{
  v3 = v0[38];
  v2 = v0[39];
  v4 = v0[36];
  v5 = v0[37];
  v6 = v0[33];
}

void OUTLINED_FUNCTION_77_3(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 2u);
}

uint64_t OUTLINED_FUNCTION_78_1()
{
  v3 = v0[35];
  v2 = v0[36];
  v4 = v0[32];
  v5 = v0[30];
  v6 = v0[27];
}

uint64_t OUTLINED_FUNCTION_82_0()
{
  if (v0)
  {
    v3 = 1;
  }

  else
  {
    v3 = 0;
  }

  return specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, v3, v1);
}

uint64_t OUTLINED_FUNCTION_85_0(uint64_t a1, uint64_t a2)
{
  *(v2 + 392) = a2;
  v5 = *(v3 + 8);
  return v4;
}

void OUTLINED_FUNCTION_97()
{
  v3 = v1[29];
  v4 = v1[30];
  v5 = v1[28];
  v7 = v1[24];
  v6 = v1[25];
  v8 = v1[23];
}

void OUTLINED_FUNCTION_100()
{
  v2 = *(v0 + 360);
  v3 = *(v0 + 352);
  v1 = *(v0 + 344);
  v4 = *(v0 + 402);
}

uint64_t OUTLINED_FUNCTION_111()
{
  v2 = v0[27];
  v3 = v0[24];
  v4 = v0[22];
  v5 = v0[20];
  v6 = v0[17];
}

uint64_t OUTLINED_FUNCTION_112_0()
{
  v2 = v0[234];
  v3 = v0[232];
  v4 = v0[230];
  v5 = v0[227];
}

uint64_t OUTLINED_FUNCTION_114_1()
{

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_115(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 0xCu);
}

uint64_t OUTLINED_FUNCTION_119_0()
{
  result = v0[230];
  v2 = v0[228];
  v3 = *(v0[229] + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_125_0()
{
  v4 = *(v0 + 40);
  *(v1 + 168) = v3;
  result = v1 + 168;
  *(v1 + 176) = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_140(uint64_t a1)
{
  *(v1 + 384) = a1;

  return ParameterResolutionRecord.parameter.getter();
}

uint64_t OUTLINED_FUNCTION_141(uint64_t a1)
{
  *(v1 + 344) = a1;

  return PaginatedItemContainer.items.getter();
}

uint64_t OUTLINED_FUNCTION_142()
{
  v3 = v0[35];
  v2 = v0[36];
  v4 = v0[32];
  v5 = v0[30];
  v6 = v0[27];
}

uint64_t OUTLINED_FUNCTION_143()
{

  return CodableAceObject.init(wrappedValue:)();
}

uint64_t OUTLINED_FUNCTION_144()
{
  v2 = v0[65];
  v3 = v0[64];
  v4 = v0[58];
  v5 = v0[55];
}

uint64_t OUTLINED_FUNCTION_145()
{
  v2 = v0[17];
  v4 = v0[13];
  v3 = v0[14];
  v5 = v0[12];
  v7 = v0[8];
  v6 = v0[9];
}

uint64_t OUTLINED_FUNCTION_148()
{

  return IntentPromptAnswer.init(answeredValue:updatedIntent:)();
}

uint64_t OUTLINED_FUNCTION_150()
{
  v2 = *(v0 + 312);
  v3 = *(v0 + 256);
}

uint64_t OUTLINED_FUNCTION_151()
{

  return specialized _ArrayBuffer._getElementSlowPath(_:)();
}

uint64_t CallingIntentContinueInAppFlow.rchRecord.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  OUTLINED_FUNCTION_47_0();
  v5 = *(v4 + 112);
  v7 = *(v6 + 80);
  v8 = *(v6 + 88);
  v9 = type metadata accessor for IntentResolutionRecord();
  v10 = OUTLINED_FUNCTION_23_1(v9);
  v12 = *(v11 + 16);

  return v12(a1, &v1[v5], v10);
}

uint64_t CallingIntentContinueInAppFlow.__allocating_init(factory:rchRecord:sharedGlobals:deviceStateConnection:phoneSettingProvider:)()
{
  OUTLINED_FUNCTION_24_8();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  CallingIntentContinueInAppFlow.init(factory:rchRecord:sharedGlobals:deviceStateConnection:phoneSettingProvider:)();
  return v3;
}

char *CallingIntentContinueInAppFlow.init(factory:rchRecord:sharedGlobals:deviceStateConnection:phoneSettingProvider:)()
{
  OUTLINED_FUNCTION_24_8();
  v5 = *v1;
  *(v1 + 2) = v6;
  OUTLINED_FUNCTION_47_0();
  v8 = *(v7 + 112);
  v10 = *(v9 + 80);
  OUTLINED_FUNCTION_47_0();
  v12 = *(v11 + 88);
  v13 = type metadata accessor for IntentResolutionRecord();
  OUTLINED_FUNCTION_23_1(v13);
  (*(v14 + 32))(&v1[v8], v4);
  OUTLINED_FUNCTION_2_0();
  outlined init with take of SPHConversation(v3, &v1[*(v15 + 120)]);
  OUTLINED_FUNCTION_2_0();
  *&v1[*(v16 + 128)] = v2;
  OUTLINED_FUNCTION_2_0();
  outlined init with take of SPHConversation(v0, &v1[*(v17 + 136)]);
  return v1;
}

uint64_t (*static CallingIntentContinueInAppFlow.makeProducer(sharedGlobals:)(uint64_t a1))(void *a1, uint64_t a2)
{
  outlined init with copy of SignalProviding(a1, v4);
  v2 = swift_allocObject();
  *(v2 + 16) = *(v1 + 96);
  outlined init with take of SPHConversation(v4, v2 + 24);
  return partial apply for closure #1 in static CallingIntentContinueInAppFlow.makeProducer(sharedGlobals:);
}

uint64_t closure #1 in static CallingIntentContinueInAppFlow.makeProducer(sharedGlobals:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(*a1 + class metadata base offset for RCHChildFlowFactory);
  v8 = *(*a1 + class metadata base offset for RCHChildFlowFactory + 8);
  v9 = type metadata accessor for IntentResolutionRecord();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v16[-v12];
  type metadata accessor for CallingIntentContinueInAppFlow();
  (*(v10 + 16))(v13, a2, v9);
  outlined init with copy of SignalProviding(a3, v17);

  default argument 3 of CallingIntentContinueInAppFlow.init(factory:rchRecord:sharedGlobals:deviceStateConnection:phoneSettingProvider:)();
  default argument 4 of CallingIntentContinueInAppFlow.init(factory:rchRecord:sharedGlobals:deviceStateConnection:phoneSettingProvider:)(v7, v8, a4);
  v17[0] = CallingIntentContinueInAppFlow.__allocating_init(factory:rchRecord:sharedGlobals:deviceStateConnection:phoneSettingProvider:)();
  swift_getWitnessTable();
  v14 = Flow.eraseToAnyFlow()();

  return v14;
}

uint64_t CallingIntentContinueInAppFlow.execute()(uint64_t a1)
{
  v2[16] = a1;
  v2[17] = v1;
  v2[18] = *v1;
  return OUTLINED_FUNCTION_0_1(CallingIntentContinueInAppFlow.execute());
}

uint64_t CallingIntentContinueInAppFlow.execute()()
{
  v1 = v0[17];
  v2 = v0[18];
  v3 = &v1[*(*v1 + 120)];
  v4 = *(v3 + 4);
  __swift_project_boxed_opaque_existential_1(v3, *(v3 + 3));
  v5 = *(v4 + 104);
  v6 = OUTLINED_FUNCTION_4_3();
  v7(v6);
  v8 = v0[6];
  v41 = v0[5];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v41);
  v9 = v2[10];
  v10 = v2[11];
  v11 = v2[12];
  v12 = type metadata accessor for CallingIntentContinueInAppStrategy();
  outlined init with copy of SignalProviding(v3, (v0 + 7));
  v13 = default argument 1 of CallingIntentContinueInAppStrategy.init(sharedGlobals:startCallCATsSimple:phoneCallDisplayTextCATsSimple:)(v9, v10, v11);
  v14 = default argument 2 of CallingIntentContinueInAppStrategy.init(sharedGlobals:startCallCATsSimple:phoneCallDisplayTextCATsSimple:)(v9, v10, v11);
  v0[12] = CallingIntentContinueInAppStrategy.__allocating_init(sharedGlobals:startCallCATsSimple:phoneCallDisplayTextCATsSimple:)((v0 + 7), v13, v14);
  v39 = *(v1 + 2);
  v15 = *(*v1 + 112);
  v40 = *(v8 + 32);
  WitnessTable = swift_getWitnessTable();
  v0[19] = v40(v0 + 12, v39, &v1[v15], v12, WitnessTable, v41, v8);

  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  type metadata accessor for IntentResolutionRecord();
  v17 = IntentResolutionRecord.intent.getter();
  v18 = *(v11 + 16);
  v19 = v18(v9, v11);

  if (v19 == 2)
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2();
    }

    v20 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_9_0(v20, static Logger.siriPhone);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = OUTLINED_FUNCTION_65_0();
      *v23 = 0;
      _os_log_impl(&dword_0, v21, v22, "#CallingIntentContinueInAppFlow emergency call, skipping auth flows", v23, 2u);
      OUTLINED_FUNCTION_26_0();
    }

    v24 = v0[16];

    goto LABEL_7;
  }

  IntentResolutionRecord.intent.getter();
  v27 = OUTLINED_FUNCTION_4_3();
  v28 = (v18)(v27);

  if (v28 != 4)
  {
    IntentResolutionRecord.intent.getter();
    v29 = OUTLINED_FUNCTION_4_3();
    v30 = (v18)(v29);

    if (v30 != 5)
    {
      v38 = v0[16];
LABEL_7:
      static ExecuteResponse.complete(next:)();

      v25 = v0[1];

      return v25();
    }
  }

  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2();
  }

  v31 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_9_0(v31, static Logger.siriPhone);
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = OUTLINED_FUNCTION_65_0();
    OUTLINED_FUNCTION_11_1(v34);
    OUTLINED_FUNCTION_20_14(&dword_0, v35, v33, "#CallingIntentContinueInAppFlow Pushing redial/callback punchout flow guarded by auth flows");
    OUTLINED_FUNCTION_12_3();
  }

  v36 = swift_task_alloc();
  v0[20] = v36;
  *v36 = v0;
  v36[1] = CallingIntentContinueInAppFlow.execute();
  v37 = v0[17];

  return CallingIntentContinueInAppFlow.makeRedialCallbackGuardFlow()();
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_2_5();
  *v2 = v1;
  v4 = *(v3 + 160);
  *v2 = *v0;
  *(v1 + 168) = v5;

  v6 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v6, v7, v8);
}

{
  v1 = v0[21];
  v2 = v0[16];
  v0[13] = v0[19];
  v0[14] = v1;
  type metadata accessor for AnyFlow();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow08AnyValueC0CyAA05GuardC6ResultOGMd, &_s11SiriKitFlow08AnyValueC0CyAA05GuardC6ResultOGMR);
  lazy protocol witness table accessor for type TerminalOntologyNode<VoiceMail.VoiceMailNoun> and conformance TerminalOntologyNode<A>(&lazy protocol witness table cache variable for type AnyValueFlow<GuardFlowResult> and conformance AnyValueFlow<A>, &_s11SiriKitFlow08AnyValueC0CyAA05GuardC6ResultOGMd, &_s11SiriKitFlow08AnyValueC0CyAA05GuardC6ResultOGMR);
  v0[15] = Flow.guarded<A>(by:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow011ConditionalC0CyypGMd, &_s11SiriKitFlow011ConditionalC0CyypGMR);
  lazy protocol witness table accessor for type TerminalOntologyNode<VoiceMail.VoiceMailNoun> and conformance TerminalOntologyNode<A>(&lazy protocol witness table cache variable for type ConditionalFlow<Any> and conformance ConditionalFlow<A>, &_s11SiriKitFlow011ConditionalC0CyypGMd, &_s11SiriKitFlow011ConditionalC0CyypGMR);
  static ExecuteResponse.complete<A>(next:)();

  v3 = v0[1];

  return v3();
}

uint64_t CallingIntentContinueInAppFlow.execute(completion:)()
{
  v1 = *v0;
  OUTLINED_FUNCTION_47_0();
  v3 = *(v2 + 80);
  OUTLINED_FUNCTION_47_0();
  v5 = *(v4 + 88);
  OUTLINED_FUNCTION_47_0();
  v7 = *(v6 + 96);
  type metadata accessor for CallingIntentContinueInAppFlow();
  swift_getWitnessTable();
  return Flow.deferToExecuteAsync(_:)();
}

uint64_t CallingIntentContinueInAppFlow.makeRedialCallbackGuardFlow()()
{
  OUTLINED_FUNCTION_15();
  v1[7] = v0;
  OUTLINED_FUNCTION_2_0();
  v1[8] = v2;
  v3 = type metadata accessor for UnlockDevicePolicy();
  v1[9] = v3;
  OUTLINED_FUNCTION_13_2(v3);
  v1[10] = v4;
  v6 = *(v5 + 64) + 15;
  v1[11] = swift_task_alloc();
  v7 = type metadata accessor for CommonFlowGuard();
  v1[12] = v7;
  OUTLINED_FUNCTION_13_2(v7);
  v1[13] = v8;
  v10 = *(v9 + 64) + 15;
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v11 = swift_task_alloc();
  v1[16] = v11;
  *v11 = v1;
  v11[1] = CallingIntentContinueInAppFlow.makeRedialCallbackGuardFlow();

  return CallingIntentContinueInAppFlow.requiresDeviceUnlockForRedialCallback()();
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_2_5();
  *v2 = v1;
  v4 = *(v3 + 128);
  *v2 = *v0;
  *(v1 + 168) = v5;

  v6 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v6, v7, v8);
}

{
  if (*(v0 + 168) == 1)
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2();
    }

    v1 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_9_0(v1, static Logger.siriPhone);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = OUTLINED_FUNCTION_65_0();
      OUTLINED_FUNCTION_11_1(v4);
      OUTLINED_FUNCTION_20_14(&dword_0, v5, v3, "#CallingIntentContinueInAppFlow Adding device unlock guard for redial/callback");
      OUTLINED_FUNCTION_12_3();
    }

    v6 = *(v0 + 120);
    v8 = *(v0 + 80);
    v7 = *(v0 + 88);
    v9 = *(v0 + 72);

    static UnlockDevicePolicy.default.getter();
    static CommonFlowGuard.ensuringDeviceIsAuthenticated(using:)();
    (*(v8 + 8))(v7, v9);
    specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    v11 = v10;
    if (v10[2] >= v10[3] >> 1)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v11 = v47;
    }

    v12 = *(v0 + 120);
    v13 = *(v0 + 96);
    v14 = OUTLINED_FUNCTION_5_22(*(v0 + 104));
    v15(v14);
  }

  else
  {
    v11 = _swiftEmptyArrayStorage;
  }

  *(v0 + 136) = v11;
  v17 = *(v0 + 56);
  v16 = *(v0 + 64);
  OUTLINED_FUNCTION_2_0();
  v19 = *(v18 + 112);
  v21 = *(v20 + 80);
  v22 = *(v20 + 88);
  type metadata accessor for IntentResolutionRecord();
  v23 = IntentResolutionRecord.intent.getter();
  objc_opt_self();
  v24 = swift_dynamicCastObjCClass();
  if (v24)
  {
    v25 = [v24 callRecordToCallBack];

    if (v25)
    {
      v26 = [v25 providerBundleId];

      if (v26)
      {
        v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v29 = v28;

        *(v0 + 144) = v27;
        *(v0 + 152) = v29;
        v30 = swift_task_alloc();
        *(v0 + 160) = v30;
        *v30 = v0;
        v30[1] = CallingIntentContinueInAppFlow.makeRedialCallbackGuardFlow();
        v31 = *(v0 + 56);

        return CallingIntentContinueInAppFlow.requiresProtectedAppsUnlock()();
      }
    }
  }

  else
  {
  }

  v34 = *(v0 + 112);
  v33 = *(v0 + 120);
  v35 = *(v0 + 88);
  OUTLINED_FUNCTION_14_18();
  v38 = (v37 + *(v36 + 120));
  v39 = v38[4];
  __swift_project_boxed_opaque_existential_1(v38, v38[3]);
  v40 = OUTLINED_FUNCTION_8_24();
  v41(v40);
  v42 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  v43 = OUTLINED_FUNCTION_10_22();
  v45 = v44(v43);

  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  OUTLINED_FUNCTION_17_5();

  return v46(v45);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_2_5();
  *v2 = v1;
  v4 = *(v3 + 160);
  *v2 = *v0;
  *(v1 + 169) = v5;

  v6 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v6, v7, v8);
}

{
  v42 = v0;
  if (*(v0 + 169) == 1)
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2();
    }

    v1 = *(v0 + 152);
    v2 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_9_0(v2, static Logger.siriPhone);

    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v3, v4))
    {
      v6 = *(v0 + 144);
      v5 = *(v0 + 152);
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v41 = v8;
      *v7 = 136315138;
      *(v7 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v5, &v41);
      OUTLINED_FUNCTION_25_8(&dword_0, v9, v10, "#CallingIntentContinueInAppFlow Adding protected app guard for redial/callback using %s");
      __swift_destroy_boxed_opaque_existential_1(v8);
      OUTLINED_FUNCTION_26_0();
      OUTLINED_FUNCTION_26_0();
    }

    v11 = *(v0 + 144);
    v12 = *(v0 + 152);
    v13 = *(v0 + 136);
    v14 = *(v0 + 112);
    static CommonFlowGuard.ensuringUnlockedApp(_:)();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *(v0 + 136);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v38 = *(v16 + 16);
      v39 = *(v0 + 136);
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v16 = v40;
    }

    if (*(v16 + 16) >= *(v16 + 24) >> 1)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    v17 = *(v0 + 112);
    v18 = *(v0 + 96);
    v19 = OUTLINED_FUNCTION_5_22(*(v0 + 104));
    v20(v19);
  }

  else
  {
    v21 = *(v0 + 152);

    v22 = *(v0 + 136);
  }

  v24 = *(v0 + 112);
  v23 = *(v0 + 120);
  v25 = *(v0 + 88);
  OUTLINED_FUNCTION_14_18();
  v28 = (v27 + *(v26 + 120));
  v29 = v28[4];
  __swift_project_boxed_opaque_existential_1(v28, v28[3]);
  v30 = OUTLINED_FUNCTION_8_24();
  v31(v30);
  v32 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  v33 = OUTLINED_FUNCTION_10_22();
  v35 = v34(v33);

  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  OUTLINED_FUNCTION_17_5();

  return v36(v35);
}

uint64_t CallingIntentContinueInAppFlow.requiresDeviceUnlockForRedialCallback()()
{
  OUTLINED_FUNCTION_15();
  v1[7] = v0;
  v1[8] = *v0;
  v2 = type metadata accessor for UnlockDevicePolicy();
  v1[9] = v2;
  OUTLINED_FUNCTION_13_2(v2);
  v1[10] = v3;
  v5 = *(v4 + 64) + 15;
  v1[11] = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v6, v7, v8);
}

{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];
  OUTLINED_FUNCTION_14_18();
  v6 = (v5 + *(v4 + 120));
  v7 = v6[3];
  v8 = v6[4];
  __swift_project_boxed_opaque_existential_1(v6, v7);
  (*(v8 + 8))(v7, v8);
  v9 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  static UnlockDevicePolicy.default.getter();
  v10 = dispatch thunk of DeviceState.isAuthenticated(for:)();
  (*(v2 + 8))(v1, v3);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  if (v10)
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2();
    }

    v11 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_9_0(v11, static Logger.siriPhone);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.debug.getter();
    if (!OUTLINED_FUNCTION_21_8(v13))
    {
      goto LABEL_20;
    }

    v14 = OUTLINED_FUNCTION_65_0();
    OUTLINED_FUNCTION_11_1(v14);
    v16 = "#CallingIntentContinueInAppFlow device isn't locked, returning requiresUnlock = false";
LABEL_19:
    OUTLINED_FUNCTION_20_14(&dword_0, v15, v3, v16);
    OUTLINED_FUNCTION_12_3();
LABEL_20:

    v40 = v0[11];

    OUTLINED_FUNCTION_17_5();

    return v41((v10 & 1) == 0);
  }

  v18 = v0[7];
  v17 = v0[8];
  OUTLINED_FUNCTION_2_0();
  v20 = *(v19 + 112);
  v22 = *(v21 + 80);
  v23 = *(v21 + 88);
  type metadata accessor for IntentResolutionRecord();
  v24 = IntentResolutionRecord.intent.getter();
  objc_opt_self();
  v25 = swift_dynamicCastObjCClass();
  if (!v25)
  {

LABEL_15:
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2();
    }

    v37 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_9_0(v37, static Logger.siriPhone);
    v12 = Logger.logObject.getter();
    v38 = static os_log_type_t.debug.getter();
    if (!OUTLINED_FUNCTION_21_8(v38))
    {
      goto LABEL_20;
    }

    v39 = OUTLINED_FUNCTION_65_0();
    OUTLINED_FUNCTION_11_1(v39);
    v16 = "#CallingIntentContinueInAppFlow couldn't determine a providerBundleId to redial or call back, assuming requiresUnlock = true";
    goto LABEL_19;
  }

  v26 = [v25 callRecordToCallBack];

  if (!v26)
  {
    goto LABEL_15;
  }

  v27 = [v26 providerBundleId];

  if (!v27)
  {
    goto LABEL_15;
  }

  v28 = v0[7];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v30 = v29;

  v0[12] = v30;
  v31 = (v28 + *(*v28 + 136));
  v32 = v31[3];
  v33 = v31[4];
  __swift_project_boxed_opaque_existential_1(v31, v32);
  if ((*(v33 + 8))(v32, v33))
  {

    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2();
    }

    v34 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_9_0(v34, static Logger.siriPhone);
    v12 = Logger.logObject.getter();
    v35 = static os_log_type_t.debug.getter();
    if (!OUTLINED_FUNCTION_21_8(v35))
    {
      goto LABEL_20;
    }

    v36 = OUTLINED_FUNCTION_65_0();
    OUTLINED_FUNCTION_11_1(v36);
    v16 = "#CallingIntentContinueInAppFlow allow ReturnMissedCalls is disabled; authentication is required for returning missed calls, assuming requiresUnlock = true";
    goto LABEL_19;
  }

  v43 = swift_task_alloc();
  v0[13] = v43;
  *v43 = v0;
  v43[1] = CallingIntentContinueInAppFlow.requiresDeviceUnlockForRedialCallback();
  v44 = v0[7];

  return CallingIntentContinueInAppFlow.notificationPreviewsRestricted(for:)(v3, v30);
}

uint64_t CallingIntentContinueInAppFlow.requiresDeviceUnlockForRedialCallback()(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 104);
  v5 = *(*v1 + 96);
  v6 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v7 = v6;

  v8 = *(v3 + 88);

  v9 = *(v6 + 8);

  return v9(a1);
}

uint64_t CallingIntentContinueInAppFlow.notificationPreviewsRestricted(for:)(uint64_t a1, uint64_t a2)
{
  v3[20] = a2;
  v3[21] = v2;
  v3[19] = a1;
  return OUTLINED_FUNCTION_0_1(CallingIntentContinueInAppFlow.notificationPreviewsRestricted(for:));
}

uint64_t CallingIntentContinueInAppFlow.notificationPreviewsRestricted(for:)()
{
  v1 = *(v0[21] + *(*v0[21] + 128));
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = CallingIntentContinueInAppFlow.notificationPreviewsRestricted(for:);
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySaySSGSgs5NeverOGMd, &_sSccySaySSGSgs5NeverOGMR);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = @objc completion handler block implementation for <A, B>@escaping @callee_unowned @convention(block) @Sendable (@unowned NSArray?) -> () with result type [String]?;
  v0[13] = &block_descriptor;
  v0[14] = v2;
  [v1 fetchSiriKitAppIdentifiersWithNotificationPreviewRestrictionsWithCompletion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

{
  OUTLINED_FUNCTION_15();
  v4 = *v0;
  v1 = *v0;
  OUTLINED_FUNCTION_4_2();
  *v2 = v1;

  return _swift_task_switch(CallingIntentContinueInAppFlow.notificationPreviewsRestricted(for:), 0, 0);
}

{
  v25 = v0;
  if (v0[18])
  {
    v0[10] = v0[19];
    v0[11] = v0[20];
    *(swift_task_alloc() + 16) = v0 + 10;
    v1 = specialized Sequence.contains(where:)();

    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2();
    }

    v2 = v0[20];
    v3 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_9_0(v3, static Logger.siriPhone);

    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v4, v5))
    {
      v7 = v0[19];
      v6 = v0[20];
      v8 = swift_slowAlloc();
      v24[0] = swift_slowAlloc();
      *v8 = 136315394;
      *(v8 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v6, v24);
      *(v8 + 12) = 2080;
      if (v1)
      {
        v9 = 6648417;
      }

      else
      {
        v9 = 0x746F6E20657261;
      }

      if (v1)
      {
        v10 = 0xE300000000000000;
      }

      else
      {
        v10 = 0xE700000000000000;
      }

      v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, v24);

      *(v8 + 14) = v11;
      _os_log_impl(&dword_0, v4, v5, "#CallingIntentContinueInAppFlow Notification previews for %s %s restricted.", v8, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_26_0();
      OUTLINED_FUNCTION_12_3();
    }
  }

  else
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2();
    }

    v12 = v0[20];
    v13 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_9_0(v13, static Logger.siriPhone);

    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v17 = v0[19];
      v16 = v0[20];
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v24[0] = v19;
      *v18 = 136315138;
      *(v18 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v16, v24);
      OUTLINED_FUNCTION_25_8(&dword_0, v20, v21, "#CallingIntentContinueInAppFlow Got nil when fetching restricted apps, assume previews restricted for app: %s");
      __swift_destroy_boxed_opaque_existential_1(v19);
      OUTLINED_FUNCTION_26_0();
      OUTLINED_FUNCTION_26_0();
    }

    v1 = 1;
  }

  OUTLINED_FUNCTION_17_5();

  return v22(v1);
}

uint64_t @objc completion handler block implementation for <A, B>@escaping @callee_unowned @convention(block) @Sendable (@unowned NSArray?) -> () with result type [String]?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for INIntentResponse();
  v4 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a2)
  {
    v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v5 = 0;
  }

  return specialized _resumeUnsafeContinuation<A>(_:_:)(v4, v5);
}

uint64_t CallingIntentContinueInAppFlow.requiresProtectedAppsUnlock()()
{
  *(v1 + 16) = v0;
  return OUTLINED_FUNCTION_0_1(CallingIntentContinueInAppFlow.requiresProtectedAppsUnlock());
}

{
  v1 = (*(v0 + 16) + *(**(v0 + 16) + 120));
  v2 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  v3 = *(v2 + 56);
  v4 = OUTLINED_FUNCTION_4_3();
  v6 = *v5(v4);
  v7 = (*(v6 + 264))();

  OUTLINED_FUNCTION_17_5();

  return v8(v7 & 1);
}

char *CallingIntentContinueInAppFlow.deinit()
{
  v1 = *v0;
  v2 = *(v0 + 2);

  OUTLINED_FUNCTION_2_0();
  v4 = *(v3 + 112);
  v5 = *(v1 + 80);
  v6 = *(v1 + 88);
  v7 = type metadata accessor for IntentResolutionRecord();
  OUTLINED_FUNCTION_23_1(v7);
  (*(v8 + 8))(&v0[v4]);
  OUTLINED_FUNCTION_2_0();
  __swift_destroy_boxed_opaque_existential_1(&v0[*(v9 + 120)]);
  OUTLINED_FUNCTION_2_0();

  OUTLINED_FUNCTION_2_0();
  __swift_destroy_boxed_opaque_existential_1(&v0[*(v11 + 136)]);
  return v0;
}

uint64_t CallingIntentContinueInAppFlow.__deallocating_deinit()
{
  CallingIntentContinueInAppFlow.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t protocol witness for Flow.onAsync(input:) in conformance CallingIntentContinueInAppFlow<A1, B1>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = async function pointer to Flow.onAsync(input:)[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = protocol witness for Flow.onAsync(input:) in conformance CallingIntentContinueInAppFlow<A1, B1>;

  return Flow.onAsync(input:)(a1, a2, a3);
}

uint64_t protocol witness for Flow.onAsync(input:) in conformance CallingIntentContinueInAppFlow<A1, B1>()
{
  OUTLINED_FUNCTION_15();
  v2 = v1;
  OUTLINED_FUNCTION_28();
  v4 = *(v3 + 16);
  v5 = *v0;
  OUTLINED_FUNCTION_4_2();
  *v6 = v5;

  OUTLINED_FUNCTION_17_5();

  return v7(v2);
}

uint64_t protocol witness for Flow.execute() in conformance CallingIntentContinueInAppFlow<A, B>(uint64_t a1)
{
  v4 = *(**v1 + 160);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = protocol witness for Flow.execute() in conformance CallingIntentContinueInAppFlow<A, B>;

  return v8(a1);
}

uint64_t protocol witness for Flow.exitValue.getter in conformance CallingIntentContinueInAppFlow<A, B>(void *a1, uint64_t a2)
{
  v3 = a1[10];
  v4 = a1[11];
  v5 = a1[12];
  v6 = type metadata accessor for CallingIntentContinueInAppFlow();

  return Flow<>.exitValue.getter(v6, a2);
}

uint64_t type metadata completion function for CallingIntentContinueInAppFlow(uint64_t a1)
{
  v1 = *(a1 + 80);
  v2 = *(a1 + 88);
  result = type metadata accessor for IntentResolutionRecord();
  if (v4 <= 0x3F)
  {
    v5 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t type metadata accessor for INIntentResponse()
{
  result = lazy cache variable for type metadata for INIntentResponse;
  if (!lazy cache variable for type metadata for INIntentResponse)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for INIntentResponse);
  }

  return result;
}

uint64_t CallingIntentContinueInAppStrategy.__allocating_init(sharedGlobals:startCallCATsSimple:phoneCallDisplayTextCATsSimple:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 48);
  v8 = *(v3 + 52);
  v9 = swift_allocObject();
  CallingIntentContinueInAppStrategy.init(sharedGlobals:startCallCATsSimple:phoneCallDisplayTextCATsSimple:)(a1, a2, a3);
  return v9;
}

uint64_t CallingIntentContinueInAppStrategy.deviceState.getter()
{
  v1 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  v2 = *(v1 + 8);
  v3 = OUTLINED_FUNCTION_1_1();
  return v4(v3);
}

uint64_t CallingIntentContinueInAppStrategy.authenticationPolicy.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = direct field offset for CallingIntentContinueInAppStrategy.authenticationPolicy;
  v4 = type metadata accessor for UnlockDevicePolicy();
  v5 = OUTLINED_FUNCTION_23_1(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t key path setter for CallingIntentContinueInAppStrategy.additionalCommands : <A, B>CallingIntentContinueInAppStrategy<A, B>(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 160);

  return v3(v4);
}

uint64_t CallingIntentContinueInAppStrategy.additionalCommands.getter()
{
  v1 = direct field offset for CallingIntentContinueInAppStrategy.additionalCommands;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t CallingIntentContinueInAppStrategy.additionalCommands.setter(uint64_t a1)
{
  v3 = direct field offset for CallingIntentContinueInAppStrategy.additionalCommands;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t CallingIntentContinueInAppStrategy.init(sharedGlobals:startCallCATsSimple:phoneCallDisplayTextCATsSimple:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  static UnlockDevicePolicy.default.getter();
  *(v3 + direct field offset for CallingIntentContinueInAppStrategy.additionalCommands) = _swiftEmptyArrayStorage;
  outlined init with take of PhoneCallFeatureFlagProviding(a1, v3 + 16);
  *(v3 + 56) = a2;
  *(v3 + 64) = a3;
  return v3;
}

uint64_t CallingIntentContinueInAppStrategy.makeContinueInAppAutoPunchOutResponse(intentResolutionRecord:)()
{
  OUTLINED_FUNCTION_2_0();
  v2 = *(v1 + 200);
  v9 = v2 + *v2;
  v3 = v2[1];
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 16) = v4;
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_27_8(v4);

  return v7(v6);
}

uint64_t CallingIntentContinueInAppStrategy.makeContinueInAppResponse(intentResolutionRecord:)()
{
  OUTLINED_FUNCTION_2_0();
  v2 = *(v1 + 224);
  v9 = v2 + *v2;
  v3 = v2[1];
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 16) = v4;
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_27_8(v4);

  return v7(v6);
}

uint64_t CallingIntentContinueInAppStrategy.makePromptForDeviceUnlock()()
{
  OUTLINED_FUNCTION_15();
  v1[12] = v2;
  v1[13] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  OUTLINED_FUNCTION_21(v3);
  v5 = *(v4 + 64);
  v1[14] = OUTLINED_FUNCTION_45();
  v6 = type metadata accessor for TemplatingText();
  v1[15] = v6;
  OUTLINED_FUNCTION_13_2(v6);
  v1[16] = v7;
  v9 = *(v8 + 64);
  v1[17] = OUTLINED_FUNCTION_45();
  v10 = type metadata accessor for TemplatingSection();
  v1[18] = v10;
  OUTLINED_FUNCTION_13_2(v10);
  v1[19] = v11;
  v13 = *(v12 + 64);
  v1[20] = OUTLINED_FUNCTION_45();
  v14 = type metadata accessor for TemplatingResult();
  v1[21] = v14;
  OUTLINED_FUNCTION_13_2(v14);
  v1[22] = v15;
  v17 = *(v16 + 64);
  v1[23] = OUTLINED_FUNCTION_45();
  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v18, v19, v20);
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_31_4(*(v1 + 104));
  v2 = *(v0 + 8);
  v3 = OUTLINED_FUNCTION_4_3();
  v4(v3);
  v5 = async function pointer to static ResponseTemplates.unlockDeviceSegue(deviceState:)[1];
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v1 + 192) = v6;
  *v6 = v7;
  v6[1] = CallingIntentContinueInAppStrategy.makePromptForDeviceUnlock();
  v8 = *(v1 + 184);

  return static ResponseTemplates.unlockDeviceSegue(deviceState:)(v8, v1 + 16);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  v3 = v2;
  OUTLINED_FUNCTION_13_1();
  *v4 = v3;
  v6 = *(v5 + 192);
  v7 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v8 = v7;
  *(v3 + 200) = v0;

  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v3 + 16, &_s11SiriKitFlow11DeviceState_pSgMd, &_s11SiriKitFlow11DeviceState_pSgMR);
  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v9, v10, v11);
}

{
  v1 = *(v0 + 184);
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SAUIAddDialogs, SAUIAddDialogs_ptr);
  result = TemplatingResult.sections.getter();
  if (*(result + 16))
  {
    v15 = *(v0 + 184);
    v3 = *(v0 + 160);
    v16 = *(v0 + 176);
    v17 = *(v0 + 168);
    v5 = *(v0 + 144);
    v4 = *(v0 + 152);
    v7 = *(v0 + 128);
    v6 = *(v0 + 136);
    v8 = *(v0 + 112);
    v9 = *(v0 + 120);
    v10 = *(v0 + 96);
    (*(v4 + 16))(v3, result + ((*(v4 + 80) + 32) & ~*(v4 + 80)), v5);

    TemplatingSection.content.getter();
    (*(v4 + 8))(v3, v5);
    TemplatingText.text.getter();
    (*(v7 + 8))(v6, v9);
    TemplatingResult.templateIdentifier.getter();
    v11 = SAUIAddDialogs.init(dialogString:templateIdentifier:)();
    v12 = type metadata accessor for NLContextUpdate();
    __swift_storeEnumTagSinglePayload(v8, 1, 1, v12);
    v13 = type metadata accessor for AceOutput();
    *(v0 + 72) = 0u;
    *(v0 + 88) = 0;
    *(v0 + 56) = 0u;
    v10[3] = v13;
    v10[4] = &protocol witness table for AceOutput;
    __swift_allocate_boxed_opaque_existential_1(v10);
    static AceOutputHelper.makeAceOutput(addDialogs:nlContextUpdate:additionalCommands:flowActivity:)();

    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v0 + 56, &_s11SiriKitFlow0C8Activity_pSgMd, &_s11SiriKitFlow0C8Activity_pSgMR);
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v8, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
    (*(v16 + 8))(v15, v17);

    OUTLINED_FUNCTION_11();

    return v14();
  }

  else
  {
    __break(1u);
  }

  return result;
}

{
  OUTLINED_FUNCTION_27();
  v1 = v0[23];
  v2 = v0[20];
  v3 = v0[17];
  v4 = v0[14];

  OUTLINED_FUNCTION_11();
  v6 = v0[25];

  return v5();
}

uint64_t CallingIntentContinueInAppStrategy.makeIntentHandledOutput(intentResolutionRecord:)(uint64_t a1, uint64_t a2)
{
  v3[85] = v2;
  v3[84] = a2;
  v3[83] = a1;
  OUTLINED_FUNCTION_2_0();
  v30 = v5;
  v3[86] = v5;
  v6 = type metadata accessor for ResponseMode();
  OUTLINED_FUNCTION_21(v6);
  v8 = *(v7 + 64);
  v3[87] = OUTLINED_FUNCTION_45();
  v9 = type metadata accessor for Locale();
  v3[88] = v9;
  OUTLINED_FUNCTION_13_2(v9);
  v3[89] = v10;
  v12 = *(v11 + 64);
  v3[90] = OUTLINED_FUNCTION_45();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v13);
  v15 = *(v14 + 64) + 15;
  v3[91] = swift_task_alloc();
  v3[92] = swift_task_alloc();
  v3[93] = swift_task_alloc();
  v16 = type metadata accessor for DialogPhase();
  OUTLINED_FUNCTION_21(v16);
  v18 = *(v17 + 64);
  v3[94] = OUTLINED_FUNCTION_45();
  v19 = type metadata accessor for OutputGenerationManifest();
  v3[95] = v19;
  OUTLINED_FUNCTION_13_2(v19);
  v3[96] = v20;
  v22 = *(v21 + 64);
  v3[97] = OUTLINED_FUNCTION_45();
  v23 = *(v30 + 232);
  OUTLINED_FUNCTION_24_5();
  v29 = (v24 + *v24);
  v26 = *(v25 + 4);
  v27 = swift_task_alloc();
  v3[98] = v27;
  *v27 = v3;
  v27[1] = CallingIntentContinueInAppStrategy.makeIntentHandledOutput(intentResolutionRecord:);

  return (v29)(a2, 0);
}

uint64_t CallingIntentContinueInAppStrategy.makeIntentHandledOutput(intentResolutionRecord:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_61_0();
  OUTLINED_FUNCTION_31();
  v13 = v12;
  OUTLINED_FUNCTION_28();
  v15 = v14;
  OUTLINED_FUNCTION_13_1();
  *v16 = v15;
  v18 = *(v17 + 784);
  v19 = *v11;
  OUTLINED_FUNCTION_4_2();
  *v20 = v19;

  if (v10)
  {
    v21 = v15[97];
    v22 = v15[94];
    v23 = v15[93];
    v24 = v15[92];
    v25 = v15[91];
    v26 = v15[90];
    v27 = v15[87];

    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_60();

    return v29(v28, v29, v30, v31, v32, v33, v34, v35, a9, a10);
  }

  else
  {
    v15[99] = v13;
    OUTLINED_FUNCTION_66_0();
    OUTLINED_FUNCTION_60();

    return _swift_task_switch(v37, v38, v39);
  }
}

{
  OUTLINED_FUNCTION_61_0();
  OUTLINED_FUNCTION_31();
  v11 = v10[97];
  v12 = v10[96];
  v13 = v10[95];
  OUTLINED_FUNCTION_0_32();
  (*(v14 + 8))(v11);
  __swift_destroy_boxed_opaque_existential_1(v10 + 21);

  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_60();

  return v16(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10);
}

{
  OUTLINED_FUNCTION_61_0();
  OUTLINED_FUNCTION_31();
  v11 = v10[100];
  (*(v10[96] + 8))(v10[97], v10[95]);
  *(v11 + 16) = 0;

  v12 = v10[102];
  v13 = v10[97];
  OUTLINED_FUNCTION_0_32();

  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_60();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10);
}

void CallingIntentContinueInAppStrategy.makeIntentHandledOutput(intentResolutionRecord:)()
{
  v1 = v0[99];
  v2 = v0[97];
  v3 = v0[94];
  v4 = v0[86];
  v5 = v0[85];
  v6 = v0[84];
  static DialogPhase.completion.getter();
  *(swift_task_alloc() + 16) = v1;
  OutputGenerationManifest.init(dialogPhase:_:)();

  v8 = v4[10];
  v7 = v4[11];
  v9 = type metadata accessor for IntentResolutionRecord();
  v10 = IntentResolutionRecord.intent.getter();
  v11 = v4[12];
  v12 = (*(v11 + 64))(v8, v11);
  v14 = v13;

  v15 = specialized Optional<A>.isNilOrEmpty.getter(v12, v14);

  v16 = v5[5];
  v17 = v5[6];
  __swift_project_boxed_opaque_existential_1(v5 + 2, v16);
  if ((*(v17 + 112))(v16, v17))
  {
    v18 = v5[5];
    v19 = v5[6];
    __swift_project_boxed_opaque_existential_1(v5 + 2, v18);
    (*(v19 + 8))(v18, v19);

    __swift_destroy_boxed_opaque_existential_1(v0 + 66);
  }

  if ((v15 & 1) == 0)
  {
    if (one-time initialization token for siriPhone != -1)
    {
      goto LABEL_79;
    }

    goto LABEL_7;
  }

  v20 = v0[89];
  v217 = v0[90];
  v220 = v0[88];
  v21 = v0[85];
  v22 = v0[84];
  v23 = v11;
  v24 = type metadata accessor for PhoneStartCallIntent(0);
  v25 = IntentResolutionRecord.intent.getter();
  v197 = v24;
  v203 = v23;
  v207 = v8;
  specialized PhoneStartCallIntent.__allocating_init(intent:isRelationshipRequest:)(v25, 0, v24, v8, v23);
  v201 = v26;
  v0[104] = v26;
  outlined init with copy of SignalProviding((v5 + 2), (v0 + 16));
  *(v0 + 104) = 1;
  v0[14] = 0xD000000000000013;
  v0[15] = 0x8000000000455210;
  v0[105] = specialized SiriPhoneHintGenerator.generateHint()();
  v0[106] = v27;
  v0[107] = v28;
  v0[108] = v29;
  outlined destroy of HangUpTipGenerator((v0 + 13));
  v30 = v5[6];
  __swift_project_boxed_opaque_existential_1(v5 + 2, v5[5]);
  v31 = *(v30 + 168);
  v32 = OUTLINED_FUNCTION_5();
  v33(v32, v30);
  v34 = v0[29];
  v35 = v0[30];
  __swift_project_boxed_opaque_existential_1(v0 + 26, v34);
  v202 = v9;
  v36 = IntentResolutionRecord.app.getter();
  v37 = *(*v21 + 144);
  v38 = *v21 + 144;
  v0[109] = v37;
  v0[110] = v38 & 0xFFFFFFFFFFFFLL | 0xFEF0000000000000;
  v214 = v37;
  v37();
  v39 = v0[35];
  __swift_project_boxed_opaque_existential_1(v0 + 31, v0[34]);
  v40 = v217;
  dispatch thunk of DeviceState.siriLocale.getter();
  (*(v35 + 16))(v36, v217, v34, v35);
  v42 = v41;

  v43 = v220;
  v218 = *(v20 + 8);
  v221 = v20 + 8;
  v218(v40, v43);
  __swift_destroy_boxed_opaque_existential_1(v0 + 31);
  if (v42)
  {
    v44 = v0[93];
    SpeakableString.init(print:speak:)();
    v45 = 0;
  }

  else
  {
    v45 = 1;
  }

  v62 = v0[93];
  v63 = v0[84];
  v64 = type metadata accessor for SpeakableString();
  __swift_storeEnumTagSinglePayload(v62, v45, 1, v64);
  __swift_destroy_boxed_opaque_existential_1(v0 + 26);
  IntentResolutionRecord.app.getter();
  v65 = App.appIdentifier.getter();
  v67 = v66;

  if (v67)
  {
    if (v65 == 0xD000000000000010 && v67 == 0x8000000000458F10)
    {
      HIDWORD(v199) = 1;
    }

    else
    {
      HIDWORD(v199) = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  else
  {
    HIDWORD(v199) = 0;
  }

  v69 = v0[85];
  v70 = v0[84];
  v71 = type metadata accessor for SirikitDeviceState();
  v0[111] = v71;
  (v214)(v224);
  v72 = SirikitDeviceState.__allocating_init(from:)();
  v0[112] = v72;
  v73 = IntentResolutionRecord.intent.getter();
  v0[113] = v73;
  objc_opt_self();
  v74 = swift_dynamicCastObjCClass();
  v200 = v72;
  if (v74)
  {
    v75 = v74;
    v76 = v0[84];
    v77 = IntentResolutionRecord.intentResponse.getter();
    v0[114] = v77;
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v78 = v77;
      v79 = OUTLINED_FUNCTION_20_15();
      if (static EmergencyUtils.requiresEmergencyConfirmation(intent:intentResponse:)(v79, v80))
      {
        OUTLINED_FUNCTION_32_7();
        v81 = v71[28];
        v82 = OUTLINED_FUNCTION_4_3();
        v84 = v83(v82);
        OUTLINED_FUNCTION_24_2(v84);
        v86 = (*(v85 + 120))(1);
        *(v0 + 1048) = v86 & 1;

        if (one-time initialization token for siriPhone != -1)
        {
          OUTLINED_FUNCTION_6_2();
        }

        v87 = type metadata accessor for Logger();
        __swift_project_value_buffer(v87, static Logger.siriPhone);
        v88 = Logger.logObject.getter();
        v89 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v88, v89))
        {
          v90 = swift_slowAlloc();
          *v90 = 67109120;
          *(v90 + 4) = v86 & 1;
          _os_log_impl(&dword_0, v88, v89, "#CallingIntentContinueInAppStrategy is emergency confirmation reprompt: %{BOOL}d", v90, 8u);
          OUTLINED_FUNCTION_26_0();
        }

        v91 = v0[85];

        v92 = *(v91 + 56);
        v0[115] = v92;
        v214();
        v93 = OUTLINED_FUNCTION_20_15();
        if (static EmergencyUtils.requiresEmergencyConfirmation(intent:intentResponse:)(v93, v94))
        {
          static EmergencyUtils.shouldOpenMicForEmergency(intent:deviceState:)(v75);
        }

        __swift_destroy_boxed_opaque_existential_1(v0 + 56);
        v155 = *(*v92 + class metadata base offset for StartCallCATsSimple + 592);

        v219 = v155 + *v155;
        v156 = v155[1];
        v157 = swift_task_alloc();
        v0[116] = v157;
        *v157 = v0;
        v157[1] = CallingIntentContinueInAppStrategy.makeIntentHandledOutput(intentResolutionRecord:);
        OUTLINED_FUNCTION_41_7();

        __asm { BRAA            X5, X16 }
      }
    }

    else
    {
      v78 = v73;
    }
  }

  else
  {
    v77 = v73;
  }

  OUTLINED_FUNCTION_32_7();
  v95 = v71[1];
  v96 = OUTLINED_FUNCTION_4_3();
  v97(v96);
  v98 = v0[40];
  __swift_project_boxed_opaque_existential_1(v0 + 36, v0[39]);
  OUTLINED_FUNCTION_14_7();
  v99 = DeviceState.isAuthenticatedForPhone.getter();
  __swift_destroy_boxed_opaque_existential_1(v0 + 36);
  if (v99)
  {
    v100 = v0[84];
    v101 = IntentResolutionRecord.intent.getter();
    v102 = (*(*(*(v203 + 8) + 8) + 8))(v207);

    if (v102)
    {
      v212 = v0;
      v224[0] = _swiftEmptyArrayStorage;
      v215 = specialized Array.count.getter(v102);
      v103 = 0;
      v208 = v102 & 0xFFFFFFFFFFFFFF8;
      v210 = v102 & 0xC000000000000001;
      v198 = _swiftEmptyArrayStorage;
      while (v215 != v103)
      {
        if (v210)
        {
          v104 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v103 >= *(v208 + 16))
          {
            goto LABEL_76;
          }

          v104 = *(v102 + 8 * v103 + 32);
        }

        v105 = v104;
        if (__OFADD__(v103, 1))
        {
          __break(1u);
LABEL_76:
          __break(1u);
LABEL_77:
          __break(1u);
LABEL_78:
          __break(1u);
LABEL_79:
          OUTLINED_FUNCTION_6_2();
LABEL_7:
          v46 = type metadata accessor for Logger();
          __swift_project_value_buffer(v46, static Logger.siriPhone);
          v47 = Logger.logObject.getter();
          v48 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v47, v48))
          {
            *swift_slowAlloc() = 0;
            OUTLINED_FUNCTION_14_1(&dword_0, v49, v50, "#CallingIntentContinueInAppStrategy: Calling intentHandledResponseWithFaceTimeLink");
            OUTLINED_FUNCTION_26_0();
          }

          v51 = v0[85];

          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
          v52 = swift_allocObject();
          v0[100] = v52;
          *(v52 + 16) = xmmword_426260;
          v53 = *(v51 + 56);
          OUTLINED_FUNCTION_2_0();
          v55 = *(v54 + class metadata base offset for StartCallCATsSimple + 608);
          OUTLINED_FUNCTION_24_5();
          v222 = v56 + *v56;
          v58 = *(v57 + 4);
          v59 = swift_task_alloc();
          v0[101] = v59;
          *v59 = v0;
          v59[1] = CallingIntentContinueInAppStrategy.makeIntentHandledOutput(intentResolutionRecord:);
          OUTLINED_FUNCTION_41_7();

          __asm { BRAA            X0, X16 }
        }

        v204 = v103 + 1;
        v0 = v212;
        v106 = v212[90];
        v107 = v212[88];
        type metadata accessor for PhonePerson(0);
        static Device.current.getter();
        v108 = v212[55];
        __swift_project_boxed_opaque_existential_1(v0 + 51, v0[54]);
        OUTLINED_FUNCTION_45_6();
        __swift_destroy_boxed_opaque_existential_1(v212 + 51);
        v109 = static PhonePerson.make(phonePerson:options:locale:)(v105, 0, v106);

        v218(v106, v107);
        ++v103;
        if (v109)
        {
          UniqueAndReserveCapacityIfNot = specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          OUTLINED_FUNCTION_36_10(UniqueAndReserveCapacityIfNot, v111, v112, v113, v114, v115, v116, v117, v198, v199, v200, v201, v202, v204, v208, v210, v212, v215, v218, v221, v224[0]);
          if (v118)
          {
            OUTLINED_FUNCTION_30_10();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v198 = v224[0];
          v103 = v205;
        }
      }

      v0 = v212;
      v145 = v198;
    }

    else
    {
      v145 = _swiftEmptyArrayStorage;
    }

    type metadata accessor for PhonePersonList.Builder();
    v147 = swift_allocObject();
    *(v147 + 16) = _swiftEmptyArrayStorage;
    v148 = (v147 + 16);
    swift_beginAccess();
    *v148 = v145;
    type metadata accessor for PhonePersonList();
    swift_allocObject();
    v149 = OUTLINED_FUNCTION_25_9();
    v150 = PhonePersonList.init(builder:)(v149);

    v151 = v201;
LABEL_72:
    v0[119] = v151;
    v0[118] = v150;
    v187 = v0[84];
    v188 = *(v0[85] + 56);
    v0[120] = v188;

    IntentResolutionRecord.app.getter();
    App.isFirstParty()();

    v189 = *(*v188 + class metadata base offset for StartCallCATsSimple + 576);
    OUTLINED_FUNCTION_24_5();
    v223 = v190 + *v190;
    v192 = *(v191 + 4);
    v193 = swift_task_alloc();
    v0[121] = v193;
    *v193 = v0;
    v193[1] = CallingIntentContinueInAppStrategy.makeIntentHandledOutput(intentResolutionRecord:);
    v194 = v0[93];
    OUTLINED_FUNCTION_41_7();

    __asm { BRAA            X7, X16 }
  }

  OUTLINED_FUNCTION_32_7();
  v119 = v71[9];
  v120 = OUTLINED_FUNCTION_4_3();
  v122 = v121(v120);
  v123 = OUTLINED_FUNCTION_24_2(v122);
  (*(v124 + 216))(v123);

  if (v0[6])
  {
    outlined init with copy of PhoneCallFlowState<INHangUpCallIntent, INHangUpCallIntentResponse>((v0 + 8), (v0 + 41), &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMR);
    outlined destroy of TransformationResult((v0 + 2));
    if (v0[44])
    {
      v125 = v0[45];
      __swift_project_boxed_opaque_existential_1(v0 + 41, v0[44]);
      v126 = OUTLINED_FUNCTION_14_7();
      v128 = PhoneCallNLIntent.getPersons()(v126, v127);
      __swift_destroy_boxed_opaque_existential_1(v0 + 41);
      v224[0] = _swiftEmptyArrayStorage;
      v213 = v128;
      v216 = specialized Array.count.getter(v128);
      v129 = 0;
      v209 = v128 & 0xFFFFFFFFFFFFFF8;
      v211 = v128 & 0xC000000000000001;
      v206 = _swiftEmptyArrayStorage;
      while (v216 != v129)
      {
        if (v211)
        {
          v130 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v129 >= *(v209 + 16))
          {
            goto LABEL_78;
          }

          v130 = *(v213 + 8 * v129 + 32);
        }

        v131 = v130;
        v132 = v129 + 1;
        if (__OFADD__(v129, 1))
        {
          goto LABEL_77;
        }

        v133 = v0[90];
        v134 = v0[88];
        type metadata accessor for PhonePerson(0);
        static Device.current.getter();
        v135 = v0[50];
        __swift_project_boxed_opaque_existential_1(v0 + 46, v0[49]);
        OUTLINED_FUNCTION_45_6();
        __swift_destroy_boxed_opaque_existential_1(v0 + 46);
        v136 = static PhonePerson.make(phonePerson:options:locale:)(v131, 0, v133);

        v218(v133, v134);
        ++v129;
        if (v136)
        {
          v137 = specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          OUTLINED_FUNCTION_36_10(v137, v138, v139, v140, v141, v142, v143, v144, v197, v199, v200, v201, v202, v206, v209, v211, v213, v216, v218, v221, v224[0]);
          if (v118)
          {
            OUTLINED_FUNCTION_30_10();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v206 = v224[0];
          v129 = v132;
        }
      }

      v146 = v206;
      goto LABEL_71;
    }

    v152 = &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMd;
    v153 = &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMR;
    v154 = (v0 + 41);
  }

  else
  {
    v152 = &_s27PhoneCallFlowDelegatePlugin20TransformationResultVSgMd;
    v153 = &_s27PhoneCallFlowDelegatePlugin20TransformationResultVSgMR;
    v154 = (v0 + 2);
  }

  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v154, v152, v153);
  v146 = _swiftEmptyArrayStorage;
LABEL_71:
  v160 = v0[92];
  type metadata accessor for PhonePersonList.Builder();
  v161 = swift_allocObject();
  *(v161 + 16) = _swiftEmptyArrayStorage;
  v162 = (v161 + 16);
  swift_beginAccess();
  *v162 = v146;
  type metadata accessor for PhonePersonList();
  swift_allocObject();
  v163 = OUTLINED_FUNCTION_25_9();
  v150 = PhonePersonList.init(builder:)(v163);
  v164 = type metadata accessor for PhoneStartCallIntent.Builder(0);
  v165 = *(v164 + 48);
  v166 = *(v164 + 52);
  swift_allocObject();
  PhoneStartCallIntent.Builder.init()();
  OUTLINED_FUNCTION_12_22(OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin20PhoneStartCallIntent_callCapability);
  OUTLINED_FUNCTION_35_0();
  v168 = *(v167 + 288);
  swift_retain_n();
  v168(v160);

  v169 = OUTLINED_FUNCTION_20_15();
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v169, v170, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_12_22(OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin20PhoneStartCallIntent_audioRoute);
  OUTLINED_FUNCTION_37();
  (*(v171 + 304))(v160);

  v172 = OUTLINED_FUNCTION_20_15();
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v172, v173, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_12_22(OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin20PhoneStartCallIntent_preferredCallProvider);
  OUTLINED_FUNCTION_35_0();
  (*(v174 + 320))(v160);

  v175 = OUTLINED_FUNCTION_20_15();
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v175, v176, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_12_22(OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin20PhoneStartCallIntent_destinationType);
  OUTLINED_FUNCTION_37();
  (*(v177 + 336))(v160);

  v178 = OUTLINED_FUNCTION_20_15();
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v178, v179, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_35_0();
  v181 = (*(v180 + 352))(v150);

  v182 = *(v201 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin20PhoneStartCallIntent_callGroups);
  v183 = *(*v181 + 368);

  v183(v184);
  OUTLINED_FUNCTION_5();

  v185 = *(v197 + 48);
  v186 = *(v197 + 52);
  swift_allocObject();
  OUTLINED_FUNCTION_25_9();
  v151 = PhoneStartCallIntent.init(builder:)();

  goto LABEL_72;
}

{
  OUTLINED_FUNCTION_39_4();
  v1 = v0[114];
  v2 = v0[113];
  OUTLINED_FUNCTION_26_12();
  v3 = v0[104];
  v4 = v0[96];
  v11 = v0[95];
  v12 = v0[97];
  v5 = v0[93];

  OUTLINED_FUNCTION_48_7();

  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v5, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  (*(v4 + 8))(v12, v11);
  v7 = v0[117];
  v8 = v0[97];
  OUTLINED_FUNCTION_0_32();

  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_15_11();

  __asm { BRAA            X1, X16 }
}

uint64_t CallingIntentContinueInAppStrategy.makeIntentHandledOutput(intentResolutionRecord:)()
{
  OUTLINED_FUNCTION_27();
  v3 = v2;
  OUTLINED_FUNCTION_28();
  v5 = v4;
  OUTLINED_FUNCTION_13_1();
  *v6 = v5;
  v8 = *(v7 + 808);
  v9 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v10 = v9;
  *(v5 + 816) = v0;

  if (!v0)
  {
    *(v5 + 824) = v3;
  }

  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v11, v12, v13);
}

{
  OUTLINED_FUNCTION_27();
  *(v0[100] + 32) = v0[103];
  v0[129] = v0[100];
  v1 = v0[85];
  v2 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v1[5]);
  v3 = *(v2 + 136);
  v4 = OUTLINED_FUNCTION_5();
  v5(v4, v2);
  v6 = v0[25];
  __swift_project_boxed_opaque_existential_1(v0 + 21, v0[24]);
  v7 = *(v6 + 8);
  v8 = async function pointer to dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)[1];
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[130] = v9;
  *v9 = v10;
  v11 = OUTLINED_FUNCTION_6_22(v9);

  return dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)(v11, v12, v13, v14, v15);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v2[77] = v1;
  v2[78] = v4;
  v2[79] = v0;
  v6 = *(v5 + 928);
  v7 = *(v5 + 896);
  v8 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v9 = v8;
  *(v10 + 936) = v0;

  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v11, v12, v13);
}

{
  OUTLINED_FUNCTION_39_4();
  if (*(v1 + 1048) == 1)
  {
    OUTLINED_FUNCTION_31_4(*(v1 + 680));
    v2 = *(v0 + 224);
    v3 = OUTLINED_FUNCTION_4_3();
    v5 = v4(v3);
    v6 = OUTLINED_FUNCTION_24_2(v5);
    (*(v7 + 128))(v6);
  }

  OUTLINED_FUNCTION_31_4(*(v1 + 680));
  v8 = *(v0 + 8);
  v9 = OUTLINED_FUNCTION_4_3();
  v10(v9);
  v11 = *(v1 + 520);
  __swift_project_boxed_opaque_existential_1((v1 + 488), *(v1 + 512));
  v12 = OUTLINED_FUNCTION_14_7();
  v14 = DeviceState.isPrimaryDisplayDisabled.getter(v12, v13);
  __swift_destroy_boxed_opaque_existential_1((v1 + 488));
  v15 = *(v1 + 912);
  v16 = *(v1 + 904);
  if (v14)
  {
    v17 = *(v1 + 776);
    v18 = *(v1 + 696);
    static ResponseMode.voiceOnly.getter();
    OutputGenerationManifest.responseMode.setter();
  }

  v19 = *(v1 + 920);
  v20 = *(v1 + 832);
  OUTLINED_FUNCTION_17_10(*(v1 + 624));
  v21();
  *(v1 + 1000) = SirikitDeviceState.__allocating_init(from:)();
  if (v16)
  {
    OUTLINED_FUNCTION_47_8();
    String.toSpeakableString.getter();

    v22 = 0;
  }

  else
  {
    v22 = 1;
  }

  v23 = *(v1 + 728);
  v24 = type metadata accessor for SpeakableString();
  __swift_storeEnumTagSinglePayload(v23, v22, 1, v24);
  OUTLINED_FUNCTION_37();
  v26 = *(v25 + class metadata base offset for StartCallCATsSimple + 496);
  OUTLINED_FUNCTION_24_5();
  v34 = v27 + *v27;
  v29 = *(v28 + 4);
  v30 = swift_task_alloc();
  *(v1 + 1008) = v30;
  *v30 = v1;
  v31 = OUTLINED_FUNCTION_8_25(v30);

  return v32(v31);
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v2[80] = v1;
  v2[81] = v4;
  v2[82] = v0;
  v6 = v5[121];
  v7 = v5[118];
  v8 = v5[112];
  v9 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v10 = v9;
  *(v11 + 976) = v0;

  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v12, v13, v14);
}

{
  OUTLINED_FUNCTION_39_4();
  v2 = v0[118];

  v3 = v0[120];
  v4 = v0[119];
  OUTLINED_FUNCTION_17_10(v0[81]);
  v5();
  v0[125] = SirikitDeviceState.__allocating_init(from:)();
  if (v1)
  {
    OUTLINED_FUNCTION_47_8();
    String.toSpeakableString.getter();

    v6 = 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = v0[91];
  v8 = type metadata accessor for SpeakableString();
  __swift_storeEnumTagSinglePayload(v7, v6, 1, v8);
  OUTLINED_FUNCTION_37();
  v10 = *(v9 + class metadata base offset for StartCallCATsSimple + 496);
  OUTLINED_FUNCTION_24_5();
  v18 = v11 + *v11;
  v13 = *(v12 + 4);
  v14 = swift_task_alloc();
  v0[126] = v14;
  *v14 = v0;
  v15 = OUTLINED_FUNCTION_8_25(v14);

  return v16(v15);
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v5 = v4[126];
  v6 = v4[125];
  v7 = v4[91];
  v8 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v9 = v8;
  *(v11 + 1016) = v10;
  *(v11 + 1024) = v0;

  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v7, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);

  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v12, v13, v14);
}

{
  OUTLINED_FUNCTION_19();
  v1 = v0[106];
  if (v1)
  {
    v2 = v0[127];
    v3 = v0[108];
    v4 = v0[107];
    v5 = v0[105];
    v6 = v0[106];

    HintInstance.updateHintHistory(_:)(v2, v5, v1, v4);

    v33 = v0[106];
  }

  else
  {
    v33 = 0;
  }

  v7 = v0[127];
  v8 = v0[124];
  v9 = v0[123];
  v10 = v0[112];
  v11 = v0[108];
  v12 = v0[107];
  v13 = v0[105];
  v14 = v0[93];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_427BB0;
  *(v15 + 32) = v8;
  *(v15 + 40) = v7;

  outlined consume of HintInstance?(v13, v33);

  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v14, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v0[129] = v15;
  v16 = v0[85];
  v17 = v16[6];
  __swift_project_boxed_opaque_existential_1(v16 + 2, v16[5]);
  v18 = *(v17 + 136);
  v19 = OUTLINED_FUNCTION_5();
  v20(v19, v17);
  v21 = v0[25];
  __swift_project_boxed_opaque_existential_1(v0 + 21, v0[24]);
  v22 = *(v21 + 8);
  v23 = async function pointer to dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)[1];
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[130] = v24;
  *v24 = v25;
  OUTLINED_FUNCTION_6_22(v24);
  OUTLINED_FUNCTION_16();

  return dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)(v26, v27, v28, v29, v30);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  v2 = *(v1 + 1040);
  v3 = *(v1 + 1032);
  v4 = *v0;
  OUTLINED_FUNCTION_4_2();
  *v5 = v4;

  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t CallingIntentContinueInAppStrategy.makeIntentHandledOutput(intentResolutionRecord:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_19();
  v13 = v12[119];
  v14 = v12[118];
  v15 = v12[112];
  v16 = v12[108];
  v17 = v12[107];
  v18 = v12[106];
  v19 = v12[105];
  v34 = v12[97];
  v20 = v12[96];
  v21 = v12[95];
  v22 = v12[93];

  outlined consume of HintInstance?(v19, v18);

  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v22, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  (*(v20 + 8))(v34, v21);
  v23 = v12[122];
  v24 = v12[97];
  OUTLINED_FUNCTION_0_32();

  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_16();

  return v26(v25, v26, v27, v28, v29, v30, v31, v32, v34, a10, a11, a12);
}

{
  OUTLINED_FUNCTION_19();
  v13 = v12[124];
  v14 = v12[123];
  OUTLINED_FUNCTION_26_12();
  v29 = v12[97];
  v15 = v12[96];
  v16 = v12[95];
  v17 = v12[93];

  OUTLINED_FUNCTION_48_7();

  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v17, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  (*(v15 + 8))(v29, v16);
  v18 = v12[128];
  v19 = v12[97];
  OUTLINED_FUNCTION_0_32();

  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_16();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, v29, a10, a11, a12);
}

uint64_t closure #1 in CallingIntentContinueInAppStrategy.makeIntentHandledOutput(intentResolutionRecord:)()
{
  OutputGenerationManifest.canUseServerTTS.setter();
  OutputGenerationManifest.listenAfterSpeaking.setter();

  return OutputGenerationManifest.additionalCommands.setter();
}

unint64_t specialized SiriPhoneHintGenerator.generateHint()()
{
  v1 = v0;
  v2 = v0[7];
  __swift_project_boxed_opaque_existential_1(v0 + 3, v0[6]);
  v3 = *(v2 + 8);
  v4 = OUTLINED_FUNCTION_1_1();
  v5(v4);
  __swift_project_boxed_opaque_existential_1(&v24, *(&v25 + 1));
  OUTLINED_FUNCTION_1_1();
  v6 = dispatch thunk of DeviceState.isHomePod.getter();
  __swift_destroy_boxed_opaque_existential_1(&v24);
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = v1[7];
  __swift_project_boxed_opaque_existential_1(v1 + 3, v1[6]);
  v8 = *(v7 + 64);
  v9 = OUTLINED_FUNCTION_1_1();
  v10(v9);
  v11 = *(&v25 + 1);
  v12 = v26;
  __swift_project_boxed_opaque_existential_1(&v24, *(&v25 + 1));
  v13 = *v1;
  v28 = Dictionary.init(dictionaryLiteral:)();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin21IdiomKeyedHintHistoryVyAA07OneTimehI0VGMd, &_s27PhoneCallFlowDelegatePlugin21IdiomKeyedHintHistoryVyAA07OneTimehI0VGMR);
  v15 = lazy protocol witness table accessor for type IdiomKeyedHintHistory<OneTimeHintHistory> and conformance IdiomKeyedHintHistory<A>();
  SiriPhoneDefaultsProviding.getOrDefault<A>(key:defaultValue:)(v13, &v28, v11, v14, v12, v15, &v29);

  __swift_destroy_boxed_opaque_existential_1(&v24);
  v16 = v29;
  v17 = specialized OneTimeHintGenerator<>.chooseHintIdentifier(history:)(v29);
  if (v18)
  {
    v19 = v17;
    outlined init with copy of HangUpTipGenerator(v1, &v24);
    v20 = swift_allocObject();
    v21 = v25;
    *(v20 + 16) = v24;
    *(v20 + 32) = v21;
    v22 = v27;
    *(v20 + 48) = v26;
    *(v20 + 64) = v22;
    *(v20 + 80) = v16;
  }

  else
  {

    return 0;
  }

  return v19;
}

uint64_t CallingIntentContinueInAppStrategy.makePostDialogCommands(intentResolutionRecord:dialogTemplating:)()
{
  OUTLINED_FUNCTION_15();
  v1[4] = v2;
  v1[5] = v0;
  v3 = *v0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow22IntentResolutionRecordVySo011INStartCallD0CSo0ghD8ResponseCGSgMd, &_s11SiriKitFlow22IntentResolutionRecordVySo011INStartCallD0CSo0ghD8ResponseCGSgMR);
  OUTLINED_FUNCTION_21(v4);
  v6 = *(v5 + 64);
  v1[6] = OUTLINED_FUNCTION_45();
  v7 = *(v3 + 80);
  v8 = *(v3 + 88);
  v9 = type metadata accessor for IntentResolutionRecord();
  v1[7] = v9;
  OUTLINED_FUNCTION_13_2(v9);
  v1[8] = v10;
  v12 = *(v11 + 64) + 15;
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow22IntentResolutionRecordVySo011INStartCallD0CSo0ghD8ResponseCGMd, &_s11SiriKitFlow22IntentResolutionRecordVySo011INStartCallD0CSo0ghD8ResponseCGMR);
  v1[11] = v13;
  OUTLINED_FUNCTION_13_2(v13);
  v1[12] = v14;
  v16 = *(v15 + 64);
  v1[13] = OUTLINED_FUNCTION_45();
  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v17, v18, v19);
}

{
  OUTLINED_FUNCTION_39_4();
  v62 = v0;
  v0[2] = _swiftEmptyArrayStorage;
  v1 = v0[11];
  v2 = v0[6];
  v3 = *(v0[8] + 16);
  v3(v0[10], v0[4], v0[7]);
  if (!swift_dynamicCast())
  {
    v27 = v0[6];
    __swift_storeEnumTagSinglePayload(v27, 1, 1, v0[11]);
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v27, &_s11SiriKitFlow22IntentResolutionRecordVySo011INStartCallD0CSo0ghD8ResponseCGSgMd, &_s11SiriKitFlow22IntentResolutionRecordVySo011INStartCallD0CSo0ghD8ResponseCGSgMR);
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2();
    }

    v28 = v0[9];
    v29 = v0[7];
    v30 = v0[4];
    v31 = type metadata accessor for Logger();
    __swift_project_value_buffer(v31, static Logger.siriPhone);
    v3(v28, v30, v29);
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.debug.getter();
    v34 = os_log_type_enabled(v32, v33);
    v36 = v0[8];
    v35 = v0[9];
    v37 = v0[7];
    if (v34)
    {
      v60 = v33;
      v38 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v61 = v59;
      *v38 = 136315138;
      v39 = IntentResolutionRecord.intent.getter();
      v40 = [v39 typeName];

      v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v43 = v42;

      (*(v36 + 8))(v35, v37);
      v44 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v41, v43, &v61);

      *(v38 + 4) = v44;
      _os_log_impl(&dword_0, v32, v60, "#CallingIntentContinueInAppStrategy: Building launch app command for %s", v38, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v59);
      OUTLINED_FUNCTION_26_0();
      OUTLINED_FUNCTION_26_0();
    }

    else
    {

      (*(v36 + 8))(v35, v37);
    }

    v45 = v0[7];
    v46 = v0[4];
    type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SAIntentGroupLaunchAppWithIntent, SAIntentGroupLaunchAppWithIntent_ptr);
    IntentResolutionRecord.app.getter();
    v47 = IntentResolutionRecord.intent.getter();
    v48 = IntentResolutionRecord.intentResponse.getter();
    v49 = static SAIntentGroupLaunchAppWithIntent.launchAppWithIntent(app:intent:intentResponse:)();

    v50 = v49;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*(&dword_10 + (v0[2] & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v0[2] & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    v51 = v0[13];
    v53 = v0[9];
    v52 = v0[10];
    v54 = v0[6];
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v55 = v0[2];

    OUTLINED_FUNCTION_3_20();
    OUTLINED_FUNCTION_15_11();

    __asm { BRAA            X2, X16 }
  }

  v5 = v0[12];
  v4 = v0[13];
  v6 = v0[11];
  v7 = v0[6];
  __swift_storeEnumTagSinglePayload(v7, 0, 1, v6);
  (*(v5 + 32))(v4, v7, v6);
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
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_14_1(&dword_0, v11, v12, "#CallingIntentContinueInAppStrategy: Building launch app command for INStartCallIntent");
    OUTLINED_FUNCTION_26_0();
  }

  v13 = v0[13];
  v14 = v0[5];

  v15 = swift_task_alloc();
  v0[14] = v15;
  *(v15 + 16) = v13;
  *(v15 + 24) = v14;
  v16 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v17 = swift_task_alloc();
  v0[15] = v17;
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SAIntentGroupLaunchAppWithIntent, SAIntentGroupLaunchAppWithIntent_ptr);
  *v17 = v0;
  v17[1] = CallingIntentContinueInAppStrategy.makePostDialogCommands(intentResolutionRecord:dialogTemplating:);
  OUTLINED_FUNCTION_66_0();
  OUTLINED_FUNCTION_15_11();

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v18, v19, v20, v21, v22, v23, v24, v25);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v5 = *(v4 + 120);
  v6 = *(v4 + 112);
  v7 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v8 = v7;
  *(v9 + 128) = v0;

  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v10, v11, v12);
}

{
  OUTLINED_FUNCTION_27();
  v1 = v0[10];
  v2 = v0[9];
  v3 = v0[6];
  (*(v0[12] + 8))(v0[13], v0[11]);

  OUTLINED_FUNCTION_11();
  v5 = v0[16];

  return v4();
}

uint64_t CallingIntentContinueInAppStrategy.makePostDialogCommands(intentResolutionRecord:dialogTemplating:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_61_0();
  OUTLINED_FUNCTION_31();
  v11 = *(v10 + 104);
  v12 = *(v10 + 88);
  v13 = *(*(v10 + 96) + 8);
  v14 = *(v10 + 24);
  v13(v11, v12);
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*(&dword_10 + (*(v10 + 16) & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*(v10 + 16) & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  v15 = *(v10 + 104);
  v17 = *(v10 + 72);
  v16 = *(v10 + 80);
  v18 = *(v10 + 48);
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v19 = *(v10 + 16);

  OUTLINED_FUNCTION_3_20();
  OUTLINED_FUNCTION_60();

  return v22(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10);
}

uint64_t closure #1 in CallingIntentContinueInAppStrategy.makePostDialogCommands(intentResolutionRecord:dialogTemplating:)(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t _s27PhoneCallFlowDelegatePlugin34CallingIntentContinueInAppStrategyC22makePostDialogCommands22intentResolutionRecord16dialogTemplatingSaySo13SABaseCommandCG07SiriKitC00gqR0Vyxq_G_AA05Startb3CatT7ServiceCSgtYaKFyScCySo019SAIntentGroupLaunchj4WithG0Cs5Error_pGXEfU_ys6ResultOyARsAS_pGYucATcfu_yAWYucfu0_(void *a1, char a2)
{
  if (a2)
  {
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo32SAIntentGroupLaunchAppWithIntentCs5Error_pGMd, &_sScCySo32SAIntentGroupLaunchAppWithIntentCs5Error_pGMR);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    v3 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo32SAIntentGroupLaunchAppWithIntentCs5Error_pGMd, &_sScCySo32SAIntentGroupLaunchAppWithIntentCs5Error_pGMR);
    return CheckedContinuation.resume(returning:)();
  }
}

uint64_t *CallingIntentContinueInAppStrategy.deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v1 = v0[7];

  v2 = v0[8];

  v3 = direct field offset for CallingIntentContinueInAppStrategy.authenticationPolicy;
  v4 = type metadata accessor for UnlockDevicePolicy();
  OUTLINED_FUNCTION_23_1(v4);
  (*(v5 + 8))(v0 + v3);
  v6 = *(v0 + direct field offset for CallingIntentContinueInAppStrategy.additionalCommands);

  return v0;
}

uint64_t CallingIntentContinueInAppStrategy.__deallocating_deinit()
{
  CallingIntentContinueInAppStrategy.deinit();
  OUTLINED_FUNCTION_35_0();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t protocol witness for ContinueInAppAutoPunchOutFlowStrategyAsync.makeContinueInAppAutoPunchOutResponse(intentResolutionRecord:) in conformance CallingIntentContinueInAppStrategy<A, B>(uint64_t a1, uint64_t a2)
{
  v6 = *(**v2 + 192);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = closure #1 in ActionableCallControlFlow.execute();

  return v10(a1, a2);
}

uint64_t protocol witness for HandleIntentFlowStrategyAsync.makePromptForDeviceUnlock(rchRecord:) in conformance CallingIntentContinueInAppStrategy<A, B>(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v9 = async function pointer to HandleIntentFlowStrategyAsync.makePromptForDeviceUnlock(rchRecord:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  v11 = a3[10];
  v12 = a3[11];
  v13 = a3[12];
  v14 = type metadata accessor for CallingIntentContinueInAppStrategy();
  *v10 = v4;
  v10[1] = closure #1 in ActionableCallControlFlow.execute();

  return HandleIntentFlowStrategyAsync.makePromptForDeviceUnlock(rchRecord:)(a1, a2, v14, a4);
}

uint64_t protocol witness for HandleIntentFlowStrategyAsync.makeHandoffForAuthenticationResponse(rchRecord:) in conformance CallingIntentContinueInAppStrategy<A, B>(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v9 = async function pointer to HandleIntentFlowStrategyAsync.makeHandoffForAuthenticationResponse(rchRecord:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  v11 = a3[10];
  v12 = a3[11];
  v13 = a3[12];
  v14 = type metadata accessor for CallingIntentContinueInAppStrategy();
  *v10 = v4;
  v10[1] = closure #1 in ActionableCallControlFlow.execute();

  return HandleIntentFlowStrategyAsync.makeHandoffForAuthenticationResponse(rchRecord:)(a1, a2, v14, a4);
}

uint64_t protocol witness for HandleIntentFlowStrategyAsync.makePreHandleIntentOutput(rchRecord:) in conformance CallingIntentContinueInAppStrategy<A, B>(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v9 = async function pointer to HandleIntentFlowStrategyAsync.makePreHandleIntentOutput(rchRecord:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  v11 = a3[10];
  v12 = a3[11];
  v13 = a3[12];
  v14 = type metadata accessor for CallingIntentContinueInAppStrategy();
  *v10 = v4;
  v10[1] = closure #1 in ActionableCallControlFlow.execute();

  return HandleIntentFlowStrategyAsync.makePreHandleIntentOutput(rchRecord:)(a1, a2, v14, a4);
}

uint64_t protocol witness for HandleIntentFlowStrategyAsync.makeIntentHandledResponse(rchRecord:) in conformance CallingIntentContinueInAppStrategy<A, B>(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v9 = async function pointer to HandleIntentFlowStrategyAsync.makeIntentHandledResponse(rchRecord:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  v11 = a3[10];
  v12 = a3[11];
  v13 = a3[12];
  v14 = type metadata accessor for CallingIntentContinueInAppStrategy();
  *v10 = v4;
  v10[1] = closure #1 in ActionableCallControlFlow.execute();

  return HandleIntentFlowStrategyAsync.makeIntentHandledResponse(rchRecord:)(a1, a2, v14, a4);
}

uint64_t protocol witness for HandleIntentFlowStrategyAsync.makeContinueInAppResponse(rchRecord:) in conformance CallingIntentContinueInAppStrategy<A, B>(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v9 = async function pointer to HandleIntentFlowStrategyAsync.makeContinueInAppResponse(rchRecord:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  v11 = a3[10];
  v12 = a3[11];
  v13 = a3[12];
  v14 = type metadata accessor for CallingIntentContinueInAppStrategy();
  *v10 = v4;
  v10[1] = closure #1 in ActionableCallControlFlow.execute();

  return HandleIntentFlowStrategyAsync.makeContinueInAppResponse(rchRecord:)(a1, a2, v14, a4);
}

uint64_t protocol witness for HandleIntentFlowStrategyAsync.makeInProgressResponse(rchRecord:) in conformance CallingIntentContinueInAppStrategy<A, B>(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v9 = async function pointer to HandleIntentFlowStrategyAsync.makeInProgressResponse(rchRecord:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  v11 = a3[10];
  v12 = a3[11];
  v13 = a3[12];
  v14 = type metadata accessor for CallingIntentContinueInAppStrategy();
  *v10 = v4;
  v10[1] = closure #1 in ActionableCallControlFlow.execute();

  return HandleIntentFlowStrategyAsync.makeInProgressResponse(rchRecord:)(a1, a2, v14, a4);
}

uint64_t protocol witness for HandleIntentFlowStrategyAsync.makeFailureHandlingIntentResponse(rchRecord:) in conformance CallingIntentContinueInAppStrategy<A, B>(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v9 = async function pointer to HandleIntentFlowStrategyAsync.makeFailureHandlingIntentResponse(rchRecord:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  v11 = a3[10];
  v12 = a3[11];
  v13 = a3[12];
  v14 = type metadata accessor for CallingIntentContinueInAppStrategy();
  *v10 = v4;
  v10[1] = closure #1 in ActionableCallControlFlow.execute();

  return HandleIntentFlowStrategyAsync.makeFailureHandlingIntentResponse(rchRecord:)(a1, a2, v14, a4);
}

uint64_t protocol witness for ContinueInAppDialogFlowStrategyAsync.makeContinueInAppResponse(intentResolutionRecord:) in conformance CallingIntentContinueInAppStrategy<A, B>(uint64_t a1, uint64_t a2)
{
  v6 = *(**v2 + 200);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = closure #1 in ActionableCallControlFlow.execute();

  return v10(a1, a2);
}

uint64_t protocol witness for HandleIntentFlowStrategyAsync.authenticationPolicy.getter in conformance CallingIntentContinueInAppStrategy<A, B>@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = direct field offset for CallingIntentContinueInAppStrategy.authenticationPolicy;
  v5 = type metadata accessor for UnlockDevicePolicy();
  v6 = OUTLINED_FUNCTION_23_1(v5);
  v8 = *(v7 + 16);

  return v8(a1, v3 + v4, v6);
}

uint64_t protocol witness for UnlockDeviceFlowStrategyAsync.makePromptForDeviceUnlock() in conformance CallingIntentContinueInAppStrategy<A, B>(uint64_t a1)
{
  v4 = *(**v1 + 216);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = closure #1 in ActionableCallControlFlow.execute();

  return v8(a1);
}

uint64_t protocol witness for IntentExtensionCommunicatingAsync.makeIntentExecutionBehavior(app:intent:) in conformance CallingIntentContinueInAppStrategy<A, B>(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v9 = async function pointer to IntentExtensionCommunicatingAsync.makeIntentExecutionBehavior(app:intent:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  v11 = a3[10];
  v12 = a3[11];
  v13 = a3[12];
  v14 = type metadata accessor for CallingIntentContinueInAppStrategy();
  *v10 = v4;
  v10[1] = protocol witness for IntentExtensionCommunicatingAsync.makeIntentExecutionBehavior(app:intent:) in conformance CallingIntentContinueInAppStrategy<A, B>;

  return IntentExtensionCommunicatingAsync.makeIntentExecutionBehavior(app:intent:)(a1, a2, v14, a4);
}

uint64_t protocol witness for IntentExtensionCommunicatingAsync.makeIntentExecutionBehavior(app:intent:) in conformance CallingIntentContinueInAppStrategy<A, B>()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_4_2();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_3_20();

  return v6(v5);
}

uint64_t specialized updateHintHistory #1 <A>(_:) in SiriPhoneHintGenerator.generateHint()(uint64_t a1, void *a2, uint64_t a3)
{
  v16[2] = a2;
  result = specialized Sequence.first(where:)(partial apply for specialized closure #1 in updateHintHistory #1 <A>(_:) in SiriPhoneHintGenerator.generateHint(), v16, a1);
  if (v6)
  {
    v7 = specialized OneTimeHintGenerator<>.makeUpdatedHintHistory(dialogIdentifier:previousHistory:)(result, v6, a3);

    v20 = v7;
    v8 = a2[6];
    v9 = a2[7];
    __swift_project_boxed_opaque_existential_1(a2 + 3, v8);
    (*(v9 + 64))(v17, v8, v9);
    v10 = v18;
    v11 = v19;
    __swift_project_boxed_opaque_existential_1(v17, v18);
    v12 = *(v11 + 16);
    v13 = *a2;
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin21IdiomKeyedHintHistoryVyAA07OneTimehI0VGMd, &_s27PhoneCallFlowDelegatePlugin21IdiomKeyedHintHistoryVyAA07OneTimehI0VGMR);
    v15 = lazy protocol witness table accessor for type IdiomKeyedHintHistory<OneTimeHintHistory> and conformance IdiomKeyedHintHistory<A>();
    v12(v13, &v20, v14, v15, v10, v11);

    return __swift_destroy_boxed_opaque_existential_1(v17);
  }

  return result;
}

uint64_t specialized closure #1 in updateHintHistory #1 <A>(_:) in SiriPhoneHintGenerator.generateHint()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 8);
  v5 = *(a3 + 16);
  lazy protocol witness table accessor for type String and conformance String();
  lazy protocol witness table accessor for type String and conformance String();
  return BidirectionalCollection<>.starts<A>(with:)() & 1;
}

uint64_t outlined consume of HintInstance?(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t type metadata completion function for CallingIntentContinueInAppStrategy()
{
  result = type metadata accessor for UnlockDevicePolicy();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t _s27PhoneCallFlowDelegatePlugin34CallingIntentContinueInAppStrategyC22makePostDialogCommands22intentResolutionRecord16dialogTemplatingSaySo13SABaseCommandCG07SiriKitC00gqR0Vyxq_G_AA05Startb3CatT7ServiceCSgtYaKFyScCySo019SAIntentGroupLaunchj4WithG0Cs5Error_pGXEfU_ys6ResultOyARsAS_pGYucATcfu_yAWYucfu0_TA(void *a1, char a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo32SAIntentGroupLaunchAppWithIntentCs5Error_pGMd, &_sScCySo32SAIntentGroupLaunchAppWithIntentCs5Error_pGMR);
  OUTLINED_FUNCTION_21(v4);
  v6 = *(v5 + 80);

  return _s27PhoneCallFlowDelegatePlugin34CallingIntentContinueInAppStrategyC22makePostDialogCommands22intentResolutionRecord16dialogTemplatingSaySo13SABaseCommandCG07SiriKitC00gqR0Vyxq_G_AA05Startb3CatT7ServiceCSgtYaKFyScCySo019SAIntentGroupLaunchj4WithG0Cs5Error_pGXEfU_ys6ResultOyARsAS_pGYucATcfu_yAWYucfu0_(a1, a2 & 1);
}

unint64_t lazy protocol witness table accessor for type IdiomKeyedHintHistory<OneTimeHintHistory> and conformance IdiomKeyedHintHistory<A>()
{
  result = lazy protocol witness table cache variable for type IdiomKeyedHintHistory<OneTimeHintHistory> and conformance IdiomKeyedHintHistory<A>;
  if (!lazy protocol witness table cache variable for type IdiomKeyedHintHistory<OneTimeHintHistory> and conformance IdiomKeyedHintHistory<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s27PhoneCallFlowDelegatePlugin21IdiomKeyedHintHistoryVyAA07OneTimehI0VGMd, &_s27PhoneCallFlowDelegatePlugin21IdiomKeyedHintHistoryVyAA07OneTimehI0VGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IdiomKeyedHintHistory<OneTimeHintHistory> and conformance IdiomKeyedHintHistory<A>);
  }

  return result;
}

void OUTLINED_FUNCTION_26_12()
{
  v1 = v0[112];
  v2 = v0[108];
  v3 = v0[107];
  v4 = v0[106];
  v5 = v0[105];
}

void *OUTLINED_FUNCTION_31_4@<X0>(void *a1@<X8>)
{
  v2 = a1[6];
  v3 = a1[5];

  return __swift_project_boxed_opaque_existential_1(a1 + 2, v3);
}

uint64_t OUTLINED_FUNCTION_45_6()
{

  return dispatch thunk of DeviceState.siriLocale.getter();
}

uint64_t OUTLINED_FUNCTION_47_8()
{
  v2 = v0[106];
  v3 = v0[105];
  v4 = v0[91];
}

void CallingIntentHandleIntentFlowStrategy.makeFailureHandlingIntentResponse(app:intent:intentResponse:_:)()
{
  OUTLINED_FUNCTION_66();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v13 = OUTLINED_FUNCTION_21(v12);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2();
  }

  v16 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_9_0(v16, static Logger.siriPhone);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = OUTLINED_FUNCTION_65_0();
    *v19 = 0;
    _os_log_impl(&dword_0, v17, v18, "#CallingIntentHandleIntentFlowStrategy makeFailureHandlingIntentResponse", v19, 2u);
    OUTLINED_FUNCTION_26_0();
  }

  type metadata accessor for TaskPriority();
  v20 = OUTLINED_FUNCTION_96();
  __swift_storeEnumTagSinglePayload(v20, v21, 1, v22);
  v23 = swift_allocObject();
  v23[2] = 0;
  v23[3] = 0;
  v23[4] = v1;
  v23[5] = v11;
  v23[6] = v9;
  v23[7] = v7;
  v23[8] = v5;
  v23[9] = v3;

  v24 = v9;
  v25 = v7;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5();

  OUTLINED_FUNCTION_65();
}

uint64_t closure #1 in CallingIntentHandleIntentFlowStrategy.makeFailureHandlingIntentResponse(app:intent:intentResponse:_:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[24] = a8;
  v8[25] = v21;
  v8[22] = a6;
  v8[23] = a7;
  v8[20] = a4;
  v8[21] = a5;
  v13 = type metadata accessor for PhoneError();
  v8[26] = v13;
  v14 = *(*(v13 - 8) + 64) + 15;
  v8[27] = swift_task_alloc();
  v18 = (*a4 + 344);
  v19 = (*v18 + **v18);
  v15 = (*v18)[1];
  v16 = swift_task_alloc();
  v8[28] = v16;
  *v16 = v8;
  v16[1] = closure #1 in CallingIntentHandleIntentFlowStrategy.makeFailureHandlingIntentResponse(app:intent:intentResponse:_:);

  return (v19)(v8 + 14, a5, a6, a7);
}

uint64_t closure #1 in CallingIntentHandleIntentFlowStrategy.makeFailureHandlingIntentResponse(app:intent:intentResponse:_:)()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v5 = *(v4 + 224);
  v6 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v7 = v6;
  *(v8 + 232) = v0;

  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v9, v10, v11);
}

{
  OUTLINED_FUNCTION_15();
  v1 = *(v0 + 192);
  v2 = *(v0 + 200);
  outlined init with copy of SignalProviding(v0 + 112, v0 + 64);
  *(v0 + 104) = 0;
  v1(v0 + 64);
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v0 + 64, &_ss6ResultOy11SiriKitFlow6Output_ps5Error_pGMd, &_ss6ResultOy11SiriKitFlow6Output_ps5Error_pGMR);
  __swift_destroy_boxed_opaque_existential_1((v0 + 112));
  v3 = *(v0 + 216);

  OUTLINED_FUNCTION_11();

  return v4();
}

{
  *(v0 + 152) = *(v0 + 232);
  v2 = *(v0 + 208);
  v1 = *(v0 + 216);
  swift_errorRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  OUTLINED_FUNCTION_19_0();
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 208);
    v4 = *(v0 + 216);
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      v5 = *(v0 + 232);
      v6 = *(v0 + 192);
      v7 = *(v0 + 200);
      v9 = *(v0 + 176);
      v8 = *(v0 + 184);
      v10 = *(v0 + 160);
      v11 = *(v0 + 168);

      OUTLINED_FUNCTION_5_23();
      _s27PhoneCallFlowDelegatePlugin0A5ErrorOWOhTm_2(v4, v12);
      CallingIntentHandleIntentFlowStrategy.makeLegacyFailureHandlingIntentOutput(app:intent:intentResponse:_:)();
      v13 = *(v0 + 152);

      goto LABEL_6;
    }

    _s27PhoneCallFlowDelegatePlugin0A5ErrorOWOhTm_2(v4, type metadata accessor for PhoneError);
  }

  v14 = *(v0 + 232);
  v16 = *(v0 + 192);
  v15 = *(v0 + 200);
  v17 = *(v0 + 152);

  *(v0 + 16) = v14;
  *(v0 + 56) = 1;
  swift_errorRetain();
  v16(v0 + 16);

  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v0 + 16, &_ss6ResultOy11SiriKitFlow6Output_ps5Error_pGMd, &_ss6ResultOy11SiriKitFlow6Output_ps5Error_pGMR);
LABEL_6:
  v18 = *(v0 + 216);

  OUTLINED_FUNCTION_11();

  return v19();
}

void CallingIntentHandleIntentFlowStrategy.makeLegacyFailureHandlingIntentOutput(app:intent:intentResponse:_:)()
{
  OUTLINED_FUNCTION_66();
  v115 = v1;
  v116 = v2;
  v4 = v3;
  v6 = v5;
  v117 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow25DucTemplatingLocalContextVSgMd, &_s11SiriKitFlow25DucTemplatingLocalContextVSgMR);
  v9 = OUTLINED_FUNCTION_21(v8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v114 = &v99 - v12;
  v13 = type metadata accessor for Locale();
  v14 = OUTLINED_FUNCTION_7(v13);
  v112 = v15;
  v113 = v14;
  v17 = *(v16 + 64);
  __chkstk_darwin(v14);
  OUTLINED_FUNCTION_4();
  v20 = v19 - v18;
  v21 = type metadata accessor for CATOption();
  v22 = OUTLINED_FUNCTION_21(v21);
  v24 = *(v23 + 64);
  __chkstk_darwin(v22);
  OUTLINED_FUNCTION_4();
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2();
  }

  v25 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_9_0(v25, static Logger.siriPhone);
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = OUTLINED_FUNCTION_65_0();
    *v28 = 0;
    _os_log_impl(&dword_0, v26, v27, "#CallingIntentHandleIntentFlowStrategy makeLegacyFailureHandlingIntentOutput ", v28, 2u);
    OUTLINED_FUNCTION_26_0();
  }

  objc_opt_self();
  v29 = swift_dynamicCastObjCClass();
  if (v29)
  {
    v30 = v29;
    objc_opt_self();
    OUTLINED_FUNCTION_74();
    v31 = swift_dynamicCastObjCClass();
    if (v31)
    {
      v108 = v0;
      v109 = v31;
      outlined init with copy of SignalProviding(v0 + 24, v127);
      type metadata accessor for StartCallCATs();
      v107 = v4;
      static CATOption.defaultMode.getter();
      OUTLINED_FUNCTION_49_5();
      v32 = CATWrapper.__allocating_init(options:globals:)();
      type metadata accessor for PhoneCallDisplayTextCATs();
      OUTLINED_FUNCTION_99();
      OUTLINED_FUNCTION_49_5();
      v111 = CATWrapper.__allocating_init(options:globals:)();
      type metadata accessor for PhoneCallCommonCATs();
      OUTLINED_FUNCTION_99();
      OUTLINED_FUNCTION_49_5();
      v110 = CATWrapper.__allocating_init(options:globals:)();
      type metadata accessor for UnsupportedFlowCATs();
      OUTLINED_FUNCTION_99();
      OUTLINED_FUNCTION_49_5();
      v33 = CATWrapper.__allocating_init(options:globals:)();
      v100 = v20;
      v34 = v33;
      v35 = type metadata accessor for AppInfoBuilder();
      v36 = swift_allocObject();
      type metadata accessor for TemplatingOperationManager();
      swift_allocObject();
      v105 = v36;

      v37 = TemplatingOperationManager.init()();
      v38 = type metadata accessor for StartCallCatTemplatingService();
      v39 = *(v38 + 48);
      v40 = *(v38 + 52);
      v41 = swift_allocObject();
      v106 = v30;
      v42 = v41;
      v126[3] = v35;
      v126[4] = &protocol witness table for AppInfoBuilder;
      v126[0] = v36;
      v103 = v32;
      *(v41 + direct field offset for StartCallCatTemplatingService.startCallCatFamily) = v32;
      v101 = v37;
      v102 = v34;
      *(v41 + direct field offset for StartCallCatTemplatingService.unsupportedFlowCats) = v34;
      *(v41 + direct field offset for StartCallCatTemplatingService.operationManager) = v37;
      outlined init with copy of SignalProviding(v127, v123);
      outlined init with copy of SignalProviding(v126, v122);

      static CATOption.defaultMode.getter();
      OUTLINED_FUNCTION_49_5();
      v43 = CATWrapper.__allocating_init(options:globals:)();
      v121[3] = &type metadata for LabelTemplatesProvider;
      v121[4] = &protocol witness table for LabelTemplatesProvider;
      v44 = swift_allocObject();
      v121[0] = v44;
      *(v44 + 16) = 0u;
      *(v44 + 32) = 0u;
      v45 = *v42;
      v104 = v6;
      v46 = (v42 + *(v45 + class metadata base offset for PhoneCallBaseCatTemplatingService + 16));
      *v46 = 0x3D65737561705C1BLL;
      v46[1] = 0xEC0000005C303532;
      OUTLINED_FUNCTION_70_0();
      v49 = v42 + *(v48 + v47 + 56);
      *v49 = v50;
      *(v49 + 1) = v50;
      *(v49 + 4) = 0;
      OUTLINED_FUNCTION_70_0();
      outlined init with copy of SignalProviding(v123, v42 + *(v52 + v51 + 72));
      v53 = v125;
      __swift_project_boxed_opaque_existential_1(v123, v124);
      v54 = *(v53 + 8);
      v55 = OUTLINED_FUNCTION_5();
      v56(v55, v53);
      OUTLINED_FUNCTION_70_0();
      v58 = *(v57 + class metadata base offset for PhoneCallBaseCatTemplatingService + 40);
      outlined init with take of PhoneCallFeatureFlagProviding(v120, v42 + v58);
      OUTLINED_FUNCTION_70_0();
      v60 = v110;
      *(v42 + *(v59 + class metadata base offset for PhoneCallBaseCatTemplatingService + 24)) = v111;
      OUTLINED_FUNCTION_70_0();
      *(v42 + *(v62 + v61 + 32)) = v60;
      OUTLINED_FUNCTION_70_0();
      outlined init with copy of SignalProviding(v122, v42 + *(v64 + v63 + 48));
      OUTLINED_FUNCTION_70_0();
      outlined init with copy of SignalProviding(v121, v42 + *(v65 + class metadata base offset for PhoneCallBaseCatTemplatingService + 64));
      OUTLINED_FUNCTION_70_0();
      v67 = *(v66 + class metadata base offset for PhoneCallBaseCatTemplatingService + 80);
      v99 = v43;
      *(v42 + v67) = v43;
      outlined init with copy of SignalProviding(v42 + v58, v120);
      OUTLINED_FUNCTION_21_9(v120);

      v68 = v100;
      dispatch thunk of DeviceState.siriLocale.getter();
      v119[0] = Locale.identifier.getter();
      v119[1] = v69;
      v118[0] = 45;
      v118[1] = 0xE100000000000000;
      v119[5] = 95;
      v119[6] = 0xE100000000000000;
      lazy protocol witness table accessor for type String and conformance String();
      v70 = v117;
      OUTLINED_FUNCTION_19_3();
      StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
      (*(v112 + 8))(v68, v113);

      type metadata accessor for INIntentSlotValueType(0);
      _s27PhoneCallFlowDelegatePlugin0A5ErrorOACs0F0AAWlTm_2(&lazy protocol witness table cache variable for type INIntentSlotValueType and conformance INIntentSlotValueType, type metadata accessor for INIntentSlotValueType);
      Dictionary.init(dictionaryLiteral:)();
      v71 = v124;
      v72 = v125;
      __swift_project_boxed_opaque_existential_1(v123, v124);
      (*(v72 + 24))(v119, v71, v72);
      outlined init with copy of SignalProviding(v42 + v58, v118);
      v73 = type metadata accessor for DucTemplatingLocalContext();
      __swift_storeEnumTagSinglePayload(v114, 1, 1, v73);
      DucTemplatingService.init(ducFamily:locale:extensionValueTypeNamesByValueType:aceServiceInvoker:deviceState:localContext:)();

      __swift_destroy_boxed_opaque_existential_1(v127);
      __swift_destroy_boxed_opaque_existential_1(v122);
      __swift_destroy_boxed_opaque_existential_1(v126);
      __swift_destroy_boxed_opaque_existential_1(v121);
      __swift_destroy_boxed_opaque_existential_1(v120);
      __swift_destroy_boxed_opaque_existential_1(v123);

      OUTLINED_FUNCTION_102_0();
      v74 = swift_allocObject();
      v75 = v107;
      v74[2] = v108;
      v74[3] = v70;
      v76 = v104;
      v74[4] = v104;
      v74[5] = v75;
      v77 = v116;
      v74[6] = v115;
      v74[7] = v77;
      v78 = v75;

      v79 = v76;

      dispatch thunk of DucTemplatingService.makeFailureHandlingIntentDialog(app:intent:intentResponse:_:)();

LABEL_15:
    }

LABEL_16:
    OUTLINED_FUNCTION_65();
    return;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    objc_opt_self();
    OUTLINED_FUNCTION_74();
    v80 = swift_dynamicCastObjCClass();
    if (!v80)
    {
      goto LABEL_16;
    }

    OUTLINED_FUNCTION_113(v80);
    type metadata accessor for StartCallCATs();
    v81 = v4;
    static CATOption.defaultMode.getter();
    OUTLINED_FUNCTION_49_5();
    CATWrapper.__allocating_init(options:globals:)();
    type metadata accessor for PhoneCallDisplayTextCATs();
    OUTLINED_FUNCTION_99();
    OUTLINED_FUNCTION_49_5();
    CATWrapper.__allocating_init(options:globals:)();
    type metadata accessor for PhoneCallCommonCATs();
    OUTLINED_FUNCTION_99();
    OUTLINED_FUNCTION_49_5();
    CATWrapper.__allocating_init(options:globals:)();
    type metadata accessor for AppInfoBuilder();
    swift_allocObject();
    v82 = type metadata accessor for StartAudioCallCatTemplatingService();
    v83 = *(v82 + 48);
    v84 = *(v82 + 52);
    swift_allocObject();
    OUTLINED_FUNCTION_75_1();
    specialized StartAudioCallCatTemplatingService.init(sharedGlobals:catFamily:displayTextCats:phoneCallCommonCats:appInfoBuilder:)();
    OUTLINED_FUNCTION_102_0();
    v85 = swift_allocObject();
    v86 = OUTLINED_FUNCTION_87_1(v85);

    v87 = v6;

LABEL_14:
    dispatch thunk of DucTemplatingService.makeFailureHandlingIntentDialog(app:intent:intentResponse:_:)();

    goto LABEL_15;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    objc_opt_self();
    OUTLINED_FUNCTION_74();
    v88 = swift_dynamicCastObjCClass();
    if (!v88)
    {
      goto LABEL_16;
    }

    OUTLINED_FUNCTION_113(v88);
    type metadata accessor for StartCallCATs();
    v89 = v4;
    static CATOption.defaultMode.getter();
    OUTLINED_FUNCTION_49_5();
    CATWrapper.__allocating_init(options:globals:)();
    type metadata accessor for PhoneCallDisplayTextCATs();
    OUTLINED_FUNCTION_99();
    OUTLINED_FUNCTION_49_5();
    CATWrapper.__allocating_init(options:globals:)();
    type metadata accessor for PhoneCallCommonCATs();
    OUTLINED_FUNCTION_99();
    OUTLINED_FUNCTION_49_5();
    CATWrapper.__allocating_init(options:globals:)();
    type metadata accessor for AppInfoBuilder();
    swift_allocObject();
    v90 = type metadata accessor for StartVideoCallTemplatingService();
    v91 = *(v90 + 48);
    v92 = *(v90 + 52);
    swift_allocObject();
    OUTLINED_FUNCTION_75_1();
    specialized StartVideoCallTemplatingService.init(sharedGlobals:catFamily:displayTextCats:phoneCallCommonCats:appInfoBuilder:)();
    OUTLINED_FUNCTION_102_0();
    v93 = swift_allocObject();
    v86 = OUTLINED_FUNCTION_87_1(v93);

    v94 = v6;

    goto LABEL_14;
  }

  v117 = Logger.logObject.getter();
  v95 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v117, v95))
  {
    v96 = OUTLINED_FUNCTION_65_0();
    OUTLINED_FUNCTION_11_1(v96);
    _os_log_impl(&dword_0, v117, v95, "#CallingIntentHandleIntentFlowStrategy makeFailureHandlingIntentLegacyOutput: intent is not a calling intent", v4, 2u);
    OUTLINED_FUNCTION_12_3();
  }

  OUTLINED_FUNCTION_65();
}

void CallingIntentHandleIntentFlowStrategy.makeCompletionViewOutput(app:intent:intentResponse:result:_:)()
{
  OUTLINED_FUNCTION_66();
  v58 = v1;
  v59 = v2;
  v52 = v3;
  v53 = v4;
  v50 = *v0;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  v6 = OUTLINED_FUNCTION_13_2(v5);
  v54 = v7;
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v6);
  v55 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  OUTLINED_FUNCTION_91();
  v57 = v11;
  v56 = type metadata accessor for TemplatingResult();
  v12 = OUTLINED_FUNCTION_7(v56);
  v14 = v13;
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(v12);
  v51 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  OUTLINED_FUNCTION_91();
  v19 = v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
  v21 = OUTLINED_FUNCTION_23_1(v20);
  v23 = *(v22 + 64);
  __chkstk_darwin(v21);
  v25 = &v46 - v24;
  v26 = OUTLINED_FUNCTION_55();
  outlined init with copy of ButtonConfigurationModel?(v26, v27, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(*v0 + 224))(*v25, v58, v59);
  }

  else
  {
    v28 = *(v14 + 32);
    v48 = v0;
    v49 = v28;
    v47 = v19;
    v29 = v25;
    v30 = v56;
    v28(v19, v29, v56);
    v31 = *(v50 + 264);
    v46 = *(v50 + 272);
    v50 = v31;
    v32 = *(*(v46 + 8) + 16);
    OUTLINED_FUNCTION_111_0();
    OUTLINED_FUNCTION_111_0();
    type metadata accessor for PhoneCallNLContextProvider();
    v33 = v57;
    static PhoneCallNLContextProvider.makeContextForHandleIntent(intent:handleIntentResponse:)();
    v34 = v51;
    (*(v14 + 16))(v51, v19, v30);
    v35 = v55;
    outlined init with copy of ButtonConfigurationModel?(v33, v55, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
    v36 = (*(v14 + 80) + 32) & ~*(v14 + 80);
    v37 = (v16 + v36 + 7) & 0xFFFFFFFFFFFFFFF8;
    v38 = (*(v54 + 80) + v37 + 8) & ~*(v54 + 80);
    v39 = swift_allocObject();
    v40 = v46;
    *(v39 + 16) = v50;
    *(v39 + 24) = v40;
    v49(v39 + v36, v34, v30);
    *(v39 + v37) = v48;
    outlined init with take of ButtonConfigurationModel?(v35, v39 + v38, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
    v41 = (v39 + ((v9 + v38 + 7) & 0xFFFFFFFFFFFFFFF8));
    v42 = v59;
    *v41 = v58;
    v41[1] = v42;

    CallingIntentHandleIntentFlowStrategy.makeUnsupportedViews(app:intent:intentResponse:_:)(v43, v44, v45, partial apply for closure #1 in CallingIntentHandleIntentFlowStrategy.makeCompletionViewOutput(app:intent:intentResponse:result:_:));

    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v57, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
    (*(v14 + 8))(v47, v30);
  }

  OUTLINED_FUNCTION_65();
}

uint64_t closure #1 in CallingIntentHandleIntentFlowStrategy.makeCompletionViewOutput(app:intent:intentResponse:result:_:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t *))
{
  if (a2)
  {
    v12[0] = a1;
    swift_errorRetain();
  }

  else
  {
    v11 = a1;

    closure #1 in closure #1 in CallingIntentHandleIntentFlowStrategy.makeCompletionViewOutput(app:intent:intentResponse:result:_:)(&v11, a4, v12);
    outlined consume of Result<[INPerson], Error>(a1, 0);
  }

  v13 = a2 & 1;
  a6(v12);
  return outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v12, &_ss6ResultOy11SiriKitFlow6Output_ps5Error_pGMd, &_ss6ResultOy11SiriKitFlow6Output_ps5Error_pGMR);
}

uint64_t closure #1 in closure #1 in CallingIntentHandleIntentFlowStrategy.makeCompletionViewOutput(app:intent:intentResponse:result:_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v5 = *a1;
  TemplatingResult.shouldListenAfterSpeaking(defaultBehavior:)(0);
  v6 = *(*a2 + 208);
  v7 = v6(v12);
  (v6)(v11, v7);
  __swift_project_boxed_opaque_existential_1(v11, v11[3]);
  dispatch thunk of DeviceState.isTextToSpeechEnabled.getter();
  memset(v9, 0, sizeof(v9));
  v10 = 0;
  a3[3] = type metadata accessor for AceOutput();
  a3[4] = &protocol witness table for AceOutput;
  __swift_allocate_boxed_opaque_existential_1(a3);
  static AceOutputHelper.makeCompletionViewOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v9, &_s11SiriKitFlow0C8Activity_pSgMd, &_s11SiriKitFlow0C8Activity_pSgMR);
  __swift_destroy_boxed_opaque_existential_1(v12);
  return __swift_destroy_boxed_opaque_existential_1(v11);
}

uint64_t CallingIntentHandleIntentFlowStrategy.makeIntentHandledOutput(app:intent:intentResponse:)(uint64_t a1)
{
  *(v1 + 16) = a1;
  OUTLINED_FUNCTION_66_0();
  return _swift_task_switch(v2, v3, v4);
}

uint64_t CallingIntentHandleIntentFlowStrategy.makeIntentHandledOutput(app:intent:intentResponse:)()
{
  OUTLINED_FUNCTION_23_0();
  v15 = v0;
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2();
  }

  v1 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_9_0(v1, static Logger.siriPhone);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.fault.getter();
  if (OUTLINED_FUNCTION_8_0(v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v14 = v5;
    *v4 = 136315138;
    *(v4 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000033, 0x8000000000458FC0, &v14);
    OUTLINED_FUNCTION_17_4();
    _os_log_impl(v6, v7, v8, v9, v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v5);
    OUTLINED_FUNCTION_26_0();
    OUTLINED_FUNCTION_12_3();
  }

  v11 = *(v0 + 16);
  type metadata accessor for EmptyOutput();
  static EmptyOutput.instance.getter();
  OUTLINED_FUNCTION_11();

  return v12();
}

uint64_t CallingIntentHandleIntentFlowStrategy.makeFailureHandlingIntentOutput(app:intent:intentResponse:)()
{
  OUTLINED_FUNCTION_15();
  v1[29] = v2;
  v1[30] = v0;
  v1[27] = v3;
  v1[28] = v4;
  v1[26] = v5;
  v1[31] = *v0;
  v6 = type metadata accessor for PhoneError();
  v1[32] = v6;
  OUTLINED_FUNCTION_21(v6);
  v8 = *(v7 + 64);
  v1[33] = OUTLINED_FUNCTION_45();
  v9 = type metadata accessor for ButtonConfigurationModel();
  v1[34] = v9;
  OUTLINED_FUNCTION_13_2(v9);
  v1[35] = v10;
  v12 = *(v11 + 64) + 15;
  v1[36] = swift_task_alloc();
  v1[37] = swift_task_alloc();
  v13 = type metadata accessor for OutputGenerationManifest();
  v1[38] = v13;
  OUTLINED_FUNCTION_13_2(v13);
  v1[39] = v14;
  v16 = *(v15 + 64);
  v1[40] = OUTLINED_FUNCTION_45();
  v17 = type metadata accessor for Locale();
  v1[41] = v17;
  OUTLINED_FUNCTION_13_2(v17);
  v1[42] = v18;
  v20 = *(v19 + 64);
  v1[43] = OUTLINED_FUNCTION_45();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin24ButtonConfigurationModelVSgMd, &_s27PhoneCallFlowDelegatePlugin24ButtonConfigurationModelVSgMR);
  OUTLINED_FUNCTION_21(v21);
  v23 = *(v22 + 64) + 15;
  v1[44] = swift_task_alloc();
  v1[45] = swift_task_alloc();
  v1[46] = swift_task_alloc();
  v1[47] = swift_task_alloc();
  v1[48] = swift_task_alloc();
  v1[49] = swift_task_alloc();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v24);
  v26 = *(v25 + 64) + 15;
  v1[50] = swift_task_alloc();
  v1[51] = swift_task_alloc();
  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v27, v28, v29);
}

{
  OUTLINED_FUNCTION_27();
  v2 = *v1;
  OUTLINED_FUNCTION_6();
  *v4 = v3;
  v5 = *(v2 + 424);
  v6 = *v1;
  OUTLINED_FUNCTION_13_1();
  *v7 = v6;
  *(v9 + 432) = v8;
  *(v9 + 440) = v0;

  v10 = *(v2 + 416);

  OUTLINED_FUNCTION_19_5();

  return _swift_task_switch(v11, v12, v13);
}

{
  OUTLINED_FUNCTION_27();
  v1 = *(v0 + 808);
  v2 = *(v0 + 400);
  v3 = type metadata accessor for SpeakableString();
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v3);
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 448) = v4;
  *v4 = v5;
  v4[1] = CallingIntentHandleIntentFlowStrategy.makeFailureHandlingIntentOutput(app:intent:intentResponse:);
  v6 = *(v0 + 400);
  v7 = *(v0 + 384);
  v8 = *(v0 + 240);
  v9 = *(v0 + 216);
  OUTLINED_FUNCTION_19_3();

  return CallingIntentHandleIntentFlowStrategy.getButtonConfigurationModel(app:intent:intentResponse:appNameSpeakable:isThirdPartyApp:)();
}

{
  OUTLINED_FUNCTION_27();
  v2 = *v1;
  OUTLINED_FUNCTION_6();
  *v4 = v3;
  v5 = *(v2 + 448);
  *v4 = *v1;
  *(v3 + 456) = v0;

  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(*(v2 + 400), &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_19_5();

  return _swift_task_switch(v6, v7, v8);
}

{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_28();
  v3 = v2;
  OUTLINED_FUNCTION_6();
  *v4 = v3;
  v6 = *(v5 + 464);
  *v4 = *v1;
  *(v3 + 472) = v7;
  *(v3 + 480) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_66_0();
    OUTLINED_FUNCTION_65_1();

    return _swift_task_switch(v8, v9, v10);
  }

  else
  {
    v12 = *(v3 + 808);
    v13 = *(v3 + 224);
    v14 = *(v3 + 232);
    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    *(v3 + 488) = v15;
    *v15 = v16;
    v15[1] = CallingIntentHandleIntentFlowStrategy.makeFailureHandlingIntentOutput(app:intent:intentResponse:);
    v17 = *(v3 + 408);
    v18 = *(v3 + 376);
    OUTLINED_FUNCTION_22_7();
    OUTLINED_FUNCTION_65_1();

    return CallingIntentHandleIntentFlowStrategy.getButtonConfigurationModel(app:intent:intentResponse:appNameSpeakable:isThirdPartyApp:)();
  }
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v5 = *(v4 + 488);
  v6 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v7 = v6;
  *(v8 + 496) = v0;

  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v9, v10, v11);
}

{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_28();
  v3 = v2;
  OUTLINED_FUNCTION_6();
  *v4 = v3;
  v6 = *(v5 + 512);
  *v4 = *v1;
  *(v3 + 520) = v7;
  *(v3 + 528) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_66_0();
    OUTLINED_FUNCTION_65_1();

    return _swift_task_switch(v8, v9, v10);
  }

  else
  {
    v12 = *(v3 + 808);
    v13 = *(v3 + 224);
    v14 = *(v3 + 232);
    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    *(v3 + 536) = v15;
    *v15 = v16;
    v15[1] = CallingIntentHandleIntentFlowStrategy.makeFailureHandlingIntentOutput(app:intent:intentResponse:);
    v17 = *(v3 + 408);
    v18 = *(v3 + 368);
    OUTLINED_FUNCTION_22_7();
    OUTLINED_FUNCTION_65_1();

    return CallingIntentHandleIntentFlowStrategy.getButtonConfigurationModel(app:intent:intentResponse:appNameSpeakable:isThirdPartyApp:)();
  }
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v5 = *(v4 + 536);
  v6 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v7 = v6;
  *(v8 + 544) = v0;

  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v9, v10, v11);
}

{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_28();
  v3 = v2;
  OUTLINED_FUNCTION_6();
  *v4 = v3;
  v6 = *(v5 + 552);
  *v4 = *v1;
  *(v3 + 560) = v7;
  *(v3 + 568) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_66_0();
    OUTLINED_FUNCTION_65_1();

    return _swift_task_switch(v8, v9, v10);
  }

  else
  {
    v12 = *(v3 + 808);
    v13 = *(v3 + 224);
    v14 = *(v3 + 232);
    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    *(v3 + 576) = v15;
    *v15 = v16;
    v15[1] = CallingIntentHandleIntentFlowStrategy.makeFailureHandlingIntentOutput(app:intent:intentResponse:);
    v17 = *(v3 + 408);
    v18 = *(v3 + 360);
    OUTLINED_FUNCTION_22_7();
    OUTLINED_FUNCTION_65_1();

    return CallingIntentHandleIntentFlowStrategy.getButtonConfigurationModel(app:intent:intentResponse:appNameSpeakable:isThirdPartyApp:)();
  }
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v5 = *(v4 + 576);
  v6 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v7 = v6;
  *(v8 + 584) = v0;

  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v9, v10, v11);
}

{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_80_1();
  OUTLINED_FUNCTION_4_2();
  *v4 = v3;
  v5 = v3[76];
  *v4 = *v2;
  v3[77] = v0;

  v6 = v3[75];
  v7 = v3[74];

  if (!v0)
  {
    v3[78] = v1;
  }

  OUTLINED_FUNCTION_19_5();
  OUTLINED_FUNCTION_65_1();

  return _swift_task_switch(v8, v9, v10);
}

{
  OUTLINED_FUNCTION_27();
  v3 = v2;
  OUTLINED_FUNCTION_28();
  v5 = v4;
  OUTLINED_FUNCTION_6();
  *v6 = v5;
  v8 = *(v7 + 632);
  v9 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v10 = v9;
  *(v5 + 640) = v0;

  if (!v0)
  {
    *(v5 + 648) = v3;
  }

  OUTLINED_FUNCTION_19_5();

  return _swift_task_switch(v11, v12, v13);
}

{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_80_1();
  OUTLINED_FUNCTION_4_2();
  *v4 = v3;
  v5 = v3[82];
  *v4 = *v2;
  v3[83] = v0;

  v6 = v3[52];

  if (!v0)
  {
    v3[84] = v1;
  }

  OUTLINED_FUNCTION_19_5();
  OUTLINED_FUNCTION_65_1();

  return _swift_task_switch(v7, v8, v9);
}

{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_80_1();
  OUTLINED_FUNCTION_4_2();
  *v4 = v3;
  v5 = v3[85];
  *v4 = *v2;
  v3[86] = v0;

  v6 = v3[52];

  if (!v0)
  {
    v3[87] = v1;
  }

  OUTLINED_FUNCTION_19_5();
  OUTLINED_FUNCTION_65_1();

  return _swift_task_switch(v7, v8, v9);
}

{
  OUTLINED_FUNCTION_27();
  v3 = v2;
  OUTLINED_FUNCTION_28();
  v5 = v4;
  OUTLINED_FUNCTION_6();
  *v6 = v5;
  v8 = *(v7 + 712);
  v9 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v10 = v9;
  *(v5 + 720) = v0;

  if (!v0)
  {
    *(v5 + 728) = v3;
  }

  OUTLINED_FUNCTION_19_5();

  return _swift_task_switch(v11, v12, v13);
}

{
  OUTLINED_FUNCTION_27();
  v3 = v2;
  OUTLINED_FUNCTION_28();
  v5 = v4;
  OUTLINED_FUNCTION_6();
  *v6 = v5;
  v8 = *(v7 + 744);
  v9 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v10 = v9;
  *(v5 + 752) = v0;

  if (!v0)
  {
    *(v5 + 760) = v3;
  }

  OUTLINED_FUNCTION_19_5();

  return _swift_task_switch(v11, v12, v13);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  v2 = v1;
  OUTLINED_FUNCTION_6();
  *v3 = v2;
  v5 = *(v4 + 784);
  v6 = *(v4 + 776);
  v7 = *v0;
  OUTLINED_FUNCTION_4_2();
  *v8 = v7;

  __swift_destroy_boxed_opaque_existential_1((v2 + 16));
  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v9, v10, v11);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  v2 = *(v1 + 800);
  v3 = *(v1 + 792);
  v4 = *v0;
  OUTLINED_FUNCTION_4_2();
  *v5 = v4;

  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v6, v7, v8);
}

void CallingIntentHandleIntentFlowStrategy.makeFailureHandlingIntentOutput(app:intent:intentResponse:)()
{
  v1 = *(v0 + 224);
  objc_opt_self();
  OUTLINED_FUNCTION_90();
  v2 = swift_dynamicCastObjCClass();
  if (!v2)
  {
    if (one-time initialization token for siriPhone != -1)
    {
      goto LABEL_88;
    }

    goto LABEL_8;
  }

  v3 = v2;
  v4 = *(v0 + 232);
  objc_opt_self();
  OUTLINED_FUNCTION_90();
  v5 = swift_dynamicCastObjCClass();
  if (!v5)
  {
    v57 = one-time initialization token for siriPhone;
    v58 = *(v0 + 224);
    if (v57 != -1)
    {
      OUTLINED_FUNCTION_6_2();
    }

    v59 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_9_0(v59, static Logger.siriPhone);
    v60 = Logger.logObject.getter();
    v61 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_8_0(v61))
    {
      v62 = OUTLINED_FUNCTION_65_0();
      OUTLINED_FUNCTION_11_1(v62);
      OUTLINED_FUNCTION_17_4();
      _os_log_impl(v63, v64, v65, v66, v67, 2u);
      OUTLINED_FUNCTION_12_3();
    }

    v69 = *(v0 + 256);
    v68 = *(v0 + 264);
    v70 = *(v0 + 248);
    v72 = *(v0 + 224);
    v71 = *(v0 + 232);

    OUTLINED_FUNCTION_82_1();
    _StringGuts.grow(_:)(58);
    v73._countAndFlagsBits = 0x6552746E65746E69;
    v73._object = 0xEF3D65736E6F7073;
    String.append(_:)(v73);
    *(v0 + 184) = v71;
    v74 = *(v70 + 264);
    v75 = *(*(*(v70 + 272) + 8) + 16);
    swift_getAssociatedTypeWitness();
    v76 = v71;
    OUTLINED_FUNCTION_54_8();
    v77._countAndFlagsBits = String.init<A>(describing:)();
    object = v77._object;
    String.append(_:)(v77);

    OUTLINED_FUNCTION_84_1();
    v79._countAndFlagsBits = object - 18;
    v79._object = (v80 | 0x8000000000000000);
    String.append(_:)(v79);
    OUTLINED_FUNCTION_69_1(v278);
    *(v68 + 48) = 103;
    OUTLINED_FUNCTION_55();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_16_21();
    _s27PhoneCallFlowDelegatePlugin0A5ErrorOACs0F0AAWlTm_2(v81, v82);
    OUTLINED_FUNCTION_74();
    swift_allocError();
    PhoneError.logged()(v83);
    OUTLINED_FUNCTION_5_23();
    _s27PhoneCallFlowDelegatePlugin0A5ErrorOWOhTm_2(v68, v84);
    swift_willThrow();

    goto LABEL_16;
  }

  v250 = v3;
  v266 = v5;
  v274 = v0;
  v6 = *(v0 + 408);
  v7 = *(v0 + 392);
  v259 = *(v0 + 272);
  v8 = *(v0 + 240);
  v9 = *(v0 + 232);
  v10 = *(v0 + 224);
  v11 = *(v274 + 216);
  v12 = type metadata accessor for SirikitDeviceState();
  v13 = *(*v8 + 208);
  v14 = v10;
  v13(&v278, v9);
  AssociatedTypeWitness = SirikitDeviceState.__allocating_init(from:)();
  *(v274 + 416) = AssociatedTypeWitness;
  v16 = v274;
  CallingIntentHandleIntentFlowStrategy.getSpeakableAppName(app:intent:)();
  *(v274 + 808) = App.isFirstParty()();
  v17 = v266;
  __swift_storeEnumTagSinglePayload(v7, 1, 1, v259);
  v18 = &unk_548000;
  v19 = [v266 code];
  switch(v19)
  {
    case 6uLL:
      v20 = *(v274 + 240);
      v21 = v20[7];
      __swift_project_boxed_opaque_existential_1(v20 + 3, v20[6]);
      v22 = *(v21 + 8);
      v23 = OUTLINED_FUNCTION_55();
      v24(v23);
      *(v274 + 504) = SirikitDeviceState.__allocating_init(from:)();
      OUTLINED_FUNCTION_83_1();
      v26 = *(v25 + class metadata base offset for StartCallCATsSimple + 368);
      OUTLINED_FUNCTION_24_5();
      v267 = v27 + *v27;
      v29 = *(v28 + 4);
      v30 = swift_task_alloc();
      *(v274 + 512) = v30;
      *v30 = v274;
      OUTLINED_FUNCTION_56_2(v30);
      OUTLINED_FUNCTION_43_1();

      __asm { BRAA            X1, X16 }

      return;
    case 7uLL:
      OUTLINED_FUNCTION_41_8();
      v105 = *(v104 + class metadata base offset for StartCallCATsSimple + 384);
      OUTLINED_FUNCTION_24_5();
      v268 = v106 + *v106;
      v108 = *(v107 + 4);
      v109 = swift_task_alloc();
      *(v274 + 552) = v109;
      *v109 = v274;
      OUTLINED_FUNCTION_93_2(v109);
      OUTLINED_FUNCTION_43_1();

      __asm { BRAA            X1, X16 }

      return;
    case 8uLL:
      v97 = *(v274 + 240);
      v98 = *(v274 + 232);
      static EmergencyUtils.requiresEmergencyConfirmation(intent:intentResponse:)(v250, v266);

      v99 = *(**(v97 + 112) + class metadata base offset for StartCallCATsSimple + 304);

      v261 = v99 + *v99;
      v100 = v99[1];
      v101 = swift_task_alloc();
      *(v274 + 424) = v101;
      *v101 = v274;
      v101[1] = CallingIntentHandleIntentFlowStrategy.makeFailureHandlingIntentOutput(app:intent:intentResponse:);
      OUTLINED_FUNCTION_43_1();

      __asm { BRAA            X2, X16 }

      return;
    case 0xAuLL:
      OUTLINED_FUNCTION_41_8();
      v113 = *(v112 + class metadata base offset for StartCallCATsSimple + 320);
      OUTLINED_FUNCTION_24_5();
      v269 = v114 + *v114;
      v116 = *(v115 + 4);
      v117 = swift_task_alloc();
      *(v274 + 464) = v117;
      *v117 = v274;
      OUTLINED_FUNCTION_93_2(v117);
      OUTLINED_FUNCTION_43_1();

      __asm { BRAA            X1, X16 }

      return;
    default:
      if (_INStartCallIntentResponseCodeFailureDownTimeRestrictionEnabled == v19)
      {
        v120 = [v250 contacts];
        if (v120)
        {
          v121 = v120;
          v0 = *(v274 + 336);
          type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INPerson, INPerson_ptr);
          OUTLINED_FUNCTION_90();
          v122 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

          v278 = _swiftEmptyArrayStorage;
          v262 = v122;
          v270 = specialized Array.count.getter(v122);
          v123 = 0;
          v254 = v122 & 0xFFFFFFFFFFFFFF8;
          v257 = v122 & 0xC000000000000001;
          v252 = (v0 + 8);
          v249 = _swiftEmptyArrayStorage;
          while (v270 != v123)
          {
            if (v257)
            {
              v125 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              OUTLINED_FUNCTION_95_0(v254);
              if (v124)
              {
                goto LABEL_87;
              }

              v125 = *(v262 + 8 * v123 + 32);
            }

            v133 = v125;
            v134 = v123 + 1;
            if (__OFADD__(v123, 1))
            {
              __break(1u);
LABEL_87:
              __break(1u);
LABEL_88:
              OUTLINED_FUNCTION_6_2();
LABEL_8:
              v33 = type metadata accessor for Logger();
              OUTLINED_FUNCTION_9_0(v33, static Logger.siriPhone);
              v34 = Logger.logObject.getter();
              v35 = static os_log_type_t.error.getter();
              if (OUTLINED_FUNCTION_8_0(v35))
              {
                v36 = OUTLINED_FUNCTION_65_0();
                OUTLINED_FUNCTION_11_1(v36);
                OUTLINED_FUNCTION_17_4();
                _os_log_impl(v37, v38, v39, v40, v41, 2u);
                OUTLINED_FUNCTION_12_3();
              }

              v43 = *(v0 + 256);
              v42 = *(v0 + 264);
              v44 = *(v0 + 248);
              v45 = *(v0 + 224);

              OUTLINED_FUNCTION_82_1();
              _StringGuts.grow(_:)(42);

              v278 = 0x3D746E65746E69;
              v279 = 0xE700000000000000;
              *(v0 + 176) = v45;
              v46 = *(v44 + 264);
              v47 = *(*(*(v44 + 272) + 8) + 16);
              swift_getAssociatedTypeWitness();
              v48 = v45;
              OUTLINED_FUNCTION_54_8();
              v49._countAndFlagsBits = String.init<A>(describing:)();
              v50 = v49._object;
              String.append(_:)(v49);

              OUTLINED_FUNCTION_84_1();
              v51._countAndFlagsBits = v50 - 26;
              v51._object = (v52 | 0x8000000000000000);
              String.append(_:)(v51);
              OUTLINED_FUNCTION_69_1(v278);
              *(v42 + 48) = 99;
              OUTLINED_FUNCTION_55();
              swift_storeEnumTagMultiPayload();
              OUTLINED_FUNCTION_16_21();
              _s27PhoneCallFlowDelegatePlugin0A5ErrorOACs0F0AAWlTm_2(v53, v54);
              OUTLINED_FUNCTION_74();
              swift_allocError();
              PhoneError.logged()(v55);
              OUTLINED_FUNCTION_5_23();
              _s27PhoneCallFlowDelegatePlugin0A5ErrorOWOhTm_2(v42, v56);
              swift_willThrow();
LABEL_16:
              v86 = *(v0 + 400);
              v85 = *(v0 + 408);
              v88 = *(v0 + 384);
              v87 = *(v0 + 392);
              v90 = *(v0 + 368);
              v89 = *(v0 + 376);
              v92 = *(v0 + 352);
              v91 = *(v0 + 360);
              v93 = *(v0 + 344);
              v94 = *(v0 + 320);
              v256 = *(v0 + 296);
              v260 = *(v0 + 288);
              v275 = *(v0 + 264);

              OUTLINED_FUNCTION_11();
              OUTLINED_FUNCTION_43_1();

              __asm { BRAA            X1, X16 }
            }

            OUTLINED_FUNCTION_114_2(v125, v126, v127, v128, v129, v130, v131, v132, v247, v249, v250, v252, v254, v257, v262, v270, v274);
            static Device.current.getter();
            v135 = *(v0 + 128);
            __swift_project_boxed_opaque_existential_1((v0 + 96), *(v0 + 120));
            dispatch thunk of DeviceState.siriLocale.getter();
            __swift_destroy_boxed_opaque_existential_1((v0 + 96));
            v136 = OUTLINED_FUNCTION_115_0();

            (*v252)(v12, v17);
            ++v123;
            if (v136)
            {
              specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
              v137 = *(&dword_18 + (v278 & 0xFFFFFFFFFFFFFF8));
              if (*(&dword_10 + (v278 & 0xFFFFFFFFFFFFFF8)) >= v137 >> 1)
              {
                OUTLINED_FUNCTION_76(v137);
                specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
              }

              specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
              v249 = v278;
              v123 = v134;
            }
          }

          v16 = v274;
          v146 = v249;
        }

        else
        {
          v146 = _swiftEmptyArrayStorage;
        }

        v153 = *(*(v16 + 240) + 112);
        v154 = *(v16 + 224);
        _s27PhoneCallFlowDelegatePlugin0a5StartB6IntentC6intent21isRelationshipRequestAcA07CallingG0_p_SbtcfCTf4enn_nSo07INStartbG0C_Tt1g5();
        *(v16 + 592) = v155;
        type metadata accessor for PhonePersonList.Builder();
        v156 = swift_allocObject();
        *(v156 + 16) = _swiftEmptyArrayStorage;
        v157 = (v156 + 16);
        swift_beginAccess();
        *v157 = v146;
        type metadata accessor for PhonePersonList();
        swift_allocObject();
        v158 = OUTLINED_FUNCTION_90();
        *(v16 + 600) = PhonePersonList.init(builder:)(v158);
        v159 = *(*v153 + class metadata base offset for StartCallCATsSimple + 400);
        OUTLINED_FUNCTION_24_5();
        v276 = v160 + *v160;
        v162 = *(v161 + 4);
        v163 = swift_task_alloc();
        *(v16 + 608) = v163;
        *v163 = v16;
        OUTLINED_FUNCTION_12_4(v163);
        OUTLINED_FUNCTION_43_1();

        __asm { BRAA            X2, X16 }
      }

      if (_INStartCallIntentResponseCodeFailureScreenTimeRestrictionEnabled == v19)
      {
        OUTLINED_FUNCTION_41_8();
        v139 = *(v138 + class metadata base offset for StartCallCATsSimple + 432);
        OUTLINED_FUNCTION_24_5();
        v271 = v140 + *v140;
        v142 = *(v141 + 4);
        v143 = swift_task_alloc();
        *(v274 + 632) = v143;
        *v143 = v274;
        OUTLINED_FUNCTION_12_4(v143);
        OUTLINED_FUNCTION_43_1();

        __asm { BRAA            X0, X16 }
      }

      if (v19 != (&dword_8 + 1))
      {
        if (v19 == &dword_C)
        {
          OUTLINED_FUNCTION_41_8();
          v167 = *(v166 + class metadata base offset for StartCallCATsSimple + 352);

          v264 = v167 + *v167;
          v168 = v167[1];
          v169 = swift_task_alloc();
          *(v274 + 680) = v169;
          *v169 = v274;
          OUTLINED_FUNCTION_12_4(v169);
          OUTLINED_FUNCTION_43_1();

          __asm { BRAA            X1, X16 }
        }

        if (v19 == (&dword_8 + 3))
        {
          OUTLINED_FUNCTION_41_8();
          v148 = *(v147 + class metadata base offset for StartCallCATsSimple + 336);

          v263 = v148 + *v148;
          v149 = v148[1];
          v150 = swift_task_alloc();
          *(v274 + 656) = v150;
          *v150 = v274;
          OUTLINED_FUNCTION_12_4(v150);
          OUTLINED_FUNCTION_43_1();

          __asm { BRAA            X1, X16 }
        }

        if ([v250 preferredCallProvider] == &dword_0 + 1)
        {
          v197 = [v250 contacts];
          if (v197)
          {
            v198 = v197;
            type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INPerson, INPerson_ptr);
            v199 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

            if (specialized Array.count.getter(v199))
            {
              specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v199 & 0xC000000000000001) == 0, v199);
              if ((v199 & 0xC000000000000001) != 0)
              {
                v200 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              }

              else
              {
                v200 = *(v199 + 32);
              }

              v201 = v200;

              v202 = [v201 personHandle];

              if (v202)
              {
                v203 = [v202 type];

                if (v203 == &dword_0 + 1)
                {
                  v204 = *(v274 + 248);
                  v205 = *(v274 + 224);
                  v206 = *(v204 + 264);
                  v207 = *(*(*(v204 + 272) + 8) + 16);
                  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
                  OUTLINED_FUNCTION_55();
                  v208 = *(*(swift_getAssociatedConformanceWitness() + 8) + 8);
                  v209 = *(v208 + 8);
                  v210 = swift_checkMetadataState();
                  v211 = v209(v210, v208);
                  v212 = _swiftEmptyArrayStorage;
                  if (v211)
                  {
                    v18 = v211;
                    v213 = *(v274 + 336);
                    v251 = _swiftEmptyArrayStorage;
                    v278 = _swiftEmptyArrayStorage;
                    v214 = 0;
                    v265 = v211 & 0xC000000000000001;
                    v272 = specialized Array.count.getter(v211);
                    v255 = (v213 + 8);
                    v258 = v18 & 0xFFFFFFFFFFFFFF8;
                    while (v272 != v214)
                    {
                      if (v265)
                      {
                        v215 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                      }

                      else
                      {
                        OUTLINED_FUNCTION_95_0(v258);
                        if (v124)
                        {
                          goto LABEL_94;
                        }

                        v215 = *(v18 + 8 * v214 + 32);
                      }

                      v16 = v215;
                      if (__OFADD__(v214, 1))
                      {
                        __break(1u);
LABEL_94:
                        __break(1u);
LABEL_95:
                        OUTLINED_FUNCTION_6_2();
LABEL_60:
                        v172 = *(v16 + 232);
                        v173 = type metadata accessor for Logger();
                        OUTLINED_FUNCTION_9_0(v173, static Logger.siriPhone);
                        v174 = v172;
                        v175 = Logger.logObject.getter();
                        v176 = static os_log_type_t.error.getter();

                        if (os_log_type_enabled(v175, v176))
                        {
                          v177 = swift_slowAlloc();
                          v178 = swift_slowAlloc();
                          v278 = v178;
                          *v177 = 136315138;
                          *(v274 + 200) = [v17 *(v18 + 1576)];
                          type metadata accessor for INStartCallIntentResponseCode(0);
                          v179 = String.init<A>(describing:)();
                          v181 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v179, v180, &v278);

                          *(v177 + 4) = v181;
                          _os_log_impl(&dword_0, v175, v176, "#CallingIntentHandleIntentFlowStrategy makeFailureHandlingIntentIntentOutput: the dialog for %s hasn't been migrated to Response Framework.", v177, 0xCu);
                          __swift_destroy_boxed_opaque_existential_1(v178);
                          v16 = v274;
                          OUTLINED_FUNCTION_26_0();
                          OUTLINED_FUNCTION_26_0();
                        }

                        v182 = *(v16 + 408);
                        v183 = *(v274 + 392);
                        v184 = *(v274 + 264);
                        v185 = *(v274 + 256);
                        v186 = *(v274 + 232);
                        v187 = *(v274 + 224);
                        OUTLINED_FUNCTION_82_1();
                        _StringGuts.grow(_:)(57);
                        v188 = v279;
                        *(v274 + 160) = v278;
                        *(v274 + 168) = v188;
                        OUTLINED_FUNCTION_84_1();
                        v189._countAndFlagsBits = AssociatedTypeWitness - 30;
                        v189._object = (v190 | 0x8000000000000000);
                        String.append(_:)(v189);
                        *(v274 + 192) = [v17 *(v18 + 1576)];
                        type metadata accessor for INStartCallIntentResponseCode(0);
                        _print_unlocked<A, B>(_:_:)();
                        v191._countAndFlagsBits = AssociatedTypeWitness - 33;
                        v191._object = 0x8000000000459110;
                        String.append(_:)(v191);
                        v192 = *(v274 + 168);
                        *v184 = *(v274 + 160);
                        v184[1] = v192;
                        v184[2] = AssociatedTypeWitness + 12;
                        v184[3] = 0x8000000000459030;
                        v184[4] = AssociatedTypeWitness;
                        v184[5] = 0x8000000000459080;
                        v184[6] = 156;
                        swift_storeEnumTagMultiPayload();
                        OUTLINED_FUNCTION_16_21();
                        _s27PhoneCallFlowDelegatePlugin0A5ErrorOACs0F0AAWlTm_2(v193, v194);
                        swift_allocError();
                        PhoneError.logged()(v195);
                        OUTLINED_FUNCTION_5_23();
                        _s27PhoneCallFlowDelegatePlugin0A5ErrorOWOhTm_2(v184, v196);
                        swift_willThrow();

                        v0 = v274;
                        outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v183, &_s27PhoneCallFlowDelegatePlugin24ButtonConfigurationModelVSgMd, &_s27PhoneCallFlowDelegatePlugin24ButtonConfigurationModelVSgMR);
                        outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v182, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
                        goto LABEL_16;
                      }

                      OUTLINED_FUNCTION_114_2(v215, v216, v217, v218, v219, v220, v221, v222, v247, v248, v251, v214 + 1, v255, v258, v265, v272, v274);
                      static Device.current.getter();
                      AssociatedTypeWitness = *(v18 + 80);
                      __swift_project_boxed_opaque_existential_1((v18 + 56), AssociatedTypeWitness);
                      dispatch thunk of DeviceState.siriLocale.getter();
                      __swift_destroy_boxed_opaque_existential_1((v18 + 56));
                      v223 = OUTLINED_FUNCTION_115_0();

                      (*v255)(v12, v17);
                      ++v214;
                      if (v223)
                      {
                        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
                        AssociatedTypeWitness = *(&dword_10 + (v278 & 0xFFFFFFFFFFFFFF8));
                        v224 = *(&dword_18 + (v278 & 0xFFFFFFFFFFFFFF8));
                        if (AssociatedTypeWitness >= v224 >> 1)
                        {
                          OUTLINED_FUNCTION_76(v224);
                          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
                        }

                        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
                        v251 = v278;
                        v214 = v253;
                      }
                    }

                    v16 = v274;
                    v212 = v251;
                  }

                  v238 = *(v16 + 240);
                  type metadata accessor for PhonePersonList();
                  *(v16 + 704) = PhonePersonList.__allocating_init(list:)(v212);
                  OUTLINED_FUNCTION_83_1();
                  v240 = *(v239 + class metadata base offset for StartCallCATsSimple + 832);
                  OUTLINED_FUNCTION_24_5();
                  v277 = v241 + *v241;
                  v243 = *(v242 + 4);
                  v244 = swift_task_alloc();
                  *(v16 + 712) = v244;
                  *v244 = v16;
                  OUTLINED_FUNCTION_56_2(v244);
                  OUTLINED_FUNCTION_43_1();

                  __asm { BRAA            X1, X16 }
                }
              }
            }

            else
            {
            }
          }
        }

        v225 = *(v274 + 240);
        v226 = v225[7];
        __swift_project_boxed_opaque_existential_1(v225 + 3, v225[6]);
        v227 = *(v226 + 8);
        v228 = OUTLINED_FUNCTION_55();
        v229(v228);
        *(v274 + 736) = SirikitDeviceState.__allocating_init(from:)();
        OUTLINED_FUNCTION_83_1();
        v231 = *(v230 + class metadata base offset for StartCallCATsSimple + 480);
        OUTLINED_FUNCTION_24_5();
        v273 = v232 + *v232;
        v234 = *(v233 + 4);
        v235 = swift_task_alloc();
        *(v274 + 744) = v235;
        *v235 = v274;
        OUTLINED_FUNCTION_56_2(v235);
        OUTLINED_FUNCTION_43_1();

        __asm { BRAA            X1, X16 }
      }

      if (one-time initialization token for siriPhone != -1)
      {
        goto LABEL_95;
      }

      goto LABEL_60;
  }
}

uint64_t CallingIntentHandleIntentFlowStrategy.makeFailureHandlingIntentOutput(app:intent:intentResponse:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11)
{
  OUTLINED_FUNCTION_135();
  v13 = v12[91];
  v14 = v12[88];

  OUTLINED_FUNCTION_51_9(v12[91]);
  v16 = *(v15 + 256);
  v17 = v13;
  OUTLINED_FUNCTION_8_26();
  v16();
  v18 = OUTLINED_FUNCTION_55();
  outlined init with copy of ButtonConfigurationModel?(v18, v19, v20, v21);
  v22 = OUTLINED_FUNCTION_15_21(v11, 1, a10);
  if (v23)
  {
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v22, &_s27PhoneCallFlowDelegatePlugin24ButtonConfigurationModelVSgMd, &_s27PhoneCallFlowDelegatePlugin24ButtonConfigurationModelVSgMR);
  }

  else
  {
    outlined init with take of ButtonConfigurationModel(v22, v12[37]);
    v24 = v12[37];
    OUTLINED_FUNCTION_1_2();
    _s27PhoneCallFlowDelegatePlugin0A5ErrorOWOhTm_2(v25, v26);
  }

  v27 = v12[30];
  v28 = v27[27];
  __swift_project_boxed_opaque_existential_1(v27 + 23, v27[26]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v29 = OUTLINED_FUNCTION_48_0();
  v12[99] = v29;
  *(v29 + 16) = xmmword_426260;
  *(v29 + 32) = a11;
  v30 = async function pointer to dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)[1];
  v31 = a11;
  v32 = swift_task_alloc();
  v33 = OUTLINED_FUNCTION_17_11(v32);
  *v33 = v34;
  OUTLINED_FUNCTION_0_33(v33);
  OUTLINED_FUNCTION_15_11();

  return dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)(v35, v36, v37, v38, v39);
}

{
  OUTLINED_FUNCTION_135();
  v13 = v12[95];
  v14 = v12[92];

  OUTLINED_FUNCTION_51_9(v12[95]);
  v16 = *(v15 + 256);
  v17 = v13;
  OUTLINED_FUNCTION_8_26();
  v16();
  v18 = OUTLINED_FUNCTION_55();
  outlined init with copy of ButtonConfigurationModel?(v18, v19, v20, v21);
  v22 = OUTLINED_FUNCTION_15_21(v11, 1, a10);
  if (v23)
  {
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v22, &_s27PhoneCallFlowDelegatePlugin24ButtonConfigurationModelVSgMd, &_s27PhoneCallFlowDelegatePlugin24ButtonConfigurationModelVSgMR);
  }

  else
  {
    outlined init with take of ButtonConfigurationModel(v22, v12[37]);
    v24 = v12[37];
    OUTLINED_FUNCTION_1_2();
    _s27PhoneCallFlowDelegatePlugin0A5ErrorOWOhTm_2(v25, v26);
  }

  v27 = v12[30];
  v28 = v27[27];
  __swift_project_boxed_opaque_existential_1(v27 + 23, v27[26]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v29 = OUTLINED_FUNCTION_48_0();
  v12[99] = v29;
  *(v29 + 16) = xmmword_426260;
  *(v29 + 32) = a11;
  v30 = async function pointer to dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)[1];
  v31 = a11;
  v32 = swift_task_alloc();
  v33 = OUTLINED_FUNCTION_17_11(v32);
  *v33 = v34;
  OUTLINED_FUNCTION_0_33(v33);
  OUTLINED_FUNCTION_15_11();

  return dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)(v35, v36, v37, v38, v39);
}

uint64_t CallingIntentHandleIntentFlowStrategy.makeFailureHandlingIntentOutput(app:intent:intentResponse:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_76_1();
  v19 = *(v16 + 768);
  v20 = *(v16 + 416);
  v21 = *(v16 + 296);
  v22 = *(v16 + 232);

  OUTLINED_FUNCTION_1_2();
  _s27PhoneCallFlowDelegatePlugin0A5ErrorOWOhTm_2(v21, v23);
  v24 = OUTLINED_FUNCTION_46_5();
  v25(v24);
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v18, &_s27PhoneCallFlowDelegatePlugin24ButtonConfigurationModelVSgMd, &_s27PhoneCallFlowDelegatePlugin24ButtonConfigurationModelVSgMR);
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v17, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);

  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_31_0();

  return v27(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10, a11, a12, a13, a14, a15, a16);
}

{
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_76_1();
  v19 = *(v16 + 768);
  v20 = *(v16 + 416);
  v21 = *(v16 + 232);

  v22 = OUTLINED_FUNCTION_46_5();
  v23(v22);
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v18, &_s27PhoneCallFlowDelegatePlugin24ButtonConfigurationModelVSgMd, &_s27PhoneCallFlowDelegatePlugin24ButtonConfigurationModelVSgMR);
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v17, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);

  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_31_0();

  return v25(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10, a11, a12, a13, a14, a15, a16);
}

{
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_76_1();
  OUTLINED_FUNCTION_50_7();
  v19 = *(v18 + 232);

  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v17, &_s27PhoneCallFlowDelegatePlugin24ButtonConfigurationModelVSgMd, &_s27PhoneCallFlowDelegatePlugin24ButtonConfigurationModelVSgMR);
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v16, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v20 = *(v18 + 440);
  OUTLINED_FUNCTION_2_33();

  OUTLINED_FUNCTION_12_23();
  OUTLINED_FUNCTION_31_0();

  return v22(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10, a11, a12, a13, a14, a15, a16);
}

{
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_76_1();
  v19 = v18[54];
  OUTLINED_FUNCTION_50_7();
  v21 = v18[28];
  v20 = v18[29];

  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v17, &_s27PhoneCallFlowDelegatePlugin24ButtonConfigurationModelVSgMd, &_s27PhoneCallFlowDelegatePlugin24ButtonConfigurationModelVSgMR);
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v16, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v23 = v18[57];
  OUTLINED_FUNCTION_2_33();

  OUTLINED_FUNCTION_12_23();
  OUTLINED_FUNCTION_31_0();

  return v25(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10, a11, a12, a13, a14, a15, a16);
}

{
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_76_1();
  OUTLINED_FUNCTION_50_7();
  v19 = *(v18 + 232);

  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v17, &_s27PhoneCallFlowDelegatePlugin24ButtonConfigurationModelVSgMd, &_s27PhoneCallFlowDelegatePlugin24ButtonConfigurationModelVSgMR);
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v16, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v20 = *(v18 + 480);
  OUTLINED_FUNCTION_2_33();

  OUTLINED_FUNCTION_12_23();
  OUTLINED_FUNCTION_31_0();

  return v22(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10, a11, a12, a13, a14, a15, a16);
}

{
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_76_1();
  v19 = v18[59];
  OUTLINED_FUNCTION_50_7();
  v21 = v18[28];
  v20 = v18[29];

  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v17, &_s27PhoneCallFlowDelegatePlugin24ButtonConfigurationModelVSgMd, &_s27PhoneCallFlowDelegatePlugin24ButtonConfigurationModelVSgMR);
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v16, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v23 = v18[62];
  OUTLINED_FUNCTION_2_33();

  OUTLINED_FUNCTION_12_23();
  OUTLINED_FUNCTION_31_0();

  return v25(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10, a11, a12, a13, a14, a15, a16);
}

{
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_76_1();
  v19 = v18[63];
  OUTLINED_FUNCTION_50_7();
  v21 = v18[28];
  v20 = v18[29];

  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v17, &_s27PhoneCallFlowDelegatePlugin24ButtonConfigurationModelVSgMd, &_s27PhoneCallFlowDelegatePlugin24ButtonConfigurationModelVSgMR);
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v16, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v22 = v18[66];
  OUTLINED_FUNCTION_2_33();

  OUTLINED_FUNCTION_12_23();
  OUTLINED_FUNCTION_31_0();

  return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10, a11, a12, a13, a14, a15, a16);
}

{
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_76_1();
  v17 = *(v16 + 504);
  v19 = *(v16 + 408);
  v18 = *(v16 + 416);
  v20 = *(v16 + 392);
  v22 = *(v16 + 224);
  v21 = *(v16 + 232);

  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v20, &_s27PhoneCallFlowDelegatePlugin24ButtonConfigurationModelVSgMd, &_s27PhoneCallFlowDelegatePlugin24ButtonConfigurationModelVSgMR);
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v19, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v23 = *(v16 + 544);
  OUTLINED_FUNCTION_2_33();

  OUTLINED_FUNCTION_12_23();
  OUTLINED_FUNCTION_31_0();

  return v25(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10, a11, a12, a13, a14, a15, a16);
}

{
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_76_1();
  OUTLINED_FUNCTION_50_7();
  v19 = *(v18 + 232);

  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v17, &_s27PhoneCallFlowDelegatePlugin24ButtonConfigurationModelVSgMd, &_s27PhoneCallFlowDelegatePlugin24ButtonConfigurationModelVSgMR);
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v16, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v20 = *(v18 + 568);
  OUTLINED_FUNCTION_2_33();

  OUTLINED_FUNCTION_12_23();
  OUTLINED_FUNCTION_31_0();

  return v22(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10, a11, a12, a13, a14, a15, a16);
}

{
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_76_1();
  v19 = v18[70];
  OUTLINED_FUNCTION_50_7();
  v21 = v18[28];
  v20 = v18[29];

  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v17, &_s27PhoneCallFlowDelegatePlugin24ButtonConfigurationModelVSgMd, &_s27PhoneCallFlowDelegatePlugin24ButtonConfigurationModelVSgMR);
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v16, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v23 = v18[73];
  OUTLINED_FUNCTION_2_33();

  OUTLINED_FUNCTION_12_23();
  OUTLINED_FUNCTION_31_0();

  return v25(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10, a11, a12, a13, a14, a15, a16);
}

{
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_76_1();
  OUTLINED_FUNCTION_50_7();
  v19 = *(v18 + 232);

  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v17, &_s27PhoneCallFlowDelegatePlugin24ButtonConfigurationModelVSgMd, &_s27PhoneCallFlowDelegatePlugin24ButtonConfigurationModelVSgMR);
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v16, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v20 = *(v18 + 616);
  OUTLINED_FUNCTION_2_33();

  OUTLINED_FUNCTION_12_23();
  OUTLINED_FUNCTION_31_0();

  return v22(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10, a11, a12, a13, a14, a15, a16);
}

{
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_76_1();
  OUTLINED_FUNCTION_50_7();
  v19 = *(v18 + 232);

  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v17, &_s27PhoneCallFlowDelegatePlugin24ButtonConfigurationModelVSgMd, &_s27PhoneCallFlowDelegatePlugin24ButtonConfigurationModelVSgMR);
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v16, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v20 = *(v18 + 640);
  OUTLINED_FUNCTION_2_33();

  OUTLINED_FUNCTION_12_23();
  OUTLINED_FUNCTION_31_0();

  return v22(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10, a11, a12, a13, a14, a15, a16);
}

{
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_76_1();
  OUTLINED_FUNCTION_50_7();
  v19 = *(v18 + 232);

  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v17, &_s27PhoneCallFlowDelegatePlugin24ButtonConfigurationModelVSgMd, &_s27PhoneCallFlowDelegatePlugin24ButtonConfigurationModelVSgMR);
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v16, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v20 = *(v18 + 664);
  OUTLINED_FUNCTION_2_33();

  OUTLINED_FUNCTION_12_23();
  OUTLINED_FUNCTION_31_0();

  return v22(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10, a11, a12, a13, a14, a15, a16);
}

{
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_76_1();
  OUTLINED_FUNCTION_50_7();
  v19 = *(v18 + 232);

  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v17, &_s27PhoneCallFlowDelegatePlugin24ButtonConfigurationModelVSgMd, &_s27PhoneCallFlowDelegatePlugin24ButtonConfigurationModelVSgMR);
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v16, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v20 = *(v18 + 688);
  OUTLINED_FUNCTION_2_33();

  OUTLINED_FUNCTION_12_23();
  OUTLINED_FUNCTION_31_0();

  return v22(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10, a11, a12, a13, a14, a15, a16);
}

{
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_76_1();
  v17 = *(v16 + 704);
  v19 = *(v16 + 408);
  v18 = *(v16 + 416);
  v20 = *(v16 + 392);
  v21 = *(v16 + 232);

  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v20, &_s27PhoneCallFlowDelegatePlugin24ButtonConfigurationModelVSgMd, &_s27PhoneCallFlowDelegatePlugin24ButtonConfigurationModelVSgMR);
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v19, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v22 = *(v16 + 720);
  OUTLINED_FUNCTION_2_33();

  OUTLINED_FUNCTION_12_23();
  OUTLINED_FUNCTION_31_0();

  return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10, a11, a12, a13, a14, a15, a16);
}

{
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_76_1();
  v17 = *(v16 + 736);
  v19 = *(v16 + 408);
  v18 = *(v16 + 416);
  v20 = *(v16 + 392);
  v21 = *(v16 + 232);

  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v20, &_s27PhoneCallFlowDelegatePlugin24ButtonConfigurationModelVSgMd, &_s27PhoneCallFlowDelegatePlugin24ButtonConfigurationModelVSgMR);
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v19, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v22 = *(v16 + 752);
  OUTLINED_FUNCTION_2_33();

  OUTLINED_FUNCTION_12_23();
  OUTLINED_FUNCTION_31_0();

  return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t CallingIntentHandleIntentFlowStrategy.makeUnsupportedViews(app:intent:intentResponse:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, void))
{
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2();
  }

  v5 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_9_0(v5, static Logger.siriPhone);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = OUTLINED_FUNCTION_65_0();
    *v8 = 0;
    _os_log_impl(&dword_0, v6, v7, "#CallingIntentHandleIntentFlowStrategy makeUnsupportedViews: returning empty views", v8, 2u);
    OUTLINED_FUNCTION_26_0();
  }

  return a4(_swiftEmptyArrayStorage, 0);
}

uint64_t CallingIntentHandleIntentFlowStrategy.getButtonConfigurationModel(app:intent:intentResponse:appNameSpeakable:isThirdPartyApp:)()
{
  OUTLINED_FUNCTION_15();
  *(v1 + 138) = v2;
  *(v1 + 48) = v3;
  *(v1 + 56) = v0;
  *(v1 + 32) = v4;
  *(v1 + 40) = v5;
  *(v1 + 16) = v6;
  *(v1 + 24) = v7;
  v8 = type metadata accessor for UUID();
  *(v1 + 64) = v8;
  OUTLINED_FUNCTION_13_2(v8);
  *(v1 + 72) = v9;
  v11 = *(v10 + 64);
  *(v1 + 80) = OUTLINED_FUNCTION_45();
  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v12, v13, v14);
}

{
  v1 = v0[4];
  if (v1)
  {
    v2 = v0[7];
    v3 = v0[5];
    v4 = v0[3];
    type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SAIntentGroupLaunchAppWithIntent, SAIntentGroupLaunchAppWithIntent_ptr);
    v5 = v1;
    OUTLINED_FUNCTION_74();
    v0[11] = static SAIntentGroupLaunchAppWithIntent.launchAppWithIntent(app:intent:intentResponse:)();
    v6 = *(v2 + 176);
    v7 = App.isFirstParty()();
    v8 = *(*v6 + class metadata base offset for PhoneCallDisplayTextCATsSimple + 296);
    OUTLINED_FUNCTION_24_5();
    v30 = (v9 + *v9);
    v11 = *(v10 + 4);
    v12 = swift_task_alloc();
    v0[12] = v12;
    *v12 = v0;
    v12[1] = CallingIntentHandleIntentFlowStrategy.getButtonConfigurationModel(app:intent:intentResponse:appNameSpeakable:isThirdPartyApp:);
    v13 = v0[6];

    return v30(v13, !v7);
  }

  else
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2();
    }

    v15 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_9_0(v15, static Logger.siriPhone);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_8_0(v17))
    {
      v18 = OUTLINED_FUNCTION_65_0();
      OUTLINED_FUNCTION_11_1(v18);
      OUTLINED_FUNCTION_17_4();
      _os_log_impl(v19, v20, v21, v22, v23, 2u);
      OUTLINED_FUNCTION_12_3();
    }

    v24 = v0[7];

    v25 = *(**(v24 + 176) + class metadata base offset for PhoneCallDisplayTextCATsSimple + 328);
    OUTLINED_FUNCTION_24_5();
    v31 = (v26 + *v26);
    v28 = *(v27 + 4);
    v29 = swift_task_alloc();
    v0[15] = v29;
    *v29 = v0;
    OUTLINED_FUNCTION_12_4(v29);

    return v31();
  }
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v5 = *(v4 + 96);
  *v3 = *v1;
  *(v2 + 104) = v6;
  *(v2 + 112) = v0;

  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v7, v8, v9);
}

{
  OUTLINED_FUNCTION_27();
  v3 = v2;
  OUTLINED_FUNCTION_28();
  v5 = v4;
  OUTLINED_FUNCTION_6();
  *v6 = v5;
  v8 = *(v7 + 120);
  v9 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v10 = v9;

  if (v0)
  {
    v11 = *(v5 + 80);

    v12 = *(v9 + 8);

    return v12();
  }

  else
  {
    *(v5 + 128) = v3;
    OUTLINED_FUNCTION_66_0();

    return _swift_task_switch(v14, v15, v16);
  }
}

{
  OUTLINED_FUNCTION_27();
  v1 = v0[16];
  v2 = v0[2];
  dispatch thunk of LabelExecutionResult.subscript.getter();

  v3 = OUTLINED_FUNCTION_92();
  ButtonConfigurationModel.init(label:url:)(v3, v4, v5);
  v6 = v0[10];
  v7 = v0[2];
  type metadata accessor for ButtonConfigurationModel();
  v8 = OUTLINED_FUNCTION_39_2();
  __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);

  OUTLINED_FUNCTION_11();

  return v12();
}

{
  OUTLINED_FUNCTION_15();
  v1 = *(v0 + 32);

  v2 = *(v0 + 112);
  v3 = *(v0 + 80);

  OUTLINED_FUNCTION_11();

  return v4();
}

uint64_t CallingIntentHandleIntentFlowStrategy.getButtonConfigurationModel(app:intent:intentResponse:appNameSpeakable:isThirdPartyApp:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_135();
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2();
  }

  v15 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_9_0(v15, static Logger.siriPhone);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_8_0(v17))
  {
    v18 = OUTLINED_FUNCTION_65_0();
    OUTLINED_FUNCTION_11_1(v18);
    OUTLINED_FUNCTION_17_4();
    _os_log_impl(v19, v20, v21, v22, v23, 2u);
    OUTLINED_FUNCTION_12_3();
  }

  v24 = *(v14 + 138);

  v25 = *(v14 + 104);
  if (v24 == 1)
  {
    *(v14 + 137) = 1;
  }

  else
  {
    *(v14 + 136) = 0;
  }

  v26 = dispatch thunk of LabelExecutionResult.subscript.getter();
  v28 = v27;
  v29 = *(v14 + 80);
  v30 = *(v14 + 64);
  v31 = *(v14 + 72);
  v52 = *(v14 + 104);
  v53 = *(v14 + 32);
  v32 = *(v14 + 16);
  v33 = *(v14 + 88);
  UUID.init()();
  *v32 = v26;
  v32[1] = v28;
  v34 = type metadata accessor for ButtonConfigurationModel();
  v35 = v34[5];
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SABaseCommand, SABaseCommand_ptr);
  v36 = v33;
  CodableAceObject.init(wrappedValue:)();
  (*(v31 + 16))(v32 + v34[7], v29, v30);
  *(v32 + v34[8]) = 0;
  [objc_allocWithZone(SAIntentGroupRunSiriKitExecutor) init];
  v37 = v34[6];
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SAIntentGroupRunSiriKitExecutor, SAIntentGroupRunSiriKitExecutor_ptr);
  CodableAceObject.init(wrappedValue:)();

  (*(v31 + 8))(v29, v30);
  v38 = *(v14 + 80);
  v39 = *(v14 + 16);
  OUTLINED_FUNCTION_23_3();
  __swift_storeEnumTagSinglePayload(v40, v41, v42, v34);

  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_15_11();

  return v44(v43, v44, v45, v46, v47, v48, v49, v50, a9, v52, v53, a12, a13, a14);
}

void CallingIntentHandleIntentFlowStrategy.getSpeakableAppName(app:intent:)()
{
  OUTLINED_FUNCTION_66();
  v2 = v1;
  v31 = v3;
  v4 = *v0;
  v5 = type metadata accessor for Locale();
  v6 = OUTLINED_FUNCTION_7(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6);
  OUTLINED_FUNCTION_4();
  v13 = v12 - v11;
  if (App.isFirstParty()())
  {
    v15 = v4 + 264;
    v14 = *(v4 + 264);
    v16 = *(*(*(v15 + 8) + 8) + 16);
    swift_getAssociatedTypeWitness();
    v17 = *(*(swift_getAssociatedConformanceWitness() + 8) + 16);
    v18 = *(v17 + 8);
    v19 = swift_checkMetadataState();
    v20 = v18(v19, v17);
    v21 = v0[6];
    v22 = v0[7];
    __swift_project_boxed_opaque_existential_1(v0 + 3, v21);
    (*(v22 + 8))(v32, v21, v22);
    v2 = static UserFacingCallingAppUtils.getCommAppForLaunch(originalApp:preferredCallProvider:deviceState:)(v2, v20, v32);
    __swift_destroy_boxed_opaque_existential_1(v32);
  }

  else
  {
  }

  v23 = v0[41];
  v24 = v0[42];
  __swift_project_boxed_opaque_existential_1(v0 + 38, v23);
  OUTLINED_FUNCTION_70_0();
  (*(v25 + 208))(v32);
  __swift_project_boxed_opaque_existential_1(v32, v32[3]);
  dispatch thunk of DeviceState.siriLocale.getter();
  (*(v24 + 16))(v2, v13, v23, v24);
  v27 = v26;
  (*(v8 + 8))(v13, v5);
  __swift_destroy_boxed_opaque_existential_1(v32);
  if (v27)
  {

    v28 = v31;
    OUTLINED_FUNCTION_19_3();
    SpeakableString.init(print:speak:)();

    v29 = 0;
  }

  else
  {
    v29 = 1;
    v28 = v31;
  }

  v30 = type metadata accessor for SpeakableString();
  __swift_storeEnumTagSinglePayload(v28, v29, 1, v30);
  OUTLINED_FUNCTION_65();
}

uint64_t CallingIntentHandleIntentFlowStrategy.makeIntentExecutionBehavior(app:intent:completion:)(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  v5 = *v3;
  v6 = v3[6];
  v7 = v3[7];
  __swift_project_boxed_opaque_existential_1(v3 + 3, v6);
  (*(v7 + 152))(v37, v6, v7);
  v8 = v37[4];
  __swift_project_boxed_opaque_existential_1(v37, v37[3]);
  v9 = App.appIdentifier.getter();
  (*(v8 + 16))(v38, v9);

  __swift_destroy_boxed_opaque_existential_1(v37);
  v10 = *(*(*(v5 + 272) + 8) + 16);
  v11 = *(v5 + 264);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  CallingIntent.populateCallIntentMetadata(resolvedApp:)(v38, AssociatedTypeWitness, AssociatedConformanceWitness);
  v14 = v3[6];
  v15 = v3[7];
  __swift_project_boxed_opaque_existential_1(v3 + 3, v14);
  v16 = (*(v15 + 56))(v14, v15);
  v17 = (*(*v16 + 120))(v16);
  v19 = v18;

  if (!v19)
  {
    goto LABEL_14;
  }

  v20 = *(*(AssociatedConformanceWitness + 8) + 8);
  v21 = (*(v20 + 8))(AssociatedTypeWitness, v20);
  if (!v21)
  {
LABEL_13:

    goto LABEL_14;
  }

  v22 = v21;
  if (!specialized Array.count.getter(v21))
  {

    goto LABEL_13;
  }

  specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v22 & 0xC000000000000001) == 0, v22);
  if ((v22 & 0xC000000000000001) != 0)
  {
    v23 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    v23 = *(v22 + 32);
  }

  v35 = v23;

  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2();
  }

  v36 = a3;
  v24 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_9_0(v24, static Logger.siriPhone);
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = OUTLINED_FUNCTION_65_0();
    *v27 = 0;
    _os_log_impl(&dword_0, v25, v26, "#CallingIntentHandleIntentFlowStrategy: overwriting intent before going to Intent extension", v27, 2u);
    OUTLINED_FUNCTION_26_0();
  }

  isa = INPerson.mutableCopyOrCrash()().super.isa;
  v29 = objc_allocWithZone(INPersonHandle);
  v30 = @nonobjc INPersonHandle.init(value:type:)(v17, v19, 2);
  [(objc_class *)isa setPersonHandle:v30];

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v31 = OUTLINED_FUNCTION_48_0();
  *(v31 + 16) = xmmword_426260;
  *(v31 + 32) = isa;
  v32 = *(v20 + 16);
  v33 = isa;
  v32(v31, AssociatedTypeWitness, v20);

  a3 = v36;
LABEL_14:
  type metadata accessor for SiriKitIntentExecutionBehavior();
  static SiriKitIntentExecutionBehavior.standard()();
  a3();

  return outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v38, &_s27PhoneCallFlowDelegatePlugin12AnnotatedAppVSgMd, &_s27PhoneCallFlowDelegatePlugin12AnnotatedAppVSgMR);
}

void *CallingIntentHandleIntentFlowStrategy.__allocating_init(delegate:startCallCATs:startCallCatPatterns:startCallCATsSimple:phoneCallCommonCATs:phoneCallCommonCATsSimple:phoneCallCommonCatPatterns:phoneCallDisplayTextCATsSimple:responseGenerator:siriKitEventSender:appInfoBuilder:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t a8, uint64_t *a9, uint64_t *a10, uint64_t *a11)
{
  v18 = *(v11 + 48);
  v19 = *(v11 + 52);
  swift_allocObject();
  v20 = OUTLINED_FUNCTION_130_0();
  return CallingIntentHandleIntentFlowStrategy.init(delegate:startCallCATs:startCallCatPatterns:startCallCATsSimple:phoneCallCommonCATs:phoneCallCommonCATsSimple:phoneCallCommonCatPatterns:phoneCallDisplayTextCATsSimple:responseGenerator:siriKitEventSender:appInfoBuilder:)(v20, v21, a3, a4, a5, a6, a7, a8, a9, a10, a11);
}

void *CallingIntentHandleIntentFlowStrategy.init(delegate:startCallCATs:startCallCatPatterns:startCallCATsSimple:phoneCallCommonCATs:phoneCallCommonCATsSimple:phoneCallCommonCatPatterns:phoneCallDisplayTextCATsSimple:responseGenerator:siriKitEventSender:appInfoBuilder:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t a8, uint64_t *a9, uint64_t *a10, uint64_t *a11)
{
  *(v11 + direct field offset for CallingIntentHandleIntentFlowStrategy.cancellable) = 0;
  outlined init with copy of SignalProviding(a3, v26);
  outlined init with copy of SignalProviding(a7, v25);
  outlined init with copy of SignalProviding(a9, v24);
  outlined init with copy of SignalProviding(a10, v23);
  outlined init with copy of SignalProviding(a11, v22);
  v17 = CallingIntentBaseFlowStrategy.init(delegate:startCallCATs:startCallCatPatterns:startCallCATsSimple:phoneCallCommonCATs:phoneCallCommonCATsSimple:phoneCallCommonCatPatterns:phoneCallDisplayTextCATsSimple:responseGenerator:siriKitEventSender:appInfoBuilder:)(a1, a2, v26, a4, a5, a6, v25, a8, v24, v23, v22);
  __swift_destroy_boxed_opaque_existential_1(a11);
  __swift_destroy_boxed_opaque_existential_1(a10);
  __swift_destroy_boxed_opaque_existential_1(a9);
  __swift_destroy_boxed_opaque_existential_1(a7);
  __swift_destroy_boxed_opaque_existential_1(a3);
  return v17;
}

uint64_t protocol witness for HandleIntentFlowStrategy.makePromptForDeviceUnlock(app:intent:intentResponse:_:) in conformance CallingIntentHandleIntentFlowStrategy<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v14 = *(a6 + 264);
  v15 = *(a6 + 272);
  v16 = type metadata accessor for CallingIntentHandleIntentFlowStrategy();

  return a8(a1, a2, a3, a4, a5, v16, a7);
}

uint64_t protocol witness for IntentExtensionCommunicating.shouldIntentBeExecutedOnRemoteCompanion(intent:) in conformance CallingIntentHandleIntentFlowStrategy<A>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 264);
  v5 = *(a2 + 272);
  v7 = type metadata accessor for CallingIntentHandleIntentFlowStrategy();

  return IntentExtensionCommunicating.shouldIntentBeExecutedOnRemoteCompanion(intent:)(a1, v7, a3);
}

uint64_t protocol witness for IntentExtensionCommunicating.makeSiriKitIntentHandler(app:intent:) in conformance CallingIntentHandleIntentFlowStrategy<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 + 264);
  v8 = *(a3 + 272);
  v9 = type metadata accessor for CallingIntentHandleIntentFlowStrategy();

  return IntentExtensionCommunicating.makeSiriKitIntentHandler(app:intent:)(a1, a2, v9, a4);
}

uint64_t protocol witness for IntentExtensionCommunicating.makeIntentExecutionBehavior(app:intent:) in conformance CallingIntentHandleIntentFlowStrategy<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 + 264);
  v8 = *(a3 + 272);
  v9 = type metadata accessor for CallingIntentHandleIntentFlowStrategy();

  return IntentExtensionCommunicating.makeIntentExecutionBehavior(app:intent:)(a1, a2, v9, a4);
}

uint64_t partial apply for closure #1 in CallingIntentHandleIntentFlowStrategy.makeFailureHandlingIntentResponse(app:intent:intentResponse:_:)()
{
  OUTLINED_FUNCTION_24_1();
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = v0[7];
  v9 = v0[8];
  v8 = v0[9];
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v1 + 16) = v10;
  *v10 = v11;
  v10[1] = closure #2 in ActionableCallControlFlow.execute();
  OUTLINED_FUNCTION_16();

  return closure #1 in CallingIntentHandleIntentFlowStrategy.makeFailureHandlingIntentResponse(app:intent:intentResponse:_:)(v12, v13, v14, v15, v16, v17, v18, v19);
}

uint64_t outlined bridged method (pb) of @objc INCallGroup.groupId.getter(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (v2)
  {
    v3 = v2;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  return OUTLINED_FUNCTION_19_0();
}

uint64_t outlined init with take of ButtonConfigurationModel(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ButtonConfigurationModel();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t _s27PhoneCallFlowDelegatePlugin0A5ErrorOWOhTm_2(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_23_1(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t outlined init with copy of ButtonConfigurationModel(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ButtonConfigurationModel();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void _s27PhoneCallFlowDelegatePlugin0a5StartB6IntentC6intent21isRelationshipRequestAcA07CallingG0_p_SbtcfCTf4enn_nSo07INStartbG0C_Tt1g5()
{
  OUTLINED_FUNCTION_66();
  v2 = v1;
  v103 = type metadata accessor for Locale();
  v3 = OUTLINED_FUNCTION_7(v103);
  v5 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v3);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_81(v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v10 = OUTLINED_FUNCTION_21(v9);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  OUTLINED_FUNCTION_12_5();
  OUTLINED_FUNCTION_58_2();
  v14 = __chkstk_darwin(v13);
  OUTLINED_FUNCTION_42_6(v14, v15, v16, v17, v18, v19, v20, v21, v94);
  v23 = __chkstk_darwin(v22);
  OUTLINED_FUNCTION_98_1(v23, v24, v25, v26, v27, v28, v29, v30, v95);
  __chkstk_darwin(v31);
  OUTLINED_FUNCTION_91();
  v97 = v32;
  if (![v2 callCapability])
  {
    v34 = 0xE700000000000000;
    v35 = 0x4E574F4E4B4E55;
    goto LABEL_10;
  }

  BackingType = INCallCapabilityGetBackingType();
  if (BackingType == 2)
  {
    v0 = @"VIDEO_CALL";
  }

  else
  {
    if (BackingType != 1)
    {
      OUTLINED_FUNCTION_101_0();
      [v37 stringWithFormat:@"(unknown: %i)"];
      objc_claimAutoreleasedReturnValue();
      OUTLINED_FUNCTION_47_9();
      goto LABEL_9;
    }

    v0 = @"AUDIO_CALL";
  }

  v36 = v0;
LABEL_9:
  v38 = v0;
  v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v34 = v39;

LABEL_10:
  OUTLINED_FUNCTION_19_3();
  SpeakableString.init(print:speak:)();
  type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_23_3();
  __swift_storeEnumTagSinglePayload(v40, v41, v42, v35);
  if (![v2 audioRoute])
  {
    v44 = 0xE700000000000000;
    goto LABEL_21;
  }

  v43 = INCallAudioRouteGetBackingType();
  switch(v43)
  {
    case 4:
      v34 = @"HEY_SIRI_AUDIO_ROUTE";
      break;
    case 3:
      v34 = @"BLUETOOTH_AUDIO_ROUTE";
      break;
    case 2:
      v34 = @"SPEAKERPHONE_AUDIO_ROUTE";
      break;
    default:
      OUTLINED_FUNCTION_101_0();
      [v46 stringWithFormat:@"(unknown: %i)"];
      objc_claimAutoreleasedReturnValue();
      OUTLINED_FUNCTION_47_9();
      goto LABEL_20;
  }

  v45 = v34;
LABEL_20:
  v47 = v34;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v44 = v48;

LABEL_21:
  OUTLINED_FUNCTION_19_3();
  SpeakableString.init(print:speak:)();
  OUTLINED_FUNCTION_23_3();
  __swift_storeEnumTagSinglePayload(v49, v50, v51, v35);
  if (![v2 preferredCallProvider])
  {
    v53 = 0xE700000000000000;
    goto LABEL_32;
  }

  v52 = INPreferredCallProviderGetBackingType();
  switch(v52)
  {
    case 4:
      v44 = @"THIRD_PARTY_PROVIDER";
      break;
    case 3:
      v44 = @"FACETIME_PROVIDER";
      break;
    case 2:
      v44 = @"TELEPHONY_PROVIDER";
      break;
    default:
      OUTLINED_FUNCTION_101_0();
      [v55 stringWithFormat:@"(unknown: %i)"];
      objc_claimAutoreleasedReturnValue();
      OUTLINED_FUNCTION_47_9();
      goto LABEL_31;
  }

  v54 = v44;
LABEL_31:
  v56 = v44;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v53 = v57;

LABEL_32:
  OUTLINED_FUNCTION_19_3();
  SpeakableString.init(print:speak:)();
  OUTLINED_FUNCTION_23_3();
  __swift_storeEnumTagSinglePayload(v58, v59, v60, v35);
  if ([v2 destinationType])
  {
    switch(INCallDestinationTypeGetBackingType())
    {
      case 1u:
        v53 = @"NORMAL_DESTINATION";
        goto LABEL_40;
      case 2u:
        v53 = @"EMERGENCY_DESTINATION";
        goto LABEL_40;
      case 3u:
        v53 = @"VOICEMAIL_DESTINATION";
        goto LABEL_40;
      case 4u:
        v53 = @"REDIAL_DESTINATION";
        goto LABEL_40;
      case 5u:
        v53 = @"CALL_BACK_DESTINATION";
LABEL_40:
        v61 = v53;
        break;
      default:
        OUTLINED_FUNCTION_101_0();
        [v93 stringWithFormat:@"(unknown: %i)"];
        objc_claimAutoreleasedReturnValue();
        OUTLINED_FUNCTION_47_9();
        break;
    }

    v62 = v53;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  OUTLINED_FUNCTION_19_3();
  SpeakableString.init(print:speak:)();
  OUTLINED_FUNCTION_23_3();
  __swift_storeEnumTagSinglePayload(v63, v64, v65, v35);
  v66 = outlined bridged method (pb) of @objc INStartCallIntent.contacts.getter(v2);
  v67 = _swiftEmptyArrayStorage;
  v96 = v2;
  if (v66)
  {
    v68 = v66;
    v107 = _swiftEmptyArrayStorage;
    v105 = specialized Array.count.getter(v66);
    v69 = 0;
    while (1)
    {
      if (v105 == v69)
      {

        v2 = v96;
        v67 = _swiftEmptyArrayStorage;
        goto LABEL_55;
      }

      if ((v68 & 0xC000000000000001) != 0)
      {
        v71 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        OUTLINED_FUNCTION_95_0(v68 & 0xFFFFFFFFFFFFFF8);
        if (v70)
        {
          goto LABEL_72;
        }

        v71 = *(v68 + 8 * v69 + 32);
      }

      v72 = v71;
      v73 = v69 + 1;
      if (__OFADD__(v69, 1))
      {
        break;
      }

      type metadata accessor for PhonePerson(0);
      static Device.current.getter();
      __swift_project_boxed_opaque_existential_1(v106, v106[3]);
      dispatch thunk of DeviceState.siriLocale.getter();
      OUTLINED_FUNCTION_120();
      v75 = static PhonePerson.make(phonePerson:options:locale:)(v72, v74, v101);

      (*(v5 + 8))(v101, v103);
      ++v69;
      if (v75)
      {
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        v76 = *(&dword_18 + (v107 & 0xFFFFFFFFFFFFFF8));
        if (*(&dword_10 + (v107 & 0xFFFFFFFFFFFFFF8)) >= v76 >> 1)
        {
          OUTLINED_FUNCTION_76(v76);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v69 = v73;
      }
    }

    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
  }

  else
  {
LABEL_55:
    type metadata accessor for PhonePersonList();
    v77 = OUTLINED_FUNCTION_5();
    v78 = PhonePersonList.__allocating_init(list:)(v77);
    v79 = outlined bridged method (pb) of @objc INStartCallIntent.callGroups.getter(v2);
    if (v79)
    {
      v80 = v79;
      v102 = v78;
      v104 = _swiftEmptyArrayStorage;
      v106[0] = _swiftEmptyArrayStorage;
      v81 = specialized Array.count.getter(v79);
      v82 = 0;
      while (v81 != v82)
      {
        if ((v80 & 0xC000000000000001) != 0)
        {
          v83 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          OUTLINED_FUNCTION_95_0(v80 & 0xFFFFFFFFFFFFFF8);
          if (v70)
          {
            goto LABEL_74;
          }

          v83 = *(v80 + 8 * v82 + 32);
        }

        v84 = v83;
        v85 = v82 + 1;
        if (__OFADD__(v82, 1))
        {
          goto LABEL_73;
        }

        type metadata accessor for PhoneCallGroup(0);
        v86 = outlined bridged method (pb) of @objc INCallGroup.groupId.getter(v84, &selRef_groupName);
        v88 = v87;
        v89 = outlined bridged method (pb) of @objc INCallGroup.groupId.getter(v84, &selRef_groupId);
        v91 = static PhoneCallGroup.make(groupName:groupId:)(v86, v88, v89, v90);

        ++v82;
        if (v91)
        {
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          v92 = *(&dword_18 + (v106[0] & 0xFFFFFFFFFFFFFF8));
          if (*(&dword_10 + (v106[0] & 0xFFFFFFFFFFFFFF8)) >= v92 >> 1)
          {
            OUTLINED_FUNCTION_76(v92);
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          OUTLINED_FUNCTION_94_0();
          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v104 = v106[0];
          v82 = v85;
        }
      }

      v78 = v102;
      v67 = v104;
    }

    else
    {
    }

    type metadata accessor for PhoneStartCallIntent(0);
    PhoneStartCallIntent.__allocating_init(callCapability:audioRoute:preferredCallProvider:destinationType:contacts:callGroups:)(v97, v98, v99, v100, v78, v67);
    OUTLINED_FUNCTION_65();
  }
}

uint64_t outlined init with copy of ButtonConfigurationModel?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = OUTLINED_FUNCTION_112(a1, a2, a3, a4);
  OUTLINED_FUNCTION_23_1(v5);
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_19_0();
  v9(v8);
  return v4;
}

uint64_t outlined init with take of ButtonConfigurationModel?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = OUTLINED_FUNCTION_112(a1, a2, a3, a4);
  OUTLINED_FUNCTION_23_1(v5);
  v7 = *(v6 + 32);
  v8 = OUTLINED_FUNCTION_19_0();
  v9(v8);
  return v4;
}

uint64_t partial apply for closure #1 in CallingIntentHandleIntentFlowStrategy.makeCompletionViewOutput(app:intent:intentResponse:result:_:)(uint64_t a1, char a2)
{
  v5 = type metadata accessor for TemplatingResult();
  OUTLINED_FUNCTION_13_2(v5);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v9 = (*(v8 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  OUTLINED_FUNCTION_13_2(v10);
  v12 = v11;
  v14 = v13;
  v15 = (v9 + *(v12 + 80) + 8) & ~*(v12 + 80);
  v16 = *(v2 + v9);
  v17 = v2 + ((*(v14 + 64) + v15 + 7) & 0xFFFFFFFFFFFFFFF8);
  v18 = *v17;
  v19 = *(v17 + 8);

  return closure #1 in CallingIntentHandleIntentFlowStrategy.makeCompletionViewOutput(app:intent:intentResponse:result:_:)(a1, a2 & 1, v2 + v7, v16, v2 + v15, v18);
}

void _s27PhoneCallFlowDelegatePlugin0a5StartB6IntentC6intent21isRelationshipRequestAcA07CallingG0_p_SbtcfCTf4enn_nSo012INStartAudiobG0C_Tt1g5()
{
  OUTLINED_FUNCTION_66();
  v2 = v1;
  v80 = type metadata accessor for Locale();
  v3 = OUTLINED_FUNCTION_7(v80);
  v5 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v3);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_81(v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v10 = OUTLINED_FUNCTION_21(v9);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  OUTLINED_FUNCTION_12_5();
  v15 = v13 - v14;
  __chkstk_darwin(v16);
  OUTLINED_FUNCTION_58_2();
  __chkstk_darwin(v17);
  OUTLINED_FUNCTION_42_6(v18, v19, v20, v21, v22, v23, v24, v25, v72);
  __chkstk_darwin(v26);
  OUTLINED_FUNCTION_91();
  v76 = v27;
  BackingType = INCallCapabilityGetBackingType();
  if (BackingType == 2)
  {
    v0 = @"VIDEO_CALL";
    goto LABEL_5;
  }

  if (BackingType == 1)
  {
    v0 = @"AUDIO_CALL";
LABEL_5:
    v29 = v0;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_67_1();
  [v30 stringWithFormat:@"(unknown: %i)"];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_47_9();
LABEL_7:
  v31 = v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_116();
  v32 = v76;
  OUTLINED_FUNCTION_30_11();
  v33 = type metadata accessor for SpeakableString();
  v34 = OUTLINED_FUNCTION_39_2();
  __swift_storeEnumTagSinglePayload(v34, v35, v36, v33);
  if (![v2 audioRoute])
  {
    v38 = 0xE700000000000000;
    goto LABEL_18;
  }

  v37 = INCallAudioRouteGetBackingType();
  switch(v37)
  {
    case 4:
      v32 = @"HEY_SIRI_AUDIO_ROUTE";
      break;
    case 3:
      v32 = @"BLUETOOTH_AUDIO_ROUTE";
      break;
    case 2:
      v32 = @"SPEAKERPHONE_AUDIO_ROUTE";
      break;
    default:
      OUTLINED_FUNCTION_67_1();
      [v40 stringWithFormat:@"(unknown: %i)"];
      objc_claimAutoreleasedReturnValue();
      OUTLINED_FUNCTION_47_9();
      goto LABEL_17;
  }

  v39 = v32;
LABEL_17:
  v41 = v32;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v38 = v42;

LABEL_18:
  OUTLINED_FUNCTION_19_3();
  SpeakableString.init(print:speak:)();
  OUTLINED_FUNCTION_23_3();
  __swift_storeEnumTagSinglePayload(v43, v44, v45, v33);
  if (![v2 preferredCallProvider])
  {
    v47 = 0xE700000000000000;
    goto LABEL_29;
  }

  v46 = INPreferredCallProviderGetBackingType();
  switch(v46)
  {
    case 4:
      v38 = @"THIRD_PARTY_PROVIDER";
      break;
    case 3:
      v38 = @"FACETIME_PROVIDER";
      break;
    case 2:
      v38 = @"TELEPHONY_PROVIDER";
      break;
    default:
      OUTLINED_FUNCTION_67_1();
      [v49 stringWithFormat:@"(unknown: %i)"];
      objc_claimAutoreleasedReturnValue();
      OUTLINED_FUNCTION_47_9();
      goto LABEL_28;
  }

  v48 = v38;
LABEL_28:
  v50 = v38;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v47 = v51;

LABEL_29:
  OUTLINED_FUNCTION_19_3();
  SpeakableString.init(print:speak:)();
  OUTLINED_FUNCTION_23_3();
  __swift_storeEnumTagSinglePayload(v52, v53, v54, v33);
  if ([v2 destinationType])
  {
    switch(INCallDestinationTypeGetBackingType())
    {
      case 1u:
        v47 = @"NORMAL_DESTINATION";
        goto LABEL_37;
      case 2u:
        v47 = @"EMERGENCY_DESTINATION";
        goto LABEL_37;
      case 3u:
        v47 = @"VOICEMAIL_DESTINATION";
        goto LABEL_37;
      case 4u:
        v47 = @"REDIAL_DESTINATION";
        goto LABEL_37;
      case 5u:
        v47 = @"CALL_BACK_DESTINATION";
LABEL_37:
        v55 = v47;
        break;
      default:
        OUTLINED_FUNCTION_67_1();
        [v71 stringWithFormat:@"(unknown: %i)"];
        objc_claimAutoreleasedReturnValue();
        OUTLINED_FUNCTION_47_9();
        break;
    }

    v56 = v47;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  OUTLINED_FUNCTION_19_3();
  SpeakableString.init(print:speak:)();
  OUTLINED_FUNCTION_23_3();
  __swift_storeEnumTagSinglePayload(v57, v58, v59, v33);
  v60 = outlined bridged method (pb) of @objc INStartAudioCallIntent.contacts.getter(v2);
  v75 = _swiftEmptyArrayStorage;
  if (v60)
  {
    v61 = v60;
    v73 = v15;
    v74 = v2;
    v83 = _swiftEmptyArrayStorage;
    v81 = specialized Array.count.getter(v60);
    v62 = 0;
    v63 = (v5 + 8);
    while (1)
    {
      if (v81 == v62)
      {

        v15 = v73;
        v2 = v74;
        goto LABEL_52;
      }

      if ((v61 & 0xC000000000000001) != 0)
      {
        v64 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v62 >= *(&dword_10 + (v61 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_55;
        }

        v64 = *(v61 + 8 * v62 + 32);
      }

      v65 = v64;
      v66 = v62 + 1;
      if (__OFADD__(v62, 1))
      {
        break;
      }

      type metadata accessor for PhonePerson(0);
      static Device.current.getter();
      __swift_project_boxed_opaque_existential_1(v82, v82[3]);
      dispatch thunk of DeviceState.siriLocale.getter();
      OUTLINED_FUNCTION_120();
      v68 = static PhonePerson.make(phonePerson:options:locale:)(v65, v67, v79);

      (*v63)(v79, v80);
      ++v62;
      if (v68)
      {
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        v69 = *(&dword_18 + (v83 & 0xFFFFFFFFFFFFFF8));
        if (*(&dword_10 + (v83 & 0xFFFFFFFFFFFFFF8)) >= v69 >> 1)
        {
          OUTLINED_FUNCTION_76(v69);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v75 = v83;
        v62 = v66;
      }
    }

    __break(1u);
LABEL_55:
    __break(1u);
  }

  else
  {
LABEL_52:
    type metadata accessor for PhoneStartCallIntent(0);
    type metadata accessor for PhonePersonList();
    v70 = PhonePersonList.__allocating_init(list:)(v75);

    PhoneStartCallIntent.__allocating_init(callCapability:audioRoute:preferredCallProvider:destinationType:contacts:callGroups:)(v76, v77, v78, v15, v70, _swiftEmptyArrayStorage);
    OUTLINED_FUNCTION_65();
  }
}

void _s27PhoneCallFlowDelegatePlugin0a5StartB6IntentC6intent21isRelationshipRequestAcA07CallingG0_p_SbtcfCTf4enn_nSo012INStartVideobG0C_Tt1g5()
{
  OUTLINED_FUNCTION_66();
  v2 = v1;
  v84 = type metadata accessor for Locale();
  v3 = OUTLINED_FUNCTION_7(v84);
  v5 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v3);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_81(v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v10 = OUTLINED_FUNCTION_21(v9);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  OUTLINED_FUNCTION_12_5();
  OUTLINED_FUNCTION_58_2();
  __chkstk_darwin(v13);
  OUTLINED_FUNCTION_42_6(v14, v15, v16, v17, v18, v19, v20, v21, v77);
  __chkstk_darwin(v22);
  OUTLINED_FUNCTION_98_1(v23, v24, v25, v26, v27, v28, v29, v30, v78);
  __chkstk_darwin(v31);
  OUTLINED_FUNCTION_91();
  v79 = v32;
  BackingType = INCallCapabilityGetBackingType();
  if (BackingType == 2)
  {
    v0 = @"VIDEO_CALL";
    goto LABEL_5;
  }

  if (BackingType == 1)
  {
    v0 = @"AUDIO_CALL";
LABEL_5:
    v34 = v0;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_67_1();
  [v35 stringWithFormat:@"(unknown: %i)"];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_47_9();
LABEL_7:
  v36 = v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_116();
  v37 = v79;
  OUTLINED_FUNCTION_30_11();
  v38 = type metadata accessor for SpeakableString();
  v39 = OUTLINED_FUNCTION_39_2();
  __swift_storeEnumTagSinglePayload(v39, v40, v41, v38);
  if (![v2 audioRoute])
  {
    v43 = 0xE700000000000000;
    goto LABEL_18;
  }

  v42 = INCallAudioRouteGetBackingType();
  switch(v42)
  {
    case 4:
      v37 = @"HEY_SIRI_AUDIO_ROUTE";
      break;
    case 3:
      v37 = @"BLUETOOTH_AUDIO_ROUTE";
      break;
    case 2:
      v37 = @"SPEAKERPHONE_AUDIO_ROUTE";
      break;
    default:
      OUTLINED_FUNCTION_67_1();
      [v45 stringWithFormat:@"(unknown: %i)"];
      objc_claimAutoreleasedReturnValue();
      OUTLINED_FUNCTION_47_9();
      goto LABEL_17;
  }

  v44 = v37;
LABEL_17:
  v46 = v37;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v43 = v47;

LABEL_18:
  OUTLINED_FUNCTION_19_3();
  SpeakableString.init(print:speak:)();
  OUTLINED_FUNCTION_23_3();
  __swift_storeEnumTagSinglePayload(v48, v49, v50, v38);
  v51 = INPreferredCallProviderGetBackingType();
  switch(v51)
  {
    case 4:
      v43 = @"THIRD_PARTY_PROVIDER";
      goto LABEL_24;
    case 3:
      v43 = @"FACETIME_PROVIDER";
      goto LABEL_24;
    case 2:
      v43 = @"TELEPHONY_PROVIDER";
LABEL_24:
      v52 = v43;
      goto LABEL_26;
  }

  OUTLINED_FUNCTION_67_1();
  [v53 stringWithFormat:@"(unknown: %i)"];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_47_9();
LABEL_26:
  v54 = v43;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_116();
  v55 = v81;
  OUTLINED_FUNCTION_30_11();
  v56 = OUTLINED_FUNCTION_39_2();
  __swift_storeEnumTagSinglePayload(v56, v57, v58, v38);
  switch(INCallDestinationTypeGetBackingType())
  {
    case 1u:
      v55 = @"NORMAL_DESTINATION";
      goto LABEL_32;
    case 2u:
      v55 = @"EMERGENCY_DESTINATION";
      goto LABEL_32;
    case 3u:
      v55 = @"VOICEMAIL_DESTINATION";
      goto LABEL_32;
    case 4u:
      v55 = @"REDIAL_DESTINATION";
      goto LABEL_32;
    case 5u:
      v55 = @"CALL_BACK_DESTINATION";
LABEL_32:
      v59 = v55;
      break;
    default:
      OUTLINED_FUNCTION_67_1();
      [v76 stringWithFormat:@"(unknown: %i)"];
      objc_claimAutoreleasedReturnValue();
      OUTLINED_FUNCTION_47_9();
      break;
  }

  v60 = v55;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_30_11();
  v61 = OUTLINED_FUNCTION_39_2();
  __swift_storeEnumTagSinglePayload(v61, v62, v63, v38);
  v64 = outlined bridged method (pb) of @objc INStartVideoCallIntent.contacts.getter(v2);
  if (v64)
  {
    v65 = v64;
    v87 = _swiftEmptyArrayStorage;
    v85 = specialized Array.count.getter(v64);
    v66 = 0;
    while (1)
    {
      if (v85 == v66)
      {

        goto LABEL_46;
      }

      if ((v65 & 0xC000000000000001) != 0)
      {
        v68 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        OUTLINED_FUNCTION_95_0(v65 & 0xFFFFFFFFFFFFFF8);
        if (v67)
        {
          goto LABEL_49;
        }

        v68 = *(v65 + 8 * v66 + 32);
      }

      v69 = v68;
      v70 = v66 + 1;
      if (__OFADD__(v66, 1))
      {
        break;
      }

      type metadata accessor for PhonePerson(0);
      static Device.current.getter();
      __swift_project_boxed_opaque_existential_1(v86, v86[3]);
      dispatch thunk of DeviceState.siriLocale.getter();
      OUTLINED_FUNCTION_120();
      v72 = static PhonePerson.make(phonePerson:options:locale:)(v69, v71, v83);

      (*(v5 + 8))(v83, v84);
      ++v66;
      if (v72)
      {
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        v73 = *(&dword_18 + (v87 & 0xFFFFFFFFFFFFFF8));
        if (*(&dword_10 + (v87 & 0xFFFFFFFFFFFFFF8)) >= v73 >> 1)
        {
          OUTLINED_FUNCTION_76(v73);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v66 = v70;
      }
    }

    __break(1u);
LABEL_49:
    __break(1u);
  }

  else
  {
LABEL_46:
    type metadata accessor for PhoneStartCallIntent(0);
    type metadata accessor for PhonePersonList();
    v74 = OUTLINED_FUNCTION_5();
    v75 = PhonePersonList.__allocating_init(list:)(v74);

    PhoneStartCallIntent.__allocating_init(callCapability:audioRoute:preferredCallProvider:destinationType:contacts:callGroups:)(v79, v80, v81, v82, v75, _swiftEmptyArrayStorage);
    OUTLINED_FUNCTION_65();
  }
}

uint64_t _s27PhoneCallFlowDelegatePlugin0A5ErrorOACs0F0AAWlTm_2(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_90();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t objectdestroy_23Tm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 56);

  OUTLINED_FUNCTION_102_0();

  return _swift_deallocObject(v4, v5, v6);
}

void partial apply for closure #3 in CallingIntentHandleIntentFlowStrategy.makeLegacyFailureHandlingIntentOutput(app:intent:intentResponse:_:)()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[7];
  v6 = v0[2];
  CallingIntentHandleIntentFlowStrategy.makeCompletionViewOutput(app:intent:intentResponse:result:_:)();
}

uint64_t OUTLINED_FUNCTION_31_5(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = 1;

  return swift_storeEnumTagMultiPayload();
}

void OUTLINED_FUNCTION_50_7()
{
  v1 = v0[51];
  v2 = v0[52];
  v3 = v0[49];
}

void OUTLINED_FUNCTION_51_9(uint64_t a1@<X8>)
{
  *(v1 + 768) = a1;
  v2 = *(v1 + 392);
  v3 = *(v1 + 352);
  v4 = *(v1 + 320);
  v8 = *(v1 + 272);
  v5 = *(v1 + 232);
  v6 = *(v1 + 224);
  v7 = **(v1 + 240);
}

uint64_t OUTLINED_FUNCTION_53_10()
{

  return outlined init with take of ButtonConfigurationModel?(v0, v1, v2, v3);
}

uint64_t OUTLINED_FUNCTION_54_8()
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_77_4(__n128 *a1, __n128 a2)
{
  a1[1] = a2;

  return outlined init with take of ButtonConfigurationModel(v2, a1 + v3);
}

uint64_t OUTLINED_FUNCTION_78_2()
{

  return outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v0, v1, v2);
}

uint64_t OUTLINED_FUNCTION_99()
{

  return static CATOption.defaultMode.getter();
}

uint64_t OUTLINED_FUNCTION_111_0()
{

  return swift_getAssociatedTypeWitness();
}

uint64_t OUTLINED_FUNCTION_113(uint64_t a1)
{
  *(v1 + 120) = a1;

  return outlined init with copy of SignalProviding(v2 + 24, v3 - 128);
}

uint64_t OUTLINED_FUNCTION_114_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v18 = *(a17 + 344);
  v19 = *(a17 + 328);

  return type metadata accessor for PhonePerson(0);
}

uint64_t OUTLINED_FUNCTION_115_0()
{

  return static PhonePerson.make(phonePerson:options:locale:)(v0, 0, v1);
}

void OUTLINED_FUNCTION_116()
{
}

uint64_t *OUTLINED_FUNCTION_118_0(uint64_t a1)
{
  *(v1 + 48) = a1;

  return __swift_allocate_boxed_opaque_existential_1((v1 + 16));
}

uint64_t OUTLINED_FUNCTION_119_1()
{

  return StackedButtonsModel.responseViewId.getter(v0, 1);
}

uint64_t OUTLINED_FUNCTION_120()
{
  result = __swift_destroy_boxed_opaque_existential_1((v0 - 128));
  v2 = *(v0 - 144) & 1;
  return result;
}

uint64_t CallingIntentNeedsValueFlowStrategy.rePromptCount.getter()
{
  v1 = direct field offset for CallingIntentNeedsValueFlowStrategy.rePromptCount;
  OUTLINED_FUNCTION_19_3();
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t CallingIntentNeedsValueFlowStrategy.rePromptCount.setter(uint64_t a1)
{
  v3 = direct field offset for CallingIntentNeedsValueFlowStrategy.rePromptCount;
  result = OUTLINED_FUNCTION_78_3();
  *(v1 + v3) = a1;
  return result;
}

uint64_t CallingIntentNeedsValueFlowStrategy.startingOver.getter()
{
  v1 = direct field offset for CallingIntentNeedsValueFlowStrategy.startingOver;
  OUTLINED_FUNCTION_19_3();
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t CallingIntentNeedsValueFlowStrategy.startingOver.setter(char a1)
{
  v3 = direct field offset for CallingIntentNeedsValueFlowStrategy.startingOver;
  result = OUTLINED_FUNCTION_78_3();
  *(v1 + v3) = a1;
  return result;
}

void CallingIntentNeedsValueFlowStrategy.actionForInput(_:resolveRecord:)()
{
  OUTLINED_FUNCTION_66();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v74 = type metadata accessor for Parse();
  v6 = OUTLINED_FUNCTION_7(v74);
  v72 = v7;
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v6);
  v71[2] = v71 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = v71 - v12;
  v14 = type metadata accessor for Input();
  v15 = OUTLINED_FUNCTION_7(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  __chkstk_darwin(v15);
  OUTLINED_FUNCTION_4();
  v22 = v21 - v20;
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2();
  }

  v23 = type metadata accessor for Logger();
  v24 = __swift_project_value_buffer(v23, static Logger.siriPhone);
  v25 = *(v17 + 16);
  v73 = v3;
  v25(v22, v3, v14);
  v71[3] = v24;
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = OUTLINED_FUNCTION_86_1();
    v71[0] = v1;
    v29 = v28;
    v30 = swift_slowAlloc();
    v71[1] = v5;
    v75[0] = v30;
    *v29 = 136315394;
    *(v29 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000020, 0x8000000000458B70, v75);
    *(v29 + 12) = 2080;
    _s11SiriKitFlow5InputVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type Input and conformance Input, &type metadata accessor for Input);
    dispatch thunk of CustomStringConvertible.description.getter();
    (*(v17 + 8))(v22, v14);
    v31 = OUTLINED_FUNCTION_53_1();
    v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v32, v33);

    *(v29 + 14) = v34;
    _os_log_impl(&dword_0, v26, v27, "#CallingIntentNeedsValueFlowStrategy %s input: %s", v29, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_26_0();
    v1 = v71[0];
    OUTLINED_FUNCTION_26_0();
  }

  else
  {

    (*(v17 + 8))(v22, v14);
  }

  outlined init with copy of SignalProviding(v1 + 24, v75);
  Input.parse.getter();
  v35 = ContactPromptResponseParser.parseResponse(from:isConfirmationPrompt:)(v13, 0);
  v36 = v72;
  v37 = *(v72 + 8);
  v37(v13, v74);
  outlined destroy of ContactPromptResponseParser(v75);
  if (v35 - 1 < 2)
  {
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_10_0(v45))
    {
      v46 = OUTLINED_FUNCTION_65_0();
      OUTLINED_FUNCTION_11_1(v46);
      OUTLINED_FUNCTION_33(&dword_0, v47, v48, "#CallingIntentNeedsValueFlowStrategy Intent cancelled");
      OUTLINED_FUNCTION_26_0();
    }

    static ActionForInput.cancel()();
  }

  else
  {
    if (v35 == 5)
    {
      v38 = Logger.logObject.getter();
      v49 = static os_log_type_t.debug.getter();
      if (OUTLINED_FUNCTION_10_0(v49))
      {
        v50 = OUTLINED_FUNCTION_65_0();
        OUTLINED_FUNCTION_11_1(v50);
        v43 = "#CallingIntentNeedsValueFlowStrategy unknown intent, ignore this request";
        goto LABEL_16;
      }

LABEL_17:

      static ActionForInput.ignore()();
      goto LABEL_18;
    }

    if (v35 == 6)
    {
      v38 = Logger.logObject.getter();
      v39 = static os_log_type_t.debug.getter();
      if (OUTLINED_FUNCTION_10_0(v39))
      {
        v40 = OUTLINED_FUNCTION_65_0();
        OUTLINED_FUNCTION_11_1(v40);
        v43 = "#CallingIntentNeedsValueFlowStrategy user updated app name or phone verb, ignore current request from current flow";
LABEL_16:
        OUTLINED_FUNCTION_33(&dword_0, v41, v42, v43);
        OUTLINED_FUNCTION_26_0();
        goto LABEL_17;
      }

      goto LABEL_17;
    }

    Input.parse.getter();
    v51 = *(v36 + 88);
    v52 = OUTLINED_FUNCTION_63();
    v54 = v53(v52);
    if (v54 == enum case for Parse.NLv3IntentOnly(_:) || v54 == enum case for Parse.directInvocation(_:) || v54 == enum case for Parse.NLv4IntentOnly(_:) || v54 == enum case for Parse.uso(_:))
    {
      v58 = OUTLINED_FUNCTION_63();
      (v37)(v58);
      v59 = Logger.logObject.getter();
      v60 = static os_log_type_t.debug.getter();
      if (OUTLINED_FUNCTION_10_0(v60))
      {
        v61 = OUTLINED_FUNCTION_65_0();
        OUTLINED_FUNCTION_11_1(v61);
        OUTLINED_FUNCTION_33(&dword_0, v62, v63, "#CallingIntentNeedsValueFlowStrategy actionForInput: handling..");
        OUTLINED_FUNCTION_26_0();
      }

      static ActionForInput.handle()();
    }

    else
    {
      v64 = Logger.logObject.getter();
      v65 = static os_log_type_t.debug.getter();
      if (OUTLINED_FUNCTION_10_0(v65))
      {
        v67 = OUTLINED_FUNCTION_65_0();
        OUTLINED_FUNCTION_11_1(v67);
        OUTLINED_FUNCTION_33(&dword_0, v68, v69, "#CallingIntentNeedsValueFlowStrategy Received unsupported parse while determining action which is not yet supported. Skipping..");
        OUTLINED_FUNCTION_26_0();
      }

      static ActionForInput.ignore()();
      v70 = OUTLINED_FUNCTION_63();
      (v37)(v70);
    }
  }

LABEL_18:
  OUTLINED_FUNCTION_65();
}

uint64_t CallingIntentNeedsValueFlowStrategy.parseValueResponse(input:resolveRecord:)()
{
  OUTLINED_FUNCTION_15();
  v1[41] = v2;
  v1[42] = v0;
  v1[39] = v3;
  v1[40] = v4;
  v5 = *v0;
  v6 = type metadata accessor for PhoneError();
  v1[43] = v6;
  OUTLINED_FUNCTION_21(v6);
  v8 = *(v7 + 64);
  v1[44] = OUTLINED_FUNCTION_45();
  OUTLINED_FUNCTION_49_1();
  v10 = *(v9 + 272);
  v1[45] = v10;
  OUTLINED_FUNCTION_43_9(v10);
  OUTLINED_FUNCTION_49_1();
  v1[46] = *(v11 + 264);
  v1[47] = swift_getAssociatedTypeWitness();
  v12 = type metadata accessor for ParameterResolutionRecord();
  v1[48] = v12;
  OUTLINED_FUNCTION_13_2(v12);
  v1[49] = v13;
  v1[50] = *(v14 + 64);
  v1[51] = OUTLINED_FUNCTION_62_4();
  v1[52] = swift_task_alloc();
  v1[53] = swift_task_alloc();
  v15 = type metadata accessor for Parse();
  v1[54] = v15;
  OUTLINED_FUNCTION_13_2(v15);
  v1[55] = v16;
  v18 = *(v17 + 64);
  v1[56] = OUTLINED_FUNCTION_62_4();
  v1[57] = swift_task_alloc();
  v19 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v19, v20, v21);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_13_1();
  *v2 = v1;
  v4 = *(v3 + 512);
  *v2 = *v0;
  *(v1 + 520) = v5;

  v6 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v6, v7, v8);
}

{
  v59 = v0;
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2();
  }

  v1 = v0[65];
  v3 = v0[60];
  v2 = v0[61];
  v4 = v0[52];
  v5 = v0[48];
  v6 = v0[41];
  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, static Logger.siriPhone);
  v8 = OUTLINED_FUNCTION_43_3();
  v3(v8);
  v9 = v1;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = v0[65];
    v13 = v0[52];
    v14 = v0[49];
    v56 = v0[48];
    v15 = v0[47];
    v16 = OUTLINED_FUNCTION_86_1();
    v17 = swift_slowAlloc();
    v18 = OUTLINED_FUNCTION_36();
    v58[0] = v18;
    *v16 = 136315394;
    v0[38] = v12;
    v19 = v12;
    OUTLINED_FUNCTION_21_10();
    v20 = String.init<A>(describing:)();
    v22 = v21;
    v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v21, v58);

    *(v16 + 4) = v23;
    *(v16 + 12) = 2112;
    ParameterResolutionRecord.intent.getter();
    v24 = OUTLINED_FUNCTION_67_2();
    v25(v24);
    *(v16 + 14) = v22;
    *v17 = v22;
    OUTLINED_FUNCTION_75_2(&dword_0, v26, v27, "#CallingIntentNeedsValueFlowStrategy SKIntent after NCR replacement: %s, and with previousIntent: %@");
    outlined destroy of PhoneCallNLIntent?(v17, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    OUTLINED_FUNCTION_26_0();
    __swift_destroy_boxed_opaque_existential_1(v18);
    OUTLINED_FUNCTION_26_0();
    OUTLINED_FUNCTION_12_3();
  }

  else
  {
    v28 = v0[52];
    v29 = v0[48];
    v30 = v0[49];

    v31 = *(v30 + 8);
    v32 = OUTLINED_FUNCTION_43_3();
    v33(v32);
  }

  v34 = v0[65];
  v35 = v0[63];
  v55 = v0[58];
  v57 = v0[59];
  v54 = v0[56];
  v52 = v0[62];
  v53 = v0[54];
  v36 = v0[48];
  v37 = v0[41];
  v38 = v0[42];
  v39 = v0[39];
  v40 = (*(*(*(v35 + 8) + 8) + 8))(v0[47]);
  v41 = *(v35 + 40);
  v42 = OUTLINED_FUNCTION_36_2();
  v44 = v43(v42);
  v45 = ParameterResolutionRecord.intent.getter();
  CallingIntentNeedsValueFlowStrategy.mergePreviousIntentIntoCurrentOne(previousIntent:callingIntent:)(v45);

  v58[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8INPersonCGSg_SaySo11INCallGroupCGSgtMd, &_sSaySo8INPersonCGSg_SaySo11INCallGroupCGSgtMR);
  v58[0] = v40;
  v58[1] = v44;
  IntentPromptAnswer.init(answeredValue:updatedIntent:)();

  type metadata accessor for IntentPromptAnswer();
  OUTLINED_FUNCTION_23_3();
  __swift_storeEnumTagSinglePayload(v46, v47, v48, v49);
  v55(v54, v53);
  OUTLINED_FUNCTION_27_9();

  OUTLINED_FUNCTION_8_1();

  return v50();
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_13_1();
  *v2 = v1;
  v4 = *(v3 + 544);
  *v2 = *v0;
  *(v1 + 552) = v5;

  v6 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v6, v7, v8);
}

{
  v51 = v0;
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2();
  }

  v1 = v0[69];
  v3 = v0[60];
  v2 = v0[61];
  v4 = v0[51];
  v5 = v0[48];
  v6 = v0[41];
  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, static Logger.siriPhone);
  v8 = OUTLINED_FUNCTION_43_3();
  v3(v8);
  v9 = v1;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = v0[69];
    v13 = v0[51];
    v14 = v0[49];
    v49 = v0[48];
    v15 = v0[47];
    v16 = OUTLINED_FUNCTION_86_1();
    v17 = swift_slowAlloc();
    v18 = OUTLINED_FUNCTION_36();
    v50[0] = v18;
    *v16 = 136315394;
    v0[37] = v12;
    v19 = v12;
    OUTLINED_FUNCTION_21_10();
    v20 = String.init<A>(describing:)();
    v22 = v21;
    v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v21, v50);

    *(v16 + 4) = v23;
    *(v16 + 12) = 2112;
    ParameterResolutionRecord.intent.getter();
    v24 = OUTLINED_FUNCTION_67_2();
    v25(v24);
    *(v16 + 14) = v22;
    *v17 = v22;
    OUTLINED_FUNCTION_75_2(&dword_0, v26, v27, "#CallingIntentNeedsValueFlowStrategy SKIntent after NCR replacement: %s, and with previousIntent: %@");
    outlined destroy of PhoneCallNLIntent?(v17, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    OUTLINED_FUNCTION_26_0();
    __swift_destroy_boxed_opaque_existential_1(v18);
    OUTLINED_FUNCTION_26_0();
    OUTLINED_FUNCTION_12_3();
  }

  else
  {
    v28 = v0[51];
    v29 = v0[48];
    v30 = v0[49];

    v31 = *(v30 + 8);
    v32 = OUTLINED_FUNCTION_43_3();
    v33(v32);
  }

  v34 = v0[69];
  v35 = v0[67];
  v36 = v0[66];
  v37 = v0[39];
  v38 = (*(*(*(v35 + 8) + 8) + 8))(v0[47]);
  v39 = *(v35 + 40);
  v40 = OUTLINED_FUNCTION_20_0();
  v42 = v41(v40);
  v50[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8INPersonCGSg_SaySo11INCallGroupCGSgtMd, &_sSaySo8INPersonCGSg_SaySo11INCallGroupCGSgtMR);
  v50[0] = v38;
  v50[1] = v42;
  IntentPromptAnswer.init(answeredValue:updatedIntent:)();

  type metadata accessor for IntentPromptAnswer();
  OUTLINED_FUNCTION_23_3();
  __swift_storeEnumTagSinglePayload(v43, v44, v45, v46);
  OUTLINED_FUNCTION_27_9();

  OUTLINED_FUNCTION_8_1();

  return v47();
}

void CallingIntentNeedsValueFlowStrategy.parseValueResponse(input:resolveRecord:)()
{
  v1 = *(v0 + 456);
  v2 = *(v0 + 432);
  v3 = *(v0 + 440);
  v4 = *(v0 + 336);
  v5 = *(v0 + 320);
  v6 = v4[7];
  __swift_project_boxed_opaque_existential_1(v4 + 3, v4[6]);
  v7 = *(v6 + 72);
  v8 = OUTLINED_FUNCTION_25_0();
  v10 = v9(v8);
  Input.parse.getter();
  (*(*v10 + 192))(v1);

  v11 = *(v3 + 8);
  *(v0 + 464) = v11;
  *(v0 + 472) = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v12 = OUTLINED_FUNCTION_55();
  v11(v12);
  if (!*(v0 + 80))
  {
    outlined destroy of PhoneCallNLIntent?(v0 + 56, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMR);
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2();
    }

    v82 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_9_0(v82, static Logger.siriPhone);
    v83 = Logger.logObject.getter();
    v84 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_8_0(v84))
    {
      v85 = OUTLINED_FUNCTION_65_0();
      OUTLINED_FUNCTION_11_1(v85);
      OUTLINED_FUNCTION_14_1(&dword_0, v86, v87, "#CallingIntentNeedsValueFlowStrategy Received unsupported parse type. Skipping..");
      OUTLINED_FUNCTION_12_3();
    }

    v89 = *(v0 + 344);
    v88 = *(v0 + 352);

    *v88 = xmmword_42D060;
    *(v88 + 16) = 2;
    OUTLINED_FUNCTION_55();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_1_42();
    _s11SiriKitFlow5InputVACs23CustomStringConvertibleAAWlTm_0(v90, v91);
    OUTLINED_FUNCTION_147();
    OUTLINED_FUNCTION_66_6();
    PhoneError.logged()(v92);
    outlined destroy of PhoneError(v88);
    swift_willThrow();
    goto LABEL_29;
  }

  outlined init with take of SPHConversation((v0 + 56), v0 + 16);
  v13 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  v14 = *(v13 + 24);
  v15 = OUTLINED_FUNCTION_55();
  v17 = *(v16(v15) + 16);

  if (v17)
  {
    goto LABEL_5;
  }

  v18 = OUTLINED_FUNCTION_9_23();
  v20 = PhoneCallNLIntent.getPersons()(v18, v19);
  v21 = specialized Array.count.getter(v20);

  if (v21 || (v22 = *(v0 + 48), __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40)), v23 = *(v22 + 136), v24 = OUTLINED_FUNCTION_55(), v26 = *(v25(v24) + 16), , v26))
  {
LABEL_5:
    v207 = v11;
    v27 = *(v0 + 424);
    v28 = *(v0 + 392);
    v29 = *(v0 + 400);
    v30 = *(v0 + 384);
    v32 = *(v0 + 328);
    v31 = *(v0 + 336);
    v209 = v31[32];
    v208 = *(v0 + 360);
    __swift_project_boxed_opaque_existential_1(v31 + 28, v31[31]);
    type metadata accessor for SiriKitEvent();
    v33 = ParameterResolutionRecord.intent.getter();
    v34 = [v33 typeName];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v35 = *(v28 + 16);
    *(v0 + 480) = v35;
    *(v0 + 488) = (v28 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v35(v27, v32, v30);
    outlined init with copy of SignalProviding(v0 + 16, v0 + 96);
    v36 = (*(v28 + 80) + 32) & ~*(v28 + 80);
    v37 = swift_allocObject();
    v37[1] = vextq_s8(v208, v208, 8uLL);
    (*(v28 + 32))(&v37->i8[v36], v27, v30);
    outlined init with take of SPHConversation((v0 + 96), v37->i64 + ((v29 + v36 + 7) & 0xFFFFFFFFFFFFFFF8));
    SiriKitEvent.__allocating_init(stateType:taskType:statusReason:_:)();
    dispatch thunk of SiriKitEventSending.send(_:)();

    OUTLINED_FUNCTION_9_23();
    if (PhoneCallNLIntent.isGroupFaceTimeCall()())
    {
      v38 = *(v0 + 384);
      v39 = *(v0 + 328);
      v40 = v4[7];
      __swift_project_boxed_opaque_existential_1(v4 + 3, v4[6]);
      v41 = *(v40 + 8);
      v42 = OUTLINED_FUNCTION_33_4();
      v43(v42);
      v44 = *(v0 + 288);
      __swift_project_boxed_opaque_existential_1((v0 + 256), *(v0 + 280));
      ParameterResolutionRecord.app.getter();
      v45 = DeviceState.isGroupFaceTimeDeviceUnsupported(app:)();

      __swift_destroy_boxed_opaque_existential_1((v0 + 256));
      if (v45)
      {
        if (one-time initialization token for siriPhone != -1)
        {
          OUTLINED_FUNCTION_6_2();
        }

        v46 = type metadata accessor for Logger();
        OUTLINED_FUNCTION_9_0(v46, static Logger.siriPhone);
        v47 = Logger.logObject.getter();
        v48 = static os_log_type_t.error.getter();
        if (OUTLINED_FUNCTION_8_0(v48))
        {
          v49 = OUTLINED_FUNCTION_65_0();
          OUTLINED_FUNCTION_11_1(v49);
          OUTLINED_FUNCTION_14_1(&dword_0, v50, v51, "#CallingIntentNeedsValueFlowStrategy Group FaceTime is unsupported for mac, homepod and watch");
          OUTLINED_FUNCTION_12_3();
        }

LABEL_27:
        v99 = *(v0 + 344);
        v98 = *(v0 + 352);

        OUTLINED_FUNCTION_55();
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_1_42();
        _s11SiriKitFlow5InputVACs23CustomStringConvertibleAAWlTm_0(v100, v101);
        OUTLINED_FUNCTION_147();
        OUTLINED_FUNCTION_66_6();
        PhoneError.logged()(v102);
        outlined destroy of PhoneError(v98);
        swift_willThrow();
LABEL_28:
        __swift_destroy_boxed_opaque_existential_1((v0 + 16));
LABEL_29:
        v104 = *(v0 + 448);
        v103 = *(v0 + 456);
        v106 = *(v0 + 416);
        v105 = *(v0 + 424);
        v107 = *(v0 + 408);
        v108 = *(v0 + 352);

        OUTLINED_FUNCTION_11();
        goto LABEL_30;
      }
    }

    OUTLINED_FUNCTION_9_23();
    if (PhoneCallNLIntent.isEmergencyContactCall()())
    {
      OUTLINED_FUNCTION_9_23();
      if (PhoneCallNLIntent.isFaceTimeCall()() || (v52 = *(v0 + 384), v53 = *(v0 + 328), ParameterResolutionRecord.app.getter(), v54 = App.isFirstParty()(), , !v54))
      {
        if (one-time initialization token for siriPhone != -1)
        {
          OUTLINED_FUNCTION_6_2();
        }

        v93 = type metadata accessor for Logger();
        OUTLINED_FUNCTION_9_0(v93, static Logger.siriPhone);
        v47 = Logger.logObject.getter();
        v94 = static os_log_type_t.error.getter();
        if (OUTLINED_FUNCTION_8_0(v94))
        {
          v95 = OUTLINED_FUNCTION_65_0();
          OUTLINED_FUNCTION_11_1(v95);
          OUTLINED_FUNCTION_14_1(&dword_0, v96, v97, "#CallingIntentNeedsValueFlowStrategy FaceTime/3rd-party emergency contact calling is unsupported");
          OUTLINED_FUNCTION_12_3();
        }

        goto LABEL_27;
      }
    }

    v56 = *(v0 + 440);
    v55 = *(v0 + 448);
    v57 = *(v0 + 432);
    v58 = *(v0 + 320);
    Input.parse.getter();
    v59 = *(v56 + 88);
    v60 = OUTLINED_FUNCTION_55();
    v62 = v61(v60);
    if (v62 == enum case for Parse.NLv3IntentOnly(_:))
    {
      v64 = *(v0 + 376);
      v63 = *(v0 + 384);
      v66 = *(v0 + 320);
      v65 = *(v0 + 328);
      v67 = v4[7];
      __swift_project_boxed_opaque_existential_1(v4 + 3, v4[6]);
      v68 = *(v67 + 80);
      v69 = OUTLINED_FUNCTION_36_2();
      v70(v69);
      ParameterResolutionRecord.app.getter();
      OUTLINED_FUNCTION_48_8();
      v72 = v71;
      *(v0 + 496) = v71;

      outlined destroy of SKTransformer(v0 + 216);
      if (!v72)
      {
        if (one-time initialization token for siriPhone != -1)
        {
          OUTLINED_FUNCTION_6_2();
        }

        v166 = type metadata accessor for Logger();
        OUTLINED_FUNCTION_9_0(v166, static Logger.siriPhone);
        v167 = Logger.logObject.getter();
        v168 = static os_log_type_t.error.getter();
        if (OUTLINED_FUNCTION_8_0(v168))
        {
          v169 = OUTLINED_FUNCTION_65_0();
          OUTLINED_FUNCTION_11_1(v169);
          OUTLINED_FUNCTION_14_1(&dword_0, v170, v171, "#CallingIntentNeedsValueFlowStrategy SiriKit conversion failed for NLv3.");
          OUTLINED_FUNCTION_12_3();
        }

        v172 = *(v0 + 448);
        v173 = *(v0 + 432);
        v175 = *(v0 + 344);
        v174 = *(v0 + 352);

        OUTLINED_FUNCTION_92();
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_1_42();
        _s11SiriKitFlow5InputVACs23CustomStringConvertibleAAWlTm_0(v176, v177);
        OUTLINED_FUNCTION_74_3();
        OUTLINED_FUNCTION_66_6();
        PhoneError.logged()(v178);
        outlined destroy of PhoneError(v174);
        swift_willThrow();
        (v207)(v172, v173);
        goto LABEL_28;
      }

      v73 = *(v0 + 368);
      v74 = *(v0 + 376);
      v75 = *(v0 + 360);
      v77 = *(v0 + 328);
      v76 = *(v0 + 336);
      *(v0 + 504) = swift_getAssociatedConformanceWitness();
      v78 = v72;
      CallingIntentNeedsValueFlowStrategy.updateINIntent(currentINIntent:resolveRecord:)();

      v79 = *(*v76 + 440);
      v210 = v79 + *v79;
      v80 = v79[1];
      v81 = swift_task_alloc();
      *(v0 + 512) = v81;
      *v81 = v0;
      OUTLINED_FUNCTION_51_10(v81);
      goto LABEL_58;
    }

    if (v62 == enum case for Parse.NLv4IntentOnly(_:) || v62 == enum case for Parse.uso(_:))
    {
      v113 = *(v0 + 376);
      v112 = *(v0 + 384);
      v115 = *(v0 + 320);
      v114 = *(v0 + 328);
      (v207)(*(v0 + 448), *(v0 + 432));
      v116 = v4[7];
      __swift_project_boxed_opaque_existential_1(v4 + 3, v4[6]);
      v117 = *(v116 + 80);
      v118 = OUTLINED_FUNCTION_36_2();
      v119(v118);
      ParameterResolutionRecord.app.getter();
      OUTLINED_FUNCTION_48_8();
      v121 = v120;
      *(v0 + 528) = v120;

      outlined destroy of SKTransformer(v0 + 136);
      if (!v121)
      {
        if (one-time initialization token for siriPhone != -1)
        {
          OUTLINED_FUNCTION_6_2();
        }

        v202 = type metadata accessor for Logger();
        OUTLINED_FUNCTION_9_0(v202, static Logger.siriPhone);
        v47 = Logger.logObject.getter();
        v203 = static os_log_type_t.error.getter();
        if (OUTLINED_FUNCTION_8_0(v203))
        {
          v204 = OUTLINED_FUNCTION_65_0();
          OUTLINED_FUNCTION_11_1(v204);
          OUTLINED_FUNCTION_14_1(&dword_0, v205, v206, "#CallingIntentNeedsValueFlowStrategy SiriKit conversion failed for NLv4/USO.");
          OUTLINED_FUNCTION_12_3();
        }

        goto LABEL_27;
      }

      v122 = v4[7];
      __swift_project_boxed_opaque_existential_1(v4 + 3, v4[6]);
      v123 = *(v122 + 56);
      v124 = v121;
      v125 = OUTLINED_FUNCTION_92();
      v126 = v123(v125);
      v127 = OUTLINED_FUNCTION_40_9(v126);
      v129 = (*(v128 + 232))(v127);

      if (v129)
      {
        v130 = *(v0 + 368);
        v131 = *(v0 + 376);
        v132 = *(v0 + 360);
        AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
        if ((*(AssociatedConformanceWitness + 136))(v131, AssociatedConformanceWitness))
        {
          v134 = *(v0 + 384);
          v135 = *(v0 + 328);
          v136 = v4[7];
          __swift_project_boxed_opaque_existential_1(v4 + 3, v4[6]);
          v137 = *(v136 + 8);
          v138 = OUTLINED_FUNCTION_25_0();
          v139(v138);
          v140 = *(v0 + 208);
          __swift_project_boxed_opaque_existential_1((v0 + 176), *(v0 + 200));
          ParameterResolutionRecord.app.getter();
          v141 = DeviceState.isGroupFaceTimeDeviceUnsupported(app:)();

          __swift_destroy_boxed_opaque_existential_1((v0 + 176));
          if (v141)
          {
            if (one-time initialization token for siriPhone != -1)
            {
              OUTLINED_FUNCTION_6_2();
            }

            v142 = type metadata accessor for Logger();
            OUTLINED_FUNCTION_9_0(v142, static Logger.siriPhone);
            v143 = Logger.logObject.getter();
            v144 = static os_log_type_t.error.getter();
            if (os_log_type_enabled(v143, v144))
            {
              v145 = OUTLINED_FUNCTION_65_0();
              *v145 = 0;
              _os_log_impl(&dword_0, v143, v144, "#CallingIntentNeedsValueFlowStrategy Group FaceTime is unsupported for mac, homepod and watch", v145, 2u);
              OUTLINED_FUNCTION_26_0();
            }

            v147 = *(v0 + 344);
            v146 = *(v0 + 352);

            OUTLINED_FUNCTION_92();
            swift_storeEnumTagMultiPayload();
            OUTLINED_FUNCTION_1_42();
            _s11SiriKitFlow5InputVACs23CustomStringConvertibleAAWlTm_0(v148, v149);
            OUTLINED_FUNCTION_74_3();
            OUTLINED_FUNCTION_66_6();
            PhoneError.logged()(v150);
            outlined destroy of PhoneError(v146);
            swift_willThrow();

            goto LABEL_28;
          }
        }
      }

      v180 = *(v0 + 368);
      v179 = *(v0 + 376);
      v181 = *(v0 + 360);
      v183 = *(v0 + 328);
      v182 = *(v0 + 336);

      *(v0 + 536) = swift_getAssociatedConformanceWitness();
      v184 = v124;
      CallingIntentNeedsValueFlowStrategy.updateINIntent(currentINIntent:resolveRecord:)();

      v185 = *(*v182 + 440);
      v211 = v185 + *v185;
      v186 = v185[1];
      v187 = swift_task_alloc();
      *(v0 + 544) = v187;
      *v187 = v0;
      OUTLINED_FUNCTION_51_10(v187);
LABEL_58:
      OUTLINED_FUNCTION_42_5();

      __asm { BRAA            X4, X16 }
    }

    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2();
    }

    v151 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_9_0(v151, static Logger.siriPhone);
    v152 = Logger.logObject.getter();
    v153 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_8_0(v153))
    {
      v154 = OUTLINED_FUNCTION_65_0();
      OUTLINED_FUNCTION_11_1(v154);
      OUTLINED_FUNCTION_14_1(&dword_0, v155, v156, "#CallingIntentNeedsValueFlowStrategy Pass-thru expected, as SiriKit will call us for other types of parses");
      OUTLINED_FUNCTION_12_3();
    }

    v157 = *(v0 + 448);
    v158 = *(v0 + 432);
    v159 = *(v0 + 376);
    v160 = *(v0 + 312);

    type metadata accessor for IntentPromptAnswer();
    OUTLINED_FUNCTION_7_6();
    __swift_storeEnumTagSinglePayload(v161, v162, v163, v164);
    v165 = OUTLINED_FUNCTION_55();
    v207(v165);
  }

  else
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2();
    }

    v190 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_9_0(v190, static Logger.siriPhone);
    v191 = Logger.logObject.getter();
    v192 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_8_0(v192))
    {
      v193 = OUTLINED_FUNCTION_65_0();
      OUTLINED_FUNCTION_11_1(v193);
      OUTLINED_FUNCTION_14_1(&dword_0, v194, v195, "#CallingIntentNeedsValueFlowStrategy contacts, resolved persons, and smsGroups were empty at prompt. IntentPromptAnswer = nil, reprompt.");
      OUTLINED_FUNCTION_12_3();
    }

    v196 = *(v0 + 376);
    v197 = *(v0 + 312);

    type metadata accessor for IntentPromptAnswer();
    OUTLINED_FUNCTION_7_6();
    __swift_storeEnumTagSinglePayload(v198, v199, v200, v201);
  }

  OUTLINED_FUNCTION_27_9();

  OUTLINED_FUNCTION_8_1();
LABEL_30:
  OUTLINED_FUNCTION_42_5();

  __asm { BRAA            X1, X16 }
}