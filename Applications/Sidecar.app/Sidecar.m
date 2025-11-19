uint64_t sub_1000016A0()
{
  v0 = type metadata accessor for Logger();
  sub_1000035C0(v0, qword_100026828);
  sub_100003454(v0, qword_100026828);
  return Logger.init(subsystem:category:)();
}

id sub_10000171C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppDelegate();
  return objc_msgSendSuper2(&v2, "init");
}

uint64_t sub_100001774(char a1, uint64_t a2)
{
  v3 = v2;
  if (qword_100025DD0 != -1)
  {
    sub_100003D4C();
  }

  v6 = type metadata accessor for Logger();
  sub_100003454(v6, qword_100026828);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 67109379;
    *(v9 + 4) = a1 & 1;
    *(v9 + 8) = 2113;
    if (!a2)
    {
      Dictionary.init(dictionaryLiteral:)();
    }

    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    *(v9 + 10) = isa;
    *v10 = isa;
    _os_log_impl(&_mh_execute_header, v7, v8, "applicationDidFinishLaunching: suspended=%{BOOL}d, options=%{private}@", v9, 0x12u);
    sub_100003A50(v10);
    sub_100003E3C();
    sub_100003E3C();
  }

  return _SidecarRegisterServicePresenter(v3);
}

uint64_t sub_100001918()
{
  if (qword_100025DD8 != -1)
  {
    sub_100003D2C();
  }

  return 1;
}

uint64_t sub_100001A10(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = sub_100001A5C(a2);
  }

  else
  {
    v2 = 0;
  }

  sub_100001774(0, v2);

  return 1;
}

uint64_t sub_100001A5C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100003724(&qword_100025F80, &qword_1000178D0);
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
    v12 = *(*(a1 + 48) + 8 * v11);
    sub_1000039E0(*(a1 + 56) + 32 * v11, v34 + 8);
    *&v34[0] = v12;
    v32[0] = v34[0];
    v32[1] = v34[1];
    v33 = v35;
    *&v31[0] = v12;
    type metadata accessor for LaunchOptionsKey(0);
    v13 = v12;
    swift_dynamicCast();
    sub_1000039D0((v32 + 8), v26);
    v27 = v23;
    v28 = v24;
    v29 = v25;
    sub_1000039D0(v26, v30);
    v23 = v27;
    v24 = v28;
    v25 = v29;
    sub_1000039D0(v30, v31);
    result = AnyHashable._rawHashValue(seed:)(v2[5]);
    v14 = -1 << *(v2 + 32);
    v15 = result & ~v14;
    v16 = v15 >> 6;
    if (((-1 << v15) & ~*&v7[8 * (v15 >> 6)]) == 0)
    {
      v18 = 0;
      v19 = (63 - v14) >> 6;
      while (++v16 != v19 || (v18 & 1) == 0)
      {
        v20 = v16 == v19;
        if (v16 == v19)
        {
          v16 = 0;
        }

        v18 |= v20;
        v21 = *&v7[8 * v16];
        if (v21 != -1)
        {
          v17 = __clz(__rbit64(~v21)) + (v16 << 6);
          goto LABEL_21;
        }
      }

      goto LABEL_25;
    }

    v17 = __clz(__rbit64((-1 << v15) & ~*&v7[8 * (v15 >> 6)])) | v15 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    v5 &= v5 - 1;
    *&v7[(v17 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v17;
    v22 = v2[6] + 40 * v17;
    *v22 = v23;
    *(v22 + 16) = v24;
    *(v22 + 32) = v25;
    result = sub_1000039D0(v31, (v2[7] + 32 * v17));
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

void sub_100001E50(uint64_t a1, char a2)
{
  if (qword_100025DD8 != -1)
  {
    sub_100003D2C();
  }

  *(qword_100026840 + OBJC_IVAR____TtC7Sidecar14ServiceManager_inBackground) = a2;
  sub_100004FFC();
}

uint64_t sub_100001F00()
{
  if (qword_100025DD0 != -1)
  {
    sub_100003D4C();
  }

  v0 = type metadata accessor for Logger();
  sub_100003454(v0, qword_100026828);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    *swift_slowAlloc() = 0;
    sub_100003E1C(&_mh_execute_header, v3, v4, "=== Application Will Terminate ===");
    sub_100003E3C();
  }

  if (qword_100025DD8 != -1)
  {
    sub_100003D2C();
  }

  return sub_10000BB98();
}

id sub_100002030()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100002068(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v9 = sub_100003D6C(v8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  sub_100003DD0();
  v31 = type metadata accessor for DispatchQoS();
  v12 = sub_100003D6C(v31);
  v14 = v13;
  v16 = *(v15 + 64);
  __chkstk_darwin(v12);
  sub_100003DD0();
  v19 = v18 - v17;
  sub_1000038B0(0, &qword_100025F58, OS_dispatch_queue_ptr);
  v20 = static OS_dispatch_queue.main.getter();
  v21 = swift_allocObject();
  v21[2] = v4;
  v21[3] = a1;
  v21[4] = a2;
  v21[5] = a3;
  v21[6] = a4;
  aBlock[4] = sub_1000038A0;
  aBlock[5] = v21;
  sub_100003D98();
  sub_100003D80(COERCE_DOUBLE(1107296256));
  aBlock[2] = v22;
  aBlock[3] = &unk_100020A80;
  v23 = _Block_copy(aBlock);
  v24 = v4;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_100003DB8();
  sub_100003AB8(v25, v26);
  sub_100003724(&qword_100025F68, &qword_100017D60);
  sub_10000376C();
  sub_100003DE0();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v23);

  v27 = sub_100003E08();
  v28(v27);
  return (*(v14 + 8))(v19, v31);
}

void sub_1000022DC(uint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(id), uint64_t a5)
{
  if (qword_100025DD0 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_100003454(v9, qword_100026828);

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v26 = v13;
    *v12 = 136446210;
    *(v12 + 4) = sub_10001364C(a2, a3, &v26);
    _os_log_impl(&_mh_execute_header, v10, v11, "=== Starting Service Extension '%{public}s' ===", v12, 0xCu);
    sub_100003924(v13);
  }

  if (qword_100025DD8 != -1)
  {
    swift_once();
  }

  v14 = sub_100005758(a2, a3);
  if (v14)
  {
    v15 = v14;

    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v26 = v19;
      *v18 = 136446210;
      *(v18 + 4) = sub_10001364C(a2, a3, &v26);
      _os_log_impl(&_mh_execute_header, v16, v17, "=== Activating Service Extension '%{public}s' ===", v18, 0xCu);
      sub_100003924(v19);
    }

    sub_100005A70(v15, a4, a5);
  }

  else
  {
    sub_1000038B0(0, &qword_100025F78, NSError_ptr);
    v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = sub_100002F18(v20, v21, -103, 0, 0, 0);
    v23 = __chkstk_darwin(v22);
    __chkstk_darwin(v23);
    sub_100004220(sub_1000038F0, v24, sub_1000038F8);
    v25 = v22;
    a4(v22);
  }
}

unint64_t sub_1000026A4(uint64_t a1, void *a2)
{
  _StringGuts.grow(_:)(37);

  v4._countAndFlagsBits = a1;
  v4._object = a2;
  String.append(_:)(v4);
  v5._countAndFlagsBits = 0x64656C6961462027;
  v5._object = 0xEC0000003D3D3D20;
  String.append(_:)(v5);
  return 0xD000000000000017;
}

void sub_100002800(uint64_t a1, uint64_t a2)
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

uint64_t sub_100002864(uint64_t a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = sub_100003D6C(v2);
  v34 = v4;
  v6 = *(v5 + 64);
  __chkstk_darwin(v3);
  sub_100003DD0();
  v7 = type metadata accessor for DispatchQoS();
  v8 = sub_100003D6C(v7);
  v32 = v9;
  v33 = v8;
  v11 = *(v10 + 64);
  __chkstk_darwin(v8);
  sub_100003DD0();
  v14 = v13 - v12;
  v15 = type metadata accessor for UUID();
  v16 = sub_100003D6C(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  __chkstk_darwin(v16);
  sub_1000038B0(0, &qword_100025F58, OS_dispatch_queue_ptr);
  v21 = static OS_dispatch_queue.main.getter();
  (*(v18 + 16))(&v31 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v15);
  v22 = (*(v18 + 80) + 16) & ~*(v18 + 80);
  v23 = swift_allocObject();
  (*(v18 + 32))(v23 + v22, &v31 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0), v15);
  aBlock[4] = sub_1000036AC;
  aBlock[5] = v23;
  sub_100003D98();
  sub_100003D80(COERCE_DOUBLE(1107296256));
  aBlock[2] = v24;
  aBlock[3] = &unk_100020A08;
  v25 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_100003DB8();
  sub_100003AB8(v26, v27);
  sub_100003724(&qword_100025F68, &qword_100017D60);
  sub_10000376C();
  sub_100003DE0();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v25);

  v28 = sub_100003E08();
  v29(v28);
  return (*(v32 + 8))(v14, v33);
}

void sub_100002B54()
{
  if (qword_100025DD8 != -1)
  {
    swift_once();
  }

  sub_100007590();
}

void sub_100002C9C()
{
  if (qword_100025DD0 != -1)
  {
    sub_100003D4C();
  }

  v0 = type metadata accessor for Logger();
  sub_100003454(v0, qword_100026828);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    *swift_slowAlloc() = 0;
    sub_100003E1C(&_mh_execute_header, v3, v4, "=== Terminate (from Relay) ===");
    sub_100003E3C();
  }

  if (qword_100025DD8 != -1)
  {
    sub_100003D2C();
  }

  sub_1000079F8();
}

int main(int argc, const char **argv, const char **envp)
{
  v5 = type metadata accessor for AppDelegate();
  v6 = NSStringFromClass(v5);
  UIApplicationMain(argc, argv, 0, v6);

  return 0;
}

uint64_t sub_100002E94()
{
  v0 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = v1;
  if (v0 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v5 & 1;
}

id sub_100002F18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  Dictionary.init(dictionaryLiteral:)();
  if (a5)
  {
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;
    v30 = &type metadata for String;
    *&v29 = a4;
    *(&v29 + 1) = a5;
    sub_1000039D0(&v29, v26);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_10000FB88(v26, v9, v11, isUniquelyReferenced_nonNull_native);
  }

  if (a6)
  {
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;
    swift_getErrorValue();
    v16 = v27;
    v17 = v28;
    v30 = v28;
    v18 = sub_100003970(&v29);
    (*(*(v17 - 1) + 16))(v18, v16, v17);
    sub_1000039D0(&v29, v26);
    v19 = swift_isUniquelyReferenced_nonNull_native();
    sub_10000FB88(v26, v13, v15, v19);
  }

  v20 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v21 = String._bridgeToObjectiveC()();

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v23 = [v20 initWithDomain:v21 code:a3 userInfo:isa];

  return v23;
}

uint64_t sub_100003144()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v0 = String.hashValue.getter();

  return v0;
}

uint64_t sub_100003184()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int sub_1000031E0()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v0 = Hasher._finalize()();

  return v0;
}

uint64_t sub_100003264(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t sub_1000032E0(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

NSString sub_100003360@<X0>(void *a1@<X8>)
{
  result = sub_100003388();
  *a1 = result;
  return result;
}

NSString sub_100003388()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v0 = String._bridgeToObjectiveC()();

  return v0;
}

void sub_1000033CC(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  sub_100003400();
  *a2 = v4;
  *(a2 + 8) = v5 & 1;
}

uint64_t sub_100003408()
{
  v1 = sub_100003DFC();
  result = nullsub_1(v1, v2);
  *v0 = result;
  return result;
}

uint64_t sub_100003430(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_100002E94() & 1;
}

uint64_t sub_100003454(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_10000348C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = String._bridgeToObjectiveC()();

  *a2 = v5;
  return result;
}

uint64_t sub_1000034D4@<X0>(uint64_t *a1@<X8>)
{
  result = j___sSS10FoundationE36_unconditionallyBridgeFromObjectiveCySSSo8NSStringCSgFZ(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_100003504(uint64_t a1)
{
  v2 = sub_100003AB8(&qword_100025F90, type metadata accessor for LaunchOptionsKey);
  v3 = sub_100003AB8(&qword_100025FC0, type metadata accessor for LaunchOptionsKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t *sub_1000035C0(uint64_t a1, uint64_t *a2)
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

uint64_t sub_100003624()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

void sub_1000036AC()
{
  v0 = *(*(type metadata accessor for UUID() - 8) + 80);

  sub_100002B54();
}

uint64_t sub_10000370C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100003724(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_10000376C()
{
  result = qword_100025F70;
  if (!qword_100025F70)
  {
    sub_1000037D0(&qword_100025F68, &qword_100017D60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100025F70);
  }

  return result;
}

uint64_t sub_1000037D0(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100003818()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100003858()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1000038B0(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_1000038F8()
{
  v1 = *(v0 + 16);
  swift_errorRetain();
  return v1;
}

uint64_t sub_100003924(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t *sub_100003970(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

_OWORD *sub_1000039D0(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_1000039E0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100003A50(uint64_t a1)
{
  v2 = sub_100003724(&qword_100025F88, &qword_1000178D8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100003AB8(unint64_t *a1, void (*a2)(uint64_t))
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

__n128 sub_100003B04(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_100003B10(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100003B30(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 32) = v3;
  return result;
}

__n128 sub_100003C48(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_100003C54(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100003C74(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

void sub_100003CC4(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_100003D2C()
{

  return swift_once();
}

uint64_t sub_100003D4C()
{

  return swift_once();
}

void sub_100003E1C(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t sub_100003E3C()
{
}

void sub_100003E58(uint64_t (*a1)(void))
{
  v2 = _convertErrorToNSError(_:)();
  v3 = [v2 localizedDescription];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  v7 = a1();
  if (v8)
  {
    v9 = v7;
    v10 = v8;
    v11 = v2;

    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      *v14 = 136446979;
      v15 = sub_10001364C(v9, v10, &v35);

      *(v14 + 4) = v15;
      *(v14 + 12) = 2082;
      v16 = [v11 domain];
      v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v18 = v4;
      v20 = v19;

      v21 = sub_10001364C(v17, v20, &v35);

      *(v14 + 14) = v21;
      *(v14 + 22) = 2048;
      v22 = [v11 code];

      *(v14 + 24) = v22;
      *(v14 + 32) = 2081;
      v23 = sub_10001364C(v18, v6, &v35);

      *(v14 + 34) = v23;
      _os_log_impl(&_mh_execute_header, v12, v13, "%{public}s: %{public}s (%ld) %{private}s", v14, 0x2Au);
LABEL_6:
      swift_arrayDestroy();
      sub_100003E3C();
      sub_100003E3C();

      sub_100004604();
      return;
    }
  }

  else
  {
    v11 = v2;

    v12 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v12, v24))
    {
      v25 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      *v25 = 136446723;
      v26 = v4;
      v27 = [v11 domain];
      v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v30 = v29;

      v31 = sub_10001364C(v28, v30, &v35);

      *(v25 + 4) = v31;
      *(v25 + 12) = 2048;
      v32 = [v11 code];

      *(v25 + 14) = v32;
      *(v25 + 22) = 2081;
      v33 = sub_10001364C(v26, v6, &v35);

      *(v25 + 24) = v33;
      _os_log_impl(&_mh_execute_header, v12, v24, "%{public}s (%ld) %{private}s", v25, 0x20u);
      goto LABEL_6;
    }
  }

  sub_100004604();
}

void sub_100004220(uint64_t (*a1)(void), uint64_t a2, void (*a3)(void))
{
  a3();
  v4 = _convertErrorToNSError(_:)();

  v5 = [v4 localizedDescription];
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  v9 = a1();
  if (v10)
  {
    v11 = v9;
    v12 = v10;
    v35 = v4;

    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      *v15 = 136446979;
      v16 = sub_10001364C(v11, v12, &v36);

      *(v15 + 4) = v16;
      *(v15 + 12) = 2082;
      v17 = [v35 domain];
      v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v20 = v19;

      v21 = sub_10001364C(v18, v20, &v36);

      *(v15 + 14) = v21;
      *(v15 + 22) = 2048;
      v22 = [v35 code];

      *(v15 + 24) = v22;
      *(v15 + 32) = 2081;
      v23 = sub_10001364C(v6, v8, &v36);

      *(v15 + 34) = v23;
      _os_log_impl(&_mh_execute_header, v13, v14, "%{public}s: %{public}s (%ld) %{private}s", v15, 0x2Au);
LABEL_6:
      swift_arrayDestroy();
      sub_100003E3C();
      sub_100003E3C();

      sub_100004604();
      return;
    }
  }

  else
  {
    v35 = v4;

    v13 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v13, v24))
    {
      v25 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      *v25 = 136446723;
      v26 = [v35 domain];
      v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v29 = v28;

      v30 = sub_10001364C(v27, v29, &v36);

      *(v25 + 4) = v30;
      *(v25 + 12) = 2048;
      v31 = [v35 code];

      *(v25 + 14) = v31;
      *(v25 + 22) = 2081;
      v32 = sub_10001364C(v6, v8, &v36);

      *(v25 + 24) = v32;
      _os_log_impl(&_mh_execute_header, v13, v24, "%{public}s (%ld) %{private}s", v25, 0x20u);
      goto LABEL_6;
    }
  }

  sub_100004604();
}

uint64_t sub_100004620()
{
  result = swift_weakLoadStrong();
  if (result)
  {
    if (qword_100025DD8 != -1)
    {
      sub_100003D2C();
    }

    sub_100008190();
  }

  return result;
}

id sub_100004740(void *a1)
{
  v1 = [objc_opt_self() interfaceWithProtocol:*a1];

  return v1;
}

id sub_1000047C8(uint64_t a1, uint64_t a2, void *a3)
{
  swift_weakInit();
  if (a2)
  {
    v6 = String._bridgeToObjectiveC()();
  }

  else
  {
    v6 = 0;
  }

  v9.receiver = v3;
  v9.super_class = type metadata accessor for HostRemoteViewController();
  v7 = objc_msgSendSuper2(&v9, "initWithNibName:bundle:", v6, a3);

  return v7;
}

id sub_1000048C8(void *a1)
{
  swift_weakInit();
  v5.receiver = v1;
  v5.super_class = type metadata accessor for HostRemoteViewController();
  v3 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);

  if (v3)
  {
  }

  return v3;
}

id sub_10000496C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HostRemoteViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1000049D4(uint64_t a1, uint64_t a2, void (**a3)(void))
{
  if (swift_weakLoadStrong())
  {
    _Block_copy(a3);
    if (qword_100025DD8 != -1)
    {
      swift_once();
    }

    _Block_copy(a3);
    sub_100009338();

    _Block_release(a3);
  }

  else
  {
    a3[2](a3);
  }

  _Block_release(a3);
}

uint64_t sub_100004B30(char a1)
{
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = result;
    if (qword_100025DD8 != -1)
    {
      sub_100003D2C();
    }

    *(v3 + 64) = a1 & 1;
    sub_10000A794();
  }

  return result;
}

uint64_t sub_100004C1C(uint64_t a1)
{
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = result;
    if (qword_100025DD8 != -1)
    {
      sub_100003D2C();
    }

    *(v3 + 72) = a1;
    sub_10000A828();
  }

  return result;
}

uint64_t sub_100004D04()
{
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    if (qword_100025DD8 != -1)
    {
      sub_100003D2C();
    }

    sub_10000BD88(v1);
  }

  return result;
}

uint64_t sub_100004DD0(char a1)
{
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = result;
    if (qword_100025DD8 != -1)
    {
      sub_100003D2C();
    }

    sub_10000BE84(v3, a1 & 1);
  }

  return result;
}

id sub_100004F08()
{
  sub_100012380();
  v5 = type metadata accessor for SecureWindow();
  v1 = sub_10001236C();
  return objc_msgSendSuper2(v2, v3, v1, v0, v5);
}

id sub_100004FCC()
{
  result = [objc_allocWithZone(type metadata accessor for ServiceManager()) init];
  qword_100026840 = result;
  return result;
}

void sub_100004FFC()
{
  v2 = OBJC_IVAR____TtC7Sidecar14ServiceManager__activeExtensions;
  sub_100012018();
  v3 = *(v0 + v2);
  if (v3 >> 62)
  {
    if (!_CocoaArrayWrapper.endIndex.getter())
    {
      return;
    }
  }

  else if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return;
  }

  if ((v3 & 0xC000000000000001) != 0)
  {

    sub_1000123F4();
    sub_100012174();
  }

  else
  {
    sub_100012334();
    if (!v4)
    {
      __break(1u);
      return;
    }

    sub_100012424();
  }

  v5 = *(v1 + 56);
  v6 = v5;

  if (v5)
  {
    v7 = [v6 serviceViewControllerProxy];

    swift_unknownObjectRelease();
    if (v7)
    {
      [v7 sidecarServiceSetBackgrounded:*(v0 + OBJC_IVAR____TtC7Sidecar14ServiceManager_inBackground)];
      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_100005108()
{
  v1 = OBJC_IVAR____TtC7Sidecar14ServiceManager____lazy_storage____showDebugColors;
  v2 = *(v0 + OBJC_IVAR____TtC7Sidecar14ServiceManager____lazy_storage____showDebugColors);
  if (v2 == 2)
  {
    v3 = [objc_opt_self() standardUserDefaults];
    v4 = String._bridgeToObjectiveC()();
    LOBYTE(v2) = [v3 BOOLForKey:v4];

    *(v0 + v1) = v2;
  }

  return v2 & 1;
}

uint64_t sub_1000051B8()
{
  v0 = type metadata accessor for Logger();
  sub_1000035C0(v0, qword_100026848);
  sub_100003454(v0, qword_100026848);
  return Logger.init(subsystem:category:)();
}

char *sub_100005234()
{
  v0[OBJC_IVAR____TtC7Sidecar14ServiceManager_inBackground] = 0;
  *&v0[OBJC_IVAR____TtC7Sidecar14ServiceManager__activeExtensions] = &_swiftEmptyArrayStorage;
  *&v0[OBJC_IVAR____TtC7Sidecar14ServiceManager__secureScreen] = 0;
  v1 = OBJC_IVAR____TtC7Sidecar14ServiceManager__baseViewController;
  type metadata accessor for ColorUIViewController();
  *&v0[v1] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v0[OBJC_IVAR____TtC7Sidecar14ServiceManager____lazy_storage____showDebugColors] = 2;
  *&v0[OBJC_IVAR____TtC7Sidecar14ServiceManager_pendingActiveServices] = &_swiftEmptyDictionarySingleton;
  *&v0[OBJC_IVAR____TtC7Sidecar14ServiceManager_readyServiceUUIDs] = &_swiftEmptySetSingleton;
  v0[OBJC_IVAR____TtC7Sidecar14ServiceManager__wantsVolumeButtonEvents] = 0;
  *&v0[OBJC_IVAR____TtC7Sidecar14ServiceManager__backgroundStyle] = 0;
  v2 = &v0[OBJC_IVAR____TtC7Sidecar14ServiceManager__animationConfig];
  v2[1] = 0;
  v2[2] = 0;
  *v2 = 0;
  v3 = [objc_opt_self() mainScreen];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = [objc_allocWithZone(type metadata accessor for SecureWindow()) initWithFrame:{v5, v7, v9, v11}];
  *&v0[OBJC_IVAR____TtC7Sidecar14ServiceManager_window] = v12;
  [v12 setHidden:0];
  v13 = [objc_allocWithZone(type metadata accessor for ServiceNavigationController()) initWithRootViewController:*&v0[v1]];
  *&v0[OBJC_IVAR____TtC7Sidecar14ServiceManager_navigationController] = v13;
  v14 = [v13 navigationBar];
  [v14 setHidden:1];

  v15 = [objc_opt_self() currentDevice];
  [v15 beginGeneratingDeviceOrientationNotifications];

  v49.receiver = v0;
  v49.super_class = type metadata accessor for ServiceManager();
  v16 = objc_msgSendSuper2(&v49, "init");
  v17 = OBJC_IVAR____TtC7Sidecar14ServiceManager_navigationController;
  v18 = *&v16[OBJC_IVAR____TtC7Sidecar14ServiceManager_navigationController];
  v19 = v16;
  [v18 setDelegate:v19];
  v20 = [objc_opt_self() defaultCenter];
  v21 = OBJC_IVAR____TtC7Sidecar14ServiceManager_window;
  [*&v19[OBJC_IVAR____TtC7Sidecar14ServiceManager_window] setRootViewController:*&v16[v17]];
  if ((sub_100005108() & 1) == 0)
  {
    goto LABEL_4;
  }

  result = [*&v19[OBJC_IVAR____TtC7Sidecar14ServiceManager__baseViewController] view];
  if (result)
  {
    v23 = result;
    v24 = [objc_opt_self() greenColor];
    [v23 setBackgroundColor:v24];

LABEL_4:
    [*&v19[v21] makeKeyAndVisible];
    v25 = sub_100011FDC();
    [v25 v26];
    v27 = sub_100011FDC();
    [v27 v28];
    v29 = sub_100011FDC();
    sub_10001240C(v29, v30, v31, v32, v33);
    v34 = sub_100011FDC();
    sub_10001240C(v34, v35, v36, v37, v38);
    v39 = sub_100011FDC();
    sub_10001240C(v39, v40, v41, v42, v43);
    v44 = sub_100011FDC();
    sub_10001240C(v44, v45, v46, v47, v48);

    return v19;
  }

  __break(1u);
  return result;
}

id sub_100005608()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver:v0];

  v3.receiver = v0;
  v3.super_class = type metadata accessor for ServiceManager();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_100005758(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v5 = sub_100003D6C(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v5);
  sub_100003DD0();
  v12 = v11 - v10;
  sub_1000038B0(0, &qword_1000264F0, NSExtension_ptr);

  v13 = sub_10000598C(a1, a2);
  v16 = v13;
  if (!v13)
  {
    return 0;
  }

  if (qword_100025DE0 != -1)
  {
    sub_100011FA8();
  }

  v17 = sub_100003454(v4, qword_100026848);
  (*(v7 + 16))(v12, v17, v4);
  v18 = type metadata accessor for ServiceExtension();
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  swift_allocObject();
  v21 = v16;
  v22 = sub_100012174();
  v14 = sub_100012480(v22, 0);

  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = sub_100012284();
    v26 = sub_100012200();
    v32 = v26;
    *v25 = 136446210;
    v27 = *(v14 + 16);
    v28 = *(v14 + 24);

    v29 = sub_10001364C(v27, v28, &v32);

    *(v25 + 4) = v29;
    sub_1000120DC(&_mh_execute_header, v30, v31, "Found Service Extension '%{public}s'");
    sub_100003924(v26);
    sub_100011FFC();
    sub_100012058();
  }

  else
  {
  }

  return v14;
}

id sub_10000598C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = String._bridgeToObjectiveC()();
  }

  else
  {
    v2 = 0;
  }

  v7 = 0;
  v3 = [swift_getObjCClassFromMetadata() extensionWithIdentifier:v2 error:&v7];

  if (v3)
  {
    v4 = v7;
  }

  else
  {
    v5 = v7;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v3;
}

uint64_t sub_100005A70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100012340();
  v7 = swift_allocObject();
  v7[2] = a1;
  v7[3] = a2;
  v7[4] = a3;
  v7[5] = v3;

  v8 = v3;
  sub_100012708(sub_100011B14, v7);
}

uint64_t sub_100005B0C(char a1, void *a2, void (*a3)(uint64_t), uint64_t a4, char *a5)
{
  v41 = a4;
  v42 = a5;
  v8 = sub_100003724(&qword_1000264A0, &qword_100017C60);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v34 - v10;
  v12 = type metadata accessor for UUID();
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12);
  v15 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v34 - v17;
  v20 = a2[2];
  v19 = a2[3];
  if ((a1 & 1) == 0)
  {
    v22 = a2[3];

    goto LABEL_5;
  }

  v40 = v16;
  v21 = OBJC_IVAR____TtC7Sidecar16ServiceExtension_uuid;
  swift_beginAccess();
  sub_10000F4D4(a2 + v21, v11, &qword_1000264A0, &qword_100017C60);
  if (sub_10000F4A8(v11, 1, v12) == 1)
  {

    sub_1000117D8(v11, &qword_1000264A0, &qword_100017C60);
LABEL_5:
    sub_100005F18(0, a3, v41, v42, a2, v20, v19);
  }

  v39 = *(v40 + 32);
  v39(v18, v11, v12);
  v24 = a2[7];
  if (!v24)
  {

    goto LABEL_10;
  }

  v38 = v24;
  v25 = [v38 serviceViewControllerProxy];

  swift_unknownObjectRelease();
  v38 = v25;
  if (!v25)
  {
LABEL_10:
    sub_100006390(v42, v20, v19, v18, a2, a3, v41);

    v26 = v40;
    return (*(v26 + 8))(v18, v12);
  }

  v37 = a3;
  v26 = v40;
  v27 = v40 + 16;
  (*(v40 + 16))(v15, v18, v12);
  v35 = (*(v27 + 64) + 40) & ~*(v27 + 64);
  v28 = (v13 + v35 + 7) & 0xFFFFFFFFFFFFFFF8;
  v36 = (v28 + 23) & 0xFFFFFFFFFFFFFFF8;
  v29 = swift_allocObject();
  *(v29 + 2) = v42;
  *(v29 + 3) = v20;
  *(v29 + 4) = v19;
  v39(&v29[v35], v15, v12);
  v30 = &v29[v28];
  v31 = v41;
  *v30 = v37;
  v30[1] = v31;
  *&v29[v36] = a2;
  aBlock[4] = sub_100011C08;
  aBlock[5] = v29;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006FE8;
  aBlock[3] = &unk_100020F70;
  v32 = _Block_copy(aBlock);
  v33 = v42;

  [v38 sidecarServiceShouldPresentWithCompletion:v32];
  _Block_release(v32);
  swift_unknownObjectRelease();
  return (*(v26 + 8))(v18, v12);
}

uint64_t sub_100005F18(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  v44 = a6;
  v45 = a7;
  v11 = sub_100003724(&qword_1000264A0, &qword_100017C60);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v42 - v13;
  v15 = type metadata accessor for UUID();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(v15);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v42 - v21;
  a2(a1);
  v23 = OBJC_IVAR____TtC7Sidecar14ServiceManager__activeExtensions;
  swift_beginAccess();
  v46 = a4;
  result = sub_10000BB74(*(a4 + v23));
  if (!result)
  {
    v25 = v44;
    v26 = v45;
    v43 = v22;
    v27 = OBJC_IVAR____TtC7Sidecar16ServiceExtension_uuid;
    swift_beginAccess();
    sub_10000F4D4(a5 + v27, v14, &qword_1000264A0, &qword_100017C60);
    if (sub_10000F4A8(v14, 1, v15) == 1)
    {
      v28 = v43;
      v29 = v16;
      if (qword_100025DE8 != -1)
      {
        swift_once();
      }

      v30 = sub_100003454(v15, qword_100026190);
      (*(v16 + 16))(v28, v30, v15);
      if (sub_10000F4A8(v14, 1, v15) != 1)
      {
        sub_1000117D8(v14, &qword_1000264A0, &qword_100017C60);
      }
    }

    else
    {
      v29 = v16;
      v28 = v43;
      (*(v16 + 32))(v43, v14, v15);
    }

    v44 = a5;
    if (qword_100025DE0 != -1)
    {
      swift_once();
    }

    v31 = type metadata accessor for Logger();
    sub_100003454(v31, qword_100026848);
    v32 = v20;
    (*(v29 + 16))(v20, v28, v15);

    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      *v35 = 136446466;
      *(v35 + 4) = sub_10001364C(v25, v26, &v47);
      *(v35 + 12) = 2082;
      v36 = UUID.uuidString.getter();
      v37 = v32;
      v39 = v38;
      v40 = *(v29 + 8);
      v40(v37, v15);
      v41 = sub_10001364C(v36, v39, &v47);

      *(v35 + 14) = v41;
      _os_log_impl(&_mh_execute_header, v33, v34, "Service Extension '%{public}s' %{public}s Activation Failed", v35, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      v40 = *(v29 + 8);
      v40(v32, v15);
    }

    sub_1000079F8();
    return (v40)(v43, v15);
  }

  return result;
}

uint64_t sub_100006390(char *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void), uint64_t a7)
{
  v59 = a7;
  v60 = a6;
  v58 = a5;
  v61 = a2;
  v62 = a1;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v55 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v51 - v13;
  if (qword_100025DE0 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_100003454(v15, qword_100026848);
  v53 = *(v10 + 16);
  v54 = v10 + 16;
  v53(v14, a4, v9);

  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();

  v18 = os_log_type_enabled(v16, v17);
  v56 = v10;
  v57 = a3;
  if (v18)
  {
    v19 = swift_slowAlloc();
    v52 = a4;
    v20 = v19;
    v51 = swift_slowAlloc();
    v64[0] = v51;
    *v20 = 136446466;
    *(v20 + 4) = sub_10001364C(v61, a3, v64);
    *(v20 + 12) = 2082;
    v21 = UUID.uuidString.getter();
    v22 = v11;
    v24 = v23;
    (*(v10 + 8))(v14, v9);
    v25 = sub_10001364C(v21, v24, v64);
    v11 = v22;

    *(v20 + 14) = v25;
    _os_log_impl(&_mh_execute_header, v16, v17, "Loading Service Extension '%{public}s' %{public}s", v20, 0x16u);
    swift_arrayDestroy();

    a4 = v52;
  }

  else
  {

    (*(v10 + 8))(v14, v9);
  }

  v26 = v9;
  v27 = OBJC_IVAR____TtC7Sidecar14ServiceManager_readyServiceUUIDs;
  v28 = v62;
  swift_beginAccess();
  v29 = *&v28[v27];

  v30 = sub_10000682C(a4, v29);

  if (v30)
  {
    sub_100007054();
  }

  else
  {
    sub_1000038B0(0, &qword_100025F58, OS_dispatch_queue_ptr);
    v31 = static OS_dispatch_queue.main.getter();
    v32 = v55;
    v53(v55, a4, v26);
    v33 = v56;
    v34 = (*(v56 + 80) + 40) & ~*(v56 + 80);
    v35 = (v11 + v34 + 7) & 0xFFFFFFFFFFFFFFF8;
    v36 = swift_allocObject();
    v37 = v26;
    v38 = v36;
    v39 = v61;
    v40 = v62;
    v36[2] = v62;
    v36[3] = v39;
    v36[4] = v57;
    (*(v33 + 32))(v36 + v34, v32, v37);
    v41 = v58;
    *(v38 + v35) = v58;

    v42 = v41;
    v43 = v40;

    OS_dispatch_queue.once(_:closure:)();
    v45 = v44;

    v46 = *(v42 + 88);
    *(v42 + 88) = v45;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    v47 = OBJC_IVAR____TtC7Sidecar14ServiceManager_pendingActiveServices;
    swift_beginAccess();

    v48 = *&v43[v47];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v63 = *&v43[v47];
    sub_10000FCCC(v42, a4, isUniquelyReferenced_nonNull_native);
    *&v43[v47] = v63;
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  return v60(0);
}

BOOL sub_10000682C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(a2 + 16))
  {
    return 0;
  }

  v9 = *(a2 + 40);
  sub_100011830(&qword_1000264D8);
  v18 = a1;
  v10 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v11 = a2 + 56;
  v19 = a2;
  v12 = ~(-1 << *(a2 + 32));
  do
  {
    v13 = v10 & v12;
    v14 = (1 << (v10 & v12)) & *(v11 + (((v10 & v12) >> 3) & 0xFFFFFFFFFFFFFF8));
    v15 = v14 != 0;
    if (!v14)
    {
      break;
    }

    (*(v5 + 16))(v8, *(v19 + 48) + *(v5 + 72) * v13, v4);
    sub_100011830(&qword_1000264C8);
    v16 = dispatch thunk of static Equatable.== infix(_:_:)();
    (*(v5 + 8))(v8, v4);
    v10 = v13 + 1;
  }

  while ((v16 & 1) == 0);
  return v15;
}

void sub_100006A08(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v25 = a2;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100025DE0 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_100003454(v14, qword_100026848);
  (*(v10 + 16))(v13, a4, v9);

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v24[0] = a1;
    v18 = v17;
    v19 = swift_slowAlloc();
    v24[1] = a5;
    v26 = v19;
    *v18 = 136446466;
    *(v18 + 4) = sub_10001364C(v25, a3, &v26);
    *(v18 + 12) = 2082;
    v20 = UUID.uuidString.getter();
    v22 = v21;
    (*(v10 + 8))(v13, v9);
    v23 = sub_10001364C(v20, v22, &v26);

    *(v18 + 14) = v23;
    _os_log_impl(&_mh_execute_header, v15, v16, "Service Extension '%{public}s' %{public}s Timed Out (Activating Anyway)", v18, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    (*(v10 + 8))(v13, v9);
  }

  sub_100007054();
}

uint64_t sub_100006CA4(uint64_t a1, char *a2, uint64_t a3, unint64_t a4, uint64_t a5, void (*a6)(uint64_t), uint64_t a7, uint64_t a8)
{
  v41 = a7;
  v15 = type metadata accessor for UUID();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v38 = a2;
    v39 = a6;
    v40 = a3;
    swift_errorRetain();
    if (qword_100025DE0 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_100003454(v20, qword_100026848);
    (*(v16 + 16))(v19, a5, v15);

    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v37 = a8;
      v24 = v23;
      v35 = swift_slowAlloc();
      v42 = v35;
      *v24 = 136446466;
      *(v24 + 4) = sub_10001364C(v40, a4, &v42);
      *(v24 + 12) = 2082;
      v25 = UUID.uuidString.getter();
      v36 = a4;
      v27 = v26;
      (*(v16 + 8))(v19, v15);
      v28 = sub_10001364C(v25, v27, &v42);
      a4 = v36;

      *(v24 + 14) = v28;
      v29 = v22;
      v30 = v40;
      _os_log_impl(&_mh_execute_header, v21, v29, "Service Extension '%{public}s' %{public}s Declined Presentation", v24, 0x16u);
      swift_arrayDestroy();

      a8 = v37;

      v31 = v39;
    }

    else
    {

      (*(v16 + 8))(v19, v15);
      v31 = v39;
      v30 = v40;
    }

    v34 = v38;
    swift_errorRetain();
    sub_100005F18(a1, v31, v41, v34, a8, v30, a4);
  }

  else
  {
    v32 = v41;

    return sub_100006390(a2, a3, a4, a5, a8, a6, v32);
  }
}

void sub_100006FE8(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

void sub_100007054()
{
  sub_1000121B0();
  v2 = v1;
  v4 = v3;
  v5 = sub_100003724(&qword_1000264A0, &qword_100017C60);
  sub_100012084(v5);
  v7 = *(v6 + 64);
  sub_10001214C();
  __chkstk_darwin(v8);
  v33 = &v32 - v9;
  v10 = type metadata accessor for UUID();
  v11 = sub_100003D6C(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  __chkstk_darwin(v11);
  sub_100003DD0();
  v18 = v17 - v16;
  if (v4[11])
  {
    v19 = v4[11];
    swift_getObjectType();
    swift_unknownObjectRetain();
    OS_dispatch_source.cancel()();
    swift_unknownObjectRelease();
    v20 = v4[11];
    v4[11] = 0;
    swift_unknownObjectRelease();
  }

  if (qword_100025DE0 != -1)
  {
    sub_100011FA8();
  }

  v21 = type metadata accessor for Logger();
  sub_1000120C4(v21, qword_100026848);
  v22 = *(v13 + 16);
  v34 = v2;
  v22(v18, v2, v10);

  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = sub_100012198();
    v32 = v0;
    v26 = v25;
    v35 = sub_100012180();
    *v26 = 136446466;
    *(v26 + 4) = sub_10001364C(v4[2], v4[3], &v35);
    *(v26 + 12) = 2082;
    v27 = UUID.uuidString.getter();
    (*(v13 + 8))(v18, v10);
    v28 = sub_100012310();
    sub_10001364C(v28, v29, v30);
    sub_100012260();

    *(v26 + 14) = v27;
    _os_log_impl(&_mh_execute_header, v23, v24, "Service Extension '%{public}s' %{public}s Activated", v26, 0x16u);
    swift_arrayDestroy();
    sub_100003E3C();
    sub_100003E3C();
  }

  else
  {

    (*(v13 + 8))(v18, v10);
  }

  sub_10001229C();
  v31 = v33;
  sub_100010014(v34, v33);
  sub_1000117D8(v31, &qword_1000264A0, &qword_100017C60);
  swift_endAccess();
  sub_10000733C(v4);
  sub_1000121C8();
}

void sub_10000733C(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC7Sidecar14ServiceManager__activeExtensions;
  swift_beginAccess();
  v5 = *(v1 + v4);
  if (!sub_10000BB74(v5))
  {
    goto LABEL_8;
  }

  if ((v5 & 0xC000000000000001) != 0)
  {
    goto LABEL_19;
  }

  if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v6 = *(v5 + 32);

    while (1)
    {
      v7 = *(v6 + 56);
      v8 = v7;

      if (v7)
      {
        v9 = [v8 serviceViewControllerProxy];

        swift_unknownObjectRelease();
        if (v9)
        {
          [v9 sidecarServiceSetActive:0];
          swift_unknownObjectRelease();
        }
      }

LABEL_8:
      v10 = *(v2 + v4);
      if (sub_10000BB74(v10))
      {
        if ((v10 & 0xC000000000000001) != 0)
        {

          v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (!*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_22;
          }

          v11 = *(v10 + 32);
        }

        v12 = *(v11 + 56);
        v13 = v12;

        if (v12)
        {
          v14 = [v13 serviceViewControllerProxy];

          swift_unknownObjectRelease();
          if (v14)
          {
            [v14 sidecarServiceSetBackgrounded:1];
            swift_unknownObjectRelease();
          }
        }
      }

      swift_beginAccess();
      sub_100010DD4(0, *(v2 + v4));

      sub_100010E2C(0, 0, a1);
      swift_endAccess();
      v15 = *(a1 + 56);
      if (!v15 || ([v15 supportedInterfaceOrientations] & 0x8000000000000000) == 0)
      {
        break;
      }

      __break(1u);
LABEL_19:

      v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    SidecarServicePresenterReady();
    sub_10000D1F4(a1);
  }

  else
  {
    __break(1u);
LABEL_22:
    __break(1u);
  }
}

void sub_100007590()
{
  sub_1000121B0();
  v2 = v1;
  v3 = type metadata accessor for UUID();
  v4 = sub_100003D6C(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  __chkstk_darwin(v4);
  sub_100011FEC();
  v11 = (v9 - v10);
  v13 = __chkstk_darwin(v12);
  v15 = &v46 - v14;
  v16 = __chkstk_darwin(v13);
  v18 = &v46 - v17;
  __chkstk_darwin(v16);
  v20 = &v46 - v19;
  sub_10001229C();
  v21 = sub_10000FA3C(v2);
  swift_endAccess();
  if (v21)
  {
    if (qword_100025DE0 != -1)
    {
      sub_100011FA8();
    }

    v22 = type metadata accessor for Logger();
    sub_1000120C4(v22, qword_100026848);
    (*(v6 + 16))(v20, v2, v3);

    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = sub_100012198();
      v26 = sub_100012180();
      v51 = v2;
      *v25 = 136446466;
      v52 = v0;
      v53 = v26;
      v27 = *(v21 + 16);
      v28 = *(v21 + 24);

      v29 = sub_10001231C();
      sub_10001364C(v29, v30, v31);
      sub_10001226C();

      *(v25 + 4) = v27;
      *(v25 + 12) = 2082;
      v32 = UUID.uuidString.getter();
      (*(v6 + 8))(v20, v3);
      v33 = sub_10001231C();
      sub_10001364C(v33, v34, v35);
      sub_10001226C();

      *(v25 + 14) = v32;
      _os_log_impl(&_mh_execute_header, v23, v24, "Service Extension '%{public}s' %{public}s Ready", v25, 0x16u);
      swift_arrayDestroy();
      sub_100003E3C();
      sub_100011FFC();
    }

    else
    {

      (*(v6 + 8))(v20, v3);
    }

    sub_100007054();
  }

  else
  {
    v52 = v0;
    if (qword_100025DE0 != -1)
    {
      sub_100011FA8();
    }

    v36 = type metadata accessor for Logger();
    sub_1000120C4(v36, qword_100026848);
    v50 = *(v6 + 16);
    v51 = v2;
    v50(v18, v2, v3);
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = sub_100012284();
      v47 = v39;
      v49 = sub_100012200();
      v53 = v49;
      *v39 = 136446210;
      v48 = v38;
      v46 = UUID.uuidString.getter();
      v41 = v40;
      v42 = sub_100012224();
      v2(v42);
      v43 = sub_10001364C(v46, v41, &v53);

      v44 = v47;
      *(v47 + 1) = v43;
      _os_log_impl(&_mh_execute_header, v37, v48, "Service Extension %{public}s Ready (Not Loaded)", v44, 0xCu);
      sub_100003924(v49);
      sub_100003E3C();
      sub_100003E3C();
    }

    else
    {

      v45 = sub_100012224();
      v2(v45);
    }

    v50(v11, v51, v3);
    sub_10001229C();
    sub_1000110EC(v15, v11);
    (v2)(v15, v3);
    swift_endAccess();
  }

  sub_1000121C8();
}

void sub_1000079F8()
{
  sub_1000121B0();
  v2 = v1;
  v3 = type metadata accessor for Logger();
  v4 = sub_100003D6C(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v4);
  v52 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v9);
  v12 = &v49 - v11;
  v13 = __chkstk_darwin(v10);
  __chkstk_darwin(v13);
  v15 = &v49 - v14;
  v57 = 0;
  if (SBSGetScreenLockStatus())
  {
    v16 = "sHandle8@NSError16";
    v17 = 0xD000000000000018;
LABEL_3:
    v55 = v17;
    v53 = 1;
    goto LABEL_12;
  }

  if (v2)
  {
    v18 = *(v2 + 16) == 0xD000000000000023 && 0x8000000100018510 == *(v2 + 24);
    if (v18 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && *(v0 + OBJC_IVAR____TtC7Sidecar14ServiceManager_inBackground) != 1)
    {
      v16 = "r.extension.display";
      v17 = 0xD000000000000021;
      goto LABEL_3;
    }
  }

  v53 = 0;
  v16 = "Returning to Screen Lock";
  v55 = 0xD000000000000010;
LABEL_12:
  v19 = v16 | 0x8000000000000000;
  if (qword_100025DE0 != -1)
  {
    sub_100011FA8();
  }

  v20 = sub_100003454(v3, qword_100026848);
  v21 = *(v6 + 16);
  v21(v15, v20, v3);
  v22 = sub_10001231C();
  (v21)(v22);
  sub_1000122CC();
  (v21)();
  v23 = *(v6 + 80);
  v54 = v12;
  v24 = (v8 + ((v23 + 16) & ~v23) + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  v56 = v15;
  v50 = *(v6 + 32);
  v51 = (v23 + 16) & ~v23;
  v26 = v25;
  sub_1000122CC();
  v27();
  v28 = (v26 + v24);
  *v28 = v55;
  v28[1] = v19;
  if (v53)
  {
    v29 = *(v6 + 8);
    v55 = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v29(v54, v3);
    v30 = [objc_allocWithZone(SBSLockScreenService) init];
    v31 = v52;
    v21(v52, v56, v3);
    v32 = swift_allocObject();
    v50(v32 + v51, v31, v3);
    v33 = v29;
    *(v32 + v24) = v30;
    v34 = (v32 + ((v24 + 15) & 0xFFFFFFFFFFFFFFF8));
    *v34 = sub_10001190C;
    v34[1] = v26;
    v58[4] = sub_100011A34;
    v58[5] = v32;
    v58[0] = _NSConcreteStackBlock;
    v58[1] = 1107296256;
    v58[2] = sub_100011FA0;
    v58[3] = &unk_100020EF8;
    v35 = _Block_copy(v58);
    v36 = v30;

    [v36 lockDeviceAnimated:0 withCompletion:v35];
    _Block_release(v35);

LABEL_20:
    v48 = sub_100012310();
    v33(v48);
    sub_1000121C8();
    return;
  }

  v37 = v6;
  v38 = v19;

  v39 = v54;
  v40 = Logger.logObject.getter();
  v41 = static os_log_type_t.default.getter();
  if (sub_100012158(v41))
  {
    v42 = sub_100012284();
    v43 = sub_100012200();
    v58[0] = v43;
    *v42 = 136446210;
    *(v42 + 4) = sub_10001364C(v55, v38, v58);
    sub_100012218();
    _os_log_impl(v44, v45, v46, v47, v42, 0xCu);
    sub_100003924(v43);
    sub_100003E3C();
    v39 = v54;
    sub_100003E3C();
  }

  if (UIApp)
  {
    [UIApp terminateWithSuccess];

    v33 = *(v37 + 8);
    (v33)(v39, v3);
    goto LABEL_20;
  }

  __break(1u);
}

id sub_100007F50(uint64_t a1, uint64_t a2, unint64_t a3)
{

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v10 = v8;
    *v7 = 136446210;
    *(v7 + 4) = sub_10001364C(a2, a3, &v10);
    _os_log_impl(&_mh_execute_header, v5, v6, "Idle Exiting: %{public}s", v7, 0xCu);
    sub_100003924(v8);
  }

  result = UIApp;
  if (UIApp)
  {

    return [result terminateWithSuccess];
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100008080(char a1, uint64_t a2, void *a3, uint64_t (*a4)(id))
{
  v7 = Logger.logObject.getter();
  if (a1)
  {
    v8 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      v10 = "lockDevice() Succeeded; Continuing to Idle Exit";
LABEL_6:
      _os_log_impl(&_mh_execute_header, v7, v8, v10, v9, 2u);
    }
  }

  else
  {
    v8 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      v10 = "lockDevice() Failed; Ignoring and Proceeding to Idle Exit";
      goto LABEL_6;
    }
  }

  return a4([a3 invalidate]);
}

void sub_100008190()
{
  sub_1000121B0();
  v41 = v0;
  v2 = v1;
  v4 = v3;
  v5 = sub_100003724(&qword_1000264A0, &qword_100017C60);
  sub_100012084(v5);
  v7 = *(v6 + 64);
  sub_10001214C();
  __chkstk_darwin(v8);
  v10 = &v40 - v9;
  v11 = type metadata accessor for UUID();
  v12 = sub_100003D6C(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  __chkstk_darwin(v12);
  sub_100011FEC();
  v19 = v17 - v18;
  __chkstk_darwin(v20);
  v22 = &v40 - v21;
  v23 = OBJC_IVAR____TtC7Sidecar16ServiceExtension_uuid;
  sub_1000120FC();
  sub_10000F4D4(v4 + v23, v10, &qword_1000264A0, &qword_100017C60);
  if (sub_10000F4A8(v10, 1, v11) == 1)
  {
    if (qword_100025DE8 != -1)
    {
      sub_100011FC8();
      swift_once();
    }

    sub_100003454(v11, qword_100026190);
    sub_100012360();
    v24(v22);
    if (sub_10000F4A8(v10, 1, v11) != 1)
    {
      sub_1000117D8(v10, &qword_1000264A0, &qword_100017C60);
    }

    if (v2)
    {
      goto LABEL_7;
    }
  }

  else
  {
    (*(v14 + 32))(v22, v10, v11);
    if (v2)
    {
LABEL_7:
      swift_errorRetain();
      if (qword_100025DE0 != -1)
      {
        sub_100011FA8();
      }

      v25 = type metadata accessor for Logger();
      v26 = sub_100003454(v25, qword_100026848);
      __chkstk_darwin(v26);
      *(&v40 - 2) = v4;
      *(&v40 - 1) = v22;
      swift_errorRetain();
      sub_100004600(sub_10000F5A0, &v40 - 4, v26, v2);

      goto LABEL_16;
    }
  }

  if (qword_100025DE0 != -1)
  {
    sub_100011FA8();
  }

  v27 = type metadata accessor for Logger();
  sub_1000120C4(v27, qword_100026848);
  sub_100012360();
  v28(v19, v22, v11);

  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = sub_100012198();
    v40 = sub_100012180();
    v42 = v40;
    *v31 = 136446466;
    *(v31 + 4) = sub_10001364C(v4[2], v4[3], &v42);
    *(v31 + 12) = 2082;
    v32 = UUID.uuidString.getter();
    v33 = sub_10001234C();
    v34(v33);
    v35 = sub_100012310();
    sub_10001364C(v35, v36, v37);
    sub_100012260();

    *(v31 + 14) = v32;
    _os_log_impl(&_mh_execute_header, v29, v30, "Service Extension '%{public}s' %{public}s Terminated", v31, 0x16u);
    swift_arrayDestroy();
    sub_100003E3C();
    sub_100003E3C();
  }

  else
  {

    v38 = sub_10001234C();
    v39(v38);
  }

LABEL_16:
  sub_1000085B4(v4, 0, v41);
  (*(v14 + 8))(v22, v11);
  sub_1000121C8();
}

void sub_1000085B4(void *a1, uint64_t a2, char *a3)
{
  v117 = a2;
  v5 = sub_100003724(&qword_1000264A0, &qword_100017C60);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v112 - v7;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v119 = &v112 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v16 = &v112 - v15;
  __chkstk_darwin(v14);
  v18 = &v112 - v17;
  v19 = OBJC_IVAR____TtC7Sidecar16ServiceExtension_uuid;
  swift_beginAccess();
  sub_10000F4D4(a1 + v19, v8, &qword_1000264A0, &qword_100017C60);
  if (sub_10000F4A8(v8, 1, v9) != 1)
  {
    (*(v10 + 32))(v18, v8, v9);
    swift_beginAccess();
    v28 = sub_10000FA3C(v18);
    swift_endAccess();
    if (v28)
    {
      if (qword_100025DE0 != -1)
      {
        swift_once();
      }

      v29 = type metadata accessor for Logger();
      sub_100003454(v29, qword_100026848);
      v30 = *(v10 + 16);
      v115 = v18;
      v30(v16, v18, v9);

      v31 = v10;
      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v116 = v9;
        v35 = v34;
        v36 = swift_slowAlloc();
        v114 = a3;
        v121[0] = v36;
        *v35 = 136446466;
        v37 = v28[2];
        v38 = v28[3];

        v39 = sub_10001364C(v37, v38, v121);

        *(v35 + 4) = v39;
        *(v35 + 12) = 2082;
        v40 = UUID.uuidString.getter();
        v42 = v41;
        (*(v31 + 8))(v16, v116);
        v43 = sub_10001364C(v40, v42, v121);

        *(v35 + 14) = v43;
        _os_log_impl(&_mh_execute_header, v32, v33, "Service Extension '%{public}s' %{public}s Deactivated (Not Active)", v35, 0x16u);
        swift_arrayDestroy();
        a3 = v114;

        v9 = v116;
      }

      else
      {

        (*(v31 + 8))(v16, v9);
      }

      v10 = v31;
      v18 = v115;
      if (v28[11])
      {
        v44 = v28[11];
        swift_getObjectType();
        swift_unknownObjectRetain();
        OS_dispatch_source.cancel()();
        swift_unknownObjectRelease();
        v45 = v28[11];
      }

      v28[11] = 0;

      swift_unknownObjectRelease();
    }

    v118 = v10;
    v46 = OBJC_IVAR____TtC7Sidecar14ServiceManager__activeExtensions;
    v47 = swift_beginAccess();
    v48 = *&a3[v46];
    __chkstk_darwin(v47);
    *(&v112 - 2) = v18;

    v49 = sub_10000A394(sub_10000FB68, (&v112 - 4), v48);
    v51 = v50;

    if (v51)
    {
      sub_1000130E8();
      sub_10000B08C();
      (*(v118 + 8))(v18, v9);
      return;
    }

    v113 = v49;
    v115 = v46;
    if (qword_100025DE0 != -1)
    {
      swift_once();
    }

    v52 = type metadata accessor for Logger();
    sub_100003454(v52, qword_100026848);
    v54 = v118;
    v53 = v119;
    (*(v118 + 16))(v119, v18, v9);

    v55 = Logger.logObject.getter();
    v56 = static os_log_type_t.default.getter();

    v57 = os_log_type_enabled(v55, v56);
    v116 = v9;
    if (v57)
    {
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v114 = a3;
      v120[0] = v59;
      *v58 = 136446466;
      *(v58 + 4) = sub_10001364C(a1[2], a1[3], v120);
      *(v58 + 12) = 2082;
      v60 = UUID.uuidString.getter();
      v61 = v53;
      v63 = v62;
      v64 = *(v54 + 8);
      (v64)(v61, v9);
      v65 = sub_10001364C(v60, v63, v120);

      *(v58 + 14) = v65;
      _os_log_impl(&_mh_execute_header, v55, v56, "Service Extension '%{public}s' %{public}s Deactivated", v58, 0x16u);
      swift_arrayDestroy();
      a3 = v114;
    }

    else
    {

      v64 = *(v54 + 8);
      (v64)(v53, v9);
    }

    v66 = v115;
    swift_beginAccess();
    sub_10000A49C(v113);
    swift_endAccess();

    v67 = *&a3[OBJC_IVAR____TtC7Sidecar14ServiceManager_navigationController];
    v68 = [v67 topViewController];
    v69 = a1[7];
    if (v68)
    {
      v70 = v68;
      if (!v69)
      {
        v86 = 0;

        goto LABEL_38;
      }

      sub_1000038B0(0, &qword_100026490, UIViewController_ptr);
      v71 = v69;
      v72 = static NSObject.== infix(_:_:)();

      if ((v72 & 1) == 0)
      {
LABEL_38:
        v119 = v64;
        v64 = v18;
        v18 = a3;
        v87 = [v67 viewControllers];
        sub_1000038B0(0, &qword_100026490, UIViewController_ptr);
        v88 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        v89 = a1[7];
        if (v89)
        {

          v90 = v89;
          sub_10000AF90(v90, v88);
          v92 = v91;
          v94 = v93;

          if (v94)
          {

LABEL_47:
            sub_1000130E8();
            sub_10000B08C();
            (v119)(v64, v116);
            return;
          }

          if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v88 & 0x8000000000000000) != 0 || (v88 & 0x4000000000000000) != 0)
          {
            v88 = sub_100011774(v88);
          }

          v95 = *((v88 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v92 < v95)
          {
            v96 = v95 - 1;
            v97 = v95 - 1 - v92;
            v98 = (v88 & 0xFFFFFFFFFFFFFF8) + 8 * v92 + 32;
            v99 = *((v88 & 0xFFFFFFFFFFFFFF8) + 8 * v92 + 0x20);
            memmove(v98, (v98 + 8), 8 * v97);
            *((v88 & 0xFFFFFFFFFFFFFF8) + 0x10) = v96;

            isa = Array._bridgeToObjectiveC()().super.isa;

            [v67 setViewControllers:isa];

            goto LABEL_47;
          }

          __break(1u);
LABEL_66:

          v105 = specialized _ArrayBuffer._getElementSlowPath(_:)();

          goto LABEL_57;
        }

        goto LABEL_68;
      }
    }

    else
    {
      if (v69)
      {
        goto LABEL_38;
      }

      v73 = 0;
    }

    if (!UIApp)
    {
LABEL_69:
      __break(1u);
      return;
    }

    v74 = [UIApp applicationState];
    if (!v117 || v74)
    {

      sub_1000130E8();
      sub_10000B08C();
    }

    else
    {
      v119 = v64;
      v75 = v18;
      v76 = swift_allocObject();
      v76[2] = a3;
      v76[3] = a1;
      v76[4] = nullsub_1;
      v76[5] = 0;
      v77 = &a3[OBJC_IVAR____TtC7Sidecar14ServiceManager__animationConfig];
      v78 = *&a3[OBJC_IVAR____TtC7Sidecar14ServiceManager__animationConfig];
      v79 = *&a3[OBJC_IVAR____TtC7Sidecar14ServiceManager__animationConfig + 8];
      v80 = a3;
      v81 = *&a3[OBJC_IVAR____TtC7Sidecar14ServiceManager__animationConfig + 16];
      *v77 = v117;
      v77[1] = sub_1000115F4;
      v77[2] = v76;

      v80;
      sub_10000F3F8(v78, v79);
      v82 = [v67 popViewControllerAnimated:1];
      v83 = *v77;
      v84 = v77[1];
      v85 = v77[2];
      v77[1] = 0;
      v77[2] = 0;
      *v77 = 0;
      sub_10000F3F8(v83, v84);
      if (v82)
      {
      }

      else
      {
        sub_1000130E8();
        sub_10000B08C();
      }

      a3 = v80;
      v18 = v75;
      v64 = v119;
      v66 = v115;
    }

    v101 = [v67 topViewController];
    if (v101)
    {
      v102 = v101;
      sub_10000A57C([v101 supportedInterfaceOrientations]);
    }

    sub_10000A794();
    sub_10000A828();
    sub_10000BE90();
    v103 = *&v66[a3];
    v104 = sub_10000BB74(v103);
    a1 = v116;
    if (!v104)
    {
      goto LABEL_64;
    }

    if ((v103 & 0xC000000000000001) != 0)
    {
      goto LABEL_66;
    }

    if (*((v103 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v105 = *(v103 + 32);

LABEL_57:
      v106 = *(v105 + 56);
      if (v106)
      {
        v107 = v106;
        v108 = [v107 serviceViewControllerProxy];

        swift_unknownObjectRelease();
        if (v108)
        {
          [v108 sidecarServiceSetActive:1];
          swift_unknownObjectRelease();
        }

        v109 = *(v105 + 56);
        if (v109)
        {
          v110 = v109;
          v111 = [v110 serviceViewControllerProxy];

          swift_unknownObjectRelease();
          if (v111)
          {
            [v111 sidecarServiceSetBackgrounded:0];
            swift_unknownObjectRelease();
          }
        }
      }

      SBSUndimScreen();
      sub_10000A8BC();

LABEL_64:
      (v64)(v18, a1);
      return;
    }

    __break(1u);
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

  v20 = v9;
  sub_1000117D8(v8, &qword_1000264A0, &qword_100017C60);
  if (qword_100025DE0 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  sub_100003454(v21, qword_100026848);

  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v121[0] = swift_slowAlloc();
    *v24 = 136446466;
    *(v24 + 4) = sub_10001364C(a1[2], a1[3], v121);
    *(v24 + 12) = 2082;
    if (qword_100025DE8 != -1)
    {
      swift_once();
    }

    sub_100003454(v20, qword_100026190);
    v25 = UUID.uuidString.getter();
    v27 = sub_10001364C(v25, v26, v121);

    *(v24 + 14) = v27;
    _os_log_impl(&_mh_execute_header, v22, v23, "Service Extension '%{public}s' %{public}s Deactivated (Not Loaded)", v24, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  sub_1000130E8();
  sub_10000B08C();
}

void sub_100009338()
{
  sub_1000121B0();
  v2 = v1;
  v4 = v3;
  *&v134[16] = v5;
  v7 = v6;
  v8 = sub_100003724(&qword_1000264A0, &qword_100017C60);
  sub_100012084(v8);
  v10 = *(v9 + 64);
  sub_10001214C();
  __chkstk_darwin(v11);
  v12 = sub_100012394();
  v13 = sub_100003D6C(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  __chkstk_darwin(v13);
  sub_100011FEC();
  v136 = (v18 - v19);
  sub_100012278();
  __chkstk_darwin(v20);
  sub_1000122EC();
  v138 = v21;
  sub_100012278();
  __chkstk_darwin(v22);
  v24 = &v134[-v23];
  v140 = swift_allocObject();
  *(v140 + 16) = v2;
  v25 = OBJC_IVAR____TtC7Sidecar16ServiceExtension_uuid;
  sub_1000120FC();
  v139 = v7;
  sub_10000F4D4(v7 + v25, v0, &qword_1000264A0, &qword_100017C60);
  if (sub_10000F4A8(v0, 1, v12) == 1)
  {
    v26 = v12;
    _Block_copy(v2);
    sub_1000117D8(v0, &qword_1000264A0, &qword_100017C60);
    v27 = v2;
    if (qword_100025DE0 != -1)
    {
      sub_100011FA8();
    }

    v28 = type metadata accessor for Logger();
    sub_1000120C4(v28, qword_100026848);
    v29 = v139;

    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = sub_100012198();
      v142[0] = sub_100012180();
      *v32 = 136446466;
      *(v32 + 4) = sub_10001364C(v29[2], v29[3], v142);
      *(v32 + 12) = 2082;
      if (qword_100025DE8 != -1)
      {
        sub_100011FC8();
        swift_once();
      }

      sub_1000120C4(v26, qword_100026190);
      v33 = UUID.uuidString.getter();
      sub_10001364C(v33, v34, v142);
      sub_100012260();

      *(v32 + 14) = v0;
      _os_log_impl(&_mh_execute_header, v30, v31, "Service Extension '%{public}s' %{public}s Deactivated (Not Loaded)", v32, 0x16u);
      swift_arrayDestroy();
      sub_100003E3C();
      sub_100012058();
    }

    else
    {
    }

    sub_1000130E8();
    sub_10000B08C();
    v54 = sub_1000121E0();
    v55(v54);
    goto LABEL_66;
  }

  (*(v15 + 32))(v24, v0, v12);
  swift_beginAccess();
  _Block_copy(v2);
  v35 = sub_10000FA3C(v24);
  swift_endAccess();
  v135 = v24;
  v27 = v2;
  v137 = v4;
  *&v134[8] = v15;
  if (v35)
  {
    if (qword_100025DE0 != -1)
    {
      sub_100011FA8();
    }

    v36 = type metadata accessor for Logger();
    sub_1000120C4(v36, qword_100026848);
    sub_100012360();
    v37 = v138;
    v38(v138, v24, v12);

    v39 = Logger.logObject.getter();
    v40 = v12;
    v41 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v39, v41))
    {
      sub_100012198();
      v42 = sub_100012130();
      *v134 = v27;
      v142[0] = v42;
      *v24 = 136446466;
      v44 = v35[2];
      v43 = v35[3];

      v45 = sub_100012310();
      sub_10001364C(v45, v46, v47);
      sub_100012260();

      *(v24 + 4) = v44;
      sub_1000122F8();
      UUID.uuidString.getter();
      (*(v15 + 8))(v37, v40);
      v48 = sub_1000120B8();
      v51 = sub_10001364C(v48, v49, v50);

      *(v24 + 14) = v51;
      sub_1000123D4(&_mh_execute_header, v52, v53, "Service Extension '%{public}s' %{public}s Deactivated (Not Active)");
      sub_100012114();
      v27 = *v134;
      sub_100003E3C();
      v24 = v135;
      sub_100003E3C();
    }

    else
    {

      (*(v15 + 8))(v37, v40);
    }

    v12 = v40;
    v4 = v137;
    if (v35[11])
    {
      v56 = v35[11];
      swift_getObjectType();
      swift_unknownObjectRetain();
      OS_dispatch_source.cancel()();
      swift_unknownObjectRelease();
      v57 = v35[11];
    }

    v15 = *&v134[8];
    v35[11] = 0;

    swift_unknownObjectRelease();
  }

  v58 = OBJC_IVAR____TtC7Sidecar14ServiceManager__activeExtensions;
  v59 = sub_1000120FC();
  v60 = *&v4[v58];
  __chkstk_darwin(v59);
  *&v134[-16] = v24;

  sub_1000122CC();
  v64 = sub_10000A394(v61, v62, v63);
  v66 = v65;

  if (v66)
  {
    sub_1000130E8();
    sub_10000B08C();
    v67 = sub_1000121E0();
    v68(v67);
    (*(v15 + 8))(v24, v12);
LABEL_66:

    _Block_release(v27);
    sub_1000121C8();
    return;
  }

  v138 = v64;
  if (qword_100025DE0 != -1)
  {
    sub_100011FA8();
  }

  v69 = type metadata accessor for Logger();
  sub_1000120C4(v69, qword_100026848);
  sub_100012360();
  v70 = v136;
  v71(v136, v135, v12);
  v72 = v139;

  v73 = Logger.logObject.getter();
  v74 = v12;
  v75 = static os_log_type_t.default.getter();

  v76 = os_log_type_enabled(v73, v75);
  *v134 = v27;
  if (v76)
  {
    sub_100012198();
    v141 = sub_100012130();
    *v134 = 136446466;
    *&v134[4] = sub_10001364C(v72[2], v72[3], &v141);
    sub_1000122F8();
    UUID.uuidString.getter();
    v136 = *(v15 + 8);
    v136(v70, v74);
    v77 = sub_1000120B8();
    v80 = sub_10001364C(v77, v78, v79);

    *&v134[14] = v80;
    sub_1000123D4(&_mh_execute_header, v81, v82, "Service Extension '%{public}s' %{public}s Deactivated");
    sub_100012114();
    sub_100011FFC();
    sub_100003E3C();
  }

  else
  {

    v136 = *(v15 + 8);
    v136(v70, v74);
  }

  v83 = v74;
  v84 = v137;
  swift_beginAccess();
  sub_10000A49C(v138);
  swift_endAccess();

  v85 = *&v84[OBJC_IVAR____TtC7Sidecar14ServiceManager_navigationController];
  v86 = [v85 topViewController];
  v87 = v72[7];
  v88 = v140;
  if (v86)
  {
    v89 = v86;
    if (!v87)
    {
      v106 = 0;

      goto LABEL_38;
    }

    sub_1000038B0(0, &qword_100026490, UIViewController_ptr);
    v90 = v87;
    v91 = static NSObject.== infix(_:_:)();

    if ((v91 & 1) == 0)
    {
LABEL_38:
      v107 = [v85 viewControllers];
      sub_1000038B0(0, &qword_100026490, UIViewController_ptr);
      sub_1000120B8();
      v108 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v109 = v72[7];
      if (v109)
      {

        v110 = v109;
        sub_10000AF90(v110, v108);
        v112 = v111;
        v27 = v113;

        if (v27)
        {

LABEL_47:
          sub_1000130E8();
          sub_10000B08C();
          v27 = *v134;
          v120 = sub_1000121E0();
          v121(v120);
LABEL_64:
          v122 = v135;
LABEL_65:
          v136(v122, v83);
          goto LABEL_66;
        }

        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v108 & 0x8000000000000000) != 0 || (v108 & 0x4000000000000000) != 0)
        {
          v108 = sub_100011774(v108);
        }

        v114 = *((v108 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v112 < v114)
        {
          v115 = v114 - 1;
          v116 = v114 - 1 - v112;
          v117 = (v108 & 0xFFFFFFFFFFFFFF8) + 8 * v112;
          v118 = *(v117 + 0x20);
          memmove((v117 + 32), (v117 + 40), 8 * v116);
          *((v108 & 0xFFFFFFFFFFFFFF8) + 0x10) = v115;

          isa = Array._bridgeToObjectiveC()().super.isa;

          [v85 setViewControllers:isa];

          goto LABEL_47;
        }

        __break(1u);
        goto LABEL_68;
      }

LABEL_70:
      _Block_release(*v134);
      __break(1u);
      goto LABEL_71;
    }
  }

  else
  {
    if (v87)
    {
      goto LABEL_38;
    }

    v92 = 0;
  }

  if (UIApp)
  {
    v93 = [UIApp applicationState];
    if (!*&v134[16] || v93)
    {

      sub_1000130E8();
      sub_10000B08C();
      (*(*v134 + 16))();
    }

    else
    {
      v138 = v83;
      sub_100012340();
      v94 = swift_allocObject();
      v94[2] = v84;
      v94[3] = v72;
      v94[4] = sub_100011EE4;
      v94[5] = v88;
      v95 = &v84[OBJC_IVAR____TtC7Sidecar14ServiceManager__animationConfig];
      v96 = *&v84[OBJC_IVAR____TtC7Sidecar14ServiceManager__animationConfig];
      v97 = *&v84[OBJC_IVAR____TtC7Sidecar14ServiceManager__animationConfig + 8];
      v98 = v84;
      v99 = *&v84[OBJC_IVAR____TtC7Sidecar14ServiceManager__animationConfig + 16];
      *v95 = *&v134[16];
      v95[1] = sub_100011FA4;
      v95[2] = v94;

      v98;

      v100 = sub_1000120B8();
      sub_10000F3F8(v100, v101);
      v102 = [v85 popViewControllerAnimated:1];
      v103 = *v95;
      v104 = v95[1];
      v105 = v95[2];
      v95[1] = 0;
      v95[2] = 0;
      *v95 = 0;
      sub_10000F3F8(v103, v104);
      if (v102)
      {
      }

      else
      {
        sub_1000130E8();
        sub_10000B08C();
        (*(*v134 + 16))();
      }

      v84 = v137;
      v83 = v138;
    }

    v122 = v135;
    v123 = [v85 topViewController];
    if (v123)
    {
      v124 = v123;
      sub_10000A57C([v123 supportedInterfaceOrientations]);
    }

    sub_10000A794();
    sub_10000A828();
    sub_10000BE90();
    v125 = *&v84[v58];
    v126 = sub_10000BB74(v125);
    v27 = *v134;
    if (!v126)
    {
      goto LABEL_65;
    }

    if ((v125 & 0xC000000000000001) != 0)
    {
LABEL_68:

      v127 = specialized _ArrayBuffer._getElementSlowPath(_:)();

      goto LABEL_57;
    }

    if (*((v125 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v127 = *(v125 + 32);

LABEL_57:
      v128 = *(v127 + 56);
      if (v128)
      {
        v129 = v128;
        v130 = [v129 serviceViewControllerProxy];

        swift_unknownObjectRelease();
        if (v130)
        {
          [v130 sidecarServiceSetActive:1];
          swift_unknownObjectRelease();
        }

        v131 = *(v127 + 56);
        if (v131)
        {
          v132 = v131;
          v133 = [v132 serviceViewControllerProxy];

          swift_unknownObjectRelease();
          if (v133)
          {
            [v133 sidecarServiceSetBackgrounded:0];
            swift_unknownObjectRelease();
          }
        }
      }

      SBSUndimScreen();
      sub_10000A8BC();

      goto LABEL_64;
    }

    __break(1u);
    goto LABEL_70;
  }

LABEL_71:
  _Block_release(*v134);
  __break(1u);
}

uint64_t sub_100009FC0(uint64_t *a1, uint64_t a2)
{
  v31 = a2;
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v28 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100003724(&qword_1000264C0, &qword_100017C78);
  v8 = v7 - 8;
  v9 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v11 = &v27 - v10;
  v12 = sub_100003724(&qword_1000264A0, &qword_100017C60);
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12 - 8);
  v29 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v27 - v16;
  v18 = *a1;
  v19 = OBJC_IVAR____TtC7Sidecar16ServiceExtension_uuid;
  swift_beginAccess();
  v30 = v4;
  (*(v4 + 16))(v17, v31, v3);
  sub_10000F480(v17, 0, 1, v3);
  v20 = *(v8 + 56);
  sub_10000F4D4(v18 + v19, v11, &qword_1000264A0, &qword_100017C60);
  sub_10000F4D4(v17, &v11[v20], &qword_1000264A0, &qword_100017C60);
  if (sub_10000F4A8(v11, 1, v3) != 1)
  {
    v22 = v29;
    sub_10000F4D4(v11, v29, &qword_1000264A0, &qword_100017C60);
    if (sub_10000F4A8(&v11[v20], 1, v3) != 1)
    {
      v23 = v30;
      v24 = v28;
      (*(v30 + 32))(v28, &v11[v20], v3);
      sub_100011830(&qword_1000264C8);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      v25 = *(v23 + 8);
      v25(v24, v3);
      sub_1000117D8(v17, &qword_1000264A0, &qword_100017C60);
      v25(v22, v3);
      sub_1000117D8(v11, &qword_1000264A0, &qword_100017C60);
      return v21 & 1;
    }

    sub_1000117D8(v17, &qword_1000264A0, &qword_100017C60);
    (*(v30 + 8))(v22, v3);
    goto LABEL_6;
  }

  sub_1000117D8(v17, &qword_1000264A0, &qword_100017C60);
  if (sub_10000F4A8(&v11[v20], 1, v3) != 1)
  {
LABEL_6:
    sub_1000117D8(v11, &qword_1000264C0, &qword_100017C78);
    v21 = 0;
    return v21 & 1;
  }

  sub_1000117D8(v11, &qword_1000264A0, &qword_100017C60);
  v21 = 1;
  return v21 & 1;
}

uint64_t sub_10000A394(uint64_t (*a1)(uint64_t *), uint64_t a2, unint64_t a3)
{
  result = sub_10000BB74(a3);
  v6 = result;
  v7 = 0;
  while (1)
  {
    if (v6 == v7)
    {
      return 0;
    }

    if ((a3 & 0xC000000000000001) != 0)
    {
      v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      goto LABEL_6;
    }

    if (v7 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      break;
    }

    v8 = *(a3 + 8 * v7 + 32);

LABEL_6:
    v12 = v8;
    v9 = a1(&v12);

    if (v3)
    {
      return result;
    }

    if (v9)
    {
      return v7;
    }

    if (__OFADD__(v7++, 1))
    {
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_10000A49C(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || (v3 & 0x8000000000000000) != 0 || (v3 & 0x4000000000000000) != 0)
  {
    result = sub_100011774(v3);
    v3 = result;
  }

  v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v5 - 1 - a1;
    v8 = (v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1;
    v9 = *(v8 + 0x20);
    memmove((v8 + 32), (v8 + 40), 8 * v7);
    *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) = v6;
    *v1 = v3;
    return v9;
  }

  return result;
}

uint64_t sub_10000A52C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  sub_1000130E8();
  sub_10000B08C();
  return a3();
}

void sub_10000A57C(unint64_t a1)
{
  if ((sub_10000EE4C(a1) & 1) == 0)
  {
    if ((a1 & 2) != 0)
    {
      v4 = 1;
    }

    else if ((a1 & 4) != 0)
    {
      v4 = 2;
    }

    else
    {
      v3 = 3;
      if ((a1 & 0x10) == 0)
      {
        v3 = 4;
      }

      if ((~a1 & 0x18) != 0)
      {
        v4 = v3;
      }

      else
      {
        v4 = 3;
      }
    }

    if (qword_100025DE0 != -1)
    {
      sub_100011FA8();
    }

    v5 = type metadata accessor for Logger();
    sub_1000120C4(v5, qword_100026848);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (sub_100012158(v7))
    {
      sub_100012200();
      v21 = sub_100012130();
      *v1 = 136446722;
      v8 = [objc_opt_self() currentDevice];
      v9 = [v8 orientation];

      v10 = UIDeviceOrientation.description.getter(v9);
      v12 = sub_10001364C(v10, v11, &v21);

      *(v1 + 4) = v12;
      sub_1000122F8();
      v13 = UIDeviceOrientation.description.getter(v4);
      v15 = sub_10001364C(v13, v14, &v21);

      *(v1 + 14) = v15;
      *(v1 + 22) = 2048;
      *(v1 + 24) = a1;
      sub_100012218();
      _os_log_impl(v16, v17, v18, v19, v1, 0x20u);
      sub_100012114();
      sub_100011FFC();
      sub_100003E3C();
    }

    v20 = [objc_opt_self() currentDevice];
    [v20 setOrientation:v4 animated:0];
  }
}

void sub_10000A794()
{
  v2 = OBJC_IVAR____TtC7Sidecar14ServiceManager__activeExtensions;
  sub_100012018();
  v3 = *(v0 + v2);
  if (!sub_10000BB74(v3))
  {
    v5 = 0;
    goto LABEL_7;
  }

  if ((v3 & 0xC000000000000001) != 0)
  {

    sub_1000123F4();
    sub_100012174();

    goto LABEL_5;
  }

  sub_100012334();
  if (v4)
  {
    sub_100012424();
LABEL_5:
    v5 = *(v1 + 64);

LABEL_7:
    sub_10000C0E4(v5);
    return;
  }

  __break(1u);
}

void sub_10000A828()
{
  v2 = OBJC_IVAR____TtC7Sidecar14ServiceManager__activeExtensions;
  sub_100012018();
  v3 = *(v0 + v2);
  if (!sub_10000BB74(v3))
  {
    v5 = 0;
    goto LABEL_7;
  }

  if ((v3 & 0xC000000000000001) != 0)
  {

    sub_1000123F4();
    sub_100012174();

    goto LABEL_5;
  }

  sub_100012334();
  if (v4)
  {
    sub_100012424();
LABEL_5:
    v5 = *(v1 + 72);

LABEL_7:
    sub_10000C204(v5);
    return;
  }

  __break(1u);
}

void sub_10000A8BC()
{
  sub_1000121B0();
  v62 = v0;
  v2 = v1;
  v3 = sub_100003724(&qword_1000264A0, &qword_100017C60);
  sub_100012084(v3);
  v5 = *(v4 + 64);
  sub_10001214C();
  __chkstk_darwin(v6);
  v7 = sub_100012394();
  v8 = sub_100003D6C(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v8);
  v60 = v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v17 = v59 - v16;
  v59[2] = v18;
  __chkstk_darwin(v15);
  v20 = v59 - v19;
  LODWORD(v63) = SBSGetScreenLockStatus();
  v21 = OBJC_IVAR____TtC7Sidecar16ServiceExtension_uuid;
  sub_1000120FC();
  sub_10000F4D4(v2 + v21, v0, &qword_1000264A0, &qword_100017C60);
  sub_10001223C();
  if (v22)
  {
    if (qword_100025DE8 != -1)
    {
      sub_100011FC8();
      swift_once();
    }

    v23 = sub_100003454(v7, qword_100026190);
    (*(v10 + 16))(v20, v23, v7);
    sub_10001223C();
    if (!v22)
    {
      sub_1000117D8(v0, &qword_1000264A0, &qword_100017C60);
    }
  }

  else
  {
    v24 = *(v10 + 32);
    sub_1000122CC();
    v25();
  }

  if (qword_100025DE0 != -1)
  {
    sub_100011FA8();
  }

  v26 = type metadata accessor for Logger();
  sub_1000120C4(v26, qword_100026848);
  v27 = *(v10 + 16);
  v59[1] = v10 + 16;
  v59[0] = v27;
  v27(v17, v20, v7);

  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.default.getter();

  v30 = os_log_type_enabled(v28, v29);
  v61 = v2;
  if (v30)
  {
    v31 = sub_100012200();
    v64 = v20;
    v32 = v31;
    v65[0] = swift_slowAlloc();
    *v32 = 136446722;
    *(v32 + 4) = sub_10001364C(*(v2 + 16), *(v2 + 24), v65);
    *(v32 + 12) = 2082;
    v33 = UUID.uuidString.getter();
    v34 = sub_1000122D8();
    (v2)(v34);
    v35 = sub_10001231C();
    sub_10001364C(v35, v36, v37);
    sub_10001226C();

    *(v32 + 14) = v33;
    *(v32 + 22) = 2082;
    v38 = v63;
    if (v63)
    {
      v39 = 0x64656B636F4CLL;
    }

    else
    {
      v39 = 0x64656B636F6C6E55;
    }

    if (v63)
    {
      v40 = 0xE600000000000000;
    }

    else
    {
      v40 = 0xE800000000000000;
    }

    v41 = sub_10001364C(v39, v40, v65);

    *(v32 + 24) = v41;
    _os_log_impl(&_mh_execute_header, v28, v29, "Launching Service Extension '%{public}s' %{public}s (Screen %{public}s)", v32, 0x20u);
    swift_arrayDestroy();
    sub_100011FFC();
    v20 = v64;
    sub_100003E3C();

    if (!v38)
    {
      goto LABEL_19;
    }
  }

  else
  {

    v42 = sub_1000122D8();
    (v2)(v42);
    if (!v63)
    {
LABEL_19:
      v63 = [objc_allocWithZone(FBSOpenApplicationService) init];
      sub_1000038B0(0, &qword_1000264B0, FBSOpenApplicationOptions_ptr);
      sub_100003724(&qword_1000264B8, &qword_100017C70);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_100017B40;
      v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      sub_1000122B8(v44, v45);
      AnyHashable.init<A>(_:)();
      v64 = v20;
      *(inited + 96) = &type metadata for Bool;
      *(inited + 72) = 0;
      v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      sub_1000122B8(v46, v47);
      AnyHashable.init<A>(_:)();
      *(inited + 168) = &type metadata for Bool;
      *(inited + 144) = 1;
      v48 = Dictionary.init(dictionaryLiteral:)();
      v49 = sub_10000D5C0(v48);
      v50 = String._bridgeToObjectiveC()();
      v51 = v60;
      (v59[0])(v60, v64, v7);
      v52 = (*(v10 + 80) + 32) & ~*(v10 + 80);
      v53 = swift_allocObject();
      v54 = v62;
      v55 = v61;
      *(v53 + 16) = v62;
      *(v53 + 24) = v55;
      (*(v10 + 32))(v53 + v52, v51, v7);
      v65[4] = sub_1000116B8;
      v65[5] = v53;
      v65[0] = _NSConcreteStackBlock;
      v65[1] = 1107296256;
      v65[2] = sub_10000D804;
      v65[3] = &unk_100020E80;
      v56 = _Block_copy(v65);

      v57 = v54;

      v58 = v63;
      [v63 openApplication:v50 withOptions:v49 completion:v56];
      _Block_release(v56);

      v2 = *(v10 + 8);
      v20 = v64;
    }
  }

  (v2)(v20, v7);
  sub_1000121C8();
}

void sub_10000AF90(uint64_t a1, unint64_t a2)
{
  v3 = sub_10000BB74(a2);
  v4 = 0;
  while (v3 != v4)
  {
    if ((a2 & 0xC000000000000001) != 0)
    {
      v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v4 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_14:
        __break(1u);
        return;
      }

      v5 = *(a2 + 8 * v4 + 32);
    }

    v6 = v5;
    sub_1000038B0(0, &qword_100026490, UIViewController_ptr);
    v7 = static NSObject.== infix(_:_:)();

    if (v7)
    {
      return;
    }

    if (__OFADD__(v4++, 1))
    {
      goto LABEL_14;
    }
  }
}

void sub_10000B08C()
{
  sub_1000121B0();
  v1 = sub_100003724(&qword_100026498, &qword_100017C58);
  v2 = sub_100012084(v1);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  sub_100011FEC();
  v7 = v5 - v6;
  __chkstk_darwin(v8);
  v128 = &v109 - v9;
  v10 = sub_100003724(&qword_1000264A0, &qword_100017C60);
  sub_100012084(v10);
  v12 = *(v11 + 64);
  sub_10001214C();
  __chkstk_darwin(v13);
  v15 = &v109 - v14;
  v129 = type metadata accessor for UUID();
  v16 = sub_100003D6C(v129);
  v117 = v17;
  v19 = *(v18 + 64);
  __chkstk_darwin(v16);
  sub_100011FEC();
  v22 = v20 - v21;
  __chkstk_darwin(v23);
  sub_1000122EC();
  v124 = v24;
  sub_100012278();
  __chkstk_darwin(v25);
  sub_1000122EC();
  v115 = v26;
  sub_100012278();
  __chkstk_darwin(v27);
  sub_1000122EC();
  v127 = v28;
  sub_100012278();
  __chkstk_darwin(v29);
  v31 = &v109 - v30;
  v32 = OBJC_IVAR____TtC7Sidecar14ServiceManager__activeExtensions;
  sub_1000120FC();
  if (sub_10000BB74(*&v32[v0]) || (v33 = OBJC_IVAR____TtC7Sidecar14ServiceManager_pendingActiveServices, sub_1000120FC(), *(*(v0 + v33) + 16)))
  {
    v123 = v22;
    v34 = sub_10000BB74(*&v32[v0]);
    v35 = OBJC_IVAR____TtC7Sidecar14ServiceManager_pendingActiveServices;
    sub_1000120FC();
    v110 = v0;
    v109 = v35;
    v36 = *(*(v0 + v35) + 16);
    v37 = v34 + v36;
    if (__OFADD__(v34, v36))
    {
      goto LABEL_46;
    }

    if (qword_100025DE0 != -1)
    {
      goto LABEL_47;
    }

    while (1)
    {
      v38 = type metadata accessor for Logger();
      v125 = sub_100003454(v38, qword_100026848);
      v39 = Logger.logObject.getter();
      v40 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v39, v40))
      {
        v41 = sub_100012284();
        *v41 = 134217984;
        *(v41 + 4) = v37;
        _os_log_impl(&_mh_execute_header, v39, v40, "Continuing with %ld Active Services", v41, 0xCu);
        sub_100012058();
      }

      v42 = v110;
      v43 = sub_10000BB74(*&v32[v110]);
      v114 = v7;
      if (v43)
      {
        v126 = *&v32[v42];
        v44 = sub_10000BB74(v126);
        if (v44)
        {
          v45 = v44;
          if (v44 < 1)
          {
            __break(1u);
            return;
          }

          v121 = v126 & 0xC000000000000001;
          *&v113 = v117 + 32;
          v46 = (v117 + 16);
          v119 = (v117 + 8);

          v47 = 0;
          v120 = v46;
          v118 = (v46 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000);
          *&v48 = 136446466;
          v111 = v48;
          v32 = v127;
          v122 = v45;
          v116 = v15;
          v112 = v31;
          do
          {
            if (v121)
            {
              v49 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              v49 = *(v126 + 8 * v47 + 32);
            }

            v50 = OBJC_IVAR____TtC7Sidecar16ServiceExtension_uuid;
            sub_1000120FC();
            sub_10000F4D4(v49 + v50, v15, &qword_1000264A0, &qword_100017C60);
            if (sub_10000F4A8(v15, 1, v129) == 1)
            {
              if (qword_100025DE8 != -1)
              {
                sub_100011FC8();
                swift_once();
              }

              v51 = v129;
              v52 = sub_100003454(v129, qword_100026190);
              v53 = *v120;
              (*v120)(v31, v52, v51);
              if (sub_10000F4A8(v15, 1, v51) != 1)
              {
                sub_1000117D8(v15, &qword_1000264A0, &qword_100017C60);
              }
            }

            else
            {
              (*v113)(v31, v15, v129);
              v53 = *v120;
            }

            v53(v32, v31, v129);

            v54 = Logger.logObject.getter();
            v55 = static os_log_type_t.default.getter();

            if (os_log_type_enabled(v54, v55))
            {
              v56 = sub_100012198();
              v130 = sub_100012180();
              *v56 = v111;
              v57 = *(v49 + 16);
              v58 = *(v49 + 24);

              v59 = sub_100012304();
              v61 = sub_10001364C(v59, v58, v60);

              *(v56 + 4) = v61;
              *(v56 + 12) = 2082;
              UUID.uuidString.getter();
              v63 = v62;
              v64 = *v119;
              (*v119)(v127, v129);
              v65 = sub_100012304();
              v67 = sub_10001364C(v65, v63, v66);
              v31 = v112;

              *(v56 + 14) = v67;
              _os_log_impl(&_mh_execute_header, v54, v55, "- Service Extension '%{public}s' %{public}s Active", v56, 0x16u);
              swift_arrayDestroy();
              sub_100003E3C();
              v15 = v116;
              sub_100003E3C();

              v64(v31, v129);
              v32 = v127;
            }

            else
            {

              v68 = *v119;
              v69 = v129;
              (*v119)(v32, v129);
              v68(v31, v69);
            }

            ++v47;
          }

          while (v122 != v47);

          v7 = v114;
          v42 = v110;
        }
      }

      v70 = *(v42 + v109);
      if (!*(v70 + 16))
      {
        goto LABEL_44;
      }

      v71 = v70 + 64;
      v72 = 1 << *(v70 + 32);
      v73 = -1;
      if (v72 < 64)
      {
        v73 = ~(-1 << v72);
      }

      v15 = v73 & *(v70 + 64);
      v74 = (v72 + 63) >> 6;
      v126 = v117 + 32;
      v127 = (v117 + 16);
      v120 = (v117 + 8);
      v116 = v70;

      v37 = 0;
      *&v75 = 136446466;
      v113 = v75;
      v31 = v124;
      v122 = v71;
      v121 = v74;
      if (v15)
      {
        break;
      }

LABEL_30:
      while (1)
      {
        v76 = v37 + 1;
        if (__OFADD__(v37, 1))
        {
          break;
        }

        if (v76 >= v74)
        {
          v108 = sub_100003724(&qword_1000264A8, &qword_100017C68);
          sub_10000F480(v7, 1, 1, v108);
          v15 = 0;
          goto LABEL_35;
        }

        v15 = *(v71 + 8 * v76);
        ++v37;
        if (v15)
        {
          v37 = v76;
          goto LABEL_34;
        }
      }

      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      sub_100011FA8();
    }

    while (1)
    {
      v76 = v37;
LABEL_34:
      v77 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v78 = v77 | (v76 << 6);
      v79 = v116;
      v80 = v117;
      v81 = v115;
      v82 = v129;
      (*(v117 + 16))(v115, *(v116 + 48) + *(v117 + 72) * v78, v129);
      v83 = *(*(v79 + 56) + 8 * v78);
      v84 = sub_100003724(&qword_1000264A8, &qword_100017C68);
      v85 = *(v84 + 48);
      (*(v80 + 32))(v7, v81, v82);
      *(v7 + v85) = v83;
      sub_10000F480(v7, 0, 1, v84);

      v31 = v124;
LABEL_35:
      sub_10000F530(v7, v128);
      v86 = sub_100003724(&qword_1000264A8, &qword_100017C68);
      sub_10001223C();
      if (v87)
      {
        break;
      }

      v88 = *(v86 + 48);
      v89 = v129;
      v90 = *(v128 + v88);
      (*v126)(v31);
      v91 = v123;
      (*v127)(v123, v31, v89);

      v92 = Logger.logObject.getter();
      v93 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v92, v93))
      {
        v94 = sub_100012198();
        v119 = sub_100012180();
        v130 = v119;
        *v94 = v113;
        v118 = v92;
        v95 = *(v90 + 16);
        v96 = *(v90 + 24);

        v97 = sub_100012304();
        v99 = sub_10001364C(v97, v96, v98);

        *(v94 + 4) = v99;
        *(v94 + 12) = 2082;
        UUID.uuidString.getter();
        v101 = v100;
        v32 = *v120;
        (*v120)(v91, v129);
        v102 = sub_100012304();
        v104 = sub_10001364C(v102, v101, v103);

        *(v94 + 14) = v104;
        v105 = v118;
        _os_log_impl(&_mh_execute_header, v118, v93, "- Service Extension '%{public}s' %{public}s Loaded", v94, 0x16u);
        swift_arrayDestroy();
        sub_100003E3C();
        v7 = v114;
        sub_100003E3C();

        v106 = v124;
        (v32)(v124, v129);
        v31 = v106;
      }

      else
      {

        v107 = *v120;
        v32 = v129;
        (*v120)(v91, v129);
        (v107)(v31, v32);
      }

      v71 = v122;
      v74 = v121;
      if (!v15)
      {
        goto LABEL_30;
      }
    }
  }

  else
  {
    sub_10000A794();
    sub_10000A828();
    sub_1000079F8();
  }

LABEL_44:
  sub_1000121C8();
}

uint64_t sub_10000BB74(unint64_t a1)
{
  if (a1 >> 62)
  {
    return _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

uint64_t sub_10000BB98()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC7Sidecar14ServiceManager__activeExtensions;
  result = sub_1000120FC();
  v4 = *(v0 + v2);
  if (v4 >> 62)
  {
    if (v4 < 0)
    {
      v19 = *(v0 + v2);
    }

    result = _CocoaArrayWrapper.endIndex.getter();
    v5 = result;
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v5 >= 1)
  {
    if (qword_100025DE0 != -1)
    {
      sub_100011FA8();
    }

    v6 = type metadata accessor for Logger();
    sub_1000120C4(v6, qword_100026848);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = sub_100012284();
      *v9 = 134217984;
      *(v9 + 4) = v5;
      sub_1000120DC(&_mh_execute_header, v10, v11, "Canceling %ld Services");
      sub_100012058();
    }

    v12 = *(v1 + v2);
    result = sub_10000BB74(v12);
    if (result)
    {
      v13 = result;
      if (result < 1)
      {
        __break(1u);
      }

      else
      {

        for (i = 0; i != v13; ++i)
        {
          if ((v12 & 0xC000000000000001) != 0)
          {
            sub_100012328();
            v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v15 = *(v12 + 8 * i + 32);
          }

          v16 = *(v15 + 56);
          if (v16 && (v17 = v16, v18 = [v17 serviceViewControllerProxy], v17, swift_unknownObjectRelease(), v18))
          {
            [v18 sidecarServiceCancel];

            swift_unknownObjectRelease();
          }

          else
          {
          }
        }
      }
    }
  }

  return result;
}

void sub_10000BD88(uint64_t a1)
{
  v3 = *(a1 + 56);
  if (v3)
  {
    v4 = *(v1 + OBJC_IVAR____TtC7Sidecar14ServiceManager_navigationController);
    v10 = v3;
    v5 = [v4 topViewController];
    if (v5)
    {
      v6 = v5;
      sub_1000038B0(0, &qword_100026490, UIViewController_ptr);
      v7 = v10;
      sub_100012174();
      v8 = static NSObject.== infix(_:_:)();

      if (v8)
      {
        v9 = [v2 supportedInterfaceOrientations];

        sub_10000A57C(v9);
      }

      else
      {
      }
    }
  }
}

void sub_10000BE90()
{
  v3 = OBJC_IVAR____TtC7Sidecar14ServiceManager__activeExtensions;
  sub_100012018();
  v4 = *(v0 + v3);
  if (sub_10000BB74(v4))
  {
    if ((v4 & 0xC000000000000001) != 0)
    {

      sub_1000123F4();
      sub_100012174();
    }

    else
    {
      sub_100012334();
      if (!v5)
      {
        __break(1u);
        goto LABEL_21;
      }

      sub_100012424();
    }

    v6 = *(v1 + 80);
    v7 = v6 ^ 1u;
    if (qword_100025DE0 != -1)
    {
      sub_100011FA8();
    }

    v8 = type metadata accessor for Logger();
    sub_1000120C4(v8, qword_100026848);

    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v9, v10))
    {
      sub_100012198();
      v21[0] = sub_100012130();
      *v2 = 136446466;
      v11 = *(v1 + 16);
      v12 = *(v1 + 24);

      v13 = sub_10001364C(v11, v12, v21);

      *(v2 + 4) = v13;
      sub_1000122F8();
      if (v6)
      {
        v14 = 0x6465776F6C6C41;
      }

      else
      {
        v14 = 0x64656C6261736944;
      }

      if (v6)
      {
        v15 = 0xE700000000000000;
      }

      else
      {
        v15 = 0xE800000000000000;
      }

      v16 = sub_10001364C(v14, v15, v21);

      *(v2 + 14) = v16;
      sub_100012218();
      _os_log_impl(v17, v18, v19, v20, v2, 0x16u);
      sub_100012114();
      sub_100011FFC();
      sub_100003E3C();
    }

    else
    {
    }
  }

  else
  {
    v7 = 0;
  }

  if (UIApp)
  {
    [UIApp setIdleTimerDisabled:v7];
    return;
  }

LABEL_21:
  __break(1u);
}

id sub_10000C0A8(id result)
{
  if (*(v1 + OBJC_IVAR____TtC7Sidecar14ServiceManager__wantsVolumeButtonEvents) != (result & 1))
  {
    result = UIApp;
    if (UIApp)
    {
      return [UIApp setWantsVolumeButtonEvents:?];
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

id sub_10000C0E4(char a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC7Sidecar14ServiceManager__wantsVolumeButtonEvents);
  *(v1 + OBJC_IVAR____TtC7Sidecar14ServiceManager__wantsVolumeButtonEvents) = a1;
  return sub_10000C0A8(v2);
}

void sub_10000C0FC(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC7Sidecar14ServiceManager__backgroundStyle;
  if (*(v1 + OBJC_IVAR____TtC7Sidecar14ServiceManager__backgroundStyle) == a1)
  {
    return;
  }

  if (!UIApp)
  {
    __break(1u);
    goto LABEL_10;
  }

  [UIApp _setBackgroundStyle:?];
  v3 = [*(v1 + OBJC_IVAR____TtC7Sidecar14ServiceManager_navigationController) view];
  if (!v3)
  {
LABEL_10:
    __break(1u);
    return;
  }

  v4 = v3;
  v5 = *(v1 + v2);
  v6 = objc_opt_self();
  v7 = &selRef_blackColor;
  if (v5)
  {
    v7 = &selRef_clearColor;
  }

  v8 = [v6 *v7];
  [v4 setBackgroundColor:v8];
}

void sub_10000C204(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC7Sidecar14ServiceManager__backgroundStyle);
  *(v1 + OBJC_IVAR____TtC7Sidecar14ServiceManager__backgroundStyle) = a1;
  sub_10000C0FC(v2);
}

void sub_10000C21C()
{
  v1 = v0;
  if (qword_100025DE0 != -1)
  {
    sub_100011FA8();
  }

  v2 = type metadata accessor for Logger();
  sub_100003454(v2, qword_100026848);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (sub_100012158(v4))
  {
    v5 = sub_100012284();
    v6 = sub_100012200();
    v24[0] = v6;
    *v5 = 136446210;
    *(v5 + 4) = sub_10001364C(0xD000000000000018, 0x8000000100018460, v24);
    sub_100012218();
    _os_log_impl(v7, v8, v9, v10, v5, 0xCu);
    sub_100003924(v6);
    sub_100003E3C();
    sub_100011FFC();
  }

  Notification.object.getter();
  if (!v24[3])
  {
    sub_1000117D8(v24, &qword_100026480, &qword_100017C50);
    return;
  }

  sub_1000038B0(0, &qword_100026488, UIScreen_ptr);
  if (sub_1000123B4())
  {
    v11 = [v23 displayIdentity];
    if (!v11)
    {
      __break(1u);
LABEL_19:
      __break(1u);
      return;
    }

    v12 = v11;
    v13 = [v11 expectsSecureRendering];

    if (v13)
    {
      v14 = *(v1 + OBJC_IVAR____TtC7Sidecar14ServiceManager__secureScreen);
      *(v1 + OBJC_IVAR____TtC7Sidecar14ServiceManager__secureScreen) = v23;
      v15 = v23;

      v16 = Logger.logObject.getter();
      v17 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        _os_log_impl(&_mh_execute_header, v16, v17, "Moving window to Secure Screen", v18, 2u);
        sub_100012058();
      }

      v19 = *(v1 + OBJC_IVAR____TtC7Sidecar14ServiceManager_window);
      [v19 setScreen:v15];
      [v19 makeKeyAndVisible];
      if ((sub_100005108() & 1) == 0)
      {
        goto LABEL_14;
      }

      v20 = [*(v1 + OBJC_IVAR____TtC7Sidecar14ServiceManager__baseViewController) view];
      if (v20)
      {
        v21 = v20;
        v22 = [objc_opt_self() redColor];
        [v21 setBackgroundColor:v22];

LABEL_14:
        return;
      }

      goto LABEL_19;
    }
  }
}

void sub_10000C514()
{
  v1 = v0;
  if (qword_100025DE0 != -1)
  {
    sub_100011FA8();
  }

  v2 = type metadata accessor for Logger();
  sub_1000120C4(v2, qword_100026848);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = sub_100012284();
    v6 = sub_100012200();
    v19[0] = v6;
    *v5 = 136446210;
    *(v5 + 4) = sub_10001364C(0xD00000000000001BLL, 0x8000000100018440, v19);
    sub_1000120DC(&_mh_execute_header, v7, v8, "%{public}s");
    sub_100003924(v6);
    sub_100011FFC();
    sub_100012058();
  }

  Notification.object.getter();
  if (v19[3])
  {
    sub_1000038B0(0, &qword_100026488, UIScreen_ptr);
    if (sub_1000123B4())
    {
      v9 = [v18 displayIdentity];
      if (v9)
      {
        v10 = v9;
        v11 = [v9 expectsSecureRendering];

        if (!v11)
        {
          goto LABEL_12;
        }

        v12 = *(v1 + OBJC_IVAR____TtC7Sidecar14ServiceManager__secureScreen);
        *(v1 + OBJC_IVAR____TtC7Sidecar14ServiceManager__secureScreen) = 0;

        v13 = *(v1 + OBJC_IVAR____TtC7Sidecar14ServiceManager_window);
        v14 = [objc_opt_self() mainScreen];
        [v13 setScreen:v14];

        if ((sub_100005108() & 1) == 0)
        {
          goto LABEL_12;
        }

        v15 = [*(v1 + OBJC_IVAR____TtC7Sidecar14ServiceManager__baseViewController) view];
        if (v15)
        {
          v16 = v15;
          v17 = [objc_opt_self() greenColor];
          [v16 setBackgroundColor:v17];

LABEL_12:
          return;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
    }
  }

  else
  {
    sub_1000117D8(v19, &qword_100026480, &qword_100017C50);
  }
}

uint64_t sub_10000C79C(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  v6 = type metadata accessor for Notification();
  v7 = sub_100003D6C(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  __chkstk_darwin(v7);
  sub_100003DD0();
  v14 = v13 - v12;
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = a1;
  a4(v14);

  return (*(v9 + 8))(v14, v6);
}

void sub_10000C878()
{
  if (qword_100025DE0 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100003454(v0, qword_100026848);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v5 = v3;
    *v2 = 136446210;
    *(v2 + 4) = sub_10001364C(0xD00000000000001FLL, 0x8000000100018420, &v5);
    _os_log_impl(&_mh_execute_header, oslog, v1, "%{public}s", v2, 0xCu);
    sub_100003924(v3);
  }
}

uint64_t sub_10000C9D8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100003724(&qword_100026478, &qword_100017C48);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v28 - v6;
  if (qword_100025DE0 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100003454(v8, qword_100026848);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v29 = v12;
    *v11 = 136446210;
    *(v11 + 4) = sub_10001364C(0xD000000000000025, 0x80000001000183F0, &v29);
    _os_log_impl(&_mh_execute_header, v9, v10, "%{public}s", v11, 0xCu);
    sub_100003924(v12);
  }

  sub_10000F4D4(a1, v7, &qword_100026478, &qword_100017C48);
  v13 = type metadata accessor for Notification();
  if (sub_10000F4A8(v7, 1, v13) == 1)
  {
    sub_1000117D8(v7, &qword_100026478, &qword_100017C48);
    v14 = 0;
  }

  else
  {
    v15 = Notification.name.getter();
    (*(*(v13 - 8) + 8))(v7, v13);
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;
    if (v16 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v18 == v19)
    {
      v14 = 1;
    }

    else
    {
      v14 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  v21 = OBJC_IVAR____TtC7Sidecar14ServiceManager__activeExtensions;
  swift_beginAccess();
  v22 = *(v2 + v21);
  result = sub_10000BB74(v22);
  if (result)
  {
    if ((v22 & 0xC000000000000001) != 0)
    {

      v24 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (!*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return result;
      }

      v24 = *(v22 + 32);
    }

    v25 = *(v24 + 56);
    v26 = v25;

    if (v25)
    {
      v27 = [v26 serviceViewControllerProxy];

      result = swift_unknownObjectRelease();
      if (v27)
      {
        [v27 sidecarServiceVolumeDownButtonPressed:v14 & 1];
        return swift_unknownObjectRelease();
      }
    }
  }

  return result;
}

uint64_t sub_10000CD74(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  v7 = sub_100003724(&qword_100026478, &qword_100017C48);
  sub_100012084(v7);
  v9 = *(v8 + 64);
  sub_10001214C();
  __chkstk_darwin(v10);
  v12 = &v18 - v11;
  if (a3)
  {
    static Notification._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = type metadata accessor for Notification();
    v14 = 0;
  }

  else
  {
    v13 = type metadata accessor for Notification();
    v14 = 1;
  }

  sub_10000F480(v12, v14, 1, v13);
  v15 = a1;
  v16 = sub_10001226C();
  a4(v16);

  return sub_1000117D8(v12, &qword_100026478, &qword_100017C48);
}

uint64_t sub_10000CE58(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100003724(&qword_100026478, &qword_100017C48);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v28 - v6;
  if (qword_100025DE0 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100003454(v8, qword_100026848);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v29 = v12;
    *v11 = 136446210;
    *(v11 + 4) = sub_10001364C(0xD000000000000023, 0x80000001000183C0, &v29);
    _os_log_impl(&_mh_execute_header, v9, v10, "%{public}s", v11, 0xCu);
    sub_100003924(v12);
  }

  sub_10000F4D4(a1, v7, &qword_100026478, &qword_100017C48);
  v13 = type metadata accessor for Notification();
  if (sub_10000F4A8(v7, 1, v13) == 1)
  {
    sub_1000117D8(v7, &qword_100026478, &qword_100017C48);
    v14 = 0;
  }

  else
  {
    v15 = Notification.name.getter();
    (*(*(v13 - 8) + 8))(v7, v13);
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;
    if (v16 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v18 == v19)
    {
      v14 = 1;
    }

    else
    {
      v14 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  v21 = OBJC_IVAR____TtC7Sidecar14ServiceManager__activeExtensions;
  swift_beginAccess();
  v22 = *(v2 + v21);
  result = sub_10000BB74(v22);
  if (result)
  {
    if ((v22 & 0xC000000000000001) != 0)
    {

      v24 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (!*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return result;
      }

      v24 = *(v22 + 32);
    }

    v25 = *(v24 + 56);
    v26 = v25;

    if (v25)
    {
      v27 = [v26 serviceViewControllerProxy];

      result = swift_unknownObjectRelease();
      if (v27)
      {
        [v27 sidecarServiceVolumeUpButtonPressed:v14 & 1];
        return swift_unknownObjectRelease();
      }
    }
  }

  return result;
}

void sub_10000D1F4(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC7Sidecar14ServiceManager_window);
  v4 = *(v1 + OBJC_IVAR____TtC7Sidecar14ServiceManager__secureScreen);
  if (v4)
  {
    v5 = *(v1 + OBJC_IVAR____TtC7Sidecar14ServiceManager__secureScreen);
  }

  else
  {
    v5 = [objc_opt_self() mainScreen];
    v4 = 0;
  }

  v6 = v4;
  [v3 setScreen:v5];

  v7 = *(a1 + 56);
  if (!v7)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v8 = *(v1 + OBJC_IVAR____TtC7Sidecar14ServiceManager_navigationController);
  v40 = v7;
  v9 = [v8 viewControllers];
  sub_1000038B0(0, &qword_100026490, UIViewController_ptr);
  v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v11 = sub_10000BB74(v10);
  v12 = (v1 + OBJC_IVAR____TtC7Sidecar14ServiceManager__animationConfig);
  v13 = *(v1 + OBJC_IVAR____TtC7Sidecar14ServiceManager__animationConfig);
  v14 = *(v1 + OBJC_IVAR____TtC7Sidecar14ServiceManager__animationConfig + 8);
  v15 = *(v1 + OBJC_IVAR____TtC7Sidecar14ServiceManager__animationConfig + 16);
  *v12 = 1;
  v12[1] = nullsub_1;
  v12[2] = 0;

  sub_10000F3F8(v13, v14);
  v16 = [v40 supportedInterfaceOrientations];
  sub_10000AF90(v40, v10);
  v18 = v17;
  LOBYTE(v15) = v19;

  if ((v15 & 1) == 0)
  {
    v22 = sub_10000BB74(v10);
    if (__OFSUB__(v22, 1))
    {
      __break(1u);
    }

    else
    {
      if (v18 == v22 - 1)
      {

        goto LABEL_18;
      }

      if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v10 & 0x8000000000000000) != 0 || (v10 & 0x4000000000000000) != 0)
      {
        v10 = sub_100011774(v10);
      }

      v23 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v18 < v23)
      {
        v39 = v3;
        v24 = v23 - 1;
        v25 = v23 - 1 - v18;
        v26 = (v10 & 0xFFFFFFFFFFFFFF8) + 8 * v18;
        v27 = *(v26 + 0x20);
        memmove((v26 + 32), (v26 + 40), 8 * v25);
        *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) = v24;

        v28 = *(a1 + 56);
        if (v28)
        {
          v29 = v28;

          [v8 pushViewController:v29 animated:v11 > 1];

          v3 = v39;
          goto LABEL_18;
        }

LABEL_31:
        __break(1u);
        return;
      }
    }

    __break(1u);
    goto LABEL_29;
  }

  v20 = *(a1 + 56);
  if (!v20)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v21 = v20;

  [v8 pushViewController:v21 animated:v11 > 1];

LABEL_18:
  [v8 setNeedsStatusBarAppearanceUpdate];
  sub_10000A57C(v16);
  SBSUndimScreen();
  sub_10000A8BC();
  v30 = *v12;
  v31 = v12[1];
  v32 = v12[2];
  v12[1] = 0;
  v12[2] = 0;
  *v12 = 0;
  sub_10000F3F8(v30, v31);
  [v3 makeKeyAndVisible];
  v33 = *(a1 + 56);
  if (v33)
  {
    v34 = v33;
    v35 = [v34 serviceViewControllerProxy];

    swift_unknownObjectRelease();
    if (v35)
    {
      [v35 sidecarServiceActive];
      swift_unknownObjectRelease();
    }

    v36 = *(a1 + 56);
    if (v36)
    {
      v37 = v36;
      v38 = [v37 serviceViewControllerProxy];

      swift_unknownObjectRelease();
      if (v38)
      {
        [v38 sidecarServiceSetActive:1];
        swift_unknownObjectRelease();
      }
    }
  }

  sub_10000A794();
  sub_10000A828();
  sub_10000BE90();
}

id sub_10000D5C0(uint64_t a1)
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

void sub_10000D64C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    swift_errorRetain();
    if (qword_100025DE0 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    v9 = sub_100003454(v8, qword_100026848);
    __chkstk_darwin(v9);
    v10[2] = a4;
    v10[3] = a5;
    swift_errorRetain();
    sub_100004600(sub_100011734, v10, v9, a2);
  }
}

uint64_t sub_10000D740(Swift::String *a1, int a2, Swift::Int a3)
{
  _StringGuts.grow(_:)(a3);

  String.append(_:)(a1[1]);
  v4._countAndFlagsBits = 8231;
  v4._object = 0xE200000000000000;
  String.append(_:)(v4);
  v5._countAndFlagsBits = UUID.uuidString.getter();
  String.append(_:)(v5);

  v6._countAndFlagsBits = sub_100012328();
  String.append(_:)(v6);
  return 0xD000000000000013;
}

void sub_10000D804(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(a2, a3);
}

id sub_10000D890(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC7Sidecar14ServiceManager__animationConfig);
  v4 = *(v2 + OBJC_IVAR____TtC7Sidecar14ServiceManager__animationConfig + 8);
  if (!v4)
  {
    return 0;
  }

  v5 = v3[2];
  if (*v3 != 1)
  {
    if (*v3 == 2)
    {
      if (a2 == 1)
      {
        v6 = type metadata accessor for SlideIn();
      }

      else
      {
        v6 = type metadata accessor for SlideOut();
      }

      goto LABEL_10;
    }

    v7 = v3[2];

    v4(v8);
    v9 = sub_100012328();
    sub_10000F3F8(v9, v10);
    return 0;
  }

  v6 = type metadata accessor for Fade();
LABEL_10:
  objc_allocWithZone(v6);

  v12 = sub_1000120B8();
  return sub_10000D9D4(v12, v13);
}

id sub_10000D9D4(uint64_t a1, uint64_t a2)
{
  v2[OBJC_IVAR____TtC7SidecarP33_B1827D7A219FDFB98F7225EB7121A0B79Animation_sentCompletion] = 0;
  v3 = &v2[OBJC_IVAR____TtC7SidecarP33_B1827D7A219FDFB98F7225EB7121A0B79Animation_completion];
  *v3 = a1;
  v3[1] = a2;
  v5.receiver = v2;
  v5.super_class = type metadata accessor for Animation();
  return objc_msgSendSuper2(&v5, "init");
}

id sub_10000DA28()
{
  v1 = v0;
  if ((v0[OBJC_IVAR____TtC7SidecarP33_B1827D7A219FDFB98F7225EB7121A0B79Animation_sentCompletion] & 1) == 0)
  {
    v3 = *&v0[OBJC_IVAR____TtC7SidecarP33_B1827D7A219FDFB98F7225EB7121A0B79Animation_completion];
    v2 = *&v0[OBJC_IVAR____TtC7SidecarP33_B1827D7A219FDFB98F7225EB7121A0B79Animation_completion + 8];
    v4 = *&v1[OBJC_IVAR____TtC7SidecarP33_B1827D7A219FDFB98F7225EB7121A0B79Animation_completion + 8];

    v3(v5);
  }

  v7.receiver = v1;
  v7.super_class = type metadata accessor for Animation();
  return objc_msgSendSuper2(&v7, "dealloc");
}

uint64_t sub_10000DB40()
{
  *(v0 + OBJC_IVAR____TtC7SidecarP33_B1827D7A219FDFB98F7225EB7121A0B79Animation_sentCompletion) = 1;
  v1 = *(v0 + OBJC_IVAR____TtC7SidecarP33_B1827D7A219FDFB98F7225EB7121A0B79Animation_completion);
  v2 = *(v0 + OBJC_IVAR____TtC7SidecarP33_B1827D7A219FDFB98F7225EB7121A0B79Animation_completion + 8);
  return v1();
}

void sub_10000DC2C(void *a1)
{
  v2 = [a1 viewControllerForKey:UITransitionContextFromViewControllerKey];
  if (!v2)
  {
    __break(1u);
    goto LABEL_8;
  }

  v3 = v2;
  v4 = [a1 viewControllerForKey:UITransitionContextToViewControllerKey];
  if (!v4)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v5 = v4;
  [a1 finalFrameForViewController:v4];
  x = v34.origin.x;
  y = v34.origin.y;
  width = v34.size.width;
  height = v34.size.height;
  v10 = -CGRectGetHeight(v34);
  v35.origin.x = x;
  v35.origin.y = y;
  v35.size.width = width;
  v35.size.height = height;
  v36 = CGRectOffset(v35, 0.0, v10);
  v11 = v36.origin.x;
  v12 = v36.origin.y;
  v13 = v36.size.width;
  v14 = v36.size.height;
  v15 = [v5 view];
  if (!v15)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v16 = v15;
  [v15 setFrame:{v11, v12, v13, v14}];

  v17 = [a1 containerView];
  v18 = [v5 view];
  if (!v18)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v19 = v18;
  v20 = [v3 view];
  if (v20)
  {
    v21 = v20;
    [v17 insertSubview:v19 aboveSubview:v20];

    v22 = objc_opt_self();
    v23 = swift_allocObject();
    *(v23 + 2) = v5;
    v23[3] = x;
    v23[4] = y;
    v23[5] = width;
    v23[6] = height;
    v32 = sub_10000F384;
    v33 = v23;
    v28 = _NSConcreteStackBlock;
    v29 = 1107296256;
    v30 = sub_10001243C;
    v31 = &unk_100020DB8;
    v24 = _Block_copy(&v28);
    v25 = v5;

    v26 = swift_allocObject();
    *(v26 + 16) = a1;
    v32 = sub_10000F3E4;
    v33 = v26;
    v28 = _NSConcreteStackBlock;
    v29 = 1107296256;
    v30 = sub_100011FA0;
    v31 = &unk_100020E08;
    v27 = _Block_copy(&v28);
    swift_unknownObjectRetain();

    [v22 animateWithDuration:v24 animations:v27 completion:0.25];
    _Block_release(v27);
    _Block_release(v24);

    return;
  }

LABEL_11:
  __break(1u);
}

uint64_t sub_10000DF58(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

void sub_10000DFE0(void *a1)
{
  v2 = [a1 viewControllerForKey:UITransitionContextFromViewControllerKey];
  if (!v2)
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = v2;
  v4 = [a1 viewControllerForKey:UITransitionContextToViewControllerKey];
  if (!v4)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v5 = v4;
  [a1 initialFrameForViewController:v3];
  x = v32.origin.x;
  y = v32.origin.y;
  width = v32.size.width;
  height = v32.size.height;
  v10 = -CGRectGetHeight(v32);
  v33.origin.x = x;
  v33.origin.y = y;
  v33.size.width = width;
  v33.size.height = height;
  v34 = CGRectOffset(v33, 0.0, v10);
  v11 = v34.origin.x;
  v12 = v34.origin.y;
  v13 = v34.size.width;
  v14 = v34.size.height;
  v15 = [a1 containerView];
  v16 = [v5 view];
  if (!v16)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v17 = v16;
  v18 = [v3 view];
  if (v18)
  {
    v19 = v18;
    [v15 insertSubview:v17 belowSubview:v18];

    v20 = objc_opt_self();
    v21 = swift_allocObject();
    *(v21 + 2) = v3;
    v21[3] = v11;
    v21[4] = v12;
    v21[5] = v13;
    v21[6] = v14;
    v30 = sub_100011F5C;
    v31 = v21;
    v26 = _NSConcreteStackBlock;
    v27 = 1107296256;
    v28 = sub_10001243C;
    v29 = &unk_100020D18;
    v22 = _Block_copy(&v26);
    v23 = v3;

    v24 = swift_allocObject();
    *(v24 + 16) = a1;
    v30 = sub_100011F58;
    v31 = v24;
    v26 = _NSConcreteStackBlock;
    v27 = 1107296256;
    v28 = sub_100011FA0;
    v29 = &unk_100020D68;
    v25 = _Block_copy(&v26);
    swift_unknownObjectRetain();

    [v20 animateWithDuration:v22 animations:v25 completion:0.25];
    _Block_release(v25);
    _Block_release(v22);

    return;
  }

LABEL_9:
  __break(1u);
}

void sub_10000E2BC()
{
  sub_100012380();
  v1 = [v0 view];
  if (v1)
  {
    v5 = v1;
    v2 = sub_10001236C();
    [v3 v4];
  }

  else
  {
    __break(1u);
  }
}

void sub_10000E364(void *a1)
{
  v2 = [a1 viewControllerForKey:UITransitionContextFromViewControllerKey];
  if (!v2)
  {
    __break(1u);
    goto LABEL_8;
  }

  v3 = v2;
  v4 = [a1 viewControllerForKey:UITransitionContextToViewControllerKey];
  if (!v4)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v5 = v4;
  v6 = [v4 view];
  if (!v6)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v7 = v6;
  [v6 setAlpha:0.0];

  v8 = [a1 containerView];
  v9 = [v5 view];
  if (!v9)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v10 = v9;
  v11 = [v3 view];
  if (v11)
  {
    v12 = v11;
    [v8 insertSubview:v10 belowSubview:v11];

    v13 = objc_opt_self();
    v14 = swift_allocObject();
    *(v14 + 16) = v3;
    *(v14 + 24) = v5;
    v25 = sub_10000F2E4;
    v26 = v14;
    v21 = _NSConcreteStackBlock;
    v22 = 1107296256;
    v23 = sub_10001243C;
    v24 = &unk_100020C78;
    v15 = _Block_copy(&v21);
    v16 = v3;
    v17 = v5;

    v18 = swift_allocObject();
    *(v18 + 16) = v16;
    *(v18 + 24) = a1;
    v25 = sub_10000F344;
    v26 = v18;
    v21 = _NSConcreteStackBlock;
    v22 = 1107296256;
    v23 = sub_100011FA0;
    v24 = &unk_100020CC8;
    v19 = _Block_copy(&v21);
    v20 = v16;
    swift_unknownObjectRetain();

    [v13 animateWithDuration:v15 animations:v19 completion:0.25];
    _Block_release(v19);
    _Block_release(v15);

    return;
  }

LABEL_11:
  __break(1u);
}

void sub_10000E624(void *a1, void *a2)
{
  v3 = [a1 view];
  if (!v3)
  {
    __break(1u);
    goto LABEL_7;
  }

  v4 = v3;
  [v3 setAlpha:0.0];

  v5 = [a2 view];
  if (!v5)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v6 = v5;
  [v5 setAlpha:1.0];
}

id sub_10000E6C8(int a1, id a2, void *a3)
{
  result = [a2 view];
  if (result)
  {
    v5 = result;
    [result setAlpha:1.0];

    return [a3 completeTransition:1];
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_10000E758(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  swift_unknownObjectRetain();
  v7 = a1;
  a4(a3);
  swift_unknownObjectRelease();
}

void sub_10000E7F4()
{
  v1 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v0 setView:v1];
}

uint64_t sub_10000E954()
{
  v1 = [v0 topViewController];
  if (!v1)
  {
    return 1;
  }

  v2 = v1;
  v3 = [v1 shouldAutorotate];

  return v3;
}

uint64_t sub_10000E9E4()
{
  v1 = [v0 topViewController];
  if (!v1)
  {
    return 30;
  }

  v2 = v1;
  v3 = [v1 supportedInterfaceOrientations];

  return v3;
}

id sub_10000EA84()
{
  v1 = [v0 topViewController];

  return v1;
}

id sub_10000EABC(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  if (!a1)
  {
    ObjCClassFromMetadata = 0;
    if (!a2)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  if (v3)
  {
LABEL_3:
    v3 = swift_getObjCClassFromMetadata();
  }

LABEL_4:
  v6.receiver = v2;
  v6.super_class = type metadata accessor for ServiceNavigationController();
  return objc_msgSendSuper2(&v6, "initWithNavigationBarClass:toolbarClass:", ObjCClassFromMetadata, v3);
}

id sub_10000EB98(void *a1, uint64_t (*a2)(void), SEL *a3)
{
  v8.receiver = v3;
  v8.super_class = a2();
  v6 = objc_msgSendSuper2(&v8, *a3, a1);

  return v6;
}

id sub_10000EC38(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t))
{
  if (a2)
  {
    v7 = String._bridgeToObjectiveC()();
  }

  else
  {
    v7 = 0;
  }

  v10.receiver = v4;
  v10.super_class = a4(a1);
  v8 = objc_msgSendSuper2(&v10, "initWithNibName:bundle:", v7, a3);

  return v8;
}

id sub_10000ECE0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(uint64_t))
{
  if (a3)
  {
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  v10 = a4;
  return sub_10000EC38(v7, v9, a4, a5);
}

id sub_10000ED54(void *a1, uint64_t (*a2)(void))
{
  v6.receiver = v2;
  v6.super_class = a2();
  v4 = objc_msgSendSuper2(&v6, "initWithCoder:", a1);

  if (v4)
  {
  }

  return v4;
}

id sub_10000EE14(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_10000EE4C(unint64_t a1)
{
  if (!UIApp)
  {
    __break(1u);
    JUMPOUT(0x10000EFFCLL);
  }

  v2 = [UIApp statusBarOrientation];
  switch(v2)
  {
    case 1uLL:
      if ((a1 & 2) != 0)
      {
        v3 = 1;
      }

      else
      {
        v3 = (a1 >> 2) & 1;
      }

      break;
    case 2uLL:
      v3 = (a1 >> 2) & 1;
      break;
    case 3uLL:
      v4 = (~a1 & 0x18) == 0;
      v5 = (a1 >> 3) & 1;
      goto LABEL_8;
    case 4uLL:
      v4 = (~a1 & 0x18) == 0;
      v5 = (a1 >> 4) & 1;
LABEL_8:
      if (v4)
      {
        v3 = 1;
      }

      else
      {
        v3 = v5;
      }

      break;
    default:
      v3 = 0;
      break;
  }

  if (qword_100025DE0 != -1)
  {
    sub_100011FA8();
  }

  v6 = type metadata accessor for Logger();
  sub_1000120C4(v6, qword_100026848);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();
  if (sub_100012158(v8))
  {
    v9 = sub_100012198();
    v10 = sub_100012200();
    v19 = v10;
    *v9 = 136446466;
    v11 = UIInterfaceOrientation.description.getter(v2);
    v13 = sub_10001364C(v11, v12, &v19);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2048;
    *(v9 + 14) = a1;
    sub_100012218();
    _os_log_impl(v14, v15, v16, v17, v9, 0x16u);
    sub_100003924(v10);
    sub_100003E3C();
    sub_100011FFC();
  }

  return v3;
}

uint64_t UIDeviceOrientation.description.getter(uint64_t a1)
{
  v1 = a1 - 1;
  result = 0x7469617274726F70;
  switch(v1)
  {
    case 0:
      return result;
    case 1:
      result = sub_100012090();
      break;
    case 2:
    case 3:
      result = sub_1000120A4();
      break;
    case 4:
      result = 0x705565636166;
      break;
    case 5:
      result = 0x6E776F4465636166;
      break;
    default:
      result = 0x6E776F6E6B6E75;
      break;
  }

  return result;
}

uint64_t UIInterfaceOrientation.description.getter(uint64_t a1)
{
  v1 = a1 - 1;
  result = 0x7469617274726F70;
  switch(v1)
  {
    case 0:
      return result;
    case 1:
      result = sub_100012090();
      break;
    case 2:
    case 3:
      result = sub_1000120A4();
      break;
    default:
      result = 0x6E776F6E6B6E75;
      break;
  }

  return result;
}

uint64_t sub_10000F2A4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000F2EC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000F304()
{
  v1 = *(v0 + 24);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000F34C()
{

  return _swift_deallocObject(v0, 56, 7);
}

double sub_10000F388()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  sub_10000E2BC();
  return result;
}

uint64_t sub_10000F3AC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000F3F8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_10000F408()
{
  v0 = type metadata accessor for UUID();
  sub_1000035C0(v0, qword_100026190);
  sub_100003454(v0, qword_100026190);
  return UUID.init(uuid:)();
}

uint64_t sub_10000F4D4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = sub_100003724(a3, a4);
  sub_100012074(v5);
  v7 = *(v6 + 16);
  v8 = sub_1000120B8();
  v9(v8);
  return a2;
}

uint64_t sub_10000F530(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003724(&qword_100026498, &qword_100017C58);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_10000F5DC(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return sub_10000F71C(a1, v4);
}

unint64_t sub_10000F620(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();

  return sub_10000F7E0(a1, a2, v6);
}

unint64_t sub_10000F698(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  type metadata accessor for UUID();
  sub_100011830(&qword_1000264D8);
  v5 = dispatch thunk of Hashable._rawHashValue(seed:)();

  return sub_10000F894(a1, v5);
}

unint64_t sub_10000F71C(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
  for (i = a2 & v3; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v3)
  {
    sub_100011DFC(*(v2 + 48) + 40 * i, v7);
    v5 = static AnyHashable.== infix(_:_:)();
    sub_100011E58(v7);
    if (v5)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_10000F7E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_10000F894(uint64_t a1, uint64_t a2)
{
  v14 = a1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = v2 + 64;
  v13 = ~(-1 << *(v2 + 32));
  for (i = a2 & v13; ((1 << i) & *(v15 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v13)
  {
    (*(v5 + 16))(v8, *(v2 + 48) + *(v5 + 72) * i, v4);
    sub_100011830(&qword_1000264C8);
    v10 = dispatch thunk of static Equatable.== infix(_:_:)();
    (*(v5 + 8))(v8, v4);
    if (v10)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_10000FA3C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = sub_10000F698(a1);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  v7 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v2;
  v9 = *(*v2 + 24);
  sub_100003724(&qword_1000264D0, &qword_100017C80);
  _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v9);
  v10 = *(v14 + 48);
  v11 = type metadata accessor for UUID();
  (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v6, v11);
  v12 = *(*(v14 + 56) + 8 * v6);
  type metadata accessor for ServiceExtension();
  sub_100011830(&qword_1000264D8);
  _NativeDictionary._delete(at:)();
  *v2 = v14;
  return v12;
}

_OWORD *sub_10000FB88(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_10000F620(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_13;
  }

  v16 = v11;
  v17 = v12;
  sub_100003724(&qword_1000264F8, &unk_100017C90);
  if (!_NativeDictionary.ensureUnique(isUnique:capacity:)(a4 & 1, v15))
  {
    goto LABEL_5;
  }

  v18 = *v5;
  v19 = sub_10000F620(a2, a3);
  if ((v17 & 1) != (v20 & 1))
  {
LABEL_13:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v16 = v19;
LABEL_5:
  v21 = *v5;
  if (v17)
  {
    sub_100003924((v21[7] + 32 * v16));
    v22 = sub_1000120B8();

    return sub_1000039D0(v22, v23);
  }

  else
  {
    sub_10000FE8C(v16, a2, a3, a1, v21);
  }
}

uint64_t sub_10000FCCC(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v14 = sub_10000F698(a2);
  v16 = *(v13 + 16);
  v17 = (v15 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_11;
  }

  v19 = v14;
  v20 = v15;
  sub_100003724(&qword_1000264D0, &qword_100017C80);
  if (!_NativeDictionary.ensureUnique(isUnique:capacity:)(a3 & 1, v18))
  {
    goto LABEL_5;
  }

  v21 = *v4;
  v22 = sub_10000F698(a2);
  if ((v20 & 1) != (v23 & 1))
  {
LABEL_11:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v19 = v22;
LABEL_5:
  v24 = *v4;
  if (v20)
  {
    v25 = v24[7];
    v26 = *(v25 + 8 * v19);
    *(v25 + 8 * v19) = a1;
  }

  else
  {
    (*(v9 + 16))(v12, a2, v8);
    return sub_10000FEF8(v19, v12, a1, v24);
  }
}

_OWORD *sub_10000FE8C(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_1000039D0(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

uint64_t sub_10000FEF8(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for UUID();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

uint64_t sub_10000FFB0(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_100017B50;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_100010014@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = v2;
  v9 = *v2;
  v10 = *(*v2 + 40);
  sub_100011830(&qword_1000264D8);
  v28 = a1;
  v11 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v27 = v9;
  v12 = ~(-1 << *(v9 + 32));
  while (1)
  {
    v13 = v11 & v12;
    if (((*(v9 + 56 + (((v11 & v12) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v11 & v12)) & 1) == 0)
    {
      v16 = 1;
      v17 = v26;
      return sub_10000F480(v17, v16, 1, v4);
    }

    v14 = *(v5 + 72) * v13;
    (*(v5 + 16))(v8, *(v27 + 48) + v14, v4);
    sub_100011830(&qword_1000264C8);
    v15 = dispatch thunk of static Equatable.== infix(_:_:)();
    (*(v5 + 8))(v8, v4);
    if (v15)
    {
      break;
    }

    v11 = v13 + 1;
  }

  v18 = v25;
  v19 = *v25;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v18;
  v29 = *v18;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_100010260();
    v21 = v29;
  }

  v22 = *(v21 + 48) + v14;
  v17 = v26;
  (*(v5 + 32))(v26, v22, v4);
  sub_100010ADC(v13);
  v16 = 0;
  *v18 = v29;
  return sub_10000F480(v17, v16, 1, v4);
}

void *sub_100010260()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003724(&unk_1000264E0, &qword_100017C88);
  v7 = *v0;
  v8 = static _SetStorage.copy(original:)();
  v9 = v8;
  if (*(v7 + 16))
  {
    v23 = v1;
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
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v7 + 56);
    v17 = (v14 + 63) >> 6;
    v24 = v3 + 32;
    for (i = v3 + 16; v16; result = (*(v3 + 32))(*(v9 + 48) + v21, v6, v2))
    {
      v18 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v21 = *(v3 + 72) * (v18 | (v13 << 6));
      (*(v3 + 16))(v6, *(v7 + 48) + v21, v2);
    }

    v19 = v13;
    while (1)
    {
      v13 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v13 >= v17)
      {

        v1 = v23;
        goto LABEL_21;
      }

      v20 = *(v7 + 56 + 8 * v13);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
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

uint64_t sub_100010494(uint64_t a1)
{
  v2 = v1;
  v37 = type metadata accessor for UUID();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  sub_100003724(&unk_1000264E0, &qword_100017C88);
  v10 = static _SetStorage.resize(original:capacity:move:)();
  result = v8;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v35 = v4 + 16;
    v36 = v4;
    v18 = v10 + 56;
    v33 = (v4 + 32);
    v34 = result;
    if (v16)
    {
      while (1)
      {
        v19 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v22 = *(v36 + 72);
        (*(v36 + 16))(v7, *(result + 48) + v22 * (v19 | (v12 << 6)), v37);
        v23 = *(v10 + 40);
        sub_100011830(&qword_1000264D8);
        result = dispatch thunk of Hashable._rawHashValue(seed:)();
        v24 = -1 << *(v10 + 32);
        v25 = result & ~v24;
        v26 = v25 >> 6;
        if (((-1 << v25) & ~*(v18 + 8 * (v25 >> 6))) == 0)
        {
          break;
        }

        v27 = __clz(__rbit64((-1 << v25) & ~*(v18 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v18 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
        (*v33)(*(v10 + 48) + v27 * v22, v7, v37);
        ++*(v10 + 16);
        result = v34;
        if (!v16)
        {
          goto LABEL_9;
        }
      }

      v28 = 0;
      v29 = (63 - v24) >> 6;
      while (++v26 != v29 || (v28 & 1) == 0)
      {
        v30 = v26 == v29;
        if (v26 == v29)
        {
          v26 = 0;
        }

        v28 |= v30;
        v31 = *(v18 + 8 * v26);
        if (v31 != -1)
        {
          v27 = __clz(__rbit64(~v31)) + (v26 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v20 = v12;
      while (1)
      {
        v12 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          break;
        }

        if (v12 >= v17)
        {

          v2 = v32;
          goto LABEL_27;
        }

        v21 = *(v13 + 8 * v12);
        ++v20;
        if (v21)
        {
          v19 = __clz(__rbit64(v21));
          v16 = (v21 - 1) & v21;
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
    *v2 = v10;
  }

  return result;
}

uint64_t sub_100010798(uint64_t a1)
{
  v2 = v1;
  v41 = type metadata accessor for UUID();
  v4 = *(v41 - 8);
  v5 = v4[8];
  __chkstk_darwin(v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  sub_100003724(&unk_1000264E0, &qword_100017C88);
  result = static _SetStorage.resize(original:capacity:move:)();
  v10 = result;
  if (!*(v7 + 16))
  {
LABEL_29:

    *v2 = v10;
    return result;
  }

  v35 = v2;
  v36 = v7;
  v11 = 0;
  v12 = (v7 + 56);
  v13 = 1 << *(v7 + 32);
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(v7 + 56);
  v16 = (v13 + 63) >> 6;
  v39 = v4 + 4;
  v17 = result + 56;
  if (!v15)
  {
LABEL_9:
    v19 = v11;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v11 >= v16)
      {
        break;
      }

      v20 = v12[v11];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v15 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      sub_10000FFB0(0, (v33 + 63) >> 6, v12);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v18 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
LABEL_14:
    v21 = *(v7 + 48) + v4[9] * (v18 | (v11 << 6));
    v22 = v4[4];
    v37 = v4[9];
    v38 = v22;
    v22(v40, v21, v41);
    v23 = v10;
    v24 = *(v10 + 40);
    sub_100011830(&qword_1000264D8);
    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v10 = v23;
    v25 = -1 << *(v23 + 32);
    v26 = result & ~v25;
    v27 = v26 >> 6;
    if (((-1 << v26) & ~*(v17 + 8 * (v26 >> 6))) == 0)
    {
      break;
    }

    v28 = __clz(__rbit64((-1 << v26) & ~*(v17 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v17 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
    result = v38(*(v23 + 48) + v28 * v37, v40, v41);
    ++*(v23 + 16);
    v7 = v36;
    if (!v15)
    {
      goto LABEL_9;
    }
  }

  v29 = 0;
  v30 = (63 - v25) >> 6;
  while (++v27 != v30 || (v29 & 1) == 0)
  {
    v31 = v27 == v30;
    if (v27 == v30)
    {
      v27 = 0;
    }

    v29 |= v31;
    v32 = *(v17 + 8 * v27);
    if (v32 != -1)
    {
      v28 = __clz(__rbit64(~v32)) + (v27 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_100010ADC(int64_t a1)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  result = __chkstk_darwin(v3);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v1;
  v10 = *v1 + 56;
  v11 = -1 << *(*v1 + 32);
  v12 = (a1 + 1) & ~v11;
  if (((1 << v12) & *(v10 + 8 * (v12 >> 6))) != 0)
  {
    v13 = ~v11;
    v14 = *v1;

    v15 = _HashTable.previousHole(before:)();
    if ((*(v10 + 8 * (v12 >> 6)) & (1 << v12)) != 0)
    {
      v40 = (v15 + 1) & v13;
      v17 = *(v4 + 16);
      v16 = v4 + 16;
      v39 = v17;
      v18 = *(v16 + 56);
      v41 = v16;
      v42 = v18;
      v19 = v13;
      v20 = (v16 - 8);
      v21 = v9;
      while (1)
      {
        v22 = v10;
        v23 = v42 * v12;
        v24 = v19;
        v39(v8, *(v21 + 48) + v42 * v12, v3);
        v25 = v21;
        v26 = *(v21 + 40);
        sub_100011830(&qword_1000264D8);
        v27 = dispatch thunk of Hashable._rawHashValue(seed:)();
        (*v20)(v8, v3);
        v19 = v24;
        v28 = v27 & v24;
        if (a1 >= v40)
        {
          if (v28 < v40 || a1 < v28)
          {
LABEL_20:
            v21 = v25;
            goto LABEL_24;
          }
        }

        else if (v28 < v40 && a1 < v28)
        {
          goto LABEL_20;
        }

        v21 = v25;
        v30 = *(v25 + 48);
        v31 = v42 * a1;
        v32 = v30 + v42 * a1;
        v33 = v30 + v23 + v42;
        if (v42 * a1 < v23 || v32 >= v33)
        {
          swift_arrayInitWithTakeFrontToBack();
LABEL_23:
          v19 = v24;
          a1 = v12;
          goto LABEL_24;
        }

        a1 = v12;
        if (v31 != v23)
        {
          swift_arrayInitWithTakeBackToFront();
          goto LABEL_23;
        }

LABEL_24:
        v12 = (v12 + 1) & v19;
        v10 = v22;
        if (((*(v22 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
        {

          goto LABEL_28;
        }
      }
    }

    v21 = v9;
LABEL_28:
    *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
    v21 = v9;
  }

  v36 = *(v21 + 16);
  v37 = __OFSUB__(v36, 1);
  v38 = v36 - 1;
  if (v37)
  {
    __break(1u);
  }

  else
  {
    *(v21 + 16) = v38;
    ++*(v21 + 36);
  }

  return result;
}

uint64_t sub_100010DD4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
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

uint64_t sub_100010E2C(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v6 = result;
  v7 = *v3;
  result = sub_10000BB74(*v3);
  if (result < a2)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v8 = a2 - v6;
  if (__OFSUB__(a2, v6))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v9 = 1 - v8;
  if (__OFSUB__(1, v8))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v10 = sub_10000BB74(v7);
  v11 = __OFADD__(v10, v9);
  result = v10 + v9;
  if (v11)
  {
LABEL_13:
    __break(1u);
    return result;
  }

  sub_100010EDC(result);

  return sub_100010F7C(v6, a2, 1, a3);
}

uint64_t sub_100010EDC(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_10:
    _CocoaArrayWrapper.endIndex.getter();
    goto LABEL_11;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
  v6 = *(v5 + 16);
LABEL_11:
  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  *v1 = result;
  return result;
}

uint64_t sub_100010F7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_25;
  }

  v4 = a4;
  v7 = a3;
  v8 = a2;
  v6 = a1;
  v13 = *v5;
  v10 = *v5 & 0xFFFFFFFFFFFFFF8;
  v11 = v10 + 32;
  v9 = v10 + 32 + 8 * a1;
  type metadata accessor for ServiceExtension();
  result = swift_arrayDestroy();
  v15 = __OFSUB__(v7, v12);
  v12 = v7 - v12;
  if (v15)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v5 = (v9 + 8 * v7);
  if (!v12)
  {
    goto LABEL_17;
  }

  v9 = v13 >> 62;
  if (!(v13 >> 62))
  {
    result = *(v10 + 16);
    goto LABEL_6;
  }

LABEL_26:
  result = _CocoaArrayWrapper.endIndex.getter();
LABEL_6:
  v16 = result - v8;
  if (__OFSUB__(result, v8))
  {
    __break(1u);
LABEL_28:
    __break(1u);
    return result;
  }

  v17 = (v11 + 8 * v8);
  if (v5 != v17 || &v17[8 * v16] <= v5)
  {
    memmove(v5, v17, 8 * v16);
  }

  if (v9)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    result = *(v10 + 16);
  }

  if (__OFADD__(result, v12))
  {
    goto LABEL_28;
  }

  *(v10 + 16) = result + v12;
LABEL_17:
  if (v7 < 1)
  {
  }

  else
  {
    v19 = v10 + 8 * v6;
    *(v19 + 32) = v4;
    if (v19 + 40 < v5)
    {

      __break(1u);
    }
  }

  return result;
}

BOOL sub_1000110EC(char *a1, char *a2)
{
  v25 = a1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = v2;
  v9 = *v2;
  v10 = *(*v2 + 40);
  sub_100011830(&qword_1000264D8);
  v30 = a2;
  v11 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v27 = v9;
  v28 = v9 + 56;
  v12 = ~(-1 << *(v9 + 32));
  v29 = v5 + 16;
  v26 = v5 + 8;
  while (1)
  {
    v13 = v11 & v12;
    v14 = (1 << (v11 & v12)) & *(v28 + (((v11 & v12) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v14)
    {
      v19 = v24;
      v20 = *v24;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v22 = v30;
      (*(v5 + 16))(v8, v30, v4);
      v31 = *v19;
      sub_10001138C(v8, v13, isUniquelyReferenced_nonNull_native);
      *v19 = v31;
      (*(v5 + 32))(v25, v22, v4);
      return v14 == 0;
    }

    v15 = *(v5 + 72) * v13;
    v16 = *(v5 + 16);
    v16(v8, *(v27 + 48) + v15, v4);
    sub_100011830(&qword_1000264C8);
    v17 = dispatch thunk of static Equatable.== infix(_:_:)();
    v18 = *(v5 + 8);
    v18(v8, v4);
    if (v17)
    {
      break;
    }

    v11 = v13 + 1;
  }

  v18(v30, v4);
  v16(v25, *(v27 + 48) + v15, v4);
  return v14 == 0;
}

uint64_t sub_10001138C(uint64_t a1, unint64_t a2, char a3)
{
  v24 = a1;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  if (v12 <= v11 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_100010798(v11 + 1);
      goto LABEL_8;
    }

    if (v12 <= v11)
    {
      sub_100010494(v11 + 1);
LABEL_8:
      v23 = v3;
      v13 = *v3;
      v14 = *(*v3 + 40);
      sub_100011830(&qword_1000264D8);
      v15 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v16 = ~(-1 << *(v13 + 32));
      while (1)
      {
        a2 = v15 & v16;
        if (((*(v13 + 56 + (((v15 & v16) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v15 & v16)) & 1) == 0)
        {
          break;
        }

        (*(v7 + 16))(v10, *(v13 + 48) + *(v7 + 72) * a2, v6);
        sub_100011830(&qword_1000264C8);
        v17 = dispatch thunk of static Equatable.== infix(_:_:)();
        (*(v7 + 8))(v10, v6);
        if (v17)
        {
          goto LABEL_16;
        }

        v15 = a2 + 1;
      }

      v3 = v23;
      goto LABEL_13;
    }

    sub_100010260();
  }

LABEL_13:
  v18 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v7 + 32))(*(v18 + 48) + *(v7 + 72) * a2, v24, v6);
  v20 = *(v18 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (v21)
  {
    __break(1u);
LABEL_16:
    result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v18 + 16) = v22;
  }

  return result;
}

uint64_t sub_100011600()
{
  v1 = type metadata accessor for UUID();
  sub_100003D6C(v1);
  v3 = *(v2 + 80);
  v5 = *(v4 + 64);

  v6 = *(v0 + 24);

  v7 = sub_1000121F0();
  v8(v7);

  return _swift_deallocObject(v0, ((v3 + 32) & ~v3) + v5, v3 | 7);
}

void sub_1000116B8()
{
  v1 = type metadata accessor for UUID();
  sub_100012084(v1);
  v3 = *(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = sub_100012328();

  sub_10000D64C(v6, v7, v8, v9, v10);
}

uint64_t sub_100011774(unint64_t a1)
{
  if (a1 >> 62)
  {
    _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v1 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
}

uint64_t sub_1000117D8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100003724(a2, a3);
  sub_100012074(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t sub_100011830(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for UUID();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100011874()
{
  v1 = type metadata accessor for Logger();
  sub_100012074(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4);
  v6 = *(v0 + v5 + 8);

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

id sub_10001190C()
{
  v1 = type metadata accessor for Logger();
  sub_100012048(v1);
  v3 = v2;
  v5 = v4;
  v6 = *(v3 + 80);
  v7 = *(v5 + 64);
  sub_100012038();
  v10 = (v0 + v9);
  v11 = *v10;
  v12 = v10[1];

  return sub_100007F50(v0 + v8, v11, v12);
}

uint64_t sub_10001198C()
{
  v1 = type metadata accessor for Logger();
  sub_100012074(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4);

  v7 = *(v0 + v6 + 8);

  return _swift_deallocObject(v0, v6 + 16, v3 | 7);
}

uint64_t sub_100011A34(char a1)
{
  v3 = type metadata accessor for Logger();
  sub_100012048(v3);
  v5 = v4;
  v7 = v6;
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = *(v7 + 64);
  sub_100012038();
  v12 = *(v1 + v11);
  v13 = v1 + ((v11 + 15) & 0xFFFFFFFFFFFFFFF8);
  v14 = *v13;
  v15 = *(v13 + 8);

  return sub_100008080(a1, v1 + v10, v12, v14);
}

uint64_t sub_100011AD0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  sub_100012340();

  return _swift_deallocObject(v3, v4, v5);
}

uint64_t sub_100011B20()
{
  v1 = type metadata accessor for UUID();
  sub_100003D6C(v1);
  v3 = *(v2 + 80);
  v5 = (*(v4 + 64) + ((v3 + 40) & ~v3) + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;

  v7 = *(v0 + 32);

  v8 = sub_1000121F0();
  v9(v8);
  v10 = *(v0 + v5 + 8);

  v11 = *(v0 + v6);

  return _swift_deallocObject(v0, v6 + 8, v3 | 7);
}

uint64_t sub_100011C08(uint64_t a1)
{
  v3 = type metadata accessor for UUID();
  sub_100012048(v3);
  v5 = v4;
  v7 = v6;
  v8 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v9 = *(v7 + 64);
  sub_100012038();
  v12 = (v11 + 23) & 0xFFFFFFFFFFFFFFF8;
  v13 = v1[2];
  v14 = v1[3];
  v15 = v1[4];
  v16 = v1 + v11;
  v17 = *v16;
  v18 = *(v16 + 1);
  v19 = *(v1 + v12);

  return sub_100006CA4(a1, v13, v14, v15, v1 + v10, v17, v18, v19);
}

uint64_t sub_100011CAC()
{
  v1 = type metadata accessor for UUID();
  sub_100003D6C(v1);
  v3 = *(v2 + 80);
  v5 = (*(v4 + 64) + ((v3 + 40) & ~v3) + 7) & 0xFFFFFFFFFFFFFFF8;

  v6 = *(v0 + 32);

  v7 = sub_1000121F0();
  v8(v7);
  v9 = *(v0 + v5);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

void sub_100011D78()
{
  v1 = type metadata accessor for UUID();
  sub_100012048(v1);
  v3 = v2;
  v5 = v4;
  v6 = *(v3 + 80);
  v7 = *(v5 + 64);
  sub_100012038();
  v9 = v0[2];
  v10 = v0[3];
  v12 = *(v0 + v11);
  v13 = v0[4];

  sub_100006A08(v9, v10, v13, v0 + v8, v12);
}

uint64_t sub_100011EAC()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100011EEC()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  sub_100012340();

  return _swift_deallocObject(v3, v4, v5);
}

uint64_t sub_100011FA8()
{

  return swift_once();
}

uint64_t sub_100011FFC()
{
}

uint64_t sub_100012018()
{

  return swift_beginAccess();
}

uint64_t sub_100012058()
{
}

void sub_1000120DC(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t sub_1000120FC()
{

  return swift_beginAccess();
}

uint64_t sub_100012114()
{

  return swift_arrayDestroy();
}

uint64_t sub_100012130()
{

  return swift_slowAlloc();
}

BOOL sub_100012158(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_100012180()
{

  return swift_slowAlloc();
}

uint64_t sub_100012198()
{

  return swift_slowAlloc();
}

uint64_t sub_100012200()
{

  return swift_slowAlloc();
}

uint64_t sub_100012284()
{

  return swift_slowAlloc();
}

uint64_t sub_10001229C()
{

  return swift_beginAccess();
}

uint64_t sub_1000122B8(uint64_t result, uint64_t a2)
{
  *(v2 - 336) = result;
  *(v2 - 328) = a2;
  return result;
}

uint64_t sub_100012394()
{

  return type metadata accessor for UUID();
}

uint64_t sub_1000123B4()
{

  return swift_dynamicCast();
}

void sub_1000123D4(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v6, a4, v4, 0x16u);
}

uint64_t sub_1000123F4()
{

  return specialized _ArrayBuffer._getElementSlowPath(_:)();
}

id sub_10001240C(id a1, SEL a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return [a1 a2];
}

uint64_t sub_100012424()
{
  v2 = *(v0 + 32);
}

uint64_t sub_10001243C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_100012480(uint64_t a1, void *a2)
{
  *(v2 + 56) = 0;
  *(v2 + 64) = 0;
  *(v2 + 72) = 0;
  *(v2 + 80) = 1;
  *(v2 + 88) = 0;
  v5 = OBJC_IVAR____TtC7Sidecar16ServiceExtension_uuid;
  v6 = type metadata accessor for UUID();
  sub_10000F480(v2 + v5, 1, 1, v6);
  *(v2 + OBJC_IVAR____TtC7Sidecar16ServiceExtension_loaded) = 0;
  *(v2 + OBJC_IVAR____TtC7Sidecar16ServiceExtension_loading) = 0;
  v7 = OBJC_IVAR____TtC7Sidecar16ServiceExtension_logger;
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  (*(v9 + 16))(v2 + v7, a1, v8);
  result = sub_100013E08(a2);
  if (!v11)
  {
    __break(1u);
    goto LABEL_11;
  }

  *(v2 + 16) = result;
  *(v2 + 24) = v11;
  *(v2 + 48) = a2;
  v12 = a2;
  result = sub_100013E6C(v12);
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v13 = result;
  AnyHashable.init<A>(_:)();
  sub_1000126A4(v17, v13, &v18);

  sub_100011E58(v17);
  if (v19)
  {
    if (swift_dynamicCast())
    {
      (*(v9 + 8))(a1, v8);

      v14 = 0xD000000000000012;
      v15 = 0x8000000100018730;
LABEL_9:
      *(v2 + 32) = v14;
      *(v2 + 40) = v15;
      return v2;
    }
  }

  else
  {
    sub_100013ED8(&v18, &qword_100026480, &qword_100017C50);
  }

  result = sub_100013E08(v12);
  if (v16)
  {
    v14 = result;
    v15 = v16;
    (*(v9 + 8))(a1, v8);

    goto LABEL_9;
  }

LABEL_12:
  __break(1u);
  return result;
}

double sub_1000126A4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  if (*(a2 + 16) && (v5 = sub_10000F5DC(a1), (v6 & 1) != 0))
  {
    v7 = *(a2 + 56) + 32 * v5;

    sub_1000039E0(v7, a3);
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

void sub_100012708(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if ((*(&v2->_countAndFlagsBits + OBJC_IVAR____TtC7Sidecar16ServiceExtension_loaded) & 1) != 0 || (v4 = OBJC_IVAR____TtC7Sidecar16ServiceExtension_loading, *(&v2->_countAndFlagsBits + OBJC_IVAR____TtC7Sidecar16ServiceExtension_loading) == 1))
  {
    _StringGuts.grow(_:)(45);

    aBlock = 0xD000000000000011;
    v16 = 0x80000001000186D0;
    String.append(_:)(v2[1]);
    v14._countAndFlagsBits = 0xD00000000000001ALL;
    v14._object = 0x80000001000186F0;
    String.append(_:)(v14);
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {

    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      aBlock = v10;
      *v9 = 136446210;
      *(v9 + 4) = sub_10001364C(v3[1]._countAndFlagsBits, v3[1]._object, &aBlock);
      _os_log_impl(&_mh_execute_header, v7, v8, "=== Loading Service %{public}s ===", v9, 0xCu);
      sub_100003924(v10);
      sub_100003E3C();
      sub_100003E3C();
    }

    *(&v3->_countAndFlagsBits + v4) = 1;
    countAndFlagsBits = v3[3]._countAndFlagsBits;
    v12 = swift_allocObject();
    v12[2] = v3;
    v12[3] = a1;
    v12[4] = a2;
    v19 = sub_100013C00;
    v20 = v12;
    aBlock = _NSConcreteStackBlock;
    v16 = 1107296256;
    v17 = sub_100013048;
    v18 = &unk_100021038;
    v13 = _Block_copy(&aBlock);

    [countAndFlagsBits instantiateViewControllerWithInputItems:0 connectionHandler:v13];
    _Block_release(v13);
  }
}

uint64_t sub_100012990(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6)
{
  v36 = a5;
  v37 = a6;
  v10 = type metadata accessor for DispatchWorkItemFlags();
  v35 = *(v10 - 8);
  v11 = *(v35 + 64);
  __chkstk_darwin(v10);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DispatchQoS();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(v14);
  v19 = &v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(a4 + OBJC_IVAR____TtC7Sidecar16ServiceExtension_loading) = 0;
  if (a2 && (type metadata accessor for HostRemoteViewController(), (v17 = swift_dynamicCastClass()) != 0))
  {
    v20 = v17;
    sub_100013C2C();
    v33 = a2;
    v34 = static OS_dispatch_queue.main.getter();
    v21 = swift_allocObject();
    v21[2] = v20;
    v21[3] = a4;
    v22 = v36;
    v23 = v37;
    v21[4] = a1;
    v21[5] = v22;
    v21[6] = v23;
    aBlock[4] = sub_100013CC0;
    aBlock[5] = v21;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10001243C;
    aBlock[3] = &unk_100021088;
    v24 = _Block_copy(aBlock);
    swift_unknownObjectRetain();

    v25 = v33;

    static DispatchQoS.unspecified.getter();
    aBlock[0] = &_swiftEmptyArrayStorage;
    sub_100013CD0();
    sub_100003724(&qword_100025F68, &qword_100017D60);
    sub_10000376C();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v26 = v34;
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v24);

    (*(v35 + 8))(v13, v10);
    return (*(v15 + 8))(v19, v14);
  }

  else
  {
    if (a3)
    {
      __chkstk_darwin(v17);
      *(&v32 - 2) = a3;
      swift_errorRetain();
      sub_100004220(sub_100013C24, a4, sub_1000038F8);
    }

    else
    {

      v28 = Logger.logObject.getter();
      v29 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        aBlock[0] = v31;
        *v30 = 136446210;
        *(v30 + 4) = sub_10001364C(*(a4 + 16), *(a4 + 24), aBlock);
        _os_log_impl(&_mh_execute_header, v28, v29, "=== Service '%{public}s' Activation Failed ===", v30, 0xCu);
        sub_100003924(v31);
      }
    }

    return v36(0);
  }
}

uint64_t sub_100012DF4(Swift::String *a1)
{
  _StringGuts.grow(_:)(38);

  strcpy(v4, "=== Service '");
  HIWORD(v4[1]) = -4864;
  String.append(_:)(a1[1]);
  v2._object = 0x8000000100018710;
  v2._countAndFlagsBits = 0xD000000000000017;
  String.append(_:)(v2);
  return v4[0];
}

uint64_t sub_100012E8C(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v8 = sub_100003724(&qword_1000264A0, &qword_100017C60);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v12 = v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = v23 - v13;
  swift_weakAssign();
  if (a3)
  {
    v23[1] = a3;
    swift_unknownObjectRetain();
    sub_100003724(&qword_100026768, &qword_100017D68);
    v15 = type metadata accessor for UUID();
    v16 = swift_dynamicCast() ^ 1;
    v17 = v14;
    v18 = v15;
  }

  else
  {
    v18 = type metadata accessor for UUID();
    v17 = v14;
    v16 = 1;
  }

  sub_10000F480(v17, v16, 1, v18);
  sub_100013D28(v14, v12);
  v19 = OBJC_IVAR____TtC7Sidecar16ServiceExtension_uuid;
  swift_beginAccess();
  sub_100013D98(v12, a2 + v19);
  swift_endAccess();
  *(a2 + OBJC_IVAR____TtC7Sidecar16ServiceExtension_loaded) = 1;
  v20 = *(a2 + 56);
  *(a2 + 56) = a1;
  v21 = a1;

  return a4(1);
}

uint64_t sub_100013048(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);

  swift_unknownObjectRetain();
  v9 = a3;
  v10 = a4;
  v8(a2, a3, a4);

  return swift_unknownObjectRelease();
}

void sub_1000130E8()
{
  v1 = v0;
  v2 = sub_100003724(&qword_1000264A0, &qword_100017C60);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v17 - v4;
  v6 = OBJC_IVAR____TtC7Sidecar16ServiceExtension_loaded;
  if ((*(v0 + OBJC_IVAR____TtC7Sidecar16ServiceExtension_loaded) & 1) != 0 || *(v0 + OBJC_IVAR____TtC7Sidecar16ServiceExtension_loading) == 1)
  {

    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v18 = v10;
      *v9 = 136446210;
      *(v9 + 4) = sub_10001364C(*(v1 + 16), *(v1 + 24), &v18);
      _os_log_impl(&_mh_execute_header, v7, v8, "=== Unloading Service %{public}s ===", v9, 0xCu);
      sub_100003924(v10);
      sub_100003E3C();
      sub_100003E3C();
    }

    v11 = *(v1 + 56);
    if (v11)
    {
      v12 = v11;
      v13 = [v12 disconnect];
    }

    v14 = OBJC_IVAR____TtC7Sidecar16ServiceExtension_uuid;
    swift_beginAccess();
    sub_1000135DC(v1 + v14, v5);
    v15 = type metadata accessor for UUID();
    if (sub_10000F4A8(v5, 1, v15) != 1)
    {
      isa = UUID._bridgeToObjectiveC()().super.isa;
      (*(*(v15 - 8) + 8))(v5, v15);
      [*(v1 + 48) cancelExtensionRequestWithIdentifier:isa];
    }

    *(v1 + v6) = 0;
    *(v1 + OBJC_IVAR____TtC7Sidecar16ServiceExtension_loading) = 0;
  }
}

uint64_t sub_100013330()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  v3 = *(v0 + 88);
  swift_unknownObjectRelease();
  v4 = OBJC_IVAR____TtC7Sidecar16ServiceExtension_logger;
  v5 = type metadata accessor for Logger();
  sub_100013F34(v5);
  (*(v6 + 8))(v0 + v4);
  sub_100013ED8(v0 + OBJC_IVAR____TtC7Sidecar16ServiceExtension_uuid, &qword_1000264A0, &qword_100017C60);
  return v0;
}

uint64_t sub_1000133CC()
{
  sub_100013330();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for ServiceExtension()
{
  result = qword_100026530;
  if (!qword_100026530)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100013478()
{
  v0 = type metadata accessor for Logger();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_100013584();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_100013584()
{
  if (!qword_100026540)
  {
    type metadata accessor for UUID();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100026540);
    }
  }
}

uint64_t sub_1000135DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003724(&qword_1000264A0, &qword_100017C60);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10001364C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100013710(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_1000039E0(v11, *a3);
    *a3 = v9 + 32;
  }

  sub_100003924(v11);
  return v7;
}

unint64_t sub_100013710(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_100013810(a5, a6);
    *a1 = v9;
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
    result = _StringObject.sharedUTF8.getter();
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

char *sub_100013810(uint64_t a1, unint64_t a2)
{
  v4 = sub_10001385C(a1, a2);
  sub_100013974(&off_100020938);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_10001385C(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = String.UTF8View._foreignCount()())
  {
    result = sub_100013A58(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = _StringGuts._foreignCopyUTF8(into:)();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = result + 32;
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = _StringObject.sharedUTF8.getter();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = v7 + 32;
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return &_swiftEmptyArrayStorage;
}

uint64_t sub_100013974(uint64_t result)
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
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v8 = v4 + v2;
    }

    else
    {
      v8 = v4;
    }

    result = sub_100013AC8(result, v8, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v9 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v9 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v10 = *(v3 + 16);
  v11 = __OFADD__(v10, v2);
  v12 = v10 + v2;
  if (!v11)
  {
    *(v3 + 16) = v12;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_100013A58(uint64_t a1, uint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  sub_100003724(&unk_1000266F0, &unk_100017D50);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_100013AC8(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003724(&unk_1000266F0, &unk_100017D50);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[v8] <= v12)
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

uint64_t sub_100013BC0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100013C0C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_100013C2C()
{
  result = qword_100025F58;
  if (!qword_100025F58)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100025F58);
  }

  return result;
}

uint64_t sub_100013C70()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);
  swift_unknownObjectRelease();
  v3 = *(v0 + 48);

  return _swift_deallocObject(v0, 56, 7);
}

unint64_t sub_100013CD0()
{
  result = qword_100025F60;
  if (!qword_100025F60)
  {
    type metadata accessor for DispatchWorkItemFlags();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100025F60);
  }

  return result;
}

uint64_t sub_100013D28(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003724(&qword_1000264A0, &qword_100017C60);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100013D98(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003724(&qword_1000264A0, &qword_100017C60);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100013E08(void *a1)
{
  v1 = [a1 identifier];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_100013E6C(void *a1)
{
  v1 = [a1 infoDictionary];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_100013ED8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100003724(a2, a3);
  sub_100013F34(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t static DispatchTimeInterval.seconds(_:)@<X0>(uint64_t a1@<X8>, double a2@<D0>)
{
  if (a2 < 0.0)
  {
    goto LABEL_39;
  }

  if (a2 >= 9223372040.0)
  {
    if (a2 >= 9.22337204e12)
    {
      if (a2 >= 9.22337204e15)
      {
        sub_10001605C();
        if (v5)
        {
          sub_100016140();
          if (!v9 & v8)
          {
LABEL_37:
            __break(1u);
            goto LABEL_38;
          }

          if (v13 <= -9.22337204e18)
          {
LABEL_38:
            __break(1u);
LABEL_39:
            result = _assertionFailure(_:_:file:line:flags:)();
            __break(1u);
            return result;
          }

          sub_100016240(v13);
          v6 = &enum case for DispatchTimeInterval.seconds(_:);
        }

        else
        {
          v6 = &enum case for DispatchTimeInterval.never(_:);
        }
      }

      else
      {
        sub_100016140();
        if (!v9 & v8)
        {
LABEL_34:
          __break(1u);
          goto LABEL_35;
        }

        if (v11 <= -9.22337204e18)
        {
LABEL_35:
          __break(1u);
LABEL_36:
          __break(1u);
          goto LABEL_37;
        }

        sub_10001605C();
        if (!v5)
        {
          goto LABEL_36;
        }

        sub_100016240(v12);
        v6 = &enum case for DispatchTimeInterval.milliseconds(_:);
      }
    }

    else
    {
      sub_100016140();
      if (!v9 & v8)
      {
LABEL_31:
        __break(1u);
        goto LABEL_32;
      }

      if (v7 <= -9.22337204e18)
      {
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      sub_10001605C();
      if (!v5)
      {
        goto LABEL_33;
      }

      sub_100016240(v10);
      v6 = &enum case for DispatchTimeInterval.microseconds(_:);
    }

    goto LABEL_25;
  }

  v3 = a2 * 1000000000.0;
  if ((*&v3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_29;
  }

  if (v3 <= -9.22337204e18)
  {
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  sub_10001605C();
  if (!v5)
  {
    goto LABEL_30;
  }

  sub_100016240(v4);
  v6 = &enum case for DispatchTimeInterval.nanoseconds(_:);
LABEL_25:
  v14 = *v6;
  v15 = type metadata accessor for DispatchTimeInterval();
  v16 = *(*(v15 - 8) + 104);

  return v16(a1, v14, v15);
}

Swift::Void __swiftcall OS_dispatch_source_timer.reset(_:)(Swift::Double a1)
{
  sub_100016010();
  sub_100016180();
  v3 = type metadata accessor for DispatchTimeInterval();
  v4 = sub_100003D6C(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  __chkstk_darwin(v4);
  sub_100011FEC();
  v11 = (v9 - v10);
  __chkstk_darwin(v12);
  v13 = sub_1000162D8();
  v14 = sub_100003D6C(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  __chkstk_darwin(v14);
  sub_100011FEC();
  v21 = v19 - v20;
  __chkstk_darwin(v22);
  sub_100016130();
  static DispatchTime.now()();
  + infix(_:_:)();
  v23 = *(v16 + 8);
  v23(v21, v13);
  (*(v6 + 104))(v1, enum case for DispatchTimeInterval.never(_:), v3);
  sub_10001545C(v11);
  sub_10001618C();
  v24 = *(v6 + 8);
  v24(v11, v3);
  v24(v1, v3);
  v23(v2, v13);
  sub_10001607C();
}

Swift::Void __swiftcall OS_dispatch_source_timer.reset(_:interval:)(Swift::Double _, Swift::Double interval)
{
  sub_100016010();
  v5 = v4;
  v6 = type metadata accessor for DispatchTimeInterval();
  v7 = sub_100003D6C(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  __chkstk_darwin(v7);
  sub_100011FEC();
  v14 = (v12 - v13);
  __chkstk_darwin(v15);
  v16 = sub_1000162D8();
  v17 = sub_100003D6C(v16);
  v19 = v18;
  v21 = *(v20 + 64);
  __chkstk_darwin(v17);
  sub_100011FEC();
  v24 = v22 - v23;
  __chkstk_darwin(v25);
  sub_100016130();
  static DispatchTime.now()();
  + infix(_:_:)();
  v26 = *(v19 + 8);
  v26(v24, v16);
  static DispatchTimeInterval.seconds(_:)(v2, v5);
  sub_10001545C(v14);
  sub_10001618C();
  v27 = *(v9 + 8);
  v27(v14, v6);
  v27(v2, v6);
  v26(v3, v16);
  sub_10001607C();
}

uint64_t sub_10001452C()
{
  v0 = type metadata accessor for DispatchQoS.QoSClass();
  v1 = sub_100003D6C(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  __chkstk_darwin(v1);
  sub_100003DD0();
  v8 = v7 - v6;
  sub_1000038B0(0, &qword_100025F58, OS_dispatch_queue_ptr);
  (*(v3 + 104))(v8, enum case for DispatchQoS.QoSClass.default(_:), v0);
  v9 = static OS_dispatch_queue.global(qos:)();
  result = (*(v3 + 8))(v8, v0);
  qword_100026E88 = v9;
  return result;
}

id static OS_dispatch_queue.defaultPriority.getter()
{
  if (qword_100026E80 != -1)
  {
    sub_10001603C();
  }

  v1 = qword_100026E88;

  return v1;
}

void OS_dispatch_queue.after(_:closure:)()
{
  sub_100016010();
  v3 = v2;
  v5 = v4;
  sub_100016180();
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = sub_100003D6C(v6);
  v30 = v8;
  v10 = *(v9 + 64);
  __chkstk_darwin(v7);
  sub_100003DD0();
  sub_100016120();
  v11 = type metadata accessor for DispatchQoS();
  v12 = sub_100003D6C(v11);
  v28 = v13;
  v29 = v12;
  v15 = *(v14 + 64);
  __chkstk_darwin(v12);
  sub_100003DD0();
  v18 = v17 - v16;
  v27 = type metadata accessor for DispatchTime();
  v19 = *(v27 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v27);
  sub_100011FEC();
  v23 = v21 - v22;
  __chkstk_darwin(v24);
  sub_100016130();
  static DispatchTime.now()();
  + infix(_:_:)();
  v25 = *(v19 + 8);
  v25(v23, v27);
  v31[4] = v5;
  v31[5] = v3;
  v31[0] = _NSConcreteStackBlock;
  v31[1] = 1107296256;
  v31[2] = sub_100015F3C;
  v31[3] = &unk_1000210B0;
  v26 = _Block_copy(v31);

  static DispatchQoS.unspecified.getter();
  sub_100014E08(&qword_100025F60, &type metadata accessor for DispatchWorkItemFlags);
  sub_100003724(&qword_100025F68, &qword_100017D60);
  sub_100014E50(&qword_100025F70, &qword_100025F68, &qword_100017D60);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v26);
  (*(v30 + 8))(v0, v6);
  (*(v28 + 8))(v18, v29);
  v25(v1, v27);

  sub_10001607C();
}

uint64_t sub_10001499C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void OS_dispatch_queue.once(_:closure:)()
{
  sub_100016010();
  v52 = v3;
  v53 = v4;
  sub_100016180();
  v5 = type metadata accessor for DispatchTimeInterval();
  v6 = sub_100003D6C(v5);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  sub_100015F88();
  v55 = v9;
  sub_100012278();
  __chkstk_darwin(v10);
  sub_1000160A4();
  sub_100016098();
  v54 = type metadata accessor for DispatchTime();
  v11 = sub_100003D6C(v54);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  sub_100015F88();
  sub_100016000();
  v15 = __chkstk_darwin(v14);
  v23 = sub_100015FB4(v15, v16, v17, v18, v19, v20, v21, v22, v50);
  v24 = sub_100003D6C(v23);
  v26 = *(v25 + 64);
  __chkstk_darwin(v24);
  sub_100003DD0();
  v51 = sub_1000160B0();
  v27 = sub_100003D6C(v51);
  v29 = *(v28 + 64);
  __chkstk_darwin(v27);
  sub_100003DD0();
  sub_100016120();
  v30 = type metadata accessor for OS_dispatch_source.TimerFlags();
  v31 = sub_100003D6C(v30);
  v33 = *(v32 + 64);
  __chkstk_darwin(v31);
  sub_100003DD0();
  sub_10001624C();
  sub_1000038B0(0, &qword_100026808, OS_dispatch_source_ptr);
  sub_100015F70();
  sub_100014E08(v34, v35);
  v36 = sub_1000162F8();
  sub_100016310(&qword_100026820);
  sub_100015F9C();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  sub_1000162B8();
  v37 = sub_10001606C();
  v38(v37, v30);
  swift_getObjectType();
  v39 = swift_allocObject();
  v39[2] = v52;
  v39[3] = v53;
  v39[4] = v30;
  v56[4] = sub_100014EA8;
  v56[5] = v39;
  v56[0] = _NSConcreteStackBlock;
  sub_100015F58(COERCE_DOUBLE(1107296256));
  v56[2] = v40;
  v56[3] = &unk_100021100;
  v41 = _Block_copy(v56);

  swift_unknownObjectRetain();
  static DispatchQoS.unspecified.getter();
  sub_100014EB0();
  sub_100016278();
  _Block_release(v41);
  v42 = sub_100016234();
  v43(v42);
  sub_10001602C();
  v44(v0, v51);

  sub_100016228();
  static DispatchTime.now()();
  sub_100016214();
  + infix(_:_:)();
  v45 = sub_1000160E8();
  (v41)(v45);
  v46 = sub_1000160CC();
  v47(v46);
  sub_10001545C(v55);
  sub_100016104();
  OS_dispatch_source_timer.schedule(deadline:repeating:leeway:)();
  v48 = *(v0 + 8);
  v48(v36, &unk_100017DC0);
  v49 = sub_100016208();
  (v48)(v49);
  (v41)(v2, v1);
  OS_dispatch_source.resume()();
  sub_1000161D4();
  sub_10001607C();
}

uint64_t sub_100014E08(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100014E50(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1000037D0(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100014EB0()
{
  type metadata accessor for DispatchWorkItemFlags();
  sub_100014E08(&qword_100025F60, &type metadata accessor for DispatchWorkItemFlags);
  sub_100003724(&qword_100025F68, &qword_100017D60);
  sub_100014E50(&qword_100025F70, &qword_100025F68, &qword_100017D60);
  return dispatch thunk of SetAlgebra.init<A>(_:)();
}

void OS_dispatch_queue.wallOnce(_:closure:)()
{
  sub_100016010();
  v52 = v3;
  v53 = v4;
  sub_100016180();
  v5 = type metadata accessor for DispatchTimeInterval();
  v6 = sub_100003D6C(v5);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  sub_100015F88();
  v55 = v9;
  sub_100012278();
  __chkstk_darwin(v10);
  sub_1000160A4();
  sub_100016098();
  v54 = type metadata accessor for DispatchWallTime();
  v11 = sub_100003D6C(v54);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  sub_100015F88();
  sub_100016000();
  v15 = __chkstk_darwin(v14);
  v23 = sub_100015FB4(v15, v16, v17, v18, v19, v20, v21, v22, v50);
  v24 = sub_100003D6C(v23);
  v26 = *(v25 + 64);
  __chkstk_darwin(v24);
  sub_100003DD0();
  v51 = sub_1000160B0();
  v27 = sub_100003D6C(v51);
  v29 = *(v28 + 64);
  __chkstk_darwin(v27);
  sub_100003DD0();
  sub_100016120();
  v30 = type metadata accessor for OS_dispatch_source.TimerFlags();
  v31 = sub_100003D6C(v30);
  v33 = *(v32 + 64);
  __chkstk_darwin(v31);
  sub_100003DD0();
  sub_10001624C();
  sub_1000038B0(0, &qword_100026808, OS_dispatch_source_ptr);
  sub_100015F70();
  sub_100014E08(v34, v35);
  v36 = sub_1000162F8();
  sub_100016310(&qword_100026820);
  sub_100015F9C();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  sub_1000162B8();
  v37 = sub_10001606C();
  v38(v37, v30);
  swift_getObjectType();
  v39 = swift_allocObject();
  v39[2] = v52;
  v39[3] = v53;
  v39[4] = v30;
  v56[4] = sub_100015F44;
  v56[5] = v39;
  v56[0] = _NSConcreteStackBlock;
  sub_100015F58(COERCE_DOUBLE(1107296256));
  v56[2] = v40;
  v56[3] = &unk_100021150;
  v41 = _Block_copy(v56);

  swift_unknownObjectRetain();
  static DispatchQoS.unspecified.getter();
  sub_100014EB0();
  sub_100016278();
  _Block_release(v41);
  v42 = sub_100016234();
  v43(v42);
  sub_10001602C();
  v44(v0, v51);

  sub_100016228();
  static DispatchWallTime.now()();
  sub_100016214();
  + infix(_:_:)();
  v45 = sub_1000160E8();
  (v41)(v45);
  v46 = sub_1000160CC();
  v47(v46);
  sub_10001545C(v55);
  sub_100016104();
  OS_dispatch_source_timer.schedule(wallDeadline:repeating:leeway:)();
  v48 = *(v0 + 8);
  v48(v36, &unk_100017DC0);
  v49 = sub_100016208();
  (v48)(v49);
  (v41)(v2, v1);
  OS_dispatch_source.resume()();
  sub_1000161D4();
  sub_10001607C();
}

uint64_t sub_1000153DC()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

void sub_10001541C()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  (*(v0 + 16))();
  swift_getObjectType();
  OS_dispatch_source.cancel()();
}

uint64_t sub_10001545C@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  v2 = enum case for DispatchTimeInterval.nanoseconds(_:);
  v3 = type metadata accessor for DispatchTimeInterval();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

void OS_dispatch_queue.timer(_:interval:closure:)()
{
  sub_100016010();
  v3 = sub_1000161B0(v1, v2);
  v4 = sub_100003D6C(v3);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  sub_100015F88();
  v51 = v7;
  sub_100012278();
  __chkstk_darwin(v8);
  sub_1000160A4();
  sub_100016098();
  v9 = type metadata accessor for DispatchTime();
  v10 = sub_100003D6C(v9);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  sub_100015F88();
  sub_100016000();
  v14 = __chkstk_darwin(v13);
  v22 = sub_100015FB4(v14, v15, v16, v17, v18, v19, v20, v21, v49);
  v23 = sub_100003D6C(v22);
  v25 = *(v24 + 64);
  __chkstk_darwin(v23);
  sub_100003DD0();
  v50 = sub_1000160B0();
  v26 = sub_100003D6C(v50);
  v28 = *(v27 + 64);
  __chkstk_darwin(v26);
  sub_100003DD0();
  v31 = (v30 - v29);
  v32 = type metadata accessor for OS_dispatch_source.TimerFlags();
  v33 = sub_100003D6C(v32);
  v35 = *(v34 + 64);
  __chkstk_darwin(v33);
  sub_100003DD0();
  sub_10001624C();
  v36 = sub_1000038B0(0, &qword_100026808, OS_dispatch_source_ptr);
  v52[0] = &_swiftEmptyArrayStorage;
  sub_100015F70();
  sub_100014E08(v37, v38);
  sub_1000162F8();
  sub_100016310(&qword_100026820);
  sub_100015F9C();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  static OS_dispatch_source.makeTimerSource(flags:queue:)();
  v39 = sub_10001606C();
  v40(v39, v32);
  swift_getObjectType();
  sub_100015FD8();
  sub_100015F58(COERCE_DOUBLE(1107296256));
  v52[2] = v41;
  v52[3] = &unk_100021178;
  v42 = _Block_copy(v52);

  static DispatchQoS.unspecified.getter();
  sub_100014EB0();
  sub_100016298();
  _Block_release(v42);
  v43 = sub_100016234();
  v44(v43);
  sub_10001602C();
  v45(v31, v50);

  sub_100016228();
  static DispatchTime.now()();
  sub_1000161F4();
  + infix(_:_:)();
  v46 = sub_1000161E0();
  v31(v46);
  sub_100016258();
  sub_10001545C(v51);
  sub_100016168();
  OS_dispatch_source_timer.schedule(deadline:repeating:leeway:)();
  v47 = sub_100016150();
  v51(v47);
  v48 = sub_100016208();
  v51(v48);
  (v31)(v36, v0);
  OS_dispatch_source.resume()();
  sub_1000161D4();
  sub_10001607C();
}

void OS_dispatch_queue.wallTimer(_:interval:closure:)()
{
  sub_100016010();
  v3 = sub_1000161B0(v1, v2);
  v4 = sub_100003D6C(v3);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  sub_100015F88();
  v51 = v7;
  sub_100012278();
  __chkstk_darwin(v8);
  sub_1000160A4();
  sub_100016098();
  v9 = type metadata accessor for DispatchWallTime();
  v10 = sub_100003D6C(v9);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  sub_100015F88();
  sub_100016000();
  v14 = __chkstk_darwin(v13);
  v22 = sub_100015FB4(v14, v15, v16, v17, v18, v19, v20, v21, v49);
  v23 = sub_100003D6C(v22);
  v25 = *(v24 + 64);
  __chkstk_darwin(v23);
  sub_100003DD0();
  v50 = sub_1000160B0();
  v26 = sub_100003D6C(v50);
  v28 = *(v27 + 64);
  __chkstk_darwin(v26);
  sub_100003DD0();
  v31 = (v30 - v29);
  v32 = type metadata accessor for OS_dispatch_source.TimerFlags();
  v33 = sub_100003D6C(v32);
  v35 = *(v34 + 64);
  __chkstk_darwin(v33);
  sub_100003DD0();
  sub_10001624C();
  v36 = sub_1000038B0(0, &qword_100026808, OS_dispatch_source_ptr);
  v52[0] = &_swiftEmptyArrayStorage;
  sub_100015F70();
  sub_100014E08(v37, v38);
  sub_1000162F8();
  sub_100016310(&qword_100026820);
  sub_100015F9C();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  static OS_dispatch_source.makeTimerSource(flags:queue:)();
  v39 = sub_10001606C();
  v40(v39, v32);
  swift_getObjectType();
  sub_100015FD8();
  sub_100015F58(COERCE_DOUBLE(1107296256));
  v52[2] = v41;
  v52[3] = &unk_1000211A0;
  v42 = _Block_copy(v52);

  static DispatchQoS.unspecified.getter();
  sub_100014EB0();
  sub_100016298();
  _Block_release(v42);
  v43 = sub_100016234();
  v44(v43);
  sub_10001602C();
  v45(v31, v50);

  sub_100016228();
  static DispatchWallTime.now()();
  sub_1000161F4();
  + infix(_:_:)();
  v46 = sub_1000161E0();
  v31(v46);
  sub_100016258();
  sub_10001545C(v51);
  sub_100016168();
  OS_dispatch_source_timer.schedule(wallDeadline:repeating:leeway:)();
  v47 = sub_100016150();
  v51(v47);
  v48 = sub_100016208();
  v51(v48);
  (v31)(v36, v0);
  OS_dispatch_source.resume()();
  sub_1000161D4();
  sub_10001607C();
}

uint64_t OS_dispatch_semaphore.wait(_:)()
{
  sub_100016180();
  v0 = type metadata accessor for DispatchTime();
  v1 = sub_100003D6C(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  __chkstk_darwin(v1);
  sub_100011FEC();
  v8 = (v6 - v7);
  __chkstk_darwin(v9);
  v11 = &v15 - v10;
  static DispatchTime.now()();
  + infix(_:_:)();
  v12 = *(v3 + 8);
  v12(v8, v0);
  v13 = OS_dispatch_semaphore.wait(timeout:)();
  v12(v11, v0);
  return v13 & 1;
}

uint64_t static OS_dispatch_source.makeSignalSourceIgnored(signal:queue:)(int a1)
{
  v2 = SIG_IGN.getter();
  signal(a1, v2);
  sub_1000038B0(0, &qword_100026808, OS_dispatch_source_ptr);
  return static OS_dispatch_source.makeSignalSource(signal:queue:)();
}

void sub_100015E28(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, double *a4@<X8>)
{
  v5 = *(a2 + a3 - 8);
  v6 = *a1;
  *a4 = OS_dispatch_source_data_replace.doubleData.getter();
}

void sub_100015E60(double *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + a4 - 8);
  v5 = *a2;
  OS_dispatch_source_data_replace.doubleData.setter(*a1);
}

void (*OS_dispatch_source_data_replace.doubleData.modify(uint64_t *a1, uint64_t a2))(Swift::UInt *a1)
{
  a1[1] = a2;
  a1[2] = v2;
  *a1 = OS_dispatch_source.data.getter();
  return sub_100015EEC;
}

void sub_100015EEC(Swift::UInt *a1)
{
  v1 = a1[1];
  v2 = a1[2];
  OS_dispatch_source_data_replace.replace(data:)(*a1);
}

uint64_t sub_100015FB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v10 - 216) = &a9 - v9;

  return type metadata accessor for DispatchWorkItemFlags();
}

void sub_100015FD8()
{
  v1 = *(v0 - 224);
  *(v0 - 120) = *(v0 - 232);
  *(v0 - 112) = v1;
  *(v0 - 152) = _NSConcreteStackBlock;
}

uint64_t sub_10001603C()
{

  return swift_once();
}

uint64_t sub_1000160B0()
{

  return type metadata accessor for DispatchQoS();
}

uint64_t sub_1000160CC()
{
  v1 = *(v0 - 168);
  v2 = *(*(v0 - 176) + 104);
  return *(v0 - 192);
}

uint64_t sub_1000160E8()
{
  v2 = *(v1 - 160);
  v3 = *(v2 + 8);
  *(v1 - 160) = v2 + 8;
  result = v0;
  v5 = *(v1 - 200);
  return result;
}

uint64_t sub_100016150()
{
  v2 = *(*(v1 - 168) + 8);
  result = v0;
  v4 = *(v1 - 160);
  return result;
}

uint64_t sub_10001618C()
{
  v2 = *(v0 - 104);

  return OS_dispatch_source_timer.schedule(deadline:repeating:leeway:)();
}

uint64_t sub_1000161B0(uint64_t a1, uint64_t a2)
{
  *(v3 - 240) = v2;
  *(v3 - 232) = a1;
  *(v3 - 224) = a2;

  return type metadata accessor for DispatchTimeInterval();
}

uint64_t sub_1000161E0()
{
  v2 = *(v1 - 192);
  v3 = *(*(v1 - 200) + 8);
  return v0;
}

uint64_t sub_100016258()
{
  v3 = *(v0 - 184);

  return static DispatchTimeInterval.seconds(_:)(v3, v2);
}

uint64_t sub_100016278()
{

  return OS_dispatch_source.setEventHandler(qos:flags:handler:)(v1, v2, v0, v3);
}

uint64_t sub_100016298()
{

  return OS_dispatch_source.setEventHandler(qos:flags:handler:)(v0, v3, v1, v2);
}

uint64_t sub_1000162B8()
{
  v2 = *(v0 - 264);

  return static OS_dispatch_source.makeTimerSource(flags:queue:)();
}

uint64_t sub_1000162D8()
{

  return type metadata accessor for DispatchTime();
}

uint64_t sub_1000162F8()
{

  return sub_100003724(v0, v1);
}

uint64_t sub_100016310(unint64_t *a1)
{

  return sub_100014E50(a1, v1, v2);
}

uint64_t + infix(_:_:)()
{
  return + infix(_:_:)();
}

{
  return + infix(_:_:)();
}