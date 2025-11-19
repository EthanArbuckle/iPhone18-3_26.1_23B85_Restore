uint64_t sub_1001745D0(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a1)
  {
    if (a2)
    {
      v15 = a2;
    }

    else
    {
      v27 = String._bridgeToObjectiveC()();
      v28 = String._bridgeToObjectiveC()();
      v15 = AMSError();
    }

    swift_errorRetain();
    sub_100170A94();
    v30 = v29;
    v31 = swift_allocObject();
    *(v31 + 16) = v15;
    v37 = sub_100179444;
    v38 = v31;
    aBlock = _NSConcreteStackBlock;
    v34 = 1107296256;
    v35 = sub_100170204;
    v36 = &unk_1002500F0;
    v32 = _Block_copy(&aBlock);
    swift_errorRetain();

    v26 = [v30 continueWithPromiseBlock:v32];
    _Block_release(v32);

LABEL_20:
    sub_1001749EC(a3, (a4 + 16), (a5 + 16));
    return v26;
  }

  swift_beginAccess();
  v9 = *(a5 + 16);
  if (!v9)
  {
    v16 = a1;
LABEL_15:
    sub_100179190(a1);
    swift_beginAccess();
    v17 = *(a5 + 16);

    v18 = [a1 error];
    sub_100176D5C();

    v19 = [a1 error];
    if (v19)
    {
      v20 = v19;
      sub_100170A94();
      v22 = v21;
      v23 = swift_allocObject();
      *(v23 + 16) = v20;
      v37 = sub_1001791FC;
      v38 = v23;
      aBlock = _NSConcreteStackBlock;
      v34 = 1107296256;
      v35 = sub_100170204;
      v36 = &unk_100250140;
      v24 = _Block_copy(&aBlock);
      v25 = v20;

      v26 = [v22 continueWithPromiseBlock:v24];
      _Block_release(v24);
    }

    else
    {
      v26 = [objc_opt_self() promiseWithResult:a1];
    }

    goto LABEL_20;
  }

  v10 = sub_100049574(v9);
  v11 = a1;

  for (i = 0; ; ++i)
  {
    if (v10 == i)
    {

      goto LABEL_15;
    }

    if ((v9 & 0xC000000000000001) != 0)
    {
      result = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (i >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_22;
      }

      v14 = *(v9 + 8 * i + 32);
      result = swift_unknownObjectRetain();
    }

    if (__OFADD__(i, 1))
    {
      break;
    }

    sub_1001760BC();
    result = swift_unknownObjectRelease();
  }

  __break(1u);
LABEL_22:
  __break(1u);
  return result;
}

id sub_1001749EC(uint64_t a1, uint64_t *a2, void *a3)
{
  v25 = *(a1 + 112);
  [v25 lock];
  swift_beginAccess();
  v5 = *a2;
  if (*a2)
  {
    v24 = a3;
    v6 = sub_100049574(v5);
    v7 = v5 & 0xC000000000000001;

    for (i = 0; ; ++i)
    {
      if (v6 == i)
      {

        a3 = v24;
        goto LABEL_10;
      }

      sub_1000F1168(i, v7 == 0, v5);
      if (v7)
      {
        result = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v9 = result;
      }

      else
      {
        v9 = *(v5 + 8 * i + 32);
        result = swift_unknownObjectRetain();
      }

      if (__OFADD__(i, 1))
      {
        break;
      }

      v11 = [objc_msgSend(v9 "identifier")];
      swift_unknownObjectRelease();
      v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v14 = v13;

      swift_beginAccess();
      sub_100193C7C(v12, v14);
      swift_endAccess();
      swift_unknownObjectRelease();
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  else
  {
LABEL_10:
    swift_beginAccess();
    v15 = *a3;
    if (*a3)
    {
      v16 = sub_100049574(*a3);
      v17 = v15 & 0xC000000000000001;

      for (j = 0; v16 != j; ++j)
      {
        sub_1000F1168(j, v17 == 0, v15);
        if (v17)
        {
          result = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v19 = result;
        }

        else
        {
          v19 = *(v15 + 8 * j + 32);
          result = swift_unknownObjectRetain();
        }

        if (__OFADD__(j, 1))
        {
          goto LABEL_21;
        }

        v20 = [v19 name];
        v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v23 = v22;

        swift_beginAccess();
        sub_100193C7C(v21, v23);
        swift_endAccess();
        swift_unknownObjectRelease();
      }
    }

    return [v25 unlock];
  }

  return result;
}

id sub_100174CA4()
{
  v0 = _convertErrorToNSError(_:)();
  v1 = [objc_opt_self() promiseWithError:v0];

  return v1;
}

id sub_100174CFC(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a2;
  v8 = a3;
  v9 = sub_100008FE8();
  v10 = v6(v9);

  return v10;
}

uint64_t sub_100174D84(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for OSSignpostError();
  v39 = *(v3 - 8);
  v4 = *(v39 + 64);
  v5 = __chkstk_darwin(v3);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v38 - v8;
  v10 = type metadata accessor for OSSignpostID();
  v42 = *(v10 - 8);
  v43 = v10;
  v11 = *(v42 + 64);
  v12 = __chkstk_darwin(v10);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v38 - v15;
  v17 = type metadata accessor for OSSignposter();
  v40 = *(v17 - 8);
  v41 = v17;
  v18 = *(v40 + 64);
  v19 = __chkstk_darwin(v17);
  v21 = &v38 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v23 = &v38 - v22;
  if (a2)
  {
    if (qword_100268700 != -1)
    {
      swift_once();
    }

    v24 = *(qword_100287860 + 16);
    OSSignposter.init(logHandle:)();
    v25 = OSSignposter.logHandle.getter();
    OSSignpostIntervalState.signpostID.getter();
    v26 = static os_signpost_type_t.end.getter();
    if (OS_os_log.signpostsEnabled.getter())
    {

      checkForErrorAndConsumeState(state:)();

      v27 = v39;
      if ((*(v39 + 88))(v9, v3) == enum case for OSSignpostError.doubleEnd(_:))
      {
        v28 = "[Error] Interval already ended";
      }

      else
      {
        (*(v27 + 8))(v9, v3);
        v28 = "Failed";
      }

      v33 = swift_slowAlloc();
      *v33 = 0;
      v34 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v25, v26, v34, "MetricsIdentifier", v28, v33, 2u);
LABEL_17:
    }
  }

  else
  {
    if (qword_100268700 != -1)
    {
      swift_once();
    }

    v29 = *(qword_100287860 + 16);
    OSSignposter.init(logHandle:)();
    v25 = OSSignposter.logHandle.getter();
    OSSignpostIntervalState.signpostID.getter();
    v30 = static os_signpost_type_t.end.getter();
    if (OS_os_log.signpostsEnabled.getter())
    {

      checkForErrorAndConsumeState(state:)();

      v31 = v39;
      if ((*(v39 + 88))(v7, v3) == enum case for OSSignpostError.doubleEnd(_:))
      {
        v32 = "[Error] Interval already ended";
      }

      else
      {
        (*(v31 + 8))(v7, v3);
        v32 = "Finished";
      }

      v35 = swift_slowAlloc();
      *v35 = 0;
      v36 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v25, v30, v36, "MetricsIdentifier", v32, v35, 2u);
      v16 = v14;
      v23 = v21;
      goto LABEL_17;
    }

    v16 = v14;
    v23 = v21;
  }

  (*(v42 + 8))(v16, v43);
  return (*(v40 + 8))(v23, v41);
}

id sub_10017524C()
{
  if (qword_100268700 != -1)
  {
    sub_100006F00();
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  sub_10000A610();
  v1 = type metadata accessor for LogInterpolation();
  sub_100002CFC(v1);
  v3 = *(v2 + 72);
  sub_1000056F8();
  *(sub_100003BB4() + 16) = xmmword_1001E5F70;
  type metadata accessor for MetricsIdentifierCloudDataController();
  sub_100005D24();
  v4 = AMSLogKey();
  if (v4)
  {
    v5 = v4;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  sub_100015C40();

  sub_100002C00(&v21);
  LogInterpolation.init(stringLiteral:)();
  v6 = static os_log_type_t.debug.getter();
  sub_1000036B0(v6);

  v7 = [objc_allocWithZone(AMSMutableBinaryPromise) init];
  v8 = sub_1000437F4();
  v9 = [v8 fetchUserRecordID];
  sub_100017DF8();
  swift_unknownObjectRelease();
  sub_100004AA0();
  swift_allocObject();
  sub_1000072D0();
  sub_100002FB8();
  v10 = swift_allocObject();
  *(v10 + 16) = v8;
  *(v10 + 24) = v7;
  v25 = sub_1001790D8;
  v26 = v10;
  v21 = _NSConcreteStackBlock;
  v22 = 1107296256;
  v23 = sub_1001794CC;
  v24 = &unk_10024FEC0;
  v11 = _Block_copy(&v21);
  v12 = v7;

  v13 = sub_100061E90();
  [v13 v14];
  _Block_release(v11);
  sub_100002FB8();
  v15 = swift_allocObject();
  *(v15 + 16) = v0;
  *(v15 + 24) = v12;
  v25 = sub_1001790E0;
  v26 = v15;
  v21 = _NSConcreteStackBlock;
  v22 = 1107296256;
  v23 = sub_1000266E0;
  v24 = &unk_10024FF10;
  v16 = _Block_copy(&v21);

  v17 = v12;

  v18 = sub_100061E90();
  [v18 v19];

  _Block_release(v16);
  return v17;
}

id sub_100175558(void *a1, uint64_t a2, void *a3)
{
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return [a3 finishWithSuccess];
  }

  v16 = Strong;
  v51 = v11;
  v52 = v10;
  v53 = a3;
  v17 = *(Strong + 112);

  [v17 lock];
  v18 = sub_10016D2A4();
  v20 = v19;
  [v17 unlock];

  v21 = [a1 name];
  v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v24 = v23;

  if (!v20)
  {

    goto LABEL_11;
  }

  if (v18 != v22 || v20 != v24)
  {
    v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v26)
    {
      goto LABEL_16;
    }

LABEL_11:
    v49 = v6;
    v50 = v5;
    if (qword_100268700 != -1)
    {
      swift_once();
    }

    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v28 = *(type metadata accessor for LogInterpolation() - 8);
    v29 = *(v28 + 72);
    v30 = (*(v28 + 80) + 32) & ~*(v28 + 80);
    *(swift_allocObject() + 16) = xmmword_1001E5F70;
    v56 = type metadata accessor for MetricsIdentifierCloudDataController();
    aBlock[0] = v16;

    v31 = AMSLogKey();
    if (v31)
    {
      v32 = v31;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_100002C00(aBlock);
    LogInterpolation.init(stringLiteral:)();
    v38 = static os_log_type_t.debug.getter();
    sub_1000036B0(v38);

    sub_100177994(v39, v16, &static Date.distantPast.getter);
    v40 = *(v16 + 128);
    v41 = swift_allocObject();
    v42 = v53;
    *(v41 + 16) = v16;
    *(v41 + 24) = v42;
    v57 = sub_1001790E8;
    v58 = v41;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100005E50;
    v56 = &unk_10024FF60;
    v43 = _Block_copy(aBlock);

    v44 = v40;
    v45 = v42;
    static DispatchQoS.unspecified.getter();
    v54 = _swiftEmptyArrayStorage;
    sub_100013B44(&qword_10026CD40, &type metadata accessor for DispatchWorkItemFlags);
    sub_10007B9A4(&unk_100270490, &unk_1001E74F0);
    sub_10004F4C0(&qword_10026CD50, &unk_100270490, &unk_1001E74F0);
    v46 = v50;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v43);

    (*(v49 + 8))(v9, v46);
    (*(v51 + 8))(v14, v52);
  }

LABEL_16:
  if (qword_100268700 != -1)
  {
    swift_once();
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v33 = *(type metadata accessor for LogInterpolation() - 8);
  v34 = *(v33 + 72);
  v35 = (*(v33 + 80) + 32) & ~*(v33 + 80);
  *(swift_allocObject() + 16) = xmmword_1001E5F70;
  v56 = type metadata accessor for MetricsIdentifierCloudDataController();
  aBlock[0] = v16;

  v36 = AMSLogKey();
  if (v36)
  {
    v37 = v36;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(aBlock);
  LogInterpolation.init(stringLiteral:)();
  v47 = static os_log_type_t.debug.getter();
  sub_1000036B0(v47);

  [v53 finishWithSuccess];
}

void sub_100175C64(uint64_t a1, void *a2)
{
  sub_10007B9A4(&qword_10026F910, &qword_1001EBE40);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1001EED80;
  *(v3 + 32) = sub_100172EA0();
  sub_10016ED98();
  *(v3 + 40) = v4;
  sub_100002BC0(0, &qword_10026F918, AMSBinaryPromise_ptr);
  v5 = sub_10016DFA0();
  [a2 finishWithPromise:v5];
}

uint64_t sub_100175D2C(uint64_t a1)
{
  sub_10000A1D8(a1);
  v2 = swift_unknownObjectRetain();
  v1(v2);

  return swift_unknownObjectRelease();
}

void sub_100175D80(uint64_t a1, uint64_t a2, void *a3)
{
  if (qword_100268700 != -1)
  {
    swift_once();
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v5 = *(type metadata accessor for LogInterpolation() - 8);
  v6 = *(v5 + 72);
  v7 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  *(swift_allocObject() + 16) = xmmword_1001E5F70;
  v12[3] = type metadata accessor for MetricsIdentifierCloudDataController();
  v12[0] = a2;

  v8 = AMSLogKey();
  if (v8)
  {
    v9 = v8;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(v12);
  LogInterpolation.init(stringLiteral:)();
  v10 = static os_log_type_t.error.getter();
  sub_1000036B0(v10);

  v11 = _convertErrorToNSError(_:)();
  [a3 finishWithError:{v11, v12[0]}];
}

uint64_t sub_100175F58@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1001CCA58();
  v4 = [a1 name];
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  v8._countAndFlagsBits = 95;
  v8._object = 0xE100000000000000;
  String.append(_:)(v8);

  v10 = v5;
  v9 = v7;
  v11 = [objc_msgSend(a1 "zoneIdentifier")];
  sub_100017FBC();
  swift_unknownObjectRelease();
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  v15._countAndFlagsBits = v12;
  v15._object = v14;
  String.append(_:)(v15);

  v16._countAndFlagsBits = v10;
  v16._object = v9;
  URL.appendPathComponent(_:)(v16);

  v17._countAndFlagsBits = 0x64726F636572;
  v17._object = 0xE600000000000000;
  URL.appendPathExtension(_:)(v17);
  v18 = type metadata accessor for URL();

  return sub_10000A7C0(a2, 0, 1, v18);
}

void sub_1001760BC()
{
  sub_100003D74();
  v3 = v2;
  v4 = sub_10007B9A4(&unk_10026FEE0, &unk_1001E67C0);
  sub_100003D10(v4);
  v6 = *(v5 + 64);
  sub_100004E78();
  __chkstk_darwin(v7);
  sub_100004D38();
  v48 = type metadata accessor for URL();
  v8 = sub_100002CC4(v48);
  v10 = v9;
  v12 = *(v11 + 64);
  __chkstk_darwin(v8);
  sub_100002DEC();
  sub_10000C79C();
  v13 = type metadata accessor for LogInterpolation.StringInterpolation();
  v14 = sub_100003D10(v13);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  sub_100002DEC();
  sub_100012F7C();
  if (qword_100268700 != -1)
  {
    sub_100006F00();
  }

  v45 = v0;
  v46 = v10;
  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  sub_100002DFC();
  v17 = type metadata accessor for LogInterpolation();
  sub_100002CFC(v17);
  v44 = ((*(v19 + 80) + 32) & ~*(v19 + 80)) + 2 * *(v18 + 72);
  *(swift_allocObject() + 16) = xmmword_1001E5F70;
  v43 = type metadata accessor for MetricsIdentifierCloudDataController();
  v51 = v43;
  v50[0] = v0;
  v47 = v0;

  v20 = AMSLogKey();
  if (v20)
  {
    v21 = v20;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(v50);
  LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  sub_100004810();
  v22._countAndFlagsBits = 0xD000000000000022;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v22);
  ObjectType = swift_getObjectType();
  v51 = ObjectType;
  v50[0] = v3;
  swift_unknownObjectRetain();
  LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
  sub_100009FB0(v50, &qword_10026D350, &qword_1001E6050);
  v24._countAndFlagsBits = 46;
  v24._object = 0xE100000000000000;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v24);
  LogInterpolation.init(stringInterpolation:)();
  v25 = static os_log_type_t.info.getter();
  sub_1000036B0(v25);

  [v0[13] removeRecordWithIdentifier:v3];
  sub_100175F58(v3, v1);
  if (sub_100009F34(v1, 1, v48) == 1)
  {
    sub_100009FB0(v1, &unk_10026FEE0, &unk_1001E67C0);
  }

  else
  {
    (*(v10 + 32))(v0, v1, v48);
    v26 = [objc_opt_self() defaultManager];
    URL._bridgeToObjectiveC()(v27);
    v29 = v28;
    v50[0] = 0;
    v30 = sub_10003AF3C();
    v32 = [v30 v31];

    if (v32)
    {
      v33 = *(v46 + 8);
      v34 = v50[0];
      v33(v45, v48);
    }

    else
    {
      v35 = v50[0];
      _convertNSErrorToError(_:)();

      swift_willThrow();
      *(swift_allocObject() + 16) = xmmword_1001E5F70;
      v51 = v43;
      v50[0] = v47;

      v36 = AMSLogKey();
      if (v36)
      {
        v37 = v36;
        static String._unconditionallyBridgeFromObjectiveC(_:)();
      }

      static LogInterpolation.prefix(_:_:)();

      sub_100002C00(v50);
      LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v38._countAndFlagsBits = 0xD000000000000035;
      v38._object = 0x80000001001FF6A0;
      LogInterpolation.StringInterpolation.appendLiteral(_:)(v38);
      v51 = ObjectType;
      v50[0] = v3;
      swift_unknownObjectRetain();
      LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
      v39 = sub_100009FB0(v50, &qword_10026D350, &qword_1001E6050);
      sub_10000ACE0(v39);
      swift_getErrorValue();
      v51 = v49;
      sub_100017E64(v50);
      sub_1000047A4(v49);
      (*(v40 + 16))();
      LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
      v41 = sub_100009FB0(v50, &qword_10026D350, &qword_1001E6050);
      sub_100003B48(v41);
      LogInterpolation.init(stringInterpolation:)();
      v42 = static os_log_type_t.error.getter();
      sub_1000036B0(v42);

      (*(v46 + 8))(v45, v48);
    }
  }

  sub_100005F14();
}

void sub_10017669C()
{
  sub_100003D74();
  v5 = v4;
  sub_100002DFC();
  v6 = type metadata accessor for LogInterpolation.StringInterpolation();
  v7 = sub_100003D10(v6);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  sub_100002DEC();
  sub_10000C79C();
  v10 = sub_10007B9A4(&unk_10026FEE0, &unk_1001E67C0);
  sub_100003D10(v10);
  v12 = *(v11 + 64);
  sub_100004E78();
  __chkstk_darwin(v13);
  sub_100004D38();
  v14 = type metadata accessor for URL();
  v15 = sub_100002CC4(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  __chkstk_darwin(v15);
  sub_100002DEC();
  sub_100012F7C();
  [*(v1 + 104) saveRecord:v0 isServerRecord:v5 & 1];
  objc_opt_self();
  v20 = swift_dynamicCastObjCClass();
  if (v20)
  {
    v21 = v20;
    v38 = v3;
    v22 = objc_allocWithZone(NSKeyedArchiver);
    swift_unknownObjectRetain();
    v23 = [v22 initRequiringSecureCoding:1];
    [v21 encodeSystemFieldsWithCoder:v23];
    v24 = [v23 encodedData];
    v25 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v27 = v26;

    sub_100175F58([v0 identifier], v2);
    swift_unknownObjectRelease();
    if (sub_100009F34(v2, 1, v14) == 1)
    {
      sub_1000253FC(v25, v27);

      swift_unknownObjectRelease();
      sub_100009FB0(v2, &unk_10026FEE0, &unk_1001E67C0);
    }

    else
    {
      (*(v17 + 32))(v38, v2, v14);
      Data.write(to:options:)();
      v37 = v17;
      if (qword_100268700 != -1)
      {
        sub_100006F00();
      }

      sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
      sub_10000A610();
      v28 = type metadata accessor for LogInterpolation();
      sub_100002CFC(v28);
      v30 = *(v29 + 72);
      sub_1000056F8();
      *(sub_100003BB4() + 16) = xmmword_1001E5F70;
      ObjectType = type metadata accessor for MetricsIdentifierCloudDataController();
      v39[0] = v1;

      v31 = AMSLogKey();
      if (v31)
      {
        v32 = v31;
        static String._unconditionallyBridgeFromObjectiveC(_:)();
      }

      static LogInterpolation.prefix(_:_:)();

      sub_100002C00(v39);
      LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
      sub_100004810();
      v33._countAndFlagsBits = 0xD000000000000031;
      LogInterpolation.StringInterpolation.appendLiteral(_:)(v33);
      v34 = [v0 identifier];
      ObjectType = swift_getObjectType();
      v39[0] = v34;
      LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
      sub_100009FB0(v39, &qword_10026D350, &qword_1001E6050);
      v35._countAndFlagsBits = 46;
      v35._object = 0xE100000000000000;
      LogInterpolation.StringInterpolation.appendLiteral(_:)(v35);
      LogInterpolation.init(stringInterpolation:)();
      v36 = static os_log_type_t.info.getter();
      sub_1000036B0(v36);
      sub_1000253FC(v25, v27);

      swift_unknownObjectRelease();
      (*(v37 + 8))(v38, v14);
    }
  }

  sub_100005F14();
}

void sub_100176D5C()
{
  sub_100003D74();
  v1 = v0;
  v57 = v2;
  v4 = v3;
  v6 = v5;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v8 = sub_100002CC4(v7);
  v55 = v9;
  v56 = v8;
  v11 = *(v10 + 64);
  __chkstk_darwin(v8);
  sub_100002DEC();
  v53 = v13 - v12;
  sub_100003D1C();
  v54 = type metadata accessor for DispatchQoS();
  v14 = sub_100002CC4(v54);
  v52 = v15;
  v17 = *(v16 + 64);
  __chkstk_darwin(v14);
  sub_100002DEC();
  v51 = v19 - v18;
  if (v6)
  {
    v20 = sub_100049574(v6);
    for (i = 0; v20 != i; ++i)
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (i >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_37;
        }

        v22 = *(v6 + 8 * i + 32);
        swift_unknownObjectRetain();
      }

      if (__OFADD__(i, 1))
      {
        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      sub_10017669C();
      swift_unknownObjectRelease();
    }
  }

  if (v4)
  {
    v23 = sub_100049574(v4);
    for (j = 0; v23 != j; ++j)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (j >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_39;
        }

        v25 = *(v4 + 8 * j + 32);
        swift_unknownObjectRetain();
      }

      if (__OFADD__(j, 1))
      {
        goto LABEL_38;
      }

      sub_1001760BC();
      swift_unknownObjectRelease();
    }
  }

  if (!v57)
  {
    goto LABEL_35;
  }

  v26 = _convertErrorToNSError(_:)();
  v27 = sub_1001714BC(2);

  if (!v27)
  {
    goto LABEL_35;
  }

  v64 = v27;
  type metadata accessor for CKError(0);
  sub_100019D50();
  sub_100013B44(v28, v29);
  v30 = _BridgedStoredNSError.userInfo.getter();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_100052D94(v30, &v58);

  if (!v60)
  {

    sub_100009FB0(&v58, &qword_10026D350, &qword_1001E6050);
LABEL_35:
    sub_100005F14();
    return;
  }

  sub_10007B9A4(&qword_10026F8E8, &qword_1001EEEA0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_34:

    goto LABEL_35;
  }

  v31 = v63;
  LOBYTE(v63) = 0;
  v32 = *(v31 + 64);
  v33 = *(v31 + 32);
  sub_100004E5C();
  v36 = v35 & v34;
  v38 = (v37 + 63) >> 6;

  v39 = 0;
  if (!v36)
  {
    goto LABEL_25;
  }

  do
  {
    v40 = v39;
LABEL_29:
    v41 = __clz(__rbit64(v36));
    v36 &= v36 - 1;
    v42 = v41 | (v40 << 6);
    sub_10000DF68(*(v31 + 48) + 40 * v42, &v58);
    v62 = *(*(v31 + 56) + 8 * v42);
    sub_1001772D8(&v58, v62, v1, &v63);
    sub_100009FB0(&v58, &unk_10026F8F0, &unk_1001EEEA8);
  }

  while (v36);
LABEL_25:
  while (1)
  {
    v40 = v39 + 1;
    if (__OFADD__(v39, 1))
    {
      break;
    }

    if (v40 >= v38)
    {

      if ((v63 & 1) == 0)
      {
        goto LABEL_34;
      }

      v43 = v1[16];
      v61 = sub_1001790D0;
      v62 = v1;
      *&v58 = _NSConcreteStackBlock;
      *(&v58 + 1) = 1107296256;
      sub_100007A28();
      v59 = v44;
      v60 = &unk_10024FE48;
      v45 = _Block_copy(&v58);
      v46 = v43;

      static DispatchQoS.unspecified.getter();
      v64 = _swiftEmptyArrayStorage;
      sub_100008554();
      sub_100013B44(v47, v48);
      sub_10007B9A4(&unk_100270490, &unk_1001E74F0);
      sub_10000317C();
      sub_10004F4C0(v49, v50, &unk_1001E74F0);
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();

      _Block_release(v45);
      (*(v55 + 8))(v53, v56);
      (*(v52 + 8))(v51, v54);

      goto LABEL_35;
    }

    v36 = *(v31 + 64 + 8 * v40);
    ++v39;
    if (v36)
    {
      v39 = v40;
      goto LABEL_29;
    }
  }

LABEL_40:
  __break(1u);
}

void sub_1001772D8(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v8 = type metadata accessor for LogInterpolation.StringInterpolation();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v10 = sub_1001714BC(14);
  if (v10)
  {
    v11 = v10;
    type metadata accessor for CKError(0);
    sub_100013B44(&qword_10026F8E0, type metadata accessor for CKError);
    v12 = _BridgedStoredNSError.userInfo.getter();
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_100052D94(v12, v33);

    if (ObjectType)
    {
      sub_10007B9A4(&unk_10026F900, &unk_1001EEEB8);
      if (swift_dynamicCast())
      {
        v31 = a4;
        if (qword_100268700 != -1)
        {
          swift_once();
        }

        sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
        v13 = *(type metadata accessor for LogInterpolation() - 8);
        v14 = *(v13 + 72);
        v15 = (*(v13 + 80) + 32) & ~*(v13 + 80);
        *(swift_allocObject() + 16) = xmmword_1001E5F70;
        ObjectType = type metadata accessor for MetricsIdentifierCloudDataController();
        v33[0] = a3;

        v16 = AMSLogKey();
        if (v16)
        {
          v17 = v16;
          static String._unconditionallyBridgeFromObjectiveC(_:)();
        }

        static LogInterpolation.prefix(_:_:)();

        sub_100002C00(v33);
        LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
        v28._countAndFlagsBits = 0xD000000000000042;
        v28._object = 0x80000001001FF5A0;
        LogInterpolation.StringInterpolation.appendLiteral(_:)(v28);
        ObjectType = swift_getObjectType();
        v33[0] = v32;
        swift_unknownObjectRetain();
        LogInterpolation.StringInterpolation.appendInterpolation(sensitive:)();
        sub_100009FB0(v33, &qword_10026D350, &qword_1001E6050);
        v29._countAndFlagsBits = 0;
        v29._object = 0xE000000000000000;
        LogInterpolation.StringInterpolation.appendLiteral(_:)(v29);
        LogInterpolation.init(stringInterpolation:)();
        v30 = static os_log_type_t.default.getter();
        sub_1000036B0(v30);

        sub_10017669C();
        swift_unknownObjectRelease();

        *v31 = 1;
        return;
      }
    }

    else
    {

      sub_100009FB0(v33, &qword_10026D350, &qword_1001E6050);
    }
  }

  if (qword_100268700 != -1)
  {
    swift_once();
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v18 = *(type metadata accessor for LogInterpolation() - 8);
  v19 = *(v18 + 72);
  v20 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  *(swift_allocObject() + 16) = xmmword_1001E5F70;
  ObjectType = type metadata accessor for MetricsIdentifierCloudDataController();
  v33[0] = a3;

  v21 = AMSLogKey();
  if (v21)
  {
    v22 = v21;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(v33);
  LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v23._object = 0x80000001001FF560;
  v23._countAndFlagsBits = 0xD000000000000031;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v23);
  ObjectType = &type metadata for AnyHashable;
  v33[0] = swift_allocObject();
  sub_10000DF68(a1, v33[0] + 16);
  LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
  sub_100009FB0(v33, &qword_10026D350, &qword_1001E6050);
  v24._countAndFlagsBits = 0x203A726F72726520;
  v24._object = 0xE800000000000000;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v24);
  ObjectType = sub_100002BC0(0, &qword_100271EB0, NSError_ptr);
  v33[0] = a2;
  v25 = a2;
  LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
  sub_100009FB0(v33, &qword_10026D350, &qword_1001E6050);
  v26._countAndFlagsBits = 0;
  v26._object = 0xE000000000000000;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v26);
  LogInterpolation.init(stringInterpolation:)();
  v27 = static os_log_type_t.error.getter();
  sub_1000036B0(v27);
}

void sub_1001778B0()
{
  v0 = sub_10016ED98(0);
}

uint64_t sub_1001778E8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 112);
  [v4 lock];
  v5 = [a3 name];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  sub_10016CA10();
  [v4 unlock];
  swift_unknownObjectRelease();
}

uint64_t sub_100177994(uint64_t a1, uint64_t a2, void (*a3)(id))
{
  sub_10000A610();
  v5 = type metadata accessor for Date();
  v6 = sub_100003D10(v5);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  sub_100002DEC();
  v9 = *(v3 + 112);
  a3([v9 lock]);
  sub_10016C8A0();
  [v9 unlock];
}

void sub_100177A3C()
{
  sub_100003D74();
  v3 = v2;
  v5 = v4;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = sub_100002CC4(v6);
  v29 = v8;
  v10 = *(v9 + 64);
  __chkstk_darwin(v7);
  sub_100002DEC();
  sub_100004D38();
  v28 = type metadata accessor for DispatchQoS();
  v11 = sub_100002CC4(v28);
  v13 = v12;
  v15 = *(v14 + 64);
  __chkstk_darwin(v11);
  sub_100002DEC();
  sub_100012F7C();
  if (qword_100268830 != -1)
  {
    swift_once();
  }

  sub_100011C54(0x696669746E656469, 0xEE00636E79537265);
  v16 = *(v0 + 128);
  sub_100002FB8();
  v17 = swift_allocObject();
  *(v17 + 16) = v5;
  *(v17 + 24) = v3;
  v30[4] = sub_1001790C8;
  v30[5] = v17;
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 1107296256;
  sub_100007A28();
  v30[2] = v18;
  v30[3] = &unk_10024FDF8;
  v19 = _Block_copy(v30);
  v20 = v16;

  static DispatchQoS.unspecified.getter();
  sub_100008554();
  sub_100013B44(v21, v22);
  sub_10007B9A4(&unk_100270490, &unk_1001E74F0);
  sub_10000317C();
  sub_10004F4C0(v23, v24, &unk_1001E74F0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v19);

  v25 = *(v29 + 8);
  v26 = sub_100003B80();
  v27(v26);
  (*(v13 + 8))(v1, v28);

  sub_100005F14();
}

void sub_100177D00(uint64_t (*a1)(void))
{
  v1 = a1();
  v3[4] = sub_100177DB8;
  v3[5] = 0;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 1107296256;
  v3[2] = sub_100177E30;
  v3[3] = &unk_10024FE20;
  v2 = _Block_copy(v3);
  [v1 addFinishBlock:v2];
  _Block_release(v2);
}

uint64_t sub_100177DB8()
{
  if (qword_100268830 != -1)
  {
    swift_once();
  }

  return sub_1001AE448(0x696669746E656469, 0xEE00636E79537265);
}

void sub_100177E30(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a3;
  v6(a2, a3);
}

uint64_t sub_100177EA8()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 32);
  swift_unknownObjectRelease();

  v4 = *(v0 + 48);
  swift_unknownObjectRelease();

  v5 = *(v0 + 88);

  v6 = *(v0 + 96);

  v7 = *(v0 + 120);

  v8 = *(v0 + 136);

  v9 = *(v0 + 144);

  v10 = *(v0 + 160);

  v11 = *(v0 + 176);

  v12 = *(v0 + 192);

  v13 = *(v0 + 208);

  return v0;
}

uint64_t sub_100177F58()
{
  sub_100177EA8();

  return swift_deallocClassInstance();
}

uint64_t sub_100177F8C()
{
  if (qword_100268700 != -1)
  {
    sub_100006F00();
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  sub_10000A610();
  v1 = type metadata accessor for LogInterpolation();
  sub_100002CFC(v1);
  v3 = *(v2 + 72);
  sub_1000056F8();
  *(sub_100003BB4() + 16) = xmmword_1001E5F70;
  type metadata accessor for MetricsIdentifierCloudDataController();
  sub_100005D24();
  v4 = AMSLogKey();
  if (v4)
  {
    v5 = v4;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  sub_100015C40();

  sub_100002C00(v11);
  LogInterpolation.init(stringLiteral:)();
  v6 = static os_log_type_t.info.getter();
  sub_1000036B0(v6);

  v7 = *(v0 + 16);

  v8 = sub_100004CBC();
  sub_10007B9A4(v8, v9);
  sub_1000076B8(&qword_100269F80);
  Subject<>.send()();
}

void sub_100178150()
{
  sub_100003D74();
  v2 = v0;
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = sub_100002CC4(v3);
  v31 = v5;
  v32 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v4);
  sub_100002DEC();
  v10 = v9 - v8;
  v11 = type metadata accessor for DispatchQoS();
  v12 = sub_100002CC4(v11);
  v29 = v13;
  v30 = v12;
  v15 = *(v14 + 64);
  __chkstk_darwin(v12);
  sub_100002DEC();
  sub_100012F7C();
  if (qword_100268700 != -1)
  {
    sub_100006F00();
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v16 = type metadata accessor for LogInterpolation();
  sub_100002CFC(v16);
  v18 = *(v17 + 72);
  sub_1000056F8();
  *(swift_allocObject() + 16) = xmmword_1001E5F70;
  v34 = type metadata accessor for MetricsIdentifierCloudDataController();
  v33[0] = v0;

  v19 = AMSLogKey();
  if (v19)
  {
    v20 = v19;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_100015A00();
  }

  else
  {
    sub_10000A640();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(v33);
  LogInterpolation.init(stringLiteral:)();
  v21 = static os_log_type_t.info.getter();
  sub_1000036B0(v21);

  v22 = *(v0 + 128);
  v35 = sub_1001790C0;
  v36 = v2;
  v33[0] = _NSConcreteStackBlock;
  v33[1] = 1107296256;
  v33[2] = sub_100005E50;
  v34 = &unk_10024FDA8;
  v23 = _Block_copy(v33);

  v24 = v22;
  static DispatchQoS.unspecified.getter();
  sub_100008554();
  sub_100013B44(v25, v26);
  sub_10007B9A4(&unk_100270490, &unk_1001E74F0);
  sub_10000317C();
  sub_10004F4C0(v27, v28, &unk_1001E74F0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v23);

  (*(v31 + 8))(v10, v32);
  (*(v29 + 8))(v1, v30);

  sub_100005F14();
}

uint64_t sub_1001784F0(uint64_t result)
{
  if (*(result + 80) == 1)
  {
    v2 = *(result + 88);

    sub_10007B9A4(&unk_10026F890, &unk_1001E74C0);
    sub_10004F4C0(&qword_100269F80, &unk_10026F890, &unk_1001E74C0);
    Subject<>.send()();
  }

  return result;
}

uint64_t sub_1001785B0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  swift_unknownObjectRetain();

  a4(v5);
  swift_unknownObjectRelease();
}

CKRecordZoneID sub_100178614()
{
  sub_100002BC0(0, &unk_10026F8C0, CKRecordZoneID_ptr);
  v0._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v0._object = v1;
  v2._countAndFlagsBits = 0x696669746E656449;
  v2._object = 0xEE00656E6F5A7265;
  result.super.isa = CKRecordZoneID.init(zoneName:ownerName:)(v2, v0).super.isa;
  qword_10026F3F8 = result.super.isa;
  return result;
}

void sub_100178750()
{
  sub_100003D74();
  v2 = v1;
  v43 = v3;
  v5 = v4;
  v7 = v6;
  v8 = type metadata accessor for LogInterpolation.StringInterpolation();
  v9 = sub_100003D10(v8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  sub_100002DEC();
  v12 = sub_10007B9A4(&unk_10026FEE0, &unk_1001E67C0);
  sub_100003D10(v12);
  v14 = *(v13 + 64);
  sub_100004E78();
  __chkstk_darwin(v15);
  sub_100004D38();
  v16 = type metadata accessor for URL();
  v17 = sub_100002CC4(v16);
  v42 = v18;
  v20 = *(v19 + 64);
  __chkstk_darwin(v17);
  sub_100002DEC();
  v23 = v22 - v21;
  sub_100002BC0(0, &qword_10026F8B8, CKRecordID_ptr);
  v24 = qword_1002687C0;

  if (v24 != -1)
  {
    sub_100003424();
  }

  v25 = qword_10026F3F8;
  v26._countAndFlagsBits = v7;
  v26._object = v5;
  v27 = CKRecordID.init(recordName:zoneID:)(v26, v25).super.isa;
  sub_100175F58(v27, v0);

  if (sub_100009F34(v0, 1, v16) == 1)
  {
    sub_100009FB0(v0, &unk_10026FEE0, &unk_1001E67C0);
  }

  else
  {
    (*(v42 + 32))(v23, v0, v16);
    v28 = [objc_opt_self() defaultManager];
    URL.path.getter();
    String._bridgeToObjectiveC()();
    sub_100017FBC();

    v29 = [v28 fileExistsAtPath:v0];

    if (v29)
    {
      Data.init(contentsOf:options:)();
      v30 = objc_allocWithZone(NSKeyedUnarchiver);
      v31 = sub_100016434();
      sub_10003A5E0(v31, v32);
      v33 = sub_100016434();
      v36 = sub_100178FE0(v33, v34);
      [v36 setRequiresSecureCoding:1];
      v37 = [objc_allocWithZone(CKRecord) initWithCoder:v36];

      v38 = sub_100016434();
      sub_1000253FC(v38, v39);
      v40 = sub_10003D354();
      v41(v40);
      if (v37)
      {

        goto LABEL_9;
      }
    }

    else
    {
      (*(v42 + 8))(v23, v16);
    }
  }

  sub_100002BC0(0, &unk_10026F8D0, CKRecord_ptr);

  v35._countAndFlagsBits = v43;
  v35._object = v2;
  CKRecord.init(recordType:recordID:)(v35, v27);
LABEL_9:
  sub_100005F14();
}

uint64_t sub_100178D80(void *a1)
{
  v1 = [a1 name];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

CKRecordID sub_100178E68()
{
  sub_100002BC0(0, &qword_10026F8B8, CKRecordID_ptr);
  v0 = qword_1002687C0;

  if (v0 != -1)
  {
    sub_100003424();
  }

  v1 = qword_10026F3F8;
  v2._countAndFlagsBits = sub_100008FE8();
  return CKRecordID.init(recordName:zoneID:)(v2, v3);
}

id sub_100178FE0(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  isa = Data._bridgeToObjectiveC()().super.isa;
  v11 = 0;
  v7 = [v3 initForReadingFromData:isa error:&v11];

  if (v7)
  {
    v8 = v11;
  }

  else
  {
    v9 = v11;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  sub_1000253FC(a1, a2);
  return v7;
}

uint64_t sub_1001790FC(uint64_t a1, uint64_t a2)
{
  v3 = v2[2];
  v4 = v2[3];
  v5 = v2[4];
  return sub_100174D84(a1, a2);
}

uint64_t sub_100179114(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_100003B80();
  sub_10007B9A4(v4, v5);
  v6 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  return v6;
}

uint64_t sub_100179190(void *a1)
{
  v1 = [a1 savedRecords];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_10007B9A4(&unk_10026F900, &unk_1001EEEB8);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

void sub_100179230()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  sub_1001735CC(*(v0 + 16));
}

uint64_t sub_100179270(void (*a1)(void))
{
  a1(*(v1 + 24));
  sub_100002FB8();

  return _swift_deallocObject(v3, v4, v5);
}

uint64_t sub_100179318()
{
  v1 = *(v0 + 16);

  sub_100002FB8();

  return _swift_deallocObject(v2, v3, v4);
}

uint64_t sub_10017935C(void (*a1)(void))
{
  v3 = *(v1 + 16);

  a1(*(v1 + 24));
  v4 = sub_100008FE8();

  return _swift_deallocObject(v4, v5, 7);
}

uint64_t sub_1001794D8()
{

  return swift_slowAlloc();
}

uint64_t sub_1001794F0(uint64_t *a1, uint64_t a2, uint64_t a3, char *a4, int a5)
{
  v55 = a5;
  v56 = a4;
  v57 = a3;
  v6 = type metadata accessor for LogInterpolation.StringInterpolation();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v58 = v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for URL();
  v60 = *(v9 - 8);
  v61 = v9;
  v10 = *(v60 + 64);
  v11 = __chkstk_darwin(v9);
  v13 = v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = v54 - v14;
  v17 = *a1;
  v16 = a1[1];
  URL.appendingPathComponent(_:)();
  v18 = objc_opt_self();
  v19 = [v18 defaultManager];
  URL.path.getter();
  v20 = String._bridgeToObjectiveC()();

  v21 = [v19 fileExistsAtPath:v20];

  if (v21)
  {
    URL.appendingPathComponent(_:)();
    v22 = [v18 defaultManager];
    URL.path.getter();
    v23 = String._bridgeToObjectiveC()();

    URL.path.getter();
    v24 = String._bridgeToObjectiveC()();

    v64[0] = 0;
    v25 = [v22 moveItemAtPath:v23 toPath:v24 error:v64];

    if (v25)
    {
      v26 = *(v60 + 8);
      v27 = v64[0];
      v28 = v61;
      v26(v13, v61);
      return (v26)(v15, v28);
    }

    else
    {
      v56 = v15;
      v59 = v13;
      v40 = v64[0];
      _convertNSErrorToError(_:)();

      swift_willThrow();
      if (qword_100268708 != -1)
      {
        swift_once();
      }

      v54[1] = qword_100287868;
      sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
      v41 = *(type metadata accessor for LogInterpolation() - 8);
      v42 = *(v41 + 72);
      v43 = (*(v41 + 80) + 32) & ~*(v41 + 80);
      *(swift_allocObject() + 16) = xmmword_1001E5F70;
      v44 = AMSSetLogKeyIfNeeded();
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      type metadata accessor for Migrator();
      static LogInterpolation.prefix<A>(_:_:)();

      LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v45._object = 0x8000000100200130;
      v45._countAndFlagsBits = 0xD000000000000022;
      LogInterpolation.StringInterpolation.appendLiteral(_:)(v45);
      v65 = &unk_1002471C0;
      LOBYTE(v64[0]) = v55;
      LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
      sub_10000A064(v64, &qword_10026D350, &qword_1001E6050);
      v46._countAndFlagsBits = 0x3A726F727265202CLL;
      v46._object = 0xE900000000000020;
      LogInterpolation.StringInterpolation.appendLiteral(_:)(v46);
      swift_getErrorValue();
      v47 = v62;
      v48 = v63;
      v65 = v63;
      v49 = sub_100017E64(v64);
      (*(*(v48 - 1) + 16))(v49, v47, v48);
      LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
      sub_10000A064(v64, &qword_10026D350, &qword_1001E6050);
      v50._countAndFlagsBits = 41;
      v50._object = 0xE100000000000000;
      LogInterpolation.StringInterpolation.appendLiteral(_:)(v50);
      LogInterpolation.init(stringInterpolation:)();
      v51 = static os_log_type_t.fault.getter();
      sub_1000036B0(v51);

      v52 = *(v60 + 8);
      v53 = v61;
      v52(v59, v61);
      return (v52)(v56, v53);
    }
  }

  else
  {
    if (qword_100268708 != -1)
    {
      swift_once();
    }

    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v30 = *(type metadata accessor for LogInterpolation() - 8);
    v31 = *(v30 + 72);
    v32 = (*(v30 + 80) + 32) & ~*(v30 + 80);
    *(swift_allocObject() + 16) = xmmword_1001E5F70;
    v33 = AMSSetLogKeyIfNeeded();
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    type metadata accessor for Migrator();
    static LogInterpolation.prefix<A>(_:_:)();

    LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v34._countAndFlagsBits = 0xD000000000000034;
    v34._object = 0x80000001002000F0;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v34);
    v35 = v61;
    v65 = v61;
    v36 = sub_100017E64(v64);
    v37 = v60;
    (*(v60 + 16))(v36, v15, v35);
    LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
    sub_10000A064(v64, &qword_10026D350, &qword_1001E6050);
    v38._countAndFlagsBits = 41;
    v38._object = 0xE100000000000000;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v38);
    LogInterpolation.init(stringInterpolation:)();
    v39 = static os_log_type_t.debug.getter();
    sub_1000036B0(v39);

    return (*(v37 + 8))(v15, v35);
  }
}

uint64_t sub_100179C40(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = *(a2 + 40);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  v5 = ~(-1 << *(a2 + 32));
  do
  {
    v6 = v4 & v5;
    v7 = (1 << (v4 & v5)) & *(a2 + 56 + (((v4 & v5) >> 3) & 0xFFFFFFFFFFFFFF8));
    v8 = v7 != 0;
    if (!v7)
    {
      break;
    }

    v9 = *(*(a2 + 48) + 8 * v6);
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;
    if (v10 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v12 == v13)
    {

      return 1;
    }

    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v4 = v6 + 1;
  }

  while ((v15 & 1) == 0);
  return v8;
}

id sub_100179DD0(uint64_t *a1, char a2, double a3)
{
  v4 = *a1;
  v5 = *(v3 + *a1);
  if (v5)
  {
    v6 = *(v3 + *a1);
  }

  else
  {
    v7 = sub_100179E30(a2 & 1, a3);
    v8 = *(v3 + v4);
    *(v3 + v4) = v7;
    v6 = v7;

    v5 = 0;
  }

  v9 = v5;
  return v6;
}

id sub_100179E30(char a1, double a2)
{
  v5 = type metadata accessor for LogInterpolation.StringInterpolation();
  v6 = sub_100003D10(v5);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  sub_100002DEC();
  v29 = 0xD000000000000018;
  v30 = 0x80000001001F31B0;
  if (a1)
  {
    v9._countAndFlagsBits = 0x64656767756C702ELL;
    v9._object = 0xEA00000000006E49;
    String.append(_:)(v9);
  }

  if (a2 < 604800.0)
  {
    v10._countAndFlagsBits = 0x6F656D69546E6F2ELL;
    v10._object = 0xEA00000000007475;
    String.append(_:)(v10);
  }

  if (qword_1002686D8 != -1)
  {
    sub_100006F20();
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v11 = type metadata accessor for LogInterpolation();
  sub_100002CFC(v11);
  v13 = *(v12 + 72);
  sub_1000056F8();
  *(swift_allocObject() + 16) = xmmword_1001E5F70;
  v28 = type metadata accessor for NetworkObserver();
  v27[0] = v2;
  v14 = v2;
  v15 = AMSLogKey();
  if (v15)
  {
    v16 = v15;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(v27);
  LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v17._countAndFlagsBits = 0xD00000000000002ALL;
  v17._object = 0x80000001002003D0;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v17);
  v28 = &type metadata for String;
  v27[0] = v29;
  v27[1] = v30;

  LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
  sub_10000A064(v27, &qword_10026D350, &qword_1001E6050);
  v18._countAndFlagsBits = 0;
  v18._object = 0xE000000000000000;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v18);
  LogInterpolation.init(stringInterpolation:)();
  v19 = static os_log_type_t.default.getter();
  sub_1000036B0(v19);

  v20 = objc_opt_self();
  v21 = String._bridgeToObjectiveC()();

  v22 = [v20 backgroundSessionConfigurationWithIdentifier:v21];

  v24 = sub_100011B18(v23, "setSessionSendsLaunchEvents:");
  sub_100011B18(v24, "setDiscretionary:");
  sub_100011B18([v22 setHTTPShouldSetCookies:0], "setHTTPShouldUsePipelining:");
  sub_100011B18([v22 setHTTPCookieAcceptPolicy:1], "set_allowsRetryForBackgroundDataTasks:");
  [v22 set_requiresPowerPluggedIn:a1 & 1];
  v25 = String._bridgeToObjectiveC()();
  [v22 set_sourceApplicationBundleIdentifier:v25];

  [v22 setURLCache:0];
  [v22 setRequestCachePolicy:1];
  [v22 setTimeoutIntervalForResource:a2];
  sub_100002BC0(0, &unk_10026FB50, NSURLSession_ptr);
  swift_unknownObjectRetain();
  return sub_10017A250(v22, v14, 0);
}

id sub_10017A250(void *a1, uint64_t a2, void *a3)
{
  v5 = [swift_getObjCClassFromMetadata() sessionWithConfiguration:a1 delegate:a2 delegateQueue:a3];

  swift_unknownObjectRelease();
  return v5;
}

id sub_10017A2C0()
{
  result = [objc_allocWithZone(type metadata accessor for NetworkObserver()) init];
  qword_1002878C0 = result;
  return result;
}

id sub_10017A2F0()
{
  *&v0[OBJC_IVAR____TtC14amsengagementd15NetworkObserver____lazy_storage___session] = 0;
  *&v0[OBJC_IVAR____TtC14amsengagementd15NetworkObserver____lazy_storage___sessionOnTimeout] = 0;
  *&v0[OBJC_IVAR____TtC14amsengagementd15NetworkObserver____lazy_storage___sessionPluggedIn] = 0;
  v4.receiver = v0;
  v4.super_class = type metadata accessor for NetworkObserver();
  v1 = objc_msgSendSuper2(&v4, "init");

  v2 = sub_100179DB8();
  return v1;
}

void sub_10017A3A4()
{
  sub_100003D74();
  v1 = v0;
  v2 = type metadata accessor for LogInterpolation.StringInterpolation();
  v3 = sub_100003D10(v2);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  sub_100002DEC();
  if (qword_100268830 != -1)
  {
    goto LABEL_58;
  }

  while (1)
  {
    sub_10000B06C();
    v6 = sub_100012D98();
    sub_100011C54(v6, v7);
    v8 = sub_100179D90();
    v78 = sub_10017C35C(v8);

    v9 = sub_100179DA4();
    v81 = sub_10017C35C(v9);

    v10 = sub_100179DB8();
    v80 = sub_10017C35C(v10);

    if (qword_1002686D8 != -1)
    {
      sub_100006F20();
    }

    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v11 = type metadata accessor for LogInterpolation();
    sub_100002CFC(v11);
    v13 = *(v12 + 72);
    sub_1000056F8();
    *(swift_allocObject() + 16) = xmmword_1001E5F70;
    v84[3] = type metadata accessor for NetworkObserver();
    v84[0] = v1;
    v83 = v1;
    v14 = AMSLogKey();
    if (v14)
    {
      v15 = v14;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_100002C00(v84);
    LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v16._countAndFlagsBits = 0xD000000000000018;
    v16._object = 0x8000000100200390;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v16);
    v17 = sub_10004369C(v78);
    sub_10000AD04(v17);
    v1 = &qword_10026D350;
    sub_100004D48();
    v18._countAndFlagsBits = 0x6D69546E6F5B202CLL;
    v18._object = 0xED00003A74756F65;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v18);
    v19 = sub_10004369C(v81);
    sub_10000AD04(v19);
    sub_100004D48();
    v20._object = 0x80000001002003B0;
    v20._countAndFlagsBits = 0xD000000000000014;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v20);
    v21 = sub_10004369C(v80);
    sub_10000AD04(v21);
    sub_100004D48();
    v22._countAndFlagsBits = 93;
    v22._object = 0xE100000000000000;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v22);
    LogInterpolation.init(stringInterpolation:)();
    v23 = static os_log_type_t.default.getter();
    sub_1000036B0(v23);

    sub_100002BC0(0, &unk_10026AF90, NSURLSessionDownloadTask_ptr);
    v24 = Dictionary.init(dictionaryLiteral:)();
    v25 = sub_100049574(v78);
    if (v25)
    {
      break;
    }

LABEL_21:

    v43 = sub_100049574(v81);
    if (v43)
    {
      v44 = v43;
      if (v43 < 1)
      {
        goto LABEL_60;
      }

      v45 = 0;
      v79 = OBJC_IVAR____TtC14amsengagementd15NetworkObserver____lazy_storage___sessionOnTimeout;
      do
      {
        v46 = (v81 & 0xC000000000000001) != 0 ? specialized _ArrayBuffer._getElementSlowPath(_:)() : *(v81 + 8 * v45 + 32);
        v47 = v46;
        v48 = *(v83 + v79);
        v49 = sub_10017C464(v48, v47);
        v51 = v50;

        v52 = v47;
        swift_isUniquelyReferenced_nonNull_native();
        v84[0] = v24;
        v53 = v24;
        v54 = sub_100012A94();
        sub_1000076E4(v54, v55);
        if (v39)
        {
          goto LABEL_53;
        }

        v1 = v56;
        sub_10007B9A4(&qword_10026AF88, &qword_1001E8718);
        if (sub_1000065F8())
        {
          v53 = v84[0];
          sub_100012A94();
          sub_100023F10();
          if (!v40)
          {
            goto LABEL_62;
          }
        }

        v24 = v84[0];
        if (v1)
        {
          sub_100019D68();

          v52 = v53;
        }

        else
        {
          sub_100005554();
          *v57 = v49;
          v57[1] = v51;
          sub_10000856C();
          if (v39)
          {
            goto LABEL_56;
          }

          *(v24 + 16) = v58;
        }

        ++v45;
      }

      while (v44 != v45);
    }

    v59 = sub_100049574(v80);
    if (!v59)
    {
LABEL_51:

      type metadata accessor for ContentManager();
      sub_1000B30C4();

      sub_100012D98();
      sub_10000B06C();
      sub_1001AE448(v75, v76);
      sub_100005F14();
      return;
    }

    v60 = v59;
    if (v59 < 1)
    {
      goto LABEL_61;
    }

    v61 = 0;
    v82 = OBJC_IVAR____TtC14amsengagementd15NetworkObserver____lazy_storage___sessionPluggedIn;
    while (1)
    {
      v62 = (v80 & 0xC000000000000001) != 0 ? specialized _ArrayBuffer._getElementSlowPath(_:)() : *(v80 + 8 * v61 + 32);
      v63 = v62;
      v64 = *(v83 + v82);
      v65 = sub_10017C464(v64, v63);
      v67 = v66;

      v68 = v63;
      swift_isUniquelyReferenced_nonNull_native();
      v84[0] = v24;
      v69 = v24;
      v70 = sub_100012A94();
      sub_1000076E4(v70, v71);
      if (v39)
      {
        break;
      }

      v1 = v72;
      sub_10007B9A4(&qword_10026AF88, &qword_1001E8718);
      if (sub_1000065F8())
      {
        v69 = v84[0];
        sub_100012A94();
        sub_100023F10();
        if (!v40)
        {
          goto LABEL_62;
        }
      }

      v24 = v84[0];
      if (v1)
      {
        sub_100019D68();

        v68 = v69;
      }

      else
      {
        sub_100005554();
        *v73 = v65;
        v73[1] = v67;
        sub_10000856C();
        if (v39)
        {
          goto LABEL_57;
        }

        *(v24 + 16) = v74;
      }

      ++v61;

      if (v60 == v61)
      {
        goto LABEL_51;
      }
    }

LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    swift_once();
  }

  v26 = v25;
  if (v25 >= 1)
  {
    v27 = 0;
    v77 = OBJC_IVAR____TtC14amsengagementd15NetworkObserver____lazy_storage___session;
    while (1)
    {
      v28 = (v78 & 0xC000000000000001) != 0 ? specialized _ArrayBuffer._getElementSlowPath(_:)() : *(v78 + 8 * v27 + 32);
      v29 = v28;
      v30 = *(v83 + v77);
      v31 = sub_10017C464(v30, v29);
      v33 = v32;

      v34 = v29;
      swift_isUniquelyReferenced_nonNull_native();
      v84[0] = v24;
      v35 = v24;
      v36 = sub_100012A94();
      sub_1000076E4(v36, v37);
      if (v39)
      {
        break;
      }

      v1 = v38;
      sub_10007B9A4(&qword_10026AF88, &qword_1001E8718);
      if (sub_1000065F8())
      {
        v35 = v84[0];
        sub_100012A94();
        sub_100023F10();
        if (!v40)
        {
          goto LABEL_62;
        }
      }

      v24 = v84[0];
      if (v1)
      {
        sub_100019D68();

        v34 = v35;
      }

      else
      {
        sub_100005554();
        *v41 = v31;
        v41[1] = v33;
        sub_10000856C();
        if (v39)
        {
          goto LABEL_55;
        }

        *(v24 + 16) = v42;
      }

      ++v27;

      if (v26 == v27)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void sub_10017AAF4()
{
  sub_100003D74();
  v53 = v0;
  v2 = v1;
  v4 = v3;
  v5 = type metadata accessor for LogInterpolation.StringInterpolation();
  v6 = sub_100003D10(v5);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  sub_100002DEC();
  v9 = type metadata accessor for String.Encoding();
  v10 = sub_100002CC4(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  __chkstk_darwin(v10);
  sub_100002DEC();
  v17 = v16 - v15;
  v18 = type metadata accessor for URL();
  v19 = sub_100002CC4(v18);
  v21 = v20;
  v23 = *(v22 + 64);
  __chkstk_darwin(v19);
  sub_100002DEC();
  v26 = v25 - v24;
  v27 = type metadata accessor for URLRequest();
  v28 = sub_100002CC4(v27);
  v56 = v29;
  v57 = v28;
  v31 = *(v30 + 64);
  __chkstk_darwin(v28);
  sub_100002DEC();
  v34 = v33 - v32;
  v54 = v18;
  v52 = *(v21 + 16);
  v52(v26, v4, v18);
  URLRequest.init(url:cachePolicy:timeoutInterval:)();
  v35 = type metadata accessor for JSContent.Request(0);
  sub_100107D38(*(v4 + v35[6]));
  URLRequest.httpMethod.setter();
  sub_10014ACB8(*(v4 + v35[5]));
  if (!v36)
  {
    Dictionary.init(dictionaryLiteral:)();
  }

  URLRequest.allHTTPHeaderFields.setter();
  URLRequest.cachePolicy.setter();
  v37 = (v4 + v35[7]);
  if (v37[1])
  {
    v38 = *v37;
    static String.Encoding.utf8.getter();
    String.data(using:allowLossyConversion:)();
    (*(v12 + 8))(v17, v9);
  }

  URLRequest.httpBody.setter();
  if ((v2 & 0x10000) != 0)
  {
    URLRequest.allowsCellularAccess.setter();
    URLRequest.allowsConstrainedNetworkAccess.setter();
    URLRequest.allowsExpensiveNetworkAccess.setter();
  }

  v55 = v2;
  if (qword_1002686D8 != -1)
  {
    sub_100006F20();
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v39 = type metadata accessor for LogInterpolation();
  sub_100002CFC(v39);
  v41 = *(v40 + 72);
  sub_1000056F8();
  *(swift_allocObject() + 16) = xmmword_1001E5F70;
  v59 = type metadata accessor for NetworkObserver();
  v58[0] = v53;
  v53;
  v42 = AMSLogKey();
  if (v42)
  {
    v43 = v42;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(v58);
  LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v44._object = 0x8000000100200370;
  v44._countAndFlagsBits = 0xD000000000000013;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v44);
  v59 = v54;
  v45 = sub_100017E64(v58);
  v52(v45, v4, v54);
  LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
  sub_10000A064(v58, &qword_10026D350, &qword_1001E6050);
  v46._countAndFlagsBits = 0;
  v46._object = 0xE000000000000000;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v46);
  LogInterpolation.init(stringInterpolation:)();
  v47 = static os_log_type_t.default.getter();
  sub_1000036B0(v47);

  if ((v55 & 0x100) != 0)
  {
    v48 = sub_100179DB8();
  }

  else if (v55)
  {
    v48 = sub_100179DA4();
  }

  else
  {
    v48 = sub_100179D90();
  }

  v49 = v48;
  isa = URLRequest._bridgeToObjectiveC()().super.isa;
  v51 = [v49 downloadTaskWithRequest:isa];

  [v51 resume];
  sub_10017C464(v49, v51);

  (*(v56 + 8))(v34, v57);
  sub_100005F14();
}

uint64_t sub_10017B038()
{
  swift_getObjectType();
  sub_100179D90();
  sub_1000049A4();
  v2 = v1;

  if (v2)
  {
    return 1;
  }

  sub_100179DA4();
  sub_1000049A4();
  v4 = v3;

  if (v4)
  {
    return 1;
  }

  v6 = sub_100179DB8();
  sub_10017BE54();
  v8 = v7;

  return v8 & 1;
}

void sub_10017B0D4(uint64_t a1, void *a2, void *a3)
{
  sub_100002BC0(0, &qword_10026FB48, AMSMetricsLoadURLContext_ptr);
  v5 = sub_10017B284(a2, a3);
  sub_100002BC0(0, &qword_10026CFE0, AMSBag_ptr);
  v6 = sub_10002411C();
  [v5 setBag:v6];

  v7 = [objc_opt_self() shouldCollectMetricsPromiseForContext:v5];
  v8 = swift_allocObject();
  *(v8 + 16) = v5;
  v11[4] = sub_10017C728;
  v11[5] = v8;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = sub_1000EA728;
  v11[3] = &unk_1002508C0;
  v9 = _Block_copy(v11);
  v10 = v5;

  [v7 addSuccessBlock:v9];
  _Block_release(v9);
}

id sub_10017B284(void *a1, void *a2)
{
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithTask:a1 metrics:a2];

  return v4;
}

void sub_10017B2E0(void *a1, void *a2)
{
  if ([a1 BOOLValue])
  {
    v3 = [objc_opt_self() loadURLEventPromiseWithContext:a2];
    v4 = swift_allocObject();
    *(v4 + 16) = a2;
    v7[4] = sub_10017C730;
    v7[5] = v4;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 1107296256;
    v7[2] = sub_10008E0EC;
    v7[3] = &unk_100250910;
    v5 = _Block_copy(v7);
    v6 = a2;

    [v3 addSuccessBlock:v5];
    _Block_release(v5);
  }
}

void sub_10017B3F4(uint64_t a1, void *a2)
{
  v3 = [objc_opt_self() internalInstanceUsingBag:{objc_msgSend(a2, "bag")}];
  swift_unknownObjectRelease();
  [v3 enqueueEvent:a1];
}

uint64_t sub_10017BD34(uint64_t result, void *a2, uint64_t a3)
{
  if (a3)
  {
    v4 = result;
    type metadata accessor for ContentManager();
    swift_errorRetain();
    sub_10017C464(v4, a2);
    sub_1000B5CBC();
  }

  return result;
}

void sub_10017BE54()
{
  sub_100003D74();
  v2 = v1;
  v4 = v3;
  v5 = type metadata accessor for Date();
  v6 = sub_100002CC4(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v6);
  v13 = &v31[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v31[-1] - v14;
  v16 = [objc_allocWithZone(AMSMutablePromise) init];
  v17 = swift_allocObject();
  v17[2] = v0;
  v17[3] = v2;
  v17[4] = v16;
  v31[4] = sub_10017C658;
  v31[5] = v17;
  v31[0] = _NSConcreteStackBlock;
  v31[1] = 1107296256;
  sub_100007CA4();
  v31[2] = v18;
  v31[3] = &unk_100250870;
  v19 = _Block_copy(v31);
  v20 = v2;
  v21 = v16;

  [v20 getTasksWithCompletionHandler:v19];
  _Block_release(v19);
  static Date.now.getter();
  static Date.+ infix(_:_:)();
  v22 = *(v8 + 8);
  v22(v13, v5);
  isa = Date._bridgeToObjectiveC()().super.isa;
  v22(v15, v5);
  v31[0] = 0;
  v24 = [v21 resultBeforeDate:isa error:v31];

  v25 = v31[0];
  if (v24)
  {
    v31[0] = 0;
    v26 = v25;
    static Set._conditionallyBridgeFromObjectiveC(_:result:)();

    if (v31[0])
    {
      v27 = v31[0];
    }

    else
    {
      v27 = &_swiftEmptySetSingleton;
    }
  }

  else
  {
    v28 = v31[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();

    v27 = &_swiftEmptySetSingleton;
  }

  v29 = type metadata accessor for ContentInfo();
  sub_10005938C(*(v4 + *(v29 + 44)), *(v4 + *(v29 + 44) + 8), v27);

  sub_100005F14();
}

void sub_10017C134(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  v9 = sub_100049574(a3);
  if (v9)
  {
    v10 = v9;
    if (v9 < 1)
    {
      __break(1u);
      return;
    }

    v11 = 0;
    do
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v12 = *(a3 + 8 * v11 + 32);
      }

      v13 = v12;
      ++v11;
      sub_10017C464(a5, v12);
      sub_1000190C0();
    }

    while (v10 != v11);
  }

  isa = Set._bridgeToObjectiveC()().super.isa;

  [a6 finishWithResult:isa];
}

uint64_t sub_10017C260(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  sub_100002BC0(0, &qword_10026FB18, NSURLSessionDataTask_ptr);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  sub_100002BC0(0, &unk_10026FB20, NSURLSessionUploadTask_ptr);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  sub_100002BC0(0, &unk_10026AF90, NSURLSessionDownloadTask_ptr);
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v2(v3, v4, v5);
}

uint64_t sub_10017C35C(void *a1)
{
  sub_10007B9A4(&qword_10026FB10, &qword_1001EEF48);
  aBlock[4] = sub_10017C630;
  aBlock[5] = Promise.__allocating_init()();
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  sub_100007CA4();
  aBlock[2] = v2;
  aBlock[3] = &unk_100250820;
  v3 = _Block_copy(aBlock);

  [a1 getTasksWithCompletionHandler:v3];
  _Block_release(v3);
  v4 = sub_1001B5BA8();

  return v4;
}

uint64_t sub_10017C464(void *a1, void *a2)
{
  v3 = sub_10017C5C0([a1 configuration]);
  if (v4)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0;
  }

  v9 = v5;
  v6._countAndFlagsBits = 45;
  v6._object = 0xE100000000000000;
  String.append(_:)(v6);
  [a2 taskIdentifier];
  v7._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v7);

  return v9;
}

id sub_10017C50C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NetworkObserver();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10017C5C0(void *a1)
{
  v2 = [a1 identifier];

  if (!v2)
  {
    return 0;
  }

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

unint64_t sub_10017C664()
{
  result = qword_10026FB40;
  if (!qword_10026FB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026FB40);
  }

  return result;
}

uint64_t sub_10017C6B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10007B9A4(&unk_10026FB30, &qword_1001EEF50);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t getEnumTagSinglePayload for NetworkObserver.NetworkError(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for NetworkObserver.NetworkError(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_10017C788(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10017C7A4(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

  *(result + 8) = v2;
  return result;
}

uint64_t sub_10017C7E8()
{
  v1 = type metadata accessor for NWPath.Status();
  v2 = sub_100002CC4(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v2);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v23 - v10;
  v12 = type metadata accessor for NWPath();
  v13 = sub_100002CC4(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  __chkstk_darwin(v13);
  v19 = &v23 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(v0 + 16);
  NWPathMonitor.currentPath.getter();
  NWPath.status.getter();
  (*(v15 + 8))(v19, v12);
  (*(v4 + 104))(v9, enum case for NWPath.Status.satisfied(_:), v1);
  LOBYTE(v20) = static NWPath.Status.== infix(_:_:)();
  v21 = *(v4 + 8);
  v21(v9, v1);
  v21(v11, v1);
  return v20 & 1;
}

void sub_10017C9C4()
{
  if (qword_1002687D0 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_1002878C8);

  sub_100005254();
  swift_allocObject();
  qword_1002878D0 = sub_10017CA50();

  os_unfair_lock_unlock(&dword_1002878C8);
}

uint64_t sub_10017CA50()
{
  v1 = type metadata accessor for DispatchQoS.QoSClass();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for NWPathMonitor();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  *(v0 + 16) = NWPathMonitor.init()();
  swift_allocObject();
  swift_weakInit();

  sub_100017E54(sub_10017D044);
  NWPathMonitor.pathUpdateHandler.setter();

  v9 = *(v0 + 16);
  sub_100017A08();
  (*(v2 + 104))(v5, enum case for DispatchQoS.QoSClass.default(_:), v1);

  v10 = static OS_dispatch_queue.global(qos:)();
  (*(v2 + 8))(v5, v1);
  NWPathMonitor.start(queue:)();

  return v0;
}

uint64_t sub_10017CC1C(uint64_t a1)
{
  v2 = type metadata accessor for NWPath.Status();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v24 - v8;
  v10 = type metadata accessor for LogInterpolation.StringInterpolation();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v13 = result;
    v25 = v2;
    v28 = a1;
    if (qword_1002686B0 != -1)
    {
      swift_once();
    }

    v27 = qword_100287810;
    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v14 = *(type metadata accessor for LogInterpolation() - 8);
    v15 = (*(v14 + 80) + 32) & ~*(v14 + 80);
    v26 = *(v14 + 72);
    *(swift_allocObject() + 16) = xmmword_1001E5F70;
    v30 = type metadata accessor for NetworkStatusObserver();
    v29[0] = v13;

    v16 = AMSLogKey();
    if (v16)
    {
      v17 = v16;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_100002C00(v29);
    LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v18._object = 0x8000000100200440;
    v18._countAndFlagsBits = 0xD000000000000014;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v18);
    NWPath.status.getter();
    v19 = v25;
    (*(v3 + 104))(v7, enum case for NWPath.Status.satisfied(_:), v25);
    v20 = static NWPath.Status.== infix(_:_:)();
    v21 = *(v3 + 8);
    v21(v7, v19);
    v21(v9, v19);
    v30 = &type metadata for Bool;
    LOBYTE(v29[0]) = v20 & 1;
    LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
    sub_100002C5C(v29);
    v22._countAndFlagsBits = 0;
    v22._object = 0xE000000000000000;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v22);
    LogInterpolation.init(stringInterpolation:)();
    v23 = static os_log_type_t.default.getter();
    sub_1000036B0(v23);
  }

  return result;
}

uint64_t sub_10017CFB0()
{
  v1 = v0;
  v2 = *(v0 + 16);

  NWPathMonitor.cancel()();

  v3 = *(v1 + 16);

  return v1;
}

uint64_t sub_10017CFF4()
{
  sub_10017CFB0();
  sub_100005254();

  return swift_deallocClassInstance();
}

void sub_10017D04C(void *a1, char a2)
{
  if (a2)
  {

    Promise.reject(_:)();
  }

  else
  {
    v3 = a1;
    Promise.resolve(_:)();
    sub_10017DA7C(a1, 0);
  }
}

uint64_t sub_10017D0B8(uint64_t a1, char a2)
{
  if (a2)
  {
    return Promise.reject(_:)();
  }

  else
  {
    return Promise.resolve(_:)();
  }
}

uint64_t sub_10017D0C4(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100245148, v2);

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

uint64_t sub_10017D118(char a1)
{
  if (a1)
  {
    return 0x656C646E61686E75;
  }

  else
  {
    return 0x726F727265;
  }
}

uint64_t sub_10017D178@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10017D0C4(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_10017D1A8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10017D118(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_10017D1D4(uint64_t a1, uint64_t a2)
{
  sub_100002BC0(0, &qword_10026FC60, AMSEngagementEnqueueRequest_ptr);
  sub_10007B9A4(&qword_10026F910, &qword_1001EBE40);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1001E8AB0;
  sub_100002BC0(0, &qword_10026B508, AMSEngagementDestination_ptr);
  v5 = sub_100092378();
  [v5 setAllowsResponse:1];
  *(v4 + 32) = v5;
  v6 = sub_10017D344(a1, v4);

  sub_10007B9A4(&qword_100271F20, &qword_1001EBE90);
  v7 = Promise.__allocating_init()();
  swift_getObjectType();
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = v7;
  swift_unknownObjectRetain();

  sub_100099764(v6, sub_10017D7AC, v8);

  return v7;
}

id sub_10017D344(uint64_t a1, uint64_t a2)
{
  v3 = [objc_allocWithZone(AMSEngagementEnqueueRequest) init];
  sub_10007B9A4(&qword_100269FC0, &unk_1001E7520);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1001E61B0;
  sub_10007B9A4(&unk_10026CFD0, &unk_1001E8600);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001E5F60;
  sub_100006F40();
  *(inited + 96) = &type metadata for String;
  *(inited + 72) = 0x6E61635343464ELL;
  *(inited + 80) = 0xE700000000000000;
  sub_100006F40();
  *(inited + 168) = &type metadata for String;
  strcpy((inited + 144), "amsengagementd");
  *(inited + 159) = -18;
  sub_100006F40();
  v6 = URL.absoluteString.getter();
  *(inited + 240) = &type metadata for String;
  *(inited + 216) = v6;
  *(inited + 224) = v7;
  *(v4 + 32) = Dictionary.init(dictionaryLiteral:)();
  sub_1000F4334(v4, v3);
  v8 = [objc_opt_self() currentProcess];
  [v3 setClientInfo:v8];

  sub_10017DB30(a2, v3);
  return v3;
}

uint64_t sub_10017D538(void *a1, char a2, uint64_t a3)
{
  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v6 = *(type metadata accessor for LogInterpolation() - 8);
  v7 = *(v6 + 72);
  v8 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  *(swift_allocObject() + 16) = xmmword_1001E5F60;
  v18 = &type metadata for NFCEngagementEventHandler;
  v16 = a3;
  swift_unknownObjectRetain();
  v9 = AMSLogKey();
  if (v9)
  {
    v10 = v9;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(&v16);
  LogInterpolation.init(stringLiteral:)();
  v18 = sub_10007B9A4(&qword_10026FC68, &unk_1001EEFD8);
  v16 = a1;
  v17 = a2 & 1;
  sub_10017D7B8(a1, a2 & 1);
  static LogInterpolation.safe(_:)();
  sub_100002C5C(&v16);
  if (qword_1002686B0 != -1)
  {
    swift_once();
  }

  v11 = static os_log_type_t.default.getter();
  sub_1000036B0(v11);

  if (a2)
  {
    swift_errorRetain();
    v12 = 1;
  }

  else
  {
    swift_unknownObjectRetain();
    sub_10017D7B8(a1, 0);
    v13 = sub_10017D7D0(a1, a3);
    v12 = v14;
    sub_10017DA7C(a1, 0);
    swift_unknownObjectRelease();
    a1 = v13;
  }

  sub_10017D0B8(a1, v12 & 1);
  return sub_10017D7C4(a1, v12 & 1);
}

id sub_10017D7B8(void *a1, char a2)
{
  if (a2)
  {
    return swift_errorRetain();
  }

  else
  {
    return a1;
  }
}

uint64_t sub_10017D7C4(uint64_t a1, char a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_10017D7D0(void *a1, uint64_t a2)
{
  result = sub_10006184C(a1);
  if (!result)
  {
    return result;
  }

  v4 = result;
  sub_10017DA88();
  AnyHashable.init<A>(_:)();
  sub_10000E0C8(v13, v4, &v14);

  sub_10000E1E8(v13);
  if (!v15)
  {
    sub_100002C5C(&v14);
    return 0;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v5 & 1) == 0)
  {
    return 0;
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v6 = *(type metadata accessor for LogInterpolation() - 8);
  v7 = *(v6 + 72);
  v8 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  *(swift_allocObject() + 16) = xmmword_1001E5F70;
  v13[3] = &type metadata for NFCEngagementEventHandler;
  v13[0] = a2;
  swift_unknownObjectRetain();
  v9 = AMSLogKey();
  if (v9)
  {
    v10 = v9;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(v13);
  LogInterpolation.init(stringLiteral:)();
  if (qword_1002686B0 != -1)
  {
    swift_once();
  }

  v11 = static os_log_type_t.error.getter();
  sub_1000036B0(v11);

  sub_10017DADC();
  result = swift_allocError();
  *v12 = 1;
  return result;
}

void sub_10017DA7C(void *a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

unint64_t sub_10017DA88()
{
  result = qword_10026FC70;
  if (!qword_10026FC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026FC70);
  }

  return result;
}

unint64_t sub_10017DADC()
{
  result = qword_10026FC78;
  if (!qword_10026FC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026FC78);
  }

  return result;
}

void sub_10017DB30(uint64_t a1, void *a2)
{
  sub_100002BC0(0, &qword_10026B508, AMSEngagementDestination_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;
  [a2 setDestinations:isa];
}

_BYTE *storeEnumTagSinglePayload for NFCEngagementEventHandler.ErrorCase(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_10017DC9C()
{
  result = qword_10026FC80;
  if (!qword_10026FC80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026FC80);
  }

  return result;
}

uint64_t sub_10017DCF0(void *a1)
{
  v3 = sub_10007B9A4(&unk_10026FEE0, &unk_1001E67C0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v31 - v5;
  v7 = type metadata accessor for URL();
  v8 = sub_100002CC4(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  __chkstk_darwin(v8);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(&v35 + 1) = &type metadata for AMSFlags;
  v36 = sub_10000D884();
  LOBYTE(v34) = 1;
  v15 = isFeatureEnabled(_:)();
  sub_100002C00(&v34);
  if ((v15 & 1) == 0)
  {
    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v16 = *(type metadata accessor for LogInterpolation() - 8);
    v17 = *(v16 + 72);
    v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
    *(swift_allocObject() + 16) = xmmword_1001E5F60;
    *(&v35 + 1) = &type metadata for NFCEventHandler;
    *&v34 = swift_allocObject();
    sub_10017E2AC(v1, v34 + 16);
    v19 = AMSLogKey();
    if (v19)
    {
      v20 = v19;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_100002C00(&v34);
    LogInterpolation.init(stringLiteral:)();
    *(&v35 + 1) = &type metadata for NFCEventHandlingError;
    LOBYTE(v34) = 0;
    static LogInterpolation.safe(_:)();
    sub_10000A064(&v34, &qword_10026D350, &qword_1001E6050);
    if (qword_1002686B0 == -1)
    {
      goto LABEL_21;
    }

LABEL_23:
    sub_100002D44();
LABEL_21:
    v29 = static os_log_type_t.error.getter();
    sub_1000036B0(v29);
  }

  if ([a1 object])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v32 = 0u;
    v33 = 0u;
  }

  v34 = v32;
  v35 = v33;
  if (!*(&v33 + 1))
  {
    v21 = &qword_10026D350;
    v22 = &qword_1001E6050;
    v23 = &v34;
    goto LABEL_14;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_15;
  }

  URL.init(string:)();

  if (sub_100009F34(v6, 1, v7) == 1)
  {
    v21 = &unk_10026FEE0;
    v22 = &unk_1001E67C0;
    v23 = v6;
LABEL_14:
    sub_10000A064(v23, v21, v22);
LABEL_15:
    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v24 = *(type metadata accessor for LogInterpolation() - 8);
    v25 = *(v24 + 72);
    v26 = (*(v24 + 80) + 32) & ~*(v24 + 80);
    *(swift_allocObject() + 16) = xmmword_1001E5F60;
    *(&v35 + 1) = &type metadata for NFCEventHandler;
    *&v34 = swift_allocObject();
    sub_10017E2AC(v1, v34 + 16);
    v27 = AMSLogKey();
    if (v27)
    {
      v28 = v27;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_100002C00(&v34);
    LogInterpolation.init(stringLiteral:)();
    if ([a1 object])
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v34 = 0u;
      v35 = 0u;
    }

    static LogInterpolation.safe(_:)();
    sub_10000A064(&v34, &qword_10026D350, &qword_1001E6050);
    if (qword_1002686B0 == -1)
    {
      goto LABEL_21;
    }

    goto LABEL_23;
  }

  (*(v10 + 32))(v14, v6, v7);
  sub_10017E2E4(v14);
  return (*(v10 + 8))(v14, v7);
}

uint64_t sub_10017E2E4(uint64_t a1)
{
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v6 = sub_100003CA8((v1 + 40), *(v1 + 64));
  sub_10017D1D4(a1, *v6);
  sub_10017E2AC(v1, __src);
  (*(v4 + 16))(&__src[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)], a1, v3);
  v7 = (*(v4 + 80) + 176) & ~*(v4 + 80);
  v8 = swift_allocObject();
  memcpy((v8 + 16), __src, 0xA0uLL);
  (*(v4 + 32))(v8 + v7, &__src[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)], v3);
  sub_1000ED260();

  sub_10017E2AC(v1, __src);
  v9 = swift_allocObject();
  memcpy((v9 + 16), __src, 0xA0uLL);
  sub_1000ED428(sub_10017EA44, v9);
}

uint64_t sub_10017E524(uint64_t a1, uint64_t a2)
{
  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v3 = *(type metadata accessor for LogInterpolation() - 8);
  v4 = *(v3 + 72);
  v5 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  *(swift_allocObject() + 16) = xmmword_1001E5F60;
  v19 = &type metadata for NFCEventHandler;
  v18[0] = swift_allocObject();
  sub_10017E2AC(v2, v18[0] + 16);
  v6 = AMSLogKey();
  if (v6)
  {
    v7 = v6;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(v18);
  LogInterpolation.init(stringLiteral:)();
  swift_getErrorValue();
  v19 = v17;
  v8 = sub_100017E64(v18);
  (*(v17[-1].Description + 2))(v8);
  static LogInterpolation.safe(_:)();
  sub_10000A064(v18, &qword_10026D350, &qword_1001E6050);
  if (qword_1002686B0 != -1)
  {
    swift_once();
  }

  v9 = static os_log_type_t.error.getter();
  sub_1000036B0(v9);

  *(swift_allocObject() + 16) = xmmword_1001E5F70;
  v19 = &type metadata for NFCEventHandler;
  v18[0] = swift_allocObject();
  sub_10017E2AC(v2, v18[0] + 16);
  v10 = AMSLogKey();
  if (v10)
  {
    v11 = v10;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(v18);
  LogInterpolation.init(stringLiteral:)();
  v12 = static os_log_type_t.default.getter();
  sub_1000036B0(v12);

  v13 = v2[18];
  v14 = v2[19];
  sub_100003CA8(v2 + 15, v13);
  return (*(v14 + 8))(a2, v13, v14);
}

uint64_t sub_10017E88C(uint64_t a1, uint64_t a2)
{
  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v3 = *(type metadata accessor for LogInterpolation() - 8);
  v4 = *(v3 + 72);
  v5 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  *(swift_allocObject() + 16) = xmmword_1001E5F70;
  v10[3] = &type metadata for NFCEventHandler;
  v10[0] = swift_allocObject();
  sub_10017E2AC(a2, v10[0] + 16);
  v6 = AMSLogKey();
  if (v6)
  {
    v7 = v6;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(v10);
  LogInterpolation.init(stringLiteral:)();
  if (qword_1002686B0 != -1)
  {
    swift_once();
  }

  v8 = static os_log_type_t.default.getter();
  sub_1000036B0(v8);
}

uint64_t sub_10017EA54(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 160))
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

uint64_t sub_10017EA94(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 152) = 0;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 160) = 1;
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

    *(result + 160) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for NFCEventHandlingError(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_10017EBEC()
{
  result = qword_10026FC88;
  if (!qword_10026FC88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026FC88);
  }

  return result;
}

uint64_t sub_10017EC40()
{
  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v0 = *(type metadata accessor for LogInterpolation() - 8);
  v1 = *(v0 + 72);
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  *(swift_allocObject() + 16) = xmmword_1001E5F70;
  type metadata accessor for NotificationObserver();
  v3 = AMSSetLogKeyIfNeeded();
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  static LogInterpolation.prefix<A>(_:_:)();

  LogInterpolation.init(stringLiteral:)();
  if (qword_1002686B0 != -1)
  {
    swift_once();
  }

  v4 = static os_log_type_t.default.getter();
  sub_1000036B0(v4);

  return sub_10017EDC0();
}

uint64_t sub_10017EDC0()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v16 = *(v1 - 8);
  v2 = *(v16 + 64);
  __chkstk_darwin(v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchQoS();
  v5 = *(v15 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v15);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1002687D8 != -1)
  {
    swift_once();
  }

  v9 = *(qword_10026FC90 + OBJC_IVAR____TtC14amsengagementd20NotificationObserver_queue);
  v10 = swift_allocObject();
  *(v10 + 16) = v0;
  aBlock[4] = sub_100180540;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100005E50;
  aBlock[3] = &unk_100250CA8;
  v11 = _Block_copy(aBlock);
  v12 = v9;
  static DispatchQoS.unspecified.getter();
  v17 = _swiftEmptyArrayStorage;
  sub_100005DC0(&qword_10026CD40, &type metadata accessor for DispatchWorkItemFlags);
  sub_10007B9A4(&unk_100270490, &unk_1001E74F0);
  sub_10001407C(&qword_10026CD50, &unk_100270490, &unk_1001E74F0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v11);

  (*(v16 + 8))(v4, v1);
  (*(v5 + 8))(v8, v15);
}

void sub_10017F0BC(void *a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v7 = a1;
  v8 = a3;
  v9 = a5;
  sub_10017EC40();
}

uint64_t sub_10017F158(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

void sub_10017F1B8(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_10017F214(a1);
  }
}

void sub_10017F214(void *a1)
{
  v2 = type metadata accessor for LogInterpolation.StringInterpolation();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  sub_100002DEC();
  if (!xpc_dictionary_get_string(a1, _xpc_event_key_name))
  {
    return;
  }

  v4 = String.init(cString:)();
  v6 = v5;
  v7 = v4 == 0xD000000000000021 && 0x8000000100200670 == v5;
  if (v7 || (v8 = v4, (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
  {

    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v9 = sub_100008580();
    sub_100002CFC(v9);
    v11 = *(v10 + 72);
    sub_100002D7C();
    *(sub_100003F28() + 16) = xmmword_1001E5F70;
    v12 = type metadata accessor for NotificationObserver();
    sub_1000076F8(v12);
    v13 = AMSLogKey();
    if (v13)
    {
      v14 = v13;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_100002C00(v47);
    LogInterpolation.init(stringLiteral:)();
    if (qword_1002686B0 != -1)
    {
      sub_100002D44();
    }

    v15 = static os_log_type_t.default.getter();
    sub_1000036B0(v15);

    sub_10017EDC0();
    return;
  }

  if (v8 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v6 == v16)
  {

LABEL_20:

    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v19 = sub_100008580();
    sub_100002CFC(v19);
    v21 = *(v20 + 72);
    sub_100002D7C();
    v22 = sub_100003F28();
    v23 = sub_100005A44(v22, xmmword_1001E5F70);
    sub_1000076F8(v23);
    v24 = AMSLogKey();
    if (v24)
    {
      v25 = v24;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    sub_10000C184();

    sub_100002C00(v47);
    LogInterpolation.init(stringLiteral:)();
    if (qword_1002686B0 != -1)
    {
      sub_100002D44();
    }

    v26 = static os_log_type_t.default.getter();
    sub_1000036B0(v26);

    if (qword_100268678 != -1)
    {
      swift_once();
    }

    sub_1000F9B28();
    return;
  }

  v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v18)
  {
    goto LABEL_20;
  }

  v27 = v8 == 0xD00000000000004FLL && 0x80000001002006A0 == v6;
  if (v27 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v28 = sub_100008580();
    sub_100002CFC(v28);
    v30 = *(v29 + 72);
    sub_100002D7C();
    v31 = sub_100003F28();
    v32 = sub_100005A44(v31, xmmword_1001E5F70);
    sub_1000076F8(v32);
    v33 = AMSLogKey();
    if (v33)
    {
      v34 = v33;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    sub_10000C184();

    sub_100002C00(v47);
    LogInterpolation.init(stringLiteral:)();
    if (qword_1002686B0 != -1)
    {
      sub_100002D44();
    }

    v35 = static os_log_type_t.default.getter();
    sub_1000036B0(v35);

    if (qword_100268828 != -1)
    {
      swift_once();
    }

    sub_1001A7AB4();
  }

  else
  {
    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v36 = type metadata accessor for LogInterpolation();
    sub_100002CFC(v36);
    v38 = *(v37 + 72);
    v40 = (*(v39 + 80) + 32) & ~*(v39 + 80);
    *(swift_allocObject() + 16) = xmmword_1001E5F70;
    v41 = type metadata accessor for NotificationObserver();
    sub_1000076F8(v41);
    v42 = AMSLogKey();
    if (v42)
    {
      v43 = v42;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_100002C00(v47);
    LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v44._countAndFlagsBits = 0xD00000000000001ELL;
    v44._object = 0x80000001002006F0;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v44);
    v47[3] = &type metadata for String;
    v47[0] = v8;
    v47[1] = v6;
    LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
    sub_100002C5C(v47);
    v45._countAndFlagsBits = 0;
    v45._object = 0xE000000000000000;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v45);
    LogInterpolation.init(stringInterpolation:)();
    if (qword_1002686B0 != -1)
    {
      sub_100002D44();
    }

    v46 = static os_log_type_t.default.getter();
    sub_1000036B0(v46);
  }
}

uint64_t sub_10017F8F4()
{
  swift_getObjectType();
  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v1 = type metadata accessor for LogInterpolation();
  sub_100002CFC(v1);
  v3 = *(v2 + 72);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  *(swift_allocObject() + 16) = xmmword_1001E5F70;
  v11[3] = type metadata accessor for NotificationObserver();
  v11[0] = v0;
  v6 = v0;
  v7 = AMSLogKey();
  if (v7)
  {
    v8 = v7;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(v11);
  LogInterpolation.init(stringLiteral:)();
  if (qword_1002686B0 != -1)
  {
    sub_100002D44();
  }

  v9 = static os_log_type_t.default.getter();
  sub_1000036B0(v9);

  return sub_10017EDC0();
}

uint64_t sub_10017FAD8(uint64_t a1)
{
  v28 = a1;
  v27 = type metadata accessor for Date();
  v1 = *(v27 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v27);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for TimeZone();
  v5 = *(v26 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v26);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AppDatabase();
  v9 = sub_10001D804(1);
  if (!v9)
  {
    v29 = 0;
    v31 = 0u;
    v32 = 0u;
    v10 = 1;
LABEL_3:
    sub_100002C5C(&v31);
    goto LABEL_4;
  }

  v29 = v9;
  sub_100051540();
  sub_1000A6F08(2u, &v31);

  if (!*(&v32 + 1))
  {
    v10 = 0;
    goto LABEL_3;
  }

  v10 = 0;
  if (swift_dynamicCast())
  {
    v11 = v30;
    v12 = 1;
    goto LABEL_5;
  }

LABEL_4:
  v11 = 0;
  v12 = 0;
LABEL_5:
  static TimeZone.current.getter();
  Date.init()();
  v13 = TimeZone.secondsFromGMT(for:)();
  (*(v1 + 8))(v4, v27);
  (*(v5 + 8))(v8, v26);
  if (v12 && v11 == v13)
  {
    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v14 = *(type metadata accessor for LogInterpolation() - 8);
    v15 = *(v14 + 72);
    v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
    *(swift_allocObject() + 16) = xmmword_1001E5F70;
    v17 = AMSSetLogKeyIfNeeded();
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    type metadata accessor for NotificationObserver();
    static LogInterpolation.prefix<A>(_:_:)();

    LogInterpolation.init(stringLiteral:)();
    if (qword_1002686B0 != -1)
    {
      swift_once();
    }

    v18 = static os_log_type_t.default.getter();
    sub_1000036B0(v18);
  }

  else
  {
    if ((v10 & 1) == 0)
    {
      sub_100051540();
      *(&v32 + 1) = &type metadata for Int;
      *&v31 = v13;
      sub_1000A6E98(&v31, 2);

      sub_100002C5C(&v31);
    }

    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v20 = *(type metadata accessor for LogInterpolation() - 8);
    v21 = *(v20 + 72);
    v22 = (*(v20 + 80) + 32) & ~*(v20 + 80);
    *(swift_allocObject() + 16) = xmmword_1001E5F70;
    v23 = AMSSetLogKeyIfNeeded();
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    type metadata accessor for NotificationObserver();
    static LogInterpolation.prefix<A>(_:_:)();

    LogInterpolation.init(stringLiteral:)();
    if (qword_1002686B0 != -1)
    {
      swift_once();
    }

    v24 = static os_log_type_t.default.getter();
    sub_1000036B0(v24);

    sub_1000635B0(1);
  }
}

uint64_t sub_100180034(void *a1)
{
  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v3 = sub_100008580();
  sub_100002CFC(v3);
  v5 = *(v4 + 72);
  sub_100002D7C();
  v6 = sub_100003F28();
  v20 = sub_100005A44(v6, xmmword_1001E5F60);
  v19[0] = v1;
  v7 = v1;
  v8 = AMSLogKey();
  if (v8)
  {
    v9 = v8;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(v19);
  LogInterpolation.init(stringLiteral:)();
  v20 = sub_100002BC0(0, &qword_10026FCC8, NSNotification_ptr);
  v19[0] = a1;
  v10 = a1;
  static LogInterpolation.sensitive(_:)();
  sub_100002C5C(v19);
  if (qword_1002686B0 != -1)
  {
    sub_100002D44();
  }

  v11 = static os_log_type_t.default.getter();
  sub_1000036B0(v11);

  v25 = &type metadata for FeatureFlagProvider;
  v26 = &off_10024B860;
  v12 = type metadata accessor for BagProvider();
  v13 = swift_allocObject();
  v20 = v12;
  v21 = &off_100247E30;
  v19[0] = v13;
  if (qword_100268670 != -1)
  {
    swift_once();
  }

  v14 = qword_1002877D0;
  v23 = &type metadata for NFCEngagementEventHandler;
  v24 = &off_100250AD0;
  v22 = qword_1002877D0;
  v15 = objc_allocWithZone(AMSDNFCAccessory);
  v16 = v14;
  v17 = [v15 init];
  v28 = sub_100002BC0(0, &unk_10026FCD0, &off_100241F40);
  v29 = &off_100246E00;
  v27 = v17;
  sub_10017DCF0(v10);
  return sub_1001804EC(v19);
}

uint64_t sub_100180338(void *a1)
{
  v7[13] = &type metadata for FeatureFlagProvider;
  v7[14] = &off_10024B860;
  v7[3] = type metadata accessor for BagProvider();
  v7[4] = &off_100247E30;
  v7[0] = swift_allocObject();
  if (qword_100268670 != -1)
  {
    swift_once();
  }

  v2 = qword_1002877D0;
  v7[8] = &type metadata for NFCEngagementEventHandler;
  v7[9] = &off_100250AD0;
  v7[5] = qword_1002877D0;
  v3 = objc_allocWithZone(AMSDNFCAccessory);
  v4 = v2;
  v5 = [v3 init];
  v7[18] = sub_100002BC0(0, &unk_10026FCD0, &off_100241F40);
  v7[19] = &off_100246E00;
  v7[15] = v5;
  sub_10017DCF0(a1);
  return sub_1001804EC(v7);
}

id sub_1001804A8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NotificationObserver();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100180570(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  sub_100002BC0(0, &unk_10026FE88, UNNotificationSettings_ptr);
  v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v2(v3);
}

uint64_t sub_10018062C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for LogInterpolation.StringInterpolation();
  v9 = sub_100003D10(v8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  sub_100002DEC();
  v12 = sub_10007B9A4(&unk_10026FEE0, &unk_1001E67C0);
  v13 = sub_100003D10(v12);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v57 - v16;
  v18 = type metadata accessor for URL();
  v19 = sub_100002CC4(v18);
  v21 = v20;
  v23 = *(v22 + 64);
  __chkstk_darwin(v19);
  sub_100002DEC();
  v26 = v25 - v24;
  sub_1001810FC(a2, a3, v17);
  if (sub_100009F34(v17, 1, v18) == 1)
  {
    return sub_100009FB0(v17, &unk_10026FEE0, &unk_1001E67C0);
  }

  (*(v21 + 32))(v26, v17, v18);
  v28 = objc_opt_self();
  v60[0] = 0;
  v29 = [v28 archivedDataWithRootObject:a1 requiringSecureCoding:1 error:v60];
  v30 = v60[0];
  if (v29)
  {
    v58 = v21;
    v31 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v33 = v32;

    v34 = v4[17];
    v35 = v4[18];
    sub_100003CA8(v4 + 14, v34);
    (*(v35 + 32))(v31, v33, v26, v34, v35);
    v54 = *(v58 + 8);
    v55 = sub_10000A298();
    v56(v55);
    return sub_1000253FC(v31, v33);
  }

  else
  {
    v36 = v30;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v37 = type metadata accessor for LogInterpolation();
    sub_100002CFC(v37);
    v40 = (*(v39 + 80) + 32) & ~*(v39 + 80);
    v58 = *(v38 + 72);
    *(swift_allocObject() + 16) = xmmword_1001E5F70;
    v61 = type metadata accessor for NotificationSettingsEventManager();
    v60[0] = v4;

    v41 = AMSLogKey();
    if (v41)
    {
      v42 = v41;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_100002C00(v60);
    LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
    sub_100004810();
    v43._countAndFlagsBits = 0xD000000000000024;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v43);
    v61 = v18;
    v44 = sub_100017E64(v60);
    (*(v21 + 16))(v44, v26, v18);
    LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
    sub_100009FB0(v60, &qword_10026D350, &qword_1001E6050);
    v45._countAndFlagsBits = 8250;
    v45._object = 0xE200000000000000;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v45);
    swift_getErrorValue();
    v46 = v21;
    v47 = v59;
    v61 = v59;
    sub_100017E64(v60);
    sub_1000047A4(v47);
    (*(v48 + 16))();
    LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
    v49 = sub_100009FB0(v60, &qword_10026D350, &qword_1001E6050);
    sub_100003B48(v49);
    LogInterpolation.init(stringInterpolation:)();
    if (qword_1002686B0 != -1)
    {
      sub_100002D44();
    }

    v50 = static os_log_type_t.debug.getter();
    sub_1000036B0(v50);

    v51 = *(v46 + 8);
    v52 = sub_10000A298();
    return v53(v52);
  }
}

uint64_t sub_100180B44(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for LogInterpolation.StringInterpolation();
  v7 = sub_100003D10(v6);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  sub_100002DEC();
  v10 = sub_10007B9A4(&unk_10026FEE0, &unk_1001E67C0);
  v11 = sub_100003D10(v10);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v41 - v14;
  v16 = type metadata accessor for URL();
  v17 = sub_100002CC4(v16);
  v19 = v18;
  v21 = *(v20 + 64);
  __chkstk_darwin(v17);
  sub_100002DEC();
  v24 = v23 - v22;
  sub_1001810FC(a1, a2, v15);
  if (sub_100009F34(v15, 1, v16) == 1)
  {
    v25 = &unk_10026FEE0;
    v26 = &unk_1001E67C0;
    v27 = v15;
LABEL_3:
    sub_100009FB0(v27, v25, v26);
    return 0;
  }

  (*(v19 + 32))(v24, v15, v16);
  v28 = v3[18];
  sub_100003CA8(v3 + 14, v3[17]);
  countAndFlagsBits = URL.path(percentEncoded:)(1)._countAndFlagsBits;
  v30 = (*(v28 + 8))(countAndFlagsBits);
  v32 = v31;

  if (v32 >> 60 == 15)
  {
    v33 = *(v19 + 8);
    v34 = sub_10000A298();
    v35(v34);
    return 0;
  }

  v42 = v19;
  sub_100002BC0(0, &unk_10026FEF0, NSKeyedUnarchiver_ptr);
  sub_10007B9A4(&qword_10026BB78, &qword_1001EF740);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_1001E5F60;
  *(v36 + 32) = type metadata accessor for DisplayCriteria();
  *(v36 + 40) = sub_100002BC0(0, &unk_10026FE88, UNNotificationSettings_ptr);
  *(v36 + 48) = sub_100002BC0(0, &qword_10026FF00, NSDictionary_ptr);
  static NSKeyedUnarchiver.unarchivedObject(ofClasses:from:)();
  v37 = *(v42 + 8);
  v38 = sub_10000A298();
  v39(v38);

  sub_10003AE18(v30, v32);
  if (!v44[3])
  {
    v25 = &qword_10026D350;
    v26 = &qword_1001E6050;
    v27 = v44;
    goto LABEL_3;
  }

  if (swift_dynamicCast())
  {
    return v43;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1001810FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for URL.DirectoryHint();
  v7 = sub_100002CC4(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  __chkstk_darwin(v7);
  sub_100002DEC();
  v14 = v13 - v12;
  v15 = sub_10007B9A4(&unk_10026FEE0, &unk_1001E67C0);
  v16 = sub_100003D10(v15);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  sub_100005C2C();
  v64 = v19;
  __chkstk_darwin(v20);
  v22 = v54 - v21;
  v23 = type metadata accessor for URL();
  v24 = sub_100002CC4(v23);
  v65 = v25;
  v27 = *(v26 + 64);
  __chkstk_darwin(v24);
  sub_100005C2C();
  v62 = v28;
  v30 = __chkstk_darwin(v29);
  v32 = v54 - v31;
  __chkstk_darwin(v30);
  v34 = v54 - v33;
  sub_10001E8B8();
  if (sub_100009F34(v22, 1, v23) == 1)
  {
    sub_100009FB0(v22, &unk_10026FEE0, &unk_1001E67C0);
    v35 = 1;
  }

  else
  {
    v57 = a1;
    v58 = a2;
    v61 = a3;
    v56 = *(v65 + 32);
    v54[1] = v65 + 32;
    v56(v34, v22, v23);
    v36 = v34;
    v37 = v63;
    v38 = v63[8];
    v66 = v63[7];
    v67 = v38;
    v55 = *(v9 + 104);
    v55(v14, enum case for URL.DirectoryHint.isDirectory(_:), v6);
    v39 = v6;
    v40 = v9;
    v41 = sub_10001ECE0();

    v54[2] = v41;
    v42 = v40;
    v43 = v39;
    v60 = v36;
    URL.appending<A>(path:directoryHint:)();
    v44 = *(v42 + 8);
    v59 = v43;
    v44(v14, v43);

    v45 = v37[17];
    v46 = v37[18];
    sub_100003CA8(v37 + 14, v45);
    v47 = v64;
    sub_1000FA020(v32, 1, 0, v45, v46, v64);
    if (sub_100009F34(v47, 1, v23) == 1)
    {
      v48 = *(v65 + 8);
      v48(v32, v23);
      v48(v60, v23);
      sub_100009FB0(v47, &unk_10026FEE0, &unk_1001E67C0);
      v35 = 1;
      a3 = v61;
    }

    else
    {
      v49 = v62;
      v56(v62, v47, v23);
      v66 = v57;
      v67 = v58;
      v50 = v59;
      v55(v14, enum case for URL.DirectoryHint.inferFromPath(_:), v59);
      v51 = v44;
      a3 = v61;
      URL.appending<A>(path:directoryHint:)();
      v51(v14, v50);
      v52 = *(v65 + 8);
      v52(v49, v23);
      v52(v32, v23);
      v52(v60, v23);
      v35 = 0;
    }
  }

  return sub_10000A7C0(a3, v35, 1, v23);
}

uint64_t sub_10018155C(uint64_t a1, uint64_t a2)
{
  *(v2 + 1360) = a2;
  *(v2 + 1352) = a1;
  return sub_100006180(sub_100181578);
}

uint64_t sub_100181578()
{
  sub_1000061B4();
  v1 = v0[170];
  v2 = v0[169];
  v3 = objc_opt_self();
  sub_100005B9C();
  v4 = String._bridgeToObjectiveC()();
  v0[171] = [v3 explicitContentSettingForBundleID:v4];

  sub_100002BC0(0, &qword_10026E4A0, UNUserNotificationCenter_ptr);

  sub_100005B9C();
  v5 = sub_1001AF38C();
  v0[172] = v5;
  v6 = swift_task_alloc();
  v0[173] = v6;
  *(v6 + 16) = v5;
  sub_100002BC0(0, &unk_10026FE88, UNNotificationSettings_ptr);
  swift_asyncLet_begin();
  v7 = swift_task_alloc();
  v0[174] = v7;
  *(v7 + 16) = v5;
  sub_10007B9A4(&qword_10026FE98, &unk_1001EF6C0);
  swift_asyncLet_begin();

  return _swift_asyncLet_get(v0 + 2);
}

uint64_t sub_100181704()
{
  sub_100004768();
  v1 = *(v0 + 1336);
  *(v0 + 1400) = v1;
  v2 = v1;
  v3 = sub_100009EE4();

  return _swift_asyncLet_get(v3);
}

uint64_t sub_100181778()
{
  sub_1000061B4();
  v1 = v0[175];
  v2 = v0[171];
  v3 = v0[168];
  objc_allocWithZone(type metadata accessor for DisplayCriteria());

  v4 = sub_100005B9C();
  v0[176] = sub_10018394C(v4, v5, v3);
  v6 = sub_100009EE4();

  return _swift_asyncLet_finish(v6, v7, v8, v9);
}

uint64_t sub_10018181C()
{
  sub_100004768();
  v1 = *(v0 + 1392);

  return _swift_asyncLet_finish(v0 + 16, v0 + 1336, sub_100181884, v0 + 656);
}

uint64_t sub_100181898()
{
  sub_100004768();
  v1 = *(v0 + 1384);

  v2 = *(v0 + 8);
  v3 = *(v0 + 1408);

  return v2(v3);
}

uint64_t sub_100181904(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_100181924, 0, 0);
}

uint64_t sub_100181924()
{
  sub_1000061B4();
  v1 = v0[3];
  v2 = swift_task_alloc();
  v0[4] = v2;
  *(v2 + 16) = v1;
  v3 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
  v4 = swift_task_alloc();
  v0[5] = v4;
  sub_100002BC0(0, &unk_10026FE88, UNNotificationSettings_ptr);
  sub_100004D64();
  *v4 = v5;
  v4[1] = sub_1001857DC;
  v6 = v0[2];
  sub_100005A5C();

  return withCheckedContinuation<A>(isolation:function:_:)();
}

void sub_100181A18(uint64_t a1, void *a2)
{
  v4 = sub_10007B9A4(&qword_10026FED8, &unk_1001EF730);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = aBlock - v7;
  (*(v5 + 16))(aBlock - v7, a1, v4);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  (*(v5 + 32))(v10 + v9, v8, v4);
  aBlock[4] = sub_100185704;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001475C4;
  aBlock[3] = &unk_100250EC0;
  v11 = _Block_copy(aBlock);

  [a2 getNotificationSettingsWithCompletionHandler:v11];
  _Block_release(v11);
}

uint64_t sub_100181BC8(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_100181BE8, 0, 0);
}

uint64_t sub_100181BE8()
{
  sub_1000061B4();
  v1 = v0[3];
  v2 = swift_task_alloc();
  v0[4] = v2;
  *(v2 + 16) = v1;
  v3 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
  v4 = swift_task_alloc();
  v0[5] = v4;
  sub_10007B9A4(&qword_10026FE98, &unk_1001EF6C0);
  sub_100004D64();
  *v4 = v5;
  v4[1] = sub_100181CD8;
  v6 = v0[2];
  sub_100005A5C();

  return withCheckedContinuation<A>(isolation:function:_:)();
}

uint64_t sub_100181CD8()
{
  sub_100004768();
  sub_1000056A8();
  v2 = *(v1 + 40);
  v3 = *(v1 + 32);
  v4 = *v0;
  sub_100002D20();
  *v5 = v4;

  sub_100002D8C();

  return v6();
}

void sub_100181DD8(uint64_t a1, void *a2)
{
  v4 = sub_10007B9A4(&qword_10026FED0, &qword_1001EF728);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = aBlock - v7;
  (*(v5 + 16))(aBlock - v7, a1, v4);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  (*(v5 + 32))(v10 + v9, v8, v4);
  aBlock[4] = sub_1001856D4;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100180570;
  aBlock[3] = &unk_100250E70;
  v11 = _Block_copy(aBlock);

  [a2 getNotificationSettingsForTopicsWithCompletionHandler:v11];
  _Block_release(v11);
}

uint64_t sub_100181F88()
{

  sub_10007B9A4(&qword_10026FED0, &qword_1001EF728);
  return CheckedContinuation.resume(returning:)();
}

uint64_t sub_100181FD8()
{
  *(v1 + 16) = v0;
  *(v1 + 24) = *v0;
  return sub_100006180(sub_100182018);
}

uint64_t sub_100182018()
{
  sub_1000061B4();
  v2 = v0[2];
  v1 = v0[3];
  v3 = swift_task_alloc();
  v0[4] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = async function pointer to withDiscardingTaskGroup<A>(returning:isolation:body:)[1];
  v5 = swift_task_alloc();
  v0[5] = v5;
  *v5 = v0;
  v5[1] = sub_1001820F4;

  return withDiscardingTaskGroup<A>(returning:isolation:body:)();
}

uint64_t sub_1001820F4()
{
  sub_100004768();
  sub_1000056A8();
  v2 = *(v1 + 40);
  v3 = *(v1 + 32);
  v4 = *v0;
  sub_100002D20();
  *v5 = v4;

  return _swift_task_switch(sub_1001821FC, 0, 0);
}

uint64_t sub_10018221C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[9] = a2;
  v3[10] = a3;
  v4 = *(*(sub_10007B9A4(&unk_10026FEC0, &qword_1001E6280) - 8) + 64) + 15;
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();

  return _swift_task_switch(sub_1001822C4, 0, 0);
}

uint64_t sub_1001822C4()
{
  if (qword_1002687E0 == -1)
  {
    goto LABEL_2;
  }

LABEL_24:
  swift_once();
LABEL_2:
  v1 = qword_1002878D8 + 56;
  v31 = (v0 + 16);
  v2 = -1;
  v3 = -1 << *(qword_1002878D8 + 32);
  if (-v3 < 64)
  {
    v2 = ~(-1 << -v3);
  }

  v4 = v2 & *(qword_1002878D8 + 56);
  v5 = (63 - v3) >> 6;
  v34 = qword_1002878D8;

  v6 = 0;
  v32 = v5;
  v33 = v1;
  for (i = v0; v4; v1 = v33)
  {
LABEL_9:
    v9 = *(v0 + 88);
    v8 = *(v0 + 96);
    v10 = *(v0 + 80);
    v11 = (*(v34 + 48) + ((v6 << 10) | (16 * __clz(__rbit64(v4)))));
    v13 = *v11;
    v12 = v11[1];
    v14 = type metadata accessor for TaskPriority();
    sub_10000A7C0(v8, 1, 1, v14);
    v15 = swift_allocObject();
    v15[2] = 0;
    v36 = v15 + 2;
    v15[3] = 0;
    v15[4] = v10;
    v15[5] = v13;
    v15[6] = v12;
    sub_1001854B8(v8, v9, &unk_10026FEC0, &qword_1001E6280);
    LODWORD(v9) = sub_100009F34(v9, 1, v14);
    v0 = i;

    v16 = *(i + 88);
    if (v9 == 1)
    {
      sub_100009FB0(*(i + 88), &unk_10026FEC0, &qword_1001E6280);
    }

    else
    {
      TaskPriority.rawValue.getter();
      sub_1000047A4(v14);
      (*(v17 + 8))(v16, v14);
    }

    if (*v36)
    {
      v18 = v15[3];
      v19 = *v36;
      swift_getObjectType();
      swift_unknownObjectRetain();
      v0 = i;
      v20 = dispatch thunk of Actor.unownedExecutor.getter();
      v22 = v21;
      swift_unknownObjectRelease();
    }

    else
    {
      v20 = 0;
      v22 = 0;
    }

    v23 = **(v0 + 72);
    v24 = swift_allocObject();
    *(v24 + 16) = &unk_1001EF6F0;
    *(v24 + 24) = v15;

    if (v22 | v20)
    {
      v25 = v31;
      *v31 = 0;
      v31[1] = 0;
      *(v0 + 32) = v20;
      *(v0 + 40) = v22;
    }

    else
    {
      v25 = 0;
    }

    v26 = *(v0 + 96);
    v4 &= v4 - 1;
    *(v0 + 48) = 1;
    *(v0 + 56) = v25;
    *(v0 + 64) = v23;
    swift_task_create();

    sub_100009FB0(v26, &unk_10026FEC0, &qword_1001E6280);
    v5 = v32;
  }

  while (1)
  {
    v7 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
      goto LABEL_24;
    }

    if (v7 >= v5)
    {
      break;
    }

    v4 = *(v1 + 8 * v7);
    ++v6;
    if (v4)
    {
      v6 = v7;
      goto LABEL_9;
    }
  }

  v28 = *(v0 + 88);
  v27 = *(v0 + 96);

  sub_100002D8C();

  return v29();
}

uint64_t sub_10018264C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100009BE8;

  return sub_1001826F8();
}

uint64_t sub_1001826F8()
{
  sub_1000061B4();
  v3 = v2;
  v5 = v4;
  v1[92] = v0;
  v1[91] = v2;
  v1[90] = v4;
  v6 = type metadata accessor for LogInterpolation.StringInterpolation();
  sub_100003D10(v6);
  v8 = *(v7 + 64) + 15;
  v1[93] = swift_task_alloc();
  v9 = swift_task_alloc();
  v1[94] = v9;
  *v9 = v1;
  v9[1] = sub_1001827CC;

  return sub_10018155C(v5, v3);
}

uint64_t sub_1001827CC()
{
  sub_100004768();
  sub_1000056A8();
  v2 = v1;
  v3 = *(v1 + 752);
  v6 = *v0;
  *(v2 + 760) = v4;

  return _swift_task_switch(sub_1001828C4, 0, 0);
}

uint64_t sub_1001828C4()
{
  v1 = *(v0 + 736);
  v2 = sub_100180B44(*(v0 + 720), *(v0 + 728));
  if (v2)
  {
    v3 = v2;
    if ([v2 isEqual:*(v0 + 760)])
    {
      v4 = *(v0 + 736);
      sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
      v5 = type metadata accessor for LogInterpolation();
      sub_100002CFC(v5);
      v7 = *(v6 + 72);
      v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      *(swift_allocObject() + 16) = xmmword_1001E5F70;
      *(v0 + 664) = type metadata accessor for NotificationSettingsEventManager();
      *(v0 + 640) = v4;

      v10 = AMSLogKey();
      if (v10)
      {
        v11 = v10;
        static String._unconditionallyBridgeFromObjectiveC(_:)();
      }

      v52 = *(v0 + 744);
      v53 = *(v0 + 728);
      v54 = *(v0 + 720);
      static LogInterpolation.prefix(_:_:)();

      sub_100002C00((v0 + 640));
      LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
      sub_100004810();
      v55._countAndFlagsBits = 0xD000000000000013;
      LogInterpolation.StringInterpolation.appendLiteral(_:)(v55);
      *(v0 + 696) = &type metadata for String;
      *(v0 + 672) = v54;
      *(v0 + 680) = v53;

      LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
      v56 = sub_100009FB0(v0 + 672, &qword_10026D350, &qword_1001E6050);
      sub_100003B48(v56);
      LogInterpolation.init(stringInterpolation:)();
      if (qword_1002686B0 != -1)
      {
        sub_100002D44();
      }

      v57 = *(v0 + 760);
      v58 = static os_log_type_t.default.getter();
      sub_1000036B0(v58);

      v59 = *(v0 + 744);

      sub_100002D8C();

      return v60();
    }
  }

  v12 = *(v0 + 760);
  v13 = *(v0 + 736);
  v14 = *(v0 + 728);
  v15 = *(v0 + 720);
  sub_10007B9A4(&qword_10026FE80, &unk_1001E6270);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001EF2A0;
  *(inited + 32) = 7368801;
  *(inited + 40) = 0xE300000000000000;
  *(inited + 48) = v15;
  *(inited + 56) = v14;
  *(inited + 72) = &type metadata for String;
  *(inited + 80) = 0x4379616C70736964;
  *(inited + 88) = 0xEF61697265746972;

  sub_1001840DC();
  v18 = v17;
  v19 = sub_10007B9A4(&unk_10026FEA0, &unk_1001E7540);
  *(inited + 96) = v18;
  *(inited + 120) = v19;
  *(inited + 128) = 0x707954746E657665;
  *(inited + 136) = 0xE900000000000065;
  *(inited + 144) = 0x6B63696C63;
  *(inited + 152) = 0xE500000000000000;
  *(inited + 168) = &type metadata for String;
  strcpy((inited + 176), "eventVersion");
  *(inited + 189) = 0;
  *(inited + 190) = -5120;
  *(inited + 192) = 5;
  *(inited + 216) = &type metadata for Int;
  *(inited + 224) = 0x746E6F4365676170;
  *(inited + 232) = 0xEB00000000747865;
  *(inited + 240) = 0xD000000000000018;
  *(inited + 248) = 0x8000000100200A60;
  *(inited + 264) = &type metadata for String;
  *(inited + 272) = 0x6570795465676170;
  *(inited + 280) = 0xE800000000000000;
  *(inited + 288) = 0x73676E6974746553;
  *(inited + 296) = 0xE800000000000000;
  *(inited + 312) = &type metadata for String;
  *(inited + 320) = 0x6369706F74;
  *(inited + 360) = &type metadata for String;
  *(inited + 328) = 0xE500000000000000;
  *(inited + 336) = 0xD000000000000014;
  *(inited + 344) = 0x8000000100200A80;
  v20 = Dictionary.init(dictionaryLiteral:)();
  *(v0 + 704) = v20;
  v21 = v13[5];
  v22 = v13[6];
  sub_100003CA8(v13 + 2, v21);
  v23 = (*(v22 + 8))(v21, v22);
  if (v23)
  {
    v24 = v23;
    v25 = [v23 ams_DSID];

    if (v25)
    {
      v26 = [v25 stringValue];

      v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v29 = v28;

      *(v0 + 600) = &type metadata for String;
      *(v0 + 576) = v27;
      *(v0 + 584) = v29;
      sub_100002C4C((v0 + 576), (v0 + 608));
      swift_isUniquelyReferenced_nonNull_native();
      sub_10000DFC4();
      *(v0 + 704) = v20;
    }
  }

  v30 = AMSLogKey();
  if (v30)
  {
    v31 = v30;
    v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v34 = v33;
  }

  else
  {
    v32 = 0;
    v34 = 0;
  }

  *(v0 + 776) = v34;
  *(v0 + 768) = v32;
  v35 = *(v0 + 744);
  v36 = *(v0 + 736);
  v37 = *(v0 + 728);
  v38 = *(v0 + 720);
  *(v0 + 784) = sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v39 = type metadata accessor for LogInterpolation();
  sub_100002CFC(v39);
  *(v0 + 792) = *(v40 + 72);
  *(v0 + 840) = *(v41 + 80);
  *(swift_allocObject() + 16) = xmmword_1001E5F70;
  v42 = type metadata accessor for NotificationSettingsEventManager();
  *(v0 + 800) = v42;
  *(v0 + 408) = v42;
  *(v0 + 384) = v36;

  static LogInterpolation.prefix(_:_:)();
  sub_100002C00((v0 + 384));
  LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v43._countAndFlagsBits = 0xD000000000000015;
  v43._object = 0x8000000100200AA0;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v43);
  *(v0 + 440) = &type metadata for String;
  *(v0 + 416) = v38;
  *(v0 + 424) = v37;

  LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
  v44 = sub_100009FB0(v0 + 416, &qword_10026D350, &qword_1001E6050);
  sub_100003B48(v44);
  LogInterpolation.init(stringInterpolation:)();
  if (qword_1002686B0 != -1)
  {
    sub_100002D44();
  }

  v45 = *(v0 + 736);
  *(v0 + 808) = qword_100287810;
  v46 = static os_log_type_t.default.getter();
  sub_1000036B0(v46);

  v47 = swift_task_alloc();
  *(v0 + 816) = v47;
  *(v47 + 16) = v45;
  *(v47 + 24) = v0 + 704;
  v48 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v49 = swift_task_alloc();
  *(v0 + 824) = v49;
  sub_100002BC0(0, &qword_10026FEB0, AMSEngagementEnqueueResult_ptr);
  sub_100004D64();
  *v49 = v50;
  v49[1] = sub_100183084;
  sub_100005A5C();

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v51);
}

uint64_t sub_100183084()
{
  sub_100004768();
  sub_1000056A8();
  v3 = v2;
  v4 = *(v2 + 824);
  v5 = *v1;
  sub_100002D20();
  *v6 = v5;
  *(v3 + 832) = v0;

  if (v0)
  {
    v7 = sub_100183368;
  }

  else
  {
    v8 = *(v3 + 816);

    v7 = sub_10018319C;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_10018319C()
{
  v1 = *(v0 + 800);
  v2 = *(v0 + 784);
  v3 = *(v0 + 776);
  v15 = *(v0 + 768);
  v17 = *(v0 + 760);
  v4 = *(v0 + 744);
  v5 = *(v0 + 736);
  v6 = *(v0 + 728);
  v16 = *(v0 + 720);
  v7 = (*(v0 + 840) + 32) & ~*(v0 + 840);
  sub_10018062C(v17, v16, v6);
  *(swift_allocObject() + 16) = xmmword_1001E5F70;
  *(v0 + 536) = v1;
  *(v0 + 512) = v5;

  static LogInterpolation.prefix(_:_:)();

  sub_100002C00((v0 + 512));
  LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  sub_100004810();
  v8._countAndFlagsBits = 0xD000000000000020;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v8);
  *(v0 + 568) = &type metadata for String;
  *(v0 + 544) = v16;
  *(v0 + 552) = v6;

  LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
  v9 = sub_100009FB0(v0 + 544, &qword_10026D350, &qword_1001E6050);
  sub_100003B48(v9);
  LogInterpolation.init(stringInterpolation:)();
  v10 = static os_log_type_t.default.getter();
  sub_1000036B0(v10);

  v11 = *(v0 + 704);

  v12 = *(v0 + 744);

  sub_100002D8C();

  return v13();
}

uint64_t sub_100183368()
{
  v1 = *(v0 + 816);
  v20 = *(v0 + 808);
  v21 = *(v0 + 832);
  v2 = *(v0 + 800);
  v3 = *(v0 + 784);
  v4 = *(v0 + 776);
  v5 = *(v0 + 768);
  v18 = *(v0 + 792);
  v19 = *(v0 + 760);
  v6 = *(v0 + 744);
  v7 = *(v0 + 736);
  v16 = *(v0 + 720);
  v17 = *(v0 + 728);
  v8 = (*(v0 + 840) + 32) & ~*(v0 + 840);

  *(swift_allocObject() + 16) = xmmword_1001E5F70;
  *(v0 + 472) = v2;
  *(v0 + 448) = v7;

  static LogInterpolation.prefix(_:_:)();

  sub_100002C00((v0 + 448));
  LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  sub_100004810();
  v9._countAndFlagsBits = 0xD00000000000001CLL;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v9);
  *(v0 + 504) = &type metadata for String;
  *(v0 + 480) = v16;
  *(v0 + 488) = v17;

  LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
  v10 = sub_100009FB0(v0 + 480, &qword_10026D350, &qword_1001E6050);
  sub_100003B48(v10);
  LogInterpolation.init(stringInterpolation:)();
  v11 = static os_log_type_t.error.getter();
  sub_1000036B0(v11);

  v12 = *(v0 + 704);

  v13 = *(v0 + 744);

  sub_100002D8C();

  return v14();
}

void sub_100183534(uint64_t a1, void *a2, uint64_t *a3)
{
  v26 = a1;
  v6 = sub_10007B9A4(&qword_10026C898, &qword_1001EBD20);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v23 - v9;
  v11 = a2[12];
  v12 = a2[13];
  sub_100003CA8(a2 + 9, v11);
  v13 = *a3;

  sub_10005DFA4(v14);
  v16 = v15;

  v24 = (*(v12 + 8))(v16, v11, v12);

  v25 = *(v7 + 16);
  v25(v10, a1, v6);
  v17 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v18 = swift_allocObject();
  v23 = *(v7 + 32);
  v23(v18 + v17, v10, v6);
  v31 = sub_100185294;
  v32 = v18;
  aBlock = _NSConcreteStackBlock;
  v28 = 1107296256;
  v29 = sub_1001475C4;
  v30 = &unk_100250D80;
  v19 = _Block_copy(&aBlock);

  v20 = v24;
  [v24 addSuccessBlock:v19];
  _Block_release(v19);
  v25(v10, v26, v6);
  v21 = swift_allocObject();
  v23(v21 + v17, v10, v6);
  v31 = sub_1001852A8;
  v32 = v21;
  aBlock = _NSConcreteStackBlock;
  v28 = 1107296256;
  v29 = sub_1000266E0;
  v30 = &unk_100250DD0;
  v22 = _Block_copy(&aBlock);

  [v20 addErrorBlock:v22];
  _Block_release(v22);
}

uint64_t sub_100183834(void *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = a1;
  sub_10007B9A4(a3, a4);
  return CheckedContinuation.resume(returning:)();
}

uint64_t sub_100183890()
{
  swift_errorRetain();
  sub_10007B9A4(&qword_10026C898, &qword_1001EBD20);
  return CheckedContinuation.resume(throwing:)();
}

uint64_t *sub_1001838E0()
{
  sub_100002C00(v0 + 2);
  v1 = v0[8];

  sub_100002C00(v0 + 9);
  sub_100002C00(v0 + 14);
  return v0;
}

uint64_t sub_100183918()
{
  sub_1001838E0();

  return swift_deallocClassInstance();
}

id sub_10018394C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v3[OBJC_IVAR____TtC14amsengagementd15DisplayCriteria_explicitContentSetting] = a1;
  *&v3[OBJC_IVAR____TtC14amsengagementd15DisplayCriteria_notificationSettings] = a2;
  *&v3[OBJC_IVAR____TtC14amsengagementd15DisplayCriteria_notificationSettingsForTopics] = a3;
  v5.receiver = v3;
  v5.super_class = type metadata accessor for DisplayCriteria();
  return objc_msgSendSuper2(&v5, "init");
}

void sub_1001839F4(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC14amsengagementd15DisplayCriteria_explicitContentSetting);
  v4 = String._bridgeToObjectiveC()();
  [a1 encodeInteger:v3 forKey:v4];

  v5 = *(v1 + OBJC_IVAR____TtC14amsengagementd15DisplayCriteria_notificationSettings);
  sub_100004810();
  v6 = String._bridgeToObjectiveC()();
  [a1 encodeObject:v5 forKey:v6];

  v7 = *(v1 + OBJC_IVAR____TtC14amsengagementd15DisplayCriteria_notificationSettingsForTopics);
  sub_100002BC0(0, &unk_10026FE88, UNNotificationSettings_ptr);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v9 = String._bridgeToObjectiveC()();
  [a1 encodeObject:isa forKey:v9];
}

id sub_100183BB4(void *a1)
{
  v3 = String._bridgeToObjectiveC()();
  v4 = [a1 decodeIntegerForKey:v3];

  sub_100004810();
  v5 = String._bridgeToObjectiveC()();
  v6 = [a1 decodeObjectForKey:v5];

  if (v6)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v15 = 0u;
    v16 = 0u;
  }

  v17 = v15;
  v18 = v16;
  if (!*(&v16 + 1))
  {

LABEL_15:
    sub_100009FB0(&v17, &qword_10026D350, &qword_1001E6050);
    goto LABEL_16;
  }

  sub_100002BC0(0, &unk_10026FE88, UNNotificationSettings_ptr);
  if ((sub_1000068B4() & 1) == 0)
  {

LABEL_16:
    type metadata accessor for DisplayCriteria();
    swift_deallocPartialClassInstance();
    return 0;
  }

  v7 = v14;
  v8 = String._bridgeToObjectiveC()();
  v9 = [a1 decodeObjectForKey:v8];

  if (v9)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v15 = 0u;
    v16 = 0u;
  }

  v17 = v15;
  v18 = v16;
  if (!*(&v16 + 1))
  {

    goto LABEL_15;
  }

  sub_10007B9A4(&qword_10026FE98, &unk_1001EF6C0);
  if ((sub_1000068B4() & 1) == 0)
  {

    goto LABEL_16;
  }

  v10 = v14;
  *&v1[OBJC_IVAR____TtC14amsengagementd15DisplayCriteria_explicitContentSetting] = v4;
  *&v1[OBJC_IVAR____TtC14amsengagementd15DisplayCriteria_notificationSettings] = v7;
  *&v1[OBJC_IVAR____TtC14amsengagementd15DisplayCriteria_notificationSettingsForTopics] = v10;
  v13.receiver = v1;
  v13.super_class = type metadata accessor for DisplayCriteria();
  v11 = objc_msgSendSuper2(&v13, "init");

  return v11;
}

uint64_t sub_100183E40(uint64_t a1)
{
  sub_1001854B8(a1, v10, &qword_10026D350, &qword_1001E6050);
  if (!v10[3])
  {
    sub_100009FB0(v10, &qword_10026D350, &qword_1001E6050);
    return 0;
  }

  type metadata accessor for DisplayCriteria();
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  if (*&v9[OBJC_IVAR____TtC14amsengagementd15DisplayCriteria_explicitContentSetting] != *(v1 + OBJC_IVAR____TtC14amsengagementd15DisplayCriteria_explicitContentSetting) || ![*&v9[OBJC_IVAR____TtC14amsengagementd15DisplayCriteria_notificationSettings] isEqual:*(v1 + OBJC_IVAR____TtC14amsengagementd15DisplayCriteria_notificationSettings)])
  {

    return 0;
  }

  v2 = *&v9[OBJC_IVAR____TtC14amsengagementd15DisplayCriteria_notificationSettingsForTopics];
  sub_100002BC0(0, &unk_10026FE88, UNNotificationSettings_ptr);
  v3.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v4 = *(v1 + OBJC_IVAR____TtC14amsengagementd15DisplayCriteria_notificationSettingsForTopics);
  v5.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v10[0] = 0;
  result = static Dictionary._forceBridgeFromObjectiveC(_:result:)();
  if (v10[0])
  {
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v8 = [(objc_class *)v3.super.isa isEqualToDictionary:isa];

    return v8;
  }

  __break(1u);
  return result;
}

uint64_t sub_10018409C(uint64_t a1)
{
  v1 = 0x6E61656C63;
  if (a1)
  {
    v1 = 0;
  }

  if (a1 == 1)
  {
    return 0x746963696C707865;
  }

  else
  {
    return v1;
  }
}

void sub_1001840DC()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC14amsengagementd15DisplayCriteria_notificationSettings);
  sub_100184384();
  v3 = *(v1 + OBJC_IVAR____TtC14amsengagementd15DisplayCriteria_explicitContentSetting);
  if (v3)
  {
    if (v3 != 1)
    {
      goto LABEL_6;
    }

    v4 = 0xE800000000000000;
    v5 = 0x746963696C707865;
  }

  else
  {
    v4 = 0xE500000000000000;
    v5 = 0x6E61656C63;
  }

  v35 = &type metadata for String;
  *&v34 = v5;
  *(&v34 + 1) = v4;
  sub_100002C4C(&v34, v33);
  swift_isUniquelyReferenced_nonNull_native();
  sub_10000DFC4();
LABEL_6:
  v6 = *(v1 + OBJC_IVAR____TtC14amsengagementd15DisplayCriteria_notificationSettingsForTopics);
  if (*(v6 + 16))
  {
    sub_10007B9A4(&unk_10026FE70, &unk_1001ED840);
    v7 = static _DictionaryStorage.copy(original:)();
    v8 = v7;
    v9 = 0;
    v10 = v6 + 64;
    v11 = 1 << *(v6 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v6 + 64);
    v14 = (v11 + 63) >> 6;
    v31 = v7 + 64;
    v32 = v7;
    if (v13)
    {
      while (1)
      {
        v15 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_16:
        v18 = v15 | (v9 << 6);
        v19 = *(v6 + 56);
        v20 = v6;
        v21 = (*(v6 + 48) + 16 * v18);
        v22 = *v21;
        v23 = v21[1];
        v24 = *(v19 + 8 * v18);

        v25 = v24;
        v26 = sub_100184384();

        v8 = v32;
        *(v31 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
        v27 = (v32[6] + 16 * v18);
        *v27 = v22;
        v27[1] = v23;
        *(v32[7] + 8 * v18) = v26;
        v28 = v32[2];
        v29 = __OFADD__(v28, 1);
        v30 = v28 + 1;
        if (v29)
        {
          break;
        }

        v32[2] = v30;
        v6 = v20;
        if (!v13)
        {
          goto LABEL_11;
        }
      }
    }

    else
    {
LABEL_11:
      v16 = v9;
      while (1)
      {
        v9 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          break;
        }

        if (v9 >= v14)
        {
          v35 = sub_10007B9A4(&qword_10026E460, &qword_1001EDBA0);
          *&v34 = v8;
          sub_100002C4C(&v34, v33);
          swift_isUniquelyReferenced_nonNull_native();
          sub_10000DFC4();
          return;
        }

        v17 = *(v10 + 8 * v9);
        ++v16;
        if (v17)
        {
          v15 = __clz(__rbit64(v17));
          v13 = (v17 - 1) & v17;
          goto LABEL_16;
        }
      }

      __break(1u);
    }

    __break(1u);
  }
}

uint64_t sub_100184384()
{
  sub_10007B9A4(&qword_10026FE80, &unk_1001E6270);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001EDBC0;
  strcpy((inited + 32), "alertSetting");
  *(inited + 45) = 0;
  *(inited + 46) = -5120;
  *(inited + 48) = UNNotificationSetting.description.getter([v0 alertSetting]);
  *(inited + 56) = v2;
  *(inited + 72) = &type metadata for String;
  *(inited + 80) = 0x7974537472656C61;
  *(inited + 88) = 0xEA0000000000656CLL;
  *(inited + 96) = UNAlertStyle.description.getter([v0 alertStyle]);
  *(inited + 104) = v3;
  sub_100004B44();
  *(inited + 120) = &type metadata for String;
  *(inited + 128) = 0xD000000000000013;
  *(inited + 136) = v4;
  *(inited + 144) = UNNotificationSetting.description.getter([v0 announcementSetting]);
  *(inited + 152) = v5;
  sub_100004B44();
  *(inited + 168) = &type metadata for String;
  *(inited + 176) = 0xD000000000000013;
  *(inited + 184) = v6;
  [v0 authorizationStatus];
  *(inited + 192) = UNAuthorizationStatus.description.getter();
  *(inited + 200) = v7;
  *(inited + 216) = &type metadata for String;
  strcpy((inited + 224), "badgeSetting");
  *(inited + 237) = 0;
  *(inited + 238) = -5120;
  *(inited + 240) = UNNotificationSetting.description.getter([v0 badgeSetting]);
  *(inited + 248) = v8;
  *(inited + 264) = &type metadata for String;
  strcpy((inited + 272), "carPlaySetting");
  *(inited + 287) = -18;
  *(inited + 288) = UNNotificationSetting.description.getter([v0 carPlaySetting]);
  *(inited + 296) = v9;
  sub_100004B44();
  *(inited + 312) = &type metadata for String;
  *(inited + 320) = 0xD000000000000014;
  *(inited + 328) = v10;
  *(inited + 336) = UNNotificationSetting.description.getter([v0 criticalAlertSetting]);
  *(inited + 344) = v11;
  sub_100004B44();
  *(inited + 360) = &type metadata for String;
  *(inited + 368) = 0xD000000000000015;
  *(inited + 376) = v12;
  *(inited + 384) = UNNotificationSetting.description.getter([v0 directMessagesSetting]);
  *(inited + 392) = v13;
  *(inited + 408) = &type metadata for String;
  *(inited + 416) = 0x676E6970756F7267;
  *(inited + 424) = 0xEF676E6974746553;
  *(inited + 432) = UNNotificationGroupingSetting.description.getter([v0 groupingSetting]);
  *(inited + 440) = v14;
  sub_100004B44();
  *(inited + 456) = &type metadata for String;
  *(inited + 464) = 0xD000000000000011;
  *(inited + 472) = v15;
  *(inited + 480) = UNNotificationSetting.description.getter([v0 lockScreenSetting]);
  *(inited + 488) = v16;
  sub_100004B44();
  *(inited + 504) = &type metadata for String;
  *(inited + 512) = 0xD000000000000019;
  *(inited + 520) = v17;
  v18 = UNNotificationSetting.description.getter([v0 notificationCenterSetting]);
  *(inited + 552) = &type metadata for String;
  *(inited + 528) = v18;
  *(inited + 536) = v19;
  sub_100004B44();
  *(inited + 560) = 0xD00000000000001FLL;
  *(inited + 568) = v20;
  v21 = [v0 providesAppNotificationSettings];
  v22 = 28526;
  if (v21)
  {
    v22 = 7562617;
  }

  v23 = 0xE200000000000000;
  if (v21)
  {
    v23 = 0xE300000000000000;
  }

  *(inited + 600) = &type metadata for String;
  *(inited + 576) = v22;
  *(inited + 584) = v23;
  sub_100004B44();
  *(inited + 608) = 0xD000000000000018;
  *(inited + 616) = v24;
  v25 = UNNotificationSetting.description.getter([v0 scheduledDeliverySetting]);
  *(inited + 648) = &type metadata for String;
  *(inited + 624) = v25;
  *(inited + 632) = v26;
  sub_100004B44();
  *(inited + 656) = 0xD000000000000013;
  *(inited + 664) = v27;
  v28 = UNShowPreviewsSetting.description.getter([v0 showPreviewsSetting]);
  *(inited + 696) = &type metadata for String;
  *(inited + 672) = v28;
  *(inited + 680) = v29;
  strcpy((inited + 704), "soundSetting");
  *(inited + 717) = 0;
  *(inited + 718) = -5120;
  v30 = UNNotificationSetting.description.getter([v0 soundSetting]);
  *(inited + 744) = &type metadata for String;
  *(inited + 720) = v30;
  *(inited + 728) = v31;
  sub_100004B44();
  *(inited + 752) = 0xD000000000000014;
  *(inited + 760) = v32;
  v33 = UNNotificationSetting.description.getter([v0 timeSensitiveSetting]);
  *(inited + 792) = &type metadata for String;
  *(inited + 768) = v33;
  *(inited + 776) = v34;
  return Dictionary.init(dictionaryLiteral:)();
}

id sub_1001847C0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DisplayCriteria();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_100184864()
{
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v2 = [v0 enqueueData:isa];

  return v2;
}

uint64_t UNAlertStyle.description.getter(uint64_t a1)
{
  switch(a1)
  {
    case 0:
      return 1701736302;
    case 2:
      return 0x7472656C61;
    case 1:
      return 0x72656E6E6162;
  }

  result = sub_100003444();
  __break(1u);
  return result;
}

uint64_t UNAuthorizationStatus.description.getter()
{
  result = sub_100003444();
  __break(1u);
  return result;
}

uint64_t UNNotificationGroupingSetting.description.getter(uint64_t a1)
{
  switch(a1)
  {
    case 0:
      return 0x746C7561666564;
    case 1:
      return 0x656372756F73;
    case 2:
      return 6710895;
  }

  result = sub_100003444();
  __break(1u);
  return result;
}

uint64_t UNNotificationSetting.description.getter(uint64_t a1)
{
  switch(a1)
  {
    case 0:
      return 0x6F70707553746F6ELL;
    case 1:
      return 0x64656C6261736964;
    case 2:
      return 0x64656C62616E65;
  }

  result = sub_100003444();
  __break(1u);
  return result;
}

uint64_t UNShowPreviewsSetting.description.getter(uint64_t a1)
{
  switch(a1)
  {
    case 0:
      return 0x737961776C61;
    case 1:
      sub_100004810();
      return 0xD000000000000011;
    case 2:
      return 0x726576656ELL;
    default:
      result = sub_100003444();
      __break(1u);
      break;
  }

  return result;
}

uint64_t sub_1001851A4(int *a1)
{
  v5 = (a1 + *a1);
  v2 = a1[1];
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100009CCC;

  return v5();
}

uint64_t sub_1001852D0(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v6 = sub_10007B9A4(a2, a3);
  sub_100003D10(v6);
  v8 = v4 + ((*(v7 + 80) + 16) & ~*(v7 + 80));

  return a4(a1, v8);
}

uint64_t sub_100185354()
{
  sub_1000061B4();
  v2 = v1;
  v4 = v3;
  v6 = *(v0 + 16);
  v5 = *(v0 + 24);
  v7 = swift_task_alloc();
  v8 = sub_100004ABC(v7);
  *v8 = v9;
  v8[1] = sub_100009BE8;

  return sub_10018221C(v4, v2, v6);
}

uint64_t sub_1001853FC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_100009CC8;

  return sub_10018264C();
}

uint64_t sub_1001854B8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = sub_10007B9A4(a3, a4);
  sub_1000047A4(v5);
  v7 = *(v6 + 16);
  v8 = sub_100005B9C();
  v9(v8);
  return a2;
}

uint64_t sub_100185518()
{
  sub_1000061B4();
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100009CC8;
  v5 = sub_100005B9C();

  return v6(v5);
}

uint64_t sub_1001855BC()
{
  sub_100004768();
  v1 = *(v0 + 16);
  v2 = swift_task_alloc();
  v3 = sub_100004ABC(v2);
  *v3 = v4;
  v5 = sub_100011B30(v3);

  return sub_100181904(v5, v6);
}

uint64_t sub_100185644()
{
  sub_100004768();
  v1 = *(v0 + 16);
  v2 = swift_task_alloc();
  v3 = sub_100004ABC(v2);
  *v3 = v4;
  v5 = sub_100011B30(v3);

  return sub_100181BC8(v5, v6);
}

uint64_t sub_100185718(void *a1, uint64_t *a2, uint64_t *a3)
{
  v7 = sub_10007B9A4(a2, a3);
  sub_100003D10(v7);
  return sub_100183834(a1, v3 + ((*(v8 + 80) + 16) & ~*(v8 + 80)), a2, a3);
}

uint64_t sub_100185794(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1001857F0()
{
  if ([v0 code] == 4 || objc_msgSend(v0, "code") == 260)
  {
    v1 = [v0 domain];
    v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v4 = v3;

    if (v2 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v4 == v5)
    {
      v7 = 1;
    }

    else
    {
      v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t sub_1001858CC()
{
  v1 = [v0 userInfo];
  v2 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  sub_100052D94(v2, &v5);

  if (v6)
  {
    if (swift_dynamicCast())
    {
      return v4;
    }
  }

  else
  {
    sub_100002C5C(&v5);
  }

  return 0;
}

uint64_t sub_1001859B4(uint64_t a1)
{
  v2 = sub_10007B9A4(&unk_10026FEE0, &unk_1001E67C0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = v31 - v4;
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = AMSLogKey();
  if (v11)
  {
    v12 = v11;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v31[1] = 7107189;
  v31[2] = 0xE300000000000000;
  AnyHashable.init<A>(_:)();
  sub_10000E0C8(v32, a1, &v33);
  sub_10000E1E8(v32);
  if (!v34)
  {
    sub_10000A064(&v33, &qword_10026D350, &qword_1001E6050);
    goto LABEL_8;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v16 = type metadata accessor for LogInterpolation();
    sub_100002CFC(v16);
    v18 = *(v17 + 72);
    *(sub_10000346C() + 16) = xmmword_1001E5F70;
    type metadata accessor for OpenURLAction();
    sub_10000BB00();

    goto LABEL_9;
  }

  URL.init(string:)();

  if (sub_100009F34(v5, 1, v6) == 1)
  {
    sub_10000A064(v5, &unk_10026FEE0, &unk_1001E67C0);
    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v13 = type metadata accessor for LogInterpolation();
    sub_100002CFC(v13);
    v15 = *(v14 + 72);
    *(sub_10000346C() + 16) = xmmword_1001E5F70;
    type metadata accessor for OpenURLAction();
    sub_10000BB00();

LABEL_9:
    LogInterpolation.init(stringLiteral:)();
    if (qword_1002686B0 != -1)
    {
      sub_100002D44();
    }

    v19 = static os_log_type_t.error.getter();
    sub_1000036B0(v19);
  }

  (*(v7 + 32))(v10, v5, v6);
  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v21 = type metadata accessor for LogInterpolation();
  sub_100002CFC(v21);
  v23 = *(v22 + 72);
  v25 = (*(v24 + 80) + 32) & ~*(v24 + 80);
  *(swift_allocObject() + 16) = xmmword_1001E5F70;
  type metadata accessor for OpenURLAction();
  sub_10000BB00();

  LogInterpolation.init(stringLiteral:)();
  if (qword_1002686B0 != -1)
  {
    sub_100002D44();
  }

  v26 = static os_log_type_t.default.getter();
  sub_1000036B0(v26);

  v27 = objc_opt_self();
  URL._bridgeToObjectiveC()(v28);
  v30 = v29;
  [v27 openStandardURL:v29];

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_100185EF0(uint64_t a1)
{
  v3 = type metadata accessor for LogInterpolation.StringInterpolation();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  type metadata accessor for AppDatabase();
  sub_10001D804(a1);
  sub_1000A0CA0();
  v16 = sub_1000A6278();

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v5 = *(type metadata accessor for LogInterpolation() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v17 = *(v5 + 72);
  *(swift_allocObject() + 16) = xmmword_1001E5F70;
  v19 = &type metadata for PersistedEventCoordinator;
  v18[0] = swift_allocObject();
  sub_1000263DC(v1, v18[0] + 16);
  v7 = AMSLogKey();
  if (v7)
  {
    v8 = v7;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(v18);
  LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v9._countAndFlagsBits = 0x6E6979616C706552;
  v9._object = 0xEA00000000002067;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v9);
  v10 = *(v16 + 16);
  v19 = &type metadata for Int;
  v18[0] = v10;
  LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
  sub_10000A064(v18, &qword_10026D350, &qword_1001E6050);
  v11._object = 0x8000000100200CF0;
  v11._countAndFlagsBits = 0xD000000000000011;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v11);
  LogInterpolation.init(stringInterpolation:)();
  if (qword_1002686B0 != -1)
  {
    sub_100002D44();
  }

  v12 = static os_log_type_t.default.getter();
  sub_1000036B0(v12);

  __chkstk_darwin(v13);
  *(&v15 - 16) = a1;
  *(&v15 - 1) = v1;
  sub_10009A57C();
}

uint64_t sub_100186438(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v31 = a3;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v33 = *(v5 - 8);
  v6 = *(v33 + 64);
  __chkstk_darwin(v5);
  v8 = v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v32 = *(v9 - 8);
  v10 = *(v32 + 64);
  __chkstk_darwin(v9);
  v12 = v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a1 + 16);
  v13 = *(a1 + 24);
  v15 = objc_opt_self();
  isa = Data._bridgeToObjectiveC()().super.isa;
  aBlock[0] = 0;
  v17 = [v15 JSONObjectWithData:isa options:0 error:aBlock];

  if (v17)
  {
    v18 = aBlock[0];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_10007B9A4(&qword_10026AE50, &unk_1001E83A0);
    result = swift_dynamicCast();
    if (result)
    {
      v30[1] = v3;
      v20 = *&v36[0];
      v21 = [objc_allocWithZone(AMSEngagementEnqueueRequest) init];
      sub_100002BC0(0, &qword_10026B508, AMSEngagementDestination_ptr);
      v23 = sub_100092378();
      [v23 setComponents:{objc_msgSend(v23, "components") | 4}];
      sub_10007B9A4(&qword_10026F910, &qword_1001EBE40);
      v24 = swift_allocObject();
      *(v24 + 16) = xmmword_1001E8AB0;
      *(v24 + 32) = v23;
      v30[0] = v23;
      sub_1000F43B4(v24, v21);
      sub_10007B9A4(&qword_100269FC0, &unk_1001E7520);
      v25 = swift_allocObject();
      *(v25 + 16) = xmmword_1001E61B0;
      *(v25 + 32) = v20;

      sub_1000F4334(v25, v21);
      if (qword_1002687F0 != -1)
      {
        swift_once();
      }

      sub_1000263DC(v31, v36);
      v26 = swift_allocObject();
      v27 = v36[1];
      *(v26 + 16) = v36[0];
      *(v26 + 32) = v27;
      *(v26 + 48) = v37;
      *(v26 + 56) = v20;
      *(v26 + 64) = v21;
      aBlock[4] = sub_100187338;
      aBlock[5] = v26;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100005E50;
      aBlock[3] = &unk_100250FC8;
      v28 = _Block_copy(aBlock);
      v29 = v21;
      static DispatchQoS.unspecified.getter();
      v34 = _swiftEmptyArrayStorage;
      sub_10004DE28();
      sub_10007B9A4(&unk_100270490, &unk_1001E74F0);
      sub_10004DDC4();
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v28);

      (*(v33 + 8))(v8, v5);
      (*(v32 + 8))(v12, v9);
    }
  }

  else
  {
    v22 = aBlock[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return result;
}

uint64_t sub_1001869D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for LogInterpolation.StringInterpolation();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v8 = *(type metadata accessor for LogInterpolation() - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  *(swift_allocObject() + 16) = xmmword_1001E5F70;
  v20 = &type metadata for PersistedEventCoordinator;
  v19[0] = swift_allocObject();
  sub_1000263DC(a1, v19[0] + 16);
  v11 = AMSLogKey();
  if (v11)
  {
    v12 = v11;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(v19);
  LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v13._object = 0x8000000100200D10;
  v13._countAndFlagsBits = 0xD000000000000022;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v13);
  AnyHashable.init<A>(_:)();
  sub_10000E0C8(v19, a2, &v21);
  sub_10000E1E8(v19);
  if (v22)
  {
    if (swift_dynamicCast())
    {
      v15 = 0x707954746E657665;
      v14 = 0xE900000000000065;
      v20 = &type metadata for String;
      goto LABEL_8;
    }
  }

  else
  {
    sub_10000A064(&v21, &qword_10026D350, &qword_1001E6050);
  }

  v20 = &type metadata for String;
  v14 = 0xE700000000000000;
  v15 = 0x6E776F6E6B6E75;
LABEL_8:
  v19[0] = v15;
  v19[1] = v14;
  LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
  sub_10000A064(v19, &qword_10026D350, &qword_1001E6050);
  v16._countAndFlagsBits = 0;
  v16._object = 0xE000000000000000;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v16);
  LogInterpolation.init(stringInterpolation:)();
  if (qword_1002686B0 != -1)
  {
    swift_once();
  }

  v17 = static os_log_type_t.default.getter();
  sub_1000036B0(v17);

  if (qword_100268670 != -1)
  {
    swift_once();
  }

  sub_100004454(a3, 1);
}

uint64_t sub_100186D40(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for LogInterpolation.StringInterpolation();
  v6 = *(*(v5 - 8) + 64);
  result = __chkstk_darwin(v5 - 8);
  v8 = *(a2 + 16);
  if (v8)
  {
    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v9 = *(type metadata accessor for LogInterpolation() - 8);
    v20 = ((*(v9 + 80) + 32) & ~*(v9 + 80)) + 2 * *(v9 + 72);
    *(swift_allocObject() + 16) = xmmword_1001E5F70;
    v23 = &type metadata for PersistedEventCoordinator;
    v22[0] = swift_allocObject();
    sub_1000263DC(v2, v22[0] + 16);
    v10 = AMSLogKey();
    if (v10)
    {
      v11 = v10;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_100002C00(v22);
    LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v12._countAndFlagsBits = 0x676E69766F6D6552;
    v12._object = 0xE900000000000020;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v12);
    v23 = &type metadata for Int;
    v22[0] = v8;
    LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
    sub_10000A064(v22, &qword_10026D350, &qword_1001E6050);
    v13._object = 0x8000000100200F40;
    v13._countAndFlagsBits = 0xD000000000000029;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v13);
    LogInterpolation.init(stringInterpolation:)();
    if (qword_1002686B0 != -1)
    {
      swift_once();
    }

    v14 = static os_log_type_t.default.getter();
    sub_1000036B0(v14);

    type metadata accessor for AppDatabase();
    sub_10001D804(*(a1 + 1));
    v15 = (a2 + 32);
    do
    {
      v16 = *v15;
      swift_bridgeObjectRetain_n();
      sub_1000A5940(v22);
      sub_1000A0CA0();
      sub_1000A6594(v22);

      sub_10009D054(v22);

      ++v15;
      --v8;
    }

    while (v8);
    *(swift_allocObject() + 16) = xmmword_1001E5F70;
    v21[3] = &type metadata for PersistedEventCoordinator;
    v21[0] = swift_allocObject();
    sub_1000263DC(v2, v21[0] + 16);
    v17 = AMSLogKey();
    if (v17)
    {
      v18 = v17;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_100002C00(v21);
    LogInterpolation.init(stringLiteral:)();
    v19 = static os_log_type_t.default.getter();
    sub_1000036B0(v19);
  }

  return result;
}

uint64_t sub_100187354@<X0>(uint64_t *a1@<X8>)
{
  result = Data.init(contentsOf:options:)();
  if (!v1)
  {
    *a1 = result;
    a1[1] = v4;
  }

  return result;
}

uint64_t sub_100187380@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10007B9A4(&qword_100270028, &unk_1001EF7B0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v16 - v11;
  (*(v5 + 16))(v8, a1, v4);
  JetpackBundle.init(bundleURL:)();
  v13 = type metadata accessor for JetpackBundle();
  if (sub_100009F34(v12, 1, v13) != 1)
  {
    return (*(*(v13 - 8) + 32))(a2, v12, v13);
  }

  sub_100187544(v12);
  sub_10013C144();
  swift_allocError();
  *v14 = 0;
  return swift_willThrow();
}

uint64_t sub_100187544(uint64_t a1)
{
  v2 = sub_10007B9A4(&qword_100270028, &unk_1001EF7B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_1001875AC()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = String._bridgeToObjectiveC()();

  v2 = [v0 initWithTopic:v1];

  return v2;
}

id sub_100187620()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = *(v0 + 16);
  }

  else
  {
    v3 = v0;
    sub_100002BC0(0, &qword_10026CFE0, AMSBag_ptr);
    v4 = sub_1000078B4();
    v5 = objc_allocWithZone(AMSMetrics);
    v6 = String._bridgeToObjectiveC()();
    v7 = [v5 initWithContainerID:v6 bag:v4];

    v8 = *(v3 + 16);
    *(v3 + 16) = v7;
    v2 = v7;

    v1 = 0;
  }

  v9 = v1;
  return v2;
}

id sub_1001876EC()
{
  v0 = String._bridgeToObjectiveC()();
  sub_100002BC0(0, &qword_10026CFE0, AMSBag_ptr);
  v1 = sub_1000078B4();
  v2 = [v1 BOOLForKey:v0];

  v3 = [v2 valuePromise];
  return v3;
}

void sub_100187798()
{
  v1 = sub_1001876EC();
  v8 = sub_10018A298;
  v9 = v0;
  v4 = _NSConcreteStackBlock;
  v5 = 1107296256;
  v6 = sub_1000266E0;
  v7 = &unk_100251108;
  v2 = _Block_copy(&v4);

  [v1 addErrorBlock:v2];
  _Block_release(v2);
  v8 = sub_10018A244;
  v9 = v0;
  v4 = _NSConcreteStackBlock;
  v5 = 1107296256;
  v6 = sub_1000EA728;
  v7 = &unk_100251130;
  v3 = _Block_copy(&v4);

  [v1 addSuccessBlock:v3];
  _Block_release(v3);
}

void sub_1001878F8(void *a1, void **a2)
{
  if ([a1 BOOLValue])
  {
    v3 = [objc_allocWithZone(AMSSubscriptionEntitlementsTask) initWithMediaType:6];
    v4 = [v3 performExternalLookup];

    v17 = sub_10018A24C;
    v18 = a2;
    v13 = _NSConcreteStackBlock;
    v14 = 1107296256;
    v15 = sub_1000266E0;
    v16 = &unk_100251158;
    v5 = _Block_copy(&v13);

    [v4 addErrorBlock:v5];
    _Block_release(v5);
    v17 = sub_10018A268;
    v18 = a2;
    v13 = _NSConcreteStackBlock;
    v14 = 1107296256;
    v15 = sub_10008E0EC;
    v16 = &unk_100251180;
    v6 = _Block_copy(&v13);

    [v4 addSuccessBlock:v6];
    _Block_release(v6);
  }

  else
  {
    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v7 = *(type metadata accessor for LogInterpolation() - 8);
    v8 = *(v7 + 72);
    v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    *(swift_allocObject() + 16) = xmmword_1001E5F70;
    v16 = type metadata accessor for PodcastsEventManager();
    v13 = a2;

    v10 = AMSLogKey();
    if (v10)
    {
      v11 = v10;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_100002C00(&v13);
    LogInterpolation.init(stringLiteral:)();
    if (qword_1002686B0 != -1)
    {
      swift_once();
    }

    v12 = static os_log_type_t.default.getter();
    sub_1000036B0(v12);
  }
}

uint64_t sub_100187C08(uint64_t a1, uint64_t a2)
{
  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v3 = *(type metadata accessor for LogInterpolation() - 8);
  v4 = *(v3 + 72);
  v5 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  *(swift_allocObject() + 16) = xmmword_1001E5F60;
  v13 = type metadata accessor for PodcastsEventManager();
  v12[0] = a2;

  v6 = AMSLogKey();
  if (v6)
  {
    v7 = v6;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(v12);
  LogInterpolation.init(stringLiteral:)();
  swift_getErrorValue();
  v13 = v11;
  v8 = sub_100017E64(v12);
  (*(*(v11 - 8) + 16))(v8);
  static LogInterpolation.safe(_:)();
  sub_100002C5C(v12);
  if (qword_1002686B0 != -1)
  {
    swift_once();
  }

  v9 = static os_log_type_t.error.getter();
  sub_1000036B0(v9);
}

void sub_100187E1C(void *a1)
{
  v2 = [a1 entitlements];
  sub_100002BC0(0, &qword_100270118, AMSSubscriptionEntitlement_ptr);
  v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v4 = *(v3 + 16);

  if (v4)
  {
    v5 = sub_10018901C();
    v6 = String._bridgeToObjectiveC()();
    [v5 setEventType:v6];

    v7 = [a1 entitlements];
    v8 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v9 = *(v8 + 16);
    if (v9)
    {
      v33 = v5;
      sub_10009B7C0(0, v9, 0);
      v11 = sub_10018BEAC(v8);
      v13 = v12;
      v14 = 0;
      v15 = v8 + 64;
      v34 = v12;
      v35 = v9;
      while ((v11 & 0x8000000000000000) == 0 && v11 < 1 << *(v8 + 32))
      {
        v16 = v11 >> 6;
        if ((*(v15 + 8 * (v11 >> 6)) & (1 << v11)) == 0)
        {
          goto LABEL_28;
        }

        if (*(v8 + 36) != v13)
        {
          goto LABEL_29;
        }

        v36 = v10;
        v17 = *(*(v8 + 48) + 16 * v11 + 8);
        v18 = *(*(v8 + 56) + 8 * v11);

        v19 = v18;
        v20 = sub_100189588(v19);

        v22 = _swiftEmptyArrayStorage[2];
        v21 = _swiftEmptyArrayStorage[3];
        if (v22 >= v21 >> 1)
        {
          sub_10009B7C0((v21 > 1), v22 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = v22 + 1;
        _swiftEmptyArrayStorage[v22 + 4] = v20;
        v23 = 1 << *(v8 + 32);
        if (v11 >= v23)
        {
          goto LABEL_30;
        }

        v15 = v8 + 64;
        v24 = *(v8 + 64 + 8 * v16);
        if ((v24 & (1 << v11)) == 0)
        {
          goto LABEL_31;
        }

        if (*(v8 + 36) != v13)
        {
          goto LABEL_32;
        }

        v25 = v24 & (-2 << (v11 & 0x3F));
        if (v25)
        {
          v23 = __clz(__rbit64(v25)) | v11 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v26 = v16 << 6;
          v27 = v16 + 1;
          v28 = (v8 + 72 + 8 * v16);
          while (v27 < (v23 + 63) >> 6)
          {
            v30 = *v28++;
            v29 = v30;
            v26 += 64;
            ++v27;
            if (v30)
            {
              sub_100083998(v11, v13, v36 & 1);
              v23 = __clz(__rbit64(v29)) + v26;
              goto LABEL_20;
            }
          }

          sub_100083998(v11, v13, v36 & 1);
        }

LABEL_20:
        v10 = 0;
        ++v14;
        v11 = v23;
        v13 = v34;
        if (v14 == v35)
        {

          v5 = v33;
          goto LABEL_24;
        }
      }

      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
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

LABEL_24:
      sub_10007B9A4(&unk_10026FEA0, &unk_1001E7540);
      isa = Array._bridgeToObjectiveC()().super.isa;

      v32 = String._bridgeToObjectiveC()();
      [v5 setProperty:isa forBodyKey:v32];

      v37 = sub_100187620();
      [v37 enqueueEvent:v5];
    }
  }
}

void sub_100188220(uint64_t a1)
{
  strcpy(v16, "buyParameters");
  HIWORD(v16[1]) = -4864;
  AnyHashable.init<A>(_:)();
  sub_10000E0C8(&v10, a1, &v17);
  sub_10000E1E8(&v10);
  if (!v18)
  {
    sub_100002C5C(&v17);
    return;
  }

  sub_10007B9A4(&qword_10026AE50, &unk_1001E83A0);
  if ((sub_100012DAC() & 1) == 0)
  {
    return;
  }

  v3 = v16[0];
  v16[0] = 0xD000000000000012;
  v16[1] = 0x8000000100201140;
  AnyHashable.init<A>(_:)();
  sub_10000E0C8(&v10, v3, &v17);
  sub_10000E1E8(&v10);
  if (!v18)
  {
    sub_100002C5C(&v17);
    goto LABEL_13;
  }

  if ((sub_100012DAC() & 1) == 0)
  {
LABEL_13:
    v6 = sub_1001876EC();
    v14 = sub_10018A230;
    v15 = v1;
    v10 = _NSConcreteStackBlock;
    v11 = 1107296256;
    v12 = sub_1000266E0;
    v13 = &unk_100251090;
    v7 = _Block_copy(&v10);

    [v6 addErrorBlock:v7];
    _Block_release(v7);
    v8 = swift_allocObject();
    v8[2] = v1;
    v8[3] = a1;
    v8[4] = v3;
    v14 = sub_10018A238;
    v15 = v8;
    v10 = _NSConcreteStackBlock;
    v11 = 1107296256;
    v12 = sub_1000EA728;
    v13 = &unk_1002510E0;
    v9 = _Block_copy(&v10);

    [v6 addSuccessBlock:v9];
    _Block_release(v9);

    return;
  }

  if (v16[0] != 1702195828 || v16[1] != 0xE400000000000000)
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v5)
    {
      goto LABEL_15;
    }

    goto LABEL_13;
  }

LABEL_15:
}

uint64_t sub_100188518(uint64_t a1, uint64_t a2)
{
  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v3 = *(type metadata accessor for LogInterpolation() - 8);
  v4 = *(v3 + 72);
  v5 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  *(swift_allocObject() + 16) = xmmword_1001E5F60;
  v13 = type metadata accessor for PodcastsEventManager();
  v12[0] = a2;

  v6 = AMSLogKey();
  if (v6)
  {
    v7 = v6;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(v12);
  LogInterpolation.init(stringLiteral:)();
  swift_getErrorValue();
  v13 = v11;
  v8 = sub_100017E64(v12);
  (*(*(v11 - 8) + 16))(v8);
  static LogInterpolation.safe(_:)();
  sub_100002C5C(v12);
  if (qword_1002686B0 != -1)
  {
    swift_once();
  }

  v9 = static os_log_type_t.error.getter();
  sub_1000036B0(v9);
}

uint64_t sub_10018872C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ([a1 BOOLValue])
  {
    v45 = a2;
    v7 = sub_10018901C();
    v8 = String._bridgeToObjectiveC()();
    [v7 setEventType:v8];

    strcpy(&v50, "eventVersion");
    BYTE13(v50) = 0;
    HIWORD(v50) = -5120;
    AnyHashable.init<A>(_:)();
    sub_10000E0C8(&v52, a3, &v50);
    sub_10000E1E8(&v52);
    v9 = *(&v51 + 1);
    if (*(&v51 + 1))
    {
      v10 = sub_100003CA8(&v50, *(&v51 + 1));
      v11 = *(v9 - 8);
      v12 = *(v11 + 64);
      __chkstk_darwin(v10);
      v14 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v11 + 16))(v14);
      v15 = _bridgeAnythingToObjectiveC<A>(_:)();
      (*(v11 + 8))(v14, v9);
      sub_100002C00(&v50);
    }

    else
    {
      v15 = 0;
    }

    v21 = String._bridgeToObjectiveC()();
    [v7 setProperty:v15 forBodyKey:v21];
    swift_unknownObjectRelease();

    sub_10007B9A4(&qword_100270110, &qword_1001EF7E8);
    v22 = swift_allocObject();
    v44 = xmmword_1001E61B0;
    *(v22 + 16) = xmmword_1001E61B0;
    strcpy(&v50, "salableAdamId");
    HIWORD(v50) = -4864;
    v23 = &type metadata for String;
    AnyHashable.init<A>(_:)();
    sub_10000E0C8(&v52, a4, (v22 + 32));
    sub_10000E1E8(&v52);
    sub_10007B9A4(&qword_10026D350, &qword_1001E6050);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v25 = String._bridgeToObjectiveC()();
    [v7 setProperty:isa forBodyKey:v25];

    v26 = swift_allocObject();
    *(v26 + 16) = v44;
    *&v50 = 0x54746375646F7270;
    *(&v50 + 1) = 0xEB00000000657079;
    AnyHashable.init<A>(_:)();
    sub_10000E0C8(&v52, a4, (v26 + 32));
    sub_10000E1E8(&v52);
    v27 = Array._bridgeToObjectiveC()().super.isa;

    v28 = String._bridgeToObjectiveC()();
    [v7 setProperty:v27 forBodyKey:v28];

    v50 = 0u;
    v51 = 0u;
    v46 = 0xD000000000000012;
    v47 = 0x80000001002011B0;
    AnyHashable.init<A>(_:)();
    sub_10000E0C8(&v52, a3, &v48);
    sub_10000E1E8(&v52);
    if (*(&v49 + 1))
    {
      sub_10007B9A4(&qword_10026AE50, &unk_1001E83A0);
      if ((swift_dynamicCast() & 1) == 0)
      {
LABEL_14:
        sub_100003C38(&v50, &v48);
        if (*(&v49 + 1))
        {
          sub_100002C4C(&v48, &v52);
          v23 = v53;
        }

        else
        {
          v53 = &type metadata for String;
          *&v52 = 0x6572756C696166;
          *(&v52 + 1) = 0xE700000000000000;
        }

        sub_100003CA8(&v52, v23);
        v40 = _bridgeAnythingToObjectiveC<A>(_:)();
        sub_100002C00(&v52);
        v41 = String._bridgeToObjectiveC()();
        [v7 setProperty:v40 forBodyKey:v41];
        swift_unknownObjectRelease();

        v42 = sub_100187620();
        [v42 enqueueEvent:v7];

        return sub_100002C5C(&v50);
      }

      v29 = v46;
      strcpy(&v48, "jingleDocType");
      HIWORD(v48) = -4864;
      AnyHashable.init<A>(_:)();
      sub_10000E0C8(&v52, v29, &v48);
      sub_10000E1E8(&v52);
      sub_100002C5C(&v50);
      v50 = v48;
      v51 = v49;
      v46 = 0x7363697274656DLL;
      v47 = 0xE700000000000000;
      AnyHashable.init<A>(_:)();
      sub_10000E0C8(&v52, v29, &v48);

      sub_10000E1E8(&v52);
      if (*(&v49 + 1))
      {
        if (swift_dynamicCast())
        {
          v30 = v46;
          *&v48 = 0x7365707954706173;
          *(&v48 + 1) = 0xE800000000000000;
          AnyHashable.init<A>(_:)();
          sub_10000E0C8(&v52, v30, &v48);

          sub_10000E1E8(&v52);
          v31 = *(&v49 + 1);
          if (*(&v49 + 1))
          {
            v32 = sub_100003CA8(&v48, *(&v49 + 1));
            v33 = *(v31 - 8);
            v34 = *(v33 + 64);
            __chkstk_darwin(v32);
            v36 = &v44 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
            (*(v33 + 16))(v36);
            v37 = _bridgeAnythingToObjectiveC<A>(_:)();
            (*(v33 + 8))(v36, v31);
            sub_100002C00(&v48);
          }

          else
          {
            v37 = 0;
          }

          v43 = String._bridgeToObjectiveC()();
          [v7 setProperty:v37 forBodyKey:v43];
          swift_unknownObjectRelease();
        }

        goto LABEL_14;
      }
    }

    sub_100002C5C(&v48);
    goto LABEL_14;
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v16 = *(type metadata accessor for LogInterpolation() - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  *(swift_allocObject() + 16) = xmmword_1001E5F70;
  v53 = type metadata accessor for PodcastsEventManager();
  *&v52 = a2;

  v19 = AMSLogKey();
  if (v19)
  {
    v20 = v19;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(&v52);
  LogInterpolation.init(stringLiteral:)();
  if (qword_1002686B0 != -1)
  {
    swift_once();
  }

  v38 = static os_log_type_t.default.getter();
  sub_1000036B0(v38);
}

id sub_10018901C()
{
  v0 = [objc_opt_self() ams_sharedAccountStore];
  v1 = [v0 ams_activeiTunesAccount];

  v2 = [objc_allocWithZone(AMSMetricsIdentifierStore) init];
  [v2 setAccount:v1];
  sub_100002BC0(0, &qword_10026D648, AMSProcessInfo_ptr);
  sub_100004D74();
  v3 = sub_1001AF38C();
  [v2 setClientInfo:v3];

  sub_100002BC0(0, &qword_10026DEB8, AMSMetricsEvent_ptr);
  v4 = sub_1001875AC();
  sub_100004D74();
  v5 = String._bridgeToObjectiveC()();
  [v4 setApp:v5];

  sub_100002BC0(0, &qword_100271750, AMSMetricsIdentifierKey_ptr);
  v6 = sub_1001AF320(0x6449746E65696C63, 0xE800000000000000, 0);
  v7 = [v2 identifierForKey:v6];

  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  sub_10018A1CC(v8, v10, v4);
  [v4 setAnonymous:1];
  v11 = objc_opt_self();
  v12 = [v11 productType];
  if (!v12)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = String._bridgeToObjectiveC()();
  }

  v13 = String._bridgeToObjectiveC()();
  v14 = sub_100007710();
  [v14 v15];

  isa = Bool._bridgeToObjectiveC()().super.super.isa;
  v17 = String._bridgeToObjectiveC()();
  sub_1000055B8(v17);

  v18 = [v11 operatingSystem];
  if (!v18)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v19;
    v18 = String._bridgeToObjectiveC()();
  }

  v20 = String._bridgeToObjectiveC()();
  sub_1000055B8(v20);

  v21 = [v11 buildVersion];
  if (!v21)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = String._bridgeToObjectiveC()();
  }

  v22 = String._bridgeToObjectiveC()();
  v23 = sub_100007710();
  [v23 v24];

  if (v1 && (v25 = sub_10018A15C(v1), v26))
  {
    v43[0] = v25;
    v43[1] = v26;
    v27 = _bridgeAnythingToObjectiveC<A>(_:)();
    sub_100027DE8(v43);
  }

  else
  {
    v27 = 0;
  }

  v28 = String._bridgeToObjectiveC()();
  v29 = sub_100007710();
  [v29 v30];
  swift_unknownObjectRelease();

  v31 = objc_opt_self();
  v32 = [objc_opt_self() currentProcess];
  v33 = [v31 userAgentForProcessInfo:v32];

  if (!v33)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v33 = String._bridgeToObjectiveC()();
  }

  v34 = String._bridgeToObjectiveC()();
  sub_1000055B8(v34);

  v35 = String._bridgeToObjectiveC()();
  v36 = String._bridgeToObjectiveC()();
  sub_1000055B8(v36);

  v37 = sub_1001AF320(0x644972657375, 0xE600000000000000, 1);
  v38 = [v2 identifierForKey:v37];

  if (!v38)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v38 = String._bridgeToObjectiveC()();
  }

  v39 = String._bridgeToObjectiveC()();
  v40 = sub_100007710();
  [v40 v41];

  return v4;
}

Swift::Int *sub_100189588(void *a1)
{
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v89 = &v86 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v90 = &v86 - v8;
  v9 = __chkstk_darwin(v7);
  v11 = &v86 - v10;
  __chkstk_darwin(v9);
  v13 = &v86 - v12;
  v14 = [a1 autoRenewEnabled];
  v94 = &type metadata for Bool;
  LOBYTE(v93) = v14;
  sub_100002C4C(&v93, &v92);
  swift_isUniquelyReferenced_nonNull_native();
  v91 = &_swiftEmptyDictionarySingleton;
  sub_10000DFC4();
  v15 = v91;
  v16 = [a1 chargeStoreFrontID];
  if (v16)
  {
    v17 = v16;
    v94 = sub_100002BC0(0, &qword_10026AF10, NSNumber_ptr);
    *&v93 = v17;
    sub_100006F5C();
    sub_100003494();
    sub_10000DFC4();
    v15 = v91;
  }

  else
  {
    sub_100004D74();
    v18 = sub_100012A94();
    if (v19)
    {
      v20 = v18;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v92 = v15;
      v22 = v15[3];
      sub_10007B9A4(&qword_10026AE78, &qword_1001ECFC0);
      _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v22);
      v15 = v92;
      v23 = *(*(v92 + 48) + 16 * v20 + 8);

      sub_100002C4C((v15[7] + 32 * v20), &v93);
      _NativeDictionary._delete(at:)();
    }

    else
    {
      sub_10000A4D0();
    }

    sub_100002C5C(&v93);
  }

  v24 = [a1 expiration];
  if (v24)
  {
    v25 = v24;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v3 + 32))(v13, v11, v2);
    v26 = objc_opt_self();
    isa = Date._bridgeToObjectiveC()().super.isa;
    v28 = [v26 serverTimeFromDate:isa];

    v94 = sub_100002BC0(0, &qword_10026AF10, NSNumber_ptr);
    *&v93 = v28;
    sub_100006F5C();
    v91 = v15;
    sub_100008598();
    sub_10000DFC4();
    v15 = v91;
    (*(v3 + 8))(v13, v2);
  }

  v87 = v3;
  v88 = v2;
  v29 = [a1 featureAccessTypeId];
  if (v29)
  {
    v30 = v29;
    v31 = [v29 description];

    v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v34 = v33;

    v94 = &type metadata for String;
    *&v93 = v32;
    *(&v93 + 1) = v34;
    sub_100006F5C();
    sub_100003494();
    sub_100023F20();
    sub_10000DFC4();
    v15 = v91;
  }

  else
  {
    sub_100023F20();
    sub_100012A94();
    if (v35)
    {
      swift_isUniquelyReferenced_nonNull_native();
      sub_100008148();
      sub_10007B9A4(&qword_10026AE78, &qword_1001ECFC0);
      sub_100006618();
      sub_100005A70();
      sub_10000AD20();
      sub_100019D84();
    }

    else
    {
      sub_10000A4D0();
    }

    sub_100002C5C(&v93);
  }

  v36 = [a1 freeTrialPeriodId];
  if (v36)
  {
    v37 = v36;
    v38 = [v36 description];

    v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v41 = v40;

    v94 = &type metadata for String;
    *&v93 = v39;
    *(&v93 + 1) = v41;
    sub_100006F5C();
    v91 = v15;
    sub_100023F20();
    sub_10000DFC4();
  }

  else
  {
    sub_100023F20();
    sub_100012A94();
    if (v42)
    {
      swift_isUniquelyReferenced_nonNull_native();
      sub_100008148();
      sub_10007B9A4(&qword_10026AE78, &qword_1001ECFC0);
      sub_100006618();
      sub_100005A70();
      sub_10000AD20();
      sub_100019D84();
    }

    else
    {
      sub_10000A4D0();
    }

    sub_100002C5C(&v93);
  }

  v43 = [a1 inAppAdamId];
  if (v43)
  {
    v44 = v43;
    v45 = [v43 description];

    v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v48 = v47;

    v94 = &type metadata for String;
    *&v93 = v46;
    *(&v93 + 1) = v48;
    sub_100006F5C();
    sub_100003494();
    sub_10000DFC4();
  }

  else
  {
    sub_100012A94();
    if (v49)
    {
      swift_isUniquelyReferenced_nonNull_native();
      sub_100008148();
      sub_10007B9A4(&qword_10026AE78, &qword_1001ECFC0);
      sub_100006618();
      sub_100005A70();
      sub_10000AD20();
      sub_100019D84();
    }

    else
    {
      sub_10000A4D0();
    }

    sub_100002C5C(&v93);
  }

  [a1 initialPurchaseTimestamp];
  v94 = &type metadata for Double;
  *&v93 = v50;
  sub_100006F5C();
  sub_100003494();
  sub_100023F20();
  sub_10000DFC4();
  v51 = [a1 period];
  v94 = &type metadata for Bool;
  LOBYTE(v93) = (v51 & 4) != 0;
  sub_10000BB1C();
  sub_10000C1A0();
  sub_100008598();
  sub_10000DFC4();
  v52 = [a1 period];
  v94 = &type metadata for Bool;
  LOBYTE(v93) = (v52 & 2) != 0;
  sub_10000BB1C();
  sub_10000C1A0();
  sub_100008598();
  sub_10000DFC4();
  v53 = [a1 purchaser];
  v94 = &type metadata for Bool;
  LOBYTE(v93) = v53;
  sub_10000BB1C();
  sub_10000C1A0();
  sub_100008598();
  sub_10000DFC4();
  v54 = [a1 period];
  v94 = &type metadata for Bool;
  LOBYTE(v93) = v54 & 1;
  sub_10000BB1C();
  sub_10000C1A0();
  sub_100008598();
  sub_10000DFC4();
  v55 = v91;
  v56 = sub_100026484(a1, &selRef_offerId);
  if (v57)
  {
    v94 = &type metadata for String;
    *&v93 = v56;
    *(&v93 + 1) = v57;
    sub_10000BB1C();
    v91 = v55;
    sub_100008598();
    sub_10000DFC4();
    v55 = v91;
    v58 = &AMSAccountMediaTypeAppStore_ptr;
  }

  else
  {
    v59 = sub_100012A94();
    v58 = &AMSAccountMediaTypeAppStore_ptr;
    if (v60)
    {
      v61 = v59;
      v62 = swift_isUniquelyReferenced_nonNull_native();
      *&v92 = v55;
      v63 = v55[3];
      sub_10007B9A4(&qword_10026AE78, &qword_1001ECFC0);
      _NativeDictionary.ensureUnique(isUnique:capacity:)(v62, v63);
      v55 = v92;
      v64 = *(*(v92 + 48) + 16 * v61 + 8);

      sub_100002C4C((v55[7] + 32 * v61), &v93);
      _NativeDictionary._delete(at:)();
    }

    else
    {
      sub_10000A4D0();
    }

    sub_100002C5C(&v93);
  }

  [a1 serviceBeginsTimestamp];
  v94 = &type metadata for Double;
  *&v93 = v65;
  sub_10000BB1C();
  v91 = v55;
  sub_100023F20();
  sub_10000DFC4();
  v66 = v91;
  v67 = [a1 startDate];
  if (v67)
  {
    v68 = v67;
    v69 = v89;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v71 = v87;
    v70 = v88;
    v72 = v90;
    (*(v87 + 32))(v90, v69, v88);
    v73 = v58[62];
    v74 = objc_opt_self();
    v75 = Date._bridgeToObjectiveC()().super.isa;
    v76 = [v74 serverTimeFromDate:v75];

    v94 = sub_100002BC0(0, &qword_10026AF10, NSNumber_ptr);
    *&v93 = v76;
    sub_100006F5C();
    v91 = v66;
    sub_100008598();
    sub_10000DFC4();
    v66 = v91;
    (*(v71 + 8))(v72, v70);
  }

  v77 = sub_100026484(a1, &selRef_vendorAdHocOfferId);
  if (v78)
  {
    v94 = &type metadata for String;
    *&v93 = v77;
    *(&v93 + 1) = v78;
    sub_100006F5C();
    sub_100003494();
    sub_10000DFC4();
    return v91;
  }

  else
  {
    sub_100004D74();
    v79 = sub_100012A94();
    if (v80)
    {
      v81 = v79;
      v82 = swift_isUniquelyReferenced_nonNull_native();
      *&v92 = v66;
      v83 = v66[3];
      sub_10007B9A4(&qword_10026AE78, &qword_1001ECFC0);
      _NativeDictionary.ensureUnique(isUnique:capacity:)(v82, v83);
      v66 = v92;
      v84 = *(*(v92 + 48) + 16 * v81 + 8);

      sub_100002C4C((v66[7] + 32 * v81), &v93);
      _NativeDictionary._delete(at:)();
    }

    else
    {
      sub_10000A4D0();
    }

    sub_100002C5C(&v93);
  }

  return v66;
}

uint64_t sub_10018A100()
{

  return swift_deallocClassInstance();
}

uint64_t sub_10018A15C(void *a1)
{
  v2 = [a1 ams_storefront];

  if (!v2)
  {
    return 0;
  }

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

void sub_10018A1CC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = String._bridgeToObjectiveC()();

  [a3 setClientIdentifier:v4];
}

uint64_t sub_10018A29C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  v4 = type metadata accessor for ContentInfo();
  v5 = v4;
  if (v3)
  {
    v6 = sub_100004D80(*(*(v4 - 8) + 80));
    sub_1000B2AD0(v6, v7);
    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  return sub_10000A7C0(a2, v8, 1, v5);
}

uint64_t sub_10018A334@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  v4 = sub_10007B9A4(&qword_100269FE0, &unk_1001E7550);
  v5 = v4;
  if (v3)
  {
    v6 = sub_100004D80(*(*(v4 - 8) + 80));
    sub_100161F04(v6, v7);
    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  return sub_10000A7C0(a2, v8, 1, v5);
}

uint64_t sub_10018A3D8(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    return 0;
  }

  v1 = *(a1 + 32);
}

unint64_t sub_10018A408(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    if ((a3 & 0x2000000000000000) != 0)
    {
      v3 = HIBYTE(a3) & 0xF;
    }

    else
    {
      v3 = a2 & 0xFFFFFFFFFFFFLL;
    }

    v4 = 7;
    if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
    {
      v4 = 11;
    }

    v5 = v4 | (v3 << 16);
    result = String.index(_:offsetBy:limitedBy:)();
    if (v6)
    {
      result = v5;
    }

    if (4 * v3 >= result >> 14)
    {
      v7 = String.subscript.getter();

      return v7;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10018A4DC(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 72) == *(a2 + 72) && *(a1 + 80) == *(a2 + 80))
  {
    return 0;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

unint64_t sub_10018A50C(unint64_t result, uint64_t (*a2)(unint64_t *, unint64_t *), uint64_t a3, unint64_t a4)
{
  v6 = result;
  while ((a4 + 0x4000000000000000) >= 0)
  {
    if (__OFADD__(2 * a4, 2))
    {
      goto LABEL_16;
    }

    v7 = *v6;
    v8 = *(*v6 + 16);
    v9 = a4;
    if (v8 > ((2 * a4) | 1))
    {
      v13 = sub_10002B80C((2 * a4) | 1, *v6);
      v12 = sub_10002B80C(a4, v7);
      v10 = a2(&v13, &v12);

      if (v10)
      {
        v9 = (2 * a4) | 1;
      }

      else
      {
        v9 = a4;
      }

      v8 = *(v7 + 16);
    }

    if (v8 > (2 * a4 + 2))
    {
      v13 = sub_10002B80C(2 * a4 + 2, v7);
      v12 = sub_10002B80C(v9, v7);
      v11 = a2(&v13, &v12);

      if (v11)
      {
        v9 = 2 * a4 + 2;
      }
    }

    if (v9 == a4)
    {
      return result;
    }

    result = sub_10018A67C(a4, v9);
    a4 = v9;
  }

  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

unint64_t sub_10018A67C(unint64_t result, unint64_t a2)
{
  if (result == a2)
  {
    return result;
  }

  v3 = result;
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  v4 = *v2;
  v5 = *(*v2 + 16);
  if (v5 <= result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v5 <= a2)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  v7 = *(v4 + 32 + 8 * result);
  v8 = *(v4 + 32 + 8 * a2);

  result = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if ((result & 1) == 0)
  {
    result = sub_10002B89C(v4);
    v4 = result;
    *v2 = result;
  }

  if (*(v4 + 16) <= v3)
  {
    goto LABEL_17;
  }

  v9 = v4 + 8 * v3;
  v10 = *(v9 + 32);
  *(v9 + 32) = v8;

  specialized ContiguousArray._endMutation()();
  v11 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v11;
  if ((result & 1) == 0)
  {
    result = sub_10002B89C(v11);
    v11 = result;
    *v2 = result;
  }

  if (*(v11 + 16) <= a2)
  {
    goto LABEL_18;
  }

  v12 = v11 + 8 * a2;
  v13 = *(v12 + 32);
  *(v12 + 32) = v7;

  return specialized ContiguousArray._endMutation()();
}

uint64_t sub_10018A7A8(uint64_t *a1, uint64_t (*a2)(unint64_t *, uint64_t *), uint64_t a3, unint64_t a4, uint64_t a5)
{
  v6 = a4;
  v33 = a5;
  v9 = *a1;
  v32 = sub_10002B80C(a4, *a1);
  v10 = a2(&v32, &v33);

  if (v10)
  {
LABEL_31:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v9;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = sub_10002B89C(v9);
    *a1 = v9;
  }

  if ((v6 & 0x8000000000000000) != 0)
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (*(v9 + 16) <= v6)
  {
    goto LABEL_26;
  }

  v12 = v9 + 8 * v6;
  v13 = *(v12 + 32);
  *(v12 + 32) = a5;

LABEL_7:

  result = specialized ContiguousArray._endMutation()();
  while (1)
  {
    v15 = v6 - 1;
    if (v6 < 1)
    {
      return result;
    }

    v16 = v6;
    v17 = *a1;
    v18 = *(*a1 + 16);
    if (v6 >= v18)
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    v19 = v17 + 32;
    v32 = *(v17 + 32 + 8 * v6);
    v6 = v15 >> 1;
    if (v15 >> 1 >= v18)
    {
      goto LABEL_24;
    }

    v31 = *(v19 + 8 * v6);

    v20 = a2(&v32, &v31);

    if ((v20 & 1) == 0)
    {
      return result;
    }

    if (v16 != v6)
    {
      v21 = *(v17 + 16);
      if (v16 >= v21)
      {
        goto LABEL_27;
      }

      if (v6 >= v21)
      {
        goto LABEL_28;
      }

      v22 = *(v19 + 8 * v16);
      v23 = *(v19 + 8 * v6);

      v24 = swift_isUniquelyReferenced_nonNull_native();
      *a1 = v17;
      if ((v24 & 1) == 0)
      {
        v17 = sub_10002B89C(v17);
        *a1 = v17;
      }

      if (v16 >= *(v17 + 16))
      {
        goto LABEL_29;
      }

      v25 = v17 + 8 * v16;
      v26 = *(v25 + 32);
      *(v25 + 32) = v23;

      specialized ContiguousArray._endMutation()();
      v27 = *a1;
      v28 = swift_isUniquelyReferenced_nonNull_native();
      *a1 = v27;
      if ((v28 & 1) == 0)
      {
        v27 = sub_10002B89C(v27);
        *a1 = v27;
      }

      if (v6 < *(v27 + 16))
      {
        v29 = v27 + 8 * v6;
        v30 = *(v29 + 32);
        *(v29 + 32) = v22;
        goto LABEL_7;
      }

      goto LABEL_30;
    }
  }
}

void *sub_10018AA30()
{
  sub_10000602C();
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_100027C2C(0, v2, 0);
  result = sub_100083958(v1);
  v6 = result;
  v7 = 0;
  v8 = v1 + 64;
  v24 = v4;
  v25 = v2;
  while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(v1 + 32))
  {
    v9 = v6 >> 6;
    if ((*(v8 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
    {
      goto LABEL_23;
    }

    if (*(v1 + 36) != v4)
    {
      goto LABEL_24;
    }

    v27 = v7;
    v28 = v4;
    v26 = v5;
    v10 = (*(v1 + 48) + 16 * v6);
    v11 = *v10;
    v12 = v10[1];
    v13 = _swiftEmptyArrayStorage[2];
    v14 = _swiftEmptyArrayStorage[3];

    if (v13 >= v14 >> 1)
    {
      result = sub_100027C2C((v14 > 1), v13 + 1, 1);
    }

    _swiftEmptyArrayStorage[2] = v13 + 1;
    v15 = &_swiftEmptyArrayStorage[2 * v13];
    v15[4] = v11;
    v15[5] = v12;
    v16 = 1 << *(v1 + 32);
    if (v6 >= v16)
    {
      goto LABEL_25;
    }

    v8 = v1 + 64;
    v17 = *(v1 + 64 + 8 * v9);
    if ((v17 & (1 << v6)) == 0)
    {
      goto LABEL_26;
    }

    if (*(v1 + 36) != v28)
    {
      goto LABEL_27;
    }

    v18 = v17 & (-2 << (v6 & 0x3F));
    if (v18)
    {
      v16 = __clz(__rbit64(v18)) | v6 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v19 = v9 << 6;
      v20 = v9 + 1;
      v21 = (v1 + 72 + 8 * v9);
      while (v20 < (v16 + 63) >> 6)
      {
        v23 = *v21++;
        v22 = v23;
        v19 += 64;
        ++v20;
        if (v23)
        {
          result = sub_100083998(v6, v28, v26 & 1);
          v16 = __clz(__rbit64(v22)) + v19;
          goto LABEL_19;
        }
      }

      result = sub_100083998(v6, v28, v26 & 1);
    }

LABEL_19:
    v5 = 0;
    v7 = v27 + 1;
    v6 = v16;
    v4 = v24;
    if (v27 + 1 == v25)
    {

      return _swiftEmptyArrayStorage;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_10018AEEC()
{
  sub_10000F284(2, 0, v2);
  v5 = 1;
  v6 = *&v2[1];
  v7 = v3;
  *v8 = *v4;
  *&v8[15] = *&v4[15];
  v0 = sub_100027970();
  v9 = 1;
  v10 = *&v2[1];
  v11 = v3;
  *v12 = *v4;
  *&v12[15] = *&v4[15];
  sub_10000FF10(&v9);
  return v0;
}

uint64_t sub_10018AF98(uint64_t a1, uint64_t a2)
{
  if (qword_100268710 != -1)
  {
    sub_100006F8C();
    swift_once();
  }

  v5 = qword_100287870;

  sub_100149D14(v5, v2, v6, v7, v8, v9, v10, v11, v14, v15, v16, *(&v16 + 1), v17, *(&v17 + 1), v18, *(&v18 + 1), v19, *(&v19 + 1), v20, v21, v22, v23, vars0, vars8);
  sub_10018B09C(&v15);
  v12 = swift_allocObject();
  v12[2] = v2;
  v12[3] = a1;
  v12[4] = a2;

  sub_1000ED5B8();

  v19 = v16;
  sub_100027DE8(&v19);
  v18 = v17;
  sub_100027DE8(&v18);
}

uint64_t sub_10018B09C@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for UUID();
  v4 = sub_100002CC4(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  __chkstk_darwin(v4);
  sub_1000034A4();
  v9 = dispatch thunk of CustomStringConvertible.description.getter();
  v11 = v10;
  UUID.init()();
  v12 = UUID.uuidString.getter();
  v14 = v13;
  result = (*(v6 + 8))(v1, v3);
  *a1 = 257;
  *(a1 + 8) = v12;
  *(a1 + 16) = v14;
  *(a1 + 24) = v9;
  *(a1 + 32) = v11;
  return result;
}

uint64_t sub_10018B1A0(uint64_t a1, void (*a2)(uint64_t))
{
  if (qword_100268710 != -1)
  {
    swift_once();
  }

  v4 = qword_100287870;

  v5 = sub_100149E88(v4, a1);
  a2(v5);
  sub_10007B9A4(&qword_10026C8F0, &qword_1001EBDC0);
  return Promise.__allocating_init(value:)();
}

uint64_t PriorityQueue.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);
  v3 = *(v0 + 48);

  v4 = *(v0 + 64);

  v5 = *(v0 + 88);

  return v0;
}

uint64_t PriorityQueue.__deallocating_deinit()
{
  PriorityQueue.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_10018B454(unsigned __int8 *a1, uint64_t a2)
{
  v2 = 0xE900000000000073;
  v3 = 0x636974796C616E61;
  v4 = *a1;
  v7 = 0x636974796C616E61;
  v8 = 0xE900000000000073;
  switch(v4)
  {
    case 1:
      v8 = 0xE800000000000000;
      v7 = 0x6C616E7265746E69;
      break;
    case 2:
      v8 = 0xE800000000000000;
      v7 = 0x7379656E72756F6ALL;
      break;
    case 3:
      v7 = 0x6E656D6D6F636572;
      v8 = 0xEF736E6F69746164;
      break;
    default:
      break;
  }

  switch(*a2)
  {
    case 1:
      v2 = 0xE800000000000000;
      v3 = 0x6C616E7265746E69;
      break;
    case 2:
      v2 = 0xE800000000000000;
      v3 = 0x7379656E72756F6ALL;
      break;
    case 3:
      v3 = 0x6E656D6D6F636572;
      v2 = 0xEF736E6F69746164;
      break;
    default:
      break;
  }

  if (v7 == v3 && v8 == v2)
  {
  }

  else
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v10 & 1) == 0)
    {
LABEL_27:
      v13 = 0;
      return v13 & 1;
    }
  }

  v11 = *(a1 + 3) == *(a2 + 24) && *(a1 + 4) == *(a2 + 32);
  if (!v11 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_27;
  }

  v12 = *(a1 + 1) == *(a2 + 8) && *(a1 + 2) == *(a2 + 16);
  if (!v12 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_27;
  }

  v13 = a1[1] ^ *(a2 + 1) ^ 1;
  return v13 & 1;
}

uint64_t sub_10018B640()
{
  _StringGuts.grow(_:)(54);
  v1._countAndFlagsBits = 0x282072656B726F57;
  v1._object = 0xED0000203A79656BLL;
  String.append(_:)(v1);
  v8 = *(v0 + 48);
  BYTE1(v8) = *(v0 + 49);
  v9 = *(v0 + 56);
  v10 = *(v0 + 72);
  v11 = *(v0 + 80);
  _print_unlocked<A, B>(_:_:)();
  v2._object = 0x8000000100201410;
  v2._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v2);
  result = sub_10000602C();
  if (__OFSUB__(*(v0 + 40) >> 1, *(v0 + 32)))
  {
    __break(1u);
  }

  else
  {
    sub_100007F3C();
    v4._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v4);

    v5._countAndFlagsBits = 0xD000000000000013;
    v5._object = 0x8000000100201430;
    String.append(_:)(v5);
    v7 = *(v0 + 96);
    sub_100007F3C();
    v6._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v6);

    return 0;
  }

  return result;
}

uint64_t sub_10018B7C4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
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

uint64_t sub_10018B804(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10018B8B0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_10002B97C();
  return v4 & 1;
}

void sub_10018B91C()
{
  sub_100003D74();
  v12 = v9 - v8;
  if (__OFSUB__(v9, v8))
  {
    __break(1u);
    goto LABEL_20;
  }

  v0 = v11;
  v3 = v10;
  v4 = v9;
  v2 = v8;
  v13 = *v1;
  v6 = *v1 & 0xFFFFFFFFFFFFFF8;
  v7 = v6 + 32;
  v5 = v6 + 32 + 8 * v8;
  type metadata accessor for NWProtocolOptions();
  swift_arrayDestroy();
  v14 = __OFSUB__(v3, v12);
  v12 = v3 - v12;
  if (v14)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v1 = (v5 + 8 * v3);
  if (!v12)
  {
    goto LABEL_12;
  }

  v5 = v13 >> 62;
  if (!(v13 >> 62))
  {
    v15 = *(v6 + 16);
    goto LABEL_6;
  }

LABEL_21:
  v15 = _CocoaArrayWrapper.endIndex.getter();
LABEL_6:
  if (__OFSUB__(v15, v4))
  {
    __break(1u);
LABEL_23:
    __break(1u);
    return;
  }

  sub_1000D6AC0(v7 + 8 * v4, v15 - v4);
  if (v5)
  {
    v16 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v16 = *(v6 + 16);
  }

  if (__OFADD__(v16, v12))
  {
    goto LABEL_23;
  }

  *(v6 + 16) = v16 + v12;
LABEL_12:
  if (v3 < 1)
  {
    sub_100005F14();
  }

  else
  {
    v17 = v6 + 8 * v2;
    *(v17 + 32) = v0;
    if (v17 + 40 < v1)
    {

      __break(1u);
    }

    sub_100005F14();
  }
}

uint64_t sub_10018BA60(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_10;
  }

  v7 = *v3;
  v8 = v7 + 32 + 16 * result;
  sub_10007B9A4(&qword_10026BF68, &unk_1001EA280);
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (!v10)
  {
    goto LABEL_7;
  }

  v11 = *(v7 + 16);
  if (__OFSUB__(v11, a2))
  {
    goto LABEL_11;
  }

  result = sub_10004F7A4(v7 + 32 + 16 * a2, v11 - a2, v8 + 16 * a3);
  v12 = *(v7 + 16);
  v9 = __OFADD__(v12, v10);
  v13 = v12 + v10;
  if (v9)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  *(v7 + 16) = v13;
LABEL_7:
  if (a3 > 0)
  {
LABEL_13:
    __break(1u);
  }

  return result;
}

uint64_t sub_10018BB1C(uint64_t result, uint64_t a2)
{
  if (__OFSUB__(0, a2))
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = *(result + 16);
  v3 = __OFADD__(a2, v2);
  v4 = a2 + v2;
  if (v3)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v4 < a2)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v4 < 0)
  {
LABEL_9:
    __break(1u);
  }

  return result;
}

uint64_t sub_10018BB64(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = sub_1000116AC(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        type metadata accessor for Worker();
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_100006070(&qword_1002703B8, &qword_1002703B0, &unk_1001EF9B8);
        for (i = 0; i != v7; ++i)
        {
          sub_10007B9A4(&qword_1002703B0, &unk_1001EF9B8);
          v9 = sub_10018BCE8(v12, i, a3);
          v11 = *v10;

          (v9)(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t (*sub_10018BCE8(uint64_t *a1, uint64_t a2, uint64_t a3))(uint64_t *a1)
{
  v6 = sub_10006ED08(a3);
  sub_1000F1168(a2, v6, a3);
  if (v6)
  {
    v7 = *(a3 + 8 * a2 + 32);
  }

  else
  {
    v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  *a1 = v8;
  return sub_10018BD74;
}

void (*sub_10018BD7C(void *a1, uint64_t a2, uint64_t a3))(id *a1)
{
  v6 = sub_10006ED08(a3);
  sub_1000F1168(a2, v6, a3);
  if (v6)
  {
    v7 = *(a3 + 8 * a2 + 32);
  }

  else
  {
    v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  *a1 = v7;
  return sub_10018BE08;
}

uint64_t sub_10018BE20(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if ((result & 1) == 0)
  {
    result = sub_10002B89C(v3);
    v3 = result;
    *v1 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v5 - 1 - a1;
    v8 = v3 + 8 * a1;
    v9 = *(v8 + 32);
    sub_1000D6AC0(v8 + 40, v7);
    *(v3 + 16) = v6;
    specialized ContiguousArray._endMutation()();
    return v9;
  }

  return result;
}

void *sub_10018BED8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    goto LABEL_4;
  }

  v2 = sub_10004EB78(*(a1 + 16), 0);
  sub_10018C670();
  v4 = v3;
  sub_10004EB70();
  if (v4 != v1)
  {
    __break(1u);
LABEL_4:

    return _swiftEmptyArrayStorage;
  }

  return v2;
}

uint64_t sub_10018BF68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + OBJC_IVAR____TtC14amsengagementd11PushService_publishers);
  if (!*(v5 + 16))
  {
    return 0;
  }

  v8 = sub_100012A94();
  if ((v9 & 1) == 0)
  {
    return 0;
  }

  v13 = *(*(v5 + 56) + 8 * v8);
  v10 = swift_allocObject();
  *(v10 + 16) = a3;
  *(v10 + 24) = a4;

  sub_10007B9A4(&qword_100270478, &qword_1001EF9E0);
  sub_100006070(&unk_100270480, &qword_100270478, &qword_1001EF9E0);
  v11 = Publisher.sink(receiveCompletion:receiveValue:)();

  return v11;
}

id sub_10018C0A0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PushService();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_10018C130()
{
  sub_100003D74();
  v1 = v0;
  v3 = v2;
  v4 = type metadata accessor for LogInterpolation.StringInterpolation();
  v5 = sub_100003D10(v4);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  sub_100002DEC();
  v8 = type metadata accessor for DispatchPredicate();
  v9 = sub_100002CC4(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  __chkstk_darwin(v9);
  sub_100002DEC();
  v16 = v15 - v14;
  v17 = *&v0[OBJC_IVAR____TtC14amsengagementd11PushService_connectionQueue];
  *(v15 - v14) = v17;
  (*(v11 + 104))(v15 - v14, enum case for DispatchPredicate.onQueue(_:), v8);
  v18 = v17;
  LOBYTE(v17) = _dispatchPreconditionTest(_:)();
  (*(v11 + 8))(v16, v8);
  if ((v17 & 1) == 0)
  {
    __break(1u);
    goto LABEL_17;
  }

  if (v3)
  {
    v19 = sub_10018C7BC(v3);
    if (!v20)
    {
      sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
      v28 = type metadata accessor for LogInterpolation();
      sub_100002CFC(v28);
      v30 = *(v29 + 72);
      *(sub_100007CB8() + 16) = xmmword_1001E5F70;
      v44 = type metadata accessor for PushService();
      v43[0] = v0;
      v31 = v0;
      v32 = AMSLogKey();
      if (v32)
      {
        v33 = v32;
        static String._unconditionallyBridgeFromObjectiveC(_:)();
      }

      static LogInterpolation.prefix(_:_:)();

      sub_100002C00(v43);
      LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v38._countAndFlagsBits = 0xD00000000000002CLL;
      v38._object = 0x80000001002014B0;
      LogInterpolation.StringInterpolation.appendLiteral(_:)(v38);
      v44 = sub_100002BC0(0, &unk_100270468, APSIncomingMessage_ptr);
      v43[0] = v3;
      v39 = v3;
      LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
      v40 = sub_100002C5C(v43);
      sub_100003B48(v40);
      LogInterpolation.init(stringInterpolation:)();
      if (qword_1002686B0 != -1)
      {
        sub_100002D44();
      }

      v41 = static os_log_type_t.info.getter();
      sub_1000036B0(v41);
      goto LABEL_14;
    }

    v8 = v20;
    v42 = v19;
    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v21 = type metadata accessor for LogInterpolation();
    sub_100002CFC(v21);
    v23 = *(v22 + 72);
    v25 = (*(v24 + 80) + 32) & ~*(v24 + 80);
    *(swift_allocObject() + 16) = xmmword_1001E5F70;
    v44 = type metadata accessor for PushService();
    v43[0] = v0;
    v1 = v0;
    v26 = AMSLogKey();
    if (v26)
    {
      v27 = v26;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_100002C00(v43);
    LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v34._object = 0x80000001002014E0;
    v34._countAndFlagsBits = 0xD00000000000001ELL;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v34);
    v44 = sub_100002BC0(0, &unk_100270468, APSIncomingMessage_ptr);
    v43[0] = v3;
    v3 = v3;
    LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
    v35 = sub_100002C5C(v43);
    sub_100003B48(v35);
    LogInterpolation.init(stringInterpolation:)();
    if (qword_1002686B0 == -1)
    {
LABEL_9:
      v36 = static os_log_type_t.info.getter();
      sub_1000036B0(v36);

      if (sub_100012A40(v42, v8, *&v1[OBJC_IVAR____TtC14amsengagementd11PushService_publishers]))
      {
        v37 = v3;

        v43[0] = v37;
        PassthroughSubject.send(_:)();

LABEL_15:
        sub_100005F14();
        return;
      }

LABEL_14:

      goto LABEL_15;
    }

LABEL_17:
    sub_100002D44();
    goto LABEL_9;
  }

  __break(1u);
}

void sub_10018C670()
{
  sub_100003D74();
  v3 = v2;
  v5 = v4;
  v6 = v2 + 56;
  v7 = -1 << *(v2 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v2 + 56);
  if (!v0)
  {
    v13 = 0;
LABEL_20:
    *v5 = v3;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v13;
    v5[4] = v9;
    sub_100005F14();
    return;
  }

  v10 = v1;
  if (!v1)
  {
    v13 = 0;
    goto LABEL_20;
  }

  if ((v1 & 0x8000000000000000) == 0)
  {
    v11 = v0;
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
      v16 = (*(v3 + 48) + ((v15 << 10) | (16 * __clz(__rbit64(v9)))));
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
}

uint64_t sub_10018C7BC(void *a1)
{
  v1 = [a1 topic];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_10018C820(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

uint64_t sub_10018C85C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v79 = a1;
  v80 = a2;
  v63 = a3;
  v65 = type metadata accessor for JSBytecodeSource();
  v64 = *(v65 - 8);
  v3 = *(v64 + 64);
  __chkstk_darwin(v65);
  v70 = &v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10007B9A4(&unk_10026FEE0, &unk_1001E67C0);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5 - 8);
  v68 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v82 = &v62 - v10;
  __chkstk_darwin(v9);
  v78 = &v62 - v11;
  v12 = type metadata accessor for URL();
  v81 = *(v12 - 8);
  v13 = *(v81 + 64);
  v14 = __chkstk_darwin(v12);
  v67 = &v62 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v66 = &v62 - v17;
  __chkstk_darwin(v16);
  v85 = &v62 - v18;
  v19 = type metadata accessor for LogInterpolation.StringInterpolation();
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  if (qword_1002686C8 != -1)
  {
    swift_once();
  }

  v83 = qword_100287828;
  v21 = sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v22 = *(type metadata accessor for LogInterpolation() - 8);
  v23 = *(v22 + 72);
  v24 = *(v22 + 80);
  v25 = (v24 + 32) & ~v24;
  v73 = v25 + 2 * v23;
  v74 = v24;
  v77 = v21;
  v26 = swift_allocObject();
  v72 = xmmword_1001E5F70;
  *(v26 + 16) = xmmword_1001E5F70;
  v75 = v25;
  v27 = sub_10007B9A4(&qword_1002704B8, &qword_1001EFA40);
  v28 = AMSSetLogKeyIfNeeded();
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v76 = v27;
  static LogInterpolation.prefix<A>(_:_:)();

  LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v29._countAndFlagsBits = 0xD000000000000019;
  v29._object = 0x80000001002016D0;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v29);
  v84[3] = v12;
  v30 = sub_100017E64(v84);
  v31 = v81;
  v32 = *(v81 + 16);
  v32(v30, v79, v12);
  LogInterpolation.StringInterpolation.appendInterpolation(sensitive:)();
  sub_10000A064(v84, &qword_10026D350, &qword_1001E6050);
  v33._countAndFlagsBits = 41;
  v33._object = 0xE100000000000000;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v33);
  v71 = v23;
  LogInterpolation.init(stringInterpolation:)();
  v34 = static os_log_type_t.debug.getter();
  sub_1000036B0(v34);

  v35 = type metadata accessor for JSStackContext();
  v36 = v80;
  v37 = v78;
  sub_10001EC70(v80 + v35[8], v78);
  if (sub_100009F34(v37, 1, v12) == 1)
  {
    v38 = v32;
    v32(v85, v36 + v35[10], v12);
    if (sub_100009F34(v37, 1, v12) != 1)
    {
      sub_10000A064(v37, &unk_10026FEE0, &unk_1001E67C0);
    }
  }

  else
  {
    v38 = v32;
    (*(v31 + 32))(v85, v37, v12);
  }

  v39 = v36 + v35[5];
  v40 = v82;
  sub_10001EC70(v39, v82);
  v78 = v12;
  v41 = sub_100009F34(v40, 1, v12);
  *(swift_allocObject() + 16) = v72;
  v42 = AMSSetLogKeyIfNeeded();
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  static LogInterpolation.prefix<A>(_:_:)();

  LogInterpolation.init(stringLiteral:)();
  if (v41 == 1)
  {
    v43 = static os_log_type_t.debug.getter();
  }

  else
  {
    v43 = static os_log_type_t.info.getter();
  }

  v44 = v79;
  sub_1000036B0(v43);

  v45 = v78;
  v38(v66, v44, v78);
  v38(v67, v85, v45);
  v46 = v82;
  sub_10001EC70(v82, v68);
  v47 = *(v80 + v35[12]);
  v49 = v69;
  v48 = v70;
  JSBytecodeSource.init(fileURL:sourceURL:cacheURL:virtualMachine:)();
  if (v49)
  {
    goto LABEL_11;
  }

  v50 = JSBytecodeSource.isUsingBytecodeCache.getter();
  *(swift_allocObject() + 16) = v72;
  v51 = AMSSetLogKeyIfNeeded();
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  static LogInterpolation.prefix<A>(_:_:)();

  if (v50)
  {
    LogInterpolation.init(stringLiteral:)();
    v52 = static os_log_type_t.info.getter();
    sub_1000036B0(v52);

    goto LABEL_14;
  }

  LogInterpolation.init(stringLiteral:)();
  v54 = static os_log_type_t.debug.getter();
  sub_1000036B0(v54);

  v53 = v78;
  if (sub_100009F34(v46, 1, v78) == 1)
  {
    goto LABEL_16;
  }

  *(swift_allocObject() + 16) = v72;
  v59 = AMSSetLogKeyIfNeeded();
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  static LogInterpolation.prefix<A>(_:_:)();

  LogInterpolation.init(stringLiteral:)();
  v60 = static os_log_type_t.debug.getter();
  sub_1000036B0(v60);

  JSBytecodeSource.cacheBytecode()();
  if (!v61)
  {
LABEL_14:
    v53 = v78;
LABEL_16:
    v55 = v65;
    v56 = v63;
    v63[3] = v65;
    v56[4] = &protocol witness table for JSBytecodeSource;
    v57 = sub_100017E64(v56);
    (*(v64 + 32))(v57, v70, v55);
    (*(v81 + 8))(v85, v53);
    return sub_10000A064(v46, &unk_10026FEE0, &unk_1001E67C0);
  }

  (*(v64 + 8))(v48, v65);
  v45 = v78;
LABEL_11:
  (*(v81 + 8))(v85, v45);
  return sub_10000A064(v46, &unk_10026FEE0, &unk_1001E67C0);
}

uint64_t sub_10018D198(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v236 = a3;
  v245 = a2;
  v210 = a1;
  v3 = type metadata accessor for DispatchQoS.QoSClass();
  v4 = sub_100006FA0(v3, &v258);
  v232 = v5;
  v7 = *(v6 + 64);
  __chkstk_darwin(v4);
  sub_1000052A4();
  sub_1000034BC(v8);
  v9 = sub_10007B9A4(&qword_1002704B0, &qword_1001EFA38);
  sub_100006FA0(v9, &v257 + 8);
  v229[1] = v10;
  v12 = *(v11 + 64);
  sub_100004E78();
  __chkstk_darwin(v13);
  sub_1000074D8();
  sub_1000034BC(v14);
  v15 = sub_10007B9A4(&qword_1002704B8, &qword_1001EFA40);
  sub_100006FA0(v15, &v256);
  v227 = v16;
  v18 = *(v17 + 64);
  sub_100004E78();
  __chkstk_darwin(v19);
  sub_1000074D8();
  sub_1000034BC(v20);
  v21 = sub_10007B9A4(&qword_1002704C0, &qword_1001EFA48);
  sub_100006FA0(v21, &v254 + 8);
  v224 = v22;
  v24 = *(v23 + 64);
  sub_100004E78();
  __chkstk_darwin(v25);
  sub_1000074D8();
  sub_1000034BC(v26);
  v27 = sub_10007B9A4(&qword_1002704C8, &qword_1001EFA50);
  sub_100006FA0(v27, v252);
  v221 = v28;
  v30 = *(v29 + 64);
  sub_100004E78();
  __chkstk_darwin(v31);
  sub_1000074D8();
  sub_1000034BC(v32);
  v33 = sub_10007B9A4(&qword_1002704D0, &qword_1001EFA58);
  sub_100006FA0(v33, &v249);
  v219 = v34;
  v36 = *(v35 + 64);
  sub_100004E78();
  __chkstk_darwin(v37);
  sub_1000074D8();
  sub_1000034BC(v38);
  v39 = type metadata accessor for JetpackBundle.Resource();
  v40 = sub_100006FA0(v39, &v261);
  v244 = v41;
  v43 = *(v42 + 64);
  __chkstk_darwin(v40);
  sub_1000052A4();
  sub_1000034BC(v44);
  v45 = sub_10007B9A4(&qword_1002704D8, &unk_1001EFA60);
  sub_100006FA0(v45, &v260);
  v243 = v46;
  v48 = *(v47 + 64);
  sub_100004E78();
  __chkstk_darwin(v49);
  sub_1000074D8();
  sub_1000034BC(v50);
  v51 = type metadata accessor for JSStackContext();
  v52 = sub_100006FA0(v51, &v259);
  v218 = v53;
  v55 = *(v54 + 64);
  __chkstk_darwin(v52);
  v239 = v56;
  sub_1000034BC(v208 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0));
  v57 = sub_10007B9A4(&qword_1002704E0, &qword_1001EFB30);
  sub_100006FA0(v57, &v234);
  v208[8] = v58;
  v60 = *(v59 + 64);
  sub_100004E78();
  __chkstk_darwin(v61);
  sub_1000074D8();
  sub_1000034BC(v62);
  v63 = sub_10007B9A4(&qword_1002704E8, &qword_1001EFA70);
  sub_100006FA0(v63, &v231);
  v208[5] = v64;
  v66 = *(v65 + 64);
  sub_100004E78();
  __chkstk_darwin(v67);
  sub_1000074D8();
  sub_1000034BC(v68);
  v69 = sub_10007B9A4(&qword_1002704F0, &qword_1001EFA78);
  sub_100006FA0(v69, &v245);
  v216 = v70;
  v72 = *(v71 + 64);
  sub_100004E78();
  __chkstk_darwin(v73);
  sub_1000074D8();
  sub_1000034BC(v74);
  v75 = sub_10007B9A4(&qword_1002704F8, &qword_1001EFA80);
  v76 = sub_100006FA0(v75, &v242);
  v213 = v77;
  v79 = *(v78 + 64);
  v80 = __chkstk_darwin(v76);
  v209 = v208 - ((v81 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v80);
  sub_1000034BC(v208 - v82);
  v83 = sub_10007B9A4(&qword_100270500, &qword_1001EFA88);
  sub_100006FA0(v83, &v228);
  v208[1] = v84;
  v86 = *(v85 + 64);
  sub_100004E78();
  __chkstk_darwin(v87);
  sub_1000074D8();
  sub_1000034BC(v88);
  if (qword_1002686C8 != -1)
  {
    swift_once();
  }

  v237 = qword_100287828;
  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v89 = *(type metadata accessor for LogInterpolation() - 8);
  v90 = *(v89 + 72);
  v91 = (*(v89 + 80) + 32) & ~*(v89 + 80);
  v92 = swift_allocObject();
  v211 = xmmword_1001E5F70;
  *(v92 + 16) = xmmword_1001E5F70;
  *(&v255 + 1) = &type metadata for RemoteJetpackLoader;
  v93 = AMSLogKey();
  if (v93)
  {
    v94 = v93;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(&v254);
  LogInterpolation.init(stringLiteral:)();
  static os_log_type_t.info.getter();
  sub_10000AD48();
  sub_1000036B0(v95);

  sub_100002BC0(0, &qword_10026D648, AMSProcessInfo_ptr);
  type metadata accessor for BaseObjectGraph();
  inject<A, B>(_:from:)();
  v234 = v254;
  v96 = [objc_opt_self() defaultManager];
  v212 = v235[7];
  URL.path.getter();
  v97 = String._bridgeToObjectiveC()();

  v98 = [v96 fileExistsAtPath:v97];

  *(swift_allocObject() + 16) = v211;
  if (v98)
  {
    *(&v255 + 1) = &type metadata for RemoteJetpackLoader;
    v99 = AMSLogKey();
    if (v99)
    {
      v100 = v99;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    v103 = v245;
    static LogInterpolation.prefix(_:_:)();

    sub_100002C00(&v254);
    LogInterpolation.init(stringLiteral:)();
    static os_log_type_t.info.getter();
    sub_10000AD48();
    sub_1000036B0(v104);

    v105 = type metadata accessor for URL();
    static Pipeline.start<A>(with:)();
    type metadata accessor for JetpackBundle();
    sub_10000772C(v229);
    PipelinePhase.init(mapOutput:)();
    sub_1000085A4(&qword_100270598, &qword_100270500, &qword_1001EFA88);
    v106 = PipelineTask.andThen<A>(_:)();
    v107 = sub_1000055DC(&v241);
    v108(v107, v214);
    sub_100007CE0(&v227);
    v109 = sub_10000569C();
    v110(v109);
    *&v254 = v106;
    sub_10000772C(&v243);
    static PipelinePhase.cacheValueIfSuccessful()();
    v111 = sub_10000569C();
    sub_10007B9A4(v111, v112);
    sub_10000A4DC();
    sub_100006070(v113, v114, v115);
  }

  else
  {
    *(&v255 + 1) = &type metadata for RemoteJetpackLoader;
    v101 = AMSLogKey();
    if (v101)
    {
      v102 = v101;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    v103 = v245;
    static LogInterpolation.prefix(_:_:)();

    sub_100002C00(&v254);
    LogInterpolation.init(stringLiteral:)();
    static os_log_type_t.debug.getter();
    sub_10000AD48();
    sub_1000036B0(v116);

    v117 = v235[8];
    sub_10007B9A4(&unk_10026FEE0, &unk_1001E67C0);
    v118 = v208[4];
    static Pipeline.start<A>(with:)();
    v119 = *(v210 + OBJC_IVAR____TtC14amsengagementd9JSRuntime_config + 16);
    v254 = *(v210 + OBJC_IVAR____TtC14amsengagementd9JSRuntime_config);
    v255 = v119;
    v120 = *(v210 + OBJC_IVAR____TtC14amsengagementd9JSRuntime_config + 48);
    v256 = *(v210 + OBJC_IVAR____TtC14amsengagementd9JSRuntime_config + 32);
    v257 = v120;
    sub_100002BC0(0, &qword_10026D640, AMSURLSession_ptr);
    inject<A, B>(_:from:)();
    v121 = v253;
    if (qword_1002685F8 != -1)
    {
      swift_once();
    }

    v122 = qword_10026A070;
    v123 = v242;
    sub_1000345E0(v103, v242);
    v124 = type metadata accessor for SourceFetcher();
    v125 = *(v124 + 48);
    v126 = *(v124 + 52);
    swift_allocObject();
    v127 = v121;
    v128 = v234;
    sub_1000346F4(&v254, v123, v127, v234, v122);
    sub_10000F4A4(&v254, &v246);
    v105 = type metadata accessor for URL();
    v129 = v128;
    swift_unknownObjectRetain();
    sub_10000772C(&v232);
    sub_10000A4DC();
    PipelinePhase.init(mapOutput:)();
    sub_1000085A4(&qword_100270508, &qword_1002704E8, &qword_1001EFA70);
    v130 = v208[6];
    v131 = PipelineTask.andThen<A>(_:)();
    v132 = sub_1000055DC(&v233);
    v133(v132, v208[9]);
    sub_100007CE0(&v230);
    v134(v118, v130);
    v246 = v131;
    sub_10018E8CC();
    if (sub_100024F14())
    {
      type metadata accessor for Defaults();
      sub_1000287B4(1);
    }

    type metadata accessor for JetpackBundle();
    sub_10000772C(&v235);
    static PipelinePhase<>.unpackJetpack(keyURLs:bundleOutputURL:artifactStoreURL:verifySignature:)();

    sub_10007B9A4(&qword_100270510, &qword_1001EFA90);
    sub_100006070(&qword_100270518, &qword_100270510, &qword_1001EFA90);
    sub_100023F2C();
    v135 = PipelineTask.andThen<A>(_:)();
    v136 = sub_1000055DC(&v241);
    v137(v136, v214);

    v246 = v135;
    sub_10000772C(&v243);
    static PipelinePhase.cacheValueIfSuccessful()();
    v138 = sub_10000569C();
    sub_10007B9A4(v138, v139);
    sub_10000A4DC();
    sub_100006070(v140, v141, v142);
  }

  v143 = PipelineTask.andThen<A>(_:)();
  v144 = sub_1000055DC(&v244);
  v145(v144, v217);

  v236 = v143;
  v246 = v143;
  v146 = v223;
  *v223 = xmmword_1001EF9F0;
  v146[1] = xmmword_1001EFA00;
  v147 = v244;
  v148 = *(v244 + 104);
  v216 = v244 + 104;
  v217 = v148;
  v148(v146, enum case for JetpackBundle.Resource.other(_:), v241);
  type metadata accessor for URL();

  v149 = v238;
  static PipelinePhase<>.urlForResource(_:)();
  v150 = *(v147 + 8);
  v244 = v147 + 8;
  v215 = v150;
  v151 = sub_100007F3C();
  v152(v151);
  v153 = sub_10000569C();
  v214 = sub_10007B9A4(v153, v154);
  v235 = &protocol conformance descriptor for MapPipelineTask<A, B>;
  v213 = sub_100006070(&qword_100270538, &qword_100270530, &qword_1001EFAA0);
  v155 = PipelineTask.andThen<A>(_:)();
  v156 = *(v243 + 8);
  v243 += 8;
  v212 = v156;
  v156(v149, v240);
  v246 = v155;
  *(swift_allocObject() + 16) = 1;
  v209 = v105;
  sub_10000772C(v247);
  PipelinePhase.init(mapOutput:)();
  v157 = sub_10000569C();
  *&v211 = sub_10007B9A4(v157, v158);
  sub_10000A4DC();
  v210 = sub_100006070(v159, v160, v161);
  v162 = PipelineTask.andThen<A>(_:)();
  v163 = sub_1000055DC(v248);
  v164(v163, v220);

  v246 = v162;
  v165 = v242;
  sub_1000345E0(v103, v242);
  v166 = (*(v218 + 80) + 16) & ~*(v218 + 80);
  v167 = sub_10000B0A0();
  sub_100034690(v165, v167 + v166);
  type metadata accessor for JSPackageIndex();
  sub_10000772C(&v250);
  PipelinePhase.init(mapOutput:)();
  sub_10007B9A4(&qword_100270550, &unk_1001EFAB0);
  sub_100006070(&qword_100270558, &qword_100270550, &unk_1001EFAB0);
  sub_100023F2C();
  v168 = PipelineTask.andThen<A>(_:)();
  v169 = sub_1000055DC(v251);
  v170(v169, v222);

  v246 = v168;
  sub_10000772C(&v253);
  static PipelinePhase.cacheValueIfSuccessful()();
  v171 = sub_10000569C();
  sub_10007B9A4(v171, v172);
  sub_10000A4DC();
  sub_100006070(v173, v174, v175);
  sub_100023F2C();
  v237 = PipelineTask.andThen<A>(_:)();
  v176 = sub_1000055DC(&v254);
  v177(v176, v225);

  v246 = v236;
  v178 = v241;
  v217(v146, enum case for JetpackBundle.Resource.source(_:), v241);
  v179 = v238;
  static PipelinePhase<>.urlForResource(_:)();
  v215(v146, v178);
  v180 = PipelineTask.andThen<A>(_:)();
  v212(v179, v240);

  v246 = v180;
  v181 = v242;
  sub_1000345E0(v245, v242);
  v182 = sub_10000B0A0();
  sub_100034690(v181, v182 + v166);
  sub_10007B9A4(&qword_100270570, &qword_1001EFAC0);
  v183 = v226;
  PipelinePhase.init(mapOutput:)();
  v184 = PipelineTask.andThen<A>(_:)();
  sub_100007CE0(&v255 + 8);
  v185(v183, v228);

  v246 = v184;
  v186 = v229[0];
  static PipelinePhase.cacheValueIfSuccessful()();
  sub_10007B9A4(&qword_100270578, &qword_1001EFAC8);
  sub_100006070(&qword_100270580, &qword_100270578, &qword_1001EFAC8);
  v245 = PipelineTask.andThen<A>(_:)();
  sub_100007CE0(&v257);
  v187(v186, v230);

  dispatch thunk of MapPipelineTask.run()();
  sub_100002BC0(0, &qword_10026CFB0, OS_dispatch_queue_ptr);
  v188 = enum case for DispatchQoS.QoSClass.default(_:);
  v189 = v232;
  v190 = *(v232 + 104);
  v191 = v231;
  v192 = v233;
  v190(v231, enum case for DispatchQoS.QoSClass.default(_:), v233);
  v193 = static OS_dispatch_queue.global(qos:)();
  v194 = *(v189 + 8);
  v195 = sub_100007F3C();
  v194(v195);
  v196 = sub_100004D94();
  v244 = sub_10018F648(v196, v197, v198, v199);

  sub_10000AD48();
  dispatch thunk of MapPipelineTask.run()();
  v249 = type metadata accessor for SyncTaskScheduler();
  v250 = &protocol witness table for SyncTaskScheduler;
  sub_100017E64(&v246);
  SyncTaskScheduler.init()();
  Promise.map<A>(on:_:)();

  sub_100002C00(&v246);
  v190(v191, v188, v192);
  v200 = static OS_dispatch_queue.global(qos:)();
  v201 = sub_100007F3C();
  v194(v201);
  v202 = sub_100004D94();
  sub_10018F67C(v202, v203, v204, v205);

  sub_10007B9A4(&qword_100270588, &unk_1001EFAD0);
  sub_100006070(&qword_100270590, &qword_100270588, &unk_1001EFAD0);
  v206 = Promise.join<A>(with:)();

  return v206;
}