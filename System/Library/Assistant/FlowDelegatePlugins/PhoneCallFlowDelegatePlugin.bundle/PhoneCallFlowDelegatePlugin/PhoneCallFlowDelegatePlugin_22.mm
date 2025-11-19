uint64_t OngoingCallConfirmIntentFlow.makeErrorFlow(currentCall:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for DialogPhase();
  v7 = OUTLINED_FUNCTION_21(v6);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  OUTLINED_FUNCTION_4();
  v10 = type metadata accessor for Locale();
  OUTLINED_FUNCTION_9_1();
  v115 = v11;
  v13 = *(v12 + 64);
  __chkstk_darwin(v14);
  OUTLINED_FUNCTION_4();
  v114 = v16 - v15;
  v17 = type metadata accessor for CATOption();
  v18 = OUTLINED_FUNCTION_21(v17);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  OUTLINED_FUNCTION_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow22IntentResolutionRecordVySo011INStartCallD0CSo0ghD8ResponseCGMd, &_s11SiriKitFlow22IntentResolutionRecordVySo011INStartCallD0CSo0ghD8ResponseCGMR);
  v21 = IntentResolutionRecord.intent.getter();
  v22 = outlined bridged method (ob) of @objc INStartCallIntent.contacts.getter(v21);
  if (v22)
  {
    v23 = v22;
  }

  else
  {
    v23 = _swiftEmptyArrayStorage;
  }

  v24 = specialized Array.count.getter(v23);

  if (v24 != 1 || (v25 = IntentResolutionRecord.intent.getter(), (v26 = outlined bridged method (ob) of @objc INStartCallIntent.contacts.getter(v25)) == 0))
  {
LABEL_20:
    if (one-time initialization token for siriPhone != -1)
    {
      goto LABEL_57;
    }

    goto LABEL_21;
  }

  v27 = v26;
  if (!specialized Array.count.getter(v26))
  {

    goto LABEL_20;
  }

  v112 = v10;
  specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v27 & 0xC000000000000001) == 0, v27);
  if ((v27 & 0xC000000000000001) != 0)
  {
    v28 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    v28 = *(v27 + 32);
  }

  v29 = v28;

  v30 = [v29 personHandle];
  if (!v30)
  {

    goto LABEL_20;
  }

  v31 = v30;
  (*(*v3 + 104))(&v120);
  v32 = v122[2];
  __swift_project_boxed_opaque_existential_1(&v120, v122[1]);
  v33 = *(v32 + 48);
  v34 = OUTLINED_FUNCTION_55();
  v36 = v35(v34);
  v38 = (*(v37 + 16))(v31, v36, v37);
  if (!v38)
  {
    __swift_destroy_boxed_opaque_existential_1(&v120);
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2();
    }

    v60 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_9_0(v60, static Logger.siriPhone);
    v61 = Logger.logObject.getter();
    v62 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v61, v62))
    {
      v63 = OUTLINED_FUNCTION_65_0();
      OUTLINED_FUNCTION_11_1(v63);
      OUTLINED_FUNCTION_33(&dword_0, v64, v65, "#OngoingCallConfirmIntentFlow: Could not normalize handles for validation. Continue to offer.");
      OUTLINED_FUNCTION_12_3();
    }

    return 0;
  }

  v39 = v38;
  __swift_destroy_boxed_opaque_existential_1(&v120);
  ObjectType = swift_getObjectType();
  v41 = SPHCall.localHandle.getter();
  v113 = v39;
  if (v41)
  {
    v42 = v41;
    if (TUHandlesAreCanonicallyEqual())
    {
      if (one-time initialization token for siriPhone != -1)
      {
        OUTLINED_FUNCTION_6_2();
      }

      v43 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_9_0(v43, static Logger.siriPhone);
      v44 = v39;
      v45 = v42;
      v46 = Logger.logObject.getter();
      v47 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v46, v47))
      {
        v110 = v31;
        v48 = swift_slowAlloc();
        v49 = swift_slowAlloc();
        *v48 = 138412546;
        *(v48 + 4) = v44;
        *(v48 + 12) = 2112;
        *(v48 + 14) = v45;
        *v49 = v113;
        v49[1] = v42;
        v50 = v44;
        v51 = v45;
        _os_log_impl(&dword_0, v46, v47, "#OngoingCallConfirmIntentFlow: Providing error dialog for calling self, %@ matches %@", v48, 0x16u);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_26_0();
        v31 = v110;
        OUTLINED_FUNCTION_26_0();
      }

      outlined init with copy of SignalProviding(v3 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin28OngoingCallConfirmIntentFlow_sharedGlobals, v122);
      v120 = a1;
      v121 = a2;
      type metadata accessor for AddCallParticipantCATsSimple();
      swift_unknownObjectRetain();
      static CATOption.defaultMode.getter();
      v123 = CATWrapperSimple.__allocating_init(options:globals:)();
      v52 = OngoingCallErrorFlowFactory.selfAdd()();

LABEL_54:
      outlined destroy of OngoingCallErrorFlowFactory(&v120);
      return v52;
    }
  }

  v111 = v31;
  v105 = ObjectType;
  v106 = a2;
  v104 = *(a2 + 56);
  v66 = v104(ObjectType, a2);
  v109 = v29;
  if ((v66 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for TUHandle, TUHandle_ptr);
    lazy protocol witness table accessor for type TUHandle and conformance NSObject();
    OUTLINED_FUNCTION_19_0();
    Set.Iterator.init(_cocoa:)();
    v67 = v124;
    v68 = v125;
    v69 = v126;
    v70 = v127;
    v71 = v128;
  }

  else
  {
    v72 = -1 << *(v66 + 32);
    v68 = v66 + 56;
    v69 = ~v72;
    v73 = -v72;
    if (v73 < 64)
    {
      v74 = ~(-1 << v73);
    }

    else
    {
      v74 = -1;
    }

    v71 = v74 & *(v66 + 56);
    v70 = 0;
  }

  v75 = (v69 + 64) >> 6;
  while (1)
  {
    if (v67 < 0)
    {
      v79 = __CocoaSet.Iterator.next()();
      if (!v79 || (*&v116 = v79, type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for TUHandle, TUHandle_ptr), swift_dynamicCast(), (v78 = v120) == 0))
      {
LABEL_55:
        OUTLINED_FUNCTION_55();
        OUTLINED_FUNCTION_22_16();

        return 0;
      }

      goto LABEL_48;
    }

    v76 = v70;
    v77 = v71;
    if (!v71)
    {
      break;
    }

LABEL_44:
    v71 = (v77 - 1) & v77;
    v78 = *(*(v67 + 48) + ((v70 << 9) | (8 * __clz(__rbit64(v77)))));
    if (!v78)
    {
      goto LABEL_55;
    }

LABEL_48:
    v80 = TUHandlesAreCanonicallyEqual();

    if (v80)
    {
      OUTLINED_FUNCTION_55();
      OUTLINED_FUNCTION_22_16();

      if (one-time initialization token for siriPhone != -1)
      {
        OUTLINED_FUNCTION_6_2();
      }

      v81 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_9_0(v81, static Logger.siriPhone);
      v82 = v113;
      swift_unknownObjectRetain();
      v83 = Logger.logObject.getter();
      v84 = static os_log_type_t.debug.getter();

      swift_unknownObjectRelease();
      if (os_log_type_enabled(v83, v84))
      {
        v85 = swift_slowAlloc();
        v108 = swift_slowAlloc();
        v86 = swift_slowAlloc();
        v120 = v86;
        *v85 = 136315394;
        v107 = v84;
        v104(v105, v106);
        type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for TUHandle, TUHandle_ptr);
        lazy protocol witness table accessor for type TUHandle and conformance NSObject();
        v87 = Set.description.getter();
        v89 = v88;

        v90 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v87, v89, &v120);

        *(v85 + 4) = v90;
        *(v85 + 12) = 2112;
        *(v85 + 14) = v82;
        *v108 = v113;
        v91 = v82;
        _os_log_impl(&dword_0, v83, v107, "#OngoingCallConfirmIntentFlow: Providing error dialog for calling contact we're already calling, %s contains %@", v85, 0x16u);
        outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v108, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        OUTLINED_FUNCTION_26_0();
        __swift_destroy_boxed_opaque_existential_1(v86);
        OUTLINED_FUNCTION_26_0();
        OUTLINED_FUNCTION_12_3();
      }

      outlined init with copy of SignalProviding(v3 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin28OngoingCallConfirmIntentFlow_sharedGlobals, v122);
      v120 = a1;
      v121 = v106;
      type metadata accessor for AddCallParticipantCATsSimple();
      swift_unknownObjectRetain();
      static CATOption.defaultMode.getter();
      v123 = CATWrapperSimple.__allocating_init(options:globals:)();
      type metadata accessor for PhonePerson(0);
      v92 = v122[4];
      __swift_project_boxed_opaque_existential_1(v122, v122[3]);
      v93 = *(v92 + 8);
      v94 = OUTLINED_FUNCTION_1_1();
      v95(v94);
      __swift_project_boxed_opaque_existential_1(&v116, *(&v117 + 1));
      OUTLINED_FUNCTION_1_1();
      dispatch thunk of DeviceState.siriLocale.getter();
      v96 = static PhonePerson.make(phonePerson:options:locale:)(v109, 0, v114);
      (*(v115 + 8))(v114, v112);
      __swift_destroy_boxed_opaque_existential_1(&v116);
      outlined init with copy of OngoingCallErrorFlowFactory(&v120, &v116);
      v97 = swift_allocObject();
      v98 = v117;
      *(v97 + 16) = v116;
      *(v97 + 32) = v98;
      v99 = v119;
      *(v97 + 48) = v118;
      *(v97 + 64) = v99;
      *(v97 + 80) = v96;

      static DialogPhase.error.getter();
      outlined init with copy of SignalProviding(v122, &v116);
      v100 = type metadata accessor for DialogOutputFactory();
      v101 = *(v100 + 48);
      v102 = *(v100 + 52);
      swift_allocObject();
      v103 = DialogOutputFactory.init(dialog:dialogPhase:sharedGlobals:)();
      v52 = (*(*v103 + 112))();

      goto LABEL_54;
    }
  }

  while (1)
  {
    v70 = v76 + 1;
    if (__OFADD__(v76, 1))
    {
      break;
    }

    if (v70 >= v75)
    {
      goto LABEL_55;
    }

    v77 = *(v68 + 8 * v70);
    ++v76;
    if (v77)
    {
      goto LABEL_44;
    }
  }

  __break(1u);
LABEL_57:
  OUTLINED_FUNCTION_6_2();
LABEL_21:
  v53 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_9_0(v53, static Logger.siriPhone);
  v54 = Logger.logObject.getter();
  v55 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v54, v55))
  {
    v56 = OUTLINED_FUNCTION_65_0();
    OUTLINED_FUNCTION_11_1(v56);
    OUTLINED_FUNCTION_33(&dword_0, v57, v58, "#OngoingCallConfirmIntentFlow: Skipping validation for group call requests. Continue to offer.");
    OUTLINED_FUNCTION_12_3();
  }

  return 0;
}

uint64_t OngoingCallConfirmIntentFlow.makeOfferResponse(currentCall:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v85 = a2;
  v87 = a3;
  v6 = OUTLINED_FUNCTION_4_45();
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  OUTLINED_FUNCTION_4();
  v86 = (v10 - v9);
  v11 = type metadata accessor for CATOption();
  v12 = OUTLINED_FUNCTION_21(v11);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  OUTLINED_FUNCTION_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow22IntentResolutionRecordVySo011INStartCallD0CSo0ghD8ResponseCGMd, &_s11SiriKitFlow22IntentResolutionRecordVySo011INStartCallD0CSo0ghD8ResponseCGMR);
  OUTLINED_FUNCTION_9_1();
  v16 = v15;
  v18 = *(v17 + 64);
  __chkstk_darwin(v19);
  v21 = v84 - v20;
  v22 = *(v16 + 16);
  v84[1] = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin28OngoingCallConfirmIntentFlow_rchRecord;
  v89 = v23;
  v22(v84 - v20, v3 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin28OngoingCallConfirmIntentFlow_rchRecord);
  v24 = (v3 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin28OngoingCallConfirmIntentFlow_sharedGlobals);
  v25 = *(v3 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin28OngoingCallConfirmIntentFlow_sharedGlobals + 24);
  v26 = *(v3 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin28OngoingCallConfirmIntentFlow_sharedGlobals + 32);
  __swift_project_boxed_opaque_existential_1((v3 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin28OngoingCallConfirmIntentFlow_sharedGlobals), v25);
  (*(v26 + 120))(v97, v25, v26);
  v27 = v24[3];
  v28 = v24[4];
  __swift_project_boxed_opaque_existential_1(v24, v27);
  v29 = (*(v28 + 72))(v27, v28);
  (*(*v29 + 216))(v90);

  if (v92)
  {
    _s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgWOcTm_0(&v94, v95, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMR);
    outlined destroy of TransformationResult(v90);
  }

  else
  {
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v90, &_s27PhoneCallFlowDelegatePlugin20TransformationResultVSgMd, &_s27PhoneCallFlowDelegatePlugin20TransformationResultVSgMR);
    memset(v95, 0, sizeof(v95));
    v96 = 0;
  }

  static OngoingCallOfferOptions.from(rchRecord:callStateProvider:nlIntent:)(v21, v97, v95);
  v31 = v30;
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v95, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMR);
  __swift_destroy_boxed_opaque_existential_1(v97);
  (*(v16 + 8))(v21, v89);
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2();
  }

  v32 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_9_0(v32, static Logger.siriPhone);

  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.debug.getter();

  v35 = os_log_type_enabled(v33, v34);
  v88 = v4;
  if (v35)
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v90[0] = v37;
    *v36 = 136315138;
    lazy protocol witness table accessor for type OngoingCallOfferOptions and conformance OngoingCallOfferOptions();
    v38 = Set.description.getter();
    v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, v39, v90);

    *(v36 + 4) = v40;
    _os_log_impl(&dword_0, v33, v34, "#OngoingCallConfirmIntentFlow offerType: %s", v36, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v37);
    OUTLINED_FUNCTION_12_3();
    OUTLINED_FUNCTION_26_0();
  }

  if (specialized Collection<>.isAddOrNewCall.getter(v31))
  {

    outlined init with copy of SignalProviding(v24, v90);
    type metadata accessor for OngoingCallCATs();
    OUTLINED_FUNCTION_24_20();
    OUTLINED_FUNCTION_46_9();
    v41 = CATWrapper.__allocating_init(options:globals:)();
    type metadata accessor for OngoingCallCATsSimple();
    OUTLINED_FUNCTION_24_20();
    OUTLINED_FUNCTION_46_9();
    v42 = CATWrapperSimple.__allocating_init(options:globals:)();
    type metadata accessor for PhoneCallDisplayTextCATsSimple();
    OUTLINED_FUNCTION_24_20();
    OUTLINED_FUNCTION_46_9();
    v43 = CATWrapperSimple.__allocating_init(options:globals:)();
    v44 = type metadata accessor for ResponseFactory();
    v45 = *(v44 + 48);
    v46 = *(v44 + 52);
    swift_allocObject();
    v47 = ResponseFactory.init()();
    type metadata accessor for AddOrCallPromptForValueStrategy();
    v48 = swift_allocObject();
    *(v48 + 112) = v44;
    *(v48 + 120) = &protocol witness table for ResponseFactory;
    *(v48 + 88) = v47;
    *(v48 + 16) = 2;
    outlined init with take of PhoneCallFeatureFlagProviding(v90, v48 + 24);
    *(v48 + 64) = v41;
    *(v48 + 72) = v42;
    *(v48 + 80) = v43;
    v49 = v24[4];
    __swift_project_boxed_opaque_existential_1(v24, v24[3]);
    v50 = *(v49 + 16);

    v51 = OUTLINED_FUNCTION_55();
    v50(v51);
    v52 = v91;
    v53 = v93;
    v54 = __swift_project_boxed_opaque_existential_1(v90, v91);
    v97[3] = v52;
    v97[4] = v53;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v97);
    (*(*(v52 - 8) + 16))(boxed_opaque_existential_1, v54, v52);
    v56 = OUTLINED_FUNCTION_55();
    v58 = __swift_instantiateConcreteTypeFromMangledNameV2(v56, v57);
    v59 = *(v58 + 48);
    v60 = *(v58 + 52);
    swift_allocObject();
    lazy protocol witness table accessor for type OngoingCallConfirmIntentFlow and conformance OngoingCallConfirmIntentFlow(&lazy protocol witness table cache variable for type AddOrCallPromptForValueStrategy and conformance AddOrCallPromptForValueStrategy, type metadata accessor for AddOrCallPromptForValueStrategy);
    v61 = PromptForValueFlowAsync.init<A>(strategy:outputPublisher:)();
    __swift_destroy_boxed_opaque_existential_1(v90);
    v90[0] = v61;
    lazy protocol witness table accessor for type TerminalOntologyNode<VoiceMail.VoiceMailNoun> and conformance TerminalOntologyNode<A>(&lazy protocol witness table cache variable for type PromptForValueFlowAsync<OngoingCallConfirmIntentFlow.Action> and conformance PromptForValueFlowAsync<A>, &_s11SiriKitFlow014PromptForValueC5AsyncCy09PhoneCallC14DelegatePlugin07Ongoingi13ConfirmIntentC0C6ActionOGMd, &_s11SiriKitFlow014PromptForValueC5AsyncCy09PhoneCallC14DelegatePlugin07Ongoingi13ConfirmIntentC0C6ActionOGMR);

    OUTLINED_FUNCTION_21_23();
    static ExecuteResponse.ongoing<A>(next:childCompletion:)();
  }

  v84[0] = a1;
  if (*(v31 + 16))
  {
    v63 = *(v31 + 40);
    Hasher.init(_seed:)();
    String.hash(into:)();
    v64 = Hasher._finalize()();
    v65 = -1 << *(v31 + 32);
    v66 = v64 & ~v65;
    if ((*(v31 + 56 + ((v66 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v66))
    {
      v67 = ~v65;
      while (!*(*(v31 + 48) + v66) || *(*(v31 + 48) + v66) == 2)
      {
        v68 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v68)
        {
          goto LABEL_20;
        }

        v66 = (v66 + 1) & v67;
        if (((*(v31 + 56 + ((v66 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v66) & 1) == 0)
        {
          goto LABEL_18;
        }
      }

LABEL_20:

      v78 = IntentResolutionRecord.intent.getter();
      outlined init with copy of SignalProviding(v24, v90);
      type metadata accessor for OngoingCallCATsSimple();
      OUTLINED_FUNCTION_24_20();
      OUTLINED_FUNCTION_46_9();
      v79 = CATWrapperSimple.__allocating_init(options:globals:)();
      type metadata accessor for NewCallConfirmationFlowProducer();
      v80 = swift_allocObject();
      v80[13] = &type metadata for LabelTemplatesProvider;
      v80[14] = &protocol witness table for LabelTemplatesProvider;
      v81 = swift_allocObject();
      v80[10] = v81;
      *(v81 + 16) = 0u;
      *(v81 + 32) = 0u;
      v82 = v85;
      v80[2] = v84[0];
      v80[3] = v82;
      v80[4] = v78;
      outlined init with take of PhoneCallFeatureFlagProviding(v90, v80 + 5);
      v80[15] = v79;
      swift_unknownObjectRetain();
      v83 = NewCallConfirmationFlowProducer.makeConfirmationFlow()();

      v90[0] = v83;

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow021PromptForConfirmationC5AsyncCyytAA06SimpleF16ResponseProviderVGMd, &_s11SiriKitFlow021PromptForConfirmationC5AsyncCyytAA06SimpleF16ResponseProviderVGMR);
      lazy protocol witness table accessor for type TerminalOntologyNode<VoiceMail.VoiceMailNoun> and conformance TerminalOntologyNode<A>(&lazy protocol witness table cache variable for type PromptForConfirmationFlowAsync<(), SimpleConfirmationResponseProvider> and conformance PromptForConfirmationFlowAsync<A, B>, &_s11SiriKitFlow021PromptForConfirmationC5AsyncCyytAA06SimpleF16ResponseProviderVGMd, &_s11SiriKitFlow021PromptForConfirmationC5AsyncCyytAA06SimpleF16ResponseProviderVGMR);
      OUTLINED_FUNCTION_21_23();
      static ExecuteResponse.ongoing<A>(next:childCompletion:)();
    }
  }

LABEL_18:

  v69 = v86;
  *v86 = 0;
  v70 = enum case for PromptResult.answered<A>(_:);
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow12PromptResultOy09PhoneCallC14DelegatePlugin07Ongoingg13ConfirmIntentC0C6ActionOGMd, &_s11SiriKitFlow12PromptResultOy09PhoneCallC14DelegatePlugin07Ongoingg13ConfirmIntentC0C6ActionOGMR);
  OUTLINED_FUNCTION_23_1(v71);
  (*(v72 + 104))(v69, v70, v71);
  v73 = OUTLINED_FUNCTION_10_42();
  __swift_storeEnumTagSinglePayload(v73, v74, v75, v71);
  v76 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin28OngoingCallConfirmIntentFlow_state;
  v77 = v88;
  OUTLINED_FUNCTION_17_3();
  outlined assign with take of OngoingCallConfirmIntentFlow.State(v69, v77 + v76);
  swift_endAccess();
  return static ExecuteResponse.ongoing(requireInput:)();
}

uint64_t specialized Collection<>.isAddOrNewCall.getter(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    goto LABEL_25;
  }

  v2 = *(a1 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v3 = Hasher._finalize()();
  v4 = a1 + 56;
  v5 = -1 << *(a1 + 32);
  v6 = v3 & ~v5;
  if (((*(a1 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    goto LABEL_25;
  }

  v7 = ~v5;
  while (1)
  {
    v8 = *(*(a1 + 48) + v6);
    if (v8 != 1 && v8 != 2)
    {
      break;
    }

    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      goto LABEL_10;
    }

    v6 = (v6 + 1) & v7;
    if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
    {
      goto LABEL_25;
    }
  }

LABEL_10:
  if (!*(a1 + 16))
  {
    goto LABEL_25;
  }

  v10 = *(a1 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v11 = Hasher._finalize()();
  v12 = -1 << *(a1 + 32);
  v13 = v11 & ~v12;
  if ((*(v4 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v14 = ~v12;
    while (!*(*(a1 + 48) + v13) || *(*(a1 + 48) + v13) == 1)
    {
      v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v15)
      {
        goto LABEL_28;
      }

      v13 = (v13 + 1) & v14;
      if (((*(v4 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        goto LABEL_17;
      }
    }

    goto LABEL_27;
  }

LABEL_17:
  if (!*(a1 + 16) || (v16 = *(a1 + 40), Hasher.init(_seed:)(), String.hash(into:)(), v17 = Hasher._finalize()(), v18 = -1 << *(a1 + 32), v19 = v17 & ~v18, ((*(v4 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0))
  {
LABEL_25:
    v21 = 0;
    return v21 & 1;
  }

  v20 = ~v18;
  while (!*(*(a1 + 48) + v19) || *(*(a1 + 48) + v19) == 2)
  {
    v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v21 & 1) == 0)
    {
      v19 = (v19 + 1) & v20;
      if ((*(v4 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19))
      {
        continue;
      }
    }

    return v21 & 1;
  }

LABEL_27:

LABEL_28:
  v21 = 1;
  return v21 & 1;
}

uint64_t closure #1 in OngoingCallConfirmIntentFlow.makeOfferResponse(currentCall:)(uint64_t a1, uint64_t a2)
{
  v54 = a2;
  v55 = type metadata accessor for ConfirmationResponse();
  v50 = *(v55 - 8);
  v3 = *(v50 + 64);
  __chkstk_darwin(v55);
  v47 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow20ConfirmationResponseOSg_ADtMd, &_s11SiriKitFlow20ConfirmationResponseOSg_ADtMR);
  v5 = *(*(v49 - 1) + 64);
  __chkstk_darwin(v49);
  v7 = &v45 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow20ConfirmationResponseOSgMd, &_s11SiriKitFlow20ConfirmationResponseOSgMR);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v48 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v14 = &v45 - v13;
  __chkstk_darwin(v12);
  v16 = &v45 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow12PromptResultOyAA34SimpleConfirmationResponseProviderVGMd, &_s11SiriKitFlow12PromptResultOyAA34SimpleConfirmationResponseProviderVGMR);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = __chkstk_darwin(v17);
  v22 = &v45 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v24 = &v45 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow12PromptResultOy09PhoneCallC14DelegatePlugin07Ongoingg13ConfirmIntentC0C6ActionOGMd, &_s11SiriKitFlow12PromptResultOy09PhoneCallC14DelegatePlugin07Ongoingg13ConfirmIntentC0C6ActionOGMR);
  v52 = *(v25 - 8);
  v53 = v25;
  v26 = *(v52 + 64);
  __chkstk_darwin(v25);
  v51 = &v45 - v27;
  v28 = *(v18 + 16);
  v28(v24, a1, v17);
  v29 = (*(v18 + 88))(v24, v17);
  if (v29 != enum case for PromptResult.answered<A>(_:))
  {
    goto LABEL_8;
  }

  v46 = v29;
  v28(v22, v24, v17);
  (*(v18 + 96))(v22, v17);
  SimpleConfirmationResponseProvider.confirmationResponse.getter();
  v30 = type metadata accessor for SimpleConfirmationResponseProvider();
  (*(*(v30 - 8) + 8))(v22, v30);
  v31 = v55;
  (*(v50 + 104))(v14, enum case for ConfirmationResponse.confirmed(_:), v55);
  __swift_storeEnumTagSinglePayload(v14, 0, 1, v31);
  v32 = *(v49 + 12);
  _s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgWOcTm_0(v16, v7, &_s11SiriKitFlow20ConfirmationResponseOSgMd, &_s11SiriKitFlow20ConfirmationResponseOSgMR);
  _s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgWOcTm_0(v14, &v7[v32], &_s11SiriKitFlow20ConfirmationResponseOSgMd, &_s11SiriKitFlow20ConfirmationResponseOSgMR);
  if (__swift_getEnumTagSinglePayload(v7, 1, v31) == 1)
  {
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v14, &_s11SiriKitFlow20ConfirmationResponseOSgMd, &_s11SiriKitFlow20ConfirmationResponseOSgMR);
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v16, &_s11SiriKitFlow20ConfirmationResponseOSgMd, &_s11SiriKitFlow20ConfirmationResponseOSgMR);
    if (__swift_getEnumTagSinglePayload(&v7[v32], 1, v55) == 1)
    {
      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v7, &_s11SiriKitFlow20ConfirmationResponseOSgMd, &_s11SiriKitFlow20ConfirmationResponseOSgMR);
      v33 = v46;
LABEL_11:
      v35 = v51;
      *v51 = 0;
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  v34 = v48;
  _s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgWOcTm_0(v7, v48, &_s11SiriKitFlow20ConfirmationResponseOSgMd, &_s11SiriKitFlow20ConfirmationResponseOSgMR);
  if (__swift_getEnumTagSinglePayload(&v7[v32], 1, v55) == 1)
  {
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v14, &_s11SiriKitFlow20ConfirmationResponseOSgMd, &_s11SiriKitFlow20ConfirmationResponseOSgMR);
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v16, &_s11SiriKitFlow20ConfirmationResponseOSgMd, &_s11SiriKitFlow20ConfirmationResponseOSgMR);
    (*(v50 + 8))(v34, v55);
LABEL_7:
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v7, &_s11SiriKitFlow20ConfirmationResponseOSg_ADtMd, &_s11SiriKitFlow20ConfirmationResponseOSg_ADtMR);
    goto LABEL_8;
  }

  v39 = v50;
  v40 = *(v50 + 32);
  v41 = &v7[v32];
  v42 = v47;
  v49 = v7;
  v43 = v55;
  v40(v47, v41, v55);
  lazy protocol witness table accessor for type OngoingCallConfirmIntentFlow and conformance OngoingCallConfirmIntentFlow(&lazy protocol witness table cache variable for type ConfirmationResponse and conformance ConfirmationResponse, &type metadata accessor for ConfirmationResponse);
  v45 = dispatch thunk of static Equatable.== infix(_:_:)();
  v44 = *(v39 + 8);
  v44(v42, v43);
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v14, &_s11SiriKitFlow20ConfirmationResponseOSgMd, &_s11SiriKitFlow20ConfirmationResponseOSgMR);
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v16, &_s11SiriKitFlow20ConfirmationResponseOSgMd, &_s11SiriKitFlow20ConfirmationResponseOSgMR);
  v44(v48, v43);
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v49, &_s11SiriKitFlow20ConfirmationResponseOSgMd, &_s11SiriKitFlow20ConfirmationResponseOSgMR);
  v33 = v46;
  if (v45)
  {
    goto LABEL_11;
  }

LABEL_8:
  v33 = enum case for PromptResult.cancelled<A>(_:);
  v35 = v51;
LABEL_9:
  v37 = v52;
  v36 = v53;
  (*(v52 + 104))(v35, v33, v53);
  (*(v18 + 8))(v24, v17);
  OngoingCallConfirmIntentFlow.onPromptComplete(_:)(v35);
  return (*(v37 + 8))(v35, v36);
}

uint64_t OngoingCallConfirmIntentFlow.onPromptComplete(_:)(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_4_45();
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  OUTLINED_FUNCTION_4();
  v8 = v7 - v6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow12PromptResultOy09PhoneCallC14DelegatePlugin07Ongoingg13ConfirmIntentC0C6ActionOGMd, &_s11SiriKitFlow12PromptResultOy09PhoneCallC14DelegatePlugin07Ongoingg13ConfirmIntentC0C6ActionOGMR);
  OUTLINED_FUNCTION_23_1(v9);
  (*(v10 + 16))(v8, a1, v9);
  v11 = OUTLINED_FUNCTION_10_42();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v9);
  v14 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin28OngoingCallConfirmIntentFlow_state;
  OUTLINED_FUNCTION_17_3();
  outlined assign with take of OngoingCallConfirmIntentFlow.State(v8, v1 + v14);
  return swift_endAccess();
}

uint64_t OngoingCallConfirmIntentFlow.deinit()
{
  v1 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin28OngoingCallConfirmIntentFlow_rchRecord;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow22IntentResolutionRecordVySo011INStartCallD0CSo0ghD8ResponseCGMd, &_s11SiriKitFlow22IntentResolutionRecordVySo011INStartCallD0CSo0ghD8ResponseCGMR);
  OUTLINED_FUNCTION_23_1(v2);
  (*(v3 + 8))(v0 + v1);
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin28OngoingCallConfirmIntentFlow_sharedGlobals));
  outlined destroy of OngoingCallConfirmIntentFlow.State(v0 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin28OngoingCallConfirmIntentFlow_state);
  return v0;
}

uint64_t OngoingCallConfirmIntentFlow.__deallocating_deinit()
{
  OngoingCallConfirmIntentFlow.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t protocol witness for Flow.execute() in conformance OngoingCallConfirmIntentFlow(uint64_t a1)
{
  v4 = *(**v1 + 168);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = protocol witness for Flow.execute() in conformance CommunalDeviceExecutionFlow;

  return v8(a1);
}

id @nonobjc INAddCallParticipantIntent.init(participants:)(uint64_t a1)
{
  if (a1)
  {
    type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INPerson, INPerson_ptr);
    v2.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v2.super.isa = 0;
  }

  v3 = [v1 initWithParticipants:v2.super.isa];

  return v3;
}

uint64_t outlined bridged method (ob) of @objc INStartCallIntent.contacts.getter(void *a1)
{
  v2 = [a1 contacts];

  if (!v2)
  {
    return 0;
  }

  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INPerson, INPerson_ptr);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t outlined assign with take of OngoingCallConfirmIntentFlow.State(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OngoingCallConfirmIntentFlow.State(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type OngoingCallConfirmIntentFlow.Action and conformance OngoingCallConfirmIntentFlow.Action()
{
  result = lazy protocol witness table cache variable for type OngoingCallConfirmIntentFlow.Action and conformance OngoingCallConfirmIntentFlow.Action;
  if (!lazy protocol witness table cache variable for type OngoingCallConfirmIntentFlow.Action and conformance OngoingCallConfirmIntentFlow.Action)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OngoingCallConfirmIntentFlow.Action and conformance OngoingCallConfirmIntentFlow.Action);
  }

  return result;
}

void type metadata completion function for OngoingCallConfirmIntentFlow()
{
  type metadata accessor for IntentResolutionRecord<INStartCallIntent, INStartCallIntentResponse>();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    v2 = type metadata accessor for OngoingCallConfirmIntentFlow.State(319);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void type metadata accessor for IntentResolutionRecord<INStartCallIntent, INStartCallIntentResponse>()
{
  if (!lazy cache variable for type metadata for IntentResolutionRecord<INStartCallIntent, INStartCallIntentResponse>)
  {
    type metadata accessor for CNContactStore(255, &lazy cache variable for type metadata for INStartCallIntent, INStartCallIntent_ptr);
    type metadata accessor for CNContactStore(255, &lazy cache variable for type metadata for INStartCallIntentResponse, INStartCallIntentResponse_ptr);
    v0 = type metadata accessor for IntentResolutionRecord();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for IntentResolutionRecord<INStartCallIntent, INStartCallIntentResponse>);
    }
  }
}

uint64_t type metadata completion function for OngoingCallConfirmIntentFlow.State()
{
  type metadata accessor for PromptResult<OngoingCallConfirmIntentFlow.Action>();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

void type metadata accessor for PromptResult<OngoingCallConfirmIntentFlow.Action>()
{
  if (!lazy cache variable for type metadata for PromptResult<OngoingCallConfirmIntentFlow.Action>)
  {
    v0 = type metadata accessor for PromptResult();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for PromptResult<OngoingCallConfirmIntentFlow.Action>);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for OngoingCallConfirmIntentFlow.Action(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t lazy protocol witness table accessor for type OngoingCallConfirmIntentFlow and conformance OngoingCallConfirmIntentFlow(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t lazy protocol witness table accessor for type TUHandle and conformance NSObject()
{
  result = lazy protocol witness table cache variable for type TUHandle and conformance NSObject;
  if (!lazy protocol witness table cache variable for type TUHandle and conformance NSObject)
  {
    type metadata accessor for CNContactStore(255, &lazy cache variable for type metadata for TUHandle, TUHandle_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TUHandle and conformance NSObject);
  }

  return result;
}

uint64_t partial apply for closure #1 in OngoingCallErrorFlowFactory.participantAlreadyActive(person:)()
{
  OUTLINED_FUNCTION_15();
  v2 = *(v0 + 80);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = partial apply for closure #1 in OngoingCallErrorFlowFactory.participantAlreadyActive(person:);

  return closure #1 in OngoingCallErrorFlowFactory.participantAlreadyActive(person:)(v0 + 16, v2);
}

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

uint64_t OngoingCallErrorFlowFactory.init(currentCall:sharedGlobals:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = type metadata accessor for CATOption();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  OUTLINED_FUNCTION_4();
  *a4 = a1;
  a4[1] = a2;
  outlined init with take of PhoneCallFeatureFlagProviding(a3, a4 + 2);
  type metadata accessor for AddCallParticipantCATsSimple();
  static CATOption.defaultMode.getter();
  result = CATWrapperSimple.__allocating_init(options:globals:)();
  a4[7] = result;
  return result;
}

uint64_t OngoingCallErrorFlowFactory.selfAdd()()
{
  v1 = type metadata accessor for DialogPhase();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  OUTLINED_FUNCTION_4();
  outlined init with copy of OngoingCallErrorFlowFactory(v0, v12);
  v3 = swift_allocObject();
  v4 = v12[1];
  v3[1] = v12[0];
  v3[2] = v4;
  v5 = v12[3];
  v3[3] = v12[2];
  v3[4] = v5;

  static DialogPhase.error.getter();
  outlined init with copy of SignalProviding(v0 + 16, v12);
  v6 = type metadata accessor for DialogOutputFactory();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  v9 = DialogOutputFactory.init(dialog:dialogPhase:sharedGlobals:)();
  v10 = (*(*v9 + 112))(v9);

  return v10;
}

uint64_t OngoingCallErrorFlowFactory.participantAlreadyActive(person:)(void *a1)
{
  v3 = type metadata accessor for DialogPhase();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  OUTLINED_FUNCTION_4();
  v5 = type metadata accessor for Locale();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  OUTLINED_FUNCTION_4();
  v10 = v9 - v8;
  type metadata accessor for PhonePerson(0);
  v11 = v1[5];
  v12 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v11);
  (*(v12 + 8))(&v23, v11, v12);
  __swift_project_boxed_opaque_existential_1(&v23, *(&v24 + 1));
  dispatch thunk of DeviceState.siriLocale.getter();
  v13 = static PhonePerson.make(phonePerson:options:locale:)(a1, 0, v10);
  (*(v6 + 8))(v10, v5);
  __swift_destroy_boxed_opaque_existential_1(&v23);
  outlined init with copy of OngoingCallErrorFlowFactory(v1, &v23);
  v14 = swift_allocObject();
  v15 = v24;
  *(v14 + 16) = v23;
  *(v14 + 32) = v15;
  v16 = v26;
  *(v14 + 48) = v25;
  *(v14 + 64) = v16;
  *(v14 + 80) = v13;

  static DialogPhase.error.getter();
  outlined init with copy of SignalProviding((v1 + 2), &v23);
  v17 = type metadata accessor for DialogOutputFactory();
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  swift_allocObject();
  v20 = DialogOutputFactory.init(dialog:dialogPhase:sharedGlobals:)();
  v21 = (*(*v20 + 112))(v20);

  return v21;
}

uint64_t OngoingCallErrorFlowFactory.currentCall.getter()
{
  v1 = *v0;
  v2 = v0[1];
  return swift_unknownObjectRetain();
}

uint64_t closure #1 in OngoingCallErrorFlowFactory.selfAdd()()
{
  OUTLINED_FUNCTION_4_46();
  v2 = SPHCall.toPhoneCallRecord()();
  *(v1 + 24) = v2;
  v3 = *(*v0 + class metadata base offset for AddCallParticipantCATsSimple + 112);
  v7 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  *(v1 + 32) = v5;
  *v5 = v1;
  v5[1] = closure #1 in OngoingCallErrorFlowFactory.selfAdd();

  return v7(v2);
}

{
  v2 = *v1;
  v3 = *(*v1 + 32);
  v4 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v5 = v4;
  *(v2 + 40) = v0;

  if (v0)
  {

    return _swift_task_switch(closure #1 in OngoingCallErrorFlowFactory.selfAdd(), 0, 0);
  }

  else
  {
    v6 = *(v2 + 24);

    v7 = OUTLINED_FUNCTION_5_2();

    return v8(v7);
  }
}

{
  OUTLINED_FUNCTION_15();
  v1 = v0[3];

  v2 = v0[1];
  v3 = v0[5];

  return v2();
}

uint64_t partial apply for closure #1 in OngoingCallErrorFlowFactory.selfAdd()()
{
  OUTLINED_FUNCTION_15();
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = partial apply for closure #1 in OngoingCallErrorFlowFactory.selfAdd();

  return closure #1 in OngoingCallErrorFlowFactory.selfAdd()(v0 + 16);
}

uint64_t closure #1 in OngoingCallErrorFlowFactory.participantAlreadyActive(person:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(closure #1 in OngoingCallErrorFlowFactory.participantAlreadyActive(person:), 0, 0);
}

uint64_t closure #1 in OngoingCallErrorFlowFactory.participantAlreadyActive(person:)()
{
  OUTLINED_FUNCTION_4_46();
  v2 = SPHCall.toPhoneCallRecord()();
  v1[4] = v2;
  v3 = *(*v0 + class metadata base offset for AddCallParticipantCATsSimple + 64);
  v8 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  v1[5] = v5;
  *v5 = v1;
  v5[1] = closure #1 in OngoingCallErrorFlowFactory.participantAlreadyActive(person:);
  v6 = v1[3];

  return (v8)(v6, 0, v2);
}

{
  v2 = *v1;
  v3 = *(*v1 + 40);
  v4 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v5 = v4;
  *(v2 + 48) = v0;

  if (v0)
  {

    return _swift_task_switch(closure #1 in OngoingCallErrorFlowFactory.participantAlreadyActive(person:), 0, 0);
  }

  else
  {
    v6 = *(v2 + 32);

    v7 = OUTLINED_FUNCTION_5_2();

    return v8(v7);
  }
}

{
  OUTLINED_FUNCTION_15();
  v1 = v0[4];

  v2 = v0[1];
  v3 = v0[6];

  return v2();
}

uint64_t static OngoingCallFlowProducers.overrideStartCallProducers(producers:delegate:sharedGlobals:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2();
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static Logger.siriPhone);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_0, v6, v7, "#OngoingCallFlowProducers Setting ongoing call flow producers", v8, 2u);
    OUTLINED_FUNCTION_26_0();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow08RCHChildC14ProducersAsyncVySo17INStartCallIntentCSo0ghI8ResponseCGMd, &_s11SiriKitFlow08RCHChildC14ProducersAsyncVySo17INStartCallIntentCSo0ghI8ResponseCGMR);
  v9 = RCHChildFlowProducersAsync.unsupportedValueFlowProducer.getter();
  if (v9)
  {
    v11 = v9;
    v12 = v10;
    outlined init with copy of SignalProviding(a3, v30);
    v13 = swift_allocObject();
    OUTLINED_FUNCTION_3_60(v13, v14, v15, v16);
    *(a1 + 56) = v11;
    *(a1 + 64) = v12;

    OUTLINED_FUNCTION_2_70();
    RCHChildFlowProducersAsync.unsupportedValueFlowProducer.setter();
    outlined init with copy of SignalProviding(a3, v30);
    OUTLINED_FUNCTION_36_4();
    v17 = swift_allocObject();
    OUTLINED_FUNCTION_3_60(v17, v18, v19, v20);
    OUTLINED_FUNCTION_2_70();
    RCHChildFlowProducersAsync.confirmIntentFlowProducer.setter();
    outlined init with copy of SignalProviding(a3, v30);
    OUTLINED_FUNCTION_36_4();
    v21 = swift_allocObject();
    OUTLINED_FUNCTION_3_60(v21, v22, v23, v24);
    OUTLINED_FUNCTION_2_70();
    RCHChildFlowProducersAsync.continueInAppFlowProducer.setter();
    return _sxs5Error_pRi_zRi0_zlySo21DialogExecutionResultCIsegHrzo_SgWOe(v11);
  }

  else
  {
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v30[0] = v29;
      *v28 = 136315138;
      *(v28 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000053, 0x800000000045CF80, v30);
      _os_log_impl(&dword_0, v26, v27, "%s", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v29);
      OUTLINED_FUNCTION_26_0();
      OUTLINED_FUNCTION_26_0();
    }

    static SiriKitLifecycle._logCrashToEventBus(_:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t closure #1 in static OngoingCallFlowProducers.overrideStartCallProducers(producers:delegate:sharedGlobals:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t a1, uint64_t a2))
{
  v21 = a3;
  v7 = type metadata accessor for ParameterIdentifier();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v22[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow25ParameterResolutionRecordVySo17INStartCallIntentCGMd, &_s11SiriKitFlow25ParameterResolutionRecordVySo17INStartCallIntentCGMR);
  ParameterResolutionRecord.parameter.getter();
  v12 = ParameterIdentifier.name.getter();
  v14 = v13;
  (*(v8 + 8))(v11, v7);
  v15._countAndFlagsBits = v12;
  v15._object = v14;
  if (PhoneCallSlotNames.init(rawValue:)(v15).value == PhoneCallFlowDelegatePlugin_PhoneCallSlotNames_contacts && (v16 = ParameterResolutionRecord.result.getter(), v17 = [v16 unsupportedReason], v16, _INStartCallContactUnsupportedReasonForeignEmergencyDisambiguation == v17))
  {
    outlined init with copy of SignalProviding(v21, v22);
    v18 = swift_allocObject();
    outlined init with take of PhoneCallFeatureFlagProviding(v22, v18 + 16);
    a4 = partial apply for specialized closure #1 in static OngoingCallFlowProducers.makeUnsupportedValueOfferFlowProducer<A, B>(sharedGlobals:);
  }

  else
  {
  }

  v19 = a4(a1, a2);

  return v19;
}

uint64_t (*static OngoingCallFlowProducers.makeUnsupportedValueOfferFlowProducer<A, B>(sharedGlobals:)(uint64_t a1))(uint64_t *a1, uint64_t a2)
{
  outlined init with copy of SignalProviding(a1, v3);
  OUTLINED_FUNCTION_36_4();
  v1 = swift_allocObject();
  outlined init with take of PhoneCallFeatureFlagProviding(v3, v1 + 16);
  return partial apply for closure #1 in static OngoingCallFlowProducers.makeUnsupportedValueOfferFlowProducer<A, B>(sharedGlobals:);
}

uint64_t closure #2 in static OngoingCallFlowProducers.overrideStartCallProducers(producers:delegate:sharedGlobals:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow22IntentResolutionRecordVySo011INStartCallD0CSo0ghD8ResponseCGMd, &_s11SiriKitFlow22IntentResolutionRecordVySo011INStartCallD0CSo0ghD8ResponseCGMR);
  v6 = IntentResolutionRecord.intent.getter();
  v7 = IntentResolutionRecord.intentResponse.getter();
  v8 = static EmergencyUtils.requiresEmergencyConfirmation(intent:intentResponse:)(v6, v7);

  outlined init with copy of SignalProviding(a3, v14);
  v9 = swift_allocObject();
  outlined init with take of PhoneCallFeatureFlagProviding(v14, v9 + 16);
  if (v8)
  {
    v10 = partial apply for closure #1 in static OngoingCallFlowProducers.makeEmergencyConfirmIntentOfferFlowProducer(sharedGlobals:);
  }

  else
  {
    v10 = partial apply for closure #1 in static OngoingCallFlowProducers.makeConfirmIntentOfferFlowProducer(sharedGlobals:);
  }

  v11 = v10;

  v12 = v11(a1, a2);
  _sxs5Error_pRi_zRi0_zlySo21DialogExecutionResultCIsegHrzo_SgWOe(v11);

  return v12;
}

uint64_t closure #3 in static OngoingCallFlowProducers.overrideStartCallProducers(producers:delegate:sharedGlobals:)(uint64_t a1, char *a2, void *a3)
{
  v6 = a3[3];
  v7 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v6);
  (*(v7 + 120))(v38, v6, v7);
  v8 = a3[3];
  v9 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v8);
  v10 = (*(v9 + 72))(v8, v9);
  (*(*v10 + 216))(v34);

  if (v34[4])
  {
    outlined init with copy of PhoneCallNLIntent?(&v35, v36);
    outlined destroy of TransformationResult(v34);
  }

  else
  {
    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v34, &_s27PhoneCallFlowDelegatePlugin20TransformationResultVSgMd, &_s27PhoneCallFlowDelegatePlugin20TransformationResultVSgMR);
    memset(v36, 0, sizeof(v36));
    v37 = 0;
  }

  v33 = a2;
  static OngoingCallOfferOptions.from(rchRecord:callStateProvider:nlIntent:)(a2, v38, v36);
  v12 = v11;
  _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v36, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMR);
  __swift_destroy_boxed_opaque_existential_1(v38);
  if (!*(v12 + 16))
  {
    goto LABEL_18;
  }

  v13 = *(v12 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v14 = Hasher._finalize()();
  v15 = v12 + 56;
  v16 = -1 << *(v12 + 32);
  v17 = v14 & ~v16;
  if ((*(v12 + 56 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17))
  {
    v18 = ~v16;
    while (!*(*(v12 + 48) + v17) || *(*(v12 + 48) + v17) == 1)
    {
      v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v19)
      {
        goto LABEL_20;
      }

      v17 = (v17 + 1) & v18;
      if (((*(v15 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
      {
        goto LABEL_11;
      }
    }

    goto LABEL_19;
  }

LABEL_11:
  if (!*(v12 + 16) || (v20 = *(v12 + 40), Hasher.init(_seed:)(), String.hash(into:)(), v21 = Hasher._finalize()(), v22 = -1 << *(v12 + 32), v23 = v21 & ~v22, ((*(v15 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) == 0))
  {
LABEL_18:

    outlined init with copy of SignalProviding(a3, v34);
    v26 = swift_allocObject();
    outlined init with take of PhoneCallFeatureFlagProviding(v34, v26 + 16);
    v27 = partial apply for specialized closure #1 in static CallingIntentContinueInAppFlow.makeProducer(sharedGlobals:);
    goto LABEL_21;
  }

  v24 = ~v22;
  while (!*(*(v12 + 48) + v23) || *(*(v12 + 48) + v23) == 2)
  {
    v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v25)
    {
      goto LABEL_20;
    }

    v23 = (v23 + 1) & v24;
    if (((*(v15 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) == 0)
    {
      goto LABEL_18;
    }
  }

LABEL_19:

LABEL_20:
  outlined init with copy of SignalProviding(a3, v34);
  v28 = type metadata accessor for HangUpAndCallHandleIntentStrategy();
  v29 = *(v28 + 48);
  v30 = *(v28 + 52);
  swift_allocObject();
  v34[0] = HangUpAndCallHandleIntentStrategy.init(sharedGlobals:options:)(v34, v12);
  lazy protocol witness table accessor for type HangUpAndCallHandleIntentStrategy and conformance CallingIntentContinueInAppStrategy<A, B>(&lazy protocol witness table cache variable for type HangUpAndCallHandleIntentStrategy and conformance CallingIntentContinueInAppStrategy<A, B>, type metadata accessor for HangUpAndCallHandleIntentStrategy);
  v27 = static RCHChildFlowFactoryHelper.makeContinueInAppFlowWithAutomaticPunchOutProducer<A>(strategy:)();

LABEL_21:

  v31 = v27(a1, v33);

  return v31;
}

uint64_t specialized closure #1 in static OngoingCallFlowProducers.makeUnsupportedValueOfferFlowProducer<A, B>(sharedGlobals:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for CATOption();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow25ParameterResolutionRecordVySo17INStartCallIntentCGMd, &_s11SiriKitFlow25ParameterResolutionRecordVySo17INStartCallIntentCGMR);
  v10 = ParameterResolutionRecord.intent.getter();
  v39[2] = v9;
  v11 = ParameterResolutionRecord.result.getter();
  v12 = static EmergencyDuringOngoingCallPromptType.from(intent:intentResolutionResult:)(v10, v11);
  v14 = v13;
  v16 = v15;
  v17 = v15;

  if (v17 == 255)
  {
    v18 = 0;
  }

  else
  {
    v18 = v12;
  }

  if (v17 == 255)
  {
    v19 = 0;
  }

  else
  {
    v19 = v14;
  }

  if (v17 == 255)
  {
    v20 = 0;
  }

  else
  {
    v20 = v16;
  }

  if (one-time initialization token for siriPhone != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  __swift_project_value_buffer(v21, static Logger.siriPhone);
  outlined copy of EmergencyDuringOngoingCallPromptType(v18, v19, v20);
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.debug.getter();
  outlined consume of EmergencyDuringOngoingCallPromptType(v18, v19, v20);
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v39[0] = a2;
    v25 = v24;
    v26 = swift_slowAlloc();
    v40[0] = v26;
    *v25 = 136315138;
    outlined copy of EmergencyDuringOngoingCallPromptType(v18, v19, v20);
    v27 = EmergencyDuringOngoingCallPromptType.description.getter(v18, v19, v20);
    v39[1] = v8;
    v28 = a3;
    v30 = v29;
    outlined consume of EmergencyDuringOngoingCallPromptType(v18, v19, v20);
    v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v30, v40);
    a3 = v28;

    *(v25 + 4) = v31;
    _os_log_impl(&dword_0, v22, v23, "#OngoingCallFlowProducers Emergency during ongoing call - pushing unsupported value offer flow for %s", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v26);
  }

  outlined copy of EmergencyDuringOngoingCallPromptType(v18, v19, v20);
  v32 = ParameterResolutionRecord.intent.getter();
  outlined init with copy of SignalProviding(a3, v40);
  type metadata accessor for PhoneCallCommonCATs();
  static CATOption.defaultMode.getter();
  v33 = CATWrapper.__allocating_init(options:globals:)();
  type metadata accessor for PhoneCallCommonCATPatternsExecutor();
  static CATOption.defaultMode.getter();
  v34 = CATWrapper.__allocating_init(options:globals:)();
  v35 = *(*_s27PhoneCallFlowDelegatePlugin022EmergencyDuringOngoingb5OfferC0C19emergencyPromptType14previousIntent13sharedGlobals10commonCats0Q11CatPatternsAcA0fghbkL0O_So8INIntentCAA06SharedP9Providing_pAA0aB10CommonCATsCAA0abX20CATPatternsExecuting_ptcfCTf4nnnnen_nAA0abxZ8ExecutorC_Tt4g5(v18, v19, v20, v32, v40, v33, v34) + 224);
  v36 = type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INStartCallIntent, INStartCallIntent_ptr);
  v40[0] = v35(v36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow019AnyUnsupportedValueC0CySo17INStartCallIntentCGMd, &_s11SiriKitFlow019AnyUnsupportedValueC0CySo17INStartCallIntentCGMR);
  lazy protocol witness table accessor for type TerminalOntologyNode<VoiceMail.VoiceMailNoun> and conformance TerminalOntologyNode<A>(&lazy protocol witness table cache variable for type AnyUnsupportedValueFlow<INStartCallIntent> and conformance AnyUnsupportedValueFlow<A>, &_s11SiriKitFlow019AnyUnsupportedValueC0CySo17INStartCallIntentCGMd, &_s11SiriKitFlow019AnyUnsupportedValueC0CySo17INStartCallIntentCGMR);
  v37 = Flow.eraseToAnyValueFlow()();

  outlined consume of EmergencyDuringOngoingCallPromptType(v18, v19, v20);

  return v37;
}

{
  v5 = type metadata accessor for CATOption();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow25ParameterResolutionRecordVySo26INAddCallParticipantIntentCGMd, &_s11SiriKitFlow25ParameterResolutionRecordVySo26INAddCallParticipantIntentCGMR);
  v10 = ParameterResolutionRecord.intent.getter();
  v55[2] = v9;
  v11 = ParameterResolutionRecord.result.getter();
  static EmergencyDuringOngoingCallPromptType.from(intent:intentResolutionResult:)(v10, v11);

  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2();
  }

  v12 = type metadata accessor for Logger();
  __swift_project_value_buffer(v12, static Logger.siriPhone);
  v13 = OUTLINED_FUNCTION_0_70();
  outlined copy of EmergencyDuringOngoingCallPromptType(v13, v14, v15);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.debug.getter();
  v18 = OUTLINED_FUNCTION_0_70();
  outlined consume of EmergencyDuringOngoingCallPromptType(v18, v19, v20);
  if (os_log_type_enabled(v16, v17))
  {
    v21 = swift_slowAlloc();
    v55[0] = a2;
    v22 = v21;
    v23 = swift_slowAlloc();
    v56[0] = v23;
    *v22 = 136315138;
    v24 = OUTLINED_FUNCTION_0_70();
    outlined copy of EmergencyDuringOngoingCallPromptType(v24, v25, v26);
    v27 = OUTLINED_FUNCTION_0_70();
    v30 = EmergencyDuringOngoingCallPromptType.description.getter(v27, v28, v29);
    v55[1] = v8;
    v31 = a3;
    v33 = v32;
    v34 = OUTLINED_FUNCTION_0_70();
    outlined consume of EmergencyDuringOngoingCallPromptType(v34, v35, v36);
    v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v33, v56);
    a3 = v31;

    *(v22 + 4) = v37;
    _os_log_impl(&dword_0, v16, v17, "#OngoingCallFlowProducers Emergency during ongoing call - pushing unsupported value offer flow for %s", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v23);
    OUTLINED_FUNCTION_26_0();
    OUTLINED_FUNCTION_26_0();
  }

  v38 = OUTLINED_FUNCTION_0_70();
  outlined copy of EmergencyDuringOngoingCallPromptType(v38, v39, v40);
  v41 = ParameterResolutionRecord.intent.getter();
  outlined init with copy of SignalProviding(a3, v56);
  type metadata accessor for PhoneCallCommonCATs();
  static CATOption.defaultMode.getter();
  v42 = CATWrapper.__allocating_init(options:globals:)();
  type metadata accessor for PhoneCallCommonCATPatternsExecutor();
  static CATOption.defaultMode.getter();
  CATWrapper.__allocating_init(options:globals:)();
  v43 = OUTLINED_FUNCTION_0_70();
  v48 = *(*_s27PhoneCallFlowDelegatePlugin022EmergencyDuringOngoingb5OfferC0C19emergencyPromptType14previousIntent13sharedGlobals10commonCats0Q11CatPatternsAcA0fghbkL0O_So8INIntentCAA06SharedP9Providing_pAA0aB10CommonCATsCAA0abX20CATPatternsExecuting_ptcfCTf4nnnnen_nAA0abxZ8ExecutorC_Tt4g5(v43, v44, v45, v41, v46, v42, v47) + 224);
  v49 = type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INAddCallParticipantIntent, INAddCallParticipantIntent_ptr);
  v56[0] = v48(v49);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow019AnyUnsupportedValueC0CySo26INAddCallParticipantIntentCGMd, &_s11SiriKitFlow019AnyUnsupportedValueC0CySo26INAddCallParticipantIntentCGMR);
  lazy protocol witness table accessor for type TerminalOntologyNode<VoiceMail.VoiceMailNoun> and conformance TerminalOntologyNode<A>(&lazy protocol witness table cache variable for type AnyUnsupportedValueFlow<INAddCallParticipantIntent> and conformance AnyUnsupportedValueFlow<A>, &_s11SiriKitFlow019AnyUnsupportedValueC0CySo26INAddCallParticipantIntentCGMd, &_s11SiriKitFlow019AnyUnsupportedValueC0CySo26INAddCallParticipantIntentCGMR);
  v50 = Flow.eraseToAnyValueFlow()();

  v51 = OUTLINED_FUNCTION_0_70();
  outlined consume of EmergencyDuringOngoingCallPromptType(v51, v52, v53);

  return v50;
}

uint64_t closure #1 in static OngoingCallFlowProducers.makeUnsupportedValueOfferFlowProducer<A, B>(sharedGlobals:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v6 = type metadata accessor for CATOption();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v5 + class metadata base offset for RCHChildFlowFactory);
  v11 = type metadata accessor for ParameterResolutionRecord();
  v12 = ParameterResolutionRecord.intent.getter();
  v39 = v11;
  v40 = a2;
  v13 = ParameterResolutionRecord.result.getter();
  v14 = static EmergencyDuringOngoingCallPromptType.from(intent:intentResolutionResult:)(v12, v13);
  v16 = v15;
  v18 = v17;
  v19 = v17;

  if (v19 == 255)
  {
    v14 = 0;
    v16 = 0;
    v18 = 0;
  }

  if (one-time initialization token for siriPhone != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  __swift_project_value_buffer(v20, static Logger.siriPhone);
  outlined copy of EmergencyDuringOngoingCallPromptType(v14, v16, v18);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.debug.getter();
  outlined consume of EmergencyDuringOngoingCallPromptType(v14, v16, v18);
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v41[0] = v24;
    *v23 = 136315138;
    outlined copy of EmergencyDuringOngoingCallPromptType(v14, v16, v18);
    v25 = EmergencyDuringOngoingCallPromptType.description.getter(v14, v16, v18);
    v37[1] = v9;
    v38 = v10;
    v26 = v25;
    v27 = a3;
    v29 = v28;
    outlined consume of EmergencyDuringOngoingCallPromptType(v14, v16, v18);
    v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v29, v41);
    a3 = v27;

    *(v23 + 4) = v30;
    v10 = v38;
    _os_log_impl(&dword_0, v21, v22, "#OngoingCallFlowProducers Emergency during ongoing call - pushing unsupported value offer flow for %s", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v24);
  }

  outlined copy of EmergencyDuringOngoingCallPromptType(v14, v16, v18);
  v31 = ParameterResolutionRecord.intent.getter();
  outlined init with copy of SignalProviding(a3, v41);
  type metadata accessor for PhoneCallCommonCATs();
  static CATOption.defaultMode.getter();
  v32 = CATWrapper.__allocating_init(options:globals:)();
  type metadata accessor for PhoneCallCommonCATPatternsExecutor();
  static CATOption.defaultMode.getter();
  v33 = CATWrapper.__allocating_init(options:globals:)();
  v34 = _s27PhoneCallFlowDelegatePlugin022EmergencyDuringOngoingb5OfferC0C19emergencyPromptType14previousIntent13sharedGlobals10commonCats0Q11CatPatternsAcA0fghbkL0O_So8INIntentCAA06SharedP9Providing_pAA0aB10CommonCATsCAA0abX20CATPatternsExecuting_ptcfCTf4nnnnen_nAA0abxZ8ExecutorC_Tt4g5(v14, v16, v18, v31, v41, v32, v33);
  v41[0] = (*(*v34 + 224))(v10);
  type metadata accessor for AnyUnsupportedValueFlow();
  swift_getWitnessTable();
  v35 = Flow.eraseToAnyValueFlow()();

  outlined consume of EmergencyDuringOngoingCallPromptType(v14, v16, v18);

  return v35;
}

uint64_t closure #1 in static OngoingCallFlowProducers.makeEmergencyConfirmIntentOfferFlowProducer(sharedGlobals:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for CATOption();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  if (one-time initialization token for siriPhone != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Logger.siriPhone);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_0, v7, v8, "#OngoingCallFlowProducers Emergency during ongoing call - pushing confirm intent offer flow", v9, 2u);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow22IntentResolutionRecordVySo011INStartCallD0CSo0ghD8ResponseCGMd, &_s11SiriKitFlow22IntentResolutionRecordVySo011INStartCallD0CSo0ghD8ResponseCGMR);
  v10 = IntentResolutionRecord.intent.getter();
  v11 = IntentResolutionRecord.intentResponse.getter();
  v12 = IntentResolutionRecord.intent.getter();
  outlined init with copy of SignalProviding(a3, v19);
  type metadata accessor for PhoneCallCommonCATs();
  static CATOption.defaultMode.getter();
  v13 = CATWrapper.__allocating_init(options:globals:)();
  type metadata accessor for PhoneCallCommonCATPatternsExecutor();
  static CATOption.defaultMode.getter();
  v14 = CATWrapper.__allocating_init(options:globals:)();
  v15 = *(*_s27PhoneCallFlowDelegatePlugin022EmergencyDuringOngoingb5OfferC0C19emergencyPromptType14previousIntent13sharedGlobals10commonCats0Q11CatPatternsAcA0fghbkL0O_So8INIntentCAA06SharedP9Providing_pAA0aB10CommonCATsCAA0abX20CATPatternsExecuting_ptcfCTf4nnnnen_nAA0abxZ8ExecutorC_Tt4g5(v10, v11, 1, v12, v19, v13, v14) + 216);
  v16 = type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INStartCallIntent, INStartCallIntent_ptr);
  v19[0] = v15(v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow016AnyConfirmIntentC0CySo011INStartCallF0CGMd, &_s11SiriKitFlow016AnyConfirmIntentC0CySo011INStartCallF0CGMR);
  lazy protocol witness table accessor for type TerminalOntologyNode<VoiceMail.VoiceMailNoun> and conformance TerminalOntologyNode<A>(&lazy protocol witness table cache variable for type AnyConfirmIntentFlow<INStartCallIntent> and conformance AnyConfirmIntentFlow<A>, &_s11SiriKitFlow016AnyConfirmIntentC0CySo011INStartCallF0CGMd, &_s11SiriKitFlow016AnyConfirmIntentC0CySo011INStartCallF0CGMR);
  v17 = Flow.eraseToAnyValueFlow()();

  return v17;
}

uint64_t closure #1 in static OngoingCallFlowProducers.makeConfirmIntentOfferFlowProducer(sharedGlobals:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow22IntentResolutionRecordVySo011INStartCallD0CSo0ghD8ResponseCGMd, &_s11SiriKitFlow22IntentResolutionRecordVySo011INStartCallD0CSo0ghD8ResponseCGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v17[-1] - v8;
  if (one-time initialization token for siriPhone != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static Logger.siriPhone);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_0, v11, v12, "#OngoingCallFlowProducers Call request during ongoing call - pushing confirm intent offer flow", v13, 2u);
  }

  type metadata accessor for OngoingCallConfirmIntentFlow(0);
  (*(v6 + 16))(v9, a2, v5);
  outlined init with copy of SignalProviding(a3, v17);
  v17[0] = OngoingCallConfirmIntentFlow.__allocating_init(rchRecord:sharedGlobals:)(v9, v17);
  lazy protocol witness table accessor for type HangUpAndCallHandleIntentStrategy and conformance CallingIntentContinueInAppStrategy<A, B>(&lazy protocol witness table cache variable for type OngoingCallConfirmIntentFlow and conformance OngoingCallConfirmIntentFlow, type metadata accessor for OngoingCallConfirmIntentFlow);
  v14 = Flow.eraseToAnyValueFlow()();

  return v14;
}

uint64_t _s27PhoneCallFlowDelegatePlugin022EmergencyDuringOngoingb5OfferC0C19emergencyPromptType14previousIntent13sharedGlobals10commonCats0Q11CatPatternsAcA0fghbkL0O_So8INIntentCAA06SharedP9Providing_pAA0aB10CommonCATsCAA0abX20CATPatternsExecuting_ptcfCTf4nnnnen_nAA0abxZ8ExecutorC_Tt4g5(void *a1, void *a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t a7)
{
  v14 = type metadata accessor for EmergencyDuringOngoingCallOfferFlow.State(0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for ConfirmationResponse();
  __swift_storeEnumTagSinglePayload(v17, 1, 2, v18);
  outlined init with copy of SignalProviding(a5, v44);
  v19 = type metadata accessor for EmergencyDuringOngoingCallOfferFlow(0);
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  v22 = swift_allocObject();
  v43[3] = type metadata accessor for PhoneCallCommonCATPatternsExecutor();
  v43[4] = &protocol witness table for PhoneCallCommonCATPatternsExecutor;
  v43[0] = a7;
  outlined init with copy of EmergencyDuringOngoingCallOfferFlow.State(v17, v22 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin35EmergencyDuringOngoingCallOfferFlow_state);
  *(v22 + 16) = a1;
  *(v22 + 24) = a2;
  *(v22 + 32) = a3;
  *(v22 + 40) = a4;
  outlined init with copy of SignalProviding(v44, v22 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin35EmergencyDuringOngoingCallOfferFlow_sharedGlobals);
  *(v22 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin35EmergencyDuringOngoingCallOfferFlow_commonCats) = a6;
  outlined init with copy of SignalProviding(v43, v22 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin35EmergencyDuringOngoingCallOfferFlow_commonCatPatterns);
  outlined copy of EmergencyDuringOngoingCallPromptType(a1, a2, a3);
  v23 = one-time initialization token for siriPhone;
  v41 = a4;

  if (v23 != -1)
  {
    swift_once();
  }

  v24 = type metadata accessor for Logger();
  __swift_project_value_buffer(v24, static Logger.siriPhone);
  outlined copy of EmergencyDuringOngoingCallPromptType(a1, a2, a3);
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.debug.getter();
  outlined consume of EmergencyDuringOngoingCallPromptType(a1, a2, a3);
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v39 = a6;
    v29 = v28;
    v42 = v28;
    *v27 = 136315138;
    outlined copy of EmergencyDuringOngoingCallPromptType(a1, a2, a3);
    v30 = EmergencyDuringOngoingCallPromptType.description.getter(a1, a2, a3);
    v40 = v17;
    v31 = v30;
    v38 = a5;
    v33 = v32;
    outlined consume of EmergencyDuringOngoingCallPromptType(a1, a2, a3);
    v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v33, &v42);

    *(v27 + 4) = v34;
    _os_log_impl(&dword_0, v25, v26, "#EmergencyDuringOngoingCallOfferFlow initialized with promptType: %s", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v29);

    outlined consume of EmergencyDuringOngoingCallPromptType(a1, a2, a3);
    __swift_destroy_boxed_opaque_existential_1(v38);
    __swift_destroy_boxed_opaque_existential_1(v44);
    v35 = v40;
  }

  else
  {

    outlined consume of EmergencyDuringOngoingCallPromptType(a1, a2, a3);
    __swift_destroy_boxed_opaque_existential_1(a5);
    __swift_destroy_boxed_opaque_existential_1(v44);
    v35 = v17;
  }

  outlined destroy of EmergencyDuringOngoingCallOfferFlow.State(v35);
  __swift_destroy_boxed_opaque_existential_1(v43);
  return v22;
}

uint64_t lazy protocol witness table accessor for type HangUpAndCallHandleIntentStrategy and conformance CallingIntentContinueInAppStrategy<A, B>(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t partial apply for specialized closure #1 in static OngoingCallFlowProducers.makeUnsupportedValueOfferFlowProducer<A, B>(sharedGlobals:)(uint64_t a1, uint64_t a2)
{
  return specialized closure #1 in static OngoingCallFlowProducers.makeUnsupportedValueOfferFlowProducer<A, B>(sharedGlobals:)(a1, a2, v2 + 16);
}

{
  return specialized closure #1 in static OngoingCallFlowProducers.makeUnsupportedValueOfferFlowProducer<A, B>(sharedGlobals:)(a1, a2, v2 + 16);
}

void static OngoingCallOfferOptions.from(rchRecord:callStateProvider:nlIntent:)(char *a1, void *a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow22IntentResolutionRecordVySo011INStartCallD0CSo0ghD8ResponseCGMd, &_s11SiriKitFlow22IntentResolutionRecordVySo011INStartCallD0CSo0ghD8ResponseCGMR);
  v6 = IntentResolutionRecord.intent.getter();
  IntentResolutionRecord.intentResponse.getter();
  v7 = OUTLINED_FUNCTION_40_0();
  v8 = static EmergencyUtils.requiresEmergencyConfirmation(intent:intentResponse:)(v7, a1);

  if (v8)
  {
    OUTLINED_FUNCTION_11_8();
    if (!v9)
    {
      OUTLINED_FUNCTION_6_2();
    }

    v10 = type metadata accessor for Logger();
    __swift_project_value_buffer(v10, static Logger.siriPhone);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_10_0(v12))
    {
      v13 = OUTLINED_FUNCTION_65_0();
      OUTLINED_FUNCTION_11_1(v13);
      OUTLINED_FUNCTION_33(&dword_0, v14, v15, "#OngoingCallOfferOptions Emergency call only offers endAndNewCall");
      OUTLINED_FUNCTION_12_3();
    }

    v16 = &outlined read-only object #3 of static OngoingCallOfferOptions.from(rchRecord:callStateProvider:nlIntent:);
LABEL_23:

    _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC27PhoneCallFlowDelegatePlugin07OngoingF12OfferOptionsO_Tt0g5(v16);
    return;
  }

  OUTLINED_FUNCTION_15_33();
  v17 = IntentResolutionRecord.app.getter();
  v18 = App.isFirstParty()();

  if (!v18)
  {
    OUTLINED_FUNCTION_11_8();
    if (!v9)
    {
      OUTLINED_FUNCTION_6_2();
    }

    v30 = type metadata accessor for Logger();
    __swift_project_value_buffer(v30, static Logger.siriPhone);
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_10_0(v32))
    {
      v33 = OUTLINED_FUNCTION_65_0();
      OUTLINED_FUNCTION_11_1(v33);
      OUTLINED_FUNCTION_33(&dword_0, v34, v35, "#OngoingCallOfferOptions 3P call only offers endAndNewCall");
      OUTLINED_FUNCTION_12_3();
    }

    v16 = &outlined read-only object #2 of static OngoingCallOfferOptions.from(rchRecord:callStateProvider:nlIntent:);
    goto LABEL_23;
  }

  OUTLINED_FUNCTION_15_33();
  v19 = IntentResolutionRecord.intent.getter();
  v20 = outlined bridged method (ob) of @objc INStartCallIntent.contacts.getter(v19);
  if (v20)
  {
    v21 = v20;
  }

  else
  {
    v21 = &_swiftEmptyArrayStorage;
  }

  specialized Array.count.getter(v21);
  OUTLINED_FUNCTION_40_0();

  if (v17 > 1 || (OUTLINED_FUNCTION_15_33(), v22 = IntentResolutionRecord.intent.getter(), v23 = INStartCallIntent.isGroupCall()(), v22, v23))
  {
    OUTLINED_FUNCTION_11_8();
    if (!v9)
    {
      OUTLINED_FUNCTION_6_2();
    }

    v24 = type metadata accessor for Logger();
    __swift_project_value_buffer(v24, static Logger.siriPhone);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_10_0(v26))
    {
      v27 = OUTLINED_FUNCTION_65_0();
      OUTLINED_FUNCTION_11_1(v27);
      OUTLINED_FUNCTION_33(&dword_0, v28, v29, "#OngoingCallOfferOptions Group call only offers endAndNewCall");
      OUTLINED_FUNCTION_12_3();
    }

    v16 = &outlined read-only object #1 of static OngoingCallOfferOptions.from(rchRecord:callStateProvider:nlIntent:);
    goto LABEL_23;
  }

  v36 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v37 = *(v36 + 24);
  v38 = OUTLINED_FUNCTION_40_0();
  if (!v39(v38, v36))
  {
    OUTLINED_FUNCTION_11_8();
    if (!v9)
    {
      OUTLINED_FUNCTION_6_2();
    }

    v45 = type metadata accessor for Logger();
    __swift_project_value_buffer(v45, static Logger.siriPhone);
    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_10_0(v47))
    {
      v48 = OUTLINED_FUNCTION_65_0();
      OUTLINED_FUNCTION_11_1(v48);
      OUTLINED_FUNCTION_33(&dword_0, v49, v50, "#OngoingCallOfferOptions There's no ongoing call, but OngoingCall Flows are in use. Classify as .holdAndNewCall.");
      OUTLINED_FUNCTION_12_3();
    }

    v16 = &outlined read-only object #0 of static OngoingCallOfferOptions.from(rchRecord:callStateProvider:nlIntent:);
    goto LABEL_23;
  }

  v41 = v40;
  outlined init with copy of PhoneCallFlowState<INHangUpCallIntent, INHangUpCallIntentResponse>(a3, v94, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMR);
  v42 = v95;
  if (v95)
  {
    v43 = v96;
    __swift_project_boxed_opaque_existential_1(v94, v95);
    v44 = (*(v43 + 32))(v42, v43);
    __swift_destroy_boxed_opaque_existential_1(v94);
  }

  else
  {
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v94, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMR);
    v44 = 2;
  }

  OUTLINED_FUNCTION_15_33();
  v51 = IntentResolutionRecord.intent.getter();
  [v51 preferredCallProvider];

  ObjectType = swift_getObjectType();
  if (((*(v41 + 32))(ObjectType, v41) & 1) != 0 && v44 == 2)
  {
    LOBYTE(v92) = 0;
  }

  else if ((SPHCall.isFTAudio.getter() & 1) != 0 && (v44 == 2) != ((v44 & 1) == 0))
  {
    LOBYTE(v92) = 0;
  }

  else
  {
    v92 = SPHCall.isFTVideo.getter() & v44 ^ 1;
  }

  v52 = a2[3];
  v53 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v52);
  (*(v53 + 40))(v94, v52, v53);
  v54 = v95;
  v55 = v96;
  __swift_project_boxed_opaque_existential_1(v94, v95);
  v56 = (*(v55 + 24))(v54, v55);
  __swift_destroy_boxed_opaque_existential_1(v94);
  OUTLINED_FUNCTION_11_8();
  if (!v9)
  {
    OUTLINED_FUNCTION_6_2();
  }

  v57 = type metadata accessor for Logger();
  __swift_project_value_buffer(v57, static Logger.siriPhone);
  OUTLINED_FUNCTION_40_0();
  swift_unknownObjectRetain();
  v58 = Logger.logObject.getter();
  v59 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v58, v59))
  {
    v60 = swift_slowAlloc();
    v91 = v56;
    v61 = swift_slowAlloc();
    v94[0] = v61;
    *v60 = 67109634;
    *(v60 + 4) = SPHCall.isFTAudio.getter() & 1;
    *(v60 + 8) = 1024;
    *(v60 + 10) = SPHCall.isFTVideo.getter() & 1;
    swift_unknownObjectRelease();
    *(v60 + 14) = 2080;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0aB6AVModeOSgMd, &_s27PhoneCallFlowDelegatePlugin0aB6AVModeOSgMR);
    v62 = String.init<A>(describing:)();
    v64 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v62, v63, v94);

    *(v60 + 16) = v64;
    _os_log_impl(&dword_0, v58, v59, "#OngoingCallOfferOptions isFTAudio: %{BOOL}d isFTVideo %{BOOL}d requestedAVMode: %s", v60, 0x18u);
    __swift_destroy_boxed_opaque_existential_1(v61);
    v56 = v91;
  }

  else
  {

    swift_unknownObjectRelease();
  }

  OUTLINED_FUNCTION_23_17();
  OUTLINED_FUNCTION_22_17();
  v66 = v65 | ~v56 | v92;
  v67 = _swiftEmptySetSingleton;
  if ((v66 & 1) == 0)
  {
    v68 = _swiftEmptySetSingleton[5];
    Hasher.init(_seed:)();
    String.hash(into:)();
    Hasher._finalize()();
    OUTLINED_FUNCTION_5_53();
    v71 = v70 & ~v69;
    if ((*(&_swiftEmptySetSingleton[7] + ((v71 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v71))
    {
      v72 = ~v69;
      while (1)
      {
        v73 = *(_swiftEmptySetSingleton[6] + v71);
        if (v73 != 1 && v73 != 2)
        {
          break;
        }

        v74 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v74)
        {
          goto LABEL_55;
        }

        v71 = (v71 + 1) & v72;
        if (((*(&_swiftEmptySetSingleton[7] + ((v71 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v71) & 1) == 0)
        {
          goto LABEL_54;
        }
      }

      v67 = _swiftEmptySetSingleton;
    }

    else
    {
LABEL_54:
      swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_12_39();
      specialized _NativeSet.insertNew(_:at:isUnique:)(0, v71, v75);
      v67 = v94[0];
    }

LABEL_55:
    OUTLINED_FUNCTION_23_17();
    OUTLINED_FUNCTION_22_17();
  }

  if (((*(v41 + 192))(ObjectType, v41) & 1) == 0 || (OUTLINED_FUNCTION_15_33(), v76 = IntentResolutionRecord.intent.getter(), a1 = [v76 callCapability], v76, a1 != &dword_0 + 1))
  {
    v85 = v67[5];
    Hasher.init(_seed:)();
    String.hash(into:)();
    Hasher._finalize()();
    OUTLINED_FUNCTION_5_53();
    OUTLINED_FUNCTION_16_33(v86, v87);
    if (v88)
    {
      while (!a1[v67[6]] || a1[v67[6]] == 2)
      {
        v89 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v89)
        {
          goto LABEL_74;
        }

        OUTLINED_FUNCTION_9_42();
        if ((v90 & 1) == 0)
        {
          goto LABEL_69;
        }
      }

      goto LABEL_73;
    }

LABEL_69:
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_12_39();
    v84 = 1;
LABEL_70:
    specialized _NativeSet.insertNew(_:at:isUnique:)(v84, a1, v83);
    swift_unknownObjectRelease();
    return;
  }

  v77 = v67[5];
  Hasher.init(_seed:)();
  String.hash(into:)();
  Hasher._finalize()();
  OUTLINED_FUNCTION_5_53();
  OUTLINED_FUNCTION_16_33(v78, v79);
  if ((v80 & 1) == 0)
  {
LABEL_63:
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_12_39();
    v84 = 2;
    goto LABEL_70;
  }

  while (!*(v67[6] + 1) || *(v67[6] + 1) == 1)
  {
    v81 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v81)
    {
      goto LABEL_74;
    }

    OUTLINED_FUNCTION_9_42();
    if ((v82 & 1) == 0)
    {
      goto LABEL_63;
    }
  }

LABEL_73:

LABEL_74:
  swift_unknownObjectRelease();
}

uint64_t Collection<>.isAddOrNewCall.getter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  lazy protocol witness table accessor for type OngoingCallOfferOptions and conformance OngoingCallOfferOptions();
  v5 = Sequence<>.contains(_:)();
  v6 = 0;
  if (v5)
  {
    v6 = Collection<>.isAnyNewCall.getter(a1, a2);
  }

  return v6 & 1;
}

uint64_t Collection<>.isAnyNewCall.getter(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  lazy protocol witness table accessor for type OngoingCallOfferOptions and conformance OngoingCallOfferOptions();
  v3 = Sequence<>.contains(_:)();
  v4 = 1;
  if ((v3 & 1) == 0)
  {
    v4 = Sequence<>.contains(_:)();
  }

  return v4 & 1;
}

uint64_t OngoingCallOfferOptions.description.getter(char a1)
{
  if (!a1)
  {
    return 6579297;
  }

  if (a1 == 1)
  {
    return 0x654E646E41646E65;
  }

  return 0x4E646E41646C6F68;
}

PhoneCallFlowDelegatePlugin::OngoingCallOfferOptions_optional __swiftcall OngoingCallOfferOptions.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v3._countAndFlagsBits = rawValue._countAndFlagsBits;
  v3._object = object;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of OngoingCallOfferOptions.init(rawValue:), v3);
  OUTLINED_FUNCTION_40_0();

  if (v1 >= 3)
  {
    return 3;
  }

  else
  {
    return v1;
  }
}

PhoneCallFlowDelegatePlugin::OngoingCallOfferOptions_optional protocol witness for RawRepresentable.init(rawValue:) in conformance OngoingCallOfferOptions@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::OngoingCallOfferOptions_optional *a2@<X8>)
{
  result.value = OngoingCallOfferOptions.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance OngoingCallOfferOptions@<X0>(uint64_t *a1@<X8>)
{
  result = OngoingCallOfferOptions.description.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

void specialized _NativeSet.insertNew(_:at:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_2_71();
  if (!(!v26 & v10) || (v7 & 1) == 0)
  {
    if (v7)
    {
      OUTLINED_FUNCTION_18_19(v8);
      specialized _NativeSet.resize(capacity:)();
      goto LABEL_11;
    }

    if (v9 <= v8)
    {
      v17 = OUTLINED_FUNCTION_18_19(v8);
      specialized _NativeSet.copyAndResize(capacity:)(v17);
LABEL_11:
      v18 = *v3;
      v19 = *(*v3 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      Hasher._finalize()();
      v20 = *(v18 + 32);
      OUTLINED_FUNCTION_6_6();
      v23 = ~v22;
      while (1)
      {
        a3 = v21 & v23;
        OUTLINED_FUNCTION_19_25();
        if (((*(v18 + 56 + v24) >> a3) & 1) == 0)
        {
          goto LABEL_8;
        }

        v25 = (*(v18 + 48) + 16 * a3);
        v26 = *v25 == a1 && v25[1] == a2;
        if (v26 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          goto LABEL_20;
        }

        v21 = a3 + 1;
      }
    }

    specialized _NativeSet.copy()();
  }

LABEL_8:
  OUTLINED_FUNCTION_1_73(*v3);
  v12 = (v11 + 16 * a3);
  *v12 = a1;
  v12[1] = a2;
  OUTLINED_FUNCTION_17_24(v13);
  if (v16)
  {
    __break(1u);
LABEL_20:
    ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v14 + 16) = v15;
  }
}

void specialized _NativeSet.insertNew(_:at:isUnique:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_2_71();
  if (!(!v9 & v8) || (v5 & 1) == 0)
  {
    if (v5)
    {
      specialized _NativeSet.resize(capacity:)(v6 + 1);
      goto LABEL_11;
    }

    if (v7 <= v6)
    {
      specialized _NativeSet.copyAndResize(capacity:)(v6 + 1);
LABEL_11:
      v15 = *v2;
      v16 = *(*v2 + 40);
      type metadata accessor for App();
      OUTLINED_FUNCTION_3_61();
      lazy protocol witness table accessor for type App and conformance App(v17, v18);
      dispatch thunk of Hashable._rawHashValue(seed:)();
      OUTLINED_FUNCTION_5_53();
      v21 = ~v20;
      while (1)
      {
        a2 = v19 & v21;
        OUTLINED_FUNCTION_19_25();
        if (((*(v15 + 56 + v22) >> a2) & 1) == 0)
        {
          goto LABEL_8;
        }

        v24 = *(*(v15 + 48) + 8 * a2);
        OUTLINED_FUNCTION_3_61();
        lazy protocol witness table accessor for type App and conformance App(&lazy protocol witness table cache variable for type App and conformance App, v23);
        if (dispatch thunk of static Equatable.== infix(_:_:)())
        {
          goto LABEL_16;
        }

        v19 = a2 + 1;
      }
    }

    specialized _NativeSet.copy()();
  }

LABEL_8:
  OUTLINED_FUNCTION_1_73(*v2);
  *(v10 + 8 * a2) = a1;
  OUTLINED_FUNCTION_17_24(v11);
  if (v14)
  {
    __break(1u);
LABEL_16:
    ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v12 + 16) = v13;
  }
}

{
  OUTLINED_FUNCTION_2_71();
  if (!(!v9 & v8) || (v5 & 1) == 0)
  {
    if (v5)
    {
      specialized _NativeSet.resize(capacity:)(v6 + 1);
      goto LABEL_11;
    }

    if (v7 <= v6)
    {
      specialized _NativeSet.copyAndResize(capacity:)(v6 + 1);
LABEL_11:
      v14 = *v2;
      v15 = *(*v2 + 40);
      v16 = static Hasher._hash(seed:_:)();
      v17 = ~(-1 << *(v14 + 32));
      while (1)
      {
        a2 = v16 & v17;
        if (((*(v14 + 56 + (((v16 & v17) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v16 & v17)) & 1) == 0)
        {
          goto LABEL_8;
        }

        if (*(*(v14 + 48) + 8 * a2) == a1)
        {
          goto LABEL_16;
        }

        v16 = a2 + 1;
      }
    }

    specialized _NativeSet.copy()();
  }

LABEL_8:
  OUTLINED_FUNCTION_7_43(*v2);
  *(*(v10 + 48) + 8 * a2) = a1;
  OUTLINED_FUNCTION_17_24(v10);
  if (v13)
  {
    __break(1u);
LABEL_16:
    ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v11 + 16) = v12;
  }
}

void specialized _NativeSet.insertNew(_:at:isUnique:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  OUTLINED_FUNCTION_2_71();
  if (!(!v23 & v11) || (v8 & 1) == 0)
  {
    if (v8)
    {
      OUTLINED_FUNCTION_18_19(v9);
      specialized _NativeSet.resize(capacity:)();
    }

    else
    {
      if (v10 > v9)
      {
        specialized _NativeSet.copy()();
        goto LABEL_24;
      }

      v12 = OUTLINED_FUNCTION_18_19(v9);
      specialized _NativeSet.copyAndResize(capacity:)(v12);
    }

    v13 = *v3;
    v14 = *(*v3 + 40);
    Hasher.init(_seed:)();
    if (a2)
    {
      Hasher._combine(_:)(1u);
      String.hash(into:)();
    }

    else
    {
      Hasher._combine(_:)(0);
    }

    Hasher._finalize()();
    v15 = v13 + 56;
    v16 = *(v13 + 32);
    OUTLINED_FUNCTION_6_6();
    a3 = v18 & ~v17;
    if ((*(v13 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
    {
      v19 = ~v17;
      v20 = *(v13 + 48);
      do
      {
        v21 = (v20 + 16 * a3);
        v22 = v21[1];
        if (v22)
        {
          if (a2)
          {
            v23 = *v21 == a1 && v22 == a2;
            if (v23 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {
              goto LABEL_27;
            }
          }
        }

        else if (!a2)
        {
          goto LABEL_27;
        }

        a3 = (a3 + 1) & v19;
        OUTLINED_FUNCTION_19_25();
      }

      while (((*(v15 + v24) >> a3) & 1) != 0);
    }
  }

LABEL_24:
  OUTLINED_FUNCTION_1_73(*v4);
  v26 = (v25 + 16 * a3);
  *v26 = a1;
  v26[1] = a2;
  OUTLINED_FUNCTION_17_24(v27);
  if (v30)
  {
    __break(1u);
LABEL_27:
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
    ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v28 + 16) = v29;
  }
}

Swift::Int specialized _NativeSet.insertNew(_:at:isUnique:)(Swift::Int result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_29;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      result = specialized _NativeSet.copy()();
      goto LABEL_29;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v6 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();

  result = Hasher._finalize()();
  v10 = -1 << *(v8 + 32);
  a2 = result & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    do
    {
      if (*(*(v8 + 48) + a2))
      {
        if (*(*(v8 + 48) + a2) == 1)
        {
          v12 = 0x654E646E41646E65;
          v13 = 0xED00006C6C614377;
        }

        else
        {
          v12 = 0x4E646E41646C6F68;
          v13 = 0xEE006C6C61437765;
        }
      }

      else
      {
        v13 = 0xE300000000000000;
        v12 = 6579297;
      }

      if (v5)
      {
        v14 = v5 == 1 ? 0x654E646E41646E65 : 0x4E646E41646C6F68;
        v15 = v5 == 1 ? 0xED00006C6C614377 : 0xEE006C6C61437765;
      }

      else
      {
        v15 = 0xE300000000000000;
        v14 = 6579297;
      }

      if (v12 == v14 && v13 == v15)
      {
        goto LABEL_32;
      }

      v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v17)
      {
        goto LABEL_33;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_29:
  v18 = *v22;
  *(*v22 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v18 + 48) + a2) = v5;
  v19 = *(v18 + 16);
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  if (!v20)
  {
    *(v18 + 16) = v21;
    return result;
  }

  __break(1u);
LABEL_32:

LABEL_33:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t specialized _NativeSet.insertNew(_:at:isUnique:)(uint64_t a1, unint64_t a2, char a3)
{
  v7 = type metadata accessor for UsoEntity_applePhoneCall_PhoneCallAttribute.DefinedValues();
  v8 = OUTLINED_FUNCTION_7(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  __chkstk_darwin(v8);
  v61 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSg_AFtMd, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSg_AFtMR);
  v15 = OUTLINED_FUNCTION_23_1(v14);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v54 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMd, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMR);
  v21 = OUTLINED_FUNCTION_7(v20);
  v60 = v22;
  v24 = *(v23 + 64);
  v25 = __chkstk_darwin(v21);
  v27 = &v54 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v29 = &v54 - v28;
  OUTLINED_FUNCTION_2_71();
  v56 = v3;
  if (!(!v42 & v33) || (a3 & 1) == 0)
  {
    if (a3)
    {
      v55 = v30;
      specialized _NativeSet.resize(capacity:)(v31 + 1);
    }

    else
    {
      if (v32 > v31)
      {
        specialized _NativeSet.copy()();
        goto LABEL_22;
      }

      v55 = v30;
      specialized _NativeSet.copyAndResize(capacity:)(v31 + 1);
    }

    v34 = *v3;
    v35 = *(*v3 + 40);
    Hasher.init(_seed:)();
    specialized Optional<A>.hash(into:)();
    Hasher._finalize()();
    v66 = v34 + 56;
    v67 = v34;
    v36 = *(v34 + 32);
    OUTLINED_FUNCTION_6_6();
    a2 = v38 & ~v37;
    if ((*(v39 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v65 = ~v37;
      v58 = (v10 + 32);
      v59 = v14;
      v40 = *(v60 + 72);
      v63 = (v10 + 8);
      v64 = v40;
      v57 = a1;
      while (1)
      {
        OUTLINED_FUNCTION_27_18(*(v67 + 48) + v64 * a2, v29);
        v41 = *(v14 + 48);
        OUTLINED_FUNCTION_27_18(v29, v19);
        OUTLINED_FUNCTION_27_18(a1, &v19[v41]);
        OUTLINED_FUNCTION_6_1(v19);
        if (v42)
        {
          break;
        }

        OUTLINED_FUNCTION_27_18(v19, v27);
        OUTLINED_FUNCTION_6_1(&v19[v41]);
        if (v42)
        {
          OUTLINED_FUNCTION_25_18(v29);
          (*v63)(v27, v7);
LABEL_19:
          outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v19, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSg_AFtMd, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSg_AFtMR);
          goto LABEL_21;
        }

        v43 = v61;
        (*v58)(v61, &v19[v41], v7);
        lazy protocol witness table accessor for type App and conformance App(&lazy protocol witness table cache variable for type UsoEntity_applePhoneCall_PhoneCallAttribute.DefinedValues and conformance UsoEntity_applePhoneCall_PhoneCallAttribute.DefinedValues, &type metadata accessor for UsoEntity_applePhoneCall_PhoneCallAttribute.DefinedValues);
        v62 = dispatch thunk of static Equatable.== infix(_:_:)();
        v44 = *v63;
        v45 = v43;
        v14 = v59;
        (*v63)(v45, v7);
        OUTLINED_FUNCTION_25_18(v29);
        v44(v27, v7);
        a1 = v57;
        OUTLINED_FUNCTION_25_18(v19);
        if (v62)
        {
          goto LABEL_26;
        }

LABEL_21:
        a2 = (a2 + 1) & v65;
        OUTLINED_FUNCTION_19_25();
        if (((*(v47 + v46) >> a2) & 1) == 0)
        {
          goto LABEL_22;
        }
      }

      OUTLINED_FUNCTION_25_18(v29);
      OUTLINED_FUNCTION_6_1(&v19[v41]);
      if (v42)
      {
        goto LABEL_25;
      }

      goto LABEL_19;
    }
  }

LABEL_22:
  v48 = a1;
  v49 = *v56;
  *(*v56 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = outlined init with take of UsoEntity_applePhoneCall_PhoneCallAttribute.DefinedValues?(v48, *(v49 + 48) + *(v60 + 72) * a2);
  v51 = *(v49 + 16);
  v52 = __OFADD__(v51, 1);
  v53 = v51 + 1;
  if (v52)
  {
    __break(1u);
LABEL_25:
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v19, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMd, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMR);
LABEL_26:
    result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v49 + 16) = v53;
  }

  return result;
}

void specialized _NativeSet.insertNew(_:at:isUnique:)()
{
  OUTLINED_FUNCTION_2_71();
  if (!(!v5 & v4) || (v1 & 1) == 0)
  {
    if (v1)
    {
      specialized _NativeSet.resize(capacity:)();
      goto LABEL_9;
    }

    if (v3 <= v2)
    {
      specialized _NativeSet.copyAndResize(capacity:)(v2 + 1);
LABEL_9:
      v6 = *v0;
      v7 = *(*v0 + 40);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(0);
      Hasher._finalize()();
      v8 = *(v6 + 32);
      OUTLINED_FUNCTION_6_6();
      if ((*(v6 + (((v9 & ~v10) >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> (v9 & ~v10)))
      {
        goto LABEL_13;
      }

      goto LABEL_10;
    }

    specialized _NativeSet.copy()();
  }

LABEL_10:
  OUTLINED_FUNCTION_7_43(*v0);
  OUTLINED_FUNCTION_17_24(v11);
  if (!v14)
  {
    *(v12 + 16) = v13;
    return;
  }

  __break(1u);
LABEL_13:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void *specialized _NativeSet.copy()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd, &_ss11_SetStorageCySSGMR);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + 16 * v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy17SiriAppResolution0D0CGMd, &_ss11_SetStorageCy17SiriAppResolution0D0CGMR);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        *(*(v4 + 48) + 8 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 8 * (v14 | (v8 << 6)));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSSgGMd, &_ss11_SetStorageCySSSgGMR);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        *(*(v4 + 48) + 16 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 16 * (v14 | (v8 << 6)));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySiGMd, &_ss11_SetStorageCySiGMR);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy27PhoneCallFlowDelegatePlugin07OngoingD12OfferOptionsOGMd, &_ss11_SetStorageCy27PhoneCallFlowDelegatePlugin07OngoingD12OfferOptionsOGMR);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMd, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v6 = &v23 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy12SiriOntology025UsoEntity_applePhoneCall_hI9AttributeC13DefinedValuesOSgGMd, &_ss11_SetStorageCy12SiriOntology025UsoEntity_applePhoneCall_hI9AttributeC13DefinedValuesOSgGMR);
  v7 = *v0;
  v8 = static _SetStorage.copy(original:)();
  v9 = v8;
  if (*(v7 + 16))
  {
    v24 = v1;
    result = (v8 + 56);
    v11 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || result >= v7 + 56 + 8 * v11)
    {
      result = memmove(result, (v7 + 56), 8 * v11);
    }

    v13 = 0;
    *(v9 + 16) = *(v7 + 16);
    v14 = 1 << *(v7 + 32);
    v15 = -1;
    v16 = *(v7 + 56);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v17 = v15 & v16;
    v18 = (v14 + 63) >> 6;
    if ((v15 & v16) != 0)
    {
      do
      {
        v19 = __clz(__rbit64(v17));
        v17 &= v17 - 1;
LABEL_17:
        v22 = *(v3 + 72) * (v19 | (v13 << 6));
        outlined init with copy of PhoneCallFlowState<INHangUpCallIntent, INHangUpCallIntentResponse>(*(v7 + 48) + v22, v6, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMd, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMR);
        result = outlined init with take of UsoEntity_applePhoneCall_PhoneCallAttribute.DefinedValues?(v6, *(v9 + 48) + v22);
      }

      while (v17);
    }

    v20 = v13;
    while (1)
    {
      v13 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v13 >= v18)
      {

        v1 = v24;
        goto LABEL_21;
      }

      v21 = *(v7 + 56 + 8 * v13);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v17 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v9;
  }

  return result;
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy27PhoneCallFlowDelegatePlugin23SharedNeedsValueContextC0iJ4CaseOGMd, &_ss11_SetStorageCy27PhoneCallFlowDelegatePlugin23SharedNeedsValueContextC0iJ4CaseOGMR);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    v12 = (v9 + 63) >> 6;
    if (v11)
    {
      goto LABEL_15;
    }

    while (1)
    {
      v13 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v13 >= v12)
      {
        goto LABEL_17;
      }

      v11 = *(v2 + 56 + 8 * v13);
      ++v8;
      if (v11)
      {
        v8 = v13;
        do
        {
LABEL_15:
          v11 &= v11 - 1;
        }

        while (v11);
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    *v1 = v4;
  }

  return result;
}

uint64_t specialized _NativeSet.copyAndResize(capacity:)(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd, &_ss11_SetStorageCySSGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_14:
        v16 = (*(v3 + 48) + 16 * (v13 | (v7 << 6)));
        v17 = *v16;
        v18 = v16[1];
        v19 = *(v6 + 40);
        Hasher.init(_seed:)();

        String.hash(into:)();
        result = Hasher._finalize()();
        v20 = -1 << *(v6 + 32);
        v21 = result & ~v20;
        v22 = v21 >> 6;
        if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
        {
          break;
        }

        v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
        v28 = (*(v6 + 48) + 16 * v23);
        *v28 = v17;
        v28[1] = v18;
        ++*(v6 + 16);
        if (!v10)
        {
          goto LABEL_9;
        }
      }

      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v14 = v7;
      while (1)
      {
        v7 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v7 >= v11)
        {

          v2 = v29;
          goto LABEL_27;
        }

        v15 = *(v3 + 56 + 8 * v7);
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v10 = (v15 - 1) & v15;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v6;
  }

  return result;
}

{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy17SiriAppResolution0D0CGMd, &_ss11_SetStorageCy17SiriAppResolution0D0CGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v27 = v2;
    v28 = v3;
    v7 = 0;
    v8 = v3 + 56;
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    if (v11)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v11));
        v29 = (v11 - 1) & v11;
LABEL_14:
        v17 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
        v18 = *(v6 + 40);
        type metadata accessor for App();
        lazy protocol witness table accessor for type App and conformance App(&lazy protocol witness table cache variable for type App and conformance App, &type metadata accessor for App);

        result = dispatch thunk of Hashable._rawHashValue(seed:)();
        v19 = -1 << *(v6 + 32);
        v20 = result & ~v19;
        v21 = v20 >> 6;
        if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
        {
          break;
        }

        v22 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v13 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
        *(*(v6 + 48) + 8 * v22) = v17;
        ++*(v6 + 16);
        v3 = v28;
        v11 = v29;
        if (!v29)
        {
          goto LABEL_9;
        }
      }

      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v13 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v15 = v7;
      while (1)
      {
        v7 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          break;
        }

        if (v7 >= v12)
        {

          v2 = v27;
          goto LABEL_27;
        }

        v16 = *(v8 + 8 * v7);
        ++v15;
        if (v16)
        {
          v14 = __clz(__rbit64(v16));
          v29 = (v16 - 1) & v16;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v6;
  }

  return result;
}

{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSSgGMd, &_ss11_SetStorageCySSSgGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_14:
        v16 = (*(v3 + 48) + 16 * (v13 | (v7 << 6)));
        v18 = *v16;
        v17 = v16[1];
        v19 = *(v6 + 40);
        Hasher.init(_seed:)();
        if (v17)
        {
          Hasher._combine(_:)(1u);

          String.hash(into:)();
        }

        else
        {
          Hasher._combine(_:)(0);
        }

        result = Hasher._finalize()();
        v20 = -1 << *(v6 + 32);
        v21 = result & ~v20;
        v22 = v21 >> 6;
        if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
        {
          break;
        }

        v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
        *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
        v28 = (*(v6 + 48) + 16 * v23);
        *v28 = v18;
        v28[1] = v17;
        ++*(v6 + 16);
        if (!v10)
        {
          goto LABEL_9;
        }
      }

      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_26;
        }
      }
    }

    else
    {
LABEL_9:
      v14 = v7;
      while (1)
      {
        v7 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v7 >= v11)
        {

          v2 = v29;
          goto LABEL_30;
        }

        v15 = *(v3 + 56 + 8 * v7);
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v10 = (v15 - 1) & v15;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_30:
    *v2 = v6;
  }

  return result;
}

{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySiGMd, &_ss11_SetStorageCySiGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_14:
        v16 = *(*(v3 + 48) + 8 * (v13 | (v7 << 6)));
        v17 = *(v6 + 40);
        result = static Hasher._hash(seed:_:)();
        v18 = -1 << *(v6 + 32);
        v19 = result & ~v18;
        v20 = v19 >> 6;
        if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
        {
          break;
        }

        v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
        *(*(v6 + 48) + 8 * v21) = v16;
        ++*(v6 + 16);
        if (!v10)
        {
          goto LABEL_9;
        }
      }

      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v12 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v14 = v7;
      while (1)
      {
        v7 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v7 >= v11)
        {
          goto LABEL_25;
        }

        v15 = *(v3 + 56 + 8 * v7);
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v10 = (v15 - 1) & v15;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
LABEL_25:

    *v2 = v6;
  }

  return result;
}

{
  v2 = v1;
  v4 = type metadata accessor for UsoEntity_applePhoneCall_PhoneCallAttribute.DefinedValues();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v44 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMd, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMR);
  v47 = *(v8 - 8);
  v9 = *(v47 + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v49 = &v41 - v13;
  v14 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v15 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy12SiriOntology025UsoEntity_applePhoneCall_hI9AttributeC13DefinedValuesOSgGMd, &_ss11_SetStorageCy12SiriOntology025UsoEntity_applePhoneCall_hI9AttributeC13DefinedValuesOSgGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v17 = result;
  if (*(v14 + 16))
  {
    v45 = v14;
    v46 = v4;
    v41 = v2;
    v18 = 0;
    v19 = v14 + 56;
    v20 = 1 << *(v14 + 32);
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    else
    {
      v21 = -1;
    }

    v22 = v21 & *(v14 + 56);
    v23 = (v20 + 63) >> 6;
    v42 = (v5 + 8);
    v43 = (v5 + 32);
    v24 = result + 56;
    if (v22)
    {
      while (1)
      {
        v25 = __clz(__rbit64(v22));
        v22 &= v22 - 1;
LABEL_14:
        v28 = *(v14 + 48);
        v48 = *(v47 + 72);
        v29 = v49;
        outlined init with copy of PhoneCallFlowState<INHangUpCallIntent, INHangUpCallIntentResponse>(v28 + v48 * (v25 | (v18 << 6)), v49, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMd, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMR);
        v30 = *(v17 + 40);
        Hasher.init(_seed:)();
        outlined init with copy of PhoneCallFlowState<INHangUpCallIntent, INHangUpCallIntentResponse>(v29, v12, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMd, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMR);
        v31 = v46;
        if (__swift_getEnumTagSinglePayload(v12, 1, v46) == 1)
        {
          Hasher._combine(_:)(0);
        }

        else
        {
          v32 = v44;
          (*v43)(v44, v12, v31);
          Hasher._combine(_:)(1u);
          lazy protocol witness table accessor for type App and conformance App(&lazy protocol witness table cache variable for type UsoEntity_applePhoneCall_PhoneCallAttribute.DefinedValues and conformance UsoEntity_applePhoneCall_PhoneCallAttribute.DefinedValues, &type metadata accessor for UsoEntity_applePhoneCall_PhoneCallAttribute.DefinedValues);
          dispatch thunk of Hashable.hash(into:)();
          (*v42)(v32, v31);
        }

        result = Hasher._finalize()();
        v33 = -1 << *(v17 + 32);
        v34 = result & ~v33;
        v35 = v34 >> 6;
        v14 = v45;
        if (((-1 << v34) & ~*(v24 + 8 * (v34 >> 6))) == 0)
        {
          break;
        }

        v36 = __clz(__rbit64((-1 << v34) & ~*(v24 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
        *(v24 + ((v36 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v36;
        result = outlined init with take of UsoEntity_applePhoneCall_PhoneCallAttribute.DefinedValues?(v49, *(v17 + 48) + v36 * v48);
        ++*(v17 + 16);
        if (!v22)
        {
          goto LABEL_9;
        }
      }

      v37 = 0;
      v38 = (63 - v33) >> 6;
      while (++v35 != v38 || (v37 & 1) == 0)
      {
        v39 = v35 == v38;
        if (v35 == v38)
        {
          v35 = 0;
        }

        v37 |= v39;
        v40 = *(v24 + 8 * v35);
        if (v40 != -1)
        {
          v36 = __clz(__rbit64(~v40)) + (v35 << 6);
          goto LABEL_26;
        }
      }
    }

    else
    {
LABEL_9:
      v26 = v18;
      while (1)
      {
        v18 = v26 + 1;
        if (__OFADD__(v26, 1))
        {
          break;
        }

        if (v18 >= v23)
        {

          v2 = v41;
          goto LABEL_30;
        }

        v27 = *(v19 + 8 * v18);
        ++v26;
        if (v27)
        {
          v25 = __clz(__rbit64(v27));
          v22 = (v27 - 1) & v27;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_30:
    *v2 = v17;
  }

  return result;
}

{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy27PhoneCallFlowDelegatePlugin23SharedNeedsValueContextC0iJ4CaseOGMd, &_ss11_SetStorageCy27PhoneCallFlowDelegatePlugin23SharedNeedsValueContextC0iJ4CaseOGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    if (!v10)
    {
      goto LABEL_8;
    }

    do
    {
LABEL_12:
      v14 = *(v6 + 40);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(0);
      result = Hasher._finalize()();
      v15 = -1 << *(v6 + 32);
      v16 = result & ~v15;
      v17 = v16 >> 6;
      if (((-1 << v16) & ~*(v12 + 8 * (v16 >> 6))) == 0)
      {
        v19 = 0;
        v20 = (63 - v15) >> 6;
        while (++v17 != v20 || (v19 & 1) == 0)
        {
          v21 = v17 == v20;
          if (v17 == v20)
          {
            v17 = 0;
          }

          v19 |= v21;
          v22 = *(v12 + 8 * v17);
          if (v22 != -1)
          {
            v18 = __clz(__rbit64(~v22)) + (v17 << 6);
            goto LABEL_21;
          }
        }

        goto LABEL_25;
      }

      v18 = __clz(__rbit64((-1 << v16) & ~*(v12 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
      v10 &= v10 - 1;
      *(v12 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      ++*(v6 + 16);
    }

    while (v10);
LABEL_8:
    while (1)
    {
      v13 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      if (v13 >= v11)
      {
        goto LABEL_23;
      }

      v10 = *(v3 + 56 + 8 * v13);
      ++v7;
      if (v10)
      {
        v7 = v13;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
  }

  else
  {
LABEL_23:

    *v2 = v6;
  }

  return result;
}

unint64_t specialized _NativeSet.copyAndResize(capacity:)(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy27PhoneCallFlowDelegatePlugin07OngoingD12OfferOptionsOGMd, &_ss11_SetStorageCy27PhoneCallFlowDelegatePlugin07OngoingD12OfferOptionsOGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    v9 = -1;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    v10 = v9 & *(v3 + 56);
    for (i = (v8 + 63) >> 6; v10; result = specialized _NativeSet._unsafeInsertNew(_:)(*(*(v3 + 48) + (v12 | (v7 << 6))), v6))
    {
      v12 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_13:
      ;
    }

    v13 = v7;
    while (1)
    {
      v7 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v7 >= i)
      {
        goto LABEL_15;
      }

      v14 = *(v3 + 56 + 8 * v7);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v10 = (v14 - 1) & v14;
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_15:

    *v2 = v6;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for OngoingCallOfferOptions(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t OngoingCallRCHFlowFactory.makeHandleIntentFlow(app:intent:intentResponse:)(uint64_t a1, void *a2, void *a3)
{
  v4 = v3;
  v46 = a2;
  v47 = a3;
  v45 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow22IntentResolutionRecordVySo011INStartCallD0CSo0ghD8ResponseCGMd, &_s11SiriKitFlow22IntentResolutionRecordVySo011INStartCallD0CSo0ghD8ResponseCGMR);
  OUTLINED_FUNCTION_9_1();
  v48 = v6;
  v49 = v5;
  v8 = *(v7 + 64);
  __chkstk_darwin(v5);
  v10 = &v40 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow08RCHChildC14ProducersAsyncVySo17INStartCallIntentCSo0ghI8ResponseCGMd, &_s11SiriKitFlow08RCHChildC14ProducersAsyncVySo17INStartCallIntentCSo0ghI8ResponseCGMR);
  OUTLINED_FUNCTION_9_1();
  v13 = v12;
  v43 = v14;
  v44 = v12;
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(v14);
  v19 = &v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v40 - v20;
  outlined init with copy of SignalProviding(v3, v51);
  _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC27PhoneCallFlowDelegatePlugin07OngoingF12OfferOptionsO_Tt0g5(&outlined read-only object #0 of OngoingCallRCHFlowFactory.makeHandleIntentFlow(app:intent:intentResponse:));
  v23 = v22;
  v24 = type metadata accessor for HangUpAndCallHandleIntentStrategy();
  OUTLINED_FUNCTION_41_1(v24);
  v25 = HangUpAndCallHandleIntentStrategy.init(sharedGlobals:options:)(v51, v23);
  v42 = type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INStartCallIntent, INStartCallIntent_ptr);
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INStartCallIntentResponse, INStartCallIntentResponse_ptr);
  RCHChildFlowProducersAsync.init()();
  OngoingCallRCHFlowFactory.addHangUpAndCallFlowProducers(sharedGlobals:producers:)(v4);
  (*(v13 + 16))(v19, v21, v11);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow08RCHChildC7FactoryCySo17INStartCallIntentCSo0fgH8ResponseCGMd, &_s11SiriKitFlow08RCHChildC7FactoryCySo17INStartCallIntentCSo0fgH8ResponseCGMR);
  OUTLINED_FUNCTION_41_1(v26);
  v41 = RCHChildFlowFactory.init(producers:)();
  v28 = v4[3];
  v27 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v28);
  (*(v27 + 104))(v51, v28, v27);
  v29 = v52;
  v30 = v53;
  __swift_project_boxed_opaque_existential_1(v51, v52);
  v50 = v25;
  v31 = *(v30 + 24);
  v32 = lazy protocol witness table accessor for type HangUpAndCallHandleIntentStrategy and conformance CallingIntentContinueInAppStrategy<A, B>(&lazy protocol witness table cache variable for type HangUpAndCallHandleIntentStrategy and conformance CallingIntentContinueInAppStrategy<A, B>);
  v33 = v31(&v50, v24, v32, v29, v30);

  v34 = v46;
  v35 = v47;
  IntentResolutionRecord.init(app:intent:intentResponse:)();
  v36 = v33(v41, v10);

  (*(v48 + 8))(v10, v49);
  __swift_destroy_boxed_opaque_existential_1(v51);
  v51[0] = v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow015AnyHandleIntentC0CySo011INStartCallF0CSo0ghF8ResponseCGMd, &_s11SiriKitFlow015AnyHandleIntentC0CySo011INStartCallF0CSo0ghF8ResponseCGMR);
  OUTLINED_FUNCTION_41_1(v37);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow08AnyValueC0CyAA012HandleIntentC6ResultOySo011INStartCallG0CSo0ijG8ResponseCGGMd, &_s11SiriKitFlow08AnyValueC0CyAA012HandleIntentC6ResultOySo011INStartCallG0CSo0ijG8ResponseCGGMR);
  lazy protocol witness table accessor for type TerminalOntologyNode<VoiceMail.VoiceMailNoun> and conformance TerminalOntologyNode<A>(&lazy protocol witness table cache variable for type AnyValueFlow<HandleIntentFlowResult<INStartCallIntent, INStartCallIntentResponse>> and conformance AnyValueFlow<A>, &_s11SiriKitFlow08AnyValueC0CyAA012HandleIntentC6ResultOySo011INStartCallG0CSo0ijG8ResponseCGGMd, &_s11SiriKitFlow08AnyValueC0CyAA012HandleIntentC6ResultOySo011INStartCallG0CSo0ijG8ResponseCGGMR);
  v38 = AnyHandleIntentFlow.init<A>(_:)();

  (*(v44 + 8))(v21, v43);
  return v38;
}

uint64_t OngoingCallRCHFlowFactory.makePreConfirmedRCHFlow(delegate:intent:app:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v50 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow08RCHChildC9ProducersVySo17INStartCallIntentCSo0fgH8ResponseCGMd, &_s11SiriKitFlow08RCHChildC9ProducersVySo17INStartCallIntentCSo0fgH8ResponseCGMR);
  OUTLINED_FUNCTION_9_1();
  v53 = v6;
  v54 = v5;
  v8 = *(v7 + 64);
  __chkstk_darwin(v5);
  v52 = &v43 - v9;
  v10 = type metadata accessor for CATOption();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow08RCHChildC14ProducersAsyncVySo17INStartCallIntentCSo0ghI8ResponseCGMd, &_s11SiriKitFlow08RCHChildC14ProducersAsyncVySo17INStartCallIntentCSo0ghI8ResponseCGMR);
  v47 = v12;
  OUTLINED_FUNCTION_9_1();
  v14 = v13;
  v51 = v13;
  v16 = *(v15 + 64);
  v18 = __chkstk_darwin(v17);
  v49 = &v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v21 = &v43 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0abC7FactoryO0A16RCHFlowProducersVy_So07INStartB6IntentCSo0ibJ8ResponseCGMd, &_s27PhoneCallFlowDelegatePlugin0abC7FactoryO0A16RCHFlowProducersVy_So07INStartB6IntentCSo0ibJ8ResponseCGMR);
  v23 = v22 - 8;
  v24 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22);
  v26 = &v43 - v25;
  static PhoneCallFlowFactory.getStartCallProducers(skIntent:delegate:app:sharedGlobals:)();
  v27 = *(v23 + 44);
  v48 = *(v14 + 16);
  v48(v21, &v26[v27], v12);
  OngoingCallRCHFlowFactory.addHangUpAndCallFlowProducers(sharedGlobals:producers:)(v3);
  outlined init with copy of SignalProviding(v3, v56);
  type metadata accessor for PhoneCallDisplayTextCATsSimple();
  static CATOption.defaultMode.getter();
  v28 = CATWrapperSimple.__allocating_init(options:globals:)();
  type metadata accessor for StartCallCATsSimple();
  static CATOption.defaultMode.getter();
  v29 = CATWrapperSimple.__allocating_init(options:globals:)();
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin28CallingIntentRCHFlowStrategyCySo07INStartbG0CSo0jbG8ResponseCGMd, &_s27PhoneCallFlowDelegatePlugin28CallingIntentRCHFlowStrategyCySo07INStartbG0CSo0jbG8ResponseCGMR);
  swift_allocObject();
  v44 = a3;
  v30 = specialized CallingIntentRCHFlowStrategy.init(sharedGlobals:appResolved:phoneCallDisplayTextCATsSimple:startCallCATsSimple:)(v56, a3, v28, v29);
  v45 = v30;
  v32 = v3[3];
  v31 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v32);
  v33 = *(v31 + 104);

  v33(v56, v32, v31);
  v35 = v57;
  v34 = v58;
  __swift_project_boxed_opaque_existential_1(v56, v57);
  v55 = v30;
  v36 = v47;
  v48(v49, v21, v47);
  (*(v53 + 16))(v52, v26, v54);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow08RCHChildC7FactoryCySo17INStartCallIntentCSo0fgH8ResponseCGMd, &_s11SiriKitFlow08RCHChildC7FactoryCySo17INStartCallIntentCSo0fgH8ResponseCGMR);
  OUTLINED_FUNCTION_41_1(v37);
  v38 = RCHChildFlowFactory.init(producers:withFallbacks:)();
  v39 = *(v34 + 8);
  v40 = lazy protocol witness table accessor for type TerminalOntologyNode<VoiceMail.VoiceMailNoun> and conformance TerminalOntologyNode<A>(&lazy protocol witness table cache variable for type CallingIntentRCHFlowStrategy<INStartCallIntent, INStartCallIntentResponse> and conformance CallingIntentRCHFlowStrategy<A, B>, &_s27PhoneCallFlowDelegatePlugin28CallingIntentRCHFlowStrategyCySo07INStartbG0CSo0jbG8ResponseCGMd, &_s27PhoneCallFlowDelegatePlugin28CallingIntentRCHFlowStrategyCySo07INStartbG0CSo0jbG8ResponseCGMR);
  v41 = v39(&v55, v38, v44, v50, v46, v40, v35, v34);

  (*(v51 + 8))(v21, v36);
  outlined destroy of PhoneCallFlowFactory.PhoneRCHFlowProducers<INStartCallIntent, INStartCallIntentResponse>(v26);

  __swift_destroy_boxed_opaque_existential_1(v56);
  return v41;
}

uint64_t OngoingCallRCHFlowFactory.addHangUpAndCallFlowProducers(sharedGlobals:producers:)(uint64_t a1)
{
  outlined init with copy of SignalProviding(a1, v8);
  _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC27PhoneCallFlowDelegatePlugin07OngoingF12OfferOptionsO_Tt0g5(&outlined read-only object #0 of OngoingCallRCHFlowFactory.addHangUpAndCallFlowProducers(sharedGlobals:producers:));
  v2 = v1;
  v3 = type metadata accessor for HangUpAndCallHandleIntentStrategy();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  v6 = HangUpAndCallHandleIntentStrategy.init(sharedGlobals:options:)(v8, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow08RCHChildC14ProducersAsyncVySo17INStartCallIntentCSo0ghI8ResponseCGMd, &_s11SiriKitFlow08RCHChildC14ProducersAsyncVySo17INStartCallIntentCSo0ghI8ResponseCGMR);
  RCHChildFlowProducersAsync.confirmIntentFlowProducer.setter();
  v8[0] = v6;
  lazy protocol witness table accessor for type HangUpAndCallHandleIntentStrategy and conformance CallingIntentContinueInAppStrategy<A, B>(&lazy protocol witness table cache variable for type HangUpAndCallHandleIntentStrategy and conformance CallingIntentContinueInAppStrategy<A, B>);
  static RCHChildFlowFactoryHelper.makeHandleIntentFlowProducer<A>(strategy:)();
  RCHChildFlowProducersAsync.handleIntentFlowProducer.setter();
  v8[0] = v6;
  lazy protocol witness table accessor for type HangUpAndCallHandleIntentStrategy and conformance CallingIntentContinueInAppStrategy<A, B>(&lazy protocol witness table cache variable for type HangUpAndCallHandleIntentStrategy and conformance CallingIntentContinueInAppStrategy<A, B>);
  static RCHChildFlowFactoryHelper.makeContinueInAppFlowWithAutomaticPunchOutProducer<A>(strategy:)();
  RCHChildFlowProducersAsync.continueInAppFlowProducer.setter();
}

uint64_t outlined destroy of PhoneCallFlowFactory.PhoneRCHFlowProducers<INStartCallIntent, INStartCallIntentResponse>(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0abC7FactoryO0A16RCHFlowProducersVy_So07INStartB6IntentCSo0ibJ8ResponseCGMd, &_s27PhoneCallFlowDelegatePlugin0abC7FactoryO0A16RCHFlowProducersVy_So07INStartB6IntentCSo0ibJ8ResponseCGMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t lazy protocol witness table accessor for type HangUpAndCallHandleIntentStrategy and conformance CallingIntentContinueInAppStrategy<A, B>(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for HangUpAndCallHandleIntentStrategy();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t Optional<A>.isNilOrEmpty.getter(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(a1);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v5, v6, a1);
  v7 = *(a1 + 16);
  if (__swift_getEnumTagSinglePayload(v5, 1, v7) == 1)
  {
    (*(v2 + 8))(v5, a1);
    v8 = 1;
  }

  else
  {
    v8 = dispatch thunk of Collection.isEmpty.getter();
    (*(*(v7 - 8) + 8))(v5, v7);
  }

  return v8 & 1;
}

uint64_t Optional<A>.emptyToNil.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (Optional<A>.isNilOrEmpty.getter(a1))
  {
    v5 = *(a1 + 16);

    return __swift_storeEnumTagSinglePayload(a2, 1, 1, v5);
  }

  else
  {
    v7 = *(*(a1 - 8) + 16);

    return v7(a2, v2, a1);
  }
}

uint64_t static OutputGenerationManifest.yesNoCallConfirmationManifest(model:_:)@<X0>(uint64_t (*a1)(uint64_t)@<X1>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for DialogPhase();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  OUTLINED_FUNCTION_0_71();
  static DialogPhase.confirmation.getter();
  OutputGenerationManifest.init(dialogPhase:_:)();
  return a1(a2);
}

uint64_t closure #1 in static OutputGenerationManifest.yesNoCallConfirmationManifest(model:_:)(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v13[-1] - v5;
  OutputGenerationManifest.canUseServerTTS.setter();
  OutputGenerationManifest.listenAfterSpeaking.setter();
  outlined init with copy of PhoneSnippetModel?(a2, v13);
  v7 = v14;
  if (v14)
  {
    v8 = v15;
    __swift_project_boxed_opaque_existential_1(v13, v14);
    (*(v8 + 16))(v7, v8);
    __swift_destroy_boxed_opaque_existential_1(v13);
  }

  else
  {
    outlined destroy of PhoneSnippetModel?(v13);
  }

  v9 = OutputGenerationManifest.responseViewId.setter();
  _s27PhoneCallFlowDelegatePlugin0aB17NLContextProviderC34makeGenericConfirmationNLv3Context07SiriKitC00F6UpdateVyFZSo8INIntentC_So0P8ResponseCTt0g5(v9);
  _s27PhoneCallFlowDelegatePlugin0aB17NLContextProviderC22makeSDAForConfirmation33_3C2ABB69DDB872D121E37A32A4E694A9LLSay12SiriNLUTypes0T29_Nlu_External_SystemDialogActVGSgyFZSo8INIntentC_So16INIntentResponseCTtg5();
  NLContextUpdate.nluSystemDialogActs.setter();
  v10 = type metadata accessor for NLContextUpdate();
  __swift_storeEnumTagSinglePayload(v6, 0, 1, v10);
  return OutputGenerationManifest.nlContextUpdate.setter();
}

uint64_t static OutputGenerationManifest.simpleDialogWithButtonOutputManifest(responseViewId:)()
{
  return static OutputGenerationManifest.simpleDialogWithButtonOutputManifest(responseViewId:)();
}

{
  v0 = type metadata accessor for DialogPhase();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  OUTLINED_FUNCTION_0_71();
  static DialogPhase.completion.getter();
  return OutputGenerationManifest.init(dialogPhase:_:)();
}

uint64_t closure #1 in static OutputGenerationManifest.simpleDialogWithButtonOutputManifest(responseViewId:)()
{
  OUTLINED_FUNCTION_1_74();
  OutputGenerationManifest.listenAfterSpeaking.setter();

  OutputGenerationManifest.responseViewId.setter();
  return OutputGenerationManifest.printSupportingDialogInDisplayModes.setter();
}

uint64_t partial apply for closure #1 in static OutputGenerationManifest.simpleDialogWithButtonOutputManifest(responseViewId:)()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return closure #1 in static OutputGenerationManifest.simpleDialogWithButtonOutputManifest(responseViewId:)();
}

uint64_t closure #1 in static OutputGenerationManifest.simpleCompletionOutputManifest(responseViewId:)()
{
  OUTLINED_FUNCTION_1_74();
  OutputGenerationManifest.listenAfterSpeaking.setter();

  return OutputGenerationManifest.responseViewId.setter();
}

uint64_t partial apply for closure #1 in static OutputGenerationManifest.simpleCompletionOutputManifest(responseViewId:)()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return closure #1 in static OutputGenerationManifest.simpleCompletionOutputManifest(responseViewId:)();
}

uint64_t outlined init with copy of PhoneSnippetModel?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0A12SnippetModel_pSgMd, &_s27PhoneCallFlowDelegatePlugin0A12SnippetModel_pSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t OutputPublisherWrapper.__allocating_init(outputPublisher:outputPublisherAsync:)(__int128 *a1, __int128 *a2)
{
  v4 = swift_allocObject();
  outlined init with take of SPHConversation(a1, v4 + 16);
  outlined init with take of SPHConversation(a2, v4 + 56);
  return v4;
}

uint64_t OutputPublisherWrapper.init(outputPublisher:outputPublisherAsync:)(__int128 *a1, __int128 *a2)
{
  outlined init with take of SPHConversation(a1, v2 + 16);
  outlined init with take of SPHConversation(a2, v2 + 56);
  return v2;
}

uint64_t OutputPublisherWrapper.publish(output:_:)()
{
  v1 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  return dispatch thunk of OutputPublisher.publish(output:_:)();
}

uint64_t OutputPublisherWrapper.publish(output:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(OutputPublisherWrapper.publish(output:), 0, 0);
}

uint64_t OutputPublisherWrapper.publish(output:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v17 = v16[3];
  v18 = v17[10];
  v19 = v17[11];
  __swift_project_boxed_opaque_existential_1(v17 + 7, v18);
  v20 = async function pointer to dispatch thunk of OutputPublisherAsync.publish(output:)[1];
  v21 = swift_task_alloc();
  v16[4] = v21;
  *v21 = v16;
  v21[1] = OutputPublisherWrapper.publish(output:);
  v27 = v16[2];

  return dispatch thunk of OutputPublisherAsync.publish(output:)(v27, v18, v19, v22, v23, v24, v25, v26, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t OutputPublisherWrapper.publish(output:)()
{
  v1 = *(*v0 + 32);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t OutputPublisherWrapper.deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  return v0;
}

uint64_t OutputPublisherWrapper.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));

  return swift_deallocClassInstance();
}

uint64_t protocol witness for OutputPublisherAsync.publish(output:) in conformance OutputPublisherWrapper(uint64_t a1)
{
  v4 = *(**v1 + 112);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = protocol witness for UnlockDeviceFlowStrategyAsync.makePromptForDeviceUnlock() in conformance DefaultUnlockDeviceFlowStrategyAsync;

  return v8(a1);
}

uint64_t ParameterResolutionRecord<>.isUnsetRelationship.getter(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ParameterIdentifier();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  ParameterResolutionRecord.app.getter();
  v9 = App.isFirstParty()();

  if (!v9)
  {
    return 0;
  }

  ParameterResolutionRecord.parameter.getter();
  v10 = ParameterIdentifier.multicardinalIndex.getter();
  v12 = v11;
  (*(v5 + 8))(v8, v4);
  v13 = ParameterResolutionRecord.intent.getter();
  v14 = *(a1 + 16);
  v15 = (*(*(a2 + 8) + 8))(v14);

  if (!v15)
  {
    return 0;
  }

  v16 = (v12 & 1) != 0 ? 0 : v10;
  v17 = specialized Array.subscript.getter(v16, v15);

  if (!v17)
  {
    return 0;
  }

  v18 = [v17 relationship];

  if (!v18)
  {
    return 0;
  }

  v19 = ParameterResolutionRecord.intent.getter();
  v20 = ParameterResolutionRecord.result.getter();
  v41 = v19;
  v42 = v20;
  type metadata accessor for INIntentResolutionResult();
  v21 = v19;
  v22 = v20;
  swift_getTupleTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo17INStartCallIntentC_So0aB23ContactResolutionResultCtMd, &_sSo17INStartCallIntentC_So0aB23ContactResolutionResultCtMR);
  if (OUTLINED_FUNCTION_0_72())
  {
  }

  else
  {
    v23 = v41;

    v41 = v21;
    v42 = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo26INAddCallParticipantIntentC_So0abcC16ResolutionResultCtMd, &_sSo26INAddCallParticipantIntentC_So0abcC16ResolutionResultCtMR);
    if (!OUTLINED_FUNCTION_0_72())
    {

      v18 = v41;
      goto LABEL_17;
    }
  }

  v24 = v40;
  v25 = [v40 unsupportedReason];

  v26 = v41;
  if (v25 != &dword_0 + 1)
  {
LABEL_17:

    return 0;
  }

  if (one-time initialization token for siriPhone != -1)
  {
    swift_once();
  }

  v27 = type metadata accessor for Logger();
  __swift_project_value_buffer(v27, static Logger.siriPhone);
  v28 = v18;
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    *v31 = 136315650;
    v39 = v14;
    swift_getMetatypeMetadata();
    v32 = String.init<A>(describing:)();
    v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v33, &v41);

    *(v31 + 4) = v34;
    *(v31 + 12) = 2080;
    *(v31 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000013, 0x800000000045D050, &v41);
    *(v31 + 22) = 2080;
    v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v36, &v41);

    *(v31 + 24) = v37;
    _os_log_impl(&dword_0, v29, v30, "#ParameterResolutionRecord<%s> %s Found unsetRelationship = %s", v31, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
  }

  return 1;
}

unint64_t type metadata accessor for INIntentResolutionResult()
{
  result = lazy cache variable for type metadata for INIntentResolutionResult;
  if (!lazy cache variable for type metadata for INIntentResolutionResult)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for INIntentResolutionResult);
  }

  return result;
}

uint64_t Parse.usoTask.getter()
{
  v1 = type metadata accessor for USOParse();
  v2 = OUTLINED_FUNCTION_7(v1);
  v84 = v3;
  v85 = v2;
  v5 = *(v4 + 64);
  __chkstk_darwin(v2);
  v7 = &v84 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMd, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMR);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v84 - v10;
  v12 = type metadata accessor for Siri_Nlu_External_UserParse();
  v13 = OUTLINED_FUNCTION_7(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(v13);
  v20 = &v84 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v84 - v21;
  v23 = type metadata accessor for Parse();
  v24 = OUTLINED_FUNCTION_7(v23);
  v26 = v25;
  v28 = *(v27 + 64);
  __chkstk_darwin(v24);
  v30 = (&v84 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  v31 = v26[2];
  v86 = v0;
  v31(v30, v0, v23);
  v32 = v26[11];
  v33 = OUTLINED_FUNCTION_55();
  v35 = v34(v33);
  if (v35 == enum case for Parse.NLv3IntentOnly(_:))
  {
    v66 = v26[1];
    v67 = OUTLINED_FUNCTION_55();
    v68(v67);
  }

  else
  {
    if (v35 != enum case for Parse.NLv3IntentPlusServerConversion(_:))
    {
      if (v35 == enum case for Parse.NLv4IntentOnly(_:))
      {
        v36 = v26[12];
        v37 = OUTLINED_FUNCTION_55();
        v38(v37);
        v39 = *v30;
        static ConversionUtils.toUserParse(from:)();
        if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
        {
          outlined destroy of PhoneCallNLIntent?(v11, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMd, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMR);
          if (one-time initialization token for siriPhone != -1)
          {
            OUTLINED_FUNCTION_0_6();
            swift_once();
          }

          v40 = type metadata accessor for Logger();
          __swift_project_value_buffer(v40, static Logger.siriPhone);
          swift_unknownObjectRetain();
          v41 = Logger.logObject.getter();
          v42 = static os_log_type_t.error.getter();
          swift_unknownObjectRelease();
          if (os_log_type_enabled(v41, v42))
          {
            v43 = swift_slowAlloc();
            v44 = swift_slowAlloc();
            *v43 = 136315394;
            v87 = 0;
            v88 = 0xE000000000000000;
            v89 = v44;
            DefaultStringInterpolation.appendInterpolation(type:tags:function:)(&type metadata for String, &outlined read-only object #0 of Parse.usoTask.getter, 0, 0);
            v45 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v87, v88, &v89);

            *(v43 + 4) = v45;
            *(v43 + 12) = 2080;
            v87 = v39;
            swift_unknownObjectRetain();
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20SIRINLUUserDialogAct_pMd, &_sSo20SIRINLUUserDialogAct_pMR);
            v46 = String.init<A>(describing:)();
            v48 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v46, v47, &v89);

            *(v43 + 14) = v48;
            _os_log_impl(&dword_0, v41, v42, "%s couldn't transform UserDialogAct %s into UserParse to get the UDAs.", v43, 0x16u);
            swift_arrayDestroy();
            OUTLINED_FUNCTION_26_0();
            OUTLINED_FUNCTION_26_0();

            swift_unknownObjectRelease();
          }

          else
          {
            swift_unknownObjectRelease();
          }

          return 0;
        }

        (*(v15 + 32))(v22, v11, v12);
        v55 = Parse.transform(userParse:)();
        swift_unknownObjectRelease();
        (*(v15 + 8))(v22, v12);
      }

      else
      {
        if (v35 != enum case for Parse.uso(_:))
        {
          if (one-time initialization token for siriPhone != -1)
          {
            OUTLINED_FUNCTION_0_6();
            swift_once();
          }

          v56 = type metadata accessor for Logger();
          __swift_project_value_buffer(v56, static Logger.siriPhone);
          v57 = Logger.logObject.getter();
          v58 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v57, v58))
          {
            v59 = swift_slowAlloc();
            v60 = swift_slowAlloc();
            *v59 = 136315138;
            v87 = 0;
            v88 = 0xE000000000000000;
            v89 = v60;
            DefaultStringInterpolation.appendInterpolation(type:tags:function:)(&type metadata for String, &outlined read-only object #0 of Parse.usoTask.getter, 0, 0);
            v61 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v87, v88, &v89);

            *(v59 + 4) = v61;
            _os_log_impl(&dword_0, v57, v58, "%s Direct Invocation parse in Parse.usoTask", v59, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v60);
            OUTLINED_FUNCTION_26_0();
            OUTLINED_FUNCTION_26_0();
          }

          v62 = v26[1];
          v63 = OUTLINED_FUNCTION_55();
          v64(v63);
          return 0;
        }

        v49 = v26[12];
        v50 = OUTLINED_FUNCTION_55();
        v51(v50);
        v52 = v84;
        v53 = v30;
        v54 = v85;
        (*(v84 + 32))(v7, v53, v85);
        USOParse.userParse.getter();
        v55 = Parse.transform(userParse:)();
        (*(v15 + 8))(v20, v12);
        (*(v52 + 8))(v7, v54);
      }

      return v55;
    }

    v69 = v26[12];
    v70 = OUTLINED_FUNCTION_55();
    v71(v70);
    v72 = *(v30 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology8NLIntentV_0A7KitFlow5ParseO16ServerConversionCtMd, &_s12SiriOntology8NLIntentV_0A7KitFlow5ParseO16ServerConversionCtMR) + 48));

    v73 = type metadata accessor for NLIntent();
    OUTLINED_FUNCTION_23_5(v73);
    (*(v74 + 8))(v30);
  }

  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

  v75 = type metadata accessor for Logger();
  __swift_project_value_buffer(v75, static Logger.siriPhone);
  v87 = 0;
  v88 = 0xE000000000000000;
  _StringGuts.grow(_:)(39);
  DefaultStringInterpolation.appendInterpolation(type:tags:function:)(&type metadata for String, &outlined read-only object #0 of Parse.usoTask.getter, 0, 0);
  v76._object = 0x800000000045D070;
  v76._countAndFlagsBits = 0xD000000000000025;
  String.append(_:)(v76);
  swift_bridgeObjectRetain_n();
  v77 = Logger.logObject.getter();
  v78 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v77, v78))
  {
    v79 = swift_slowAlloc();
    v80 = swift_slowAlloc();
    v89 = v80;
    *v79 = 136315138;
    v81 = OUTLINED_FUNCTION_55();
    *(v79 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v81, v82, v83);
    _os_log_impl(&dword_0, v77, v78, "%s", v79, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v80);
    OUTLINED_FUNCTION_26_0();
    OUTLINED_FUNCTION_26_0();
  }

  OUTLINED_FUNCTION_55();
  static SiriKitLifecycle._logCrashToEventBus(_:)();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t Parse.transform(userParse:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = v44 - v2;
  v4 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = v44 - v11;
  v13 = __chkstk_darwin(v10);
  v15 = v44 - v14;
  __chkstk_darwin(v13);
  v17 = v44 - v16;
  v50 = type metadata accessor for Parse();
  v18 = Siri_Nlu_External_UserParse.userDialogActs.getter();
  specialized Collection.first.getter(v18);

  if (__swift_getEnumTagSinglePayload(v3, 1, v4) == 1)
  {
    outlined destroy of PhoneCallNLIntent?(v3, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
    if (one-time initialization token for siriPhone != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    __swift_project_value_buffer(v19, static Logger.siriPhone);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *v22 = 136315138;
      v51 = 0;
      v52 = 0xE000000000000000;
      v53 = v23;
      DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v50, &outlined read-only object #0 of Parse.transform(userParse:), 0xD000000000000015, 0x800000000045D0A0);
      v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v51, v52, &v53);

      *(v22 + 4) = v24;
      _os_log_impl(&dword_0, v20, v21, "%s: No user dialog act found in userParse", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v23);
    }

    return 0;
  }

  else
  {
    v45 = v12;
    (*(v5 + 32))(v17, v3, v4);
    if (one-time initialization token for siriPhone != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    v26 = __swift_project_value_buffer(v25, static Logger.siriPhone);
    v27 = *(v5 + 16);
    v49 = v17;
    v27(v15, v17, v4);
    v44[1] = v26;
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.debug.getter();
    v30 = os_log_type_enabled(v28, v29);
    v47 = v27;
    if (v30)
    {
      v31 = swift_slowAlloc();
      v48 = v5 + 16;
      v32 = v31;
      v33 = swift_slowAlloc();
      v44[0] = v9;
      *v32 = 136315394;
      v51 = 0;
      v52 = 0xE000000000000000;
      v53 = v33;
      DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v50, &outlined read-only object #0 of Parse.transform(userParse:), 0xD000000000000015, 0x800000000045D0A0);
      v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v51, v52, &v53);

      *(v32 + 4) = v34;
      *(v32 + 12) = 2080;
      v27(v45, v15, v4);
      v35 = _sSS27PhoneCallFlowDelegatePluginE10describingSS21InternalSwiftProtobuf7Message_p_tcfCTf4en_n12SiriNLUTypes0K27_Nlu_External_UserDialogActV_Tt0g5();
      v37 = v36;
      v46 = *(v5 + 8);
      v46(v15, v4);
      v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v37, &v53);

      *(v32 + 14) = v38;
      _os_log_impl(&dword_0, v28, v29, "%s: Attempting to transform %s into UsoTask.", v32, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      v46 = *(v5 + 8);
      v46(v15, v4);
    }

    v39 = v49;
    if (one-time initialization token for transformer != -1)
    {
      swift_once();
    }

    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy0A8NLUTypes0A27_Nlu_External_UserDialogActV27PhoneCallFlowDelegatePlugin0ghI5ParseVGMd, &_s13SiriUtilities11TransformerVy0A8NLUTypes0A27_Nlu_External_UserDialogActV27PhoneCallFlowDelegatePlugin0ghI5ParseVGMR);
    __swift_project_value_buffer(v40, static Transformer<>.transformer);
    v41 = Transformer.transform.getter();
    v41(&v51, v39);

    v46(v39, v4);
    v42 = v51;
  }

  return v42;
}

unsigned __int8 _s27PhoneCallFlowDelegatePlugin0aB17NLContextProviderC24makeNeedsValueContextFor9parameter07SiriKitC00F6UpdateVSSSg_tFZSo8INIntentC_So0Q8ResponseCTt1g5(uint64_t a1, void *a2)
{
  NLContextUpdate.init()();
  PhoneCallNLConstants.canonicalName.getter(1);
  NLContextUpdate.weightedPromptTargetDomain.setter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  OUTLINED_FUNCTION_68_0();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_424FD0;
  String.uppercased()();
  lazy protocol witness table accessor for type String and conformance String();
  OUTLINED_FUNCTION_17_25();
  StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

  v16 = PhoneCallNLConstants.canonicalName.getter(6);
  v17 = v5;
  v6._countAndFlagsBits = 0x2E65756C61562ELL;
  v6._object = 0xE700000000000000;
  String.append(_:)(v6);
  v7 = String.uppercased()();
  String.append(_:)(v7);

  *(v4 + 32) = v16;
  *(v4 + 40) = v17;
  result = NLContextUpdate.weightedPromptResponseOptions.setter();
  if (a2)
  {

    v9._countAndFlagsBits = a1;
    v9._object = a2;
    result = PhoneCallSlotNames.init(rawValue:)(v9).value;
    if (result - 4 < 2 || result == 19)
    {
      v11 = swift_allocObject();
      *(v11 + 16) = xmmword_424FF0;
      *(v11 + 32) = PhoneCallNLConstants.canonicalName.getter(3);
      *(v11 + 40) = v12;
      *(v11 + 48) = PhoneCallNLConstants.canonicalName.getter(5);
      *(v11 + 56) = v13;
      NLContextUpdate.weightedPromptResponseTargets.setter();
      NLContextUpdate.weightedPromptStrict.setter();
      _s27PhoneCallFlowDelegatePlugin0aB17NLContextProviderC30makeSDAForNeedsValueForContact33_3C2ABB69DDB872D121E37A32A4E694A9LLSay12SiriNLUTypes0W29_Nlu_External_SystemDialogActVGSgyFZSo8INIntentC_So16INIntentResponseCTtg5();
      return NLContextUpdate.nluSystemDialogActs.setter();
    }

    else if (result == 10)
    {
      OUTLINED_FUNCTION_68_0();
      v14 = swift_allocObject();
      *(v14 + 16) = xmmword_424FD0;
      *(v14 + 32) = PhoneCallNLConstants.canonicalName.getter(7);
      *(v14 + 40) = v15;
      NLContextUpdate.weightedPromptResponseTargets.setter();
      return NLContextUpdate.weightedPromptStrict.setter();
    }
  }

  return result;
}

uint64_t ParticipantOutputProvider.__allocating_init(sharedGlobals:app:cats:startCallCats:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v68 = a2;
  v69 = a3;
  v70 = a4;
  v66 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow25DucTemplatingLocalContextVSgMd, &_s11SiriKitFlow25DucTemplatingLocalContextVSgMR);
  v6 = OUTLINED_FUNCTION_21(v5);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v65 = v60 - v9;
  v10 = type metadata accessor for Locale();
  v11 = OUTLINED_FUNCTION_7(v10);
  v62 = v12;
  v63 = v11;
  v14 = *(v13 + 64);
  __chkstk_darwin(v11);
  OUTLINED_FUNCTION_4();
  v61 = v16 - v15;
  v17 = type metadata accessor for CATOption();
  v18 = OUTLINED_FUNCTION_21(v17);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  OUTLINED_FUNCTION_4();
  outlined init with copy of SignalProviding(a1, v86);
  outlined init with copy of SignalProviding(a1, &v83);
  v64 = "com.apple.camera";
  type metadata accessor for PhoneCallDisplayTextCATs();
  OUTLINED_FUNCTION_30_18();
  v21 = OUTLINED_FUNCTION_31_16();
  type metadata accessor for PhoneCallCommonCATs();
  OUTLINED_FUNCTION_30_18();
  v22 = OUTLINED_FUNCTION_31_16();
  v23 = type metadata accessor for AppInfoBuilder();
  v24 = swift_allocObject();
  type metadata accessor for StartCallCATs();
  OUTLINED_FUNCTION_30_18();
  v71 = OUTLINED_FUNCTION_31_16();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0aB24BaseCatTemplatingServiceCySo05INAddB17ParticipantIntentCSo0jbkL8ResponseCGMd, &_s27PhoneCallFlowDelegatePlugin0aB24BaseCatTemplatingServiceCySo05INAddB17ParticipantIntentCSo0jbkL8ResponseCGMR);
  v26 = OUTLINED_FUNCTION_41_1(v25);
  v81 = v23;
  v82 = &protocol witness table for AppInfoBuilder;
  v80[0] = v24;
  v78 = &type metadata for LabelTemplatesProvider;
  v79 = &protocol witness table for LabelTemplatesProvider;
  OUTLINED_FUNCTION_68_0();
  v27 = swift_allocObject();
  v77[0] = v27;
  *(v27 + 16) = 0u;
  *(v27 + 32) = 0u;
  v28 = (&v26->Kind + *(v26->Kind + class metadata base offset for PhoneCallBaseCatTemplatingService + 16));
  *v28 = 0x3D65737561705C1BLL;
  v28[1] = 0xEC0000005C303532;
  OUTLINED_FUNCTION_16_24();
  v31 = v26 + *(v30 + v29 + 56);
  *v31 = v32;
  *(v31 + 1) = v32;
  *(v31 + 4) = 0;
  OUTLINED_FUNCTION_16_24();
  outlined init with copy of SignalProviding(&v83, v26 + *(v34 + v33 + 72));
  v35 = *(&v84 + 1);
  v36 = v85;
  __swift_project_boxed_opaque_existential_1(&v83, *(&v84 + 1));
  (*(v36 + 8))(&v74, v35, v36);
  OUTLINED_FUNCTION_16_24();
  v38 = *(v37 + class metadata base offset for PhoneCallBaseCatTemplatingService + 40);
  outlined init with take of SPHConversation(&v74, v26 + v38);
  OUTLINED_FUNCTION_16_24();
  v40 = *(v39 + class metadata base offset for PhoneCallBaseCatTemplatingService + 24);
  v60[0] = v22;
  v60[1] = v21;
  *(&v26->Kind + v40) = v21;
  OUTLINED_FUNCTION_16_24();
  *(&v26->Kind + *(v42 + v41 + 32)) = v22;
  OUTLINED_FUNCTION_16_24();
  outlined init with copy of SignalProviding(v80, v26 + *(v44 + v43 + 48));
  OUTLINED_FUNCTION_16_24();
  outlined init with copy of SignalProviding(v77, v26 + *(v45 + class metadata base offset for PhoneCallBaseCatTemplatingService + 64));
  OUTLINED_FUNCTION_16_24();
  *(&v26->Kind + *(v46 + class metadata base offset for PhoneCallBaseCatTemplatingService + 80)) = v71;
  outlined init with copy of SignalProviding(v26 + v38, &v74);
  OUTLINED_FUNCTION_28_0(&v74, v75);

  v47 = v61;
  dispatch thunk of DeviceState.siriLocale.getter();
  v73[0] = Locale.identifier.getter();
  v73[1] = v48;
  v72[0] = 45;
  v72[1] = 0xE100000000000000;
  v73[5] = 95;
  v73[6] = 0xE100000000000000;
  lazy protocol witness table accessor for type String and conformance String();
  OUTLINED_FUNCTION_17_25();
  StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  (*(v62 + 8))(v47, v63);

  type metadata accessor for INIntentSlotValueType(0);
  lazy protocol witness table accessor for type INIntentSlotValueType and conformance INIntentSlotValueType(&lazy protocol witness table cache variable for type INIntentSlotValueType and conformance INIntentSlotValueType, type metadata accessor for INIntentSlotValueType);
  Dictionary.init(dictionaryLiteral:)();
  v49 = *(&v84 + 1);
  v50 = v85;
  __swift_project_boxed_opaque_existential_1(&v83, *(&v84 + 1));
  (*(v50 + 24))(v73, v49, v50);
  outlined init with copy of SignalProviding(v26 + v38, v72);
  v51 = type metadata accessor for DucTemplatingLocalContext();
  __swift_storeEnumTagSinglePayload(v65, 1, 1, v51);
  v52 = v26;
  v53 = DucTemplatingService.init(ducFamily:locale:extensionValueTypeNamesByValueType:aceServiceInvoker:deviceState:localContext:)();

  __swift_destroy_boxed_opaque_existential_1(v77);
  __swift_destroy_boxed_opaque_existential_1(v80);
  __swift_destroy_boxed_opaque_existential_1(&v74);
  __swift_destroy_boxed_opaque_existential_1(&v83);
  v85 = 0;
  v83 = 0u;
  v84 = 0u;
  type metadata accessor for StartCallCATPatternsExecutor(0);
  OUTLINED_FUNCTION_30_18();
  v54 = OUTLINED_FUNCTION_31_16();
  v81 = v52;
  v82 = &protocol witness table for StartCallCATPatternsExecutor;
  v80[0] = v54;
  type metadata accessor for AddCallParticipantCATPatternsExecutor();
  OUTLINED_FUNCTION_30_18();
  v55 = OUTLINED_FUNCTION_31_16();
  v78 = v52;
  v79 = &protocol witness table for AddCallParticipantCATPatternsExecutor;
  v77[0] = v55;
  v56 = type metadata accessor for ResponseFactory();
  OUTLINED_FUNCTION_41_1(v56);
  v57 = ResponseFactory.init()();
  v75 = v56;
  v76 = &protocol witness table for ResponseFactory;
  *&v74 = v57;
  v58 = (*(v67 + 168))(v86, v68, v53, v69, v70, v80, v77, &v74, &v83);
  __swift_destroy_boxed_opaque_existential_1(v66);
  return v58;
}

uint64_t ParticipantOutputProvider.__allocating_init(sharedGlobals:app:templatingService:cats:startCallCats:startCallCatPatterns:addCallParticipantCatPatterns:responseGenerator:crrOutputGenerator:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v17 = swift_allocObject();
  ParticipantOutputProvider.init(sharedGlobals:app:templatingService:cats:startCallCats:startCallCatPatterns:addCallParticipantCatPatterns:responseGenerator:crrOutputGenerator:)(a1, a2, a3, a4, a5, a6, a7, a8, a9);
  return v17;
}

void *ParticipantOutputProvider.init(sharedGlobals:app:templatingService:cats:startCallCats:startCallCatPatterns:addCallParticipantCatPatterns:responseGenerator:crrOutputGenerator:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v16 = type metadata accessor for Locale();
  v17 = OUTLINED_FUNCTION_7(v16);
  v47 = v18;
  v48 = v17;
  v20 = *(v19 + 64);
  __chkstk_darwin(v17);
  OUTLINED_FUNCTION_4();
  v46 = v22 - v21;
  v9[2] = 0x73746361746E6F63;
  v9[3] = 0xE800000000000000;
  outlined init with copy of SignalProviding(a1, (v9 + 4));
  v9[9] = a4;
  v9[10] = a5;
  v51 = a6;
  outlined init with copy of SignalProviding(a6, (v9 + 11));
  v50 = a7;
  outlined init with copy of SignalProviding(a7, (v9 + 21));
  v49 = a8;
  outlined init with copy of SignalProviding(a8, (v9 + 26));
  v23 = a1[3];
  v24 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v23);
  v25 = *(v24 + 8);
  v26 = v9;

  v25(v57, v23, v24);
  v27 = a1[3];
  v28 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v27);
  (*(v28 + 184))(&v58, v27, v28);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0aB17NLContextProviderCySo05INAddB17ParticipantIntentCSo0hbiJ8ResponseCGMd, &_s27PhoneCallFlowDelegatePlugin0aB17NLContextProviderCySo05INAddB17ParticipantIntentCSo0hbiJ8ResponseCGMR);
  OUTLINED_FUNCTION_41_1(v29);
  v30 = specialized PhoneCallNLContextProvider.init(deviceState:assistantProperties:)(v57, &v58);
  v9[31] = a3;
  v9[32] = v30;
  outlined init with copy of SignalProviding((v9 + 4), &v58);
  v31 = v59;
  v32 = v60;
  OUTLINED_FUNCTION_28_0(&v58, v59);
  v33 = *(v32 + 8);

  v33(v57, v31, v32);
  v34 = v9[10];
  outlined init with copy of SignalProviding((v9 + 4), v54);
  v36 = v55;
  v35 = v56;
  OUTLINED_FUNCTION_28_0(v54, v55);
  v37 = *(v35 + 8);

  v37(v53, v36, v35);
  __swift_project_boxed_opaque_existential_1(v53, v53[3]);
  OUTLINED_FUNCTION_2();
  dispatch thunk of DeviceState.siriLocale.getter();
  Locale.identifier.getter();
  lazy protocol witness table accessor for type String and conformance String();
  OUTLINED_FUNCTION_17_25();
  v38 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v40 = v39;
  (*(v47 + 8))(v46, v48);

  v41 = type metadata accessor for AppInfoBuilder();
  v42 = swift_allocObject();
  *&v57[88] = v41;
  *&v57[96] = &protocol witness table for AppInfoBuilder;
  *&v57[40] = v34;
  *&v57[48] = v38;
  *&v57[56] = v40;
  *&v57[64] = v42;
  __swift_destroy_boxed_opaque_existential_1(v53);
  __swift_destroy_boxed_opaque_existential_1(v54);
  __swift_destroy_boxed_opaque_existential_1(&v58);
  memcpy(v26 + 33, v57, 0x68uLL);
  outlined init with copy of PhoneCallFlowState<INHangUpCallIntent, INHangUpCallIntentResponse>(a9, &v58, &_s17SiriInferenceFlow34ContactResolutionSnippetGenerating_pSgMd, &_s17SiriInferenceFlow34ContactResolutionSnippetGenerating_pSgMR);
  if (v59)
  {

    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(a9, &_s17SiriInferenceFlow34ContactResolutionSnippetGenerating_pSgMd, &_s17SiriInferenceFlow34ContactResolutionSnippetGenerating_pSgMR);
    __swift_destroy_boxed_opaque_existential_1(v49);
    __swift_destroy_boxed_opaque_existential_1(v50);
    __swift_destroy_boxed_opaque_existential_1(v51);
    outlined init with take of SPHConversation(&v58, v57);
  }

  else
  {
    App.appIdentifier.getter();
    type metadata accessor for CATGlobals();
    CATGlobals.__allocating_init()();
    v43 = type metadata accessor for ContactResolutionSnippetGenerator();
    OUTLINED_FUNCTION_41_1(v43);
    OUTLINED_FUNCTION_123();
    v44 = ContactResolutionSnippetGenerator.init(appBundleId:globals:)();
    *&v57[24] = v43;
    *&v57[32] = &protocol witness table for ContactResolutionSnippetGenerator;

    *v57 = v44;
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(a9, &_s17SiriInferenceFlow34ContactResolutionSnippetGenerating_pSgMd, &_s17SiriInferenceFlow34ContactResolutionSnippetGenerating_pSgMR);
    __swift_destroy_boxed_opaque_existential_1(v49);
    __swift_destroy_boxed_opaque_existential_1(v50);
    __swift_destroy_boxed_opaque_existential_1(v51);
    if (v59)
    {
      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(&v58, &_s17SiriInferenceFlow34ContactResolutionSnippetGenerating_pSgMd, &_s17SiriInferenceFlow34ContactResolutionSnippetGenerating_pSgMR);
    }
  }

  outlined init with take of SPHConversation(v57, (v26 + 16));
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v26;
}

uint64_t ParticipantOutputProvider.makePromptForContactOutput(app:intent:intentResolutionResult:)()
{
  OUTLINED_FUNCTION_15();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = type metadata accessor for DialogPhase();
  OUTLINED_FUNCTION_21(v4);
  v6 = *(v5 + 64);
  v1[5] = OUTLINED_FUNCTION_45();
  v7 = type metadata accessor for OutputGenerationManifest();
  v1[6] = v7;
  OUTLINED_FUNCTION_13_2(v7);
  v1[7] = v8;
  v10 = *(v9 + 64);
  v1[8] = OUTLINED_FUNCTION_45();
  v11 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v11, v12, v13);
}

{
  OUTLINED_FUNCTION_23_0();
  v1 = *(v0 + 32);
  v2 = [*(v0 + 24) resolutionResultCode] == &dword_0 + 1;
  v3 = v1[24];
  v4 = v1[25];
  __swift_project_boxed_opaque_existential_1(v1 + 21, v3);
  v5 = *(v4 + 16);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v0 + 72) = v7;
  *v7 = v0;
  v7[1] = ParticipantOutputProvider.makePromptForContactOutput(app:intent:intentResolutionResult:);

  return v9(v2, v3, v4);
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_28();
  v3 = v2;
  OUTLINED_FUNCTION_13_1();
  *v4 = v3;
  v6 = *(v5 + 72);
  v7 = *v1;
  *v4 = *v1;
  v3[10] = v8;

  if (v0)
  {
    v9 = v3[8];
    v10 = v3[5];

    v11 = *(v7 + 8);

    return v11();
  }

  else
  {
    OUTLINED_FUNCTION_66_0();

    return _swift_task_switch(v13, v14, v15);
  }
}

{
  OUTLINED_FUNCTION_27();
  v1 = v0[8];
  v3 = v0[4];
  v2 = v0[5];
  static DialogPhase.clarification.getter();
  OutputGenerationManifest.init(dialogPhase:_:)();
  v4 = v3[29];
  v5 = v3[30];
  OUTLINED_FUNCTION_28_0(v3 + 26, v4);
  v6 = async function pointer to dispatch thunk of ResponseGenerating.makeResponseOutput(patternExecutionResult:outputGenerationManifest:)[1];
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[11] = v7;
  *v7 = v8;
  v7[1] = ParticipantOutputProvider.makePromptForContactOutput(app:intent:intentResolutionResult:);
  v9 = v0[10];
  v10 = v0[8];
  v11 = v0[2];

  return dispatch thunk of ResponseGenerating.makeResponseOutput(patternExecutionResult:outputGenerationManifest:)(v11, v9, v10, v4, v5);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_2_5();
  *v3 = v2;
  v5 = *(v4 + 88);
  v6 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v7 = v6;
  *(v8 + 96) = v0;

  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v9, v10, v11);
}

{
  OUTLINED_FUNCTION_27();
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  v4 = *(v0 + 40);
  v3 = *(v0 + 48);

  v5 = *(v2 + 8);
  v6 = OUTLINED_FUNCTION_0();
  v7(v6);

  OUTLINED_FUNCTION_8_1();

  return v8();
}

{
  OUTLINED_FUNCTION_27();
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  v3 = *(v0 + 48);

  v4 = *(v2 + 8);
  v5 = OUTLINED_FUNCTION_0();
  v6(v5);
  v7 = *(v0 + 96);
  v8 = *(v0 + 64);
  v9 = *(v0 + 40);

  OUTLINED_FUNCTION_11();

  return v10();
}

uint64_t closure #1 in ParticipantOutputProvider.makePromptForContactOutput(app:intent:intentResolutionResult:)(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v9 - v5;
  OutputGenerationManifest.canUseServerTTS.setter();
  OutputGenerationManifest.listenAfterSpeaking.setter();
  _s27PhoneCallFlowDelegatePlugin0aB17NLContextProviderC24makeNeedsValueContextFor9parameter07SiriKitC00F6UpdateVSSSg_tFZSo8INIntentC_So0Q8ResponseCTt1g5(*(a2 + 16), *(a2 + 24));
  v7 = type metadata accessor for NLContextUpdate();
  __swift_storeEnumTagSinglePayload(v6, 0, 1, v7);
  return OutputGenerationManifest.nlContextUpdate.setter();
}

uint64_t ParticipantOutputProvider.makeConfirmContactOutput(app:intent:intentResolutionResult:contactToConfirm:)()
{
  OUTLINED_FUNCTION_15();
  v1[9] = v2;
  v1[10] = v0;
  v1[7] = v3;
  v1[8] = v4;
  v5 = type metadata accessor for ContactResolutionVerb();
  v1[11] = v5;
  OUTLINED_FUNCTION_13_2(v5);
  v1[12] = v6;
  v8 = *(v7 + 64);
  v1[13] = OUTLINED_FUNCTION_45();
  v9 = type metadata accessor for DialogPhase();
  OUTLINED_FUNCTION_21(v9);
  v11 = *(v10 + 64);
  v1[14] = OUTLINED_FUNCTION_45();
  v12 = type metadata accessor for OutputGenerationManifest();
  v1[15] = v12;
  OUTLINED_FUNCTION_13_2(v12);
  v1[16] = v13;
  v15 = *(v14 + 64);
  v1[17] = OUTLINED_FUNCTION_45();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  OUTLINED_FUNCTION_21(v16);
  v18 = *(v17 + 64);
  v1[18] = OUTLINED_FUNCTION_45();
  v19 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v19, v20, v21);
}

{
  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[14];
  v4 = v0[10];
  v5 = v0[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0aB17NLContextProviderCySo8INIntentCSo0H8ResponseCGMd, &_s27PhoneCallFlowDelegatePlugin0aB17NLContextProviderCySo8INIntentCSo0H8ResponseCGMR);
  specialized static PhoneCallNLContextProvider.needsConfirmationContext(parameter:resolutionResult:)(*(v4 + 16), *(v4 + 24), v1);
  static DialogPhase.confirmation.getter();
  *(swift_task_alloc() + 16) = v1;
  OutputGenerationManifest.init(dialogPhase:_:)();

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
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_0, v7, v8, "#ParticipantOutputProvider generateYesNoClarificationContactName by using SMART UI", v9, 2u);
    OUTLINED_FUNCTION_26_0();
  }

  v10 = v0[17];
  v12 = v0[12];
  v11 = v0[13];
  v14 = v0[10];
  v13 = v0[11];

  OutputGenerationManifest.responseViewId.setter();
  v15 = v14[20];
  OUTLINED_FUNCTION_28_0(v14 + 16, v14[19]);
  (*(v12 + 104))(v11, enum case for ContactResolutionVerb.phoneCallOrFacetimeAudio(_:), v13);
  v16 = async function pointer to dispatch thunk of ContactResolutionSnippetGenerating.generateYesNoClarificationContactName(contact:contactVerb:primaryButtonInvocationID:secondaryButtonInvocationID:dialogOverride:outputGenerationManifest:)[1];
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[19] = v17;
  *v17 = v18;
  v17[1] = ParticipantOutputProvider.makeConfirmContactOutput(app:intent:intentResolutionResult:contactToConfirm:);
  v19 = v0[13];
  v20 = v0[9];
  v23 = v0[17];

  return dispatch thunk of ContactResolutionSnippetGenerating.generateYesNoClarificationContactName(contact:contactVerb:primaryButtonInvocationID:secondaryButtonInvocationID:dialogOverride:outputGenerationManifest:)(v0 + 2, v20, v19, 0xD000000000000029, 0x8000000000458B10, 0xD000000000000028, 0x8000000000458B40, 0);
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_2_5();
  *v3 = v2;
  v5 = v4[19];
  v6 = v4[13];
  v7 = v4[12];
  v8 = v4[11];
  v9 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v10 = v9;
  *(v11 + 160) = v0;

  (*(v7 + 8))(v6, v8);
  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v12, v13, v14);
}

{
  OUTLINED_FUNCTION_23_0();
  v1 = *(v0 + 144);
  v3 = *(v0 + 104);
  v2 = *(v0 + 112);
  v4 = *(v0 + 56);
  (*(*(v0 + 128) + 8))(*(v0 + 136), *(v0 + 120));
  outlined init with take of SPHConversation((v0 + 16), v4);
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v1, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);

  OUTLINED_FUNCTION_8_1();

  return v5();
}

{
  OUTLINED_FUNCTION_27();
  v1 = v0[18];
  v3 = v0[13];
  v2 = v0[14];
  (*(v0[16] + 8))(v0[17], v0[15]);
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v1, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);

  OUTLINED_FUNCTION_11();
  v5 = v0[20];

  return v4();
}

uint64_t closure #1 in ParticipantOutputProvider.makeConfirmContactOutput(app:intent:intentResolutionResult:contactToConfirm:)(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v8 - v5;
  OutputGenerationManifest.canUseServerTTS.setter();
  OutputGenerationManifest.listenAfterSpeaking.setter();
  outlined init with copy of PhoneCallFlowState<INHangUpCallIntent, INHangUpCallIntentResponse>(a2, v6, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  return OutputGenerationManifest.nlContextUpdate.setter();
}

uint64_t ParticipantOutputProvider.makeContactUnsupportedOutput(app:intent:intentResolutionResult:)()
{
  OUTLINED_FUNCTION_15();
  v1[6] = v2;
  v1[7] = v0;
  v1[4] = v3;
  v1[5] = v4;
  v1[3] = v5;
  v6 = type metadata accessor for PhoneError();
  v1[8] = v6;
  OUTLINED_FUNCTION_21(v6);
  v8 = *(v7 + 64) + 15;
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v9, v10, v11);
}

{
  OUTLINED_FUNCTION_27();
  if ([*(v0 + 48) resolutionResultCode] == &dword_0 + 1 && (v1 = *(v0 + 48), objc_opt_self(), v2 = swift_dynamicCastObjCClass(), (*(v0 + 88) = v2) != 0))
  {
    v3 = *(v0 + 48);
    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    *(v0 + 96) = v4;
    *v4 = v5;
    v4[1] = ParticipantOutputProvider.makeContactUnsupportedOutput(app:intent:intentResolutionResult:);
    v6 = *(v0 + 48);
    v7 = *(v0 + 56);
    v8 = *(v0 + 24);

    return ParticipantOutputProvider.makeContactUnsupportedRFOutput(app:intent:intentResolutionResult:)();
  }

  else
  {
    v10 = *(v0 + 80);
    v11 = *(v0 + 64);
    *v10 = 1;
    OUTLINED_FUNCTION_0();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_13_37();
    lazy protocol witness table accessor for type INIntentSlotValueType and conformance INIntentSlotValueType(v12, v13);
    swift_allocError();
    PhoneError.logged()(v14);
    outlined destroy of PhoneError(v10);
    swift_willThrow();
    v16 = *(v0 + 72);
    v15 = *(v0 + 80);

    OUTLINED_FUNCTION_11();

    return v17();
  }
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_2_5();
  *v3 = v2;
  v5 = *(v4 + 96);
  v6 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v7 = v6;
  *(v8 + 104) = v0;

  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v9, v10, v11);
}

{
  OUTLINED_FUNCTION_15();

  v2 = *(v0 + 72);
  v1 = *(v0 + 80);

  OUTLINED_FUNCTION_8_1();

  return v3();
}

{
  OUTLINED_FUNCTION_23_0();
  v27 = v0;
  v0[2] = v0[13];
  v2 = v0[8];
  v1 = v0[9];
  swift_errorRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  if (swift_dynamicCast())
  {
    v3 = v0[8];
    v4 = v0[9];
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      v5 = v0[13];

      outlined destroy of PhoneError(v4);
      if (one-time initialization token for siriPhone != -1)
      {
        OUTLINED_FUNCTION_6_2();
      }

      v6 = type metadata accessor for Logger();
      __swift_project_value_buffer(v6, static Logger.siriPhone);
      v7 = Logger.logObject.getter();
      v8 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        v10 = swift_slowAlloc();
        v26 = v10;
        *v9 = 136315138;
        *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000040, 0x800000000045D0C0, &v26);
        _os_log_impl(&dword_0, v7, v8, "#ParticipantOutputProvider %s Unmigrated dialog, falling back to legacy output", v9, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v10);
        OUTLINED_FUNCTION_26_0();
        OUTLINED_FUNCTION_26_0();
      }

      swift_task_alloc();
      OUTLINED_FUNCTION_25();
      v0[14] = v11;
      *v11 = v12;
      v11[1] = ParticipantOutputProvider.makeContactUnsupportedOutput(app:intent:intentResolutionResult:);
      v13 = v0[11];
      v14 = v0[7];
      v15 = v0[4];
      v16 = v0[5];
      v17 = v0[3];

      return ParticipantOutputProvider.makeContactUnsupportedTemplatingResultOutput(app:intent:intentResolutionResult:)();
    }

    outlined destroy of PhoneError(v4);
  }

  v19 = v0[13];
  v20 = v0[6];
  v21 = v0[2];

  swift_willThrow();

  v22 = v0[13];
  v24 = v0[9];
  v23 = v0[10];

  OUTLINED_FUNCTION_11();

  return v25();
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_2_5();
  *v3 = v2;
  v5 = *(v4 + 112);
  v6 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v7 = v6;
  *(v8 + 120) = v0;

  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v9, v10, v11);
}

{
  OUTLINED_FUNCTION_15();

  v1 = *(v0 + 16);

  v3 = *(v0 + 72);
  v2 = *(v0 + 80);

  OUTLINED_FUNCTION_8_1();

  return v4();
}

{
  OUTLINED_FUNCTION_15();

  v1 = *(v0 + 16);

  v2 = *(v0 + 120);
  v4 = *(v0 + 72);
  v3 = *(v0 + 80);

  OUTLINED_FUNCTION_11();

  return v5();
}

uint64_t ParticipantOutputProvider.makeContactUnsupportedTemplatingResultOutput(app:intent:intentResolutionResult:)()
{
  OUTLINED_FUNCTION_15();
  v1[20] = v2;
  v1[21] = v0;
  v1[18] = v3;
  v1[19] = v4;
  v1[17] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  OUTLINED_FUNCTION_21(v6);
  v8 = *(v7 + 64);
  v1[22] = OUTLINED_FUNCTION_45();
  v9 = type metadata accessor for TemplatingResult();
  v1[23] = v9;
  OUTLINED_FUNCTION_13_2(v9);
  v1[24] = v10;
  v12 = *(v11 + 64) + 15;
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  v13 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v13, v14, v15);
}

{
  v31 = v0;
  v1 = [*(v0 + 160) unsupportedReason];
  if ((v1 - 5) >= 2)
  {
    if (v1 == &dword_0 + 2)
    {
      v28 = (**(*(v0 + 168) + 72) + class metadata base offset for AddCallParticipantCATs + 328);
      v29 = (*v28 + **v28);
      v8 = (*v28)[1];
      swift_task_alloc();
      OUTLINED_FUNCTION_25();
      *(v0 + 224) = v9;
      *v9 = v10;
      v9[1] = ParticipantOutputProvider.makeContactUnsupportedTemplatingResultOutput(app:intent:intentResolutionResult:);
      v11 = *(v0 + 208);

      return v29(v11);
    }

    else
    {
      v12 = *(v0 + 168);
      v13 = *(v0 + 144);
      v14 = swift_task_alloc();
      *(v0 + 240) = v14;
      v15 = *(v0 + 152);
      v14[1].i64[0] = v12;
      v14[1].i64[1] = v13;
      v14[2] = vextq_s8(v15, v15, 8uLL);
      v16 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
      swift_task_alloc();
      OUTLINED_FUNCTION_25();
      *(v0 + 248) = v17;
      *v17 = v18;
      v17[1] = ParticipantOutputProvider.makeContactUnsupportedTemplatingResultOutput(app:intent:intentResolutionResult:);
      v19 = *(v0 + 200);
      v20 = *(v0 + 184);
      OUTLINED_FUNCTION_66_0();

      return withCheckedThrowingContinuation<A>(isolation:function:_:)(v21, v22, v23, v24, v25, v26, v14, v27);
    }
  }

  else
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2();
    }

    v2 = type metadata accessor for Logger();
    __swift_project_value_buffer(v2, static Logger.siriPhone);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v30 = v6;
      *v5 = 136315138;
      *(v5 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000064, 0x800000000045D2C0, &v30);
      _os_log_impl(&dword_0, v3, v4, "%s", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v6);
      OUTLINED_FUNCTION_26_0();
      OUTLINED_FUNCTION_26_0();
    }

    static SiriKitLifecycle._logCrashToEventBus(_:)();
    return _assertionFailure(_:_:file:line:flags:)();
  }
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_2_5();
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
  v1 = *(v0 + 208);
  v2 = *(v0 + 192);
  v24 = *(v0 + 200);
  v3 = *(v0 + 176);
  v4 = *(v0 + 168);
  v5 = *(v0 + 136);
  v6 = *(v0 + 184);
  (*(v2 + 32))(*(v0 + 216));
  v7 = v4[7];
  v8 = v4[8];
  OUTLINED_FUNCTION_23_18(v4 + 4);
  v9 = OUTLINED_FUNCTION_2();
  v10(v9);
  v11 = v4[7];
  v12 = v4[8];
  OUTLINED_FUNCTION_23_18(v4 + 4);
  v13 = OUTLINED_FUNCTION_2();
  v14(v13);
  v15 = *(v0 + 88);
  __swift_project_boxed_opaque_existential_1((v0 + 56), *(v0 + 80));
  OUTLINED_FUNCTION_2();
  dispatch thunk of DeviceState.isTextToSpeechEnabled.getter();
  v16 = type metadata accessor for NLContextUpdate();
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v16);
  type metadata accessor for AceOutput();
  *&v17 = OUTLINED_FUNCTION_27_10();
  *(v0 + 96) = v17;
  v5[3] = v18;
  v5[4] = &protocol witness table for AceOutput;
  __swift_allocate_boxed_opaque_existential_1(v5);
  OUTLINED_FUNCTION_25_19();
  static AceOutputHelper.makeCompletionViewOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v0 + 96, &_s11SiriKitFlow0C8Activity_pSgMd, &_s11SiriKitFlow0C8Activity_pSgMR);
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v3, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v19 = *(v2 + 8);
  v20 = OUTLINED_FUNCTION_123();
  v21(v20);
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));

  OUTLINED_FUNCTION_8_1();

  return v22();
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  v3 = v2;
  OUTLINED_FUNCTION_13_1();
  *v4 = v3;
  v6 = *(v5 + 248);
  v7 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v8 = v7;
  *(v3 + 256) = v0;

  if (!v0)
  {
    v9 = *(v3 + 240);
  }

  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v10, v11, v12);
}

{
  v2 = *(v0 + 192);
  v1 = *(v0 + 200);
  v24 = *(v0 + 208);
  v3 = *(v0 + 176);
  v4 = *(v0 + 168);
  v5 = *(v0 + 136);
  v6 = *(v0 + 184);
  (*(v2 + 32))(*(v0 + 216));
  v7 = v4[7];
  v8 = v4[8];
  OUTLINED_FUNCTION_23_18(v4 + 4);
  v9 = OUTLINED_FUNCTION_2();
  v10(v9);
  v11 = v4[7];
  v12 = v4[8];
  OUTLINED_FUNCTION_23_18(v4 + 4);
  v13 = OUTLINED_FUNCTION_2();
  v14(v13);
  v15 = *(v0 + 88);
  __swift_project_boxed_opaque_existential_1((v0 + 56), *(v0 + 80));
  OUTLINED_FUNCTION_2();
  dispatch thunk of DeviceState.isTextToSpeechEnabled.getter();
  v16 = type metadata accessor for NLContextUpdate();
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v16);
  type metadata accessor for AceOutput();
  *&v17 = OUTLINED_FUNCTION_27_10();
  *(v0 + 96) = v17;
  v5[3] = v18;
  v5[4] = &protocol witness table for AceOutput;
  __swift_allocate_boxed_opaque_existential_1(v5);
  OUTLINED_FUNCTION_25_19();
  static AceOutputHelper.makeCompletionViewOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v0 + 96, &_s11SiriKitFlow0C8Activity_pSgMd, &_s11SiriKitFlow0C8Activity_pSgMR);
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v3, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v19 = *(v2 + 8);
  v20 = OUTLINED_FUNCTION_123();
  v21(v20);
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));

  OUTLINED_FUNCTION_8_1();

  return v22();
}

{
  OUTLINED_FUNCTION_27();
  v1 = v0[29];
  v3 = v0[26];
  v2 = v0[27];
  v4 = v0[25];
  v5 = v0[22];

  OUTLINED_FUNCTION_11();

  return v6();
}

{
  OUTLINED_FUNCTION_27();
  v1 = v0[30];

  v2 = v0[32];
  v4 = v0[26];
  v3 = v0[27];
  v5 = v0[25];
  v6 = v0[22];

  OUTLINED_FUNCTION_11();

  return v7();
}

void closure #1 in ParticipantOutputProvider.makeContactUnsupportedTemplatingResultOutput(app:intent:intentResolutionResult:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v18 = a3;
  v19 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy11SiriKitFlow16TemplatingResultVs5Error_pGMd, &_sScCy11SiriKitFlow16TemplatingResultVs5Error_pGMR);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v18 - v11;
  v13 = *(a2 + 16);
  v14 = *(a2 + 24);
  v15 = ParticipantOutputProvider.mapToStartCallResolutionResult(_:)(a4);
  (*(v9 + 16))(v12, a1, v8);
  v16 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v17 = swift_allocObject();
  (*(v9 + 32))(v17 + v16, v12, v8);
  specialized ContactsSlotTemplating.makeParameterValueUnsupportedDialog(app:parameterName:intentResolutionResult:intent:multicardinalValueIndex:_:)(v18, v13, v14, v15, v19, 0, 1, partial apply for closure #1 in closure #1 in ParticipantOutputProvider.makeContactUnsupportedTemplatingResultOutput(app:intent:intentResolutionResult:), v17);
}

uint64_t ParticipantOutputProvider.makeContactUnsupportedRFOutput(app:intent:intentResolutionResult:)()
{
  OUTLINED_FUNCTION_15();
  v1[6] = v2;
  v1[7] = v0;
  v1[5] = v3;
  v4 = type metadata accessor for PhoneError();
  v1[8] = v4;
  OUTLINED_FUNCTION_21(v4);
  v6 = *(v5 + 64);
  v1[9] = OUTLINED_FUNCTION_45();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  OUTLINED_FUNCTION_21(v7);
  v9 = *(v8 + 64);
  v1[10] = OUTLINED_FUNCTION_45();
  v10 = type metadata accessor for DialogPhase();
  OUTLINED_FUNCTION_21(v10);
  v12 = *(v11 + 64);
  v1[11] = OUTLINED_FUNCTION_45();
  v13 = type metadata accessor for OutputGenerationManifest();
  v1[12] = v13;
  OUTLINED_FUNCTION_13_2(v13);
  v1[13] = v14;
  v16 = *(v15 + 64);
  v1[14] = OUTLINED_FUNCTION_45();
  v17 = type metadata accessor for NLContextUpdate();
  v1[15] = v17;
  OUTLINED_FUNCTION_13_2(v17);
  v1[16] = v18;
  v20 = *(v19 + 64);
  v1[17] = OUTLINED_FUNCTION_45();
  v21 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v21, v22, v23);
}

{
  v37 = v0;
  v1 = [*(v0 + 48) unsupportedReason];
  if (v1 == &dword_0 + 2)
  {
    v2 = *(v0 + 56);
    v3 = v2[24];
    v4 = v2[25];
    OUTLINED_FUNCTION_28_0(v2 + 21, v3);
    v5 = *(v4 + 32);
    v34 = (v5 + *v5);
    v6 = v5[1];
    v7 = swift_task_alloc();
    *(v0 + 144) = v7;
    *v7 = v0;
    v7[1] = ParticipantOutputProvider.makeContactUnsupportedRFOutput(app:intent:intentResolutionResult:);

    return v34(v3, v4);
  }

  else
  {
    v9 = v1;
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2();
    }

    v10 = type metadata accessor for Logger();
    __swift_project_value_buffer(v10, static Logger.siriPhone);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v35 = v14;
      *v13 = 136315138;
      *(v0 + 16) = v9;
      *(v0 + 24) = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo020INAddCallParticipantC17UnsupportedReasonVSgMd, &_sSo020INAddCallParticipantC17UnsupportedReasonVSgMR);
      v15 = String.init<A>(describing:)();
      v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, &v35);

      *(v13 + 4) = v17;
      _os_log_impl(&dword_0, v11, v12, "#ParticipantOutputProvider makeContactUnsupportedOutput: the dialog for %s hasn't been migrated to Response Framework.", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v14);
      OUTLINED_FUNCTION_26_0();
      OUTLINED_FUNCTION_26_0();
    }

    v19 = *(v0 + 64);
    v18 = *(v0 + 72);
    v20 = *(v0 + 48);
    v35 = 0;
    v36 = 0xE000000000000000;
    _StringGuts.grow(_:)(79);
    v21._countAndFlagsBits = 0xD00000000000003ALL;
    v21._object = 0x800000000045D330;
    String.append(_:)(v21);
    *(v0 + 32) = [v20 unsupportedReason];
    v22._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v22);

    v23._object = 0x800000000045D370;
    v23._countAndFlagsBits = 0xD000000000000013;
    String.append(_:)(v23);
    v24 = v36;
    *v18 = v35;
    v18[1] = v24;
    v18[2] = 0xD00000000000003BLL;
    v18[3] = 0x800000000045D390;
    v18[4] = 0xD000000000000042;
    v18[5] = 0x800000000045D3D0;
    v18[6] = (&stru_B8 + 1);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_13_37();
    lazy protocol witness table accessor for type INIntentSlotValueType and conformance INIntentSlotValueType(v25, v26);
    swift_allocError();
    PhoneError.logged()(v27);
    outlined destroy of PhoneError(v18);
    swift_willThrow();
    v28 = *(v0 + 136);
    v29 = *(v0 + 112);
    v31 = *(v0 + 80);
    v30 = *(v0 + 88);
    v32 = *(v0 + 72);

    OUTLINED_FUNCTION_11();

    return v33();
  }
}

{
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_28();
  v3 = v2;
  OUTLINED_FUNCTION_13_1();
  *v4 = v3;
  v6 = *(v5 + 144);
  *v4 = *v1;
  v3[19] = v7;

  if (v0)
  {
    v8 = v3[17];
    v9 = v3[14];
    v11 = v3[10];
    v10 = v3[11];
    v12 = v3[9];

    OUTLINED_FUNCTION_11();

    return v13();
  }

  else
  {
    OUTLINED_FUNCTION_66_0();

    return _swift_task_switch(v15, v16, v17);
  }
}

{
  v2 = v0[16];
  v1 = v0[17];
  v4 = v0[14];
  v3 = v0[15];
  v6 = v0[10];
  v5 = v0[11];
  v7 = v0[7];
  _s27PhoneCallFlowDelegatePlugin0aB17NLContextProviderC24makeNeedsValueContextFor9parameter07SiriKitC00F6UpdateVSSSg_tFZSo8INIntentC_So0Q8ResponseCTt1g5(0x73746361746E6F63, 0xE800000000000000);
  static DialogPhase.clarification.getter();
  OutputGenerationManifest.init(dialogPhase:_:)();
  (*(v2 + 16))(v6, v1, v3);
  __swift_storeEnumTagSinglePayload(v6, 0, 1, v3);
  OutputGenerationManifest.nlContextUpdate.setter();
  v8 = v7[29];
  v9 = v7[30];
  OUTLINED_FUNCTION_28_0(v7 + 26, v8);
  v10 = async function pointer to dispatch thunk of ResponseGenerating.makeResponseOutput(patternExecutionResult:outputGenerationManifest:)[1];
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[20] = v11;
  *v11 = v12;
  v11[1] = ParticipantOutputProvider.makeContactUnsupportedRFOutput(app:intent:intentResolutionResult:);
  v13 = v0[19];
  v14 = v0[14];
  v15 = v0[5];

  return dispatch thunk of ResponseGenerating.makeResponseOutput(patternExecutionResult:outputGenerationManifest:)(v15, v13, v14, v8, v9);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_2_5();
  *v3 = v2;
  v5 = *(v4 + 160);
  v6 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v7 = v6;
  *(v8 + 168) = v0;

  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v9, v10, v11);
}

{
  v2 = *(v0 + 128);
  v1 = *(v0 + 136);
  v4 = *(v0 + 112);
  v3 = *(v0 + 120);
  v5 = *(v0 + 96);
  v6 = *(v0 + 104);
  v8 = *(v0 + 80);
  v7 = *(v0 + 88);
  v9 = *(v0 + 72);

  (*(v6 + 8))(v4, v5);
  v10 = *(v2 + 8);
  v11 = OUTLINED_FUNCTION_0();
  v12(v11);

  OUTLINED_FUNCTION_8_1();

  return v13();
}

{
  OUTLINED_FUNCTION_23_0();
  v2 = *(v0 + 128);
  v1 = *(v0 + 136);
  v4 = *(v0 + 112);
  v3 = *(v0 + 120);
  v5 = *(v0 + 96);
  v6 = *(v0 + 104);

  (*(v6 + 8))(v4, v5);
  v7 = *(v2 + 8);
  v8 = OUTLINED_FUNCTION_0();
  v9(v8);
  v10 = *(v0 + 168);
  v11 = *(v0 + 136);
  v12 = *(v0 + 112);
  v14 = *(v0 + 80);
  v13 = *(v0 + 88);
  v15 = *(v0 + 72);

  OUTLINED_FUNCTION_11();

  return v16();
}

id ParticipantOutputProvider.mapToStartCallResolutionResult(_:)(void *a1)
{
  v2 = [a1 unsupportedReason];
  if (v2 == &dword_4)
  {
    v3 = 4;
  }

  else
  {
    v3 = 1;
  }

  if (v2 == (&dword_0 + 3))
  {
    v4 = 3;
  }

  else
  {
    v4 = v3;
  }

  type metadata accessor for INStartCallContactResolutionResult();
  v5 = [a1 alternatives];
  static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return @nonobjc INStartCallContactResolutionResult.__allocating_init(unsupportedWithReason:alternativeItems:)(v4);
}

id @nonobjc INStartCallContactResolutionResult.__allocating_init(unsupportedWithReason:alternativeItems:)(uint64_t a1)
{
  isa = Array._bridgeToObjectiveC()().super.isa;

  v3 = [swift_getObjCClassFromMetadata() resolutionResultUnsupportedWithReason:a1 alternativeItems:isa];

  return v3;
}

uint64_t ParticipantOutputProvider.makeContactDisambiguationOutput(app:intent:intentResolutionResult:disambiguationList:)()
{
  OUTLINED_FUNCTION_15();
  v1[22] = v2;
  v1[23] = v0;
  v1[20] = v3;
  v1[21] = v4;
  v1[18] = v5;
  v1[19] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  OUTLINED_FUNCTION_21(v7);
  v9 = *(v8 + 64);
  v1[24] = OUTLINED_FUNCTION_45();
  v10 = type metadata accessor for NLContextUpdate();
  v1[25] = v10;
  OUTLINED_FUNCTION_13_2(v10);
  v1[26] = v11;
  v13 = *(v12 + 64);
  v1[27] = OUTLINED_FUNCTION_45();
  v14 = type metadata accessor for TemplatingResult();
  v1[28] = v14;
  OUTLINED_FUNCTION_13_2(v14);
  v1[29] = v15;
  v17 = *(v16 + 64);
  v1[30] = OUTLINED_FUNCTION_45();
  v18 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v18, v19, v20);
}

{
  OUTLINED_FUNCTION_23_0();
  v1 = *(v0 + 184);
  v3 = *(v0 + 152);
  v2 = *(v0 + 160);
  v4 = swift_task_alloc();
  *(v0 + 248) = v4;
  v5 = *(v0 + 168);
  *(v4 + 16) = v1;
  *(v4 + 24) = v3;
  *(v4 + 32) = v5;
  *(v4 + 48) = v2;
  v6 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 256) = v7;
  *v7 = v8;
  v7[1] = ParticipantOutputProvider.makeContactDisambiguationOutput(app:intent:intentResolutionResult:disambiguationList:);
  v9 = *(v0 + 240);
  v10 = *(v0 + 224);
  OUTLINED_FUNCTION_66_0();
  OUTLINED_FUNCTION_26_17();

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v11, v12, v13, v14, v15, v16, v17, v18);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  v3 = v2;
  OUTLINED_FUNCTION_13_1();
  *v4 = v3;
  v6 = *(v5 + 256);
  v7 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v8 = v7;
  *(v3 + 264) = v0;

  if (!v0)
  {
    v9 = *(v3 + 248);
  }

  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v10, v11, v12);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  v2 = *(v1 + 280);
  v3 = *(v1 + 272);
  v4 = *v0;
  OUTLINED_FUNCTION_4_2();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v6, v7, v8);
}

{
  OUTLINED_FUNCTION_15();
  v1 = swift_task_alloc();
  *(v0 + 288) = v1;
  v2 = vextq_s8(*(v0 + 176), *(v0 + 176), 8uLL);
  *(v1 + 16) = *(v0 + 152);
  *(v1 + 32) = v2;
  v3 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v4 = swift_task_alloc();
  *(v0 + 296) = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo9SAAceViewCGMd, &_sSaySo9SAAceViewCGMR);
  *v4 = v0;
  v4[1] = ParticipantOutputProvider.makeContactDisambiguationOutput(app:intent:intentResolutionResult:disambiguationList:);
  OUTLINED_FUNCTION_66_0();
  OUTLINED_FUNCTION_26_17();

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v5, v6, v7, v8, v9, v10, v11, v12);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_2_5();
  *v3 = v2;
  v5 = *(v4 + 296);
  v6 = *(v4 + 288);
  v7 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v8 = v7;
  *(v9 + 304) = v0;

  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v10, v11, v12);
}

{
  v17 = *(v0 + 240);
  v18 = *(v0 + 232);
  v1 = *(v0 + 216);
  v19 = *(v0 + 224);
  v3 = *(v0 + 200);
  v2 = *(v0 + 208);
  v5 = *(v0 + 184);
  v4 = *(v0 + 192);
  v6 = *(v0 + 144);
  v16 = *(v0 + 136);
  v8 = v5[7];
  v7 = v5[8];
  __swift_project_boxed_opaque_existential_1(v5 + 4, v8);
  (*(v7 + 8))(v8, v7);
  v9 = v5[7];
  v10 = v5[8];
  __swift_project_boxed_opaque_existential_1(v5 + 4, v9);
  (*(v10 + 8))(v9, v10);
  v11 = *(v0 + 88);
  OUTLINED_FUNCTION_28_0((v0 + 56), *(v0 + 80));
  dispatch thunk of DeviceState.isTextToSpeechEnabled.getter();
  (*(v2 + 16))(v4, v1, v3);
  __swift_storeEnumTagSinglePayload(v4, 0, 1, v3);
  type metadata accessor for AceOutput();
  *&v12 = OUTLINED_FUNCTION_27_10();
  *(v0 + 96) = v12;
  v6[3] = v13;
  v6[4] = &protocol witness table for AceOutput;
  __swift_allocate_boxed_opaque_existential_1(v6);
  static AceOutputHelper.makeClarificationViewOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();

  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v0 + 96, &_s11SiriKitFlow0C8Activity_pSgMd, &_s11SiriKitFlow0C8Activity_pSgMR);
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v4, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  (*(v2 + 8))(v1, v3);
  (*(v18 + 8))(v17, v19);
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));

  OUTLINED_FUNCTION_8_1();

  return v14();
}

{
  OUTLINED_FUNCTION_27();
  v1 = v0[31];

  v2 = v0[33];
  v3 = v0[30];
  v4 = v0[27];
  v5 = v0[24];

  OUTLINED_FUNCTION_11();

  return v6();
}

{
  OUTLINED_FUNCTION_27();
  v2 = v0[29];
  v1 = v0[30];
  v3 = v0[28];
  (*(v0[26] + 8))(v0[27], v0[25]);
  v4 = *(v2 + 8);
  v5 = OUTLINED_FUNCTION_0();
  v6(v5);
  v7 = v0[38];
  v8 = v0[30];
  v9 = v0[27];
  v10 = v0[24];

  OUTLINED_FUNCTION_11();

  return v11();
}

uint64_t ParticipantOutputProvider.makeContactDisambiguationOutput(app:intent:intentResolutionResult:disambiguationList:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_15();
  v23 = swift_task_alloc();
  v22[17].i64[0] = v23;
  v23[1] = vextq_s8(v22[11], v22[11], 8uLL);
  v24 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v22[17].i64[1] = v25;
  *v25 = v26;
  v25[1] = ParticipantOutputProvider.makeContactDisambiguationOutput(app:intent:intentResolutionResult:disambiguationList:);
  v27 = v22[13].i64[1];
  v28 = v22[12].i64[1];
  OUTLINED_FUNCTION_66_0();
  OUTLINED_FUNCTION_26_17();

  return withCheckedContinuation<A>(isolation:function:_:)(v29, v30, v31, v32, v33, v34, v35, v36, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t closure #1 in ParticipantOutputProvider.makeContactDisambiguationOutput(app:intent:intentResolutionResult:disambiguationList:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v27 = a4;
  v28 = a6;
  v26 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy11SiriKitFlow16TemplatingResultVs5Error_pGMd, &_sScCy11SiriKitFlow16TemplatingResultVs5Error_pGMR);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v24 - v12;
  v14 = a2[2];
  v24 = a2[3];
  v25 = v14;
  v16 = a2[7];
  v15 = a2[8];
  __swift_project_boxed_opaque_existential_1(a2 + 4, v16);
  (*(v15 + 8))(v29, v16, v15);
  __swift_project_boxed_opaque_existential_1(v29, v29[3]);
  LOBYTE(v16) = DeviceState.isAuthenticatedForPhone.getter();
  v17 = a2[31];
  (*(v10 + 16))(v13, a1, v9);
  v18 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v19 = swift_allocObject();
  (*(v10 + 32))(v19 + v18, v13, v9);
  v20 = (*(*v17 + class metadata base offset for PhoneCallBaseCatTemplatingService + 216))(a5, partial apply for closure #1 in closure #1 in ParticipantOutputProvider.makeContactDisambiguationOutput(app:intent:intentResolutionResult:disambiguationList:), v19);
  v22 = v21;

  specialized ContactsSlotTemplating.makeParameterValueDisambiguationDialog(app:parameterName:intentResolutionResult:disambiguationList:deviceIsLocked:intent:_:)(v26, v25, v24, v27, a5, v16 & 1, v28, v20, v22);

  return __swift_destroy_boxed_opaque_existential_1(v29);
}

uint64_t closure #1 in closure #1 in ParticipantOutputProvider.makeContactUnsupportedTemplatingResultOutput(app:intent:intentResolutionResult:)(uint64_t a1)
{
  v2 = type metadata accessor for TemplatingResult();
  v3 = OUTLINED_FUNCTION_7(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v3);
  OUTLINED_FUNCTION_4();
  v10 = v9 - v8;
  v11 = OUTLINED_FUNCTION_123();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(v11, v12);
  v14 = OUTLINED_FUNCTION_23_1(v13);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = (v20 - v17);
  outlined init with copy of PhoneCallFlowState<INHangUpCallIntent, INHangUpCallIntentResponse>(a1, v20 - v17, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v20[1] = *v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy11SiriKitFlow16TemplatingResultVs5Error_pGMd, &_sScCy11SiriKitFlow16TemplatingResultVs5Error_pGMR);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    (*(v5 + 32))(v10, v18, v2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy11SiriKitFlow16TemplatingResultVs5Error_pGMd, &_sScCy11SiriKitFlow16TemplatingResultVs5Error_pGMR);
    return CheckedContinuation.resume(returning:)();
  }
}

uint64_t closure #2 in ParticipantOutputProvider.makeContactDisambiguationOutput(app:intent:intentResolutionResult:disambiguationList:)(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy11SiriKitFlow15NLContextUpdateVs5NeverOGMd, &_sScCy11SiriKitFlow15NLContextUpdateVs5NeverOGMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v16 - v7;
  v9 = a2[32];
  v10 = a2[2];
  v11 = a2[3];
  v12 = SiriKitDisambiguationList.rawItems.getter();
  (*(v5 + 16))(v8, a1, v4);
  v13 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v14 = swift_allocObject();
  (*(v5 + 32))(v14 + v13, v8, v4);
  (*(*v9 + class metadata base offset for PhoneCallNLContextProvider + 40))(v10, v11, v12, partial apply for closure #1 in closure #2 in ParticipantOutputProvider.makeContactDisambiguationOutput(app:intent:intentResolutionResult:disambiguationList:), v14);
}

uint64_t closure #1 in closure #2 in ParticipantOutputProvider.makeContactDisambiguationOutput(app:intent:intentResolutionResult:disambiguationList:)(uint64_t a1)
{
  v2 = type metadata accessor for NLContextUpdate();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy11SiriKitFlow15NLContextUpdateVs5NeverOGMd, &_sScCy11SiriKitFlow15NLContextUpdateVs5NeverOGMR);
  return CheckedContinuation.resume(returning:)();
}

uint64_t closure #3 in ParticipantOutputProvider.makeContactDisambiguationOutput(app:intent:intentResolutionResult:disambiguationList:)(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  v29 = a3;
  v30 = a5;
  v28 = a2;
  v31 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySaySo9SAAceViewCGs5Error_pGMd, &_sScCySaySo9SAAceViewCGs5Error_pGMR);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v26 - v9;
  v11 = type metadata accessor for CATOption();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v13 = a4[3];
  v27 = a4[2];
  v14 = a4[7];
  v15 = a4[8];
  __swift_project_boxed_opaque_existential_1(a4 + 4, v14);
  (*(v15 + 8))(v32, v14, v15);
  __swift_project_boxed_opaque_existential_1(v32, v32[3]);
  HIDWORD(v26) = DeviceState.isAuthenticatedForPhone.getter();
  type metadata accessor for PhoneCallDisplayTextCATs();
  static CATOption.defaultMode.getter();
  v16 = CATWrapper.__allocating_init(options:globals:)();
  if (one-time initialization token for siriPhone != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  __swift_project_value_buffer(v17, static Logger.siriPhone);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_0, v18, v19, "#StartCallViewBuilders Providing DefaultDisambiguationBuilder", v20, 2u);
  }

  outlined init with copy of SignalProviding((a4 + 4), v35);
  v21 = v29;
  v33[0] = v28;
  v33[1] = v29;
  v33[2] = v27;
  v33[3] = v13;
  v33[4] = v30;
  v34 = BYTE4(v26) & 1;
  v35[5] = v16;

  v22 = v21;

  __swift_destroy_boxed_opaque_existential_1(v32);
  (*(v7 + 16))(v10, v31, v6);
  v23 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v24 = swift_allocObject();
  (*(v7 + 32))(v24 + v23, v10, v6);
  specialized IdiomSensitiveViewBuilder.makeViews(utteranceViews:_:)(_swiftEmptyArrayStorage, partial apply for closure #1 in closure #1 in CallingIntentContactNeedsDisambiguationFlowStrategy.makeLegacyPromptForDisambiguation(resolveRecord:disambiguationList:), v24);

  return outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v33, &_s27PhoneCallFlowDelegatePlugin28DefaultDisambiguationBuilder33_6270EEFB01DDA464E81F258DCCAFA0E4LLVySo05INAddB17ParticipantIntentCGMd, &_s27PhoneCallFlowDelegatePlugin28DefaultDisambiguationBuilder33_6270EEFB01DDA464E81F258DCCAFA0E4LLVySo05INAddB17ParticipantIntentCGMR);
}

uint64_t *ParticipantOutputProvider.deinit()
{
  v1 = v0[3];

  __swift_destroy_boxed_opaque_existential_1(v0 + 4);
  v2 = v0[9];

  v3 = v0[10];

  __swift_destroy_boxed_opaque_existential_1(v0 + 11);
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1(v0 + 21);
  __swift_destroy_boxed_opaque_existential_1(v0 + 26);
  v4 = v0[31];

  v5 = v0[32];

  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>((v0 + 33), &_s27PhoneCallFlowDelegatePlugin22ContactsSlotTemplatingVySo05INAddB17ParticipantIntentCSo0ibjK8ResponseCGMd, &_s27PhoneCallFlowDelegatePlugin22ContactsSlotTemplatingVySo05INAddB17ParticipantIntentCSo0ibjK8ResponseCGMR);
  return v0;
}

uint64_t ParticipantOutputProvider.__deallocating_deinit()
{
  ParticipantOutputProvider.deinit();

  return swift_deallocClassInstance();
}

uint64_t protocol witness for ResolveContactOutputProviding.makePromptForContactOutput(app:intent:intentResolutionResult:) in conformance ParticipantOutputProvider(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(**v4 + 176);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = closure #1 in ActionableCallControlFlow.execute();

  return v14(a1, a2, a3, a4);
}

uint64_t protocol witness for ResolveContactOutputProviding.makeConfirmContactOutput(app:intent:intentResolutionResult:contactToConfirm:) in conformance ParticipantOutputProvider(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = *(**v5 + 184);
  v16 = (v12 + *v12);
  v13 = v12[1];
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  *v14 = v6;
  v14[1] = closure #2 in ActionableCallControlFlow.execute();

  return v16(a1, a2, a3, a4, a5);
}

uint64_t protocol witness for ResolveContactOutputProviding.makeContactUnsupportedOutput(app:intent:intentResolutionResult:) in conformance ParticipantOutputProvider(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(**v4 + 192);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = closure #1 in ActionableCallControlFlow.execute();

  return v14(a1, a2, a3, a4);
}

uint64_t protocol witness for ResolveContactOutputProviding.makeContactDisambiguationOutput(app:intent:intentResolutionResult:disambiguationList:) in conformance ParticipantOutputProvider(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = *(**v5 + 224);
  v16 = (v12 + *v12);
  v13 = v12[1];
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  *v14 = v6;
  v14[1] = closure #1 in ActionableCallControlFlow.execute();

  return v16(a1, a2, a3, a4, a5);
}

uint64_t specialized PhoneCallNLContextProvider.init(deviceState:assistantProperties:)(uint64_t *a1, uint64_t *a2)
{
  outlined init with copy of SignalProviding(a2, v2 + *(*v2 + class metadata base offset for PhoneCallNLContextProvider + 16));
  outlined init with copy of SignalProviding(a1, v2 + *(*v2 + class metadata base offset for PhoneCallNLContextProvider + 24));
  v5 = DefaultNLContextProvider.init()();
  __swift_destroy_boxed_opaque_existential_1(a2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v5;
}

uint64_t _s27PhoneCallFlowDelegatePlugin0aB17NLContextProviderC30makeSDAForNeedsValueForContact33_3C2ABB69DDB872D121E37A32A4E694A9LLSay12SiriNLUTypes0W29_Nlu_External_SystemDialogActVGSgyFZSo8INIntentC_So16INIntentResponseCTtg5()
{
  v51 = type metadata accessor for Siri_Nlu_External_SystemDialogAct();
  v0 = *(v51 - 8);
  v1 = *(v0 + 64);
  __chkstk_darwin(v51);
  v49 = v47 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = type metadata accessor for PhoneError();
  v3 = *(*(v48 - 1) + 64);
  v4 = __chkstk_darwin(v48);
  v47[2] = v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v47[1] = v47 - v6;
  v7 = type metadata accessor for Siri_Nlu_External_UsoGraph();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v54 = type metadata accessor for Siri_Nlu_External_SystemPrompted();
  v9 = *(v54 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v54);
  v53 = v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = v47 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology17UsoBuilderOptionsVSgMd, &_s12SiriOntology17UsoBuilderOptionsVSgMR);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = v47 - v17;
  v19 = type metadata accessor for UsoTaskBuilder_call_common_PhoneCall();
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();
  v22 = UsoTaskBuilder_call_common_PhoneCall.init()();
  v23 = type metadata accessor for UsoEntityBuilder_common_PhoneCall();
  v24 = *(v23 + 48);
  v25 = *(v23 + 52);
  swift_allocObject();
  v26 = UsoEntityBuilder_common_PhoneCall.init()();
  v27 = type metadata accessor for UsoEntityBuilder_common_Person();
  v28 = *(v27 + 48);
  v29 = *(v27 + 52);
  swift_allocObject();
  UsoEntityBuilder_common_Person.init()();
  dispatch thunk of UsoEntityBuilder_common_PhoneCall.addRecipients(value:)();

  v50 = v26;
  dispatch thunk of Uso_VerbTemplateBuilder_Target.setTarget(value:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_426260;
  *(v30 + 32) = v22;
  v31 = type metadata accessor for UsoBuilderOptions();
  __swift_storeEnumTagSinglePayload(v18, 1, 1, v31);
  v52 = v22;

  static UsoGraphBuilder.buildGraphWithOptions(taskBuilders:options:)();

  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v18, &_s12SiriOntology17UsoBuilderOptionsVSgMd, &_s12SiriOntology17UsoBuilderOptionsVSgMR);
  Siri_Nlu_External_SystemPrompted.init()();
  static UsoGraphProtoWriter.toSwiftProtobuf(graph:vocabManager:)();
  Siri_Nlu_External_SystemPrompted.target.setter();
  if (one-time initialization token for siriPhone != -1)
  {
    swift_once();
  }

  v32 = type metadata accessor for Logger();
  __swift_project_value_buffer(v32, static Logger.siriPhone);
  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v55 = v48;
    *v35 = 136315138;
    swift_beginAccess();
    v36 = v53;
    (*(v9 + 16))(v53, v14, v54);
    v37 = _sSS27PhoneCallFlowDelegatePluginE10describingSS21InternalSwiftProtobuf7Message_p_tcfCTf4en_n12SiriNLUTypes0K28_Nlu_External_SystemPromptedV_Tt0g5(v36);
    v39 = v14;
    v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v38, &v55);

    *(v35 + 4) = v40;
    v14 = v39;
    _os_log_impl(&dword_0, v33, v34, "#PhoneCallNLContextProvider Returning NLUSystemPrompted for prompt for start call: %s", v35, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v48);
  }

  else
  {

    v36 = v53;
  }

  v41 = v49;
  Siri_Nlu_External_SystemDialogAct.init()();
  swift_beginAccess();
  v42 = v54;
  (*(v9 + 16))(v36, v14, v54);
  Siri_Nlu_External_SystemDialogAct.prompted.setter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D29_Nlu_External_SystemDialogActVGMd, &_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D29_Nlu_External_SystemDialogActVGMR);
  v43 = *(v0 + 72);
  v44 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v45 = swift_allocObject();
  *(v45 + 16) = xmmword_424FD0;
  (*(v0 + 32))(v45 + v44, v41, v51);

  (*(v9 + 8))(v14, v42);
  return v45;
}

uint64_t lazy protocol witness table accessor for type INIntentSlotValueType and conformance INIntentSlotValueType(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t type metadata accessor for INStartCallContactResolutionResult()
{
  result = lazy cache variable for type metadata for INStartCallContactResolutionResult;
  if (!lazy cache variable for type metadata for INStartCallContactResolutionResult)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for INStartCallContactResolutionResult);
  }

  return result;
}

uint64_t partial apply for closure #1 in closure #2 in ParticipantOutputProvider.makeContactDisambiguationOutput(app:intent:intentResolutionResult:disambiguationList:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy11SiriKitFlow15NLContextUpdateVs5NeverOGMd, &_sScCy11SiriKitFlow15NLContextUpdateVs5NeverOGMR);
  OUTLINED_FUNCTION_21(v0);
  v2 = *(v1 + 80);
  v3 = OUTLINED_FUNCTION_32_12();

  return closure #1 in closure #2 in ParticipantOutputProvider.makeContactDisambiguationOutput(app:intent:intentResolutionResult:disambiguationList:)(v3);
}

uint64_t partial apply for closure #1 in closure #1 in ParticipantOutputProvider.makeContactDisambiguationOutput(app:intent:intentResolutionResult:disambiguationList:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy11SiriKitFlow16TemplatingResultVs5Error_pGMd, &_sScCy11SiriKitFlow16TemplatingResultVs5Error_pGMR);
  OUTLINED_FUNCTION_21(v0);
  v2 = *(v1 + 80);
  v3 = OUTLINED_FUNCTION_32_12();
  return closure #1 in closure #1 in ParticipantOutputProvider.makeContactUnsupportedTemplatingResultOutput(app:intent:intentResolutionResult:)(v3);
}

uint64_t OUTLINED_FUNCTION_31_16()
{

  return CATWrapper.__allocating_init(options:globals:)();
}

uint64_t static PersonIntentNode.getFilteredAlternatives(span:)()
{
  v0 = *(TerminalElement.MatchingSpan.alternateInterpretationConfidences.getter() + 16);

  if (v0 < 2)
  {
    return 0;
  }

  v1 = TerminalElement.MatchingSpan.alternateInterpretationConfidences.getter();
  v2 = COERCE_DOUBLE(specialized Sequence<>.max()(v1));
  v4 = v3;

  if (v4)
  {
    return 0;
  }

  v6 = TerminalElement.MatchingSpan.alternateInterpretationConfidences.getter();
  v7 = specialized _NativeDictionary.filter(_:)(v6, v2 * 0.2);

  v8 = swift_retain_n();
  v10 = specialized _copyCollectionToContiguousArray<A>(_:)(v8);
  specialized MutableCollection<>.sort(by:)(&v10, v7);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  lazy protocol witness table accessor for type [String] and conformance [A]();
  v5 = BidirectionalCollection<>.joined(separator:)();

  return v5;
}

uint64_t specialized Sequence<>.max()(uint64_t result)
{
  v1 = 1 << *(result + 32);
  v2 = -1;
  if (v1 < 64)
  {
    v2 = ~(-1 << v1);
  }

  v3 = v2 & *(result + 64);
  if (v3)
  {
    v4 = 0;
    v5 = __clz(__rbit64(v3));
    v6 = (v3 - 1) & v3;
    v7 = (v1 + 63) >> 6;
LABEL_9:
    v11 = *(result + 56);
    v12 = *(v11 + 8 * v5);
    if (!v6)
    {
      goto LABEL_11;
    }

    do
    {
      v13 = v4;
LABEL_15:
      v14 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v15 = (v13 << 9) | (8 * v14);
      if (v12 < *(v11 + v15))
      {
        v12 = *(v11 + v15);
      }
    }

    while (v6);
LABEL_11:
    while (1)
    {
      v13 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      if (v13 >= v7)
      {
        return *&v12;
      }

      v6 = *(result + 64 + 8 * v13);
      ++v4;
      if (v6)
      {
        v4 = v13;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v8 = 0;
    v9 = 0;
    v7 = (v1 + 63) >> 6;
    while (1)
    {
      v4 = v9 + 1;
      if (v9 + 1 >= v7)
      {
        return 0;
      }

      v10 = *(result + 72 + 8 * v9);
      v8 += 64;
      ++v9;
      if (v10)
      {
        v6 = (v10 - 1) & v10;
        v5 = __clz(__rbit64(v10)) + v8;
        goto LABEL_9;
      }
    }
  }

  return result;
}

uint64_t static PersonIntentNode.getProcessedNameField(person:terminalNode:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology18TerminalIntentNodeVSgMd, &_s12SiriOntology18TerminalIntentNodeVSgMR);
  OUTLINED_FUNCTION_21(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v3);
  v5 = &v46 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology15TerminalElementVSgMd, &_s12SiriOntology15TerminalElementVSgMR);
  OUTLINED_FUNCTION_21(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v9);
  v11 = &v46 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology15TerminalElementV6OriginVSgMd, &_s12SiriOntology15TerminalElementV6OriginVSgMR);
  OUTLINED_FUNCTION_21(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v15);
  v17 = &v46 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology15TerminalElementV12OriginDetailOSgMd, &_s12SiriOntology15TerminalElementV12OriginDetailOSgMR);
  OUTLINED_FUNCTION_21(v18);
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v21);
  v23 = &v46 - v22;
  v24 = type metadata accessor for TerminalElement.MatchingSpan();
  v46 = *(v24 - 8);
  v25 = *(v46 + 64);
  __chkstk_darwin(v24);
  v27 = &v46 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PersonIntentNode();
  IntentNodeTraversable.value<A>(forNode:)();
  result = v48;
  if (v49)
  {
    v47 = v48;
    IntentNodeTraversable.intentNode<A>(forOntologyNode:)();
    v29 = type metadata accessor for TerminalIntentNode();
    if (__swift_getEnumTagSinglePayload(v5, 1, v29) == 1)
    {
      v30 = &_s12SiriOntology18TerminalIntentNodeVSgMd;
      v31 = &_s12SiriOntology18TerminalIntentNodeVSgMR;
      v32 = v5;
    }

    else
    {
      v33 = TerminalIntentNode.elements.getter();
      OUTLINED_FUNCTION_40(v29);
      (*(v34 + 8))(v5, v29);
      specialized BidirectionalCollection.last.getter(v33, v11);

      v35 = type metadata accessor for TerminalElement();
      if (__swift_getEnumTagSinglePayload(v11, 1, v35) == 1)
      {
        v30 = &_s12SiriOntology15TerminalElementVSgMd;
        v31 = &_s12SiriOntology15TerminalElementVSgMR;
        v32 = v11;
      }

      else
      {
        TerminalElement.origin.getter();
        OUTLINED_FUNCTION_40(v35);
        (*(v36 + 8))(v11, v35);
        v37 = type metadata accessor for TerminalElement.Origin();
        if (__swift_getEnumTagSinglePayload(v17, 1, v37) != 1)
        {
          TerminalElement.Origin.originDetail.getter();
          OUTLINED_FUNCTION_40(v37);
          (*(v39 + 8))(v17, v37);
          v40 = type metadata accessor for TerminalElement.OriginDetail();
          if (__swift_getEnumTagSinglePayload(v23, 1, v40) != 1)
          {
            v41 = *(v40 - 8);
            if ((*(v41 + 88))(v23, v40) == enum case for TerminalElement.OriginDetail.matchingSpan(_:))
            {
              (*(v41 + 96))(v23, v40);
              v42 = v46;
              (*(v46 + 32))(v27, v23, v24);
              v43 = static PersonIntentNode.getFilteredAlternatives(span:)();
              v45 = v44;
              (*(v42 + 8))(v27, v24);
              if (v45)
              {

                return v43;
              }
            }

            else
            {
              (*(v41 + 8))(v23, v40);
            }

            return v47;
          }

LABEL_9:
          outlined destroy of SpeakableString?(v23, &_s12SiriOntology15TerminalElementV12OriginDetailOSgMd, &_s12SiriOntology15TerminalElementV12OriginDetailOSgMR);
          return v47;
        }

        v30 = &_s12SiriOntology15TerminalElementV6OriginVSgMd;
        v31 = &_s12SiriOntology15TerminalElementV6OriginVSgMR;
        v32 = v17;
      }
    }

    outlined destroy of SpeakableString?(v32, v30, v31);
    v38 = type metadata accessor for TerminalElement.OriginDetail();
    __swift_storeEnumTagSinglePayload(v23, 1, 1, v38);
    goto LABEL_9;
  }

  return result;
}

Swift::String_optional __swiftcall PersonIntentNode.getFilteredAlternativesFullName()()
{
  v0 = PersonIntentNode.getFilteredAlternativesFullName()(&static PersonOntologyNode.personFullNameNode.getter);
  result.value._object = v1;
  result.value._countAndFlagsBits = v0;
  return result;
}

Swift::String_optional __swiftcall PersonIntentNode.getFilteredAlternativesFirstName()()
{
  v0 = PersonIntentNode.getFilteredAlternativesFullName()(&static PersonOntologyNode.personFirstNameNode.getter);
  result.value._object = v1;
  result.value._countAndFlagsBits = v0;
  return result;
}

Swift::String_optional __swiftcall PersonIntentNode.getFilteredAlternativesMiddleName()()
{
  v0 = PersonIntentNode.getFilteredAlternativesFullName()(&static PersonOntologyNode.personMiddleNameNode.getter);
  result.value._object = v1;
  result.value._countAndFlagsBits = v0;
  return result;
}

Swift::String_optional __swiftcall PersonIntentNode.getFilteredAlternativesLastName()()
{
  v0 = PersonIntentNode.getFilteredAlternativesFullName()(&static PersonOntologyNode.personLastNameNode.getter);
  result.value._object = v1;
  result.value._countAndFlagsBits = v0;
  return result;
}

uint64_t PersonIntentNode.getFilteredAlternativesFullName()(void (*a1)(void))
{
  type metadata accessor for PersonOntologyNode();
  a1();
  v2 = static PersonIntentNode.getProcessedNameField(person:terminalNode:)();

  return v2;
}

uint64_t specialized MutableCollection<>.sort(by:)(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  swift_bridgeObjectRetain_n();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v4);
    v4 = v5;
  }

  v6 = *(v4 + 16);
  v8[0] = v4 + 32;
  v8[1] = v6;

  specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v8, a2);
  *a1 = v4;
  return swift_bridgeObjectRelease_n();
}

Swift::Int specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t *a1, uint64_t a2)
{
  v4 = a1[1];
  swift_bridgeObjectRetain_n();
  result = _minimumMergeRunLength(_:)(v4);
  if (result < v4)
  {
    if (v4 >= -1)
    {
      v6 = result;
      v7 = v4 / 2;
      if (v4 <= 1)
      {
        v8 = _swiftEmptyArrayStorage;
      }

      else
      {
        v8 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v8[2] = v7;
      }

      v9[0] = (v8 + 4);
      v9[1] = v7;

      specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v9, v10, a1, v6, a2);
      v8[2] = 0;
      swift_bridgeObjectRelease_n();
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v4 < 0)
  {
    goto LABEL_12;
  }

  if (v4)
  {
    specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v4, 1, a1, a2);
  }

  return swift_bridgeObjectRelease_n();
}

uint64_t specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (a3 != a2)
  {
    v6 = a3;
    v7 = *a4;
    v8 = (*a4 + 16 * a3);
    v9 = a1 - a3;
LABEL_3:
    v10 = *(v7 + 16 * v6 + 8);
    v24 = v9;
    v25 = v8;
    while (1)
    {
      v12 = *(v8 - 2);
      v11 = *(v8 - 1);
      if (!*(a5 + 16))
      {
        break;
      }

      v13 = *v8;

      v14 = specialized __RawDictionaryStorage.find<A>(_:)(v13, v10);
      v15 = 0.0;
      if (v16)
      {
        v15 = *(*(a5 + 56) + 8 * v14);
      }

      if (!*(a5 + 16))
      {
        goto LABEL_12;
      }

      v17 = specialized __RawDictionaryStorage.find<A>(_:)(v12, v11);
      if ((v18 & 1) == 0)
      {
        goto LABEL_12;
      }

      v19 = *(*(a5 + 56) + 8 * v17);

      if (v19 >= v15)
      {
        goto LABEL_16;
      }

LABEL_13:
      if (!v7)
      {
        __break(1u);
        return result;
      }

      v21 = *v8;
      v10 = v8[1];
      *v8 = *(v8 - 1);
      *(v8 - 1) = v10;
      *(v8 - 2) = v21;
      v8 -= 2;
      if (__CFADD__(v9++, 1))
      {
LABEL_16:
        ++v6;
        v8 = v25 + 2;
        v9 = v24 - 1;
        if (v6 != a2)
        {
          goto LABEL_3;
        }
      }
    }

    v15 = 0.0;
LABEL_12:

    if (v15 <= 0.0)
    {
      goto LABEL_16;
    }

    goto LABEL_13;
  }
}

uint64_t specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v6 = a3[1];
  if (v6 < 1)
  {
    swift_bridgeObjectRetain_n();
    v8 = _swiftEmptyArrayStorage;
LABEL_118:
    v141 = *a1;
    if (!*a1)
    {
      goto LABEL_161;
    }

    swift_bridgeObjectRetain_n();
    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_120:
      v120 = v8 + 16;
      v119 = *(v8 + 2);
      for (i = v8; ; v8 = i)
      {
        if (v119 < 2)
        {

          return swift_bridgeObjectRelease_n();
        }

        v121 = *a3;
        if (!*a3)
        {
          goto LABEL_158;
        }

        v122 = &v8[16 * v119];
        v8 = *v122;
        v123 = v120;
        v124 = &v120[16 * v119];
        v125 = *(v124 + 1);
        v126 = (v121 + 16 * *v122);
        v127 = (v121 + 16 * *v124);
        v146 = (v121 + 16 * v125);

        specialized _merge<A>(low:mid:high:buffer:by:)(v126, v127, v146, v141, a5);
        if (v144)
        {
          break;
        }

        if (v125 < v8)
        {
          goto LABEL_146;
        }

        if (v119 - 2 >= *v123)
        {
          goto LABEL_147;
        }

        v120 = v123;
        *v122 = v8;
        *(v122 + 1) = v125;
        v128 = *v123 - v119;
        if (*v123 < v119)
        {
          goto LABEL_148;
        }

        v119 = *v123 - 1;
        specialized UnsafeMutablePointer.moveInitialize(from:count:)(v124 + 16, v128, v124);
        *v123 = v119;
      }

      swift_bridgeObjectRelease_n();
    }

LABEL_155:
    v8 = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
    goto LABEL_120;
  }

  swift_bridgeObjectRetain_n();
  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  v145 = a5;
  while (1)
  {
    v9 = v7;
    v10 = (v7 + 1);
    if (v7 + 1 >= v6)
    {
      v141 = v7 + 1;
    }

    else
    {
      v135 = v8;
      v11 = (*a3 + 16 * v10);
      v12 = *v11;
      v13 = v11[1];
      v14 = (*a3 + 16 * v7);
      v15 = v7;
      v16 = 16 * v7;
      v18 = *v14;
      v19 = v14[1];
      v17 = v14 + 3;

      v20 = COERCE_DOUBLE(specialized Dictionary.subscript.getter(v12, v13, a5));
      v22 = (v21 & 1) != 0 ? 0.0 : v20;
      v23 = COERCE_DOUBLE(specialized Dictionary.subscript.getter(v18, v19, a5));
      v140 = v24;

      v25 = (v140 & 1) != 0 ? 0.0 : v23;
      v131 = v15;
      v26 = (v15 + 2);
      v8 = v10;
      while (1)
      {
        v27 = v26;
        if ((v8 + 1) >= v6)
        {
          break;
        }

        v28 = v17[2];
        v29 = *v17;
        if (*(a5 + 16))
        {
          v30 = *(v17 - 1);
          v31 = v17[1];
          v32 = v17[2];

          v33 = specialized __RawDictionaryStorage.find<A>(_:)(v31, v28);
          a5 = v145;
          v34 = 0.0;
          v35 = 0.0;
          if (v36)
          {
            v35 = *(*(v145 + 56) + 8 * v33);
          }

          if (*(v145 + 16) && (v37 = specialized __RawDictionaryStorage.find<A>(_:)(v30, v29), (v38 & 1) != 0))
          {
            v39 = v8;
            v34 = *(*(v145 + 56) + 8 * v37);
          }

          else
          {
            v39 = v8;
          }
        }

        else
        {
          v39 = v8;
          v40 = v17[2];

          v35 = 0.0;
          v34 = 0.0;
        }

        v17 += 2;
        v8 = v39 + 1;
        v26 = v27 + 1;
        if (v25 < v22 == v34 >= v35)
        {
          goto LABEL_24;
        }
      }

      v8 = v6;
LABEL_24:
      v141 = v8;
      if (v25 >= v22)
      {
        v8 = v135;
      }

      else
      {
        v41 = v131;
        if (v8 < v131)
        {
          goto LABEL_152;
        }

        if (v131 >= v8)
        {
          v8 = v135;
          v9 = v131;
          goto LABEL_39;
        }

        v42 = v6 >= v27 ? v27 : v6;
        v43 = 16 * v42;
        v44 = v8;
        v8 = v135;
        do
        {
          if (v41 != --v44)
          {
            v45 = *a3;
            if (!*a3)
            {
              goto LABEL_159;
            }

            v46 = (v45 + v16);
            v47 = v45 + v43;
            v48 = *v46;
            v49 = v46[1];
            *v46 = *(v47 - 16);
            *(v47 - 16) = v48;
            *(v47 - 8) = v49;
          }

          ++v41;
          v43 -= 16;
          v16 += 16;
        }

        while (v41 < v44);
      }

      v9 = v131;
    }

LABEL_39:
    v50 = a3[1];
    if (v141 < v50)
    {
      if (__OFSUB__(v141, v9))
      {
        goto LABEL_151;
      }

      if (v141 - v9 < a4)
      {
        break;
      }
    }

LABEL_64:
    if (v141 < v9)
    {
      goto LABEL_150;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v116 = *(v8 + 2);
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v8 = v117;
    }

    v70 = *(v8 + 2);
    v71 = v70 + 1;
    if (v70 >= *(v8 + 3) >> 1)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v8 = v118;
    }

    *(v8 + 2) = v71;
    v72 = v8 + 32;
    v73 = &v8[16 * v70 + 32];
    *v73 = v9;
    *(v73 + 1) = v141;
    v139 = *a1;
    if (!*a1)
    {
      goto LABEL_160;
    }

    if (v70)
    {
      v136 = v8 + 32;
      while (1)
      {
        v74 = v71 - 1;
        v75 = &v72[16 * v71 - 16];
        v76 = &v8[16 * v71];
        if (v71 >= 4)
        {
          break;
        }

        if (v71 == 3)
        {
          v77 = *(v8 + 4);
          v78 = *(v8 + 5);
          v87 = __OFSUB__(v78, v77);
          v79 = v78 - v77;
          v80 = v87;
LABEL_85:
          if (v80)
          {
            goto LABEL_137;
          }

          v92 = *v76;
          v91 = *(v76 + 1);
          v93 = __OFSUB__(v91, v92);
          v94 = v91 - v92;
          v95 = v93;
          if (v93)
          {
            goto LABEL_140;
          }

          v96 = *(v75 + 1);
          v97 = v96 - *v75;
          if (__OFSUB__(v96, *v75))
          {
            goto LABEL_143;
          }

          if (__OFADD__(v94, v97))
          {
            goto LABEL_145;
          }

          if (v94 + v97 >= v79)
          {
            if (v79 < v97)
            {
              v74 = v71 - 2;
            }

            goto LABEL_107;
          }

          goto LABEL_100;
        }

        if (v71 < 2)
        {
          goto LABEL_139;
        }

        v99 = *v76;
        v98 = *(v76 + 1);
        v87 = __OFSUB__(v98, v99);
        v94 = v98 - v99;
        v95 = v87;
LABEL_100:
        if (v95)
        {
          goto LABEL_142;
        }

        v101 = *v75;
        v100 = *(v75 + 1);
        v87 = __OFSUB__(v100, v101);
        v102 = v100 - v101;
        if (v87)
        {
          goto LABEL_144;
        }

        if (v102 < v94)
        {
          goto LABEL_114;
        }

LABEL_107:
        if (v74 - 1 >= v71)
        {
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
          __break(1u);
LABEL_142:
          __break(1u);
LABEL_143:
          __break(1u);
LABEL_144:
          __break(1u);
LABEL_145:
          __break(1u);
LABEL_146:
          __break(1u);
LABEL_147:
          __break(1u);
LABEL_148:
          __break(1u);
LABEL_149:
          __break(1u);
LABEL_150:
          __break(1u);
LABEL_151:
          __break(1u);
LABEL_152:
          __break(1u);
LABEL_153:
          __break(1u);
          goto LABEL_154;
        }

        v106 = *a3;
        if (!*a3)
        {
          goto LABEL_157;
        }

        v107 = v8;
        v108 = &v72[16 * v74 - 16];
        v8 = *v108;
        v109 = v74;
        v110 = &v72[16 * v74];
        v111 = *(v110 + 1);
        v112 = (v106 + 16 * *v108);
        v113 = (v106 + 16 * *v110);
        v114 = (v106 + 16 * v111);
        a5 = v145;

        specialized _merge<A>(low:mid:high:buffer:by:)(v112, v113, v114, v139, v145);
        if (v144)
        {
          swift_bridgeObjectRelease_n();
        }

        if (v111 < v8)
        {
          goto LABEL_132;
        }

        v115 = *(v107 + 2);
        if (v109 > v115)
        {
          goto LABEL_133;
        }

        *v108 = v8;
        *(v108 + 1) = v111;
        if (v109 >= v115)
        {
          goto LABEL_134;
        }

        v71 = v115 - 1;
        specialized UnsafeMutablePointer.moveInitialize(from:count:)(v110 + 16, v115 - 1 - v109, v110);
        v8 = v107;
        *(v107 + 2) = v115 - 1;
        v72 = v136;
        a5 = v145;
        if (v115 <= 2)
        {
          goto LABEL_114;
        }
      }

      v81 = &v72[16 * v71];
      v82 = *(v81 - 8);
      v83 = *(v81 - 7);
      v87 = __OFSUB__(v83, v82);
      v84 = v83 - v82;
      if (v87)
      {
        goto LABEL_135;
      }

      v86 = *(v81 - 6);
      v85 = *(v81 - 5);
      v87 = __OFSUB__(v85, v86);
      v79 = v85 - v86;
      v80 = v87;
      if (v87)
      {
        goto LABEL_136;
      }

      v88 = *(v76 + 1);
      v89 = v88 - *v76;
      if (__OFSUB__(v88, *v76))
      {
        goto LABEL_138;
      }

      v87 = __OFADD__(v79, v89);
      v90 = v79 + v89;
      if (v87)
      {
        goto LABEL_141;
      }

      if (v90 >= v84)
      {
        v104 = *v75;
        v103 = *(v75 + 1);
        v87 = __OFSUB__(v103, v104);
        v105 = v103 - v104;
        if (v87)
        {
          goto LABEL_149;
        }

        if (v79 < v105)
        {
          v74 = v71 - 2;
        }

        goto LABEL_107;
      }

      goto LABEL_85;
    }

LABEL_114:
    v7 = v141;
    v6 = a3[1];
    if (v141 >= v6)
    {
      goto LABEL_118;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_153;
  }

  if (v9 + a4 >= v50)
  {
    v51 = a3[1];
  }

  else
  {
    v51 = (v9 + a4);
  }

  if (v51 < v9)
  {
LABEL_154:
    __break(1u);
    goto LABEL_155;
  }

  if (v141 == v51)
  {
    goto LABEL_64;
  }

  v134 = v51;
  v52 = *a3;
  v53 = *a3 + 16 * v141;
  v132 = v9;
  v54 = v9 - v141;
  v55 = v141;
LABEL_49:
  v138 = v53;
  v142 = v55;
  v56 = *(v52 + 16 * v55 + 8);
  v57 = v54;
  v58 = v53;
  while (1)
  {
    v60 = *(v58 - 2);
    v59 = *(v58 - 1);
    if (*(a5 + 16))
    {
      v61 = *v58;

      v62 = specialized __RawDictionaryStorage.find<A>(_:)(v61, v56);
      a5 = v145;
      v63 = 0.0;
      if (v64)
      {
        v63 = *(*(v145 + 56) + 8 * v62);
      }

      if (*(v145 + 16))
      {
        v65 = specialized __RawDictionaryStorage.find<A>(_:)(v60, v59);
        if (v66)
        {
          v67 = *(*(v145 + 56) + 8 * v65);

          if (v67 >= v63)
          {
            goto LABEL_62;
          }

          goto LABEL_59;
        }
      }
    }

    else
    {

      v63 = 0.0;
    }

    if (v63 <= 0.0)
    {
      goto LABEL_62;
    }

LABEL_59:
    if (!v52)
    {
      break;
    }

    v68 = *v58;
    v56 = v58[1];
    *v58 = *(v58 - 1);
    *(v58 - 1) = v56;
    *(v58 - 2) = v68;
    v58 -= 2;
    if (__CFADD__(v57++, 1))
    {
LABEL_62:
      v55 = (v142 + 1);
      v53 = v138 + 16;
      --v54;
      if (v142 + 1 == v134)
      {
        v141 = v134;
        v9 = v132;
        goto LABEL_64;
      }

      goto LABEL_49;
    }
  }

  swift_bridgeObjectRelease_n();
  __break(1u);
LABEL_157:
  swift_bridgeObjectRelease_n();
  __break(1u);
LABEL_158:

  __break(1u);
LABEL_159:
  swift_bridgeObjectRelease_n();
  __break(1u);
LABEL_160:
  swift_bridgeObjectRelease_n();
  __break(1u);
LABEL_161:
  result = swift_bridgeObjectRelease_n();
  __break(1u);
  return result;
}

uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(char *a1, char *a2, char *a3, char *a4, uint64_t a5)
{
  v6 = a4;
  v7 = a2;
  v8 = a1;
  v9 = (a2 - a1) / 16;
  v11 = (a3 - a2) / 16;
  if (v9 < v11)
  {
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(a1, (a2 - a1) / 16, a4);
    v12 = &v6[2 * v9];
    v13 = a3;
    while (1)
    {
      if (v6 >= v12 || v7 >= v13)
      {
        v30 = v8;
        goto LABEL_44;
      }

      v15 = v7[1];
      v16 = v6[1];
      if (*(a5 + 16))
      {
        v17 = *v6;
        v18 = *v7;
        v19 = v7[1];

        v20 = specialized __RawDictionaryStorage.find<A>(_:)(v18, v15);
        v21 = 0.0;
        if (v22)
        {
          v21 = *(*(a5 + 56) + 8 * v20);
        }

        if (*(a5 + 16))
        {
          v23 = specialized __RawDictionaryStorage.find<A>(_:)(v17, v16);
          if (v24)
          {
            v25 = *(*(a5 + 56) + 8 * v23);

            v13 = a3;
            if (v25 >= v21)
            {
              goto LABEL_13;
            }

            goto LABEL_19;
          }
        }

        v13 = a3;
      }

      else
      {
        v28 = v7[1];

        v21 = 0.0;
      }

      if (v21 <= 0.0)
      {
LABEL_13:
        v26 = v6;
        v27 = v8 == v6;
        v6 += 2;
        if (v27)
        {
          goto LABEL_15;
        }

LABEL_14:
        *v8 = *v26;
        goto LABEL_15;
      }

LABEL_19:
      v26 = v7;
      v27 = v8 == v7;
      v7 += 2;
      if (!v27)
      {
        goto LABEL_14;
      }

LABEL_15:
      v8 += 2;
    }
  }

  specialized UnsafeMutablePointer.moveInitialize(from:count:)(a2, (a3 - a2) / 16, a4);
  v12 = &v6[2 * v11];
  v29 = a3;
  v51 = v8;
  v50 = v6;
LABEL_23:
  v30 = v7;
  v49 = v7 - 2;
  v31 = v29;
  while (v12 > v6 && v30 > v8)
  {
    v33 = v12 - 2;
    v34 = *(v12 - 1);
    v35 = *(v30 - 1);
    if (*(a5 + 16))
    {
      v36 = *(v30 - 2);
      v37 = *v33;
      v38 = *(v12 - 1);

      v39 = specialized __RawDictionaryStorage.find<A>(_:)(v37, v34);
      v40 = 0.0;
      if (v41)
      {
        v40 = *(*(a5 + 56) + 8 * v39);
      }

      v29 = v31 - 2;
      if (*(a5 + 16))
      {
        v42 = specialized __RawDictionaryStorage.find<A>(_:)(v36, v35);
        if (v43)
        {
          v44 = *(*(a5 + 56) + 8 * v42);

          v6 = v50;
          if (v44 < v40)
          {
            goto LABEL_41;
          }

          goto LABEL_39;
        }
      }

      v6 = v50;
    }

    else
    {
      v29 = v31 - 2;
      v45 = *(v12 - 1);

      v40 = 0.0;
    }

    if (v40 > 0.0)
    {
LABEL_41:
      v27 = v31 == v30;
      v8 = v51;
      v7 = v49;
      if (!v27)
      {
        *v29 = *v49;
      }

      goto LABEL_23;
    }

LABEL_39:
    v27 = v12 == v31;
    v31 = v29;
    v12 -= 2;
    v8 = v51;
    if (!v27)
    {
      *v29 = *v33;
      v31 = v29;
      v12 = v33;
    }
  }

LABEL_44:
  v46 = (v12 - v6) / 16;
  if (v30 != v6 || v30 >= &v6[2 * v46])
  {
    memmove(v30, v6, 16 * v46);
  }

  return 1;
}

unint64_t *specialized _NativeDictionary.filter(_:)(uint64_t a1, double a2)
{
  v4 = a1;
  v5 = *(a1 + 32);
  v6 = ((1 << v5) + 63) >> 6;
  if ((v5 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v10 = swift_slowAlloc();
      v4 = _ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s17_NativeDictionaryVySSSdG_Tg506_ss17_gh46V6filteryAByxq_GSbx3key_q_5valuet_tKXEKFADs13_aB15VKXEfU_SS_SdTG5AHxq_Sbs5Error_pRi_zRi0_zRi__Ri0__r0_lySSSdIsgnndzo_Tf1nc_n163_s12SiriOntology16PersonIntentNodeV27PhoneCallFlowDelegatePluginE23getFilteredAlternatives4spanSSSgAA15TerminalElementV12MatchingSpanV_tFZSbSS3key_Sd5valuet_tXEfU_SdTf1nnc_n(v10, v6, v4, a2);

      return v4;
    }
  }

  __chkstk_darwin(a1);
  v7 = (&v11 - ((8 * v6 + 15) & 0x3FFFFFFFFFFFFFF0));
  specialized UnsafeMutablePointer.assign(repeating:count:)(0, v6, v7);
  specialized closure #1 in _NativeDictionary.filter(_:)(v7, v6, v4, a2);
  if (!v2)
  {
    return v8;
  }

  swift_willThrow();
  return v4;
}

void specialized closure #1 in _NativeDictionary.filter(_:)(unint64_t *a1, uint64_t a2, uint64_t a3, double a4)
{
  v5 = 0;
  v6 = 0;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 64);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v12 = v11 | (v6 << 6);
LABEL_11:
    if (*(*(a3 + 56) + 8 * v12) > a4)
    {
      *(a1 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      if (__OFADD__(v5++, 1))
      {
        __break(1u);
LABEL_15:
        specialized _NativeDictionary.extractDictionary(using:count:)(a1, a2, v5, a3);
        return;
      }
    }
  }

  v13 = v6;
  while (1)
  {
    v6 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v6 >= v10)
    {
      goto LABEL_15;
    }

    v14 = *(a3 + 64 + 8 * v6);
    ++v13;
    if (v14)
    {
      v9 = (v14 - 1) & v14;
      v12 = __clz(__rbit64(v14)) | (v6 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
}

unint64_t *_ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s17_NativeDictionaryVySSSdG_Tg506_ss17_gh46V6filteryAByxq_GSbx3key_q_5valuet_tKXEKFADs13_aB15VKXEfU_SS_SdTG5AHxq_Sbs5Error_pRi_zRi0_zRi__Ri0__r0_lySSSdIsgnndzo_Tf1nc_n163_s12SiriOntology16PersonIntentNodeV27PhoneCallFlowDelegatePluginE23getFilteredAlternatives4spanSSSgAA15TerminalElementV12MatchingSpanV_tFZSbSS3key_Sd5valuet_tXEfU_SdTf1nnc_n(unint64_t *result, uint64_t a2, uint64_t a3, double a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    specialized closure #1 in _NativeDictionary.filter(_:)(v7, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

uint64_t specialized Collection.emptyToNil.getter(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v2)
  {
    return 0;
  }

  v3 = a1;

  return v3;
}

uint64_t static PersonNameComponents.phoneticComponents(for:)(void *a1)
{
  PersonNameComponents.init()();
  v4 = outlined bridged method (pb) of @objc _UNNotificationContact.cnContactIdentifier.getter(a1, &selRef_pronunciationGivenName);
  if (!v5 || (specialized Collection.emptyToNil.getter(v4, v5), OUTLINED_FUNCTION_50_2(), , !v2))
  {
    v1 = [a1 phoneticGivenName];
    v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;

    specialized Collection.emptyToNil.getter(v2, v7);
    OUTLINED_FUNCTION_50_2();
  }

  PersonNameComponents.givenName.setter();
  v8 = outlined bridged method (pb) of @objc _UNNotificationContact.cnContactIdentifier.getter(a1, &selRef_pronunciationFamilyName);
  if (!v9 || (specialized Collection.emptyToNil.getter(v8, v9), OUTLINED_FUNCTION_50_2(), , !v2))
  {
    v1 = [a1 phoneticFamilyName];
    v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    specialized Collection.emptyToNil.getter(v2, v11);
    OUTLINED_FUNCTION_50_2();
  }

  PersonNameComponents.familyName.setter();
  v12 = [a1 phoneticMiddleName];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_50_2();

  specialized Collection.emptyToNil.getter(v1, v2);

  return PersonNameComponents.middleName.setter();
}

uint64_t PersonNameComponents.init(name:phoneticName:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PersonNameComponentsVSgMd, &_s10Foundation20PersonNameComponentsVSgMR);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v10 - v2;
  v4 = type metadata accessor for PersonNameComponents();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  PersonNameComponents.init()();
  PersonNameComponents.givenName.setter();
  PersonNameComponents.init()();
  PersonNameComponents.givenName.setter();
  (*(v5 + 16))(v3, v8, v4);
  __swift_storeEnumTagSinglePayload(v3, 0, 1, v4);
  PersonNameComponents.phoneticRepresentation.setter();
  return (*(v5 + 8))(v8, v4);
}

uint64_t PhoneAppResolutionHelper.appsToDisambiguate(for:)(uint64_t a1)
{
  *(v2 + 88) = a1;
  *(v2 + 96) = v1;
  v3 = OUTLINED_FUNCTION_10();
  return _swift_task_switch(v3, v4, v5);
}

uint64_t PhoneAppResolutionHelper.appsToDisambiguate(for:)()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);
  static Signpost.begin(_:)();
  *(v0 + 56) = v3;
  *(v0 + 64) = v4;
  *(v0 + 72) = v5;
  *(v0 + 80) = v6;
  *(v0 + 104) = v3;
  v7 = static PhoneCallRequestSupportPolicy.getIntentFromInputParse(phoneCallNLIntent:sharedGlobals:)(v1, (v2 + 56));
  v8 = [v7 _className];

  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  v12 = [objc_allocWithZone(INStartCallIntent) init];
  v13 = [v12 _className];

  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  if (v9 == v14 && v11 == v16)
  {
  }

  else
  {
    _stringCompareWithSmolCheck(_:_:expecting:)();
    OUTLINED_FUNCTION_24_21();

    if ((v14 & 1) == 0)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_424FD0;
      *(v18 + 32) = v9;
      *(v18 + 40) = v11;
      goto LABEL_9;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_424FF0;
  *(v18 + 32) = v9;
  *(v18 + 40) = v11;
  v19 = [objc_allocWithZone(INStartAudioCallIntent) init];
  v20 = [v19 _className];

  v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v23 = v22;

  *(v18 + 48) = v21;
  *(v18 + 56) = v23;
LABEL_9:
  *(v0 + 112) = v18;
  v24 = *(v0 + 96);
  v25 = v24[5];
  v26 = v24[6];
  __swift_project_boxed_opaque_existential_1(v24 + 2, v25);
  v30 = (OUTLINED_FUNCTION_11_0() + 16);
  v31 = (*v30 + **v30);
  v27 = (*v30)[1];
  v28 = swift_task_alloc();
  *(v0 + 120) = v28;
  *v28 = v0;
  v28[1] = PhoneAppResolutionHelper.appsToDisambiguate(for:);

  return v31(v18, v25, v26);
}

{
  OUTLINED_FUNCTION_15();
  v1 = *v0;
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v5 = *(v4 + 120);
  v6 = *(v4 + 112);
  v7 = *v0;
  OUTLINED_FUNCTION_13_1();
  *v8 = v7;
  *(v10 + 128) = v9;

  v11 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v11, v12, v13);
}

{
  v51 = v0;
  v1 = *(v0 + 128);
  v49 = _swiftEmptyArrayStorage;
  v2 = specialized Array.count.getter(v1);
  for (i = 0; v2 != i; ++i)
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      v7 = *(v0 + 128);
      specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (i >= *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_39;
      }

      v4 = *(v1 + 32 + 8 * i);
    }

    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      goto LABEL_35;
    }

    App.appIdentifier.getter();
    if (v5)
    {

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v6 = v49[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    else
    {
    }
  }

  v8 = *(v0 + 128);

  v9 = v49;
  v49 = _swiftEmptyArrayStorage;
  v10 = specialized Array.count.getter(v9);
  for (j = 0; v10 != j; ++j)
  {
    if ((v9 & 0xC000000000000001) != 0)
    {
      specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (j >= *(v9 + 16))
      {
        goto LABEL_41;
      }

      v12 = *(v9 + 8 * j + 32);
    }

    if (__OFADD__(j, 1))
    {
      goto LABEL_40;
    }

    if (App.isFirstParty()())
    {
    }

    else
    {
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v13 = v49[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }
  }

  v14 = *(v0 + 88);

  v47 = v49;
  v15 = *(v14 + 24);
  v16 = *(v14 + 32);
  v17 = OUTLINED_FUNCTION_0();
  __swift_project_boxed_opaque_existential_1(v17, v18);
  OUTLINED_FUNCTION_4_3();
  if (PhoneCallNLIntent.hasVideoCallSemantic()())
  {
    v19 = *(v0 + 96);
    v20 = v19[11];
    __swift_project_boxed_opaque_existential_1(v19 + 7, v19[10]);
    v21 = *(v20 + 8);
    v22 = OUTLINED_FUNCTION_4_3();
    v23(v22);
    v24 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
    OUTLINED_FUNCTION_4_3();
    v25 = dispatch thunk of DeviceState.isMac.getter();
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
    if (v25)
    {
      if (one-time initialization token for macFaceTimeBundleId != -1)
      {
        swift_once();
      }
    }

    type metadata accessor for App();
    OUTLINED_FUNCTION_0();
  }

  else
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2();
    }

    v26 = *(v0 + 96);
    v27 = type metadata accessor for Logger();
    __swift_project_value_buffer(v27, static Logger.siriPhone);
    OUTLINED_FUNCTION_11_0();

    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = *(v0 + 96);
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v48 = v32;
      v49 = 0;
      *v31 = 136315138;
      v33 = OUTLINED_FUNCTION_23_2(OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin24PhoneAppResolutionHelper_logPrefix);
      v50 = v34;
      DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v33, v35, v36, v37);
      v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v49, v50, &v48);

      *(v31 + 4) = v38;
      OUTLINED_FUNCTION_12(&dword_0, v39, v40, "%s adding Phone as another app to disambiguate..");
      __swift_destroy_boxed_opaque_existential_1(v32);
      OUTLINED_FUNCTION_26_0();
      OUTLINED_FUNCTION_26_0();
    }

    type metadata accessor for App();
  }

  App.__allocating_init(appIdentifier:)();
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*(&dword_10 + (v47 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v47 & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    goto LABEL_42;
  }

LABEL_35:
  v41 = *(v0 + 104);
  v43 = *(v0 + 64);
  v42 = *(v0 + 72);
  v44 = *(v0 + 80);
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  Signpost.OpenSignpost.end()();

  v45 = *(v0 + 8);

  return v45(v47);
}

uint64_t PhoneAppResolutionHelper.shouldForcedDisambiguateApps(phoneCallNLIntent:)()
{
  OUTLINED_FUNCTION_2_0();
  if (((*(v1 + 200))() & 1) == 0)
  {
    return 0;
  }

  v2 = *(v0 + 96);
  OUTLINED_FUNCTION_2_0();
  return (*(v3 + 120))() & 1;
}

Swift::Bool __swiftcall PhoneAppResolutionHelper.areFirstPartyAppsOnly(apps:)(Swift::OpaquePointer apps)
{
  v2 = specialized Array.count.getter(apps._rawValue);
  v3 = v2;
  v4 = 0;
  while (1)
  {
    v5 = v4;
    if (v3 == v4)
    {
LABEL_10:
      LOBYTE(v2) = v3 == v5;
      return v2;
    }

    if ((apps._rawValue & 0xC000000000000001) != 0)
    {
      OUTLINED_FUNCTION_5_26();
      LOBYTE(v2) = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v4 >= *(&dword_10 + (apps._rawValue & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_12;
      }

      v6 = *(apps._rawValue + v4 + 4);
    }

    if (__OFADD__(v5, 1))
    {
      break;
    }

    v7 = App.isFirstParty()();

    v4 = v5 + 1;
    if (!v7)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
  return v2;
}

BOOL PhoneAppResolutionHelper.shouldQueryAppSelection(phoneCallNLIntent:)(void *a1)
{
  v3 = v1;
  OUTLINED_FUNCTION_2_0();
  if ((*(v5 + 208))() & 1) != 0 && ((*(*v1 + 200))(a1))
  {
    v6 = a1[3];
    v7 = a1[4];
    OUTLINED_FUNCTION_86(a1);
    v8 = !PhoneCallNLIntent.hasVideoCallSemantic()();
  }

  else
  {
    v8 = 0;
  }

  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2();
  }

  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, static Logger.siriPhone);

  v10 = Logger.logObject.getter();
  static os_log_type_t.debug.getter();
  OUTLINED_FUNCTION_24_21();

  if (os_log_type_enabled(v10, v2))
  {
    v11 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v11 = 136315394;
    DefaultStringInterpolation.appendInterpolation(type:tags:function:)(*(v3 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin24PhoneAppResolutionHelper_logPrefix), *(v3 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin24PhoneAppResolutionHelper_logPrefix + 8), *(v3 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin24PhoneAppResolutionHelper_logPrefix + 16), *(v3 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin24PhoneAppResolutionHelper_logPrefix + 24));
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0, 0xE000000000000000, &v17);

    *(v11 + 4) = v12;
    *(v11 + 12) = 2080;
    if (v8)
    {
      v13 = 0;
    }

    else
    {
      v13 = 7630702;
    }

    if (v8)
    {
      v14 = 0xE000000000000000;
    }

    else
    {
      v14 = 0xE300000000000000;
    }

    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, &v17);

    *(v11 + 14) = v15;
    _os_log_impl(&dword_0, v10, v2, "%s this request is %s eligible for smart app selection.", v11, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_26_0();
    OUTLINED_FUNCTION_26_0();
  }

  return v8;
}

uint64_t PhoneAppResolutionHelper.isRequestEligibleForAppResolution(phoneCallIntent:)(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  OUTLINED_FUNCTION_0_73(a1);
  if (PhoneCallNLIntent.hasApplicationNameOrId()())
  {
    return 0;
  }

  v4 = a1[3];
  v5 = a1[4];
  OUTLINED_FUNCTION_0_73(a1);
  if (!PhoneCallNLIntent.isOutgoingCallExcludeCallBackAndRedial()())
  {
    return 0;
  }

  v6 = a1[3];
  v7 = a1[4];
  OUTLINED_FUNCTION_0_73(a1);
  if (PhoneCallNLIntent.isEmergencyCall()())
  {
    return 0;
  }

  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v9 = OUTLINED_FUNCTION_10_43();
  v11 = *(v10(v9) + 16);

  if (v11 != 1)
  {
    return 0;
  }

  v12 = a1[3];
  v13 = a1[4];
  OUTLINED_FUNCTION_0_73(a1);
  if (PhoneCallNLIntent.isBusinessNameCall()())
  {
    return 0;
  }

  v14 = a1[3];
  v15 = a1[4];
  OUTLINED_FUNCTION_0_73(a1);
  if (PhoneCallNLIntent.isTelephonyTargetFromSrr()())
  {
    return 0;
  }

  v16 = a1[3];
  v17 = a1[4];
  OUTLINED_FUNCTION_0_73(a1);
  if (PhoneCallNLIntent.hasAnyFaceTime()())
  {
    return 0;
  }

  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v20 = OUTLINED_FUNCTION_10_43();
  result = v21(v20);
  v22 = result;
  v23 = *(result + 16);
  if (v23)
  {
    v24 = 0;
    v25 = result + 32;
    while (v24 < *(v22 + 16))
    {
      _s27PhoneCallFlowDelegatePlugin22SharedGlobalsProviding_pWOcTm_0(v25, v35);
      OUTLINED_FUNCTION_86(v35);
      v26 = SiriPhoneContact.getPhoneNumber()();
      if (v26.value._object)
      {

        v27 = (v26.value._object >> 56) & 0xF;
        if ((v26.value._object & 0x2000000000000000) == 0)
        {
          v27 = v26.value._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
        }

        if (v27)
        {

          __swift_destroy_boxed_opaque_existential_1(v35);
          return 0;
        }
      }

      v28 = v36;
      v29 = v37;
      __swift_project_boxed_opaque_existential_1(v35, v36);
      v30 = (*(v29 + 248))(v28, v29);
      if (v31)
      {
        v32 = v30;
        v33 = v31;

        if ((v33 & 0x2000000000000000) != 0)
        {
          v34 = HIBYTE(v33) & 0xF;
        }

        else
        {
          v34 = v32 & 0xFFFFFFFFFFFFLL;
        }

        result = __swift_destroy_boxed_opaque_existential_1(v35);
        if (v34)
        {

          return 0;
        }
      }

      else
      {
        result = __swift_destroy_boxed_opaque_existential_1(v35);
      }

      ++v24;
      v25 += 40;
      if (v23 == v24)
      {
        goto LABEL_25;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_25:

    return 1;
  }

  return result;
}

Swift::Bool __swiftcall PhoneAppResolutionHelper.isAppSelectionEnabled()()
{
  v1 = *(v0 + 96);
  OUTLINED_FUNCTION_2_0();
  return (*(v2 + 136))() & 1;
}

uint64_t PhoneAppResolutionHelper.getAppSelectionRecommendation(startCallIntent:phoneCallNLIntent:apps:)()
{
  OUTLINED_FUNCTION_15();
  v1[9] = v2;
  v1[10] = v0;
  v1[7] = v3;
  v1[8] = v4;
  v1[5] = v5;
  v1[6] = v6;
  v7 = type metadata accessor for CommsAppResolutionFeature();
  v1[11] = v7;
  v8 = *(v7 - 8);
  v1[12] = v8;
  v9 = *(v8 + 64) + 15;
  v1[13] = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v10, v11, v12);
}

{
  v45 = v0;
  if (specialized Array.count.getter(v0[9]) < 2)
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2();
    }

    v27 = v0[9];
    v28 = type metadata accessor for Logger();
    __swift_project_value_buffer(v28, static Logger.siriPhone);

    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();
    v31 = os_log_type_enabled(v29, v30);
    v32 = v0[9];
    if (v31)
    {
      v33 = swift_slowAlloc();
      *v33 = 134217984;
      *(v33 + 4) = specialized Array.count.getter(v32);

      _os_log_impl(&dword_0, v29, v30, "#PhoneAppResolutionHelper getAppSelectionRecommendation: get app counts %ld which is not expected, return noMatchFound", v33, 0xCu);
      OUTLINED_FUNCTION_26_0();
    }

    else
    {
      v34 = v0[9];
    }

    v35 = v0[5];
    v36 = enum case for AppResolverResult.noMatchFound(_:);
    v37 = type metadata accessor for AppResolverResult();
    OUTLINED_FUNCTION_40(v37);
    (*(v38 + 104))(v35, v36);
    v39 = v0[13];

    v40 = v0[1];

    return v40();
  }

  else
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2();
    }

    v1 = v0[10];
    v2 = type metadata accessor for Logger();
    __swift_project_value_buffer(v2, static Logger.siriPhone);
    OUTLINED_FUNCTION_11_0();

    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = v0[10];
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v42 = v7;
      v43 = 0;
      *v6 = 136315138;
      v8 = OUTLINED_FUNCTION_23_2(OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin24PhoneAppResolutionHelper_logPrefix);
      v44 = v9;
      DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v8, v10, v11, v12);
      v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v43, v44, &v42);

      *(v6 + 4) = v13;
      OUTLINED_FUNCTION_12(&dword_0, v14, v15, "%s getAppSelectionRecommendation: Found more than 1 app and starts to query AppMatcher");
      __swift_destroy_boxed_opaque_existential_1(v7);
      OUTLINED_FUNCTION_26_0();
      OUTLINED_FUNCTION_26_0();
    }

    v16 = v0[13];
    v18 = v0[9];
    v17 = v0[10];
    v19 = v0[8];
    v20 = v0[6];
    v21 = v17[16];
    v22 = v17[17];
    __swift_project_boxed_opaque_existential_1(v17 + 13, v21);
    (*(v22 + 8))(0, v21, v22);

    PhoneAppResolutionHelper.generateAppSelectionInputFeature(startCallIntent:phoneCallNLIntent:apps:)();
    swift_beginAccess();
    v23 = async function pointer to AppResolver.resolveApp(features:)[1];
    v24 = swift_task_alloc();
    v0[14] = v24;
    *v24 = v0;
    v24[1] = PhoneAppResolutionHelper.getAppSelectionRecommendation(startCallIntent:phoneCallNLIntent:apps:);
    v25 = v0[13];
    v26 = v0[5];

    return AppResolver.resolveApp(features:)(v26, v25);
  }
}

{
  OUTLINED_FUNCTION_15();
  v1 = *v0;
  OUTLINED_FUNCTION_13_1();
  *v2 = v1;
  v4 = *(v3 + 112);
  v5 = *v0;
  OUTLINED_FUNCTION_13_1();
  *v6 = v5;

  swift_endAccess();
  v7 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v7, v8, v9);
}

{
  OUTLINED_FUNCTION_15();
  (*(v0[12] + 8))(v0[13], v0[11]);
  v1 = v0[13];

  v2 = v0[1];

  return v2();
}

void PhoneAppResolutionHelper.generateAppSelectionInputFeature(startCallIntent:phoneCallNLIntent:apps:)()
{
  OUTLINED_FUNCTION_66();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v31[1] = v8;
  v9 = type metadata accessor for CommunicationTypeSignal.CommunicationType();
  OUTLINED_FUNCTION_9_1();
  v11 = v10;
  v13 = *(v12 + 64);
  __chkstk_darwin(v14);
  OUTLINED_FUNCTION_16_2();
  v31[0] = v15;
  __chkstk_darwin(v16);
  v18 = v31 - v17;
  v19 = v5[3];
  v20 = v5[4];
  OUTLINED_FUNCTION_86(v5);
  v21 = PhoneCallNLIntent.isGroupFaceTimeCall()();
  v22 = v5[3];
  v23 = v5[4];
  OUTLINED_FUNCTION_0_73(v5);
  v24 = PhoneCallNLIntent.isVideoCall()();
  v25 = &enum case for CommunicationTypeSignal.CommunicationType.groupVideoCall(_:);
  if (!v24)
  {
    v25 = &enum case for CommunicationTypeSignal.CommunicationType.groupAudioCall(_:);
  }

  v26 = &enum case for CommunicationTypeSignal.CommunicationType.videoCall(_:);
  if (!v24)
  {
    v26 = &enum case for CommunicationTypeSignal.CommunicationType.audioCall(_:);
  }

  if (!v21)
  {
    v25 = v26;
  }

  (*(v11 + 104))(v18, *v25, v9);
  (*(*v1 + 232))(v5, v3);
  v27 = v5[3];
  v28 = v5[4];
  __swift_project_boxed_opaque_existential_1(v5, v27);
  v29 = *(v28 + 24);
  v7;
  v30 = *(v29(v27, v28) + 16);

  (*(v11 + 16))(v31[0], v18, v9);
  CommsAppResolutionFeature.init(intent:nlContactCount:appFeatures:communicationType:)();
  (*(v11 + 8))(v18, v9);
  OUTLINED_FUNCTION_65();
}

void PhoneAppResolutionHelper.generateAppFeatures(phoneCallNLIntent:apps:)()
{
  OUTLINED_FUNCTION_66();
  v1 = v0;
  v62 = v2;
  v66 = type metadata accessor for CommsAppFeature();
  OUTLINED_FUNCTION_9_1();
  v63 = v3;
  v5 = *(v4 + 64);
  __chkstk_darwin(v6);
  OUTLINED_FUNCTION_16_2();
  v65 = v7;
  __chkstk_darwin(v8);
  v64 = v58 - v9;
  v10 = specialized Array.count.getter(v1);
  v11 = 0;
  v12 = _swiftEmptyArrayStorage;
  while (v10 != v11)
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v11 >= *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_46;
      }

      v13 = *(v1 + 8 * v11 + 32);
    }

    if (__OFADD__(v11, 1))
    {
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
      return;
    }

    v14 = App.appIdentifier.getter();
    v16 = v15;

    if (!v16)
    {
      v14 = 0;
      v16 = 0xE000000000000000;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v20 = v12[2];
      OUTLINED_FUNCTION_92_0();
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v12 = v21;
    }

    v18 = v12[2];
    v17 = v12[3];
    if (v18 >= v17 >> 1)
    {
      OUTLINED_FUNCTION_3_62(v17);
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v12 = v22;
    }

    v12[2] = v18 + 1;
    v19 = &v12[2 * v18];
    v19[4] = v14;
    v19[5] = v16;
    ++v11;
  }

  v23 = v62[3];
  v24 = v62[4];
  __swift_project_boxed_opaque_existential_1(v62, v23);
  v25 = *(v24 + 24);
  v26 = *(v25(v23, v24) + 16);

  if (v26)
  {
    v27 = v25(v23, v24);
    if (!*(v27 + 16))
    {
      goto LABEL_47;
    }

    _s27PhoneCallFlowDelegatePlugin22SharedGlobalsProviding_pWOcTm_0(v27 + 32, v67);

    v28 = v67[4];
    v29 = OUTLINED_FUNCTION_86(v67);
    v30 = SiriPhoneContact.getVocabularyAppsBundleSet()(v29, v28);
    __swift_destroy_boxed_opaque_existential_1(v67);
  }

  else
  {
    v30 = _swiftEmptySetSingleton;
  }

  v62 = v12[2];
  if (v62)
  {
    v31 = type metadata accessor for App();
    v32 = 0;
    v60 = v12 + 4;
    v61 = v31;
    v58[1] = v63 + 8;
    v59 = (v63 + 16);
    v58[0] = v63 + 32;
    v33 = _swiftEmptyArrayStorage;
    do
    {
      v34 = &v60[2 * v32];
      v36 = *v34;
      v35 = v34[1];
      swift_bridgeObjectRetain_n();
      App.__allocating_init(appIdentifier:)();
      v37 = App.isFirstParty()();

      v38 = v30[2];
      if (v37)
      {
        if (v38)
        {
          v39 = v30[5];
          Hasher.init(_seed:)();
          String.hash(into:)();
          Hasher._finalize()();
          OUTLINED_FUNCTION_17_26();
          do
          {
            OUTLINED_FUNCTION_5_54(v40);
            if (!v41)
            {
              break;
            }

            v42 = (v30[6] + 16 * v24);
            if (*v42 == 0x73746361746E6F43 && v42[1] == 0xE800000000000000)
            {
              break;
            }

            v44 = _stringCompareWithSmolCheck(_:_:expecting:)();
            v40 = v24 + 1;
          }

          while ((v44 & 1) == 0);
        }
      }

      else if (v38)
      {
        v45 = v30[5];
        Hasher.init(_seed:)();
        String.hash(into:)();
        Hasher._finalize()();
        OUTLINED_FUNCTION_17_26();
        do
        {
          OUTLINED_FUNCTION_5_54(v46);
          if (!v47)
          {
            break;
          }

          v48 = (v30[6] + 16 * v24);
          if (*v48 == v36 && v48[1] == v35)
          {
            break;
          }

          v50 = _stringCompareWithSmolCheck(_:_:expecting:)();
          v46 = v24 + 1;
        }

        while ((v50 & 1) == 0);
      }

      v51 = v64;
      CommsAppFeature.init(bundleID:isContactInApp:)();
      (*v59)(v65, v51, v66);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v55 = v33[2];
        OUTLINED_FUNCTION_92_0();
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v33 = v56;
      }

      v53 = v33[2];
      v52 = v33[3];
      if (v53 >= v52 >> 1)
      {
        OUTLINED_FUNCTION_3_62(v52);
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v33 = v57;
      }

      v32 = (v32 + 1);
      v24 = v63;
      v54 = v66;
      (*(v63 + 8))(v64, v66);
      v33[2] = v53 + 1;
      (*(v24 + 32))(v33 + ((*(v24 + 80) + 32) & ~*(v24 + 80)) + *(v24 + 72) * v53, v65, v54);
    }

    while (v32 != v62);
  }

  OUTLINED_FUNCTION_65();
}