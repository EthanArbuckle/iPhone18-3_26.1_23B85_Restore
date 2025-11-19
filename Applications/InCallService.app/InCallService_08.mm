id sub_1001CA44C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ViewEvaluation();
  return objc_msgSendSuper2(&v2, "init");
}

id sub_1001CA4A4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ViewEvaluation();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_1001CA500(unint64_t result)
{
  if (result >= 6)
  {
    return 6;
  }

  return result;
}

unint64_t sub_1001CA53C@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1001CA500(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1001CA568()
{
  v2 = v0;
  v3 = sub_10014EA98(&qword_1003AD2A0);
  v4 = sub_100005568(v3);
  __chkstk_darwin(v4, v5);
  sub_10000693C();
  v8 = v6 - v7;
  __chkstk_darwin(v9, v10);
  v12 = &v40 - v11;
  type metadata accessor for Date();
  sub_10000C454();
  v14 = v13;
  __chkstk_darwin(v15, v16);
  sub_10000693C();
  v19 = (v17 - v18);
  __chkstk_darwin(v20, v21);
  v23 = &v40 - v22;
  sub_1001CC5B0();
  v24 = Dictionary.init(dictionaryLiteral:)();
  v25 = [objc_allocWithZone(NSNumber) initWithInteger:*(v2 + OBJC_IVAR____TtC13InCallService34SmartHoldingTipsCoreAnalyticsEvent_tipFeedbackLatency)];
  swift_isUniquelyReferenced_nonNull_native();
  v42 = v24;
  sub_1002313A0(v25, 0xD000000000000012, 0x80000001002AAB40);
  v26 = v42;
  v27 = OBJC_IVAR____TtC13InCallService34SmartHoldingTipsCoreAnalyticsEvent_holdDetectionStartedTimestamp;
  swift_beginAccess();
  sub_1001CC058(v2 + v27, v12);
  sub_10000B490(v12);
  if (v31)
  {
    v28 = v12;
LABEL_7:
    sub_1001CC0C8(v28);
    v32 = &_sScI4next7ElementQzSgyYaKFTj_ptr;
LABEL_12:
    v37 = [objc_allocWithZone(v32[362]) initWithInteger:0];
    swift_isUniquelyReferenced_nonNull_native();
    v41 = v26;
    sub_1002313A0(v37, 0x6E656D6D6F636552, 0xEE006E6F69746164);
    v38 = v41;
    v39 = [objc_allocWithZone(v32[362]) initWithInteger:*(v2 + OBJC_IVAR____TtC13InCallService34SmartHoldingTipsCoreAnalyticsEvent_observation)];
    swift_isUniquelyReferenced_nonNull_native();
    v41 = v38;
    sub_1002313A0(v39, 0x746176726573624FLL, 0xEB000000006E6F69);
    return v41;
  }

  v29 = *(v14 + 32);
  v29(v23, v12, v1);
  v30 = OBJC_IVAR____TtC13InCallService34SmartHoldingTipsCoreAnalyticsEvent_tipPresentedTimestamp;
  swift_beginAccess();
  sub_1001CC058(v2 + v30, v8);
  sub_10000B490(v8);
  if (v31)
  {
    (*(v14 + 8))(v23, v1);
    v28 = v8;
    goto LABEL_7;
  }

  v29(v19, v8, v1);
  result = Date.timeIntervalSince(_:)();
  if ((*&v34 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_14;
  }

  v32 = &_sScI4next7ElementQzSgyYaKFTj_ptr;
  if (v34 <= -9.22337204e18)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v34 < 9.22337204e18)
  {
    v35 = [objc_allocWithZone(NSNumber) initWithInteger:v34];
    swift_isUniquelyReferenced_nonNull_native();
    v41 = v26;
    sub_1002313A0(v35, 0xD000000000000011, 0x80000001002AAB60);
    v36 = *(v14 + 8);
    v36(v19, v1);
    v36(v23, v1);
    v26 = v41;
    goto LABEL_12;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_1001CA9A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a4;
  return _swift_task_switch(sub_1001CA9C8, 0, 0);
}

void sub_1001CA9C8()
{
  sub_100006880();
  v2 = *(v0 + 24);
  v3 = sub_1000072F8();
  v4 = sub_100025B34(v3);
  sub_100030264(v4);
  sub_100006E30();
  sub_1001CC5F8();
  os_unfair_lock_unlock(v1 + 4);

  if (!v2)
  {

    sub_10000535C();
    sub_100008BAC();

    __asm { BRAA            X1, X16 }
  }

  sub_100008BAC();
}

uint64_t sub_1001CAAA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a4;
  return _swift_task_switch(sub_1001CAAC8, 0, 0);
}

void sub_1001CAAC8()
{
  sub_100006880();
  v2 = *(v0 + 24);
  v3 = sub_1000072F8();
  v4 = sub_100025B34(v3);
  sub_100030264(v4);
  sub_100006E30();
  sub_1001CC5F8();
  os_unfair_lock_unlock(v1 + 4);

  if (!v2)
  {

    sub_10000535C();
    sub_100008BAC();

    __asm { BRAA            X1, X16 }
  }

  sub_100008BAC();
}

void sub_1001CAB88(uint64_t a1, uint64_t a2, unint64_t a3, char a4)
{
  if (qword_1003A9F58 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100008A14(v8, &unk_1003B8868);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_100008ADC(a2, a3, &v13);
    _os_log_impl(&_mh_execute_header, v9, v10, "Analytics: %s", v11, 0xCu);
    sub_100005B2C(v12);
  }

  *(a1 + OBJC_IVAR____TtC13InCallService34SmartHoldingTipsCoreAnalyticsEvent_observation) = a4;
  sub_1001CB7FC();
  sub_1001CB708();
}

uint64_t sub_1001CAD10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a4;
  return _swift_task_switch(sub_1001CAD30, 0, 0);
}

void sub_1001CAD30()
{
  sub_100006880();
  v2 = *(v0 + 24);
  v3 = sub_1000072F8();
  v4 = sub_100025B34(v3);
  sub_100030264(v4);
  sub_100006E30();
  sub_1001CC5F8();
  os_unfair_lock_unlock(v1 + 4);

  if (!v2)
  {

    sub_10000535C();
    sub_100008BAC();

    __asm { BRAA            X1, X16 }
  }

  sub_100008BAC();
}

void sub_1001CADF0(uint64_t a1)
{
  if (qword_1003A9F58 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100008A14(v2, &unk_1003B8868);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v7 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_100008ADC(0xD000000000000015, 0x80000001002AAB20, &v7);
    _os_log_impl(&_mh_execute_header, v3, v4, "Analytics: %s", v5, 0xCu);
    sub_100005B2C(v6);
  }

  if (*(a1 + OBJC_IVAR____TtC13InCallService34SmartHoldingTipsCoreAnalyticsEvent_observation) == 4)
  {
    *(a1 + OBJC_IVAR____TtC13InCallService34SmartHoldingTipsCoreAnalyticsEvent_observation) = 3;
    sub_1001CB7FC();
    sub_1001CB708();
  }
}

uint64_t sub_1001CAF84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a4;
  return _swift_task_switch(sub_1001CAFA4, 0, 0);
}

void sub_1001CAFA4()
{
  sub_100006880();
  v2 = *(v0 + 24);
  v3 = sub_1000072F8();
  v4 = sub_100025B34(v3);
  sub_100030264(v4);
  sub_100006E30();
  sub_1001CC5F8();
  os_unfair_lock_unlock(v1 + 4);

  if (!v2)
  {

    sub_10000535C();
    sub_100008BAC();

    __asm { BRAA            X1, X16 }
  }

  sub_100008BAC();
}

uint64_t sub_1001CB064(uint64_t a1)
{
  v2 = sub_10014EA98(&qword_1003AD2A0);
  v4 = __chkstk_darwin(v2 - 8, v3);
  v6 = &v19[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4, v7);
  v9 = &v19[-v8];
  if (qword_1003A9F58 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_100008A14(v10, &unk_1003B8868);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v20[0] = v14;
    *v13 = 136315138;
    *(v13 + 4) = sub_100008ADC(0x6573657250706974, 0xEE0029286465746ELL, v20);
    _os_log_impl(&_mh_execute_header, v11, v12, "Analytics: %s", v13, 0xCu);
    sub_100005B2C(v14);
  }

  v15 = OBJC_IVAR____TtC13InCallService34SmartHoldingTipsCoreAnalyticsEvent_tipPresentedTimestamp;
  swift_beginAccess();
  sub_1001CC058(a1 + v15, v9);
  v16 = type metadata accessor for Date();
  v17 = sub_100006AC0(v9, 1, v16);
  result = sub_1001CC0C8(v9);
  if (v17 == 1)
  {
    Date.init()();
    sub_100006848(v6, 0, 1, v16);
    swift_beginAccess();
    sub_1001CBFE8(v6, a1 + v15);
    result = swift_endAccess();
  }

  *(a1 + OBJC_IVAR____TtC13InCallService34SmartHoldingTipsCoreAnalyticsEvent_observation) = 4;
  return result;
}

uint64_t sub_1001CB2FC()
{
  v1 = sub_10014EA98(&qword_1003AA7B0);
  v2 = sub_100005568(v1);
  __chkstk_darwin(v2, v3);
  type metadata accessor for TaskPriority();
  sub_10000717C();
  sub_100006848(v4, v5, v6, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v0;
  v9 = v0;
  sub_1001621BC();
}

uint64_t sub_1001CB3C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a4;
  return _swift_task_switch(sub_1001CB3E8, 0, 0);
}

void sub_1001CB3E8()
{
  sub_100006880();
  v2 = *(v0 + 24);
  v3 = sub_1000072F8();
  v4 = sub_100025B34(v3);
  sub_100030264(v4);
  sub_100006E30();
  sub_1001C4420();
  os_unfair_lock_unlock(v1 + 4);

  if (!v2)
  {

    sub_10000535C();
    sub_100008BAC();

    __asm { BRAA            X1, X16 }
  }

  sub_100008BAC();
}

uint64_t sub_1001CB4A8(uint64_t a1)
{
  v2 = sub_10014EA98(&qword_1003AD2A0);
  v4 = __chkstk_darwin(v2 - 8, v3);
  v6 = &v19[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4, v7);
  v9 = &v19[-v8];
  if (qword_1003A9F58 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_100008A14(v10, &unk_1003B8868);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v20[0] = v14;
    *v13 = 136315138;
    *(v13 + 4) = sub_100008ADC(0xD000000000000016, 0x80000001002AAB00, v20);
    _os_log_impl(&_mh_execute_header, v11, v12, "Analytics: %s", v13, 0xCu);
    sub_100005B2C(v14);
  }

  v15 = OBJC_IVAR____TtC13InCallService34SmartHoldingTipsCoreAnalyticsEvent_holdDetectionStartedTimestamp;
  swift_beginAccess();
  sub_1001CC058(a1 + v15, v9);
  v16 = type metadata accessor for Date();
  v17 = sub_100006AC0(v9, 1, v16);
  result = sub_1001CC0C8(v9);
  if (v17 == 1)
  {
    Date.init()();
    sub_100006848(v6, 0, 1, v16);
    swift_beginAccess();
    sub_1001CBFE8(v6, a1 + v15);
    return swift_endAccess();
  }

  return result;
}

void sub_1001CB708()
{
  v0 = sub_1001CA568();
  sub_1001CBA08();
  v1 = String._bridgeToObjectiveC()();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  v4[4] = sub_1001A6000;
  v4[5] = v2;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 1107296256;
  v4[2] = sub_100206510;
  v4[3] = &unk_10035E370;
  v3 = _Block_copy(v4);

  AnalyticsSendEventLazy();
  _Block_release(v3);
}

uint64_t sub_1001CB7FC()
{
  v2 = v0;
  v3 = sub_10014EA98(&qword_1003AD2A0);
  v4 = sub_100005568(v3);
  __chkstk_darwin(v4, v5);
  v7 = &v26 - v6;
  type metadata accessor for Date();
  sub_10000C454();
  v9 = v8;
  __chkstk_darwin(v10, v11);
  sub_10000693C();
  v14 = v12 - v13;
  __chkstk_darwin(v15, v16);
  v18 = &v26 - v17;
  v19 = OBJC_IVAR____TtC13InCallService34SmartHoldingTipsCoreAnalyticsEvent_tipPresentedTimestamp;
  swift_beginAccess();
  sub_1001CC058(v2 + v19, v7);
  sub_10000B490(v7);
  if (v20)
  {
    return sub_1001CC0C8(v7);
  }

  (*(v9 + 32))(v18, v7, v1);
  Date.init()();
  Date.timeIntervalSince(_:)();
  v22 = v21;
  v23 = v21;
  v24 = *(v9 + 8);
  v24(v14, v1);
  result = (v24)(v18, v1);
  if ((*&v23 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v22 <= -9.22337204e18)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v22 >= 9.22337204e18)
  {
LABEL_12:
    __break(1u);
    return result;
  }

  if (v22 >= 1)
  {
    *(v2 + OBJC_IVAR____TtC13InCallService34SmartHoldingTipsCoreAnalyticsEvent_tipFeedbackLatency) = v22;
  }

  return result;
}

uint64_t sub_1001CBA08()
{
  v1 = sub_10014EA98(&qword_1003AD2A0);
  v2 = sub_100005568(v1);
  __chkstk_darwin(v2, v3);
  v5 = &v16 - v4;
  v6 = type metadata accessor for Date();
  sub_10000717C();
  sub_100006848(v7, v8, v9, v6);
  v10 = OBJC_IVAR____TtC13InCallService34SmartHoldingTipsCoreAnalyticsEvent_holdDetectionStartedTimestamp;
  swift_beginAccess();
  sub_1001CBFE8(v5, v0 + v10);
  swift_endAccess();
  sub_10000717C();
  sub_100006848(v11, v12, v13, v6);
  v14 = OBJC_IVAR____TtC13InCallService34SmartHoldingTipsCoreAnalyticsEvent_tipPresentedTimestamp;
  swift_beginAccess();
  sub_1001CBFE8(v5, v0 + v14);
  result = swift_endAccess();
  *(v0 + OBJC_IVAR____TtC13InCallService34SmartHoldingTipsCoreAnalyticsEvent_tipFeedbackLatency) = 0;
  *(v0 + OBJC_IVAR____TtC13InCallService34SmartHoldingTipsCoreAnalyticsEvent_tipPreviewLatency) = 0;
  *(v0 + OBJC_IVAR____TtC13InCallService34SmartHoldingTipsCoreAnalyticsEvent_observation) = 5;
  return result;
}

id sub_1001CBB30()
{
  v1 = OBJC_IVAR____TtC13InCallService34SmartHoldingTipsCoreAnalyticsEvent_lock;
  sub_10014EA98(&qword_1003AD2A8);
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  *&v0[v1] = v2;
  v3 = type metadata accessor for Date();
  sub_10000717C();
  sub_100006848(v4, v5, v6, v3);
  sub_10000717C();
  sub_100006848(v7, v8, v9, v3);
  *&v0[OBJC_IVAR____TtC13InCallService34SmartHoldingTipsCoreAnalyticsEvent_tipFeedbackLatency] = 0;
  *&v0[OBJC_IVAR____TtC13InCallService34SmartHoldingTipsCoreAnalyticsEvent_tipPreviewLatency] = 0;
  v0[OBJC_IVAR____TtC13InCallService34SmartHoldingTipsCoreAnalyticsEvent_observation] = 5;
  v11.receiver = v0;
  v11.super_class = type metadata accessor for SmartHoldingTipsCoreAnalyticsEvent();
  return objc_msgSendSuper2(&v11, "init");
}

id sub_1001CBC30()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SmartHoldingTipsCoreAnalyticsEvent();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for SmartHoldingTipsCoreAnalyticsEvent()
{
  result = qword_1003AD280;
  if (!qword_1003AD280)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1001CBD18()
{
  sub_1001CBDD4();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1001CBDD4()
{
  if (!qword_1003AD290)
  {
    type metadata accessor for Date();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1003AD290);
    }
  }
}

uint64_t getEnumTagSinglePayload for SmartHoldingTipsCoreAnalyticsEvent.TipAnalyticsObservation(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFB)
  {
    if (a2 + 5 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 5) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 6;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v5 = v6 - 6;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for SmartHoldingTipsCoreAnalyticsEvent.TipAnalyticsObservation(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1001CBF94()
{
  result = qword_1003AD298;
  if (!qword_1003AD298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AD298);
  }

  return result;
}

uint64_t sub_1001CBFE8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10014EA98(&qword_1003AD2A0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001CC058(uint64_t a1, uint64_t a2)
{
  v4 = sub_10014EA98(&qword_1003AD2A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001CC0C8(uint64_t a1)
{
  v2 = sub_10014EA98(&qword_1003AD2A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1001CC130()
{
  sub_1000058A8();
  sub_10000804C();
  v0 = swift_task_alloc();
  v1 = sub_100005B88(v0);
  *v1 = v2;
  v3 = sub_10000786C(v1);

  return sub_1001CB3C8(v3, v4, v5, v6);
}

uint64_t sub_1001CC1D8()
{
  sub_1000058A8();
  sub_10000804C();
  v0 = swift_task_alloc();
  v1 = sub_100005B88(v0);
  *v1 = v2;
  v3 = sub_10000786C(v1);

  return sub_1001CAF84(v3, v4, v5, v6);
}

uint64_t sub_1001CC280()
{
  sub_1000058A8();
  sub_10000804C();
  v0 = swift_task_alloc();
  v1 = sub_100005B88(v0);
  *v1 = v2;
  v3 = sub_10000786C(v1);

  return sub_1001CAD10(v3, v4, v5, v6);
}

uint64_t sub_1001CC328()
{
  sub_1000058A8();
  sub_10000804C();
  v0 = swift_task_alloc();
  v1 = sub_100005B88(v0);
  *v1 = v2;
  v3 = sub_10000786C(v1);

  return sub_1001CAAA8(v3, v4, v5, v6);
}

uint64_t sub_1001CC3F4()
{
  sub_1000058A8();
  sub_10000804C();
  v0 = swift_task_alloc();
  v1 = sub_100005B88(v0);
  *v1 = v2;
  v3 = sub_10000786C(v1);

  return sub_1001CA9A8(v3, v4, v5, v6);
}

uint64_t sub_1001CC480()
{

  sub_10000535C();

  return v0();
}

unint64_t sub_1001CC5B0()
{
  result = qword_1003AB7A0;
  if (!qword_1003AB7A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1003AB7A0);
  }

  return result;
}

void sub_1001CC610(uint64_t a1)
{
  v2 = v1;
  v3 = [objc_opt_self() textAttachmentWithImage:a1];
  v4 = [objc_opt_self() attributedStringWithAttachment:v3];

  sub_1000064BC(0, &qword_1003AD2B0);
  v7 = sub_1001A584C();
  [v7 appendAttributedString:v4];
  v5 = sub_1001A584C();
  [v7 appendAttributedString:v5];

  v6 = sub_1001A584C();
  [v7 appendAttributedString:v6];

  [v2 setAttributedText:v7];
}

uint64_t sub_1001CC768(uint64_t a1)
{
  v1 = *(a1 + 32);

  LOBYTE(v1) = v1(v2);

  return v1 & 1;
}

unint64_t sub_1001CC7A8(unint64_t result)
{
  if (result > 3)
  {
    return 0;
  }

  return result;
}

unint64_t sub_1001CC7B8@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1001CC7A8(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

void sub_1001CC7EC()
{
  sub_100008C44();
  v2 = static Features.shared.getter();
  v3 = Features.isEnhancedEmergencyEnabled.getter();

  if (v3)
  {
    if (qword_1003A9F40 != -1)
    {
      sub_10000755C();
    }

    v4 = type metadata accessor for Logger();
    v5 = sub_1001D181C(v4, &unk_1003B8820);
    v6 = static os_log_type_t.default.getter();
    if (sub_10000FFB4(v6))
    {
      v7 = sub_100005924();
      sub_1000089E0(v7);
      sub_100008530(&_mh_execute_header, v8, v9, "EnhancedEmergency: PHAudioCallViewController trying to add webView");
      sub_100005340();
    }

    v10 = [v1 parentViewController];
    if (v10)
    {

      v11 = sub_100008824();
      if (!v11)
      {
LABEL_36:
        __break(1u);
        goto LABEL_37;
      }

      v12 = v11;
      v13 = [v11 window];

      if (v13)
      {

        v14 = sub_100008824();
        if (!v14)
        {
LABEL_43:
          __break(1u);
          goto LABEL_44;
        }

        v15 = v14;
        [v14 alpha];
        v17 = v16;

        if (v17 == 0.0)
        {
          v18 = sub_100008824();
          if (v18)
          {
            v19 = v18;
            [v18 setAlpha:1.0];

LABEL_28:
            [v0 requestToEnableVideoStreamingButton];
            return;
          }

LABEL_44:
          __break(1u);
          return;
        }
      }
    }

    sub_1000089B0(v10, "addChildViewController:");
    v20 = sub_100014338();
    if (v20)
    {
      v21 = v20;
      v22 = sub_100008824();
      if (v22)
      {
        v23 = v22;
        v24 = sub_10000599C();
        [v24 v25];

        [v1 didMoveToParentViewController:v0];
        v26 = sub_100008824();
        if (v26)
        {
          v27 = v26;
          [v26 setTranslatesAutoresizingMaskIntoConstraints:0];

          v28 = sub_100008824();
          if (v28)
          {
            v29 = v28;
            v30 = [v28 topAnchor];

            v31 = [v0 callParticipantsViewController];
            v32 = [v31 view];

            if (v32)
            {
              v33 = [v32 bottomAnchor];

              v34 = [v30 constraintEqualToAnchor:v33];
              v35 = *&v1[OBJC_IVAR___EmergencyWebRTCViewController_webViewRTCViewControllerWaitingStataTopAnchor];
              *&v1[OBJC_IVAR___EmergencyWebRTCViewController_webViewRTCViewControllerWaitingStataTopAnchor] = v34;
              v36 = v34;

              if (v36)
              {
                sub_10014EA98(&unk_1003AAAA0);
                v37 = swift_allocObject();
                *(v37 + 16) = xmmword_1002FB360;
                *(v37 + 32) = v36;
                v38 = v36;
                v39 = sub_100008824();
                if (!v39)
                {
LABEL_37:
                  __break(1u);
                  goto LABEL_38;
                }

                v40 = v39;
                v41 = [v39 bottomAnchor];

                v42 = sub_100014338();
                if (!v42)
                {
LABEL_38:
                  __break(1u);
                  goto LABEL_39;
                }

                v43 = v42;
                v44 = [v42 bottomAnchor];

                v45 = [v41 constraintEqualToAnchor:v44];
                *(v37 + 40) = v45;
                v46 = sub_100008824();
                if (!v46)
                {
LABEL_39:
                  __break(1u);
                  goto LABEL_40;
                }

                v47 = v46;
                v48 = [v46 leadingAnchor];

                v49 = sub_100014338();
                if (!v49)
                {
LABEL_40:
                  __break(1u);
                  goto LABEL_41;
                }

                v50 = v49;
                v51 = [v49 leadingAnchor];

                v52 = [v48 constraintEqualToAnchor:v51];
                *(v37 + 48) = v52;
                v53 = sub_100008824();
                if (!v53)
                {
LABEL_41:
                  __break(1u);
                  goto LABEL_42;
                }

                v54 = v53;
                v55 = [v53 trailingAnchor];

                v56 = sub_100014338();
                if (!v56)
                {
LABEL_42:
                  __break(1u);
                  goto LABEL_43;
                }

                v57 = v56;
                v58 = objc_opt_self();
                v59 = [v57 trailingAnchor];

                v60 = [v55 constraintEqualToAnchor:v59];
                *(v37 + 56) = v60;
                sub_1000064BC(0, &qword_1003AAF70);
                isa = Array._bridgeToObjectiveC()().super.isa;

                [v58 activateConstraints:isa];
              }

              v62 = [objc_msgSend(v0 "buttonsViewController")];
              swift_unknownObjectRelease();
              sub_100005C44();
              v63 = swift_allocObject();
              *(v63 + 16) = v1;
              v80 = sub_1001D1758;
              v81 = v63;
              aBlock[0] = _NSConcreteStackBlock;
              aBlock[1] = 1107296256;
              v78 = sub_1001CC768;
              v79 = &unk_10035E690;
              v64 = _Block_copy(aBlock);
              v65 = v1;

              [v62 setAccessibilityElementsHiddenBlock:v64];
              _Block_release(v64);

              v66 = [v0 callParticipantsViewController];
              v67 = [v66 view];

              if (v67)
              {
                sub_100005C44();
                v68 = swift_allocObject();
                *(v68 + 16) = v65;
                v80 = sub_1001D1760;
                v81 = v68;
                aBlock[0] = _NSConcreteStackBlock;
                sub_100007310();
                v78 = v69;
                v79 = &unk_10035E6E0;
                v70 = _Block_copy(aBlock);
                v71 = v65;

                [v67 setAccessibilityElementsHiddenBlock:v70];
                _Block_release(v70);

                v72 = [v0 callDetailsViewButton];
                sub_100005C44();
                v73 = swift_allocObject();
                *(v73 + 16) = v71;
                v80 = sub_1001D1768;
                v81 = v73;
                aBlock[0] = _NSConcreteStackBlock;
                sub_100007310();
                v78 = v74;
                v79 = &unk_10035E730;
                v75 = _Block_copy(aBlock);
                v76 = v71;

                [v72 setIsAccessibilityElementBlock:v75];
                _Block_release(v75);

                goto LABEL_28;
              }

              goto LABEL_35;
            }

LABEL_34:
            __break(1u);
LABEL_35:
            __break(1u);
            goto LABEL_36;
          }

LABEL_33:
          __break(1u);
          goto LABEL_34;
        }

LABEL_32:
        __break(1u);
        goto LABEL_33;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_32;
  }
}

id sub_1001CCFA0(char *a1)
{
  v1 = *&a1[OBJC_IVAR___EmergencyWebRTCViewController_currentState];
  if (!v1)
  {
    return 0;
  }

  v3 = v1;
  SOSUIWebRTCState.state.getter();

  v4 = SOSUIWebRTCStateName.rawValue.getter();
  if (v4 != SOSUIWebRTCStateName.rawValue.getter())
  {
    return 0;
  }

  result = [a1 view];
  if (result)
  {
    v6 = result;
    [result alpha];
    v8 = v7;

    return (v8 > 0.0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

BOOL sub_1001CD05C(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR___EmergencyWebRTCViewController_currentState);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  SOSUIWebRTCState.state.getter();

  v3 = SOSUIWebRTCStateName.rawValue.getter();
  v4 = 1;
  if (v3 != SOSUIWebRTCStateName.rawValue.getter())
  {
    v5 = SOSUIWebRTCStateName.rawValue.getter();
    return v5 == SOSUIWebRTCStateName.rawValue.getter();
  }

  return v4;
}

BOOL sub_1001CD0F0(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR___EmergencyWebRTCViewController_currentState);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  SOSUIWebRTCState.state.getter();

  v3 = SOSUIWebRTCStateName.rawValue.getter();
  if (v3 == SOSUIWebRTCStateName.rawValue.getter())
  {
    return 0;
  }

  v5 = SOSUIWebRTCStateName.rawValue.getter();
  return v5 != SOSUIWebRTCStateName.rawValue.getter();
}

void sub_1001CD1E8()
{
  sub_100008C44();
  v2 = static Features.shared.getter();
  v3 = Features.isEnhancedEmergencyEnabled.getter();

  if ((v3 & 1) == 0)
  {
    sub_100005D80();
    return;
  }

  if (qword_1003A9F40 != -1)
  {
    sub_10000755C();
  }

  v4 = type metadata accessor for Logger();
  v5 = sub_1001D181C(v4, &unk_1003B8820);
  v6 = static os_log_type_t.default.getter();
  if (sub_10000FFB4(v6))
  {
    v7 = sub_100005924();
    sub_1000089E0(v7);
    sub_100008530(&_mh_execute_header, v8, v9, "EnhancedEmergency: PHAudioCallViewController trying to remove webView");
    sub_100005340();
  }

  [v1 willMoveToParentViewController:0];
  v10 = sub_100030394();
  if (!v10)
  {
    __break(1u);
    goto LABEL_13;
  }

  v11 = v10;
  [v10 removeFromSuperview];

  sub_1000089B0(v12, "removeChildViewController:");
  v13 = [objc_msgSend(v0 "buttonsViewController")];
  swift_unknownObjectRelease();
  [v13 setAccessibilityElementsHiddenBlock:0];

  v14 = [v0 callParticipantsViewController];
  v15 = [v14 *(v3 + 3568)];

  if (!v15)
  {
LABEL_13:
    __break(1u);
    return;
  }

  [v15 setAccessibilityElementsHiddenBlock:0];

  [objc_msgSend(v0 "callDetailsViewButton")];
  sub_100005D80();
}

void sub_1001CD444()
{
  [v0 setShouldEnableVideoStreamingButton:1];
  v3 = [objc_msgSend(v0 "buttonsViewController")];
  swift_unknownObjectRelease();
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  if (v1)
  {
    v2 = v1;
    [v1 updateControls];
    [v2 changeVideoStreamingButtonTitleWithIsSharing:1];
  }
}

void sub_1001CD604(SEL *a1, char a2)
{
  [v2 *a1];
  v4 = [objc_msgSend(v2 "buttonsViewController")];
  swift_unknownObjectRelease();
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (v3)
  {
    [v3 updateControls];
  }
}

void sub_1001CD70C()
{
  sub_100008C44();
  v1 = static Features.shared.getter();
  v2 = Features.isEnhancedEmergencyEnabled.getter();

  if (v2)
  {
    if (qword_1003A9F40 != -1)
    {
      sub_10000755C();
    }

    v3 = type metadata accessor for Logger();
    v4 = sub_1001D181C(v3, &unk_1003B8820);
    v5 = static os_log_type_t.default.getter();
    if (sub_10000FFB4(v5))
    {
      v6 = sub_100005924();
      sub_1000089E0(v6);
      sub_100008530(&_mh_execute_header, v7, v8, "EnhancedEmergency: PHAudioCallViewController trying to hide webView");
      sub_100005340();
    }

    v9 = sub_100030394();
    if (v9)
    {
      v10 = v9;
      [v9 setAlpha:0.0];

      [objc_msgSend(v0 "buttonsViewController")];
      swift_unknownObjectRelease();
      objc_opt_self();
      v11 = swift_dynamicCastObjCClass();
      if (v11)
      {
        [v11 updateControls];
      }

      sub_100005D80();
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    sub_100005D80();
  }
}

void sub_1001CD8E0(void *a1)
{
  v2 = v1;
  type metadata accessor for Features();
  v4 = static Features.shared.getter();
  v5 = Features.isEnhancedEmergencyEnabled.getter();

  if (v5)
  {
    if (qword_1003A9F40 != -1)
    {
      sub_10000755C();
    }

    v6 = type metadata accessor for Logger();
    v7 = sub_1001D181C(v6, &unk_1003B8820);
    v8 = static os_log_type_t.default.getter();
    if (sub_10000FFB4(v8))
    {
      v9 = sub_100005924();
      sub_1000089E0(v9);
      sub_100008530(&_mh_execute_header, v10, v11, "EnhancedEmergency: PHAudioCallViewController trying to remove webView");
      sub_100005340();
    }

    [a1 willMoveToParentViewController:0];
    v12 = [a1 view];
    if (v12)
    {
      v13 = v12;
      [v12 removeFromSuperview];

      [v2 removeChildViewController:a1];
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1001CDA84()
{
  sub_100008C44();
  v2 = static Features.shared.getter();
  v3 = Features.isEnhancedEmergencyEnabled.getter();

  if ((v3 & 1) == 0)
  {
    goto LABEL_18;
  }

  if (qword_1003A9F40 != -1)
  {
    sub_10000755C();
  }

  v4 = type metadata accessor for Logger();
  v5 = sub_1001D181C(v4, &unk_1003B8820);
  v6 = static os_log_type_t.default.getter();
  if (sub_10000FFB4(v6))
  {
    v7 = sub_100005924();
    sub_1000089E0(v7);
    sub_100008530(&_mh_execute_header, v8, v9, "EnhancedEmergency: PHAudioCallViewController trying to add media request viewController");
    sub_100005340();
  }

  sub_1000089B0(v10, "addChildViewController:");
  v11 = sub_100034C4C();
  if (!v11)
  {
    __break(1u);
    goto LABEL_20;
  }

  v12 = v11;
  v13 = sub_100007BAC();
  if (!v13)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v14 = v13;
  v15 = sub_10000599C();
  [v15 v16];

  [v1 didMoveToParentViewController:v0];
  v17 = sub_100007BAC();
  if (!v17)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v18 = v17;
  [v17 setTranslatesAutoresizingMaskIntoConstraints:0];

  sub_10014EA98(&unk_1003AAAA0);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1002FB360;
  v20 = sub_100007BAC();
  if (!v20)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v21 = v20;
  v22 = [v20 topAnchor];

  v23 = [v0 callParticipantsViewController];
  v24 = [v23 view];

  if (!v24)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v25 = [v24 bottomAnchor];

  v26 = sub_100008D8C();
  v28 = [v26 v27];

  *(v19 + 32) = v28;
  v29 = sub_100007BAC();
  if (!v29)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v30 = v29;
  v31 = [v29 bottomAnchor];

  v32 = sub_100034C4C();
  if (!v32)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v33 = v32;
  v34 = [v32 bottomAnchor];

  v35 = sub_100008D8C();
  v37 = [v35 v36];

  *(v19 + 40) = v37;
  v38 = sub_100007BAC();
  if (!v38)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v39 = v38;
  v40 = [v38 leadingAnchor];

  v41 = sub_100034C4C();
  if (!v41)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v42 = v41;
  v43 = [v41 leadingAnchor];

  v44 = sub_100008D8C();
  v46 = [v44 v45];

  *(v19 + 48) = v46;
  v47 = sub_100007BAC();
  if (!v47)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v48 = v47;
  v49 = [v47 trailingAnchor];

  v50 = sub_100034C4C();
  if (v50)
  {
    v51 = v50;
    v52 = objc_opt_self();
    v53 = [v51 trailingAnchor];

    v54 = [v49 constraintEqualToAnchor:v53];
    *(v19 + 56) = v54;
    sub_1000064BC(0, &qword_1003AAF70);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v52 activateConstraints:isa];

    v56 = [objc_msgSend(v0 "buttonsViewController")];
    swift_unknownObjectRelease();
    v58[4] = GlassCutoutCirclesOverlayViewController._canShowWhileLocked();
    v58[5] = 0;
    sub_100006C90();
    v58[1] = 1107296256;
    v58[2] = sub_1001CC768;
    v58[3] = &unk_10035E640;
    v57 = _Block_copy(v58);
    [v56 setAccessibilityElementsHiddenBlock:v57];
    _Block_release(v57);

    UIAccessibilityPostNotification(UIAccessibilityLayoutChangedNotification, *&v1[OBJC_IVAR___PHEmergencyMediaRequestViewController_waitingStateTitlelabel]);
    [v0 requestToEnableMediaUploadButton];
LABEL_18:
    sub_100012B1C();
    return;
  }

LABEL_29:
  __break(1u);
}

void sub_1001CDFF4()
{
  sub_100008C44();
  v2 = static Features.shared.getter();
  v3 = Features.isEnhancedEmergencyEnabled.getter();

  if (v3)
  {
    if (qword_1003A9F40 != -1)
    {
      sub_10000755C();
    }

    v4 = type metadata accessor for Logger();
    v5 = sub_1001D181C(v4, &unk_1003B8820);
    v6 = static os_log_type_t.default.getter();
    if (sub_10000FFB4(v6))
    {
      v7 = sub_100005924();
      sub_1000089E0(v7);
      sub_100008530(&_mh_execute_header, v8, v9, "EnhancedEmergency: PHAudioCallViewController trying to remove media request viewController");
      sub_100005340();
    }

    [v1 willMoveToParentViewController:0];
    v10 = sub_100030394();
    if (v10)
    {
      v11 = v10;
      [v10 removeFromSuperview];

      sub_1000089B0(v12, "removeChildViewController:");
      v13 = [objc_msgSend(v0 "buttonsViewController")];
      swift_unknownObjectRelease();
      [v13 setAccessibilityElementsHiddenBlock:0];

      v14 = UIAccessibilityLayoutChangedNotification;

      UIAccessibilityPostNotification(v14, 0);
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1001CE1DC()
{
  sub_100008C44();
  v2 = static Features.shared.getter();
  v3 = Features.isEnhancedEmergencyEnabled.getter();

  if ((v3 & 1) == 0)
  {
    return;
  }

  if (qword_1003A9F40 != -1)
  {
    sub_10000755C();
  }

  v4 = type metadata accessor for Logger();
  v5 = sub_1001D181C(v4, &unk_1003B8820);
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = sub_100005924();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "EnhancedEmergency: PHAudioCallViewController trying to insert webView above participantsView", v7, 2u);
    sub_100005BB8();
  }

  if (![v0 buttonsViewController] || (swift_unknownObjectRelease(), (v8 = objc_msgSend(v0, "callParticipantsViewController")) == 0) || (v8, !objc_msgSend(v0, "buttonsViewController")))
  {
    oslog = Logger.logObject.getter();
    v26 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v26))
    {
      v27 = sub_100005924();
      *v27 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v26, "EnhancedEmergency: PHAudioCallViewController not fully loaded yet, return", v27, 2u);
      sub_100005BB8();
    }

    goto LABEL_33;
  }

  swift_unknownObjectRelease();
  v9 = sub_100025EF4();
  if (!v9)
  {
    __break(1u);
    goto LABEL_37;
  }

  v10 = v9;
  v11 = [v0 callDetailsViewButton];
  v12 = sub_10000599C();
  [v12 v13];

  v14 = sub_100025EF4();
  if (!v14)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v15 = v14;
  v16 = sub_100008934();
  if (!v16)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v17 = v16;
  v18 = [v0 callParticipantsViewController];
  v19 = [v18 view];

  if (!v19)
  {
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v20 = sub_10000599C();
  [v20 v21];

  if ([v0 middleViewState] == 1)
  {
    v22 = sub_100025EF4();
    if (!v22)
    {
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    v23 = v22;
    v24 = [objc_msgSend(v0 "buttonsViewController")];
    swift_unknownObjectRelease();
    v25 = sub_100008934();
    if (!v25)
    {
      __break(1u);
      return;
    }
  }

  else
  {
    if ([v0 middleViewState] != 2)
    {
      goto LABEL_28;
    }

    v28 = sub_100025EF4();
    if (!v28)
    {
LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

    v29 = v28;
    v30 = [v0 keypadViewController];
    v31 = [v30 view];

    if (!v31)
    {
LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

    v32 = sub_100008934();
    if (!v32)
    {
LABEL_45:
      __break(1u);
      goto LABEL_46;
    }

    v33 = v32;
    v34 = sub_10000599C();
    [v34 v35];

    v36 = sub_100025EF4();
    if (!v36)
    {
LABEL_46:
      __break(1u);
      goto LABEL_47;
    }

    v23 = v36;
    v37 = [v0 bottomBar];
    if (!v37)
    {
LABEL_47:
      __break(1u);
      goto LABEL_48;
    }

    v24 = v37;
    v25 = sub_100008934();
    if (!v25)
    {
LABEL_48:
      __break(1u);
      return;
    }
  }

  v38 = v25;
  v39 = sub_10000599C();
  [v39 v40];

LABEL_28:
  v41 = *(v1 + OBJC_IVAR___EmergencyWebRTCViewController_webViewRTCViewControllerWaitingStataTopAnchor);
  if (v41)
  {
    objc_opt_self();
    sub_10014EA98(&unk_1003AAAA0);
    v42 = swift_allocObject();
    *(v42 + 16) = xmmword_1002FBD90;
    *(v42 + 32) = v41;
    sub_1000064BC(0, &qword_1003AAF70);
    v43 = v41;
    isa = Array._bridgeToObjectiveC()().super.isa;

    v45 = sub_100008D8C();
    [v45 v46];
  }

  sub_10014EA98(&unk_1003AAAA0);
  v47 = swift_allocObject();
  *(v47 + 16) = xmmword_1002FBD90;
  v48 = sub_100008934();
  if (!v48)
  {
    goto LABEL_40;
  }

  v49 = v48;
  v50 = [v48 topAnchor];

  v51 = sub_100025EF4();
  if (!v51)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v52 = v51;
  v53 = objc_opt_self();
  v54 = [v52 topAnchor];

  v55 = [v50 constraintEqualToAnchor:v54];
  *(v47 + 32) = v55;
  sub_1000064BC(0, &qword_1003AAF70);
  oslog = Array._bridgeToObjectiveC()().super.isa;

  [v53 activateConstraints:oslog];
LABEL_33:
}

void sub_1001CE838(void *a1)
{
  type metadata accessor for Features();
  v2 = static Features.shared.getter();
  v3 = Features.isEnhancedEmergencyEnabled.getter();

  if ((v3 & 1) == 0)
  {
    sub_100005D80();
    return;
  }

  if (qword_1003A9F40 != -1)
  {
    sub_10000755C();
  }

  v4 = type metadata accessor for Logger();
  v5 = sub_1001D181C(v4, &unk_1003B8820);
  v6 = static os_log_type_t.default.getter();
  if (sub_10000FFB4(v6))
  {
    v7 = sub_100005924();
    sub_1000089E0(v7);
    sub_100008530(&_mh_execute_header, v8, v9, "EnhancedEmergency: PHAudioCallViewController trying to bring webView to front");
    sub_100005340();
  }

  v10 = sub_100030394();
  if (!v10)
  {
    __break(1u);
    goto LABEL_13;
  }

  v11 = v10;
  if (![a1 *(v3 + 3568)])
  {
LABEL_13:
    __break(1u);
    return;
  }

  [v11 bringSubviewToFront:?];

  sub_100005D80();
}

void sub_1001CE9DC()
{
  v1 = v0;
  type metadata accessor for Features();
  v2 = static Features.shared.getter();
  v3 = Features.isEnhancedEmergencyEnabled.getter();

  if (v3)
  {
    if (qword_1003A9F40 != -1)
    {
      sub_10000755C();
    }

    v4 = type metadata accessor for Logger();
    v5 = sub_1001D181C(v4, &unk_1003B8820);
    v6 = static os_log_type_t.default.getter();
    if (sub_100014274(v6))
    {
      v7 = sub_100005924();
      sub_10000539C(v7);
      sub_1000070F8(&_mh_execute_header, v8, v9, "EnhancedEmergency: run animation to fullScreen webView");
      sub_10000558C();
    }

    v10 = objc_opt_self();
    sub_100005C44();
    v11 = swift_allocObject();
    *(v11 + 16) = v1;
    v15[4] = sub_1001D1750;
    v15[5] = v11;
    sub_100006C90();
    v15[1] = 1107296256;
    sub_1000070E4();
    v15[2] = v12;
    v15[3] = &unk_10035E618;
    v13 = _Block_copy(v15);
    v14 = v1;

    [v10 animateWithDuration:v13 animations:0.5];
    _Block_release(v13);
  }
}

void sub_1001CEB30(void *a1)
{
  v2 = [a1 view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = v2;
  [v2 setNeedsLayout];

  v4 = [a1 view];
  if (!v4)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v5 = v4;
  [v4 layoutIfNeeded];
}

void sub_1001CEC18()
{
  v1 = v0;
  type metadata accessor for Features();
  v2 = static Features.shared.getter();
  v3 = Features.isEnhancedEmergencyEnabled.getter();

  if (v3)
  {
    if (qword_1003A9F40 != -1)
    {
      sub_10000755C();
    }

    v4 = type metadata accessor for Logger();
    v5 = sub_1001D181C(v4, &unk_1003B8820);
    v6 = static os_log_type_t.default.getter();
    if (sub_100014274(v6))
    {
      v7 = sub_100005924();
      sub_10000539C(v7);
      sub_1000070F8(&_mh_execute_header, v8, v9, "EnhancedEmergency: PHAudioCallViewController trying to remove intermittent state label");
      sub_10000558C();
    }

    [v1 removeEnhancedEmergencyIntermittentStateLabel];
  }
}

void sub_1001CEDC0()
{
  type metadata accessor for Features();
  v1 = static Features.shared.getter();
  v2 = Features.isEnhancedEmergencyEnabled.getter();

  if (v2)
  {
    if (qword_1003A9F40 != -1)
    {
      sub_10000755C();
    }

    v3 = type metadata accessor for Logger();
    v4 = sub_1001D181C(v3, &unk_1003B8820);
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = sub_100005924();
      sub_10000539C(v6);
      _os_log_impl(&_mh_execute_header, v4, v5, "EnhancedEmergency: PHAudioCallViewController trying to request mediaUploadRequest banner during streaming", v0, 2u);
      sub_10000558C();
    }

    v7 = [objc_opt_self() sharedApplication];
    v8 = [v7 delegate];

    if (v8)
    {
      objc_opt_self();
      v9 = swift_dynamicCastObjCClass();
      if (v9)
      {
        v10 = v9;
        v11 = Logger.logObject.getter();
        v12 = static os_log_type_t.default.getter();
        if (sub_10000FFB4(v12))
        {
          v13 = sub_100005924();
          sub_1000089E0(v13);
          sub_100008530(&_mh_execute_header, v14, v15, "EnhancedEmergency: PHAudioCallViewController about to call showEnhancedEmergencyMediaUploadDuringStreamingHUD");
          sub_100005340();
        }

        v16 = [v10 bannerPresentationManager];
        v17 = direct field offset for CNKBannerPresentationManager.value;
        swift_beginAccess();
        v18 = *&v16[v17];

        BannerPresentationManager.showEnhancedEmergencyMediaUploadDuringStreamingHUD()();
        swift_unknownObjectRelease();
      }

      else
      {

        swift_unknownObjectRelease();
      }
    }
  }
}

void sub_1001CF000()
{
  v1 = [objc_allocWithZone(UINotificationFeedbackGenerator) init];
  [v1 notificationOccurred:0];
  [v0 setMiddleViewState:1 animated:1];
}

void sub_1001CF0BC(const char *a1, void (*a2)(void), void (*a3)(void))
{
  v7 = v3;
  type metadata accessor for Features();
  v8 = static Features.shared.getter();
  v9 = Features.isEnhancedEmergencyEnabled.getter();

  if ((v9 & 1) == 0)
  {
    goto LABEL_19;
  }

  if (qword_1003A9F40 != -1)
  {
    sub_10000755C();
  }

  v10 = type metadata accessor for Logger();
  v11 = sub_1001D181C(v10, &unk_1003B8820);
  v12 = static os_log_type_t.default.getter();
  if (sub_100014274(v12))
  {
    v13 = sub_100005924();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, a1, v13, 2u);
    sub_100005BB8();
  }

  v14 = [objc_opt_self() sharedApplication];
  v15 = [v14 delegate];

  if (!v15)
  {
    goto LABEL_19;
  }

  objc_opt_self();
  v16 = swift_dynamicCastObjCClass();
  if (v16)
  {
    v17 = v16;
    v18 = [v16 bannerPresentationManager];
    v19 = direct field offset for CNKBannerPresentationManager.value;
    swift_beginAccess();
    v20 = *&v18[v19];

    a2();
    v21 = [v7 navigationController];
    if (v21)
    {
      v22 = v21;
      v23 = [v21 topViewController];

      if (v23)
      {
        objc_opt_self();
        if (!swift_dynamicCastObjCClass())
        {
          swift_unknownObjectRelease();

          goto LABEL_19;
        }

        v24 = [v17 currentInCallScene];
        if (v24 && (v25 = v24, v26 = [v24 presentationMode], v25, v26 == 3))
        {
          [v7 hideRTTConversationIfNeeded];
        }

        else
        {
          v28 = [v17 bannerPresentationManager];
          v29 = direct field offset for CNKBannerPresentationManager.value;
          swift_beginAccess();
          v30 = *&v28[v29];

          a3();
        }
      }
    }

    swift_unknownObjectRelease();
LABEL_19:
    sub_100012B1C();
    return;
  }

  sub_100012B1C();

  swift_unknownObjectRelease();
}

uint64_t sub_1001CF484()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  sub_10000688C();
  v37 = v3;
  __chkstk_darwin(v4, v5);
  sub_100005BD0();
  v8 = v7 - v6;
  type metadata accessor for DispatchQoS();
  sub_10000688C();
  v35 = v10;
  v36 = v9;
  __chkstk_darwin(v9, v11);
  sub_100005BD0();
  v14 = v13 - v12;
  v15 = type metadata accessor for DispatchTime();
  sub_10000688C();
  v17 = v16;
  v20 = __chkstk_darwin(v18, v19);
  v22 = &v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20, v23);
  v25 = &v34 - v24;
  v26 = [objc_msgSend(v0 "buttonsViewController")];
  swift_unknownObjectRelease();
  objc_opt_self();
  v27 = swift_dynamicCastObjCClass();
  if (v27)
  {
    [v27 changeVideoStreamingButtonTitleWithIsSharing:0];
  }

  [v1 addEnhancedEmergencyIntermittentStateLabelWithState:0];
  sub_1000064BC(0, &qword_1003AAAB0);
  v28 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  + infix(_:_:)();
  v34 = *(v17 + 8);
  v34(v22, v15);
  sub_100005C44();
  v29 = swift_allocObject();
  *(v29 + 16) = v1;
  aBlock[4] = sub_1001D17F8;
  aBlock[5] = v29;
  sub_10000694C();
  aBlock[1] = 1107296256;
  sub_1000070E4();
  aBlock[2] = v30;
  aBlock[3] = &unk_10035E5C8;
  v31 = _Block_copy(aBlock);
  v32 = v1;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_100158FC0();
  sub_10014EA98(&unk_1003AAAC0);
  sub_100032638();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v31);

  (*(v37 + 8))(v8, v2);
  (*(v35 + 8))(v14, v36);
  return (v34)(v25, v15);
}

uint64_t sub_1001CF8E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a3;
  v37 = a4;
  v35[1] = a2;
  v38 = type metadata accessor for DispatchWorkItemFlags();
  sub_10000688C();
  v41 = v6;
  __chkstk_darwin(v7, v8);
  sub_100005BD0();
  v11 = v10 - v9;
  type metadata accessor for DispatchQoS();
  sub_10000688C();
  v39 = v13;
  v40 = v12;
  __chkstk_darwin(v12, v14);
  sub_100005BD0();
  v17 = v16 - v15;
  v18 = type metadata accessor for DispatchTime();
  v35[0] = v18;
  v19 = *(v18 - 8);
  v21 = __chkstk_darwin(v18, v20);
  v23 = v35 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21, v24);
  v26 = v35 - v25;
  [v4 addEnhancedEmergencyIntermittentStateLabelWithState:a1];
  sub_1000064BC(0, &qword_1003AAAB0);
  v27 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  + infix(_:_:)();
  v28 = *(v19 + 8);
  v28(v23, v18);
  sub_100005C44();
  v29 = swift_allocObject();
  *(v29 + 16) = v4;
  aBlock[4] = v36;
  aBlock[5] = v29;
  sub_10000694C();
  aBlock[1] = 1107296256;
  sub_1000070E4();
  aBlock[2] = v30;
  aBlock[3] = v37;
  v31 = _Block_copy(aBlock);
  v32 = v4;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_100158FC0();
  sub_10014EA98(&unk_1003AAAC0);
  sub_100032638();
  v33 = v38;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v31);

  (*(v41 + 8))(v11, v33);
  (*(v39 + 8))(v17, v40);
  return (v28)(v26, v35[0]);
}

void sub_1001CFC84()
{
  v1 = v0;
  type metadata accessor for Features();
  v2 = static Features.shared.getter();
  v3 = Features.isEnhancedEmergencyEnabled.getter();

  if ((v3 & 1) == 0)
  {
    return;
  }

  v4 = [v1 view];
  if (!v4)
  {
    __break(1u);
    goto LABEL_9;
  }

  v5 = v4;
  v6 = [v1 bottomBar];
  if (!v6)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v7 = v6;
  [v5 bringSubviewToFront:?];
}

void sub_1001CFDA8(char **a1)
{
  v2 = v1;
  if (qword_1003A9F40 != -1)
  {
    sub_10000755C();
  }

  v4 = type metadata accessor for Logger();
  v5 = sub_1001D181C(v4, &unk_1003B8820);
  v6 = static os_log_type_t.default.getter();
  if (sub_100014274(v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v129 = v8;
    *v7 = 136315138;
    v9 = String.init<A>(reflecting:)();
    v11 = sub_100008ADC(v9, v10, &v129);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v5, v6, "EnhancedEmergency: Adding intermittentState label of state %s", v7, 0xCu);
    sub_100005B2C(v8);
    sub_100005BB8();
    sub_10000558C();
  }

  isa = [v2 enhancedEmergencyIntermittentStateScrollView];
  if (isa)
  {
    goto LABEL_11;
  }

  v126 = a1;
  v127 = [objc_allocWithZone(UIScrollView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v127 setTranslatesAutoresizingMaskIntoConstraints:0];
  v13 = [objc_allocWithZone(UIView) init];
  [v13 setTranslatesAutoresizingMaskIntoConstraints:0];
  v14 = [objc_allocWithZone(UILabel) init];
  [v14 setTranslatesAutoresizingMaskIntoConstraints:0];
  v15 = objc_opt_self();
  v16 = [v15 preferredFontForTextStyle:UIFontTextStyleTitle2];
  v17 = sub_100008D8C();
  [v17 v18];

  v128 = v2;
  [v14 setNumberOfLines:0];
  [v14 setTextAlignment:1];
  v19 = objc_opt_self();
  v20 = [v19 secondaryLabelColor];
  v21 = sub_100008D8C();
  [v21 v22];

  v23 = [objc_allocWithZone(UILabel) init];
  [v23 setTranslatesAutoresizingMaskIntoConstraints:0];
  v24 = [v15 preferredFontForTextStyle:UIFontTextStyleTitle2];
  [v23 setFont:v24];

  a1 = v2;
  [v23 setNumberOfLines:0];
  [v23 setTextAlignment:1];
  v25 = [v19 secondaryLabelColor];
  [v23 setTextColor:v25];

  v26 = sub_100007BAC();
  if (!v26)
  {
    __break(1u);
    goto LABEL_35;
  }

  v27 = v26;
  [v26 addSubview:v127];

  [v127 addSubview:v13];
  v28 = sub_10000599C();
  [v28 v29];
  v125 = v13;
  [v13 addSubview:v23];
  [v2 setEnhancedEmergencyIntermittentStateScrollView:v127];
  [v2 setEnhancedEmergencyIntermittentStateLabel:v14];
  [v2 setEnhancedEmergencySecondaryLabel:v23];
  sub_10014EA98(&unk_1003AAAA0);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_1002FDEA0;
  v31 = [v127 topAnchor];
  v32 = sub_100007BAC();
  if (!v32)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v33 = v32;
  v34 = v2;
  v35 = [v32 centerYAnchor];

  v36 = [v31 constraintEqualToAnchor:v35 constant:-30.0];
  *(v30 + 32) = v36;
  v37 = [v127 bottomAnchor];
  v38 = [objc_msgSend(a1 "buttonsViewController")];
  swift_unknownObjectRelease();
  v39 = [v38 topAnchor];

  a1 = &selRef_audioCategory;
  v40 = sub_100008414();

  *(v30 + 40) = v40;
  v41 = [v127 leadingAnchor];
  v42 = [v34 view];
  if (!v42)
  {
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    v129 = a1;
    _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
    __break(1u);
    return;
  }

  v43 = v42;
  v44 = [v42 readableContentGuide];

  v45 = [v44 leadingAnchor];
  v46 = sub_100008414();

  *(v30 + 48) = v46;
  v47 = [v127 trailingAnchor];
  v48 = [v34 view];
  if (!v48)
  {
    goto LABEL_37;
  }

  v49 = v48;
  v124 = objc_opt_self();
  v50 = [v49 readableContentGuide];

  v51 = [v50 trailingAnchor];
  v52 = [v47 constraintEqualToAnchor:v51];

  *(v30 + 56) = v52;
  v53 = [v125 topAnchor];
  v54 = [v127 topAnchor];

  v55 = sub_100008414();
  *(v30 + 64) = v55;
  v56 = [v125 bottomAnchor];
  v57 = [v127 contentLayoutGuide];
  v58 = [v57 bottomAnchor];

  v59 = sub_10000A494();
  v61 = [v59 v60];

  *(v30 + 72) = v61;
  v62 = [v125 leadingAnchor];
  v63 = [v127 contentLayoutGuide];
  v64 = [v63 leadingAnchor];

  v65 = sub_10000A494();
  v67 = [v65 v66];

  *(v30 + 80) = v67;
  v68 = [v125 trailingAnchor];
  v69 = [v127 contentLayoutGuide];
  v70 = [v69 trailingAnchor];

  v71 = sub_10000A494();
  v73 = [v71 v72];

  *(v30 + 88) = v73;
  v74 = [v125 widthAnchor];
  v75 = [v127 frameLayoutGuide];
  v76 = [v75 widthAnchor];

  v77 = sub_10000A494();
  v79 = [v77 v78];

  *(v30 + 96) = v79;
  v80 = [v14 topAnchor];
  v81 = sub_100009614([v125 topAnchor]);

  *(v30 + 104) = v81;
  v82 = [v14 leadingAnchor];
  v83 = sub_100009614([v125 leadingAnchor]);

  *(v30 + 112) = v83;
  v84 = [v14 trailingAnchor];
  v85 = sub_100009614([v125 trailingAnchor]);

  *(v30 + 120) = v85;
  v86 = [v23 topAnchor];
  v87 = [v14 bottomAnchor];

  v88 = sub_10000A494();
  v90 = [v88 v89];

  *(v30 + 128) = v90;
  v91 = [v23 leadingAnchor];
  v92 = sub_100009614([v125 leadingAnchor]);

  *(v30 + 136) = v92;
  v93 = [v23 trailingAnchor];
  v94 = sub_100009614([v125 trailingAnchor]);

  *(v30 + 144) = v94;
  v95 = [v23 bottomAnchor];

  v96 = sub_100009614([v125 bottomAnchor]);
  *(v30 + 152) = v96;
  sub_1000064BC(0, &qword_1003AAF70);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v124 activateConstraints:isa];

  v2 = v128;
  a1 = v126;
LABEL_11:

  v97 = [v2 enhancedEmergencyIntermittentStateScrollView];
  if (v97)
  {
    v98 = v97;
    switch(a1)
    {
      case 0uLL:
        sub_1000064BC(0, &qword_1003AAA98);
        v99 = sub_100005450();
        v100 = [v2 enhancedEmergencyIntermittentStateLabel];
        if (v99)
        {
          v101 = v99;
        }

        else
        {
          v101 = [objc_allocWithZone(UIImage) init];
        }

        v109 = v99;
        sub_1001FD1F8(0x505F4152454D4143, 0xED00004445535541);
        sub_1000069D8();

        v119 = sub_10000C1A0();
        [v119 setAlpha:1.0];

        v113 = sub_10000C1A0();
        v120 = sub_1001FD1F8(0xD00000000000001CLL, 0x80000001002AABF0);
        sub_10021BFD8(v120, v121, v113);
        goto LABEL_30;
      case 1uLL:
        sub_1000064BC(0, &qword_1003AAA98);
        v106 = sub_1001FFAD8();
        v107 = [v2 enhancedEmergencyIntermittentStateLabel];
        if (v106)
        {
          v108 = v106;
        }

        else
        {
          v108 = [objc_allocWithZone(UIImage) init];
        }

        v109 = v106;
        sub_1001FD1F8(0x474E494D55534552, 0xEE004F454449565FLL);
        sub_1000069D8();

        v113 = [v2 enhancedEmergencySecondaryLabel];
        [v113 setAlpha:0.0];
        goto LABEL_30;
      case 2uLL:
        sub_1000064BC(0, &qword_1003AAA98);
        sub_100005450();
        v102 = sub_1001D1844();
        if (a1)
        {
          v103 = a1;
        }

        else
        {
          v103 = [objc_allocWithZone(UIImage) init];
        }

        v109 = a1;
        sub_1001FD1F8(0xD000000000000012, 0x80000001002AABD0);
        sub_1000069D8();

        v110 = [v2 setControlView:?];
        v111 = [objc_opt_self() systemWhiteColor];
        [v110 setTextColor:v111];

        v112 = sub_10000C1A0();
        sub_1001D1864(v112);

        v113 = sub_10000C1A0();
        goto LABEL_25;
      case 3uLL:
        sub_1000064BC(0, &qword_1003AAA98);
        sub_1001FFAD8();
        v104 = sub_1001D1844();
        if (a1)
        {
          v105 = a1;
        }

        else
        {
          v105 = [objc_allocWithZone(UIImage) init];
        }

        v109 = a1;
        sub_1001FD1F8(0x48535F4F544F4850, 0xED0000474E495241);
        sub_1000069D8();

        v114 = [v2 setControlView:?];
        v115 = [objc_opt_self() systemWhiteColor];
        [v114 setTextColor:v115];

        v116 = sub_10000C1A0();
        sub_1001D1864(v116);

        v113 = sub_10000C1A0();
LABEL_25:
        v117 = sub_1001FD1F8(0xD000000000000017, 0x80000001002AABB0);
        sub_10021BFD8(v117, v118, v113);
LABEL_30:

        v122 = [v2 enhancedEmergencyIntermittentStateScrollView];
        if (v122)
        {
          v123 = v122;
          [v122 setAlpha:1.0];
        }

        break;
      default:
        goto LABEL_38;
    }
  }
}

void sub_1001D0E64()
{
  v1 = v0;
  if (qword_1003A9F40 != -1)
  {
    sub_10000755C();
  }

  v2 = type metadata accessor for Logger();
  v3 = sub_1001D181C(v2, &unk_1003B8820);
  v4 = static os_log_type_t.default.getter();
  if (sub_100014274(v4))
  {
    v5 = sub_100005924();
    sub_10000539C(v5);
    sub_1000070F8(&_mh_execute_header, v6, v7, "EnhancedEmergency: removing intermittentState label");
    sub_10000558C();
  }

  v8 = [v1 enhancedEmergencyIntermittentStateScrollView];
  if (v8)
  {
    v9 = v8;
    [v8 setAlpha:0.0];
  }
}

void sub_1001D0FA0()
{
  v1 = [objc_msgSend(v0 "buttonsViewController")];
  swift_unknownObjectRelease();
  v2 = objc_opt_self();
  sub_100005C44();
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  v7[4] = sub_1001D1738;
  v7[5] = v3;
  sub_100006C90();
  v7[1] = 1107296256;
  sub_1000070E4();
  v7[2] = v4;
  v7[3] = &unk_10035E4D8;
  v5 = _Block_copy(v7);
  v6 = v1;

  [v2 animateWithDuration:v5 animations:0.3];
  _Block_release(v5);
}

id sub_1001D10A8(void *a1)
{
  [a1 setAlpha:1.0];
  v3[0] = 0x3FF0000000000000;
  v3[1] = 0;
  v3[2] = 0;
  v3[3] = 0x3FF0000000000000;
  v3[4] = 0;
  v3[5] = 0;
  return [a1 setTransform:v3];
}

void sub_1001D114C()
{
  v1 = [objc_msgSend(v0 "buttonsViewController")];
  swift_unknownObjectRelease();
  CGAffineTransformMakeScale(&v15, 0.01, 0.01);
  tx = v15.tx;
  ty = v15.ty;
  v11 = *&v15.c;
  v12 = *&v15.a;
  [v1 frame];
  v4 = CGRectGetWidth(v16) * 0.4;
  [v1 frame];
  Height = CGRectGetHeight(v17);
  CGAffineTransformMakeTranslation(&v15, v4, Height * 0.6);
  *&t1.a = v12;
  *&t1.c = v11;
  t1.tx = tx;
  t1.ty = ty;
  t2 = v15;
  CGAffineTransformConcat(&v15, &t1, &t2);
  v6 = objc_opt_self();
  v7 = swift_allocObject();
  v8 = *&v15.c;
  *(v7 + 24) = *&v15.a;
  *(v7 + 16) = v1;
  *(v7 + 40) = v8;
  *(v7 + 56) = *&v15.tx;
  *&t1.tx = sub_1001D172C;
  *&t1.ty = v7;
  *&t1.a = _NSConcreteStackBlock;
  *&t1.b = 1107296256;
  *&t1.c = sub_10002E570;
  *&t1.d = &unk_10035E488;
  v9 = _Block_copy(&t1);
  v10 = v1;

  [v6 animateWithDuration:v9 animations:0.2];
  _Block_release(v9);
}

id sub_1001D133C(void *a1, _OWORD *a2)
{
  v3 = a2[1];
  v5[0] = *a2;
  v5[1] = v3;
  v5[2] = a2[2];
  [a1 setTransform:v5];
  return [a1 setAlpha:0.0];
}

id sub_1001D13E4()
{
  v1 = [v0 activeCall];

  return v1;
}

void sub_1001D1460()
{
  v1 = [v0 activeCall];
  v4 = [objc_opt_self() viewControllerForCall:v1];

  if (v4)
  {
    v2 = [v0 navigationController];
    if (v2)
    {
      v3 = v2;
      [v2 pushViewController:v4 animated:1];
    }
  }
}

void sub_1001D1578()
{
  v1 = [v0 navigationController];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 topViewController];

    if (v3)
    {
      objc_opt_self();
      v4 = swift_dynamicCastObjCClass();

      if (v4)
      {
        v5 = [v0 navigationController];
        if (v5)
        {
          v6 = v5;
        }
      }
    }
  }
}

id sub_1001D16B0()
{
  v1 = [v0 audioRouteMenu];

  return v1;
}

unint64_t sub_1001D1784()
{
  result = qword_1003AD2B8;
  if (!qword_1003AD2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AD2B8);
  }

  return result;
}

uint64_t sub_1001D181C(uint64_t a1, uint64_t a2)
{
  sub_100008A14(a1, a2);

  return Logger.logObject.getter();
}

id sub_1001D1844()
{

  return [v0 enhancedEmergencyIntermittentStateLabel];
}

id sub_1001D1864(void *a1)
{

  return [a1 setAlpha:1.0];
}

id sub_1001D1884(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v17 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  sub_10000688C();
  v5 = v4;
  __chkstk_darwin(v6, v7);
  sub_100005BD0();
  v10 = v9 - v8;
  v11 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v11, v12);
  sub_100005BD0();
  v13 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v13 - 8, v14);
  sub_100005BD0();
  v3[OBJC_IVAR___ICSAmbientActivityController_hasStartedMonitoringCalls] = 0;
  *&v3[OBJC_IVAR___ICSAmbientActivityController_currentActivity] = 0;
  v16 = OBJC_IVAR___ICSAmbientActivityController_ambientActivityQueue;
  sub_10000A2EC();
  static DispatchQoS.userInitiated.getter();
  v23 = &_swiftEmptyArrayStorage;
  sub_10002D92C(&qword_1003ABA08, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_10014EA98(&qword_1003ABA10);
  sub_10002D9BC(&qword_1003ABA18, &qword_1003ABA10);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v5 + 104))(v10, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v17);
  *&v3[v16] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *&v3[OBJC_IVAR___ICSAmbientActivityController_callCenter] = a1;
  *&v3[OBJC_IVAR___ICSAmbientActivityController_notificationCenter] = a2;
  *&v3[OBJC_IVAR___ICSAmbientActivityController_sceneManager] = a3;
  v22.receiver = v3;
  v22.super_class = ObjectType;
  return objc_msgSendSuper2(&v22, "init");
}

BOOL sub_1001D1C94@<W0>(_BYTE *a1@<X8>)
{
  result = GlassCutoutCirclesOverlayViewController._canShowWhileLocked()();
  *a1 = result;
  return result;
}

uint64_t sub_1001D1CC0(uint64_t a1)
{
  v2 = sub_100037240();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001D1D38(uint64_t a1)
{
  v2 = sub_10002E990();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001D1D74(uint64_t a1)
{
  v2 = sub_10002E990();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_1001D1DC4()
{
  result = qword_1003AD318;
  if (!qword_1003AD318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AD318);
  }

  return result;
}

unint64_t sub_1001D1E1C()
{
  result = qword_1003AD320;
  if (!qword_1003AD320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AD320);
  }

  return result;
}

unint64_t sub_1001D1E80()
{
  result = qword_1003AD340;
  if (!qword_1003AD340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AD340);
  }

  return result;
}

unint64_t sub_1001D1F08()
{
  result = qword_1003AD398;
  if (!qword_1003AD398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AD398);
  }

  return result;
}

unint64_t sub_1001D1F60()
{
  result = qword_1003AD3A0;
  if (!qword_1003AD3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AD3A0);
  }

  return result;
}

unint64_t sub_1001D1FB8()
{
  result = qword_1003AD3A8;
  if (!qword_1003AD3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AD3A8);
  }

  return result;
}

unint64_t sub_1001D2010()
{
  result = qword_1003AD3B0;
  if (!qword_1003AD3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AD3B0);
  }

  return result;
}

id sub_1001D2070(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v6 = sub_10014EA98(&qword_1003AD438);
  v7 = v6 - 8;
  __chkstk_darwin(v6, v8);
  v10 = &v15 - v9;
  v11 = type metadata accessor for _Glass._GlassVariant();
  (*(*(v11 - 8) + 32))(v10, a1, v11);
  v12 = *(v7 + 56);
  sub_1001D3F70(a2, &v10[v12]);
  *&v2[OBJC_IVAR___PHCallsKeypadViewController____lazy_storage___inputLabel] = 0;
  *&v2[OBJC_IVAR___PHCallsKeypadViewController____lazy_storage___keypad] = 0;
  *&v2[OBJC_IVAR___PHCallsKeypadViewController____lazy_storage___numberFormatter] = 0;
  *&v2[OBJC_IVAR___PHCallsKeypadViewController_inputCancellable] = 0;
  v15.receiver = v2;
  v15.super_class = ObjectType;
  v13 = objc_msgSendSuper2(&v15, "initWithNibName:bundle:", 0, 0);
  [v13 setOverrideUserInterfaceStyle:2];
  sub_1001D21F0(v10, &v10[v12]);

  sub_1000306A4(v10, &qword_1003AD438);
  return v13;
}

void sub_1001D21F0(uint64_t a1, uint64_t a2)
{
  v25 = a1;
  type metadata accessor for _Glass._GlassVariant();
  sub_100006E40();
  v5 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v8, v9);
  v10 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10014EA98(&qword_1003AD420);
  v12 = sub_100006998(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  __chkstk_darwin(v12, v17);
  v19 = &v25 - v18;
  v26 = objc_opt_self();
  v20 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1001D3F00(a2, v19);
  (*(v5 + 16))(v10, v25, v2);
  v21 = (*(v14 + 80) + 24) & ~*(v14 + 80);
  v22 = (v16 + *(v5 + 80) + v21) & ~*(v5 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = v20;
  sub_1001D3F70(v19, v23 + v21);
  (*(v5 + 32))(v23 + v22, v10, v2);
  aBlock[4] = sub_1001D3FE0;
  aBlock[5] = v23;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10002E570;
  aBlock[3] = &unk_10035E9B0;
  v24 = _Block_copy(aBlock);

  [v26 animateWithDuration:v24 animations:0.3];
  _Block_release(v24);
}

void sub_1001D2470()
{
  *(v0 + OBJC_IVAR___PHCallsKeypadViewController____lazy_storage___inputLabel) = 0;
  *(v0 + OBJC_IVAR___PHCallsKeypadViewController____lazy_storage___keypad) = 0;
  *(v0 + OBJC_IVAR___PHCallsKeypadViewController____lazy_storage___numberFormatter) = 0;
  *(v0 + OBJC_IVAR___PHCallsKeypadViewController_inputCancellable) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id sub_1001D2514()
{
  v1 = v0;
  v43.receiver = v0;
  v43.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v43, "viewDidLoad");
  sub_10014EA98(&unk_1003AAAA0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1002FB360;
  v3 = sub_100007888(&OBJC_IVAR___PHCallsKeypadViewController____lazy_storage___inputLabel);
  v4 = [v3 topAnchor];

  result = [v1 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  v6 = result;
  v7 = [result topAnchor];

  v8 = [v4 constraintEqualToAnchor:v7 constant:50.0];
  *(v2 + 32) = v8;
  v9 = OBJC_IVAR___PHCallsKeypadViewController____lazy_storage___inputLabel;
  v10 = [*&v1[OBJC_IVAR___PHCallsKeypadViewController____lazy_storage___inputLabel] leadingAnchor];
  result = [v1 view];
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v11 = result;
  v12 = [result leadingAnchor];

  v13 = [v10 constraintEqualToAnchor:v12 constant:25.0];
  *(v2 + 40) = v13;
  v14 = [*&v1[v9] trailingAnchor];
  result = [v1 view];
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v15 = result;
  v16 = [result trailingAnchor];

  v17 = [v14 constraintEqualToAnchor:v16 constant:-25.0];
  *(v2 + 48) = v17;
  v18 = [*&v1[v9] heightAnchor];
  v19 = sub_1001D2A7C();
  [v19 lineHeight];
  v21 = v20;

  v22 = [v18 constraintGreaterThanOrEqualToConstant:v21];
  *(v2 + 56) = v22;
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1002FB360;
  v24 = sub_1001D2AD0(&OBJC_IVAR___PHCallsKeypadViewController____lazy_storage___keypad, sub_1001D36D0);
  v25 = [v24 topAnchor];

  v26 = [*&v1[v9] bottomAnchor];
  v27 = [v25 constraintEqualToAnchor:v26 constant:40.0];

  *(inited + 32) = v27;
  v28 = OBJC_IVAR___PHCallsKeypadViewController____lazy_storage___keypad;
  v29 = [*&v1[OBJC_IVAR___PHCallsKeypadViewController____lazy_storage___keypad] leadingAnchor];
  result = [v1 view];
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v30 = result;
  v31 = [result leadingAnchor];

  v32 = sub_10000805C("constraintEqualToAnchor:constant:", 36.0);
  *(inited + 40) = v32;
  v33 = [*&v1[v28] trailingAnchor];
  result = [v1 view];
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v34 = result;
  v35 = [result trailingAnchor];

  v36 = sub_10000805C("constraintEqualToAnchor:constant:", -36.0);
  *(inited + 48) = v36;
  v37 = [*&v1[v28] bottomAnchor];
  result = [v1 view];
  if (result)
  {
    v38 = result;
    v39 = [result bottomAnchor];

    v40 = sub_10000805C("constraintEqualToAnchor:constant:", -36.0);
    *(inited + 56) = v40;
    sub_1001D3C60(inited, sub_100017230, sub_1002192F4);
    v41 = objc_opt_self();
    sub_1000064BC(0, &qword_1003AAF70);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v41 activateConstraints:isa];

    return sub_1001D2B34();
  }

LABEL_13:
  __break(1u);
  return result;
}

id sub_1001D2A7C()
{
  result = [objc_opt_self() _preferredFontForTextStyle:UIFontTextStyleTitle1 weight:UIFontWeightSemibold];
  if (!result)
  {
    __break(1u);
  }

  return result;
}

id sub_1001D2AD0(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = a2(v2);
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

uint64_t sub_1001D2B34()
{
  v0 = sub_10014EA98(&qword_1003AE220);
  __chkstk_darwin(v0 - 8, v1);
  v3 = &v27 - v2;
  v4 = type metadata accessor for NSNotificationCenter.Publisher();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4, v6);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10014EA98(&qword_1003AD400);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9, v11);
  v13 = &v27 - v12;
  v14 = sub_10014EA98(&qword_1003AD408);
  v15 = *(v14 - 8);
  v27 = v14;
  v28 = v15;
  __chkstk_darwin(v14, v16);
  v18 = &v27 - v17;
  v19 = [objc_opt_self() defaultCenter];
  v20 = String._bridgeToObjectiveC()();
  NSNotificationCenter.publisher(for:object:)();

  sub_100027D78(&qword_1003B0A90, &type metadata accessor for NSNotificationCenter.Publisher);
  Publisher.compactMap<A>(_:)();
  (*(v5 + 8))(v8, v4);
  sub_1000064BC(0, &qword_1003AAAB0);
  v21 = static OS_dispatch_queue.main.getter();
  v30 = v21;
  v22 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  sub_100006848(v3, 1, 1, v22);
  sub_100027E08(&qword_1003AD410, &qword_1003AD400);
  sub_100027E50();
  Publisher.receive<A>(on:options:)();
  sub_1000306A4(v3, &qword_1003AE220);

  (*(v10 + 8))(v13, v9);
  swift_allocObject();
  v23 = v29;
  swift_unknownObjectWeakInit();
  sub_100027E08(&qword_1003AD418, &qword_1003AD408);
  v24 = v27;
  v25 = Publisher<>.sink(receiveValue:)();

  (*(v28 + 8))(v18, v24);
  *(v23 + OBJC_IVAR___PHCallsKeypadViewController_inputCancellable) = v25;
}

void sub_1001D2FF8(char a1)
{
  v4.receiver = v1;
  v4.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v4, "viewDidDisappear:", a1 & 1);
  v3 = sub_100007888(&OBJC_IVAR___PHCallsKeypadViewController____lazy_storage___inputLabel);
  [v3 setText:0];
}

void sub_1001D30B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v38 = a3;
  v39 = type metadata accessor for _Glass._GlassVariant();
  v37 = *(v39 - 8);
  __chkstk_darwin(v39, v4);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for _Glass._GlassVariant.Size();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7, v9);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10014EA98(&qword_1003AD428);
  __chkstk_darwin(v12, v13);
  v15 = &v37 - v14;
  v16 = sub_10014EA98(&qword_1003AD420);
  v18 = __chkstk_darwin(v16 - 8, v17);
  v20 = &v37 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18, v21);
  v23 = &v37 - v22;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v25 = Strong;
    (*(v8 + 104))(v23, enum case for _Glass._GlassVariant.Size.small(_:), v7);
    sub_100006848(v23, 0, 1, v7);
    v26 = *(v12 + 48);
    sub_1001D3F00(a2, v15);
    sub_1001D3F00(v23, &v15[v26]);
    if (sub_100006AC0(v15, 1, v7) == 1)
    {
      sub_1000306A4(v23, &qword_1003AD420);
      if (sub_100006AC0(&v15[v26], 1, v7) == 1)
      {
        sub_1000306A4(v15, &qword_1003AD420);
        v27 = v39;
        v28 = v37;
LABEL_9:
        static _Glass._GlassVariant.clear.getter();
        v31 = static _Glass._GlassVariant.== infix(_:_:)();
        (*(v28 + 8))(v6, v27);
        if (v31)
        {
          v32 = [v25 view];
          if (v32)
          {
            v33 = v32;
            v34 = &selRef_applySmallClearGlassBackground;
LABEL_15:
            [v33 *v34];

            goto LABEL_16;
          }

          goto LABEL_19;
        }

LABEL_12:
        static _Glass._GlassVariant.regular.getter();
        v35 = static _Glass._GlassVariant.== infix(_:_:)();
        (*(v28 + 8))(v6, v27);
        if ((v35 & 1) == 0)
        {
LABEL_16:

          return;
        }

        v36 = [v25 view];
        if (v36)
        {
          v33 = v36;
          v34 = &selRef_applyRegularGlassBackground;
          goto LABEL_15;
        }

        __break(1u);
LABEL_19:
        __break(1u);
        return;
      }
    }

    else
    {
      sub_1001D3F00(v15, v20);
      if (sub_100006AC0(&v15[v26], 1, v7) != 1)
      {
        (*(v8 + 32))(v11, &v15[v26], v7);
        sub_100027D78(&qword_1003AD430, &type metadata accessor for _Glass._GlassVariant.Size);
        v29 = dispatch thunk of static Equatable.== infix(_:_:)();
        v30 = *(v8 + 8);
        v30(v11, v7);
        sub_1000306A4(v23, &qword_1003AD420);
        v30(v20, v7);
        sub_1000306A4(v15, &qword_1003AD420);
        v27 = v39;
        v28 = v37;
        if ((v29 & 1) == 0)
        {
          goto LABEL_12;
        }

        goto LABEL_9;
      }

      sub_1000306A4(v23, &qword_1003AD420);
      (*(v8 + 8))(v20, v7);
    }

    sub_1000306A4(v15, &qword_1003AD428);
    v27 = v39;
    v28 = v37;
    goto LABEL_12;
  }
}

id sub_1001D35CC(void *a1)
{
  v2 = [objc_allocWithZone(UILabel) init];
  [v2 setTextAlignment:1];
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  v3 = sub_1001D2A7C();
  [v2 setFont:v3];

  [v2 setAdjustsFontSizeToFitWidth:1];
  [v2 setMinimumScaleFactor:0.7];
  [v2 setLineBreakMode:3];
  result = [a1 view];
  if (result)
  {
    v5 = result;
    [result addSubview:v2];

    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1001D36D0(void *a1)
{
  v2 = [objc_allocWithZone(PHInCallKeypadViewController) init];
  [v2 setUsesLargeFormatUI:1];
  v3 = v2;
  v4 = [v3 view];
  if (!v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  v5 = v4;
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];

  [a1 addChildViewController:v3];
  v6 = [a1 view];
  if (!v6)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v7 = v6;
  v8 = [v3 view];
  if (!v8)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v9 = v8;
  [v7 addSubview:v8];

  [v3 didMoveToParentViewController:a1];
  v10 = [v3 view];

  if (v10)
  {

    return;
  }

LABEL_9:
  __break(1u);
}

id sub_1001D3818()
{
  v1 = OBJC_IVAR___PHCallsKeypadViewController____lazy_storage___numberFormatter;
  v2 = *(v0 + OBJC_IVAR___PHCallsKeypadViewController____lazy_storage___numberFormatter);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___PHCallsKeypadViewController____lazy_storage___numberFormatter);
  }

  else
  {
    v4 = [objc_allocWithZone(NSNumberFormatter) init];
    [v4 setNumberStyle:1];
    [v4 setMaximumFractionDigits:0];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t sub_1001D38B4@<X0>(void *a1@<X8>)
{
  Notification.object.getter();
  if (!v3[3])
  {
    result = sub_1000306A4(v3, &unk_1003AAF50);
    goto LABEL_5;
  }

  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
LABEL_5:
    *a1 = 0;
    a1[1] = 0;
  }

  return result;
}

void sub_1001D3938(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_1001D39A4(v1, v2);
  }
}

void sub_1001D39A4(uint64_t a1, void *a2)
{
  v5 = sub_1001D3818();
  v6 = String._bridgeToObjectiveC()();
  v7 = [v5 numberFromString:v6];

  if (v7)
  {
    v8 = objc_opt_self();
    v9 = v7;
    v10 = [v8 localizedStringFromNumber:v9 numberStyle:0];
    a1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    a2 = v11;
  }

  else
  {
  }

  v12 = sub_1001D2AD0(&OBJC_IVAR___PHCallsKeypadViewController____lazy_storage___inputLabel, sub_1001D35CC);
  v13 = sub_1001F8A08(v12);
  if (v14)
  {
    v15 = v13;
  }

  else
  {
    v15 = 0;
  }

  if (v14)
  {
    v16 = v14;
  }

  else
  {
    v16 = 0xE000000000000000;
  }

  v19 = v15;
  v18 = *(v2 + OBJC_IVAR___PHCallsKeypadViewController____lazy_storage___inputLabel);

  v17._countAndFlagsBits = a1;
  v17._object = a2;
  String.append(_:)(v17);

  sub_10021BFD8(v19, v16, v18);
}

uint64_t sub_1001D3C60(uint64_t a1, uint64_t (*a2)(void), void (*a3)(uint64_t, void, uint64_t))
{
  v7 = a2();
  v8 = (a2)(*v3);
  v9 = __OFADD__(v8, v7);
  result = v8 + v7;
  if (v9)
  {
    __break(1u);
    goto LABEL_8;
  }

  sub_1001D3DF8(result);
  v11 = *v3;
  v12 = *v3 & 0xFFFFFFFFFFFFFF8;
  a3(v12 + 8 * *(v12 + 0x10) + 32, (*(v12 + 0x18) >> 1) - *(v12 + 0x10), a1);
  v14 = v13;

  if (v14 < v7)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v14 < 1)
  {
LABEL_6:
    *v3 = v11;
    return result;
  }

  v15 = *(v12 + 16);
  v9 = __OFADD__(v15, v14);
  v16 = v15 + v14;
  if (!v9)
  {
    *(v12 + 16) = v16;
    goto LABEL_6;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_1001D3D20(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(*v1 + 16);
  result = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = sub_1001D3E98(result);
  v6 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  if ((*(v6 + 24) >> 1) - *(v6 + 16) < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  sub_10014EA98(&qword_1003AD440);
  swift_arrayInitWithCopy();

  if (!v3)
  {
LABEL_8:
    *v1 = v6;
    return result;
  }

  v7 = *(v6 + 16);
  v8 = __OFADD__(v7, v3);
  v9 = v7 + v3;
  if (!v8)
  {
    *(v6 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_1001D3DF8(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  _CocoaArrayWrapper.endIndex.getter();
LABEL_9:
  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  *v1 = result;
  return result;
}

uint64_t sub_1001D3E98(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (!result || a1 > *(v3 + 24) >> 1)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    *v1 = result;
  }

  return result;
}

uint64_t sub_1001D3F00(uint64_t a1, uint64_t a2)
{
  v4 = sub_10014EA98(&qword_1003AD420);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001D3F70(uint64_t a1, uint64_t a2)
{
  v4 = sub_10014EA98(&qword_1003AD420);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1001D3FE0()
{
  v1 = sub_10014EA98(&qword_1003AD420);
  sub_100006998(v1);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v5 = *(v4 + 64);
  v6 = *(type metadata accessor for _Glass._GlassVariant() - 8);
  v7 = *(v0 + 16);
  v8 = v0 + ((v3 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  sub_1001D30B8(v7, v0 + v3, v8);
}

id UserFeedbackViewController.init(scoreController:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR___PHUserFeedbackViewController_scoreController] = a1;
  v5.receiver = v1;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, "initWithNibName:bundle:", 0, 0);
}

Swift::Void __swiftcall UserFeedbackViewController.viewDidLoad()()
{
  v1 = v0;
  v26.receiver = v0;
  v26.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v26, "viewDidLoad");
  sub_1001AD464(&v27);
  v2 = *&v0[OBJC_IVAR___PHUserFeedbackViewController_scoreController];
  type metadata accessor for ScoreController();
  sub_1001ADB54();
  v3 = static ObservableObject.environmentStore.getter();
  v30[1] = v28;
  v30[2] = v29;
  v30[0] = v27;
  *&v31 = v3;
  *(&v31 + 1) = v2;
  v25[4] = v27;
  v25[5] = v28;
  v25[6] = v29;
  v25[7] = v31;
  v4 = objc_allocWithZone(sub_10014EA98(&qword_1003AD450));
  v5 = v2;
  sub_1001D4500(v30, v25);
  v6 = UIHostingController.init(rootView:)();
  v7 = [v6 view];
  if (!v7)
  {
    __break(1u);
    goto LABEL_10;
  }

  v8 = v7;
  v9 = [objc_opt_self() clearColor];
  [v8 setBackgroundColor:v9];

  [v1 addChildViewController:v6];
  v10 = [v6 view];
  if (!v10)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v11 = v10;
  v12 = [v1 view];
  if (!v12)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v13 = v12;
  [v12 bounds];
  v15 = v14;

  v16 = [v1 view];
  if (!v16)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v17 = v16;
  [v16 bounds];
  v19 = v18;

  [v11 setFrame:{0.0, 0.0, v15, v19}];
  v20 = [v6 view];
  if (!v20)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v21 = v20;
  [v20 setAutoresizingMask:18];

  v22 = [v1 view];
  if (!v22)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v23 = v22;
  v24 = [v6 view];

  if (v24)
  {
    [v23 addSubview:v24];

    [v6 didMoveToParentViewController:v1];
    sub_1001D4698(v30);
    return;
  }

LABEL_15:
  __break(1u);
}

uint64_t sub_1001D4500(uint64_t a1, uint64_t a2)
{
  v4 = sub_10014EA98(&qword_1003AD458);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id GlassCutoutCirclesOverlayViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = String._bridgeToObjectiveC()();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

uint64_t sub_1001D4698(uint64_t a1)
{
  v2 = sub_10014EA98(&qword_1003AD458);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1001D4724@<X0>(uint64_t a1@<X8>)
{
  *a1 = static VerticalAlignment.center.getter();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v2 = sub_10014EA98(&qword_1003AD4B8);
  sub_1001D4888((a1 + *(v2 + 44)));
  v3 = static Edge.Set.all.getter();
  v4 = a1 + *(sub_10014EA98(&qword_1003AD4C0) + 36);
  *v4 = v3;
  *(v4 + 8) = 0u;
  *(v4 + 24) = 0u;
  *(v4 + 40) = 1;
  v5 = a1 + *(sub_10014EA98(&qword_1003AD4C8) + 36);
  BlurredBackgroundView.init()();
  v6 = static Alignment.center.getter();
  v8 = v7;
  v9 = (v5 + *(sub_10014EA98(&qword_1003AD4D0) + 36));
  *v9 = v6;
  v9[1] = v8;
  v10 = a1 + *(sub_10014EA98(&qword_1003AD4D8) + 36);
  v11 = enum case for RoundedCornerStyle.continuous(_:);
  v12 = type metadata accessor for RoundedCornerStyle();
  (*(*(v12 - 8) + 104))(v10, v11, v12);
  result = sub_10014EA98(&qword_1003AD4E0);
  *(v10 + *(result + 36)) = 256;
  return result;
}

uint64_t sub_1001D4888@<X0>(char *a1@<X8>)
{
  v50 = a1;
  v49 = sub_10014EA98(&qword_1003AD4E8);
  v48 = *(v49 - 8);
  v2 = __chkstk_darwin(v49, v1);
  v47 = &v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2, v4);
  v52 = &v43 - v5;
  v46 = sub_10014EA98(&qword_1003AD4F0);
  v53 = *(v46 - 8);
  v7 = __chkstk_darwin(v46, v6);
  v45 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7, v9);
  v51 = &v43 - v10;
  __dst[0] = sub_1001FD1F8(0xD000000000000013, 0x80000001002AAF30);
  __dst[1] = v11;
  sub_100028A30();
  v44 = Text.init<A>(_:)();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  KeyPath = swift_getKeyPath();
  v19 = swift_getKeyPath();
  v20 = v15 & 1;
  LOBYTE(__dst[0]) = v15 & 1;
  LOBYTE(__src[0]) = 0;
  v21 = static HierarchicalShapeStyle.primary.getter();
  v22 = static Color.primary.getter();
  v23 = swift_getKeyPath();
  v24 = swift_getKeyPath();
  v25 = static Font.subheadline.getter();
  v26 = swift_getKeyPath();
  __src[0] = v44;
  __src[1] = v13;
  LOBYTE(__src[2]) = v20;
  __src[3] = v17;
  __src[4] = KeyPath;
  __src[5] = 0;
  LOBYTE(__src[6]) = 0;
  __src[7] = v19;
  LOWORD(__src[8]) = 256;
  BYTE2(__src[8]) = 1;
  HIDWORD(__src[8]) = v21;
  __src[9] = v23;
  __src[10] = v22;
  __src[11] = v24;
  __src[12] = 0x3FE0000000000000;
  __src[13] = v26;
  __src[14] = v25;
  static Font.Weight.semibold.getter();
  sub_10014EA98(&qword_1003AD4F8);
  sub_1001D5434();
  v27 = v51;
  View.fontWeight(_:)();
  memcpy(__dst, __src, sizeof(__dst));
  sub_1000306A4(__dst, &qword_1003AD4F8);
  sub_10014EA98(&qword_1003AD5A8);
  sub_1001D5910();
  v28 = v52;
  Button.init(action:label:)();
  v29 = *(v53 + 16);
  v30 = v45;
  v31 = v46;
  v29(v45, v27, v46);
  v32 = v48;
  v33 = *(v48 + 16);
  v34 = v47;
  v35 = v28;
  v36 = v49;
  v33(v47, v35, v49);
  v37 = v50;
  v29(v50, v30, v31);
  v38 = sub_10014EA98(&qword_1003AD620);
  v39 = &v37[*(v38 + 48)];
  *v39 = 0;
  v39[8] = 1;
  v33(&v37[*(v38 + 64)], v34, v36);
  v40 = *(v32 + 8);
  v40(v52, v36);
  v41 = *(v53 + 8);
  v41(v51, v31);
  v40(v34, v36);
  return (v41)(v30, v31);
}

void sub_1001D4D98()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = [v0 frontmostCall];

  if (v1)
  {
    type metadata accessor for ConversationControlsManager();
    v2 = v1;
    v3 = ConversationControlsManager.__allocating_init(activeCall:)();
    ConversationControlsManager.stopScreenShare()();
  }
}

uint64_t sub_1001D4E4C@<X0>(uint64_t a1@<X8>)
{
  sub_1001FD1F8(1347376211, 0xE400000000000000);
  sub_100028A30();
  v2 = Text.init<A>(_:)();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  KeyPath = swift_getKeyPath();
  v10 = swift_getKeyPath();
  v11 = v6 & 1;
  v12 = static HierarchicalShapeStyle.primary.getter();
  v13 = swift_getKeyPath();
  v14 = static Font.subheadline.getter();
  __src[0] = v2;
  __src[1] = v4;
  LOBYTE(__src[2]) = v11;
  __src[3] = v8;
  __src[4] = KeyPath;
  __src[5] = 0;
  LOBYTE(__src[6]) = 0;
  __src[7] = v10;
  LOWORD(__src[8]) = 256;
  BYTE2(__src[8]) = 1;
  HIDWORD(__src[8]) = v12;
  __src[9] = v13;
  __src[10] = 0x3FE0000000000000;
  __src[11] = swift_getKeyPath();
  __src[12] = v14;
  static Font.Weight.semibold.getter();
  sub_10014EA98(&qword_1003AD5F8);
  sub_1001D5C54();
  View.fontWeight(_:)();
  memcpy(__dst, __src, 0x68uLL);
  sub_1000306A4(__dst, &qword_1003AD5F8);
  v15 = static Color.indigo.getter();
  v16 = swift_getKeyPath();
  v17 = (a1 + *(sub_10014EA98(&qword_1003AD5F0) + 36));
  *v17 = v16;
  v17[1] = v15;
  LOBYTE(v15) = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v26 = a1 + *(sub_10014EA98(&qword_1003AD5E0) + 36);
  *v26 = v15;
  *(v26 + 8) = v19;
  *(v26 + 16) = v21;
  *(v26 + 24) = v23;
  *(v26 + 32) = v25;
  *(v26 + 40) = 0;
  LOBYTE(v15) = static Edge.Set.vertical.getter();
  EdgeInsets.init(_all:)();
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v35 = a1 + *(sub_10014EA98(&qword_1003AD5D0) + 36);
  *v35 = v15;
  *(v35 + 8) = v28;
  *(v35 + 16) = v30;
  *(v35 + 24) = v32;
  *(v35 + 32) = v34;
  *(v35 + 40) = 0;
  v36 = static Color.white.getter();
  LOBYTE(v16) = static Edge.Set.all.getter();
  v37 = a1 + *(sub_10014EA98(&qword_1003AD5C0) + 36);
  *v37 = v36;
  *(v37 + 8) = v16;
  v38 = a1 + *(sub_10014EA98(&qword_1003AD5A8) + 36);
  v39 = enum case for RoundedCornerStyle.continuous(_:);
  v40 = type metadata accessor for RoundedCornerStyle();
  (*(*(v40 - 8) + 104))(v38, v39, v40);
  result = sub_10014EA98(&qword_1003AD4E0);
  *(v38 + *(result + 36)) = 256;
  return result;
}

UIView __swiftcall ScreenSharingIndicatorView.getView()()
{
  v0 = objc_allocWithZone(sub_10014EA98(&qword_1003AD488));
  v1 = UIHostingController.init(rootView:)();
  result.super.super.isa = [v1 view];
  if (result.super.super.isa)
  {
    isa = result.super.super.isa;
    v4 = [objc_opt_self() clearColor];
    [(objc_class *)isa setBackgroundColor:v4];

    v5 = [v1 view];
    if (v5)
    {

      return v5;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id ScreenSharingIndicatorView.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ScreenSharingIndicatorView();
  return objc_msgSendSuper2(&v2, "init");
}

id ScreenSharingIndicatorView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ScreenSharingIndicatorView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1001D535C()
{
  sub_1000078AC();
  result = EnvironmentValues.font.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1001D53B0()
{
  sub_1000078AC();
  result = EnvironmentValues.foregroundColor.getter();
  *v0 = result;
  return result;
}

unint64_t sub_1001D5434()
{
  result = qword_1003AD500;
  if (!qword_1003AD500)
  {
    sub_100155B7C(&qword_1003AD4F8);
    sub_1001D54EC();
    sub_100027E08(&qword_1003AC2C8, &qword_1003AC2D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AD500);
  }

  return result;
}

unint64_t sub_1001D54EC()
{
  result = qword_1003AD508;
  if (!qword_1003AD508)
  {
    sub_100155B7C(&qword_1003AD510);
    sub_1001D55A4();
    sub_100027E08(&qword_1003AD598, &qword_1003AD5A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AD508);
  }

  return result;
}

unint64_t sub_1001D55A4()
{
  result = qword_1003AD518;
  if (!qword_1003AD518)
  {
    sub_100155B7C(&qword_1003AD520);
    sub_1001D565C();
    sub_100027E08(&qword_1003AC2D8, &qword_1003AEBC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AD518);
  }

  return result;
}

unint64_t sub_1001D565C()
{
  result = qword_1003AD528;
  if (!qword_1003AD528)
  {
    sub_100155B7C(&qword_1003AD530);
    sub_1001D5714();
    sub_100027E08(&qword_1003AD588, &qword_1003AD590);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AD528);
  }

  return result;
}

unint64_t sub_1001D5714()
{
  result = qword_1003AD538;
  if (!qword_1003AD538)
  {
    sub_100155B7C(&qword_1003AD540);
    sub_1001D57A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AD538);
  }

  return result;
}

unint64_t sub_1001D57A0()
{
  result = qword_1003AD548;
  if (!qword_1003AD548)
  {
    sub_100155B7C(&qword_1003AD550);
    sub_1001D5858();
    sub_100027E08(&qword_1003AD578, &qword_1003AD580);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AD548);
  }

  return result;
}

unint64_t sub_1001D5858()
{
  result = qword_1003AD558;
  if (!qword_1003AD558)
  {
    sub_100155B7C(&qword_1003AD560);
    sub_100027E08(&qword_1003AD568, &qword_1003AD570);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AD558);
  }

  return result;
}

unint64_t sub_1001D5910()
{
  result = qword_1003AD5B0;
  if (!qword_1003AD5B0)
  {
    sub_100155B7C(&qword_1003AD5A8);
    sub_1001D59C8();
    sub_100027E08(&qword_1003AD618, &qword_1003AD4E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AD5B0);
  }

  return result;
}

unint64_t sub_1001D59C8()
{
  result = qword_1003AD5B8;
  if (!qword_1003AD5B8)
  {
    sub_100155B7C(&qword_1003AD5C0);
    sub_1001D5ADC(&qword_1003AD5C8, &qword_1003AD5D0, &unk_1002FE5F0, sub_1001D5AAC);
    sub_100027E08(&qword_1003AC2E0, &qword_1003AC2E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AD5B8);
  }

  return result;
}

uint64_t sub_1001D5ADC(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100155B7C(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1001D5B60()
{
  result = qword_1003AD5E8;
  if (!qword_1003AD5E8)
  {
    sub_100155B7C(&qword_1003AD5F0);
    sub_100155B7C(&qword_1003AD5F8);
    sub_1001D5C54();
    swift_getOpaqueTypeConformance2();
    sub_100027E08(&qword_1003AC2D8, &qword_1003AEBC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AD5E8);
  }

  return result;
}

unint64_t sub_1001D5C54()
{
  result = qword_1003AD600;
  if (!qword_1003AD600)
  {
    sub_100155B7C(&qword_1003AD5F8);
    sub_1001D5D0C();
    sub_100027E08(&qword_1003AC2C8, &qword_1003AC2D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AD600);
  }

  return result;
}

unint64_t sub_1001D5D0C()
{
  result = qword_1003AD608;
  if (!qword_1003AD608)
  {
    sub_100155B7C(&qword_1003AD610);
    sub_1001D565C();
    sub_100027E08(&qword_1003AD598, &qword_1003AD5A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AD608);
  }

  return result;
}

unint64_t sub_1001D5DC4()
{
  result = qword_1003AD628;
  if (!qword_1003AD628)
  {
    sub_100155B7C(&qword_1003AD4D8);
    sub_1001D5E7C();
    sub_100027E08(&qword_1003AD618, &qword_1003AD4E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AD628);
  }

  return result;
}

unint64_t sub_1001D5E7C()
{
  result = qword_1003AD630;
  if (!qword_1003AD630)
  {
    sub_100155B7C(&qword_1003AD4C8);
    sub_1001D5F34();
    sub_100027E08(&unk_1003AD650, &qword_1003AD4D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AD630);
  }

  return result;
}

unint64_t sub_1001D5F34()
{
  result = qword_1003AD638;
  if (!qword_1003AD638)
  {
    sub_100155B7C(&qword_1003AD4C0);
    sub_100027E08(&qword_1003AD640, &qword_1003AD648);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AD638);
  }

  return result;
}

void *sub_1001D6020()
{
  v1 = *(v0 + OBJC_IVAR____TtC13InCallService20AmbientSceneDelegate_window);
  v2 = v1;
  return v1;
}

uint64_t sub_1001D6168()
{
  v1 = *(v0 + OBJC_IVAR____TtC13InCallService20AmbientSceneDelegate_sceneDidDisconnectBlock);
  sub_10017A4B4(v1);
  return v1;
}

uint64_t sub_1001D6250(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC13InCallService20AmbientSceneDelegate_sceneDidDisconnectBlock);
  v4 = *(v2 + OBJC_IVAR____TtC13InCallService20AmbientSceneDelegate_sceneDidDisconnectBlock);
  *v3 = a1;
  v3[1] = a2;
  return sub_1000081F4(v4);
}

void sub_1001D6270(void *a1)
{
  v8 = v1;
  v10 = type metadata accessor for DispatchPredicate();
  v11 = *(v10 - 1);
  __chkstk_darwin(v10, v12);
  v14 = (&v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10000A2EC();
  *v14 = static OS_dispatch_queue.main.getter();
  (*(v11 + 104))(v14, enum case for DispatchPredicate.onQueue(_:), v10);
  v15 = _dispatchPreconditionTest(_:)();
  (*(v11 + 8))(v14, v10);
  if ((v15 & 1) == 0)
  {
    __break(1u);
LABEL_21:
    swift_once();
    goto LABEL_13;
  }

  type metadata accessor for ActivityScene();
  v16 = swift_dynamicCastClass();
  if (!v16)
  {
    return;
  }

  v17 = v16;
  v18 = objc_opt_self();
  v19 = a1;
  v20 = [v18 sharedApplication];
  v21 = [v20 delegate];

  if (!v21)
  {

    return;
  }

  objc_opt_self();
  v22 = swift_dynamicCastObjCClass();
  if (!v22)
  {

    swift_unknownObjectRelease();
    return;
  }

  v23 = v22;
  v24 = objc_allocWithZone(type metadata accessor for SecureWindow());
  v2 = v19;
  v25 = [v24 initWithWindowScene:v17];
  v26 = *&v8[OBJC_IVAR____TtC13InCallService20AmbientSceneDelegate_window];
  *&v8[OBJC_IVAR____TtC13InCallService20AmbientSceneDelegate_window] = v25;
  v27 = v25;

  v8 = [objc_allocWithZone(ICSCallDisplayStyleManager) init];
  [v8 setCallDisplayStyle:3];
  v28 = [v17 session];
  v29 = [v28 persistentIdentifier];

  if (!v29)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v29 = String._bridgeToObjectiveC()();
  }

  [v8 setSceneSessionIdentifier:v29];

  [v8 setSceneType:5];
  [v23 prepareForAmbientScene:v17];
  [v23 setIsPresentingAmbient:1];
  v14 = v27;
  v30 = [v17 coordinateSpace];

  [v30 bounds];
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v38 = v37;
  swift_unknownObjectRelease();
  [v14 setFrame:{v32, v34, v36, v38}];

  v39 = [objc_allocWithZone(PHInCallRemoteAlertShellViewController) initWithCallDisplayStyleManager:v8];
  [v14 setRootViewController:v39];

  [v14 makeKeyAndVisible];
  v10 = &selRef_openDialRequestBlock;
  v40 = [v14 rootViewController];
  if (!v40)
  {

    swift_unknownObjectRelease();
    return;
  }

  v41 = v40;
  v42 = [v40 view];

  if (!v42)
  {
    __break(1u);
    return;
  }

  [v42 safeAreaInsets];
  v4 = v43;
  v5 = v44;
  v6 = v45;
  v7 = v46;

  if (v4 > v6)
  {
    v3 = v4;
  }

  else
  {
    v3 = v6;
  }

  if (qword_1003A9F40 != -1)
  {
    goto LABEL_21;
  }

LABEL_13:
  v63 = v5 - v4;
  v47 = type metadata accessor for Logger();
  sub_100008A14(v47, &unk_1003B8820);
  v48 = Logger.logObject.getter();
  v49 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    v68 = v61;
    *v50 = 136315650;
    v64 = v63;
    v65 = v3 - v5;
    v66 = v7 - v6;
    v67 = v3 - v7;
    type metadata accessor for UIEdgeInsets(0);
    v62 = v2;
    v51 = String.init<A>(reflecting:)();
    v53 = sub_100008ADC(v51, v52, &v68);

    *(v50 + 4) = v53;
    *(v50 + 12) = 2080;
    v64 = v5;
    v65 = v3;
    v66 = v7;
    v67 = v3;
    v54 = String.init<A>(reflecting:)();
    v56 = sub_100008ADC(v54, v55, &v68);

    *(v50 + 14) = v56;
    *(v50 + 22) = 2080;
    v64 = v4;
    v65 = v5;
    v66 = v6;
    v67 = v7;
    v57 = String.init<A>(reflecting:)();
    v59 = sub_100008ADC(v57, v58, &v68);
    v10 = &selRef_openDialRequestBlock;

    *(v50 + 24) = v59;
    v2 = v62;
    _os_log_impl(&_mh_execute_header, v48, v49, "Updating additional safe area insets to be %s based on activitySceneEdgeInsets %s and rootVCSafeAreaInsets %s", v50, 0x20u);
    swift_arrayDestroy();
  }

  v60 = [v14 v10[496]];
  [v60 setAdditionalSafeAreaInsets:{v63, v3 - v5, v7 - v6, v3 - v7}];

  swift_unknownObjectRelease();
}

void sub_1001D697C()
{
  v1 = v0;
  v2 = [objc_opt_self() sharedApplication];
  v3 = [v2 delegate];

  if (v3)
  {
    objc_opt_self();
    v4 = swift_dynamicCastObjCClass();
    if (v4)
    {
      v5 = v4;
      v6 = *(v1 + OBJC_IVAR____TtC13InCallService20AmbientSceneDelegate_sceneDidDisconnectBlock);
      if (v6)
      {

        v6(v7);
        sub_1000081F4(v6);
      }

      v8 = *(v1 + OBJC_IVAR____TtC13InCallService20AmbientSceneDelegate_window);
      *(v1 + OBJC_IVAR____TtC13InCallService20AmbientSceneDelegate_window) = 0;

      [v5 transitionFromAmbientScene];
    }

    swift_unknownObjectRelease();
  }
}

void sub_1001D6B48(uint64_t a1, char a2)
{
  v3 = [objc_opt_self() sharedApplication];
  v4 = [v3 delegate];

  if (v4)
  {
    objc_opt_self();
    v5 = swift_dynamicCastObjCClass();
    if (v5)
    {
      [v5 setIsPresentingAmbient:a2 & 1];
    }

    swift_unknownObjectRelease();
  }
}

id sub_1001D6C5C()
{
  ObjectType = swift_getObjectType();
  *&v0[OBJC_IVAR____TtC13InCallService20AmbientSceneDelegate_window] = 0;
  v2 = &v0[OBJC_IVAR____TtC13InCallService20AmbientSceneDelegate_sceneDidDisconnectBlock];
  *v2 = 0;
  *(v2 + 1) = 0;
  v4.receiver = v0;
  v4.super_class = ObjectType;
  return objc_msgSendSuper2(&v4, "init");
}

void sub_1001D6DE8(void *a1)
{
  swift_unknownObjectWeakAssign();
}

Class sub_1001D6E90(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3();
  sub_100162160();
  v3.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

void sub_1001D6F14(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  sub_100162160();
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = a1;
  a4(v6);
}

void sub_1001D6FA0(uint64_t a1, void *a2)
{
  sub_1001D6FE4();
  *(v2 + *a2) = a1;

  sub_1001D70E0();
}

void sub_1001D6FE4()
{
  v1 = *(v0 + OBJC_IVAR___FTConstraintsToggle_constraintsStatePrimary);
  v2 = sub_100017230(v1);

  for (i = 0; v2 != i; ++i)
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (i >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_15;
      }

      v4 = *(v1 + 8 * i + 32);
    }

    v5 = v4;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_15:
      __break(1u);
      return;
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v7 = Strong;
      [Strong removeConstraint:v5];
    }
  }
}

void sub_1001D70E0()
{
  v0 = objc_opt_self();
  sub_100162160();

  isa = Array._bridgeToObjectiveC()().super.isa;

  [v0 activateConstraints:isa];

  sub_1001D721C();
}

void sub_1001D721C()
{
  if (*(v0 + OBJC_IVAR___FTConstraintsToggle__usingSecondaryConstraints))
  {
    v1 = OBJC_IVAR___FTConstraintsToggle_constraintsStatePrimary;
  }

  else
  {
    v1 = OBJC_IVAR___FTConstraintsToggle_constraintsStateSecondary;
  }

  v2 = *(v0 + v1);
  if (*(v0 + OBJC_IVAR___FTConstraintsToggle__usingSecondaryConstraints))
  {
    v3 = OBJC_IVAR___FTConstraintsToggle_constraintsStateSecondary;
  }

  else
  {
    v3 = OBJC_IVAR___FTConstraintsToggle_constraintsStatePrimary;
  }

  v4 = *(v0 + v3);

  v5 = sub_100017230(v2);
  for (i = 0; v5 != i; ++i)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (i >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_27;
      }

      v7 = *(v2 + 8 * i + 32);
    }

    v8 = v7;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
      return;
    }

    [v7 setActive:0];
  }

  v9 = sub_100017230(v4);
  for (j = 0; v9 != j; ++j)
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (j >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_29;
      }

      v11 = *(v4 + 8 * j + 32);
    }

    v12 = v11;
    if (__OFADD__(j, 1))
    {
      goto LABEL_28;
    }

    [v11 setActive:1];
  }
}

id sub_1001D7454()
{
  swift_unknownObjectWeakInit();
  *&v0[OBJC_IVAR___FTConstraintsToggle_constraintsStatePrimary] = &_swiftEmptyArrayStorage;
  *&v0[OBJC_IVAR___FTConstraintsToggle_constraintsStateSecondary] = &_swiftEmptyArrayStorage;
  v0[OBJC_IVAR___FTConstraintsToggle__usingSecondaryConstraints] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ConstraintsToggle();
  return objc_msgSendSuper2(&v2, "init");
}

id sub_1001D74EC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ConstraintsToggle();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t getEnumTagSinglePayload for AnsweredBannerCoreAnalyticsView(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
    if (a2 + 1 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 1) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for AnsweredBannerCoreAnalyticsView(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1001D777C()
{
  if (v0[9])
  {
    v1 = v0[9];
  }

  else
  {
    v2 = v0;
    v3 = v0[3];
    v4 = v0[4];
    Strong = swift_unknownObjectWeakLoadStrong();
    type metadata accessor for AudioCallServicesManager();
    swift_allocObject();
    v1 = AudioCallServicesManager.init(call:callCenter:presentingViewController:)(v3, v4, Strong);
    v2[9] = v1;
    v6 = v3;
    v7 = v4;
  }

  return v1;
}

uint64_t sub_1001D7828(void *a1, void *a2, void *a3, double a4)
{
  v5 = v4;
  *(v5 + 64) = 0;
  swift_unknownObjectWeakInit();
  *(v5 + 72) = 0;
  *(v5 + 80) = [objc_allocWithZone(CNKCallParticipantLabelDescriptorFactory) init];
  *(v5 + 88) = 1;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  *(v5 + 32) = a3;
  *(v5 + 40) = a4;
  type metadata accessor for AudioCallModel();
  v10 = a1;
  v11 = a2;
  v12 = a3;
  *(v5 + 48) = AudioCallModel.__allocating_init()();
  v13 = [objc_opt_self() defaultCenter];
  [v13 addObserver:v5 selector:"callStatusChanged:" name:TUCallCenterCallStatusChangedNotification object:0];

  v14 = [objc_opt_self() oneSecondTimer];
  [v14 addObserver:v5 selector:"secondTickNotification:"];

  return v5;
}

uint64_t sub_1001D7980()
{
  v0 = sub_10014EA98(&qword_1003AD910);
  v1 = sub_100005568(v0);
  __chkstk_darwin(v1, v2);
  sub_1001D8218(&v5 - v3);
  dispatch thunk of AudioCallModel.controlsState.setter();
  return sub_1001D7A14();
}

uint64_t sub_1001D7A14()
{
  v1 = sub_10014EA98(&qword_1003AD918);
  v2 = sub_100005568(v1);
  __chkstk_darwin(v2, v3);
  v5 = v29 - v4;
  v6 = sub_10014EA98(&qword_1003AD920);
  v7 = sub_100005568(v6);
  __chkstk_darwin(v7, v8);
  v10 = v29 - v9;
  v11 = type metadata accessor for ParticipantDetailsState();
  sub_10000688C();
  v13 = v12;
  v16 = __chkstk_darwin(v14, v15);
  v18 = v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16, v19);
  v21 = v29 - v20;
  if ([*(v0 + 24) status] == 4 && !objc_msgSend(*(v0 + 16), "callDisplayStyle"))
  {
    dispatch thunk of AudioCallModel.participantDetailsState.getter();
    if (sub_100006AC0(v10, 1, v11) == 1)
    {
      sub_100008360(v10, &qword_1003AD920);
    }

    else
    {
      (*(v13 + 32))(v21, v10, v11);
      (*(v13 + 16))(v18, v21, v11);
      if ((*(v13 + 88))(v18, v11) == enum case for ParticipantDetailsState.default(_:))
      {
        (*(v13 + 96))(v18, v11);
        v22 = *(v18 + 1);
        v29[1] = *v18;

        sub_10017A4B4(v22);
        sub_1001D777C();
        v23 = AudioCallServicesManager.declineControlService.getter();

        v29[10] = type metadata accessor for DeclineControlService();
        v29[11] = sub_1001D8F70(&qword_1003AD928, type metadata accessor for DeclineControlService);
        v29[7] = v23;
        v24 = AudioCallServicesManager.acceptControlService.getter();
        v29[5] = type metadata accessor for AcceptControlService();
        v29[6] = sub_1001D8F70(&unk_1003AD930, type metadata accessor for AcceptControlService);
        v29[2] = v24;
        IncomingAudioCallBannerConfiguration.init(participantDetails:avatarView:declineControlService:acceptControlService:)();
        v25 = type metadata accessor for IncomingAudioCallBannerConfiguration();
        sub_100006848(v5, 0, 1, v25);
        dispatch thunk of AudioCallModel.incomingAudioCallBannerConfiguration.setter();
        sub_1000081F4(v22);

        return (*(v13 + 8))(v21, v11);
      }

      v27 = *(v13 + 8);
      v27(v21, v11);
      v27(v18, v11);
    }
  }

  v28 = type metadata accessor for IncomingAudioCallBannerConfiguration();
  sub_100006848(v5, 1, 1, v28);
  return dispatch thunk of AudioCallModel.incomingAudioCallBannerConfiguration.setter();
}

void sub_1001D7EDC()
{
  v1 = sub_10014EA98(&qword_1003AD910);
  v2 = sub_100005568(v1);
  v4 = __chkstk_darwin(v2, v3);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4, v7);
  v9 = &v22 - v8;
  v10 = type metadata accessor for ControlsState();
  sub_10000688C();
  v12 = v11;
  __chkstk_darwin(v13, v14);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v0 + 24);
  Notification.object.getter();
  if (!v25)
  {
    v20 = &unk_1003AAF50;
    v21 = &v24;
LABEL_7:
    sub_100008360(v21, v20);
    return;
  }

  sub_1001A7AEC();
  if (swift_dynamicCast())
  {
    v18 = v23;
    v19 = [v23 isEqualToCall:v17];

    if (v19)
    {
      sub_1001D8218(v9);
      if (sub_100006AC0(v9, 1, v10) != 1)
      {
        (*(v12 + 32))(v16, v9, v10);
        (*(v12 + 16))(v6, v16, v10);
        sub_100006848(v6, 0, 1, v10);
        dispatch thunk of AudioCallModel.controlsState.setter();
        (*(v12 + 8))(v16, v10);
        return;
      }

      v20 = &qword_1003AD910;
      v21 = v9;
      goto LABEL_7;
    }
  }
}

uint64_t sub_1001D8218@<X0>(unint64_t a1@<X8>)
{
  v3 = *(v1 + 24);
  v4 = &selRef_setUpFirstAndLastNameLabelsIfPossible;
  v5 = [v3 status];
  if (v5 > 6)
  {
    if (qword_1003A9F40 == -1)
    {
      goto LABEL_34;
    }

    goto LABEL_92;
  }

  if (((1 << v5) & 0x65) != 0)
  {
    goto LABEL_3;
  }

  if (((1 << v5) & 0xA) == 0)
  {
    sub_1001D777C();
    sub_1001E57B0(7, &v123);

    if (v125)
    {
      sub_1000304E0(&v123, v152);

      sub_1001E57B0(1, &v166);

      if (v167)
      {
        sub_1000304E0(&v166, &v123);

        sub_1001E57B0(9, &v164);

        if (v165)
        {
          sub_1000304E0(&v164, &v166);

          sub_1001E57B0(24, &v162);

          if (v163)
          {
            sub_1000304E0(&v162, &v164);
            type metadata accessor for ControlGridViewConfiguration();
            sub_10015E008(v152, &v162);
            v161 = 0;
            memset(v160, 0, sizeof(v160));
            sub_10015E008(&v123, v159);
            v23 = static ControlGridViewConfiguration.bottom(arrangement:width:)();
            sub_100008360(v159, &qword_1003AD8F0);
            sub_100008360(v160, &qword_1003AD8F0);
            sub_100008360(&v162, &qword_1003AD8F0);
            type metadata accessor for SupplementaryControlViewConfiguration();
            v24 = static SupplementaryControlViewConfiguration.default(arrangement:)();
            sub_100005B2C(&v164);
            sub_100005B2C(&v166);
            sub_100005B2C(&v123);
            sub_100005B2C(v152);
            *a1 = v23;
            *(a1 + 8) = v24;
            v25 = enum case for ControlsState.compositeGrid(_:);
            v26 = type metadata accessor for ControlsState();
            sub_1000058E8();
            (*(v27 + 104))(a1, v25, v26);
            v28 = a1;
LABEL_83:
            v85 = 0;
            v61 = v26;
            return sub_100006848(v28, v85, 1, v61);
          }

          sub_100005B2C(&v166);
          sub_100005B2C(&v123);
          sub_100005B2C(v152);
          v33 = &v162;
        }

        else
        {
LABEL_58:
          sub_100005B2C(&v123);
          sub_100005B2C(v152);
          v33 = &v164;
        }
      }

      else
      {
        sub_100005B2C(v152);
        v33 = &v166;
      }
    }

    else
    {
      v33 = &v123;
    }

    sub_100008360(v33, &qword_1003AD8F0);
    v61 = type metadata accessor for ControlsState();
    v28 = a1;
LABEL_89:
    v85 = 1;
    return sub_100006848(v28, v85, 1, v61);
  }

  if ([v3 isScreening])
  {
    goto LABEL_3;
  }

  v8 = objc_opt_self();
  result = sub_1001D8E94(v8);
  if (!result)
  {
LABEL_101:
    __break(1u);
    return result;
  }

  v9 = result;
  v91 = a1;
  v10 = *(result + 16);
  if (!v10)
  {

    v3 = &_swiftEmptyArrayStorage;
LABEL_39:
    result = sub_1001D777C();
    if (v3[2])
    {
      if (*(v3[4] + 16))
      {
        Strong = swift_unknownObjectWeakLoadStrong();
        v35 = Strong;
        if (Strong)
        {
          sub_100009634();
          sub_10000C46C();
        }

        else
        {
          sub_1000078C0();
        }

        v153[0] = v44;
        sub_100006E58(v36, v37, v38, v39, v40, v41, v42, v43, v86, v91, v93, v98, v103, v108, v113, v118, v123, *(&v123 + 1), v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151, v35);

        sub_100008360(v152, &qword_1003AD8F8);
        if (!v125)
        {
          goto LABEL_55;
        }

        result = sub_1000304E0(&v123, &v166);
        if (*(v3[4] + 16) >= 2uLL)
        {
          if (swift_unknownObjectWeakLoadStrong())
          {
            sub_100009634();
            sub_10000C46C();
          }

          else
          {
            sub_1000078C0();
          }

          v45 = sub_100008078();
          sub_100006E58(v45, v46, v47, v48, v49, v50, v51, v52, v87, v92, v94, v99, v104, v109, v114, v119, v123, *(&v123 + 1), v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152[0]);

          sub_100008360(v152, &qword_1003AD8F8);
          if (v125)
          {
            result = sub_1000304E0(&v123, &v164);
            if (*(v3[4] + 16) >= 3uLL)
            {
              if (swift_unknownObjectWeakLoadStrong())
              {
                sub_100009634();
                sub_10000C46C();
              }

              else
              {
                sub_1000078C0();
              }

              v53 = sub_100008078();
              sub_100006E58(v53, v54, v55, v56, v57, v58, v59, v60, v88, v92, v95, v100, v105, v110, v115, v120, v123, *(&v123 + 1), v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152[0]);

              sub_100008360(v152, &qword_1003AD8F8);
              if (!v125)
              {

LABEL_87:
                sub_100005B2C(&v164);
                sub_100005B2C(&v166);
                goto LABEL_88;
              }

              result = sub_1000304E0(&v123, &v162);
              if (v3[2] >= 2uLL)
              {
                if (*(v3[5] + 16))
                {
                  if (swift_unknownObjectWeakLoadStrong())
                  {
                    sub_100009634();
                    sub_10000C46C();
                  }

                  else
                  {
                    sub_1000078C0();
                  }

                  v62 = sub_100008078();
                  sub_100006E58(v62, v63, v64, v65, v66, v67, v68, v69, v89, v92, v96, v101, v106, v111, v116, v121, v123, *(&v123 + 1), v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152[0]);

                  sub_100008360(v152, &qword_1003AD8F8);
                  if (!v125)
                  {

LABEL_86:
                    sub_100005B2C(&v162);
                    goto LABEL_87;
                  }

                  result = sub_1000304E0(&v123, v160);
                  if (*(v3[5] + 16) >= 2uLL)
                  {
                    if (swift_unknownObjectWeakLoadStrong())
                    {
                      sub_100009634();
                      sub_10000C46C();
                    }

                    else
                    {
                      sub_1000078C0();
                    }

                    v70 = sub_100008078();
                    sub_100006E58(v70, v71, v72, v73, v74, v75, v76, v77, v90, v92, v97, v102, v107, v112, v117, v122, v123, *(&v123 + 1), v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152[0]);

                    sub_100008360(v152, &qword_1003AD8F8);
                    if (!v125)
                    {

LABEL_85:
                      sub_100005B2C(v160);
                      goto LABEL_86;
                    }

                    sub_1000304E0(&v123, v159);
                    v78 = v3[5];

                    if (*(v78 + 16) >= 3uLL)
                    {
                      v79 = *(v78 + 48);

                      v80 = swift_unknownObjectWeakLoadStrong();
                      if (v80)
                      {
                        swift_getObjectType();
                        sub_10000C46C();
                      }

                      else
                      {
                        sub_1000078C0();
                      }

                      *v152 = v80;
                      v153[0] = v81;
                      sub_1001E5BA0(v79, v152, &v123);

                      sub_100008360(v152, &qword_1003AD8F8);
                      if (v125)
                      {
                        sub_1000304E0(&v123, v158);
                        sub_10015E008(&v166, v152);
                        sub_10015E008(&v164, v153);
                        sub_10015E008(&v162, &v154);
                        sub_10015E008(v160, &v155);
                        sub_10015E008(v159, &v156);
                        sub_10015E008(v158, &v157);
                        type metadata accessor for ControlGridViewConfiguration();
                        sub_1001D8F00(v152, &v123);
                        v82 = static ControlGridViewConfiguration.sixUp(arrangement:width:)();
                        sub_100008360(v152, &qword_1003AD900);
                        sub_100005B2C(v158);
                        sub_100005B2C(v159);
                        sub_100005B2C(v160);
                        sub_100005B2C(&v162);
                        sub_100005B2C(&v164);
                        sub_100005B2C(&v166);
                        sub_100005B2C(&v147);
                        sub_100005B2C(&v142);
                        sub_100005B2C(&v137);
                        sub_100005B2C(&v132);
                        sub_100005B2C(&v127);
                        sub_100005B2C(&v123);
                        *v92 = v82;
                        v83 = enum case for ControlsState.controlGrid(_:);
                        v26 = type metadata accessor for ControlsState();
                        sub_1000058E8();
                        (*(v84 + 104))(v92, v83, v26);
                        v28 = v92;
                        goto LABEL_83;
                      }

                      sub_100005B2C(v159);
                      goto LABEL_85;
                    }

                    goto LABEL_100;
                  }

LABEL_99:
                  __break(1u);
LABEL_100:
                  __break(1u);
                  goto LABEL_101;
                }

LABEL_98:
                __break(1u);
                goto LABEL_99;
              }

LABEL_97:
              __break(1u);
              goto LABEL_98;
            }

LABEL_96:
            __break(1u);
            goto LABEL_97;
          }

          sub_100005B2C(&v166);
LABEL_55:

LABEL_88:
          sub_100008360(&v123, &qword_1003AD8F0);
          v61 = type metadata accessor for ControlsState();
          v28 = v92;
          goto LABEL_89;
        }

LABEL_95:
        __break(1u);
        goto LABEL_96;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_95;
  }

  *v152 = &_swiftEmptyArrayStorage;
  sub_10021D77C(0, v10, 0);
  v11 = 0;
  v3 = &_swiftEmptyArrayStorage;
  v98 = v9;
  v103 = v9 + 32;
  v4 = &selRef_submitCAMetric_viewId_;
  v93 = v10;
  while (v11 < *(v9 + 16))
  {
    v113 = v11 + 1;
    v118 = v3;
    v12 = *(v103 + 8 * v11);
    v13 = sub_100017230(v12);

    v14 = 0;
    v15 = &_swiftEmptyArrayStorage;
    while (v13 != v14)
    {
      if ((v12 & 0xC000000000000001) != 0)
      {
        v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v14 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_57;
        }

        v16 = *(v12 + 8 * v14 + 32);
      }

      v17 = v16;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
LABEL_57:
        __break(1u);
        goto LABEL_58;
      }

      v18 = [v16 unsignedIntegerValue];

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_10023FA90();
        v15 = v19;
      }

      a1 = v15[2];
      if (a1 >= v15[3] >> 1)
      {
        sub_10023FA90();
        v15 = v20;
      }

      v15[2] = a1 + 1;
      v15[a1 + 4] = v18;
      ++v14;
    }

    *v152 = v3;
    v22 = v3[2];
    v21 = v3[3];
    if (v22 >= v21 >> 1)
    {
      sub_10021D77C((v21 > 1), v22 + 1, 1);
      v3 = *v152;
    }

    v3[2] = v22 + 1;
    v3[v22 + 4] = v15;
    v11 = v113;
    v9 = v98;
    if (v113 == v10)
    {

      goto LABEL_39;
    }
  }

  __break(1u);
LABEL_92:
  swift_once();
LABEL_34:
  v29 = type metadata accessor for Logger();
  sub_100008A14(v29, &unk_1003B8820);

  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    *v32 = 67109120;
    *(v32 + 4) = [v3 v4[446]];

    _os_log_impl(&_mh_execute_header, v30, v31, "unknown call status: %d", v32, 8u);
  }

  else
  {
  }

LABEL_3:
  v6 = type metadata accessor for ControlsState();

  return sub_100006848(a1, 1, 1, v6);
}

id *sub_1001D8DA4()
{

  sub_100037A10((v0 + 7));

  sub_1001638E4(v0[11]);
  return v0;
}

uint64_t sub_1001D8DFC()
{
  sub_1001D8DA4();

  return _swift_deallocClassInstance(v0, 96, 7);
}

uint64_t sub_1001D8E94(void *a1)
{
  v1 = [a1 defaultControlTypes];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_10014EA98(&qword_1003AD908);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_1001D8F00(uint64_t a1, uint64_t a2)
{
  v4 = sub_10014EA98(&qword_1003AD900);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001D8F70(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1001D8FB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  type metadata accessor for ClarityUICallCenter();
  swift_allocObject();
  sub_10024B6B4();
  State.init(wrappedValue:)();
  v8 = objc_allocWithZone(type metadata accessor for ClarityUIEnhancedEmergencyCoordinator());

  v9 = [v8 init];
  State.init(wrappedValue:)();

  *a4 = a2;
  a4[1] = a3;
  a4[2] = a1;
  a4[3] = v11;
  a4[4] = v12;
  a4[5] = v11;
  a4[6] = v12;
  return result;
}

uint64_t sub_1001D90C0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v50 = a1;
  v3 = sub_10014EA98(&qword_1003AD9A0);
  v4 = sub_10000964C(v3, &v60);
  v48 = v5;
  __chkstk_darwin(v4, v6);
  v44 = &v39 - v7;
  v8 = sub_10014EA98(&qword_1003AD9A8);
  v9 = sub_10000964C(v8, &v59);
  v46 = v10;
  __chkstk_darwin(v9, v11);
  v45 = &v39 - v12;
  v13 = v1[4];
  *&v58[0] = v1[3];
  v14 = *&v58[0];
  *(&v58[0] + 1) = v13;
  v39 = sub_10014EA98(&qword_1003AD9B0);
  State.wrappedValue.getter();
  v15 = sub_10024B0B8();

  *&v58[0] = v14;
  *(&v58[0] + 1) = v13;
  State.wrappedValue.getter();
  v16 = v52;
  v17 = v1[6];
  v42 = v1[5];
  *&v58[0] = v42;
  *(&v58[0] + 1) = v17;
  sub_10014EA98(&qword_1003AD9B8);
  State.wrappedValue.getter();
  v18 = v52;
  v19 = v2[1];
  v20 = v2[2];
  v21 = *v2;
  LOBYTE(v52) = 0;
  swift_unknownObjectRetain();

  State.init(wrappedValue:)();
  *&v52 = v15;
  *(&v52 + 1) = v16;
  *&v53 = v18;
  *(&v53 + 1) = v20;
  *&v54 = v21;
  *(&v54 + 1) = v19;
  LOBYTE(v55) = v58[0];
  *(&v55 + 1) = *(&v58[0] + 1);
  *&v58[0] = v14;
  *(&v58[0] + 1) = v13;
  v40 = v13;
  State.wrappedValue.getter();
  v22 = sub_10024B0B8();

  v51 = v22;
  v56 = v17;
  v57 = v13;
  v23 = swift_allocObject();
  sub_10000C480(v23);
  *(v24 - 256) = v19;

  v43 = v20;
  swift_unknownObjectRetain();

  v25 = v42;
  v26 = v44;
  v41 = v25;
  sub_10017FF60(&v57, v58, &qword_1003AB5F0);
  sub_10017FF60(&v56, v58, &qword_1003AB5F8);
  v27 = sub_10014EA98(&qword_1003AD9C0);
  v28 = sub_1001DBE00();
  v29 = sub_1001DBE54();
  v42 = v27;
  View.onChange<A>(of:initial:_:)();

  v58[0] = v52;
  v58[1] = v53;
  v58[2] = v54;
  v58[3] = v55;
  sub_1001DBF08(v58);
  *&v52 = v14;
  *(&v52 + 1) = v40;
  State.wrappedValue.getter();
  v30 = sub_10024B0B8();

  if (v30)
  {
    v31 = sub_10023E2B0();
  }

  else
  {
    v31 = 0;
  }

  LODWORD(v51) = v31;
  BYTE4(v51) = v30 == 0;
  v32 = swift_allocObject();
  sub_10000C480(v32);

  swift_unknownObjectRetain();

  v33 = v41;
  sub_10017FF60(&v57, &v52, &qword_1003AB5F0);
  sub_10017FF60(&v56, &v52, &qword_1003AB5F8);
  sub_10014EA98(&qword_1003AD9E0);
  *&v52 = &type metadata for ClarityUIRootView.OptionalCallView;
  *(&v52 + 1) = v42;
  *&v53 = v28;
  *(&v53 + 1) = v29;
  swift_getOpaqueTypeConformance2();
  sub_1001DBFA0();
  v34 = v45;
  v35 = v49;
  View.onChange<A>(of:initial:_:)();

  (*(v48 + 8))(v26, v35);
  v36 = v50;
  (*(v46 + 32))(v50, v34, v47);
  result = sub_10014EA98(&qword_1003AD9F8);
  v38 = (v36 + *(result + 36));
  *v38 = sub_1001DA118;
  v38[1] = 0;
  v38[2] = 0;
  v38[3] = 0;
  return result;
}

void sub_1001D9658(void *a1, uint64_t *a2)
{
  v2 = *a2;
  if (*a1)
  {
    if (v2)
    {
      type metadata accessor for ClarityUICall();

      v3 = sub_10023F260();

      if (v3)
      {
        goto LABEL_4;
      }
    }
  }

  else if (!v2)
  {
LABEL_4:
    if (qword_1003A9FB8 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_100008A14(v4, &unk_1003B8978);

    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v21 = v8;
      *v7 = 136315138;

      sub_10014EA98(&qword_1003AD9C0);
      v9 = String.init<A>(describing:)();
      v11 = sub_100008ADC(v9, v10, &v21);

      *(v7 + 4) = v11;
      _os_log_impl(&_mh_execute_header, v5, v6, "Frontmost call initially: %s", v7, 0xCu);
      sub_100005B2C(v8);
    }

    v12 = 1;
    goto LABEL_15;
  }

  if (qword_1003A9FB8 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_100008A14(v13, &unk_1003B8978);

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v21 = v17;
    *v16 = 136315138;

    sub_10014EA98(&qword_1003AD9C0);
    v18 = String.init<A>(describing:)();
    v20 = sub_100008ADC(v18, v19, &v21);

    *(v16 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v14, v15, "Frontmost call changed: %s", v16, 0xCu);
    sub_100005B2C(v17);
  }

  v12 = 0;
LABEL_15:
  sub_1001D9974(v12);
}

void sub_1001D9974(char a1)
{
  v2 = v1;
  v4 = sub_10014EA98(&qword_1003AA7B0);
  __chkstk_darwin(v4 - 8, v5);
  v7 = &v37[-v6 - 8];
  v8 = v1[4];
  v38[0] = v1[3];
  v38[1] = v8;
  sub_10014EA98(&qword_1003AD9B0);
  State.wrappedValue.getter();
  v9 = sub_10024B0B8();

  if (v9)
  {
    if ((a1 & 1) == 0)
    {
      v10 = [objc_opt_self() sharedInstance];
      v11 = [v10 autoPunchOutBehaviorRequiredForCurrentCalls];

      if (v11)
      {
        v12 = type metadata accessor for TaskPriority();
        sub_100006848(v7, 1, 1, v12);
        v13 = v2[2];
        v38[0] = v8;
        v14 = v2[5];
        v39 = v2[6];
        v40 = v13;
        type metadata accessor for MainActor();

        sub_10017FF60(&v40, v37, &unk_1003ADA00);

        sub_10017FF60(v38, v37, &qword_1003AB5F0);
        v15 = v14;
        sub_10017FF60(&v39, v37, &qword_1003AB5F8);

        v16 = static MainActor.shared.getter();
        v17 = swift_allocObject();
        *(v17 + 16) = v16;
        *(v17 + 24) = &protocol witness table for MainActor;
        v18 = *(v2 + 1);
        *(v17 + 32) = *v2;
        *(v17 + 48) = v18;
        *(v17 + 64) = *(v2 + 2);
        *(v17 + 80) = v2[6];
        *(v17 + 88) = v9;
        sub_1001621BC();

LABEL_9:

        return;
      }
    }

    if (qword_1003A9FB8 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_100008A14(v19, &unk_1003B8978);

    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v38[0] = v23;
      *v22 = 136315138;

      v24 = sub_10023F2C4();
      v26 = v25;

      v27 = sub_100008ADC(v24, v26, v38);

      *(v22 + 4) = v27;
      _os_log_impl(&_mh_execute_header, v20, v21, "Showing call view for call: %s", v22, 0xCu);
      sub_100005B2C(v23);

      goto LABEL_9;
    }
  }

  else if (v1[2])
  {
    if (qword_1003A9FB8 != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    sub_100008A14(v28, &unk_1003B8978);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&_mh_execute_header, v29, v30, "Not dismissing even though there is no frontmost call, because a Screen Time request is active.", v31, 2u);
    }
  }

  else
  {
    if (qword_1003A9FB8 != -1)
    {
      swift_once();
    }

    v32 = type metadata accessor for Logger();
    sub_100008A14(v32, &unk_1003B8978);
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&_mh_execute_header, v33, v34, "Dismissing because there is no frontmost call.", v35, 2u);
    }

    (*v2)();
  }
}

void sub_1001D9E68(uint64_t a1, uint64_t a2, void *a3)
{
  if ((*(a1 + 4) & 1) == 0 && (*(a2 + 4) & 1) == 0)
  {
    if (qword_1003A9FB8 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_100008A14(v4, &unk_1003B8978);
    v5 = a3[2];
    v6 = a3[3];
    v17 = a3[4];
    v21 = v17;
    v22 = v5;
    v7 = a3[5];
    v20 = a3[6];

    sub_10017FF60(&v22, v18, &unk_1003ADA00);

    sub_10017FF60(&v21, v18, &qword_1003AB5F0);
    v8 = v7;
    sub_10017FF60(&v20, v18, &qword_1003AB5F8);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();

    sub_1000306A4(&v22, &unk_1003ADA00);

    sub_1000306A4(&v21, &qword_1003AB5F0);

    sub_1000306A4(&v20, &qword_1003AB5F8);
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 136315138;
      v18[0] = v6;
      v18[1] = v17;
      v19 = v12;
      sub_10014EA98(&qword_1003AD9B0);
      State.wrappedValue.getter();
      v13 = sub_10024B0B8();

      v18[0] = v13;
      sub_10014EA98(&qword_1003AD9C0);
      v14 = String.init<A>(describing:)();
      v16 = sub_100008ADC(v14, v15, &v19);

      *(v11 + 4) = v16;
      _os_log_impl(&_mh_execute_header, v9, v10, "Frontmost call status changed: %s", v11, 0xCu);
      sub_100005B2C(v12);
    }

    sub_1001D9974(0);
  }
}

uint64_t sub_1001DA118()
{
  v27 = type metadata accessor for DispatchWorkItemFlags();
  v30 = *(v27 - 8);
  __chkstk_darwin(v27, v0);
  v2 = &v24 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for DispatchQoS();
  v28 = *(v3 - 8);
  v29 = v3;
  __chkstk_darwin(v3, v4);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchTime();
  v26 = v7;
  v8 = *(v7 - 8);
  v10 = __chkstk_darwin(v7, v9);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10, v13);
  v15 = &v24 - v14;
  v16 = TUCallCenterInCallServiceDidAppearNotification;
  sub_1000064BC(0, &qword_1003AAAB0);
  v17 = v16;
  v24 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  + infix(_:_:)();
  v25 = *(v8 + 8);
  v25(v12, v7);
  v18 = swift_allocObject();
  *(v18 + 16) = v17;
  aBlock[4] = sub_1001DC054;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10002E570;
  aBlock[3] = &unk_10035EBC8;
  v19 = _Block_copy(aBlock);
  v20 = v17;
  static DispatchQoS.unspecified.getter();
  v31 = &_swiftEmptyArrayStorage;
  sub_1001DC05C(&qword_1003B0530, &type metadata accessor for DispatchWorkItemFlags);
  sub_10014EA98(&unk_1003AAAC0);
  sub_100027E08(&qword_1003B0540, &unk_1003AAAC0);
  v21 = v27;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v22 = v24;
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v19);

  (*(v30 + 8))(v2, v21);
  (*(v28 + 8))(v6, v29);
  v25(v15, v26);
}

void sub_1001DA504(const __CFString *a1)
{
  v2 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(v2, a1, 0, 0, 1u);
}

uint64_t sub_1001DA564(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = type metadata accessor for MainActor();
  v5[3] = static MainActor.shared.getter();
  v7 = swift_task_alloc();
  v5[4] = v7;
  *v7 = v5;
  v7[1] = sub_1001DA620;

  return sub_1001DA758(a5);
}

uint64_t sub_1001DA620()
{
  sub_100006610();

  v1 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100188170, v1, v0);
}

uint64_t sub_1001DA758(uint64_t a1)
{
  v2[45] = a1;
  v2[46] = v1;
  type metadata accessor for MainActor();
  v2[47] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[48] = v4;
  v2[49] = v3;

  return _swift_task_switch(sub_1001DA7F0, v4, v3);
}

uint64_t sub_1001DA7F0()
{
  v36 = v0;
  v1 = sub_10023E240();
  v2 = [v1 provider];

  v3 = sub_10002D86C(v2);
  if (!v4)
  {
    goto LABEL_14;
  }

  v5 = v3;
  v6 = v4;
  v7 = HIBYTE(v4) & 0xF;
  if ((v4 & 0x2000000000000000) == 0)
  {
    v7 = v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v7)
  {

LABEL_14:

    if (qword_1003A9FB8 != -1)
    {
      sub_1000078D4();
    }

    v22 = type metadata accessor for Logger();
    sub_100008A14(v22, &unk_1003B8978);

    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = sub_100005384();
      v26 = swift_slowAlloc();
      v35 = v26;
      *v25 = 136315138;
      v27 = sub_10023F2C4();
      v29 = sub_100008ADC(v27, v28, &v35);

      *(v25 + 4) = v29;
      _os_log_impl(&_mh_execute_header, v23, v24, "Unable to punch out to VoIP application because call was missing a bundle identifier: %s", v25, 0xCu);
      sub_100005B2C(v26);
      sub_100005BB8();
      sub_100005340();
    }

    goto LABEL_19;
  }

  if (qword_1003A9FB8 != -1)
  {
    sub_1000078D4();
  }

  v8 = type metadata accessor for Logger();
  *(v0 + 400) = sub_100008A14(v8, &unk_1003B8978);

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = sub_100005384();
    v12 = swift_slowAlloc();
    v35 = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_100008ADC(v5, v6, &v35);
    _os_log_impl(&_mh_execute_header, v9, v10, "Punching out to VoIP application: %s", v11, 0xCu);
    sub_100005B2C(v12);
    sub_100005BB8();
    sub_100005BB8();
  }

  v13 = [objc_opt_self() serviceWithDefaultShellEndpoint];
  *(v0 + 408) = v13;
  if (v13)
  {
    v14 = v13;
    (**(v0 + 368))();
    sub_1000064BC(0, &qword_1003ADA10);
    sub_10014EA98(&qword_1003ADA18);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1002FB510;
    *(v0 + 320) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v0 + 328) = v16;
    AnyHashable.init<A>(_:)();
    *(inited + 96) = &type metadata for Bool;
    *(inited + 72) = 1;
    *(v0 + 336) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v0 + 344) = v17;
    AnyHashable.init<A>(_:)();
    *(inited + 168) = &type metadata for Bool;
    *(inited + 144) = 1;
    v18 = Dictionary.init(dictionaryLiteral:)();
    v19 = sub_1001DB270(v18);
    *(v0 + 416) = v19;
    v20 = String._bridgeToObjectiveC()();
    *(v0 + 424) = v20;

    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 352;
    *(v0 + 24) = sub_1001DAD6C;
    v21 = swift_continuation_init();
    *(v0 + 312) = sub_10014EA98(&unk_1003ADA20);
    *(v0 + 256) = _NSConcreteStackBlock;
    *(v0 + 264) = 1107296256;
    *(v0 + 272) = sub_1001DB2FC;
    *(v0 + 280) = &unk_10035EC18;
    *(v0 + 288) = v21;
    [v14 openApplication:v20 withOptions:v19 completion:?];

    return _swift_continuation_await(v0 + 16);
  }

  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    *v33 = 0;
    _os_log_impl(&_mh_execute_header, v31, v32, "Unable to find open application service.", v33, 2u);
    sub_100005BB8();
  }

LABEL_19:
  sub_10000535C();

  return v30();
}

uint64_t sub_1001DAD6C()
{
  sub_100006610();
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 432) = v2;
  v3 = *(v1 + 392);
  v4 = *(v1 + 384);
  if (v2)
  {
    v5 = sub_1001DAFEC;
  }

  else
  {
    v5 = sub_1001DAE98;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1001DAE98()
{
  v1 = v0[53];

  v2 = v0[44];

  v3 = v2;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  v6 = os_log_type_enabled(v4, v5);
  v8 = v0[51];
  v7 = v0[52];
  if (v6)
  {
    v9 = sub_100005384();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    *(v9 + 4) = v3;
    *v10 = v3;
    v11 = v3;
    _os_log_impl(&_mh_execute_header, v4, v5, "Successfully opened application: %@", v9, 0xCu);
    sub_1000306A4(v10, &qword_1003B0230);
    sub_100005BB8();
    sub_100005340();
  }

  else
  {

    v4 = v7;
  }

  sub_10000535C();

  return v12();
}

uint64_t sub_1001DAFEC()
{
  v1 = v0[53];

  swift_willThrow();

  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = sub_100005384();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "Unable to open application: %@", v4, 0xCu);
    sub_1000306A4(v5, &qword_1003B0230);
    sub_100005BB8();
    sub_100005340();
  }

  v7 = [objc_opt_self() sharedApplication];
  v8 = [v7 delegate];

  if (!v8)
  {
    goto LABEL_7;
  }

  objc_opt_self();
  v9 = swift_dynamicCastObjCClass();
  if (!v9)
  {
    swift_unknownObjectRelease();
LABEL_7:
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    v16 = os_log_type_enabled(v14, v15);
    v18 = v0[51];
    v17 = v0[52];
    if (v16)
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "Unable to find app delegate to present InCallService.", v19, 2u);
      sub_100005340();
    }

    else
    {
    }

    goto LABEL_11;
  }

  v10 = v9;
  v12 = v0[51];
  v11 = v0[52];
  v13 = sub_10023E240();
  [v10 requestPresentationForCall:v13 dialRequest:0];

  swift_unknownObjectRelease();
LABEL_11:
  sub_10000535C();

  return v20();
}

id sub_1001DB270(uint64_t a1)
{
  if (a1)
  {
    v1.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v1.super.isa = 0;
  }

  v2 = [swift_getObjCClassFromMetadata() optionsWithDictionary:v1.super.isa];

  return v2;
}

uint64_t *sub_1001DB2FC(uint64_t a1, void *a2, void *a3)
{
  result = sub_100008878((a1 + 32), *(a1 + 56));
  v6 = *result;
  if (a3)
  {
    v7 = a3;

    return sub_1000088BC(v6, v7);
  }

  else if (a2)
  {
    v8 = a2;

    return sub_1002520B4(v6, v8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_1001DB38C@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  if (!*v1)
  {
    v8 = *(v1 + 24);
    if (v8)
    {
      v9 = [swift_unknownObjectRetain() bundleIdentifier];
      if (v9)
      {
        v10 = v9;
        v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v13 = v12;

        v15 = *(v1 + 32);
        v14 = *(v1 + 40);
        LOBYTE(v24[0]) = 1;

        State.init(wrappedValue:)();
        v22[0] = v11;
        v22[1] = v13;
        v22[2] = v8;
        v22[3] = v15;
        v22[4] = v14;
        LOBYTE(v22[5]) = __src[0];
        v22[6] = __src[1];
        sub_1001DC648(v22);
        memcpy(__src, v22, 0xFAuLL);

        swift_unknownObjectRetain();

        sub_10014EA98(&qword_1003ADA50);
        sub_1001DC510();
        sub_1001DC5F4();
        _ConditionalContent<>.init(storage:)();
        memcpy(v24, v21, 0xFAuLL);
        sub_1001DC654(v24);
        memcpy(__src, v24, 0xFBuLL);
        sub_10014EA98(&qword_1003ADA38);
        sub_1001DC484();
        _ConditionalContent<>.init(storage:)();

        swift_unknownObjectRelease();

        goto LABEL_3;
      }

      swift_unknownObjectRelease();
    }

    *&v24[0] = static Color.clear.getter();
    sub_1001DC478(v24);
    memcpy(v23, v24, 0xFBuLL);
    sub_10014EA98(&qword_1003ADA38);
    sub_1001DC484();
    _ConditionalContent<>.init(storage:)();
    return memcpy(a1, __src, 0xFBuLL);
  }

  v4 = static Alignment.center.getter();
  v6 = v5;
  sub_1001DB81C(v3, v1, __src);
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v19, __src, sizeof(v19));
  sub_10017FF60(__dst, v24, &unk_1003ADA80);
  sub_1000306A4(v19, &unk_1003ADA80);
  memcpy(__src, __dst, 0xE0uLL);
  v7 = static Animation.clarityUINavigationTransition.getter();
  v24[0] = *(v1 + 48);
  sub_10014EA98(&qword_1003AFBC0);
  State.wrappedValue.getter();
  v20[0] = v4;
  v20[1] = v6;
  memcpy(&v20[2], __src, 0xE0uLL);
  v20[30] = v7;
  LOBYTE(v20[31]) = v23[0];
  memcpy(v21, v20, 0xF9uLL);
  sub_1001DC65C(v21);
  memcpy(__src, v21, 0xFAuLL);
  sub_10017FF60(v20, v24, &qword_1003ADA50);
  sub_10014EA98(&qword_1003ADA50);
  sub_1001DC510();
  sub_1001DC5F4();
  _ConditionalContent<>.init(storage:)();
  memcpy(v22, v17, 0xFAuLL);
  memcpy(v24, v17, 0xFAuLL);
  sub_1001DC654(v24);
  memcpy(__src, v24, 0xFBuLL);
  sub_10017FF60(v22, v23, &qword_1003ADA38);
  sub_10014EA98(&qword_1003ADA38);
  sub_1001DC484();
  _ConditionalContent<>.init(storage:)();

  sub_1000306A4(v22, &qword_1003ADA38);
  sub_1000306A4(v20, &qword_1003ADA50);
LABEL_3:
  memcpy(__src, v23, 0xFBuLL);
  return memcpy(a1, __src, 0xFBuLL);
}

uint64_t sub_1001DB81C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v29 = a3;
  v5 = sub_10014EA98(&unk_1003ADA90);
  __chkstk_darwin(v5 - 8, v6);
  v8 = &v26 - v7;
  v9 = *(a2 + 8);
  v68 = *(a2 + 48);
  v43[0] = *(a2 + 48);
  v41 = v9;

  sub_10014EA98(&qword_1003AFBC0);
  State.projectedValue.getter();
  v39 = *(&v49 + 1);
  v40 = v49;
  v38 = v50;
  v10 = *(a2 + 16);
  LOBYTE(v43[0]) = 0;
  v37 = v10;
  State.init(wrappedValue:)();
  v35 = v49;
  v36 = *(&v49 + 1);
  *&v43[0] = 0;
  sub_10014EA98(&qword_1003AC8A0);
  State.init(wrappedValue:)();
  v33 = *(&v49 + 1);
  v34 = v49;
  v11 = type metadata accessor for Font.Design();
  sub_100006848(v8, 1, 1, v11);
  v32 = static Font.system(size:weight:design:)();
  sub_1000306A4(v8, &unk_1003ADA90);
  static ClarityUIMetrics.standardSpacing.getter();
  v13 = v12;
  type metadata accessor for ClarityUIPreferences();
  v31 = static ClarityUIPreferences.shared.getter();
  v49 = v68;
  v14 = a1;

  State.wrappedValue.getter();
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v30 = 0;
  v18 = 0;
  v19 = 0;
  v20 = 0;
  v21 = 0;
  if (LOBYTE(v43[0]) == 1)
  {
    v43[0] = v68;
    State.projectedValue.getter();
    v17 = *(&v49 + 1);
    v16 = v49;
    v21 = v50;
    *&v43[0] = 0;
    *(&v43[0] + 1) = 0xE000000000000000;
    State.init(wrappedValue:)();
    v18 = *(&v49 + 1);
    v30 = v49;
    v19 = v50;
    v15 = v14;

    v20 = 0x3FF0000000000000;
  }

  v28 = v14;
  *&v43[0] = v14;
  *(&v43[0] + 1) = v41;
  *&v43[1] = v40;
  *(&v43[1] + 1) = v39;
  LOBYTE(v43[2]) = v38;
  *(&v43[2] + 1) = v70[0];
  DWORD1(v43[2]) = *(v70 + 3);
  *(&v43[2] + 1) = v37;
  LOBYTE(v43[3]) = v35;
  *(&v43[3] + 1) = *v69;
  DWORD1(v43[3]) = *&v69[3];
  *(&v43[3] + 1) = v36;
  *&v43[4] = v34;
  v27 = vdupq_n_s64(0x4069000000000000uLL);
  *(&v43[4] + 1) = v33;
  *&v43[5] = v32;
  *(&v43[5] + 8) = v27;
  v26 = xmmword_1002FE7F0;
  *(&v43[6] + 8) = xmmword_1002FE7F0;
  *(&v43[7] + 1) = 0x3FE999999999999ALL;
  *&v43[8] = 3000000000;
  *(&v43[8] + 1) = v13;
  v43[9] = v31;
  memcpy(v42, v43, 0xA0uLL);
  *&v44 = v15;
  *(&v44 + 1) = v16;
  *&v45 = v17;
  *(&v45 + 1) = v21;
  v22 = v19;
  v23 = v18;
  v24 = v30;
  *&v46 = v30;
  *(&v46 + 1) = v23;
  *&v47 = v22;
  *(&v47 + 1) = v20;
  v42[10] = v44;
  v42[11] = v45;
  v42[12] = v46;
  v42[13] = v47;
  memcpy(v29, v42, 0xE0uLL);
  v48[0] = v15;
  v48[1] = v16;
  v48[2] = v17;
  v48[3] = v21;
  v48[4] = v24;
  v48[5] = v23;
  v48[6] = v22;
  v48[7] = v20;
  sub_10017FF60(v43, &v49, &qword_1003ADAA0);
  sub_10017FF60(&v44, &v49, &qword_1003ADAA8);
  sub_1000306A4(v48, &qword_1003ADAA8);
  *&v49 = v28;
  *(&v49 + 1) = v41;
  v50 = v40;
  v51 = v39;
  v52 = v38;
  *v53 = v70[0];
  *&v53[3] = *(v70 + 3);
  v54 = v37;
  v55 = v35;
  *v56 = *v69;
  *&v56[3] = *&v69[3];
  v57 = v36;
  v58 = v34;
  v59 = v33;
  v60 = v32;
  v61 = v27;
  v62 = v26;
  v63 = 0x3FE999999999999ALL;
  v64 = 3000000000;
  v65 = v13;
  v66 = v31;
  v67 = 0;
  return sub_1000306A4(&v49, &qword_1003ADAA0);
}

__n128 sub_1001DBD24(uint64_t a1, uint64_t a2)
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

uint64_t sub_1001DBD40(uint64_t *a1, int a2)
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

uint64_t sub_1001DBD80(uint64_t result, int a2, int a3)
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

unint64_t sub_1001DBE00()
{
  result = qword_1003AD9C8;
  if (!qword_1003AD9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AD9C8);
  }

  return result;
}

unint64_t sub_1001DBE54()
{
  result = qword_1003AD9D0;
  if (!qword_1003AD9D0)
  {
    sub_100155B7C(&qword_1003AD9C0);
    sub_1001DC05C(&qword_1003AD9D8, type metadata accessor for ClarityUICall);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AD9D0);
  }

  return result;
}

uint64_t sub_1001DBF38()
{

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 72, 7);
}

unint64_t sub_1001DBFA0()
{
  result = qword_1003AD9E8;
  if (!qword_1003AD9E8)
  {
    sub_100155B7C(&qword_1003AD9E0);
    sub_1001DC05C(&qword_1003AA2A0, type metadata accessor for TUCallStatus);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AD9E8);
  }

  return result;
}

uint64_t sub_1001DC05C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1001DC0A4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[11];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1001DC164;

  return sub_1001DA564(a1, v4, v5, (v1 + 4), v6);
}

uint64_t sub_1001DC164()
{
  sub_100006610();

  sub_10000535C();

  return v0();
}

__n128 sub_1001DC268(uint64_t a1, uint64_t a2)
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

uint64_t sub_1001DC27C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_1001DC2BC(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_1001DC31C()
{
  result = qword_1003ADA30;
  if (!qword_1003ADA30)
  {
    sub_100155B7C(&qword_1003AD9F8);
    sub_100155B7C(&qword_1003AD9A0);
    sub_100155B7C(&qword_1003AD9E0);
    sub_100155B7C(&qword_1003AD9C0);
    sub_1001DBE00();
    sub_1001DBE54();
    swift_getOpaqueTypeConformance2();
    sub_1001DBFA0();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003ADA30);
  }

  return result;
}

unint64_t sub_1001DC484()
{
  result = qword_1003ADA40;
  if (!qword_1003ADA40)
  {
    sub_100155B7C(&qword_1003ADA38);
    sub_1001DC510();
    sub_1001DC5F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003ADA40);
  }

  return result;
}

unint64_t sub_1001DC510()
{
  result = qword_1003ADA48;
  if (!qword_1003ADA48)
  {
    sub_100155B7C(&qword_1003ADA50);
    sub_100027E08(&qword_1003ADA58, &qword_1003ADA60);
    sub_100027E08(&qword_1003ADA68, &qword_1003ADA70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003ADA48);
  }

  return result;
}

unint64_t sub_1001DC5F4()
{
  result = qword_1003ADA78;
  if (!qword_1003ADA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003ADA78);
  }

  return result;
}

unint64_t sub_1001DC664()
{
  result = qword_1003ADAB0;
  if (!qword_1003ADAB0)
  {
    sub_100155B7C(&qword_1003ADAB8);
    sub_1001DC484();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003ADAB0);
  }

  return result;
}

void iPadAudioCallViewController.showKeypad(perviousMiddleState:viewSize:)(__int16 a1, double a2, double a3)
{
  v4 = v3;
  v8 = sub_10014EA98(&qword_1003AD438);
  v9 = v8 - 8;
  v11 = __chkstk_darwin(v8, v10);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11, v14);
  v16 = &v29 - v15;
  [v3 updateFloatingViewsVisibilityHandlers];
  sub_1001DC9B0(v16, &v16[*(v9 + 56)], a2, a3);
  sub_1001DCB24(v16, v13);
  v17 = *(v9 + 56);
  v18 = objc_allocWithZone(type metadata accessor for CallsKeypadViewController());
  v19 = sub_1001D2070(v13, &v13[v17]);
  v20 = [v19 view];
  if (!v20)
  {
    __break(1u);
    goto LABEL_6;
  }

  v21 = v20;
  v22 = [v20 layer];

  [v22 setCornerRadius:74.0];
  v23 = [v19 view];
  if (!v23)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v24 = v23;
  [v23 setClipsToBounds:1];

  [v4 addChildViewController:v19];
  v25 = [v4 backgroundController];
  v26 = [v19 view];

  if (v26)
  {
    v27 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v28 = swift_allocObject();
    *(v28 + 16) = v27;
    *(v28 + 24) = a1;

    sub_100190F34(v26, 0, sub_1001DCC50, v28);

    [v19 didMoveToParentViewController:v4];
    [v4 setKeypadViewController:v19];

    sub_1001DCC5C(v16);
    return;
  }

LABEL_7:
  __break(1u);
}

uint64_t sub_1001DC9B0(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v8 = type metadata accessor for _Glass._GlassVariant();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8, v10);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a4 >= a3)
  {
    static _Glass._GlassVariant.regular.getter();
    v17 = type metadata accessor for _Glass._GlassVariant.Size();
    v15 = a2;
    v16 = 1;
  }

  else
  {
    static _Glass._GlassVariant.clear.getter();
    v13 = enum case for _Glass._GlassVariant.Size.small(_:);
    v14 = type metadata accessor for _Glass._GlassVariant.Size();
    (*(*(v14 - 8) + 104))(a2, v13, v14);
    v15 = a2;
    v16 = 0;
    v17 = v14;
  }

  sub_100006848(v15, v16, 1, v17);
  return (*(v9 + 32))(a1, v12, v8);
}

uint64_t sub_1001DCB24(uint64_t a1, uint64_t a2)
{
  v4 = sub_10014EA98(&qword_1003AD438);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1001DCB94(uint64_t a1, unsigned __int16 a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = [Strong keypadViewController];
    if (v5)
    {
      v6 = v5;
      [v4 removeChildViewController:v5];
    }

    [v4 setKeypadViewController:0];
    [v4 setMiddleViewState:a2 animated:0];
  }
}

uint64_t sub_1001DCC5C(uint64_t a1)
{
  v2 = sub_10014EA98(&qword_1003AD438);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void iPadAudioCallViewController.keypadViewWillDisappear(completion:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = [v3 keypadViewController];
  if (v6)
  {
    v7 = v6;
    v9[4] = a1;
    v9[5] = a2;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 1107296256;
    v9[2] = sub_10002E570;
    v9[3] = &unk_10035ED20;
    v8 = _Block_copy(v9);

    [v7 dismissViewControllerAnimated:1 completion:v8];
    _Block_release(v8);
  }
}

Swift::Void __swiftcall iPadAudioCallViewController.updateFloatingViewsVisibilityHandlers()()
{
  v1 = v0;
  [v0 isShowingPoster];
  sub_100007608();
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100007608();
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v4 = [v0 backgroundController];
  v5 = [v1 view];
  if (v5)
  {
    v6 = v5;
    sub_100190BF4(v5, sub_1001DD078, v2, sub_1001DD204, v3);
  }

  else
  {
    __break(1u);
  }
}

void sub_1001DCFB4(char a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = [Strong callParticipantsViewController];

    if (v4)
    {
      v5 = [v4 view];

      if (v5)
      {
        v6 = 0.0;
        if (a1)
        {
          v6 = 1.0;
        }

        [v5 setAlpha:v6];
      }

      else
      {
        __break(1u);
      }
    }
  }
}

void sub_1001DD080(char a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = [Strong buttonsViewController];

    v5 = [v4 view];
    if (!v5)
    {
      __break(1u);
      return;
    }

    v6 = 0.0;
    if (a1)
    {
      v6 = 1.0;
    }

    [v5 setAlpha:v6];
  }

  swift_beginAccess();
  v7 = swift_unknownObjectWeakLoadStrong();
  if (v7)
  {
    v8 = v7;
    v9 = sub_100245C4C();

    if (v9)
    {
      v10 = 0.0;
      if (a1)
      {
        v10 = 1.0;
      }

      [v9 setAlpha:v10];
    }
  }

  swift_beginAccess();
  v11 = swift_unknownObjectWeakLoadStrong();
  if (v11)
  {
    v12 = v11;
    v13 = [v11 middleContentView];

    if (v13)
    {
      v14 = 0.0;
      if (a1)
      {
        v14 = 1.0;
      }

      [v13 setAlpha:v14];
    }
  }
}

id iPadAudioCallViewController.updateKeypadBackgroundMaterial(viewSize:)(double a1, double a2)
{
  v5 = sub_10014EA98(&qword_1003AD438);
  __chkstk_darwin(v5, v6);
  v8 = &v12 - v7;
  result = [v2 keypadViewController];
  if (result)
  {
    v10 = result;
    v11 = *(v5 + 48);
    sub_1001DC9B0(v8, &v8[v11], a1, a2);
    sub_1001D21F0(v8, &v8[v11]);

    return sub_1001DCC5C(v8);
  }

  return result;
}

void sub_1001DD394(char a1)
{
  v2 = v1;
  v49.receiver = v2;
  v49.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v49, "viewWillAppear:", a1 & 1);
  v4 = [objc_opt_self() sharedApplication];
  v5 = [v4 delegate];

  if (!v5)
  {
    return;
  }

  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (!v6)
  {
LABEL_12:
    swift_unknownObjectRelease();
    return;
  }

  v7 = v6;
  swift_unknownObjectRetain();
  v8 = ICSApplicationDelegate.bannerPresentationManager.getter();
  swift_unknownObjectRelease();
  v9 = v8;
  v10 = dispatch thunk of BannerPresentationManager.conversationControlsManager.getter();

  if (!v10)
  {
    swift_unknownObjectRelease();

    return;
  }

  dispatch thunk of ConversationControlsManager.activeCall.getter();
  objc_opt_self();
  v11 = swift_dynamicCastObjCClass();
  if (!v11)
  {

    swift_unknownObjectRelease();
    goto LABEL_12;
  }

  v12 = v11;
  v45 = v9;
  type metadata accessor for CallCenterFacade();
  static CallCenterFacade.shared.getter();
  v13 = [v12 uniqueProxyIdentifier];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v14 = CallCenterFacade.call(with:)();

  if (!v14)
  {

    swift_unknownObjectRelease();
    goto LABEL_12;
  }

  v15 = *&v2[OBJC_IVAR____TtC13InCallService31FTMenuRemoteAlertViewController_controlsManager];
  *&v2[OBJC_IVAR____TtC13InCallService31FTMenuRemoteAlertViewController_controlsManager] = v10;
  v16 = v10;

  static CallCenterFacade.shared.getter();
  v17 = type metadata accessor for FTMenuItemStateProvider();
  swift_allocObject();
  v18 = FTMenuItemStateProvider.init(call:callCenter:)();
  v47 = v17;
  v48 = &protocol witness table for FTMenuItemStateProvider;
  v46[0] = v18;
  v19 = OBJC_IVAR____TtC13InCallService31FTMenuRemoteAlertViewController_provider;
  swift_beginAccess();

  sub_1001DE3A8(v46, &v2[v19]);
  swift_endAccess();
  type metadata accessor for FTMenuItemRegistry();
  v20 = static FTMenuItemRegistry.shared.getter();
  v21 = [v12 uniqueProxyIdentifier];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  FTMenuItemRegistry.container(for:)();

  v47 = v17;
  v48 = &protocol witness table for FTMenuItemStateProvider;
  v46[0] = v18;
  sub_100005C44();
  *(swift_allocObject() + 16) = v7;
  sub_100005C44();
  *(swift_allocObject() + 16) = v16;
  sub_100005C44();
  v22 = swift_allocObject();
  *(v22 + 16) = v16;
  sub_100005C44();
  v23 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v24 = v16;
  swift_unknownObjectRetain();
  v25 = v24;

  v44 = static SharePlayDiscoverabilityMenuView.makeMoreMenuSharePlayDiscoverabilityView(foregroundApp:callSupportsCollaborations:willTapApp:)();
  sub_100005C44();
  v26 = swift_allocObject();
  *(v26 + 16) = v25;
  sub_100005C44();
  v27 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100005C44();
  v28 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100005C44();
  v29 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for MoreMenuViewModel();
  swift_allocObject();
  v43 = v25;
  v42 = v29;
  v41 = v26;
  v30 = MoreMenuViewModel.init(provider:container:presentAddParticipantSheet:toggleLiveCaptions:startScreenSharing:stopScreenSharing:startWaitOnHold:presentSharePlaySheet:presentSharePlayDismissalAlert:presentContactCard:startCallRecording:stopCallRecording:)();

  sub_100005C44();
  v31 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v46[0] = v30;
  v46[1] = sub_1001DE504;
  v46[2] = v31;
  v32 = objc_allocWithZone(sub_10014EA98(&qword_1003ADB00));
  v33 = UIHostingController.init(rootView:)();
  [v33 setOverrideUserInterfaceStyle:{2, sub_1001DE428, v22, sub_1001DE430, v23, v44, sub_1001DE438, v41, sub_1001DE45C, v27, sub_1001DE494, v28, sub_1001DE4CC, v42}];
  v34 = [v33 view];
  if (v34)
  {
    v35 = v34;
    v36 = [objc_opt_self() clearColor];
    [v35 setBackgroundColor:v36];

    [v33 setModalPresentationStyle:5];
    v37 = [v33 view];
    if (v37)
    {
      v38 = v37;
      v39 = [v37 layer];

      [v39 setHitTestsAsOpaque:1];
      v40 = *&v2[OBJC_IVAR____TtC13InCallService31FTMenuRemoteAlertViewController_moreMenuViewController];
      *&v2[OBJC_IVAR____TtC13InCallService31FTMenuRemoteAlertViewController_moreMenuViewController] = v33;

      [v2 presentViewController:v33 animated:0 completion:0];
      swift_unknownObjectRelease();

      swift_unknownObjectRelease();

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1001DDA70(void *a1)
{
  if (a1)
  {
    v3[4] = sub_1001DDB20;
    v3[5] = 0;
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 1107296256;
    v3[2] = sub_10002E570;
    v3[3] = &unk_10035EED8;
    v2 = _Block_copy(v3);
    [a1 requestFullScreenSpringBoardPresentationWithCompletion:v2];
    _Block_release(v2);
  }
}

void sub_1001DDB20()
{
  v0 = [objc_opt_self() defaultCenter];
  v1 = static NSNotificationName.MoreMenuRemoteAlertViewPresentAddParticipant.getter();
  [v0 postNotificationName:v1 object:0];
}

void sub_1001DDC04()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR____TtC13InCallService31FTMenuRemoteAlertViewController_controlsManager);
    if (v2)
    {
      v3 = v2;

      ConversationControlsManager.startWaitOnHoldSession()();
      v1 = v3;
    }
  }
}

void sub_1001DDC78()
{
  v0 = [objc_opt_self() defaultCenter];
  v1 = static NSNotificationName.MoreMenuRemoteAlertViewPresentContactCard.getter();
  sub_10014EA98(&qword_1003ADA18);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1002FAB60;
  AnyHashable.init<A>(_:)();
  *(inited + 96) = &type metadata for Bool;
  *(inited + 72) = 1;
  v3 = Dictionary.init(dictionaryLiteral:)();
  sub_100253DE4(v1, 0, v3, v0);
}

void sub_1001DDDA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    aBlock[4] = a2;
    aBlock[5] = 0;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10002E570;
    aBlock[3] = a3;
    v7 = _Block_copy(aBlock);
    [v6 requestFullScreenSpringBoardPresentationWithCompletion:v7];
    _Block_release(v7);
  }
}

void sub_1001DDE78(uint64_t a1, uint64_t a2)
{
  v4 = [objc_opt_self() defaultCenter];
  v5 = static NSNotificationName.MoreMenuRemoteAlertViewCallRecording.getter();
  sub_10014EA98(&qword_1003ADA18);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1002FAB60;
  AnyHashable.init<A>(_:)();
  *(inited + 96) = &type metadata for String;
  *(inited + 72) = a1;
  *(inited + 80) = a2;
  v7 = Dictionary.init(dictionaryLiteral:)();
  sub_100253DE4(v5, 0, v7, v4);
}

void sub_1001DDF98()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = sub_1001DE00C();

    if (v2)
    {
      [v2 dismiss];
      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_1001DE00C()
{
  if ([v0 _remoteViewControllerProxy])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v3 = 0u;
    v4 = 0u;
  }

  v5[0] = v3;
  v5[1] = v4;
  if (*(&v4 + 1))
  {
    sub_10014EA98(&qword_1003ABB50);
    if (swift_dynamicCast())
    {
      return v2;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_100008360(v5, &unk_1003AAF50);
    return 0;
  }
}

id sub_1001DE140(uint64_t a1, uint64_t a2, void *a3)
{
  ObjectType = swift_getObjectType();
  *&v3[OBJC_IVAR____TtC13InCallService31FTMenuRemoteAlertViewController_moreMenuViewController] = 0;
  sub_100006E74(OBJC_IVAR____TtC13InCallService31FTMenuRemoteAlertViewController_provider);
  *&v3[OBJC_IVAR____TtC13InCallService31FTMenuRemoteAlertViewController_controlsManager] = 0;
  if (a2)
  {
    v7 = String._bridgeToObjectiveC()();
  }

  else
  {
    v7 = 0;
  }

  v10.receiver = v3;
  v10.super_class = ObjectType;
  v8 = objc_msgSendSuper2(&v10, "initWithNibName:bundle:", v7, a3);

  return v8;
}

id sub_1001DE260(void *a1)
{
  swift_getObjectType();
  *&v1[OBJC_IVAR____TtC13InCallService31FTMenuRemoteAlertViewController_moreMenuViewController] = 0;
  v3 = sub_100006E74(OBJC_IVAR____TtC13InCallService31FTMenuRemoteAlertViewController_provider);
  *&v1[OBJC_IVAR____TtC13InCallService31FTMenuRemoteAlertViewController_controlsManager] = 0;
  v7.receiver = v1;
  v7.super_class = v4;
  v5 = objc_msgSendSuper2(&v7, "initWithCoder:", a1, v3);

  if (v5)
  {
  }

  return v5;
}

uint64_t sub_1001DE3A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10014EA98(&qword_1003AAFB0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001DE50C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v27[1] = a4;
  v7 = sub_10014EA98(&qword_1003ADB08);
  v8 = v7 - 8;
  __chkstk_darwin(v7, v9);
  v11 = v27 - v10;
  v12 = sub_10014EA98(&qword_1003ADB10);
  v13 = v12 - 8;
  __chkstk_darwin(v12, v14);
  v16 = v27 - v15;
  v17 = sub_10014EA98(&qword_1003ADB18);
  sub_1000058E8();
  __chkstk_darwin(v18, v19);
  v21 = v27 - v20;
  *v11 = static HorizontalAlignment.center.getter();
  *(v11 + 1) = 0;
  v11[16] = 1;
  v22 = sub_10014EA98(&qword_1003ADB20);
  sub_1001DE7D0(a2, a3, &v11[*(v22 + 44)]);
  v23 = static Edge.Set.all.getter();
  v24 = &v11[*(v8 + 44)];
  *v24 = v23;
  *(v24 + 8) = xmmword_1002FEA50;
  *(v24 + 24) = xmmword_1002FEA50;
  v24[40] = 0;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_1001BE054(v11, v16, &qword_1003ADB08);
  memcpy(&v16[*(v13 + 44)], __src, 0x70uLL);
  sub_1001BE054(v16, v21, &qword_1003ADB10);
  v21[*(v17 + 36)] = 0;
  v25 = swift_allocObject();
  v25[2] = a1;
  v25[3] = a2;
  v25[4] = a3;
  sub_1001DF2A4();

  View.onTapGesture(count:perform:)();

  return sub_100008360(v21, &qword_1003ADB18);
}

uint64_t sub_1001DE7D0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v30[0] = a1;
  v30[1] = a2;
  v32 = a3;
  v31 = sub_10014EA98(&qword_1003ADB60);
  __chkstk_darwin(v31, v3);
  v5 = (v30 - v4);
  v6 = sub_10014EA98(&qword_1003ADB68);
  __chkstk_darwin(v6, v7);
  v9 = v30 - v8;
  v10 = type metadata accessor for FTMenuView();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10, v12);
  v14 = v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10014EA98(&qword_1003ADB70);
  v17 = __chkstk_darwin(v15 - 8, v16);
  v19 = v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17, v20);
  v22 = v30 - v21;
  sub_1001DEC84();
  if (v23)
  {

    FTMenuView.init(viewModel:dismissHandler:sheetPresentation:isUIKit:hideBackButton:customNavigation:)();
    (*(v11 + 16))(v9, v14, v10);
    swift_storeEnumTagMultiPayload();
    sub_1001DF4A0();
    sub_1001DF558();
    _ConditionalContent<>.init(storage:)();
    (*(v11 + 8))(v14, v10);
  }

  else
  {
    *v5 = static Alignment.center.getter();
    v5[1] = v24;
    v25 = sub_10014EA98(&qword_1003ADBA0);
    sub_1001DEDD8(v5 + *(v25 + 44));
    *(v5 + *(v31 + 36)) = 256;
    sub_1001BE004(v5, v9, &qword_1003ADB60);
    swift_storeEnumTagMultiPayload();
    sub_1001DF4A0();
    sub_1001DF558();
    _ConditionalContent<>.init(storage:)();
    sub_100008360(v5, &qword_1003ADB60);
  }

  v26 = static Color.clear.getter();
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  memcpy(&v37[6], __src, 0x70uLL);
  sub_1001BE004(v22, v19, &qword_1003ADB70);
  v27 = v32;
  sub_1001BE004(v19, v32, &qword_1003ADB70);
  v28 = *(sub_10014EA98(&qword_1003ADB90) + 48);
  v33[0] = v26;
  LOWORD(v33[1]) = 256;
  memcpy(&v33[1] + 2, v37, 0x76uLL);
  memcpy((v27 + v28), v33, 0x80uLL);
  sub_1001BE004(v33, &v34, &qword_1003ADB98);
  sub_100008360(v22, &qword_1003ADB70);
  v34 = v26;
  v35 = 256;
  memcpy(v36, v37, sizeof(v36));
  sub_100008360(&v34, &qword_1003ADB98);
  return sub_100008360(v19, &qword_1003ADB70);
}

uint64_t sub_1001DEC84()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  if (v1 == 1)
  {
    v3 = objc_opt_self();
    v4 = [v3 mainScreen];
    [v4 bounds];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;

    v24.origin.x = v6;
    v24.origin.y = v8;
    v24.size.width = v10;
    v24.size.height = v12;
    Width = CGRectGetWidth(v24);
    v14 = [v3 mainScreen];
    [v14 bounds];
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v22 = v21;

    v25.origin.x = v16;
    v25.origin.y = v18;
    v25.size.width = v20;
    v25.size.height = v22;
    Height = CGRectGetHeight(v25);
    if (Height >= Width)
    {
      Height = Width;
    }

    *&result = Height * 0.6;
  }

  else
  {
    *&result = 0.0;
  }

  return result;
}

uint64_t sub_1001DEDD8@<X0>(void *a1@<X8>)
{
  v24 = a1;
  v22 = type metadata accessor for FTMenuView();
  v1 = *(v22 - 8);
  __chkstk_darwin(v22, v2);
  v4 = &v20[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = sub_10014EA98(&qword_1003ADBA8);
  v6 = __chkstk_darwin(v21, v5);
  v8 = &v20[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = __chkstk_darwin(v6, v9);
  v12 = &v20[-v11];
  __chkstk_darwin(v10, v13);
  v15 = &v20[-v14];
  v23 = static Color.clear.getter();
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  memcpy(&v29[6], v30, 0x70uLL);

  FTMenuView.init(viewModel:dismissHandler:sheetPresentation:isUIKit:hideBackButton:customNavigation:)();
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  (*(v1 + 32))(v12, v4, v22);
  memcpy(&v12[*(v21 + 36)], __src, 0x70uLL);
  sub_1001BE054(v12, v15, &qword_1003ADBA8);
  sub_1001BE004(v15, v8, &qword_1003ADBA8);
  v16 = v23;
  v25[0] = v23;
  LOWORD(v25[1]) = 256;
  memcpy(&v25[1] + 2, v29, 0x76uLL);
  v17 = v24;
  memcpy(v24, v25, 0x80uLL);
  v18 = sub_10014EA98(&unk_1003ADBB0);
  sub_1001BE004(v8, v17 + *(v18 + 48), &qword_1003ADBA8);
  sub_1001BE004(v25, &v26, &qword_1003ADB98);
  sub_100008360(v15, &qword_1003ADBA8);
  sub_100008360(v8, &qword_1003ADBA8);
  v26 = v16;
  v27 = 256;
  memcpy(v28, v29, sizeof(v28));
  return sub_100008360(&v26, &qword_1003ADB98);
}

uint64_t sub_1001DF1D0(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1001DF210(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1001DF2A4()
{
  result = qword_1003ADB28;
  if (!qword_1003ADB28)
  {
    sub_100155B7C(&qword_1003ADB18);
    sub_1001DF35C();
    sub_100027E08(&qword_1003ADB50, &qword_1003ADB58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003ADB28);
  }

  return result;
}

unint64_t sub_1001DF35C()
{
  result = qword_1003ADB30;
  if (!qword_1003ADB30)
  {
    sub_100155B7C(&qword_1003ADB10);
    sub_1001DF3E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003ADB30);
  }

  return result;
}

unint64_t sub_1001DF3E8()
{
  result = qword_1003ADB38;
  if (!qword_1003ADB38)
  {
    sub_100155B7C(&qword_1003ADB08);
    sub_100027E08(&qword_1003ADB40, &qword_1003ADB48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003ADB38);
  }

  return result;
}

unint64_t sub_1001DF4A0()
{
  result = qword_1003ADB78;
  if (!qword_1003ADB78)
  {
    sub_100155B7C(&qword_1003ADB60);
    sub_100027E08(&qword_1003ADB80, &qword_1003ADB88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003ADB78);
  }

  return result;
}

unint64_t sub_1001DF558()
{
  result = qword_1003ADBF0;
  if (!qword_1003ADBF0)
  {
    type metadata accessor for FTMenuView();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003ADBF0);
  }

  return result;
}

id sub_1001DF5C8()
{
  v1 = v0;
  v2 = type metadata accessor for CallRecordingPillViewController.DisplayStyle();
  sub_100006C24();
  v4 = v3;
  __chkstk_darwin(v5, v6);
  sub_100005BD0();
  v9 = v8 - v7;
  v10 = [v1 existingPrioritizedCall];
  if (!v10)
  {
    return 0;
  }

  v11 = v10;
  v45 = v4;
  v12 = [v1 _callRecordingController];
  if (v12)
  {
    v13 = v12;
    v14 = dispatch thunk of CallRecordingController.callUniqueProxyIdentifier.getter();
    v16 = v15;
    v17 = [v11 uniqueProxyIdentifier];
    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;

    if (v14 == v18 && v16 == v20)
    {

      return v13;
    }

    v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v22)
    {

      return v13;
    }
  }

  v23 = [v11 callUUID];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  [v11 recordingAvailability];
  v24 = [v11 recordingSession];
  v25 = v24;
  if (v24)
  {
    [v24 recordingState];
  }

  [v1 callRecordingAllowed];
  [v1 isCallRecordingActive];
  type metadata accessor for CallRecordingButtonViewModel();
  swift_allocObject();
  CallRecordingButtonViewModel.init(_:_:_:_:_:)();
  v26 = [v1 callRecordingIndicatorViewController];
  v27 = &selRef_handleSystemInitiatedPIPInterruptionStoppedNotification_;
  if (!v26)
  {
LABEL_20:
    (*(v45 + 104))(v9, enum case for CallRecordingPillViewController.DisplayStyle.portrait(_:), v2);
    v33 = objc_allocWithZone(type metadata accessor for CallRecordingPillViewController());
    v34 = CallRecordingPillViewController.init(displayStyle:usesGlass:)();
    [v1 v27[360]];

    v35 = [v1 callRecordingIndicatorViewController];
    if (v35)
    {
      v36 = v35;
      if (swift_dynamicCastClass())
      {
        v37 = CallRecordingPillViewController.viewModel.getter();

LABEL_25:
        sub_10003012C(&qword_1003AAE60, &qword_1003ADBE0);
        objc_allocWithZone(type metadata accessor for CallRecordingController());
        v38 = v37;

        v39 = v1;
        v40 = v11;
        v41 = CallRecordingController.init(call:entryPointViewModel:recordingIndicatorViewModel:presenter:)();
        [v39 set_callRecordingController:v41];

        if (v37)
        {
          v42 = v38;
          v43 = [v39 _callRecordingController];
          if (v43)
          {
            v44 = v43;
            dispatch thunk of CallRecordingController.setRecordingIndicatorViewModel(_:)();
          }
        }

        v13 = [v39 _callRecordingController];

        return v13;
      }
    }

    v37 = 0;
    goto LABEL_25;
  }

  v28 = v26;
  result = [v26 view];
  if (result)
  {
    v30 = result;
    v31 = [result superview];

    if (!v31)
    {
LABEL_19:

      v27 = &selRef_handleSystemInitiatedPIPInterruptionStoppedNotification_;
      goto LABEL_20;
    }

    [v28 willMoveToParentViewController:0];
    result = [v28 view];
    if (result)
    {
      v32 = result;
      [result removeFromSuperview];

      [v28 removeFromParentViewController];
      [v1 setCallRecordingIndicatorViewController:0];
      goto LABEL_19;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1001DFBE0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v7 = type metadata accessor for UIHostingControllerSizingOptions();
  __chkstk_darwin(v7 - 8, v8);
  sub_100005BD0();
  v9 = type metadata accessor for FTMenuView();
  sub_100006C24();
  v11 = v10;
  __chkstk_darwin(v12, v13);
  sub_100005BD0();
  v16 = v15 - v14;
  type metadata accessor for Features();
  v17 = static Features.shared.getter();
  v18 = Features.isMoreMenuEnabled.getter();

  if ((v18 & 1) != 0 && a3)
  {
    v41 = v11;
    v19 = direct field offset for CNKBannerPresentationManager.value;
    swift_beginAccess();
    v20 = *(a1 + v19);
    v21 = a3;
    v22 = dispatch thunk of BannerPresentationManager.conversationControlsManager.getter();

    if (!v22)
    {

      return;
    }

    sub_1001E02AC(&v57);
    if (!v58)
    {

      sub_1000306A4(&v57, &qword_1003AAFB0);
      return;
    }

    sub_1000304E0(&v57, v59);
    type metadata accessor for FTMenuItemRegistry();
    v23 = static FTMenuItemRegistry.shared.getter();
    v39 = v21;
    v40 = v22;
    sub_100008878(v59, v59[3]);
    dispatch thunk of FTMenuItemStateProviding.uniqueProxyIdentifier.getter();
    sub_1001E03E0(&v57);
    sub_1001E049C(v56);
    v55 = 0;
    memset(v54, 0, sizeof(v54));
    v53 = 0;
    memset(v52, 0, sizeof(v52));
    v51 = 0;
    memset(v50, 0, sizeof(v50));
    v49 = 0;
    memset(v48, 0, sizeof(v48));
    v47 = 0;
    memset(v46, 0, sizeof(v46));
    v45 = 0;
    memset(v44, 0, sizeof(v44));
    sub_100165DF8(v43);
    sub_1001E0524();
    FTMenuItemRegistry.register(with:punchOutProvider:callRecording:deskView:routes:liveCaptions:liveTranslation:screenShare:sharePlay:splitCalls:conferenceParticipants:)();

    v24 = v22;

    sub_100008094(v43);
    sub_100008094(v44);
    sub_100008094(v46);
    sub_100008094(v48);
    sub_100008094(v50);
    sub_100008094(v52);
    sub_100008094(v54);
    sub_100008094(v56);
    sub_100008094(&v57);
    sub_10003012C(&unk_1003AFB40, &unk_1003ADBD0);
    swift_unknownObjectRetain();
    dispatch thunk of ConversationControlsManager.systemAudioConversationControlsDelegate.setter();
    sub_100005C44();
    v25 = swift_allocObject();
    sub_100025B50();
    v26 = swift_allocObject();
    *(v26 + 16) = v25;
    *(v26 + 24) = v39;
    sub_100005C44();
    swift_allocObject();
    sub_100025B50();
    sub_10015E008(v59, &v57);
    v27 = v39;
    v28 = ConversationControlsManager.moreMenuViewModel(provider:presentContactCard:presentAddParticipantSheet:startCallRecording:stopCallRecording:)();
    sub_1000306A4(&v57, &qword_1003AAFB0);
    if (v28)
    {
      [v4 updateFloatingViewsVisibilityHandlers];
      sub_100005C44();
      swift_allocObject();
      sub_100025B50();

      FTMenuView.init(viewModel:dismissHandler:sheetPresentation:isUIKit:hideBackButton:customNavigation:)();
      sub_10002D974(&qword_1003ADBF0, &type metadata accessor for FTMenuView);
      v29 = View.inLockScreenHostingController()();
      (*(v41 + 8))(v16, v9);
      v30 = v29;
      [v30 setOverrideUserInterfaceStyle:2];
      static UIHostingControllerSizingOptions.intrinsicContentSize.getter();
      dispatch thunk of UIHostingController.sizingOptions.setter();
      v31 = [v30 view];
      if (v31)
      {
        v32 = v31;
        v42 = v27;
        v33 = [objc_opt_self() clearColor];
        [v32 setBackgroundColor:v33];

        [v4 addChildViewController:v30];
        v34 = [v4 backgroundController];
        v35 = [v30 view];

        if (v35)
        {
          sub_100005C44();
          v36 = swift_allocObject();
          sub_100025B50();
          v37 = swift_allocObject();
          *(v37 + 16) = v36;
          *(v37 + 24) = v30;
          v38 = v30;

          sub_100190F34(v35, 1, sub_1001E1718, v37);

          [v38 didMoveToParentViewController:v4];

LABEL_12:
          sub_100005B2C(v59);
          return;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      return;
    }

    goto LABEL_12;
  }
}

double sub_1001E02AC@<D0>(uint64_t a1@<X8>)
{
  v3 = [v1 existingPrioritizedCall];
  if (v3)
  {
    v4 = v3;
    type metadata accessor for CallCenterFacade();
    static CallCenterFacade.shared.getter();
    v5 = [v4 uniqueProxyIdentifier];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v6 = CallCenterFacade.call(with:)();

    if (v6)
    {

      static CallCenterFacade.shared.getter();
      v7 = type metadata accessor for FTMenuItemStateProvider();
      swift_allocObject();
      v8 = FTMenuItemStateProvider.init(call:callCenter:)();
      *(a1 + 24) = v7;
      *(a1 + 32) = &protocol witness table for FTMenuItemStateProvider;

      *a1 = v8;
      return result;
    }
  }

  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t sub_1001E03E0@<X0>(uint64_t *a1@<X8>)
{
  v3 = [v1 existingPrioritizedCall];
  *(swift_allocObject() + 16) = v1;
  v4 = type metadata accessor for AudioCallPunchOutMoreMenuViewModel();
  swift_allocObject();
  v5 = v1;
  result = AudioCallPunchOutMoreMenuViewModel.init(call:action:)();
  a1[3] = v4;
  a1[4] = &protocol witness table for AudioCallPunchOutMoreMenuViewModel;
  *a1 = result;
  return result;
}

uint64_t sub_1001E049C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1001DF5C8();
  v3 = result;
  if (result)
  {
    v4 = type metadata accessor for CallRecordingController();
    result = sub_10002D974(&qword_1003ADBE8, &type metadata accessor for CallRecordingController);
  }

  else
  {
    v4 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  *a1 = v3;
  a1[3] = v4;
  a1[4] = result;
  return result;
}

void *sub_1001E0524()
{
  v1 = [v0 callCenter];
  v2 = [v1 conferenceParticipantCalls];

  sub_1000064BC(0, &qword_1003ADBE0);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  result = sub_100017230(v3);
  v5 = result;
  v6 = 0;
  v7 = &_swiftEmptyArrayStorage;
  while (1)
  {
    if (v5 == v6)
    {

      return v7;
    }

    if ((v3 & 0xC000000000000001) != 0)
    {
      result = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v6 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_15;
      }

      result = *(v3 + 8 * v6 + 32);
    }

    v8 = result;
    if (__OFADD__(v6, 1))
    {
      break;
    }

    type metadata accessor for CallCenterFacade();
    v9 = v8;
    static CallCenterFacade.shared.getter();
    v10 = type metadata accessor for AudioCallConferenceParticipantMoreMenuViewModel();
    swift_allocObject();
    v11 = AudioCallConferenceParticipantMoreMenuViewModel.init(call:callCenter:)();

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_10023F628();
      v7 = v13;
    }

    v12 = v7[2];
    if (v12 >= v7[3] >> 1)
    {
      sub_10023F628();
      v7 = v14;
    }

    v16 = v10;
    v17 = &protocol witness table for AudioCallConferenceParticipantMoreMenuViewModel;
    *&v15 = v11;
    v7[2] = v12 + 1;
    result = sub_1000304E0(&v15, &v7[5 * v12 + 4]);
    ++v6;
  }

  __break(1u);
LABEL_15:
  __break(1u);
  return result;
}

void sub_1001E071C(uint64_t a1, uint64_t a2)
{
  v3 = [objc_opt_self() sharedInstance];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 isIPadIdiom];

    if (v5)
    {
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v7 = Strong;
        v8 = [Strong inCallRootViewController];

        if (v8)
        {
          [v8 presentContactsViewControllerForView:a2];
          swift_unknownObjectRelease();
        }
      }
    }

    else
    {
      swift_beginAccess();
      v9 = swift_unknownObjectWeakLoadStrong();
      if (v9)
      {
        v10 = v9;
        [v9 audioCallControlsViewControllerRequestedAddCallPresentation:0 forView:a2];
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1001E0824()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [Strong backgroundController];

    sub_1001918D8();
  }
}

void sub_1001E0894(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    [Strong removeChildViewController:a2];
  }
}

id sub_1001E098C()
{
  v1 = v0;
  v2 = [v0 existingPrioritizedCall];
  if (v2)
  {
    v3 = v2;
    type metadata accessor for FTMenuItemRegistry();
    v4 = static FTMenuItemRegistry.shared.getter();
    v5 = [v3 uniqueProxyIdentifier];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    sub_1001E03E0(v38);
    sub_1001E049C(v37);
    v36 = 0;
    memset(v35, 0, sizeof(v35));
    v34 = 0;
    memset(v33, 0, sizeof(v33));
    v32 = 0;
    memset(v31, 0, sizeof(v31));
    v30 = 0;
    memset(v29, 0, sizeof(v29));
    v28 = 0;
    memset(v27, 0, sizeof(v27));
    v26 = 0;
    memset(v25, 0, sizeof(v25));
    sub_100165DF8(v24);
    v23 = sub_1001E0524();
    FTMenuItemRegistry.register(with:punchOutProvider:callRecording:deskView:routes:liveCaptions:liveTranslation:screenShare:sharePlay:splitCalls:conferenceParticipants:)();

    sub_1000306A4(v24, &unk_1003ADBC0);
    sub_1000306A4(v25, &unk_1003ADBC0);
    sub_1000306A4(v27, &unk_1003ADBC0);
    sub_1000306A4(v29, &unk_1003ADBC0);
    sub_1000306A4(v31, &unk_1003ADBC0);
    sub_1000306A4(v33, &unk_1003ADBC0);
    sub_1000306A4(v35, &unk_1003ADBC0);
    sub_1000306A4(v37, &unk_1003ADBC0);
    sub_1000306A4(v38, &unk_1003ADBC0);
    v6 = [objc_opt_self() tu_contactStoreConfigurationForCall:{v3, v27, v25, v24, v23}];
    v7 = [objc_allocWithZone(CNContactStore) initWithConfiguration:v6];
    v8 = sub_1000140C4(v3);
    if (!v8)
    {
      goto LABEL_13;
    }

    if (!*(v8 + 16))
    {

      goto LABEL_13;
    }

    v9 = sub_1000140C4(v3);
    if (v9)
    {
      v10 = *(v9 + 16);

      if (v10 == 1)
      {
        v11 = String._bridgeToObjectiveC()();

        isa = [objc_opt_self() contactKeysToFetch];
        if (!isa)
        {
          sub_10014EA98(&qword_1003AAF80);
          static Array._unconditionallyBridgeFromObjectiveC(_:)();
          isa = Array._bridgeToObjectiveC()().super.isa;
        }

        v13 = [v7 contactForIdentifier:v11 keysToFetch:isa];

        if (v13)
        {
          v14 = [objc_opt_self() viewControllerForContact:v13];
LABEL_15:
          [v14 setContactStore:v7];
          [v14 setShouldShowSharedProfileBanner:1];
          [v14 setDelegate:v1];
          v38[3] = sub_1000064BC(0, &unk_1003ADBD0);
          v38[0] = v1;
          objc_allocWithZone(UIBarButtonItem);
          v19 = v1;
          v20 = sub_1001E1580(0, v38, "dismissNavigationControllerAndUpdateScene");
          v21 = [v14 navigationItem];
          [v21 setLeftBarButtonItem:v20];

          v15 = [objc_allocWithZone(UINavigationController) initWithRootViewController:v14];
          return v15;
        }

LABEL_13:
        v15 = [v3 handle];
        if (!v15)
        {

          return v15;
        }

        sub_1000064BC(0, &qword_1003AAF78);
        v16 = v15;
        v17 = CNMutableContact.init(handle:)();
        v18 = [objc_opt_self() viewControllerForUnknownContact:v17];

        v14 = v18;
        [v14 setActions:{objc_msgSend(v14, "actions") | 0x800}];

        v13 = 0;
        goto LABEL_15;
      }
    }
  }

  return 0;
}

void sub_1001E0ECC()
{
  v1 = [objc_opt_self() sharedInstance];
  if (v1)
  {
    v2 = v1;
    sub_100005C44();
    v3 = swift_allocObject();
    *(v3 + 16) = v0;
    v6[4] = sub_1001E1568;
    v6[5] = v3;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 1107296256;
    v6[2] = sub_100164920;
    v6[3] = &unk_10035EFD0;
    v4 = _Block_copy(v6);
    v5 = v0;

    [v2 requestPasscodeUnlockWithCompletion:v4];
    _Block_release(v4);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1001E0FCC(char a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2, v4);
  v6 = aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(v7 - 8);
  result = __chkstk_darwin(v7, v9);
  v12 = aBlock - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    sub_1000064BC(0, &qword_1003AAAB0);
    v13 = static OS_dispatch_queue.main.getter();
    v14 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = sub_1001E1570;
    aBlock[5] = v14;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10002E570;
    aBlock[3] = &unk_10035F020;
    v15 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    aBlock[0] = &_swiftEmptyArrayStorage;
    sub_10002D974(&qword_1003B0530, &type metadata accessor for DispatchWorkItemFlags);
    sub_10014EA98(&unk_1003AAAC0);
    sub_100032638();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v15);

    (*(v3 + 8))(v6, v2);
    return (*(v8 + 8))(v12, v7);
  }

  return result;
}

void sub_1001E129C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = sub_1001E098C();
    if (v2)
    {
      v3 = v2;
      v4 = swift_allocObject();
      *(v4 + 16) = v1;
      aBlock[4] = sub_1001E1578;
      aBlock[5] = v4;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10002E570;
      aBlock[3] = &unk_10035F070;
      v5 = _Block_copy(aBlock);
      v6 = v1;

      [v6 presentViewController:v3 animated:1 completion:v5];
      _Block_release(v5);

      v1 = v3;
    }
  }
}

id sub_1001E13BC(void *a1)
{
  result = [a1 inCallRootViewController];
  if (result)
  {
    [result updateDesiredSpringboardBehavior];

    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_1001E1468()
{
  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v2 = result;
    v3 = [result isIPadIdiom];

    if (v3)
    {
      v4 = "presentFullScreenPeoplePicker";
      v5 = v0;
    }

    else
    {
      v4 = "audioCallControlsViewControllerRequestedAddCallPresentation:forView:";
      v5 = v0;
    }

    return [v5 v4];
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1001E1580(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2[3];
  if (v6)
  {
    sub_100008878(a2, a2[3]);
    sub_100006C24();
    v9 = v8;
    __chkstk_darwin(v10, v11);
    sub_100005BD0();
    v14 = v13 - v12;
    (*(v9 + 16))(v13 - v12);
    v15 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v9 + 8))(v14, v6);
    sub_100005B2C(a2);
  }

  else
  {
    v15 = 0;
  }

  v16 = [v3 initWithBarButtonSystemItem:a1 target:v15 action:a3];
  swift_unknownObjectRelease();
  return v16;
}

uint64_t sub_1001E16D8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1001E1730@<X0>(uint64_t a1@<X8>)
{
  v60 = a1;
  v2 = type metadata accessor for DialInterventionView();
  v3 = v2 - 8;
  v59 = *(v2 - 8);
  v58 = *(v59 + 64);
  __chkstk_darwin(v2, v4);
  v57 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = type metadata accessor for Intervention.Kind();
  sub_10000688C();
  v46 = v6;
  __chkstk_darwin(v7, v8);
  sub_100005BD0();
  v11 = v10 - v9;
  sub_10014EA98(&qword_1003ADDA0);
  sub_10000688C();
  v49 = v12;
  v50 = v13;
  __chkstk_darwin(v12, v14);
  v16 = &v43 - v15;
  sub_10014EA98(&qword_1003ADDA8);
  sub_10000688C();
  v54 = v17;
  v55 = v18;
  __chkstk_darwin(v17, v19);
  v45 = &v43 - v20;
  v56 = sub_10014EA98(&qword_1003ADDB0);
  sub_1000058E8();
  __chkstk_darwin(v21, v22);
  v47 = &v43 - v23;
  v24 = static Color.clear.getter();
  v66 = 256;
  v25 = (v1 + *(v3 + 44));
  v53 = *v25;
  v52 = *(v25 + 1);
  v63 = v53;
  v64 = v52;
  v65 = v24;
  v51 = sub_10014EA98(&qword_1003AFBC0);
  State.projectedValue.getter();
  v44 = v1;
  v26 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  (*(v26 + 32))(ObjectType, v26);
  static Intervention.Kind.attemptingToCallViaExternalRequest(sensitiveParticipants:otherParticipants:isPresented:callType:)();

  v28 = sub_10014EA98(&qword_1003ADDB8);
  v29 = sub_100027E08(&qword_1003ADDC0, &qword_1003ADDB8);
  View.intervention(_:)();
  (*(v46 + 8))(v11, v48);

  v61 = v28;
  v62 = v29;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v31 = v45;
  v32 = v49;
  View.onInterventionHeeded(_:)();
  (*(v50 + 8))(v16, v32);
  v33 = v44;
  v34 = v57;
  sub_1001E2C7C(v44, v57);
  v35 = (*(v59 + 80) + 16) & ~*(v59 + 80);
  v36 = swift_allocObject();
  sub_1001E2CE0(v34, v36 + v35);
  v61 = v32;
  v62 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v37 = v47;
  v38 = v54;
  View.onShowContent(_:)();

  (*(v55 + 8))(v31, v38);
  sub_1001E2C7C(v33, v34);
  v39 = swift_allocObject();
  sub_1001E2CE0(v34, v39 + v35);
  v40 = (v37 + *(v56 + 36));
  *v40 = 0;
  v40[1] = 0;
  v40[2] = sub_1001E2DA0;
  v40[3] = v39;
  LOBYTE(v61) = v53;
  v62 = v52;
  State.wrappedValue.getter();
  LOBYTE(v61) = v63;
  sub_1001E2C7C(v33, v34);
  v41 = swift_allocObject();
  sub_1001E2CE0(v34, v41 + v35);
  sub_1001E2E88();
  View.onChange<A>(of:initial:_:)();

  return sub_10003B258(v37);
}

void sub_1001E1D30()
{
  if (qword_1003A9F78 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100008A14(v0, &unk_1003B88C8);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v1, "Not allow to call.", v2, 2u);
  }
}

uint64_t sub_1001E1E18(uint64_t a1)
{
  if (qword_1003A9F78 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100008A14(v2, &unk_1003B88C8);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Allow to call.", v5, 2u);
  }

  v6 = *(a1 + 24);
  ObjectType = swift_getObjectType();
  return (*(v6 + 16))(1, ObjectType, v6);
}

void sub_1001E1F20(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v50 = *(v6 - 8);
  v51 = v6;
  __chkstk_darwin(v6, v7);
  v46 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = type metadata accessor for DispatchQoS();
  v47 = *(v49 - 8);
  __chkstk_darwin(v49, v9);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DialInterventionView();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12 - 8, v15);
  v16 = type metadata accessor for DispatchTime();
  v17 = *(v16 - 8);
  v19 = __chkstk_darwin(v16, v18);
  v21 = &v42 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v19, v22);
  v25 = &v42 - v24;
  v48 = *a1;
  v26 = *a2;
  if ((v26 & 1) == 0)
  {
    v42 = v11;
    v27 = v13;
    v28 = a3;
    v29 = v23;
    v44 = v23;
    sub_1000064BC(0, &qword_1003AAAB0);
    v30 = static OS_dispatch_queue.main.getter();
    v45 = v26;
    v31 = v30;
    static DispatchTime.now()();
    + infix(_:_:)();
    v43 = *(v17 + 8);
    v43(v21, v29);
    sub_1001E2C7C(v28, &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
    v32 = (*(v27 + 80) + 16) & ~*(v27 + 80);
    v33 = swift_allocObject();
    sub_1001E2CE0(&v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v33 + v32);
    aBlock[4] = sub_1001E315C;
    aBlock[5] = v33;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10002E570;
    aBlock[3] = &unk_10035F218;
    v34 = _Block_copy(aBlock);

    v35 = v42;
    static DispatchQoS.unspecified.getter();
    aBlock[0] = &_swiftEmptyArrayStorage;
    sub_1001E3168(&qword_1003B0530, &type metadata accessor for DispatchWorkItemFlags);
    sub_10014EA98(&unk_1003AAAC0);
    sub_100027E08(&qword_1003B0540, &unk_1003AAAC0);
    v36 = v46;
    v37 = v51;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
    _Block_release(v34);

    v26 = v45;
    (*(v50 + 8))(v36, v37);
    (*(v47 + 8))(v35, v49);
    v43(v25, v44);
  }

  if (qword_1003A9F78 != -1)
  {
    swift_once();
  }

  v38 = type metadata accessor for Logger();
  sub_100008A14(v38, &unk_1003B88C8);
  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    *v41 = 67109376;
    *(v41 + 4) = v48;
    *(v41 + 8) = 1024;
    *(v41 + 10) = v26;
    _os_log_impl(&_mh_execute_header, v39, v40, "isPresented old: %{BOOL}d new: %{BOOL}d", v41, 0xEu);
  }
}

void sub_1001E2490(uint64_t a1, const char *a2)
{
  if (qword_1003A9F78 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100008A14(v4, &unk_1003B88C8);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, a2, v7, 2u);
  }

  sub_100008878((a1 + 32), *(a1 + 56));
  sub_1001EDE60(0);
}

uint64_t sub_1001E258C@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for SensitivityAnalysis.Flags();
  sub_1000058E8();
  __chkstk_darwin(v2, v3);
  sub_100005BD0();
  v4 = type metadata accessor for SensitivityAnalysis.Harms();
  v5 = sub_100005568(v4);
  __chkstk_darwin(v5, v6);
  sub_100005BD0();
  static SensitivityAnalysis.Harms.nudity.getter();
  sub_1001E3168(&qword_1003ADCA8, &type metadata accessor for SensitivityAnalysis.Flags);
  sub_10014EA98(&qword_1003ADCB0);
  sub_100027E08(&qword_1003ADCB8, &qword_1003ADCB0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  SensitivityAnalysis.init(harmsDetected:flags:)();
  v7 = type metadata accessor for SensitivityAnalysis();
  return sub_100006848(a1, 0, 1, v7);
}

void *sub_1001E2720(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a1;
  v4[5] = a2;
  v4[2] = a3;
  v4[3] = a4;
  return v4;
}

uint64_t sub_1001E2730()
{
  swift_unknownObjectRelease();

  return v0;
}

uint64_t sub_1001E2760()
{
  sub_1001E2730();

  return _swift_deallocClassInstance(v0, 48, 7);
}

uint64_t sub_1001E2794()
{
  v1 = [v0 provider];
  v2 = [v1 isTelephonyProvider];

  if (v2)
  {
    return 3;
  }

  if ([v0 isVideo])
  {
    return 1;
  }

  return 4;
}

uint64_t sub_1001E2814()
{
  if ([v0 avMode] == 2)
  {
    return 1;
  }

  else
  {
    return 4;
  }
}

uint64_t type metadata accessor for DialInterventionView()
{
  result = qword_1003ADD20;
  if (!qword_1003ADD20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1001E28E0()
{
  sub_1001E29EC();
  if (v0 <= 0x3F)
  {
    sub_1001E2AF0();
    if (v1 <= 0x3F)
    {
      sub_1001E2B58(319, &qword_1003ADD40);
      if (v2 <= 0x3F)
      {
        sub_1001E2B58(319, &qword_1003ADD48);
        if (v3 <= 0x3F)
        {
          sub_1001E2BAC();
          if (v4 <= 0x3F)
          {
            sub_1001E2C10();
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_1001E29EC()
{
  if (!qword_1003ADD30)
  {
    sub_1000064BC(255, &unk_1003AB0C0);
    sub_1000064BC(255, &qword_1003AB410);
    sub_1001E2A88();
    v0 = type metadata accessor for Dictionary();
    if (!v1)
    {
      atomic_store(v0, &qword_1003ADD30);
    }
  }
}

unint64_t sub_1001E2A88()
{
  result = qword_1003AB418;
  if (!qword_1003AB418)
  {
    sub_1000064BC(255, &unk_1003AB0C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AB418);
  }

  return result;
}

void sub_1001E2AF0()
{
  if (!qword_1003ADD38)
  {
    sub_1000064BC(255, &unk_1003AB0C0);
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &qword_1003ADD38);
    }
  }
}

uint64_t sub_1001E2B58(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void sub_1001E2BAC()
{
  if (!qword_1003ADD50)
  {
    sub_100155B7C(&qword_1003ADD58);
    v0 = type metadata accessor for State();
    if (!v1)
    {
      atomic_store(v0, &qword_1003ADD50);
    }
  }
}

void sub_1001E2C10()
{
  if (!qword_1003ADD60)
  {
    v0 = type metadata accessor for State();
    if (!v1)
    {
      atomic_store(v0, &qword_1003ADD60);
    }
  }
}

uint64_t sub_1001E2C7C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DialInterventionView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001E2CE0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DialInterventionView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001E2D44()
{
  v1 = type metadata accessor for DialInterventionView();
  sub_100005568(v1);
  v3 = v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return sub_1001E1E18(v3);
}

void sub_1001E2DAC(const char *a1)
{
  v3 = type metadata accessor for DialInterventionView();
  sub_100005568(v3);
  sub_1001E2490(v1 + ((*(v4 + 80) + 16) & ~*(v4 + 80)), a1);
}

void sub_1001E2E0C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v5 = type metadata accessor for DialInterventionView();
  sub_100005568(v5);
  v7 = v2 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  sub_1001E1F20(a1, a2, v7);
}

unint64_t sub_1001E2E88()
{
  result = qword_1003ADDC8;
  if (!qword_1003ADDC8)
  {
    sub_100155B7C(&qword_1003ADDB0);
    sub_100155B7C(&qword_1003ADDA8);
    sub_100155B7C(&qword_1003ADDA0);
    sub_100155B7C(&qword_1003ADDB8);
    sub_100027E08(&qword_1003ADDC0, &qword_1003ADDB8);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003ADDC8);
  }

  return result;
}

uint64_t sub_1001E3004()
{
  v1 = type metadata accessor for DialInterventionView();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);

  swift_unknownObjectRelease();
  sub_100005B2C(v0 + v3 + 32);
  v5 = v0 + v3 + *(v1 + 32);
  v6 = type metadata accessor for SensitivityAnalysis();
  if (!sub_100006AC0(v5, 1, v6))
  {
    (*(*(v6 - 8) + 8))(v5, v6);
  }

  sub_10014EA98(&qword_1003ADCC0);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1001E3168(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1001E31B8(unint64_t result)
{
  if (result > 1)
  {
    return 0;
  }

  return result;
}

unint64_t sub_1001E31C8@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1001E31B8(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_1001E321C(char *a1)
{
  v38 = a1;
  v1 = type metadata accessor for AttributeContainer();
  __chkstk_darwin(v1 - 8, v2);
  v3 = sub_10014EA98(&qword_1003ADE38);
  __chkstk_darwin(v3 - 8, v4);
  v6 = &v36 - v5;
  v7 = type metadata accessor for UIButton.Configuration.CornerStyle();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7, v9);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for UIButton.Configuration();
  v13 = *(v12 - 8);
  v15 = __chkstk_darwin(v12, v14);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15, v18);
  v20 = &v36 - v19;
  v21 = (v13 + 32);
  if (_UISolariumEnabled())
  {
    static UIButton.Configuration._tintedGlass()();
    (*v21)(v20, v17, v12);
  }

  else
  {
    static UIButton.Configuration.filled()();
    (*v21)(v20, v17, v12);
    (*(v8 + 104))(v11, enum case for UIButton.Configuration.CornerStyle.capsule(_:), v7);
    UIButton.Configuration.cornerStyle.setter();
  }

  v22 = objc_opt_self();
  v23 = [v22 systemBlueColor];
  UIButton.Configuration.baseBackgroundColor.setter();
  v24 = [v22 systemWhiteColor];
  UIButton.Configuration.baseForegroundColor.setter();
  UIButton.Configuration.imagePadding.setter();
  v25 = [objc_opt_self() configurationWithScale:2];
  UIButton.Configuration.preferredSymbolConfigurationForImage.setter();
  v37 = OBJC_IVAR____TtC13InCallService33EmergencyActionButtonsWaitingView_type;
  v26 = *&v38[OBJC_IVAR____TtC13InCallService33EmergencyActionButtonsWaitingView_type];
  if (v26 == 1)
  {
    sub_1001FD1F8(0x505F45534F4F4843, 0xEC0000004F544F48);
  }

  else
  {
    if (v26)
    {
      v40[0] = *&v38[OBJC_IVAR____TtC13InCallService33EmergencyActionButtonsWaitingView_type];
      result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
      __break(1u);
      return result;
    }

    sub_1001FD1F8(0x49565F4552414853, 0xEB000000004F4544);
  }

  AttributeContainer.init()();
  AttributedString.init(_:attributes:)();
  v27 = type metadata accessor for AttributedString();
  sub_100006848(v6, 0, 1, v27);
  UIButton.Configuration.attributedTitle.setter();
  sub_1000064BC(0, &qword_1003AAA98);
  sub_1001FFAD8();
  UIButton.Configuration.image.setter();
  v28 = UIButton.Configuration.attributedTitle.modify();
  if (!sub_100006AC0(v29, 1, v27))
  {
    v39 = [objc_opt_self() systemFontOfSize:15.0 weight:UIFontWeightBold];
    sub_1001E5698();
    AttributedString.subscript.setter();
  }

  v28(v40, 0);
  UIButton.Configuration.contentInsets.setter();
  sub_1000064BC(0, &qword_1003ABA20);
  (*(v13 + 16))(v17, v20, v12);
  v30 = UIButton.init(configuration:primaryAction:)();
  LODWORD(v31) = 1144750080;
  [v30 setContentHuggingPriority:1 forAxis:v31];
  [v30 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v30 addTarget:v38 action:"continueButtonTapped" forControlEvents:64];
  LODWORD(v32) = 1148846080;
  [v30 setContentCompressionResistancePriority:1 forAxis:v32];
  if (_UISolariumEnabled())
  {
    v33 = [v22 clearColor];
    [v30 setTintColor:v33];
  }

  v34 = v38;
  [v38 addSubview:v30];
  if (!*&v34[v37])
  {
    [v30 setUserInteractionEnabled:0];
  }

  [v30 setOverrideUserInterfaceStyle:2];
  [v30 setMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityMedium];

  (*(v13 + 8))(v20, v12);
  return v30;
}

id sub_1001E3860()
{
  v1 = OBJC_IVAR____TtC13InCallService33EmergencyActionButtonsWaitingView____lazy_storage___spinnerButton;
  v2 = *(v0 + OBJC_IVAR____TtC13InCallService33EmergencyActionButtonsWaitingView____lazy_storage___spinnerButton);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC13InCallService33EmergencyActionButtonsWaitingView____lazy_storage___spinnerButton);
  }

  else
  {
    v4 = sub_1001E38C0();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1001E38C0()
{
  v0 = type metadata accessor for UIButton.Configuration.CornerStyle();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0, v2);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for UIButton.Configuration();
  v6 = *(v5 - 8);
  v8 = __chkstk_darwin(v5, v7);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8, v11);
  v13 = &v23 - v12;
  if (_UISolariumEnabled())
  {
    static UIButton.Configuration._tintedGlass()();
  }

  else
  {
    static UIButton.Configuration.filled()();
    (*(v1 + 104))(v4, enum case for UIButton.Configuration.CornerStyle.capsule(_:), v0);
    UIButton.Configuration.cornerStyle.setter();
  }

  v14 = objc_opt_self();
  v15 = [v14 secondarySystemFillColor];
  UIButton.Configuration.baseBackgroundColor.setter();
  v16 = [v14 systemWhiteColor];
  UIButton.Configuration.baseForegroundColor.setter();
  UIButton.Configuration.showsActivityIndicator.setter();
  sub_1000064BC(0, &qword_1003ABA20);
  (*(v6 + 16))(v10, v13, v5);
  v17 = UIButton.init(configuration:primaryAction:)();
  [v17 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v17 setOverrideUserInterfaceStyle:2];
  [v17 setMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityMedium];

  if (_UISolariumEnabled())
  {
    v18 = [v14 clearColor];
    [v17 setTintColor:v18];
  }

  v19 = v17;
  v20 = sub_1001FD1F8(0x495443454E4E4F43, 0xEA0000000000474ELL);
  sub_1001E56EC(v20, v21, v19);

  (*(v6 + 8))(v13, v5);
  return v19;
}

id sub_1001E3BE0(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = a2(v2);
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

id sub_1001E3C44(uint64_t a1)
{
  v34[0] = a1;
  v1 = type metadata accessor for AttributeContainer();
  __chkstk_darwin(v1 - 8, v2);
  v3 = sub_10014EA98(&qword_1003ADE38);
  __chkstk_darwin(v3 - 8, v4);
  v6 = v34 - v5;
  v7 = type metadata accessor for UIButton.Configuration.CornerStyle();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7, v9);
  v11 = v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for UIButton.Configuration();
  v13 = *(v12 - 8);
  v15 = __chkstk_darwin(v12, v14);
  v17 = v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15, v18);
  v20 = v34 - v19;
  v21 = (v13 + 32);
  if (_UISolariumEnabled())
  {
    static UIButton.Configuration._tintedGlass()();
    (*v21)(v20, v17, v12);
  }

  else
  {
    static UIButton.Configuration.filled()();
    (*v21)(v20, v17, v12);
    (*(v8 + 104))(v11, enum case for UIButton.Configuration.CornerStyle.capsule(_:), v7);
    UIButton.Configuration.cornerStyle.setter();
  }

  v22 = objc_opt_self();
  v23 = [v22 secondarySystemFillColor];
  UIButton.Configuration.baseBackgroundColor.setter();
  v24 = [v22 systemWhiteColor];
  UIButton.Configuration.baseForegroundColor.setter();
  sub_1000064BC(0, &qword_1003AAA98);
  sub_1001FFAD8();
  UIButton.Configuration.image.setter();
  UIButton.Configuration.imagePadding.setter();
  v25 = [objc_opt_self() configurationWithScale:2];
  UIButton.Configuration.preferredSymbolConfigurationForImage.setter();
  sub_1001FD1F8(0x574F4E5F544F4ELL, 0xE700000000000000);
  AttributeContainer.init()();
  AttributedString.init(_:attributes:)();
  v26 = type metadata accessor for AttributedString();
  sub_100006848(v6, 0, 1, v26);
  UIButton.Configuration.attributedTitle.setter();
  v27 = UIButton.Configuration.attributedTitle.modify();
  if (!sub_100006AC0(v28, 1, v26))
  {
    v34[1] = [objc_opt_self() systemFontOfSize:15.0 weight:UIFontWeightBold];
    sub_1001E5698();
    AttributedString.subscript.setter();
  }

  v27(v35, 0);
  UIButton.Configuration.contentInsets.setter();
  sub_1000064BC(0, &qword_1003ABA20);
  (*(v13 + 16))(v17, v20, v12);
  v29 = UIButton.init(configuration:primaryAction:)();
  [v29 setTranslatesAutoresizingMaskIntoConstraints:0];
  v30 = v34[0];
  [v29 addTarget:v34[0] action:"cancelButtonTapped" forControlEvents:64];
  [v29 setTranslatesAutoresizingMaskIntoConstraints:0];
  LODWORD(v31) = 1148846080;
  [v29 setContentCompressionResistancePriority:1 forAxis:v31];
  if (_UISolariumEnabled())
  {
    v32 = [v22 clearColor];
    [v29 setTintColor:v32];
  }

  [v30 addSubview:{v29, v34[0]}];
  [v29 setOverrideUserInterfaceStyle:2];
  [v29 setMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityMedium];

  (*(v13 + 8))(v20, v12);
  return v29;
}