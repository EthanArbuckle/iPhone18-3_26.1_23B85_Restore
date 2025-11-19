uint64_t sub_100002458(int a1, id a2)
{
  v4 = [a2 processIdentifier];
  v5 = sub_100002A90(a2);
  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v6 = *(type metadata accessor for LogInterpolation() - 8);
  v7 = *(v6 + 72);
  v8 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  *(swift_allocObject() + 16) = xmmword_1001E5F60;
  if (v5)
  {
    v35 = type metadata accessor for XPCServiceProvider();
    *&aBlock = v2;
    v9 = v2;
    v10 = AMSLogKey();
    if (v10)
    {
      v11 = v10;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_100002C00(&aBlock);
    LogInterpolation.init(stringLiteral:)();
    sub_100003670();
    sub_100002C5C(&aBlock);
    if (qword_1002686B0 != -1)
    {
      sub_100002D44();
    }

    v15 = static os_log_type_t.default.getter();
    sub_1000036B0(v15);

    v16 = *&v9[OBJC_IVAR____TtC14amsengagementd18XPCServiceProvider_exportedInterface];
    if (v16)
    {
      v17 = OBJC_IVAR____TtC14amsengagementd18XPCServiceProvider_exportedObject;
      swift_beginAccess();
      sub_100003C38(&v9[v17], &v31);
      if (v32)
      {
        sub_100002C4C(&v31, &aBlock);
        v18 = v16;
        [a2 setExportedInterface:v18];
        sub_100003CA8(&aBlock, v35);
        [a2 setExportedObject:_bridgeAnythingToObjectiveC<A>(_:)()];
        swift_unknownObjectRelease();

        sub_100002C00(&aBlock);
      }

      else
      {
        sub_100002C5C(&v31);
      }
    }

    sub_100005254();
    v20 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v21 = swift_allocObject();
    *(v21 + 16) = v20;
    *(v21 + 24) = v4;
    v36 = sub_1001D1A14;
    v37 = v21;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    v34 = sub_100005E50;
    v35 = &unk_1002547C8;
    v22 = _Block_copy(&aBlock);

    [a2 setInterruptionHandler:v22];
    _Block_release(v22);
    sub_100005254();
    v23 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v24 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v25 = swift_allocObject();
    *(v25 + 16) = v23;
    *(v25 + 24) = v24;
    *(v25 + 32) = v4;
    v36 = sub_1001D1A20;
    v37 = v25;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    v34 = sub_100005E50;
    v35 = &unk_100254840;
    v26 = _Block_copy(&aBlock);

    [a2 setInvalidationHandler:v26];
    _Block_release(v26);
    if (*&v9[OBJC_IVAR____TtC14amsengagementd18XPCServiceProvider_remoteObjectInterface])
    {
      [a2 setRemoteObjectInterface:?];
    }

    v27 = *&v9[OBJC_IVAR____TtC14amsengagementd18XPCServiceProvider_connectionsLock];
    v28 = v9;
    v29 = a2;
    [v27 lock];
    sub_100004038(v28, v29);
    [v27 unlock];

    [v29 resume];
  }

  else
  {
    v35 = type metadata accessor for XPCServiceProvider();
    *&aBlock = v2;
    v12 = v2;
    v13 = AMSLogKey();
    if (v13)
    {
      v14 = v13;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_100002C00(&aBlock);
    LogInterpolation.init(stringLiteral:)();
    sub_100003670();
    sub_100002C5C(&aBlock);
    if (qword_1002686B0 != -1)
    {
      sub_100002D44();
    }

    v19 = static os_log_type_t.error.getter();
    sub_1000036B0(v19);
  }

  return v5 & 1;
}

uint64_t sub_1000029E4()
{
  swift_unknownObjectWeakDestroy();
  v0 = sub_100005254();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_100002A14()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 28, 7);
}

uint64_t sub_100002A4C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocObject(v0, 36, 7);
}

id sub_100002A90(void *a1)
{
  v2 = String._bridgeToObjectiveC()();
  v3 = [a1 valueForEntitlement:v2];

  if (v3)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = 0u;
    v8 = 0u;
  }

  v9[0] = v7;
  v9[1] = v8;
  if (!*(&v8 + 1))
  {
    sub_100002C5C(v9);
    return 0;
  }

  sub_100002BC0(0, &qword_10026AF10, NSNumber_ptr);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v4 = [v6 BOOLValue];

  return v4;
}

uint64_t sub_100002BC0(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_100002C00(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

_OWORD *sub_100002C4C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_100002C5C(uint64_t a1)
{
  v2 = sub_10007B9A4(&qword_10026D350, &qword_1001E6050);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100002CD8(uint64_t *a1)
{
  result = *a1;
  v3 = *v1;
  return result;
}

uint64_t sub_100002D44()
{

  return swift_once();
}

uint64_t sub_100002D8C()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t sub_100002DA4()
{

  return static LogInterpolation.prefix<A>(_:_:)();
}

uint64_t sub_100002E30()
{

  return swift_once();
}

uint64_t sub_100002E90()
{

  return AnyHashable.init<A>(_:)();
}

void sub_100002F3C()
{
  v2 = *(v0 - 256);
  v1 = *(v0 - 248);
  v3 = *(v0 - 264);
  v4 = *(v0 - 272);
  v5 = *(v0 - 280);
  v6 = *(v0 - 288);
  v7 = *(v0 - 296);
}

uint64_t sub_100002F6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, __int128 a15, __int128 a16, char a17)
{
  v19 = *v17;
  v20 = v17[1];
  a17 = *(v17 + 32);
  a15 = v19;
  a16 = v20;

  return sub_1000A5788(&a15, &a10);
}

uint64_t sub_100002FE4()
{
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);

  return swift_allocObject();
}

NSString sub_100003040()
{

  return String._bridgeToObjectiveC()();
}

uint64_t sub_100003068()
{
  v8 = *(v0 + 712);
  v7 = *(v0 + 704);
  v2 = *(v0 + 688);
  v3 = *(v0 + 680);
  v4 = (*(v0 + 920) + 32) & ~*(v0 + 920);
  v5 = 3 * *(v0 + 696);

  return swift_willThrow();
}

uint64_t sub_1000030A8()
{

  return URLComponents.scheme.setter();
}

uint64_t sub_1000030D8(uint64_t result)
{
  v2 = *(result + 20);
  v4 = *(v1 + 8);
  v3 = *(v1 + 16);
  return result;
}

uint64_t sub_1000030E8()
{
  v2 = *(v0 - 280);

  return KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
}

uint64_t sub_100003198()
{

  return swift_once();
}

uint64_t sub_1000031E0()
{

  return swift_once();
}

uint64_t sub_100003200()
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_10000321C@<X0>(unint64_t a1@<X8>)
{
  if (a1 >= 0xFFFFFFFF)
  {
    LODWORD(a1) = -1;
  }

  return (a1 + 1);
}

uint64_t sub_100003230()
{

  return swift_once();
}

__n128 *sub_100003250(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = 0x726F727265;
  result[2].n128_u64[1] = 0xE500000000000000;
  return result;
}

uint64_t sub_1000032C0()
{
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);

  return swift_allocObject();
}

uint64_t sub_1000032E8()
{

  return specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
}

uint64_t sub_10000332C()
{
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);

  return swift_allocObject();
}

uint64_t sub_100003354()
{
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);

  return swift_allocObject();
}

uint64_t sub_1000033C8(uint64_t a1)
{
  *(a1 + 8) = sub_10015F140;
  v2 = *(v1 + 304);
  return *(v1 + 328);
}

void sub_100003410(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v17[5] = v18;
  v17[2] = a16;
  v17[3] = a17;
}

uint64_t sub_100003424()
{

  return swift_once();
}

uint64_t sub_100003444()
{

  return _assertionFailure(_:_:file:line:flags:)();
}

uint64_t sub_10000346C()
{
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);

  return swift_allocObject();
}

uint64_t sub_1000034D8()
{

  return swift_dynamicCast();
}

uint64_t sub_1000034FC@<X0>(uint64_t a1@<X8>)
{
  v4 = (*(v1 + 48) + ((a1 << 10) | (16 * __clz(__rbit64(v2)))));
  v5 = *v4;
  v6 = v4[1];
}

id sub_100003534()
{

  return sub_10002411C();
}

double sub_10000357C()
{
  result = 0.0;
  v2 = *(v0 + 24);
  return result;
}

void sub_100003598()
{

  sub_1000ACC1C();
}

uint64_t sub_1000035D8(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = v3 + *v3;
  return v2;
}

uint64_t sub_100003630()
{
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);

  return swift_allocObject();
}

void sub_100003658(double a1, uint64_t a2, const char *a3)
{

  xpc_dictionary_set_int64(v3, a3, a1);
}

uint64_t sub_100003670()
{

  return static LogInterpolation.safe(_:)();
}

uint64_t sub_100003690(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = v3 + *v3;
  return v2;
}

void sub_1000036B0(os_log_type_t a1)
{
  v2 = *(v1 + 16);
  if (sub_100018270(a1))
  {
    v3 = objc_autoreleasePoolPush();
    static LogInterpolation.isRedactionEnabled.getter();
    v4 = static LogInterpolation.describe(contentsOf:withRedaction:separator:)();
    v6 = v5;
    objc_autoreleasePoolPop(v3);
    v7 = objc_autoreleasePoolPush();
    sub_10007B9A4(&unk_100270BA0, &unk_1001EC990);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1001E61B0;
    *(v8 + 56) = &type metadata for String;
    *(v8 + 64) = sub_100003E9C();
    *(v8 + 32) = v4;
    *(v8 + 40) = v6;
    os_log(_:dso:log:type:_:)();

    objc_autoreleasePoolPop(v7);
  }
}

uint64_t sub_1000037C8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000037D8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000037F8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100003808(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100003818(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100003828(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100003838(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100003848(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100003858(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100003868(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100003878(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000038A8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000038B8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000038C8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000038D8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000038E8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100003908(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100003928(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100003938(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100003948(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100003958(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100003968(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100003978(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100003988(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100003998(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000039B8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000039C8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000039D8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000039E8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000039F8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100003A08(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100003A18(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100003A28(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100003A38(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100003A48(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100003A58(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100003A68(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100003A78(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100003A88(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100003A98(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100003AA8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100003AB8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100003AC8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100003AD8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100003AE8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100003AF8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100003B08(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100003B18()
{

  return String.hash(into:)();
}

void sub_100003B8C()
{
}

uint64_t sub_100003BB4()
{

  return swift_allocObject();
}

uint64_t sub_100003BCC()
{

  return _assertionFailure(_:_:file:line:flags:)();
}

uint64_t sub_100003BF8()
{
  v2 = *(*(v1 - 128) + 8);
  result = v0;
  v4 = *(v1 - 104);
  return result;
}

uint64_t sub_100003C28@<X0>(uint64_t a1@<X8>)
{
  v2 = (a1 + 16 * v1);
  result = *v2;
  v4 = v2[1];
  return result;
}

uint64_t sub_100003C38(uint64_t a1, uint64_t a2)
{
  v4 = sub_10007B9A4(&qword_10026D350, &qword_1001E6050);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void *sub_100003CA8(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

void sub_100003CEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  sub_1001C32DC(a1, a4);
}

void sub_100003D34()
{
  v1 = v0[14];
  v4 = v0[15];
  v2 = v0[10];
  v3 = v0[11];
}

uint64_t sub_100003D54()
{

  return sub_1000D0004(v2, v1, v0);
}

uint64_t sub_100003D9C()
{
  v2 = *(v0 - 328) | 7;
  v3 = *(v0 - 320);

  return swift_allocObject();
}

uint64_t sub_100003DE8()
{

  return type metadata accessor for LogInterpolation();
}

uint64_t sub_100003E00@<X0>(int *a1@<X8>)
{
  v2 = a1[1];
  v4 = a1 + *a1;

  return swift_task_alloc();
}

_OWORD *sub_100003E20()
{

  return sub_10000DFC4();
}

uint64_t sub_100003E38()
{
  sub_100002C00((v0 - 112));

  return LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
}

unint64_t sub_100003E9C()
{
  result = qword_10026D9D0;
  if (!qword_10026D9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026D9D0);
  }

  return result;
}

uint64_t sub_100003F28()
{

  return swift_allocObject();
}

uint64_t sub_100003F40()
{

  return type metadata accessor for URL();
}

uint64_t *sub_100003F80()
{
  v2 = v0[27];
  v0[19] = v0[28];

  return sub_100017E64(v0 + 16);
}

BOOL sub_100003F9C(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

void *sub_100003FB4()
{
  v2 = v0[3];

  return sub_100003CA8(v0, v2);
}

uint64_t sub_100004004(uint64_t result)
{
  if (result + 1 > *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    return specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  return result;
}

uint64_t sub_100004038(uint64_t a1, void *a2)
{
  v4 = OBJC_IVAR____TtC14amsengagementd18XPCServiceProvider_connections;
  swift_beginAccess();
  v5 = a2;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  sub_1000040E4(*((*(a1 + v4) & 0xFFFFFFFFFFFFFF8) + 0x10));
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  return swift_endAccess();
}

uint64_t sub_1000040EC()
{

  return Promise.resolve(_:)();
}

uint64_t sub_100004138()
{
  _Block_release(*(v0 + 16));
  v1 = sub_100005254();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_10000416C(void *a1, int a2, void *a3, void *aBlock, uint64_t a5, uint64_t a6, void (*a7)(uint64_t))
{
  v10 = _Block_copy(aBlock);
  sub_100004AA0();
  *(swift_allocObject() + 16) = v10;
  v11 = a3;
  v12 = a1;
  v13 = sub_100008BF8();
  a7(v13);
}

uint64_t sub_10000420C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100002DFC();
  v5 = type metadata accessor for DispatchQoS.QoSClass();
  v6 = sub_100002CC4(v5);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  sub_100002DEC();
  sub_10001C064();
  sub_100004454();
  sub_100002FB8();
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  *(v9 + 24) = a3;
  v10 = sub_100002BC0(0, &qword_10026CFB0, OS_dispatch_queue_ptr);
  v11 = sub_100008758();
  v12(v11);

  v13 = static OS_dispatch_queue.global(qos:)();
  v14 = sub_1000F11DC();
  v15(v14);
  v25[3] = v10;
  v25[4] = &protocol witness table for OS_dispatch_queue;
  v25[0] = v13;
  sub_100002FB8();
  v16 = swift_allocObject();
  *(v16 + 16) = sub_100062B54;
  *(v16 + 24) = v9;
  v17 = objc_allocWithZone(NSLock);
  v18 = v13;
  sub_100011624();

  v19 = [v17 init];
  sub_100002FB8();
  v20 = swift_allocObject();
  *(v20 + 16) = v19;
  *(v20 + 24) = v16;
  sub_100002FB8();
  v21 = swift_allocObject();
  *(v21 + 16) = v19;
  *(v21 + 24) = v16;
  v22 = v19;
  swift_retain_n();
  v23 = v22;
  sub_1000F11F8();

  return sub_100002C00(v25);
}

void sub_100004454()
{
  sub_100003D74();
  v3 = v2;
  v5 = v4;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = sub_100002CC4(v6);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  sub_100002DEC();
  sub_100012F6C();
  v28 = type metadata accessor for DispatchQoS();
  v10 = sub_100002CC4(v28);
  v12 = v11;
  v14 = *(v13 + 64);
  __chkstk_darwin(v10);
  sub_100002DEC();
  sub_10005E2AC();
  sub_10007B9A4(&qword_1002697F0, &qword_1001EBCF0);
  v15 = Promise.__allocating_init()();
  v27 = *&v0[OBJC_IVAR____TtC14amsengagementd17EngagementService_serviceQueue];
  v16 = swift_allocObject();
  *(v16 + 16) = v5;
  *(v16 + 24) = v0;
  *(v16 + 32) = v15;
  *(v16 + 40) = v3;
  v29[4] = sub_10000C7A8;
  v29[5] = v16;
  sub_100002E50();
  v29[1] = 1107296256;
  sub_100007A28();
  v29[2] = v17;
  v29[3] = &unk_10024A248;
  v18 = _Block_copy(v29);
  v19 = v5;
  v20 = v0;

  static DispatchQoS.unspecified.getter();
  sub_10000B890();
  sub_100005DC0(v21, v22);
  sub_10007B9A4(&unk_100270490, &unk_1001E74F0);
  sub_10000317C();
  sub_1000140D0(v23, v24);
  sub_1000F1180();
  sub_10005E208();
  _Block_release(v18);
  v25 = sub_10000A19C();
  v26(v25);
  (*(v12 + 8))(v1, v28);

  sub_10000C544();

  sub_100005F14();
}

uint64_t sub_100004700()
{
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 41, 7);
}

uint64_t sub_100004750()
{

  return Hasher.init(_seed:)();
}

uint64_t sub_100004774(uint64_t a1)
{
  *(v1 + 16) = v2;
  *(v1 + 40) = a1;
}

uint64_t sub_1000047C0(uint64_t a1)
{
  *(a1 + 8) = sub_100086880;
  v2 = *(v1 + 104);
  return *(v1 + 144);
}

void sub_1000047F0(uint64_t a1@<X8>)
{
  v2[31] = v1;
  v2[32] = *(a1 + 56);
  v2[33] = *(a1 + 64);
  v3 = *(a1 + 80);
}

uint64_t sub_100004838()
{
  v3 = v0[27];
  v2 = v0[28];
  v4 = v0[26];
  v5 = v0[24];

  return static LogInterpolation.prefix(_:_:)();
}

uint64_t sub_100004870()
{

  return BidirectionalCollection<>.joined(separator:)();
}

unint64_t sub_1000048A0()
{
  v2 = *v0;

  return sub_100012A94();
}

uint64_t sub_1000048C8()
{
}

uint64_t sub_1000048E0()
{

  return swift_once();
}

uint64_t sub_100004900()
{

  return AnyHashable.init<A>(_:)();
}

uint64_t sub_10000494C()
{

  return static LogInterpolation.prefix(_:_:)();
}

uint64_t sub_100004968()
{

  return swift_allocObject();
}

void sub_1000049A4()
{

  sub_10017BE54();
}

uint64_t sub_1000049C4()
{

  return static String._unconditionallyBridgeFromObjectiveC(_:)();
}

void sub_1000049F4()
{

  sub_1000D5584();
}

uint64_t sub_100004A14()
{

  return swift_dynamicCast();
}

void sub_100004A54(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);

  Hasher._combine(_:)(v3);
}

NSString sub_100004AFC()
{

  return String._bridgeToObjectiveC()();
}

uint64_t sub_100004B50()
{

  return swift_allocObject();
}

uint64_t sub_100004BC8()
{

  return swift_allocObject();
}

uint64_t sub_100004BE0()
{

  return static LogInterpolation.prefix(_:_:)();
}

void *sub_100004C00(void *result)
{
  *result = 0x64656C62616E65;
  result[1] = 0xE700000000000000;
  return result;
}

uint64_t sub_100004C48()
{

  return dispatch thunk of Hashable.hash(into:)();
}

uint64_t sub_100004CC8()
{

  return sub_10000A7C0(v0, 1, 1, v1);
}

_OWORD *sub_100004CE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, __int128 a21)
{
  v24 = (*(v21 + 56) + 32 * v22);

  return sub_100002C4C(v24, &a21);
}

uint64_t sub_100004D48()
{

  return sub_10000A064(v2 - 112, v0, v1);
}

uint64_t sub_100004DA8()
{

  return type metadata accessor for JSStackContext();
}

__n128 sub_100004DE4()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  v4 = *(v0 + 56);
  v5 = *(v0 + 64);
  return *(v0 + 72);
}

uint64_t sub_100004E40()
{

  return sub_100009FB0(v2 - 128, v0, v1);
}

uint64_t sub_100004E84()
{

  return swift_once();
}

uint64_t sub_100004EAC()
{
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);

  return swift_allocObject();
}

double sub_100004F48()
{

  return sub_10000E0C8(v1 - 136, v0, (v1 - 96));
}

char *sub_100004F98@<X0>(unint64_t a1@<X8>)
{

  return sub_100027C2C((a1 > 1), v1, 1);
}

uint64_t sub_100004FDC()
{

  return swift_dynamicCast();
}

uint64_t sub_100005010(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, __int128 a17, __int128 a18, char a19)
{
  v23 = *v19;
  v24 = v19[1];
  a19 = *(v19 + 32);
  a17 = v23;
  a18 = v24;
  a14 = v20;
  a15 = v21;

  return sub_1000A5788(&a17, &a9);
}

double sub_10000503C()
{

  return sub_10000E0C8(v1 - 160, v0, (v1 - 120));
}

unint64_t sub_100005068()
{
  v2 = *v0;

  return sub_100012A94();
}

uint64_t sub_1000050D4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_10007B9A4(a3, a4);
}

id sub_100005104()
{

  return sub_10002411C();
}

uint64_t sub_100005198()
{

  return StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
}

void sub_1000051EC()
{
  *v3 = v4;
  *(v3 + 8) = v2;
  *(v3 + 16) = v0;
  v5 = *(v1 + 24);
}

uint64_t sub_100005264()
{

  return swift_dynamicCast();
}

double sub_100005288(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, __int128 a17)
{

  return sub_10000E0C8(&a12, v17, &a17);
}

double sub_1000052F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 a11)
{

  return sub_100052D94(v11, &a11);
}

uint64_t sub_100005360(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = v3 + *v3;
  return v2;
}

uint64_t sub_1000053C0()
{
  v2 = v0[69];
  v3 = v0[68];
  v4 = v0[65];
  v5 = v0[62];
  v6 = v0[58];
}

uint64_t sub_1000053FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v15 = *(a14 + 16);

  return specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
}

uint64_t sub_100005424()
{
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);

  return swift_allocObject();
}

uint64_t sub_100005450()
{
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);

  return swift_allocObject();
}

uint64_t sub_100005490()
{

  return swift_once();
}

double sub_1000054E0(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v6 = va_arg(va1, _OWORD);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);

  return sub_10000E0C8(va1, v3, va);
}

uint64_t sub_100005514()
{

  return swift_once();
}

uint64_t sub_100005534()
{

  return swift_once();
}

uint64_t sub_10000557C()
{
  sub_100002C00(v0 + 2);
  sub_100002C00(v0 + 7);
  sub_100002C00(v0 + 12);

  return sub_100002C00(v0 + 17);
}

id sub_1000055B8(uint64_t a1)
{
  v5 = *(v3 + 1896);

  return [v1 v5];
}

uint64_t sub_100005608@<X0>(uint64_t a1@<X8>)
{
  if (v1)
  {
    return a1;
  }

  return result;
}

double sub_100005624(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, __int128 a17)
{

  return sub_10000E0C8(&a12, v17, &a17);
}

uint64_t sub_1000056B4()
{

  return swift_beginAccess();
}

uint64_t sub_1000057B8@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + a1);
  v5 = *v3;
  v6 = v3[1];
}

uint64_t sub_1000057D8()
{
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);

  return swift_allocObject();
}

uint64_t sub_10000580C()
{

  return static LogInterpolation.prefix<A>(_:_:)();
}

uint64_t sub_100005858()
{
  v3 = *(v0 + 8);
  result = v1;
  v5 = *(v2 - 152);
  return result;
}

uint64_t sub_100005868()
{

  return sub_1000DD568(v0, type metadata accessor for MediaCatalogSyncScheduleAction);
}

uint64_t sub_1000058A4@<X0>(int *a1@<X8>)
{
  result = a1[1];
  v2 = a1 + *a1;
  return result;
}

uint64_t sub_1000058E4()
{

  return AnyHashable.init<A>(_:)();
}

char *sub_100005900()
{

  return sub_10009BA18(0, v0, 0);
}

unint64_t sub_100005958()
{

  return sub_100012A94();
}

void sub_10000597C()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
}

uint64_t sub_1000059A4()
{

  return swift_dynamicCast();
}

uint64_t sub_100005A1C()
{
  v2 = v0[33];
  v4 = v0[29];
  v3 = v0[30];
  v6 = v0[27];
  v5 = v0[28];
  v8 = v0[24];
  v7 = v0[25];
}

uint64_t sub_100005A44(__n128 *a1, __n128 a2)
{
  a1[1] = a2;

  return type metadata accessor for NotificationObserver();
}

uint64_t sub_100005A70()
{
  v3 = *(*(*(v1 - 144) + 48) + 16 * v0 + 8);
}

uint64_t sub_100005ABC()
{
  v3 = *(v0 + 104);
  result = v1;
  v5 = *(v2 - 96);
  return result;
}

uint64_t sub_100005BA8()
{

  return static LogInterpolation.prefix(_:_:)();
}

uint64_t sub_100005BE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10, __int128 a11, __int128 a12, __int128 a13, __int128 a14, __int128 a15, __int128 a16)
{
  a9 = a13;
  a10 = a14;
  a11 = a15;
  a12 = a16;

  return sub_10000FF10(&a9);
}

uint64_t sub_100005C4C()
{

  return swift_once();
}

uint64_t sub_100005C94()
{

  return LogInterpolation.init(stringLiteral:)();
}

uint64_t sub_100005CB8()
{

  return static LogInterpolation.prefix(_:_:)();
}

_OWORD *sub_100005CD8()
{

  return sub_10000DFC4();
}

uint64_t sub_100005D24()
{
}

uint64_t sub_100005D40(__n128 *a1, __n128 a2)
{
  a1[1] = a2;
  *(v4 - 88) = v3;
  *(v4 - 112) = v2;
}

uint64_t sub_100005D64()
{

  return AnyHashable.init<A>(_:)();
}

unint64_t sub_100005D80()
{

  return sub_100012A94();
}

void sub_100005DA0()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
}

uint64_t sub_100005DC0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100005E08(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100005E50(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_100005E94()
{

  return Hasher.init(_seed:)();
}

uint64_t sub_100005EAC()
{

  return swift_getErrorValue();
}

uint64_t sub_100005F38()
{

  return swift_allocObject();
}

uint64_t sub_100005F6C()
{

  return swift_allocObject();
}

uint64_t sub_100005F98()
{
  v1 = *(v0 + 288);
  v2 = *(v0 + 296);
  result = *(v0 + 280);
  v4 = *(v0 + 264);
  v5 = *(v0 + 368) + 32;
  return result;
}

_OWORD *sub_100005FB0()
{

  return sub_10000DFC4();
}

uint64_t sub_10000602C()
{

  return swift_beginAccess();
}

uint64_t sub_100006044(__n128 *a1, __n128 a2)
{
  a1[1] = a2;

  return type metadata accessor for TreatmentStoreService();
}

uint64_t sub_100006070(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_10007BC70(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_1000060F4()
{

  return sub_10002411C();
}

BOOL sub_100006114(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_10000612C(uint64_t a1, uint64_t a2)
{

  return sub_100153B8C(a1, a2, 0x65636976726573, 0xE700000000000000);
}

uint64_t sub_10000619C()
{

  return swift_beginAccess();
}

uint64_t sub_1000061D8(uint64_t a1)
{
  *(a1 + 8) = sub_10008CACC;
  v3 = *(v1 + 16);
  return v2;
}

uint64_t sub_10000620C()
{

  return type metadata accessor for LogInterpolation();
}

uint64_t sub_100006224()
{

  return LogInterpolation.init(stringLiteral:)();
}

uint64_t sub_100006280(uint64_t a1)
{

  return sub_100065290(v1, a1, type metadata accessor for ScheduleInfo);
}

__n128 *sub_100006308(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = v3;
  result[2].n128_u64[1] = v2;
  result[3].n128_u8[0] = 3;
  return result;
}

uint64_t sub_100006330()
{

  return swift_dynamicCast();
}

BOOL sub_100006348(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{

  return _NativeDictionary.ensureUnique(isUnique:capacity:)(v12, v13);
}

uint64_t sub_100006384()
{

  return swift_arrayInitWithCopy();
}

uint64_t sub_1000063A4@<X0>(char a1@<W8>)
{
  *(v1 - 128) = a1;
  result = v1 - 128;
  v3 = *(v1 - 152);
  return result;
}

uint64_t sub_1000063EC()
{

  return swift_once();
}

uint64_t sub_10000642C()
{

  return swift_allocError();
}

uint64_t sub_100006468()
{
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);

  return swift_allocObject();
}

uint64_t sub_100006490(uint64_t a1)
{
  *(v2 - 96) = a1;
  *(v2 - 120) = v1;
}

uint64_t sub_1000064B0()
{

  return swift_once();
}

_OWORD *sub_1000064D0()
{

  return sub_10000DFC4();
}

double sub_1000064F4()
{
  v2 = *(v0 - 160);
  v3 = *(v0 - 152);

  return sub_10011F068(v2, v3, 2, v0 - 120);
}

uint64_t sub_100006514()
{

  return LogInterpolation.init(stringLiteral:)();
}

void sub_100006574()
{

  sub_1000D5830();
}

id sub_1000065C0()
{

  return sub_100092378();
}

BOOL sub_1000065F8()
{

  return _NativeDictionary.ensureUnique(isUnique:capacity:)(v0, v1);
}

BOOL sub_100006618()
{

  return _NativeDictionary.ensureUnique(isUnique:capacity:)(v1, v0);
}

uint64_t sub_100006658()
{

  return type metadata accessor for OS_dispatch_queue.Attributes();
}

uint64_t sub_100006688()
{

  return _assertionFailure(_:_:file:line:flags:)();
}

uint64_t sub_1000066B8()
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

void sub_1000066EC()
{

  sub_10001E148();
}

uint64_t sub_100006734(uint64_t a1)
{
  *(v2 + 40) = a1;
  *(v2 + 16) = v1;
}

uint64_t sub_1000067B8()
{

  return swift_once();
}

uint64_t sub_1000067F8()
{

  return LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
}

_OWORD *sub_100006810(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, __int128 a15, uint64_t a16, uint64_t a17, __int128 a18)
{

  return sub_100002C4C(&a18, &a15);
}

void sub_100006828()
{
  v1 = v0[3];
  v8 = v0[2];
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[7];
  v7 = v0[8];
  v6 = v0[9];
}

uint64_t sub_100006868()
{

  return static LogInterpolation.safe(_:)();
}

uint64_t sub_100006898()
{

  return sub_100009FB0(v2 - 112, v0, v1);
}

uint64_t sub_1000068B4()
{

  return swift_dynamicCast();
}

uint64_t sub_1000068E8()
{
  v2 = (*(v0 + 56) + 16 * v1);
  result = *v2;
  v4 = v2[1];
  return result;
}

void sub_1000068FC()
{
}

uint64_t sub_100006940()
{

  return swift_once();
}

uint64_t sub_100006960()
{

  return swift_once();
}

uint64_t sub_100006990()
{

  return swift_once();
}

uint64_t sub_1000069B0()
{

  return swift_dynamicCast();
}

uint64_t sub_1000069D0(uint64_t a1, uint64_t a2)
{
  *(v2 + 112) = v3;
  *(v2 + 88) = a1;
  *(v2 + 96) = a2;
  sub_100002C4C((v2 + 88), (v2 + 56));

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t sub_100006AD8()
{

  return swift_once();
}

double sub_100006B0C()
{

  return sub_10000E0C8(v1 - 176, v0, (v1 - 136));
}

uint64_t sub_100006B94()
{

  return swift_once();
}

void sub_100006C2C()
{
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[8];
}

uint64_t sub_100006CB4()
{

  return swift_dynamicCast();
}

uint64_t sub_100006D00()
{

  return swift_dynamicCast();
}

uint64_t sub_100006D20()
{

  return swift_dynamicCast();
}

__n128 *sub_100006D54(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = 0x746C75736572;
  result[2].n128_u64[1] = 0xE600000000000000;
  return result;
}

_OWORD *sub_100006D70()
{

  return sub_10000DFC4();
}

uint64_t sub_100006DAC()
{

  return swift_once();
}

uint64_t sub_100006E04(uint64_t a1, _BYTE *a2)
{
  *a2 = 1;

  return swift_willThrow();
}

uint64_t sub_100006E3C()
{

  return swift_once();
}

uint64_t sub_100006E5C()
{

  return swift_once();
}

uint64_t sub_100006E88()
{

  return swift_dynamicCast();
}

uint64_t sub_100006F00()
{

  return swift_once();
}

uint64_t sub_100006F20()
{

  return swift_once();
}

uint64_t sub_100006F40()
{

  return AnyHashable.init<A>(_:)();
}

uint64_t sub_100006F5C()
{
  sub_100002C4C((v0 - 112), (v0 - 144));

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t sub_100006FA0@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(a2 - 256) = result;
  v2 = *(result - 8);
  return result;
}

__n128 sub_100006FE4(uint64_t a1)
{
  v2 = *(v1 + 16);
  *(a1 + 16) = *v1;
  *(a1 + 32) = v2;
  result = *(v1 + 32);
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_100006FF8()
{

  return swift_once();
}

uint64_t sub_100007018()
{

  return swift_once();
}

uint64_t sub_100007038()
{

  return swift_once();
}

uint64_t sub_100007080()
{

  return swift_once();
}

uint64_t sub_1000070A0()
{

  return swift_dynamicCast();
}

uint64_t sub_1000070EC()
{

  return swift_once();
}

uint64_t sub_100007128()
{

  return swift_allocObject();
}

uint64_t *sub_100007180(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10)
{
  *(v10 + 424) = v11;

  return sub_100017E64(a10);
}

uint64_t sub_1000071CC()
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_100007218()
{
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);

  return swift_allocObject();
}

unint64_t sub_100007240()
{

  return sub_100012A94();
}

uint64_t sub_10000725C()
{
  v3 = v0[62];
  v2 = v0[63];
  v4 = v0[59];
  v5 = v0[56];
  v6 = v0[53];
}

uint64_t sub_10000727C(uint64_t a1)
{
  *(v2 - 88) = a1;
  *(v2 - 112) = v1;
}

uint64_t sub_1000072A8()
{
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);

  return swift_allocObject();
}

uint64_t sub_1000072D0()
{

  return swift_weakInit();
}

uint64_t sub_1000072F8()
{
  v2 = *(v0 - 72);
  *(v0 - 74) = 1;

  return KeyedDecodingContainer.decode(_:forKey:)();
}

uint64_t sub_100007324()
{

  return static LogInterpolation.prefix(_:_:)();
}

uint64_t sub_100007344(uint64_t result)
{
  if (*(*v1 + 24) > result)
  {
    v2 = *(*v1 + 24);
  }

  return result;
}

uint64_t sub_100007358(__n128 *a1, __n128 a2)
{
  a1[1] = a2;

  return AMSSetLogKeyIfNeeded();
}

uint64_t sub_1000073A4()
{

  return sub_10000A064(v2 - 144, v0, v1);
}

uint64_t sub_1000073E0()
{
  v2 = **(v1 - 216);
  result = v0;
  v4 = *(v1 - 176);
  return result;
}

char *sub_100007404()
{

  return sub_100027C2C(0, v0, 0);
}

uint64_t sub_100007484()
{
  result = *(v0 + 168);
  v2 = *(v0 + 8);
  return result;
}

void sub_100007508(uint64_t a1, uint64_t a2)
{

  sub_10000E42C(a1, a2, 0x74736575716572, 0xE700000000000000);
}

uint64_t sub_100007544()
{

  return swift_allocError();
}

id sub_10000755C(uint64_t a1)
{
  *(a1 + 16) = *(v1 - 272);
  *(v1 - 96) = *(v1 - 288);
  v3 = *(v1 - 280);
  *(v1 - 120) = v3;

  return v3;
}

uint64_t sub_1000075A0()
{

  return static LogInterpolation.prefix(_:_:)();
}

_OWORD *sub_1000075D4()
{

  return sub_10000DFC4();
}

id sub_10000764C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  a1[2] = v11;
  a1[3] = v10;
  a1[4] = v12;
  a1[5] = a10;

  return v12;
}

uint64_t sub_10000767C(uint64_t a1)
{
  *(v2 - 88) = a1;
  *(v2 - 112) = v1;
}

uint64_t sub_100007698()
{

  return swift_once();
}

uint64_t sub_1000076B8(unint64_t *a1)
{

  return sub_10004F4C0(a1, v1, v2);
}

id sub_1000076F8(uint64_t a1)
{
  *(v2 - 88) = a1;
  *(v2 - 112) = v1;

  return v1;
}

uint64_t sub_100007738()
{

  return sub_100009F34(v0 + v2, 1, v1);
}

uint64_t sub_100007754()
{

  return type metadata accessor for DispatchQoS();
}

uint64_t sub_1000077C0()
{

  return static LogInterpolation.prefix(_:_:)();
}

uint64_t sub_1000077EC()
{
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);

  return swift_allocObject();
}

uint64_t sub_100007834(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{

  return sub_100006070(a1, a2, a3);
}

uint64_t sub_100007858()
{

  return swift_beginAccess();
}

uint64_t sub_100007888()
{
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);

  return swift_allocObject();
}

id sub_1000078B4()
{

  return sub_10002411C();
}

uint64_t sub_100007924()
{

  return String.data(using:allowLossyConversion:)();
}

void sub_1000079B4(uint64_t a1@<X8>)
{
  v1[12] = sub_1000C383C;
  v1[13] = a1;
  v1[14] = v2;
}

uint64_t sub_1000079F8()
{

  return KeyedDecodingContainer.decode<A>(_:forKey:)();
}

uint64_t sub_100007A48()
{
  v0[23] = v0[1];
  v0[20] = v1;
}

uint64_t sub_100007A68()
{
  result = v0[43];
  v2 = *(v0[44] + 8);
  v3 = v0[45];
  return result;
}

double sub_100007A90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 a11)
{

  return sub_100052D94(v11, &a11);
}

uint64_t sub_100007ACC()
{

  return swift_getErrorValue();
}

uint64_t sub_100007AE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v19 = *(*(a17 + 48) + 16 * v17 + 8);
}

uint64_t sub_100007B64()
{

  return static LogInterpolation.prefix(_:_:)();
}

uint64_t sub_100007B94()
{

  return swift_getObjectType();
}

uint64_t sub_100007BEC(unint64_t *a1)
{

  return sub_100006070(a1, v1, v2);
}

uint64_t sub_100007C18(uint64_t a1)
{

  return sub_100158E7C(a1, type metadata accessor for MercuryCacheMetadata);
}

uint64_t sub_100007C54()
{

  return AnyHashable.init<A>(_:)();
}

uint64_t sub_100007CB8()
{
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);

  return swift_allocObject();
}

uint64_t sub_100007CEC()
{

  return swift_once();
}

uint64_t sub_100007D0C()
{

  return static LogInterpolation.prefix(_:_:)();
}

unint64_t sub_100007D6C(uint64_t a1)
{

  return sub_1001B4750(a1);
}

NSString sub_100007D90()
{

  return String._bridgeToObjectiveC()();
}

uint64_t sub_100007DC0(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  v3 = *(a2 + 16);
  return result;
}

uint64_t sub_100007DE8()
{

  return static LogInterpolation.prefix<A>(_:_:)();
}

uint64_t sub_100007E0C()
{

  return type metadata accessor for LogInterpolation.StringInterpolation();
}

uint64_t sub_100007E68()
{
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);

  return swift_allocObject();
}

uint64_t sub_100007E90()
{

  return static LogInterpolation.prefix<A>(_:_:)();
}

uint64_t sub_100007EB0@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3[9] = a3;
  v3[6] = result;
  v3[7] = a2;
  return result;
}

id sub_100007EFC(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

uint64_t sub_100007F48(uint64_t result)
{
  *(v1 + 256) = result;
  v2 = *(v1 + 216);
  return result;
}

uint64_t sub_100007F80(uint64_t result)
{
  *(v2 + 16) = v1;
  *(v2 + 24) = 2 * ((result - 32) / v3);
  return result;
}

void sub_100007F94()
{

  Hasher._combine(_:)(1u);
}

uint64_t sub_100007FE8()
{
  v2 = *(*(v1 - 408) + 8);
  result = v0;
  v4 = *(v1 - 400);
  return result;
}

BOOL sub_10000801C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{

  return _NativeDictionary.ensureUnique(isUnique:capacity:)(v15, v16);
}

uint64_t *sub_10000803C()
{
  v2 = v0[110];
  v0[77] = v0[111];

  return sub_100017E64(v0 + 74);
}

uint64_t sub_10000805C()
{

  return static LogInterpolation.prefix(_:_:)();
}

uint64_t sub_1000080A4()
{

  return swift_getObjectType();
}

uint64_t sub_1000080C0()
{
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);

  return swift_allocObject();
}

uint64_t sub_1000080E8()
{

  return sub_10015BC10(v0, type metadata accessor for CacheUpdateRun);
}

void sub_100008124(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v16 = *(a15 + 16) + 1;

  sub_10000DE9C();
}

uint64_t sub_100008164()
{
  v2 = *(v0 - 280) | 7;
  v3 = *(v0 - 288);

  return swift_allocObject();
}

uint64_t sub_100008188()
{

  return swift_once();
}

uint64_t sub_1000081A8()
{
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);

  return swift_allocObject();
}

unint64_t sub_1000081D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 - 80) = a2;
  *(v4 - 72) = a3;
  *(v4 - 64) = a4;

  return sub_100017A08();
}

uint64_t sub_1000081F4()
{

  return static LogInterpolation.prefix(_:_:)();
}

char *sub_1000082A8@<X0>(unint64_t a1@<X8>)
{

  return sub_100027C2C((a1 > 1), v1, 1);
}

void sub_10000831C()
{

  _Block_release(v0);
}

uint64_t sub_100008348()
{
  *(v0 + 56) = v1;
  *(v0 + 24) = sub_1000C2FD0;

  return swift_continuation_init();
}

void *sub_1000083E4()
{
  v2 = *(v0 + 80);

  return sub_100003CA8((v0 + 56), v2);
}

uint64_t sub_100008448(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v17 = *(*(a15 + 48) + 16 * v15 + 8);
}

uint64_t sub_100008468()
{

  return LogInterpolation.init(stringLiteral:)();
}

uint64_t sub_100008514()
{
}

uint64_t sub_100008580()
{

  return type metadata accessor for LogInterpolation();
}

uint64_t sub_1000085A4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{

  return sub_100006070(a1, a2, a3);
}

uint64_t sub_1000085DC()
{

  return sub_100009FB0(v2 - 112, v0, v1);
}

double sub_1000085F8()
{

  return sub_10000E0C8(v1 - 176, v0, (v1 - 136));
}

void sub_100008614()
{

  sub_10001ABEC();
}

uint64_t sub_100008634()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t sub_100008658()
{
  v2 = *(v0 + 336);
  v10 = *(v0 + 328);
  v3 = *(v0 + 320);
  v8 = *(v0 + 352);
  v9 = *(v0 + 312);
  v4 = *(v0 + 304);
  v5 = *(v0 + 256);
  v6 = ((*(v0 + 456) + 32) & ~*(v0 + 456)) + 2 * *(v0 + 344);
}

uint64_t sub_1000086C4@<X0>(uint64_t a1@<X8>)
{
  *(v3 - 88) = a1;
  *(v3 - 112) = v2;
  *(v3 - 104) = v1;
}

uint64_t sub_1000086F4()
{

  return LogInterpolation.init(stringLiteral:)();
}

id sub_100008718(uint64_t a1, const char *a2)
{

  return [v4 a2];
}

uint64_t sub_10000876C()
{

  return AMSSetLogKey();
}

uint64_t sub_100008794@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(v3 - 88) = a3;
  *(v3 - 112) = result;
  *(v3 - 104) = a2;
  return result;
}

uint64_t sub_1000087B8@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[9] = a1;
  v6[6] = a5;
  v6[7] = a6;

  return static LogInterpolation.sensitive(_:)();
}

uint64_t sub_1000087F0()
{

  return swift_dynamicCast();
}

uint64_t sub_100008818@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = (*(a1 + 48) + 16 * (a2 | (v3 << 6)));
  v7 = *v5;
  v6 = v5[1];
  v8 = *(v2 + 40);

  return Hasher.init(_seed:)();
}

uint64_t sub_100008840()
{
  sub_1000061B4();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = sub_100009F04(v3);
  *v4 = v5;
  v4[1] = sub_100009CC8;
  v6 = sub_100005F88();

  return v7(v6);
}

uint64_t sub_1000088E8()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = sub_100004ABC(v3);
  *v4 = v5;
  v6 = sub_100003690(v4);

  return v7(v6);
}

uint64_t sub_100008980(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100009CCC;

  return v7(a1);
}

uint64_t sub_100008A78()
{
  sub_100003D28();
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  v5 = swift_task_alloc();
  v6 = sub_100009F04(v5);
  *v6 = v7;
  v6[1] = sub_100009CC8;
  v8 = sub_100005F88();

  return v9(v8);
}

uint64_t sub_100008B34(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v6 = v1[4];
  v5 = v1[5];
  v7 = swift_task_alloc();
  v8 = sub_100004ABC(v7);
  *v8 = v9;
  v8[1] = sub_100009CC8;

  return sub_100008D0C(a1, v3, v4, v6);
}

void sub_100008C04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{

  sub_1001A0A64(v26, v25, v24, v23, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23);
}

uint64_t sub_100008C24(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_100009CC8;

  return v8();
}

uint64_t sub_100008D0C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_100009BE8;

  return v8();
}

uint64_t sub_100008DF4()
{
  sub_1001BF340();
  sub_100003D28();
  sub_100048FC0();
  v0 = swift_task_alloc();
  v1 = sub_100009F04(v0);
  *v1 = v2;
  sub_1000035D8(v1);
  sub_1001BF32C();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_100008E84()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v7 = sub_1000035D8(v6);

  return v8(v7);
}

uint64_t sub_100008F34()
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_100008F50()
{

  return sub_100009FB0(v2 - 112, v0, v1);
}

uint64_t sub_100008F6C()
{

  return Hasher.init(_seed:)();
}

uint64_t sub_100008F8C@<X0>(uint64_t a1@<X8>)
{

  return sub_10008A2E0(v2 + a1, v4 + a1, v1, v3);
}

BOOL sub_100008FAC()
{

  return _NativeDictionary.ensureUnique(isUnique:capacity:)(v1 & 1, v0);
}

uint64_t sub_100009020(uint64_t a1)
{
  *(v1 + 280) = a1;
}

uint64_t sub_10000903C()
{

  return static String._unconditionallyBridgeFromObjectiveC(_:)();
}

uint64_t sub_100009058(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_100009CC8;

  return v7();
}

uint64_t sub_100009140()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100009180()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  v3 = sub_10000B284();

  return _swift_deallocObject(v3, v4, v5);
}

void sub_1000091B8()
{
}

void sub_1000091D0(os_log_type_t a1)
{

  sub_1000036B0(a1);
}

uint64_t sub_1000091E8(uint64_t a1, uint64_t a2, void (*a3)(void *__return_ptr, uint64_t))
{
  sub_100017C14();

  sub_1000179B4(v5, v5);
  sub_1000170D4();

  a3(v8, a1);
  Promise.resolve(_:)();

  v6 = *(a1 + 24);
  swift_retain_n();
  sub_10001C50C();
}

uint64_t sub_10000953C()
{
  v1 = *(v0 + 24);

  sub_100002FB8();

  return _swift_deallocObject(v2, v3, v4);
}

uint64_t sub_1000095EC()
{
  _Block_release(*(v0 + 16));

  v1 = sub_1000074E4();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_100009624(uint64_t a1, uint64_t a2)
{
  v4 = sub_10007B9A4(&unk_10026FEC0, &qword_1001E6280);
  v5 = sub_100003D10(v4);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v14 - v8;
  v10 = type metadata accessor for TaskPriority();
  sub_10000A7C0(v9, 1, 1, v10);
  sub_1000083D8();
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = a1;
  v11[5] = a2;
  sub_1000083D8();
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1001F1A60;
  v12[5] = v11;
  sub_1001BE5A8(0, 0, v9, &unk_1001F1A70, v12);
}

uint64_t sub_100009728(uint64_t a1, uint64_t a2)
{
  v4 = sub_10007B9A4(&qword_100272AC8, &qword_1001F23D0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v12 - v6;
  v8 = type metadata accessor for TaskPriority();
  sub_10000A7C0(v7, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = a1;
  v9[5] = a2;
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = &unk_1001F23E0;
  v10[5] = v9;
  sub_1001DA1EC(0, 0, v7, &unk_1001F23F0, v10);
}

uint64_t sub_100009848()
{
  sub_1000061B4();
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100009BE8;
  v5 = sub_100005B9C();

  return v6(v5);
}

uint64_t sub_1000098EC()
{
  sub_100003D28();
  v2 = *v1;
  v3 = *(*v1 + 32);
  v4 = *(*v1 + 16);
  v5 = *v1;
  sub_100002D20();
  *v6 = v5;

  v7 = *(v2 + 24);
  if (v0)
  {
    v8 = _convertErrorToNSError(_:)();

    (v7)[2](v7, 0, v8);

    _Block_release(v7);
  }

  else
  {
    v9 = v7[2];
    v10 = sub_10000A144();
    v11(v10);
    _Block_release(v7);
    swift_unknownObjectRelease();
  }

  v12 = *(v5 + 8);

  return v12();
}

uint64_t sub_100009A80(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  v4 = a2;
  v5 = swift_task_alloc();
  v2[4] = v5;
  *v5 = v2;
  v5[1] = sub_1000098EC;

  return sub_100009B24();
}

uint64_t sub_100009B4C()
{
  sub_1000061B4();
  if (qword_100268838 != -1)
  {
    swift_once();
  }

  v3 = *(v0 + 8);

  return v3(v1);
}

uint64_t sub_100009BE8()
{
  sub_100004768();
  sub_1000056A8();
  v2 = *(v1 + 16);
  v3 = *v0;
  sub_100002D20();
  *v4 = v3;

  sub_100002D8C();

  return v5();
}

uint64_t sub_100009CCC()
{
  sub_100004768();
  sub_1000056A8();
  v2 = *(v1 + 16);
  v3 = *v0;
  sub_100002D20();
  *v4 = v3;

  sub_100002D8C();

  return v5();
}

uint64_t sub_100009DFC(uint64_t a1)
{
  *(a1 + 16) = *(v1 - 208);
  v3 = a1 + *(v1 - 176);

  return AMSSetLogKeyIfNeeded();
}

_OWORD *sub_100009E74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, __int128 a17, uint64_t a18, uint64_t a19, __int128 a20)
{

  return sub_100002C4C(&a20, &a17);
}

uint64_t sub_100009E8C()
{

  return dispatch thunk of TaskScheduler.schedule(task:)();
}

uint64_t sub_100009F10()
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_100009F5C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_10007B9A4(a2, a3);
  sub_100002D30(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t sub_100009FB0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_10007B9A4(a2, a3);
  sub_1000047A4(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t sub_10000A00C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_10007B9A4(a2, a3);
  sub_100002DDC(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t sub_10000A064(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_10007B9A4(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_10000A0C4(uint64_t a1, uint64_t a2)
{
  v3 = sub_10000C504(a1, a2);
  v5 = sub_10007B9A4(v3, v4);
  sub_100002DDC(v5);
  (*(v6 + 8))(a1);
  return a1;
}

uint64_t sub_10000A124()
{

  return swift_allocObject();
}

uint64_t sub_10000A150()
{
  v2 = *(v0 - 248);
  v3 = *(v0 - 320);

  return static LogInterpolation.prefix(_:_:)();
}

uint64_t sub_10000A184()
{

  return static LogInterpolation.safe(_:)();
}

uint64_t sub_10000A1C0()
{

  return type metadata accessor for LogInterpolation();
}

uint64_t sub_10000A1D8(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
}

uint64_t sub_10000A214()
{
  v1 = *(v0 + 24);
  v2 = *(v1 + 16);
  return v1;
}

uint64_t sub_10000A2BC(uint64_t result)
{
  *(result + 8) = sub_10008B458;
  v2 = *(v1 + 176);
  return result;
}

uint64_t sub_10000A2E4()
{

  return swift_getErrorValue();
}

void sub_10000A304()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[6];
  v5 = v0[7];
}

void sub_10000A340()
{

  sub_1000D5584();
}

id sub_10000A360(id a1)
{
  *(v1 + 264) = a1;
  v3 = *(v1 + 248);

  return a1;
}

uint64_t sub_10000A384(uint64_t a1, uint64_t a2)
{

  return sub_10004ED94(a1, a2, v2, v3);
}

uint64_t sub_10000A3FC()
{

  return swift_dynamicCast();
}

id sub_10000A444(void *a1)
{
  a1[2] = v1;
  a1[3] = v3;
  a1[4] = v2;

  return v3;
}

uint64_t sub_10000A460()
{

  return static LogInterpolation.prefix(_:_:)();
}

uint64_t sub_10000A480(uint64_t a1, _BYTE *a2)
{
  *a2 = 2;

  return swift_willThrow();
}

uint64_t sub_10000A4B4()
{

  return AnyHashable.init<A>(_:)();
}

double sub_10000A4D0()
{
  result = 0.0;
  *(v0 - 112) = 0u;
  *(v0 - 96) = 0u;
  return result;
}

uint64_t sub_10000A52C()
{
  *(v2 + 264) = v1;
  *(v2 + 304) = *(v0 + 80);

  return swift_allocObject();
}

__n128 sub_10000A560(__n128 *a1)
{
  result = *(v1 - 272);
  a1[1] = result;
  v3 = *(v1 - 232);
  return result;
}

uint64_t sub_10000A588(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

uint64_t sub_10000A5B0()
{

  return LogInterpolation.init(stringLiteral:)();
}

uint64_t sub_10000A5CC()
{
  v2 = **(v1 - 216);
  result = v0;
  v4 = *(v1 - 152);
  return result;
}

uint64_t sub_10000A664()
{

  return dispatch thunk of Encoder.container<A>(keyedBy:)();
}

uint64_t sub_10000A680(uint64_t a1)
{
  v2[34] = a1;
  v2[10] = a1;
  v2[7] = v1;
}

void sub_10000A6A4()
{
  v1 = v0[14];
  v3 = v0[11];
  v2 = v0[12];
  v4 = v0[10];
}

uint64_t sub_10000A6C0@<X0>(uint64_t a1@<X8>)
{
  v5 = v3[28];
  v3[11] = a1;
  v3[12] = v2;
  v3[13] = v1;
}

uint64_t sub_10000A6EC()
{
  v2 = *(v0 + 608);

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t sub_10000A704()
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t *sub_10000A754(uint64_t *result)
{
  v1 = *result;
  v2 = result[1];
  return result;
}

uint64_t sub_10000A76C()
{
}

uint64_t sub_10000A788()
{

  return static LogInterpolation.prefix(_:_:)();
}

uint64_t sub_10000A7F4()
{
  result = *(v0 - 320);
  v2 = *(v0 - 312);
  v3 = *(v0 - 304);
  v4 = *(v0 - 296);
  v5 = *(v0 - 264);
  return result;
}

uint64_t sub_10000A87C()
{

  return swift_dynamicCast();
}

unint64_t sub_10000A89C()
{

  return sub_100012A94();
}

uint64_t sub_10000A8F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a2 | (v2 << 6);
  v5 = (*(a1 + 48) + 16 * v4);
  v6 = *v5;
  v7 = v5[1];
  v8 = (*(a1 + 56) + 16 * v4);
  v10 = *v8;
  v9 = v8[1];
}

uint64_t sub_10000A92C()
{

  return swift_allocObject();
}

id sub_10000A998()
{

  return sub_1000ACB0C();
}

uint64_t sub_10000A9BC()
{

  return sub_10000A00C(v2 - 128, v1, v0);
}

uint64_t sub_10000A9D8()
{
  v3 = *(v0 - 1);
  v2 = *v0;
}

uint64_t sub_10000AA50()
{

  return AnyHashable.init<A>(_:)();
}

BOOL sub_10000AA70(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{

  return _NativeDictionary.ensureUnique(isUnique:capacity:)(v29, v30);
}

uint64_t sub_10000AB10()
{

  return static LogInterpolation.prefix(_:_:)();
}

uint64_t sub_10000AB40()
{

  return sub_100011BAC(v0, v1 - 120);
}

uint64_t sub_10000ABB4()
{

  return KeyedEncodingContainer.encode<A>(_:forKey:)();
}

uint64_t sub_10000AC04(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = v3 + *v3;
  return v2;
}

_OWORD *sub_10000AC30(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, __int128 a15, uint64_t a16, uint64_t a17, __int128 a18, uint64_t a19, uint64_t a20)
{
  a20 = v20;
  LOBYTE(a18) = a1;

  return sub_100002C4C(&a18, &a15);
}

double sub_10000AC5C(uint64_t a1)
{

  return sub_10011F068(a1, 12, 2, v1 + 16);
}

uint64_t sub_10000ACA0()
{
  v1 = v0[47];
  v2 = v0[48];
  v3 = v0[46];
  sub_100003CA8((v0[22] + 96), *(v0[22] + 120));
}

uint64_t sub_10000AD04(uint64_t a1)
{
  *(v2 - 88) = v1;
  *(v2 - 112) = a1;

  return LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
}

_OWORD *sub_10000AD20()
{
  v4 = (*(v0 + 56) + 32 * v1);

  return sub_100002C4C(v4, (v2 - 112));
}

uint64_t sub_10000ADA4()
{

  return AMSError();
}

uint64_t sub_10000ADC8(__n128 *a1, __n128 a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  a1[1] = a2;
  *(v10 + 104) = a10;
  *(v10 + 80) = v11;
}

uint64_t sub_10000AE18()
{

  return dispatch thunk of Decoder.container<A>(keyedBy:)();
}

uint64_t sub_10000AE3C(uint64_t *a1)
{
  sub_100002C00(a1);

  return LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
}

uint64_t sub_10000AE6C(__n128 *a1, __n128 a2)
{
  a1[1] = a2;
  *(v3 + 40) = v4;
  *(v3 + 16) = v2;
}

id sub_10000AEA8(uint64_t a1, unint64_t a2)
{

  return sub_100050B04(a1, a2, v2);
}

uint64_t sub_10000AEC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(a5 + 56);
  result = *(v7 + 8 * v6);
  *(v7 + 8 * v6) = v5;
  return result;
}

uint64_t sub_10000AED0()
{

  return KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
}

uint64_t sub_10000AF00()
{

  return dispatch thunk of Decoder.container<A>(keyedBy:)();
}

void sub_10000AF24()
{

  Hasher._combine(_:)(0);
}

uint64_t sub_10000AF50()
{
  v2 = *(v0 - 240);
  v3 = *(v0 - 248) + *(v0 - 296);
  v4 = *(v0 - 256) | 7;

  return swift_allocObject();
}

void sub_10000AF84()
{
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
}

void sub_10000AFB0()
{
  v2 = v0[47];
  v1 = v0[48];
  v3 = v0[45];
  v4 = v0[46];
  v5 = v0[44];
  v6 = v0[6];
}

id sub_10000AFC4@<X0>(uint64_t a1@<X0>, char a2@<W8>)
{
  *(a1 + 80) = a2 & 1;
  *(a1 + 88) = *(v3 - 152);

  return v2;
}

uint64_t sub_10000AFE4()
{
  v2 = v0[51];
  v3 = v0[48];
  v4 = v0[45];
  v5 = v0[42];
}

void sub_10000B004()
{
}

uint64_t sub_10000B01C(unint64_t *a1)
{

  return sub_100006070(a1, v1, v2);
}

uint64_t sub_10000B080()
{

  return Dictionary.init(dictionaryLiteral:)();
}

uint64_t sub_10000B0A0()
{
  v3 = v0 + *(v1 - 288);

  return swift_allocObject();
}

void sub_10000B0D0()
{

  sub_1000E349C();
}

uint64_t sub_10000B0F4(sqlite3 *a1, const char *a2)
{

  return sqlite3_exec(a1, a2, 0, 0, 0);
}

uint64_t sub_10000B138()
{
  v2 = *(v0 + 184);

  return static LogInterpolation.prefix(_:_:)();
}

BOOL sub_10000B1B4()
{

  return _NativeDictionary.ensureUnique(isUnique:capacity:)(v1 & 1, v0);
}

void *sub_10000B1EC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_1000D65A8(v5, a2, a3, a4, v4);
}

unint64_t sub_10000B220()
{

  return sub_100012A94();
}

uint64_t sub_10000B248()
{
  result = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  return result;
}

unint64_t sub_10000B254()
{

  return sub_100013AB8();
}

uint64_t sub_10000B26C()
{
  v1 = *(v0 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_10000B2E0()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

double sub_10000B2FC@<D0>(uint64_t a1@<X8>)
{
  v3 = *(v2 + a1);
  v4 = *(v2 + v1);
  return 0.0;
}

uint64_t sub_10000B33C()
{

  return static LogInterpolation.prefix(_:_:)();
}

_OWORD *sub_10000B398()
{

  return sub_10000DFC4();
}

uint64_t sub_10000B3DC()
{

  return static LogInterpolation.prefix(_:_:)();
}

uint64_t sub_10000B41C()
{
}

void sub_10000B444(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v10 + 8 * a1) = v7 | v6;
  *(*(v8 + 48) + 8 * v9) = a6;
  v11 = *(v8 + 16);
}

uint64_t sub_10000B658(uint64_t a1)
{
  *(a1 + 8) = sub_10007F8CC;
  v2 = v1[66];
  result = v1[63];
  v4 = v1[64];
  return result;
}

uint64_t sub_10000B6A0()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t sub_10000B6B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 - 72) = a4;

  return type metadata accessor for URL();
}

void sub_10000B728()
{
  *(v0 + 16) = v1;
  v5 = v0 + 16 * v4;
  *(v5 + 32) = v2;
  *(v5 + 40) = v3;
}

unint64_t sub_10000B768(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(a5 + 8 * (result >> 6) + 64) |= 1 << result;
  v5 = (*(a5 + 48) + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  return result;
}

uint64_t sub_10000B794()
{

  return static LogInterpolation.prefix<A>(_:_:)();
}

void sub_10000B83C()
{

  sub_1000D507C();
}

void sub_10000B860(uint64_t a1@<X8>)
{
  if (a1 <= *(v1 + 16))
  {
    v2 = *(v1 + 16);
  }
}

uint64_t sub_10000B8A8()
{

  return static _DictionaryStorage.allocate(capacity:)();
}

uint64_t sub_10000B8C4()
{

  return sub_10000A064(v2 - 128, v1, v0);
}

uint64_t sub_10000B8E0()
{

  return swift_once();
}

uint64_t sub_10000B900()
{

  return static LogInterpolation.prefix<A>(_:_:)();
}

uint64_t sub_10000B92C()
{
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);

  return swift_allocObject();
}

uint64_t sub_10000B984()
{

  return swift_once();
}

uint64_t sub_10000B9F0()
{

  return static LogInterpolation.prefix(_:_:)();
}

uint64_t sub_10000BA10()
{

  return static LogInterpolation.prefix(_:_:)();
}

uint64_t sub_10000BA34()
{
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);

  return swift_allocObject();
}

uint64_t sub_10000BA6C()
{

  return sub_100158E7C(v0, type metadata accessor for MercuryCacheUpdateData.Failure);
}

uint64_t sub_10000BB00()
{

  return static LogInterpolation.prefix<A>(_:_:)();
}

uint64_t sub_10000BB1C()
{
  sub_100002C4C((v0 - 112), (v0 - 144));

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t sub_10000BB64()
{
  v2 = *(v0 - 104);

  return OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
}

uint64_t sub_10000BB8C()
{

  return swift_dynamicCast();
}

uint64_t sub_10000BBD0()
{

  return swift_once();
}

uint64_t sub_10000BBF0()
{
  *(v2 - 104) = v1;
  *(v2 - 128) = v0;
}

uint64_t sub_10000BC24()
{

  return swift_dynamicCast();
}

id sub_10000BC5C@<X0>(void *a1@<X8>)
{

  return a1;
}

uint64_t sub_10000BCA0()
{

  return swift_once();
}

uint64_t sub_10000BCD8()
{

  return static LogInterpolation.prefix<A>(_:_:)();
}

void sub_10000BCFC(uint64_t a1, const char *a2)
{

  xpc_dictionary_set_BOOL(v2, a2, 1);
}

uint64_t sub_10000BD48()
{
  v6 = v3 + *(v4 + 24);
  *v6 = v2;
  *(v6 + 8) = v1;
  *(v6 + 16) = v0;
}

uint64_t sub_10000BE0C()
{

  return AnyHashable.init<A>(_:)();
}

uint64_t sub_10000BE28()
{
  v3 = *(v0 - 216);
  v2 = *(v0 - 208);

  return static LogInterpolation.prefix<A>(_:_:)();
}

id sub_10000BE48()
{

  return v0;
}

uint64_t sub_10000BE60()
{

  return BidirectionalCollection<>.joined(separator:)();
}

uint64_t sub_10000BE94()
{

  return sub_10000A7C0(v1, 1, 1, v0);
}

uint64_t sub_10000BEC8(uint64_t result)
{
  *(v1 + 136) = result;
  *(v1 + 80) = _NSConcreteStackBlock;
  return result;
}

uint64_t sub_10000BEF8()
{

  return swift_once();
}

uint64_t sub_10000BF28()
{

  return KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
}

uint64_t sub_10000BF8C(__n128 *a1, __n128 a2)
{
  a1[1] = a2;
  v2[65] = v2[31];
  v2[62] = v2[48];
}

uint64_t sub_10000BFB4()
{
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);

  return swift_allocObject();
}

double sub_10000BFDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 a11)
{

  return sub_100052D94(v11, &a11);
}

uint64_t sub_10000C02C()
{

  return swift_dynamicCast();
}

uint64_t sub_10000C04C@<X0>(uint64_t a1@<X8>)
{
  v4 = v3[2];
  v5 = v3[3];
  v6 = v3[4];
  v7 = *(v3 + ((v1 + a1 + 7) & 0xFFFFFFFFFFFFFFF8));
  return v2;
}

uint64_t *sub_10000C070(uint64_t a1)
{
  *(v1 - 80) = a1;

  return sub_100017E64((v1 - 104));
}

uint64_t sub_10000C0A0()
{

  return static LogInterpolation.prefix(_:_:)();
}

uint64_t sub_10000C10C()
{

  return swift_once();
}

uint64_t sub_10000C184()
{

  return static LogInterpolation.prefix(_:_:)();
}

uint64_t sub_10000C1B0()
{

  return dispatch thunk of SetAlgebra.init<A>(_:)();
}

uint64_t sub_10000C1D8()
{

  return swift_once();
}

unint64_t sub_10000C20C(uint64_t a1)
{

  return sub_1001B4750(a1);
}

uint64_t sub_10000C230()
{
  *(v1 - 160) = *(v1 - 288);
  *(v1 - 184) = v0;
}

uint64_t sub_10000C26C()
{
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);

  return swift_allocObject();
}

uint64_t sub_10000C298()
{

  return AnyHashable.init<A>(_:)();
}

uint64_t sub_10000C2B4()
{

  return swift_allocObject();
}

uint64_t sub_10000C2F8()
{
  v2 = *(v0 + 136);

  return static LogInterpolation.prefix(_:_:)();
}

uint64_t sub_10000C31C(uint64_t a1)
{

  return sub_10000A064(a1, v1, v2);
}

uint64_t sub_10000C35C()
{

  return swift_once();
}

void sub_10000C37C()
{
  *(v1 + 16) = v2;
  v3 = v1 + ((*(v0 + 80) + 32) & ~*(v0 + 80));
  v4 = *(v0 + 72);
}

uint64_t sub_10000C3AC()
{

  return type metadata accessor for LogInterpolation();
}

void sub_10000C3C4(os_log_type_t a1)
{
  v3 = *(v1 + 368);

  sub_1000036B0(a1);
}

uint64_t sub_10000C3DC()
{

  return AsyncObjectGraphBuilder.satisfying<A>(_:with:)();
}

uint64_t sub_10000C3FC()
{

  return swift_arrayInitWithCopy();
}

void sub_10000C440()
{

  sub_1000036B0(v0);
}

uint64_t sub_10000C48C()
{
}

uint64_t sub_10000C4A8()
{

  return KeyedDecodingContainer.decode<A>(_:forKey:)();
}

uint64_t sub_10000C4EC(uint64_t result)
{
  v1 = *(result + 56);
  v2 = 1 << *(result + 32);
  return result;
}

uint64_t sub_10000C510()
{

  return swift_getErrorValue();
}

void sub_10000C544()
{
  sub_100003D74();
  v2 = v1;
  v3 = v0;
  v4 = type metadata accessor for DispatchQoS.QoSClass();
  v5 = sub_100002CC4(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v5);
  sub_100002DEC();
  v12 = v11 - v10;
  sub_100002BC0(0, &qword_10026CFB0, OS_dispatch_queue_ptr);
  (*(v7 + 104))(v12, enum case for DispatchQoS.QoSClass.default(_:), v4);
  v13 = static OS_dispatch_queue.global(qos:)();
  (*(v7 + 8))(v12, v4);
  sub_10000C680(v2, 0, v13, v3);

  sub_100005F14();
}

uint64_t sub_10000C680(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
{
  v7 = *a4;
  v12[3] = sub_100002BC0(0, &qword_10026CFB0, OS_dispatch_queue_ptr);
  v12[4] = &protocol witness table for OS_dispatch_queue;
  v12[0] = a3;
  v8 = a3;
  v9 = Promise.__allocating_init()();
  sub_100007A3C();
  v10 = swift_allocObject();
  v10[2] = v9;
  v10[3] = a1;
  v10[4] = a2;
  swift_retain_n();

  Promise.then(perform:orCatchError:on:)();

  sub_100002C00(v12);
  return v9;
}

uint64_t sub_10000C7B8(void *a1)
{
  v1 = [a1 logKey];
  if (v1)
  {
    v2 = v1;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  return sub_100005B9C();
}

unint64_t sub_10000C818(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return sub_10000E124(a1, v4);
}

void sub_10000C85C(void *a1, void *a2, uint64_t a3, char a4)
{
  v8 = type metadata accessor for DispatchQoS.QoSClass();
  v9 = *(v8 - 8);
  v115 = v8;
  v116 = v9;
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v113 = v98 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000C7B8(a1);
  if (v12)
  {
    v13 = String._bridgeToObjectiveC()();
  }

  else
  {
    v13 = 0;
  }

  v120 = &type metadata for AMSFlags;
  v121 = sub_10000D884();
  LOBYTE(aBlock) = 0;
  v14 = isFeatureEnabled(_:)();
  sub_100002C00(&aBlock);
  if (v14)
  {
    sub_1000E8A14();
  }

  v15 = swift_allocObject();
  *(v15 + 16) = Dictionary.init(dictionaryLiteral:)();
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  *(v16 + 24) = 0xE000000000000000;
  v17 = [objc_allocWithZone(NSLock) init];
  sub_10000D934(a1);
  v18 = sub_10000E23C(a1);
  if (*(v18 + 16))
  {
    sub_1000E8E80(v18);

    v19 = [objc_allocWithZone(AMSEngagementEnqueueResult) init];
    aBlock = v19;
    Promise.resolve(_:)();
  }

  else
  {
    v111 = v16;
    v112 = v15;
    v102 = a3;

    sub_10000E42C(0xD00000000000001CLL, 0x80000001001F6E10, 0xD000000000000012, 0x80000001001F6E30);
    sub_10000EA50(a1, a4 & 1);
    v21 = v20;
    if ((a4 & 1) == 0)
    {
      sub_10000FF64(v20, a1);
    }

    v22 = swift_allocObject();
    v24 = v111;
    v23 = v112;
    v22[2] = v17;
    v22[3] = v23;
    v22[4] = v24;
    v22[5] = a2;
    v22[6] = a1;
    v101 = v17;

    v25 = a2;
    v106 = a1;
    v26 = sub_100010198(v21, sub_10002D0BC, v22);
    v28 = v27;
    v30 = v29;
    v114 = v31;

    v32 = swift_allocObject();
    *(v32 + 16) = AMSEngagementEnqueueDefaultTimeout;
    type metadata accessor for Defaults();
    v33 = sub_1000287B4(5);
    if (v33 != 2 && (v33 & 1) != 0)
    {
      *(v32 + 16) = 0x4082C00000000000;
    }

    v34 = AMSLogKey();
    v99 = v21;
    if (v34)
    {
      v35 = v34;
      v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v38 = v37;
    }

    else
    {
      v36 = 0;
      v38 = 0;
    }

    v39 = swift_allocObject();
    sub_10007B9A4(&qword_1002697F0, &qword_1001EBCF0);
    Promise.__allocating_init()();
    v40 = *(v32 + 16);
    v41 = sub_1000288B0(0x2065756575716E45, 0xEF74756F656D6974, &unk_10024A618, &unk_10024A640, sub_1000F117C, &unk_10024A658);
    v108 = v32;
    v42 = v41;

    *(v39 + 16) = v42;
    v107 = (v39 + 16);
    v43 = String._bridgeToObjectiveC()();
    v100 = v43;
    sub_100002BC0(0, &qword_10026CFE0, AMSBag_ptr);
    v44 = sub_10002411C();
    v45 = [v44 BOOLForKey:v43];

    v109 = [v45 valuePromise];
    v46 = swift_allocObject();
    v46[2] = v25;
    v46[3] = v36;
    v46[4] = v38;
    v46[5] = v26;
    v98[1] = v28;
    v46[6] = v28;
    v46[7] = v30;
    v46[8] = v114;
    v46[9] = v39;
    v110 = v39;
    v121 = sub_1000266E8;
    v122 = v46;
    aBlock = _NSConcreteStackBlock;
    v118 = 1107296256;
    v105 = &v119;
    v119 = sub_1000266E0;
    v120 = &unk_10024A360;
    v47 = _Block_copy(&aBlock);

    v48 = v25;

    v49 = v36;
    v50 = v26;

    v51 = v109;
    [v109 addErrorBlock:v47];
    _Block_release(v47);
    v52 = swift_allocObject();
    v52[2] = v48;
    v52[3] = v49;
    v53 = v110;
    v52[4] = v38;
    v52[5] = v53;
    v98[3] = v50;
    v52[6] = v50;
    v52[7] = v28;
    v54 = v114;
    v52[8] = v30;
    v52[9] = v54;
    v52[10] = v108;
    v121 = sub_1000F0764;
    v122 = v52;
    aBlock = _NSConcreteStackBlock;
    v118 = 1107296256;
    v119 = sub_1000EA728;
    v120 = &unk_10024A3B0;
    v55 = _Block_copy(&aBlock);
    v98[2] = v30;
    v98[0] = v48;

    [v51 addSuccessBlock:v55];
    _Block_release(v55);
    v56 = v107;
    swift_beginAccess();
    v57 = *v56;
    v58 = swift_allocObject();
    v59 = v98[0];
    v60 = v106;
    *(v58 + 16) = v98[0];
    *(v58 + 24) = v60;
    v61 = sub_100002BC0(0, &qword_10026CFB0, OS_dispatch_queue_ptr);
    LODWORD(v105) = enum case for DispatchQoS.QoSClass.default(_:);
    v62 = v116;
    v63 = *(v116 + 104);
    v103 = v116 + 104;
    v104 = v63;
    v64 = v113;
    v65 = v115;
    v63(v113);
    v98[0] = v59;
    v66 = v60;

    v67 = static OS_dispatch_queue.global(qos:)();
    v68 = *(v62 + 8);
    v116 = v62 + 8;
    v106 = v68;
    v68(v64, v65);
    v120 = v61;
    v121 = &protocol witness table for OS_dispatch_queue;
    aBlock = v67;
    v69 = swift_allocObject();
    *(v69 + 16) = sub_10006272C;
    *(v69 + 24) = v58;
    v70 = objc_allocWithZone(NSLock);
    v71 = v67;

    v72 = [v70 init];
    v73 = swift_allocObject();
    *(v73 + 16) = v72;
    *(v73 + 24) = v69;
    v74 = swift_allocObject();
    *(v74 + 16) = v72;
    *(v74 + 24) = v69;
    v75 = v72;
    swift_retain_n();
    v76 = v75;
    Promise.then(perform:orCatchError:on:)();

    sub_100002C00(&aBlock);
    v77 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v78 = swift_allocObject();
    v79 = v99;
    *(v78 + 16) = v77;
    *(v78 + 24) = v79;
    v80 = v115;
    v104(v64, v105, v115);
    v81 = static OS_dispatch_queue.global(qos:)();
    (v106)(v64, v80);
    v120 = v61;
    v121 = &protocol witness table for OS_dispatch_queue;
    aBlock = v81;
    v82 = swift_allocObject();
    *(v82 + 16) = sub_100062638;
    *(v82 + 24) = v78;
    v83 = objc_allocWithZone(NSLock);
    v84 = v81;

    v85 = [v83 init];
    v86 = swift_allocObject();
    *(v86 + 16) = v85;
    *(v86 + 24) = v82;
    v87 = swift_allocObject();
    *(v87 + 16) = v85;
    *(v87 + 24) = v82;
    v88 = v85;
    swift_retain_n();
    v89 = v88;
    Promise.then(perform:orCatchError:on:)();

    sub_100002C00(&aBlock);
    v90 = *v107;
    v91 = swift_allocObject();
    v92 = v101;
    v94 = v111;
    v93 = v112;
    v91[2] = v101;
    v91[3] = v93;
    v91[4] = v94;
    v95 = v115;
    v104(v64, v105, v115);
    v96 = v92;

    v97 = static OS_dispatch_queue.global(qos:)();
    (v106)(v64, v95);
    sub_10000C680(sub_1000F07C8, v91, v97, v90);

    sub_100024234();
  }
}

uint64_t sub_10000D564()
{
  v1 = *(v0 + 24);

  v2 = sub_1000074E4();

  return _swift_deallocObject(v2, v3, v4);
}

uint64_t sub_10000D594()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = sub_100008FD8();

  return _swift_deallocObject(v3, v4, v5);
}

uint64_t sub_10000D5FC()
{
  v1 = *(v0 + 16);

  v2 = sub_100005254();

  return _swift_deallocObject(v2, v3, v4);
}

uint64_t sub_10000D62C()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  v3 = *(v0 + 48);

  v4 = *(v0 + 56);

  v5 = *(v0 + 64);

  v6 = *(v0 + 72);

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_10000D694()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  v3 = *(v0 + 48);

  v4 = *(v0 + 56);

  v5 = *(v0 + 64);

  v6 = *(v0 + 72);

  v7 = *(v0 + 80);

  return _swift_deallocObject(v0, 88, 7);
}

uint64_t sub_10000D704()
{
  v1 = sub_1000074E4();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_10000D73C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = sub_1000074E4();

  return _swift_deallocObject(v3, v4, v5);
}

uint64_t sub_10000D774()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  sub_100007A3C();

  return _swift_deallocObject(v3, v4, v5);
}

uint64_t sub_10000D7B8()
{
  swift_weakDestroy();
  v0 = sub_100005254();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_10000D7F8(void *a1)
{
  v1 = [a1 events];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_10007B9A4(&qword_10026AE50, &unk_1001E83A0);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

unint64_t sub_10000D884()
{
  result = qword_100269D48;
  if (!qword_100269D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100269D48);
  }

  return result;
}

const char *sub_10000D8D8(char a1)
{
  if (!a1)
  {
    return "EngagementDaemonAppData";
  }

  if (a1 == 1)
  {
    return "EngagementNFCHandling";
  }

  return "EngagementMediaCatalogSync";
}

void sub_10000D934(void *a1)
{
  v1 = sub_10000D7F8(a1);
  if (v1)
  {
    v2 = v1;
    v3 = 0;
    v4 = *(v1 + 16);
    v5 = &_swiftEmptyArrayStorage;
    while (v4 != v3)
    {
      if (v3 >= *(v2 + 16))
      {
        __break(1u);
LABEL_22:
        __break(1u);
        return;
      }

      v6 = *(v2 + 8 * v3 + 32);
      v23 = v6;

      if (sub_10000DAC0(&v23))
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v24 = v5;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v8 = v5[2];
          v9 = sub_100004C7C();
          sub_10009B994(v9, v10, v11);
          v5 = v24;
        }

        v13 = v5[2];
        v12 = v5[3];
        if (v13 >= v12 >> 1)
        {
          v14 = sub_10000B380(v12);
          sub_10009B994(v14, v15, v16);
          v5 = v24;
        }

        v5[2] = v13 + 1;
        v5[v13 + 4] = v6;
      }

      else
      {
      }

      ++v3;
    }

    v17 = 0;
    v18 = v5[2];
    while (v18 != v17)
    {
      if (v17 >= v5[2])
      {
        goto LABEL_22;
      }

      v19 = v17 + 1;
      v20 = v5[v17 + 4];
      type metadata accessor for PodcastsEventManager();
      swift_initStaticObject();

      sub_100188220(v21);

      v17 = v19;
    }

    sub_1000058C8();
  }

  else
  {
    sub_1000058C8();
  }
}

uint64_t sub_10000DAC0(uint64_t *a1)
{
  v1 = *a1;
  AnyHashable.init<A>(_:)();
  sub_10000E0C8(v5, v1, &v6);
  sub_10000E1E8(v5);
  if (!v7)
  {
    goto LABEL_8;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_9;
  }

  AnyHashable.init<A>(_:)();
  sub_10000E0C8(v5, v1, &v6);
  sub_10000E1E8(v5);
  if (!v7)
  {

LABEL_8:
    sub_10000A0C4(&v6, &qword_10026D350);
    goto LABEL_9;
  }

  if (swift_dynamicCast())
  {
    v2 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v2)
    {
      v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

      return v3 & 1;
    }
  }

LABEL_9:
  v3 = 0;
  return v3 & 1;
}

uint64_t sub_10000DCEC()
{

  return swift_allocObject();
}

uint64_t *sub_10000DD18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  a17 = a11;

  return sub_100017E64(&a14);
}

uint64_t sub_10000DD34()
{

  return LogInterpolation.init(stringLiteral:)();
}

uint64_t sub_10000DD58()
{
  v2 = *(v0 - 144);

  return LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
}

uint64_t sub_10000DD78()
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_10000DDCC()
{

  return static LogInterpolation.prefix(_:_:)();
}

uint64_t sub_10000DDEC()
{

  return swift_beginAccess();
}

uint64_t sub_10000DE18()
{

  return swift_allocObject();
}

void sub_10000DE58(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = sub_10000B768(a1, a2, a3, a4, a5);
  sub_100002C4C(v8, (*(v7 + 56) + 32 * v6));
  sub_10000DD0C();
  if (v10)
  {
    __break(1u);
  }

  else
  {
    *(a5 + 16) = v9;
  }
}

void sub_10000DE9C()
{
  sub_10000C398();
  if (v5)
  {
    sub_100002EBC();
    if (v7 != v8)
    {
      sub_10000AE9C();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_100004F88();
    }
  }

  else
  {
    v6 = v4;
  }

  sub_10000B860(v6);
  if (v3)
  {
    sub_10007B9A4(&unk_100271ED0, &qword_1001E74E0);
    v9 = sub_10001CD54();
    sub_100019BE0(v9);
    sub_100023D60(v10);
  }

  else
  {
    v3 = &_swiftEmptyArrayStorage;
  }

  v11 = sub_1000071C0();
  if (v1)
  {
    if (v3 != v0 || &v12[16 * v2] <= v11)
    {
      memmove(v11, v12, 16 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

_OWORD *sub_10000DFC4()
{
  sub_100008738();
  v3 = v0;
  v5 = v4;
  v6 = sub_1000048A0();
  sub_100006AF8(v6, v7);
  if (v8)
  {
    __break(1u);
LABEL_14:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  sub_10000A5E0();
  sub_10007B9A4(&qword_10026AE78, &qword_1001ECFC0);
  v9 = sub_1000082EC();
  if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v9, v10))
  {
    v11 = *v0;
    sub_10000821C();
    sub_100012A94();
    sub_100007450();
    if (!v13)
    {
      goto LABEL_14;
    }

    v2 = v12;
  }

  if (v1)
  {
    sub_100002C00((*(*v3 + 56) + 32 * v2));
    sub_100005B9C();
    sub_100003B6C();

    return sub_100002C4C(v14, v15);
  }

  else
  {
    sub_100009DBC();
    sub_10000DE58(v18, v19, v20, v5, v21);
    sub_100003B6C();
  }
}

double sub_10000E0C8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  if (*(a2 + 16) && (v4 = sub_10000C818(a1), (v5 & 1) != 0))
  {
    v6 = sub_10003AE78(v4);

    sub_100011BAC(v6, v7);
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

unint64_t sub_10000E124(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
  for (i = a2 & v3; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v3)
  {
    sub_10000DF68(*(v2 + 48) + 40 * i, v7);
    v5 = static AnyHashable.== infix(_:_:)();
    sub_10000E1E8(v7);
    if (v5)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_10000E23C(void *a1)
{
  result = sub_10000D7F8(a1);
  if (!result)
  {
    return &_swiftEmptyArrayStorage;
  }

  v2 = result;
  v3 = 0;
  v4 = *(result + 16);
  v17 = &_swiftEmptyArrayStorage;
  while (1)
  {
    if (v4 == v3)
    {

      return v17;
    }

    if (v3 >= *(v2 + 16))
    {
      break;
    }

    v5 = *(v2 + 8 * v3 + 32);
    strcpy(v19, "nativeHandling");
    v19[15] = -18;

    AnyHashable.init<A>(_:)();
    if (*(v5 + 16) && (v6 = sub_10000C818(v20), (v7 & 1) != 0))
    {
      sub_100011BAC(*(v5 + 56) + 32 * v6, v21);
      sub_10000E1E8(v20);
      if ((swift_dynamicCast() & 1) == 0 || (v19[0] & 1) == 0)
      {

        goto LABEL_11;
      }

      v8 = v17;
      result = swift_isUniquelyReferenced_nonNull_native();
      v22 = v17;
      if ((result & 1) == 0)
      {
        v9 = v17[2];
        v10 = sub_100004C7C();
        result = sub_10009B994(v10, v11, v12);
        v8 = v22;
      }

      v14 = v8[2];
      v13 = v8[3];
      v15 = v14 + 1;
      if (v14 >= v13 >> 1)
      {
        v16 = v8[2];
        v18 = v14 + 1;
        result = sub_10009B994((v13 > 1), v14 + 1, 1);
        v14 = v16;
        v15 = v18;
        v8 = v22;
      }

      ++v3;
      v8[2] = v15;
      v17 = v8;
      v8[v14 + 4] = v5;
    }

    else
    {

      result = sub_10000E1E8(v20);
LABEL_11:
      ++v3;
    }
  }

  __break(1u);
  return result;
}

void sub_10000E42C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = Dictionary.init(dictionaryLiteral:)();
  v22 = &type metadata for String;
  *&v21 = a1;
  *(&v21 + 1) = a2;
  sub_100002C4C(&v21, v20);

  swift_isUniquelyReferenced_nonNull_native();
  v19 = v13;
  sub_10000DFC4();
  v14 = v19;
  v22 = &type metadata for String;
  *&v21 = a3;
  *(&v21 + 1) = a4;
  sub_100002C4C(&v21, v20);

  swift_isUniquelyReferenced_nonNull_native();
  v19 = v14;
  sub_10000DFC4();
  v15 = v19;
  static Date.now.getter();
  Date.timeIntervalSince1970.getter();
  v17 = v16;
  (*(v9 + 8))(v12, v8);
  v22 = sub_10007B9A4(&unk_10026FEA0, &unk_1001E7540);
  *&v21 = v15;
  sub_10000E768(&v21, v17);
}

_OWORD *sub_10000E62C(unint64_t a1, _OWORD *a2, void *a3, double a4)
{
  a3[(a1 >> 6) + 8] |= 1 << a1;
  *(a3[6] + 8 * a1) = a4;
  result = sub_100002C4C(a2, (a3[7] + 32 * a1));
  v6 = a3[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a3[2] = v8;
  }

  return result;
}

uint64_t sub_10000E6D0()
{

  return swift_beginAccess();
}

uint64_t sub_10000E6EC()
{

  return swift_allocObject();
}

uint64_t sub_10000E70C()
{

  return swift_getErrorValue();
}

uint64_t sub_10000E728(uint64_t result)
{
  *(result + 16) = v1;
  *(result + 24) = v2;
  return result;
}

void sub_10000E768(uint64_t a1, double a2)
{
  v4 = v2;
  if (*(a1 + 24))
  {
    sub_100002C4C(a1, v40);
    v6 = *v2;
    swift_isUniquelyReferenced_nonNull_native();
    sub_10000631C();
    v9 = sub_10000E87C(v7, v8, a2);
    sub_10000A6E0(v9, v10, v11, v12, v13, v14, v15, v16, v36, v38);
  }

  else
  {
    sub_10000A00C(a1, &qword_10026D350, &qword_1001E6050);
    v17 = *v2;
    sub_10000E9A8(a2);
    if (v18)
    {
      sub_100017D08();
      sub_100002FC4();
      v19 = sub_10007B9A4(&qword_10026AE70, &unk_1001E8620);
      v27 = sub_100023CE0(v19, v20, v21, v22, v23, v24, v25, v26, v36, v38);
      sub_1000115E8(v27, v28, v29, v30, v31, v32, v33, v34, v37, v39);
      sub_100002C4C((v35 + 32 * v3), v40);
      sub_10000A144();
      _NativeDictionary._delete(at:)();
      *v4 = v17;
    }

    else
    {
      memset(v40, 0, sizeof(v40));
    }

    sub_10000A00C(v40, &qword_10026D350, &qword_1001E6050);
  }
}

_OWORD *sub_10000E87C(_OWORD *a1, char a2, double a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_10000E9A8(a3);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_13;
  }

  v14 = v9;
  v15 = v10;
  sub_10007B9A4(&qword_10026AE70, &unk_1001E8620);
  if (!_NativeDictionary.ensureUnique(isUnique:capacity:)(a2 & 1, v13))
  {
    goto LABEL_5;
  }

  v16 = *v4;
  v17 = sub_10000E9A8(a3);
  if ((v15 & 1) != (v18 & 1))
  {
LABEL_13:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v14 = v17;
LABEL_5:
  v19 = *v4;
  if (v15)
  {
    v20 = (v19[7] + 32 * v14);
    sub_100002C00(v20);

    return sub_100002C4C(a1, v20);
  }

  else
  {

    return sub_10000E62C(v14, a1, v19, a3);
  }
}

unint64_t sub_10000E9A8(double a1)
{
  v3 = *(v1 + 40);
  v4 = static Hasher._hash(seed:_:)();

  return sub_10000E9F4(v4, a1);
}

unint64_t sub_10000E9F4(uint64_t a1, double a2)
{
  v3 = ~(-1 << *(v2 + 32));
    ;
  }

  return result;
}

void sub_10000EA50(void *a1, char a2)
{
  if (a2)
  {
    v3 = sub_10000EEEC(a1);
  }

  else
  {
    v3 = sub_10000ED18(a1);
    v2 = v27;
  }

  v4 = v3;
  if (v3)
  {
    v5 = sub_1000116AC(v3);
    v6 = 0;
    v7 = &_swiftEmptyArrayStorage;
    while (1)
    {
      if (v5 == v6)
      {

        return;
      }

      if ((v4 & 0xC000000000000001) != 0)
      {
        v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_27;
        }

        v8 = *(v4 + 8 * v6 + 32);
      }

      v9 = v8;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v36 = v8;
      sub_10000EF5C(&v36, v2, v35);

      if (v35[1])
      {
        sub_1000F1270();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v14 = v7[2];
          sub_100004C7C();
          sub_10000F310();
          v7 = v15;
        }

        v11 = v7[2];
        v10 = v7[3];
        if (v11 >= v10 >> 1)
        {
          sub_100005C40(v10);
          sub_10000F310();
          v7 = v16;
        }

        v32 = v34[2];
        v33 = v34[3];
        v12 = v34[0];
        v31 = v34[1];
        v7[2] = v11 + 1;
        v13 = &v7[8 * v11];
        v13[4] = v32;
        v13[5] = v33;
        v13[2] = v12;
        v13[3] = v31;
        v2 = v27;
      }

      else
      {
        sub_1000F1270();
        sub_10000A0C4(v34, &unk_10026C940);
      }

      ++v6;
    }

    __break(1u);
LABEL_27:
    __break(1u);
  }

  else
  {
    v35[0] = &_swiftEmptyArrayStorage;
    sub_10009B928(0, 4, 0);
    v17 = &_swiftEmptyArrayStorage;
    v18 = objc_opt_self();
    v19 = 0;
    v28 = xmmword_1001E6A20;
    do
    {
      v20 = *(&off_100244588 + v19 + 32);
      v21 = [v18 currentProcess];
      v35[0] = v17;
      v23 = v17[2];
      v22 = v17[3];
      if (v23 >= v22 >> 1)
      {
        v26 = sub_100005C40(v22);
        sub_10009B928(v26, v23 + 1, 1);
        v17 = v35[0];
      }

      ++v19;
      v17[2] = v23 + 1;
      v24 = &v17[8 * v23];
      v24[32] = 0;
      v24[33] = v20;
      *(v24 + 34) = v29;
      *(v24 + 19) = v30;
      *(v24 + 5) = v21;
      *(v24 + 3) = v28;
      *(v24 + 8) = 0x80000001001F31B0;
      *(v24 + 9) = 25;
      v24[80] = 0;
      v25 = v34[0];
      *(v24 + 21) = *(v34 + 3);
      *(v24 + 81) = v25;
      *(v24 + 11) = 10485760;
    }

    while (v19 != 4);
  }
}

uint64_t sub_10000ED18(void *a1)
{
  v2 = v1;
  swift_getObjectType();
  v15[3] = &type metadata for AMSFlags;
  v15[4] = sub_10000D884();
  LOBYTE(v15[0]) = 0;
  v4 = isFeatureEnabled(_:)();
  sub_100002C00(v15);
  if ((v4 & 1) == 0)
  {
    return sub_10000EEEC(a1);
  }

  v5 = sub_10000D7F8(a1);
  if (!v5)
  {
    return sub_10000EEEC(a1);
  }

  if (!*(v5 + 16))
  {

    return sub_10000EEEC(a1);
  }

  v6 = *(v5 + 32);

  v7.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v8 = 0;
  v9 = &_swiftEmptyArrayStorage;
  v15[0] = &_swiftEmptyArrayStorage;
  while (v8 != 4)
  {
    v14 = *(&off_100244588 + v8 + 32);
    sub_1000E5C04(&v14, v2, v7.super.isa, &v13);
    if (v13)
    {
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      v10 = *((v15[0] & 0xFFFFFFFFFFFFFF8) + 0x18);
      if (*((v15[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= v10 >> 1)
      {
        sub_100005C40(v10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v9 = v15[0];
    }

    ++v8;
  }

  v15[0] = v9;
  v11 = sub_10000EEEC(a1);
  if (v11)
  {
    sub_1000E33CC(v11, v15);

    return v15[0];
  }

  else
  {
  }

  return v9;
}

uint64_t sub_10000EEEC(void *a1)
{
  v1 = [a1 destinations];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_100002BC0(0, &qword_10026B508, AMSEngagementDestination_ptr);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

id sub_10000EF5C@<X0>(void **a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for LogInterpolation.StringInterpolation();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v9 = *a1;
  v10 = [v9 identifier];
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  v33._countAndFlagsBits = v11;
  v33._object = v13;
  v14 = sub_1000116D0(v33);
  if (v14 == 4)
  {
    v32 = v3;
    if (qword_1002686F0 != -1)
    {
      swift_once();
    }

    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v15 = *(type metadata accessor for LogInterpolation() - 8);
    v16 = *(v15 + 72);
    v17 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    *(swift_allocObject() + 16) = xmmword_1001E5F70;
    *&v29 = type metadata accessor for EngagementService();
    *&v28 = a2;
    v18 = a2;
    v19 = AMSLogKey();
    if (v19)
    {
      v20 = v19;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_100002C00(&v28);
    LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v23._countAndFlagsBits = 0;
    v23._object = 0xE000000000000000;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v23);
    v27[3] = sub_100002BC0(0, &qword_10026B508, AMSEngagementDestination_ptr);
    v27[0] = v9;
    v24 = v9;
    LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
    sub_10000A0C4(v27, &qword_10026D350);
    v25._object = 0x80000001001F7300;
    v25._countAndFlagsBits = 0xD00000000000002ALL;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v25);
    LogInterpolation.init(stringInterpolation:)();
    v26 = static os_log_type_t.error.getter();
    sub_1000036B0(v26);

    *(a3 + 32) = 0u;
    *(a3 + 48) = 0u;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  else
  {
    v21 = [v9 allowsResponse];
    result = [v9 components];
    *a3 = v21;
    *(a3 + 1) = *(&v28 + 1);
    *(a3 + 8) = *(&v28 + 1);
    *(a3 + 16) = result;
    *(a3 + 24) = v29;
    *(a3 + 40) = v30;
    *(a3 + 56) = v31;
  }

  return result;
}

double sub_10000F284@<D0>(char a1@<W0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = [objc_opt_self() currentProcess];
  *a3 = 0;
  *(a3 + 1) = a1;
  *(a3 + 8) = v6;
  result = NAN;
  *(a3 + 16) = xmmword_1001E6A20;
  *(a3 + 32) = 0x80000001001F31B0;
  *(a3 + 40) = 25;
  *(a3 + 48) = a2;
  *(a3 + 56) = 10485760;
  return result;
}

void sub_10000F310()
{
  sub_10000C398();
  if (v5)
  {
    sub_100002EBC();
    if (v7 != v8)
    {
      sub_10000AE9C();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_100004F88();
    }
  }

  else
  {
    v6 = v4;
  }

  sub_10000B860(v6);
  if (v3)
  {
    sub_10007B9A4(&qword_100269F98, &qword_1001E74E8);
    v9 = swift_allocObject();
    sub_100019BE0(v9);
    sub_100023D60(v10);
  }

  else
  {
    v3 = &_swiftEmptyArrayStorage;
  }

  v11 = sub_1000071C0();
  if (v1)
  {
    if (v3 != v0 || &v12[64 * v2] <= v11)
    {
      memmove(v11, v12, v2 << 6);
    }

    v0[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_10000F3F0()
{
  v1 = v0[29];
  v2 = v0[30];
  v4 = v0[27];
  v3 = v0[28];
  v5 = v0[26];
}

void sub_10000F400()
{
  sub_10000AE8C();
  v3 = *(v2 + 16);
  v4 = (v2 + 32);
  if (v3)
  {
    while (1)
    {
      v5 = v4[1];
      v26[0] = *v4;
      v26[1] = v5;
      v6 = v4[3];
      v8 = *v4;
      v7 = v4[1];
      v26[2] = v4[2];
      v26[3] = v6;
      v22 = v8;
      v23 = v7;
      v9 = v4[3];
      v24 = v4[2];
      v25 = v9;
      sub_10000F4A4(v26, &v18);
      v10 = v1(&v22);
      if (v0)
      {
        break;
      }

      sub_100005BE4(v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25);
      v4 += 4;
      if (!--v3)
      {
        return;
      }
    }

    sub_100005BE4(v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25);
  }
}

uint64_t sub_10000F500(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5)
{
  v6 = v5;
  v12 = type metadata accessor for LogInterpolation.StringInterpolation();
  v13 = *(*(v12 - 8) + 64);
  result = __chkstk_darwin(v12 - 8);
  v65 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(a1 + 16) & 4) != 0)
  {
    v57 = a5;
    v16 = *(a1 + 1);
    v17 = *sub_100003CA8(a2, a2[3]);
    sub_10003B834(&v72);
    v18 = a2;
    if (qword_1002686F0 != -1)
    {
      swift_once();
    }

    v66 = qword_100287850;
    v19 = sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v20 = *(type metadata accessor for LogInterpolation() - 8);
    v21 = *(v20 + 72);
    v22 = (*(v20 + 80) + 32) & ~*(v20 + 80);
    v59 = *(v20 + 80);
    v62 = v19;
    v60 = v22 + 2 * v21;
    v23 = swift_allocObject();
    v58 = xmmword_1001E5F70;
    *(v23 + 16) = xmmword_1001E5F70;
    v61 = v22;
    v80 = &type metadata for PersistedEventCoordinator;
    v78 = swift_allocObject();
    v63 = v18;
    sub_1000263DC(v18, v78 + 16);
    sub_1000F0474(a3);
    static LogInterpolation.prefix(_:_:)();

    sub_100002C00(&v78);
    LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v24._countAndFlagsBits = 0x6974736973726550;
    v24._object = 0xEB0000000020676ELL;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v24);
    v25 = a4[2];
    v80 = &type metadata for Int;
    v78 = v25;
    LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
    sub_10000A064(&v78, &qword_10026D350, &qword_1001E6050);
    v26._object = 0x8000000100200D40;
    v26._countAndFlagsBits = 0xD000000000000010;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v26);
    v80 = sub_10007B9A4(&qword_1002704A0, &unk_1001ECCF0);
    v78 = a4;

    LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
    sub_10000A064(&v78, &qword_10026D350, &qword_1001E6050);
    v27._countAndFlagsBits = 0xD000000000000014;
    v27._object = 0x8000000100200D60;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v27);
    v80 = &unk_1002471C0;
    LOBYTE(v78) = v16;
    LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
    sub_10000A064(&v78, &qword_10026D350, &qword_1001E6050);
    v28._countAndFlagsBits = 46;
    v28._object = 0xE100000000000000;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v28);
    v64 = v21;
    LogInterpolation.init(stringInterpolation:)();
    v29 = static os_log_type_t.default.getter();
    sub_1000036B0(v29);

    v30 = String._bridgeToObjectiveC()();
    if (!v72)
    {
      goto LABEL_7;
    }

    v66 = v74;
    v31 = v75;
    v32 = v73;
    v33 = v77;
    v69 = v72;
    sub_10000A064(&v69, &qword_10026A6F8, &unk_1001E7CA0);
    v81 = v76;
    sub_10000A064(&v81, &unk_10026CD20, &unk_1001E7CC0);
    v82 = v33;
    sub_10000A064(&v82, &qword_10026A758, &qword_1001EBE80);
    if (v32 == 2 || (v31 & 1) != 0)
    {
LABEL_7:
      if (qword_1002685F8 != -1)
      {
        swift_once();
      }

      v34 = [qword_10026A070 integerForKey:v30];
      v35 = [v34 valuePromise];

      v78 = 0;
      v36 = [v35 resultWithError:&v78];

      v37 = v78;
      if (v36)
      {
        v78 = 0;
        v79 = 1;
        v38 = v37;
        static Int._conditionallyBridgeFromObjectiveC(_:result:)();

        v66 = v78;
        v39 = v79;
      }

      else
      {
        v40 = v78;
        _convertNSErrorToError(_:)();

        swift_willThrow();

        v66 = 0;
        v6 = 0;
        v39 = 1;
      }
    }

    else
    {
      v39 = 0;
    }

    type metadata accessor for AppDatabase();
    sub_10001D804(v16);
    if (v6)
    {

      *(swift_allocObject() + 16) = v58;
      v71 = &type metadata for PersistedEventCoordinator;
      v70[0] = swift_allocObject();
      sub_1000263DC(v63, v70[0] + 16);
      v41 = AMSLogKey();
      if (v41)
      {
        v42 = v41;
        static String._unconditionallyBridgeFromObjectiveC(_:)();
      }

      static LogInterpolation.prefix(_:_:)();

      sub_100002C00(v70);
      LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v49._countAndFlagsBits = 0xD000000000000035;
      v49._object = 0x8000000100200D80;
      LogInterpolation.StringInterpolation.appendLiteral(_:)(v49);
      swift_getErrorValue();
      v50 = v67;
      v51 = v68;
      v71 = v68;
      v52 = sub_100017E64(v70);
      (*(v51[-1].Description + 2))(v52, v50, v51);
      LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
      sub_10000A064(v70, &qword_10026D350, &qword_1001E6050);
      v53._countAndFlagsBits = 41;
      v53._object = 0xE100000000000000;
      LogInterpolation.StringInterpolation.appendLiteral(_:)(v53);
      LogInterpolation.init(stringInterpolation:)();
      if (qword_1002686B0 != -1)
      {
        swift_once();
      }

      v54 = static os_log_type_t.error.getter();
      sub_1000036B0(v54);
    }

    else
    {
      v56 = v30;
      v43 = *(v57 + 16);
      for (i = (v57 + 32); v43; --v43)
      {
        v45 = *i;
        swift_bridgeObjectRetain_n();
        sub_1000A5940(&v78);
        v46 = sub_1000A0CA0();
        sub_1000A0E24(&v78, v66, v39, v46, 1);

        sub_10009D054(&v78);

        ++i;
      }

      *(swift_allocObject() + 16) = v58;
      v71 = &type metadata for PersistedEventCoordinator;
      v70[0] = swift_allocObject();
      sub_1000263DC(v63, v70[0] + 16);
      v47 = AMSLogKey();
      if (v47)
      {
        v48 = v47;
        static String._unconditionallyBridgeFromObjectiveC(_:)();
      }

      static LogInterpolation.prefix(_:_:)();

      sub_100002C00(v70);
      LogInterpolation.init(stringLiteral:)();
      if (qword_1002686B0 != -1)
      {
        swift_once();
      }

      v55 = static os_log_type_t.default.getter();
      sub_1000036B0(v55);
    }
  }

  return result;
}

void sub_10000FF64(uint64_t a1, void *a2)
{
  isUniquelyReferenced_nonNull_native = sub_10000D7F8(a2);
  v3 = 0;
  v4 = &_swiftEmptyArrayStorage;
  if (isUniquelyReferenced_nonNull_native)
  {
    v5 = isUniquelyReferenced_nonNull_native;
  }

  else
  {
    v5 = &_swiftEmptyArrayStorage;
  }

  v6 = v5[2];
  while (1)
  {
    if (v6 == v3)
    {
      __chkstk_darwin(isUniquelyReferenced_nonNull_native);
      sub_10000F400();

      return;
    }

    if (v3 >= v5[2])
    {
      break;
    }

    v7 = v5[v3 + 4];

    AnyHashable.init<A>(_:)();
    if (!*(v7 + 16) || (v8 = sub_10000C818(v18), (v9 & 1) == 0))
    {

      isUniquelyReferenced_nonNull_native = sub_10000E1E8(v18);
      goto LABEL_17;
    }

    sub_100011BAC(*(v7 + 56) + 32 * v8, v19);
    sub_10000E1E8(v18);

    isUniquelyReferenced_nonNull_native = swift_dynamicCast();
    if ((isUniquelyReferenced_nonNull_native & 1) != 0 && (v10 = v21) != 0)
    {
      v17 = v20;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v14 = v4[2];
        sub_10000DE9C();
        v4 = isUniquelyReferenced_nonNull_native;
      }

      v11 = v4[2];
      v12 = v11 + 1;
      if (v11 >= v4[3] >> 1)
      {
        v16 = v11 + 1;
        v15 = v4[2];
        sub_10000DE9C();
        v12 = v16;
        v11 = v15;
        v4 = isUniquelyReferenced_nonNull_native;
      }

      ++v3;
      v4[2] = v12;
      v13 = &v4[2 * v11];
      *(v13 + 4) = v17;
      *(v13 + 5) = v10;
    }

    else
    {
LABEL_17:
      ++v3;
    }
  }

  __break(1u);
}

uint64_t sub_100010198(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v122 = a2;
  v123 = a3;
  v6 = type metadata accessor for LogInterpolation.StringInterpolation();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v142 = &v111 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v137 = type metadata accessor for DispatchQoS.QoSClass();
  v9 = *(v137 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v137);
  v136 = &v111 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Date();
  v13 = *(v12 - 8);
  v139 = v12;
  v140 = v13;
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v130 = &v111 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v138 = &v111 - v16;
  Date.init()();
  v17 = AMSLogKey();
  if (!v17)
  {
    v17 = AMSGenerateLogCorrelationKey();
  }

  v134 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v135 = v18;

  if (qword_100268830 != -1)
  {
LABEL_38:
    swift_once();
  }

  sub_100011C54(0xD000000000000013, 0x80000001001F61B0);
  if (qword_1002686F0 != -1)
  {
    swift_once();
  }

  v125 = qword_100287850;
  v19 = sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v20 = *(type metadata accessor for LogInterpolation() - 8);
  v21 = *(v20 + 80);
  v22 = (v21 + 32) & ~v21;
  v124 = *(v20 + 72);
  v120 = v21;
  v121 = v19;
  v118 = v22 + 2 * v124;
  v23 = swift_allocObject();
  v117 = xmmword_1001E5F70;
  *(v23 + 16) = xmmword_1001E5F70;
  v119 = v22;
  v116 = type metadata accessor for EngagementService();
  *&v152 = v116;
  v150 = v4;
  v146 = v4;
  v24 = AMSLogKey();
  if (v24)
  {
    v25 = v24;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(&v150);
  LogInterpolation.init(stringLiteral:)();
  v26 = static os_log_type_t.debug.getter();
  sub_1000036B0(v26);

  v161 = _swiftEmptyArrayStorage;
  v160 = _swiftEmptyArrayStorage;
  v150 = a1;

  a1 = 0;
  sub_100027804(&v150);
  v4 = 0;
  v27 = v150;
  v114 = "Scheduling request";
  v115 = OBJC_IVAR____TtC14amsengagementd17EngagementService_priorityQueue;
  v113 = ", allowsResponse: ";
  v127 = v14 + 7;
  v128 = v140 + 16;
  v126 = v140 + 32;
  v132 = enum case for DispatchQoS.QoSClass.default(_:);
  v131 = (v9 + 104);
  v133 = (v9 + 8);
  v28 = _swiftEmptyArrayStorage;
  v112 = _swiftEmptyArrayStorage;
  v129 = v150;
LABEL_9:
  v29 = (v4 << 6) | 0x20;
  while (1)
  {
    v30 = *(v27 + 16);
    if (v4 == v30)
    {
      break;
    }

    if (v4 >= v30)
    {
      __break(1u);
      goto LABEL_38;
    }

    v143 = v29;
    v31 = *(v27 + v29);
    v32 = *(v27 + v29 + 16);
    v33 = *(v27 + v29 + 32);
    v155[3] = *(v27 + v29 + 48);
    v155[1] = v32;
    v155[2] = v33;
    v155[0] = v31;
    v151 = *(v27 + v29);
    v152 = *(v27 + v29 + 16);
    v153 = *(v27 + v29 + 32);
    v154 = *(v27 + v29 + 48);
    v168 = v153;
    v169 = v154;
    v166 = v151;
    v167 = v152;
    v158 = v153;
    v159 = v154;
    v156 = v151;
    v157 = v152;
    v148 = v134;
    v149 = v135;

    sub_10000F4A4(v155, &v150);
    v34._countAndFlagsBits = 95;
    v34._object = 0xE100000000000000;
    String.append(_:)(v34);
    v36 = v148;
    v35 = v149;
    v150 = v4;
    v37 = dispatch thunk of CustomStringConvertible.description.getter();
    v39 = v38;
    v150 = v36;
    *&v151 = v35;

    v40._countAndFlagsBits = v37;
    v40._object = v39;
    String.append(_:)(v40);

    v41 = v151;
    v42 = v169;
    v145 = v4;
    v147 = v150;
    if (v169 && v169 != 1)
    {
    }

    else
    {
      v43 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v43 & 1) == 0)
      {
        goto LABEL_19;
      }
    }

    v170[0] = v156;
    v170[1] = v157;
    v170[2] = v158;
    v170[3] = v159;
    sub_10000F4A4(&v166, &v150);
    v44 = sub_1000E6E60(v170);
    sub_10000FF10(&v166);
    if (v44)
    {
      sub_10007B9A4(&qword_1002697F0, &qword_1001EBCF0);
      v45 = String._bridgeToObjectiveC()();
      v46 = String._bridgeToObjectiveC()();
      v47 = AMSError();

      v144 = Promise.__allocating_init(error:)();
      v48 = v146;
      goto LABEL_25;
    }

LABEL_19:
    *(swift_allocObject() + 16) = v117;
    *&v152 = v116;
    v150 = v146;
    v49 = v146;

    static LogInterpolation.prefix(_:_:)();

    sub_100002C00(&v150);
    LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v50._countAndFlagsBits = 0x6E69756575716E45;
    v50._object = 0xEA00000000002067;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v50);
    v144 = v49;
    if (v42)
    {
      if (v42 == 1)
      {
        v51 = 0x696577746867696CLL;
        v52 = 0xEF636E7953746867;
      }

      else
      {
        v52 = 0xE400000000000000;
        v51 = 1668184435;
      }
    }

    else
    {
      v52 = 0xE700000000000000;
      v51 = 0x65756575716E65;
    }

    *&v152 = &type metadata for String;
    v150 = v51;
    *&v151 = v52;
    LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
    sub_10000A0C4(&v150, &qword_10026D350);
    v53._countAndFlagsBits = 0x7473657571657220;
    v53._object = 0xEF203A7070612820;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v53);
    *&v152 = &unk_1002471C0;
    v141 = BYTE1(v166);
    LOBYTE(v150) = BYTE1(v166);
    LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
    sub_10000A0C4(&v150, &qword_10026D350);
    v54._object = (v114 | 0x8000000000000000);
    v54._countAndFlagsBits = 0xD000000000000012;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v54);
    *&v152 = &type metadata for Bool;
    LOBYTE(v150) = v166;
    LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
    sub_10000A0C4(&v150, &qword_10026D350);
    v55._countAndFlagsBits = 0x69726F697270202CLL;
    v55._object = 0xEC000000203A7974;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v55);
    v56 = sub_100027970();
    *&v152 = &type metadata for String;
    v150 = v56;
    *&v151 = v57;
    LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
    sub_10000A0C4(&v150, &qword_10026D350);
    v58._countAndFlagsBits = 41;
    v58._object = 0xE100000000000000;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v58);
    LogInterpolation.init(stringInterpolation:)();
    v59 = static os_log_type_t.default.getter();
    sub_1000036B0(v59);

    v48 = v146;
    v60 = *&v146[v115];
    v61 = sub_100027970();
    v63 = v62;
    v64 = swift_allocObject();
    v65 = v144;
    v66 = v147;
    *(v64 + 16) = v144;
    *(v64 + 24) = v66;
    *(v64 + 32) = v41;
    *(v64 + 40) = v42;
    v67 = v167;
    *(v64 + 48) = v166;
    *(v64 + 64) = v67;
    v68 = v169;
    *(v64 + 80) = v168;
    *(v64 + 96) = v68;
    v69 = v123;
    *(v64 + 112) = v122;
    *(v64 + 120) = v69;
    v70 = v65;
    sub_10000F4A4(&v166, &v150);

    sub_100027C4C(v141, v61, v63, v162);
    v144 = sub_1000ED88C(v162, sub_10002D0B4, v64);
    v165 = *&v162[8];
    sub_100027DE8(&v165);
    v164 = v163;
    sub_100027DE8(&v164);

LABEL_25:
    v71 = v139;
    v72 = v140;
    v73 = v130;
    (*(v140 + 16))(v130, v138, v139);
    v74 = (*(v72 + 80) + 16) & ~*(v72 + 80);
    v75 = (v127 + v74) & 0xFFFFFFFFFFFFFFF8;
    v76 = swift_allocObject();
    (*(v72 + 32))(v76 + v74, v73, v71);
    *(v76 + v75) = v48;
    v77 = (v76 + ((v75 + 15) & 0xFFFFFFFFFFFFFFF8));
    *v77 = v147;
    v77[1] = v41;
    v78 = sub_100002BC0(0, &qword_10026CFB0, OS_dispatch_queue_ptr);
    v80 = v136;
    v79 = v137;
    (*v131)(v136, v132, v137);
    v81 = v48;
    v9 = v144;

    v82 = static OS_dispatch_queue.global(qos:)();
    (*v133)(v80, v79);
    *&v152 = v78;
    *(&v152 + 1) = &protocol witness table for OS_dispatch_queue;
    v150 = v82;
    v83 = swift_allocObject();
    *(v83 + 16) = sub_100060194;
    *(v83 + 24) = v76;
    v84 = objc_allocWithZone(NSLock);
    v85 = v82;

    v86 = [v84 init];
    v14 = swift_allocObject();
    *(v14 + 16) = v86;
    *(v14 + 24) = v83;
    v87 = swift_allocObject();
    *(v87 + 16) = v86;
    *(v87 + 24) = v83;
    v88 = v86;
    swift_retain_n();
    v89 = v88;
    Promise.then(perform:orCatchError:on:)();

    sub_100002C00(&v150);
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    a1 = *((v161 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (a1 >= *((v161 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v28 = v161;
    v90 = v145;
    v27 = v129;
    if (v166)
    {
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      a1 = *((v160 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (a1 >= *((v160 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      v4 = v90 + 1;
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v112 = v160;
      sub_10000FF10(&v166);
      goto LABEL_9;
    }

    sub_10000FF10(&v166);
    v29 = v143 + 64;
    v4 = v90 + 1;
  }

  v91 = v112;
  if (!sub_1000116AC(v112))
  {
    goto LABEL_36;
  }

  if ((v91 & 0xC000000000000001) != 0)
  {
    specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_36:

    v147 = sub_100027E3C(v93);

    v94 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v95 = swift_allocObject();
    v97 = v134;
    v96 = v135;
    v95[2] = v94;
    v95[3] = v97;
    v95[4] = v96;
    v98 = sub_100002BC0(0, &qword_10026CFB0, OS_dispatch_queue_ptr);
    v100 = v136;
    v99 = v137;
    (*v131)(v136, v132, v137);
    v101 = static OS_dispatch_queue.global(qos:)();
    (*v133)(v100, v99);
    *&v152 = v98;
    *(&v152 + 1) = &protocol witness table for OS_dispatch_queue;
    v150 = v101;
    v102 = swift_allocObject();
    *(v102 + 16) = sub_100062414;
    *(v102 + 24) = v95;
    v103 = objc_allocWithZone(NSLock);
    v104 = v101;

    v105 = [v103 init];
    v106 = swift_allocObject();
    *(v106 + 16) = v105;
    *(v106 + 24) = v102;
    v107 = swift_allocObject();
    *(v107 + 16) = v105;
    *(v107 + 24) = v102;
    v108 = v105;
    swift_retain_n();
    v109 = v108;
    Promise.then(perform:orCatchError:on:)();

    (*(v140 + 8))(v138, v139);

    sub_100002C00(&v150);
    return v28;
  }

  else
  {
    if (*((v91 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v92 = *(v91 + 32);

      goto LABEL_36;
    }

    __break(1u);

    __break(1u);
  }

  return result;
}

unint64_t sub_100011190(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

uint64_t sub_1000111D8()
{
  sub_100003D74();
  v3 = v2;
  v5 = v4;
  v6 = sub_100005068();
  sub_100006AF8(v6, v7);
  if (v8)
  {
    __break(1u);
LABEL_13:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  sub_10000A5E0();
  sub_10007B9A4(v5, v3);
  v9 = sub_1000082EC();
  v11 = _NativeDictionary.ensureUnique(isUnique:capacity:)(v9, v10);
  if (v11)
  {
    sub_1000119F0();
    sub_100007450();
    if (!v15)
    {
      goto LABEL_13;
    }
  }

  if (v1)
  {
    sub_10000AEC0(v11, v12, v13, v14, *v0);
    sub_100005F14();
  }

  else
  {
    v18 = sub_100007988();
    sub_1000112BC(v18, v19, v20, v21, v22);
    sub_100005F14();
  }
}

void sub_1000112BC(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = sub_10000B768(a1, a2, a3, a4, a5);
  *(*(v6 + 56) + 8 * v5) = v7;
  v8 = *(v6 + 16);
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    sub_100007178(v6, v10);
  }
}

uint64_t sub_1000112FC(uint64_t a1)
{
  v3 = *(v1 + 16);
  swift_unknownObjectRelease();
  v4 = *(v1 + 32);

  return _swift_deallocObject(v1, a1, 7);
}

uint64_t sub_100011348()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  v3 = *(v0 + 56);

  sub_100007600();

  return _swift_deallocObject(v4, v5, v6);
}

uint64_t sub_100011394()
{
  v1 = *(v0 + 24);

  sub_1000083D8();

  return _swift_deallocObject(v2, v3, v4);
}

uint64_t sub_1000113D0()
{
  sub_10000557C();

  return _swift_deallocObject(v0, 176, 7);
}

uint64_t sub_100011404(uint64_t *a1, uint64_t *a2)
{
  v3 = sub_10007B9A4(a1, a2);
  sub_1000047A4(v3);
  v5 = *(v4 + 80);
  v6 = (v5 + 16) & ~v5;
  v7 = *(v4 + 64);
  (*(v4 + 8))(v2 + v6);

  return _swift_deallocObject(v2, v6 + v7, v5 | 7);
}

uint64_t sub_100011484()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  v3 = *(v0 + 56);

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_1000114D4()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100011514()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100011554(void (*a1)(void), void (*a2)(void), uint64_t a3)
{
  a1(*(v3 + 24));
  a2(*(v3 + 40));

  return _swift_deallocObject(v3, a3, 7);
}

void *sub_1000115D0(unsigned int a1, uint64_t a2, uint64_t a3)
{

  return sub_10008DAF8(a1, a2, a3, v3);
}

uint64_t sub_1000115F4()
{
}

uint64_t sub_100011630()
{

  return static LogInterpolation.prefix(_:_:)();
}

uint64_t sub_100011650(__n128 *a1, __n128 a2)
{
  a1[1] = a2;
  a1[2].n128_u64[0] = v3;
  a1[2].n128_u64[1] = v2;
  a1[3].n128_u8[0] = 3;
}

uint64_t sub_100011674(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_10000A7C0(v4, 1, 1, a4);
}

uint64_t sub_1000116AC(unint64_t a1)
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

unint64_t sub_1000116D0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100244660, v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

char *sub_10001171C(uint64_t a1, unint64_t a2)
{
  v4 = sub_1000117D8(a1, a2);
  sub_1000118F0(&off_100244DF8);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

void *sub_100011768(uint64_t a1, uint64_t a2)
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

  sub_10007B9A4(&qword_10026C880, &qword_1001EBCE0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_1000117D8(uint64_t a1, unint64_t a2)
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
    result = sub_100011768(v5, 0);
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

uint64_t sub_1000118F0(uint64_t result)
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

    result = sub_1000EF71C(result, v8, 1, v3);
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

unint64_t sub_1000119F0()
{
  v2 = *v0;

  return sub_100012A94();
}

id sub_100011A0C()
{

  return sub_1000ACB0C();
}

uint64_t sub_100011A30()
{
  result = *(v0 + 16);
  v3 = *(v1 + 8);
  return result;
}

double sub_100011A40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, __int128 a15)
{

  return sub_10000E0C8(&a10, v15, &a15);
}

uint64_t sub_100011A5C()
{

  return static LogInterpolation.prefix(_:_:)();
}

uint64_t sub_100011AC0()
{

  return sub_10000A064(v2 - 112, v0, v1);
}

double sub_100011ADC()
{

  return sub_10000E0C8(v1 - 136, v0, (v1 - 168));
}

BOOL sub_100011AF8(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24)
{

  return _NativeDictionary.ensureUnique(isUnique:capacity:)(v24, v25);
}

id sub_100011B18(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

uint64_t sub_100011B44()
{
  *(v0 - 82) = 1;
  v2 = *(v0 - 96);

  return KeyedEncodingContainer.encode(_:forKey:)();
}

uint64_t sub_100011BAC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t type metadata accessor for TransactionStore()
{
  result = qword_100271530;
  if (!qword_100271530)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100011C54(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = v2[2];
  v8 = swift_allocObject();
  v8[2] = v3;
  v8[3] = a1;
  v8[4] = a2;
  v8[5] = v6;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_100012758;
  *(v9 + 24) = v8;
  v12[4] = sub_10001278C;
  v12[5] = v9;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v12[2] = sub_100012764;
  v12[3] = &unk_100252A68;
  v10 = _Block_copy(v12);

  dispatch_sync(v7, v10);
  _Block_release(v10);
  LOBYTE(v7) = swift_isEscapingClosureAtFileLocation();

  if (v7)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100011E14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for LogInterpolation.StringInterpolation();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v8 = type metadata accessor for OSSignpostID();
  v74 = *(v8 - 8);
  v75 = v8;
  v9 = *(v74 + 64);
  v10 = __chkstk_darwin(v8);
  v12 = &v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v73 = &v63 - v13;
  v14 = *(a1 + OBJC_IVAR____TtC14amsengagementd16TransactionStore_transactionSet);
  v15 = String._bridgeToObjectiveC()();
  [v14 addObject:v15];

  v16 = OBJC_IVAR____TtC14amsengagementd16TransactionStore_signposter;
  String._bridgeToObjectiveC()();
  v72 = v16;
  OSSignposter.logHandle.getter();
  OSSignpostID.init(log:object:)();
  v17 = String._bridgeToObjectiveC()();
  v18 = [v14 countForObject:v17];

  if (v18 == 1)
  {
    if (qword_100268730 != -1)
    {
      swift_once();
    }

    v71 = qword_100287890;
    v19 = sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v20 = *(type metadata accessor for LogInterpolation() - 8);
    v21 = *(v20 + 72);
    v22 = *(v20 + 80);
    v23 = (v22 + 32) & ~v22;
    v69 = v19;
    v70 = v21;
    v66 = v23 + 2 * v21;
    v67 = v22;
    v24 = swift_allocObject();
    v65 = xmmword_1001E5F70;
    *(v24 + 16) = xmmword_1001E5F70;
    v68 = v23;
    v64 = type metadata accessor for TransactionStore();
    v79 = v64;
    v77 = a1;

    v25 = AMSLogKey();
    if (v25)
    {
      v26 = v25;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_100002C00(&v77);
    LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v32._countAndFlagsBits = 0xD000000000000016;
    v32._object = 0x80000001002036A0;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v32);
    v79 = &type metadata for String;
    v77 = a2;
    v78 = a3;

    LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
    sub_100002C5C(&v77);
    v33._countAndFlagsBits = 0;
    v33._object = 0xE000000000000000;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v33);
    LogInterpolation.init(stringInterpolation:)();
    v34 = static os_log_type_t.info.getter();
    sub_1000036B0(v34);

    v35 = OSSignposter.logHandle.getter();
    v36 = static os_signpost_type_t.begin.getter();

    if (OS_os_log.signpostsEnabled.getter())
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v77 = v38;
      *v37 = 136315138;
      *(v37 + 4) = sub_1000127B4();
      v39 = v73;
      v40 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v35, v36, v40, "Transaction", "%s", v37, 0xCu);
      sub_100002C00(v38);
    }

    else
    {

      v39 = v73;
    }

    (*(v74 + 16))(v12, v39, v75);
    v41 = type metadata accessor for OSSignpostIntervalState();
    v42 = *(v41 + 48);
    v43 = *(v41 + 52);
    swift_allocObject();
    OSSignpostIntervalState.init(id:isOpen:)();
    v44 = OBJC_IVAR____TtC14amsengagementd16TransactionStore_transactionSignpostStateStore;
    swift_beginAccess();
    v45 = *(a1 + v44);

    v46 = sub_100012A40(a2, a3, v45);

    if (v46)
    {

      *(swift_allocObject() + 16) = v65;
      v79 = v64;
      v77 = a1;

      v47 = AMSLogKey();
      if (v47)
      {
        v48 = v47;
        static String._unconditionallyBridgeFromObjectiveC(_:)();
      }

      static LogInterpolation.prefix(_:_:)();

      sub_100002C00(&v77);
      LogInterpolation.init(stringLiteral:)();
      v57 = static os_log_type_t.fault.getter();
      sub_1000036B0(v57);
    }

    String.utf8CString.getter();
    v58 = os_transaction_create();

    v59 = OBJC_IVAR____TtC14amsengagementd16TransactionStore_transactionStore;
    swift_beginAccess();
    if (v58)
    {
      v60 = *(a1 + v59);
      swift_isUniquelyReferenced_nonNull_native();
      v76 = *(a1 + v59);
      sub_100012970();
      *(a1 + v59) = v76;
    }

    else
    {
      sub_1000ABE18(a2, a3);
      swift_unknownObjectRelease();
    }

    swift_endAccess();
    swift_beginAccess();

    v61 = *(a1 + v44);
    swift_isUniquelyReferenced_nonNull_native();
    v76 = *(a1 + v44);
    sub_1000112A8();
    *(a1 + v44) = v76;
    swift_endAccess();

    goto LABEL_24;
  }

  if (qword_100268730 != -1)
  {
    swift_once();
  }

  v71 = qword_100287890;
  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v27 = *(type metadata accessor for LogInterpolation() - 8);
  v28 = *(v27 + 72);
  v29 = (*(v27 + 80) + 32) & ~*(v27 + 80);
  *(swift_allocObject() + 16) = xmmword_1001E5F70;
  v79 = type metadata accessor for TransactionStore();
  v77 = a1;

  v30 = AMSLogKey();
  if (v30)
  {
    v31 = v30;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(&v77);
  LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v49._object = 0x8000000100203680;
  v49._countAndFlagsBits = 0xD000000000000014;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v49);
  v79 = &type metadata for String;
  v77 = a2;
  v78 = a3;

  LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
  sub_100002C5C(&v77);
  v50._countAndFlagsBits = 0;
  v50._object = 0xE000000000000000;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v50);
  LogInterpolation.init(stringInterpolation:)();
  v51 = static os_log_type_t.info.getter();
  sub_1000036B0(v51);

  v52 = OSSignposter.logHandle.getter();
  v53 = static os_signpost_type_t.event.getter();
  if ((OS_os_log.signpostsEnabled.getter() & 1) == 0)
  {

LABEL_24:
    v55 = v73;
    return (*(v74 + 8))(v55, v75);
  }

  v54 = swift_slowAlloc();
  *v54 = 0;
  v55 = v73;
  v56 = OSSignpostID.rawValue.getter();
  _os_signpost_emit_with_name_impl(&_mh_execute_header, v52, v53, v56, "Transaction", "Transaction joined", v54, 2u);

  return (*(v74 + 8))(v55, v75);
}

uint64_t sub_10001278C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_1000127B4()
{
  sub_1000F1290();
  v3 = v2;

  sub_1000060D0();
  v7 = sub_100012870(v4, v5, v6, 1, v3, v1);
  v8 = v12[0];
  if (v7)
  {
    v9 = v7;

    ObjectType = swift_getObjectType();
    v12[0] = v9;
  }

  else
  {
    ObjectType = &type metadata for _StringGuts;
    v12[0] = v3;
    v12[1] = v1;
  }

  v10 = *v0;
  if (*v0)
  {
    sub_100011BAC(v12, *v0);
    *v0 = v10 + 32;
  }

  sub_100002C00(v12);
  return v8;
}

unint64_t sub_100012870(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_10001171C(a5, a6);
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

uint64_t sub_100012970()
{
  sub_100008738();
  v2 = sub_100005068();
  sub_100006AF8(v2, v3);
  if (v4)
  {
    __break(1u);
LABEL_13:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  sub_10000A5E0();
  sub_10007B9A4(&qword_10026AED8, &qword_1001E8680);
  v5 = sub_1000082EC();
  v7 = _NativeDictionary.ensureUnique(isUnique:capacity:)(v5, v6);
  if (v7)
  {
    sub_1000119F0();
    sub_100007450();
    if (!v11)
    {
      goto LABEL_13;
    }
  }

  if (v1)
  {
    sub_10000AEC0(v7, v8, v9, v10, *v0);
    sub_100003B6C();

    return swift_unknownObjectRelease();
  }

  else
  {
    v14 = sub_100007988();
    sub_100011190(v14, v15, v16, v17, v18);
    sub_100003B6C();
  }
}

uint64_t sub_100012A48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v3 = sub_100012A94();
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  sub_10000A864(v3);
}

unint64_t sub_100012A94()
{
  sub_10003D2F8();
  sub_100009DBC();
  String.hash(into:)();
  Hasher._finalize()();
  v0 = sub_10000821C();

  return sub_100012E40(v0, v1, v2);
}

uint64_t sub_100012B18@<X0>(uint64_t a1@<X8>)
{
  *(v2 + 64) = v4;
  *(v2 + 72) = a1;
  *(v2 + 48) = v3;
  *(v2 + 56) = v1;
}

uint64_t sub_100012B3C()
{

  return static LogInterpolation.prefix(_:_:)();
}

uint64_t sub_100012BCC@<X0>(uint64_t a1@<X8>)
{

  return sub_100011C54(0xD000000000000013, (a1 - 32) | 0x8000000000000000);
}

uint64_t sub_100012BEC()
{

  return KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
}

uint64_t sub_100012C1C()
{

  return swift_arrayInitWithCopy();
}

uint64_t sub_100012C5C()
{
  v5 = *(*(v3 - 104) + 48);

  return sub_1000652F0(v0 + v1, v2);
}

__n128 sub_100012C7C(__n128 *a1)
{
  result = v1[10];
  a1[1] = result;
  v3 = v1[16].n128_u64[1];
  return result;
}

id sub_100012C9C()
{
  *(v0 - 104) = *(v0 - 304);
  v2 = *(v0 - 312);
  *(v0 - 128) = v2;

  return v2;
}

uint64_t sub_100012CDC(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = v2[6];
  v4 = v2[3];
  return v2[2];
}

_OWORD *sub_100012D04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, __int128 a19)
{
  v22 = (*(v19 + 56) + 32 * v20);

  return sub_100002C4C(v22, &a19);
}

void sub_100012D20()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
}

uint64_t sub_100012D2C()
{

  return type metadata accessor for LogInterpolation.StringInterpolation();
}

void sub_100012D64()
{

  sub_1000190C0();
}

uint64_t sub_100012DAC()
{

  return swift_dynamicCast();
}

uint64_t sub_100012DF4()
{
  v2 = *(v0 + 8);
  result = *(v1 - 120);
  v4 = *(v1 - 104);
  return result;
}

unint64_t sub_100012E40(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_100012F04()
{

  return swift_task_alloc();
}

__n128 sub_100012F34(__n128 *a1)
{
  result = *(v1 - 368);
  a1[1] = result;
  v3 = a1 + *(v1 - 256);
  return result;
}

uint64_t sub_100012F54(__n128 *a1, __n128 a2)
{
  a1[1] = a2;

  return AMSSetLogKeyIfNeeded();
}

uint64_t start()
{
  v0 = objc_opt_new();
  [v0 runUntilIdleExit];

  return 0;
}

id sub_10001301C()
{
  v1 = OBJC_IVAR____TtC14amsengagementd7RunLoop_userNotificationsService;
  *&v0[v1] = [objc_allocWithZone(type metadata accessor for UserNotificationsService()) init];
  *&v0[OBJC_IVAR____TtC14amsengagementd7RunLoop_cloudKitPushSubscription] = 0;
  v2 = OBJC_IVAR____TtC14amsengagementd7RunLoop_setupAssistantObserver;
  type metadata accessor for SetupAssistantObserver();
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *&v0[v2] = v3;
  *&v0[OBJC_IVAR____TtC14amsengagementd7RunLoop_terminationSignalSource] = 0;
  v5.receiver = v0;
  v5.super_class = type metadata accessor for RunLoop();
  return objc_msgSendSuper2(&v5, "init");
}

uint64_t sub_1000130BC(void *a1, _BYTE *a2)
{
  v4 = type metadata accessor for LogInterpolation.StringInterpolation();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v6 = CFRunLoopRunInMode(kCFRunLoopDefaultMode, 15.0, 0);
  if ((v6 - 3) >= 2)
  {
    if ((v6 - 1) > 1)
    {
      _StringGuts.grow(_:)(23);
      v27._countAndFlagsBits = 0xD000000000000015;
      v27._object = 0x8000000100201BA0;
      String.append(_:)(v27);
      type metadata accessor for CFRunLoopRunResult(0);
      _print_unlocked<A, B>(_:_:)();
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    else
    {
      sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
      v15 = *(type metadata accessor for LogInterpolation() - 8);
      v16 = *(v15 + 72);
      v17 = (*(v15 + 80) + 32) & ~*(v15 + 80);
      *(swift_allocObject() + 16) = xmmword_1001E5F70;
      v29 = type metadata accessor for RunLoop();
      v28 = a1;
      v18 = a1;
      v19 = AMSLogKey();
      if (v19)
      {
        v20 = v19;
        static String._unconditionallyBridgeFromObjectiveC(_:)();
      }

      static LogInterpolation.prefix(_:_:)();

      sub_100002C00(&v28);
      LogInterpolation.init(stringLiteral:)();
      if (qword_1002686B0 != -1)
      {
        swift_once();
      }

      v21 = static os_log_type_t.debug.getter();
      sub_1000036B0(v21);

      *a2 = 0;
    }
  }

  else
  {
    if (qword_100268830 != -1)
    {
      swift_once();
    }

    result = sub_1000135F8();
    if (result >= 1)
    {
      v8 = result;
      if (qword_100268730 != -1)
      {
        swift_once();
      }

      sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
      v9 = *(type metadata accessor for LogInterpolation() - 8);
      v10 = *(v9 + 72);
      v11 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      *(swift_allocObject() + 16) = xmmword_1001E5F70;
      v29 = type metadata accessor for RunLoop();
      v28 = a1;
      v12 = a1;
      v13 = AMSLogKey();
      if (v13)
      {
        v14 = v13;
        static String._unconditionallyBridgeFromObjectiveC(_:)();
      }

      static LogInterpolation.prefix(_:_:)();

      sub_100002C00(&v28);
      LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v22._countAndFlagsBits = 0x7261206572656854;
      v22._object = 0xEA00000000002065;
      LogInterpolation.StringInterpolation.appendLiteral(_:)(v22);
      v29 = &type metadata for Int;
      v28 = v8;
      LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
      sub_100002C5C(&v28);
      v23._object = 0x8000000100201BC0;
      v23._countAndFlagsBits = 0xD000000000000016;
      LogInterpolation.StringInterpolation.appendLiteral(_:)(v23);
      v24 = sub_1001AE334();
      v29 = sub_100002BC0(0, &unk_100271650, NSCountedSet_ptr);
      v28 = v24;
      LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
      sub_100002C5C(&v28);
      v25._countAndFlagsBits = 0;
      v25._object = 0xE000000000000000;
      LogInterpolation.StringInterpolation.appendLiteral(_:)(v25);
      LogInterpolation.init(stringInterpolation:)();
      v26 = static os_log_type_t.debug.getter();
      sub_1000036B0(v26);
    }
  }

  return result;
}

uint64_t sub_1000135F8()
{
  v1 = *(v0 + 16);
  OS_dispatch_queue.sync<A>(execute:)();
  return v3;
}

id sub_100013658@<X0>(void *a1@<X8>)
{
  result = [*(v1 + OBJC_IVAR____TtC14amsengagementd16TransactionStore_transactionSet) count];
  *a1 = result;
  return result;
}

void sub_10001369C()
{
  v2 = 1;
  do
  {
    v1 = objc_autoreleasePoolPush();
    sub_1000130BC(v0, &v2);
    objc_autoreleasePoolPop(v1);
  }

  while ((v2 & 1) != 0);
}

uint64_t sub_1000137AC()
{
  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v1 = *(type metadata accessor for LogInterpolation() - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  *(swift_allocObject() + 16) = xmmword_1001E5F70;
  v12[3] = type metadata accessor for RunLoop();
  v12[0] = v0;
  v4 = v0;
  v5 = AMSLogKey();
  if (v5)
  {
    v6 = v5;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(v12);
  LogInterpolation.init(stringLiteral:)();
  if (qword_1002686B0 != -1)
  {
    swift_once();
  }

  v7 = static os_log_type_t.default.getter();
  sub_1000036B0(v7);

  v8 = qword_100268830;
  v9 = v4;
  if (v8 != -1)
  {
    swift_once();
  }

  sub_100011C54(0x74536E6F6D656164, 0xED00007075747261);
  v10 = objc_autoreleasePoolPush();
  sub_10001FC9C();
  objc_autoreleasePoolPop(v10);
  sub_1001AE448(0x74536E6F6D656164, 0xED00007075747261);

  sub_10001369C();
  return sub_10018F8C4();
}

uint64_t sub_100013A10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  type metadata accessor for Log();
  sub_100004AA0();
  v5 = swift_allocObject();
  sub_100013AB8();
  result = OS_os_log.init(subsystem:category:)();
  *(v5 + 16) = result;
  *a4 = v5;
  return result;
}

unint64_t sub_100013AB8()
{
  result = qword_10026DD38;
  if (!qword_10026DD38)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10026DD38);
  }

  return result;
}

uint64_t sub_100013AFC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100013B44(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    sub_100003E78();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100013B88()
{
  v0 = type metadata accessor for TransactionStore();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  result = sub_100013CBC(5.0);
  qword_100287928 = v3;
  return result;
}

uint64_t sub_100013BCC()
{
  result = type metadata accessor for DispatchTimeInterval();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = type metadata accessor for OSSignposter();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_100013CBC(double a1)
{
  v2 = v1;
  v4 = type metadata accessor for OS_dispatch_queue.Attributes();
  v5 = sub_100002DDC(v4);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  sub_100002DEC();
  v8 = type metadata accessor for DispatchQoS();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  sub_100002DEC();
  v10 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  sub_10000356C();
  v12 = v11;
  v14 = *(v13 + 64);
  __chkstk_darwin(v15);
  sub_100002DEC();
  v18 = v17 - v16;
  sub_100002BC0(0, &qword_10026CFB0, OS_dispatch_queue_ptr);
  (*(v12 + 104))(v18, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v10);
  static DispatchQoS.unspecified.getter();
  sub_100013AFC(&qword_10026CCF0, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_10007B9A4(&unk_10026F8A0, &unk_1001EBCC0);
  sub_10001407C(&qword_10026CD00, &unk_10026F8A0, &unk_1001EBCC0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  *(v1 + 16) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  if (qword_100268730 != -1)
  {
    swift_once();
  }

  v19 = *(qword_100287890 + 16);
  OSSignposter.init(logHandle:)();
  v20 = OBJC_IVAR____TtC14amsengagementd16TransactionStore_transactionSet;
  *(v2 + v20) = [objc_allocWithZone(NSCountedSet) init];
  v21 = OBJC_IVAR____TtC14amsengagementd16TransactionStore_transactionSignpostStateStore;
  type metadata accessor for OSSignpostIntervalState();
  *(v2 + v21) = Dictionary.init(dictionaryLiteral:)();
  v22 = OBJC_IVAR____TtC14amsengagementd16TransactionStore_transactionStore;
  sub_10007B9A4(&qword_10026AEE0, &qword_1001E8688);
  result = Dictionary.init(dictionaryLiteral:)();
  *(v2 + v22) = result;
  if ((*&a1 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (a1 <= -9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (a1 < 9.22337204e18)
  {
    v24 = OBJC_IVAR____TtC14amsengagementd16TransactionStore_holdTime;
    *(v2 + OBJC_IVAR____TtC14amsengagementd16TransactionStore_holdTime) = a1;
    v25 = enum case for DispatchTimeInterval.seconds(_:);
    v26 = type metadata accessor for DispatchTimeInterval();
    sub_100002DDC(v26);
    (*(v27 + 104))(v2 + v24, v25);
    return v2;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_10001407C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_10007BC70(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000140D0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    v4 = sub_10000C504(0, a2);
    sub_10007BC70(v4, v5);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10001413C()
{
  sub_1001BF340();
  sub_100003D28();
  sub_100048FC0();
  v0 = swift_task_alloc();
  v1 = sub_100009F04(v0);
  *v1 = v2;
  sub_1000035D8(v1);
  sub_1001BF32C();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1000141CC(int a1, int a2, void *aBlock, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = _Block_copy(aBlock);
  v4[4] = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v5 = swift_task_alloc();
  v4[5] = v5;
  *v5 = v4;
  v5[1] = sub_10001BE14;

  return sub_1000142B0();
}

uint64_t sub_1000142B0()
{
  sub_100004768();
  v3 = sub_1000167E4(v1, v2);
  sub_100003D10(v3);
  v5 = *(v4 + 64);
  *(v0 + 224) = sub_100023C0C();
  v6 = sub_1000047B0();

  return _swift_task_switch(v6, v7, v8);
}

void (*sub_100014380(uint64_t a1))(void)
{
  sub_10000A1D8(a1);
  v3 = v1;
  v2();
  sub_100017FBC();

  return v2;
}

uint64_t sub_1000143D8()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for DispatchQoS.QoSClass();
  v4 = sub_100002CC4(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  __chkstk_darwin(v4);
  sub_100002DEC();
  v11 = v10 - v9;
  if (qword_100268848 != -1)
  {
    swift_once();
  }

  v12 = qword_100287940;
  v13 = AMSSetLogKeyIfNeeded();
  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  sub_10007B9A4(&qword_100271F68, &unk_1001F1B50);
  v17 = [*(v1 + 168) stringForKey:v12];
  v18 = [v17 valuePromise];

  Promise<A>.init(_:)();
  sub_1000083D8();
  v19 = swift_allocObject();
  v19[2] = v1;
  v19[3] = v14;
  v19[4] = v16;
  v19[5] = ObjectType;
  v28[3] = type metadata accessor for SyncTaskScheduler();
  v28[4] = &protocol witness table for SyncTaskScheduler;
  sub_100017E64(v28);

  SyncTaskScheduler.init()();
  v20 = Promise.map<A>(on:_:)();

  sub_100002C00(v28);
  sub_1000083D8();
  v21 = swift_allocObject();
  v21[2] = v1;
  v21[3] = v14;
  v21[4] = v16;
  v21[5] = ObjectType;
  sub_100002BC0(0, &qword_10026CFB0, OS_dispatch_queue_ptr);
  (*(v6 + 104))(v11, enum case for DispatchQoS.QoSClass.default(_:), v3);

  v22 = static OS_dispatch_queue.global(qos:)();
  v23 = *(v6 + 8);
  v24 = sub_10000A298();
  v25(v24);
  v26 = sub_1000185A8(sub_1000186DC, v21, v22, v20);

  return v26;
}

uint64_t sub_100014768()
{
  v1._rawValue = *(v0 + 40);
  v2 = *(v0 + 56);
  return sub_100017A68(*(v0 + 16), *(v0 + 24), *(v0 + 32), v1, *(v0 + 48));
}

uint64_t sub_10001478C()
{
  v1 = sub_10000B248();
  v2 = *(v0 + 56);
  return sub_100017A68(v1, v3, v4, v6, *(v0 + 48));
}

uint64_t sub_1000147AC(uint64_t a1, sqlite3 *a2, uint64_t a3, uint64_t a4, sqlite3_stmt **a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = swift_allocObject();
  v14[2] = a6;
  v14[3] = a7;
  v14[4] = a8;
  sub_100017A08();
  v15 = qword_100268818;

  if (v15 != -1)
  {
    swift_once();
  }

  v16 = static OS_dispatch_queue.getSpecific<A>(key:)();
  if (v22 == 2 || (v22 & 1) == 0)
  {
    v19 = *(a1 + 72);
    __chkstk_darwin(v16);
    OS_dispatch_queue.sync<A>(execute:)();
  }

  else
  {
    v21 = objc_autoreleasePoolPush();
    v17 = String.utf8CString.getter();

    v18 = sqlite3_prepare_v2(a2, (v17 + 32), -1, a5, 0);

    sub_10001515C(v18, 0xD000000000000011, 0x8000000100202E80, a7, a8);

    objc_autoreleasePoolPop(v21);
  }
}

uint64_t sub_100014A10(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

void sub_100014A20(void (*a1)(void), uint64_t a2)
{
  sub_100017A08();
  if (qword_100268818 != -1)
  {
    sub_100007058();
    swift_once();
  }

  static OS_dispatch_queue.getSpecific<A>(key:)();
  sub_100012DE8();
  if (v7 || (v6 & 1) == 0)
  {
    v9 = *(v2 + 72);
    __chkstk_darwin(v5);
    sub_10000BE84();
    *(v10 - 16) = a1;
    *(v10 - 8) = a2;
    sub_100023F4C();
    OS_dispatch_queue.sync<A>(execute:)();
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    a1();
    objc_autoreleasePoolPop(v8);
  }

  sub_1000068D4();
}

uint64_t SQLDatabase.prepare(sql:)(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v5 = *(v2 + 64);
  if (v5)
  {
    v10 = 0;

    sub_100014F80(v4, &v10, v4, v5, a1, a2);
    result = v10;
    if (v3)
    {
    }

    else if (!v10)
    {
      __break(1u);
    }
  }

  else
  {
    sub_10001ED34();
    sub_100007544();
    *v9 = 0;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_100014BF8(uint64_t *a1, uint64_t a2, sqlite3 *a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for SQLStatement();
  v11 = swift_allocObject();
  v12 = swift_allocObject();
  v12[2] = a2;
  v12[3] = a4;
  v12[4] = a5;
  v11[3] = v12;
  v11[4] = 0;
  v11[7] = 0;
  v11[8] = a2;
  v11[2] = sub_10001A61C;
  v11[5] = a4;
  v11[6] = a5;
  v18 = 0;
  swift_bridgeObjectRetain_n();
  swift_retain_n();

  sub_1000147AC(a2, a3, a4, a5, &v18, a2, a4, a5);
  if (v5)
  {
  }

  v14 = v18;
  if (!v18)
  {
    sub_10001ED34();
    swift_allocError();
    *v17 = 2;
    swift_willThrow();
  }

  v11[7] = v14;
  v15 = *a1;
  *a1 = v11;

  sub_10007B9A4(&qword_10026BFA8, &qword_1001EA300);
  result = swift_initStackObject();
  *(result + 16) = xmmword_1001E61B0;
  if (*a1)
  {
    v16 = result;
    swift_weakInit();
    swift_weakAssign();
    swift_beginAccess();
    sub_100015380(v16);
    return swift_endAccess();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100014E40()
{
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  *(v2 + 24) = 1;
  v7 = v0;
  v8 = 0xD000000000000014;
  v9 = 0x8000000100202D10;
  v10 = &_swiftEmptyArrayStorage;
  v11 = sub_10001CAF0;
  v12 = v2;
  sub_100014A20(sub_100014E28, &v6);
  if (v1)
  {
  }

  swift_beginAccess();
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);

  if (v5)
  {
    return 0;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_100014F80(uint64_t a1, uint64_t *a2, uint64_t a3, sqlite3 *a4, uint64_t a5, uint64_t a6)
{
  sub_100017A08();
  if (qword_100268818 != -1)
  {
    swift_once();
  }

  v13 = static OS_dispatch_queue.getSpecific<A>(key:)();
  if (v17 == 2 || (v17 & 1) == 0)
  {
    v16 = *(a1 + 72);
    __chkstk_darwin(v13);
    OS_dispatch_queue.sync<A>(execute:)();
    if (v6)
    {
    }
  }

  else
  {
    v14 = objc_autoreleasePoolPush();
    sub_100014BF8(a2, a3, a4, a5, a6);
    if (v6)
    {
      objc_autoreleasePoolPop(v14);
    }

    objc_autoreleasePoolPop(v14);
  }
}

void sub_10001515C(int a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v12 = sub_100016CE0(a1);
  v13 = v12;
  if (v12 > 0x1Bu || ((1 << v12) & 0x8000081) == 0)
  {
    v15 = v12;
    _StringGuts.grow(_:)(23);

    v16._countAndFlagsBits = a2;
    v16._object = a3;
    String.append(_:)(v16);
    v17 = sub_100016CE0(a1);
    sub_1000A0624();
    v18 = sub_100007544();
    *v19 = v17;
    sub_1001A504C(0xD000000000000015, 0x8000000100202E00, a4, a5, v18);

    if (v13 != 20)
    {
      if (v13 == 14)
      {
LABEL_13:
        sub_1001A59B4();
        if (v6)
        {
          return;
        }

LABEL_11:
        sub_100007544();
        *v20 = v15;
        swift_willThrow();
        return;
      }

      if (v13 != 6)
      {
        goto LABEL_11;
      }
    }

    if (*(v5 + 56))
    {
      sub_1001A5914();
      if (v6)
      {
        return;
      }

      goto LABEL_11;
    }

    *(v5 + 56) = 1;
    goto LABEL_13;
  }
}

uint64_t sub_100015308(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = *v3;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v6;
  if (!result || a1 > *(v6 + 24) >> 1)
  {
    if (*(v6 + 16) > a1)
    {
      v8 = *(v6 + 16);
    }

    result = a3();
    *v3 = result;
  }

  return result;
}

void sub_100015380(uint64_t a1)
{
  v4 = sub_10000B958(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_100015308(v4, 1, sub_10001AAC4);
  sub_10000AF78();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  sub_100005944();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  sub_10007B9A4(&qword_10026BFB0, &qword_1001EA308);
  sub_10000C3FC();

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  sub_10000ABF8();
  if (!v5)
  {
    *(v3 + 16) = v8;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

uint64_t sub_100015718()
{
  sub_1001BF340();
  sub_100003D28();
  sub_100048FC0();
  v0 = swift_task_alloc();
  v1 = sub_100009F04(v0);
  *v1 = v2;
  sub_1000035D8(v1);
  sub_1001BF32C();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1000157A8(int a1, int a2, void *aBlock, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = _Block_copy(aBlock);
  v4[4] = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v5 = swift_task_alloc();
  v4[5] = v5;
  *v5 = v4;
  v5[1] = sub_10001C718;

  return sub_10001588C();
}

uint64_t sub_10001588C()
{
  sub_100004768();
  v3 = sub_1000167E4(v1, v2);
  sub_100003D10(v3);
  v5 = *(v4 + 64);
  *(v0 + 224) = sub_100023C0C();
  v6 = sub_1000047B0();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_10001595C()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000159DC()
{

  return LogInterpolation.init(stringLiteral:)();
}

id sub_100015A0C(void *a1)
{
  a1[2] = 0;
  a1[3] = 0;
  a1[4] = v2;
  a1[5] = v1;
  v6 = *(v4 - 136);
  a1[6] = v3;
  a1[7] = v6;
  a1[8] = *(v4 - 120);

  return v3;
}

uint64_t sub_100015A38(uint64_t a1)
{
  *(v1 + 256) = a1;

  return type metadata accessor for LogInterpolation();
}

uint64_t sub_100015A6C(__n128 *a1, __n128 a2)
{
  a1[1] = a2;

  return type metadata accessor for ContentManager();
}

uint64_t sub_100015A84()
{

  return static LogInterpolation.prefix(_:_:)();
}

void sub_100015AC0()
{
}

uint64_t sub_100015B10()
{

  return LogInterpolation.init(stringInterpolation:)();
}

uint64_t sub_100015B3C()
{

  return String.hash(into:)();
}

uint64_t sub_100015B78()
{

  return swift_allocObject();
}

uint64_t sub_100015BBC(uint64_t a1, _BYTE *a2)
{
  *a2 = 1;

  return swift_willThrow();
}

uint64_t sub_100015C04()
{
}

uint64_t sub_100015C20()
{

  return static LogInterpolation.prefix(_:_:)();
}

uint64_t sub_100015C40()
{

  return static LogInterpolation.prefix(_:_:)();
}

uint64_t sub_100015C70(uint64_t a1)
{
  *(v2 + 112) = a1;
  *(v2 + 88) = v1;
}

uint64_t sub_100015C9C()
{

  return swift_allocObject();
}

uint64_t sub_100015CBC()
{
  v2 = *(v0 - 192);

  return Promise.then(perform:orCatchError:on:)();
}

uint64_t sub_100015CF8()
{
  v0 = [objc_opt_self() defaultManager];
  URL.path.getter();
  v1 = String._bridgeToObjectiveC()();

  v2 = [v0 fileExistsAtPath:v1];

  return v2 ^ 1;
}

uint64_t sub_100015D88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v11 = *(a1 + 200);
  v12 = swift_allocObject();
  *(v12 + 16) = a2;

  v13 = a6(a4, v12, a5, a1);

  return v13;
}

uint64_t sub_100015E2C()
{
  sub_100003EFC();
  v1 = type metadata accessor for CocoaError.Code();
  v2 = sub_100003D10(v1);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  sub_100002DEC();
  v5 = type metadata accessor for CocoaError();
  v6 = sub_100002CC4(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6);
  sub_100002DEC();
  if (v0)
  {
    if (v0 == 1)
    {

      return sub_1000182E8();
    }

    else if (v0 == 2)
    {

      return sub_1001BA7F4();
    }

    else
    {
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

  else if (sub_100015CF8())
  {
    sub_1001BA7F4();

    sub_10007B9A4(&qword_100271F20, &qword_1001EBE90);
    static CocoaError.Code.fileReadNoSuchFile.getter();
    sub_1001BE930(_swiftEmptyArrayStorage);
    sub_100005E08(&unk_100271F30, &type metadata accessor for CocoaError);
    _BridgedStoredNSError.init(_:userInfo:)();
    CocoaError._nsError.getter();
    v12 = *(v8 + 8);
    v13 = sub_10000A298();
    v14(v13);
    return Promise.__allocating_init(error:)();
  }

  else
  {
    sub_10007B9A4(&qword_100271F20, &qword_1001EBE90);
    return Promise.__allocating_init(value:)();
  }

  return result;
}

uint64_t sub_100016088(uint64_t a1, uint64_t a2)
{
  v29 = a2;
  v24 = a1;
  v3 = type metadata accessor for DispatchQoS.QoSClass();
  v27 = *(v3 - 8);
  v28 = v3;
  v4 = *(v27 + 64);
  __chkstk_darwin(v3);
  v26 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10007B9A4(&qword_10026C8E0, &qword_1001EBDA8);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v10 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v23 - v11;
  v13 = *(v7 + 16);
  v13(&v23 - v11, a1, v6);
  v14 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v25 = swift_allocObject();
  v15 = *(v7 + 32);
  v15(v25 + v14, v12, v6);
  v13(v10, v24, v6);
  v16 = swift_allocObject();
  v15(v16 + v14, v10, v6);
  v17 = sub_100002BC0(0, &qword_10026CFB0, OS_dispatch_queue_ptr);
  v19 = v26;
  v18 = v27;
  v20 = v28;
  (*(v27 + 104))(v26, enum case for DispatchQoS.QoSClass.default(_:), v28);
  v21 = static OS_dispatch_queue.global(qos:)();
  (*(v18 + 8))(v19, v20);
  v30[3] = v17;
  v30[4] = &protocol witness table for OS_dispatch_queue;
  v30[0] = v21;
  Promise.then(perform:orCatchError:on:)();

  return sub_100002C00(v30);
}

uint64_t sub_100016390(uint64_t a1)
{
  *(v1 + 128) = a1;

  return swift_task_alloc();
}

uint64_t sub_1000163A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v12 = *(*(a10 + 48) + 16 * v10 + 8);
}

uint64_t sub_1000163C8()
{
}

uint64_t sub_100016400()
{

  return swift_getErrorValue();
}

__n128 sub_100016420(__n128 *a1)
{
  result = *(v1 - 288);
  a1[1] = result;
  return result;
}

uint64_t sub_100016450()
{
  v2 = v0[37];
  v3 = v0[38];
  v4 = v0[36];
  v5 = v0[26];
}

uint64_t sub_10001646C()
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_100016744()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_100016774(uint64_t a1)
{
  *(v2 - 120) = a1;
  *(v2 - 144) = v1;
}

uint64_t sub_1000167E4(uint64_t a1, uint64_t a2)
{
  v3[26] = a2;
  v3[27] = v2;
  v3[25] = a1;

  return type metadata accessor for LogInterpolation.StringInterpolation();
}

uint64_t sub_10001680C()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 56);

  v3 = sub_100016440();

  return _swift_deallocObject(v3, v4, v5);
}

uint64_t sub_10001684C()
{
  _Block_release(*(v0 + 32));
  v1 = *(v0 + 40);

  v2 = sub_10000B284();

  return _swift_deallocObject(v2, v3, v4);
}

uint64_t sub_1000168A0()
{
  sub_100004768();
  v1 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v2 = swift_task_alloc();
  sub_100061DE4(v2);
  sub_10007B9A4(&qword_10026C8D8, &qword_1001EBDA0);
  sub_10001CD6C();
  *v0 = v3;
  sub_100017EE4();
  sub_10000522C();
  v4 = sub_100004C68();

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v4);
}

void sub_10001697C()
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = sub_100002CC4(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  __chkstk_darwin(v2);
  sub_100002DEC();
  v9 = v8 - v7;
  v10 = *(v0 + 72);
  *(v8 - v7) = v10;
  (*(v4 + 104))(v8 - v7, enum case for DispatchPredicate.onQueue(_:), v1);
  v11 = v10;
  LOBYTE(v10) = _dispatchPreconditionTest(_:)();
  (*(v4 + 8))(v9, v1);
  if ((v10 & 1) == 0)
  {
    __break(1u);
  }

  ppDb = 0;
  if (*(v0 + 32))
  {
    v12 = 2;
  }

  else
  {
    v13 = [objc_opt_self() defaultManager];
    v14 = *(v0 + 16);
    v15 = *(v0 + 24);
    v16 = String._bridgeToObjectiveC()();
    v17 = [v16 stringByDeletingLastPathComponent];

    if (!v17)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v17 = String._bridgeToObjectiveC()();
    }

    v39 = 0;
    v18 = [v13 createDirectoryAtPath:v17 withIntermediateDirectories:1 attributes:0 error:&v39];

    if (v18)
    {
      v19 = v39;
    }

    else
    {
      v20 = v39;
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }

    v12 = 6;
  }

  v21 = *(v0 + 80);
  if (v21)
  {
    v22 = v21;
    v23 = sub_10001FAA0();

    v12 |= v23;
  }

  v24 = *(v0 + 16);
  v25 = *(v0 + 24);
  v26 = String._bridgeToObjectiveC()();
  v27 = [v26 fileSystemRepresentation];
  v28 = v26;
  v29 = sqlite3_open_v2(v27, &ppDb, v12, 0);
  v30 = sub_100016CE0(v29);
  if (v30)
  {
    goto LABEL_18;
  }

  v39 = 1;
  v31 = sqlite3_file_control(ppDb, 0, 10, &v39);
  v30 = sub_100016CE0(v31);
  if (v30)
  {
    goto LABEL_18;
  }

  v32 = sub_10000B0F4(ppDb, "PRAGMA journal_mode=WAL");
  v30 = sub_100016CE0(v32);
  if (v30 || (v33 = sub_10000B0F4(ppDb, "pragma cache_spill = 0"), (v30 = sub_100016CE0(v33)) != 0) || (v34 = sub_10000B0F4(ppDb, "PRAGMA auto_vacuum = 2"), (v30 = sub_100016CE0(v34)) != 0) || (busy = sqlite3_busy_timeout(ppDb, 900000), (v30 = sub_100016CE0(busy)) != 0))
  {
LABEL_18:
    v36 = v30;
    sub_1000A0624();
    sub_100007544();
    *v37 = v36;
  }

  else
  {
    if (ppDb)
    {
      goto LABEL_20;
    }

    sub_10001ED34();
    sub_100007544();
    *v38 = 0;
  }

  swift_willThrow();
LABEL_20:
  sub_1000068D4();
}

uint64_t sub_100016CE0(int a1)
{
  v2 = type metadata accessor for LogInterpolation.StringInterpolation();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  result = 0;
  switch(a1)
  {
    case 0:
      return result;
    case 1:
      goto LABEL_38;
    case 2:
      result = 12;
      break;
    case 3:
      result = 23;
      break;
    case 4:
      result = 1;
      break;
    case 5:
      result = 3;
      break;
    case 6:
      result = 15;
      break;
    case 7:
      result = 19;
      break;
    case 8:
      result = 26;
      break;
    case 9:
      result = 13;
      break;
    case 10:
      result = 14;
      break;
    case 11:
      result = 6;
      break;
    case 12:
      result = 21;
      break;
    case 13:
      result = 11;
      break;
    case 14:
      result = 4;
      break;
    case 15:
      result = 24;
      break;
    case 16:
      result = 8;
      break;
    case 17:
      result = 28;
      break;
    case 18:
      result = 29;
      break;
    case 19:
      result = 5;
      break;
    case 20:
      result = 16;
      break;
    case 21:
      result = 17;
      break;
    case 22:
      result = 18;
      break;
    case 23:
      result = 2;
      break;
    case 24:
      result = 10;
      break;
    case 25:
      result = 25;
      break;
    case 26:
      result = 20;
      break;
    case 27:
      result = 22;
      break;
    case 28:
      result = 30;
      break;
    default:
      if (a1 == 100)
      {
        result = 27;
      }

      else if (a1 == 101)
      {
        result = 7;
      }

      else
      {
        sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
        v5 = *(type metadata accessor for LogInterpolation() - 8);
        v6 = *(v5 + 72);
        v7 = (*(v5 + 80) + 32) & ~*(v5 + 80);
        *(swift_allocObject() + 16) = xmmword_1001E5F70;
        v14 = &type metadata for SQLite3Status;
        LOBYTE(v13[0]) = 9;
        v8 = AMSLogKey();
        if (v8)
        {
          v9 = v8;
          static String._unconditionallyBridgeFromObjectiveC(_:)();
        }

        static LogInterpolation.prefix(_:_:)();

        sub_100002C00(v13);
        LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
        v10._object = 0x8000000100202F90;
        v10._countAndFlagsBits = 0xD000000000000031;
        LogInterpolation.StringInterpolation.appendLiteral(_:)(v10);
        v14 = &type metadata for Int32;
        LODWORD(v13[0]) = a1;
        LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
        sub_100002C5C(v13);
        v11._countAndFlagsBits = 0;
        v11._object = 0xE000000000000000;
        LogInterpolation.StringInterpolation.appendLiteral(_:)(v11);
        LogInterpolation.init(stringInterpolation:)();
        if (qword_1002686B0 != -1)
        {
          swift_once();
        }

        v12 = static os_log_type_t.fault.getter();
        sub_1000036B0(v12);

LABEL_38:
        result = 9;
      }

      break;
  }

  return result;
}

uint64_t sub_1000170AC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

void sub_1000170D4()
{
  sub_100007E34();
  v2 = v1;
  v3 = v0;
  v4 = type metadata accessor for LogInterpolation.StringInterpolation();
  v5 = sub_100003D10(v4);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  sub_100002DEC();
  v27 = *(v0 + 88);
  if (v27)
  {
    v26 = *(v0 + 96);

    v25 = v0;
    while (1)
    {
      v8 = sub_100014E40();
      if (v2)
      {
        break;
      }

      v9 = v8;
      v2 = 0;
      v10 = v27(v3, v8);
      if (v9 == v10)
      {
        break;
      }

      if (qword_1002686B8 != -1)
      {
        sub_100004FFC();
        swift_once();
      }

      sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
      sub_10000A658();
      v11 = type metadata accessor for LogInterpolation();
      sub_100002CFC(v11);
      v29 = ((*(v13 + 80) + 32) & ~*(v13 + 80)) + 2 * *(v12 + 72);
      *(swift_allocObject() + 16) = xmmword_1001E5F70;
      v28 = type metadata accessor for SQLDatabase();
      v31 = v28;
      v30[0] = v3;

      v14 = AMSLogKey();
      if (v14)
      {
        v15 = v14;
        static String._unconditionallyBridgeFromObjectiveC(_:)();
      }

      static LogInterpolation.prefix(_:_:)();

      sub_100002C00(v30);
      LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v16._countAndFlagsBits = 0xD000000000000023;
      v16._object = 0x8000000100202C80;
      LogInterpolation.StringInterpolation.appendLiteral(_:)(v16);
      v31 = &type metadata for Int;
      v30[0] = v9;
      LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
      sub_10000A00C(v30, &qword_10026D350, &qword_1001E6050);
      v17._countAndFlagsBits = 0x5677656E206F7420;
      v17._object = 0xEF206E6F69737265;
      LogInterpolation.StringInterpolation.appendLiteral(_:)(v17);
      v31 = &type metadata for Int;
      v30[0] = v10;
      LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
      v18 = sub_10000A00C(v30, &qword_10026D350, &qword_1001E6050);
      sub_100003B48(v18);
      LogInterpolation.init(stringInterpolation:)();
      v19 = static os_log_type_t.debug.getter();
      sub_1000036B0(v19);

      v3 = v25;
      sub_1001A6234();
      *(swift_allocObject() + 16) = xmmword_1001E5F70;
      v31 = v28;
      v30[0] = v25;

      v20 = AMSLogKey();
      if (v20)
      {
        v21 = v20;
        static String._unconditionallyBridgeFromObjectiveC(_:)();
      }

      static LogInterpolation.prefix(_:_:)();

      sub_100002C00(v30);
      LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v22._object = 0x8000000100202CB0;
      v22._countAndFlagsBits = 0xD00000000000001BLL;
      LogInterpolation.StringInterpolation.appendLiteral(_:)(v22);
      v31 = &type metadata for Int;
      v30[0] = v10;
      LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
      v23 = sub_10000A00C(v30, &qword_10026D350, &qword_1001E6050);
      sub_100003B48(v23);
      LogInterpolation.init(stringInterpolation:)();
      v24 = static os_log_type_t.default.getter();
      sub_1000036B0(v24);
    }

    sub_100014A10(v27);
  }

  sub_1000072EC();
  sub_100005B78();
}

void sub_100017510(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for LogInterpolation.StringInterpolation();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  if (!*(a1 + 64))
  {
    if (qword_1002686B8 != -1)
    {
      swift_once();
    }

    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v6 = *(type metadata accessor for LogInterpolation() - 8);
    v7 = *(v6 + 72);
    v8 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    *(swift_allocObject() + 16) = xmmword_1001E5F70;
    v24 = type metadata accessor for SQLDatabase();
    v22 = a1;

    v9 = AMSLogKey();
    if (v9)
    {
      v10 = v9;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_100002C00(&v22);
    LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v11._object = 0x8000000100202BC0;
    v11._countAndFlagsBits = 0xD000000000000010;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v11);
    v12 = *(a1 + 32) == 0;
    v13 = 0x6E6F646165722820;
    if (!*(a1 + 32))
    {
      v13 = 0;
    }

    v14 = 0xE000000000000000;
    v24 = &type metadata for String;
    if (!v12)
    {
      v14 = 0xEB0000000029796CLL;
    }

    v22 = v13;
    v23 = v14;
    LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
    sub_10000A00C(&v22, &qword_10026D350, &qword_1001E6050);
    v15._countAndFlagsBits = 8250;
    v15._object = 0xE200000000000000;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v15);
    v17 = *(a1 + 16);
    v16 = *(a1 + 24);
    v24 = &type metadata for String;
    v22 = v17;
    v23 = v16;

    LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
    sub_10000A00C(&v22, &qword_10026D350, &qword_1001E6050);
    v18._countAndFlagsBits = 0;
    v18._object = 0xE000000000000000;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v18);
    LogInterpolation.init(stringInterpolation:)();
    v19 = static os_log_type_t.debug.getter();
    sub_1000036B0(v19);

    for (i = 0; ; i = 1)
    {
      sub_10001697C();
      if (!v2)
      {
        break;
      }

      v22 = v2;
      swift_errorRetain();
      sub_10007B9A4(&unk_100270B70, &unk_1001E8F60);
      if (swift_dynamicCast() & 1) == 0 || v25 > 0x14u || ((1 << v25) & 0x104040) == 0 || (i)
      {
        swift_willThrow();
        return;
      }

      sub_1001A5C84();
      v2 = 0;
    }

    *(a1 + 56) = 0;
    *(a1 + 64) = v21;
  }
}

uint64_t sub_1000178A0(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4)
{
  sub_100017A08();
  if (qword_100268818 != -1)
  {
    sub_100007058();
    swift_once();
  }

  static OS_dispatch_queue.getSpecific<A>(key:)();
  sub_100012DE8();
  if (v10 || (v9 & 1) == 0)
  {
    v13 = *(a1 + 72);
    __chkstk_darwin(v8);
    sub_10000BE84();
    *(v14 - 16) = a4;
    *(v14 - 8) = a2;
    OS_dispatch_queue.sync<A>(execute:)();
    return sub_10000B41C();
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    a3(a2);
    objc_autoreleasePoolPop(v11);
  }
}

unint64_t sub_100017A08()
{
  result = qword_10026CFB0;
  if (!qword_10026CFB0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10026CFB0);
  }

  return result;
}

uint64_t sub_100017A68(uint64_t a1, uint64_t a2, uint64_t a3, Swift::OpaquePointer a4, uint64_t (*a5)(void *))
{
  result = SQLDatabase.prepare(sql:)(a2, a3);
  if (!v5)
  {
    SQLStatement.bind(parameters:)(a4);
    if (!v10)
    {
      do
      {
        v14 = SQLStatement.step()(v9);
        v11 = v14;
        if (!v14)
        {
          break;
        }

        if (!a5)
        {
        }

        v12 = objc_autoreleasePoolPush();
        v13 = a5(v11);
        objc_autoreleasePoolPop(v12);

        v9 = sub_100014A10(a5);
      }

      while ((v13 & 1) != 0);
    }
  }

  return result;
}

uint64_t sub_100017B90(uint64_t a1, int a2, void *a3, uint64_t a4, void *aBlock, uint64_t a6, uint64_t a7)
{
  v11 = _Block_copy(aBlock);
  sub_10000B284();
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = a4;
  v12[4] = v11;
  v12[5] = a1;
  v13 = a3;

  return sub_100009624(a7, v12);
}

uint64_t sub_100017C14()
{
  if (v0[3])
  {
    v1 = v0[3];
  }

  else
  {
    v1 = sub_1001B6A58(v0, *v0);
    v2 = v0[3];
    v0[3] = v1;
  }

  return v1;
}

uint64_t sub_100017CCC()
{

  return String.hash(into:)();
}

uint64_t sub_100017D08()
{
  v2 = *v0;

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t sub_100017D74()
{
  *(v0 + 120) = v1;
  *(v0 + 88) = sub_1000E515C;

  return swift_continuation_init();
}

uint64_t sub_100017DAC()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t sub_100017DC4@<X0>(uint64_t a1@<X8>)
{
  v3 = (a1 + 16) & ~a1;
  v4 = *(v2 + ((v1 + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  return v2 + v3;
}

uint64_t sub_100017E04()
{

  return AnyHashable.init<A>(_:)();
}

uint64_t sub_100017E34()
{
  v2 = *(v0 + 216);

  return swift_allocObject();
}

uint64_t sub_100017E54(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t *sub_100017E64(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

uint64_t sub_100017EC4()
{
  v2 = *(v0 - 344);

  return swift_allocObject();
}

uint64_t sub_100017F38()
{

  return swift_once();
}

uint64_t sub_100017F64(uint64_t result)
{
  v2[20] = sub_1000E42D8;
  v2[21] = v1;
  v2[22] = result;
  return result;
}

void sub_100017F90()
{
}

uint64_t sub_100017FF0()
{

  return __CocoaDictionary.count.getter();
}

void sub_100018010(os_log_type_t a1)
{

  sub_1000036B0(a1);
}

id sub_100018028(uint64_t a1, const char *a2)
{

  return [v3 a2];
}

id sub_1000180B8(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

uint64_t sub_1000180D0(void *a1)
{
  a1[2] = 0;
  a1[3] = 0;
  a1[4] = v2;
  a1[5] = v1;
}

uint64_t sub_1000180F0()
{

  return LogInterpolation.init(stringLiteral:)();
}

uint64_t sub_100018114()
{
  v3 = *(v1 + 8);
  result = v0;
  v5 = *(v2 - 152);
  return result;
}

uint64_t sub_100018138()
{

  return static LogInterpolation.prefix(_:_:)();
}

uint64_t sub_100018174()
{

  return dispatch thunk of Encoder.container<A>(keyedBy:)();
}

uint64_t sub_1000181A4()
{

  return swift_continuation_init();
}

void sub_1000181BC(uint64_t a1@<X8>)
{
  if (a1 <= *(v1 + 16))
  {
    v2 = *(v1 + 16);
  }
}

uint64_t sub_1000181EC@<X0>(uint64_t a1@<X8>)
{
  v2 = *(a1 + 1);

  return type metadata accessor for ContentManager();
}

_OWORD *sub_100018218()
{

  return sub_10000DFC4();
}

uint64_t sub_10001823C()
{

  return LogInterpolation.init(stringLiteral:)();
}

BOOL sub_100018270(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}