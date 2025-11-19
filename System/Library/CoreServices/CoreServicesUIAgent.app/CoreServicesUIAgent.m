id sub_100001F5C()
{
  if (qword_100015F70 != -1)
  {
    sub_1000077DC();
  }

  v1 = qword_100015F78;

  return v1;
}

void sub_100001FA0(id a1)
{
  v1 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___CSUIIconChangeRemoteAlert];
  v2 = qword_100015F78;
  qword_100015F78 = v1;

  v3 = qword_100015F78;
  v4 = objc_opt_class();

  [v3 setClass:v4 forSelector:"waitForUserAcknowledgementWithCompletion:" argumentIndex:0 ofReply:1];
}

id sub_10000201C()
{
  if (qword_100015F80 != -1)
  {
    sub_1000077F0();
  }

  v1 = qword_100015F88;

  return v1;
}

void sub_100002060(id a1)
{
  v1 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___CSUIRemoteAlertRoot];
  v2 = qword_100015F88;
  qword_100015F88 = v1;

  [qword_100015F88 setClass:objc_opt_class() forSelector:"presentIconChangeRemoteAlertForIdentity:completion:" argumentIndex:0 ofReply:0];
  v3 = qword_100015F88;
  v4 = sub_100001F5C();
  [v3 setInterface:v4 forSelector:"presentIconChangeRemoteAlertForIdentity:completion:" argumentIndex:0 ofReply:1];

  v5 = qword_100015F88;
  v6 = objc_opt_class();

  [v5 setClass:v6 forSelector:"presentIconChangeRemoteAlertForIdentity:completion:" argumentIndex:1 ofReply:1];
}

id sub_10000213C()
{
  if (qword_100015F90 != -1)
  {
    sub_100007804();
  }

  v1 = qword_100015F98;

  return v1;
}

void sub_100002180(id a1)
{
  v1 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___CSUIRemoteAlertInvoker];
  v2 = qword_100015F98;
  qword_100015F98 = v1;

  v3 = qword_100015F98;
  v4 = sub_10000201C();
  [v3 setInterface:v4 forSelector:"checkinRemoteAlertRoot:" argumentIndex:0 ofReply:0];
}

void sub_1000022EC(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = _convertErrorToNSError(_:)();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

void sub_100002350()
{
  if (*(v0 + OBJC_IVAR____TtC19CoreServicesUIAgent33IconChangeAlertRootViewController_acknowledgementStatus + 8))
  {
    if (qword_1000158F8 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_100003D08(v1, qword_1000162A0);
    oslog = Logger.logObject.getter();
    v2 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(oslog, v2))
    {
      v3 = swift_slowAlloc();
      *v3 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v2, "tried to transition icon change alert to waiting for user acknowledgement but it was already presented?", v3, 2u);
    }
  }

  else
  {
    *(v0 + OBJC_IVAR____TtC19CoreServicesUIAgent33IconChangeAlertRootViewController_acknowledgementStatus + 8) = 1;
  }
}

void sub_100002464()
{
  v1 = v0 + OBJC_IVAR____TtC19CoreServicesUIAgent33IconChangeAlertRootViewController_acknowledgementStatus;
  v2 = *(v0 + OBJC_IVAR____TtC19CoreServicesUIAgent33IconChangeAlertRootViewController_acknowledgementStatus);
  v3 = *(v0 + OBJC_IVAR____TtC19CoreServicesUIAgent33IconChangeAlertRootViewController_acknowledgementStatus + 8);
  if (v3 < 2)
  {

    v4 = v2;
LABEL_6:
    *v1 = 0;
    *(v1 + 8) = 3;
    sub_100003CE4(v2, v3);
    v5 = v4[2];
    if (v5)
    {
      v6 = v4 + 5;
      do
      {
        v8 = *(v6 - 1);
        v7 = *v6;

        v8(0);

        v6 += 2;
        --v5;
      }

      while (v5);
    }

    return;
  }

  if (v3 != 2 && v2)
  {
    v4 = _swiftEmptyArrayStorage;
    goto LABEL_6;
  }

  if (qword_1000158F8 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_100003D08(v9, qword_1000162A0);
  oslog = Logger.logObject.getter();
  v10 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(oslog, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v10, "tried to transition icon change alert to finished but it was already finished?", v11, 2u);
  }
}

void sub_10000260C(uint64_t a1)
{
  v3 = v1 + OBJC_IVAR____TtC19CoreServicesUIAgent33IconChangeAlertRootViewController_acknowledgementStatus;
  v4 = *(v1 + OBJC_IVAR____TtC19CoreServicesUIAgent33IconChangeAlertRootViewController_acknowledgementStatus);
  v5 = *(v1 + OBJC_IVAR____TtC19CoreServicesUIAgent33IconChangeAlertRootViewController_acknowledgementStatus + 8);
  if (v5 < 2)
  {

    v6 = v4;
LABEL_6:
    *v3 = a1;
    *(v3 + 8) = 2;
    swift_errorRetain();
    sub_100003CE4(v4, v5);
    v7 = v6[2];
    if (v7)
    {
      v8 = v6 + 5;
      do
      {
        v10 = *(v8 - 1);
        v9 = *v8;

        v10(a1);

        v8 += 2;
        --v7;
      }

      while (v7);
    }

    return;
  }

  if (v5 != 2 && v4)
  {
    v6 = _swiftEmptyArrayStorage;
    goto LABEL_6;
  }

  if (qword_1000158F8 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_100003D08(v11, qword_1000162A0);
  oslog = Logger.logObject.getter();
  v12 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(oslog, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v12, "tried to transition icon change alert to error but it was already finished?", v13, 2u);
  }
}

id sub_1000028C4()
{
  v1 = v0;
  v2 = &v0[OBJC_IVAR____TtC19CoreServicesUIAgent33IconChangeAlertRootViewController_acknowledgementStatus];
  v3 = v0[OBJC_IVAR____TtC19CoreServicesUIAgent33IconChangeAlertRootViewController_acknowledgementStatus + 8];
  if (v3 != 2 && (v3 != 3 || *v2))
  {
    if (qword_1000158F8 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_100003D08(v4, qword_1000162A0);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "icon change alert deinitialized while still waiting for user acknowledgement", v7, 2u);
    }

    v8 = [objc_allocWithZone(NSError) initWithDomain:NSPOSIXErrorDomain code:4 userInfo:0];
    if (v2[8] > 1u)
    {
      v9 = _swiftEmptyArrayStorage;
      v10 = _swiftEmptyArrayStorage[2];
      if (!v10)
      {
LABEL_14:

        goto LABEL_15;
      }
    }

    else
    {
      v9 = *v2;

      v10 = v9[2];
      if (!v10)
      {
        goto LABEL_14;
      }
    }

    v11 = v9 + 5;
    do
    {
      v13 = *(v11 - 1);
      v12 = *v11;

      v13(v8);

      v11 += 2;
      --v10;
    }

    while (v10);
    goto LABEL_14;
  }

LABEL_15:
  v15.receiver = v1;
  v15.super_class = type metadata accessor for IconChangeAlertRootViewController();
  return objc_msgSendSuper2(&v15, "dealloc");
}

void sub_100002C10()
{
  v1 = *(*(type metadata accessor for Locale() - 8) + 64);
  __chkstk_darwin();
  v2 = *(*(type metadata accessor for String.LocalizationValue() - 8) + 64);
  __chkstk_darwin();
  v3 = *&v0[OBJC_IVAR____TtC19CoreServicesUIAgent33IconChangeAlertRootViewController_identity];
  aBlock[0] = 0;
  v4 = [v3 findApplicationRecordWithError:aBlock];
  if (v4)
  {
    v5 = v4;
    v6 = aBlock[0];
    v7 = [v5 localizedName];

    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;

    String.LocalizationValue.init(stringLiteral:)();
    v11 = [objc_opt_self() mainBundle];
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
    sub_100003404(&qword_100015940, "0\t");
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_10000B810;
    *(v12 + 56) = &type metadata for String;
    *(v12 + 64) = sub_10000344C();
    *(v12 + 32) = v8;
    *(v12 + 40) = v10;
    String.init(format:_:)();

    v13 = [objc_allocWithZone(CSUIAlternateApplicationIconsAlertContentViewController) initWithApplicationIdentity:v3];
    v14 = String._bridgeToObjectiveC()();

    [v13 setMessageText:v14];

    v15 = [objc_opt_self() alertControllerWithTitle:0 message:0 preferredStyle:1];
    [v15 setContentViewController:v13];
    v16 = swift_allocObject();
    swift_unknownObjectWeakInit();

    v17 = String._bridgeToObjectiveC()();
    aBlock[4] = sub_1000034D8;
    aBlock[5] = v16;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000030C4;
    aBlock[3] = &unk_100010810;
    v18 = _Block_copy(aBlock);

    v19 = [objc_opt_self() actionWithTitle:v17 style:0 handler:v18];
    _Block_release(v18);

    [v15 addAction:v19];
    sub_100002350();
    [v0 presentViewController:v15 animated:1 completion:0];
  }

  else
  {
    v20 = aBlock[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }
}

void sub_100003040()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_100002464();
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_100006C0C();

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

void sub_1000030C4(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_10000331C(uint64_t a1)
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

uint64_t sub_100003338(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_10000334C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 9))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 8);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_100003394(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1000033DC(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t sub_100003404(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_10000344C()
{
  result = qword_100015948;
  if (!qword_100015948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100015948);
  }

  return result;
}

uint64_t sub_1000034A0()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000034E0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000034F8()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = String.hashValue.getter();

  return v2;
}

uint64_t sub_100003534()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int sub_100003588()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return v2;
}

uint64_t sub_100003604(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t sub_10000367C(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1000036FC@<X0>(void *a1@<X8>)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = String._bridgeToObjectiveC()();

  *a1 = v2;
  return result;
}

uint64_t sub_100003740(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  if (v4 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v9 & 1;
}

uint64_t sub_1000037C8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = String._bridgeToObjectiveC()();

  *a2 = v5;
  return result;
}

uint64_t sub_100003810@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_10000383C(uint64_t a1)
{
  v2 = sub_100003F5C(&qword_100015A20);
  v3 = sub_100003F5C(&qword_100015978);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

char *sub_1000038D4(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100003404(&qword_100015950, &qword_10000B930);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1000039E0(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_1000038D4(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_100003AD4(uint64_t a1, void (**a2)(void, void))
{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  v5 = a1 + OBJC_IVAR____TtC19CoreServicesUIAgent33IconChangeAlertRootViewController_acknowledgementStatus;
  v6 = *(a1 + OBJC_IVAR____TtC19CoreServicesUIAgent33IconChangeAlertRootViewController_acknowledgementStatus);
  if (*(v5 + 8) > 1u)
  {
    if (*(v5 + 8) == 2)
    {
      _Block_copy(a2);
      sub_100003D80(v6, 2u);
      v10 = _convertErrorToNSError(_:)();
      (a2)[2](a2, v10);

      sub_100003CE4(v6, 2u);
    }

    else
    {
      _Block_copy(a2);
      a2[2](a2, 0);
    }
  }

  else
  {
    if (*(v5 + 8))
    {
      sub_100003404(&qword_100015950, &qword_10000B930);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10000B810;
      *(inited + 32) = sub_100003D78;
      *(inited + 40) = v4;
      _Block_copy(a2);
      sub_100003D80(v6, 1u);

      sub_1000039E0(inited);
      v8 = *v5;
      *v5 = v6;
      v9 = *(v5 + 8);
      *(v5 + 8) = 1;
    }

    else
    {
      sub_100003404(&qword_100015950, &qword_10000B930);
      v7 = swift_initStackObject();
      *(v7 + 16) = xmmword_10000B810;
      *(v7 + 32) = sub_100003D78;
      *(v7 + 40) = v4;
      _Block_copy(a2);
      sub_100003D80(v6, 0);

      sub_1000039E0(v7);
      v8 = *v5;
      *v5 = v6;
      v9 = *(v5 + 8);
      *(v5 + 8) = 0;
    }

    sub_100003CE4(v8, v9);
  }
}

uint64_t sub_100003CE4(uint64_t a1, unsigned __int8 a2)
{
  if (a2 == 2)
  {
  }

  if (a2 <= 1u)
  {
  }

  return result;
}

uint64_t sub_100003D08(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_100003D40()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100003D80(uint64_t a1, unsigned __int8 a2)
{
  if (a2 == 2)
  {
    return swift_errorRetain();
  }

  if (a2 <= 1u)
  {
  }

  return result;
}

void type metadata accessor for LaunchOptionsKey()
{
  if (!qword_100015958)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_100015958);
    }
  }
}

__n128 sub_100003E20(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_100003E2C(uint64_t *a1, int a2)
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

uint64_t sub_100003E74(uint64_t result, int a2, int a3)
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

uint64_t sub_100003F5C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for LaunchOptionsKey();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100003FA0()
{
  sub_1000041A4();
  result = OS_os_log.init(subsystem:category:)();
  qword_100015980 = result;
  return result;
}

uint64_t sub_100003FFC()
{
  v0 = type metadata accessor for Logger();
  sub_100004140(v0, qword_1000162A0);
  sub_100003D08(v0, qword_1000162A0);
  if (qword_1000158F0 != -1)
  {
    swift_once();
  }

  v1 = qword_100015980;
  return Logger.init(_:)();
}

id CSUIALogger()
{
  if (qword_1000158F0 != -1)
  {
    swift_once();
  }

  v1 = qword_100015980;

  return v1;
}

id CSUIALogger()()
{
  if (qword_1000158F0 != -1)
  {
    swift_once();
  }

  v1 = qword_100015980;

  return v1;
}

uint64_t *sub_100004140(uint64_t a1, uint64_t *a2)
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

unint64_t sub_1000041A4()
{
  result = qword_100015988;
  if (!qword_100015988)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100015988);
  }

  return result;
}

id sub_100004524()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

int main(int argc, const char **argv, const char **envp)
{
  type metadata accessor for AppDelegate();
  static CommandLine.unsafeArgv.getter();
  static CommandLine.argc.getter();
  static CommandLine.argc.getter();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = NSStringFromClass(ObjCClassFromMetadata);
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  LODWORD(v4) = UIApplicationMain(_:_:_:_:)();

  exit(v4);
}

uint64_t sub_100004608()
{
  if (qword_1000158F8 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100003D08(v0, qword_1000162A0);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "app launch!", v3, 2u);
  }

  return 1;
}

id sub_1000046E4(void *a1, void *a2)
{
  if (qword_1000158F8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100003D08(v4, qword_1000162A0);
  v5 = a1;
  v6 = a2;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412546;
    *(v9 + 4) = v5;
    *(v9 + 12) = 2112;
    *(v9 + 14) = v6;
    *v10 = v5;
    v10[1] = v6;
    v11 = v5;
    v12 = v6;
    _os_log_impl(&_mh_execute_header, v7, v8, "app delegate connect %@ options %@", v9, 0x16u);
    sub_100003404(&qword_100015A18, qword_10000BB70);
    swift_arrayDestroy();
  }

  v13 = [v5 role];
  v14 = objc_allocWithZone(UISceneConfiguration);
  v15 = String._bridgeToObjectiveC()();
  v16 = [v14 initWithName:v15 sessionRole:v13];

  return v16;
}

void sub_1000048C4()
{
  if (qword_1000158F8 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100003D08(v0, qword_1000162A0);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v1, "discard scene sessions", v2, 2u);
  }
}

unint64_t sub_1000049AC()
{
  result = qword_100015A20;
  if (!qword_100015A20)
  {
    type metadata accessor for LaunchOptionsKey();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100015A20);
  }

  return result;
}

void sub_100004DF0(void *a1)
{
  v2 = OBJC_IVAR____TtC19CoreServicesUIAgent29RemoteAlertRootViewController_remoteAlertContentViewController;
  if (*&v1[OBJC_IVAR____TtC19CoreServicesUIAgent29RemoteAlertRootViewController_remoteAlertContentViewController])
  {
    goto LABEL_9;
  }

  [v1 addChildViewController:a1];
  v4 = [v1 view];
  if (!v4)
  {
    __break(1u);
    goto LABEL_8;
  }

  v5 = v4;
  v6 = [a1 view];
  if (!v6)
  {
LABEL_8:
    __break(1u);
LABEL_9:
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return;
  }

  v7 = v6;
  [v5 addSubview:v6];

  [a1 didMoveToParentViewController:v1];
  v9 = *&v1[v2];
  *&v1[v2] = a1;
  v8 = a1;
}

id sub_100005074(char *a1, uint64_t a2, void *a3, uint64_t a4, void *a5, uint64_t (*a6)(uint64_t))
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  *&a1[*a5] = 0;
  v14.receiver = a1;
  v14.super_class = a6(isCurrentExecutor);
  v11 = a3;
  v12 = objc_msgSendSuper2(&v14, "initWithCoder:", v11);

  if (v12)
  {
  }

  return v12;
}

id sub_10000518C(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_1000051F8()
{
  v1 = v0;
  v2 = [objc_allocWithZone(NSXPCConnection) initWithListenerEndpoint:*(v0 + 16)];
  v3 = *(v0 + 24);
  *(v1 + 24) = v2;
  v4 = v2;

  if (!v4)
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_100007234();
  v5 = static OS_dispatch_queue.main.getter();
  [v4 _setQueue:v5];

  v6 = *(v1 + 24);
  if (!v6)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v7 = v6;
  v8 = sub_10000201C();
  [v7 setExportedInterface:v8];

  v9 = *(v1 + 24);
  if (!v9)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  [v9 setExportedObject:v1];
  v10 = *(v1 + 24);
  if (!v10)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v11 = v10;
  v12 = sub_10000213C();
  [v11 setRemoteObjectInterface:v12];

  v13 = *(v1 + 24);
  if (!v13)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  [v13 resume];
  v14 = *(v1 + 24);
  if (v14)
  {
    v15 = [v14 remoteObjectProxy];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_100003404(&unk_100015D00, &qword_10000BCC8);
    swift_dynamicCast();
    [v16 checkinRemoteAlertRoot:v1];
    swift_unknownObjectRelease();
    return;
  }

LABEL_13:
  __break(1u);
}

uint64_t sub_10000553C()
{
  sub_100003DA8(v0 + 32);

  return _swift_deallocClassInstance(v0, 48, 7);
}

void sub_100005720(void *a1, void *a2, void *a3)
{
  v4 = v3;
  if (qword_1000158F8 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100003D08(v8, qword_1000162A0);
  v9 = a1;
  v10 = a2;
  v11 = a3;
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v14 = 138412802;
    *(v14 + 4) = v9;
    *(v14 + 12) = 2112;
    *(v14 + 14) = v10;
    *v15 = v9;
    v15[1] = v10;
    *(v14 + 22) = 2112;
    *(v14 + 24) = v11;
    v15[2] = v11;
    v16 = v9;
    v17 = v10;
    v18 = v11;
    _os_log_impl(&_mh_execute_header, v12, v13, "scene %@ will connect to %@ options %@", v14, 0x20u);
    sub_100003404(&qword_100015A18, qword_10000BB70);
    swift_arrayDestroy();
  }

  objc_opt_self();
  v19 = swift_dynamicCastObjCClass();
  if (v19)
  {
    v20 = v19;
    objc_opt_self();
    v21 = swift_dynamicCastObjCClass();
    v22 = v9;
    if (v21)
    {
      v45 = v22;
      v23 = [v21 configurationContext];
      if (v23)
      {
        v24 = v23;
        v25 = [v23 xpcEndpoint];

        if (v25)
        {
          type metadata accessor for RemoteAlertInvokerContext();
          v26 = swift_allocObject();
          v26[3] = 0;
          v26[5] = 0;
          swift_unknownObjectWeakInit();
          v27 = objc_allocWithZone(NSXPCListenerEndpoint);
          swift_unknownObjectRetain();
          v28 = [v27 init];
          v26[2] = v28;
          [v28 _setEndpoint:v25];
          swift_unknownObjectRelease();
          v29 = *(v4 + OBJC_IVAR___RemoteAlertSceneDelegate_invokerContext);
          *(v4 + OBJC_IVAR___RemoteAlertSceneDelegate_invokerContext) = v26;

          v26[5] = &off_100010918;
          swift_unknownObjectWeakAssign();

          v30 = [objc_allocWithZone(UIWindow) initWithWindowScene:v20];
          v31 = OBJC_IVAR___RemoteAlertSceneDelegate_window;
          v32 = *(v4 + OBJC_IVAR___RemoteAlertSceneDelegate_window);
          *(v4 + OBJC_IVAR___RemoteAlertSceneDelegate_window) = v30;
          v33 = v30;

          [v33 setRootViewController:*(v4 + OBJC_IVAR___RemoteAlertSceneDelegate_rootViewController)];
          v34 = *(v4 + v31);
          if (v34)
          {
            [v34 makeKeyAndVisible];

            swift_unknownObjectRelease();
          }

          else
          {
            __break(1u);
          }

          return;
        }
      }

      v37 = Logger.logObject.getter();
      v38 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        v46 = v40;
        *v39 = 136315138;
        *(v39 + 4) = sub_1000064A8(0xD00000000000001FLL, 0x800000010000A8A0, &v46);
        _os_log_impl(&_mh_execute_header, v37, v38, "no endpoint in %s", v39, 0xCu);
        sub_100006B64(v40);

LABEL_19:
        return;
      }
    }

    else
    {
      v45 = v22;
      v41 = Logger.logObject.getter();
      v42 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        v46 = v44;
        *v43 = 136315138;
        *(v43 + 4) = sub_1000064A8(0xD00000000000001FLL, 0x800000010000A8A0, &v46);
        _os_log_impl(&_mh_execute_header, v41, v42, "bogus scene type in %s", v43, 0xCu);
        sub_100006B64(v44);

        goto LABEL_19;
      }
    }
  }

  else
  {
    v45 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v45, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&_mh_execute_header, v45, v35, "scene is not a window scene, bailing", v36, 2u);
    }
  }
}

void sub_100005E1C(void *a1)
{
  if (qword_1000158F8 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100003D08(v3, qword_1000162A0);
  v4 = a1;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v4;
    *v8 = v4;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v5, v6, "scene %@ did become active", v7, 0xCu);
    sub_100006AFC(v8);
  }

  if (*(v1 + OBJC_IVAR___RemoteAlertSceneDelegate_invokerContext))
  {

    sub_1000051F8();
  }

  else
  {
    v10 = v4;
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138412290;
      *(v13 + 4) = v10;
      *v14 = v10;
      v15 = v10;
      _os_log_impl(&_mh_execute_header, v11, v12, "no invoker context by scene activation time of scene %@. This may be a random system scene SurfBoard created for whatever reason. Requesting its destruction.", v13, 0xCu);
      sub_100006AFC(v14);
    }

    v16 = [objc_opt_self() sharedApplication];
    v17 = [v10 session];
    [v16 requestSceneSessionDestruction:v17 options:0 errorHandler:0];
  }
}

void sub_1000061BC(void *a1, uint64_t a2, void *a3, uint64_t a4, const char *a5)
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v8 = a3;
  v9 = a1;
  sub_1000070EC(v8, a5);
}

id sub_1000063A8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RemoteAlertSceneDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10000645C(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_1000064A8(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100006574(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_100006BB0(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100006B64(v11);
  return v7;
}

unint64_t sub_100006574(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_100006680(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = _StringObject.sharedUTF8.getter();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void *sub_100006680(uint64_t a1, unint64_t a2)
{
  v4 = sub_1000066CC(a1, a2);
  sub_1000067FC(&off_100010730);
  result = v4;
  v3 = v4[2] - 1;
  return result;
}

void *sub_1000066CC(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return _swiftEmptyArrayStorage;
  }

  v6 = sub_1000068E8(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = _StringObject.sharedUTF8.getter();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return _swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_1000068E8(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1000067FC(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_10000695C(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_1000068E8(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_100003404(&qword_100015C90, &unk_10000BCB8);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_10000695C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100003404(&qword_100015C90, &unk_10000BCB8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

_BYTE **sub_100006A50(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

void sub_100006A88(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

uint64_t sub_100006AFC(uint64_t a1)
{
  v2 = sub_100003404(&qword_100015A18, qword_10000BB70);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100006B64(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_100006BB0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_100006C0C()
{
  v1 = *(v0 + OBJC_IVAR___RemoteAlertSceneDelegate_window);
  if (v1 && (v2 = [v1 windowScene]) != 0 && (v3 = v2, v4 = objc_msgSend(v2, "session"), v3, v4))
  {
    oslog = [objc_opt_self() sharedApplication];
    [oslog requestSceneSessionDestruction:v4 options:0 errorHandler:0];
  }

  else
  {
    if (qword_1000158F8 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_100003D08(v5, qword_1000162A0);
    oslog = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v10 = v8;
      *v7 = 136315138;
      *(v7 + 4) = sub_1000064A8(0xD000000000000021, 0x800000010000A970, &v10);
      _os_log_impl(&_mh_execute_header, oslog, v6, "no window scene session to destroy in %s", v7, 0xCu);
      sub_100006B64(v8);
    }
  }
}

void sub_100006DE4(void *a1, uint64_t a2, void (**a3)(void, void, void))
{
  if (qword_1000158F8 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100003D08(v6, qword_1000162A0);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "presenting icon change alert", v9, 2u);
  }

  v10 = type metadata accessor for IconChangeAlertRootViewController();
  v11 = objc_allocWithZone(v10);
  v12 = &v11[OBJC_IVAR____TtC19CoreServicesUIAgent33IconChangeAlertRootViewController_acknowledgementStatus];
  *v12 = _swiftEmptyArrayStorage;
  v12[8] = 0;
  *&v11[OBJC_IVAR____TtC19CoreServicesUIAgent33IconChangeAlertRootViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v11[OBJC_IVAR____TtC19CoreServicesUIAgent33IconChangeAlertRootViewController_identity] = a1;
  v18.receiver = v11;
  v18.super_class = v10;
  v13 = a1;
  v14 = objc_msgSendSuper2(&v18, "initWithNibName:bundle:", 0, 0);
  *&v14[OBJC_IVAR____TtC19CoreServicesUIAgent33IconChangeAlertRootViewController_delegate + 8] = &off_100010908;
  swift_unknownObjectWeakAssign();
  v15 = *(a2 + OBJC_IVAR___RemoteAlertSceneDelegate_window);
  if (v15)
  {
    v16 = [v15 rootViewController];
    if (v16)
    {
      v17 = v16;
      type metadata accessor for RemoteAlertRootViewController();
      swift_dynamicCastClassUnconditional();
      sub_100004DF0(v14);

      sub_100002C10();
      (a3)[2](a3, v14, 0);

      return;
    }
  }

  else
  {
    _Block_release(a3);
    __break(1u);
  }

  _Block_release(a3);
  __break(1u);
}

void sub_1000070EC(void *a1, const char *a2)
{
  if (qword_1000158F8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100003D08(v4, qword_1000162A0);
  v5 = a1;
  oslog = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v5;
    *v8 = v5;
    v9 = v5;
    _os_log_impl(&_mh_execute_header, oslog, v6, a2, v7, 0xCu);
    sub_100006AFC(v8);
  }
}

unint64_t sub_100007234()
{
  result = qword_100015C98;
  if (!qword_100015C98)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100015C98);
  }

  return result;
}

uint64_t sub_1000072CC()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t sub_1000072EC()
{
  v1 = *(v0 + 16);

  return _swift_deallocClassInstance(v0, 24, 7);
}

uint64_t sub_100007344(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = type metadata accessor for Optional();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1000073B4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = v5 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  v7 = *(*(*(a3 + 16) - 8) + 64);
  if (!v5)
  {
    ++v7;
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v6;
  if (a2 > v6)
  {
    v9 = 8 * v7;
    if (v7 > 3)
    {
      goto LABEL_8;
    }

    v11 = ((v8 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v7);
      if (v10)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v11 <= 0xFF)
      {
        if (v11 < 2)
        {
          goto LABEL_28;
        }

LABEL_8:
        v10 = *(a1 + v7);
        if (!*(a1 + v7))
        {
          goto LABEL_28;
        }

LABEL_15:
        v12 = (v10 - 1) << v9;
        if (v7 > 3)
        {
          v12 = 0;
        }

        if (v7)
        {
          if (v7 <= 3)
          {
            v13 = v7;
          }

          else
          {
            v13 = 4;
          }

          if (v13 > 2)
          {
            if (v13 == 3)
            {
              v14 = *a1 | (*(a1 + 2) << 16);
            }

            else
            {
              v14 = *a1;
            }
          }

          else if (v13 == 1)
          {
            v14 = *a1;
          }

          else
          {
            v14 = *a1;
          }
        }

        else
        {
          v14 = 0;
        }

        return v6 + (v14 | v12) + 1;
      }

      v10 = *(a1 + v7);
      if (*(a1 + v7))
      {
        goto LABEL_15;
      }
    }
  }

LABEL_28:
  if (v5 < 2)
  {
    return 0;
  }

  v16 = (*(v4 + 48))(a1, v5);
  if (v16 >= 2)
  {
    return v16 - 1;
  }

  else
  {
    return 0;
  }
}

char *sub_100007534(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = v7 - 1;
  if (v7)
  {
    v9 = *(*(*(a4 + 16) - 8) + 64);
  }

  else
  {
    v8 = 0;
    v9 = *(*(*(a4 + 16) - 8) + 64) + 1;
  }

  v10 = a3 >= v8;
  v11 = a3 - v8;
  if (v11 == 0 || !v10)
  {
    goto LABEL_16;
  }

  if (v9 > 3)
  {
    v5 = 1;
    if (v8 < a2)
    {
      goto LABEL_17;
    }

    goto LABEL_26;
  }

  v12 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
  if (!HIWORD(v12))
  {
    if (v12 < 0x100)
    {
      v13 = 1;
    }

    else
    {
      v13 = 2;
    }

    if (v12 >= 2)
    {
      v5 = v13;
    }

    else
    {
      v5 = 0;
    }

LABEL_16:
    if (v8 < a2)
    {
      goto LABEL_17;
    }

    goto LABEL_26;
  }

  v5 = 4;
  if (v8 < a2)
  {
LABEL_17:
    v14 = ~v8 + a2;
    if (v9 < 4)
    {
      v16 = (v14 >> (8 * v9)) + 1;
      if (v9)
      {
        v17 = v14 & ~(-1 << (8 * v9));
        v18 = result;
        bzero(result, v9);
        result = v18;
        if (v9 != 3)
        {
          if (v9 == 2)
          {
            *v18 = v17;
            if (v5 > 1)
            {
LABEL_44:
              if (v5 == 2)
              {
                *&result[v9] = v16;
              }

              else
              {
                *&result[v9] = v16;
              }

              return result;
            }
          }

          else
          {
            *v18 = v14;
            if (v5 > 1)
            {
              goto LABEL_44;
            }
          }

          goto LABEL_41;
        }

        *v18 = v17;
        v18[2] = BYTE2(v17);
      }

      if (v5 > 1)
      {
        goto LABEL_44;
      }
    }

    else
    {
      v15 = result;
      bzero(result, v9);
      result = v15;
      *v15 = v14;
      v16 = 1;
      if (v5 > 1)
      {
        goto LABEL_44;
      }
    }

LABEL_41:
    if (v5)
    {
      result[v9] = v16;
    }

    return result;
  }

LABEL_26:
  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *&result[v9] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_33;
    }

    *&result[v9] = 0;
  }

  else if (v5)
  {
    result[v9] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_33;
  }

  if (!a2)
  {
    return result;
  }

LABEL_33:
  if (v7 >= 2)
  {
    v19 = *(v6 + 56);

    return v19();
  }

  return result;
}