uint64_t sub_1000BC2C8(uint64_t a1)
{
  sub_10017A310(0x7475626972747461uLL, 0xEA00000000007365, &off_1005087A8, a1, &v5);
  sub_1000BC3E4(&unk_1005087C8);
  if (v6)
  {
    sub_100085D40(&unk_10059DC90);
    if (swift_dynamicCast())
    {
      if (*(v4 + 16) && (v1 = sub_1000EE808(7565161, 0xE300000000000000), (v2 & 1) != 0))
      {
        sub_10009F6D0(*(v4 + 56) + 32 * v1, &v5);

        if (swift_dynamicCast())
        {
          return v4;
        }
      }

      else
      {
      }
    }
  }

  else
  {
    sub_1000BC438(&v5);
  }

  return 0;
}

uint64_t sub_1000BC438(uint64_t a1)
{
  v2 = sub_100085D40(&unk_10059CC50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_1000BC4B8()
{

  v0 = String._bridgeToObjectiveC()();

  return v0;
}

id sub_1000BC7FC()
{
  v1 = v0;
  v2 = SKANUTClient.blindedElement()();
  v4 = v3;
  v5 = Data.base64EncodedString(options:)(0);
  sub_100088CDC(v2, v4);
  v6 = Data.base64EncodedString(options:)(0);
  v7 = sub_1000BD18C();
  if (v8)
  {

    return 0;
  }

  else
  {
    *(v0 + OBJC_IVAR____TtC9appstored26SKANPersistentTokenHandler_timestamp) = v7;
    v10 = v7;
    v11 = type metadata accessor for SKANBlindedData();
    v12 = objc_allocWithZone(v11);
    *&v12[OBJC_IVAR____TtC9appstored15SKANBlindedData_blindedElement] = v5;
    *&v12[OBJC_IVAR____TtC9appstored15SKANBlindedData_privateInput] = v6;
    *&v12[OBJC_IVAR____TtC9appstored15SKANBlindedData_timestamp] = v10;
    v16.receiver = v12;
    v16.super_class = v11;
    v13 = objc_msgSendSuper2(&v16, "init");
    v14 = *(v1 + OBJC_IVAR____TtC9appstored26SKANPersistentTokenHandler_blindedData);
    *(v1 + OBJC_IVAR____TtC9appstored26SKANPersistentTokenHandler_blindedData) = v13;
    v15 = v13;

    return v13;
  }
}

uint64_t sub_1000BC978(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = Data.init(base64Encoded:options:)();
  if (v7 >> 60 == 15)
  {
    goto LABEL_17;
  }

  v8 = v6;
  v32 = v7;
  isa = Data._bridgeToObjectiveC()().super.isa;
  v10 = SecCertificateCreateWithData(0, isa);

  if (!v10)
  {
LABEL_16:
    sub_1000A7F1C(v8, v32);
LABEL_17:
    type metadata accessor for ASDError(0);
    sub_1000EF17C(_swiftEmptyArrayStorage);
    sub_1000BD07C();
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();
    return a1;
  }

  v11 = SecCertificateCopyKey(v10);
  if (!v11)
  {
    v12 = v10;
LABEL_15:

    goto LABEL_16;
  }

  v12 = v11;
  v13 = SecKeyCopyExternalRepresentation(v11, 0);
  if (!v13)
  {

    goto LABEL_15;
  }

  v14 = v13;
  v29 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v30 = v15;

  if (!*(a3 + 16))
  {
    goto LABEL_20;
  }

  v16 = sub_1000EE808(0x746E656D656C65, 0xE700000000000000);
  if ((v17 & 1) == 0)
  {
    goto LABEL_20;
  }

  sub_10009F6D0(*(a3 + 56) + 32 * v16, v31);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_20;
  }

  if (!*(a3 + 16) || (v18 = sub_1000EE808(0x666F6F7270, 0xE500000000000000), (v19 & 1) == 0) || (sub_10009F6D0(*(a3 + 56) + 32 * v18, v31), (swift_dynamicCast() & 1) == 0) || (v27 = Data.init(base64Encoded:options:)(), v21 = v20, , v21 >> 60 == 15))
  {

LABEL_20:
    type metadata accessor for ASDError(0);
    sub_1000EF17C(_swiftEmptyArrayStorage);
    sub_1000BD07C();
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();
    sub_1000A7F1C(v8, v32);

    sub_100088CDC(v29, v30);
    return a1;
  }

  v28 = v21;
  v26 = Data.init(base64Encoded:options:)();
  v24 = v23;

  if (v24 >> 60 == 15)
  {
    sub_1000A7F1C(v27, v28);
    goto LABEL_20;
  }

  v25 = SKANUTClient.finalize(publicInput:evaluatedElement:proof:publicKey:)();
  if (!v3)
  {
    a1 = v25;
  }

  sub_1000A7F1C(v26, v24);
  sub_1000A7F1C(v27, v28);
  sub_100088CDC(v29, v30);

  sub_1000A7F1C(v8, v32);
  return a1;
}

uint64_t type metadata accessor for SKANPersistentTokenHandler()
{
  result = qword_10059C580;
  if (!qword_10059C580)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000BCFCC()
{
  result = type metadata accessor for SKANUTClient();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_1000BD07C()
{
  result = qword_10059B7F0;
  if (!qword_10059B7F0)
  {
    type metadata accessor for ASDError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10059B7F0);
  }

  return result;
}

uint64_t sub_1000BD0D4(_BYTE *__src, _BYTE *a2)
{
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v9 = v3;
  v8 = 0;
  v7 = 0;
  if (__src)
  {
    if (a2 != __src)
    {
      memcpy(&__dst, __src, v2);
      return __dst;
    }
  }

  return result;
}

unint64_t sub_1000BD18C()
{
  v0 = sub_100085D40(&qword_10059CB40);
  __chkstk_darwin(v0 - 8);
  v38 = &v33 - v1;
  v2 = type metadata accessor for Calendar();
  v36 = *(v2 - 8);
  v37 = v2;
  __chkstk_darwin(v2);
  v4 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DateComponents();
  v39 = *(v5 - 8);
  v40 = v5;
  __chkstk_darwin(v5);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Date();
  v34 = *(v8 - 8);
  v35 = v8;
  v9 = __chkstk_darwin(v8);
  v33 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v33 - v11;
  Date.init()();
  sub_100085D40(&qword_10059CED0);
  v13 = type metadata accessor for Calendar.Component();
  v14 = *(v13 - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_100434780;
  v18 = v17 + v16;
  v19 = *(v14 + 104);
  v19(v18, enum case for Calendar.Component.year(_:), v13);
  v19(v18 + v15, enum case for Calendar.Component.month(_:), v13);
  v19(v18 + 2 * v15, enum case for Calendar.Component.day(_:), v13);
  sub_1001890B4(v17);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  static Calendar.current.getter();
  Calendar.dateComponents(_:from:)();

  v20 = v37;
  v21 = *(v36 + 8);
  v21(v4, v37);
  static Calendar.current.getter();
  v22 = v38;
  Calendar.date(from:)();
  v23 = v20;
  v24 = v34;
  v21(v4, v23);
  v25 = v22;
  v26 = v35;
  if ((*(v24 + 48))(v25, 1, v35) == 1)
  {
    (*(v39 + 8))(v7, v40);
    (*(v24 + 8))(v12, v26);
    sub_10008B4D0(v25);
    return 0;
  }

  v28 = v33;
  (*(v24 + 32))(v33, v25, v26);
  Date.timeIntervalSince1970.getter();
  v30 = v29;
  v31 = *(v24 + 8);
  v31(v28, v26);
  (*(v39 + 8))(v7, v40);
  result = (v31)(v12, v26);
  v32 = v30 * 1000.0;
  if (COERCE__INT64(fabs(v30 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v32 <= -1.0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v32 < 1.84467441e19)
  {
    return v32;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_1000BD694(_BYTE *a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 <= 14)
  {
    return sub_1000BD0D4(a1, &a1[a2]);
  }

  type metadata accessor for __DataStorage();
  swift_allocObject();
  __DataStorage.init(bytes:length:)();
  if (a2 < 0x7FFFFFFF)
  {
    return a2 << 32;
  }

  type metadata accessor for Data.RangeReference();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = a2;
  return result;
}

uint64_t sub_1000BD744()
{
  v0 = static Array._allocateBufferUninitialized(minimumCapacity:)();
  *(v0 + 16) = 32;
  *(v0 + 48) = 0u;
  *(v0 + 32) = 0u;
  v1 = (v0 + 32);
  SecRandomCopyBytes(kSecRandomDefault, 0x20uLL, (v0 + 32));
  v2 = sub_1000BD694(v1, 32);

  return v2;
}

uint64_t sub_1000BD7D4()
{
  result = dispatch thunk of JSONEncoder.encode<A>(_:)();
  if (!v0)
  {
    v3 = result;
    v4 = v2;
    v5 = objc_opt_self();
    isa = Data._bridgeToObjectiveC()().super.isa;
    v10 = 0;
    v7 = [v5 JSONObjectWithData:isa options:4 error:&v10];

    v8 = v10;
    if (v7)
    {
      _bridgeAnyObjectToAny(_:)();
      sub_100088CDC(v3, v4);
      return swift_unknownObjectRelease();
    }

    else
    {
      v9 = v8;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      return sub_100088CDC(v3, v4);
    }
  }

  return result;
}

uint64_t sub_1000BD920()
{

  return swift_deallocClassInstance();
}

void sub_1000BD980(double a1)
{
  *(v1 + OBJC_IVAR____TtC9appstored10Throughput_isValid) = 1;
  v2 = *(v1 + OBJC_IVAR____TtC9appstored10Throughput_minValue);
  if (v2 > a1)
  {
    v2 = a1;
  }

  *(v1 + OBJC_IVAR____TtC9appstored10Throughput_minValue) = v2;
  v3 = *(v1 + OBJC_IVAR____TtC9appstored10Throughput_maxValue);
  if (v3 <= a1)
  {
    v3 = a1;
  }

  *(v1 + OBJC_IVAR____TtC9appstored10Throughput_maxValue) = v3;
  v4 = *(v1 + OBJC_IVAR____TtC9appstored10Throughput_avgCount);
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    *(v1 + OBJC_IVAR____TtC9appstored10Throughput_avgCount) = v6;
    *(v1 + OBJC_IVAR____TtC9appstored10Throughput_avgValue) = *(v1 + OBJC_IVAR____TtC9appstored10Throughput_avgValue) + (a1 - *(v1 + OBJC_IVAR____TtC9appstored10Throughput_avgValue)) / v6;
  }
}

id sub_1000BDAA4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Throughput();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1000BDAFC(IOPMAssertionID a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = String._bridgeToObjectiveC()();
  isa = Double._bridgeToObjectiveC()().super.super.isa;
  IOPMAssertionSetProperty(a1, v6, isa);

  static Logger.general.getter();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 67109120;
    *(v10 + 4) = a1;
    _os_log_impl(&_mh_execute_header, v8, v9, "Restarted timeout for power assertion %u", v10, 8u);
  }

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1000BDCA0(IOPMAssertionID a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.general.getter();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 67109120;
    *(v8 + 4) = a1;
    _os_log_impl(&_mh_execute_header, v6, v7, "Releasing power assertion %u", v8, 8u);
  }

  (*(v3 + 8))(v5, v2);
  return IOPMAssertionRelease(a1);
}

uint64_t sub_1000BDDF4(uint64_t a1, uint64_t a2, double a3)
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = AssertionID - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = AssertionID - v11;
  v13 = sub_1000EF17C(_swiftEmptyArrayStorage);
  v33 = &type metadata for String;
  *&v32 = 0xD00000000000001ALL;
  *(&v32 + 1) = 0x800000010044DAC0;
  sub_1000828A8(&v32, v31);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *AssertionID = v13;
  sub_1001B3A08(v31, 0x7954747265737341, 0xEA00000000006570, isUniquelyReferenced_nonNull_native);
  v15 = *AssertionID;
  v33 = &type metadata for String;
  *&v32 = a1;
  *(&v32 + 1) = a2;
  sub_1000828A8(&v32, v31);
  v16 = swift_isUniquelyReferenced_nonNull_native();
  *AssertionID = v15;
  sub_1001B3A08(v31, 0x614E747265737341, 0xEA0000000000656DLL, v16);
  v17 = *AssertionID;
  v33 = &type metadata for Double;
  *&v32 = a3;
  sub_1000828A8(&v32, v31);
  v18 = swift_isUniquelyReferenced_nonNull_native();
  *AssertionID = v17;
  sub_1001B3A08(v31, 0x5374756F656D6954, 0xEE0073646E6F6365, v18);
  v19 = *AssertionID;
  v33 = &type metadata for String;
  *&v32 = 0xD000000000000014;
  *(&v32 + 1) = 0x800000010044DAE0;
  sub_1000828A8(&v32, v31);
  v20 = swift_isUniquelyReferenced_nonNull_native();
  *AssertionID = v19;
  sub_1001B3A08(v31, 0x4174756F656D6954, 0xED00006E6F697463, v20);
  AssertionID[0] = 0;
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v22 = IOPMAssertionCreateWithProperties(isa, AssertionID);

  if (v22)
  {
    static Logger.general.getter();
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 67109120;
      *(v25 + 4) = v22;
      _os_log_impl(&_mh_execute_header, v23, v24, "Failed to obtain a power assertion: %d", v25, 8u);
    }

    (*(v7 + 8))(v10, v6);
    return 0;
  }

  else
  {
    static Logger.general.getter();
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 67109376;
      swift_beginAccess();
      *(v29 + 4) = AssertionID[0];
      *(v29 + 8) = 2048;
      *(v29 + 10) = a3;
      _os_log_impl(&_mh_execute_header, v27, v28, "Obtained power assertion %u with timeout %fs", v29, 0x12u);
    }

    (*(v7 + 8))(v12, v6);
    swift_beginAccess();
    return AssertionID[0];
  }
}

xpc_object_t sub_1000BE498@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = xpc_copy(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1000BE4EC()
{
  v1 = *((swift_isaMask & *v0) + 0x58);
  result = v1();
  if (v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (v3 == 0x7FFFFFFFFFFFFFFFLL)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  result = (v1)(result);
  if (v5)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (!result)
  {
LABEL_9:
    __break(1u);
  }

  return result;
}

id sub_1000BE5B8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ActivityClass();
  return objc_msgSendSuper2(&v2, "dealloc");
}

double sub_1000BE610()
{
  sub_1000BE66C(v1);
  xmmword_10059C7B0 = v7;
  *&qword_10059C7C0 = v8;
  xmmword_10059C7D0 = v9;
  xmmword_10059C770 = v3;
  *&qword_10059C780 = v4;
  xmmword_10059C790 = v5;
  *&qword_10059C7A0 = v6;
  xmmword_10059C730 = v1[0];
  *&qword_10059C740 = v1[1];
  result = *&v2;
  xmmword_10059C750 = v1[2];
  *&qword_10059C760 = v2;
  return result;
}

uint64_t sub_1000BE66C@<X0>(uint64_t *a1@<X8>)
{
  v2 = String.init(cString:)();
  v4 = v3;
  v5 = String.init(cString:)();
  v7 = v6;
  v8 = String.init(cString:)();
  v10 = v9;
  v11 = String.init(cString:)();
  v13 = v12;
  v14 = String.init(cString:)();
  v42 = v15;
  v16 = String.init(cString:)();
  v40 = v17;
  v41 = v16;
  v18 = String.init(cString:)();
  v38 = v19;
  v39 = v18;
  result = XPC_ACTIVITY_REQUIRE_NETWORK_CONNECTIVITY;
  if (!XPC_ACTIVITY_REQUIRE_NETWORK_CONNECTIVITY)
  {
    __break(1u);
    goto LABEL_7;
  }

  v21 = String.init(cString:)();
  v36 = v22;
  v37 = v21;
  result = XPC_ACTIVITY_REQUIRE_INEXPENSIVE_NETWORK_CONNECTIVITY;
  if (!XPC_ACTIVITY_REQUIRE_INEXPENSIVE_NETWORK_CONNECTIVITY)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v34 = v14;
  v35 = v13;
  v23 = v11;
  v24 = v10;
  v25 = v7;
  v26 = v4;
  v32 = String.init(cString:)();
  v33 = v27;
  result = XPC_ACTIVITY_EXPECTED_DURATION;
  if (!XPC_ACTIVITY_EXPECTED_DURATION)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v29 = String.init(cString:)();
  result = XPC_ACTIVITY_SHOULD_WAKE_DEVICE;
  if (XPC_ACTIVITY_SHOULD_WAKE_DEVICE)
  {
    v30 = v28;
    result = String.init(cString:)();
    *a1 = v2;
    a1[1] = v26;
    a1[2] = v5;
    a1[3] = v25;
    a1[4] = v8;
    a1[5] = v24;
    a1[6] = v23;
    a1[7] = v35;
    a1[8] = v34;
    a1[9] = v42;
    a1[10] = v41;
    a1[11] = v40;
    a1[12] = v39;
    a1[13] = v38;
    a1[14] = v37;
    a1[15] = v36;
    a1[16] = v32;
    a1[17] = v33;
    a1[18] = v29;
    a1[19] = v30;
    a1[20] = result;
    a1[21] = v31;
    return result;
  }

LABEL_9:
  __break(1u);
  return result;
}

id sub_1000BE81C()
{
  result = [objc_allocWithZone(type metadata accessor for InstallWebAttributionService()) init];
  qword_1005AB0D0 = result;
  return result;
}

uint64_t sub_1000BEA70(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  v7 = a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_1000BEB44;

  return sub_1000BF560(v6);
}

uint64_t sub_1000BEB44()
{
  v2 = *v1;
  v3 = *(*v1 + 32);
  v4 = *(*v1 + 24);
  v5 = *(*v1 + 16);
  v6 = *v1;

  if (v0)
  {
    if (v3)
    {
      v7 = *(v2 + 32);
      v8 = _convertErrorToNSError(_:)();

      (v7)[2](v7, v8);
      _Block_release(v7);
    }

    else
    {
    }
  }

  else if (v3)
  {
    v9 = *(v2 + 32);
    v9[2](v9, 0);
    _Block_release(v9);
  }

  v10 = *(v6 + 8);

  return v10();
}

uint64_t sub_1000BEE88(uint64_t a1, const void *a2, void *a3)
{
  v3[2] = a3;
  v6 = type metadata accessor for UUID();
  v3[3] = v6;
  v3[4] = *(v6 - 8);
  v7 = swift_task_alloc();
  v3[5] = v7;
  v3[6] = _Block_copy(a2);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = a3;
  v9 = swift_task_alloc();
  v3[7] = v9;
  *v9 = v3;
  v9[1] = sub_1000BEFC8;

  return (sub_1000C0AB4)(v7);
}

uint64_t sub_1000BEFC8()
{
  v2 = v0;
  v3 = *v1;
  v4 = *(*v1 + 48);
  v5 = *(*v1 + 40);
  v6 = *(*v1 + 32);
  v7 = *(*v1 + 24);
  v8 = *(*v1 + 16);
  v9 = *v1;

  (*(v6 + 8))(v5, v7);

  if (v2)
  {
    if (v4)
    {
      v10 = *(v3 + 48);
      v11 = _convertErrorToNSError(_:)();

      (v10)[2](v10, v11);
      _Block_release(v10);
    }

    else
    {
    }
  }

  else if (v4)
  {
    v12 = *(v3 + 48);
    v12[2](v12, 0);
    _Block_release(v12);
  }

  v13 = *(v9 + 8);

  return v13();
}

uint64_t sub_1000BF23C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100086B9C;

  return sub_1000BEE88(v2, v3, v4);
}

uint64_t sub_1000BF2F0(void *a1)
{
  v2 = [a1 version];
  if (!v2)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v2 = String._bridgeToObjectiveC()();
  }

  ASDInstallAttributionVersionCreateFromString();

  v3 = [a1 appAdamId];
  v4 = [v3 longLongValue];

  if (v4 < 1)
  {
    goto LABEL_14;
  }

  v5 = [a1 adNetworkRegistrableDomain];
  if (!v5)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = String._bridgeToObjectiveC()();
  }

  v6 = sub_1002C52B0(v5);

  if (!v6)
  {
    goto LABEL_14;
  }

  v7 = [a1 impressionId];
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  v11 = HIBYTE(v10) & 0xF;
  if ((v10 & 0x2000000000000000) == 0)
  {
    v11 = v8 & 0xFFFFFFFFFFFFLL;
  }

  if (!v11)
  {
    goto LABEL_14;
  }

  v12 = [a1 sourceWebRegistrableDomain];
  if (!v12)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = String._bridgeToObjectiveC()();
  }

  v13 = sub_1002C52B0(v12);

  if (!v13 || (result = static ASDInstallAttributionVersion.< infix(_:_:)(), (result & 1) != 0))
  {
LABEL_14:
    v15 = ASDErrorDomain;
    v16 = String._bridgeToObjectiveC()();
    ASDErrorWithDescription();

    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1000BF560(uint64_t a1)
{
  v1[7] = a1;
  v2 = type metadata accessor for BagService.PermittedDataOrigin();
  v1[8] = v2;
  v1[9] = *(v2 - 8);
  v1[10] = swift_task_alloc();
  v3 = type metadata accessor for AccountClientIdentifier();
  v1[11] = v3;
  v1[12] = *(v3 - 8);
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v4 = type metadata accessor for ClientInfo();
  v1[15] = v4;
  v1[16] = *(v4 - 8);
  v1[17] = swift_task_alloc();
  v5 = type metadata accessor for UUID();
  v1[18] = v5;
  v1[19] = *(v5 - 8);
  v1[20] = swift_task_alloc();
  sub_100085D40(&unk_10059EED0);
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v6 = type metadata accessor for Date();
  v1[23] = v6;
  v1[24] = *(v6 - 8);
  v1[25] = swift_task_alloc();
  v7 = type metadata accessor for Logger();
  v1[26] = v7;
  v1[27] = *(v7 - 8);
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();
  v1[31] = swift_task_alloc();

  return _swift_task_switch(sub_1000BF860, 0, 0);
}

uint64_t sub_1000BF860()
{
  v78 = v0;
  v1 = v0[7];
  static Logger.skAdNetwork.getter();
  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[31];
  v7 = v0[26];
  v8 = v0[27];
  if (v5)
  {
    v9 = v0[7];
    v73 = v9;
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v77 = v12;
    *v10 = 136446466;
    v13 = [v9 sourceWebRegistrableDomain];
    v74 = v7;
    v75 = v6;
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;

    v17 = sub_1001AD0D8(v14, v16, &v77);

    *(v10 + 4) = v17;
    *(v10 + 12) = 2114;
    v18 = [v73 appAdamId];
    *(v10 + 14) = v18;
    *v11 = v18;
    _os_log_impl(&_mh_execute_header, v3, v4, "Received call to perform install attribution from web: %{public}s for app: %{public}@", v10, 0x16u);
    sub_100005518(v11, &unk_10059C250);

    sub_100005A00(v12);

    v19 = *(v8 + 8);
    v19(v75, v74);
  }

  else
  {

    v19 = *(v8 + 8);
    v19(v6, v7);
  }

  v0[32] = v19;
  static Logger.skAdNetwork.getter();
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&_mh_execute_header, v20, v21, "Validating stub web impression config", v22, 2u);
  }

  v23 = v0[30];
  v24 = v0[26];
  v25 = v0[7];

  v19(v23, v24);
  sub_1000BF2F0(v25);
  static Logger.skAdNetwork.getter();
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&_mh_execute_header, v26, v27, "Adding stub web impression", v28, 2u);
  }

  v29 = v0[29];
  v30 = v0[26];
  v31 = v0[7];

  v19(v29, v30);
  v32 = [objc_allocWithZone(InstallAttributionWebParams) init];
  v0[33] = v32;
  v33 = [v31 appAdamId];
  sub_100232B60(v32, v33);

  v34 = [v31 adNetworkRegistrableDomain];
  if (!v34)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v34 = String._bridgeToObjectiveC()();
  }

  v35 = v0[7];
  sub_100232B70(v32, v34);

  v36 = [v35 impressionId];
  if (!v36)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v36 = String._bridgeToObjectiveC()();
  }

  v37 = v0[7];
  sub_10024D43C(v32, v36);

  v38 = [v37 sourceWebRegistrableDomain];
  if (!v38)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v38 = String._bridgeToObjectiveC()();
  }

  v39 = v0[7];
  sub_10024BCA0(v32, v38);

  v40 = [v39 version];
  if (!v40)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v40 = String._bridgeToObjectiveC()();
  }

  v42 = v0[24];
  v41 = v0[25];
  v43 = v0[23];
  sub_100232B80(v32, v40);

  static Date.now.getter();
  Date.timeIntervalSince1970.getter();
  v45 = v44;
  result = (*(v42 + 8))(v41, v43);
  v47 = v45 * 1000.0;
  if (COERCE__INT64(fabs(v45 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_29;
  }

  if (v47 <= -1.0)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (v47 >= 1.84467441e19)
  {
LABEL_30:
    __break(1u);
    return result;
  }

  v48 = v0[7];
  isa = UInt64._bridgeToObjectiveC()().super.super.isa;
  sub_100232B90(v32, isa);

  sub_1002AFCF4(v32, [v48 attributionContext]);
  v50 = [v48 privateBrowsingSessionId];
  if (v50)
  {
    v51 = v50;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v52 = 0;
  }

  else
  {
    v52 = 1;
  }

  v54 = v0[21];
  v53 = v0[22];
  v55 = v0[18];
  v56 = v0[19];
  (*(v56 + 56))(v54, v52, 1, v55);
  sub_1000C1000(v54, v53);
  v57 = (*(v56 + 48))(v53, 1, v55);
  v58 = v0[22];
  v76 = v32;
  if (v57)
  {
    sub_100005518(v58, &unk_10059EED0);
    v59 = 0;
  }

  else
  {
    v61 = v0[19];
    v60 = v0[20];
    v62 = v0[18];
    v63 = v0[22];
    (*(v61 + 16))(v60, v58, v62);
    sub_100005518(v63, &unk_10059EED0);
    UUID.uuidString.getter();
    (*(v61 + 8))(v60, v62);
    v59 = String._bridgeToObjectiveC()();
  }

  v65 = v0[16];
  v64 = v0[17];
  v67 = v0[14];
  v66 = v0[15];
  v68 = v0[12];
  v69 = v0[13];
  v70 = v0[11];
  sub_100232BB0(v76, v59);

  static AccountClientIdentifier.production.getter();
  (*(v68 + 16))(v69, v67, v70);
  ClientInfo.init(identifier:name:version:accountClientIdentifier:)();
  (*(v68 + 8))(v67, v70);
  v0[34] = sub_1000D6694(v64);
  (*(v65 + 8))(v64, v66);
  static BagService.PermittedDataOrigin.networkAndPersistence.getter();
  v71 = swift_task_alloc();
  v0[35] = v71;
  *v71 = v0;
  v71[1] = sub_1000C02FC;
  v72 = v0[10];

  return sub_1000C5300((v0 + 2), 0, 0, v72);
}

uint64_t sub_1000C02FC()
{
  v1 = *(*v0 + 272);
  v2 = *(*v0 + 80);
  v3 = *(*v0 + 72);
  v4 = *(*v0 + 64);

  (*(v3 + 8))(v2, v4);

  return _swift_task_switch(sub_1000C046C, 0, 0);
}

uint64_t sub_1000C046C()
{
  v1 = *(v0 + 264);
  objc_opt_self();
  v2 = sub_1003A4EE0();
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v5 = sub_100005B60((v0 + 16), v3);
  v6 = sub_1000C56C0(v3, v4, v5);
  v7 = sub_1003A91FC(v2, v1, v6);

  v8 = *(v0 + 264);
  if (v7)
  {
    swift_willThrow();

    sub_100005A00(v0 + 16);
    *(v0 + 288) = v7;
    static Logger.skAdNetwork.getter();
    swift_errorRetain();
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 138543362;
      swift_errorRetain();
      v13 = _swift_stdlib_bridgeErrorToNSError();
      *(v11 + 4) = v13;
      *v12 = v13;
      _os_log_impl(&_mh_execute_header, v9, v10, "Encountered error while trying to add web impression: %{public}@", v11, 0xCu);
      sub_100005518(v12, &unk_10059C250);
    }

    v14 = *(v0 + 256);
    v15 = *(v0 + 224);
    v16 = *(v0 + 208);
    v17 = *(v0 + 56);

    v14(v15, v16);
    v18 = [v17 adNetworkRegistrableDomain];
    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;

    v22 = [v17 version];
    v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v24;

    v26 = _convertErrorToNSError(_:)();
    v27 = sub_1001A8148(0x657A696C616E6966, 0xE900000000000064, v19, v21, v23, v25, v26);
    *(v0 + 296) = v27;

    if (qword_10059B4B8 != -1)
    {
      swift_once();
    }

    v28 = [*(v0 + 56) appAdamId];
    v29 = [v28 longLongValue];

    v30 = swift_task_alloc();
    *(v0 + 304) = v30;
    *v30 = v0;
    v30[1] = sub_1000C08A4;

    return sub_1000DBF78(v27, v29);
  }

  else
  {

    sub_100005A00(v0 + 16);

    v32 = *(v0 + 8);

    return v32();
  }
}

uint64_t sub_1000C08A4()
{

  return _swift_task_switch(sub_1000C09A0, 0, 0);
}

uint64_t sub_1000C09A0()
{
  v1 = *(v0 + 296);
  swift_willThrow();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1000C0AB4(uint64_t a1)
{
  v1[3] = a1;
  v2 = type metadata accessor for UUID();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();
  v3 = type metadata accessor for Logger();
  v1[7] = v3;
  v1[8] = *(v3 - 8);
  v1[9] = swift_task_alloc();

  return _swift_task_switch(sub_1000C0BFC, 0, 0);
}

uint64_t sub_1000C0BFC()
{
  v32 = v0;
  v2 = v0[5];
  v1 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  static Logger.skAdNetwork.getter();
  (*(v2 + 16))(v1, v4, v3);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  v7 = os_log_type_enabled(v5, v6);
  v9 = v0[8];
  v8 = v0[9];
  v10 = v0[6];
  v11 = v0[7];
  v13 = v0[4];
  v12 = v0[5];
  if (v7)
  {
    v30 = v0[7];
    v14 = swift_slowAlloc();
    v28 = v6;
    v15 = swift_slowAlloc();
    v31 = v15;
    *v14 = 136315138;
    sub_1000C0EF4();
    v16 = dispatch thunk of CustomStringConvertible.description.getter();
    v29 = v8;
    v18 = v17;
    (*(v12 + 8))(v10, v13);
    v19 = sub_1001AD0D8(v16, v18, &v31);

    *(v14 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v5, v28, "Removing web impression params from Private Browsing session id: %s", v14, 0xCu);
    sub_100005A00(v15);

    (*(v9 + 8))(v29, v30);
  }

  else
  {

    (*(v12 + 8))(v10, v13);
    (*(v9 + 8))(v8, v11);
  }

  objc_opt_self();
  v20 = sub_1003A4EE0();
  UUID.uuidString.getter();
  v21 = String._bridgeToObjectiveC()();

  v0[2] = 0;
  v22 = sub_1003A96AC(v20, v21, v0 + 2);

  v23 = v0[2];
  if (v22)
  {
    v24 = v23;
  }

  else
  {
    v26 = v23;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  v25 = v0[1];

  return v25();
}

unint64_t sub_1000C0EF4()
{
  result = qword_10059C3E8;
  if (!qword_10059C3E8)
  {
    type metadata accessor for UUID();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10059C3E8);
  }

  return result;
}

uint64_t sub_1000C0F4C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100085384;

  return sub_1000BEA70(v2, v3, v4);
}

uint64_t sub_1000C1000(uint64_t a1, uint64_t a2)
{
  v4 = sub_100085D40(&unk_10059EED0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000C1144(uint64_t result, void *a2, const void **a3, uint64_t a4)
{
  if (!result)
  {
    v11[8] = v4;
    v11[9] = v5;
    *a2 = 16400;
    v8 = swift_allocObject();
    *(v8 + 16) = a4;
    v11[4] = sub_1000C14A4;
    v11[5] = v8;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 1107296256;
    v11[2] = sub_1000C1214;
    v11[3] = &unk_10050BA48;
    v9 = _Block_copy(v11);
    v10 = *a3;
    *a3 = v9;
    _Block_release(v10);
  }

  return result;
}

void sub_1000C1214(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_1000C127C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a1 + 32);

  v7(a2, a3, a4);
}

uint64_t sub_1000C148C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1000C14A8(uint64_t a1)
{
  _StringGuts.grow(_:)(119);
  v2._countAndFlagsBits = 0xD00000000000001BLL;
  v2._object = 0x800000010044DF50;
  String.append(_:)(v2);
  v3._countAndFlagsBits = 0x5F72656E6E616B73;
  v3._object = 0xEF736569726F7473;
  String.append(_:)(v3);
  v4._countAndFlagsBits = 665632;
  v4._object = 0xE300000000000000;
  String.append(_:)(v4);
  v5._countAndFlagsBits = 0x64695F79726F7473;
  v5._object = 0xE800000000000000;
  String.append(_:)(v5);
  v6._countAndFlagsBits = 0xA2C5458455420;
  v6._object = 0xE700000000000000;
  String.append(_:)(v6);
  v7._object = 0x800000010044DF70;
  v7._countAndFlagsBits = 0xD000000000000016;
  String.append(_:)(v7);
  v8._countAndFlagsBits = 0x52454745544E4920;
  v8._object = 0xEA00000000000A2CLL;
  String.append(_:)(v8);
  v9._countAndFlagsBits = 0xD000000000000010;
  v9._object = 0x800000010044DF90;
  String.append(_:)(v9);
  v10._countAndFlagsBits = 0x52454745544E4920;
  v10._object = 0xEA00000000000A2CLL;
  String.append(_:)(v10);
  v11._countAndFlagsBits = 0xD000000000000011;
  v11._object = 0x800000010044DFB0;
  String.append(_:)(v11);
  v12._countAndFlagsBits = 0x52454745544E4920;
  v12._object = 0xEA00000000000A2CLL;
  String.append(_:)(v12);
  v13._countAndFlagsBits = 0x5F676E69646E6570;
  v13._object = 0xEE0073746E657665;
  String.append(_:)(v13);
  v14._countAndFlagsBits = 0x550A2C424F4C4220;
  v14._object = 0xEE0028455551494ELL;
  String.append(_:)(v14);
  v15._object = 0x800000010044DF70;
  v15._countAndFlagsBits = 0xD000000000000016;
  String.append(_:)(v15);
  v16._countAndFlagsBits = 0xD000000000000018;
  v16._object = 0x800000010044DFD0;
  String.append(_:)(v16);
  v17 = String._bridgeToObjectiveC()();

  sub_1003BA1F0(a1, v17);
}

Swift::Int sub_1000C16F8()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_1000C176C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t *sub_1000C17B0@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result > 2;
  if (*result > 2)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  return result;
}

uint64_t (*sub_1000C1988())(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v1 = v0 + OBJC_IVAR____TtC9appstored12AssetPromise__progress;
  os_unfair_lock_lock((v0 + OBJC_IVAR____TtC9appstored12AssetPromise__progress));
  v2 = *(v1 + 8);
  if (v2)
  {
    v3 = *(v1 + 16);
    v4 = swift_allocObject();
    *(v4 + 16) = v2;
    *(v4 + 24) = v3;

    os_unfair_lock_unlock(v1);
    v5 = swift_allocObject();
    *(v5 + 16) = sub_1000C4A9C;
    *(v5 + 24) = v4;
    return sub_1000C4AD0;
  }

  else
  {
    os_unfair_lock_unlock(v1);
    return 0;
  }
}

uint64_t sub_1000C1A4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a1 + 32);

  v7(a2, a3, a4);
}

uint64_t sub_1000C1BAC()
{
  v1 = type metadata accessor for CancellationError();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0 + OBJC_IVAR____TtC9appstored12AssetPromise_state;
  os_unfair_lock_lock((v0 + OBJC_IVAR____TtC9appstored12AssetPromise_state));
  v6 = *(v5 + 48);
  if ((v6 & 0xC000) != 0x8000)
  {
    goto LABEL_4;
  }

  v7 = *(v5 + 8);
  v8 = *(v5 + 16);
  v10 = *(v5 + 24);
  v9 = *(v5 + 32);
  v11 = *(v5 + 40);
  if ((v6 & 0x100) == 0)
  {
    sub_1000C4690(v7, *(v5 + 16), *(v5 + 24), *(v5 + 32), *(v5 + 40), v6, 0);
    swift_unknownObjectRelease();

LABEL_4:
    v12 = 0;
    goto LABEL_5;
  }

  v14[1] = *(v5 + 8);
  sub_1000C4690(v7, v8, v10, v9, v11, v6, 1);
  sub_100085D40(&unk_10059DE80);
  v12 = swift_dynamicCast();
  if (v12)
  {
    (*(v2 + 8))(v4, v1);
  }

LABEL_5:
  os_unfair_lock_unlock(v5);
  return v12;
}

void sub_1000C1E94(void **a1, void (*a2)(void *), uint64_t a3)
{
  v24 = a3;
  v25 = a2;
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = a1[4];
  v22 = a1[3];
  v23 = v7;
  v8 = type metadata accessor for CocoaError.Code();
  __chkstk_darwin(v8 - 8);
  v9 = type metadata accessor for CocoaError();
  v21 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CancellationError();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 41))
  {
    v29 = v4;
    swift_errorRetain();
    sub_100085D40(&unk_10059DE80);
    if (swift_dynamicCast())
    {
      (*(v13 + 8))(v15, v12);
      static CocoaError.Code.userCancelled.getter();
      sub_1000EF17C(_swiftEmptyArrayStorage);
      sub_1000C4A20(&qword_10059C9C8, &type metadata accessor for CocoaError);
      _BridgedStoredNSError.init(_:userInfo:)();
      v16 = CocoaError._nsError.getter();
      (*(v21 + 8))(v11, v9);
      v25(v16);
    }

    else
    {
      v25(v4);
    }
  }

  else
  {
    v26 = v5;
    swift_unknownObjectRetain();
    swift_errorRetain();
    v17 = v23;

    v18 = v22;
    v19 = v22;
    sub_100005518(&v26, &qword_10059C988);
    v27 = v6;
    sub_100005518(&v27, &qword_10059C990);
    v28 = v18;
    sub_100005518(&v28, &qword_10059C998);
    v29 = v17;
    sub_100005518(&v29, &unk_10059C9A0);
  }
}

void sub_1000C21E8(uint64_t *a1, void (*a2)(void, id))
{
  v4 = *a1;
  v5 = type metadata accessor for CancellationError();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  if (*(a1 + 41))
  {
    v14 = v4;
    swift_errorRetain();
    sub_100085D40(&unk_10059DE80);
    if (swift_dynamicCast())
    {
      (*(v6 + 8))(v8, v5);
      v9 = [objc_allocWithZone(NSError) initWithDomain:NSCocoaErrorDomain code:3072 userInfo:0];
      a2(0, v9);
    }

    else
    {
      a2(0, v4);
    }
  }

  else
  {
    v14 = v4;
    v15 = *(a1 + 1);
    v16 = *(a1 + 3);
    v17 = *(a1 + 40);
    sub_1000C4718();
    v18 = v15;
    v19 = v16;
    sub_1000044A4(&v18, v13, &qword_10059C988);
    sub_1000044A4(&v18 + 8, v13, &qword_10059C990);
    sub_1000044A4(&v19, v13, &qword_10059C998);
    sub_1000044A4(&v19 + 8, v13, &unk_10059C9A0);
    v10 = a2;
    v11 = sub_1000BC0C8(&v14);
    sub_100005518(&v18, &qword_10059C988);
    sub_100005518(&v18 + 8, &qword_10059C990);
    sub_100005518(&v19, &qword_10059C998);
    sub_100005518(&v19 + 8, &unk_10059C9A0);
    v10(v11, 0);
  }
}

void sub_1000C24C0(void *a1, int a2, void *aBlock, void (*a4)(void))
{
  v6 = _Block_copy(aBlock);
  _Block_copy(v6);
  v7 = a1;
  a4();
  _Block_release(v6);
  _Block_release(v6);
}

void sub_1000C253C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = _convertErrorToNSError(_:)();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

uint64_t sub_1000C25AC(uint64_t result, void (*a2)(id))
{
  if ((*(result + 41) & 1) == 0)
  {
    v6 = *result;
    v7 = *(result + 8);
    v8 = *(result + 24);
    v9 = *(result + 40);
    v2 = result;
    sub_1000C4718();
    v10 = v7;
    v11 = v8;
    sub_1000044A4(v2, v5, &qword_10059C9B0);
    sub_1000044A4(&v10, v5, &qword_10059C988);
    sub_1000044A4(&v10 + 8, v5, &qword_10059C990);
    sub_1000044A4(&v11, v5, &qword_10059C998);
    sub_1000044A4(&v11 + 8, v5, &unk_10059C9A0);
    v3 = sub_1000BC0C8(&v6);
    sub_100005518(&v10, &qword_10059C988);
    sub_100005518(&v10 + 8, &qword_10059C990);
    sub_100005518(&v11, &qword_10059C998);
    sub_100005518(&v11 + 8, &unk_10059C9A0);
    a2(v3);

    sub_100005518(&v10, &qword_10059C988);
    sub_100005518(&v10 + 8, &qword_10059C990);
    sub_100005518(&v11, &qword_10059C998);
    return sub_100005518(&v11 + 8, &unk_10059C9A0);
  }

  return result;
}

void sub_1000C2880(__int128 *a1)
{
  v3 = (v1 + OBJC_IVAR____TtC9appstored12AssetPromise_state);
  os_unfair_lock_lock(v3);
  sub_1000C2B6C(&v3[2], a1, &v10);
  os_unfair_lock_unlock(v3);
  v4 = v10;
  v5 = *(v10 + 16);
  if (v5)
  {
    v6 = 0;
    v7 = v10 + 40;
    while (v6 < *(v4 + 16))
    {
      ++v6;
      v8 = *(v7 - 8);
      v9 = a1[1];
      v10 = *a1;
      v11[0] = v9;
      *(v11 + 10) = *(a1 + 26);

      v8(&v10);

      v7 += 16;
      if (v5 == v6)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_5:
  }
}

uint64_t sub_1000C2AE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return _swift_task_switch(sub_1000C2B04, 0, 0);
}

uint64_t sub_1000C2B04()
{
  (*(v0 + 16))(*(v0 + 32));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000C2B6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v30 = a3;
  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = *(a2 + 24);
  v27 = *(a2 + 16);
  v28 = v7;
  v29 = *(a2 + 32);
  v8 = *(a2 + 40);
  v9 = *(a2 + 41);
  v10 = type metadata accessor for CancellationError();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;
  v15 = *(a1 + 40);
  if (!(v15 >> 14))
  {
    sub_1000C3180(v14, *(a1 + 8), *(a1 + 16), *(a1 + 24), *(a1 + 32), v15);
    if (v9)
    {
      v18 = 256;
    }

    else
    {
      v18 = 0;
    }

    *a1 = v5;
    *(a1 + 8) = v6;
    v19 = v28;
    *(a1 + 16) = v27;
    *(a1 + 24) = v19;
    v20 = v30;
    *(a1 + 32) = v29;
    *(a1 + 40) = v18 | v8 | 0x8000;
    *v20 = _swiftEmptyArrayStorage;
    return sub_1000044A4(a2, v31, &qword_10059C9B0);
  }

  if (v15 >> 14 == 1)
  {
    if (v9)
    {
      v16 = 256;
    }

    else
    {
      v16 = 0;
    }

    *a1 = v5;
    *(a1 + 8) = v6;
    v17 = v28;
    *(a1 + 16) = v27;
    *(a1 + 24) = v17;
    *(a1 + 32) = v29;
    *(a1 + 40) = v16 | v8 | 0x8000;
    *v30 = v14;
    return sub_1000044A4(a2, v31, &qword_10059C9B0);
  }

  if ((v9 & 1) == 0)
  {
    v32 = v6;
    swift_unknownObjectRetain();
    v22 = v27;
    swift_errorRetain();
    v23 = v29;

    v24 = v28;
    v25 = v28;
    sub_100005518(&v32, &qword_10059C988);
    v33 = v22;
    sub_100005518(&v33, &qword_10059C990);
    v34 = v24;
    sub_100005518(&v34, &qword_10059C998);
    v31[0] = v23;
    result = sub_100005518(v31, &unk_10059C9A0);
    __break(1u);
    goto LABEL_17;
  }

  v31[0] = v5;
  swift_errorRetain();
  sub_100085D40(&unk_10059DE80);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
LABEL_17:
    __break(1u);
    return result;
  }

  result = (*(v11 + 8))(v13, v10);
  *v30 = _swiftEmptyArrayStorage;
  return result;
}

uint64_t type metadata accessor for AssetPromise()
{
  result = qword_10059C968;
  if (!qword_10059C968)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000C2F2C()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1000C2FD0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000C3018(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_1000C307C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 26) = *(a2 + 26);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1000C3090(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7E && *(a1 + 42))
  {
    return (*a1 + 126);
  }

  v3 = ((*(a1 + 40) >> 7) & 0x7C | (*(a1 + 40) >> 14)) ^ 0x7F;
  if (v3 >= 0x7D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1000C30E4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 42) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 42) = 0;
    }

    if (a2)
    {
      *(result + 32) = 0;
      *result = 0u;
      *(result + 16) = 0u;
      *(result + 40) = (((-a2 >> 2) & 0x1F) - 32 * a2) << 9;
    }
  }

  return result;
}

uint64_t sub_1000C3180(uint64_t result, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  if ((a6 >> 14) > 1u)
  {
    if (a6 >> 14 == 2)
    {
      return sub_1000C31B0(result, a2, a3, a4, a5, a6, BYTE1(a6) & 1);
    }
  }

  else if (a6 >> 14)
  {
  }

  else
  {
  }

  return result;
}

uint64_t sub_1000C31B0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, char a7)
{
  if (a7)
  {
  }

  else
  {
    swift_unknownObjectRelease();
  }
}

id sub_1000C321C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v8 = &v3[OBJC_IVAR____TtC9appstored12AssetPromise__progress];
  *v8 = 0;
  *(v8 + 1) = 0;
  *(v8 + 2) = 0;
  v9 = OBJC_IVAR____TtC9appstored12AssetPromise_requestID;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  (*(v11 + 16))(&v3[v9], a1, v10);
  v12 = &v3[OBJC_IVAR____TtC9appstored12AssetPromise_state];
  *v12 = 0;
  *(v12 + 1) = a2;
  *(v12 + 2) = a3;
  *(v12 + 4) = 0;
  *(v12 + 5) = 0;
  *(v12 + 3) = 0;
  *(v12 + 24) = 0;
  v15.receiver = v3;
  v15.super_class = ObjectType;

  v13 = objc_msgSendSuper2(&v15, "init");
  (*(v11 + 8))(a1, v10);
  return v13;
}

void sub_1000C3340(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v21 = a1[3];
  v22 = a1[4];
  v23 = a2;
  v6 = type metadata accessor for CocoaError.Code();
  __chkstk_darwin(v6 - 8);
  v7 = type metadata accessor for CocoaError();
  v20 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for CancellationError();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 41))
  {
    v27 = v3;
    swift_errorRetain();
    sub_100085D40(&unk_10059DE80);
    if (swift_dynamicCast())
    {
      (*(v11 + 8))(v13, v10);
      static CocoaError.Code.userCancelled.getter();
      sub_1000EF17C(_swiftEmptyArrayStorage);
      sub_1000C4A20(&qword_10059C9C8, &type metadata accessor for CocoaError);
      _BridgedStoredNSError.init(_:userInfo:)();
      v14 = CocoaError._nsError.getter();
      (*(v20 + 8))(v9, v7);
      v15 = _convertErrorToNSError(_:)();
      (*(v23 + 16))(v23, v15);
    }

    else
    {
      v19 = _convertErrorToNSError(_:)();
      (*(v23 + 16))(v23, v19);
    }
  }

  else
  {
    v24 = v4;
    swift_unknownObjectRetain();
    swift_errorRetain();
    v16 = v22;

    v17 = v21;
    v18 = v21;
    sub_100005518(&v24, &qword_10059C988);
    v25 = v5;
    sub_100005518(&v25, &qword_10059C990);
    v26 = v17;
    sub_100005518(&v26, &qword_10059C998);
    v27 = v16;
    sub_100005518(&v27, &unk_10059C9A0);
  }
}

uint64_t sub_1000C36A4(char *a1, const void *a2)
{
  v4 = sub_100085D40(&qword_10059C3E0);
  __chkstk_darwin(v4 - 8);
  v6 = &v31 - v5;
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_1000C4978;
  *(v8 + 24) = v7;
  v9 = &a1[OBJC_IVAR____TtC9appstored12AssetPromise_state];
  _Block_copy(a2);
  v34 = v7;

  os_unfair_lock_lock(v9);
  v10 = *(v9 + 2);
  v11 = *(v9 + 1);
  v13 = *(v9 + 3);
  v12 = *(v9 + 4);
  v14 = *(v9 + 24);
  if (!(v14 >> 14))
  {
    v31 = *(v9 + 5);
    v32 = v13;
    v33 = v10;
    v19 = v12;
    v20 = type metadata accessor for TaskPriority();
    (*(*(v20 - 8) + 56))(v6, 1, 1, v20);
    v21 = swift_allocObject();
    v21[2] = 0;
    v21[3] = 0;
    v22 = v33;
    v21[4] = v11;
    v21[5] = v22;
    v21[6] = a1;
    v23 = v13;
    v24 = v31;
    sub_1000C4870(v11, v22, v23, v19, v31, v14);
    v25 = a1;
    sub_10019F02C(0, 0, v6, &unk_100435860, v21);

    sub_100085D40(&qword_10059C9C0);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_100434480;
    v27 = swift_allocObject();
    *(v27 + 16) = sub_1000C49D0;
    *(v27 + 24) = v8;
    *(v26 + 32) = sub_1000C4BAC;
    *(v26 + 40) = v27;

    sub_1000C3180(v11, v33, v32, v19, v24, v14);
    v11 = v26;
LABEL_9:
    *(v9 + 1) = v11;
    *(v9 + 1) = 0u;
    *(v9 + 2) = 0u;
    *(v9 + 24) = 0x4000;
    os_unfair_lock_unlock(v9);
  }

  if (v14 >> 14 == 1)
  {
    v15 = swift_allocObject();
    *(v15 + 16) = sub_1000C49D0;
    *(v15 + 24) = v8;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v11 = sub_1001AC93C(0, v11[2] + 1, 1, v11);
    }

    v17 = v11[2];
    v16 = v11[3];
    if (v17 >= v16 >> 1)
    {
      v11 = sub_1001AC93C((v16 > 1), v17 + 1, 1, v11);
    }

    v11[2] = v17 + 1;
    v18 = &v11[2 * v17];
    v18[4] = sub_1000C4BAC;
    v18[5] = v15;
    goto LABEL_9;
  }

  v29 = *(v9 + 4);
  v30 = *(v9 + 5);
  sub_1000C4690(*(v9 + 1), *(v9 + 2), *(v9 + 3), v29, v30, *(v9 + 24), BYTE1(v14) & 1);
  os_unfair_lock_unlock(v9);
  v35[0] = v11;
  v35[1] = v10;
  v35[2] = v13;
  v35[3] = v29;
  v35[4] = v30;
  v36 = v14 & 0x1FF;
  _Block_copy(a2);
  sub_1000C3340(v35, a2);
  _Block_release(a2);

  sub_1000C4700(v11, v10, v13, v29, v30, v14 & 0x1FF);
}

void sub_1000C3ABC(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = type metadata accessor for CancellationError();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v12[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  if (*(a1 + 41))
  {
    v13 = v4;
    swift_errorRetain();
    sub_100085D40(&unk_10059DE80);
    if (swift_dynamicCast())
    {
      (*(v6 + 8))(v8, v5);
      v9 = [objc_allocWithZone(NSError) initWithDomain:NSCocoaErrorDomain code:3072 userInfo:0];
      v10 = _convertErrorToNSError(_:)();
      (*(a2 + 16))(a2, 0, v10);
    }

    else
    {
      v10 = _convertErrorToNSError(_:)();
      (*(a2 + 16))(a2, 0, v10);
    }
  }

  else
  {
    v13 = v4;
    v14 = *(a1 + 1);
    v15 = *(a1 + 3);
    v16 = *(a1 + 40);
    sub_1000C4718();
    v17 = v14;
    v18 = v15;
    sub_1000044A4(&v17, v12, &qword_10059C988);
    sub_1000044A4(&v17 + 8, v12, &qword_10059C990);
    sub_1000044A4(&v18, v12, &qword_10059C998);
    sub_1000044A4(&v18 + 8, v12, &unk_10059C9A0);
    v10 = sub_1000BC0C8(&v13);
    sub_100005518(&v17, &qword_10059C988);
    sub_100005518(&v17 + 8, &qword_10059C990);
    sub_100005518(&v18, &qword_10059C998);
    sub_100005518(&v18 + 8, &unk_10059C9A0);
    (*(a2 + 16))(a2, v10, 0);
  }
}

uint64_t sub_1000C3D90(char *a1, const void *a2)
{
  v4 = sub_100085D40(&qword_10059C3E0);
  __chkstk_darwin(v4 - 8);
  v6 = &v31 - v5;
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_1000C48A0;
  *(v8 + 24) = v7;
  v9 = &a1[OBJC_IVAR____TtC9appstored12AssetPromise_state];
  _Block_copy(a2);
  v34 = v7;

  os_unfair_lock_lock(v9);
  v10 = *(v9 + 2);
  v11 = *(v9 + 1);
  v13 = *(v9 + 3);
  v12 = *(v9 + 4);
  v14 = *(v9 + 24);
  if (!(v14 >> 14))
  {
    v31 = *(v9 + 5);
    v32 = v13;
    v33 = v10;
    v19 = v12;
    v20 = type metadata accessor for TaskPriority();
    (*(*(v20 - 8) + 56))(v6, 1, 1, v20);
    v21 = swift_allocObject();
    v21[2] = 0;
    v21[3] = 0;
    v22 = v33;
    v21[4] = v11;
    v21[5] = v22;
    v21[6] = a1;
    v23 = v13;
    v24 = v31;
    sub_1000C4870(v11, v22, v23, v19, v31, v14);
    v25 = a1;
    sub_10019F02C(0, 0, v6, &unk_100435858, v21);

    sub_100085D40(&qword_10059C9C0);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_100434480;
    v27 = swift_allocObject();
    *(v27 + 16) = sub_1000C48A8;
    *(v27 + 24) = v8;
    *(v26 + 32) = sub_1000C4BAC;
    *(v26 + 40) = v27;

    sub_1000C3180(v11, v33, v32, v19, v24, v14);
    v11 = v26;
LABEL_9:
    *(v9 + 1) = v11;
    *(v9 + 1) = 0u;
    *(v9 + 2) = 0u;
    *(v9 + 24) = 0x4000;
    os_unfair_lock_unlock(v9);
  }

  if (v14 >> 14 == 1)
  {
    v15 = swift_allocObject();
    *(v15 + 16) = sub_1000C48A8;
    *(v15 + 24) = v8;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v11 = sub_1001AC93C(0, v11[2] + 1, 1, v11);
    }

    v17 = v11[2];
    v16 = v11[3];
    if (v17 >= v16 >> 1)
    {
      v11 = sub_1001AC93C((v16 > 1), v17 + 1, 1, v11);
    }

    v11[2] = v17 + 1;
    v18 = &v11[2 * v17];
    v18[4] = sub_1000C4BAC;
    v18[5] = v15;
    goto LABEL_9;
  }

  v29 = *(v9 + 4);
  v30 = *(v9 + 5);
  sub_1000C4690(*(v9 + 1), *(v9 + 2), *(v9 + 3), v29, v30, *(v9 + 24), BYTE1(v14) & 1);
  os_unfair_lock_unlock(v9);
  v35[0] = v11;
  v35[1] = v10;
  v35[2] = v13;
  v35[3] = v29;
  v35[4] = v30;
  v36 = v14 & 0x1FF;
  _Block_copy(a2);
  sub_1000C3ABC(v35, a2);
  _Block_release(a2);

  sub_1000C4700(v11, v10, v13, v29, v30, v14 & 0x1FF);
}

void sub_1000C41A8(char *a1, void (**a2)(void, void))
{
  v4 = sub_100085D40(&qword_10059C3E0);
  __chkstk_darwin(v4 - 8);
  v6 = &v38 - v5;
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  v8 = swift_allocObject();
  v8[2] = sub_100006074;
  v8[3] = v7;
  v9 = &a1[OBJC_IVAR____TtC9appstored12AssetPromise_state];
  _Block_copy(a2);

  os_unfair_lock_lock(v9);
  v10 = *(v9 + 2);
  v11 = *(v9 + 1);
  v12 = *(v9 + 3);
  v13 = *(v9 + 4);
  v14 = *(v9 + 5);
  v15 = *(v9 + 24);
  if (!(v15 >> 14))
  {
    v41 = v8;
    v42 = v7;
    v20 = v14;
    v21 = v12;
    v39 = v12;
    v40 = v13;
    v43 = v10;
    v22 = v13;
    v23 = type metadata accessor for TaskPriority();
    (*(*(v23 - 8) + 56))(v6, 1, 1, v23);
    v24 = swift_allocObject();
    v24[2] = 0;
    v24[3] = 0;
    v25 = v43;
    v24[4] = v11;
    v24[5] = v25;
    v24[6] = a1;
    v26 = v21;
    v27 = v41;
    sub_1000C4870(v11, v25, v26, v22, v20, v15);
    v28 = a1;
    sub_10019F02C(0, 0, v6, &unk_100435848, v24);

    sub_100085D40(&qword_10059C9C0);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_100434480;
    v30 = swift_allocObject();
    *(v30 + 16) = sub_1000C4688;
    *(v30 + 24) = v27;
    *(v29 + 32) = sub_1000C4BAC;
    *(v29 + 40) = v30;

    sub_1000C3180(v11, v43, v39, v40, v20, v15);
    v11 = v29;
LABEL_9:
    *(v9 + 1) = v11;
    *(v9 + 1) = 0u;
    *(v9 + 2) = 0u;
    *(v9 + 24) = 0x4000;
    os_unfair_lock_unlock(v9);

    return;
  }

  if (v15 >> 14 == 1)
  {
    v16 = swift_allocObject();
    *(v16 + 16) = sub_1000C4688;
    *(v16 + 24) = v8;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v11 = sub_1001AC93C(0, v11[2] + 1, 1, v11);
    }

    v18 = v11[2];
    v17 = v11[3];
    if (v18 >= v17 >> 1)
    {
      v11 = sub_1001AC93C((v17 > 1), v18 + 1, 1, v11);
    }

    v11[2] = v18 + 1;
    v19 = &v11[2 * v18];
    v19[4] = sub_1000C4764;
    v19[5] = v16;
    goto LABEL_9;
  }

  v31 = *(v9 + 1);
  v32 = *(v9 + 2);
  v33 = *(v9 + 3);
  v34 = v33;
  v35 = *(v9 + 4);
  v42 = *(v9 + 5);
  sub_1000C4690(v31, v32, v33, v35, v42, v15, BYTE1(v15) & 1);
  os_unfair_lock_unlock(v9);
  if ((v15 >> 8))
  {
    sub_1000C4700(v11, v10, v34, v35, v42, v15 & 0x1FF);
  }

  else
  {
    v44[0] = v11;
    v44[1] = v10;
    v44[2] = v34;
    v44[3] = v35;
    v44[4] = v42;
    v45 = v15 & 1;
    sub_1000C4718();
    swift_unknownObjectRetain();
    swift_errorRetain();

    v41 = v35;
    v36 = sub_1000BC0C8(v44);
    swift_unknownObjectRelease();

    (a2)[2](a2, v36);
    swift_unknownObjectRelease();

    v37 = v41;
  }
}

id sub_1000C4690(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, char a7)
{
  if (a7)
  {

    return swift_errorRetain();
  }

  else
  {
    swift_unknownObjectRetain();
    swift_errorRetain();

    return a4;
  }
}

uint64_t sub_1000C4700(uint64_t result, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  if (BYTE1(a6) != 255)
  {
    return sub_1000C31B0(result, a2, a3, a4, a5, a6, BYTE1(a6) & 1);
  }

  return result;
}

unint64_t sub_1000C4718()
{
  result = qword_10059C9B8;
  if (!qword_10059C9B8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10059C9B8);
  }

  return result;
}

uint64_t sub_1000C4764(__int128 *a1)
{
  v2 = *(v1 + 16);
  v3 = a1[1];
  v5 = *a1;
  v6[0] = v3;
  *(v6 + 10) = *(a1 + 26);
  return v2(&v5);
}

uint64_t sub_1000C47A8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100086B9C;

  return sub_1000C2AE0(a1, v4, v5, v6, v7, v8);
}

id sub_1000C4870(id result, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  if ((a6 >> 14) > 1u)
  {
    if (a6 >> 14 == 2)
    {
      return sub_1000C4690(result, a2, a3, a4, a5, a6, BYTE1(a6) & 1);
    }
  }

  else if (a6 >> 14)
  {
  }

  else
  {
  }

  return result;
}

uint64_t sub_1000C48B0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100085384;

  return sub_1000C2AE0(a1, v4, v5, v6, v7, v8);
}

void sub_1000C4978()
{
  v1 = *(v0 + 16);
  v2 = _convertErrorToNSError(_:)();
  (*(v1 + 16))(v1, v2);
}

uint64_t sub_1000C49D8()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1000C4A20(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000C4A84(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000C4AD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 16);
  v7 = a2;
  v8 = a1;
  v6 = a3;
  return v4(&v8, &v7, &v6);
}

unint64_t sub_1000C4B58()
{
  result = qword_10059C9D8;
  if (!qword_10059C9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10059C9D8);
  }

  return result;
}

uint64_t sub_1000C4BE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[15] = a4;
  v5[16] = v4;
  v5[13] = a2;
  v5[14] = a3;
  v5[12] = a1;
  if (a2)
  {
    swift_getObjectType();
    v6 = dispatch thunk of Actor.unownedExecutor.getter();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v5[17] = v6;
  v5[18] = v8;

  return _swift_task_switch(sub_1000C4C7C, v6, v8);
}

uint64_t sub_1000C4C7C()
{
  v1 = (*(v0 + 128) + OBJC_IVAR___BagService_lastRecentBagMutex);
  os_unfair_lock_lock(v1);
  sub_1000044A4(&v1[2], v0 + 56, &qword_10059BDF0);
  os_unfair_lock_unlock(v1);
  if (*(v0 + 80))
  {
    v2 = *(v0 + 96);
    sub_1000056B8((v0 + 56), v0 + 16);
    sub_1000056B8((v0 + 16), v2);
    v3 = *(v0 + 8);

    return v3();
  }

  else
  {
    sub_100005518(v0 + 56, &qword_10059BDF0);
    v5 = swift_task_alloc();
    *(v0 + 152) = v5;
    *v5 = v0;
    v5[1] = sub_1000C4DC4;
    v6 = *(v0 + 120);
    v7 = *(v0 + 104);
    v8 = *(v0 + 112);
    v9 = *(v0 + 96);

    return sub_1000C6B8C(v9, v7, v8, v6);
  }
}

uint64_t sub_1000C4DC4()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {
    v6 = *(v2 + 136);
    v7 = *(v2 + 144);

    return _swift_task_switch(sub_1000C4F04, v6, v7);
  }
}

uint64_t sub_1000C4F1C()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v0 = dispatch thunk of Bag.subscript.getter();

  return v0;
}

uint64_t sub_1000C4F74@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR___BagService_lastRecentBagMutex);
  os_unfair_lock_lock(v3);
  sub_1000044A4(&v3[2], v15, &qword_10059BDF0);
  os_unfair_lock_unlock(v3);
  sub_1000044A4(v15, v9, &qword_10059BDF0);
  v4 = v10;
  if (v10)
  {
    v5 = v11;
    v6 = sub_100005B60(v9, v10);
    *(&v13 + 1) = v4;
    v14 = v5;
    v7 = sub_100005F38(&v12);
    (*(*(v4 - 8) + 16))(v7, v6, v4);
    sub_100005A00(v9);
    if (*(&v13 + 1))
    {
      sub_100005518(v15, &qword_10059BDF0);
      return sub_1000056B8(&v12, a1);
    }
  }

  else
  {
    sub_100005518(v9, &qword_10059BDF0);
    v12 = 0u;
    v13 = 0u;
    v14 = 0;
  }

  *(a1 + 24) = &type metadata for EmptyBag;
  *(a1 + 32) = sub_1000D68D0();
  result = sub_100005518(v15, &qword_10059BDF0);
  if (*(&v13 + 1))
  {
    return sub_100005518(&v12, &unk_10059CEC0);
  }

  return result;
}

uint64_t sub_1000C50F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v4 = *(a1 - 8);
  __chkstk_darwin(a1);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v18 - v12;
  dispatch thunk of Bag.expiration.getter();
  static Date.distantPast.getter();
  v14 = static Date.== infix(_:_:)();
  v15 = *(v8 + 8);
  v15(v11, v7);
  result = (v15)(v13, v7);
  if (v14)
  {
    v17 = v19;
    *(v19 + 32) = 0;
    *v17 = 0u;
    v17[1] = 0u;
  }

  else
  {
    (*(v4 + 16))(v6, v2, a1);
    sub_100085D40(&qword_10059BDF0);
    return swift_dynamicCast();
  }

  return result;
}

uint64_t sub_1000C5300(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[15] = a4;
  v5[16] = v4;
  v5[13] = a2;
  v5[14] = a3;
  v5[12] = a1;
  if (a2)
  {
    swift_getObjectType();
    v6 = dispatch thunk of Actor.unownedExecutor.getter();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v5[17] = v6;
  v5[18] = v8;

  return _swift_task_switch(sub_1000C539C, v6, v8);
}

uint64_t sub_1000C539C()
{
  v1 = swift_task_alloc();
  v0[19] = v1;
  *v1 = v0;
  v1[1] = sub_1000C5438;
  v2 = v0[15];
  v3 = v0[13];
  v4 = v0[14];

  return sub_1000C4BE0((v0 + 7), v3, v4, v2);
}

uint64_t sub_1000C5438()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 136);
    v4 = *(v2 + 144);
    v5 = sub_1000C5650;
  }

  else
  {
    v3 = *(v2 + 136);
    v4 = *(v2 + 144);
    v5 = sub_1000C555C;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_1000C555C()
{
  v7 = *(v0 + 80);
  v1 = *(v0 + 80);
  v2 = sub_100005B60((v0 + 56), v1);
  *(v0 + 40) = v7;
  v3 = sub_100005F38((v0 + 16));
  (*(*(v1 - 8) + 16))(v3, v2, v1);
  sub_100005A00(v0 + 56);
  v4 = *(v0 + 96);
  if (*(v0 + 40))
  {
    sub_1000056B8((v0 + 16), v4);
  }

  else
  {
    *(v4 + 24) = &type metadata for EmptyBag;
    *(v4 + 32) = sub_1000D68D0();
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1000C5650()
{
  v1 = *(v0 + 96);
  *(v1 + 24) = &type metadata for EmptyBag;
  *(v1 + 32) = sub_1000D68D0();
  v2 = *(v0 + 8);

  return v2();
}

void sub_1000C5790()
{
  dword_10059C9E0 = 0;
  qword_10059C9E8 = 0;
  qword_10059C9F0 = 0;
  byte_10059C9F8 = 0;
}

id sub_1000C57D8(uint64_t a1, uint64_t a2, void *a3, void (*a4)(void))
{
  v6 = type metadata accessor for AccountClientIdentifier();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v20 - v11;
  v13 = type metadata accessor for ClientInfo();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a3;
  a4();
  (*(v7 + 16))(v10, v12, v6);
  ClientInfo.init(identifier:name:version:accountClientIdentifier:)();
  (*(v7 + 8))(v12, v6);
  v18 = sub_1000D5E3C(v17, 0, v16);

  (*(v14 + 8))(v16, v13);

  return v18;
}

id sub_1000C5A08(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = sub_100085D40(&qword_10059CA60);
  __chkstk_darwin(v7 - 8);
  v9 = &v23 - v8;
  v10 = &v3[OBJC_IVAR___BagService_bagService];
  v11 = type metadata accessor for BagService();
  (*(*(v11 - 8) + 56))(v9, 1, 1, v11);
  *v10 = 0;
  v12 = *(sub_100085D40(&qword_10059CA68) + 28);
  v13 = sub_100085D40(&qword_10059CB60);
  bzero(&v10[v12], *(*(v13 - 8) + 64));
  sub_10009E1C4(v9, &v10[v12], &qword_10059CA60);
  v14 = &v3[OBJC_IVAR___BagService_lastRecentBagMutex];
  *v14 = 0;
  *(v14 + 8) = 0u;
  *(v14 + 24) = 0u;
  *(v14 + 5) = 0;
  v15 = OBJC_IVAR___BagService_clientInfo;
  v16 = type metadata accessor for ClientInfo();
  v17 = *(v16 - 8);
  (*(v17 + 16))(&v3[v15], a1, v16);
  v18 = OBJC_IVAR___BagService_accountSource;
  v19 = type metadata accessor for BagService.AccountSource();
  v20 = *(v19 - 8);
  (*(v20 + 16))(&v3[v18], a2, v19);
  v23.receiver = v3;
  v23.super_class = ObjectType;
  v21 = objc_msgSendSuper2(&v23, "init");
  (*(v20 + 8))(a2, v19);
  (*(v17 + 8))(a1, v16);
  return v21;
}

void sub_1000C5C88(uint64_t a1@<X8>)
{
  v32 = a1;
  v2 = type metadata accessor for Logger();
  v29 = *(v2 - 8);
  v30 = v2;
  __chkstk_darwin(v2);
  v28 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100085D40(&unk_10059CB50);
  v5 = __chkstk_darwin(v4);
  v7 = (&v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v5);
  v9 = &v27 - v8;
  v10 = sub_100085D40(&qword_10059CA60);
  __chkstk_darwin(v10 - 8);
  v12 = &v27 - v11;
  v13 = (v1 + OBJC_IVAR___BagService_bagService);
  os_unfair_lock_lock((v1 + OBJC_IVAR___BagService_bagService));
  v14 = *(sub_100085D40(&qword_10059CA68) + 28);
  sub_1000044A4(v13 + v14, v12, &qword_10059CA60);
  os_unfair_lock_unlock(v13);
  v15 = type metadata accessor for BagService();
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v12, 1, v15) == 1)
  {
    sub_100005518(v12, &qword_10059CA60);
    os_unfair_lock_lock(v13);
    v17 = v31;
    sub_1000C60F8(v13 + v14, v1, v9);
    if (v17)
    {
      os_unfair_lock_unlock(v13);
      __break(1u);
    }

    else
    {
      v18 = v9;
      os_unfair_lock_unlock(v13);
      sub_1000044A4(v9, v7, &unk_10059CB50);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v20 = v32;
      if (EnumCaseMultiPayload == 1)
      {
        v33 = *v7;
        sub_100085D40(&unk_10059DE80);
        swift_willThrowTypedImpl();
        v21 = v28;
        static Logger.bag.getter();
        swift_errorRetain();
        v22 = Logger.logObject.getter();
        v23 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v22, v23))
        {
          v24 = swift_slowAlloc();
          v25 = swift_slowAlloc();
          *v24 = 138543362;
          swift_errorRetain();
          v26 = _swift_stdlib_bridgeErrorToNSError();
          *(v24 + 4) = v26;
          *v25 = v26;
          _os_log_impl(&_mh_execute_header, v22, v23, "Error creating BagService: %{public}@", v24, 0xCu);
          sub_100005518(v25, &unk_10059C250);

          v18 = v9;
        }

        (*(v29 + 8))(v21, v30);
        swift_willThrow();
        sub_100005518(v18, &unk_10059CB50);
      }

      else
      {
        sub_100005518(v9, &unk_10059CB50);
        (*(v16 + 32))(v20, v7, v15);
      }
    }
  }

  else
  {
    (*(v16 + 32))(v32, v12, v15);
  }
}

uint64_t sub_1000C60F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v19 = a2;
  v6 = sub_100085D40(&unk_10059CB50);
  v7 = __chkstk_darwin(v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = (&v18 - v10);
  v12 = sub_100085D40(&qword_10059CA60);
  __chkstk_darwin(v12 - 8);
  v14 = &v18 - v13;
  sub_1000044A4(a1, &v18 - v13, &qword_10059CA60);
  v15 = type metadata accessor for BagService();
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_100005518(v14, &qword_10059CA60);
    sub_1000C635C(v19, a1, &v20, v9);
    if (v3)
    {
      *v11 = v20;
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      swift_storeEnumTagMultiPayload();
      sub_10009E1C4(v9, v11, &unk_10059CB50);
    }

    return sub_10009E1C4(v11, a3, &unk_10059CB50);
  }

  else
  {
    (*(v16 + 32))(a3, v14, v15);
    return swift_storeEnumTagMultiPayload();
  }
}

uint64_t sub_1000C635C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v34 = a2;
  v35 = a3;
  v39 = a1;
  v42 = a4;
  v4 = type metadata accessor for BagService.AccountSource();
  v37 = *(v4 - 8);
  v38 = v4;
  __chkstk_darwin(v4);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for ClientInfo();
  v7 = *(v36 - 8);
  __chkstk_darwin(v36);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for BagProfile();
  __chkstk_darwin(v10 - 8);
  v40 = type metadata accessor for Logger();
  v11 = *(v40 - 8);
  v12 = __chkstk_darwin(v40);
  v33 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v32 - v14;
  static Logger.bag.getter();
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&_mh_execute_header, v16, v17, "Creating BagService", v18, 2u);
  }

  v19 = *(v11 + 8);
  v20 = v40;
  v19(v15, v40);
  BagProfile.init(name:version:)();
  v21 = v39;
  (*(v7 + 16))(v9, v39 + OBJC_IVAR___BagService_clientInfo, v36);
  (*(v37 + 16))(v6, v21 + OBJC_IVAR___BagService_accountSource, v38);
  v22 = v42;
  v23 = v41;
  result = BagService.init(bagProfile:clientInfo:accountSource:)();
  if (v23)
  {
    *v35 = v23;
  }

  else
  {
    v25 = v33;
    static Logger.bag.getter();
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&_mh_execute_header, v26, v27, "Created BagService", v28, 2u);
    }

    v19(v25, v20);
    v29 = v34;
    sub_100005518(v34, &qword_10059CA60);
    v30 = type metadata accessor for BagService();
    v31 = *(v30 - 8);
    (*(v31 + 16))(v29, v22, v30);
    return (*(v31 + 56))(v29, 0, 1, v30);
  }

  return result;
}

uint64_t sub_1000C67D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a4;
  v5 = type metadata accessor for BagService.PermittedDataOrigin();
  v4[8] = v5;
  v4[9] = *(v5 - 8);
  v4[10] = swift_task_alloc();

  return _swift_task_switch(sub_1000C6898, 0, 0);
}

uint64_t sub_1000C6898()
{
  static BagService.PermittedDataOrigin.persistenceOnly.getter();
  v1 = swift_task_alloc();
  *(v0 + 88) = v1;
  *v1 = v0;
  v1[1] = sub_1000C6944;
  v2 = *(v0 + 80);

  return sub_1000C6B8C(v0 + 16, 0, 0, v2);
}

uint64_t sub_1000C6944()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 72);
  v5 = *(*v1 + 64);
  *(*v1 + 96) = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v6 = sub_1000C6B28;
  }

  else
  {
    sub_100005A00(v2 + 16);
    v6 = sub_1000C6AC4;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1000C6AC4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000C6B28()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000C6B8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[13] = a4;
  v5[14] = v4;
  v5[12] = a1;
  type metadata accessor for BagService.UpdatePolicy();
  v5[15] = swift_task_alloc();
  type metadata accessor for BagService.ExpiredDataUsage();
  v5[16] = swift_task_alloc();
  v7 = type metadata accessor for BagService.Policy();
  v5[17] = v7;
  v5[18] = *(v7 - 8);
  v5[19] = swift_task_alloc();
  v8 = type metadata accessor for BagService();
  v5[20] = v8;
  v5[21] = *(v8 - 8);
  v5[22] = swift_task_alloc();
  v9 = type metadata accessor for OSSignpostID();
  v5[23] = v9;
  v5[24] = *(v9 - 8);
  v5[25] = swift_task_alloc();
  v5[26] = swift_task_alloc();
  v10 = type metadata accessor for BagService.PermittedDataOrigin();
  v5[27] = v10;
  v5[28] = *(v10 - 8);
  v5[29] = swift_task_alloc();
  v11 = type metadata accessor for Logger();
  v5[30] = v11;
  v5[31] = *(v11 - 8);
  v5[32] = swift_task_alloc();
  v5[33] = swift_task_alloc();
  v12 = type metadata accessor for OSSignposter();
  v5[34] = v12;
  v5[35] = *(v12 - 8);
  v5[36] = swift_task_alloc();
  if (a2)
  {
    swift_getObjectType();
    v13 = dispatch thunk of Actor.unownedExecutor.getter();
    v15 = v14;
  }

  else
  {
    v13 = 0;
    v15 = 0;
  }

  v5[37] = v13;
  v5[38] = v15;

  return _swift_task_switch(sub_1000C6EC8, v13, v15);
}

uint64_t sub_1000C6EC8()
{
  v2 = *(v0 + 224);
  v1 = *(v0 + 232);
  v3 = *(v0 + 216);
  static Logger.bag.getter();
  OSSignposter.init(logger:)();
  static BagService.PermittedDataOrigin.persistenceOnly.getter();
  sub_1000D80D4(&unk_10059CB30, &type metadata accessor for BagService.PermittedDataOrigin);
  v4 = dispatch thunk of static Equatable.== infix(_:_:)();
  *(v0 + 336) = v4 & 1;
  (*(v2 + 8))(v1, v3);
  static OSSignpostID.exclusive.getter();
  v5 = OSSignposter.logHandle.getter();
  v6 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    if (v4)
    {
      v7 = "Creating recentBag from persistence only";
    }

    else
    {
      v7 = "Creating recentBag";
    }

    v8 = swift_slowAlloc();
    *v8 = 0;
    v9 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, v6, v9, v7, "", v8, 2u);
  }

  v10 = *(v0 + 200);
  v11 = *(v0 + 208);
  v12 = *(v0 + 184);
  v13 = *(v0 + 192);
  v14 = *(v0 + 176);

  (*(v13 + 16))(v10, v11, v12);
  type metadata accessor for OSSignpostIntervalState();
  swift_allocObject();
  *(v0 + 312) = OSSignpostIntervalState.init(id:isOpen:)();
  (*(v13 + 8))(v11, v12);
  sub_1000C5C88(v14);
  v16 = *(v0 + 224);
  v15 = *(v0 + 232);
  v17 = *(v0 + 216);
  v18 = *(v0 + 104);
  static BagService.ExpiredDataUsage.permitted(maxExpirationDuration:)();
  static BagService.UpdatePolicy.never.getter();
  (*(v16 + 16))(v15, v18, v17);
  BagService.Policy.init(expiredDataUsage:updatePolicy:permittedDataOrigin:)();
  v19 = swift_task_alloc();
  *(v0 + 320) = v19;
  *v19 = v0;
  v19[1] = sub_1000C73D8;
  v20 = *(v0 + 152);

  return BagService.createBag(policy:)(v0 + 56, v20);
}

uint64_t sub_1000C73D8()
{
  v2 = *v1;
  *(*v1 + 328) = v0;

  v3 = v2[22];
  v4 = v2[21];
  v5 = v2[20];
  (*(v2[18] + 8))(v2[19], v2[17]);
  (*(v4 + 8))(v3, v5);
  v6 = v2[38];
  v7 = v2[37];
  if (v0)
  {
    v8 = sub_1000C77E4;
  }

  else
  {
    v8 = sub_1000C75BC;
  }

  return _swift_task_switch(v8, v7, v6);
}

void sub_1000C75BC()
{
  v1 = *(v0 + 328);
  v2 = *(v0 + 112);
  sub_100085D40(&qword_10059C3D0);
  sub_100085D40(&unk_10059CE80);
  swift_dynamicCast();
  v3 = v2 + OBJC_IVAR___BagService_lastRecentBagMutex;
  os_unfair_lock_lock((v2 + OBJC_IVAR___BagService_lastRecentBagMutex));
  sub_1000CA260((v3 + 8), (v0 + 16));
  if (v1)
  {

    os_unfair_lock_unlock(v3);
  }

  else
  {
    v5 = *(v0 + 280);
    v4 = *(v0 + 288);
    v6 = *(v0 + 272);
    if (*(v0 + 336))
    {
      v7 = "Creating recentBag from persistence only";
    }

    else
    {
      v7 = "Creating recentBag";
    }

    if (*(v0 + 336))
    {
      v8 = 40;
    }

    else
    {
      v8 = 18;
    }

    v9 = *(v0 + 96);
    os_unfair_lock_unlock(v3);
    sub_1000056D0(v0 + 16, v9);
    sub_1000C9FC4(v4, v7, v8, 2);

    (*(v5 + 8))(v4, v6);
    sub_100005A00(v0 + 16);

    v10 = *(v0 + 8);

    v10();
  }
}

uint64_t sub_1000C77E4()
{
  static Logger.bag.getter();
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138543362;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v1, v2, "Failed to create bag: %{public}@", v3, 0xCu);
    sub_100005518(v4, &unk_10059C250);
  }

  v6 = *(v0 + 336);
  v7 = *(v0 + 280);
  v8 = *(v0 + 288);
  v16 = *(v0 + 272);
  v10 = *(v0 + 248);
  v9 = *(v0 + 256);
  v11 = *(v0 + 240);

  if (v6)
  {
    v12 = "Creating recentBag from persistence only";
  }

  else
  {
    v12 = "Creating recentBag";
  }

  if (v6)
  {
    v13 = 40;
  }

  else
  {
    v13 = 18;
  }

  (*(v10 + 8))(v9, v11);
  swift_willThrow();
  sub_1000C9FC4(v8, v12, v13, 2);

  (*(v7 + 8))(v8, v16);

  v14 = *(v0 + 8);

  return v14();
}

unint64_t sub_1000C7BA4@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for DispatchTimeInterval();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = (v1 + OBJC_IVAR___BagService_lastRecentBagMutex);
  os_unfair_lock_lock((v1 + OBJC_IVAR___BagService_lastRecentBagMutex));
  sub_1000044A4(&v7[2], &v21, &qword_10059BDF0);
  os_unfair_lock_unlock(v7);
  v8 = v22;
  if (v22)
  {
    v9 = v23;
    v10 = sub_100005B60(&v21, v22);
    *(&v25 + 1) = v8;
    v26 = v9;
    v11 = sub_100005F38(&v24);
    (*(*(v8 - 8) + 16))(v11, v10, v8);
    sub_100005A00(&v21);
    if (*(&v25 + 1))
    {
      return sub_1000056B8(&v24, a1);
    }
  }

  else
  {
    sub_100005518(&v21, &qword_10059BDF0);
    v24 = 0u;
    v25 = 0u;
    v26 = 0;
  }

  *v6 = 5;
  (*(v4 + 104))(v6, enum case for DispatchTimeInterval.seconds(_:), v3);
  v13 = sub_1000C7E50(v6, v18);
  (*(v4 + 8))(v6, v3, v13);
  v14 = v19;
  if (!v19)
  {
    sub_100005518(v18, &qword_10059BDF0);
LABEL_10:
    *(a1 + 24) = &type metadata for EmptyBag;
    result = sub_1000D68D0();
    *(a1 + 32) = result;
    if (!*(&v25 + 1))
    {
      return result;
    }

    return sub_100005518(&v24, &unk_10059CEC0);
  }

  v15 = v20;
  v16 = sub_100005B60(v18, v19);
  v22 = v14;
  v23 = v15;
  v17 = sub_100005F38(&v21);
  (*(*(v14 - 8) + 16))(v17, v16, v14);
  sub_100005A00(v18);
  if (!v22)
  {
    goto LABEL_10;
  }

  result = sub_1000056B8(&v21, a1);
  if (*(&v25 + 1))
  {
    return sub_100005518(&v24, &unk_10059CEC0);
  }

  return result;
}

double sub_1000C7E50@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v70 = a1;
  v77 = a2;
  v2 = type metadata accessor for DispatchTime();
  v71 = *(v2 - 8);
  v72 = v2;
  v3 = __chkstk_darwin(v2);
  v68 = &v65 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v69 = &v65 - v5;
  v6 = sub_100085D40(&qword_10059C3E0);
  __chkstk_darwin(v6 - 8);
  v8 = &v65 - v7;
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v67 = &v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v66 = &v65 - v14;
  v15 = __chkstk_darwin(v13);
  v65 = &v65 - v16;
  v17 = __chkstk_darwin(v15);
  v19 = &v65 - v18;
  __chkstk_darwin(v17);
  v21 = &v65 - v20;
  static Logger.bag.getter();
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&_mh_execute_header, v22, v23, "Blocking thread on bag load", v24, 2u);
  }

  v25 = *(v10 + 8);
  v75 = v10 + 8;
  v76 = v9;
  v74 = v25;
  v25(v21, v9);
  v26 = dispatch_semaphore_create(0);
  static TaskPriority.userInitiated.getter();
  v27 = type metadata accessor for TaskPriority();
  v28 = *(*(v27 - 8) + 56);
  v28(v8, 0, 1, v27);
  v29 = swift_allocObject();
  v29[2] = 0;
  v29[3] = 0;
  v30 = v73;
  v29[4] = v26;
  v29[5] = v30;
  v31 = v26;
  v32 = v30;
  sub_1000D6CB8(0xD00000000000001ELL, 0x800000010044E480, v8, 0, 0, &unk_100435A20, v29);

  sub_100005518(v8, &qword_10059C3E0);
  OS_dispatch_semaphore.wait()();
  v33 = &v32[OBJC_IVAR___BagService_lastRecentBagMutex];
  os_unfair_lock_lock(&v32[OBJC_IVAR___BagService_lastRecentBagMutex]);
  sub_1000044A4(&v33[2], &v78, &qword_10059BDF0);
  os_unfair_lock_unlock(v33);
  if (v79)
  {
    sub_1000056B8(&v78, v80);
    static Logger.bag.getter();
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&_mh_execute_header, v34, v35, "Returning bag from persistence", v36, 2u);

      v37 = v31;
    }

    else
    {
      v37 = v34;
      v34 = v31;
    }

    v50 = v76;

    v74(v19, v50);
LABEL_12:
    sub_1000056B8(v80, v77);
    return result;
  }

  sub_100005518(&v78, &qword_10059BDF0);
  static TaskPriority.userInitiated.getter();
  v28(v8, 0, 1, v27);
  v38 = swift_allocObject();
  v38[2] = 0;
  v38[3] = 0;
  v38[4] = v31;
  v38[5] = v32;
  v39 = v31;
  v40 = v32;
  sub_1000D6CB8(0xD00000000000001ALL, 0x800000010044E4A0, v8, 0, 0, &unk_100435A30, v38);

  sub_100005518(v8, &qword_10059C3E0);
  v41 = v68;
  static DispatchTime.now()();
  v42 = v69;
  + infix(_:_:)();
  v43 = v72;
  v44 = *(v71 + 8);
  v44(v41, v72);
  OS_dispatch_semaphore.wait(timeout:)();
  v44(v42, v43);
  if (static DispatchTimeoutResult.== infix(_:_:)())
  {
    os_unfair_lock_lock(v33);
    sub_1000044A4(&v33[2], &v78, &qword_10059BDF0);
    os_unfair_lock_unlock(v33);
    if (v79)
    {
      sub_1000056B8(&v78, v80);
      v45 = v65;
      static Logger.bag.getter();
      v46 = Logger.logObject.getter();
      v47 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        *v48 = 0;
        _os_log_impl(&_mh_execute_header, v46, v47, "Returning bag", v48, 2u);

        v49 = v39;
      }

      else
      {
        v49 = v46;
        v46 = v39;
      }

      v64 = v76;

      v74(v45, v64);
      goto LABEL_12;
    }

    sub_100005518(&v78, &qword_10059BDF0);
  }

  v52 = static DispatchTimeoutResult.== infix(_:_:)();
  v53 = v76;
  if (v52)
  {
    static Logger.bag.getter();
    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      *v56 = 0;
      _os_log_impl(&_mh_execute_header, v54, v55, "Gave up waiting on bag", v56, 2u);

      v57 = v39;
    }

    else
    {
      v57 = v54;
      v54 = v39;
    }

    v62 = v66;
  }

  else
  {
    static Logger.bag.getter();
    v58 = Logger.logObject.getter();
    v59 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      *v60 = 0;
      _os_log_impl(&_mh_execute_header, v58, v59, "Failed to load bag", v60, 2u);

      v61 = v39;
    }

    else
    {
      v61 = v58;
      v58 = v39;
    }

    v62 = v67;
  }

  v74(v62, v53);
  v63 = v77;
  *(v77 + 32) = 0;
  result = 0.0;
  *v63 = 0u;
  v63[1] = 0u;
  return result;
}

uint64_t sub_1000C86D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 - 8);
  __chkstk_darwin(a1);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = dispatch thunk of Bag.isExpired.getter();
  if (result)
  {
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  else
  {
    (*(v5 + 16))(v7, v2, a1);
    sub_100085D40(&unk_10059CB80);
    return swift_dynamicCast();
  }

  return result;
}

uint64_t sub_1000C87D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  v6 = type metadata accessor for BagService.PermittedDataOrigin();
  v5[9] = v6;
  v5[10] = *(v6 - 8);
  v5[11] = swift_task_alloc();

  return _swift_task_switch(sub_1000C8898, 0, 0);
}

uint64_t sub_1000C8898()
{
  static BagService.PermittedDataOrigin.persistenceOnly.getter();
  v1 = swift_task_alloc();
  *(v0 + 96) = v1;
  *v1 = v0;
  v1[1] = sub_1000C8944;
  v2 = *(v0 + 88);

  return sub_1000C6B8C(v0 + 16, 0, 0, v2);
}

uint64_t sub_1000C8944()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 80);
  v5 = *(*v1 + 72);
  *(*v1 + 104) = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v6 = sub_1000D8AF0;
  }

  else
  {
    sub_100005A00(v2 + 16);
    v6 = sub_1000D8AE4;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1000C8AC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  v6 = type metadata accessor for BagService.PermittedDataOrigin();
  v5[9] = v6;
  v5[10] = *(v6 - 8);
  v5[11] = swift_task_alloc();

  return _swift_task_switch(sub_1000C8B84, 0, 0);
}

uint64_t sub_1000C8B84()
{
  static BagService.PermittedDataOrigin.networkOnly.getter();
  v1 = swift_task_alloc();
  *(v0 + 96) = v1;
  *v1 = v0;
  v1[1] = sub_1000C8C30;
  v2 = *(v0 + 88);

  return sub_1000C6B8C(v0 + 16, 0, 0, v2);
}

uint64_t sub_1000C8C30()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 80);
  v5 = *(*v1 + 72);
  *(*v1 + 104) = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v6 = sub_1000C8E20;
  }

  else
  {
    sub_100005A00(v2 + 16);
    v6 = sub_1000C8DB0;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1000C8DB0()
{
  OS_dispatch_semaphore.signal()();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000C8E20()
{
  OS_dispatch_semaphore.signal()();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000C8E90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[19] = a3;
  v4[20] = v3;
  v4[17] = a1;
  v4[18] = a2;
  if (a2)
  {
    swift_getObjectType();
    v5 = dispatch thunk of Actor.unownedExecutor.getter();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v4[21] = v5;
  v4[22] = v7;

  return _swift_task_switch(sub_1000C8F28, v5, v7);
}

uint64_t sub_1000C8F28()
{
  v1 = (*(v0 + 160) + OBJC_IVAR___BagService_lastRecentBagMutex);
  os_unfair_lock_lock(v1);
  sub_1000044A4(&v1[2], v0 + 96, &qword_10059BDF0);
  os_unfair_lock_unlock(v1);
  v2 = *(v0 + 120);
  if (v2)
  {
    sub_100005B60((v0 + 96), *(v0 + 120));
    sub_1000C86D4(v2, v0 + 56);
    sub_100005A00(v0 + 96);
    if (*(v0 + 80))
    {
      v3 = *(v0 + 136);
      sub_1000056B8((v0 + 56), v0 + 16);
      sub_1000056B8((v0 + 16), v3);
      v4 = *(v0 + 8);

      return v4();
    }
  }

  else
  {
    sub_100005518(v0 + 96, &qword_10059BDF0);
    *(v0 + 56) = 0u;
    *(v0 + 72) = 0u;
    *(v0 + 88) = 0;
  }

  sub_100005518(v0 + 56, &unk_10059CB80);
  v6 = swift_task_alloc();
  *(v0 + 184) = v6;
  *v6 = v0;
  v6[1] = sub_1000C90CC;
  v7 = *(v0 + 136);
  v8 = *(v0 + 144);

  return sub_1000C920C(v7, v8);
}

uint64_t sub_1000C90CC()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {
    v6 = *(v2 + 168);
    v7 = *(v2 + 176);

    return _swift_task_switch(sub_1000D8B04, v6, v7);
  }
}

uint64_t sub_1000C920C(uint64_t a1, uint64_t a2)
{
  v3[12] = a1;
  v3[13] = v2;
  type metadata accessor for BagService.PermittedDataOrigin();
  v3[14] = swift_task_alloc();
  type metadata accessor for BagService.UpdatePolicy();
  v3[15] = swift_task_alloc();
  type metadata accessor for BagService.ExpiredDataUsage();
  v3[16] = swift_task_alloc();
  v5 = type metadata accessor for BagService.Policy();
  v3[17] = v5;
  v3[18] = *(v5 - 8);
  v3[19] = swift_task_alloc();
  v6 = type metadata accessor for BagService();
  v3[20] = v6;
  v3[21] = *(v6 - 8);
  v3[22] = swift_task_alloc();
  v7 = type metadata accessor for OSSignpostID();
  v3[23] = v7;
  v3[24] = *(v7 - 8);
  v3[25] = swift_task_alloc();
  v3[26] = swift_task_alloc();
  v8 = type metadata accessor for Logger();
  v3[27] = v8;
  v3[28] = *(v8 - 8);
  v3[29] = swift_task_alloc();
  v3[30] = swift_task_alloc();
  v9 = type metadata accessor for OSSignposter();
  v3[31] = v9;
  v3[32] = *(v9 - 8);
  v3[33] = swift_task_alloc();
  if (a2)
  {
    swift_getObjectType();
    v10 = dispatch thunk of Actor.unownedExecutor.getter();
    v12 = v11;
  }

  else
  {
    v10 = 0;
    v12 = 0;
  }

  v3[34] = v10;
  v3[35] = v12;

  return _swift_task_switch(sub_1000C9514, v10, v12);
}

uint64_t sub_1000C9514()
{
  static Logger.bag.getter();
  OSSignposter.init(logger:)();
  static OSSignpostID.exclusive.getter();
  v1 = OSSignposter.logHandle.getter();
  v2 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    v4 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v1, v2, v4, "Creating upToDateBag", "", v3, 2u);
  }

  v5 = v0[25];
  v6 = v0[26];
  v7 = v0[23];
  v8 = v0[24];
  v9 = v0[22];

  (*(v8 + 16))(v5, v6, v7);
  type metadata accessor for OSSignpostIntervalState();
  swift_allocObject();
  v0[36] = OSSignpostIntervalState.init(id:isOpen:)();
  (*(v8 + 8))(v6, v7);
  sub_1000C5C88(v9);
  static BagService.ExpiredDataUsage.notPermitted.getter();
  static BagService.UpdatePolicy.never.getter();
  static BagService.PermittedDataOrigin.networkAndPersistence.getter();
  BagService.Policy.init(expiredDataUsage:updatePolicy:permittedDataOrigin:)();
  v10 = swift_task_alloc();
  v0[37] = v10;
  *v10 = v0;
  v10[1] = sub_1000C9944;
  v11 = v0[19];

  return BagService.createBag(policy:)(v0 + 7, v11);
}

uint64_t sub_1000C9944()
{
  v2 = *v1;
  *(*v1 + 304) = v0;

  v3 = v2[22];
  v4 = v2[21];
  v5 = v2[20];
  (*(v2[18] + 8))(v2[19], v2[17]);
  (*(v4 + 8))(v3, v5);
  v6 = v2[35];
  v7 = v2[34];
  if (v0)
  {
    v8 = sub_1000C9D80;
  }

  else
  {
    v8 = sub_1000C9B28;
  }

  return _swift_task_switch(v8, v7, v6);
}

uint64_t sub_1000C9B28()
{
  v1 = v0[32];
  v2 = v0[33];
  v12 = v0[31];
  v3 = v0[13];
  v11 = v0[12];
  sub_100085D40(&qword_10059C3D0);
  sub_100085D40(&qword_10059C3D8);
  swift_dynamicCast();
  v4 = v0[5];
  v5 = v0[6];
  v6 = sub_100005B60(v0 + 2, v4);
  v7 = *(v4 - 8);
  v8 = swift_task_alloc();
  (*(v7 + 16))(v8, v6, v4);
  sub_1000D582C(v8, v3, v4, v5);
  (*(v7 + 8))(v8, v4);

  sub_1000056D0((v0 + 2), v11);
  sub_1000C9FC4(v2, "Creating upToDateBag", 20, 2);

  (*(v1 + 8))(v2, v12);
  sub_100005A00((v0 + 2));

  v9 = v0[1];

  return v9();
}

uint64_t sub_1000C9D80()
{
  static Logger.bag.getter();
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138543362;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v1, v2, "Failed to create bag: %{public}@", v3, 0xCu);
    sub_100005518(v4, &unk_10059C250);
  }

  v7 = v0[32];
  v6 = v0[33];
  v8 = v0[31];
  v9 = v0[28];
  v10 = v0[29];
  v11 = v0[27];

  (*(v9 + 8))(v10, v11);
  swift_willThrow();
  sub_1000C9FC4(v6, "Creating upToDateBag", 20, 2);

  (*(v7 + 8))(v6, v8);

  v12 = v0[1];

  return v12();
}

uint64_t sub_1000C9FC4(uint64_t a1, const char *a2, uint64_t a3, char a4)
{
  v21 = a2;
  v5 = type metadata accessor for OSSignpostError();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v19[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for OSSignpostID();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v19[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = OSSignposter.logHandle.getter();
  OSSignpostIntervalState.signpostID.getter();
  v20 = static os_signpost_type_t.end.getter();
  result = OS_os_log.signpostsEnabled.getter();
  if ((result & 1) == 0)
  {
LABEL_13:

    return (*(v10 + 8))(v12, v9);
  }

  if ((a4 & 1) == 0)
  {
    v15 = v21;
    if (v21)
    {
LABEL_9:

      checkForErrorAndConsumeState(state:)();

      if ((*(v6 + 88))(v8, v5) == enum case for OSSignpostError.doubleEnd(_:))
      {
        v16 = "[Error] Interval already ended";
      }

      else
      {
        (*(v6 + 8))(v8, v5);
        v16 = "";
      }

      v17 = swift_slowAlloc();
      *v17 = 0;
      v18 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v13, v20, v18, v15, v16, v17, 2u);

      goto LABEL_13;
    }

    __break(1u);
  }

  if (v21 >> 32)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if ((v21 & 0xFFFFF800) != 0xD800)
  {
    if (v21 >> 16 <= 0x10)
    {
      v15 = &v22;
      goto LABEL_9;
    }

    goto LABEL_15;
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_1000CA260(void *a1, void *a2)
{
  v4 = sub_100085D40(&qword_10059CB40);
  __chkstk_darwin(v4 - 8);
  v6 = v24 - v5;
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v24 - v12;
  v14 = a2[3];
  v25 = a2;
  sub_100005B60(a2, v14);
  dispatch thunk of Bag.expiration.getter();
  v15 = a1[3];
  v26 = a1;
  if (v15)
  {
    v24[1] = a1[4];
    v16 = sub_100005B60(a1, v15);
    v17 = *(v15 - 8);
    __chkstk_darwin(v16);
    v19 = v24 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v17 + 16))(v19);
    dispatch thunk of Bag.expiration.getter();
    (*(v17 + 8))(v19, v15);
    (*(v8 + 56))(v6, 0, 1, v7);
    (*(v8 + 32))(v11, v6, v7);
  }

  else
  {
    (*(v8 + 56))(v6, 1, 1, v7);
    static Date.distantPast.getter();
    if ((*(v8 + 48))(v6, 1, v7) != 1)
    {
      sub_100005518(v6, &qword_10059CB40);
    }
  }

  sub_1000D80D4(&qword_10059CB48, &type metadata accessor for Date);
  v20 = dispatch thunk of static Comparable.>= infix(_:_:)();
  v21 = *(v8 + 8);
  v21(v11, v7);
  result = (v21)(v13, v7);
  if (v20)
  {
    v23 = v26;
    sub_100005518(v26, &qword_10059BDF0);
    return sub_1000056D0(v25, v23);
  }

  return result;
}

uint64_t sub_1000CA5F8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v7 = sub_100085D40(&qword_10059CA60);
  __chkstk_darwin(v7 - 8);
  v9 = &v18[-v8];
  v10 = type metadata accessor for BagService();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v18[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1000C5C88(v9);
  (*(v11 + 56))(v9, 0, 1, v10);
  (*(v11 + 32))(v13, v9, v10);
  v14 = swift_allocObject();
  v14[2] = v3;
  v14[3] = a1;
  v14[4] = a2;
  v15 = v3;

  BagService.addChangeObserver(limitedToKeys:observer:)();

  (*(v11 + 8))(v13, v10);
  v16 = type metadata accessor for BagService.ObservationToken();
  return (*(*(v16 - 8) + 56))(a3, 0, 1, v16);
}

uint64_t sub_1000CA864(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_100085D40(&qword_10059C3E0);
  __chkstk_darwin(v7 - 8);
  v9 = &v14 - v8;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = a2;
  v11[5] = a3;
  v11[6] = a4;
  v12 = a2;

  sub_1001401B8(0, 0, v9, &unk_100435A10, v11);
}

uint64_t sub_1000CA988(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[8] = a5;
  v6[9] = a6;
  v6[7] = a4;
  return _swift_task_switch(sub_1000CA9AC, 0, 0);
}

uint64_t sub_1000CA9AC()
{
  v1 = swift_task_alloc();
  *(v0 + 80) = v1;
  *v1 = v0;
  v1[1] = sub_1000CAA4C;

  return sub_1000C920C(v0 + 16, 0);
}

uint64_t sub_1000CAA4C()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_1000CABD4;
  }

  else
  {
    v2 = sub_1000CAB60;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000CAB60()
{
  (*(v0 + 64))(v0 + 16);
  sub_100005A00(v0 + 16);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000CABEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = a3;
  v4[10] = v3;
  v4[7] = a1;
  v4[8] = a2;
  v6 = type metadata accessor for BagService.PermittedDataOrigin();
  v4[11] = v6;
  v4[12] = *(v6 - 8);
  v4[13] = swift_task_alloc();
  if (a2)
  {
    swift_getObjectType();
    v7 = dispatch thunk of Actor.unownedExecutor.getter();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  v4[14] = v7;
  v4[15] = v9;

  return _swift_task_switch(sub_1000CACEC, v7, v9);
}

uint64_t sub_1000CACEC()
{
  static BagService.PermittedDataOrigin.networkAndPersistence.getter();
  v1 = swift_task_alloc();
  v0[16] = v1;
  *v1 = v0;
  v1[1] = sub_1000CAD90;
  v2 = v0[13];
  v3 = v0[9];
  v4 = v0[7];
  v5 = v0[8];

  return sub_1000C4BE0(v4, v5, v3, v2);
}

uint64_t sub_1000CAD90()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 96);
  v5 = *(*v1 + 88);
  *(*v1 + 136) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 120);
  v7 = *(v2 + 112);
  if (v0)
  {
    v8 = sub_1000CAF8C;
  }

  else
  {
    v8 = sub_1000CAF28;
  }

  return _swift_task_switch(v8, v7, v6);
}

uint64_t sub_1000CAF28()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000CAF8C()
{
  v1 = swift_task_alloc();
  v0[18] = v1;
  *v1 = v0;
  v1[1] = sub_1000CB028;
  v2 = v0[9];
  v3 = v0[8];

  return sub_1000CB2BC((v0 + 2), v3, v2);
}

uint64_t sub_1000CB028()
{
  v2 = *v1;
  *(*v1 + 152) = v0;

  v3 = *(v2 + 120);
  v4 = *(v2 + 112);
  if (v0)
  {
    v5 = sub_1000CB24C;
  }

  else
  {
    v5 = sub_1000CB164;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1000CB164()
{
  v1 = *(v0 + 56);
  v7 = *(v0 + 40);
  v2 = *(v0 + 40);
  v3 = sub_100005B60((v0 + 16), v2);
  *(v1 + 24) = v7;
  v4 = sub_100005F38(v1);
  (*(*(v2 - 8) + 16))(v4, v3, v2);

  sub_100005A00(v0 + 16);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1000CB24C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000CB2BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[19] = a3;
  v4[20] = v3;
  v4[17] = a1;
  v4[18] = a2;
  if (a2)
  {
    swift_getObjectType();
    v5 = dispatch thunk of Actor.unownedExecutor.getter();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v4[21] = v5;
  v4[22] = v7;

  return _swift_task_switch(sub_1000CB354, v5, v7);
}

uint64_t sub_1000CB354()
{
  v1 = (*(v0 + 160) + OBJC_IVAR___BagService_lastRecentBagMutex);
  os_unfair_lock_lock(v1);
  sub_1000044A4(&v1[2], v0 + 96, &qword_10059BDF0);
  os_unfair_lock_unlock(v1);
  v2 = *(v0 + 120);
  if (v2)
  {
    sub_100005B60((v0 + 96), *(v0 + 120));
    sub_1000C86D4(v2, v0 + 56);
    sub_100005A00(v0 + 96);
    if (*(v0 + 80))
    {
      v3 = *(v0 + 136);
      sub_1000056B8((v0 + 56), v0 + 16);
      sub_1000056B8((v0 + 16), v3);
      v4 = *(v0 + 8);

      return v4();
    }
  }

  else
  {
    sub_100005518(v0 + 96, &qword_10059BDF0);
    *(v0 + 56) = 0u;
    *(v0 + 72) = 0u;
    *(v0 + 88) = 0;
  }

  v6 = *(v0 + 160);
  sub_100005518(v0 + 56, &unk_10059CB80);
  v7 = sub_100085D40(&unk_10059CB80);
  v8 = swift_task_alloc();
  *(v0 + 184) = v8;
  *(v8 + 16) = v6;
  v9 = sub_100085D40(&qword_10059C3D8);
  v10 = swift_task_alloc();
  *(v0 + 192) = v10;
  *v10 = v0;
  v10[1] = sub_1000CB57C;
  v11 = *(v0 + 144);
  v12 = *(v0 + 152);
  v13 = *(v0 + 136);

  return withThrowingTaskGroup<A, B>(of:returning:isolation:body:)(v13, v7, v9, v11, v12, &unk_100435AC8, v8, v7);
}

uint64_t sub_1000CB57C()
{
  v2 = *v1;
  *(*v1 + 200) = v0;

  if (v0)
  {
    v3 = *(v2 + 168);
    v4 = *(v2 + 176);
    v5 = sub_1000CB698;
  }

  else
  {

    v3 = *(v2 + 168);
    v4 = *(v2 + 176);
    v5 = sub_1000D8B04;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_1000CB698()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000CB6FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  v4 = sub_100085D40(&qword_10059CBE8);
  v3[23] = v4;
  v3[24] = *(v4 - 8);
  v3[25] = swift_task_alloc();
  sub_100085D40(&qword_10059C3E0);
  v3[26] = swift_task_alloc();
  v3[27] = swift_task_alloc();
  v3[28] = swift_task_alloc();

  return _swift_task_switch(sub_1000CB81C, 0, 0);
}

uint64_t sub_1000CB81C()
{
  v2 = *(v0 + 216);
  v1 = *(v0 + 224);
  v3 = *(v0 + 176);
  v4 = type metadata accessor for TaskPriority();
  v5 = *(v4 - 8);
  v23 = *(v5 + 56);
  v23(v1, 1, 1, v4);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v3;
  sub_1000044A4(v1, v2, &qword_10059C3E0);
  LODWORD(v2) = (*(v5 + 48))(v2, 1, v4);
  v7 = v3;

  v8 = *(v0 + 216);
  if (v2 == 1)
  {
    sub_100005518(*(v0 + 216), &qword_10059C3E0);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v5 + 8))(v8, v4);
  }

  v9 = v6[2];
  swift_unknownObjectRetain();

  if (v9)
  {
    swift_getObjectType();
    v10 = dispatch thunk of Actor.unownedExecutor.getter();
    v12 = v11;
    swift_unknownObjectRelease();
  }

  else
  {
    v10 = 0;
    v12 = 0;
  }

  v13 = **(v0 + 168);
  sub_100085D40(&unk_10059CB80);
  v14 = v12 | v10;
  if (v12 | v10)
  {
    v14 = v0 + 96;
    *(v0 + 96) = 0;
    *(v0 + 104) = 0;
    *(v0 + 112) = v10;
    *(v0 + 120) = v12;
  }

  v15 = *(v0 + 224);
  v16 = *(v0 + 208);
  v17 = *(v0 + 176);
  *(v0 + 128) = 1;
  *(v0 + 136) = v14;
  *(v0 + 144) = v13;
  swift_task_create();
  swift_task_immediate();

  sub_100005518(v15, &qword_10059C3E0);
  v23(v16, 1, 1, v4);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = v17;
  v19 = v17;
  sub_1000CCB18(v16, &unk_100435AF0, v18);
  sub_100005518(v16, &qword_10059C3E0);
  sub_100085D40(&unk_10059DE80);
  ThrowingTaskGroup.makeAsyncIterator()();
  v20 = swift_task_alloc();
  *(v0 + 232) = v20;
  *v20 = v0;
  v20[1] = sub_1000CBBAC;
  v21 = *(v0 + 184);

  return __sScg8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v0 + 16, 0, 0, v21, v0 + 152);
}

uint64_t sub_1000CBBAC()
{

  if (v0)
  {
    v1 = sub_1000CBEF4;
  }

  else
  {
    v1 = sub_1000CBCBC;
  }

  return _swift_task_switch(v1, 0, 0);
}

uint64_t sub_1000CBCBC()
{
  if (*(v0 + 40) == 1)
  {
    (*(*(v0 + 192) + 8))(*(v0 + 200), *(v0 + 184));
    type metadata accessor for CancellationError();
    sub_1000D80D4(&qword_10059CBF0, &type metadata accessor for CancellationError);
    swift_allocError();
    CancellationError.init()();
    swift_willThrow();

    v1 = *(v0 + 8);
LABEL_5:

    return v1();
  }

  *(v0 + 88) = *(v0 + 48);
  v2 = *(v0 + 16);
  *(v0 + 72) = *(v0 + 32);
  *(v0 + 56) = v2;
  if (*(v0 + 80))
  {
    v3 = *(v0 + 160);
    (*(*(v0 + 192) + 8))(*(v0 + 200), *(v0 + 184));
    sub_1000056B8((v0 + 56), v3);

    v1 = *(v0 + 8);
    goto LABEL_5;
  }

  sub_100005518(v0 + 56, &unk_10059CB80);
  v5 = swift_task_alloc();
  *(v0 + 232) = v5;
  *v5 = v0;
  v5[1] = sub_1000CBBAC;
  v6 = *(v0 + 184);

  return __sScg8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v0 + 16, 0, 0, v6, v0 + 152);
}

uint64_t sub_1000CBEF4()
{
  (*(v0[24] + 8))(v0[25], v0[23]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1000CBF94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a4;
  return _swift_task_switch(sub_1000CBFB4, 0, 0);
}

uint64_t sub_1000CBFB4()
{
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_1000CC050;
  v2 = *(v0 + 16);

  return sub_1000C920C(v2, 0);
}

uint64_t sub_1000CC050()
{

  if (v0)
  {

    v1 = sub_1000CC168;
  }

  else
  {
    v1 = sub_1000D8B04;
  }

  return _swift_task_switch(v1, 0, 0);
}

uint64_t sub_1000CC168()
{
  v1 = *(v0 + 16);
  *(v1 + 32) = 0;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  return (*(v0 + 8))();
}

uint64_t sub_1000CC190(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000CC22C;

  return sub_1000CC324(a1);
}

uint64_t sub_1000CC22C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1000CC324(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  sub_100085D40(&qword_10059CBF8);
  v2[10] = swift_task_alloc();
  v3 = type metadata accessor for NSNotificationCenter.Notifications.Iterator();
  v2[11] = v3;
  v2[12] = *(v3 - 8);
  v2[13] = swift_task_alloc();

  return _swift_task_switch(sub_1000CC41C, 0, 0);
}

uint64_t sub_1000CC41C()
{
  v1 = [objc_opt_self() defaultCenter];
  objc_opt_self();
  v2 = sub_100227468();
  NSNotificationCenter.notifications(named:object:)();

  NSNotificationCenter.Notifications.makeAsyncIterator()();
  v3 = sub_1000D80D4(&qword_10059CC00, &type metadata accessor for NSNotificationCenter.Notifications.Iterator);
  v4 = swift_task_alloc();
  v0[14] = v4;
  *v4 = v0;
  v4[1] = sub_1000CC570;
  v5 = v0[10];
  v6 = v0[11];

  return dispatch thunk of AsyncIteratorProtocol.next()(v5, v6, v3);
}

uint64_t sub_1000CC570()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_1000CC7F4;
  }

  else
  {
    v2 = sub_1000CC684;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000CC6A0()
{
  v1 = v0[10];
  v2 = type metadata accessor for Notification();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    v3 = v0[8];
    (*(v0[12] + 8))(v0[13], v0[11]);
    *(v3 + 32) = 0;
    *v3 = 0u;
    *(v3 + 16) = 0u;

    v4 = v0[1];

    return v4();
  }

  else
  {
    v6 = swift_task_alloc();
    v0[16] = v6;
    *v6 = v0;
    v6[1] = sub_1000CC880;

    return sub_1000C920C((v0 + 2), 0);
  }
}

uint64_t sub_1000CC7F4()
{
  *(v0 + 56) = *(v0 + 120);
  sub_100085D40(&unk_10059DE80);
  swift_dynamicCast();

  return swift_willThrowTypedImpl();
}

uint64_t sub_1000CC880()
{

  if (v0)
  {

    v1 = sub_1000CCA44;
  }

  else
  {
    v1 = sub_1000CC998;
  }

  return _swift_task_switch(v1, 0, 0);
}

uint64_t sub_1000CC998()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 64);
  (*(*(v0 + 96) + 8))(*(v0 + 104), *(v0 + 88));
  sub_1000056B8((v0 + 16), v2);
  sub_100005518(v1, &qword_10059CBF8);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1000CCA44()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 64);
  (*(*(v0 + 96) + 8))(*(v0 + 104), *(v0 + 88));
  *(v0 + 48) = 0;
  *(v0 + 32) = 0u;
  *(v0 + 16) = 0u;
  sub_100005518(v0 + 16, &unk_10059CB80);
  *v2 = 0u;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0;
  sub_100005518(v1, &qword_10059CBF8);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1000CCB18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = sub_100085D40(&qword_10059C3E0);
  __chkstk_darwin(v7 - 8);
  v9 = v18 - v8;
  sub_1000044A4(a1, v18 - v8, &qword_10059C3E0);
  v10 = type metadata accessor for TaskPriority();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_100005518(v9, &qword_10059C3E0);
    if (*(a3 + 16))
    {
LABEL_3:
      swift_getObjectType();
      swift_unknownObjectRetain();
      v12 = dispatch thunk of Actor.unownedExecutor.getter();
      v14 = v13;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v11 + 8))(v9, v10);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v12 = 0;
  v14 = 0;
LABEL_6:
  v15 = *v4;
  sub_100085D40(&unk_10059CB80);
  v16 = (v14 | v12);
  if (v14 | v12)
  {
    v19[0] = 0;
    v19[1] = 0;
    v16 = v19;
    v19[2] = v12;
    v19[3] = v14;
  }

  v18[1] = 1;
  v18[2] = v16;
  v18[3] = v15;
  swift_task_create();
}

uint64_t sub_1000CCE24()
{
  v0 = type metadata accessor for Logger();
  __chkstk_darwin(v0);
  v1 = sub_100085D40(&qword_10059CA60);
  __chkstk_darwin(v1 - 8);
  v3 = &v10 - v2;
  v4 = type metadata accessor for BagService();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000C5C88(v3);
  (*(v5 + 56))(v3, 0, 1, v4);
  (*(v5 + 32))(v7, v3, v4);
  type metadata accessor for AMSCachedBag();
  v8 = static AMSCachedBag.makeBag(bagService:)();
  (*(v5 + 8))(v7, v4);
  return v8;
}

id sub_1000CD260(void *a1, uint64_t a2, void (*a3)(void *__return_ptr))
{
  v5 = type metadata accessor for ObjCBag();
  v6 = a1;
  a3(v16);
  v7 = v17;
  v8 = v18;
  v9 = sub_1000D7184(v16, v17);
  __chkstk_darwin(v9);
  v11 = &v16[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v11);
  v13 = sub_1000D5500(v11, v5, v7, v8);

  sub_100005A00(v16);

  return v13;
}

uint64_t sub_1000CD388(uint64_t a1, uint64_t a2)
{
  v5 = sub_100085D40(&qword_10059C3E0);
  __chkstk_darwin(v5 - 8);
  v7 = &v14 - v6;
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = swift_allocObject();
  *(v9 + 16) = v2;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_100435BE8;
  v11[5] = v9;
  v11[6] = 0;
  v11[7] = sub_1000D8B1C;
  v11[8] = v8;

  v12 = v2;

  sub_100139A4C(0, 0, v7, 0, 0, &unk_100435BF0, v11);

  return sub_100005518(v7, &qword_10059C3E0);
}

uint64_t sub_1000CD55C(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_100085D40(&qword_10059C3E0);
  __chkstk_darwin(v7 - 8);
  v9 = &v17 - v8;
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;
  v11 = swift_allocObject();
  *(v11 + 16) = v3;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_100435BD8;
  v13[5] = v11;
  v13[6] = a1;
  v13[7] = sub_1000D8B1C;
  v13[8] = v10;
  v14 = a1;

  v15 = v3;

  sub_100139A4C(0, 0, v9, 0, 0, &unk_100435BE0, v13);

  return sub_100005518(v9, &qword_10059C3E0);
}

uint64_t sub_1000CD774(uint64_t a1, uint64_t a2)
{
  v2[7] = a1;
  v2[8] = a2;
  v3 = type metadata accessor for BagService.PermittedDataOrigin();
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();

  return _swift_task_switch(sub_1000CD834, 0, 0);
}

uint64_t sub_1000CD834()
{
  v0[12] = type metadata accessor for ObjCBag();
  static BagService.PermittedDataOrigin.networkAndPersistence.getter();
  v1 = swift_task_alloc();
  v0[13] = v1;
  *v1 = v0;
  v1[1] = sub_1000CD8EC;
  v2 = v0[11];

  return sub_1000C5300((v0 + 2), 0, 0, v2);
}

uint64_t sub_1000CD8EC()
{
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 80);
  v3 = *(*v0 + 72);

  (*(v2 + 8))(v1, v3);

  return _swift_task_switch(sub_1000D8AFC, 0, 0);
}

uint64_t sub_1000CDA44(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_100085D40(&qword_10059C3E0);
  __chkstk_darwin(v7 - 8);
  v9 = &v17 - v8;
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;
  v11 = swift_allocObject();
  *(v11 + 16) = v3;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_100435BC0;
  v13[5] = v11;
  v13[6] = a1;
  v13[7] = sub_1000D8B1C;
  v13[8] = v10;
  v14 = a1;

  v15 = v3;

  sub_100139A4C(0, 0, v9, 0, 0, &unk_100435BC8, v13);

  return sub_100005518(v9, &qword_10059C3E0);
}

uint64_t sub_1000CDC28(uint64_t a1, uint64_t a2)
{
  v2[7] = a1;
  v2[8] = a2;
  v3 = type metadata accessor for BagService.PermittedDataOrigin();
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();

  return _swift_task_switch(sub_1000CDCE8, 0, 0);
}

uint64_t sub_1000CDCE8()
{
  v0[12] = type metadata accessor for ObjCBag();
  static BagService.PermittedDataOrigin.persistenceOnly.getter();
  v1 = swift_task_alloc();
  v0[13] = v1;
  *v1 = v0;
  v1[1] = sub_1000CDDA0;
  v2 = v0[11];

  return sub_1000C5300((v0 + 2), 0, 0, v2);
}

uint64_t sub_1000CDDA0()
{
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 80);
  v3 = *(*v0 + 72);

  (*(v2 + 8))(v1, v3);

  return _swift_task_switch(sub_1000CDEF8, 0, 0);
}

uint64_t sub_1000CDEF8()
{
  v1 = v0[12];
  v2 = v0[6];
  v3 = v0[7];
  v4 = v0[5];
  v5 = sub_1000D7184((v0 + 2), v4);
  v6 = *(v4 - 8);
  v7 = swift_task_alloc();
  (*(v6 + 16))(v7, v5, v4);
  v8 = sub_1000D5500(v7, v1, v4, v2);
  sub_100005A00((v0 + 2));

  *v3 = v8;

  v9 = v0[1];

  return v9();
}

uint64_t sub_1000CE058(uint64_t a1, uint64_t a2)
{
  v5 = sub_100085D40(&qword_10059C3E0);
  __chkstk_darwin(v5 - 8);
  v7 = &v14 - v6;
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = swift_allocObject();
  *(v9 + 16) = v2;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_100435BA8;
  v11[5] = v9;
  v11[6] = 0;
  v11[7] = sub_1000D8B14;
  v11[8] = v8;

  v12 = v2;

  sub_100139A4C(0, 0, v7, 0, 0, &unk_100435BB0, v11);

  return sub_100005518(v7, &qword_10059C3E0);
}

uint64_t sub_1000CE22C(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_100085D40(&qword_10059C3E0);
  __chkstk_darwin(v7 - 8);
  v9 = &v17 - v8;
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;
  v11 = swift_allocObject();
  *(v11 + 16) = v3;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_100435B98;
  v13[5] = v11;
  v13[6] = a1;
  v13[7] = sub_1000D8B14;
  v13[8] = v10;
  v14 = a1;

  v15 = v3;

  sub_100139A4C(0, 0, v9, 0, 0, &unk_100435BA0, v13);

  return sub_100005518(v9, &qword_10059C3E0);
}

uint64_t sub_1000CE444(void *a1, int a2, void *aBlock, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t))
{
  v9 = _Block_copy(aBlock);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  v11 = a1;
  a6(a5, v10);
}

uint64_t sub_1000CE4D8(uint64_t a1, uint64_t a2)
{
  v2[7] = a1;
  v2[8] = a2;
  v3 = type metadata accessor for BagService.PermittedDataOrigin();
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();

  return _swift_task_switch(sub_1000CE598, 0, 0);
}

uint64_t sub_1000CE598()
{
  static BagService.PermittedDataOrigin.networkAndPersistence.getter();
  v1 = swift_task_alloc();
  *(v0 + 96) = v1;
  *v1 = v0;
  v1[1] = sub_1000CE644;
  v2 = *(v0 + 88);

  return sub_1000C4BE0(v0 + 16, 0, 0, v2);
}

uint64_t sub_1000CE644()
{
  v2 = *(*v1 + 88);
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 72);
  *(*v1 + 104) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_1000CE8F0;
  }

  else
  {
    v5 = sub_1000CE7B4;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1000CE7B4()
{
  v1 = v0[7];
  v2 = objc_allocWithZone(type metadata accessor for ObjCRecentBag());
  v3 = v0[5];
  v4 = v0[6];
  v5 = sub_1000D7184((v0 + 2), v3);
  v6 = *(v3 - 8);
  v7 = swift_task_alloc();
  (*(v6 + 16))(v7, v5, v3);
  v8 = sub_1000D55B0(v7, v2, v3, v4);
  sub_100005A00((v0 + 2));

  *v1 = v8;

  v9 = v0[1];

  return v9();
}

uint64_t sub_1000CE8F0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000CE988(uint64_t a1, uint64_t a2)
{
  v5 = sub_100085D40(&qword_10059C3E0);
  __chkstk_darwin(v5 - 8);
  v7 = &v14 - v6;
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = swift_allocObject();
  *(v9 + 16) = v2;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_100435B80;
  v11[5] = v9;
  v11[6] = 0;
  v11[7] = sub_1000D8B14;
  v11[8] = v8;

  v12 = v2;

  sub_100139A4C(0, 0, v7, 0, 0, &unk_100435B88, v11);

  return sub_100005518(v7, &qword_10059C3E0);
}

uint64_t sub_1000CEB5C(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_100085D40(&qword_10059C3E0);
  __chkstk_darwin(v7 - 8);
  v9 = &v17 - v8;
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;
  v11 = swift_allocObject();
  *(v11 + 16) = v3;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_100435B70;
  v13[5] = v11;
  v13[6] = a1;
  v13[7] = sub_1000D8B14;
  v13[8] = v10;
  v14 = a1;

  v15 = v3;

  sub_100139A4C(0, 0, v9, 0, 0, &unk_100435B78, v13);

  return sub_100005518(v9, &qword_10059C3E0);
}

uint64_t sub_1000CED74(uint64_t a1, uint64_t a2)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  return _swift_task_switch(sub_1000CED94, 0, 0);
}

uint64_t sub_1000CED94()
{
  v1 = swift_task_alloc();
  *(v0 + 72) = v1;
  *v1 = v0;
  v1[1] = sub_1000CEE34;

  return sub_1000C8E90(v0 + 16, 0, 0);
}

uint64_t sub_1000CEE34()
{
  v2 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = sub_1000D8B00;
  }

  else
  {
    *(v2 + 88) = type metadata accessor for ObjCUpToDateBag();
    v3 = sub_1000CEF50;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000CEF50()
{
  v1 = v0[11];
  v2 = v0[6];
  v3 = v0[7];
  v4 = v0[5];
  v5 = sub_1000D7184((v0 + 2), v4);
  v6 = *(v4 - 8);
  v7 = swift_task_alloc();
  (*(v6 + 16))(v7, v5, v4);
  v8 = sub_1000D56E8(v7, v1, v4, v2);
  sub_100005A00((v0 + 2));

  *v3 = v8;
  v9 = v0[1];

  return v9();
}

uint64_t sub_1000CF0AC(uint64_t a1, uint64_t a2, double a3)
{
  *(v3 + 152) = a2;
  *(v3 + 144) = a3;
  *(v3 + 136) = a1;
  sub_100085D40(&qword_10059C3E0);
  *(v3 + 160) = swift_task_alloc();

  return _swift_task_switch(sub_1000CF150, 0, 0);
}

uint64_t sub_1000CF150(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + 152);
  v3 = *(v2 + 160);
  v5 = sub_1000F2DD0(a1, a2, *(v2 + 144));
  v7 = v6;
  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v3, 1, 1, v8);
  v9 = swift_allocObject();
  *(v2 + 168) = v9;
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v4;
  v10 = v4;
  v11 = sub_100085D40(&qword_10059C3D0);
  v12 = swift_task_alloc();
  *(v2 + 176) = v12;
  v12[2] = v5;
  v12[3] = v7;
  v12[4] = 0;
  v12[5] = 0;
  v12[6] = v3;
  v12[7] = &unk_100435B58;
  v12[8] = v9;
  v13 = swift_task_alloc();
  *(v2 + 184) = v13;
  *v13 = v2;
  v13[1] = sub_1000CF2F0;

  return withThrowingTaskGroup<A, B>(of:returning:isolation:body:)(v2 + 56, v11, v11, 0, 0, &unk_100435B60, v12, v11);
}

uint64_t sub_1000CF2F0()
{
  v2 = *v1;

  if (v0)
  {

    v3 = sub_1000CF5A8;
  }

  else
  {
    v4 = *(v2 + 160);

    sub_100005518(v4, &qword_10059C3E0);
    v3 = sub_1000CF454;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000CF454()
{
  sub_1000056B8((v0 + 56), v0 + 16);
  v1 = *(v0 + 136);
  v2 = type metadata accessor for ObjCBag();
  sub_1000056D0(v0 + 16, v0 + 96);
  v3 = *(v0 + 120);
  v4 = *(v0 + 128);
  v5 = sub_1000D7184(v0 + 96, v3);
  v6 = *(v3 - 8);
  v7 = swift_task_alloc();
  (*(v6 + 16))(v7, v5, v3);
  v8 = sub_1000D5500(v7, v2, v3, v4);
  sub_100005A00(v0 + 96);

  sub_100005A00(v0 + 16);
  *v1 = v8;

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1000CF5A8()
{
  v1 = v0[20];

  sub_100005518(v1, &qword_10059C3E0);
  v0[5] = &type metadata for EmptyBag;
  v0[6] = sub_1000D68D0();
  v2 = v0[17];
  v3 = type metadata accessor for ObjCBag();
  sub_1000056D0((v0 + 2), (v0 + 12));
  v4 = v0[15];
  v5 = v0[16];
  v6 = sub_1000D7184((v0 + 12), v4);
  v7 = *(v4 - 8);
  v8 = swift_task_alloc();
  (*(v7 + 16))(v8, v6, v4);
  v9 = sub_1000D5500(v8, v3, v4, v5);
  sub_100005A00((v0 + 12));

  sub_100005A00((v0 + 2));
  *v2 = v9;

  v10 = v0[1];

  return v10();
}

uint64_t sub_1000CF724(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  v5 = type metadata accessor for BagService.PermittedDataOrigin();
  v4[4] = v5;
  v4[5] = *(v5 - 8);
  v4[6] = swift_task_alloc();

  return _swift_task_switch(sub_1000CF7E4, 0, 0);
}

uint64_t sub_1000CF7E4()
{
  static BagService.PermittedDataOrigin.networkAndPersistence.getter();
  v1 = swift_task_alloc();
  v0[7] = v1;
  *v1 = v0;
  v1[1] = sub_1000CF88C;
  v2 = v0[6];
  v3 = v0[2];

  return sub_1000C5300(v3, 0, 0, v2);
}

uint64_t sub_1000CF88C()
{
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 40);
  v3 = *(*v0 + 32);
  v6 = *v0;

  (*(v2 + 8))(v1, v3);

  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_1000CFA64(uint64_t a1, uint64_t a2)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  return _swift_task_switch(sub_1000CFA84, 0, 0);
}

uint64_t sub_1000CFA84()
{
  v1 = swift_task_alloc();
  *(v0 + 72) = v1;
  *v1 = v0;
  v1[1] = sub_1000CFB24;

  return sub_1000CABEC(v0 + 16, 0, 0);
}

uint64_t sub_1000CFB24()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_1000CFD68;
  }

  else
  {
    v2 = sub_1000CFC38;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000CFC38()
{
  v1 = v0[7];
  v2 = objc_allocWithZone(type metadata accessor for ObjCRecentBag());
  v3 = v0[5];
  v4 = v0[6];
  v5 = sub_1000D7184((v0 + 2), v3);
  v6 = *(v3 - 8);
  v7 = swift_task_alloc();
  (*(v6 + 16))(v7, v5, v3);
  v8 = sub_1000D55B0(v7, v2, v3, v4);
  sub_100005A00((v0 + 2));

  *v1 = v8;
  v9 = v0[1];

  return v9();
}

uint64_t sub_1000CFD98(uint64_t a1, uint64_t a2)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  return _swift_task_switch(sub_1000CFDB8, 0, 0);
}

uint64_t sub_1000CFDB8()
{
  v1 = swift_task_alloc();
  *(v0 + 72) = v1;
  *v1 = v0;
  v1[1] = sub_1000CFE58;

  return sub_1000CB2BC(v0 + 16, 0, 0);
}

uint64_t sub_1000CFE58()
{
  v2 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = sub_1000D8B00;
  }

  else
  {
    *(v2 + 88) = type metadata accessor for ObjCUpToDateBag();
    v3 = sub_1000D8B08;
  }

  return _swift_task_switch(v3, 0, 0);
}

void sub_1000CFF8C(void *a1, int a2, void *aBlock, void (*a4)(void))
{
  v6 = _Block_copy(aBlock);
  _Block_copy(v6);
  v7 = a1;
  a4();
  _Block_release(v6);
  _Block_release(v6);
}

void sub_1000D0008(uint64_t a1, void (*a2)(id))
{
  v4 = type metadata accessor for ObjCUpToDateBag();
  sub_1000056D0(a1, v13);
  v5 = v14;
  v6 = v15;
  v7 = sub_1000D7184(v13, v14);
  __chkstk_darwin(v7);
  v9 = &v13[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  (*(v10 + 16))(v9);
  v11 = sub_1000D56E8(v9, v4, v5, v6);
  sub_100005A00(v13);
  a2(v11);
}

uint64_t type metadata accessor for AppStoreDaemonBagService()
{
  result = qword_10059CA48;
  if (!qword_10059CA48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000D0550()
{
  type metadata accessor for ClientInfo();
  if (v0 <= 0x3F)
  {
    type metadata accessor for BagService.AccountSource();
    if (v1 <= 0x3F)
    {
      sub_1000D065C();
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_1000D065C()
{
  if (!qword_10059CA58)
  {
    sub_10009F7F8(&qword_10059CA60);
    v0 = type metadata accessor for Mutex();
    if (!v1)
    {
      atomic_store(v0, &qword_10059CA58);
    }
  }
}

uint64_t sub_1000D06CC()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v0 = dispatch thunk of Bag.subscript.getter();

  return v0;
}

uint64_t sub_1000D0A3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = a4(v5);

  return v6;
}

uint64_t sub_1000D0CE8()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  dispatch thunk of Bag.subscript.getter();
}

char *sub_1000D0EC0()
{
  v1 = type metadata accessor for AnyValue();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100005B60((v0 + OBJC_IVAR___Bag_bag), *(v0 + OBJC_IVAR___Bag_bag + 24));
  v5 = sub_1000D10D8();
  if (!v5)
  {
    return 0;
  }

  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = v2 + 16;
    v8 = *(v2 + 16);
    v9 = *(v2 + 80);
    v20 = v5;
    v10 = v5 + ((v9 + 32) & ~v9);
    v21 = *(v7 + 56);
    v22 = v8;
    v23 = v7;
    v11 = (v7 - 8);
    v12 = _swiftEmptyArrayStorage;
    v8(v4, v10, v1);
    while (1)
    {
      v14 = AnyValue.string.getter();
      v16 = v15;
      (*v11)(v4, v1);
      if (v16)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v12 = sub_1001AC6FC(0, *(v12 + 2) + 1, 1, v12);
        }

        v18 = *(v12 + 2);
        v17 = *(v12 + 3);
        if (v18 >= v17 >> 1)
        {
          v12 = sub_1001AC6FC((v17 > 1), v18 + 1, 1, v12);
        }

        *(v12 + 2) = v18 + 1;
        v13 = &v12[16 * v18];
        *(v13 + 4) = v14;
        *(v13 + 5) = v16;
      }

      v10 += v21;
      if (!--v6)
      {
        break;
      }

      v22(v4, v10, v1);
    }
  }

  else
  {

    return _swiftEmptyArrayStorage;
  }

  return v12;
}

uint64_t sub_1000D10D8()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v0 = dispatch thunk of Bag.subscript.getter();

  return v0;
}

void *sub_1000D11B0()
{
  v1 = type metadata accessor for AnyValue();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100005B60((v0 + OBJC_IVAR___Bag_bag), *(v0 + OBJC_IVAR___Bag_bag + 24));
  v5 = sub_1000D10D8();
  if (!v5)
  {
    return 0;
  }

  v18 = _swiftEmptyArrayStorage;
  v6 = *(v5 + 16);
  if (v6)
  {
    v9 = *(v2 + 16);
    v7 = v2 + 16;
    v8 = v9;
    v10 = (*(v7 + 64) + 32) & ~*(v7 + 64);
    v17[2] = v5;
    v11 = v5 + v10;
    v12 = *(v7 + 56);
    v13 = (v7 - 8);
    v14 = _swiftEmptyArrayStorage;
    v9(v4, v5 + v10, v1);
    while (1)
    {
      AnyValue.int.getter();
      if (v15)
      {
        (*v13)(v4, v1);
      }

      else
      {
        Int._bridgeToObjectiveC()();
        (*v13)(v4, v1);
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v17[1] = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v14 = v18;
      }

      v11 += v12;
      if (!--v6)
      {
        break;
      }

      v8(v4, v11, v1);
    }
  }

  else
  {

    return _swiftEmptyArrayStorage;
  }

  return v14;
}

id sub_1000D1544()
{
  v1 = *(v0 + OBJC_IVAR___Bag_bag + 24);
  sub_100005B60((v0 + OBJC_IVAR___Bag_bag), v1);
  sub_1000C50F8(v1, v17);
  sub_1000044A4(v17, &v15, &qword_10059BDF0);
  if (v16)
  {
    sub_1000056B8(&v15, v14);
    sub_1000056D0(v14, v11);
    v2 = objc_allocWithZone(type metadata accessor for ObjCRecentBag());
    v3 = v12;
    v4 = v13;
    v5 = sub_1000D7184(v11, v12);
    __chkstk_darwin(v5);
    v7 = &v11[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
    (*(v8 + 16))(v7);
    v9 = sub_1000D55B0(v7, v2, v3, v4);
    sub_100005A00(v14);
    sub_100005518(v17, &qword_10059BDF0);
    sub_100005A00(v11);
  }

  else
  {
    sub_100005518(v17, &qword_10059BDF0);
    return 0;
  }

  return v9;
}

id sub_1000D1738()
{
  v1 = *(v0 + OBJC_IVAR___Bag_bag + 24);
  sub_100005B60((v0 + OBJC_IVAR___Bag_bag), v1);
  sub_1000C86D4(v1, v17);
  sub_1000044A4(v17, &v15, &unk_10059CB80);
  if (v16)
  {
    sub_1000056B8(&v15, v14);
    v2 = type metadata accessor for ObjCUpToDateBag();
    sub_1000056D0(v14, v11);
    v3 = v12;
    v4 = v13;
    v5 = sub_1000D7184(v11, v12);
    __chkstk_darwin(v5);
    v7 = &v11[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
    (*(v8 + 16))(v7);
    v9 = sub_1000D56E8(v7, v2, v3, v4);
    sub_100005A00(v14);
    sub_100005518(v17, &unk_10059CB80);
    sub_100005A00(v11);
  }

  else
  {
    sub_100005518(v17, &unk_10059CB80);
    return 0;
  }

  return v9;
}

id sub_1000D1944(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_1000D1A0C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1000D5C94(a1, a2);
  v4 = type metadata accessor for URL();
  v5 = *(*(v4 - 8) + 56);

  return v5(a3, 1, 1, v4);
}

uint64_t sub_1000D1AA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(char *, uint64_t, uint64_t, uint64_t))
{
  v9 = *(a1 - 8);
  __chkstk_darwin();
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = v13(v12);
  (*(v9 + 16))(v11, v5, a1);
  return a5(v11, v14, a1, a2);
}

uint64_t sub_1000D1B9C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[11] = a7;
  v8[12] = a8;
  v8[10] = a6;
  v10 = type metadata accessor for DispatchWorkItemFlags();
  v8[13] = v10;
  v8[14] = *(v10 - 8);
  v8[15] = swift_task_alloc();
  v11 = type metadata accessor for DispatchQoS();
  v8[16] = v11;
  v8[17] = *(v11 - 8);
  v8[18] = swift_task_alloc();
  v12 = type metadata accessor for DispatchQoS.QoSClass();
  v8[19] = v12;
  v8[20] = *(v12 - 8);
  v8[21] = swift_task_alloc();
  v15 = (a4 + *a4);
  v13 = swift_task_alloc();
  v8[22] = v13;
  *v13 = v8;
  v13[1] = sub_1000D1DB0;

  return v15(v8 + 8);
}

uint64_t sub_1000D1DB0()
{

  return _swift_task_switch(sub_1000D1EAC, 0, 0);
}

uint64_t sub_1000D1EAC()
{
  v1 = v0[10];
  if (v1)
  {
    v20 = v0[10];
  }

  else
  {
    v3 = v0[20];
    v2 = v0[21];
    v4 = v0[19];
    sub_10009FAD4(0, &qword_10059CBC8);
    (*(v3 + 104))(v2, enum case for DispatchQoS.QoSClass.default(_:), v4);
    v20 = static OS_dispatch_queue.global(qos:)();
    (*(v3 + 8))(v2, v4);
    v1 = 0;
  }

  v5 = v0[18];
  v6 = v0[15];
  v18 = v0[17];
  v19 = v0[16];
  v7 = v0[13];
  v17 = v0[14];
  v8 = v0[11];
  v9 = v0[12];
  v10 = v0[8];
  v11 = swift_allocObject();
  v11[2] = v8;
  v11[3] = v9;
  v11[4] = v10;
  v0[6] = sub_1000D8524;
  v0[7] = v11;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_100005A4C;
  v0[5] = &unk_10050C348;
  v12 = _Block_copy(v0 + 2);
  v13 = v1;

  v14 = v10;
  static DispatchQoS.unspecified.getter();
  v0[9] = _swiftEmptyArrayStorage;
  sub_1000D80D4(&unk_10059CBD0, &type metadata accessor for DispatchWorkItemFlags);
  sub_100085D40(&unk_10059D0C0);
  sub_10000593C();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v12);

  (*(v17 + 8))(v6, v7);
  (*(v18 + 8))(v5, v19);

  v15 = v0[1];

  return v15();
}

uint64_t sub_1000D2168(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[11] = a7;
  v8[12] = a8;
  v8[10] = a6;
  v10 = type metadata accessor for DispatchWorkItemFlags();
  v8[13] = v10;
  v8[14] = *(v10 - 8);
  v8[15] = swift_task_alloc();
  v11 = type metadata accessor for DispatchQoS();
  v8[16] = v11;
  v8[17] = *(v11 - 8);
  v8[18] = swift_task_alloc();
  v12 = type metadata accessor for DispatchQoS.QoSClass();
  v8[19] = v12;
  v8[20] = *(v12 - 8);
  v8[21] = swift_task_alloc();
  v15 = (a4 + *a4);
  v13 = swift_task_alloc();
  v8[22] = v13;
  *v13 = v8;
  v13[1] = sub_1000D237C;

  return v15(v8 + 8);
}

uint64_t sub_1000D237C()
{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = sub_1000D2758;
  }

  else
  {
    v2 = sub_1000D2490;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000D2490()
{
  v1 = v0[8];
  v2 = v0[10];
  if (v2)
  {
    v19 = v0[10];
  }

  else
  {
    v4 = v0[20];
    v3 = v0[21];
    v5 = v0[19];
    sub_10009FAD4(0, &qword_10059CBC8);
    (*(v4 + 104))(v3, enum case for DispatchQoS.QoSClass.default(_:), v5);
    v19 = static OS_dispatch_queue.global(qos:)();
    (*(v4 + 8))(v3, v5);
    v2 = 0;
  }

  v6 = v0[18];
  v18 = v0[17];
  v7 = v0[15];
  v20 = v0[16];
  v9 = v0[13];
  v8 = v0[14];
  v11 = v0[11];
  v10 = v0[12];
  v12 = swift_allocObject();
  v12[2] = v11;
  v12[3] = v10;
  v12[4] = v1;
  v12[5] = 0;
  v0[6] = sub_1000D8328;
  v0[7] = v12;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_100005A4C;
  v0[5] = &unk_10050C258;
  v13 = _Block_copy(v0 + 2);
  v14 = v2;

  v15 = v1;
  swift_errorRetain();
  static DispatchQoS.unspecified.getter();
  v0[9] = _swiftEmptyArrayStorage;
  sub_1000D80D4(&unk_10059CBD0, &type metadata accessor for DispatchWorkItemFlags);
  sub_100085D40(&unk_10059D0C0);
  sub_10000593C();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v13);

  (*(v8 + 8))(v7, v9);
  (*(v18 + 8))(v6, v20);

  v16 = v0[1];

  return v16();
}

uint64_t sub_1000D2758()
{
  v1 = v0[23];
  v2 = v0[10];
  if (v2)
  {
    v19 = v0[10];
  }

  else
  {
    v3 = v0[20];
    v4 = v0[21];
    v5 = v0[19];
    sub_10009FAD4(0, &qword_10059CBC8);
    (*(v3 + 104))(v4, enum case for DispatchQoS.QoSClass.default(_:), v5);
    v19 = static OS_dispatch_queue.global(qos:)();
    (*(v3 + 8))(v4, v5);
  }

  v6 = v0[18];
  v7 = v0[15];
  v17 = v0[17];
  v18 = v0[16];
  v9 = v0[13];
  v8 = v0[14];
  v11 = v0[11];
  v10 = v0[12];
  v12 = swift_allocObject();
  v12[2] = v11;
  v12[3] = v10;
  v12[4] = 0;
  v12[5] = v1;
  v0[6] = sub_1000D8328;
  v0[7] = v12;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_100005A4C;
  v0[5] = &unk_10050C258;
  v13 = _Block_copy(v0 + 2);
  v14 = v2;

  swift_errorRetain();
  static DispatchQoS.unspecified.getter();
  v0[9] = _swiftEmptyArrayStorage;
  sub_1000D80D4(&unk_10059CBD0, &type metadata accessor for DispatchWorkItemFlags);
  sub_100085D40(&unk_10059D0C0);
  sub_10000593C();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v13);

  (*(v8 + 8))(v7, v9);
  (*(v17 + 8))(v6, v18);

  v15 = v0[1];

  return v15();
}

uint64_t sub_1000D2A0C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[11] = a7;
  v8[12] = a8;
  v8[10] = a6;
  v10 = type metadata accessor for DispatchWorkItemFlags();
  v8[13] = v10;
  v8[14] = *(v10 - 8);
  v8[15] = swift_task_alloc();
  v11 = type metadata accessor for DispatchQoS();
  v8[16] = v11;
  v8[17] = *(v11 - 8);
  v8[18] = swift_task_alloc();
  v12 = type metadata accessor for DispatchQoS.QoSClass();
  v8[19] = v12;
  v8[20] = *(v12 - 8);
  v8[21] = swift_task_alloc();
  v15 = (a4 + *a4);
  v13 = swift_task_alloc();
  v8[22] = v13;
  *v13 = v8;
  v13[1] = sub_1000D2C20;

  return v15(v8 + 8);
}

uint64_t sub_1000D2C20()
{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = sub_1000D2FFC;
  }

  else
  {
    v2 = sub_1000D2D34;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000D2D34()
{
  v1 = v0[8];
  v2 = v0[10];
  if (v2)
  {
    v19 = v0[10];
  }

  else
  {
    v4 = v0[20];
    v3 = v0[21];
    v5 = v0[19];
    sub_10009FAD4(0, &qword_10059CBC8);
    (*(v4 + 104))(v3, enum case for DispatchQoS.QoSClass.default(_:), v5);
    v19 = static OS_dispatch_queue.global(qos:)();
    (*(v4 + 8))(v3, v5);
    v2 = 0;
  }

  v6 = v0[18];
  v18 = v0[17];
  v7 = v0[15];
  v20 = v0[16];
  v9 = v0[13];
  v8 = v0[14];
  v11 = v0[11];
  v10 = v0[12];
  v12 = swift_allocObject();
  v12[2] = v11;
  v12[3] = v10;
  v12[4] = v1;
  v12[5] = 0;
  v0[6] = sub_1000D8AF4;
  v0[7] = v12;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_100005A4C;
  v0[5] = &unk_10050C118;
  v13 = _Block_copy(v0 + 2);
  v14 = v2;

  v15 = v1;
  swift_errorRetain();
  static DispatchQoS.unspecified.getter();
  v0[9] = _swiftEmptyArrayStorage;
  sub_1000D80D4(&unk_10059CBD0, &type metadata accessor for DispatchWorkItemFlags);
  sub_100085D40(&unk_10059D0C0);
  sub_10000593C();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v13);

  (*(v8 + 8))(v7, v9);
  (*(v18 + 8))(v6, v20);

  v16 = v0[1];

  return v16();
}

uint64_t sub_1000D2FFC()
{
  v1 = v0[23];
  v2 = v0[10];
  if (v2)
  {
    v19 = v0[10];
  }

  else
  {
    v3 = v0[20];
    v4 = v0[21];
    v5 = v0[19];
    sub_10009FAD4(0, &qword_10059CBC8);
    (*(v3 + 104))(v4, enum case for DispatchQoS.QoSClass.default(_:), v5);
    v19 = static OS_dispatch_queue.global(qos:)();
    (*(v3 + 8))(v4, v5);
  }

  v6 = v0[18];
  v7 = v0[15];
  v17 = v0[17];
  v18 = v0[16];
  v9 = v0[13];
  v8 = v0[14];
  v11 = v0[11];
  v10 = v0[12];
  v12 = swift_allocObject();
  v12[2] = v11;
  v12[3] = v10;
  v12[4] = 0;
  v12[5] = v1;
  v0[6] = sub_1000D8AF4;
  v0[7] = v12;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_100005A4C;
  v0[5] = &unk_10050C118;
  v13 = _Block_copy(v0 + 2);
  v14 = v2;

  swift_errorRetain();
  static DispatchQoS.unspecified.getter();
  v0[9] = _swiftEmptyArrayStorage;
  sub_1000D80D4(&unk_10059CBD0, &type metadata accessor for DispatchWorkItemFlags);
  sub_100085D40(&unk_10059D0C0);
  sub_10000593C();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v13);

  (*(v8 + 8))(v7, v9);
  (*(v17 + 8))(v6, v18);

  v15 = v0[1];

  return v15();
}

uint64_t sub_1000D32BC(char *a1, uint64_t a2, void *a3)
{
  sub_100005B60(&a1[*a3], *&a1[*a3 + 24]);
  v4 = a1;
  v5 = dispatch thunk of Bag.isExpired.getter();

  return v5 & 1;
}

uint64_t sub_1000D34F4(uint64_t a1)
{
  v2[13] = v1;
  v4 = type metadata accessor for Date();
  v2[14] = v4;
  v2[15] = *(v4 - 8);
  v2[16] = swift_task_alloc();
  if (a1)
  {
    swift_getObjectType();
    v5 = dispatch thunk of Actor.unownedExecutor.getter();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  return _swift_task_switch(sub_1000D3618, v5, v7);
}

uint64_t sub_1000D3618()
{
  v2 = *(v0 + 120);
  v1 = *(v0 + 128);
  v4 = *(v0 + 104);
  v3 = *(v0 + 112);
  v5 = [objc_allocWithZone(AMSSnapshotBagBuilder) init];
  v6 = String._bridgeToObjectiveC()();
  [v5 setProfile:v6];

  v7 = String._bridgeToObjectiveC()();
  [v5 setProfileVersion:v7];

  v8 = [objc_opt_self() currentProcess];
  [v5 setProcessInfo:v8];

  static Date.distantPast.getter();
  isa = Date._bridgeToObjectiveC()().super.isa;
  (*(v2 + 8))(v1, v3);
  [v5 setExpirationDate:isa];

  sub_1000056D0(v4 + OBJC_IVAR____TtC9appstoredP33_CE29999887872BC054A90566175647F89ASDAMSBag_bag, v0 + 56);
  sub_100085D40(&qword_10059C3D0);
  sub_100085D40(&qword_10059CBA0);
  if (swift_dynamicCast())
  {
    sub_100005B60((v0 + 16), *(v0 + 40));
    v10 = dispatch thunk of BagInternalTesting.dictionary.getter();
    sub_100005A00(v0 + 16);
  }

  else
  {
    *(v0 + 48) = 0;
    *(v0 + 16) = 0u;
    *(v0 + 32) = 0u;
    sub_100005518(v0 + 16, &qword_10059CBA8);
    v10 = sub_1000EF7B8(_swiftEmptyArrayStorage);
  }

  sub_100180410(v10);

  v11 = Dictionary._bridgeToObjectiveC()().super.isa;

  [v5 setData:v11];

  *(v0 + 96) = 0;
  v12 = [v5 buildWithError:v0 + 96];
  v13 = *(v0 + 96);
  if (v12)
  {
    v14 = v12;
    v15 = v13;

    v16 = *(v0 + 8);

    return v16(v14);
  }

  else
  {
    v18 = v13;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    v19 = *(v0 + 8);

    return v19();
  }
}

uint64_t sub_1000D3B10(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_1000D3BC0;

  return sub_1000D34F4(0);
}

uint64_t sub_1000D3BC0(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 16);
  v7 = *v2;

  v8 = *(v5 + 24);
  if (v3)
  {
    v9 = _convertErrorToNSError(_:)();

    (v8)[2](v8, 0, v9);

    _Block_release(v8);
  }

  else
  {
    (v8)[2](v8, a1, 0);
    _Block_release(v8);
  }

  v10 = *(v7 + 8);

  return v10();
}

id sub_1000D3D60(uint64_t a1)
{
  sub_100005B60((v1 + OBJC_IVAR____TtC9appstoredP33_CE29999887872BC054A90566175647F89ASDAMSBag_bag), *(v1 + OBJC_IVAR____TtC9appstoredP33_CE29999887872BC054A90566175647F89ASDAMSBag_bag + 24));
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  dispatch thunk of Bag.subscript.getter();
  v4 = v3;

  if (v4)
  {
    v5 = String._bridgeToObjectiveC()();
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_1000D3E40(v5);

  v7 = [objc_opt_self() bagValueWithKey:a1 valueType:4 valuePromise:v6];
  return v7;
}

id sub_1000D3E40(uint64_t a1)
{
  if (a1)
  {
    v1 = [objc_opt_self() promiseWithResult:a1];

    return v1;
  }

  else
  {
    type metadata accessor for AMSError(0);
    sub_1000EF17C(_swiftEmptyArrayStorage);
    sub_1000D80D4(&qword_10059BA40, type metadata accessor for AMSError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v3 = _convertErrorToNSError(_:)();
    v4 = [objc_opt_self() promiseWithError:{v3, 204}];

    return v4;
  }
}

id sub_1000D3FC8(uint64_t a1)
{
  v3 = type metadata accessor for AnyValue();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100005B60((v1 + OBJC_IVAR____TtC9appstoredP33_CE29999887872BC054A90566175647F89ASDAMSBag_bag), *(v1 + OBJC_IVAR____TtC9appstoredP33_CE29999887872BC054A90566175647F89ASDAMSBag_bag + 24));
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = dispatch thunk of Bag.subscript.getter();

  if (v7)
  {
    v8 = *(v7 + 16);
    if (v8)
    {
      v19 = a1;
      v21 = _swiftEmptyArrayStorage;
      specialized ContiguousArray.reserveCapacity(_:)();
      v10 = *(v4 + 16);
      v9 = v4 + 16;
      v20 = v10;
      v11 = *(v9 + 64);
      v18 = v7;
      v12 = v7 + ((v11 + 32) & ~v11);
      v13 = *(v9 + 56);
      do
      {
        v20(v6, v12, v3);
        sub_1000D4230();
        (*(v9 - 8))(v6, v3);
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v12 += v13;
        --v8;
      }

      while (v8);

      a1 = v19;
    }

    else
    {
    }

    sub_100085D40(&qword_10059CB90);
    isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    isa = 0;
  }

  v15 = sub_1000D3E40(isa);

  v16 = [objc_opt_self() bagValueWithKey:a1 valueType:0 valuePromise:v15];
  return v16;
}

Class sub_1000D4230()
{
  v0 = type metadata accessor for AnyValue();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v33 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for AnyValue.Type();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v33 - v9;
  AnyValue.type.getter();
  static AnyValue.Type.null.getter();
  v11 = static AnyValue.Type.== infix(_:_:)();
  v12 = *(v5 + 8);
  v12(v8, v4);
  v12(v10, v4);
  if (v11)
  {
    return [objc_allocWithZone(NSNull) init];
  }

  if (AnyValue.BOOL.getter() != 2)
  {
    return Bool._bridgeToObjectiveC()().super.super.isa;
  }

  AnyValue.int.getter();
  if ((v14 & 1) == 0)
  {
    return Int._bridgeToObjectiveC()().super.super.isa;
  }

  AnyValue.double.getter();
  if ((v15 & 1) == 0)
  {
    return Double._bridgeToObjectiveC()().super.super.isa;
  }

  AnyValue.string.getter();
  if (v16)
  {
    v17 = String._bridgeToObjectiveC()();
LABEL_8:
    v18 = v17;

    return v18;
  }

  v19 = AnyValue.data.getter();
  if (v20 >> 60 == 15)
  {
    v21 = AnyValue.dictionary.getter();
    if (v21)
    {
      sub_1000D51E4(v21);

      sub_100085D40(&qword_10059CB90);
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      return isa;
    }

    else
    {
      result = AnyValue.array.getter();
      if (result)
      {
        v26 = *(result + 2);
        if (v26)
        {
          v35 = _swiftEmptyArrayStorage;
          v27 = result;
          specialized ContiguousArray.reserveCapacity(_:)();
          v29 = *(v1 + 16);
          v28 = v1 + 16;
          v33 = v27;
          v34 = v29;
          v30 = v27 + ((*(v28 + 64) + 32) & ~*(v28 + 64));
          v31 = *(v28 + 56);
          do
          {
            v32 = v34(v3, v30, v0);
            sub_1000D4230(v32);
            (*(v28 - 8))(v3, v0);
            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            specialized ContiguousArray._endMutation()();
            v30 += v31;
            --v26;
          }

          while (v26);
        }

        sub_100085D40(&qword_10059CB90);
        v17 = Array._bridgeToObjectiveC()().super.isa;
        goto LABEL_8;
      }
    }
  }

  else
  {
    v23 = v19;
    v24 = v20;
    v25 = Data._bridgeToObjectiveC()().super.isa;
    sub_1000A7F1C(v23, v24);
    return v25;
  }

  return result;
}

id sub_1000D4648(uint64_t a1)
{
  sub_100005B60((v1 + OBJC_IVAR____TtC9appstoredP33_CE29999887872BC054A90566175647F89ASDAMSBag_bag), *(v1 + OBJC_IVAR____TtC9appstoredP33_CE29999887872BC054A90566175647F89ASDAMSBag_bag + 24));
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = dispatch thunk of Bag.subscript.getter();

  if (v3 == 2)
  {
    isa = 0;
  }

  else
  {
    isa = Bool._bridgeToObjectiveC()().super.super.isa;
  }

  v5 = sub_1000D3E40(isa);

  v6 = [objc_opt_self() bagValueWithKey:a1 valueType:1 valuePromise:v5];
  return v6;
}

id sub_1000D4780(uint64_t a1)
{
  sub_100005B60((v1 + OBJC_IVAR____TtC9appstoredP33_CE29999887872BC054A90566175647F89ASDAMSBag_bag), *(v1 + OBJC_IVAR____TtC9appstoredP33_CE29999887872BC054A90566175647F89ASDAMSBag_bag + 24));
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  dispatch thunk of Bag.subscript.getter();
  v4 = v3;

  if (v4)
  {
    isa = 0;
  }

  else
  {
    isa = Double._bridgeToObjectiveC()().super.super.isa;
  }

  v6 = sub_1000D3E40(isa);

  v7 = [objc_opt_self() bagValueWithKey:a1 valueType:2 valuePromise:v6];
  return v7;
}

id sub_1000D48B4(uint64_t a1)
{
  sub_100005B60((v1 + OBJC_IVAR____TtC9appstoredP33_CE29999887872BC054A90566175647F89ASDAMSBag_bag), *(v1 + OBJC_IVAR____TtC9appstoredP33_CE29999887872BC054A90566175647F89ASDAMSBag_bag + 24));
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  dispatch thunk of Bag.subscript.getter();
  v4 = v3;

  if (v4)
  {
    isa = 0;
  }

  else
  {
    isa = Int._bridgeToObjectiveC()().super.super.isa;
  }

  v6 = sub_1000D3E40(isa);

  v7 = [objc_opt_self() bagValueWithKey:a1 valueType:3 valuePromise:v6];
  return v7;
}

id sub_1000D49E8(uint64_t a1)
{
  v3 = sub_100085D40(&qword_10059CE90);
  __chkstk_darwin(v3 - 8);
  v5 = &v14 - v4;
  sub_100005B60((v1 + OBJC_IVAR____TtC9appstoredP33_CE29999887872BC054A90566175647F89ASDAMSBag_bag), *(v1 + OBJC_IVAR____TtC9appstoredP33_CE29999887872BC054A90566175647F89ASDAMSBag_bag + 24));
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  dispatch thunk of Bag.subscript.getter();

  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  v9 = 0;
  if ((*(v7 + 48))(v5, 1, v6) != 1)
  {
    URL._bridgeToObjectiveC()(v8);
    v9 = v10;
    (*(v7 + 8))(v5, v6);
  }

  v11 = sub_1000D3E40(v9);

  v12 = [objc_opt_self() bagValueWithKey:a1 valueType:5 valuePromise:v11];
  return v12;
}

id sub_1000D4BD4(uint64_t a1)
{
  sub_100005B60((v1 + OBJC_IVAR____TtC9appstoredP33_CE29999887872BC054A90566175647F89ASDAMSBag_bag), *(v1 + OBJC_IVAR____TtC9appstoredP33_CE29999887872BC054A90566175647F89ASDAMSBag_bag + 24));
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  isa = dispatch thunk of Bag.subscript.getter();

  if (isa)
  {
    sub_1000D51E4(isa);

    sub_100085D40(&qword_10059CB90);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  v4 = sub_1000D3E40(isa);

  v5 = [objc_opt_self() bagValueWithKey:a1 valueType:6 valuePromise:v4];
  return v5;
}

id sub_1000D4D4C(uint64_t a1, void *a2)
{
  v5 = sub_100085D40(&qword_10059CE90);
  __chkstk_darwin(v5 - 8);
  v7 = &v22 - v6;
  v8 = type metadata accessor for MediaAccount();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    sub_1000056D0(v2 + OBJC_IVAR____TtC9appstoredP33_CE29999887872BC054A90566175647F89ASDAMSBag_bag, v26);
    sub_100005B60(v26, v26[3]);
    v24 = a1;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = a2;
    MediaAccount.init(account:)();
    dispatch thunk of Bag.subscript.getter();

    (*(v9 + 8))(v11, v8);
    v12 = type metadata accessor for URL();
    v13 = *(v12 - 8);
    if ((*(v13 + 48))(v7, 1, v12) == 1)
    {
      sub_100005A00(v26);
      type metadata accessor for AMSError(0);
      v25 = 204;
      sub_1000EF17C(_swiftEmptyArrayStorage);
      sub_1000D80D4(&qword_10059BA40, type metadata accessor for AMSError);
      _BridgedStoredNSError.init(_:userInfo:)();
      v15 = v26[0];
      v16 = _convertErrorToNSError(_:)();
      v17 = [objc_opt_self() promiseWithError:v16];
    }

    else
    {
      URL._bridgeToObjectiveC()(v14);
      v20 = v19;
      (*(v13 + 8))(v7, v12);
      v17 = [objc_opt_self() promiseWithResult:v20];

      sub_100005A00(v26);
    }

    v21 = [objc_opt_self() bagValueWithKey:v24 valueType:5 valuePromise:v17];

    return v21;
  }

  else
  {

    return sub_1000D49E8(a1);
  }
}

uint64_t sub_1000D51E4(uint64_t a1)
{
  v36 = type metadata accessor for AnyValue();
  v2 = *(v36 - 8);
  __chkstk_darwin(v36);
  v34 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100085D40(&qword_10059CB98);
  result = static _DictionaryStorage.copy(original:)();
  v5 = 0;
  v37 = a1;
  v8 = *(a1 + 64);
  v7 = a1 + 64;
  v6 = v8;
  v9 = 1 << *(v7 - 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & v6;
  v12 = (v9 + 63) >> 6;
  v35 = v2;
  v31 = v2 + 8;
  v32 = v2 + 16;
  v30 = result + 64;
  v33 = result;
  if (v11)
  {
    while (1)
    {
      v13 = __clz(__rbit64(v11));
      v38 = (v11 - 1) & v11;
LABEL_10:
      v16 = v13 | (v5 << 6);
      v39 = 16 * v16;
      v17 = v36;
      v18 = *(v37 + 56);
      v19 = (*(v37 + 48) + 16 * v16);
      v20 = v19[1];
      v40 = *v19;
      v21 = v34;
      v22 = v35;
      (*(v35 + 16))(v34, v18 + *(v35 + 72) * v16, v36);

      v24 = sub_1000D4230(v23);
      (*(v22 + 8))(v21, v17);
      *(v30 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      result = v33;
      v25 = (*(v33 + 48) + v39);
      *v25 = v40;
      v25[1] = v20;
      *(*(result + 56) + 8 * v16) = v24;
      v26 = *(result + 16);
      v27 = __OFADD__(v26, 1);
      v28 = v26 + 1;
      if (v27)
      {
        break;
      }

      *(result + 16) = v28;
      v11 = v38;
      if (!v38)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v5 >= v12)
      {
        return result;
      }

      v15 = *(v7 + 8 * v5);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v38 = (v15 - 1) & v15;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_1000D5448(uint64_t a1, objc_class *a2, uint64_t a3, uint64_t a4)
{
  v12[3] = a3;
  v12[4] = a4;
  v7 = sub_100005F38(v12);
  (*(*(a3 - 8) + 32))(v7, a1, a3);
  v8 = objc_allocWithZone(a2);
  sub_1000056D0(v12, v8 + OBJC_IVAR____TtC9appstoredP33_CE29999887872BC054A90566175647F89ASDAMSBag_bag);
  v11.receiver = v8;
  v11.super_class = a2;
  v9 = objc_msgSendSuper2(&v11, "init");
  sub_100005A00(v12);
  return v9;
}

id sub_1000D5500(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[3] = a3;
  v12[4] = a4;
  v6 = sub_100005F38(v12);
  (*(*(a3 - 8) + 32))(v6, a1, a3);
  v7 = type metadata accessor for ObjCBag();
  v8 = objc_allocWithZone(v7);
  sub_1000056D0(v12, v8 + OBJC_IVAR___Bag_bag);
  v11.receiver = v8;
  v11.super_class = v7;
  v9 = objc_msgSendSuper2(&v11, "init");
  sub_100005A00(v12);
  return v9;
}

id sub_1000D55B0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  v8 = __chkstk_darwin(a1);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v15 - v11;
  (*(v7 + 32))(&v15 - v11);
  (*(v7 + 16))(v10, v12, a3);
  v13 = sub_100005E64(v10, a2, a3, a4);
  (*(v7 + 8))(v12, a3);
  return v13;
}

id sub_1000D56E8(uint64_t a1, objc_class *a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  v8 = __chkstk_darwin(a1);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v16 - v11;
  (*(v7 + 32))(&v16 - v11);
  v13 = objc_allocWithZone(a2);
  (*(v7 + 16))(v10, v12, a3);
  v14 = sub_1000D55B0(v10, v13, a3, a4);
  (*(v7 + 8))(v12, a3);
  return v14;
}

uint64_t sub_1000D582C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[3] = a3;
  v10[4] = a4;
  v7 = sub_100005F38(v10);
  (*(*(a3 - 8) + 16))(v7, a1, a3);
  v8 = a2 + OBJC_IVAR___BagService_lastRecentBagMutex;
  os_unfair_lock_lock((a2 + OBJC_IVAR___BagService_lastRecentBagMutex));
  sub_1000CA260((v8 + 8), v10);
  os_unfair_lock_unlock(v8);
  return sub_100005A00(v10);
}

uint64_t sub_1000D58D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_100085D40(&qword_10059CA60);
  __chkstk_darwin(v5 - 8);
  v7 = &v18[-v6];
  v8 = type metadata accessor for BagService();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v18[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = type metadata accessor for BagService.ObservationToken();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v18[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20[3] = a3;
  v16 = sub_100005F38(v20);
  (*(*(a3 - 8) + 16))(v16, a1, a3);
  sub_10009F6D0(v20, v19);
  sub_100085D40(&qword_10059C510);
  swift_dynamicCast();
  sub_1000C5C88(v7);
  (*(v9 + 56))(v7, 0, 1, v8);
  (*(v9 + 32))(v11, v7, v8);
  BagService.removeChangeObserver(withToken:)();
  (*(v9 + 8))(v11, v8);
  (*(v13 + 8))(v15, v12);
  return sub_100005A00(v20);
}

id sub_1000D5BB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  __chkstk_darwin(a1);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = objc_allocWithZone(type metadata accessor for ObjCRecentBag());
  (*(v7 + 32))(v9, a1, a3);
  return sub_1000D55B0(v9, v10, a3, a4);
}

uint64_t sub_1000D5C94(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.bag.getter();

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v14 = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_1001AD0D8(a1, a2, &v14);
    _os_log_impl(&_mh_execute_header, v8, v9, "Read key %s from an empty bag", v10, 0xCu);
    sub_100005A00(v11);
  }

  return (*(v5 + 8))(v7, v4);
}

id sub_1000D5E3C(void *a1, int a2, uint64_t a3)
{
  v58 = a3;
  LODWORD(v53) = a2;
  v4 = 0;
  v55 = type metadata accessor for MediaAccount();
  v5 = *(v55 - 8);
  v6 = __chkstk_darwin(v55);
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v47 = &v44 - v9;
  v10 = type metadata accessor for BagService.AccountSource();
  v11 = __chkstk_darwin(v10 - 8);
  v13 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v46 = &v44 - v14;
  v50 = type metadata accessor for AccountClientIdentifier();
  v15 = *(v50 - 8);
  v16 = __chkstk_darwin(v50);
  v49 = &v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v19 = &v44 - v18;
  v20 = type metadata accessor for ClientInfo();
  v56 = *(v20 - 8);
  v57 = v20;
  v21 = __chkstk_darwin(v20);
  v54 = &v44 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v21);
  v51 = &v44 - v24;
  __chkstk_darwin(v23);
  v26 = &v44 - v25;
  v27 = [a1 ams_DSID];
  v28 = v27;
  v52 = 0;
  if (v27)
  {
    v4 = [v27 unsignedLongLongValue];
  }

  if (qword_10059B4B0 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_10059C9E0);
  if (qword_10059C9E8)
  {
    if (byte_10059C9F8)
    {
      if (!v28)
      {
LABEL_11:
        v29 = qword_10059C9E8;
        os_unfair_lock_unlock(&dword_10059C9E0);
        return v29;
      }
    }

    else if (v28 && qword_10059C9F0 == v4)
    {
      goto LABEL_11;
    }
  }

  v45 = v4;
  v48 = v13;
  if (v53 & 1) != 0 && (static AccountClientIdentifier.production.getter(), v53 = a1, v31 = v50, (*(v15 + 16))(v49, v19, v50), a1 = v53, ClientInfo.init(identifier:name:version:accountClientIdentifier:)(), (*(v15 + 8))(v19, v31), v32 = static ClientInfo.== infix(_:_:)(), (*(v56 + 8))(v26, v57), (v32))
  {
    v33 = *(v56 + 16);
    v33(v51, v58, v57);
    v34 = a1;
    v35 = v47;
    v36 = v52;
    MediaAccount.init(account:)();
    if (v36)
    {
LABEL_22:
      result = swift_unexpectedError();
      __break(1u);
      return result;
    }

    LODWORD(v56) = v28 == 0;

    v37 = v46;
    static BagService.AccountSource.fixed(account:)();
    (*(v5 + 8))(v35, v55);
    v38 = objc_allocWithZone(type metadata accessor for AppStoreDaemonBagService());
    qword_10059C9E8 = sub_1000C5A08(v51, v37);
    qword_10059C9F0 = v45;
    byte_10059C9F8 = v56;
    v39 = qword_10059C9E8;
    os_unfair_lock_unlock(&dword_10059C9E0);
    result = v39;
    v40 = v54;
    if (v39)
    {
      return result;
    }
  }

  else
  {
    os_unfair_lock_unlock(&dword_10059C9E0);
    v33 = *(v56 + 16);
    v40 = v54;
    v36 = v52;
  }

  v33(v40, v58, v57);
  v41 = a1;
  MediaAccount.init(account:)();
  v42 = v48;
  if (v36)
  {
    swift_unexpectedError();
    __break(1u);
    goto LABEL_22;
  }

  static BagService.AccountSource.fixed(account:)();
  (*(v5 + 8))(v8, v55);
  v43 = objc_allocWithZone(type metadata accessor for AppStoreDaemonBagService());
  return sub_1000C5A08(v40, v42);
}

uint64_t sub_1000D6420(char *a1)
{
  v2 = type metadata accessor for AccountClientIdentifier();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v16 - v7;
  (*(v3 + 16))(&v16 - v7, a1, v2);
  static AccountClientIdentifier.production.getter();
  sub_1000D80D4(&qword_10059CB68, &type metadata accessor for AccountClientIdentifier);
  v9 = dispatch thunk of static Equatable.== infix(_:_:)();
  v10 = *(v3 + 8);
  v10(v6, v2);
  if (v9)
  {
    v11 = &AMSAccountMediaTypeAppStore;
LABEL_7:
    v10(v8, v2);
    v14 = *v11;
    v10(a1, v2);
    return v14;
  }

  static AccountClientIdentifier.appStoreSandbox.getter();
  v12 = dispatch thunk of static Equatable.== infix(_:_:)();
  v10(v6, v2);
  if (v12)
  {
    v11 = &AMSAccountMediaTypeAppStoreSandbox;
    goto LABEL_7;
  }

  static AccountClientIdentifier.appStoreBeta.getter();
  v13 = dispatch thunk of static Equatable.== infix(_:_:)();
  v10(v6, v2);
  if (v13)
  {
    v11 = &AMSAccountMediaTypeAppStoreBeta;
    goto LABEL_7;
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

id sub_1000D6694(uint64_t a1)
{
  v2 = type metadata accessor for AccountClientIdentifier();
  __chkstk_darwin(v2 - 8);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.bag.getter();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "Fetching current account", v11, 2u);
  }

  (*(v6 + 8))(v8, v5);
  v12 = objc_opt_self();
  ClientInfo.accountClientIdentifier.getter();
  v13 = sub_1000D6420(v4);
  v14 = [v12 ams_sharedAccountStoreForMediaType:v13];

  v15 = [v14 ams_activeiTunesAccount];
  if (!v15)
  {
    v15 = [objc_opt_self() ams_createEphemeralAccount];
  }

  v16 = v15;
  v17 = sub_1000D5E3C(v16, 1, a1);

  return v17;
}

unint64_t sub_1000D68D0()
{
  result = qword_10059CB70;
  if (!qword_10059CB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10059CB70);
  }

  return result;
}

uint64_t sub_1000D6930(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100086B9C;

  return sub_1000CA988(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1000D69F8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100086B9C;

  return sub_1000C87D8(a1, v4, v5, v7, v6);
}

id sub_1000D6AB8(void (*a1)(uint64_t))
{
  v2 = type metadata accessor for AccountClientIdentifier();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v16 - v7;
  v9 = type metadata accessor for ClientInfo();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  a1(v11);
  (*(v3 + 16))(v6, v8, v2);
  ClientInfo.init(identifier:name:version:accountClientIdentifier:)();
  (*(v3 + 8))(v8, v2);
  v14 = sub_1000D6694(v13);
  (*(v10 + 8))(v13, v9);
  return v14;
}

uint64_t sub_1000D6CB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v28 = a6;
  v26 = a5;
  v27 = a1;
  v11 = sub_100085D40(&qword_10059C3E0);
  __chkstk_darwin(v11 - 8);
  v13 = &v25 - v12;
  if (*(a7 + 16))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    v14 = dispatch thunk of Actor.unownedExecutor.getter();
    v16 = v15;
    swift_unknownObjectRelease();
    isCurrentExecutorWithFlags = swift_task_isCurrentExecutorWithFlags();
  }

  else
  {
    v14 = 0;
    v16 = 0;
    isCurrentExecutorWithFlags = 1;
  }

  sub_1000044A4(a3, v13, &qword_10059C3E0);
  v18 = type metadata accessor for TaskPriority();
  v19 = *(v18 - 8);
  if ((*(v19 + 48))(v13, 1, v18) == 1)
  {
    sub_100005518(v13, &qword_10059C3E0);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v19 + 8))(v13, v18);
  }

  if (!a2)
  {
    swift_unknownObjectRetain();

    if (v16 | v14)
    {
      v34[0] = 0;
      v34[1] = 0;
      v24 = v34;
      v34[2] = v14;
      v34[3] = v16;
      if (a4 == 1)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v24 = 0;
      if (a4 == 1)
      {
LABEL_17:
        v22 = swift_task_create();
        if ((isCurrentExecutorWithFlags & 1) == 0)
        {
          return v22;
        }

        goto LABEL_12;
      }
    }

    v33[4] = 6;
    v33[5] = v24;
    v33[6] = a4;
    v33[7] = v26;
    goto LABEL_17;
  }

  v20 = String.utf8CString.getter() + 32;
  swift_unknownObjectRetain();

  if (v16 | v14)
  {
    v33[0] = 0;
    v33[1] = 0;
    v21 = v33;
    v33[2] = v14;
    v33[3] = v16;
    if (a4 == 1)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v21 = 0;
  if (a4 != 1)
  {
LABEL_10:
    v32[0] = 6;
    v32[1] = v21;
    v32[2] = a4;
    v32[3] = v26;
    v21 = v32;
  }

LABEL_11:
  v29 = 7;
  v30 = v21;
  v31 = v20;
  v22 = swift_task_create();

  if (isCurrentExecutorWithFlags)
  {
LABEL_12:
    swift_task_immediate();
  }

  return v22;
}

uint64_t sub_1000D6FD0()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000D7018(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100086B9C;

  return sub_1000C8AC4(a1, v4, v5, v7, v6);
}

uint64_t sub_1000D70D8()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100086B9C;

  return sub_1000D3B10(v2, v3);
}

uint64_t sub_1000D7184(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t sub_1000D71DC(char *a1, void (**a2)(void, void), double a3)
{
  v6 = sub_100085D40(&qword_10059C3E0);
  __chkstk_darwin(v6 - 8);
  v8 = &v25 - v7;
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  v10 = &a1[OBJC_IVAR___BagService_lastRecentBagMutex];
  _Block_copy(a2);
  os_unfair_lock_lock(v10);
  sub_1000044A4(&v10[2], &v25, &qword_10059BDF0);
  os_unfair_lock_unlock(v10);
  if (v26)
  {
    sub_1000056B8(&v25, v27);
    v11 = type metadata accessor for ObjCBag();
    v12 = v28;
    v13 = v29;
    v14 = sub_100005B60(v27, v28);
    __chkstk_darwin(v14);
    v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v17 + 16))(v16);
    v18 = sub_1000D5500(v16, v11, v12, v13);
    (a2)[2](a2, v18);

    sub_100005A00(v27);
  }

  else
  {
    sub_100005518(&v25, &qword_10059BDF0);
    v19 = swift_allocObject();
    *(v19 + 16) = sub_100006074;
    *(v19 + 24) = v9;
    v20 = swift_allocObject();
    *(v20 + 16) = a3;
    *(v20 + 24) = a1;
    v21 = type metadata accessor for TaskPriority();
    (*(*(v21 - 8) + 56))(v8, 1, 1, v21);
    v22 = swift_allocObject();
    v22[2] = 0;
    v22[3] = 0;
    v22[4] = &unk_100435B38;
    v22[5] = v20;
    v22[6] = 0;
    v22[7] = sub_1000D836C;
    v22[8] = v19;

    v23 = a1;

    sub_100139A4C(0, 0, v8, 0, 0, &unk_100435B48, v22);

    sub_100005518(v8, &qword_10059C3E0);
  }
}

uint64_t sub_1000D7548(char *a1, void (**a2)(void, void, void))
{
  v4 = sub_100085D40(&qword_10059C3E0);
  __chkstk_darwin(v4 - 8);
  v6 = &v23 - v5;
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  v8 = &a1[OBJC_IVAR___BagService_lastRecentBagMutex];
  _Block_copy(a2);
  os_unfair_lock_lock(v8);
  sub_1000044A4(&v8[2], &v23, &qword_10059BDF0);
  os_unfair_lock_unlock(v8);
  if (v24)
  {
    sub_1000056B8(&v23, v26);
    sub_1000056D0(v26, &v23);
    v9 = objc_allocWithZone(type metadata accessor for ObjCRecentBag());
    v10 = v24;
    v11 = v25;
    v12 = sub_1000D7184(&v23, v24);
    __chkstk_darwin(v12);
    v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v15 + 16))(v14);
    v16 = sub_1000D55B0(v14, v9, v10, v11);
    sub_100005A00(&v23);
    (a2)[2](a2, v16, 0);

    sub_100005A00(v26);
  }

  else
  {
    sub_100005518(&v23, &qword_10059BDF0);
    v17 = swift_allocObject();
    *(v17 + 16) = sub_1000D811C;
    *(v17 + 24) = v7;
    v18 = swift_allocObject();
    *(v18 + 16) = a1;
    v19 = type metadata accessor for TaskPriority();
    (*(*(v19 - 8) + 56))(v6, 1, 1, v19);
    v20 = swift_allocObject();
    v20[2] = 0;
    v20[3] = 0;
    v20[4] = &unk_100435B10;
    v20[5] = v18;
    v20[6] = 0;
    v20[7] = sub_1000D8138;
    v20[8] = v17;

    v21 = a1;

    sub_100139A4C(0, 0, v6, 0, 0, &unk_100435B20, v20);

    sub_100005518(v6, &qword_10059C3E0);
  }
}

uint64_t sub_1000D78C0(char *a1, void (**a2)(void, void, void))
{
  v4 = sub_100085D40(&qword_10059C3E0);
  __chkstk_darwin(v4 - 8);
  v6 = &v25[-1] - v5;
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  v8 = &a1[OBJC_IVAR___BagService_lastRecentBagMutex];
  _Block_copy(a2);
  os_unfair_lock_lock(v8);
  sub_1000044A4(&v8[2], v25, &qword_10059BDF0);
  os_unfair_lock_unlock(v8);
  v9 = v26;
  if (!v26)
  {
    sub_100005518(v25, &qword_10059BDF0);
    v27 = 0u;
    v28 = 0u;
    v29 = 0;
    goto LABEL_5;
  }

  sub_100005B60(v25, v26);
  sub_1000C86D4(v9, &v27);
  sub_100005A00(v25);
  if (!*(&v28 + 1))
  {
LABEL_5:
    sub_100005518(&v27, &unk_10059CB80);
    v18 = swift_allocObject();
    *(v18 + 16) = sub_1000D8AF8;
    *(v18 + 24) = v7;
    v19 = swift_allocObject();
    *(v19 + 16) = a1;
    v20 = type metadata accessor for TaskPriority();
    (*(*(v20 - 8) + 56))(v6, 1, 1, v20);
    v21 = swift_allocObject();
    v21[2] = 0;
    v21[3] = 0;
    v21[4] = &unk_100435A98;
    v21[5] = v19;
    v21[6] = 0;
    v21[7] = sub_1000D8B14;
    v21[8] = v18;

    v22 = a1;

    sub_100139A4C(0, 0, v6, 0, 0, &unk_100435AA8, v21);

    sub_100005518(v6, &qword_10059C3E0);
  }

  sub_1000056B8(&v27, v30);
  v10 = type metadata accessor for ObjCUpToDateBag();
  sub_1000056D0(v30, &v27);
  v11 = *(&v28 + 1);
  v12 = v29;
  v13 = sub_1000D7184(&v27, *(&v28 + 1));
  __chkstk_darwin(v13);
  v15 = &v25[-1] - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v15);
  v17 = sub_1000D56E8(v15, v10, v11, v12);
  sub_100005A00(&v27);
  (a2)[2](a2, v17, 0);

  sub_100005A00(v30);
}

uint64_t sub_1000D7C90(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = Set.init(minimumCapacity:)();
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_100175394(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_1000D7D28(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100086B9C;

  return sub_1000CFD98(a1, v4);
}

uint64_t sub_1000D7DC8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_100086B9C;

  return sub_1000D2A0C(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1000D7EA4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000D7EBC(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100086B9C;

  return sub_1000CB6FC(a1, a2, v6);
}

uint64_t sub_1000D7F6C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100086B9C;

  return sub_1000CBF94(a1, v4, v5, v6);
}

uint64_t sub_1000D8020(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100086B9C;

  return sub_1000CC190(a1);
}

uint64_t sub_1000D80D4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000D8164(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100086B9C;

  return sub_1000CFA64(a1, v4);
}

uint64_t sub_1000D8204(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_100086B9C;

  return sub_1000D2168(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1000D82E0()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000D832C()
{
  v1 = v0[2];
  v2 = v0[5];
  v4 = v0[4];
  return v1(&v4, v2);
}

uint64_t sub_1000D8398(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100086B9C;

  return sub_1000CF0AC(a1, v5, v4);
}

uint64_t sub_1000D8448(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_100086B9C;

  return sub_1000D1B9C(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1000D8524()
{
  v1 = *(v0 + 16);
  v3 = *(v0 + 32);
  return v1(&v3);
}

uint64_t sub_1000D8564(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100086B9C;

  return sub_1000CF724(a1, v4, v5, v6);
}

uint64_t sub_1000D8618(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v10 = v2[6];
  v11 = v2[7];
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_100085384;

  return sub_100192690(a1, a2, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_1000D8708(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100086B9C;

  return sub_1000CED74(a1, v4);
}

uint64_t sub_1000D87A8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100086B9C;

  return sub_1000CE4D8(a1, v4);
}

uint64_t sub_1000D8848(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100085384;

  return sub_1000CDC28(a1, v4);
}

uint64_t sub_1000D88E8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100086B9C;

  return sub_1000CD774(a1, v4);
}

uint64_t sub_1000D8988()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_1000D89D8()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000D8A18(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100086B9C;

  return sub_1000C67D8(a1, v4, v5, v6);
}

uint64_t _s14BasePropertiesOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s14BasePropertiesOwst(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1000D8C98@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000D8E44(*a1);
  *a2 = result;
  return result;
}

void sub_1000D8CC8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE300000000000000;
  v4 = 7368801;
  v5 = 0xE90000000000006ELL;
  v6 = 0x6F6973726556736FLL;
  if (v2 != 6)
  {
    v6 = 0x656E6F7A656D6974;
    v5 = 0xEE0074657366664FLL;
  }

  v7 = 0xEE006E6F69737265;
  v8 = 0x56646C697542736FLL;
  if (v2 != 4)
  {
    v8 = 0x656D614E736FLL;
    v7 = 0xE600000000000000;
  }

  if (*v1 <= 5u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xEB000000006E6F69;
  v10 = 0x7372655665736162;
  if (v2 != 2)
  {
    v10 = 0x726556746E657665;
    v9 = 0xEC0000006E6F6973;
  }

  if (*v1)
  {
    v4 = 0x6973726556707061;
    v3 = 0xEA00000000006E6FLL;
  }

  if (*v1 > 1u)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 3);
  v11 = v2 == 3;
  v12 = v2 - 3 < 0;
  if (*v1 <= 3u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

unint64_t sub_1000D8DF0()
{
  result = qword_10059CC08;
  if (!qword_10059CC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10059CC08);
  }

  return result;
}

unint64_t sub_1000D8E44(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1005089E8, v2);

  if (v3 >= 8)
  {
    return 8;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1000D8E90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[33] = a3;
  v4[34] = v3;
  v4[31] = a1;
  v4[32] = a2;
  v5 = type metadata accessor for Logger();
  v4[35] = v5;
  v4[36] = *(v5 - 8);
  v4[37] = swift_task_alloc();
  v4[38] = swift_task_alloc();

  return _swift_task_switch(sub_1000D8F60, 0, 0);
}

uint64_t sub_1000D8F60()
{
  v1 = *sub_100005B60((*(v0 + 272) + OBJC_IVAR____TtC9appstored18SkannerCoordinator_storyMetrics), *(*(v0 + 272) + OBJC_IVAR____TtC9appstored18SkannerCoordinator_storyMetrics + 24));
  v2 = swift_task_alloc();
  *(v0 + 312) = v2;
  *v2 = v0;
  v2[1] = sub_1000D900C;

  return sub_1000E7C48(v1);
}

uint64_t sub_1000D900C(char a1)
{
  *(*v1 + 336) = a1;

  return _swift_task_switch(sub_1000D910C, 0, 0);
}

uint64_t sub_1000D910C()
{
  if (*(v0 + 336) == 1)
  {
    static Logger.skanner.getter();
    v1 = Logger.logObject.getter();
    v2 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v1, v2))
    {
      v3 = *(v0 + 264);
      v4 = swift_slowAlloc();
      *v4 = 134217984;
      *(v4 + 4) = v3;
      _os_log_impl(&_mh_execute_header, v1, v2, "Logging interop events for app %lld", v4, 0xCu);
    }

    v5 = *(v0 + 304);
    v6 = *(v0 + 280);
    v7 = *(v0 + 288);

    (*(v7 + 8))(v5, v6);
    type metadata accessor for JSONDecoder();
    swift_allocObject();
    JSONDecoder.init()();
    sub_100085D40(&qword_10059CC80);
    sub_1000E362C(&qword_10059CCA0, sub_1000E36A4);
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();

    v8 = *(v0 + 240);
    v9 = *(v8 + 16);
    if (v9)
    {
      specialized ContiguousArray.reserveCapacity(_:)();
      v10 = type metadata accessor for SkannerEvent();
      v11 = 32;
      do
      {
        v12 = *(v8 + v11);
        v13 = *(v8 + v11 + 32);
        *(v0 + 32) = *(v8 + v11 + 16);
        *(v0 + 48) = v13;
        *(v0 + 16) = v12;
        v14 = *(v8 + v11 + 48);
        v15 = *(v8 + v11 + 64);
        v16 = *(v8 + v11 + 96);
        *(v0 + 96) = *(v8 + v11 + 80);
        *(v0 + 112) = v16;
        *(v0 + 64) = v14;
        *(v0 + 80) = v15;
        v17 = objc_allocWithZone(v10);
        sub_1000A1730(v0 + 16, v0 + 128);
        sub_1001A3400(v0 + 16);
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v11 += 112;
        --v9;
      }

      while (v9);
    }

    *(v0 + 320) = _swiftEmptyArrayStorage;
    v20 = swift_task_alloc();
    *(v0 + 328) = v20;
    *v20 = v0;
    v20[1] = sub_1000D9558;
    v21 = *(v0 + 264);

    return sub_1000DE5FC(_swiftEmptyArrayStorage, v21);
  }

  else
  {

    v18 = *(v0 + 8);

    return v18();
  }
}

uint64_t sub_1000D9558()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1000D96A8(uint64_t a1, uint64_t a2)
{
  v3[31] = a2;
  v3[32] = v2;
  v3[30] = a1;
  v4 = sub_100085D40(&unk_10059C490);
  v3[33] = v4;
  v3[34] = *(v4 - 8);
  v3[35] = swift_task_alloc();

  return _swift_task_switch(sub_1000D9778, 0, 0);
}

uint64_t sub_1000D9778()
{
  v1 = v0;
  v2 = v0 + 2;
  v3 = v0 + 10;
  v4 = v0 + 18;
  v5 = v0[34];
  v6 = v0[35];
  v7 = v0[33];
  v8 = v1[31];
  v15 = v1[32];
  v9 = v1[30];
  v10 = swift_allocObject();
  v1[36] = v10;
  *(v10 + 16) = 0;
  *(v10 + 24) = -1;
  v11 = swift_allocObject();
  v11[2] = v10;
  v11[3] = v9;
  v11[4] = v8;
  v1[22] = sub_1000E254C;
  v1[23] = v11;
  v1[18] = _NSConcreteStackBlock;
  v1[19] = 1107296256;
  v1[20] = sub_1000E24F0;
  v1[21] = &unk_10050C970;
  v12 = _Block_copy(v4);
  v1[37] = v12;

  v1[2] = v1;
  v1[3] = sub_1000D99EC;
  swift_continuation_init();
  v1[17] = v7;
  v13 = sub_100005F38(v1 + 14);
  CheckedContinuation.init(continuation:function:)();
  (*(v5 + 32))(v13, v6, v7);
  v1[10] = _NSConcreteStackBlock;
  v1[11] = 1107296256;
  v1[12] = sub_1000B3160;
  v1[13] = &unk_10050C998;
  [v15 asyncModifyUsingTransaction:v12 completion:v3];
  (*(v5 + 8))(v13, v7);

  return _swift_continuation_await(v2);
}

uint64_t sub_1000D99EC()
{

  return _swift_task_switch(sub_1000D9ACC, 0, 0);
}

uint64_t sub_1000D9ACC()
{
  v1 = *(v0 + 288);
  _Block_release(*(v0 + 296));
  swift_beginAccess();
  v2 = *(v1 + 24);
  if (v2 == 255)
  {
    type metadata accessor for ASDError(0);
    *(v0 + 224) = 508;
    sub_1000EF17C(_swiftEmptyArrayStorage);
    sub_1000E2908(&qword_10059B7F0, type metadata accessor for ASDError);
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();
    goto LABEL_5;
  }

  v3 = *(v1 + 16);
  if (v2)
  {
    *(v0 + 232) = v3;
    sub_100007CE8(v3, 1);
    sub_100085D40(&unk_10059DE80);
    swift_willThrowTypedImpl();
LABEL_5:

    v4 = *(v0 + 8);

    return v4();
  }

  v6 = *(v0 + 8);

  return v6(v3 & 1);
}

uint64_t sub_1000D9C90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[31] = a3;
  v4[32] = v3;
  v4[30] = a2;
  v5 = sub_100085D40(&unk_10059C490);
  v4[33] = v5;
  v4[34] = *(v5 - 8);
  v4[35] = swift_task_alloc();

  return _swift_task_switch(sub_1000D9D60, 0, 0);
}

uint64_t sub_1000D9D60()
{
  v1 = v0;
  v2 = v0 + 2;
  v3 = v0 + 10;
  v4 = v0 + 18;
  v5 = v0[34];
  v6 = v0[35];
  v7 = v0[33];
  v8 = v1[31];
  v15 = v1[32];
  v9 = v1[30];
  v10 = swift_allocObject();
  v1[36] = v10;
  *(v10 + 16) = 0;
  *(v10 + 24) = -1;
  v11 = swift_allocObject();
  v11[2] = v10;
  v11[3] = v9;
  v11[4] = v8;
  v1[22] = sub_1000E3760;
  v1[23] = v11;
  v1[18] = _NSConcreteStackBlock;
  v1[19] = 1107296256;
  v1[20] = sub_1000E24F0;
  v1[21] = &unk_10050CA60;
  v12 = _Block_copy(v4);
  v1[37] = v12;

  v1[2] = v1;
  v1[3] = sub_1000D9FD4;
  swift_continuation_init();
  v1[17] = v7;
  v13 = sub_100005F38(v1 + 14);
  CheckedContinuation.init(continuation:function:)();
  (*(v5 + 32))(v13, v6, v7);
  v1[10] = _NSConcreteStackBlock;
  v1[11] = 1107296256;
  v1[12] = sub_1000B3160;
  v1[13] = &unk_10050CA88;
  [v15 asyncModifyUsingTransaction:v12 completion:v3];
  (*(v5 + 8))(v13, v7);

  return _swift_continuation_await(v2);
}

uint64_t sub_1000D9FD4()
{

  return _swift_task_switch(sub_1000E3754, 0, 0);
}

uint64_t sub_1000DA0B4(uint64_t a1, uint64_t a2)
{
  v3[31] = a2;
  v3[32] = v2;
  v3[30] = a1;
  v4 = sub_100085D40(&unk_10059C490);
  v3[33] = v4;
  v3[34] = *(v4 - 8);
  v3[35] = swift_task_alloc();

  return _swift_task_switch(sub_1000DA184, 0, 0);
}

uint64_t sub_1000DA184()
{
  v1 = v0;
  v2 = v0 + 2;
  v3 = v0 + 10;
  v4 = v0 + 18;
  v5 = v0[34];
  v6 = v0[35];
  v7 = v0[33];
  v8 = v1[31];
  v15 = v1[32];
  v9 = v1[30];
  v10 = swift_allocObject();
  v1[36] = v10;
  *(v10 + 16) = 0;
  *(v10 + 24) = -1;
  v11 = swift_allocObject();
  v11[2] = v10;
  v11[3] = v9;
  v11[4] = v8;
  v1[22] = sub_1000E3620;
  v1[23] = v11;
  v1[18] = _NSConcreteStackBlock;
  v1[19] = 1107296256;
  v1[20] = sub_1000E24F0;
  v1[21] = &unk_10050D1E0;
  v12 = _Block_copy(v4);
  v1[37] = v12;

  v1[2] = v1;
  v1[3] = sub_1000DA3F8;
  swift_continuation_init();
  v1[17] = v7;
  v13 = sub_100005F38(v1 + 14);
  CheckedContinuation.init(continuation:function:)();
  (*(v5 + 32))(v13, v6, v7);
  v1[10] = _NSConcreteStackBlock;
  v1[11] = 1107296256;
  v1[12] = sub_1000B3160;
  v1[13] = &unk_10050D208;
  [v15 asyncModifyUsingTransaction:v12 completion:v3];
  (*(v5 + 8))(v13, v7);

  return _swift_continuation_await(v2);
}

uint64_t sub_1000DA3F8()
{

  return _swift_task_switch(sub_1000DA4D8, 0, 0);
}

uint64_t sub_1000DA4D8()
{
  v1 = *(v0 + 288);
  _Block_release(*(v0 + 296));
  swift_beginAccess();
  v2 = *(v1 + 24);
  if (v2 == 255)
  {
    type metadata accessor for ASDError(0);
    *(v0 + 224) = 508;
    sub_1000EF17C(_swiftEmptyArrayStorage);
    sub_1000E2908(&qword_10059B7F0, type metadata accessor for ASDError);
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();
    goto LABEL_5;
  }

  v3 = *(v1 + 16);
  if (v2)
  {
    *(v0 + 232) = v3;
    sub_100007CE8(v3, 1);
    sub_100085D40(&unk_10059DE80);
    swift_willThrowTypedImpl();
LABEL_5:

    v4 = *(v0 + 8);
    v5 = 0;
    goto LABEL_7;
  }

  v4 = *(v0 + 8);
  v5 = v3 & 1;
LABEL_7:

  return v4(v5);
}

uint64_t sub_1000DA674(uint64_t a1, uint64_t a2)
{
  v3[31] = a2;
  v3[32] = v2;
  v3[30] = a1;
  v4 = sub_100085D40(&unk_10059C490);
  v3[33] = v4;
  v3[34] = *(v4 - 8);
  v3[35] = swift_task_alloc();

  return _swift_task_switch(sub_1000DA744, 0, 0);
}

uint64_t sub_1000DA744()
{
  v1 = v0;
  v2 = v0 + 2;
  v3 = v0 + 10;
  v4 = v0 + 18;
  v5 = v0[34];
  v6 = v0[35];
  v7 = v0[33];
  v8 = v1[31];
  v15 = v1[32];
  v9 = v1[30];
  v10 = swift_allocObject();
  v1[36] = v10;
  *(v10 + 16) = 0;
  *(v10 + 24) = -1;
  v11 = swift_allocObject();
  v11[2] = v10;
  v11[3] = v9;
  v11[4] = v8;
  v1[22] = sub_1000E3760;
  v1[23] = v11;
  v1[18] = _NSConcreteStackBlock;
  v1[19] = 1107296256;
  v1[20] = sub_1000E24F0;
  v1[21] = &unk_10050CD80;
  v12 = _Block_copy(v4);
  v1[37] = v12;

  v1[2] = v1;
  v1[3] = sub_1000DA9B8;
  swift_continuation_init();
  v1[17] = v7;
  v13 = sub_100005F38(v1 + 14);
  CheckedContinuation.init(continuation:function:)();
  (*(v5 + 32))(v13, v6, v7);
  v1[10] = _NSConcreteStackBlock;
  v1[11] = 1107296256;
  v1[12] = sub_1000B3160;
  v1[13] = &unk_10050CDA8;
  [v15 asyncModifyUsingTransaction:v12 completion:v3];
  (*(v5 + 8))(v13, v7);

  return _swift_continuation_await(v2);
}

uint64_t sub_1000DA9B8()
{

  return _swift_task_switch(sub_1000E3798, 0, 0);
}

uint64_t sub_1000DAA98(uint64_t a1, uint64_t a2)
{
  v3[31] = a2;
  v3[32] = v2;
  v3[30] = a1;
  v4 = sub_100085D40(&unk_10059C490);
  v3[33] = v4;
  v3[34] = *(v4 - 8);
  v3[35] = swift_task_alloc();

  return _swift_task_switch(sub_1000DAB68, 0, 0);
}

uint64_t sub_1000DAB68()
{
  v1 = v0;
  v2 = v0 + 2;
  v3 = v0 + 10;
  v4 = v0 + 18;
  v5 = v0[34];
  v6 = v0[35];
  v7 = v0[33];
  v8 = v1[31];
  v15 = v1[32];
  v9 = v1[30];
  v10 = swift_allocObject();
  v1[36] = v10;
  *(v10 + 16) = 0;
  *(v10 + 24) = 0;
  *(v10 + 32) = -1;
  v11 = swift_allocObject();
  v11[2] = v10;
  v11[3] = v9;
  v11[4] = v8;
  v1[22] = sub_1000E299C;
  v1[23] = v11;
  v1[18] = _NSConcreteStackBlock;
  v1[19] = 1107296256;
  v1[20] = sub_1000E24F0;
  v1[21] = &unk_10050CCE0;
  v12 = _Block_copy(v4);
  v1[37] = v12;

  v1[2] = v1;
  v1[3] = sub_1000DADDC;
  swift_continuation_init();
  v1[17] = v7;
  v13 = sub_100005F38(v1 + 14);
  CheckedContinuation.init(continuation:function:)();
  (*(v5 + 32))(v13, v6, v7);
  v1[10] = _NSConcreteStackBlock;
  v1[11] = 1107296256;
  v1[12] = sub_1000B3160;
  v1[13] = &unk_10050CD08;
  [v15 asyncModifyUsingTransaction:v12 completion:v3];
  (*(v5 + 8))(v13, v7);

  return _swift_continuation_await(v2);
}

uint64_t sub_1000DADDC()
{

  return _swift_task_switch(sub_1000DAEBC, 0, 0);
}

uint64_t sub_1000DAEBC()
{
  v1 = *(v0 + 288);
  _Block_release(*(v0 + 296));
  swift_beginAccess();
  v2 = *(v1 + 32);
  if (v2 == 255)
  {
    type metadata accessor for ASDError(0);
    *(v0 + 224) = 508;
    sub_1000EF17C(_swiftEmptyArrayStorage);
    sub_1000E2908(&qword_10059B7F0, type metadata accessor for ASDError);
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();
    goto LABEL_5;
  }

  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  if (v2)
  {
    *(v0 + 232) = v3;
    sub_1000E29A8(v3, v4, 1);
    sub_100085D40(&unk_10059DE80);
    swift_willThrowTypedImpl();
LABEL_5:

    v5 = *(v0 + 8);

    return v5();
  }

  v7 = *(v0 + 8);

  return v7(v3, v4);
}

uint64_t sub_1000DB090(uint64_t a1, uint64_t a2)
{
  v3[31] = a2;
  v3[32] = v2;
  v3[30] = a1;
  v4 = sub_100085D40(&unk_10059C490);
  v3[33] = v4;
  v3[34] = *(v4 - 8);
  v3[35] = swift_task_alloc();

  return _swift_task_switch(sub_1000DB160, 0, 0);
}

uint64_t sub_1000DB160()
{
  v1 = v0;
  v2 = v0 + 2;
  v3 = v0 + 10;
  v4 = v0 + 18;
  v5 = v0[34];
  v6 = v0[35];
  v7 = v0[33];
  v8 = v1[31];
  v15 = v1[32];
  v9 = v1[30];
  v10 = swift_allocObject();
  v1[36] = v10;
  *(v10 + 16) = 0;
  *(v10 + 24) = -1;
  v11 = swift_allocObject();
  v11[2] = v10;
  v11[3] = v9;
  v11[4] = v8;
  v1[22] = sub_1000E3760;
  v1[23] = v11;
  v1[18] = _NSConcreteStackBlock;
  v1[19] = 1107296256;
  v1[20] = sub_1000E24F0;
  v1[21] = &unk_10050CB00;
  v12 = _Block_copy(v4);
  v1[37] = v12;

  v1[2] = v1;
  v1[3] = sub_1000DA9B8;
  swift_continuation_init();
  v1[17] = v7;
  v13 = sub_100005F38(v1 + 14);
  CheckedContinuation.init(continuation:function:)();
  (*(v5 + 32))(v13, v6, v7);
  v1[10] = _NSConcreteStackBlock;
  v1[11] = 1107296256;
  v1[12] = sub_1000B3160;
  v1[13] = &unk_10050CB28;
  [v15 asyncModifyUsingTransaction:v12 completion:v3];
  (*(v5 + 8))(v13, v7);

  return _swift_continuation_await(v2);
}

uint64_t sub_1000DB3D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[31] = a3;
  v4[32] = v3;
  v4[30] = a2;
  v5 = sub_100085D40(&unk_10059C490);
  v4[33] = v5;
  v4[34] = *(v5 - 8);
  v4[35] = swift_task_alloc();

  return _swift_task_switch(sub_1000DB4A4, 0, 0);
}

uint64_t sub_1000DB4A4()
{
  v1 = v0;
  v2 = v0 + 2;
  v3 = v0 + 10;
  v4 = v0 + 18;
  v5 = v0[34];
  v6 = v0[35];
  v7 = v0[33];
  v8 = v1[31];
  v15 = v1[32];
  v9 = v1[30];
  v10 = swift_allocObject();
  v1[36] = v10;
  *(v10 + 16) = 0;
  *(v10 + 24) = -1;
  v11 = swift_allocObject();
  v11[2] = v10;
  v11[3] = v9;
  v11[4] = v8;
  v1[22] = sub_1000E254C;
  v1[23] = v11;
  v1[18] = _NSConcreteStackBlock;
  v1[19] = 1107296256;
  v1[20] = sub_1000E24F0;
  v1[21] = &unk_10050CC40;
  v12 = _Block_copy(v4);
  v1[37] = v12;

  v1[2] = v1;
  v1[3] = sub_1000DB718;
  swift_continuation_init();
  v1[17] = v7;
  v13 = sub_100005F38(v1 + 14);
  CheckedContinuation.init(continuation:function:)();
  (*(v5 + 32))(v13, v6, v7);
  v1[10] = _NSConcreteStackBlock;
  v1[11] = 1107296256;
  v1[12] = sub_1000B3160;
  v1[13] = &unk_10050CC68;
  [v15 asyncModifyUsingTransaction:v12 completion:v3];
  (*(v5 + 8))(v13, v7);

  return _swift_continuation_await(v2);
}

uint64_t sub_1000DB718()
{

  return _swift_task_switch(sub_1000DB7F8, 0, 0);
}

uint64_t sub_1000DB7F8()
{
  v1 = *(v0 + 288);
  _Block_release(*(v0 + 296));
  swift_beginAccess();
  v2 = *(v1 + 24);
  if (v2 == 255)
  {
    type metadata accessor for ASDError(0);
    *(v0 + 224) = 508;
    sub_1000EF17C(_swiftEmptyArrayStorage);
    sub_1000E2908(&qword_10059B7F0, type metadata accessor for ASDError);
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();
  }

  else if (v2)
  {
    v3 = *(v1 + 16);
    *(v0 + 232) = v3;
    sub_100007CE8(v3, 1);
    sub_100085D40(&unk_10059DE80);
    swift_willThrowTypedImpl();
  }

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1000DB98C(uint64_t a1, uint64_t a2)
{
  v3[31] = a2;
  v3[32] = v2;
  v3[30] = a1;
  v4 = sub_100085D40(&unk_10059C490);
  v3[33] = v4;
  v3[34] = *(v4 - 8);
  v3[35] = swift_task_alloc();

  return _swift_task_switch(sub_1000DBA5C, 0, 0);
}

uint64_t sub_1000DBA5C()
{
  v1 = v0;
  v2 = v0 + 2;
  v3 = v0 + 10;
  v4 = v0 + 18;
  v5 = v0[34];
  v6 = v0[35];
  v7 = v0[33];
  v8 = v1[31];
  v15 = v1[32];
  v9 = v1[30];
  v10 = swift_allocObject();
  v1[36] = v10;
  *(v10 + 16) = 0;
  *(v10 + 24) = -1;
  v11 = swift_allocObject();
  v11[2] = v10;
  v11[3] = v9;
  v11[4] = v8;
  v1[22] = sub_1000E295C;
  v1[23] = v11;
  v1[18] = _NSConcreteStackBlock;
  v1[19] = 1107296256;
  v1[20] = sub_1000E24F0;
  v1[21] = &unk_10050CBA0;
  v12 = _Block_copy(v4);
  v1[37] = v12;

  v1[2] = v1;
  v1[3] = sub_1000DBCD0;
  swift_continuation_init();
  v1[17] = v7;
  v13 = sub_100005F38(v1 + 14);
  CheckedContinuation.init(continuation:function:)();
  (*(v5 + 32))(v13, v6, v7);
  v1[10] = _NSConcreteStackBlock;
  v1[11] = 1107296256;
  v1[12] = sub_1000B3160;
  v1[13] = &unk_10050CBC8;
  [v15 asyncModifyUsingTransaction:v12 completion:v3];
  (*(v5 + 8))(v13, v7);

  return _swift_continuation_await(v2);
}

uint64_t sub_1000DBCD0()
{

  return _swift_task_switch(sub_1000DBDB0, 0, 0);
}

uint64_t sub_1000DBDB0()
{
  v1 = *(v0 + 288);
  _Block_release(*(v0 + 296));
  swift_beginAccess();
  v2 = *(v1 + 24);
  if (v2 == 255)
  {
    type metadata accessor for ASDError(0);
    *(v0 + 224) = 508;
    sub_1000EF17C(_swiftEmptyArrayStorage);
    sub_1000E2908(&qword_10059B7F0, type metadata accessor for ASDError);
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();
    goto LABEL_5;
  }

  v3 = *(v1 + 16);
  if (v2)
  {
    *(v0 + 232) = v3;
    sub_1000E2968(v3, 1);
    sub_100085D40(&unk_10059DE80);
    swift_willThrowTypedImpl();
LABEL_5:

    v4 = *(v0 + 8);

    return v4();
  }

  v6 = v3;

  v7 = *(v0 + 8);

  return v7(v3);
}

uint64_t sub_1000DBF78(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for Logger();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();

  return _swift_task_switch(sub_1000DC03C, 0, 0);
}

uint64_t sub_1000DC03C()
{
  v1 = *sub_100005B60((*(v0 + 32) + OBJC_IVAR____TtC9appstored18SkannerCoordinator_storyMetrics), *(*(v0 + 32) + OBJC_IVAR____TtC9appstored18SkannerCoordinator_storyMetrics + 24));
  v2 = swift_task_alloc();
  *(v0 + 64) = v2;
  *v2 = v0;
  v2[1] = sub_1000DC0E8;

  return sub_1000E7C48(v1);
}

uint64_t sub_1000DC0E8(char a1)
{
  *(*v1 + 88) = a1;

  return _swift_task_switch(sub_1000DC1E8, 0, 0);
}

uint64_t sub_1000DC1E8()
{
  if (*(v0 + 88) == 1)
  {
    static Logger.skanner.getter();
    v1 = Logger.logObject.getter();
    v2 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v1, v2))
    {
      v3 = *(v0 + 24);
      v4 = swift_slowAlloc();
      *v4 = 134217984;
      *(v4 + 4) = v3;
      _os_log_impl(&_mh_execute_header, v1, v2, "Logging event to story for app %lld", v4, 0xCu);
    }

    v6 = *(v0 + 48);
    v5 = *(v0 + 56);
    v7 = *(v0 + 40);
    v8 = *(v0 + 16);
    v9 = *(v0 + 24);

    (*(v6 + 8))(v5, v7);
    sub_100085D40(&qword_10059C4A0);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_100435310;
    *(v10 + 32) = v8;
    v11 = swift_allocObject();
    *(v0 + 72) = v11;
    *(v11 + 16) = v9;
    *(v11 + 24) = 0;
    *(v11 + 32) = v10;
    v12 = v8;
    v13 = swift_task_alloc();
    *(v0 + 80) = v13;
    *v13 = v0;
    v13[1] = sub_1000DC424;

    return sub_1000D96A8(sub_1000E3764, v11);
  }

  else
  {

    v15 = *(v0 + 8);

    return v15();
  }
}

uint64_t sub_1000DC424()
{
  v2 = *v1;

  if (v0)
  {
  }

  v3 = *(v2 + 8);

  return v3();
}

void sub_1000DC540()
{
  v0 = type metadata accessor for AccountClientIdentifier();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v17 - v5;
  v7 = type metadata accessor for ClientInfo();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static AccountClientIdentifier.production.getter();
  (*(v1 + 16))(v4, v6, v0);
  ClientInfo.init(identifier:name:version:accountClientIdentifier:)();
  (*(v1 + 8))(v6, v0);
  v11 = sub_1000D6694(v10);
  (*(v8 + 8))(v10, v7);
  objc_opt_self();
  v12 = v11;
  v13 = sub_1001C0DF0();
  v14 = sub_1001C0FB8(v13);

  v15 = [objc_allocWithZone(type metadata accessor for SkannerDatabaseStore()) initWithDatabase:v14];
  v16 = sub_1000E2644(v12, v15);

  qword_1005AB0E0 = v16;
}

uint64_t sub_1000DC810(uint64_t a1, uint64_t a2)
{
  v3[13] = a2;
  v3[14] = v2;
  v3[12] = a1;
  v4 = type metadata accessor for Logger();
  v3[15] = v4;
  v3[16] = *(v4 - 8);
  v3[17] = swift_task_alloc();
  v5 = type metadata accessor for BagService.PermittedDataOrigin();
  v3[18] = v5;
  v3[19] = *(v5 - 8);
  v3[20] = swift_task_alloc();
  v6 = type metadata accessor for AccountClientIdentifier();
  v3[21] = v6;
  v3[22] = *(v6 - 8);
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();
  v7 = type metadata accessor for ClientInfo();
  v3[25] = v7;
  v3[26] = *(v7 - 8);
  v3[27] = swift_task_alloc();

  return _swift_task_switch(sub_1000DC9F4, 0, 0);
}

uint64_t sub_1000DC9F4()
{
  v2 = v0[26];
  v1 = v0[27];
  v4 = v0[24];
  v3 = v0[25];
  v6 = v0[22];
  v5 = v0[23];
  v7 = v0[21];
  static AccountClientIdentifier.production.getter();
  (*(v6 + 16))(v5, v4, v7);
  ClientInfo.init(identifier:name:version:accountClientIdentifier:)();
  (*(v6 + 8))(v4, v7);
  v0[28] = sub_1000D6694(v1);
  (*(v2 + 8))(v1, v3);
  static BagService.PermittedDataOrigin.networkAndPersistence.getter();
  v8 = swift_task_alloc();
  v0[29] = v8;
  *v8 = v0;
  v8[1] = sub_1000DCB80;
  v9 = v0[20];

  return sub_1000C5300((v0 + 2), 0, 0, v9);
}

uint64_t sub_1000DCB80()
{
  v1 = *(*v0 + 224);
  v2 = *(*v0 + 160);
  v3 = *(*v0 + 152);
  v4 = *(*v0 + 144);

  (*(v3 + 8))(v2, v4);

  return _swift_task_switch(sub_1000DCCF0, 0, 0);
}

uint64_t sub_1000DCCF0()
{
  v32 = v0;
  if (qword_10059B490 != -1)
  {
    swift_once();
  }

  v1 = qword_1005AB0A0 + OBJC_IVAR____TtC9appstored17RestrictionsCache_lockedCachedValues;
  os_unfair_lock_lock((qword_1005AB0A0 + OBJC_IVAR____TtC9appstored17RestrictionsCache_lockedCachedValues));
  v2 = *(v1 + 8);
  if (v2 == 2)
  {
    objc_opt_self();
    LOBYTE(v2) = sub_10030B548();
    *(v1 + 8) = v2;
  }

  os_unfair_lock_unlock(v1);
  if (v2 & 1) != 0 && (sub_100005B60((v0 + 16), *(v0 + 40)), (sub_1000E8034()))
  {
    v3 = *(v0 + 96);
    static Logger.skanner.getter();
    v4 = v3;
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v8 = *(v0 + 96);
      v7 = *(v0 + 104);
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v31 = v10;
      *v9 = 134218242;
      *(v9 + 4) = v7;
      *(v9 + 12) = 2080;
      v11 = *(v8 + OBJC_IVAR____TtC9appstored12SkannerEvent_eventType);
      if (v11 <= 1)
      {
        v12 = 0xEC0000006E6F6973;
        if (*(v8 + OBJC_IVAR____TtC9appstored12SkannerEvent_eventType))
        {
          v13 = 0x7265766E6F436461;
        }

        else
        {
          v13 = 0x736572706D496461;
        }
      }

      else if (v11 == 2)
      {
        v12 = 0x800000010044C890;
        v13 = 0xD000000000000013;
      }

      else if (v11 == 3)
      {
        v12 = 0xE700000000000000;
        v13 = 0x74736575716572;
      }

      else
      {
        v12 = 0xED00006574656C70;
        v13 = 0x6D6F4379726F7473;
      }

      v20 = *(v0 + 128);
      v19 = *(v0 + 136);
      v21 = *(v0 + 120);
      v22 = sub_1001AD0D8(v13, v12, &v31);

      *(v9 + 14) = v22;
      _os_log_impl(&_mh_execute_header, v5, v6, "Starting story if needed for app %lld. Logging %s event", v9, 0x16u);
      sub_100005A00(v10);

      (*(v20 + 8))(v19, v21);
    }

    else
    {
      v17 = *(v0 + 128);
      v16 = *(v0 + 136);
      v18 = *(v0 + 120);

      (*(v17 + 8))(v16, v18);
    }

    v23 = *(v0 + 104);
    v24 = *(v0 + 112);
    v25 = *(v0 + 96);
    sub_1000056D0(v0 + 16, v0 + 56);
    v26 = swift_allocObject();
    v26[2] = v23;
    v26[3] = v25;
    v26[4] = v24;
    sub_1000056B8((v0 + 56), (v26 + 5));
    v27 = swift_allocObject();
    *(v0 + 240) = v27;
    *(v27 + 16) = sub_1000E3550;
    *(v27 + 24) = v26;
    v28 = v25;
    v29 = v24;
    v30 = swift_task_alloc();
    *(v0 + 248) = v30;
    *v30 = v0;
    v30[1] = sub_1000DD158;

    return sub_1000D96A8(sub_1000E379C, v27);
  }

  else
  {
    sub_100005A00(v0 + 16);

    v14 = *(v0 + 8);

    return v14();
  }
}

uint64_t sub_1000DD158()
{

  if (v0)
  {

    v1 = sub_1000E3758;
  }

  else
  {

    v1 = sub_1000DD2A0;
  }

  return _swift_task_switch(v1, 0, 0);
}

uint64_t sub_1000DD2A0()
{
  sub_100005A00(v0 + 16);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000DD348(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v63 = type metadata accessor for Logger();
  v9 = *(v63 - 8);
  v10 = __chkstk_darwin(v63);
  v12 = &v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v15 = &v63 - v14;
  __chkstk_darwin(v13);
  v17 = &v63 - v16;
  v18 = sub_100117648();
  if (v18)
  {
    v19 = v18;
    sub_100085D40(&qword_10059C4A0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100435310;
    *(inited + 32) = a3;
    v21 = a3;
    sub_1000FD674(inited);
    swift_setDeallocating();
    swift_arrayDestroy();
    v22 = [v19 databaseID];
    v23 = [objc_allocWithZone(type metadata accessor for SkannerStoryEntity()) initWithPersistentID:v22 onConnection:*(a1 + OBJC_IVAR____TtC9appstored22SkannerDatabaseSession_connection)];
    v24 = sub_1001FBB74(v19);
    sub_100085D40(&qword_10059C510);
    v25 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    sub_10017FE88(v25);

    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v23 setValuesWithDictionary:isa];

    static Logger.skanner.getter();
    v27 = v21;
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v64 = v31;
      *v30 = 136315138;
      v32 = v27[OBJC_IVAR____TtC9appstored12SkannerEvent_eventType];
      if (v32 <= 1)
      {
        v33 = 0xEC0000006E6F6973;
        if (v32)
        {
          v34 = 0x7265766E6F436461;
        }

        else
        {
          v34 = 0x736572706D496461;
        }
      }

      else if (v32 == 2)
      {
        v34 = 0xD000000000000013;
        v33 = 0x800000010044C890;
      }

      else if (v32 == 3)
      {
        v33 = 0xE700000000000000;
        v34 = 0x74736575716572;
      }

      else
      {
        v34 = 0x6D6F4379726F7473;
        v33 = 0xED00006574656C70;
      }

      v61 = sub_1001AD0D8(v34, v33, &v64);

      *(v30 + 4) = v61;
      _os_log_impl(&_mh_execute_header, v28, v29, "Logged %s event to existing story", v30, 0xCu);
      sub_100005A00(v31);
    }

    else
    {
    }

    return (*(v9 + 8))(v17, v63);
  }

  else
  {
    if (sub_1000E3560())
    {
      v35 = 1;
    }

    else
    {
      v36 = a5[3];
      v37 = a5[4];
      sub_100005B60(a5, v36);
      v38 = sub_1000E8064(v36, v37);
      v35 = vcvtd_n_f64_u64(sub_1000E25B8(0x20000000000001uLL), 0x35uLL) <= v38;
    }

    sub_100085D40(&qword_10059C4A0);
    v39 = swift_initStackObject();
    *(v39 + 16) = xmmword_100435310;
    *(v39 + 32) = a3;
    type metadata accessor for SkannerStory();
    v40 = a3;
    v41 = sub_1000FD3A4(a2, v35, v39);
    v42 = sub_1001FBB74(v41);
    sub_100085D40(&qword_10059C510);
    v43 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    sub_10017FE88(v43);

    v44 = *(a1 + OBJC_IVAR____TtC9appstored22SkannerDatabaseSession_connection);
    v45 = objc_allocWithZone(type metadata accessor for SkannerStoryEntity());
    v46 = v44;
    v47 = Dictionary._bridgeToObjectiveC()().super.isa;

    v48 = [v45 initWithPropertyValues:v47 onConnection:v46];

    LOBYTE(v45) = [v48 existsInDatabase];
    if (v45)
    {
      static Logger.skanner.getter();
      v49 = v40;
      v50 = Logger.logObject.getter();
      v51 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v50, v51))
      {
        v52 = swift_slowAlloc();
        v53 = swift_slowAlloc();
        v64 = v53;
        *v52 = 134218242;
        *(v52 + 4) = a2;
        *(v52 + 12) = 2080;
        v54 = v49[OBJC_IVAR____TtC9appstored12SkannerEvent_eventType];
        if (v54 <= 1)
        {
          v55 = 0xEC0000006E6F6973;
          if (v49[OBJC_IVAR____TtC9appstored12SkannerEvent_eventType])
          {
            v56 = 0x7265766E6F436461;
          }

          else
          {
            v56 = 0x736572706D496461;
          }
        }

        else if (v54 == 2)
        {
          v56 = 0xD000000000000013;
          v55 = 0x800000010044C890;
        }

        else if (v54 == 3)
        {
          v55 = 0xE700000000000000;
          v56 = 0x74736575716572;
        }

        else
        {
          v56 = 0x6D6F4379726F7473;
          v55 = 0xED00006574656C70;
        }

        v62 = sub_1001AD0D8(v56, v55, &v64);

        *(v52 + 14) = v62;
        _os_log_impl(&_mh_execute_header, v50, v51, "Created new story for app %lld with %s event", v52, 0x16u);
        sub_100005A00(v53);
      }

      return (*(v9 + 8))(v15, v63);
    }

    else
    {
      static Logger.skanner.getter();
      v57 = Logger.logObject.getter();
      v58 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v57, v58))
      {
        v59 = swift_slowAlloc();
        *v59 = 134217984;
        *(v59 + 4) = a2;
        _os_log_impl(&_mh_execute_header, v57, v58, "Failed to create new story for app %lld", v59, 0xCu);
      }

      return (*(v9 + 8))(v12, v63);
    }
  }
}