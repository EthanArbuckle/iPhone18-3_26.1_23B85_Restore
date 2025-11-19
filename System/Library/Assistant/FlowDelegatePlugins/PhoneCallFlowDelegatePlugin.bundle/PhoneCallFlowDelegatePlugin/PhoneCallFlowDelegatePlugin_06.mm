uint64_t getEnumTagSinglePayload for AnnounceIncomingCallCATsSimple.IntentHandledResponseDialogIds(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFA)
  {
    if (a2 + 6 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 6) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 7;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v5 = v6 - 7;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for AnnounceIncomingCallCATsSimple.IntentHandledResponseDialogIds(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for AnnounceIncomingCallCATsSimple.OfferFollowUpIntentDialogIds(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t protocol witness for IncomingCallCATsSimple.intentHandledResponse(incomingCallConcept:) in conformance AnnounceIncomingCallCATsSimple()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_15_15();
  v7 = *(v1 + class metadata base offset for AnnounceIncomingCallCATsSimple) + **(v1 + class metadata base offset for AnnounceIncomingCallCATsSimple);
  v2 = *(*(v1 + class metadata base offset for AnnounceIncomingCallCATsSimple) + 4);
  v3 = swift_task_alloc();
  *(v0 + 16) = v3;
  *v3 = v0;
  v4 = OUTLINED_FUNCTION_11_13(v3);

  return v5(v4);
}

uint64_t protocol witness for IncomingCallCATsSimple.offerFollowUpIntent(followUpOfferType:) in conformance AnnounceIncomingCallCATsSimple()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_15_15();
  v2 = *(v1 + class metadata base offset for AnnounceIncomingCallCATsSimple + 16);
  v8 = v2 + *v2;
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v0 + 16) = v4;
  *v4 = v0;
  v5 = OUTLINED_FUNCTION_11_13(v4);

  return v6(v5);
}

uint64_t AnnounceIncomingCallerOutputStrategy.init(announceCallsContext:incomingCallCats:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  result = type metadata accessor for AnnounceIncomingCallCATsSimple();
  *(a4 + 24) = result;
  *(a4 + 32) = &protocol witness table for AnnounceIncomingCallCATsSimple;
  *a4 = a3;
  *(a4 + 40) = a1;
  *(a4 + 48) = a2 & 1;
  return result;
}

void *IdentifyIncomingCallerOutputStrategy.announceCallsContext.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  v3 = v1;
  return v1;
}

uint64_t AnnounceIncomingCallerOutputStrategy.makePromptForConfirmationFlow<A>(app:intentResponse:sharedGlobals:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for IncomingCallActionConfirmationStrategy();
  outlined init with copy of SignalProviding(v5, v23);
  outlined init with copy of SignalProviding(a3, v22);
  v10 = *(v5 + 40);
  v11 = *(v5 + 48);
  v12 = v10;
  v13 = a2;
  v14 = default argument 3 of PhoneCallBaseCatTemplatingService.init(ducFamily:sharedGlobals:displayTextCats:phoneCallCommonCats:appInfoBuilder:labelTemplating:startCallCats:)(a4, a5);
  default argument 2 of PhoneTCCFlowStrategy.init(sharedGlobals:phoneCallCommonCats:phoneCallCommonCatPatterns:labelTemplatesProvider:tccTemplatesProvider:appInfoBuilder:)(v21, a4, a5);
  v15 = IncomingCallActionConfirmationStrategy.__allocating_init(incomingCallIntentResponse:incomingCallCats:sharedGlobals:announceCallsContext:phoneCommonCats:phoneCallCommonCatPatterns:)(v13, v23, v22, v10, v11, v14, v21);
  type metadata accessor for AnnounceCallConfirmationStrategy();
  outlined init with copy of SignalProviding(a3, v23);
  v16 = AnnounceCallConfirmationStrategy.__allocating_init(wrapped:sharedGlobals:)(v15, v23);
  type metadata accessor for IncomingCallActionConfirmation();
  lazy protocol witness table accessor for type IncomingCallActionConfirmation and conformance IncomingCallActionConfirmation();
  type metadata accessor for BargeInCapablePromptForConfirmationFlow();
  *&v22[0] = v13;
  *&v21[0] = v16;
  outlined init with copy of SignalProviding(a3, v23);
  v17 = v13;

  swift_getWitnessTable();
  BargeInCapablePromptForConfirmationFlow.__allocating_init<A>(itemToConfirm:strategy:sharedGlobals:)();
  *&v23[0] = v18;
  swift_getWitnessTable();
  v19 = Flow.eraseToAnyValueFlow()();

  return v19;
}

unint64_t lazy protocol witness table accessor for type IncomingCallActionConfirmation and conformance IncomingCallActionConfirmation()
{
  result = lazy protocol witness table cache variable for type IncomingCallActionConfirmation and conformance IncomingCallActionConfirmation;
  if (!lazy protocol witness table cache variable for type IncomingCallActionConfirmation and conformance IncomingCallActionConfirmation)
  {
    type metadata accessor for IncomingCallActionConfirmation();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncomingCallActionConfirmation and conformance IncomingCallActionConfirmation);
  }

  return result;
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
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

uint64_t getEnumTagSinglePayload for AnnounceIncomingCallerOutputStrategy(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 49))
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

uint64_t storeEnumTagSinglePayload for AnnounceIncomingCallerOutputStrategy(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t key path setter for AnnounceIncomingCallNotificationDirectAction.callProviderBundleId : AnnounceIncomingCallNotificationDirectAction(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  v5 = *(v4 + 64);
  *(v4 + 56) = v3;
  *(v4 + 64) = v2;
}

uint64_t AnnounceIncomingCallNotificationDirectAction.callProviderBundleId.getter()
{
  OUTLINED_FUNCTION_4_4();
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  return v1;
}

uint64_t key path setter for AnnounceIncomingCallNotificationDirectAction.callUUID : AnnounceIncomingCallNotificationDirectAction(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  v5 = *(v4 + 80);
  *(v4 + 72) = v3;
  *(v4 + 80) = v2;
}

uint64_t AnnounceIncomingCallNotificationDirectAction.callUUID.getter()
{
  OUTLINED_FUNCTION_4_4();
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);

  return v1;
}

void key path setter for AnnounceIncomingCallNotificationDirectAction.caller : AnnounceIncomingCallNotificationDirectAction(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 88);
  *(v3 + 88) = v2;
  v5 = v2;
}

void *AnnounceIncomingCallNotificationDirectAction.caller.getter()
{
  OUTLINED_FUNCTION_4_4();
  v1 = *(v0 + 88);
  v2 = v1;
  return v1;
}

void key path setter for AnnounceIncomingCallNotificationDirectAction.notification : AnnounceIncomingCallNotificationDirectAction(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 96);
  *(v3 + 96) = v2;
  v5 = v2;
}

id AnnounceIncomingCallNotificationDirectAction.notification.getter()
{
  OUTLINED_FUNCTION_4_4();
  v1 = *(v0 + 96);

  return v1;
}

uint64_t key path setter for AnnounceIncomingCallNotificationDirectAction.callCapability : AnnounceIncomingCallNotificationDirectAction(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 104) = v2;
  return result;
}

uint64_t AnnounceIncomingCallNotificationDirectAction.__allocating_init(invocation:contactStore:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v5 = *(a2 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(a2, v4);
  OUTLINED_FUNCTION_9_1();
  v7 = *(v6 + 64);
  __chkstk_darwin(v8);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v10);
  v12 = specialized AnnounceIncomingCallNotificationDirectAction.__allocating_init(invocation:contactStore:)(a1, v10, v2, v4, v5);
  return OUTLINED_FUNCTION_9_14(v12);
}

uint64_t AnnounceIncomingCallNotificationDirectAction.__allocating_init(appBundleId:notification:contactStore:)()
{
  OUTLINED_FUNCTION_7_8();
  swift_allocObject();
  v1 = *(v0 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v0, *(v0 + 24));
  OUTLINED_FUNCTION_9_1();
  v3 = *(v2 + 64);
  __chkstk_darwin(v4);
  v6 = OUTLINED_FUNCTION_3_9(v5, v10);
  v7(v6);
  v8 = OUTLINED_FUNCTION_5_16();
  return OUTLINED_FUNCTION_9_14(v8);
}

uint64_t AnnounceIncomingCallNotificationDirectAction.init(appBundleId:notification:contactStore:)()
{
  OUTLINED_FUNCTION_7_8();
  v1 = *(v0 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v0, *(v0 + 24));
  OUTLINED_FUNCTION_9_1();
  v3 = *(v2 + 64);
  __chkstk_darwin(v4);
  v6 = OUTLINED_FUNCTION_3_9(v5, v10);
  v7(v6);
  v8 = OUTLINED_FUNCTION_5_16();
  return OUTLINED_FUNCTION_9_14(v8);
}

id AnnounceIncomingCallNotificationDirectAction.callRecord.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v29 - v2;
  OUTLINED_FUNCTION_2_0();
  v5 = (*(v4 + 152))();
  v7 = v6;
  v8 = type metadata accessor for Date();
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v8);
  OUTLINED_FUNCTION_2_0();
  v10 = (*(v9 + 176))();
  OUTLINED_FUNCTION_2_0();
  v12 = (*(v11 + 224))();
  v13 = [objc_allocWithZone(NSNumber) initWithInteger:1];
  OUTLINED_FUNCTION_2_0();
  v15 = (*(v14 + 128))();
  v17 = v16;
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for NSNumber, NSNumber_ptr);
  isa = NSNumber.init(BOOLeanLiteral:)(0).super.super.isa;
  v19 = objc_allocWithZone(INCallRecord);
  v20 = @nonobjc INCallRecord.init(__identifier:dateCreated:caller:callRecordType:callCapability:callDuration:unseen:preferredCallProvider:numberOfCalls:providerId:providerBundleId:isCallerIdBlocked:)(v5, v7, v3, v10, 6, v12, 0, 0, 3, v13, 0, 0, v15, v17, isa);
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2();
  }

  v21 = type metadata accessor for Logger();
  __swift_project_value_buffer(v21, static Logger.siriPhone);
  v22 = v20;
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *v25 = 138412290;
    *(v25 + 4) = v22;
    *v26 = v22;
    v27 = v22;
    _os_log_impl(&dword_0, v23, v24, "#AnnounceIncomingCallNotificationDirectAction: Call Notification INCallRecord to announce = %@.", v25, 0xCu);
    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v26, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    OUTLINED_FUNCTION_26_0();
    OUTLINED_FUNCTION_26_0();
  }

  return v22;
}

id AnnounceIncomingCallNotificationDirectAction.makeINPerson(contact:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PersonNameComponentsVSgMd, &_s10Foundation20PersonNameComponentsVSgMR);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v42 - v5;
  if (!a1)
  {
    return 0;
  }

  v7 = a1;
  v8 = outlined bridged method (pb) of @objc _UNNotificationContact.cnContactIdentifier.getter(v7, &selRef_cnContactIdentifier);
  if (v9 && (v10 = v8, v11 = v9, v12 = v1[5], v13 = v1[6], __swift_project_boxed_opaque_existential_1(v1 + 2, v12), v37 = (*(v13 + 8))(v10, v11, v12, v13), , v37))
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2();
    }

    v38 = type metadata accessor for Logger();
    __swift_project_value_buffer(v38, static Logger.siriPhone);
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&dword_0, v39, v40, "#AnnounceIncomingCallNotificationDirectAction: Make INPerson in CNContactStore.", v41, 2u);
      OUTLINED_FUNCTION_26_0();
    }
  }

  else
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2();
    }

    v14 = type metadata accessor for Logger();
    __swift_project_value_buffer(v14, static Logger.siriPhone);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_0, v15, v16, "#AnnounceIncomingCallNotificationDirectAction: Make INPerson with custom identifier.", v17, 2u);
      OUTLINED_FUNCTION_26_0();
    }

    v18 = [v7 handle];
    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;

    v22 = [v7 handleType];
    v23 = objc_allocWithZone(INPersonHandle);
    v24 = @nonobjc INPersonHandle.init(value:type:)(v19, v21, v22);
    v25 = type metadata accessor for PersonNameComponents();
    __swift_storeEnumTagSinglePayload(v6, 1, 1, v25);
    v26 = outlined bridged method (pb) of @objc _UNNotificationContact.cnContactIdentifier.getter(v7, &selRef_displayName);
    v28 = v27;
    v29 = outlined bridged method (pb) of @objc _UNNotificationContact.cnContactIdentifier.getter(v7, &selRef_cnContactIdentifier);
    v31 = v30;
    v32 = outlined bridged method (pb) of @objc _UNNotificationContact.cnContactIdentifier.getter(v7, &selRef_customIdentifier);
    v34 = v33;
    v35 = objc_allocWithZone(INPerson);
    v37 = @nonobjc INPerson.init(personHandle:nameComponents:displayName:image:contactIdentifier:customIdentifier:)(v24, v6, v26, v28, 0, v29, v31, v32, v34);
  }

  return v37;
}

uint64_t AnnounceIncomingCallNotificationDirectAction.deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = *(v0 + 64);

  v2 = *(v0 + 80);

  return v0;
}

uint64_t AnnounceIncomingCallNotificationDirectAction.__deallocating_deinit()
{
  AnnounceIncomingCallNotificationDirectAction.deinit();

  return swift_deallocClassInstance();
}

id @nonobjc INCallRecord.init(__identifier:dateCreated:caller:callRecordType:callCapability:callDuration:unseen:preferredCallProvider:numberOfCalls:providerId:providerBundleId:isCallerIdBlocked:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, void *a7, void *a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15)
{
  v18 = String._bridgeToObjectiveC()();

  v19 = type metadata accessor for Date();
  v20 = 0;
  if (__swift_getEnumTagSinglePayload(a3, 1, v19) != 1)
  {
    v20 = a3;
    Date._bridgeToObjectiveC()();
    OUTLINED_FUNCTION_8_17();
    (*(v21 + 8))(a3, v19);
  }

  if (a12)
  {
    v22 = String._bridgeToObjectiveC()();
  }

  else
  {
    v22 = 0;
  }

  if (a14)
  {
    v23 = String._bridgeToObjectiveC()();
  }

  else
  {
    v23 = 0;
  }

  v24 = [v26 initWithIdentifier:v18 dateCreated:v20 caller:a4 callRecordType:a5 callCapability:a6 callDuration:a7 unseen:a8 preferredCallProvider:a9 numberOfCalls:a10 providerId:v22 providerBundleId:v23 isCallerIdBlocked:a15];

  return v24;
}

id @nonobjc INPerson.init(personHandle:nameComponents:displayName:image:contactIdentifier:customIdentifier:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = v9;
  v16 = type metadata accessor for PersonNameComponents();
  v17 = 0;
  if (__swift_getEnumTagSinglePayload(a2, 1, v16) != 1)
  {
    v17 = a2;
    PersonNameComponents._bridgeToObjectiveC()();
    OUTLINED_FUNCTION_8_17();
    (*(v18 + 8))(a2, v16);
  }

  if (a4)
  {
    v19 = String._bridgeToObjectiveC()();
  }

  else
  {
    v19 = 0;
  }

  if (!a7)
  {
    v20 = 0;
    if (a9)
    {
      goto LABEL_8;
    }

LABEL_10:
    v21 = 0;
    goto LABEL_11;
  }

  v20 = String._bridgeToObjectiveC()();

  if (!a9)
  {
    goto LABEL_10;
  }

LABEL_8:
  v21 = String._bridgeToObjectiveC()();

LABEL_11:
  v22 = [v10 initWithPersonHandle:a1 nameComponents:v17 displayName:v19 image:a5 contactIdentifier:v20 customIdentifier:v21];

  return v22;
}

uint64_t outlined bridged method (pb) of @objc _UNNotificationContact.cnContactIdentifier.getter(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v4;
}

uint64_t specialized AnnounceIncomingCallNotificationDirectAction.__allocating_init(invocation:contactStore:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v48[3] = a4;
  v48[4] = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v48);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a2, a4);
  v10 = Parse.DirectInvocation.userData.getter();
  if (!v10)
  {
    if (one-time initialization token for siriPhone != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    __swift_project_value_buffer(v17, static Logger.siriPhone);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v18, v19))
    {
      goto LABEL_24;
    }

    v20 = swift_slowAlloc();
    *v20 = 0;
    v21 = "#AnnounceIncomingCallNotificationDirectAction: No userData.";
LABEL_23:
    _os_log_impl(&dword_0, v18, v19, v21, v20, 2u);

LABEL_24:

    v24 = type metadata accessor for Parse.DirectInvocation();
    (*(*(v24 - 8) + 8))(a1, v24);
    __swift_destroy_boxed_opaque_existential_1(v48);
    return 0;
  }

  v11 = v10;
  specialized Dictionary.subscript.getter(0x6C646E7542707061, 0xEB00000000644965, v10, v44);
  if (!v45)
  {

    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v44, &_sypSgMd, &_sypSgMR);
LABEL_13:
    if (one-time initialization token for siriPhone != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    __swift_project_value_buffer(v22, static Logger.siriPhone);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v18, v19))
    {
      goto LABEL_24;
    }

    v20 = swift_slowAlloc();
    *v20 = 0;
    v21 = "#AnnounceIncomingCallNotificationDirectAction: No App bundleId.";
    goto LABEL_23;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_13;
  }

  v13 = v46;
  v12 = v47;
  specialized Dictionary.subscript.getter(0x6163696669746F6ELL, 0xEC0000006E6F6974, v11, v44);

  if (!v45)
  {

    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v44, &_sypSgMd, &_sypSgMR);
LABEL_19:
    if (one-time initialization token for siriPhone != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    __swift_project_value_buffer(v23, static Logger.siriPhone);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v18, v19))
    {
      goto LABEL_24;
    }

    v20 = swift_slowAlloc();
    *v20 = 0;
    v21 = "#AnnounceIncomingCallNotificationDirectAction: No notification data in UserData.";
    goto LABEL_23;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_19;
  }

  v15 = v46;
  v14 = v47;
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for NSKeyedUnarchiver, NSKeyedUnarchiver_ptr);
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for UNNotification, UNNotification_ptr);
  v16 = static NSKeyedUnarchiver.unarchivedObject<A>(ofClass:from:)();
  v27 = v16;
  if (!v16)
  {

    if (one-time initialization token for siriPhone != -1)
    {
      swift_once();
    }

    v37 = type metadata accessor for Logger();
    __swift_project_value_buffer(v37, static Logger.siriPhone);
    v18 = Logger.logObject.getter();
    v38 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v18, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_0, v18, v38, "#AnnounceIncomingCallNotificationDirectAction: No notification in archived data.", v39, 2u);
    }

    outlined consume of Data._Representation(v15, v14);
    goto LABEL_24;
  }

  v28 = one-time initialization token for siriPhone;
  v29 = v16;
  if (v28 != -1)
  {
    swift_once();
  }

  v30 = type metadata accessor for Logger();
  __swift_project_value_buffer(v30, static Logger.siriPhone);
  v31 = v29;

  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v32, v33))
  {
    log = v32;
    v34 = swift_slowAlloc();
    v41 = v33;
    v35 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v44[0] = v43;
    *v34 = 136315394;
    *(v34 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v12, v44);
    *(v34 + 12) = 2112;
    *(v34 + 14) = v31;
    *v35 = v27;
    v36 = v31;
    _os_log_impl(&dword_0, log, v41, "#AnnounceIncomingCallNotificationDirectAction: initialized with bundleID: %s and notification %@.", v34, 0x16u);
    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v35, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);

    __swift_destroy_boxed_opaque_existential_1(v43);
  }

  else
  {
  }

  outlined init with copy of SignalProviding(v48, v44);
  v25 = (*(a3 + 248))(v13, v12, v31, v44);
  outlined consume of Data._Representation(v15, v14);

  v40 = type metadata accessor for Parse.DirectInvocation();
  (*(*(v40 - 8) + 8))(a1, v40);
  __swift_destroy_boxed_opaque_existential_1(v48);
  return v25;
}

void *specialized AnnounceIncomingCallNotificationDirectAction.init(appBundleId:notification:contactStore:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v35[3] = a6;
  v35[4] = a7;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v35);
  (*(*(a6 - 8) + 32))(boxed_opaque_existential_1, a4, a6);
  a5[11] = 0;
  a5[7] = a1;
  a5[8] = a2;
  v14 = [a3 request];
  v15 = [v14 identifier];

  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;

  a5[9] = v16;
  a5[10] = v18;
  a5[12] = a3;
  outlined init with copy of SignalProviding(v35, (a5 + 2));
  v19 = a3;
  v20 = [v19 request];
  v21 = [v20 content];

  v22 = [v21 communicationContext];
  if (!v22)
  {
    v28 = 0;
    a5[13] = 1;
LABEL_12:
    v29 = (*(*a5 + 264))(v28);

    goto LABEL_13;
  }

  v23 = [v22 capabilities];
  v24 = 1;
  if (v23 == &dword_0 + 1)
  {
    v24 = 2;
  }

  a5[13] = v24;
  v25 = [v22 sender];
  if (!v25)
  {
    v30 = [v22 recipients];
    type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for _UNNotificationContact, _UNNotificationContact_ptr);
    v31 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (specialized Array.count.getter(v31))
    {
      specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v31 & 0xC000000000000001) == 0, v31);
      if ((v31 & 0xC000000000000001) != 0)
      {
        v32 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v32 = *(v31 + 32);
      }

      v28 = v32;
    }

    else
    {

      v28 = 0;
    }

    goto LABEL_12;
  }

  v26 = v25;
  v27 = *(*a5 + 264);
  v28 = v25;
  v29 = v27(v26);

LABEL_13:
  __swift_destroy_boxed_opaque_existential_1(v35);
  swift_beginAccess();
  v33 = a5[11];
  a5[11] = v29;

  return a5;
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

PhoneCallFlowDelegatePlugin::AnnounceVoicemailCATs::Properties_optional __swiftcall AnnounceVoicemailCATs.Properties.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of AnnounceVoicemailCATs.Properties.init(rawValue:), v2);

  if (v3 == 1)
  {
    v4.value = PhoneCallFlowDelegatePlugin_AnnounceVoicemailCATs_Properties_readVoicemailAnnouncementHint;
  }

  else
  {
    v4.value = PhoneCallFlowDelegatePlugin_AnnounceVoicemailCATs_Properties_unknownDefault;
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

unint64_t AnnounceVoicemailCATsSimple.Properties.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0xD00000000000002FLL;
  }

  else
  {
    return 0xD00000000000002BLL;
  }
}

PhoneCallFlowDelegatePlugin::AnnounceVoicemailCATs::Properties_optional protocol witness for RawRepresentable.init(rawValue:) in conformance AnnounceVoicemailCATs.Properties@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::AnnounceVoicemailCATs::Properties_optional *a2@<X8>)
{
  result.value = AnnounceVoicemailCATs.Properties.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance AnnounceVoicemailCATs.Properties@<X0>(unint64_t *a1@<X8>)
{
  result = AnnounceVoicemailCATsSimple.Properties.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t AnnounceVoicemailCATs.readVoicemailAnnouncement(burstIndex:isPreviousNotificationVoicemail:voicemail:completion:)(unint64_t a1, char a2, char a3, unint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v8 = OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_1_14(v8, xmmword_426980);
  if (a2)
  {
    a1 = 0;
    v8[3].n128_u64[1] = 0;
    v8[4].n128_u64[0] = 0;
  }

  v8[3].n128_u64[0] = a1;
  OUTLINED_FUNCTION_39_0();
  v8[4].n128_u64[1] = v9;
  v8[5].n128_u64[0] = 0xD00000000000001FLL;
  v8[5].n128_u64[1] = v10;
  v8[6].n128_u8[0] = a3 & 1;
  OUTLINED_FUNCTION_2_20(&type metadata for Bool);
  if (a4)
  {
    v11 = type metadata accessor for PhoneCallRecord(0);
    v12 = a4;
  }

  else
  {
    v12 = 0;
    v11 = 0;
    v8[9].n128_u64[1] = 0;
    v8[10].n128_u64[0] = 0;
  }

  v8[9].n128_u64[0] = v12;
  v8[10].n128_u64[1] = v11;

  dispatch thunk of CATWrapper.execute(catId:parameters:completion:)();
}

uint64_t AnnounceVoicemailCATs.readVoicemailAnnouncement(burstIndex:isPreviousNotificationVoicemail:voicemail:)(uint64_t a1, uint64_t a2, char a3, char a4, uint64_t a5)
{
  *(v6 + 32) = a5;
  *(v6 + 40) = v5;
  *(v6 + 73) = a4;
  *(v6 + 72) = a3;
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t AnnounceVoicemailCATs.readVoicemailAnnouncement(burstIndex:isPreviousNotificationVoicemail:voicemail:)()
{
  v1 = *(v0 + 72);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v2 = OUTLINED_FUNCTION_47();
  *(v0 + 48) = v2;
  OUTLINED_FUNCTION_1_14(v2, xmmword_426980);
  if (v1)
  {
    OUTLINED_FUNCTION_5_15();
    v2[3].n128_u64[1] = 0;
    v2[4].n128_u64[0] = 0;
  }

  else
  {
    v3 = *(v0 + 24);
  }

  v4 = *(v0 + 32);
  v5 = *(v0 + 73);
  v2[3].n128_u64[0] = v3;
  OUTLINED_FUNCTION_39_0();
  v2[4].n128_u64[1] = v6;
  v2[5].n128_u64[0] = 0xD00000000000001FLL;
  v2[5].n128_u64[1] = v7;
  v2[6].n128_u8[0] = v8;
  OUTLINED_FUNCTION_2_20(&type metadata for Bool);
  v9 = 0;
  if (v4)
  {
    v9 = type metadata accessor for PhoneCallRecord(0);
  }

  else
  {
    v2[9].n128_u64[1] = 0;
    v2[10].n128_u64[0] = 0;
  }

  v2[9].n128_u64[0] = v4;
  v2[10].n128_u64[1] = v9;
  OUTLINED_FUNCTION_9_13(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 56) = v10;
  *v10 = v11;
  v10[1] = AnnounceVoicemailCATs.readVoicemailAnnouncement(burstIndex:isPreviousNotificationVoicemail:voicemail:);
  v12 = *(v0 + 40);
  v13 = *(v0 + 16);

  return v15(v13, 0xD00000000000002BLL, 0x80000000004520E0, v2);
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

    return _swift_task_switch(AddCallParticipantCATs.errorParticipantAlreadyActive(participant:shouldIncludeHandleLabel:currentCall:), 0, 0);
  }

  else
  {
    v9 = *(v3 + 48);

    OUTLINED_FUNCTION_11();

    return v10();
  }
}

{
  v1 = *(v0 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v2 = OUTLINED_FUNCTION_47();
  *(v0 + 40) = v2;
  OUTLINED_FUNCTION_1_14(v2, xmmword_426980);
  if (v1)
  {
    OUTLINED_FUNCTION_5_15();
    v2[3].n128_u64[1] = 0;
    v2[4].n128_u64[0] = 0;
  }

  else
  {
    v3 = *(v0 + 16);
  }

  v4 = *(v0 + 24);
  v5 = *(v0 + 65);
  v2[3].n128_u64[0] = v3;
  OUTLINED_FUNCTION_39_0();
  v2[4].n128_u64[1] = v6;
  v2[5].n128_u64[0] = 0xD00000000000001FLL;
  v2[5].n128_u64[1] = v7;
  v2[6].n128_u8[0] = v8;
  OUTLINED_FUNCTION_2_20(&type metadata for Bool);
  v9 = 0;
  if (v4)
  {
    v9 = type metadata accessor for PhoneCallRecord(0);
  }

  else
  {
    v2[9].n128_u64[1] = 0;
    v2[10].n128_u64[0] = 0;
  }

  v2[9].n128_u64[0] = v4;
  v2[10].n128_u64[1] = v9;
  OUTLINED_FUNCTION_9_13(&async function pointer to dispatch thunk of CATWrapper.executeDialog(catId:parameters:));
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 48) = v10;
  *v10 = v11;
  v10[1] = AnnounceVoicemailCATs.readVoicemailAnnouncement(burstIndex:isPreviousNotificationVoicemail:voicemail:);
  v12 = *(v0 + 32);

  return v14(0xD00000000000002BLL, 0x80000000004520E0, v2);
}

{
  OUTLINED_FUNCTION_28();
  v3 = v2;
  OUTLINED_FUNCTION_6();
  *v4 = v3;
  v6 = *(v5 + 48);
  v7 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v8 = v7;
  *(v3 + 56) = v0;

  if (v0)
  {

    return _swift_task_switch(AddCallParticipantCATs.errorParticipantAlreadyActive(participant:shouldIncludeHandleLabel:currentCall:), 0, 0);
  }

  else
  {
    v9 = *(v3 + 40);

    v10 = OUTLINED_FUNCTION_5_2();

    return v11(v10);
  }
}

uint64_t AnnounceVoicemailCATs.readVoicemailAnnouncement(burstIndex:isPreviousNotificationVoicemail:voicemail:)(uint64_t a1, char a2, char a3, uint64_t a4)
{
  *(v5 + 24) = a4;
  *(v5 + 32) = v4;
  *(v5 + 65) = a3;
  *(v5 + 64) = a2;
  *(v5 + 16) = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t AnnounceVoicemailCATs.readVoicemailAnnouncement(burstIndex:isPreviousNotificationVoicemail:voicemail:)(unint64_t a1, char a2, char a3, unint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v8 = OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_1_14(v8, xmmword_426980);
  if (a2)
  {
    a1 = 0;
    v8[3].n128_u64[1] = 0;
    v8[4].n128_u64[0] = 0;
  }

  v8[3].n128_u64[0] = a1;
  OUTLINED_FUNCTION_39_0();
  v8[4].n128_u64[1] = v9;
  v8[5].n128_u64[0] = 0xD00000000000001FLL;
  v8[5].n128_u64[1] = v10;
  v8[6].n128_u8[0] = a3 & 1;
  v8[7].n128_u64[1] = &type metadata for Bool;
  v8[8].n128_u64[0] = 0x69616D6563696F76;
  v8[8].n128_u64[1] = 0xE90000000000006CLL;
  if (a4)
  {
    v11 = type metadata accessor for PhoneCallRecord(0);
    v12 = a4;
  }

  else
  {
    v12 = 0;
    v11 = 0;
    v8[9].n128_u64[1] = 0;
    v8[10].n128_u64[0] = 0;
  }

  v8[9].n128_u64[0] = v12;
  v8[10].n128_u64[1] = v11;

  dispatch thunk of CATWrapper.execute(catId:parameters:)();
}

uint64_t AnnounceVoicemailCATs.readVoicemailAnnouncementHint(announcementCount:daysSinceLastHint:hintCount:completion:)(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5, char a6)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v12 = OUTLINED_FUNCTION_47();
  *(v12 + 16) = xmmword_426980;
  OUTLINED_FUNCTION_27_2();
  *(v13 + 32) = 0xD000000000000011;
  *(v13 + 40) = v14;
  if (a2)
  {
    a1 = 0;
    *(v12 + 56) = 0;
    *(v12 + 64) = 0;
  }

  *(v12 + 48) = a1;
  OUTLINED_FUNCTION_39_0();
  *(v12 + 72) = v15;
  *(v12 + 80) = 0xD000000000000011;
  *(v12 + 88) = v16;
  if (a4)
  {
    a3 = 0;
    *(v12 + 104) = 0;
    *(v12 + 112) = 0;
  }

  *(v12 + 96) = a3;
  OUTLINED_FUNCTION_3_10();
  *(v12 + 120) = v17;
  *(v12 + 128) = v18;
  *(v12 + 136) = 0xE900000000000074;
  if (a6)
  {
    a5 = 0;
    v19 = 0;
    *(v12 + 152) = 0;
    *(v12 + 160) = 0;
  }

  else
  {
    v19 = &type metadata for Double;
  }

  *(v12 + 144) = a5;
  *(v12 + 168) = v19;
  dispatch thunk of CATWrapper.execute(catId:parameters:completion:)();
}

uint64_t AnnounceVoicemailCATs.readVoicemailAnnouncementHint(announcementCount:daysSinceLastHint:hintCount:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5, uint64_t a6, char a7)
{
  *(v8 + 40) = a6;
  *(v8 + 48) = v7;
  *(v8 + 82) = a7;
  *(v8 + 81) = a5;
  *(v8 + 24) = a2;
  *(v8 + 32) = a4;
  *(v8 + 80) = a3;
  *(v8 + 16) = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t AnnounceVoicemailCATs.readVoicemailAnnouncementHint(announcementCount:daysSinceLastHint:hintCount:)()
{
  v1 = *(v0 + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v2 = OUTLINED_FUNCTION_47();
  *(v0 + 56) = v2;
  *(v2 + 16) = xmmword_426980;
  OUTLINED_FUNCTION_27_2();
  *(v3 + 32) = 0xD000000000000011;
  *(v3 + 40) = v4;
  if (v1)
  {
    OUTLINED_FUNCTION_5_15();
    *(v2 + 56) = 0;
    *(v2 + 64) = 0;
  }

  else
  {
    v6 = *(v0 + 24);
    v5 = &type metadata for Double;
  }

  v7 = *(v0 + 81);
  OUTLINED_FUNCTION_11_14(v5);
  if (v8)
  {
    OUTLINED_FUNCTION_5_15();
    *(v2 + 104) = 0;
    *(v2 + 112) = 0;
  }

  else
  {
    v9 = *(v0 + 32);
  }

  v10 = *(v0 + 82);
  *(v2 + 96) = v9;
  OUTLINED_FUNCTION_3_10();
  OUTLINED_FUNCTION_13_11(v11);
  if (v12)
  {
    v13 = 0;
    v14 = 0;
    *(v2 + 152) = 0;
    *(v2 + 160) = 0;
  }

  else
  {
    v13 = *(v0 + 40);
    v14 = &type metadata for Double;
  }

  *(v2 + 144) = v13;
  *(v2 + 168) = v14;
  OUTLINED_FUNCTION_1(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  OUTLINED_FUNCTION_25();
  *(v0 + 64) = v15;
  *v15 = v16;
  v15[1] = AnnounceVoicemailCATs.readVoicemailAnnouncementHint(announcementCount:daysSinceLastHint:hintCount:);
  v17 = *(v0 + 48);
  v18 = *(v0 + 16);

  return v20(v18, 0xD00000000000002FLL, 0x8000000000452110, v2);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  v3 = v2;
  OUTLINED_FUNCTION_6();
  *v4 = v3;
  v6 = *(v5 + 64);
  v7 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v8 = v7;
  *(v3 + 72) = v0;

  if (v0)
  {

    return _swift_task_switch(AnnounceVoicemailCATs.readVoicemailAnnouncementHint(announcementCount:daysSinceLastHint:hintCount:), 0, 0);
  }

  else
  {
    v9 = *(v3 + 56);

    OUTLINED_FUNCTION_11();

    return v10();
  }
}

{
  OUTLINED_FUNCTION_15();
  v1 = *(v0 + 56);

  OUTLINED_FUNCTION_11();
  v3 = *(v0 + 72);

  return v2();
}

{
  v1 = *(v0 + 72);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v2 = OUTLINED_FUNCTION_47();
  *(v0 + 48) = v2;
  *(v2 + 16) = xmmword_426980;
  OUTLINED_FUNCTION_27_2();
  *(v3 + 32) = 0xD000000000000011;
  *(v3 + 40) = v4;
  if (v1)
  {
    OUTLINED_FUNCTION_5_15();
    *(v2 + 56) = 0;
    *(v2 + 64) = 0;
  }

  else
  {
    v6 = *(v0 + 16);
    v5 = &type metadata for Double;
  }

  v7 = *(v0 + 73);
  OUTLINED_FUNCTION_11_14(v5);
  if (v8)
  {
    OUTLINED_FUNCTION_5_15();
    *(v2 + 104) = 0;
    *(v2 + 112) = 0;
  }

  else
  {
    v9 = *(v0 + 24);
  }

  v10 = *(v0 + 74);
  *(v2 + 96) = v9;
  OUTLINED_FUNCTION_3_10();
  OUTLINED_FUNCTION_13_11(v11);
  if (v12)
  {
    v13 = 0;
    v14 = 0;
    *(v2 + 152) = 0;
    *(v2 + 160) = 0;
  }

  else
  {
    v13 = *(v0 + 32);
    v14 = &type metadata for Double;
  }

  *(v2 + 144) = v13;
  *(v2 + 168) = v14;
  OUTLINED_FUNCTION_1(&async function pointer to dispatch thunk of CATWrapper.executeDialog(catId:parameters:));
  OUTLINED_FUNCTION_25();
  *(v0 + 56) = v15;
  *v15 = v16;
  v15[1] = AnnounceVoicemailCATs.readVoicemailAnnouncementHint(announcementCount:daysSinceLastHint:hintCount:);
  v17 = *(v0 + 40);

  return v19(0xD00000000000002FLL, 0x8000000000452110, v2);
}

{
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

    return _swift_task_switch(AddCallParticipantCATs.errorParticipantAlreadyActive(participant:shouldIncludeHandleLabel:currentCall:), 0, 0);
  }

  else
  {
    v9 = *(v3 + 48);

    v10 = OUTLINED_FUNCTION_5_2();

    return v11(v10);
  }
}

uint64_t AnnounceVoicemailCATs.readVoicemailAnnouncementHint(announcementCount:daysSinceLastHint:hintCount:)(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5, char a6)
{
  *(v7 + 74) = a6;
  *(v7 + 32) = a5;
  *(v7 + 40) = v6;
  *(v7 + 73) = a4;
  *(v7 + 72) = a2;
  *(v7 + 16) = a1;
  *(v7 + 24) = a3;
  return OUTLINED_FUNCTION_0_0();
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v12 = OUTLINED_FUNCTION_47();
  *(v12 + 16) = xmmword_426980;
  OUTLINED_FUNCTION_27_2();
  *(v13 + 32) = 0xD000000000000011;
  *(v13 + 40) = v14;
  if (a2)
  {
    a1 = 0;
    *(v12 + 56) = 0;
    *(v12 + 64) = 0;
  }

  *(v12 + 48) = a1;
  OUTLINED_FUNCTION_39_0();
  *(v12 + 72) = v15;
  *(v12 + 80) = 0xD000000000000011;
  *(v12 + 88) = v16;
  if (a4)
  {
    a3 = 0;
    *(v12 + 104) = 0;
    *(v12 + 112) = 0;
  }

  *(v12 + 96) = a3;
  OUTLINED_FUNCTION_3_10();
  *(v12 + 120) = v17;
  *(v12 + 128) = v18;
  *(v12 + 136) = 0xE900000000000074;
  if (a6)
  {
    a5 = 0;
    v19 = 0;
    *(v12 + 152) = 0;
    *(v12 + 160) = 0;
  }

  else
  {
    v19 = &type metadata for Double;
  }

  *(v12 + 144) = a5;
  *(v12 + 168) = v19;
  dispatch thunk of CATWrapper.execute(catId:parameters:)();
}

uint64_t AnnounceVoicemailCATs.__allocating_init(templateDir:options:globals:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  return AnnounceVoicemailCATs.init(templateDir:options:globals:)(a1, a2);
}

uint64_t AnnounceVoicemailCATs.init(templateDir:options:globals:)(uint64_t a1, uint64_t a2)
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

unint64_t lazy protocol witness table accessor for type AnnounceVoicemailCATs.Properties and conformance AnnounceVoicemailCATs.Properties()
{
  result = lazy protocol witness table cache variable for type AnnounceVoicemailCATs.Properties and conformance AnnounceVoicemailCATs.Properties;
  if (!lazy protocol witness table cache variable for type AnnounceVoicemailCATs.Properties and conformance AnnounceVoicemailCATs.Properties)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnnounceVoicemailCATs.Properties and conformance AnnounceVoicemailCATs.Properties);
  }

  return result;
}

uint64_t type metadata accessor for AnnounceVoicemailCATs()
{
  result = type metadata singleton initialization cache for AnnounceVoicemailCATs;
  if (!type metadata singleton initialization cache for AnnounceVoicemailCATs)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AnnounceVoicemailCATs.Properties(_BYTE *result, unsigned int a2, unsigned int a3)
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

PhoneCallFlowDelegatePlugin::AnnounceVoicemailCATsSimple::Properties_optional __swiftcall AnnounceVoicemailCATsSimple.Properties.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of AnnounceVoicemailCATsSimple.Properties.init(rawValue:), v2);

  if (v3 == 1)
  {
    v4.value = PhoneCallFlowDelegatePlugin_AnnounceVoicemailCATsSimple_Properties_readVoicemailAnnouncementHint;
  }

  else
  {
    v4.value = PhoneCallFlowDelegatePlugin_AnnounceVoicemailCATsSimple_Properties_unknownDefault;
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

PhoneCallFlowDelegatePlugin::AnnounceVoicemailCATsSimple::Properties_optional protocol witness for RawRepresentable.init(rawValue:) in conformance AnnounceVoicemailCATsSimple.Properties@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::AnnounceVoicemailCATsSimple::Properties_optional *a2@<X8>)
{
  result.value = AnnounceVoicemailCATsSimple.Properties.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t AnnounceVoicemailCATsSimple.readVoicemailAnnouncement(burstIndex:isPreviousNotificationVoicemail:voicemail:)(uint64_t a1, char a2, char a3, uint64_t a4)
{
  *(v5 + 24) = a4;
  *(v5 + 32) = v4;
  *(v5 + 65) = a3;
  *(v5 + 64) = a2;
  *(v5 + 16) = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t AnnounceVoicemailCATsSimple.readVoicemailAnnouncement(burstIndex:isPreviousNotificationVoicemail:voicemail:)()
{
  v3 = *(v1 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v4 = OUTLINED_FUNCTION_47();
  *(v1 + 40) = v4;
  OUTLINED_FUNCTION_1_14(v4, xmmword_426980);
  if (v3)
  {
    OUTLINED_FUNCTION_5_15();
    v4[3].n128_u64[1] = 0;
    v4[4].n128_u64[0] = 0;
  }

  else
  {
    v5 = *(v1 + 16);
  }

  OUTLINED_FUNCTION_12_14();
  OUTLINED_FUNCTION_14_13(v6);
  v7 = OUTLINED_FUNCTION_3_11(&type metadata for Bool);
  if (v0)
  {
    v7 = type metadata accessor for PhoneCallRecord(v7);
  }

  else
  {
    v4[9].n128_u64[1] = 0;
    v4[10].n128_u64[0] = 0;
  }

  v4[9].n128_u64[0] = v0;
  v4[10].n128_u64[1] = v7;
  OUTLINED_FUNCTION_9_13(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v8 = swift_task_alloc();
  *(v1 + 48) = v8;
  *v8 = v1;
  v8[1] = AnnounceVoicemailCATsSimple.readVoicemailAnnouncement(burstIndex:isPreviousNotificationVoicemail:voicemail:);
  v9 = *(v1 + 32);

  return v11(v2 + 12, 0x80000000004520E0, v4);
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
  *(v3 + 56) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_19_5();

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {
    v12 = *(v3 + 40);

    v13 = OUTLINED_FUNCTION_5_2();

    return v14(v13);
  }
}

{
  v1 = v0[5];

  v2 = v0[1];
  v3 = v0[7];

  return v2();
}

PhoneCallFlowDelegatePlugin::AnnounceVoicemailCATsSimple::ReadVoicemailAnnouncementDialogIds_optional __swiftcall AnnounceVoicemailCATsSimple.ReadVoicemailAnnouncementDialogIds.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of AnnounceVoicemailCATsSimple.ReadVoicemailAnnouncementDialogIds.init(rawValue:), v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t AnnounceVoicemailCATsSimple.ReadVoicemailAnnouncementDialogIds.rawValue.getter(char a1)
{
  if (!a1)
  {
    return 0x746361746E6F63;
  }

  if (a1 == 1)
  {
    return 0x72656C6C61436F6ELL;
  }

  return 0xD000000000000012;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance AnnounceVoicemailCATsSimple.ReadVoicemailAnnouncementDialogIds(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *a1;
  return specialized == infix<A>(_:_:)();
}

PhoneCallFlowDelegatePlugin::AnnounceVoicemailCATsSimple::ReadVoicemailAnnouncementDialogIds_optional protocol witness for RawRepresentable.init(rawValue:) in conformance AnnounceVoicemailCATsSimple.ReadVoicemailAnnouncementDialogIds@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::AnnounceVoicemailCATsSimple::ReadVoicemailAnnouncementDialogIds_optional *a2@<X8>)
{
  result.value = AnnounceVoicemailCATsSimple.ReadVoicemailAnnouncementDialogIds.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance AnnounceVoicemailCATsSimple.ReadVoicemailAnnouncementDialogIds@<X0>(uint64_t *a1@<X8>)
{
  result = AnnounceVoicemailCATsSimple.ReadVoicemailAnnouncementDialogIds.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t AnnounceVoicemailCATsSimple.readVoicemailAnnouncementAsLabels(burstIndex:isPreviousNotificationVoicemail:voicemail:)(uint64_t a1, char a2, char a3, uint64_t a4)
{
  *(v5 + 24) = a4;
  *(v5 + 32) = v4;
  *(v5 + 65) = a3;
  *(v5 + 64) = a2;
  *(v5 + 16) = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t AnnounceVoicemailCATsSimple.readVoicemailAnnouncementAsLabels(burstIndex:isPreviousNotificationVoicemail:voicemail:)()
{
  v3 = *(v1 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v4 = OUTLINED_FUNCTION_47();
  *(v1 + 40) = v4;
  OUTLINED_FUNCTION_1_14(v4, xmmword_426980);
  if (v3)
  {
    OUTLINED_FUNCTION_5_15();
    v4[3].n128_u64[1] = 0;
    v4[4].n128_u64[0] = 0;
  }

  else
  {
    v5 = *(v1 + 16);
  }

  OUTLINED_FUNCTION_12_14();
  OUTLINED_FUNCTION_14_13(v6);
  v7 = OUTLINED_FUNCTION_3_11(&type metadata for Bool);
  if (v0)
  {
    v7 = type metadata accessor for PhoneCallRecord(v7);
  }

  else
  {
    v4[9].n128_u64[1] = 0;
    v4[10].n128_u64[0] = 0;
  }

  v4[9].n128_u64[0] = v0;
  v4[10].n128_u64[1] = v7;
  OUTLINED_FUNCTION_9_13(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  v8 = swift_task_alloc();
  *(v1 + 48) = v8;
  VoicemailAnnouncementDialogIds = lazy protocol witness table accessor for type AnnounceVoicemailCATsSimple.ReadVoicemailAnnouncementDialogIds and conformance AnnounceVoicemailCATsSimple.ReadVoicemailAnnouncementDialogIds();
  *v8 = v1;
  v8[1] = AnnounceVoicemailCATsSimple.readVoicemailAnnouncementAsLabels(burstIndex:isPreviousNotificationVoicemail:voicemail:);
  v10 = *(v1 + 32);

  return v12(v2 + 12, 0x80000000004520E0, v4, &type metadata for AnnounceVoicemailCATsSimple.ReadVoicemailAnnouncementDialogIds, VoicemailAnnouncementDialogIds);
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
  *(v3 + 56) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_19_5();

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {
    v12 = *(v3 + 40);

    v13 = OUTLINED_FUNCTION_5_2();

    return v14(v13);
  }
}

unint64_t lazy protocol witness table accessor for type AnnounceVoicemailCATsSimple.ReadVoicemailAnnouncementDialogIds and conformance AnnounceVoicemailCATsSimple.ReadVoicemailAnnouncementDialogIds()
{
  result = lazy protocol witness table cache variable for type AnnounceVoicemailCATsSimple.ReadVoicemailAnnouncementDialogIds and conformance AnnounceVoicemailCATsSimple.ReadVoicemailAnnouncementDialogIds;
  if (!lazy protocol witness table cache variable for type AnnounceVoicemailCATsSimple.ReadVoicemailAnnouncementDialogIds and conformance AnnounceVoicemailCATsSimple.ReadVoicemailAnnouncementDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnnounceVoicemailCATsSimple.ReadVoicemailAnnouncementDialogIds and conformance AnnounceVoicemailCATsSimple.ReadVoicemailAnnouncementDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnnounceVoicemailCATsSimple.ReadVoicemailAnnouncementDialogIds and conformance AnnounceVoicemailCATsSimple.ReadVoicemailAnnouncementDialogIds;
  if (!lazy protocol witness table cache variable for type AnnounceVoicemailCATsSimple.ReadVoicemailAnnouncementDialogIds and conformance AnnounceVoicemailCATsSimple.ReadVoicemailAnnouncementDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnnounceVoicemailCATsSimple.ReadVoicemailAnnouncementDialogIds and conformance AnnounceVoicemailCATsSimple.ReadVoicemailAnnouncementDialogIds);
  }

  return result;
}

uint64_t AnnounceVoicemailCATsSimple.readVoicemailAnnouncementHint(announcementCount:daysSinceLastHint:hintCount:)(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5, char a6)
{
  *(v7 + 74) = a6;
  *(v7 + 32) = a5;
  *(v7 + 40) = v6;
  *(v7 + 73) = a4;
  *(v7 + 72) = a2;
  *(v7 + 16) = a1;
  *(v7 + 24) = a3;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t AnnounceVoicemailCATsSimple.readVoicemailAnnouncementHint(announcementCount:daysSinceLastHint:hintCount:)()
{
  v1 = *(v0 + 72);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v2 = OUTLINED_FUNCTION_47();
  *(v0 + 48) = v2;
  *(v2 + 16) = xmmword_426980;
  *(v2 + 32) = 0xD000000000000011;
  *(v2 + 40) = 0x8000000000457C50;
  if (v1)
  {
    OUTLINED_FUNCTION_5_15();
    *(v2 + 56) = 0;
    *(v2 + 64) = 0;
  }

  else
  {
    v4 = *(v0 + 16);
    v3 = &type metadata for Double;
  }

  v5 = *(v0 + 73);
  *(v2 + 48) = v4;
  *(v2 + 72) = v3;
  *(v2 + 80) = 0xD000000000000011;
  *(v2 + 88) = 0x8000000000457C70;
  if (v5)
  {
    OUTLINED_FUNCTION_5_15();
    *(v2 + 104) = 0;
    *(v2 + 112) = 0;
  }

  else
  {
    v6 = *(v0 + 24);
  }

  v7 = *(v0 + 74);
  *(v2 + 96) = v6;
  OUTLINED_FUNCTION_3_10();
  *(v2 + 120) = v8;
  *(v2 + 128) = v9;
  *(v2 + 136) = 0xE900000000000074;
  if (v10)
  {
    v11 = 0;
    v12 = 0;
    *(v2 + 152) = 0;
    *(v2 + 160) = 0;
  }

  else
  {
    v11 = *(v0 + 32);
    v12 = &type metadata for Double;
  }

  *(v2 + 144) = v11;
  *(v2 + 168) = v12;
  v13 = *(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + 1);
  v17 = (&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v14 = swift_task_alloc();
  *(v0 + 56) = v14;
  *v14 = v0;
  v14[1] = AnnounceVoicemailCATsSimple.readVoicemailAnnouncementHint(announcementCount:daysSinceLastHint:hintCount:);
  v15 = *(v0 + 40);

  return v17(0xD00000000000002FLL, 0x8000000000452110, v2);
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_4();
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
    OUTLINED_FUNCTION_19_5();

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {
    v12 = *(v3 + 48);

    v13 = OUTLINED_FUNCTION_5_2();

    return v14(v13);
  }
}

{
  v1 = v0[6];

  v2 = v0[1];
  v3 = v0[8];

  return v2();
}

PhoneCallFlowDelegatePlugin::AnnounceVoicemailCATsSimple::ReadVoicemailAnnouncementHintDialogIds_optional __swiftcall AnnounceVoicemailCATsSimple.ReadVoicemailAnnouncementHintDialogIds.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of AnnounceVoicemailCATsSimple.ReadVoicemailAnnouncementHintDialogIds.init(rawValue:), v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

PhoneCallFlowDelegatePlugin::AnnounceVoicemailCATsSimple::ReadVoicemailAnnouncementHintDialogIds_optional protocol witness for RawRepresentable.init(rawValue:) in conformance AnnounceVoicemailCATsSimple.ReadVoicemailAnnouncementHintDialogIds@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::AnnounceVoicemailCATsSimple::ReadVoicemailAnnouncementHintDialogIds_optional *a2@<X8>)
{
  result.value = AnnounceVoicemailCATsSimple.ReadVoicemailAnnouncementHintDialogIds.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance AnnounceVoicemailCATsSimple.ReadVoicemailAnnouncementHintDialogIds@<X0>(unint64_t *a1@<X8>)
{
  result = AnnounceVoicemailCATsSimple.ReadVoicemailAnnouncementHintDialogIds.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = 0xE500000000000000;
  return result;
}

uint64_t AnnounceVoicemailCATsSimple.readVoicemailAnnouncementHintAsLabels(announcementCount:daysSinceLastHint:hintCount:)(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5, char a6)
{
  *(v7 + 74) = a6;
  *(v7 + 32) = a5;
  *(v7 + 40) = v6;
  *(v7 + 73) = a4;
  *(v7 + 72) = a2;
  *(v7 + 16) = a1;
  *(v7 + 24) = a3;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t AnnounceVoicemailCATsSimple.readVoicemailAnnouncementHintAsLabels(announcementCount:daysSinceLastHint:hintCount:)()
{
  v1 = *(v0 + 72);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v2 = OUTLINED_FUNCTION_47();
  *(v0 + 48) = v2;
  *(v2 + 16) = xmmword_426980;
  *(v2 + 32) = 0xD000000000000011;
  *(v2 + 40) = 0x8000000000457C50;
  if (v1)
  {
    OUTLINED_FUNCTION_5_15();
    *(v2 + 56) = 0;
    *(v2 + 64) = 0;
  }

  else
  {
    v4 = *(v0 + 16);
    v3 = &type metadata for Double;
  }

  v5 = *(v0 + 73);
  *(v2 + 48) = v4;
  *(v2 + 72) = v3;
  *(v2 + 80) = 0xD000000000000011;
  *(v2 + 88) = 0x8000000000457C70;
  if (v5)
  {
    OUTLINED_FUNCTION_5_15();
    *(v2 + 104) = 0;
    *(v2 + 112) = 0;
  }

  else
  {
    v6 = *(v0 + 24);
  }

  v7 = *(v0 + 74);
  *(v2 + 96) = v6;
  OUTLINED_FUNCTION_3_10();
  *(v2 + 120) = v8;
  *(v2 + 128) = v9;
  *(v2 + 136) = 0xE900000000000074;
  if (v10)
  {
    v11 = 0;
    v12 = 0;
    *(v2 + 152) = 0;
    *(v2 + 160) = 0;
  }

  else
  {
    v11 = *(v0 + 32);
    v12 = &type metadata for Double;
  }

  *(v2 + 144) = v11;
  *(v2 + 168) = v12;
  v13 = *(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:) + 1);
  v18 = (&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:) + async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  v14 = swift_task_alloc();
  *(v0 + 56) = v14;
  VoicemailAnnouncementHintDialogIds = lazy protocol witness table accessor for type AnnounceVoicemailCATsSimple.ReadVoicemailAnnouncementHintDialogIds and conformance AnnounceVoicemailCATsSimple.ReadVoicemailAnnouncementHintDialogIds();
  *v14 = v0;
  v14[1] = AnnounceVoicemailCATsSimple.readVoicemailAnnouncementHintAsLabels(announcementCount:daysSinceLastHint:hintCount:);
  v16 = *(v0 + 40);

  return v18(0xD00000000000002FLL, 0x8000000000452110, v2, &type metadata for AnnounceVoicemailCATsSimple.ReadVoicemailAnnouncementHintDialogIds, VoicemailAnnouncementHintDialogIds);
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_4();
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
    OUTLINED_FUNCTION_19_5();

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {
    v12 = *(v3 + 48);

    v13 = OUTLINED_FUNCTION_5_2();

    return v14(v13);
  }
}

unint64_t lazy protocol witness table accessor for type AnnounceVoicemailCATsSimple.ReadVoicemailAnnouncementHintDialogIds and conformance AnnounceVoicemailCATsSimple.ReadVoicemailAnnouncementHintDialogIds()
{
  result = lazy protocol witness table cache variable for type AnnounceVoicemailCATsSimple.ReadVoicemailAnnouncementHintDialogIds and conformance AnnounceVoicemailCATsSimple.ReadVoicemailAnnouncementHintDialogIds;
  if (!lazy protocol witness table cache variable for type AnnounceVoicemailCATsSimple.ReadVoicemailAnnouncementHintDialogIds and conformance AnnounceVoicemailCATsSimple.ReadVoicemailAnnouncementHintDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnnounceVoicemailCATsSimple.ReadVoicemailAnnouncementHintDialogIds and conformance AnnounceVoicemailCATsSimple.ReadVoicemailAnnouncementHintDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnnounceVoicemailCATsSimple.ReadVoicemailAnnouncementHintDialogIds and conformance AnnounceVoicemailCATsSimple.ReadVoicemailAnnouncementHintDialogIds;
  if (!lazy protocol witness table cache variable for type AnnounceVoicemailCATsSimple.ReadVoicemailAnnouncementHintDialogIds and conformance AnnounceVoicemailCATsSimple.ReadVoicemailAnnouncementHintDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnnounceVoicemailCATsSimple.ReadVoicemailAnnouncementHintDialogIds and conformance AnnounceVoicemailCATsSimple.ReadVoicemailAnnouncementHintDialogIds);
  }

  return result;
}

uint64_t AnnounceVoicemailCATsSimple.__allocating_init(templateDir:options:globals:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  return AnnounceVoicemailCATsSimple.init(templateDir:options:globals:)(a1, a2);
}

uint64_t AnnounceVoicemailCATsSimple.init(templateDir:options:globals:)(uint64_t a1, uint64_t a2)
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

uint64_t AnnounceVoicemailCATsSimple.__allocating_init(useResponseMode:options:)()
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

uint64_t AnnounceVoicemailCATsSimple.init(useResponseMode:options:)()
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

unint64_t lazy protocol witness table accessor for type AnnounceVoicemailCATsSimple.Properties and conformance AnnounceVoicemailCATsSimple.Properties()
{
  result = lazy protocol witness table cache variable for type AnnounceVoicemailCATsSimple.Properties and conformance AnnounceVoicemailCATsSimple.Properties;
  if (!lazy protocol witness table cache variable for type AnnounceVoicemailCATsSimple.Properties and conformance AnnounceVoicemailCATsSimple.Properties)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnnounceVoicemailCATsSimple.Properties and conformance AnnounceVoicemailCATsSimple.Properties);
  }

  return result;
}

uint64_t type metadata accessor for AnnounceVoicemailCATsSimple()
{
  result = type metadata singleton initialization cache for AnnounceVoicemailCATsSimple;
  if (!type metadata singleton initialization cache for AnnounceVoicemailCATsSimple)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AnnounceVoicemailCATsSimple.Properties(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for AnnounceVoicemailCATsSimple.ReadVoicemailAnnouncementDialogIds(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *AnnounceVoicemailDirectAction.identifier.unsafeMutableAddressor()
{
  if (one-time initialization token for identifier != -1)
  {
    OUTLINED_FUNCTION_6_12();
  }

  return static AnnounceVoicemailDirectAction.identifier;
}

uint64_t static AnnounceVoicemailDirectAction.identifier.getter()
{
  if (one-time initialization token for identifier != -1)
  {
    OUTLINED_FUNCTION_6_12();
  }

  v0 = *static AnnounceVoicemailDirectAction.identifier;

  return v0;
}

uint64_t AnnounceVoicemailReadingState.lastNotificationId.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

void *AnnounceVoicemailDirectAction.__allocating_init(voicemailIdentifier:contactInfo:synchronousBurstIndex:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_10_15();
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a2;
  result[4] = a3;
  result[5] = a4;
  result[6] = a5;
  return result;
}

void *AnnounceVoicemailDirectAction.init(voicemailIdentifier:contactInfo:synchronousBurstIndex:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a1;
  v5[3] = a2;
  v5[4] = a3;
  v5[5] = a4;
  v5[6] = a5;
  return v5;
}

id AnnounceVoicemailDirectAction.toCallRecord(contactStore:)(void *a1)
{
  v2 = v1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR) - 8) + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v5);
  v7 = &v49 - v6;
  v8 = v1[5];
  if (!v8)
  {
    goto LABEL_3;
  }

  v9 = v2[4];
  v10 = a1[3];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v10);
  v30 = ContactStoring.persons(withHandle:)(v9, v8, v10, v11);
  v31 = specialized Array.count.getter(v30);
  if (!v31)
  {

LABEL_3:
    v12 = 0;
    goto LABEL_4;
  }

  v32 = v31;
  specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v30 & 0xC000000000000001) == 0, v30);
  if ((v30 & 0xC000000000000001) != 0)
  {
    v33 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    v33 = *(v30 + 32);
  }

  v12 = v33;
  if (v32 < 1)
  {
    __break(1u);
    goto LABEL_28;
  }

  specialized Array._checkIndex(_:)(1, v30);
  specialized Array._checkIndex(_:)(v32, v30);
  if ((v30 & 0xC000000000000001) == 0 || v32 == 1)
  {
  }

  else
  {
    type metadata accessor for INPerson();

    v34 = 1;
    do
    {
      v35 = v34 + 1;
      _ArrayBuffer._typeCheckSlowPath(_:)(v34);
      v34 = v35;
    }

    while (v32 != v35);
  }

  if (v30 >> 62)
  {
LABEL_28:
    v42 = _CocoaArrayWrapper.subscript.getter();
    v37 = v43;
    v38 = v44;
    v39 = v45;
    v36 = v42;

    if ((v39 & 1) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_29;
  }

  v36 = v30 & 0xFFFFFFFFFFFFFF8;
  v37 = v36 + 32;
  v38 = 1;
  v39 = (2 * v32) | 1;
  if ((v39 & 1) == 0)
  {
LABEL_25:
    specialized _copyCollectionToContiguousArray<A>(_:)(v36, v37, v38, v39);
    v41 = v40;
LABEL_35:
    swift_unknownObjectRelease();
    goto LABEL_36;
  }

LABEL_29:
  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain_n();
  v46 = swift_dynamicCastClass();
  if (!v46)
  {
    swift_unknownObjectRelease();
    v46 = _swiftEmptyArrayStorage;
  }

  v47 = v46[2];

  if (__OFSUB__(v39 >> 1, v38))
  {
    __break(1u);
    goto LABEL_38;
  }

  if (v47 != (v39 >> 1) - v38)
  {
LABEL_38:
    swift_unknownObjectRelease_n();
    goto LABEL_25;
  }

  v41 = swift_dynamicCastClass();
  swift_unknownObjectRelease_n();
  if (!v41)
  {
    v41 = _swiftEmptyArrayStorage;
    goto LABEL_35;
  }

LABEL_36:
  outlined bridged method (mbgnn) of @objc INPerson.alternatives.setter(v41, v12);

  v48 = v12;
LABEL_4:
  v13 = v2[2];
  v14 = v2[3];
  v15 = type metadata accessor for Date();
  __swift_storeEnumTagSinglePayload(v7, 1, 1, v15);
  if (v12)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_426260;
    *(v16 + 32) = v12;
  }

  else
  {
    v16 = 0;
  }

  v17 = objc_allocWithZone(NSNumber);

  v18 = [v17 initWithInteger:1];
  v19 = [objc_allocWithZone(NSNumber) initWithInteger:0];
  v20 = objc_allocWithZone(INCallRecord);
  v21 = @nonobjc INCallRecord.init(__identifier:dateCreated:callRecordType:callCapability:callDuration:unseen:preferredCallProvider:participants:numberOfCalls:providerId:providerBundleId:isCallerIdBlocked:)(v13, v14, v7, 5, 1, 0, 0, 1, v16, v18, 0, 0, 0, 0, v19);
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  __swift_project_value_buffer(v22, static Logger.siriPhone);
  v23 = v21;
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v26 = 138412290;
    *(v26 + 4) = v23;
    *v27 = v23;
    v28 = v23;
    _os_log_impl(&dword_0, v24, v25, "Voicemail INCallRecord to announce = %@", v26, 0xCu);
    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v27, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    OUTLINED_FUNCTION_8();

    OUTLINED_FUNCTION_8();
  }

  return v23;
}

PhoneCallFlowDelegatePlugin::AnnounceVoicemailDirectAction::CodingKeys_optional __swiftcall AnnounceVoicemailDirectAction.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  object = stringValue._object;
  v2._countAndFlagsBits = stringValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of AnnounceVoicemailDirectAction.CodingKeys.init(rawValue:), v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

unint64_t AnnounceVoicemailDirectAction.CodingKeys.rawValue.getter(char a1)
{
  result = 0x49746361746E6F63;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000011;
      break;
    case 2:
      return result;
    case 3:
      result = 0xD000000000000015;
      break;
    default:
      result = 0xD000000000000015;
      break;
  }

  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance AnnounceVoicemailDirectAction.CodingKeys(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *a1;
  return specialized == infix<A>(_:_:)();
}

PhoneCallFlowDelegatePlugin::AnnounceVoicemailDirectAction::CodingKeys_optional protocol witness for RawRepresentable.init(rawValue:) in conformance AnnounceVoicemailDirectAction.CodingKeys@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::AnnounceVoicemailDirectAction::CodingKeys_optional *a2@<X8>)
{
  result.value = AnnounceVoicemailDirectAction.CodingKeys.init(stringValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance AnnounceVoicemailDirectAction.CodingKeys@<X0>(uint64_t *a1@<X8>)
{
  result = AnnounceVoicemailDirectAction.CodingKeys.stringValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AnnounceVoicemailDirectAction.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AnnounceVoicemailDirectAction.CodingKeys and conformance AnnounceVoicemailDirectAction.CodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AnnounceVoicemailDirectAction.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AnnounceVoicemailDirectAction.CodingKeys and conformance AnnounceVoicemailDirectAction.CodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t AnnounceVoicemailDirectAction.__allocating_init(from:)(uint64_t *a1)
{
  OUTLINED_FUNCTION_10_15();
  v2 = swift_allocObject();
  AnnounceVoicemailDirectAction.init(from:)(a1);
  return v2;
}

void *AnnounceVoicemailDirectAction.init(from:)(uint64_t *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy27PhoneCallFlowDelegatePlugin29AnnounceVoicemailDirectActionC10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy27PhoneCallFlowDelegatePlugin29AnnounceVoicemailDirectActionC10CodingKeysOGMR);
  OUTLINED_FUNCTION_7(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v8);
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type AnnounceVoicemailDirectAction.CodingKeys and conformance AnnounceVoicemailDirectAction.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    type metadata accessor for AnnounceVoicemailDirectAction();
    swift_deallocPartialClassInstance();
  }

  else
  {
    LOBYTE(v37) = 1;
    OUTLINED_FUNCTION_7_9();
    v36 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v12 = v10;
    if (v10)
    {
      if (one-time initialization token for siriPhone != -1)
      {
        OUTLINED_FUNCTION_0_6();
        swift_once();
      }

      v13 = type metadata accessor for Logger();
      __swift_project_value_buffer(v13, static Logger.siriPhone);

      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.debug.getter();

      v34 = v15;
      if (os_log_type_enabled(v14, v15))
      {
        v35 = v14;
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v37 = v17;
        *v16 = 136315138;
        *(v16 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v12, &v37);
        _os_log_impl(&dword_0, v35, v34, "#AnnounceVoicemailDirectAction Using MessageIdentifier %s", v16, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v17);
        OUTLINED_FUNCTION_8();

        OUTLINED_FUNCTION_8();
      }

      else
      {
      }
    }

    else
    {
      LOBYTE(v37) = 0;
      OUTLINED_FUNCTION_7_9();
      v18 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
      if (v19)
      {
        if (one-time initialization token for siriPhone != -1)
        {
          OUTLINED_FUNCTION_0_6();
          swift_once();
        }

        v20 = type metadata accessor for Logger();
        __swift_project_value_buffer(v20, static Logger.siriPhone);
        v21 = Logger.logObject.getter();
        v22 = static os_log_type_t.fault.getter();
        if (os_log_type_enabled(v21, v22))
        {
          v23 = swift_slowAlloc();
          *v23 = 0;
          _os_log_impl(&dword_0, v21, v22, "#AnnounceVoicemailDirectAction Could not find a voicemail identifier in direct invocation payload", v23, 2u);
          OUTLINED_FUNCTION_8();
        }

        v36 = 0;
        v12 = 0xE000000000000000;
      }

      else
      {
        v28 = v18;
        if (one-time initialization token for siriPhone != -1)
        {
          OUTLINED_FUNCTION_0_6();
          swift_once();
        }

        v29 = type metadata accessor for Logger();
        __swift_project_value_buffer(v29, static Logger.siriPhone);
        v30 = Logger.logObject.getter();
        v31 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v30, v31))
        {
          v32 = swift_slowAlloc();
          *v32 = 134217984;
          *(v32 + 4) = v28;
          _os_log_impl(&dword_0, v30, v31, "#AnnounceVoicemailDirectAction Using VMVoicemailIdentifier %ld", v32, 0xCu);
          OUTLINED_FUNCTION_8();
        }

        v37 = v28;
        v36 = dispatch thunk of CustomStringConvertible.description.getter();
        v12 = v33;
      }
    }

    v3[2] = v36;
    v3[3] = v12;
    LOBYTE(v37) = 2;
    OUTLINED_FUNCTION_7_9();
    v3[4] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v3[5] = v24;
    LOBYTE(v37) = 3;
    OUTLINED_FUNCTION_7_9();
    v25 = KeyedDecodingContainer.decode(_:forKey:)();
    v26 = OUTLINED_FUNCTION_5_17();
    v27(v26);
    v3[6] = v25;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v3;
}

unsigned __int8 *AnnounceVoicemailDirectAction.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR) - 8) + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v5);
  v7 = &v55 - v6;
  v8 = type metadata accessor for UUID();
  v9 = OUTLINED_FUNCTION_7(v8);
  v55 = v10;
  v12 = *(v11 + 64);
  __chkstk_darwin(v9);
  v14 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy27PhoneCallFlowDelegatePlugin29AnnounceVoicemailDirectActionC10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy27PhoneCallFlowDelegatePlugin29AnnounceVoicemailDirectActionC10CodingKeysOGMR);
  OUTLINED_FUNCTION_7(v15);
  v57 = v16;
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v19);
  v21 = &v55 - v20;
  v22 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type AnnounceVoicemailDirectAction.CodingKeys and conformance AnnounceVoicemailDirectAction.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v24 = v2[2];
  v23 = v2[3];
  v56 = v2;
  UUID.init(uuidString:)();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) != 1)
  {
    v37 = v55;
    (*(v55 + 32))(v14, v7, v8);
    LOBYTE(v59) = 1;
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, &type metadata accessor for UUID);
    v38 = v58;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v25 = v38;
    if (v38)
    {
      (*(v37 + 8))(v14, v8);
      return (*(v57 + 8))(v21, v15);
    }

    (*(v37 + 8))(v14, v8);
    goto LABEL_37;
  }

  v25 = v58;
  result = _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v7, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v27 = HIBYTE(v23) & 0xF;
  v28 = v24 & 0xFFFFFFFFFFFFLL;
  if ((v23 & 0x2000000000000000) != 0)
  {
    v29 = HIBYTE(v23) & 0xF;
  }

  else
  {
    v29 = v24 & 0xFFFFFFFFFFFFLL;
  }

  if (!v29)
  {
    goto LABEL_37;
  }

  if ((v23 & 0x1000000000000000) != 0)
  {

    specialized _parseInteger<A, B>(ascii:radix:)(v24, v23, 10);
    v54 = v53;

    if ((v54 & 1) == 0)
    {
      v30 = v56;
      goto LABEL_75;
    }

LABEL_37:
    v30 = v56;
    goto LABEL_76;
  }

  if ((v23 & 0x2000000000000000) == 0)
  {
    if ((v24 & 0x1000000000000000) != 0)
    {
      result = ((v23 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
    }

    v30 = v56;
    v31 = *result;
    if (v31 == 43)
    {
      if (v28 >= 1)
      {
        if (v28 != 1)
        {
          if (result)
          {
            while (1)
            {
              OUTLINED_FUNCTION_3_12();
              if (!v33 & v32)
              {
                goto LABEL_73;
              }

              OUTLINED_FUNCTION_1_28();
              if (!v33 || __OFADD__(v42, v41))
              {
                goto LABEL_73;
              }

              OUTLINED_FUNCTION_13_12();
              if (v33)
              {
                goto LABEL_74;
              }
            }
          }

          goto LABEL_64;
        }

        goto LABEL_73;
      }

      goto LABEL_84;
    }

    if (v31 != 45)
    {
      if (v28)
      {
        v45 = 0;
        if (result)
        {
          while (1)
          {
            v46 = *result - 48;
            if (v46 > 9)
            {
              goto LABEL_73;
            }

            v47 = 10 * v45;
            if ((v45 * 10) >> 64 != (10 * v45) >> 63)
            {
              goto LABEL_73;
            }

            v45 = v47 + v46;
            if (__OFADD__(v47, v46))
            {
              goto LABEL_73;
            }

            ++result;
            if (!--v28)
            {
              goto LABEL_64;
            }
          }
        }

        goto LABEL_64;
      }

LABEL_73:
      v36 = 1;
LABEL_74:
      v61 = v36;
      if (v36)
      {
        goto LABEL_76;
      }

LABEL_75:
      LOBYTE(v59) = 0;
      KeyedEncodingContainer.encode(_:forKey:)();
      if (!v25)
      {
LABEL_76:
        v50 = v30[4];
        v51 = v30[5];
        LOBYTE(v59) = 2;
        KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
        if (!v25)
        {
          v52 = v30[6];
          LOBYTE(v59) = 3;
          KeyedEncodingContainer.encode(_:forKey:)();
        }
      }

      return (*(v57 + 8))(v21, v15);
    }

    if (v28 >= 1)
    {
      if (v28 != 1)
      {
        if (result)
        {
          while (1)
          {
            OUTLINED_FUNCTION_3_12();
            if (!v33 & v32)
            {
              goto LABEL_73;
            }

            OUTLINED_FUNCTION_1_28();
            if (!v33 || __OFSUB__(v35, v34))
            {
              goto LABEL_73;
            }

            OUTLINED_FUNCTION_13_12();
            if (v33)
            {
              goto LABEL_74;
            }
          }
        }

LABEL_64:
        v36 = 0;
        goto LABEL_74;
      }

      goto LABEL_73;
    }

    __break(1u);
LABEL_83:
    __break(1u);
LABEL_84:
    __break(1u);
    goto LABEL_85;
  }

  v59 = v24;
  v60 = v23 & 0xFFFFFFFFFFFFFFLL;
  if (v24 != 43)
  {
    v30 = v56;
    if (v24 != 45)
    {
      if (v27)
      {
        while (1)
        {
          OUTLINED_FUNCTION_3_12();
          if (!v33 & v32)
          {
            break;
          }

          OUTLINED_FUNCTION_1_28();
          if (!v33 || __OFADD__(v49, v48))
          {
            break;
          }

          OUTLINED_FUNCTION_13_12();
          if (v33)
          {
            goto LABEL_74;
          }
        }
      }

      goto LABEL_73;
    }

    if (v27)
    {
      if (v27 != 1)
      {
        OUTLINED_FUNCTION_15_16();
        while (1)
        {
          OUTLINED_FUNCTION_3_12();
          if (!v33 & v32)
          {
            break;
          }

          OUTLINED_FUNCTION_1_28();
          if (!v33 || __OFSUB__(v40, v39))
          {
            break;
          }

          OUTLINED_FUNCTION_13_12();
          if (v33)
          {
            goto LABEL_74;
          }
        }
      }

      goto LABEL_73;
    }

    goto LABEL_83;
  }

  v30 = v56;
  if (v27)
  {
    if (v27 != 1)
    {
      OUTLINED_FUNCTION_15_16();
      while (1)
      {
        OUTLINED_FUNCTION_3_12();
        if (!v33 & v32)
        {
          break;
        }

        OUTLINED_FUNCTION_1_28();
        if (!v33 || __OFADD__(v44, v43))
        {
          break;
        }

        OUTLINED_FUNCTION_13_12();
        if (v33)
        {
          goto LABEL_74;
        }
      }
    }

    goto LABEL_73;
  }

LABEL_85:
  __break(1u);
  return result;
}

uint64_t AnnounceVoicemailDirectAction.deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return v0;
}

uint64_t AnnounceVoicemailDirectAction.__deallocating_deinit()
{
  AnnounceVoicemailDirectAction.deinit();
  OUTLINED_FUNCTION_10_15();

  return swift_deallocClassInstance();
}

uint64_t protocol witness for static DICodable.identifier.getter in conformance AnnounceVoicemailDirectAction()
{
  if (one-time initialization token for identifier != -1)
  {
    swift_once();
  }

  v0 = *static AnnounceVoicemailDirectAction.identifier;

  return v0;
}

uint64_t protocol witness for Decodable.init(from:) in conformance AnnounceVoicemailDirectAction@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 120))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

id @nonobjc INCallRecord.init(__identifier:dateCreated:callRecordType:callCapability:callDuration:unseen:preferredCallProvider:participants:numberOfCalls:providerId:providerBundleId:isCallerIdBlocked:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15)
{
  v18 = String._bridgeToObjectiveC()();

  v19 = type metadata accessor for Date();
  isa = 0;
  if (__swift_getEnumTagSinglePayload(a3, 1, v19) != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(*(v19 - 8) + 8))(a3, v19);
  }

  if (a9)
  {
    type metadata accessor for INPerson();
    v21.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v21.super.isa = 0;
  }

  if (a12)
  {
    v22 = String._bridgeToObjectiveC()();
  }

  else
  {
    v22 = 0;
  }

  if (a14)
  {
    v23 = String._bridgeToObjectiveC()();
  }

  else
  {
    v23 = 0;
  }

  v24 = [v28 initWithIdentifier:v18 dateCreated:isa callRecordType:a4 callCapability:a5 callDuration:a6 unseen:a7 preferredCallProvider:a8 participants:v21.super.isa numberOfCalls:a10 providerId:v22 providerBundleId:v23 isCallerIdBlocked:a15];

  return v24;
}

void specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a4 >> 1;
  v6 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  if (v6)
  {
    OUTLINED_FUNCTION_9_15();
    if (v7 == v8)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
      v9 = swift_allocObject();
      v10 = _swift_stdlib_malloc_size(v9);
      v9[2] = v6;
      v9[3] = (2 * ((v10 - 32) / 8)) | 1;
    }

    if (v5 != v4)
    {
      type metadata accessor for INPerson();
      swift_arrayInitWithCopy();
      return;
    }

    goto LABEL_9;
  }
}

{
  v5 = a4 >> 1;
  v6 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  if (v6)
  {
    OUTLINED_FUNCTION_9_15();
    if (v7 == v8)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy27PhoneCallFlowDelegatePlugin20TransformationResultVGMd, &_ss23_ContiguousArrayStorageCy27PhoneCallFlowDelegatePlugin20TransformationResultVGMR);
      v9 = swift_allocObject();
      v10 = _swift_stdlib_malloc_size(v9);
      v9[2] = v6;
      v9[3] = 2 * ((v10 - 32) / 88);
    }

    if (v5 != v4)
    {
      swift_arrayInitWithCopy();
      return;
    }

    goto LABEL_9;
  }
}

{
  v5 = a4 >> 1;
  v6 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  if (v6)
  {
    OUTLINED_FUNCTION_9_15();
    if (v7 == v8)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
      v9 = swift_allocObject();
      v10 = _swift_stdlib_malloc_size(v9);
      v9[2] = v6;
      v9[3] = 2 * ((v10 - 32) / 16);
    }

    if (v5 != v4)
    {
      swift_arrayInitWithCopy();
      return;
    }

    goto LABEL_9;
  }
}

void *specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v2 = __CocoaSet.count.getter();
  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  while (1)
  {
    v3 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSo8INPersonC_Tt1g5(v2, 0);

    v1 = specialized Sequence._copySequenceContents(initializing:)(&v5, (v3 + 32), v2, v1);
    outlined consume of Set<LSApplicationExtensionRecord>.Iterator._Variant();
    if (v1 == v2)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v2 = *(v1 + 16);
    if (!v2)
    {
      return _swiftEmptyArrayStorage;
    }
  }

  return v3;
}

{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  v3 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSS_Tt1g5(*(a1 + 16), 0);
  v4 = specialized Sequence._copySequenceContents(initializing:)(&v6, v3 + 4, v1, a1);

  outlined consume of Set<LSApplicationExtensionRecord>.Iterator._Variant();
  if (v4 != v1)
  {
    __break(1u);
    return _swiftEmptyArrayStorage;
  }

  return v3;
}

void *specialized _copyCollectionToContiguousArray<A>(_:)(unint64_t a1)
{
  if (a1 >> 62)
  {
    goto LABEL_5;
  }

  v1 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  while (1)
  {
    v2 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSo8INPersonC_Tt1g5(v1, 0);

    specialized _ArrayBuffer._copyContents(initializing:)();
    v4 = v3;

    if (v4 == v1)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v1 = _CocoaArrayWrapper.endIndex.getter();
    if (!v1)
    {
      return _swiftEmptyArrayStorage;
    }
  }

  return v2;
}

unsigned __int8 *specialized _parseInteger<A, B>(ascii:radix:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v80 = a1;
  v81 = a2;

  result = String.init<A>(_:)();
  v6 = result;
  v7 = v5;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = static String._copying(_:)();
    v44 = v43;

    v7 = v44;
    if ((v44 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v8 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
    }

    v9 = *result;
    if (v9 == 43)
    {
      if (v8 >= 1)
      {
        if (v8 != 1)
        {
          OUTLINED_FUNCTION_11_15();
          if (v25 ^ v26 | v24)
          {
            v29 = 65;
          }

          if (!(v25 ^ v26 | v24))
          {
            v30 = 58;
          }

          if (v27)
          {
            v17 = 0;
            v31 = (v27 + 1);
            do
            {
              v32 = *v31;
              if (v32 < 0x30 || v32 >= v30)
              {
                if (v32 < 0x41 || v32 >= v29)
                {
                  OUTLINED_FUNCTION_12_15();
                  if (!v22 || v32 >= v34)
                  {
                    goto LABEL_142;
                  }

                  v33 = -87;
                }

                else
                {
                  v33 = -55;
                }
              }

              else
              {
                v33 = -48;
              }

              v35 = v17 * a3;
              if ((v17 * a3) >> 64 != (v17 * a3) >> 63)
              {
                goto LABEL_141;
              }

              v17 = v35 + (v32 + v33);
              if (__OFADD__(v35, (v32 + v33)))
              {
                goto LABEL_141;
              }

              ++v31;
              --v28;
            }

            while (v28);
LABEL_52:
            v6 = v17;
            goto LABEL_142;
          }

          goto LABEL_72;
        }

LABEL_141:
        v6 = 0;
        goto LABEL_142;
      }

      goto LABEL_146;
    }

    if (v9 != 45)
    {
      if (v8)
      {
        v36 = a3 + 48;
        v37 = a3 + 55;
        v38 = a3 + 87;
        if (a3 > 10)
        {
          v36 = 58;
        }

        else
        {
          v38 = 97;
          v37 = 65;
        }

        if (result)
        {
          v39 = 0;
          do
          {
            v40 = *result;
            if (v40 < 0x30 || v40 >= v36)
            {
              if (v40 < 0x41 || v40 >= v37)
              {
                v6 = 0;
                if (v40 < 0x61 || v40 >= v38)
                {
                  goto LABEL_142;
                }

                v41 = -87;
              }

              else
              {
                v41 = -55;
              }
            }

            else
            {
              v41 = -48;
            }

            v42 = v39 * a3;
            if ((v39 * a3) >> 64 != (v39 * a3) >> 63)
            {
              goto LABEL_141;
            }

            v39 = v42 + (v40 + v41);
            if (__OFADD__(v42, (v40 + v41)))
            {
              goto LABEL_141;
            }

            ++result;
            --v8;
          }

          while (v8);
          v6 = v42 + (v40 + v41);
          goto LABEL_142;
        }

        goto LABEL_72;
      }

      goto LABEL_141;
    }

    if (v8 >= 1)
    {
      if (v8 != 1)
      {
        OUTLINED_FUNCTION_11_15();
        if (v11 ^ v12 | v10)
        {
          v15 = 65;
        }

        if (!(v11 ^ v12 | v10))
        {
          v16 = 58;
        }

        if (v13)
        {
          v17 = 0;
          v18 = (v13 + 1);
          while (1)
          {
            v19 = *v18;
            if (v19 < 0x30 || v19 >= v16)
            {
              if (v19 < 0x41 || v19 >= v15)
              {
                OUTLINED_FUNCTION_12_15();
                if (!v22 || v19 >= v21)
                {
                  goto LABEL_142;
                }

                v20 = -87;
              }

              else
              {
                v20 = -55;
              }
            }

            else
            {
              v20 = -48;
            }

            v23 = v17 * a3;
            if ((v17 * a3) >> 64 != (v17 * a3) >> 63)
            {
              goto LABEL_141;
            }

            v17 = v23 - (v19 + v20);
            if (__OFSUB__(v23, (v19 + v20)))
            {
              goto LABEL_141;
            }

            ++v18;
            if (!--v14)
            {
              goto LABEL_52;
            }
          }
        }

LABEL_72:
        v6 = 0;
LABEL_142:

        return v6;
      }

      goto LABEL_141;
    }

    __break(1u);
LABEL_145:
    __break(1u);
LABEL_146:
    __break(1u);
    goto LABEL_147;
  }

  v45 = HIBYTE(v7) & 0xF;
  v80 = v6;
  v81 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v45)
      {
        OUTLINED_FUNCTION_2_21();
        if (v70 ^ v71 | v69)
        {
          v73 = 65;
        }

        if (!(v70 ^ v71 | v69))
        {
          v74 = 58;
        }

        v75 = &v80;
        while (1)
        {
          v76 = *v75;
          if (v76 < 0x30 || v76 >= v74)
          {
            if (v76 < 0x41 || v76 >= v73)
            {
              OUTLINED_FUNCTION_12_15();
              if (!v22 || v76 >= v78)
              {
                goto LABEL_142;
              }

              v77 = -87;
            }

            else
            {
              v77 = -55;
            }
          }

          else
          {
            v77 = -48;
          }

          v79 = v50 * a3;
          if ((v50 * a3) >> 64 != (v50 * a3) >> 63)
          {
            goto LABEL_141;
          }

          v50 = v79 + (v76 + v77);
          if (__OFADD__(v79, (v76 + v77)))
          {
            goto LABEL_141;
          }

          v75 = (v75 + 1);
          if (!--v72)
          {
            goto LABEL_140;
          }
        }
      }

      goto LABEL_141;
    }

    if (v45)
    {
      if (v45 != 1)
      {
        OUTLINED_FUNCTION_2_21();
        if (v47 ^ v48 | v46)
        {
          v51 = 65;
        }

        if (!(v47 ^ v48 | v46))
        {
          v52 = 58;
        }

        v53 = &v80 + 1;
        while (1)
        {
          v54 = *v53;
          if (v54 < 0x30 || v54 >= v52)
          {
            if (v54 < 0x41 || v54 >= v51)
            {
              OUTLINED_FUNCTION_12_15();
              if (!v22 || v54 >= v56)
              {
                goto LABEL_142;
              }

              v55 = -87;
            }

            else
            {
              v55 = -55;
            }
          }

          else
          {
            v55 = -48;
          }

          v57 = v50 * a3;
          if ((v50 * a3) >> 64 != (v50 * a3) >> 63)
          {
            goto LABEL_141;
          }

          v50 = v57 - (v54 + v55);
          if (__OFSUB__(v57, (v54 + v55)))
          {
            goto LABEL_141;
          }

          ++v53;
          if (!--v49)
          {
            goto LABEL_140;
          }
        }
      }

      goto LABEL_141;
    }

    goto LABEL_145;
  }

  if (v45)
  {
    if (v45 != 1)
    {
      OUTLINED_FUNCTION_2_21();
      if (v59 ^ v60 | v58)
      {
        v62 = 65;
      }

      if (!(v59 ^ v60 | v58))
      {
        v63 = 58;
      }

      v64 = &v80 + 1;
      do
      {
        v65 = *v64;
        if (v65 < 0x30 || v65 >= v63)
        {
          if (v65 < 0x41 || v65 >= v62)
          {
            OUTLINED_FUNCTION_12_15();
            if (!v22 || v65 >= v67)
            {
              goto LABEL_142;
            }

            v66 = -87;
          }

          else
          {
            v66 = -55;
          }
        }

        else
        {
          v66 = -48;
        }

        v68 = v50 * a3;
        if ((v50 * a3) >> 64 != (v50 * a3) >> 63)
        {
          goto LABEL_141;
        }

        v50 = v68 + (v65 + v66);
        if (__OFADD__(v68, (v65 + v66)))
        {
          goto LABEL_141;
        }

        ++v64;
        --v61;
      }

      while (v61);
LABEL_140:
      v6 = v50;
      goto LABEL_142;
    }

    goto LABEL_141;
  }

LABEL_147:
  __break(1u);
  return result;
}

uint64_t static String._copying(_:)()
{
  v0 = specialized Collection.subscript.getter();
  v4 = static String._copying(_:)(v0, v1, v2, v3);

  return v4;
}

uint64_t static String._copying(_:)(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return static String._uncheckedFromUTF8(_:)();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = Substring.UTF8View.distance(from:to:)();
  if (!v9)
  {
    v11 = _swiftEmptyArrayStorage;
    goto LABEL_13;
  }

  v10 = v9;
  v11 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v9, 0);
  v12 = specialized Sequence._copySequenceContents(initializing:)(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = static String._uncheckedFromUTF8(_:)();

    return v14;
  }

  __break(1u);
LABEL_11:
  _StringObject.sharedUTF8.getter();
LABEL_4:

  return static String._uncheckedFromUTF8(_:)();
}

unint64_t specialized Sequence._copySequenceContents(initializing:)(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_36;
  }

  if (a3 < 0)
  {
    goto LABEL_40;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_36:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    result = v12;
    if ((v12 & 0xC) == v15)
    {
      result = _StringGuts._slowEnsureMatchingEncoding(_:)(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = String.UTF8View._foreignSubscript(position:)();
      v19 = result;
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = _StringObject.sharedUTF8.getter();
        }

        v19 = *(result + v18);
      }
    }

    if ((v12 & 0xC) == v15)
    {
      result = _StringGuts._slowEnsureMatchingEncoding(_:)(v12, a6, a7);
      v12 = result;
      if ((a7 & 0x1000000000000000) == 0)
      {
LABEL_27:
        v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
        goto LABEL_31;
      }
    }

    else if ((a7 & 0x1000000000000000) == 0)
    {
      goto LABEL_27;
    }

    if (v23 <= v12 >> 16)
    {
      goto LABEL_39;
    }

    result = String.UTF8View._foreignIndex(after:)();
    v12 = result;
LABEL_31:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_36;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_38;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_36;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

uint64_t _StringGuts._slowEnsureMatchingEncoding(_:)(unsigned __int16 a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = String.UTF16View.index(_:offsetBy:)();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = String.UTF8View._foreignIndex(_:offsetBy:)();
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t specialized Array._checkIndex(_:)(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    result = *(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8));
  }

  if (result < a1)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (a1 < 0)
  {
LABEL_8:
    __break(1u);
  }

  return result;
}

void outlined bridged method (mbgnn) of @objc INPerson.alternatives.setter(uint64_t a1, void *a2)
{
  type metadata accessor for INPerson();
  isa = Array._bridgeToObjectiveC()().super.isa;
  [a2 setAlternatives:isa];
}

unint64_t lazy protocol witness table accessor for type AnnounceVoicemailDirectAction.CodingKeys and conformance AnnounceVoicemailDirectAction.CodingKeys()
{
  result = lazy protocol witness table cache variable for type AnnounceVoicemailDirectAction.CodingKeys and conformance AnnounceVoicemailDirectAction.CodingKeys;
  if (!lazy protocol witness table cache variable for type AnnounceVoicemailDirectAction.CodingKeys and conformance AnnounceVoicemailDirectAction.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnnounceVoicemailDirectAction.CodingKeys and conformance AnnounceVoicemailDirectAction.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnnounceVoicemailDirectAction.CodingKeys and conformance AnnounceVoicemailDirectAction.CodingKeys;
  if (!lazy protocol witness table cache variable for type AnnounceVoicemailDirectAction.CodingKeys and conformance AnnounceVoicemailDirectAction.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnnounceVoicemailDirectAction.CodingKeys and conformance AnnounceVoicemailDirectAction.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnnounceVoicemailDirectAction.CodingKeys and conformance AnnounceVoicemailDirectAction.CodingKeys;
  if (!lazy protocol witness table cache variable for type AnnounceVoicemailDirectAction.CodingKeys and conformance AnnounceVoicemailDirectAction.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnnounceVoicemailDirectAction.CodingKeys and conformance AnnounceVoicemailDirectAction.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnnounceVoicemailDirectAction.CodingKeys and conformance AnnounceVoicemailDirectAction.CodingKeys;
  if (!lazy protocol witness table cache variable for type AnnounceVoicemailDirectAction.CodingKeys and conformance AnnounceVoicemailDirectAction.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnnounceVoicemailDirectAction.CodingKeys and conformance AnnounceVoicemailDirectAction.CodingKeys);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for AnnounceVoicemailDirectAction(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type AnnounceVoicemailDirectAction and conformance AnnounceVoicemailDirectAction, a2, type metadata accessor for AnnounceVoicemailDirectAction);
  result = lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type AnnounceVoicemailDirectAction and conformance AnnounceVoicemailDirectAction, v3, type metadata accessor for AnnounceVoicemailDirectAction);
  *(a1 + 16) = result;
  return result;
}

_BYTE *storeEnumTagSinglePayload for AnnounceVoicemailDirectAction.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t specialized Sequence._copySequenceContents(initializing:)(uint64_t result, void *a2, unint64_t a3, uint64_t a4)
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
    v13 = 0;
    v10 = 0;
LABEL_20:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v13;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v13 = 0;
    goto LABEL_20;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    v12 = 0;
    v13 = 0;
    while (v12 < v10)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_24;
      }

      if (!v9)
      {
        while (1)
        {
          v15 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v15 >= ((63 - v7) >> 6))
          {
            v9 = 0;
            v10 = v12;
            goto LABEL_20;
          }

          v9 = *(v6 + 8 * v15);
          ++v13;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        break;
      }

      v15 = v13;
LABEL_15:
      v16 = (*(a4 + 48) + ((v15 << 10) | (16 * __clz(__rbit64(v9)))));
      v17 = v16[1];
      v9 &= v9 - 1;
      *v11 = *v16;
      v11[1] = v17;
      if (v14 == v10)
      {

        v13 = v15;
        goto LABEL_20;
      }

      v11 += 2;

      v12 = v14;
      v13 = v15;
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
  return result;
}

{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
    v13 = 0;
    v10 = 0;
LABEL_20:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v13;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v13 = 0;
    goto LABEL_20;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    v12 = 0;
    v13 = 0;
    while (v12 < v10)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_24;
      }

      if (!v9)
      {
        while (1)
        {
          v15 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v15 >= ((63 - v7) >> 6))
          {
            v9 = 0;
            v10 = v12;
            goto LABEL_20;
          }

          v9 = *(v6 + 8 * v15);
          ++v13;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        break;
      }

      v15 = v13;
LABEL_15:
      v16 = (*(a4 + 48) + ((v15 << 10) | (16 * __clz(__rbit64(v9)))));
      v17 = v16[1];
      v9 &= v9 - 1;
      *v11 = *v16;
      v11[1] = v17;
      if (v14 == v10)
      {

        v13 = v15;
        goto LABEL_20;
      }

      v11 += 2;

      v12 = v14;
      v13 = v15;
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t specialized Sequence._copySequenceContents(initializing:)(uint64_t result, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v6 = a2;
  v7 = result;
  if ((a4 & 0xC000000000000001) != 0)
  {
    __CocoaSet.makeIterator()();
    type metadata accessor for App();
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type App and conformance App, 255, &type metadata accessor for App);
    result = Set.Iterator.init(_cocoa:)();
    v4 = v23;
    v8 = v24;
    v9 = v25;
    v10 = v26;
    v11 = v27;
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_23:
    v12 = 0;
LABEL_27:
    *v7 = v4;
    v7[1] = v8;
    v7[2] = v9;
    v7[3] = v10;
    v7[4] = v11;
    return v12;
  }

  v10 = 0;
  v18 = -1 << *(a4 + 32);
  v8 = a4 + 56;
  v9 = ~v18;
  v19 = -v18;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  else
  {
    v20 = -1;
  }

  v11 = v20 & *(a4 + 56);
  if (!a2)
  {
    goto LABEL_23;
  }

LABEL_3:
  if (!a3)
  {
    v12 = 0;
    goto LABEL_27;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v21 = v9;
    v12 = 0;
    v13 = (v9 + 64) >> 6;
    while (1)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v4 < 0)
      {
        if (!__CocoaSet.Iterator.next()())
        {
          goto LABEL_25;
        }

        type metadata accessor for App();
        swift_dynamicCast();
        result = v22;
        if (!v22)
        {
          goto LABEL_25;
        }
      }

      else
      {
        if (!v11)
        {
          while (1)
          {
            v15 = v10 + 1;
            if (__OFADD__(v10, 1))
            {
              break;
            }

            if (v15 >= v13)
            {
              v11 = 0;
              goto LABEL_25;
            }

            v11 = *(v8 + 8 * v15);
            ++v10;
            if (v11)
            {
              v10 = v15;
              goto LABEL_13;
            }
          }

          __break(1u);
          break;
        }

LABEL_13:
        v16 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
        v17 = *(*(v4 + 48) + ((v10 << 9) | (8 * v16)));

        if (!result)
        {
          goto LABEL_25;
        }
      }

      *v6++ = result;
      ++v12;
      if (v14 == a3)
      {
        v12 = a3;
LABEL_25:
        v9 = v21;
        goto LABEL_27;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t lazy protocol witness table accessor for type UUID and conformance UUID(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

void key path setter for AnnounceVoicemailFlow.state : AnnounceVoicemailFlow(uint64_t a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a1 + 8);
  swift_beginAccess();
  v5 = *(v3 + 16);
  *(v3 + 16) = v2;
  v6 = *(v3 + 24);
  *(v3 + 24) = v4;
  outlined copy of AnnounceVoicemailFlow.State(v2, v4);
  outlined consume of AnnounceVoicemailFlow.State(v5, v6);
}

void *AnnounceVoicemailFlow.state.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  outlined copy of AnnounceVoicemailFlow.State(v1, *(v0 + 24));
  return v1;
}

id outlined copy of AnnounceVoicemailFlow.State(id result, char a2)
{
  if (a2 == 2)
  {
  }

  if (a2 != 1)
  {
    if (a2)
    {
      return result;
    }
  }

  return result;
}

void AnnounceVoicemailFlow.__allocating_init(directAction:sharedGlobals:eventStore:contactStore:)()
{
  OUTLINED_FUNCTION_66();
  v29 = v0;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = *(v5 + 24);
  v11 = *(v5 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v5, v12);
  OUTLINED_FUNCTION_9_1();
  v14 = *(v13 + 64);
  __chkstk_darwin(v15);
  v17 = OUTLINED_FUNCTION_1_29(v16, v27);
  v18(v17);
  v20 = v4[3];
  v19 = v4[4];
  __swift_mutable_project_boxed_opaque_existential_1(v4, v20);
  OUTLINED_FUNCTION_9_1();
  v22 = *(v21 + 64);
  __chkstk_darwin(v23);
  v25 = OUTLINED_FUNCTION_0_21(v24, v28);
  v26(v25);
  specialized AnnounceVoicemailFlow.__allocating_init(directAction:sharedGlobals:eventStore:contactStore:)(v10, v8, v1, v2, v29, v12, v20, v11, v19);
  __swift_destroy_boxed_opaque_existential_1(v4);
  __swift_destroy_boxed_opaque_existential_1(v6);
  OUTLINED_FUNCTION_65();
}

void AnnounceVoicemailFlow.__allocating_init(state:eventStore:sharedGlobals:contactStore:)()
{
  OUTLINED_FUNCTION_66();
  v3 = v2;
  v30 = v4;
  v6 = v5;
  HIDWORD(v27) = v7;
  v9 = v8;
  v10 = swift_allocObject();
  v12 = v6[3];
  v11 = v6[4];
  __swift_mutable_project_boxed_opaque_existential_1(v6, v12);
  OUTLINED_FUNCTION_9_1();
  v14 = *(v13 + 64);
  __chkstk_darwin(v15);
  v17 = OUTLINED_FUNCTION_1_29(v16, v27);
  v18(v17);
  v20 = v3[3];
  v19 = v3[4];
  __swift_mutable_project_boxed_opaque_existential_1(v3, v20);
  OUTLINED_FUNCTION_9_1();
  v22 = *(v21 + 64);
  __chkstk_darwin(v23);
  v25 = OUTLINED_FUNCTION_0_21(v24, v28);
  v26(v25);
  specialized AnnounceVoicemailFlow.init(state:eventStore:sharedGlobals:contactStore:)(v9, v29, v0, v30, v1, v10, v12, v20, v11, v19);
  __swift_destroy_boxed_opaque_existential_1(v3);
  __swift_destroy_boxed_opaque_existential_1(v6);
  OUTLINED_FUNCTION_65();
}

void AnnounceVoicemailFlow.init(state:eventStore:sharedGlobals:contactStore:)()
{
  OUTLINED_FUNCTION_66();
  v28 = v3;
  v31 = v0;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = *(v6 + 24);
  v12 = *(v6 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v6, v13);
  OUTLINED_FUNCTION_9_1();
  v15 = *(v14 + 64);
  __chkstk_darwin(v16);
  v18 = OUTLINED_FUNCTION_1_29(v17, v28);
  v19(v18);
  v21 = v5[3];
  v20 = v5[4];
  __swift_mutable_project_boxed_opaque_existential_1(v5, v21);
  OUTLINED_FUNCTION_9_1();
  v23 = *(v22 + 64);
  __chkstk_darwin(v24);
  v26 = OUTLINED_FUNCTION_0_21(v25, v29);
  v27(v26);
  specialized AnnounceVoicemailFlow.init(state:eventStore:sharedGlobals:contactStore:)(v11, v9, v1, v30, v2, v31, v13, v21, v12, v20);
  __swift_destroy_boxed_opaque_existential_1(v5);
  __swift_destroy_boxed_opaque_existential_1(v7);
  OUTLINED_FUNCTION_65();
}

uint64_t AnnounceVoicemailFlow.execute(completion:)()
{
  type metadata accessor for AnnounceVoicemailFlow();
  lazy protocol witness table accessor for type AnnounceVoicemailFlow and conformance AnnounceVoicemailFlow(&lazy protocol witness table cache variable for type AnnounceVoicemailFlow and conformance AnnounceVoicemailFlow, v0, type metadata accessor for AnnounceVoicemailFlow);
  return Flow.deferToExecuteAsync(_:)();
}

uint64_t AnnounceVoicemailFlow.execute()()
{
  OUTLINED_FUNCTION_15();
  v1[63] = v2;
  v1[64] = v0;
  v3 = *(*(type metadata accessor for CATOption() - 8) + 64) + 15;
  v1[65] = swift_task_alloc();
  v4 = type metadata accessor for Date();
  v1[66] = v4;
  v5 = *(v4 - 8);
  v1[67] = v5;
  v6 = *(v5 + 64) + 15;
  v1[68] = swift_task_alloc();

  return _swift_task_switch(AnnounceVoicemailFlow.execute(), 0, 0);
}

{
  v1 = (*(**(v0 + 512) + 112))();
  switch(v2)
  {
    case 1:
      v35 = *(v0 + 504);
      v36 = *(v0 + 512);
      _s27PhoneCallFlowDelegatePlugin22SharedGlobalsProviding_pWOcTm_0((v36 + 9), v0 + 280);
      type metadata accessor for AnnounceVoicemailPromptForValueFlowStrategy();
      v37 = swift_allocObject();
      outlined init with take of SPHConversation((v0 + 280), v37 + 16);
      v38 = v36[12];
      v39 = v36[13];
      __swift_project_boxed_opaque_existential_1(v36 + 9, v38);
      (*(v39 + 16))(v38, v39);
      v40 = *(v0 + 256);
      v41 = *(v0 + 272);
      __swift_project_boxed_opaque_existential_1((v0 + 232), v40);
      *(v0 + 344) = v40;
      *(v0 + 352) = v41;
      __swift_allocate_boxed_opaque_existential_1((v0 + 320));
      OUTLINED_FUNCTION_40(v40);
      (*(v42 + 16))();
      v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow014PromptForValueC5AsyncCy09PhoneCallC14DelegatePlugin017AnnounceVoicemaildefC8StrategyC0M20AnnouncementResponseOGMd, &_s11SiriKitFlow014PromptForValueC5AsyncCy09PhoneCallC14DelegatePlugin017AnnounceVoicemaildefC8StrategyC0M20AnnouncementResponseOGMR);
      v44 = *(v43 + 48);
      v45 = *(v43 + 52);
      swift_allocObject();
      lazy protocol witness table accessor for type AnnounceVoicemailFlow and conformance AnnounceVoicemailFlow(&lazy protocol witness table cache variable for type AnnounceVoicemailPromptForValueFlowStrategy and conformance AnnounceVoicemailPromptForValueFlowStrategy, 255, type metadata accessor for AnnounceVoicemailPromptForValueFlowStrategy);
      v46 = PromptForValueFlowAsync.init<A>(strategy:outputPublisher:)();
      __swift_destroy_boxed_opaque_existential_1((v0 + 232));
      *(v0 + 488) = v46;
      OUTLINED_FUNCTION_50();
      v47 = swift_allocObject();
      *(v47 + 16) = v36;
      *(v47 + 24) = v1;

      outlined copy of AnnounceVoicemailFlow.State(v1, 1);
      lazy protocol witness table accessor for type TerminalOntologyNode<VoiceMail.VoiceMailNoun> and conformance TerminalOntologyNode<A>(&lazy protocol witness table cache variable for type PromptForValueFlowAsync<AnnounceVoicemailPromptForValueFlowStrategy.VoicemailAnnouncementResponse> and conformance PromptForValueFlowAsync<A>, &_s11SiriKitFlow014PromptForValueC5AsyncCy09PhoneCallC14DelegatePlugin017AnnounceVoicemaildefC8StrategyC0M20AnnouncementResponseOGMd, &_s11SiriKitFlow014PromptForValueC5AsyncCy09PhoneCallC14DelegatePlugin017AnnounceVoicemaildefC8StrategyC0M20AnnouncementResponseOGMR);
      static ExecuteResponse.ongoing<A>(next:childCompletion:)();
      outlined consume of AnnounceVoicemailFlow.State(v1, 1);

      goto LABEL_10;
    case 2:
      v28 = one-time initialization token for siriPhone;

      if (v28 != -1)
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
        *v32 = 0;
        _os_log_impl(&dword_0, v30, v31, "Transitioning to follow-up action flow.", v32, 2u);
      }

      v33 = *(v0 + 504);

      static ExecuteResponse.complete(next:)();
      outlined consume of AnnounceVoicemailFlow.State(v1, 2);
      outlined consume of AnnounceVoicemailFlow.State(v1, 2);
      break;
    case 3:
      v34 = *(v0 + 504);
      static ExecuteResponse.complete()();
      break;
    default:
      v3 = *(v0 + 544);
      v4 = *(v0 + 536);
      v5 = *(v0 + 528);
      v54 = *(v0 + 520);
      v6 = *(v0 + 512);
      v57 = *(v0 + 504);
      v7 = v6[7];
      v8 = v6[8];
      __swift_project_boxed_opaque_existential_1(v6 + 4, v7);
      static Date.distantFuture.getter();
      Date.timeIntervalSince1970.getter();
      v10 = v9;
      (*(v4 + 8))(v3, v5);
      *(v0 + 464) = 0;
      *(v0 + 472) = 0;
      *(v0 + 480) = v10;
      v11 = lazy protocol witness table accessor for type AnnounceVoicemailHintHistory and conformance AnnounceVoicemailHintHistory();
      SiriPhoneDefaultsProviding.getOrDefault<A>(key:defaultValue:)(0, v0 + 464, v7, &type metadata for AnnounceVoicemailHintHistory, v8, v11, v0 + 440);
      v55 = *(v0 + 448);
      v56 = *(v0 + 440);
      v12 = *(v0 + 456);
      v53 = v1[6];
      v52 = (*(*v1 + 112))(v6 + 14);
      _s27PhoneCallFlowDelegatePlugin22SharedGlobalsProviding_pWOcTm_0((v6 + 9), v0 + 360);
      _s27PhoneCallFlowDelegatePlugin22SharedGlobalsProviding_pWOcTm_0(v0 + 360, v0 + 16);
      v14 = *(v0 + 384);
      v13 = *(v0 + 392);
      __swift_project_boxed_opaque_existential_1((v0 + 360), v14);
      v15 = *(v13 + 32);
      *(v0 + 80) = &type metadata for BurstVoicemailFinder;
      *(v0 + 88) = &protocol witness table for BurstVoicemailFinder;
      *(v0 + 56) = swift_allocObject();
      v15(v14, v13);
      v16 = *(v0 + 384);
      v17 = *(v0 + 392);
      __swift_project_boxed_opaque_existential_1((v0 + 360), v16);
      (*(v17 + 8))(v16, v17);
      __swift_destroy_boxed_opaque_existential_1((v0 + 360));
      _s27PhoneCallFlowDelegatePlugin22SharedGlobalsProviding_pWOcTm_0((v6 + 9), v0 + 400);
      type metadata accessor for AnnounceVoicemailCATs();
      static CATOption.defaultMode.getter();
      v18 = CATWrapper.__allocating_init(options:globals:)();
      outlined init with copy of BurstNotificationSearchManager(v0 + 16, v0 + 96);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_426260;
      *(v19 + 32) = v52;
      v20 = v52;
      static AnnounceVoicemailReadingState.makeInitialState(synchronousBurstIndex:voicemail:)(v53, v20, v0 + 176);

      type metadata accessor for AnnounceVoicemailReadingFlow();
      v21 = swift_allocObject();
      *(v21 + 128) = &type metadata for BurstNotificationSearchManager;
      *(v21 + 136) = &protocol witness table for BurstNotificationSearchManager;
      v22 = swift_allocObject();
      *(v21 + 104) = v22;
      memcpy((v22 + 16), (v0 + 96), 0x50uLL);
      *(v21 + 192) = 0;
      *(v21 + 16) = v19;
      v23 = *(v0 + 192);
      *(v21 + 24) = *(v0 + 176);
      *(v21 + 40) = v23;
      *(v21 + 56) = *(v0 + 208);
      *(v21 + 72) = *(v0 + 224);
      *(v21 + 80) = v56;
      *(v21 + 88) = v55;
      *(v21 + 96) = v12;
      *(v21 + 144) = v18;
      outlined init with take of SPHConversation((v0 + 400), v21 + 152);
      outlined destroy of BurstNotificationSearchManager(v0 + 16);
      *(v0 + 496) = v21;
      v24 = (*(*v6 + 168))(v56, v55, v12);
      v26 = v25;
      OUTLINED_FUNCTION_50();
      v27 = swift_allocObject();
      *(v27 + 16) = v24;
      *(v27 + 24) = v26;
      lazy protocol witness table accessor for type AnnounceVoicemailFlow and conformance AnnounceVoicemailFlow(&lazy protocol witness table cache variable for type AnnounceVoicemailReadingFlow and conformance AnnounceVoicemailReadingFlow, 255, type metadata accessor for AnnounceVoicemailReadingFlow);
      static ExecuteResponse.ongoing<A>(next:childCompletion:)();
      outlined consume of AnnounceVoicemailFlow.State(v1, 0);

LABEL_10:

      break;
  }

  v48 = *(v0 + 544);
  v49 = *(v0 + 520);

  OUTLINED_FUNCTION_11();

  return v50();
}

uint64_t (*AnnounceVoicemailFlow.readingFlowCompleted(previousHintHistory:)(uint64_t a1, uint64_t a2, double a3))(uint64_t a1)
{
  v7 = swift_allocObject();
  *(v7 + 16) = v3;
  *(v7 + 24) = a1;
  *(v7 + 32) = a2;
  *(v7 + 40) = a3;

  return partial apply for closure #1 in AnnounceVoicemailFlow.readingFlowCompleted(previousHintHistory:);
}

void AnnounceVoicemailFlow.readingFlowCompleted(previousHintHistory:readingState:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v19 = AnnounceVoicemailHintHistory.makeUpdatedHistoryAfterAnnouncement(announcementCount:didReadHint:)(*a3, *(a3 + 48));
  count = v19.count;
  hintCount = v19.hintCount;
  lastHintTimestamp = v19.lastHintTimestamp;
  v9 = *(v4 + 56);
  v10 = *(v4 + 64);
  __swift_project_boxed_opaque_existential_1((v4 + 32), v9);
  v18[0] = count;
  v18[1] = hintCount;
  *&v18[2] = lastHintTimestamp;
  v11 = *(v10 + 16);
  v12 = lazy protocol witness table accessor for type AnnounceVoicemailHintHistory and conformance AnnounceVoicemailHintHistory();
  v11(0, v18, &type metadata for AnnounceVoicemailHintHistory, v12, v9, v10);
  v13 = specialized BidirectionalCollection.last.getter(*(a3 + 8), specialized Array._checkSubscript(_:wasNativeTypeChecked:));
  if (v13)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (v13)
  {
    v15 = 1;
  }

  else
  {
    v15 = 3;
  }

  swift_beginAccess();
  v16 = *(v4 + 16);
  *(v4 + 16) = v14;
  v17 = *(v4 + 24);
  *(v4 + 24) = v15;
  outlined consume of AnnounceVoicemailFlow.State(v16, v17);
}

double specialized BidirectionalCollection.last.getter@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    outlined init with copy of TransformationResult(a1 + 88 * v2 - 56, a2);
  }

  else
  {
    *(a2 + 80) = 0;
    result = 0.0;
    *(a2 + 48) = 0u;
    *(a2 + 64) = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *a2 = 0u;
  }

  return result;
}

uint64_t specialized BidirectionalCollection.last.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v5 = v3 - 1;
    v6 = type metadata accessor for TerminalElement();
    OUTLINED_FUNCTION_40(v6);
    (*(v7 + 16))(a2, a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v5, v6);
    v8 = OUTLINED_FUNCTION_11_16();
  }

  else
  {
    type metadata accessor for TerminalElement();
    v8 = OUTLINED_FUNCTION_11_6();
  }

  return __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
}

{
  v3 = *(a1 + 16);
  if (v3)
  {
    v5 = v3 - 1;
    v6 = *(type metadata accessor for DisambiguationItemWithDirectInvocationModel(0) - 8);
    outlined init with copy of DisambiguationItemWithDirectInvocationModel(a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v5, a2);
    v7 = OUTLINED_FUNCTION_11_16();
  }

  else
  {
    type metadata accessor for DisambiguationItemWithDirectInvocationModel(0);
    v7 = OUTLINED_FUNCTION_11_6();
  }

  return __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
}

char *specialized BidirectionalCollection.last.getter(unint64_t a1, void (*a2)(char *, BOOL, unint64_t))
{
  if (!(a1 >> 62))
  {
    result = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
    if (!result)
    {
      return result;
    }

LABEL_3:
    v5 = result - 1;
    if (__OFSUB__(result, 1))
    {
      __break(1u);
    }

    else
    {
      a2(result - 1, (a1 & 0xC000000000000001) == 0, a1);
      if ((a1 & 0xC000000000000001) == 0)
      {
        return *(a1 + 8 * v5 + 32);
      }
    }

    return specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (result)
  {
    goto LABEL_3;
  }

  return result;
}

uint64_t specialized BidirectionalCollection.last.getter(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = (a1 + 32 * v1);
  v3 = *v2;
  v4 = v2[1];
  v5 = v2[2];
  v6 = v2[3];

  return v3;
}

uint64_t specialized BidirectionalCollection.last.getter(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    result = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
    if (!result)
    {
      return result;
    }

LABEL_3:
    v3 = result - 1;
    if (__OFSUB__(result, 1))
    {
      __break(1u);
    }

    else
    {
      specialized Array._checkSubscript(_:wasNativeTypeChecked:)(result - 1, (a1 & 0xC000000000000001) == 0, a1);
      if ((a1 & 0xC000000000000001) == 0)
      {
        v4 = *(a1 + 8 * v3 + 32);
      }
    }

    return specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (result)
  {
    goto LABEL_3;
  }

  return result;
}

void AnnounceVoicemailFlow.offerSilentPromptCompleted(lastVoicemail:response:)()
{
  OUTLINED_FUNCTION_66();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow12PromptResultOy09PhoneCallC14DelegatePlugin017AnnounceVoicemaild8ForValueC8StrategyC0K20AnnouncementResponseOGMd, &_s11SiriKitFlow12PromptResultOy09PhoneCallC14DelegatePlugin017AnnounceVoicemaild8ForValueC8StrategyC0K20AnnouncementResponseOGMR);
  OUTLINED_FUNCTION_9_1();
  v8 = v7;
  v10 = *(v9 + 64);
  v12 = __chkstk_darwin(v11);
  v14 = &v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v63 - v15;
  v17 = *(v8 + 16);
  v17(&v63 - v15, v3, v6);
  if ((*(v8 + 88))(v16, v6) != enum case for PromptResult.answered<A>(_:))
  {
    OUTLINED_FUNCTION_16_18();
    v35 = *(v1 + 16);
    *(v1 + 16) = 0;
    v36 = *(v1 + 24);
    v37 = 3;
    goto LABEL_5;
  }

  v17(v14, v16, v6);
  (*(v8 + 96))(v14, v6);
  if (*v14)
  {
    v18 = *(v1 + 104);
    __swift_project_boxed_opaque_existential_1((v1 + 72), *(v1 + 96));
    v19 = *(v18 + 16);
    v20 = OUTLINED_FUNCTION_3_13();
    v21(v20);
    v22 = v77[3];
    v23 = v77[5];
    __swift_project_boxed_opaque_existential_1(v77, v77[3]);
    v71 = v22;
    v72 = v23;
    __swift_allocate_boxed_opaque_existential_1(v70);
    OUTLINED_FUNCTION_40(v22);
    (*(v24 + 16))();
    v25 = [v5 identifier];
    v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v28 = v27;

    OUTLINED_FUNCTION_50();
    v29 = swift_allocObject();
    *(v29 + 16) = v26;
    *(v29 + 24) = v28;
    OUTLINED_FUNCTION_50();
    v30 = swift_allocObject();
    *(v30 + 16) = &async function pointer to partial apply for closure #1 in AnnounceVoicemailFlow.makePlayVoicemailOutput(identifier:);
    *(v30 + 24) = v29;
    v31 = type metadata accessor for SimpleOutputFlowAsync();
    v32 = *(v31 + 48);
    v33 = *(v31 + 52);
    swift_allocObject();
    v34 = SimpleOutputFlowAsync.init(outputPublisher:outputGenerator:)();
    __swift_destroy_boxed_opaque_existential_1(v77);
    v77[0] = v34;
    Flow.eraseToAnyFlow()();

    OUTLINED_FUNCTION_16_18();
    v35 = OUTLINED_FUNCTION_13_13();
LABEL_5:
    *(v1 + 24) = v37;
    outlined consume of AnnounceVoicemailFlow.State(v35, v36);
    goto LABEL_24;
  }

  if (one-time initialization token for instance != -1)
  {
    swift_once();
  }

  memcpy(v77, &static PhoneCallFeatureFlags.instance, 0xC0uLL);
  v74 = &type metadata for PhoneCallFeatureFlags;
  v75 = &protocol witness table for PhoneCallFeatureFlags;
  *&v73 = swift_allocObject();
  memcpy((v73 + 16), &static PhoneCallFeatureFlags.instance, 0xC0uLL);
  outlined init with take of SPHConversation(&v73, v76);
  outlined init with copy of PhoneCallFeatureFlags(v77, v70);
  __swift_destroy_boxed_opaque_existential_1(v76);
  v38 = *(v1 + 104);
  __swift_project_boxed_opaque_existential_1((v1 + 72), *(v1 + 96));
  v39 = *(v38 + 8);
  v40 = OUTLINED_FUNCTION_3_13();
  v41(v40);
  __swift_project_boxed_opaque_existential_1(v70, v71);
  OUTLINED_FUNCTION_3_13();
  v42 = dispatch thunk of DeviceState.isMac.getter();
  v65 = v16;
  if (v42)
  {
    if (one-time initialization token for siriFaceTimeMacExtension != -1)
    {
      swift_once();
    }

    v43 = &static DefaultPhoneApps.siriFaceTimeMacExtension;
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(v70, v71);
    OUTLINED_FUNCTION_3_13();
    if (dispatch thunk of DeviceState.isWatch.getter())
    {
      if (one-time initialization token for siriPhoneWatchExtension != -1)
      {
        swift_once();
      }

      v43 = &static DefaultPhoneApps.siriPhoneWatchExtension;
    }

    else
    {
      __swift_project_boxed_opaque_existential_1(v70, v71);
      OUTLINED_FUNCTION_3_13();
      if (dispatch thunk of DeviceState.isXRDevice.getter())
      {
        if (one-time initialization token for siriPhoneFaceTimeExtension != -1)
        {
          swift_once();
        }

        v43 = &static DefaultPhoneApps.siriPhoneFaceTimeExtension;
      }

      else
      {
        if (one-time initialization token for siriPhoneExtension != -1)
        {
          swift_once();
        }

        v43 = &static DefaultPhoneApps.siriPhoneExtension;
      }
    }
  }

  v44 = v43[5];
  v69 = v43[3];
  v45 = *v43;
  v46 = v43[1];
  v67 = v44;
  v68 = v46;
  v64 = v45;

  __swift_destroy_boxed_opaque_existential_1(v70);
  v47 = objc_allocWithZone(INCallRecordFilter);
  v48 = @nonobjc INCallRecordFilter.init(participants:callTypes:callCapability:preferredCallProvider:)(0, 0, 0, 0);
  v49 = _INCallAudioRouteHeySiriAudioRoute;
  v50 = objc_allocWithZone(INStartCallIntent);
  v66 = v48;
  v51 = v5;
  v52 = @nonobjc INStartCallIntent.init(callRecordFilter:callRecordToCallBack:audioRoute:destinationType:preferredCallProvider:contacts:ttyType:callCapability:)(v48, v5, v49, 5, 1, 0, 0, 1);
  v53 = *(v1 + 96);
  v54 = *(v1 + 104);
  __swift_project_boxed_opaque_existential_1((v1 + 72), v53);
  (*(v54 + 104))(v70, v53, v54);
  v55 = v71;
  v63 = v72;
  __swift_project_boxed_opaque_existential_1(v70, v71);
  v56 = type metadata accessor for StartCallRCHFlowDelegate();
  _s27PhoneCallFlowDelegatePlugin22SharedGlobalsProviding_pWOcTm_0(v1 + 72, &v73);
  v57 = StartCallRCHFlowDelegate.__allocating_init(sharedGlobals:appResolved:)(&v73, 0);
  v58 = lazy protocol witness table accessor for type AnnounceVoicemailFlow and conformance AnnounceVoicemailFlow(&lazy protocol witness table cache variable for type StartCallRCHFlowDelegate and conformance BaseRCHFlowDelegate<A, B>, 255, type metadata accessor for StartCallRCHFlowDelegate);
  v59 = SiriKitFlowFactoryProtocol.makeDelegateBasedRCHFlow<A>(delegate:app:intent:)(v57, v64, v52, v55, v56, v63, v58);

  __swift_destroy_boxed_opaque_existential_1(v70);
  v70[0] = v59;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow08AnyValueC0CyAA13RCHFlowResultOySo17INStartCallIntentCSo0hiJ8ResponseCGGMd, &_s11SiriKitFlow08AnyValueC0CyAA13RCHFlowResultOySo17INStartCallIntentCSo0hiJ8ResponseCGGMR);
  lazy protocol witness table accessor for type TerminalOntologyNode<VoiceMail.VoiceMailNoun> and conformance TerminalOntologyNode<A>(&lazy protocol witness table cache variable for type AnyValueFlow<RCHFlowResult<INStartCallIntent, INStartCallIntentResponse>> and conformance AnyValueFlow<A>, &_s11SiriKitFlow08AnyValueC0CyAA13RCHFlowResultOySo17INStartCallIntentCSo0hiJ8ResponseCGGMd, &_s11SiriKitFlow08AnyValueC0CyAA13RCHFlowResultOySo17INStartCallIntentCSo0hiJ8ResponseCGGMR);
  Flow.eraseToAnyFlow()();

  swift_beginAccess();
  v60 = OUTLINED_FUNCTION_13_13();
  *(v1 + 24) = v61;
  outlined consume of AnnounceVoicemailFlow.State(v60, v62);
  v16 = v65;
LABEL_24:
  (*(v8 + 8))(v16, v6);
  OUTLINED_FUNCTION_65();
}

uint64_t closure #1 in AnnounceVoicemailFlow.makePlayVoicemailOutput(identifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return _swift_task_switch(closure #1 in AnnounceVoicemailFlow.makePlayVoicemailOutput(identifier:), 0, 0);
}

uint64_t closure #1 in AnnounceVoicemailFlow.makePlayVoicemailOutput(identifier:)()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INPlayVoicemailIntent, INPlayVoicemailIntent_ptr);
  v4 = static INPlayVoicemailIntent.makeFirstPartyHandleIntent(identifier:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_426260;
  *(v5 + 32) = v4;
  v3[3] = type metadata accessor for AceOutput();
  v3[4] = &protocol witness table for AceOutput;
  __swift_allocate_boxed_opaque_existential_1(v3);
  AceOutput.init(commands:flowActivity:)();
  OUTLINED_FUNCTION_11();

  return v6();
}

uint64_t AnnounceVoicemailFlow.deinit()
{
  outlined consume of AnnounceVoicemailFlow.State(*(v0 + 16), *(v0 + 24));
  __swift_destroy_boxed_opaque_existential_1((v0 + 32));
  __swift_destroy_boxed_opaque_existential_1((v0 + 72));
  __swift_destroy_boxed_opaque_existential_1((v0 + 112));
  return v0;
}

uint64_t AnnounceVoicemailFlow.__deallocating_deinit()
{
  AnnounceVoicemailFlow.deinit();

  return swift_deallocClassInstance();
}

uint64_t protocol witness for Flow.execute() in conformance AnnounceVoicemailFlow(uint64_t a1)
{
  v4 = *(**v1 + 160);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = closure #2 in ActionableCallControlFlow.execute();

  return v8(a1);
}

uint64_t protocol witness for Flow.exitValue.getter in conformance AnnounceVoicemailFlow(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for AnnounceVoicemailFlow();

  return Flow<>.exitValue.getter(v3, a2);
}

id @nonobjc INCallRecordFilter.init(participants:callTypes:callCapability:preferredCallProvider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (a1)
  {
    type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INPerson, INPerson_ptr);
    v9.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v9.super.isa = 0;
  }

  v10 = [v5 initWithParticipants:v9.super.isa callTypes:a2 callCapability:a3 preferredCallProvider:a4];

  return v10;
}

uint64_t specialized AnnounceVoicemailFlow.__allocating_init(directAction:sharedGlobals:eventStore:contactStore:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v24[3] = a6;
  v24[4] = a8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v24);
  (*(*(a6 - 8) + 32))(boxed_opaque_existential_1, a3, a6);
  v23[3] = a7;
  v23[4] = a9;
  v17 = __swift_allocate_boxed_opaque_existential_1(v23);
  (*(*(a7 - 8) + 32))(v17, a4, a7);
  _s27PhoneCallFlowDelegatePlugin22SharedGlobalsProviding_pWOcTm_0(v24, v22);
  _s27PhoneCallFlowDelegatePlugin22SharedGlobalsProviding_pWOcTm_0(a2, v21);
  _s27PhoneCallFlowDelegatePlugin22SharedGlobalsProviding_pWOcTm_0(v23, v20);
  v18 = (*(a5 + 136))(a1, 0, v22, v21, v20);
  __swift_destroy_boxed_opaque_existential_1(a2);
  __swift_destroy_boxed_opaque_existential_1(v23);
  __swift_destroy_boxed_opaque_existential_1(v24);
  return v18;
}

uint64_t specialized AnnounceVoicemailFlow.init(state:eventStore:sharedGlobals:contactStore:)(uint64_t a1, char a2, uint64_t a3, __int128 *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  *(a6 + 56) = a7;
  *(a6 + 64) = a9;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((a6 + 32));
  (*(*(a7 - 8) + 32))(boxed_opaque_existential_1, a3, a7);
  *(a6 + 136) = a8;
  *(a6 + 144) = a10;
  v19 = __swift_allocate_boxed_opaque_existential_1((a6 + 112));
  (*(*(a8 - 8) + 32))(v19, a5, a8);
  *(a6 + 16) = a1;
  *(a6 + 24) = a2;
  outlined init with take of SPHConversation(a4, a6 + 72);
  return a6;
}

void outlined consume of AnnounceVoicemailFlow.State(void *a1, char a2)
{
  if (a2 == 2)
  {
LABEL_4:

    return;
  }

  if (a2 != 1)
  {
    if (a2)
    {
      return;
    }

    goto LABEL_4;
  }
}

void partial apply for closure #1 in AnnounceVoicemailFlow.offerSilentPromptCompleted(lastVoicemail:)()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 16);
  AnnounceVoicemailFlow.offerSilentPromptCompleted(lastVoicemail:response:)();
}

unint64_t lazy protocol witness table accessor for type AnnounceVoicemailHintHistory and conformance AnnounceVoicemailHintHistory()
{
  result = lazy protocol witness table cache variable for type AnnounceVoicemailHintHistory and conformance AnnounceVoicemailHintHistory;
  if (!lazy protocol witness table cache variable for type AnnounceVoicemailHintHistory and conformance AnnounceVoicemailHintHistory)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnnounceVoicemailHintHistory and conformance AnnounceVoicemailHintHistory);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnnounceVoicemailHintHistory and conformance AnnounceVoicemailHintHistory;
  if (!lazy protocol witness table cache variable for type AnnounceVoicemailHintHistory and conformance AnnounceVoicemailHintHistory)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnnounceVoicemailHintHistory and conformance AnnounceVoicemailHintHistory);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnnounceVoicemailHintHistory and conformance AnnounceVoicemailHintHistory;
  if (!lazy protocol witness table cache variable for type AnnounceVoicemailHintHistory and conformance AnnounceVoicemailHintHistory)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnnounceVoicemailHintHistory and conformance AnnounceVoicemailHintHistory);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnnounceVoicemailHintHistory and conformance AnnounceVoicemailHintHistory;
  if (!lazy protocol witness table cache variable for type AnnounceVoicemailHintHistory and conformance AnnounceVoicemailHintHistory)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnnounceVoicemailHintHistory and conformance AnnounceVoicemailHintHistory);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnnounceVoicemailHintHistory and conformance AnnounceVoicemailHintHistory;
  if (!lazy protocol witness table cache variable for type AnnounceVoicemailHintHistory and conformance AnnounceVoicemailHintHistory)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnnounceVoicemailHintHistory and conformance AnnounceVoicemailHintHistory);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnnounceVoicemailHintHistory and conformance AnnounceVoicemailHintHistory;
  if (!lazy protocol witness table cache variable for type AnnounceVoicemailHintHistory and conformance AnnounceVoicemailHintHistory)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnnounceVoicemailHintHistory and conformance AnnounceVoicemailHintHistory);
  }

  return result;
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@guaranteed AnnounceVoicemailReadingState) -> ()(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(a1 + 16);
  v6[0] = *a1;
  v6[1] = v4;
  v6[2] = *(a1 + 32);
  v7 = *(a1 + 48);
  return v2(v6);
}

uint64_t get_enum_tag_for_layout_string_27PhoneCallFlowDelegatePlugin017AnnounceVoicemailC0C5StateO(uint64_t a1)
{
  if ((*(a1 + 8) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for AnnounceVoicemailFlow.State(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFD && *(a1 + 9))
    {
      v2 = *a1 + 252;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 3)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for AnnounceVoicemailFlow.State(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t destructiveInjectEnumTag for AnnounceVoicemailFlow.State(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t outlined init with copy of DisambiguationItemWithDirectInvocationModel(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DisambiguationItemWithDirectInvocationModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #1 in AnnounceVoicemailFlow.makePlayVoicemailOutput(identifier:)()
{
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = closure #2 in ActionableCallControlFlow.execute();
  v5 = OUTLINED_FUNCTION_12_16();

  return closure #1 in AnnounceVoicemailFlow.makePlayVoicemailOutput(identifier:)(v5, v6, v7);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed @async () -> (@out Output)()
{
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = closure #2 in ActionableCallControlFlow.execute();
  v5 = OUTLINED_FUNCTION_12_16();

  return v6(v5);
}

uint64_t lazy protocol witness table accessor for type AnnounceVoicemailFlow and conformance AnnounceVoicemailFlow(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

PhoneCallFlowDelegatePlugin::AnnounceVoicemailHintHistory __swiftcall AnnounceVoicemailHintHistory.init()()
{
  v0 = type metadata accessor for Date();
  v1 = OUTLINED_FUNCTION_7(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  __chkstk_darwin(v1);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Date.distantFuture.getter();
  Date.timeIntervalSince1970.getter();
  v9 = v8;
  (*(v3 + 8))(v7, v0);
  v10 = 0;
  v11 = 0;
  v12 = v9;
  result.lastHintTimestamp = v12;
  result.hintCount = v11;
  result.count = v10;
  return result;
}

PhoneCallFlowDelegatePlugin::AnnounceVoicemailHintHistory __swiftcall AnnounceVoicemailHintHistory.makeUpdatedHistoryAfterAnnouncement(announcementCount:didReadHint:)(Swift::Int announcementCount, Swift::Bool didReadHint)
{
  v5 = v4;
  v6 = v3;
  v7 = v2;
  v10 = type metadata accessor for Date();
  v11 = OUTLINED_FUNCTION_7(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v11);
  v20 = &v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __OFADD__(v7, announcementCount);
  v22 = v7 + announcementCount;
  if (v21)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (didReadHint)
  {
    v21 = __OFADD__(v6++, 1);
    if (!v21)
    {
      Date.init()();
      Date.timeIntervalSince1970.getter();
      v5 = v23;
      (*(v13 + 8))(v20, v10);
      goto LABEL_5;
    }

LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

LABEL_5:
  v16 = v22;
  v17 = v6;
  v18 = v5;
LABEL_8:
  result.lastHintTimestamp = v18;
  result.hintCount = v17;
  result.count = v16;
  return result;
}

double AnnounceVoicemailHintHistory.init(count:hintCount:lastHintDate:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Date.timeIntervalSince1970.getter();
  v5 = v4;
  v6 = type metadata accessor for Date();
  (*(*(v6 - 8) + 8))(a3, v6);
  return v5;
}

uint64_t AnnounceVoicemailHintHistory.daysSinceLastHint.getter()
{
  v0 = type metadata accessor for Date();
  v1 = OUTLINED_FUNCTION_7(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v1);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v17 - v9;
  Date.init(timeIntervalSince1970:)();
  Date.init()();
  Date.distance(to:)();
  v12 = v11;
  v13 = *(v3 + 8);
  v13(v8, v0);
  result = (v13)(v10, v0);
  v15 = v12 / 86400.0;
  v16 = COERCE__INT64(fabs(v12 / 86400.0)) > 0x7FEFFFFFFFFFFFFFLL;
  if (v12 / 86400.0 >= 0.0)
  {
    if (v16)
    {
      __break(1u);
      goto LABEL_8;
    }
  }

  else
  {
    v15 = 0.0;
  }

  if (v15 <= -9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v15 < 9.22337204e18)
  {
    return v15;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t AnnounceVoicemailHintHistory.description.getter()
{
  _StringGuts.grow(_:)(50);
  v0._countAndFlagsBits = 0x3A746E756F630A7BLL;
  v0._object = 0xE900000000000020;
  String.append(_:)(v0);
  v1._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v1);

  v2._countAndFlagsBits = 0x6F43746E69680A2CLL;
  v2._object = 0xED0000203A746E75;
  String.append(_:)(v2);
  v3._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v3);

  v4._object = 0x8000000000457DD0;
  v4._countAndFlagsBits = 0xD000000000000014;
  String.append(_:)(v4);
  Double.write<A>(to:)();
  v5._countAndFlagsBits = 32010;
  v5._object = 0xE200000000000000;
  String.append(_:)(v5);
  return 0;
}

uint64_t AnnounceVoicemailHintHistory.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746E756F63 && a2 == 0xE500000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6E756F43746E6968 && a2 == 0xE900000000000074;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD000000000000011 && 0x8000000000457DF0 == a2)
    {

      return 2;
    }

    else
    {
      v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t AnnounceVoicemailHintHistory.CodingKeys.stringValue.getter(char a1)
{
  if (!a1)
  {
    return 0x746E756F63;
  }

  if (a1 == 1)
  {
    return 0x6E756F43746E6968;
  }

  return 0xD000000000000011;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AnnounceVoicemailHintHistory.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance AnnounceVoicemailHintHistory.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = AnnounceVoicemailHintHistory.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

PhoneCallFlowDelegatePlugin::PhoneCallProvider::CodingKeys_optional protocol witness for CodingKey.init(intValue:) in conformance AnnounceVoicemailHintHistory.CodingKeys@<W0>(Swift::Int a1@<X0>, PhoneCallFlowDelegatePlugin::PhoneCallProvider::CodingKeys_optional *a2@<X8>)
{
  result.value = PhoneCallProvider.CodingKeys.init(intValue:)(a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AnnounceVoicemailHintHistory.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AnnounceVoicemailHintHistory.CodingKeys and conformance AnnounceVoicemailHintHistory.CodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AnnounceVoicemailHintHistory.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AnnounceVoicemailHintHistory.CodingKeys and conformance AnnounceVoicemailHintHistory.CodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t AnnounceVoicemailHintHistory.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy27PhoneCallFlowDelegatePlugin28AnnounceVoicemailHintHistoryV10CodingKeys33_D7326AF1DD9EA6DA1D16F20632853D37LLOGMd, &_ss22KeyedEncodingContainerVy27PhoneCallFlowDelegatePlugin28AnnounceVoicemailHintHistoryV10CodingKeys33_D7326AF1DD9EA6DA1D16F20632853D37LLOGMR);
  v4 = OUTLINED_FUNCTION_7(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  __chkstk_darwin(v4);
  v10 = &v13[-v9];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type AnnounceVoicemailHintHistory.CodingKeys and conformance AnnounceVoicemailHintHistory.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v13[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v1)
  {
    v13[14] = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v13[13] = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v6 + 8))(v10, v3);
}

unint64_t lazy protocol witness table accessor for type AnnounceVoicemailHintHistory.CodingKeys and conformance AnnounceVoicemailHintHistory.CodingKeys()
{
  result = lazy protocol witness table cache variable for type AnnounceVoicemailHintHistory.CodingKeys and conformance AnnounceVoicemailHintHistory.CodingKeys;
  if (!lazy protocol witness table cache variable for type AnnounceVoicemailHintHistory.CodingKeys and conformance AnnounceVoicemailHintHistory.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnnounceVoicemailHintHistory.CodingKeys and conformance AnnounceVoicemailHintHistory.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnnounceVoicemailHintHistory.CodingKeys and conformance AnnounceVoicemailHintHistory.CodingKeys;
  if (!lazy protocol witness table cache variable for type AnnounceVoicemailHintHistory.CodingKeys and conformance AnnounceVoicemailHintHistory.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnnounceVoicemailHintHistory.CodingKeys and conformance AnnounceVoicemailHintHistory.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnnounceVoicemailHintHistory.CodingKeys and conformance AnnounceVoicemailHintHistory.CodingKeys;
  if (!lazy protocol witness table cache variable for type AnnounceVoicemailHintHistory.CodingKeys and conformance AnnounceVoicemailHintHistory.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnnounceVoicemailHintHistory.CodingKeys and conformance AnnounceVoicemailHintHistory.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnnounceVoicemailHintHistory.CodingKeys and conformance AnnounceVoicemailHintHistory.CodingKeys;
  if (!lazy protocol witness table cache variable for type AnnounceVoicemailHintHistory.CodingKeys and conformance AnnounceVoicemailHintHistory.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnnounceVoicemailHintHistory.CodingKeys and conformance AnnounceVoicemailHintHistory.CodingKeys);
  }

  return result;
}

double AnnounceVoicemailHintHistory.init(from:)(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy27PhoneCallFlowDelegatePlugin28AnnounceVoicemailHintHistoryV10CodingKeys33_D7326AF1DD9EA6DA1D16F20632853D37LLOGMd, &_ss22KeyedDecodingContainerVy27PhoneCallFlowDelegatePlugin28AnnounceVoicemailHintHistoryV10CodingKeys33_D7326AF1DD9EA6DA1D16F20632853D37LLOGMR);
  v3 = OUTLINED_FUNCTION_7(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v3);
  v9 = &v14 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type AnnounceVoicemailHintHistory.CodingKeys and conformance AnnounceVoicemailHintHistory.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  v17 = 0;
  OUTLINED_FUNCTION_1_30();
  KeyedDecodingContainer.decode(_:forKey:)();
  v16 = 1;
  OUTLINED_FUNCTION_1_30();
  KeyedDecodingContainer.decode(_:forKey:)();
  v15 = 2;
  OUTLINED_FUNCTION_1_30();
  KeyedDecodingContainer.decode(_:forKey:)();
  v13 = v12;
  (*(v5 + 8))(v9, v2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v13;
}

Swift::Int protocol witness for SiriPhoneDefaultsCodable.init() in conformance AnnounceVoicemailHintHistory@<X0>(uint64_t a1@<X8>)
{
  v3 = AnnounceVoicemailHintHistory.init()();
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = v3.lastHintTimestamp;
  return v3.count;
}

unint64_t instantiation function for generic protocol witness table for AnnounceVoicemailHintHistory(void *a1)
{
  a1[1] = lazy protocol witness table accessor for type AnnounceVoicemailHintHistory and conformance AnnounceVoicemailHintHistory();
  a1[2] = lazy protocol witness table accessor for type AnnounceVoicemailHintHistory and conformance AnnounceVoicemailHintHistory();
  result = lazy protocol witness table accessor for type AnnounceVoicemailHintHistory and conformance AnnounceVoicemailHintHistory();
  a1[3] = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for AnnounceVoicemailHintHistory(uint64_t a1)
{
  *(a1 + 8) = lazy protocol witness table accessor for type AnnounceVoicemailHintHistory and conformance AnnounceVoicemailHintHistory();
  result = lazy protocol witness table accessor for type AnnounceVoicemailHintHistory and conformance AnnounceVoicemailHintHistory();
  *(a1 + 16) = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AnnounceVoicemailHintHistory()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  return AnnounceVoicemailHintHistory.description.getter();
}

void protocol witness for Decodable.init(from:) in conformance AnnounceVoicemailHintHistory(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v6 = AnnounceVoicemailHintHistory.init(from:)(a1);
  if (!v2)
  {
    *a2 = v4;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
  }
}

uint64_t protocol witness for Encodable.encode(to:) in conformance AnnounceVoicemailHintHistory(void *a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  return AnnounceVoicemailHintHistory.encode(to:)(a1);
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for AnnounceVoicemailHintHistory(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for AnnounceVoicemailHintHistory(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 24) = v3;
  return result;
}

_BYTE *storeEnumTagSinglePayload for AnnounceVoicemailHintHistory.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t AnnounceVoicemailPromptForValueFlowStrategy.__allocating_init(sharedGlobals:)(__int128 *a1)
{
  v2 = swift_allocObject();
  outlined init with take of SPHConversation(a1, v2 + 16);
  return v2;
}

Swift::Int AppAndDeviceRestriction.AppCategory.hashValue.getter(char a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1 & 1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AnnounceVoicemailPromptForValueFlowStrategy.VoicemailAnnouncementResponse()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  AppAndDeviceRestriction.AppCategory.hash(into:)(v3, v1);
  return Hasher._finalize()();
}

uint64_t AnnounceVoicemailPromptForValueFlowStrategy.actionForInput(_:)()
{
  if (AnnounceVoicemailPromptForValueFlowStrategy.parseInput(input:)() == 2)
  {

    return static ActionForInput.ignore()();
  }

  else
  {

    return static ActionForInput.handle()();
  }
}

uint64_t AnnounceVoicemailPromptForValueFlowStrategy.parseValueResponse(input:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t AnnounceVoicemailPromptForValueFlowStrategy.parseValueResponse(input:)()
{
  OUTLINED_FUNCTION_15();
  v1 = v0[2];
  v2 = v0[3];
  v3 = AnnounceVoicemailPromptForValueFlowStrategy.parseInput(input:)();
  v4 = v0[1];

  return v4(v3);
}

uint64_t AnnounceVoicemailPromptForValueFlowStrategy.parseInput(input:)()
{
  v1 = type metadata accessor for Parse();
  v2 = OUTLINED_FUNCTION_7(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  __chkstk_darwin(v2);
  OUTLINED_FUNCTION_4();
  v9 = v8 - v7;
  v10 = v0[5];
  v11 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v10);
  v12 = (*(v11 + 72))(v10, v11);
  Input.parse.getter();
  (*(*v12 + 192))(&v44, v9);
  (*(v4 + 8))(v9, v1);
  if (!v45)
  {

    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(&v44, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMR);
    return 2;
  }

  outlined init with take of SPHConversation(&v44, v46);
  v13 = v47;
  v14 = v48;
  __swift_project_boxed_opaque_existential_1(v46, v47);
  v15 = (*(v14 + 104))(v13, v14);
  if (v15 != 17)
  {
    if (PhoneCallVerb.rawValue.getter(v15) == 0x636162206C6C6163 && v20 == 0xE90000000000006BLL)
    {

      goto LABEL_15;
    }

    v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v22)
    {
      goto LABEL_15;
    }
  }

  __swift_project_boxed_opaque_existential_1(v46, v47);
  if (PhoneCallNLIntent.isAnyCallToReference()())
  {
LABEL_15:
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_0_6();
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    __swift_project_value_buffer(v23, static Logger.siriPhone);

    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v24, v25))
    {
      OUTLINED_FUNCTION_13_14();
      v26 = swift_slowAlloc();
      OUTLINED_FUNCTION_12_17();
      v27 = swift_slowAlloc();
      *&v44 = v27;
      *v26 = 136315138;
      type metadata accessor for AnnounceVoicemailPromptForValueFlowStrategy();
      OUTLINED_FUNCTION_11_17();

      v28 = String.init<A>(describing:)();
      getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v29, &v44);
      OUTLINED_FUNCTION_11_17();

      *(v26 + 4) = v11;
      OUTLINED_FUNCTION_15_7(&dword_0, v30, v31, "#%s User asked to call back");
      __swift_destroy_boxed_opaque_existential_1(v27);
      OUTLINED_FUNCTION_8();

      OUTLINED_FUNCTION_8();
    }

    __swift_destroy_boxed_opaque_existential_1(v46);
    return 0;
  }

  v16 = v47;
  v17 = v48;
  __swift_project_boxed_opaque_existential_1(v46, v47);
  v18 = (*(v17 + 112))(v16, v17);
  if (v18 == 6)
  {
LABEL_5:

    __swift_destroy_boxed_opaque_existential_1(v46);
    return 2;
  }

  if (VoiceMail.VoiceMailVerb.rawValue.getter(v18) == 2036427888 && v32 == 0xE400000000000000)
  {
  }

  else
  {
    v34 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v34 & 1) == 0)
    {
      goto LABEL_5;
    }
  }

  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

  v35 = type metadata accessor for Logger();
  __swift_project_value_buffer(v35, static Logger.siriPhone);

  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v36, v37))
  {
    OUTLINED_FUNCTION_13_14();
    v38 = swift_slowAlloc();
    OUTLINED_FUNCTION_12_17();
    v39 = swift_slowAlloc();
    *&v44 = v39;
    *v38 = 136315138;
    type metadata accessor for AnnounceVoicemailPromptForValueFlowStrategy();
    OUTLINED_FUNCTION_11_17();

    v40 = String.init<A>(describing:)();
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v40, v41, &v44);
    OUTLINED_FUNCTION_11_17();

    *(v38 + 4) = v11;
    OUTLINED_FUNCTION_15_7(&dword_0, v42, v43, "#%s User asked to play the voicemail");
    __swift_destroy_boxed_opaque_existential_1(v39);
    OUTLINED_FUNCTION_8();

    OUTLINED_FUNCTION_8();
  }

  __swift_destroy_boxed_opaque_existential_1(v46);
  return 1;
}

uint64_t AnnounceVoicemailPromptForValueFlowStrategy.makePromptForValue()()
{
  OUTLINED_FUNCTION_15();
  v1[26] = v2;
  v1[27] = v0;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR) - 8) + 64) + 15;
  v1[28] = swift_task_alloc();
  v4 = type metadata accessor for NLContextUpdate();
  v1[29] = v4;
  v5 = *(v4 - 8);
  v1[30] = v5;
  v6 = *(v5 + 64) + 15;
  v1[31] = swift_task_alloc();

  return _swift_task_switch(AnnounceVoicemailPromptForValueFlowStrategy.makePromptForValue(), 0, 0);
}

{
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v53 = __swift_project_value_buffer(v1, static Logger.siriPhone);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "#AnnounceVoicemail Sending output for silent prompt", v4, 2u);
    OUTLINED_FUNCTION_8();
  }

  v5 = *(v0 + 248);
  v58 = *(v0 + 216);

  NLContextUpdate.init()();
  PhoneCallNLConstants.canonicalName.getter(1);
  NLContextUpdate.weightedPromptTargetDomain.setter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_424FF0;
  *(v6 + 32) = PhoneCallNLConstants.canonicalName.getter(15);
  *(v6 + 40) = v7;
  *(v6 + 48) = PhoneCallNLConstants.canonicalName.getter(14);
  *(v6 + 56) = v8;
  NLContextUpdate.weightedPromptResponseTargets.setter();
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_426980;
  *(v0 + 56) = String.uppercased()();
  *(v0 + 72) = 32;
  *(v0 + 80) = 0xE100000000000000;
  *(v0 + 88) = 95;
  *(v0 + 96) = 0xE100000000000000;
  v10 = lazy protocol witness table accessor for type String and conformance String();
  OUTLINED_FUNCTION_2_22();

  v11 = PhoneCallNLConstants.canonicalName.getter(14);
  v64 = v12;
  OUTLINED_FUNCTION_9_16(v11, v12, v13, v14, v15, v16, v17, v18, &type metadata for String, v10, v10, v10, v50, v53, v5, v58, v11);
  v19 = String.uppercased()();
  String.append(_:)(v19);

  *(v9 + 32) = *v61;
  *(v9 + 40) = v64;
  *(v0 + 104) = String.uppercased()();
  *(v0 + 120) = 32;
  *(v0 + 128) = 0xE100000000000000;
  *(v0 + 136) = 95;
  *(v0 + 144) = 0xE100000000000000;
  OUTLINED_FUNCTION_2_22();

  v20 = PhoneCallNLConstants.canonicalName.getter(15);
  v65 = v21;
  OUTLINED_FUNCTION_9_16(v20, v21, v22, v23, v24, v25, v26, v27, &type metadata for String, v10, v10, v10, v51, v54, v56, v59, v20);
  v28 = String.uppercased()();
  String.append(_:)(v28);

  *(v9 + 48) = *v62;
  *(v9 + 56) = v65;
  *(v0 + 152) = String.uppercased()();
  *(v0 + 168) = 32;
  *(v0 + 176) = 0xE100000000000000;
  *(v0 + 184) = 95;
  *(v0 + 192) = 0xE100000000000000;
  OUTLINED_FUNCTION_2_22();

  v29 = PhoneCallNLConstants.canonicalName.getter(15);
  v66 = v30;
  OUTLINED_FUNCTION_9_16(v29, v30, v31, v32, v33, v34, v35, v36, &type metadata for String, v10, v10, v10, v52, v55, v57, v60, v29);
  v37 = String.uppercased()();
  String.append(_:)(v37);

  *(v9 + 64) = *v63;
  *(v9 + 72) = v66;
  NLContextUpdate.weightedPromptResponseOptions.setter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D29_Nlu_External_SystemDialogActVGMd, &_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D29_Nlu_External_SystemDialogActVGMR);
  v38 = *(type metadata accessor for Siri_Nlu_External_SystemDialogAct() - 8);
  v39 = *(v38 + 72);
  v40 = (*(v38 + 80) + 32) & ~*(v38 + 80);
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_424FD0;
  AnnounceVoicemailPromptForValueFlowStrategy.getSystemDialogAct()(v41 + v40);
  v43 = *(v0 + 240);
  v42 = *(v0 + 248);
  v44 = *(v0 + 224);
  v45 = *(v0 + 232);
  v46 = *(v0 + 208);
  NLContextUpdate.nluSystemDialogActs.setter();
  NLContextUpdate.submitAsSpokenNotificationContext.setter();
  NLContextUpdate.weightedPromptStrict.setter();
  (*(v43 + 16))(v44, v42, v45);
  __swift_storeEnumTagSinglePayload(v44, 0, 1, v45);
  v47 = type metadata accessor for AceOutput();
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  *(v0 + 16) = 0u;
  v46[3] = v47;
  v46[4] = &protocol witness table for AceOutput;
  __swift_allocate_boxed_opaque_existential_1(v46);
  static AceOutputHelper.makeAceOutput(allAddViews:nlContextUpdate:additionalCommands:flowActivity:)();
  _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v0 + 16, &_s11SiriKitFlow0C8Activity_pSgMd, &_s11SiriKitFlow0C8Activity_pSgMR);
  _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v44, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  (*(v43 + 8))(v42, v45);

  OUTLINED_FUNCTION_11();

  return v48();
}

uint64_t AnnounceVoicemailPromptForValueFlowStrategy.makeFlowCancelledResponse()()
{
  OUTLINED_FUNCTION_15();
  v1 = type metadata accessor for PhoneError();
  *(v0 + 16) = v1;
  v2 = *(*(v1 - 8) + 64) + 15;
  *(v0 + 24) = swift_task_alloc();

  return _swift_task_switch(AnnounceVoicemailPromptForValueFlowStrategy.makeFlowCancelledResponse(), 0, 0);
}

{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  *v2 = 0;
  *(v2 + 8) = 0;
  *(v2 + 16) = 2;
  swift_storeEnumTagMultiPayload();
  lazy protocol witness table accessor for type PhoneError and conformance PhoneError();
  swift_allocError();
  PhoneError.logged()(v3);
  outlined destroy of PhoneError(v2);
  swift_willThrow();

  OUTLINED_FUNCTION_11();

  return v4();
}

uint64_t AnnounceVoicemailPromptForValueFlowStrategy.makeErrorResponse(_:)()
{
  v1 = *(v0 + 16);
  swift_willThrow();
  swift_errorRetain();
  OUTLINED_FUNCTION_11();
  v3 = *(v0 + 16);

  return v2();
}

uint64_t AnnounceVoicemailPromptForValueFlowStrategy.getSystemDialogAct()@<X0>(uint64_t a1@<X8>)
{
  v36 = a1;
  v1 = type metadata accessor for Siri_Nlu_External_SystemGaveOptions();
  v2 = OUTLINED_FUNCTION_7(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v2);
  v9 = &v33[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v11 = &v33[-v10];
  Siri_Nlu_External_SystemGaveOptions.init()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D27_Nlu_External_UserDialogActVGMd, &_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D27_Nlu_External_UserDialogActVGMR);
  v12 = *(type metadata accessor for Siri_Nlu_External_UserDialogAct() - 8);
  v13 = *(v12 + 72);
  v14 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_426980;
  v16 = v37;
  AnnounceVoicemailPromptForValueFlowStrategy.playVoicemailDialogAct()();
  if (v16)
  {
    *(v15 + 16) = 0;

    return (*(v4 + 8))(v11, v1);
  }

  else
  {
    v35 = v9;
    v37 = v1;
    AnnounceVoicemailPromptForValueFlowStrategy.callBackDialogAct()();
    AnnounceVoicemailPromptForValueFlowStrategy.callReferenceDialogAct()();
    Siri_Nlu_External_SystemGaveOptions.choices.setter();
    v18 = v11;
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_0_6();
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    __swift_project_value_buffer(v19, static Logger.siriPhone);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.debug.getter();
    v22 = v4;
    if (os_log_type_enabled(v20, v21))
    {
      OUTLINED_FUNCTION_13_14();
      v23 = swift_slowAlloc();
      OUTLINED_FUNCTION_12_17();
      v24 = swift_slowAlloc();
      v38 = v24;
      *v23 = 136315138;
      swift_beginAccess();
      v34 = v21;
      Siri_Nlu_External_SystemGaveOptions.choices.getter();
      swift_endAccess();
      v25 = v18;
      v26 = Array.description.getter();
      v28 = v27;

      v29 = v26;
      v18 = v25;
      v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v28, &v38);

      *(v23 + 4) = v30;
      _os_log_impl(&dword_0, v20, v34, "Returning NLUSystemGaveOptions: %s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v24);
      OUTLINED_FUNCTION_8();

      OUTLINED_FUNCTION_8();
    }

    v31 = v37;
    v32 = v35;
    Siri_Nlu_External_SystemDialogAct.init()();
    swift_beginAccess();
    (*(v22 + 16))(v32, v18, v31);
    Siri_Nlu_External_SystemDialogAct.gaveOptions.setter();
    return (*(v22 + 8))(v18, v31);
  }
}

uint64_t AnnounceVoicemailPromptForValueFlowStrategy.playVoicemailDialogAct()()
{
  OUTLINED_FUNCTION_6_13();
  v0 = type metadata accessor for UsoEntity_common_ReferenceType.DefinedValues();
  v1 = OUTLINED_FUNCTION_7(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  __chkstk_darwin(v1);
  OUTLINED_FUNCTION_4();
  v8 = v7 - v6;
  v9 = type metadata accessor for UsoEntityBuilder_common_ReferenceType();
  OUTLINED_FUNCTION_41_1(v9);
  UsoEntityBuilder_common_ReferenceType.init()();
  v10 = OUTLINED_FUNCTION_14_14();
  v11(v10);
  dispatch thunk of UsoEntityBuilder_common_ReferenceType.setDefinedValue(value:)();
  (*(v3 + 8))(v8, v0);
  v12 = type metadata accessor for UsoEntityBuilder_common_Voicemail();
  OUTLINED_FUNCTION_41_1(v12);
  UsoEntityBuilder_common_Voicemail.init()();

  dispatch thunk of UsoEntityBuilderGlobalArgs.setUsoReferenceType(value:)();

  v13 = type metadata accessor for UsoTaskBuilder_play_common_Voicemail();
  OUTLINED_FUNCTION_41_1(v13);
  UsoTaskBuilder_play_common_Voicemail.init()();
  dispatch thunk of Uso_VerbTemplateBuilder_Reference.setReference(value:)();
  UsoTaskBuilder.toUserStatedTaskDialogAct()();
}

uint64_t AnnounceVoicemailPromptForValueFlowStrategy.callBackDialogAct()()
{
  OUTLINED_FUNCTION_6_13();
  v0 = type metadata accessor for UsoEntityBuilder_common_PhoneCall();
  OUTLINED_FUNCTION_41_1(v0);
  UsoEntityBuilder_common_PhoneCall.init()();
  v1 = type metadata accessor for UsoTaskBuilder_callback_common_PhoneCall();
  OUTLINED_FUNCTION_41_1(v1);
  UsoTaskBuilder_callback_common_PhoneCall.init()();
  dispatch thunk of Uso_VerbTemplateBuilder_ReferenceTarget.setTarget(value:)();
  UsoTaskBuilder.toUserStatedTaskDialogAct()();
}

uint64_t AnnounceVoicemailPromptForValueFlowStrategy.callReferenceDialogAct()()
{
  OUTLINED_FUNCTION_6_13();
  v0 = type metadata accessor for UsoEntity_common_ReferenceType.DefinedValues();
  v1 = OUTLINED_FUNCTION_7(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  __chkstk_darwin(v1);
  OUTLINED_FUNCTION_4();
  v8 = v7 - v6;
  v9 = type metadata accessor for UsoEntityBuilder_common_ReferenceType();
  OUTLINED_FUNCTION_41_1(v9);
  UsoEntityBuilder_common_ReferenceType.init()();
  v10 = OUTLINED_FUNCTION_14_14();
  v11(v10);
  dispatch thunk of UsoEntityBuilder_common_ReferenceType.setDefinedValue(value:)();
  (*(v3 + 8))(v8, v0);
  v12 = type metadata accessor for UsoEntityBuilder_common_Person();
  OUTLINED_FUNCTION_41_1(v12);
  UsoEntityBuilder_common_Person.init()();

  dispatch thunk of UsoEntityBuilderGlobalArgs.setUsoReferenceType(value:)();

  v13 = type metadata accessor for UsoEntityBuilder_common_PhoneCall();
  OUTLINED_FUNCTION_41_1(v13);
  UsoEntityBuilder_common_PhoneCall.init()();

  dispatch thunk of UsoEntityBuilder_common_PhoneCall.addRecipients(value:)();

  v14 = type metadata accessor for UsoTaskBuilder_call_common_PhoneCall();
  OUTLINED_FUNCTION_41_1(v14);
  UsoTaskBuilder_call_common_PhoneCall.init()();
  v15 = *(v13 + 48);
  v16 = *(v13 + 52);
  swift_allocObject();
  UsoEntityBuilder_common_PhoneCall.init()();
  dispatch thunk of Uso_VerbTemplateBuilder_Target.setTarget(value:)();

  UsoTaskBuilder.toUserStatedTaskDialogAct()();
}

uint64_t protocol witness for PromptForValueFlowStrategyAsync.parseValueResponse(input:) in conformance AnnounceVoicemailPromptForValueFlowStrategy(uint64_t a1, uint64_t a2)
{
  *(v3 + 16) = a1;
  v5 = *(*v2 + 104);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v3 + 24) = v7;
  *v7 = v3;
  v7[1] = protocol witness for PromptForValueFlowStrategyAsync.parseValueResponse(input:) in conformance AnnounceVoicemailPromptForValueFlowStrategy;

  return v9(a2);
}

uint64_t protocol witness for PromptForValueFlowStrategyAsync.parseValueResponse(input:) in conformance AnnounceVoicemailPromptForValueFlowStrategy(char a1)
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

uint64_t protocol witness for PromptForValueFlowStrategyAsync.makePromptForValue() in conformance AnnounceVoicemailPromptForValueFlowStrategy(uint64_t a1)
{
  v4 = *(*v1 + 120);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = protocol witness for PromptForValueFlowStrategyAsync.makeRepromptOnEmptyParse() in conformance AnnounceVoicemailPromptForValueFlowStrategy;

  return v8(a1);
}

uint64_t protocol witness for PromptForValueFlowStrategyAsync.makeRepromptOnEmptyParse() in conformance AnnounceVoicemailPromptForValueFlowStrategy(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = async function pointer to PromptForValueFlowStrategyAsync.makeRepromptOnEmptyParse()[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = protocol witness for PromptForValueFlowStrategyAsync.makeRepromptOnEmptyParse() in conformance AnnounceVoicemailPromptForValueFlowStrategy;

  return PromptForValueFlowStrategyAsync.makeRepromptOnEmptyParse()(a1, a2, a3);
}

uint64_t protocol witness for PromptForValueFlowStrategyAsync.makeRepromptOnLowConfidence() in conformance AnnounceVoicemailPromptForValueFlowStrategy(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = async function pointer to PromptForValueFlowStrategyAsync.makeRepromptOnLowConfidence()[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = protocol witness for PromptForValueFlowStrategyAsync.makeRepromptOnEmptyParse() in conformance AnnounceVoicemailPromptForValueFlowStrategy;

  return PromptForValueFlowStrategyAsync.makeRepromptOnLowConfidence()(a1, a2, a3);
}

uint64_t protocol witness for PromptForValueFlowStrategyAsync.makeFlowCancelledResponse() in conformance AnnounceVoicemailPromptForValueFlowStrategy(uint64_t a1)
{
  v4 = *(*v1 + 128);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = protocol witness for PromptForValueFlowStrategyAsync.makeFlowCancelledResponse() in conformance AnnounceVoicemailPromptForValueFlowStrategy;

  return v8(a1);
}

uint64_t protocol witness for PromptForValueFlowStrategyAsync.makeFlowCancelledResponse() in conformance AnnounceVoicemailPromptForValueFlowStrategy()
{
  OUTLINED_FUNCTION_15();
  v1 = *(*v0 + 16);
  v4 = *v0;

  OUTLINED_FUNCTION_11();

  return v2();
}

uint64_t protocol witness for PromptForValueFlowStrategyAsync.makeErrorResponse(_:) in conformance AnnounceVoicemailPromptForValueFlowStrategy(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 136);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = protocol witness for PromptForValueFlowStrategyAsync.makeRepromptOnEmptyParse() in conformance AnnounceVoicemailPromptForValueFlowStrategy;

  return v10(a1, a2);
}

unint64_t lazy protocol witness table accessor for type PhoneError and conformance PhoneError()
{
  result = lazy protocol witness table cache variable for type PhoneError and conformance PhoneError;
  if (!lazy protocol witness table cache variable for type PhoneError and conformance PhoneError)
  {
    type metadata accessor for PhoneError();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneError and conformance PhoneError);
  }

  return result;
}

uint64_t outlined destroy of PhoneError(uint64_t a1)
{
  v2 = type metadata accessor for PhoneError();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type AnnounceVoicemailPromptForValueFlowStrategy.VoicemailAnnouncementResponse and conformance AnnounceVoicemailPromptForValueFlowStrategy.VoicemailAnnouncementResponse()
{
  result = lazy protocol witness table cache variable for type AnnounceVoicemailPromptForValueFlowStrategy.VoicemailAnnouncementResponse and conformance AnnounceVoicemailPromptForValueFlowStrategy.VoicemailAnnouncementResponse;
  if (!lazy protocol witness table cache variable for type AnnounceVoicemailPromptForValueFlowStrategy.VoicemailAnnouncementResponse and conformance AnnounceVoicemailPromptForValueFlowStrategy.VoicemailAnnouncementResponse)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnnounceVoicemailPromptForValueFlowStrategy.VoicemailAnnouncementResponse and conformance AnnounceVoicemailPromptForValueFlowStrategy.VoicemailAnnouncementResponse);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AnnounceVoicemailPromptForValueFlowStrategy.VoicemailAnnouncementResponse(_BYTE *result, unsigned int a2, unsigned int a3)
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

void AnnounceVoicemailReadingFlow.__allocating_init(synchronousBurstIndex:voicemail:hintHistory:burstNotificationManager:sharedGlobals:announceVoicemailCats:)()
{
  OUTLINED_FUNCTION_13_15();
  OUTLINED_FUNCTION_7_10(v1, v2, v3, v4, v5);
  OUTLINED_FUNCTION_9_1();
  v7 = *(v6 + 64);
  __chkstk_darwin(v8);
  v10 = OUTLINED_FUNCTION_0_21(v9, v21);
  v11(v10);
  v12 = OUTLINED_FUNCTION_6_14();
  specialized AnnounceVoicemailReadingFlow.__allocating_init(synchronousBurstIndex:voicemail:hintHistory:burstNotificationManager:sharedGlobals:announceVoicemailCats:)(v13, v14, v15, v16, v17, v18, v19, v20, v12, v22, v23);
  __swift_destroy_boxed_opaque_existential_1(v0);
  OUTLINED_FUNCTION_12_18();
}

unint64_t key path setter for AnnounceVoicemailReadingFlow.state : AnnounceVoicemailReadingFlow(unint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 16);
  *(v3 + 16) = v2;
  outlined copy of AnnounceVoicemailReadingFlow.State(v2);
  return outlined consume of AnnounceVoicemailReadingFlow.State(v4);
}

unint64_t AnnounceVoicemailReadingFlow.state.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  outlined copy of AnnounceVoicemailReadingFlow.State(v1);
  return v1;
}

double key path getter for AnnounceVoicemailReadingFlow.readingState : AnnounceVoicemailReadingFlow@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  (*(**a1 + 160))(v5);
  v3 = v5[1];
  *a2 = v5[0];
  *(a2 + 16) = v3;
  result = *&v6;
  *(a2 + 32) = v6;
  *(a2 + 48) = v7;
  return result;
}

uint64_t key path setter for AnnounceVoicemailReadingFlow.readingState : AnnounceVoicemailReadingFlow(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v11 = *(a1 + 1);
  v5 = a1[4];
  v4 = a1[5];
  v6 = *(a1 + 48);
  v7 = *a2;
  swift_beginAccess();
  v8 = *(v7 + 32);
  v9 = *(v7 + 64);
  *(v7 + 24) = v3;
  *(v7 + 32) = v2;
  *(v7 + 40) = v11;
  *(v7 + 56) = v5;
  *(v7 + 64) = v4;
  *(v7 + 72) = v6;
}

uint64_t AnnounceVoicemailReadingFlow.readingState.getter@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 32);
  v4 = *(v1 + 56);
  v5 = *(v1 + 64);
  v6 = *(v1 + 72);
  *a1 = *(v1 + 24);
  *(a1 + 8) = v3;
  *(a1 + 16) = *(v1 + 40);
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  *(a1 + 48) = v6;
}

double AnnounceVoicemailReadingFlow.exitValue.getter@<D0>(uint64_t a1@<X8>)
{
  (*(*v1 + 160))(v5);
  v3 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v3;
  result = *&v6;
  *(a1 + 32) = v6;
  *(a1 + 48) = v7;
  return result;
}

void AnnounceVoicemailReadingFlow.__allocating_init(state:readingState:hintHistory:burstNotificationManager:sharedGlobals:announceVoicemailCats:)()
{
  OUTLINED_FUNCTION_13_15();
  v26 = v1;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = swift_allocObject();
  v18 = v5[3];
  v17 = v5[4];
  __swift_mutable_project_boxed_opaque_existential_1(v5, v18);
  OUTLINED_FUNCTION_9_1();
  v20 = *(v19 + 64);
  __chkstk_darwin(v21);
  v23 = OUTLINED_FUNCTION_0_21(v22, v25);
  v24(v23);
  specialized AnnounceVoicemailReadingFlow.init(state:readingState:hintHistory:burstNotificationManager:sharedGlobals:announceVoicemailCats:)(v15, v13, v11, v9, v0, v3, v26, v16, v7, v18, v17);
  __swift_destroy_boxed_opaque_existential_1(v5);
  OUTLINED_FUNCTION_12_18();
}

void AnnounceVoicemailReadingFlow.init(state:readingState:hintHistory:burstNotificationManager:sharedGlobals:announceVoicemailCats:)()
{
  OUTLINED_FUNCTION_13_15();
  OUTLINED_FUNCTION_7_10(v1, v2, v3, v4, v5);
  OUTLINED_FUNCTION_9_1();
  v7 = *(v6 + 64);
  __chkstk_darwin(v8);
  v10 = OUTLINED_FUNCTION_0_21(v9, v21);
  v11(v10);
  v12 = OUTLINED_FUNCTION_6_14();
  specialized AnnounceVoicemailReadingFlow.init(state:readingState:hintHistory:burstNotificationManager:sharedGlobals:announceVoicemailCats:)(v13, v14, v15, v16, v17, v18, v19, v20, v12, v22, v23);
  __swift_destroy_boxed_opaque_existential_1(v0);
  OUTLINED_FUNCTION_12_18();
}

uint64_t AnnounceVoicemailReadingFlow.execute(completion:)()
{
  type metadata accessor for AnnounceVoicemailReadingFlow();
  lazy protocol witness table accessor for type AnnounceVoicemailReadingFlow and conformance AnnounceVoicemailReadingFlow();
  return Flow.deferToExecuteAsync(_:)();
}

uint64_t AnnounceVoicemailReadingFlow.execute()(uint64_t a1)
{
  *(v2 + 544) = v1;
  *(v2 + 536) = a1;
  return _swift_task_switch(AnnounceVoicemailReadingFlow.execute(), 0, 0);
}

uint64_t AnnounceVoicemailReadingFlow.execute()()
{
  v69 = v0;
  if (one-time initialization token for siriPhone != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 544);
  v2 = type metadata accessor for Logger();
  *(v0 + 552) = __swift_project_value_buffer(v2, static Logger.siriPhone);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 544);
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v68 = v8;
    *v7 = 136315138;
    *(v0 + 528) = (*(*v6 + 136))();
    v9 = String.init<A>(describing:)();
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v68);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_0, v3, v4, "#AnnounceVoicemailReadingFlow .execute, state=%s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    OUTLINED_FUNCTION_26_0();
    OUTLINED_FUNCTION_26_0();
  }

  else
  {
  }

  v12 = (*(**(v0 + 544) + 136))();
  if (v12)
  {
    v13 = v12;
    if (v12 == 1)
    {
      v15 = *(v0 + 544);
      v16 = AnnounceVoicemailReadingFlow.shouldAttemptToReadHint.getter();
      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.debug.getter();
      v19 = os_log_type_enabled(v17, v18);
      if ((v16 & 1) == 0)
      {
        if (v19)
        {
          *OUTLINED_FUNCTION_65_0() = 0;
          OUTLINED_FUNCTION_14_1(&dword_0, v60, v61, "#AnnounceVoicemailReadingFlow Not attempting to read hint for voicemail announcement.");
          OUTLINED_FUNCTION_26_0();
        }

        v62 = *(v0 + 544);
        v63 = *(v0 + 536);

        swift_beginAccess();
        v64 = *(v62 + 16);
        *(v62 + 16) = 2;
        outlined consume of AnnounceVoicemailReadingFlow.State(v64);
        static ExecuteResponse.replan(requireInput:)();
        outlined consume of AnnounceVoicemailReadingFlow.State(1uLL);
        goto LABEL_22;
      }

      if (v19)
      {
        *OUTLINED_FUNCTION_65_0() = 0;
        OUTLINED_FUNCTION_14_1(&dword_0, v20, v21, "#AnnounceVoicemailReadingFlow Attempting to read hint for voicemail announcement.");
        OUTLINED_FUNCTION_26_0();
      }

      v22 = *(v0 + 544);
      v23 = *(v0 + 536);

      v24 = v22[23];
      __swift_project_boxed_opaque_existential_1(v22 + 19, v22[22]);
      v25 = *(v24 + 16);
      v26 = OUTLINED_FUNCTION_11_0();
      v27(v26, v24);
      v28 = *(v0 + 264);
      v29 = *(v0 + 272);
      __swift_project_boxed_opaque_existential_1((v0 + 240), v28);
      *(v0 + 360) = v28;
      *(v0 + 368) = v29;
      __swift_allocate_boxed_opaque_existential_1((v0 + 336));
      OUTLINED_FUNCTION_40(v28);
      (*(v30 + 16))();
      v31 = type metadata accessor for SimpleOutputFlow();
      OUTLINED_FUNCTION_41_1(v31);

      v32 = SimpleOutputFlow.init(outputPublisher:_:)();
      __swift_destroy_boxed_opaque_existential_1((v0 + 240));
      *(v0 + 512) = v32;
      OUTLINED_FUNCTION_50();
      v33 = swift_allocObject();
      *(v33 + 16) = partial apply for implicit closure #6 in implicit closure #5 in AnnounceVoicemailReadingFlow.execute();
      *(v33 + 24) = v22;

      static ExecuteResponse.ongoing<A>(next:childCompletion:)();
      outlined consume of AnnounceVoicemailReadingFlow.State(1uLL);
    }

    else
    {
      if (v12 == 2)
      {
        v14 = *(v0 + 536);
        static ExecuteResponse.complete()();
LABEL_22:
        v65 = *(v0 + 8);

        return v65();
      }

      v49 = *(v0 + 544);
      v50 = *(v0 + 536);
      v51 = v49[22];
      v52 = v49[23];
      __swift_project_boxed_opaque_existential_1(v49 + 19, v51);
      (*(v52 + 16))(v51, v52);
      v67 = *(v0 + 312);
      v53 = *(v0 + 312);
      __swift_project_boxed_opaque_existential_1((v0 + 288), v53);
      *(v0 + 400) = v67;
      __swift_allocate_boxed_opaque_existential_1((v0 + 376));
      OUTLINED_FUNCTION_40(v53);
      (*(v54 + 16))();
      OUTLINED_FUNCTION_50();
      v55 = swift_allocObject();
      *(v55 + 16) = v49;
      *(v55 + 24) = v13;
      v56 = type metadata accessor for SimpleOutputFlow();
      OUTLINED_FUNCTION_41_1(v56);

      outlined copy of AnnounceVoicemailReadingFlow.State(v13);
      v57 = SimpleOutputFlow.init(outputPublisher:_:)();
      __swift_destroy_boxed_opaque_existential_1((v0 + 288));
      *(v0 + 520) = v57;
      OUTLINED_FUNCTION_50();
      v58 = swift_allocObject();
      *(v58 + 16) = v49;
      *(v58 + 24) = v13;
      OUTLINED_FUNCTION_50();
      v59 = swift_allocObject();
      *(v59 + 16) = partial apply for closure #1 in AnnounceVoicemailReadingFlow.announcementCompleted(voicemails:);
      *(v59 + 24) = v58;

      outlined copy of AnnounceVoicemailReadingFlow.State(v13);
      static ExecuteResponse.ongoing<A>(next:childCompletion:)();
      outlined consume of AnnounceVoicemailReadingFlow.State(v13);
    }

    goto LABEL_22;
  }

  v34 = *(v0 + 544);
  static Signpost.begin(_:)();
  *(v0 + 560) = v35;
  *(v0 + 568) = v36;
  *(v0 + 576) = v37;
  *(v0 + 66) = v38;
  v39 = v34[16];
  v40 = v34[17];
  __swift_project_boxed_opaque_existential_1(v34 + 13, v39);
  v41 = *(*v34 + 160);
  v42 = *v34 + 160;
  *(v0 + 584) = v41;
  *(v0 + 592) = v42 & 0xFFFFFFFFFFFFLL | 0xD77000000000000;
  v41();
  v43 = *(v0 + 216);
  v44 = *(v0 + 224);
  *(v0 + 600) = v44;

  outlined destroy of AnnounceVoicemailReadingState(v0 + 184);
  v45 = *(v40 + 8);
  v66 = (v45 + *v45);
  v46 = v45[1];
  v47 = swift_task_alloc();
  *(v0 + 608) = v47;
  *v47 = v0;
  v47[1] = AnnounceVoicemailReadingFlow.execute();

  return v66(v43, v44, v39, v40);
}

{
  v1 = *(*v0 + 608);
  v2 = *(*v0 + 600);
  v3 = *v0;
  OUTLINED_FUNCTION_4_2();
  *v4 = v3;
  v6[77] = v5;
  v6[78] = v7;
  v6[79] = v8;
  v6[80] = v9;

  return _swift_task_switch(AnnounceVoicemailReadingFlow.execute(), 0, 0);
}

{
  v46 = v0;
  v1 = *(v0 + 640);
  v2 = *(v0 + 632);
  v3 = *(v0 + 624);
  v4 = *(v0 + 616);
  v5 = *(v0 + 552);
  v6 = *(v0 + 544);
  swift_beginAccess();
  AnnounceVoicemailReadingState.update(_:)(v3, v2, v1, v0 + 128);
  swift_endAccess();
  outlined destroy of AnnounceVoicemailReadingState(v0 + 128);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = *(v0 + 592);
    v10 = *(v0 + 584);
    v11 = *(v0 + 544);
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v45 = v13;
    *v12 = 136315138;
    v14 = v10();
    v15 = AnnounceVoicemailReadingState.description.getter(v14);
    v17 = v16;
    outlined destroy of AnnounceVoicemailReadingState(v0 + 72);
    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v17, &v45);

    *(v12 + 4) = v18;
    _os_log_impl(&dword_0, v7, v8, "#AnnounceVoicemailReadingFlow Updated reading state: %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v13);
    OUTLINED_FUNCTION_26_0();
    OUTLINED_FUNCTION_26_0();
  }

  v19 = *(v0 + 592);
  v20 = *(v0 + 544);
  (*(v0 + 584))();
  v21 = specialized Array.count.getter(*(v0 + 24));
  outlined destroy of AnnounceVoicemailReadingState(v0 + 16);
  if (v21 == *(v0 + 16))
  {
    v22 = *(v0 + 640);
    v23 = *(v0 + 616);
    v24 = *(v0 + 552);

    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v25, v26))
    {
      *OUTLINED_FUNCTION_65_0() = 0;
      OUTLINED_FUNCTION_15_3(&dword_0, v27, v28, "#AnnounceVoicemailReadingFlow Found no incoming voicemails in burst. Try hinting.");
      OUTLINED_FUNCTION_26_0();
    }

    v29 = 1;
  }

  else
  {
    v30 = *(v0 + 552);
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v31, v32))
    {
      *OUTLINED_FUNCTION_65_0() = 0;
      OUTLINED_FUNCTION_15_3(&dword_0, v33, v34, "#AnnounceVoicemailReadingFlow Found incoming voicemails in burst. Back to reading.");
      OUTLINED_FUNCTION_26_0();
    }

    v35 = *(v0 + 640);
    v29 = *(v0 + 616);
  }

  v36 = *(v0 + 66);
  v37 = *(v0 + 576);
  v38 = *(v0 + 568);
  v39 = *(v0 + 560);
  v40 = *(v0 + 544);
  v41 = *(v0 + 536);
  swift_beginAccess();
  v42 = *(v40 + 16);
  *(v40 + 16) = v29;
  outlined consume of AnnounceVoicemailReadingFlow.State(v42);
  Signpost.OpenSignpost.end()();
  static ExecuteResponse.replan(requireInput:)();

  outlined consume of AnnounceVoicemailReadingFlow.State(0);
  v43 = *(v0 + 8);

  return v43();
}

unint64_t implicit closure #6 in implicit closure #5 in AnnounceVoicemailReadingFlow.execute()(uint64_t a1)
{
  swift_beginAccess();
  v2 = *(a1 + 16);
  *(a1 + 16) = 2;
  return outlined consume of AnnounceVoicemailReadingFlow.State(v2);
}

uint64_t AnnounceVoicemailReadingFlow.makeAnnouncement(voicemails:completion:)(unint64_t a1, void (*a2)(void *), uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO3MapVy_AA12AnyPublisherVy11SiriKitFlow16TemplatingResultVs5Error_pGAH6Output_pGMd, &_s7Combine10PublishersO3MapVy_AA12AnyPublisherVy11SiriKitFlow16TemplatingResultVs5Error_pGAH6Output_pGMR);
  OUTLINED_FUNCTION_9_1();
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v11);
  v13 = v61 - v12;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO7FlatMapVy_AA6FutureCy11SiriKitFlow16TemplatingResultVs5Error_pGAA12AnyPublisherVyAJsAK_pGGMd, &_s7Combine10PublishersO7FlatMapVy_AA6FutureCy11SiriKitFlow16TemplatingResultVs5Error_pGAA12AnyPublisherVyAJsAK_pGGMR);
  OUTLINED_FUNCTION_9_1();
  v15 = v14;
  v17 = *(v16 + 64);
  __chkstk_darwin(v18);
  v72 = v61 - v19;
  v20 = specialized Array.count.getter(a1);
  if (!v20)
  {
    type metadata accessor for EmptyOutput();
    static EmptyOutput.instance.getter();
    v76 = 0;
    a2(v75);
    return outlined destroy of SpeakableString?(v75, &_ss6ResultOy11SiriKitFlow6Output_ps5Error_pGMd, &_ss6ResultOy11SiriKitFlow6Output_ps5Error_pGMR);
  }

  v21 = v20;
  specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (a1 & 0xC000000000000001) == 0, a1);
  v66 = v8;
  v67 = v6;
  v64 = a3;
  v65 = v13;
  v63 = a2;
  v68 = v15;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v22 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    v22 = *(a1 + 32);
  }

  v23 = v22;
  OUTLINED_FUNCTION_50();
  v24 = swift_allocObject();
  *(v24 + 16) = v74;
  *(v24 + 24) = v23;
  v25 = &_s7Combine6FutureCy11SiriKitFlow16TemplatingResultVs5Error_pGMR;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine6FutureCy11SiriKitFlow16TemplatingResultVs5Error_pGMd, &_s7Combine6FutureCy11SiriKitFlow16TemplatingResultVs5Error_pGMR);
  OUTLINED_FUNCTION_41_1(v26);

  v62 = v23;
  v75[0] = Future.init(_:)();
  OUTLINED_FUNCTION_5_18();
  v70 = lazy protocol witness table accessor for type TerminalOntologyNode<VoiceMail.VoiceMailNoun> and conformance TerminalOntologyNode<A>(v27, &_s7Combine6FutureCy11SiriKitFlow16TemplatingResultVs5Error_pGMd, &_s7Combine6FutureCy11SiriKitFlow16TemplatingResultVs5Error_pGMR);
  v71 = v26;
  v28 = Publisher.eraseToAnyPublisher()();

  if (v21 < 1)
  {
    __break(1u);
  }

  else
  {
    v29 = v21;
    specialized Array._checkIndex(_:)(1, a1);
    specialized Array._checkIndex(_:)(v21, a1);
    if ((a1 & 0xC000000000000001) == 0 || v21 == 1)
    {

      v25 = v68;
    }

    else
    {
      type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INCallRecord, INCallRecord_ptr);

      v30 = 1;
      v25 = v68;
      do
      {
        v31 = v30 + 1;
        _ArrayBuffer._typeCheckSlowPath(_:)(v30);
        v30 = v31;
      }

      while (v21 != v31);
    }

    if (!(a1 >> 62))
    {
      result = a1 & 0xFFFFFFFFFFFFFF8;
      v69 = (a1 & 0xFFFFFFFFFFFFFF8) + 32;
      v33 = 1;
      goto LABEL_14;
    }
  }

  result = _CocoaArrayWrapper.subscript.getter();
  v69 = v58;
  v33 = v59;
  v29 = v60 >> 1;
LABEL_14:
  if (v29 < v33)
  {
    __break(1u);
  }

  else
  {
    v68 = v25 + 1;
    v61[0] = result;
    swift_unknownObjectRetain_n();

    v61[1] = v28;
    v34 = v28;
    while (v29 != v33)
    {
      v35 = *(v69 + 8 * v33);
      v75[0] = v34;
      v36 = swift_allocObject();
      v36[2] = v74;
      v36[3] = v33;
      v36[4] = v35;
      v37 = v35;
      OUTLINED_FUNCTION_11_0();

      v38 = v33;
      static Subscribers.Demand.unlimited.getter();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy11SiriKitFlow16TemplatingResultVs5Error_pGMd, &_s7Combine12AnyPublisherVy11SiriKitFlow16TemplatingResultVs5Error_pGMR);
      type metadata accessor for TemplatingResult();
      OUTLINED_FUNCTION_3_14();
      lazy protocol witness table accessor for type TerminalOntologyNode<VoiceMail.VoiceMailNoun> and conformance TerminalOntologyNode<A>(&lazy protocol witness table cache variable for type AnyPublisher<TemplatingResult, Error> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy11SiriKitFlow16TemplatingResultVs5Error_pGMd, &_s7Combine12AnyPublisherVy11SiriKitFlow16TemplatingResultVs5Error_pGMR);
      v39 = v72;
      Publisher.flatMap<A, B>(maxPublishers:_:)();

      lazy protocol witness table accessor for type TerminalOntologyNode<VoiceMail.VoiceMailNoun> and conformance TerminalOntologyNode<A>(&lazy protocol witness table cache variable for type Publishers.FlatMap<Future<TemplatingResult, Error>, AnyPublisher<TemplatingResult, Error>> and conformance Publishers.FlatMap<A, B>, &_s7Combine10PublishersO7FlatMapVy_AA6FutureCy11SiriKitFlow16TemplatingResultVs5Error_pGAA12AnyPublisherVyAJsAK_pGGMd, &_s7Combine10PublishersO7FlatMapVy_AA6FutureCy11SiriKitFlow16TemplatingResultVs5Error_pGAA12AnyPublisherVyAJsAK_pGGMR);
      v40 = v73;
      v41 = Publisher.eraseToAnyPublisher()();

      (*v68)(v39, v40);
      ++v33;
      v34 = v41;
    }

    swift_unknownObjectRelease_n();
    v75[0] = v34;
    OUTLINED_FUNCTION_50();
    v42 = swift_allocObject();
    v43 = v74;
    v44 = v62;
    *(v42 + 16) = v74;
    *(v42 + 24) = v44;

    v45 = v44;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy11SiriKitFlow16TemplatingResultVs5Error_pGMd, &_s7Combine12AnyPublisherVy11SiriKitFlow16TemplatingResultVs5Error_pGMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow6Output_pMd, &_s11SiriKitFlow6Output_pMR);
    OUTLINED_FUNCTION_3_14();
    lazy protocol witness table accessor for type TerminalOntologyNode<VoiceMail.VoiceMailNoun> and conformance TerminalOntologyNode<A>(v46, &_s7Combine12AnyPublisherVy11SiriKitFlow16TemplatingResultVs5Error_pGMd, &_s7Combine12AnyPublisherVy11SiriKitFlow16TemplatingResultVs5Error_pGMR);
    v47 = v65;
    Publisher.map<A>(_:)();

    OUTLINED_FUNCTION_50();
    v48 = swift_allocObject();
    v49 = v63;
    v50 = v64;
    *(v48 + 16) = v63;
    *(v48 + 24) = v50;
    OUTLINED_FUNCTION_50();
    v51 = swift_allocObject();
    *(v51 + 16) = v49;
    *(v51 + 24) = v50;
    OUTLINED_FUNCTION_4_12();
    lazy protocol witness table accessor for type TerminalOntologyNode<VoiceMail.VoiceMailNoun> and conformance TerminalOntologyNode<A>(v52, v53, v54);
    OUTLINED_FUNCTION_11_0();
    swift_retain_n();
    v55 = v67;
    v56 = Publisher.sink(receiveCompletion:receiveValue:)();

    swift_unknownObjectRelease();

    (*(v66 + 8))(v47, v55);
    v57 = *(v43 + 192);
    *(v43 + 192) = v56;
  }

  return result;
}

uint64_t closure #1 in AnnounceVoicemailReadingFlow.makeAnnouncement(voicemails:completion:)(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v8 = type metadata accessor for Locale();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v13 = (&v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = a3[18];
  v15 = *(*a3 + 160);
  v15(v29, v11);
  result = outlined destroy of AnnounceVoicemailReadingState(v29);
  if (__OFADD__(v30, v29[0]))
  {
    __break(1u);
  }

  else
  {
    v27 = a2;
    v26 = (v30 + v29[0]);
    v15(v31, result);
    outlined destroy of AnnounceVoicemailReadingState(v31);
    v25 = a1;
    v17 = v31[0] > 0;
    type metadata accessor for AppInfoBuilder();
    v18 = swift_allocObject();
    static Device.current.getter();
    __swift_project_boxed_opaque_existential_1(v28, v28[3]);
    dispatch thunk of DeviceState.siriLocale.getter();
    __swift_destroy_boxed_opaque_existential_1(v28);
    v19 = _s27PhoneCallFlowDelegatePlugin0aB6RecordC10getBuilder04callF07options07appInfoH06localeAC0H0CSo06INCallF0C_AC7OptionsVAA03AppL8Building_p10Foundation6LocaleVtFZTf4nnenn_nAA0plH0C_Tt3g5(a4, 0, v18, v13);
    v20 = type metadata accessor for PhoneCallRecord(0);
    v21 = *(v20 + 48);
    v22 = *(v20 + 52);
    swift_allocObject();
    v23 = PhoneCallRecord.init(builder:)(v19);

    (*(v9 + 8))(v13, v8);
    (*(*v14 + class metadata base offset for AnnounceVoicemailCATs))(COERCE_DOUBLE(*&v26), 0, v17, v23, v25, v27);
  }

  return result;
}

uint64_t closure #1 in closure #2 in AnnounceVoicemailReadingFlow.makeAnnouncement(voicemails:completion:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t *a5@<X8>)
{
  v10 = type metadata accessor for TemplatingResult();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  (*(v11 + 16))(&v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v10);
  v13 = (*(v11 + 80) + 40) & ~*(v11 + 80);
  v14 = swift_allocObject();
  *(v14 + 2) = a2;
  *(v14 + 3) = a3;
  *(v14 + 4) = a4;
  (*(v11 + 32))(&v14[v13], &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v10);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine6FutureCy11SiriKitFlow16TemplatingResultVs5Error_pGMd, &_s7Combine6FutureCy11SiriKitFlow16TemplatingResultVs5Error_pGMR);
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();

  v18 = a4;
  result = Future.init(_:)();
  *a5 = result;
  return result;
}

uint64_t closure #1 in closure #1 in closure #2 in AnnounceVoicemailReadingFlow.makeAnnouncement(voicemails:completion:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, uint64_t a6)
{
  v43 = a5;
  v11 = type metadata accessor for TemplatingResult();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v45 = v14;
  v46 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for Locale();
  v15 = *(v44 - 8);
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(v44);
  v19 = (&v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = a3[18];
  (*(*a3 + 160))(v48, v17);
  result = outlined destroy of AnnounceVoicemailReadingState(v48);
  v22 = v49 + v48[0];
  if (__OFADD__(v49, v48[0]))
  {
    __break(1u);
  }

  else
  {
    v23 = __OFADD__(v22, a4);
    v24 = v22 + a4;
    if (!v23)
    {
      v42 = v24;
      type metadata accessor for AppInfoBuilder();
      v25 = swift_allocObject();
      static Device.current.getter();
      v40 = a1;
      v41 = a2;
      v26 = a6;
      v27 = v11;
      __swift_project_boxed_opaque_existential_1(v47, v47[3]);
      dispatch thunk of DeviceState.siriLocale.getter();
      __swift_destroy_boxed_opaque_existential_1(v47);
      v28 = _s27PhoneCallFlowDelegatePlugin0aB6RecordC10getBuilder04callF07options07appInfoH06localeAC0H0CSo06INCallF0C_AC7OptionsVAA03AppL8Building_p10Foundation6LocaleVtFZTf4nnenn_nAA0plH0C_Tt3g5(v43, 0, v25, v19);
      v29 = type metadata accessor for PhoneCallRecord(0);
      v30 = *(v29 + 48);
      v31 = *(v29 + 52);
      swift_allocObject();
      v32 = PhoneCallRecord.init(builder:)(v28);

      (*(v15 + 8))(v19, v44);
      v33 = v46;
      (*(v12 + 16))(v46, v26, v27);
      v34 = (*(v12 + 80) + 16) & ~*(v12 + 80);
      v35 = (v45 + v34 + 7) & 0xFFFFFFFFFFFFFFF8;
      v36 = swift_allocObject();
      (*(v12 + 32))(v36 + v34, v33, v27);
      v37 = (v36 + v35);
      v38 = v41;
      *v37 = v40;
      v37[1] = v38;
      v39 = *(*v20 + class metadata base offset for AnnounceVoicemailCATs);

      v39(*&v42, 0, 1, v32, partial apply for closure #1 in closure #1 in closure #1 in closure #2 in AnnounceVoicemailReadingFlow.makeAnnouncement(voicemails:completion:), v36);
    }
  }

  __break(1u);
  return result;
}

uint64_t closure #1 in closure #1 in closure #1 in closure #2 in AnnounceVoicemailReadingFlow.makeAnnouncement(voicemails:completion:)(uint64_t a1, uint64_t a2, void (*a3)(char *))
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow21BehaviorAfterSpeakingOSgMd, &_s11SiriKitFlow21BehaviorAfterSpeakingOSgMR);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = var50 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10);
  v14 = var50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = var50 - v15;
  v17 = type metadata accessor for TemplatingResult();
  (*(*(v17 - 8) + 16))(v16, a2, v17);
  swift_storeEnumTagMultiPayload();
  v18 = type metadata accessor for BehaviorAfterSpeaking();
  __swift_storeEnumTagSinglePayload(v9, 1, 1, v18);
  specialized Result<>.merge(with:behaviorAfterSpeaking:)(a1, v9, v19, v20, v21, v22, v23, v24, var50[0], var50[1], var50[2], var50[3], var50[4], var50[5], var50[6], var50[7], var50[8], var50[9], var50[10], var50[11]);
  outlined destroy of SpeakableString?(v9, &_s11SiriKitFlow21BehaviorAfterSpeakingOSgMd, &_s11SiriKitFlow21BehaviorAfterSpeakingOSgMR);
  a3(v14);
  outlined destroy of SpeakableString?(v14, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
  return outlined destroy of SpeakableString?(v16, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
}

uint64_t closure #3 in AnnounceVoicemailReadingFlow.makeAnnouncement(voicemails:completion:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  v53 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v55 = &v48 - v9;
  v10 = type metadata accessor for AceOutput();
  v54 = *(v10 - 8);
  v11 = *(v54 + 64);
  __chkstk_darwin(v10);
  v57 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for TemplatingResult();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for siriPhone != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  v19 = __swift_project_value_buffer(v18, static Logger.siriPhone);
  v20 = *(v14 + 16);
  v56 = a1;
  v20(v17, a1, v13);
  v52 = v19;
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v61[0] = v49;
    *v23 = 136315138;
    TemplatingResult.sections.getter();
    type metadata accessor for TemplatingSection();
    v24 = Array.description.getter();
    v51 = v10;
    v25 = v24;
    v50 = a4;
    v27 = v26;

    (*(v14 + 8))(v17, v13);
    v28 = v25;
    v10 = v51;
    v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v27, v61);
    a4 = v50;

    *(v23 + 4) = v29;
    _os_log_impl(&dword_0, v21, v22, "#AnnounceVoicemailReadingFlow announcement = %s", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v49);
  }

  else
  {

    (*(v14 + 8))(v17, v13);
  }

  v30 = a2[22];
  v31 = a2[23];
  __swift_project_boxed_opaque_existential_1(a2 + 19, v30);
  (*(v31 + 8))(v61, v30, v31);
  v32 = a2[22];
  v33 = a2[23];
  __swift_project_boxed_opaque_existential_1(a2 + 19, v32);
  (*(v33 + 8))(v60, v32, v33);
  __swift_project_boxed_opaque_existential_1(v60, v60[3]);
  dispatch thunk of DeviceState.isTextToSpeechEnabled.getter();
  v34 = type metadata accessor for NLContextUpdate();
  v35 = v55;
  __swift_storeEnumTagSinglePayload(v55, 1, 1, v34);
  v59 = 0;
  memset(v58, 0, sizeof(v58));
  v36 = v57;
  static AceOutputHelper.makeConfirmedViewOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
  outlined destroy of SpeakableString?(v58, &_s11SiriKitFlow0C8Activity_pSgMd, &_s11SiriKitFlow0C8Activity_pSgMR);
  outlined destroy of SpeakableString?(v35, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  __swift_destroy_boxed_opaque_existential_1(v61);
  v37 = __swift_destroy_boxed_opaque_existential_1(v60);
  (*(*a2 + 160))(v61, v37);
  result = outlined destroy of AnnounceVoicemailReadingState(v61);
  if (__OFADD__(v62, v61[0]))
  {
    __break(1u);
  }

  else if (v62 + v61[0])
  {
    a4[3] = v10;
    a4[4] = &protocol witness table for AceOutput;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a4);
    return (*(v54 + 32))(boxed_opaque_existential_1, v36, v10);
  }

  else
  {
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&dword_0, v40, v41, "#AnnounceVoicemailReadingFlow Sending SAUIPlayNotification sound first because this is the initial notification announcement.", v42, 2u);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v43 = swift_allocObject();
    *(v43 + 16) = xmmword_426260;
    type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SAUIPlayNotificationSound, SAUIPlayNotificationSound_ptr);
    v44 = [v53 identifier];
    v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v47 = v46;

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v43 + 32) = SAUIPlayNotificationSound.init(notificationId:soundType:)(v45, v47);
    a4[3] = v10;
    a4[4] = &protocol witness table for AceOutput;
    __swift_allocate_boxed_opaque_existential_1(a4);
    AceOutput.copyAndPrepend(commands:)();

    return (*(v54 + 8))(v36, v10);
  }

  return result;
}

uint64_t closure #1 in AnnounceVoicemailReadingFlow.announcementCompleted(voicemails:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 16);
  *(a1 + 16) = 0;
  outlined consume of AnnounceVoicemailReadingFlow.State(v4);
  v5 = specialized Array.count.getter(a2);
  result = swift_beginAccess();
  v7 = *(a1 + 24);
  v8 = __OFADD__(v7, v5);
  v9 = v7 + v5;
  if (v8)
  {
    __break(1u);
  }

  else
  {
    *(a1 + 24) = v9;
  }

  return result;
}

void *AnnounceVoicemailReadingFlow.shouldAttemptToReadHint.getter()
{
  result = (*(*v0 + 160))(v4);
  v2 = v6 - v5;
  if (__OFSUB__(v6, v5))
  {
    __break(1u);
  }

  else
  {
    v3 = specialized Array.count.getter(v4[1]);
    outlined destroy of AnnounceVoicemailReadingState(v4);
    return (v2 == v3);
  }

  return result;
}

uint64_t AnnounceVoicemailReadingFlow.makeHint(completion:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v22[0] = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO3MapVy_AA6FutureCy11SiriKitFlow16TemplatingResultVs5Error_pGAH6Output_pGMd, &_s7Combine10PublishersO3MapVy_AA6FutureCy11SiriKitFlow16TemplatingResultVs5Error_pGAH6Output_pGMR);
  OUTLINED_FUNCTION_9_1();
  v7 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v10);
  v12 = v22 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine6FutureCy11SiriKitFlow16TemplatingResultVs5Error_pGMd, &_s7Combine6FutureCy11SiriKitFlow16TemplatingResultVs5Error_pGMR);
  OUTLINED_FUNCTION_41_1(v13);

  v22[1] = Future.init(_:)();

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow6Output_pMd, &_s11SiriKitFlow6Output_pMR);
  OUTLINED_FUNCTION_5_18();
  lazy protocol witness table accessor for type TerminalOntologyNode<VoiceMail.VoiceMailNoun> and conformance TerminalOntologyNode<A>(v14, &_s7Combine6FutureCy11SiriKitFlow16TemplatingResultVs5Error_pGMd, &_s7Combine6FutureCy11SiriKitFlow16TemplatingResultVs5Error_pGMR);
  Publisher.map<A>(_:)();

  OUTLINED_FUNCTION_50();
  v15 = swift_allocObject();
  v16 = v22[0];
  *(v15 + 16) = v22[0];
  *(v15 + 24) = a2;
  OUTLINED_FUNCTION_50();
  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  *(v17 + 24) = a2;
  OUTLINED_FUNCTION_4_12();
  lazy protocol witness table accessor for type TerminalOntologyNode<VoiceMail.VoiceMailNoun> and conformance TerminalOntologyNode<A>(v18, &_s7Combine10PublishersO3MapVy_AA6FutureCy11SiriKitFlow16TemplatingResultVs5Error_pGAH6Output_pGMd, &_s7Combine10PublishersO3MapVy_AA6FutureCy11SiriKitFlow16TemplatingResultVs5Error_pGAH6Output_pGMR);
  OUTLINED_FUNCTION_11_0();
  swift_retain_n();
  v19 = Publisher.sink(receiveCompletion:receiveValue:)();

  (*(v7 + 8))(v12, v5);
  v20 = *(v3 + 192);
  *(v3 + 192) = v19;
}

uint64_t closure #1 in AnnounceVoicemailReadingFlow.makeHint(completion:)(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3[18];
  v7 = a3[10];
  (*(*a3 + 160))(v13);
  result = outlined destroy of AnnounceVoicemailReadingState(v13);
  if (__OFADD__(v7, v13[0]))
  {
    __break(1u);
  }

  else
  {
    v9 = (v7 + v13[0]);
    v10 = a3[11];
    v11 = a3[12];
    v12 = AnnounceVoicemailHintHistory.daysSinceLastHint.getter();
    return (*(*v6 + class metadata base offset for AnnounceVoicemailCATs + 32))(*&v9, 0, *&v12, 0, v10, 0, a1, a2);
  }

  return result;
}

uint64_t closure #2 in AnnounceVoicemailReadingFlow.makeHint(completion:)@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = v22 - v6;
  v8 = *(TemplatingResult.sections.getter() + 16);

  if (v8 && ((v9 = *(TemplatingResult.print.getter() + 16), , v9) || (v10 = *(TemplatingResult.speak.getter() + 16), , v10)))
  {
    swift_beginAccess();
    *(a1 + 72) = 1;
    v11 = *(a1 + 176);
    v12 = *(a1 + 184);
    __swift_project_boxed_opaque_existential_1((a1 + 152), v11);
    (*(v12 + 8))(v25, v11, v12);
    v13 = *(a1 + 176);
    v14 = *(a1 + 184);
    __swift_project_boxed_opaque_existential_1((a1 + 152), v13);
    (*(v14 + 8))(v24, v13, v14);
    __swift_project_boxed_opaque_existential_1(v24, v24[3]);
    dispatch thunk of DeviceState.isTextToSpeechEnabled.getter();
    v15 = type metadata accessor for NLContextUpdate();
    __swift_storeEnumTagSinglePayload(v7, 1, 1, v15);
    v16 = type metadata accessor for AceOutput();
    memset(v22, 0, sizeof(v22));
    v23 = 0;
    a2[3] = v16;
    a2[4] = &protocol witness table for AceOutput;
    __swift_allocate_boxed_opaque_existential_1(a2);
    static AceOutputHelper.makeConfirmedViewOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
    outlined destroy of SpeakableString?(v22, &_s11SiriKitFlow0C8Activity_pSgMd, &_s11SiriKitFlow0C8Activity_pSgMR);
    outlined destroy of SpeakableString?(v7, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
    __swift_destroy_boxed_opaque_existential_1(v25);
    return __swift_destroy_boxed_opaque_existential_1(v24);
  }

  else
  {
    if (one-time initialization token for siriPhone != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    __swift_project_value_buffer(v18, static Logger.siriPhone);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_0, v19, v20, "#AnnounceVoicemailReadingFlow CAT hint rules resulted in no output, returning EmptyOutput", v21, 2u);
    }

    type metadata accessor for EmptyOutput();
    return static EmptyOutput.instance.getter();
  }
}

void *AnnounceVoicemailReadingFlow.deinit()
{
  outlined consume of AnnounceVoicemailReadingFlow.State(v0[2]);
  v1 = v0[4];
  v2 = v0[8];

  __swift_destroy_boxed_opaque_existential_1(v0 + 13);
  v3 = v0[18];

  __swift_destroy_boxed_opaque_existential_1(v0 + 19);
  v4 = v0[24];

  return v0;
}

uint64_t AnnounceVoicemailReadingFlow.__deallocating_deinit()
{
  AnnounceVoicemailReadingFlow.deinit();

  return swift_deallocClassInstance();
}

uint64_t protocol witness for Flow.onAsync(input:) in conformance AnnounceVoicemailReadingFlow(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = async function pointer to Flow.onAsync(input:)[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = protocol witness for Flow.onAsync(input:) in conformance AnnounceVoicemailReadingFlow;

  return Flow.onAsync(input:)(a1, a2, a3);
}

uint64_t protocol witness for Flow.onAsync(input:) in conformance AnnounceVoicemailReadingFlow(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v4 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v5 = v4;

  v6 = *(v4 + 8);

  return v6(a1);
}

uint64_t protocol witness for Flow.execute() in conformance AnnounceVoicemailReadingFlow(uint64_t a1)
{
  v4 = *(**v1 + 240);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = protocol witness for Flow.execute() in conformance AnnounceVoicemailReadingFlow;

  return v8(a1);
}

uint64_t protocol witness for Flow.execute() in conformance AnnounceVoicemailReadingFlow()
{
  v1 = *(*v0 + 16);
  v2 = *v0;
  OUTLINED_FUNCTION_4_2();
  *v3 = v2;

  v4 = *(v2 + 8);

  return v4();
}

double protocol witness for Flow.exitValue.getter in conformance AnnounceVoicemailReadingFlow@<D0>(uint64_t a1@<X8>)
{
  (*(**v1 + 208))(v5);
  v3 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v3;
  result = *&v6;
  *(a1 + 32) = v6;
  *(a1 + 48) = v7;
  return result;
}

uint64_t specialized closure #1 in Publisher.sink(receiveResultCompletion:)(uint64_t result, void (*a2)(void *))
{
  if (result)
  {
    v3[0] = result;
    v4 = 1;
    swift_errorRetain();
    a2(v3);
    return outlined destroy of SpeakableString?(v3, &_ss6ResultOy11SiriKitFlow6Output_ps5Error_pGMd, &_ss6ResultOy11SiriKitFlow6Output_ps5Error_pGMR);
  }

  return result;
}

uint64_t specialized closure #2 in Publisher.sink(receiveResultCompletion:)(uint64_t a1, void (*a2)(_BYTE *))
{
  _s27PhoneCallFlowDelegatePlugin22SharedGlobalsProviding_pWOcTm_0(a1, v4);
  v4[40] = 0;
  a2(v4);
  return outlined destroy of SpeakableString?(v4, &_ss6ResultOy11SiriKitFlow6Output_ps5Error_pGMd, &_ss6ResultOy11SiriKitFlow6Output_ps5Error_pGMR);
}

uint64_t specialized AnnounceVoicemailReadingFlow.__allocating_init(synchronousBurstIndex:voicemail:hintHistory:burstNotificationManager:sharedGlobals:announceVoicemailCats:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t a7, uint64_t a8, double a9, uint64_t a10, uint64_t a11)
{
  v27[3] = a10;
  v27[4] = a11;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v27);
  (*(*(a10 - 8) + 32))(boxed_opaque_existential_1, a5, a10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_426260;
  *(v21 + 32) = a2;
  v22 = a2;
  static AnnounceVoicemailReadingState.makeInitialState(synchronousBurstIndex:voicemail:)(a1, v22, v28);
  _s27PhoneCallFlowDelegatePlugin22SharedGlobalsProviding_pWOcTm_0(v27, v26);
  _s27PhoneCallFlowDelegatePlugin22SharedGlobalsProviding_pWOcTm_0(a6, v25);
  v23 = (*(a8 + 216))(v21, v28, a3, a4, v26, v25, a7, a9);

  __swift_destroy_boxed_opaque_existential_1(a6);
  __swift_destroy_boxed_opaque_existential_1(v27);
  return v23;
}

unint64_t outlined copy of AnnounceVoicemailReadingFlow.State(unint64_t result)
{
  if (result >= 3)
  {
  }

  return result;
}

uint64_t specialized AnnounceVoicemailReadingFlow.init(state:readingState:hintHistory:burstNotificationManager:sharedGlobals:announceVoicemailCats:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, uint64_t a10, uint64_t a11)
{
  *(a8 + 128) = a10;
  *(a8 + 136) = a11;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((a8 + 104));
  (*(*(a10 - 8) + 32))(boxed_opaque_existential_1, a5, a10);
  *(a8 + 192) = 0;
  *(a8 + 16) = a1;
  v21 = *(a2 + 16);
  *(a8 + 24) = *a2;
  *(a8 + 40) = v21;
  *(a8 + 56) = *(a2 + 32);
  *(a8 + 72) = *(a2 + 48);
  *(a8 + 80) = a3;
  *(a8 + 88) = a4;
  *(a8 + 96) = a9;
  *(a8 + 144) = a7;
  outlined init with take of PhoneCallFeatureFlagProviding(a6, a8 + 152);
  return a8;
}

unint64_t lazy protocol witness table accessor for type AnnounceVoicemailReadingFlow and conformance AnnounceVoicemailReadingFlow()
{
  result = lazy protocol witness table cache variable for type AnnounceVoicemailReadingFlow and conformance AnnounceVoicemailReadingFlow;
  if (!lazy protocol witness table cache variable for type AnnounceVoicemailReadingFlow and conformance AnnounceVoicemailReadingFlow)
  {
    type metadata accessor for AnnounceVoicemailReadingFlow();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnnounceVoicemailReadingFlow and conformance AnnounceVoicemailReadingFlow);
  }

  return result;
}

unint64_t outlined consume of AnnounceVoicemailReadingFlow.State(unint64_t result)
{
  if (result >= 3)
  {
  }

  return result;
}

uint64_t partial apply for closure #1 in AnnounceVoicemailReadingFlow.announcementProducer(voicemails:)(void (*a1)(void *), uint64_t a2)
{
  v5 = *(v2 + 24);
  v6 = *(v2 + 16);
  return AnnounceVoicemailReadingFlow.makeAnnouncement(voicemails:completion:)(v5, a1, a2);
}

uint64_t objectdestroy_3Tm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  OUTLINED_FUNCTION_50();

  return _swift_deallocObject(v3, v4, v5);
}

uint64_t get_enum_tag_for_layout_string_27PhoneCallFlowDelegatePlugin024AnnounceVoicemailReadingC0C5StateO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t getEnumTagSinglePayload for AnnounceVoicemailReadingFlow.State(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 8))
  {
    return (*a1 + 2147483645);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t storeEnumTagSinglePayload for AnnounceVoicemailReadingFlow.State(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

uint64_t objectdestroy_31Tm()
{
  v1 = *(v0 + 16);

  OUTLINED_FUNCTION_50();

  return _swift_deallocObject(v2, v3, v4);
}

uint64_t partial apply for closure #1 in closure #1 in closure #2 in AnnounceVoicemailReadingFlow.makeAnnouncement(voicemails:completion:)(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for TemplatingResult() - 8);
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2 + ((*(v5 + 80) + 40) & ~*(v5 + 80));

  return closure #1 in closure #1 in closure #2 in AnnounceVoicemailReadingFlow.makeAnnouncement(voicemails:completion:)(a1, a2, v6, v7, v8, v9);
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in closure #2 in AnnounceVoicemailReadingFlow.makeAnnouncement(voicemails:completion:)(uint64_t a1)
{
  v3 = *(type metadata accessor for TemplatingResult() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  v6 = *v5;
  v7 = *(v5 + 8);

  return closure #1 in closure #1 in closure #1 in closure #2 in AnnounceVoicemailReadingFlow.makeAnnouncement(voicemails:completion:)(a1, v1 + v4, v6);
}

void static AnnounceVoicemailReadingState.makeInitialState(synchronousBurstIndex:voicemail:)(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_426260;
  *(v6 + 32) = a2;
  v7 = a1 + 1;
  if (__OFADD__(a1, 1))
  {
    __break(1u);
  }

  else if (v7 >= a1)
  {
    v8 = v6;
    v9 = [a2 identifier];
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;

    *a3 = 0;
    *(a3 + 8) = v8;
    *(a3 + 16) = a1;
    *(a3 + 24) = v7;
    *(a3 + 32) = v10;
    *(a3 + 40) = v12;
    *(a3 + 48) = 0;
    return;
  }

  __break(1u);
}

uint64_t AnnounceVoicemailReadingState.update(_:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v5 = v4;

  result = specialized Array.append<A>(contentsOf:)(v10);
  v12 = v4[3];
  v13 = __OFADD__(v12, a1);
  v14 = v12 + a1;
  if (v13)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (v14 < v4[2])
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v4[3] = v14;
  if (a3)
  {
    v15 = v4[5];
    v16 = a3;
  }

  else
  {
    a2 = v4[4];
    v17 = v4[5];

    v16 = v17;
  }

  *(v5 + 32) = a2;
  *(v5 + 40) = v16;

  return outlined init with copy of AnnounceVoicemailReadingState(v5, a4);
}

BOOL AnnounceVoicemailReadingState.allVoicemailsRead.getter()
{
  v1 = v0[1];
  if (v1 >> 62)
  {
    if (v1 < 0)
    {
      v4 = v0[1];
    }

    v2 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v2 = *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8));
  }

  return v2 == *v0;
}

uint64_t AnnounceVoicemailReadingState.burstWindowIndex.getter()
{
  v1 = v0[2];
  result = v1 + *v0;
  if (__OFADD__(v1, *v0))
  {
    __break(1u);
  }

  return result;
}

BOOL AnnounceVoicemailReadingState.isInitialNotificationInBurst.getter()
{
  v1 = v0[2];
  v2 = __OFADD__(v1, *v0);
  v3 = v1 + *v0;
  if (!v2)
  {
    return v3 == 0;
  }

  __break(1u);
  return result;
}

uint64_t AnnounceVoicemailReadingState.incrementVoicemailsRead(count:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (__OFADD__(*v2, result))
  {
    __break(1u);
  }

  else
  {
    *v2 += result;
    return outlined init with copy of AnnounceVoicemailReadingState(v2, a2);
  }

  return result;
}

BOOL AnnounceVoicemailReadingState.isLastNotificationInBurst.getter()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v2 - v1;
  if (__OFSUB__(v2, v1))
  {
    __break(1u);
    goto LABEL_6;
  }

  v4 = v0[1];
  if (v4 >> 62)
  {
LABEL_6:
    v5 = _CocoaArrayWrapper.endIndex.getter();
    return v3 == v5;
  }

  v5 = *(&dword_10 + (v4 & 0xFFFFFFFFFFFFFF8));
  return v3 == v5;
}

void AnnounceVoicemailReadingState.IncomingNotificationsUpdate.description.getter(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  _StringGuts.grow(_:)(82);
  v8._object = 0x8000000000457F30;
  v8._countAndFlagsBits = 0xD000000000000012;
  String.append(_:)(v8);
  v9 = specialized Array.count.getter(a1);
  if (v9)
  {
    v10 = v9;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    if (v10 < 0)
    {
      __break(1u);
      return;
    }

    v30 = a2;
    v31 = a3;
    v32 = a4;
    v11 = 0;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v12 = *(a1 + 8 * v11 + 32);
      }

      v13 = v12;
      v14 = [v12 identifier];
      v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v17 = v16;

      v18 = _swiftEmptyArrayStorage[2];
      if (v18 >= _swiftEmptyArrayStorage[3] >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      ++v11;
      _swiftEmptyArrayStorage[2] = v18 + 1;
      v19 = &_swiftEmptyArrayStorage[2 * v18];
      v19[4] = v15;
      v19[5] = v17;
    }

    while (v10 != v11);
    a3 = v31;
    a4 = v32;
  }

  v20 = Array.description.getter();
  v22 = v21;

  v23._countAndFlagsBits = v20;
  v23._object = v22;
  String.append(_:)(v23);

  v24._countAndFlagsBits = 0xD00000000000001ELL;
  v24._object = 0x8000000000457F50;
  String.append(_:)(v24);
  v25._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v25);

  v26._countAndFlagsBits = 0xD00000000000001ALL;
  v26._object = 0x8000000000457F70;
  String.append(_:)(v26);
  if (a4)
  {
    v27 = a4;
  }

  else
  {
    a3 = 7104878;
    v27 = 0xE300000000000000;
  }

  v28._countAndFlagsBits = a3;
  v28._object = v27;
  String.append(_:)(v28);

  v29._countAndFlagsBits = 32010;
  v29._object = 0xE200000000000000;
  String.append(_:)(v29);
}

uint64_t AnnounceVoicemailReadingState.burstWindow.getter()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  return result;
}

uint64_t AnnounceVoicemailReadingState.init(voicemailsRead:voicemails:burstWindow:lastNotificationId:didReadHint:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X8>)
{
  *a8 = result;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;
  *(a8 + 24) = a4;
  *(a8 + 32) = a5;
  *(a8 + 40) = a6;
  *(a8 + 48) = a7;
  return result;
}

uint64_t specialized Range.description.getter()
{
  OUTLINED_FUNCTION_1_31();
  v0._countAndFlagsBits = 3943982;
  v0._object = 0xE300000000000000;
  String.append(_:)(v0);
  OUTLINED_FUNCTION_1_31();
  return 0;
}

uint64_t getEnumTagSinglePayload for AnnounceVoicemailReadingState(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 49))
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

uint64_t storeEnumTagSinglePayload for AnnounceVoicemailReadingState(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for AnnounceVoicemailReadingState.IncomingNotificationsUpdate(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
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

uint64_t storeEnumTagSinglePayload for AnnounceVoicemailReadingState.IncomingNotificationsUpdate(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

PhoneCallFlowDelegatePlugin::AnswerCallCATs::Properties_optional __swiftcall AnswerCallCATs.Properties.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of AnswerCallCATs.Properties.init(rawValue:), v2);

  if (v3 == 1)
  {
    v4.value = PhoneCallFlowDelegatePlugin_AnswerCallCATs_Properties_offerFollowUpIntent;
  }

  else
  {
    v4.value = PhoneCallFlowDelegatePlugin_AnswerCallCATs_Properties_unknownDefault;
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

unint64_t AnswerCallCATs.Properties.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0xD00000000000001ELL;
  }

  else
  {
    return 0xD000000000000020;
  }
}

PhoneCallFlowDelegatePlugin::AnswerCallCATs::Properties_optional protocol witness for RawRepresentable.init(rawValue:) in conformance AnswerCallCATs.Properties@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::AnswerCallCATs::Properties_optional *a2@<X8>)
{
  result.value = AnswerCallCATs.Properties.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance AnswerCallCATs.Properties@<X0>(unint64_t *a1@<X8>)
{
  result = AnswerCallCATs.Properties.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t AnswerCallCATs.intentHandledResponse(incomingCallConcept:completion:)(uint64_t a1)
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

uint64_t AnswerCallCATs.intentHandledResponse(incomingCallConcept:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t AnswerCallCATs.intentHandledResponse(incomingCallConcept:)()
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
  v6 = OUTLINED_FUNCTION_10_16(v4);

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

  return v8(0xD000000000000020, 0x8000000000452220, v2);
}

uint64_t AnswerCallCATs.intentHandledResponse(incomingCallConcept:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_0();
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

uint64_t AnswerCallCATs.offerFollowUpIntent(followUpOfferType:completion:)(uint64_t a1)
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

uint64_t AnswerCallCATs.offerFollowUpIntent(followUpOfferType:)()
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
  v10 = OUTLINED_FUNCTION_10_16(v8);

  return v12(v10);
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

  return v12(0xD00000000000001ELL, 0x8000000000452250, v3);
}

uint64_t AnswerCallCATs.offerFollowUpIntent(followUpOfferType:)(uint64_t a1)
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

uint64_t AnswerCallCATs.__allocating_init(templateDir:options:globals:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  return AnswerCallCATs.init(templateDir:options:globals:)(a1, a2);
}

uint64_t AnswerCallCATs.init(templateDir:options:globals:)(uint64_t a1, uint64_t a2)
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

unint64_t lazy protocol witness table accessor for type AnswerCallCATs.Properties and conformance AnswerCallCATs.Properties()
{
  result = lazy protocol witness table cache variable for type AnswerCallCATs.Properties and conformance AnswerCallCATs.Properties;
  if (!lazy protocol witness table cache variable for type AnswerCallCATs.Properties and conformance AnswerCallCATs.Properties)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnswerCallCATs.Properties and conformance AnswerCallCATs.Properties);
  }

  return result;
}

uint64_t type metadata accessor for AnswerCallCATs()
{
  result = type metadata singleton initialization cache for AnswerCallCATs;
  if (!type metadata singleton initialization cache for AnswerCallCATs)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AnswerCallCATs.Properties(_BYTE *result, unsigned int a2, unsigned int a3)
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