uint64_t PaymentsFlowDelegatePlugin.__allocating_init()()
{
  v0 = type metadata accessor for Logger();
  v1 = OUTLINED_FUNCTION_1(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  __chkstk_darwin(v1);
  OUTLINED_FUNCTION_0();
  v8 = v7 - v6;
  v9 = Logger.payments.unsafeMutableAddressor();
  (*(v3 + 16))(v8, v9, v0);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = OUTLINED_FUNCTION_3();
    *v12 = 0;
    _os_log_impl(&dword_0, v10, v11, "PaymentsFlowDelegatePlugin is being initialized", v12, 2u);
  }

  (*(v3 + 8))(v8, v0);
  static Device.current.getter();
  outlined init with copy of FlowProviding(v23, &v20);
  v18 = type metadata accessor for SiriKitContactResolver();
  v19 = &protocol witness table for SiriKitContactResolver;
  __swift_allocate_boxed_opaque_existential_1(&v17);
  SiriKitContactResolver.init()();
  v13 = type metadata accessor for FlowFactory();
  swift_allocObject();
  v14 = FlowFactory.init(deviceState:contactResolver:)();
  SiriPaymentsFeatureManager.init()();
  __swift_destroy_boxed_opaque_existential_1(v23);
  v21 = v13;
  v22 = &protocol witness table for FlowFactory;
  *&v20 = v14;
  v18 = &type metadata for SiriPaymentsFeatureManager;
  v19 = &protocol witness table for SiriPaymentsFeatureManager;
  type metadata accessor for PaymentsFlowDelegatePlugin();
  v15 = swift_allocObject();
  _s19SiriPaymentsIntents13FlowProviding_pWOb_0(&v20, v15 + 16);
  _s19SiriPaymentsIntents13FlowProviding_pWOb_0(&v17, v15 + 56);
  return v15;
}

uint64_t PaymentsFlowDelegatePlugin.findFlowForX(parse:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v46[1] = a1;
  v49 = a2;
  v4 = type metadata accessor for Logger();
  v5 = OUTLINED_FUNCTION_1(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v5);
  v46[0] = v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v47 = v46 - v13;
  __chkstk_darwin(v12);
  v15 = v46 - v14;
  v16 = type metadata accessor for Signpost.OpenSignpost();
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  OUTLINED_FUNCTION_0();
  v20 = v19 - v18;
  v21 = SignpostName.findFlowForX.unsafeMutableAddressor();
  v23 = *v21;
  v22 = *(v21 + 8);
  v24 = *(v21 + 16);
  v48 = v20;
  static Signpost.begin(_:)();
  v25 = Logger.payments.unsafeMutableAddressor();
  v26 = *(v7 + 16);
  v26(v15, v25, v4);
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = OUTLINED_FUNCTION_3();
    *v29 = 0;
    _os_log_impl(&dword_0, v27, v28, "#PaymentsFlowDelegatePlugin.findFlowForX(): attempting to make flow", v29, 2u);
    OUTLINED_FUNCTION_2();
  }

  v30 = *(v7 + 8);
  v30(v15, v4);
  v31 = v3[10];
  v32 = v3[11];
  __swift_project_boxed_opaque_existential_1(v3 + 7, v31);
  if ((*(v32 + 8))(v31, v32))
  {
    v26(v47, v25, v4);
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = OUTLINED_FUNCTION_3();
      *v35 = 0;
      _os_log_impl(&dword_0, v33, v34, "#PaymentsFlowDelegatePlugin.findFlowForX(): SiriPayments/NLX=1, converting parse to build flow", v35, 2u);
      OUTLINED_FUNCTION_2();
    }

    v30(v47, v4);
    Party = Parse.isFirstPartyApp()();
    static PaymentsFlowDelegatePlugin.preWarmExtensionWithIntentSignal(isFirstParty:)(Party);
    outlined init with copy of FlowProviding((v3 + 2), v50);
    v37 = type metadata accessor for PaymentsFlow();
    v38 = *(v37 + 48);
    v39 = *(v37 + 52);
    swift_allocObject();
    v50[0] = PaymentsFlow.init(flowFactory:)();
    lazy protocol witness table accessor for type PaymentsFlowDelegatePlugin and conformance PaymentsFlowDelegatePlugin(&lazy protocol witness table cache variable for type PaymentsFlow and conformance PaymentsFlow, 255, &type metadata accessor for PaymentsFlow);
    Flow.eraseToAnyFlow()();

    static FlowSearchResult.flow(_:)();
  }

  else
  {
    v40 = v46[0];
    v26(v46[0], v25, v4);
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = OUTLINED_FUNCTION_3();
      *v43 = 0;
      _os_log_impl(&dword_0, v41, v42, "#PaymentsFlowDelegatePlugin.findFlowForX(): SiriPayments/NLX=0, returning noFlow", v43, 2u);
    }

    v30(v40, v4);
    static FlowSearchResult.noFlow.getter();
  }

  v44 = v48;
  Signpost.OpenSignpost.end()();
  return outlined destroy of Signpost.OpenSignpost(v44);
}

uint64_t static PaymentsFlowDelegatePlugin.preWarmExtensionWithIntentSignal(isFirstParty:)(char a1)
{
  v2 = type metadata accessor for Logger();
  v3 = OUTLINED_FUNCTION_1(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v3);
  OUTLINED_FUNCTION_0();
  v10 = v9 - v8;
  v11 = type metadata accessor for Signpost.OpenSignpost();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  OUTLINED_FUNCTION_0();
  v15 = v14 - v13;
  v16 = SignpostName.emitIntentSignal.unsafeMutableAddressor();
  v18 = *v16;
  v17 = *(v16 + 8);
  v19 = *(v16 + 16);
  static Signpost.begin(_:)();
  if (a1)
  {
    v20 = Logger.payments.unsafeMutableAddressor();
    (*(v5 + 16))(v10, v20, v2);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = OUTLINED_FUNCTION_3();
      *v23 = 0;
      _os_log_impl(&dword_0, v21, v22, "#PaymentsFlowDelegatePlugin sending IntentSignal to pre-warm Wallet intent extension", v23, 2u);
      OUTLINED_FUNCTION_2();
    }

    (*(v5 + 8))(v10, v2);
    v24 = [objc_allocWithZone(SAIntentGroupIntentSignal) init];
    v25 = [objc_allocWithZone(INSendPaymentIntent) init];
    v26 = static AppUtil.PASSBOOK_APP_BUNDLE_ID.getter();
    outlined bridged method (mbnn) of @objc SAIntentGroupProtobufMessage.typeName.setter(v26, v27, v25, &selRef__setLaunchId_);
    v28 = AppUtil.PASSBOOK_EXTENSION_BUNDLE_ID.unsafeMutableAddressor();
    v29 = *v28;
    v30 = v28[1];

    outlined bridged method (mbnn) of @objc SAIntentGroupProtobufMessage.typeName.setter(v29, v30, v25, &selRef__setExtensionBundleId_);
    type metadata accessor for SAIntentGroupProtobufMessage();
    v31 = SAIntentGroupProtobufMessage.init(intent:)(v25);
    [v24 setIntent:v31];

    static AceService.currentAsync.getter();
    __swift_project_boxed_opaque_existential_1(v33, v33[3]);
    AceServiceInvokerAsync.submitAndForget(_:)();

    __swift_destroy_boxed_opaque_existential_1(v33);
  }

  Signpost.OpenSignpost.end()();
  return outlined destroy of Signpost.OpenSignpost(v15);
}

id SAIntentGroupProtobufMessage.init(intent:)(void *a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v3 = outlined bridged method (ob) of @objc PBCodable.data.getter([a1 backingStore]);
  if (v4 >> 60 == 15)
  {
    isa = 0;
  }

  else
  {
    v6 = v3;
    v7 = v4;
    isa = Data._bridgeToObjectiveC()().super.isa;
    outlined consume of Data?(v6, v7);
  }

  [v2 setData:isa];

  v8 = [a1 typeName];
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  outlined bridged method (mbnn) of @objc SAIntentGroupProtobufMessage.typeName.setter(v9, v11, v2, &selRef_setTypeName_);
  return v2;
}

uint64_t PaymentsFlowDelegatePlugin.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));

  return _swift_deallocClassInstance(v0, 96, 7);
}

uint64_t protocol witness for FlowPlugin.init() in conformance PaymentsFlowDelegatePlugin@<X0>(uint64_t *a1@<X8>)
{
  result = PaymentsFlowDelegatePlugin.__allocating_init()();
  *a1 = result;
  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t outlined destroy of Signpost.OpenSignpost(uint64_t a1)
{
  v2 = type metadata accessor for Signpost.OpenSignpost();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t lazy protocol witness table accessor for type PaymentsFlowDelegatePlugin and conformance PaymentsFlowDelegatePlugin(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t outlined bridged method (ob) of @objc PBCodable.data.getter(void *a1)
{
  v2 = [a1 data];

  if (!v2)
  {
    return 0;
  }

  v3 = static Data._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

void outlined bridged method (mbnn) of @objc SAIntentGroupProtobufMessage.typeName.setter(uint64_t a1, uint64_t a2, void *a3, SEL *a4)
{
  v6 = String._bridgeToObjectiveC()();

  [a3 *a4];
}

unint64_t type metadata accessor for SAIntentGroupProtobufMessage()
{
  result = lazy cache variable for type metadata for SAIntentGroupProtobufMessage;
  if (!lazy cache variable for type metadata for SAIntentGroupProtobufMessage)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for SAIntentGroupProtobufMessage);
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t outlined consume of Data?(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return outlined consume of Data._Representation(a1, a2);
  }

  return a1;
}

uint64_t outlined consume of Data._Representation(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t outlined init with copy of FlowProviding(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

uint64_t _s19SiriPaymentsIntents13FlowProviding_pWOb_0(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t OUTLINED_FUNCTION_2()
{
}

uint64_t OUTLINED_FUNCTION_3()
{

  return _swift_slowAlloc(2, -1);
}