uint64_t static CallRecordViewUtils.generatedSelectedActionForVoicemail(callRecord:forCallHistoryDisplay:)(uint64_t a1, char a2, uint64_t (*a3)(void))
{
  if ((a2 & 1) != 0 && (v3 = a3()) != 0)
  {
    v4 = v3;
    if (AceObject.serializeToBase64()().value._object)
    {
      String.toSpeakableString.getter();

      v5 = 0;
    }

    else
    {
      v5 = 1;
    }
  }

  else
  {
    v5 = 1;
  }

  type metadata accessor for SpeakableString();
  v6 = OUTLINED_FUNCTION_4_19();

  return __swift_storeEnumTagSinglePayload(v6, v5, 1, v7);
}

id static CallRecordViewUtils.buildPunchOutForOpenCallRecord(callRecord:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = v26 - v4;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [objc_allocWithZone(SAUIAppPunchOut) init];
  outlined bridged method (ob) of @objc SABaseClientBoundCommand.aceId.getter(v11);
  if (v12)
  {
  }

  else
  {
    UUID.init()();
    v13 = UUID.uuidString.getter();
    v15 = v14;
    (*(v7 + 8))(v10, v6);
    outlined bridged method (mbnn) of @objc SABaseClientBoundCommand.aceId.setter(v13, v15, v11);
  }

  v16 = [a1 identifier];
  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;

  v26[0] = 0xD000000000000020;
  v26[1] = 0x8000000000459770;
  v20._countAndFlagsBits = v17;
  v20._object = v19;
  String.append(_:)(v20);

  URL.init(string:)();

  v21 = type metadata accessor for URL();
  v23 = 0;
  if (__swift_getEnumTagSinglePayload(v5, 1, v21) != 1)
  {
    URL._bridgeToObjectiveC()(v22);
    v23 = v24;
    (*(*(v21 - 8) + 8))(v5, v21);
  }

  [v11 setPunchOutUri:v23];

  return v11;
}

uint64_t static CallRecordViewUtils.generateDisplayTime(dateTime:formattedDate:)@<X0>(uint64_t a1@<X8>)
{
  v51 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  OUTLINED_FUNCTION_12_5();
  v5 = v3 - v4;
  v7 = __chkstk_darwin(v6);
  v9 = &v50 - v8;
  __chkstk_darwin(v7);
  v11 = &v50 - v10;
  v12 = type metadata accessor for SpeakableString();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  OUTLINED_FUNCTION_12_5();
  v17 = v15 - v16;
  __chkstk_darwin(v18);
  OUTLINED_FUNCTION_6_27();

  OUTLINED_FUNCTION_11_23();
  if (dispatch thunk of DialogCalendar.isToday.getter())
  {
    dispatch thunk of DialogCalendar.timeDescriptive.getter();
    OUTLINED_FUNCTION_1_0(v11);
    if (!v19)
    {
      v24 = *(v13 + 8);
      v25 = OUTLINED_FUNCTION_5_26();
      v26(v25);
      return (*(v13 + 32))(v51, v11, v12);
    }

    v20 = *(v13 + 32);
    v21 = OUTLINED_FUNCTION_7_19();
    v22(v21);
    result = OUTLINED_FUNCTION_1_0(v11);
    if (!v19)
    {
      v23 = v11;
      return outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v23, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    }
  }

  else if (dispatch thunk of DialogCalendar.isYesterday.getter())
  {
    dispatch thunk of DialogCalendar.dateDescriptive.getter();
    OUTLINED_FUNCTION_1_0(v9);
    if (v19)
    {
      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v9, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
      v31 = *(v13 + 32);
    }

    else
    {
      v31 = *(v13 + 32);
      v31(v17, v9, v12);
      static CallRecordViewUtils.getCatLocaleString()();
      if (v32)
      {
        v33 = objc_opt_self();
        SpeakableString.print.getter();
        v34 = String._bridgeToObjectiveC()();

        v35 = String._bridgeToObjectiveC()();

        v36 = [v33 capitalize:v34 forLocale:v35];

        static String._unconditionallyBridgeFromObjectiveC(_:)();
        OUTLINED_FUNCTION_11_23();
        v37 = *(v13 + 8);
        v38 = OUTLINED_FUNCTION_13_17();
        v37(v38);
        v39 = OUTLINED_FUNCTION_5_26();
        return (v37)(v39);
      }

      v46 = *(v13 + 8);
      v47 = OUTLINED_FUNCTION_13_17();
      v48(v47);
    }

    v49 = OUTLINED_FUNCTION_7_19();
    return (v31)(v49);
  }

  else if (dispatch thunk of DialogCalendar.isThisWeek.getter())
  {
    dispatch thunk of DialogCalendar.dayName.getter();
    OUTLINED_FUNCTION_1_0(v5);
    if (v19)
    {
      v28 = *(v13 + 32);
      v29 = OUTLINED_FUNCTION_7_19();
      v30(v29);
      result = OUTLINED_FUNCTION_1_0(v5);
      if (!v19)
      {
        v23 = v5;
        return outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v23, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
      }
    }

    else
    {
      v43 = *(v13 + 8);
      v44 = OUTLINED_FUNCTION_5_26();
      v45(v44);
      return (*(v13 + 32))(v51, v5, v12);
    }
  }

  else
  {

    OUTLINED_FUNCTION_11_23();
    v40 = *(v13 + 8);
    v41 = OUTLINED_FUNCTION_5_26();
    return v42(v41);
  }

  return result;
}

uint64_t static CallRecordViewUtils.getCatLocaleString()()
{
  type metadata accessor for CATGlobals();
  static Device.current.getter();
  v0 = CATGlobals.__allocating_init(device:)();
  v1 = dispatch thunk of CATGlobals.toDictionary.getter();
  specialized Dictionary.subscript.getter(0x656C61636F6CLL, 0xE600000000000000, v1, &v4);

  if (v5)
  {
    if (swift_dynamicCast())
    {
      return v3;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(&v4, &_sypSgMd, &_sypSgMR);
    return 0;
  }
}

id @nonobjc INStartCallIntent.init(destinationType:contacts:callCapability:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INPerson, INPerson_ptr);
    v6.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v6.super.isa = 0;
  }

  v7 = [v3 initWithDestinationType:a1 contacts:v6.super.isa callCapability:a3];

  return v7;
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

uint64_t outlined bridged method (ob) of @objc SABaseClientBoundCommand.aceId.getter(void *a1)
{
  v2 = [a1 aceId];

  if (!v2)
  {
    return 0;
  }

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t (*CallStateGuardCheck.init(_:description:onFail:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7))(void *a1)
{
  OUTLINED_FUNCTION_5_13();
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  *(v14 + 32) = a3;
  OUTLINED_FUNCTION_50();
  v15 = swift_allocObject();
  *(v15 + 16) = a4;
  *(v15 + 24) = a5;
  OUTLINED_FUNCTION_50();
  v16 = swift_allocObject();
  *(v16 + 16) = a6;
  *(v16 + 24) = a7;
  OUTLINED_FUNCTION_68_0();
  v17 = swift_allocObject();
  v17[2] = partial apply for implicit closure #3 in CallStateGuardCheck.init(_:description:onFail:);
  v17[3] = v15;
  v17[4] = _s27PhoneCallFlowDelegatePlugin0B15StateGuardCheckV_11description6onFailAcA06CommonbF9PredicateO_SSyXA07SiriKitC003AnyC0CyXAtcfcAJycfu2_TA_0;
  v17[5] = v16;
  return _s27PhoneCallFlowDelegatePlugin0B15StateGuardCheckV_11description6onFailAcA06CommonbF9PredicateO_SSyXA07SiriKitC003AnyC0CyXAtcfcSbAA0bF9Providing_pcAGcfu_SbAaK_pcfu0_TA_0;
}

uint64_t (*CallStateGuardCheck.init(_:onFail:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5))()
{
  OUTLINED_FUNCTION_5_13();
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  *(v10 + 32) = a3;
  OUTLINED_FUNCTION_5_13();
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  *(v11 + 32) = a3;
  OUTLINED_FUNCTION_50();
  v12 = swift_allocObject();
  *(v12 + 16) = a4;
  *(v12 + 24) = a5;
  OUTLINED_FUNCTION_68_0();
  v13 = swift_allocObject();
  v13[2] = _s27PhoneCallFlowDelegatePlugin0B15StateGuardCheckV_6onFailAcA06CommonbF9PredicateO_07SiriKitC003AnyC0CyXAtcfcSSycfu1_TA_0;
  v13[3] = v11;
  v13[4] = partial apply for implicit closure #4 in CallStateGuardCheck.init(_:onFail:);
  v13[5] = v12;
  outlined copy of CommonCallStatePredicate(a1, a2, a3);
  return partial apply for implicit closure #2 in implicit closure #1 in CallStateGuardCheck.init(_:onFail:);
}

uint64_t CallStateGuardFlow.__allocating_init(checks:sharedGlobals:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_11_24();
  v4 = swift_allocObject();
  CallStateGuardFlow.init(checks:sharedGlobals:)(a1, a2);
  return v4;
}

BOOL specialized Sequence.allSatisfy(_:)(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v5 = (a3 + 48);
  v6 = *(a3 + 16) + 1;
  do
  {
    if (!--v6)
    {
      break;
    }

    v7 = *(v5 - 2);
    v8 = *(v5 - 1);
    v9 = *v5;
    v12[0] = v7;
    v12[1] = v8;
    v13 = v9;
    outlined copy of CommonCallStatePredicate(v7, v8, v9);
    v10 = a1(v12);
    outlined consume of CommonCallStatePredicate(v7, v8, v9);
    if (v3)
    {
      break;
    }

    v5 += 24;
  }

  while ((v10 & 1) != 0);
  return v6 == 0;
}

uint64_t specialized Sequence.allSatisfy(_:)(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3, unint64_t a4)
{
  if ((a4 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a4) & 0xF;
  }

  else
  {
    v5 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
LABEL_26:
    v19 = 1;
    return v19 & 1;
  }

  v9 = 0;
  v23 = a4 & 0xFFFFFFFFFFFFFFLL;
  v10 = (a4 & 0xFFFFFFFFFFFFFFFLL) + 32;
  while (1)
  {
    if ((a4 & 0x1000000000000000) != 0)
    {
      v13 = _StringGuts.foreignErrorCorrectedScalar(startingAt:)();
      v17 = v16;
      goto LABEL_15;
    }

    if ((a4 & 0x2000000000000000) == 0)
    {
      v11 = v10;
      if ((a3 & 0x1000000000000000) == 0)
      {
        v11 = _StringObject.sharedUTF8.getter();
      }

      v12 = *(v11 + v9);
      v13 = *(v11 + v9);
      if (v12 < 0)
      {
        OUTLINED_FUNCTION_5_27();
        switch(v15)
        {
          case 1:
            goto LABEL_20;
          case 2:
            goto LABEL_21;
          case 3:
            goto LABEL_22;
          default:
            break;
        }
      }

LABEL_14:
      v17 = 1;
      goto LABEL_15;
    }

    v22[0] = a3;
    v22[1] = v23;
    v13 = *(v22 + v9);
    if ((*(v22 + v9) & 0x80000000) == 0)
    {
      goto LABEL_14;
    }

    OUTLINED_FUNCTION_5_27();
    switch(v20)
    {
      case 1:
LABEL_20:
        v13 = v14[1] & 0x3F | ((v13 & 0x1F) << 6);
        v17 = 2;
        break;
      case 2:
LABEL_21:
        v13 = ((v13 & 0xF) << 12) | ((v14[1] & 0x3F) << 6) | v14[2] & 0x3F;
        v17 = 3;
        break;
      case 3:
LABEL_22:
        v13 = ((v13 & 0xF) << 18) | ((v14[1] & 0x3F) << 12) | ((v14[2] & 0x3F) << 6) | v14[3] & 0x3F;
        v17 = 4;
        break;
      default:
        goto LABEL_14;
    }

LABEL_15:
    LODWORD(v22[0]) = v13;
    v18 = a1(v22);
    if (v4)
    {
      return v19 & 1;
    }

    if ((v18 & 1) == 0)
    {
      break;
    }

    v9 += v17;
    if (v9 >= v5)
    {
      goto LABEL_26;
    }
  }

  v19 = 0;
  return v19 & 1;
}

uint64_t specialized Sequence.allSatisfy(_:)(uint64_t (*a1)(uint64_t *), uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = a4(a3);
  v7 = result;
  v8 = 0;
  while (1)
  {
    v9 = v8;
    if (v7 == v8)
    {
      return v7 == v9;
    }

    if ((a3 & 0xC000000000000001) != 0)
    {
      result = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v10 = result;
    }

    else
    {
      if (v8 >= *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_13;
      }

      v10 = *(a3 + 8 * v8 + 32);
    }

    if (__OFADD__(v9, 1))
    {
      break;
    }

    v13 = v10;
    v11 = a1(&v13);

    if (!v4)
    {
      v8 = v9 + 1;
      if (v11)
      {
        continue;
      }
    }

    return v7 == v9;
  }

  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

uint64_t key path setter for CallStateGuardFlow.exitValue : CallStateGuardFlow(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 64) = v2;
  return result;
}

uint64_t CallStateGuardFlow.init(checks:sharedGlobals:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 64) = 1;
  *(v2 + 56) = a1;
  outlined init with take of PhoneCallFeatureFlagProviding(a2, v2 + 16);
  return v2;
}

uint64_t static CallStateGuardFlow.expectNoRingingCall(else:sharedGlobals:)(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy27PhoneCallFlowDelegatePlugin0E15StateGuardCheckVGMd, &_ss23_ContiguousArrayStorageCy27PhoneCallFlowDelegatePlugin0E15StateGuardCheckVGMR);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_424FD0;
  OUTLINED_FUNCTION_5_13();
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_42D810;
  *(v5 + 32) = 0;
  OUTLINED_FUNCTION_5_13();
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = 0;
  *(v6 + 32) = 3;
  OUTLINED_FUNCTION_5_13();
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  *(v7 + 24) = 0;
  *(v7 + 32) = 3;
  OUTLINED_FUNCTION_50();
  v8 = swift_allocObject();
  *(v8 + 16) = partial apply for implicit closure #1 in static CallStateGuardFlow.expectNoRingingCall(else:sharedGlobals:);
  *(v8 + 24) = a1;
  OUTLINED_FUNCTION_68_0();
  v9 = swift_allocObject();
  v9[2] = implicit closure #3 in CallStateGuardCheck.init(_:onFail:)partial apply;
  v9[3] = v7;
  v9[4] = partial apply for implicit closure #4 in CallStateGuardCheck.init(_:onFail:);
  v9[5] = v8;
  *(v4 + 32) = partial apply for implicit closure #2 in implicit closure #1 in CallStateGuardCheck.init(_:onFail:);
  *(v4 + 40) = v6;
  *(v4 + 48) = closure #1 in CallStateGuardCheck.init(_:description:onFail:)partial apply;
  *(v4 + 56) = v9;
  outlined init with copy of SignalProviding(a2, v12);
  type metadata accessor for CallStateGuardFlow();
  OUTLINED_FUNCTION_11_24();
  v10 = swift_allocObject();
  CallStateGuardFlow.init(checks:sharedGlobals:)(v4, v12);

  return v10;
}

uint64_t static CallStateGuardFlow.expectActiveCall(else:sharedGlobals:)(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy27PhoneCallFlowDelegatePlugin0E15StateGuardCheckVGMd, &_ss23_ContiguousArrayStorageCy27PhoneCallFlowDelegatePlugin0E15StateGuardCheckVGMR);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_424FD0;
  OUTLINED_FUNCTION_5_13();
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_426250;
  *(v5 + 32) = 0;
  OUTLINED_FUNCTION_5_13();
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_426250;
  *(v6 + 32) = 0;
  OUTLINED_FUNCTION_50();
  v7 = swift_allocObject();
  *(v7 + 16) = UsoEntity_common_Person.usoPerson.getter;
  *(v7 + 24) = a1;
  OUTLINED_FUNCTION_68_0();
  v8 = swift_allocObject();
  v8[2] = implicit closure #3 in CallStateGuardCheck.init(_:onFail:)partial apply;
  v8[3] = v6;
  v8[4] = partial apply for implicit closure #4 in CallStateGuardCheck.init(_:onFail:);
  v8[5] = v7;
  *(v4 + 32) = partial apply for implicit closure #2 in implicit closure #1 in CallStateGuardCheck.init(_:onFail:);
  *(v4 + 40) = v5;
  *(v4 + 48) = closure #1 in CallStateGuardCheck.init(_:description:onFail:)partial apply;
  *(v4 + 56) = v8;
  outlined init with copy of SignalProviding(a2, v11);
  type metadata accessor for CallStateGuardFlow();
  OUTLINED_FUNCTION_11_24();
  v9 = swift_allocObject();
  CallStateGuardFlow.init(checks:sharedGlobals:)(v4, v11);

  return v9;
}

uint64_t CallStateGuardFlow.execute(completion:)()
{
  type metadata accessor for CallStateGuardFlow();
  lazy protocol witness table accessor for type CallStateGuardFlow and conformance CallStateGuardFlow();
  return Flow.deferToExecuteAsync(_:)();
}

uint64_t CallStateGuardFlow.execute()(uint64_t a1)
{
  *(v2 + 104) = a1;
  *(v2 + 112) = v1;
  return _swift_task_switch(CallStateGuardFlow.execute(), 0, 0);
}

uint64_t CallStateGuardFlow.execute()()
{
  v1 = v0[14];
  v2 = v1[5];
  v3 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v2);
  (*(v3 + 120))(v2, v3);
  v4 = 0;
  v5 = v1[7];
  v6 = *(v5 + 16);
  v7 = (v5 + 56);
  while (v6 != v4)
  {
    if (v4 >= *(v5 + 16))
    {
      __break(1u);
      goto LABEL_19;
    }

    v9 = *(v7 - 1);
    v8 = *v7;
    v11 = *(v7 - 3);
    v10 = *(v7 - 2);

    if ((v11(v0 + 2) & 1) == 0)
    {
      if (one-time initialization token for siriPhone != -1)
      {
        OUTLINED_FUNCTION_6_2();
      }

      v18 = type metadata accessor for Logger();
      __swift_project_value_buffer(v18, static Logger.siriPhone);
      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 0;
        _os_log_impl(&dword_0, v19, v20, "#CallStateGuardFlow: Failed! Executing wrapped precondition flow.", v21, 2u);
        OUTLINED_FUNCTION_26_0();
      }

      v22 = v0[13];
      v23 = v0[14];

      v24 = swift_beginAccess();
      *(v23 + 64) = 1;
      v9(v24);
      static ExecuteResponse.complete(next:)();

      goto LABEL_15;
    }

    ++v4;
    v7 += 4;
  }

  if (one-time initialization token for siriPhone == -1)
  {
    goto LABEL_7;
  }

LABEL_19:
  OUTLINED_FUNCTION_6_2();
LABEL_7:
  v12 = type metadata accessor for Logger();
  __swift_project_value_buffer(v12, static Logger.siriPhone);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_0, v13, v14, "#CallStateGuardFlow: Passed!", v15, 2u);
    OUTLINED_FUNCTION_26_0();
  }

  v16 = v0[13];
  v17 = v0[14];

  swift_beginAccess();
  *(v17 + 64) = 0;
  static ExecuteResponse.complete()();
LABEL_15:
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v25 = v0[1];

  return v25();
}

uint64_t CallStateGuardFlow.deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = *(v0 + 56);

  return v0;
}

uint64_t CallStateGuardFlow.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = *(v0 + 56);

  OUTLINED_FUNCTION_11_24();

  return swift_deallocClassInstance();
}

uint64_t protocol witness for Flow.execute() in conformance CallStateGuardFlow(uint64_t a1)
{
  v4 = *(**v1 + 152);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = protocol witness for UnlockDeviceFlowStrategyAsync.makePromptForDeviceUnlock() in conformance DefaultUnlockDeviceFlowStrategyAsync;

  return v8(a1);
}

uint64_t protocol witness for Flow.exitValue.getter in conformance CallStateGuardFlow@<X0>(_BYTE *a1@<X8>)
{
  result = (*(**v1 + 104))();
  *a1 = result & 1;
  return result;
}

uint64_t key path getter for CallStateGuardCheck.condition : CallStateGuardCheck@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  *a2 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed CallStateProviding) -> (@unowned Bool);
  a2[1] = v5;
}

uint64_t key path setter for CallStateGuardCheck.condition : CallStateGuardCheck(uint64_t *a1, uint64_t (**a2)())
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = a2[1];

  *a2 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed CallStateProviding) -> (@out Bool);
  a2[1] = v5;
  return result;
}

uint64_t key path getter for CallStateGuardCheck.flowOnFailure : CallStateGuardCheck@<X0>(uint64_t a1@<X0>, uint64_t (**a2)@<X0>(uint64_t *a1@<X8>)@<X8>)
{
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  *a2 = partial apply for thunk for @escaping @callee_guaranteed () -> (@owned AnyFlow);
  a2[1] = v5;
}

uint64_t key path setter for CallStateGuardCheck.flowOnFailure : CallStateGuardCheck(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = *(a2 + 24);

  *(a2 + 16) = partial apply for thunk for @escaping @callee_guaranteed () -> (@out AnyFlow);
  *(a2 + 24) = v5;
  return result;
}

uint64_t closure #1 in CallStateGuardCheck.init(_:description:onFail:)(uint64_t (*a1)(void), uint64_t a2, uint64_t (*a3)(void))
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
    v9 = swift_slowAlloc();
    v14 = v9;
    *v8 = 136315138;
    v10 = a1();
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, &v14);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_0, v6, v7, "#CallStateGuardCheck Condition failed! %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    OUTLINED_FUNCTION_26_0();
    OUTLINED_FUNCTION_26_0();
  }

  return a3();
}

uint64_t CommonCallStatePredicate.test(_:)(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  switch(a4)
  {
    case 1:
      v32 = a1[3];
      v33 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, v32);
      if ((*(v33 + 24))(v32, v33))
      {
        v14 = (a2)();
        swift_unknownObjectRelease();
      }

      else
      {
        v14 = 0;
      }

      break;
    case 2:
      v20 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, a1[3]);
      v21 = *(v20 + 40);
      v22 = OUTLINED_FUNCTION_72();
      v23(v22);
      swift_getAtKeyPath();
      __swift_destroy_boxed_opaque_existential_1(v37);
      v14 = v36;
      break;
    case 3:
      v24 = *(a2 + 16);
      v25 = *(a2 + 24);
      v26 = *(a2 + 32);
      v27 = OUTLINED_FUNCTION_72();
      outlined copy of CommonCallStatePredicate(v27, v28, v26);
      v29 = CommonCallStatePredicate.test(_:)(a1, v24, v25, v26);
      v30 = OUTLINED_FUNCTION_72();
      outlined consume of CommonCallStatePredicate(v30, v31, v26);
      v14 = v29 ^ 1;
      break;
    case 4:
      v15 = *(a2 + 16);
      __chkstk_darwin(a1);
      OUTLINED_FUNCTION_8_28();
      v16 = OUTLINED_FUNCTION_12_27();
      v19 = specialized Sequence.allSatisfy(_:)(v16, v17, v18);
      goto LABEL_9;
    case 5:
      v34 = *(a2 + 16);
      __chkstk_darwin(a1);
      OUTLINED_FUNCTION_8_28();
      OUTLINED_FUNCTION_12_27();
      v19 = specialized Sequence.contains(where:)();
LABEL_9:
      v14 = v19;

      break;
    default:
      v6 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, a1[3]);
      v7 = *(v6 + 16);
      v8 = OUTLINED_FUNCTION_72();
      v9(v8);
      v10 = v37[4];
      __swift_project_boxed_opaque_existential_1(v37, v37[3]);
      v11 = *(v10 + 8);
      v12 = OUTLINED_FUNCTION_72();
      v14 = (a2 & ~v13(v12)) == 0;
      __swift_destroy_boxed_opaque_existential_1(v37);
      break;
  }

  return v14 & 1;
}

unint64_t CommonCallStatePredicate.debugDescription.getter(uint64_t a1, uint64_t a2, char a3)
{
  switch(a3)
  {
    case 1:
      return 0xD000000000000016;
    case 2:
      v41 = 0;
      _StringGuts.grow(_:)(21);
      v17._object = 0x80000000004597A0;
      v17._countAndFlagsBits = 0xD000000000000012;
      String.append(_:)(v17);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss7KeyPathCy27PhoneCallFlowDelegatePlugin19SPHCallCapabilities_pSbGMd, &_ss7KeyPathCy27PhoneCallFlowDelegatePlugin19SPHCallCapabilities_pSbGMR);
      _print_unlocked<A, B>(_:_:)();
      goto LABEL_22;
    case 3:
      v18 = *(a1 + 16);
      v19 = *(a1 + 24);
      v20 = *(a1 + 32);
      v21 = OUTLINED_FUNCTION_72();
      outlined copy of CommonCallStatePredicate(v21, v22, v20);
      v23._countAndFlagsBits = 0x28746F6E2ELL;
      v23._object = 0xE500000000000000;
      String.append(_:)(v23);
      _print_unlocked<A, B>(_:_:)();
      v24._countAndFlagsBits = 41;
      v24._object = 0xE100000000000000;
      String.append(_:)(v24);
      v25 = OUTLINED_FUNCTION_72();
      outlined consume of CommonCallStatePredicate(v25, v26, v20);
      return 0;
    case 4:
      v5 = *(a1 + 16);
      v41 = 0x28646E612ELL;
      if (!*(v5 + 16))
      {
        goto LABEL_21;
      }

      OUTLINED_FUNCTION_13_18();
      do
      {
        v6 = *(v5 + 32);
        v7 = *(v5 + 40);
        v8 = *(v5 + 48);
        v9 = OUTLINED_FUNCTION_3_30();
        outlined copy of CommonCallStatePredicate(v9, v10, v11);
        CommonCallStatePredicate.debugDescription.getter(v6);
        v12 = OUTLINED_FUNCTION_3_30();
        outlined consume of CommonCallStatePredicate(v12, v13, v14);
        OUTLINED_FUNCTION_10_26();
        if (v15)
        {
          OUTLINED_FUNCTION_9_25();
        }

        OUTLINED_FUNCTION_7_20();
      }

      while (!v16);
      break;
    case 5:
      v28 = *(a1 + 16);
      v41 = 678588206;
      if (!*(v28 + 16))
      {
        goto LABEL_21;
      }

      OUTLINED_FUNCTION_13_18();
      do
      {
        v29 = *(v28 + 32);
        v30 = *(v28 + 40);
        v31 = *(v28 + 48);
        v32 = OUTLINED_FUNCTION_3_30();
        outlined copy of CommonCallStatePredicate(v32, v33, v34);
        CommonCallStatePredicate.debugDescription.getter(v29);
        v35 = OUTLINED_FUNCTION_3_30();
        outlined consume of CommonCallStatePredicate(v35, v36, v37);
        OUTLINED_FUNCTION_10_26();
        if (v15)
        {
          OUTLINED_FUNCTION_9_25();
        }

        OUTLINED_FUNCTION_7_20();
      }

      while (!v16);
      break;
    default:
      v41 = 0x6174536C6C61632ELL;
      v3 = AFCallStateGetNames();
      if (v3)
      {
        v4 = v3;
        static Array._unconditionallyBridgeFromObjectiveC(_:)();
      }

      Array.description.getter();

      v40._countAndFlagsBits = OUTLINED_FUNCTION_72();
      String.append(_:)(v40);

      return v41;
  }

LABEL_21:
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  lazy protocol witness table accessor for type [String] and conformance [A]();
  BidirectionalCollection<>.joined(separator:)();

  v38._countAndFlagsBits = OUTLINED_FUNCTION_72();
  String.append(_:)(v38);

LABEL_22:
  v39._countAndFlagsBits = 41;
  v39._object = 0xE100000000000000;
  String.append(_:)(v39);
  return v41;
}

unint64_t specialized implicit closure #3 in CallStateGuardCheck.init(_:description:onFail:)()
{
  return 0xD000000000000014;
}

{
  return 0xD000000000000010;
}

uint64_t partial apply for implicit closure #3 in CallStateGuardCheck.init(_:description:onFail:)()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t _s27PhoneCallFlowDelegatePlugin0B15StateGuardCheckV_11description6onFailAcA06CommonbF9PredicateO_SSyXA07SiriKitC003AnyC0CyXAtcfcAJycfu2_TA_0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t outlined copy of CommonCallStatePredicate(uint64_t a1, uint64_t a2, char a3)
{
  switch(a3)
  {
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:

      break;
    default:
      return result;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CallStateGuardFlow and conformance CallStateGuardFlow()
{
  result = lazy protocol witness table cache variable for type CallStateGuardFlow and conformance CallStateGuardFlow;
  if (!lazy protocol witness table cache variable for type CallStateGuardFlow and conformance CallStateGuardFlow)
  {
    type metadata accessor for CallStateGuardFlow();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CallStateGuardFlow and conformance CallStateGuardFlow);
  }

  return result;
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

uint64_t getEnumTagSinglePayload for CommonCallStatePredicate(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFB && *(a1 + 17))
    {
      v2 = *a1 + 250;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 5)
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

uint64_t storeEnumTagSinglePayload for CommonCallStatePredicate(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 16) = 0;
    *result = a2 - 251;
    *(result + 8) = 0;
    if (a3 >= 0xFB)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed () -> (@out AnyFlow)()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v1(&v4);
  return v4;
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed () -> (@owned AnyFlow)@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  result = v3();
  *a1 = result;
  return result;
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed CallStateProviding) -> (@out Bool)()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v1(&v4);
  return v4;
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed CallStateProviding) -> (@unowned Bool)@<X0>(_BYTE *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  result = v3();
  *a1 = result & 1;
  return result;
}

uint64_t CallStateNotificationManager.__allocating_init()()
{
  v12 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v0 = *(v12 - 8);
  v1 = *(v0 + 64);
  __chkstk_darwin(v12);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OS_dispatch_queue.Attributes();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v11 = type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for OS_dispatch_queue, OS_dispatch_queue_ptr);
  static DispatchQoS.unspecified.getter();
  v14 = &_swiftEmptyArrayStorage;
  _s10Foundation4UUIDVACSHAAWlTm_0(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, &type metadata accessor for OS_dispatch_queue.Attributes);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v0 + 104))(v3, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v12);
  v8 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v9 = [objc_allocWithZone(TUCallCenter) initWithQueue:v8];
  return (*(v13 + 160))(v8, v9);
}

uint64_t *CallStateNotificationManager.instance.unsafeMutableAddressor()
{
  if (one-time initialization token for instance != -1)
  {
    OUTLINED_FUNCTION_10_27();
  }

  return &static CallStateNotificationManager.instance;
}

uint64_t static CallStateNotificationManager.instance.getter()
{
  if (one-time initialization token for instance != -1)
  {
    OUTLINED_FUNCTION_10_27();
  }
}

uint64_t one-time initialization function for defaultLoggingTaskTimeout()
{
  v0 = type metadata accessor for DispatchTimeInterval();
  __swift_allocate_value_buffer(v0, static CallStateNotificationManager.defaultLoggingTaskTimeout);
  *__swift_project_value_buffer(v0, static CallStateNotificationManager.defaultLoggingTaskTimeout) = 1;
  OUTLINED_FUNCTION_40(v0);
  v2 = *(v1 + 104);

  return v2();
}

uint64_t CallStateNotificationManager.defaultLoggingTaskTimeout.unsafeMutableAddressor()
{
  if (one-time initialization token for defaultLoggingTaskTimeout != -1)
  {
    OUTLINED_FUNCTION_9_26();
  }

  v0 = type metadata accessor for DispatchTimeInterval();

  return __swift_project_value_buffer(v0, static CallStateNotificationManager.defaultLoggingTaskTimeout);
}

uint64_t static CallStateNotificationManager.defaultLoggingTaskTimeout.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for defaultLoggingTaskTimeout != -1)
  {
    OUTLINED_FUNCTION_9_26();
  }

  v2 = type metadata accessor for DispatchTimeInterval();
  __swift_project_value_buffer(v2, static CallStateNotificationManager.defaultLoggingTaskTimeout);
  OUTLINED_FUNCTION_40(v2);
  v4 = *(v3 + 16);

  return v4(a1);
}

void key path setter for CallStateNotificationManager.tasks : CallStateNotificationManager(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  CallStateNotificationManager.tasks.setter(v4);
}

void CallStateNotificationManager.tasks.didset()
{
  v1 = v0;
  if (one-time initialization token for siriPhone != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.siriPhone);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    swift_beginAccess();
    *(v5 + 4) = *(*(v1 + 32) + 16);

    _os_log_impl(&dword_0, v3, v4, "#CallStateNotificationManager task count %ld", v5, 0xCu);
  }

  else
  {
  }
}

uint64_t CallStateNotificationManager.tasks.getter()
{
  OUTLINED_FUNCTION_4_4();
  v1 = *(v0 + 32);
}

void CallStateNotificationManager.tasks.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_11_2();
  v3 = *(v1 + 32);
  *(v1 + 32) = a1;

  CallStateNotificationManager.tasks.didset();
}

uint64_t key path setter for CallStateNotificationManager.didRegisterNotificationObservers : CallStateNotificationManager(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 40) = v2;
  return result;
}

uint64_t CallStateNotificationManager.__allocating_init(queue:callCenter:)()
{
  OUTLINED_FUNCTION_24_3();
  v2 = swift_allocObject();
  CallStateNotificationManager.init(queue:callCenter:)(v1, v0);
  return v2;
}

uint64_t CallStateNotificationManager.init(queue:callCenter:)(void *a1, void *a2)
{
  v3 = v2;
  type metadata accessor for UUID();
  type metadata accessor for CallStateOneTimeTask();
  OUTLINED_FUNCTION_1_46();
  _s10Foundation4UUIDVACSHAAWlTm_0(v6, v7);
  v8 = Dictionary.init(dictionaryLiteral:)();
  *(v3 + 24) = a2;
  *(v3 + 32) = v8;
  *(v3 + 40) = 0;
  *(v3 + 16) = a1;
  OUTLINED_FUNCTION_19_6();
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  OUTLINED_FUNCTION_50();
  v10 = swift_allocObject();
  *(v10 + 16) = partial apply for closure #1 in CallStateNotificationManager.init(queue:callCenter:);
  *(v10 + 24) = v9;
  v20[4] = partial apply for thunk for @callee_guaranteed () -> ();
  v20[5] = v10;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 1107296256;
  OUTLINED_FUNCTION_8_29();
  v20[2] = v11;
  v20[3] = &block_descriptor_0;
  v12 = _Block_copy(v20);
  v13 = a2;
  v14 = a1;

  dispatch_sync(v14, v12);
  _Block_release(v12);
  LOBYTE(a1) = swift_isEscapingClosureAtFileLocation();

  if (a1)
  {
    __break(1u);
  }

  else if (one-time initialization token for siriPhone == -1)
  {
    goto LABEL_3;
  }

  OUTLINED_FUNCTION_6_2();
LABEL_3:
  v15 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_9_0(v15, static Logger.siriPhone);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_0, v16, v17, "#CallStateNotificationManager initialized", v18, 2u);
    OUTLINED_FUNCTION_26_0();
  }

  return v3;
}

uint64_t type metadata accessor for CallStateOneTimeTask()
{
  result = type metadata singleton initialization cache for CallStateOneTimeTask;
  if (!type metadata singleton initialization cache for CallStateOneTimeTask)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t partial apply for thunk for @callee_guaranteed () -> ()()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

Swift::Void __swiftcall CallStateNotificationManager.callStateChanged(_:)(NSNotification a1)
{
  OUTLINED_FUNCTION_66();
  v3 = v2;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = OUTLINED_FUNCTION_7(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v5);
  OUTLINED_FUNCTION_4();
  v12 = v11 - v10;
  v28 = type metadata accessor for DispatchQoS();
  v13 = OUTLINED_FUNCTION_7(v28);
  v15 = v14;
  v17 = *(v16 + 64);
  __chkstk_darwin(v13);
  OUTLINED_FUNCTION_4();
  v20 = v19 - v18;
  v27 = *(v1 + 16);
  OUTLINED_FUNCTION_50();
  v21 = swift_allocObject();
  *(v21 + 16) = v3;
  *(v21 + 24) = v1;
  v29[4] = partial apply for closure #1 in CallStateNotificationManager.callStateChanged(_:);
  v29[5] = v21;
  OUTLINED_FUNCTION_3_31();
  OUTLINED_FUNCTION_6_3(COERCE_DOUBLE(1107296256));
  v29[2] = v22;
  v29[3] = &block_descriptor_9;
  v23 = _Block_copy(v29);
  v24 = v3;

  static DispatchQoS.unspecified.getter();
  OUTLINED_FUNCTION_7_21();
  _s10Foundation4UUIDVACSHAAWlTm_0(v25, v26);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v23);
  (*(v7 + 8))(v12, v4);
  (*(v15 + 8))(v20, v28);

  OUTLINED_FUNCTION_65();
}

void closure #1 in CallStateNotificationManager.callStateChanged(_:)(void *a1, uint64_t a2)
{
  if ([a1 object])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v30 = 0u;
    v31 = 0u;
  }

  v32[0] = v30;
  v32[1] = v31;
  if (*(&v31 + 1))
  {
    type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for TUCall, TUCall_ptr);
    if (swift_dynamicCast())
    {
      if (one-time initialization token for siriPhone != -1)
      {
        swift_once();
      }

      v3 = type metadata accessor for Logger();
      __swift_project_value_buffer(v3, static Logger.siriPhone);
      v4 = v29;
      v5 = Logger.logObject.getter();
      v6 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        v8 = swift_slowAlloc();
        *&v32[0] = v8;
        *v7 = 136315138;
        [v4 callStatus];
        v9 = TUStringForCallStatus();

        if (!v9)
        {
          __break(1u);
          return;
        }

        v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v12 = v11;

        v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v12, v32);

        *(v7 + 4) = v13;
        _os_log_impl(&dword_0, v5, v6, "#CallStateNotificationManager received CallStatusChanged, status = %s", v7, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v8);
      }

      else
      {
      }

      v18 = (*(*a2 + 112))();
      v19 = v18;
      v20 = v18 + 64;
      v21 = 1 << *(v18 + 32);
      v22 = -1;
      if (v21 < 64)
      {
        v22 = ~(-1 << v21);
      }

      v23 = v22 & *(v18 + 64);
      v24 = (v21 + 63) >> 6;

      v25 = 0;
      while (v23)
      {
        v26 = v25;
LABEL_25:
        v27 = __clz(__rbit64(v23));
        v23 &= v23 - 1;
        v28 = *(*(v19 + 56) + ((v26 << 9) | (8 * v27)));

        (*(*v28 + 200))([v4 callStatus]);
      }

      while (1)
      {
        v26 = v25 + 1;
        if (__OFADD__(v25, 1))
        {
          break;
        }

        if (v26 >= v24)
        {

          return;
        }

        v23 = *(v20 + 8 * v26);
        ++v25;
        if (v23)
        {
          v25 = v26;
          goto LABEL_25;
        }
      }

      __break(1u);
      goto LABEL_29;
    }
  }

  else
  {
    outlined destroy of Any?(v32);
  }

  if (one-time initialization token for siriPhone != -1)
  {
LABEL_29:
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  __swift_project_value_buffer(v14, static Logger.siriPhone);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_0, v15, v16, "#CallStateNotificationManager received CallStatusChanged notification without a TUCall", v17, 2u);
  }
}

void CallStateNotificationManager.addTask(timeout:task:)()
{
  OUTLINED_FUNCTION_66();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = type metadata accessor for DispatchTimeInterval();
  v8 = OUTLINED_FUNCTION_7(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  __chkstk_darwin(v8);
  v13 = *(v0 + 16);
  (*(v10 + 16))(v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v6, v7);
  v14 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = v4;
  *(v15 + 24) = v2;
  (*(v10 + 32))(v15 + v14, v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
  *(v15 + ((v12 + v14 + 7) & 0xFFFFFFFFFFFFFFF8)) = v0;
  OUTLINED_FUNCTION_50();
  v16 = swift_allocObject();
  *(v16 + 16) = partial apply for closure #1 in CallStateNotificationManager.addTask(timeout:task:);
  *(v16 + 24) = v15;
  v19[4] = thunk for @callee_guaranteed () -> ()partial apply;
  v19[5] = v16;
  OUTLINED_FUNCTION_3_31();
  v19[1] = 1107296256;
  OUTLINED_FUNCTION_8_29();
  v19[2] = v17;
  v19[3] = &block_descriptor_19;
  v18 = _Block_copy(v19);

  dispatch_sync(v13, v18);
  _Block_release(v18);
  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_65();
  }
}

uint64_t closure #1 in CallStateNotificationManager.addTask(timeout:task:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v35 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for CallStateOneTimeTask();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  v13 = swift_allocObject();

  CallStateOneTimeTask.init(task:)();
  (*(*v13 + 208))(a3);
  v14 = swift_allocObject();
  swift_weakInit();
  v15 = swift_allocObject();
  swift_weakInit();
  v16 = swift_allocObject();
  *(v16 + 16) = v15;
  *(v16 + 24) = v14;
  v17 = *(*v13 + 216);

  v17(partial apply for closure #1 in closure #1 in CallStateNotificationManager.addTask(timeout:task:), v16);

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
    v33 = swift_slowAlloc();
    v37 = v33;
    *v21 = 136315138;
    v34 = *(v7 + 16);
    v22 = v35;
    v34(v35, v13 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin20CallStateOneTimeTask_uuid, v6);
    _s10Foundation4UUIDVACSHAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, &type metadata accessor for UUID);
    v23 = dispatch thunk of CustomStringConvertible.description.getter();
    HIDWORD(v32) = v20;
    v24 = v7;
    v25 = v6;
    v27 = v26;
    (*(v24 + 8))(v22, v25);
    v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v27, &v37);
    v6 = v25;
    v7 = v24;
    v29 = v22;

    *(v21 + 4) = v28;
    _os_log_impl(&dword_0, v19, BYTE4(v32), "#CallStateNotificationManager adding task: %s", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v33);

    v34(v22, v13 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin20CallStateOneTimeTask_uuid, v6);
  }

  else
  {

    v29 = v35;
    (*(v7 + 16))(v35, v13 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin20CallStateOneTimeTask_uuid, v6);
  }

  swift_beginAccess();
  v30 = a4[4];
  swift_isUniquelyReferenced_nonNull_native();
  v36 = a4[4];
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v13, v29);
  a4[4] = v36;
  (*(v7 + 8))(v29, v6);
  swift_endAccess();
  CallStateNotificationManager.tasks.didset();
  if (((*(*a4 + 136))() & 1) == 0)
  {
    CallStateNotificationManager.startObservingNotifications()();
  }
}

uint64_t CallStateOneTimeTask.__allocating_init(task:)()
{
  OUTLINED_FUNCTION_24_3();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  CallStateOneTimeTask.init(task:)();
  return v3;
}

uint64_t closure #1 in closure #1 in CallStateNotificationManager.addTask(timeout:task:)()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      CallStateNotificationManager.removeTask(_:)();
    }
  }

  return result;
}

void CallStateNotificationManager.removeTask(_:)()
{
  OUTLINED_FUNCTION_66();
  v1 = v0;
  v3 = v2;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = OUTLINED_FUNCTION_7(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v5);
  OUTLINED_FUNCTION_4();
  v12 = v11 - v10;
  v13 = type metadata accessor for DispatchQoS();
  v14 = OUTLINED_FUNCTION_7(v13);
  v38 = v15;
  v39 = v14;
  v17 = *(v16 + 64);
  __chkstk_darwin(v14);
  OUTLINED_FUNCTION_4();
  v20 = v19 - v18;
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2();
  }

  v21 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_9_0(v21, static Logger.siriPhone);

  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v22, v23))
  {
    v37 = v7;
    v24 = OUTLINED_FUNCTION_42();
    v25 = OUTLINED_FUNCTION_36();
    v40[0] = v25;
    *v24 = 136315138;
    type metadata accessor for UUID();
    OUTLINED_FUNCTION_1_46();
    _s10Foundation4UUIDVACSHAAWlTm_0(v26, v27);
    v28 = dispatch thunk of CustomStringConvertible.description.getter();
    v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v29, v40);

    *(v24 + 4) = v30;
    v1 = v0;
    _os_log_impl(&dword_0, v22, v23, "#CallStateNotificationManager removing task: %s", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v25);
    OUTLINED_FUNCTION_26_0();
    v7 = v37;
    OUTLINED_FUNCTION_26_0();
  }

  v31 = *(v1 + 16);
  OUTLINED_FUNCTION_50();
  v32 = swift_allocObject();
  *(v32 + 16) = v1;
  *(v32 + 24) = v3;
  v40[4] = partial apply for closure #1 in CallStateNotificationManager.removeTask(_:);
  v40[5] = v32;
  OUTLINED_FUNCTION_3_31();
  OUTLINED_FUNCTION_6_3(COERCE_DOUBLE(1107296256));
  v40[2] = v33;
  v40[3] = &block_descriptor_52;
  v34 = _Block_copy(v40);

  static DispatchQoS.unspecified.getter();
  OUTLINED_FUNCTION_7_21();
  _s10Foundation4UUIDVACSHAAWlTm_0(v35, v36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v34);
  (*(v7 + 8))(v12, v4);
  (*(v38 + 8))(v20, v39);

  OUTLINED_FUNCTION_65();
}

uint64_t closure #1 in CallStateNotificationManager.removeTask(_:)(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin20CallStateOneTimeTask_uuid;
  swift_beginAccess();
  specialized Dictionary._Variant.removeValue(forKey:)(a2 + v4);
  swift_endAccess();

  CallStateNotificationManager.tasks.didset();
  v5 = *((*(*a1 + 112))() + 16);

  if (!v5)
  {
    result = (*(*a1 + 136))(result);
    if (result)
    {
      return CallStateNotificationManager.stopObservingNotifications()();
    }
  }

  return result;
}

uint64_t CallStateNotificationManager.startObservingNotifications()()
{
  v1 = v0;
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2();
  }

  v2 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_9_0(v2, static Logger.siriPhone);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_51_0(v4))
  {
    v5 = OUTLINED_FUNCTION_42();
    v6 = OUTLINED_FUNCTION_36();
    v22 = v6;
    *v5 = 136315138;
    *(v5 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001DLL, 0x80000000004599E0, &v22);
    OUTLINED_FUNCTION_14_9();
    _os_log_impl(v7, v8, v9, v10, v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    OUTLINED_FUNCTION_26_0();
    OUTLINED_FUNCTION_26_0();
  }

  v12 = objc_opt_self();
  v13 = [v12 defaultCenter];
  OUTLINED_FUNCTION_28_11(v13, v14, v15, v16, TUCallCenterCallStatusChangedNotification);

  v17 = [v12 defaultCenter];
  OUTLINED_FUNCTION_28_11(v17, v18, v19, v20, TUCallCenterVideoCallStatusChangedNotification);

  result = OUTLINED_FUNCTION_11_2();
  *(v1 + 40) = 1;
  return result;
}

uint64_t CallStateNotificationManager.stopObservingNotifications()()
{
  v1 = v0;
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2();
  }

  v2 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_9_0(v2, static Logger.siriPhone);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_51_0(v4))
  {
    v5 = OUTLINED_FUNCTION_42();
    v6 = OUTLINED_FUNCTION_36();
    v16 = v6;
    *v5 = 136315138;
    *(v5 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001CLL, 0x80000000004599C0, &v16);
    OUTLINED_FUNCTION_14_9();
    _os_log_impl(v7, v8, v9, v10, v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    OUTLINED_FUNCTION_26_0();
    OUTLINED_FUNCTION_26_0();
  }

  v12 = objc_opt_self();
  v13 = [v12 defaultCenter];
  [v13 removeObserver:v1 name:TUCallCenterCallStatusChangedNotification object:0];

  v14 = [v12 defaultCenter];
  [v14 removeObserver:v1 name:TUCallCenterVideoCallStatusChangedNotification object:0];

  result = OUTLINED_FUNCTION_11_2();
  *(v1 + 40) = 0;
  return result;
}

uint64_t CallStateNotificationManager.deinit()
{
  v1 = v0;
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2();
  }

  v2 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_9_0(v2, static Logger.siriPhone);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_51_0(v4))
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_14_9();
    _os_log_impl(v5, v6, v7, v8, v9, 2u);
    OUTLINED_FUNCTION_26_0();
  }

  v10 = *(v1 + 32);

  return v1;
}

uint64_t CallStateNotificationManager.__deallocating_deinit()
{
  CallStateNotificationManager.deinit();

  return swift_deallocClassInstance();
}

uint64_t CallStateOneTimeTask.uuid.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin20CallStateOneTimeTask_uuid;
  v4 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_40(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t CallStateOneTimeTask.task.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin20CallStateOneTimeTask_task);
  v2 = *(v0 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin20CallStateOneTimeTask_task + 8);

  return v1;
}

void (*CallStateOneTimeTask.isActive.didset())(void)
{
  v1 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin20CallStateOneTimeTask_isActive;
  result = swift_beginAccess();
  if ((*(v0 + v1) & 1) == 0)
  {
    result = (*(*v0 + 144))(result);
    if (result)
    {
      v3 = result;
      result();
      return _sxs5Error_pRi_zRi0_zlySo21DialogExecutionResultCIsegHrzo_SgWOe(v3);
    }
  }

  return result;
}

uint64_t CallStateOneTimeTask.isActive.getter()
{
  v1 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin20CallStateOneTimeTask_isActive;
  OUTLINED_FUNCTION_4_4();
  return *(v0 + v1);
}

void (*CallStateOneTimeTask.isActive.setter(char a1))(void)
{
  v3 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin20CallStateOneTimeTask_isActive;
  OUTLINED_FUNCTION_11_2();
  *(v1 + v3) = a1;
  return CallStateOneTimeTask.isActive.didset();
}

uint64_t key path getter for CallStateOneTimeTask.teardownHandler : CallStateOneTimeTask@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  result = (*(**a1 + 144))();
  if (result)
  {
    v5 = result;
    v6 = v4;
    result = swift_allocObject();
    *(result + 16) = v5;
    *(result + 24) = v6;
    v7 = partial apply for thunk for @callee_guaranteed () -> ();
  }

  else
  {
    v7 = 0;
  }

  *a2 = v7;
  a2[1] = result;
  return result;
}

uint64_t key path setter for CallStateOneTimeTask.teardownHandler : CallStateOneTimeTask(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = partial apply for thunk for @escaping @callee_guaranteed () -> (@out ());
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin20CallStateOneTimeTask_teardownHandler);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  sub_2A134(v3);
  return _sxs5Error_pRi_zRi0_zlySo21DialogExecutionResultCIsegHrzo_SgWOe(v8);
}

uint64_t CallStateOneTimeTask.teardownHandler.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin20CallStateOneTimeTask_teardownHandler);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];
  sub_2A134(v3);
  return v3;
}

uint64_t key path setter for CallStateOneTimeTask.timer : CallStateOneTimeTask(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin20CallStateOneTimeTask_timer;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  swift_unknownObjectRetain();
  return swift_unknownObjectRelease();
}

uint64_t CallStateOneTimeTask.timer.getter()
{
  v1 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin20CallStateOneTimeTask_timer;
  OUTLINED_FUNCTION_4_4();
  v2 = *(v0 + v1);
  return swift_unknownObjectRetain();
}

uint64_t CallStateOneTimeTask.init(task:)()
{
  OUTLINED_FUNCTION_24_3();
  UUID.init()();
  *(v1 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin20CallStateOneTimeTask_isActive) = 1;
  v3 = (v1 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin20CallStateOneTimeTask_teardownHandler);
  *v3 = 0;
  v3[1] = 0;
  *(v1 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin20CallStateOneTimeTask_timer) = 0;
  v4 = (v1 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin20CallStateOneTimeTask_task);
  *v4 = v2;
  v4[1] = v0;
  return v1;
}

uint64_t CallStateOneTimeTask.callStateDidChange(_:)(uint64_t a1)
{
  v2 = v1;
  result = (*(*v1 + 120))();
  if (result)
  {
    v5 = *(v1 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin20CallStateOneTimeTask_task);
    v6 = *(v1 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin20CallStateOneTimeTask_task + 8);
    result = v5(a1);
    if (result)
    {
      if (one-time initialization token for siriPhone != -1)
      {
        OUTLINED_FUNCTION_6_2();
      }

      v7 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_9_0(v7, static Logger.siriPhone);

      v8 = Logger.logObject.getter();
      v9 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v8, v9))
      {
        v10 = OUTLINED_FUNCTION_42();
        v11 = OUTLINED_FUNCTION_36();
        v20 = v11;
        *v10 = 136315138;
        type metadata accessor for UUID();
        OUTLINED_FUNCTION_1_46();
        _s10Foundation4UUIDVACSHAAWlTm_0(v12, v13);
        v14 = dispatch thunk of CustomStringConvertible.description.getter();
        v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, &v20);

        *(v10 + 4) = v16;
        OUTLINED_FUNCTION_26(&dword_0, v17, v18, "#CallStateOneTimeTask executed %s");
        __swift_destroy_boxed_opaque_existential_1(v11);
        OUTLINED_FUNCTION_26_0();
        OUTLINED_FUNCTION_26_0();
      }

      v19 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin20CallStateOneTimeTask_isActive;
      OUTLINED_FUNCTION_11_2();
      *(v2 + v19) = 0;
      return CallStateOneTimeTask.isActive.didset();
    }
  }

  return result;
}

void CallStateOneTimeTask.setTimeout(timeout:)()
{
  OUTLINED_FUNCTION_66();
  v94 = v0;
  v87 = v1;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = OUTLINED_FUNCTION_7(v2);
  v92 = v4;
  v93 = v3;
  v6 = *(v5 + 64);
  __chkstk_darwin(v3);
  OUTLINED_FUNCTION_4();
  v90 = v8 - v7;
  OUTLINED_FUNCTION_15_0();
  v91 = type metadata accessor for DispatchQoS();
  v9 = OUTLINED_FUNCTION_7(v91);
  v89 = v10;
  v12 = *(v11 + 64);
  __chkstk_darwin(v9);
  OUTLINED_FUNCTION_4();
  v88 = v14 - v13;
  OUTLINED_FUNCTION_15_0();
  v15 = type metadata accessor for DispatchTimeInterval();
  v16 = OUTLINED_FUNCTION_7(v15);
  v85 = v17;
  v86 = v16;
  v19 = *(v18 + 64);
  __chkstk_darwin(v16);
  OUTLINED_FUNCTION_16_2();
  v84 = v20;
  __chkstk_darwin(v21);
  v83 = &v76 - v22;
  OUTLINED_FUNCTION_15_0();
  v23 = type metadata accessor for DispatchTime();
  v24 = OUTLINED_FUNCTION_7(v23);
  v81 = v25;
  v82 = v24;
  v27 = *(v26 + 64);
  __chkstk_darwin(v24);
  OUTLINED_FUNCTION_16_2();
  v79 = v28;
  __chkstk_darwin(v29);
  v80 = &v76 - v30;
  OUTLINED_FUNCTION_15_0();
  v31 = type metadata accessor for DispatchQoS.QoSClass();
  v32 = OUTLINED_FUNCTION_7(v31);
  v34 = v33;
  v36 = *(v35 + 64);
  __chkstk_darwin(v32);
  OUTLINED_FUNCTION_4();
  v39 = v38 - v37;
  v40 = type metadata accessor for OS_dispatch_source.TimerFlags();
  v41 = OUTLINED_FUNCTION_7(v40);
  v78 = v42;
  v44 = *(v43 + 64);
  __chkstk_darwin(v41);
  OUTLINED_FUNCTION_4();
  v47 = v46 - v45;
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2();
  }

  v48 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_9_0(v48, static Logger.siriPhone);

  v49 = Logger.logObject.getter();
  v50 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    v77 = v31;
    v52 = v51;
    v95[0] = swift_slowAlloc();
    *v52 = 136315394;
    *(v52 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000014, 0x8000000000459890, v95);
    *(v52 + 12) = 2080;
    type metadata accessor for UUID();
    OUTLINED_FUNCTION_1_46();
    _s10Foundation4UUIDVACSHAAWlTm_0(v53, v54);
    v55 = dispatch thunk of CustomStringConvertible.description.getter();
    v57 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v55, v56, v95);

    *(v52 + 14) = v57;
    _os_log_impl(&dword_0, v49, v50, "#CallStateOneTimeTask %s %s", v52, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_26_0();
    v31 = v77;
    OUTLINED_FUNCTION_26_0();
  }

  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for OS_dispatch_source, OS_dispatch_source_ptr);
  v95[0] = _swiftEmptyArrayStorage;
  _s10Foundation4UUIDVACSHAAWlTm_0(&lazy protocol witness table cache variable for type OS_dispatch_source.TimerFlags and conformance OS_dispatch_source.TimerFlags, &type metadata accessor for OS_dispatch_source.TimerFlags);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo18OS_dispatch_sourceC8DispatchE10TimerFlagsVGMd, &_sSaySo18OS_dispatch_sourceC8DispatchE10TimerFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [OS_dispatch_source.TimerFlags] and conformance [A], &_sSaySo18OS_dispatch_sourceC8DispatchE10TimerFlagsVGMd, &_sSaySo18OS_dispatch_sourceC8DispatchE10TimerFlagsVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for OS_dispatch_queue, OS_dispatch_queue_ptr);
  (*(v34 + 104))(v39, enum case for DispatchQoS.QoSClass.utility(_:), v31);
  v58 = static OS_dispatch_queue.global(qos:)();
  (*(v34 + 8))(v39, v31);
  v59 = static OS_dispatch_source.makeTimerSource(flags:queue:)();

  (*(v78 + 8))(v47, v40);
  swift_getObjectType();
  v60 = v79;
  static DispatchTime.now()();
  v61 = v80;
  + infix(_:_:)();
  v62 = v82;
  v63 = *(v81 + 8);
  v63(v60, v82);
  v64 = v83;
  default argument 1 of OS_dispatch_source_timer.schedule(deadline:repeating:leeway:)(v83);
  v65 = v84;
  default argument 2 of OS_dispatch_source_timer.schedule(deadline:repeating:leeway:)(v84);
  OS_dispatch_source_timer.schedule(deadline:repeating:leeway:)();
  v66 = *(v85 + 8);
  v67 = v65;
  v68 = v86;
  v66(v67, v86);
  v66(v64, v68);
  v63(v61, v62);
  OUTLINED_FUNCTION_19_6();
  v69 = swift_allocObject();
  v70 = v94;
  swift_weakInit();
  v95[4] = partial apply for closure #1 in CallStateOneTimeTask.setTimeout(timeout:);
  v95[5] = v69;
  v95[0] = _NSConcreteStackBlock;
  v95[1] = 1107296256;
  v95[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  v95[3] = &block_descriptor_25;
  v71 = _Block_copy(v95);

  v72 = v88;
  static DispatchQoS.unspecified.getter();
  v73 = v90;
  default argument 1 of OS_dispatch_source.setEventHandler(qos:flags:handler:)();
  OS_dispatch_source.setEventHandler(qos:flags:handler:)();
  _Block_release(v71);
  (*(v92 + 8))(v73, v93);
  (*(v89 + 8))(v72, v91);

  OS_dispatch_source.resume()();
  v74 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin20CallStateOneTimeTask_timer;
  swift_beginAccess();
  v75 = *(v70 + v74);
  *(v70 + v74) = v59;
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_65();
}

uint64_t default argument 1 of OS_dispatch_source_timer.schedule(deadline:repeating:leeway:)@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for DispatchTimeInterval.never(_:);
  v3 = type metadata accessor for DispatchTimeInterval();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t default argument 2 of OS_dispatch_source_timer.schedule(deadline:repeating:leeway:)@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  v2 = enum case for DispatchTimeInterval.nanoseconds(_:);
  v3 = type metadata accessor for DispatchTimeInterval();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t closure #1 in CallStateOneTimeTask.setTimeout(timeout:)()
{
  if (one-time initialization token for siriPhone != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  __swift_project_value_buffer(v0, static Logger.siriPhone);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_0, v1, v2, "#CallStateOneTimeTask timed out", v3, 2u);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = result;
    v6 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin20CallStateOneTimeTask_isActive;
    swift_beginAccess();
    *(v5 + v6) = 0;
    CallStateOneTimeTask.isActive.didset();
  }

  return result;
}

uint64_t default argument 1 of OS_dispatch_source.setEventHandler(qos:flags:handler:)()
{
  type metadata accessor for DispatchWorkItemFlags();
  _s10Foundation4UUIDVACSHAAWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, &type metadata accessor for DispatchWorkItemFlags);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  return dispatch thunk of SetAlgebra.init<A>(_:)();
}

uint64_t CallStateOneTimeTask.setTeardownHandler(_:)()
{
  OUTLINED_FUNCTION_24_3();
  v3 = (v1 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin20CallStateOneTimeTask_teardownHandler);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  *v3 = v2;
  v3[1] = v0;

  return _sxs5Error_pRi_zRi0_zlySo21DialogExecutionResultCIsegHrzo_SgWOe(v4);
}

uint64_t CallStateOneTimeTask.deinit()
{
  v1 = v0;
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2();
  }

  v2 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_9_0(v2, static Logger.siriPhone);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = OUTLINED_FUNCTION_42();
    v6 = OUTLINED_FUNCTION_36();
    v21 = v6;
    *v5 = 136315138;
    type metadata accessor for UUID();
    OUTLINED_FUNCTION_1_46();
    _s10Foundation4UUIDVACSHAAWlTm_0(v7, v8);
    v9 = dispatch thunk of CustomStringConvertible.description.getter();
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v21);

    *(v5 + 4) = v11;
    OUTLINED_FUNCTION_26(&dword_0, v12, v13, "#CallStateOneTimeTask deinit %s");
    __swift_destroy_boxed_opaque_existential_1(v6);
    OUTLINED_FUNCTION_26_0();
    OUTLINED_FUNCTION_26_0();
  }

  v14 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin20CallStateOneTimeTask_uuid;
  v15 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_40(v15);
  (*(v16 + 8))(v1 + v14);
  v17 = *(v1 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin20CallStateOneTimeTask_task + 8);

  v18 = *(v1 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin20CallStateOneTimeTask_teardownHandler + 8);
  _sxs5Error_pRi_zRi0_zlySo21DialogExecutionResultCIsegHrzo_SgWOe(*(v1 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin20CallStateOneTimeTask_teardownHandler));
  v19 = *(v1 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin20CallStateOneTimeTask_timer);
  swift_unknownObjectRelease();
  return v1;
}

uint64_t CallStateOneTimeTask.__deallocating_deinit()
{
  CallStateOneTimeTask.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t partial apply for closure #1 in CallStateNotificationManager.addTask(timeout:task:)()
{
  v1 = *(type metadata accessor for DispatchTimeInterval() - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return closure #1 in CallStateNotificationManager.addTask(timeout:task:)(v3, v4, v0 + v2, v5);
}

uint64_t type metadata completion function for CallStateOneTimeTask()
{
  result = type metadata accessor for UUID();
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

uint64_t partial apply for thunk for @escaping @callee_guaranteed () -> (@out ())()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t objectdestroy_48Tm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  OUTLINED_FUNCTION_50();

  return _swift_deallocObject(v3, v4, v5);
}

uint64_t partial apply for closure #1 in closure #1 in CallStateNotificationManager.addTask(timeout:task:)()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return closure #1 in closure #1 in CallStateNotificationManager.addTask(timeout:task:)();
}

uint64_t outlined destroy of Any?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t _s10Foundation4UUIDVACSHAAWlTm_0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void CallStateProvider.init()(void *a1@<X8>)
{
  v12[0] = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v2 = *(v12[0] - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v12[0]);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for OS_dispatch_queue.Attributes();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v8 = type metadata accessor for DispatchQoS();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  a1[4] = &type metadata for SPHTUBackedCallCapabilities;
  a1[5] = &protocol witness table for SPHTUBackedCallCapabilities;
  a1[6] = type metadata accessor for SPHCallHandleFormatter();
  a1[7] = &protocol witness table for SPHCallHandleFormatter;
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for OS_dispatch_queue, OS_dispatch_queue_ptr);
  static DispatchQoS.unspecified.getter();
  v12[1] = _swiftEmptyArrayStorage;
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v2 + 104))(v5, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v12[0]);
  v10 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v11 = [objc_allocWithZone(TUCallCenter) initWithQueue:v10];

  *a1 = v11;
}

uint64_t *CallStateProvider.instance.unsafeMutableAddressor()
{
  if (one-time initialization token for instance != -1)
  {
    OUTLINED_FUNCTION_0_36();
  }

  return &static CallStateProvider.instance;
}

uint64_t static CallStateProvider.instance.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for instance != -1)
  {
    OUTLINED_FUNCTION_0_36();
  }

  return outlined init with copy of CallStateProvider(&static CallStateProvider.instance, a1);
}

uint64_t CallStateProvider.afCallStateSnapshot.getter@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for SiriEnvironment();
  static SiriEnvironment.root.getter();
  v2 = SiriEnvironment.callState.getter();

  result = type metadata accessor for CallStateEnvironmentProvider();
  a1[3] = result;
  a1[4] = &protocol witness table for CallStateEnvironmentProvider;
  *a1 = v2;
  return result;
}

id closure #1 in CallStateProvider.currentCall.getter@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = [a1 frontmostAudioOrVideoCall];
  *a2 = result;
  return result;
}

uint64_t specialized CallStateProvider.onCallCenterQueue<A>(_:)(uint64_t a1, uint64_t a2)
{
  v8 = *v2;
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for TUCallCenter, TUCallCenter_ptr);
  v6 = v8;

  SPHCallCenter.onQueue<A>(_:)();

  return v9;
}

{
  v8 = *v2;
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for TUCallCenter, TUCallCenter_ptr);
  v6 = v8;

  SPHCallCenter.onQueue<A>(_:)();

  return v9;
}

{
  return specialized CallStateProvider.onCallCenterQueue<A>(_:)(a1, a2, &unk_51E8B0, &_sSo14TUConversationCSgMd, &_sSo14TUConversationCSgMR);
}

uint64_t specialized CallStateProvider.onCallCenterQueue<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v13 = *v5;
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for TUCallCenter, TUCallCenter_ptr);
  v11 = v13;

  __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  SPHCallCenter.onQueue<A>(_:)();

  return v14;
}

uint64_t CallStateProvider.onCallCenterQueue<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = *v3;
  v7 = swift_allocObject();
  v7[2] = a3;
  v7[3] = a1;
  v7[4] = a2;
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for TUCallCenter, TUCallCenter_ptr);
  v8 = v10;

  SPHCallCenter.onQueue<A>(_:)();
}

id closure #1 in CallStateProvider.currentAudioAndVideoCallCount.getter@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = [a1 currentAudioAndVideoCallCount];
  *a2 = result;
  return result;
}

uint64_t CallStateProvider.callHandleFormatter.getter()
{
  result = *(v0 + 48);
  v2 = *(v0 + 56);
  return result;
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@guaranteed TUCallCenter) -> (@out A)(void *a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  return v2(*a1);
}

void *partial apply for specialized thunk for @escaping @callee_guaranteed (@guaranteed TUCallCenter) -> (@out A)(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_1_47(a1);
  result = v3(&v5, v2);
  *v1 = v5;
  return result;
}

{
  v2 = OUTLINED_FUNCTION_1_47(a1);
  result = v3(&v5, v2);
  *v1 = v5;
  return result;
}

unint64_t lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes()
{
  result = lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes;
  if (!lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes)
  {
    type metadata accessor for OS_dispatch_queue.Attributes();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A];
  if (!lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A]);
  }

  return result;
}

uint64_t CallTypesSlotTemplating.makeParameterValueConfirmationDialog(app:parameterName:intentResolutionResult:intent:inferenceSource:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = aBlock - v15;
  [a5 callTypes];
  v17 = swift_allocObject();
  *(v17 + 16) = _swiftEmptyArrayStorage;
  v18 = (v17 + 16);
  aBlock[4] = partial apply for closure #1 in INCallRecordTypeOptions.INPBStringRepresentation.getter;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@unowned _INPBCallRecordType) -> ();
  aBlock[3] = &block_descriptor_1;
  v19 = _Block_copy(aBlock);

  INCallRecordTypeOptionsEnumerateBackingTypes();
  _Block_release(v19);
  swift_beginAccess();
  v20 = *v18;

  v21 = INSearchCallHistoryIntent.unseen.getter();
  if (v21 == 2 || (v21 & 1) == 0)
  {
    goto LABEL_7;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_10;
  }

  while (1)
  {
    v22 = v20[2];
    if (v22 >= v20[3] >> 1)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v20 = v31;
    }

    v20[2] = v22 + 1;
    v23 = &v20[2 * v22];
    v23[4] = 0x6E6565736E75;
    v23[5] = 0xE600000000000000;
LABEL_7:
    if (v20[2])
    {
      break;
    }

    __break(1u);
LABEL_10:
    v29 = v20[2];
    specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    v20 = v30;
  }

  v24 = *(v9 + 40);
  v25 = v20[4];
  v26 = v20[5];

  SpeakableString.init(print:speak:)();
  v27 = type metadata accessor for SpeakableString();
  __swift_storeEnumTagSinglePayload(v16, 0, 1, v27);
  (*(*v24 + class metadata base offset for SearchCallHistoryCATs + 64))(v16, v20[2], 0, a7, a8);
  outlined destroy of SpeakableString?(v16);
}

uint64_t thunk for @escaping @callee_guaranteed (@unowned _INPBCallRecordType) -> ()(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

ValueMetadata *specialized UnsupportedAction.description.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin010Actionableb7ControlC0C23UnsupportedActionReasonOmMd, &_s27PhoneCallFlowDelegatePlugin010Actionableb7ControlC0C23UnsupportedActionReasonOmMR);
  v0 = String.init<A>(describing:)();
  OUTLINED_FUNCTION_2_38(v0);
  v1._countAndFlagsBits = 0x6576697463416F6ELL;
  v1._object = 0xEC0000006C6C6143;
  String.append(_:)(v1);
  return &type metadata for ActionableCallControlFlow.UnsupportedActionReason;
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin010Actionableb7ControlC0C35UnsupportedSpeakerphoneActionReasonOmMd, &_s27PhoneCallFlowDelegatePlugin010Actionableb7ControlC0C35UnsupportedSpeakerphoneActionReasonOmMR);
  v0 = String.init<A>(describing:)();
  OUTLINED_FUNCTION_2_38(v0);
  v1._object = 0x80000000004517C0;
  v1._countAndFlagsBits = 0xD000000000000023;
  String.append(_:)(v1);
  return &type metadata for ActionableCallControlFlow.UnsupportedSpeakerphoneActionReason;
}

uint64_t specialized UnsupportedAction.description.getter(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v7 = String.init<A>(describing:)();
  OUTLINED_FUNCTION_2_38(v7);
  v8._countAndFlagsBits = a5(a1);
  String.append(_:)(v8);

  return a2;
}

uint64_t CameraControlFlow.executeAction(currentCall:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[8] = a3;
  v4[9] = v3;
  v4[6] = a1;
  v4[7] = a2;
  return _swift_task_switch(CameraControlFlow.executeAction(currentCall:), 0, 0);
}

uint64_t CameraControlFlow.executeAction(currentCall:)()
{
  v76 = v0;
  v1 = *(v0[9] + 56);
  if ((PhoneCallControlAction.isCameraAction.getter(v1) & 1) == 0)
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2();
    }

    v12 = type metadata accessor for Logger();
    __swift_project_value_buffer(v12, static Logger.siriPhone);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_16_4(v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_0, v13, v14, "#CameraControlFlow used to handle a call control not related to the camera.", v15, 2u);
      OUTLINED_FUNCTION_26_0();
    }

    lazy protocol witness table accessor for type ActionableCallControlFlow.ActionableCallControlFlowError and conformance ActionableCallControlFlow.ActionableCallControlFlowError();
    swift_allocError();
    v17 = v16;
    v18 = 0;
    *v16 = v1;
    goto LABEL_25;
  }

  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2();
  }

  v2 = v0[7];
  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Logger.siriPhone);
  swift_unknownObjectRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[7];
  v8 = v0[8];
  if (v6)
  {
    v9 = swift_slowAlloc();
    *v9 = 67109120;
    ObjectType = swift_getObjectType();
    v11 = *(v8 + 32);
    *(v9 + 4) = v11(ObjectType, v8) & 1;
    swift_unknownObjectRelease();
    _os_log_impl(&dword_0, v4, v5, "#CameraControlFlow isFaceTime: %{BOOL}d", v9, 8u);
    OUTLINED_FUNCTION_26_0();
  }

  else
  {
    v19 = v0[7];
    swift_unknownObjectRelease();

    v11 = *(v8 + 32);
  }

  v20 = v0[7];
  v21 = v0[8];
  v22 = swift_getObjectType();
  if ((v11(v22, v21) & 1) == 0)
  {
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_16_4(v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_0, v34, v35, "#CameraControlFlow requesting to turn on camera while on Telephony call. Throwing ActionableCallControlFlow.unsupportedAction.", v36, 2u);
      OUTLINED_FUNCTION_26_0();
    }

    lazy protocol witness table accessor for type ActionableCallControlFlow.ActionableCallControlFlowError and conformance ActionableCallControlFlow.ActionableCallControlFlowError();
    swift_allocError();
    v17 = v37;
    *(v37 + 24) = &type metadata for ActionableCallControlFlow.UnsupportedSwitchToFaceTimeReason;
    *(v37 + 32) = lazy protocol witness table accessor for type ActionableCallControlFlow.UnsupportedSwitchToFaceTimeReason and conformance ActionableCallControlFlow.UnsupportedSwitchToFaceTimeReason();
    *v17 = 9;
    goto LABEL_24;
  }

  v23 = static PhoneCallControlRequestSupportPolicy.unsupportedCameraControlReason(for:action:sharedGlobals:)(v0[7], v0[8], v1, v0[9] + 16);
  if (v23 != 10)
  {
    v38 = v23;
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_16_4(v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v75[0] = v42;
      *v41 = 136315138;
      OUTLINED_FUNCTION_1_48();
      v47 = specialized UnsupportedAction.description.getter(v38, v43, v44, v45, v46);
      v49 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v47, v48, v75);

      *(v41 + 4) = v49;
      _os_log_impl(&dword_0, v39, v40, "#CameraControlFlow unsupported reason=%s", v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v42);
      OUTLINED_FUNCTION_26_0();
      OUTLINED_FUNCTION_26_0();
    }

    lazy protocol witness table accessor for type ActionableCallControlFlow.ActionableCallControlFlowError and conformance ActionableCallControlFlow.ActionableCallControlFlowError();
    swift_allocError();
    v17 = v50;
    *(v50 + 24) = &type metadata for ActionableCallControlFlow.UnsupportedSwitchToFaceTimeReason;
    *(v50 + 32) = lazy protocol witness table accessor for type ActionableCallControlFlow.UnsupportedSwitchToFaceTimeReason and conformance ActionableCallControlFlow.UnsupportedSwitchToFaceTimeReason();
    *v17 = v38;
LABEL_24:
    v18 = 1;
LABEL_25:
    v17[40] = v18;
    swift_willThrow();
    v51 = v0[1];
    goto LABEL_26;
  }

  v24 = v0[7];
  v25 = *(v0[8] + 144);
  v26 = v25(v22);
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_16_4(v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 67109120;
    *(v29 + 4) = v26 & 1;
    _os_log_impl(&dword_0, v27, v28, "#CameraControlFlow cameraIsEnabled = %{BOOL}d", v29, 8u);
    OUTLINED_FUNCTION_26_0();
  }

  v30 = PhoneCallControlAction.rawValue.getter(v1);
  if (v26)
  {
    v32 = 0xED00006172656D61;
    v33 = 0x43656C6261736964;
  }

  else
  {
    v32 = 0xEC0000006172656DLL;
    v33 = 0x6143656C62616E65;
  }

  if (v30 == v33 && v31 == v32)
  {
  }

  else
  {
    v54 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v54 & 1) == 0)
    {
      v55 = v0[9];

      v56 = Logger.logObject.getter();
      v57 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v56, v57))
      {
        v58 = swift_slowAlloc();
        v75[0] = swift_slowAlloc();
        *v58 = 136315394;
        if (v26)
        {
          v59 = 0x64656C62616E65;
        }

        else
        {
          v59 = 0x64656C6261736964;
        }

        if (v26)
        {
          v60 = 0xE700000000000000;
        }

        else
        {
          v60 = 0xE800000000000000;
        }

        v61 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v59, v60, v75);

        *(v58 + 4) = v61;
        *(v58 + 12) = 2080;
        v62 = PhoneCallControlAction.description.getter(v1);
        v64 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v62, v63, v75);

        *(v58 + 14) = v64;
        _os_log_impl(&dword_0, v56, v57, "#CameraControlFlow not changing camera state because camera is %s and action is %s", v58, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_26_0();
        OUTLINED_FUNCTION_26_0();
      }

      goto LABEL_49;
    }
  }

  v65 = v0[7];
  v66 = (*(v0[8] + 160))(v0 + 2, v22);
  *v67 = !*v67;
  v66(v0 + 2, 0);
  swift_unknownObjectRetain();
  v68 = Logger.logObject.getter();
  v69 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v68, v69))
  {
    v70 = v0[7];
    v71 = v0[8];
    v72 = swift_slowAlloc();
    *v72 = 67109120;
    *(v72 + 4) = (v25)(v22, v71) & 1;
    swift_unknownObjectRelease();
    _os_log_impl(&dword_0, v68, v69, "#CameraControlFlow camera is enabled: %{BOOL}d", v72, 8u);
    OUTLINED_FUNCTION_26_0();
  }

  else
  {
    v73 = v0[7];
    swift_unknownObjectRelease();
  }

LABEL_49:
  v74 = v0[6];
  *v74 = 0;
  *(v74 + 8) = 0;
  *(v74 + 16) = 0;
  *(v74 + 24) = xmmword_42D060;
  v51 = v0[1];
LABEL_26:

  return v51();
}

uint64_t SwitchToFaceTimeControlFlow.__deallocating_deinit()
{
  ActionableCallControlFlow.deinit();

  return swift_deallocClassInstance();
}

uint64_t CarPlayDirectInvocationFlow.__allocating_init(app:intent:strategy:sharedGlobals:preferPrintingDialogOnDisplayMode:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v10 = swift_allocObject();
  CarPlayDirectInvocationFlow.init(app:intent:strategy:sharedGlobals:preferPrintingDialogOnDisplayMode:)(a1, a2, a3, a4, a5);
  return v10;
}

uint64_t CarPlayDirectInvocationFlow.init(app:intent:strategy:sharedGlobals:preferPrintingDialogOnDisplayMode:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2();
  }

  v12 = type metadata accessor for Logger();
  __swift_project_value_buffer(v12, static Logger.siriPhone);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_0, v13, v14, "#Gatekeeper Initialized GatekeeperLegacyCallingIntentFlow", v15, 2u);
  }

  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  *(v6 + 32) = a3;
  outlined init with take of PhoneCallFeatureFlagProviding(a4, v6 + 40);
  *(v6 + 80) = a5 & 1;
  return v6;
}

uint64_t CarPlayDirectInvocationFlow.__allocating_init<A>(app:intent:strategy:aceServiceInvoker:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
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
    _os_log_impl(&dword_0, v15, v16, "#Gatekeeper Initialized GatekeeperLegacyCallingIntentFlow", v17, 2u);
  }

  v23 = CarPlayDirectInvocationFlowStrategy.toAnyIntentFlowStrategy()(a5, a6);
  outlined init with copy of SignalProviding(a4, v22);
  v18 = *(v7 + 80);
  v19 = type metadata accessor for AnyIntentCarPlayDirectActionFlowStrategy();
  WitnessTable = swift_getWitnessTable();
  CarPlayDirectInvocationFlow.__allocating_init<A>(app:intent:strategy:aceServiceInvoker:)(a1, a2, &v23, v22, v19, WitnessTable);
  __swift_destroy_boxed_opaque_existential_1(a4);
  return (*(*(a5 - 8) + 8))(a3, a5);
}

uint64_t CarPlayDirectInvocationFlow.execute(completion:)()
{
  v1 = *(*v0 + 80);
  type metadata accessor for CarPlayDirectInvocationFlow();
  swift_getWitnessTable();
  return Flow.deferToExecuteAsync(_:)();
}

uint64_t outlined destroy of NLContextUpdate?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t _s27PhoneCallFlowDelegatePlugin023CarPlayDirectInvocationC7FactoryO04makefghiC033_50B2F8F24DEBC70E92405053C79DAACDLL3app6intent12directAction13sharedGlobalsAA0fghiC0CyxG17SiriAppResolution0Z0C_xAA010StartAudiobhV0VAA06SharedX9Providing_ptSo8INIntentCRbzlFZSo07INStartB6IntentC_Tt3g5(uint64_t a1, void *a2, uint64_t a3, uint64_t *a4)
{
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin024OnDeviceCarPlayWithInputC8StrategyVyAA0hI15RCHFlowProviderVySo07INStartB6IntentCGGMd, &_s27PhoneCallFlowDelegatePlugin024OnDeviceCarPlayWithInputC8StrategyVyAA0hI15RCHFlowProviderVySo07INStartB6IntentCGGMR);
  v8 = *(*(v110 - 8) + 64);
  v9 = __chkstk_darwin(v110);
  v111 = &v97 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v112 = &v97 - v11;
  v109 = type metadata accessor for Parse();
  v107 = *(v109 - 1);
  v12 = v107[8];
  __chkstk_darwin(v109);
  v108 = (&v97 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v116 = type metadata accessor for Input();
  v14 = *(v116 - 8);
  v15 = v14[8];
  v16 = __chkstk_darwin(v116);
  v105 = &v97 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v113 = &v97 - v19;
  v20 = __chkstk_darwin(v18);
  v22 = &v97 - v21;
  __chkstk_darwin(v20);
  v102 = &v97 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology8NLIntentVSgMd, &_s12SiriOntology8NLIntentVSgMR);
  v25 = *(*(v24 - 8) + 64);
  __chkstk_darwin(v24 - 8);
  v104 = &v97 - v26;
  v27 = type metadata accessor for NLIntent();
  v100 = *(v27 - 8);
  v28 = *(v100 + 64);
  __chkstk_darwin(v27);
  v99 = &v97 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for siriPhone != -1)
  {
    swift_once();
  }

  v30 = type metadata accessor for Logger();
  v31 = __swift_project_value_buffer(v30, static Logger.siriPhone);
  v32 = a2;
  v106 = v31;
  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.debug.getter();

  v35 = os_log_type_enabled(v33, v34);
  v115 = a1;
  v114 = a3;
  if (v35)
  {
    v36 = swift_slowAlloc();
    v103 = swift_slowAlloc();
    v119 = v103;
    *v36 = 136315138;
    v37 = v14;
    v38 = v32;
    v39 = [v32 typeName];
    v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v101 = v27;
    v41 = v40;
    v42 = v22;
    v43 = a4;
    v45 = v44;

    v32 = v38;
    v14 = v37;
    v46 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v41, v45, &v119);
    a4 = v43;
    v22 = v42;

    *(v36 + 4) = v46;
    v27 = v101;
    _os_log_impl(&dword_0, v33, v34, "#CarPlayDirectActionFlowFactory Building CarPlayDirectInvocationFlow: intentType=%s)", v36, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v103);

    a1 = v115;
    a3 = v114;
  }

  outlined init with copy of SignalProviding(a4, v120);
  v119 = a1;

  INIntent.setMetaData(app:previousIntent:sharedGlobals:)(v47, 0, a4);
  v48 = *(a3 + 56);
  if (v48 >> 60 == 15)
  {
    v51 = *(a3 + 64);
    if (v51)
    {
      v103 = a4;
      v52 = v108;
      *v108 = v51;
      (v107[13])(v52, enum case for Parse.NLv4IntentOnly(_:), v109);
      swift_unknownObjectRetain_n();
      v53 = v113;
      Input.init(parse:)();
      v54 = v105;
      v109 = v14[2];
      v109(v105, v53, v116);
      v55 = Logger.logObject.getter();
      v56 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v55, v56))
      {
        v57 = swift_slowAlloc();
        v107 = swift_slowAlloc();
        v118[0] = v107;
        *v57 = 136315138;
        _s17SiriAppResolution0B0CACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type Input and conformance Input, &type metadata accessor for Input);
        v58 = v116;
        v59 = dispatch thunk of CustomStringConvertible.description.getter();
        v98 = v32;
        v60 = v58;
        v61 = v59;
        v63 = v62;
        v108 = v14[1];
        (v108)(v54, v60);
        v64 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v61, v63, v118);

        *(v57 + 4) = v64;
        v32 = v98;
        _os_log_impl(&dword_0, v55, v56, "#CarPlayDirectActionFlowFactory Received directInvocation with NLv4 input: %s", v57, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v107);

        a1 = v115;
      }

      else
      {

        v108 = v14[1];
        (v108)(v54, v116);
      }

      v66 = v112;
      outlined init with copy of CarPlayRCHFlowProvider<INStartCallIntent>(&v119, v112, &_s27PhoneCallFlowDelegatePlugin22CarPlayRCHFlowProviderVySo07INStartB6IntentCGMd, &_s27PhoneCallFlowDelegatePlugin22CarPlayRCHFlowProviderVySo07INStartB6IntentCGMR);
      v67 = v113;
      v68 = v116;
      v109((v66 + *(v110 + 40)), v113, v116);
      *(v66 + 48) = a1;
      v69 = v111;
      outlined init with copy of CarPlayRCHFlowProvider<INStartCallIntent>(v66, v111, &_s27PhoneCallFlowDelegatePlugin024OnDeviceCarPlayWithInputC8StrategyVyAA0hI15RCHFlowProviderVySo07INStartB6IntentCGGMd, &_s27PhoneCallFlowDelegatePlugin024OnDeviceCarPlayWithInputC8StrategyVyAA0hI15RCHFlowProviderVySo07INStartB6IntentCGGMR);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin028AnyIntentCarPlayDirectActionC8StrategyCySo07INStartbG0CGMd, &_s27PhoneCallFlowDelegatePlugin028AnyIntentCarPlayDirectActionC8StrategyCySo07INStartbG0CGMR);
      swift_allocObject();

      v65 = specialized AnyIntentCarPlayDirectActionFlowStrategy.init<A>(_:)(v69);
      swift_unknownObjectRelease();
      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v66, &_s27PhoneCallFlowDelegatePlugin024OnDeviceCarPlayWithInputC8StrategyVyAA0hI15RCHFlowProviderVySo07INStartB6IntentCGGMd, &_s27PhoneCallFlowDelegatePlugin024OnDeviceCarPlayWithInputC8StrategyVyAA0hI15RCHFlowProviderVySo07INStartB6IntentCGGMR);
      (v108)(v67, v68);
      a3 = v114;
      a4 = v103;
    }

    else
    {
      outlined init with copy of CarPlayRCHFlowProvider<INStartCallIntent>(&v119, v118, &_s27PhoneCallFlowDelegatePlugin22CarPlayRCHFlowProviderVySo07INStartB6IntentCGMd, &_s27PhoneCallFlowDelegatePlugin22CarPlayRCHFlowProviderVySo07INStartB6IntentCGMR);
      outlined init with copy of CarPlayRCHFlowProvider<INStartCallIntent>(v118, v117, &_s27PhoneCallFlowDelegatePlugin026DefaultCarPlayDirectActionC8StrategyVyAA0gH15RCHFlowProviderVySo07INStartB6IntentCGGMd, &_s27PhoneCallFlowDelegatePlugin026DefaultCarPlayDirectActionC8StrategyVyAA0gH15RCHFlowProviderVySo07INStartB6IntentCGGMR);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin028AnyIntentCarPlayDirectActionC8StrategyCySo07INStartbG0CGMd, &_s27PhoneCallFlowDelegatePlugin028AnyIntentCarPlayDirectActionC8StrategyCySo07INStartbG0CGMR);
      swift_allocObject();
      v65 = specialized AnyIntentCarPlayDirectActionFlowStrategy.init<A>(_:)(v117);
      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v118, &_s27PhoneCallFlowDelegatePlugin026DefaultCarPlayDirectActionC8StrategyVyAA0gH15RCHFlowProviderVySo07INStartB6IntentCGGMd, &_s27PhoneCallFlowDelegatePlugin026DefaultCarPlayDirectActionC8StrategyVyAA0gH15RCHFlowProviderVySo07INStartB6IntentCGGMR);
    }
  }

  else
  {
    v49 = *(a3 + 48);
    outlined copy of Data?(v49, *(a3 + 56));
    outlined copy of Data._Representation(v49, v48);
    v50 = v104;
    NLIntent.init(protobufData:)();
    v98 = v32;
    v103 = a4;
    __swift_storeEnumTagSinglePayload(v50, 0, 1, v27);
    v70 = v50;
    v71 = v100;
    v72 = v99;
    (*(v100 + 32))(v99, v70, v27);
    v73 = *(v71 + 16);
    v74 = v108;
    v101 = v27;
    v73(v108, v72, v27);
    (v107[13])(v74, enum case for Parse.NLv3IntentOnly(_:), v109);
    v75 = v102;
    Input.init(parse:)();
    v113 = v14[2];
    (v113)(v22, v75, v116);
    v76 = Logger.logObject.getter();
    v77 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v76, v77))
    {
      v78 = swift_slowAlloc();
      v107 = v78;
      v108 = swift_slowAlloc();
      v118[0] = v108;
      *v78 = 136315138;
      _s17SiriAppResolution0B0CACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type Input and conformance Input, &type metadata accessor for Input);
      v79 = v77;
      v80 = v116;
      v81 = dispatch thunk of CustomStringConvertible.description.getter();
      v82 = v80;
      v83 = v81;
      v85 = v84;
      v109 = v14[1];
      (v109)(v22, v82);
      v86 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v83, v85, v118);

      v87 = v107;
      *(v107 + 4) = v86;
      _os_log_impl(&dword_0, v76, v79, "#CarPlayDirectActionFlowFactory Received directInvocation with NLv3 input: %s", v87, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v108);
      a3 = v114;
    }

    else
    {

      v109 = v14[1];
      (v109)(v22, v116);
    }

    v88 = v112;
    outlined init with copy of CarPlayRCHFlowProvider<INStartCallIntent>(&v119, v112, &_s27PhoneCallFlowDelegatePlugin22CarPlayRCHFlowProviderVySo07INStartB6IntentCGMd, &_s27PhoneCallFlowDelegatePlugin22CarPlayRCHFlowProviderVySo07INStartB6IntentCGMR);
    v89 = v102;
    v90 = v116;
    (v113)(v88 + *(v110 + 40), v102, v116);
    *(v88 + 48) = v115;
    v91 = v111;
    outlined init with copy of CarPlayRCHFlowProvider<INStartCallIntent>(v88, v111, &_s27PhoneCallFlowDelegatePlugin024OnDeviceCarPlayWithInputC8StrategyVyAA0hI15RCHFlowProviderVySo07INStartB6IntentCGGMd, &_s27PhoneCallFlowDelegatePlugin024OnDeviceCarPlayWithInputC8StrategyVyAA0hI15RCHFlowProviderVySo07INStartB6IntentCGGMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin028AnyIntentCarPlayDirectActionC8StrategyCySo07INStartbG0CGMd, &_s27PhoneCallFlowDelegatePlugin028AnyIntentCarPlayDirectActionC8StrategyCySo07INStartbG0CGMR);
    swift_allocObject();

    v65 = specialized AnyIntentCarPlayDirectActionFlowStrategy.init<A>(_:)(v91);
    outlined consume of Data?(v49, v48);
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v88, &_s27PhoneCallFlowDelegatePlugin024OnDeviceCarPlayWithInputC8StrategyVyAA0hI15RCHFlowProviderVySo07INStartB6IntentCGGMd, &_s27PhoneCallFlowDelegatePlugin024OnDeviceCarPlayWithInputC8StrategyVyAA0hI15RCHFlowProviderVySo07INStartB6IntentCGGMR);
    (v109)(v89, v90);
    (*(v100 + 8))(v99, v101);
    a4 = v103;
    v32 = v98;
  }

  outlined init with copy of SignalProviding(a4, v118);
  v92 = *(a3 + 72);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin023CarPlayDirectInvocationC0CySo07INStartB6IntentCGMd, &_s27PhoneCallFlowDelegatePlugin023CarPlayDirectInvocationC0CySo07INStartB6IntentCGMR);
  swift_allocObject();
  v93 = v32;

  v95 = specialized CarPlayDirectInvocationFlow.init(app:intent:strategy:sharedGlobals:preferPrintingDialogOnDisplayMode:)(v94, v93, v65, v118, v92);
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(&v119, &_s27PhoneCallFlowDelegatePlugin22CarPlayRCHFlowProviderVySo07INStartB6IntentCGMd, &_s27PhoneCallFlowDelegatePlugin22CarPlayRCHFlowProviderVySo07INStartB6IntentCGMR);
  return v95;
}

uint64_t _s27PhoneCallFlowDelegatePlugin023CarPlayDirectInvocationC7FactoryO04makefghiC033_50B2F8F24DEBC70E92405053C79DAACDLL3app6intent12directAction13sharedGlobalsAA0fghiC0CyxG17SiriAppResolution0Z0C_xAA010StartAudiobhV0VAA06SharedX9Providing_ptSo8INIntentCRbzlFZSo012INStartAudioB6IntentC_Tt3g5(uint64_t a1, void *a2, uint64_t a3, uint64_t *a4)
{
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin024OnDeviceCarPlayWithInputC8StrategyVyAA0hI15RCHFlowProviderVySo012INStartAudioB6IntentCGGMd, &_s27PhoneCallFlowDelegatePlugin024OnDeviceCarPlayWithInputC8StrategyVyAA0hI15RCHFlowProviderVySo012INStartAudioB6IntentCGGMR);
  v8 = *(*(v110 - 8) + 64);
  v9 = __chkstk_darwin(v110);
  v111 = &v97 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v112 = &v97 - v11;
  v109 = type metadata accessor for Parse();
  v107 = *(v109 - 1);
  v12 = v107[8];
  __chkstk_darwin(v109);
  v108 = (&v97 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v116 = type metadata accessor for Input();
  v14 = *(v116 - 8);
  v15 = v14[8];
  v16 = __chkstk_darwin(v116);
  v105 = &v97 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v113 = &v97 - v19;
  v20 = __chkstk_darwin(v18);
  v22 = &v97 - v21;
  __chkstk_darwin(v20);
  v102 = &v97 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology8NLIntentVSgMd, &_s12SiriOntology8NLIntentVSgMR);
  v25 = *(*(v24 - 8) + 64);
  __chkstk_darwin(v24 - 8);
  v104 = &v97 - v26;
  v27 = type metadata accessor for NLIntent();
  v100 = *(v27 - 8);
  v28 = *(v100 + 64);
  __chkstk_darwin(v27);
  v99 = &v97 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for siriPhone != -1)
  {
    swift_once();
  }

  v30 = type metadata accessor for Logger();
  v31 = __swift_project_value_buffer(v30, static Logger.siriPhone);
  v32 = a2;
  v106 = v31;
  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.debug.getter();

  v35 = os_log_type_enabled(v33, v34);
  v115 = a1;
  v114 = a3;
  if (v35)
  {
    v36 = swift_slowAlloc();
    v103 = swift_slowAlloc();
    v119 = v103;
    *v36 = 136315138;
    v37 = v14;
    v38 = v32;
    v39 = [v32 typeName];
    v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v101 = v27;
    v41 = v40;
    v42 = v22;
    v43 = a4;
    v45 = v44;

    v32 = v38;
    v14 = v37;
    v46 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v41, v45, &v119);
    a4 = v43;
    v22 = v42;

    *(v36 + 4) = v46;
    v27 = v101;
    _os_log_impl(&dword_0, v33, v34, "#CarPlayDirectActionFlowFactory Building CarPlayDirectInvocationFlow: intentType=%s)", v36, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v103);

    a1 = v115;
    a3 = v114;
  }

  outlined init with copy of SignalProviding(a4, v120);
  v119 = a1;

  INIntent.setMetaData(app:previousIntent:sharedGlobals:)(v47, 0, a4);
  v48 = *(a3 + 56);
  if (v48 >> 60 == 15)
  {
    v51 = *(a3 + 64);
    if (v51)
    {
      v103 = a4;
      v52 = v108;
      *v108 = v51;
      (v107[13])(v52, enum case for Parse.NLv4IntentOnly(_:), v109);
      swift_unknownObjectRetain_n();
      v53 = v113;
      Input.init(parse:)();
      v54 = v105;
      v109 = v14[2];
      v109(v105, v53, v116);
      v55 = Logger.logObject.getter();
      v56 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v55, v56))
      {
        v57 = swift_slowAlloc();
        v107 = swift_slowAlloc();
        v118[0] = v107;
        *v57 = 136315138;
        _s17SiriAppResolution0B0CACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type Input and conformance Input, &type metadata accessor for Input);
        v58 = v116;
        v59 = dispatch thunk of CustomStringConvertible.description.getter();
        v98 = v32;
        v60 = v58;
        v61 = v59;
        v63 = v62;
        v108 = v14[1];
        (v108)(v54, v60);
        v64 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v61, v63, v118);

        *(v57 + 4) = v64;
        v32 = v98;
        _os_log_impl(&dword_0, v55, v56, "#CarPlayDirectActionFlowFactory Received directInvocation with NLv4 input: %s", v57, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v107);

        a1 = v115;
      }

      else
      {

        v108 = v14[1];
        (v108)(v54, v116);
      }

      v66 = v112;
      outlined init with copy of CarPlayRCHFlowProvider<INStartCallIntent>(&v119, v112, &_s27PhoneCallFlowDelegatePlugin22CarPlayRCHFlowProviderVySo012INStartAudioB6IntentCGMd, &_s27PhoneCallFlowDelegatePlugin22CarPlayRCHFlowProviderVySo012INStartAudioB6IntentCGMR);
      v67 = v113;
      v68 = v116;
      v109((v66 + *(v110 + 40)), v113, v116);
      *(v66 + 48) = a1;
      v69 = v111;
      outlined init with copy of CarPlayRCHFlowProvider<INStartCallIntent>(v66, v111, &_s27PhoneCallFlowDelegatePlugin024OnDeviceCarPlayWithInputC8StrategyVyAA0hI15RCHFlowProviderVySo012INStartAudioB6IntentCGGMd, &_s27PhoneCallFlowDelegatePlugin024OnDeviceCarPlayWithInputC8StrategyVyAA0hI15RCHFlowProviderVySo012INStartAudioB6IntentCGGMR);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin028AnyIntentCarPlayDirectActionC8StrategyCySo012INStartAudiobG0CGMd, &_s27PhoneCallFlowDelegatePlugin028AnyIntentCarPlayDirectActionC8StrategyCySo012INStartAudiobG0CGMR);
      swift_allocObject();

      v65 = specialized AnyIntentCarPlayDirectActionFlowStrategy.init<A>(_:)(v69);
      swift_unknownObjectRelease();
      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v66, &_s27PhoneCallFlowDelegatePlugin024OnDeviceCarPlayWithInputC8StrategyVyAA0hI15RCHFlowProviderVySo012INStartAudioB6IntentCGGMd, &_s27PhoneCallFlowDelegatePlugin024OnDeviceCarPlayWithInputC8StrategyVyAA0hI15RCHFlowProviderVySo012INStartAudioB6IntentCGGMR);
      (v108)(v67, v68);
      a3 = v114;
      a4 = v103;
    }

    else
    {
      outlined init with copy of CarPlayRCHFlowProvider<INStartCallIntent>(&v119, v118, &_s27PhoneCallFlowDelegatePlugin22CarPlayRCHFlowProviderVySo012INStartAudioB6IntentCGMd, &_s27PhoneCallFlowDelegatePlugin22CarPlayRCHFlowProviderVySo012INStartAudioB6IntentCGMR);
      outlined init with copy of CarPlayRCHFlowProvider<INStartCallIntent>(v118, v117, &_s27PhoneCallFlowDelegatePlugin026DefaultCarPlayDirectActionC8StrategyVyAA0gH15RCHFlowProviderVySo012INStartAudioB6IntentCGGMd, &_s27PhoneCallFlowDelegatePlugin026DefaultCarPlayDirectActionC8StrategyVyAA0gH15RCHFlowProviderVySo012INStartAudioB6IntentCGGMR);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin028AnyIntentCarPlayDirectActionC8StrategyCySo012INStartAudiobG0CGMd, &_s27PhoneCallFlowDelegatePlugin028AnyIntentCarPlayDirectActionC8StrategyCySo012INStartAudiobG0CGMR);
      swift_allocObject();
      v65 = specialized AnyIntentCarPlayDirectActionFlowStrategy.init<A>(_:)(v117);
      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v118, &_s27PhoneCallFlowDelegatePlugin026DefaultCarPlayDirectActionC8StrategyVyAA0gH15RCHFlowProviderVySo012INStartAudioB6IntentCGGMd, &_s27PhoneCallFlowDelegatePlugin026DefaultCarPlayDirectActionC8StrategyVyAA0gH15RCHFlowProviderVySo012INStartAudioB6IntentCGGMR);
    }
  }

  else
  {
    v49 = *(a3 + 48);
    outlined copy of Data?(v49, *(a3 + 56));
    outlined copy of Data._Representation(v49, v48);
    v50 = v104;
    NLIntent.init(protobufData:)();
    v98 = v32;
    v103 = a4;
    __swift_storeEnumTagSinglePayload(v50, 0, 1, v27);
    v70 = v50;
    v71 = v100;
    v72 = v99;
    (*(v100 + 32))(v99, v70, v27);
    v73 = *(v71 + 16);
    v74 = v108;
    v101 = v27;
    v73(v108, v72, v27);
    (v107[13])(v74, enum case for Parse.NLv3IntentOnly(_:), v109);
    v75 = v102;
    Input.init(parse:)();
    v113 = v14[2];
    (v113)(v22, v75, v116);
    v76 = Logger.logObject.getter();
    v77 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v76, v77))
    {
      v78 = swift_slowAlloc();
      v107 = v78;
      v108 = swift_slowAlloc();
      v118[0] = v108;
      *v78 = 136315138;
      _s17SiriAppResolution0B0CACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type Input and conformance Input, &type metadata accessor for Input);
      v79 = v77;
      v80 = v116;
      v81 = dispatch thunk of CustomStringConvertible.description.getter();
      v82 = v80;
      v83 = v81;
      v85 = v84;
      v109 = v14[1];
      (v109)(v22, v82);
      v86 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v83, v85, v118);

      v87 = v107;
      *(v107 + 4) = v86;
      _os_log_impl(&dword_0, v76, v79, "#CarPlayDirectActionFlowFactory Received directInvocation with NLv3 input: %s", v87, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v108);
      a3 = v114;
    }

    else
    {

      v109 = v14[1];
      (v109)(v22, v116);
    }

    v88 = v112;
    outlined init with copy of CarPlayRCHFlowProvider<INStartCallIntent>(&v119, v112, &_s27PhoneCallFlowDelegatePlugin22CarPlayRCHFlowProviderVySo012INStartAudioB6IntentCGMd, &_s27PhoneCallFlowDelegatePlugin22CarPlayRCHFlowProviderVySo012INStartAudioB6IntentCGMR);
    v89 = v102;
    v90 = v116;
    (v113)(v88 + *(v110 + 40), v102, v116);
    *(v88 + 48) = v115;
    v91 = v111;
    outlined init with copy of CarPlayRCHFlowProvider<INStartCallIntent>(v88, v111, &_s27PhoneCallFlowDelegatePlugin024OnDeviceCarPlayWithInputC8StrategyVyAA0hI15RCHFlowProviderVySo012INStartAudioB6IntentCGGMd, &_s27PhoneCallFlowDelegatePlugin024OnDeviceCarPlayWithInputC8StrategyVyAA0hI15RCHFlowProviderVySo012INStartAudioB6IntentCGGMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin028AnyIntentCarPlayDirectActionC8StrategyCySo012INStartAudiobG0CGMd, &_s27PhoneCallFlowDelegatePlugin028AnyIntentCarPlayDirectActionC8StrategyCySo012INStartAudiobG0CGMR);
    swift_allocObject();

    v65 = specialized AnyIntentCarPlayDirectActionFlowStrategy.init<A>(_:)(v91);
    outlined consume of Data?(v49, v48);
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v88, &_s27PhoneCallFlowDelegatePlugin024OnDeviceCarPlayWithInputC8StrategyVyAA0hI15RCHFlowProviderVySo012INStartAudioB6IntentCGGMd, &_s27PhoneCallFlowDelegatePlugin024OnDeviceCarPlayWithInputC8StrategyVyAA0hI15RCHFlowProviderVySo012INStartAudioB6IntentCGGMR);
    (v109)(v89, v90);
    (*(v100 + 8))(v99, v101);
    a4 = v103;
    v32 = v98;
  }

  outlined init with copy of SignalProviding(a4, v118);
  v92 = *(a3 + 72);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin023CarPlayDirectInvocationC0CySo012INStartAudioB6IntentCGMd, &_s27PhoneCallFlowDelegatePlugin023CarPlayDirectInvocationC0CySo012INStartAudioB6IntentCGMR);
  swift_allocObject();
  v93 = v32;

  v95 = specialized CarPlayDirectInvocationFlow.init(app:intent:strategy:sharedGlobals:preferPrintingDialogOnDisplayMode:)(v94, v93, v65, v118, v92);
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(&v119, &_s27PhoneCallFlowDelegatePlugin22CarPlayRCHFlowProviderVySo012INStartAudioB6IntentCGMd, &_s27PhoneCallFlowDelegatePlugin22CarPlayRCHFlowProviderVySo012INStartAudioB6IntentCGMR);
  return v95;
}

void *specialized AnyIntentCarPlayDirectActionFlowStrategy.init<A>(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin024OnDeviceCarPlayWithInputC8StrategyVyAA0hI15RCHFlowProviderVySo012INStartAudioB6IntentCGGMd, &_s27PhoneCallFlowDelegatePlugin024OnDeviceCarPlayWithInputC8StrategyVyAA0hI15RCHFlowProviderVySo012INStartAudioB6IntentCGGMR);
  v15 = *(v4 - 8);
  v5 = *(v15 + 64);
  __chkstk_darwin(v4);
  v7 = &v14 - v6;
  outlined init with copy of CarPlayRCHFlowProvider<INStartCallIntent>(a1, v17, &_s27PhoneCallFlowDelegatePlugin22CarPlayRCHFlowProviderVySo012INStartAudioB6IntentCGMd, &_s27PhoneCallFlowDelegatePlugin22CarPlayRCHFlowProviderVySo012INStartAudioB6IntentCGMR);
  outlined init with copy of CarPlayRCHFlowProvider<INStartCallIntent>(v17, v16, &_s27PhoneCallFlowDelegatePlugin22CarPlayRCHFlowProviderVySo012INStartAudioB6IntentCGMd, &_s27PhoneCallFlowDelegatePlugin22CarPlayRCHFlowProviderVySo012INStartAudioB6IntentCGMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin31AnyIntentCarPlayRCHFlowProviderCySo012INStartAudiobG0CGMd, &_s27PhoneCallFlowDelegatePlugin31AnyIntentCarPlayRCHFlowProviderCySo012INStartAudiobG0CGMR);
  swift_allocObject();
  v8 = specialized AnyIntentCarPlayRCHFlowProvider.init<A>(_:)(v16);
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v17, &_s27PhoneCallFlowDelegatePlugin22CarPlayRCHFlowProviderVySo012INStartAudioB6IntentCGMd, &_s27PhoneCallFlowDelegatePlugin22CarPlayRCHFlowProviderVySo012INStartAudioB6IntentCGMR);
  v2[2] = v8;
  v2[6] = v4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v2 + 3);
  outlined init with copy of CarPlayRCHFlowProvider<INStartCallIntent>(a1, boxed_opaque_existential_1, &_s27PhoneCallFlowDelegatePlugin024OnDeviceCarPlayWithInputC8StrategyVyAA0hI15RCHFlowProviderVySo012INStartAudioB6IntentCGGMd, &_s27PhoneCallFlowDelegatePlugin024OnDeviceCarPlayWithInputC8StrategyVyAA0hI15RCHFlowProviderVySo012INStartAudioB6IntentCGGMR);
  outlined init with copy of CarPlayRCHFlowProvider<INStartCallIntent>(a1, v7, &_s27PhoneCallFlowDelegatePlugin024OnDeviceCarPlayWithInputC8StrategyVyAA0hI15RCHFlowProviderVySo012INStartAudioB6IntentCGGMd, &_s27PhoneCallFlowDelegatePlugin024OnDeviceCarPlayWithInputC8StrategyVyAA0hI15RCHFlowProviderVySo012INStartAudioB6IntentCGGMR);
  v10 = (*(v15 + 80) + 16) & ~*(v15 + 80);
  v11 = swift_allocObject();
  outlined init with take of OnDeviceCarPlayWithInputFlowStrategy<CarPlayRCHFlowProvider<INStartCallIntent>>(v7, v11 + v10, &_s27PhoneCallFlowDelegatePlugin024OnDeviceCarPlayWithInputC8StrategyVyAA0hI15RCHFlowProviderVySo012INStartAudioB6IntentCGGMd, &_s27PhoneCallFlowDelegatePlugin024OnDeviceCarPlayWithInputC8StrategyVyAA0hI15RCHFlowProviderVySo012INStartAudioB6IntentCGGMR);
  v2[7] = partial apply for specialized implicit closure #2 in implicit closure #1 in AnyIntentCarPlayDirectActionFlowStrategy.init<A>(_:);
  v2[8] = v11;
  outlined init with take of OnDeviceCarPlayWithInputFlowStrategy<CarPlayRCHFlowProvider<INStartCallIntent>>(a1, v7, &_s27PhoneCallFlowDelegatePlugin024OnDeviceCarPlayWithInputC8StrategyVyAA0hI15RCHFlowProviderVySo012INStartAudioB6IntentCGGMd, &_s27PhoneCallFlowDelegatePlugin024OnDeviceCarPlayWithInputC8StrategyVyAA0hI15RCHFlowProviderVySo012INStartAudioB6IntentCGGMR);
  v12 = swift_allocObject();
  outlined init with take of OnDeviceCarPlayWithInputFlowStrategy<CarPlayRCHFlowProvider<INStartCallIntent>>(v7, v12 + v10, &_s27PhoneCallFlowDelegatePlugin024OnDeviceCarPlayWithInputC8StrategyVyAA0hI15RCHFlowProviderVySo012INStartAudioB6IntentCGGMd, &_s27PhoneCallFlowDelegatePlugin024OnDeviceCarPlayWithInputC8StrategyVyAA0hI15RCHFlowProviderVySo012INStartAudioB6IntentCGGMR);
  v2[9] = partial apply for specialized implicit closure #4 in implicit closure #3 in AnyIntentCarPlayDirectActionFlowStrategy.init<A>(_:);
  v2[10] = v12;
  return v2;
}

{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin024OnDeviceCarPlayWithInputC8StrategyVyAA0hI15RCHFlowProviderVySo07INStartB6IntentCGGMd, &_s27PhoneCallFlowDelegatePlugin024OnDeviceCarPlayWithInputC8StrategyVyAA0hI15RCHFlowProviderVySo07INStartB6IntentCGGMR);
  v15 = *(v4 - 8);
  v5 = *(v15 + 64);
  __chkstk_darwin(v4);
  v7 = &v14 - v6;
  outlined init with copy of CarPlayRCHFlowProvider<INStartCallIntent>(a1, v17, &_s27PhoneCallFlowDelegatePlugin22CarPlayRCHFlowProviderVySo07INStartB6IntentCGMd, &_s27PhoneCallFlowDelegatePlugin22CarPlayRCHFlowProviderVySo07INStartB6IntentCGMR);
  outlined init with copy of CarPlayRCHFlowProvider<INStartCallIntent>(v17, v16, &_s27PhoneCallFlowDelegatePlugin22CarPlayRCHFlowProviderVySo07INStartB6IntentCGMd, &_s27PhoneCallFlowDelegatePlugin22CarPlayRCHFlowProviderVySo07INStartB6IntentCGMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin31AnyIntentCarPlayRCHFlowProviderCySo07INStartbG0CGMd, &_s27PhoneCallFlowDelegatePlugin31AnyIntentCarPlayRCHFlowProviderCySo07INStartbG0CGMR);
  swift_allocObject();
  v8 = specialized AnyIntentCarPlayRCHFlowProvider.init<A>(_:)(v16);
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v17, &_s27PhoneCallFlowDelegatePlugin22CarPlayRCHFlowProviderVySo07INStartB6IntentCGMd, &_s27PhoneCallFlowDelegatePlugin22CarPlayRCHFlowProviderVySo07INStartB6IntentCGMR);
  v2[2] = v8;
  v2[6] = v4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v2 + 3);
  outlined init with copy of CarPlayRCHFlowProvider<INStartCallIntent>(a1, boxed_opaque_existential_1, &_s27PhoneCallFlowDelegatePlugin024OnDeviceCarPlayWithInputC8StrategyVyAA0hI15RCHFlowProviderVySo07INStartB6IntentCGGMd, &_s27PhoneCallFlowDelegatePlugin024OnDeviceCarPlayWithInputC8StrategyVyAA0hI15RCHFlowProviderVySo07INStartB6IntentCGGMR);
  outlined init with copy of CarPlayRCHFlowProvider<INStartCallIntent>(a1, v7, &_s27PhoneCallFlowDelegatePlugin024OnDeviceCarPlayWithInputC8StrategyVyAA0hI15RCHFlowProviderVySo07INStartB6IntentCGGMd, &_s27PhoneCallFlowDelegatePlugin024OnDeviceCarPlayWithInputC8StrategyVyAA0hI15RCHFlowProviderVySo07INStartB6IntentCGGMR);
  v10 = (*(v15 + 80) + 16) & ~*(v15 + 80);
  v11 = swift_allocObject();
  outlined init with take of OnDeviceCarPlayWithInputFlowStrategy<CarPlayRCHFlowProvider<INStartCallIntent>>(v7, v11 + v10, &_s27PhoneCallFlowDelegatePlugin024OnDeviceCarPlayWithInputC8StrategyVyAA0hI15RCHFlowProviderVySo07INStartB6IntentCGGMd, &_s27PhoneCallFlowDelegatePlugin024OnDeviceCarPlayWithInputC8StrategyVyAA0hI15RCHFlowProviderVySo07INStartB6IntentCGGMR);
  v2[7] = partial apply for specialized implicit closure #2 in implicit closure #1 in AnyIntentCarPlayDirectActionFlowStrategy.init<A>(_:);
  v2[8] = v11;
  outlined init with take of OnDeviceCarPlayWithInputFlowStrategy<CarPlayRCHFlowProvider<INStartCallIntent>>(a1, v7, &_s27PhoneCallFlowDelegatePlugin024OnDeviceCarPlayWithInputC8StrategyVyAA0hI15RCHFlowProviderVySo07INStartB6IntentCGGMd, &_s27PhoneCallFlowDelegatePlugin024OnDeviceCarPlayWithInputC8StrategyVyAA0hI15RCHFlowProviderVySo07INStartB6IntentCGGMR);
  v12 = swift_allocObject();
  outlined init with take of OnDeviceCarPlayWithInputFlowStrategy<CarPlayRCHFlowProvider<INStartCallIntent>>(v7, v12 + v10, &_s27PhoneCallFlowDelegatePlugin024OnDeviceCarPlayWithInputC8StrategyVyAA0hI15RCHFlowProviderVySo07INStartB6IntentCGGMd, &_s27PhoneCallFlowDelegatePlugin024OnDeviceCarPlayWithInputC8StrategyVyAA0hI15RCHFlowProviderVySo07INStartB6IntentCGGMR);
  v2[9] = partial apply for specialized implicit closure #4 in implicit closure #3 in AnyIntentCarPlayDirectActionFlowStrategy.init<A>(_:);
  v2[10] = v12;
  return v2;
}

uint64_t specialized OnDeviceCarPlayWithInputFlowStrategy.makeNLContextUpdate(app:)()
{
  App.appIdentifier.getter();
  v0 = type metadata accessor for MachineUtteranceBuilder();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  MachineUtteranceBuilder.init()();
  dispatch thunk of MachineUtteranceBuilder.addMappingIfPresent(node:value:)();
  OUTLINED_FUNCTION_7_22();

  type metadata accessor for AppOntologyNode();
  static AppOntologyNode.applicationIdNode.getter();
  TerminalOntologyNode.name.getter();

  dispatch thunk of MachineUtteranceBuilder.addMappingIfPresent(node:value:)();

  NLContextUpdate.init()();
  dispatch thunk of MachineUtteranceBuilder.build()();
  NLContextUpdate.nlInput.setter();

  type metadata accessor for NLContextUpdate();
  v3 = OUTLINED_FUNCTION_10_28();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

uint64_t specialized CarPlayRCHFlowProvider.makeRCHFlow(input:)(uint64_t a1)
{
  v4 = type metadata accessor for CATOption();
  v5 = OUTLINED_FUNCTION_21(v4);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  OUTLINED_FUNCTION_8_30();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5ParseOSgMd, &_s11SiriKitFlow5ParseOSgMR);
  v9 = OUTLINED_FUNCTION_21(v8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v33 - v12;
  v14 = v1 + 1;
  v15 = static PhoneCallRequestSupportPolicy.getSiriKitIntent(input:sharedGlobals:app:intentTypeName:)(a1, v1 + 1, *v1, PhoneCallFlowDelegatePlugin_PhoneCallIntentClassNames_unknownDefault);
  if (v15)
  {
    v16 = v15;
    static PhoneCallFlowFactory.makeRCHFlow(app:intent:sharedGlobals:)();
    if (v17)
    {
      v18 = v17;

      dispatch thunk of AnyFlow.on(input:)();

      if (one-time initialization token for siriPhone != -1)
      {
        OUTLINED_FUNCTION_6_2();
      }

      v19 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_9_0(v19, static Logger.siriPhone);
      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v20, v21))
      {
        *OUTLINED_FUNCTION_65_0() = 0;
        OUTLINED_FUNCTION_33(&dword_0, v22, v23, "#CarPlayRCHFlowProvider makeRCHFlow(input): RCHFlow found");
        OUTLINED_FUNCTION_26_0();
      }

      return v18;
    }
  }

  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2();
  }

  v24 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_9_0(v24, static Logger.siriPhone);
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = OUTLINED_FUNCTION_65_0();
    *v27 = 0;
    _os_log_impl(&dword_0, v25, v26, "#CarPlayRCHFlowProvider makeRCHFlow(input): no RCHFlow found", v27, 2u);
    OUTLINED_FUNCTION_26_0();
  }

  Input.parse.getter();
  v28 = type metadata accessor for Parse();
  __swift_storeEnumTagSinglePayload(v13, 0, 1, v28);
  type metadata accessor for StartCallCATsSimple();
  static CATOption.defaultMode.getter();
  v29 = CATWrapperSimple.__allocating_init(options:globals:)();
  v30 = static CommonOutputs.conversionError(sharedGlobals:parse:startCallCATsSimple:)(v14, v13, v29);

  v31 = outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v13, &_s11SiriKitFlow5ParseOSgMd, &_s11SiriKitFlow5ParseOSgMR);
  (*(*v30 + 112))(v31);
  OUTLINED_FUNCTION_15_23();
  v33[1] = v2;
  type metadata accessor for SimpleOutputFlowAsync();
  v18 = Flow.eraseToAnyFlow()();

  return v18;
}

uint64_t outlined copy of Data?(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return outlined copy of Data._Representation(a1, a2);
  }

  return a1;
}

uint64_t outlined copy of Data._Representation(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t partial apply for specialized implicit closure #2 in implicit closure #1 in AnyIntentCarPlayDirectActionFlowStrategy.init<A>(_:)(uint64_t a1, uint64_t a2)
{
  return partial apply for specialized implicit closure #2 in implicit closure #1 in AnyIntentCarPlayDirectActionFlowStrategy.init<A>(_:)(a1, a2, &_s27PhoneCallFlowDelegatePlugin024OnDeviceCarPlayWithInputC8StrategyVyAA0hI15RCHFlowProviderVySo07INStartB6IntentCGGMd, &_s27PhoneCallFlowDelegatePlugin024OnDeviceCarPlayWithInputC8StrategyVyAA0hI15RCHFlowProviderVySo07INStartB6IntentCGGMR);
}

{
  return partial apply for specialized implicit closure #2 in implicit closure #1 in AnyIntentCarPlayDirectActionFlowStrategy.init<A>(_:)(a1, a2, &_s27PhoneCallFlowDelegatePlugin024OnDeviceCarPlayWithInputC8StrategyVyAA0hI15RCHFlowProviderVySo012INStartAudioB6IntentCGGMd, &_s27PhoneCallFlowDelegatePlugin024OnDeviceCarPlayWithInputC8StrategyVyAA0hI15RCHFlowProviderVySo012INStartAudioB6IntentCGGMR);
}

uint64_t objectdestroyTm_2(uint64_t *a1, uint64_t *a2)
{
  v3 = (__swift_instantiateConcreteTypeFromMangledNameV2(a1, a2) - 8);
  v4 = *(*v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = *(*v3 + 64);
  v7 = *(v2 + v5);

  __swift_destroy_boxed_opaque_existential_1((v2 + v5 + 8));
  v8 = *(v2 + v5 + 48);

  v9 = v3[12];
  v10 = type metadata accessor for Input();
  OUTLINED_FUNCTION_23_1(v10);
  (*(v11 + 8))(v2 + v5 + v9);

  return _swift_deallocObject(v2, v5 + v6, v4 | 7);
}

uint64_t partial apply for specialized implicit closure #4 in implicit closure #3 in AnyIntentCarPlayDirectActionFlowStrategy.init<A>(_:)(uint64_t a1)
{
  return partial apply for specialized implicit closure #4 in implicit closure #3 in AnyIntentCarPlayDirectActionFlowStrategy.init<A>(_:)(a1, &_s27PhoneCallFlowDelegatePlugin024OnDeviceCarPlayWithInputC8StrategyVyAA0hI15RCHFlowProviderVySo07INStartB6IntentCGGMd, &_s27PhoneCallFlowDelegatePlugin024OnDeviceCarPlayWithInputC8StrategyVyAA0hI15RCHFlowProviderVySo07INStartB6IntentCGGMR);
}

{
  return partial apply for specialized implicit closure #4 in implicit closure #3 in AnyIntentCarPlayDirectActionFlowStrategy.init<A>(_:)(a1, &_s27PhoneCallFlowDelegatePlugin024OnDeviceCarPlayWithInputC8StrategyVyAA0hI15RCHFlowProviderVySo012INStartAudioB6IntentCGGMd, &_s27PhoneCallFlowDelegatePlugin024OnDeviceCarPlayWithInputC8StrategyVyAA0hI15RCHFlowProviderVySo012INStartAudioB6IntentCGGMR);
}

uint64_t outlined init with copy of CarPlayRCHFlowProvider<INStartCallIntent>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = OUTLINED_FUNCTION_112(a1, a2, a3, a4);
  OUTLINED_FUNCTION_23_1(v6);
  (*(v7 + 16))(v4, v5);
  return v4;
}

uint64_t outlined init with take of OnDeviceCarPlayWithInputFlowStrategy<CarPlayRCHFlowProvider<INStartCallIntent>>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = OUTLINED_FUNCTION_112(a1, a2, a3, a4);
  OUTLINED_FUNCTION_23_1(v6);
  (*(v7 + 32))(v4, v5);
  return v4;
}

uint64_t partial apply for specialized implicit closure #2 in implicit closure #1 in AnyIntentCarPlayDirectActionFlowStrategy.init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_21(v9);
  return specialized implicit closure #2 in implicit closure #1 in AnyIntentCarPlayDirectActionFlowStrategy.init<A>(_:)(a1, a2, v4 + ((*(v10 + 80) + 16) & ~*(v10 + 80)), a3, a4);
}

uint64_t partial apply for specialized implicit closure #4 in implicit closure #3 in AnyIntentCarPlayDirectActionFlowStrategy.init<A>(_:)(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_21(v4);
  v6 = v3 + ((*(v5 + 80) + 16) & ~*(v5 + 80));
  return specialized OnDeviceCarPlayWithInputFlowStrategy.makeNLContextUpdate(app:)();
}

uint64_t CarPlayDirectInvocationFlowStrategy.toAnyIntentFlowStrategy()(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_7(a1);
  v6 = v5;
  v8 = *(v7 + 64);
  __chkstk_darwin(v4);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness();
  type metadata accessor for AnyIntentCarPlayDirectActionFlowStrategy();
  v11 = *(v6 + 16);
  v12 = OUTLINED_FUNCTION_3_1();
  v13(v12);
  return AnyIntentCarPlayDirectActionFlowStrategy.__allocating_init<A>(_:)(v10, a1, a2);
}

uint64_t OnDeviceCarPlayWithInputFlowStrategy.init(rchFlowProvider:app:input:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a4 - 8) + 32))(a5, a1, a4);
  v8 = type metadata accessor for OnDeviceCarPlayWithInputFlowStrategy();
  *(a5 + *(v8 + 36)) = a2;
  v9 = *(v8 + 40);
  v10 = type metadata accessor for Input();
  v11 = *(*(v10 - 8) + 32);

  return v11(a5 + v9, a3, v10);
}

uint64_t CarPlayDirectInvocationFlowStrategy.makeRCHFlow(app:skIntent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = OUTLINED_FUNCTION_7(AssociatedTypeWitness);
  v11 = v10;
  v13 = *(v12 + 64);
  __chkstk_darwin(v9);
  v15 = &v19 - v14;
  (*(a4 + 32))(a3, a4);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v17 = (*(AssociatedConformanceWitness + 24))(a1, a2, AssociatedTypeWitness, AssociatedConformanceWitness);
  (*(v11 + 8))(v15, AssociatedTypeWitness);
  return v17;
}

uint64_t CarPlayDirectInvocationFlowStrategy.makeNLContextUpdate(app:)@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for NLContextUpdate();

  return __swift_storeEnumTagSinglePayload(a1, 1, 1, v2);
}

uint64_t CarPlayDirectInvocationFlowStrategy.makeNLContextWithNLInput(verb:appId:)(unsigned __int8 a1)
{
  v2 = a1;
  v3 = type metadata accessor for MachineUtteranceBuilder();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  MachineUtteranceBuilder.init()();
  if (v2 != 14)
  {
    PhoneCallVerbSemantics.rawValue.getter(a1);
  }

  dispatch thunk of MachineUtteranceBuilder.addMappingIfPresent(node:value:)();

  type metadata accessor for AppOntologyNode();
  static AppOntologyNode.applicationIdNode.getter();
  TerminalOntologyNode.name.getter();

  dispatch thunk of MachineUtteranceBuilder.addMappingIfPresent(node:value:)();

  NLContextUpdate.init()();
  dispatch thunk of MachineUtteranceBuilder.build()();
  NLContextUpdate.nlInput.setter();
}

uint64_t AnyIntentCarPlayDirectActionFlowStrategy.__allocating_init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  AnyIntentCarPlayDirectActionFlowStrategy.init<A>(_:)(a1, a2, a3);
  return v6;
}

void *AnyIntentCarPlayDirectActionFlowStrategy.init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *v3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = OUTLINED_FUNCTION_7(AssociatedTypeWitness);
  v12 = v11;
  v14 = *(v13 + 64);
  __chkstk_darwin(v10);
  v16 = &v33 - v15;
  (*(a3 + 32))(a2, a3);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v18 = CarPlayRCHFlowProviding.toAnyRCHFlowProvider()(AssociatedTypeWitness, AssociatedConformanceWitness);
  (*(v12 + 8))(v16, AssociatedTypeWitness);
  v4[2] = v18;
  v4[6] = a2;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v4 + 3);
  v20 = *(a2 - 8);
  (*(v20 + 16))(boxed_opaque_existential_1, a1, a2);
  v21 = *(v8 + 80);
  v22 = OUTLINED_FUNCTION_3_1();
  v4[7] = implicit closure #1 in AnyIntentCarPlayDirectActionFlowStrategy.init<A>(_:)(v22, v23, v24, a3);
  v4[8] = v25;
  v26 = OUTLINED_FUNCTION_3_1();
  v29 = implicit closure #3 in AnyIntentCarPlayDirectActionFlowStrategy.init<A>(_:)(v26, v27, v28, a3);
  v31 = v30;
  (*(v20 + 8))(a1, a2);
  v4[9] = v29;
  v4[10] = v31;
  return v4;
}

uint64_t (*implicit closure #1 in AnyIntentCarPlayDirectActionFlowStrategy.init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(a1);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9);
  v10 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v11 = swift_allocObject();
  *(v11 + 2) = a2;
  *(v11 + 3) = a3;
  *(v11 + 4) = a4;
  (*(v7 + 32))(&v11[v10], v9, a3);
  return partial apply for implicit closure #2 in implicit closure #1 in AnyIntentCarPlayDirectActionFlowStrategy.init<A>(_:);
}

uint64_t (*implicit closure #3 in AnyIntentCarPlayDirectActionFlowStrategy.init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(a1);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9);
  v10 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v11 = swift_allocObject();
  *(v11 + 2) = a2;
  *(v11 + 3) = a3;
  *(v11 + 4) = a4;
  (*(v7 + 32))(&v11[v10], v9, a3);
  return partial apply for implicit closure #4 in implicit closure #3 in AnyIntentCarPlayDirectActionFlowStrategy.init<A>(_:);
}

uint64_t AnyIntentCarPlayDirectActionFlowStrategy.unbox<A>()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  outlined init with copy of Any(v2 + 24, &v7);
  v5 = swift_dynamicCast();
  return __swift_storeEnumTagSinglePayload(a2, v5 ^ 1u, 1, a1);
}

uint64_t OnDeviceCarPlayWithInputFlowStrategy.input.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 40);
  v5 = type metadata accessor for Input();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t OnDeviceCarPlayWithInputFlowStrategy.makeNLContextUpdate(app:)@<X0>(uint64_t a1@<X8>)
{
  App.appIdentifier.getter();
  swift_getWitnessTable();
  CarPlayDirectInvocationFlowStrategy.makeNLContextWithNLInput(verb:appId:)(0xEu);

  v2 = type metadata accessor for NLContextUpdate();

  return __swift_storeEnumTagSinglePayload(a1, 0, 1, v2);
}

uint64_t DefaultCarPlayDirectActionFlowStrategy.makeNLContextUpdate(app:)@<X0>(uint64_t a1@<X8>)
{
  if (App.isFirstParty()())
  {
    OUTLINED_FUNCTION_1_50();
    CarPlayDirectInvocationFlowStrategy.makeNLContextWithNLInput(verb:appId:)(0);
  }

  else
  {
    App.appIdentifier.getter();
    OUTLINED_FUNCTION_1_50();
    CarPlayDirectInvocationFlowStrategy.makeNLContextWithNLInput(verb:appId:)(0);
  }

  v2 = type metadata accessor for NLContextUpdate();

  return __swift_storeEnumTagSinglePayload(a1, 0, 1, v2);
}

uint64_t type metadata completion function for OnDeviceCarPlayWithInputFlowStrategy(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    result = type metadata accessor for App();
    if (v4 <= 0x3F)
    {
      result = type metadata accessor for Input();
      if (v5 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for OnDeviceCarPlayWithInputFlowStrategy(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = type metadata accessor for Input();
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  if (v7 <= v10)
  {
    v11 = *(v9 + 84);
  }

  else
  {
    v11 = v7;
  }

  if (v11 <= 0x7FFFFFFF)
  {
    v12 = 0x7FFFFFFF;
  }

  else
  {
    v12 = v11;
  }

  v13 = *(v6 + 64);
  v14 = *(v9 + 80);
  if (!a2)
  {
    return 0;
  }

  v15 = v8;
  if (a2 <= v12)
  {
    goto LABEL_26;
  }

  v16 = ((v14 + ((v13 + 7) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v14) + *(*(v8 - 8) + 64);
  v17 = 8 * v16;
  if (v16 > 3)
  {
    goto LABEL_10;
  }

  v20 = ((a2 - v12 + ~(-1 << v17)) >> v17) + 1;
  if (HIWORD(v20))
  {
    v18 = *(a1 + v16);
    if (v18)
    {
      goto LABEL_18;
    }
  }

  else
  {
    if (v20 <= 0xFF)
    {
      if (v20 < 2)
      {
        goto LABEL_26;
      }

LABEL_10:
      v18 = *(a1 + v16);
      if (!*(a1 + v16))
      {
        goto LABEL_26;
      }

LABEL_18:
      v21 = (v18 - 1) << v17;
      if (v16 > 3)
      {
        v21 = 0;
      }

      if (v16)
      {
        if (v16 > 3)
        {
          LODWORD(v16) = 4;
        }

        switch(v16)
        {
          case 2:
            LODWORD(v16) = *a1;
            break;
          case 3:
            LODWORD(v16) = *a1 | (*(a1 + 2) << 16);
            break;
          case 4:
            LODWORD(v16) = *a1;
            break;
          default:
            LODWORD(v16) = *a1;
            break;
        }
      }

      return v12 + (v16 | v21) + 1;
    }

    v18 = *(a1 + v16);
    if (*(a1 + v16))
    {
      goto LABEL_18;
    }
  }

LABEL_26:
  if (v7 == v12)
  {
    v22 = a1;
    v10 = v7;
    v15 = v5;
LABEL_33:

    return __swift_getEnumTagSinglePayload(v22, v10, v15);
  }

  v23 = ((a1 + v13 + 7) & 0xFFFFFFFFFFFFFFF8);
  if ((v11 & 0x80000000) != 0)
  {
    v22 = (v23 + v14 + 8) & ~v14;
    goto LABEL_33;
  }

  v24 = *v23;
  if (v24 >= 0xFFFFFFFF)
  {
    LODWORD(v24) = -1;
  }

  return (v24 + 1);
}

void storeEnumTagSinglePayload for OnDeviceCarPlayWithInputFlowStrategy(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = type metadata accessor for Input();
  v11 = *(v10 - 8);
  v12 = *(v11 + 84);
  if (v9 <= v12)
  {
    v13 = *(v11 + 84);
  }

  else
  {
    v13 = v9;
  }

  if (v13 <= 0x7FFFFFFF)
  {
    v14 = 0x7FFFFFFF;
  }

  else
  {
    v14 = v13;
  }

  v15 = *(v8 + 64);
  v16 = *(v11 + 80);
  v17 = ((v16 + ((v15 + 7) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v16) + *(*(v10 - 8) + 64);
  v18 = 8 * v17;
  if (a3 <= v14)
  {
    v19 = 0;
  }

  else if (v17 <= 3)
  {
    v22 = ((a3 - v14 + ~(-1 << v18)) >> v18) + 1;
    if (HIWORD(v22))
    {
      v19 = 4;
    }

    else
    {
      if (v22 < 0x100)
      {
        v23 = 1;
      }

      else
      {
        v23 = 2;
      }

      if (v22 >= 2)
      {
        v19 = v23;
      }

      else
      {
        v19 = 0;
      }
    }
  }

  else
  {
    v19 = 1;
  }

  if (v14 >= a2)
  {
    switch(v19)
    {
      case 1:
        a1[v17] = 0;
        if (a2)
        {
          goto LABEL_30;
        }

        return;
      case 2:
        *&a1[v17] = 0;
        if (a2)
        {
          goto LABEL_30;
        }

        return;
      case 3:
LABEL_51:
        __break(1u);
        return;
      case 4:
        *&a1[v17] = 0;
        goto LABEL_29;
      default:
LABEL_29:
        if (!a2)
        {
          return;
        }

LABEL_30:
        if (v9 == v14)
        {
          v25 = a1;
          v26 = a2;
          v12 = v9;
          v10 = v7;
        }

        else
        {
          v27 = (&a1[v15 + 7] & 0xFFFFFFFFFFFFFFF8);
          if ((v13 & 0x80000000) == 0)
          {
            if ((a2 & 0x80000000) != 0)
            {
              v28 = a2 & 0x7FFFFFFF;
            }

            else
            {
              v28 = (a2 - 1);
            }

            *v27 = v28;
            return;
          }

          v25 = (v27 + v16 + 8) & ~v16;
          v26 = a2;
        }

        __swift_storeEnumTagSinglePayload(v25, v26, v12, v10);
        break;
    }
  }

  else
  {
    v20 = ~v14 + a2;
    if (v17 < 4)
    {
      v21 = (v20 >> v18) + 1;
      if (v17)
      {
        v24 = v20 & ~(-1 << v18);
        bzero(a1, v17);
        if (v17 == 3)
        {
          *a1 = v24;
          a1[2] = BYTE2(v24);
        }

        else if (v17 == 2)
        {
          *a1 = v24;
        }

        else
        {
          *a1 = v20;
        }
      }
    }

    else
    {
      bzero(a1, v17);
      *a1 = v20;
      v21 = 1;
    }

    switch(v19)
    {
      case 1:
        a1[v17] = v21;
        break;
      case 2:
        *&a1[v17] = v21;
        break;
      case 3:
        goto LABEL_51;
      case 4:
        *&a1[v17] = v21;
        break;
      default:
        return;
    }
  }
}

uint64_t type metadata completion function for DefaultCarPlayDirectActionFlowStrategy(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DefaultCarPlayDirectActionFlowStrategy(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return __swift_getEnumTagSinglePayload(a1, v5, v4);
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_19:
      if (v5)
      {
        return __swift_getEnumTagSinglePayload(a1, v5, v4);
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_19;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    switch(v6)
    {
      case 2:
        LODWORD(v6) = *a1;
        break;
      case 3:
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v6) = *a1;
        break;
      default:
        LODWORD(v6) = *a1;
        break;
    }
  }

  return v5 + (v6 | v11) + 1;
}

void storeEnumTagSinglePayload for DefaultCarPlayDirectActionFlowStrategy(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  v8 = *(*(v6 - 8) + 64);
  v9 = 8 * v8;
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    if (v8 <= 3)
    {
      v15 = ((v11 + ~(-1 << v9)) >> v9) + 1;
      if (HIWORD(v15))
      {
        v12 = 4;
      }

      else
      {
        if (v15 < 0x100)
        {
          v16 = 1;
        }

        else
        {
          v16 = 2;
        }

        if (v15 >= 2)
        {
          v12 = v16;
        }

        else
        {
          v12 = 0;
        }
      }
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  if (v7 >= a2)
  {
    switch(v12)
    {
      case 1:
        a1[v8] = 0;
        if (a2)
        {
          goto LABEL_24;
        }

        break;
      case 2:
        *&a1[v8] = 0;
        if (a2)
        {
          goto LABEL_24;
        }

        break;
      case 3:
LABEL_37:
        __break(1u);
        break;
      case 4:
        *&a1[v8] = 0;
        goto LABEL_23;
      default:
LABEL_23:
        if (a2)
        {
LABEL_24:

          __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
        }

        break;
    }
  }

  else
  {
    v13 = ~v7 + a2;
    if (v8 < 4)
    {
      v14 = (v13 >> v9) + 1;
      if (v8)
      {
        v17 = v13 & ~(-1 << v9);
        bzero(a1, v8);
        if (v8 == 3)
        {
          *a1 = v17;
          a1[2] = BYTE2(v17);
        }

        else if (v8 == 2)
        {
          *a1 = v17;
        }

        else
        {
          *a1 = v13;
        }
      }
    }

    else
    {
      bzero(a1, v8);
      *a1 = v13;
      v14 = 1;
    }

    switch(v12)
    {
      case 1:
        a1[v8] = v14;
        break;
      case 2:
        *&a1[v8] = v14;
        break;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v8] = v14;
        break;
      default:
        return;
    }
  }
}

uint64_t partial apply for implicit closure #4 in implicit closure #3 in AnyIntentCarPlayDirectActionFlowStrategy.init<A>(_:)()
{
  v1 = *(v0 + 32);
  v2 = v0 + ((*(*(*(v0 + 24) - 8) + 80) + 40) & ~*(*(*(v0 + 24) - 8) + 80));
  return (*(v1 + 48))();
}

uint64_t objectdestroyTm_3()
{
  v1 = *(*(v0 + 24) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t CarPlayRCHFlowProviding.toAnyRCHFlowProvider()(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(a1);
  OUTLINED_FUNCTION_4();
  v9 = v8 - v7;
  swift_getAssociatedTypeWitness();
  type metadata accessor for AnyIntentCarPlayRCHFlowProvider();
  (*(v5 + 16))(v9, v2, a1);
  return AnyIntentCarPlayRCHFlowProvider.__allocating_init<A>(_:)(v9, a1, a2);
}

uint64_t AnyIntentCarPlayRCHFlowProvider.__allocating_init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  AnyIntentCarPlayRCHFlowProvider.init<A>(_:)(a1, a2, a3);
  return v6;
}

void *AnyIntentCarPlayRCHFlowProvider.init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(*v3 + 80);
  v3[2] = implicit closure #1 in AnyIntentCarPlayRCHFlowProvider.init<A>(_:)(a1, v7, a2, a3);
  v3[3] = v8;
  v9 = implicit closure #3 in AnyIntentCarPlayRCHFlowProvider.init<A>(_:)(a1, v7, a2, a3);
  v11 = v10;
  (*(*(a2 - 8) + 8))(a1, a2);
  v3[4] = v9;
  v3[5] = v11;
  return v3;
}

uint64_t (*implicit closure #1 in AnyIntentCarPlayRCHFlowProvider.init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(a1);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9);
  v10 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v11 = swift_allocObject();
  *(v11 + 2) = a2;
  *(v11 + 3) = a3;
  *(v11 + 4) = a4;
  (*(v7 + 32))(&v11[v10], v9, a3);
  return partial apply for implicit closure #2 in implicit closure #1 in AnyIntentCarPlayRCHFlowProvider.init<A>(_:);
}

uint64_t (*implicit closure #3 in AnyIntentCarPlayRCHFlowProvider.init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(a1);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9);
  v10 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v11 = swift_allocObject();
  *(v11 + 2) = a2;
  *(v11 + 3) = a3;
  *(v11 + 4) = a4;
  (*(v7 + 32))(&v11[v10], v9, a3);
  return partial apply for implicit closure #4 in implicit closure #3 in AnyIntentCarPlayRCHFlowProvider.init<A>(_:);
}

uint64_t AnyIntentCarPlayRCHFlowProvider.makeRCHFlow(input:)()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t AnyIntentCarPlayRCHFlowProvider.makeRCHFlow(app:intent:)()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  return v1();
}

uint64_t CarPlayRCHFlowProvider.makeRCHFlow(input:)(uint64_t a1)
{
  v3 = type metadata accessor for CATOption();
  v4 = OUTLINED_FUNCTION_21(v3);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  OUTLINED_FUNCTION_4();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5ParseOSgMd, &_s11SiriKitFlow5ParseOSgMR);
  v8 = OUTLINED_FUNCTION_21(v7);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = v33 - v11;
  v13 = v1 + 1;
  v14 = static PhoneCallRequestSupportPolicy.getSiriKitIntent(input:sharedGlobals:app:intentTypeName:)(a1, v1 + 1, *v1, PhoneCallFlowDelegatePlugin_PhoneCallIntentClassNames_unknownDefault);
  if (v14)
  {
    v15 = v14;
    static PhoneCallFlowFactory.makeRCHFlow(app:intent:sharedGlobals:)();
    if (v16)
    {
      v17 = v16;

      dispatch thunk of AnyFlow.on(input:)();

      if (one-time initialization token for siriPhone != -1)
      {
        OUTLINED_FUNCTION_6_2();
      }

      v18 = type metadata accessor for Logger();
      __swift_project_value_buffer(v18, static Logger.siriPhone);
      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v19, v20))
      {
        *OUTLINED_FUNCTION_65_0() = 0;
        OUTLINED_FUNCTION_33(&dword_0, v21, v22, "#CarPlayRCHFlowProvider makeRCHFlow(input): RCHFlow found");
        OUTLINED_FUNCTION_26_0();
      }

      return v17;
    }
  }

  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2();
  }

  v23 = type metadata accessor for Logger();
  __swift_project_value_buffer(v23, static Logger.siriPhone);
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = OUTLINED_FUNCTION_65_0();
    *v26 = 0;
    _os_log_impl(&dword_0, v24, v25, "#CarPlayRCHFlowProvider makeRCHFlow(input): no RCHFlow found", v26, 2u);
    OUTLINED_FUNCTION_26_0();
  }

  Input.parse.getter();
  v27 = type metadata accessor for Parse();
  __swift_storeEnumTagSinglePayload(v12, 0, 1, v27);
  type metadata accessor for StartCallCATsSimple();
  static CATOption.defaultMode.getter();
  v28 = CATWrapperSimple.__allocating_init(options:globals:)();
  v29 = static CommonOutputs.conversionError(sharedGlobals:parse:startCallCATsSimple:)(v13, v12, v28);

  v30 = outlined destroy of Parse?(v12);
  v31 = (*(*v29 + 112))(v30);

  v33[1] = v31;
  type metadata accessor for SimpleOutputFlowAsync();
  v17 = Flow.eraseToAnyFlow()();

  return v17;
}

uint64_t CarPlayRCHFlowProvider.makeRCHFlow(app:intent:)()
{
  v1 = v0;
  v2 = type metadata accessor for CATOption();
  v3 = OUTLINED_FUNCTION_21(v2);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  OUTLINED_FUNCTION_4();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5ParseOSgMd, &_s11SiriKitFlow5ParseOSgMR);
  v7 = OUTLINED_FUNCTION_21(v6);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v29 - v10;
  static PhoneCallFlowFactory.makeRCHFlow(app:intent:sharedGlobals:)();
  if (v12)
  {
    v13 = v12;
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
      *OUTLINED_FUNCTION_65_0() = 0;
      OUTLINED_FUNCTION_33(&dword_0, v17, v18, "#CarPlayRCHFlowProvider makeRCHFlow(app, intent): RCHFlow found");
      OUTLINED_FUNCTION_26_0();
    }
  }

  else
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2();
    }

    v19 = type metadata accessor for Logger();
    __swift_project_value_buffer(v19, static Logger.siriPhone);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = OUTLINED_FUNCTION_65_0();
      *v22 = 0;
      _os_log_impl(&dword_0, v20, v21, "#CarPlayRCHFlowProvider: makeRCHFlow(app, intent): no RCHFlow found", v22, 2u);
      OUTLINED_FUNCTION_26_0();
    }

    v23 = type metadata accessor for Parse();
    __swift_storeEnumTagSinglePayload(v11, 1, 1, v23);
    type metadata accessor for StartCallCATsSimple();
    static CATOption.defaultMode.getter();
    v24 = CATWrapperSimple.__allocating_init(options:globals:)();
    v25 = static CommonOutputs.conversionError(sharedGlobals:parse:startCallCATsSimple:)((v1 + 8), v11, v24);

    v26 = outlined destroy of Parse?(v11);
    v27 = (*(*v25 + 112))(v26);

    v29[1] = v27;
    type metadata accessor for SimpleOutputFlowAsync();
    v13 = Flow.eraseToAnyFlow()();
  }

  return v13;
}

uint64_t outlined destroy of Parse?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5ParseOSgMd, &_s11SiriKitFlow5ParseOSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata instantiation function for CarPlayRCHFlowProvider()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void *one-time initialization function for kCNContactKeysToFetch()
{
  result = closure #1 in variable initialization expression of kCNContactKeysToFetch();
  kCNContactKeysToFetch._rawValue = result;
  return result;
}

uint64_t closure #1 in variable initialization expression of kCNContactKeysToFetch()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_42E120;
  v1 = objc_opt_self();
  *(v0 + 32) = [v1 descriptorForRequiredKeysForStyle:0];
  *(v0 + 40) = [v1 descriptorForRequiredKeysForStyle:1];
  *(v0 + 48) = CNContactIdentifierKey;
  v2 = CNContactPhonemeDataKey;
  *(v0 + 56) = CNContactPhonemeDataKey;
  v9 = v0;
  v3 = CNContactPronunciationGivenNameKey;
  v4 = CNContactIdentifierKey;
  v5 = v2;
  v6 = v3;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*(&dword_10 + (v9 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v9 & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v7 = CNContactPronunciationFamilyNameKey;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*(&dword_10 + (v9 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v9 & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  return v9;
}

Swift::OpaquePointer *kCNContactKeysToFetch.unsafeMutableAddressor()
{
  if (one-time initialization token for kCNContactKeysToFetch != -1)
  {
    OUTLINED_FUNCTION_0_39();
    swift_once();
  }

  return &kCNContactKeysToFetch;
}

INPerson_optional __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> CNContactStore.person(withIdentifier:)(Swift::String withIdentifier)
{
  object = withIdentifier._object;
  countAndFlagsBits = withIdentifier._countAndFlagsBits;
  v4 = type metadata accessor for PhoneError();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v8 = (&v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = HIBYTE(object) & 0xF;
  if ((object & 0x2000000000000000) == 0)
  {
    v9 = countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (v9)
  {
    static Signpost.begin(_:)();
    v11 = v10;
    v33 = v12;
    v34 = v13;
    v32 = v14;
    v15 = String._bridgeToObjectiveC()();
    if (one-time initialization token for kCNContactKeysToFetch != -1)
    {
      OUTLINED_FUNCTION_0_39();
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo15CNKeyDescriptor_pMd, &_sSo15CNKeyDescriptor_pMR);
    isa = Array._bridgeToObjectiveC()().super.isa;
    v35 = 0;
    v17 = [v1 unifiedContactWithIdentifier:v15 keysToFetch:isa error:&v35];

    v18 = v35;
    if (v17)
    {
      type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INPerson, INPerson_ptr);
      v19 = v18;
      v20.super.isa = INPerson.init(phoneContact:)(v17).super.isa;
      Signpost.OpenSignpost.end()();
    }

    else
    {
      v21 = v35;
      v22 = _convertNSErrorToError(_:)();

      swift_willThrow();
      if (one-time initialization token for siriPhone != -1)
      {
        OUTLINED_FUNCTION_6_2();
      }

      v31 = v11;
      v23 = type metadata accessor for Logger();
      __swift_project_value_buffer(v23, static Logger.siriPhone);

      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        v35 = v27;
        *v26 = 136315138;
        *(v26 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(countAndFlagsBits, object, &v35);
        _os_log_impl(&dword_0, v24, v25, "Couldn't fetch contact for identifier: %s", v26, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v27);
        OUTLINED_FUNCTION_26_0();
        OUTLINED_FUNCTION_26_0();
      }

      *v8 = v22;
      swift_storeEnumTagMultiPayload();
      lazy protocol witness table accessor for type PhoneError and conformance PhoneError();
      swift_allocError();
      v29 = v28;
      swift_errorRetain();
      v20.super.isa = v8;
      PhoneError.logged()(v29);
      outlined destroy of PhoneError(v8);
      swift_willThrow();

      Signpost.OpenSignpost.end()();
    }
  }

  else
  {
    v20.super.isa = 0;
  }

  v30 = v20.super.isa;
  result.value.super.isa = v30;
  result.is_nil = v6;
  return result;
}

void *CNContactStore.persons(withHandle:name:)(uint64_t a1, unint64_t a2, void *a3, void *a4)
{
  v6 = v4;
  v58 = a3;
  v10 = type metadata accessor for PhoneError();
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10);
  v14 = v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v15 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v16 = _swiftEmptyArrayStorage;
  if (v15)
  {
    v51[1] = v12;
    v52 = v14;
    v53 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_426260;
    v18 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_424FD0;
    *(v19 + 32) = a1;
    *(v19 + 40) = a2;

    isa = Array._bridgeToObjectiveC()().super.isa;

    v21 = [v18 predicateForContactsMatchingHandleStrings:isa];

    *(v17 + 32) = v21;
    v59 = v17;
    if (a4)
    {
      v22 = String._bridgeToObjectiveC()();
      v23 = [v18 predicateForContactsMatchingName:v22];

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      v21 = *(&dword_10 + (v59 & 0xFFFFFFFFFFFFFF8));
      if (v21 >= *(&dword_18 + (v59 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }

    static Signpost.begin(_:)();
    v56 = v25;
    v57 = v24;
    v55 = v26;
    v54 = v27;
    type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for NSCompoundPredicate, NSCompoundPredicate_ptr);
    v28 = @nonobjc NSCompoundPredicate.__allocating_init(andPredicateWithSubpredicates:)();
    if (one-time initialization token for kCNContactKeysToFetch != -1)
    {
      OUTLINED_FUNCTION_0_39();
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo15CNKeyDescriptor_pMd, &_sSo15CNKeyDescriptor_pMR);
    v29 = Array._bridgeToObjectiveC()().super.isa;
    v60[0] = 0;
    v30 = [v6 unifiedContactsMatchingPredicate:v28 keysToFetch:v29 error:v60];

    v31 = v60[0];
    if (v30)
    {
      type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for CNContact, CNContact_ptr);
      v32 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
      v33 = v31;

      v34 = specialized Array.count.getter(v32);
      if (!v34)
      {

LABEL_24:
        Signpost.OpenSignpost.end()();

        return v16;
      }

      a1 = v34;
      v60[0] = _swiftEmptyArrayStorage;
      specialized ContiguousArray.reserveCapacity(_:)();
      if ((a1 & 0x8000000000000000) == 0)
      {
        type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INPerson, INPerson_ptr);
        v35 = 0;
        do
        {
          if ((v32 & 0xC000000000000001) != 0)
          {
            v36 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v36 = *(v32 + 8 * v35 + 32);
          }

          ++v35;
          INPerson.init(phoneContact:)(v36);
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          v37 = *(v60[0] + 2);
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
        }

        while (a1 != v35);

        v16 = v60[0];
        goto LABEL_24;
      }

      __break(1u);
    }

    else
    {
      v38 = v60[0];
      v21 = _convertNSErrorToError(_:)();

      swift_willThrow();
      if (one-time initialization token for siriPhone == -1)
      {
LABEL_20:
        v39 = type metadata accessor for Logger();
        __swift_project_value_buffer(v39, static Logger.siriPhone);

        v40 = Logger.logObject.getter();
        v41 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v40, v41))
        {
          v42 = swift_slowAlloc();
          v43 = swift_slowAlloc();
          v60[1] = a4;
          v61 = v43;
          *v42 = 136315394;
          v60[0] = v58;

          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
          v44 = String.init<A>(describing:)();
          v46 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v44, v45, &v61);

          *(v42 + 4) = v46;
          *(v42 + 12) = 2080;
          *(v42 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, &v61);
          _os_log_impl(&dword_0, v40, v41, "Couldn't fetch contact for name: %s and handle: %s", v42, 0x16u);
          swift_arrayDestroy();
          OUTLINED_FUNCTION_26_0();
          OUTLINED_FUNCTION_26_0();
        }

        v16 = v57;
        v47 = v52;
        *v52 = v21;
        swift_storeEnumTagMultiPayload();
        lazy protocol witness table accessor for type PhoneError and conformance PhoneError();
        swift_allocError();
        v49 = v48;
        swift_errorRetain();
        PhoneError.logged()(v49);
        outlined destroy of PhoneError(v47);
        swift_willThrow();

        Signpost.OpenSignpost.end()();

        return v16;
      }
    }

    OUTLINED_FUNCTION_6_2();
    goto LABEL_20;
  }

  return v16;
}

id @nonobjc NSCompoundPredicate.__allocating_init(andPredicateWithSubpredicates:)()
{
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for NSPredicate, NSPredicate_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v1 = [swift_getObjCClassFromMetadata() andPredicateWithSubpredicates:isa];

  return v1;
}

uint64_t Collection.unique<A>(by:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = *a1;
  v11 = *(a2 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(a1);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v15 + class metadata base offset for KeyPath + 8);
  v17 = static Array._allocateUninitialized(_:)();
  if (Array._getCount()())
  {
    v18 = Set.init(_nonEmptyArrayLiteral:)(v17, v16, a4);
  }

  else
  {

    v18 = _swiftEmptySetSingleton;
  }

  v24 = v18;
  v19 = (*(v11 + 16))(v14, v5, a2);
  __chkstk_darwin(v19);
  *(&v23 - 6) = a2;
  *(&v23 - 5) = a3;
  *(&v23 - 4) = a4;
  *(&v23 - 3) = &v24;
  *(&v23 - 2) = a1;
  v20 = *(a3 + 8);
  v21 = Sequence.filter(_:)();

  return v21;
}

uint64_t Sequence.asyncCompactMapSerial<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[7] = a5;
  v6[8] = v5;
  v6[5] = a3;
  v6[6] = a4;
  v6[3] = a1;
  v6[4] = a2;
  v8 = type metadata accessor for Optional();
  v6[9] = v8;
  v9 = *(v8 - 8);
  v6[10] = v9;
  v10 = *(v9 + 64);
  v6[11] = OUTLINED_FUNCTION_45();
  v11 = *(a4 - 8);
  v6[12] = v11;
  v12 = *(v11 + 64) + 15;
  v6[13] = swift_task_alloc();
  v6[14] = swift_task_alloc();
  v6[15] = OUTLINED_FUNCTION_7_23();
  OUTLINED_FUNCTION_9_1();
  v6[16] = v13;
  v15 = *(v14 + 64);
  v6[17] = OUTLINED_FUNCTION_45();
  v16 = *(*(type metadata accessor for Optional() - 8) + 64);
  v6[18] = OUTLINED_FUNCTION_45();
  OUTLINED_FUNCTION_9_1();
  v6[19] = v17;
  v19 = *(v18 + 64);
  v6[20] = OUTLINED_FUNCTION_45();
  v20 = OUTLINED_FUNCTION_7_23();
  v6[21] = v20;
  v21 = *(v20 - 8);
  v6[22] = v21;
  v22 = *(v21 + 64);
  v6[23] = OUTLINED_FUNCTION_45();

  return _swift_task_switch(Sequence.asyncCompactMapSerial<A>(_:), 0, 0);
}

uint64_t Sequence.asyncCompactMapSerial<A>(_:)()
{
  v1 = v0[23];
  v3 = v0[19];
  v2 = v0[20];
  v5 = v0[7];
  v4 = v0[8];
  v7 = v0[5];
  v6 = v0[6];
  v0[2] = static Array._allocateUninitialized(_:)();
  (*(v3 + 16))(v2, v4, v7);
  dispatch thunk of Sequence.makeIterator()();
  v8 = v0[23];
  v9 = v0[21];
  v10 = v0[18];
  v11 = v0[15];
  v12 = v0[7];
  v13 = v0[5];
  swift_getAssociatedConformanceWitness();
  dispatch thunk of IteratorProtocol.next()();
  if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
  {
    v14 = OUTLINED_FUNCTION_2_39();
    v15(v14);
    v16 = v0[2];

    v17 = OUTLINED_FUNCTION_6_29();
  }

  else
  {
    v19 = OUTLINED_FUNCTION_5_29();
    v20(v19);
    OUTLINED_FUNCTION_0_40();
    v21 = *(v8 + 4);
    v22 = swift_task_alloc();
    v0[24] = v22;
    *v22 = v0;
    v17 = OUTLINED_FUNCTION_1_51(v22);
  }

  return v18(v17);
}

{
  v2 = *v1;
  v3 = *(*v1 + 192);
  v7 = *v1;
  *(*v1 + 200) = v0;

  if (v0)
  {
    v4 = *(v2 + 16);

    v5 = Sequence.asyncCompactMapSerial<A>(_:);
  }

  else
  {
    v5 = Sequence.asyncCompactMapSerial<A>(_:);
  }

  return _swift_task_switch(v5, 0, 0);
}

{
  v1 = v0[11];
  v2 = v0[6];
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v1, 1, v2);
  v5 = v0[16];
  v4 = v0[17];
  v6 = v0[15];
  if (EnumTagSinglePayload == 1)
  {
    v7 = v0[9];
    v8 = v0[10];
    (*(v5 + 8))(v0[17], v0[15]);
    (*(v8 + 8))(v1, v7);
  }

  else
  {
    v10 = v0[13];
    v9 = v0[14];
    v11 = v0[12];
    (*(v11 + 32))(v9, v1, v2);
    (*(v11 + 16))(v10, v9, v2);
    type metadata accessor for Array();
    Array.append(_:)();
    (*(v11 + 8))(v9, v2);
    (*(v5 + 8))(v4, v6);
  }

  v12 = v0[23];
  v13 = v0[21];
  v14 = v0[18];
  v15 = v0[15];
  v16 = v0[7];
  v17 = v0[5];
  swift_getAssociatedConformanceWitness();
  dispatch thunk of IteratorProtocol.next()();
  if (__swift_getEnumTagSinglePayload(v14, 1, v15) == 1)
  {
    v18 = OUTLINED_FUNCTION_2_39();
    v19(v18);
    v20 = v0[2];

    v21 = OUTLINED_FUNCTION_6_29();
  }

  else
  {
    v23 = OUTLINED_FUNCTION_5_29();
    v24(v23);
    OUTLINED_FUNCTION_0_40();
    v25 = *(v12 + 4);
    v26 = swift_task_alloc();
    v0[24] = v26;
    *v26 = v0;
    v21 = OUTLINED_FUNCTION_1_51();
  }

  return v22(v21);
}

{
  v2 = v0[22];
  v1 = v0[23];
  v4 = v0[20];
  v3 = v0[21];
  v5 = v0[18];
  v7 = v0[13];
  v6 = v0[14];
  v8 = v0[11];
  (*(v0[16] + 8))(v0[17], v0[15]);
  (*(v2 + 8))(v1, v3);

  v9 = v0[1];
  v10 = v0[25];

  return v9();
}

uint64_t Collection.emptyToNil.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (dispatch thunk of Collection.isEmpty.getter())
  {
    v5 = 1;
  }

  else
  {
    (*(*(a1 - 8) + 16))(a2, v2, a1);
    v5 = 0;
  }

  return __swift_storeEnumTagSinglePayload(a2, v5, 1, a1);
}

uint64_t closure #1 in Collection.unique<A>(by:)(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(*a3 + class metadata base offset for KeyPath + 8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(a1);
  __chkstk_darwin(v6);
  v8 = &v11 - v7;
  swift_getAtKeyPath();
  type metadata accessor for Set();
  v9 = Set.insert(_:)();
  (*(v4 + 8))(v8, v3);
  return v9 & 1;
}

uint64_t Sequence<>.unique()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  OUTLINED_FUNCTION_9_1();
  v9 = v8;
  v11 = *(v10 + 64);
  __chkstk_darwin(v12);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v16 = static Array._allocateUninitialized(_:)();
  if (Array._getCount()())
  {
    v17 = Set.init(_nonEmptyArrayLiteral:)(v16, AssociatedTypeWitness, a3);
  }

  else
  {

    v17 = _swiftEmptySetSingleton;
  }

  v22 = v17;
  v18 = (*(v9 + 16))(v14, v4, a1);
  __chkstk_darwin(v18);
  *(&v21 - 4) = a1;
  *(&v21 - 3) = a2;
  *(&v21 - 2) = a3;
  *(&v21 - 1) = &v22;
  v19 = Sequence.filter(_:)();

  return v19;
}

uint64_t closure #1 in Sequence<>.unique()(uint64_t a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(AssociatedTypeWitness - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(AssociatedTypeWitness);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v12 - v8;
  (*(v3 + 16))(v7, a1, AssociatedTypeWitness);
  type metadata accessor for Set();
  v10 = Set.insert(_:)();
  (*(v3 + 8))(v9, AssociatedTypeWitness);
  return v10 & 1;
}

uint64_t Set.init(_nonEmptyArrayLiteral:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(a1);
  v9 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v45 = &v35 - v11;
  __chkstk_darwin(v10);
  v13 = &v35 - v12;
  if (Array.count.getter())
  {
    type metadata accessor for _SetStorage();
    v14 = static _SetStorage.allocate(capacity:)();
  }

  else
  {
    v14 = _swiftEmptySetSingleton;
  }

  v38 = Array._getCount()();
  if (v38)
  {
    v35 = v7;
    v36 = v5;
    v15 = 0;
    v43 = (v6 + 16);
    v44 = v14 + 7;
    v40 = (v6 + 32);
    v42 = v6 + 8;
    v37 = v13;
    while (1)
    {
      IsNativeType = Array._hoistableIsNativeTypeChecked()();
      Array._checkSubscript(_:wasNativeTypeChecked:)();
      if (IsNativeType)
      {
        v17 = *(v6 + 16);
        result = v17(v13, (v5 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v15), a2);
      }

      else
      {
        v41 = v15;
        result = _ArrayBuffer._getElementSlowPath(_:)();
        if (v35 != 8)
        {
          goto LABEL_23;
        }

        v46 = result;
        v17 = *v43;
        (*v43)(v13, &v46, a2);
        result = swift_unknownObjectRelease();
        v15 = v41;
      }

      v41 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      v39 = *v40;
      v39(v45, v13, a2);
      v19 = v14[5];
      v20 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v21 = ~(-1 << *(v14 + 32));
      while (1)
      {
        v22 = v20 & v21;
        v23 = (v20 & v21) >> 6;
        v24 = v44[v23];
        v25 = 1 << (v20 & v21);
        if ((v25 & v24) == 0)
        {
          break;
        }

        v26 = v14;
        v17(v9, (v14[6] + *(v6 + 72) * v22), a2);
        v27 = a3;
        v28 = *(a3 + 8);
        v29 = dispatch thunk of static Equatable.== infix(_:_:)();
        v30 = *(v6 + 8);
        v30(v9, a2);
        if (v29)
        {
          v30(v45, a2);
          a3 = v27;
          v13 = v37;
          v14 = v26;
          v15 = v41;
          goto LABEL_16;
        }

        v20 = v22 + 1;
        a3 = v27;
        v14 = v26;
      }

      v31 = v45;
      v44[v23] = v25 | v24;
      result = (v39)(v14[6] + *(v6 + 72) * v22, v31, a2);
      v32 = v14[2];
      v33 = __OFADD__(v32, 1);
      v34 = v32 + 1;
      v13 = v37;
      v15 = v41;
      if (v33)
      {
        goto LABEL_22;
      }

      v14[2] = v34;
LABEL_16:
      v5 = v36;
      if (v15 == v38)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
  }

  else
  {
LABEL_20:

    return v14;
  }

  return result;
}

uint64_t partial apply for closure #1 in Collection.unique<A>(by:)(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  return closure #1 in Collection.unique<A>(by:)(a1, *(v1 + 40), *(v1 + 48)) & 1;
}

uint64_t partial apply for closure #1 in Sequence<>.unique()(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v5 = v1[4];
  v4 = v1[5];
  return closure #1 in Sequence<>.unique()(a1) & 1;
}

id one-time initialization function for missedRed()
{
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SAUIColor, SAUIColor_ptr);
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for NSNumber, NSNumber_ptr);
  NSNumber.init(integerLiteral:)(1);
  result = SAUIColor.init(r:g:b:alpha:)();
  static ColorFactory.missedRed = result;
  return result;
}

uint64_t *ColorFactory.missedRed.unsafeMutableAddressor()
{
  if (one-time initialization token for missedRed != -1)
  {
    swift_once();
  }

  return &static ColorFactory.missedRed;
}

uint64_t *ColorFactory.watchDarkCardItemBackgroundColor.unsafeMutableAddressor()
{
  if (one-time initialization token for watchDarkCardItemBackgroundColor != -1)
  {
    swift_once();
  }

  return &static ColorFactory.watchDarkCardItemBackgroundColor;
}

id one-time initialization function for watchDarkCardItemBackgroundColor(Swift::Double a1, uint64_t a2, void *a3)
{
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SAUIColor, SAUIColor_ptr);
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for NSNumber, NSNumber_ptr);
  NSNumber.init(floatLiteral:)(a1);
  result = SAUIColor.init(r:g:b:alpha:)();
  *a3 = result;
  return result;
}

uint64_t *ColorFactory.watchDarkCardItemTitleBackgroundColor.unsafeMutableAddressor()
{
  if (one-time initialization token for watchDarkCardItemTitleBackgroundColor != -1)
  {
    swift_once();
  }

  return &static ColorFactory.watchDarkCardItemTitleBackgroundColor;
}

uint64_t Publisher.sink(receiveResultCompletion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  v8[2] = a3;
  v8[3] = a4;
  v8[4] = a1;
  v8[5] = a2;
  v9 = swift_allocObject();
  v9[2] = a3;
  v9[3] = a4;
  v9[4] = a1;
  v9[5] = a2;
  swift_retain_n();
  v10 = Publisher.sink(receiveCompletion:receiveValue:)();

  return v10;
}

uint64_t closure #1 in Publisher.sink(receiveResultCompletion:)(uint64_t a1, void (*a2)(char *), uint64_t a3)
{
  v21 = a3;
  v22 = a2;
  swift_getAssociatedTypeWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v5 = type metadata accessor for Result();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v21 - v8;
  v10 = type metadata accessor for Subscribers.Completion();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v15 = &v21 - v14;
  v16 = *(AssociatedTypeWitness - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v13);
  v19 = &v21 - v18;
  (*(v11 + 16))(v15, a1, v10);
  if (__swift_getEnumTagSinglePayload(v15, 1, AssociatedTypeWitness) == 1)
  {
    return (*(v11 + 8))(v15, v10);
  }

  (*(v16 + 32))(v19, v15, AssociatedTypeWitness);
  (*(v16 + 16))(v9, v19, AssociatedTypeWitness);
  swift_storeEnumTagMultiPayload();
  v22(v9);
  (*(v6 + 8))(v9, v5);
  return (*(v16 + 8))(v19, AssociatedTypeWitness);
}

uint64_t partial apply for closure #1 in Publisher.sink(receiveResultCompletion:)(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return closure #1 in Publisher.sink(receiveResultCompletion:)(a1, *(v1 + 32), *(v1 + 40));
}

uint64_t closure #2 in Publisher.sink(receiveResultCompletion:)(uint64_t a1, void (*a2)(char *))
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v5 = type metadata accessor for Result();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v11 - v8;
  (*(*(AssociatedTypeWitness - 8) + 16))(&v11 - v8, a1, AssociatedTypeWitness);
  swift_storeEnumTagMultiPayload();
  a2(v9);
  return (*(v6 + 8))(v9, v5);
}

uint64_t partial apply for closure #2 in Publisher.sink(receiveResultCompletion:)(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 40);
  return closure #2 in Publisher.sink(receiveResultCompletion:)(a1, *(v1 + 32));
}

id CommonDirectAction.toSAIntentGroupRunSiriKitExecutor(deviceState:)(void *a1)
{
  v2 = objc_opt_self();
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v4 = DeviceState.asInvocationContext.getter();
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SKIDirectInvocationPayload, SKIDirectInvocationPayload_ptr);
  CommonDirectAction.identifier.getter();
  v5 = SKIDirectInvocationPayload.__allocating_init(identifier:)();
  v6 = CommonDirectAction.userData.getter();
  v7 = specialized _dictionaryUpCast<A, B, C, D>(_:)(v6);

  outlined bridged method (mbnn) of @objc SKIDirectInvocationPayload.userData.setter(v7, v5);
  v8 = [v2 runSiriKitExecutorCommandWithContext:v4 payload:v5];

  return v8;
}

void static CommonDirectAction.from(_:)(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for Parse.DirectInvocation();
  v3 = OUTLINED_FUNCTION_7(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v3);
  OUTLINED_FUNCTION_4();
  v10 = v9 - v8;
  v12 = Parse.DirectInvocation.identifier.getter();
  v13 = v11;
  v14 = v12 == 0xD000000000000029 && 0x8000000000458B10 == v11;
  if (v14 || (OUTLINED_FUNCTION_2_40() & 1) != 0)
  {
    goto LABEL_6;
  }

  v20 = v12 == 0xD000000000000028 && 0x8000000000458B40 == v13;
  if (v20 || (OUTLINED_FUNCTION_2_40() & 1) != 0)
  {
    goto LABEL_6;
  }

  v21 = v12 == 0xD000000000000033 && 0x8000000000459B70 == v13;
  if (v21 || (OUTLINED_FUNCTION_2_40() & 1) != 0)
  {

    v22 = Parse.DirectInvocation.userData.getter();
    static CommonDirectAction.parseContactPicker(userData:)(v22, a1);
LABEL_38:
    OUTLINED_FUNCTION_65();

    return;
  }

  v23 = v12 == 0xD000000000000043 && 0x8000000000459BB0 == v13;
  if (v23 || (OUTLINED_FUNCTION_2_40() & 1) != 0 || (v12 == 0xD000000000000042 ? (v24 = 0x8000000000458DE0 == v13) : (v24 = 0), v24 || (OUTLINED_FUNCTION_2_40() & 1) != 0 || (v12 == 0xD000000000000040 ? (v25 = 0x8000000000459C00 == v13) : (v25 = 0), v25 || (OUTLINED_FUNCTION_2_40() & 1) != 0)))
  {

    v26 = Parse.DirectInvocation.userData.getter();
    static CommonDirectAction.parseDisambiguationSelection(userData:)(v26, a1);
    goto LABEL_38;
  }

  v28 = v12 == 0xD000000000000039 && 0x8000000000459C50 == v13;
  if (v28 || (OUTLINED_FUNCTION_2_40() & 1) != 0)
  {

    v29 = Parse.DirectInvocation.userData.getter();
    static CommonDirectAction.parseUserDialogAct(userData:)(v29, a1);
    goto LABEL_38;
  }

  v30 = v12 == 0xD00000000000002CLL && 0x8000000000459C90 == v13;
  if (v30 || (OUTLINED_FUNCTION_2_40() & 1) != 0 || (v12 == 0xD00000000000002ALL ? (v31 = 0x8000000000459CC0 == v13) : (v31 = 0), v31 || (OUTLINED_FUNCTION_2_40() & 1) != 0))
  {
LABEL_6:

    type metadata accessor for CommonDirectAction();
    OUTLINED_FUNCTION_1_52();
LABEL_7:
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_65();

    __swift_storeEnumTagSinglePayload(v15, v16, v17, v18);
    return;
  }

  if (v12 == 0xD00000000000002ALL && 0x8000000000459CF0 == v13)
  {

    goto LABEL_69;
  }

  v33 = OUTLINED_FUNCTION_2_40();

  if (v33)
  {
LABEL_69:
    type metadata accessor for CommonDirectAction();
    OUTLINED_FUNCTION_1_52();
    goto LABEL_7;
  }

  if (one-time initialization token for siriPhone != -1)
  {
    swift_once();
  }

  v34 = type metadata accessor for Logger();
  __swift_project_value_buffer(v34, static Logger.siriPhone);
  v35 = *(v5 + 16);
  v36 = OUTLINED_FUNCTION_5_30();
  v37(v36);
  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v47 = v41;
    *v40 = 136315138;
    v42 = Parse.DirectInvocation.identifier.getter();
    v44 = v43;
    (*(v5 + 8))(v10, v2);
    v45 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v42, v44, &v47);

    *(v40 + 4) = v45;
    _os_log_impl(&dword_0, v38, v39, "unsupported direct invocation identifier: %s", v40, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v41);
  }

  else
  {

    (*(v5 + 8))(v10, v2);
  }

  v46 = type metadata accessor for CommonDirectAction();
  __swift_storeEnumTagSinglePayload(a1, 1, 1, v46);
  OUTLINED_FUNCTION_65();
}

uint64_t specialized Dictionary.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    outlined init with take of Any(a1, v9);
    v6 = *v3;
    swift_isUniquelyReferenced_nonNull_native();
    v8 = *v3;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v9, a2, a3);

    *v3 = v8;
  }

  else
  {
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(a1, &_sypSgMd, &_sypSgMR);
    specialized Dictionary._Variant.removeValue(forKey:)(a2, a3, v9);

    return outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v9, &_sypSgMd, &_sypSgMR);
  }

  return result;
}

id CommonDirectAction.toStartLocalRequest(deviceState:)(void *a1)
{
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SKIDirectInvocationPayload, SKIDirectInvocationPayload_ptr);
  CommonDirectAction.identifier.getter();
  v2 = SKIDirectInvocationPayload.__allocating_init(identifier:)();
  v3 = CommonDirectAction.userData.getter();
  v4 = specialized _dictionaryUpCast<A, B, C, D>(_:)(v3);

  outlined bridged method (mbnn) of @objc SKIDirectInvocationPayload.userData.setter(v4, v2);
  v5 = SKIDirectInvocationPayload.toStartLocalRequest(deviceState:)(a1);

  return v5;
}

uint64_t static CommonDirectAction.parseContactPicker(userData:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for ContactResolutionResponseHandler.DirectInvocationValue();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = (&v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for ContactResolutionResponseHandler();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);

  ContactResolutionResponseHandler.init(userData:)();
  ContactResolutionResponseHandler.directInvocationValue.getter();
  (*(v10 + 8))(v13, v9);
  if ((*(v5 + 88))(v8, v4) == enum case for ContactResolutionResponseHandler.DirectInvocationValue.contactId(_:))
  {
    (*(v5 + 96))(v8, v4);
    v14 = *v8;
    v15 = v8[1];
    v16 = v8[2];

    *a2 = v14;
    a2[1] = v15;
    v17 = type metadata accessor for CommonDirectAction();
    swift_storeEnumTagMultiPayload();
    v18 = a2;
    v19 = 0;
    v20 = v17;
  }

  else
  {
    (*(v5 + 8))(v8, v4);
    if (one-time initialization token for siriPhone != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    __swift_project_value_buffer(v21, static Logger.siriPhone);

    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v32 = v25;
      *v24 = 136315138;
      if (a1)
      {
        v26 = Dictionary.description.getter();
        v28 = v27;
      }

      else
      {
        v28 = 0xE300000000000000;
        v26 = 7104878;
      }

      v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v28, &v32);

      *(v24 + 4) = v29;
      _os_log_impl(&dword_0, v22, v23, "#CommonDirectAction invalid user data for contactPicker: %s", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v25);
    }

    v20 = type metadata accessor for CommonDirectAction();
    v18 = a2;
    v19 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v18, v19, 1, v20);
}

uint64_t static CommonDirectAction.parseUserDialogAct(userData:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for BinaryDecodingOptions();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v26[-v8];
  v10 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v26[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (!a1)
  {
    v27 = 0u;
    v28 = 0u;
    goto LABEL_6;
  }

  specialized Dictionary.subscript.getter(0x6C61694472657375, 0xED0000746341676FLL, a1, &v27);
  if (!*(&v28 + 1))
  {
LABEL_6:
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(&v27, &_sypSgMd, &_sypSgMR);
    goto LABEL_7;
  }

  if (swift_dynamicCast())
  {
    v29 = 0;
    v27 = 0u;
    v28 = 0u;
    BinaryDecodingOptions.init()();
    lazy protocol witness table accessor for type Siri_Nlu_External_UserDialogAct and conformance Siri_Nlu_External_UserDialogAct();
    Message.init(serializedData:extensions:partial:options:)();
    __swift_storeEnumTagSinglePayload(v9, 0, 1, v10);
    v21 = *(v11 + 32);
    v21(v14, v9, v10);
    v21(a2, v14, v10);
    v22 = type metadata accessor for CommonDirectAction();
    swift_storeEnumTagMultiPayload();
    v23 = a2;
    v24 = 0;
    v25 = v22;
    return __swift_storeEnumTagSinglePayload(v23, v24, 1, v25);
  }

LABEL_7:
  if (one-time initialization token for siriPhone != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  __swift_project_value_buffer(v15, static Logger.siriPhone);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *&v27 = v19;
    *v18 = 136315138;
    *(v18 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x6C61694472657375, 0xED0000746341676FLL, &v27);
    _os_log_impl(&dword_0, v16, v17, "#CommonDirectAction invalid user data for %s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v19);
  }

  v25 = type metadata accessor for CommonDirectAction();
  v23 = a2;
  v24 = 1;
  return __swift_storeEnumTagSinglePayload(v23, v24, 1, v25);
}

uint64_t static CommonDirectAction.parseDisambiguationSelection(userData:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (a1)
  {
    specialized Dictionary.subscript.getter(0x61446E6F73726570, 0xEA00000000006174, a1, v32);
    if (v33)
    {
      if (swift_dynamicCast())
      {
        static CommonDirectAction.parseDisambiguationSelectionPerson(personData:)(v30, v31, a2);
        return outlined consume of Data._Representation(v30, v31);
      }
    }

    else
    {
      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v32, &_sypSgMd, &_sypSgMR);
    }

    specialized Dictionary.subscript.getter(0x7865646E69, 0xE500000000000000, a1, v32);
    if (v33)
    {
      if (swift_dynamicCast())
      {
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
          _os_log_impl(&dword_0, v11, v12, "#CommonDirectAction parsed index", v13, 2u);
        }

        *a2 = v30;
        v14 = type metadata accessor for CommonDirectAction();
LABEL_28:
        swift_storeEnumTagMultiPayload();
        v19 = a2;
        v20 = 0;
        v21 = v14;
        return __swift_storeEnumTagSinglePayload(v19, v20, 1, v21);
      }
    }

    else
    {
      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v32, &_sypSgMd, &_sypSgMR);
    }

    specialized Dictionary.subscript.getter(0x6449707061, 0xE500000000000000, a1, v32);
    if (v33)
    {
      if (swift_dynamicCast())
      {
        if (one-time initialization token for siriPhone != -1)
        {
          swift_once();
        }

        v15 = type metadata accessor for Logger();
        __swift_project_value_buffer(v15, static Logger.siriPhone);
        v16 = Logger.logObject.getter();
        v17 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v16, v17))
        {
          v18 = swift_slowAlloc();
          *v18 = 0;
          _os_log_impl(&dword_0, v16, v17, "#CommonDirectAction parsed appId", v18, 2u);
        }

        *a2 = v30;
        a2[1] = v31;
        v14 = type metadata accessor for CommonDirectAction();
        goto LABEL_28;
      }
    }

    else
    {
      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v32, &_sypSgMd, &_sypSgMR);
    }

    if (one-time initialization token for siriPhone != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    __swift_project_value_buffer(v22, static Logger.siriPhone);

    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v32[0] = v26;
      *v25 = 136315138;
      v27 = Dictionary.description.getter();
      v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v28, v32);

      *(v25 + 4) = v29;
      _os_log_impl(&dword_0, v23, v24, "Invalid user data for disambiguationSelection: %s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v26);
    }

    v21 = type metadata accessor for CommonDirectAction();
    v19 = a2;
    v20 = 1;
    return __swift_storeEnumTagSinglePayload(v19, v20, 1, v21);
  }

  if (one-time initialization token for siriPhone != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static Logger.siriPhone);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_0, v6, v7, "Nil user data for disambiguationSelection", v8, 2u);
  }

  v9 = type metadata accessor for CommonDirectAction();

  return __swift_storeEnumTagSinglePayload(a2, 1, 1, v9);
}

id CommonDirectAction.toDirectInvocationPayload()()
{
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SKIDirectInvocationPayload, SKIDirectInvocationPayload_ptr);
  CommonDirectAction.identifier.getter();
  v0 = SKIDirectInvocationPayload.__allocating_init(identifier:)();
  v1 = CommonDirectAction.userData.getter();
  v2 = specialized _dictionaryUpCast<A, B, C, D>(_:)(v1);

  outlined bridged method (mbnn) of @objc SKIDirectInvocationPayload.userData.setter(v2, v0);
  return v0;
}

unint64_t CommonDirectAction.identifier.getter()
{
  v1 = type metadata accessor for CommonDirectAction();
  v2 = OUTLINED_FUNCTION_23_1(v1);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_12_28(v5);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = 0xD000000000000029;
  switch(EnumCaseMultiPayload)
  {
    case 1:
      outlined destroy of CommonDirectAction(v0);
      result = 0xD000000000000043;
      break;
    case 2:
      result = 0xD000000000000042;
      break;
    case 3:
      outlined destroy of CommonDirectAction(v0);
      result = 0xD000000000000040;
      break;
    case 4:
      v8 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
      OUTLINED_FUNCTION_23_1(v8);
      (*(v9 + 8))(v0);
      result = 0xD000000000000039;
      break;
    case 5:
      outlined destroy of CommonDirectAction(v0);
      result = 0xD000000000000022;
      break;
    case 6:
      return result;
    case 7:
      result = 0xD000000000000028;
      break;
    case 8:
      result = 0xD00000000000002CLL;
      break;
    case 9:
    case 10:
      result = 0xD00000000000002ALL;
      break;
    default:
      outlined destroy of CommonDirectAction(v0);
      result = 0xD000000000000033;
      break;
  }

  return result;
}

id SKIDirectInvocationPayload.__allocating_init(identifier:)()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = String._bridgeToObjectiveC()();

  v2 = [v0 initWithIdentifier:v1];

  return v2;
}

id CommonDirectAction.userData.getter()
{
  v1 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v2 = OUTLINED_FUNCTION_7(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  __chkstk_darwin(v2);
  OUTLINED_FUNCTION_4();
  v9 = v8 - v7;
  v10 = type metadata accessor for CommonDirectAction();
  v11 = OUTLINED_FUNCTION_23_1(v10);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_12_28(v14);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v27 = *v0;
      v15 = Dictionary.init(dictionaryLiteral:)();
      result = INIntentSlotValueTransformToContact();
      if (result)
      {
        v29 = outlined bridged method (ob) of @objc PBCodable.data.getter(result);
        if (v30 >> 60 == 15)
        {

          return v15;
        }

        v33 = v29;
        v34 = v30;
        OUTLINED_FUNCTION_13_20(v29, v30, &type metadata for Data);
        outlined copy of Data?(v33, v34);
        swift_isUniquelyReferenced_nonNull_native();
        OUTLINED_FUNCTION_9_27();
        v35 = OUTLINED_FUNCTION_7_24();
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v35, v36, 0xEA00000000006174);

        outlined consume of Data?(v33, v34);
        return v41;
      }

      __break(1u);
      return result;
    case 2u:
      v17 = *v0;
      Dictionary.init(dictionaryLiteral:)();
      v44 = &type metadata for Int;
      *&v43 = v17;
      outlined init with take of Any(&v43, &v42);
      swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_9_27();
      goto LABEL_6;
    case 3u:
      v18 = *v0;
      v19 = *(v0 + 8);
      v20 = Dictionary.init(dictionaryLiteral:)();
      v44 = &type metadata for String;
      OUTLINED_FUNCTION_8_31();
      swift_isUniquelyReferenced_nonNull_native();
      v41 = v20;
LABEL_6:
      v21 = OUTLINED_FUNCTION_7_24();
      v23 = 0xE500000000000000;
      goto LABEL_13;
    case 4u:
      (*(v4 + 32))(v9, v0, v1);
      Dictionary.init(dictionaryLiteral:)();
      lazy protocol witness table accessor for type Siri_Nlu_External_UserDialogAct and conformance Siri_Nlu_External_UserDialogAct();
      v16 = Message.serializedData(partial:)();
      OUTLINED_FUNCTION_13_20(v16, v37, &type metadata for Data);
      swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_9_27();
      v38 = OUTLINED_FUNCTION_7_24();
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v38, v39, v40);
      v15 = v41;
      (*(v4 + 8))(v9, v1);
      return v15;
    case 5u:
      v31 = *v0;
      v32 = *(v0 + 8);
      v15 = Dictionary.init(dictionaryLiteral:)();
      if (!v32)
      {
        return v15;
      }

      v44 = &type metadata for String;
      OUTLINED_FUNCTION_8_31();
      swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_9_27();
      v21 = OUTLINED_FUNCTION_7_24();
LABEL_13:
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v21, v22, v23);
      return v41;
    case 6u:
    case 7u:
    case 8u:
    case 9u:
    case 0xAu:
      return Dictionary.init(dictionaryLiteral:)();
    default:
      v24 = *v0;
      v25 = *(v0 + 8);
      v26 = Dictionary.init(dictionaryLiteral:)();
      v44 = &type metadata for String;
      OUTLINED_FUNCTION_8_31();
      swift_isUniquelyReferenced_nonNull_native();
      v41 = v26;
      v21 = OUTLINED_FUNCTION_7_24();
      v23 = 0xE900000000000064;
      goto LABEL_13;
  }
}

uint64_t specialized _dictionaryUpCast<A, B, C, D>(_:)(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys11AnyHashableVypGMd, &_ss18_DictionaryStorageCys11AnyHashableVypGMR);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = (v2 + 8);

  v9 = 0;
  if (!v5)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_12:
    v11 = __clz(__rbit64(v5)) | (v9 << 6);
    v12 = (*(a1 + 48) + 16 * v11);
    v14 = *v12;
    v13 = v12[1];
    outlined init with copy of Any(*(a1 + 56) + 32 * v11, v35);
    *&v34 = v14;
    *(&v34 + 1) = v13;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    outlined init with take of Any(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    outlined init with take of Any(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    outlined init with take of Any(v31, v32);
    result = AnyHashable._rawHashValue(seed:)(v2[5]);
    v15 = -1 << *(v2 + 32);
    v16 = result & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*&v7[8 * (v16 >> 6)]) == 0)
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
        v22 = *&v7[8 * v17];
        if (v22 != -1)
        {
          v18 = __clz(__rbit64(~v22)) + (v17 << 6);
          goto LABEL_21;
        }
      }

      goto LABEL_25;
    }

    v18 = __clz(__rbit64((-1 << v16) & ~*&v7[8 * (v16 >> 6)])) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    v5 &= v5 - 1;
    *&v7[(v18 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v18;
    v23 = v2[6] + 40 * v18;
    *v23 = v24;
    *(v23 + 16) = v25;
    *(v23 + 32) = v26;
    result = outlined init with take of Any(v32, (v2[7] + 32 * v18));
    ++v2[2];
  }

  while (v5);
LABEL_8:
  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v10);
    ++v9;
    if (v5)
    {
      v9 = v10;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

uint64_t CommonDirectAction.toDireactInvocation()()
{
  CommonDirectAction.identifier.getter();
  CommonDirectAction.userData.getter();

  return Parse.DirectInvocation.init(identifier:userData:)();
}

uint64_t static CommonDirectAction.parseDisambiguationSelectionPerson(personData:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  objc_allocWithZone(_INPBContact);
  outlined copy of Data._Representation(a1, a2);
  v6 = @nonobjc _SFPBCard.init(data:)(a1, a2);
  if (v6)
  {
    v7 = v6;
    v8 = INIntentSlotValueTransformFromContact();
    if (v8)
    {
      v9 = v8;
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
        _os_log_impl(&dword_0, v11, v12, "#CommonDirectAction parsed personData", v13, 2u);
      }

      *a3 = v9;
      v14 = type metadata accessor for CommonDirectAction();
      swift_storeEnumTagMultiPayload();
      v15 = a3;
      v16 = 0;
      v17 = v14;
      goto LABEL_14;
    }
  }

  if (one-time initialization token for siriPhone != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  __swift_project_value_buffer(v18, static Logger.siriPhone);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_0, v19, v20, "Couldn't deserialized INPerson from data.", v21, 2u);
  }

  v17 = type metadata accessor for CommonDirectAction();
  v15 = a3;
  v16 = 1;
LABEL_14:

  return __swift_storeEnumTagSinglePayload(v15, v16, 1, v17);
}

void static CommonDirectAction.__derived_enum_equals(_:_:)(uint64_t a1, uint64_t a2)
{
  v58 = a2;
  v3 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v4 = OUTLINED_FUNCTION_7(v3);
  v56 = v5;
  v57 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v4);
  OUTLINED_FUNCTION_4();
  v55 = v9 - v8;
  v10 = type metadata accessor for CommonDirectAction();
  v11 = OUTLINED_FUNCTION_23_1(v10);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = (&v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v16);
  v18 = &v55 - v17;
  __chkstk_darwin(v19);
  v21 = (&v55 - v20);
  __chkstk_darwin(v22);
  v24 = (&v55 - v23);
  __chkstk_darwin(v25);
  v27 = (&v55 - v26);
  __chkstk_darwin(v28);
  v30 = (&v55 - v29);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin18CommonDirectActionO_ACtMd, &_s27PhoneCallFlowDelegatePlugin18CommonDirectActionO_ACtMR);
  v32 = *(*(v31 - 8) + 64);
  __chkstk_darwin(v31 - 8);
  v34 = &v55 - v33;
  v36 = (&v55 + *(v35 + 56) - v33);
  outlined init with copy of CommonDirectAction(a1, &v55 - v33);
  outlined init with copy of CommonDirectAction(v58, v36);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      outlined init with copy of CommonDirectAction(v34, v27);
      v47 = *v27;
      OUTLINED_FUNCTION_5_30();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v48 = *v36;
        type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for NSObject, NSObject_ptr);
        static NSObject.== infix(_:_:)();

        goto LABEL_40;
      }

      goto LABEL_37;
    case 2u:
      outlined init with copy of CommonDirectAction(v34, v24);
      OUTLINED_FUNCTION_5_30();
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        goto LABEL_37;
      }

      v44 = *v24;
      v45 = *v36;
      goto LABEL_40;
    case 3u:
      outlined init with copy of CommonDirectAction(v34, v21);
      v38 = *v21;
      v37 = v21[1];
      OUTLINED_FUNCTION_5_30();
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        goto LABEL_11;
      }

      goto LABEL_28;
    case 4u:
      outlined init with copy of CommonDirectAction(v34, v18);
      OUTLINED_FUNCTION_5_30();
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        v40 = v55;
        v39 = v56;
        v41 = v36;
        v42 = v57;
        (*(v56 + 32))(v55, v41, v57);
        static Siri_Nlu_External_UserDialogAct.== infix(_:_:)();
        v43 = *(v39 + 8);
        v43(v40, v42);
        v43(v18, v42);
        goto LABEL_40;
      }

      (*(v56 + 8))(v18, v57);
      goto LABEL_37;
    case 5u:
      outlined init with copy of CommonDirectAction(v34, v15);
      v50 = *v15;
      v49 = v15[1];
      OUTLINED_FUNCTION_5_30();
      if (swift_getEnumCaseMultiPayload() != 5)
      {
        goto LABEL_28;
      }

      v51 = v36[1];
      if (!v49)
      {
        if (!v51)
        {
          goto LABEL_40;
        }

        v54 = v36[1];
        goto LABEL_39;
      }

      if (!v51)
      {
        goto LABEL_39;
      }

      if (v50 == *v36 && v49 == v51)
      {

        goto LABEL_39;
      }

      goto LABEL_15;
    case 6u:
      OUTLINED_FUNCTION_5_30();
      if (swift_getEnumCaseMultiPayload() == 6)
      {
        goto LABEL_40;
      }

      goto LABEL_37;
    case 7u:
      OUTLINED_FUNCTION_5_30();
      if (swift_getEnumCaseMultiPayload() == 7)
      {
        goto LABEL_40;
      }

      goto LABEL_37;
    case 8u:
      OUTLINED_FUNCTION_5_30();
      if (swift_getEnumCaseMultiPayload() == 8)
      {
        goto LABEL_40;
      }

      goto LABEL_37;
    case 9u:
      OUTLINED_FUNCTION_5_30();
      if (swift_getEnumCaseMultiPayload() == 9)
      {
        goto LABEL_40;
      }

      goto LABEL_37;
    case 0xAu:
      OUTLINED_FUNCTION_5_30();
      if (swift_getEnumCaseMultiPayload() == 10)
      {
        goto LABEL_40;
      }

      goto LABEL_37;
    default:
      outlined init with copy of CommonDirectAction(v34, v30);
      v38 = *v30;
      v37 = v30[1];
      OUTLINED_FUNCTION_5_30();
      if (swift_getEnumCaseMultiPayload())
      {
LABEL_28:

LABEL_37:
        outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v34, &_s27PhoneCallFlowDelegatePlugin18CommonDirectActionO_ACtMd, &_s27PhoneCallFlowDelegatePlugin18CommonDirectActionO_ACtMR);
      }

      else
      {
LABEL_11:
        if (v38 == *v36 && v37 == v36[1])
        {
          v53 = v36[1];

LABEL_39:
        }

        else
        {
LABEL_15:
          OUTLINED_FUNCTION_11_25();
        }

LABEL_40:
        outlined destroy of CommonDirectAction(v34);
      }

      OUTLINED_FUNCTION_65();
      return;
  }
}

void outlined bridged method (mbnn) of @objc SKIDirectInvocationPayload.userData.setter(uint64_t a1, void *a2)
{
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [a2 setUserData:isa];
}

uint64_t type metadata accessor for CommonDirectAction()
{
  result = type metadata singleton initialization cache for CommonDirectAction;
  if (!type metadata singleton initialization cache for CommonDirectAction)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Siri_Nlu_External_UserDialogAct and conformance Siri_Nlu_External_UserDialogAct()
{
  result = lazy protocol witness table cache variable for type Siri_Nlu_External_UserDialogAct and conformance Siri_Nlu_External_UserDialogAct;
  if (!lazy protocol witness table cache variable for type Siri_Nlu_External_UserDialogAct and conformance Siri_Nlu_External_UserDialogAct)
  {
    type metadata accessor for Siri_Nlu_External_UserDialogAct();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Siri_Nlu_External_UserDialogAct and conformance Siri_Nlu_External_UserDialogAct);
  }

  return result;
}

void type metadata completion function for CommonDirectAction()
{
  type metadata accessor for (contactId: String)();
  if (v0 <= 0x3F)
  {
    type metadata accessor for (person: INPerson)();
    if (v1 <= 0x3F)
    {
      type metadata accessor for (index: Int)();
      if (v2 <= 0x3F)
      {
        type metadata accessor for (appId: String)();
        if (v3 <= 0x3F)
        {
          type metadata accessor for (contactName: String?)(319, &lazy cache variable for type metadata for (userDialogAct: Siri_Nlu_External_UserDialogAct), &type metadata accessor for Siri_Nlu_External_UserDialogAct);
          if (v4 <= 0x3F)
          {
            type metadata accessor for (contactName: String?)(319, &lazy cache variable for type metadata for (contactName: String?), type metadata accessor for String?);
            if (v5 <= 0x3F)
            {
              swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void *type metadata accessor for (contactId: String)()
{
  result = lazy cache variable for type metadata for (contactId: String);
  if (!lazy cache variable for type metadata for (contactId: String))
  {
    result = &type metadata for String;
    atomic_store(&type metadata for String, &lazy cache variable for type metadata for (contactId: String));
  }

  return result;
}

void type metadata accessor for (person: INPerson)()
{
  if (!lazy cache variable for type metadata for (person: INPerson))
  {
    v0 = type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INPerson, INPerson_ptr);
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for (person: INPerson));
    }
  }
}

void *type metadata accessor for (index: Int)()
{
  result = lazy cache variable for type metadata for (index: Int);
  if (!lazy cache variable for type metadata for (index: Int))
  {
    result = &type metadata for Int;
    atomic_store(&type metadata for Int, &lazy cache variable for type metadata for (index: Int));
  }

  return result;
}

void *type metadata accessor for (appId: String)()
{
  result = lazy cache variable for type metadata for (appId: String);
  if (!lazy cache variable for type metadata for (appId: String))
  {
    result = &type metadata for String;
    atomic_store(&type metadata for String, &lazy cache variable for type metadata for (appId: String));
  }

  return result;
}

void type metadata accessor for (contactName: String?)(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
{
  if (!*a2)
  {
    v4 = a3(0);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void type metadata accessor for String?()
{
  if (!lazy cache variable for type metadata for String?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for String?);
    }
  }
}

uint64_t static CommonOutputs.genericError(sharedGlobals:startCallCATsSimple:)(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for DialogPhase();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  OUTLINED_FUNCTION_0_41();
  type metadata accessor for SirikitDeviceState();
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v7 = OUTLINED_FUNCTION_1_53();
  v8(v7);
  v9 = SirikitDeviceState.__allocating_init(from:)();
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = v9;

  static DialogPhase.error.getter();
  outlined init with copy of SignalProviding(a1, v15);
  v11 = type metadata accessor for DialogOutputFactory();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  return OUTLINED_FUNCTION_5_31();
}

uint64_t static CommonOutputs.promptCancelled(sharedGlobals:phoneCallCommonCATsSimple:)(uint64_t a1)
{
  v2 = type metadata accessor for DialogPhase();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);

  static DialogPhase.canceled.getter();
  outlined init with copy of SignalProviding(a1, v8);
  v4 = type metadata accessor for DialogOutputFactory();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  return DialogOutputFactory.init(dialog:dialogPhase:sharedGlobals:)();
}

uint64_t static CommonOutputs.conversionError(sharedGlobals:parse:startCallCATsSimple:)(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DialogPhase();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  OUTLINED_FUNCTION_0_41();
  v8 = type metadata accessor for PhoneError();
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8);
  v12 = &v25[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  __chkstk_darwin(v10);
  v14 = &v25[-v13 - 8];
  outlined init with copy of Parse?(a2, v12);
  swift_storeEnumTagMultiPayload();
  PhoneError.logged()(v14);
  outlined destroy of PhoneError(v12);
  outlined destroy of PhoneError(v14);
  type metadata accessor for SirikitDeviceState();
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v16 = OUTLINED_FUNCTION_1_53();
  v17(v16);
  v18 = SirikitDeviceState.__allocating_init(from:)();
  v19 = swift_allocObject();
  *(v19 + 16) = a3;
  *(v19 + 24) = v18;

  static DialogPhase.error.getter();
  outlined init with copy of SignalProviding(a1, v25);
  v20 = type metadata accessor for DialogOutputFactory();
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  swift_allocObject();
  return OUTLINED_FUNCTION_5_31();
}

uint64_t closure #1 in static CommonOutputs.genericError(sharedGlobals:startCallCATsSimple:)(void *a1, uint64_t a2)
{
  v7 = (*a1 + class metadata base offset for StartCallCATsSimple + 480);
  v8 = (*v7 + **v7);
  v4 = (*v7)[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = closure #1 in static CommonOutputs.genericError(sharedGlobals:startCallCATsSimple:);

  return v8(a2);
}

uint64_t closure #1 in static CommonOutputs.genericError(sharedGlobals:startCallCATsSimple:)()
{
  OUTLINED_FUNCTION_15();
  v3 = v2;
  v4 = *(*v1 + 16);
  v8 = *v1;

  v6 = *(v8 + 8);
  if (!v0)
  {
    v5 = v3;
  }

  return v6(v5);
}

uint64_t partial apply for closure #1 in static CommonOutputs.genericError(sharedGlobals:startCallCATsSimple:)()
{
  OUTLINED_FUNCTION_15();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_15_2(v3);
  *v4 = v5;
  OUTLINED_FUNCTION_12_4(v4);

  return closure #1 in static CommonOutputs.genericError(sharedGlobals:startCallCATsSimple:)(v1, v2);
}

{
  OUTLINED_FUNCTION_15();
  v2 = v1;
  v3 = *(*v0 + 16);
  v6 = *v0;

  v4 = *(v6 + 8);

  return v4(v2);
}

uint64_t closure #1 in static CommonOutputs.conversionError(sharedGlobals:parse:startCallCATsSimple:)(void *a1, uint64_t a2)
{
  v7 = (*a1 + class metadata base offset for StartCallCATsSimple + 624);
  v8 = (*v7 + **v7);
  v4 = (*v7)[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = closure #1 in static CommonOutputs.conversionError(sharedGlobals:parse:startCallCATsSimple:);

  return v8(a2);
}

uint64_t closure #1 in static CommonOutputs.promptCancelled(sharedGlobals:phoneCallCommonCATsSimple:)(void *a1)
{
  v1 = *(*a1 + class metadata base offset for PhoneCallCommonCATsSimple + 48);
  v7 = (v1 + *v1);
  v2 = v1[1];
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_15_2(v3);
  *v4 = v5;
  OUTLINED_FUNCTION_12_4(v4);

  return v7();
}

uint64_t outlined init with copy of Parse?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5ParseOSgMd, &_s11SiriKitFlow5ParseOSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroyTm_4()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t partial apply for closure #1 in static CommonOutputs.conversionError(sharedGlobals:parse:startCallCATsSimple:)()
{
  OUTLINED_FUNCTION_15();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_15_2(v3);
  *v4 = v5;
  OUTLINED_FUNCTION_12_4(v4);

  return closure #1 in static CommonOutputs.conversionError(sharedGlobals:parse:startCallCATsSimple:)(v1, v2);
}

void *AppSelectionDependentKeys.messageSendKey.unsafeMutableAddressor()
{
  if (one-time initialization token for messageSendKey != -1)
  {
    swift_once();
  }

  return &static AppSelectionDependentKeys.messageSendKey;
}

void *AppSelectionDependentKeys.messageUsingSiriKey.unsafeMutableAddressor()
{
  if (one-time initialization token for messageUsingSiriKey != -1)
  {
    swift_once();
  }

  return &static AppSelectionDependentKeys.messageUsingSiriKey;
}

void *AppSelectionDependentKeys.messageReceivedKey.unsafeMutableAddressor()
{
  if (one-time initialization token for messageReceivedKey != -1)
  {
    swift_once();
  }

  return &static AppSelectionDependentKeys.messageReceivedKey;
}

void *AppSelectionDependentKeys.phoneCallKey.unsafeMutableAddressor()
{
  if (one-time initialization token for phoneCallKey != -1)
  {
    swift_once();
  }

  return &static AppSelectionDependentKeys.phoneCallKey;
}

void *AppSelectionDependentKeys.phoneCallSiriKey.unsafeMutableAddressor()
{
  if (one-time initialization token for phoneCallSiriKey != -1)
  {
    swift_once();
  }

  return &static AppSelectionDependentKeys.phoneCallSiriKey;
}

uint64_t one-time initialization function for messageSendKey(uint64_t a1, unsigned int *a2, uint64_t *a3, void *a4)
{
  v7 = type metadata accessor for DomainUseCase();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 104))(v11, *a2, v7);
  v12 = DomainUseCase.rawValue.getter();
  v14 = v13;
  (*(v8 + 8))(v11, v7);
  v18 = v12;
  v19 = v14;

  v15._object = 0x8000000000459DF0;
  v15._countAndFlagsBits = 0xD000000000000011;
  String.append(_:)(v15);

  v17 = v19;
  *a3 = v18;
  *a4 = v17;
  return result;
}

void *AppSelectionDependentKeys.phoneCallReceivedKey.unsafeMutableAddressor()
{
  if (one-time initialization token for phoneCallReceivedKey != -1)
  {
    swift_once();
  }

  return &static AppSelectionDependentKeys.phoneCallReceivedKey;
}

uint64_t static AppSelectionDependentKeys.messageSendKey.getter(void *a1, uint64_t *a2, uint64_t *a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = *a2;
  v6 = *a3;

  return v5;
}

__int128 *CommsAppSelectionAppIndependentSignalsKeys.userPersonaKey.unsafeMutableAddressor()
{
  if (one-time initialization token for userPersonaKey != -1)
  {
    OUTLINED_FUNCTION_0_43();
  }

  return &static CommsAppSelectionAppIndependentSignalsKeys.userPersonaKey;
}

uint64_t one-time initialization function for userPersonaKey()
{
  v0 = type metadata accessor for DomainUseCase();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, enum case for DomainUseCase.phoneCall(_:), v0);
  v5 = DomainUseCase.rawValue.getter();
  v7 = v6;
  (*(v1 + 8))(v4, v0);
  v16 = v5;
  v17 = v7;

  v8._countAndFlagsBits = 46;
  v8._object = 0xE100000000000000;
  String.append(_:)(v8);

  v10 = v16;
  v9 = v17;
  v11 = static DomainUserPersonaSignal.signalName.getter();
  v13 = v12;
  v16 = v10;
  v17 = v9;

  v14._countAndFlagsBits = v11;
  v14._object = v13;
  String.append(_:)(v14);

  static CommsAppSelectionAppIndependentSignalsKeys.userPersonaKey = v16;
  *algn_599908 = v17;
  return result;
}

uint64_t static CommsAppSelectionAppIndependentSignalsKeys.userPersonaKey.getter()
{
  if (one-time initialization token for userPersonaKey != -1)
  {
    OUTLINED_FUNCTION_0_43();
  }

  v0 = static CommsAppSelectionAppIndependentSignalsKeys.userPersonaKey;

  return v0;
}

uint64_t CommunalDeviceEmergencyFlow.identifiedUser.getter(uint64_t *a1, uint64_t *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  swift_getKeyPath();
  swift_getKeyPath();

  static SiriEnvironmentValue.subscript.getter();
}

uint64_t CommunalDeviceEmergencyFlow.parse.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin27CommunalDeviceEmergencyFlow_parse;
  v4 = type metadata accessor for Parse();
  v5 = OUTLINED_FUNCTION_23_1(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

void CommunalDeviceEmergencyFlow.state.didset()
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
    v11 = v5;
    *v4 = 136315138;
    v6 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin27CommunalDeviceEmergencyFlow_state;
    swift_beginAccess();
    v7 = CommunalDeviceEmergencyFlow.State.description.getter(*(v1 + v6));
    v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v8, &v11);

    *(v4 + 4) = v9;
    _os_log_impl(&dword_0, oslog, v3, "#CommunalDeviceEmergencyFlow state => %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v5);
  }

  else
  {
  }
}

uint64_t CommunalDeviceEmergencyFlow.state.getter()
{
  v1 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin27CommunalDeviceEmergencyFlow_state;
  swift_beginAccess();
  return *(v0 + v1);
}

void CommunalDeviceEmergencyFlow.state.setter(char a1)
{
  v3 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin27CommunalDeviceEmergencyFlow_state;
  swift_beginAccess();
  *(v1 + v3) = a1;
  CommunalDeviceEmergencyFlow.state.didset();
}

uint64_t CommunalDeviceEmergencyFlow.__allocating_init(parse:sharedGlobals:)(uint64_t a1, uint64_t *a2)
{
  v5 = type metadata accessor for CATOption();
  v6 = OUTLINED_FUNCTION_21(v5);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v9 = type metadata accessor for Parse();
  v10 = OUTLINED_FUNCTION_7(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  __chkstk_darwin(v10);
  v16 = &v21[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  (*(v12 + 16))(v16, a1, v9);
  outlined init with copy of SignalProviding(a2, v21);
  type metadata accessor for UnsupportedFlowCATsSimple();
  static CATOption.defaultMode.getter();
  v17 = CATWrapperSimple.__allocating_init(options:globals:)();
  v18 = (*(v2 + 168))(3, v16, v21, v17);
  __swift_destroy_boxed_opaque_existential_1(a2);
  (*(v12 + 8))(a1, v9);
  return v18;
}

uint64_t CommunalDeviceEmergencyFlow.__allocating_init(state:parse:sharedGlobals:unsupportedFlowCATsSimple:)(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(v4 + 48);
  v10 = *(v4 + 52);
  v11 = swift_allocObject();
  CommunalDeviceEmergencyFlow.init(state:parse:sharedGlobals:unsupportedFlowCATsSimple:)(a1, a2, a3, a4);
  return v11;
}

uint64_t CommunalDeviceEmergencyFlow.init(state:parse:sharedGlobals:unsupportedFlowCATsSimple:)(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  swift_getKeyPath();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities0A16EnvironmentValueCy0A7KitFlow14IdentifiedUserVGMd, &_s13SiriUtilities0A16EnvironmentValueCy0A7KitFlow14IdentifiedUserVGMR);
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  OUTLINED_FUNCTION_90();
  *(v4 + 16) = SiriEnvironmentValue.init(_:)();
  swift_getKeyPath();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities0A16EnvironmentValueCy0a4FlowC014MultiUserStateOGMd, &_s13SiriUtilities0A16EnvironmentValueCy0a4FlowC014MultiUserStateOGMR);
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  OUTLINED_FUNCTION_90();
  *(v4 + 24) = SiriEnvironmentValue.init(_:)();
  *(v4 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin27CommunalDeviceEmergencyFlow_state) = a1;
  v16 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin27CommunalDeviceEmergencyFlow_parse;
  v17 = type metadata accessor for Parse();
  OUTLINED_FUNCTION_23_1(v17);
  (*(v18 + 32))(v5 + v16, a2);
  outlined init with take of PhoneCallFeatureFlagProviding(a3, v5 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin27CommunalDeviceEmergencyFlow_sharedGlobals);
  *(v5 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin27CommunalDeviceEmergencyFlow_unsupportedFlowCATsSimple) = a4;
  return v5;
}

BOOL CommunalDeviceEmergencyFlow.on(input:)()
{
  v1 = v0;
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.siriPhone);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_51_0(v4))
  {
    v5 = OUTLINED_FUNCTION_42();
    v6 = OUTLINED_FUNCTION_36();
    v13 = v6;
    *v5 = 136315138;
    *(v5 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x7475706E69286E6FLL, 0xEA0000000000293ALL, &v13);
    OUTLINED_FUNCTION_14_9();
    _os_log_impl(v7, v8, v9, v10, v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    OUTLINED_FUNCTION_35();
    OUTLINED_FUNCTION_26_0();
  }

  return (*(*v1 + 144))() == 3;
}

uint64_t CommunalDeviceEmergencyFlow.execute()()
{
  OUTLINED_FUNCTION_15();
  v1[29] = v2;
  v1[30] = v0;
  v3 = type metadata accessor for CompanionDeviceInfoRequirement();
  v1[31] = v3;
  OUTLINED_FUNCTION_13_2(v3);
  v1[32] = v4;
  v6 = *(v5 + 64);
  v1[33] = OUTLINED_FUNCTION_45();
  v7 = type metadata accessor for ExecuteOnRemoteDeviceSpecification();
  v1[34] = v7;
  OUTLINED_FUNCTION_13_2(v7);
  v1[35] = v8;
  v10 = *(v9 + 64);
  v1[36] = OUTLINED_FUNCTION_45();
  v11 = type metadata accessor for Parse();
  v1[37] = v11;
  OUTLINED_FUNCTION_13_2(v11);
  v1[38] = v12;
  v14 = *(v13 + 64);
  v1[39] = OUTLINED_FUNCTION_45();
  v15 = type metadata accessor for Input();
  v1[40] = v15;
  OUTLINED_FUNCTION_13_2(v15);
  v1[41] = v16;
  v18 = *(v17 + 64);
  v1[42] = OUTLINED_FUNCTION_45();
  v19 = type metadata accessor for IdentifiedUser();
  v1[43] = v19;
  OUTLINED_FUNCTION_13_2(v19);
  v1[44] = v20;
  v22 = *(v21 + 64);
  v1[45] = OUTLINED_FUNCTION_45();
  v23 = type metadata accessor for MultiUserState();
  v1[46] = v23;
  OUTLINED_FUNCTION_21(v23);
  v25 = *(v24 + 64);
  v1[47] = OUTLINED_FUNCTION_45();
  v26 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v26, v27, v28);
}

{
  v74 = v0;
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2();
  }

  v1 = v0[30];
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.siriPhone);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[30];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v73 = swift_slowAlloc();
    *v7 = 136315394;
    *(v7 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x2865747563657865, 0xE900000000000029, &v73);
    *(v7 + 12) = 2080;
    v8 = (*(*v6 + 144))();
    v9 = CommunalDeviceEmergencyFlow.State.description.getter(v8);
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v73);

    *(v7 + 14) = v11;
    _os_log_impl(&dword_0, v3, v4, "#CommunalDeviceEmergencyFlow %s, state = %s", v7, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_26_0();
    OUTLINED_FUNCTION_35();
  }

  else
  {
  }

  v12 = (*(*v0[30] + 144))();
  if (v12 == 4)
  {
    v54 = swift_task_alloc();
    v0[48] = v54;
    *v54 = v0;
    v54[1] = CommunalDeviceEmergencyFlow.execute();

    return CommunalDeviceEmergencyFlow.makePostDialogCommands()();
  }

  else
  {
    if (v12 == 3)
    {
      v13 = v0[30];

      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v14, v15))
      {
        v16 = v0[47];
        v67 = v0[46];
        v17 = v0[30];
        v18 = OUTLINED_FUNCTION_42();
        v70 = OUTLINED_FUNCTION_36();
        v73 = v70;
        *v18 = 136315138;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities0A16EnvironmentValueCy0a4FlowC014MultiUserStateOGMd, &_s13SiriUtilities0A16EnvironmentValueCy0a4FlowC014MultiUserStateOGMR);
        swift_getKeyPath();
        swift_getKeyPath();
        v0[28] = v17;

        static SiriEnvironmentValue.subscript.getter();

        v19 = String.init<A>(describing:)();
        v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v20, &v73);

        *(v18 + 4) = v21;
        _os_log_impl(&dword_0, v14, v15, "#CommunalDeviceEmergencyFlow MUXState = %s", v18, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v70);
        OUTLINED_FUNCTION_26_0();
        OUTLINED_FUNCTION_26_0();
      }

      v22 = v0[30];

      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v23, v24))
      {
        v25 = v0[44];
        v26 = v0[45];
        v68 = v0[43];
        v27 = v0[30];
        v28 = OUTLINED_FUNCTION_42();
        v71 = OUTLINED_FUNCTION_36();
        v73 = v71;
        *v28 = 136315138;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities0A16EnvironmentValueCy0A7KitFlow14IdentifiedUserVGMd, &_s13SiriUtilities0A16EnvironmentValueCy0A7KitFlow14IdentifiedUserVGMR);
        swift_getKeyPath();
        swift_getKeyPath();
        v0[27] = v27;

        static SiriEnvironmentValue.subscript.getter();

        lazy protocol witness table accessor for type IdentifiedUser and conformance IdentifiedUser(&lazy protocol witness table cache variable for type IdentifiedUser and conformance IdentifiedUser, &type metadata accessor for IdentifiedUser);
        v29 = dispatch thunk of CustomStringConvertible.description.getter();
        v31 = v30;
        (*(v25 + 8))(v26, v68);
        v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v31, &v73);

        *(v28 + 4) = v32;
        _os_log_impl(&dword_0, v23, v24, "#CommunalDeviceEmergencyFlow User = %s", v28, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v71);
        OUTLINED_FUNCTION_26_0();
        OUTLINED_FUNCTION_35();
      }

      v33 = v0[39];
      v60 = v0[41];
      v61 = v0[40];
      v34 = v0[38];
      v36 = v0[35];
      v35 = v0[36];
      v58 = v0[42];
      v59 = v0[34];
      v64 = v0[33];
      v65 = v0[37];
      v62 = v0[32];
      v63 = v0[31];
      v69 = v0[30];
      v72 = v0[29];
      v37 = (v69 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin27CommunalDeviceEmergencyFlow_sharedGlobals);
      v38 = *(v69 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin27CommunalDeviceEmergencyFlow_sharedGlobals + 24);
      v39 = *(v69 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin27CommunalDeviceEmergencyFlow_sharedGlobals + 32);
      __swift_project_boxed_opaque_existential_1((v69 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin27CommunalDeviceEmergencyFlow_sharedGlobals), v38);
      (*(v39 + 104))(v38, v39);
      v40 = v0[16];
      v41 = v0[17];
      __swift_project_boxed_opaque_existential_1(v0 + 13, v40);
      (*(v34 + 16))(v33, v69 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin27CommunalDeviceEmergencyFlow_parse, v65);
      Input.init(parse:)();
      (*(v36 + 104))(v35, enum case for ExecuteOnRemoteDeviceSpecification.userCompanion(_:), v59);
      v66 = (*(v41 + 96))(v58, v35, v37, v40, v41);
      (*(v36 + 8))(v35, v59);
      (*(v60 + 8))(v58, v61);
      v0[24] = v66;
      v42 = v37[3];
      v43 = v37[4];
      __swift_project_boxed_opaque_existential_1(v37, v42);
      (*(v43 + 104))(v42, v43);
      v44 = v0[21];
      v45 = v0[22];
      __swift_project_boxed_opaque_existential_1(v0 + 18, v44);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11SiriKitFlow06CommonF5GuardVGMd, &_ss23_ContiguousArrayStorageCy11SiriKitFlow06CommonF5GuardVGMR);
      v46 = type metadata accessor for CommonFlowGuard();
      OUTLINED_FUNCTION_13_2(v46);
      v48 = *(v47 + 72);
      v50 = (*(v49 + 80) + 32) & ~*(v49 + 80);
      v51 = swift_allocObject();
      *(v51 + 16) = xmmword_424FD0;
      type metadata accessor for CompanionCompatibilityCheckFlowStrategy();
      (*(v62 + 104))(v64, enum case for CompanionDeviceInfoRequirement.anyKnownCompanion(_:), v63);
      static CompanionCompatibilityCheckFlowStrategy.require(_:redirectToServerOnFailure:)();
      (*(v62 + 8))(v64, v63);
      static CommonFlowGuard.ensuringUserHasSupportedCompanion(using:)();

      v52 = (*(v45 + 104))(v51, v44, v45);

      v0[25] = v52;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow08AnyValueC0CyAA015ExecuteOnRemoteC6ResultOGMd, &_s11SiriKitFlow08AnyValueC0CyAA015ExecuteOnRemoteC6ResultOGMR);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow08AnyValueC0CyAA05GuardC6ResultOGMd, &_s11SiriKitFlow08AnyValueC0CyAA05GuardC6ResultOGMR);
      lazy protocol witness table accessor for type AnyValueFlow<ExecuteOnRemoteFlowResult> and conformance AnyValueFlow<A>(&lazy protocol witness table cache variable for type AnyValueFlow<ExecuteOnRemoteFlowResult> and conformance AnyValueFlow<A>, &_s11SiriKitFlow08AnyValueC0CyAA015ExecuteOnRemoteC6ResultOGMd, &_s11SiriKitFlow08AnyValueC0CyAA015ExecuteOnRemoteC6ResultOGMR);
      lazy protocol witness table accessor for type AnyValueFlow<ExecuteOnRemoteFlowResult> and conformance AnyValueFlow<A>(&lazy protocol witness table cache variable for type AnyValueFlow<GuardFlowResult> and conformance AnyValueFlow<A>, &_s11SiriKitFlow08AnyValueC0CyAA05GuardC6ResultOGMd, &_s11SiriKitFlow08AnyValueC0CyAA05GuardC6ResultOGMR);
      v53 = Flow.guarded<A>(by:)();

      __swift_destroy_boxed_opaque_existential_1(v0 + 18);
      __swift_destroy_boxed_opaque_existential_1(v0 + 13);
      v0[26] = v53;

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow011ConditionalC0CyAA015ExecuteOnRemoteC6ResultOGMd, &_s11SiriKitFlow011ConditionalC0CyAA015ExecuteOnRemoteC6ResultOGMR);
      lazy protocol witness table accessor for type AnyValueFlow<ExecuteOnRemoteFlowResult> and conformance AnyValueFlow<A>(&lazy protocol witness table cache variable for type ConditionalFlow<ExecuteOnRemoteFlowResult> and conformance ConditionalFlow<A>, &_s11SiriKitFlow011ConditionalC0CyAA015ExecuteOnRemoteC6ResultOGMd, &_s11SiriKitFlow011ConditionalC0CyAA015ExecuteOnRemoteC6ResultOGMR);
      static ExecuteResponse.ongoing<A>(next:childCompletion:)();
    }

    else
    {
      v56 = v0[29];
      static ExecuteResponse.complete()();
    }

    OUTLINED_FUNCTION_13_21();

    OUTLINED_FUNCTION_11();

    return v57();
  }
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  v2 = v1;
  v3 = *(v1 + 384);
  v9 = *v0;
  *(v2 + 392) = v4;

  v5 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v5, v6, v7);
}

{
  v1 = v0[49];
  v2 = v0[29];
  v3 = v0[30];
  v4 = *(v3 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin27CommunalDeviceEmergencyFlow_sharedGlobals + 24);
  v5 = *(v3 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin27CommunalDeviceEmergencyFlow_sharedGlobals + 32);
  __swift_project_boxed_opaque_existential_1((v3 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin27CommunalDeviceEmergencyFlow_sharedGlobals), v4);
  (*(v5 + 16))(v4, v5);
  v6 = v0[5];
  v7 = v0[7];
  v8 = __swift_project_boxed_opaque_existential_1(v0 + 2, v6);
  v0[11] = v6;
  v0[12] = v7;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 8);
  (*(*(v6 - 8) + 16))(boxed_opaque_existential_1, v8, v6);
  v10 = swift_allocObject();
  *(v10 + 16) = v3;
  *(v10 + 24) = v1;
  v11 = type metadata accessor for SimpleOutputFlowAsync();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();

  v14 = SimpleOutputFlowAsync.init(outputPublisher:outputGenerator:)();
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v0[23] = v14;
  static ExecuteResponse.complete<A>(next:)();

  OUTLINED_FUNCTION_13_21();

  OUTLINED_FUNCTION_11();

  return v15();
}

uint64_t closure #1 in CommunalDeviceEmergencyFlow.execute()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  v4 = *(*(type metadata accessor for DialogPhase() - 8) + 64) + 15;
  v3[10] = swift_task_alloc();
  v5 = type metadata accessor for OutputGenerationManifest();
  v3[11] = v5;
  v6 = *(v5 - 8);
  v3[12] = v6;
  v7 = *(v6 + 64) + 15;
  v3[13] = swift_task_alloc();

  return _swift_task_switch(closure #1 in CommunalDeviceEmergencyFlow.execute(), 0, 0);
}

uint64_t closure #1 in CommunalDeviceEmergencyFlow.execute()()
{
  OUTLINED_FUNCTION_27();
  v1 = *(**(*(v0 + 64) + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin27CommunalDeviceEmergencyFlow_unsupportedFlowCATsSimple) + class metadata base offset for UnsupportedFlowCATsSimple + 48);
  v5 = (v1 + *v1);
  v2 = v1[1];
  v3 = swift_task_alloc();
  *(v0 + 112) = v3;
  *v3 = v0;
  v3[1] = closure #1 in CommunalDeviceEmergencyFlow.execute();

  return v5();
}

{
  OUTLINED_FUNCTION_27();
  v3 = v2;
  OUTLINED_FUNCTION_28();
  v5 = v4;
  v6 = v4[14];
  v7 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v8 = v7;

  if (v0)
  {
    v9 = v5[13];
    v10 = v5[10];

    v11 = *(v7 + 8);

    return v11();
  }

  else
  {
    v5[15] = v3;

    return _swift_task_switch(closure #1 in CommunalDeviceEmergencyFlow.execute(), 0, 0);
  }
}

{
  v1 = v0[15];
  v2 = v0[13];
  v4 = v0[9];
  v3 = v0[10];
  v5 = v0[8];
  static DialogPhase.completion.getter();
  *(swift_task_alloc() + 16) = v4;
  OutputGenerationManifest.init(dialogPhase:_:)();

  v6 = *(v5 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin27CommunalDeviceEmergencyFlow_sharedGlobals + 24);
  v7 = *(v5 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin27CommunalDeviceEmergencyFlow_sharedGlobals + 32);
  __swift_project_boxed_opaque_existential_1((v5 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin27CommunalDeviceEmergencyFlow_sharedGlobals), v6);
  (*(v7 + 136))(v6, v7);
  v8 = v0[5];
  v9 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v10 = swift_allocObject();
  v0[16] = v10;
  *(v10 + 16) = xmmword_426260;
  *(v10 + 32) = v1;
  v11 = *(v9 + 8);
  v12 = async function pointer to dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)[1];
  v13 = v1;
  v14 = swift_task_alloc();
  v0[17] = v14;
  *v14 = v0;
  v14[1] = closure #1 in CommunalDeviceEmergencyFlow.execute();
  v15 = v0[13];
  v16 = v0[7];

  return dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)(v16, v10, v15, v8, v11);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  v2 = *(v1 + 136);
  v3 = *(v1 + 128);
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
  v4 = *(v0 + 80);
  v3 = *(v0 + 88);

  (*(v2 + 8))(v1, v3);
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  OUTLINED_FUNCTION_11();

  return v5();
}

uint64_t closure #1 in closure #1 in CommunalDeviceEmergencyFlow.execute()()
{
  OutputGenerationManifest.listenAfterSpeaking.setter();
  OutputGenerationManifest.canUseServerTTS.setter();

  return OutputGenerationManifest.additionalCommands.setter();
}

uint64_t CommunalDeviceEmergencyFlow.execute(completion:)()
{
  type metadata accessor for CommunalDeviceEmergencyFlow();
  lazy protocol witness table accessor for type IdentifiedUser and conformance IdentifiedUser(&lazy protocol witness table cache variable for type CommunalDeviceEmergencyFlow and conformance CommunalDeviceEmergencyFlow, type metadata accessor for CommunalDeviceEmergencyFlow);
  return Flow.deferToExecuteAsync(_:)();
}

void CommunalDeviceEmergencyFlow.onExecuteOnRemoteFlowComplete(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for ExecuteOnRemoteFlowResult();
  v5 = OUTLINED_FUNCTION_7(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v5);
  v12 = (&v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = __chkstk_darwin(v10);
  v15 = &v55 - v14;
  __chkstk_darwin(v13);
  v17 = &v55 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow011ConditionalC6ResultOyAA015ExecuteOnRemotecE0OGMd, &_s11SiriKitFlow011ConditionalC6ResultOyAA015ExecuteOnRemotecE0OGMR);
  v19 = OUTLINED_FUNCTION_21(v18);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19);
  v23 = &v55 - v22;
  outlined init with copy of ConditionalFlowResult<ExecuteOnRemoteFlowResult>(a1, &v55 - v22);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow015ExecuteOnRemoteC6ResultO6result_tMd, &_s11SiriKitFlow015ExecuteOnRemoteC6ResultO6result_tMR);
  if (__swift_getEnumTagSinglePayload(v23, 1, v24) == 1)
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2();
    }

    v25 = type metadata accessor for Logger();
    __swift_project_value_buffer(v25, static Logger.siriPhone);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_51_0(v27))
    {
      *OUTLINED_FUNCTION_65_0() = 0;
      OUTLINED_FUNCTION_14_9();
      _os_log_impl(v28, v29, v30, v31, v32, 2u);
      OUTLINED_FUNCTION_26_0();
    }

    v33 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin27CommunalDeviceEmergencyFlow_state;
    OUTLINED_FUNCTION_8_32();
    *(v2 + v33) = 4;
LABEL_13:
    CommunalDeviceEmergencyFlow.state.didset();
    return;
  }

  if ((*(v7 + 88))(v23, v4) == enum case for ExecuteOnRemoteFlowResult.success(_:))
  {
    (*(v7 + 8))(v23, v4);
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2();
    }

    v34 = type metadata accessor for Logger();
    __swift_project_value_buffer(v34, static Logger.siriPhone);
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_51_0(v36))
    {
      *OUTLINED_FUNCTION_65_0() = 0;
      OUTLINED_FUNCTION_14_9();
      _os_log_impl(v37, v38, v39, v40, v41, 2u);
      OUTLINED_FUNCTION_26_0();
    }

    v42 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin27CommunalDeviceEmergencyFlow_state;
    OUTLINED_FUNCTION_8_32();
    *(v2 + v42) = 1;
    goto LABEL_13;
  }

  (*(v7 + 32))(v17, v23, v4);
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2();
  }

  v43 = type metadata accessor for Logger();
  __swift_project_value_buffer(v43, static Logger.siriPhone);
  v44 = *(v7 + 16);
  v44(v15, v17, v4);
  v45 = Logger.logObject.getter();
  v46 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v45, v46))
  {
    v47 = OUTLINED_FUNCTION_42();
    v57 = v46;
    v48 = v47;
    v56 = OUTLINED_FUNCTION_36();
    v58 = v56;
    *v48 = 136315138;
    v44(v12, v15, v4);
    v55 = String.init<A>(describing:)();
    v50 = v49;
    v51 = OUTLINED_FUNCTION_14_23();
    v12(v51);
    v52 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v55, v50, &v58);

    *(v48 + 4) = v52;
    _os_log_impl(&dword_0, v45, v57, "#CommunalDeviceEmergencyFlow Exited ExecuteOnRemoteFlow with result other than success %s", v48, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v56);
    OUTLINED_FUNCTION_35();
    OUTLINED_FUNCTION_26_0();
  }

  else
  {

    v53 = OUTLINED_FUNCTION_14_23();
    v12(v53);
  }

  v54 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin27CommunalDeviceEmergencyFlow_state;
  OUTLINED_FUNCTION_8_32();
  *(v2 + v54) = 4;
  CommunalDeviceEmergencyFlow.state.didset();
  (v12)(v17, v4);
}

uint64_t CommunalDeviceEmergencyFlow.State.description.getter(char a1)
{
  if (a1 == 3)
  {
    return 0x6C616974696E692ELL;
  }

  if (a1 == 4)
  {
    return 0x64656C6961662ELL;
  }

  v2._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v2);

  v3._countAndFlagsBits = 41;
  v3._object = 0xE100000000000000;
  String.append(_:)(v3);
  return 0x74656C706D6F632ELL;
}

BOOL static CommunalDeviceEmergencyFlow.State.__derived_enum_equals(_:_:)(unsigned __int8 a1, unsigned __int8 a2)
{
  if (a1 == 4)
  {
    return a2 == 4;
  }

  if (a1 == 3)
  {
    return a2 == 3;
  }

  if (a2 - 3 < 2)
  {
    return 0;
  }

  return a1 == a2;
}

uint64_t CommunalDeviceEmergencyFlow.makePostDialogCommands()()
{
  OUTLINED_FUNCTION_15();
  v1 = type metadata accessor for CATOption();
  OUTLINED_FUNCTION_21(v1);
  v3 = *(v2 + 64);
  *(v0 + 24) = OUTLINED_FUNCTION_45();
  v4 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v4, v5, v6);
}

{
  OUTLINED_FUNCTION_15();
  v1 = v0[3];
  v0[2] = _swiftEmptyArrayStorage;
  type metadata accessor for UnsupportedFlowCATs();
  static CATOption.defaultMode.getter();
  v2 = CATWrapper.__allocating_init(options:globals:)();
  v0[4] = v2;
  v3 = swift_task_alloc();
  v0[5] = v3;
  *v3 = v0;
  v3[1] = CommunalDeviceEmergencyFlow.makePostDialogCommands();

  return static MyriadEmergencyCallOutputs.myriadEmergencyCallCommand(catFamily:)(v2);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  v3 = v2;
  v4 = v2[5];
  v9 = *v1;
  v3[6] = v5;
  v3[7] = v0;

  if (v0)
  {
    v6 = CommunalDeviceEmergencyFlow.makePostDialogCommands();
  }

  else
  {
    v7 = v3[4];

    v6 = CommunalDeviceEmergencyFlow.makePostDialogCommands();
  }

  return _swift_task_switch(v6, 0, 0);
}

{
  OUTLINED_FUNCTION_27();
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*(&dword_10 + (v0[2] & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v0[2] & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  v1 = v0[6];
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v2 = v0[2];
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Logger.siriPhone);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_51_0(v5))
  {
    *OUTLINED_FUNCTION_65_0() = 0;
    OUTLINED_FUNCTION_15_3(&dword_0, v6, v7, "#CommunalDeviceEmergencyFlow Added MyriadEmergencyCall");
    OUTLINED_FUNCTION_35();
  }

  v8 = v0[3];

  v9 = v0[1];

  return v9(v2);
}

{
  OUTLINED_FUNCTION_27();
  v1 = v0[4];

  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.siriPhone);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();
  v5 = OUTLINED_FUNCTION_51_0(v4);
  v6 = v0[7];
  if (v5)
  {
    *OUTLINED_FUNCTION_65_0() = 0;
    OUTLINED_FUNCTION_15_3(&dword_0, v7, v8, "#CommunalDeviceEmergencyFlow Failure adding MyriadEmergencyCall");
    OUTLINED_FUNCTION_35();
  }

  v9 = v0[3];

  v10 = v0[1];

  return v10(_swiftEmptyArrayStorage);
}

uint64_t CommunalDeviceEmergencyFlow.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin27CommunalDeviceEmergencyFlow_parse;
  v4 = type metadata accessor for Parse();
  OUTLINED_FUNCTION_23_1(v4);
  (*(v5 + 8))(v0 + v3);
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin27CommunalDeviceEmergencyFlow_sharedGlobals));
  v6 = *(v0 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin27CommunalDeviceEmergencyFlow_unsupportedFlowCATsSimple);

  return v0;
}

uint64_t CommunalDeviceEmergencyFlow.__deallocating_deinit()
{
  CommunalDeviceEmergencyFlow.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void (*protocol witness for SiriEnvironmentLocating.siriEnvironment.modify in conformance CommunalDeviceEmergencyFlow(void *a1))(void *a1)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v4 = *v1;
  v3[4] = SiriEnvironmentLocating<>.siriEnvironment.modify();
  return protocol witness for SiriEnvironmentLocating.siriEnvironment.modify in conformance BusinessCompositionFlow;
}

uint64_t protocol witness for Flow.execute() in conformance CommunalDeviceEmergencyFlow(uint64_t a1)
{
  v4 = *(**v1 + 184);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = closure #2 in ActionableCallControlFlow.execute();

  return v8(a1);
}

uint64_t protocol witness for Flow.exitValue.getter in conformance CommunalDeviceEmergencyFlow(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for CommunalDeviceEmergencyFlow();

  return Flow<>.exitValue.getter(v3, a2);
}

uint64_t key path getter for CommunalDeviceEmergencyFlow.identifiedUser : CommunalDeviceEmergencyFlow(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v5 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  swift_getKeyPath();
  swift_getKeyPath();

  static SiriEnvironmentValue.subscript.getter();
}

uint64_t partial apply for closure #1 in CommunalDeviceEmergencyFlow.execute()()
{
  OUTLINED_FUNCTION_27();
  v3 = v2;
  v5 = *(v0 + 16);
  v4 = *(v0 + 24);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = closure #2 in ActionableCallControlFlow.execute();

  return closure #1 in CommunalDeviceEmergencyFlow.execute()(v3, v5, v4);
}

uint64_t lazy protocol witness table accessor for type AnyValueFlow<ExecuteOnRemoteFlowResult> and conformance AnyValueFlow<A>(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    OUTLINED_FUNCTION_90();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t type metadata accessor for CommunalDeviceEmergencyFlow()
{
  result = type metadata singleton initialization cache for CommunalDeviceEmergencyFlow;
  if (!type metadata singleton initialization cache for CommunalDeviceEmergencyFlow)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type IdentifiedUser and conformance IdentifiedUser(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata completion function for CommunalDeviceEmergencyFlow()
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

unsigned __int8 *getEnumTagSinglePayload for CommunalDeviceEmergencyFlow.State(unsigned __int8 *result, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
LABEL_18:
    v6 = *result;
    if (v6 >= 3)
    {
      v7 = v6 - 2;
    }

    else
    {
      v7 = 0;
    }

    if (v7 >= 3)
    {
      return (v7 - 2);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v2 = a2 + 4;
    if (a2 + 4 >= 0xFFFF00)
    {
      v3 = 4;
    }

    else
    {
      v3 = 2;
    }

    if (v2 >> 8 < 0xFF)
    {
      v3 = 1;
    }

    if (v2 >= 0x100)
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }

    switch(v4)
    {
      case 1:
        v5 = result[1];
        if (!result[1])
        {
          goto LABEL_18;
        }

        goto LABEL_16;
      case 2:
        v5 = *(result + 1);
        if (!*(result + 1))
        {
          goto LABEL_18;
        }

        goto LABEL_16;
      case 3:
        __break(1u);
        return result;
      case 4:
        v5 = *(result + 1);
        if (!v5)
        {
          goto LABEL_18;
        }

LABEL_16:
        result = ((*result | (v5 << 8)) - 4);
        break;
      default:
        goto LABEL_18;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CommunalDeviceEmergencyFlow.State(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 4;
  if (a3 + 4 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 >= 0xFC)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if (a2 > 0xFB)
  {
    v7 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    switch(v6)
    {
      case 1:
        result[1] = v7;
        break;
      case 2:
        *(result + 1) = v7;
        break;
      case 3:
LABEL_25:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v7;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v6)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      case 2:
        *(result + 1) = 0;
        goto LABEL_19;
      case 3:
        goto LABEL_25;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      default:
LABEL_19:
        if (a2)
        {
LABEL_20:
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTag for CommunalDeviceEmergencyFlow.State(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 3)
  {
    return v1 - 2;
  }

  else
  {
    return 0;
  }
}

_BYTE *destructiveInjectEnumTag for CommunalDeviceEmergencyFlow.State(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 2;
  }

  return result;
}

uint64_t outlined init with copy of ConditionalFlowResult<ExecuteOnRemoteFlowResult>(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow011ConditionalC6ResultOyAA015ExecuteOnRemotecE0OGMd, &_s11SiriKitFlow011ConditionalC6ResultOyAA015ExecuteOnRemotecE0OGMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t key path setter for CommunalDeviceExecutionFlow.state : CommunalDeviceExecutionFlow(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for CommunalDeviceExecutionFlow.State(0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of CommunalDeviceExecutionFlow.State(a1, v7, type metadata accessor for CommunalDeviceExecutionFlow.State);
  v8 = *a2;
  return CommunalDeviceExecutionFlow.state.setter(v7);
}

void CommunalDeviceExecutionFlow.state.didset()
{
  v1 = v0;
  v2 = type metadata accessor for CommunalDeviceExecutionFlow.State(0);
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
    v10 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin27CommunalDeviceExecutionFlow_state;
    swift_beginAccess();
    outlined init with copy of CommunalDeviceExecutionFlow.State(v1 + v10, v5, type metadata accessor for CommunalDeviceExecutionFlow.State);
    v11 = CommunalDeviceExecutionFlow.State.description.getter();
    v13 = v12;
    outlined destroy of CommunalDeviceExecutionFlow.State(v5, type metadata accessor for CommunalDeviceExecutionFlow.State);
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v13, &v18);

    *(v8 + 4) = v14;
    _os_log_impl(&dword_0, v17, v7, "#CommunalDeviceExecutionFlow state => %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
  }

  else
  {
    v15 = v17;
  }
}

uint64_t CommunalDeviceExecutionFlow.state.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin27CommunalDeviceExecutionFlow_state;
  swift_beginAccess();
  OUTLINED_FUNCTION_4_21();
  return outlined init with copy of CommunalDeviceExecutionFlow.State(v1 + v3, a1, v4);
}

uint64_t CommunalDeviceExecutionFlow.state.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin27CommunalDeviceExecutionFlow_state;
  swift_beginAccess();
  outlined assign with copy of CommunalDeviceExecutionFlow.State(a1, v1 + v3);
  swift_endAccess();
  CommunalDeviceExecutionFlow.state.didset();
  OUTLINED_FUNCTION_2_42();
  return outlined destroy of CommunalDeviceExecutionFlow.State(a1, v4);
}

uint64_t CommunalDeviceExecutionFlow.__allocating_init(parse:sharedGlobals:)(uint64_t a1, uint64_t *a2)
{
  v5 = type metadata accessor for CommunalDeviceExecutionFlow.State(0);
  v6 = OUTLINED_FUNCTION_23_1(v5);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v16[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v11 = type metadata accessor for Parse();
  v12 = *(v11 - 8);
  (*(v12 + 16))(v10, a1, v11);
  swift_storeEnumTagMultiPayload();
  outlined init with copy of SignalProviding(a2, v16);
  v13 = (*(v2 + 120))(v10, v16);
  __swift_destroy_boxed_opaque_existential_1(a2);
  (*(v12 + 8))(a1, v11);
  return v13;
}

uint64_t CommunalDeviceExecutionFlow.__allocating_init(state:sharedGlobals:)(uint64_t a1, __int128 *a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  v7 = swift_allocObject();
  outlined init with take of CommunalDeviceExecutionFlow.State(a1, v7 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin27CommunalDeviceExecutionFlow_state);
  outlined init with take of SPHConversation(a2, v7 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin27CommunalDeviceExecutionFlow_sharedGlobals);
  return v7;
}

uint64_t CommunalDeviceExecutionFlow.init(state:sharedGlobals:)(uint64_t a1, __int128 *a2)
{
  outlined init with take of CommunalDeviceExecutionFlow.State(a1, v2 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin27CommunalDeviceExecutionFlow_state);
  outlined init with take of SPHConversation(a2, v2 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin27CommunalDeviceExecutionFlow_sharedGlobals);
  return v2;
}

uint64_t outlined init with take of CommunalDeviceExecutionFlow.State(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CommunalDeviceExecutionFlow.State(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t CommunalDeviceExecutionFlow.execute(completion:)()
{
  type metadata accessor for CommunalDeviceExecutionFlow(0);
  lazy protocol witness table accessor for type CommunalDeviceExecutionFlow and conformance CommunalDeviceExecutionFlow(&lazy protocol witness table cache variable for type CommunalDeviceExecutionFlow and conformance CommunalDeviceExecutionFlow, type metadata accessor for CommunalDeviceExecutionFlow);
  return Flow.deferToExecuteAsync(_:)();
}

uint64_t CommunalDeviceExecutionFlow.execute()()
{
  OUTLINED_FUNCTION_15();
  v1[54] = v2;
  v1[55] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5ParseOSgMd, &_s11SiriKitFlow5ParseOSgMR);
  OUTLINED_FUNCTION_21(v3);
  v5 = *(v4 + 64);
  v1[56] = OUTLINED_FUNCTION_45();
  v6 = type metadata accessor for CATOption();
  OUTLINED_FUNCTION_21(v6);
  v8 = *(v7 + 64);
  v1[57] = OUTLINED_FUNCTION_45();
  v9 = type metadata accessor for PhoneError();
  v1[58] = v9;
  OUTLINED_FUNCTION_21(v9);
  v11 = *(v10 + 64) + 15;
  v1[59] = swift_task_alloc();
  v1[60] = swift_task_alloc();
  v1[61] = swift_task_alloc();
  v1[62] = swift_task_alloc();
  v12 = type metadata accessor for IdentifiedUser();
  v1[63] = v12;
  OUTLINED_FUNCTION_13_2(v12);
  v1[64] = v13;
  v15 = *(v14 + 64);
  v1[65] = OUTLINED_FUNCTION_45();
  v16 = type metadata accessor for ExecuteResponse();
  v1[66] = v16;
  OUTLINED_FUNCTION_13_2(v16);
  v1[67] = v17;
  v19 = *(v18 + 64);
  v1[68] = OUTLINED_FUNCTION_45();
  v20 = type metadata accessor for CommunalDeviceExecutionFlow.State(0);
  v1[69] = v20;
  OUTLINED_FUNCTION_21(v20);
  v22 = *(v21 + 64) + 15;
  v1[70] = swift_task_alloc();
  v1[71] = swift_task_alloc();
  v23 = type metadata accessor for Parse();
  v1[72] = v23;
  OUTLINED_FUNCTION_13_2(v23);
  v1[73] = v24;
  v26 = *(v25 + 64) + 15;
  v1[74] = swift_task_alloc();
  v1[75] = swift_task_alloc();

  return _swift_task_switch(CommunalDeviceExecutionFlow.execute(), 0, 0);
}

{
  v1 = *(v0 + 552);
  v2 = *(**(v0 + 440) + 96);
  v3 = *(v0 + 568);
  v2();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = *(v0 + 560);
    v5 = *(v0 + 496);
    v140 = *(v0 + 480);
    v6 = *(v0 + 464);
    v7 = *(v0 + 440);
    outlined destroy of CommunalDeviceExecutionFlow.State(*(v0 + 568), type metadata accessor for CommunalDeviceExecutionFlow.State);
    *(v0 + 376) = v7;
    type metadata accessor for CommunalDeviceExecutionFlow(0);

    v8 = String.init<A>(describing:)();
    v10 = v9;
    v2();
    v11 = CommunalDeviceExecutionFlow.State.description.getter();
    v13 = v12;
    outlined destroy of CommunalDeviceExecutionFlow.State(v4, type metadata accessor for CommunalDeviceExecutionFlow.State);
    *v5 = v8;
    v5[1] = v10;
    v5[2] = v11;
    v5[3] = v13;
    swift_storeEnumTagMultiPayload();
    PhoneError.logged()(v140);
    OUTLINED_FUNCTION_1_55();
    outlined destroy of CommunalDeviceExecutionFlow.State(v5, v14);
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2();
    }

    v15 = *(v0 + 472);
    v16 = *(v0 + 480);
    v17 = type metadata accessor for Logger();
    v18 = __swift_project_value_buffer(v17, static Logger.siriPhone);
    outlined init with copy of CommunalDeviceExecutionFlow.State(v16, v15, type metadata accessor for PhoneError);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.fault.getter();
    v21 = OUTLINED_FUNCTION_51_0(v20);
    v22 = *(v0 + 472);
    if (v21)
    {
      v23 = *(v0 + 464);
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *v24 = 138412290;
      lazy protocol witness table accessor for type CommunalDeviceExecutionFlow and conformance CommunalDeviceExecutionFlow(&lazy protocol witness table cache variable for type PhoneError and conformance PhoneError, type metadata accessor for PhoneError);
      swift_allocError();
      outlined init with copy of CommunalDeviceExecutionFlow.State(v22, v26, type metadata accessor for PhoneError);
      v27 = _swift_stdlib_bridgeErrorToNSError();
      outlined destroy of CommunalDeviceExecutionFlow.State(v22, type metadata accessor for PhoneError);
      *(v24 + 4) = v27;
      *v25 = v27;
      _os_log_impl(&dword_0, v19, v18, "#CommunalDeviceExecutionFlow %@", v24, 0xCu);
      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v25, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      OUTLINED_FUNCTION_26_0();
      OUTLINED_FUNCTION_26_0();
    }

    else
    {

      OUTLINED_FUNCTION_1_55();
      outlined destroy of CommunalDeviceExecutionFlow.State(v22, v49);
    }

    v50 = *(v0 + 480);
    v51 = *(v0 + 456);
    v52 = *(v0 + 432);
    v53 = *(v0 + 440);
    v54 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin27CommunalDeviceExecutionFlow_sharedGlobals;
    type metadata accessor for StartCallCATsSimple();
    static CATOption.defaultMode.getter();
    v55 = CATWrapperSimple.__allocating_init(options:globals:)();
    v56 = static CommonOutputs.genericError(sharedGlobals:startCallCATsSimple:)((v53 + v54), v55);

    v58 = (*(*v56 + 112))(v57);

    *(v0 + 384) = v58;
    type metadata accessor for SimpleOutputFlowAsync();
    static ExecuteResponse.complete<A>(next:)();

    OUTLINED_FUNCTION_1_55();
    outlined destroy of CommunalDeviceExecutionFlow.State(v50, v59);
    goto LABEL_32;
  }

  v28 = *(v0 + 440);
  (*(*(v0 + 584) + 32))(*(v0 + 600), *(v0 + 568), *(v0 + 576));
  v29 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin27CommunalDeviceExecutionFlow_sharedGlobals;
  *(v0 + 608) = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin27CommunalDeviceExecutionFlow_sharedGlobals;
  v30 = v28 + v29;
  v31 = *(v28 + v29 + 32);
  __swift_project_boxed_opaque_existential_1((v28 + v29), *(v28 + v29 + 24));
  v32 = *(v31 + 72);
  v33 = OUTLINED_FUNCTION_92();
  v35 = v34(v33);
  if (one-time initialization token for instance != -1)
  {
    swift_once();
  }

  v36 = *(v0 + 600);
  *(v0 + 120) = &type metadata for CallStateProvider;
  *(v0 + 128) = &protocol witness table for CallStateProvider;
  v37 = swift_allocObject();
  *(v0 + 96) = v37;
  outlined init with copy of CallStateProvider(&static CallStateProvider.instance, v37 + 16);
  (*(*v35 + 184))(v36, v0 + 96);

  __swift_destroy_boxed_opaque_existential_1((v0 + 96));
  if (!*(v0 + 80))
  {
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v0 + 56, &_s27PhoneCallFlowDelegatePlugin03AnyA8NLIntent_pSgMd, &_s27PhoneCallFlowDelegatePlugin03AnyA8NLIntent_pSgMR);
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2();
    }

    v60 = type metadata accessor for Logger();
    v61 = OUTLINED_FUNCTION_12_1(v60, static Logger.siriPhone);
    v62 = static os_log_type_t.fault.getter();
    if (OUTLINED_FUNCTION_51_0(v62))
    {
      *OUTLINED_FUNCTION_65_0() = 0;
      OUTLINED_FUNCTION_18_10();
      _os_log_impl(v63, v64, v65, v66, v67, 2u);
      OUTLINED_FUNCTION_35();
    }

    v68 = *(v0 + 600);
    v69 = *(v0 + 584);
    v70 = *(v0 + 576);
    v72 = *(v0 + 448);
    v71 = *(v0 + 456);
    v73 = *(v0 + 432);

    __swift_storeEnumTagSinglePayload(v72, 1, 1, v70);
    v74 = type metadata accessor for StartCallCATsSimple();
    static CATOption.defaultMode.getter();
    CATWrapperSimple.__allocating_init(options:globals:)();
    v75 = OUTLINED_FUNCTION_40_0();
    v76 = static CommonOutputs.conversionError(sharedGlobals:parse:startCallCATsSimple:)(v75, v72, v74);

    v77 = outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v72, &_s11SiriKitFlow5ParseOSgMd, &_s11SiriKitFlow5ParseOSgMR);
    (*(*v76 + 112))(v77);
    OUTLINED_FUNCTION_40_0();

    *(v0 + 392) = v76;
    type metadata accessor for SimpleOutputFlowAsync();
    static ExecuteResponse.complete<A>(next:)();

    v78 = *(v69 + 8);
    v79 = OUTLINED_FUNCTION_92();
    v80(v79);
LABEL_32:
    OUTLINED_FUNCTION_5_33();

    v125 = *(v0 + 8);
    OUTLINED_FUNCTION_15_11();

    __asm { BRAA            X1, X16 }
  }

  outlined init with take of SPHConversation((v0 + 56), v0 + 16);
  outlined init with copy of SignalProviding(v0 + 16, v0 + 176);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin03AnyA8NLIntent_pMd, &_s27PhoneCallFlowDelegatePlugin03AnyA8NLIntent_pMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMR);
  if (!swift_dynamicCast())
  {
    *(v0 + 248) = 0;
    *(v0 + 232) = 0u;
    *(v0 + 216) = 0u;
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v0 + 216, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMR);
    outlined init with copy of SignalProviding(v0 + 16, v0 + 256);
    type metadata accessor for PhoneCallControlNLIntent();
    if (swift_dynamicCast())
    {
      v81 = *(v0 + 400);

      if (one-time initialization token for siriPhone != -1)
      {
        OUTLINED_FUNCTION_6_2();
      }

      v82 = type metadata accessor for Logger();
      v83 = OUTLINED_FUNCTION_12_1(v82, static Logger.siriPhone);
      v84 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v83, v84))
      {
        v85 = OUTLINED_FUNCTION_65_0();
        *v85 = 0;
        _os_log_impl(&dword_0, v83, v84, "#CommunalDeviceExecutionFlow executing call control request locally", v85, 2u);
        OUTLINED_FUNCTION_35();
      }

      v86 = *(v0 + 600);
      v87 = *(v0 + 584);
      v88 = *(v0 + 576);
      v89 = *(v0 + 560);
      v90 = *(v0 + 552);
      v91 = *(v0 + 544);
      v92 = *(v0 + 440);

      *v89 = 0;
      swift_storeEnumTagMultiPayload();
      CommunalDeviceExecutionFlow.state.setter(v89);
      static PhoneCallFlowFactory.makeMainFlow(parse:sharedGlobals:)();
      static ExecuteResponse.complete(next:)();

      __swift_destroy_boxed_opaque_existential_1((v0 + 16));
      v93 = *(v87 + 8);
      v94 = OUTLINED_FUNCTION_92();
      v95(v94);
    }

    else
    {
      v96 = *(v0 + 488);
      v97 = *(v0 + 496);
      v98 = *(v0 + 464);
      __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
      DynamicType = swift_getDynamicType();
      v100 = *(v0 + 48);
      *v96 = DynamicType;
      v96[1] = v100;
      swift_storeEnumTagMultiPayload();
      PhoneError.logged()(v97);
      outlined destroy of CommunalDeviceExecutionFlow.State(v96, type metadata accessor for PhoneError);
      v101 = OUTLINED_FUNCTION_92();
      outlined destroy of CommunalDeviceExecutionFlow.State(v101, v102);
      if (one-time initialization token for siriPhone != -1)
      {
        OUTLINED_FUNCTION_6_2();
      }

      v103 = type metadata accessor for Logger();
      v104 = OUTLINED_FUNCTION_12_1(v103, static Logger.siriPhone);
      v105 = static os_log_type_t.fault.getter();
      if (OUTLINED_FUNCTION_51_0(v105))
      {
        *OUTLINED_FUNCTION_65_0() = 0;
        OUTLINED_FUNCTION_18_10();
        _os_log_impl(v106, v107, v108, v109, v110, 2u);
        OUTLINED_FUNCTION_35();
      }

      v111 = *(v0 + 600);
      v112 = *(v0 + 584);
      v113 = *(v0 + 576);
      v114 = *(v0 + 544);
      v115 = *(v0 + 456);

      v116 = type metadata accessor for StartCallCATsSimple();
      static CATOption.defaultMode.getter();
      CATWrapperSimple.__allocating_init(options:globals:)();
      v117 = OUTLINED_FUNCTION_40_0();
      v118 = static CommonOutputs.genericError(sharedGlobals:startCallCATsSimple:)(v117, v116);

      (*(*v118 + 112))(v119);
      OUTLINED_FUNCTION_40_0();

      *(v0 + 408) = v118;
      type metadata accessor for SimpleOutputFlowAsync();
      static ExecuteResponse.complete<A>(next:)();

      __swift_destroy_boxed_opaque_existential_1((v0 + 16));
      v120 = *(v112 + 8);
      v121 = OUTLINED_FUNCTION_92();
      v122(v121);
    }

    goto LABEL_31;
  }

  outlined init with take of SPHConversation((v0 + 216), v0 + 136);
  OUTLINED_FUNCTION_16_23();
  if (PhoneCallNLIntent.isEmergencyNumberCall()() || (OUTLINED_FUNCTION_16_23(), PhoneCallNLIntent.isEmergencyServicesCall()()))
  {
    v38 = *(v0 + 600);
    v39 = *(v0 + 592);
    v40 = *(v0 + 584);
    v41 = *(v0 + 576);
    v42 = *(v0 + 560);
    v43 = *(v0 + 552);
    v44 = *(v0 + 544);
    v45 = *(v0 + 440);
    *v42 = 2;
    swift_storeEnumTagMultiPayload();
    CommunalDeviceExecutionFlow.state.setter(v42);
    type metadata accessor for CommunalDeviceEmergencyFlow();
    (*(v40 + 16))(v39, v38, v41);
    outlined init with copy of SignalProviding(v30, v0 + 336);
    *(v0 + 424) = CommunalDeviceEmergencyFlow.__allocating_init(parse:sharedGlobals:)(v39, (v0 + 336));
    lazy protocol witness table accessor for type CommunalDeviceExecutionFlow and conformance CommunalDeviceExecutionFlow(&lazy protocol witness table cache variable for type CommunalDeviceEmergencyFlow and conformance CommunalDeviceEmergencyFlow, type metadata accessor for CommunalDeviceEmergencyFlow);
    static ExecuteResponse.complete<A>(next:)();

    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
    v46 = *(v40 + 8);
    v47 = OUTLINED_FUNCTION_92();
    v48(v47);
    __swift_destroy_boxed_opaque_existential_1((v0 + 136));
LABEL_31:
    v123 = OUTLINED_FUNCTION_14_24();
    v124(v123);
    goto LABEL_32;
  }

  v128 = *(v0 + 520);
  v129 = *(v0 + 504);
  v130 = *(v0 + 512);
  v131 = *(v0 + 168);
  __swift_project_boxed_opaque_existential_1((v0 + 136), *(v0 + 160));
  type metadata accessor for SiriEnvironment();
  static SiriEnvironment.default.getter();
  SiriEnvironment.userIdentity.getter();

  dispatch thunk of UserIdentityProvider.identifiedUser.getter();

  IdentifiedUser.personaId.getter();
  *(v0 + 616) = v132;
  (*(v130 + 8))(v128, v129);
  v133 = swift_task_alloc();
  *(v0 + 624) = v133;
  *v133 = v0;
  v133[1] = CommunalDeviceExecutionFlow.execute();
  OUTLINED_FUNCTION_15_11();

  return PhoneCallNLIntent.shouldBeExecutedLocally(sharedGlobals:personaId:)(v134, v135, v136, v137, v138);
}

{
  OUTLINED_FUNCTION_15();
  v1 = *(*v0 + 624);
  v2 = *(*v0 + 616);
  v3 = *v0;
  OUTLINED_FUNCTION_4_2();
  *v4 = v3;
  *(v6 + 632) = v5;

  return _swift_task_switch(CommunalDeviceExecutionFlow.execute(), 0, 0);
}

void CommunalDeviceExecutionFlow.execute()()
{
  if (*(v0 + 632) == 1)
  {
    v1 = *(v0 + 608);
    v2 = *(v0 + 600);
    v3 = *(v0 + 584);
    v4 = *(v0 + 576);
    v5 = *(v0 + 560);
    v6 = *(v0 + 552);
    v7 = *(v0 + 544);
    v8 = *(v0 + 440);
    *v5 = 0;
    swift_storeEnumTagMultiPayload();
    CommunalDeviceExecutionFlow.state.setter(v5);
    static PhoneCallFlowFactory.makeMainFlow(parse:sharedGlobals:)();
    static ExecuteResponse.complete(next:)();
  }

  else
  {
    v9 = *(v0 + 608);
    v2 = *(v0 + 600);
    v10 = *(v0 + 592);
    v3 = *(v0 + 584);
    v4 = *(v0 + 576);
    v11 = *(v0 + 560);
    v12 = *(v0 + 552);
    v13 = *(v0 + 544);
    v14 = *(v0 + 440);
    *v11 = 1;
    swift_storeEnumTagMultiPayload();
    CommunalDeviceExecutionFlow.state.setter(v11);
    type metadata accessor for RedirectToCompanionFlow(0);
    (*(v3 + 16))(v10, v2, v4);
    outlined init with copy of SignalProviding(v14 + v9, v0 + 296);
    *(v0 + 416) = RedirectToCompanionFlow.__allocating_init(parse:sharedGlobals:)(v10, (v0 + 296));
    lazy protocol witness table accessor for type CommunalDeviceExecutionFlow and conformance CommunalDeviceExecutionFlow(&lazy protocol witness table cache variable for type RedirectToCompanionFlow and conformance RedirectToCompanionFlow, type metadata accessor for RedirectToCompanionFlow);
    static ExecuteResponse.complete<A>(next:)();
  }

  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  (*(v3 + 8))(v2, v4);
  __swift_destroy_boxed_opaque_existential_1((v0 + 136));
  v15 = OUTLINED_FUNCTION_14_24();
  v16(v15);
  OUTLINED_FUNCTION_5_33();

  v17 = *(v0 + 8);
  OUTLINED_FUNCTION_15_11();

  __asm { BRAA            X1, X16 }
}

uint64_t PhoneCallNLIntent.shouldBeExecutedLocally(sharedGlobals:personaId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[14] = a5;
  v6[15] = v5;
  v6[12] = a1;
  v6[13] = a4;
  return _swift_task_switch(PhoneCallNLIntent.shouldBeExecutedLocally(sharedGlobals:personaId:), 0, 0);
}

uint64_t PhoneCallNLIntent.shouldBeExecutedLocally(sharedGlobals:personaId:)()
{
  v44 = v0;
  v1 = v0[14];
  v2 = v0[15];
  v3 = v0[13];
  if (!PhoneCallNLIntent.canBeExecutedLocally()())
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2();
    }

    v35 = type metadata accessor for Logger();
    v36 = OUTLINED_FUNCTION_12_1(v35, static Logger.siriPhone);
    v37 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v36, v37))
    {
      goto LABEL_23;
    }

    v38 = OUTLINED_FUNCTION_65_0();
    *v38 = 0;
    v39 = "#CommunalDeviceExecutionFlow request is neither Answer or HangUp. Not executing locally";
    goto LABEL_22;
  }

  v5 = v0[14];
  v4 = v0[15];
  v6 = v0[12];
  v7 = v0[13];
  v8 = v6[4];
  __swift_project_boxed_opaque_existential_1(v6, v6[3]);
  v9 = *(v8 + 120);
  v10 = OUTLINED_FUNCTION_25_0();
  v11(v10);
  v12 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  v13 = *(v12 + 16);
  v14 = OUTLINED_FUNCTION_25_0();
  v15(v14);
  v16 = v0[11];
  __swift_project_boxed_opaque_existential_1(v0 + 7, v0[10]);
  v17 = *(v16 + 8);
  v18 = OUTLINED_FUNCTION_25_0();
  v20 = v19(v18);
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  if (!PhoneCallNLIntent.isHangUpCall()())
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2();
    }

    v40 = type metadata accessor for Logger();
    v36 = OUTLINED_FUNCTION_12_1(v40, static Logger.siriPhone);
    v37 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v36, v37))
    {
      goto LABEL_23;
    }

    v38 = OUTLINED_FUNCTION_65_0();
    *v38 = 0;
    v39 = "#CommunalDeviceExecutionFlow request should not be executed locally --> REMOTE";
LABEL_22:
    _os_log_impl(&dword_0, v36, v37, v39, v38, 2u);
    OUTLINED_FUNCTION_26_0();
LABEL_23:

    v21 = 0;
    goto LABEL_24;
  }

  v21 = v20 & 1;
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2();
  }

  v22 = type metadata accessor for Logger();
  v23 = OUTLINED_FUNCTION_12_1(v22, static Logger.siriPhone);
  v24 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_51_0(v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v43 = v26;
    *v25 = 67109378;
    *(v25 + 4) = v21;
    *(v25 + 8) = 2080;
    if (v21)
    {
      v27 = 0x4C41434F4CLL;
    }

    else
    {
      v27 = 0x45544F4D4552;
    }

    if (v21)
    {
      v28 = 0xE500000000000000;
    }

    else
    {
      v28 = 0xE600000000000000;
    }

    v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v28, &v43);

    *(v25 + 10) = v29;
    OUTLINED_FUNCTION_18_10();
    _os_log_impl(v30, v31, v32, v33, v34, 0x12u);
    __swift_destroy_boxed_opaque_existential_1(v26);
    OUTLINED_FUNCTION_26_0();
    OUTLINED_FUNCTION_35();
  }

LABEL_24:
  v41 = v0[1];

  return v41(v21);
}

unint64_t CommunalDeviceExecutionFlow.State.description.getter()
{
  v1 = v0;
  v2 = type metadata accessor for Parse();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v24[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v9 = &v24[-v8];
  v10 = type metadata accessor for CommunalDeviceExecutionFlow.State(0);
  v11 = OUTLINED_FUNCTION_23_1(v10);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v24[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  OUTLINED_FUNCTION_4_21();
  outlined init with copy of CommunalDeviceExecutionFlow.State(v1, v15, v16);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = *v15;
    OUTLINED_FUNCTION_21_11();

    v25 = 0xD000000000000014;
    v26 = 0x800000000045A900;
    v24[15] = v17;
    v18._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v18);

    v19._countAndFlagsBits = 41;
    v19._object = 0xE100000000000000;
    String.append(_:)(v19);
    return v25;
  }

  else
  {
    (*(v3 + 32))(v9, v15, v2);
    OUTLINED_FUNCTION_21_11();

    v25 = 0xD000000000000014;
    v26 = 0x800000000045A920;
    (*(v3 + 16))(v7, v9, v2);
    v21._countAndFlagsBits = String.init(describing:)(v7);
    String.append(_:)(v21);

    v22._countAndFlagsBits = 41;
    v22._object = 0xE100000000000000;
    String.append(_:)(v22);
    v20 = v25;
    (*(v3 + 8))(v9, v2);
  }

  return v20;
}

uint64_t outlined destroy of CommunalDeviceExecutionFlow.State(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_23_1(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t CommunalDeviceExecutionFlow.deinit()
{
  OUTLINED_FUNCTION_2_42();
  outlined destroy of CommunalDeviceExecutionFlow.State(v0 + v1, v2);
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin27CommunalDeviceExecutionFlow_sharedGlobals));
  return v0;
}

uint64_t CommunalDeviceExecutionFlow.__deallocating_deinit()
{
  OUTLINED_FUNCTION_2_42();
  outlined destroy of CommunalDeviceExecutionFlow.State(v0 + v1, v2);
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin27CommunalDeviceExecutionFlow_sharedGlobals));
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void (*protocol witness for SiriEnvironmentLocating.siriEnvironment.modify in conformance CommunalDeviceExecutionFlow(void *a1))(void *a1)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v4 = *v1;
  v3[4] = SiriEnvironmentLocating<>.siriEnvironment.modify();
  return protocol witness for SiriEnvironmentLocating.siriEnvironment.modify in conformance BusinessCompositionFlow;
}

uint64_t protocol witness for Flow.execute() in conformance CommunalDeviceExecutionFlow(uint64_t a1)
{
  v4 = *(**v1 + 144);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = protocol witness for Flow.execute() in conformance CommunalDeviceExecutionFlow;

  return v8(a1);
}

uint64_t protocol witness for Flow.execute() in conformance CommunalDeviceExecutionFlow()
{
  OUTLINED_FUNCTION_15();
  v1 = *(*v0 + 16);
  v2 = *v0;
  OUTLINED_FUNCTION_4_2();
  *v3 = v2;

  v4 = *(v2 + 8);

  return v4();
}

uint64_t protocol witness for Flow.exitValue.getter in conformance CommunalDeviceExecutionFlow(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for CommunalDeviceExecutionFlow(0);

  return Flow<>.exitValue.getter(v3, a2);
}

BOOL PhoneCallNLIntent.canBeExecutedLocally()()
{
  if (PhoneCallNLIntent.isAnswerCall()())
  {
    return 1;
  }

  return PhoneCallNLIntent.isHangUpCall()();
}

uint64_t outlined init with copy of CommunalDeviceExecutionFlow.State(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_23_1(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t lazy protocol witness table accessor for type CommunalDeviceExecutionFlow and conformance CommunalDeviceExecutionFlow(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t lazy protocol witness table accessor for type CommunalDeviceExecutionFlow.CommunalDeviceExecutionLocation and conformance CommunalDeviceExecutionFlow.CommunalDeviceExecutionLocation()
{
  result = lazy protocol witness table cache variable for type CommunalDeviceExecutionFlow.CommunalDeviceExecutionLocation and conformance CommunalDeviceExecutionFlow.CommunalDeviceExecutionLocation;
  if (!lazy protocol witness table cache variable for type CommunalDeviceExecutionFlow.CommunalDeviceExecutionLocation and conformance CommunalDeviceExecutionFlow.CommunalDeviceExecutionLocation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CommunalDeviceExecutionFlow.CommunalDeviceExecutionLocation and conformance CommunalDeviceExecutionFlow.CommunalDeviceExecutionLocation);
  }

  return result;
}

uint64_t type metadata completion function for CommunalDeviceExecutionFlow()
{
  result = type metadata accessor for CommunalDeviceExecutionFlow.State(319);
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

void type metadata completion function for CommunalDeviceExecutionFlow.State()
{
  type metadata accessor for (parse: Parse)();
  if (v0 <= 0x3F)
  {
    type metadata accessor for (location: CommunalDeviceExecutionFlow.CommunalDeviceExecutionLocation)();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void type metadata accessor for (parse: Parse)()
{
  if (!lazy cache variable for type metadata for (parse: Parse))
  {
    v0 = type metadata accessor for Parse();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for (parse: Parse));
    }
  }
}

ValueMetadata *type metadata accessor for (location: CommunalDeviceExecutionFlow.CommunalDeviceExecutionLocation)()
{
  result = lazy cache variable for type metadata for (location: CommunalDeviceExecutionFlow.CommunalDeviceExecutionLocation);
  if (!lazy cache variable for type metadata for (location: CommunalDeviceExecutionFlow.CommunalDeviceExecutionLocation))
  {
    result = &type metadata for CommunalDeviceExecutionFlow.CommunalDeviceExecutionLocation;
    atomic_store(&type metadata for CommunalDeviceExecutionFlow.CommunalDeviceExecutionLocation, &lazy cache variable for type metadata for (location: CommunalDeviceExecutionFlow.CommunalDeviceExecutionLocation));
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CommunalDeviceExecutionFlow.CommunalDeviceExecutionLocation(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t outlined assign with copy of CommunalDeviceExecutionFlow.State(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CommunalDeviceExecutionFlow.State(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t ConfirmationViewBuilder.__allocating_init(viewTemplate:sharedGlobals:)(const void *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  memcpy((v4 + 16), a1, 0xA0uLL);
  outlined init with take of PhoneCallFeatureFlagProviding(a2, v4 + 176);
  return v4;
}

uint64_t ConfirmationViewBuilder.init(viewTemplate:sharedGlobals:)(void *__src, uint64_t a2)
{
  memcpy((v2 + 16), __src, 0xA0uLL);
  outlined init with take of PhoneCallFeatureFlagProviding(a2, v2 + 176);
  return v2;
}

uint64_t ConfirmationViewBuilder.makeViewsForWatch(utteranceViews:_:)(uint64_t a1, void (*a2)(uint64_t, void))
{
  v3 = v2;
  v31 = [objc_allocWithZone(SASTItemGroup) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy27PhoneCallFlowDelegatePlugin24ConfirmationViewTemplateV6ButtonVGMd, &_ss23_ContiguousArrayStorageCy27PhoneCallFlowDelegatePlugin24ConfirmationViewTemplateV6ButtonVGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_424FF0;
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v9 = v3[6];
  v10 = v3[7];
  v11 = v3[8];
  *(inited + 32) = v5;
  *(inited + 40) = v6;
  *(inited + 48) = v7;
  *(inited + 56) = v8;
  *(inited + 64) = v9;
  *(inited + 72) = v10;
  *(inited + 80) = v11;
  v12 = v3[10];
  v13 = v3[11];
  v14 = v3[12];
  v16 = v3[13];
  v15 = v3[14];
  v17 = v3[15];
  *(inited + 88) = v3[9];
  *(inited + 96) = v12;
  *(inited + 104) = v13;
  *(inited + 112) = v14;
  *(inited + 120) = v16;
  *(inited + 128) = v15;
  *(inited + 136) = v17;
  v33[0] = _swiftEmptyArrayStorage;

  swift_unknownObjectRetain();

  swift_unknownObjectRetain();

  specialized ContiguousArray.reserveCapacity(_:)();
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SASTButtonItem, SASTButtonItem_ptr);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v18 = OUTLINED_FUNCTION_48_0();
  *(v18 + 16) = xmmword_426260;
  *(v18 + 32) = v11;

  swift_unknownObjectRetain();
  SASTButtonItem.init(label:commands:centered:)(v5, v6, v18, 1);
  specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
  v19 = *(v33[0] + 16);
  specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
  specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  specialized ContiguousArray._endMutation()();
  v21 = *(inited + 88);
  v20 = *(inited + 96);
  v22 = *(inited + 112);
  v23 = *(inited + 128);
  v24 = *(inited + 136);
  swift_setDeallocating();

  swift_unknownObjectRetain();

  specialized _ContiguousArrayStorage.__deallocating_deinit();
  v25 = OUTLINED_FUNCTION_48_0();
  *(v25 + 16) = xmmword_426260;
  *(v25 + 32) = v24;

  swift_unknownObjectRetain();
  SASTButtonItem.init(label:commands:centered:)(v21, v20, v25, 1);
  swift_unknownObjectRelease();

  specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
  v26 = *(v33[0] + 16);
  specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
  specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  specialized ContiguousArray._endMutation()();
  outlined bridged method (mbnn) of @objc SASTItemGroup.templateItems.setter(v33[0], v31);
  type metadata accessor for SiriKitAceViewBuilder();
  v27 = v3[25];
  v28 = v3[26];
  __swift_project_boxed_opaque_existential_1(v3 + 22, v27);
  (*(v28 + 8))(v33, v27, v28);
  dispatch thunk of static SiriKitAceViewBuilder.makeBuilder(deviceState:)();
  __swift_destroy_boxed_opaque_existential_1(v33);
  dispatch thunk of SiriKitAceViewBuilder.withUtteranceViews(utteranceViews:)();

  dispatch thunk of SiriKitAceViewBuilder.addButtonGroup(buttonGroup:)();

  v29 = dispatch thunk of SiriKitAceViewBuilder.build()();

  a2(v29, 0);
}