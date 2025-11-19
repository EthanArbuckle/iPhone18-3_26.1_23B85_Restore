int main(int argc, const char **argv, const char **envp)
{
  v3 = objc_autoreleasePoolPush();
  sub_100002504(&qword_10000C648, &qword_1000037D0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100003760;
  *(v4 + 56) = &type metadata for String;
  *(v4 + 32) = 0x7075206D2769;
  *(v4 + 40) = 0xE600000000000000;
  print(_:separator:terminator:)();

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.utf8CString.getter();

  _set_user_dir_suffix();

  v5 = [objc_allocWithZone(type metadata accessor for Server()) init];
  sub_100001694();
  v6 = [objc_opt_self() mainRunLoop];
  [v6 run];

  objc_autoreleasePoolPop(v3);
  return 0;
}

id sub_100001694()
{
  result = *(v0 + OBJC_IVAR____TtC13SystemActions6Server_listener);
  if (result)
  {
    return [result activate];
  }

  __break(1u);
  return result;
}

char *sub_1000016B4()
{
  ObjectType = swift_getObjectType();
  v18 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v1 = sub_100003070(v18);
  v3 = v2;
  v5 = *(v4 + 64);
  __chkstk_darwin(v1);
  sub_100003084();
  v8 = v7 - v6;
  v9 = type metadata accessor for OS_dispatch_queue.Attributes();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  sub_100003084();
  v11 = type metadata accessor for DispatchQoS();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  sub_100003084();
  *&v0[OBJC_IVAR____TtC13SystemActions6Server_listener] = 0;
  sub_100002F58(0, &qword_10000C5C0, OS_dispatch_queue_ptr);
  static DispatchQoS.unspecified.getter();
  v23 = &_swiftEmptyArrayStorage;
  sub_100002E64(&qword_10000C5C8, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_100002504(&qword_10000C5D0, &unk_1000037C0);
  sub_100002EAC();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v3 + 104))(v8, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v18);
  *&v0[OBJC_IVAR____TtC13SystemActions6Server_serviceQueue] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *&v0[OBJC_IVAR____TtC13SystemActions6Server_runners] = &_swiftEmptyDictionarySingleton;
  v22.receiver = v0;
  v22.super_class = ObjectType;
  v13 = objc_msgSendSuper2(&v22, "init");
  sub_100002F58(0, &qword_10000C5E0, BSServiceConnectionListener_ptr);
  v21 = v13;
  v14 = v13;
  v15 = sub_100001988(sub_100002F98, v20);
  v16 = *&v14[OBJC_IVAR____TtC13SystemActions6Server_listener];
  *&v14[OBJC_IVAR____TtC13SystemActions6Server_listener] = v15;

  return v14;
}

uint64_t sub_100001988(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  v9[4] = sub_10000306C;
  v9[5] = v4;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_100003068;
  v9[3] = &unk_1000084C8;
  v5 = _Block_copy(v9);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();

  v7 = [ObjCClassFromMetadata listenerWithConfigurator:v5];
  _Block_release(v5);

  LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

  if ((v5 & 1) == 0)
  {
    return v7;
  }

  __break(1u);
  return result;
}

id sub_100001ADC()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_100001B94(uint64_t a1, void *a2)
{
  v3 = v2;
  v5 = type metadata accessor for Logger();
  v6 = sub_100003070(v5);
  v61 = v7;
  v62 = v6;
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v6);
  v12 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v58 = &v56 - v13;
  v14 = type metadata accessor for UUID();
  v15 = sub_100003070(v14);
  v59 = v16;
  v60 = v15;
  v18 = *(v17 + 64);
  v19 = __chkstk_darwin(v15);
  v20 = &v56 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v22 = &v56 - v21;
  v23 = sub_100002504(&qword_10000C530, &qword_1000037A0);
  v24 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v23 - 8);
  v26 = &v56 - v25;
  v27 = a2;
  RunnerConnection.Policy.Client.init(client:)();
  v28 = type metadata accessor for RunnerConnection.Policy.Client();
  v29 = sub_10000254C(v26, 1, v28);
  sub_100002574(v26, &qword_10000C530, &qword_1000037A0);
  if (v29 == 1)
  {
    static WFLog.subscript.getter();
    v30 = v27;
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      *v33 = 138412290;
      *(v33 + 4) = v30;
      *v34 = v30;
      v35 = v30;
      _os_log_impl(&_mh_execute_header, v31, v32, "Client is not entitled as a trusted client: %@", v33, 0xCu);
      sub_100002574(v34, &qword_10000C538, &unk_1000037A8);
    }

    (*(v61 + 8))(v12, v62);
    return [v30 invalidate];
  }

  else
  {
    UUID.init()();
    v37 = [objc_allocWithZone(WFBackgroundShortcutRunner) initWithProcessPolicy:1];
    v38 = OBJC_IVAR____TtC13SystemActions6Server_runners;
    swift_beginAccess();
    v39 = v37;
    v40 = *&v3[v38];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v64 = *&v3[v38];
    sub_10000266C(v39, v22, isUniquelyReferenced_nonNull_native);
    *&v3[v38] = v64;
    swift_endAccess();
    v42 = v59;
    v43 = *(v59 + 16);
    v57 = v22;
    v44 = v22;
    v45 = v60;
    v43(v20, v44, v60);
    v46 = (*(v42 + 80) + 32) & ~*(v42 + 80);
    v47 = swift_allocObject();
    *(v47 + 16) = v3;
    *(v47 + 24) = v39;
    (*(v42 + 32))(v47 + v46, v20, v45);
    v48 = swift_allocObject();
    *(v48 + 16) = sub_1000028EC;
    *(v48 + 24) = v47;
    aBlock[4] = sub_100002960;
    aBlock[5] = v48;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100003068;
    aBlock[3] = &unk_100008428;
    v49 = _Block_copy(aBlock);
    v50 = v39;
    v51 = v3;

    [v27 configureConnection:v49];
    _Block_release(v49);
    LOBYTE(v49) = swift_isEscapingClosureAtFileLocation();

    if (v49)
    {
      __break(1u);
    }

    else
    {
      [v27 activate];
      v52 = v58;
      static WFLog.subscript.getter();
      v53 = Logger.logObject.getter();
      v54 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v53, v54))
      {
        v55 = swift_slowAlloc();
        *v55 = 134217984;
        *(v55 + 4) = CACurrentMediaTime();
        _os_log_impl(&_mh_execute_header, v53, v54, "[Performance] Connection came in: %f", v55, 0xCu);
      }

      (*(v61 + 8))(v52, v62);
      (*(v42 + 8))(v57, v45);
    }
  }

  return result;
}

void sub_100002168(void *a1, char *a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for UUID();
  v9 = sub_100003070(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  __chkstk_darwin(v9);
  [a1 setTargetQueue:*&a2[OBJC_IVAR____TtC13SystemActions6Server_serviceQueue]];
  v14 = [objc_opt_self() userInitiated];
  [a1 setServiceQuality:v14];

  type metadata accessor for RunnerConnection();
  v15 = static RunnerConnection.bsServiceInterface.getter();
  [a1 setInterface:v15];

  [a1 setInterfaceTarget:a3];
  (*(v11 + 16))(aBlock - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a4, v8);
  v16 = (*(v11 + 80) + 24) & ~*(v11 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = a2;
  (*(v11 + 32))(v17 + v16, aBlock - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
  aBlock[4] = sub_100002A58;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000023B4;
  aBlock[3] = &unk_100008478;
  v18 = _Block_copy(aBlock);
  v19 = a2;

  [a1 setInvalidationHandler:v18];
  _Block_release(v18);
}

void sub_1000023B4(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_100002420(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  swift_unknownObjectRetain();
  v4(a2);

  return swift_unknownObjectRelease();
}

uint64_t sub_100002504(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_100002574(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100002504(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_1000025D4(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  type metadata accessor for UUID();
  sub_100002E64(&qword_10000C5B0, &type metadata accessor for UUID);
  v5 = dispatch thunk of Hashable._rawHashValue(seed:)();

  return sub_100002CA8(a1, v5);
}

void sub_10000266C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v14 = sub_1000025D4(a2);
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
  sub_100002504(&qword_10000C5A0, &qword_1000037B8);
  if (!_NativeDictionary.ensureUnique(isUnique:capacity:)(a3 & 1, v18))
  {
    goto LABEL_5;
  }

  v21 = *v4;
  v22 = sub_1000025D4(a2);
  if ((v20 & 1) != (v23 & 1))
  {
LABEL_11:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
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
    sub_100002BF0(v19, v12, a1, v24);
  }
}

uint64_t sub_10000282C()
{
  v1 = type metadata accessor for UUID();
  sub_100003070(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 32) & ~v4;
  v7 = *(v6 + 64);

  (*(v3 + 8))(v0 + v5, v1);

  return _swift_deallocObject(v0, v5 + v7, v4 | 7);
}

void sub_1000028EC(void *a1)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  sub_100002168(a1, v4, v5, v6);
}

uint64_t sub_100002960()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_100002988(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000029A0()
{
  v1 = type metadata accessor for UUID();
  sub_100003070(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 24) & ~v4;
  v7 = *(v6 + 64);

  (*(v3 + 8))(v0 + v5, v1);

  return _swift_deallocObject(v0, v5 + v7, v4 | 7);
}

uint64_t sub_100002A58()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = OBJC_IVAR____TtC13SystemActions6Server_runners;
  swift_beginAccess();
  v6 = v0 + v3;
  v7 = *(v4 + v5);
  v8 = sub_1000025D4(v6);
  if (v9)
  {
    v10 = v8;
    v11 = *(v4 + v5);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *(v4 + v5);
    v13 = v16[3];
    sub_100002504(&qword_10000C5A0, &qword_1000037B8);
    _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v13);
    (*(v2 + 8))(v16[6] + *(v2 + 72) * v10, v1);
    v14 = *(v16[7] + 8 * v10);
    sub_100002F58(0, &qword_10000C5A8, WFBackgroundShortcutRunner_ptr);
    sub_100002E64(&qword_10000C5B0, &type metadata accessor for UUID);
    _NativeDictionary._delete(at:)();
    *(v4 + v5) = v16;
  }

  return swift_endAccess();
}

uint64_t sub_100002BF0(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
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

unint64_t sub_100002CA8(uint64_t a1, uint64_t a2)
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
    sub_100002E64(&qword_10000C5B8, &type metadata accessor for UUID);
    v10 = dispatch thunk of static Equatable.== infix(_:_:)();
    (*(v5 + 8))(v8, v4);
    if (v10)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_100002E64(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100002EAC()
{
  result = qword_10000C5D8;
  if (!qword_10000C5D8)
  {
    sub_100002F10(&qword_10000C5D0, &unk_1000037C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C5D8);
  }

  return result;
}

uint64_t sub_100002F10(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_100002F58(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

id sub_100002F98(void *a1)
{
  v3 = *(v1 + 16);
  static RunnerConnection.ServiceSpec.SystemRunner.domain.getter();
  v4 = String._bridgeToObjectiveC()();

  [a1 setDomain:v4];

  static RunnerConnection.ServiceSpec.SystemRunner.serviceIdentifier.getter();
  v5 = String._bridgeToObjectiveC()();

  [a1 setService:v5];

  return [a1 setDelegate:v3];
}