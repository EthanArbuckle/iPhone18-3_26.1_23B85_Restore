uint64_t closure #1 in CallingIntentNeedsValueFlowStrategy.parseValueResponse(input:resolveRecord:)(uint64_t *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v6 = *a1;
  v7 = *(*(a5 + 8) + 16);
  swift_getAssociatedTypeWitness();
  type metadata accessor for ParameterResolutionRecord();
  ParameterResolutionRecord.app.getter();
  dispatch thunk of SiriKitEvent.SiriKitEventBuilder.app.setter();
  v8 = ParameterResolutionRecord.app.getter();
  if (one-time initialization token for instance != -1)
  {
    swift_once();
  }

  _s27PhoneCallFlowDelegatePlugin0A25DomainContextMetricsUtilsO08populateafG005phoneB8NLIntent13contextNLType3app23resolvedSiriKitContacts17callStateProviderSo020FLOWSchemaFLOWDomainG0CSgAA0abL0_p_AA0afgN0O0Q13AppResolution0Y0CSgSay0Q9Inference08ResolvedqR7ContactVGAA0bU9Providing_ptFZTf4nnnnen_nAA0buV0V_Tt4g5(a3, 0, v8, _swiftEmptyArrayStorage, &static CallStateProvider.instance);

  return dispatch thunk of SiriKitEvent.SiriKitEventBuilder.domainContext.setter();
}

uint64_t CallingIntentNeedsValueFlowStrategy.makePromptForValue(resolveRecord:)()
{
  OUTLINED_FUNCTION_27();
  v1[52] = v2;
  v1[53] = v0;
  v1[51] = v3;
  v4 = *v0;
  v5 = type metadata accessor for ParameterIdentifier();
  v1[54] = v5;
  OUTLINED_FUNCTION_13_2(v5);
  v1[55] = v6;
  v8 = *(v7 + 64) + 15;
  v1[56] = swift_task_alloc();
  v1[57] = swift_task_alloc();
  OUTLINED_FUNCTION_49_1();
  OUTLINED_FUNCTION_43_9(*(v9 + 272));
  OUTLINED_FUNCTION_49_1();
  v11 = *(v10 + 264);
  swift_getAssociatedTypeWitness();
  v12 = OUTLINED_FUNCTION_89();
  v1[58] = v12;
  OUTLINED_FUNCTION_13_2(v12);
  v1[59] = v13;
  v15 = *(v14 + 64);
  v1[60] = OUTLINED_FUNCTION_62_4();
  v1[61] = swift_task_alloc();
  v1[62] = swift_task_alloc();
  v16 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v16, v17, v18);
}

{
  v93 = v0;
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2();
  }

  v1 = *(v0 + 488);
  v2 = *(v0 + 496);
  v3 = *(v0 + 464);
  v4 = *(v0 + 472);
  v5 = *(v0 + 416);
  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Logger.siriPhone);
  v7 = *(v4 + 16);
  v8 = OUTLINED_FUNCTION_53_1();
  v7(v8);
  (v7)(v1, v5, v3);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();
  v11 = OUTLINED_FUNCTION_8_0(v10);
  v12 = *(v0 + 488);
  v13 = *(v0 + 496);
  v15 = *(v0 + 464);
  v14 = *(v0 + 472);
  if (v11)
  {
    v89 = v7;
    v16 = *(v0 + 456);
    v17 = *(v0 + 440);
    v90 = *(v0 + 432);
    v18 = OUTLINED_FUNCTION_36();
    v92 = swift_slowAlloc();
    *v18 = 136315650;
    *(v18 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000022, 0x80000000004591D0, &v92);
    *(v18 + 12) = 2080;
    log = v9;
    ParameterResolutionRecord.parameter.getter();
    v19 = ParameterIdentifier.name.getter();
    v87 = v1;
    v86 = *(v17 + 8);
    v86(v16, v90);
    v20 = *(v14 + 8);
    v21 = OUTLINED_FUNCTION_36_2();
    v20(v21);
    v22 = OUTLINED_FUNCTION_0();
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v23, v24);
    OUTLINED_FUNCTION_40_0();

    *(v18 + 14) = v19;
    *(v18 + 22) = 2080;
    ParameterResolutionRecord.parameter.getter();
    v25 = ParameterIdentifier.multicardinalIndex.getter();
    v27 = v26;
    v28 = v16;
    v7 = v89;
    v86(v28, v90);
    *(v0 + 392) = v25;
    *(v0 + 400) = v27 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSiSgMd, &_sSiSgMR);
    v29 = String.init<A>(describing:)();
    v91 = v20;
    (v20)(v12, v15);
    v30 = OUTLINED_FUNCTION_0();
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v31, v32);
    OUTLINED_FUNCTION_40_0();

    *(v18 + 24) = v29;
    _os_log_impl(&dword_0, log, v87, "#CallingIntentNeedsValueFlowStrategy %s parameter={ %s, %s }", v18, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_26_0();
    OUTLINED_FUNCTION_26_0();
  }

  else
  {

    v33 = *(v14 + 8);
    v33(v12, v15);
    v34 = OUTLINED_FUNCTION_36_2();
    v91 = v33;
    (v33)(v34);
  }

  v35 = *(v0 + 424);
  v36 = v35[6];
  v37 = v35[7];
  __swift_project_boxed_opaque_existential_1(v35 + 3, v36);
  v38 = *(v37 + 72);
  v39 = OUTLINED_FUNCTION_92();
  v41 = v40(v39);
  v42 = OUTLINED_FUNCTION_40_9(v41);
  (*(v43 + 224))(v42);

  if (*(v0 + 256))
  {
    outlined init with copy of PhoneCallNLIntent?(v0 + 272, v0 + 312, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMR);
    outlined destroy of TransformationResult(v0 + 224);
  }

  else
  {
    outlined destroy of PhoneCallNLIntent?(v0 + 224, &_s27PhoneCallFlowDelegatePlugin20TransformationResultVSgMd, &_s27PhoneCallFlowDelegatePlugin20TransformationResultVSgMR);
    *(v0 + 312) = 0u;
    *(v0 + 328) = 0u;
    *(v0 + 344) = 0;
  }

  outlined init with copy of PhoneCallNLIntent?(v0 + 312, v0 + 352, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMR);
  if (!*(v0 + 376))
  {
    outlined destroy of PhoneCallNLIntent?(v0 + 352, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMR);
    *(v0 + 120) = 0u;
    *(v0 + 136) = 0u;
    *(v0 + 152) = 0u;
    *(v0 + 168) = 0u;
    *(v0 + 184) = 0u;
    *(v0 + 200) = 0u;
    *(v0 + 216) = 0;
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMR);
  if ((swift_dynamicCast() & 1) == 0)
  {
    *(v0 + 216) = 0;
    *(v0 + 200) = 0u;
    *(v0 + 184) = 0u;
    *(v0 + 168) = 0u;
    *(v0 + 152) = 0u;
    *(v0 + 136) = 0u;
    *(v0 + 120) = 0u;
    goto LABEL_19;
  }

  if (!*(v0 + 120))
  {
LABEL_19:
    outlined destroy of PhoneCallNLIntent?(v0 + 120, &_s27PhoneCallFlowDelegatePlugin0aB10NLv4IntentVSgMd, &_s27PhoneCallFlowDelegatePlugin0aB10NLv4IntentVSgMR);
    goto LABEL_20;
  }

  memcpy((v0 + 16), (v0 + 120), 0x68uLL);
  if (PhoneCallNLv4Intent.isCallLabelOnly()())
  {
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = OUTLINED_FUNCTION_65_0();
      OUTLINED_FUNCTION_11_1(v46);
      _os_log_impl(&dword_0, v44, v45, "#CallingIntentNeedsValueFlowStrategy - redirected here from Needs DisambiguationFlowStrategy missing label loop, so setting startOver to true.", v36, 2u);
      OUTLINED_FUNCTION_12_3();
    }

    v47 = *(v0 + 424);

    OUTLINED_FUNCTION_2_0();
    (*(v48 + 336))(1);
  }

  outlined destroy of PhoneCallNLv4Intent(v0 + 16);
LABEL_20:
  v49 = *(v0 + 464);
  v50 = *(v0 + 416);
  v51 = ParameterResolutionRecord.result.getter();
  v52 = [v51 unsupportedReason];

  if (v52)
  {
    v53 = *(v0 + 464);
    v54 = *(v0 + 416);
    v55 = ParameterResolutionRecord.result.getter();
    v56 = [v55 alternatives];

    v57 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v58 = *(v57 + 16);

    if (!v58)
    {
      (v7)(*(v0 + 480), *(v0 + 416), *(v0 + 464));
      v59 = Logger.logObject.getter();
      v60 = static os_log_type_t.debug.getter();
      v61 = os_log_type_enabled(v59, v60);
      v63 = *(v0 + 472);
      v62 = *(v0 + 480);
      v64 = *(v0 + 464);
      if (v61)
      {
        v65 = OUTLINED_FUNCTION_42();
        *v65 = 134217984;
        v66 = ParameterResolutionRecord.result.getter();
        v67 = [v66 unsupportedReason];

        v68 = OUTLINED_FUNCTION_53_1();
        v91(v68);
        *(v65 + 4) = v67;
        OUTLINED_FUNCTION_26_0();
      }

      else
      {
        v69 = OUTLINED_FUNCTION_53_1();
        v91(v69);
      }

      v70 = *(v0 + 424);

      *(v70 + direct field offset for CallingIntentNeedsValueFlowStrategy.isUnsupportedFollowUp) = 1;
    }
  }

  v71 = *(v0 + 464);
  v73 = *(v0 + 440);
  v72 = *(v0 + 448);
  v74 = *(v0 + 432);
  v75 = *(v0 + 416);
  *(v0 + 504) = ParameterResolutionRecord.app.getter();
  *(v0 + 512) = ParameterResolutionRecord.intent.getter();
  ParameterResolutionRecord.parameter.getter();
  ParameterIdentifier.name.getter();
  *(v0 + 520) = v76;
  v77 = *(v73 + 8);
  v78 = OUTLINED_FUNCTION_33_4();
  v79(v78);
  *(v0 + 528) = ParameterResolutionRecord.result.getter();
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 536) = v80;
  *v80 = v81;
  v80[1] = CallingIntentNeedsValueFlowStrategy.makePromptForValue(resolveRecord:);
  v82 = *(v0 + 424);
  v83 = *(v0 + 408);
  OUTLINED_FUNCTION_42_5();

  return CallingIntentNeedsValueFlowStrategy.makePromptForNeedsValueOutput(app:intent:parameterName:intentResolutionResult:)();
}

{
  OUTLINED_FUNCTION_23_0();
  v2 = *v1;
  OUTLINED_FUNCTION_13_1();
  *v4 = v3;
  v5 = v2[67];
  *v4 = *v1;
  *(v3 + 544) = v0;

  v6 = v2[66];
  v7 = v2[65];
  v8 = v2[64];
  v9 = v2[63];
  if (v0)
  {
  }

  else
  {
  }

  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v10, v11, v12);
}

{
  OUTLINED_FUNCTION_23_0();
  v1 = v0[61];
  v2 = v0[62];
  v3 = v0[60];
  v5 = v0[56];
  v4 = v0[57];
  outlined destroy of PhoneCallNLIntent?((v0 + 39), &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMR);

  OUTLINED_FUNCTION_8_1();

  return v6();
}

{
  OUTLINED_FUNCTION_23_0();
  v1 = v0[61];
  v2 = v0[62];
  v3 = v0[60];
  v5 = v0[56];
  v4 = v0[57];
  outlined destroy of PhoneCallNLIntent?((v0 + 39), &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMR);

  OUTLINED_FUNCTION_11();
  v7 = v0[68];

  return v6();
}

uint64_t CallingIntentNeedsValueFlowStrategy.makeErrorResponse(error:app:intent:parameter:)()
{
  OUTLINED_FUNCTION_15();
  v1[73] = v0;
  v1[72] = v2;
  v1[71] = v3;
  v1[70] = v4;
  v1[69] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow25DucTemplatingLocalContextVSgMd, &_s11SiriKitFlow25DucTemplatingLocalContextVSgMR);
  OUTLINED_FUNCTION_21(v6);
  v8 = *(v7 + 64);
  v1[74] = OUTLINED_FUNCTION_45();
  v9 = type metadata accessor for Locale();
  v1[75] = v9;
  OUTLINED_FUNCTION_13_2(v9);
  v1[76] = v10;
  v12 = *(v11 + 64);
  v1[77] = OUTLINED_FUNCTION_45();
  v13 = type metadata accessor for DialogPhase();
  OUTLINED_FUNCTION_21(v13);
  v15 = *(v14 + 64);
  v1[78] = OUTLINED_FUNCTION_45();
  v16 = type metadata accessor for CATOption();
  OUTLINED_FUNCTION_21(v16);
  v18 = *(v17 + 64);
  v1[79] = OUTLINED_FUNCTION_45();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0A5ErrorOSgMd, &_s27PhoneCallFlowDelegatePlugin0A5ErrorOSgMR);
  OUTLINED_FUNCTION_21(v19);
  v21 = *(v20 + 64);
  v1[80] = OUTLINED_FUNCTION_45();
  v22 = type metadata accessor for PhoneError();
  v1[81] = v22;
  OUTLINED_FUNCTION_21(v22);
  v24 = *(v23 + 64);
  v1[82] = OUTLINED_FUNCTION_62_4();
  v1[83] = swift_task_alloc();
  v25 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v25, v26, v27);
}

{
  v139 = v0;
  v1 = *(v0 + 648);
  v2 = *(v0 + 640);
  *(v0 + 544) = *(v0 + 560);
  swift_errorRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  if (!swift_dynamicCast())
  {
    v30 = *(v0 + 648);
    v31 = *(v0 + 640);
    OUTLINED_FUNCTION_7_6();
    __swift_storeEnumTagSinglePayload(v32, v33, v34, v35);
    outlined destroy of PhoneCallNLIntent?(v31, &_s27PhoneCallFlowDelegatePlugin0A5ErrorOSgMd, &_s27PhoneCallFlowDelegatePlugin0A5ErrorOSgMR);
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2();
    }

    v36 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_9_0(v36, static Logger.siriPhone);
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_8_0(v38))
    {
      v39 = OUTLINED_FUNCTION_65_0();
      OUTLINED_FUNCTION_11_1(v39);
      OUTLINED_FUNCTION_14_1(&dword_0, v40, v41, "#CallingIntentNeedsValueFlowStrategy failed to cast error as phoneError. Rethrow error.");
      OUTLINED_FUNCTION_12_3();
    }

    v42 = *(v0 + 560);

    swift_willThrow();
LABEL_28:
    swift_errorRetain();
    v118 = *(v0 + 560);
    v119 = *(v0 + 664);
    OUTLINED_FUNCTION_2_34();

    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_72_1();

    __asm { BRAA            X1, X16 }
  }

  v3 = *(v0 + 664);
  v4 = *(v0 + 656);
  v5 = *(v0 + 648);
  v6 = *(v0 + 640);
  OUTLINED_FUNCTION_23_3();
  __swift_storeEnumTagSinglePayload(v7, v8, v9, v5);
  outlined init with take of PhoneError(v6, v3);
  v10 = OUTLINED_FUNCTION_0();
  outlined init with copy of PhoneError(v10, v11);
  OUTLINED_FUNCTION_55();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 19)
  {
    if (EnumCaseMultiPayload == 17)
    {
      if (one-time initialization token for siriPhone != -1)
      {
        OUTLINED_FUNCTION_6_2();
      }

      v13 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_9_0(v13, static Logger.siriPhone);
      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.debug.getter();
      if (OUTLINED_FUNCTION_8_0(v15))
      {
        v16 = OUTLINED_FUNCTION_65_0();
        OUTLINED_FUNCTION_11_1(v16);
        OUTLINED_FUNCTION_14_1(&dword_0, v17, v18, "#CallingIntentNeedsValueFlowStrategy Returning unsupported device for Group FaceTime");
        OUTLINED_FUNCTION_12_3();
      }

      v19 = *(v0 + 632);
      v20 = *(v0 + 584);

      outlined init with copy of SignalProviding(v20 + 24, v0 + 456);
      type metadata accessor for StartCallCATs();
      OUTLINED_FUNCTION_81_0();
      OUTLINED_FUNCTION_54_9();
      CATWrapper.__allocating_init(options:globals:)();
      type metadata accessor for StartCallCATsSimple();
      OUTLINED_FUNCTION_81_0();
      OUTLINED_FUNCTION_54_9();
      CATWrapperSimple.__allocating_init(options:globals:)();
      type metadata accessor for PhoneCallDisplayTextCATsSimple();
      OUTLINED_FUNCTION_81_0();
      OUTLINED_FUNCTION_54_9();
      CATWrapperSimple.__allocating_init(options:globals:)();
      type metadata accessor for UnsupportedFlowCATsSimple();
      OUTLINED_FUNCTION_81_0();
      OUTLINED_FUNCTION_54_9();
      CATWrapperSimple.__allocating_init(options:globals:)();
      type metadata accessor for UnsupportedFaceTimeOutputProvider();
      swift_allocObject();
      v21 = UnsupportedFaceTimeOutputProvider.init(unsupportedPhoneCall:sharedGlobals:startCallCats:startCallCATsSimple:phoneCallDisplayTextCATsSimple:unsupportedFlowCATsSimple:)();
      *(v0 + 672) = v21;
      OUTLINED_FUNCTION_40_9(v21);
      v23 = *(v22 + 144);
      v136 = v23 + *v23;
      v24 = v23[1];
      swift_task_alloc();
      OUTLINED_FUNCTION_25();
      *(v0 + 680) = v25;
      *v25 = v26;
      v25[1] = CallingIntentNeedsValueFlowStrategy.makeErrorResponse(error:app:intent:parameter:);
      v27 = *(v0 + 552);
      OUTLINED_FUNCTION_72_1();

      __asm { BRAA            X1, X16 }
    }

    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2();
    }

    v109 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_9_0(v109, static Logger.siriPhone);
    v110 = Logger.logObject.getter();
    v111 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_8_0(v111))
    {
      v112 = OUTLINED_FUNCTION_65_0();
      OUTLINED_FUNCTION_11_1(v112);
      OUTLINED_FUNCTION_14_1(&dword_0, v113, v114, "#CallingIntentNeedsValueFlowStrategy Missing specific error response. Throwing error for platform to provide generic error dialog.");
      OUTLINED_FUNCTION_12_3();
    }

    v115 = *(v0 + 664);
    v116 = *(v0 + 656);
    v117 = *(v0 + 560);

    swift_willThrow();
    outlined destroy of PhoneError(v115);
    outlined destroy of PhoneError(v116);
    goto LABEL_28;
  }

  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2();
  }

  v43 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_9_0(v43, static Logger.siriPhone);
  v44 = Logger.logObject.getter();
  v45 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_8_0(v45))
  {
    v46 = OUTLINED_FUNCTION_65_0();
    OUTLINED_FUNCTION_11_1(v46);
    OUTLINED_FUNCTION_14_1(&dword_0, v47, v48, "#CallingIntentNeedsValueFlowStrategy Returning unsupported emergency contact call");
    OUTLINED_FUNCTION_12_3();
  }

  v49 = *(v0 + 632);
  v125 = *(v0 + 624);
  v126 = *(v0 + 616);
  v127 = *(v0 + 608);
  v128 = *(v0 + 600);
  v130 = *(v0 + 592);
  v50 = *(v0 + 584);
  v137 = *(v0 + 576);
  v131 = *(v0 + 568);

  outlined init with copy of SignalProviding(v50 + 24, v0 + 16);
  type metadata accessor for UnsupportedFlowCATs();
  OUTLINED_FUNCTION_57_6();
  OUTLINED_FUNCTION_34_4();
  v135 = CATWrapper.__allocating_init(options:globals:)();
  type metadata accessor for SearchCallHistoryCATs();
  OUTLINED_FUNCTION_57_6();
  OUTLINED_FUNCTION_34_4();
  v133 = CATWrapper.__allocating_init(options:globals:)();
  type metadata accessor for UnsupportedFlowCATsSimple();
  OUTLINED_FUNCTION_57_6();
  OUTLINED_FUNCTION_34_4();
  v134 = CATWrapperSimple.__allocating_init(options:globals:)();
  v51 = type metadata accessor for ResponseFactory();
  v52 = *(v51 + 48);
  v53 = *(v51 + 52);
  swift_allocObject();
  v54 = ResponseFactory.init()();
  v123 = type metadata accessor for AppInfoBuilder();
  v55 = OUTLINED_FUNCTION_79();
  type metadata accessor for PhoneCallDisplayTextCATsSimple();
  OUTLINED_FUNCTION_57_6();
  OUTLINED_FUNCTION_34_4();
  v129 = CATWrapperSimple.__allocating_init(options:globals:)();
  v56 = type metadata accessor for UnsupportedCallFlowOutputFactory();
  v57 = *(v56 + 48);
  v58 = *(v56 + 52);
  v59 = swift_allocObject();
  *(v0 + 696) = v59;
  *(v0 + 80) = v51;
  *(v0 + 88) = &protocol witness table for ResponseFactory;
  *(v0 + 56) = v54;
  *(v0 + 120) = &type metadata for LabelTemplatesProvider;
  *(v0 + 128) = &protocol witness table for LabelTemplatesProvider;
  v60 = swift_allocObject();
  *(v0 + 96) = v60;
  *(v60 + 16) = 0u;
  *(v60 + 32) = 0u;
  *(v0 + 160) = v123;
  *(v0 + 168) = &protocol witness table for AppInfoBuilder;
  *(v0 + 136) = v55;
  v61 = v137;

  static DialogPhase.completion.getter();
  OutputGenerationManifest.init(dialogPhase:_:)();
  *(v59 + 24) = 10;
  *(v59 + 32) = v135;
  *(v59 + 40) = v134;
  *(v59 + 16) = v133;
  outlined init with copy of SignalProviding(v0 + 56, v59 + 48);
  outlined init with copy of SignalProviding(v0 + 16, v59 + 88);
  *(v59 + 128) = v131;
  outlined init with copy of SignalProviding(v0 + 16, v0 + 216);
  outlined init with copy of SignalProviding(v0 + 96, v0 + 256);
  type metadata accessor for PhoneCallDisplayTextCATs();
  OUTLINED_FUNCTION_40_0();

  static CATOption.defaultMode.getter();
  OUTLINED_FUNCTION_34_4();
  v62 = CATWrapper.__allocating_init(options:globals:)();
  type metadata accessor for PhoneCallCommonCATs();
  OUTLINED_FUNCTION_57_6();
  OUTLINED_FUNCTION_34_4();
  v63 = CATWrapper.__allocating_init(options:globals:)();
  v64 = OUTLINED_FUNCTION_79();
  type metadata accessor for StartCallCATs();
  OUTLINED_FUNCTION_57_6();
  OUTLINED_FUNCTION_34_4();
  v132 = CATWrapper.__allocating_init(options:globals:)();
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0aB24BaseCatTemplatingServiceCySo8INIntentCSo0J8ResponseCGMd, &_s27PhoneCallFlowDelegatePlugin0aB24BaseCatTemplatingServiceCySo8INIntentCSo0J8ResponseCGMR);
  v65 = *(v124 + 48);
  v66 = *(v124 + 52);
  v67 = swift_allocObject();
  *(v0 + 320) = v123;
  *(v0 + 328) = &protocol witness table for AppInfoBuilder;
  *(v0 + 296) = v64;
  v68 = (v67 + *(*v67 + class metadata base offset for PhoneCallBaseCatTemplatingService + 16));
  *v68 = 0x3D65737561705C1BLL;
  v68[1] = 0xEC0000005C303532;
  v69 = OUTLINED_FUNCTION_40_9(v67);
  v72 = v69 + *(v71 + v70 + 56);
  *v72 = 0u;
  *(v72 + 1) = 0u;
  *(v72 + 4) = 0;
  OUTLINED_FUNCTION_40_9(v69);
  outlined init with copy of SignalProviding(v0 + 216, v67 + *(v74 + v73 + 72));
  v75 = *(v0 + 248);
  __swift_project_boxed_opaque_existential_1((v0 + 216), *(v0 + 240));
  v76 = *(v75 + 8);
  v77 = OUTLINED_FUNCTION_40_0();
  v78(v77, v75);
  OUTLINED_FUNCTION_70_0();
  v80 = *(v79 + class metadata base offset for PhoneCallBaseCatTemplatingService + 40);
  outlined init with take of SPHConversation((v0 + 336), v67 + v80);
  OUTLINED_FUNCTION_70_0();
  *(v67 + *(v81 + class metadata base offset for PhoneCallBaseCatTemplatingService + 24)) = v62;
  OUTLINED_FUNCTION_70_0();
  *(v67 + *(v83 + v82 + 32)) = v63;
  OUTLINED_FUNCTION_70_0();
  outlined init with copy of SignalProviding(v0 + 296, v67 + *(v85 + v84 + 48));
  OUTLINED_FUNCTION_70_0();
  outlined init with copy of SignalProviding(v0 + 256, v67 + *(v86 + class metadata base offset for PhoneCallBaseCatTemplatingService + 64));
  OUTLINED_FUNCTION_70_0();
  *(v67 + *(v87 + class metadata base offset for PhoneCallBaseCatTemplatingService + 80)) = v132;
  outlined init with copy of SignalProviding(v67 + v80, v0 + 376);
  v88 = *(v0 + 408);
  __swift_project_boxed_opaque_existential_1((v0 + 376), *(v0 + 400));

  dispatch thunk of DeviceState.siriLocale.getter();
  *(v0 + 496) = Locale.identifier.getter();
  *(v0 + 504) = v89;
  *(v0 + 512) = 45;
  *(v0 + 520) = 0xE100000000000000;
  *(v0 + 528) = 95;
  *(v0 + 536) = 0xE100000000000000;
  lazy protocol witness table accessor for type String and conformance String();
  OUTLINED_FUNCTION_19_3();
  StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  (*(v127 + 8))(v126, v128);

  type metadata accessor for INIntentSlotValueType(0);
  _s11SiriKitFlow5InputVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type INIntentSlotValueType and conformance INIntentSlotValueType, type metadata accessor for INIntentSlotValueType);
  Dictionary.init(dictionaryLiteral:)();
  v90 = *(v0 + 240);
  v91 = *(v0 + 248);
  __swift_project_boxed_opaque_existential_1((v0 + 216), v90);
  (*(v91 + 24))(v138, v90, v91);
  outlined init with copy of SignalProviding(v67 + v80, v0 + 416);
  type metadata accessor for DucTemplatingLocalContext();
  OUTLINED_FUNCTION_7_6();
  __swift_storeEnumTagSinglePayload(v92, v93, v94, v95);
  v96 = DucTemplatingService.init(ducFamily:locale:extensionValueTypeNamesByValueType:aceServiceInvoker:deviceState:localContext:)();

  __swift_destroy_boxed_opaque_existential_1((v0 + 256));
  __swift_destroy_boxed_opaque_existential_1((v0 + 296));
  __swift_destroy_boxed_opaque_existential_1((v0 + 376));
  __swift_destroy_boxed_opaque_existential_1((v0 + 216));
  *(v0 + 200) = v124;
  *(v0 + 208) = &protocol witness table for PhoneCallBaseCatTemplatingService<A, B>;

  *(v0 + 176) = v96;
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1((v0 + 96));
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  outlined init with take of SPHConversation((v0 + 176), v59 + 136);
  *(v59 + 176) = v137;
  outlined init with take of SPHConversation((v0 + 136), v59 + 192);
  *(v59 + 184) = v129;
  v97 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v98 = swift_task_alloc();
  *(v0 + 704) = v98;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow6Output_pMd, &_s11SiriKitFlow6Output_pMR);
  *v98 = v0;
  v98[1] = CallingIntentNeedsValueFlowStrategy.makeErrorResponse(error:app:intent:parameter:);
  v99 = *(v0 + 552);
  OUTLINED_FUNCTION_66_0();
  OUTLINED_FUNCTION_72_1();

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v100, v101, v102, v103, v104, v105, v106, v107);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v5 = *(v4 + 680);
  v6 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v7 = v6;
  *(v8 + 688) = v0;

  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v9, v10, v11);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v5 = *(v4 + 704);
  v6 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v7 = v6;
  *(v8 + 712) = v0;

  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t CallingIntentNeedsValueFlowStrategy.makeErrorResponse(error:app:intent:parameter:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_61_0();
  OUTLINED_FUNCTION_31();
  v11 = *(v10 + 672);
  v12 = *(v10 + 664);
  OUTLINED_FUNCTION_2_34();

  outlined destroy of PhoneError(v12);

  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_60();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

{
  OUTLINED_FUNCTION_61_0();
  OUTLINED_FUNCTION_31();
  v11 = *(v10 + 696);
  v12 = *(v10 + 664);
  OUTLINED_FUNCTION_2_34();

  outlined destroy of PhoneError(v12);

  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_60();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

{
  OUTLINED_FUNCTION_61_0();
  OUTLINED_FUNCTION_31();
  v11 = v10[84];
  v12 = v10[83];

  outlined destroy of PhoneError(v12);
  v13 = v10[86];
  v14 = v10[83];
  OUTLINED_FUNCTION_2_34();

  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_60();

  return v16(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10);
}

{
  OUTLINED_FUNCTION_61_0();
  OUTLINED_FUNCTION_31();
  v11 = v10[87];
  v12 = v10[83];

  outlined destroy of PhoneError(v12);
  v13 = v10[89];
  v14 = v10[83];
  OUTLINED_FUNCTION_2_34();

  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_60();

  return v16(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10);
}

uint64_t closure #1 in CallingIntentNeedsValueFlowStrategy.makeErrorResponse(error:app:intent:parameter:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy11SiriKitFlow6Output_ps5Error_pGMd, _sScCy11SiriKitFlow6Output_ps5Error_pGMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v12 - v7;
  (*(v5 + 16))(&v12 - v7, a1, v4);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  (*(v5 + 32))(v10 + v9, v8, v4);
  (*(*a2 + 184))(partial apply for closure #1 in closure #1 in CallingIntentNeedsValueFlowStrategy.makeErrorResponse(error:app:intent:parameter:), v10);
}

uint64_t closure #1 in closure #1 in CallingIntentNeedsValueFlowStrategy.makeErrorResponse(error:app:intent:parameter:)(uint64_t a1)
{
  outlined init with copy of PhoneCallNLIntent?(a1, v3, &_ss6ResultOy11SiriKitFlow6Output_ps5Error_pGMd, &_ss6ResultOy11SiriKitFlow6Output_ps5Error_pGMR);
  if (v4)
  {
    v2[0] = *&v3[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy11SiriKitFlow6Output_ps5Error_pGMd, _sScCy11SiriKitFlow6Output_ps5Error_pGMR);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    outlined init with take of SPHConversation(v3, v2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy11SiriKitFlow6Output_ps5Error_pGMd, _sScCy11SiriKitFlow6Output_ps5Error_pGMR);
    return CheckedContinuation.resume(returning:)();
  }
}

uint64_t CallingIntentNeedsValueFlowStrategy.makeRepromptOnLowConfidence(resolveRecord:)()
{
  OUTLINED_FUNCTION_15();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v1[5] = *v0;
  v4 = type metadata accessor for ParameterIdentifier();
  v1[6] = v4;
  OUTLINED_FUNCTION_13_2(v4);
  v1[7] = v5;
  v7 = *(v6 + 64);
  v1[8] = OUTLINED_FUNCTION_45();
  v8 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v8, v9, v10);
}

{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[5];
  v13 = v0[6];
  v4 = v0[3];
  v5 = *(v3 + 264);
  v6 = *(*(*(v3 + 272) + 8) + 16);
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_89();
  v0[9] = ParameterResolutionRecord.app.getter();
  v0[10] = ParameterResolutionRecord.intent.getter();
  ParameterResolutionRecord.parameter.getter();
  ParameterIdentifier.name.getter();
  v0[11] = v7;
  (*(v2 + 8))(v1, v13);
  v0[12] = ParameterResolutionRecord.result.getter();
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[13] = v8;
  *v8 = v9;
  v8[1] = CallingIntentNeedsValueFlowStrategy.makeRepromptOnLowConfidence(resolveRecord:);
  v10 = v0[4];
  v11 = v0[2];

  return CallingIntentNeedsValueFlowStrategy.makeRepromptOnLowConfidenceOutput(app:intent:parameterName:intentResolutionResult:)();
}

{
  OUTLINED_FUNCTION_15();
  v1 = *(v0 + 64);

  OUTLINED_FUNCTION_11();
  v3 = *(v0 + 112);

  return v2();
}

uint64_t CallingIntentNeedsValueFlowStrategy.makeRepromptOnLowConfidence(resolveRecord:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_61_0();
  OUTLINED_FUNCTION_31();
  v12 = *v11;
  v13 = *v11;
  OUTLINED_FUNCTION_4_2();
  *v14 = v13;
  v15 = v12[13];
  v16 = *v11;
  *v14 = *v11;
  v13[14] = v10;

  v17 = v12[12];
  v18 = v12[11];
  v19 = v12[10];
  v20 = v12[9];
  if (v10)
  {

    OUTLINED_FUNCTION_66_0();
    OUTLINED_FUNCTION_60();

    return _swift_task_switch(v21, v22, v23);
  }

  else
  {
    v25 = v13[8];

    v26 = v16[1];
    OUTLINED_FUNCTION_60();

    return v28(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10);
  }
}

id CallingIntentNeedsValueFlowStrategy.mergePreviousIntentIntoCurrentOne(previousIntent:callingIntent:)(void *a1)
{
  v3 = *(*v1 + 272);
  v4 = *(*v1 + 264);
  v5 = *(*(v3 + 8) + 16);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v7 = AssociatedConformanceWitness[4];
  v8 = swift_checkMetadataState();
  v9 = (v7)(v8, AssociatedConformanceWitness);
  v10 = OUTLINED_FUNCTION_20_0();
  v11 = &dword_54B000;
  if (v9 != (v7)(v10))
  {
    v12 = OUTLINED_FUNCTION_20_0();
    if (!(v7)(v12))
    {
      v13 = OUTLINED_FUNCTION_20_0();
      v7(v13);
      v14 = AssociatedConformanceWitness[14];
      OUTLINED_FUNCTION_47_10();
      v15();
      if (one-time initialization token for siriPhone != -1)
      {
        OUTLINED_FUNCTION_6_2();
      }

      v16 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_9_0(v16, static Logger.siriPhone);
      v17 = a1;
      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = OUTLINED_FUNCTION_42();
        *v20 = 134217984;
        v21 = OUTLINED_FUNCTION_20_0();
        *(v20 + 4) = (v7)(v21);

        _os_log_impl(&dword_0, v18, v19, "#CallingIntentNeedsValueFlowStrategy updated audio route to %ld from previous intent", v20, 0xCu);
        v11 = &dword_54B000;
        OUTLINED_FUNCTION_26_0();
      }

      else
      {

        v18 = v17;
      }
    }
  }

  v22 = AssociatedConformanceWitness[3];
  v23 = OUTLINED_FUNCTION_20_0();
  v24 = v22(v23);
  v25 = OUTLINED_FUNCTION_20_0();
  if (v24 != v22(v25))
  {
    v26 = OUTLINED_FUNCTION_20_0();
    if (!v22(v26))
    {
      v27 = OUTLINED_FUNCTION_20_0();
      v22(v27);
      v28 = AssociatedConformanceWitness[15];
      OUTLINED_FUNCTION_47_10();
      v29();
      v41 = *(*(AssociatedConformanceWitness[1] + 16) + 8);
      v42 = *(AssociatedConformanceWitness[1] + 16);
      v41(v8);
      v30 = AssociatedConformanceWitness[16];
      OUTLINED_FUNCTION_47_10();
      v31();
      if (*(v11 + 369) != -1)
      {
        OUTLINED_FUNCTION_6_2();
      }

      v32 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_9_0(v32, static Logger.siriPhone);
      v33 = a1;
      v34 = Logger.logObject.getter();
      v35 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = OUTLINED_FUNCTION_86_1();
        *v36 = 134218240;
        v37 = OUTLINED_FUNCTION_20_0();
        *(v36 + 4) = v22(v37);
        *(v36 + 12) = 2048;
        *(v36 + 14) = (v41)(v8, v42);

        _os_log_impl(&dword_0, v34, v35, "#CallingIntentNeedsValueFlowStrategy updated callCapability to:%ld and PreferredCallProvider to: %ld from previous intent", v36, 0x16u);
        OUTLINED_FUNCTION_26_0();
      }

      else
      {

        v34 = v33;
      }
    }
  }

  OUTLINED_FUNCTION_49_6();

  return v38;
}

void CallingIntentNeedsValueFlowStrategy.updateContactsInIntent(callingIntent:contacts:multicardinalIndex:)(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, char a5)
{
  swift_getObjectType();
  v10 = *(*(a2 + 8) + 8);
  v11 = *(v10 + 8);
  v12 = v11();
  if (!v12)
  {
    goto LABEL_22;
  }

  v13 = v12;
  if (!specialized Array.count.getter(v12))
  {
    OUTLINED_FUNCTION_49_6();

    return;
  }

  specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v13 & 0xC000000000000001) == 0, v13);
  if ((v13 & 0xC000000000000001) != 0)
  {
    v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    v14 = *(v13 + 32);
  }

  v43 = v14;

  if (a5)
  {
    a4 = 0;
  }

  v15 = &dword_54B000;
  if (!a3 || !specialized Array.count.getter(a3))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_426260;
    *(v27 + 32) = v43;
    v28 = *(v10 + 16);
    v29 = v43;
    v30 = OUTLINED_FUNCTION_65_4();
    v28(v30);
    goto LABEL_18;
  }

  v44 = a3;
  v16 = one-time initialization token for siriPhone;

  if (v16 != -1)
  {
    OUTLINED_FUNCTION_6_2();
  }

  v17 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_9_0(v17, static Logger.siriPhone);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = OUTLINED_FUNCTION_42();
    *v20 = 134217984;
    *(v20 + 4) = a4;
    _os_log_impl(&dword_0, v18, v19, "#CallingIntentNeedsValueFlowStrategy updating contact at multicardinalValueIndex : %ld", v20, 0xCu);
    v15 = &dword_54B000;
    OUTLINED_FUNCTION_26_0();
  }

  specialized Array._checkIndex(_:)(a4, a3);
  if (a4 < 0)
  {
    __break(1u);
    goto LABEL_31;
  }

  if (specialized Array.count.getter(a3) < a4)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v21 = specialized Array.count.getter(a3);
  v22 = v21 + 1;
  if (__OFADD__(v21, 1))
  {
LABEL_32:
    __break(1u);
    return;
  }

  v23 = v43;
  specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(v22, 1);
  specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(a4, a4, 1, v23);
  v24 = *(v10 + 16);
  v25 = OUTLINED_FUNCTION_65_4();
  v26(v25);
LABEL_18:

  if (*(v15 + 369) != -1)
  {
    OUTLINED_FUNCTION_6_2();
  }

  v31 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_9_0(v31, static Logger.siriPhone);
  v32 = a1;
  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = OUTLINED_FUNCTION_42();
    v36 = OUTLINED_FUNCTION_36();
    v44 = v36;
    *v35 = 136315138;
    v37 = OUTLINED_FUNCTION_55();
    (v11)(v37);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8INPersonCGSgMd, &_sSaySo8INPersonCGSgMR);
    v38 = String.init<A>(describing:)();
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, v39, &v44);
    OUTLINED_FUNCTION_40_0();

    *(v35 + 4) = v32;
    _os_log_impl(&dword_0, v33, v34, "#CallingIntentNeedsValueFlowStrategy updated contacts: %s", v35, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v36);
    OUTLINED_FUNCTION_26_0();
    OUTLINED_FUNCTION_26_0();

LABEL_22:
    OUTLINED_FUNCTION_49_6();
    return;
  }

  OUTLINED_FUNCTION_49_6();
}

void CallingIntentNeedsValueFlowStrategy.updateINIntent(currentINIntent:resolveRecord:)()
{
  OUTLINED_FUNCTION_66();
  v60 = v2;
  v61 = v1;
  v3 = *v0;
  v4 = type metadata accessor for ParameterIdentifier();
  v5 = OUTLINED_FUNCTION_7(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v5);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_49_1();
  v11 = *(*(*(v10 + 272) + 8) + 16);
  OUTLINED_FUNCTION_49_1();
  v13 = *(v12 + 264);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for ParameterResolutionRecord();
  v15 = ParameterResolutionRecord.intent.getter();
  v16 = *(swift_getAssociatedConformanceWitness() + 8);
  v17 = (*(*(v16 + 8) + 8))(AssociatedTypeWitness);

  ParameterResolutionRecord.parameter.getter();
  v18 = ParameterIdentifier.multicardinalIndex.getter();
  v20 = v19;
  v21 = *(v7 + 8);
  v22 = OUTLINED_FUNCTION_63();
  v23(v22);
  CallingIntentNeedsValueFlowStrategy.updateContactsInIntent(callingIntent:contacts:multicardinalIndex:)(v61, v60, v17, v18, v20 & 1);

  v24 = ParameterResolutionRecord.intent.getter();
  v25 = *(v16 + 16);
  v26 = *(v25 + 8);
  v59 = AssociatedTypeWitness;
  v27 = OUTLINED_FUNCTION_33_4();
  v28 = v26(v27);

  if (v28 == 1)
  {
    goto LABEL_31;
  }

  ObjectType = swift_getObjectType();
  v30 = *(*(v60 + 8) + 16);
  v31 = *(v30 + 8);
  if (v31(ObjectType, v30) != 1)
  {
    goto LABEL_31;
  }

  if (!v31(ObjectType, v30))
  {
    v56 = 0x4E574F4E4B4E55;
    v34 = 0xE700000000000000;
    goto LABEL_14;
  }

  v32 = INPreferredCallProviderGetBackingType();
  if (v32 == 4)
  {
    v33 = @"THIRD_PARTY_PROVIDER";
    v36 = @"THIRD_PARTY_PROVIDER";
  }

  else
  {
    if (v32 == 3)
    {
      v33 = @"FACETIME_PROVIDER";
    }

    else
    {
      if (v32 != 2)
      {
        v33 = [NSString stringWithFormat:@"(unknown: %i)", v32];
        goto LABEL_13;
      }

      v33 = @"TELEPHONY_PROVIDER";
    }

    v35 = v33;
  }

LABEL_13:
  v37 = v33;
  v56 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v34 = v38;

LABEL_14:
  v39 = ParameterResolutionRecord.intent.getter();
  v40 = (v26)(v59, v25);

  if (v40)
  {
    v41 = INPreferredCallProviderGetBackingType();
    switch(v41)
    {
      case 4:
        v42 = @"THIRD_PARTY_PROVIDER";
        break;
      case 3:
        v42 = @"FACETIME_PROVIDER";
        break;
      case 2:
        v42 = @"TELEPHONY_PROVIDER";
        break;
      default:
        v42 = [NSString stringWithFormat:@"(unknown: %i)", v41];
        goto LABEL_24;
    }

    v44 = v42;
LABEL_24:
    v45 = v42;
    v57 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v43 = v46;

    goto LABEL_25;
  }

  v57 = 0x4E574F4E4B4E55;
  v43 = 0xE700000000000000;
LABEL_25:
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2();
  }

  v58 = ObjectType;
  v47 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_9_0(v47, static Logger.siriPhone);

  v48 = Logger.logObject.getter();
  v49 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v48, v49))
  {
    v50 = v26;
    v51 = OUTLINED_FUNCTION_86_1();
    v62 = swift_slowAlloc();
    *v51 = 136315394;
    v52 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v56, v34, &v62);

    *(v51 + 4) = v52;
    *(v51 + 12) = 2080;
    v53 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v57, v43, &v62);

    *(v51 + 14) = v53;
    _os_log_impl(&dword_0, v48, v49, "#CallingIntentNeedsValueFlowStrategy override preferredCallProvider from %s to %s since we don't support change preferredCallProvider from non-default to default", v51, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_12_3();
    v26 = v50;
    OUTLINED_FUNCTION_26_0();
  }

  else
  {
  }

  v54 = ParameterResolutionRecord.intent.getter();
  v55 = (v26)(v59, v25);

  (*(v60 + 128))(v55, v58, v60);
LABEL_31:
  OUTLINED_FUNCTION_65();
}

uint64_t CallingIntentNeedsValueFlowStrategy.executeCRR(siriKitIntent:nlIntent:resolveRecord:isNLv3Only:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v5 + 56) = a4;
  *(v5 + 32) = a3;
  *(v5 + 40) = v4;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  *(v5 + 48) = *v4;
  OUTLINED_FUNCTION_66_0();
  return _swift_task_switch(v6, v7, v8);
}

uint64_t CallingIntentNeedsValueFlowStrategy.executeCRR(siriKitIntent:nlIntent:resolveRecord:isNLv3Only:)()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = *(v0 + 56);
  v5 = *(v0 + 24);
  v4 = *(v0 + 32);
  v6 = *(v0 + 16);
  v7 = *(v1 + 264);
  v8 = *(*(*(v1 + 272) + 8) + 16);
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_36_2();
  swift_getAssociatedConformanceWitness();
  CallingIntentNeedsValueFlowStrategy.executeCRRDeprecated(siriKitIntent:nlIntent:resolveRecord:isNLv3Only:)();
  OUTLINED_FUNCTION_11();
  v13 = v9;
  v10 = v6;
  v11 = *(v0 + 16);

  return v13(v11);
}

void CallingIntentNeedsValueFlowStrategy.executeCRRDeprecated(siriKitIntent:nlIntent:resolveRecord:isNLv3Only:)()
{
  OUTLINED_FUNCTION_66();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v104 = v7;
  v105 = v6;
  v9 = v8;
  v10 = *v1;
  v11 = type metadata accessor for ParameterIdentifier();
  v12 = OUTLINED_FUNCTION_7(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  __chkstk_darwin(v12);
  OUTLINED_FUNCTION_4();
  v19 = v18 - v17;
  v20 = type metadata accessor for Locale();
  v21 = OUTLINED_FUNCTION_7(v20);
  v23 = v22;
  v25 = *(v24 + 64);
  __chkstk_darwin(v21);
  OUTLINED_FUNCTION_4();
  v28 = v27 - v26;
  v100 = v29;
  v103 = v5;
  if (v3)
  {
    v96 = type metadata accessor for ContactResolution();
    v30 = *(v10 + 264);
    OUTLINED_FUNCTION_43_9(*(v10 + 272));
    swift_getAssociatedTypeWitness();
    OUTLINED_FUNCTION_89();
    v94 = ParameterResolutionRecord.app.getter();
    v31 = v1;
    v33 = v1[6];
    v32 = v1[7];
    __swift_project_boxed_opaque_existential_1(v31 + 3, v33);
    (*(v32 + 8))(v107, v33, v32);
    __swift_project_boxed_opaque_existential_1(v107, v108);
    OUTLINED_FUNCTION_26_4();
    dispatch thunk of DeviceState.siriLocale.getter();
    ParameterResolutionRecord.parameter.getter();
    v34 = ParameterIdentifier.multicardinalIndex.getter();
    LOBYTE(v32) = v35;
    (*(v14 + 8))(v19, v11);
    ObjectType = swift_getObjectType();
    specialized static ContactResolution.updateSiriKitIntentNLv3(siriKitIntent:nlIntent:app:locale:sharedGlobals:multicardinalIndex:)(v9, v104, v94, v28, (v31 + 3), v34, v32 & 1, v96, ObjectType, v105, v82, v83, v85, v87, v89, v92, v94, v96, v9, v100, v103, v104);

    (*(v23 + 8))(v28, v101);
LABEL_6:
    v59 = v107;
    goto LABEL_7;
  }

  v88 = v27 - v26;
  v90 = v23;
  v93 = v19;
  v95 = v14;
  v97 = v11;
  v36 = v1[7];
  v37 = v1;
  __swift_project_boxed_opaque_existential_1(v1 + 3, v1[6]);
  v38 = *(v36 + 56);
  v39 = OUTLINED_FUNCTION_26_4();
  v41 = v40(v39);
  v42 = OUTLINED_FUNCTION_40_9(v41);
  v44 = (*(v43 + 232))(v42);

  if ((v44 & 1) == 0)
  {
    v86 = type metadata accessor for ContactResolution();
    v99 = v9;
    v84 = swift_getObjectType();
    v60 = v104[3];
    v61 = v104[4];
    v62 = OUTLINED_FUNCTION_55();
    __swift_project_boxed_opaque_existential_1(v62, v63);
    v64 = *(v61 + 128);
    v65 = OUTLINED_FUNCTION_26_4();
    v67 = v66(v65);
    v68 = v104[4];
    __swift_project_boxed_opaque_existential_1(v104, v104[3]);
    OUTLINED_FUNCTION_43_3();
    HIDWORD(v82) = PhoneCallNLIntent.isEmergencyContactCall()();
    v69 = *(v10 + 264);
    OUTLINED_FUNCTION_43_9(*(v10 + 272));
    swift_getAssociatedTypeWitness();
    OUTLINED_FUNCTION_89();
    v70 = ParameterResolutionRecord.app.getter();
    v71 = v37[7];
    __swift_project_boxed_opaque_existential_1(v37 + 3, v37[6]);
    v72 = *(v71 + 8);
    v73 = OUTLINED_FUNCTION_25_0();
    v74(v73);
    __swift_project_boxed_opaque_existential_1(v107, v108);
    v75 = v88;
    OUTLINED_FUNCTION_25_0();
    dispatch thunk of DeviceState.siriLocale.getter();
    ParameterResolutionRecord.parameter.getter();
    v76 = ParameterIdentifier.multicardinalIndex.getter();
    LOBYTE(v68) = v77;
    (*(v95 + 8))(v19, v97);
    static SiriKitEventSender.current.getter();
    type metadata accessor for EmergencyContactResolution();
    v78 = OUTLINED_FUNCTION_79();
    LOBYTE(v79) = v68 & 1;
    specialized static ContactResolution.updateSiriKitIntent(siriKitIntent:contactQueries:hasEmergencyContact:app:locale:nlIntent:sharedGlobals:multicardinalIndex:siriKitEventSender:emergencyContactResolution:)(v99, v67, BYTE4(v82) & 1, v70, v88, v104, (v37 + 3), v76, v79, v106, v78, v86, v84, *(v105 + 8), v82, v84, v86, v88, v90, v19, v95, v97, v99, v100, v103, v104);

    __swift_destroy_boxed_opaque_existential_1(v106);
    (*(v91 + 8))(v75, v102);
    goto LABEL_6;
  }

  v45 = v9;
  v46 = swift_getObjectType();
  v47 = v104[4];
  __swift_project_boxed_opaque_existential_1(v104, v104[3]);
  v48 = *(v47 + 128);
  v49 = OUTLINED_FUNCTION_26_4();
  v51 = v50(v49);
  v52 = v104[4];
  __swift_project_boxed_opaque_existential_1(v104, v104[3]);
  OUTLINED_FUNCTION_43_3();
  LODWORD(v100) = PhoneCallNLIntent.isEmergencyContactCall()();
  v53 = *(v10 + 264);
  OUTLINED_FUNCTION_43_9(*(v10 + 272));
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_89();
  v54 = ParameterResolutionRecord.app.getter();
  ParameterResolutionRecord.parameter.getter();
  v55 = ParameterIdentifier.multicardinalIndex.getter();
  v57 = v56;
  (*(v95 + 8))(v93, v97);
  static SiriKitEventSender.current.getter();
  type metadata accessor for EmergencyContactResolution();
  v58 = OUTLINED_FUNCTION_79();
  v106[3] = type metadata accessor for ContactGroupResolver();
  v106[4] = &protocol witness table for ContactGroupResolver;
  __swift_allocate_boxed_opaque_existential_1(v106);
  ContactGroupResolver.init()();
  specialized static ReferenceContactResolutionWrapper.resolveUpdateSKIntent(siriKitIntent:contactQueries:hasEmergencyContact:app:nlIntent:sharedGlobals:multicardinalIndex:siriKitEventSender:emergencyContactResolution:contactGroupResolver:)(v45, v51, v100 & 1, v54, v104, (v37 + 3), v55, v57 & 1, v107, v58, v106, v46, *(v105 + 8), v81, v82, v83, v85, v88, v90, v93, v95, v97, v98, v100, v103);

  __swift_destroy_boxed_opaque_existential_1(v107);
  v59 = v106;
LABEL_7:
  __swift_destroy_boxed_opaque_existential_1(v59);
  OUTLINED_FUNCTION_65();
}

uint64_t CallingIntentNeedsValueFlowStrategy.makePromptForNeedsValueOutput(app:intent:parameterName:intentResolutionResult:)()
{
  OUTLINED_FUNCTION_15();
  v1[11] = v2;
  v1[12] = v0;
  v1[9] = v3;
  v1[10] = v4;
  v1[7] = v5;
  v1[8] = v6;
  v1[13] = *v0;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  OUTLINED_FUNCTION_21(v7);
  v9 = *(v8 + 64);
  v1[14] = OUTLINED_FUNCTION_45();
  v10 = type metadata accessor for DialogPhase();
  OUTLINED_FUNCTION_21(v10);
  v12 = *(v11 + 64);
  v1[15] = OUTLINED_FUNCTION_45();
  v13 = type metadata accessor for OutputGenerationManifest();
  v1[16] = v13;
  OUTLINED_FUNCTION_13_2(v13);
  v1[17] = v14;
  v16 = *(v15 + 64);
  v1[18] = OUTLINED_FUNCTION_45();
  v17 = type metadata accessor for NLContextUpdate();
  v1[19] = v17;
  OUTLINED_FUNCTION_13_2(v17);
  v1[20] = v18;
  v20 = *(v19 + 64);
  v1[21] = OUTLINED_FUNCTION_45();
  v21 = type metadata accessor for Locale();
  v1[22] = v21;
  OUTLINED_FUNCTION_13_2(v21);
  v1[23] = v22;
  v24 = *(v23 + 64);
  v1[24] = OUTLINED_FUNCTION_45();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v25);
  v27 = *(v26 + 64);
  v1[25] = OUTLINED_FUNCTION_62_4();
  v1[26] = swift_task_alloc();
  v28 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v28, v29, v30);
}

{
  v1 = v0[26];
  v2 = v0[13];
  v4 = v0[8];
  v3 = v0[9];
  v5 = *(v2 + 264);
  v6 = *(*(*(v2 + 272) + 8) + 16);
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_55();
  v7 = *(*(swift_getAssociatedConformanceWitness() + 8) + 16);
  v8 = *(v7 + 8);
  v9 = swift_checkMetadataState();
  v10 = v8(v9, v7);
  v11 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_7_6();
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v11);
  if (!App.isFirstParty()())
  {
    v43 = v11;
    v45 = v10;
    v15 = v0[23];
    v16 = v0[24];
    v42 = v0[22];
    v17 = v0[12];
    v18 = v0[8];
    v19 = v17[42];
    __swift_project_boxed_opaque_existential_1(v17 + 38, v17[41]);
    OUTLINED_FUNCTION_2_0();
    (*(v20 + 208))();
    v21 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
    OUTLINED_FUNCTION_40_0();
    dispatch thunk of DeviceState.siriLocale.getter();
    v22 = *(v19 + 16);
    v23 = OUTLINED_FUNCTION_33_4();
    v24(v23);
    v26 = v25;
    (*(v15 + 8))(v16, v42);
    __swift_destroy_boxed_opaque_existential_1(v0 + 2);
    if (v26)
    {
      v27 = v0[25];
      OUTLINED_FUNCTION_53_1();
      OUTLINED_FUNCTION_19_3();
      SpeakableString.init(print:speak:)();
      v28 = 0;
    }

    else
    {
      v28 = 1;
    }

    v30 = v0[25];
    v29 = v0[26];
    outlined destroy of PhoneCallNLIntent?(v29, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    __swift_storeEnumTagSinglePayload(v30, v28, 1, v43);
    outlined init with take of SpeakableString?(v30, v29);
    v10 = v45;
  }

  v31 = v10 == 2;
  v32 = v0[12];
  v33 = v32[14];
  OUTLINED_FUNCTION_2_0();
  v35 = (*(v34 + 304))();
  v36 = (*(*v32 + 328))();
  v37 = *(v32 + direct field offset for CallingIntentNeedsValueFlowStrategy.isUnsupportedFollowUp);
  v44 = (*v33 + class metadata base offset for StartCallCATsSimple + 672);
  v46 = (*v44 + **v44);
  v38 = (*v44)[1];
  v39 = swift_task_alloc();
  v0[27] = v39;
  *v39 = v0;
  v39[1] = CallingIntentNeedsValueFlowStrategy.makePromptForNeedsValueOutput(app:intent:parameterName:intentResolutionResult:);
  v40 = v0[26];

  return (v46)(v40, v31, *&v35, 0, v36 & 1, v37);
}

{
  OUTLINED_FUNCTION_27();
  v3 = v2;
  OUTLINED_FUNCTION_28();
  v5 = v4;
  OUTLINED_FUNCTION_13_1();
  *v6 = v5;
  v8 = *(v7 + 216);
  v9 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v10 = v9;
  *(v5 + 224) = v0;

  if (!v0)
  {
    *(v5 + 232) = v3;
  }

  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v11, v12, v13);
}

{
  OUTLINED_FUNCTION_31();
  v1 = *(v0 + 232);
  v3 = *(v0 + 160);
  v2 = *(v0 + 168);
  v5 = *(v0 + 144);
  v4 = *(v0 + 152);
  v7 = *(v0 + 112);
  v6 = *(v0 + 120);
  v8 = *(v0 + 96);
  _s27PhoneCallFlowDelegatePlugin0aB17NLContextProviderC24makeNeedsValueContextFor9parameter07SiriKitC00F6UpdateVSSSg_tFZSo8INIntentC_So0Q8ResponseCTt1g5(*(v0 + 80), *(v0 + 88));
  static DialogPhase.clarification.getter();
  OutputGenerationManifest.init(dialogPhase:_:)();
  (*(v3 + 16))(v7, v2, v4);
  OUTLINED_FUNCTION_23_3();
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v4);
  OutputGenerationManifest.nlContextUpdate.setter();
  v12 = v8[27];
  __swift_project_boxed_opaque_existential_1(v8 + 23, v8[26]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v13 = swift_allocObject();
  *(v0 + 240) = v13;
  *(v13 + 16) = xmmword_426260;
  *(v13 + 32) = v1;
  v14 = async function pointer to dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)[1];
  v15 = v1;
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 248) = v16;
  *v16 = v17;
  v16[1] = CallingIntentNeedsValueFlowStrategy.makePromptForNeedsValueOutput(app:intent:parameterName:intentResolutionResult:);
  v18 = *(v0 + 144);
  v19 = *(v0 + 56);
  OUTLINED_FUNCTION_69_2();

  return dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)(v20, v21, v22, v23, v24);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  v2 = *(v1 + 248);
  v3 = *(v1 + 240);
  v4 = *v0;
  OUTLINED_FUNCTION_4_2();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v6, v7, v8);
}

{
  v1 = *(v0 + 200);
  v2 = *(v0 + 208);
  v3 = *(v0 + 192);
  v5 = *(v0 + 160);
  v4 = *(v0 + 168);
  v7 = *(v0 + 144);
  v6 = *(v0 + 152);
  v8 = *(v0 + 128);
  v9 = *(v0 + 136);
  v18 = *(v0 + 120);
  v19 = *(v0 + 112);

  v10 = *(v9 + 8);
  v11 = OUTLINED_FUNCTION_36_2();
  v12(v11);
  v13 = *(v5 + 8);
  v14 = OUTLINED_FUNCTION_33_4();
  v15(v14);
  outlined destroy of PhoneCallNLIntent?(v2, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);

  OUTLINED_FUNCTION_8_1();

  return v16();
}

uint64_t CallingIntentNeedsValueFlowStrategy.makePromptForNeedsValueOutput(app:intent:parameterName:intentResolutionResult:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_61_0();
  OUTLINED_FUNCTION_31();
  v11 = v10[25];
  v12 = v10[24];
  v13 = v10[21];
  v14 = v10[18];
  v16 = v10[14];
  v15 = v10[15];
  outlined destroy of PhoneCallNLIntent?(v10[26], &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);

  OUTLINED_FUNCTION_11();
  v17 = v10[28];
  OUTLINED_FUNCTION_60();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10);
}

uint64_t CallingIntentNeedsValueFlowStrategy.makeRepromptOnLowConfidenceOutput(app:intent:parameterName:intentResolutionResult:)()
{
  OUTLINED_FUNCTION_15();
  v1[11] = v2;
  v1[12] = v0;
  v1[9] = v3;
  v1[10] = v4;
  v1[7] = v5;
  v1[8] = v6;
  v1[6] = v7;
  v1[13] = *v0;
  v8 = type metadata accessor for OutputGenerationManifest();
  v1[14] = v8;
  OUTLINED_FUNCTION_13_2(v8);
  v1[15] = v9;
  v11 = *(v10 + 64);
  v1[16] = OUTLINED_FUNCTION_45();
  v12 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v12, v13, v14);
}

{
  OUTLINED_FUNCTION_27();
  v1 = *v0;
  v2 = *(*v0 + 136);
  v3 = *v0;
  OUTLINED_FUNCTION_4_2();
  *v4 = v3;

  v5 = *(v1 + 128);

  v6 = *(v3 + 8);

  return v6();
}

{
  OUTLINED_FUNCTION_27();
  v3 = v2;
  OUTLINED_FUNCTION_28();
  v5 = v4;
  OUTLINED_FUNCTION_13_1();
  *v6 = v5;
  v8 = *(v7 + 144);
  v9 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v10 = v9;

  if (v0)
  {
    v11 = *(v5 + 128);

    v12 = *(v9 + 8);

    return v12();
  }

  else
  {
    *(v5 + 152) = v3;
    OUTLINED_FUNCTION_66_0();

    return _swift_task_switch(v14, v15, v16);
  }
}

{
  OUTLINED_FUNCTION_23_0();
  v1 = v0[19];
  v2 = v0[16];
  v3 = v0[12];
  v4 = v0[8];
  default argument 3 of SAUISayIt.init(message:dialogIdentifier:canUseServerTTS:listenAfterSpeaking:)(*(v0[13] + 264), *(v0[13] + 272));
  v5 = *(*v3 + 256);
  v6 = OUTLINED_FUNCTION_54_9();
  v7(v6);
  v8 = v3[27];
  __swift_project_boxed_opaque_existential_1(v3 + 23, v3[26]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v9 = swift_allocObject();
  v0[20] = v9;
  *(v9 + 16) = xmmword_426260;
  *(v9 + 32) = v1;
  v10 = async function pointer to dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)[1];
  v11 = v1;
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[21] = v12;
  *v12 = v13;
  v12[1] = CallingIntentNeedsValueFlowStrategy.makeRepromptOnLowConfidenceOutput(app:intent:parameterName:intentResolutionResult:);
  v14 = v0[16];
  v15 = v0[6];
  OUTLINED_FUNCTION_69_2();

  return dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)(v16, v17, v18, v19, v20);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  v2 = *(v1 + 168);
  v3 = *(v1 + 160);
  v4 = *v0;
  OUTLINED_FUNCTION_4_2();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v6, v7, v8);
}

{
  OUTLINED_FUNCTION_27();
  v2 = *(v0 + 120);
  v1 = *(v0 + 128);
  v3 = *(v0 + 112);

  v4 = *(v2 + 8);
  v5 = OUTLINED_FUNCTION_0();
  v6(v5);
  v7 = *(v0 + 128);

  OUTLINED_FUNCTION_8_1();

  return v8();
}

uint64_t (*CallingIntentNeedsValueFlowStrategy.makeRepromptOnLowConfidenceOutput(app:intent:parameterName:intentResolutionResult:)())(void *, void)
{
  OUTLINED_FUNCTION_27();
  v1 = v0[12];
  OUTLINED_FUNCTION_2_0();
  result = (*(v2 + 320))(v0 + 2);
  if (__OFADD__(*v4, 1))
  {
    __break(1u);
  }

  else
  {
    v5 = v0[12];
    ++*v4;
    v6 = result(v0 + 2, 0);
    if ((*(*v5 + 304))(v6) > 2)
    {
      v15 = *(v0[12] + 112);
      OUTLINED_FUNCTION_2_0();
      v19 = (v16 + class metadata base offset for StartCallCATsSimple + 464);
      v20 = (*v19 + **v19);
      v17 = (*v19)[1];
      v18 = swift_task_alloc();
      v0[18] = v18;
      *v18 = v0;
      v18[1] = CallingIntentNeedsValueFlowStrategy.makeRepromptOnLowConfidenceOutput(app:intent:parameterName:intentResolutionResult:);

      return v20();
    }

    else
    {
      swift_task_alloc();
      OUTLINED_FUNCTION_25();
      v0[17] = v7;
      *v7 = v8;
      v7[1] = CallingIntentNeedsValueFlowStrategy.makeRepromptOnLowConfidenceOutput(app:intent:parameterName:intentResolutionResult:);
      v9 = v0[12];
      v10 = v0[9];
      v11 = v0[10];
      v12 = v0[7];
      v13 = v0[8];
      v14 = v0[6];

      return CallingIntentNeedsValueFlowStrategy.makePromptForNeedsValueOutput(app:intent:parameterName:intentResolutionResult:)();
    }
  }

  return result;
}

void *CallingIntentNeedsValueFlowStrategy.__allocating_init(delegate:startCallCATs:startCallCatPatterns:startCallCATsSimple:phoneCallCommonCATs:phoneCallCommonCATsSimple:phoneCallCommonCatPatterns:phoneCallDisplayTextCATsSimple:responseGenerator:siriKitEventSender:appInfoBuilder:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t a8, uint64_t *a9, uint64_t *a10, uint64_t *a11)
{
  v20 = *(v11 + 48);
  v21 = *(v11 + 52);
  swift_allocObject();
  return CallingIntentNeedsValueFlowStrategy.init(delegate:startCallCATs:startCallCatPatterns:startCallCATsSimple:phoneCallCommonCATs:phoneCallCommonCATsSimple:phoneCallCommonCatPatterns:phoneCallDisplayTextCATsSimple:responseGenerator:siriKitEventSender:appInfoBuilder:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11);
}

void *CallingIntentNeedsValueFlowStrategy.init(delegate:startCallCATs:startCallCatPatterns:startCallCATsSimple:phoneCallCommonCATs:phoneCallCommonCATsSimple:phoneCallCommonCatPatterns:phoneCallDisplayTextCATsSimple:responseGenerator:siriKitEventSender:appInfoBuilder:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t a8, uint64_t *a9, uint64_t *a10, uint64_t *a11)
{
  *(v11 + direct field offset for CallingIntentNeedsValueFlowStrategy.rePromptCount) = 0;
  *(v11 + direct field offset for CallingIntentNeedsValueFlowStrategy.startingOver) = 0;
  *(v11 + direct field offset for CallingIntentNeedsValueFlowStrategy.isUnsupportedFollowUp) = 0;
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

uint64_t protocol witness for NeedsValueFlowStrategyAsync.parseValueResponse(input:resolveRecord:) in conformance CallingIntentNeedsValueFlowStrategy<A>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(**v3 + 384);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = closure #1 in ActionableCallControlFlow.execute();

  return v12(a1, a2, a3);
}

uint64_t protocol witness for NeedsValueFlowStrategyAsync.makePromptForValue(resolveRecord:) in conformance CallingIntentNeedsValueFlowStrategy<A>(uint64_t a1, uint64_t a2)
{
  v6 = *(**v2 + 392);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = closure #2 in ActionableCallControlFlow.execute();

  return v10(a1, a2);
}

uint64_t protocol witness for NeedsValueFlowStrategyAsync.makeRepromptOnEmptyParse(resolveRecord:) in conformance CallingIntentNeedsValueFlowStrategy<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = async function pointer to NeedsValueFlowStrategyAsync.makeRepromptOnEmptyParse(resolveRecord:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  v11 = *(a3 + 264);
  v12 = *(a3 + 272);
  v13 = type metadata accessor for CallingIntentNeedsValueFlowStrategy();
  *v10 = v4;
  v10[1] = closure #1 in ActionableCallControlFlow.execute();

  return NeedsValueFlowStrategyAsync.makeRepromptOnEmptyParse(resolveRecord:)(a1, a2, v13, a4);
}

uint64_t protocol witness for NeedsValueFlowStrategyAsync.makeRepromptOnLowConfidence(resolveRecord:) in conformance CallingIntentNeedsValueFlowStrategy<A>(uint64_t a1, uint64_t a2)
{
  v6 = *(**v2 + 408);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = closure #1 in ActionableCallControlFlow.execute();

  return v10(a1, a2);
}

uint64_t protocol witness for ParameterResolutionHandlingAsync.makeFlowCancelledResponse(app:intent:parameter:) in conformance CallingIntentNeedsValueFlowStrategy<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = async function pointer to ParameterResolutionHandlingAsync.makeFlowCancelledResponse(app:intent:parameter:)[1];
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  v15 = *(a5 + 264);
  v16 = *(a5 + 272);
  v17 = type metadata accessor for CallingIntentNeedsValueFlowStrategy();
  *v14 = v6;
  v14[1] = closure #1 in ActionableCallControlFlow.execute();

  return ParameterResolutionHandlingAsync.makeFlowCancelledResponse(app:intent:parameter:)(a1, a2, a3, a4, v17, a6);
}

uint64_t protocol witness for ParameterResolutionHandlingAsync.makeErrorResponse(error:app:intent:parameter:) in conformance CallingIntentNeedsValueFlowStrategy<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = *(**v5 + 400);
  v16 = (v12 + *v12);
  v13 = v12[1];
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  *v14 = v6;
  v14[1] = closure #1 in ActionableCallControlFlow.execute();

  return v16(a1, a2, a3, a4, a5);
}

uint64_t partial apply for closure #1 in CallingIntentNeedsValueFlowStrategy.parseValueResponse(input:resolveRecord:)(uint64_t *a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(*(v4 + 8) + 16);
  swift_getAssociatedTypeWitness();
  v6 = OUTLINED_FUNCTION_89();
  OUTLINED_FUNCTION_13_2(v6);
  v8 = v7;
  v10 = v9;
  v11 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v12 = (v1 + ((*(v10 + 64) + v11 + 7) & 0xFFFFFFFFFFFFFFF8));

  return closure #1 in CallingIntentNeedsValueFlowStrategy.parseValueResponse(input:resolveRecord:)(a1, v1 + v11, v12, v3, v4);
}

uint64_t _s11SiriKitFlow5InputVACs23CustomStringConvertibleAAWlTm_0(unint64_t *a1, void (*a2)(uint64_t))
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

void specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  v10 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v4 = a3;
  v6 = a2;
  v15 = a4;
  v11 = *v5;
  v7 = *v5 & 0xFFFFFFFFFFFFFF8;
  v8 = v7 + 32;
  v5 = (v7 + 32 + 8 * a1);
  type metadata accessor for INPerson();
  swift_arrayDestroy();
  v12 = __OFSUB__(v4, v10);
  v10 = v4 - v10;
  if (v12)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (!v10)
  {
    goto LABEL_12;
  }

  v9 = v11 >> 62;
  if (!(v11 >> 62))
  {
    v13 = *(v7 + 16);
    goto LABEL_6;
  }

LABEL_20:
  v13 = _CocoaArrayWrapper.endIndex.getter();
LABEL_6:
  if (__OFSUB__(v13, v6))
  {
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  specialized UnsafeMutablePointer.moveInitialize(from:count:)(v8 + 8 * v6, &v13[-v6], &v5[v4]);
  if (v9)
  {
    v13 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v13 = *(v7 + 16);
  }

  if (__OFADD__(v13, v10))
  {
    goto LABEL_22;
  }

  *(v7 + 16) = &v13[v10];
LABEL_12:
  v13 = v15;
  if (v4 >= 1)
  {
    *v5 = v15;
    if (v4 == 1)
    {
      return;
    }

LABEL_23:
    v14 = v13;
    __break(1u);
    return;
  }
}

void specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)()
{
  OUTLINED_FUNCTION_66();
  v11 = v8 - v7;
  if (__OFSUB__(v8, v7))
  {
    __break(1u);
    goto LABEL_22;
  }

  v0 = v10;
  v4 = v9;
  v3 = v8;
  v12 = *v1;
  v1 = (*v1 & 0xFFFFFFFFFFFFFF8);
  v5 = v1 + 4;
  v2 = &v1[v7 + 4];
  type metadata accessor for INPerson();
  v13 = swift_arrayDestroy();
  v14 = __OFSUB__(v4, v11);
  v11 = v4 - v11;
  if (v14)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (!v11)
  {
    goto LABEL_12;
  }

  v6 = v12 >> 62;
  if (!(v12 >> 62))
  {
    v15 = v1[2];
    goto LABEL_6;
  }

LABEL_23:
  v15 = _CocoaArrayWrapper.endIndex.getter();
LABEL_6:
  if (__OFSUB__(v15, v3))
  {
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  specialized UnsafeMutablePointer.moveInitialize(from:count:)(&v5[v3], v15 - v3, v2 + 8 * v4);
  if (v6)
  {
    v13 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v13 = v1[2];
  }

  if (__OFADD__(v13, v11))
  {
    goto LABEL_25;
  }

  v1[2] = v13 + v11;
LABEL_12:
  if (v4 < 1)
  {
    OUTLINED_FUNCTION_65();

    return;
  }

  __chkstk_darwin(v13);
  if (v0 < 0 || (v0 & 0x4000000000000000) != 0)
  {
LABEL_26:
    _ss12_ArrayBufferV010withUnsafeB17Pointer_nonNativeyqd__qd__SRyxGqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFADq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lyxsAE_pqd__Isgyrzr_AByxGqd__sAE_psAE_pRsd_0_r_0_lIetMggrzo_Tpq5So8INPersonC_ytTg5075_sSa32withContiguousStorageIfAvailableyqd__Sgqd__SRyxGKXEKlFqd__ACKXEfU_So8I7C_ytTG5ADq_sAE_pRi_zRi0_zRi__Ri0__r0_lyAHytIsgyrzo_Tf1ncn_n(v0, partial apply for specialized closure #1 in _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
    goto LABEL_17;
  }

  if (*(&dword_10 + (v0 & 0xFFFFFFFFFFFFFF8)) == v4)
  {
    swift_arrayInitWithCopy();
LABEL_17:

    OUTLINED_FUNCTION_65();
    return;
  }

  __break(1u);
}

uint64_t specialized closure #1 in _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 == a3)
  {
    if (result)
    {
      type metadata accessor for INPerson();
      return swift_arrayInitWithCopy();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t _ss12_ArrayBufferV010withUnsafeB17Pointer_nonNativeyqd__qd__SRyxGqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFADq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lyxsAE_pqd__Isgyrzr_AByxGqd__sAE_psAE_pRsd_0_r_0_lIetMggrzo_Tpq5So8INPersonC_ytTg5075_sSa32withContiguousStorageIfAvailableyqd__Sgqd__SRyxGKXEKlFqd__ACKXEfU_So8I7C_ytTG5ADq_sAE_pRi_zRi0_zRi__Ri0__r0_lyAHytIsgyrzo_Tf1ncn_n(int64_t a1, uint64_t (*a2)(void *, uint64_t))
{
  AssociatedObject = specialized _ArrayBuffer.getOrAllocateAssociatedObjectBuffer()(a1);
  v4 = AssociatedObject[2];

  return a2(AssociatedObject + 4, v4);
}

void *specialized _ArrayBuffer.getOrAllocateAssociatedObjectBuffer()(int64_t a1)
{
  if (a1 < 0)
  {
    v2 = a1;
  }

  else
  {
    v2 = (a1 & 0xFFFFFFFFFFFFFF8);
  }

  AssociatedObject = objc_getAssociatedObject(v2, _swiftEmptyArrayStorage);
  if (AssociatedObject)
  {
    v4 = AssociatedObject;
  }

  else
  {
    objc_sync_enter(v2);
    v5 = objc_getAssociatedObject(v2, _swiftEmptyArrayStorage);
    if (v5)
    {
      v4 = v5;
      swift_retain_n();
    }

    else
    {
      v4 = specialized _copyCollectionToContiguousArray<A>(_:)(a1);

      objc_setAssociatedObject(v2, _swiftEmptyArrayStorage, v4, &dword_0 + 1);
    }

    objc_sync_exit(v2);
  }

  return v4;
}

uint64_t partial apply for closure #1 in closure #1 in CallingIntentNeedsValueFlowStrategy.makeErrorResponse(error:app:intent:parameter:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy11SiriKitFlow6Output_ps5Error_pGMd, _sScCy11SiriKitFlow6Output_ps5Error_pGMR);
  OUTLINED_FUNCTION_21(v2);
  v4 = *(v3 + 80);

  return closure #1 in closure #1 in CallingIntentNeedsValueFlowStrategy.makeErrorResponse(error:app:intent:parameter:)(a1);
}

uint64_t OUTLINED_FUNCTION_51_10(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = *(v3 + 328);
  v5 = *(v3 + 336);
  return v2;
}

uint64_t OUTLINED_FUNCTION_74_3()
{

  return swift_allocError();
}

uint64_t OUTLINED_FUNCTION_78_3()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_81_0()
{

  return static CATOption.defaultMode.getter();
}

uint64_t CallingIntentRCHFlowDelegate.buildDisambiguationList(app:intent:parameterName:intentResolutionResult:templatingService:_:)(int a1, int a2, uint64_t a3, void *a4, id a5, uint64_t *a6, void (*a7)(void), uint64_t a8, uint64_t a9, uint64_t a10)
{
  v62 = *a6;
  v15 = [a5 disambiguationItems];
  v16 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v17 = *(v16 + 16);

  v18 = &selRef_alternatives;
  if (v17)
  {
    v18 = &selRef_disambiguationItems;
  }

  v19 = [a5 *v18];
  v20 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v21._countAndFlagsBits = a3;
  v21._object = a4;
  if ((PhoneCallSlotNames.init(rawValue:)(v21).value & 0xFE) == 4)
  {
    if (one-time initialization token for siriPhone != -1)
    {
      goto LABEL_40;
    }

    while (1)
    {
      v22 = type metadata accessor for Logger();
      __swift_project_value_buffer(v22, static Logger.siriPhone);
      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.default.getter();
      v26 = v62;
      v25 = a10;
      if (os_log_type_enabled(v23, v24))
      {
        v27 = swift_slowAlloc();
        *v27 = 0;
        _os_log_impl(&dword_0, v23, v24, "#CallingIntentRCHFlowDelegate Building contacts disambiguation list", v27, 2u);
        OUTLINED_FUNCTION_26_0();
      }

      v28 = specialized _arrayConditionalCast<A, B>(_:)(v20);

      v20 = (v28 ? v28 : _swiftEmptyArrayStorage);
      v29 = *(v62 + class metadata base offset for PhoneCallBaseCatTemplatingService);
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v31 = (*(*(*(AssociatedConformanceWitness + 8) + 8) + 8))(v29);
      v60 = a8;
      if (!v31)
      {
        break;
      }

      v32 = v31;
      if (!specialized Array.count.getter(v31))
      {

        break;
      }

      specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v32 & 0xC000000000000001) == 0, v32);
      if ((v32 & 0xC000000000000001) != 0)
      {
        v33 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v33 = *(v32 + 32);
      }

      v34 = v33;

      v35 = [v34 relationship];

      if (!v35)
      {
        break;
      }

      v36 = specialized Array.count.getter(v20);
      v37 = 0;
      a8 = v20 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v36 == v37)
        {

          v26 = v62;
          v25 = a10;
          goto LABEL_32;
        }

        if ((v20 & 0xC000000000000001) != 0)
        {
          v38 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v37 >= *(&dword_10 + (v20 & 0xFFFFFFFFFFFFFF8)))
          {
            goto LABEL_39;
          }

          v38 = *(v20 + 8 * v37 + 32);
        }

        v39 = v38;
        if (__OFADD__(v37, 1))
        {
          break;
        }

        [v38 setRelationship:v35];

        ++v37;
      }

      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      OUTLINED_FUNCTION_6_2();
    }

LABEL_32:
    v49 = *(v26 + class metadata base offset for PhoneCallBaseCatTemplatingService + 8);
    v75 = type metadata accessor for PhoneCallBaseCatTemplatingService();
    v76 = &protocol witness table for PhoneCallBaseCatTemplatingService<A, B>;
    *&v74 = a6;

    v50 = App.appIdentifier.getter();
    if (v51)
    {
      v52 = v50;
    }

    else
    {
      v52 = 0;
    }

    v53 = 0xE000000000000000;
    if (v51)
    {
      v53 = v51;
    }

    v63 = v53;
    v64 = v52;
    v73 = v61;
    v54 = *(*(v25 + 8) + 8);
    v55 = *(v54 + 8);
    v55(v70, a9, v54);
    v56 = v71;
    v57 = v72;
    __swift_project_boxed_opaque_existential_1(v70, v71);
    (*(v57 + 184))(v81, v56, v57);
    v69 = v61;
    v55(v66, a9, v54);
    v58 = v67;
    v59 = v68;
    __swift_project_boxed_opaque_existential_1(v66, v67);
    (*(v59 + 8))(v82, v58, v59);
    v77[0] = v20;
    v77[1] = v20;
    outlined init with take of SPHConversation(&v74, &v83);
    v78 = 1;
    v79 = v64;
    v80 = v63;

    __swift_destroy_boxed_opaque_existential_1(v66);
    __swift_destroy_boxed_opaque_existential_1(v70);
    specialized DisambiguationItemFactory.buildDisambiguationItemList(_:)(a7, v60);
    return outlined destroy of PhoneContactDisambiguationItemFactory(v77);
  }

  else
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2();
    }

    v40 = type metadata accessor for Logger();
    __swift_project_value_buffer(v40, static Logger.siriPhone);

    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v77[0] = v44;
      *v43 = 136315138;
      *(v43 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a3, a4, v77);
      _os_log_impl(&dword_0, v41, v42, "#CallingIntentRCHFlowDelegate Disambiguating %s, no disambiguation snippet", v43, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v44);
      OUTLINED_FUNCTION_26_0();
      OUTLINED_FUNCTION_26_0();
    }

    v45 = type metadata accessor for SiriKitDisambiguationList();
    v46 = *(v45 + 48);
    v47 = *(v45 + 52);
    swift_allocObject();
    SiriKitDisambiguationList.init(rawItems:disambiguationItems:shouldReadItemsInVox:requestUnlockForEmptyOrDuplicateItems:)();
    a7();
  }
}

void *specialized _arrayConditionalCast<A, B>(_:)(uint64_t a1)
{
  v7 = _swiftEmptyArrayStorage;
  v2 = *(a1 + 16);
  specialized ContiguousArray.reserveCapacity(_:)();
  v3 = a1 + 32;
  if (!v2)
  {
    return v7;
  }

  while (1)
  {
    outlined init with copy of Any(v3, v6);
    type metadata accessor for INPerson();
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    v4 = v7[2];
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
    v3 += 32;
    if (!--v2)
    {
      return v7;
    }
  }

  return 0;
}

uint64_t specialized DisambiguationItemFactory.buildDisambiguationItemList(_:)(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &__src[-v7];
  v9 = type metadata accessor for TaskPriority();
  __swift_storeEnumTagSinglePayload(v8, 1, 1, v9);
  outlined init with copy of PhoneContactDisambiguationItemFactory(v2, __src);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = a1;
  v10[5] = a2;
  memcpy(v10 + 6, __src, 0xA0uLL);

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5();
}

uint64_t specialized closure #1 in DisambiguationItemFactory.buildDisambiguationItemList(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = swift_task_alloc();
  v5[4] = v6;
  *v6 = v5;
  v6[1] = specialized closure #1 in DisambiguationItemFactory.buildDisambiguationItemList(_:);

  return specialized DisambiguationItemFactory.buildDisambiguationItemList()();
}

uint64_t specialized closure #1 in DisambiguationItemFactory.buildDisambiguationItemList(_:)()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_13_1();
  *v2 = v1;
  v4 = *(v3 + 32);
  *v2 = *v0;
  *(v1 + 40) = v5;

  v6 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v6, v7, v8);
}

{
  OUTLINED_FUNCTION_15();
  v1 = *(v0 + 24);
  (*(v0 + 16))(*(v0 + 40));

  v2 = *(v0 + 8);

  return v2();
}

uint64_t specialized DisambiguationItemFactory.buildDisambiguationItemList()()
{
  *(v1 + 16) = v0;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = specialized DisambiguationItemFactory.buildDisambiguationItemList();

  return specialized DisambiguationItemFactory.buildDisambiguationItems()();
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_13_1();
  *v2 = v1;
  v4 = *(v3 + 24);
  *v2 = *v0;
  *(v1 + 32) = v5;

  v6 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v6, v7, v8);
}

{
  v22 = v0;
  v1 = v0[2];
  v2 = *v1;
  specialized _arrayForceCast<A, B>(_:)();
  v3 = v1[1];
  if (specialized Array.count.getter(v3) < 6 || PhoneContactDisambiguationProperties.isHandleDisambiguation.getter(v3))
  {
    static EmergencyUtils.isForeignEmergencyDisambiguation(_:)(v3);
  }

  v4 = v0[4];
  v5 = type metadata accessor for SiriKitDisambiguationList();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  v8 = SiriKitDisambiguationList.init(rawItems:disambiguationItems:shouldReadItemsInVox:requestUnlockForEmptyOrDuplicateItems:)();
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2();
  }

  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, static Logger.siriPhone);

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v21 = v13;
    *v12 = 136315138;

    v15 = SiriKitDisambiguationList.description.getter(v14);
    v17 = v16;

    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v17, &v21);

    *(v12 + 4) = v18;
    _os_log_impl(&dword_0, v10, v11, "Finished building SiriKitDisambiguationList: %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v13);
    OUTLINED_FUNCTION_26_0();
    OUTLINED_FUNCTION_26_0();
  }

  v19 = v0[1];

  return v19(v8);
}

uint64_t specialized DisambiguationItemFactory.buildDisambiguationItems()()
{
  *(v1 + 40) = v0;
  return _swift_task_switch(specialized DisambiguationItemFactory.buildDisambiguationItems(), 0, 0);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  v2 = *(v1 + 88);
  v3 = *(v1 + 80);
  v4 = *v0;
  OUTLINED_FUNCTION_13_1();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t specialized DisambiguationItemFactory.buildDisambiguationItems()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  v22[2] = _swiftEmptyArrayStorage;
  v23 = v22[5];
  v24 = *v23;
  v22[6] = *v23;
  v25 = specialized Array.count.getter(v24);
  v22[7] = v25;
  if (v25)
  {
    v32 = v22[6];
    if ((v32 & 0xC000000000000001) != 0)
    {
      v33 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (!*(&dword_10 + (v32 & 0xFFFFFFFFFFFFFF8)))
      {
        __break(1u);
        return withCheckedContinuation<A>(isolation:function:_:)(v25, v32, v26, v27, v28, v29, v30, v31, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
      }

      v33 = *(v32 + 32);
    }

    v22[8] = v33;
    v22[9] = 1;
    v34 = v22[5];
    v22[3] = v33;
    v35 = swift_task_alloc();
    v22[10] = v35;
    *(v35 + 16) = v34;
    *(v35 + 24) = v22 + 3;
    v36 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
    v37 = swift_task_alloc();
    v22[11] = v37;
    type metadata accessor for SiriKitDisambiguationItem();
    *v37 = v22;
    v37[1] = specialized DisambiguationItemFactory.buildDisambiguationItems();
    OUTLINED_FUNCTION_3_27();

    return withCheckedContinuation<A>(isolation:function:_:)(v25, v32, v26, v27, v28, v29, v30, v31, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
  }

  v38 = v22[1];

  return v38(_swiftEmptyArrayStorage);
}

{
  v23 = v22[4];

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*(&dword_10 + (v22[2] & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v22[2] & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  v24 = v22[8];
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

  v25 = v22[2];

  v33 = v22[9];
  if (v33 != v22[7])
  {
    v36 = v22[6];
    if ((v36 & 0xC000000000000001) != 0)
    {
      v41 = v22[9];
      v26 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v33 >= *(&dword_10 + (v36 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_16;
      }

      v26 = *(v36 + 8 * v33 + 32);
    }

    v22[8] = v26;
    v22[9] = v33 + 1;
    if (!__OFADD__(v33, 1))
    {
      v37 = v22[5];
      v22[3] = v26;
      v38 = swift_task_alloc();
      v22[10] = v38;
      *(v38 + 16) = v37;
      *(v38 + 24) = v22 + 3;
      v39 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
      v40 = swift_task_alloc();
      v22[11] = v40;
      type metadata accessor for SiriKitDisambiguationItem();
      *v40 = v22;
      v40[1] = specialized DisambiguationItemFactory.buildDisambiguationItems();
      OUTLINED_FUNCTION_3_27();

      return withCheckedContinuation<A>(isolation:function:_:)(v26, v36, v27, v28, v29, v30, v31, v32, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
    }

    __break(1u);
LABEL_16:
    __break(1u);
    return withCheckedContinuation<A>(isolation:function:_:)(v26, v36, v27, v28, v29, v30, v31, v32, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
  }

  v34 = v22[1];

  return v34(v25);
}

uint64_t specialized closure #1 in DisambiguationItemFactory.buildDisambiguationItems()(uint64_t a1, void *a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy11SiriKitFlow0aB18DisambiguationItemCs5NeverOGMd, _sScCy11SiriKitFlow0aB18DisambiguationItemCs5NeverOGMR);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v14 - v9;
  (*(v7 + 16))(&v14 - v9, a1, v6);
  v11 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v12 = swift_allocObject();
  (*(v7 + 32))(v12 + v11, v10, v6);

  _s27PhoneCallFlowDelegatePlugin0A32ContactDisambiguationItemFactoryV05buildgH04item_ySo8INPersonC_y07SiriKitC00mngH0CctF04_s11mn9Flow0aB18gH16CIegxT_ACIegg_TRAJIegxT_Tf1ncn_n(a3, a2, _s27PhoneCallFlowDelegatePlugin25DisambiguationItemFactoryPAAE05buildF5Items33_C32737E71944EA4F5AB058928C30BAB3LLSay07SiriKitC00rsfG0CGyYaFyScCyAHs5NeverOGXEfU_yAHnYucALcfu_yAHnYucfu0_TA, v12);
}

uint64_t partial apply for specialized closure #1 in DisambiguationItemFactory.buildDisambiguationItemList(_:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for specialized closure #1 in DisambiguationItemFactory.buildDisambiguationItemList(_:);

  return specialized closure #1 in DisambiguationItemFactory.buildDisambiguationItemList(_:)(a1, v4, v5, v6, v7);
}

uint64_t partial apply for specialized closure #1 in DisambiguationItemFactory.buildDisambiguationItemList(_:)()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_13_1();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5();
}

uint64_t _s27PhoneCallFlowDelegatePlugin25DisambiguationItemFactoryPAAE05buildF5Items33_C32737E71944EA4F5AB058928C30BAB3LLSay07SiriKitC00rsfG0CGyYaFyScCyAHs5NeverOGXEfU_yAHnYucALcfu_yAHnYucfu0_TA()
{
  v0 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy11SiriKitFlow0aB18DisambiguationItemCs5NeverOGMd, _sScCy11SiriKitFlow0aB18DisambiguationItemCs5NeverOGMR) - 8) + 80);

  return _s27PhoneCallFlowDelegatePlugin25DisambiguationItemFactoryPAAE05buildF5Items33_C32737E71944EA4F5AB058928C30BAB3LLSay07SiriKitC00rsfG0CGyYaFyScCyAHs5NeverOGXEfU_yAHnYucALcfu_yAHnYucfu0_();
}

void *CallingIntentRCHFlowStrategy.__allocating_init(sharedGlobals:appResolved:phoneCallDisplayTextCATsSimple:startCallCATsSimple:)(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  outlined init with take of SPHConversation(a1, (v8 + 2));
  v8[7] = a2;
  v8[8] = a3;
  v8[9] = a4;
  return v8;
}

uint64_t CallingIntentRCHFlowStrategy.actionForInput(input:)()
{
  v1 = type metadata accessor for Parse();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = v0[5];
  v7 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v6);
  v8 = (*(v7 + 72))(v6, v7);
  Input.parse.getter();
  (*(*v8 + 192))(&v39, v5);

  (*(v2 + 8))(v5, v1);
  if (v40)
  {
    outlined init with take of SPHConversation(&v39, v45);
    if ((static ExecutionPath.choosePath(for:sharedGlobals:app:)(v45, v0 + 2, v0[7]) - 3) >= 3u)
    {
      if (one-time initialization token for siriPhone != -1)
      {
        OUTLINED_FUNCTION_6_2();
      }

      v19 = type metadata accessor for Logger();
      v20 = OUTLINED_FUNCTION_12_1(v19, static Logger.siriPhone);
      v21 = static os_log_type_t.debug.getter();
      if (OUTLINED_FUNCTION_51_0(v21))
      {
        v22 = OUTLINED_FUNCTION_65_0();
        OUTLINED_FUNCTION_103(v22);
        OUTLINED_FUNCTION_36_0(&dword_0, v23, v24, "#CallingIntentRCHFlowStrategy ignore current request because intent should be handled by the server");
        OUTLINED_FUNCTION_52();
      }

      static ActionForInput.ignore()();
    }

    else
    {
      v9 = v0[5];
      v10 = v0[6];
      __swift_project_boxed_opaque_existential_1(v0 + 2, v9);
      v11 = (*(v10 + 72))(v9, v10);
      (*(*v11 + 224))(&v39);

      if (v41)
      {
        outlined init with copy of PhoneCallNLIntent?(&v42, v43);
        outlined destroy of TransformationResult(&v39);
      }

      else
      {
        outlined destroy of PhoneCallNLIntent?(&v39, &_s27PhoneCallFlowDelegatePlugin20TransformationResultVSgMd, &_s27PhoneCallFlowDelegatePlugin20TransformationResultVSgMR);
        memset(v43, 0, sizeof(v43));
        v44 = 0;
      }

      __swift_project_boxed_opaque_existential_1(v45, v45[3]);
      PhoneCallNLIntent.shouldResetRequest(previousNLIntent:)();
      if (v25)
      {
        if (one-time initialization token for siriPhone != -1)
        {
          OUTLINED_FUNCTION_6_2();
        }

        v26 = type metadata accessor for Logger();
        v27 = OUTLINED_FUNCTION_12_1(v26, static Logger.siriPhone);
        v28 = static os_log_type_t.debug.getter();
        if (OUTLINED_FUNCTION_51_0(v28))
        {
          v29 = OUTLINED_FUNCTION_65_0();
          OUTLINED_FUNCTION_103(v29);
          OUTLINED_FUNCTION_36_0(&dword_0, v30, v31, "#CallingIntentRCHFlowStrategy ignore current request because shouldResetRequest from nlIntent is true");
          OUTLINED_FUNCTION_52();
        }

        static ActionForInput.ignore()();
      }

      else
      {
        if (one-time initialization token for siriPhone != -1)
        {
          OUTLINED_FUNCTION_6_2();
        }

        v32 = type metadata accessor for Logger();
        v33 = OUTLINED_FUNCTION_12_1(v32, static Logger.siriPhone);
        v34 = static os_log_type_t.debug.getter();
        if (OUTLINED_FUNCTION_51_0(v34))
        {
          v35 = OUTLINED_FUNCTION_65_0();
          OUTLINED_FUNCTION_103(v35);
          OUTLINED_FUNCTION_36_0(&dword_0, v36, v37, "#CallingIntentRCHFlowStrategy Received a recognized Input");
          OUTLINED_FUNCTION_52();
        }

        static ActionForInput.handle()();
      }

      outlined destroy of PhoneCallNLIntent?(v43, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMR);
    }

    return __swift_destroy_boxed_opaque_existential_1(v45);
  }

  else
  {
    outlined destroy of PhoneCallNLIntent?(&v39, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMR);
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2();
    }

    v12 = type metadata accessor for Logger();
    v13 = OUTLINED_FUNCTION_12_1(v12, static Logger.siriPhone);
    v14 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_51_0(v14))
    {
      v15 = OUTLINED_FUNCTION_65_0();
      OUTLINED_FUNCTION_103(v15);
      OUTLINED_FUNCTION_36_0(&dword_0, v16, v17, "#CallingIntentRCHFlowStrategy Input not a recognized PhoneCallNLIntent.");
      OUTLINED_FUNCTION_52();
    }

    return static ActionForInput.ignore()();
  }
}

uint64_t CallingIntentRCHFlowStrategy.makeIntentFromParse(parse:currentIntent:)()
{
  OUTLINED_FUNCTION_15();
  v1[9] = v2;
  v1[10] = v0;
  v1[8] = v3;
  v1[11] = *v0;
  v4 = type metadata accessor for PhoneError();
  v1[12] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v1[13] = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v6, v7, v8);
}

{
  v32 = v0;
  v2 = *(v0 + 80);
  v1 = *(v0 + 88);
  v4 = *(v0 + 64);
  v3 = *(v0 + 72);
  v5 = *(v1 + 80);
  v6 = *(v1 + 96);
  type metadata accessor for IntentFromParseFlowStrategyHelper();
  outlined init with copy of SignalProviding(v2 + 16, v0 + 16);
  v7 = *(*IntentFromParseFlowStrategyHelper.__allocating_init(sharedGlobals:appResolved:)((v0 + 16), *(v2 + 56)) + 120);

  v8 = v7(v4, v3);
  if (v8)
  {
    v9 = v8;
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2();
    }

    v10 = type metadata accessor for Logger();
    __swift_project_value_buffer(v10, static Logger.siriPhone);
    v11 = v9;
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v31 = v15;
      *v14 = 136315138;
      *(v0 + 56) = v11;
      v16 = v11;
      swift_getWitnessTable();
      v17 = String.init<A>(describing:)();
      v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, &v31);

      *(v14 + 4) = v19;
      _os_log_impl(&dword_0, v12, v13, "#CallingIntentRCHFlowStrategy Generated a siriKitIntent from Parse: %s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v15);
      OUTLINED_FUNCTION_26_0();
      OUTLINED_FUNCTION_26_0();
    }

    v20 = *(v0 + 104);

    v21 = *(v0 + 8);

    return v21(v11);
  }

  else
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2();
    }

    v23 = type metadata accessor for Logger();
    v24 = OUTLINED_FUNCTION_12_1(v23, static Logger.siriPhone);
    v25 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = OUTLINED_FUNCTION_65_0();
      *v26 = 0;
      _os_log_impl(&dword_0, v24, v25, "#CallingIntentRCHFlowStrategy Could not generate a skIntent from Parse.", v26, 2u);
      OUTLINED_FUNCTION_26_0();
    }

    v28 = *(v0 + 96);
    v27 = *(v0 + 104);

    swift_storeEnumTagMultiPayload();
    _s27PhoneCallFlowDelegatePlugin0A5ErrorOACs0F0AAWlTm_3(&lazy protocol witness table cache variable for type PhoneError and conformance PhoneError, type metadata accessor for PhoneError);
    swift_allocError();
    PhoneError.logged()(v29);
    _s27PhoneCallFlowDelegatePlugin0A5ErrorOWOhTm_3(v27, type metadata accessor for PhoneError);
    swift_willThrow();

    OUTLINED_FUNCTION_11();

    return v30();
  }
}

uint64_t CallingIntentRCHFlowStrategy.makeFailureConfirmingIntentResponse(app:intent:intentResponse:)()
{
  OUTLINED_FUNCTION_15();
  v1[19] = v2;
  v1[20] = v0;
  v1[17] = v3;
  v1[18] = v4;
  v5 = *(type metadata accessor for ButtonConfigurationModel() - 8);
  OUTLINED_FUNCTION_24_5();
  v1[21] = v6;
  v8 = *(v7 + 64) + 15;
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  v9 = *(*(type metadata accessor for DialogPhase() - 8) + 64) + 15;
  v1[24] = swift_task_alloc();
  v10 = type metadata accessor for OutputGenerationManifest();
  v1[25] = v10;
  v11 = *(v10 - 8);
  OUTLINED_FUNCTION_24_5();
  v1[26] = v12;
  v14 = *(v13 + 64) + 15;
  v1[27] = swift_task_alloc();
  v15 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v15, v16, v17);
}

{
  v42 = v0;
  v1 = *(v0 + 216);
  v2 = *(v0 + 192);
  v3 = *(v0 + 160);
  v4 = *(v0 + 144);
  static DialogPhase.error.getter();
  OutputGenerationManifest.init(dialogPhase:_:)();
  type metadata accessor for SirikitDeviceState();
  v5 = v3[5];
  v6 = v3[6];
  __swift_project_boxed_opaque_existential_1(v3 + 2, v5);
  (*(v6 + 8))(v41, v5, v6);
  v7 = SirikitDeviceState.__allocating_init(from:)();
  *(v0 + 224) = v7;
  objc_opt_self();
  v8 = swift_dynamicCastObjCClass();
  if (v8)
  {
    v4 = v8;
    v9 = *(v0 + 152);
    objc_opt_self();
    v10 = swift_dynamicCastObjCClass();
    if (v10)
    {
      v11 = v10;
      v12 = *(v0 + 152);
      v13 = *(v0 + 144);
      v14 = v12;
      if ([v11 code] == &dword_8)
      {
        if (one-time initialization token for siriPhone != -1)
        {
          OUTLINED_FUNCTION_6_2();
        }

        v15 = type metadata accessor for Logger();
        v16 = OUTLINED_FUNCTION_12_1(v15, static Logger.siriPhone);
        v17 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v16, v17))
        {
          v18 = OUTLINED_FUNCTION_65_0();
          *v18 = 0;
          _os_log_impl(&dword_0, v16, v17, "#CallingIntentRCHFlowStrategy airplane mode is enabled for emergency countdown request", v18, 2u);
          OUTLINED_FUNCTION_26_0();
        }

        v20 = *(v0 + 152);
        v19 = *(v0 + 160);

        v21 = *(v19 + 72);
        v22 = v20;

        v23 = static EmergencyUtils.requiresEmergencyConfirmation(intent:intentResponse:)(v4, v11);

        v24 = *(*v21 + class metadata base offset for StartCallCATsSimple + 304);
        OUTLINED_FUNCTION_24_5();
        v40 = (v25 + *v25);
        v27 = *(v26 + 4);
        v28 = swift_task_alloc();
        *(v0 + 232) = v28;
        *v28 = v0;
        v28[1] = CallingIntentRCHFlowStrategy.makeFailureConfirmingIntentResponse(app:intent:intentResponse:);

        return (v40)(v7, v23 & 1);
      }

      v30 = *(v0 + 144);
    }
  }

  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2();
  }

  v31 = type metadata accessor for Logger();
  v32 = OUTLINED_FUNCTION_12_1(v31, static Logger.siriPhone);
  v33 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_51_0(v33))
  {
    v34 = OUTLINED_FUNCTION_65_0();
    *v34 = 0;
    _os_log_impl(&dword_0, v32, v4, "#CallingIntentRCHFlowStrategy makeFailureConfirmingIntentResponse returning default dialog", v34, 2u);
    OUTLINED_FUNCTION_26_0();
  }

  v35 = *(v0 + 160);

  v36 = *(**(v35 + 72) + class metadata base offset for StartCallCATsSimple + 288);

  v39 = (v36 + *v36);
  v37 = v36[1];
  v38 = swift_task_alloc();
  *(v0 + 296) = v38;
  *v38 = v0;
  v38[1] = CallingIntentRCHFlowStrategy.makeFailureConfirmingIntentResponse(app:intent:intentResponse:);

  return v39(v7);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v5 = *(v4 + 232);
  v6 = *(v4 + 224);
  v7 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v8 = v7;
  *(v10 + 240) = v9;
  *(v10 + 248) = v0;

  if (v0)
  {
    v11 = CallingIntentRCHFlowStrategy.makeFailureConfirmingIntentResponse(app:intent:intentResponse:);
  }

  else
  {
    v11 = CallingIntentRCHFlowStrategy.makeFailureConfirmingIntentResponse(app:intent:intentResponse:);
  }

  return _swift_task_switch(v11, 0, 0);
}

{
  v1 = *(**(*(v0 + 160) + 64) + class metadata base offset for PhoneCallDisplayTextCATsSimple + 328);
  OUTLINED_FUNCTION_24_5();
  v7 = (v2 + *v2);
  v4 = *(v3 + 4);
  v5 = swift_task_alloc();
  *(v0 + 256) = v5;
  *v5 = v0;
  v5[1] = CallingIntentRCHFlowStrategy.makeFailureConfirmingIntentResponse(app:intent:intentResponse:);

  return v7();
}

{
  v1 = v0[34];
  v2 = v0[30];
  v3 = v0[27];
  v5 = v0[22];
  v4 = v0[23];
  v6 = v0[20];
  v7 = v0[21];
  v8 = dispatch thunk of LabelExecutionResult.subscript.getter();
  v10 = v9;

  ButtonConfigurationModel.init(label:url:)(v8, v10, v4);
  outlined init with copy of ButtonConfigurationModel(v4, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy27PhoneCallFlowDelegatePlugin24ButtonConfigurationModelVGMd, &_ss23_ContiguousArrayStorageCy27PhoneCallFlowDelegatePlugin24ButtonConfigurationModelVGMR);
  v11 = *(v7 + 72);
  v12 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_424FD0;
  outlined init with take of ButtonConfigurationModel(v5, v13 + v12);
  OutputGenerationManifest.responseViewId.setter();
  v14 = v6[5];
  v15 = v6[6];
  __swift_project_boxed_opaque_existential_1(v6 + 2, v14);
  (*(v15 + 136))(v14, v15);
  v16 = v0[10];
  v17 = v0[11];
  __swift_project_boxed_opaque_existential_1(v0 + 7, v16);
  v0[15] = type metadata accessor for PhoneSnippetDataModels();
  v0[16] = _s27PhoneCallFlowDelegatePlugin0A5ErrorOACs0F0AAWlTm_3(&lazy protocol witness table cache variable for type PhoneSnippetDataModels and conformance PhoneSnippetDataModels, type metadata accessor for PhoneSnippetDataModels);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 12);
  *boxed_opaque_existential_1 = v13;
  *(boxed_opaque_existential_1 + 8) = 1;
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v19 = swift_allocObject();
  v0[35] = v19;
  *(v19 + 16) = xmmword_426260;
  *(v19 + 32) = v2;
  v20 = *(v17 + 8);
  v21 = async function pointer to dispatch thunk of ResponseGenerating.makeResponseOutput(conversationModel:dialog:outputGenerationManifest:)[1];
  v22 = v2;
  v23 = swift_task_alloc();
  v0[36] = v23;
  *v23 = v0;
  v23[1] = CallingIntentRCHFlowStrategy.makeFailureConfirmingIntentResponse(app:intent:intentResponse:);
  v24 = v0[27];
  v25 = v0[17];

  return dispatch thunk of ResponseGenerating.makeResponseOutput(conversationModel:dialog:outputGenerationManifest:)(v25, v0 + 12, v19, v24, v16, v20);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  v2 = v1;
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v5 = *(v4 + 288);
  v6 = *(v4 + 280);
  v7 = *v0;
  OUTLINED_FUNCTION_4_2();
  *v8 = v7;

  __swift_destroy_boxed_opaque_existential_1((v2 + 96));
  v9 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v9, v10, v11);
}

{
  v1 = *(v0 + 240);
  v2 = *(v0 + 216);
  v3 = *(v0 + 224);
  v4 = *(v0 + 200);
  v5 = *(v0 + 208);
  v6 = *(v0 + 184);
  v7 = *(v0 + 152);

  _s27PhoneCallFlowDelegatePlugin0A5ErrorOWOhTm_3(v6, type metadata accessor for ButtonConfigurationModel);
  (*(v5 + 8))(v2, v4);
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  v8 = *(v0 + 216);
  v9 = *(v0 + 184);
  v10 = *(v0 + 192);
  v11 = *(v0 + 176);

  OUTLINED_FUNCTION_11();

  return v12();
}

{
  OUTLINED_FUNCTION_23_0();
  v3 = v2;
  OUTLINED_FUNCTION_28();
  v5 = v4;
  OUTLINED_FUNCTION_13_1();
  *v6 = v5;
  v8 = *(v7 + 296);
  v9 = *(v7 + 224);
  v10 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v11 = v10;
  *(v5 + 304) = v0;

  if (v0)
  {
    v12 = CallingIntentRCHFlowStrategy.makeFailureConfirmingIntentResponse(app:intent:intentResponse:);
  }

  else
  {
    *(v5 + 312) = v3;
    v12 = CallingIntentRCHFlowStrategy.makeFailureConfirmingIntentResponse(app:intent:intentResponse:);
  }

  return _swift_task_switch(v12, 0, 0);
}

{
  OUTLINED_FUNCTION_23_0();
  v1 = v0[39];
  v2 = v0[20];
  v3 = v2[5];
  v4 = v2[6];
  __swift_project_boxed_opaque_existential_1(v2 + 2, v3);
  (*(v4 + 136))(v3, v4);
  v5 = v0[5];
  v6 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v7 = swift_allocObject();
  v0[40] = v7;
  *(v7 + 16) = xmmword_426260;
  *(v7 + 32) = v1;
  v8 = *(v6 + 8);
  v9 = async function pointer to dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)[1];
  v10 = v1;
  v11 = swift_task_alloc();
  v0[41] = v11;
  *v11 = v0;
  v11[1] = CallingIntentRCHFlowStrategy.makeFailureConfirmingIntentResponse(app:intent:intentResponse:);
  v12 = v0[27];
  v13 = v0[17];

  return dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)(v13, v7, v12, v5, v8);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  v2 = *(v1 + 328);
  v3 = *(v1 + 320);
  v4 = *v0;
  OUTLINED_FUNCTION_4_2();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v6, v7, v8);
}

{
  v1 = *(v0 + 216);
  v2 = *(v0 + 224);
  v3 = *(v0 + 200);
  v4 = *(v0 + 208);

  (*(v4 + 8))(v1, v3);
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v5 = *(v0 + 216);
  v6 = *(v0 + 184);
  v7 = *(v0 + 192);
  v8 = *(v0 + 176);

  OUTLINED_FUNCTION_11();

  return v9();
}

{
  OUTLINED_FUNCTION_23_0();
  v1 = *(v0 + 224);
  v2 = *(v0 + 152);

  v3 = *(v0 + 248);
  v4 = OUTLINED_FUNCTION_2_35();
  v5(v4);

  OUTLINED_FUNCTION_11();

  return v6();
}

{
  OUTLINED_FUNCTION_23_0();
  v1 = *(v0 + 240);
  v2 = *(v0 + 224);
  v3 = *(v0 + 152);

  v4 = *(v0 + 264);
  v5 = OUTLINED_FUNCTION_2_35();
  v6(v5);

  OUTLINED_FUNCTION_11();

  return v7();
}

{
  OUTLINED_FUNCTION_23_0();
  v1 = *(v0 + 224);

  v2 = *(v0 + 304);
  v3 = OUTLINED_FUNCTION_2_35();
  v4(v3);

  OUTLINED_FUNCTION_11();

  return v5();
}

uint64_t CallingIntentRCHFlowStrategy.makeFailureConfirmingIntentResponse(app:intent:intentResponse:)(uint64_t a1)
{
  OUTLINED_FUNCTION_28();
  v5 = v4;
  OUTLINED_FUNCTION_13_1();
  *v6 = v5;
  v8 = *(v7 + 256);
  v9 = *v2;
  OUTLINED_FUNCTION_4_2();
  *v10 = v9;
  *(v5 + 264) = v1;

  if (v1)
  {
    v11 = CallingIntentRCHFlowStrategy.makeFailureConfirmingIntentResponse(app:intent:intentResponse:);
  }

  else
  {
    *(v5 + 272) = a1;
    v11 = CallingIntentRCHFlowStrategy.makeFailureConfirmingIntentResponse(app:intent:intentResponse:);
  }

  return _swift_task_switch(v11, 0, 0);
}

uint64_t protocol witness for RCHFlowStrategyAsync.makeIntentFromParse(parse:currentIntent:) in conformance CallingIntentRCHFlowStrategy<A, B>(uint64_t a1, uint64_t a2)
{
  v6 = *(**v2 + 152);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = AddCallParticipantCATs.errorNoTargetCall();

  return v10(a1, a2);
}

uint64_t protocol witness for RCHFlowStrategyAsync.makeErrorResponse(error:) in conformance CallingIntentRCHFlowStrategy<A1, B1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = async function pointer to RCHFlowStrategyAsync.makeErrorResponse(error:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = closure #2 in ActionableCallControlFlow.execute();

  return RCHFlowStrategyAsync.makeErrorResponse(error:)(a1, a2, a3, a4);
}

uint64_t protocol witness for ResolveConfirmFlowStrategyAsync.makeAppDoesNotSupportIntentResponse(app:intent:) in conformance CallingIntentRCHFlowStrategy<A, B>(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v11 = async function pointer to ResolveConfirmFlowStrategyAsync.makeAppDoesNotSupportIntentResponse(app:intent:)[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  v13 = a4[10];
  v14 = a4[11];
  v15 = a4[12];
  v16 = type metadata accessor for CallingIntentRCHFlowStrategy();
  *v12 = v5;
  v12[1] = closure #1 in ActionableCallControlFlow.execute();

  return ResolveConfirmFlowStrategyAsync.makeAppDoesNotSupportIntentResponse(app:intent:)(a1, a2, a3, v16, a5);
}

uint64_t protocol witness for ResolveConfirmFlowStrategyAsync.makeAppNotFoundOnDeviceResponse(app:intent:) in conformance CallingIntentRCHFlowStrategy<A, B>(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v11 = async function pointer to ResolveConfirmFlowStrategyAsync.makeAppNotFoundOnDeviceResponse(app:intent:)[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  v13 = a4[10];
  v14 = a4[11];
  v15 = a4[12];
  v16 = type metadata accessor for CallingIntentRCHFlowStrategy();
  *v12 = v5;
  v12[1] = closure #1 in ActionableCallControlFlow.execute();

  return ResolveConfirmFlowStrategyAsync.makeAppNotFoundOnDeviceResponse(app:intent:)(a1, a2, a3, v16, a5);
}

uint64_t protocol witness for ResolveConfirmFlowStrategyAsync.makeDeviceIncompatibleResponse(app:intent:) in conformance CallingIntentRCHFlowStrategy<A, B>(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v11 = async function pointer to ResolveConfirmFlowStrategyAsync.makeDeviceIncompatibleResponse(app:intent:)[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  v13 = a4[10];
  v14 = a4[11];
  v15 = a4[12];
  v16 = type metadata accessor for CallingIntentRCHFlowStrategy();
  *v12 = v5;
  v12[1] = closure #1 in ActionableCallControlFlow.execute();

  return ResolveConfirmFlowStrategyAsync.makeDeviceIncompatibleResponse(app:intent:)(a1, a2, a3, v16, a5);
}

uint64_t protocol witness for ResolveConfirmFlowStrategyAsync.makeErrorResponse(error:app:intent:) in conformance CallingIntentRCHFlowStrategy<A, B>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v13 = async function pointer to ResolveConfirmFlowStrategyAsync.makeErrorResponse(error:app:intent:)[1];
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  v15 = a5[10];
  v16 = a5[11];
  v17 = a5[12];
  v18 = type metadata accessor for CallingIntentRCHFlowStrategy();
  *v14 = v6;
  v14[1] = closure #1 in ActionableCallControlFlow.execute();

  return ResolveConfirmFlowStrategyAsync.makeErrorResponse(error:app:intent:)(a1, a2, a3, a4, v18, a6);
}

uint64_t protocol witness for RouteConfirmIntentResponseFlowStrategyAsync.makeFailureConfirmingIntentResponse(app:intent:intentResponse:) in conformance CallingIntentRCHFlowStrategy<A, B>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(**v4 + 168);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = closure #1 in ActionableCallControlFlow.execute();

  return v14(a1, a2, a3, a4);
}

uint64_t outlined init with copy of PhoneCallNLIntent?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t _s27PhoneCallFlowDelegatePlugin0A5ErrorOACs0F0AAWlTm_3(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _s27PhoneCallFlowDelegatePlugin0A5ErrorOWOhTm_3(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_23_5(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t *CallingIntentUnsupportedValueFlowStrategy.__allocating_init(delegate:startCallCATs:startCallCatPatterns:phoneCallCommonCATs:phoneCallCommonCatPatterns:startCallCatsSimple:phoneCallDisplayTextCATsSimple:siriKitEventSender:appInfoBuilder:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t *a8, uint64_t *a9)
{
  v18 = *(v9 + 48);
  v19 = *(v9 + 52);
  swift_allocObject();
  return CallingIntentUnsupportedValueFlowStrategy.init(delegate:startCallCATs:startCallCatPatterns:phoneCallCommonCATs:phoneCallCommonCatPatterns:startCallCatsSimple:phoneCallDisplayTextCATsSimple:siriKitEventSender:appInfoBuilder:)(a1, a2, a3, a4, a5, a6, a7, a8, a9);
}

uint64_t *CallingIntentUnsupportedValueFlowStrategy.init(delegate:startCallCATs:startCallCatPatterns:phoneCallCommonCATs:phoneCallCommonCatPatterns:startCallCatsSimple:phoneCallDisplayTextCATsSimple:siriKitEventSender:appInfoBuilder:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t *a8, uint64_t *a9)
{
  v13 = *v9;
  *(v9 + direct field offset for CallingIntentUnsupportedValueFlowStrategy.startCallCatsSimple) = a6;
  outlined init with copy of SignalProviding(a3, v27);
  outlined init with copy of SignalProviding(a5, v26);
  outlined init with copy of SignalProviding(a8, v25);
  outlined init with copy of SignalProviding(a9, v24);
  v14 = *(v13 + 264);
  v15 = *(v13 + 272);

  v16 = default argument 3 of CallingIntentBaseFlowStrategy.init(delegate:startCallCATs:startCallCatPatterns:startCallCATsSimple:phoneCallCommonCATs:phoneCallCommonCATsSimple:phoneCallCommonCatPatterns:phoneCallDisplayTextCATsSimple:responseGenerator:siriKitEventSender:appInfoBuilder:)(v14, v15);
  v17 = default argument 5 of CallingIntentBaseFlowStrategy.init(delegate:startCallCATs:startCallCatPatterns:startCallCATsSimple:phoneCallCommonCATs:phoneCallCommonCATsSimple:phoneCallCommonCatPatterns:phoneCallDisplayTextCATsSimple:responseGenerator:siriKitEventSender:appInfoBuilder:)(v14, v15);
  default argument 8 of CallingIntentBaseFlowStrategy.init(delegate:startCallCATs:startCallCatPatterns:startCallCATsSimple:phoneCallCommonCATs:phoneCallCommonCATsSimple:phoneCallCommonCatPatterns:phoneCallDisplayTextCATsSimple:responseGenerator:siriKitEventSender:appInfoBuilder:)();
  CallingIntentBaseFlowStrategy.init(delegate:startCallCATs:startCallCatPatterns:startCallCATsSimple:phoneCallCommonCATs:phoneCallCommonCATsSimple:phoneCallCommonCatPatterns:phoneCallDisplayTextCATsSimple:responseGenerator:siriKitEventSender:appInfoBuilder:)(a1, a2, v27, v16, a4, v17, v26, a7, v23, v25, v24);
  OUTLINED_FUNCTION_11_0();

  __swift_destroy_boxed_opaque_existential_1(a9);
  __swift_destroy_boxed_opaque_existential_1(a8);
  __swift_destroy_boxed_opaque_existential_1(a5);
  __swift_destroy_boxed_opaque_existential_1(a3);
  return v9;
}

uint64_t CallingIntentUnsupportedValueFlowStrategy.makeUnsupportedValueOutput(resolveRecord:)()
{
  OUTLINED_FUNCTION_15();
  v1[4] = v2;
  v1[5] = v0;
  v1[3] = v3;
  v1[6] = *v0;
  v4 = type metadata accessor for PhoneError();
  v1[7] = v4;
  OUTLINED_FUNCTION_21(v4);
  v6 = *(v5 + 64);
  v1[8] = OUTLINED_FUNCTION_45();
  v7 = type metadata accessor for ParameterIdentifier();
  v1[9] = v7;
  OUTLINED_FUNCTION_13_2(v7);
  v1[10] = v8;
  v10 = *(v9 + 64);
  v1[11] = OUTLINED_FUNCTION_45();
  v11 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v11, v12, v13);
}

{
  OUTLINED_FUNCTION_24_1();
  v2 = *(v0 + 80);
  v1 = *(v0 + 88);
  v3 = *(v0 + 72);
  v4 = *(v0 + 48);
  v5 = *(v0 + 32);
  v6 = *(v4 + 264);
  v7 = *(*(*(v4 + 272) + 8) + 16);
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_89();
  ParameterResolutionRecord.parameter.getter();
  ParameterIdentifier.name.getter();
  v8 = *(v2 + 8);
  v9 = OUTLINED_FUNCTION_55();
  v10(v9);
  v11 = ParameterResolutionRecord.result.getter();
  LOBYTE(v1) = CallingIntentUnsupportedValueFlowStrategy.shouldEnableFeatureOnResponseFramework(parameterName:intentResolutionResult:)();

  if (v1)
  {
    v12 = *(**(v0 + 40) + 312);
    v20 = (v12 + *v12);
    v13 = v12[1];
    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    *(v0 + 96) = v14;
    *v14 = v15;
    v16 = OUTLINED_FUNCTION_52_6(v14);

    return v20(v16);
  }

  else
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    *(v0 + 112) = v18;
    *v18 = v19;
    OUTLINED_FUNCTION_52_6(v18);

    return CallingIntentUnsupportedValueFlowStrategy.makeUnsupportedValueTemplatingResultOutput(resolveRecord:)();
  }
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
    OUTLINED_FUNCTION_66_0();

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {
    v12 = v3[11];
    v13 = v3[8];

    OUTLINED_FUNCTION_8_1();

    return v14();
  }
}

{
  OUTLINED_FUNCTION_27();
  v1 = *v0;
  v2 = *(*v0 + 112);
  v3 = *v0;
  OUTLINED_FUNCTION_4_2();
  *v4 = v3;

  v5 = *(v1 + 88);
  v6 = *(v1 + 64);

  OUTLINED_FUNCTION_72_2();

  return v7();
}

{
  OUTLINED_FUNCTION_27();
  v0[2] = v0[13];
  v2 = v0[7];
  v1 = v0[8];
  swift_errorRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  if (swift_dynamicCast())
  {
    v3 = v0[7];
    v4 = v0[8];
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      v5 = v0[13];

      OUTLINED_FUNCTION_5_23();
      _s27PhoneCallFlowDelegatePlugin0A5ErrorOWOhTm_2(v4, v6);
      swift_task_alloc();
      OUTLINED_FUNCTION_25();
      v0[15] = v7;
      *v7 = v8;
      OUTLINED_FUNCTION_52_6(v7);

      return CallingIntentUnsupportedValueFlowStrategy.makeUnsupportedValueTemplatingResultOutput(resolveRecord:)();
    }

    _s27PhoneCallFlowDelegatePlugin0A5ErrorOWOhTm_2(v4, type metadata accessor for PhoneError);
  }

  v10 = v0[13];
  v11 = v0[2];

  swift_willThrow();
  v12 = v0[13];
  v13 = v0[11];
  v14 = v0[8];

  OUTLINED_FUNCTION_11();

  return v15();
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v5 = *(v4 + 120);
  v6 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v7 = v6;
  *(v8 + 128) = v0;

  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v9, v10, v11);
}

{
  OUTLINED_FUNCTION_15();
  v1 = v0[2];

  v2 = v0[11];
  v3 = v0[8];

  OUTLINED_FUNCTION_8_1();

  return v4();
}

{
  OUTLINED_FUNCTION_15();
  v1 = v0[2];

  v2 = v0[16];
  v3 = v0[11];
  v4 = v0[8];

  OUTLINED_FUNCTION_11();

  return v5();
}

uint64_t CallingIntentUnsupportedValueFlowStrategy.makeUnsupportedValueTemplatingResultOutput(resolveRecord:)()
{
  OUTLINED_FUNCTION_15();
  v1[19] = v2;
  v1[20] = v0;
  v1[18] = v3;
  v1[21] = *v0;
  v4 = type metadata accessor for TemplatingResult();
  v1[22] = v4;
  OUTLINED_FUNCTION_13_2(v4);
  v1[23] = v5;
  v7 = *(v6 + 64);
  v1[24] = OUTLINED_FUNCTION_45();
  v8 = type metadata accessor for UUID();
  v1[25] = v8;
  OUTLINED_FUNCTION_13_2(v8);
  v1[26] = v9;
  v11 = *(v10 + 64);
  v1[27] = OUTLINED_FUNCTION_45();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  OUTLINED_FUNCTION_21(v12);
  v14 = *(v13 + 64);
  v1[28] = OUTLINED_FUNCTION_62_4();
  v1[29] = swift_task_alloc();
  v15 = type metadata accessor for ParameterIdentifier();
  v1[30] = v15;
  OUTLINED_FUNCTION_13_2(v15);
  v1[31] = v16;
  v18 = *(v17 + 64);
  v1[32] = OUTLINED_FUNCTION_45();
  v19 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v19, v20, v21);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  v3 = v2;
  OUTLINED_FUNCTION_6();
  *v4 = v3;
  v6 = *(v5 + 272);
  v7 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v8 = v7;
  *(v3 + 280) = v0;

  if (!v0)
  {
    v9 = *(v3 + 264);
  }

  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v10, v11, v12);
}

{
  OUTLINED_FUNCTION_15();
  v0[36] = v0[17];
  v1 = swift_task_alloc();
  v0[37] = v1;
  OUTLINED_FUNCTION_71_1(v1);
  v2 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[38] = v3;
  *v3 = v4;
  OUTLINED_FUNCTION_29_14(v3);
  OUTLINED_FUNCTION_66_0();

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v5, v6, v7, 0xD00000000000003ALL, v8, v9, v1, v10);
}

{
  OUTLINED_FUNCTION_27();
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v4 = v3;
  v5 = *(v2 + 304);
  *v4 = *v1;
  *(v3 + 312) = v0;

  v6 = *(v2 + 296);
  if (v0)
  {
    v7 = *(v3 + 288);
  }

  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v8, v9, v10);
}

{
  v1 = *(v0 + 288);
  v2 = *(v0 + 224);
  v3 = *(v0 + 232);
  v17 = *(v0 + 256);
  v18 = *(v0 + 216);
  v4 = *(v0 + 184);
  v15 = *(v0 + 192);
  v16 = *(v0 + 176);
  v5 = *(v0 + 160);
  v6 = *(v0 + 144);
  v8 = v5[6];
  v7 = v5[7];
  __swift_project_boxed_opaque_existential_1(v5 + 3, v8);
  (*(v7 + 8))(v8, v7);
  v9 = v5[6];
  v10 = v5[7];
  __swift_project_boxed_opaque_existential_1(v5 + 3, v9);
  (*(v10 + 8))(v9, v10);
  v11 = *(v0 + 88);
  __swift_project_boxed_opaque_existential_1((v0 + 56), *(v0 + 80));
  dispatch thunk of DeviceState.isTextToSpeechEnabled.getter();
  outlined init with copy of PhoneCallFlowState<INHangUpCallIntent, INHangUpCallIntentResponse>(v3, v2, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  v12 = type metadata accessor for AceOutput();
  *(v0 + 112) = 0u;
  *(v0 + 128) = 0;
  *(v0 + 96) = 0u;
  v6[3] = v12;
  v6[4] = &protocol witness table for AceOutput;
  __swift_allocate_boxed_opaque_existential_1(v6);
  static AceOutputHelper.makeCompletionViewOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();

  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v0 + 96, &_s11SiriKitFlow0C8Activity_pSgMd, &_s11SiriKitFlow0C8Activity_pSgMR);
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v2, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  (*(v4 + 8))(v15, v16);
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v3, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);

  OUTLINED_FUNCTION_8_1();

  return v13();
}

{
  OUTLINED_FUNCTION_79_2();
  OUTLINED_FUNCTION_23_0();
  v2 = *(v1 + 264);

  v3 = *(v1 + 280);
  OUTLINED_FUNCTION_87_2();
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v0, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);

  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_80();

  return v5(v4, v5, v6, v7, v8, v9, v10, v11);
}

{
  OUTLINED_FUNCTION_79_2();
  OUTLINED_FUNCTION_23_0();
  v2 = *(v1 + 312);
  OUTLINED_FUNCTION_87_2();
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v0, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);

  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_80();

  return v4(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t CallingIntentUnsupportedValueFlowStrategy.makeUnsupportedValueTemplatingResultOutput(resolveRecord:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_19();
  a19 = v21;
  a20 = v22;
  OUTLINED_FUNCTION_24_1();
  a18 = v20;
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
    v26 = OUTLINED_FUNCTION_42();
    v27 = OUTLINED_FUNCTION_36();
    a9 = v27;
    *v26 = 136315138;
    *(v26 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000003ALL, 0x8000000000459590, &a9);
    OUTLINED_FUNCTION_6_7(&dword_0, v28, v29, "#CallingIntentUnsupportedFlowStrategy %s");
    __swift_destroy_boxed_opaque_existential_1(v27);
    OUTLINED_FUNCTION_26_0();
    OUTLINED_FUNCTION_26_0();
  }

  v31 = v20[31];
  v30 = v20[32];
  v32 = v20[29];
  v33 = v20[30];
  v34 = v20[21];
  v35 = v20[19];
  v36 = *(v34 + 264);
  v37 = *(*(*(v34 + 272) + 8) + 16);
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_89();
  ParameterResolutionRecord.parameter.getter();
  v38 = ParameterIdentifier.name.getter();
  v40 = v39;
  v41 = *(v31 + 8);
  v42 = OUTLINED_FUNCTION_92();
  v43(v42);
  v44._countAndFlagsBits = v38;
  v44._object = v40;
  v45.value = PhoneCallSlotNames.init(rawValue:)(v44).value;
  v46 = type metadata accessor for NLContextUpdate();
  __swift_storeEnumTagSinglePayload(v32, 1, 1, v46);
  if (v45.value - 4 >= 2)
  {
    if (v45.value == PhoneCallFlowDelegatePlugin_PhoneCallSlotNames_preferredCallProvider)
    {
      v59 = swift_task_alloc();
      v20[33] = v59;
      OUTLINED_FUNCTION_71_1(v59);
      v60 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
      v61 = swift_task_alloc();
      v20[34] = v61;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo9SAAceViewCGMd, &_sSaySo9SAAceViewCGMR);
      *v61 = v20;
      v61[1] = CallingIntentUnsupportedValueFlowStrategy.makeUnsupportedValueTemplatingResultOutput(resolveRecord:);
      goto LABEL_13;
    }
  }

  else
  {
    v48 = v20[28];
    v47 = v20[29];
    NLContextUpdate.init()();
    __swift_storeEnumTagSinglePayload(v48, 0, 1, v46);
    outlined assign with take of NLContextUpdate?(v48, v47);
    if (!__swift_getEnumTagSinglePayload(v47, 1, v46))
    {
      v49 = type metadata accessor for MachineUtteranceBuilder();
      v50 = *(v49 + 48);
      v51 = *(v49 + 52);
      swift_allocObject();
      MachineUtteranceBuilder.init()();
      if (one-time initialization token for callId != -1)
      {
        swift_once();
      }

      v52 = v20[29];
      v54 = v20[26];
      v53 = v20[27];
      v55 = v20[25];
      TerminalOntologyNode.name.getter();
      UUID.init()();
      UUID.uuidString.getter();
      v56 = *(v54 + 8);
      v57 = OUTLINED_FUNCTION_33_4();
      v58(v57);
      dispatch thunk of MachineUtteranceBuilder.addMapping(node:value:)();

      dispatch thunk of MachineUtteranceBuilder.build()();

      OUTLINED_FUNCTION_92();
      NLContextUpdate.nlInput.setter();
    }
  }

  v20[36] = _swiftEmptyArrayStorage;
  v62 = swift_task_alloc();
  v20[37] = v62;
  OUTLINED_FUNCTION_71_1(v62);
  v63 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v20[38] = v64;
  *v64 = v65;
  OUTLINED_FUNCTION_29_14(v64);
LABEL_13:
  OUTLINED_FUNCTION_66_0();
  OUTLINED_FUNCTION_16();

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v66, v67, v68, v69, v70, v71, v72, v73);
}

uint64_t closure #1 in CallingIntentUnsupportedValueFlowStrategy.makeUnsupportedValueTemplatingResultOutput(resolveRecord:)(uint64_t a1, uint64_t *a2)
{
  v25 = a1;
  v3 = *a2;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySaySo9SAAceViewCGs5Error_pGMd, &_sScCySaySo9SAAceViewCGs5Error_pGMR);
  v4 = *(v24 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v24);
  v22 = &v21 - v6;
  v7 = *(*(*(v3 + 272) + 8) + 16);
  v8 = *(v3 + 264);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v26 = *(AssociatedTypeWitness - 8);
  v9 = *(v26 + 64);
  __chkstk_darwin(AssociatedTypeWitness);
  v11 = &v21 - v10;
  v12 = a2[2];
  dispatch thunk of RCHFlowDelegate.makeAceViewProvider()();
  swift_getAssociatedTypeWitness();
  type metadata accessor for ParameterResolutionRecord();
  v21 = ParameterResolutionRecord.app.getter();
  v13 = ParameterResolutionRecord.intent.getter();
  v14 = ParameterResolutionRecord.result.getter();
  v15 = v22;
  v16 = v24;
  (*(v4 + 16))(v22, v25, v24);
  v17 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v18 = swift_allocObject();
  (*(v4 + 32))(v18 + v17, v15, v16);
  v19 = AssociatedTypeWitness;
  swift_getAssociatedConformanceWitness();
  dispatch thunk of AceViewProviding.makeAceViewsForLaunchAppWithButton(app:intent:intentResolutionResult:intentResponse:utteranceViews:_:)();

  return (*(v26 + 8))(v11, v19);
}

uint64_t closure #2 in CallingIntentUnsupportedValueFlowStrategy.makeUnsupportedValueTemplatingResultOutput(resolveRecord:)(uint64_t a1, uint64_t *a2)
{
  v44 = a1;
  v3 = *a2;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy11SiriKitFlow16TemplatingResultVs5Error_pGMd, &_sScCy11SiriKitFlow16TemplatingResultVs5Error_pGMR);
  v4 = *(v43 - 8);
  v42 = *(v4 + 64);
  __chkstk_darwin(v43);
  v41 = &v32 - v5;
  v38 = type metadata accessor for ParameterIdentifier();
  v6 = *(v38 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v38);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v32 - v11;
  v13 = *(*(*(v3 + 272) + 8) + 16);
  v14 = *(v3 + 264);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v45 = *(AssociatedTypeWitness - 8);
  v15 = *(v45 + 64);
  __chkstk_darwin(AssociatedTypeWitness);
  v40 = &v32 - v16;
  v17 = a2[2];
  dispatch thunk of RCHFlowDelegate.makeDialogTemplating()();
  swift_getAssociatedTypeWitness();
  type metadata accessor for ParameterResolutionRecord();
  v37 = ParameterResolutionRecord.app.getter();
  ParameterResolutionRecord.parameter.getter();
  v18 = ParameterIdentifier.name.getter();
  v35 = v19;
  v36 = v18;
  v20 = *(v6 + 8);
  v21 = v12;
  v22 = v38;
  v20(v21, v38);
  v34 = ParameterResolutionRecord.result.getter();
  v33 = ParameterResolutionRecord.intent.getter();
  ParameterResolutionRecord.parameter.getter();
  ParameterIdentifier.multicardinalIndex.getter();
  v20(v10, v22);
  v23 = v41;
  v24 = v43;
  (*(v4 + 16))(v41, v44, v43);
  v25 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v26 = swift_allocObject();
  (*(v4 + 32))(v26 + v25, v23, v24);
  v31 = AssociatedTypeWitness;
  swift_getAssociatedConformanceWitness();
  v27 = v34;
  v28 = v33;
  v29 = v40;
  dispatch thunk of DialogTemplating.makeParameterValueUnsupportedDialog(app:parameterName:intentResolutionResult:intent:multicardinalValueIndex:_:)();

  return (*(v45 + 8))(v29, v31);
}

uint64_t closure #1 in closure #2 in CallingIntentUnsupportedValueFlowStrategy.makeUnsupportedValueTemplatingResultOutput(resolveRecord:)(uint64_t a1)
{
  v2 = type metadata accessor for TemplatingResult();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v10 = (v12 - v9);
  outlined init with copy of PhoneCallFlowState<INHangUpCallIntent, INHangUpCallIntentResponse>(a1, v12 - v9, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12[1] = *v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy11SiriKitFlow16TemplatingResultVs5Error_pGMd, &_sScCy11SiriKitFlow16TemplatingResultVs5Error_pGMR);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    (*(v3 + 32))(v6, v10, v2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy11SiriKitFlow16TemplatingResultVs5Error_pGMd, &_sScCy11SiriKitFlow16TemplatingResultVs5Error_pGMR);
    return CheckedContinuation.resume(returning:)();
  }
}

uint64_t CallingIntentUnsupportedValueFlowStrategy.makeUnsupportedValueRFOutput(resolveRecord:)()
{
  OUTLINED_FUNCTION_15();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = *v0;
  v5 = type metadata accessor for PhoneError();
  v1[5] = v5;
  OUTLINED_FUNCTION_21(v5);
  v7 = *(v6 + 64);
  v1[6] = OUTLINED_FUNCTION_45();
  OUTLINED_FUNCTION_49_1();
  v9 = *(*(*(v8 + 272) + 8) + 16);
  OUTLINED_FUNCTION_49_1();
  v11 = *(v10 + 264);
  swift_getAssociatedTypeWitness();
  v12 = OUTLINED_FUNCTION_89();
  v1[7] = v12;
  OUTLINED_FUNCTION_13_2(v12);
  v1[8] = v13;
  v15 = *(v14 + 64);
  v1[9] = OUTLINED_FUNCTION_45();
  v16 = type metadata accessor for ParameterIdentifier();
  v1[10] = v16;
  OUTLINED_FUNCTION_13_2(v16);
  v1[11] = v17;
  v19 = *(v18 + 64);
  v1[12] = OUTLINED_FUNCTION_62_4();
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v20 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v20, v21, v22);
}

{
  OUTLINED_FUNCTION_79_2();
  OUTLINED_FUNCTION_23_0();
  v1 = *v0;
  v2 = *(*v0 + 168);
  v3 = *v0;
  OUTLINED_FUNCTION_4_2();
  *v4 = v3;

  v5 = v1[14];
  v6 = v1[13];
  v7 = v1[12];
  v8 = v1[9];
  v9 = v1[6];

  OUTLINED_FUNCTION_72_2();
  OUTLINED_FUNCTION_80();

  return v11(v10, v11, v12, v13, v14, v15, v16, v17);
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_28();
  v3 = v2;
  OUTLINED_FUNCTION_6();
  *v4 = v3;
  v6 = *(v5 + 200);
  v7 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v8 = v7;
  v3[26] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_66_0();

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {
    v13 = v3[23];
    v12 = v3[24];
    v14 = v3[22];

    OUTLINED_FUNCTION_88_1();

    OUTLINED_FUNCTION_8_1();

    return v15();
  }
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_28();
  v3 = v2;
  OUTLINED_FUNCTION_6();
  *v4 = v3;
  v6 = *(v5 + 232);
  v7 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v8 = v7;
  *(v3 + 240) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_66_0();

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {
    v12 = *(v3 + 216);

    OUTLINED_FUNCTION_88_1();

    OUTLINED_FUNCTION_8_1();

    return v13();
  }
}

{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_23_0();
  v2 = v0[23];
  v1 = v0[24];
  v3 = v0[22];

  v4 = v0[26];
  OUTLINED_FUNCTION_64_3();

  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_65_1();

  return v6(v5, v6, v7, v8, v9, v10, v11, v12);
}

{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_23_0();
  v1 = *(v0 + 216);

  v2 = *(v0 + 240);
  OUTLINED_FUNCTION_64_3();

  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_65_1();

  return v4(v3, v4, v5, v6, v7, v8, v9, v10);
}

{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_23_0();
  v1 = *(v0 + 160);
  OUTLINED_FUNCTION_64_3();

  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_65_1();

  return v3(v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t CallingIntentUnsupportedValueFlowStrategy.makeUnsupportedValueRFOutput(resolveRecord:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t *a12, uint64_t *a13, unint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_75_3();
  a25 = v27;
  a26 = v28;
  OUTLINED_FUNCTION_86_2();
  a24 = v26;
  v29 = v26[14];
  v30 = v26[10];
  v31 = v26[11];
  v32 = v26[7];
  v33 = v26[3];
  ParameterResolutionRecord.parameter.getter();
  ParameterIdentifier.name.getter();
  v34 = *(v31 + 8);
  v35 = OUTLINED_FUNCTION_55();
  v34(v35);
  v36._countAndFlagsBits = OUTLINED_FUNCTION_53_1();
  switch(PhoneCallSlotNames.init(rawValue:)(v36).value)
  {
    case PhoneCallFlowDelegatePlugin_PhoneCallSlotNames_preferredCallProvider:
      swift_task_alloc();
      OUTLINED_FUNCTION_25();
      v26[21] = v68;
      *v68 = v69;
      v68[1] = CallingIntentUnsupportedValueFlowStrategy.makeUnsupportedValueRFOutput(resolveRecord:);
      v70 = v26[3];
      v71 = v26[4];
      v72 = v26[2];
      OUTLINED_FUNCTION_46_6();

      result = CallingIntentUnsupportedValueFlowStrategy.makePreferredCallProviderUnsupportedValueOutput(resolveRecord:)();
      break;
    case PhoneCallFlowDelegatePlugin_PhoneCallSlotNames_contact:
    case PhoneCallFlowDelegatePlugin_PhoneCallSlotNames_contacts:
      v38 = v26[12];
      v37 = v26[13];
      v39 = v34;
      v40 = v26[10];
      v41 = v26[7];
      v42 = v26[3];
      v26[15] = ParameterResolutionRecord.app.getter();
      v26[16] = ParameterResolutionRecord.intent.getter();
      ParameterResolutionRecord.parameter.getter();
      ParameterIdentifier.name.getter();
      v26[17] = v43;
      v39(v37, v40);
      ParameterResolutionRecord.parameter.getter();
      ParameterIdentifier.multicardinalIndex.getter();
      v39(v38, v40);
      v26[18] = ParameterResolutionRecord.result.getter();
      swift_task_alloc();
      OUTLINED_FUNCTION_25();
      v26[19] = v44;
      *v44 = v45;
      OUTLINED_FUNCTION_51_1(v44);
      OUTLINED_FUNCTION_46_6();

      result = CallingIntentUnsupportedValueFlowStrategy.makeContactUnsupportedValueOutput(app:intent:parameterName:multicardinalValueIndex:intentResolutionResult:)();
      break;
    case PhoneCallFlowDelegatePlugin_PhoneCallSlotNames_callCapability:
      v74 = v26[7];
      v75 = v26[3];
      v26[22] = ParameterResolutionRecord.intent.getter();
      v26[23] = ParameterResolutionRecord.result.getter();
      v26[24] = ParameterResolutionRecord.app.getter();
      swift_task_alloc();
      OUTLINED_FUNCTION_25();
      v26[25] = v76;
      *v76 = v77;
      OUTLINED_FUNCTION_51_1(v76);
      OUTLINED_FUNCTION_46_6();

      result = CallingIntentUnsupportedValueFlowStrategy.makeCallCapabilityUnsupportedValueOutput(intent:intentResolutionResult:app:)();
      break;
    case PhoneCallFlowDelegatePlugin_PhoneCallSlotNames_callRecordToCallBack:
      v79 = v26[7];
      v80 = v26[3];
      v26[27] = ParameterResolutionRecord.intent.getter();
      v26[28] = ParameterResolutionRecord.result.getter();
      swift_task_alloc();
      OUTLINED_FUNCTION_25();
      v26[29] = v81;
      *v81 = v82;
      OUTLINED_FUNCTION_51_1(v81);
      OUTLINED_FUNCTION_46_6();

      result = CallingIntentUnsupportedValueFlowStrategy.makeContactsNoCallHistoryForRedialUnsupportedValueOutput(intent:intentResolutionResult:)();
      break;
    default:
      if (one-time initialization token for siriPhone != -1)
      {
        OUTLINED_FUNCTION_6_2();
      }

      v49 = v26[8];
      v48 = v26[9];
      v50 = v26[7];
      v51 = v26[3];
      v52 = type metadata accessor for Logger();
      __swift_project_value_buffer(v52, static Logger.siriPhone);
      v53 = *(v49 + 16);
      v54 = OUTLINED_FUNCTION_43_3();
      v55(v54);
      v56 = Logger.logObject.getter();
      v57 = static os_log_type_t.debug.getter();
      v119 = v34;
      if (os_log_type_enabled(v56, v57))
      {
        v58 = v26[14];
        v59 = v26[9];
        v60 = v26[7];
        v61 = v26[8];
        a9 = v60;
        a10 = v26[10];
        v62 = OUTLINED_FUNCTION_42();
        a12 = OUTLINED_FUNCTION_36();
        a13 = a12;
        *v62 = 136315138;
        v63 = v59;
        ParameterResolutionRecord.parameter.getter();
        v64 = ParameterIdentifier.name.getter();
        v66 = v65;
        v119(v58, a10);
        (*(v61 + 8))(v63, a9);
        v67 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v64, v66, &a13);

        *(v62 + 4) = v67;
        _os_log_impl(&dword_0, v56, v57, "#CallingIntentUnsupportedValueFlowStrategy makeUnsupportedValueOutput: the corresponding dialog for Slot %s hasn't been migrated to Response Framework.", v62, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(a12);
        OUTLINED_FUNCTION_26_0();
        OUTLINED_FUNCTION_26_0();
      }

      else
      {
        v85 = v26[8];
        v84 = v26[9];
        v86 = v26[7];

        v87 = *(v85 + 8);
        v88 = OUTLINED_FUNCTION_43_3();
        v89(v88);
      }

      v90 = v26[14];
      v91 = v26[10];
      v92 = v26[6];
      v93 = v26[7];
      v94 = v26[5];
      v95 = v26[3];
      a13 = 0;
      a14 = 0xE000000000000000;
      _StringGuts.grow(_:)(20);

      a13 = 0xD000000000000012;
      a14 = 0x80000000004592E0;
      ParameterResolutionRecord.parameter.getter();
      v96 = ParameterIdentifier.name.getter();
      v98 = v97;
      v99 = OUTLINED_FUNCTION_33_4();
      (v119)(v99);
      v100._countAndFlagsBits = v96;
      v100._object = v98;
      String.append(_:)(v100);

      v101 = a14;
      *v92 = a13;
      v92[1] = v101;
      v92[2] = 0xD00000000000004BLL;
      v92[3] = 0x8000000000459300;
      v92[4] = 0xD00000000000002CLL;
      v92[5] = 0x8000000000459350;
      v92[6] = (&stru_68 + 20);
      OUTLINED_FUNCTION_55();
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_48();
      _s27PhoneCallFlowDelegatePlugin0A5ErrorOACs0F0AAWlTm_3(v102, v103);
      OUTLINED_FUNCTION_147();
      PhoneError.logged()(v104);
      OUTLINED_FUNCTION_5_23();
      _s27PhoneCallFlowDelegatePlugin0A5ErrorOWOhTm_2(v92, v105);
      swift_willThrow();
      v107 = v26[13];
      v106 = v26[14];
      v108 = v26[12];
      v109 = v26[9];
      v110 = v26[6];

      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_46_6();

      result = v112(v111, v112, v113, v114, v115, v116, v117, v118, a9, a10, v119, a12, a13, a14, a15, a16, a17, a18);
      break;
  }

  return result;
}

uint64_t CallingIntentUnsupportedValueFlowStrategy.makeUnsupportedValueRFOutput(resolveRecord:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_61_0();
  OUTLINED_FUNCTION_31();
  v12 = *v11;
  v13 = *v11;
  OUTLINED_FUNCTION_4_2();
  *v14 = v13;
  v15 = v12[19];
  *v14 = *v11;
  v13[20] = v10;

  v16 = v12[18];
  v17 = v12[17];
  v18 = v12[16];
  v19 = v12[15];
  if (v10)
  {

    OUTLINED_FUNCTION_19_5();
    OUTLINED_FUNCTION_60();

    return _swift_task_switch(v20, v21, v22);
  }

  else
  {

    v25 = v13[13];
    v24 = v13[14];
    v26 = v13[12];
    v27 = v13[9];
    v28 = v13[6];

    OUTLINED_FUNCTION_72_2();
    OUTLINED_FUNCTION_60();

    return v30(v29, v30, v31, v32, v33, v34, v35, v36, a9, a10);
  }
}

uint64_t CallingIntentUnsupportedValueFlowStrategy.makeContactUnsupportedValueOutput(app:intent:parameterName:multicardinalValueIndex:intentResolutionResult:)()
{
  OUTLINED_FUNCTION_15();
  v1[89] = v0;
  v1[88] = v2;
  v1[87] = v3;
  v1[86] = v4;
  v1[85] = v5;
  v1[84] = v6;
  v1[90] = *v0;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0aB10NLv3IntentVSgMd, &_s27PhoneCallFlowDelegatePlugin0aB10NLv3IntentVSgMR);
  OUTLINED_FUNCTION_21(v7);
  v9 = *(v8 + 64);
  v1[91] = OUTLINED_FUNCTION_45();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v10);
  v12 = *(v11 + 64);
  v1[92] = OUTLINED_FUNCTION_62_4();
  v1[93] = swift_task_alloc();
  v1[94] = swift_task_alloc();
  v13 = type metadata accessor for ButtonConfigurationModel();
  OUTLINED_FUNCTION_13_2(v13);
  v1[95] = v14;
  v16 = *(v15 + 64);
  v1[96] = OUTLINED_FUNCTION_62_4();
  v1[97] = swift_task_alloc();
  v17 = type metadata accessor for Locale();
  v1[98] = v17;
  OUTLINED_FUNCTION_13_2(v17);
  v1[99] = v18;
  v20 = *(v19 + 64);
  v1[100] = OUTLINED_FUNCTION_62_4();
  v1[101] = swift_task_alloc();
  v21 = type metadata accessor for OutputGenerationManifest();
  v1[102] = v21;
  OUTLINED_FUNCTION_13_2(v21);
  v1[103] = v22;
  v24 = *(v23 + 64);
  v1[104] = OUTLINED_FUNCTION_62_4();
  v1[105] = swift_task_alloc();
  v25 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v25, v26, v27);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v5 = *(v4 + 896);
  *v3 = *v1;
  *(v2 + 904) = v6;
  *(v2 + 912) = v0;

  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v7, v8, v9);
}

{
  OUTLINED_FUNCTION_27();
  v1 = *(*(v0 + 712) + 176);
  OUTLINED_FUNCTION_2_0();
  v3 = *(v2 + class metadata base offset for PhoneCallDisplayTextCATsSimple + 264);
  OUTLINED_FUNCTION_24_5();
  v9 = (v4 + *v4);
  v6 = *(v5 + 4);
  v7 = swift_task_alloc();
  *(v0 + 920) = v7;
  *v7 = v0;
  OUTLINED_FUNCTION_12_4(v7);

  return v9();
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_4();
  v4 = v3;
  OUTLINED_FUNCTION_6();
  *v5 = v4;
  v7 = *(v6 + 920);
  v8 = *v2;
  OUTLINED_FUNCTION_4_2();
  *v9 = v8;
  *(v4 + 928) = v0;

  if (!v0)
  {
    *(v4 + 936) = v1;
  }

  OUTLINED_FUNCTION_19_5();

  return _swift_task_switch(v10, v11, v12);
}

{
  v1 = v0[117];
  v40 = v0[110];
  v41 = v0[113];
  v39 = v0[109];
  v2 = v0[104];
  v3 = v0[97];
  v4 = v0[96];
  v5 = v0[95];
  v6 = v0[89];
  v7 = v0[86];
  v8 = dispatch thunk of LabelExecutionResult.subscript.getter();
  v10 = v9;

  ButtonConfigurationModel.init(label:url:)(v8, v10, v3);
  outlined init with copy of ButtonConfigurationModel(v3, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy27PhoneCallFlowDelegatePlugin24ButtonConfigurationModelVGMd, &_ss23_ContiguousArrayStorageCy27PhoneCallFlowDelegatePlugin24ButtonConfigurationModelVGMR);
  v11 = *(v5 + 72);
  v12 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_424FD0;
  outlined init with take of ButtonConfigurationModel(v4, v13 + v12);
  v39(v7, 0, 0, 0xD000000000000020, 0x80000000004592A0, 1);
  v14 = v6[7];
  __swift_project_boxed_opaque_existential_1(v6 + 3, v6[6]);
  v15 = *(v14 + 136);
  v16 = OUTLINED_FUNCTION_33_4();
  v17(v16);
  v18 = v0[66];
  v19 = v0[67];
  OUTLINED_FUNCTION_7_0(v0 + 63);
  v0[71] = type metadata accessor for PhoneSnippetDataModels();
  OUTLINED_FUNCTION_12_24();
  v0[72] = _s27PhoneCallFlowDelegatePlugin0A5ErrorOACs0F0AAWlTm_3(v20, v21);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 68);
  *boxed_opaque_existential_1 = v13;
  *(boxed_opaque_existential_1 + 8) = 1;
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v23 = OUTLINED_FUNCTION_48_0();
  v0[118] = v23;
  *(v23 + 16) = xmmword_426260;
  *(v23 + 32) = v41;
  v24 = *(v19 + 8);
  v25 = async function pointer to dispatch thunk of ResponseGenerating.makeResponseOutput(conversationModel:dialog:outputGenerationManifest:)[1];
  v26 = v41;
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[119] = v27;
  *v27 = v28;
  v27[1] = CallingIntentUnsupportedValueFlowStrategy.makeContactUnsupportedValueOutput(app:intent:parameterName:multicardinalValueIndex:intentResolutionResult:);
  v29 = v0[104];
  v30 = v0[84];
  OUTLINED_FUNCTION_50_8();
  OUTLINED_FUNCTION_15_11();

  return dispatch thunk of ResponseGenerating.makeResponseOutput(conversationModel:dialog:outputGenerationManifest:)(v31, v32, v33, v34, v35, v36);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  v2 = v1;
  OUTLINED_FUNCTION_6();
  *v3 = v2;
  v5 = *(v4 + 952);
  v6 = *(v4 + 944);
  v7 = *v0;
  OUTLINED_FUNCTION_4_2();
  *v8 = v7;

  __swift_destroy_boxed_opaque_existential_1((v2 + 544));
  v9 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v9, v10, v11);
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_4();
  v4 = v3;
  OUTLINED_FUNCTION_6();
  *v5 = v4;
  v7 = *(v6 + 960);
  v8 = *v2;
  OUTLINED_FUNCTION_4_2();
  *v9 = v8;
  *(v4 + 968) = v0;

  if (!v0)
  {
    *(v4 + 976) = v1;
  }

  OUTLINED_FUNCTION_19_5();

  return _swift_task_switch(v10, v11, v12);
}

{
  OUTLINED_FUNCTION_79_2();
  OUTLINED_FUNCTION_23_0();
  v1 = *(v0 + 976);
  OUTLINED_FUNCTION_6_24(*(v0 + 712));
  v2 = OUTLINED_FUNCTION_4_3();
  v3(v2);
  v4 = *(v0 + 488);
  v5 = *(v0 + 496);
  OUTLINED_FUNCTION_7_0((v0 + 464));
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v6 = OUTLINED_FUNCTION_48_0();
  *(v0 + 984) = v6;
  OUTLINED_FUNCTION_20_16(v6, xmmword_426260);
  v7 = async function pointer to dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)[1];
  v8 = v1;
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 992) = v9;
  *v9 = v10;
  OUTLINED_FUNCTION_5_24(v9);
  OUTLINED_FUNCTION_80();

  return dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)(v11, v12, v13, v14, v15);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  v2 = *(v1 + 992);
  v3 = *(v1 + 984);
  v4 = *v0;
  OUTLINED_FUNCTION_4_2();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v6, v7, v8);
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_4();
  v4 = v3;
  OUTLINED_FUNCTION_6();
  *v5 = v4;
  v7 = *(v6 + 1000);
  v8 = *v2;
  OUTLINED_FUNCTION_4_2();
  *v9 = v8;
  *(v4 + 1008) = v0;

  if (!v0)
  {
    *(v4 + 1016) = v1;
  }

  OUTLINED_FUNCTION_19_5();

  return _swift_task_switch(v10, v11, v12);
}

{
  OUTLINED_FUNCTION_79_2();
  OUTLINED_FUNCTION_23_0();
  v1 = *(v0 + 1016);
  OUTLINED_FUNCTION_6_24(*(v0 + 712));
  v2 = OUTLINED_FUNCTION_4_3();
  v3(v2);
  v4 = *(v0 + 448);
  v5 = *(v0 + 456);
  OUTLINED_FUNCTION_7_0((v0 + 424));
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v6 = OUTLINED_FUNCTION_48_0();
  *(v0 + 1024) = v6;
  OUTLINED_FUNCTION_20_16(v6, xmmword_426260);
  v7 = async function pointer to dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)[1];
  v8 = v1;
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 1032) = v9;
  *v9 = v10;
  OUTLINED_FUNCTION_5_24(v9);
  OUTLINED_FUNCTION_80();

  return dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)(v11, v12, v13, v14, v15);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  v2 = *(v1 + 1032);
  v3 = *(v1 + 1024);
  v4 = *v0;
  OUTLINED_FUNCTION_4_2();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v6, v7, v8);
}

{
  OUTLINED_FUNCTION_61_0();
  OUTLINED_FUNCTION_31();
  v3 = v2;
  v4 = *v1;
  v5 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v6 = v5;
  v7 = v4[134];
  *v6 = *v1;
  v5[135] = v0;

  v8 = v4[133];
  v9 = v4[130];
  v10 = v4[93];
  if (!v0)
  {
    v5[136] = v3;
  }

  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v10, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);

  OUTLINED_FUNCTION_66_0();
  OUTLINED_FUNCTION_60();

  return _swift_task_switch(v11, v12, v13);
}

{
  OUTLINED_FUNCTION_79_2();
  OUTLINED_FUNCTION_23_0();
  v1 = *(v0 + 1088);
  OUTLINED_FUNCTION_6_24(*(v0 + 712));
  v2 = OUTLINED_FUNCTION_4_3();
  v3(v2);
  v4 = *(v0 + 408);
  v5 = *(v0 + 416);
  OUTLINED_FUNCTION_7_0((v0 + 384));
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v6 = OUTLINED_FUNCTION_48_0();
  *(v0 + 1096) = v6;
  OUTLINED_FUNCTION_20_16(v6, xmmword_426260);
  v7 = async function pointer to dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)[1];
  v8 = v1;
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 1104) = v9;
  *v9 = v10;
  OUTLINED_FUNCTION_5_24(v9);
  OUTLINED_FUNCTION_80();

  return dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)(v11, v12, v13, v14, v15);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  v2 = *(v1 + 1104);
  v3 = *(v1 + 1096);
  v4 = *v0;
  OUTLINED_FUNCTION_4_2();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v6, v7, v8);
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_4();
  v4 = v3;
  OUTLINED_FUNCTION_6();
  *v5 = v4;
  v7 = *(v6 + 1112);
  v8 = *v2;
  OUTLINED_FUNCTION_4_2();
  *v9 = v8;
  *(v4 + 1120) = v0;

  if (!v0)
  {
    *(v4 + 1128) = v1;
  }

  OUTLINED_FUNCTION_19_5();

  return _swift_task_switch(v10, v11, v12);
}

{
  OUTLINED_FUNCTION_79_2();
  OUTLINED_FUNCTION_23_0();
  v1 = *(v0 + 1128);
  OUTLINED_FUNCTION_6_24(*(v0 + 712));
  v2 = OUTLINED_FUNCTION_4_3();
  v3(v2);
  v4 = *(v0 + 328);
  v5 = *(v0 + 336);
  OUTLINED_FUNCTION_7_0((v0 + 304));
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v6 = OUTLINED_FUNCTION_48_0();
  *(v0 + 1136) = v6;
  OUTLINED_FUNCTION_20_16(v6, xmmword_426260);
  v7 = async function pointer to dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)[1];
  v8 = v1;
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 1144) = v9;
  *v9 = v10;
  OUTLINED_FUNCTION_5_24(v9);
  OUTLINED_FUNCTION_80();

  return dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)(v11, v12, v13, v14, v15);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  v2 = *(v1 + 1144);
  v3 = *(v1 + 1136);
  v4 = *v0;
  OUTLINED_FUNCTION_4_2();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v6, v7, v8);
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_4();
  v4 = v3;
  OUTLINED_FUNCTION_6();
  *v5 = v4;
  v7 = *(v6 + 1152);
  v8 = *v2;
  OUTLINED_FUNCTION_4_2();
  *v9 = v8;
  *(v4 + 1160) = v0;

  if (!v0)
  {
    *(v4 + 1168) = v1;
  }

  OUTLINED_FUNCTION_19_5();

  return _swift_task_switch(v10, v11, v12);
}

{
  OUTLINED_FUNCTION_79_2();
  OUTLINED_FUNCTION_23_0();
  v1 = *(v0 + 1168);
  OUTLINED_FUNCTION_6_24(*(v0 + 712));
  v2 = OUTLINED_FUNCTION_4_3();
  v3(v2);
  v4 = *(v0 + 288);
  v5 = *(v0 + 296);
  OUTLINED_FUNCTION_7_0((v0 + 264));
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v6 = OUTLINED_FUNCTION_48_0();
  *(v0 + 1176) = v6;
  OUTLINED_FUNCTION_20_16(v6, xmmword_426260);
  v7 = async function pointer to dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)[1];
  v8 = v1;
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 1184) = v9;
  *v9 = v10;
  OUTLINED_FUNCTION_5_24(v9);
  OUTLINED_FUNCTION_80();

  return dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)(v11, v12, v13, v14, v15);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  v2 = *(v1 + 1184);
  v3 = *(v1 + 1176);
  v4 = *v0;
  OUTLINED_FUNCTION_4_2();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v6, v7, v8);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v2[78] = v1;
  v2[79] = v4;
  v2[80] = v0;
  OUTLINED_FUNCTION_69_3();
  v6 = *(v5 + 1192);
  v7 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v8 = v7;
  *(v9 + 1200) = v0;

  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v10, v11, v12);
}

{
  OUTLINED_FUNCTION_61_0();
  OUTLINED_FUNCTION_31();
  v3 = v1[79];
  OUTLINED_FUNCTION_62_8();
  v4 = v3;
  OUTLINED_FUNCTION_14_20();
  v2();
  v5 = v0[7];
  __swift_project_boxed_opaque_existential_1(v0 + 3, v0[6]);
  v6 = *(v5 + 136);
  v7 = OUTLINED_FUNCTION_92();
  v8(v7);
  v9 = v1[32];
  __swift_project_boxed_opaque_existential_1(v1 + 28, v1[31]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v10 = OUTLINED_FUNCTION_48_0();
  v1[155] = v10;
  *(v10 + 16) = xmmword_426260;
  *(v10 + 32) = v4;
  v11 = *(v9 + 8);
  v12 = async function pointer to dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)[1];
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v1[156] = v13;
  *v13 = v14;
  OUTLINED_FUNCTION_41_9(v13);
  OUTLINED_FUNCTION_60();

  return dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)(v15, v16, v17, v18, v19);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v2[81] = v1;
  v2[82] = v4;
  v2[83] = v0;
  OUTLINED_FUNCTION_69_3();
  v6 = *(v5 + 1216);
  v8 = *(v7 + 1208);
  v9 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v10 = v9;
  *(v11 + 1224) = v0;

  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v12, v13, v14);
}

{
  OUTLINED_FUNCTION_61_0();
  OUTLINED_FUNCTION_31();
  v2 = v0[151];
  v3 = v0[92];

  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v3, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v4 = v0[82];
  OUTLINED_FUNCTION_62_8();
  v5 = v4;
  OUTLINED_FUNCTION_14_20();
  v1();
  v6 = v3[7];
  __swift_project_boxed_opaque_existential_1(v3 + 3, v3[6]);
  v7 = *(v6 + 136);
  v8 = OUTLINED_FUNCTION_92();
  v9(v8);
  v10 = v0[32];
  __swift_project_boxed_opaque_existential_1(v0 + 28, v0[31]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v11 = OUTLINED_FUNCTION_48_0();
  v0[155] = v11;
  *(v11 + 16) = xmmword_426260;
  *(v11 + 32) = v5;
  v12 = *(v10 + 8);
  v13 = async function pointer to dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)[1];
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[156] = v14;
  *v14 = v15;
  OUTLINED_FUNCTION_41_9(v14);
  OUTLINED_FUNCTION_60();

  return dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)(v16, v17, v18, v19, v20);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  v2 = *(v1 + 1248);
  v3 = *(v1 + 1240);
  v4 = *v0;
  OUTLINED_FUNCTION_4_2();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v6, v7, v8);
}

void CallingIntentUnsupportedValueFlowStrategy.makeContactUnsupportedValueOutput(app:intent:parameterName:multicardinalValueIndex:intentResolutionResult:)()
{
  v1 = v0[90];
  v2 = v0[86];
  v3 = *(v1 + 272);
  v0[106] = v3;
  v0[107] = *(v1 + 264);
  v4 = *(*(v3 + 8) + 16);
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_55();
  v244 = *(swift_getAssociatedConformanceWitness() + 8);
  v5 = v244[1];
  v6 = *(v5 + 8);
  v7 = swift_checkMetadataState();
  v8 = v6(v7, v5);
  v250 = v5;
  v243 = v6;
  if (v8)
  {
    v3 = specialized Array.count.getter(v8);

    if (v3)
    {
      v9 = OUTLINED_FUNCTION_81_1();
      v10 = v6(v9, v5);
      if (v10)
      {
        v11 = v10;
        v3 = v0[87];
        v12 = specialized Array.count.getter(v10);
        if ((v3 & 0x8000000000000000) == 0 && v12 > v3)
        {
          v3 = v11 & 0xC000000000000001;
          specialized Array._checkSubscript(_:wasNativeTypeChecked:)(v0[87], (v11 & 0xC000000000000001) == 0, v11);
          if ((v11 & 0xC000000000000001) == 0)
          {
            v13 = *(v11 + 8 * v0[87] + 32);
LABEL_13:
            v20 = v13;
LABEL_14:
            v21 = v20;

LABEL_17:
            v0[108] = v21;
            v22 = v0[105];
            v23 = v0[89];
            v24 = v0[88];
            v25 = v0[86];
            OUTLINED_FUNCTION_2_0();
            v26 += 256;
            v0[109] = *v26;
            v0[110] = v26 & 0xFFFFFFFFFFFFLL | 0xF4C9000000000000;
            OUTLINED_FUNCTION_14_20();
            v27();
            v28 = [v24 unsupportedReason];
            if (one-time initialization token for siriPhone != -1)
            {
LABEL_112:
              OUTLINED_FUNCTION_6_2();
            }

            v29 = v0[88];
            v30 = type metadata accessor for Logger();
            __swift_project_value_buffer(v30, static Logger.siriPhone);
            v31 = v29;
            v32 = Logger.logObject.getter();
            v33 = static os_log_type_t.debug.getter();
            if (os_log_type_enabled(v32, v33))
            {
              v3 = v7;
              v34 = v21;
              v35 = v0[88];
              v36 = OUTLINED_FUNCTION_42();
              *v36 = 134217984;
              *(v36 + 4) = [v35 unsupportedReason];

              v21 = v34;
              v7 = v3;
              _os_log_impl(&dword_0, v32, v33, "#CallingIntentUnsupportedValueFlowStrategy making contact unsupported value output for unsupported reason %ld", v36, 0xCu);
              OUTLINED_FUNCTION_26_0();
            }

            else
            {

              v32 = v0[88];
            }

            if (_INStartCallContactUnsupportedReasonForeignEmergencyDisambiguation == v28)
            {
              v37 = Logger.logObject.getter();
              v38 = static os_log_type_t.debug.getter();
              if (os_log_type_enabled(v37, v38))
              {
                v39 = swift_slowAlloc();
                *v39 = 0;
                _os_log_impl(&dword_0, v37, v38, "#CallingIntentUnsupportedValueFlowStrategy: contact unsupported value output for foreign emergency disambiguation", v39, 2u);
                OUTLINED_FUNCTION_26_0();
              }

              v40 = v0[105];
              v41 = v0[103];
              v42 = v0[102];
              v43 = v0[84];

              type metadata accessor for EmptyOutput();
              static EmptyOutput.instance.getter();

              v44 = *(v41 + 8);
              v45 = OUTLINED_FUNCTION_92();
              v46(v45);
              OUTLINED_FUNCTION_1_43();

              OUTLINED_FUNCTION_8_1();
              OUTLINED_FUNCTION_21_7();

              __asm { BRAA            X1, X16 }
            }

            switch(v28)
            {
              case 2uLL:
                OUTLINED_FUNCTION_31_6(v0[89]);
                v245 = (v49 + class metadata base offset for StartCallCATsSimple + 848);
                v50 = *v245;
                OUTLINED_FUNCTION_24_5();
                v251 = v51 + *v51;
                v53 = *(v52 + 4);
                v54 = swift_task_alloc();
                v0[120] = v54;
                *v54 = v0;
                OUTLINED_FUNCTION_42_7(v54, v55, v56, v57, v58, v59, v60, v61, v234, v235, v237, v239, v240, v243, v245, v251);
                OUTLINED_FUNCTION_21_7();

                __asm { BRAA            X0, X16 }

                return;
              case 3uLL:
                v101 = v0[86];
                v102 = type metadata accessor for PhoneStartCallIntent(0);
                v103 = specialized static PhoneStartCallIntent.makeForSlotTemplating(intent:isRelationshipRequest:)(v101, 0, v102, v7, v244);
                v0[130] = v103;
                if (v21 && (v104 = [v21 personHandle]) != 0 && (v105 = v104, v106 = objc_msgSend(v104, "label"), v105, v106) && (static String._unconditionallyBridgeFromObjectiveC(_:)(), v108 = v107, v106, v108))
                {
                  v109 = v0[94];
                  OUTLINED_FUNCTION_94();
                  v110 = 0;
                }

                else
                {
                  v110 = 1;
                }

                v145 = v0[94];
                v146 = type metadata accessor for SpeakableString();
                __swift_storeEnumTagSinglePayload(v145, v110, 1, v146);
                v147 = *&v103[OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin20PhoneStartCallIntent_contacts];
                v238 = v146;
                if (v147 && (v148 = *(v147 + 24), specialized Array.count.getter(v148)))
                {
                  v149 = OUTLINED_FUNCTION_57_7();
                  specialized Array._checkSubscript(_:wasNativeTypeChecked:)(v149, v150, v151);
                  if (v3)
                  {

                    specialized _ArrayBuffer._getElementSlowPath(_:)();
                  }

                  else
                  {
                    v152 = *(v148 + 32);
                  }

                  v153 = DialogPerson.personHandle.getter();
                }

                else
                {
                  v153 = 0;
                }

                v0[131] = v153;
                v154 = OUTLINED_FUNCTION_81_1();
                if (INPersonContainingIntent.hasSiriMatches.getter(v154, v250))
                {
                  if (v21)
                  {
                    v155 = [v21 siriMatches];
                    if (v155)
                    {
                      v156 = v155;
                      type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INPerson, INPerson_ptr);
                      v157 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

                      if (specialized Array.count.getter(v157))
                      {
                        v158 = OUTLINED_FUNCTION_57_7();
                        specialized Array._checkSubscript(_:wasNativeTypeChecked:)(v158, v159, v160);
                        v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                        v161 = v7;

                        goto LABEL_95;
                      }

                      v161 = v7;
                    }

                    else
                    {
                      v161 = v7;
                    }

                    v21 = 0;
                  }

                  else
                  {
                    v161 = v7;
                  }
                }

                else
                {
                  v161 = v7;
                  v171 = v21;
                }

LABEL_95:
                v0[132] = v21;
                v206 = v0[86];
                v207 = *(v0[89] + direct field offset for CallingIntentUnsupportedValueFlowStrategy.startCallCatsSimple);
                v208 = *(v244[2] + 8);

                v209 = OUTLINED_FUNCTION_33_4();
                v236 = v207;
                if (!v208(v209))
                {
                  v211 = v161;
                  v212 = v238;
                  goto LABEL_106;
                }

                v210 = INPreferredCallProviderGetBackingType();
                if (v210 == 4)
                {
                  v213 = @"THIRD_PARTY_PROVIDER";
                  v216 = @"THIRD_PARTY_PROVIDER";
                  v211 = v161;
                }

                else
                {
                  v211 = v161;
                  if (v210 != 3)
                  {
                    v212 = v238;
                    if (v210 == 2)
                    {
                      v213 = @"TELEPHONY_PROVIDER";
                      v214 = @"TELEPHONY_PROVIDER";
                    }

                    else
                    {
                      v213 = [NSString stringWithFormat:@"(unknown: %i)", v210];
                    }

                    goto LABEL_105;
                  }

                  v213 = @"FACETIME_PROVIDER";
                  v215 = @"FACETIME_PROVIDER";
                }

                v212 = v238;
LABEL_105:
                v217 = v213;
                static String._unconditionallyBridgeFromObjectiveC(_:)();

LABEL_106:
                v218 = v0[100];
                v219 = v0[99];
                v220 = v0[98];
                v221 = v0[93];
                v222 = v0[86];
                OUTLINED_FUNCTION_94();
                __swift_storeEnumTagSinglePayload(v221, 0, 1, v212);
                type metadata accessor for PhonePerson(0);
                ContactRelatedOr = INPersonContainingIntent.isFirstContactRelatedOrMyself.getter(v211, v250);
                static Device.current.getter();
                v224 = v0[47];
                __swift_project_boxed_opaque_existential_1(v0 + 43, v0[46]);
                OUTLINED_FUNCTION_11_0();
                dispatch thunk of DeviceState.siriLocale.getter();
                __swift_destroy_boxed_opaque_existential_1(v0 + 43);
                v0[133] = static PhonePerson.make(phonePerson:options:locale:)(v21, ContactRelatedOr & 1, v218);
                (*(v219 + 8))(v218, v220);
                v225 = *(*v236 + class metadata base offset for StartCallCATsSimple + 912);
                OUTLINED_FUNCTION_24_5();
                v258 = v226 + *v226;
                v228 = *(v227 + 4);
                v229 = swift_task_alloc();
                v0[134] = v229;
                *v229 = v0;
                v229[1] = CallingIntentUnsupportedValueFlowStrategy.makeContactUnsupportedValueOutput(app:intent:parameterName:multicardinalValueIndex:intentResolutionResult:);
                v230 = v0[94];
                v231 = v0[93];
                OUTLINED_FUNCTION_21_7();

                __asm { BRAA            X5, X16 }

                return;
              case 4uLL:
                v79 = OUTLINED_FUNCTION_81_1();
                v80 = v243(v79, v250);
                if (!v80)
                {
                  goto LABEL_74;
                }

                v3 = v80;
                v244 = v0;
                v81 = v0[99];
                v235 = _swiftEmptyArrayStorage;
                v250 = specialized Array.count.getter(v80);
                v82 = 0;
                v240 = v3 & 0xFFFFFFFFFFFFFF8;
                v243 = (v3 & 0xC000000000000001);
                v239 = (v81 + 8);
                while (1)
                {
                  if (v250 == v82)
                  {

                    v0 = v244;
LABEL_74:
                    v162 = v0[89];
                    type metadata accessor for PhonePersonList();
                    v163 = OUTLINED_FUNCTION_11_0();
                    v0[111] = PhonePersonList.__allocating_init(list:)(v163);
                    v164 = *(**(v162 + direct field offset for CallingIntentUnsupportedValueFlowStrategy.startCallCatsSimple) + class metadata base offset for StartCallCATsSimple + 832);
                    OUTLINED_FUNCTION_24_5();
                    v256 = v165 + *v165;
                    v167 = *(v166 + 4);
                    v168 = swift_task_alloc();
                    v0[112] = v168;
                    *v168 = v0;
                    OUTLINED_FUNCTION_12_4(v168);
                    OUTLINED_FUNCTION_21_7();

                    __asm { BRAA            X1, X16 }
                  }

                  if (v243)
                  {
                    v83 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                  }

                  else
                  {
                    if (v82 >= *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8)))
                    {
                      goto LABEL_111;
                    }

                    v83 = *(v3 + 8 * v82 + 32);
                  }

                  v28 = v83;
                  if (__OFADD__(v82, 1))
                  {
                    break;
                  }

                  v237 = v82 + 1;
                  v0 = v244;
                  v84 = v244[101];
                  v21 = v244[98];
                  type metadata accessor for PhonePerson(0);
                  static Device.current.getter();
                  v7 = v244[77];
                  __swift_project_boxed_opaque_existential_1(v0 + 73, v0[76]);
                  OUTLINED_FUNCTION_11_0();
                  dispatch thunk of DeviceState.siriLocale.getter();
                  __swift_destroy_boxed_opaque_existential_1(v244 + 73);
                  v85 = static PhonePerson.make(phonePerson:options:locale:)(v28, 0, v84);

                  (*v239)(v84, v21);
                  ++v82;
                  if (v85)
                  {
                    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
                    if (*(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
                    {
                      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
                    }

                    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
                    v235 = _swiftEmptyArrayStorage;
                    v82 = v237;
                  }
                }

                __break(1u);
LABEL_111:
                __break(1u);
                goto LABEL_112;
              case 5uLL:
                OUTLINED_FUNCTION_31_6(v0[89]);
                v247 = (v86 + class metadata base offset for StartCallCATsSimple + 944);
                v87 = *v247;
                OUTLINED_FUNCTION_24_5();
                v253 = v88 + *v88;
                v90 = *(v89 + 4);
                v91 = swift_task_alloc();
                v0[144] = v91;
                *v91 = v0;
                OUTLINED_FUNCTION_42_7(v91, v92, v93, v94, v95, v96, v97, v98, v234, v235, v237, v239, v240, v243, v247, v253);
                OUTLINED_FUNCTION_21_7();

                __asm { BRAA            X0, X16 }

                return;
              case 6uLL:
                OUTLINED_FUNCTION_31_6(v0[89]);
                v246 = (v64 + class metadata base offset for StartCallCATsSimple + 864);
                v65 = *v246;
                OUTLINED_FUNCTION_24_5();
                v252 = v66 + *v66;
                v68 = *(v67 + 4);
                v69 = swift_task_alloc();
                v0[125] = v69;
                *v69 = v0;
                OUTLINED_FUNCTION_42_7(v69, v70, v71, v72, v73, v74, v75, v76, v234, v235, v237, v239, v240, v243, v246, v252);
                OUTLINED_FUNCTION_21_7();

                __asm { BRAA            X0, X16 }

                return;
              case 7uLL:
                OUTLINED_FUNCTION_31_6(v0[89]);
                v248 = (v111 + class metadata base offset for StartCallCATsSimple + 928);
                v112 = *v248;
                OUTLINED_FUNCTION_24_5();
                v254 = v113 + *v113;
                v115 = *(v114 + 4);
                v116 = swift_task_alloc();
                v0[139] = v116;
                *v116 = v0;
                OUTLINED_FUNCTION_42_7(v116, v117, v118, v119, v120, v121, v122, v123, v234, v235, v237, v239, v240, v243, v248, v254);
                OUTLINED_FUNCTION_21_7();

                __asm { BRAA            X0, X16 }

                return;
              default:
                v126 = v0[86];
                type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INIntentResponse, INIntentResponse_ptr);
                OUTLINED_FUNCTION_43_3();
                static ContactsSlotTemplating.isMissingMeCardCase(intent:)();
                v127 = v0[89];
                if (v128)
                {
                  v129 = *(v127 + direct field offset for CallingIntentUnsupportedValueFlowStrategy.startCallCatsSimple);
                  OUTLINED_FUNCTION_2_0();
                  v249 = (v130 + class metadata base offset for StartCallCATsSimple + 896);
                  v131 = *v249;
                  OUTLINED_FUNCTION_24_5();
                  v255 = v132 + *v132;
                  v134 = *(v133 + 4);
                  v135 = swift_task_alloc();
                  v0[149] = v135;
                  *v135 = v0;
                  OUTLINED_FUNCTION_42_7(v135, v136, v137, v138, v139, v140, v141, v142, v234, v235, v237, v239, v240, v243, v249, v255);
                  OUTLINED_FUNCTION_21_7();

                  __asm { BRAA            X0, X16 }
                }

                v172 = v0[85];
                App.isFirstParty()();
                v173 = v127[7];
                __swift_project_boxed_opaque_existential_1(v127 + 3, v127[6]);
                v174 = *(v173 + 72);
                v175 = OUTLINED_FUNCTION_33_4();
                v177 = v176(v175);
                (*(*v177 + 152))(v177);

                if (v0[6])
                {
                  outlined init with copy of PhoneCallFlowState<INHangUpCallIntent, INHangUpCallIntentResponse>((v0 + 8), (v0 + 13), &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMR);
                  outlined destroy of TransformationResult((v0 + 2));
                  if (v0[16])
                  {
                    v178 = v0[91];
                    __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMR);
                    v179 = type metadata accessor for PhoneCallNLv3Intent(0);
                    v180 = swift_dynamicCast();
                    __swift_storeEnumTagSinglePayload(v178, v180 ^ 1u, 1, v179);
                    if (__swift_getEnumTagSinglePayload(v178, 1, v179) != 1)
                    {
                      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v0[91], &_s27PhoneCallFlowDelegatePlugin0aB10NLv3IntentVSgMd, &_s27PhoneCallFlowDelegatePlugin0aB10NLv3IntentVSgMR);
                      if (v21)
                      {
                        v181 = INPerson.nameLowercasedWithFirstUppercased.getter();
                      }

                      else
                      {
                        v181 = 0;
                      }

LABEL_87:
                      v185 = v0[101];
                      v186 = v0[99];
                      v187 = v0[98];
                      v241 = v187;
                      v188 = v0[89];
                      v257 = v0[85];
                      type metadata accessor for PhonePerson(0);
                      static Device.current.getter();
                      v189 = v0[22];
                      __swift_project_boxed_opaque_existential_1(v0 + 18, v0[21]);
                      dispatch thunk of DeviceState.siriLocale.getter();
                      __swift_destroy_boxed_opaque_existential_1(v0 + 18);
                      v0[151] = static PhonePerson.make(phonePerson:options:locale:)(v181, 0, v185);

                      v190 = *(v186 + 8);
                      v190(v185, v187);
                      v191 = v188[41];
                      v192 = v188[42];
                      __swift_project_boxed_opaque_existential_1(v188 + 38, v191);
                      (*(*v188 + 208))();
                      v193 = v0[27];
                      __swift_project_boxed_opaque_existential_1(v0 + 23, v0[26]);
                      dispatch thunk of DeviceState.siriLocale.getter();
                      (*(v192 + 16))(v257, v185, v191, v192);
                      v195 = v194;
                      v190(v185, v241);
                      __swift_destroy_boxed_opaque_existential_1(v0 + 23);
                      if (v195)
                      {
                        v196 = v0[92];
                        OUTLINED_FUNCTION_0();
                        OUTLINED_FUNCTION_94();
                      }

                      v197 = v0[92];
                      v198 = v0[89];
                      v199 = type metadata accessor for SpeakableString();
                      OUTLINED_FUNCTION_91_2(v199);
                      v200 = *(**(v198 + direct field offset for CallingIntentUnsupportedValueFlowStrategy.startCallCatsSimple) + class metadata base offset for StartCallCATsSimple + 880);

                      v242 = v200 + *v200;
                      v201 = v200[1];
                      v202 = swift_task_alloc();
                      v0[152] = v202;
                      *v202 = v0;
                      v202[1] = CallingIntentUnsupportedValueFlowStrategy.makeContactUnsupportedValueOutput(app:intent:parameterName:multicardinalValueIndex:intentResolutionResult:);
                      v203 = v0[92];
                      OUTLINED_FUNCTION_21_7();

                      __asm { BRAA            X3, X16 }
                    }

LABEL_86:
                    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v0[91], &_s27PhoneCallFlowDelegatePlugin0aB10NLv3IntentVSgMd, &_s27PhoneCallFlowDelegatePlugin0aB10NLv3IntentVSgMR);
                    v184 = v21;
                    v181 = v21;
                    goto LABEL_87;
                  }
                }

                else
                {
                  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>((v0 + 2), &_s27PhoneCallFlowDelegatePlugin20TransformationResultVSgMd, &_s27PhoneCallFlowDelegatePlugin20TransformationResultVSgMR);
                  *(v0 + 13) = 0u;
                  *(v0 + 15) = 0u;
                  v0[17] = 0;
                }

                v182 = v0[91];
                outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>((v0 + 13), &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMR);
                v183 = type metadata accessor for PhoneCallNLv3Intent(0);
                __swift_storeEnumTagSinglePayload(v182, 1, 1, v183);
                goto LABEL_86;
            }
          }

          goto LABEL_113;
        }
      }
    }
  }

  v14 = OUTLINED_FUNCTION_81_1();
  v15 = v6(v14, v5);
  if (v15)
  {
    v16 = v15;
    if (specialized Array.count.getter(v15))
    {
      v17 = OUTLINED_FUNCTION_57_7();
      specialized Array._checkSubscript(_:wasNativeTypeChecked:)(v17, v18, v19);
      if (!v3)
      {
        v13 = *(v16 + 32);
        goto LABEL_13;
      }

LABEL_113:
      v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      goto LABEL_14;
    }
  }

  v21 = 0;
  goto LABEL_17;
}

uint64_t CallingIntentUnsupportedValueFlowStrategy.makeContactUnsupportedValueOutput(app:intent:parameterName:multicardinalValueIndex:intentResolutionResult:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_24_1();
  v13 = *(v12 + 888);
  v14 = *(v12 + 864);
  v15 = *(v12 + 840);
  v16 = *(v12 + 832);
  v17 = *(v12 + 824);
  v18 = *(v12 + 816);
  v19 = *(v12 + 776);

  v20 = *(v17 + 8);
  v21 = OUTLINED_FUNCTION_92();
  v20(v21);
  OUTLINED_FUNCTION_1_2();
  _s27PhoneCallFlowDelegatePlugin0A5ErrorOWOhTm_2(v19, v22);
  (v20)(v15, v18);
  __swift_destroy_boxed_opaque_existential_1((v12 + 504));
  OUTLINED_FUNCTION_1_43();

  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_16();

  return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10, a11, a12);
}

{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_24_1();
  v14 = *(v13 + 976);
  OUTLINED_FUNCTION_19_17();

  v16 = OUTLINED_FUNCTION_41_6();
  v17(v16);
  __swift_destroy_boxed_opaque_existential_1((v13 + 464));
  OUTLINED_FUNCTION_1_43();

  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_16();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
}

{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_24_1();
  v14 = *(v13 + 1016);
  OUTLINED_FUNCTION_19_17();

  v16 = OUTLINED_FUNCTION_41_6();
  v17(v16);
  __swift_destroy_boxed_opaque_existential_1((v13 + 424));
  OUTLINED_FUNCTION_1_43();

  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_16();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
}

{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_24_1();
  v13 = *(v12 + 1056);
  v14 = *(v12 + 1048);
  v15 = *(v12 + 1040);
  v16 = *(v12 + 864);
  v17 = *(v12 + 840);
  v18 = *(v12 + 824);
  v19 = *(v12 + 816);
  v20 = *(v12 + 752);

  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v20, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v21 = *(v18 + 8);
  v22 = OUTLINED_FUNCTION_92();
  v23(v22);
  __swift_destroy_boxed_opaque_existential_1((v12 + 384));
  OUTLINED_FUNCTION_1_43();

  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_16();

  return v25(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10, a11, a12);
}

{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_24_1();
  v14 = *(v13 + 1128);
  OUTLINED_FUNCTION_19_17();

  v16 = OUTLINED_FUNCTION_41_6();
  v17(v16);
  __swift_destroy_boxed_opaque_existential_1((v13 + 304));
  OUTLINED_FUNCTION_1_43();

  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_16();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
}

{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_24_1();
  v14 = *(v13 + 1168);
  OUTLINED_FUNCTION_19_17();

  v16 = OUTLINED_FUNCTION_41_6();
  v17(v16);
  __swift_destroy_boxed_opaque_existential_1((v13 + 264));
  OUTLINED_FUNCTION_1_43();

  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_16();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
}

{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_24_1();
  v13 = *(v12 + 864);
  v14 = *(v12 + 840);
  v15 = *(v12 + 832);
  v16 = *(v12 + 824);
  v17 = *(v12 + 816);

  v18 = *(v16 + 8);
  v19 = OUTLINED_FUNCTION_55();
  v18(v19);
  v20 = OUTLINED_FUNCTION_43_3();
  v18(v20);
  __swift_destroy_boxed_opaque_existential_1((v12 + 224));
  OUTLINED_FUNCTION_1_43();

  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_16();

  return v22(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10, a11, a12);
}

{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_24_1();
  v14 = *(v13 + 888);
  OUTLINED_FUNCTION_19_17();

  v15 = OUTLINED_FUNCTION_41_6();
  v16(v15);
  v17 = *(v13 + 912);
  OUTLINED_FUNCTION_0_34();

  OUTLINED_FUNCTION_17_12();
  OUTLINED_FUNCTION_16();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
}

{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_24_1();
  v13 = *(v12 + 888);
  v14 = *(v12 + 864);
  v15 = *(v12 + 840);
  v16 = *(v12 + 824);
  v17 = *(v12 + 816);

  v18 = *(v16 + 8);
  v19 = OUTLINED_FUNCTION_55();
  v20(v19);
  v21 = *(v12 + 928);
  OUTLINED_FUNCTION_0_34();

  OUTLINED_FUNCTION_17_12();
  OUTLINED_FUNCTION_16();

  return v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, a11, a12);
}

{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_43_10();
  v13 = OUTLINED_FUNCTION_15_18();
  v14(v13);
  v15 = *(v12 + 968);
  OUTLINED_FUNCTION_0_34();

  OUTLINED_FUNCTION_17_12();
  OUTLINED_FUNCTION_16();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10, a11, a12);
}

{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_43_10();
  v13 = OUTLINED_FUNCTION_15_18();
  v14(v13);
  v15 = *(v12 + 1008);
  OUTLINED_FUNCTION_0_34();

  OUTLINED_FUNCTION_17_12();
  OUTLINED_FUNCTION_16();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10, a11, a12);
}

{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_24_1();
  v13 = v12[132];
  v14 = v12[131];
  v15 = v12[130];
  v16 = v12[108];
  v17 = v12[105];
  v18 = v12[103];
  v19 = v12[102];
  v20 = v12[94];

  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v20, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v21 = *(v18 + 8);
  v22 = OUTLINED_FUNCTION_55();
  v23(v22);
  v24 = v12[135];
  OUTLINED_FUNCTION_0_34();

  OUTLINED_FUNCTION_17_12();
  OUTLINED_FUNCTION_16();

  return v26(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10, a11, a12);
}

{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_43_10();
  v13 = OUTLINED_FUNCTION_15_18();
  v14(v13);
  v15 = *(v12 + 1120);
  OUTLINED_FUNCTION_0_34();

  OUTLINED_FUNCTION_17_12();
  OUTLINED_FUNCTION_16();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10, a11, a12);
}

{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_43_10();
  v13 = OUTLINED_FUNCTION_15_18();
  v14(v13);
  v15 = *(v12 + 1160);
  OUTLINED_FUNCTION_0_34();

  OUTLINED_FUNCTION_17_12();
  OUTLINED_FUNCTION_16();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10, a11, a12);
}

{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_43_10();
  v13 = OUTLINED_FUNCTION_15_18();
  v14(v13);
  v15 = *(v12 + 1200);
  OUTLINED_FUNCTION_0_34();

  OUTLINED_FUNCTION_17_12();
  OUTLINED_FUNCTION_16();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10, a11, a12);
}

{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_24_1();
  v13 = v12[151];
  v14 = v12[108];
  v15 = v12[105];
  v16 = v12[103];
  v17 = v12[102];
  v18 = v12[92];

  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v18, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v19 = *(v16 + 8);
  v20 = OUTLINED_FUNCTION_0();
  v21(v20);
  v22 = v12[153];
  OUTLINED_FUNCTION_0_34();

  OUTLINED_FUNCTION_17_12();
  OUTLINED_FUNCTION_16();

  return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10, a11, a12);
}

uint64_t CallingIntentUnsupportedValueFlowStrategy.makePreferredCallProviderUnsupportedValueOutput(resolveRecord:)()
{
  OUTLINED_FUNCTION_15();
  v1[23] = v2;
  v1[24] = v0;
  v1[22] = v3;
  v1[25] = *v0;
  v4 = type metadata accessor for ButtonConfigurationModel();
  OUTLINED_FUNCTION_13_2(v4);
  v1[26] = v5;
  v7 = *(v6 + 64);
  v1[27] = OUTLINED_FUNCTION_62_4();
  v1[28] = swift_task_alloc();
  v8 = type metadata accessor for Locale();
  v1[29] = v8;
  OUTLINED_FUNCTION_13_2(v8);
  v1[30] = v9;
  v11 = *(v10 + 64);
  v1[31] = OUTLINED_FUNCTION_45();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v12);
  v14 = *(v13 + 64);
  v1[32] = OUTLINED_FUNCTION_45();
  v15 = type metadata accessor for OutputGenerationManifest();
  v1[33] = v15;
  OUTLINED_FUNCTION_13_2(v15);
  v1[34] = v16;
  v18 = *(v17 + 64);
  v1[35] = OUTLINED_FUNCTION_45();
  v19 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v19, v20, v21);
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_4();
  v4 = v3;
  OUTLINED_FUNCTION_6();
  *v5 = v4;
  v7 = *(v6 + 320);
  v8 = *v2;
  OUTLINED_FUNCTION_4_2();
  *v9 = v8;
  *(v4 + 328) = v0;

  if (!v0)
  {
    *(v4 + 336) = v1;
  }

  OUTLINED_FUNCTION_19_5();

  return _swift_task_switch(v10, v11, v12);
}

{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_23_0();
  v3 = v2;
  v4 = *v1;
  v5 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v6 = v5;
  v7 = v4[46];
  *v6 = *v1;
  v5[47] = v0;

  v8 = v4[45];
  v9 = v4[44];
  if (v0)
  {
    v10 = v5[43];
  }

  else
  {

    v5[48] = v3;
  }

  OUTLINED_FUNCTION_66_0();
  OUTLINED_FUNCTION_65_1();

  return _swift_task_switch(v11, v12, v13);
}

{
  OUTLINED_FUNCTION_79_2();
  OUTLINED_FUNCTION_23_0();
  v1 = *(v0 + 384);
  v2 = *(v0 + 344);
  OUTLINED_FUNCTION_6_24(*(v0 + 192));
  v3 = OUTLINED_FUNCTION_4_3();
  v4(v3);
  v5 = *(v0 + 120);
  v6 = *(v0 + 128);
  OUTLINED_FUNCTION_7_0((v0 + 96));
  *(v0 + 160) = type metadata accessor for PhoneSnippetDataModels();
  OUTLINED_FUNCTION_12_24();
  *(v0 + 168) = _s27PhoneCallFlowDelegatePlugin0A5ErrorOACs0F0AAWlTm_3(v7, v8);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 136));
  OUTLINED_FUNCTION_77_5(boxed_opaque_existential_1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v10 = OUTLINED_FUNCTION_48_0();
  *(v0 + 392) = v10;
  OUTLINED_FUNCTION_20_16(v10, xmmword_426260);
  v11 = async function pointer to dispatch thunk of ResponseGenerating.makeResponseOutput(conversationModel:dialog:outputGenerationManifest:)[1];
  v12 = v1;
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 400) = v13;
  *v13 = v14;
  v13[1] = CallingIntentUnsupportedValueFlowStrategy.makePreferredCallProviderUnsupportedValueOutput(resolveRecord:);
  v15 = *(v0 + 280);
  v16 = *(v0 + 176);
  OUTLINED_FUNCTION_50_8();
  OUTLINED_FUNCTION_80();

  return dispatch thunk of ResponseGenerating.makeResponseOutput(conversationModel:dialog:outputGenerationManifest:)(v17, v18, v19, v20, v21, v22);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  v2 = v1;
  OUTLINED_FUNCTION_6();
  *v3 = v2;
  v5 = *(v4 + 400);
  v6 = *(v4 + 392);
  v7 = *v0;
  OUTLINED_FUNCTION_4_2();
  *v8 = v7;

  __swift_destroy_boxed_opaque_existential_1((v2 + 136));
  v9 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v9, v10, v11);
}

{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_23_0();
  v2 = *(v0 + 272);
  v1 = *(v0 + 280);
  v4 = *(v0 + 256);
  v3 = *(v0 + 264);
  v5 = *(v0 + 224);

  OUTLINED_FUNCTION_1_2();
  _s27PhoneCallFlowDelegatePlugin0A5ErrorOWOhTm_2(v5, v6);
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v4, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v7 = *(v2 + 8);
  v8 = OUTLINED_FUNCTION_0();
  v9(v8);
  __swift_destroy_boxed_opaque_existential_1((v0 + 96));
  v10 = *(v0 + 280);
  v11 = *(v0 + 248);
  v12 = *(v0 + 256);
  v14 = *(v0 + 216);
  v13 = *(v0 + 224);

  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_65_1();

  return v16(v15, v16, v17, v18, v19, v20, v21, v22);
}

{
  OUTLINED_FUNCTION_79_2();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_10_4();
  v4 = v3;
  OUTLINED_FUNCTION_6();
  *v5 = v4;
  v7 = v6[53];
  v8 = v6[52];
  v9 = v6[51];
  v10 = *v2;
  OUTLINED_FUNCTION_4_2();
  *v11 = v10;
  *(v4 + 432) = v0;

  if (!v0)
  {
    *(v4 + 440) = v1;
  }

  OUTLINED_FUNCTION_19_5();
  OUTLINED_FUNCTION_80();

  return _swift_task_switch(v12, v13, v14);
}

{
  OUTLINED_FUNCTION_79_2();
  OUTLINED_FUNCTION_23_0();
  v1 = *(v0 + 440);
  OUTLINED_FUNCTION_6_24(*(v0 + 192));
  v2 = OUTLINED_FUNCTION_4_3();
  v3(v2);
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  OUTLINED_FUNCTION_7_0((v0 + 16));
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v6 = OUTLINED_FUNCTION_48_0();
  *(v0 + 448) = v6;
  OUTLINED_FUNCTION_20_16(v6, xmmword_426260);
  v7 = async function pointer to dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)[1];
  v8 = v1;
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 456) = v9;
  *v9 = v10;
  v9[1] = CallingIntentUnsupportedValueFlowStrategy.makePreferredCallProviderUnsupportedValueOutput(resolveRecord:);
  v11 = *(v0 + 280);
  v12 = *(v0 + 176);
  OUTLINED_FUNCTION_7_18();
  OUTLINED_FUNCTION_80();

  return dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)(v13, v14, v15, v16, v17);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  v2 = *(v1 + 456);
  v3 = *(v1 + 448);
  v4 = *v0;
  OUTLINED_FUNCTION_4_2();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v6, v7, v8);
}

{
  OUTLINED_FUNCTION_27();
  v2 = *(v0 + 272);
  v1 = *(v0 + 280);
  v3 = *(v0 + 264);

  v4 = OUTLINED_FUNCTION_15_18();
  v5(v4);
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v6 = *(v0 + 280);
  v7 = *(v0 + 248);
  v8 = *(v0 + 256);
  v10 = *(v0 + 216);
  v9 = *(v0 + 224);

  OUTLINED_FUNCTION_8_1();

  return v11();
}

{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_23_0();
  v2 = v0[34];
  v1 = v0[35];
  v3 = v0[33];
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v0[32], &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v4 = OUTLINED_FUNCTION_15_18();
  v5(v4);
  v6 = v0[41];
  OUTLINED_FUNCTION_78_4();

  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_65_1();

  return v8(v7, v8, v9, v10, v11, v12, v13, v14);
}

{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_23_0();
  v2 = v0[34];
  v1 = v0[35];
  v4 = v0[32];
  v3 = v0[33];
  v5 = v0[28];
  OUTLINED_FUNCTION_1_2();
  _s27PhoneCallFlowDelegatePlugin0A5ErrorOWOhTm_2(v6, v7);
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v4, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v8 = OUTLINED_FUNCTION_41_6();
  v9(v8);
  v10 = v0[47];
  OUTLINED_FUNCTION_78_4();

  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_65_1();

  return v12(v11, v12, v13, v14, v15, v16, v17, v18);
}

{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_23_0();
  (*(v0[34] + 8))(v0[35], v0[33]);
  v1 = v0[54];
  OUTLINED_FUNCTION_78_4();

  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_65_1();

  return v3(v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t CallingIntentUnsupportedValueFlowStrategy.makePreferredCallProviderUnsupportedValueOutput(resolveRecord:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_75_3();
  OUTLINED_FUNCTION_86_2();
  v19 = v18[35];
  v21 = v18[24];
  v20 = v18[25];
  v22 = v18[23];
  v23 = *(v20 + 272);
  v18[36] = v23;
  v24 = *(*(v23 + 8) + 16);
  v25 = *(v20 + 264);
  v18[37] = v25;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v18[38] = AssociatedTypeWitness;
  v18[39] = type metadata accessor for ParameterResolutionRecord();
  v27 = ParameterResolutionRecord.intent.getter();
  default argument 3 of SAUISayIt.init(message:dialogIdentifier:canUseServerTTS:listenAfterSpeaking:)(v25, v23);
  v28 = *(*v21 + 256);
  OUTLINED_FUNCTION_14_20();
  v29();

  v30 = ParameterResolutionRecord.intent.getter();
  objc_opt_self();
  v31 = swift_dynamicCastObjCClass();

  if (v31 && (v32 = v18[23], v33 = ParameterResolutionRecord.result.getter(), v34 = [v33 unsupportedReason], v33, v34 == &dword_4 + 1))
  {
    v36 = v18[30];
    v35 = v18[31];
    v96 = v18[29];
    v37 = v18[23];
    v38 = v18[24];
    v39 = v38[41];
    v40 = v38[42];
    __swift_project_boxed_opaque_existential_1(v38 + 38, v39);
    v41 = ParameterResolutionRecord.app.getter();
    v42 = v38[7];
    __swift_project_boxed_opaque_existential_1(v38 + 3, v38[6]);
    v43 = *(v42 + 8);
    v44 = OUTLINED_FUNCTION_2();
    v45(v44);
    v46 = v18[11];
    __swift_project_boxed_opaque_existential_1(v18 + 7, v18[10]);
    OUTLINED_FUNCTION_2();
    dispatch thunk of DeviceState.siriLocale.getter();
    (*(v40 + 16))(v41, v35, v39, v40);
    v48 = v47;

    (*(v36 + 8))(v35, v96);
    __swift_destroy_boxed_opaque_existential_1(v18 + 7);
    if (v48)
    {
      v49 = v18[32];
      String.toSpeakableString.getter();
    }

    v75 = v18[32];
    v76 = v18[24];
    v77 = type metadata accessor for SpeakableString();
    OUTLINED_FUNCTION_91_2(v77);
    v78 = *(v76 + 176);
    OUTLINED_FUNCTION_2_0();
    v80 = *(v79 + class metadata base offset for PhoneCallDisplayTextCATsSimple + 24);
    v95 = v79 + class metadata base offset for PhoneCallDisplayTextCATsSimple + 24;
    OUTLINED_FUNCTION_24_5();
    v98 = v81 + *v81;
    v83 = *(v82 + 4);
    v84 = swift_task_alloc();
    v18[40] = v84;
    *v84 = v18;
    v84[1] = CallingIntentUnsupportedValueFlowStrategy.makePreferredCallProviderUnsupportedValueOutput(resolveRecord:);
    v85 = v18[32];
    OUTLINED_FUNCTION_46_6();

    return v87(v86, v87, v88, v89, v90, v91, v92, v93, v95, v98, a11, a12, a13, a14, a15, a16, a17, a18);
  }

  else
  {
    v50 = v18[23];
    v51 = v18[24];
    v52 = *(v51 + direct field offset for CallingIntentUnsupportedValueFlowStrategy.startCallCatsSimple);
    v53 = type metadata accessor for PhoneStartCallIntent(0);
    v54 = ParameterResolutionRecord.intent.getter();
    OUTLINED_FUNCTION_55();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    specialized PhoneStartCallIntent.__allocating_init(intent:isRelationshipRequest:)(v54, 0, v53, AssociatedTypeWitness, AssociatedConformanceWitness);
    v18[51] = v56;
    type metadata accessor for SirikitDeviceState();
    v57 = v51[7];
    __swift_project_boxed_opaque_existential_1(v51 + 3, v51[6]);
    v58 = *(v57 + 8);
    v59 = OUTLINED_FUNCTION_33_4();
    v60(v59);
    v18[52] = SirikitDeviceState.__allocating_init(from:)();
    v94 = (*v52 + class metadata base offset for StartCallCATsSimple + 1008);
    v61 = *v94;
    OUTLINED_FUNCTION_24_5();
    v97 = v62 + *v62;
    v64 = *(v63 + 4);
    v65 = swift_task_alloc();
    v18[53] = v65;
    *v65 = v18;
    OUTLINED_FUNCTION_12_4(v65);
    OUTLINED_FUNCTION_46_6();

    return v68(v66, v67, v68, v69, v70, v71, v72, v73, v94, v97, a11, a12, a13, a14, a15, a16, a17, a18);
  }
}

void CallingIntentUnsupportedValueFlowStrategy.makePreferredCallProviderUnsupportedValueOutput(resolveRecord:)()
{
  v1 = v0[42];
  v2 = v0[38];
  v31 = v0[37];
  v29 = v0[39];
  v30 = v0[36];
  v3 = v0[35];
  v4 = v0[27];
  v5 = v0[28];
  v6 = v0[26];
  v7 = v0[24];
  v28 = v0[23];
  dispatch thunk of LabelExecutionResult.subscript.getter();

  v8 = OUTLINED_FUNCTION_33_4();
  ButtonConfigurationModel.init(label:url:)(v8, v9, v10);
  outlined init with copy of ButtonConfigurationModel(v5, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy27PhoneCallFlowDelegatePlugin24ButtonConfigurationModelVGMd, &_ss23_ContiguousArrayStorageCy27PhoneCallFlowDelegatePlugin24ButtonConfigurationModelVGMR);
  v11 = *(v6 + 72);
  v12 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v13 = swift_allocObject();
  v0[43] = v13;
  *(v13 + 16) = xmmword_424FD0;
  outlined init with take of ButtonConfigurationModel(v4, v13 + v12);
  OutputGenerationManifest.responseViewId.setter();
  v14 = *(v7 + direct field offset for CallingIntentUnsupportedValueFlowStrategy.startCallCatsSimple);
  v15 = type metadata accessor for PhoneStartCallIntent(0);
  v16 = ParameterResolutionRecord.intent.getter();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  specialized PhoneStartCallIntent.__allocating_init(intent:isRelationshipRequest:)(v16, 0, v15, v2, AssociatedConformanceWitness);
  v0[44] = v18;
  type metadata accessor for SirikitDeviceState();
  v19 = v7[6];
  v20 = v7[7];
  __swift_project_boxed_opaque_existential_1(v7 + 3, v19);
  (*(v20 + 8))(v33, v19, v20);
  v0[45] = SirikitDeviceState.__allocating_init(from:)();
  v21 = *(*v14 + class metadata base offset for StartCallCATsSimple + 1024);
  OUTLINED_FUNCTION_24_5();
  v32 = v22 + *v22;
  v24 = *(v23 + 4);
  v25 = swift_task_alloc();
  v0[46] = v25;
  *v25 = v0;
  OUTLINED_FUNCTION_12_4(v25);
  OUTLINED_FUNCTION_21_7();

  __asm { BRAA            X2, X16 }
}

uint64_t CallingIntentUnsupportedValueFlowStrategy.makeCallCapabilityUnsupportedValueOutput(intent:intentResolutionResult:app:)()
{
  OUTLINED_FUNCTION_15();
  v1[16] = v2;
  v1[17] = v0;
  v1[14] = v3;
  v1[15] = v4;
  v1[13] = v5;
  v1[18] = *v0;
  v6 = type metadata accessor for OutputGenerationManifest();
  v1[19] = v6;
  OUTLINED_FUNCTION_13_2(v6);
  v1[20] = v7;
  v9 = *(v8 + 64);
  v1[21] = OUTLINED_FUNCTION_45();
  v10 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v10, v11, v12);
}

{
  OUTLINED_FUNCTION_23_0();
  v1 = *(v0 + 168);
  v2 = *(v0 + 136);
  v3 = *(v0 + 112);
  default argument 3 of SAUISayIt.init(message:dialogIdentifier:canUseServerTTS:listenAfterSpeaking:)(*(*(v0 + 144) + 264), *(*(v0 + 144) + 272));
  v4 = *(*v2 + 256);
  OUTLINED_FUNCTION_14_20();
  v5();
  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {
    goto LABEL_10;
  }

  v6 = [*(v0 + 120) unsupportedReason];
  if ((v6 - 2) >= 2)
  {
    if (v6 == &dword_0 + 1)
    {
      OUTLINED_FUNCTION_31_6(*(v0 + 136));
      v15 = *(v14 + class metadata base offset for StartCallCATsSimple + 800);
      OUTLINED_FUNCTION_24_5();
      v27 = (v16 + *v16);
      v18 = *(v17 + 4);
      v19 = swift_task_alloc();
      *(v0 + 192) = v19;
      *v19 = v0;
      OUTLINED_FUNCTION_12_4(v19);
      v20 = v27;

      return v20();
    }

LABEL_10:
    OUTLINED_FUNCTION_31_6(*(v0 + 136));
    v22 = *(v21 + class metadata base offset for StartCallCATsSimple + 752);
    OUTLINED_FUNCTION_24_5();
    v28 = (v23 + *v23);
    v25 = *(v24 + 4);
    v26 = swift_task_alloc();
    *(v0 + 208) = v26;
    *v26 = v0;
    OUTLINED_FUNCTION_12_4(v26);
    v20 = v28;

    return v20();
  }

  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 176) = v7;
  *v7 = v8;
  v7[1] = CallingIntentUnsupportedValueFlowStrategy.makeCallCapabilityUnsupportedValueOutput(intent:intentResolutionResult:app:);
  v9 = *(v0 + 168);
  v10 = *(v0 + 128);
  v11 = *(v0 + 136);
  v12 = *(v0 + 104);

  return CallingIntentUnsupportedValueFlowStrategy.generateOutputForCameraOrMicUnavailable(reason:app:outputManifest:)();
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v5 = *(v4 + 176);
  v6 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v7 = v6;
  *(v8 + 184) = v0;

  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v9, v10, v11);
}

{
  OUTLINED_FUNCTION_15();
  (*(v0[20] + 8))(v0[21], v0[19]);
  v1 = v0[21];

  OUTLINED_FUNCTION_8_1();

  return v2();
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v2[7] = v1;
  v2[8] = v4;
  v2[9] = v0;
  OUTLINED_FUNCTION_69_3();
  v6 = *(v5 + 192);
  v7 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v8 = v7;
  *(v9 + 200) = v0;

  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v10, v11, v12);
}

{
  OUTLINED_FUNCTION_79_2();
  OUTLINED_FUNCTION_23_0();
  v1 = v0[8];
  v2 = v0[17];
  v0[28] = v1;
  v3 = v2[6];
  v4 = v2[7];
  OUTLINED_FUNCTION_7_0(v2 + 3);
  v5 = *(v4 + 136);
  v6 = v1;
  v7 = OUTLINED_FUNCTION_55();
  v5(v7);
  v8 = v0[5];
  v9 = v0[6];
  OUTLINED_FUNCTION_7_0(v0 + 2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v10 = OUTLINED_FUNCTION_48_0();
  v0[29] = v10;
  *(v10 + 16) = xmmword_426260;
  *(v10 + 32) = v6;
  v11 = *(v9 + 8);
  v12 = async function pointer to dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)[1];
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[30] = v13;
  *v13 = v14;
  v13[1] = CallingIntentUnsupportedValueFlowStrategy.makeCallCapabilityUnsupportedValueOutput(intent:intentResolutionResult:app:);
  v15 = v0[21];
  v16 = v0[13];
  OUTLINED_FUNCTION_7_18();
  OUTLINED_FUNCTION_80();

  return dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)(v17, v18, v19, v20, v21);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v2[10] = v1;
  v2[11] = v4;
  v2[12] = v0;
  OUTLINED_FUNCTION_69_3();
  v6 = *(v5 + 208);
  v7 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v8 = v7;
  *(v9 + 216) = v0;

  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v10, v11, v12);
}

{
  OUTLINED_FUNCTION_79_2();
  OUTLINED_FUNCTION_23_0();
  v1 = v0[11];
  v2 = v0[17];
  v0[28] = v1;
  v3 = v2[6];
  v4 = v2[7];
  OUTLINED_FUNCTION_7_0(v2 + 3);
  v5 = *(v4 + 136);
  v6 = v1;
  v7 = OUTLINED_FUNCTION_55();
  v5(v7);
  v8 = v0[5];
  v9 = v0[6];
  OUTLINED_FUNCTION_7_0(v0 + 2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v10 = OUTLINED_FUNCTION_48_0();
  v0[29] = v10;
  *(v10 + 16) = xmmword_426260;
  *(v10 + 32) = v6;
  v11 = *(v9 + 8);
  v12 = async function pointer to dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)[1];
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[30] = v13;
  *v13 = v14;
  v13[1] = CallingIntentUnsupportedValueFlowStrategy.makeCallCapabilityUnsupportedValueOutput(intent:intentResolutionResult:app:);
  v15 = v0[21];
  v16 = v0[13];
  OUTLINED_FUNCTION_7_18();
  OUTLINED_FUNCTION_80();

  return dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)(v17, v18, v19, v20, v21);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  v2 = *(v1 + 240);
  v3 = *(v1 + 232);
  v4 = *v0;
  OUTLINED_FUNCTION_4_2();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v6, v7, v8);
}

{
  OUTLINED_FUNCTION_27();
  v2 = *(v0 + 160);
  v1 = *(v0 + 168);
  v3 = *(v0 + 152);

  v4 = OUTLINED_FUNCTION_15_18();
  v5(v4);
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v6 = *(v0 + 168);

  OUTLINED_FUNCTION_8_1();

  return v7();
}

{
  OUTLINED_FUNCTION_15();
  v1 = *(v0 + 200);
  v2 = OUTLINED_FUNCTION_55_8();
  v3(v2);

  OUTLINED_FUNCTION_11();

  return v4();
}

{
  OUTLINED_FUNCTION_15();
  v1 = *(v0 + 216);
  v2 = OUTLINED_FUNCTION_55_8();
  v3(v2);

  OUTLINED_FUNCTION_11();

  return v4();
}

{
  OUTLINED_FUNCTION_15();
  v1 = *(v0 + 184);
  v2 = OUTLINED_FUNCTION_55_8();
  v3(v2);

  OUTLINED_FUNCTION_11();

  return v4();
}

uint64_t CallingIntentUnsupportedValueFlowStrategy.makeContactsNoCallHistoryForRedialUnsupportedValueOutput(intent:intentResolutionResult:)()
{
  OUTLINED_FUNCTION_15();
  v1[8] = v2;
  v1[9] = v0;
  v1[7] = v3;
  v1[10] = *v0;
  v4 = type metadata accessor for OutputGenerationManifest();
  v1[11] = v4;
  OUTLINED_FUNCTION_13_2(v4);
  v1[12] = v5;
  v7 = *(v6 + 64);
  v1[13] = OUTLINED_FUNCTION_45();
  v8 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v8, v9, v10);
}

{
  OUTLINED_FUNCTION_23_0();
  v1 = v0[13];
  v2 = v0[9];
  v3 = v0[8];
  default argument 3 of SAUISayIt.init(message:dialogIdentifier:canUseServerTTS:listenAfterSpeaking:)(*(v0[10] + 264), *(v0[10] + 272));
  v4 = *(*v2 + 256);
  OUTLINED_FUNCTION_14_20();
  v5();
  v6 = *(v2 + direct field offset for CallingIntentUnsupportedValueFlowStrategy.startCallCatsSimple);
  OUTLINED_FUNCTION_2_0();
  v8 = *(v7 + class metadata base offset for StartCallCATsSimple + 864);
  OUTLINED_FUNCTION_24_5();
  v14 = (v9 + *v9);
  v11 = *(v10 + 4);
  v12 = swift_task_alloc();
  v0[14] = v12;
  *v12 = v0;
  OUTLINED_FUNCTION_12_4(v12);

  return v14();
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_4();
  v4 = v3;
  OUTLINED_FUNCTION_6();
  *v5 = v4;
  v7 = *(v6 + 112);
  v8 = *v2;
  OUTLINED_FUNCTION_4_2();
  *v9 = v8;
  *(v4 + 120) = v0;

  if (!v0)
  {
    *(v4 + 128) = v1;
  }

  OUTLINED_FUNCTION_19_5();

  return _swift_task_switch(v10, v11, v12);
}

{
  OUTLINED_FUNCTION_79_2();
  OUTLINED_FUNCTION_23_0();
  v1 = *(v0 + 128);
  OUTLINED_FUNCTION_6_24(*(v0 + 72));
  v2 = OUTLINED_FUNCTION_4_3();
  v3(v2);
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  OUTLINED_FUNCTION_7_0((v0 + 16));
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v6 = OUTLINED_FUNCTION_48_0();
  *(v0 + 136) = v6;
  OUTLINED_FUNCTION_20_16(v6, xmmword_426260);
  v7 = async function pointer to dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)[1];
  v8 = v1;
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 144) = v9;
  *v9 = v10;
  v9[1] = CallingIntentUnsupportedValueFlowStrategy.makeContactsNoCallHistoryForRedialUnsupportedValueOutput(intent:intentResolutionResult:);
  v11 = *(v0 + 104);
  v12 = *(v0 + 56);
  OUTLINED_FUNCTION_7_18();
  OUTLINED_FUNCTION_80();

  return dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)(v13, v14, v15, v16, v17);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  v2 = *(v1 + 144);
  v3 = *(v1 + 136);
  v4 = *v0;
  OUTLINED_FUNCTION_4_2();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v6, v7, v8);
}

{
  OUTLINED_FUNCTION_27();
  v2 = *(v0 + 96);
  v1 = *(v0 + 104);
  v3 = *(v0 + 88);

  v4 = OUTLINED_FUNCTION_15_18();
  v5(v4);
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  OUTLINED_FUNCTION_8_1();

  return v6();
}

{
  OUTLINED_FUNCTION_15();
  (*(v0[12] + 8))(v0[13], v0[11]);

  OUTLINED_FUNCTION_11();
  v2 = v0[15];

  return v1();
}

uint64_t CallingIntentUnsupportedValueFlowStrategy.shouldEnableFeatureOnResponseFramework(parameterName:intentResolutionResult:)()
{

  v0._countAndFlagsBits = OUTLINED_FUNCTION_0();
  if (PhoneCallSlotNames.init(rawValue:)(v0).value == PhoneCallFlowDelegatePlugin_PhoneCallSlotNames_preferredCallProvider)
  {
    if ([objc_opt_self() supportsDisplayingFaceTimeVideoCalls])
    {
      return 0;
    }

    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2();
    }

    v2 = type metadata accessor for Logger();
    __swift_project_value_buffer(v2, static Logger.siriPhone);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_0, v3, v4, "#CallingIntentUnsupportedValueFlowStrategy shouldEnableFeatureOnResponseFramework: this device has more likely FaceTime restriction based on region. Returning unsupported call capability RF dialog..", v5, 2u);
      OUTLINED_FUNCTION_26_0();
    }
  }

  return 1;
}

uint64_t CallingIntentUnsupportedValueFlowStrategy.generateOutputForCameraOrMicUnavailable(reason:app:outputManifest:)()
{
  OUTLINED_FUNCTION_15();
  *(v1 + 224) = v2;
  *(v1 + 232) = v0;
  *(v1 + 208) = v3;
  *(v1 + 216) = v4;
  *(v1 + 424) = v5;
  *(v1 + 200) = v6;
  v7 = type metadata accessor for PhoneError();
  *(v1 + 240) = v7;
  OUTLINED_FUNCTION_21(v7);
  v9 = *(v8 + 64);
  *(v1 + 248) = OUTLINED_FUNCTION_45();
  v10 = type metadata accessor for OutputGenerationManifest();
  *(v1 + 256) = v10;
  OUTLINED_FUNCTION_13_2(v10);
  *(v1 + 264) = v11;
  v13 = *(v12 + 64);
  *(v1 + 272) = OUTLINED_FUNCTION_45();
  v14 = type metadata accessor for ButtonConfigurationModel();
  OUTLINED_FUNCTION_13_2(v14);
  *(v1 + 280) = v15;
  v17 = *(v16 + 64);
  *(v1 + 288) = OUTLINED_FUNCTION_62_4();
  *(v1 + 296) = swift_task_alloc();
  v18 = type metadata accessor for Locale();
  *(v1 + 304) = v18;
  OUTLINED_FUNCTION_13_2(v18);
  *(v1 + 312) = v19;
  v21 = *(v20 + 64);
  *(v1 + 320) = OUTLINED_FUNCTION_45();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v22);
  v24 = *(v23 + 64);
  *(v1 + 328) = OUTLINED_FUNCTION_45();
  v25 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v25, v26, v27);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  v3 = v2;
  OUTLINED_FUNCTION_6();
  *v4 = v3;
  v3[17] = v1;
  v3[18] = v5;
  v3[19] = v0;
  OUTLINED_FUNCTION_69_3();
  v7 = *(v6 + 344);
  v8 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v9 = v8;
  v3[44] = v0;

  if (v0)
  {
    v10 = v3[42];
  }

  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v11, v12, v13);
}

{
  OUTLINED_FUNCTION_27();
  v1 = v0[29];
  v0[47] = v0[18];
  v2 = *(v1 + 176);
  OUTLINED_FUNCTION_2_0();
  v4 = *(v3 + class metadata base offset for PhoneCallDisplayTextCATsSimple + 16);
  OUTLINED_FUNCTION_24_5();
  v11 = (v5 + *v5);
  v7 = *(v6 + 4);
  v8 = swift_task_alloc();
  v0[48] = v8;
  *v8 = v0;
  v9 = OUTLINED_FUNCTION_32_9(v8);

  return v11(v9);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  v3 = v2;
  OUTLINED_FUNCTION_6();
  *v4 = v3;
  v3[20] = v1;
  v3[21] = v5;
  v3[22] = v0;
  OUTLINED_FUNCTION_69_3();
  v7 = *(v6 + 360);
  v8 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v9 = v8;
  v3[46] = v0;

  if (v0)
  {
    v10 = v3[42];
  }

  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v11, v12, v13);
}

{
  OUTLINED_FUNCTION_27();
  v1 = v0[29];
  v0[47] = v0[21];
  v2 = *(v1 + 176);
  OUTLINED_FUNCTION_2_0();
  v4 = *(v3 + class metadata base offset for PhoneCallDisplayTextCATsSimple + 16);
  OUTLINED_FUNCTION_24_5();
  v11 = (v5 + *v5);
  v7 = *(v6 + 4);
  v8 = swift_task_alloc();
  v0[48] = v8;
  *v8 = v0;
  v9 = OUTLINED_FUNCTION_32_9(v8);

  return v11(v9);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  v3 = v2;
  OUTLINED_FUNCTION_6();
  *v4 = v3;
  v6 = *(v5 + 384);
  *v4 = *v1;
  v3[49] = v7;
  v3[50] = v0;

  if (v0)
  {
    v8 = v3[42];
  }

  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v9, v10, v11);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  v2 = v1;
  OUTLINED_FUNCTION_6();
  *v3 = v2;
  v5 = *(v4 + 416);
  v6 = *(v4 + 408);
  v7 = *v0;
  OUTLINED_FUNCTION_4_2();
  *v8 = v7;

  __swift_destroy_boxed_opaque_existential_1((v2 + 96));
  v9 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v9, v10, v11);
}

void CallingIntentUnsupportedValueFlowStrategy.generateOutputForCameraOrMicUnavailable(reason:app:outputManifest:)()
{
  v2 = *(v0 + 312);
  v1 = *(v0 + 320);
  v40 = *(v0 + 304);
  v3 = *(v0 + 232);
  v4 = *(v0 + 216);
  v5 = v3[41];
  v6 = v3[42];
  __swift_project_boxed_opaque_existential_1(v3 + 38, v5);
  v7 = v3[7];
  __swift_project_boxed_opaque_existential_1(v3 + 3, v3[6]);
  v8 = *(v7 + 8);
  v9 = OUTLINED_FUNCTION_2();
  v10(v9);
  v11 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  OUTLINED_FUNCTION_2();
  dispatch thunk of DeviceState.siriLocale.getter();
  (*(v6 + 16))(v4, v1, v5, v6);
  v13 = v12;
  (*(v2 + 8))(v1, v40);
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  if (v13)
  {
    v14 = *(v0 + 328);
    OUTLINED_FUNCTION_53_1();
    OUTLINED_FUNCTION_94();
    v15 = 0;
  }

  else
  {
    v15 = 1;
  }

  v16 = *(v0 + 328);
  v17 = *(v0 + 216);
  v18 = type metadata accessor for SpeakableString();
  v19 = __swift_storeEnumTagSinglePayload(v16, v15, 1, v18);
  *(v0 + 184) = App.settingsUrl.getter(v19);
  *(v0 + 192) = v20;
  *(v0 + 336) = v20;
  v21 = *(v0 + 424);
  v22 = *(*(v0 + 232) + direct field offset for CallingIntentUnsupportedValueFlowStrategy.startCallCatsSimple);
  OUTLINED_FUNCTION_2_0();
  v24 = v23 + class metadata base offset for StartCallCATsSimple;
  if ((v25 & 1) == 0 && *(v0 + 208) == 3)
  {
    v26 = *(v24 + 768);
    OUTLINED_FUNCTION_24_5();
    v41 = v27 + *v27;
    v29 = *(v28 + 4);
    v30 = swift_task_alloc();
    *(v0 + 344) = v30;
    *v30 = v0;
    OUTLINED_FUNCTION_32_9(v30);
    OUTLINED_FUNCTION_15_11();

    __asm { BRAA            X1, X16 }
  }

  v33 = *(v24 + 784);
  OUTLINED_FUNCTION_24_5();
  v42 = v34 + *v34;
  v36 = *(v35 + 4);
  v37 = swift_task_alloc();
  *(v0 + 360) = v37;
  *v37 = v0;
  OUTLINED_FUNCTION_32_9(v37);
  OUTLINED_FUNCTION_15_11();

  __asm { BRAA            X1, X16 }
}

uint64_t CallingIntentUnsupportedValueFlowStrategy.generateOutputForCameraOrMicUnavailable(reason:app:outputManifest:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_75_3();
  OUTLINED_FUNCTION_86_2();
  v19 = [*(v18 + 392) dialog];
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for DialogElement, DialogElement_ptr);
  v20 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (specialized Array.count.getter(v20))
  {
    specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v20 & 0xC000000000000001) == 0, v20);
    if ((v20 & 0xC000000000000001) != 0)
    {
      v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v21 = *(v20 + 32);
    }

    v22 = v21;
    v23 = *(v18 + 184);
    v24 = *(v18 + 288);
    v25 = *(v18 + 296);
    v26 = *(v18 + 280);
    v89 = *(v18 + 272);
    v27 = *(v18 + 264);
    v90 = *(v18 + 256);
    v91 = *(v18 + 376);
    v28 = *(v18 + 232);
    v87 = *(v18 + 336);
    v88 = *(v18 + 224);

    v29 = [v22 fullPrint];

    v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v32 = v31;

    ButtonConfigurationModel.init(label:url:)(v30, v32, v25);
    outlined init with copy of ButtonConfigurationModel(v25, v24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy27PhoneCallFlowDelegatePlugin24ButtonConfigurationModelVGMd, &_ss23_ContiguousArrayStorageCy27PhoneCallFlowDelegatePlugin24ButtonConfigurationModelVGMR);
    v33 = *(v26 + 72);
    v34 = (*(v26 + 80) + 32) & ~*(v26 + 80);
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_424FD0;
    outlined init with take of ButtonConfigurationModel(v24, v35 + v34);
    (*(v27 + 16))(v89, v88, v90);
    OutputGenerationManifest.responseViewId.setter();
    v36 = v28[7];
    __swift_project_boxed_opaque_existential_1(v28 + 3, v28[6]);
    v37 = *(v36 + 136);
    v38 = OUTLINED_FUNCTION_4_3();
    v39(v38);
    v40 = *(v18 + 80);
    v41 = *(v18 + 88);
    OUTLINED_FUNCTION_7_0((v18 + 56));
    *(v18 + 120) = type metadata accessor for PhoneSnippetDataModels();
    OUTLINED_FUNCTION_12_24();
    *(v18 + 128) = _s27PhoneCallFlowDelegatePlugin0A5ErrorOACs0F0AAWlTm_3(v42, v43);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v18 + 96));
    OUTLINED_FUNCTION_77_5(boxed_opaque_existential_1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v45 = OUTLINED_FUNCTION_48_0();
    *(v18 + 408) = v45;
    *(v45 + 16) = xmmword_426260;
    *(v45 + 32) = v91;
    v46 = *(v41 + 8);
    v47 = async function pointer to dispatch thunk of ResponseGenerating.makeResponseOutput(conversationModel:dialog:outputGenerationManifest:)[1];
    v48 = v91;
    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    *(v18 + 416) = v49;
    *v49 = v50;
    v49[1] = CallingIntentUnsupportedValueFlowStrategy.generateOutputForCameraOrMicUnavailable(reason:app:outputManifest:);
    v51 = *(v18 + 272);
    v52 = *(v18 + 200);
    OUTLINED_FUNCTION_50_8();
    OUTLINED_FUNCTION_46_6();

    return dispatch thunk of ResponseGenerating.makeResponseOutput(conversationModel:dialog:outputGenerationManifest:)(v53, v54, v55, v56, v57, v58);
  }

  else
  {
    v60 = *(v18 + 392);
    v61 = *(v18 + 376);
    v62 = *(v18 + 336);
    v64 = *(v18 + 240);
    v63 = *(v18 + 248);

    v65 = [v60 catId];
    v66 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v68 = v67;

    *v63 = v66;
    v63[1] = v68;
    v63[2] = 0xD00000000000004BLL;
    v63[3] = 0x8000000000459300;
    v63[4] = 0xD000000000000043;
    v63[5] = 0x8000000000459520;
    v63[6] = 278;
    OUTLINED_FUNCTION_43_3();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_48();
    _s27PhoneCallFlowDelegatePlugin0A5ErrorOACs0F0AAWlTm_3(v69, v70);
    OUTLINED_FUNCTION_147();
    PhoneError.logged()(v71);
    OUTLINED_FUNCTION_5_23();
    _s27PhoneCallFlowDelegatePlugin0A5ErrorOWOhTm_2(v63, v72);
    swift_willThrow();

    v73 = *(v18 + 320);
    v75 = *(v18 + 288);
    v74 = *(v18 + 296);
    v76 = *(v18 + 272);
    v77 = *(v18 + 248);
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(*(v18 + 328), &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);

    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_46_6();

    return v79(v78, v79, v80, v81, v82, v83, v84, v85, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
  }
}

uint64_t CallingIntentUnsupportedValueFlowStrategy.generateOutputForCameraOrMicUnavailable(reason:app:outputManifest:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_24_1();
  v13 = *(v12 + 376);
  v14 = *(v12 + 320);
  v15 = *(v12 + 328);
  v17 = *(v12 + 288);
  v16 = *(v12 + 296);
  v19 = *(v12 + 264);
  v18 = *(v12 + 272);
  v21 = *(v12 + 248);
  v20 = *(v12 + 256);

  (*(v19 + 8))(v18, v20);
  OUTLINED_FUNCTION_1_2();
  _s27PhoneCallFlowDelegatePlugin0A5ErrorOWOhTm_2(v16, v22);
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v15, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  __swift_destroy_boxed_opaque_existential_1((v12 + 56));

  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_16();

  return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10, a11, a12);
}

uint64_t CallingIntentUnsupportedValueFlowStrategy.generateOutputForCameraOrMicUnavailable(reason:app:outputManifest:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_61_0();
  OUTLINED_FUNCTION_31();
  v11 = v10[44];
  v13 = v10[40];
  v12 = v10[41];
  OUTLINED_FUNCTION_54_10();
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v12, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);

  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_60();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10);
}

{
  OUTLINED_FUNCTION_61_0();
  OUTLINED_FUNCTION_31();
  v11 = v10[46];
  v13 = v10[40];
  v12 = v10[41];
  OUTLINED_FUNCTION_54_10();
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v12, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);

  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_60();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10);
}

{
  OUTLINED_FUNCTION_61_0();
  OUTLINED_FUNCTION_31();

  v11 = *(v10 + 400);
  v13 = *(v10 + 320);
  v12 = *(v10 + 328);
  OUTLINED_FUNCTION_54_10();
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v12, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);

  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_60();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10);
}

uint64_t CallingIntentUnsupportedValueFlowStrategy.makeUpdatedIntentForUnsupportedValue(resolveRecord:)()
{
  OUTLINED_FUNCTION_27();
  v1[6] = v2;
  v1[7] = v0;
  v3 = *v0;
  v4 = type metadata accessor for ParameterIdentifier();
  v1[8] = v4;
  OUTLINED_FUNCTION_13_2(v4);
  v1[9] = v5;
  v7 = *(v6 + 64) + 15;
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  OUTLINED_FUNCTION_49_1();
  v9 = *(v8 + 272);
  v1[12] = v9;
  v10 = *(*(v9 + 8) + 16);
  OUTLINED_FUNCTION_49_1();
  v1[13] = *(v11 + 264);
  v1[14] = swift_getAssociatedTypeWitness();
  v12 = type metadata accessor for ParameterResolutionRecord();
  v1[15] = v12;
  OUTLINED_FUNCTION_13_2(v12);
  v1[16] = v13;
  v15 = *(v14 + 64);
  v1[17] = OUTLINED_FUNCTION_62_4();
  v1[18] = swift_task_alloc();
  v16 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v16, v17, v18);
}

BOOL CallingIntentUnsupportedValueFlowStrategy.shouldClearContactsSlot(resolveRecord:)()
{
  v1 = *(*(*(*v0 + 272) + 8) + 16);
  v2 = *(*v0 + 264);
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_89();
  v3 = ParameterResolutionRecord.result.getter();
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4)
  {
    v5 = [v4 unsupportedReason];

    return v5 == &dword_0 + 2;
  }

  else
  {

    return 0;
  }
}

void CallingIntentUnsupportedValueFlowStrategy.__allocating_init(delegate:startCallCATs:startCallCatPatterns:startCallCATsSimple:phoneCallCommonCATs:phoneCallCommonCATsSimple:phoneCallCommonCatPatterns:phoneCallDisplayTextCATsSimple:responseGenerator:siriKitEventSender:appInfoBuilder:)()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
}

uint64_t *CallingIntentUnsupportedValueFlowStrategy.deinit()
{
  v0 = CallingIntentBaseFlowStrategy.deinit();
  v1 = *(v0 + direct field offset for CallingIntentUnsupportedValueFlowStrategy.startCallCatsSimple);

  return v0;
}

uint64_t CallingIntentUnsupportedValueFlowStrategy.__deallocating_deinit()
{
  v0 = *CallingIntentUnsupportedValueFlowStrategy.deinit();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t protocol witness for UnsupportedValueFlowStrategyAsync.makeUnsupportedValueOutput(resolveRecord:) in conformance CallingIntentUnsupportedValueFlowStrategy<A>(uint64_t a1, uint64_t a2)
{
  v6 = *(**v2 + 296);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = closure #1 in ActionableCallControlFlow.execute();

  return v10(a1, a2);
}

uint64_t protocol witness for UnsupportedValueFlowStrategyAsync.makeUpdatedIntentForUnsupportedValue(resolveRecord:) in conformance CallingIntentUnsupportedValueFlowStrategy<A>(uint64_t a1)
{
  v4 = *(**v1 + 368);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = AddCallParticipantCATs.errorNoTargetCall();

  return v8(a1);
}

uint64_t protocol witness for UnsupportedValueFlowStrategyAsync.makeLaunchAppWithIntentOutput(resolveRecord:) in conformance CallingIntentUnsupportedValueFlowStrategy<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = async function pointer to UnsupportedValueFlowStrategyAsync.makeLaunchAppWithIntentOutput(resolveRecord:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  v11 = *(a3 + 264);
  v12 = *(a3 + 272);
  v13 = type metadata accessor for CallingIntentUnsupportedValueFlowStrategy();
  *v10 = v4;
  v10[1] = closure #2 in ActionableCallControlFlow.execute();

  return UnsupportedValueFlowStrategyAsync.makeLaunchAppWithIntentOutput(resolveRecord:)(a1, a2, v13, a4);
}

uint64_t outlined assign with take of NLContextUpdate?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #1 in closure #2 in CallingIntentUnsupportedValueFlowStrategy.makeUnsupportedValueTemplatingResultOutput(resolveRecord:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy11SiriKitFlow16TemplatingResultVs5Error_pGMd, &_sScCy11SiriKitFlow16TemplatingResultVs5Error_pGMR);
  OUTLINED_FUNCTION_21(v2);
  v4 = *(v3 + 80);

  return closure #1 in closure #2 in CallingIntentUnsupportedValueFlowStrategy.makeUnsupportedValueTemplatingResultOutput(resolveRecord:)(a1);
}

uint64_t OUTLINED_FUNCTION_29_14(uint64_t a1)
{
  *(a1 + 8) = CallingIntentUnsupportedValueFlowStrategy.makeUnsupportedValueTemplatingResultOutput(resolveRecord:);
  result = *(v1 + 192);
  v3 = *(v1 + 176);
  return result;
}

void OUTLINED_FUNCTION_54_10()
{
  v2 = v0[36];
  v1 = v0[37];
  v3 = v0[34];
  v4 = v0[31];
}

uint64_t OUTLINED_FUNCTION_55_8()
{
  v1 = v0[19];
  v2 = *(v0[20] + 8);
  return v0[21];
}

uint64_t OUTLINED_FUNCTION_64_3()
{
  v3 = v0[13];
  v2 = v0[14];
  v4 = v0[12];
  v5 = v0[9];
  v6 = v0[6];
}

uint64_t OUTLINED_FUNCTION_65_5@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);

  return getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000034, a1 | 0x8000000000000000, va);
}

uint64_t OUTLINED_FUNCTION_72_2()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_77_5(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = 1;

  return swift_storeEnumTagMultiPayload();
}

uint64_t OUTLINED_FUNCTION_78_4()
{
  v2 = v0[35];
  v4 = v0[31];
  v3 = v0[32];
  v6 = v0[27];
  v5 = v0[28];
}

uint64_t OUTLINED_FUNCTION_88_1()
{
  v3 = v0[13];
  v2 = v0[14];
  v4 = v0[12];
  v5 = v0[9];
  v6 = v0[6];
}

uint64_t OUTLINED_FUNCTION_91_2(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1, v2, 1, a1);
}

uint64_t CallNotificationContextProvider.update(aceServiceInvoker:refId:applicationId:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = a3;
  v4[10] = v3;
  v4[8] = a2;
  v5 = swift_task_alloc();
  v4[11] = v5;
  *v5 = v4;
  v5[1] = CallNotificationContextProvider.update(aceServiceInvoker:refId:applicationId:);

  return CallNotificationContextProvider.submitNotificationsSearch(aceServiceInvoker:applicationId:)();
}

uint64_t CallNotificationContextProvider.update(aceServiceInvoker:refId:applicationId:)()
{
  OUTLINED_FUNCTION_15();
  v1 = *(*v0 + 88);
  v4 = *v0;
  *(*v0 + 96) = v2;

  return _swift_task_switch(CallNotificationContextProvider.update(aceServiceInvoker:refId:applicationId:), 0, 0);
}

{
  v1 = specialized BidirectionalCollection.last.getter(v0[12]);
  if (!v1)
  {
    v13 = v0[12];
    goto LABEL_6;
  }

  v2 = v0[9];
  v3 = *(v0[10] + 16);
  v0[6] = v0[8];
  v0[7] = v2;
  v4 = v1;

  result = outlined bridged method (ob) of @objc SANotificationObject.applicationId.getter(v4);
  if (!v6)
  {
    __break(1u);
    goto LABEL_10;
  }

  v7 = result;
  v8 = v6;
  result = outlined bridged method (ob) of @objc SANotificationObject.notificationId.getter(v4);
  if (!v9)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v10 = result;
  v11 = v9;
  v12 = v0[12];

  v0[2] = v7;
  v0[3] = v8;
  v0[4] = v10;
  v0[5] = v11;
  (*(*v3 + 184))(v0 + 6, v0 + 2);

LABEL_6:

  v14 = v0[1];

  return v14();
}

Swift::Bool __swiftcall CallNotificationContextProvider.hasCallNotification(for:)(Swift::String a1)
{
  OUTLINED_FUNCTION_2_36();
  v2 = *(v1 + 176);

  v2(&v6, &v5);

  v3 = v7;
  if (v7)
  {
    outlined consume of CallNotificationContextProvider.CallNotification?(v6, v7);
  }

  return v3 != 0;
}

Swift::String __swiftcall CallNotificationContextProvider.getCallNotificationApplicationId(for:)(Swift::String a1)
{
  OUTLINED_FUNCTION_2_36();
  v2 = *(v1 + 176);

  v2(v19, &v18);

  if (v19[1])
  {
  }

  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Logger.siriPhone);

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = OUTLINED_FUNCTION_86_1();
    v19[0] = swift_slowAlloc();
    *v6 = 136315394;
    v7 = OUTLINED_FUNCTION_20_0();
    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v8, v9);
    *(v6 + 14) = OUTLINED_FUNCTION_6_25(v10, v11, v12);
    OUTLINED_FUNCTION_4_17(&dword_0, v13, v14, "#CallNotificationContextProvider returned applicationId %s for refId %s");
    swift_arrayDestroy();
    OUTLINED_FUNCTION_26_0();
    OUTLINED_FUNCTION_5_7();
  }

  v15 = OUTLINED_FUNCTION_20_0();
  result._object = v16;
  result._countAndFlagsBits = v15;
  return result;
}

Swift::String __swiftcall CallNotificationContextProvider.getCallNotificationCallId(for:)(Swift::String a1)
{
  OUTLINED_FUNCTION_2_36();
  v2 = *(v1 + 176);

  v2(v19, &v18);

  if (v19[1])
  {
  }

  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Logger.siriPhone);

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = OUTLINED_FUNCTION_86_1();
    v19[0] = swift_slowAlloc();
    *v6 = 136315394;
    v7 = OUTLINED_FUNCTION_20_0();
    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v8, v9);
    *(v6 + 14) = OUTLINED_FUNCTION_6_25(v10, v11, v12);
    OUTLINED_FUNCTION_4_17(&dword_0, v13, v14, "#CallNotificationContextProvider returned callId %s for refId %s");
    swift_arrayDestroy();
    OUTLINED_FUNCTION_26_0();
    OUTLINED_FUNCTION_5_7();
  }

  v15 = OUTLINED_FUNCTION_20_0();
  result._object = v16;
  result._countAndFlagsBits = v15;
  return result;
}

uint64_t CallNotificationContextProvider.submitNotificationsSearch(aceServiceInvoker:applicationId:)()
{
  OUTLINED_FUNCTION_15();
  v0[4] = v1;
  v0[5] = v2;
  v0[3] = v3;
  v4 = type metadata accessor for Date();
  v0[6] = v4;
  v5 = *(v4 - 8);
  v0[7] = v5;
  v6 = *(v5 + 64) + 15;
  v0[8] = swift_task_alloc();
  v0[9] = swift_task_alloc();

  return _swift_task_switch(CallNotificationContextProvider.submitNotificationsSearch(aceServiceInvoker:applicationId:), 0, 0);
}

{
  v1 = v0[5];
  v2 = [objc_allocWithZone(SANotificationsSearch) init];
  v0[10] = v2;
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for NSNumber, NSNumber_ptr);
  isa = NSNumber.init(BOOLeanLiteral:)(1).super.super.isa;
  [v2 setIsOnDeviceSearch:isa];

  if (v1)
  {
    v5 = v0[4];
    v4 = v0[5];
    v6 = v2;
    v7 = String._bridgeToObjectiveC()();
  }

  else
  {
    v8 = v2;
    v7 = 0;
  }

  v9 = v0[3];
  [v2 setAppId:v7];

  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  outlined bridged method (mbnn) of @objc SANotificationsSearch.notificationType.setter(v10, v11, v2);
  v12 = v9[3];
  v13 = v9[4];
  __swift_project_boxed_opaque_existential_1(v9, v12);
  v14 = async function pointer to AceServiceInvokerAsync.submit<A>(_:)[1];
  v15 = swift_task_alloc();
  v0[11] = v15;
  v16 = type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SAOnDeviceNotificationsSearchCompleted, SAOnDeviceNotificationsSearchCompleted_ptr);
  *v15 = v0;
  v15[1] = CallNotificationContextProvider.submitNotificationsSearch(aceServiceInvoker:applicationId:);

  return AceServiceInvokerAsync.submit<A>(_:)(v2, v12, v16, v13);
}

{
  OUTLINED_FUNCTION_15();
  v2 = *v1;
  v3 = *(*v1 + 88);
  v7 = *v1;
  *(v2 + 96) = v4;
  *(v2 + 104) = v0;

  if (v0)
  {
    v5 = CallNotificationContextProvider.submitNotificationsSearch(aceServiceInvoker:applicationId:);
  }

  else
  {
    v5 = CallNotificationContextProvider.submitNotificationsSearch(aceServiceInvoker:applicationId:);
  }

  return _swift_task_switch(v5, 0, 0);
}

id CallNotificationContextProvider.submitNotificationsSearch(aceServiceInvoker:applicationId:)()
{
  v39 = v0;
  v1 = v0;
  result = outlined bridged method (pb) of @objc SAOnDeviceNotificationsSearchCompleted.notifications.getter(*(v0 + 96));
  if (result)
  {
    v3 = result;

    v35 = *(v1 + 104);
    v4 = *(v1 + 56);
    v38 = _swiftEmptyArrayStorage;
    v5 = specialized Array.count.getter(v3);
    v6 = 0;
    v7 = v3 & 0xFFFFFFFFFFFFFF8;
    v36 = (v4 + 8);
    v37 = v1;
    while (v5 != v6)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v6 >= *(v7 + 16))
        {
          goto LABEL_30;
        }

        v8 = *(v3 + 8 * v6 + 32);
      }

      v9 = v8;
      if (__OFADD__(v6, 1))
      {
        __break(1u);
LABEL_30:
        __break(1u);
        goto LABEL_31;
      }

      outlined bridged method (pb) of @objc SANotificationObject.applicationId.getter(v8);
      if (v10 && (, (v11 = [v9 notificationId]) != 0))
      {
        v12 = *(v1 + 72);

        static Date.now.getter();
        result = [v9 date];
        if (!result)
        {
          __break(1u);
          goto LABEL_33;
        }

        v13 = result;
        v15 = *(v1 + 64);
        v14 = *(v1 + 72);
        v16 = *(v1 + 48);
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        Date.timeIntervalSince(_:)();
        v18 = v17;
        v19 = *v36;
        (*v36)(v14, v16);
        v19(v15, v16);
        if (v18 <= 30.0)
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          v20 = v38[2];
          OUTLINED_FUNCTION_8_27();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          OUTLINED_FUNCTION_8_27();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
        }

        else
        {
        }

        v1 = v37;
        v7 = v3 & 0xFFFFFFFFFFFFFF8;
      }

      else
      {
      }

      ++v6;
    }

    v5 = v38;
    if (one-time initialization token for siriPhone == -1)
    {
      goto LABEL_19;
    }

LABEL_31:
    OUTLINED_FUNCTION_6_2();
LABEL_19:
    v21 = type metadata accessor for Logger();
    __swift_project_value_buffer(v21, static Logger.siriPhone);
    OUTLINED_FUNCTION_10_24();
    swift_retain_n();

    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = OUTLINED_FUNCTION_86_1();
      *v24 = 134218240;
      v25 = specialized Array.count.getter(v3);

      *(v24 + 4) = v25;

      *(v24 + 12) = 2048;
      v26 = specialized Array.count.getter(v5);

      *(v24 + 14) = v26;

      OUTLINED_FUNCTION_4_17(&dword_0, v27, v28, "#CallNotificationContextProvider search returned %ld notifications, and %ld after filtering");
      OUTLINED_FUNCTION_5_7();
    }

    else
    {
      OUTLINED_FUNCTION_10_24();

      swift_bridgeObjectRelease_n();
    }

    v38 = specialized Array._copyToContiguousArray()();
    specialized MutableCollection<>.sort(by:)(&v38);
    if (!v35)
    {
      v30 = *(v1 + 72);
      v31 = *(v1 + 80);
      v32 = *(v1 + 64);

      OUTLINED_FUNCTION_12_25();
      OUTLINED_FUNCTION_3_28();

      __asm { BRAA            X2, X16 }
    }

    OUTLINED_FUNCTION_3_28();
  }

  else
  {
LABEL_33:
    __break(1u);
  }

  return result;
}

{
  v45 = v0;
  v1 = v0;
  if (one-time initialization token for siriPhone != -1)
  {
LABEL_31:
    OUTLINED_FUNCTION_6_2();
  }

  v2 = v1[13];
  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Logger.siriPhone);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v1[13];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v44[0] = v9;
    *v8 = 136315138;
    v1[2] = v7;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v10 = String.init<A>(describing:)();
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, v44);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_0, v4, v5, "#CallNotificationContextProvider encountered error submitting SANotificationsSearch: %s.", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    OUTLINED_FUNCTION_5_7();
    OUTLINED_FUNCTION_26_0();
  }

  else
  {
  }

  v13 = v1[7];
  v44[0] = _swiftEmptyArrayStorage;
  v14 = specialized Array.count.getter(_swiftEmptyArrayStorage);
  v15 = 0;
  v42 = v1;
  v43 = (v13 + 8);
  v16 = _swiftEmptyArrayStorage >> 62;
  while (1)
  {
    if (v14 == v15)
    {
      v31 = v44[0];
      if (one-time initialization token for siriPhone != -1)
      {
        OUTLINED_FUNCTION_6_2();
      }

      __swift_project_value_buffer(v3, static Logger.siriPhone);
      OUTLINED_FUNCTION_10_24();
      swift_retain_n();

      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = OUTLINED_FUNCTION_86_1();
        *v34 = 134218240;
        v35 = specialized Array.count.getter(_swiftEmptyArrayStorage);

        *(v34 + 4) = v35;

        *(v34 + 12) = 2048;
        v36 = specialized Array.count.getter(v31);

        *(v34 + 14) = v36;

        _os_log_impl(&dword_0, v32, v33, "#CallNotificationContextProvider search returned %ld notifications, and %ld after filtering", v34, 0x16u);
        OUTLINED_FUNCTION_26_0();
      }

      else
      {
        OUTLINED_FUNCTION_10_24();

        swift_bridgeObjectRelease_n();
      }

      v44[0] = specialized Array._copyToContiguousArray()();
      specialized MutableCollection<>.sort(by:)(v44);
      v37 = v1[9];
      v38 = v1[10];
      v39 = v1[8];

      OUTLINED_FUNCTION_12_25();
      OUTLINED_FUNCTION_3_28();

      __asm { BRAA            X2, X16 }
    }

    if (v16)
    {
      v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v15 >= *(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_30;
      }

      v17 = _swiftEmptyArrayStorage[v15 + 4];
    }

    v18 = v17;
    if (__OFADD__(v15, 1))
    {
      __break(1u);
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    outlined bridged method (pb) of @objc SANotificationObject.applicationId.getter(v17);
    if (!v19 || (, (v20 = [v18 notificationId]) == 0))
    {

      goto LABEL_19;
    }

    v21 = v1[9];

    static Date.now.getter();
    result = [v18 date];
    if (!result)
    {
      break;
    }

    v23 = result;
    v25 = v1[8];
    v24 = v1[9];
    v26 = v1[6];
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    Date.timeIntervalSince(_:)();
    v28 = v27;
    v29 = *v43;
    (*v43)(v24, v26);
    v29(v25, v26);
    if (v28 <= 30.0)
    {
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v30 = *(v44[0] + 16);
      OUTLINED_FUNCTION_8_27();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      OUTLINED_FUNCTION_8_27();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    else
    {
    }

    v16 = _swiftEmptyArrayStorage >> 62;
    v1 = v42;
LABEL_19:
    ++v15;
  }

  __break(1u);
  return result;
}

uint64_t CallNotificationContextProvider.__allocating_init()()
{
  v0 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin21DictionaryBackedCacheCySSAA0B27NotificationContextProviderC0bI0VGMd, &_s27PhoneCallFlowDelegatePlugin21DictionaryBackedCacheCySSAA0B27NotificationContextProviderC0bI0VGMR);
  swift_allocObject();
  *(v0 + 16) = OUTLINED_FUNCTION_1_44();
  return v0;
}

uint64_t CallNotificationContextProvider.init()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin21DictionaryBackedCacheCySSAA0B27NotificationContextProviderC0bI0VGMd, &_s27PhoneCallFlowDelegatePlugin21DictionaryBackedCacheCySSAA0B27NotificationContextProviderC0bI0VGMR);
  swift_allocObject();
  *(v0 + 16) = OUTLINED_FUNCTION_1_44();
  return v0;
}

uint64_t protocol witness for CallNotificationContextProviding.update(aceServiceInvoker:refId:applicationId:) in conformance CallNotificationContextProvider(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = *(**v5 + 112);
  v16 = (v12 + *v12);
  v13 = v12[1];
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  *v14 = v6;
  v14[1] = protocol witness for Flow.execute() in conformance AppResolutionBeforeResolveFlow;

  return v16(a1, a2, a3, a4, a5);
}

uint64_t outlined bridged method (pb) of @objc SAOnDeviceNotificationsSearchCompleted.notifications.getter(void *a1)
{
  v1 = [a1 notifications];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SANotificationOnDeviceObject, SANotificationOnDeviceObject_ptr);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

void outlined bridged method (mbnn) of @objc SANotificationsSearch.notificationType.setter(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = String._bridgeToObjectiveC()();

  [a3 setNotificationType:v4];
}

uint64_t outlined bridged method (ob) of @objc SANotificationObject.applicationId.getter(void *a1)
{
  v2 = [a1 applicationId];

  if (!v2)
  {
    return 0;
  }

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t outlined consume of CallNotificationContextProvider.CallNotification?(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t outlined bridged method (pb) of @objc SANotificationObject.applicationId.getter(void *a1)
{
  v1 = [a1 applicationId];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t CallRecordDisplayTextComponents.init(callRecord:deviceState:phoneCallDisplayTextCats:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = a1;
  result = outlined init with take of PhoneCallFeatureFlagProviding(a2, a4 + 1);
  a4[6] = a3;
  return result;
}

uint64_t CallRecordDisplayTextComponents.callerNameText.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1);
  v4 = (v21 - v3);
  v5 = type metadata accessor for TemplatingResult();
  v6 = OUTLINED_FUNCTION_7(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6);
  OUTLINED_FUNCTION_4();
  v13 = v12 - v11;
  v14 = [*v0 caller];
  if (!v14)
  {
    (*(**(v0 + 48) + class metadata base offset for PhoneCallDisplayTextCATs + 632))();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v21[1] = *v4;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      swift_willThrowTypedImpl();
    }

    else
    {
      (*(v8 + 32))(v13, v4, v5);
      v18 = TemplatingResult.print.getter();
      (*(v8 + 8))(v13, v5);
      if (v18[2])
      {
        v17 = v18[4];
        v19 = v18[5];

        return v17;
      }
    }

    return 0;
  }

  v15 = v14;
  v16 = [v14 displayName];

  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v17;
}

uint64_t CallRecordDisplayTextComponents.callerHandleLabelText.getter()
{
  v1 = type metadata accessor for Locale();
  v2 = OUTLINED_FUNCTION_7(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  __chkstk_darwin(v2);
  OUTLINED_FUNCTION_4();
  v9 = v8 - v7;
  v10 = [*v0 caller];
  if (!v10)
  {
    return 0;
  }

  v11 = v10;
  v12 = [v10 personHandle];

  if (!v12)
  {
    return 0;
  }

  v13 = [v12 label];

  if (!v13)
  {
    return 0;
  }

  v14 = *(v0 + 40);
  __swift_project_boxed_opaque_existential_1((v0 + 8), *(v0 + 32));
  dispatch thunk of DeviceState.siriLocale.getter();
  Locale.identifier.getter();
  lazy protocol witness table accessor for type String and conformance String();
  StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  (*(v4 + 8))(v9, v1);

  v15 = static LabelMappingUtil.translateINPersonHandleLabel(_:languageCode:)();

  return v15;
}

uint64_t CallRecordDisplayTextComponents.callDateText.getter()
{
  v1 = type metadata accessor for Locale();
  v2 = OUTLINED_FUNCTION_7(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  __chkstk_darwin(v2);
  OUTLINED_FUNCTION_4();
  v9 = v8 - v7;
  v10 = type metadata accessor for Date();
  v11 = OUTLINED_FUNCTION_7(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  __chkstk_darwin(v11);
  OUTLINED_FUNCTION_4();
  v18 = v17 - v16;
  v19 = [*v0 dateCreated];
  if (!v19)
  {
    return 0;
  }

  v20 = v19;
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  v21 = [objc_allocWithZone(NSDateFormatter) init];
  v22 = *(v0 + 40);
  __swift_project_boxed_opaque_existential_1((v0 + 8), *(v0 + 32));
  dispatch thunk of DeviceState.siriLocale.getter();
  isa = Locale._bridgeToObjectiveC()().super.isa;
  (*(v4 + 8))(v9, v1);
  [v21 setLocale:isa];

  [v21 setDateStyle:1];
  v24 = Date._bridgeToObjectiveC()().super.isa;
  v25 = [v21 stringFromDate:v24];

  v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v28 = v27;

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
    v33 = swift_slowAlloc();
    v35 = v33;
    *v32 = 136315138;
    *(v32 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v28, &v35);
    _os_log_impl(&dword_0, v30, v31, "formattedDate: %s", v32, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v33);
  }

  (*(v13 + 8))(v18, v10);
  return v26;
}

uint64_t CallRecordDisplayTextComponents.callDurationText.getter()
{
  v1 = *v0;
  v2 = INCallRecord.callDuration.getter();
  if (v3)
  {
    return 0;
  }

  v4 = *&v2;
  v5 = [objc_allocWithZone(NSDateComponentsFormatter) init];
  [v5 setUnitsStyle:0];
  [v5 setAllowedUnits:192];
  [v5 setZeroFormattingBehavior:0x10000];
  v6 = [v5 stringFromTimeInterval:ceil(v4)];
  if (!v6)
  {

    return 0;
  }

  v7 = v6;
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  v9._countAndFlagsBits = 48;
  v9._object = 0xE100000000000000;
  LOBYTE(v7) = String.hasPrefix(_:)(v9);

  if (v7)
  {
    specialized Collection.dropFirst(_:)(1uLL);
    v8 = static String._fromSubstring(_:)();
  }

  return v8;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for CallRecordDisplayTextComponents(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
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

uint64_t storeEnumTagSinglePayload for CallRecordDisplayTextComponents(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

void *CallRecordTableSnippetBuilder.makeItemGroup()()
{
  v1 = v0;
  v2 = v0[2];
  v3 = [v2 callRecords];
  if (!v3)
  {
    return _swiftEmptyArrayStorage;
  }

  v4 = v3;
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INCallRecord, INCallRecord_ptr);
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v6 = specialized Array.count.getter(v5);

  if (!v6)
  {
    return _swiftEmptyArrayStorage;
  }

  v7 = [v2 callRecords];
  if (!v7)
  {
    return _swiftEmptyArrayStorage;
  }

  v8 = v7;
  v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v10 = [objc_allocWithZone(SASTApplicationBannerItem) init];
  v11 = *v0;
  App.appIdentifier.getter();
  if (v12)
  {
    v13 = String._bridgeToObjectiveC()();
  }

  else
  {
    v13 = 0;
  }

  [v10 setBundleId:v13];

  __chkstk_darwin(v15);
  v23[2] = v1;
  v16 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSaySo19_HKEmergencyContactCG_So8INPersonCs5NeverOTg5(partial apply for closure #1 in CallRecordTableSnippetBuilder.makeItemGroup(), v23, v9);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v17 = swift_allocObject();
  v24 = xmmword_426260;
  *(v17 + 16) = xmmword_426260;
  *(v17 + 32) = v10;
  v18 = v10;

  if (v16 >> 62)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16SASTTemplateItem_pMd, &_sSo16SASTTemplateItem_pMR);
    v19 = _bridgeCocoaArray<A>(_:)();
  }

  else
  {
    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    v19 = v16;
  }

  v25 = v17;
  specialized Array.append<A>(contentsOf:)(v19);
  v20 = v25;
  v21 = [objc_allocWithZone(SASTItemGroup) init];
  outlined bridged method (mbnn) of @objc SASTItemGroup.templateItems.setter(v20, v21);
  v14 = swift_allocObject();
  *(v14 + 16) = v24;
  *(v14 + 32) = v21;

  return v14;
}

uint64_t CallRecordTableSnippetBuilder.makeViewsForWatch(utteranceViews:_:)(uint64_t a1, void (*a2)(uint64_t, void), uint64_t a3, uint64_t (*a4)(void))
{
  v5 = a4();
  a2(v5, 0);
}

void *CallRecordTableSnippetBuilder.makeCardSnippet()()
{
  v1 = v0;
  v2 = type metadata accessor for CATOption();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v4 = v0[2];
  v5 = [v4 callRecords];
  if (!v5)
  {
    return _swiftEmptyArrayStorage;
  }

  v6 = v5;
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INCallRecord, INCallRecord_ptr);
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v8 = specialized Array.count.getter(v7);

  if (!v8)
  {
    return _swiftEmptyArrayStorage;
  }

  v9 = [v4 callRecords];
  if (!v9)
  {
    return _swiftEmptyArrayStorage;
  }

  v10 = v9;
  v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v12 = *v0;
  if (App.isFirstParty()())
  {

    type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SACardSnippet, SACardSnippet_ptr);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_426260;
    *(v13 + 32) = static CasinoFactory.makePlaceholderCardSection()();
    v14 = v0[1];
    v15 = static SACardSnippet.makeFromCardSectionsWithIntentData(cardSections:intent:intentResponse:shouldGenerateAceId:)();
  }

  else
  {
    v17 = v0[7];
    __swift_project_boxed_opaque_existential_1(v0 + 3, v0[6]);
    v18 = OUTLINED_FUNCTION_0_35();
    v19(v18, v17);
    type metadata accessor for PhoneCallDisplayTextCATs();
    type metadata accessor for CATGlobals();
    v20 = v0[6];
    v21 = v0[7];
    __swift_project_boxed_opaque_existential_1(v0 + 3, v20);
    (*(v21 + 8))(v36, v20, v21);
    CATGlobals.__allocating_init(device:)();
    static CATOption.defaultMode.getter();
    v37[5] = CATWrapper.__allocating_init(options:globals:)();
    SCHRowCardSectionComponentsFactory.getRowCardSectionComponents(callRecords:)(v11);
    v23 = v22;

    outlined destroy of SCHRowCardSectionComponentsFactory(v37);
    v15 = Array<A>.toCardSnippet()(v23);
  }

  v24 = v15;

  v25 = v1[1];
  v26 = v1[6];
  v27 = v1[7];
  __swift_project_boxed_opaque_existential_1(v1 + 3, v26);
  v28 = *(v27 + 8);
  v29 = v24;
  v28(v37, v26, v27);
  v30 = static UserFacingCallingAppUtils.getCommAppForLaunch(originalApp:preferredCallProvider:deviceState:)(v12, [v25 preferredCallProvider], v37);
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SAUISash, SAUISash_ptr);
  v31 = SAUISash.init(app:)(v30);
  __swift_destroy_boxed_opaque_existential_1(v37);
  [v29 setSash:v31];

  type metadata accessor for SiriKitAceViewBuilder();
  v32 = v1[7];
  __swift_project_boxed_opaque_existential_1(v1 + 3, v1[6]);
  v33 = OUTLINED_FUNCTION_0_35();
  v34(v33, v32);
  dispatch thunk of static SiriKitAceViewBuilder.makeBuilder(deviceState:)();
  __swift_destroy_boxed_opaque_existential_1(v37);
  dispatch thunk of SiriKitAceViewBuilder.addSnippet(snippet:)();

  v16 = dispatch thunk of SiriKitAceViewBuilder.build()();

  return v16;
}

uint64_t closure #1 in CallRecordTableSnippetBuilder.makeItemGroup()@<X0>(void **a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v5 = type metadata accessor for CATOption();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v7 = *a1;
  v8 = a2[6];
  v9 = a2[7];
  __swift_project_boxed_opaque_existential_1(a2 + 3, v8);
  v10 = *(v9 + 8);
  v11 = v7;
  v10(v21, v8, v9);
  type metadata accessor for PhoneCallDisplayTextCATs();
  type metadata accessor for CATGlobals();
  v13 = a2[6];
  v12 = a2[7];
  __swift_project_boxed_opaque_existential_1(a2 + 3, v13);
  (*(v12 + 8))(v19, v13, v12);
  CATGlobals.__allocating_init(device:)();
  static CATOption.defaultMode.getter();
  v14 = CATWrapper.__allocating_init(options:globals:)();
  v20[0] = v11;
  v20[1] = v11;
  v21[5] = v14;
  v15 = v11;
  v16 = SCHCardItemComponents.toCardItem()();
  result = outlined destroy of SCHCardItemComponents(v20);
  *a3 = v16;
  return result;
}

uint64_t CallRecordTableSnippetBuilder.init(app:intent:intentResponse:sharedGlobals:appInfoBuilder:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, void *a6@<X8>)
{
  *a6 = a1;
  a6[1] = a2;
  a6[2] = a3;
  outlined init with take of SPHConversation(a4, (a6 + 3));

  return outlined init with take of SPHConversation(a5, (a6 + 8));
}

uint64_t getEnumTagSinglePayload for CallRecordTableSnippetBuilder(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 104))
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

uint64_t storeEnumTagSinglePayload for CallRecordTableSnippetBuilder(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t CallRecordToCallBackSlotTemplating.makeParameterPromptDialog(app:parameterName:intent:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t))
{
  v7 = type metadata accessor for PhoneError();
  v8 = OUTLINED_FUNCTION_23_1(v7);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  OUTLINED_FUNCTION_4();
  v13 = v12 - v11;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
  v15 = OUTLINED_FUNCTION_23_1(v14);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  OUTLINED_FUNCTION_1_45();
  OUTLINED_FUNCTION_3_29(v18);
  lazy protocol witness table accessor for type PhoneError and conformance PhoneError();
  OUTLINED_FUNCTION_4_18();
  OUTLINED_FUNCTION_6_26();
  PhoneError.logged()(v7);
  outlined destroy of PhoneError(v13);
  OUTLINED_FUNCTION_5_25();
  a5(v5);
  return outlined destroy of Result<TemplatingResult, Error>(v5);
}

uint64_t outlined destroy of Result<TemplatingResult, Error>(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t CallRecordToCallBackSlotTemplating.makeParameterValueConfirmationDialog(app:parameterName:intentResolutionResult:intent:inferenceSource:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t))
{
  v9 = type metadata accessor for PhoneError();
  v10 = OUTLINED_FUNCTION_23_1(v9);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  OUTLINED_FUNCTION_4();
  v15 = v14 - v13;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
  v17 = OUTLINED_FUNCTION_23_1(v16);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  OUTLINED_FUNCTION_1_45();
  OUTLINED_FUNCTION_3_29(v20);
  lazy protocol witness table accessor for type PhoneError and conformance PhoneError();
  OUTLINED_FUNCTION_4_18();
  OUTLINED_FUNCTION_6_26();
  PhoneError.logged()(v9);
  outlined destroy of PhoneError(v15);
  OUTLINED_FUNCTION_5_25();
  a7(v7);
  return outlined destroy of Result<TemplatingResult, Error>(v7);
}

uint64_t CallRecordToCallBackSlotTemplating.makeParameterValueDisambiguationDialog(app:parameterName:intentResolutionResult:disambiguationList:deviceIsLocked:intent:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(uint64_t))
{
  v10 = type metadata accessor for PhoneError();
  v11 = OUTLINED_FUNCTION_23_1(v10);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  OUTLINED_FUNCTION_4();
  v16 = v15 - v14;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
  v18 = OUTLINED_FUNCTION_23_1(v17);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  OUTLINED_FUNCTION_1_45();
  OUTLINED_FUNCTION_3_29(v21);
  lazy protocol witness table accessor for type PhoneError and conformance PhoneError();
  OUTLINED_FUNCTION_4_18();
  OUTLINED_FUNCTION_6_26();
  PhoneError.logged()(v10);
  outlined destroy of PhoneError(v16);
  OUTLINED_FUNCTION_5_25();
  a8(v8);
  return outlined destroy of Result<TemplatingResult, Error>(v8);
}

uint64_t CallRecordToCallBackSlotTemplating.makeParameterValueUnsupportedDialog(app:parameterName:intentResolutionResult:intent:multicardinalValueIndex:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = *(v9 + 40);
  v12 = swift_allocObject();
  *(v12 + 16) = a8;
  *(v12 + 24) = a9;
  v13 = *(*v11 + class metadata base offset for StartCallCATs + 1728);

  v13(partial apply for closure #1 in CallRecordToCallBackSlotTemplating.makeParameterValueUnsupportedDialog(app:parameterName:intentResolutionResult:intent:multicardinalValueIndex:_:), v12);
}

uint64_t closure #1 in CallRecordToCallBackSlotTemplating.makeParameterValueUnsupportedDialog(app:parameterName:intentResolutionResult:intent:multicardinalValueIndex:_:)(uint64_t a1, void (*a2)(void *), uint64_t a3)
{
  v6 = type metadata accessor for BehaviorAfterSpeaking();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  OUTLINED_FUNCTION_4();
  v8 = type metadata accessor for TemplatingResult();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  OUTLINED_FUNCTION_4();
  v13 = v12 - v11;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
  v15 = OUTLINED_FUNCTION_23_1(v14);
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(v15);
  v20 = (v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v18);
  v22 = (v24 - v21);
  outlined init with copy of Result<TemplatingResult, Error>(a1, v20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    *v22 = *v20;
  }

  else
  {
    (*(v9 + 32))(v13, v20, v8);
    v24[1] = a3;
    TemplatingResult.speak.getter();
    TemplatingResult.print.getter();
    TemplatingResult.behaviorAfterSpeaking.getter();
    TemplatingResult.dialogIdentifier.getter();
    TemplatingResult.init(templateIdentifier:speak:print:behaviorAfterSpeaking:dialogIdentifier:)();
    (*(v9 + 8))(v13, v8);
  }

  swift_storeEnumTagMultiPayload();
  a2(v22);
  return outlined destroy of Result<TemplatingResult, Error>(v22);
}

uint64_t static CallRecordViewUtils.generatedDisplayName(searchCallHistoryCATs:callRecord:)@<X0>(uint64_t a1@<X8>)
{
  v5 = OUTLINED_FUNCTION_16_22(a1);
  v6 = OUTLINED_FUNCTION_23_1(v5);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  OUTLINED_FUNCTION_9_24();
  v9 = OUTLINED_FUNCTION_13_17();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(v9, v10);
  v12 = OUTLINED_FUNCTION_23_1(v11);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  OUTLINED_FUNCTION_12_5();
  v17 = v15 - v16;
  __chkstk_darwin(v18);
  OUTLINED_FUNCTION_6_27();
  (*(*v1 + class metadata base offset for SearchCallHistoryCATs + 56))(v4);
  OUTLINED_FUNCTION_15_22();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_17_13(v17);
    OUTLINED_FUNCTION_27_2();
    *v3 = 0xD00000000000002CLL;
    v3[1] = v19;
    v3[2] = 0xD000000000000035;
    v3[3] = 0x8000000000459670;
    OUTLINED_FUNCTION_27_2();
    v3[4] = v20 + 11;
    v3[5] = v21;
    OUTLINED_FUNCTION_12_26(22);
    lazy protocol witness table accessor for type PhoneError and conformance PhoneError();
    OUTLINED_FUNCTION_14_21();
    PhoneError.logged()(v22);
    outlined destroy of PhoneError(v3);
    swift_willThrow();
    return OUTLINED_FUNCTION_17_13(v2);
  }

  else
  {
    Result<>.firstPrint.getter();
    if (v24)
    {
      String.toSpeakableString.getter();
    }

    v25 = OUTLINED_FUNCTION_5_26();
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v25, v26, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
    v27 = type metadata accessor for SpeakableString();
    return OUTLINED_FUNCTION_10_25(v27);
  }
}

uint64_t static CallRecordViewUtils.generatedDisplayName(searchCallHistoryCATsSimple:callRecord:)(void *a1, uint64_t a2)
{
  v4 = *(*a1 + class metadata base offset for SearchCallHistoryCATsSimple + 16);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = static CallRecordViewUtils.generatedDisplayName(searchCallHistoryCATsSimple:callRecord:);

  return v8(a2);
}

uint64_t static CallRecordViewUtils.generatedDisplayName(searchCallHistoryCATsSimple:callRecord:)(uint64_t a1)
{
  v3 = *(*v2 + 16);
  v4 = *v2;
  *(v4 + 24) = a1;

  if (v1)
  {
    v5 = *(v4 + 8);

    return v5();
  }

  else
  {

    return _swift_task_switch(static CallRecordViewUtils.generatedDisplayName(searchCallHistoryCATsSimple:callRecord:), 0, 0);
  }
}

uint64_t static CallRecordViewUtils.generatedDisplayName(searchCallHistoryCATsSimple:callRecord:)()
{
  v1 = [*(v0 + 24) dialog];
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for DialogElement, DialogElement_ptr);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (specialized Array.count.getter(v2))
  {
    specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v2 & 0xC000000000000001) == 0, v2);
    if ((v2 & 0xC000000000000001) != 0)
    {
      v3 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v3 = *(v2 + 32);
    }

    v4 = v3;
    v5 = *(v0 + 24);

    v6 = [v4 fullPrint];

    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;
  }

  else
  {
    v10 = *(v0 + 24);

    v7 = 0;
    v9 = 0;
  }

  v11 = *(v0 + 8);

  return v11(v7, v9);
}

uint64_t static CallRecordViewUtils.generatedDisplayCallDetail(searchCallHistoryCATs:callRecord:)@<X0>(uint64_t a1@<X8>)
{
  v5 = OUTLINED_FUNCTION_16_22(a1);
  v6 = OUTLINED_FUNCTION_23_1(v5);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  OUTLINED_FUNCTION_9_24();
  v9 = OUTLINED_FUNCTION_13_17();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(v9, v10);
  v12 = OUTLINED_FUNCTION_23_1(v11);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  OUTLINED_FUNCTION_12_5();
  v17 = v15 - v16;
  __chkstk_darwin(v18);
  OUTLINED_FUNCTION_6_27();
  (*(*v1 + class metadata base offset for SearchCallHistoryCATs + 24))(v4);
  OUTLINED_FUNCTION_15_22();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_17_13(v17);
    OUTLINED_FUNCTION_27_2();
    *v3 = 0xD000000000000027;
    v3[1] = v19;
    v3[2] = 0xD000000000000035;
    v3[3] = 0x8000000000459670;
    OUTLINED_FUNCTION_27_2();
    v3[4] = v20 + 22;
    v3[5] = v21;
    OUTLINED_FUNCTION_12_26(37);
    lazy protocol witness table accessor for type PhoneError and conformance PhoneError();
    OUTLINED_FUNCTION_14_21();
    PhoneError.logged()(v22);
    outlined destroy of PhoneError(v3);
    swift_willThrow();
    return OUTLINED_FUNCTION_17_13(v2);
  }

  else
  {
    Result<>.firstPrint.getter();
    if (v24)
    {
      String.toSpeakableString.getter();
    }

    v25 = OUTLINED_FUNCTION_5_26();
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v25, v26, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
    v27 = type metadata accessor for SpeakableString();
    return OUTLINED_FUNCTION_10_25(v27);
  }
}

uint64_t static CallRecordViewUtils.generatedDisplaySymbolIcon(callRecordType:forCallHistoryDisplay:)(uint64_t a1, uint64_t a2)
{
  if (a1 != 0x474E494F4754554FLL || a2 != 0xE800000000000000)
  {
    _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  SpeakableString.init(print:speak:)();
  type metadata accessor for SpeakableString();
  v3 = OUTLINED_FUNCTION_4_19();

  return __swift_storeEnumTagSinglePayload(v3, 0, 1, v4);
}

uint64_t static CallRecordViewUtils.generatedDisplayTextColor(callRecordType:forCallHistoryDisplay:)(uint64_t a1, uint64_t a2)
{
  if (a1 != 0x44455353494DLL || a2 != 0xE600000000000000)
  {
    _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  SpeakableString.init(print:speak:)();
  type metadata accessor for SpeakableString();
  v3 = OUTLINED_FUNCTION_4_19();

  return __swift_storeEnumTagSinglePayload(v3, 0, 1, v4);
}

uint64_t static CallRecordViewUtils.generatedSelectedAction(callRecord:forCallHistoryDisplay:deviceState:)(void *a1, char a2)
{
  if ((a2 & 1) != 0 && (v3 = outlined bridged method (pb) of @objc INCallInvite.participants.getter(a1)) != 0)
  {
    v4 = v3;
    if (one-time initialization token for instance != -1)
    {
      swift_once();
    }

    memcpy(__dst, &static PhoneCallFeatureFlags.instance, sizeof(__dst));
    v36[3] = &type metadata for PhoneCallFeatureFlags;
    v36[4] = &protocol witness table for PhoneCallFeatureFlags;
    v36[0] = swift_allocObject();
    memcpy((v36[0] + 16), &static PhoneCallFeatureFlags.instance, 0xC0uLL);
    outlined init with take of PhoneCallFeatureFlagProviding(v36, v37);
    outlined init with copy of PhoneCallFeatureFlags(__dst, v32);
    __swift_destroy_boxed_opaque_existential_1(v37);
    OUTLINED_FUNCTION_2_37();
    if (dispatch thunk of DeviceState.isMac.getter())
    {
      if (one-time initialization token for siriFaceTimeMacExtension != -1)
      {
        swift_once();
      }

      v5 = &static DefaultPhoneApps.siriFaceTimeMacExtension;
    }

    else
    {
      OUTLINED_FUNCTION_2_37();
      if (dispatch thunk of DeviceState.isWatch.getter())
      {
        if (one-time initialization token for siriPhoneWatchExtension != -1)
        {
          swift_once();
        }

        v5 = &static DefaultPhoneApps.siriPhoneWatchExtension;
      }

      else
      {
        OUTLINED_FUNCTION_2_37();
        if (dispatch thunk of DeviceState.isXRDevice.getter())
        {
          if (one-time initialization token for siriPhoneFaceTimeExtension != -1)
          {
            swift_once();
          }

          v5 = &static DefaultPhoneApps.siriPhoneFaceTimeExtension;
        }

        else
        {
          if (one-time initialization token for siriPhoneExtension != -1)
          {
            swift_once();
          }

          v5 = &static DefaultPhoneApps.siriPhoneExtension;
        }
      }
    }

    v9 = *v5;

    v10 = App.appIdentifier.getter();
    v12 = v11;

    OUTLINED_FUNCTION_27_2();
    if (v12)
    {
      v14 = v10;
    }

    else
    {
      v14 = 0xD000000000000017;
    }

    if (!v12)
    {
      v12 = v13;
    }

    v15 = [a1 callCapability];
    v16 = objc_allocWithZone(INStartCallIntent);
    v17 = @nonobjc INStartCallIntent.init(destinationType:contacts:callCapability:)(1, v4, v15);
    if (one-time initialization token for emptyStartCallIntent != -1)
    {
      swift_once();
    }

    v18 = [static PhoneCallIntentClassNames.emptyStartCallIntent typeName];
    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;

    v22 = outlined bridged method (ob) of @objc PBCodable.data.getter([v17 backingStore]);
    v32[0] = v14;
    v32[1] = v12;
    v32[2] = v19;
    v32[3] = v21;
    v32[4] = v22;
    v32[5] = v23;
    v33 = xmmword_42D7D0;
    v34 = 0;
    v35 = 1;
    static Device.current.getter();
    type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SKIDirectInvocationPayload, SKIDirectInvocationPayload_ptr);
    v24 = SKIDirectInvocationPayload.__allocating_init(identifier:)();
    v25 = StartAudioCallDirectAction.toDictionary()();
    v26 = specialized _dictionaryUpCast<A, B, C, D>(_:)(v25);

    outlined bridged method (mbnn) of @objc SKIDirectInvocationPayload.userData.setter(v26, v24);
    v27 = SKIDirectInvocationPayload.toStartLocalRequest(deviceState:)(v36);

    __swift_destroy_boxed_opaque_existential_1(v36);
    object = AceObject.serializeToBase64()().value._object;

    if (object)
    {
      String.toSpeakableString.getter();

      outlined destroy of StartAudioCallDirectAction(v32);

      type metadata accessor for SpeakableString();
      v29 = OUTLINED_FUNCTION_4_19();
      v31 = 0;
    }

    else
    {

      outlined destroy of StartAudioCallDirectAction(v32);
      type metadata accessor for SpeakableString();
      v29 = OUTLINED_FUNCTION_4_19();
      v31 = 1;
    }

    return __swift_storeEnumTagSinglePayload(v29, v31, 1, v30);
  }

  else
  {
    type metadata accessor for SpeakableString();
    v6 = OUTLINED_FUNCTION_4_19();

    return __swift_storeEnumTagSinglePayload(v6, 1, 1, v7);
  }
}

void static CallRecordViewUtils.buildPunchOutForVoicemail(callRecord:)(void *a1)
{
  v112 = type metadata accessor for URL();
  v108 = *(v112 - 8);
  v2 = *(v108 + 64);
  v3 = __chkstk_darwin(v112);
  v114 = &v106 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v111 = &v106 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v106 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10 - 8);
  v109 = &v106 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v107 = &v106 - v15;
  v16 = __chkstk_darwin(v14);
  v106 = &v106 - v17;
  v18 = __chkstk_darwin(v16);
  v20 = &v106 - v19;
  __chkstk_darwin(v18);
  v113 = &v106 - v21;
  v22 = type metadata accessor for UUID();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  v25 = __chkstk_darwin(v22);
  v27 = &v106 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v29 = &v106 - v28;
  v30 = [objc_allocWithZone(SAUIAppPunchOut) init];
  outlined bridged method (ob) of @objc SABaseClientBoundCommand.aceId.getter(v30);
  v110 = v30;
  if (v31)
  {
  }

  else
  {
    UUID.init()();
    v32 = UUID.uuidString.getter();
    v34 = v33;
    (*(v23 + 8))(v29, v22);
    outlined bridged method (mbnn) of @objc SABaseClientBoundCommand.aceId.setter(v32, v34, v30);
  }

  v35 = [a1 identifier];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  UUID.init(uuidString:)();

  if (__swift_getEnumTagSinglePayload(v9, 1, v22) == 1)
  {
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v9, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v36 = [a1 identifier];
    v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v39 = v38;

    v40 = HIBYTE(v39) & 0xF;
    v41 = v37 & 0xFFFFFFFFFFFFLL;
    if ((v39 & 0x2000000000000000) != 0)
    {
      v42 = HIBYTE(v39) & 0xF;
    }

    else
    {
      v42 = v37 & 0xFFFFFFFFFFFFLL;
    }

    v43 = v114;
    if (!v42)
    {

      v44 = &dword_54B000;
      goto LABEL_72;
    }

    v44 = &dword_54B000;
    if ((v39 & 0x1000000000000000) != 0)
    {
      v116 = 0;
      v47 = specialized _parseInteger<A, B>(ascii:radix:)(v37, v39, 10);
      v72 = v105;
LABEL_71:

      if ((v72 & 1) == 0)
      {
        v81 = [objc_opt_self() phoneAppVoicemailURLForRecordID:v47];
        if (!v81)
        {
          v80 = 1;
          v59 = v112;
          v58 = v113;
          v60 = v109;
          v20 = v106;
          goto LABEL_83;
        }

        v82 = v81;
        v20 = v106;
        static URL._unconditionallyBridgeFromObjectiveC(_:)();

        v80 = 0;
        v59 = v112;
        v58 = v113;
        goto LABEL_80;
      }

LABEL_72:
      if (*(v44 + 369) != -1)
      {
        swift_once();
      }

      v73 = type metadata accessor for Logger();
      __swift_project_value_buffer(v73, static Logger.siriPhone);
      v74 = Logger.logObject.getter();
      v75 = static os_log_type_t.error.getter();
      v76 = os_log_type_enabled(v74, v75);
      v59 = v112;
      v58 = v113;
      if (v76)
      {
        v77 = swift_slowAlloc();
        *v77 = 0;
        _os_log_impl(&dword_0, v74, v75, "#CallRecordViewUtils Unrecognized voicemail identifier, just opening voicemail tab", v77, 2u);
      }

      v78 = [objc_opt_self() phoneAppVoicemailURLForRecordID:-1];
      if (!v78)
      {
        v80 = 1;
        v60 = v109;
        v20 = v107;
        goto LABEL_83;
      }

      v79 = v78;
      v20 = v107;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v80 = 0;
LABEL_80:
      v60 = v109;
LABEL_83:
      __swift_storeEnumTagSinglePayload(v20, v80, 1, v59);
      goto LABEL_84;
    }

    if ((v39 & 0x2000000000000000) != 0)
    {
      v115[0] = v37;
      v115[1] = v39 & 0xFFFFFFFFFFFFFFLL;
      if (v37 == 43)
      {
        if (v40)
        {
          if (--v40)
          {
            v47 = 0;
            v64 = v115 + 1;
            while (1)
            {
              v65 = *v64 - 48;
              if (v65 > 9)
              {
                break;
              }

              v66 = 10 * v47;
              if ((v47 * 10) >> 64 != (10 * v47) >> 63)
              {
                break;
              }

              v47 = v66 + v65;
              if (__OFADD__(v66, v65))
              {
                break;
              }

              ++v64;
              if (!--v40)
              {
                goto LABEL_70;
              }
            }
          }

          goto LABEL_69;
        }

LABEL_103:
        __break(1u);
        return;
      }

      if (v37 != 45)
      {
        if (v40)
        {
          v47 = 0;
          v69 = v115;
          while (1)
          {
            v70 = *v69 - 48;
            if (v70 > 9)
            {
              break;
            }

            v71 = 10 * v47;
            if ((v47 * 10) >> 64 != (10 * v47) >> 63)
            {
              break;
            }

            v47 = v71 + v70;
            if (__OFADD__(v71, v70))
            {
              break;
            }

            v69 = (v69 + 1);
            if (!--v40)
            {
              goto LABEL_70;
            }
          }
        }

        goto LABEL_69;
      }

      if (v40)
      {
        if (--v40)
        {
          v47 = 0;
          v55 = v115 + 1;
          while (1)
          {
            v56 = *v55 - 48;
            if (v56 > 9)
            {
              break;
            }

            v57 = 10 * v47;
            if ((v47 * 10) >> 64 != (10 * v47) >> 63)
            {
              break;
            }

            v47 = v57 - v56;
            if (__OFSUB__(v57, v56))
            {
              break;
            }

            ++v55;
            if (!--v40)
            {
              goto LABEL_70;
            }
          }
        }

        goto LABEL_69;
      }
    }

    else
    {
      if ((v37 & 0x1000000000000000) != 0)
      {
        v45 = ((v39 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        v45 = _StringObject.sharedUTF8.getter();
      }

      v46 = *v45;
      if (v46 == 43)
      {
        if (v41 >= 1)
        {
          v40 = v41 - 1;
          if (v41 != 1)
          {
            v47 = 0;
            if (v45)
            {
              v61 = v45 + 1;
              while (1)
              {
                v62 = *v61 - 48;
                if (v62 > 9)
                {
                  goto LABEL_69;
                }

                v63 = 10 * v47;
                if ((v47 * 10) >> 64 != (10 * v47) >> 63)
                {
                  goto LABEL_69;
                }

                v47 = v63 + v62;
                if (__OFADD__(v63, v62))
                {
                  goto LABEL_69;
                }

                ++v61;
                if (!--v40)
                {
                  goto LABEL_70;
                }
              }
            }

            goto LABEL_61;
          }

          goto LABEL_69;
        }

        goto LABEL_102;
      }

      if (v46 != 45)
      {
        if (v41)
        {
          v47 = 0;
          if (v45)
          {
            while (1)
            {
              v67 = *v45 - 48;
              if (v67 > 9)
              {
                goto LABEL_69;
              }

              v68 = 10 * v47;
              if ((v47 * 10) >> 64 != (10 * v47) >> 63)
              {
                goto LABEL_69;
              }

              v47 = v68 + v67;
              if (__OFADD__(v68, v67))
              {
                goto LABEL_69;
              }

              ++v45;
              if (!--v41)
              {
                goto LABEL_61;
              }
            }
          }

          goto LABEL_61;
        }

LABEL_69:
        v47 = 0;
        LOBYTE(v40) = 1;
        goto LABEL_70;
      }

      if (v41 >= 1)
      {
        v40 = v41 - 1;
        if (v41 != 1)
        {
          v47 = 0;
          if (v45)
          {
            v48 = v45 + 1;
            while (1)
            {
              v49 = *v48 - 48;
              if (v49 > 9)
              {
                goto LABEL_69;
              }

              v50 = 10 * v47;
              if ((v47 * 10) >> 64 != (10 * v47) >> 63)
              {
                goto LABEL_69;
              }

              v47 = v50 - v49;
              if (__OFSUB__(v50, v49))
              {
                goto LABEL_69;
              }

              ++v48;
              if (!--v40)
              {
                goto LABEL_70;
              }
            }
          }

LABEL_61:
          LOBYTE(v40) = 0;
LABEL_70:
          v116 = v40;
          v72 = v40;
          goto LABEL_71;
        }

        goto LABEL_69;
      }

      __break(1u);
    }

    __break(1u);
LABEL_102:
    __break(1u);
    goto LABEL_103;
  }

  (*(v23 + 32))(v27, v9, v22);
  v51 = objc_opt_self();
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v53 = [v51 phoneAppVoicemailURLForMessageUUID:isa];

  if (v53)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v54 = 0;
  }

  else
  {
    v54 = 1;
  }

  v59 = v112;
  v58 = v113;
  v43 = v114;
  v44 = &dword_54B000;
  (*(v23 + 8))(v27, v22);
  __swift_storeEnumTagSinglePayload(v20, v54, 1, v59);
  v60 = v109;
LABEL_84:
  outlined init with take of URL?(v20, v58);
  outlined init with copy of PhoneCallFlowState<INHangUpCallIntent, INHangUpCallIntentResponse>(v58, v60, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  if (__swift_getEnumTagSinglePayload(v60, 1, v59) == 1)
  {
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v60, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    if (*(v44 + 369) != -1)
    {
      swift_once();
    }

    v83 = type metadata accessor for Logger();
    __swift_project_value_buffer(v83, static Logger.siriPhone);
    v84 = Logger.logObject.getter();
    v85 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v84, v85))
    {
      v86 = swift_slowAlloc();
      *v86 = 0;
    }

    else
    {
    }

    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v58, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  }

  else
  {
    v87 = v108;
    v88 = v111;
    (*(v108 + 32))(v111, v60, v59);
    if (*(v44 + 369) != -1)
    {
      swift_once();
    }

    v89 = type metadata accessor for Logger();
    __swift_project_value_buffer(v89, static Logger.siriPhone);
    (*(v87 + 16))(v43, v88, v59);
    v90 = Logger.logObject.getter();
    v91 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v90, v91))
    {
      v92 = swift_slowAlloc();
      v93 = swift_slowAlloc();
      v115[0] = v93;
      *v92 = 136315138;
      v94 = URL.absoluteString.getter();
      v95 = v43;
      v97 = v96;
      v98 = *(v87 + 8);
      v98(v95, v59);
      v99 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v94, v97, v115);

      *(v92 + 4) = v99;
      _os_log_impl(&dword_0, v90, v91, "#CallRecordViewUtils VM punchout: %s", v92, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v93);
    }

    else
    {

      v98 = *(v87 + 8);
      v98(v43, v59);
    }

    v102 = v110;
    v101 = v111;
    URL._bridgeToObjectiveC()(v100);
    v104 = v103;
    [v102 setPunchOutUri:v103];

    v98(v101, v59);
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v58, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  }
}