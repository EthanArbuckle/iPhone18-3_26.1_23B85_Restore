id sub_100016F70()
{
  if (qword_100353A10 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000F53C(v1, qword_100381C80);
  v2 = v0;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v15 = v6;
    *v5 = 136446210;
    v7 = v2;
    v8 = [v7 description];
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    v12 = sub_10017C9E8(v9, v11, &v15);

    *(v5 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v3, v4, "deinit: %{public}s", v5, 0xCu);
    sub_100008964(v6);
  }

  v13 = type metadata accessor for TimeZoneSource();
  v16.receiver = v2;
  v16.super_class = v13;
  return objc_msgSendSuper2(&v16, "dealloc");
}

uint64_t sub_1000171B0()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10000F574();
  *v5 = static OS_dispatch_queue.main.getter();
  (*(v3 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v2);
  v6 = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v5, v2);
  if (v6)
  {
    if (qword_100353AC8 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v7 = type metadata accessor for Logger();
  sub_10000F53C(v7, qword_100381EA8);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "TimeZoneSource::start", v10, 2u);
  }

  v11 = [objc_opt_self() defaultCenter];
  v12 = [objc_opt_self() mainQueue];
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_100017B28;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100223018;
  aBlock[3] = &unk_100326128;
  v14 = _Block_copy(aBlock);

  v15 = [v11 addObserverForName:NSSystemTimeZoneDidChangeNotification object:0 queue:v12 usingBlock:v14];
  _Block_release(v14);

  v16 = OBJC_IVAR____TtC8SOSBuddy14TimeZoneSource__observers;
  swift_beginAccess();
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(v1 + v16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + v16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  return swift_endAccess();
}

void sub_100017510()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_100017850();
  }
}

uint64_t sub_100017564()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10000F574();
  *v5 = static OS_dispatch_queue.main.getter();
  (*(v3 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v2);
  v6 = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v5, v2);
  if (v6)
  {
    if (qword_100353AC8 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v7 = type metadata accessor for Logger();
  sub_10000F53C(v7, qword_100381EA8);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "TimeZoneSource::stop", v10, 2u);
  }

  v11 = OBJC_IVAR____TtC8SOSBuddy14TimeZoneSource__observers;
  swift_beginAccess();
  v12 = *(v1 + v11);
  if (!(v12 >> 62))
  {
    v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v13)
    {
      goto LABEL_7;
    }

LABEL_14:
    *(v1 + v11) = _swiftEmptyArrayStorage;
  }

  v13 = _CocoaArrayWrapper.endIndex.getter();
  if (!v13)
  {
    goto LABEL_14;
  }

LABEL_7:
  result = objc_opt_self();
  if (v13 >= 1)
  {
    v15 = result;
    v19 = v1;

    v16 = 0;
    do
    {
      if ((v12 & 0xC000000000000001) != 0)
      {
        v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v17 = *(v12 + 8 * v16 + 32);
        swift_unknownObjectRetain();
      }

      ++v16;
      v18 = [v15 defaultCenter];
      [v18 removeObserver:v17];
      swift_unknownObjectRelease();
    }

    while (v13 != v16);

    v1 = v19;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

uint64_t sub_100017850()
{
  v1 = type metadata accessor for TimeZone();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100353AC8 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_10000F53C(v5, qword_100381EA8);
  v6 = v0;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v17 = v10;
    *v9 = 136446210;
    static TimeZone.autoupdatingCurrent.getter();
    sub_100017A98();
    v11 = dispatch thunk of CustomStringConvertible.description.getter();
    v13 = v12;
    (*(v2 + 8))(v4, v1);
    v14 = sub_10017C9E8(v11, v13, &v17);

    *(v9 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v7, v8, "Time zone changed to %{public}s", v9, 0xCu);
    sub_100008964(v10);
  }

  static TimeZone.autoupdatingCurrent.getter();
  PassthroughSubject.send(_:)();
  return (*(v2 + 8))(v4, v1);
}

unint64_t sub_100017A98()
{
  result = qword_1003558D8;
  if (!qword_1003558D8)
  {
    type metadata accessor for TimeZone();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003558D8);
  }

  return result;
}

uint64_t sub_100017AF0()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100017B30(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100017B48()
{
  v1 = v0;
  if (qword_100353A78 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000F53C(v2, qword_100381DB8);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v8 = v6;
    *v5 = 136446210;
    *(v5 + 4) = sub_10017C9E8(*(v1 + 24), *(v1 + 32), &v8);
    _os_log_impl(&_mh_execute_header, v3, v4, "Releasing LocationAssertion: '%{public}s'", v5, 0xCu);
    sub_100008964(v6);
  }

  if (swift_weakLoadStrong())
  {
    sub_100018AB0();
  }

  swift_weakDestroy();

  return v1;
}

uint64_t sub_100017CB8()
{
  sub_100017B48();

  return swift_deallocClassInstance();
}

uint64_t sub_100017CEC()
{
  v1 = v0;
  *(v0 + 32) = [objc_allocWithZone(type metadata accessor for GeoLocationSource()) init];
  *(v0 + 40) = 0;
  *(v0 + 48) = 2;
  *(v0 + 56) = 0;
  *(v0 + 64) = 0;
  *(v0 + 72) = 1;
  *(v0 + 80) = [objc_allocWithZone(NSLock) init];
  *(v0 + 88) = 0;
  sub_1000040A8(&unk_100365610);
  swift_allocObject();
  *(v0 + 16) = PassthroughSubject.init()();
  swift_allocObject();
  *(v0 + 24) = PassthroughSubject.init()();
  v2 = qword_100353A10;
  swift_retain_n();
  if (v2 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000F53C(v3, qword_100381C80);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v12 = v7;
    *v6 = 136446210;
    type metadata accessor for GeoLocationModel();

    v8 = String.init<A>(describing:)();
    v10 = sub_10017C9E8(v8, v9, &v12);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "init: %{public}s", v6, 0xCu);
    sub_100008964(v7);
  }

  return v1;
}

void sub_100017F00()
{

  v1 = *(v0 + 80);
}

uint64_t sub_100017F38()
{
  v1 = v0;
  if (qword_100353A10 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000F53C(v2, qword_100381C80);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136446210;
    type metadata accessor for GeoLocationModel();

    v7 = String.init<A>(describing:)();
    v9 = sub_10017C9E8(v7, v8, &v11);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "deinit: %{public}s", v5, 0xCu);
    sub_100008964(v6);
  }

  return v1;
}

uint64_t sub_1000180D4()
{
  sub_100017F38();

  return swift_deallocClassInstance();
}

void sub_10001812C()
{
  v1 = v0;
  sub_10000F574();
  v2 = static OS_dispatch_queue.main.getter();
  sub_1000040A8(&qword_100355B40);
  v3 = swift_allocObject();
  swift_weakInit();
  if (&_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
  {

    v4 = sub_100233B1C(&_swiftEmptyArrayStorage);
  }

  else
  {

    v4 = &_swiftEmptySetSingleton;
  }

  *(v3 + 32) = v4;
  swift_weakAssign();
  *(v3 + 24) = v2;

  sub_1001A8A4C(v5, sub_1000182DC, 0);

  v7 = sub_1001A8D50(v6, sub_100018360, 0);

  *(v1 + 40) = v7;

  v8 = *(v1 + 32);
  sub_1000AE944();
}

uint64_t sub_1000182DC(uint64_t a1, unsigned __int8 *a2)
{
  v3 = *a2;
  v4 = *(a1 + 48);
  if (v4 == 2 || ((v3 ^ v4) & 1) != 0)
  {
    sub_1000040A8(&unk_100365610);
    sub_100018C74();
    Subject<>.send()();
  }

  *(a1 + 48) = v3;
  return sub_1000184BC(v4);
}

uint64_t sub_100018360(uint64_t a1, float64x2_t *a2)
{
  v3 = vdupq_n_s64(0x408F400000000000uLL);
  v4 = vdivq_f64(vrndaq_f64(vmulq_f64(*a2, v3)), v3);
  v5 = *(a1 + 56);
  v6 = *(a1 + 72);
  if ((v6 & 1) != 0 || (v7 = vmovn_s64(vceqq_f64(v4, v5)), (v7.i32[0] & v7.i32[1] & 1) == 0))
  {
    v9 = v4;
    v10 = *(a1 + 56);
    sub_1000040A8(&unk_100365610);
    sub_100018C74();
    Subject<>.send()();
    v4 = v9;
    v5 = v10;
  }

  *(a1 + 56) = v4;
  *(a1 + 72) = 0;
  return sub_1000186E0(*&v5.f64[0], *&v5.f64[1], v6);
}

uint64_t sub_100018420()
{
  v1 = v0;
  v2 = *(v0 + 32);
  sub_1000AEFC0();

  *(v1 + 40) = 0;

  v3 = *(v1 + 48);
  if (v3 != 2)
  {
    sub_1000040A8(&unk_100365610);
    sub_100018C74();
    Subject<>.send()();
  }

  *(v1 + 48) = 2;

  return sub_1000184BC(v3);
}

uint64_t sub_1000184BC(uint64_t result)
{
  v2 = *(v1 + 48);
  if (v2 == 2)
  {
    if (result == 2)
    {
      return result;
    }
  }

  else if (result != 2 && ((v2 ^ result) & 1) == 0)
  {
    return result;
  }

  if (qword_100353A78 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000F53C(v3, qword_100381DB8);

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v6 = 136315394;
    sub_1000040A8(&unk_1003655D0);
    v7 = String.init<A>(describing:)();
    v9 = sub_10017C9E8(v7, v8, &v13);

    *(v6 + 4) = v9;
    *(v6 + 12) = 2080;
    v10 = String.init<A>(describing:)();
    v12 = sub_10017C9E8(v10, v11, &v13);

    *(v6 + 14) = v12;
    _os_log_impl(&_mh_execute_header, v4, v5, "locationIsAuthorized changed from %s to %s", v6, 0x16u);
    swift_arrayDestroy();
  }

  sub_1000040A8(&unk_100365610);
  sub_100018C74();
  return Subject<>.send()();
}

uint64_t sub_1000186E0(uint64_t result, uint64_t a2, char a3)
{
  if (*(v3 + 72))
  {
    if (a3)
    {
      return result;
    }
  }

  else if ((a3 & 1) == 0 && *(v3 + 56) == *&result && *(v3 + 64) == *&a2)
  {
    return result;
  }

  if (qword_100353A78 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_10000F53C(v5, qword_100381DB8);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v8 = 136315394;
    sub_1000040A8(qword_100355B48);
    v9 = String.init<A>(describing:)();
    v11 = sub_10017C9E8(v9, v10, &v15);

    *(v8 + 4) = v11;
    *(v8 + 12) = 2080;
    v12 = String.init<A>(describing:)();
    v14 = sub_10017C9E8(v12, v13, &v15);

    *(v8 + 14) = v14;
    _os_log_impl(&_mh_execute_header, v6, v7, "lastLocation changed from %s to %s", v8, 0x16u);
    swift_arrayDestroy();
  }

  sub_1000040A8(&unk_100365610);
  sub_100018C74();
  *&result = COERCE_DOUBLE(Subject<>.send()());
  return result;
}

void sub_100018918()
{
  v1 = v0;
  v2 = *(v0 + 80);
  [v2 lock];
  v3 = *(v1 + 88);
  if (__OFADD__(v3, 1))
  {
    __break(1u);
  }

  else
  {
    *(v1 + 88) = v3 + 1;
    [v2 unlock];
    if (qword_100353A78 == -1)
    {
      goto LABEL_3;
    }
  }

  swift_once();
LABEL_3:
  v4 = type metadata accessor for Logger();
  sub_10000F53C(v4, qword_100381DB8);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 134349056;
    *(v7 + 4) = *(v1 + 88);

    _os_log_impl(&_mh_execute_header, v5, v6, "Outstanding assertion counter: %{public}ld", v7, 0xCu);

    if (v3)
    {
      return;
    }
  }

  else
  {

    if (v3)
    {
      return;
    }
  }

  v8 = *(v1 + 32);
  sub_1000AF370();
}

void sub_100018AB0()
{
  v1 = v0;
  v2 = *(v0 + 80);
  [v2 lock];
  v3 = *(v1 + 88);
  v4 = v3 - 1;
  if (__OFSUB__(v3, 1))
  {
    __break(1u);
  }

  else
  {
    *(v1 + 88) = v4;
    [v2 unlock];
    if (qword_100353A78 == -1)
    {
      goto LABEL_3;
    }
  }

  swift_once();
LABEL_3:
  v5 = type metadata accessor for Logger();
  sub_10000F53C(v5, qword_100381DB8);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 134349056;
    *(v8 + 4) = *(v1 + 88);

    _os_log_impl(&_mh_execute_header, v6, v7, "Outstanding assertion counter: %{public}ld", v8, 0xCu);

    if (v4 > 0)
    {
      return;
    }
  }

  else
  {

    if (v4 > 0)
    {
      return;
    }
  }

  v9 = *(v1 + 32);
  sub_1000AF398();
}

unint64_t sub_100018C74()
{
  result = qword_10035CF00;
  if (!qword_10035CF00)
  {
    sub_100008CF0(&unk_100365610);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10035CF00);
  }

  return result;
}

uint64_t sub_100018CD8(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  swift_weakInit();
  if (qword_100353A78 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_10000F53C(v7, qword_100381DB8);

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v13 = v11;
    *v10 = 136446210;
    *(v10 + 4) = sub_10017C9E8(a2, a3, &v13);
    _os_log_impl(&_mh_execute_header, v8, v9, "Acquiring LocationAssertion: '%{public}s'", v10, 0xCu);
    sub_100008964(v11);
  }

  swift_weakAssign();
  *(v4 + 24) = a2;
  *(v4 + 32) = a3;
  sub_100018918();
  return v4;
}

uint64_t CLAuthorizationStatus.debugDescription.getter(int a1)
{
  if (a1 <= 1)
  {
    if (!a1)
    {
      return 0x65746544746F6E2ELL;
    }

    if (a1 == 1)
    {
      return 0x636972747365722ELL;
    }
  }

  else
  {
    switch(a1)
    {
      case 2:
        return 0x6465696E65642ELL;
      case 3:
        return 0xD000000000000011;
      case 4:
        return 0xD000000000000014;
    }
  }

  v2._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v2);

  return 0x756C61567761722ELL;
}

uint64_t sub_100018FFC()
{
  swift_unknownObjectWeakDestroy();

  return v0;
}

uint64_t sub_10001902C()
{
  sub_100018FFC();

  return swift_deallocClassInstance();
}

char *sub_100019078(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v45 = a3;
  v46 = a4;
  v47 = a2;
  v44 = a1;
  v6 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v42 = *(v6 - 8);
  v43 = v6;
  __chkstk_darwin(v6);
  v41 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v8);
  v9 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v9 - 8);
  *&v4[OBJC_IVAR____TtC8SOSBuddy20CoreTelephonyCAAgent__caConfig] = 0;
  v10 = OBJC_IVAR____TtC8SOSBuddy20CoreTelephonyCAAgent__carrierNames;
  *&v4[v10] = sub_1002555FC(_swiftEmptyArrayStorage);
  v11 = [objc_opt_self() mainBundle];
  v12 = [v11 bundleIdentifier];

  if (v12)
  {
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;
  }

  else
  {
    v15 = 0x8000000100294A20;
    v13 = 0xD000000000000012;
  }

  v40 = sub_10001D630(0, &qword_10035BA10);
  v49[0] = v13;
  v49[1] = v15;

  v16._countAndFlagsBits = 0x6E65696C4354432ELL;
  v16._object = 0xE900000000000074;
  String.append(_:)(v16);

  static DispatchQoS.unspecified.getter();
  v49[0] = _swiftEmptyArrayStorage;
  sub_1000112A0(&unk_100355D50, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_1000040A8(&unk_10035BA20);
  sub_1000112E8(&unk_100355D60, &unk_10035BA20);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v42 + 104))(v41, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v43);
  v17 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *&v5[OBJC_IVAR____TtC8SOSBuddy20CoreTelephonyCAAgent__queue] = v17;
  v18 = [objc_allocWithZone(CoreTelephonyClient) initWithQueue:v17];
  *&v5[OBJC_IVAR____TtC8SOSBuddy20CoreTelephonyCAAgent__client] = v18;
  v19 = &v5[OBJC_IVAR____TtC8SOSBuddy20CoreTelephonyCAAgent__caStateHandler];
  v20 = v45;
  v22 = v46;
  v21 = v47;
  *v19 = v44;
  *(v19 + 1) = v21;
  v23 = &v5[OBJC_IVAR____TtC8SOSBuddy20CoreTelephonyCAAgent__carrierNameHandler];
  *v23 = v20;
  *(v23 + 1) = v22;
  v24 = type metadata accessor for CoreTelephonyCAAgent();
  v48.receiver = v5;
  v48.super_class = v24;

  v25 = objc_msgSendSuper2(&v48, "init");
  v26 = *&v25[OBJC_IVAR____TtC8SOSBuddy20CoreTelephonyCAAgent__client];
  v27 = v25;
  [v26 setDelegate:v27];
  if (qword_100353A10 != -1)
  {
    swift_once();
  }

  v28 = type metadata accessor for Logger();
  sub_10000F53C(v28, qword_100381C80);
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v49[0] = v32;
    *v31 = 136446210;
    v33 = v27;
    v34 = [v33 description];
    v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v37 = v36;

    v38 = sub_10017C9E8(v35, v37, v49);

    *(v31 + 4) = v38;
    _os_log_impl(&_mh_execute_header, v29, v30, "[%{public}s] init", v31, 0xCu);
    sub_100008964(v32);
  }

  sub_10001981C();

  return v27;
}

id sub_1000195B8()
{
  if (qword_100353A10 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000F53C(v1, qword_100381C80);
  v2 = v0;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v15 = v6;
    *v5 = 136446210;
    v7 = v2;
    v8 = [v7 description];
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    v12 = sub_10017C9E8(v9, v11, &v15);

    *(v5 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v3, v4, "[%{public}s] deinit", v5, 0xCu);
    sub_100008964(v6);
  }

  v13 = type metadata accessor for CoreTelephonyCAAgent();
  v16.receiver = v2;
  v16.super_class = v13;
  return objc_msgSendSuper2(&v16, "dealloc");
}

uint64_t sub_10001981C()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10001D630(0, &qword_10035BA10);
  *v5 = static OS_dispatch_queue.main.getter();
  (*(v3 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v2);
  v6 = _dispatchPreconditionTest(_:)();
  result = (*(v3 + 8))(v5, v2);
  if (v6)
  {
    sub_100019A84();
    type metadata accessor for PreventSuspensionAssertion();
    swift_allocObject();
    v8 = sub_1000E13E0(0xD000000000000011, 0x8000000100294FD0, 0xD000000000000029, 0x8000000100294FA0);
    v9 = *(v1 + OBJC_IVAR____TtC8SOSBuddy20CoreTelephonyCAAgent__client);
    v10 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v11 = swift_allocObject();
    *(v11 + 16) = v10;
    *(v11 + 24) = v8;
    aBlock[4] = sub_10001DA8C;
    aBlock[5] = v11;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10001DBD0;
    aBlock[3] = &unk_100326580;
    v12 = _Block_copy(aBlock);

    [v9 getConnectionAssistantConfig:v12];
    _Block_release(v12);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_100019A84()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  if (qword_100353A40 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000F53C(v3, qword_100381D10);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "_fetchCarrierNames", v6, 2u);
  }

  v7 = *(v1 + OBJC_IVAR____TtC8SOSBuddy20CoreTelephonyCAAgent__client);
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = ObjectType;
  v11[4] = sub_10001D628;
  v11[5] = v9;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = sub_10001DBD0;
  v11[3] = &unk_100326300;
  v10 = _Block_copy(v11);

  [v7 getActiveContextsWithCallback:v10];
  _Block_release(v10);
}

void sub_100019C4C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v12 = __chkstk_darwin(v11);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    if (qword_100353A40 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_10000F53C(v16, qword_100381D10);
    swift_errorRetain();
    v42 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v42, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      aBlock[0] = v19;
      *v18 = 136446210;
      aBlock[6] = a2;
      swift_errorRetain();
      sub_1000040A8(&qword_100355D88);
      v20 = String.init<A>(describing:)();
      v22 = sub_10017C9E8(v20, v21, aBlock);

      *(v18 + 4) = v22;
      _os_log_impl(&_mh_execute_header, v42, v17, "getConnectionAssistantConfig failed: %{public}s", v18, 0xCu);
      sub_100008964(v19);
    }

    else
    {
      v37 = v42;
    }
  }

  else
  {
    v40 = v13;
    v41 = v12;
    v42 = v8;
    if (qword_100353A40 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    sub_10000F53C(v23, qword_100381D10);
    v24 = a1;
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v39 = a4;
      v28 = v27;
      v29 = swift_slowAlloc();
      *v28 = 138543362;
      *(v28 + 4) = v24;
      *v29 = a1;
      v30 = v24;
      _os_log_impl(&_mh_execute_header, v25, v26, "CA config: %{public}@", v28, 0xCu);
      sub_10001DB10(v29);

      a4 = v39;
    }

    sub_10001D630(0, &qword_10035BA10);
    v31 = static OS_dispatch_queue.main.getter();
    v32 = swift_allocObject();
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakInit();

    v34 = swift_allocObject();
    v34[2] = v32;
    v34[3] = a1;
    v34[4] = a4;
    aBlock[4] = sub_10001DB04;
    aBlock[5] = v34;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1001D2438;
    aBlock[3] = &unk_1003265D0;
    v35 = _Block_copy(aBlock);
    v36 = v24;

    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_1000112A0(&qword_10035BB40, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000040A8(&unk_100355D70);
    sub_1000112E8(&qword_10035BB50, &unk_100355D70);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v35);

    (v42[1].isa)(v10, v7);
    (*(v40 + 8))(v15, v41);
  }
}

void sub_10001A20C(uint64_t a1, void *a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = *(Strong + OBJC_IVAR____TtC8SOSBuddy20CoreTelephonyCAAgent__caConfig);
    *(Strong + OBJC_IVAR____TtC8SOSBuddy20CoreTelephonyCAAgent__caConfig) = a2;
    v7 = Strong;
    v8 = a2;
  }

  swift_beginAccess();
  v9 = swift_unknownObjectWeakLoadStrong();
  if (v9)
  {
    v10 = v9;
    sub_10001A2C4(a3, 0, 0);
  }
}

void sub_10001A2C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = (aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10001D630(0, &qword_10035BA10);
  *v11 = static OS_dispatch_queue.main.getter();
  (*(v9 + 104))(v11, enum case for DispatchPredicate.onQueue(_:), v8);
  v12 = _dispatchPreconditionTest(_:)();
  (*(v9 + 8))(v11, v8);
  if (v12)
  {
    v13 = *(v4 + OBJC_IVAR____TtC8SOSBuddy20CoreTelephonyCAAgent__client);
    v14 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v15 = swift_allocObject();
    v15[2] = v14;
    v15[3] = a1;
    v15[4] = a2;
    v15[5] = a3;
    aBlock[4] = sub_10001D9A8;
    aBlock[5] = v15;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10001DBD0;
    aBlock[3] = &unk_1003264E0;
    v16 = _Block_copy(aBlock);

    sub_10001D9B4(a2);

    [v13 getConnectionAssistantState:v16];
    _Block_release(v16);
  }

  else
  {
    __break(1u);
  }
}

void sub_10001A4EC(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = type metadata accessor for DispatchWorkItemFlags();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchQoS();
  v17 = __chkstk_darwin(v16);
  v20 = &v50 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    swift_errorRetain();
    if (qword_100353A40 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_10000F53C(v21, qword_100381D10);
    swift_errorRetain();
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      aBlock[0] = v25;
      *v24 = 136446210;
      v60 = a2;
      swift_errorRetain();
      sub_1000040A8(&qword_100355DA0);
      v26 = String.init<A>(describing:)();
      v28 = sub_10017C9E8(v26, v27, aBlock);

      *(v24 + 4) = v28;
      _os_log_impl(&_mh_execute_header, v22, v23, "getConnectionAssistantState: %{public}s", v24, 0xCu);
      sub_100008964(v25);
    }

    else
    {
    }
  }

  else
  {
    v57 = v17;
    v58 = a3;
    v54 = a4;
    v55 = v18;
    if (qword_100353A40 != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    sub_10000F53C(v29, qword_100381D10);
    v30 = a1;
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.default.getter();

    v33 = os_log_type_enabled(v31, v32);
    v56 = v15;
    v53 = v30;
    if (v33)
    {
      v34 = swift_slowAlloc();
      v52 = a6;
      v35 = v34;
      v36 = swift_slowAlloc();
      v51 = a5;
      v37 = v36;
      aBlock[0] = v36;
      *v35 = 136446210;
      v60 = a1;
      v38 = v30;
      sub_1000040A8(&qword_100355D98);
      v39 = String.init<A>(describing:)();
      v41 = sub_10017C9E8(v39, v40, aBlock);

      *(v35 + 4) = v41;
      _os_log_impl(&_mh_execute_header, v31, v32, "getConnectionAssistantState: %{public}s", v35, 0xCu);
      sub_100008964(v37);
      a5 = v51;

      a6 = v52;
    }

    if (a1)
    {
      sub_10001D630(0, &qword_10035BA10);
      v42 = v53;
      v43 = static OS_dispatch_queue.main.getter();
      v44 = swift_allocObject();
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      swift_unknownObjectWeakInit();

      v46 = swift_allocObject();
      v46[2] = v44;
      v46[3] = v42;
      v46[4] = v54;
      v46[5] = a5;
      v46[6] = a6;
      aBlock[4] = sub_10001DA1C;
      aBlock[5] = v46;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1001D2438;
      aBlock[3] = &unk_100326530;
      v47 = _Block_copy(aBlock);

      v48 = v42;
      sub_10001D9B4(a5);

      static DispatchQoS.unspecified.getter();
      aBlock[0] = _swiftEmptyArrayStorage;
      sub_1000112A0(&qword_10035BB40, &type metadata accessor for DispatchWorkItemFlags);
      sub_1000040A8(&unk_100355D70);
      sub_1000112E8(&qword_10035BB50, &unk_100355D70);
      v49 = v56;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v47);

      (*(v13 + 8))(v49, v12);
      (*(v55 + 8))(v20, v57);
    }
  }
}

uint64_t sub_10001AB5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v10 = result;
    v11 = *(result + OBJC_IVAR____TtC8SOSBuddy20CoreTelephonyCAAgent__caStateHandler);
    v12 = *(result + OBJC_IVAR____TtC8SOSBuddy20CoreTelephonyCAAgent__caConfig);

    if (v12)
    {
      v13 = v12;
      v14 = sub_10001AC60();
      v16 = v15;
    }

    else
    {
      v14 = 0.0;
      v16 = 0.0;
    }

    v11(a2, a3, a4, a5, v14, v16);
  }

  return result;
}

double sub_10001AC60()
{
  v1 = [v0 modelVector];
  v2 = 0.0;
  if (v1)
  {
    v3 = v1;
    v4 = [v1 defaultVector];
    if (v4)
    {
      v5 = v4;
      v6 = [v4 x];
      if (v6)
      {
        v7 = v6;
        v8 = [v6 offset];

        [v8 doubleValueSafe];
        v2 = v9;
      }

      v10 = [v5 y];
      if (v10)
      {
        v11 = v10;
        v12 = [v10 offset];

        [v12 doubleValueSafe];
      }

      return -v2;
    }

    else
    {
    }
  }

  return v2;
}

uint64_t sub_10001ADE8(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v23 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for DispatchQoS();
  v7 = *(v22 - 8);
  __chkstk_darwin(v22);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchPredicate();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = (&v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *(v2 + OBJC_IVAR____TtC8SOSBuddy20CoreTelephonyCAAgent__queue);
  *v13 = v14;
  (*(v11 + 104))(v13, enum case for DispatchPredicate.onQueue(_:), v10);
  v15 = v14;
  LOBYTE(v14) = _dispatchPreconditionTest(_:)();
  result = (*(v11 + 8))(v13, v10);
  if (v14)
  {
    sub_10001D630(0, &qword_10035BA10);
    v17 = static OS_dispatch_queue.main.getter();
    v18 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v19 = swift_allocObject();
    *(v19 + 16) = v18;
    *(v19 + 24) = a1;
    aBlock[4] = sub_10001D950;
    aBlock[5] = v19;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1001D2438;
    aBlock[3] = &unk_100326490;
    v20 = _Block_copy(aBlock);
    v21 = a1;

    static DispatchQoS.unspecified.getter();
    aBlock[0] = &_swiftEmptyArrayStorage;
    sub_1000112A0(&qword_10035BB40, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000040A8(&unk_100355D70);
    sub_1000112E8(&qword_10035BB50, &unk_100355D70);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v20);

    (*(v23 + 8))(v6, v4);
    return (*(v7 + 8))(v9, v22);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10001B1D0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = result;
    v5 = *(result + OBJC_IVAR____TtC8SOSBuddy20CoreTelephonyCAAgent__caStateHandler);
    v6 = *(result + OBJC_IVAR____TtC8SOSBuddy20CoreTelephonyCAAgent__caConfig);

    if (v6)
    {
      v7 = v6;
      v8 = sub_10001AC60();
      v10 = v9;
    }

    else
    {
      v8 = 0.0;
      v10 = 0.0;
    }

    v5(a2, 0, 0, 0, v8, v10);
  }

  return result;
}

void sub_10001B324(id a1, id a2)
{
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = (&v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(v2 + OBJC_IVAR____TtC8SOSBuddy20CoreTelephonyCAAgent__queue);
  *v8 = v9;
  (*(v6 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v5);
  v10 = v9;
  LOBYTE(v9) = _dispatchPreconditionTest(_:)();
  (*(v6 + 8))(v8, v5);
  if ((v9 & 1) == 0)
  {
    __break(1u);
LABEL_16:
    swift_once();
    goto LABEL_5;
  }

  if (!a1 || !a2)
  {
    return;
  }

  v40 = v2;
  v11 = qword_100353A40;
  a1 = a1;
  a2 = a2;
  if (v11 != -1)
  {
    goto LABEL_16;
  }

LABEL_5:
  v12 = type metadata accessor for Logger();
  sub_10000F53C(v12, qword_100381D10);
  v13 = a1;
  v14 = a2;
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    aBlock[0] = v39;
    *v17 = 136315394;
    v41 = [v13 slotID];
    type metadata accessor for CTSubscriptionSlot(0);
    v18 = String.init<A>(describing:)();
    v20 = sub_10017C9E8(v18, v19, aBlock);

    *(v17 + 4) = v20;
    *(v17 + 12) = 2082;
    v21 = v14;
    v22 = [v21 description];
    v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v24;

    v26 = sub_10017C9E8(v23, v25, aBlock);

    *(v17 + 14) = v26;
    _os_log_impl(&_mh_execute_header, v15, v16, "displayStatusChanged for %s: %{public}s", v17, 0x16u);
    swift_arrayDestroy();
  }

  v27 = v40;
  if ([v13 slotID])
  {
    v14 = v14;
    if (sub_10001D6CC(v14))
    {
      v28 = *(v27 + OBJC_IVAR____TtC8SOSBuddy20CoreTelephonyCAAgent__client);
      v29 = String._bridgeToObjectiveC()();
      v30 = [objc_allocWithZone(CTBundle) initWithBundleType:1];
      v31 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v32 = swift_allocObject();
      v32[2] = v31;
      v32[3] = v13;
      v32[4] = 0;
      aBlock[4] = sub_10001DBA4;
      aBlock[5] = v32;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10001DBD0;
      aBlock[3] = &unk_100326440;
      v33 = _Block_copy(aBlock);
      v34 = v13;

      [v28 copyCarrierBundleValueWithDefault:v34 key:v29 bundleType:v30 completion:v33];
      _Block_release(v33);

      v35 = v14;
      v14 = v29;
      v13 = v30;
    }

    else
    {

      sub_10001C54C(v13, 0, 0, 0);
      v35 = v13;
      v13 = v14;
    }
  }

  else
  {
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&_mh_execute_header, v35, v36, "displayStatusChanged: context is irrelevant, skipping", v37, 2u);
    }
  }
}

void sub_10001B8BC(void *a1, unint64_t a2)
{
  if (a2)
  {
    v2 = a2;
    if (qword_100353A40 != -1)
    {
LABEL_35:
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_10000F53C(v3, qword_100381D10);
    swift_errorRetain();
    oslog = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(oslog, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      aBlock[0] = v6;
      *v5 = 136446210;
      aBlock[9] = v2;
      swift_errorRetain();
      sub_1000040A8(&qword_100355D88);
      v7 = String.init<A>(describing:)();
      v9 = sub_10017C9E8(v7, v8, aBlock);

      *(v5 + 4) = v9;
      _os_log_impl(&_mh_execute_header, oslog, v4, "_fetchCarrierNames: getActiveContexts failed: %{public}s", v5, 0xCu);
      sub_100008964(v6);

      return;
    }

    goto LABEL_30;
  }

  if (!a1 || (v10 = [a1 subscriptions]) == 0)
  {
    if (qword_100353A40 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_10000F53C(v22, qword_100381D10);
    oslog = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v23, "_fetchCarrierNames: no relevant contexts", v24, 2u);
    }

LABEL_30:

    return;
  }

  v11 = v10;
  sub_10001D630(0, &qword_100355D80);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  aBlock[0] = &_swiftEmptyArrayStorage;
  if (v2 >> 62)
  {
    v12 = _CocoaArrayWrapper.endIndex.getter();
    if (v12)
    {
      goto LABEL_9;
    }

LABEL_37:
    v14 = &_swiftEmptyArrayStorage;
    goto LABEL_38;
  }

  v12 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v12)
  {
    goto LABEL_37;
  }

LABEL_9:
  v13 = 0;
  v14 = &_swiftEmptyArrayStorage;
  do
  {
    v15 = v13;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v15 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_34;
        }

        v16 = *(v2 + 8 * v15 + 32);
      }

      v17 = v16;
      v13 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
LABEL_34:
        __break(1u);
        goto LABEL_35;
      }

      v18 = [v16 context];
      if (v18)
      {
        v19 = v18;
        v20 = [v18 slotID];

        if (v20)
        {
          break;
        }
      }

LABEL_12:
      ++v15;
      if (v13 == v12)
      {
        goto LABEL_38;
      }
    }

    v21 = [v17 context];

    if (!v21)
    {
      goto LABEL_12;
    }

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v14 = aBlock[0];
  }

  while (v13 != v12);
LABEL_38:

  if (v14 >> 62)
  {
    v25 = _CocoaArrayWrapper.endIndex.getter();
    if (v25)
    {
      goto LABEL_40;
    }
  }

  else
  {
    v25 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v25)
    {
LABEL_40:
      if (v25 < 1)
      {
        __break(1u);
      }

      else
      {
        swift_beginAccess();
        swift_beginAccess();
        for (i = 0; i != v25; ++i)
        {
          if ((v14 & 0xC000000000000001) != 0)
          {
            v27 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v27 = *(v14 + 8 * i + 32);
          }

          v28 = v27;
          Strong = swift_unknownObjectWeakLoadStrong();
          if (Strong)
          {
            v30 = Strong;
            v31 = *(Strong + OBJC_IVAR____TtC8SOSBuddy20CoreTelephonyCAAgent__client);

            v32 = swift_allocObject();
            v33 = swift_unknownObjectWeakLoadStrong();
            swift_unknownObjectWeakInit();

            v34 = swift_allocObject();
            v34[2] = v28;
            v34[3] = v32;
            v34[4] = v14;
            aBlock[4] = sub_10001D6C0;
            aBlock[5] = v34;
            aBlock[0] = _NSConcreteStackBlock;
            aBlock[1] = 1107296256;
            aBlock[2] = sub_10001DBD0;
            aBlock[3] = &unk_100326350;
            v35 = _Block_copy(aBlock);
            v36 = v28;

            [v31 copyRegistrationDisplayStatus:v36 completion:v35];

            _Block_release(v35);
            v28 = v31;
          }
        }
      }

      return;
    }
  }
}

void sub_10001BF18(void *a1, void *a2, void *a3, uint64_t a4, unint64_t a5)
{
  if (a2)
  {
    if (qword_100353A40 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_10000F53C(v6, qword_100381D10);
    swift_errorRetain();
    oslog = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(oslog, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      aBlock[0] = v9;
      *v8 = 136446210;
      v55 = a2;
      swift_errorRetain();
      sub_1000040A8(&qword_100355D88);
      v10 = String.init<A>(describing:)();
      v12 = sub_10017C9E8(v10, v11, aBlock);

      *(v8 + 4) = v12;
      _os_log_impl(&_mh_execute_header, oslog, v7, "_fetchCarrierNames: copyRegistrationDisplayStatus failed: %{public}s", v8, 0xCu);
      sub_100008964(v9);
    }

    else
    {
    }
  }

  else
  {
    if (qword_100353A40 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_10000F53C(v16, qword_100381D10);
    v17 = a1;
    v18 = a3;
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();

    v50 = v17;
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      aBlock[0] = swift_slowAlloc();
      *v21 = 136315394;
      v55 = [v18 slotID];
      type metadata accessor for CTSubscriptionSlot(0);
      v22 = String.init<A>(describing:)();
      oslogb = v18;
      v24 = sub_10017C9E8(v22, v23, aBlock);

      *(v21 + 4) = v24;
      *(v21 + 12) = 2082;
      v55 = a1;
      v25 = v17;
      sub_1000040A8(&qword_100355D90);
      v26 = String.init<A>(describing:)();
      v28 = sub_10017C9E8(v26, v27, aBlock);

      *(v21 + 14) = v28;
      v18 = oslogb;
      _os_log_impl(&_mh_execute_header, v19, v20, "displayStatus fetched for %s: %{public}s", v21, 0x16u);
      swift_arrayDestroy();
    }

    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v30 = Strong;
      if (a5 >> 62)
      {
        v31 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v31 = *((a5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v32 = &_swiftEmptyArrayStorage;
      if (v31)
      {
        v49 = v30;
        osloga = v18;
        aBlock[0] = &_swiftEmptyArrayStorage;
        sub_100187234(0, v31 & ~(v31 >> 63), 0);
        if (v31 < 0)
        {
          __break(1u);
          return;
        }

        v33 = 0;
        v32 = aBlock[0];
        do
        {
          if ((a5 & 0xC000000000000001) != 0)
          {
            v34 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v34 = *(a5 + 8 * v33 + 32);
          }

          v35 = v34;
          v36 = [v34 slotID];

          aBlock[0] = v32;
          v38 = v32[2];
          v37 = v32[3];
          if (v38 >= v37 >> 1)
          {
            sub_100187234((v37 > 1), v38 + 1, 1);
            v32 = aBlock[0];
          }

          ++v33;
          v32[2] = v38 + 1;
          v32[v38 + 4] = v36;
        }

        while (v31 != v33);
        v18 = osloga;
        v30 = v49;
      }

      if (a1)
      {
        v39 = v50;
        if (sub_10001D6CC(v39))
        {
          v40 = v18;
          v41 = *&v30[OBJC_IVAR____TtC8SOSBuddy20CoreTelephonyCAAgent__client];
          v42 = String._bridgeToObjectiveC()();
          v43 = [objc_allocWithZone(CTBundle) initWithBundleType:1];
          v44 = v30;
          v45 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v46 = swift_allocObject();
          v46[2] = v45;
          v46[3] = v40;
          v46[4] = v32;
          aBlock[4] = sub_10001D87C;
          aBlock[5] = v46;
          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 1107296256;
          aBlock[2] = sub_10001DBD0;
          aBlock[3] = &unk_1003263A0;
          v47 = _Block_copy(aBlock);
          v48 = v40;

          [v41 copyCarrierBundleValueWithDefault:v48 key:v42 bundleType:v43 completion:v47];
          _Block_release(v47);

          return;
        }
      }

      sub_10001C54C(v18, 0, 0, v32);
    }
  }
}

uint64_t sub_10001C54C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v20 = a2;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v22 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for DispatchQoS();
  v10 = *(v21 - 8);
  __chkstk_darwin(v21);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001D630(0, &qword_10035BA10);
  v13 = static OS_dispatch_queue.main.getter();
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v15 = swift_allocObject();
  v15[2] = v14;
  v15[3] = a1;
  v15[4] = v20;
  v15[5] = a3;
  v15[6] = a4;
  aBlock[4] = sub_10001D8D8;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001D2438;
  aBlock[3] = &unk_1003263F0;
  v16 = _Block_copy(aBlock);

  v17 = a1;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_1000112A0(&qword_10035BB40, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000040A8(&unk_100355D70);
  sub_1000112E8(&qword_10035BB50, &unk_100355D70);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v16);

  (*(v22 + 8))(v9, v7);
  return (*(v10 + 8))(v12, v21);
}

uint64_t sub_10001C87C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  if (a2)
  {
    if (qword_100353A40 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_10000F53C(v7, qword_100381D10);
    swift_errorRetain();
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v18[0] = v11;
      *v10 = 136446210;
      swift_errorRetain();
      sub_1000040A8(&qword_100355D88);
      v12 = String.init<A>(describing:)();
      v14 = sub_10017C9E8(v12, v13, v18);

      *(v10 + 4) = v14;
      _os_log_impl(&_mh_execute_header, v8, v9, "_fetchCarrierName: copyCarrierBundleValue failed: %{public}s", v10, 0xCu);
      sub_100008964(v11);
    }
  }

  else if (a1)
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v18[0] = 0;
      v18[1] = 0;
      static String._conditionallyBridgeFromObjectiveC(_:result:)();
    }
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    sub_10001C54C(a4, 0, 0, a5);
  }
}

void sub_10001CAA4(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

void sub_10001CB30(uint64_t a1, void *a2, char *a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    sub_10001CBC4([a2 slotID], a3, a4, a5);
  }
}

uint64_t sub_10001CBC4(uint64_t result, char *a2, uint64_t a3, uint64_t a4)
{
  if (!result)
  {
    return result;
  }

  v5 = v4;
  v7 = a3;
  v8 = a2;
  v9 = result;
  v72 = v5;
  if (a4)
  {
    v70 = a3;
    v71 = a2;
    v69 = result;
    v10 = sub_1002555FC(&_swiftEmptyArrayStorage);
    v11 = *(a4 + 16);
    if (v11)
    {
      v12 = OBJC_IVAR____TtC8SOSBuddy20CoreTelephonyCAAgent__carrierNames;
      v13 = (a4 + 32);
      swift_beginAccess();
      while (1)
      {
        v16 = *v13++;
        v15 = v16;
        v17 = *(v5 + v12);
        if (!*(v17 + 16) || (v18 = sub_1001868C8(v15), (v19 & 1) == 0))
        {
          v32 = sub_1001868C8(v15);
          if (v33)
          {
            v34 = v32;
            v75 = v10;
            if (!swift_isUniquelyReferenced_nonNull_native())
            {
              sub_1000908BC();
              v10 = v75;
            }

            sub_1001880B4(v34, v10);
          }

          goto LABEL_7;
        }

        v20 = (*(v17 + 56) + 16 * v18);
        v21 = *v20;
        v22 = v20[1];

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v75 = v10;
        v24 = sub_1001868C8(v15);
        v26 = v10[2];
        v27 = (v25 & 1) == 0;
        v28 = __OFADD__(v26, v27);
        v29 = v26 + v27;
        if (v28)
        {
          goto LABEL_61;
        }

        v30 = v25;
        if (v10[3] < v29)
        {
          break;
        }

        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_19;
        }

        v38 = v24;
        sub_1000908BC();
        v24 = v38;
        v10 = v75;
        if ((v30 & 1) == 0)
        {
LABEL_20:
          v10[(v24 >> 6) + 8] |= 1 << v24;
          *(v10[6] + 8 * v24) = v15;
          v35 = (v10[7] + 16 * v24);
          *v35 = v21;
          v35[1] = v22;
          v36 = v10[2];
          v28 = __OFADD__(v36, 1);
          v37 = v36 + 1;
          if (v28)
          {
            goto LABEL_62;
          }

          v10[2] = v37;
          goto LABEL_6;
        }

LABEL_5:
        v14 = (v10[7] + 16 * v24);
        *v14 = v21;
        v14[1] = v22;

LABEL_6:
        v5 = v72;
LABEL_7:
        if (!--v11)
        {
          goto LABEL_24;
        }
      }

      sub_10008D44C(v29, isUniquelyReferenced_nonNull_native);
      v24 = sub_1001868C8(v15);
      if ((v30 & 1) != (v31 & 1))
      {
        goto LABEL_63;
      }

LABEL_19:
      v10 = v75;
      if ((v30 & 1) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_5;
    }

LABEL_24:
    v7 = v70;

    v39 = swift_isUniquelyReferenced_nonNull_native();
    v75 = v10;
    v9 = v69;
    sub_10018883C(v71, v70, v69, v39);
    v40 = v10;
    v41 = OBJC_IVAR____TtC8SOSBuddy20CoreTelephonyCAAgent__carrierNames;
    swift_beginAccess();

    v43 = sub_1000F4498(v42, v10);

    if (v43)
    {
    }

    else
    {
      *(v5 + v41) = v40;
    }

    v44 = v43 ^ 1;
    v8 = v71;
  }

  else
  {
    v44 = 0;
  }

  v45 = OBJC_IVAR____TtC8SOSBuddy20CoreTelephonyCAAgent__carrierNames;
  swift_beginAccess();
  v46 = *(v5 + v45);
  if (*(v46 + 16))
  {
    result = sub_1001868C8(v9);
    if (v47)
    {
      v48 = (*(v46 + 56) + 16 * result);
      v49 = v48[1];
      if (v49)
      {
        if (v7)
        {
          result = *v48;
          v50 = *v48 == v8 && v49 == v7;
          if (v50 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) != 0))
          {
LABEL_38:
            if ((v44 & 1) == 0)
            {
              return result;
            }

            goto LABEL_42;
          }
        }
      }

      else if (!v7)
      {
        goto LABEL_38;
      }
    }
  }

  swift_beginAccess();

  v51 = swift_isUniquelyReferenced_nonNull_native();
  v73 = *(v5 + v45);
  *(v5 + v45) = 0x8000000000000000;
  sub_10018883C(v8, v7, v9, v51);
  *(v5 + v45) = v73;
  swift_endAccess();
LABEL_42:
  v52 = *(v5 + v45);
  v53 = 1 << *(v52 + 32);
  v54 = -1;
  if (v53 < 64)
  {
    v54 = ~(-1 << v53);
  }

  v55 = v54 & *(v52 + 64);
  v56 = (v53 + 63) >> 6;

  v58 = 0;
  v71 = &_swiftEmptyArrayStorage;
  while (v55)
  {
LABEL_50:
    v60 = __clz(__rbit64(v55));
    v55 &= v55 - 1;
    v61 = (*(v52 + 56) + ((v58 << 10) | (16 * v60)));
    v62 = v61[1];
    if (v62)
    {
      v63 = *v61;
      v74[0] = *v61;
      v74[1] = v62;
      __chkstk_darwin(v57);
      v68[2] = v74;

      if (sub_1000FA628(sub_10001D8F0, v68, v71))
      {
      }

      else
      {
        v57 = swift_isUniquelyReferenced_nonNull_native();
        if ((v57 & 1) == 0)
        {
          v57 = sub_10017B338(0, *(v71 + 2) + 1, 1, v71);
          v71 = v57;
        }

        v65 = *(v71 + 2);
        v64 = *(v71 + 3);
        if (v65 >= v64 >> 1)
        {
          v57 = sub_10017B338((v64 > 1), v65 + 1, 1, v71);
          v71 = v57;
        }

        v66 = v71;
        *(v71 + 2) = v65 + 1;
        v67 = &v66[16 * v65];
        *(v67 + 4) = v63;
        *(v67 + 5) = v62;
      }
    }
  }

  while (1)
  {
    v59 = v58 + 1;
    if (__OFADD__(v58, 1))
    {
      break;
    }

    if (v59 >= v56)
    {

      (*(v72 + OBJC_IVAR____TtC8SOSBuddy20CoreTelephonyCAAgent__carrierNameHandler))(v71);
    }

    v55 = *(v52 + 64 + 8 * v59);
    ++v58;
    if (v55)
    {
      v58 = v59;
      goto LABEL_50;
    }
  }

  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  type metadata accessor for CTSubscriptionSlot(0);
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_10001D128()
{
  v0 = type metadata accessor for DispatchWorkItemFlags();
  v15 = *(v0 - 8);
  __chkstk_darwin(v0);
  v2 = &v14 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DispatchQoS();
  v3 = *(v14 - 8);
  __chkstk_darwin(v14);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100353A40 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_10000F53C(v6, qword_100381D10);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "activeSubscriptionsDidChange", v9, 2u);
  }

  sub_10001D630(0, &qword_10035BA10);
  v10 = static OS_dispatch_queue.main.getter();
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_10001D5D0;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001D2438;
  aBlock[3] = &unk_1003262B0;
  v12 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_1000112A0(&qword_10035BB40, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000040A8(&unk_100355D70);
  sub_1000112E8(&qword_10035BB50, &unk_100355D70);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v12);

  (*(v15 + 8))(v2, v0);
  return (*(v3 + 8))(v5, v14);
}

void sub_10001D4C0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_100019A84();
  }
}

uint64_t sub_10001D598()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001D5D8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10001D5F0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10001D630(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_10001D678()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10001D6CC(void *a1)
{
  if (![a1 isSatelliteSystem])
  {
    v7 = 0;
    return v7 & 1;
  }

  v2 = [a1 registrationDisplayStatus];
  if (v2)
  {
    v3 = v2;
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  result = kCTRegistrationStatusRegisteredHome;
  if (kCTRegistrationStatusRegisteredHome)
  {
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    if (v6)
    {
      if (v4 == v9 && v6 == v10)
      {
        goto LABEL_22;
      }

      v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v12)
      {
        v7 = 1;
        return v7 & 1;
      }
    }

    else
    {
    }

    v13 = [a1 registrationDisplayStatus];
    if (v13)
    {
      v14 = v13;
      v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v17 = v16;
    }

    else
    {
      v15 = 0;
      v17 = 0;
    }

    result = kCTRegistrationStatusRegisteredRoaming;
    if (kCTRegistrationStatusRegisteredRoaming)
    {
      v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      if (!v17)
      {
        v7 = 0;
LABEL_26:

        return v7 & 1;
      }

      if (v15 != v18 || v17 != v19)
      {
        v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
        goto LABEL_25;
      }

LABEL_22:
      v7 = 1;
LABEL_25:

      goto LABEL_26;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10001D888()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10001D910()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10001D958()
{

  if (*(v0 + 32))
  {
  }

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10001D9B4(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_10001D9C4()
{

  if (*(v0 + 40))
  {
  }

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10001DA4C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10001DAAC(void (*a1)(void))
{

  a1(*(v1 + 32));

  return _swift_deallocObject(v1, 40, 7);
}

uint64_t sub_10001DB10(uint64_t a1)
{
  v2 = sub_1000040A8(&qword_100359B00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

BOOL sub_10001DC2C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v7[2] = *(a1 + 32);
  v7[3] = v2;
  v7[4] = *(a1 + 64);
  v8 = *(a1 + 80);
  v3 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v3;
  v4 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v4;
  v9[4] = *(a2 + 64);
  v10 = *(a2 + 80);
  v5 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v5;
  return sub_10001F4B0(v7, v9);
}

id sub_10001DC98()
{
  v1 = OBJC_IVAR____TtC8SOSBuddy17StewieStateSource_stateDidChange;
  sub_1000040A8(&qword_100355E08);
  swift_allocObject();
  *&v0[v1] = PassthroughSubject.init()();
  *&v0[OBJC_IVAR____TtC8SOSBuddy17StewieStateSource__agent] = 0;
  v18.receiver = v0;
  v18.super_class = type metadata accessor for StewieStateSource();
  v2 = objc_msgSendSuper2(&v18, "init");
  v3 = qword_100353A10;
  v4 = v2;
  if (v3 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_10000F53C(v5, qword_100381C80);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v17 = v9;
    *v8 = 136446210;
    v10 = v4;
    v11 = [v10 description];
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    v15 = sub_10017C9E8(v12, v14, &v17);

    *(v8 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v6, v7, "init: %{public}s", v8, 0xCu);
    sub_100008964(v9);
  }

  else
  {
  }

  return v4;
}

id sub_10001DEBC()
{
  if (qword_100353A10 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000F53C(v1, qword_100381C80);
  v2 = v0;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v15 = v6;
    *v5 = 136446210;
    v7 = v2;
    v8 = [v7 description];
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    v12 = sub_10017C9E8(v9, v11, &v15);

    *(v5 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v3, v4, "deinit: %{public}s", v5, 0xCu);
    sub_100008964(v6);
  }

  v13 = type metadata accessor for StewieStateSource();
  v16.receiver = v2;
  v16.super_class = v13;
  return objc_msgSendSuper2(&v16, "dealloc");
}

uint64_t sub_10001E0FC()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10000F574();
  *v5 = static OS_dispatch_queue.main.getter();
  (*(v3 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v2);
  v6 = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v5, v2);
  if (v6)
  {
    if (qword_100353AC0 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v7 = type metadata accessor for Logger();
  sub_10000F53C(v7, qword_100381E90);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "start", v10, 2u);
  }

  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = objc_allocWithZone(type metadata accessor for StewieStateMonitorAgent());
  v13 = sub_1001110D4(sub_10001F63C, v11);
  v14 = *(v1 + OBJC_IVAR____TtC8SOSBuddy17StewieStateSource__agent);
  *(v1 + OBJC_IVAR____TtC8SOSBuddy17StewieStateSource__agent) = v13;
  v15 = v13;

  v16 = sub_100110BA8();
  return v16 & 1;
}

uint64_t sub_10001E344()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;

    sub_10001E414(2, 2, v2);
    PassthroughSubject.send(_:)();

    v4[3] = v2[3];
    v4[4] = v2[4];
    v5 = v3;
    v4[0] = v2[0];
    v4[1] = v2[1];
    v4[2] = v2[2];
    return sub_10001F644(v4);
  }

  return result;
}

uint64_t sub_10001E414@<X0>(char a1@<W0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v39 = sub_10001EEA4([v3 reason], objc_msgSend(v3, "status"));
  v38 = sub_10001EFBC();
  v37 = [v3 status];
  v36 = sub_10001F26C([v3 transportType]);
  v35 = sub_10015D518([v3 allowedServices]);
  v34 = sub_10015D518([v3 activeServices]);
  sub_1000EC3A8(&off_100321410);
  v5 = 4;
  v6 = 0;
  v7 = 0;
  v8 = qword_1003213F0;
  do
  {
    v10 = *v8++;
    v9 = v10;
    if ([v3 isCongestedService:v10])
    {
      v6 = v9 | v7;
      v7 |= v9;
    }

    --v5;
  }

  while (v5);

  v33 = sub_10015D518(v6);
  sub_1000EC3A8(&off_100321410);
  v11 = 4;
  v12 = 0;
  v13 = 0;
  v14 = qword_1003213F0;
  do
  {
    v16 = *v14++;
    v15 = v16;
    if ([v3 isDemoAllowedForService:v16])
    {
      v12 = v15 | v13;
      v13 |= v15;
    }

    --v11;
  }

  while (v11);

  v32 = sub_10015D518(v12);
  sub_1000EC3A8(&off_100321410);
  v17 = 4;
  v18 = 0;
  v19 = 0;
  v20 = qword_1003213F0;
  do
  {
    v22 = *v20++;
    v21 = v22;
    if ([v3 isPermittedAtCurrentLocation:v22])
    {
      v18 = v21 | v19;
      v19 |= v21;
    }

    --v17;
  }

  while (v17);

  v31 = sub_10015D518(v18);
  v23 = [v3 allowedServices];
  sub_1000EC3A8(&off_100321410);
  v24 = 4;
  v25 = 0;
  v26 = 0;
  v27 = qword_1003213F0;
  do
  {
    v29 = *v27++;
    v28 = v29;
    if ([v3 isDemoAllowedForService:v29])
    {
      v25 = v28 | v26;
      v26 |= v28;
    }

    --v24;
  }

  while (v24);

  *a3 = v39;
  *(a3 + 8) = v38;
  *(a3 + 16) = v37 == 6;
  *(a3 + 17) = v36;
  *(a3 + 24) = v35;
  *(a3 + 32) = v34;
  *(a3 + 40) = v33;
  *(a3 + 48) = v32;
  *(a3 + 56) = v31;
  *(a3 + 64) = a1;
  *(a3 + 65) = a2;
  *(a3 + 72) = v23;
  *(a3 + 80) = v25;
  return result;
}

void sub_10001E730()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10000F574();
  *v5 = static OS_dispatch_queue.main.getter();
  v6 = enum case for DispatchPredicate.onQueue(_:);
  v7 = *(v3 + 104);
  v7(v5, enum case for DispatchPredicate.onQueue(_:), v2);
  v8 = _dispatchPreconditionTest(_:)();
  v9 = *(v3 + 8);
  v9(v5, v2);
  if (v8)
  {
    v20 = v7;
    v21 = v1;
    if (qword_100353AC0 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v10 = type metadata accessor for Logger();
  sub_10000F53C(v10, qword_100381E90);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "stop", v13, 2u);
  }

  v14 = OBJC_IVAR____TtC8SOSBuddy17StewieStateSource__agent;
  v15 = v21;
  v16 = *(v21 + OBJC_IVAR____TtC8SOSBuddy17StewieStateSource__agent);
  if (!v16)
  {
    goto LABEL_8;
  }

  v17 = v16;
  *v5 = static OS_dispatch_queue.main.getter();
  v20(v5, v6, v2);
  v18 = _dispatchPreconditionTest(_:)();
  v9(v5, v2);
  if (v18)
  {
    v19 = *&v17[OBJC_IVAR____TtC8SOSBuddy23StewieStateMonitorAgent_monitor];
    *&v17[OBJC_IVAR____TtC8SOSBuddy23StewieStateMonitorAgent_monitor] = 0;

    v15 = v21;
    v16 = *(v21 + v14);
LABEL_8:
    *(v15 + v14) = 0;

    return;
  }

  __break(1u);
}

uint64_t getEnumTagSinglePayload for SettingsAgent.SettingsDestination(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SettingsAgent.SettingsDestination(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for GuidanceModel.SuggestedAction(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for GuidanceModel.SuggestedAction(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 sub_10001EC64(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_10001EC88(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10001ECD0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10001ED38()
{
  result = qword_100355DE0;
  if (!qword_100355DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100355DE0);
  }

  return result;
}

unint64_t sub_10001ED90()
{
  result = qword_100355DE8;
  if (!qword_100355DE8)
  {
    sub_100008CF0(&qword_100355DF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100355DE8);
  }

  return result;
}

unint64_t sub_10001EDF8()
{
  result = qword_100355DF8;
  if (!qword_100355DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100355DF8);
  }

  return result;
}

unint64_t sub_10001EE50()
{
  result = qword_100355E00;
  if (!qword_100355E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100355E00);
  }

  return result;
}

uint64_t sub_10001EEA4(uint64_t a1, unint64_t a2)
{
  if (a2 >= 5)
  {
    if (a2 - 5 >= 2)
    {
      if (qword_100353AC0 != -1)
      {
        swift_once();
      }

      v5 = type metadata accessor for Logger();
      sub_10000F53C(v5, qword_100381E90);
      v6 = Logger.logObject.getter();
      v7 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        *v8 = 134349056;
        *(v8 + 4) = a2;
        _os_log_impl(&_mh_execute_header, v6, v7, "Unexpected CTStewieStatus value: %{public}ld, defaulting to off", v8, 0xCu);
      }

      return 1;
    }

    else
    {
      return 5;
    }
  }

  else
  {

    return sub_10001F364(a1);
  }
}

uint64_t sub_10001EFBC()
{
  v1 = v0;
  v2 = sub_100255710(&_swiftEmptyArrayStorage);
  sub_1000EC3A8(&off_100321410);
  v3 = 0;
  p_ivar_base_size = (&ConnectionAssistantRenderer.RenderPipelines + 8);
  v31 = v0;
  while (1)
  {
    if (v3 >= 4)
    {
      goto LABEL_30;
    }

    v5 = qword_1003213F0[v3];
    v6 = [v1 *(p:v5 ivar:? base:?size + 352)];
    v7 = v6 - 3;
    if (v6 - 3) < 8 && ((0x87u >> v7))
    {
      break;
    }

LABEL_3:
    if (++v3 == 4)
    {

      return v2;
    }
  }

  v32 = 0x303030303020100uLL >> (8 * v7);
  v8 = sub_10015D518(v5);
  v9 = 0;
  v11 = (v8 + 7);
  v10 = v8[7];
  v33 = v8;
  v12 = 1 << *(v8 + 32);
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  else
  {
    v13 = -1;
  }

  v14 = v13 & v10;
  v15 = (v12 + 63) >> 6;
  if ((v13 & v10) != 0)
  {
    goto LABEL_13;
  }

LABEL_14:
  while (1)
  {
    v16 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v16 >= v15)
    {

      v1 = v31;
      p_ivar_base_size = &ConnectionAssistantRenderer.RenderPipelines.ivar_base_size;
      goto LABEL_3;
    }

    v14 = *&v11[8 * v16];
    ++v9;
    if (v14)
    {
      while (1)
      {
        v17 = *(v33[6] + (__clz(__rbit64(v14)) | (v16 << 6)));
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v34 = v2;
        v19 = sub_1001921EC(v17);
        v21 = *(v2 + 16);
        v22 = (v20 & 1) == 0;
        v23 = __OFADD__(v21, v22);
        v24 = v21 + v22;
        if (v23)
        {
          goto LABEL_29;
        }

        v25 = v20;
        if (*(v2 + 24) >= v24)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v29 = v19;
            sub_100090A20();
            v19 = v29;
          }
        }

        else
        {
          sub_10008D6DC(v24, isUniquelyReferenced_nonNull_native);
          v19 = sub_1001921EC(v17);
          if ((v25 & 1) != (v26 & 1))
          {
            goto LABEL_32;
          }
        }

        v14 &= v14 - 1;
        v2 = v34;
        if (v25)
        {
          break;
        }

        v34[(v19 >> 6) + 8] |= 1 << v19;
        *(v34[6] + v19) = v17;
        *(v34[7] + v19) = v32;
        v27 = v34[2];
        v23 = __OFADD__(v27, 1);
        v28 = v27 + 1;
        if (v23)
        {
          goto LABEL_31;
        }

        v34[2] = v28;
        v9 = v16;
        if (!v14)
        {
          goto LABEL_14;
        }

LABEL_13:
        v16 = v9;
      }

      *(v34[7] + v19) = v32;
      v9 = v16;
      if (v14)
      {
        goto LABEL_13;
      }
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

unint64_t sub_10001F26C(unint64_t a1)
{
  v1 = a1;
  if (a1 >= 3)
  {
    if (qword_100353AC0 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_10000F53C(v2, qword_100381E90);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 134349056;
      *(v5 + 4) = v1;
      _os_log_impl(&_mh_execute_header, v3, v4, "Unexpected CTStewieTransportType value: %{public}ld, defaulting to unknown", v5, 0xCu);
    }

    return 0;
  }

  return v1;
}

uint64_t sub_10001F364(uint64_t result)
{
  if (result > 3)
  {
    if (result <= 6)
    {
      if (result == 4)
      {
        return 3;
      }

      if (result != 5)
      {
        return 4;
      }
    }

LABEL_10:
    v1 = result;
    if (qword_100353AC0 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_10000F53C(v2, qword_100381E90);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 134349056;
      *(v5 + 4) = v1;
      _os_log_impl(&_mh_execute_header, v3, v4, "Unexpected CTStewieStatusReason value: %{public}ld, defaulting to notAllowedFeatureOff", v5, 0xCu);
    }

    return 1;
  }

  if ((result - 2) >= 2)
  {
    if (!result)
    {
      return result;
    }

    if (result == 1)
    {
      return 2;
    }

    goto LABEL_10;
  }

  return 1;
}

BOOL sub_10001F4B0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = *a1;
  v5 = *a2;
  if (v4 == 5)
  {
    if (v5 != 5)
    {
      return 0;
    }
  }

  else if (v4 != v5)
  {
    return 0;
  }

  if ((sub_1000F4390(*(a1 + 1), *(a2 + 1)) & 1) == 0 || ((a1[16] ^ a2[16]) & 1) != 0 || a1[17] != a2[17] || (sub_100204870(*(a1 + 3), *(a2 + 3)) & 1) == 0 || (sub_100204870(*(a1 + 4), *(a2 + 4)) & 1) == 0 || (sub_100204870(*(a1 + 5), *(a2 + 5)) & 1) == 0 || (sub_100204870(*(a1 + 6), *(a2 + 6)) & 1) == 0 || (sub_100204870(*(a1 + 7), *(a2 + 7)) & 1) == 0)
  {
    return 0;
  }

  v6 = a1[64];
  v7 = a2[64];
  if (v6 == 2)
  {
    if (v7 != 2)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v7 == 2 || ((v7 ^ v6) & 1) != 0)
    {
      return result;
    }
  }

  v9 = a1[65];
  v10 = a2[65];
  if (v9 == 2)
  {
    if (v10 != 2)
    {
      return 0;
    }

    return *(a1 + 9) == *(a2 + 9) && *(a1 + 10) == *(a2 + 10);
  }

  result = 0;
  if (v10 != 2 && ((v10 ^ v9) & 1) == 0)
  {
    return *(a1 + 9) == *(a2 + 9) && *(a1 + 10) == *(a2 + 10);
  }

  return result;
}

uint64_t sub_10001F604()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t getEnumTagSinglePayload for StewieState.Status(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_20;
  }

  v2 = a2 + 5;
  if (a2 + 5 >= 0xFFFF00)
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

  if (v4 <= 1)
  {
    if (!v4)
    {
      goto LABEL_20;
    }

    v5 = a1[1];
    if (!a1[1])
    {
      goto LABEL_20;
    }

    return (*a1 | (v5 << 8)) - 5;
  }

  if (v4 == 2)
  {
    v5 = *(a1 + 1);
    if (*(a1 + 1))
    {
      return (*a1 | (v5 << 8)) - 5;
    }
  }

  else
  {
    v5 = *(a1 + 1);
    if (v5)
    {
      return (*a1 | (v5 << 8)) - 5;
    }
  }

LABEL_20:
  v7 = *a1;
  v8 = v7 >= 5;
  v9 = v7 - 5;
  if (!v8)
  {
    v9 = -1;
  }

  if (v9 + 1 >= 2)
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for StewieState.Status(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 5;
  if (a3 + 5 >= 0xFFFF00)
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

  if (a3 < 0xFB)
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_10001F7E8(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 5)
  {
    return v1 - 4;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_10001F7FC(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 4;
  }

  return result;
}

unint64_t sub_10001F820()
{
  result = qword_100355E10;
  if (!qword_100355E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100355E10);
  }

  return result;
}

uint64_t sub_10001F894(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_10001F8F0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

__n128 sub_10001F954(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 26) = *(a2 + 26);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_10001F968(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 42))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_10001F9BC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 42) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 42) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

BOOL sub_10001FA1C(__int128 *a1, __int128 *a2)
{
  v2 = a1[1];
  v5 = *a1;
  v6[0] = v2;
  *(v6 + 10) = *(a1 + 26);
  v3 = a2[1];
  v7 = *a2;
  v8[0] = v3;
  *(v8 + 10) = *(a2 + 26);
  return sub_10001FA68(&v5, &v7);
}

BOOL sub_10001FA68(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || ((*(a1 + 8) ^ *(a2 + 8)) & 1) != 0)
  {
    return 0;
  }

  v3 = *(a2 + 24);
  if (*(a1 + 24))
  {
    if (!*(a2 + 24))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 16) != *(a2 + 16))
    {
      v3 = 1;
    }

    if (v3)
    {
      return 0;
    }
  }

  v4 = *(a2 + 40);
  if (*(a1 + 40))
  {
    if (!*(a2 + 40))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 32) != *(a2 + 32))
    {
      v4 = 1;
    }

    if (v4)
    {
      return 0;
    }
  }

  if (*(a1 + 41))
  {
    return (*(a2 + 41) & 1) != 0;
  }

  return (*(a2 + 41) & 1) == 0;
}

uint64_t sub_10001FB00(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10001FB48(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_10001FB98(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = _stringCompareWithSmolCheck(_:_:expecting:)(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  return result;
}

void sub_10001FC3C(Swift::String *a1@<X8>)
{
  v2 = objc_opt_self();
  v3 = [v2 mainBundle];
  v4._countAndFlagsBits = 0xD000000000000063;
  v19._object = 0x8000000100295670;
  v4._object = 0x8000000100295600;
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  v19._countAndFlagsBits = 0xD00000000000009ELL;
  v6 = NSLocalizedString(_:tableName:bundle:value:comment:)(v4, 0, v3, v5, v19);

  v7 = [v2 mainBundle];
  v8._countAndFlagsBits = 0xD00000000000005FLL;
  v20._object = 0x8000000100295670;
  v8._object = 0x8000000100295710;
  v9._countAndFlagsBits = 0;
  v9._object = 0xE000000000000000;
  v20._countAndFlagsBits = 0xD00000000000009ELL;
  v10 = NSLocalizedString(_:tableName:bundle:value:comment:)(v8, 0, v7, v9, v20);

  v11 = [v2 mainBundle];
  v12._countAndFlagsBits = 0xD00000000000005DLL;
  v21._object = 0x8000000100295670;
  v12._object = 0x8000000100295770;
  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  v21._countAndFlagsBits = 0xD00000000000009ELL;
  v14 = NSLocalizedString(_:tableName:bundle:value:comment:)(v12, 0, v11, v13, v21);

  v15 = [v2 mainBundle];
  v16._countAndFlagsBits = 0xD00000000000006CLL;
  v22._object = 0x8000000100295670;
  v16._object = 0x80000001002957D0;
  v17._countAndFlagsBits = 0;
  v17._object = 0xE000000000000000;
  v22._countAndFlagsBits = 0xD00000000000009ELL;
  v18 = NSLocalizedString(_:tableName:bundle:value:comment:)(v16, 0, v15, v17, v22);

  *a1 = v6;
  a1[1] = v10;
  a1[2] = v14;
  a1[3] = v18;
}

uint64_t sub_10001FE2C()
{
  v0 = objc_opt_self();
  v1 = [v0 mainBundle];
  v9._object = 0x80000001002953A0;
  v2._countAndFlagsBits = 0xD00000000000002ELL;
  v2._object = 0x8000000100295370;
  v9._countAndFlagsBits = 0xD0000000000000B7;
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v2, 0, v1, v3, v9)._countAndFlagsBits;

  v5 = [v0 mainBundle];
  v10._object = 0x8000000100295480;
  v6._object = 0x8000000100295460;
  v10._countAndFlagsBits = 0xD000000000000089;
  v6._countAndFlagsBits = 0xD00000000000001ALL;
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v6, 0, v5, v7, v10);

  return countAndFlagsBits;
}

uint64_t sub_10001FF64()
{
  v0 = objc_opt_self();
  v1 = [v0 mainBundle];
  v9._object = 0x8000000100295540;
  v2._countAndFlagsBits = 0xD00000000000002BLL;
  v2._object = 0x8000000100295510;
  v9._countAndFlagsBits = 0xD0000000000000B5;
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v2, 0, v1, v3, v9)._countAndFlagsBits;

  v5 = [v0 mainBundle];
  v10._object = 0x8000000100295480;
  v6._object = 0x8000000100295460;
  v10._countAndFlagsBits = 0xD000000000000089;
  v6._countAndFlagsBits = 0xD00000000000001ALL;
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v6, 0, v5, v7, v10);

  return countAndFlagsBits;
}

uint64_t sub_10002009C()
{
  v0 = objc_opt_self();
  v1 = [v0 mainBundle];
  v9._object = 0x8000000100295A20;
  v2._object = 0x8000000100295A00;
  v9._countAndFlagsBits = 0xD00000000000008ELL;
  v2._countAndFlagsBits = 0xD00000000000001BLL;
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v2, 0, v1, v3, v9)._countAndFlagsBits;

  v5 = [v0 mainBundle];
  v10._object = 0x8000000100295AD0;
  v6._countAndFlagsBits = 0xD00000000000001DLL;
  v6._object = 0x8000000100295AB0;
  v10._countAndFlagsBits = 0xD000000000000089;
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v6, 0, v5, v7, v10);

  return countAndFlagsBits;
}

uint64_t sub_1000201D4()
{
  v0 = objc_opt_self();
  v1 = [v0 mainBundle];
  v9._object = 0x8000000100295B80;
  v2._object = 0x8000000100295B60;
  v9._countAndFlagsBits = 0xD00000000000008FLL;
  v2._countAndFlagsBits = 0xD00000000000001CLL;
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v2, 0, v1, v3, v9)._countAndFlagsBits;

  v5 = [v0 mainBundle];
  v10._object = 0x8000000100295AD0;
  v6._countAndFlagsBits = 0xD00000000000001DLL;
  v6._object = 0x8000000100295AB0;
  v10._countAndFlagsBits = 0xD000000000000089;
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v6, 0, v5, v7, v10);

  return countAndFlagsBits;
}

uint64_t sub_10002030C()
{
  v0 = objc_opt_self();
  v1 = [v0 mainBundle];
  v2._countAndFlagsBits = 0xD000000000000028;
  v9._object = 0x8000000100295870;
  v2._object = 0x8000000100295840;
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  v9._countAndFlagsBits = 0xD000000000000086;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v2, 0, v1, v3, v9)._countAndFlagsBits;

  v5 = [v0 mainBundle];
  v6._countAndFlagsBits = 0xD00000000000001BLL;
  v10._object = 0x8000000100295870;
  v6._object = 0x8000000100295900;
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  v10._countAndFlagsBits = 0xD000000000000086;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v6, 0, v5, v7, v10);

  return countAndFlagsBits;
}

uint64_t sub_100020438()
{
  v0 = objc_opt_self();
  v1 = [v0 mainBundle];
  v2._countAndFlagsBits = 0xD000000000000029;
  v9._object = 0x8000000100295950;
  v2._object = 0x8000000100295920;
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  v9._countAndFlagsBits = 0xD000000000000087;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v2, 0, v1, v3, v9)._countAndFlagsBits;

  v5 = [v0 mainBundle];
  v6._countAndFlagsBits = 0xD00000000000001CLL;
  v10._object = 0x8000000100295950;
  v6._object = 0x80000001002959E0;
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  v10._countAndFlagsBits = 0xD000000000000087;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v6, 0, v5, v7, v10);

  return countAndFlagsBits;
}

uint64_t sub_100020564()
{
  v0 = objc_opt_self();
  v1 = [v0 mainBundle];
  v9._object = 0x8000000100295CF0;
  v2._object = 0x8000000100295CD0;
  v2._countAndFlagsBits = 0x1000000000000015;
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  v9._countAndFlagsBits = 0xD000000000000043;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v2, 0, v1, v3, v9)._countAndFlagsBits;

  v5 = [v0 mainBundle];
  v10._object = 0x8000000100295CF0;
  v6._object = 0x8000000100295D40;
  v6._countAndFlagsBits = 0x1000000000000015;
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  v10._countAndFlagsBits = 0xD000000000000043;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v6, 0, v5, v7, v10);

  return countAndFlagsBits;
}

uint64_t sub_100020688()
{
  v0 = objc_opt_self();
  v1 = [v0 mainBundle];
  v9._object = 0x8000000100295C30;
  v2._object = 0x8000000100295C10;
  v9._countAndFlagsBits = 0xD00000000000007CLL;
  v2._countAndFlagsBits = 0xD000000000000015;
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v2, 0, v1, v3, v9)._countAndFlagsBits;

  v5 = [v0 mainBundle];
  v10._object = 0x8000000100295C30;
  v6._object = 0x8000000100295CB0;
  v10._countAndFlagsBits = 0xD00000000000007CLL;
  v6._countAndFlagsBits = 0xD000000000000015;
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v6, 0, v5, v7, v10);

  return countAndFlagsBits;
}

uint64_t sub_1000207B4()
{
  v0 = objc_opt_self();
  v1 = [v0 mainBundle];
  v9._object = 0x8000000100295D80;
  v2._object = 0x8000000100295D60;
  v2._countAndFlagsBits = 0x1000000000000018;
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  v9._countAndFlagsBits = 0xD000000000000071;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v2, 0, v1, v3, v9)._countAndFlagsBits;

  v5 = [v0 mainBundle];
  v10._object = 0x8000000100295D80;
  v6._object = 0x8000000100295E00;
  v6._countAndFlagsBits = 0x1000000000000018;
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  v10._countAndFlagsBits = 0xD000000000000071;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v6, 0, v5, v7, v10);

  return countAndFlagsBits;
}

void sub_1000208D8(Swift::String *a1@<X8>)
{
  v2 = objc_opt_self();
  v3 = [v2 mainBundle];
  v4._countAndFlagsBits = 0xD00000000000002ELL;
  v19._object = 0x8000000100295270;
  v4._object = 0x8000000100295240;
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  v19._countAndFlagsBits = 0xD00000000000005ELL;
  v6 = NSLocalizedString(_:tableName:bundle:value:comment:)(v4, 0, v3, v5, v19);

  v7 = [v2 mainBundle];
  v8._countAndFlagsBits = 0xD00000000000002ALL;
  v20._object = 0x8000000100295270;
  v8._object = 0x80000001002952D0;
  v9._countAndFlagsBits = 0;
  v9._object = 0xE000000000000000;
  v20._countAndFlagsBits = 0xD00000000000005ELL;
  v10 = NSLocalizedString(_:tableName:bundle:value:comment:)(v8, 0, v7, v9, v20);

  v11 = [v2 mainBundle];
  v12._countAndFlagsBits = 0xD000000000000028;
  v21._object = 0x8000000100295270;
  v12._object = 0x8000000100295300;
  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  v21._countAndFlagsBits = 0xD00000000000005ELL;
  v14 = NSLocalizedString(_:tableName:bundle:value:comment:)(v12, 0, v11, v13, v21);

  v15 = [v2 mainBundle];
  v16._countAndFlagsBits = 0xD000000000000037;
  v22._object = 0x8000000100295270;
  v16._object = 0x8000000100295330;
  v17._countAndFlagsBits = 0;
  v17._object = 0xE000000000000000;
  v22._countAndFlagsBits = 0xD00000000000005ELL;
  v18 = NSLocalizedString(_:tableName:bundle:value:comment:)(v16, 0, v15, v17, v22);

  *a1 = v6;
  a1[1] = v10;
  a1[2] = v14;
  a1[3] = v18;
}

uint64_t sub_100020AC8()
{
  v0 = objc_opt_self();
  v1 = [v0 mainBundle];
  v9._object = 0x80000001002950D0;
  v2._countAndFlagsBits = 0xD000000000000031;
  v2._object = 0x8000000100295090;
  v9._countAndFlagsBits = 0xD000000000000039;
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v2, 0, v1, v3, v9)._countAndFlagsBits;

  v5 = [v0 mainBundle];
  v10._object = 0x8000000100295150;
  v6._countAndFlagsBits = 0xD000000000000035;
  v6._object = 0x8000000100295110;
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  v10._countAndFlagsBits = 0xD000000000000022;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v6, 0, v5, v7, v10);

  return countAndFlagsBits;
}

uint64_t sub_100020C00()
{
  v0 = objc_opt_self();
  v1 = [v0 mainBundle];
  v9._object = 0x80000001002950D0;
  v2._countAndFlagsBits = 0xD000000000000029;
  v2._object = 0x80000001002951E0;
  v9._countAndFlagsBits = 0xD000000000000039;
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v2, 0, v1, v3, v9)._countAndFlagsBits;

  v5 = [v0 mainBundle];
  v10._object = 0x8000000100295150;
  v6._countAndFlagsBits = 0xD00000000000002ALL;
  v6._object = 0x8000000100295210;
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  v10._countAndFlagsBits = 0xD000000000000022;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v6, 0, v5, v7, v10);

  return countAndFlagsBits;
}

uint64_t sub_100020D38()
{
  v0 = objc_opt_self();
  v1 = [v0 mainBundle];
  v9._object = 0x80000001002950D0;
  v2._countAndFlagsBits = 0xD00000000000002CLL;
  v2._object = 0x8000000100295180;
  v9._countAndFlagsBits = 0xD000000000000039;
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v2, 0, v1, v3, v9)._countAndFlagsBits;

  v5 = [v0 mainBundle];
  v10._object = 0x8000000100295150;
  v6._countAndFlagsBits = 0xD00000000000002DLL;
  v6._object = 0x80000001002951B0;
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  v10._countAndFlagsBits = 0xD000000000000022;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v6, 0, v5, v7, v10);

  return countAndFlagsBits;
}

uint64_t sub_100020E70(uint64_t a1, uint64_t a2)
{
  v4 = [objc_opt_self() mainBundle];
  v11._object = 0x80000001002962E0;
  v5._countAndFlagsBits = 0xD000000000000022;
  v5._object = 0x8000000100296290;
  v6.value._object = 0x80000001002962C0;
  v11._countAndFlagsBits = 0xD00000000000009FLL;
  v6.value._countAndFlagsBits = 0xD000000000000012;
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v5, v6, v4, v7, v11);

  sub_1000040A8(&qword_100355E48);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_100279160;
  *(v8 + 56) = &type metadata for String;
  *(v8 + 64) = sub_1000218DC();
  *(v8 + 32) = a1;
  *(v8 + 40) = a2;

  v9 = String.init(format:_:)();

  return v9;
}

uint64_t sub_100020FB4(uint64_t a1, void *a2)
{
  _StringGuts.grow(_:)(153);
  v4._object = 0x8000000100296380;
  v4._countAndFlagsBits = 0x1000000000000041;
  String.append(_:)(v4);
  v5._countAndFlagsBits = a1;
  v5._object = a2;
  String.append(_:)(v5);
  v6._countAndFlagsBits = 0x1000000000000056;
  v6._object = 0x80000001002963D0;
  String.append(_:)(v6);
  v7 = [objc_opt_self() mainBundle];
  v13._object = 0x8000000100296430;
  v8.value._object = 0x80000001002962C0;
  v13._countAndFlagsBits = 0xD0000000000000A3;
  v9._countAndFlagsBits = 0;
  v9._object = 0xE000000000000000;
  v8.value._countAndFlagsBits = 0xD000000000000012;
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v9, v8, v7, v10, v13)._countAndFlagsBits;

  return countAndFlagsBits;
}

void sub_1000210F4(uint64_t a1, uint64_t a2)
{
  v74 = a2;
  v73 = sub_1000040A8(&qword_100355E18);
  v71 = *(v73 - 8);
  __chkstk_darwin(v73);
  v4 = v63 - v3;
  v5 = sub_1000040A8(&qword_100355E20);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v76 = v63 - v7;
  v72 = sub_1000040A8(&qword_100355E28);
  v70 = *(v72 - 8);
  v8 = __chkstk_darwin(v72);
  v10 = v63 - v9;
  v11 = 0;
  v12 = *(a1 + 16);
  v13 = a1 + 48;
  v14 = _swiftEmptyArrayStorage;
LABEL_2:
  v15 = (v13 + 96 * v11);
  while (v12 != v11)
  {
    if (v11 >= v12)
    {
      __break(1u);
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    v16 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      goto LABEL_22;
    }

    v17 = *(v15 - 1);
    v18 = *v15;
    v19 = HIBYTE(*v15) & 0xF;
    if ((*v15 & 0x2000000000000000) == 0)
    {
      v19 = v17 & 0xFFFFFFFFFFFFLL;
    }

    v15 += 12;
    ++v11;
    if (v19)
    {
      v75 = v10;
      v20 = v6;
      v21 = v5;

      v22 = v4;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v14 = sub_10017B338(0, *(v14 + 2) + 1, 1, v14);
      }

      v24 = *(v14 + 2);
      v23 = *(v14 + 3);
      v25 = v14;
      if (v24 >= v23 >> 1)
      {
        v25 = sub_10017B338((v23 > 1), v24 + 1, 1, v14);
      }

      *(v25 + 2) = v24 + 1;
      v14 = v25;
      v26 = &v25[16 * v24];
      *(v26 + 4) = v17;
      *(v26 + 5) = v18;
      v11 = v16;
      v4 = v22;
      v5 = v21;
      v6 = v20;
      v10 = v75;
      goto LABEL_2;
    }
  }

  v27 = v76;
  if (!*(v14 + 2) || !*(v74 + 16))
  {

    return;
  }

  v77 = v74;
  v28 = v10;
  v68 = *(v6 + 104);
  v69 = (v6 + 104);
  v68(v76, enum case for ListFormatStyle.ListType.or<A, B>(_:), v5, v8);
  v29 = v71;
  v30 = *(v71 + 104);
  v66 = enum case for ListFormatStyle.Width.standard<A, B>(_:);
  v31 = v73;
  v67 = v71 + 104;
  v65 = v30;
  v30(v4);
  v75 = v14;
  v32 = sub_1000040A8(&qword_100355E30);
  v33 = sub_100009274(&qword_100355E38, &qword_100355E30);
  static FormatStyle.list<A>(type:width:)();
  v64 = *(v29 + 8);
  v64(v4, v31);
  v34 = *(v6 + 8);
  v35 = v5;
  v34(v27, v5);
  v36 = sub_100009274(&qword_100355E40, &qword_100355E28);
  v71 = v32;
  v37 = v72;
  v74 = v33;
  v63[1] = v36;
  Sequence.formatted<A>(_:)();
  v38 = *(v70 + 8);
  v39 = v28;
  v38(v28, v37);
  if (*(v75 + 2) >= 2uLL)
  {
    v40 = v76;
    v77 = v75;
    v70 = v79;
    v63[0] = v78;
    (v68)(v76, enum case for ListFormatStyle.ListType.and<A, B>(_:), v35);
    v41 = v73;
    v65(v4, v66, v73);
    v69 = v38;
    static FormatStyle.list<A>(type:width:)();
    v64(v4, v41);
    v34(v40, v35);
    v42 = v72;
    Sequence.formatted<A>(_:)();
    v69(v39, v42);

    v43 = v78;
    v44 = v79;
    v45 = [objc_opt_self() mainBundle];
    v80._object = 0x8000000100295F30;
    v46._countAndFlagsBits = 0xD00000000000001ELL;
    v46._object = 0x8000000100295F10;
    v80._countAndFlagsBits = 0xD0000000000000FFLL;
    v47.value._countAndFlagsBits = 0x50726F7265706D45;
    v47.value._object = 0xEE006E6975676E65;
    v48._countAndFlagsBits = 0;
    v48._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v46, v47, v45, v48, v80);

    sub_1000040A8(&qword_100355E48);
    v49 = swift_allocObject();
    *(v49 + 16) = xmmword_100279170;
    *(v49 + 56) = &type metadata for String;
    v50 = sub_1000218DC();
    *(v49 + 32) = v43;
    *(v49 + 40) = v44;
    *(v49 + 96) = &type metadata for String;
    *(v49 + 104) = v50;
    v51 = v63[0];
    *(v49 + 64) = v50;
    *(v49 + 72) = v51;
    *(v49 + 80) = v70;
    String.init(format:_:)();

    return;
  }

  v52 = v78;
  v53 = v79;
  v54 = [objc_opt_self() mainBundle];
  v81._object = 0x8000000100295E40;
  v55._object = 0x8000000100295E20;
  v81._countAndFlagsBits = 0xD0000000000000C4;
  v55._countAndFlagsBits = 0xD00000000000001DLL;
  v56.value._countAndFlagsBits = 0x50726F7265706D45;
  v56.value._object = 0xEE006E6975676E65;
  v57._countAndFlagsBits = 0;
  v57._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v55, v56, v54, v57, v81);

  sub_1000040A8(&qword_100355E48);
  v58 = swift_allocObject();
  *(v58 + 16) = xmmword_100279170;
  *(v58 + 56) = &type metadata for String;
  v59 = sub_1000218DC();
  *(v58 + 64) = v59;
  if (*(v75 + 2))
  {
    v60 = v59;
    v62 = *(v75 + 4);
    v61 = *(v75 + 5);

    *(v58 + 32) = v62;
    *(v58 + 40) = v61;
    *(v58 + 96) = &type metadata for String;
    *(v58 + 104) = v60;
    *(v58 + 72) = v52;
    *(v58 + 80) = v53;
    String.init(format:_:)();

    return;
  }

LABEL_23:
  __break(1u);
}

unint64_t sub_1000218DC()
{
  result = qword_100355E50;
  if (!qword_100355E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100355E50);
  }

  return result;
}

void sub_100021930(uint64_t a1, uint64_t a2)
{
  v74 = a2;
  v73 = sub_1000040A8(&qword_100355E18);
  v3 = *(v73 - 8);
  __chkstk_darwin(v73);
  v5 = &v63 - v4;
  v6 = sub_1000040A8(&qword_100355E20);
  v77 = *(v6 - 8);
  __chkstk_darwin(v6);
  v76 = &v63 - v7;
  v8 = sub_1000040A8(&qword_100355E28);
  v71 = *(v8 - 8);
  v72 = v8;
  v9 = __chkstk_darwin(v8);
  v11 = &v63 - v10;
  v12 = 0;
  v13 = *(a1 + 16);
  v14 = a1 + 112;
  v15 = _swiftEmptyArrayStorage;
LABEL_2:
  v16 = (v14 + 96 * v12);
  while (v13 != v12)
  {
    if (v12 >= v13)
    {
      __break(1u);
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    v17 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      goto LABEL_22;
    }

    v18 = *(v16 - 1);
    v19 = *v16;
    v20 = HIBYTE(*v16) & 0xF;
    if ((*v16 & 0x2000000000000000) == 0)
    {
      v20 = v18 & 0xFFFFFFFFFFFFLL;
    }

    v16 += 12;
    ++v12;
    if (v20)
    {
      v75 = v11;
      v21 = v6;
      v22 = v5;

      v23 = v3;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v15 = sub_10017B338(0, *(v15 + 2) + 1, 1, v15);
      }

      v25 = *(v15 + 2);
      v24 = *(v15 + 3);
      v26 = v15;
      if (v25 >= v24 >> 1)
      {
        v26 = sub_10017B338((v24 > 1), v25 + 1, 1, v15);
      }

      *(v26 + 2) = v25 + 1;
      v15 = v26;
      v27 = &v26[16 * v25];
      *(v27 + 4) = v18;
      *(v27 + 5) = v19;
      v12 = v17;
      v3 = v23;
      v5 = v22;
      v6 = v21;
      v11 = v75;
      goto LABEL_2;
    }
  }

  if (!*(v15 + 2) || !*(v74 + 16))
  {

    return;
  }

  v78 = v74;
  v28 = *(v77 + 104);
  LODWORD(v69) = enum case for ListFormatStyle.ListType.and<A, B>(_:);
  v29 = v77;
  v30 = v76;
  v31 = v11;
  v70 = (v77 + 104);
  v68 = v28;
  v28(v9);
  v32 = *(v3 + 104);
  v66 = enum case for ListFormatStyle.Width.standard<A, B>(_:);
  v33 = v73;
  v67 = v3 + 104;
  v65 = v32;
  v32(v5);
  v75 = v15;
  v34 = sub_1000040A8(&qword_100355E30);
  sub_100009274(&qword_100355E38, &qword_100355E30);
  static FormatStyle.list<A>(type:width:)();
  v64 = *(v3 + 8);
  v64(v5, v33);
  v35 = *(v29 + 8);
  v77 = v29 + 8;
  (v35)(v30, v6);
  v36 = sub_100009274(&qword_100355E40, &qword_100355E28);
  v74 = v34;
  v37 = v31;
  v38 = v72;
  Sequence.formatted<A>(_:)();
  v39 = *(v71 + 8);
  v39(v37, v38);
  if (*(v75 + 2) >= 2uLL)
  {
    v78 = v75;
    v63 = v36;
    v40 = v76;
    v41 = v69;
    v71 = v80;
    v69 = v79;
    (v68)(v76, v41, v6);
    v68 = v35;
    v42 = v73;
    v65(v5, v66, v73);
    v70 = v39;
    static FormatStyle.list<A>(type:width:)();
    v64(v5, v42);
    (v68)(v40, v6);
    Sequence.formatted<A>(_:)();
    v70(v37, v38);

    v43 = v79;
    v44 = v80;
    v45 = [objc_opt_self() mainBundle];
    v81._object = 0x8000000100296160;
    v46._countAndFlagsBits = 0xD00000000000001ALL;
    v46._object = 0x8000000100296140;
    v81._countAndFlagsBits = 0xD000000000000124;
    v47.value._countAndFlagsBits = 0x5072656972726143;
    v47.value._object = 0xED00006E6F656769;
    v48._countAndFlagsBits = 0;
    v48._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v46, v47, v45, v48, v81);

    sub_1000040A8(&qword_100355E48);
    v49 = swift_allocObject();
    *(v49 + 16) = xmmword_100279170;
    *(v49 + 56) = &type metadata for String;
    v50 = sub_1000218DC();
    *(v49 + 32) = v43;
    *(v49 + 40) = v44;
    *(v49 + 96) = &type metadata for String;
    *(v49 + 104) = v50;
    v51 = v69;
    *(v49 + 64) = v50;
    *(v49 + 72) = v51;
    *(v49 + 80) = v71;
    String.init(format:_:)();

    return;
  }

  v52 = v79;
  v53 = v80;
  v54 = [objc_opt_self() mainBundle];
  v82._object = 0x8000000100296050;
  v55._object = 0x8000000100296030;
  v82._countAndFlagsBits = 0xD0000000000000E9;
  v55._countAndFlagsBits = 0xD000000000000019;
  v56.value._countAndFlagsBits = 0x5072656972726143;
  v56.value._object = 0xED00006E6F656769;
  v57._countAndFlagsBits = 0;
  v57._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v55, v56, v54, v57, v82);

  sub_1000040A8(&qword_100355E48);
  v58 = swift_allocObject();
  *(v58 + 16) = xmmword_100279170;
  *(v58 + 56) = &type metadata for String;
  v59 = sub_1000218DC();
  *(v58 + 64) = v59;
  if (*(v75 + 2))
  {
    v60 = v59;
    v62 = *(v75 + 4);
    v61 = *(v75 + 5);

    *(v58 + 32) = v62;
    *(v58 + 40) = v61;
    *(v58 + 96) = &type metadata for String;
    *(v58 + 104) = v60;
    *(v58 + 72) = v52;
    *(v58 + 80) = v53;
    String.init(format:_:)();

    return;
  }

LABEL_23:
  __break(1u);
}

float ConnectionAssistantLocationDot.init(offset:innerRadius:outerRadius:innerColor:outerColor:opacity:)@<S0>(uint64_t a1@<X8>, __n128 a2@<Q0>, float32x2_t a3@<D1>, float32_t a4@<S2>, __n128 a5@<Q3>, __n128 a6@<Q4>, float a7@<S5>)
{
  a3.f32[1] = a4;
  __asm { FMOV            V2.2S, #10.0 }

  *a1 = a2;
  *(a1 + 16) = vdiv_f32(vrnda_f32(vmul_f32(a3, _D2)), _D2);
  result = roundf(a7 * 1000.0) / 1000.0;
  *(a1 + 32) = a5;
  *(a1 + 48) = a6;
  *(a1 + 64) = result;
  return result;
}

__n128 sub_1000221A0(uint64_t a1, SEL *a2, float32x4_t *a3)
{
  v4 = [objc_opt_self() *a2];
  v11 = 0.0;
  v12 = 0.0;
  v9 = 0.0;
  v10 = 0.0;
  [v4 getRed:&v12 green:&v11 blue:&v10 alpha:&v9];
  v5.f64[0] = v12;
  v6.f64[0] = v10;
  v5.f64[1] = v11;
  v6.f64[1] = v9;
  v8 = vcvt_hight_f32_f64(vcvt_f32_f64(v5), v6);

  result = v8;
  *a3 = v8;
  return result;
}

__n128 sub_100022248()
{
  v0 = objc_allocWithZone(UIColor);
  aBlock[4] = sub_100022370;
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000225E8;
  aBlock[3] = &unk_100326CC0;
  v1 = _Block_copy(aBlock);
  v2 = [v0 initWithDynamicProvider:v1];
  _Block_release(v1);

  aBlock[0] = 0;
  v9 = 0.0;
  v10 = 0.0;
  v8 = 0.0;
  [v2 getRed:aBlock green:&v10 blue:&v9 alpha:&v8];
  *&v3.f64[0] = aBlock[0];
  v4.f64[0] = v9;
  v3.f64[1] = v10;
  v4.f64[1] = v8;
  v6 = vcvt_hight_f32_f64(vcvt_f32_f64(v3), v4);

  result = v6;
  xmmword_100381B30 = v6;
  return result;
}

id sub_100022370(void *a1)
{
  if ([a1 userInterfaceStyle] == 2)
  {
    v1 = UITraitCollection.modifyingTraits(_:)();
    v2 = [objc_opt_self() systemGray2Color];
    v3 = [v2 resolvedColorWithTraitCollection:v1];

    return v3;
  }

  else
  {
    v5 = [objc_opt_self() systemGrayColor];

    return v5;
  }
}

uint64_t ConnectionAssistantLocationDot.project(from:camera:)(uint64_t a1, float32x4_t a2)
{
  v4 = vaddq_f32(*v2, a2);
  v4.i32[3] = 0;
  ConnectionAssistantCamera.projectUV(point:)(v4);
  if (v6)
  {
    return 0;
  }

  v7 = v5;
  vmul_n_f32(*(v2 + 16), ConnectionAssistantCamera.Viewport.normalizedPointSize.getter(*a1, *(a1 + 8), *(a1 + 16)));
  return v7;
}

BOOL sub_10002258C(float32x4_t *a1, float32x4_t *a2)
{
  v2 = a1[3];
  v7[2] = a1[2];
  v7[3] = v2;
  v8 = a1[4].i32[0];
  v3 = a1[1];
  v7[0] = *a1;
  v7[1] = v3;
  v4 = a2[3];
  v9[2] = a2[2];
  v9[3] = v4;
  v10 = a2[4].i32[0];
  v5 = a2[1];
  v9[0] = *a2;
  v9[1] = v5;
  return _s8SOSBuddy30ConnectionAssistantLocationDotV23__derived_struct_equalsySbAC_ACtFZ_0(v7, v9);
}

id sub_1000225E8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v5 = v3();

  return v5;
}

BOOL _s8SOSBuddy30ConnectionAssistantLocationDotV23__derived_struct_equalsySbAC_ACtFZ_0(float32x4_t *a1, float32x4_t *a2)
{
  v2 = vmovn_s32(vceqq_f32(*a1, *a2));
  if (v2.i8[0] & 1) != 0 && (v2.i16[1] & v2.i16[2] & 1) != 0 && a1[1].f32[0] == a2[1].f32[0] && a1[1].f32[1] == a2[1].f32[1] && (v3 = vmovn_s32(vceqq_f32(a1[2], a2[2])), (v3.i16[0] & v3.i16[1]) && (v3.i16[2] & v3.i16[3] & 1) != 0 && (v4 = vmovn_s32(vceqq_f32(a1[3], a2[3])), (v4.i16[0] & v4.i16[1]) && (v4.i16[2] & v4.i16[3])
  {
    return a1[4].f32[0] == a2[4].f32[0];
  }

  else
  {
    return 0;
  }
}

__n128 sub_100022714(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_100022738(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 68))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100022758(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
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

  *(result + 68) = v3;
  return result;
}

__n128 sub_1000227A8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 12) = *(a2 + 12);
  *a1 = result;
  return result;
}

uint64_t sub_1000227BC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 28))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000227DC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
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

  *(result + 28) = v3;
  return result;
}

uint64_t sub_10002281C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100022834(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t ConnectionAssistantStarsRenderer.__allocating_init(device:buffers:renderPipelines:)(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  ConnectionAssistantStarsRenderer.init(device:buffers:renderPipelines:)(a1, a2, a3);
  return v6;
}

uint64_t ConnectionAssistantStarsRenderer.init(device:buffers:renderPipelines:)(void *a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 64) = 0u;
  *(v3 + 80) = 0u;
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  *(v3 + 32) = a3;
  swift_unknownObjectRetain_n();

  v5 = [a1 newBufferWithLength:64 options:1];
  if (v5 && (swift_unknownObjectRelease(), *(v3 + 40) = v5, (v6 = [swift_unknownObjectRetain() newBufferWithLength:96 options:1]) != 0))
  {
    v7 = v6;
    swift_unknownObjectRelease();
    *(v3 + 48) = v7;
    v8 = [a1 newBufferWithLength:4 options:1];
    if (v8)
    {
      v9 = v8;
      swift_unknownObjectRelease();

      *(v3 + 56) = v9;
      return v3;
    }

    sub_100022AD4();
    swift_allocError();
    swift_willThrow();

    v10 = 1;
  }

  else
  {
    sub_100022AD4();
    swift_allocError();
    swift_willThrow();

    swift_unknownObjectRelease();
    v10 = 0;
  }

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  if (v5)
  {
    swift_unknownObjectRelease();
  }

  if (v10)
  {
    swift_unknownObjectRelease();
  }

  sub_100022B28(*(v3 + 64), *(v3 + 72));
  type metadata accessor for ConnectionAssistantStarsRenderer();
  swift_deallocPartialClassInstance();
  return v3;
}

unint64_t sub_100022AD4()
{
  result = qword_100355E60;
  if (!qword_100355E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100355E60);
  }

  return result;
}

uint64_t sub_100022B28(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    swift_unknownObjectRelease();

    return swift_unknownObjectRelease();
  }

  return result;
}

id *sub_100022B90(id *result, uint64_t *a2)
{
  v2 = *a2;
  if ((*a2 * 96) >> 64 == (96 * *a2) >> 63)
  {
    v3 = [result[2] newBufferWithLength:? options:?];
    if (!v3)
    {
      sub_100022AD4();
      swift_allocError();
      swift_willThrow();
      return v3;
    }

    v4 = [swift_unknownObjectRetain() contents];
    result = v3;
    if ((v2 & 0x8000000000000000) == 0)
    {
      for (; v2; --v2)
      {
        ConnectionAssistantStars.makeStar()(v8);
        v5 = v8[3];
        v4[2] = v8[2];
        v4[3] = v5;
        v6 = v8[5];
        v4[4] = v8[4];
        v4[5] = v6;
        v7 = v8[1];
        *v4 = v8[0];
        v4[1] = v7;
        v4 += 6;
      }

      return v3;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_100022C90(uint64_t a1, uint64_t a2, const mach_header_64 **a3)
{
  if ((a2 - 0x800000000000000) >> 60 != 15)
  {
    goto LABEL_13;
  }

  v3 = [*(a1 + 16) newBufferWithLength:16 * a2 options:1];
  if (v3)
  {
    v5 = [swift_unknownObjectRetain() contents];
    v7 = v3;
    v4 = *a3;
    if ((v4 & 0x8000000000000000) != 0)
    {
      goto LABEL_14;
    }

    if (v4)
    {
      if (qword_100353AE8 != -1)
      {
        goto LABEL_15;
      }

      while (1)
      {
        v8 = 0;
        v9 = static ConnectionAssistantRenderer.Buffers.texCoords;
        v10 = qword_100381F08;
        v11 = qword_100381F10;
        v12 = qword_100381F18;
        v13 = v5 + 48;
        while (v8 != &_mh_execute_header)
        {
          *(v13 - 12) = v8;
          *(v13 - 8) = v8;
          *(v13 - 4) = v8;
          *v13 = v8;
          *(v13 + 4) = v8;
          *(v13 + 8) = v8;
          *(v13 - 5) = v9;
          *(v13 - 3) = v10;
          *(v13 - 1) = v11;
          *(v13 + 1) = v10;
          *(v13 + 3) = v11;
          *(v13 + 5) = v12;
          v13 += 96;
          v8 = (v8 + 1);
          if (v4 == v8)
          {
            return v3;
          }
        }

        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
LABEL_15:
        swift_once();
      }
    }
  }

  else
  {
    sub_100022AD4();
    swift_allocError();
    swift_willThrow();
  }

  return v3;
}

uint64_t ConnectionAssistantStarsRenderer.compute(dt:stars:computeCommandEncoder:)(uint64_t a1, void *a2, double a3)
{
  v7 = *(v3 + 64);
  v8 = *(v3 + 72);
  v9 = *a1;
  sub_1000231A8(v7, v8);
  result = sub_100022B28(v7, v8);
  if (v8)
  {
    v11 = v9 == v7;
  }

  else
  {
    v11 = 0;
  }

  if (!v11)
  {
    result = sub_100022B90(v3, a1);
    if ((v9 * 6) >> 64 != (6 * v9) >> 63)
    {
LABEL_39:
      __break(1u);
      return result;
    }

    v12 = result;
    v13 = sub_100022C90(v3, 6 * v9, a1);
    v15 = *(v3 + 64);
    v14 = *(v3 + 72);
    *(v3 + 64) = v9;
    *(v3 + 72) = v12;
    *(v3 + 80) = 6 * v9;
    *(v3 + 88) = v13;
    result = sub_100022B28(v15, v14);
  }

  v16 = *(v3 + 72);
  if (!v16)
  {
    return result;
  }

  v17 = *(v3 + 64);
  if ((v17 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_31;
  }

  if (HIDWORD(v17))
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (*(a1 + 72))
  {
    v18 = 0;
    v34 = 0;
    v35 = 0u;
    v33 = 0u;
  }

  else
  {
    v18 = *(a1 + 48);
    v35 = *(a1 + 16);
    v33 = *(a1 + 32);
    v34 = *(a1 + 52);
  }

  v19 = a3;
  v20 = *(v3 + 40);
  swift_unknownObjectRetain();
  sub_1000231A8(v17, v16);
  v21 = [v20 contents];
  v22 = v20;
  *v21 = v17;
  v21[1] = v19;
  v21[2] = 0.99;
  *(v21 + 1) = v35;
  *(v21 + 2) = v33;
  *(v21 + 12) = v18;
  *(v21 + 7) = v34;
  v23 = ConnectionAssistantRenderer.RenderPipelines.starKernelPipelineState.getter();
  if (v23)
  {
    v24 = v23;
    v25 = String._bridgeToObjectiveC()();
    [a2 setLabel:v25];

    [a2 setComputePipelineState:v24];
    [a2 setBuffer:v20 offset:0 atIndex:0];
    [a2 setBuffer:v16 offset:0 atIndex:1];
    v26 = [v24 threadExecutionWidth];
    v27 = [v24 maxTotalThreadsPerThreadgroup];
    result = [v24 threadExecutionWidth];
    if (result)
    {
      if (v27 == 0x8000000000000000 && result == -1)
      {
        goto LABEL_37;
      }

      v28 = v26 * (v27 / result);
      if ((v26 * (v27 / result)) >> 64 == v28 >> 63)
      {
        v29 = v17 + v28;
        if (!__OFADD__(v17, v28))
        {
          v30 = __OFSUB__(v29, 1);
          v31 = v29 - 1;
          if (!v30)
          {
            if (v28)
            {
              if (v31 != 0x8000000000000000 || v28 != -1)
              {
                v38 = v31 / v28;
                v39 = vdupq_n_s64(1uLL);
                v36 = v26 * (v27 / result);
                v37 = v39;
                [a2 dispatchThreadgroups:&v38 threadsPerThreadgroup:&v36];
                swift_unknownObjectRelease();
                swift_unknownObjectRelease();
                return swift_unknownObjectRelease();
              }

              goto LABEL_38;
            }

            goto LABEL_36;
          }

LABEL_35:
          __break(1u);
LABEL_36:
          __break(1u);
LABEL_37:
          __break(1u);
LABEL_38:
          __break(1u);
          goto LABEL_39;
        }

LABEL_34:
        __break(1u);
        goto LABEL_35;
      }

LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  swift_unknownObjectRelease();

  return swift_unknownObjectRelease();
}

uint64_t sub_1000231A8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    swift_unknownObjectRetain();

    return swift_unknownObjectRetain();
  }

  return result;
}

void ConnectionAssistantStarsRenderer.render(stars:camera:origin:opacity:renderCommandEncoder:)(__n128 a1, float a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = v5[9];
  if (v6)
  {
    v11 = v5[10];
    v10 = v5[11];
    v12 = v5[7];
    sub_1000231A8(v5[8], v6);
    v13 = [swift_unknownObjectRetain() contents];
    v14 = v12;
    *v13 = a2;
    v15 = *a4;
    v16 = *(a4 + 8);
    v17 = 1.0;
    LODWORD(v18) = 1.0;
    if (*a4)
    {
      LODWORD(v18) = 1.0;
      if (v16)
      {
        v19 = v15 / v16;
        v17 = fminf(v19, 1.0);
        *&v18 = fmaxf(v19, 1.0);
      }
    }

    *(&v18 + 1) = 1.0 / v17;
    v31 = v18;
    v20 = ConnectionAssistantCamera.Viewport.normalizedPointSize.getter(v15, v16, *(a4 + 16));
    v29 = *(a4 + 336);
    v30 = *(a4 + 320);
    v27 = *(a4 + 368);
    v28 = *(a4 + 352);
    v21 = v5[6];
    v22 = [swift_unknownObjectRetain() contents];
    v23 = v21;
    *v22 = a1;
    *(v22 + 2) = v31;
    v22[6] = v20;
    *(v22 + 2) = v30;
    *(v22 + 3) = v29;
    *(v22 + 4) = v28;
    *(v22 + 5) = v27;
    v24 = sub_100254A80(0);
    if (v24)
    {
      v25 = v24;
      v26 = String._bridgeToObjectiveC()();
      [a5 setLabel:v26];

      [a5 setRenderPipelineState:v25];
      [a5 setVertexBuffer:v21 offset:0 atIndex:0];
      [a5 setVertexBuffer:v6 offset:0 atIndex:1];
      [a5 setVertexBuffer:v10 offset:0 atIndex:2];
      [a5 setFragmentBuffer:v12 offset:0 atIndex:0];
      [a5 drawPrimitives:3 vertexStart:0 vertexCount:v11];
      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
  }
}

uint64_t ConnectionAssistantStarsRenderer.deinit()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  sub_100022B28(*(v0 + 64), *(v0 + 72));
  return v0;
}

uint64_t ConnectionAssistantStarsRenderer.__deallocating_deinit()
{
  ConnectionAssistantStarsRenderer.deinit();

  return swift_deallocClassInstance();
}

void *sub_1000234E8()
{
  v1 = v0;
  v2 = sub_1000040A8(&unk_10035CF50);
  __chkstk_darwin(v2 - 8);
  v4 = v31 - v3;
  v5 = sub_1000040A8(&qword_1003560A0);
  v37 = *(v5 - 8);
  __chkstk_darwin(v5);
  v35 = v31 - v6;
  v0[4] = 0;
  type metadata accessor for TimerBasedHysteresisScheduler();
  v7 = swift_allocObject();
  sub_1000040A8(&qword_1003560A8);
  v8 = swift_allocObject();
  v1[5] = sub_1000263A8(v7, 0x724765685466666FLL, 0xEE0065646F4D6469, sub_100024974, 0, v8);
  if (_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
  {
    v9 = sub_100233B1C(_swiftEmptyArrayStorage);
  }

  else
  {
    v9 = &_swiftEmptySetSingleton;
  }

  v1[6] = v9;
  v36 = v1 + 6;
  v10 = sub_1000040A8(&unk_100365610);
  swift_allocObject();
  v1[2] = PassthroughSubject.init()();
  v11 = v10;
  swift_allocObject();
  v1[3] = PassthroughSubject.init()();
  v12 = qword_100353A10;
  swift_retain_n();
  if (v12 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_10000F53C(v13, qword_100381C80);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v38[0] = v17;
    *v16 = 136446210;
    v39 = v1;
    type metadata accessor for OffTheGridModel();

    v18 = String.init<A>(describing:)();
    v20 = sub_10017C9E8(v18, v19, v38);

    *(v16 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v14, v15, "init: %{public}s", v16, 0xCu);
    sub_100008964(v17);
  }

  v38[0] = *(v1[5] + 16);
  sub_10000F574();

  v21 = static OS_dispatch_queue.main.getter();
  v39 = v21;
  v33 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  v22 = *(v33 - 8);
  v32 = *(v22 + 56);
  v34 = v22 + 56;
  v23 = v4;
  v32(v4, 1, 1, v33);
  v31[3] = sub_100009274(&qword_10035CF60, &unk_100365610);
  v24 = sub_10002683C();
  v31[1] = v11;
  v31[2] = v24;
  v25 = v35;
  Publisher.receive<A>(on:options:)();
  sub_100026894(v23);

  v26 = swift_allocObject();
  *(v26 + 16) = sub_1000268FC;
  *(v26 + 24) = v1;
  v31[0] = sub_100009274(&qword_10035CF70, &qword_1003560A0);
  swift_retain_n();
  Publisher<>.sink(receiveValue:)();

  v37 = *(v37 + 8);
  (v37)(v25, v5);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v38[0] = *(v1[5] + 24);

  v27 = v5;
  v28 = static OS_dispatch_queue.main.getter();
  v39 = v28;
  v32(v23, 1, 1, v33);
  Publisher.receive<A>(on:options:)();
  sub_100026894(v23);

  v29 = swift_allocObject();
  *(v29 + 16) = sub_100026944;
  *(v29 + 24) = v1;
  Publisher<>.sink(receiveValue:)();

  (v37)(v25, v27);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  return v1;
}

uint64_t sub_100023B70()
{
  sub_1000040A8(&unk_100365610);
  sub_100009274(&qword_10035CF00, &unk_100365610);
  return Subject<>.send()();
}

uint64_t sub_100023BEC()
{
  sub_1000040A8(&unk_100365610);
  sub_100009274(&qword_10035CF00, &unk_100365610);
  return Subject<>.send()();
}

uint64_t sub_100023C68()
{
}

uint64_t sub_100023CA0()
{
  v1 = v0;
  if (qword_100353A10 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000F53C(v2, qword_100381C80);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136446210;
    type metadata accessor for OffTheGridModel();

    v7 = String.init<A>(describing:)();
    v9 = sub_10017C9E8(v7, v8, &v11);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "deinit: %{public}s", v5, 0xCu);
    sub_100008964(v6);
  }

  return v1;
}

uint64_t sub_100023E3C()
{
  sub_100023CA0();

  return swift_deallocClassInstance();
}

void sub_100023E94()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10000F574();
  *v5 = static OS_dispatch_queue.main.getter();
  (*(v3 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v2);
  v6 = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v5, v2);
  if (v6)
  {
    if (qword_100353A70 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v7 = type metadata accessor for Logger();
  sub_10000F53C(v7, qword_100381DA0);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "start", v10, 2u);
  }

  v11 = swift_allocObject();
  swift_weakInit();
  v12 = objc_allocWithZone(type metadata accessor for IdentityServicesAgent());
  v13 = sub_10022C914(sub_1000269AC, v11);
  if (sub_10022D160())
  {
    v14 = *(v1 + 32);
    *(v1 + 32) = v13;
  }

  else
  {
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "Failed to start IdentityServicesAgent", v16, 2u);
    }
  }
}

uint64_t sub_100024144(int a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {

    sub_100024A90(a1);
  }

  return result;
}

uint64_t sub_1000241C0()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10000F574();
  *v5 = static OS_dispatch_queue.main.getter();
  (*(v3 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v2);
  v6 = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v5, v2);
  if (v6)
  {
    if (qword_100353A70 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v7 = type metadata accessor for Logger();
  sub_10000F53C(v7, qword_100381DA0);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "stop", v10, 2u);
  }

  v11 = *(v1 + 32);
  if (v11)
  {
    v12 = v11;
    sub_10022DC30();

    v11 = *(v1 + 32);
  }

  *(v1 + 32) = 0;

  sub_100200074();
}

uint64_t sub_1000243C4(char a1, int a2, uint64_t a3)
{
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = (&v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10000F574();
  *v9 = static OS_dispatch_queue.main.getter();
  (*(v7 + 104))(v9, enum case for DispatchPredicate.onQueue(_:), v6);
  v10 = _dispatchPreconditionTest(_:)();
  (*(v7 + 8))(v9, v6);
  if (v10)
  {
    if (qword_100353A70 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v11 = type metadata accessor for Logger();
  sub_10000F53C(v11, qword_100381DA0);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 67109120;
    *(v14 + 4) = a1 & 1;
    _os_log_impl(&_mh_execute_header, v12, v13, "setOffTheGridMode: on - %{BOOL}d", v14, 8u);
  }

  v15 = *(a3 + 32);
  if (v15)
  {
    v16 = swift_allocObject();
    swift_weakInit();
    v17 = swift_allocObject();
    v17[2] = v16;
    v17[3] = sub_10017E7D4;
    v17[4] = 0;
    v18 = v15;

    sub_10022DFD0(a1 & 1, a2, sub_100026344, v17);
  }

  else
  {
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v20, v21, "agent is not started, ignoring setOffTheGridMode request", v22, 2u);
    }

    return sub_10017E7D4();
  }
}

uint64_t sub_1000246C4(int a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = (v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10000F574();
  *v8 = static OS_dispatch_queue.main.getter();
  (*(v6 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v5);
  v9 = _dispatchPreconditionTest(_:)();
  (*(v6 + 8))(v8, v5);
  if (v9)
  {
    if (qword_100353A70 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v10 = type metadata accessor for Logger();
  sub_10000F53C(v10, qword_100381DA0);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v21[0] = v14;
    *v13 = 136315138;
    v20[3] = a1;
    sub_1000040A8(&qword_100356098);
    v15 = String.init<A>(describing:)();
    v17 = sub_10017C9E8(v15, v16, v21);

    *(v13 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v11, v12, "offTheGridMode set to: %s", v13, 0xCu);
    sub_100008964(v14);
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {

    sub_100024A90(a1);
  }

  return a3(Strong);
}

uint64_t sub_100024974(_BYTE *a1, _WORD *a2)
{
  if (*a1 == 2 || *a2 == 2)
  {
    return 0;
  }

  else
  {
    return 0x3FE0000000000000;
  }
}

uint64_t sub_100024998(int a1)
{
  v2 = a1;
  v3 = *(v1 + 123);
  if (*(v1 + 123) == 2)
  {
    if (a1 == 2)
    {
      goto LABEL_8;
    }

LABEL_7:
    sub_1000040A8(&unk_100365610);
    sub_100009274(&qword_10035CF00, &unk_100365610);
    Subject<>.send()();
    goto LABEL_8;
  }

  if (a1 == 2 || ((v3 ^ a1) & 1) != 0 || ((a1 & 0x100) == 0) == (v3 & 0x100) >> 8)
  {
    goto LABEL_7;
  }

LABEL_8:
  *(v1 + 123) = v2;

  return sub_1002006DC(v3);
}

void sub_100024A90(int a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = a1;
  sub_10000F574();
  *v7 = static OS_dispatch_queue.main.getter();
  (*(v5 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v4);
  v8 = _dispatchPreconditionTest(_:)();
  (*(v5 + 8))(v7, v4);
  if (v8)
  {
    sub_100024998(a1);
    v9 = *(v2 + 80);
    v18[0] = *(v2 + 136);
    v10 = v9(v18, &v19);
    if (v11)
    {
      v12 = *(v2 + 136);
      sub_100200F20(a1);
      *(v2 + 136) = a1;
      sub_100201278(v12);
    }

    else
    {
      v13 = v10;
      swift_beginAccess();
      if (*(v2 + 104) == 1)
      {
        *(v2 + 96) = v13;
        *(v2 + 104) = 0;
        *(v2 + 112) = 0;
        *(v2 + 120) = a1;
        sub_100025BB4();
      }

      else
      {
        v15 = sub_10020063C();
        if (v14[1] != 1)
        {
          *v14 = v13;
        }

        (v15)(v18, 0);
        v17 = sub_10020063C();
        if (*(v16 + 8) != 1)
        {
          *(v16 + 24) = a1;
        }

        (v17)(v18, 0);
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_100024CAC(int a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v19[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = a1;
  sub_10000F574();
  *v7 = static OS_dispatch_queue.main.getter();
  (*(v5 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v4);
  v8 = _dispatchPreconditionTest(_:)();
  (*(v5 + 8))(v7, v4);
  if ((v8 & 1) == 0)
  {
    __break(1u);
    return;
  }

  v9 = *(v2 + 122);
  if (v9 == 2)
  {
    if (a1 == 2)
    {
      goto LABEL_8;
    }

LABEL_7:
    sub_1000040A8(&unk_100365610);
    sub_100009274(&qword_10035CF00, &unk_100365610);
    Subject<>.send()();
    goto LABEL_8;
  }

  if (a1 == 2 || ((v9 ^ a1) & 1) != 0)
  {
    goto LABEL_7;
  }

LABEL_8:
  *(v2 + 122) = a1;
  sub_1002009B0(v9);
  v10 = *(v2 + 80);
  v19[0] = *(v2 + 136);
  v11 = v10(v19, &v20);
  if (v12)
  {
    v13 = *(v2 + 136);
    sub_100201028(a1);
    *(v2 + 136) = a1;
    sub_10020154C(v13);
  }

  else
  {
    v14 = v11;
    swift_beginAccess();
    if (*(v2 + 104) == 1)
    {
      *(v2 + 96) = v14;
      *(v2 + 104) = 0;
      *(v2 + 112) = 0;
      *(v2 + 120) = a1;
      sub_100025F4C(sub_10020068C, &unk_100326E98, sub_10002697C, sub_1000269B8);
    }

    else
    {
      v16 = sub_10020068C();
      if (v15[1] != 1)
      {
        *v15 = v14;
      }

      (v16)(v19, 0);
      v18 = sub_10020068C();
      if (*(v17 + 8) != 1)
      {
        *(v17 + 24) = a1;
      }

      (v18)(v19, 0);
    }
  }
}

void sub_100024F9C(unsigned __int8 a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v19[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = a1;
  sub_10000F574();
  *v7 = static OS_dispatch_queue.main.getter();
  (*(v5 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v4);
  v8 = _dispatchPreconditionTest(_:)();
  (*(v5 + 8))(v7, v4);
  if ((v8 & 1) == 0)
  {
    __break(1u);
    return;
  }

  v9 = *(v2 + 122);
  if (v9 != 9)
  {
    if (v9 == a1)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (a1 != 9)
  {
LABEL_6:
    sub_1000040A8(&unk_100365610);
    sub_100009274(&qword_10035CF00, &unk_100365610);
    Subject<>.send()();
  }

LABEL_7:
  *(v2 + 122) = a1;
  sub_100200C70(v9);
  v10 = *(v2 + 80);
  v19[0] = *(v2 + 136);
  v11 = v10(v19, &v20);
  if (v12)
  {
    v13 = *(v2 + 136);
    sub_100201158(a1);
    *(v2 + 136) = a1;
    sub_10020180C(v13);
  }

  else
  {
    v14 = v11;
    swift_beginAccess();
    if (*(v2 + 104) == 1)
    {
      *(v2 + 96) = v14;
      *(v2 + 104) = 0;
      *(v2 + 112) = 0;
      *(v2 + 120) = a1;
      sub_100025F4C(sub_10020068C, &unk_100326E70, sub_10002694C, sub_1000269B8);
    }

    else
    {
      v16 = sub_10020068C();
      if (v15[1] != 1)
      {
        *v15 = v14;
      }

      (v16)(v19, 0);
      v18 = sub_10020068C();
      if (*(v17 + 8) != 1)
      {
        *(v17 + 24) = a1;
      }

      (v18)(v19, 0);
    }
  }
}

void sub_100025284()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10000F574();
  *v5 = static OS_dispatch_queue.main.getter();
  (*(v3 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v2);
  v6 = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v5, v2);
  if (v6)
  {
    swift_beginAccess();
    v7 = *(v1 + 96);
    v8 = *(v1 + 104);
    if (v8 == 1)
    {
      v9 = 2;
    }

    else
    {
      v9 = *(v1 + 120);
    }

    sub_100026394(*(v1 + 96), *(v1 + 104));
    sub_100026380(v7, v8);
    v10 = *(v1 + 136);
    sub_100200F20(v9);
    *(v1 + 136) = v9;
    sub_100201278(v10);
    v11 = *(v1 + 96);
    v12 = *(v1 + 104);
    *(v1 + 96) = xmmword_100279380;
    *(v1 + 112) = 0;
    *(v1 + 120) = 0;
    sub_100026380(v11, v12);
    if (qword_100353A10 == -1)
    {
      goto LABEL_6;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_6:
  v13 = type metadata accessor for Logger();
  sub_10000F53C(v13, qword_100381C80);

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *v16 = 136446466;
    *(v16 + 4) = sub_10017C9E8(*(v1 + 64), *(v1 + 72), &v21);
    *(v16 + 12) = 2082;
    v20[7] = *(v1 + 136);
    sub_1000040A8(&qword_100356098);
    v17 = String.init<A>(describing:)();
    v19 = sub_10017C9E8(v17, v18, &v21);

    *(v16 + 14) = v19;
    _os_log_impl(&_mh_execute_header, v14, v15, "%{public}s hysteresis timer expired, settling in %{public}s state", v16, 0x16u);
    swift_arrayDestroy();
  }
}

void sub_100025594()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_10000F574();
  *v5 = static OS_dispatch_queue.main.getter();
  (*(v3 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v2);
  v6 = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v5, v2);
  if (v6)
  {
    swift_beginAccess();
    v7 = *(v1 + 96);
    v8 = *(v1 + 104);
    if (v8 == 1)
    {
      v9 = 2;
    }

    else
    {
      v9 = *(v1 + 120);
    }

    sub_100026394(*(v1 + 96), *(v1 + 104));
    sub_100026380(v7, v8);
    v10 = *(v1 + 136);
    sub_100201028(v9);
    *(v1 + 136) = v9;
    sub_10020154C(v10);
    v11 = *(v1 + 96);
    v12 = *(v1 + 104);
    *(v1 + 96) = xmmword_100279380;
    *(v1 + 112) = 0;
    *(v1 + 120) = 0;
    sub_100026380(v11, v12);
    if (qword_100353A10 == -1)
    {
      goto LABEL_6;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_6:
  v13 = type metadata accessor for Logger();
  sub_10000F53C(v13, qword_100381C80);

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *v16 = 136446466;
    *(v16 + 4) = sub_10017C9E8(*(v1 + 64), *(v1 + 72), &v21);
    *(v16 + 12) = 2082;
    v20[15] = *(v1 + 136);
    sub_1000040A8(&unk_1003655D0);
    v17 = String.init<A>(describing:)();
    v19 = sub_10017C9E8(v17, v18, &v21);

    *(v16 + 14) = v19;
    _os_log_impl(&_mh_execute_header, v14, v15, "%{public}s hysteresis timer expired, settling in %{public}s state", v16, 0x16u);
    swift_arrayDestroy();
  }
}

void sub_1000258A4()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_10000F574();
  *v5 = static OS_dispatch_queue.main.getter();
  (*(v3 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v2);
  v6 = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v5, v2);
  if (v6)
  {
    swift_beginAccess();
    v7 = *(v1 + 96);
    v8 = *(v1 + 104);
    if (v8 == 1)
    {
      v9 = 9;
    }

    else
    {
      v9 = *(v1 + 120);
    }

    sub_100026394(*(v1 + 96), *(v1 + 104));
    sub_100026380(v7, v8);
    v10 = *(v1 + 136);
    sub_100201158(v9);
    *(v1 + 136) = v9;
    sub_10020180C(v10);
    v11 = *(v1 + 96);
    v12 = *(v1 + 104);
    *(v1 + 96) = xmmword_100279380;
    *(v1 + 112) = 0;
    *(v1 + 120) = 0;
    sub_100026380(v11, v12);
    if (qword_100353A10 == -1)
    {
      goto LABEL_6;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_6:
  v13 = type metadata accessor for Logger();
  sub_10000F53C(v13, qword_100381C80);

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *v16 = 136446466;
    *(v16 + 4) = sub_10017C9E8(*(v1 + 64), *(v1 + 72), &v21);
    *(v16 + 12) = 2082;
    v20[15] = *(v1 + 136);
    sub_1000040A8(&qword_1003560B8);
    v17 = String.init<A>(describing:)();
    v19 = sub_10017C9E8(v17, v18, &v21);

    *(v16 + 14) = v19;
    _os_log_impl(&_mh_execute_header, v14, v15, "%{public}s hysteresis timer expired, settling in %{public}s state", v16, 0x16u);
    swift_arrayDestroy();
  }
}

void sub_100025BB4()
{
  v2 = v0;
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (&v20[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10000F574();
  *v6 = static OS_dispatch_queue.main.getter();
  (*(v4 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v3);
  v7 = _dispatchPreconditionTest(_:)();
  (*(v4 + 8))(v6, v3);
  if ((v7 & 1) == 0)
  {
    __break(1u);
LABEL_13:
    swift_once();
LABEL_8:
    v14 = type metadata accessor for Logger();
    sub_10000F53C(v14, qword_100381C80);

    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v20[0] = v18;
      *v17 = 136446210;
      *(v17 + 4) = sub_10017C9E8(*(v2 + 64), *(v2 + 72), v20);
      _os_log_impl(&_mh_execute_header, v15, v16, "%{public}s hysteresis is not suspended and pending, scheduled hysteresis event", v17, 0xCu);
      sub_100008964(v18);
    }

    sub_100026380(v1, v3);

    return;
  }

  v8 = *(v2 + 122);
  if (v8 == 2 || (v8 & 1) == 0)
  {
    swift_beginAccess();
    v3 = *(v2 + 104);
    if (v3 != 1)
    {
      v1 = *(v2 + 96);
      swift_unknownObjectRetain();
      v10 = sub_10020063C();
      if (*(v9 + 8) != 1)
      {
        v11 = v9;
        v12 = swift_allocObject();
        swift_weakInit();
        type metadata accessor for TimerBasedHysteresisSchedulerEvent();
        swift_allocObject();

        v13 = sub_10022A5A0(sub_100026350, v12, *&v1);

        *(v11 + 8) = v13;
        *(v11 + 16) = &off_100339848;
        swift_unknownObjectRelease();
      }

      (v10)(v20, 0);
      if (qword_100353A10 == -1)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }
  }
}

void sub_100025F4C(uint64_t (*a1)(uint64_t *), uint64_t a2, uint64_t a3, void (*a4)(void, uint64_t, uint64_t, void))
{
  v9 = v4;
  v10 = type metadata accessor for DispatchPredicate();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = (&v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10000F574();
  *v13 = static OS_dispatch_queue.main.getter();
  (*(v11 + 104))(v13, enum case for DispatchPredicate.onQueue(_:), v10);
  v14 = _dispatchPreconditionTest(_:)();
  (*(v11 + 8))(v13, v10);
  if ((v14 & 1) == 0)
  {
    __break(1u);
LABEL_13:
    swift_once();
LABEL_8:
    v21 = type metadata accessor for Logger();
    sub_10000F53C(v21, qword_100381C80);

    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v29[0] = v25;
      *v24 = 136446210;
      *(v24 + 4) = sub_10017C9E8(*(v9 + 64), *(v9 + 72), v29);
      _os_log_impl(&_mh_execute_header, v22, v23, "%{public}s hysteresis is not suspended and pending, scheduled hysteresis event", v24, 0xCu);
      sub_100008964(v25);
    }

    a4(*&v5, v10, v27, v28);

    return;
  }

  v15 = *(v9 + 121);
  if (v15 == 2 || (v15 & 1) == 0)
  {
    swift_beginAccess();
    v10 = *(v9 + 104);
    if (v10 != 1)
    {
      v5 = *(v9 + 96);
      v27 = *(v9 + 112);
      v28 = *(v9 + 120);
      swift_unknownObjectRetain();
      v17 = a1(v29);
      if (*(v16 + 8) != 1)
      {
        v18 = v16;
        v19 = swift_allocObject();
        swift_weakInit();
        type metadata accessor for TimerBasedHysteresisSchedulerEvent();
        swift_allocObject();

        v20 = sub_10022A5A0(a3, v19, v5);

        *(v18 + 8) = v20;
        *(v18 + 16) = &off_100339848;
        swift_unknownObjectRelease();
      }

      v17(v29, 0);
      if (qword_100353A10 == -1)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }
  }
}

uint64_t sub_1000262A8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    a4();
  }

  return result;
}

uint64_t sub_100026308()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100026380(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_100026394(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
    return swift_unknownObjectRetain();
  }

  return result;
}

uint64_t sub_1000263A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1000040A8(&unk_100365610);
  swift_allocObject();
  *(a6 + 16) = PassthroughSubject.init()();
  swift_allocObject();
  *(a6 + 24) = PassthroughSubject.init()();
  sub_1000040A8(&qword_1003560B0);
  swift_allocObject();
  *(a6 + 32) = PassthroughSubject.init()();
  swift_allocObject();
  v12 = PassthroughSubject.init()();
  *(a6 + 122) = 2;
  *(a6 + 123) = 2;
  *(a6 + 136) = 2;
  *(a6 + 96) = xmmword_100279380;
  *(a6 + 112) = 0;
  *(a6 + 120) = 0;
  *(a6 + 128) = 0;
  *(a6 + 144) = 0;
  *(a6 + 40) = v12;
  *(a6 + 48) = a1;
  *(a6 + 56) = &off_100339838;
  *(a6 + 64) = a2;
  *(a6 + 72) = a3;
  *(a6 + 80) = a4;
  *(a6 + 88) = a5;
  return a6;
}

uint64_t sub_1000264D0(char a1, int a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = (&v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10000F574();

  *v11 = static OS_dispatch_queue.main.getter();
  (*(v9 + 104))(v11, enum case for DispatchPredicate.onQueue(_:), v8);
  v12 = _dispatchPreconditionTest(_:)();
  (*(v9 + 8))(v11, v8);
  if (v12)
  {
    if (qword_100353A70 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v13 = type metadata accessor for Logger();
  sub_10000F53C(v13, qword_100381DA0);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 67109120;
    *(v16 + 4) = a1 & 1;
    _os_log_impl(&_mh_execute_header, v14, v15, "setOffTheGridMode: on - %{BOOL}d", v16, 8u);
  }

  v17 = *(a3 + 32);
  if (v17)
  {
    v18 = swift_allocObject();
    swift_weakInit();
    v19 = swift_allocObject();
    v19[2] = v18;
    v19[3] = sub_1000267F4;
    v19[4] = a4;
    v20 = v17;

    sub_10022DFD0(a1 & 1, a2, sub_1000269D0, v19);
  }

  else
  {
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v21, v22, "agent is not started, ignoring setOffTheGridMode request", v23, 2u);
    }

    sub_100168418(a4);
  }
}

uint64_t sub_1000267FC()
{

  return _swift_deallocObject(v0, 40, 7);
}

unint64_t sub_10002683C()
{
  result = qword_100365620;
  if (!qword_100365620)
  {
    sub_10000F574();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100365620);
  }

  return result;
}

uint64_t sub_100026894(uint64_t a1)
{
  v2 = sub_1000040A8(&unk_10035CF50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100026904()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000269D8()
{
  sub_100026A14();
  EnvironmentValues.subscript.getter();
  return v1;
}

unint64_t sub_100026A14()
{
  result = qword_1003560C0;
  if (!qword_1003560C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003560C0);
  }

  return result;
}

uint64_t sub_100026C34(uint64_t a1)
{
  v2 = sub_1000040A8(&qword_100356180);
  __chkstk_darwin(v2 - 8);
  v56 = &v52 - v3;
  v4 = sub_1000040A8(&qword_100356188);
  __chkstk_darwin(v4 - 8);
  v6 = &v52 - v5;
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v55 = &v52 - v12;
  v13 = type metadata accessor for URL();
  v58 = *(v13 - 8);
  v14 = __chkstk_darwin(v13);
  v16 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v59 = &v52 - v17;
  if (qword_100353A10 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  v19 = sub_10000F53C(v18, qword_100381C80);

  v52 = v19;
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();

  v22 = os_log_type_enabled(v20, v21);
  v57 = v6;
  v53 = v11;
  if (v22)
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v54 = v13;
    v25 = v24;
    v60 = a1;
    v61[0] = v24;
    *v23 = 136446210;

    sub_1000040A8(&qword_1003561A0);
    v26 = String.init<A>(describing:)();
    v28 = sub_10017C9E8(v26, v27, v61);

    *(v23 + 4) = v28;
    _os_log_impl(&_mh_execute_header, v20, v21, "AppDelegate didFinishLaunchingWithOptions(%{public}s)", v23, 0xCu);
    sub_100008964(v25);
    v13 = v54;
  }

  v29 = v59;
  v30 = [objc_opt_self() mainBundle];
  v31 = [v30 executableURL];

  v32 = v58;
  if (v31)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v32 + 32))(v29, v16, v13);
    sub_1000040A8(&qword_100356190);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100279160;
    *(inited + 32) = NSURLCreationDateKey;
    v34 = NSURLCreationDateKey;
    sub_100233DF8(inited);
    swift_setDeallocating();
    sub_1000275A4(inited + 32);
    v35 = v56;
    URL.resourceValues(forKeys:)();

    v36 = v35;
    v37 = type metadata accessor for URLResourceValues();
    v38 = *(v37 - 8);
    (*(v38 + 56))(v36, 0, 1, v37);
    v39 = v57;
    URLResourceValues.creationDate.getter();
    (*(v38 + 8))(v36, v37);
    if ((*(v8 + 48))(v39, 1, v7) == 1)
    {
      (*(v32 + 8))(v29, v13);
      sub_100008FA0(v39, &qword_100356188);
    }

    else
    {
      v41 = v55;
      (*(v8 + 32))(v55, v39, v7);
      v42 = v53;
      (*(v8 + 16))(v53, v41, v7);
      v43 = Logger.logObject.getter();
      v44 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        v57 = swift_slowAlloc();
        v61[0] = v57;
        *v45 = 136446210;
        sub_1000276E8(&qword_100356198, &type metadata accessor for Date);
        v46 = dispatch thunk of CustomStringConvertible.description.getter();
        v48 = v47;
        v54 = v13;
        v49 = *(v8 + 8);
        v49(v42, v7);
        v50 = sub_10017C9E8(v46, v48, v61);

        *(v45 + 4) = v50;
        _os_log_impl(&_mh_execute_header, v43, v44, "Creation timestamp: (%{public}s)", v45, 0xCu);
        sub_100008964(v57);

        v49(v55, v7);
        (*(v32 + 8))(v59, v54);
      }

      else
      {

        v51 = *(v8 + 8);
        v51(v42, v7);
        v51(v41, v7);
        (*(v32 + 8))(v59, v13);
      }
    }
  }

  return sub_100166274() & 1;
}

uint64_t sub_100027464()
{
  if (qword_100353A10 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10000F53C(v0, qword_100381C80);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "AppDelegate applicationWillTerminate()", v3, 2u);
  }

  return sub_100167184();
}

uint64_t sub_100027548()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1000275A4(uint64_t a1)
{
  type metadata accessor for URLResourceKey(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000276E8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100027730()
{
  v1 = v0[10];
  if (!v1)
  {
    type metadata accessor for PartnerModel();
    v25 = &qword_1003561A8;
    v26 = type metadata accessor for PartnerModel;
    goto LABEL_53;
  }

  v2 = *(v1 + 72);
  if ((v2 == 2 || (v2 & 1) == 0) && *(v1 + 56))
  {
    return 0;
  }

  v4 = v0[14];
  if (!v4)
  {
    type metadata accessor for SystemSettingsModel();
    v25 = &qword_1003561B0;
    v26 = type metadata accessor for SystemSettingsModel;
    goto LABEL_53;
  }

  v5 = *(v4 + 42);
  if (v5 != 2 && (v5 & 1) == 0)
  {
    return 7;
  }

  v6 = *(v4 + 43);
  if (v6 != 2 && (v6 & 1) == 0)
  {
    return 8;
  }

  v7 = v0[12];
  if (!v7)
  {
    type metadata accessor for StewieModel(0);
    v25 = &qword_1003561B8;
    v26 = type metadata accessor for StewieModel;
    goto LABEL_53;
  }

  v8 = *(v7 + 64);

  if (v8)
  {
    v9 = *(v7 + 80);
    if (!*(v9 + 16))
    {

      goto LABEL_22;
    }

    v10 = sub_100233FEC(&off_1003218C0);
    v11 = sub_100204870(v9, v10);
    swift_retain_n();

    if (v11)
    {

      if (!*(v7 + 64))
      {
        goto LABEL_19;
      }

LABEL_22:
      v12 = sub_100071A54(3, *(v7 + 80));

      if (v12)
      {

        return 2;
      }

      goto LABEL_24;
    }

    if (*(v7 + 64))
    {
      v20 = *(*(v7 + 88) + 16);

      if (v20)
      {

        return 0;
      }
    }

    else
    {
    }

    if (*(v7 + 64))
    {
      v21 = sub_100071A54(2, *(v7 + 80));

      if (v21)
      {

        v22 = v0[8];
        if (!v22)
        {
          while (1)
          {
            type metadata accessor for OffTheGridModel();
            v25 = &qword_1003561C0;
            v26 = type metadata accessor for OffTheGridModel;
LABEL_53:
            sub_100027B08(v25, v26);
            EnvironmentObject.error()();
            __break(1u);
          }
        }

        v23 = *(*(v22 + 40) + 136);
        if (v23 == 2)
        {
          return 0;
        }

        else
        {
          return v23 & 1;
        }
      }
    }

    else
    {
    }

    if (*(v7 + 64))
    {
      v24 = sub_100071A54(0, *(v7 + 80));

      if (v24)
      {
        return 3;
      }
    }

    else
    {
    }

    return 0;
  }

LABEL_19:

LABEL_24:
  v13 = *(v7 + 88);
  v14 = *(v7 + 120);
  v28[3] = *(v7 + 104);
  v28[4] = v14;
  v29 = *(v7 + 136);
  v15 = *(v7 + 72);
  v28[0] = *(v7 + 56);
  v28[1] = v15;
  v28[2] = v13;
  sub_100027B5C(v28, v27);

  v16 = *(&v28[0] + 1);
  if (*(&v28[0] + 1))
  {

    sub_100027BCC(v28);
    if (*(v16 + 16) && (v17 = sub_1001921EC(0), (v18 & 1) != 0))
    {
      v19 = *(*(v16 + 56) + v17);

      if (v19 > 1)
      {
        if (v19 == 2)
        {
          return 4;
        }
      }

      else if (v19)
      {
        return 5;
      }
    }

    else
    {
    }
  }

  return 6;
}

uint64_t sub_100027B08(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100027B5C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000040A8(&unk_10035CEF0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100027BCC(uint64_t a1)
{
  v2 = sub_1000040A8(&unk_10035CEF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100027C34(uint64_t a1)
{
  if (*a1 >= 0)
  {
    return *a1 >> 62;
  }

  else
  {
    return (*a1 & 0xF | (16 * *(a1 + 8))) + 2;
  }
}

uint64_t sub_100027C54(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1 >> 4;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t sub_100027CA4(uint64_t result, int a2, int a3)
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
      *result = 16 * -a2;
      *(result + 8) = 0;
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

void *sub_100027CF4(void *result, uint64_t a2)
{
  if (a2 < 2)
  {
    *result = *result & 0xFLL | (a2 << 62);
  }

  else
  {
    *result = (a2 - 2) & 0xF | 0x8000000000000000;
    result[1] = (a2 - 2) >> 4;
  }

  return result;
}

uint64_t sub_100027D34()
{
  v1 = v0;
  sub_1000040A8(&qword_1003562A8);
  swift_allocObject();
  *(v0 + 32) = PassthroughSubject.init()();
  type metadata accessor for PreventSuspension();
  v2 = swift_allocObject();
  v2[2] = 0x6F6D20726566664FLL;
  v2[3] = 0xEA00000000006564;
  v2[4] = 0;
  *(v0 + 40) = v2;
  v3 = swift_allocObject();
  v3[3] = 0x8000000100296730;
  v3[4] = 0;
  v3[2] = 0xD000000000000013;
  *(v0 + 48) = v3;
  *(v0 + 56) = 0;
  if (_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
  {
    v4 = sub_100233B1C(_swiftEmptyArrayStorage);
  }

  else
  {
    v4 = &_swiftEmptySetSingleton;
  }

  *(v0 + 64) = v4;
  *(v0 + 72) = 0;
  sub_1000040A8(&unk_100365610);
  swift_allocObject();
  *(v0 + 16) = PassthroughSubject.init()();
  swift_allocObject();
  *(v0 + 24) = PassthroughSubject.init()();
  v5 = qword_100353AA0;
  swift_retain_n();
  if (v5 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_10000F53C(v6, qword_100381E30);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v15 = v10;
    *v9 = 136446210;

    v11 = String.init<A>(describing:)();
    v13 = sub_10017C9E8(v11, v12, &v15);

    *(v9 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v7, v8, "[%{public}s] init", v9, 0xCu);
    sub_100008964(v10);
  }

  return v1;
}

uint64_t sub_100027FFC()
{
}

uint64_t sub_100028044()
{
  v1 = v0;
  if (qword_100353AA0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000F53C(v2, qword_100381E30);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136446210;

    v7 = String.init<A>(describing:)();
    v9 = sub_10017C9E8(v7, v8, &v11);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "[%{public}s] deinit", v5, 0xCu);
    sub_100008964(v6);
  }

  return v1;
}

uint64_t sub_100028210()
{
  sub_100028044();

  return swift_deallocClassInstance();
}

uint64_t getEnumTagSinglePayload for StewieAppId(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for StewieAppId(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1000283B8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100028400(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_100028450()
{
  result = qword_1003562A0;
  if (!qword_1003562A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003562A0);
  }

  return result;
}

uint64_t sub_1000284A4(uint64_t result)
{
  if (*(v1 + 72) != result)
  {
    v2 = v1;
    if (qword_100353AA0 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_10000F53C(v3, qword_100381E30);

    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v15[0] = swift_slowAlloc();
      *v6 = 136446466;
      v7 = String.init<A>(describing:)();
      v9 = sub_10017C9E8(v7, v8, v15);

      *(v6 + 4) = v9;
      *(v6 + 12) = 2082;
      v10 = String.init<A>(describing:)();
      v12 = sub_10017C9E8(v10, v11, v15);

      *(v6 + 14) = v12;
      _os_log_impl(&_mh_execute_header, v4, v5, "state changed from: %{public}s to: %{public}s", v6, 0x16u);
      swift_arrayDestroy();
    }

    v13 = *(v2 + 72);
    if (v13 == 4)
    {
      type metadata accessor for PreventSuspensionAssertion();
      swift_allocObject();
      v14 = sub_1000E13E0(0xD000000000000011, 0x8000000100294FD0, 0xD000000000000017, 0x8000000100296710);
      LOBYTE(v15[0]) = 1;
    }

    else
    {
      if (v13 != 5)
      {
LABEL_11:
        sub_1000CC8E0();
        sub_1000040A8(&unk_100365610);
        sub_100018C74();
        return Subject<>.send()();
      }

      type metadata accessor for PreventSuspensionAssertion();
      swift_allocObject();
      v14 = sub_1000E13E0(0xD000000000000011, 0x8000000100294FD0, 0xD000000000000017, 0x8000000100296710);
      LOBYTE(v15[0]) = 0;
    }

    v15[1] = v14;
    PassthroughSubject.send(_:)();

    goto LABEL_11;
  }

  return result;
}

uint64_t sub_100028788(char a1)
{
  v2 = v1;
  if (qword_100353AA0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000F53C(v4, qword_100381E30);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v15 = v8;
    *v7 = 136446210;
    v9 = String.init<A>(describing:)();
    v11 = sub_10017C9E8(v9, v10, &v15);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v5, v6, "handleOfferRequest: %{public}s", v7, 0xCu);
    sub_100008964(v8);
  }

  if (a1)
  {
    v12 = 1;
  }

  else
  {
    v12 = 2;
  }

  v13 = *(v2 + 72);
  if (v13 != v12)
  {
    sub_1000040A8(&unk_100365610);
    sub_100018C74();
    Subject<>.send()();
  }

  *(v2 + 72) = v12;

  return sub_1000284A4(v13);
}

void sub_10002896C(char a1, const char *a2)
{
  v3 = *(v2 + 72);
  if ((v3 - 1) > 2)
  {
    if (qword_100353AA0 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_10000F53C(v6, qword_100381E30);

    oslog = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(oslog, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v14 = v9;
      *v8 = 136446210;
      v10 = String.init<A>(describing:)();
      v12 = sub_10017C9E8(v10, v11, &v14);

      *(v8 + 4) = v12;
      _os_log_impl(&_mh_execute_header, oslog, v7, a2, v8, 0xCu);
      sub_100008964(v9);
    }

    else
    {
    }
  }

  else
  {
    sub_1000040A8(&unk_100365610);
    sub_100018C74();
    Subject<>.send()();
    *(v2 + 72) = a1;

    sub_1000284A4(v3);
  }
}

unint64_t sub_100028B84()
{
  result = qword_1003562B0;
  if (!qword_1003562B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003562B0);
  }

  return result;
}

uint64_t sub_100028BD8()
{
  v1 = v0;
  sub_1000040A8(&qword_100356500);
  swift_allocObject();
  *(v0 + 16) = PassthroughSubject.init()();
  sub_1000040A8(&qword_100356508);
  swift_allocObject();
  *(v0 + 24) = PassthroughSubject.init()();
  *(v0 + 32) = 0xD000000000000015;
  *(v0 + 40) = 0x80000001002968F0;
  *(v0 + 48) = 0x637269632E736F73;
  *(v0 + 56) = 0xEF6C6C69662E656CLL;
  *(v0 + 64) = 0x796D646E6966;
  *(v0 + 72) = 0xE600000000000000;
  *(v0 + 80) = 30;
  *(v0 + 88) = [objc_allocWithZone(type metadata accessor for NotificationAgent()) init];
  *(v0 + 96) = 0;
  *(v0 + 112) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + 120) = 0;
  *(v0 + 128) = 514;
  v2 = OBJC_IVAR____TtC8SOSBuddy22LockScreenNotification__lastTargetDisappearedAt;
  v3 = type metadata accessor for DispatchTime();
  (*(*(v3 - 8) + 56))(v1 + v2, 1, 1, v3);
  if (qword_100353A10 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000F53C(v4, qword_100381C80);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v13 = v8;
    *v7 = 136446210;
    type metadata accessor for LockScreenNotification();

    v9 = String.init<A>(describing:)();
    v11 = sub_10017C9E8(v9, v10, &v13);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v5, v6, "[%{public}s] init", v7, 0xCu);
    sub_100008964(v8);
  }

  return v1;
}

uint64_t sub_100028E80()
{
  v1 = v0;
  if (qword_100353A10 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000F53C(v2, qword_100381C80);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136446210;
    type metadata accessor for LockScreenNotification();

    v7 = String.init<A>(describing:)();
    v9 = sub_10017C9E8(v7, v8, &v11);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "[%{public}s] deinit", v5, 0xCu);
    sub_100008964(v6);
  }

  sub_10002B558(v1 + 104);

  sub_100008FA0(v1 + OBJC_IVAR____TtC8SOSBuddy22LockScreenNotification__lastTargetDisappearedAt, &qword_100356518);
  return v1;
}

uint64_t sub_100029058()
{
  sub_100028E80();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for LockScreenNotification()
{
  result = qword_1003562E8;
  if (!qword_1003562E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100029104()
{
  sub_10002B388();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1000291EC()
{
  v1 = v0;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(v0 + 112);
    sub_10000F574();
    v5 = static OS_dispatch_queue.main.getter();
    sub_1000040A8(&qword_100356520);
    v6 = swift_allocObject();
    swift_weakInit();
    if (&_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
    {

      v7 = sub_100233B1C(&_swiftEmptyArrayStorage);
    }

    else
    {

      v7 = &_swiftEmptySetSingleton;
    }

    *(v6 + 32) = v7;
    swift_weakAssign();
    *(v6 + 24) = v5;

    sub_1001ABD90(v8, sub_10002B580, 0);

    sub_1001AC094(v9, sub_1000296B8, 0);

    sub_1001ABD90(v10, sub_1000297AC, 0);

    sub_1001ABD90(v11, sub_10002B580, 0);

    v12 = *(*(*(v3 + 64) + 56) + 24);
    v13 = swift_allocObject();
    *(v13 + 16) = v3;
    *(v13 + 24) = v4;

    swift_unknownObjectRetain();
    sub_1001ABD90(v12, sub_10002B548, v13);

    sub_1001ABD90(v14, sub_1000299FC, 0);

    sub_1001AC398(v15, sub_100029860, 0);

    sub_1001AC69C(v16, sub_10002B550, v1);

    v18 = sub_1001AC9A0(v17, sub_100029D5C, 0);

    swift_unknownObjectRelease();

    *(v1 + 120) = v18;
  }

  else
  {
    if (qword_100353A98 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_10000F53C(v19, qword_100381E18);
    oslog = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v20, "Unexpected _env == nil", v21, 2u);
    }
  }
}

uint64_t sub_1000296B8(uint64_t a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = *(Strong + 88);

    swift_unknownObjectRelease();
    v4 = *(v3 + 48);

    if (v4 != 2 && (v4 & 1) != 0)
    {
      *(a1 + 128) = 1;
    }
  }

  sub_10002A62C(&v6);
  if (v8)
  {
    v11 = v6;
    v12 = v7;
    v13 = v8;
    v14 = v9;
    v15 = v10;
    sub_10007F4E8(&v11);
    sub_100008FA0(&v6, qword_100356528);
  }

  else
  {
    sub_100080A8C(0);
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_unknownObjectRelease();
  }

  return sub_100080A8C(1);
}

uint64_t sub_1000297AC(uint64_t a1)
{
  *(a1 + 128) = 2;
  sub_10002A62C(&v2);
  if (v4)
  {
    v7 = v2;
    v8 = v3;
    v9 = v4;
    v10 = v5;
    v11 = v6;
    sub_10007F4E8(&v7);
    sub_100008FA0(&v2, qword_100356528);
  }

  else
  {
    sub_100080A8C(0);
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_unknownObjectRelease();
  }

  return sub_100080A8C(1);
}

uint64_t sub_100029860()
{
  sub_10002A62C(&v1);
  if (v3)
  {
    v6 = v1;
    v7 = v2;
    v8 = v3;
    v9 = v4;
    v10 = v5;
    sub_10007F4E8(&v6);
    sub_100008FA0(&v1, qword_100356528);
  }

  else
  {
    sub_100080A8C(0);
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_unknownObjectRelease();
  }

  return sub_100080A8C(1);
}

uint64_t sub_100029908(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*(a3 + 64) + 56);
  v4 = *(v3 + OBJC_IVAR____TtC8SOSBuddy13GuidanceModel___cachedInSilencePeriodNow);
  if ((v4 == 2 || (v4 & 1) == 0) && ((v5 = *(v3 + 58), v5 == 2) || (v5 & 1) == 0))
  {
    v6 = *(v3 + OBJC_IVAR____TtC8SOSBuddy13GuidanceModel__correctedTargetRelativeBearing + 24);
  }

  else
  {
    v6 = 1;
  }

  sub_100029FAC(a1, a2, a3, v6);
  sub_10002A62C(&v8);
  if (v10)
  {
    v13 = v8;
    v14 = v9;
    v15 = v10;
    v16 = v11;
    v17 = v12;
    sub_10007F4E8(&v13);
    sub_100008FA0(&v8, qword_100356528);
  }

  else
  {
    sub_100080A8C(0);
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_unknownObjectRelease();
  }

  return sub_100080A8C(1);
}

uint64_t sub_1000299FC(uint64_t a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong || (v3 = *(Strong + 88), , swift_unknownObjectRelease(), v4 = *(v3 + 48), , v4 == 2) || (v4 & 1) == 0)
  {
    *(a1 + 128) = 2;
  }

  sub_10002A62C(&v6);
  if (v8)
  {
    v11 = v6;
    v12 = v7;
    v13 = v8;
    v14 = v9;
    v15 = v10;
    sub_10007F4E8(&v11);
    sub_100008FA0(&v6, qword_100356528);
  }

  else
  {
    sub_100080A8C(0);
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_unknownObjectRelease();
  }

  return sub_100080A8C(1);
}

void sub_100029AF0(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  if (*a2)
  {
    *(a1 + 96) = 0;
LABEL_11:
    if (qword_100353A98 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_10000F53C(v9, qword_100381E18);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "didFinishPostNotificationRequest: checking if update is required", v12, 2u);
    }

    sub_10002A62C(&v14);
    if (v16)
    {
      v19 = v14;
      v20 = v15;
      v21 = v16;
      v22 = v17;
      v23 = v18;
      sub_10007F4E8(&v19);
      sub_100008FA0(&v14, qword_100356528);
    }

    else
    {
      sub_100080A8C(0);
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_unknownObjectRelease();
    }

    sub_100080A8C(1);
    return;
  }

  v3 = *(a1 + 96);
  v4 = __CFADD__(v3, 1);
  v5 = v3 + 1;
  if (v4)
  {
    __break(1u);
LABEL_22:
    swift_once();
    goto LABEL_6;
  }

  *(a1 + 96) = v5;
  if (*(a3 + 96) < 8uLL)
  {
    goto LABEL_11;
  }

  if (qword_100353A98 != -1)
  {
    goto LABEL_22;
  }

LABEL_6:
  v6 = type metadata accessor for Logger();
  sub_10000F53C(v6, qword_100381E18);
  oslog = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v7, "didFinishPostNotificationRequest: too many failures, skipping update", v8, 2u);
  }
}

uint64_t sub_100029D5C()
{

  PassthroughSubject.send(_:)();
}

uint64_t sub_100029DB4()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_1000040A8(&qword_100356518);
  __chkstk_darwin(v6 - 8);
  v8 = &v12 - v7;
  *(v1 + 128) = 514;
  v9 = type metadata accessor for DispatchTime();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  v10 = OBJC_IVAR____TtC8SOSBuddy22LockScreenNotification__lastTargetDisappearedAt;
  swift_beginAccess();
  sub_10002B4A0(v8, v1 + v10);
  swift_endAccess();
  sub_10000F574();
  *v5 = static OS_dispatch_queue.main.getter();
  (*(v3 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v2);
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  result = (*(v3 + 8))(v5, v2);
  if (v8)
  {
    sub_100080A8C(0);
    result = sub_100080A8C(1);
    *(v1 + 96) = 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_100029FAC(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v6 = type metadata accessor for DispatchTime();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v46[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v12 = &v46[-v11];
  v13 = sub_1000040A8(&qword_100356518);
  v14 = __chkstk_darwin(v13 - 8);
  v16 = &v46[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v14);
  v18 = &v46[-v17];
  v19 = a4 ^ 1;
  v20 = *(v4 + 129);
  if (v20 == 2)
  {
    *(v4 + 129) = v19 & 1;
    return;
  }

  if (((v20 ^ a4) & 1) == 0)
  {
    v21 = v20 | a4;
    *(v4 + 129) = v19 & 1;
    if (v20 & 1) != 0 && (a4)
    {
      static DispatchTime.now()();
      (*(v7 + 56))(v18, 0, 1, v6);
      v22 = OBJC_IVAR____TtC8SOSBuddy22LockScreenNotification__lastTargetDisappearedAt;
      swift_beginAccess();
      sub_10002B4A0(v18, v4 + v22);
      swift_endAccess();
    }

    if ((v21 & 1) == 0)
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v24 = *(Strong + 88);

        swift_unknownObjectRelease();
        v25 = *(v24 + 48);

        if (v25 != 2 && (v25 & 1) != 0)
        {
          v26 = OBJC_IVAR____TtC8SOSBuddy22LockScreenNotification__lastTargetDisappearedAt;
          swift_beginAccess();
          sub_100006C20(v4 + v26, v16, &qword_100356518);
          if ((*(v7 + 48))(v16, 1, v6) == 1)
          {
            sub_100008FA0(v16, &qword_100356518);
            if (qword_100353A98 != -1)
            {
              swift_once();
            }

            v27 = type metadata accessor for Logger();
            sub_10000F53C(v27, qword_100381E18);
            v28 = Logger.logObject.getter();
            v29 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v28, v29))
            {
              v30 = swift_slowAlloc();
              *v30 = 0;
              _os_log_impl(&_mh_execute_header, v28, v29, "Detected first time 'no target -> target' transition", v30, 2u);
            }

            goto LABEL_17;
          }

          (*(v7 + 32))(v12, v16, v6);
          static DispatchTime.now()();
          v34 = DispatchTime.uptimeNanoseconds.getter();
          if (DispatchTime.uptimeNanoseconds.getter() >= v34)
          {
            v37 = *(v7 + 8);
            v37(v10, v6);
          }

          else
          {
            v35 = DispatchTime.uptimeNanoseconds.getter();
            v36 = DispatchTime.uptimeNanoseconds.getter();
            v37 = *(v7 + 8);
            v37(v10, v6);
            if (v35 < v36)
            {
              __break(1u);
              goto LABEL_37;
            }

            if (v35 - v36 >= 0x737BE7600)
            {
              if (qword_100353A98 == -1)
              {
LABEL_24:
                v38 = type metadata accessor for Logger();
                sub_10000F53C(v38, qword_100381E18);

                v39 = Logger.logObject.getter();
                v40 = static os_log_type_t.default.getter();
                if (os_log_type_enabled(v39, v40))
                {
                  v41 = swift_slowAlloc();
                  *v41 = 134349056;
                  *(v41 + 4) = 30;

                  _os_log_impl(&_mh_execute_header, v39, v40, "Detected 'no target -> target' transition longer than %{public}ld seconds", v41, 0xCu);
                }

                else
                {
                }

                v37(v12, v6);
LABEL_17:
                sub_100080A8C(0);
                v31 = swift_unknownObjectWeakLoadStrong();
                if (v31 && (v32 = *(*(v31 + 64) + 56), , swift_unknownObjectRelease(), v33 = *(v32 + OBJC_IVAR____TtC8SOSBuddy13GuidanceModel__suggestedActions), , , LOBYTE(v32) = sub_10017D0A8(&off_100321A28, v33), , (v32 & 1) != 0))
                {
                  v46[7] = 2;

                  PassthroughSubject.send(_:)();
                }

                else
                {
                  if (qword_100353A98 != -1)
                  {
                    swift_once();
                  }

                  v42 = type metadata accessor for Logger();
                  sub_10000F53C(v42, qword_100381E18);
                  v43 = Logger.logObject.getter();
                  v44 = static os_log_type_t.default.getter();
                  if (os_log_type_enabled(v43, v44))
                  {
                    v45 = swift_slowAlloc();
                    *v45 = 0;
                    _os_log_impl(&_mh_execute_header, v43, v44, "Skipping haptic, orientation guidance will take care of it", v45, 2u);
                  }
                }

                return;
              }

LABEL_37:
              swift_once();
              goto LABEL_24;
            }
          }

          v37(v12, v6);
        }
      }
    }
  }
}

void sub_10002A62C(uint64_t a1@<X8>)
{
  v3 = sub_1000040A8(&qword_100356510);
  __chkstk_darwin(v3 - 8);
  v5 = &v113 - v4;
  v6 = type metadata accessor for ConnectionClosed(0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v113 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_49;
  }

  v11 = *(*(Strong + 88) + 48);
  if (v11 == 2 || (v11 & 1) == 0)
  {
    goto LABEL_48;
  }

  v12 = *(*(Strong + 64) + 32);
  if (*(v12 + 64))
  {
    v13 = *(v12 + 56) == 5;
  }

  else
  {
    v13 = 0;
  }

  if (!v13)
  {
    v14 = *(v1 + 128);
    if (v14 != 2 && (v14 & 1) != 0)
    {
      v117 = Strong;
      v114 = objc_opt_self();
      v15 = [v114 mainBundle];
      v118._object = 0x8000000100296930;
      v16._countAndFlagsBits = 0xD000000000000014;
      v16._object = 0x8000000100296910;
      v118._countAndFlagsBits = 0xD00000000000008ALL;
      v17._countAndFlagsBits = 0;
      v17._object = 0xE000000000000000;
      v18 = NSLocalizedString(_:tableName:bundle:value:comment:)(v16, 0, v15, v17, v118);
      countAndFlagsBits = v18._countAndFlagsBits;
      object = v18._object;

      v22 = *(v1 + 32);
      v21 = *(v1 + 40);
      v115 = *(v117[8] + 112);
      v116 = OBJC_IVAR____TtC8SOSBuddy21ConnectionClosedModel__connectionClosed;
      swift_beginAccess();
      sub_100006C20(v115 + v116, v5, &qword_100356510);
      if ((*(v7 + 48))(v5, 1, v6) == 1)
      {

        sub_100008FA0(v5, &qword_100356510);
        v23 = v114;
LABEL_12:
        v24 = [v23 mainBundle];
        v25._countAndFlagsBits = 0xD000000000000010;
        v119._object = 0x80000001002969E0;
        v25._object = 0x80000001002969C0;
        v119._countAndFlagsBits = 0xD000000000000053;
        v26._countAndFlagsBits = 0;
        v26._object = 0xE000000000000000;
        v27 = NSLocalizedString(_:tableName:bundle:value:comment:)(v25, 0, v24, v26, v119);
        v28 = v27._countAndFlagsBits;
        v29 = v27._object;
        swift_unknownObjectRelease();

LABEL_50:
        *a1 = v22;
        *(a1 + 8) = v21;
        *(a1 + 16) = countAndFlagsBits;
        *(a1 + 24) = object;
        *(a1 + 32) = v28;
        *(a1 + 40) = v29;
        *(a1 + 48) = 0;
        return;
      }

      sub_10002B3E0(v5, v9);
      v74 = *&v9[*(v6 + 24)];
      v75 = sub_100233FEC(&off_1003219D8);
      v76 = sub_100204870(v74, v75);

      if (v76 & 1) != 0 || (v77 = sub_100233FEC(&off_100321A00), v78 = sub_100204870(v74, v77), , (v78))
      {
        swift_unknownObjectRelease();

        sub_10002B444(v9);
LABEL_49:
        v22 = 0;
        v21 = 0;
        countAndFlagsBits = 0;
        object = 0;
        v28 = 0;
        v29 = 0;
        goto LABEL_50;
      }

      if (sub_100071A54(0, v74))
      {

        v91 = v114;
        v92 = [v114 mainBundle];
        v127._object = 0x8000000100296B30;
        v93._countAndFlagsBits = 0xD00000000000001BLL;
        v93._object = 0x8000000100296B10;
        v127._countAndFlagsBits = 0xD00000000000003CLL;
        v94._countAndFlagsBits = 0;
        v94._object = 0xE000000000000000;
        v95 = NSLocalizedString(_:tableName:bundle:value:comment:)(v93, 0, v92, v94, v127);
        countAndFlagsBits = v95._countAndFlagsBits;
        object = v95._object;

        sub_10002B444(v9);
        v22 = *(v1 + 48);
        v21 = *(v1 + 56);
      }

      else
      {
        v102 = sub_100071A54(1, v74);
        v91 = v114;
        if (v102)
        {

          v103 = [v91 mainBundle];
          v129._object = 0x8000000100296AC0;
          v104._countAndFlagsBits = 0xD000000000000021;
          v104._object = 0x8000000100296A90;
          v105.value._object = 0x80000001002962C0;
          v129._countAndFlagsBits = 0xD000000000000042;
          v105.value._countAndFlagsBits = 0xD000000000000012;
          v106._countAndFlagsBits = 0;
          v106._object = 0xE000000000000000;
          v107 = NSLocalizedString(_:tableName:bundle:value:comment:)(v104, v105, v103, v106, v129);
          countAndFlagsBits = v107._countAndFlagsBits;
          object = v107._object;

          sub_10002B444(v9);
          v23 = v91;
          v22 = 0;
          v21 = 0;
          goto LABEL_12;
        }

        if ((sub_100071A54(4, v74) & 1) == 0)
        {
          sub_10002B444(v9);
          goto LABEL_44;
        }

        v108 = [v91 mainBundle];
        v130._object = 0x8000000100296A60;
        v109._countAndFlagsBits = 0xD000000000000015;
        v109._object = 0x8000000100296A40;
        v130._countAndFlagsBits = 0xD00000000000002BLL;
        v110._countAndFlagsBits = 0;
        v110._object = 0xE000000000000000;
        v111 = NSLocalizedString(_:tableName:bundle:value:comment:)(v109, 0, v108, v110, v130);
        countAndFlagsBits = v111._countAndFlagsBits;
        object = v111._object;

        sub_10002B444(v9);
        v22 = *(v1 + 64);
        v21 = *(v1 + 72);
      }

LABEL_44:
      v23 = v91;
      goto LABEL_12;
    }

LABEL_48:
    swift_unknownObjectRelease();
    goto LABEL_49;
  }

  v30 = Strong;
  v31 = *(v12 + 88);

  v32 = sub_100233FEC(&off_1003219B0);
  if (v31)
  {
    v33 = sub_100204870(v31, v32);

    if (v33)
    {
      goto LABEL_48;
    }
  }

  else
  {
  }

  v34 = v30;
  v35 = v30[5];
  v36 = *(v35 + 40);
  if (v36 != 3)
  {
    goto LABEL_25;
  }

  v37 = *(v30[9] + 88);
  if (!v37)
  {
LABEL_22:
    v49 = *(v35 + 41);
    if (v49 == 2 || (v49 & 1) == 0)
    {
      v22 = *(v1 + 48);
      v21 = *(v1 + 56);
      v117 = v34;
      v57 = objc_opt_self();

      v58 = [v57 mainBundle];
      v122._object = 0x8000000100296B30;
      v59._countAndFlagsBits = 0xD00000000000001BLL;
      v59._object = 0x8000000100296B10;
      v122._countAndFlagsBits = 0xD00000000000003CLL;
      v60._countAndFlagsBits = 0;
      v60._object = 0xE000000000000000;
      v61 = NSLocalizedString(_:tableName:bundle:value:comment:)(v59, 0, v58, v60, v122);
      countAndFlagsBits = v61._countAndFlagsBits;
      object = v61._object;

      v45 = [v57 mainBundle];
      v112 = 0x8000000100296DF0;
      v46 = 0xD00000000000002FLL;
      v47 = 0x8000000100296DC0;
      v48 = 0xD000000000000067;
      goto LABEL_32;
    }

    v36 = *(v35 + 40);
LABEL_25:
    if (v36 == 8 && ((v50 = *(v35 + 41), v50 == 2) || (v50 & 1) == 0))
    {
      v64 = objc_opt_self();
      v65 = [v64 mainBundle];
      v123._object = 0x8000000100296AC0;
      v66._countAndFlagsBits = 0xD000000000000021;
      v66._object = 0x8000000100296A90;
      v67.value._object = 0x80000001002962C0;
      v123._countAndFlagsBits = 0xD000000000000042;
      v67.value._countAndFlagsBits = 0xD000000000000012;
      v68._countAndFlagsBits = 0;
      v68._object = 0xE000000000000000;
      v69 = NSLocalizedString(_:tableName:bundle:value:comment:)(v66, v67, v65, v68, v123);
      countAndFlagsBits = v69._countAndFlagsBits;
      object = v69._object;

      v70 = [v64 mainBundle];
      v124._object = 0x8000000100296DF0;
      v71._countAndFlagsBits = 0xD00000000000002FLL;
      v71._object = 0x8000000100296DC0;
      v124._countAndFlagsBits = 0xD000000000000067;
      v72._countAndFlagsBits = 0;
      v72._object = 0xE000000000000000;
      v73 = NSLocalizedString(_:tableName:bundle:value:comment:)(v71, 0, v70, v72, v124);
      v28 = v73._countAndFlagsBits;
      v29 = v73._object;
      swift_unknownObjectRelease();
    }

    else
    {
      v51 = *(v34[8] + 32);
      if (!*(v51 + 64))
      {
        goto LABEL_48;
      }

      if (sub_100071A54(0, *(v51 + 88)))
      {
        v22 = *(v1 + 48);
        v21 = *(v1 + 56);
        v52 = objc_opt_self();

        v53 = [v52 mainBundle];
        v121._object = 0x8000000100296B30;
        v54._countAndFlagsBits = 0xD00000000000001BLL;
        v54._object = 0x8000000100296B10;
        v121._countAndFlagsBits = 0xD00000000000003CLL;
        v55._countAndFlagsBits = 0;
        v55._object = 0xE000000000000000;
        v56 = NSLocalizedString(_:tableName:bundle:value:comment:)(v54, 0, v53, v55, v121);
        countAndFlagsBits = v56._countAndFlagsBits;
        object = v56._object;

        v45 = [v52 mainBundle];
        v112 = 0x8000000100296D30;
        v46 = 0xD000000000000031;
        v47 = 0x8000000100296CF0;
        v48 = 0xD000000000000085;
        goto LABEL_32;
      }

      v79 = *(v30[8] + 32);
      if (!*(v79 + 64))
      {
        goto LABEL_48;
      }

      if ((sub_100071A54(1, *(v79 + 88)) & 1) == 0)
      {
        v96 = *(v30[8] + 32);
        if (!*(v96 + 64) || (sub_100071A54(4, *(v96 + 88)) & 1) == 0)
        {
          goto LABEL_48;
        }

        v22 = *(v1 + 64);
        v21 = *(v1 + 72);
        v97 = objc_opt_self();

        v98 = [v97 mainBundle];
        v128._object = 0x8000000100296A60;
        v99._countAndFlagsBits = 0xD000000000000015;
        v99._object = 0x8000000100296A40;
        v128._countAndFlagsBits = 0xD00000000000002BLL;
        v100._countAndFlagsBits = 0;
        v100._object = 0xE000000000000000;
        v101 = NSLocalizedString(_:tableName:bundle:value:comment:)(v99, 0, v98, v100, v128);
        countAndFlagsBits = v101._countAndFlagsBits;
        object = v101._object;

        v45 = [v97 mainBundle];
        v112 = 0x8000000100296BA0;
        v46 = 0xD00000000000002ALL;
        v47 = 0x8000000100296B70;
        v48 = 0xD000000000000082;
LABEL_32:
        v62._countAndFlagsBits = 0;
        v62._object = 0xE000000000000000;
        v63 = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v46, 0, v45, v62, *&v48);
        v28 = v63._countAndFlagsBits;
        v29 = v63._object;
        swift_unknownObjectRelease();

        goto LABEL_50;
      }

      v80 = objc_opt_self();
      v81 = [v80 mainBundle];
      v125._object = 0x8000000100296AC0;
      v82._countAndFlagsBits = 0xD000000000000021;
      v82._object = 0x8000000100296A90;
      v83.value._object = 0x80000001002962C0;
      v125._countAndFlagsBits = 0xD000000000000042;
      v83.value._countAndFlagsBits = 0xD000000000000012;
      v84._countAndFlagsBits = 0;
      v84._object = 0xE000000000000000;
      v85 = NSLocalizedString(_:tableName:bundle:value:comment:)(v82, v83, v81, v84, v125);
      countAndFlagsBits = v85._countAndFlagsBits;
      object = v85._object;

      v86 = [v80 mainBundle];
      v126._object = 0x8000000100296C60;
      v87._countAndFlagsBits = 0xD00000000000002FLL;
      v87._object = 0x8000000100296C30;
      v88.value._object = 0x80000001002962C0;
      v126._countAndFlagsBits = 0xD000000000000085;
      v88.value._countAndFlagsBits = 0xD000000000000012;
      v89._countAndFlagsBits = 0;
      v89._object = 0xE000000000000000;
      v90 = NSLocalizedString(_:tableName:bundle:value:comment:)(v87, v88, v86, v89, v126);
      v28 = v90._countAndFlagsBits;
      v29 = v90._object;
      swift_unknownObjectRelease();
    }

    v22 = 0;
    v21 = 0;
    goto LABEL_50;
  }

  swift_beginAccess();
  v38 = *(v37 + 144);
  v39 = *(v38 + 16);
  if (v39)
  {
    v34 = v30;
    if (*(v38 + v39 + 31) == 3)
    {
      v22 = *(v1 + 48);
      v21 = *(v1 + 56);
      v117 = v30;
      v40 = objc_opt_self();

      v41 = [v40 mainBundle];
      v120._object = 0x8000000100296B30;
      v42._countAndFlagsBits = 0xD00000000000001BLL;
      v42._object = 0x8000000100296B10;
      v120._countAndFlagsBits = 0xD00000000000003CLL;
      v43._countAndFlagsBits = 0;
      v43._object = 0xE000000000000000;
      v44 = NSLocalizedString(_:tableName:bundle:value:comment:)(v42, 0, v41, v43, v120);
      countAndFlagsBits = v44._countAndFlagsBits;
      object = v44._object;

      v45 = [v40 mainBundle];
      v112 = 0x8000000100296E90;
      v46 = 0xD000000000000025;
      v47 = 0x8000000100296E60;
      v48 = 0xD000000000000076;
      goto LABEL_32;
    }

    goto LABEL_22;
  }

  __break(1u);
}

void sub_10002B388()
{
  if (!qword_100362DE0)
  {
    type metadata accessor for DispatchTime();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100362DE0);
    }
  }
}

uint64_t sub_10002B3E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ConnectionClosed(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10002B444(uint64_t a1)
{
  v2 = type metadata accessor for ConnectionClosed(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10002B4A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000040A8(&qword_100356518);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10002B510()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10002B5E8(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  type metadata accessor for _PreferenceWritingModifier();
  type metadata accessor for ModifiedContent();
  v11 = &protocol witness table for Color;
  WitnessTable = swift_getWitnessTable();
  swift_getWitnessTable();
  v9 = GeometryReader.init(content:)();
  v10 = v5;
  v6 = type metadata accessor for GeometryReader();
  v7 = swift_getWitnessTable();
  sub_10009A58C(&v9, v6, v7);

  v9 = v13;
  v10 = v14;
  sub_10009A58C(&v9, v6, v7);
}

uint64_t sub_10002B754()
{
  static Color.clear.getter();
  GeometryProxy.size.getter();
  v9 = v0;
  *&v10 = v1;
  View.preference<A>(key:value:)();

  v5 = v7;
  v6 = v8;
  type metadata accessor for _PreferenceWritingModifier();
  v2 = type metadata accessor for ModifiedContent();
  swift_getWitnessTable();
  WitnessTable = swift_getWitnessTable();
  sub_10009A58C(&v5, v2, WitnessTable);

  v7 = v9;
  v8 = v10;
  sub_10009A58C(&v7, v2, WitnessTable);
}

uint64_t sub_10002B8D8()
{
  type metadata accessor for _PreferenceWritingModifier();
  type metadata accessor for ModifiedContent();
  swift_getWitnessTable();
  swift_getWitnessTable();
  type metadata accessor for GeometryReader();
  return swift_getWitnessTable();
}

uint64_t sub_10002B9FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  v6[2] = a1;
  v6[3] = a2;
  v6[4] = a3;
  type metadata accessor for _PreferenceWritingModifier();
  type metadata accessor for ModifiedContent();
  v13 = &protocol witness table for Color;
  WitnessTable = swift_getWitnessTable();
  swift_getWitnessTable();
  v11 = GeometryReader.init(content:)();
  v12 = v7;
  v8 = type metadata accessor for GeometryReader();
  v9 = swift_getWitnessTable();
  sub_10009A58C(&v11, v8, v9);

  v11 = v15;
  v12 = v16;
  sub_10009A58C(&v11, v8, v9);
}

uint64_t sub_10002BB78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16 = static Color.clear.getter();
  sub_1000040A8(&qword_100356630);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100279160;
  *(v6 + 32) = (*(a3 + 8))(a1, a2, a3);
  *(v6 + 40) = v7;
  *(v6 + 48) = v8;
  *(v6 + 56) = v9;
  View.preference<A>(key:value:)();

  v13[0] = v14;
  v13[1] = v15;
  type metadata accessor for _PreferenceWritingModifier();
  v10 = type metadata accessor for ModifiedContent();
  swift_getWitnessTable();
  WitnessTable = swift_getWitnessTable();
  sub_10009A58C(v13, v10, WitnessTable);

  v14 = v16;
  v15 = v17;
  sub_10009A58C(&v14, v10, WitnessTable);
}

uint64_t sub_10002BD68()
{
  type metadata accessor for _PreferenceWritingModifier();
  type metadata accessor for ModifiedContent();
  swift_getWitnessTable();
  swift_getWitnessTable();
  type metadata accessor for GeometryReader();
  return swift_getWitnessTable();
}

uint64_t sub_10002BE2C()
{
  sub_10002C014();
  EnvironmentValues.subscript.getter();
  return v1;
}

uint64_t sub_10002BE68()
{
  swift_getKeyPath();
  View.environment<A>(_:_:)();
}

uint64_t sub_10002BEDC@<X0>(_BYTE *a1@<X8>)
{
  sub_10002C014();
  result = EnvironmentValues.subscript.getter();
  *a1 = v3;
  return result;
}

uint64_t sub_10002BF2C@<X0>(_BYTE *a1@<X8>)
{
  sub_10002C014();
  result = EnvironmentValues.subscript.getter();
  *a1 = v3;
  return result;
}

unint64_t sub_10002C014()
{
  result = qword_100356638;
  if (!qword_100356638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100356638);
  }

  return result;
}

__n128 sub_10002C078(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_10002C0A4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10002C0EC(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

uint64_t sub_10002C170@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = *(v1 + 16);
  if (v4)
  {
    v5 = v4[9];
    v6 = v4[10];
    sub_1000088DC(v4 + 6, v5);
    (*(v6 + 24))(v31, v5, v6);
    v7 = sub_10002C490();
    *a1 = static HorizontalAlignment.center.getter();
    *(a1 + 8) = 0x4038000000000000;
    *(a1 + 16) = 0;
    sub_1000040A8(&qword_100356640);
    v30 = *(*(v1 + 40) + 136);
    swift_getKeyPath();
    sub_1000089B0(v31, v29);
    v8 = swift_allocObject();
    v9 = *(v1 + 80);
    *(v8 + 80) = *(v1 + 64);
    *(v8 + 96) = v9;
    v10 = *(v1 + 96);
    v11 = *(v1 + 16);
    *(v8 + 16) = *v1;
    *(v8 + 32) = v11;
    v12 = *(v1 + 48);
    *(v8 + 48) = *(v1 + 32);
    *(v8 + 64) = v12;
    *(v8 + 112) = v10;
    *(v8 + 120) = v7;
    sub_100008A18(v29, v8 + 128);

    sub_100009000(v1, v29);
    sub_1000040A8(&qword_100356648);
    sub_1000040A8(&qword_100356650);
    sub_100009274(&qword_100356658, &qword_100356648);
    sub_10002CCE8();
    sub_10002CD3C();
    ForEach<>.init(_:id:content:)();
    v13 = static Edge.Set.top.getter();
    EdgeInsets.init(_all:)();
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v22 = a1 + *(sub_1000040A8(&qword_100356688) + 36);
    *v22 = v13;
    *(v22 + 8) = v15;
    *(v22 + 16) = v17;
    *(v22 + 24) = v19;
    *(v22 + 32) = v21;
    *(v22 + 40) = 0;
    v23 = swift_allocObject();
    v24 = *(v2 + 80);
    *(v23 + 80) = *(v2 + 64);
    *(v23 + 96) = v24;
    *(v23 + 112) = *(v2 + 96);
    v25 = *(v2 + 16);
    *(v23 + 16) = *v2;
    *(v23 + 32) = v25;
    v26 = *(v2 + 48);
    *(v23 + 48) = *(v2 + 32);
    *(v23 + 64) = v26;
    v27 = (a1 + *(sub_1000040A8(&qword_100356690) + 36));
    *v27 = sub_10002CF10;
    v27[1] = v23;
    v27[2] = 0;
    v27[3] = 0;
    sub_100009000(v2, v29);
    return sub_100008964(v31);
  }

  else
  {
    type metadata accessor for UIMetrics();
    sub_100031E6C(&qword_100354D40, type metadata accessor for UIMetrics);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_10002C490()
{
  v1 = *(*(v0 + 40) + 144);
  v2 = sub_1002558F4(_swiftEmptyArrayStorage);
  if (v1 >> 62)
  {
    goto LABEL_36;
  }

  v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v28 = v3 - 1;
  if (!v3)
  {
LABEL_38:

    return v2;
  }

  while (2)
  {
    v4 = 0;
    v5 = 0;
    v6 = v1 & 0xC000000000000001;
    v27 = v3;
    while (v6)
    {
      v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v9 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        goto LABEL_30;
      }

LABEL_9:
      if (v4 >= v28)
      {

        v11 = 0;
      }

      else
      {
        if (v6)
        {
          v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if ((v9 & 0x8000000000000000) != 0)
          {
            goto LABEL_34;
          }

          if (v9 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_35;
          }

          v10 = *(v1 + 32 + 8 * v9);
        }

        v11 = v10;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v13 = sub_1001921F0(v8);
      v15 = v2[2];
      v16 = (v14 & 1) == 0;
      v17 = __OFADD__(v15, v16);
      v18 = v15 + v16;
      if (v17)
      {
        goto LABEL_32;
      }

      v19 = v14;
      if (v2[3] < v18)
      {
        sub_10008DF38(v18, isUniquelyReferenced_nonNull_native);
        v13 = sub_1001921F0(v8);
        if ((v19 & 1) != (v20 & 1))
        {
          goto LABEL_40;
        }

LABEL_22:
        if (v19)
        {
          goto LABEL_4;
        }

        goto LABEL_23;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_22;
      }

      v24 = v13;
      sub_100090E7C();
      v13 = v24;
      if (v19)
      {
LABEL_4:
        v7 = (v2[7] + 16 * v13);
        *v7 = v5;
        v7[1] = v11;

        goto LABEL_5;
      }

LABEL_23:
      v2[(v13 >> 6) + 8] |= 1 << v13;
      *(v2[6] + 8 * v13) = v8;
      v21 = (v2[7] + 16 * v13);
      *v21 = v5;
      v21[1] = v11;

      v22 = v2[2];
      v17 = __OFADD__(v22, 1);
      v23 = v22 + 1;
      if (v17)
      {
        goto LABEL_33;
      }

      v2[2] = v23;
LABEL_5:
      ++v4;
      v5 = v8;
      if (v9 == v27)
      {
        goto LABEL_38;
      }
    }

    if (v4 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_31;
    }

    v8 = *(v1 + 8 * v4 + 32);

    v9 = v4 + 1;
    if (!__OFADD__(v4, 1))
    {
      goto LABEL_9;
    }

LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    v25 = _CocoaArrayWrapper.endIndex.getter();
    v28 = v25 - 1;
    if (!__OFSUB__(v25, 1))
    {
      v3 = _CocoaArrayWrapper.endIndex.getter();
      if (!v3)
      {
        goto LABEL_38;
      }

      continue;
    }

    break;
  }

  __break(1u);
LABEL_40:
  type metadata accessor for Option();
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}