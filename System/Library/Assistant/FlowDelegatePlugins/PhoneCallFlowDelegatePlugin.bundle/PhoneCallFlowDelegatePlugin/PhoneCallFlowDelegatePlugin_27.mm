void TypedValue.toApp.getter()
{
  OUTLINED_FUNCTION_66();
  v0 = type metadata accessor for TypedValue.PrimitiveValue();
  v1 = OUTLINED_FUNCTION_7(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  __chkstk_darwin(v1);
  OUTLINED_FUNCTION_4();
  v6 = OUTLINED_FUNCTION_41_19();
  v7 = OUTLINED_FUNCTION_7(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  __chkstk_darwin(v7);
  OUTLINED_FUNCTION_4();
  v14 = (v13 - v12);
  v15 = type metadata accessor for TypedValue.PrimitiveValue.AppValue();
  v16 = OUTLINED_FUNCTION_7(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  __chkstk_darwin(v16);
  OUTLINED_FUNCTION_2_79();
  v21 = OUTLINED_FUNCTION_33_17();
  v22(v21);
  v23 = v9[11];
  v24 = OUTLINED_FUNCTION_30_23();
  if (v25(v24) == enum case for TypedValue.primitive(_:))
  {
    v26 = v9[12];
    v27 = OUTLINED_FUNCTION_30_23();
    v28(v27);
    v29 = *v14;
    swift_projectBox();
    v30 = OUTLINED_FUNCTION_37_20();
    v31(v30);
    v32 = v3[11];
    v33 = OUTLINED_FUNCTION_0();
    if (v34(v33) == enum case for TypedValue.PrimitiveValue.app(_:))
    {
      v35 = v3[12];
      v36 = OUTLINED_FUNCTION_0();
      v37(v36);
      OUTLINED_FUNCTION_45_13();
      v38 = OUTLINED_FUNCTION_3_1();
      v39(v38);

      type metadata accessor for App();
      TypedValue.PrimitiveValue.AppValue.bundleIdentifier.getter();
      App.__allocating_init(appIdentifier:)();
      v40 = *(v18 + 8);
      v41 = OUTLINED_FUNCTION_8_2();
      v42(v41);
    }

    else
    {
      v46 = v3[1];
      v47 = OUTLINED_FUNCTION_0();
      v48(v47);
    }
  }

  else
  {
    v43 = v9[1];
    v44 = OUTLINED_FUNCTION_30_23();
    v45(v44);
  }

  OUTLINED_FUNCTION_65();
}

void MessagePayload.ClientAction.PersonQuery.toContactQuery()()
{
  OUTLINED_FUNCTION_66();
  v3 = v2;
  v4 = type metadata accessor for ContactOntologySource();
  v5 = OUTLINED_FUNCTION_7(v4);
  v82 = v6;
  v83 = v5;
  v8 = *(v7 + 64);
  __chkstk_darwin(v5);
  OUTLINED_FUNCTION_4();
  v81 = v10 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference18ContactHandleQueryVSgMd, &_s13SiriInference18ContactHandleQueryVSgMR);
  OUTLINED_FUNCTION_21(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v14);
  v79 = v75 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16IntelligenceFlow14MessagePayloadO12ClientActionV11PersonQueryV6HandleV4KindOSgMd, &_s16IntelligenceFlow14MessagePayloadO12ClientActionV11PersonQueryV6HandleV4KindOSgMR);
  v17 = OUTLINED_FUNCTION_21(v16);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  OUTLINED_FUNCTION_12_5();
  v22 = v20 - v21;
  __chkstk_darwin(v23);
  v25 = v75 - v24;
  v78 = type metadata accessor for ContactHandle.HandleType();
  v26 = OUTLINED_FUNCTION_7(v78);
  v76 = v27;
  v29 = *(v28 + 64);
  __chkstk_darwin(v26);
  OUTLINED_FUNCTION_12_5();
  v32 = v30 - v31;
  __chkstk_darwin(v33);
  v77 = v75 - v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16IntelligenceFlow14MessagePayloadO12ClientActionV11PersonQueryV6HandleVSgMd, &_s16IntelligenceFlow14MessagePayloadO12ClientActionV11PersonQueryV6HandleVSgMR);
  OUTLINED_FUNCTION_21(v35);
  v37 = *(v36 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v38);
  v40 = v75 - v39;
  v41 = type metadata accessor for MessagePayload.ClientAction.PersonQuery.Handle();
  v42 = OUTLINED_FUNCTION_7(v41);
  v80 = v43;
  v45 = *(v44 + 64);
  __chkstk_darwin(v42);
  OUTLINED_FUNCTION_2_79();
  ContactQuery.init()();
  v84 = v0;
  MessagePayload.ClientAction.PersonQuery.name.getter();
  if (v46)
  {
    ContactQuery.fullName.setter();
  }

  MessagePayload.ClientAction.PersonQuery.handle.getter();
  if (OUTLINED_FUNCTION_31_18(v40) != 1)
  {
    (*(v80 + 32))(v1, v40, v41);
    MessagePayload.ClientAction.PersonQuery.Handle.kind.getter();
    v47 = type metadata accessor for MessagePayload.ClientAction.PersonQuery.Handle.Kind();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v25, 1, v47);
    v75[1] = v3;
    if (EnumTagSinglePayload != 1)
    {
      outlined init with copy of PhoneCallFlowState<INHangUpCallIntent, INHangUpCallIntentResponse>(v25, v22, &_s16IntelligenceFlow14MessagePayloadO12ClientActionV11PersonQueryV6HandleV4KindOSgMd, &_s16IntelligenceFlow14MessagePayloadO12ClientActionV11PersonQueryV6HandleV4KindOSgMR);
      v59 = *(v47 - 8);
      v60 = *(v59 + 88);
      v61 = OUTLINED_FUNCTION_35_17();
      v63 = v62(v61);
      if (v63 == enum case for MessagePayload.ClientAction.PersonQuery.Handle.Kind.phone(_:))
      {
LABEL_12:
        v64 = &enum case for ContactHandle.HandleType.phone(_:);
LABEL_13:
        v65 = v76;
        v66 = v77;
        v67 = v78;
        (*(v76 + 104))(v77, *v64, v78);
        outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v25, &_s16IntelligenceFlow14MessagePayloadO12ClientActionV11PersonQueryV6HandleV4KindOSgMd, &_s16IntelligenceFlow14MessagePayloadO12ClientActionV11PersonQueryV6HandleV4KindOSgMR);
        (*(v65 + 16))(v32, v66, v67);
        MessagePayload.ClientAction.PersonQuery.Handle.label.getter();
        MessagePayload.ClientAction.PersonQuery.Handle.value.getter();
        ContactHandleQuery.init(type:label:value:)();
        type metadata accessor for ContactHandleQuery();
        OUTLINED_FUNCTION_23_3();
        __swift_storeEnumTagSinglePayload(v68, v69, v70, v71);
        ContactQuery.handle.setter();
        (*(v65 + 8))(v66, v67);
        (*(v80 + 8))(v1, v41);
        goto LABEL_14;
      }

      if (v63 == enum case for MessagePayload.ClientAction.PersonQuery.Handle.Kind.email(_:))
      {
        v64 = &enum case for ContactHandle.HandleType.email(_:);
        goto LABEL_13;
      }

      v72 = *(v59 + 8);
      v73 = OUTLINED_FUNCTION_35_17();
      v74(v73);
    }

    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_0_6();
      swift_once();
    }

    v49 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_9_0(v49, static Logger.siriPhone);
    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v53 = OUTLINED_FUNCTION_36();
      v87 = v53;
      *v52 = 136315138;
      type metadata accessor for MessagePayload.ClientAction.PersonQuery();
      v85 = 0;
      v86 = 0xE000000000000000;
      OUTLINED_FUNCTION_19_3();
      DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v54, v55, v56, v57);
      v58 = OUTLINED_FUNCTION_11_40();

      *(v52 + 4) = v58;
      _os_log_impl(&dword_0, v50, v51, "%s Unknown ContactHandleQuery.Type, use .phone as default", v52, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v53);
      OUTLINED_FUNCTION_8();

      OUTLINED_FUNCTION_8();
    }

    goto LABEL_12;
  }

  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v40, &_s16IntelligenceFlow14MessagePayloadO12ClientActionV11PersonQueryV6HandleVSgMd, &_s16IntelligenceFlow14MessagePayloadO12ClientActionV11PersonQueryV6HandleVSgMR);
LABEL_14:
  MessagePayload.ClientAction.PersonQuery.isMe.getter();
  ContactQuery.isMe.setter();
  (*(v82 + 104))(v81, enum case for ContactOntologySource.inPerson(_:), v83);
  ContactQuery.ontologySource.setter();
  OUTLINED_FUNCTION_65();
}

uint64_t outlined init with copy of BackingContact(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BackingContact(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t _s27PhoneCallFlowDelegatePlugin0A5ErrorOWOhTm_5(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_23_1(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v12);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return outlined init with take of SPHConversation(&v12, v10 + 40 * a1 + 32);
}

uint64_t getEnumTagSinglePayload for PhoneCallIFIntent(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 96))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 40);
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

uint64_t storeEnumTagSinglePayload for PhoneCallIFIntent(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_31_18(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(a1, 1, v1);
}

id OUTLINED_FUNCTION_40_18()
{
  v3 = *(v1 + 2120);

  return [v0 v3];
}

id OUTLINED_FUNCTION_50_16()
{
  v3 = *(v1 + 2920);

  return [v0 v3];
}

Swift::String __swiftcall PhoneCallIntentClassNames.getClassName()()
{
  v1 = PhoneCallIntentClassNames.intentInstance.getter(v0);
  v2 = [v1 _className];

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  v6 = v3;
  v7 = v5;
  result._object = v7;
  result._countAndFlagsBits = v6;
  return result;
}

id PhoneCallIntentClassNames.intentInstance.getter(char a1)
{
  switch(a1)
  {
    case 1:
      if (one-time initialization token for emptyHangUpCallIntent != -1)
      {
        OUTLINED_FUNCTION_3_70();
      }

      v1 = &static PhoneCallIntentClassNames.emptyHangUpCallIntent;
      break;
    case 2:
      if (one-time initialization token for emptyIncomingCallSearchIntent != -1)
      {
        OUTLINED_FUNCTION_7_49();
      }

      v1 = &static PhoneCallIntentClassNames.emptyIncomingCallSearchIntent;
      break;
    case 3:
      if (one-time initialization token for emptySearchCallHistoryIntent != -1)
      {
        OUTLINED_FUNCTION_6_57();
      }

      v1 = &static PhoneCallIntentClassNames.emptySearchCallHistoryIntent;
      break;
    case 4:
      if (one-time initialization token for emptyStartCallIntent != -1)
      {
        OUTLINED_FUNCTION_6_30();
      }

      v1 = &static PhoneCallIntentClassNames.emptyStartCallIntent;
      break;
    case 5:
      if (one-time initialization token for emptyStartAudioCallIntent != -1)
      {
        OUTLINED_FUNCTION_2_80();
      }

      v1 = &static PhoneCallIntentClassNames.emptyStartAudioCallIntent;
      break;
    case 6:
      if (one-time initialization token for emptyStartVideoCallIntent != -1)
      {
        OUTLINED_FUNCTION_1_80();
      }

      v1 = &static PhoneCallIntentClassNames.emptyStartVideoCallIntent;
      break;
    case 7:
      if (one-time initialization token for emptyAddCallParticipantIntent != -1)
      {
        OUTLINED_FUNCTION_5_62();
      }

      v1 = &static PhoneCallIntentClassNames.emptyAddCallParticipantIntent;
      break;
    default:
      if (one-time initialization token for emptyAnswerCallIntent != -1)
      {
        OUTLINED_FUNCTION_4_55();
      }

      v1 = &static PhoneCallIntentClassNames.emptyAnswerCallIntent;
      break;
  }

  v2 = *v1;

  return v2;
}

PhoneCallFlowDelegatePlugin::PhoneCallIntentClassNames_optional __swiftcall PhoneCallIntentClassNames.init(intentClassName:)(Swift::String intentClassName)
{
  object = intentClassName._object;
  countAndFlagsBits = intentClassName._countAndFlagsBits;
  if (one-time initialization token for emptyAnswerCallIntent != -1)
  {
    OUTLINED_FUNCTION_4_55();
  }

  v5 = [static PhoneCallIntentClassNames.emptyAnswerCallIntent _className];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_9_49();
  if (v2 == countAndFlagsBits && v1 == object)
  {

LABEL_10:

    return 0;
  }

  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_10_52();
  if (v2)
  {
    goto LABEL_10;
  }

  if (one-time initialization token for emptyHangUpCallIntent != -1)
  {
    OUTLINED_FUNCTION_3_70();
  }

  v8 = [static PhoneCallIntentClassNames.emptyHangUpCallIntent _className];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_9_49();
  if (v2 == countAndFlagsBits && v1 == object)
  {

LABEL_20:

    return 1;
  }

  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_10_52();
  if (v2)
  {
    goto LABEL_20;
  }

  if (one-time initialization token for emptyIncomingCallSearchIntent != -1)
  {
    OUTLINED_FUNCTION_7_49();
  }

  v10 = [static PhoneCallIntentClassNames.emptyIncomingCallSearchIntent _className];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_9_49();
  if (v2 == countAndFlagsBits && v1 == object)
  {

LABEL_30:

    return 2;
  }

  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_10_52();
  if (v2)
  {
    goto LABEL_30;
  }

  if (one-time initialization token for emptySearchCallHistoryIntent != -1)
  {
    OUTLINED_FUNCTION_6_57();
  }

  v12 = [static PhoneCallIntentClassNames.emptySearchCallHistoryIntent _className];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_9_49();
  if (v2 == countAndFlagsBits && v1 == object)
  {

LABEL_40:

    return 3;
  }

  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_10_52();
  if (v2)
  {
    goto LABEL_40;
  }

  if (one-time initialization token for emptyStartCallIntent != -1)
  {
    OUTLINED_FUNCTION_6_30();
  }

  v14 = [static PhoneCallIntentClassNames.emptyStartCallIntent _className];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_9_49();
  if (v2 == countAndFlagsBits && v1 == object)
  {

LABEL_50:

    return 4;
  }

  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_10_52();
  if (v2)
  {
    goto LABEL_50;
  }

  if (one-time initialization token for emptyStartAudioCallIntent != -1)
  {
    OUTLINED_FUNCTION_2_80();
  }

  v16 = [static PhoneCallIntentClassNames.emptyStartAudioCallIntent _className];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_9_49();
  if (v2 == countAndFlagsBits && v1 == object)
  {

LABEL_60:

    return 5;
  }

  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_10_52();
  if (v2)
  {
    goto LABEL_60;
  }

  if (one-time initialization token for emptyStartVideoCallIntent != -1)
  {
    OUTLINED_FUNCTION_1_80();
  }

  v18 = [static PhoneCallIntentClassNames.emptyStartVideoCallIntent _className];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_9_49();
  if (v2 == countAndFlagsBits && v1 == object)
  {

LABEL_70:

    return 6;
  }

  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_10_52();
  if (v2)
  {
    goto LABEL_70;
  }

  if (one-time initialization token for emptyAddCallParticipantIntent != -1)
  {
    OUTLINED_FUNCTION_5_62();
  }

  v20 = [static PhoneCallIntentClassNames.emptyAddCallParticipantIntent _className];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_9_49();
  if (v2 == countAndFlagsBits && v1 == object)
  {

    return 7;
  }

  else
  {
    v22 = OUTLINED_FUNCTION_0_5();

    if (v22)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

Swift::String __swiftcall PhoneCallIntentClassNames.getTypeName()()
{
  switch(v0)
  {
    case 1:
      if (one-time initialization token for emptyHangUpCallIntent != -1)
      {
        OUTLINED_FUNCTION_3_70();
      }

      v1 = &static PhoneCallIntentClassNames.emptyHangUpCallIntent;
      break;
    case 2:
      if (one-time initialization token for emptyIncomingCallSearchIntent != -1)
      {
        OUTLINED_FUNCTION_7_49();
      }

      v1 = &static PhoneCallIntentClassNames.emptyIncomingCallSearchIntent;
      break;
    case 3:
      if (one-time initialization token for emptySearchCallHistoryIntent != -1)
      {
        OUTLINED_FUNCTION_6_57();
      }

      v1 = &static PhoneCallIntentClassNames.emptySearchCallHistoryIntent;
      break;
    case 4:
      if (one-time initialization token for emptyStartCallIntent != -1)
      {
        OUTLINED_FUNCTION_6_30();
      }

      v1 = &static PhoneCallIntentClassNames.emptyStartCallIntent;
      break;
    case 5:
      if (one-time initialization token for emptyStartAudioCallIntent != -1)
      {
        OUTLINED_FUNCTION_2_80();
      }

      v1 = &static PhoneCallIntentClassNames.emptyStartAudioCallIntent;
      break;
    case 6:
      if (one-time initialization token for emptyStartVideoCallIntent != -1)
      {
        OUTLINED_FUNCTION_1_80();
      }

      v1 = &static PhoneCallIntentClassNames.emptyStartVideoCallIntent;
      break;
    case 7:
      if (one-time initialization token for emptyAddCallParticipantIntent != -1)
      {
        OUTLINED_FUNCTION_5_62();
      }

      v1 = &static PhoneCallIntentClassNames.emptyAddCallParticipantIntent;
      break;
    default:
      if (one-time initialization token for emptyAnswerCallIntent != -1)
      {
        OUTLINED_FUNCTION_4_55();
      }

      v1 = &static PhoneCallIntentClassNames.emptyAnswerCallIntent;
      break;
  }

  v2 = *v1;
  swift_getObjectType();

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8INIntentCmMd, &_sSo8INIntentCmMR);
  v3 = String.init<A>(describing:)();
  result._object = v4;
  result._countAndFlagsBits = v3;
  return result;
}

id one-time initialization function for emptyAnswerCallIntent()
{
  result = [objc_allocWithZone(INAnswerCallIntent) init];
  static PhoneCallIntentClassNames.emptyAnswerCallIntent = result;
  return result;
}

id one-time initialization function for emptyAddCallParticipantIntent()
{
  result = [objc_allocWithZone(INAddCallParticipantIntent) init];
  static PhoneCallIntentClassNames.emptyAddCallParticipantIntent = result;
  return result;
}

id one-time initialization function for emptyHangUpCallIntent()
{
  result = [objc_allocWithZone(INHangUpCallIntent) init];
  static PhoneCallIntentClassNames.emptyHangUpCallIntent = result;
  return result;
}

id one-time initialization function for emptyIncomingCallSearchIntent()
{
  result = [objc_allocWithZone(INIdentifyIncomingCallerIntent) init];
  static PhoneCallIntentClassNames.emptyIncomingCallSearchIntent = result;
  return result;
}

id one-time initialization function for emptySearchCallHistoryIntent()
{
  result = [objc_allocWithZone(INSearchCallHistoryIntent) init];
  static PhoneCallIntentClassNames.emptySearchCallHistoryIntent = result;
  return result;
}

id one-time initialization function for emptyStartCallIntent()
{
  result = [objc_allocWithZone(INStartCallIntent) init];
  static PhoneCallIntentClassNames.emptyStartCallIntent = result;
  return result;
}

id one-time initialization function for emptyStartAudioCallIntent()
{
  result = [objc_allocWithZone(INStartAudioCallIntent) init];
  static PhoneCallIntentClassNames.emptyStartAudioCallIntent = result;
  return result;
}

id one-time initialization function for emptyStartVideoCallIntent()
{
  result = [objc_allocWithZone(INStartVideoCallIntent) init];
  static PhoneCallIntentClassNames.emptyStartVideoCallIntent = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type PhoneCallIntentClassNames and conformance PhoneCallIntentClassNames()
{
  result = lazy protocol witness table cache variable for type PhoneCallIntentClassNames and conformance PhoneCallIntentClassNames;
  if (!lazy protocol witness table cache variable for type PhoneCallIntentClassNames and conformance PhoneCallIntentClassNames)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallIntentClassNames and conformance PhoneCallIntentClassNames);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [PhoneCallIntentClassNames] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [PhoneCallIntentClassNames] and conformance [A];
  if (!lazy protocol witness table cache variable for type [PhoneCallIntentClassNames] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay27PhoneCallFlowDelegatePlugin0aB16IntentClassNamesOGMd, &_sSay27PhoneCallFlowDelegatePlugin0aB16IntentClassNamesOGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [PhoneCallIntentClassNames] and conformance [A]);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PhoneCallIntentClassNames(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF9)
  {
    if (a2 + 7 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 7) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 8;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v5 = v6 - 8;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for PhoneCallIntentClassNames(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

uint64_t PhoneCallInvite.Builder.__allocating_init()()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_7_6();
  __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  *(v3 + OBJC_IVAR____TtCC27PhoneCallFlowDelegatePlugin15PhoneCallInvite7Builder_participants) = _swiftEmptyArrayStorage;
  return v3;
}

uint64_t key path setter for PhoneCallInvite.Builder.inviteType : PhoneCallInvite.Builder(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v9 - v6;
  outlined init with copy of SpeakableString?(a1, &v9 - v6);
  return (*(**a2 + 104))(v7);
}

uint64_t PhoneCallInvite.Builder.inviteType.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtCC27PhoneCallFlowDelegatePlugin15PhoneCallInvite7Builder_inviteType;
  OUTLINED_FUNCTION_4_4();
  return outlined init with copy of SpeakableString?(v1 + v3, a1);
}

uint64_t PhoneCallInvite.Builder.inviteType.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCC27PhoneCallFlowDelegatePlugin15PhoneCallInvite7Builder_inviteType;
  swift_beginAccess();
  outlined assign with take of SpeakableString?(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t key path setter for PhoneCallInvite.Builder.participants : PhoneCallInvite.Builder(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 128);

  return v3(v4);
}

uint64_t PhoneCallInvite.Builder.participants.getter()
{
  v1 = OBJC_IVAR____TtCC27PhoneCallFlowDelegatePlugin15PhoneCallInvite7Builder_participants;
  OUTLINED_FUNCTION_4_4();
  v2 = *(v0 + v1);
}

uint64_t PhoneCallInvite.Builder.participants.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCC27PhoneCallFlowDelegatePlugin15PhoneCallInvite7Builder_participants;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t PhoneCallInvite.Builder.init()()
{
  type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_7_6();
  __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
  *(v0 + OBJC_IVAR____TtCC27PhoneCallFlowDelegatePlugin15PhoneCallInvite7Builder_participants) = _swiftEmptyArrayStorage;
  return v0;
}

uint64_t PhoneCallInvite.Builder.__allocating_init(inviteType:)()
{
  OUTLINED_FUNCTION_8_7();
  swift_allocObject();
  v1 = OUTLINED_FUNCTION_40_0();
  PhoneCallInvite.Builder.init(inviteType:)(v1);
  return v0;
}

uint64_t PhoneCallInvite.Builder.init(inviteType:)(uint64_t a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v7);
  OUTLINED_FUNCTION_5_63();
  v8 = OBJC_IVAR____TtCC27PhoneCallFlowDelegatePlugin15PhoneCallInvite7Builder_inviteType;
  v9 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_7_6();
  __swift_storeEnumTagSinglePayload(v10, v11, v12, v9);
  *(v1 + OBJC_IVAR____TtCC27PhoneCallFlowDelegatePlugin15PhoneCallInvite7Builder_participants) = _swiftEmptyArrayStorage;
  (*(*(v9 - 8) + 32))(v2, a1, v9);
  __swift_storeEnumTagSinglePayload(v2, 0, 1, v9);
  swift_beginAccess();
  outlined assign with take of SpeakableString?(v2, v1 + v8);
  swift_endAccess();
  return v1;
}

uint64_t PhoneCallInvite.Builder.withInviteType(_:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v6);
  OUTLINED_FUNCTION_5_63();
  outlined init with copy of SpeakableString?(a1, v1);
  OUTLINED_FUNCTION_2_0();
  (*(v7 + 104))(v1);
}

uint64_t PhoneCallInvite.Builder.withInviteType(print:speak:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v3);
  v5 = &v9 - v4;

  SpeakableString.init(print:speak:)();
  v6 = type metadata accessor for SpeakableString();
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v6);
  OUTLINED_FUNCTION_2_0();
  (*(v7 + 104))(v5);
}

uint64_t PhoneCallInvite.Builder.withParticipants(_:)()
{
  OUTLINED_FUNCTION_2_0();
  v1 = *(v0 + 128);

  v1(v2);
}

uint64_t PhoneCallInvite.Builder.build()()
{
  v0 = type metadata accessor for PhoneCallInvite(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();

  PhoneCallInvite.init(builder:)(v4);
  return v3;
}

uint64_t PhoneCallInvite.__allocating_init(builder:)()
{
  OUTLINED_FUNCTION_8_7();
  swift_allocObject();
  v1 = OUTLINED_FUNCTION_40_0();
  PhoneCallInvite.init(builder:)(v1);
  return v0;
}

uint64_t PhoneCallInvite.Builder.deinit()
{
  outlined destroy of SpeakableString?(v0 + OBJC_IVAR____TtCC27PhoneCallFlowDelegatePlugin15PhoneCallInvite7Builder_inviteType);
  v1 = *(v0 + OBJC_IVAR____TtCC27PhoneCallFlowDelegatePlugin15PhoneCallInvite7Builder_participants);

  return v0;
}

uint64_t PhoneCallInvite.Builder.__deallocating_deinit()
{
  outlined destroy of SpeakableString?(v0 + OBJC_IVAR____TtCC27PhoneCallFlowDelegatePlugin15PhoneCallInvite7Builder_inviteType);
  v1 = *(v0 + OBJC_IVAR____TtCC27PhoneCallFlowDelegatePlugin15PhoneCallInvite7Builder_participants);

  v2 = *(*v0 + 48);
  v3 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t key path setter for PhoneCallInvite.mockGlobals : PhoneCallInvite(id *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 128);
  v4 = *a1;
  return v3(v2);
}

void *PhoneCallMetrics.mockGlobals.getter()
{
  OUTLINED_FUNCTION_4_4();
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

void *PhoneCallInvite.init(builder:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_49_0();
  v8 = __chkstk_darwin(v7);
  v10 = v18 - v9;
  v1[2] = 0;
  (*(*a1 + 96))(v8);
  v11 = outlined init with take of SpeakableString?(v10, v1 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallInvite_inviteType);
  *(v1 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallInvite_participants) = (*(*a1 + 120))(v11);
  if (((*(*v1 + 152))() & 1) == 0)
  {
    v12 = static Log.siriDialogEngine.getter();
    static os_log_type_t.error.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_424FD0;
    v18[1] = *v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0aB6InviteCmMd, &_s27PhoneCallFlowDelegatePlugin0aB6InviteCmMR);
    v14 = String.init<A>(describing:)();
    v16 = v15;
    *(v13 + 56) = &type metadata for String;
    *(v13 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v13 + 32) = v14;
    *(v13 + 40) = v16;
    os_log(_:dso:log:type:_:)();
  }

  return v2;
}

uint64_t PhoneCallInvite.__allocating_init(inviteType:participants:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for PhoneCallInvite.Builder(0);
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  v9 = swift_allocObject();
  type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_7_6();
  __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
  *(v9 + OBJC_IVAR____TtCC27PhoneCallFlowDelegatePlugin15PhoneCallInvite7Builder_participants) = _swiftEmptyArrayStorage;
  PhoneCallInvite.Builder.withInviteType(_:)(a1);

  OUTLINED_FUNCTION_2_0();
  v15 = (*(v14 + 176))(a2);

  (*(v3 + 144))(v15);
  v16 = OUTLINED_FUNCTION_40_0();
  outlined destroy of SpeakableString?(v16);
  return v3;
}

Swift::Bool __swiftcall PhoneCallInvite.allRequiredInputsHaveValues()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v4);
  v6 = &v10 - v5;
  outlined init with copy of SpeakableString?(v0 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallInvite_inviteType, &v10 - v5);
  v7 = type metadata accessor for SpeakableString();
  v8 = __swift_getEnumTagSinglePayload(v6, 1, v7) != 1;
  outlined destroy of SpeakableString?(v6);
  return v8;
}

uint64_t PhoneCallInvite.getProperty(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v11);
  OUTLINED_FUNCTION_5_63();
  v12 = a1 == 0x7954657469766E69 && a2 == 0xEA00000000006570;
  if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    outlined init with copy of SpeakableString?(v3 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallInvite_inviteType, v4);
    v13 = type metadata accessor for SpeakableString();
    if (__swift_getEnumTagSinglePayload(v4, 1, v13) == 1)
    {
      result = outlined destroy of SpeakableString?(v4);
LABEL_8:
      *a3 = 0u;
      *(a3 + 16) = 0u;
      return result;
    }

    *(a3 + 24) = v13;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a3);
    return (*(*(v13 - 8) + 32))(boxed_opaque_existential_1, v4, v13);
  }

  else
  {
    if (a1 != 0x7069636974726170 || a2 != 0xEC00000073746E61)
    {
      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      if ((result & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    v17 = *(v3 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallInvite_participants);
    *(a3 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay27PhoneCallFlowDelegatePlugin0A6PersonCGMd, &_sSay27PhoneCallFlowDelegatePlugin0A6PersonCGMR);
    *a3 = v17;
  }
}

uint64_t PhoneCallInvite.CodingKeys.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of PhoneCallInvite.CodingKeys.init(rawValue:), v3);
  OUTLINED_FUNCTION_40_0();

  if (v1 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (v1)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t PhoneCallInvite.CodingKeys.stringValue.getter(char a1)
{
  if (a1)
  {
    return 0x7069636974726170;
  }

  else
  {
    return 0x7954657469766E69;
  }
}

PhoneCallFlowDelegatePlugin::PhoneCallInvite::CodingKeys_optional protocol witness for RawRepresentable.init(rawValue:) in conformance PhoneCallInvite.CodingKeys@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::PhoneCallInvite::CodingKeys_optional *a2@<X8>)
{
  result.value = PhoneCallInvite.CodingKeys.init(stringValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance PhoneCallInvite.CodingKeys@<X0>(uint64_t *a1@<X8>)
{
  result = PhoneCallInvite.CodingKeys.stringValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PhoneCallInvite.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PhoneCallInvite.CodingKeys and conformance PhoneCallInvite.CodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PhoneCallInvite.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PhoneCallInvite.CodingKeys and conformance PhoneCallInvite.CodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t PhoneCallInvite.deinit()
{
  outlined destroy of SpeakableString?(v0 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallInvite_inviteType);
  v1 = *(v0 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallInvite_participants);

  return v0;
}

uint64_t PhoneCallInvite.__deallocating_deinit()
{
  PhoneCallInvite.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t PhoneCallInvite.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy27PhoneCallFlowDelegatePlugin0dE6InviteC10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy27PhoneCallFlowDelegatePlugin0dE6InviteC10CodingKeysOGMR);
  OUTLINED_FUNCTION_7(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v10);
  v12 = &v17[-v11];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PhoneCallInvite.CodingKeys and conformance PhoneCallInvite.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v19 = 0;
  type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_0_81();
  _s16SiriDialogEngine15SpeakableStringVACSEAAWlTm_0(v14, v15);
  OUTLINED_FUNCTION_10_53();
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (!v2)
  {
    v18 = *(v3 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallInvite_participants);
    v17[15] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay27PhoneCallFlowDelegatePlugin0A6PersonCGMd, &_sSay27PhoneCallFlowDelegatePlugin0A6PersonCGMR);
    lazy protocol witness table accessor for type [PhonePerson] and conformance <A> [A](&lazy protocol witness table cache variable for type [PhonePerson] and conformance <A> [A], &lazy protocol witness table cache variable for type PhonePerson and conformance DialogPerson);
    OUTLINED_FUNCTION_10_53();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v7 + 8))(v12, v5);
}

unint64_t lazy protocol witness table accessor for type PhoneCallInvite.CodingKeys and conformance PhoneCallInvite.CodingKeys()
{
  result = lazy protocol witness table cache variable for type PhoneCallInvite.CodingKeys and conformance PhoneCallInvite.CodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneCallInvite.CodingKeys and conformance PhoneCallInvite.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallInvite.CodingKeys and conformance PhoneCallInvite.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneCallInvite.CodingKeys and conformance PhoneCallInvite.CodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneCallInvite.CodingKeys and conformance PhoneCallInvite.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallInvite.CodingKeys and conformance PhoneCallInvite.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneCallInvite.CodingKeys and conformance PhoneCallInvite.CodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneCallInvite.CodingKeys and conformance PhoneCallInvite.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallInvite.CodingKeys and conformance PhoneCallInvite.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneCallInvite.CodingKeys and conformance PhoneCallInvite.CodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneCallInvite.CodingKeys and conformance PhoneCallInvite.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallInvite.CodingKeys and conformance PhoneCallInvite.CodingKeys);
  }

  return result;
}

uint64_t _s16SiriDialogEngine15SpeakableStringVACSEAAWlTm_0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t PhoneCallInvite.__allocating_init(from:)(uint64_t *a1)
{
  OUTLINED_FUNCTION_8_7();
  v2 = swift_allocObject();
  PhoneCallInvite.init(from:)(a1);
  return v2;
}

id *PhoneCallInvite.init(from:)(uint64_t *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v7);
  v9 = v21 - v8;
  v21[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy27PhoneCallFlowDelegatePlugin0dE6InviteC10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy27PhoneCallFlowDelegatePlugin0dE6InviteC10CodingKeysOGMR);
  OUTLINED_FUNCTION_7(v21[0]);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v12);
  v1[2] = 0;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PhoneCallInvite.CodingKeys and conformance PhoneCallInvite.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {

    type metadata accessor for PhoneCallInvite(0);
    v16 = *(*v1 + 12);
    v17 = *(*v1 + 26);
    swift_deallocPartialClassInstance();
  }

  else
  {
    type metadata accessor for SpeakableString();
    v23 = 0;
    OUTLINED_FUNCTION_0_81();
    _s16SiriDialogEngine15SpeakableStringVACSEAAWlTm_0(v14, v15);
    OUTLINED_FUNCTION_9_50();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    outlined init with take of SpeakableString?(v9, v1 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallInvite_inviteType);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay27PhoneCallFlowDelegatePlugin0A6PersonCGMd, &_sSay27PhoneCallFlowDelegatePlugin0A6PersonCGMR);
    v22 = 1;
    lazy protocol witness table accessor for type [PhonePerson] and conformance <A> [A](&lazy protocol witness table cache variable for type [PhonePerson] and conformance <A> [A], &lazy protocol witness table cache variable for type PhonePerson and conformance DialogPerson);
    OUTLINED_FUNCTION_9_50();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v19 = OUTLINED_FUNCTION_4_56();
    v20(v19);
    *(v1 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15PhoneCallInvite_participants) = v21[1];
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v1;
}

uint64_t lazy protocol witness table accessor for type [PhonePerson] and conformance <A> [A](unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay27PhoneCallFlowDelegatePlugin0A6PersonCGMd, &_sSay27PhoneCallFlowDelegatePlugin0A6PersonCGMR);
    _s16SiriDialogEngine15SpeakableStringVACSEAAWlTm_0(a2, type metadata accessor for PhonePerson);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void (*protocol witness for CATType.mockGlobals.modify in conformance PhoneCallInvite(void *a1))(void *a1)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = (*(**v1 + 136))();
  return protocol witness for SiriEnvironmentLocating.siriEnvironment.modify in conformance BusinessCompositionFlow;
}

uint64_t protocol witness for Decodable.init(from:) in conformance PhoneCallInvite@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 176))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

void type metadata completion function for PhoneCallInvite()
{
  type metadata accessor for SpeakableString?();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void type metadata completion function for PhoneCallInvite.Builder()
{
  type metadata accessor for SpeakableString?();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

_BYTE *storeEnumTagSinglePayload for PhoneCallInvite.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t PhoneCallMetrics.Builder.timeToEstablish.getter()
{
  OUTLINED_FUNCTION_4_4();
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  return result;
}

uint64_t PhoneCallMetrics.Builder.timeToEstablish.setter(uint64_t a1, char a2)
{
  result = OUTLINED_FUNCTION_11_2();
  *(v2 + 16) = a1;
  *(v2 + 24) = a2 & 1;
  return result;
}

uint64_t PhoneCallMetrics.Builder.duration.getter()
{
  OUTLINED_FUNCTION_4_4();
  result = *(v0 + 32);
  v2 = *(v0 + 40);
  return result;
}

uint64_t PhoneCallMetrics.Builder.duration.setter(uint64_t a1, char a2)
{
  result = OUTLINED_FUNCTION_11_2();
  *(v2 + 32) = a1;
  *(v2 + 40) = a2 & 1;
  return result;
}

uint64_t PhoneCallMetrics.Builder.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = 1;
  *(result + 32) = 0;
  *(result + 40) = 1;
  return result;
}

uint64_t PhoneCallMetrics.Builder.init()()
{
  result = v0;
  *(v0 + 16) = 0;
  *(v0 + 24) = 1;
  *(v0 + 32) = 0;
  *(v0 + 40) = 1;
  return result;
}

uint64_t PhoneCallMetrics.Builder.withTimeToEstablish(_:)(uint64_t a1, char a2)
{
  (*(*v2 + 104))(a1, a2 & 1);
}

uint64_t PhoneCallMetrics.Builder.withDuration(_:)(uint64_t a1, char a2)
{
  (*(*v2 + 128))(a1, a2 & 1);
}

uint64_t PhoneCallMetrics.Builder.build()()
{
  type metadata accessor for PhoneCallMetrics();
  v0 = swift_allocObject();

  PhoneCallMetrics.init(builder:)(v1);
  return v0;
}

uint64_t PhoneCallMetrics.__allocating_init(builder:)(uint64_t a1)
{
  OUTLINED_FUNCTION_1_81();
  v2 = swift_allocObject();
  PhoneCallMetrics.init(builder:)(a1);
  return v2;
}

uint64_t key path setter for PhoneCallMetrics.mockGlobals : PhoneCallMetrics(id *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 128);
  v4 = *a1;
  return v3(v2);
}

void PhoneCallMetrics.mockGlobals.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_11_2();
  v3 = *(v1 + 16);
  *(v1 + 16) = a1;
}

uint64_t PhoneCallMetrics.timeToEstablish.getter()
{
  result = *(v0 + 24);
  v2 = *(v0 + 32);
  return result;
}

uint64_t PhoneCallMetrics.duration.getter()
{
  result = *(v0 + 40);
  v2 = *(v0 + 48);
  return result;
}

uint64_t PhoneCallMetrics.init(builder:)(uint64_t a1)
{
  v2 = v1;
  *(v2 + 16) = 0;
  *(v2 + 24) = (*(*a1 + 96))(a1);
  *(v2 + 32) = v4 & 1;
  v5 = (*(*a1 + 120))();
  v7 = v6;

  *(v2 + 40) = v5;
  *(v2 + 48) = v7 & 1;
  return v2;
}

uint64_t PhoneCallMetrics.__allocating_init(timeToEstablish:duration:)(uint64_t a1, char a2, uint64_t a3, char a4)
{
  type metadata accessor for PhoneCallMetrics.Builder();
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  *(v9 + 24) = 1;
  *(v9 + 32) = 0;
  *(v9 + 40) = 1;
  swift_beginAccess();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2 & 1;
  swift_beginAccess();
  *(v9 + 32) = a3;
  *(v9 + 40) = a4 & 1;
  return (*(v4 + 144))(v9);
}

uint64_t PhoneCallMetrics.getProperty(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = 0x73456F54656D6974;
  v8 = a1 == 0x73456F54656D6974 && a2 == 0xEF6873696C626174;
  if (v8 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) != 0))
  {
    if (*(v3 + 32))
    {
LABEL_7:
      *a3 = 0u;
      *(a3 + 16) = 0u;
      return result;
    }

    v9 = *(v3 + 24);
  }

  else
  {
    result = 0x6E6F697461727564;
    if (a1 != 0x6E6F697461727564 || a2 != 0xE800000000000000)
    {
      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      if ((result & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    if (*(v3 + 48))
    {
      goto LABEL_7;
    }

    v9 = *(v3 + 40);
  }

  *(a3 + 24) = &type metadata for Double;
  *a3 = v9;
  return result;
}

uint64_t PhoneCallMetrics.CodingKeys.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of PhoneCallMetrics.CodingKeys.init(rawValue:), v2);

  if (v3 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
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

uint64_t PhoneCallMetrics.CodingKeys.stringValue.getter(char a1)
{
  if (a1)
  {
    return 0x6E6F697461727564;
  }

  else
  {
    return 0x73456F54656D6974;
  }
}

PhoneCallFlowDelegatePlugin::PhoneCallMetrics::CodingKeys_optional protocol witness for RawRepresentable.init(rawValue:) in conformance PhoneCallMetrics.CodingKeys@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::PhoneCallMetrics::CodingKeys_optional *a2@<X8>)
{
  result.value = PhoneCallMetrics.CodingKeys.init(stringValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance PhoneCallMetrics.CodingKeys@<X0>(uint64_t *a1@<X8>)
{
  result = PhoneCallMetrics.CodingKeys.stringValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PhoneCallMetrics.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PhoneCallMetrics.CodingKeys and conformance PhoneCallMetrics.CodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PhoneCallMetrics.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PhoneCallMetrics.CodingKeys and conformance PhoneCallMetrics.CodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t PhoneCallMetrics.__deallocating_deinit()
{
  OUTLINED_FUNCTION_1_81();

  return swift_deallocClassInstance();
}

uint64_t PhoneCallMetrics.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy27PhoneCallFlowDelegatePlugin0dE7MetricsC10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy27PhoneCallFlowDelegatePlugin0dE7MetricsC10CodingKeysOGMR);
  v6 = OUTLINED_FUNCTION_7(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6);
  v12 = &v19[-v11];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PhoneCallMetrics.CodingKeys and conformance PhoneCallMetrics.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = *(v3 + 24);
  v15 = *(v3 + 32);
  v19[15] = 0;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (!v2)
  {
    v16 = *(v3 + 40);
    v17 = *(v3 + 48);
    v19[14] = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v8 + 8))(v12, v5);
}

unint64_t lazy protocol witness table accessor for type PhoneCallMetrics.CodingKeys and conformance PhoneCallMetrics.CodingKeys()
{
  result = lazy protocol witness table cache variable for type PhoneCallMetrics.CodingKeys and conformance PhoneCallMetrics.CodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneCallMetrics.CodingKeys and conformance PhoneCallMetrics.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallMetrics.CodingKeys and conformance PhoneCallMetrics.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneCallMetrics.CodingKeys and conformance PhoneCallMetrics.CodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneCallMetrics.CodingKeys and conformance PhoneCallMetrics.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallMetrics.CodingKeys and conformance PhoneCallMetrics.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneCallMetrics.CodingKeys and conformance PhoneCallMetrics.CodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneCallMetrics.CodingKeys and conformance PhoneCallMetrics.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallMetrics.CodingKeys and conformance PhoneCallMetrics.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneCallMetrics.CodingKeys and conformance PhoneCallMetrics.CodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneCallMetrics.CodingKeys and conformance PhoneCallMetrics.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallMetrics.CodingKeys and conformance PhoneCallMetrics.CodingKeys);
  }

  return result;
}

uint64_t PhoneCallMetrics.__allocating_init(from:)(uint64_t *a1)
{
  OUTLINED_FUNCTION_1_81();
  v2 = swift_allocObject();
  PhoneCallMetrics.init(from:)(a1);
  return v2;
}

uint64_t PhoneCallMetrics.init(from:)(uint64_t *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy27PhoneCallFlowDelegatePlugin0dE7MetricsC10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy27PhoneCallFlowDelegatePlugin0dE7MetricsC10CodingKeysOGMR);
  v6 = OUTLINED_FUNCTION_7(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6);
  v12 = &v19 - v11;
  *(v1 + 16) = 0;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PhoneCallMetrics.CodingKeys and conformance PhoneCallMetrics.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {

    type metadata accessor for PhoneCallMetrics();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v21 = 0;
    *(v1 + 24) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    *(v1 + 32) = v14 & 1;
    v20 = 1;
    v16 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v18 = v17;
    (*(v8 + 8))(v12, v5);
    *(v3 + 40) = v16;
    *(v3 + 48) = v18 & 1;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v3;
}

uint64_t lazy protocol witness table accessor for type PhoneCallMetrics and conformance PhoneCallMetrics(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PhoneCallMetrics();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void (*protocol witness for CATType.mockGlobals.modify in conformance PhoneCallMetrics(void *a1))(void *a1)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = (*(**v1 + 136))();
  return protocol witness for SiriEnvironmentLocating.siriEnvironment.modify in conformance BusinessCompositionFlow;
}

uint64_t protocol witness for Decodable.init(from:) in conformance PhoneCallMetrics@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 176))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PhoneCallMetrics.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t PhoneCallNLConstants.rawValue.getter(char a1)
{
  result = 0x6E69616D6F64;
  switch(a1)
  {
    case 1:
    case 7:
      result = 0x6C6143656E6F6870;
      break;
    case 2:
      result = 0xD000000000000012;
      break;
    case 3:
      result = 0xD000000000000010;
      break;
    case 4:
      result = 0xD000000000000014;
      break;
    case 5:
      v3 = 9;
      goto LABEL_15;
    case 6:
      v3 = 5;
LABEL_15:
      result = v3 | 0xD000000000000010;
      break;
    case 8:
      result = 0x6D754E656E6F6870;
      break;
    case 9:
      result = 0x6464416C69616D65;
      break;
    case 10:
      result = 0x75466E6F73726570;
      break;
    case 11:
      result = 0x69466E6F73726570;
      break;
    case 12:
      result = 0x614C6E6F73726570;
      break;
    case 13:
      result = 0x54746361746E6F63;
      break;
    case 14:
      result = 0x69614D6563696F76;
      break;
    case 15:
      result = 0x6C6143656E6F6870;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t PhoneCallNLConstants.canonicalName.getter(char a1)
{
  _StringGuts.grow(_:)(20);

  PhoneCallNLConstants.rawValue.getter(a1);

  specialized Collection.prefix(_:)(1);
  v2 = Substring.uppercased()();

  specialized Collection.dropFirst(_:)(1uLL);
  lazy protocol witness table accessor for type Substring and conformance Substring();

  String.append<A>(contentsOf:)();

  String.append(_:)(v2);

  return 0xD000000000000012;
}

unint64_t VoicemailVerbSemantics.canonicalName.getter(uint64_t a1, void (*a2)(void), char a3)
{
  a2();
  String.uppercased()();

  OUTLINED_FUNCTION_7_51();
  OUTLINED_FUNCTION_10_54();
  OUTLINED_FUNCTION_6_58();

  v7 = PhoneCallNLConstants.canonicalName.getter(a3);
  v4._countAndFlagsBits = OUTLINED_FUNCTION_2_2();
  v4._object = 0xE700000000000000;
  String.append(_:)(v4);
  v5 = String.uppercased()();
  String.append(_:)(v5);

  return v7;
}

unint64_t specialized Collection.dropFirst(_:)(unint64_t result)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_9_51();
    if ((v2 & 0x2000000000000000) != 0)
    {
      v4 = v3;
    }

    else
    {
      v4 = v1 & 0xFFFFFFFFFFFFLL;
    }

    v5 = 7;
    if (((v2 >> 60) & ((v1 & 0x800000000000000) == 0)) != 0)
    {
      v5 = 11;
    }

    v6 = v5 | (v4 << 16);
    result = OUTLINED_FUNCTION_11_41();
    if (v7)
    {
      result = v6;
    }

    if (4 * v4 >= result >> 14)
    {
      String.subscript.getter();
      OUTLINED_FUNCTION_0_82();
      return OUTLINED_FUNCTION_1_82();
    }
  }

  __break(1u);
  return result;
}

uint64_t PhoneCallVerbSemantics.rawValue.getter(char a1)
{
  result = 1819042147;
  switch(a1)
  {
    case 1:
      result = 0x636162206C6C6163;
      break;
    case 2:
    case 3:
      result = 0x656D697465636166;
      break;
    case 4:
      result = 0x7072656B61657073;
      break;
    case 5:
      result = 1684957542;
      break;
    case 6:
      result = 0x6C6169646572;
      break;
    case 7:
      result = 0x79666972616C63;
      break;
    case 8:
      result = 1684104562;
      break;
    case 9:
      result = 0x6D7269666E6F63;
      break;
    case 10:
      result = 0x726577736E61;
      break;
    case 11:
      result = 0x70755F676E6168;
      break;
    case 12:
      result = 0x6574656C6564;
      break;
    case 13:
      result = 1852403562;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t PhoneCallHandleType.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0x6C69616D65;
  }

  else
  {
    return 0x656E6F6870;
  }
}

Swift::String __swiftcall PhoneCallNLConstants.boundValue(_:)(Swift::String a1)
{
  v8 = PhoneCallNLConstants.canonicalName.getter(v1);
  v9 = v2;
  v3._countAndFlagsBits = OUTLINED_FUNCTION_2_2();
  v3._object = 0xE700000000000000;
  String.append(_:)(v3);
  v4 = String.uppercased()();
  String.append(_:)(v4);

  v5 = v8;
  v6 = v9;
  result._object = v6;
  result._countAndFlagsBits = v5;
  return result;
}

PhoneCallFlowDelegatePlugin::PhoneCallNLConstants_optional __swiftcall PhoneCallNLConstants.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_38();
  v3._object = v1;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of PhoneCallNLConstants.init(rawValue:), v3);
  OUTLINED_FUNCTION_33_2();
  if (v2 >= 0x10)
  {
    return 16;
  }

  else
  {
    return v2;
  }
}

PhoneCallFlowDelegatePlugin::PhoneCallNLConstants_optional protocol witness for RawRepresentable.init(rawValue:) in conformance PhoneCallNLConstants@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::PhoneCallNLConstants_optional *a2@<X8>)
{
  result.value = PhoneCallNLConstants.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance PhoneCallNLConstants()
{
  v1 = OUTLINED_FUNCTION_40_2();
  result = PhoneCallNLConstants.rawValue.getter(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

unint64_t PhoneCallConfirmationSemantics.canonicalName.getter()
{
  String.uppercased()();

  OUTLINED_FUNCTION_7_51();
  OUTLINED_FUNCTION_10_54();
  OUTLINED_FUNCTION_6_58();

  v3 = PhoneCallNLConstants.canonicalName.getter(6);
  v0._countAndFlagsBits = OUTLINED_FUNCTION_2_2();
  v0._object = 0xE700000000000000;
  String.append(_:)(v0);
  v1 = String.uppercased()();
  String.append(_:)(v1);

  return v3;
}

uint64_t PhoneCallConfirmationSemantics.rawValue.getter(char a1)
{
  result = 7562617;
  switch(a1)
  {
    case 1:
      result = 28526;
      break;
    case 2:
      result = 0x206D7269666E6F63;
      break;
    case 3:
      result = 0x63207463656A6572;
      break;
    default:
      return result;
  }

  return result;
}

PhoneCallFlowDelegatePlugin::PhoneCallConfirmationSemantics_optional __swiftcall PhoneCallConfirmationSemantics.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_38();
  v3._object = v1;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of PhoneCallConfirmationSemantics.init(rawValue:), v3);
  OUTLINED_FUNCTION_33_2();
  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance PhoneCallConfirmationSemantics(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *a1;
  return specialized == infix<A>(_:_:)();
}

PhoneCallFlowDelegatePlugin::PhoneCallConfirmationSemantics_optional protocol witness for RawRepresentable.init(rawValue:) in conformance PhoneCallConfirmationSemantics@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::PhoneCallConfirmationSemantics_optional *a2@<X8>)
{
  result.value = PhoneCallConfirmationSemantics.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance PhoneCallConfirmationSemantics()
{
  v1 = OUTLINED_FUNCTION_40_2();
  result = PhoneCallConfirmationSemantics.rawValue.getter(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t VoicemailVerbSemantics.rawValue.getter(char a1)
{
  result = 2036427888;
  switch(a1)
  {
    case 1:
      result = 0x746165706572;
      break;
    case 2:
      result = 1885956979;
      break;
    case 3:
      result = 0x6573756170;
      break;
    case 4:
      result = 0x656D75736572;
      break;
    default:
      return result;
  }

  return result;
}

PhoneCallFlowDelegatePlugin::VoicemailVerbSemantics_optional __swiftcall VoicemailVerbSemantics.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_38();
  v3._object = v1;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of VoicemailVerbSemantics.init(rawValue:), v3);
  OUTLINED_FUNCTION_33_2();
  if (v2 >= 5)
  {
    return 5;
  }

  else
  {
    return v2;
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance VoicemailVerbSemantics(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *a1;
  return specialized == infix<A>(_:_:)();
}

PhoneCallFlowDelegatePlugin::VoicemailVerbSemantics_optional protocol witness for RawRepresentable.init(rawValue:) in conformance VoicemailVerbSemantics@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::VoicemailVerbSemantics_optional *a2@<X8>)
{
  result.value = VoicemailVerbSemantics.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance VoicemailVerbSemantics()
{
  v1 = OUTLINED_FUNCTION_40_2();
  result = VoicemailVerbSemantics.rawValue.getter(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

PhoneCallFlowDelegatePlugin::PhoneCallVerbSemantics_optional __swiftcall PhoneCallVerbSemantics.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_38();
  v3._object = v1;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of PhoneCallVerbSemantics.init(rawValue:), v3);
  OUTLINED_FUNCTION_33_2();
  if (v2 >= 0xE)
  {
    return 14;
  }

  else
  {
    return v2;
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance PhoneCallVerbSemantics(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *a1;
  return specialized == infix<A>(_:_:)();
}

PhoneCallFlowDelegatePlugin::PhoneCallVerbSemantics_optional protocol witness for RawRepresentable.init(rawValue:) in conformance PhoneCallVerbSemantics@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::PhoneCallVerbSemantics_optional *a2@<X8>)
{
  result.value = PhoneCallVerbSemantics.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance PhoneCallVerbSemantics()
{
  v1 = OUTLINED_FUNCTION_40_2();
  result = PhoneCallVerbSemantics.rawValue.getter(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

PhoneCallFlowDelegatePlugin::PhoneCallHandleType_optional __swiftcall PhoneCallHandleType.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_38();
  v3._object = v1;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of PhoneCallHandleType.init(rawValue:), v3);
  OUTLINED_FUNCTION_33_2();
  if (v2 == 1)
  {
    v4.value = PhoneCallFlowDelegatePlugin_PhoneCallHandleType_email;
  }

  else
  {
    v4.value = PhoneCallFlowDelegatePlugin_PhoneCallHandleType_unknownDefault;
  }

  if (v2)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance PhoneCallHandleType(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  return specialized == infix<A>(_:_:)();
}

PhoneCallFlowDelegatePlugin::PhoneCallHandleType_optional protocol witness for RawRepresentable.init(rawValue:) in conformance PhoneCallHandleType@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::PhoneCallHandleType_optional *a2@<X8>)
{
  result.value = PhoneCallHandleType.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance PhoneCallHandleType()
{
  v1 = OUTLINED_FUNCTION_40_2();
  result = PhoneCallHandleType.rawValue.getter(v1);
  *v0 = result;
  v0[1] = 0xE500000000000000;
  return result;
}

uint64_t specialized Collection.prefix(_:)(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_9_51();
    OUTLINED_FUNCTION_11_41();
    String.subscript.getter();
    OUTLINED_FUNCTION_0_82();
    return OUTLINED_FUNCTION_1_82();
  }

  return result;
}

{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_38();
    v2 = *(v1 + 16);
    result = specialized Array.index(_:offsetBy:limitedBy:)(0, v3, v2);
    if (v4)
    {
      v5 = v2;
    }

    else
    {
      v5 = result;
    }

    if ((v5 & 0x8000000000000000) == 0)
    {
      specialized Array.subscript.getter(0);
      OUTLINED_FUNCTION_0_82();
      return OUTLINED_FUNCTION_1_82();
    }
  }

  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type PhoneCallNLConstants and conformance PhoneCallNLConstants()
{
  result = lazy protocol witness table cache variable for type PhoneCallNLConstants and conformance PhoneCallNLConstants;
  if (!lazy protocol witness table cache variable for type PhoneCallNLConstants and conformance PhoneCallNLConstants)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallNLConstants and conformance PhoneCallNLConstants);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PhoneCallConfirmationSemantics and conformance PhoneCallConfirmationSemantics()
{
  result = lazy protocol witness table cache variable for type PhoneCallConfirmationSemantics and conformance PhoneCallConfirmationSemantics;
  if (!lazy protocol witness table cache variable for type PhoneCallConfirmationSemantics and conformance PhoneCallConfirmationSemantics)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallConfirmationSemantics and conformance PhoneCallConfirmationSemantics);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type VoicemailVerbSemantics and conformance VoicemailVerbSemantics()
{
  result = lazy protocol witness table cache variable for type VoicemailVerbSemantics and conformance VoicemailVerbSemantics;
  if (!lazy protocol witness table cache variable for type VoicemailVerbSemantics and conformance VoicemailVerbSemantics)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VoicemailVerbSemantics and conformance VoicemailVerbSemantics);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PhoneCallVerbSemantics and conformance PhoneCallVerbSemantics()
{
  result = lazy protocol witness table cache variable for type PhoneCallVerbSemantics and conformance PhoneCallVerbSemantics;
  if (!lazy protocol witness table cache variable for type PhoneCallVerbSemantics and conformance PhoneCallVerbSemantics)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallVerbSemantics and conformance PhoneCallVerbSemantics);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PhoneCallHandleType and conformance PhoneCallHandleType()
{
  result = lazy protocol witness table cache variable for type PhoneCallHandleType and conformance PhoneCallHandleType;
  if (!lazy protocol witness table cache variable for type PhoneCallHandleType and conformance PhoneCallHandleType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallHandleType and conformance PhoneCallHandleType);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PhoneCallNLConstants(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF1)
  {
    if (a2 + 15 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 15) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 16;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x10;
  v5 = v6 - 16;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for PhoneCallNLConstants(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 15 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 15) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF0)
  {
    v6 = ((a2 - 241) >> 8) + 1;
    *result = a2 + 15;
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
          *result = a2 + 15;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PhoneCallConfirmationSemantics(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for VoicemailVerbSemantics(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for PhoneCallVerbSemantics(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF3)
  {
    if (a2 + 13 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 13) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 14;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xE;
  v5 = v6 - 14;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for PhoneCallVerbSemantics(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 13 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 13) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF2)
  {
    v6 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
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
          *result = a2 + 13;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PhoneCallHandleType(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t specialized Array.index(_:offsetBy:limitedBy:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = a3 - result;
  if (__OFSUB__(a3, result))
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if (a2 < 1)
  {
    if (v3 <= 0 && v3 > a2)
    {
      return 0;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0 && v3 < a2)
  {
    return 0;
  }

  v5 = __OFADD__(result, a2);
  result += a2;
  if (v5)
  {
    goto LABEL_14;
  }

  return result;
}

void static PhoneCallNLContextProvider.makeContextForHandleIntent(intent:handleIntentResponse:)()
{
  OUTLINED_FUNCTION_66();
  v4 = v3;
  v80 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s32SiriReferenceResolutionDataModel8RREntityVSgMd, &_s32SiriReferenceResolutionDataModel8RREntityVSgMR);
  OUTLINED_FUNCTION_21(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v9);
  v11 = &v75 - v10;
  v12 = type metadata accessor for RREntity();
  v13 = OUTLINED_FUNCTION_7(v12);
  v90 = v14;
  v16 = *(v15 + 64);
  __chkstk_darwin(v13);
  OUTLINED_FUNCTION_12_5();
  v19 = v17 - v18;
  __chkstk_darwin(v20);
  v89 = &v75 - v21;
  OUTLINED_FUNCTION_4_0();
  __chkstk_darwin(v22);
  OUTLINED_FUNCTION_22_22();
  v79 = type metadata accessor for NLContextUpdate();
  v23 = OUTLINED_FUNCTION_7(v79);
  v78 = v24;
  v26 = *(v25 + 64);
  __chkstk_darwin(v23);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_50_3();
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

  v27 = type metadata accessor for Logger();
  v88 = __swift_project_value_buffer(v27, static Logger.siriPhone);
  v28 = Logger.logObject.getter();
  static os_log_type_t.debug.getter();
  OUTLINED_FUNCTION_39_5();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = OUTLINED_FUNCTION_65_0();
    *v30 = 0;
    _os_log_impl(&dword_0, v28, v0, "#PhoneCallNLContextProvider makeContextForHandleIntent", v30, 2u);
    OUTLINED_FUNCTION_26_0();
  }

  NLContextUpdate.init()();
  swift_getObjectType();
  if (!dynamic_cast_existential_1_conditional(v4))
  {
    v69 = v79;
    (*(v78 + 8))(v1, v79);
    goto LABEL_32;
  }

  v32 = v31;
  v77 = v1;
  v87 = v12;
  ObjectType = swift_getObjectType();
  v34 = *(*(v32 + 8) + 8);
  v35 = *(v34 + 8);
  v36 = v4;
  v37 = v35(ObjectType, v34);
  if (!v37)
  {
    v70 = _swiftEmptyArrayStorage;
LABEL_29:
    v71 = v77;
    if (v70[2])
    {
      NLContextUpdate.rrEntities.setter();

      v72 = v80;
      v73 = v71;
      v69 = v79;
      (*(v78 + 32))(v80, v73, v79);
      v74 = 0;
LABEL_33:
      __swift_storeEnumTagSinglePayload(v72, v74, 1, v69);
      OUTLINED_FUNCTION_65();
      return;
    }

    v69 = v79;
    (*(v78 + 8))(v77, v79);

LABEL_32:
    v74 = 1;
    v72 = v80;
    goto LABEL_33;
  }

  v38 = v37;
  v39 = specialized Array.count.getter(v37);
  v76 = v36;
  if (!v39)
  {
    v97 = _swiftEmptyArrayStorage;
LABEL_28:

    v36 = v76;
    v70 = v97;
    goto LABEL_29;
  }

  v41 = v39;
  if (v39 >= 1)
  {
    v42 = 0;
    v43 = v89;
    v95 = (v90 + 32);
    v96 = v38 & 0xC000000000000001;
    v93 = (v90 + 8);
    v94 = (v90 + 16);
    v97 = _swiftEmptyArrayStorage;
    *&v40 = 136315138;
    v81 = v40;
    v44 = v87;
    v82 = v2;
    v83 = v11;
    v85 = v38;
    v86 = v19;
    v84 = v39;
    do
    {
      if (v96)
      {
        v45 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v45 = *(v38 + 8 * v42 + 32);
      }

      v46 = v45;
      INPerson.toRREntity()();
      if (__swift_getEnumTagSinglePayload(v11, 1, v44) == 1)
      {

        outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v11, &_s32SiriReferenceResolutionDataModel8RREntityVSgMd, &_s32SiriReferenceResolutionDataModel8RREntityVSgMR);
      }

      else
      {
        v92 = *v95;
        v92(v2, v11, v44);
        v91 = *v94;
        v91(v43, v2, v44);
        v47 = Logger.logObject.getter();
        static os_log_type_t.debug.getter();
        OUTLINED_FUNCTION_39_5();
        if (os_log_type_enabled(v47, v48))
        {
          v49 = v43;
          v50 = OUTLINED_FUNCTION_42();
          v51 = OUTLINED_FUNCTION_36();
          v98 = v51;
          *v50 = v81;
          lazy protocol witness table accessor for type RREntity and conformance RREntity(&lazy protocol witness table cache variable for type RREntity and conformance RREntity, &type metadata accessor for RREntity);
          v52 = dispatch thunk of CustomStringConvertible.description.getter();
          v54 = v53;
          v55 = *v93;
          v56 = v49;
          v2 = v82;
          (*v93)(v56, v87);
          v57 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v52, v54, &v98);
          v44 = v87;

          *(v50 + 4) = v57;
          _os_log_impl(&dword_0, v47, v38, "#PhoneCallNLv4ContextProvider makeContextForHandleIntent appending RREntity %s", v50, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v51);
          v11 = v83;
          OUTLINED_FUNCTION_26_0();
          OUTLINED_FUNCTION_26_0();
        }

        else
        {

          v55 = *v93;
          (*v93)(v43, v44);
        }

        v58 = v86;
        v91(v86, v2, v44);
        v59 = v97;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v38 = v85;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v66 = v59[2];
          OUTLINED_FUNCTION_92_0();
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v59 = v67;
        }

        v62 = v59[2];
        v61 = v59[3];
        v97 = v59;
        if (v62 >= v61 >> 1)
        {
          OUTLINED_FUNCTION_17_33(v61);
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v97 = v68;
        }

        v55(v2, v44);
        v97[2] = v62 + 1;
        OUTLINED_FUNCTION_36_5();
        v92((v64 + v63 + *(v65 + 72) * v62), v58, v44);
        v43 = v89;
        v41 = v84;
      }

      ++v42;
    }

    while (v41 != v42);
    goto LABEL_28;
  }

  __break(1u);
}

void static PhoneCallNLContextProvider.needsConfirmationContext(parameter:resolutionResult:)()
{
  OUTLINED_FUNCTION_66();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = type metadata accessor for NLContextUpdate();
  v7 = OUTLINED_FUNCTION_7(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  __chkstk_darwin(v7);
  OUTLINED_FUNCTION_4();
  v14 = v13 - v12;
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  v16 = OUTLINED_FUNCTION_12_1(v15, static Logger.siriPhone);
  v17 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_6_43(v17))
  {
    v18 = OUTLINED_FUNCTION_65_0();
    OUTLINED_FUNCTION_59(v18);
    OUTLINED_FUNCTION_16_38(&dword_0, v19, v20, "#PhoneCallNLContextProvider needsConfirmationContext");
    OUTLINED_FUNCTION_26_22();
  }

  static PhoneCallNLContextProvider.makeGenericConfirmationContextFor(parameter:)(v3, v1);

  v21._countAndFlagsBits = v3;
  v21._object = v1;
  if ((PhoneCallSlotNames.init(rawValue:)(v21).value & 0xFE) == 4)
  {
    NLContextUpdate.weightedPromptResponseTargets.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_424FF0;
    *(inited + 32) = PhoneCallNLConstants.canonicalName.getter(3);
    *(inited + 40) = v23;
    *(inited + 48) = PhoneCallNLConstants.canonicalName.getter(13);
    *(inited + 56) = v24;
    specialized Array.append<A>(contentsOf:)(inited);
    NLContextUpdate.weightedPromptResponseTargets.setter();
  }

  (*(v9 + 32))(v5, v14, v6);
  OUTLINED_FUNCTION_23_3();
  __swift_storeEnumTagSinglePayload(v25, v26, v27, v6);
  OUTLINED_FUNCTION_65();
}

unsigned __int8 static PhoneCallNLContextProvider.makeNeedsValueContextFor(parameter:)(uint64_t a1, void *a2)
{
  NLContextUpdate.init()();
  PhoneCallNLConstants.canonicalName.getter(1);
  NLContextUpdate.weightedPromptTargetDomain.setter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  v4 = OUTLINED_FUNCTION_66_10();
  *(v4 + 16) = xmmword_424FD0;
  OUTLINED_FUNCTION_49_15();
  OUTLINED_FUNCTION_38_17();
  v24 = v5;
  v6 = lazy protocol witness table accessor for type String and conformance String();
  OUTLINED_FUNCTION_20_30(v6, v7, v8, v9, v10, v11, &type metadata for String, v12, &type metadata for String, v6, v6, v6, 1, 2, 95, 0xE100000000000000, v24);
  OUTLINED_FUNCTION_17_25();
  StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

  v25 = PhoneCallNLConstants.canonicalName.getter(6);
  v26 = v13;
  v14._countAndFlagsBits = OUTLINED_FUNCTION_2_2();
  v14._object = 0xE700000000000000;
  String.append(_:)(v14);
  v15 = String.uppercased()();
  String.append(_:)(v15);

  *(v4 + 32) = v25;
  *(v4 + 40) = v26;
  result = NLContextUpdate.weightedPromptResponseOptions.setter();
  if (a2)
  {

    v17._countAndFlagsBits = a1;
    v17._object = a2;
    result = PhoneCallSlotNames.init(rawValue:)(v17).value;
    if (result - 4 < 2)
    {
LABEL_5:
      OUTLINED_FUNCTION_102_0();
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_424FF0;
      *(v18 + 32) = PhoneCallNLConstants.canonicalName.getter(3);
      *(v18 + 40) = v19;
      *(v18 + 48) = PhoneCallNLConstants.canonicalName.getter(5);
      *(v18 + 56) = v20;
      OUTLINED_FUNCTION_65_11();
      NLContextUpdate.weightedPromptStrict.setter();
      static PhoneCallNLContextProvider.makeSDAForNeedsValueForContact()();
      return NLContextUpdate.nluSystemDialogActs.setter();
    }

    if (result != 10)
    {
      if (result != 19)
      {
        return result;
      }

      goto LABEL_5;
    }

    v21 = OUTLINED_FUNCTION_66_10();
    *(v21 + 16) = v23;
    *(v21 + 32) = PhoneCallNLConstants.canonicalName.getter(7);
    *(v21 + 40) = v22;
    OUTLINED_FUNCTION_65_11();
    return NLContextUpdate.weightedPromptStrict.setter();
  }

  return result;
}

char static PhoneCallNLContextProvider.makeGenericConfirmationContextFor(parameter:)(uint64_t a1, void *a2)
{
  result = static PhoneCallNLContextProvider.makeGenericConfirmationNLv3Context()();
  if (a2)
  {

    v5._countAndFlagsBits = a1;
    v5._object = a2;
    result = PhoneCallSlotNames.init(rawValue:)(v5).value;
    if ((result & 0xFE) == 4)
    {
      OUTLINED_FUNCTION_3_71();
      static PhoneCallNLContextProvider.makeSDAForConfirmation()();
      return NLContextUpdate.nluSystemDialogActs.setter();
    }
  }

  return result;
}

uint64_t PhoneCallNLContextProvider.__allocating_init(deviceState:assistantProperties:)(uint64_t *a1, uint64_t *a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  return PhoneCallNLContextProvider.init(deviceState:assistantProperties:)(a1, a2);
}

uint64_t static PhoneCallNLContextProvider.makeContextForConfirmIntent()()
{
  OUTLINED_FUNCTION_3_71();
  return static PhoneCallNLContextProvider.makeContextForConfirmIntent()();
}

{
  static PhoneCallNLContextProvider.makeGenericConfirmationNLv3Context()();
  static PhoneCallNLContextProvider.makeSDAForConfirmation()();
  return NLContextUpdate.nluSystemDialogActs.setter();
}

uint64_t static PhoneCallNLContextProvider.makeGenericConfirmationNLv3Context()()
{
  NLContextUpdate.init()();
  PhoneCallNLConstants.canonicalName.getter(1);
  NLContextUpdate.weightedPromptTargetDomain.setter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  OUTLINED_FUNCTION_102_0();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_424FF0;
  OUTLINED_FUNCTION_49_15();
  OUTLINED_FUNCTION_34_13();
  OUTLINED_FUNCTION_24_26();
  v1 = lazy protocol witness table accessor for type String and conformance String();
  OUTLINED_FUNCTION_8_53(v1, v2, v3, v4, v5, v6, v7, v8, &type metadata for String, v1, v1, v1, v26, v28, v30);
  OUTLINED_FUNCTION_17_25();
  OUTLINED_FUNCTION_55_15();
  OUTLINED_FUNCTION_53_17();
  v32 = PhoneCallNLConstants.canonicalName.getter(6);
  v34 = v9;
  OUTLINED_FUNCTION_23_22();
  (OUTLINED_FUNCTION_47_19)();
  v10 = String.uppercased()();
  String.append(_:)(v10);

  *(v0 + 32) = v32;
  *(v0 + 40) = v34;
  OUTLINED_FUNCTION_50_17();
  OUTLINED_FUNCTION_34_13();
  OUTLINED_FUNCTION_24_26();
  OUTLINED_FUNCTION_8_53(v11, v12, v13, v14, v15, v16, v17, v18, v24, v25, v1, v1, v27, v29, v31);
  OUTLINED_FUNCTION_17_25();
  OUTLINED_FUNCTION_55_15();

  v33 = PhoneCallNLConstants.canonicalName.getter(6);
  v35 = v19;
  OUTLINED_FUNCTION_47_19(v33, v19);
  v20 = String.uppercased()();
  String.append(_:)(v20);

  *(v0 + 48) = v33;
  *(v0 + 56) = v35;
  NLContextUpdate.weightedPromptResponseOptions.setter();
  v21 = OUTLINED_FUNCTION_66_10();
  *(v21 + 16) = xmmword_424FD0;
  *(v21 + 32) = PhoneCallNLConstants.canonicalName.getter(6);
  *(v21 + 40) = v22;
  OUTLINED_FUNCTION_65_11();
  return NLContextUpdate.weightedPromptStrict.setter();
}

void static PhoneCallNLContextProvider.makeNLContextUpdateForDisambiguation(apps:device:)()
{
  OUTLINED_FUNCTION_66();
  v2 = v0;
  v4 = v3;
  v6 = v5;
  v61 = v7;
  v62 = type metadata accessor for Siri_Nlu_External_SystemDialogAct();
  v8 = OUTLINED_FUNCTION_7(v62);
  v10 = v9;
  v12 = *(v11 + 64);
  __chkstk_darwin(v8);
  OUTLINED_FUNCTION_16_2();
  OUTLINED_FUNCTION_9_3();
  __chkstk_darwin(v13);
  OUTLINED_FUNCTION_22_22();
  v14 = type metadata accessor for Siri_Nlu_External_SystemGaveOptions();
  v15 = OUTLINED_FUNCTION_7(v14);
  v64 = v16;
  v65 = v15;
  v18 = *(v17 + 64);
  __chkstk_darwin(v15);
  OUTLINED_FUNCTION_12_5();
  v21 = v19 - v20;
  __chkstk_darwin(v22);
  OUTLINED_FUNCTION_91();
  v63 = v23;
  OUTLINED_FUNCTION_15_0();
  v24 = type metadata accessor for NLContextUpdate();
  v25 = OUTLINED_FUNCTION_7(v24);
  v59 = v26;
  v60 = v25;
  v28 = *(v27 + 64);
  __chkstk_darwin(v25);
  OUTLINED_FUNCTION_4();
  v31 = v30 - v29;
  v66 = v6;
  v67 = v4;
  _s27PhoneCallFlowDelegatePlugin0A25ContactDisplayHintFactoryV5build3for11deviceState14appInfoBuilderSay07SiriKitC00gH0VGSay0Q13AppResolution0S0CG_AH06DeviceM0_pAA0sO8Building_ptFZTf4nnen_nAA0soP0C_Tt1t2g5();
  NLContextUpdate.init()();
  PhoneCallNLConstants.canonicalName.getter(1);
  NLContextUpdate.weightedPromptTargetDomain.setter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_426980;
  if (one-time initialization token for appName != -1)
  {
    OUTLINED_FUNCTION_14_44();
    swift_once();
  }

  *(v32 + 32) = TerminalOntologyNode.name.getter();
  *(v32 + 40) = v33;
  if (one-time initialization token for reference != -1)
  {
    OUTLINED_FUNCTION_25_23();
  }

  *(v32 + 48) = TerminalOntologyNode.name.getter();
  *(v32 + 56) = v34;
  if (one-time initialization token for confirmation != -1)
  {
    swift_once();
  }

  *(v32 + 64) = TerminalOntologyNode.name.getter();
  *(v32 + 72) = v35;
  NLContextUpdate.weightedPromptResponseTargets.setter();
  v36 = OUTLINED_FUNCTION_66_10();
  *(v36 + 16) = xmmword_424FD0;
  OUTLINED_FUNCTION_49_15();
  v70 = 95;
  v71 = 0xE100000000000000;
  lazy protocol witness table accessor for type String and conformance String();
  OUTLINED_FUNCTION_17_25();
  StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

  v68 = PhoneCallNLConstants.canonicalName.getter(6);
  v69 = v37;
  v38._countAndFlagsBits = OUTLINED_FUNCTION_2_2();
  v38._object = 0xE700000000000000;
  String.append(_:)(v38);
  v39 = String.uppercased()();
  String.append(_:)(v39);

  v40 = v69;
  *(v36 + 32) = v68;
  *(v36 + 40) = v40;
  NLContextUpdate.weightedPromptResponseOptions.setter();
  NLContextUpdate.weightedPromptStrict.setter();
  v41 = NLContextUpdate.displayHints.setter();
  __chkstk_darwin(v41);
  v58 = *(v2 + class metadata base offset for PhoneCallNLContextProvider);
  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay17SiriAppResolution0E0CG_0D8NLUTypes0D27_Nlu_External_UserDialogActVs5NeverOTg5();
  v43 = v42;
  Siri_Nlu_External_SystemGaveOptions.init()();
  Siri_Nlu_External_SystemGaveOptions.choices.setter();
  Siri_Nlu_External_SystemDialogAct.init()();
  (*(v64 + 16))(v21, v63, v65);
  Siri_Nlu_External_SystemDialogAct.gaveOptions.setter();
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

  v44 = type metadata accessor for Logger();
  v45 = OUTLINED_FUNCTION_12_1(v44, static Logger.siriPhone);
  static os_log_type_t.debug.getter();
  OUTLINED_FUNCTION_39_5();
  if (os_log_type_enabled(v45, v46))
  {
    v47 = OUTLINED_FUNCTION_42();
    v48 = OUTLINED_FUNCTION_36();
    v68 = v48;
    *v47 = 136315138;
    OUTLINED_FUNCTION_19_3();
    swift_beginAccess();
    v49 = OUTLINED_FUNCTION_57_14(v10);
    v50(v49, v1, v62);
    v51 = _sSS27PhoneCallFlowDelegatePluginE10describingSS21InternalSwiftProtobuf7Message_p_tcfCTf4en_n12SiriNLUTypes0K29_Nlu_External_SystemDialogActV_Tt0g5(v43);
    v53 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v51, v52, &v68);

    *(v47 + 4) = v53;
    OUTLINED_FUNCTION_24_12(&dword_0, v54, OS_LOG_TYPE_DEFAULT, "#PhoneCallNLContextProvider makeNLContextUpdateForDisambiguation: sending disambiguation system dialog acts: %s");
    __swift_destroy_boxed_opaque_existential_1(v48);
    OUTLINED_FUNCTION_26_0();
    OUTLINED_FUNCTION_26_0();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D29_Nlu_External_SystemDialogActVGMd, &_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D29_Nlu_External_SystemDialogActVGMR);
  v55 = *(v10 + 72);
  v56 = *(v10 + 80);
  v57 = OUTLINED_FUNCTION_30_24();
  *(v57 + 16) = xmmword_424FD0;
  OUTLINED_FUNCTION_19_3();
  swift_beginAccess();
  (*(v10 + 16))(v45 + v57, v1, v62);
  NLContextUpdate.nluSystemDialogActs.setter();
  static PhoneReferenceResolution.appsToRrEntities(apps:device:)(v66, v67);
  NLContextUpdate.rrEntities.setter();
  (*(v64 + 8))(v63, v65);
  (*(v59 + 32))(v61, v31, v60);
  (*(v10 + 8))(v1, v62);
  OUTLINED_FUNCTION_65();
}

uint64_t PhoneCallNLContextProvider.init(deviceState:assistantProperties:)(uint64_t *a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_35_0();
  outlined init with copy of SignalProviding(a2, v2 + *(v5 + class metadata base offset for PhoneCallNLContextProvider + 16));
  outlined init with copy of SignalProviding(a1, v2 + *(*v2 + class metadata base offset for PhoneCallNLContextProvider + 24));
  v6 = DefaultNLContextProvider.init()();
  __swift_destroy_boxed_opaque_existential_1(a2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v6;
}

uint64_t PhoneCallNLContextProvider.makeContextForHandleIntent(intent:handleIntentResponse:_:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  OUTLINED_FUNCTION_21(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v8);
  OUTLINED_FUNCTION_50_3();
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  v10 = OUTLINED_FUNCTION_12_1(v9, static Logger.siriPhone);
  v11 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v10, v11))
  {
    *OUTLINED_FUNCTION_65_0() = 0;
    OUTLINED_FUNCTION_6_44(&dword_0, v12, v13, "#PhoneCallNLContextProvider makeContextForHandleIntent");
    OUTLINED_FUNCTION_26_0();
  }

  static PhoneCallNLContextProvider.makeContextForHandleIntent(intent:handleIntentResponse:)();
  a3(v3);
  return outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v3, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
}

uint64_t PhoneCallNLContextProvider.makeContextForConfirmIntent(intent:confirmIntentResponse:_:)(uint64_t a1, uint64_t a2, void (*a3)(char *))
{
  v5 = *v3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  OUTLINED_FUNCTION_21(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v9);
  v11 = &v22 - v10;
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  v13 = OUTLINED_FUNCTION_12_1(v12, static Logger.siriPhone);
  v14 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v13, v14))
  {
    *OUTLINED_FUNCTION_65_0() = 0;
    OUTLINED_FUNCTION_6_44(&dword_0, v15, v16, "#PhoneCallNLContextProvider makeContextForConfirmIntent");
    OUTLINED_FUNCTION_26_0();
  }

  static PhoneCallNLContextProvider.makeContextForConfirmIntent()();
  type metadata accessor for NLContextUpdate();
  OUTLINED_FUNCTION_23_3();
  __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
  a3(v11);
  return outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v11, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
}

void PhoneCallNLContextProvider.makeNeedsConfirmationContextFor(intent:parameter:resolutionResult:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_66();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v25 = *v20;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  OUTLINED_FUNCTION_21(v26);
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v29);
  v31 = &a9 - v30;
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

  v32 = type metadata accessor for Logger();
  v33 = OUTLINED_FUNCTION_12_1(v32, static Logger.siriPhone);
  v34 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_6_43(v34))
  {
    v35 = OUTLINED_FUNCTION_65_0();
    OUTLINED_FUNCTION_59(v35);
    OUTLINED_FUNCTION_16_38(&dword_0, v36, v37, "#PhoneCallNLContextProvider makeNeedsConfirmationContextFor");
    OUTLINED_FUNCTION_26_22();
  }

  static PhoneCallNLContextProvider.needsConfirmationContext(parameter:resolutionResult:)();
  v24(v31);
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v31, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  OUTLINED_FUNCTION_65();
}

void PhoneCallNLContextProvider.makeNeedsValueContextFor(intent:parameter:resolutionResult:_:)()
{
  OUTLINED_FUNCTION_66();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = *v0;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  OUTLINED_FUNCTION_21(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v12);
  OUTLINED_FUNCTION_50_3();
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  v14 = OUTLINED_FUNCTION_12_1(v13, static Logger.siriPhone);
  v15 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_6_43(v15))
  {
    v16 = OUTLINED_FUNCTION_65_0();
    OUTLINED_FUNCTION_59(v16);
    OUTLINED_FUNCTION_16_38(&dword_0, v17, v18, "#PhoneCallNLContextProvider makeNeedsValueContextFor");
    OUTLINED_FUNCTION_26_22();
  }

  static PhoneCallNLContextProvider.makeNeedsValueContextFor(parameter:)(v7, v5);
  type metadata accessor for NLContextUpdate();
  OUTLINED_FUNCTION_23_3();
  __swift_storeEnumTagSinglePayload(v19, v20, v21, v22);
  v3(v1);
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v1, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  OUTLINED_FUNCTION_65();
}

uint64_t PhoneCallNLContextProvider.makeNeedsDisambiguationContextFor(intent:parameter:resolutionResult:_:)()
{
  OUTLINED_FUNCTION_66();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  v13 = OUTLINED_FUNCTION_12_1(v12, static Logger.siriPhone);
  v14 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_6_43(v14))
  {
    v15 = OUTLINED_FUNCTION_65_0();
    OUTLINED_FUNCTION_59(v15);
    OUTLINED_FUNCTION_16_38(&dword_0, v16, v17, "#PhoneCallNLContextProvider makeNeedsDisambiguationContextFor");
    OUTLINED_FUNCTION_26_22();
  }

  v18 = [v7 disambiguationItems];
  v19 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v20 = *(v19 + 16);

  v21 = &selRef_alternatives;
  if (v20)
  {
    v21 = &selRef_disambiguationItems;
  }

  v22 = [v7 *v21];
  v23 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v24 = swift_allocObject();
  *(v24 + 16) = v5;
  *(v24 + 24) = v3;
  v25 = *(*v1 + class metadata base offset for PhoneCallNLContextProvider + 40);

  v25(v11, v9, v23, partial apply for closure #1 in PhoneCallNLContextProvider.makeNeedsDisambiguationContextFor(intent:parameter:resolutionResult:_:), v24);

  OUTLINED_FUNCTION_65();
}

uint64_t closure #1 in PhoneCallNLContextProvider.makeNeedsDisambiguationContextFor(intent:parameter:resolutionResult:_:)(uint64_t a1, void (*a2)(char *))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v10 - v6;
  v8 = type metadata accessor for NLContextUpdate();
  (*(*(v8 - 8) + 16))(v7, a1, v8);
  __swift_storeEnumTagSinglePayload(v7, 0, 1, v8);
  a2(v7);
  return outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v7, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
}

uint64_t PhoneCallNLContextProvider.makeEnableAppForSiriContextFor(app:_:)(uint64_t a1, void (*a2)(char *))
{
  v4 = *v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  OUTLINED_FUNCTION_21(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v8);
  v10 = &v16 - v9;
  static PhoneCallNLContextProvider.makeTCCConfirmationContext(app:)();
  type metadata accessor for NLContextUpdate();
  OUTLINED_FUNCTION_23_3();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
  a2(v10);
  return outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v10, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
}

void static PhoneCallNLContextProvider.makeTCCConfirmationContext(app:)()
{
  static PhoneCallNLContextProvider.makeGenericConfirmationNLv3Context()();
  v0 = [objc_allocWithZone(SAAceConfirmationContext) init];
  [v0 setReason:SAAceConfirmationReasonAUTHORIZE_SIRIKIT_APPValue];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v1 = OUTLINED_FUNCTION_48_0();
  *(v1 + 16) = xmmword_426260;
  *(v1 + 32) = v0;
  v3 = v0;
  NLContextUpdate.conversationStateAttachments.setter();
  v2 = type metadata accessor for MachineUtteranceBuilder();
  OUTLINED_FUNCTION_41_1(v2);
  MachineUtteranceBuilder.init()();
  App.appIdentifier.getter();
  dispatch thunk of MachineUtteranceBuilder.addMappingIfPresent(node:value:)();

  dispatch thunk of MachineUtteranceBuilder.build()();

  NLContextUpdate.nlInput.setter();
  OUTLINED_FUNCTION_3_71();
  static PhoneCallNLContextProvider.makeSDAForConfirmation()();
  NLContextUpdate.nluSystemDialogActs.setter();
}

void PhoneCallNLContextProvider.makeNeedsDisambiguationContextFor(parameter:items:completion:)()
{
  OUTLINED_FUNCTION_66();
  v1 = v0;
  v43 = v2;
  v42 = v3;
  v37 = v4;
  v40 = v5;
  v41 = v6;
  v34 = *v0;
  v7 = type metadata accessor for NLContextUpdate();
  v8 = OUTLINED_FUNCTION_7(v7);
  v36 = v9;
  v11 = *(v10 + 64);
  __chkstk_darwin(v8);
  OUTLINED_FUNCTION_4();
  v35 = v13 - v12;
  OUTLINED_FUNCTION_15_0();
  v14 = type metadata accessor for CATOption();
  v15 = OUTLINED_FUNCTION_21(v14);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  OUTLINED_FUNCTION_4();
  v38 = v7;
  v39 = swift_allocBox();
  v19 = v18;
  NLContextUpdate.init()();
  PhoneCallNLConstants.canonicalName.getter(1);
  NLContextUpdate.weightedPromptTargetDomain.setter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  OUTLINED_FUNCTION_102_0();
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_424FF0;
  OUTLINED_FUNCTION_50_17();
  lazy protocol witness table accessor for type String and conformance String();
  OUTLINED_FUNCTION_17_25();
  OUTLINED_FUNCTION_56_7();

  v46 = PhoneCallNLConstants.canonicalName.getter(6);
  v47 = v21;
  OUTLINED_FUNCTION_23_22();
  OUTLINED_FUNCTION_47_19(v22, v23);
  v24 = String.uppercased()();
  String.append(_:)(v24);

  v25 = v47;
  *(v20 + 32) = v46;
  *(v20 + 40) = v25;
  OUTLINED_FUNCTION_49_15();
  v45[0] = 32;
  v45[1] = 0xE100000000000000;
  v44[0] = 95;
  v44[1] = 0xE100000000000000;
  OUTLINED_FUNCTION_17_25();
  OUTLINED_FUNCTION_56_7();

  v46 = PhoneCallNLConstants.canonicalName.getter(6);
  v47 = v26;
  OUTLINED_FUNCTION_47_19(v46, v26);
  v27 = String.uppercased()();
  String.append(_:)(v27);

  v28 = v47;
  *(v20 + 48) = v46;
  *(v20 + 56) = v28;
  NLContextUpdate.weightedPromptResponseOptions.setter();

  v29._countAndFlagsBits = v41;
  v29._object = v40;
  if ((PhoneCallSlotNames.init(rawValue:)(v29).value & 0xFE) == 4)
  {
    v30 = specialized _arrayConditionalCast<A, B>(_:)(v37);
    if (v30)
    {
      v31 = v30;
      outlined init with copy of SignalProviding(v0 + *(*v0 + class metadata base offset for PhoneCallNLContextProvider + 16), v45);
      outlined init with copy of SignalProviding(v0 + *(*v0 + class metadata base offset for PhoneCallNLContextProvider + 24), v48);
      outlined init with copy of SignalProviding(v45, &v46);
      type metadata accessor for PhoneCallDisplayTextCATs();
      static CATOption.defaultMode.getter();
      type metadata accessor for CATGlobals();
      outlined init with copy of SignalProviding(v48, v44);
      CATGlobals.__allocating_init(device:)();
      v32 = CATWrapper.__allocating_init(options:globals:)();
      __swift_destroy_boxed_opaque_existential_1(v45);
      v48[5] = v32;
      OUTLINED_FUNCTION_102_0();
      v33 = swift_allocObject();
      v33[2] = v39;
      v33[3] = v31;
      v33[4] = v1;
      v33[5] = v42;
      v33[6] = v43;
      v33[7] = v34;

      PhoneContactDisplayHintFactory.build(for:_:)(v31, partial apply for closure #1 in PhoneCallNLContextProvider.makeNeedsDisambiguationContextFor(parameter:items:completion:), v33);

      outlined destroy of PhoneContactDisplayHintFactory(&v46);
    }
  }

  else
  {
    (*(v36 + 16))(v35, v19, v38);
    v42(v35);
    (*(v36 + 8))(v35, v38);
  }

  OUTLINED_FUNCTION_65();
}

uint64_t closure #1 in PhoneCallNLContextProvider.makeNeedsDisambiguationContextFor(parameter:items:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(char *))
{
  v7 = type metadata accessor for NLContextUpdate();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = swift_projectBox();
  swift_beginAccess();

  NLContextUpdate.displayHints.setter();
  swift_endAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_426980;
  *(v13 + 32) = PhoneCallNLConstants.canonicalName.getter(3);
  *(v13 + 40) = v14;
  *(v13 + 48) = PhoneCallNLConstants.canonicalName.getter(5);
  *(v13 + 56) = v15;
  *(v13 + 64) = PhoneCallNLConstants.canonicalName.getter(13);
  *(v13 + 72) = v16;
  swift_beginAccess();
  NLContextUpdate.weightedPromptResponseTargets.setter();
  NLContextUpdate.weightedPromptStrict.setter();
  swift_endAccess();
  static PhoneCallNLContextProvider.getRREntities(persons:deviceState:)();
  swift_beginAccess();
  NLContextUpdate.rrEntities.setter();
  swift_endAccess();
  static PhoneCallNLContextProvider.makeSDAForDisambiguateContact(contacts:)(a3);
  swift_beginAccess();
  NLContextUpdate.nluSystemDialogActs.setter();
  swift_endAccess();
  swift_beginAccess();
  (*(v8 + 16))(v11, v12, v7);
  a5(v11);
  return (*(v8 + 8))(v11, v7);
}

void static PhoneCallNLContextProvider.getRREntities(persons:deviceState:)()
{
  OUTLINED_FUNCTION_66();
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s32SiriReferenceResolutionDataModel15GroupIdentifierVSgMd, &_s32SiriReferenceResolutionDataModel15GroupIdentifierVSgMR);
  OUTLINED_FUNCTION_21(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v5);
  v56 = &v48 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s32SiriReferenceResolutionDataModel8RREntityVSgMd, &_s32SiriReferenceResolutionDataModel8RREntityVSgMR);
  OUTLINED_FUNCTION_21(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v10);
  v12 = &v48 - v11;
  v13 = type metadata accessor for RREntity();
  v14 = OUTLINED_FUNCTION_7(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  __chkstk_darwin(v14);
  OUTLINED_FUNCTION_16_2();
  v55 = v19;
  OUTLINED_FUNCTION_4_0();
  __chkstk_darwin(v20);
  OUTLINED_FUNCTION_91();
  v58 = v21;
  OUTLINED_FUNCTION_15_0();
  v22 = type metadata accessor for UUID();
  v23 = OUTLINED_FUNCTION_7(v22);
  v25 = v24;
  v27 = *(v26 + 64);
  __chkstk_darwin(v23);
  OUTLINED_FUNCTION_4();
  v30 = v29 - v28;
  UUID.init()();
  v52 = UUID.uuidString.getter();
  v57 = v31;
  (*(v25 + 8))(v30, v22);
  v32 = specialized Array.count.getter(v1);
  v33 = 0;
  v53 = v16;
  v54 = (v16 + 32);
  v50 = v16 + 8;
  v51 = (v16 + 16);
  v59 = _swiftEmptyArrayStorage;
  while (1)
  {
    if (v32 == v33)
    {

      OUTLINED_FUNCTION_65();
      return;
    }

    if ((v1 & 0xC000000000000001) != 0)
    {
      v34 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v33 >= *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_17;
      }

      v34 = *(v1 + 8 * v33 + 32);
    }

    v35 = v34;
    v36 = v33 + 1;
    if (__OFADD__(v33, 1))
    {
      break;
    }

    INPerson.toRREntity()();
    if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
    {

      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v12, &_s32SiriReferenceResolutionDataModel8RREntityVSgMd, &_s32SiriReferenceResolutionDataModel8RREntityVSgMR);
      ++v33;
    }

    else
    {
      v49 = *v54;
      v49(v58, v12, v13);

      GroupIdentifier.init(id:seq:)();
      type metadata accessor for GroupIdentifier();
      OUTLINED_FUNCTION_23_3();
      __swift_storeEnumTagSinglePayload(v37, v38, v39, v40);
      v41 = v58;
      RREntity.group.setter();
      (*v51)(v55, v41, v13);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v45 = v59[2];
        OUTLINED_FUNCTION_92_0();
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v59 = v46;
      }

      v42 = v59[2];
      if (v42 >= v59[3] >> 1)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v59 = v47;
      }

      v43 = v53;
      (*(v53 + 8))(v58, v13);
      v44 = v59;
      v59[2] = v42 + 1;
      v49(v44 + ((*(v43 + 80) + 32) & ~*(v43 + 80)) + *(v43 + 72) * v42, v55, v13);
      v33 = v36;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
}

uint64_t static PhoneCallNLContextProvider.makeSDAForDisambiguateContact(contacts:)(uint64_t a1)
{
  v86 = type metadata accessor for Siri_Nlu_External_SystemDialogAct();
  v85 = *(v86 - 8);
  v2 = *(v85 + 64);
  __chkstk_darwin(v86);
  v83 = &v79 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = type metadata accessor for Siri_Nlu_External_SystemGaveOptions();
  v82 = *(v84 - 8);
  v4 = *(v82 + 64);
  v5 = __chkstk_darwin(v84);
  v80 = &v79 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v81 = &v79 - v7;
  v8 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v97 = *(v8 - 8);
  v9 = *(v97 + 64);
  v10 = __chkstk_darwin(v8);
  v101 = &v79 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v88 = &v79 - v13;
  v14 = __chkstk_darwin(v12);
  v16 = &v79 - v15;
  __chkstk_darwin(v14);
  v89 = &v79 - v17;
  v96 = a1;
  result = specialized Array.count.getter(a1);
  if (result)
  {
    if (result < 1)
    {
      __break(1u);
      return result;
    }

    v20 = 0;
    v21 = (v97 + 16);
    v100 = (v97 + 8);
    v92 = v97 + 32;
    v93 = v96 & 0xC000000000000001;
    v22 = _swiftEmptyArrayStorage;
    *&v19 = 136315138;
    v87 = v19;
    v94 = result;
    v95 = v16;
    v23 = v89;
    do
    {
      if (v93)
      {
        v24 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v24 = *(v96 + 8 * v20 + 32);
      }

      v25 = v24;
      v26 = type metadata accessor for UsoTaskBuilder_call_common_PhoneCall();
      v27 = *(v26 + 48);
      v28 = *(v26 + 52);
      swift_allocObject();
      v105 = UsoTaskBuilder_call_common_PhoneCall.init()();
      v29 = type metadata accessor for UsoEntityBuilder_common_PhoneCall();
      v30 = *(v29 + 48);
      v31 = *(v29 + 52);
      swift_allocObject();
      v104 = UsoEntityBuilder_common_PhoneCall.init()();
      v32 = type metadata accessor for UsoEntityBuilder_common_Person();
      v33 = *(v32 + 48);
      v34 = *(v32 + 52);
      swift_allocObject();
      v103 = UsoEntityBuilder_common_Person.init()();
      v35 = type metadata accessor for UsoEntityBuilder_common_PhoneNumber();
      v36 = *(v35 + 48);
      v37 = *(v35 + 52);
      swift_allocObject();
      v102 = UsoEntityBuilder_common_PhoneNumber.init()();
      v38 = [v25 personHandle];
      v39 = v38;
      v99 = v20;
      if (v38)
      {
        v40 = [v38 label];

        if (v40)
        {
          static String._unconditionallyBridgeFromObjectiveC(_:)();
        }
      }

      dispatch thunk of UsoEntityBuilder_common_PhoneNumber.setLabel(value:)();

      v98 = v25;
      v41 = [v25 displayName];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      dispatch thunk of UsoEntityBuilder_common_Person.setName(value:)();

      dispatch thunk of UsoEntityBuilder_common_Person.setSpecifyingContactAddress(value:)();

      dispatch thunk of UsoEntityBuilder_common_PhoneCall.addRecipients(value:)();

      dispatch thunk of Uso_VerbTemplateBuilder_Target.setTarget(value:)();
      UsoTaskBuilder.toUserStatedTaskDialogAct()();
      if (one-time initialization token for siriPhone != -1)
      {
        swift_once();
      }

      v42 = type metadata accessor for Logger();
      __swift_project_value_buffer(v42, static Logger.siriPhone);
      v43 = *v21;
      (*v21)(v16, v23, v8);
      v44 = Logger.logObject.getter();
      v45 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        v47 = swift_slowAlloc();
        v106[0] = v47;
        *v46 = v87;
        v48 = v16;
        v43(v88, v16, v8);
        v49 = _sSS27PhoneCallFlowDelegatePluginE10describingSS21InternalSwiftProtobuf7Message_p_tcfCTf4en_n12SiriNLUTypes0K27_Nlu_External_UserDialogActV_Tt0g5();
        v90 = v43;
        v91 = v22;
        v50 = v8;
        v52 = v51;
        v53 = *v100;
        v54 = v48;
        v23 = v89;
        (*v100)(v54, v50);
        v55 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v49, v52, v106);
        v8 = v50;
        v22 = v91;

        *(v46 + 4) = v55;
        _os_log_impl(&dword_0, v44, v45, "#PhoneCallNLContextProvider Building UserStatedTask for start call disambiguation: %s", v46, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v47);
        v56 = v53;
        v43 = v90;
      }

      else
      {

        v56 = *v100;
        (*v100)(v16, v8);
      }

      v57 = v99;
      v43(v101, v23, v8);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v60 = v22[2];
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v22 = v61;
      }

      v58 = v98;
      v59 = v22[2];
      if (v59 >= v22[3] >> 1)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v22 = v62;
      }

      v20 = v57 + 1;

      v56(v23, v8);
      v22[2] = v59 + 1;
      (*(v97 + 32))(v22 + ((*(v97 + 80) + 32) & ~*(v97 + 80)) + *(v97 + 72) * v59, v101, v8);
      v16 = v95;
    }

    while (v94 != v20);
  }

  if (one-time initialization token for siriPhone != -1)
  {
    swift_once();
  }

  v63 = type metadata accessor for Logger();
  __swift_project_value_buffer(v63, static Logger.siriPhone);

  v64 = Logger.logObject.getter();
  v65 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v64, v65))
  {
    v66 = swift_slowAlloc();
    v67 = swift_slowAlloc();
    v106[0] = v67;
    *v66 = 136315138;
    v68 = Array.description.getter();
    v70 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v68, v69, v106);

    *(v66 + 4) = v70;

    _os_log_impl(&dword_0, v64, v65, "#PhoneCallNLContextProvider Returning SystemGaveOptions for start call disambiguation: %s", v66, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v67);
  }

  else
  {
  }

  v71 = v81;
  Siri_Nlu_External_SystemGaveOptions.init()();
  Siri_Nlu_External_SystemGaveOptions.choices.setter();
  v72 = v83;
  Siri_Nlu_External_SystemDialogAct.init()();
  v73 = v82;
  v74 = v84;
  (*(v82 + 16))(v80, v71, v84);
  Siri_Nlu_External_SystemDialogAct.gaveOptions.setter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D29_Nlu_External_SystemDialogActVGMd, &_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D29_Nlu_External_SystemDialogActVGMR);
  v75 = v85;
  v76 = *(v85 + 72);
  v77 = (*(v85 + 80) + 32) & ~*(v85 + 80);
  v78 = swift_allocObject();
  *(v78 + 16) = xmmword_424FD0;
  (*(v75 + 32))(v78 + v77, v72, v86);
  (*(v73 + 8))(v71, v74);
  return v78;
}

void static PhoneCallNLContextProvider.makeSDAForConfirmation()()
{
  OUTLINED_FUNCTION_66();
  v87 = v1;
  v3 = v2;
  v5 = v4;
  v97 = type metadata accessor for PhoneError();
  v6 = OUTLINED_FUNCTION_23_1(v97);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  OUTLINED_FUNCTION_16_2();
  v96 = v9;
  OUTLINED_FUNCTION_4_0();
  __chkstk_darwin(v10);
  OUTLINED_FUNCTION_91();
  v95 = v11;
  OUTLINED_FUNCTION_15_0();
  v12 = type metadata accessor for Siri_Nlu_External_SystemDialogAct();
  v13 = OUTLINED_FUNCTION_7(v12);
  v98 = v14;
  v99 = v13;
  v16 = *(v15 + 64);
  __chkstk_darwin(v13);
  OUTLINED_FUNCTION_16_2();
  OUTLINED_FUNCTION_9_3();
  __chkstk_darwin(v17);
  v19 = &v85 - v18;
  v20 = type metadata accessor for Siri_Nlu_External_SystemOffered();
  v21 = OUTLINED_FUNCTION_7(v20);
  v100 = v22;
  v101 = v21;
  v24 = *(v23 + 64);
  __chkstk_darwin(v21);
  OUTLINED_FUNCTION_16_2();
  OUTLINED_FUNCTION_9_3();
  __chkstk_darwin(v25);
  OUTLINED_FUNCTION_91();
  v102 = v26;
  OUTLINED_FUNCTION_15_0();
  v90 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v27 = OUTLINED_FUNCTION_7(v90);
  v89 = v28;
  v30 = *(v29 + 64);
  __chkstk_darwin(v27);
  OUTLINED_FUNCTION_16_2();
  OUTLINED_FUNCTION_9_3();
  __chkstk_darwin(v31);
  OUTLINED_FUNCTION_22_22();
  v32 = type metadata accessor for Siri_Nlu_External_UsoGraph();
  v33 = OUTLINED_FUNCTION_21(v32);
  v35 = *(v34 + 64);
  __chkstk_darwin(v33);
  OUTLINED_FUNCTION_4();
  v36 = type metadata accessor for Siri_Nlu_External_UserWantedToProceed();
  v37 = OUTLINED_FUNCTION_7(v36);
  v39 = v38;
  v41 = *(v40 + 64);
  __chkstk_darwin(v37);
  OUTLINED_FUNCTION_12_5();
  v44 = v42 - v43;
  __chkstk_darwin(v45);
  v47 = &v85 - v46;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology17UsoBuilderOptionsVSgMd, &_s12SiriOntology17UsoBuilderOptionsVSgMR);
  OUTLINED_FUNCTION_21(v48);
  v50 = *(v49 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v51);
  v53 = &v85 - v52;
  v54 = v5(0);
  OUTLINED_FUNCTION_41_1(v54);
  v55 = v3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v56 = OUTLINED_FUNCTION_48_0();
  *(v56 + 16) = xmmword_426260;
  *(v56 + 32) = v55;
  v57 = type metadata accessor for UsoBuilderOptions();
  __swift_storeEnumTagSinglePayload(v53, 1, 1, v57);
  v93 = v55;

  v58 = static UsoGraphBuilder.buildGraphWithOptions(taskBuilders:options:)();

  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v53, &_s12SiriOntology17UsoBuilderOptionsVSgMd, &_s12SiriOntology17UsoBuilderOptionsVSgMR);
  Siri_Nlu_External_UserWantedToProceed.init()();
  static UsoGraphProtoWriter.toSwiftProtobuf(graph:vocabManager:)();
  v92 = v58;
  Siri_Nlu_External_UserWantedToProceed.reference.setter();
  Siri_Nlu_External_UserDialogAct.init()();
  v94 = v47;
  v95 = v39;
  v59 = *(v39 + 16);
  v96 = v36;
  v59(v44, v47, v36);
  Siri_Nlu_External_UserDialogAct.wantedToProceed.setter();
  v60 = v102;
  Siri_Nlu_External_SystemOffered.init()();
  v61 = v89;
  v62 = v90;
  (*(v89 + 16))(v88, v0, v90);
  Siri_Nlu_External_SystemOffered.offeredAct.setter();
  Siri_Nlu_External_SystemDialogAct.init()();
  v64 = v100;
  v63 = v101;
  v65 = OUTLINED_FUNCTION_57_14(v100);
  v66(v65, v60, v63);
  Siri_Nlu_External_SystemDialogAct.offered.setter();
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

  v67 = type metadata accessor for Logger();
  v68 = OUTLINED_FUNCTION_12_1(v67, static Logger.siriPhone);
  v69 = static os_log_type_t.debug.getter();
  v70 = os_log_type_enabled(v68, v69);
  v72 = v98;
  v71 = v99;
  if (v70)
  {
    v73 = OUTLINED_FUNCTION_42();
    v91 = OUTLINED_FUNCTION_36();
    v103 = v91;
    *v73 = 136315138;
    OUTLINED_FUNCTION_19_3();
    swift_beginAccess();
    v74 = v86;
    (*(v72 + 16))(v86, v19, v71);
    v75 = _sSS27PhoneCallFlowDelegatePluginE10describingSS21InternalSwiftProtobuf7Message_p_tcfCTf4en_n12SiriNLUTypes0K29_Nlu_External_SystemDialogActV_Tt0g5(v74);
    v77 = v61;
    v78 = v19;
    v79 = v71;
    v80 = v62;
    v81 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v75, v76, &v103);

    *(v73 + 4) = v81;
    v62 = v80;
    v71 = v79;
    v19 = v78;
    v61 = v77;
    _os_log_impl(&dword_0, v68, v69, v87, v73, 0xCu);
    v69 = v91;
    __swift_destroy_boxed_opaque_existential_1(v91);
    v64 = v100;
    OUTLINED_FUNCTION_26_0();
    v63 = v101;
    OUTLINED_FUNCTION_26_0();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D29_Nlu_External_SystemDialogActVGMd, &_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D29_Nlu_External_SystemDialogActVGMR);
  v82 = *(v72 + 72);
  v83 = *(v72 + 80);
  v84 = OUTLINED_FUNCTION_30_24();
  *(v84 + 16) = xmmword_424FD0;
  OUTLINED_FUNCTION_19_3();
  swift_beginAccess();
  (*(v72 + 16))(v69 + v84, v19, v71);

  (*(v64 + 8))(v102, v63);
  (*(v61 + 8))(v0, v62);
  (*(v95 + 8))(v94, v96);
  (*(v72 + 8))(v19, v71);
  OUTLINED_FUNCTION_65();
}

uint64_t static PhoneCallNLContextProvider.buildVoiceMailListFollowUpOfferContext()()
{
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  v1 = OUTLINED_FUNCTION_12_1(v0, static Logger.siriPhone);
  static os_log_type_t.debug.getter();
  OUTLINED_FUNCTION_39_5();
  if (os_log_type_enabled(v1, v2))
  {
    *OUTLINED_FUNCTION_65_0() = 0;
    OUTLINED_FUNCTION_36_0(&dword_0, v3, v4, "#PhoneCallNLContextProvider buildVoiceMailListFollowUpOfferContext");
    OUTLINED_FUNCTION_26_0();
  }

  static PhoneCallNLContextProvider.buildSingleVoiceMailFollowUpOfferContext()();
  v6 = NLContextUpdate.weightedPromptResponseOptions.modify();
  if (*v5)
  {
    v7 = v5;
    String.uppercased()();
    OUTLINED_FUNCTION_34_13();
    v25 = v8;
    v9 = lazy protocol witness table accessor for type String and conformance String();
    OUTLINED_FUNCTION_8_53(v9, v10, v11, v12, v13, v14, &type metadata for String, v15, &type metadata for String, v9, v9, v9, 95, 0xE100000000000000, v25);
    OUTLINED_FUNCTION_17_25();
    StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

    v26 = PhoneCallNLConstants.canonicalName.getter(14);
    v27 = v16;
    v17._countAndFlagsBits = OUTLINED_FUNCTION_2_2();
    v17._object = 0xE700000000000000;
    String.append(_:)(v17);
    v18 = String.uppercased()();
    String.append(_:)(v18);

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    v19 = *(*v7 + 16);
    specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    v20 = *v7;
    *(v20 + 16) = v19 + 1;
    v21 = v20 + 16 * v19;
    *(v21 + 32) = v26;
    *(v21 + 40) = v27;
  }

  v6(v28, 0);
  v22 = [objc_allocWithZone(SAAceConfirmationContext) init];
  [v22 setReason:SAAceConfirmationReasonCONTINUE_READINGValue];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v23 = OUTLINED_FUNCTION_48_0();
  *(v23 + 16) = xmmword_426260;
  *(v23 + 32) = v22;
  return NLContextUpdate.conversationStateAttachments.setter();
}

uint64_t static PhoneCallNLContextProvider.makeContextForPlayingVoicemails()()
{
  static PhoneCallNLContextProvider.buildVoiceMailListFollowUpOfferContext()();
  OUTLINED_FUNCTION_7_52();
  static PhoneCallNLContextProvider.makeSDAForConfirmation()();
  return NLContextUpdate.nluSystemDialogActs.setter();
}

void static PhoneCallNLContextProvider.makeSDAForNeedsValueForContact()()
{
  OUTLINED_FUNCTION_66();
  v55 = type metadata accessor for PhoneError();
  v0 = OUTLINED_FUNCTION_23_1(v55);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  OUTLINED_FUNCTION_16_2();
  v54 = v3;
  OUTLINED_FUNCTION_4_0();
  __chkstk_darwin(v4);
  OUTLINED_FUNCTION_91();
  v53 = v5;
  OUTLINED_FUNCTION_15_0();
  v57 = type metadata accessor for Siri_Nlu_External_SystemDialogAct();
  v6 = OUTLINED_FUNCTION_7(v57);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6);
  OUTLINED_FUNCTION_4();
  v13 = v12 - v11;
  v14 = type metadata accessor for Siri_Nlu_External_UsoGraph();
  v15 = OUTLINED_FUNCTION_21(v14);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  OUTLINED_FUNCTION_4();
  v60 = type metadata accessor for Siri_Nlu_External_SystemPrompted();
  v18 = OUTLINED_FUNCTION_7(v60);
  v20 = v19;
  v22 = *(v21 + 64);
  __chkstk_darwin(v18);
  OUTLINED_FUNCTION_16_2();
  v59 = v23;
  OUTLINED_FUNCTION_4_0();
  __chkstk_darwin(v24);
  v26 = &v53 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology17UsoBuilderOptionsVSgMd, &_s12SiriOntology17UsoBuilderOptionsVSgMR);
  OUTLINED_FUNCTION_21(v27);
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v30);
  v32 = &v53 - v31;
  v33 = type metadata accessor for UsoTaskBuilder_call_common_PhoneCall();
  OUTLINED_FUNCTION_41_1(v33);
  v34 = UsoTaskBuilder_call_common_PhoneCall.init()();
  v35 = type metadata accessor for UsoEntityBuilder_common_PhoneCall();
  OUTLINED_FUNCTION_41_1(v35);
  v36 = UsoEntityBuilder_common_PhoneCall.init()();
  v37 = type metadata accessor for UsoEntityBuilder_common_Person();
  OUTLINED_FUNCTION_41_1(v37);
  UsoEntityBuilder_common_Person.init()();
  dispatch thunk of UsoEntityBuilder_common_PhoneCall.addRecipients(value:)();

  v56 = v36;
  dispatch thunk of Uso_VerbTemplateBuilder_Target.setTarget(value:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v38 = OUTLINED_FUNCTION_48_0();
  *(v38 + 16) = xmmword_426260;
  *(v38 + 32) = v34;
  v39 = type metadata accessor for UsoBuilderOptions();
  __swift_storeEnumTagSinglePayload(v32, 1, 1, v39);
  v58 = v34;

  static UsoGraphBuilder.buildGraphWithOptions(taskBuilders:options:)();

  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v32, &_s12SiriOntology17UsoBuilderOptionsVSgMd, &_s12SiriOntology17UsoBuilderOptionsVSgMR);
  Siri_Nlu_External_SystemPrompted.init()();
  static UsoGraphProtoWriter.toSwiftProtobuf(graph:vocabManager:)();
  Siri_Nlu_External_SystemPrompted.target.setter();
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

  v40 = type metadata accessor for Logger();
  v41 = OUTLINED_FUNCTION_12_1(v40, static Logger.siriPhone);
  v42 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = OUTLINED_FUNCTION_42();
    v55 = OUTLINED_FUNCTION_36();
    v61 = v55;
    *v43 = 136315138;
    OUTLINED_FUNCTION_19_3();
    swift_beginAccess();
    v44 = *(v20 + 16);
    LODWORD(v54) = v42;
    v45 = v59;
    v44(v59, v26, v60);
    v46 = _sSS27PhoneCallFlowDelegatePluginE10describingSS21InternalSwiftProtobuf7Message_p_tcfCTf4en_n12SiriNLUTypes0K28_Nlu_External_SystemPromptedV_Tt0g5(v45);
    v48 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v46, v47, &v61);

    *(v43 + 4) = v48;
    _os_log_impl(&dword_0, v41, v54, "#PhoneCallNLContextProvider Returning NLUSystemPrompted for prompt for start call: %s", v43, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v55);
    OUTLINED_FUNCTION_26_0();
    OUTLINED_FUNCTION_26_22();
  }

  else
  {

    v45 = v59;
  }

  Siri_Nlu_External_SystemDialogAct.init()();
  OUTLINED_FUNCTION_19_3();
  swift_beginAccess();
  v49 = v60;
  (*(v20 + 16))(v45, v26, v60);
  Siri_Nlu_External_SystemDialogAct.prompted.setter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D29_Nlu_External_SystemDialogActVGMd, &_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D29_Nlu_External_SystemDialogActVGMR);
  v50 = *(v8 + 72);
  v51 = *(v8 + 80);
  v52 = OUTLINED_FUNCTION_30_24();
  *(v52 + 16) = xmmword_424FD0;
  (*(v8 + 32))(v52 + v13, v13, v57);

  (*(v20 + 8))(v26, v49);
  OUTLINED_FUNCTION_65();
}

uint64_t static PhoneCallNLContextProvider.buildSingleVoiceMailFollowUpOfferContext()()
{
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  v1 = OUTLINED_FUNCTION_12_1(v0, static Logger.siriPhone);
  static os_log_type_t.debug.getter();
  OUTLINED_FUNCTION_39_5();
  if (os_log_type_enabled(v1, v2))
  {
    *OUTLINED_FUNCTION_65_0() = 0;
    OUTLINED_FUNCTION_36_0(&dword_0, v3, v4, "#PhoneCallNLContextProvider buildSingleVoiceMailFollowUpOfferContext");
    OUTLINED_FUNCTION_26_0();
  }

  NLContextUpdate.init()();
  PhoneCallNLConstants.canonicalName.getter(1);
  NLContextUpdate.weightedPromptTargetDomain.setter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_426980;
  String.uppercased()();
  OUTLINED_FUNCTION_34_13();
  OUTLINED_FUNCTION_24_26();
  v6 = lazy protocol witness table accessor for type String and conformance String();
  OUTLINED_FUNCTION_8_53(v6, v7, v8, v9, v10, v11, v12, v13, &type metadata for String, v6, v6, v6, v71, v76, v81);
  OUTLINED_FUNCTION_17_25();
  OUTLINED_FUNCTION_56_7();

  v14 = PhoneCallNLConstants.canonicalName.getter(14);
  v91 = v15;
  OUTLINED_FUNCTION_51_18(v14, v15, v16, v17, v18, v19, v20, v21, v59, v62, v65, v68, v72, v77, v82, v86, v14);
  v22 = String.uppercased()();
  String.append(_:)(v22);

  *(v5 + 32) = *v88;
  *(v5 + 40) = v91;
  String.uppercased()();
  OUTLINED_FUNCTION_34_13();
  OUTLINED_FUNCTION_8_53(v23, v24, v25, v26, v27, v28, v29, v30, v60, v63, v6, v6, 95, 0xE100000000000000, v31);
  OUTLINED_FUNCTION_17_25();
  OUTLINED_FUNCTION_56_7();
  OUTLINED_FUNCTION_53_17();
  v32 = PhoneCallNLConstants.canonicalName.getter(15);
  v92 = v33;
  OUTLINED_FUNCTION_51_18(v32, v33, v34, v35, v36, v37, v38, v39, &type metadata for String, v6, v66, v69, v73, v78, v83, 0xE100000000000000, v32);
  v40 = String.uppercased()();
  String.append(_:)(v40);

  *(v5 + 48) = *v89;
  *(v5 + 56) = v92;
  OUTLINED_FUNCTION_49_15();
  OUTLINED_FUNCTION_34_13();
  OUTLINED_FUNCTION_24_26();
  OUTLINED_FUNCTION_8_53(v41, v42, v43, v44, v45, v46, v47, v48, v61, v64, v6, v6, v74, v79, v84);
  OUTLINED_FUNCTION_17_25();
  OUTLINED_FUNCTION_56_7();

  v49 = PhoneCallNLConstants.canonicalName.getter(6);
  v93 = v50;
  OUTLINED_FUNCTION_51_18(v49, v50, v51, v52, v53, v54, v55, v56, &type metadata for String, v6, v67, v70, v75, v80, v85, v87, v49);
  v57 = String.uppercased()();
  String.append(_:)(v57);

  *(v5 + 64) = *v90;
  *(v5 + 72) = v93;
  NLContextUpdate.weightedPromptResponseOptions.setter();
  return NLContextUpdate.weightedPromptStrict.setter();
}

uint64_t static PhoneCallNLContextProvider.buildSingleGroupFaceTimeInviteFollowUpOfferContext()()
{
  NLContextUpdate.init()();
  PhoneCallNLConstants.canonicalName.getter(1);
  NLContextUpdate.weightedPromptTargetDomain.setter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  OUTLINED_FUNCTION_102_0();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_424FF0;
  *(v0 + 32) = PhoneCallNLConstants.canonicalName.getter(6);
  *(v0 + 40) = v1;
  *(v0 + 48) = PhoneCallNLConstants.canonicalName.getter(15);
  *(v0 + 56) = v2;
  OUTLINED_FUNCTION_65_11();
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_426980;
  OUTLINED_FUNCTION_50_17();
  v4 = lazy protocol witness table accessor for type String and conformance String();
  OUTLINED_FUNCTION_20_30(v4, v5, v6, v7, v8, v9, v10, v11, &type metadata for String, v4, v4, v4, v41, v44, 95, 0xE100000000000000, 32);
  OUTLINED_FUNCTION_17_25();
  OUTLINED_FUNCTION_55_15();
  OUTLINED_FUNCTION_53_17();
  v47 = PhoneCallNLConstants.canonicalName.getter(6);
  v50 = v12;
  OUTLINED_FUNCTION_23_22();
  OUTLINED_FUNCTION_47_19(v13, v14);
  v15 = String.uppercased()();
  String.append(_:)(v15);

  *(v3 + 32) = v47;
  *(v3 + 40) = v50;
  OUTLINED_FUNCTION_49_15();
  OUTLINED_FUNCTION_38_17();
  OUTLINED_FUNCTION_20_30(v16, v17, v18, v19, v20, v21, v22, v23, v39, v40, v4, v4, v42, v45, 95, 0xE100000000000000, v24);
  OUTLINED_FUNCTION_17_25();
  OUTLINED_FUNCTION_55_15();

  v48 = PhoneCallNLConstants.canonicalName.getter(6);
  v51 = v25;
  OUTLINED_FUNCTION_47_19(v48, v25);
  v26 = String.uppercased()();
  String.append(_:)(v26);

  *(v3 + 48) = v48;
  *(v3 + 56) = v51;
  String.uppercased()();
  OUTLINED_FUNCTION_38_17();
  OUTLINED_FUNCTION_20_30(v27, v28, v29, v30, v31, v32, v33, v34, &type metadata for String, v4, v4, v4, v43, v46, 95, 0xE100000000000000, v35);
  OUTLINED_FUNCTION_17_25();
  OUTLINED_FUNCTION_55_15();

  v49 = PhoneCallNLConstants.canonicalName.getter(15);
  v52 = v36;
  OUTLINED_FUNCTION_47_19(v49, v36);
  v37 = String.uppercased()();
  String.append(_:)(v37);

  *(v3 + 64) = v49;
  *(v3 + 72) = v52;
  NLContextUpdate.weightedPromptResponseOptions.setter();
  OUTLINED_FUNCTION_3_71();
  static PhoneCallNLContextProvider.makeSDAForConfirmation()();
  return NLContextUpdate.nluSystemDialogActs.setter();
}

uint64_t closure #1 in static PhoneCallNLContextProvider.makeNLContextUpdateForDisambiguation(apps:device:)@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v50 = a3;
  v52 = a4;
  v46 = type metadata accessor for PhoneError();
  v6 = *(*(v46 - 8) + 64);
  v7 = __chkstk_darwin(v46);
  v45 = (&v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v7);
  v44 = &v43 - v9;
  v10 = type metadata accessor for Locale();
  v48 = *(v10 - 8);
  v49 = v10;
  v11 = *(v48 + 64);
  __chkstk_darwin(v10);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Siri_Nlu_External_UsoGraph();
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v47 = type metadata accessor for Siri_Nlu_External_UserStatedTask();
  v16 = *(v47 - 8);
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(v47);
  v20 = &v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v43 - v21;
  v23 = *a1;
  Siri_Nlu_External_UserStatedTask.init()();
  v24 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  dispatch thunk of DeviceState.siriLocale.getter();
  v25 = v51;
  _s27PhoneCallFlowDelegatePlugin0aB17NLContextProviderC14createUsoGraph33_3C2ABB69DDB872D121E37A32A4E694A93for6locale12SiriNLUTypes0v14_Nlu_External_iJ0V0V13AppResolution0Z0C_10Foundation6LocaleVtKFZSo8INIntentC_So16INIntentResponseCTt2g5();
  if (v25)
  {
    v28 = v44;
    v29 = v45;
    (*(v48 + 8))(v13, v49);
    if (one-time initialization token for siriPhone != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    __swift_project_value_buffer(v30, static Logger.siriPhone);
    v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo26SIRINLUUserWantedToProceedCmMd, &_sSo26SIRINLUUserWantedToProceedCmMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo26SIRINLUUserWantedToProceedCmmMd, &_sSo26SIRINLUUserWantedToProceedCmmMR);
    v31 = String.init<A>(describing:)();
    v33 = v32;
    swift_getErrorValue();
    v34 = Error.localizedDescription.getter();
    *v29 = v31;
    v29[1] = v33;
    v29[2] = v34;
    v29[3] = v35;
    swift_storeEnumTagMultiPayload();
    PhoneError.logged()(v28);
    outlined destroy of PhoneError(v29);
    lazy protocol witness table accessor for type RREntity and conformance RREntity(&lazy protocol witness table cache variable for type PhoneError and conformance PhoneError, type metadata accessor for PhoneError);
    v36 = Error.localizedDescription.getter();
    v38 = v37;
    outlined destroy of PhoneError(v28);

    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v53 = v42;
      *v41 = 136315138;
      *(v41 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v38, &v53);
      _os_log_impl(&dword_0, v39, v40, "%s", v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v42);
    }

    static SiriKitLifecycle._logCrashToEventBus(_:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    (*(v48 + 8))(v13, v49);
    Siri_Nlu_External_UserStatedTask.task.setter();
    Siri_Nlu_External_UserDialogAct.init()();
    v26 = v47;
    (*(v16 + 16))(v20, v22, v47);
    Siri_Nlu_External_UserDialogAct.userStatedTask.setter();
    return (*(v16 + 8))(v22, v26);
  }

  return result;
}

void PhoneCallNLContextProvider.__allocating_init()()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  PhoneCallNLContextProvider.init()();
}

uint64_t PhoneCallNLContextProvider.__ivar_destroyer()
{
  OUTLINED_FUNCTION_35_0();
  __swift_destroy_boxed_opaque_existential_1((v0 + *(v1 + class metadata base offset for PhoneCallNLContextProvider + 16)));
  return __swift_destroy_boxed_opaque_existential_1((v0 + *(*v0 + class metadata base offset for PhoneCallNLContextProvider + 24)));
}

void *PhoneCallNLContextProvider.deinit()
{
  v0 = DefaultNLContextProvider.deinit();
  __swift_destroy_boxed_opaque_existential_1((v0 + *(*v0 + class metadata base offset for PhoneCallNLContextProvider + 16)));
  __swift_destroy_boxed_opaque_existential_1((v0 + *(*v0 + class metadata base offset for PhoneCallNLContextProvider + 24)));
  return v0;
}

uint64_t PhoneCallNLContextProvider.__deallocating_deinit()
{
  PhoneCallNLContextProvider.deinit();

  return swift_deallocClassInstance();
}

void _s27PhoneCallFlowDelegatePlugin0A25ContactDisplayHintFactoryV5build3for11deviceState14appInfoBuilderSay07SiriKitC00gH0VGSay0Q13AppResolution0S0CG_AH06DeviceM0_pAA0sO8Building_ptFZTf4nnen_nAA0soP0C_Tt1t2g5()
{
  OUTLINED_FUNCTION_66();
  v106 = v1;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow13SemanticValueVSgMd, &_s11SiriKitFlow13SemanticValueVSgMR);
  OUTLINED_FUNCTION_21(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v7);
  v92 = &v83 - v8;
  OUTLINED_FUNCTION_15_0();
  v93 = type metadata accessor for DisplayHint();
  v9 = OUTLINED_FUNCTION_7(v93);
  v95 = v10;
  v12 = *(v11 + 64);
  __chkstk_darwin(v9);
  OUTLINED_FUNCTION_4();
  v103 = v14 - v13;
  OUTLINED_FUNCTION_15_0();
  v108 = type metadata accessor for SemanticValue();
  v15 = OUTLINED_FUNCTION_7(v108);
  v94 = v16;
  v18 = *(v17 + 64);
  __chkstk_darwin(v15);
  OUTLINED_FUNCTION_16_2();
  OUTLINED_FUNCTION_9_3();
  __chkstk_darwin(v19);
  v102 = &v83 - v20;
  OUTLINED_FUNCTION_4_0();
  __chkstk_darwin(v21);
  v109 = &v83 - v22;
  OUTLINED_FUNCTION_4_0();
  __chkstk_darwin(v23);
  v25 = &v83 - v24;
  v98 = type metadata accessor for Locale();
  v26 = OUTLINED_FUNCTION_7(v98);
  v28 = v27;
  v30 = *(v29 + 64);
  __chkstk_darwin(v26);
  OUTLINED_FUNCTION_4();
  v97 = v32 - v31;
  OUTLINED_FUNCTION_15_0();
  v33 = type metadata accessor for OrdinalDisplayHintsBuilder();
  v34 = OUTLINED_FUNCTION_7(v33);
  v36 = v35;
  v38 = *(v37 + 64);
  __chkstk_darwin(v34);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_50_3();
  v39 = _swiftEmptyArrayStorage;
  v112 = _swiftEmptyArrayStorage;
  v105 = v3;
  v40 = specialized Array.count.getter(v3);
  v86 = v33;
  v85 = v36;
  v84 = v0;
  if (v40)
  {
    v99 = v40;
    if (v40 < 1)
    {
      __break(1u);
      return;
    }

    v41 = 0;
    v104 = v105 & 0xC000000000000001;
    v96 = (v28 + 8);
    v101 = (v94 + 16);
    v90 = v94 + 32;
    v89 = (v94 + 8);
    v88 = v95 + 32;
    v107 = _swiftEmptyArrayStorage;
    v33 = v99;
    v87 = v25;
    do
    {
      if (v104)
      {
        v42 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v42 = *(v105 + 8 * v41 + 32);
      }

      v43 = v42;
      if (App.isFirstParty()())
      {
        v43 = static UserFacingCallingAppUtils.getCommAppForLaunch(originalApp:preferredCallProvider:deviceState:)(v42, 0, v106);
      }

      App.appIdentifier.getter();
      if (v44)
      {
        v110 = v39;
        v45 = v106[4];
        __swift_project_boxed_opaque_existential_1(v106, v106[3]);
        v46 = v97;
        dispatch thunk of DeviceState.siriLocale.getter();
        type metadata accessor for AppInfoBuilder();
        swift_initStackObject();
        AppInfoBuilder.getAppName(_:requestedLocale:)();
        v48 = v47;
        (*v96)(v46, v98);
        if (v48)
        {
          v100 = v43;
          if (one-time initialization token for applicationId != -1)
          {
            swift_once();
          }

          TerminalOntologyNode.name.getter();
          v49 = v87;
          SemanticValue.init(string:label:)();
          if (one-time initialization token for appName != -1)
          {
            OUTLINED_FUNCTION_14_44();
            swift_once();
          }

          TerminalOntologyNode.name.getter();
          SemanticValue.init(string:label:)();
          v50 = *v101;
          (*v101)(v102, v49, v108);
          v39 = v110;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v66 = v39[2];
            OUTLINED_FUNCTION_92_0();
            specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
            v39 = v67;
          }

          v52 = v39[2];
          v51 = v39[3];
          if (v52 >= v51 >> 1)
          {
            OUTLINED_FUNCTION_17_33(v51);
            specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
            v39 = v68;
          }

          v39[2] = v52 + 1;
          OUTLINED_FUNCTION_36_5();
          v55 = v108;
          (*(v54 + 32))(v39 + v53 + *(v54 + 72) * v52, v102, v108);
          v50(v92, v49, v55);
          OUTLINED_FUNCTION_23_3();
          __swift_storeEnumTagSinglePayload(v56, v57, v58, v55);
          v50(v91, v109, v55);
          OUTLINED_FUNCTION_55();
          DisplayHint.init(idValue:displayValue:)();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v69 = *(v107 + 2);
            OUTLINED_FUNCTION_92_0();
            specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
            v107 = v70;
          }

          v60 = *(v107 + 2);
          v59 = *(v107 + 3);
          if (v60 >= v59 >> 1)
          {
            OUTLINED_FUNCTION_17_33(v59);
            specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
            v107 = v71;
          }

          v61 = *v89;
          v62 = v108;
          (*v89)(v109, v108);
          v61(v49, v62);
          v63 = v107;
          *(v107 + 2) = v60 + 1;
          OUTLINED_FUNCTION_36_5();
          (*(v65 + 32))(&v63[v64 + *(v65 + 72) * v60], v103, v93);
          v112 = v63;
        }

        else
        {

          v39 = v110;
        }

        v33 = v99;
      }

      else
      {
      }

      ++v41;
    }

    while (v33 != v41);
  }

  if (one-time initialization token for reference != -1)
  {
    OUTLINED_FUNCTION_25_23();
  }

  TerminalOntologyNode.name.getter();
  v72 = v84;
  OrdinalDisplayHintsBuilder.init(referenceNode:)();
  v73 = OrdinalDisplayHintsBuilder.build(for:)();

  (*(v85 + 8))(v72, v86);
  specialized Array.append<A>(contentsOf:)(v73);
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

  v74 = type metadata accessor for Logger();
  v75 = OUTLINED_FUNCTION_12_1(v74, static Logger.siriPhone);
  static os_log_type_t.debug.getter();
  OUTLINED_FUNCTION_39_5();
  if (os_log_type_enabled(v75, v76))
  {
    v77 = OUTLINED_FUNCTION_42();
    v78 = OUTLINED_FUNCTION_36();
    v111 = v78;
    *v77 = 136315138;
    OUTLINED_FUNCTION_19_3();
    swift_beginAccess();

    v79 = Array.description.getter();
    v81 = v80;

    v82 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v79, v81, &v111);

    *(v77 + 4) = v82;
    _os_log_impl(&dword_0, v75, v33, "Built display hints for app disambiguation: %s'", v77, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v78);
    OUTLINED_FUNCTION_26_0();
    OUTLINED_FUNCTION_26_0();
  }

  OUTLINED_FUNCTION_19_3();
  swift_beginAccess();
  OUTLINED_FUNCTION_65();
}

uint64_t partial apply for closure #1 in static PhoneCallNLContextProvider.makeNLContextUpdateForDisambiguation(apps:device:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return closure #1 in static PhoneCallNLContextProvider.makeNLContextUpdateForDisambiguation(apps:device:)(a1, *(v2 + 32), *(v2 + 40), a2);
}

uint64_t partial apply for closure #1 in PhoneCallNLContextProvider.makeNeedsDisambiguationContextFor(parameter:items:completion:)(uint64_t a1)
{
  v2 = *(v1 + 48);
  v3 = *(v1 + 56);
  return closure #1 in PhoneCallNLContextProvider.makeNeedsDisambiguationContextFor(parameter:items:completion:)(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40));
}

uint64_t lazy protocol witness table accessor for type RREntity and conformance RREntity(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_26_22()
{
}

uint64_t OUTLINED_FUNCTION_40_19()
{

  return _assertionFailure(_:_:file:line:flags:)();
}

uint64_t OUTLINED_FUNCTION_50_17()
{

  return String.uppercased()()._countAndFlagsBits;
}

uint64_t OUTLINED_FUNCTION_53_17()
{
}

uint64_t OUTLINED_FUNCTION_55_15()
{

  return StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
}

uint64_t OUTLINED_FUNCTION_56_7()
{

  return StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
}

uint64_t OUTLINED_FUNCTION_65_11()
{

  return NLContextUpdate.weightedPromptResponseTargets.setter();
}

uint64_t OUTLINED_FUNCTION_66_10()
{

  return swift_allocObject();
}

Swift::Bool __swiftcall PhoneCallNLIntent.isAddParticipant()()
{
  OUTLINED_FUNCTION_34_14(v0, v1);
  v2();
  OUTLINED_FUNCTION_20_31();
  if (v5)
  {
    return 0;
  }

  PhoneCallVerb.rawValue.getter(v3);
  OUTLINED_FUNCTION_78_8();
  if (v5)
  {
    v7 = v6 == 0xEE00746E61706963;
  }

  else
  {
    v7 = 0;
  }

  if (v7)
  {
  }

  else
  {
    OUTLINED_FUNCTION_61_15();
    OUTLINED_FUNCTION_33_2();
  }

  return 1;
}

Swift::Bool __swiftcall PhoneCallNLIntent.isAnyCallToReference()()
{
  OUTLINED_FUNCTION_24_3();
  if (!PhoneCallNLIntent.isAudioCall()())
  {
    OUTLINED_FUNCTION_20_0();
    if (!PhoneCallNLIntent.isVideoCall()())
    {
      return 0;
    }
  }

  OUTLINED_FUNCTION_20_0();

  return PhoneCallNLIntent.hasAnyContactReference()();
}

Swift::Bool __swiftcall PhoneCallNLIntent.hasAnyConfirmation()()
{
  OUTLINED_FUNCTION_61_6();
  OUTLINED_FUNCTION_24_3();
  v2 = *(v1 + 64);
  v2();
  OUTLINED_FUNCTION_56_8();
  if (!v9)
  {
    v6 = PhoneCallConfirmation.description.getter(v3);
    if (v6 == 28526 && v7 == 0xE200000000000000)
    {
LABEL_17:

      goto LABEL_18;
    }

    _stringCompareWithSmolCheck(_:_:expecting:)();
    OUTLINED_FUNCTION_62_15();
    if (v0)
    {
      goto LABEL_18;
    }
  }

  v4 = OUTLINED_FUNCTION_20_0();
  (v2)(v4);
  OUTLINED_FUNCTION_56_8();
  if (v9)
  {
    goto LABEL_18;
  }

  PhoneCallConfirmation.description.getter(v5);
  OUTLINED_FUNCTION_27_22();
  if (v9)
  {
    v11 = v10 == 0xE300000000000000;
  }

  else
  {
    v11 = 0;
  }

  if (v11)
  {
    goto LABEL_17;
  }

  _stringCompareWithSmolCheck(_:_:expecting:)();
  OUTLINED_FUNCTION_33_2();
LABEL_18:
  OUTLINED_FUNCTION_60_1();
  return result;
}

uint64_t PhoneCallNLIntent.applicationId.getter(uint64_t a1, uint64_t a2)
{
  (*(a2 + 16))(v8);
  v2 = v9;
  if (v9)
  {
    v3 = v10;
    __swift_project_boxed_opaque_existential_1(v8, v9);
    v4 = *(v3 + 8);
    v5 = OUTLINED_FUNCTION_40_0();
    v6(v5, v3);
    OUTLINED_FUNCTION_70_1();
    __swift_destroy_boxed_opaque_existential_1(v8);
  }

  else
  {
    outlined destroy of PhoneCallApp?(v8, &_s27PhoneCallFlowDelegatePlugin0aB3App_pSgMd);
  }

  return v2;
}

uint64_t PhoneCallNLIntent.appName.getter(uint64_t a1, uint64_t a2)
{
  (*(a2 + 16))(v8);
  v2 = v9;
  if (v9)
  {
    v3 = v10;
    __swift_project_boxed_opaque_existential_1(v8, v9);
    v4 = *(v3 + 16);
    v5 = OUTLINED_FUNCTION_40_0();
    v6(v5, v3);
    OUTLINED_FUNCTION_70_1();
    __swift_destroy_boxed_opaque_existential_1(v8);
  }

  else
  {
    outlined destroy of PhoneCallApp?(v8, &_s27PhoneCallFlowDelegatePlugin0aB3App_pSgMd);
  }

  return v2;
}

Swift::Bool __swiftcall PhoneCallNLIntent.isGroupFaceTimeCall()()
{
  OUTLINED_FUNCTION_24_3();
  v2 = *(v1 + 128);
  v3 = *(v2() + 16);

  OUTLINED_FUNCTION_20_0();
  v4 = PhoneCallNLIntent.isFaceTimeCall()();
  if (v3)
  {
    if (v4)
    {
      v5 = OUTLINED_FUNCTION_20_0();
      v6 = (v2)(v5);
      goto LABEL_6;
    }

    return 0;
  }

  if (!v4)
  {
    return 0;
  }

  OUTLINED_FUNCTION_97_3();
  v7 = OUTLINED_FUNCTION_20_0();
  v6 = v8(v7);
LABEL_6:
  v9 = *(v6 + 16);

  if (v9 > 1)
  {
    return 1;
  }

  v11 = *(v0 + 136);
  v12 = OUTLINED_FUNCTION_20_0();
  v14 = *(v13(v12) + 16);

  return v14 != 0;
}

Swift::Bool __swiftcall PhoneCallNLIntent.isVideoCall()()
{
  OUTLINED_FUNCTION_24_3();
  if (PhoneCallNLIntent.hasAnyFaceTime()() && (OUTLINED_FUNCTION_20_0(), !PhoneCallNLIntent.hasAudioCallSemantic()()))
  {
    OUTLINED_FUNCTION_20_0();
    return !PhoneCallNLIntent.isFind()();
  }

  else
  {
    return 0;
  }
}

uint64_t PhoneCallNLIntent.isOutgoingCall()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t))
{
  OUTLINED_FUNCTION_24_3();
  if (v6())
  {
    return 1;
  }

  v7 = OUTLINED_FUNCTION_20_0();
  if (a4(v7))
  {
    return 1;
  }

  v9 = OUTLINED_FUNCTION_20_0();

  return a5(v9);
}

Swift::Bool __swiftcall PhoneCallNLIntent.hasVideoCallSemantic()()
{
  OUTLINED_FUNCTION_61_6();
  v1 = v0;
  OUTLINED_FUNCTION_37_21();
  v3 = *(v2 + 80);
  v3();
  OUTLINED_FUNCTION_69_9();
  if (!v5)
  {
    PhoneCallNoun.rawValue.getter(v4);
    OUTLINED_FUNCTION_103_2();
    if (v5)
    {
      v7 = v6 == 0xE800000000000000;
    }

    else
    {
      v7 = 0;
    }

    if (!v7)
    {
      OUTLINED_FUNCTION_35_18();
    }
  }

  v8 = *(v1 + 104);
  v9 = OUTLINED_FUNCTION_8_2();
  v10(v9);
  OUTLINED_FUNCTION_20_31();
  if (!v5)
  {
    PhoneCallVerb.rawValue.getter(v11);
    OUTLINED_FUNCTION_103_2();
    if (v12)
    {
      v14 = v13 == 0xE800000000000000;
    }

    else
    {
      v14 = 0;
    }

    if (!v14)
    {
      OUTLINED_FUNCTION_35_18();
    }
  }

  v15 = OUTLINED_FUNCTION_8_2();
  (v3)(v15);
  OUTLINED_FUNCTION_69_9();
  if (!v5)
  {
    v17 = PhoneCallNoun.rawValue.getter(v16);
    if (v17 != 0x61665F70756F7267 || v18 != 0xEE00656D69746563)
    {
      _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  OUTLINED_FUNCTION_60_1();
  return result;
}

Swift::Bool __swiftcall PhoneCallNLIntent.hasAudioCallSemantic()()
{
  OUTLINED_FUNCTION_61_6();
  v2 = v1;
  v4 = v3;
  OUTLINED_FUNCTION_92_3();
  (*(v5 + 80))();
  OUTLINED_FUNCTION_69_9();
  if (!v9)
  {
    v7 = PhoneCallNoun.rawValue.getter(v6);
    v9 = v7 == v0 && v8 == 0xEE006F6964756120;
    if (!v9)
    {
      _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  (*(v2 + 104))(v4, v2);
  OUTLINED_FUNCTION_20_31();
  if (!v9)
  {
    v11 = PhoneCallVerb.rawValue.getter(v10);
    if (v11 != v0 || v12 != 0xEE006F6964756120)
    {
      _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  OUTLINED_FUNCTION_60_1();
  return result;
}

Swift::Bool __swiftcall PhoneCallNLIntent.isRedialOrCallBack()()
{
  OUTLINED_FUNCTION_24_3();
  v0 = PhoneCallNLIntent.isRedial()();
  OUTLINED_FUNCTION_20_0();
  return (v0 | PhoneCallNLIntent.isCallBack()()) & 1;
}

uint64_t specialized Collection.firstIndex(where:)(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v5 = 0;
  v6 = *(a3 + 16);
  v7 = a3 + 32;
  while (1)
  {
    if (v6 == v5)
    {
      return 0;
    }

    v9 = *(v7 + v5);
    result = a1(&v9);
    if (v3)
    {
      return result;
    }

    if (result)
    {
      break;
    }

    ++v5;
  }

  return v5;
}

void specialized Sequence<>.contains(_:)()
{
  OUTLINED_FUNCTION_66();
  v3 = v2;
  OUTLINED_FUNCTION_74_6();
  v5 = *(v4 + 16);
  v6 = (v4 + 32);
  do
  {
    if (v5-- == 0)
    {
      break;
    }

    v8 = 0xE600000000000000;
    v9 = v1;
    switch(*v6)
    {
      case 1:
        v8 = 0xE300000000000000;
        v9 = OUTLINED_FUNCTION_53_18();
        break;
      case 2:
        v9 = OUTLINED_FUNCTION_19_30();
        break;
      case 3:
        v8 = 0xE700000000000000;
        v9 = OUTLINED_FUNCTION_4_7();
        break;
      case 4:
        v8 = 0xE800000000000000;
        v9 = OUTLINED_FUNCTION_7_53();
        break;
      case 5:
        v8 = 0xE800000000000000;
        v9 = OUTLINED_FUNCTION_11_42() & 0xFFFFFFFFFFFFLL | 0x676E000000000000;
        break;
      case 6:
        v8 = 0xE400000000000000;
        v9 = OUTLINED_FUNCTION_110_3();
        break;
      case 7:
        v8 = 0xE800000000000000;
        v9 = OUTLINED_FUNCTION_6_59();
        break;
      case 8:
        v8 = 0xE700000000000000;
        v9 = OUTLINED_FUNCTION_9_52();
        break;
      case 9:
        v8 = 0xE700000000000000;
        v9 = OUTLINED_FUNCTION_5_64();
        break;
      case 0xA:
        v9 = 0x646C6F486E6FLL;
        break;
      case 0xB:
        v9 = OUTLINED_FUNCTION_12_46() & 0xFFFFFFFFFFFFLL | 0x676E000000000000;
        v8 = 0xE900000000000065;
        break;
      case 0xC:
        v9 = OUTLINED_FUNCTION_8_9();
        v8 = 0xEC0000006C69616DLL;
        break;
      case 0xD:
        v9 = OUTLINED_FUNCTION_54_18();
        v8 = 0x8000000000453620;
        break;
      default:
        break;
    }

    v10 = 0xE600000000000000;
    v11 = v1;
    switch(v3)
    {
      case 1:
        v10 = 0xE300000000000000;
        v11 = 7824750;
        break;
      case 2:
        v11 = 0x746E65636572;
        break;
      case 3:
        v10 = 0xE700000000000000;
        v11 = 0x64657661736E75;
        break;
      case 4:
        v10 = 0xE800000000000000;
        v11 = 0x6465766965636572;
        break;
      case 5:
        v10 = 0xE800000000000000;
        v11 = 0x676E696F6774756FLL;
        break;
      case 6:
        v10 = 0xE400000000000000;
        OUTLINED_FUNCTION_101_3();
        break;
      case 7:
        v10 = 0xE800000000000000;
        v11 = 0x7373656E69737562;
        break;
      case 8:
        v10 = 0xE700000000000000;
        v11 = 0x746E6572727563;
        break;
      case 9:
        v10 = 0xE700000000000000;
        v11 = 0x676E69676E6972;
        break;
      case 10:
        v11 = 0x646C6F486E6FLL;
        break;
      case 11:
        v11 = 0x676E615265746164;
        v10 = 0xE900000000000065;
        break;
      case 12:
        v11 = 0x6563696F5677656ELL;
        v10 = 0xEC0000006C69616DLL;
        break;
      case 13:
        v11 = 0xD000000000000014;
        v10 = 0x8000000000453620;
        break;
      default:
        break;
    }

    if (v9 == v11 && v8 == v10)
    {

      break;
    }

    _stringCompareWithSmolCheck(_:_:expecting:)();
    OUTLINED_FUNCTION_20_2();

    ++v6;
  }

  while ((v0 & 1) == 0);
  OUTLINED_FUNCTION_65();
}

BOOL specialized Sequence<>.contains(_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v6 = *v3++;
  }

  while (v6 != a1);
  return v4 != 0;
}

void *PhoneCallNLIntent.getPersons()(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_41_21(a1, a2);
  v3 = v2();
  v4 = *(v3 + 16);
  if (v4)
  {
    v9 = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v5 = v3 + 32;
    do
    {
      outlined init with copy of SharedGlobalsProviding();
      OUTLINED_FUNCTION_86(v8);
      SiriPhoneContact.toINPerson()();
      __swift_destroy_boxed_opaque_existential_1(v8);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v6 = v9[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v5 += 40;
      --v4;
    }

    while (v4);

    return v9;
  }

  else
  {

    return _swiftEmptyArrayStorage;
  }
}

Swift::Bool __swiftcall PhoneCallNLIntent.isBusinessRedirectCall()()
{
  OUTLINED_FUNCTION_66();
  OUTLINED_FUNCTION_57_15(v1, v2);
  v4 = v3();
  if (v4)
  {
    v5 = (v4 + 32);
    v6 = *(v4 + 16);
    while (2)
    {
      if (v6-- != 0)
      {
        switch(*v5)
        {
          case 1:
            OUTLINED_FUNCTION_53_18();
            goto LABEL_18;
          case 2:
            OUTLINED_FUNCTION_19_30();
            goto LABEL_18;
          case 3:
            OUTLINED_FUNCTION_4_7();
            goto LABEL_18;
          case 4:
            OUTLINED_FUNCTION_7_53();
            goto LABEL_18;
          case 5:
            OUTLINED_FUNCTION_11_42();
            goto LABEL_18;
          case 6:
            OUTLINED_FUNCTION_110_3();
            goto LABEL_18;
          case 7:
            OUTLINED_FUNCTION_6_59();
            goto LABEL_18;
          case 8:
            OUTLINED_FUNCTION_9_52();
            goto LABEL_18;
          case 9:
            OUTLINED_FUNCTION_5_64();
            goto LABEL_18;
          case 0xA:
            OUTLINED_FUNCTION_13_41();
            goto LABEL_18;
          case 0xB:
            OUTLINED_FUNCTION_12_46();
            goto LABEL_18;
          case 0xD:

            break;
          default:
LABEL_18:
            OUTLINED_FUNCTION_79_6();
            OUTLINED_FUNCTION_62_15();
            ++v5;
            if (v0)
            {
              break;
            }

            continue;
        }
      }

      break;
    }
  }

  OUTLINED_FUNCTION_65();
  return result;
}

Swift::Bool __swiftcall PhoneCallNLIntent.isEmergencyContactCall()()
{
  OUTLINED_FUNCTION_41_21(v0, v1);
  v5 = v4();
  OUTLINED_FUNCTION_99_2(v5);
  if (v2)
  {
    OUTLINED_FUNCTION_96_3();
    while (1)
    {
      OUTLINED_FUNCTION_95_3();
      if (v7)
      {
        break;
      }

      OUTLINED_FUNCTION_85_4();
      v8 = OUTLINED_FUNCTION_1_83(v13);
      v10 = SiriPhoneContact.getEmergencyType()(v8, v9);
      if (v11 != 3)
      {
        if (!v11)
        {
          outlined consume of PhoneCallEmergencyType?(v10, 0);

          __swift_destroy_boxed_opaque_existential_1(v13);
          return 1;
        }

        outlined consume of PhoneCallEmergencyType?(v10, v11);
      }

      ++v3;
      __swift_destroy_boxed_opaque_existential_1(v13);
      OUTLINED_FUNCTION_94_6();
      if (v12)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_9:

    return 0;
  }

  return result;
}

Swift::Bool __swiftcall PhoneCallNLIntent.isFaceTimeCall()()
{
  OUTLINED_FUNCTION_24_3();
  if (PhoneCallNLIntent.hasAnyFaceTime()())
  {
    return 1;
  }

  v2 = *(v0 + 80);
  v3 = OUTLINED_FUNCTION_20_0();
  v4(v3);
  OUTLINED_FUNCTION_69_9();
  if (v6)
  {
    return 0;
  }

  PhoneCallNoun.rawValue.getter(v5);
  OUTLINED_FUNCTION_78_8();
  if (v6)
  {
    v8 = v7 == 0xEE00656D69746563;
  }

  else
  {
    v8 = 0;
  }

  if (v8)
  {

    return 1;
  }

  OUTLINED_FUNCTION_61_15();
  OUTLINED_FUNCTION_33_2();
  return 1;
}

void PhoneCallNLIntent.shouldResetRequest(previousNLIntent:)()
{
  OUTLINED_FUNCTION_66();
  v1 = v0;
  v3 = v2;
  OUTLINED_FUNCTION_9_1();
  v5 = v4;
  v7 = *(v6 + 64);
  v9 = __chkstk_darwin(v8);
  v11 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = &v55 - v13;
  outlined init with copy of PhoneCallNLIntent?(v12, v57);
  if (v58)
  {
    outlined init with take of PhoneCallFeatureFlagProviding(v57, v60);
    v58 = v3;
    v59 = v1;
    __swift_allocate_boxed_opaque_existential_1(v57);
    v15 = *(v5 + 16);
    OUTLINED_FUNCTION_77_9();
    v15();
    v16 = OUTLINED_FUNCTION_91_6();
    v18 = static PhoneCallNLIntent.isAppModified(previousNLIntent:currentNLIntent:)(v16, v17);
    __swift_destroy_boxed_opaque_existential_1(v57);
    if (v18)
    {
      if (one-time initialization token for siriPhone != -1)
      {
        OUTLINED_FUNCTION_0_6();
        swift_once();
      }

      v19 = type metadata accessor for Logger();
      __swift_project_value_buffer(v19, static Logger.siriPhone);
      OUTLINED_FUNCTION_91_6();
      outlined init with copy of SharedGlobalsProviding();
      OUTLINED_FUNCTION_77_9();
      v15();
      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v56 = swift_slowAlloc();
        *v22 = 136315394;
        v23 = v59;
        v24 = OUTLINED_FUNCTION_86(v57);
        v25 = PhoneCallNLIntent.applicationId.getter(v24, v23);
        if (v26)
        {
          v27 = v25;
        }

        else
        {
          v27 = 7104878;
        }

        if (v26)
        {
          v28 = v26;
        }

        else
        {
          v28 = 0xE300000000000000;
        }

        __swift_destroy_boxed_opaque_existential_1(v57);
        v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v28, &v56);

        *(v22 + 4) = v29;
        *(v22 + 12) = 2080;
        v30 = PhoneCallNLIntent.applicationId.getter(v3, v1);
        if (v31)
        {
          v32 = v30;
        }

        else
        {
          v32 = 7104878;
        }

        if (v31)
        {
          v33 = v31;
        }

        else
        {
          v33 = 0xE300000000000000;
        }

        (*(v5 + 8))(v14, v3);
        v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v33, &v56);

        *(v22 + 14) = v34;
        _os_log_impl(&dword_0, v20, v21, "#PhoneCallNLIntent applicationId is changed from %s to %s, set shouldResetRequest as true", v22, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_26_0();
        OUTLINED_FUNCTION_26_0();

LABEL_35:
        v45 = v60;
        goto LABEL_36;
      }

      (*(v5 + 8))(v14, v3);
      goto LABEL_30;
    }

    v58 = v3;
    v59 = v1;
    __swift_allocate_boxed_opaque_existential_1(v57);
    OUTLINED_FUNCTION_77_9();
    v15();
    OUTLINED_FUNCTION_91_6();
    static PhoneCallNLIntent.isPhoneCallVerbModified(previousNLIntent:currentNLIntent:)();
    v36 = v35;
    __swift_destroy_boxed_opaque_existential_1(v57);
    if (v36)
    {
      if (one-time initialization token for siriPhone != -1)
      {
        OUTLINED_FUNCTION_0_6();
        swift_once();
      }

      v37 = type metadata accessor for Logger();
      __swift_project_value_buffer(v37, static Logger.siriPhone);
      OUTLINED_FUNCTION_91_6();
      outlined init with copy of SharedGlobalsProviding();
      OUTLINED_FUNCTION_77_9();
      v15();
      v38 = Logger.logObject.getter();
      v39 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        v55 = swift_slowAlloc();
        v56 = v55;
        *v40 = 136315394;
        v42 = v58;
        v41 = v59;
        __swift_project_boxed_opaque_existential_1(v57, v58);
        (*(v41 + 104))(v42, v41);
        OUTLINED_FUNCTION_20_31();
        if (v44)
        {
          v48 = 0xE300000000000000;
          v46 = 7104878;
        }

        else
        {
          v46 = PhoneCallVerb.rawValue.getter(v43);
          v48 = v47;
        }

        __swift_destroy_boxed_opaque_existential_1(v57);
        v49 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v46, v48, &v56);

        *(v40 + 4) = v49;
        *(v40 + 12) = 2080;
        (*(v1 + 104))(v3, v1);
        OUTLINED_FUNCTION_20_31();
        if (v44)
        {
          v53 = 0xE300000000000000;
          v51 = 7104878;
        }

        else
        {
          v51 = PhoneCallVerb.rawValue.getter(v50);
          v53 = v52;
        }

        (*(v5 + 8))(v11, v3);
        v54 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v51, v53, &v56);

        *(v40 + 14) = v54;
        _os_log_impl(&dword_0, v38, v39, "#PhoneCallNLIntent phoneCallVerb is changed from %s to %s, set shouldResetRequest as true", v40, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_26_0();
        OUTLINED_FUNCTION_26_0();

        goto LABEL_35;
      }

      (*(v5 + 8))(v11, v3);
LABEL_30:
      __swift_destroy_boxed_opaque_existential_1(v60);
      v45 = v57;
LABEL_36:
      __swift_destroy_boxed_opaque_existential_1(v45);
      goto LABEL_37;
    }

    __swift_destroy_boxed_opaque_existential_1(v60);
  }

  else
  {
    outlined destroy of PhoneCallApp?(v57, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMd);
  }

LABEL_37:
  OUTLINED_FUNCTION_65();
}

Swift::Bool __swiftcall PhoneCallNLIntent.isEmergencyNumberCall()()
{
  OUTLINED_FUNCTION_41_21(v0, v1);
  v5 = v4();
  OUTLINED_FUNCTION_99_2(v5);
  if (v2)
  {
    OUTLINED_FUNCTION_96_3();
    while (1)
    {
      OUTLINED_FUNCTION_95_3();
      if (v7)
      {
        break;
      }

      OUTLINED_FUNCTION_85_4();
      v8 = OUTLINED_FUNCTION_1_83(v13);
      v10 = SiriPhoneContact.getEmergencyType()(v8, v9);
      if (v11 != 3)
      {
        if (v11 == 2)
        {
          outlined consume of PhoneCallEmergencyType?(v10, 2uLL);

          __swift_destroy_boxed_opaque_existential_1(v13);
          return 1;
        }

        outlined consume of PhoneCallEmergencyType?(v10, v11);
      }

      ++v3;
      __swift_destroy_boxed_opaque_existential_1(v13);
      OUTLINED_FUNCTION_94_6();
      if (v12)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_9:

    return 0;
  }

  return result;
}

Swift::Bool __swiftcall PhoneCallNLIntent.isEmergencyServicesCall()()
{
  OUTLINED_FUNCTION_107_3();
  v29 = v0;
  v30 = v1;
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_41_21(v4, v2);
  v7 = v6();
  v8 = v7;
  v9 = *(v7 + 16);
  if (v9)
  {
    v10 = 0;
    v11 = v7 + 32;
    while (v10 < *(v8 + 16))
    {
      outlined init with copy of SharedGlobalsProviding();
      v12 = v28;
      v13 = OUTLINED_FUNCTION_86(v27);
      v14 = SiriPhoneContact.getEmergencyType()(v13, v12);
      if (v15 != 3)
      {
        if (v15 == 1)
        {
          v16 = 1;
          outlined consume of PhoneCallEmergencyType?(v14, 1uLL);

          __swift_destroy_boxed_opaque_existential_1(v27);
          goto LABEL_10;
        }

        outlined consume of PhoneCallEmergencyType?(v14, v15);
      }

      ++v10;
      __swift_destroy_boxed_opaque_existential_1(v27);
      v11 += 40;
      if (v9 == v10)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
LABEL_27:
    OUTLINED_FUNCTION_0_6();
    swift_once();
    goto LABEL_22;
  }

LABEL_8:

  v16 = 0;
LABEL_10:
  (*(v3 + 72))(v5, v3);
  OUTLINED_FUNCTION_56_8();
  if (v18)
  {
    if (!v16)
    {
      goto LABEL_25;
    }
  }

  else
  {
    PhoneCallDestinationType.rawValue.getter(v17);
    OUTLINED_FUNCTION_27_22();
    if (v18)
    {
      v20 = v19 == 0xE900000000000079;
    }

    else
    {
      v20 = 0;
    }

    if (v20)
    {
    }

    else
    {
      OUTLINED_FUNCTION_111_4();
      OUTLINED_FUNCTION_33_2();
    }
  }

  if (one-time initialization token for siriPhone != -1)
  {
    goto LABEL_27;
  }

LABEL_22:
  v21 = type metadata accessor for Logger();
  __swift_project_value_buffer(v21, static Logger.siriPhone);
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_10_0(v23))
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_33(&dword_0, v24, v25, "#PhoneCallNLIntent EmergencyServices intent");
    OUTLINED_FUNCTION_26_0();
  }

LABEL_25:
  OUTLINED_FUNCTION_106_1();
  return result;
}

Swift::Bool __swiftcall PhoneCallNLIntent.isAnswerCall()()
{
  OUTLINED_FUNCTION_34_14(v0, v1);
  v2();
  OUTLINED_FUNCTION_20_31();
  if (v5)
  {
    return 0;
  }

  PhoneCallVerb.rawValue.getter(v3);
  OUTLINED_FUNCTION_27_22();
  if (v5)
  {
    v7 = v6 == 0xE600000000000000;
  }

  else
  {
    v7 = 0;
  }

  if (v7)
  {
  }

  else
  {
    OUTLINED_FUNCTION_36_19();
    OUTLINED_FUNCTION_33_2();
  }

  return 1;
}

Swift::Bool __swiftcall PhoneCallNLIntent.isHangUpCall()()
{
  OUTLINED_FUNCTION_34_14(v0, v1);
  v2();
  OUTLINED_FUNCTION_20_31();
  if (v5)
  {
    return 0;
  }

  PhoneCallVerb.rawValue.getter(v3);
  OUTLINED_FUNCTION_27_22();
  if (v5)
  {
    v7 = v6 == 0xE700000000000000;
  }

  else
  {
    v7 = 0;
  }

  if (v7)
  {

    return 1;
  }

  else
  {
    OUTLINED_FUNCTION_86_6();
    OUTLINED_FUNCTION_33_2();
    return 0;
  }
}

Swift::Bool __swiftcall PhoneCallNLIntent.isBusinessNameCall()()
{
  OUTLINED_FUNCTION_10_55();
  v2 = (*(v1 + 40))();
  if (!v2)
  {
    return 0;
  }

  v3 = (v2 + 32);
  v4 = *(v2 + 16);
  OUTLINED_FUNCTION_74_6();
  while (2)
  {
    if (!v4)
    {

      return 0;
    }

    switch(*v3)
    {
      case 1:
        OUTLINED_FUNCTION_24_27();
        goto LABEL_18;
      case 2:
        OUTLINED_FUNCTION_19_30();
        goto LABEL_18;
      case 3:
        OUTLINED_FUNCTION_4_7();
        goto LABEL_18;
      case 4:
        OUTLINED_FUNCTION_7_53();
        goto LABEL_18;
      case 5:
        OUTLINED_FUNCTION_11_42();
        goto LABEL_18;
      case 6:
        OUTLINED_FUNCTION_110_3();
        goto LABEL_18;
      case 7:

        goto LABEL_19;
      case 8:
        OUTLINED_FUNCTION_9_52();
        goto LABEL_18;
      case 9:
        OUTLINED_FUNCTION_5_64();
        goto LABEL_18;
      case 0xA:
        OUTLINED_FUNCTION_13_41();
        goto LABEL_18;
      case 0xB:
        OUTLINED_FUNCTION_12_46();
        goto LABEL_18;
      case 0xC:
        OUTLINED_FUNCTION_2_81();
        goto LABEL_18;
      case 0xD:
        OUTLINED_FUNCTION_54_18();
        goto LABEL_18;
      default:
LABEL_18:
        OUTLINED_FUNCTION_35_18();
        OUTLINED_FUNCTION_113_0();
        ++v3;
        --v4;
        if ((v0 & 1) == 0)
        {
          continue;
        }

LABEL_19:

        OUTLINED_FUNCTION_20_0();
        v5 = !PhoneCallNLIntent.hasPhoneNumber()();
        break;
    }

    return v5;
  }
}

Swift::Bool __swiftcall PhoneCallNLIntent.isCallWithReference()()
{
  OUTLINED_FUNCTION_24_3();
  if (!PhoneCallNLIntent.hasCallVerb()())
  {
    return 0;
  }

  v2 = *(v0 + 144);
  v3 = OUTLINED_FUNCTION_20_0();
  v5 = v4(v3);
  specialized Array.count.getter(v5);
  OUTLINED_FUNCTION_40_0();

  return v1 != 0;
}

Swift::Bool __swiftcall PhoneCallNLIntent.isDisplayNameEmergencyContact()()
{
  OUTLINED_FUNCTION_107_3();
  v20 = v0;
  v21 = v1;
  OUTLINED_FUNCTION_41_21(v2, v3);
  v5 = v4();
  v6 = v5;
  v7 = *(v5 + 16);
  if (v7)
  {
    v8 = 0;
    v9 = v5 + 32;
    while (v8 < *(v6 + 16))
    {
      OUTLINED_FUNCTION_85_4();
      v10 = v18;
      v11 = v19;
      __swift_project_boxed_opaque_existential_1(v17, v18);
      v12 = (*(v11 + 408))(v10, v11);
      if (v13)
      {
        if (v12 == 0xD000000000000011 && v13 == 0x800000000045E840)
        {

          __swift_destroy_boxed_opaque_existential_1(v17);
          goto LABEL_15;
        }

        v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

        LOBYTE(v5) = __swift_destroy_boxed_opaque_existential_1(v17);
        if (v15)
        {
          goto LABEL_15;
        }
      }

      else
      {
        LOBYTE(v5) = __swift_destroy_boxed_opaque_existential_1(v17);
      }

      ++v8;
      v9 += 40;
      if (v7 == v8)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_15:

    OUTLINED_FUNCTION_106_1();
  }

  return v5;
}

Swift::Bool __swiftcall PhoneCallNLIntent.isNextAfterPlayingVoiceMail()()
{
  (*(v0 + 112))();
  OUTLINED_FUNCTION_68_7();
  if (v3)
  {
    return 0;
  }

  VoiceMail.VoiceMailVerb.rawValue.getter(v1);
  OUTLINED_FUNCTION_27_22();
  if (v3)
  {
    v5 = v4 == 0xE400000000000000;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
  }

  else
  {
    OUTLINED_FUNCTION_59_8();
    OUTLINED_FUNCTION_33_2();
  }

  return 1;
}

Swift::Bool __swiftcall PhoneCallNLIntent.hasWantedToRepeat()()
{
  OUTLINED_FUNCTION_34_14(v0, v1);
  v2();
  OUTLINED_FUNCTION_20_31();
  if (v5)
  {
    return 0;
  }

  PhoneCallVerb.rawValue.getter(v3);
  OUTLINED_FUNCTION_78_8();
  if (v5)
  {
    v7 = v6 == 0xEC00000074616570;
  }

  else
  {
    v7 = 0;
  }

  if (v7)
  {

    return 1;
  }

  else
  {
    OUTLINED_FUNCTION_61_15();
    OUTLINED_FUNCTION_33_2();
    return 0;
  }
}

Swift::Bool __swiftcall PhoneCallNLIntent.isRepeatAfterPlayingVoiceMail()()
{
  (*(v0 + 112))();
  OUTLINED_FUNCTION_68_7();
  if (v3)
  {
    return 0;
  }

  VoiceMail.VoiceMailVerb.rawValue.getter(v1);
  OUTLINED_FUNCTION_27_22();
  if (v3)
  {
    v5 = v4 == 0xE600000000000000;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {

    return 1;
  }

  else
  {
    OUTLINED_FUNCTION_36_19();
    OUTLINED_FUNCTION_33_2();
    return 0;
  }
}

Swift::Bool __swiftcall PhoneCallNLIntent.isVoiceMailCallOrCallBack()()
{
  OUTLINED_FUNCTION_24_3();
  if (PhoneCallNLIntent.hasCallVerb()())
  {
    OUTLINED_FUNCTION_20_0();
    if (PhoneCallNLIntent.hasNoContactOrReference()())
    {
      return 1;
    }
  }

  OUTLINED_FUNCTION_20_0();
  if (PhoneCallNLIntent.isCallBack()())
  {
    return 1;
  }

  OUTLINED_FUNCTION_20_0();

  return PhoneCallNLIntent.isCallWithReference()();
}

Swift::Bool __swiftcall PhoneCallNLIntent.hasCancellation()()
{
  (*(v0 + 64))();
  OUTLINED_FUNCTION_56_8();
  if (v3)
  {
    return 0;
  }

  PhoneCallConfirmation.description.getter(v1);
  OUTLINED_FUNCTION_27_22();
  if (v3)
  {
    v5 = v4 == 0xE600000000000000;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
  }

  else
  {
    OUTLINED_FUNCTION_36_19();
    OUTLINED_FUNCTION_33_2();
  }

  return 1;
}

Swift::Bool __swiftcall PhoneCallNLIntent.hasRejection()()
{
  (*(v0 + 64))();
  OUTLINED_FUNCTION_56_8();
  if (v6)
  {
    return 0;
  }

  v4 = PhoneCallConfirmation.description.getter(v2);
  v6 = v4 == 28526 && v5 == 0xE200000000000000;
  if (v6)
  {

    return 1;
  }

  else
  {
    _stringCompareWithSmolCheck(_:_:expecting:)();
    OUTLINED_FUNCTION_33_2();
    return v1 & 1;
  }
}

Swift::Bool __swiftcall PhoneCallNLIntent.hasVoiceMail()()
{
  OUTLINED_FUNCTION_10_55();
  (*(v0 + 112))();
  OUTLINED_FUNCTION_68_7();
  if (!v1)
  {
    return 1;
  }

  v2 = OUTLINED_FUNCTION_14_45();
  v3(v2);
  OUTLINED_FUNCTION_43_19();
  return !v1;
}

Swift::Bool __swiftcall PhoneCallNLIntent.hasPhoneNumber()()
{
  OUTLINED_FUNCTION_41_21(v0, v1);
  v5 = v4();
  OUTLINED_FUNCTION_99_2(v5);
  if (v2)
  {
    OUTLINED_FUNCTION_96_3();
    while (1)
    {
      OUTLINED_FUNCTION_95_3();
      if (v7)
      {
        break;
      }

      OUTLINED_FUNCTION_85_4();
      OUTLINED_FUNCTION_1_83(v11);
      v8 = SiriPhoneContact.getPhoneNumber()();
      if (v8.value._object)
      {

        if ((v8.value._object & 0x2000000000000000) != 0)
        {
          v9 = (v8.value._object >> 56) & 0xF;
        }

        else
        {
          v9 = v8.value._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
        }

        __swift_destroy_boxed_opaque_existential_1(v11);
        if (v9)
        {

          return 1;
        }
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_1(v11);
      }

      ++v3;
      OUTLINED_FUNCTION_94_6();
      if (v10)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_13:

    return 0;
  }

  return result;
}

Swift::Bool __swiftcall PhoneCallNLIntent.isRedial()()
{
  OUTLINED_FUNCTION_10_55();
  (*(v0 + 104))();
  OUTLINED_FUNCTION_20_31();
  if (v3)
  {
    return 0;
  }

  PhoneCallVerb.rawValue.getter(v1);
  OUTLINED_FUNCTION_42_17();
  if (v3)
  {
    v5 = v4 == 0xE600000000000000;
  }

  else
  {
    v5 = 0;
  }

  if (!v5)
  {
    OUTLINED_FUNCTION_40_4();
    OUTLINED_FUNCTION_76_6();
    OUTLINED_FUNCTION_62_15();
    return 0;
  }

  OUTLINED_FUNCTION_20_0();
  if (!PhoneCallNLIntent.hasAnyContactReference()())
  {
    OUTLINED_FUNCTION_97_3();
    v6 = OUTLINED_FUNCTION_20_0();
    v8 = *(v7(v6) + 16);

    if (v8)
    {
      if (one-time initialization token for siriPhone != -1)
      {
        OUTLINED_FUNCTION_0_6();
        swift_once();
      }

      v9 = type metadata accessor for Logger();
      __swift_project_value_buffer(v9, static Logger.siriPhone);
      v10 = Logger.logObject.getter();
      v11 = static os_log_type_t.debug.getter();
      if (OUTLINED_FUNCTION_10_0(v11))
      {
        *swift_slowAlloc() = 0;
        OUTLINED_FUNCTION_33(&dword_0, v12, v13, "#PhoneCallNLIntent Not a redial request as utterance contains either number or contact name");
        OUTLINED_FUNCTION_26_0();
      }

      return 0;
    }
  }

  return 1;
}

Swift::Bool __swiftcall PhoneCallNLIntent.isCallBack()()
{
  OUTLINED_FUNCTION_66();
  v2 = v1;
  v4 = v3;
  OUTLINED_FUNCTION_9_1();
  v6 = v5;
  v8 = *(v7 + 64);
  v10 = __chkstk_darwin(v9);
  v12 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v13 + 104);
  v14(v10);
  OUTLINED_FUNCTION_20_31();
  if (v19)
  {
    v16 = 0;
    goto LABEL_35;
  }

  v62 = v14;
  v17 = PhoneCallVerb.rawValue.getter(v15);
  v19 = v17 == 1819042147 && v18 == 0xE400000000000000;
  if (v19)
  {

    goto LABEL_11;
  }

  OUTLINED_FUNCTION_17_34();
  OUTLINED_FUNCTION_80_5();
  if (v0)
  {
LABEL_11:
    v58 = v12;
    v59 = v6;
    v20 = *(v2 + 40);
    v21 = OUTLINED_FUNCTION_55_0();
    v23 = v22(v21);
    v24 = &_swiftEmptyArrayStorage;
    if (v23)
    {
      v24 = v23;
    }

    v25 = *(v24 + 2);
    v57 = v24;
    v26 = v24 + 32;
    OUTLINED_FUNCTION_74_6();
    v60 = 0xE900000000000065;
    v61 = v27;
    while (2)
    {
      v28 = v25-- != 0;
      v16 = v28;
      if (v28)
      {
        switch(*v26)
        {
          case 1:
            OUTLINED_FUNCTION_24_27();
            goto LABEL_32;
          case 2:
            OUTLINED_FUNCTION_19_30();
            goto LABEL_32;
          case 3:
            OUTLINED_FUNCTION_4_7();
            goto LABEL_32;
          case 4:
            OUTLINED_FUNCTION_7_53();
            goto LABEL_32;
          case 5:
            OUTLINED_FUNCTION_11_42();
            goto LABEL_32;
          case 6:

            break;
          case 7:
            OUTLINED_FUNCTION_6_59();
            goto LABEL_32;
          case 8:
            OUTLINED_FUNCTION_9_52();
            goto LABEL_32;
          case 9:
            OUTLINED_FUNCTION_5_64();
            goto LABEL_32;
          case 0xA:
            OUTLINED_FUNCTION_13_41();
            goto LABEL_32;
          case 0xB:
            OUTLINED_FUNCTION_12_46();
            goto LABEL_32;
          case 0xC:
            OUTLINED_FUNCTION_2_81();
            goto LABEL_32;
          case 0xD:
            OUTLINED_FUNCTION_54_18();
            goto LABEL_32;
          default:
LABEL_32:
            OUTLINED_FUNCTION_101_3();
            OUTLINED_FUNCTION_59_8();
            OUTLINED_FUNCTION_113_0();
            ++v26;
            if (v12)
            {
              break;
            }

            continue;
        }
      }

      break;
    }

    v12 = v58;
    v6 = v59;
    goto LABEL_34;
  }

  v16 = 0;
LABEL_34:
  v14 = v62;
LABEL_35:
  v29 = OUTLINED_FUNCTION_55_0();
  v14(v29);
  OUTLINED_FUNCTION_20_31();
  if (v19)
  {
    if (!v16)
    {
      goto LABEL_58;
    }
  }

  else
  {
    v31 = PhoneCallVerb.rawValue.getter(v30);
    if (v31 == 0x636162206C6C6163 && v32 == 0xE90000000000006BLL)
    {
    }

    else
    {
      OUTLINED_FUNCTION_111_4();
      OUTLINED_FUNCTION_80_5();
    }
  }

  OUTLINED_FUNCTION_55_0();
  if (PhoneCallNLIntent.hasAnyContactReference()() || (v34 = *(v2 + 24), v35 = OUTLINED_FUNCTION_55_0(), v37 = *(v36(v35) + 16), , !v37))
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_0_6();
      swift_once();
    }

    v43 = type metadata accessor for Logger();
    __swift_project_value_buffer(v43, static Logger.siriPhone);
    v44 = *(v6 + 16);
    OUTLINED_FUNCTION_77_9();
    v45();
    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      *v48 = 67109120;
      v49 = *(v2 + 24);
      v50 = OUTLINED_FUNCTION_55_0();
      v52 = *(v51(v50) + 16);

      v53 = *(v6 + 8);
      v54 = OUTLINED_FUNCTION_20_0();
      v55(v54);
      *(v48 + 4) = v52 == 0;
      _os_log_impl(&dword_0, v46, v47, "PhoneCallNLIntent contacts empty: %{BOOL}d", v48, 8u);
      OUTLINED_FUNCTION_26_0();
    }

    else
    {
      (*(v6 + 8))(v12, v4);
    }
  }

  else
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_0_6();
      swift_once();
    }

    v38 = type metadata accessor for Logger();
    __swift_project_value_buffer(v38, static Logger.siriPhone);
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_10_0(v40))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_33(&dword_0, v41, v42, "#PhoneCallNLIntent Not a call back request as utterance contains either number or contact name");
      OUTLINED_FUNCTION_26_0();
    }
  }

LABEL_58:
  OUTLINED_FUNCTION_65();
  return result;
}

Swift::Bool __swiftcall PhoneCallNLIntent.isEmergencyResourceCall()()
{
  OUTLINED_FUNCTION_41_21(v0, v1);
  v5 = v4();
  OUTLINED_FUNCTION_99_2(v5);
  if (v2)
  {
    OUTLINED_FUNCTION_96_3();
    while (1)
    {
      OUTLINED_FUNCTION_95_3();
      if (v7)
      {
        break;
      }

      OUTLINED_FUNCTION_85_4();
      v8 = OUTLINED_FUNCTION_1_83(v13);
      v10 = SiriPhoneContact.getEmergencyType()(v8, v9);
      if (v11 >= 3)
      {
        if (v11 != 3)
        {
          outlined consume of PhoneCallEmergencyType?(v10, v11);

          __swift_destroy_boxed_opaque_existential_1(v13);
          return 1;
        }
      }

      else
      {
        outlined consume of PhoneCallEmergencyType?(v10, v11);
      }

      ++v3;
      __swift_destroy_boxed_opaque_existential_1(v13);
      OUTLINED_FUNCTION_94_6();
      if (v12)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_10:

    return 0;
  }

  return result;
}

uint64_t PhoneCallVerb.rawValue.getter(char a1)
{
  result = 1819042147;
  switch(a1)
  {
    case 1:
      result = 0x636162206C6C6163;
      break;
    case 2:
    case 3:
      result = OUTLINED_FUNCTION_17_6();
      break;
    case 4:
      result = OUTLINED_FUNCTION_33_18();
      break;
    case 5:
      result = 1684957542;
      break;
    case 6:
      result = OUTLINED_FUNCTION_72_5();
      break;
    case 7:
      result = 0x79666972616C63;
      break;
    case 8:
      result = 1684104562;
      break;
    case 9:
      result = 0x6D7269666E6F63;
      break;
    case 10:
      result = 0x726577736E61;
      break;
    case 11:
      result = 0x70755F676E6168;
      break;
    case 12:
      result = 0x6574656C6564;
      break;
    case 13:
      result = 0x65526F54746E6177;
      break;
    case 14:
      result = 1852403562;
      break;
    case 15:
      result = 0x6974726150646461;
      break;
    case 16:
      result = 0xD000000000000011;
      break;
    default:
      return result;
  }

  return result;
}

Swift::Bool __swiftcall PhoneCallVerb.isCallOrFaceTime()()
{
  PhoneCallVerb.rawValue.getter(v0);
  OUTLINED_FUNCTION_78_8();
  v4 = v4 && v3 == 0xE400000000000000;
  if (v4)
  {
    goto LABEL_16;
  }

  v5 = v2;
  v6 = OUTLINED_FUNCTION_17_34();

  if (v6)
  {
    return 1;
  }

  OUTLINED_FUNCTION_92_3();
  if (v5 == v6 && v1 == 0xE800000000000000)
  {
LABEL_16:

    return 1;
  }

  v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v8 & 1) == 0)
  {
    if (v5 != v6 || v1 != 0xEE006F6964756120)
    {
      _stringCompareWithSmolCheck(_:_:expecting:)();
      OUTLINED_FUNCTION_33_2();
      return v5 & 1;
    }

    goto LABEL_16;
  }

  return 1;
}

Swift::Bool __swiftcall PhoneCallNLIntent.hasApplicationNameOrId()()
{
  OUTLINED_FUNCTION_24_3();
  v4 = PhoneCallNLIntent.appName.getter(v2, v3);
  specialized Optional<A>.isNilOrEmpty.getter(v4, v5);
  OUTLINED_FUNCTION_62_15();
  if (v1)
  {
    v6 = OUTLINED_FUNCTION_20_0();
    v8 = PhoneCallNLIntent.applicationId.getter(v6, v7);
    specialized Optional<A>.isNilOrEmpty.getter(v8, v9);
    OUTLINED_FUNCTION_33_2();
    v10 = v0 ^ 1;
  }

  else
  {
    v10 = 1;
  }

  return v10 & 1;
}

Swift::Bool __swiftcall PhoneCallNLIntent.isOutgoingCallExcludeCallBackAndRedial()()
{
  OUTLINED_FUNCTION_61_6();
  OUTLINED_FUNCTION_24_3();
  OUTLINED_FUNCTION_37_21();
  v1 = *(v0 + 104);
  v1();
  OUTLINED_FUNCTION_20_31();
  if (v4)
  {
    v3 = 0;
  }

  else
  {
    PhoneCallVerb.rawValue.getter(v2);
    OUTLINED_FUNCTION_103_2();
    if (v4)
    {
      v6 = v5 == 0xEE006F6964756120;
    }

    else
    {
      v6 = 0;
    }

    if (v6)
    {

      v3 = 1;
    }

    else
    {
      v3 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  v7 = OUTLINED_FUNCTION_20_0();
  (v1)(v7);
  OUTLINED_FUNCTION_20_31();
  if (v4)
  {
    v9 = 0;
  }

  else
  {
    PhoneCallVerb.rawValue.getter(v8);
    OUTLINED_FUNCTION_103_2();
    if (v10)
    {
      v12 = v11 == 0xE800000000000000;
    }

    else
    {
      v12 = 0;
    }

    if (v12)
    {

      v9 = 1;
    }

    else
    {
      v9 = OUTLINED_FUNCTION_35_18();
    }
  }

  v13 = OUTLINED_FUNCTION_20_0();
  (v1)(v13);
  OUTLINED_FUNCTION_20_31();
  if (v4)
  {
    OUTLINED_FUNCTION_20_0();
    v14 = PhoneCallNLIntent.hasPhoneNumber()();
  }

  else
  {
    v14 = 0;
  }

  OUTLINED_FUNCTION_20_0();
  v15 = PhoneCallNLIntent.hasCallVerb()();
  if (v14 || ((v15 | v3 | v9) & 1) != 0)
  {
    OUTLINED_FUNCTION_60_1();
  }

  else
  {
    OUTLINED_FUNCTION_20_0();
    OUTLINED_FUNCTION_60_1();

    return PhoneCallNLIntent.isInferredCallFromRedialOrCallBack()();
  }

  return result;
}

Swift::Bool __swiftcall PhoneCallNLIntent.isTelephonyTargetFromSrr()()
{
  OUTLINED_FUNCTION_41_21(v0, v1);
  v3 = v2();
  v4 = 0;
  v12 = v3;
  v13 = *(v3 + 16);
  for (i = v3 + 32; ; i += 40)
  {
    if (v13 == v4)
    {
LABEL_13:

      OUTLINED_FUNCTION_105_4();
      return v3;
    }

    if (v4 >= *(v12 + 16))
    {
      break;
    }

    outlined init with copy of SharedGlobalsProviding();
    v7 = v15;
    v6 = v16;
    __swift_project_boxed_opaque_existential_1(v14, v15);
    v8 = *(v6 + 80);
    switch(v8(v7, v6))
    {
      case 1u:
      case 2u:
        v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v9)
        {
          goto LABEL_12;
        }

        break;
      case 3u:
        break;
      default:
LABEL_11:

LABEL_12:
        __swift_destroy_boxed_opaque_existential_1(v14);
        goto LABEL_13;
    }

    switch(v8(v7, v6))
    {
      case 1u:
        goto LABEL_11;
      case 3u:
        LOBYTE(v3) = __swift_destroy_boxed_opaque_existential_1(v14);
        break;
      default:
        v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

        LOBYTE(v3) = __swift_destroy_boxed_opaque_existential_1(v14);
        if (v10)
        {
          goto LABEL_13;
        }

        break;
    }

    ++v4;
  }

  __break(1u);
  return v3;
}

Swift::Bool __swiftcall PhoneCallNLIntent.hasAnyFaceTime()()
{
  OUTLINED_FUNCTION_24_3();
  if (PhoneCallNLIntent.hasAudioCallSemantic()() || (OUTLINED_FUNCTION_20_0(), PhoneCallNLIntent.hasVideoCallSemantic()()))
  {
    v0 = 1;
  }

  else
  {
    v2 = OUTLINED_FUNCTION_20_0();
    v4 = PhoneCallNLIntent.applicationId.getter(v2, v3);
    if (v5)
    {
      if (v4 == 0xD000000000000012 && v5 == 0x80000000004574F0)
      {
        v0 = 1;
      }

      else
      {
        v0 = _stringCompareWithSmolCheck(_:_:expecting:)();
      }
    }

    else
    {
      v0 = 0;
    }
  }

  return v0 & 1;
}

Swift::Bool __swiftcall PhoneCallNLIntent.isIncomingCallSearch()()
{
  OUTLINED_FUNCTION_66();
  OUTLINED_FUNCTION_10_55();
  (*(v1 + 104))();
  OUTLINED_FUNCTION_56_8();
  if (!v10)
  {
    goto LABEL_41;
  }

  v2 = v0[10];
  v3 = OUTLINED_FUNCTION_20_0();
  v4(v3);
  OUTLINED_FUNCTION_69_9();
  if (v10)
  {
    v6 = v0[12];
    v7 = OUTLINED_FUNCTION_20_0();
    v9 = v8(v7);
    if (v9 == 35)
    {
      goto LABEL_41;
    }

    PhoneCallReference.rawValue.getter(v9);
    OUTLINED_FUNCTION_42_17();
    if (!v10 || v13 != 0xE300000000000000)
    {
      OUTLINED_FUNCTION_108_3();
      OUTLINED_FUNCTION_62_15();
      goto LABEL_18;
    }
  }

  else
  {
    PhoneCallNoun.rawValue.getter(v5);
    OUTLINED_FUNCTION_42_17();
    if (!v10 || v11 != 0xE400000000000000)
    {
      OUTLINED_FUNCTION_17_34();
      OUTLINED_FUNCTION_62_15();
      goto LABEL_18;
    }
  }

LABEL_18:
  v15 = v0[5];
  v16 = OUTLINED_FUNCTION_20_0();
  v18 = v17(v16);
  if (v18)
  {
    v19 = v18;
  }

  else
  {
    v19 = &_swiftEmptyArrayStorage;
  }

  v20 = v19[2];
  if (!v20)
  {
LABEL_40:

LABEL_41:
    OUTLINED_FUNCTION_65();
    return result;
  }

  v21 = 0;
  v22 = v20 - 1;
  OUTLINED_FUNCTION_93_6();
  while (v21 < v19[2])
  {
    switch(*(v19 + v21 + 32))
    {
      case 1:
        OUTLINED_FUNCTION_53_18();
        break;
      case 2:
        OUTLINED_FUNCTION_19_30();
        break;
      case 3:
        OUTLINED_FUNCTION_4_7();
        break;
      case 4:
        OUTLINED_FUNCTION_7_53();
        break;
      case 5:
        OUTLINED_FUNCTION_11_42();
        break;
      case 6:
        OUTLINED_FUNCTION_110_3();
        break;
      case 7:
        OUTLINED_FUNCTION_6_59();
        break;
      case 8:

        goto LABEL_40;
      case 9:
        OUTLINED_FUNCTION_5_64();
        break;
      case 0xA:
        OUTLINED_FUNCTION_13_41();
        break;
      case 0xB:
        OUTLINED_FUNCTION_12_46();
        break;
      case 0xD:
        OUTLINED_FUNCTION_54_18();
        break;
      default:
        break;
    }

    v24 = OUTLINED_FUNCTION_86_6();

    if ((v24 & 1) == 0)
    {
      v10 = v22 == v21++;
      if (!v10)
      {
        continue;
      }
    }

    goto LABEL_40;
  }

  __break(1u);
  return result;
}

uint64_t PhoneCallReference.ordinalIndex.getter(char a1)
{
  PhoneCallReference.rawValue.getter(a1);
  OUTLINED_FUNCTION_78_8();
  v4 = v4 && v3 == 0xE500000000000000;
  if (v4 || (v5 = v2, (OUTLINED_FUNCTION_16_39() & 1) != 0))
  {

    return 0;
  }

  else
  {
    v7 = v5 == 0x646E6F636573 && v1 == 0xE600000000000000;
    if (v7 || (OUTLINED_FUNCTION_16_39() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v8 = v5 == 0x6472696874 && v1 == 0xE500000000000000;
      if (v8 || (OUTLINED_FUNCTION_16_39() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v9 = v5 == 0x687472756F66 && v1 == 0xE600000000000000;
        if (v9 || (OUTLINED_FUNCTION_16_39() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v10 = v5 == 0x6874666966 && v1 == 0xE500000000000000;
          if (v10 || (OUTLINED_FUNCTION_16_39() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v11 = v5 == 0x6874786973 && v1 == 0xE500000000000000;
            if (v11 || (OUTLINED_FUNCTION_16_39() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v12 = v5 == 0x68746E65766573 && v1 == 0xE700000000000000;
              if (v12 || (OUTLINED_FUNCTION_16_39() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v13 = v5 == 0x687468676965 && v1 == 0xE600000000000000;
                if (v13 || (OUTLINED_FUNCTION_16_39() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v14 = v5 == 0x68746E696ELL && v1 == 0xE500000000000000;
                  if (v14 || (OUTLINED_FUNCTION_16_39() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v15 = v5 == 0x68746E6574 && v1 == 0xE500000000000000;
                    if (v15 || (OUTLINED_FUNCTION_16_39() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v16 = v5 == 0x68746E6576656C65 && v1 == 0xE800000000000000;
                      if (v16 || (OUTLINED_FUNCTION_16_39() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v17 = v5 == 0x6874666C657774 && v1 == 0xE700000000000000;
                        if (v17 || (OUTLINED_FUNCTION_16_39() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          OUTLINED_FUNCTION_40_20(0x72696874u);
                          v18 = v4 && v1 == 0xEA00000000006874;
                          if (v18 || (OUTLINED_FUNCTION_16_39() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            OUTLINED_FUNCTION_40_20(0x72756F66u);
                            v19 = v4 && v1 == 0xEA00000000006874;
                            if (v19 || (OUTLINED_FUNCTION_16_39() & 1) != 0)
                            {

                              return 13;
                            }

                            else
                            {
                              v20 = v5 == 0x746E656574666966 && v1 == 0xE900000000000068;
                              if (v20 || (OUTLINED_FUNCTION_16_39() & 1) != 0)
                              {

                                return 14;
                              }

                              else
                              {
                                v21 = v5 == 0x746E656574786973 && v1 == 0xE900000000000068;
                                if (v21 || (OUTLINED_FUNCTION_16_39() & 1) != 0)
                                {

                                  return 15;
                                }

                                else
                                {
                                  v22 = v5 == 0x6565746E65766573 && v1 == 0xEB0000000068746ELL;
                                  if (v22 || (OUTLINED_FUNCTION_16_39() & 1) != 0)
                                  {

                                    return 16;
                                  }

                                  else
                                  {
                                    OUTLINED_FUNCTION_40_20(0x68676965u);
                                    v23 = v4 && v1 == 0xEA00000000006874;
                                    if (v23 || (OUTLINED_FUNCTION_16_39() & 1) != 0)
                                    {

                                      return 17;
                                    }

                                    else
                                    {
                                      OUTLINED_FUNCTION_40_20(0x656E696Eu);
                                      v24 = v4 && v1 == 0xEA00000000006874;
                                      if (v24 || (OUTLINED_FUNCTION_16_39() & 1) != 0)
                                      {

                                        return 18;
                                      }

                                      else
                                      {
                                        v25 = v5 == 0x746569746E657774 && v1 == 0xE900000000000068;
                                        if (v25 || (OUTLINED_FUNCTION_16_39() & 1) != 0)
                                        {

                                          return 19;
                                        }

                                        else
                                        {
                                          v26 = v5 == 0x662079746E657774 && v1 == 0xEC00000074737269;
                                          if (v26 || (OUTLINED_FUNCTION_16_39() & 1) != 0)
                                          {

                                            return 20;
                                          }

                                          else
                                          {
                                            v27 = v5 == 0x732079746E657774 && v1 == 0xED0000646E6F6365;
                                            if (v27 || (OUTLINED_FUNCTION_16_39() & 1) != 0)
                                            {

                                              return 21;
                                            }

                                            else
                                            {
                                              v28 = v5 == 0x742079746E657774 && v1 == 0xEC00000064726968;
                                              if (v28 || (OUTLINED_FUNCTION_16_39() & 1) != 0)
                                              {

                                                return 22;
                                              }

                                              else
                                              {
                                                v29 = v5 == 0x662079746E657774 && v1 == 0xED0000687472756FLL;
                                                if (v29 || (OUTLINED_FUNCTION_16_39() & 1) != 0)
                                                {

                                                  return 23;
                                                }

                                                else if (v5 == 0x662079746E657774 && v1 == 0xEC00000068746669)
                                                {

                                                  return 24;
                                                }

                                                else
                                                {
                                                  OUTLINED_FUNCTION_16_39();
                                                  OUTLINED_FUNCTION_33_2();
                                                  if (v5)
                                                  {
                                                    return 24;
                                                  }

                                                  else
                                                  {
                                                    return 0;
                                                  }
                                                }
                                              }
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

Swift::Bool __swiftcall PhoneCallNLIntent.isFirstPartyOrDefaultAppRequest()()
{
  PhoneCallNLIntent.applicationId.getter(v0, v1);
  if (!v2)
  {
    return 1;
  }

  OUTLINED_FUNCTION_70_1();
  type metadata accessor for App();
  App.__allocating_init(appIdentifier:)();
  v3 = App.isFirstParty()();

  return v3;
}

PhoneCallFlowDelegatePlugin::PhoneCallAttribute_optional __swiftcall PhoneCallAttribute.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_38();
  v3._object = v1;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of PhoneCallAttribute.init(rawValue:), v3);
  OUTLINED_FUNCTION_40_0();

  if (v2 >= 0xE)
  {
    return 14;
  }

  else
  {
    return v2;
  }
}

unint64_t PhoneCallAttribute.rawValue.getter(char a1)
{
  result = 0x64657373696DLL;
  switch(a1)
  {
    case 1:
      result = OUTLINED_FUNCTION_53_18();
      break;
    case 2:
      result = OUTLINED_FUNCTION_19_30();
      break;
    case 3:
      result = OUTLINED_FUNCTION_4_7();
      break;
    case 4:
      result = OUTLINED_FUNCTION_7_53();
      break;
    case 5:
      v3 = OUTLINED_FUNCTION_11_42();
      goto LABEL_11;
    case 6:
      result = OUTLINED_FUNCTION_22_23();
      break;
    case 7:
      result = OUTLINED_FUNCTION_6_59();
      break;
    case 8:
      result = OUTLINED_FUNCTION_9_52();
      break;
    case 9:
      result = OUTLINED_FUNCTION_5_64();
      break;
    case 10:
      result = OUTLINED_FUNCTION_13_41();
      break;
    case 11:
      v3 = OUTLINED_FUNCTION_12_46();
LABEL_11:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x676E000000000000;
      break;
    case 12:
      result = OUTLINED_FUNCTION_8_9();
      break;
    case 13:
      result = OUTLINED_FUNCTION_54_18();
      break;
    default:
      return result;
  }

  return result;
}

PhoneCallFlowDelegatePlugin::PhoneCallAttribute_optional protocol witness for RawRepresentable.init(rawValue:) in conformance PhoneCallAttribute@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::PhoneCallAttribute_optional *a2@<X8>)
{
  result.value = PhoneCallAttribute.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance PhoneCallAttribute()
{
  v1 = OUTLINED_FUNCTION_40_2();
  result = PhoneCallAttribute.rawValue.getter(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t protocol witness for static TerminalNodeValueType.fromIntentNodeValue(_:) in conformance PhoneCallAttribute(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  return protocol witness for static TerminalNodeValueType.fromIntentNodeValue(_:) in conformance PhoneCallAttribute(a1, a2, a3, lazy protocol witness table accessor for type PhoneCallAttribute and conformance PhoneCallAttribute, lazy protocol witness table accessor for type PhoneCallAttribute and conformance PhoneCallAttribute, lazy protocol witness table accessor for type PhoneCallAttribute and conformance PhoneCallAttribute, a7, a8, a9, a10);
}

{
  OUTLINED_FUNCTION_61_6();
  v11 = v10;
  v13 = v12;
  v14();
  v13();
  v11();
  OUTLINED_FUNCTION_60_1();

  return static TerminalNodeBoundedSemanticValue<>.fromIntentNodeValue(_:)(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10);
}

PhoneCallFlowDelegatePlugin::PhoneCallAudioRoute_optional __swiftcall PhoneCallAudioRoute.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_38();
  v3._object = v1;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of PhoneCallAudioRoute.init(rawValue:), v3);
  OUTLINED_FUNCTION_40_0();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

unint64_t PhoneCallAudioRoute.rawValue.getter(char a1)
{
  result = 0x7072656B61657073;
  switch(a1)
  {
    case 1:
      result = OUTLINED_FUNCTION_3_22();
      break;
    case 2:
      result = 0x746F6F7465756C62;
      break;
    case 3:
      result = 0x65756C625F746F6ELL;
      break;
    default:
      return result;
  }

  return result;
}

PhoneCallFlowDelegatePlugin::PhoneCallAudioRoute_optional protocol witness for RawRepresentable.init(rawValue:) in conformance PhoneCallAudioRoute@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::PhoneCallAudioRoute_optional *a2@<X8>)
{
  result.value = PhoneCallAudioRoute.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance PhoneCallAudioRoute()
{
  v1 = OUTLINED_FUNCTION_40_2();
  result = PhoneCallAudioRoute.rawValue.getter(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t PhoneCallCapability.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0x6F65646976;
  }

  else
  {
    return 0x6F69647561;
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance PhoneCallCapability(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  return specialized == infix<A>(_:_:)();
}

PhoneCallFlowDelegatePlugin::PhoneCallCapability_optional protocol witness for RawRepresentable.init(rawValue:) in conformance PhoneCallCapability@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::PhoneCallCapability_optional *a2@<X8>)
{
  result.value = PhoneCallCapability.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance PhoneCallCapability()
{
  v1 = OUTLINED_FUNCTION_40_2();
  result = PhoneCallCapability.rawValue.getter(v1);
  *v0 = result;
  v0[1] = 0xE500000000000000;
  return result;
}

PhoneCallFlowDelegatePlugin::PhoneCallPreferredProvider_optional __swiftcall PhoneCallPreferredProvider.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_38();
  v3._object = v1;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of PhoneCallPreferredProvider.init(rawValue:), v3);
  OUTLINED_FUNCTION_40_0();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t PhoneCallPreferredProvider.rawValue.getter(char a1)
{
  if (!a1)
  {
    return 0x6E6F6870656C6574;
  }

  if (a1 == 1)
  {
    return 0x656D697465636166;
  }

  return 0x7261506472696874;
}

PhoneCallFlowDelegatePlugin::PhoneCallPreferredProvider_optional protocol witness for RawRepresentable.init(rawValue:) in conformance PhoneCallPreferredProvider@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::PhoneCallPreferredProvider_optional *a2@<X8>)
{
  result.value = PhoneCallPreferredProvider.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance PhoneCallPreferredProvider()
{
  v1 = OUTLINED_FUNCTION_40_2();
  result = PhoneCallPreferredProvider.rawValue.getter(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t PhoneCallConfirmation.description.getter(char a1)
{
  result = 7562617;
  switch(a1)
  {
    case 1:
      result = 28526;
      break;
    case 2:
      result = 0x6C65636E6163;
      break;
    case 3:
      result = 0x206D7269666E6F63;
      break;
    case 4:
      result = 0x63207463656A6572;
      break;
    default:
      return result;
  }

  return result;
}

PhoneCallFlowDelegatePlugin::PhoneCallConfirmation_optional __swiftcall PhoneCallConfirmation.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_38();
  v3._object = v1;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of PhoneCallConfirmation.init(rawValue:), v3);
  OUTLINED_FUNCTION_40_0();

  if (v2 >= 5)
  {
    return 5;
  }

  else
  {
    return v2;
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance PhoneCallConfirmation(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *a1;
  return specialized == infix<A>(_:_:)();
}

PhoneCallFlowDelegatePlugin::PhoneCallConfirmation_optional protocol witness for RawRepresentable.init(rawValue:) in conformance PhoneCallConfirmation@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::PhoneCallConfirmation_optional *a2@<X8>)
{
  result.value = PhoneCallConfirmation.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance PhoneCallConfirmation()
{
  v1 = OUTLINED_FUNCTION_40_2();
  result = PhoneCallConfirmation.description.getter(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

PhoneCallFlowDelegatePlugin::PhoneCallNoun_optional __swiftcall PhoneCallNoun.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_38();
  v3._object = v1;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of PhoneCallNoun.init(rawValue:), v3);
  OUTLINED_FUNCTION_40_0();

  if (v2 >= 9)
  {
    return 9;
  }

  else
  {
    return v2;
  }
}

uint64_t PhoneCallNoun.rawValue.getter(char a1)
{
  result = 1819042147;
  switch(a1)
  {
    case 1:
      result = 0x736C6C6163;
      break;
    case 2:
    case 3:
      result = OUTLINED_FUNCTION_17_6();
      break;
    case 4:
      result = 0x61665F70756F7267;
      break;
    case 5:
      result = OUTLINED_FUNCTION_33_18();
      break;
    case 6:
      result = OUTLINED_FUNCTION_3_22();
      break;
    case 7:
      result = OUTLINED_FUNCTION_46_18();
      break;
    case 8:
      result = 0x746F6F7465756C62;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance PhoneCallNoun(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *a1;
  return specialized == infix<A>(_:_:)();
}

PhoneCallFlowDelegatePlugin::PhoneCallNoun_optional protocol witness for RawRepresentable.init(rawValue:) in conformance PhoneCallNoun@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::PhoneCallNoun_optional *a2@<X8>)
{
  result.value = PhoneCallNoun.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance PhoneCallNoun()
{
  v1 = OUTLINED_FUNCTION_40_2();
  result = PhoneCallNoun.rawValue.getter(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

void PhoneCallReference.rawValue.getter(char a1)
{
  switch(a1)
  {
    case 1:
      OUTLINED_FUNCTION_50_18();
      break;
    case 2:
      OUTLINED_FUNCTION_63_9();
      break;
    case 8:
      OUTLINED_FUNCTION_45_14();
      break;
    case 10:
      OUTLINED_FUNCTION_39_16();
      break;
    case 12:
      OUTLINED_FUNCTION_48_17(0x72696874u);
      break;
    case 13:
      OUTLINED_FUNCTION_48_17(0x72756F66u);
      break;
    case 14:
    case 15:
    case 19:
      OUTLINED_FUNCTION_87_5();
      break;
    case 16:
      OUTLINED_FUNCTION_32_17();
      break;
    case 17:
      OUTLINED_FUNCTION_48_17(0x68676965u);
      break;
    case 18:
      OUTLINED_FUNCTION_48_17(0x656E696Eu);
      break;
    case 20:
    case 23:
    case 24:
      OUTLINED_FUNCTION_52_15();
      break;
    case 21:
      OUTLINED_FUNCTION_25_24();
      break;
    case 22:
      OUTLINED_FUNCTION_31_19();
      break;
    case 25:
      OUTLINED_FUNCTION_22_23();
      break;
    case 26:
      OUTLINED_FUNCTION_49_16();
      break;
    case 27:
      OUTLINED_FUNCTION_71_4();
      break;
    case 28:
      OUTLINED_FUNCTION_38_18();
      break;
    case 29:
      OUTLINED_FUNCTION_29_21();
      break;
    case 30:
      OUTLINED_FUNCTION_30_25();
      break;
    case 32:
      OUTLINED_FUNCTION_70_5();
      break;
    default:
      return;
  }
}

PhoneCallFlowDelegatePlugin::PhoneCallReference_optional __swiftcall PhoneCallReference.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_38();
  _findStringSwitchCaseWithCache(cases:string:cache:)();
  OUTLINED_FUNCTION_40_0();

  if (v1 >= 0x23)
  {
    return 35;
  }

  else
  {
    return v1;
  }
}

PhoneCallFlowDelegatePlugin::PhoneCallReference_optional protocol witness for RawRepresentable.init(rawValue:) in conformance PhoneCallReference@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::PhoneCallReference_optional *a2@<X8>)
{
  result.value = PhoneCallReference.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance PhoneCallReference()
{
  v1 = OUTLINED_FUNCTION_40_2();
  PhoneCallReference.rawValue.getter(v1);
  *v0 = v2;
  v0[1] = v3;
}

PhoneCallFlowDelegatePlugin::PhoneCallContactReference_optional __swiftcall PhoneCallContactReference.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_38();
  _findStringSwitchCaseWithCache(cases:string:cache:)();
  OUTLINED_FUNCTION_40_0();

  if (v1 >= 0x26)
  {
    return 38;
  }

  else
  {
    return v1;
  }
}

void PhoneCallContactReference.rawValue.getter(char a1)
{
  switch(a1)
  {
    case 1:
      OUTLINED_FUNCTION_50_18();
      break;
    case 2:
      OUTLINED_FUNCTION_63_9();
      break;
    case 8:
      OUTLINED_FUNCTION_45_14();
      break;
    case 10:
      OUTLINED_FUNCTION_39_16();
      break;
    case 12:
      OUTLINED_FUNCTION_48_17(0x72696874u);
      break;
    case 13:
      OUTLINED_FUNCTION_48_17(0x72756F66u);
      break;
    case 14:
    case 15:
    case 19:
      OUTLINED_FUNCTION_87_5();
      break;
    case 16:
      OUTLINED_FUNCTION_32_17();
      break;
    case 17:
      OUTLINED_FUNCTION_48_17(0x68676965u);
      break;
    case 18:
      OUTLINED_FUNCTION_48_17(0x656E696Eu);
      break;
    case 20:
    case 23:
    case 24:
      OUTLINED_FUNCTION_52_15();
      break;
    case 21:
      OUTLINED_FUNCTION_25_24();
      break;
    case 22:
      OUTLINED_FUNCTION_31_19();
      break;
    case 25:
      OUTLINED_FUNCTION_22_23();
      break;
    case 26:
      OUTLINED_FUNCTION_49_16();
      break;
    case 27:
      OUTLINED_FUNCTION_71_4();
      break;
    case 28:
      OUTLINED_FUNCTION_38_18();
      break;
    case 29:
      OUTLINED_FUNCTION_29_21();
      break;
    case 30:
      OUTLINED_FUNCTION_30_25();
      break;
    case 32:
      OUTLINED_FUNCTION_70_5();
      break;
    default:
      return;
  }
}

PhoneCallFlowDelegatePlugin::PhoneCallContactReference_optional protocol witness for RawRepresentable.init(rawValue:) in conformance PhoneCallContactReference@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::PhoneCallContactReference_optional *a2@<X8>)
{
  result.value = PhoneCallContactReference.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance PhoneCallContactReference()
{
  v1 = OUTLINED_FUNCTION_40_2();
  PhoneCallContactReference.rawValue.getter(v1);
  *v0 = v2;
  v0[1] = v3;
}

PhoneCallFlowDelegatePlugin::PhoneCallVerb_optional __swiftcall PhoneCallVerb.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_38();
  _findStringSwitchCaseWithCache(cases:string:cache:)();
  OUTLINED_FUNCTION_40_0();

  if (v1 >= 0x11)
  {
    return 17;
  }

  else
  {
    return v1;
  }
}

PhoneCallFlowDelegatePlugin::PhoneCallVerb_optional protocol witness for RawRepresentable.init(rawValue:) in conformance PhoneCallVerb@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::PhoneCallVerb_optional *a2@<X8>)
{
  result.value = PhoneCallVerb.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance PhoneCallVerb()
{
  v1 = OUTLINED_FUNCTION_40_2();
  result = PhoneCallVerb.rawValue.getter(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t *VoiceMail.voiceMailNoun.unsafeMutableAddressor()
{
  if (one-time initialization token for voiceMailNoun != -1)
  {
    swift_once();
  }

  return &static VoiceMail.voiceMailNoun;
}

uint64_t one-time initialization function for voiceMailNoun(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v6 = OUTLINED_FUNCTION_104_2(a1, a2);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  result = TerminalOntologyNode.init(name:multicardinal:)();
  *a5 = result;
  return result;
}

uint64_t *VoiceMail.voiceMailVerb.unsafeMutableAddressor()
{
  if (one-time initialization token for voiceMailVerb != -1)
  {
    swift_once();
  }

  return &static VoiceMail.voiceMailVerb;
}

uint64_t static VoiceMail.voiceMailNoun.getter(void *a1, uint64_t *a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = *a2;
}

uint64_t VoiceMail.VoiceMailNoun.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0x6563696F76;
  }

  else
  {
    return 0x69616D6563696F76;
  }
}

PhoneCallFlowDelegatePlugin::VoiceMail::VoiceMailNoun_optional protocol witness for RawRepresentable.init(rawValue:) in conformance VoiceMail.VoiceMailNoun@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::VoiceMail::VoiceMailNoun_optional *a2@<X8>)
{
  result.value = VoiceMail.VoiceMailNoun.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance VoiceMail.VoiceMailNoun()
{
  v1 = OUTLINED_FUNCTION_40_2();
  result = VoiceMail.VoiceMailNoun.rawValue.getter(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

PhoneCallFlowDelegatePlugin::VoiceMail::VoiceMailVerb_optional __swiftcall VoiceMail.VoiceMailVerb.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_38();
  v3._object = v1;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of VoiceMail.VoiceMailVerb.init(rawValue:), v3);
  OUTLINED_FUNCTION_40_0();

  if (v2 >= 6)
  {
    return 6;
  }

  else
  {
    return v2;
  }
}

uint64_t VoiceMail.VoiceMailVerb.rawValue.getter(char a1)
{
  result = 2036427888;
  switch(a1)
  {
    case 1:
      result = 0x746165706572;
      break;
    case 2:
      result = 1885956979;
      break;
    case 3:
      result = 0x6573756170;
      break;
    case 4:
      result = 0x656D75736572;
      break;
    case 5:
      result = 0x6574656C6564;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance VoiceMail.VoiceMailVerb(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *a1;
  return specialized == infix<A>(_:_:)();
}

PhoneCallFlowDelegatePlugin::VoiceMail::VoiceMailVerb_optional protocol witness for RawRepresentable.init(rawValue:) in conformance VoiceMail.VoiceMailVerb@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::VoiceMail::VoiceMailVerb_optional *a2@<X8>)
{
  result.value = VoiceMail.VoiceMailVerb.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance VoiceMail.VoiceMailVerb()
{
  v1 = OUTLINED_FUNCTION_40_2();
  result = VoiceMail.VoiceMailVerb.rawValue.getter(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

PhoneCallFlowDelegatePlugin::PhoneCallDestinationType_optional __swiftcall PhoneCallDestinationType.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_38();
  v3._object = v1;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of PhoneCallDestinationType.init(rawValue:), v3);
  OUTLINED_FUNCTION_40_0();

  if (v2 >= 5)
  {
    return 5;
  }

  else
  {
    return v2;
  }
}

uint64_t PhoneCallDestinationType.rawValue.getter(char a1)
{
  result = 0x6C616D726F6ELL;
  switch(a1)
  {
    case 1:
      result = OUTLINED_FUNCTION_46_18();
      break;
    case 2:
      result = 0x69616D6563696F76;
      break;
    case 3:
      result = OUTLINED_FUNCTION_72_5();
      break;
    case 4:
      result = 0x6B6361626C6C6163;
      break;
    default:
      return result;
  }

  return result;
}

PhoneCallFlowDelegatePlugin::PhoneCallDestinationType_optional protocol witness for RawRepresentable.init(rawValue:) in conformance PhoneCallDestinationType@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::PhoneCallDestinationType_optional *a2@<X8>)
{
  result.value = PhoneCallDestinationType.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance PhoneCallDestinationType()
{
  v1 = OUTLINED_FUNCTION_40_2();
  result = PhoneCallDestinationType.rawValue.getter(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

PhoneCallFlowDelegatePlugin::PhoneCallContactRole::NLv3_optional __swiftcall PhoneCallContactRole.NLv3.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_38();
  v3._object = v1;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of PhoneCallContactRole.NLv3.init(rawValue:), v3);
  OUTLINED_FUNCTION_40_0();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t PhoneCallContactRole.NLv3.rawValue.getter(char a1)
{
  if (!a1)
  {
    return 28532;
  }

  if (a1 == 1)
  {
    return 1836020326;
  }

  return 1752459639;
}

PhoneCallFlowDelegatePlugin::PhoneCallContactRole::NLv3_optional protocol witness for RawRepresentable.init(rawValue:) in conformance PhoneCallContactRole.NLv3@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::PhoneCallContactRole::NLv3_optional *a2@<X8>)
{
  result.value = PhoneCallContactRole.NLv3.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance PhoneCallContactRole.NLv3()
{
  v1 = OUTLINED_FUNCTION_40_2();
  result = PhoneCallContactRole.NLv3.rawValue.getter(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

id SmsGroup.asINCallGroup.getter()
{
  OUTLINED_FUNCTION_10_55();
  v3 = (*(v2 + 8))();
  v5 = v4;
  v6 = *(v0 + 16);
  v7 = OUTLINED_FUNCTION_20_0();
  v8(v7);
  OUTLINED_FUNCTION_70_1();
  v9 = objc_allocWithZone(INCallGroup);
  return @nonobjc INCallGroup.init(groupName:groupId:)(v3, v5, v0, v1);
}

Swift::Bool __swiftcall PhoneCallNLIntent.isPlayVoiceMail()()
{
  OUTLINED_FUNCTION_10_55();
  (*(v1 + 120))();
  OUTLINED_FUNCTION_43_19();
  if (!v2)
  {
    OUTLINED_FUNCTION_20_0();
    if (!PhoneCallNLIntent.hasCallVerb()())
    {
      return 1;
    }
  }

  v3 = *(v0 + 112);
  v4 = OUTLINED_FUNCTION_20_0();
  v5(v4);
  OUTLINED_FUNCTION_68_7();
  return !v2;
}

Swift::Bool __swiftcall PhoneCallNLIntent.hasVoiceMailNoun()()
{
  (*(v0 + 120))();
  OUTLINED_FUNCTION_43_19();
  return !v1;
}

Swift::Bool __swiftcall PhoneCallNLIntent.hasCallVerb()()
{
  OUTLINED_FUNCTION_34_14(v0, v1);
  v2();
  OUTLINED_FUNCTION_20_31();
  if (v5)
  {
    return 0;
  }

  PhoneCallVerb.rawValue.getter(v3);
  OUTLINED_FUNCTION_27_22();
  if (v5)
  {
    v7 = v6 == 0xE400000000000000;
  }

  else
  {
    v7 = 0;
  }

  if (v7)
  {
  }

  else
  {
    OUTLINED_FUNCTION_17_34();
    OUTLINED_FUNCTION_33_2();
  }

  return 1;
}

Swift::Bool __swiftcall PhoneCallNLIntent.hasVoiceMailVerb()()
{
  (*(v0 + 112))();
  OUTLINED_FUNCTION_68_7();
  return !v1;
}

Swift::Bool __swiftcall PhoneCallNLIntent.isPlayIt()()
{
  OUTLINED_FUNCTION_10_55();
  (*(v0 + 112))();
  OUTLINED_FUNCTION_68_7();
  if (v3)
  {
    return 0;
  }

  VoiceMail.VoiceMailVerb.rawValue.getter(v1);
  OUTLINED_FUNCTION_42_17();
  if (v3)
  {
    v5 = v4 == 0xE400000000000000;
  }

  else
  {
    v5 = 0;
  }

  if (!v5)
  {
    OUTLINED_FUNCTION_59_8();
    OUTLINED_FUNCTION_62_15();
    return 0;
  }

  v6 = OUTLINED_FUNCTION_14_45();
  v7(v6);
  OUTLINED_FUNCTION_43_19();
  return v3 != 0;
}

Swift::Bool __swiftcall PhoneCallNLIntent.isFind()()
{
  OUTLINED_FUNCTION_34_14(v0, v1);
  v2();
  OUTLINED_FUNCTION_20_31();
  if (v5)
  {
    return 0;
  }

  PhoneCallVerb.rawValue.getter(v3);
  OUTLINED_FUNCTION_27_22();
  if (v5)
  {
    v7 = v6 == 0xE400000000000000;
  }

  else
  {
    v7 = 0;
  }

  if (v7)
  {

    return 1;
  }

  else
  {
    OUTLINED_FUNCTION_59_8();
    OUTLINED_FUNCTION_33_2();
    return 0;
  }
}

Swift::Bool __swiftcall PhoneCallNLIntent.isDelete()()
{
  OUTLINED_FUNCTION_34_14(v0, v1);
  v2();
  OUTLINED_FUNCTION_20_31();
  if (v5)
  {
    return 0;
  }

  PhoneCallVerb.rawValue.getter(v3);
  OUTLINED_FUNCTION_27_22();
  if (v5)
  {
    v7 = v6 == 0xE600000000000000;
  }

  else
  {
    v7 = 0;
  }

  if (v7)
  {

    return 1;
  }

  else
  {
    OUTLINED_FUNCTION_36_19();
    OUTLINED_FUNCTION_33_2();
    return 0;
  }
}

Swift::Bool __swiftcall PhoneCallNLIntent.hasRelationship()()
{
  OUTLINED_FUNCTION_66();
  OUTLINED_FUNCTION_24_3();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference24ContactRelationshipQueryVSgMd, &_s13SiriInference24ContactRelationshipQueryVSgMR);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v41 - v5;
  v45 = type metadata accessor for ContactQuery();
  OUTLINED_FUNCTION_9_1();
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v11);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_97_3();
  v43 = v0;
  v44 = v1;
  v42 = v2;
  v14 = OUTLINED_FUNCTION_20_0();
  v16 = v15(v14);
  v17 = v16;
  v18 = v16[2];
  if (v18)
  {
    v19 = 0;
    v20 = v16 + 4;
    while (v19 < v17[2])
    {
      outlined init with copy of SharedGlobalsProviding();
      v21 = v46[4];
      __swift_project_boxed_opaque_existential_1(v46, v46[3]);
      v22 = *(v21 + 416);
      v23 = OUTLINED_FUNCTION_40_0();
      v25 = v24(v23, v21);
      if (v26)
      {
        v27 = v25;
        v28 = v26;

        if ((v28 & 0x2000000000000000) != 0)
        {
          v29 = HIBYTE(v28) & 0xF;
        }

        else
        {
          v29 = v27 & 0xFFFFFFFFFFFFLL;
        }

        LOBYTE(v16) = __swift_destroy_boxed_opaque_existential_1(v46);
        if (v29)
        {
          goto LABEL_27;
        }
      }

      else
      {
        LOBYTE(v16) = __swift_destroy_boxed_opaque_existential_1(v46);
      }

      ++v19;
      v20 += 5;
      if (v18 == v19)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {
LABEL_12:

    v16 = (*(v43 + 128))(v42);
    v30 = v16;
    v31 = 0;
    v32 = v16[2];
    while (v32 != v31)
    {
      if (v31 >= v30[2])
      {
        goto LABEL_30;
      }

      v33 = v45;
      (*(v8 + 16))(v13, v30 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v31, v45);
      ContactQuery.relationship.getter();
      (*(v8 + 8))(v13, v33);
      v34 = type metadata accessor for ContactRelationshipQuery();
      if (__swift_getEnumTagSinglePayload(v6, 1, v34) != 1)
      {

        outlined destroy of PhoneCallApp?(v6, &_s13SiriInference24ContactRelationshipQueryVSgMd);
        goto LABEL_28;
      }

      ++v31;
      LOBYTE(v16) = outlined destroy of PhoneCallApp?(v6, &_s13SiriInference24ContactRelationshipQueryVSgMd);
    }

    v35 = PhoneCallNLIntent.getPersons()(v42, v43);
    v16 = specialized Array.count.getter(v35);
    v36 = v16;
    v37 = 0;
    while (v36 != v37)
    {
      if ((v35 & 0xC000000000000001) != 0)
      {
        OUTLINED_FUNCTION_20_0();
        v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v37 >= *(&dword_10 + (v35 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_32;
        }

        v16 = *(v35 + 8 * v37 + 32);
      }

      v38 = v16;
      if (__OFADD__(v37, 1))
      {
        goto LABEL_31;
      }

      v39 = [v16 relationship];

      ++v37;
      if (v39)
      {

        goto LABEL_28;
      }
    }

LABEL_27:

LABEL_28:
    OUTLINED_FUNCTION_65();
  }

  return v16;
}

Swift::Bool __swiftcall PhoneCallNLIntent.isInferredCallFromRedialOrCallBack()()
{
  OUTLINED_FUNCTION_61_6();
  OUTLINED_FUNCTION_24_3();
  v1 = *(v0 + 104);
  v1();
  OUTLINED_FUNCTION_20_31();
  if (!v4)
  {
    PhoneCallVerb.rawValue.getter(v2);
    OUTLINED_FUNCTION_42_17();
    v4 = v4 && v3 == 0xE600000000000000;
    if (v4)
    {

      OUTLINED_FUNCTION_20_0();
      if (!PhoneCallNLIntent.isRedial()())
      {
        goto LABEL_18;
      }
    }

    else
    {
      OUTLINED_FUNCTION_40_4();
      OUTLINED_FUNCTION_76_6();
      OUTLINED_FUNCTION_62_15();
    }
  }

  v5 = OUTLINED_FUNCTION_20_0();
  (v1)(v5);
  OUTLINED_FUNCTION_20_31();
  if (!v4)
  {
    PhoneCallVerb.rawValue.getter(v6);
    OUTLINED_FUNCTION_42_17();
    if (v7)
    {
      v9 = v8 == 0xE90000000000006BLL;
    }

    else
    {
      v9 = 0;
    }

    if (v9)
    {
    }

    else
    {
      OUTLINED_FUNCTION_40_4();
      OUTLINED_FUNCTION_111_4();
      OUTLINED_FUNCTION_62_15();
    }

    OUTLINED_FUNCTION_20_0();
    PhoneCallNLIntent.isCallBack()();
  }

LABEL_18:
  OUTLINED_FUNCTION_60_1();
  return result;
}

Swift::Bool __swiftcall PhoneCallNLIntent.isVoiceMailCall()()
{
  OUTLINED_FUNCTION_24_3();
  if (!PhoneCallNLIntent.isOutgoingCall()())
  {
    return 0;
  }

  OUTLINED_FUNCTION_20_0();

  return PhoneCallNLIntent.hasVoiceMail()();
}

Swift::Bool __swiftcall PhoneCallNLIntent.isAudioCall()()
{
  OUTLINED_FUNCTION_24_3();
  if (!PhoneCallNLIntent.hasAudioCallSemantic()())
  {
    OUTLINED_FUNCTION_20_0();
    if (!PhoneCallNLIntent.hasCallVerb()())
    {
      return 0;
    }
  }

  OUTLINED_FUNCTION_20_0();
  if (PhoneCallNLIntent.isFind()())
  {
    return 0;
  }

  v1 = OUTLINED_FUNCTION_14_45();
  v2(v1);
  OUTLINED_FUNCTION_43_19();
  return v3 != 0;
}

Swift::Bool __swiftcall PhoneCallNLIntent.hasAnyContactReference()()
{
  OUTLINED_FUNCTION_107_3();
  v23 = v0;
  v24 = v1;
  OUTLINED_FUNCTION_41_21(v2, v3);
  v5 = v4();
  v6 = v5;
  v7 = 0;
  v8 = *(v5 + 16);
  for (i = v5 + 32; ; i += 40)
  {
    if (v8 == v7)
    {
      goto LABEL_20;
    }

    if (v7 >= *(v6 + 16))
    {
      break;
    }

    OUTLINED_FUNCTION_85_4();
    v10 = v22;
    OUTLINED_FUNCTION_1_83(v21);
    v11.value = SiriPhoneContact.getContactReference()().value;
    if (v11.value != PhoneCallFlowDelegatePlugin_PhoneCallContactReference_unknownDefault)
    {
      PhoneCallContactReference.rawValue.getter(v11.value);
      if (v13 == 6647407 && v12 == 0xE300000000000000)
      {
LABEL_18:

LABEL_19:
        __swift_destroy_boxed_opaque_existential_1(v21);
LABEL_20:

        OUTLINED_FUNCTION_106_1();
        return v5;
      }

      OUTLINED_FUNCTION_108_3();
      OUTLINED_FUNCTION_20_2();
      if (v10)
      {
        goto LABEL_19;
      }
    }

    v15 = v22;
    OUTLINED_FUNCTION_1_83(v21);
    v16.value = SiriPhoneContact.getContactReference()().value;
    if (v16.value == PhoneCallFlowDelegatePlugin_PhoneCallContactReference_unknownDefault)
    {
      LOBYTE(v5) = __swift_destroy_boxed_opaque_existential_1(v21);
    }

    else
    {
      PhoneCallContactReference.rawValue.getter(v16.value);
      if (v18 == 2037277037 && v17 == 0xE400000000000000)
      {
        goto LABEL_18;
      }

      OUTLINED_FUNCTION_59_8();
      OUTLINED_FUNCTION_20_2();
      LOBYTE(v5) = __swift_destroy_boxed_opaque_existential_1(v21);
      if (v15)
      {
        goto LABEL_20;
      }
    }

    ++v7;
  }

  __break(1u);
  return v5;
}

Swift::Bool __swiftcall PhoneCallNLIntent.hasNoContactOrReference()()
{
  OUTLINED_FUNCTION_10_55();
  v2 = (*(v1 + 144))();
  v3 = specialized Array.count.getter(v2);

  if (v3)
  {
    return 0;
  }

  OUTLINED_FUNCTION_97_3();
  v4 = OUTLINED_FUNCTION_20_0();
  v6 = *(v5(v4) + 16);

  if (v6)
  {
    return 0;
  }

  v8 = *(v0 + 128);
  v9 = OUTLINED_FUNCTION_20_0();
  v11 = *(v10(v9) + 16);

  return v11 == 0;
}