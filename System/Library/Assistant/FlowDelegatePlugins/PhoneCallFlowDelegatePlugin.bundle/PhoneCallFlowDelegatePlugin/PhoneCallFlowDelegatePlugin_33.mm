uint64_t PromptForValueAfterReadingVoicemailFlowStrategy.parseValueResponse(input:)()
{
  OUTLINED_FUNCTION_15();
  v1[2] = v2;
  v1[3] = v0;
  v3 = type metadata accessor for Parse();
  v1[4] = v3;
  OUTLINED_FUNCTION_13_2(v3);
  v1[5] = v4;
  v6 = *(v5 + 64);
  v1[6] = OUTLINED_FUNCTION_45();
  v7 = type metadata accessor for Input();
  v1[7] = v7;
  OUTLINED_FUNCTION_13_2(v7);
  v1[8] = v8;
  v10 = *(v9 + 64);
  v1[9] = OUTLINED_FUNCTION_45();
  v11 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v11, v12, v13);
}

{
  OUTLINED_FUNCTION_39_4();
  v46 = v0;
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2();
  }

  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];
  v4 = v0[2];
  v5 = v0[3];
  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Logger.siriPhone);
  (*(v2 + 16))(v1, v4, v3);

  v7 = Logger.logObject.getter();
  static os_log_type_t.debug.getter();
  OUTLINED_FUNCTION_87();
  v8 = OUTLINED_FUNCTION_86_0();
  v10 = v0[8];
  v9 = v0[9];
  v11 = v0[7];
  if (v8)
  {
    v12 = v0[3];
    v13 = swift_slowAlloc();
    swift_slowAlloc();
    OUTLINED_FUNCTION_66_1();
    *v13 = 136315394;
    v14 = OUTLINED_FUNCTION_23_2(OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin47PromptForValueAfterReadingVoicemailFlowStrategy_logPrefix);
    v18 = OUTLINED_FUNCTION_62_19(v14, v15, v16, v17);
    v26 = OUTLINED_FUNCTION_127(v18, v19, v20, v21, v22, v23, v24, v25, v45[0], v45[1], v45[2]);

    *(v13 + 4) = v26;
    *(v13 + 12) = 2080;
    lazy protocol witness table accessor for type Input and conformance Input(&lazy protocol witness table cache variable for type Input and conformance Input, &type metadata accessor for Input);
    v27 = dispatch thunk of CustomStringConvertible.description.getter();
    v29 = v28;
    (*(v10 + 8))(v9, v11);
    v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v29, v45);

    *(v13 + 14) = v30;
    OUTLINED_FUNCTION_7_44();
    _os_log_impl(v31, v32, v33, v34, v35, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_14_0();
    OUTLINED_FUNCTION_35();
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v36 = v0[9];
  v38 = v0[5];
  v37 = v0[6];
  v40 = v0[3];
  v39 = v0[4];
  v41 = v0[2];
  Input.parse.getter();
  v42 = PromptForValueAfterReadingVoicemailFlowStrategy.parsePromptResponse(from:)(v37);
  (*(v38 + 8))(v37, v39);

  v43 = v0[1];

  return v43(v42);
}

uint64_t PromptForValueAfterReadingVoicemailFlowStrategy.makeRepromptOnEmptyParse()()
{
  OUTLINED_FUNCTION_15();
  v1 = *(v0 + 16);
  type metadata accessor for EmptyOutput();
  static EmptyOutput.instance.getter();
  OUTLINED_FUNCTION_8_1();

  return v2();
}

uint64_t PromptForValueAfterReadingVoicemailFlowStrategy.parsePromptResponse(from:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Parse();
  v5 = OUTLINED_FUNCTION_7(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v5);
  OUTLINED_FUNCTION_4();
  v12 = v11 - v10;
  (*(v7 + 16))(v11 - v10, a1, v4);
  v13 = (*(v7 + 88))(v12, v4);
  v14 = enum case for Parse.NLv3IntentOnly(_:);
  v15 = enum case for Parse.NLv4IntentOnly(_:);
  v16 = enum case for Parse.uso(_:);
  (*(v7 + 8))(v12, v4);
  if (v13 != v14 && v13 != v15 && v13 != v16)
  {
    goto LABEL_13;
  }

  v19 = v2[10];
  v13 = v2[11];
  __swift_project_boxed_opaque_existential_1(v2 + 7, v19);
  v20 = (*(v13 + 72))(v19, v13);
  (*(*v20 + 192))(&v55, a1);

  if (!v56)
  {
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(&v55, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMR);
LABEL_13:
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2();
    }

    v22 = type metadata accessor for Logger();
    __swift_project_value_buffer(v22, static Logger.siriPhone);
    OUTLINED_FUNCTION_40_0();

    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v23, v24))
    {
      OUTLINED_FUNCTION_42();
      *&v55 = OUTLINED_FUNCTION_83();
      *v13 = 136315138;
      v25 = OUTLINED_FUNCTION_5_5((v2 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin47PromptForValueAfterReadingVoicemailFlowStrategy_logPrefix));
      v57 = 0;
      v58 = v26;
      DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v25, v27, v28, v29);
      getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v57, v58, &v55);
      OUTLINED_FUNCTION_40_0();

      *(v13 + 4) = &v57;
      OUTLINED_FUNCTION_26(&dword_0, v30, v31, "%s parsePromptResponse gets an error, return .unknown");
      OUTLINED_FUNCTION_3_7();
      OUTLINED_FUNCTION_35();
    }

    return 4;
  }

  outlined init with take of SPHConversation(&v55, &v57);
  OUTLINED_FUNCTION_33_21();
  if (PhoneCallNLIntent.isNextAfterPlayingVoiceMail()())
  {
    __swift_destroy_boxed_opaque_existential_1(&v57);
    return 0;
  }

  OUTLINED_FUNCTION_33_21();
  if (PhoneCallNLIntent.isRepeatAfterPlayingVoiceMail()())
  {
    __swift_destroy_boxed_opaque_existential_1(&v57);
    return 3;
  }

  else
  {
    OUTLINED_FUNCTION_33_21();
    if (PhoneCallNLIntent.isVoiceMailCallOrCallBack()())
    {
      __swift_destroy_boxed_opaque_existential_1(&v57);
      return 2;
    }

    else
    {
      v32 = v59;
      v33 = v60;
      __swift_project_boxed_opaque_existential_1(&v57, v59);
      if (((*(v33 + 64))(v32, v33) - 1) > 1u)
      {
        if (one-time initialization token for siriPhone != -1)
        {
          OUTLINED_FUNCTION_6_2();
        }

        v44 = type metadata accessor for Logger();
        __swift_project_value_buffer(v44, static Logger.siriPhone);
        OUTLINED_FUNCTION_40_0();

        v45 = Logger.logObject.getter();
        v46 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v45, v46))
        {
          OUTLINED_FUNCTION_42();
          v54 = OUTLINED_FUNCTION_83();
          *&v55 = 0;
          *v13 = 136315138;
          v47 = OUTLINED_FUNCTION_5_5((v2 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin47PromptForValueAfterReadingVoicemailFlowStrategy_logPrefix));
          *(&v55 + 1) = v48;
          DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v47, v49, v50, v51);
          getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v55, *(&v55 + 1), &v54);
          OUTLINED_FUNCTION_40_0();

          *(v13 + 4) = &v55;
          OUTLINED_FUNCTION_26(&dword_0, v52, v53, "%s user followed a unknown follow up");
          OUTLINED_FUNCTION_3_7();
          OUTLINED_FUNCTION_35();
        }

        __swift_destroy_boxed_opaque_existential_1(&v57);
        return 4;
      }

      if (one-time initialization token for siriPhone != -1)
      {
        OUTLINED_FUNCTION_6_2();
      }

      v34 = type metadata accessor for Logger();
      __swift_project_value_buffer(v34, static Logger.siriPhone);
      OUTLINED_FUNCTION_40_0();

      v35 = Logger.logObject.getter();
      v36 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v35, v36))
      {
        OUTLINED_FUNCTION_42();
        v54 = OUTLINED_FUNCTION_83();
        *&v55 = 0;
        *v13 = 136315138;
        v37 = OUTLINED_FUNCTION_5_5((v2 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin47PromptForValueAfterReadingVoicemailFlowStrategy_logPrefix));
        *(&v55 + 1) = v38;
        DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v37, v39, v40, v41);
        getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v55, *(&v55 + 1), &v54);
        OUTLINED_FUNCTION_40_0();

        *(v13 + 4) = &v55;
        OUTLINED_FUNCTION_26(&dword_0, v42, v43, "%s user followed with no/cancel");
        OUTLINED_FUNCTION_3_7();
        OUTLINED_FUNCTION_35();
      }

      __swift_destroy_boxed_opaque_existential_1(&v57);
      return 1;
    }
  }
}

uint64_t PromptForValueAfterReadingVoicemailFlowStrategy.makePromptForValue()(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_1(PromptForValueAfterReadingVoicemailFlowStrategy.makePromptForValue());
}

uint64_t PromptForValueAfterReadingVoicemailFlowStrategy.makePromptForValue()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_67_13();
  a19 = v22;
  a20 = v23;
  OUTLINED_FUNCTION_24_1();
  a18 = v20;
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2();
  }

  v24 = v20[3];
  v25 = type metadata accessor for Logger();
  __swift_project_value_buffer(v25, static Logger.siriPhone);
  OUTLINED_FUNCTION_11_0();

  v26 = Logger.logObject.getter();
  static os_log_type_t.debug.getter();
  OUTLINED_FUNCTION_87();
  if (OUTLINED_FUNCTION_86_0())
  {
    v27 = v20[3];
    OUTLINED_FUNCTION_42();
    a10 = OUTLINED_FUNCTION_83();
    a11 = 0;
    *v24 = 136315138;
    v28 = OUTLINED_FUNCTION_23_2(OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin47PromptForValueAfterReadingVoicemailFlowStrategy_logPrefix);
    a12 = v29;
    DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v28, v30, v31, v32);
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a11, a12, &a10);
    OUTLINED_FUNCTION_63_1();
    *(v24 + 4) = v21;
    OUTLINED_FUNCTION_7_44();
    _os_log_impl(v33, v34, v35, v36, v37, 0xCu);
    OUTLINED_FUNCTION_3_7();
    OUTLINED_FUNCTION_35();
  }

  if (*(v20[3] + 48) == 1)
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    v20[4] = v38;
    *v38 = v39;
    v38[1] = DialogOutputFactory.makeOutput();
    v40 = v20[2];
    v41 = v20[3];
    OUTLINED_FUNCTION_48_20();

    return PromptForValueAfterReadingVoicemailFlowStrategy.generateSingleItemOutput()();
  }

  else
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    v20[5] = v44;
    *v44 = v45;
    v44[1] = closure #2 in AnnounceCallConfirmationStrategy.makeSections(itemToConfirm:);
    v46 = v20[2];
    v47 = v20[3];
    OUTLINED_FUNCTION_48_20();

    return PromptForValueAfterReadingVoicemailFlowStrategy.generateMultipleItemsOutput()();
  }
}

uint64_t PromptForValueAfterReadingVoicemailFlowStrategy.generateMultipleItemsOutput()()
{
  OUTLINED_FUNCTION_15();
  v1[127] = v0;
  v1[121] = v2;
  v3 = type metadata accessor for OutputGenerationManifest();
  v1[128] = v3;
  OUTLINED_FUNCTION_13_2(v3);
  v1[129] = v4;
  v6 = *(v5 + 64);
  v1[130] = OUTLINED_FUNCTION_45();
  v7 = type metadata accessor for SingleResultVoicemailModel();
  OUTLINED_FUNCTION_21(v7);
  v9 = *(v8 + 64);
  v1[131] = OUTLINED_FUNCTION_45();
  v10 = type metadata accessor for SpeakableString();
  v1[132] = v10;
  OUTLINED_FUNCTION_13_2(v10);
  v1[133] = v11;
  v1[134] = *(v12 + 64);
  v1[135] = swift_task_alloc();
  v1[136] = swift_task_alloc();
  v1[137] = swift_task_alloc();
  v13 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v13, v14, v15);
}

{
  v52 = v1;
  v2 = *(v1[127] + 16);
  OUTLINED_FUNCTION_68_10();
  if (v0)
  {
    v3 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    v3 = *(v2 + 32);
  }

  v1[138] = v3;
  v4 = v1[127];
  v47 = *(v3 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_unseen);
  outlined init with copy of SignalProviding(v4 + 192, (v1 + 87));
  v48 = v3;
  *(v4 + 321);
  v5 = v1[137];
  v6 = v1[136];
  v7 = v1[127];
  SpeakableString.init(print:speak:)();
  v8 = v7[11];
  __swift_project_boxed_opaque_existential_1(v7 + 7, v7[10]);
  v9 = *(v8 + 8);
  v10 = OUTLINED_FUNCTION_11_0();
  v11(v10, v8);
  static UserFacingCallingAppUtils.getAppBundleId(preferredCallProvider:deviceState:)(1, v1 + 97);
  __swift_destroy_boxed_opaque_existential_1(v1 + 97);
  String.toSpeakableString.getter();

  v12 = v7[4];
  INSearchCallHistoryIntentResponse.savedRecordsCount.getter();
  v14 = v13;
  INSearchCallHistoryIntentResponse.newRecordsCount.getter();
  v16 = v15;
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2();
  }

  v17 = v1[127];
  v18 = type metadata accessor for Logger();
  v1[139] = __swift_project_value_buffer(v18, static Logger.siriPhone);

  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = v1[127];
    v22 = OUTLINED_FUNCTION_42();
    v23 = swift_slowAlloc();
    v49 = v23;
    v50 = 0;
    *v22 = 136315138;
    v24 = OUTLINED_FUNCTION_23_2(OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin47PromptForValueAfterReadingVoicemailFlowStrategy_logPrefix);
    v51 = v25;
    DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v24, v26, v27, v28);
    v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v50, v51, &v49);

    *(v22 + 4) = v29;
    _os_log_impl(&dword_0, v19, v20, "%s rendering read of multiple voicemails with SMART UI on.", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v23);
    OUTLINED_FUNCTION_26_0();
    OUTLINED_FUNCTION_26_0();
  }

  v30 = v16;
  v31 = v14;
  v32 = v1[137];
  v33 = v1[135];
  v34 = v1[134];
  v35 = v1[133];
  v36 = v1[132];
  v37 = v1[127];
  v38 = *(v37 + 296);
  v1[140] = v38;
  (*(v35 + 16))(v33, v32, v36);
  v39 = (*(v35 + 80) + 40) & ~*(v35 + 80);
  v40 = (v34 + v39 + 7) & 0xFFFFFFFFFFFFFFF8;
  v41 = swift_allocObject();
  v1[141] = v41;
  *(v41 + 2) = v38;
  *(v41 + 3) = v48;
  *(v41 + 4) = v37;
  (*(v35 + 32))(&v41[v39], v33, v36);
  *&v41[v40] = v30;
  v42 = &v41[(v40 + 15) & 0xFFFFFFFFFFFFFFF8];
  *v42 = v31;
  *(v42 + 8) = v47;

  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for DialogExecutionResult, DialogExecutionResult_ptr);
  swift_asyncLet_begin();
  v1[142] = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin47PromptForValueAfterReadingVoicemailFlowStrategy_windowParam;
  WindowedPaginationParameters.isLastWindow.getter();
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v1[143] = v43;
  *v43 = v44;
  v43[1] = PromptForValueAfterReadingVoicemailFlowStrategy.generateMultipleItemsOutput();
  v45 = v1[131];

  return static SearchCallHistoryHelper.generateSingleResultVoicemailModel(item:searchCallHistorySharedGlobals:sharedGlobals:isLastPage:isReadMultipleVoicemails:)();
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_2_5();
  *v3 = v2;
  v5 = *(v4 + 1144);
  v6 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v7 = v6;
  *(v8 + 1152) = v0;

  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v9, v10, v11);
}

{
  OUTLINED_FUNCTION_15();
  *(v0 + 1160) = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v1 = OUTLINED_FUNCTION_48_0();
  *(v0 + 1168) = v1;
  *(v1 + 16) = xmmword_426260;
  v2 = OUTLINED_FUNCTION_28_23();

  return _swift_asyncLet_get_throwing(v2, v3, v4, v0 + 736);
}

{
  *(v1 + 1176) = v0;
  if (v0)
  {
    return OUTLINED_FUNCTION_0_1(PromptForValueAfterReadingVoicemailFlowStrategy.generateMultipleItemsOutput());
  }

  else
  {
    return OUTLINED_FUNCTION_0_1(PromptForValueAfterReadingVoicemailFlowStrategy.generateMultipleItemsOutput());
  }
}

{
  OUTLINED_FUNCTION_15();
  v1 = v0[115];
  *(v0[146] + 32) = v1;
  v2 = v1;
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[148] = v3;
  *v3 = v4;
  v3[1] = PromptForValueAfterReadingVoicemailFlowStrategy.generateMultipleItemsOutput();
  v5 = v0[146];
  v6 = v0[131];
  v7 = v0[127];

  return PromptForValueAfterReadingVoicemailFlowStrategy.readVoicemail(responseGenerator:singleResultVoicemailModel:readVoicemailOutputResult:)();
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_2_5();
  *v3 = v2;
  v5 = *(v4 + 1184);
  v6 = *(v4 + 1168);
  v7 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v8 = v7;
  *(v9 + 1192) = v0;

  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v10, v11, v12);
}

{
  OUTLINED_FUNCTION_23_0();
  v1 = v0[140];
  v2 = v0[127] + v0[142];
  v3 = WindowedPaginationParameters.isLastWindow.getter();
  v4 = *(*v1 + class metadata base offset for SearchCallHistoryCATsSimple + 592);
  OUTLINED_FUNCTION_24_5();
  v12 = (v5 + *v5);
  v7 = *(v6 + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[150] = v8;
  *v8 = v9;
  v8[1] = PromptForValueAfterReadingVoicemailFlowStrategy.generateMultipleItemsOutput();
  v10 = v0[140];

  return v12(v3 & 1);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_2_5();
  *v3 = v2;
  v2[107] = v1;
  v2[108] = v4;
  v2[109] = v0;
  v6 = *(v5 + 1200);
  v7 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v8 = v7;
  *(v9 + 1208) = v0;

  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v10, v11, v12);
}

{
  OUTLINED_FUNCTION_39_4();
  v2 = v0[139];
  v3 = v0[127];

  v4 = Logger.logObject.getter();
  static os_log_type_t.debug.getter();
  OUTLINED_FUNCTION_87();
  if (OUTLINED_FUNCTION_86_0())
  {
    v5 = v0[127];
    OUTLINED_FUNCTION_42();
    OUTLINED_FUNCTION_83();
    OUTLINED_FUNCTION_66_1();
    *v3 = 136315138;
    v6 = OUTLINED_FUNCTION_23_2(OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin47PromptForValueAfterReadingVoicemailFlowStrategy_logPrefix);
    v10 = OUTLINED_FUNCTION_62_19(v6, v7, v8, v9);
    OUTLINED_FUNCTION_127(v10, v11, v12, v13, v14, v15, v16, v17, v44, v45, v46);
    OUTLINED_FUNCTION_63_1();
    *(v3 + 4) = v1;
    OUTLINED_FUNCTION_7_44();
    _os_log_impl(v18, v19, v20, v21, v22, 0xCu);
    OUTLINED_FUNCTION_3_7();
    OUTLINED_FUNCTION_35();
  }

  v23 = v0[108];
  v24 = v0[145];
  v25 = v0[131];
  v26 = v0[130];
  v27 = v0[127];
  v0[152] = v23;
  v28 = v0[91];
  __swift_project_boxed_opaque_existential_1(v0 + 87, v0[90]);
  v29 = OUTLINED_FUNCTION_48_0();
  v0[153] = v29;
  *(v29 + 16) = xmmword_426260;
  *(v29 + 32) = v23;
  v30 = *v25;
  v31 = v25[1];
  v32 = v23;
  PromptForValueAfterReadingVoicemailFlowStrategy.getPromptDialogManifest(responseViewId:)();
  v33 = async function pointer to dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)[1];
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[154] = v34;
  *v34 = v35;
  v34[1] = PromptForValueAfterReadingVoicemailFlowStrategy.generateMultipleItemsOutput();
  v36 = v0[130];
  v37 = v0[121];
  OUTLINED_FUNCTION_57_18();

  return dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)(v38, v39, v40, v41, v42);
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_28();
  v2 = v1[154];
  v3 = v1[153];
  v4 = v1[130];
  v5 = v1[129];
  v6 = v1[128];
  v7 = *v0;
  OUTLINED_FUNCTION_4_2();
  *v8 = v7;

  (*(v5 + 8))(v4, v6);
  v9 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v9, v10, v11);
}

{
  OUTLINED_FUNCTION_15();
  v1 = *(v0 + 1048);

  OUTLINED_FUNCTION_1_98();
  _s27PhoneCallFlowDelegatePlugin0A5ErrorOWOhTm_7(v1, v2);
  v3 = OUTLINED_FUNCTION_28_23();

  return _swift_asyncLet_finish(v3, v4, v5, v0 + 976);
}

{
  return OUTLINED_FUNCTION_0_1(PromptForValueAfterReadingVoicemailFlowStrategy.generateMultipleItemsOutput());
}

{
  return _swift_asyncLet_finish(v0 + 16, v0 + 920, PromptForValueAfterReadingVoicemailFlowStrategy.generateMultipleItemsOutput(), v0 + 656);
}

{
  return OUTLINED_FUNCTION_0_1(PromptForValueAfterReadingVoicemailFlowStrategy.generateMultipleItemsOutput());
}

{
  OUTLINED_FUNCTION_15();
  v1 = *(v0 + 1048);
  *(*(v0 + 1168) + 16) = 0;

  OUTLINED_FUNCTION_1_98();
  _s27PhoneCallFlowDelegatePlugin0A5ErrorOWOhTm_7(v1, v2);
  v3 = OUTLINED_FUNCTION_28_23();

  return _swift_asyncLet_finish(v3, v4, v5, v0 + 816);
}

{
  return OUTLINED_FUNCTION_0_1(PromptForValueAfterReadingVoicemailFlowStrategy.generateMultipleItemsOutput());
}

{
  OUTLINED_FUNCTION_15();
  v1 = *(v0 + 1048);
  OUTLINED_FUNCTION_1_98();
  _s27PhoneCallFlowDelegatePlugin0A5ErrorOWOhTm_7(v2, v3);
  v4 = OUTLINED_FUNCTION_28_23();

  return _swift_asyncLet_finish(v4, v5, v6, v0 + 880);
}

{
  return OUTLINED_FUNCTION_0_1(PromptForValueAfterReadingVoicemailFlowStrategy.generateMultipleItemsOutput());
}

{
  OUTLINED_FUNCTION_15();
  v1 = *(v0 + 1048);
  OUTLINED_FUNCTION_1_98();
  _s27PhoneCallFlowDelegatePlugin0A5ErrorOWOhTm_7(v2, v3);
  v4 = OUTLINED_FUNCTION_28_23();

  return _swift_asyncLet_finish(v4, v5, v6, v0 + 928);
}

{
  return OUTLINED_FUNCTION_0_1(PromptForValueAfterReadingVoicemailFlowStrategy.generateMultipleItemsOutput());
}

uint64_t PromptForValueAfterReadingVoicemailFlowStrategy.generateMultipleItemsOutput()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_24_1();
  v13 = v12[141];
  v14 = v12[138];
  v15 = v12[137];
  v16 = v12[136];
  v17 = v12[135];
  v18 = v12[133];
  v19 = v12[132];
  v20 = v12[131];
  v21 = v12[130];

  v22 = *(v18 + 8);
  v22(v16, v19);
  v22(v15, v19);
  __swift_destroy_boxed_opaque_existential_1(v12 + 87);

  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_16();

  return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10, a11, a12);
}

{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_24_1();
  v14 = *(v12 + 1152);
  OUTLINED_FUNCTION_6_70();
  v15 = OUTLINED_FUNCTION_36_24();
  v13(v15);
  v16 = OUTLINED_FUNCTION_65_14();
  v13(v16);
  OUTLINED_FUNCTION_64_12();

  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_16();

  return v18(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10, a11, a12);
}

{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_24_1();
  v14 = *(v12 + 1176);
  OUTLINED_FUNCTION_6_70();
  v15 = OUTLINED_FUNCTION_36_24();
  v13(v15);
  v16 = OUTLINED_FUNCTION_65_14();
  v13(v16);
  OUTLINED_FUNCTION_64_12();

  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_16();

  return v18(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10, a11, a12);
}

{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_24_1();
  v14 = *(v12 + 1192);
  OUTLINED_FUNCTION_6_70();
  v15 = OUTLINED_FUNCTION_36_24();
  v13(v15);
  v16 = OUTLINED_FUNCTION_65_14();
  v13(v16);
  OUTLINED_FUNCTION_64_12();

  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_16();

  return v18(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10, a11, a12);
}

{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_24_1();
  v14 = *(v12 + 1208);
  OUTLINED_FUNCTION_6_70();
  v15 = OUTLINED_FUNCTION_36_24();
  v13(v15);
  v16 = OUTLINED_FUNCTION_65_14();
  v13(v16);
  OUTLINED_FUNCTION_64_12();

  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_16();

  return v18(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10, a11, a12);
}

uint64_t implicit closure #2 in PromptForValueAfterReadingVoicemailFlowStrategy.generateMultipleItemsOutput()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, double a7, double a8)
{
  *(v8 + 104) = a6;
  *(v8 + 56) = a7;
  *(v8 + 64) = a8;
  *(v8 + 40) = a4;
  *(v8 + 48) = a5;
  *(v8 + 24) = a2;
  *(v8 + 32) = a3;
  *(v8 + 16) = a1;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR) - 8) + 64) + 15;
  *(v8 + 72) = swift_task_alloc();

  return _swift_task_switch(implicit closure #2 in PromptForValueAfterReadingVoicemailFlowStrategy.generateMultipleItemsOutput(), 0, 0);
}

void implicit closure #2 in PromptForValueAfterReadingVoicemailFlowStrategy.generateMultipleItemsOutput()()
{
  OUTLINED_FUNCTION_24_1();
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);
  v4 = *(v0 + 48);
  v3 = *(v0 + 56);
  v6 = *(v0 + 32);
  v5 = *(v0 + 40);
  v7 = *(v0 + 24);
  v8 = *(v5 + 104);
  v9 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_23_1(v9);
  (*(v10 + 16))(v1, v4, v9);
  __swift_storeEnumTagSinglePayload(v1, 0, 1, v9);
  LOBYTE(v1) = *(v5 + 320);
  v11 = *(*v7 + class metadata base offset for SearchCallHistoryCATsSimple + 320);
  OUTLINED_FUNCTION_24_5();
  v21 = v12 + *v12;
  v14 = *(v13 + 4);
  v15 = swift_task_alloc();
  *(v0 + 80) = v15;
  *v15 = v0;
  v15[1] = implicit closure #2 in PromptForValueAfterReadingVoicemailFlowStrategy.generateMultipleItemsOutput();
  v16 = *(v0 + 72);
  v17 = *(v0 + 24);
  v20 = *(v0 + 104);
  OUTLINED_FUNCTION_16();

  __asm { BRAA            X8, X16 }
}

uint64_t implicit closure #2 in PromptForValueAfterReadingVoicemailFlowStrategy.generateMultipleItemsOutput()()
{
  OUTLINED_FUNCTION_23_0();
  v3 = v2;
  v4 = *v1;
  v5 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v6 = v5;
  v7 = *(v4 + 80);
  *v6 = *v1;
  *(v5 + 88) = v0;

  v8 = *(v4 + 72);
  if (!v0)
  {
    *(v5 + 96) = v3;
  }

  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v8, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v9, v10, v11);
}

{
  OUTLINED_FUNCTION_15();
  v1 = *(v0 + 72);
  **(v0 + 16) = *(v0 + 96);

  OUTLINED_FUNCTION_8_1();

  return v2();
}

uint64_t PromptForValueAfterReadingVoicemailFlowStrategy.generateSingleItemOutput()()
{
  OUTLINED_FUNCTION_15();
  v1[12] = v2;
  v1[13] = v0;
  v3 = type metadata accessor for OutputGenerationManifest();
  v1[14] = v3;
  OUTLINED_FUNCTION_13_2(v3);
  v1[15] = v4;
  v6 = *(v5 + 64);
  v1[16] = OUTLINED_FUNCTION_45();
  v7 = type metadata accessor for SingleResultVoicemailModel();
  OUTLINED_FUNCTION_21(v7);
  v9 = *(v8 + 64);
  v1[17] = OUTLINED_FUNCTION_45();
  v10 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v10, v11, v12);
}

{
  OUTLINED_FUNCTION_27();
  v2 = *(v1[13] + 16);
  v1[18] = v2;
  OUTLINED_FUNCTION_68_10();
  if (v0)
  {
    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    v3 = *(v2 + 32);
  }

  v1[19] = v4;
  v5 = v1[13];
  outlined init with copy of SignalProviding(v5 + 192, (v1 + 2));
  v6 = *(v5 + 296);
  v1[20] = v6;
  v7 = *(*v6 + class metadata base offset for SearchCallHistoryCATsSimple + 352);
  OUTLINED_FUNCTION_24_5();
  v13 = (v8 + *v8);
  v10 = *(v9 + 4);
  v11 = swift_task_alloc();
  v1[21] = v11;
  *v11 = v1;
  v11[1] = PromptForValueAfterReadingVoicemailFlowStrategy.generateSingleItemOutput();

  return v13();
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_2_5();
  *v3 = v2;
  v5 = *(v4 + 168);
  *v3 = *v1;
  *(v2 + 176) = v6;
  *(v2 + 184) = v0;

  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v7, v8, v9);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  v3 = v2;
  OUTLINED_FUNCTION_13_1();
  *v4 = v3;
  v6 = *(v5 + 200);
  *v4 = *v1;
  v3[26] = v7;
  v3[27] = v0;

  if (!v0)
  {
    v8 = v3[19];
  }

  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v9, v10, v11);
}

{
  OUTLINED_FUNCTION_15();
  v1 = v0[18];
  v2 = v1 & 0xC000000000000001;
  specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v1 & 0xC000000000000001) == 0, v1);
  if (v2)
  {
    v3 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    v3 = *(v0[18] + 32);
  }

  v0[28] = v3;
  v4 = v0[13];
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[29] = v5;
  *v5 = v6;
  v5[1] = PromptForValueAfterReadingVoicemailFlowStrategy.generateSingleItemOutput();
  v7 = v0[17];

  return static SearchCallHistoryHelper.generateSingleResultVoicemailModel(item:searchCallHistorySharedGlobals:sharedGlobals:isLastPage:isReadMultipleVoicemails:)();
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  v3 = v2;
  OUTLINED_FUNCTION_13_1();
  *v4 = v3;
  v6 = *(v5 + 232);
  v7 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v8 = v7;
  *(v3 + 240) = v0;

  if (!v0)
  {
    v9 = *(v3 + 224);
  }

  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v10, v11, v12);
}

{
  v1 = v0[26];
  v2 = v0[22];
  v0[31] = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v3 = OUTLINED_FUNCTION_48_0();
  *(v3 + 16) = xmmword_426260;
  *(v3 + 32) = v1;
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_426260;
  *(inited + 32) = v2;
  v5 = v1;
  v6 = v2;
  specialized Array.append<A>(contentsOf:)(inited);
  v0[32] = v3;
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[33] = v7;
  *v7 = v8;
  v7[1] = PromptForValueAfterReadingVoicemailFlowStrategy.generateSingleItemOutput();
  v9 = v0[17];
  v10 = v0[13];

  return PromptForValueAfterReadingVoicemailFlowStrategy.readVoicemail(responseGenerator:singleResultVoicemailModel:readVoicemailOutputResult:)();
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_2_5();
  *v3 = v2;
  v5 = *(v4 + 264);
  v6 = *(v4 + 256);
  v7 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v8 = v7;
  *(v9 + 272) = v0;

  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v10, v11, v12);
}

{
  OUTLINED_FUNCTION_27();
  v3 = v2;
  OUTLINED_FUNCTION_28();
  v5 = v4;
  OUTLINED_FUNCTION_13_1();
  *v6 = v5;
  v8 = *(v7 + 280);
  v9 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v10 = v9;
  *(v5 + 288) = v0;

  if (!v0)
  {
    *(v5 + 296) = v3;
  }

  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v11, v12, v13);
}

{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_24_1();
  v1 = v0[37];
  v2 = v0[31];
  v3 = v0[16];
  v4 = v0[17];
  v5 = v0[13];
  v6 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  v7 = OUTLINED_FUNCTION_48_0();
  v0[38] = v7;
  *(v7 + 16) = xmmword_426260;
  *(v7 + 32) = v1;
  v8 = *v4;
  v9 = v4[1];
  v10 = v1;
  PromptForValueAfterReadingVoicemailFlowStrategy.getPromptDialogManifest(responseViewId:)();
  v11 = async function pointer to dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)[1];
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[39] = v12;
  *v12 = v13;
  v12[1] = PromptForValueAfterReadingVoicemailFlowStrategy.generateSingleItemOutput();
  v14 = v0[16];
  v15 = v0[12];
  OUTLINED_FUNCTION_57_18();
  OUTLINED_FUNCTION_16();

  return dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)(v16, v17, v18, v19, v20);
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_28();
  v2 = v1[39];
  v3 = v1[38];
  v4 = v1[16];
  v5 = v1[15];
  v6 = v1[14];
  v7 = *v0;
  OUTLINED_FUNCTION_4_2();
  *v8 = v7;

  (*(v5 + 8))(v4, v6);
  v9 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v9, v10, v11);
}

{
  OUTLINED_FUNCTION_23_0();
  v1 = v0[37];
  v2 = v0[26];
  v3 = v0[22];
  v4 = v0[19];
  v5 = v0[16];
  v6 = v0[17];

  OUTLINED_FUNCTION_1_98();
  _s27PhoneCallFlowDelegatePlugin0A5ErrorOWOhTm_7(v6, v7);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  OUTLINED_FUNCTION_8_1();

  return v8();
}

{
  OUTLINED_FUNCTION_27();
  v1 = *(v0 + 152);

  v2 = *(v0 + 184);
  OUTLINED_FUNCTION_40_25();

  OUTLINED_FUNCTION_11();

  return v3();
}

{
  OUTLINED_FUNCTION_27();
  v1 = v0[22];
  v2 = v0[19];

  v3 = v0[27];
  OUTLINED_FUNCTION_40_25();

  OUTLINED_FUNCTION_11();

  return v4();
}

{
  OUTLINED_FUNCTION_27();
  v3 = *(v2 + 224);
  OUTLINED_FUNCTION_51_24();

  v4 = *(v2 + 240);
  OUTLINED_FUNCTION_40_25();

  OUTLINED_FUNCTION_11();

  return v5();
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_51_24();
  v3 = *(v2 + 136);

  OUTLINED_FUNCTION_1_98();
  _s27PhoneCallFlowDelegatePlugin0A5ErrorOWOhTm_7(v3, v4);
  v5 = *(v2 + 272);
  OUTLINED_FUNCTION_40_25();

  OUTLINED_FUNCTION_11();

  return v6();
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_51_24();
  v3 = *(v2 + 136);

  OUTLINED_FUNCTION_1_98();
  _s27PhoneCallFlowDelegatePlugin0A5ErrorOWOhTm_7(v3, v4);
  v5 = *(v2 + 288);
  OUTLINED_FUNCTION_40_25();

  OUTLINED_FUNCTION_11();

  return v6();
}

void PromptForValueAfterReadingVoicemailFlowStrategy.generateSingleItemOutput()()
{
  OUTLINED_FUNCTION_39_4();
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2();
  }

  v2 = *(v0 + 104);
  v3 = type metadata accessor for Logger();
  *(v0 + 192) = __swift_project_value_buffer(v3, static Logger.siriPhone);

  v4 = Logger.logObject.getter();
  static os_log_type_t.debug.getter();
  OUTLINED_FUNCTION_87();
  if (OUTLINED_FUNCTION_86_0())
  {
    v5 = *(v0 + 104);
    OUTLINED_FUNCTION_42();
    v36 = OUTLINED_FUNCTION_83();
    *v2 = 136315138;
    v6 = OUTLINED_FUNCTION_23_2(OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin47PromptForValueAfterReadingVoicemailFlowStrategy_logPrefix);
    v37 = v7;
    v11 = DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v6, v8, v9, v10);
    OUTLINED_FUNCTION_39_15(v11, v12, v13, v14, v15, v16, v17, v18, v32, v33, v35, v36, 0, v37);
    OUTLINED_FUNCTION_63_1();
    *(v2 + 4) = v1;
    OUTLINED_FUNCTION_7_44();
    _os_log_impl(v19, v20, v21, v22, v23, 0xCu);
    OUTLINED_FUNCTION_3_7();
    OUTLINED_FUNCTION_35();
  }

  v24 = *(v0 + 152);
  v25 = *(*(v0 + 104) + 104);
  v26 = *(**(v0 + 160) + class metadata base offset for SearchCallHistoryCATsSimple + 416);

  v34 = v26 + *v26;
  v27 = v26[1];
  v28 = swift_task_alloc();
  *(v0 + 200) = v28;
  *v28 = v0;
  v28[1] = PromptForValueAfterReadingVoicemailFlowStrategy.generateSingleItemOutput();
  v29 = *(v0 + 160);
  OUTLINED_FUNCTION_55_17();

  __asm { BRAA            X4, X16 }
}

{
  OUTLINED_FUNCTION_39_4();
  v2 = *(v0 + 192);
  v3 = *(v0 + 104);

  v4 = Logger.logObject.getter();
  static os_log_type_t.debug.getter();
  OUTLINED_FUNCTION_87();
  if (OUTLINED_FUNCTION_86_0())
  {
    v5 = *(v0 + 104);
    OUTLINED_FUNCTION_42();
    v36 = OUTLINED_FUNCTION_83();
    *v3 = 136315138;
    v6 = OUTLINED_FUNCTION_23_2(OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin47PromptForValueAfterReadingVoicemailFlowStrategy_logPrefix);
    v37 = v7;
    v11 = DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v6, v8, v9, v10);
    OUTLINED_FUNCTION_39_15(v11, v12, v13, v14, v15, v16, v17, v18, v32, v33, v34, v36, 0, v37);
    OUTLINED_FUNCTION_63_1();
    *(v3 + 4) = v1;
    OUTLINED_FUNCTION_7_44();
    _os_log_impl(v19, v20, v21, v22, v23, 0xCu);
    OUTLINED_FUNCTION_3_7();
    OUTLINED_FUNCTION_35();
  }

  v24 = *(**(v0 + 160) + class metadata base offset for SearchCallHistoryCATsSimple + 592);
  OUTLINED_FUNCTION_24_5();
  v35 = v25 + *v25;
  v27 = *(v26 + 4);
  v28 = swift_task_alloc();
  *(v0 + 280) = v28;
  *v28 = v0;
  v28[1] = PromptForValueAfterReadingVoicemailFlowStrategy.generateSingleItemOutput();
  v29 = *(v0 + 160);
  OUTLINED_FUNCTION_55_17();

  __asm { BRAA            X1, X16 }
}

uint64_t PromptForValueAfterReadingVoicemailFlowStrategy.readVoicemail(responseGenerator:singleResultVoicemailModel:readVoicemailOutputResult:)()
{
  OUTLINED_FUNCTION_15();
  v1[54] = v2;
  v1[55] = v0;
  v1[52] = v3;
  v1[53] = v4;
  v5 = type metadata accessor for PhoneSnippetDataModels();
  v1[56] = v5;
  OUTLINED_FUNCTION_21(v5);
  v7 = *(v6 + 64);
  v1[57] = OUTLINED_FUNCTION_45();
  v8 = type metadata accessor for OutputGenerationManifest();
  v1[58] = v8;
  OUTLINED_FUNCTION_13_2(v8);
  v1[59] = v9;
  v11 = *(v10 + 64);
  v1[60] = OUTLINED_FUNCTION_45();
  v12 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v12, v13, v14);
}

{
  OUTLINED_FUNCTION_39_4();
  v3 = *(v0[55] + 312);
  if (!specialized Array.count.getter(v3))
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2();
    }

    v18 = OUTLINED_FUNCTION_71_7();
    __swift_project_value_buffer(v18, static Logger.siriPhone);
    OUTLINED_FUNCTION_11_0();

    v19 = Logger.logObject.getter();
    static os_log_type_t.error.getter();
    OUTLINED_FUNCTION_87();
    if (OUTLINED_FUNCTION_86_0())
    {
      OUTLINED_FUNCTION_44_16();
      v83 = OUTLINED_FUNCTION_83();
      *v1 = 136315138;
      v20 = OUTLINED_FUNCTION_23_2(OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin47PromptForValueAfterReadingVoicemailFlowStrategy_logPrefix);
      v84 = v21;
      v25 = DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v20, v22, v23, v24);
      OUTLINED_FUNCTION_39_15(v25, v26, v27, v28, v29, v30, v31, v32, v79, v80, v81, v83, 0, v84);
      OUTLINED_FUNCTION_63_1();
      *(v1 + 4) = v2;
      OUTLINED_FUNCTION_7_44();
      _os_log_impl(v33, v34, v35, v36, v37, 0xCu);
      OUTLINED_FUNCTION_3_7();
      OUTLINED_FUNCTION_35();
    }

    OUTLINED_FUNCTION_70_7();

    OUTLINED_FUNCTION_8_1();
    OUTLINED_FUNCTION_55_17();

    __asm { BRAA            X1, X16 }
  }

  specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v3 & 0xC000000000000001) == 0, v3);
  if ((v3 & 0xC000000000000001) != 0)
  {
    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    v4 = *(v3 + 32);
  }

  v0[61] = v4;
  v5 = v0[60];
  v6 = v0[55];
  v7 = v0[53];
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];

  PromptForValueAfterReadingVoicemailFlowStrategy.getDisplayViewManifest(resultId:responseViewId:)();

  v10 = v0[55];
  if (*(v6 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin47PromptForValueAfterReadingVoicemailFlowStrategy_isRepeatRequest) == 1)
  {
    v11 = *(**(v10 + 296) + class metadata base offset for SearchCallHistoryCATsSimple + 448);
    OUTLINED_FUNCTION_24_5();
    v82 = v12 + *v12;
    v14 = *(v13 + 4);
    v15 = swift_task_alloc();
    v0[62] = v15;
    *v15 = v0;
    v15[1] = PromptForValueAfterReadingVoicemailFlowStrategy.readVoicemail(responseGenerator:singleResultVoicemailModel:readVoicemailOutputResult:);
    OUTLINED_FUNCTION_55_17();

    __asm { BRAA            X0, X16 }
  }

  OUTLINED_FUNCTION_10_63(v10);
  v41 = *(v40 + 8);
  v42 = OUTLINED_FUNCTION_4_3();
  v43(v42);
  v44 = v0[23];
  __swift_project_boxed_opaque_existential_1(v0 + 19, v0[22]);
  OUTLINED_FUNCTION_4_3();
  v45 = dispatch thunk of DeviceState.isCarPlay.getter();
  __swift_destroy_boxed_opaque_existential_1(v0 + 19);
  if (v45)
  {
    v46 = v0[52];
    v47 = v46[3];
    v48 = v46[4];
    OUTLINED_FUNCTION_7_0(v46);
    v49 = async function pointer to dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)[1];
    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    v0[69] = v50;
    *v50 = v51;
    v50[1] = PromptForValueAfterReadingVoicemailFlowStrategy.readVoicemail(responseGenerator:singleResultVoicemailModel:readVoicemailOutputResult:);
    v52 = v0[60];
    v53 = v0[54];
    OUTLINED_FUNCTION_55_17();

    return dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)(v54, v55, v56, v57, v58);
  }

  else
  {
    v61 = v0[56];
    v60 = v0[57];
    v62 = v0[52];
    outlined init with copy of SingleResultVoicemailModel(v0[53], v60, type metadata accessor for SingleResultVoicemailModel);
    swift_storeEnumTagMultiPayload();
    v63 = v62[3];
    v64 = v62[4];
    OUTLINED_FUNCTION_7_0(v62);
    v0[27] = v61;
    v0[28] = lazy protocol witness table accessor for type Input and conformance Input(&lazy protocol witness table cache variable for type PhoneSnippetDataModels and conformance PhoneSnippetDataModels, type metadata accessor for PhoneSnippetDataModels);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 24);
    outlined init with copy of SingleResultVoicemailModel(v60, boxed_opaque_existential_1, type metadata accessor for PhoneSnippetDataModels);
    v66 = async function pointer to dispatch thunk of ResponseGenerating.makeResponseOutput(resultModel:dialog:outputGenerationManifest:)[1];
    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    v0[70] = v67;
    *v67 = v68;
    v67[1] = PromptForValueAfterReadingVoicemailFlowStrategy.readVoicemail(responseGenerator:singleResultVoicemailModel:readVoicemailOutputResult:);
    v69 = v0[60];
    v70 = v0[54];
    OUTLINED_FUNCTION_55_17();

    return dispatch thunk of ResponseGenerating.makeResponseOutput(resultModel:dialog:outputGenerationManifest:)(v71, v72, v73, v74, v75, v76);
  }
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_2_5();
  *v3 = v2;
  v5 = *(v4 + 496);
  *v3 = *v1;
  *(v2 + 504) = v6;
  *(v2 + 512) = v0;

  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v7, v8, v9);
}

{
  OUTLINED_FUNCTION_23_0();
  v1 = v0[63];
  v2 = v0[52];
  v3 = v2[3];
  v4 = v2[4];
  OUTLINED_FUNCTION_7_0(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v5 = OUTLINED_FUNCTION_48_0();
  v0[65] = v5;
  *(v5 + 16) = xmmword_426260;
  *(v5 + 32) = v1;
  v6 = async function pointer to dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)[1];
  v7 = v1;
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[66] = v8;
  *v8 = v9;
  v8[1] = PromptForValueAfterReadingVoicemailFlowStrategy.readVoicemail(responseGenerator:singleResultVoicemailModel:readVoicemailOutputResult:);
  v10 = v0[60];

  return dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)(v0 + 39, v5, v10, v3, v4);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  v2 = *(v1 + 528);
  v3 = *(v1 + 520);
  v4 = *v0;
  OUTLINED_FUNCTION_4_2();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v6, v7, v8);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_2_5();
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
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  v2 = *(v1 + 552);
  v3 = *v0;
  OUTLINED_FUNCTION_4_2();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v5, v6, v7);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  v2 = v1;
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v5 = *(v4 + 560);
  v6 = *v0;
  OUTLINED_FUNCTION_4_2();
  *v7 = v6;

  __swift_destroy_boxed_opaque_existential_1((v2 + 192));
  v8 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v8, v9, v10);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_2_5();
  *v3 = v2;
  v5 = *(v4 + 568);
  v6 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v7 = v6;
  *(v8 + 576) = v0;

  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v9, v10, v11);
}

{
  OUTLINED_FUNCTION_15();
  v3 = v2;
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_2_5();
  *v5 = v4;
  v7 = *(v6 + 584);
  v8 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v9 = v8;
  *(v10 + 592) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v11, v12, v13);
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_72_8();
  v1 = OUTLINED_FUNCTION_15_18();
  v2(v1);
  __swift_destroy_boxed_opaque_existential_1((v0 + 272));
  OUTLINED_FUNCTION_70_7();

  OUTLINED_FUNCTION_8_1();

  return v3();
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_72_8();
  v1 = OUTLINED_FUNCTION_15_18();
  v2(v1);
  v3 = *(v0 + 512);
  OUTLINED_FUNCTION_69_11();

  OUTLINED_FUNCTION_11();

  return v4();
}

{
  OUTLINED_FUNCTION_27();
  v1 = *(v0 + 504);
  v2 = *(v0 + 480);
  v3 = *(v0 + 464);
  v4 = *(v0 + 472);

  __swift_destroy_boxed_opaque_existential_1((v0 + 312));
  v5 = *(v4 + 8);
  v6 = OUTLINED_FUNCTION_0();
  v7(v6);
  __swift_destroy_boxed_opaque_existential_1((v0 + 64));
  v8 = *(v0 + 544);
  OUTLINED_FUNCTION_69_11();

  OUTLINED_FUNCTION_11();

  return v9();
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_72_8();
  __swift_destroy_boxed_opaque_existential_1(v0 + 14);
  v1 = OUTLINED_FUNCTION_15_18();
  v2(v1);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v3 = v0[72];
  OUTLINED_FUNCTION_69_11();

  OUTLINED_FUNCTION_11();

  return v4();
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_72_8();
  v1 = OUTLINED_FUNCTION_15_18();
  v2(v1);
  __swift_destroy_boxed_opaque_existential_1((v0 + 272));
  v3 = *(v0 + 592);
  OUTLINED_FUNCTION_69_11();

  OUTLINED_FUNCTION_11();

  return v4();
}

uint64_t PromptForValueAfterReadingVoicemailFlowStrategy.readVoicemail(responseGenerator:singleResultVoicemailModel:readVoicemailOutputResult:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_63(*(v16 + 440));
  v18 = *(v17 + 16);
  v19 = OUTLINED_FUNCTION_4_3();
  v20(v19);
  v21 = *(v16 + 88);
  v22 = *(v16 + 104);
  OUTLINED_FUNCTION_7_0((v16 + 64));
  v23 = async function pointer to dispatch thunk of OutputPublisherAsync.publish(output:)[1];
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v16 + 536) = v29;
  *v29 = v30;
  v29[1] = PromptForValueAfterReadingVoicemailFlowStrategy.readVoicemail(responseGenerator:singleResultVoicemailModel:readVoicemailOutputResult:);

  return dispatch thunk of OutputPublisherAsync.publish(output:)(v16 + 312, v21, v22, v24, v25, v26, v27, v28, a9, a10, a11, a12, a13, a14, a15, a16);
}

{
  OUTLINED_FUNCTION_24_1();
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2();
  }

  v17 = v16[55];
  v18 = type metadata accessor for Logger();
  __swift_project_value_buffer(v18, static Logger.siriPhone);

  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.debug.getter();

  v21 = os_log_type_enabled(v19, v20);
  v22 = v16[57];
  if (v21)
  {
    v23 = OUTLINED_FUNCTION_44_16();
    v24 = swift_slowAlloc();
    *v23 = 136315138;
    v25 = OUTLINED_FUNCTION_23_2(OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin47PromptForValueAfterReadingVoicemailFlowStrategy_logPrefix);
    v29 = OUTLINED_FUNCTION_62_19(v25, v26, v27, v28);
    v37 = OUTLINED_FUNCTION_127(v29, v30, v31, v32, v33, v34, v35, v36, v24, 0, v56);

    *(v23 + 4) = v37;
    _os_log_impl(&dword_0, v19, v20, "%s start to display summary view", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v24);
    OUTLINED_FUNCTION_26_0();
    OUTLINED_FUNCTION_14_0();
  }

  _s27PhoneCallFlowDelegatePlugin0A5ErrorOWOhTm_7(v22, type metadata accessor for PhoneSnippetDataModels);
  OUTLINED_FUNCTION_10_63(v16[55]);
  v39 = *(v38 + 16);
  v40 = OUTLINED_FUNCTION_4_3();
  v41(v40);
  v42 = v16[5];
  v43 = v16[7];
  OUTLINED_FUNCTION_7_0(v16 + 2);
  v44 = async function pointer to dispatch thunk of OutputPublisherAsync.publish(output:)[1];
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v16[71] = v45;
  *v45 = v46;
  v47 = OUTLINED_FUNCTION_26_28(v45);

  return dispatch thunk of OutputPublisherAsync.publish(output:)(v47, v48, v49, v50, v51, v52, v53, v54, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t PromptForValueAfterReadingVoicemailFlowStrategy.readVoicemail(responseGenerator:singleResultVoicemailModel:readVoicemailOutputResult:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_67_13();
  a19 = v23;
  a20 = v24;
  OUTLINED_FUNCTION_24_1();
  a18 = v20;
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2();
  }

  v25 = OUTLINED_FUNCTION_71_7();
  __swift_project_value_buffer(v25, static Logger.siriPhone);
  OUTLINED_FUNCTION_11_0();

  v26 = Logger.logObject.getter();
  static os_log_type_t.debug.getter();
  OUTLINED_FUNCTION_87();
  if (OUTLINED_FUNCTION_86_0())
  {
    OUTLINED_FUNCTION_44_16();
    a10 = OUTLINED_FUNCTION_83();
    a11 = 0;
    *v21 = 136315138;
    v27 = OUTLINED_FUNCTION_23_2(OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin47PromptForValueAfterReadingVoicemailFlowStrategy_logPrefix);
    a12 = v28;
    DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v27, v29, v30, v31);
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a11, a12, &a10);
    OUTLINED_FUNCTION_63_1();
    *(v21 + 4) = v22;
    OUTLINED_FUNCTION_7_44();
    _os_log_impl(v32, v33, v34, v35, v36, 0xCu);
    OUTLINED_FUNCTION_3_7();
    OUTLINED_FUNCTION_35();
  }

  OUTLINED_FUNCTION_10_63(*(v20 + 440));
  v38 = *(v37 + 16);
  v39 = OUTLINED_FUNCTION_4_3();
  v40(v39);
  v41 = *(v20 + 40);
  v42 = *(v20 + 56);
  OUTLINED_FUNCTION_7_0((v20 + 16));
  v43 = async function pointer to dispatch thunk of OutputPublisherAsync.publish(output:)[1];
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v20 + 568) = v44;
  *v44 = v45;
  OUTLINED_FUNCTION_26_28(v44);
  OUTLINED_FUNCTION_48_20();

  return dispatch thunk of OutputPublisherAsync.publish(output:)(v46, v47, v48, v49, v50, v51, v52, v53, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t PromptForValueAfterReadingVoicemailFlowStrategy.getDisplayViewManifest(resultId:responseViewId:)()
{
  v0 = type metadata accessor for DialogPhase();
  v1 = OUTLINED_FUNCTION_21(v0);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  OUTLINED_FUNCTION_4();
  static DialogPhase.summary.getter();
  return OutputGenerationManifest.init(dialogPhase:_:)();
}

uint64_t closure #1 in PromptForValueAfterReadingVoicemailFlowStrategy.getDisplayViewManifest(resultId:responseViewId:)()
{
  OutputGenerationManifest.canUseServerTTS.setter();
  OutputGenerationManifest.listenAfterSpeaking.setter();

  OutputGenerationManifest.resultViewId.setter();

  OutputGenerationManifest.responseViewId.setter();
  return OutputGenerationManifest.preserveResultSpaceIfPossible.setter();
}

uint64_t PromptForValueAfterReadingVoicemailFlowStrategy.getPromptDialogManifest(responseViewId:)()
{
  v0 = type metadata accessor for DialogPhase();
  v1 = OUTLINED_FUNCTION_21(v0);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  OUTLINED_FUNCTION_4();
  static DialogPhase.clarification.getter();
  return OutputGenerationManifest.init(dialogPhase:_:)();
}

uint64_t closure #1 in PromptForValueAfterReadingVoicemailFlowStrategy.getPromptDialogManifest(responseViewId:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v6 - v2;
  OutputGenerationManifest.canUseServerTTS.setter();
  _s27PhoneCallFlowDelegatePlugin0aB17NLContextProviderC38buildVoiceMailListFollowUpOfferContext07SiriKitC00F6UpdateVyFZSo08INSearchB13HistoryIntentC_So0sbtU8ResponseCTt0g5();
  _s27PhoneCallFlowDelegatePlugin0aB17NLContextProviderC31makeSDAForOfferReadingVoicemail33_3C2ABB69DDB872D121E37A32A4E694A9LLSay12SiriNLUTypes0V29_Nlu_External_SystemDialogActVGSgyFZSo08INSearchB13HistoryIntentC_So08INSearchB21HistoryIntentResponseCTtg5();
  NLContextUpdate.nluSystemDialogActs.setter();
  v4 = type metadata accessor for NLContextUpdate();
  __swift_storeEnumTagSinglePayload(v3, 0, 1, v4);
  OutputGenerationManifest.nlContextUpdate.setter();

  OutputGenerationManifest.responseViewId.setter();
  OutputGenerationManifest.listenAfterSpeaking.setter();
  return OutputGenerationManifest.preserveResultSpaceIfPossible.setter();
}

uint64_t PromptForValueAfterReadingVoicemailFlowStrategy.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  v3 = *(v0 + 96);

  v4 = *(v0 + 104);

  outlined destroy of SearchCallHistorySharedGlobals(v0 + 112);
  v5 = *(v0 + 312);

  v6 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin47PromptForValueAfterReadingVoicemailFlowStrategy_windowParam;
  v7 = type metadata accessor for WindowedPaginationParameters();
  OUTLINED_FUNCTION_23_1(v7);
  (*(v8 + 8))(v0 + v6);
  v9 = *(v0 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin47PromptForValueAfterReadingVoicemailFlowStrategy_logPrefix + 8);
  v10 = *(v0 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin47PromptForValueAfterReadingVoicemailFlowStrategy_logPrefix + 24);

  return v0;
}

uint64_t PromptForValueAfterReadingVoicemailFlowStrategy.__deallocating_deinit()
{
  PromptForValueAfterReadingVoicemailFlowStrategy.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t protocol witness for PromptForValueFlowStrategyAsync.parseValueResponse(input:) in conformance PromptForValueAfterReadingVoicemailFlowStrategy(uint64_t a1, uint64_t a2)
{
  *(v3 + 16) = a1;
  v5 = *(*v2 + 224);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v3 + 24) = v7;
  *v7 = v3;
  v7[1] = protocol witness for PromptForValueFlowStrategyAsync.parseValueResponse(input:) in conformance PromptForValueAfterReadingVoicemailFlowStrategy;

  return v9(a2);
}

uint64_t protocol witness for PromptForValueFlowStrategyAsync.parseValueResponse(input:) in conformance PromptForValueAfterReadingVoicemailFlowStrategy()
{
  OUTLINED_FUNCTION_27();
  v3 = v2;
  OUTLINED_FUNCTION_28();
  v5 = v4;
  OUTLINED_FUNCTION_13_1();
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

uint64_t protocol witness for PromptForValueFlowStrategyAsync.makePromptForValue() in conformance PromptForValueAfterReadingVoicemailFlowStrategy(uint64_t a1)
{
  v4 = *(*v1 + 248);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = closure #1 in ActionableCallControlFlow.execute();

  return v8(a1);
}

uint64_t protocol witness for PromptForValueFlowStrategyAsync.makeRepromptOnEmptyParse() in conformance PromptForValueAfterReadingVoicemailFlowStrategy(uint64_t a1)
{
  v4 = *(*v1 + 232);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = closure #1 in ActionableCallControlFlow.execute();

  return v8(a1);
}

unint64_t lazy protocol witness table accessor for type CallHistoryPromptResponse and conformance CallHistoryPromptResponse()
{
  result = lazy protocol witness table cache variable for type CallHistoryPromptResponse and conformance CallHistoryPromptResponse;
  if (!lazy protocol witness table cache variable for type CallHistoryPromptResponse and conformance CallHistoryPromptResponse)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CallHistoryPromptResponse and conformance CallHistoryPromptResponse);
  }

  return result;
}

uint64_t type metadata completion function for PromptForValueAfterReadingVoicemailFlowStrategy()
{
  result = type metadata accessor for WindowedPaginationParameters();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    return swift_updateClassMetadata2();
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CallHistoryPromptResponse(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t partial apply for closure #1 in PromptForValueAfterReadingVoicemailFlowStrategy.getPromptDialogManifest(responseViewId:)()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return closure #1 in PromptForValueAfterReadingVoicemailFlowStrategy.getPromptDialogManifest(responseViewId:)();
}

uint64_t partial apply for closure #1 in PromptForValueAfterReadingVoicemailFlowStrategy.getDisplayViewManifest(resultId:responseViewId:)()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  return closure #1 in PromptForValueAfterReadingVoicemailFlowStrategy.getDisplayViewManifest(resultId:responseViewId:)();
}

uint64_t outlined init with copy of SingleResultVoicemailModel(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_23_1(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

unint64_t lazy protocol witness table accessor for type VoicemailUpdateAction and conformance VoicemailUpdateAction()
{
  result = lazy protocol witness table cache variable for type VoicemailUpdateAction and conformance VoicemailUpdateAction;
  if (!lazy protocol witness table cache variable for type VoicemailUpdateAction and conformance VoicemailUpdateAction)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VoicemailUpdateAction and conformance VoicemailUpdateAction);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type VoicemailUpdateAction and conformance VoicemailUpdateAction;
  if (!lazy protocol witness table cache variable for type VoicemailUpdateAction and conformance VoicemailUpdateAction)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VoicemailUpdateAction and conformance VoicemailUpdateAction);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type VoicemailUpdateAction and conformance VoicemailUpdateAction;
  if (!lazy protocol witness table cache variable for type VoicemailUpdateAction and conformance VoicemailUpdateAction)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VoicemailUpdateAction and conformance VoicemailUpdateAction);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type VoicemailUpdateAction and conformance VoicemailUpdateAction;
  if (!lazy protocol witness table cache variable for type VoicemailUpdateAction and conformance VoicemailUpdateAction)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VoicemailUpdateAction and conformance VoicemailUpdateAction);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type VoicemailUpdateAction and conformance VoicemailUpdateAction;
  if (!lazy protocol witness table cache variable for type VoicemailUpdateAction and conformance VoicemailUpdateAction)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VoicemailUpdateAction and conformance VoicemailUpdateAction);
  }

  return result;
}

uint64_t _s27PhoneCallFlowDelegatePlugin0A5ErrorOWOhTm_7(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_23_1(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t partial apply for implicit closure #2 in PromptForValueAfterReadingVoicemailFlowStrategy.generateMultipleItemsOutput()()
{
  OUTLINED_FUNCTION_24_1();
  v2 = v1;
  v4 = v3;
  v5 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_13_2(v5);
  v7 = (*(v6 + 80) + 40) & ~*(v6 + 80);
  v9 = (*(v8 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  v11 = v0[2];
  v12 = v0[3];
  v13 = *(v0 + v9);
  v14 = v0[4];
  v15 = *(v0 + v10);
  v16 = *(v0 + v10 + 8);
  v17 = swift_task_alloc();
  *(v2 + 16) = v17;
  *v17 = v2;
  v17[1] = closure #2 in ActionableCallControlFlow.execute();

  return implicit closure #2 in PromptForValueAfterReadingVoicemailFlowStrategy.generateMultipleItemsOutput()(v4, v11, v12, v14, v0 + v7, v16, v13, v15);
}

uint64_t OUTLINED_FUNCTION_40_25()
{
  v2 = v0[16];
  v1 = v0[17];
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
}

uint64_t OUTLINED_FUNCTION_51_24()
{
  v1 = v0[26];
  v2 = v0[22];
  return v0[19];
}

uint64_t OUTLINED_FUNCTION_60_14()
{

  return AceServiceInvokerAsync.submitAndForget(_:)();
}

uint64_t OUTLINED_FUNCTION_64_12()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 696));
}

uint64_t OUTLINED_FUNCTION_70_7()
{
  v2 = *(v0 + 480);
  v3 = *(v0 + 456);
}

void OUTLINED_FUNCTION_72_8()
{
  v3 = v0[60];
  v2 = v0[61];
  v4 = v0[58];
  v5 = v0[59];
}

void *OUTLINED_FUNCTION_73_7()
{
  v1 = v0[11];
  result = __swift_project_boxed_opaque_existential_1(v0 + 7, v0[10]);
  v3 = *(v1 + 32);
  return result;
}

id ReadCallHistoryResultSetFlowProvider.bundle.getter()
{
  v1 = *v0;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];

  return v3;
}

uint64_t ReadCallHistoryResultSetFlowProvider.totalItemCount.getter()
{
  OUTLINED_FUNCTION_2_0();
  v1 = (*(v0 + 168))();
  v2 = specialized Array.count.getter(v1);

  return v2;
}

uint64_t key path setter for ReadCallHistoryResultSetFlowProvider.items : ReadCallHistoryResultSetFlowProvider(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 176);

  return v3(v4);
}

uint64_t ReadCallHistoryResultSetFlowProvider.items.getter()
{
  OUTLINED_FUNCTION_19_3();
  swift_beginAccess();
  v1 = *(v0 + 16);
}

uint64_t ReadCallHistoryResultSetFlowProvider.items.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  *(v1 + 16) = a1;
}

uint64_t ReadCallHistoryResultSetFlowProvider.__allocating_init(app:intent:intentResponse:sharedGlobals:searchCallHistorySharedGlobals:)(uint64_t a1, void *a2, void *a3, uint64_t *a4, uint64_t a5)
{
  swift_allocObject();
  v10 = OUTLINED_FUNCTION_64();
  ReadCallHistoryResultSetFlowProvider.init(app:intent:intentResponse:sharedGlobals:searchCallHistorySharedGlobals:)(v10, a2, a3, a4, a5);
  return v5;
}

uint64_t ReadCallHistoryResultSetFlowProvider.init(app:intent:intentResponse:sharedGlobals:searchCallHistorySharedGlobals:)(uint64_t a1, void *a2, void *a3, uint64_t *a4, uint64_t a5)
{
  v6 = v5;
  v68 = type metadata accessor for Locale();
  v12 = OUTLINED_FUNCTION_7(v68);
  v14 = v13;
  v16 = *(v15 + 64);
  __chkstk_darwin(v12);
  v18 = (&v59 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6[37] = type metadata accessor for ReadCallHistoryResultSetFlowProvider();
  v6[38] = &outlined read-only object #0 of ReadCallHistoryResultSetFlowProvider.init(app:intent:intentResponse:sharedGlobals:searchCallHistorySharedGlobals:);
  v6[39] = 0;
  v6[40] = 0;
  v6[11] = a1;
  v6[8] = a2;
  v6[9] = a3;
  v64 = a4;
  outlined init with copy of SignalProviding(a4, (v6 + 3));
  v63 = a5;
  outlined init with copy of SearchCallHistorySharedGlobals(a5, (v6 + 12));
  v19 = a3;

  v20 = a2;
  v62 = a1;
  v21 = App.isFirstParty()();
  v60 = v6;
  v65 = v19;
  if (v21)
  {
    v22 = static SearchCallHistoryCatParameterHelper.makePhonePersons1P(intent:intentResponse:)(v20, v19);

    v23 = v19;
    goto LABEL_8;
  }

  v24 = [v20 recipient];
  if (v24)
  {
    v25 = v24;
    type metadata accessor for PhonePerson(0);
    v26 = v25;
    static Device.current.getter();
    __swift_project_boxed_opaque_existential_1(&v69, v71);
    OUTLINED_FUNCTION_64();
    dispatch thunk of DeviceState.siriLocale.getter();
    __swift_destroy_boxed_opaque_existential_1(&v69);
    v27 = static PhonePerson.make(phonePerson:options:locale:)(v25, 0, v18);

    (*(v14 + 8))(v18, v68);
    if (v27)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
      v22 = swift_allocObject();
      *(v22 + 1) = xmmword_426260;
      v22[4] = v27;

      v23 = v65;
      v6 = v60;
      goto LABEL_8;
    }

    v6 = v60;
  }

  v23 = v65;

  v22 = _swiftEmptyArrayStorage;
LABEL_8:
  type metadata accessor for PhoneSearchCallHistoryIntent(0);
  type metadata accessor for PhonePersonList();
  v28 = PhonePersonList.__allocating_init(list:)(v22);
  v61 = v20;
  v6[10] = PhoneSearchCallHistoryIntent.__allocating_init(intent:recipients:)(v61, v28);
  v29 = outlined bridged method (pb) of @objc INSearchCallHistoryIntentResponse.callRecords.getter(v23);
  if (v29)
  {
    v30 = v29;
  }

  else
  {
    v30 = _swiftEmptyArrayStorage;
  }

  v31 = specialized Array.count.getter(v30);
  if (v31)
  {
    v32 = v31;
    v72 = _swiftEmptyArrayStorage;
    result = specialized ContiguousArray.reserveCapacity(_:)();
    if (v32 < 0)
    {
      __break(1u);
      return result;
    }

    v34 = 0;
    v66 = v30 & 0xC000000000000001;
    v67 = v30;
    v35 = (v14 + 8);
    do
    {
      if (v66)
      {
        v36 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v36 = *(v30 + 8 * v34 + 32);
      }

      v37 = v36;
      ++v34;
      type metadata accessor for AppInfoBuilder();
      v38 = swift_allocObject();
      static Device.current.getter();
      v39 = __swift_project_boxed_opaque_existential_1(&v69, v71);
      dispatch thunk of DeviceState.siriLocale.getter();
      __swift_destroy_boxed_opaque_existential_1(&v69);
      _s27PhoneCallFlowDelegatePlugin0aB6RecordC10getBuilder04callF07options07appInfoH06localeAC0H0CSo06INCallF0C_AC7OptionsVAA03AppL8Building_p10Foundation6LocaleVtFZTf4nnenn_nAA0plH0C_Tt3g5(v37, 1, v38, v18);
      v40 = OUTLINED_FUNCTION_88();
      v41 = type metadata accessor for PhoneCallRecord(v40);
      OUTLINED_FUNCTION_12_8(v41);
      swift_allocObject();
      PhoneCallRecord.init(builder:)(v39);

      (*v35)(v18, v68);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v42 = v72[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v30 = v67;
    }

    while (v32 != v34);

    v43 = v72;
    v6 = v60;
  }

  else
  {

    v43 = _swiftEmptyArrayStorage;
  }

  v6[2] = v43;
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

  v44 = type metadata accessor for Logger();
  __swift_project_value_buffer(v44, static Logger.siriPhone);
  OUTLINED_FUNCTION_64();
  swift_retain_n();
  v45 = Logger.logObject.getter();
  v46 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    OUTLINED_FUNCTION_12_17();
    v48 = swift_slowAlloc();
    v72 = v48;
    *v47 = 136315394;
    v49 = v6[37];
    v50 = v6[38];
    v51 = v6;
    v52 = v6[39];
    v53 = v6[40];
    v69 = 0;
    v70 = 0xE000000000000000;

    v54 = OUTLINED_FUNCTION_72();
    DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v54, v55, v52, v53);
    v6 = v51;

    v56 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v69, v70, &v72);

    *(v47 + 4) = v56;
    *(v47 + 12) = 1024;
    v57 = v51[10];
    specialized PhoneSearchCallHistoryIntentProperties.isRequestContainingOnlyCallTypes(callRecordTypes:)(&outlined read-only object #0 of specialized PhoneSearchCallHistoryIntentProperties.isRequestForMissed.getter);
    LOBYTE(v57) = v58;

    *(v47 + 14) = v57 & 1;

    _os_log_impl(&dword_0, v45, v46, "%s initiated, isMissedCall:%{BOOL}d", v47, 0x12u);
    __swift_destroy_boxed_opaque_existential_1(v48);
    OUTLINED_FUNCTION_8();

    OUTLINED_FUNCTION_8();
  }

  else
  {
  }

  outlined destroy of SearchCallHistorySharedGlobals(v63);
  __swift_destroy_boxed_opaque_existential_1(v64);
  return v6;
}

uint64_t ReadCallHistoryResultSetFlowProvider.makeSingleItemFlow()()
{
  OUTLINED_FUNCTION_15();
  v1[38] = v0;
  v2 = type metadata accessor for PhoneError();
  v1[39] = v2;
  OUTLINED_FUNCTION_21(v2);
  v4 = *(v3 + 64);
  v1[40] = OUTLINED_FUNCTION_45();
  v5 = type metadata accessor for SpeakableString();
  v1[41] = v5;
  OUTLINED_FUNCTION_13_2(v5);
  v1[42] = v6;
  v8 = *(v7 + 64);
  v1[43] = OUTLINED_FUNCTION_45();
  v9 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t ReadCallHistoryResultSetFlowProvider.makeSingleItemFlow()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t *a12, uint64_t a13, unint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_75_3();
  a25 = v28;
  a26 = v29;
  OUTLINED_FUNCTION_86_2();
  a24 = v26;
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

  v30 = v26[38];
  v31 = type metadata accessor for Logger();
  __swift_project_value_buffer(v31, static Logger.siriPhone);
  OUTLINED_FUNCTION_11_0();

  v32 = Logger.logObject.getter();
  static os_log_type_t.debug.getter();
  OUTLINED_FUNCTION_87();
  if (OUTLINED_FUNCTION_86_0())
  {
    v33 = v26[38];
    v34 = OUTLINED_FUNCTION_42();
    OUTLINED_FUNCTION_12_17();
    v35 = swift_slowAlloc();
    a12 = v35;
    a13 = 0;
    v36 = OUTLINED_FUNCTION_11_51(4.8149e-34);
    a14 = v37;
    DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v36, v38, v39, v40);
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a13, a14, &a12);
    OUTLINED_FUNCTION_63_1();
    *(v34 + 4) = v27;
    OUTLINED_FUNCTION_12(&dword_0, v41, v42, "%s there is only one item in the result set. Rendering single result.");
    __swift_destroy_boxed_opaque_existential_1(v35);
    OUTLINED_FUNCTION_8();

    OUTLINED_FUNCTION_8();
  }

  v43 = v26[38];
  OUTLINED_FUNCTION_2_0();
  v45 = (*(v44 + 168))();
  if (specialized Array.count.getter(v45))
  {
    specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v45 & 0xC000000000000001) == 0, v45);
    if ((v45 & 0xC000000000000001) != 0)
    {
      specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v46 = *(v45 + 32);
    }

    v47 = v26[38];

    v48 = [*(v47 + 72) callRecords];
    if (v48)
    {
      v49 = v48;
      type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INCallRecord, INCallRecord_ptr);
      v50 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
      v50 = _swiftEmptyArrayStorage;
    }

    if (specialized Array.count.getter(v50))
    {
      specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v50 & 0xC000000000000001) == 0, v50);
      if ((v50 & 0xC000000000000001) != 0)
      {
        v51 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v51 = *(v50 + 32);
      }

      v53 = v26[42];
      v52 = v26[43];
      v84 = v51;
      v85 = v26[41];
      v86 = v26[40];
      v54 = v26[38];

      v55 = v54[7];
      __swift_project_boxed_opaque_existential_1(v54 + 3, v54[6]);
      v56 = *(v55 + 8);
      v57 = OUTLINED_FUNCTION_5();
      v58(v57, v55);
      static UserFacingCallingAppUtils.getAppBundleId(preferredCallProvider:deviceState:)(1, v26 + 27);
      __swift_destroy_boxed_opaque_existential_1(v26 + 27);
      String.toSpeakableString.getter();

      v59 = v54[8];
      v60 = v54[10];
      v61 = v54[11];
      outlined init with copy of SignalProviding((v54 + 3), (v26 + 32));
      outlined init with copy of SearchCallHistorySharedGlobals((v54 + 12), (v26 + 2));
      type metadata accessor for SingleCallResultFlow();
      swift_allocObject();
      v26[37] = SingleCallResultFlow.init(app:callRecord:phoneCallRecord:intent:phoneIntent:sharedGlobals:schGlobals:isIncomingCallFollowupPrompt:)();
      lazy protocol witness table accessor for type SingleCallResultFlow and conformance SingleCallResultFlow(&lazy protocol witness table cache variable for type SingleCallResultFlow and conformance SingleCallResultFlow, 255, type metadata accessor for SingleCallResultFlow);

      v62 = v59;

      Flow.eraseToAnyFlow()();

      (*(v53 + 8))(v52, v85);

      OUTLINED_FUNCTION_2_8();
      OUTLINED_FUNCTION_46_6();

      return v65(v63, v64, v65, v66, v67, v68, v69, v70, v84, v85, v86, a12, a13, a14, a15, a16, a17, a18);
    }
  }

  v72 = v26[43];
  v74 = v26[39];
  v73 = v26[40];
  *v73 = 0xD000000000000024;
  v73[1] = 0x8000000000442A10;
  v73[2] = 0xD00000000000001CLL;
  v73[3] = 0x80000000004607A0;
  swift_storeEnumTagMultiPayload();
  lazy protocol witness table accessor for type SingleCallResultFlow and conformance SingleCallResultFlow(&lazy protocol witness table cache variable for type PhoneError and conformance PhoneError, 255, type metadata accessor for PhoneError);
  swift_allocError();
  PhoneError.logged()(v75);
  _s27PhoneCallFlowDelegatePlugin0A5ErrorOWOhTm_8(v73, type metadata accessor for PhoneError);
  swift_willThrow();

  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_46_6();

  return v77(v76, v77, v78, v79, v80, v81, v82, v83, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t ReadCallHistoryResultSetFlowProvider.makeEmptyResultSetFlow()()
{
  OUTLINED_FUNCTION_15();
  v1[19] = v0;
  v2 = type metadata accessor for Locale();
  v1[20] = v2;
  OUTLINED_FUNCTION_13_2(v2);
  v1[21] = v3;
  v5 = *(v4 + 64);
  v1[22] = OUTLINED_FUNCTION_45();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v6);
  v8 = *(v7 + 64);
  v1[23] = OUTLINED_FUNCTION_45();
  v9 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v9, v10, v11);
}

{
  OUTLINED_FUNCTION_27();
  v3 = v2;
  OUTLINED_FUNCTION_28();
  v5 = v4;
  OUTLINED_FUNCTION_13_1();
  *v6 = v5;
  v8 = *(v7 + 200);
  v9 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v10 = v9;
  *(v5 + 208) = v0;

  if (v0)
  {
    v11 = ReadCallHistoryResultSetFlowProvider.makeEmptyResultSetFlow();
  }

  else
  {
    *(v5 + 216) = v3;
    v11 = ReadCallHistoryResultSetFlowProvider.makeEmptyResultSetFlow();
  }

  return _swift_task_switch(v11, 0, 0);
}

{
  v1 = v0[27];
  v2 = v0[23];
  v3 = v0[24];
  v4 = v0[22];
  v5 = v0[19];
  v6 = v5[7];
  __swift_project_boxed_opaque_existential_1(v5 + 3, v5[6]);
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_3_13();
  v9(v8);
  v10 = v0[5];
  v11 = v0[7];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v10);
  v0[16] = v10;
  v0[17] = v11;
  __swift_allocate_boxed_opaque_existential_1(v0 + 13);
  OUTLINED_FUNCTION_40(v10);
  (*(v12 + 16))();
  v13 = swift_allocObject();
  *(v13 + 16) = v5;
  *(v13 + 24) = v1;
  v14 = type metadata accessor for SimpleOutputFlowAsync();
  OUTLINED_FUNCTION_12_8(v14);
  swift_allocObject();

  v15 = v1;
  v16 = SimpleOutputFlowAsync.init(outputPublisher:outputGenerator:)();
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v0[18] = v16;
  Flow.eraseToAnyFlow()();

  outlined destroy of SpeakableString?(v2);

  v17 = OUTLINED_FUNCTION_2_8();

  return v18(v17);
}

{
  OUTLINED_FUNCTION_15();
  v2 = v0[23];
  v1 = v0[24];
  v3 = v0[22];

  outlined destroy of SpeakableString?(v2);

  OUTLINED_FUNCTION_11();
  v5 = v0[26];

  return v4();
}

void ReadCallHistoryResultSetFlowProvider.makeEmptyResultSetFlow()()
{
  OUTLINED_FUNCTION_86_2();
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

  v2 = v0[19];
  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Logger.siriPhone);
  OUTLINED_FUNCTION_11_0();

  v4 = Logger.logObject.getter();
  static os_log_type_t.debug.getter();
  OUTLINED_FUNCTION_87();
  if (OUTLINED_FUNCTION_86_0())
  {
    v5 = v0[19];
    v6 = OUTLINED_FUNCTION_42();
    OUTLINED_FUNCTION_12_17();
    v7 = swift_slowAlloc();
    v48 = v7;
    v8 = OUTLINED_FUNCTION_11_51(4.8149e-34);
    v47 = v9;
    DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v8, v10, v11, v12);
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0, v47, &v48);
    OUTLINED_FUNCTION_63_1();
    *(v6 + 4) = v1;
    OUTLINED_FUNCTION_12(&dword_0, v13, v14, "%s can't find any call record");
    __swift_destroy_boxed_opaque_existential_1(v7);
    OUTLINED_FUNCTION_8();

    OUTLINED_FUNCTION_8();
  }

  v16 = v0[21];
  v15 = v0[22];
  v17 = v0[19];
  v45 = v0[20];
  v18 = v17[15];
  v19 = v17[16];
  __swift_project_boxed_opaque_existential_1(v17 + 12, v18);
  v20 = v17[11];
  v21 = v17[6];
  v22 = v17[7];
  __swift_project_boxed_opaque_existential_1(v17 + 3, v21);
  (*(v22 + 8))(v21, v22);
  v23 = v0[12];
  __swift_project_boxed_opaque_existential_1(v0 + 8, v0[11]);
  dispatch thunk of DeviceState.siriLocale.getter();
  (*(v19 + 16))(v20, v15, v18, v19);
  v25 = v24;
  (*(v16 + 8))(v15, v45);
  __swift_destroy_boxed_opaque_existential_1(v0 + 8);
  if (v25)
  {
    v26 = v0[23];
    OUTLINED_FUNCTION_19_3();
    SpeakableString.init(print:speak:)();
    v27 = 0;
  }

  else
  {
    v27 = 1;
  }

  v28 = v0[23];
  v29 = v0[19];
  v30 = type metadata accessor for SpeakableString();
  __swift_storeEnumTagSinglePayload(v28, v27, 1, v30);
  type metadata accessor for SirikitDeviceState();
  v31 = v17[7];
  __swift_project_boxed_opaque_existential_1(v17 + 3, v17[6]);
  v32 = *(v31 + 8);
  v33 = OUTLINED_FUNCTION_11_0();
  v34(v33, v31);
  v0[24] = SirikitDeviceState.__allocating_init(from:)();
  v35 = *(v29 + 280);
  v36 = *(v29 + 80);
  App.isFirstParty()();
  specialized PhoneSearchCallHistoryIntentProperties.isRequestContainingOnlyCallTypes(callRecordTypes:)(&outlined read-only object #0 of specialized PhoneSearchCallHistoryIntentProperties.isRequestForMissed.getter);
  v37 = *(*v35 + class metadata base offset for SearchCallHistoryCATsSimple + 464);
  OUTLINED_FUNCTION_24_5();
  v46 = v38 + *v38;
  v40 = *(v39 + 4);
  v41 = swift_task_alloc();
  v0[25] = v41;
  *v41 = v0;
  v41[1] = ReadCallHistoryResultSetFlowProvider.makeEmptyResultSetFlow();
  v42 = v0[23];
  OUTLINED_FUNCTION_55_18();
  OUTLINED_FUNCTION_46_6();

  __asm { BRAA            X8, X16 }
}

uint64_t closure #2 in ReadCallHistoryResultSetFlowProvider.makeEmptyResultSetFlow()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = *(*(type metadata accessor for DialogPhase() - 8) + 64) + 15;
  v3[5] = swift_task_alloc();
  v5 = type metadata accessor for OutputGenerationManifest();
  v3[6] = v5;
  v6 = *(v5 - 8);
  v3[7] = v6;
  v7 = *(v6 + 64) + 15;
  v3[8] = swift_task_alloc();

  return _swift_task_switch(closure #2 in ReadCallHistoryResultSetFlowProvider.makeEmptyResultSetFlow(), 0, 0);
}

uint64_t closure #2 in ReadCallHistoryResultSetFlowProvider.makeEmptyResultSetFlow()()
{
  v1 = v0[8];
  v3 = v0[4];
  v2 = v0[5];
  v4 = v0[3];
  v5 = v4[25];
  v6 = v4[26];
  __swift_project_boxed_opaque_existential_1(v4 + 22, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v7 = swift_allocObject();
  v0[9] = v7;
  *(v7 + 16) = xmmword_426260;
  *(v7 + 32) = v3;
  v8 = v3;
  static DialogPhase.completion.getter();
  v9 = swift_task_alloc();
  *(v9 + 16) = 0;
  *(v9 + 24) = 0;
  OutputGenerationManifest.init(dialogPhase:_:)();

  v10 = async function pointer to dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)[1];
  v11 = swift_task_alloc();
  v0[10] = v11;
  *v11 = v0;
  v11[1] = closure #2 in ReadCallHistoryResultSetFlowProvider.makeEmptyResultSetFlow();
  v12 = v0[8];
  v13 = v0[2];

  return dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)(v13, v7, v12, v5, v6);
}

{
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_28();
  v2 = v1[10];
  v3 = v1[9];
  v4 = v1[8];
  v5 = v1[7];
  v6 = v1[6];
  v7 = v1[5];
  v8 = *v0;
  OUTLINED_FUNCTION_4_2();
  *v9 = v8;

  (*(v5 + 8))(v4, v6);

  OUTLINED_FUNCTION_8_1();

  return v10();
}

uint64_t ReadCallHistoryResultSetFlowProvider.makeAllResultsFlow()()
{
  OUTLINED_FUNCTION_15();
  v1[257] = v0;
  v2 = type metadata accessor for PhoneSnippetDataModels();
  v1[258] = v2;
  OUTLINED_FUNCTION_13_2(v2);
  v1[259] = v3;
  v1[260] = *(v4 + 64);
  v1[261] = swift_task_alloc();
  v1[262] = swift_task_alloc();
  v5 = type metadata accessor for SearchCallHistoryModel();
  v1[263] = v5;
  OUTLINED_FUNCTION_13_2(v5);
  v1[264] = v6;
  v1[265] = *(v7 + 64);
  v1[266] = swift_task_alloc();
  v1[267] = swift_task_alloc();
  v8 = type metadata accessor for Locale();
  v1[268] = v8;
  OUTLINED_FUNCTION_13_2(v8);
  v1[269] = v9;
  v11 = *(v10 + 64);
  v1[270] = OUTLINED_FUNCTION_45();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_13_2(v12);
  v1[271] = v13;
  v1[272] = *(v14 + 64);
  v1[273] = swift_task_alloc();
  v1[274] = swift_task_alloc();
  v1[275] = swift_task_alloc();
  v15 = type metadata accessor for SpeakableString();
  v1[276] = v15;
  OUTLINED_FUNCTION_13_2(v15);
  v1[277] = v16;
  v18 = *(v17 + 64);
  v1[278] = OUTLINED_FUNCTION_45();
  v19 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v19, v20, v21);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v5 = *(v4 + 2264);
  v6 = *(v4 + 2256);
  v7 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v8 = v7;
  *(v10 + 2272) = v9;
  *(v10 + 2280) = v0;

  if (v0)
  {
    v11 = ReadCallHistoryResultSetFlowProvider.makeAllResultsFlow();
  }

  else
  {
    v11 = ReadCallHistoryResultSetFlowProvider.makeAllResultsFlow();
  }

  return _swift_task_switch(v11, 0, 0);
}

{
  v35 = v0[280];
  v36 = v0[281];
  v1 = v0[279];
  v2 = v0[270];
  v34 = v0[268];
  v3 = v0[257];
  v4 = v3[7];
  __swift_project_boxed_opaque_existential_1(v3 + 3, v3[6]);
  v5 = *(v4 + 8);
  v6 = OUTLINED_FUNCTION_3_13();
  v7(v6);
  v8 = static UserFacingCallingAppUtils.getCommAppForLaunch(originalApp:preferredCallProvider:deviceState:)(v1, 0, v0 + 193);
  v0[286] = v8;
  __swift_destroy_boxed_opaque_existential_1(v0 + 193);

  swift_asyncLet_begin();
  v9 = v3[15];
  v10 = v3[16];
  __swift_project_boxed_opaque_existential_1(v3 + 12, v9);
  v12 = v3[6];
  v11 = v3[7];
  __swift_project_boxed_opaque_existential_1(v3 + 3, v12);
  (*(v11 + 8))(v12, v11);
  v13 = v0[187];
  __swift_project_boxed_opaque_existential_1(v0 + 183, v0[186]);
  OUTLINED_FUNCTION_5();
  dispatch thunk of DeviceState.siriLocale.getter();
  (*(v10 + 16))(v8, v2, v9, v10);
  v15 = v14;
  v35(v2, v34);
  __swift_destroy_boxed_opaque_existential_1(v0 + 183);
  if (v15)
  {
    v16 = v0[274];
    OUTLINED_FUNCTION_19_3();
    SpeakableString.init(print:speak:)();
    v17 = 0;
  }

  else
  {
    v17 = 1;
  }

  v18 = v0[278];
  v19 = v0[273];
  v20 = v0[272];
  v21 = v0[271];
  v22 = v0[257];
  __swift_storeEnumTagSinglePayload(v0[274], v17, 1, v0[276]);
  v23 = OUTLINED_FUNCTION_92();
  outlined init with copy of SpeakableString?(v23, v24);
  v25 = (*(v21 + 80) + 24) & ~*(v21 + 80);
  v26 = swift_allocObject();
  v0[287] = v26;
  *(v26 + 16) = v22;
  outlined init with take of SpeakableString?(v19, v26 + v25);

  swift_asyncLet_begin();
  v0[253] = SpeakableString.print.getter();
  v0[254] = v27;
  v0[288] = v27;
  v28 = (*(*v22 + 168))();
  static SearchCallHistoryHelper.generateSearchCallHistoryModel(items:sharedGlobals:)(v28);
  v0[289] = v29;

  v30 = OUTLINED_FUNCTION_25_30();

  return _swift_asyncLet_get_throwing(v30, v31, v32, v0 + 162);
}

{
  OUTLINED_FUNCTION_15();
  v1[290] = v0;
  if (v0)
  {

    return _swift_task_switch(ReadCallHistoryResultSetFlowProvider.makeAllResultsFlow(), 0, 0);
  }

  else
  {
    v1[291] = v1[243];
    v1[292] = v1[244];

    v2 = OUTLINED_FUNCTION_26_29();

    return _swift_asyncLet_get_throwing(v2, v3, v4, v1 + 198);
  }
}

{
  v1[293] = v0;
  if (v0)
  {
    return OUTLINED_FUNCTION_0_1(ReadCallHistoryResultSetFlowProvider.makeAllResultsFlow());
  }

  v1[294] = v1[253];
  return OUTLINED_FUNCTION_0_1(ReadCallHistoryResultSetFlowProvider.makeAllResultsFlow());
}

{
  v45 = *(v0 + 2328);
  v46 = *(v0 + 2336);
  v43 = *(v0 + 2312);
  v40 = *(v0 + 2304);
  v41 = *(v0 + 2352);
  v39 = *(v0 + 2288);
  v55 = *(v0 + 2272);
  v1 = *(v0 + 2136);
  v51 = *(v0 + 2128);
  v53 = *(v0 + 2112);
  v54 = *(v0 + 2120);
  v2 = *(v0 + 2104);
  v52 = *(v0 + 2080);
  v49 = *(v0 + 2088);
  v50 = *(v0 + 2072);
  v47 = *(v0 + 2096);
  v48 = *(v0 + 2064);
  v3 = *(v0 + 2056);
  v44 = *(v0 + 1960);
  v42 = *(v0 + 1968);
  v4 = v3[6];
  v5 = v3[7];
  __swift_project_boxed_opaque_existential_1(v3 + 3, v4);
  v6 = *(v5 + 8);

  v6(v4, v5);
  v7 = *(v0 + 1656);
  __swift_project_boxed_opaque_existential_1((v0 + 1624), *(v0 + 1648));
  OUTLINED_FUNCTION_64();
  LOBYTE(v7) = dispatch thunk of DeviceState.isXRDevice.getter();
  __swift_destroy_boxed_opaque_existential_1((v0 + 1624));
  v8 = v3[7];
  __swift_project_boxed_opaque_existential_1(v3 + 3, v3[6]);
  v9 = *(v8 + 8);
  v10 = OUTLINED_FUNCTION_64();
  v11(v10, v8);
  v12 = *(v0 + 1736);
  __swift_project_boxed_opaque_existential_1((v0 + 1704), *(v0 + 1728));
  OUTLINED_FUNCTION_3_13();
  LOBYTE(v12) = dispatch thunk of DeviceState.isXRDevice.getter();
  __swift_destroy_boxed_opaque_existential_1((v0 + 1704));
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SAAppsLaunchApp, SAAppsLaunchApp_ptr);

  SAAppsLaunchApp.init(app:)(v13);
  *v1 = 0xD000000000000011;
  v1[1] = 0x8000000000456CD0;
  v14 = v2[5];
  *(v0 + 1976) = v41;
  *(v0 + 1984) = v40;
  Loggable.init(wrappedValue:)();
  v15 = v2[6];
  *(v0 + 2040) = v43;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay27PhoneCallFlowDelegatePlugin06SingleB11RecordModelVGMd, &_sSay27PhoneCallFlowDelegatePlugin06SingleB11RecordModelVGMR);
  Loggable.init(wrappedValue:)();
  v16 = v2[7];
  *(v0 + 1992) = v45;
  *(v0 + 2000) = v46;
  Loggable.init(wrappedValue:)();
  v17 = v2[8];
  *(v0 + 2008) = v44;
  *(v0 + 2016) = v42;
  Loggable.init(wrappedValue:)();
  v18 = v2[9];
  *(v0 + 2368) = (v7 & 1) == 0;
  Loggable.init(wrappedValue:)();
  v19 = v2[10];
  *(v0 + 2369) = (v12 & 1) == 0;
  Loggable.init(wrappedValue:)();
  v20 = v2[11];
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SABaseCommand, SABaseCommand_ptr);
  CodableAceObject.init(wrappedValue:)();
  outlined init with copy of SearchCallHistoryModel(v1, v47);
  swift_storeEnumTagMultiPayload();
  v21 = v3[7];
  __swift_project_boxed_opaque_existential_1(v3 + 3, v3[6]);
  v22 = *(v21 + 16);
  v23 = OUTLINED_FUNCTION_3_13();
  v24(v23);
  v25 = *(v0 + 1360);
  v26 = *(v0 + 1376);
  __swift_project_boxed_opaque_existential_1((v0 + 1336), v25);
  *(v0 + 1888) = v25;
  *(v0 + 1896) = v26;
  __swift_allocate_boxed_opaque_existential_1((v0 + 1864));
  OUTLINED_FUNCTION_40(v25);
  (*(v27 + 16))();
  OUTLINED_FUNCTION_21_36();
  outlined init with copy of SearchCallHistoryModel(v47, v49);
  outlined init with copy of SearchCallHistoryModel(v1, v51);
  v28 = (*(v50 + 80) + 24) & ~*(v50 + 80);
  v29 = (v52 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
  v30 = (*(v53 + 80) + v29 + 8) & ~*(v53 + 80);
  v31 = swift_allocObject();
  *(v31 + 16) = v3;
  outlined init with take of PhoneSnippetDataModels(v49, v31 + v28);
  *(v31 + v29) = v55;
  outlined init with take of PhoneSnippetDataModels(v51, v31 + v30);
  v32 = type metadata accessor for SimpleOutputFlowAsync();
  OUTLINED_FUNCTION_12_8(v32);
  swift_allocObject();

  v33 = v55;
  v34 = SimpleOutputFlowAsync.init(outputPublisher:outputGenerator:)();
  __swift_destroy_boxed_opaque_existential_1((v0 + 1336));
  *(v0 + 2048) = v34;
  *(v0 + 2360) = Flow.eraseToAnyFlow()();

  _s27PhoneCallFlowDelegatePlugin0A5ErrorOWOhTm_8(v47, type metadata accessor for PhoneSnippetDataModels);
  _s27PhoneCallFlowDelegatePlugin0A5ErrorOWOhTm_8(v1, type metadata accessor for SearchCallHistoryModel);
  v35 = OUTLINED_FUNCTION_26_29();

  return _swift_asyncLet_finish(v35, v36, v37, v0 + 1824);
}

{
  return OUTLINED_FUNCTION_0_1(ReadCallHistoryResultSetFlowProvider.makeAllResultsFlow());
}

{
  OUTLINED_FUNCTION_15();
  outlined destroy of SpeakableString?(*(v0 + 2192));
  v1 = OUTLINED_FUNCTION_25_30();

  return _swift_asyncLet_finish(v1, v2, v3, v0 + 1904);
}

{
  return OUTLINED_FUNCTION_0_1(ReadCallHistoryResultSetFlowProvider.makeAllResultsFlow());
}

{
  OUTLINED_FUNCTION_15();
  v1 = *(v0 + 2312);
  v2 = *(v0 + 2304);

  v3 = OUTLINED_FUNCTION_26_29();

  return _swift_asyncLet_finish(v3, v4, v5, v0 + 1424);
}

{
  return OUTLINED_FUNCTION_0_1(ReadCallHistoryResultSetFlowProvider.makeAllResultsFlow());
}

{
  OUTLINED_FUNCTION_15();
  outlined destroy of SpeakableString?(*(v0 + 2192));
  v1 = OUTLINED_FUNCTION_25_30();

  return _swift_asyncLet_finish(v1, v2, v3, v0 + 1504);
}

{
  return OUTLINED_FUNCTION_0_1(ReadCallHistoryResultSetFlowProvider.makeAllResultsFlow());
}

{
  OUTLINED_FUNCTION_15();
  v1 = v0[292];
  v2 = v0[289];
  v3 = v0[288];

  v4 = OUTLINED_FUNCTION_26_29();

  return _swift_asyncLet_finish(v4, v5, v6, v0 + 208);
}

{
  return OUTLINED_FUNCTION_0_1(ReadCallHistoryResultSetFlowProvider.makeAllResultsFlow());
}

{
  OUTLINED_FUNCTION_15();
  outlined destroy of SpeakableString?(*(v0 + 2192));
  v1 = OUTLINED_FUNCTION_25_30();

  return _swift_asyncLet_finish(v1, v2, v3, v0 + 1744);
}

{
  return OUTLINED_FUNCTION_0_1(ReadCallHistoryResultSetFlowProvider.makeAllResultsFlow());
}

void ReadCallHistoryResultSetFlowProvider.makeAllResultsFlow()()
{
  OUTLINED_FUNCTION_86_2();
  v1 = v0[278];
  v2 = v0[270];
  v3 = v0[269];
  v47 = v0[268];
  v4 = v0[257];
  v5 = v4[6];
  v6 = v4[7];
  __swift_project_boxed_opaque_existential_1(v4 + 3, v5);
  (*(v6 + 8))(v5, v6);
  static UserFacingCallingAppUtils.getAppBundleId(preferredCallProvider:deviceState:)(1, v0 + 173);
  __swift_destroy_boxed_opaque_existential_1(v0 + 173);
  String.toSpeakableString.getter();

  v7 = v4[15];
  v8 = v4[16];
  __swift_project_boxed_opaque_existential_1(v4 + 12, v7);
  v9 = v4[11];
  v0[279] = v9;
  v11 = v4[6];
  v10 = v4[7];
  __swift_project_boxed_opaque_existential_1(v4 + 3, v11);
  (*(v10 + 8))(v11, v10);
  v12 = v0[227];
  __swift_project_boxed_opaque_existential_1(v0 + 223, v0[226]);
  dispatch thunk of DeviceState.siriLocale.getter();
  (*(v8 + 16))(v9, v2, v7, v8);
  v14 = v13;
  v15 = *(v3 + 8);
  v0[280] = v15;
  v0[281] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v15(v2, v47);
  __swift_destroy_boxed_opaque_existential_1(v0 + 223);
  if (v14)
  {
    v16 = v0[275];
    OUTLINED_FUNCTION_19_3();
    SpeakableString.init(print:speak:)();
    v17 = 0;
  }

  else
  {
    v17 = 1;
  }

  __swift_storeEnumTagSinglePayload(v0[275], v17, 1, v0[276]);
  type metadata accessor for SirikitDeviceState();
  v18 = v4[7];
  __swift_project_boxed_opaque_existential_1(v4 + 3, v4[6]);
  v19 = *(v18 + 8);
  v20 = OUTLINED_FUNCTION_92();
  v21(v20);
  v0[282] = SirikitDeviceState.__allocating_init(from:)();
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

  v22 = v0[257];
  v23 = type metadata accessor for Logger();
  __swift_project_value_buffer(v23, static Logger.siriPhone);
  swift_retain_n();
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.debug.getter();
  v26 = os_log_type_enabled(v24, v25);
  v27 = v0[257];
  if (v26)
  {
    v28 = swift_slowAlloc();
    OUTLINED_FUNCTION_12_17();
    v29 = swift_slowAlloc();
    v49 = v29;
    *v28 = 136315394;
    DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v27[37], v27[38], v27[39], v27[40]);
    v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0, 0xE000000000000000, &v49);

    *(v28 + 4) = v30;
    *(v28 + 12) = 2048;
    v32 = (*(*v27 + 168))(v31);
    v33 = specialized Array.count.getter(v32);

    *(v28 + 14) = v33;

    _os_log_impl(&dword_0, v24, v25, "%s show all results there are %ld items in the result set. Rendering multiple results with SMART UI on.", v28, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v29);
    OUTLINED_FUNCTION_8();

    OUTLINED_FUNCTION_8();
  }

  else
  {
    v34 = v0[257];
  }

  v35 = v0[257];
  v36 = v35[35];
  v37 = v35[9];
  INSearchCallHistoryIntentResponse.callRecordsCount.getter();
  INSearchCallHistoryIntentResponse.totalCallRecordsCount.getter();
  v38 = v35[10];

  App.isFirstParty()();
  specialized PhoneSearchCallHistoryIntentProperties.isRequestContainingOnlyCallTypes(callRecordTypes:)(&outlined read-only object #0 of specialized PhoneSearchCallHistoryIntentProperties.isRequestForMissed.getter);
  v39 = *(*v36 + class metadata base offset for SearchCallHistoryCATsSimple + 464);
  OUTLINED_FUNCTION_24_5();
  v48 = v40 + *v40;
  v42 = *(v41 + 4);
  v43 = swift_task_alloc();
  v0[283] = v43;
  *v43 = v0;
  v43[1] = ReadCallHistoryResultSetFlowProvider.makeAllResultsFlow();
  v44 = v0[275];
  OUTLINED_FUNCTION_55_18();
  OUTLINED_FUNCTION_46_6();

  __asm { BRAA            X8, X16 }
}

uint64_t ReadCallHistoryResultSetFlowProvider.makeAllResultsFlow()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_75_3();
  OUTLINED_FUNCTION_86_2();
  v19 = *(v18 + 2296);
  v20 = *(v18 + 2288);
  v21 = *(v18 + 2256);
  v22 = *(v18 + 2224);
  v23 = *(v18 + 2216);
  v24 = *(v18 + 2208);
  v25 = *(v18 + 2200);
  v26 = *(v18 + 2192);
  v39 = *(v18 + 2184);
  v40 = *(v18 + 2160);
  v41 = *(v18 + 2136);
  v42 = *(v18 + 2128);
  v43 = *(v18 + 2096);
  v44 = *(v18 + 2088);
  v27 = *(v18 + 2056);

  outlined destroy of SpeakableString?(v25);
  (*(v23 + 8))(v22, v24);

  v28 = *(v18 + 8);
  v29 = *(v18 + 2360);
  OUTLINED_FUNCTION_46_6();

  return v32(v30, v31, v32, v33, v34, v35, v36, v37, a9, v39, v40, v41, v42, v43, v44, a16, a17, a18);
}

uint64_t ReadCallHistoryResultSetFlowProvider.makeAllResultsFlow()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_24_1();
  v13 = v12[282];
  v14 = v12[278];
  v15 = v12[277];
  v16 = v12[276];
  v17 = v12[275];

  outlined destroy of SpeakableString?(v17);
  (*(v15 + 8))(v14, v16);
  v18 = v12[285];
  OUTLINED_FUNCTION_7_62();

  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_16();

  return v20(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10, a11, a12);
}

{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_30_32();

  outlined destroy of SpeakableString?(v15);
  (*(v16 + 8))(v13, v14);

  v17 = *(v12 + 2320);
  OUTLINED_FUNCTION_7_62();

  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_16();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
}

{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_30_32();

  outlined destroy of SpeakableString?(v15);
  (*(v16 + 8))(v13, v14);

  v17 = *(v12 + 2344);
  OUTLINED_FUNCTION_7_62();

  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_16();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
}

uint64_t implicit closure #3 in ReadCallHistoryResultSetFlowProvider.makeAllResultsFlow()(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(implicit closure #3 in ReadCallHistoryResultSetFlowProvider.makeAllResultsFlow(), 0, 0);
}

uint64_t implicit closure #3 in ReadCallHistoryResultSetFlowProvider.makeAllResultsFlow()()
{
  OUTLINED_FUNCTION_27();
  v1 = *(*(v0 + 24) + 280);
  OUTLINED_FUNCTION_2_0();
  v3 = *(v2 + class metadata base offset for SearchCallHistoryCATsSimple + 568);
  OUTLINED_FUNCTION_24_5();
  v9 = (v4 + *v4);
  v6 = *(v5 + 4);
  v7 = swift_task_alloc();
  *(v0 + 32) = v7;
  *v7 = v0;
  v7[1] = implicit closure #3 in ReadCallHistoryResultSetFlowProvider.makeAllResultsFlow();

  return v9();
}

{
  OUTLINED_FUNCTION_27();
  v3 = v2;
  OUTLINED_FUNCTION_28();
  v5 = v4;
  OUTLINED_FUNCTION_13_1();
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
    v13 = OUTLINED_FUNCTION_9_2();

    return _swift_task_switch(v13, v14, v15);
  }
}

{
  OUTLINED_FUNCTION_27();
  v1 = *(v0 + 40);
  v2 = *(v0 + 16);
  *(v0 + 48) = 1;
  v3 = dispatch thunk of LabelExecutionResult.subscript.getter();
  v5 = v4;

  *v2 = v3;
  v2[1] = v5;
  OUTLINED_FUNCTION_8_1();

  return v6();
}

uint64_t implicit closure #4 in ReadCallHistoryResultSetFlowProvider.makeAllResultsFlow()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return _swift_task_switch(implicit closure #4 in ReadCallHistoryResultSetFlowProvider.makeAllResultsFlow(), 0, 0);
}

uint64_t implicit closure #4 in ReadCallHistoryResultSetFlowProvider.makeAllResultsFlow()()
{
  OUTLINED_FUNCTION_27();
  v1 = *(v0[3] + 288);
  OUTLINED_FUNCTION_2_0();
  v3 = *(v2 + class metadata base offset for PhoneCallDisplayTextCATsSimple + 248);
  OUTLINED_FUNCTION_24_5();
  v10 = (v4 + *v4);
  v6 = *(v5 + 4);
  v7 = swift_task_alloc();
  v0[5] = v7;
  *v7 = v0;
  v7[1] = implicit closure #4 in ReadCallHistoryResultSetFlowProvider.makeAllResultsFlow();
  v8 = v0[4];

  return v10(v8);
}

{
  OUTLINED_FUNCTION_27();
  v3 = v2;
  OUTLINED_FUNCTION_28();
  v5 = v4;
  OUTLINED_FUNCTION_13_1();
  *v6 = v5;
  v8 = *(v7 + 40);
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
    *(v5 + 48) = v3;
    v13 = OUTLINED_FUNCTION_9_2();

    return _swift_task_switch(v13, v14, v15);
  }
}

{
  OUTLINED_FUNCTION_27();
  v1 = *(v0 + 48);
  v2 = *(v0 + 16);
  v3 = dispatch thunk of LabelExecutionResult.subscript.getter();
  v5 = v4;

  *v2 = v3;
  v2[1] = v5;
  OUTLINED_FUNCTION_8_1();

  return v6();
}

uint64_t closure #3 in ReadCallHistoryResultSetFlowProvider.makeAllResultsFlow()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[10] = a4;
  v5[11] = a5;
  v5[8] = a2;
  v5[9] = a3;
  v5[7] = a1;
  v6 = *(*(type metadata accessor for DialogPhase() - 8) + 64) + 15;
  v5[12] = swift_task_alloc();
  v7 = type metadata accessor for OutputGenerationManifest();
  v5[13] = v7;
  v8 = *(v7 - 8);
  v5[14] = v8;
  v9 = *(v8 + 64) + 15;
  v5[15] = swift_task_alloc();

  return _swift_task_switch(closure #3 in ReadCallHistoryResultSetFlowProvider.makeAllResultsFlow(), 0, 0);
}

uint64_t closure #3 in ReadCallHistoryResultSetFlowProvider.makeAllResultsFlow()()
{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_24_1();
  v1 = v0[15];
  v3 = v0[11];
  v2 = v0[12];
  v4 = v0[9];
  v5 = v0[10];
  v6 = v0[8];
  v7 = v6[26];
  __swift_project_boxed_opaque_existential_1(v6 + 22, v6[25]);
  OUTLINED_FUNCTION_88();
  v0[5] = type metadata accessor for PhoneSnippetDataModels();
  v0[6] = lazy protocol witness table accessor for type SingleCallResultFlow and conformance SingleCallResultFlow(&lazy protocol witness table cache variable for type PhoneSnippetDataModels and conformance PhoneSnippetDataModels, 255, type metadata accessor for PhoneSnippetDataModels);
  __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  OUTLINED_FUNCTION_21_36();
  outlined init with copy of SearchCallHistoryModel(v4, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v9 = swift_allocObject();
  v0[16] = v9;
  *(v9 + 16) = xmmword_426260;
  *(v9 + 32) = v5;
  v11 = *v3;
  v10 = v3[1];
  v12 = v5;
  static DialogPhase.completion.getter();
  v13 = swift_task_alloc();
  *(v13 + 16) = v11;
  *(v13 + 24) = v10;
  OutputGenerationManifest.init(dialogPhase:_:)();

  v14 = async function pointer to dispatch thunk of ResponseGenerating.makeResponseOutput(resultModel:dialog:outputGenerationManifest:)[1];
  v15 = swift_task_alloc();
  v0[17] = v15;
  *v15 = v0;
  v15[1] = closure #3 in ReadCallHistoryResultSetFlowProvider.makeAllResultsFlow();
  v16 = v0[15];
  v17 = v0[7];
  OUTLINED_FUNCTION_16();

  return dispatch thunk of ResponseGenerating.makeResponseOutput(resultModel:dialog:outputGenerationManifest:)(v18, v19, v20, v21, v22, v23);
}

{
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_28();
  v2 = v1;
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v5 = v4[17];
  v6 = v4[16];
  v7 = v4[15];
  v8 = v4[14];
  v9 = v4[13];
  v10 = v4[12];
  v11 = *v0;
  OUTLINED_FUNCTION_4_2();
  *v12 = v11;

  v13 = *(v8 + 8);
  v14 = OUTLINED_FUNCTION_92();
  v15(v14);
  __swift_destroy_boxed_opaque_existential_1((v2 + 16));

  OUTLINED_FUNCTION_8_1();

  return v16();
}

uint64_t ReadCallHistoryResultSetFlowProvider.makeWindowingConfiguration(promptType:)()
{
  OUTLINED_FUNCTION_15();
  v1[3] = v2;
  v1[4] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow06PromptC12ProviderTypeVyytSay09PhoneCallC14DelegatePlugin0gH6RecordCGGMd, &_s11SiriKitFlow06PromptC12ProviderTypeVyytSay09PhoneCallC14DelegatePlugin0gH6RecordCGGMR);
  OUTLINED_FUNCTION_21(v3);
  v5 = *(v4 + 64);
  v1[5] = OUTLINED_FUNCTION_45();
  v6 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v6, v7, v8);
}

{
  OUTLINED_FUNCTION_23_0();
  v1 = v0[5];
  v2 = v0[3];
  v0[2] = v0[4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay27PhoneCallFlowDelegatePlugin0aB6RecordCGMd, &_sSay27PhoneCallFlowDelegatePlugin0aB6RecordCGMR);
  type metadata accessor for ReadCallHistoryResultSetFlowProvider();
  lazy protocol witness table accessor for type SingleCallResultFlow and conformance SingleCallResultFlow(&lazy protocol witness table cache variable for type ReadCallHistoryResultSetFlowProvider and conformance ReadCallHistoryResultSetFlowProvider, v3, type metadata accessor for ReadCallHistoryResultSetFlowProvider);
  OUTLINED_FUNCTION_92();
  static PromptFlowProviderType.continuation<A>(_:)();
  WindowingConfiguration.init(promptFlowProviderType:padding:windowSizeOverride:)();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow22WindowingConfigurationVyytSay09PhoneCallC14DelegatePlugin0fG6RecordCGGMd, &_s11SiriKitFlow22WindowingConfigurationVyytSay09PhoneCallC14DelegatePlugin0fG6RecordCGGMR);
  __swift_storeEnumTagSinglePayload(v2, 0, 1, v4);

  OUTLINED_FUNCTION_8_1();

  return v5();
}

uint64_t ReadCallHistoryResultSetFlowProvider.makeWindowFlow(paginationParameters:windowContent:)()
{
  OUTLINED_FUNCTION_15();
  v1[38] = v2;
  v1[39] = v0;
  v1[37] = v3;
  v4 = type metadata accessor for WindowedPaginationParameters();
  v1[40] = v4;
  OUTLINED_FUNCTION_13_2(v4);
  v1[41] = v5;
  v7 = *(v6 + 64);
  v1[42] = OUTLINED_FUNCTION_45();
  v8 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v8, v9, v10);
}

uint64_t ReadCallHistoryResultSetFlowProvider.makeFinalWindowFlow(paginationParameters:windowContent:)()
{
  OUTLINED_FUNCTION_15();
  v1[45] = v2;
  v1[46] = v0;
  v1[44] = v3;
  v4 = type metadata accessor for WindowedPaginationParameters();
  v1[47] = v4;
  OUTLINED_FUNCTION_13_2(v4);
  v1[48] = v5;
  v7 = *(v6 + 64);
  v1[49] = OUTLINED_FUNCTION_45();
  v8 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v8, v9, v10);
}

{
  OUTLINED_FUNCTION_27();
  v3 = v2;
  v4 = *v1;
  v5 = *(*v1 + 400);
  v6 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v7 = v6;

  v8 = *(v4 + 392);

  v10 = *(v6 + 8);
  if (!v0)
  {
    v9 = v3;
  }

  return v10(v9);
}

uint64_t ReadCallHistoryResultSetFlowProvider.deinit()
{
  v1 = *(v0 + 16);

  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  v2 = *(v0 + 80);

  v3 = *(v0 + 88);

  outlined destroy of SearchCallHistorySharedGlobals(v0 + 96);
  v4 = *(v0 + 304);
  v5 = *(v0 + 320);

  return v0;
}

uint64_t ReadCallHistoryResultSetFlowProvider.__deallocating_deinit()
{
  ReadCallHistoryResultSetFlowProvider.deinit();

  return swift_deallocClassInstance();
}

uint64_t protocol witness for ResultSetFlowProvider.makeNarrowingPromptFlowIfNeeded() in conformance ReadCallHistoryResultSetFlowProvider()
{
  v1 = ResultSetFlowProvider.makeNarrowingPromptFlowIfNeeded()();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t protocol witness for ResultSetFlowProvider.makeEmptyResultSetFlow() in conformance ReadCallHistoryResultSetFlowProvider()
{
  v2 = *(**v0 + 248);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = AddCallParticipantCATs.unsupportedParticipantsMultipleContactsUnsupported();

  return v6();
}

uint64_t protocol witness for ResultSetFlowProvider.makeSingleItemFlow() in conformance ReadCallHistoryResultSetFlowProvider()
{
  v2 = *(**v0 + 240);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = AddCallParticipantCATs.unsupportedParticipantsMultipleContactsUnsupported();

  return v6();
}

uint64_t protocol witness for ResultSetFlowProvider.makeAllResultsFlow() in conformance ReadCallHistoryResultSetFlowProvider()
{
  v2 = *(**v0 + 256);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = AddCallParticipantCATs.unsupportedParticipantsMultipleContactsUnsupported();

  return v6();
}

uint64_t protocol witness for ResultSetFlowProvider.makeWindowingConfiguration(promptType:) in conformance ReadCallHistoryResultSetFlowProvider(uint64_t a1, uint64_t a2)
{
  v6 = *(**v2 + 264);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = closure #2 in ActionableCallControlFlow.execute();

  return v10(a1, a2);
}

uint64_t protocol witness for ContinuationPromptFlowProvider.makeFinalWindowFlow(paginationParameters:windowContent:) in conformance ReadCallHistoryResultSetFlowProvider(uint64_t a1, uint64_t *a2)
{
  v5 = *a2;
  v6 = *(**v2 + 280);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = AddCallParticipantCATs.errorNoTargetCall();

  return v10(a1, v5);
}

uint64_t protocol witness for WindowingFlowProvider.makeWindowFlow(paginationParameters:windowContent:) in conformance ReadCallHistoryResultSetFlowProvider(uint64_t a1, uint64_t *a2)
{
  v5 = *a2;
  v6 = *(**v2 + 272);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = AddCallParticipantCATs.unsupportedParticipantsMultipleContactsUnsupported();

  return v10(a1, v5);
}

uint64_t partial apply for closure #2 in ReadCallHistoryResultSetFlowProvider.makeEmptyResultSetFlow()()
{
  OUTLINED_FUNCTION_27();
  v2 = v1;
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_18(v5);
  *v6 = v7;
  v6[1] = closure #1 in ActionableCallControlFlow.execute();

  return closure #2 in ReadCallHistoryResultSetFlowProvider.makeEmptyResultSetFlow()(v2, v4, v3);
}

uint64_t partial apply for implicit closure #3 in ReadCallHistoryResultSetFlowProvider.makeAllResultsFlow()()
{
  OUTLINED_FUNCTION_15();
  v2 = v1;
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_18(v3);
  *v4 = v5;
  v4[1] = closure #1 in ActionableCallControlFlow.execute();

  return implicit closure #3 in ReadCallHistoryResultSetFlowProvider.makeAllResultsFlow()(v2, v0);
}

uint64_t partial apply for implicit closure #4 in ReadCallHistoryResultSetFlowProvider.makeAllResultsFlow()()
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

  return implicit closure #4 in ReadCallHistoryResultSetFlowProvider.makeAllResultsFlow()(v2, v6, v0 + v5);
}

uint64_t outlined init with copy of SearchCallHistoryModel(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_88();
  v6 = v5(v4);
  OUTLINED_FUNCTION_23_1(v6);
  (*(v7 + 16))(a2, v2);
  return a2;
}

{
  v4 = type metadata accessor for SearchCallHistoryModel();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of PhoneSnippetDataModels(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_88();
  v6 = v5(v4);
  OUTLINED_FUNCTION_23_1(v6);
  (*(v7 + 32))(a2, v2);
  return a2;
}

uint64_t partial apply for closure #3 in ReadCallHistoryResultSetFlowProvider.makeAllResultsFlow()()
{
  OUTLINED_FUNCTION_23_0();
  v2 = v1;
  v4 = v3;
  v5 = type metadata accessor for PhoneSnippetDataModels();
  OUTLINED_FUNCTION_13_2(v5);
  v7 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v9 = (*(v8 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = type metadata accessor for SearchCallHistoryModel();
  OUTLINED_FUNCTION_21(v10);
  v12 = (v9 + *(v11 + 80) + 8) & ~*(v11 + 80);
  v13 = *(v0 + 16);
  v14 = *(v0 + v9);
  v15 = swift_task_alloc();
  *(v2 + 16) = v15;
  *v15 = v2;
  v15[1] = closure #2 in ActionableCallControlFlow.execute();

  return closure #3 in ReadCallHistoryResultSetFlowProvider.makeAllResultsFlow()(v4, v13, v0 + v7, v14, v0 + v12);
}

uint64_t _s27PhoneCallFlowDelegatePlugin0A5ErrorOWOhTm_8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_23_5(v3);
  (*(v4 + 8))(a1);
  return a1;
}

unint64_t lazy protocol witness table accessor for type PromptForConfirmationFlowAsync<(), SimpleConfirmationResponseProvider> and conformance PromptForConfirmationFlowAsync<A, B>()
{
  result = lazy protocol witness table cache variable for type PromptForConfirmationFlowAsync<(), SimpleConfirmationResponseProvider> and conformance PromptForConfirmationFlowAsync<A, B>;
  if (!lazy protocol witness table cache variable for type PromptForConfirmationFlowAsync<(), SimpleConfirmationResponseProvider> and conformance PromptForConfirmationFlowAsync<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s11SiriKitFlow021PromptForConfirmationC5AsyncCyytAA06SimpleF16ResponseProviderVGMd, &_s11SiriKitFlow021PromptForConfirmationC5AsyncCyytAA06SimpleF16ResponseProviderVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptForConfirmationFlowAsync<(), SimpleConfirmationResponseProvider> and conformance PromptForConfirmationFlowAsync<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type SingleCallResultFlow and conformance SingleCallResultFlow(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_59_12(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(v1, 1, a1);
}

uint64_t key path setter for ReadCallRecordAction.nextAction : ReadCallRecordAction(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 136);
  v5 = swift_unknownObjectRetain();
  return v4(v5, v3);
}

uint64_t ReadCallRecordAction.paginatedCallRecord.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin20ReadCallRecordAction_paginatedCallRecord;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow13PaginatedItemVySo12INCallRecordCGMd, &_s11SiriKitFlow13PaginatedItemVySo12INCallRecordCGMR);
  v5 = OUTLINED_FUNCTION_23_1(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t ReadCallRecordAction.__allocating_init(paginatedCallRecord:intent:aceServiceInvoker:searchCallHistoryCatFamily:)()
{
  OUTLINED_FUNCTION_7_8();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  ReadCallRecordAction.init(paginatedCallRecord:intent:aceServiceInvoker:searchCallHistoryCatFamily:)();
  return v3;
}

char *ReadCallRecordAction.init(paginatedCallRecord:intent:aceServiceInvoker:searchCallHistoryCatFamily:)()
{
  OUTLINED_FUNCTION_7_8();
  *(v1 + 2) = 0;
  *(v1 + 3) = 0;
  *(v1 + 4) = 0xD000000000000014;
  *(v1 + 5) = 0x8000000000442C60;
  v5 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin20ReadCallRecordAction_paginatedCallRecord;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow13PaginatedItemVySo12INCallRecordCGMd, &_s11SiriKitFlow13PaginatedItemVySo12INCallRecordCGMR);
  OUTLINED_FUNCTION_23_1(v6);
  (*(v7 + 32))(&v1[v5], v4);
  *&v1[OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin20ReadCallRecordAction_intent] = v3;
  outlined init with take of SPHConversation(v2, &v1[OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin20ReadCallRecordAction_aceServiceInvoker]);
  *&v1[OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin20ReadCallRecordAction_searchCallHistoryCatFamily] = v0;
  return v1;
}

uint64_t ReadCallRecordAction.run(_:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  v5[2] = a1;
  v5[3] = a2;
  v5[4] = v2;
  v6 = *(*v2 + 168);

  v6(partial apply for closure #1 in ReadCallRecordAction.run(_:), v5);
}

uint64_t closure #1 in ReadCallRecordAction.run(_:)(uint64_t a1, char a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    return a3(a1);
  }

  v8 = *(a5 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin20ReadCallRecordAction_aceServiceInvoker + 32);
  __swift_project_boxed_opaque_existential_1((a5 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin20ReadCallRecordAction_aceServiceInvoker), *(a5 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin20ReadCallRecordAction_aceServiceInvoker + 24));
  v9 = swift_allocObject();
  *(v9 + 16) = a3;
  *(v9 + 24) = a4;
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SABaseCommand, SABaseCommand_ptr);

  dispatch thunk of AceServiceInvoker.submit<A>(_:completion:)();
}

uint64_t closure #1 in closure #1 in ReadCallRecordAction.run(_:)(uint64_t a1, void (*a2)(uint64_t))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOySo13SABaseCommandC11SiriKitFlow06SubmitC5ErrorOGMd, &_ss6ResultOySo13SABaseCommandC11SiriKitFlow06SubmitC5ErrorOGMR);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = &v16 - v6;
  v8 = type metadata accessor for SubmitCommandError();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PhoneCallFlowState<INHangUpCallIntent, INHangUpCallIntentResponse>(a1, v7, &_ss6ResultOySo13SABaseCommandC11SiriKitFlow06SubmitC5ErrorOGMd, &_ss6ResultOySo13SABaseCommandC11SiriKitFlow06SubmitC5ErrorOGMR);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v9 + 32))(v12, v7, v8);
    lazy protocol witness table accessor for type ReadCallRecordAction and conformance ReadCallRecordAction(&lazy protocol witness table cache variable for type SubmitCommandError and conformance SubmitCommandError, &type metadata accessor for SubmitCommandError);
    v13 = swift_allocError();
    (*(v9 + 16))(v14, v12, v8);
    a2(v13);

    return (*(v9 + 8))(v12, v8);
  }

  else
  {
    outlined destroy of Result<SABaseCommand, SubmitCommandError>(v7);
    return (a2)(0);
  }
}

uint64_t ReadCallRecordAction.makeSummaryView(_:)(uint64_t a1, uint64_t a2)
{
  v23 = a1;
  v24 = a2;
  v21 = type metadata accessor for Locale();
  v3 = *(v21 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v21);
  v6 = (&v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = *(v2 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin20ReadCallRecordAction_searchCallHistoryCatFamily);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow13PaginatedItemVySo12INCallRecordCGMd, &_s11SiriKitFlow13PaginatedItemVySo12INCallRecordCGMR);
  PaginatedItem.item.getter();
  v7 = v25[5];
  type metadata accessor for AppInfoBuilder();
  v8 = swift_allocObject();
  static Device.current.getter();
  __swift_project_boxed_opaque_existential_1(v25, v25[3]);
  dispatch thunk of DeviceState.siriLocale.getter();
  __swift_destroy_boxed_opaque_existential_1(v25);
  v9 = _s27PhoneCallFlowDelegatePlugin0aB6RecordC10getBuilder04callF07options07appInfoH06localeAC0H0CSo06INCallF0C_AC7OptionsVAA03AppL8Building_p10Foundation6LocaleVtFZTf4nnenn_nAA0plH0C_Tt3g5(v7, 0, v8, v6);
  v10 = type metadata accessor for PhoneCallRecord(0);
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  v13 = PhoneCallRecord.init(builder:)(v9);

  (*(v3 + 8))(v6, v21);
  ItemIn = PaginatedItem.isLastItemInPage.getter();
  type metadata accessor for PhoneSearchCallHistoryIntent(0);
  v15 = PhoneSearchCallHistoryIntent.__allocating_init(intent:)(*(v2 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin20ReadCallRecordAction_intent));
  INSearchCallHistoryIntent.isSingleDateRequest.getter();
  LOBYTE(v8) = v16;
  LOBYTE(v9) = INSearchCallHistoryIntent.isTimeRangeRequest.getter();
  v17 = swift_allocObject();
  v18 = v22;
  *(v17 + 16) = v23;
  *(v17 + 24) = v24;
  v19 = *(*v18 + class metadata base offset for SearchCallHistoryCATs + 544);

  v19(v13, ItemIn & 1, v15, v8 & 1, v9 & 1, partial apply for closure #1 in ReadCallRecordAction.makeSummaryView(_:), v17);
}

uint64_t closure #1 in ReadCallRecordAction.makeSummaryView(_:)(uint64_t a1, void (*a2)(uint64_t, uint64_t))
{
  v4 = type metadata accessor for TemplatingResult();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = (&v19 - v11);
  outlined init with copy of PhoneCallFlowState<INHangUpCallIntent, INHangUpCallIntentResponse>(a1, &v19 - v11, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = *v12;
    swift_errorRetain();
    a2(v13, 1);
  }

  else
  {
    (*(v5 + 32))(v8, v12, v4);
    v15 = type metadata accessor for ViewFactory();
    v16 = *(v15 + 48);
    v17 = *(v15 + 52);
    swift_allocObject();
    ViewFactory.init(ttsEnabled:)();
    v18 = dispatch thunk of ViewFactory.makeSummaryView(templateResult:snippets:listenAfterSpeaking:canUseServerTTS:)();

    a2(v18, 0);

    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t ReadCallRecordAction.deinit()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  v3 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin20ReadCallRecordAction_paginatedCallRecord;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow13PaginatedItemVySo12INCallRecordCGMd, &_s11SiriKitFlow13PaginatedItemVySo12INCallRecordCGMR);
  OUTLINED_FUNCTION_23_1(v4);
  (*(v5 + 8))(v0 + v3);

  v6 = *(v0 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin20ReadCallRecordAction_searchCallHistoryCatFamily);

  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin20ReadCallRecordAction_aceServiceInvoker));
  return v0;
}

uint64_t ReadCallRecordAction.__deallocating_deinit()
{
  ReadCallRecordAction.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void (*protocol witness for StaticAction.nextAction.modify in conformance ReadCallRecordAction(void *a1))(void *a1)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = (*(*v1 + 144))();
  return protocol witness for SiriEnvironmentLocating.siriEnvironment.modify in conformance BusinessCompositionFlow;
}

uint64_t type metadata accessor for ReadCallRecordAction()
{
  result = type metadata singleton initialization cache for ReadCallRecordAction;
  if (!type metadata singleton initialization cache for ReadCallRecordAction)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for ReadCallRecordAction()
{
  type metadata accessor for PaginatedItem<INCallRecord>();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void type metadata accessor for PaginatedItem<INCallRecord>()
{
  if (!lazy cache variable for type metadata for PaginatedItem<INCallRecord>)
  {
    type metadata accessor for CNContactStore(255, &lazy cache variable for type metadata for INCallRecord, INCallRecord_ptr);
    v0 = type metadata accessor for PaginatedItem();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for PaginatedItem<INCallRecord>);
    }
  }
}

uint64_t outlined destroy of Result<SABaseCommand, SubmitCommandError>(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOySo13SABaseCommandC11SiriKitFlow06SubmitC5ErrorOGMd, &_ss6ResultOySo13SABaseCommandC11SiriKitFlow06SubmitC5ErrorOGMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t lazy protocol witness table accessor for type ReadCallRecordAction and conformance ReadCallRecordAction(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _s27PhoneCallFlowDelegatePlugin0aB17NLContextProviderC019makeSDAForOfferReadB19HistoryConfirmation33_3C2ABB69DDB872D121E37A32A4E694A9LLSay12SiriNLUTypes0W29_Nlu_External_SystemDialogActVGSgyFZSo08INSearchbL6IntentC_So08INSearchbL14IntentResponseCTtg5()
{
  v94 = type metadata accessor for PhoneError();
  v0 = OUTLINED_FUNCTION_23_1(v94);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  OUTLINED_FUNCTION_16_2();
  v93 = v3;
  __chkstk_darwin(v4);
  v92 = (v85 - v5);
  v6 = type metadata accessor for Siri_Nlu_External_SystemDialogAct();
  v7 = OUTLINED_FUNCTION_7(v6);
  v95 = v8;
  v96 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v7);
  OUTLINED_FUNCTION_16_2();
  OUTLINED_FUNCTION_9_3();
  __chkstk_darwin(v11);
  v13 = v85 - v12;
  v14 = type metadata accessor for Siri_Nlu_External_SystemOffered();
  v15 = OUTLINED_FUNCTION_7(v14);
  v97 = v16;
  v98 = v15;
  v18 = *(v17 + 64);
  __chkstk_darwin(v15);
  OUTLINED_FUNCTION_16_2();
  OUTLINED_FUNCTION_9_3();
  __chkstk_darwin(v19);
  v99 = v85 - v20;
  v87 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v21 = OUTLINED_FUNCTION_7(v87);
  v86 = v22;
  v24 = *(v23 + 64);
  __chkstk_darwin(v21);
  OUTLINED_FUNCTION_16_2();
  OUTLINED_FUNCTION_9_3();
  __chkstk_darwin(v25);
  v27 = v85 - v26;
  v28 = type metadata accessor for Siri_Nlu_External_UsoGraph();
  v29 = OUTLINED_FUNCTION_21(v28);
  v31 = *(v30 + 64);
  __chkstk_darwin(v29);
  v32 = type metadata accessor for Siri_Nlu_External_UserWantedToProceed();
  v33 = OUTLINED_FUNCTION_7(v32);
  v35 = v34;
  v37 = *(v36 + 64);
  __chkstk_darwin(v33);
  v39 = v85 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v40);
  v42 = v85 - v41;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology17UsoBuilderOptionsVSgMd, &_s12SiriOntology17UsoBuilderOptionsVSgMR);
  v44 = OUTLINED_FUNCTION_21(v43);
  v46 = *(v45 + 64);
  __chkstk_darwin(v44);
  v48 = v85 - v47;
  v49 = type metadata accessor for UsoTaskBuilder_summarise_common_PhoneCall();
  v50 = *(v49 + 48);
  v51 = *(v49 + 52);
  swift_allocObject();
  v52 = UsoTaskBuilder_summarise_common_PhoneCall.init()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v53 = OUTLINED_FUNCTION_48_0();
  *(v53 + 16) = xmmword_426260;
  *(v53 + 32) = v52;
  v54 = type metadata accessor for UsoBuilderOptions();
  __swift_storeEnumTagSinglePayload(v48, 1, 1, v54);
  v90 = v52;

  v55 = static UsoGraphBuilder.buildGraphWithOptions(taskBuilders:options:)();

  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v48, &_s12SiriOntology17UsoBuilderOptionsVSgMd, &_s12SiriOntology17UsoBuilderOptionsVSgMR);
  Siri_Nlu_External_UserWantedToProceed.init()();
  static UsoGraphProtoWriter.toSwiftProtobuf(graph:vocabManager:)();
  v89 = v55;
  Siri_Nlu_External_UserWantedToProceed.reference.setter();
  Siri_Nlu_External_UserDialogAct.init()();
  v91 = v42;
  v92 = v35;
  v56 = v35[2];
  v93 = v32;
  (v56)(v39, v42, v32);
  Siri_Nlu_External_UserDialogAct.wantedToProceed.setter();
  Siri_Nlu_External_SystemOffered.init()();
  v57 = v86;
  v58 = *(v86 + 16);
  v94 = v27;
  v59 = v87;
  v58(v85[1], v27, v87);
  Siri_Nlu_External_SystemOffered.offeredAct.setter();
  Siri_Nlu_External_SystemDialogAct.init()();
  v61 = v97;
  v60 = v98;
  v62 = *(v97 + 16);
  v63 = OUTLINED_FUNCTION_19_0();
  v64(v63);
  Siri_Nlu_External_SystemDialogAct.offered.setter();
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

  v65 = type metadata accessor for Logger();
  __swift_project_value_buffer(v65, static Logger.siriPhone);
  v66 = Logger.logObject.getter();
  v67 = static os_log_type_t.debug.getter();
  v68 = os_log_type_enabled(v66, v67);
  v69 = v95;
  v70 = v96;
  if (v68)
  {
    v71 = OUTLINED_FUNCTION_42();
    v88 = swift_slowAlloc();
    v100 = v88;
    *v71 = 136315138;
    swift_beginAccess();
    v72 = v85[0];
    (*(v69 + 16))(v85[0], v13, v70);
    v73 = _sSS27PhoneCallFlowDelegatePluginE10describingSS21InternalSwiftProtobuf7Message_p_tcfCTf4en_n12SiriNLUTypes0K29_Nlu_External_SystemDialogActV_Tt0g5(v72);
    v75 = v57;
    v76 = v13;
    v77 = v70;
    v78 = v59;
    v79 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v73, v74, &v100);

    *(v71 + 4) = v79;
    v59 = v78;
    v70 = v77;
    v13 = v76;
    v57 = v75;
    _os_log_impl(&dword_0, v66, v67, "#PhoneCallNLContextProvider Returning SystemOffered for offer read record confirmation: %s", v71, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v88);
    v61 = v97;
    OUTLINED_FUNCTION_26_0();
    v60 = v98;
    OUTLINED_FUNCTION_26_0();
  }

  v80 = v94;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D29_Nlu_External_SystemDialogActVGMd, &_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D29_Nlu_External_SystemDialogActVGMR);
  v81 = *(v69 + 72);
  v82 = (*(v69 + 80) + 32) & ~*(v69 + 80);
  v83 = swift_allocObject();
  *(v83 + 16) = xmmword_424FD0;
  swift_beginAccess();
  (*(v69 + 16))(v83 + v82, v13, v70);

  (*(v61 + 8))(v99, v60);
  (*(v57 + 8))(v80, v59);
  v92[1](v91, v93);
  (*(v69 + 8))(v13, v70);
  return v83;
}

uint64_t ReadCallRecordsYesNoPromptFlowStrategy.__allocating_init(app:intent:intentResponse:phoneSearchCallHistoryIntent:sharedGlobals:windowItems:windowParam:isMissedCall:searchCallHistorySharedGlobals:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, uint64_t a9)
{
  v18 = *(v9 + 48);
  v19 = *(v9 + 52);
  v20 = swift_allocObject();
  ReadCallRecordsYesNoPromptFlowStrategy.init(app:intent:intentResponse:phoneSearchCallHistoryIntent:sharedGlobals:windowItems:windowParam:isMissedCall:searchCallHistorySharedGlobals:)(a1, a2, a3, a4, a5, a6, a7, a8, a9);
  return v20;
}

uint64_t ReadCallRecordsYesNoPromptFlowStrategy.init(app:intent:intentResponse:phoneSearchCallHistoryIntent:sharedGlobals:windowItems:windowParam:isMissedCall:searchCallHistorySharedGlobals:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, uint64_t a9)
{
  v17 = (v9 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin38ReadCallRecordsYesNoPromptFlowStrategy_logPrefix);
  *v17 = type metadata accessor for ReadCallRecordsYesNoPromptFlowStrategy();
  v17[1] = &outlined read-only object #0 of ReadCallRecordsYesNoPromptFlowStrategy.init(app:intent:intentResponse:phoneSearchCallHistoryIntent:sharedGlobals:windowItems:windowParam:isMissedCall:searchCallHistorySharedGlobals:);
  v17[2] = 0;
  v17[3] = 0;
  *(v9 + 144) = a1;
  *(v9 + 152) = a8;
  *(v9 + 24) = a2;
  *(v9 + 32) = a3;
  *(v9 + 160) = a4;
  outlined init with copy of SignalProviding(a5, v9 + 104);
  *(v9 + 16) = a6;
  type metadata accessor for YesNoConfirmationParser();
  v18 = swift_allocObject();
  *(v18 + 16) = 5;
  outlined init with take of PhoneCallFeatureFlagProviding(a5, v18 + 24);
  *(v9 + 96) = v18;
  outlined init with copy of SearchCallHistorySharedGlobals(a9, v9 + 168);
  v19 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin38ReadCallRecordsYesNoPromptFlowStrategy_windowParam;
  v20 = type metadata accessor for WindowedPaginationParameters();
  OUTLINED_FUNCTION_23_1(v20);
  (*(v21 + 32))(v9 + v19, a7);
  outlined init with copy of SignalProviding(a9, v9 + 40);
  v22 = *(a9 + 192);
  *(v9 + 80) = *(a9 + 184);

  outlined destroy of SearchCallHistorySharedGlobals(a9);
  *(v9 + 88) = v22;
  return v9;
}

uint64_t type metadata accessor for ReadCallRecordsYesNoPromptFlowStrategy()
{
  result = type metadata singleton initialization cache for ReadCallRecordsYesNoPromptFlowStrategy;
  if (!type metadata singleton initialization cache for ReadCallRecordsYesNoPromptFlowStrategy)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ReadCallRecordsYesNoPromptFlowStrategy.actionForInput(_:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow20ConfirmationResponseOSgMd, &_s11SiriKitFlow20ConfirmationResponseOSgMR);
  v4 = OUTLINED_FUNCTION_21(v3);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v13 - v7;
  v9 = *(v1 + 96);
  OUTLINED_FUNCTION_2_0();
  (*(v10 + 128))(a1);
  v11 = type metadata accessor for ConfirmationResponse();
  LODWORD(v9) = __swift_getEnumTagSinglePayload(v8, 1, v11);
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v8, &_s11SiriKitFlow20ConfirmationResponseOSgMd, &_s11SiriKitFlow20ConfirmationResponseOSgMR);
  if (v9 == 1)
  {
    return static ActionForInput.ignore()();
  }

  else
  {
    return static ActionForInput.handle()();
  }
}

uint64_t ReadCallRecordsYesNoPromptFlowStrategy.makePromptForConfirmation(itemToConfirm:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_1(ReadCallRecordsYesNoPromptFlowStrategy.makePromptForConfirmation(itemToConfirm:));
}

uint64_t ReadCallRecordsYesNoPromptFlowStrategy.makePromptForConfirmation(itemToConfirm:)()
{
  OUTLINED_FUNCTION_24_1();
  v22 = v0;
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

  v1 = v0[3];
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.siriPhone);
  OUTLINED_FUNCTION_11_0();

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[3];
    OUTLINED_FUNCTION_42();
    v19 = OUTLINED_FUNCTION_83();
    v20 = 0;
    *v1 = 136315138;
    v6 = OUTLINED_FUNCTION_23_2(OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin38ReadCallRecordsYesNoPromptFlowStrategy_logPrefix);
    v21 = v7;
    DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v6, v8, v9, v10);
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v21, &v19);

    *(v1 + 4) = v11;
    OUTLINED_FUNCTION_12(&dword_0, v12, v13, "%s makePromptForConfirmation");
    OUTLINED_FUNCTION_3_7();
    OUTLINED_FUNCTION_26_0();
  }

  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[4] = v14;
  *v14 = v15;
  v14[1] = DialogOutputFactory.makeOutput();
  v16 = v0[2];
  v17 = v0[3];

  return ReadCallRecordsYesNoPromptFlowStrategy.executePatternAndManifest()();
}

uint64_t ReadCallRecordsYesNoPromptFlowStrategy.makeConfirmationRejectedResponse()()
{
  OUTLINED_FUNCTION_15();
  v1[7] = v2;
  v1[8] = v0;
  v3 = type metadata accessor for DialogPhase();
  OUTLINED_FUNCTION_21(v3);
  v5 = *(v4 + 64);
  v1[9] = OUTLINED_FUNCTION_45();
  v6 = type metadata accessor for CATOption();
  OUTLINED_FUNCTION_21(v6);
  v8 = *(v7 + 64);
  v1[10] = OUTLINED_FUNCTION_45();
  v9 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v9, v10, v11);
}

{
  OUTLINED_FUNCTION_39_4();
  v31 = v0;
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

  v1 = v0[8];
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.siriPhone);
  OUTLINED_FUNCTION_11_0();

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[8];
    OUTLINED_FUNCTION_42();
    v28 = OUTLINED_FUNCTION_83();
    v29 = 0;
    *v1 = 136315138;
    v6 = OUTLINED_FUNCTION_23_2(OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin38ReadCallRecordsYesNoPromptFlowStrategy_logPrefix);
    v30 = v7;
    DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v6, v8, v9, v10);
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v30, &v28);

    *(v1 + 4) = v11;
    OUTLINED_FUNCTION_12(&dword_0, v12, v13, "%s makeConfirmationRejectedResponse");
    OUTLINED_FUNCTION_3_7();
    OUTLINED_FUNCTION_26_0();
  }

  v14 = v0[9];
  v15 = v0[10];
  v16 = v0[8];
  type metadata accessor for PhoneCallCommonCATsSimple();
  static CATOption.defaultMode.getter();
  CATWrapperSimple.__allocating_init(options:globals:)();
  static DialogPhase.canceled.getter();
  outlined init with copy of SignalProviding(v16 + 104, (v0 + 2));
  v17 = type metadata accessor for DialogOutputFactory();
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  swift_allocObject();
  v20 = DialogOutputFactory.init(dialog:dialogPhase:sharedGlobals:)();
  v0[11] = v20;
  v21 = *(*v20 + 136);
  v27 = (v21 + *v21);
  v22 = v21[1];
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[12] = v23;
  *v23 = v24;
  v23[1] = ReadCallRecordsYesNoPromptFlowStrategy.makeConfirmationRejectedResponse();
  v25 = v0[7];

  return v27(v25);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  v3 = v2;
  OUTLINED_FUNCTION_6();
  *v4 = v3;
  v6 = *(v5 + 96);
  v7 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v8 = v7;
  v3[13] = v0;

  if (v0)
  {

    return _swift_task_switch(CallingIntentConfirmationFlowStrategy.makeConfirmationRejectedResponse(app:intent:parameter:), 0, 0);
  }

  else
  {
    v10 = v3[10];
    v9 = v3[11];
    v11 = v3[9];

    OUTLINED_FUNCTION_8_1();

    return v12();
  }
}

uint64_t ReadCallRecordsYesNoPromptFlowStrategy.makePromptForYesNoResponse()(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_1(ReadCallRecordsYesNoPromptFlowStrategy.makePromptForYesNoResponse());
}

uint64_t ReadCallRecordsYesNoPromptFlowStrategy.makePromptForYesNoResponse()()
{
  OUTLINED_FUNCTION_24_1();
  v22 = v0;
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

  v1 = v0[3];
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.siriPhone);
  OUTLINED_FUNCTION_11_0();

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[3];
    OUTLINED_FUNCTION_42();
    v19 = OUTLINED_FUNCTION_83();
    v20 = 0;
    *v1 = 136315138;
    v6 = OUTLINED_FUNCTION_23_2(OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin38ReadCallRecordsYesNoPromptFlowStrategy_logPrefix);
    v21 = v7;
    DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v6, v8, v9, v10);
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v21, &v19);

    *(v1 + 4) = v11;
    OUTLINED_FUNCTION_12(&dword_0, v12, v13, "%s makePromptForYesNoResponse");
    OUTLINED_FUNCTION_3_7();
    OUTLINED_FUNCTION_26_0();
  }

  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[4] = v14;
  *v14 = v15;
  v14[1] = ReadCallRecordsYesNoPromptFlowStrategy.makePromptForYesNoResponse();
  v16 = v0[2];
  v17 = v0[3];

  return ReadCallRecordsYesNoPromptFlowStrategy.executePatternAndManifest()();
}

uint64_t ReadCallRecordsYesNoPromptFlowStrategy.parseConfirmationResponse(input:)()
{
  OUTLINED_FUNCTION_15();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = type metadata accessor for PhoneError();
  v1[5] = v4;
  OUTLINED_FUNCTION_21(v4);
  v6 = *(v5 + 64);
  v1[6] = OUTLINED_FUNCTION_45();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow20ConfirmationResponseOSgMd, &_s11SiriKitFlow20ConfirmationResponseOSgMR);
  OUTLINED_FUNCTION_21(v7);
  v9 = *(v8 + 64) + 15;
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v10, v11, v12);
}

{
  OUTLINED_FUNCTION_24_1();
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[3];
  v4 = *(v0[4] + 96);
  OUTLINED_FUNCTION_2_0();
  (*(v5 + 128))();
  _s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgWOcTm_0(v1, v2, &_s11SiriKitFlow20ConfirmationResponseOSgMd, &_s11SiriKitFlow20ConfirmationResponseOSgMR);
  v6 = type metadata accessor for ConfirmationResponse();
  if (__swift_getEnumTagSinglePayload(v2, 1, v6) != 1)
  {
    _s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgWOcTm_0(v0[9], v0[8], &_s11SiriKitFlow20ConfirmationResponseOSgMd, &_s11SiriKitFlow20ConfirmationResponseOSgMR);
    v7 = *(v6 - 8);
    v8 = *(v7 + 88);
    v9 = OUTLINED_FUNCTION_19_0();
    v11 = v10(v9);
    if (v11 == enum case for ConfirmationResponse.confirmed(_:) || v11 == enum case for ConfirmationResponse.rejected(_:))
    {
      v14 = v0[9];
      v13 = v0[10];
      v15 = v0[7];
      v16 = v0[6];
      v17 = v0[2];
      (*(v7 + 104))(v15, v11, v6);
      __swift_storeEnumTagSinglePayload(v15, 0, 1, v6);
      SimpleConfirmationResponseProvider.init(_:)();
      v18 = OUTLINED_FUNCTION_19_0();
      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v18, v19, &_s11SiriKitFlow20ConfirmationResponseOSgMR);
      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v14, &_s11SiriKitFlow20ConfirmationResponseOSgMd, &_s11SiriKitFlow20ConfirmationResponseOSgMR);

      OUTLINED_FUNCTION_8_1();
      goto LABEL_9;
    }

    (*(v7 + 8))(v0[8], v6);
  }

  v21 = v0[9];
  v22 = v0[10];
  v23 = v0[7];
  v24 = v0[8];
  v26 = v0[5];
  v25 = v0[6];
  *v25 = 0;
  *(v25 + 8) = 0;
  *(v25 + 16) = 2;
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_25_31();
  _s27PhoneCallFlowDelegatePlugin0A5ErrorOACs0F0AAWlTm_9(v27, v28);
  swift_allocError();
  PhoneError.logged()(v29);
  _s27PhoneCallFlowDelegatePlugin0A5ErrorOWOhTm_9(v25, type metadata accessor for PhoneError);
  swift_willThrow();
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v22, &_s11SiriKitFlow20ConfirmationResponseOSgMd, &_s11SiriKitFlow20ConfirmationResponseOSgMR);
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v21, &_s11SiriKitFlow20ConfirmationResponseOSgMd, &_s11SiriKitFlow20ConfirmationResponseOSgMR);

  OUTLINED_FUNCTION_11();
LABEL_9:

  return v20();
}

uint64_t ReadCallRecordsYesNoPromptFlowStrategy.executePatternAndManifest()()
{
  OUTLINED_FUNCTION_15();
  v1[471] = v0;
  v1[465] = v2;
  v3 = type metadata accessor for PhoneSnippetDataModels();
  v1[477] = v3;
  OUTLINED_FUNCTION_21(v3);
  v5 = *(v4 + 64);
  v1[483] = OUTLINED_FUNCTION_45();
  v6 = type metadata accessor for SearchCallHistoryModel();
  v1[489] = v6;
  OUTLINED_FUNCTION_21(v6);
  v8 = *(v7 + 64);
  v1[495] = OUTLINED_FUNCTION_45();
  v9 = type metadata accessor for Locale();
  v1[501] = v9;
  OUTLINED_FUNCTION_13_2(v9);
  v1[507] = v10;
  v12 = *(v11 + 64);
  v1[513] = OUTLINED_FUNCTION_45();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_13_2(v13);
  v1[519] = v14;
  v1[525] = *(v15 + 64);
  v1[531] = swift_task_alloc();
  v1[537] = swift_task_alloc();
  v16 = type metadata accessor for OutputGenerationManifest();
  v1[543] = v16;
  OUTLINED_FUNCTION_13_2(v16);
  v1[549] = v17;
  v19 = *(v18 + 64);
  v1[555] = OUTLINED_FUNCTION_45();
  v20 = type metadata accessor for SpeakableString();
  v1[561] = v20;
  OUTLINED_FUNCTION_13_2(v20);
  v1[567] = v21;
  v23 = *(v22 + 64);
  v1[568] = OUTLINED_FUNCTION_45();
  v24 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v24, v25, v26);
}

{
  v87 = v0;
  v1 = *(v0 + 4544);
  v2 = *(v0 + 3768);
  outlined init with copy of SignalProviding((v2 + 21), v0 + 3256);
  outlined init with copy of SignalProviding((v2 + 31), v0 + 3016);
  v3 = v2[17];
  __swift_project_boxed_opaque_existential_1(v2 + 13, v2[16]);
  v4 = *(v3 + 8);
  v5 = OUTLINED_FUNCTION_7_1();
  v6(v5);
  v7 = static UserFacingCallingAppUtils.getAppBundleId(preferredCallProvider:deviceState:)(1, (v0 + 2936));
  __swift_destroy_boxed_opaque_existential_1((v0 + 2936));
  String.toSpeakableString.getter();

  v8 = v2[2];
  if (specialized Array.count.getter(v8))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v9 = OUTLINED_FUNCTION_48_0();
    OUTLINED_FUNCTION_27_29(v9, xmmword_426260);
    specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, v10, v8);
    if (v7)
    {
      v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v11 = v8[4];
    }

    v9[2].n128_u64[0] = v12;
  }

  else
  {
    v9 = _swiftEmptyArrayStorage;
  }

  if (specialized Array.count.getter(v8) < 2)
  {
    v13 = _swiftEmptyArrayStorage;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v13 = OUTLINED_FUNCTION_48_0();
    OUTLINED_FUNCTION_27_29(v13, xmmword_426260);
    specialized Array._checkSubscript(_:wasNativeTypeChecked:)(1, v14, v8);
    if (v7)
    {
      v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v15 = v8[5];
    }

    v13[2].n128_u64[0] = v16;
  }

  if (specialized Array.count.getter(v8) <= 2)
  {
    v17 = _swiftEmptyArrayStorage;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v17 = OUTLINED_FUNCTION_48_0();
    OUTLINED_FUNCTION_27_29(v17, xmmword_426260);
    specialized Array._checkSubscript(_:wasNativeTypeChecked:)(2, v18, v8);
    if (v7)
    {
      v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v19 = v8[6];
    }

    v17[2].n128_u64[0] = v20;
  }

  v81 = v17;
  if (specialized Array.count.getter(v8) < 4)
  {
    v21 = _swiftEmptyArrayStorage;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v21 = OUTLINED_FUNCTION_48_0();
    OUTLINED_FUNCTION_27_29(v21, xmmword_426260);
    specialized Array._checkSubscript(_:wasNativeTypeChecked:)(3, v22, v8);
    if (v7)
    {
      v24 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v23 = v8[7];
    }

    v21[2].n128_u64[0] = v24;
  }

  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

  v25 = *(v0 + 3768);
  v26 = type metadata accessor for Logger();
  __swift_project_value_buffer(v26, static Logger.siriPhone);

  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.debug.getter();

  v83 = v2;
  v80 = v8;
  if (os_log_type_enabled(v27, v28))
  {
    v29 = *(v0 + 3768);
    v30 = OUTLINED_FUNCTION_42();
    v31 = swift_slowAlloc();
    v84 = v31;
    v85 = 0;
    *v30 = 136315138;
    v32 = OUTLINED_FUNCTION_23_2(OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin38ReadCallRecordsYesNoPromptFlowStrategy_logPrefix);
    v86 = v33;
    DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v32, v34, v35, v36);
    v37 = v13;
    v38 = v9;
    v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v85, v86, &v84);

    *(v30 + 4) = v39;
    v9 = v38;
    v13 = v37;
    _os_log_impl(&dword_0, v27, v28, "%s execute readMultipleCallRecords with SMART UI on", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v31);
    OUTLINED_FUNCTION_26_0();
    v2 = v83;
    OUTLINED_FUNCTION_26_0();
  }

  v40 = *(v0 + 3768);
  v41 = swift_allocObject();
  *(v0 + 4552) = v41;
  v41[2] = v40;
  v41[3] = v9;
  v41[4] = v13;
  v41[5] = v81;
  v41[6] = v21;

  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for DialogExecutionResult, DialogExecutionResult_ptr);
  swift_asyncLet_begin();

  swift_asyncLet_begin();
  v42 = v2[17];
  __swift_project_boxed_opaque_existential_1(v2 + 13, v2[16]);
  v43 = *(v42 + 8);
  v44 = OUTLINED_FUNCTION_7_1();
  v45(v44);
  v46 = *(v0 + 2648);
  __swift_project_boxed_opaque_existential_1((v0 + 2616), *(v0 + 2640));
  OUTLINED_FUNCTION_7_1();
  LOBYTE(v40) = dispatch thunk of DeviceState.isCarPlay.getter();
  __swift_destroy_boxed_opaque_existential_1((v0 + 2616));
  if (v40)
  {
    v47 = *(v0 + 3040);
    *(v0 + 4560) = v47;
    *(v0 + 4576) = __swift_project_boxed_opaque_existential_1((v0 + 3016), v47);
    *(v0 + 4584) = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v48 = OUTLINED_FUNCTION_48_0();
    *(v0 + 4592) = v48;
    *(v48 + 16) = xmmword_426260;
    v49 = ReadCallRecordsYesNoPromptFlowStrategy.executePatternAndManifest();
    v50 = v0 + 16;
    v51 = v0 + 3672;
    v52 = v0 + 3776;
  }

  else
  {
    v53 = *(v0 + 4104);
    v54 = *(v0 + 4056);
    v82 = *(v0 + 4008);
    v55 = *(*(v0 + 3768) + 144);
    v56 = v2[16];
    v57 = v2[17];
    __swift_project_boxed_opaque_existential_1(v2 + 13, v56);
    (*(v57 + 8))(v56, v57);
    v58 = static UserFacingCallingAppUtils.getCommAppForLaunch(originalApp:preferredCallProvider:deviceState:)(v55, 0, (v0 + 2696));
    *(v0 + 4640) = v58;
    __swift_destroy_boxed_opaque_existential_1((v0 + 2696));
    v59 = *(v0 + 3280);
    v60 = *(v0 + 3288);
    __swift_project_boxed_opaque_existential_1((v0 + 3256), v59);
    v61 = v2;
    v62 = v2[16];
    v63 = v61[17];
    __swift_project_boxed_opaque_existential_1(v61 + 13, v62);
    (*(v63 + 8))(v62, v63);
    v64 = *(v0 + 2808);
    __swift_project_boxed_opaque_existential_1((v0 + 2776), *(v0 + 2800));
    OUTLINED_FUNCTION_11_0();
    dispatch thunk of DeviceState.siriLocale.getter();
    (*(v60 + 16))(v58, v53, v59, v60);
    v66 = v65;
    (*(v54 + 8))(v53, v82);
    __swift_destroy_boxed_opaque_existential_1((v0 + 2776));
    if (v66)
    {
      v67 = *(v0 + 4296);
      SpeakableString.init(print:speak:)();
      v68 = 0;
    }

    else
    {
      v68 = 1;
    }

    v69 = *(v0 + 4544);
    v70 = *(v0 + 4296);
    v71 = *(v0 + 4248);
    v72 = *(v0 + 4200);
    v73 = *(v0 + 4152);
    v74 = *(v0 + 3768);
    __swift_storeEnumTagSinglePayload(v70, v68, 1, *(v0 + 4488));
    _s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgWOcTm_0(v70, v71, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    v75 = (*(v73 + 80) + 24) & ~*(v73 + 80);
    v76 = swift_allocObject();
    *(v0 + 4648) = v76;
    *(v76 + 16) = v74;
    outlined init with take of SpeakableString?(v71, v76 + v75);

    swift_asyncLet_begin();

    swift_asyncLet_begin();
    *(v0 + 4656) = SpeakableString.print.getter();
    *(v0 + 4664) = v77;
    static SearchCallHistoryHelper.generateSearchCallHistoryModel(items:sharedGlobals:)(v80);
    *(v0 + 4672) = v78;
    v50 = OUTLINED_FUNCTION_13_50();
    v52 = v0 + 2896;
  }

  return _swift_asyncLet_get_throwing(v50, v51, v49, v52);
}

{
  *(v1 + 4600) = v0;
  if (v0)
  {
    return OUTLINED_FUNCTION_0_1(ReadCallRecordsYesNoPromptFlowStrategy.executePatternAndManifest());
  }

  else
  {
    return OUTLINED_FUNCTION_0_1(ReadCallRecordsYesNoPromptFlowStrategy.executePatternAndManifest());
  }
}

{
  OUTLINED_FUNCTION_15();
  v1 = v0[573];
  v2 = v0[459];
  *(v0[574] + 32) = v2;
  inited = swift_initStackObject();
  v0[576] = inited;
  *(inited + 16) = xmmword_426260;
  v4 = v2;
  v5 = OUTLINED_FUNCTION_8_63();

  return _swift_asyncLet_get_throwing(v5, v6, v7, v0 + 562);
}

{
  OUTLINED_FUNCTION_15();
  *(v1 + 4616) = v0;
  if (v0)
  {
    v2 = *(v1 + 4592);

    v3 = ReadCallRecordsYesNoPromptFlowStrategy.executePatternAndManifest();
  }

  else
  {
    v3 = ReadCallRecordsYesNoPromptFlowStrategy.executePatternAndManifest();
  }

  return _swift_task_switch(v3, 0, 0);
}

{
  OUTLINED_FUNCTION_23_0();
  v1 = v0[576];
  v2 = v0[574];
  v3 = v0[555];
  v4 = v0[471];
  v5 = v0[447];
  *(v1 + 32) = v5;
  v16 = v2;
  v6 = v5;
  specialized Array.append<A>(contentsOf:)(v1);
  v0[578] = v16;
  OUTLINED_FUNCTION_2_3();
  ReadCallRecordsYesNoPromptFlowStrategy.getOutputGenerationManifest(responseViewId:)();
  v7 = async function pointer to dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)[1];
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[579] = v8;
  *v8 = v9;
  v8[1] = ReadCallRecordsYesNoPromptFlowStrategy.executePatternAndManifest();
  v10 = v0[572];
  v11 = v0[571];
  v12 = v0[570];
  v13 = v0[555];
  v14 = v0[465];

  return dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)(v14, v16, v13, v12, v11);
}

{
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_28();
  v2 = v1;
  OUTLINED_FUNCTION_6();
  *v3 = v2;
  v5 = v4[579];
  v6 = v4[578];
  v7 = v4[555];
  v8 = v4[549];
  v9 = v4[543];
  v10 = *v0;
  OUTLINED_FUNCTION_4_2();
  *v11 = v10;

  (*(v8 + 8))(v7, v9);

  return _swift_asyncLet_finish(v2 + 1936, v2 + 3576, ReadCallRecordsYesNoPromptFlowStrategy.executePatternAndManifest(), v2 + 2736);
}

{
  return OUTLINED_FUNCTION_0_1(ReadCallRecordsYesNoPromptFlowStrategy.executePatternAndManifest());
}

{
  return _swift_asyncLet_finish(v0 + 16, v0 + 3672, ReadCallRecordsYesNoPromptFlowStrategy.executePatternAndManifest(), v0 + 2576);
}

{
  return OUTLINED_FUNCTION_0_1(ReadCallRecordsYesNoPromptFlowStrategy.executePatternAndManifest());
}

{
  OUTLINED_FUNCTION_15();
  v1[585] = v0;
  if (v0)
  {

    return _swift_task_switch(ReadCallRecordsYesNoPromptFlowStrategy.executePatternAndManifest(), 0, 0);
  }

  else
  {
    v1[586] = v1[443];
    v1[587] = v1[444];

    return _swift_asyncLet_get_throwing(v1 + 162, v1 + 445, ReadCallRecordsYesNoPromptFlowStrategy.executePatternAndManifest(), v1 + 412);
  }
}

{
  *(v1 + 4704) = v0;
  if (v0)
  {
    return OUTLINED_FUNCTION_0_1(ReadCallRecordsYesNoPromptFlowStrategy.executePatternAndManifest());
  }

  else
  {
    return OUTLINED_FUNCTION_0_1(ReadCallRecordsYesNoPromptFlowStrategy.executePatternAndManifest());
  }
}

{
  v29 = *(v0 + 4688);
  v30 = *(v0 + 4696);
  v27 = *(v0 + 4672);
  v25 = *(v0 + 4656);
  v26 = *(v0 + 4664);
  v24 = *(v0 + 4640);
  v1 = *(v0 + 3960);
  v2 = *(v0 + 3912);
  v31 = *(v0 + 3864);
  v32 = *(v0 + 3816);
  v3 = *(v0 + 3768);
  v28 = *(v0 + 3560);
  v4 = *(v0 + 3568);
  v5 = v3[16];
  v6 = v3[17];
  __swift_project_boxed_opaque_existential_1(v3 + 13, v5);
  v7 = *(v6 + 8);

  v7(v5, v6);
  v8 = *(v0 + 3128);
  __swift_project_boxed_opaque_existential_1((v0 + 3096), *(v0 + 3120));
  LOBYTE(v5) = dispatch thunk of DeviceState.isXRDevice.getter();
  __swift_destroy_boxed_opaque_existential_1((v0 + 3096));
  v9 = v3[16];
  v10 = v3[17];
  __swift_project_boxed_opaque_existential_1(v3 + 13, v9);
  (*(v10 + 8))(v9, v10);
  v11 = *(v0 + 3208);
  __swift_project_boxed_opaque_existential_1((v0 + 3176), *(v0 + 3200));
  LOBYTE(v9) = dispatch thunk of DeviceState.isXRDevice.getter();
  __swift_destroy_boxed_opaque_existential_1((v0 + 3176));
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SAAppsLaunchApp, SAAppsLaunchApp_ptr);

  SAAppsLaunchApp.init(app:)(v12);
  *v1 = 0xD000000000000011;
  v1[1] = 0x8000000000456CD0;
  v13 = v2[5];
  *(v0 + 3528) = v25;
  *(v0 + 3536) = v26;
  Loggable.init(wrappedValue:)();
  v14 = v2[6];
  *(v0 + 3624) = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay27PhoneCallFlowDelegatePlugin06SingleB11RecordModelVGMd, &_sSay27PhoneCallFlowDelegatePlugin06SingleB11RecordModelVGMR);
  Loggable.init(wrappedValue:)();
  v15 = v2[7];
  *(v0 + 3496) = v29;
  *(v0 + 3504) = v30;
  Loggable.init(wrappedValue:)();
  v16 = v2[8];
  *(v0 + 3512) = v28;
  *(v0 + 3520) = v4;
  Loggable.init(wrappedValue:)();
  v17 = v2[9];
  *(v0 + 4792) = (v5 & 1) == 0;
  Loggable.init(wrappedValue:)();
  v18 = v2[10];
  *(v0 + 4793) = (v9 & 1) == 0;
  Loggable.init(wrappedValue:)();
  v19 = v2[11];
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SABaseCommand, SABaseCommand_ptr);
  CodableAceObject.init(wrappedValue:)();
  _s27PhoneCallFlowDelegatePlugin06SearchB12HistoryModelVWOcTm_0(v1, v31, type metadata accessor for SearchCallHistoryModel);
  swift_storeEnumTagMultiPayload();
  v20 = *(v0 + 3040);
  *(v0 + 4712) = v20;
  *(v0 + 4728) = __swift_project_boxed_opaque_existential_1((v0 + 3016), v20);
  *(v0 + 3360) = v32;
  *(v0 + 3368) = _s27PhoneCallFlowDelegatePlugin0A5ErrorOACs0F0AAWlTm_9(&lazy protocol witness table cache variable for type PhoneSnippetDataModels and conformance PhoneSnippetDataModels, type metadata accessor for PhoneSnippetDataModels);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 3336));
  _s27PhoneCallFlowDelegatePlugin06SearchB12HistoryModelVWOcTm_0(v31, boxed_opaque_existential_1, type metadata accessor for PhoneSnippetDataModels);
  *(v0 + 4736) = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v22 = OUTLINED_FUNCTION_48_0();
  *(v0 + 4744) = v22;
  *(v22 + 16) = xmmword_426260;

  return _swift_asyncLet_get_throwing(v0 + 16, v0 + 3672, ReadCallRecordsYesNoPromptFlowStrategy.executePatternAndManifest(), v0 + 3920);
}

{
  *(v1 + 4752) = v0;
  if (v0)
  {
    return OUTLINED_FUNCTION_0_1(ReadCallRecordsYesNoPromptFlowStrategy.executePatternAndManifest());
  }

  else
  {
    return OUTLINED_FUNCTION_0_1(ReadCallRecordsYesNoPromptFlowStrategy.executePatternAndManifest());
  }
}

{
  OUTLINED_FUNCTION_15();
  v1 = v0[592];
  v2 = v0[459];
  *(v0[593] + 32) = v2;
  inited = swift_initStackObject();
  v0[595] = inited;
  *(inited + 16) = xmmword_426260;
  v4 = v2;
  v5 = OUTLINED_FUNCTION_8_63();

  return _swift_asyncLet_get_throwing(v5, v6, v7, v0 + 520);
}

{
  OUTLINED_FUNCTION_15();
  *(v1 + 4768) = v0;
  if (v0)
  {
    v2 = *(v1 + 4744);

    v3 = ReadCallRecordsYesNoPromptFlowStrategy.executePatternAndManifest();
  }

  else
  {
    v3 = ReadCallRecordsYesNoPromptFlowStrategy.executePatternAndManifest();
  }

  return _swift_task_switch(v3, 0, 0);
}

{
  OUTLINED_FUNCTION_23_0();
  v1 = v0[595];
  v2 = v0[593];
  v3 = v0[555];
  v4 = v0[471];
  v5 = v0[447];
  *(v1 + 32) = v5;
  v16 = v2;
  v6 = v5;
  specialized Array.append<A>(contentsOf:)(v1);
  v0[597] = v16;
  ReadCallRecordsYesNoPromptFlowStrategy.getOutputGenerationManifest(responseViewId:)();
  v7 = async function pointer to dispatch thunk of ResponseGenerating.makeResponseOutput(resultModel:dialog:outputGenerationManifest:)[1];
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[598] = v8;
  *v8 = v9;
  v8[1] = ReadCallRecordsYesNoPromptFlowStrategy.executePatternAndManifest();
  v10 = v0[591];
  v11 = v0[590];
  v12 = v0[589];
  v13 = v0[555];
  v14 = v0[465];

  return dispatch thunk of ResponseGenerating.makeResponseOutput(resultModel:dialog:outputGenerationManifest:)(v14, v0 + 417, v16, v13, v12, v11);
}

{
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_28();
  v2 = v1;
  OUTLINED_FUNCTION_6();
  *v3 = v2;
  v5 = v4[598];
  v6 = v4[597];
  v7 = v4[555];
  v8 = v4[549];
  v9 = v4[543];
  v10 = *v0;
  OUTLINED_FUNCTION_4_2();
  *v11 = v10;

  (*(v8 + 8))(v7, v9);
  __swift_destroy_boxed_opaque_existential_1((v2 + 3336));
  v12 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v12, v13, v14);
}

{
  OUTLINED_FUNCTION_15();
  v1 = *(v0 + 3960);
  OUTLINED_FUNCTION_9_61();
  OUTLINED_FUNCTION_7_63();
  _s27PhoneCallFlowDelegatePlugin0A5ErrorOWOhTm_9(v1, v2);
  v3 = OUTLINED_FUNCTION_13_50();

  return _swift_asyncLet_finish(v3, v4, v5, v0 + 4400);
}

{
  return OUTLINED_FUNCTION_0_1(ReadCallRecordsYesNoPromptFlowStrategy.executePatternAndManifest());
}

{
  return OUTLINED_FUNCTION_5_78(v0 + 1296, v0 + 3560, ReadCallRecordsYesNoPromptFlowStrategy.executePatternAndManifest(), 4448);
}

{
  return OUTLINED_FUNCTION_0_1(ReadCallRecordsYesNoPromptFlowStrategy.executePatternAndManifest());
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_54_22();
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v2 = OUTLINED_FUNCTION_8_63();

  return _swift_asyncLet_finish(v2, v3, v4, v1 + 2656);
}

{
  return OUTLINED_FUNCTION_0_1(ReadCallRecordsYesNoPromptFlowStrategy.executePatternAndManifest());
}

{
  return _swift_asyncLet_finish(v0 + 16, v0 + 3672, ReadCallRecordsYesNoPromptFlowStrategy.executePatternAndManifest(), v0 + 3872);
}

{
  return OUTLINED_FUNCTION_0_1(ReadCallRecordsYesNoPromptFlowStrategy.executePatternAndManifest());
}

{
  OUTLINED_FUNCTION_15();
  *(*(v0 + 4592) + 16) = 0;

  v1 = OUTLINED_FUNCTION_8_63();

  return _swift_asyncLet_finish(v1, v2, v3, v0 + 3680);
}

{
  return OUTLINED_FUNCTION_0_1(ReadCallRecordsYesNoPromptFlowStrategy.executePatternAndManifest());
}

{
  return _swift_asyncLet_finish(v0 + 16, v0 + 3672, ReadCallRecordsYesNoPromptFlowStrategy.executePatternAndManifest(), v0 + 2816);
}

{
  return OUTLINED_FUNCTION_0_1(ReadCallRecordsYesNoPromptFlowStrategy.executePatternAndManifest());
}

{
  OUTLINED_FUNCTION_15();
  *(*(v0 + 4608) + 16) = 0;
  swift_setDeallocating();
  specialized _ContiguousArrayStorage.__deallocating_deinit();
  v1 = OUTLINED_FUNCTION_8_63();

  return _swift_asyncLet_finish(v1, v2, v3, v0 + 3824);
}

{
  return OUTLINED_FUNCTION_0_1(ReadCallRecordsYesNoPromptFlowStrategy.executePatternAndManifest());
}

{
  return _swift_asyncLet_finish(v0 + 16, v0 + 3672, ReadCallRecordsYesNoPromptFlowStrategy.executePatternAndManifest(), v0 + 3728);
}

{
  return OUTLINED_FUNCTION_0_1(ReadCallRecordsYesNoPromptFlowStrategy.executePatternAndManifest());
}

{
  OUTLINED_FUNCTION_15();
  v1 = *(v0 + 4672);
  v2 = *(v0 + 4664);

  v3 = OUTLINED_FUNCTION_13_50();

  return _swift_asyncLet_finish(v3, v4, v5, v0 + 2976);
}

{
  return OUTLINED_FUNCTION_0_1(ReadCallRecordsYesNoPromptFlowStrategy.executePatternAndManifest());
}

{
  return _swift_asyncLet_finish(v0 + 1296, v0 + 3560, ReadCallRecordsYesNoPromptFlowStrategy.executePatternAndManifest(), v0 + 3056);
}

{
  return OUTLINED_FUNCTION_0_1(ReadCallRecordsYesNoPromptFlowStrategy.executePatternAndManifest());
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_54_22();
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v2 = OUTLINED_FUNCTION_8_63();

  return _swift_asyncLet_finish(v2, v3, v4, v1 + 3136);
}

{
  return OUTLINED_FUNCTION_0_1(ReadCallRecordsYesNoPromptFlowStrategy.executePatternAndManifest());
}

{
  return _swift_asyncLet_finish(v0 + 16, v0 + 3672, ReadCallRecordsYesNoPromptFlowStrategy.executePatternAndManifest(), v0 + 3216);
}

{
  return OUTLINED_FUNCTION_0_1(ReadCallRecordsYesNoPromptFlowStrategy.executePatternAndManifest());
}

{
  OUTLINED_FUNCTION_15();
  v1 = v0[587];
  v2 = v0[584];
  v3 = v0[583];

  v4 = OUTLINED_FUNCTION_13_50();

  return _swift_asyncLet_finish(v4, v5, v6, v0 + 422);
}

{
  return OUTLINED_FUNCTION_0_1(ReadCallRecordsYesNoPromptFlowStrategy.executePatternAndManifest());
}

{
  return _swift_asyncLet_finish(v0 + 1296, v0 + 3560, ReadCallRecordsYesNoPromptFlowStrategy.executePatternAndManifest(), v0 + 3456);
}

{
  return OUTLINED_FUNCTION_0_1(ReadCallRecordsYesNoPromptFlowStrategy.executePatternAndManifest());
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_54_22();
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v2 = OUTLINED_FUNCTION_8_63();

  return _swift_asyncLet_finish(v2, v3, v4, v1 + 3584);
}

{
  return OUTLINED_FUNCTION_0_1(ReadCallRecordsYesNoPromptFlowStrategy.executePatternAndManifest());
}

{
  return _swift_asyncLet_finish(v0 + 16, v0 + 3672, ReadCallRecordsYesNoPromptFlowStrategy.executePatternAndManifest(), v0 + 3632);
}

{
  return OUTLINED_FUNCTION_0_1(ReadCallRecordsYesNoPromptFlowStrategy.executePatternAndManifest());
}

{
  OUTLINED_FUNCTION_15();
  v1 = v0[593];
  v2 = v0[495];
  OUTLINED_FUNCTION_9_61();
  *(v1 + 16) = 0;

  OUTLINED_FUNCTION_7_63();
  _s27PhoneCallFlowDelegatePlugin0A5ErrorOWOhTm_9(v2, v3);
  __swift_destroy_boxed_opaque_existential_1(v0 + 417);
  v4 = OUTLINED_FUNCTION_13_50();

  return _swift_asyncLet_finish(v4, v5, v6, v0 + 496);
}

{
  return OUTLINED_FUNCTION_0_1(ReadCallRecordsYesNoPromptFlowStrategy.executePatternAndManifest());
}

{
  return _swift_asyncLet_finish(v0 + 1296, v0 + 3560, ReadCallRecordsYesNoPromptFlowStrategy.executePatternAndManifest(), v0 + 4016);
}

{
  return OUTLINED_FUNCTION_0_1(ReadCallRecordsYesNoPromptFlowStrategy.executePatternAndManifest());
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_54_22();
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v2 = OUTLINED_FUNCTION_8_63();

  return _swift_asyncLet_finish(v2, v3, v4, v1 + 4064);
}

{
  return OUTLINED_FUNCTION_0_1(ReadCallRecordsYesNoPromptFlowStrategy.executePatternAndManifest());
}

{
  return OUTLINED_FUNCTION_5_78(v0 + 16, v0 + 3672, ReadCallRecordsYesNoPromptFlowStrategy.executePatternAndManifest(), 4112);
}

{
  return OUTLINED_FUNCTION_0_1(ReadCallRecordsYesNoPromptFlowStrategy.executePatternAndManifest());
}

{
  OUTLINED_FUNCTION_27();
  v1 = v0[595];
  v2 = v0[495];
  OUTLINED_FUNCTION_9_61();
  *(v1 + 16) = 0;
  swift_setDeallocating();
  specialized _ContiguousArrayStorage.__deallocating_deinit();
  OUTLINED_FUNCTION_7_63();
  _s27PhoneCallFlowDelegatePlugin0A5ErrorOWOhTm_9(v2, v3);
  __swift_destroy_boxed_opaque_existential_1(v0 + 417);
  v4 = OUTLINED_FUNCTION_13_50();

  return _swift_asyncLet_finish(v4, v5, v6, v0 + 526);
}

{
  return OUTLINED_FUNCTION_0_1(ReadCallRecordsYesNoPromptFlowStrategy.executePatternAndManifest());
}

{
  return OUTLINED_FUNCTION_5_78(v0 + 1296, v0 + 3560, ReadCallRecordsYesNoPromptFlowStrategy.executePatternAndManifest(), 4256);
}

{
  return OUTLINED_FUNCTION_0_1(ReadCallRecordsYesNoPromptFlowStrategy.executePatternAndManifest());
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_54_22();
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v2 = OUTLINED_FUNCTION_8_63();

  return _swift_asyncLet_finish(v2, v3, v4, v1 + 4304);
}

{
  return OUTLINED_FUNCTION_0_1(ReadCallRecordsYesNoPromptFlowStrategy.executePatternAndManifest());
}

{
  return OUTLINED_FUNCTION_5_78(v0 + 16, v0 + 3672, ReadCallRecordsYesNoPromptFlowStrategy.executePatternAndManifest(), 4352);
}

{
  return OUTLINED_FUNCTION_0_1(ReadCallRecordsYesNoPromptFlowStrategy.executePatternAndManifest());
}

uint64_t ReadCallRecordsYesNoPromptFlowStrategy.executePatternAndManifest()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_24_1();
  v13 = v12[569];
  v14 = v12[555];
  v15 = v12[537];
  v16 = v12[531];
  v17 = v12[513];
  v18 = v12[495];
  v19 = v12[483];
  v20 = v12[471];
  (*(v12[567] + 8))(v12[568], v12[561]);
  OUTLINED_FUNCTION_34_20();

  v21 = OUTLINED_FUNCTION_2_3();
  _sxs5Error_pRi_zRi0_zlySo21DialogExecutionResultCIsegHrzo_SgWOe(v21);
  v22 = OUTLINED_FUNCTION_2_3();
  _sxs5Error_pRi_zRi0_zlySo21DialogExecutionResultCIsegHrzo_SgWOe(v22);

  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_16();

  return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10, a11, a12);
}

{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_24_1();
  v13 = v12[581];
  v14 = v12[471];
  v15 = v12[569];
  v16 = v12[555];
  v17 = v12[537];
  v18 = v12[531];
  v19 = v12[513];
  v20 = v12[495];
  v32 = v12[483];
  (*(v12[567] + 8))(v12[568], v12[561]);
  OUTLINED_FUNCTION_34_20();

  v21 = OUTLINED_FUNCTION_3_90();
  _sxs5Error_pRi_zRi0_zlySo21DialogExecutionResultCIsegHrzo_SgWOe(v21);
  v22 = OUTLINED_FUNCTION_2_97();
  _sxs5Error_pRi_zRi0_zlySo21DialogExecutionResultCIsegHrzo_SgWOe(v22);

  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_16();

  return v24(v23, v24, v25, v26, v27, v28, v29, v30, v32, a10, a11, a12);
}

{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_24_1();
  v13 = *(v12 + 4600);
  v14 = OUTLINED_FUNCTION_21_37();
  v15(v14);
  OUTLINED_FUNCTION_34_20();

  v16 = OUTLINED_FUNCTION_2_3();
  _sxs5Error_pRi_zRi0_zlySo21DialogExecutionResultCIsegHrzo_SgWOe(v16);
  v17 = OUTLINED_FUNCTION_2_3();
  _sxs5Error_pRi_zRi0_zlySo21DialogExecutionResultCIsegHrzo_SgWOe(v17);

  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_16();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
}

{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_24_1();
  v13 = *(v12 + 4616);
  v14 = OUTLINED_FUNCTION_21_37();
  v15(v14);
  OUTLINED_FUNCTION_34_20();

  v16 = OUTLINED_FUNCTION_2_3();
  _sxs5Error_pRi_zRi0_zlySo21DialogExecutionResultCIsegHrzo_SgWOe(v16);
  v17 = OUTLINED_FUNCTION_2_3();
  _sxs5Error_pRi_zRi0_zlySo21DialogExecutionResultCIsegHrzo_SgWOe(v17);

  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_16();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
}

uint64_t ReadCallRecordsYesNoPromptFlowStrategy.executePatternAndManifest()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_39_4();
  v15 = *(v14 + 4680);
  v16 = OUTLINED_FUNCTION_4_70();
  v17(v16);
  OUTLINED_FUNCTION_29_27();

  v18 = OUTLINED_FUNCTION_3_90();
  _sxs5Error_pRi_zRi0_zlySo21DialogExecutionResultCIsegHrzo_SgWOe(v18);
  v19 = OUTLINED_FUNCTION_2_97();
  OUTLINED_FUNCTION_55_19(v19);

  OUTLINED_FUNCTION_32_24();
  OUTLINED_FUNCTION_15_11();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12, a13, a14);
}

{
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_39_4();
  v15 = *(v14 + 4704);
  v16 = OUTLINED_FUNCTION_4_70();
  v17(v16);
  OUTLINED_FUNCTION_29_27();

  v18 = OUTLINED_FUNCTION_3_90();
  _sxs5Error_pRi_zRi0_zlySo21DialogExecutionResultCIsegHrzo_SgWOe(v18);
  v19 = OUTLINED_FUNCTION_2_97();
  OUTLINED_FUNCTION_55_19(v19);

  OUTLINED_FUNCTION_32_24();
  OUTLINED_FUNCTION_15_11();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12, a13, a14);
}

{
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_39_4();
  v15 = *(v14 + 4752);
  v16 = OUTLINED_FUNCTION_4_70();
  v17(v16);
  OUTLINED_FUNCTION_29_27();

  v18 = OUTLINED_FUNCTION_3_90();
  _sxs5Error_pRi_zRi0_zlySo21DialogExecutionResultCIsegHrzo_SgWOe(v18);
  v19 = OUTLINED_FUNCTION_2_97();
  OUTLINED_FUNCTION_55_19(v19);

  OUTLINED_FUNCTION_32_24();
  OUTLINED_FUNCTION_15_11();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12, a13, a14);
}

{
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_39_4();
  v15 = *(v14 + 4768);
  v16 = OUTLINED_FUNCTION_4_70();
  v17(v16);
  OUTLINED_FUNCTION_29_27();

  v18 = OUTLINED_FUNCTION_3_90();
  _sxs5Error_pRi_zRi0_zlySo21DialogExecutionResultCIsegHrzo_SgWOe(v18);
  v19 = OUTLINED_FUNCTION_2_97();
  OUTLINED_FUNCTION_55_19(v19);

  OUTLINED_FUNCTION_32_24();
  OUTLINED_FUNCTION_15_11();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12, a13, a14);
}

uint64_t implicit closure #2 in ReadCallRecordsYesNoPromptFlowStrategy.executePatternAndManifest()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return _swift_task_switch(implicit closure #2 in ReadCallRecordsYesNoPromptFlowStrategy.executePatternAndManifest(), 0, 0);
}

void implicit closure #2 in ReadCallRecordsYesNoPromptFlowStrategy.executePatternAndManifest()()
{
  OUTLINED_FUNCTION_27();
  v1 = v0[3];
  v2 = v1[10];
  specialized Array.count.getter(v1[2]);
  v3 = v1[20];
  v10 = (*v2 + class metadata base offset for SearchCallHistoryCATsSimple + 304);
  v12 = *v10 + **v10;
  v4 = (*v10)[1];
  v5 = swift_task_alloc();
  v0[8] = v5;
  *v5 = v0;
  v5[1] = implicit closure #2 in ReadCallRecordsYesNoPromptFlowStrategy.executePatternAndManifest();
  v6 = v0[6];
  v7 = v0[7];
  v8 = v0[4];
  v9 = v0[5];

  __asm { BRAA            X8, X16 }
}

uint64_t implicit closure #2 in ReadCallRecordsYesNoPromptFlowStrategy.executePatternAndManifest()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_18_4();
  v4 = v3;
  OUTLINED_FUNCTION_6();
  *v5 = v4;
  v7 = *(v6 + 64);
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
    *(v4 + 72) = v0;
    v12 = OUTLINED_FUNCTION_9_2();

    return _swift_task_switch(v12, v13, v14);
  }
}

{
  return OUTLINED_FUNCTION_13_0(*(v0 + 72));
}

uint64_t implicit closure #3 in ReadCallRecordsYesNoPromptFlowStrategy.executePatternAndManifest()(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(implicit closure #3 in ReadCallRecordsYesNoPromptFlowStrategy.executePatternAndManifest(), 0, 0);
}

uint64_t implicit closure #3 in ReadCallRecordsYesNoPromptFlowStrategy.executePatternAndManifest()()
{
  OUTLINED_FUNCTION_27();
  v1 = *(*(v0 + 24) + 80);
  v2 = WindowedPaginationParameters.isLastWindow.getter();
  v3 = *(*v1 + class metadata base offset for SearchCallHistoryCATsSimple + 192);
  v8 = (v3 + *v3);
  v4 = v3[1];
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 32) = v5;
  *v5 = v6;
  v5[1] = implicit closure #3 in ReadCallRecordsYesNoPromptFlowStrategy.executePatternAndManifest();

  return v8(v2 & 1);
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
  return OUTLINED_FUNCTION_13_0(*(v0 + 40));
}

uint64_t implicit closure #4 in ReadCallRecordsYesNoPromptFlowStrategy.executePatternAndManifest()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return _swift_task_switch(implicit closure #4 in ReadCallRecordsYesNoPromptFlowStrategy.executePatternAndManifest(), 0, 0);
}

uint64_t implicit closure #4 in ReadCallRecordsYesNoPromptFlowStrategy.executePatternAndManifest()()
{
  OUTLINED_FUNCTION_27();
  v1 = *(v0[3] + 88);
  OUTLINED_FUNCTION_2_0();
  v3 = *(v2 + class metadata base offset for PhoneCallDisplayTextCATsSimple + 248);
  v8 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  v0[5] = v5;
  *v5 = v0;
  v5[1] = implicit closure #4 in ReadCallRecordsYesNoPromptFlowStrategy.executePatternAndManifest();
  v6 = v0[4];

  return v8(v6);
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_18_4();
  v4 = v3;
  OUTLINED_FUNCTION_6();
  *v5 = v4;
  v7 = *(v6 + 40);
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
    *(v4 + 48) = v0;
    v12 = OUTLINED_FUNCTION_9_2();

    return _swift_task_switch(v12, v13, v14);
  }
}

uint64_t implicit closure #5 in ReadCallRecordsYesNoPromptFlowStrategy.executePatternAndManifest()(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(implicit closure #5 in ReadCallRecordsYesNoPromptFlowStrategy.executePatternAndManifest(), 0, 0);
}

uint64_t implicit closure #5 in ReadCallRecordsYesNoPromptFlowStrategy.executePatternAndManifest()()
{
  OUTLINED_FUNCTION_27();
  v1 = *(*(v0 + 24) + 80);
  OUTLINED_FUNCTION_2_0();
  v6 = (v2 + class metadata base offset for SearchCallHistoryCATsSimple + 568);
  v7 = (*v6 + **v6);
  v3 = (*v6)[1];
  v4 = swift_task_alloc();
  *(v0 + 32) = v4;
  *v4 = v0;
  v4[1] = implicit closure #5 in ReadCallRecordsYesNoPromptFlowStrategy.executePatternAndManifest();

  return v7();
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

uint64_t ReadCallRecordsYesNoPromptFlowStrategy.getOutputGenerationManifest(responseViewId:)()
{
  v0 = type metadata accessor for DialogPhase();
  v1 = OUTLINED_FUNCTION_21(v0);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  static DialogPhase.confirmation.getter();
  return OutputGenerationManifest.init(dialogPhase:_:)();
}

uint64_t closure #1 in ReadCallRecordsYesNoPromptFlowStrategy.getOutputGenerationManifest(responseViewId:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v7 - v2;
  v4 = OutputGenerationManifest.canUseServerTTS.setter();
  _s27PhoneCallFlowDelegatePlugin0aB17NLContextProviderC34makeGenericConfirmationNLv3Context07SiriKitC00F6UpdateVyFZSo8INIntentC_So0P8ResponseCTt0g5(v4);
  _s27PhoneCallFlowDelegatePlugin0aB17NLContextProviderC019makeSDAForOfferReadB19HistoryConfirmation33_3C2ABB69DDB872D121E37A32A4E694A9LLSay12SiriNLUTypes0W29_Nlu_External_SystemDialogActVGSgyFZSo08INSearchbL6IntentC_So08INSearchbL14IntentResponseCTtg5();
  NLContextUpdate.nluSystemDialogActs.setter();
  v5 = type metadata accessor for NLContextUpdate();
  __swift_storeEnumTagSinglePayload(v3, 0, 1, v5);
  OutputGenerationManifest.nlContextUpdate.setter();
  WindowedPaginationParameters.isLastWindow.getter();
  OutputGenerationManifest.listenAfterSpeaking.setter();

  return OutputGenerationManifest.responseViewId.setter();
}

uint64_t ReadCallRecordsYesNoPromptFlowStrategy.deinit()
{
  v1 = *(v0 + 16);

  __swift_destroy_boxed_opaque_existential_1((v0 + 40));
  v2 = *(v0 + 80);

  v3 = *(v0 + 88);

  v4 = *(v0 + 96);

  __swift_destroy_boxed_opaque_existential_1((v0 + 104));
  v5 = *(v0 + 144);

  v6 = *(v0 + 160);

  outlined destroy of SearchCallHistorySharedGlobals(v0 + 168);
  v7 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin38ReadCallRecordsYesNoPromptFlowStrategy_windowParam;
  v8 = type metadata accessor for WindowedPaginationParameters();
  OUTLINED_FUNCTION_23_1(v8);
  (*(v9 + 8))(v0 + v7);
  v10 = *(v0 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin38ReadCallRecordsYesNoPromptFlowStrategy_logPrefix + 8);
  v11 = *(v0 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin38ReadCallRecordsYesNoPromptFlowStrategy_logPrefix + 24);

  return v0;
}

uint64_t ReadCallRecordsYesNoPromptFlowStrategy.__deallocating_deinit()
{
  ReadCallRecordsYesNoPromptFlowStrategy.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t protocol witness for YesNoPromptFlowStrategy.makePromptForYesNoResponse() in conformance ReadCallRecordsYesNoPromptFlowStrategy(uint64_t a1)
{
  v4 = *(*v1 + 224);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = closure #2 in ActionableCallControlFlow.execute();

  return v8(a1);
}

uint64_t protocol witness for PromptForConfirmationFlowStrategyAsync.parseConfirmationResponse(input:) in conformance ReadCallRecordsYesNoPromptFlowStrategy(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 232);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = closure #1 in ActionableCallControlFlow.execute();

  return v10(a1, a2);
}

uint64_t protocol witness for PromptForConfirmationFlowStrategyAsync.makePromptForConfirmation(itemToConfirm:) in conformance ReadCallRecordsYesNoPromptFlowStrategy(uint64_t a1)
{
  v4 = *(*v1 + 208);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = closure #1 in ActionableCallControlFlow.execute();

  return v8(a1);
}

uint64_t protocol witness for PromptForConfirmationFlowStrategyAsync.makeRepromptOnEmptyParse(itemToConfirm:) in conformance ReadCallRecordsYesNoPromptFlowStrategy(uint64_t a1)
{
  v3 = async function pointer to YesNoPromptFlowStrategy.makeRepromptOnEmptyParse(itemToConfirm:)[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  v5 = type metadata accessor for ReadCallRecordsYesNoPromptFlowStrategy();
  v6 = _s27PhoneCallFlowDelegatePlugin0A5ErrorOACs0F0AAWlTm_9(&lazy protocol witness table cache variable for type ReadCallRecordsYesNoPromptFlowStrategy and conformance ReadCallRecordsYesNoPromptFlowStrategy, type metadata accessor for ReadCallRecordsYesNoPromptFlowStrategy);
  *v4 = v1;
  v4[1] = closure #1 in ActionableCallControlFlow.execute();

  return YesNoPromptFlowStrategy.makeRepromptOnEmptyParse(itemToConfirm:)(a1, v5, v6);
}

uint64_t protocol witness for PromptForConfirmationFlowStrategyAsync.makeRepromptOnLowConfidence(itemToConfirm:) in conformance ReadCallRecordsYesNoPromptFlowStrategy(uint64_t a1)
{
  v3 = async function pointer to YesNoPromptFlowStrategy.makeRepromptOnLowConfidence(itemToConfirm:)[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  v5 = type metadata accessor for ReadCallRecordsYesNoPromptFlowStrategy();
  v6 = _s27PhoneCallFlowDelegatePlugin0A5ErrorOACs0F0AAWlTm_9(&lazy protocol witness table cache variable for type ReadCallRecordsYesNoPromptFlowStrategy and conformance ReadCallRecordsYesNoPromptFlowStrategy, type metadata accessor for ReadCallRecordsYesNoPromptFlowStrategy);
  *v4 = v1;
  v4[1] = closure #1 in ActionableCallControlFlow.execute();

  return YesNoPromptFlowStrategy.makeRepromptOnLowConfidence(itemToConfirm:)(a1, v5, v6);
}

uint64_t protocol witness for PromptForConfirmationFlowStrategyAsync.makeConfirmationRejectedResponse() in conformance ReadCallRecordsYesNoPromptFlowStrategy(uint64_t a1)
{
  v4 = *(*v1 + 216);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = closure #1 in ActionableCallControlFlow.execute();

  return v8(a1);
}

uint64_t protocol witness for PromptForConfirmationFlowStrategyAsync.makeFlowCancelledResponse() in conformance ReadCallRecordsYesNoPromptFlowStrategy(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = async function pointer to PromptForConfirmationFlowStrategyAsync.makeFlowCancelledResponse()[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = closure #1 in ActionableCallControlFlow.execute();

  return PromptForConfirmationFlowStrategyAsync.makeFlowCancelledResponse()(a1, a2, a3);
}

uint64_t type metadata completion function for ReadCallRecordsYesNoPromptFlowStrategy()
{
  result = type metadata accessor for WindowedPaginationParameters();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t partial apply for closure #1 in ReadCallRecordsYesNoPromptFlowStrategy.getOutputGenerationManifest(responseViewId:)()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return closure #1 in ReadCallRecordsYesNoPromptFlowStrategy.getOutputGenerationManifest(responseViewId:)();
}

uint64_t partial apply for implicit closure #2 in ReadCallRecordsYesNoPromptFlowStrategy.executePatternAndManifest()()
{
  OUTLINED_FUNCTION_23_0();
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v1 + 16) = v7;
  *v7 = v8;
  v9 = OUTLINED_FUNCTION_10_3(v7);

  return implicit closure #2 in ReadCallRecordsYesNoPromptFlowStrategy.executePatternAndManifest()(v9, v2, v3, v4, v5, v6);
}

uint64_t partial apply for implicit closure #3 in ReadCallRecordsYesNoPromptFlowStrategy.executePatternAndManifest()()
{
  OUTLINED_FUNCTION_15();
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v1 + 16) = v2;
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_10_3(v2);

  return implicit closure #3 in ReadCallRecordsYesNoPromptFlowStrategy.executePatternAndManifest()(v4, v0);
}

uint64_t partial apply for implicit closure #4 in ReadCallRecordsYesNoPromptFlowStrategy.executePatternAndManifest()()
{
  OUTLINED_FUNCTION_27();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v4);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v0 + 16);
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v1 + 16) = v8;
  *v8 = v9;
  v8[1] = closure #2 in ActionableCallControlFlow.execute();

  return implicit closure #4 in ReadCallRecordsYesNoPromptFlowStrategy.executePatternAndManifest()(v3, v7, v0 + v6);
}

uint64_t partial apply for implicit closure #5 in ReadCallRecordsYesNoPromptFlowStrategy.executePatternAndManifest()()
{
  OUTLINED_FUNCTION_15();
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v1 + 16) = v2;
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_10_3(v2);

  return implicit closure #5 in ReadCallRecordsYesNoPromptFlowStrategy.executePatternAndManifest()(v4, v0);
}

uint64_t _s27PhoneCallFlowDelegatePlugin0A5ErrorOACs0F0AAWlTm_9(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _s27PhoneCallFlowDelegatePlugin06SearchB12HistoryModelVWOcTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_23_1(v4);
  v6 = *(v5 + 16);
  v7 = OUTLINED_FUNCTION_19_0();
  v8(v7);
  return a2;
}

uint64_t _s27PhoneCallFlowDelegatePlugin0A5ErrorOWOhTm_9(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_23_1(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t OUTLINED_FUNCTION_29_27()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 3016));
  __swift_destroy_boxed_opaque_existential_1((v0 + 3256));
}

uint64_t OUTLINED_FUNCTION_54_22()
{
  v2 = *(v0 + 4640);
  v3 = *(v0 + 4296);
}

uint64_t OUTLINED_FUNCTION_55_19(uint64_t a1)
{
  _sxs5Error_pRi_zRi0_zlySo21DialogExecutionResultCIsegHrzo_SgWOe(a1);
}

PhoneCallFlowDelegatePlugin::ReaderNLConstants_optional __swiftcall ReaderNLConstants.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of ReaderNLConstants.init(rawValue:), v2);

  if (v3 >= 6)
  {
    return 6;
  }

  else
  {
    return v3;
  }
}

uint64_t ReaderNLConstants.rawValue.getter(char a1)
{
  result = 0x726564616572;
  switch(a1)
  {
    case 1:
      result = 0x6973734169726953;
      break;
    case 2:
      result = 0x6E6F69746361;
      break;
    case 3:
      result = 0x646E616D6D6F63;
      break;
    case 4:
      result = 0x7463656A627573;
      break;
    case 5:
      result = 0x6556726564616572;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ReaderNLConstants and conformance ReaderNLConstants()
{
  result = lazy protocol witness table cache variable for type ReaderNLConstants and conformance ReaderNLConstants;
  if (!lazy protocol witness table cache variable for type ReaderNLConstants and conformance ReaderNLConstants)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ReaderNLConstants and conformance ReaderNLConstants);
  }

  return result;
}

PhoneCallFlowDelegatePlugin::ReaderNLConstants_optional protocol witness for RawRepresentable.init(rawValue:) in conformance ReaderNLConstants@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::ReaderNLConstants_optional *a2@<X8>)
{
  result.value = ReaderNLConstants.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance ReaderNLConstants@<X0>(uint64_t *a1@<X8>)
{
  result = ReaderNLConstants.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

_BYTE *storeEnumTagSinglePayload for ReaderNLConstants(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t AppIntentDispatcher.__allocating_init()()
{
  v0 = swift_allocObject();
  AppIntentDispatcher.init()();
  return v0;
}

uint64_t AppIntentDispatcher.init()()
{
  v1 = type metadata accessor for IntentsServices.PayloadPrivacy();
  v2 = OUTLINED_FUNCTION_7(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  __chkstk_darwin(v2);
  v8 = &v25[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18AppIntentsServices0bC0O14InterfaceIdiomOSgMd, &_s18AppIntentsServices0bC0O14InterfaceIdiomOSgMR);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v11 = type metadata accessor for IntentsServices.DispatcherOptions();
  v12 = OUTLINED_FUNCTION_7(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  __chkstk_darwin(v12);
  v18 = &v25[-1] - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = [objc_opt_self() defaultEnvironment];
  v25[3] = type metadata accessor for LNEnvironment();
  v25[4] = &protocol witness table for LNEnvironment;
  v25[0] = v19;
  static IntentsServices.InterfaceIdiom.defaultForCurrentDevice.getter();
  (*(v4 + 104))(v8, enum case for IntentsServices.PayloadPrivacy.default(_:), v1);
  IntentsServices.DispatcherOptions.init(interfaceIdiom:payloadPrivacy:)();
  v20 = static IntentsServices.localDispatcher(clientLabel:source:environment:options:)();
  v22 = v21;
  (*(v14 + 8))(v18, v11);
  __swift_destroy_boxed_opaque_existential_1(v25);
  *(v0 + 16) = v20;
  *(v0 + 24) = v22;
  return v0;
}

unint64_t type metadata accessor for LNEnvironment()
{
  result = lazy cache variable for type metadata for LNEnvironment;
  if (!lazy cache variable for type metadata for LNEnvironment)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for LNEnvironment);
  }

  return result;
}

uint64_t AppIntentDispatcher.performLocally<A>(appIntentRepresentation:)()
{
  v1 = type metadata accessor for PhoneError();
  *(v0 + 16) = v1;
  v2 = *(*(v1 - 8) + 64) + 15;
  *(v0 + 24) = swift_task_alloc();

  return _swift_task_switch(AppIntentDispatcher.performLocally<A>(appIntentRepresentation:), 0, 0);
}

{
  v1 = v0[2];
  v2 = v0[3];
  swift_storeEnumTagMultiPayload();
  lazy protocol witness table accessor for type PhoneError and conformance PhoneError();
  swift_allocError();
  PhoneError.logged()(v3);
  outlined destroy of PhoneError(v2);
  swift_willThrow();

  v4 = v0[1];

  return v4();
}

uint64_t AppIntentDispatcher.deinit()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  return v0;
}

uint64_t AppIntentDispatcher.__deallocating_deinit()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t protocol witness for PhoneAppIntentDispatching.performLocally<A>(appIntentRepresentation:) in conformance AppIntentDispatcher(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = *(**v5 + 96);
  v16 = (v12 + *v12);
  v13 = v12[1];
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  *v14 = v6;
  v14[1] = protocol witness for UnlockDeviceFlowStrategyAsync.makePromptForDeviceUnlock() in conformance DefaultUnlockDeviceFlowStrategyAsync;

  return v16(a1, a2, a3, a4, a5);
}

uint64_t outlined init with copy of NonTerminalIntentNode?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology21NonTerminalIntentNodeVSgMd, &_s12SiriOntology21NonTerminalIntentNodeVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined assign with take of NonTerminalIntentNode?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology21NonTerminalIntentNodeVSgMd, &_s12SiriOntology21NonTerminalIntentNodeVSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t ReaderNlIntent.traversableOntologyNode.getter()
{
  v1 = *(v0 + *(type metadata accessor for ReaderNlIntent(0) + 20));
}

uint64_t ReaderNlIntent.traversableOntologyNode.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ReaderNlIntent(0) + 20);
  v4 = *(v1 + v3);

  *(v1 + v3) = a1;
  return result;
}

uint64_t ReaderNlIntent.init(intent:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology21NonTerminalIntentNodeVSgMd, &_s12SiriOntology21NonTerminalIntentNodeVSgMR);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v19 - v6;
  v8 = type metadata accessor for NonTerminalIntentNode();
  __swift_storeEnumTagSinglePayload(a2, 1, 1, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12SiriOntology0E4Node_pGMd, &_ss23_ContiguousArrayStorageCy12SiriOntology0E4Node_pGMR);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_424FD0;
  if (one-time initialization token for readerVerbNode != -1)
  {
    OUTLINED_FUNCTION_0_100();
  }

  v10 = static ReaderOntologyNode.readerVerbNode;
  *(v9 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology08TerminalB4NodeCy27PhoneCallFlowDelegatePlugin10ReaderVerbOGMd, &_s12SiriOntology08TerminalB4NodeCy27PhoneCallFlowDelegatePlugin10ReaderVerbOGMR);
  OUTLINED_FUNCTION_2_14();
  *(v9 + 64) = lazy protocol witness table accessor for type TerminalOntologyNode<VoiceMail.VoiceMailNoun> and conformance TerminalOntologyNode<A>(v11, &_s12SiriOntology08TerminalB4NodeCy27PhoneCallFlowDelegatePlugin10ReaderVerbOGMd, &_s12SiriOntology08TerminalB4NodeCy27PhoneCallFlowDelegatePlugin10ReaderVerbOGMR);
  *(v9 + 32) = v10;
  v12 = type metadata accessor for NonTerminalOntologyNode();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();

  v15 = NonTerminalOntologyNode.init(name:multicardinal:childNodes:)();
  *(a2 + *(type metadata accessor for ReaderNlIntent(0) + 20)) = v15;
  ReaderNlIntent.getReaderIntentNode(intent:)(v7);
  v16 = type metadata accessor for NLIntent();
  OUTLINED_FUNCTION_23_5(v16);
  (*(v17 + 8))(a1);
  return outlined assign with take of NonTerminalIntentNode?(v7, a2);
}

uint64_t *ReaderOntologyNode.readerVerbNode.unsafeMutableAddressor()
{
  if (one-time initialization token for readerVerbNode != -1)
  {
    OUTLINED_FUNCTION_0_100();
  }

  return &static ReaderOntologyNode.readerVerbNode;
}

uint64_t ReaderNlIntent.getReaderIntentNode(intent:)@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology21NonTerminalIntentNodeVSgMd, &_s12SiriOntology21NonTerminalIntentNodeVSgMR);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v106 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v116 = &v106 - v7;
  __chkstk_darwin(v8);
  v10 = &v106 - v9;
  __chkstk_darwin(v11);
  v13 = &v106 - v12;
  __chkstk_darwin(v14);
  v16 = &v106 - v15;
  v17 = type metadata accessor for NonTerminalIntentNode();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v115 = &v106 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v117 = &v106 - v22;
  __chkstk_darwin(v23);
  v118 = &v106 - v24;
  __chkstk_darwin(v25);
  v27 = &v106 - v26;
  NLIntent.rootNode.getter();
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology10IntentNode_pMd, &_s12SiriOntology10IntentNode_pMR);
  if (!swift_dynamicCast())
  {
    __swift_storeEnumTagSinglePayload(v16, 1, 1, v17);
    outlined destroy of PhoneCallNLIntent?(v16, &_s12SiriOntology21NonTerminalIntentNodeVSgMd, &_s12SiriOntology21NonTerminalIntentNodeVSgMR);
    goto LABEL_9;
  }

  v107 = v10;
  v111 = v28;
  __swift_storeEnumTagSinglePayload(v16, 0, 1, v17);
  v29 = *(v18 + 32);
  v110 = v18 + 32;
  v109 = v29;
  v29(v27, v16, v17);
  v119 = v27;
  if (NonTerminalIntentNode.ontologyNodeName.getter() == 0x6973734169726953 && v30 == 0xED0000746E617473)
  {
  }

  else
  {
    v32 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v32 & 1) == 0)
    {
      (*(v18 + 8))(v119, v17);
LABEL_9:
      v33 = a1;
LABEL_10:
      v34 = 1;
      v35 = v17;
      return __swift_storeEnumTagSinglePayload(v33, v34, 1, v35);
    }
  }

  v108 = v13;
  v106 = v5;
  v112 = v18;
  v113 = v17;
  v114 = a1;
  v36 = NonTerminalIntentNode.childNodes.getter();
  v37 = 0;
  v38 = *(v36 + 16);
  v39 = v36 + 32;
  v40 = _swiftEmptyArrayStorage;
  while (v38 != v37)
  {
    if (v37 >= *(v36 + 16))
    {
      __break(1u);
      goto LABEL_85;
    }

    outlined init with copy of SignalProviding(v39, &v122);
    __swift_project_boxed_opaque_existential_1(&v122, v123);
    if (dispatch thunk of IntentNode.ontologyNodeName.getter() == 0x6E6F69746361 && v41 == 0xE600000000000000)
    {
    }

    else
    {
      v43 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v43 & 1) == 0)
      {
        __swift_destroy_boxed_opaque_existential_1(&v122);
        goto LABEL_27;
      }
    }

    outlined init with take of SPHConversation(&v122, v120);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v121 = v40;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v40[2] + 1, 1);
      v40 = v121;
    }

    v46 = v40[2];
    v45 = v40[3];
    if (v46 >= v45 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v45 > 1), v46 + 1, 1);
      v40 = v121;
    }

    v40[2] = v46 + 1;
    outlined init with take of SPHConversation(v120, &v40[5 * v46 + 4]);
LABEL_27:
    v39 += 40;
    ++v37;
  }

  if (v40[2] != 1)
  {

    v53 = v113;
    (*(v112 + 8))(v119, v113);
    v33 = v114;
    v34 = 1;
    v35 = v53;
    return __swift_storeEnumTagSinglePayload(v33, v34, 1, v35);
  }

  specialized Collection.first.getter(&v122);

  v48 = v113;
  v47 = v114;
  v49 = v112;
  v50 = v119;
  if (!v123)
  {
    (*(v112 + 8))(v119, v113);
    outlined destroy of PhoneCallNLIntent?(&v122, &_s12SiriOntology10IntentNode_pSgMd, &_s12SiriOntology10IntentNode_pSgMR);
    v51 = v108;
    __swift_storeEnumTagSinglePayload(v108, 1, 1, v48);
LABEL_34:
    v54 = v51;
    goto LABEL_35;
  }

  v51 = v108;
  v52 = swift_dynamicCast();
  __swift_storeEnumTagSinglePayload(v51, v52 ^ 1u, 1, v48);
  if (__swift_getEnumTagSinglePayload(v51, 1, v48) == 1)
  {
    (*(v49 + 8))(v50, v48);
    goto LABEL_34;
  }

  v109(v118, v51, v48);
  v55 = NonTerminalIntentNode.childNodes.getter();
  v56 = 0;
  v57 = *(v55 + 16);
  v58 = v55 + 32;
  v59 = _swiftEmptyArrayStorage;
  while (2)
  {
    if (v57 != v56)
    {
      if (v56 >= *(v55 + 16))
      {
        __break(1u);
        goto LABEL_110;
      }

      outlined init with copy of SignalProviding(v58, &v122);
      __swift_project_boxed_opaque_existential_1(&v122, v123);
      if (dispatch thunk of IntentNode.ontologyNodeName.getter() == 0x646E616D6D6F63 && v60 == 0xE700000000000000)
      {
      }

      else
      {
        v62 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v62 & 1) == 0)
        {
          __swift_destroy_boxed_opaque_existential_1(&v122);
LABEL_51:
          v58 += 40;
          ++v56;
          continue;
        }
      }

      outlined init with take of SPHConversation(&v122, v120);
      v63 = swift_isUniquelyReferenced_nonNull_native();
      v121 = v59;
      if ((v63 & 1) == 0)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v59[2] + 1, 1);
        v59 = v121;
      }

      v65 = v59[2];
      v64 = v59[3];
      if (v65 >= v64 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v64 > 1), v65 + 1, 1);
        v59 = v121;
      }

      v59[2] = v65 + 1;
      outlined init with take of SPHConversation(v120, &v59[5 * v65 + 4]);
      goto LABEL_51;
    }

    break;
  }

  if (v59[2] != 1)
  {

    v48 = v113;
    v72 = *(v112 + 8);
LABEL_57:
    v72(v118, v48);
    v72(v119, v48);
    v33 = v114;
    goto LABEL_58;
  }

  specialized Collection.first.getter(&v122);

  v17 = v113;
  v66 = v114;
  v67 = v112;
  v68 = v119;
  if (!v123)
  {
    v74 = *(v112 + 8);
    v74(v118, v113);
    v74(v68, v17);
    outlined destroy of PhoneCallNLIntent?(&v122, &_s12SiriOntology10IntentNode_pSgMd, &_s12SiriOntology10IntentNode_pSgMR);
    v69 = v107;
    __swift_storeEnumTagSinglePayload(v107, 1, 1, v17);
LABEL_62:
    v75 = v69;
    goto LABEL_63;
  }

  v69 = v107;
  v70 = swift_dynamicCast();
  __swift_storeEnumTagSinglePayload(v69, v70 ^ 1u, 1, v17);
  if (__swift_getEnumTagSinglePayload(v69, 1, v17) == 1)
  {
    v71 = *(v67 + 8);
    v71(v118, v17);
    v71(v68, v17);
    goto LABEL_62;
  }

  v109(v117, v69, v17);
  result = NonTerminalIntentNode.childNodes.getter();
  v76 = result;
  v77 = 0;
  v78 = *(result + 16);
  v79 = result + 32;
  v80 = _swiftEmptyArrayStorage;
  while (2)
  {
    if (v78 != v77)
    {
      if (v77 >= *(v76 + 16))
      {
        __break(1u);
LABEL_114:
        __break(1u);
        return result;
      }

      outlined init with copy of SignalProviding(v79, &v122);
      __swift_project_boxed_opaque_existential_1(&v122, v123);
      if (dispatch thunk of IntentNode.ontologyNodeName.getter() == 0x7463656A627573 && v81 == 0xE700000000000000)
      {
      }

      else
      {
        v83 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v83 & 1) == 0)
        {
          result = __swift_destroy_boxed_opaque_existential_1(&v122);
LABEL_79:
          v79 += 40;
          ++v77;
          continue;
        }
      }

      outlined init with take of SPHConversation(&v122, v120);
      v84 = swift_isUniquelyReferenced_nonNull_native();
      v121 = v80;
      if ((v84 & 1) == 0)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v80[2] + 1, 1);
        v80 = v121;
      }

      v86 = v80[2];
      v85 = v80[3];
      if (v86 >= v85 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v85 > 1), v86 + 1, 1);
        v80 = v121;
      }

      v80[2] = v86 + 1;
      result = outlined init with take of SPHConversation(v120, &v80[5 * v86 + 4]);
      goto LABEL_79;
    }

    break;
  }

  if (v80[2] != 1)
  {
LABEL_85:

    v48 = v113;
    v72 = *(v112 + 8);
LABEL_86:
    v72(v117, v48);
    goto LABEL_57;
  }

  specialized Collection.first.getter(&v122);

  v17 = v113;
  v66 = v114;
  v87 = v112;
  if (!v123)
  {
    v91 = *(v112 + 8);
    v91(v117, v113);
    v91(v118, v17);
    v91(v119, v17);
    outlined destroy of PhoneCallNLIntent?(&v122, &_s12SiriOntology10IntentNode_pSgMd, &_s12SiriOntology10IntentNode_pSgMR);
    v88 = v116;
    __swift_storeEnumTagSinglePayload(v116, 1, 1, v17);
LABEL_88:
    v75 = v88;
LABEL_63:
    outlined destroy of PhoneCallNLIntent?(v75, &_s12SiriOntology21NonTerminalIntentNodeVSgMd, &_s12SiriOntology21NonTerminalIntentNodeVSgMR);
    v33 = v66;
    goto LABEL_10;
  }

  v88 = v116;
  v89 = swift_dynamicCast();
  __swift_storeEnumTagSinglePayload(v88, v89 ^ 1u, 1, v17);
  if (__swift_getEnumTagSinglePayload(v88, 1, v17) == 1)
  {
    v90 = *(v87 + 8);
    v90(v117, v17);
    v90(v118, v17);
    v90(v119, v17);
    goto LABEL_88;
  }

  v109(v115, v88, v17);
  result = NonTerminalIntentNode.childNodes.getter();
  v92 = result;
  v93 = 0;
  v94 = *(result + 16);
  v95 = result + 32;
  v96 = _swiftEmptyArrayStorage;
  while (2)
  {
    if (v94 != v93)
    {
      if (v93 >= *(v92 + 16))
      {
        goto LABEL_114;
      }

      outlined init with copy of SignalProviding(v95, &v122);
      __swift_project_boxed_opaque_existential_1(&v122, v123);
      if (dispatch thunk of IntentNode.ontologyNodeName.getter() == 0x726564616572 && v97 == 0xE600000000000000)
      {
      }

      else
      {
        v99 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v99 & 1) == 0)
        {
          result = __swift_destroy_boxed_opaque_existential_1(&v122);
LABEL_104:
          v95 += 40;
          ++v93;
          continue;
        }
      }

      outlined init with take of SPHConversation(&v122, v120);
      v100 = swift_isUniquelyReferenced_nonNull_native();
      v121 = v96;
      if ((v100 & 1) == 0)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v96[2] + 1, 1);
        v96 = v121;
      }

      v102 = v96[2];
      v101 = v96[3];
      if (v102 >= v101 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v101 > 1), v102 + 1, 1);
        v96 = v121;
      }

      v96[2] = v102 + 1;
      result = outlined init with take of SPHConversation(v120, &v96[5 * v102 + 4]);
      goto LABEL_104;
    }

    break;
  }

  if (v96[2] != 1)
  {
LABEL_110:

    v48 = v113;
    v72 = *(v112 + 8);
    v72(v115, v113);
    goto LABEL_86;
  }

  specialized Collection.first.getter(&v122);

  v48 = v113;
  v103 = *(v112 + 8);
  v103(v115, v113);
  v103(v117, v48);
  v103(v118, v48);
  v103(v119, v48);
  v47 = v114;
  if (!v123)
  {
    outlined destroy of PhoneCallNLIntent?(&v122, &_s12SiriOntology10IntentNode_pSgMd, &_s12SiriOntology10IntentNode_pSgMR);
    v104 = v106;
    __swift_storeEnumTagSinglePayload(v106, 1, 1, v48);
    goto LABEL_112;
  }

  v104 = v106;
  v105 = swift_dynamicCast();
  __swift_storeEnumTagSinglePayload(v104, v105 ^ 1u, 1, v48);
  if (__swift_getEnumTagSinglePayload(v104, 1, v48) == 1)
  {
LABEL_112:
    v54 = v104;
LABEL_35:
    outlined destroy of PhoneCallNLIntent?(v54, &_s12SiriOntology21NonTerminalIntentNodeVSgMd, &_s12SiriOntology21NonTerminalIntentNodeVSgMR);
    v33 = v47;
LABEL_58:
    v34 = 1;
    goto LABEL_59;
  }

  v109(v47, v104, v48);
  v33 = v47;
  v34 = 0;
LABEL_59:
  v35 = v48;
  return __swift_storeEnumTagSinglePayload(v33, v34, 1, v35);
}

uint64_t ReaderNlIntent.getReaderVerb.getter()
{
  if (one-time initialization token for readerVerbNode != -1)
  {
    OUTLINED_FUNCTION_0_100();
  }

  type metadata accessor for ReaderNlIntent(0);
  lazy protocol witness table accessor for type ReaderNlIntent and conformance ReaderNlIntent();
  IntentNodeTraversable.value<A>(forNode:)();
  return v1;
}

uint64_t one-time initialization function for readerVerbNode()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology08TerminalB4NodeCy27PhoneCallFlowDelegatePlugin10ReaderVerbOGMd, &_s12SiriOntology08TerminalB4NodeCy27PhoneCallFlowDelegatePlugin10ReaderVerbOGMR);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = TerminalOntologyNode.init(name:multicardinal:)();
  static ReaderOntologyNode.readerVerbNode = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type ReaderNlIntent and conformance ReaderNlIntent()
{
  result = lazy protocol witness table cache variable for type ReaderNlIntent and conformance ReaderNlIntent;
  if (!lazy protocol witness table cache variable for type ReaderNlIntent and conformance ReaderNlIntent)
  {
    type metadata accessor for ReaderNlIntent(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ReaderNlIntent and conformance ReaderNlIntent);
  }

  return result;
}

uint64_t static ReaderOntologyNode.readerVerbNode.getter()
{
  if (one-time initialization token for readerVerbNode != -1)
  {
    OUTLINED_FUNCTION_0_100();
  }
}

uint64_t ReaderOntologyNode.__allocating_init(name:multicardinal:)()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  return ReaderOntologyNode.init(name:multicardinal:)();
}

uint64_t ReaderOntologyNode.init(name:multicardinal:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12SiriOntology0E4Node_pGMd, &_ss23_ContiguousArrayStorageCy12SiriOntology0E4Node_pGMR);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_424FD0;
  if (one-time initialization token for readerVerbNode != -1)
  {
    OUTLINED_FUNCTION_0_100();
  }

  v1 = static ReaderOntologyNode.readerVerbNode;
  *(v0 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology08TerminalB4NodeCy27PhoneCallFlowDelegatePlugin10ReaderVerbOGMd, &_s12SiriOntology08TerminalB4NodeCy27PhoneCallFlowDelegatePlugin10ReaderVerbOGMR);
  OUTLINED_FUNCTION_2_14();
  *(v0 + 64) = lazy protocol witness table accessor for type TerminalOntologyNode<VoiceMail.VoiceMailNoun> and conformance TerminalOntologyNode<A>(v2, &_s12SiriOntology08TerminalB4NodeCy27PhoneCallFlowDelegatePlugin10ReaderVerbOGMd, &_s12SiriOntology08TerminalB4NodeCy27PhoneCallFlowDelegatePlugin10ReaderVerbOGMR);
  *(v0 + 32) = v1;

  return NonTerminalOntologyNode.init(name:multicardinal:childNodes:)();
}

PhoneCallFlowDelegatePlugin::ReaderVerb_optional __swiftcall ReaderVerb.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of ReaderVerb.init(rawValue:), v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t ReaderVerb.rawValue.getter(char a1)
{
  if (!a1)
  {
    return 0x65756E69746E6F63;
  }

  if (a1 == 1)
  {
    return 1886352499;
  }

  return 0x746165706572;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance ReaderVerb(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *a1;
  return specialized == infix<A>(_:_:)();
}

unint64_t lazy protocol witness table accessor for type ReaderVerb and conformance ReaderVerb()
{
  result = lazy protocol witness table cache variable for type ReaderVerb and conformance ReaderVerb;
  if (!lazy protocol witness table cache variable for type ReaderVerb and conformance ReaderVerb)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ReaderVerb and conformance ReaderVerb);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ReaderVerb and conformance ReaderVerb;
  if (!lazy protocol witness table cache variable for type ReaderVerb and conformance ReaderVerb)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ReaderVerb and conformance ReaderVerb);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ReaderVerb and conformance ReaderVerb;
  if (!lazy protocol witness table cache variable for type ReaderVerb and conformance ReaderVerb)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ReaderVerb and conformance ReaderVerb);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ReaderVerb and conformance ReaderVerb;
  if (!lazy protocol witness table cache variable for type ReaderVerb and conformance ReaderVerb)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ReaderVerb and conformance ReaderVerb);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ReaderVerb and conformance ReaderVerb;
  if (!lazy protocol witness table cache variable for type ReaderVerb and conformance ReaderVerb)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ReaderVerb and conformance ReaderVerb);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ReaderVerb and conformance ReaderVerb;
  if (!lazy protocol witness table cache variable for type ReaderVerb and conformance ReaderVerb)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ReaderVerb and conformance ReaderVerb);
  }

  return result;
}

PhoneCallFlowDelegatePlugin::ReaderVerb_optional protocol witness for RawRepresentable.init(rawValue:) in conformance ReaderVerb@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::ReaderVerb_optional *a2@<X8>)
{
  result.value = ReaderVerb.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance ReaderVerb@<X0>(uint64_t *a1@<X8>)
{
  result = ReaderVerb.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t protocol witness for static TerminalNodeValueType.fromIntentNodeValue(_:) in conformance ReaderVerb(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v12 = lazy protocol witness table accessor for type ReaderVerb and conformance ReaderVerb();
  v13 = lazy protocol witness table accessor for type ReaderVerb and conformance ReaderVerb();
  v14 = lazy protocol witness table accessor for type ReaderVerb and conformance ReaderVerb();

  return static TerminalNodeBoundedSemanticValue<>.fromIntentNodeValue(_:)(a1, a2, v12, v13, v14, v15, v16, v17, a9, a10);
}

void type metadata completion function for ReaderNlIntent()
{
  type metadata accessor for NonTerminalIntentNode?();
  if (v0 <= 0x3F)
  {
    type metadata accessor for NonTerminalOntologyNode();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata accessor for NonTerminalIntentNode?()
{
  if (!lazy cache variable for type metadata for NonTerminalIntentNode?)
  {
    type metadata accessor for NonTerminalIntentNode();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for NonTerminalIntentNode?);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for ReaderVerb(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t VoiceMailPosition.rawValue.getter(char a1)
{
  result = 0x7473726966;
  switch(a1)
  {
    case 1:
      result = 0x656C6464696DLL;
      break;
    case 2:
      result = 1953718636;
      break;
    case 3:
      result = 0x6E776F6E6B6E75;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t key path setter for ReadVoiceMailAction.nextAction : ReadVoiceMailAction(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 152);
  v5 = swift_unknownObjectRetain();
  return v4(v5, v3);
}

uint64_t ReadVoiceMailAction.paginatedItem.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin19ReadVoiceMailAction_paginatedItem;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow13PaginatedItemVySo12INCallRecordCGMd, &_s11SiriKitFlow13PaginatedItemVySo12INCallRecordCGMR);
  v5 = OUTLINED_FUNCTION_23_1(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t ReadVoiceMailAction.__allocating_init(paginatedCallRecord:intent:intentResponse:aceServiceInvoker:searchCallHistoryCatFamily:)(uint64_t a1, void *a2, void *a3, uint64_t *a4, uint64_t a5)
{
  v11 = *(v5 + 48);
  v12 = *(v5 + 52);
  v13 = swift_allocObject();
  ReadVoiceMailAction.init(paginatedCallRecord:intent:intentResponse:aceServiceInvoker:searchCallHistoryCatFamily:)(a1, a2, a3, a4, a5);
  return v13;
}

void *ReadVoiceMailAction.init(paginatedCallRecord:intent:intentResponse:aceServiceInvoker:searchCallHistoryCatFamily:)(uint64_t a1, void *a2, void *a3, uint64_t *a4, uint64_t a5)
{
  v6 = v5;
  v54 = a5;
  v55 = a4;
  v51 = a1;
  v10 = type metadata accessor for CATOption();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  OUTLINED_FUNCTION_4();
  v52 = v13 - v12;
  v14 = type metadata accessor for Page();
  v15 = OUTLINED_FUNCTION_7(v14);
  v48 = v16;
  v49 = v15;
  v18 = *(v17 + 64);
  __chkstk_darwin(v15);
  OUTLINED_FUNCTION_4();
  v21 = v20 - v19;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow13PaginatedItemVySo12INCallRecordCGMd, &_s11SiriKitFlow13PaginatedItemVySo12INCallRecordCGMR);
  v23 = OUTLINED_FUNCTION_7(v22);
  v25 = v24;
  v50 = v24;
  v27 = *(v26 + 64);
  v28 = __chkstk_darwin(v23);
  v30 = &v46 - v29;
  v6[2] = 0;
  v53 = v6 + 2;
  v6[3] = 0;
  v6[4] = 0xD000000000000013;
  v6[5] = 0x8000000000443310;
  v31 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin19ReadVoiceMailAction_paginatedItem;
  v32 = *(v25 + 16);
  v32(v6 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin19ReadVoiceMailAction_paginatedItem, a1, v22, v28);
  *(v6 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin19ReadVoiceMailAction_intent) = a2;
  *(v6 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin19ReadVoiceMailAction_intentResponse) = a3;
  outlined init with copy of SignalProviding(v55, v6 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin19ReadVoiceMailAction_aceServiceInvoker);
  *(v6 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin19ReadVoiceMailAction_searchCallHistoryCatFamily) = v54;
  (v32)(v30, v6 + v31, v22);
  v33 = a2;
  v47 = v33;
  v34 = a3;

  PaginatedItem.page.getter();
  v50 = *(v50 + 8);
  (v50)(v30, v22);
  LOBYTE(v30) = Page.isFirstPage.getter();
  (*(v48 + 8))(v21, v49);
  *(v6 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin19ReadVoiceMailAction_isLeadingSavedVoiceMailPostPrompt) = static SearchCallHistoryHelper.isLeadingSavedVoiceMail(isFirstPage:intentResponse:intent:)(v30 & 1, v34, v33) & 1;
  PaginatedItem.item.getter();
  v35 = v57;
  v36 = [v57 identifier];

  v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v39 = v38;

  LOBYTE(v36) = *(v6 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin19ReadVoiceMailAction_isLeadingSavedVoiceMailPostPrompt);
  outlined init with copy of SignalProviding(v6 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin19ReadVoiceMailAction_aceServiceInvoker, v56);
  type metadata accessor for SearchCallHistoryCATs();
  static CATOption.defaultMode.getter();
  v40 = CATWrapper.__allocating_init(options:globals:)();
  type metadata accessor for PlayVoiceMailAction();
  swift_allocObject();
  v41 = PlayVoiceMailAction.init(voicemailIdentifier:isLeadingSavedVoiceMailPostPrompt:aceServiceInvoker:searchCallHistoryCatFamily:)(v37, v39, v36, v56, v40);

  __swift_destroy_boxed_opaque_existential_1(v55);
  (v50)(v51, v22);
  v42 = _s27PhoneCallFlowDelegatePlugin19PlayVoiceMailActionCAC07SiriKitC00I0AAWlTm_0(&lazy protocol witness table cache variable for type PlayVoiceMailAction and conformance PlayVoiceMailAction, type metadata accessor for PlayVoiceMailAction);
  v43 = v53;
  swift_beginAccess();
  v44 = *v43;
  *v43 = v41;
  v6[3] = v42;
  swift_unknownObjectRelease();
  return v6;
}

uint64_t ReadVoiceMailAction.run(_:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  v5[2] = a1;
  v5[3] = a2;
  v5[4] = v2;
  v6 = *(*v2 + 184);

  v6(partial apply for closure #1 in ReadVoiceMailAction.run(_:), v5);
}

void closure #1 in ReadVoiceMailAction.run(_:)(void *a1, char a2, void (*a3)(void), uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    a3(0);
  }

  else
  {
    v8 = *(a5 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin19ReadVoiceMailAction_aceServiceInvoker + 32);
    __swift_project_boxed_opaque_existential_1((a5 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin19ReadVoiceMailAction_aceServiceInvoker), *(a5 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin19ReadVoiceMailAction_aceServiceInvoker + 24));
    v9 = swift_allocObject();
    *(v9 + 16) = a3;
    *(v9 + 24) = a4;
    outlined copy of Result<SASTSideBySideButtonsItem, Error>(a1, 0);
    type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SABaseCommand, SABaseCommand_ptr);

    dispatch thunk of AceServiceInvoker.submit<A>(_:completion:)();

    outlined consume of Result<SAIntentGroupLaunchAppWithIntent, Error>(a1, 0);
  }
}

uint64_t closure #1 in closure #1 in ReadVoiceMailAction.run(_:)(uint64_t a1, void (*a2)(uint64_t))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOySo13SABaseCommandC11SiriKitFlow06SubmitC5ErrorOGMd, &_ss6ResultOySo13SABaseCommandC11SiriKitFlow06SubmitC5ErrorOGMR);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = &v16 - v6;
  v8 = type metadata accessor for SubmitCommandError();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PhoneCallFlowState<INHangUpCallIntent, INHangUpCallIntentResponse>(a1, v7, &_ss6ResultOySo13SABaseCommandC11SiriKitFlow06SubmitC5ErrorOGMd, &_ss6ResultOySo13SABaseCommandC11SiriKitFlow06SubmitC5ErrorOGMR);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v9 + 32))(v12, v7, v8);
    _s27PhoneCallFlowDelegatePlugin19PlayVoiceMailActionCAC07SiriKitC00I0AAWlTm_0(&lazy protocol witness table cache variable for type SubmitCommandError and conformance SubmitCommandError, &type metadata accessor for SubmitCommandError);
    v13 = swift_allocError();
    (*(v9 + 16))(v14, v12, v8);
    a2(v13);

    return (*(v9 + 8))(v12, v8);
  }

  else
  {
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v7, &_ss6ResultOySo13SABaseCommandC11SiriKitFlow06SubmitC5ErrorOGMd, &_ss6ResultOySo13SABaseCommandC11SiriKitFlow06SubmitC5ErrorOGMR);
    return (a2)(0);
  }
}

uint64_t ReadVoiceMailAction.makeSummaryView(_:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;

  ReadVoiceMailAction.getTemplatingResult(_:)(partial apply for closure #1 in ReadVoiceMailAction.makeSummaryView(_:), v4);
}

uint64_t closure #1 in ReadVoiceMailAction.makeSummaryView(_:)(uint64_t a1, void (*a2)(uint64_t, uint64_t))
{
  v4 = type metadata accessor for TemplatingResult();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = (&v19 - v11);
  outlined init with copy of PhoneCallFlowState<INHangUpCallIntent, INHangUpCallIntentResponse>(a1, &v19 - v11, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = *v12;
    swift_errorRetain();
    a2(v13, 1);
  }

  else
  {
    (*(v5 + 32))(v8, v12, v4);
    v15 = type metadata accessor for ViewFactory();
    v16 = *(v15 + 48);
    v17 = *(v15 + 52);
    swift_allocObject();
    ViewFactory.init(ttsEnabled:)();
    v18 = dispatch thunk of ViewFactory.makeSummaryView(templateResult:snippets:listenAfterSpeaking:canUseServerTTS:)();

    a2(v18, 0);

    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t ReadVoiceMailAction.getTemplatingResult(_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v48 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v50 = v47 - v7;
  v8 = type metadata accessor for Locale();
  v9 = OUTLINED_FUNCTION_7(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  __chkstk_darwin(v9);
  OUTLINED_FUNCTION_4();
  v16 = (v15 - v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow13PaginatedItemVySo12INCallRecordCGMd, &_s11SiriKitFlow13PaginatedItemVySo12INCallRecordCGMR);
  PaginatedItem.item.getter();
  v17 = v51[5];
  type metadata accessor for AppInfoBuilder();
  v18 = swift_allocObject();
  static Device.current.getter();
  __swift_project_boxed_opaque_existential_1(v51, v51[3]);
  dispatch thunk of DeviceState.siriLocale.getter();
  __swift_destroy_boxed_opaque_existential_1(v51);
  v19 = _s27PhoneCallFlowDelegatePlugin0aB6RecordC10getBuilder04callF07options07appInfoH06localeAC0H0CSo06INCallF0C_AC7OptionsVAA03AppL8Building_p10Foundation6LocaleVtFZTf4nnenn_nAA0plH0C_Tt3g5(v17, 0, v18, v16);
  v20 = type metadata accessor for PhoneCallRecord(0);
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  swift_allocObject();
  v23 = PhoneCallRecord.init(builder:)(v19);

  (*(v11 + 8))(v16, v8);
  v24 = [*(v3 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin19ReadVoiceMailAction_intentResponse) callRecords];
  if (v24)
  {
    v25 = v24;
    type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INCallRecord, INCallRecord_ptr);
    v26 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (specialized Array.count.getter(v26))
    {
      v27 = specialized Array.count.getter(v26);

      ReadVoiceMailAction.getVoiceMailPosition(callRecordsCount:)(v27);
      v49 = a1;
      v28 = *(v23 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_unseen);
      v29 = *(v3 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin19ReadVoiceMailAction_searchCallHistoryCatFamily);
      type metadata accessor for PhoneSearchCallHistoryIntent(0);
      v30 = *(v3 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin19ReadVoiceMailAction_intent);

      PhoneSearchCallHistoryIntent.__allocating_init(intent:)(v30);
      INSearchCallHistoryIntent.isSingleDateRequest.getter();
      v47[1] = v31;
      INSearchCallHistoryIntent.isTimeRangeRequest.getter();
      v32 = v50;
      SpeakableString.init(print:speak:)();
      v33 = type metadata accessor for SpeakableString();
      __swift_storeEnumTagSinglePayload(v32, 0, 1, v33);
      INSearchCallHistoryIntentResponse.newRecordsCount.getter();
      INSearchCallHistoryIntentResponse.savedRecordsCount.getter();
      if (v28 == 1)
      {
        v34 = *(*v29 + class metadata base offset for SearchCallHistoryCATs + 672);
        v35 = OUTLINED_FUNCTION_4_71();
        v36(v35);
      }

      else
      {
        v37 = *(*v29 + class metadata base offset for SearchCallHistoryCATs + 736);
        v46 = *(v3 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin19ReadVoiceMailAction_isLeadingSavedVoiceMailPostPrompt);
        v38 = OUTLINED_FUNCTION_4_71();
        v39(v38);
      }

      return outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v32, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    }
  }

  if (one-time initialization token for siriPhone != -1)
  {
    swift_once();
  }

  v41 = type metadata accessor for Logger();
  __swift_project_value_buffer(v41, static Logger.siriPhone);
  v42 = Logger.logObject.getter();
  v43 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v51[0] = v45;
    *v44 = 136315138;
    *(v44 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000003ALL, 0x8000000000460A30, v51);
    _os_log_impl(&dword_0, v42, v43, "%s", v44, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v45);
  }

  static SiriKitLifecycle._logCrashToEventBus(_:)();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t ReadVoiceMailAction.getVoiceMailPosition(callRecordsCount:)(Swift::Int a1)
{
  v3 = type metadata accessor for Page();
  v4 = OUTLINED_FUNCTION_7(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  __chkstk_darwin(v4);
  OUTLINED_FUNCTION_4();
  v11 = v10 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow13PaginatedItemVySo12INCallRecordCGMd, &_s11SiriKitFlow13PaginatedItemVySo12INCallRecordCGMR);
  PaginatedItem.item.getter();
  v12 = INCallRecord.unseen.getter();

  if (v12 == 2)
  {
    return 3;
  }

  v14 = *(v1 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin19ReadVoiceMailAction_intentResponse);
  INSearchCallHistoryIntentResponse.newRecordsCount.getter();
  if (v12)
  {
    a1 = v15;
    v16 = 0;
  }

  else
  {
    v16 = v15;
  }

  PaginatedItem.page.getter();
  v17 = Page.pageIndex.getter();
  (*(v6 + 8))(v11, v3);
  return VoiceMailPosition.init(start:end:index:)(v16, a1, v17);
}

PhoneCallFlowDelegatePlugin::VoiceMailPosition __swiftcall VoiceMailPosition.init(start:end:index:)(Swift::Int start, Swift::Int end, Swift::Int index)
{
  if (start == index)
  {
    LOBYTE(start) = 0;
    return start;
  }

  if (__OFSUB__(end, 1))
  {
    __break(1u);
    goto LABEL_14;
  }

  if (end - 1 == index)
  {
    LOBYTE(start) = 2;
    return start;
  }

  if (end < start)
  {
LABEL_14:
    __break(1u);
    return start;
  }

  if (end < index || index < start)
  {
    LOBYTE(start) = 3;
  }

  else
  {
    LOBYTE(start) = 1;
  }

  return start;
}

uint64_t ReadVoiceMailAction.deinit()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  v3 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin19ReadVoiceMailAction_paginatedItem;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow13PaginatedItemVySo12INCallRecordCGMd, &_s11SiriKitFlow13PaginatedItemVySo12INCallRecordCGMR);
  OUTLINED_FUNCTION_23_1(v4);
  (*(v5 + 8))(v0 + v3);

  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin19ReadVoiceMailAction_aceServiceInvoker));
  v6 = *(v0 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin19ReadVoiceMailAction_searchCallHistoryCatFamily);

  return v0;
}

uint64_t ReadVoiceMailAction.__deallocating_deinit()
{
  ReadVoiceMailAction.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void (*protocol witness for StaticAction.nextAction.modify in conformance ReadVoiceMailAction(void *a1))(void *a1)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = (*(*v1 + 160))();
  return protocol witness for SiriEnvironmentLocating.siriEnvironment.modify in conformance BusinessCompositionFlow;
}

PhoneCallFlowDelegatePlugin::VoiceMailPosition_optional __swiftcall VoiceMailPosition.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of VoiceMailPosition.init(rawValue:), v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

uint64_t type metadata accessor for ReadVoiceMailAction()
{
  result = type metadata singleton initialization cache for ReadVoiceMailAction;
  if (!type metadata singleton initialization cache for ReadVoiceMailAction)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance VoiceMailPosition(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *a1;
  return specialized == infix<A>(_:_:)();
}

unint64_t lazy protocol witness table accessor for type VoiceMailPosition and conformance VoiceMailPosition()
{
  result = lazy protocol witness table cache variable for type VoiceMailPosition and conformance VoiceMailPosition;
  if (!lazy protocol witness table cache variable for type VoiceMailPosition and conformance VoiceMailPosition)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VoiceMailPosition and conformance VoiceMailPosition);
  }

  return result;
}

PhoneCallFlowDelegatePlugin::VoiceMailPosition_optional protocol witness for RawRepresentable.init(rawValue:) in conformance VoiceMailPosition@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::VoiceMailPosition_optional *a2@<X8>)
{
  result.value = VoiceMailPosition.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance VoiceMailPosition@<X0>(uint64_t *a1@<X8>)
{
  result = VoiceMailPosition.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

void type metadata completion function for ReadVoiceMailAction()
{
  type metadata accessor for PaginatedItem<INCallRecord>();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

_BYTE *storeEnumTagSinglePayload for VoiceMailPosition(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t _s27PhoneCallFlowDelegatePlugin19PlayVoiceMailActionCAC07SiriKitC00I0AAWlTm_0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t specialized ContinueReadingVoicemailFlow.init(app:intent:intentResponse:phoneSearchCallHistoryIntent:isSingleVoicemailRequest:isRepeatRequest:sharedGlobals:windowItems:windowParam:totalItemCount:playVoicemailCommands:voiceMailPositionString:searchCallHistorySharedGlobals:)(uint64_t a1, void *a2, void *a3, uint64_t a4, char a5, char a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, char a13, uint64_t a14)
{
  *(v14 + direct field offset for ContinueReadingVoicemailFlow.isRepeatRequest) = 0;
  v21 = (v14 + direct field offset for ContinueReadingVoicemailFlow.logPrefix);
  *v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin024ContinueReadingVoicemailC0CyAA019PromptForValueAfterghC8StrategyCGMd, &_s27PhoneCallFlowDelegatePlugin024ContinueReadingVoicemailC0CyAA019PromptForValueAfterghC8StrategyCGMR);
  v21[1] = &outlined read-only object #0 of specialized ContinueReadingVoicemailFlow.init(app:intent:intentResponse:phoneSearchCallHistoryIntent:isSingleVoicemailRequest:isRepeatRequest:sharedGlobals:windowItems:windowParam:totalItemCount:playVoicemailCommands:voiceMailPositionString:searchCallHistorySharedGlobals:);
  v21[2] = 0;
  v21[3] = 0;
  *(v14 + 32) = a2;
  *(v14 + 40) = a3;
  *(v14 + 88) = a1;
  *(v14 + 96) = a4;
  *(v14 + direct field offset for ContinueReadingVoicemailFlow.isSingleVoicemailRequest) = a5;
  v34 = a7;
  _s27PhoneCallFlowDelegatePlugin22SharedGlobalsProviding_pWOcTm_0(a7, v14 + 48);
  v22 = direct field offset for ContinueReadingVoicemailFlow.windowParam;
  v23 = type metadata accessor for WindowedPaginationParameters();
  v24 = *(v23 - 8);
  (*(v24 + 16))(v14 + v22, a9, v23);
  *(v14 + 24) = a8;
  v25 = v14 + direct field offset for ContinueReadingVoicemailFlow.totalItemCount;
  *v25 = a10;
  *(v25 + 8) = a11 & 1;
  *(v14 + 304) = a12;
  *(v14 + 312) = a13;
  outlined init with copy of SearchCallHistorySharedGlobals(a14, v14 + 104);
  if (a6)
  {
    outlined destroy of SearchCallHistorySharedGlobals(a14);
    (*(v24 + 8))(a9, v23);
    __swift_destroy_boxed_opaque_existential_1(v34);
    *(v14 + 16) = 7;
    *(v14 + direct field offset for ContinueReadingVoicemailFlow.isLeadingSavedVoiceMailPostPrompt) = 0;
  }

  else
  {

    v26 = a2;
    v27 = a3;

    if (a5 & 1 | ((WindowedPaginationParameters.isFirstWindow.getter() & 1) == 0))
    {
      v28 = 7;
    }

    else
    {
      v28 = 5;
    }

    *(v14 + 16) = v28;
    v29 = WindowedPaginationParameters.isFirstWindow.getter();
    v30 = static SearchCallHistoryHelper.isLeadingSavedVoiceMail(isFirstPage:intentResponse:intent:)(v29 & 1, v27, v26);

    outlined destroy of SearchCallHistorySharedGlobals(a14);
    (*(v24 + 8))(a9, v23);
    __swift_destroy_boxed_opaque_existential_1(v34);
    *(v14 + direct field offset for ContinueReadingVoicemailFlow.isLeadingSavedVoiceMailPostPrompt) = v30 & 1;
  }

  return v14;
}

uint64_t ReadVoicemailResultSetFlowProvider.totalItemCount.getter()
{
  OUTLINED_FUNCTION_2_0();
  v1 = *((*(v0 + 216))() + 16);

  return v1;
}

uint64_t ReadVoicemailResultSetFlowProvider.__allocating_init(app:intent:intentResponse:sharedGlobals:searchCallHistorySharedGlobals:responseGenerator:)(uint64_t a1, void *a2, void *a3, uint64_t *a4, void *a5, uint64_t *a6)
{
  v12 = swift_allocObject();
  ReadVoicemailResultSetFlowProvider.init(app:intent:intentResponse:sharedGlobals:searchCallHistorySharedGlobals:responseGenerator:)(a1, a2, a3, a4, a5, a6);
  return v12;
}

void ReadVoicemailResultSetFlowProvider.init(app:intent:intentResponse:sharedGlobals:searchCallHistorySharedGlobals:responseGenerator:)(uint64_t a1, void *a2, void *a3, uint64_t *a4, void *a5, uint64_t *a6)
{
  v8 = v6;
  v59 = *v8;
  v15 = type metadata accessor for Locale();
  v16 = OUTLINED_FUNCTION_7(v15);
  v68 = v17;
  v69 = v16;
  v19 = *(v18 + 64);
  __chkstk_darwin(v16);
  v21 = (&v57 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8[50] = -1;
  v8[51] = type metadata accessor for ReadVoicemailResultSetFlowProvider();
  v8[52] = &outlined read-only object #0 of ReadVoicemailResultSetFlowProvider.init(app:intent:intentResponse:sharedGlobals:searchCallHistorySharedGlobals:responseGenerator:);
  v8[53] = 0;
  v8[54] = 0;
  v8[49] = a1;
  v62 = a4;
  _s27PhoneCallFlowDelegatePlugin22SharedGlobalsProviding_pWOcTm_0(a4, (v8 + 4));
  v61 = a6;
  _s27PhoneCallFlowDelegatePlugin22SharedGlobalsProviding_pWOcTm_0(a6, (v8 + 9));
  v8[14] = a2;
  v8[15] = a3;
  _s27PhoneCallFlowDelegatePlugin22SharedGlobalsProviding_pWOcTm_0(a5, (v8 + 43));
  v63 = a5;
  v22 = a5[23];
  v23 = a5[24];
  v8[16] = v22;
  v8[48] = v23;
  v24 = a3;

  v25 = a2;

  v60 = a1;
  v26 = App.isFirstParty()();
  v57 = v7;
  v64 = v24;
  v65 = v8;
  if (v26)
  {
    static SearchCallHistoryCatParameterHelper.makePhonePersons1P(intent:intentResponse:)(v25, v24);

    goto LABEL_8;
  }

  if ([v25 recipient])
  {
    v27 = OUTLINED_FUNCTION_2_4();
    type metadata accessor for PhonePerson(v27);
    v28 = v22;
    static Device.current.getter();
    __swift_project_boxed_opaque_existential_1(v70, v71);
    dispatch thunk of DeviceState.siriLocale.getter();
    __swift_destroy_boxed_opaque_existential_1(v70);
    v29 = static PhonePerson.make(phonePerson:options:locale:)(v22, 0, v21);

    (*(v68 + 8))(v21, v69);
    if (v29)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
      OUTLINED_FUNCTION_4_68();
      v30 = swift_allocObject();
      *(v30 + 16) = xmmword_426260;
      *(v30 + 32) = v29;

      v24 = v64;
      v8 = v65;
      goto LABEL_8;
    }

    v24 = v64;
    v8 = v65;
  }

LABEL_8:
  type metadata accessor for PhoneSearchCallHistoryIntent(0);
  OUTLINED_FUNCTION_24_10();
  type metadata accessor for PhonePersonList();
  v31 = OUTLINED_FUNCTION_40_0();
  v32 = PhonePersonList.__allocating_init(list:)(v31);
  v58 = v25;
  v8[17] = PhoneSearchCallHistoryIntent.__allocating_init(intent:recipients:)(v58, v32);
  v33 = outlined bridged method (pb) of @objc INSearchCallHistoryIntentResponse.callRecords.getter(v24);
  if (v33)
  {
    v34 = v33;
  }

  else
  {
    v34 = _swiftEmptyArrayStorage;
  }

  v35 = specialized Array.count.getter(v34);
  if (v35)
  {
    v36 = v35;
    v72 = _swiftEmptyArrayStorage;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    if (v36 < 0)
    {
      __break(1u);
      return;
    }

    v37 = 0;
    v38 = v72;
    v66 = v34 & 0xC000000000000001;
    v67 = v36;
    v39 = (v68 + 8);
    v68 = v34;
    do
    {
      if (v66)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v40 = *(v34 + 8 * v37 + 32);
      }

      OUTLINED_FUNCTION_2_4();
      type metadata accessor for AppInfoBuilder();
      v41 = swift_allocObject();
      static Device.current.getter();
      __swift_project_boxed_opaque_existential_1(v70, v71);
      dispatch thunk of DeviceState.siriLocale.getter();
      __swift_destroy_boxed_opaque_existential_1(v70);
      v42 = v34;
      _s27PhoneCallFlowDelegatePlugin0aB6RecordC10getBuilder04callF07options07appInfoH06localeAC0H0CSo06INCallF0C_AC7OptionsVAA03AppL8Building_p10Foundation6LocaleVtFZTf4nnenn_nAA0plH0C_Tt3g5(v42, 1, v41, v21);
      v43 = OUTLINED_FUNCTION_2_4();
      v44 = type metadata accessor for PhoneCallRecord(v43);
      OUTLINED_FUNCTION_12_8(v44);
      swift_allocObject();
      v45 = OUTLINED_FUNCTION_40_0();
      v46 = PhoneCallRecord.init(builder:)(v45);

      (*v39)(v21, v69);
      v72 = v38;
      v47 = v38[2];
      if (v47 >= v38[3] >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v38 = v72;
      }

      ++v37;
      v38[2] = v47 + 1;
      v48 = &v38[2 * v47];
      v48[4] = v46;
      v48[5] = v42;
      v34 = v68;
    }

    while (v67 != v37);
  }

  else
  {

    v38 = _swiftEmptyArrayStorage;
  }

  v49 = v38[2];
  v50 = _swiftEmptyArrayStorage;
  if (v49)
  {
    v70[0] = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v51 = v38 + 4;
    do
    {
      v52 = *v51;
      v51 += 2;

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v53 = *(v70[0] + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      --v49;
    }

    while (v49);
    v50 = v70[0];
  }

  v54 = v65;
  v65[3] = v50;
  static ReadVoicemailResultSetFlowProvider.getSortedVoicemails(callRecords:)(v38);
  v56 = v55;

  __swift_destroy_boxed_opaque_existential_1(v61);
  __swift_destroy_boxed_opaque_existential_1(v62);
  v54[2] = v56;
  memcpy(v54 + 18, v63, 0xC8uLL);
}

void static ReadVoicemailResultSetFlowProvider.getSortedVoicemails(callRecords:)(uint64_t a1)
{
  v2 = 0;
  v3 = *(a1 + 16);
  v4 = a1 + 32;
LABEL_2:
  v5 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_unseen;
  v6 = (v4 + 16 * v2);
  while (v3 != v2)
  {
    if (v2 >= v3)
    {
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
      return;
    }

    v7 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      goto LABEL_25;
    }

    v9 = *v6;
    v6 += 2;
    v8 = v9;
    ++v2;
    if (*(v9 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_unseen))
    {
      v10 = *(v6 - 1);

      v11 = v10;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v12 = _swiftEmptyArrayStorage[2];
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      v13 = _swiftEmptyArrayStorage[2];
      if (v13 >= _swiftEmptyArrayStorage[3] >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      _swiftEmptyArrayStorage[2] = v13 + 1;
      v14 = &_swiftEmptyArrayStorage[2 * v13];
      v14[4] = v8;
      v14[5] = v11;
      v2 = v7;
      goto LABEL_2;
    }
  }

  v15 = 0;
LABEL_13:
  v16 = (a1 + 32 + 16 * v15);
  while (v3 != v15)
  {
    if (v15 >= v3)
    {
      goto LABEL_26;
    }

    v17 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      goto LABEL_27;
    }

    v19 = *v16;
    v16 += 2;
    v18 = v19;
    ++v15;
    if ((*(v19 + v5) & 1) == 0)
    {
      v20 = *(v16 - 1);

      v21 = v20;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v22 = _swiftEmptyArrayStorage[2];
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      v23 = _swiftEmptyArrayStorage[2];
      if (v23 >= _swiftEmptyArrayStorage[3] >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      _swiftEmptyArrayStorage[2] = v23 + 1;
      v24 = &_swiftEmptyArrayStorage[2 * v23];
      v24[4] = v18;
      v24[5] = v21;
      v5 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallRecord_unseen;
      v15 = v17;
      goto LABEL_13;
    }
  }

  specialized Array.append<A>(contentsOf:)(_swiftEmptyArrayStorage);
}

uint64_t ReadVoicemailResultSetFlowProvider.makeSingleItemFlow()()
{
  OUTLINED_FUNCTION_15();
  v1[33] = v0;
  v2 = type metadata accessor for PhoneError();
  v1[34] = v2;
  OUTLINED_FUNCTION_21(v2);
  v4 = *(v3 + 64);
  v1[35] = OUTLINED_FUNCTION_45();
  v5 = type metadata accessor for WindowedPaginationParameters();
  v1[36] = v5;
  OUTLINED_FUNCTION_13_2(v5);
  v1[37] = v6;
  v8 = *(v7 + 64);
  v1[38] = OUTLINED_FUNCTION_62_4();
  v1[39] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v9);
  v11 = *(v10 + 64);
  v1[40] = OUTLINED_FUNCTION_45();
  v12 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v12, v13, v14);
}

{
  v75 = v0;
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2();
  }

  v1 = v0[33];
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.siriPhone);
  OUTLINED_FUNCTION_11_0();

  v3 = Logger.logObject.getter();
  static os_log_type_t.debug.getter();
  OUTLINED_FUNCTION_87();
  if (OUTLINED_FUNCTION_86_0())
  {
    v4 = v0[33];
    OUTLINED_FUNCTION_42();
    v72 = OUTLINED_FUNCTION_83();
    v73 = 0;
    v5 = OUTLINED_FUNCTION_11_52(4.8149e-34);
    v74 = v6;
    DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v5, v7, v8, v9);
    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0, v74, &v72);

    *(v1 + 4) = v10;
    OUTLINED_FUNCTION_12(&dword_0, v11, v12, "%s there is only one item in the result set. Rendering single result.");
    OUTLINED_FUNCTION_3_7();
    OUTLINED_FUNCTION_35();
  }

  v13 = *(*v0[33] + 216);
  v14 = *(v13() + 16);

  if (v14 == 1)
  {
    v16 = v0[33];
    v17 = (v13)(v15);
    if (v17[2])
    {
      v18 = v0[40];
      v20 = v17[4];
      v19 = v17[5];

      v71 = v19;

      outlined init with copy of PersonNameComponents?();
      v21 = type metadata accessor for SpeakableString();
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v18, 1, v21);
      v23 = v0[40];
      if (EnumTagSinglePayload == 1)
      {
        outlined destroy of PhoneCallNLIntent?(v0[40], &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
        v24 = 0;
        v25 = 0;
      }

      else
      {
        v24 = SpeakableString.print.getter();
        v25 = v38;
        OUTLINED_FUNCTION_40(v21);
        (*(v39 + 8))(v23, v21);
      }

      v67 = (v0 + 2);
      v40 = v0[39];
      v69 = v0[40];
      v63 = v0[37];
      v64 = v0[36];
      v65 = v0[38];
      v70 = v0[35];
      v41 = v0[33];
      v68 = ReadVoicemailResultSetFlowProvider.getVoicemailData(voicemailIdentifier:)(v24, v25);

      v42 = static WindowedPaginationParameters.makeLastWindow(windowSize:isFirstWindow:)();
      v56 = *(*v41 + 208);
      v43 = v56(v42);
      if (v44)
      {
        v43 = 0;
      }

      ReadVoicemailResultSetFlowProvider.getVoiceMailPosition(callRecordsCount:currentRecord:)(v43, v20);
      v62 = v45;
      VoicemailResultSetFlow = ReadVoicemailResultSetFlowProvider.isRepeatRequestAfterPlayingVoicemail()();
      v61 = v41[49];
      v46 = v41[14];
      v47 = v41[15];
      v58 = v41[17];
      _s27PhoneCallFlowDelegatePlugin22SharedGlobalsProviding_pWOcTm_0((v41 + 4), (v0 + 27));

      v60 = v46;
      v59 = v47;

      v57 = (v13)(v48);
      v49 = (*(v63 + 16))(v65, v40, v64);
      v50 = v56(v49);
      v52 = v51;
      outlined init with copy of SearchCallHistorySharedGlobals((v41 + 18), v67);
      v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin024ContinueReadingVoicemailC0CyAA019PromptForValueAfterghC8StrategyCGMd, &_s27PhoneCallFlowDelegatePlugin024ContinueReadingVoicemailC0CyAA019PromptForValueAfterghC8StrategyCGMR);
      OUTLINED_FUNCTION_12_8(v53);
      swift_allocObject();
      v0[32] = specialized ContinueReadingVoicemailFlow.init(app:intent:intentResponse:phoneSearchCallHistoryIntent:isSingleVoicemailRequest:isRepeatRequest:sharedGlobals:windowItems:windowParam:totalItemCount:playVoicemailCommands:voiceMailPositionString:searchCallHistorySharedGlobals:)(v61, v60, v59, v58, 1, VoicemailResultSetFlow, (v0 + 27), v57, v65, v50, v52 & 1, v68, v62, v67);
      lazy protocol witness table accessor for type ContinueReadingVoicemailFlow<PromptForValueAfterReadingVoicemailFlowStrategy> and conformance ContinueReadingVoicemailFlow<A>();
      Flow.eraseToAnyFlow()();

      (*(v63 + 8))(v40, v64);

      v54 = OUTLINED_FUNCTION_2_8();

      return v55(v54);
    }
  }

  v26 = v0[39];
  v27 = v0[40];
  v28 = v0[38];
  v30 = v0[34];
  v29 = v0[35];
  v31 = v0[33];
  v73 = 0;
  v74 = 0xE000000000000000;
  DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v31[51], v31[52], v31[53], v31[54]);
  v32 = v74;
  *v29 = v73;
  v29[1] = v32;
  v29[2] = 0xD00000000000001CLL;
  v29[3] = 0x8000000000460A70;
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_20_38();
  _s27PhoneCallFlowDelegatePlugin0A5ErrorOACs0F0AAWlTm_10(v33, 255, v34);
  swift_allocError();
  PhoneError.logged()(v35);
  OUTLINED_FUNCTION_18_29();
  _s27PhoneCallFlowDelegatePlugin0A5ErrorOWOhTm_10();
  swift_willThrow();

  OUTLINED_FUNCTION_11();

  return v36();
}

uint64_t ReadVoicemailResultSetFlowProvider.makeEmptyResultSetFlow()()
{
  *(v1 + 112) = v0;
  return OUTLINED_FUNCTION_0_1(ReadVoicemailResultSetFlowProvider.makeEmptyResultSetFlow());
}

{
  v27 = v0;
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2();
  }

  v1 = *(v0 + 112);
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.siriPhone);
  OUTLINED_FUNCTION_11_0();

  v3 = Logger.logObject.getter();
  static os_log_type_t.debug.getter();
  OUTLINED_FUNCTION_87();
  if (OUTLINED_FUNCTION_86_0())
  {
    v4 = *(v0 + 112);
    OUTLINED_FUNCTION_42();
    v25[0] = OUTLINED_FUNCTION_83();
    v25[1] = 0;
    v5 = OUTLINED_FUNCTION_11_52(4.8149e-34);
    v26 = v6;
    DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v5, v7, v8, v9);
    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0, v26, v25);

    *(v1 + 4) = v10;
    OUTLINED_FUNCTION_12(&dword_0, v11, v12, "%s can't find any voicemail record");
    OUTLINED_FUNCTION_3_7();
    OUTLINED_FUNCTION_35();
  }

  v13 = *(v0 + 112);
  v15 = *(v13 + 128);
  v14 = *(v13 + 136);
  OUTLINED_FUNCTION_2_0();
  v17 = *(v16 + class metadata base offset for SearchCallHistoryCATsSimple + 432);
  OUTLINED_FUNCTION_24_5();
  v24 = (v18 + *v18);
  v20 = *(v19 + 4);
  v21 = swift_task_alloc();
  *(v0 + 120) = v21;
  *v21 = v0;
  v21[1] = ReadVoicemailResultSetFlowProvider.makeEmptyResultSetFlow();
  v22 = OUTLINED_FUNCTION_24_10();

  return (v24)(v22, 0, 0, 0, v14);
}

{
  OUTLINED_FUNCTION_27();
  v3 = v2;
  OUTLINED_FUNCTION_28();
  v5 = v4;
  OUTLINED_FUNCTION_13_1();
  *v6 = v5;
  v8 = *(v7 + 120);
  v9 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v10 = v9;

  if (v0)
  {
    OUTLINED_FUNCTION_13_6();

    return v11();
  }

  else
  {
    *(v5 + 128) = v3;
    v13 = OUTLINED_FUNCTION_9_2();

    return _swift_task_switch(v13, v14, v15);
  }
}

{
  OUTLINED_FUNCTION_23_0();
  v1 = v0[16];
  v2 = v0[14];
  v3 = v2[8];
  __swift_project_boxed_opaque_existential_1(v2 + 4, v2[7]);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_92();
  v6(v5);
  v7 = v0[5];
  v8 = v0[7];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v7);
  v0[11] = v7;
  v0[12] = v8;
  __swift_allocate_boxed_opaque_existential_1(v0 + 8);
  OUTLINED_FUNCTION_40(v7);
  (*(v9 + 16))();
  v10 = swift_allocObject();
  *(v10 + 16) = v2;
  *(v10 + 24) = v1;
  v11 = type metadata accessor for SimpleOutputFlowAsync();
  OUTLINED_FUNCTION_12_8(v11);
  swift_allocObject();

  v12 = v1;
  v13 = SimpleOutputFlowAsync.init(outputPublisher:outputGenerator:)();
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v0[13] = v13;
  Flow.eraseToAnyFlow()();

  v14 = OUTLINED_FUNCTION_2_8();

  return v15(v14);
}

uint64_t closure #1 in ReadVoicemailResultSetFlowProvider.makeEmptyResultSetFlow()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = *(*(type metadata accessor for DialogPhase() - 8) + 64) + 15;
  v3[5] = swift_task_alloc();
  v5 = type metadata accessor for OutputGenerationManifest();
  v3[6] = v5;
  v6 = *(v5 - 8);
  v3[7] = v6;
  v7 = *(v6 + 64) + 15;
  v3[8] = swift_task_alloc();

  return _swift_task_switch(closure #1 in ReadVoicemailResultSetFlowProvider.makeEmptyResultSetFlow(), 0, 0);
}

uint64_t closure #1 in ReadVoicemailResultSetFlowProvider.makeEmptyResultSetFlow()()
{
  OUTLINED_FUNCTION_31();
  v1 = v0[8];
  v3 = v0[4];
  v2 = v0[5];
  v4 = v0[3];
  v5 = v4[12];
  v6 = v4[13];
  __swift_project_boxed_opaque_existential_1(v4 + 9, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  OUTLINED_FUNCTION_4_68();
  v7 = swift_allocObject();
  v0[9] = v7;
  *(v7 + 16) = xmmword_426260;
  *(v7 + 32) = v3;
  v8 = v3;
  static DialogPhase.completion.getter();
  v9 = swift_task_alloc();
  *(v9 + 16) = 0;
  *(v9 + 24) = 0;
  OutputGenerationManifest.init(dialogPhase:_:)();

  v10 = async function pointer to dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)[1];
  v11 = swift_task_alloc();
  v0[10] = v11;
  *v11 = v0;
  v11[1] = closure #2 in ReadCallHistoryResultSetFlowProvider.makeEmptyResultSetFlow();
  v12 = v0[8];
  v13 = v0[2];

  return dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)(v13, v7, v12, v5, v6);
}

uint64_t ReadVoicemailResultSetFlowProvider.makeAllResultsFlow()()
{
  OUTLINED_FUNCTION_15();
  v1[233] = v0;
  v2 = type metadata accessor for PhoneSnippetDataModels();
  v1[239] = v2;
  OUTLINED_FUNCTION_13_2(v2);
  v1[240] = v3;
  v1[241] = *(v4 + 64);
  v1[242] = OUTLINED_FUNCTION_62_4();
  v1[243] = swift_task_alloc();
  v5 = type metadata accessor for PlayVoicemailModel();
  v1[244] = v5;
  OUTLINED_FUNCTION_13_2(v5);
  v1[245] = v6;
  v1[246] = *(v7 + 64);
  v1[247] = OUTLINED_FUNCTION_62_4();
  v1[248] = swift_task_alloc();
  v8 = type metadata accessor for Locale();
  v1[249] = v8;
  OUTLINED_FUNCTION_13_2(v8);
  v1[250] = v9;
  v11 = *(v10 + 64);
  v1[251] = OUTLINED_FUNCTION_45();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_13_2(v12);
  v1[252] = v13;
  v1[253] = *(v14 + 64);
  v1[254] = OUTLINED_FUNCTION_62_4();
  v1[255] = swift_task_alloc();
  v15 = type metadata accessor for SpeakableString();
  v1[256] = v15;
  OUTLINED_FUNCTION_13_2(v15);
  v1[257] = v16;
  v18 = *(v17 + 64);
  v1[258] = OUTLINED_FUNCTION_45();
  v19 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v19, v20, v21);
}

{
  v44 = v0;
  v1 = v0[258];
  v2 = v0[233];
  v3 = v2[8];
  __swift_project_boxed_opaque_existential_1(v2 + 4, v2[7]);
  v4 = *(v3 + 8);
  v5 = OUTLINED_FUNCTION_92();
  v6(v5);
  static UserFacingCallingAppUtils.getAppBundleId(preferredCallProvider:deviceState:)(1, v0 + 173);
  __swift_destroy_boxed_opaque_existential_1(v0 + 173);
  String.toSpeakableString.getter();

  v7 = v2[15];
  INSearchCallHistoryIntentResponse.savedRecordsCount.getter();
  v9 = v8;
  INSearchCallHistoryIntentResponse.newRecordsCount.getter();
  v11 = v10;
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2();
  }

  v12 = v0[233];
  v13 = type metadata accessor for Logger();
  __swift_project_value_buffer(v13, static Logger.siriPhone);
  swift_retain_n();
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();
  v16 = os_log_type_enabled(v14, v15);
  v17 = v0[233];
  if (v16)
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v41 = v19;
    v42 = 0;
    *v18 = 136315394;
    v20 = v17[51];
    v21 = v17[52];
    v22 = v17[53];
    v23 = v17[54];
    v43 = 0xE000000000000000;
    DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v20, v21, v22, v23);
    v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v42, 0xE000000000000000, &v41);

    *(v18 + 4) = v24;
    *(v18 + 12) = 2048;
    v25 = specialized Array.count.getter(v17[3]);

    *(v18 + 14) = v25;

    _os_log_impl(&dword_0, v14, v15, "%s show all results there are %ld items in the result set. Rendering multiple results with SMART UI on.", v18, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v19);
    OUTLINED_FUNCTION_26_0();
    OUTLINED_FUNCTION_26_0();
  }

  else
  {
    v26 = v0[233];
  }

  v27 = v0[233];
  v28 = *(v27 + 128);
  v29 = *(v27 + 136);
  OUTLINED_FUNCTION_2_0();
  v31 = *(v30 + class metadata base offset for SearchCallHistoryCATsSimple + 432);
  OUTLINED_FUNCTION_24_5();
  v40 = (v32 + *v32);
  v33 = v9;
  v34 = v11;
  v35 = v33;
  v37 = *(v36 + 4);
  v38 = swift_task_alloc();
  v0[259] = v38;
  *v38 = v0;
  v38[1] = ReadVoicemailResultSetFlowProvider.makeAllResultsFlow();

  return (v40)(*&v34, 0, *&v35, 0, v29);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v5 = *(v4 + 2072);
  *v3 = *v1;
  *(v2 + 2080) = v6;
  *(v2 + 2088) = v0;

  if (v0)
  {
    v7 = ReadVoicemailResultSetFlowProvider.makeAllResultsFlow();
  }

  else
  {
    v7 = ReadVoicemailResultSetFlowProvider.makeAllResultsFlow();
  }

  return _swift_task_switch(v7, 0, 0);
}

{
  v1 = v0[251];
  v32 = v0[250];
  v33 = v0[249];
  v2 = v0[233];
  v3 = v2[49];
  v4 = v2[8];
  __swift_project_boxed_opaque_existential_1(v2 + 4, v2[7]);
  v5 = *(v4 + 8);
  v6 = OUTLINED_FUNCTION_40_0();
  v7(v6, v4);
  v8 = static UserFacingCallingAppUtils.getCommAppForLaunch(originalApp:preferredCallProvider:deviceState:)(v3, 1, v0 + 183);
  v0[262] = v8;
  __swift_destroy_boxed_opaque_existential_1(v0 + 183);

  swift_asyncLet_begin();
  v9 = v2[46];
  v10 = v2[47];
  __swift_project_boxed_opaque_existential_1(v2 + 43, v9);
  v11 = v2[8];
  __swift_project_boxed_opaque_existential_1(v2 + 4, v2[7]);
  v12 = *(v11 + 8);
  v13 = OUTLINED_FUNCTION_11_0();
  v14(v13, v11);
  v15 = v0[197];
  __swift_project_boxed_opaque_existential_1(v0 + 193, v0[196]);
  OUTLINED_FUNCTION_40_0();
  dispatch thunk of DeviceState.siriLocale.getter();
  (*(v10 + 16))(v8, v1, v9, v10);
  v17 = v16;
  (*(v32 + 8))(v1, v33);
  __swift_destroy_boxed_opaque_existential_1(v0 + 193);
  if (v17)
  {
    v18 = v0[255];
    SpeakableString.init(print:speak:)();
    v19 = 0;
  }

  else
  {
    v19 = 1;
  }

  v20 = v0[254];
  v21 = v0[253];
  v22 = v0[252];
  v23 = v0[233];
  __swift_storeEnumTagSinglePayload(v0[255], v19, 1, v0[256]);
  outlined init with copy of PersonNameComponents?();
  v24 = (*(v22 + 80) + 24) & ~*(v22 + 80);
  v25 = swift_allocObject();
  v0[263] = v25;
  *(v25 + 16) = v23;
  outlined init with take of SpeakableString?(v20, v25 + v24);

  swift_asyncLet_begin();
  v26 = *(v23 + 24);
  ReadVoicemailResultSetFlowProvider.generatePlayVoicemailModel(items:)();
  v0[264] = v27;
  v28 = OUTLINED_FUNCTION_31_25();

  return _swift_asyncLet_get_throwing(v28, v29, v30, v0 + 162);
}

{
  OUTLINED_FUNCTION_15();
  v1[265] = v0;
  if (v0)
  {

    return _swift_task_switch(ReadVoicemailResultSetFlowProvider.makeAllResultsFlow(), 0, 0);
  }

  else
  {
    v1[266] = v1[213];
    v1[267] = v1[214];

    v2 = OUTLINED_FUNCTION_30_33();

    return _swift_asyncLet_get_throwing(v2, v3, v4, v1 + 198);
  }
}

{
  *(v1 + 2144) = v0;
  if (v0)
  {
    return OUTLINED_FUNCTION_0_1(ReadVoicemailResultSetFlowProvider.makeAllResultsFlow());
  }

  else
  {
    return OUTLINED_FUNCTION_0_1(ReadVoicemailResultSetFlowProvider.makeAllResultsFlow());
  }
}

{
  v29 = v0[267];
  v1 = v0[266];
  v2 = v0[264];
  v3 = v0[262];
  v4 = v0[248];
  v36 = v0[246];
  v37 = v0[260];
  v35 = v0[245];
  v5 = v0[244];
  v38 = v0[243];
  v33 = v0[247];
  v34 = v0[241];
  v31 = v0[242];
  v32 = v0[240];
  v30 = v0[239];
  v6 = v0[233];
  v7 = v0[215];
  v8 = v0[216];
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SAAppsLaunchApp, SAAppsLaunchApp_ptr);

  SAAppsLaunchApp.init(app:)(v9);
  strcpy(v4, "PlayVoicemail");
  *(v4 + 14) = -4864;
  v10 = v5[5];
  v0[221] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay27PhoneCallFlowDelegatePlugin20SingleVoicemailModelVGMd, &_sSay27PhoneCallFlowDelegatePlugin20SingleVoicemailModelVGMR);
  Loggable.init(wrappedValue:)();
  v11 = v5[6];
  v0[217] = v1;
  v0[218] = v29;
  Loggable.init(wrappedValue:)();
  v12 = v5[7];
  v0[219] = v7;
  v0[220] = v8;
  Loggable.init(wrappedValue:)();
  v13 = v5[8];
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SABaseCommand, SABaseCommand_ptr);
  CodableAceObject.init(wrappedValue:)();
  outlined init with copy of PlayVoicemailModel();
  swift_storeEnumTagMultiPayload();
  v14 = v6[7];
  v15 = v6[8];
  __swift_project_boxed_opaque_existential_1(v6 + 4, v14);
  (*(v15 + 16))(v14, v15);
  v16 = v0[170];
  v17 = v0[172];
  __swift_project_boxed_opaque_existential_1(v0 + 167, v16);
  v0[206] = v16;
  v0[207] = v17;
  __swift_allocate_boxed_opaque_existential_1(v0 + 203);
  OUTLINED_FUNCTION_40(v16);
  (*(v18 + 16))();
  OUTLINED_FUNCTION_19_35();
  outlined init with copy of PlayVoicemailModel();
  outlined init with copy of PlayVoicemailModel();
  v19 = (v34 + ((*(v32 + 80) + 24) & ~*(v32 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = (*(v35 + 80) + v19 + 8) & ~*(v35 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = v6;
  _s27PhoneCallFlowDelegatePlugin0A17SnippetDataModelsOWObTm_0();
  *(v21 + v19) = v37;
  _s27PhoneCallFlowDelegatePlugin0A17SnippetDataModelsOWObTm_0();
  v22 = type metadata accessor for SimpleOutputFlowAsync();
  OUTLINED_FUNCTION_12_8(v22);
  swift_allocObject();

  v23 = v37;
  v24 = SimpleOutputFlowAsync.init(outputPublisher:outputGenerator:)();
  __swift_destroy_boxed_opaque_existential_1(v0 + 167);
  v0[227] = v24;
  v0[269] = Flow.eraseToAnyFlow()();

  _s27PhoneCallFlowDelegatePlugin0A5ErrorOWOhTm_10();
  _s27PhoneCallFlowDelegatePlugin0A5ErrorOWOhTm_10();
  v25 = OUTLINED_FUNCTION_30_33();

  return _swift_asyncLet_finish(v25, v26, v27, v0 + 228);
}

{
  return OUTLINED_FUNCTION_0_1(ReadVoicemailResultSetFlowProvider.makeAllResultsFlow());
}

{
  OUTLINED_FUNCTION_15();
  outlined destroy of PhoneCallNLIntent?(*(v0 + 2040), &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v1 = OUTLINED_FUNCTION_31_25();

  return _swift_asyncLet_finish(v1, v2, v3, v0 + 1872);
}

{
  return OUTLINED_FUNCTION_0_1(ReadVoicemailResultSetFlowProvider.makeAllResultsFlow());
}

{
  OUTLINED_FUNCTION_24_34();
  v1 = v0[257];
  v2 = v0[256];
  v3 = v0[255];
  v4 = v0[254];
  v5 = v0[251];
  v14 = v0[248];
  v15 = v0[247];
  v16 = v0[243];
  v17 = v0[242];
  v6 = v0[233];

  v8 = *(v1 + 8);
  v9 = OUTLINED_FUNCTION_92();
  v10(v9);

  v11 = v0[1];
  v12 = v0[269];

  return v11(v12);
}

{
  OUTLINED_FUNCTION_31();
  (*(v0[257] + 8))(v0[258], v0[256]);
  v1 = v0[261];
  OUTLINED_FUNCTION_9_62();

  OUTLINED_FUNCTION_11();

  return v2();
}

{
  OUTLINED_FUNCTION_15();
  v1 = *(v0 + 2112);

  v2 = OUTLINED_FUNCTION_30_33();

  return _swift_asyncLet_finish(v2, v3, v4, v0 + 1424);
}

{
  return OUTLINED_FUNCTION_0_1(ReadVoicemailResultSetFlowProvider.makeAllResultsFlow());
}

{
  OUTLINED_FUNCTION_15();
  outlined destroy of PhoneCallNLIntent?(*(v0 + 2040), &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v1 = OUTLINED_FUNCTION_31_25();

  return _swift_asyncLet_finish(v1, v2, v3, v0 + 1504);
}

{
  return OUTLINED_FUNCTION_0_1(ReadVoicemailResultSetFlowProvider.makeAllResultsFlow());
}

{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_24_34();
  v1 = v0[257];
  v2 = v0[256];
  v3 = v0[233];

  v5 = *(v1 + 8);
  v6 = OUTLINED_FUNCTION_92();
  v7(v6);

  v8 = v0[265];
  OUTLINED_FUNCTION_9_62();

  OUTLINED_FUNCTION_11();

  return v9();
}

{
  OUTLINED_FUNCTION_15();
  v1 = *(v0 + 2136);
  v2 = *(v0 + 2112);

  v3 = OUTLINED_FUNCTION_30_33();

  return _swift_asyncLet_finish(v3, v4, v5, v0 + 1664);
}

{
  return OUTLINED_FUNCTION_0_1(ReadVoicemailResultSetFlowProvider.makeAllResultsFlow());
}

{
  OUTLINED_FUNCTION_15();
  outlined destroy of PhoneCallNLIntent?(*(v0 + 2040), &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v1 = OUTLINED_FUNCTION_31_25();

  return _swift_asyncLet_finish(v1, v2, v3, v0 + 1776);
}

{
  return OUTLINED_FUNCTION_0_1(ReadVoicemailResultSetFlowProvider.makeAllResultsFlow());
}

{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_24_34();
  v1 = v0[257];
  v2 = v0[256];
  v3 = v0[233];

  v5 = *(v1 + 8);
  v6 = OUTLINED_FUNCTION_92();
  v7(v6);

  v8 = v0[268];
  OUTLINED_FUNCTION_9_62();

  OUTLINED_FUNCTION_11();

  return v9();
}

uint64_t implicit closure #3 in ReadVoicemailResultSetFlowProvider.makeAllResultsFlow()(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(implicit closure #3 in ReadVoicemailResultSetFlowProvider.makeAllResultsFlow(), 0, 0);
}

uint64_t implicit closure #3 in ReadVoicemailResultSetFlowProvider.makeAllResultsFlow()()
{
  OUTLINED_FUNCTION_27();
  v1 = *(*(v0 + 24) + 128);
  OUTLINED_FUNCTION_2_0();
  v3 = *(v2 + class metadata base offset for SearchCallHistoryCATsSimple + 568);
  OUTLINED_FUNCTION_24_5();
  v9 = (v4 + *v4);
  v6 = *(v5 + 4);
  v7 = swift_task_alloc();
  *(v0 + 32) = v7;
  *v7 = v0;
  v7[1] = implicit closure #3 in ReadVoicemailResultSetFlowProvider.makeAllResultsFlow();

  return v9();
}

{
  OUTLINED_FUNCTION_27();
  v3 = v2;
  OUTLINED_FUNCTION_28();
  v5 = v4;
  OUTLINED_FUNCTION_13_1();
  *v6 = v5;
  v8 = *(v7 + 32);
  v9 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v10 = v9;

  if (v0)
  {
    OUTLINED_FUNCTION_13_6();

    return v11();
  }

  else
  {
    *(v5 + 40) = v3;
    v13 = OUTLINED_FUNCTION_9_2();

    return _swift_task_switch(v13, v14, v15);
  }
}

{
  OUTLINED_FUNCTION_27();
  v1 = *(v0 + 40);
  v2 = *(v0 + 16);
  *(v0 + 48) = 2;
  v3 = dispatch thunk of LabelExecutionResult.subscript.getter();
  v5 = v4;

  *v2 = v3;
  v2[1] = v5;
  OUTLINED_FUNCTION_8_1();

  return v6();
}

uint64_t implicit closure #4 in ReadVoicemailResultSetFlowProvider.makeAllResultsFlow()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return _swift_task_switch(implicit closure #4 in ReadVoicemailResultSetFlowProvider.makeAllResultsFlow(), 0, 0);
}

uint64_t implicit closure #4 in ReadVoicemailResultSetFlowProvider.makeAllResultsFlow()()
{
  OUTLINED_FUNCTION_27();
  v1 = *(v0[3] + 384);
  OUTLINED_FUNCTION_2_0();
  v3 = *(v2 + class metadata base offset for PhoneCallDisplayTextCATsSimple + 248);
  OUTLINED_FUNCTION_24_5();
  v10 = (v4 + *v4);
  v6 = *(v5 + 4);
  v7 = swift_task_alloc();
  v0[5] = v7;
  *v7 = v0;
  v7[1] = implicit closure #4 in ReadVoicemailResultSetFlowProvider.makeAllResultsFlow();
  v8 = v0[4];

  return v10(v8);
}

{
  OUTLINED_FUNCTION_27();
  v3 = v2;
  OUTLINED_FUNCTION_28();
  v5 = v4;
  OUTLINED_FUNCTION_13_1();
  *v6 = v5;
  v8 = *(v7 + 40);
  v9 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v10 = v9;

  if (v0)
  {
    OUTLINED_FUNCTION_13_6();

    return v11();
  }

  else
  {
    *(v5 + 48) = v3;
    v13 = OUTLINED_FUNCTION_9_2();

    return _swift_task_switch(v13, v14, v15);
  }
}

uint64_t closure #2 in ReadVoicemailResultSetFlowProvider.makeAllResultsFlow()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[10] = a4;
  v5[11] = a5;
  v5[8] = a2;
  v5[9] = a3;
  v5[7] = a1;
  v6 = *(*(type metadata accessor for DialogPhase() - 8) + 64) + 15;
  v5[12] = swift_task_alloc();
  v7 = type metadata accessor for OutputGenerationManifest();
  v5[13] = v7;
  v8 = *(v7 - 8);
  v5[14] = v8;
  v9 = *(v8 + 64) + 15;
  v5[15] = swift_task_alloc();

  return _swift_task_switch(closure #2 in ReadVoicemailResultSetFlowProvider.makeAllResultsFlow(), 0, 0);
}

uint64_t closure #2 in ReadVoicemailResultSetFlowProvider.makeAllResultsFlow()()
{
  v1 = v0[15];
  v3 = v0[11];
  v2 = v0[12];
  v4 = v0[9];
  v5 = v0[10];
  v6 = v0[8];
  v7 = v6[12];
  v8 = v6[13];
  __swift_project_boxed_opaque_existential_1(v6 + 9, v7);
  v0[5] = type metadata accessor for PhoneSnippetDataModels();
  v0[6] = _s27PhoneCallFlowDelegatePlugin0A5ErrorOACs0F0AAWlTm_10(&lazy protocol witness table cache variable for type PhoneSnippetDataModels and conformance PhoneSnippetDataModels, 255, type metadata accessor for PhoneSnippetDataModels);
  __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  OUTLINED_FUNCTION_19_35();
  outlined init with copy of PlayVoicemailModel();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  OUTLINED_FUNCTION_4_68();
  v9 = swift_allocObject();
  v0[16] = v9;
  *(v9 + 16) = xmmword_426260;
  *(v9 + 32) = v5;
  v11 = *v3;
  v10 = v3[1];
  v12 = v5;
  static DialogPhase.completion.getter();
  v13 = swift_task_alloc();
  *(v13 + 16) = v11;
  *(v13 + 24) = v10;
  OutputGenerationManifest.init(dialogPhase:_:)();

  v14 = async function pointer to dispatch thunk of ResponseGenerating.makeResponseOutput(resultModel:dialog:outputGenerationManifest:)[1];
  v15 = swift_task_alloc();
  v0[17] = v15;
  *v15 = v0;
  v15[1] = closure #3 in ReadCallHistoryResultSetFlowProvider.makeAllResultsFlow();
  v16 = v0[15];
  v17 = v0[7];

  return dispatch thunk of ResponseGenerating.makeResponseOutput(resultModel:dialog:outputGenerationManifest:)(v17, v0 + 2, v9, v16, v7, v8);
}

uint64_t ReadVoicemailResultSetFlowProvider.makeWindowingConfiguration(promptType:)()
{
  OUTLINED_FUNCTION_15();
  v1[3] = v2;
  v1[4] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow06PromptC12ProviderTypeVyytSay09PhoneCallC14DelegatePlugin07ReadingH6RecordVGGMd, &_s11SiriKitFlow06PromptC12ProviderTypeVyytSay09PhoneCallC14DelegatePlugin07ReadingH6RecordVGGMR);
  OUTLINED_FUNCTION_21(v3);
  v5 = *(v4 + 64);
  v1[5] = OUTLINED_FUNCTION_45();
  v6 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v6, v7, v8);
}

{
  OUTLINED_FUNCTION_23_0();
  v1 = v0[5];
  v2 = v0[3];
  v0[2] = v0[4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay27PhoneCallFlowDelegatePlugin07ReadingB6RecordVGMd, &_sSay27PhoneCallFlowDelegatePlugin07ReadingB6RecordVGMR);
  type metadata accessor for ReadVoicemailResultSetFlowProvider();
  _s27PhoneCallFlowDelegatePlugin0A5ErrorOACs0F0AAWlTm_10(&lazy protocol witness table cache variable for type ReadVoicemailResultSetFlowProvider and conformance ReadVoicemailResultSetFlowProvider, v3, type metadata accessor for ReadVoicemailResultSetFlowProvider);
  OUTLINED_FUNCTION_92();
  static PromptFlowProviderType.continuation<A>(_:)();
  WindowingConfiguration.init(promptFlowProviderType:padding:windowSizeOverride:)();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow22WindowingConfigurationVyytSay09PhoneCallC14DelegatePlugin07ReadingG6RecordVGGMd, &_s11SiriKitFlow22WindowingConfigurationVyytSay09PhoneCallC14DelegatePlugin07ReadingG6RecordVGGMR);
  __swift_storeEnumTagSinglePayload(v2, 0, 1, v4);

  OUTLINED_FUNCTION_8_1();

  return v5();
}

uint64_t ReadVoicemailResultSetFlowProvider.makeWindowFlow(paginationParameters:windowContent:)()
{
  OUTLINED_FUNCTION_15();
  v1[34] = v2;
  v1[35] = v0;
  v1[33] = v3;
  v4 = type metadata accessor for WindowedPaginationParameters();
  v1[36] = v4;
  OUTLINED_FUNCTION_13_2(v4);
  v1[37] = v5;
  v7 = *(v6 + 64);
  v1[38] = OUTLINED_FUNCTION_45();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v8);
  v10 = *(v9 + 64);
  v1[39] = OUTLINED_FUNCTION_45();
  v11 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v11, v12, v13);
}

BOOL ReadVoicemailResultSetFlowProvider.makeWindowFlow(paginationParameters:windowContent:)()
{
  v63 = v0;
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2();
  }

  v1 = v0[35];
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.siriPhone);
  OUTLINED_FUNCTION_11_0();

  v3 = Logger.logObject.getter();
  static os_log_type_t.debug.getter();
  OUTLINED_FUNCTION_87();
  if (OUTLINED_FUNCTION_86_0())
  {
    v4 = v0[35];
    OUTLINED_FUNCTION_42();
    v61[0] = OUTLINED_FUNCTION_83();
    v61[1] = 0;
    v5 = OUTLINED_FUNCTION_11_52(4.8149e-34);
    v62 = v6;
    DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v5, v7, v8, v9);
    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0, v62, v61);

    *(v1 + 4) = v10;
    OUTLINED_FUNCTION_12(&dword_0, v11, v12, "%s makeWindowFlow");
    OUTLINED_FUNCTION_3_7();
    OUTLINED_FUNCTION_35();
  }

  v13 = v0[35];
  result = ReadVoicemailResultSetFlowProvider.isRepeatRequestAfterPlayingVoicemail()();
  v15 = result;
  if (!result)
  {
    v16 = v0[35];
    v17 = *(v16 + 400);
    v18 = __OFADD__(v17, 1);
    v19 = v17 + 1;
    if (v18)
    {
      goto LABEL_18;
    }

    *(v16 + 400) = v19;
  }

  v20 = v0[34];
  if (*(v20 + 16))
  {
    v21 = v0[39];
    v22 = *(v20 + 32);
    outlined init with copy of PersonNameComponents?();
    v23 = type metadata accessor for SpeakableString();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v21, 1, v23);
    v25 = v0[39];
    v60 = v15;
    if (EnumTagSinglePayload == 1)
    {
      outlined destroy of PhoneCallNLIntent?(v25, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
      v26 = 0;
      v27 = 0;
    }

    else
    {
      v26 = SpeakableString.print.getter();
      v27 = v28;
      OUTLINED_FUNCTION_40(v23);
      (*(v29 + 8))(v25, v23);
    }

    v57 = (v0 + 2);
    v30 = v0[38];
    v31 = v0[37];
    v32 = v0[34];
    v33 = v0[35];
    v53 = v32;
    v54 = v0[36];
    v52 = v0[33];
    v58 = ReadVoicemailResultSetFlowProvider.getVoicemailData(voicemailIdentifier:)(v26, v27);

    v34 = *(v32 + 40);
    OUTLINED_FUNCTION_2_0();
    v36 = *(v35 + 208);

    v59 = v34;
    v37 = v36();
    if (v38)
    {
      v37 = 0;
    }

    ReadVoicemailResultSetFlowProvider.getVoiceMailPosition(callRecordsCount:currentRecord:)(v37, v22);
    v56 = v39;
    v40 = v33[49];
    v41 = v33[14];
    v42 = v33[15];
    v43 = v33[17];
    _s27PhoneCallFlowDelegatePlugin22SharedGlobalsProviding_pWOcTm_0((v33 + 4), (v0 + 27));
    (*(v31 + 16))(v30, v52, v54);

    v55 = v41;
    v44 = v42;

    v46 = (v36)(v45);
    v48 = v47;
    outlined init with copy of SearchCallHistorySharedGlobals((v33 + 18), v57);
    v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin024ContinueReadingVoicemailC0CyAA019PromptForValueAfterghC8StrategyCGMd, &_s27PhoneCallFlowDelegatePlugin024ContinueReadingVoicemailC0CyAA019PromptForValueAfterghC8StrategyCGMR);
    OUTLINED_FUNCTION_12_8(v49);
    swift_allocObject();
    v0[32] = specialized ContinueReadingVoicemailFlow.init(app:intent:intentResponse:phoneSearchCallHistoryIntent:isSingleVoicemailRequest:isRepeatRequest:sharedGlobals:windowItems:windowParam:totalItemCount:playVoicemailCommands:voiceMailPositionString:searchCallHistorySharedGlobals:)(v40, v55, v44, v43, 0, v60, (v0 + 27), v53, v30, v46, v48 & 1, v58, v56, v57);
    lazy protocol witness table accessor for type ContinueReadingVoicemailFlow<PromptForValueAfterReadingVoicemailFlowStrategy> and conformance ContinueReadingVoicemailFlow<A>();
    Flow.eraseToAnyValueFlow()();

    OUTLINED_FUNCTION_2_8();
    OUTLINED_FUNCTION_46_21();

    __asm { BRAA            X2, X16 }
  }

  __break(1u);
LABEL_18:
  __break(1u);
  return result;
}

uint64_t ReadVoicemailResultSetFlowProvider.makeFinalWindowFlow(paginationParameters:windowContent:)()
{
  OUTLINED_FUNCTION_15();
  v1[34] = v2;
  v1[35] = v0;
  v1[33] = v3;
  v4 = type metadata accessor for WindowedPaginationParameters();
  v1[36] = v4;
  OUTLINED_FUNCTION_13_2(v4);
  v1[37] = v5;
  v7 = *(v6 + 64);
  v1[38] = OUTLINED_FUNCTION_45();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v8);
  v10 = *(v9 + 64);
  v1[39] = OUTLINED_FUNCTION_45();
  v11 = type metadata accessor for PhoneError();
  v1[40] = v11;
  OUTLINED_FUNCTION_21(v11);
  v13 = *(v12 + 64);
  v1[41] = OUTLINED_FUNCTION_45();
  v14 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v14, v15, v16);
}

{
  OUTLINED_FUNCTION_23_0();
  v3 = v2;
  v4 = *v1;
  v5 = *(*v1 + 336);
  v6 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v7 = v6;

  v8 = v4[41];
  v9 = v4[39];
  v10 = v4[38];

  v12 = *(v6 + 8);
  if (!v0)
  {
    v11 = v3;
  }

  return v12(v11);
}

BOOL ReadVoicemailResultSetFlowProvider.makeFinalWindowFlow(paginationParameters:windowContent:)()
{
  v97 = v0;
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2();
  }

  v1 = v0[35];
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.siriPhone);
  swift_retain_n();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[35];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v94 = v8;
    v95 = 0;
    *v7 = 136315394;
    v9 = v6[51];
    v10 = v6[52];
    v11 = v6[53];
    v12 = v6[54];
    v96 = 0xE000000000000000;
    DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v9, v10, v11, v12);
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v95, 0xE000000000000000, &v94);

    *(v7 + 4) = v13;
    *(v7 + 12) = 2048;
    v14 = v6[50];

    *(v7 + 14) = v14;

    _os_log_impl(&dword_0, v3, v4, "%s final window currentIndex: %ld", v7, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v8);
    OUTLINED_FUNCTION_26_0();
    OUTLINED_FUNCTION_26_0();
  }

  else
  {
    v15 = v0[35];
  }

  v16 = *((*(*v0[35] + 216))() + 16);

  if (v16 == 1)
  {
    v17 = v0[35];

    v18 = Logger.logObject.getter();
    static os_log_type_t.debug.getter();
    OUTLINED_FUNCTION_87();
    if (OUTLINED_FUNCTION_86_0())
    {
      v19 = v0[35];
      OUTLINED_FUNCTION_42();
      v20 = OUTLINED_FUNCTION_83();
      v94 = v20;
      v95 = 0;
      v21 = OUTLINED_FUNCTION_11_52(4.8149e-34);
      v96 = v22;
      DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v21, v23, v24, v25);
      v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v95, v96, &v94);

      *(v17 + 4) = v26;
      OUTLINED_FUNCTION_12(&dword_0, v27, v28, "%s entire items size is 1, makeFinalWindowFlow will call makeSingleItemFlow()");
      __swift_destroy_boxed_opaque_existential_1(v20);
      OUTLINED_FUNCTION_26_0();
      OUTLINED_FUNCTION_35();
    }

    v29 = *(*v0[35] + 272);
    v93 = v29 + *v29;
    v30 = v29[1];
    v31 = swift_task_alloc();
    v0[42] = v31;
    *v31 = v0;
    v31[1] = ReadVoicemailResultSetFlowProvider.makeFinalWindowFlow(paginationParameters:windowContent:);
    v32 = v0[35];
    OUTLINED_FUNCTION_46_21();

    __asm { BRAA            X0, X16 }
  }

  v35 = v0[34];
  if (!v35[2])
  {
    v54 = v0[40];
    v55 = v0[41];
    *v55 = 0xD000000000000022;
    v55[1] = 0x80000000004435B0;
    v55[2] = 0xD000000000000017;
    v55[3] = 0x8000000000460A90;
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_20_38();
    _s27PhoneCallFlowDelegatePlugin0A5ErrorOACs0F0AAWlTm_10(v56, 255, v57);
    swift_allocError();
    PhoneError.logged()(v58);
    OUTLINED_FUNCTION_18_29();
    _s27PhoneCallFlowDelegatePlugin0A5ErrorOWOhTm_10();
    swift_willThrow();
    v59 = v0[41];
    v61 = v0[38];
    v60 = v0[39];

    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_46_21();

    __asm { BRAA            X1, X16 }
  }

  v36 = v0[35];
  v38 = v35[4];
  v37 = v35[5];

  v39 = v37;
  result = ReadVoicemailResultSetFlowProvider.isRepeatRequestAfterPlayingVoicemail()();
  if (result)
  {
LABEL_16:
    v91 = result;
    v45 = v0[39];
    v89 = *(*v0[35] + 208);
    v46 = v89();
    if (v47)
    {
      v46 = 0;
    }

    ReadVoicemailResultSetFlowProvider.getVoiceMailPosition(callRecordsCount:currentRecord:)(v46, v38);
    v90 = v48;
    outlined init with copy of PersonNameComponents?();
    v49 = type metadata accessor for SpeakableString();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v45, 1, v49);
    v51 = v0[39];
    v92 = v39;
    if (EnumTagSinglePayload == 1)
    {
      outlined destroy of PhoneCallNLIntent?(v51, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
      v52 = 0;
      v53 = 0;
    }

    else
    {
      v52 = SpeakableString.print.getter();
      v53 = v64;
      OUTLINED_FUNCTION_40(v49);
      (*(v65 + 8))(v51, v49);
    }

    v66 = v0[37];
    v67 = v0[38];
    v87 = v67;
    v68 = v0[35];
    v69 = v0[36];
    v70 = v0[33];
    v85 = v0[34];
    v88 = ReadVoicemailResultSetFlowProvider.getVoicemailData(voicemailIdentifier:)(v52, v53);

    v71 = v68[49];
    v72 = v68[14];
    v73 = v68[15];
    v74 = v68[17];
    _s27PhoneCallFlowDelegatePlugin22SharedGlobalsProviding_pWOcTm_0((v68 + 4), (v0 + 27));
    (*(v66 + 16))(v67, v70, v69);

    v86 = v72;
    v75 = v73;

    v77 = (v89)(v76);
    LOBYTE(v72) = v78;
    outlined init with copy of SearchCallHistorySharedGlobals((v68 + 18), (v0 + 2));
    v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin024ContinueReadingVoicemailC0CyAA019PromptForValueAfterghC8StrategyCGMd, &_s27PhoneCallFlowDelegatePlugin024ContinueReadingVoicemailC0CyAA019PromptForValueAfterghC8StrategyCGMR);
    OUTLINED_FUNCTION_12_8(v79);
    swift_allocObject();
    v0[32] = specialized ContinueReadingVoicemailFlow.init(app:intent:intentResponse:phoneSearchCallHistoryIntent:isSingleVoicemailRequest:isRepeatRequest:sharedGlobals:windowItems:windowParam:totalItemCount:playVoicemailCommands:voiceMailPositionString:searchCallHistorySharedGlobals:)(v71, v86, v75, v74, 0, v91, (v0 + 27), v85, v87, v77, v72 & 1, v88, v90, (v0 + 2));
    lazy protocol witness table accessor for type ContinueReadingVoicemailFlow<PromptForValueAfterReadingVoicemailFlowStrategy> and conformance ContinueReadingVoicemailFlow<A>();
    Flow.eraseToAnyFlow()();

    v80 = v0[41];
    v82 = v0[38];
    v81 = v0[39];

    OUTLINED_FUNCTION_2_8();
    OUTLINED_FUNCTION_46_21();

    __asm { BRAA            X2, X16 }
  }

  v41 = v0[35];
  v42 = *(v41 + 400);
  v43 = __OFADD__(v42, 1);
  v44 = v42 + 1;
  if (!v43)
  {
    *(v41 + 400) = v44;
    goto LABEL_16;
  }

  __break(1u);
  return result;
}