unint64_t sub_10006F2F4()
{
  result = qword_10032E0C8;
  if (!qword_10032E0C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10032E0C8);
  }

  return result;
}

uint64_t sub_10006F348()
{
  sub_10002CAF8(&qword_10032D7E0);
  type metadata accessor for _BackgroundStyleModifier();
  type metadata accessor for ModifiedContent();
  sub_10002CAF8(&qword_10032D7E8);
  type metadata accessor for ModifiedContent();
  sub_10002CAF8(&qword_10032E0C0);
  type metadata accessor for ModifiedContent();
  sub_10002CAF8(&qword_10032D7F0);
  type metadata accessor for ModifiedContent();
  sub_10002CD18(&qword_10032D7F8, &qword_10032D7E0);
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_10002CD18(&qword_10032D800, &qword_10032D7E8);
  swift_getWitnessTable();
  sub_10002CD18(&unk_10032E0D0, &qword_10032E0C0);
  swift_getWitnessTable();
  sub_10002CD18(&qword_10032D808, &qword_10032D7F0);
  return swift_getWitnessTable();
}

uint64_t sub_10006F598(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v46 = a2;
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v9 = OBJC_IVAR____TtC12ClarityBoard24AppProtectionCoordinator___observationRegistrar;
  v49 = v2;
  sub_100042CCC();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  v10 = *(v2 + 24);
  if (*(v10 + 16))
  {

    v11 = sub_1000884C0(a1, v46);
    if (v12)
    {
      v13 = *(*(v10 + 56) + v11);

      return v13;
    }
  }

  v14 = [objc_opt_self() sharedInstance];
  v15 = String._bridgeToObjectiveC()();
  v16 = [v14 standardBundleIdentifierForClarityBundleIdentifier:v15];

  if (!v16)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = String._bridgeToObjectiveC()();
  }

  v17 = [objc_opt_self() applicationWithBundleIdentifier:v16];

  swift_getKeyPath();
  v48[0] = v3;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v45 = [*(v3 + 16) shouldShieldLaunchOfApplication:v17];
  v18 = Logger.common.unsafeMutableAddressor();
  v19 = v8;
  (*(v6 + 16))(v8, v18, v5);
  v20 = v17;
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v42 = v22;
    v24 = v23;
    v40 = swift_slowAlloc();
    v48[0] = v40;
    *v24 = 136315394;
    v25 = v20;
    v44 = a1;
    v26 = v25;
    v27 = [v25 description];
    v41 = v5;
    v28 = v27;
    v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v39 = v19;
    v30 = v29;
    v43 = v9;
    v31 = v20;
    v33 = v32;

    v34 = v31;
    v35 = sub_10005766C(v30, v33, v48);

    *(v24 + 4) = v35;
    a1 = v44;
    *(v24 + 12) = 1024;
    v13 = v45;
    *(v24 + 14) = v45;
    _os_log_impl(&_mh_execute_header, v21, v42, "Initial: app: %s, shouldShield: %{BOOL}d", v24, 0x12u);
    sub_10002C9B0(v40);

    (*(v6 + 8))(v39, v41);
  }

  else
  {

    (*(v6 + 8))(v19, v5);
    v34 = v20;
    v13 = v45;
  }

  swift_getKeyPath();
  v48[0] = v3;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v48[0] = v3;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v47 = *(v3 + 24);
  *(v3 + 24) = 0x8000000000000000;
  sub_10007160C(v13, a1, v46, isUniquelyReferenced_nonNull_native);
  *(v3 + 24) = v47;
  swift_endAccess();
  v48[0] = v3;
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

  return v13;
}

id sub_10006FA80()
{
  swift_getKeyPath();
  sub_100042CCC();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 16);

  return v1;
}

id sub_10006FB00@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100042CCC();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 16);
  *a2 = v4;

  return v4;
}

void sub_10006FBB4(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 16);
  type metadata accessor for APSystemAppOutlet();
  v5 = v4;
  v6 = static NSObject.== infix(_:_:)();

  if (v6)
  {
    v7 = *(v2 + 16);
    *(v2 + 16) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100042CCC();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_10006FCE0()
{
  swift_getKeyPath();
  sub_100042CCC();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
}

uint64_t sub_10006FD68@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100042CCC();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  *a2 = *(v3 + 24);
}

uint64_t sub_10006FDF8(uint64_t a1)
{
  swift_beginAccess();

  v4 = sub_100071BD4(v3, a1);

  if (v4)
  {
    *(v1 + 24) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100042CCC();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_10006FF10()
{
  *(v0 + 24) = &_swiftEmptyDictionarySingleton;
  ObservationRegistrar.init()();
  v1 = [objc_allocWithZone(type metadata accessor for AppProtectionPlugIn()) init];
  *(v0 + 16) = [objc_allocWithZone(APSystemAppOutlet) initWithSystemAppInterface:v1];
  swift_weakAssign();
  swift_getKeyPath();
  sub_100042CCC();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  [*(v0 + 16) resume];

  return v0;
}

uint64_t sub_10006FFF4()
{

  v1 = OBJC_IVAR____TtC12ClarityBoard24AppProtectionCoordinator___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 12);
  v4 = *(*v0 + 26);

  return _swift_deallocClassInstance(v0, v3, v4);
}

uint64_t type metadata accessor for AppProtectionCoordinator()
{
  result = qword_10032E110;
  if (!qword_10032E110)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000700F4()
{
  result = type metadata accessor for ObservationRegistrar();
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

uint64_t sub_100070344(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 32) = a4;
  *(v5 + 40) = a5;
  *(v5 + 72) = a2;
  *(v5 + 16) = a1;
  *(v5 + 24) = a3;
  type metadata accessor for MainActor();
  *(v5 + 48) = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000703E4, v7, v6);
}

uint64_t sub_1000703E4()
{
  v1 = *(v0 + 40);
  v3 = *(v0 + 24);
  v2 = *(v0 + 32);
  v4 = *(v0 + 16);

  *(v0 + 56) = _Block_copy(v2);
  v5 = v4;
  v6 = v3;
  v7 = v1;
  v8 = swift_task_alloc();
  *(v0 + 64) = v8;
  *v8 = v0;
  v8[1] = sub_1000704CC;
  v9 = *(v0 + 72);
  v10 = *(v0 + 16);

  return (sub_100071EE8)(v10, v9);
}

uint64_t sub_1000704CC()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 40);
  v6 = *(*v1 + 24);
  v7 = *(*v1 + 16);
  v8 = *v1;

  v9 = *(v3 + 56);
  if (v2)
  {
    v10 = _convertErrorToNSError(_:)();

    (*(v9 + 16))(v9, v10);
  }

  else
  {
    (*(v9 + 16))(*(v3 + 56), 0);
  }

  _Block_release(*(v4 + 56));
  v11 = *(v8 + 8);

  return v11();
}

id sub_1000706E0()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

__n128 sub_10007074C(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_100070760(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_1000707A8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000707F8()
{
  _Block_release(*(v0 + 40));

  return _swift_deallocObject(v0, 56);
}

uint64_t sub_100070848()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_10002E558;

  return sub_100070344(v2, v3, v4, v5, v6);
}

uint64_t sub_100070914()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10005D0A4;

  return sub_10008C81C(v2, v3, v4);
}

uint64_t sub_1000709D8()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_100070A18(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10005D0A4;

  return sub_10008C908(a1, v4, v5, v6);
}

uint64_t sub_100070AE4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_10002B6CC(&qword_10032E250);
  v36 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v35 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = (*(v5 + 56) + 24 * v21);
      v26 = v25[1];
      v37 = v25[2];
      v38 = *v25;
      if ((v36 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v27 = -1 << *(v7 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v14 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v14 + 8 * v29);
          if (v33 != -1)
          {
            v15 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v23;
      v16[1] = v24;
      v17 = (*(v7 + 56) + 24 * v15);
      *v17 = v38;
      v17[1] = v26;
      v17[2] = v37;
      ++*(v7 + 16);
      v5 = v35;
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v2;
    if (v34 >= 64)
    {
      bzero(v9, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_100070DAC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_10002B6CC(&qword_10032E258);
  v35 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v35 & 1) == 0)
      {

        v25 = v24;
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_100071050(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_10002B6CC(&qword_10032E248);
  v34 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + v20);
      if ((v34 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1000712F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v7 = v6;
  v14 = *v6;
  v15 = sub_1000884C0(a4, a5);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_17;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a6 & 1) == 0)
  {
    if (v22 < v20 || (a6 & 1) != 0)
    {
      sub_100070AE4(v20, a6 & 1);
      v15 = sub_1000884C0(a4, a5);
      if ((v21 & 1) != (v24 & 1))
      {
LABEL_18:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v23 = v15;
      sub_100071778();
      v15 = v23;
    }
  }

  v25 = *v7;
  if (v21)
  {
    v26 = (v25[7] + 24 * v15);
    *v26 = a1;
    v26[1] = a2;
    v26[2] = a3;
  }

  v25[(v15 >> 6) + 8] |= 1 << v15;
  v28 = (v25[6] + 16 * v15);
  *v28 = a4;
  v28[1] = a5;
  v29 = (v25[7] + 24 * v15);
  *v29 = a1;
  v29[1] = a2;
  v29[2] = a3;
  v30 = v25[2];
  v19 = __OFADD__(v30, 1);
  v31 = v30 + 1;
  if (v19)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v25[2] = v31;
}

uint64_t sub_100071494(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1000884C0(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_100070DAC(v16, a4 & 1);
      v11 = sub_1000884C0(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return _objc_release_x1();
      }
    }

    else
    {
      v19 = v11;
      sub_100071900();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;

    return _objc_release_x1();
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v22 = (v21[6] + 16 * v11);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v24;
}

unint64_t sub_10007160C(char a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_1000884C0(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_100071050(v16, a4 & 1);
      result = sub_1000884C0(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_16:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_100071A6C();
      result = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + result) = a1 & 1;
    return result;
  }

  v21[(result >> 6) + 8] |= 1 << result;
  v22 = (v21[6] + 16 * result);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + result) = a1 & 1;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v21[2] = v24;
}

void *sub_100071778()
{
  v1 = v0;
  sub_10002B6CC(&qword_10032E250);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v17 *= 24;
        v22 = (*(v2 + 56) + v17);
        v23 = *v22;
        v24 = v22[1];
        v25 = v22[2];
        v26 = (*(v4 + 48) + v18);
        *v26 = v21;
        v26[1] = v20;
        v27 = (*(v4 + 56) + v17);
        *v27 = v23;
        v27[1] = v24;
        v27[2] = v25;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

id sub_100071900()
{
  v1 = v0;
  sub_10002B6CC(&qword_10032E258);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_100071A6C()
{
  v1 = v0;
  sub_10002B6CC(&qword_10032E248);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        LOBYTE(v18) = *(*(v2 + 56) + v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = v20;
        v21[1] = v19;
        *(*(v4 + 56) + v17) = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_100071BD4(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = (*(v3 + 48) + 16 * v12);
    v14 = *v13;
    v15 = v13[1];
    v16 = *(*(v3 + 56) + v12);

    v17 = sub_1000884C0(v14, v15);
    v19 = v18;

    if ((v19 & 1) == 0 || v16 != *(*(a2 + 56) + v17))
    {
      return 0;
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100071D08(void *a1, char a2)
{
  v3 = v2;
  v6 = [objc_opt_self() sharedInstance];
  v7 = [a1 bundleIdentifier];
  if (!v7)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = String._bridgeToObjectiveC()();
  }

  v8 = [v6 clarityBundleIdentifierForStandardBundleIdentifier:v7];

  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  swift_getKeyPath();
  sub_100042CCC();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *(v3 + 24);
  *(v3 + 24) = 0x8000000000000000;
  sub_10007160C(a2 & 1, v9, v11, isUniquelyReferenced_nonNull_native);

  *(v3 + 24) = v14;
  swift_endAccess();
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();
}

uint64_t sub_100071EE8(uint64_t a1, char a2)
{
  *(v3 + 64) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  v4 = type metadata accessor for Logger();
  *(v3 + 32) = v4;
  *(v3 + 40) = *(v4 - 8);
  *(v3 + 48) = swift_task_alloc();
  type metadata accessor for MainActor();
  *(v3 + 56) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100071FE0, v6, v5);
}

uint64_t sub_100071FE0()
{
  v28 = v0;
  v1 = *(v0 + 48);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 16);

  v5 = Logger.common.unsafeMutableAddressor();
  (*(v3 + 16))(v1, v5, v2);
  v6 = v4;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  v9 = os_log_type_enabled(v7, v8);
  v11 = *(v0 + 40);
  v10 = *(v0 + 48);
  v12 = *(v0 + 32);
  if (v9)
  {
    v24 = *(v0 + 64);
    v26 = *(v0 + 48);
    v13 = *(v0 + 16);
    v25 = *(v0 + 32);
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v27 = v15;
    *v14 = 136315394;
    v16 = v13;
    v17 = [v16 description];
    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;

    v21 = sub_10005766C(v18, v20, &v27);

    *(v14 + 4) = v21;
    *(v14 + 12) = 1024;
    *(v14 + 14) = v24;
    _os_log_impl(&_mh_execute_header, v7, v8, "Updated: app: %s, shouldShield: %{BOOL}d", v14, 0x12u);
    sub_10002C9B0(v15);

    (*(v11 + 8))(v26, v25);
  }

  else
  {

    (*(v11 + 8))(v10, v12);
  }

  if (swift_weakLoadStrong())
  {
    sub_100071D08(*(v0 + 16), *(v0 + 64));
  }

  v22 = *(v0 + 8);

  return v22();
}

__n128 sub_10007227C(uint64_t a1, uint64_t a2)
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

uint64_t sub_1000722A0(uint64_t a1, int a2)
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

uint64_t sub_1000722E8(uint64_t result, int a2, int a3)
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

uint64_t sub_100072368(uint64_t a1)
{
  v2 = v1[1];
  if ((v2 & 0x2000000000000000) == 0)
  {
    if ((*v1 & 0xFFFFFFFFFFFFLL) != 0)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  if ((v2 & 0xF00000000000000) == 0)
  {
    __break(1u);
    return String.remove(at:)(a1);
  }

LABEL_5:
  a1 = String.index(before:)();

  return String.remove(at:)(a1);
}

uint64_t sub_1000723D0@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v48 = a2;
  v46 = sub_10002B6CC(&qword_10032E268) - 8;
  v3 = __chkstk_darwin(v46);
  v47 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v42 = (&v38 - v5);
  v6 = sub_10002B6CC(&qword_10032D048);
  __chkstk_darwin(v6 - 8);
  v8 = &v38 - v7;
  v45 = sub_10002B6CC(&qword_10032E270);
  v44 = *(v45 - 8);
  v9 = __chkstk_darwin(v45);
  v43 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v49 = &v38 - v11;
  v12 = *(a1 + 16);
  v61 = *a1;
  v62 = v12;
  sub_10002B6CC(&qword_10032C9B0);
  Binding.projectedValue.getter();
  v40 = v50;
  v39 = *(&v51 + 1);
  v13 = v51;
  v14 = *(a1 + 32);
  v15 = *(a1 + 56);
  v41 = *(a1 + 64);
  v16 = type metadata accessor for Font.Design();
  v17 = *(*(v16 - 8) + 56);
  v17(v8, 1, 1, v16);
  v18 = static Font.system(size:weight:design:)();
  sub_10002C51C(v8, &qword_10032D048);
  v17(v8, 1, 1, v16);
  static Font.system(size:weight:design:)();
  sub_10002C51C(v8, &qword_10032D048);
  v19 = Font.bold()();

  v58 = 0;
  v50 = v40;
  *&v51 = v13;
  *(&v51 + 1) = v39;
  LOBYTE(v52) = v14;
  *(&v52 + 1) = 256;
  *(&v52 + 3) = v59;
  BYTE7(v52) = v60;
  *(&v52 + 1) = nullsub_4;
  *&v53 = 0;
  *(&v53 + 1) = v15;
  *&v54 = v41;
  BYTE8(v54) = 0;
  HIDWORD(v54) = *&v57[3];
  *(&v54 + 9) = *v57;
  *&v55 = v18;
  *(&v55 + 1) = v19;
  v56 = 0;
  sub_10007368C();
  sub_1000736E0();
  v20 = v49;
  View.buttonStyle<A>(_:)();
  v65 = v54;
  v66 = v55;
  v67 = v56;
  v61 = v50;
  v62 = v51;
  v63 = v52;
  v64 = v53;
  sub_100073734(&v61);
  v21 = static VerticalAlignment.center.getter();
  v22 = v42;
  *v42 = v21;
  *(v22 + 8) = v15;
  *(v22 + 16) = 0;
  v23 = sub_10002B6CC(&qword_10032E288);
  sub_1000729D4(a1, (v22 + *(v23 + 44)));
  KeyPath = swift_getKeyPath();
  v25 = (v22 + *(v46 + 44));
  v26 = *(sub_10002B6CC(&qword_10032CB38) + 28);
  v27 = enum case for LayoutDirection.leftToRight(_:);
  v28 = type metadata accessor for LayoutDirection();
  (*(*(v28 - 8) + 104))(v25 + v26, v27, v28);
  *v25 = KeyPath;
  v29 = v44;
  v30 = *(v44 + 16);
  v31 = v43;
  v32 = v45;
  v30(v43, v20, v45);
  v33 = v47;
  sub_10003AFFC(v22, v47, &qword_10032E268);
  v34 = v48;
  v30(v48, v31, v32);
  v35 = sub_10002B6CC(&qword_10032E290);
  sub_10003AFFC(v33, &v34[*(v35 + 48)], &qword_10032E268);
  sub_10002C51C(v22, &qword_10032E268);
  v36 = *(v29 + 8);
  v36(v49, v32);
  sub_10002C51C(v33, &qword_10032E268);
  return (v36)(v31, v32);
}

uint64_t sub_1000729D4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v58 = a2;
  v54 = sub_10002B6CC(&qword_10032E298);
  __chkstk_darwin(v54);
  v4 = &v47 - v3;
  v5 = sub_10002B6CC(&qword_10032E2A0);
  v48 = *(v5 - 8);
  __chkstk_darwin(v5);
  v47 = &v47 - v6;
  v7 = sub_10002B6CC(&qword_10032E2A8);
  v8 = __chkstk_darwin(v7 - 8);
  v57 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v47 - v10;
  v56 = sub_10002B6CC(&qword_10032E2B0);
  v12 = *(v56 - 8);
  v13 = __chkstk_darwin(v56);
  v55 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v47 - v15;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v53 = v66;
  v52 = v68;
  v51 = v70;
  v50 = v71;
  v74 = 1;
  v73 = v67;
  v72 = v69;
  v17 = swift_allocObject();
  v18 = *(a1 + 48);
  *(v17 + 48) = *(a1 + 32);
  *(v17 + 64) = v18;
  *(v17 + 80) = *(a1 + 64);
  *(v17 + 96) = *(a1 + 80);
  v19 = *(a1 + 16);
  *(v17 + 16) = *a1;
  *(v17 + 32) = v19;
  v59 = a1;
  sub_1000737C4(a1, &v63);
  sub_10002B6CC(&qword_10032E2B8);
  sub_1000737FC();
  v20 = v16;
  Button.init(action:label:)();
  v21 = *(a1 + 16);
  v63 = *a1;
  v64 = v21;
  sub_10002B6CC(&qword_10032C9B0);
  Binding.wrappedValue.getter();
  v22 = String.count.getter();

  if (v22 < 1)
  {
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v29 = v63;
    v30 = BYTE8(v63);
    v31 = v64;
    v32 = BYTE8(v64);
    v62 = 1;
    v61 = BYTE8(v63);
    v60 = BYTE8(v64);
    *v4 = 0;
    v4[8] = 1;
    *(v4 + 2) = v29;
    v4[24] = v30;
    *(v4 + 4) = v31;
    v4[40] = v32;
    *(v4 + 3) = v65;
    swift_storeEnumTagMultiPayload();
    sub_10002B6CC(&qword_10032E318);
    sub_10002CD18(&qword_10032E320, &qword_10032E2A0);
    sub_100073B68();
    v28 = v11;
    _ConditionalContent<>.init(storage:)();
  }

  else
  {
    v23 = swift_allocObject();
    v24 = *(a1 + 48);
    *(v23 + 48) = *(a1 + 32);
    *(v23 + 64) = v24;
    *(v23 + 80) = *(a1 + 64);
    *(v23 + 96) = *(a1 + 80);
    v25 = *(a1 + 16);
    *(v23 + 16) = *a1;
    *(v23 + 32) = v25;
    __chkstk_darwin(v23);
    *(&v47 - 2) = a1;
    sub_1000737C4(a1, &v63);
    sub_10002B6CC(&qword_10032E2E0);
    sub_10007396C();
    v26 = v47;
    Button.init(action:label:)();
    v27 = v48;
    (*(v48 + 16))(v4, v26, v5);
    swift_storeEnumTagMultiPayload();
    sub_10002B6CC(&qword_10032E318);
    sub_10002CD18(&qword_10032E320, &qword_10032E2A0);
    sub_100073B68();
    v28 = v11;
    _ConditionalContent<>.init(storage:)();
    (*(v27 + 8))(v26, v5);
  }

  v33 = v74;
  v34 = v73;
  LODWORD(v54) = v72;
  v35 = *(v12 + 16);
  v36 = v55;
  v49 = v20;
  v37 = v20;
  v38 = v56;
  v35(v55, v37, v56);
  v39 = v28;
  v40 = v28;
  v41 = v57;
  sub_10003AFFC(v40, v57, &qword_10032E2A8);
  v42 = v58;
  *v58 = 0;
  *(v42 + 8) = v33;
  v42[2] = v53;
  *(v42 + 24) = v34;
  v42[4] = v52;
  *(v42 + 40) = v54;
  v43 = v50;
  v42[6] = v51;
  v42[7] = v43;
  v44 = sub_10002B6CC(&qword_10032E330);
  v35(v42 + *(v44 + 48), v36, v38);
  sub_10003AFFC(v41, v42 + *(v44 + 64), &qword_10032E2A8);
  sub_10002C51C(v39, &qword_10032E2A8);
  v45 = *(v12 + 8);
  v45(v49, v38);
  sub_10002C51C(v41, &qword_10032E2A8);
  return (v45)(v36, v38);
}

double sub_10007319C@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_10002B6CC(&qword_10032D048);
  __chkstk_darwin(v2 - 8);
  v4 = v15 - v3;
  v5 = Image.init(systemName:)();
  v6 = type metadata accessor for Font.Design();
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  v7 = static Font.system(size:weight:design:)();
  sub_10002C51C(v4, &qword_10032D048);
  KeyPath = swift_getKeyPath();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v9 = static Color.white.getter();
  v10 = swift_getKeyPath();
  v11 = static Color.green.getter();
  v12 = static Edge.Set.all.getter();
  v13 = v15[1];
  *(a1 + 24) = v15[0];
  *a1 = v5;
  *(a1 + 8) = KeyPath;
  *(a1 + 16) = v7;
  *(a1 + 40) = v13;
  result = *&v16;
  *(a1 + 56) = v16;
  *(a1 + 72) = v10;
  *(a1 + 80) = v9;
  *(a1 + 88) = v11;
  *(a1 + 96) = v12;
  *(a1 + 97) = 256;
  return result;
}

uint64_t sub_100073354(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  v12 = *(a1 + 1);
  v14 = v3;
  v13 = v12;
  v9 = v3;
  v10 = v2;
  v11 = *(a1 + 1);
  sub_100073C5C(&v14, v7);

  sub_100073CB8(&v13, v7);
  sub_10002B6CC(&qword_10032C9B0);
  Binding.wrappedValue.getter();
  v4 = String.count.getter();

  if (v4 >= 1)
  {
    v9 = v3;
    v10 = v2;
    v11 = *(a1 + 1);
    v5 = Binding.wrappedValue.getter();
    sub_100072368(v5);

    v7[0] = v3;
    v7[1] = v2;
    v8 = v12;
    Binding.wrappedValue.setter();
  }

  sub_100073D14(&v14);

  return sub_100073D68(&v13);
}

double sub_100073478@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_10002B6CC(&qword_10032D048);
  __chkstk_darwin(v2 - 8);
  v4 = v13 - v3;
  v5 = Image.init(systemName:)();
  v6 = type metadata accessor for Font.Design();
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  v7 = static Font.system(size:weight:design:)();
  sub_10002C51C(v4, &qword_10032D048);
  KeyPath = swift_getKeyPath();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v9 = static Color.primary.getter();
  v10 = swift_getKeyPath();
  *a1 = v5;
  *(a1 + 8) = KeyPath;
  *(a1 + 16) = v7;
  v11 = v13[1];
  *(a1 + 24) = v13[0];
  *(a1 + 40) = v11;
  result = *&v14;
  *(a1 + 56) = v14;
  *(a1 + 72) = v10;
  *(a1 + 80) = v9;
  return result;
}

uint64_t sub_100073610@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 48);
  v8[2] = *(v1 + 32);
  v8[3] = v3;
  v8[4] = *(v1 + 64);
  v9 = *(v1 + 80);
  v4 = *(v1 + 16);
  v8[0] = *v1;
  v8[1] = v4;
  v5 = *(&v3 + 1);
  *a1 = static HorizontalAlignment.center.getter();
  *(a1 + 8) = v5;
  *(a1 + 16) = 0;
  v6 = sub_10002B6CC(&qword_10032E260);
  return sub_1000723D0(v8, (a1 + *(v6 + 44)));
}

unint64_t sub_10007368C()
{
  result = qword_10032E278;
  if (!qword_10032E278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10032E278);
  }

  return result;
}

unint64_t sub_1000736E0()
{
  result = qword_10032E280;
  if (!qword_10032E280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10032E280);
  }

  return result;
}

unint64_t sub_1000737FC()
{
  result = qword_10032E2C0;
  if (!qword_10032E2C0)
  {
    sub_10002CAF8(&qword_10032E2B8);
    sub_1000738B4();
    sub_10002CD18(&unk_10032E0D0, &qword_10032E0C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10032E2C0);
  }

  return result;
}

unint64_t sub_1000738B4()
{
  result = qword_10032E2C8;
  if (!qword_10032E2C8)
  {
    sub_10002CAF8(&qword_10032E2D0);
    sub_10007396C();
    sub_10002CD18(&qword_10032C790, &qword_10032C798);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10032E2C8);
  }

  return result;
}

unint64_t sub_10007396C()
{
  result = qword_10032E2D8;
  if (!qword_10032E2D8)
  {
    sub_10002CAF8(&qword_10032E2E0);
    sub_100073A24();
    sub_10002CD18(&qword_10032D808, &qword_10032D7F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10032E2D8);
  }

  return result;
}

unint64_t sub_100073A24()
{
  result = qword_10032E2E8;
  if (!qword_10032E2E8)
  {
    sub_10002CAF8(&qword_10032E2F0);
    sub_100073AB0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10032E2E8);
  }

  return result;
}

unint64_t sub_100073AB0()
{
  result = qword_10032E2F8;
  if (!qword_10032E2F8)
  {
    sub_10002CAF8(&qword_10032E300);
    sub_10002CD18(&qword_10032E308, &qword_10032E310);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10032E2F8);
  }

  return result;
}

unint64_t sub_100073B68()
{
  result = qword_10032E328;
  if (!qword_10032E328)
  {
    sub_10002CAF8(&qword_10032E318);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10032E328);
  }

  return result;
}

uint64_t sub_100073BEC()
{

  return _swift_deallocObject(v0, 104);
}

void sub_100074128(char a1, char a2)
{
  v3 = v2;
  v6 = sub_10002B6CC(&qword_10032D050);
  __chkstk_darwin(v6 - 8);
  v8 = &v22[-v7];
  v9 = OBJC_IVAR___CLBTransientHUDPresenter_dismissTask;
  if (*&v3[OBJC_IVAR___CLBTransientHUDPresenter_dismissTask])
  {

    sub_10002B6CC(&qword_10032C1A0);
    Task.cancel()();
  }

  *&v3[v9] = 0;

  v10 = OBJC_IVAR___CLBTransientHUDPresenter_window;
  [*&v3[OBJC_IVAR___CLBTransientHUDPresenter_window] setHidden:0];
  [*&v3[v10] setAlpha:1.0];
  v11 = objc_allocWithZone(sub_10002B6CC(&qword_10032E348));
  v22[15] = a1 & 1;
  v12 = UIHostingController.init(rootView:)();
  v13 = [v12 view];
  if (v13)
  {
    v14 = v13;
    v15 = [objc_opt_self() clearColor];
    [v14 setBackgroundColor:v15];

    v16 = *&v3[v10];
    [v16 setRootViewController:v12];

    if (a2)
    {
      v17 = type metadata accessor for TaskPriority();
      (*(*(v17 - 8) + 56))(v8, 1, 1, v17);
      type metadata accessor for MainActor();
      v18 = v3;
      v19 = static MainActor.shared.getter();
      v20 = swift_allocObject();
      v20[2] = v19;
      v20[3] = &protocol witness table for MainActor;
      v20[4] = v18;
      v21 = sub_1000AB448(0, 0, v8, &unk_10029A3E8, v20);

      *&v3[v9] = v21;
    }

    else
    {
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1000743D8()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_100074418(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002E558;

  return sub_10008155C(a1, v4, v5, v6);
}

__n128 sub_1000744CC(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1000744E0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_100074528(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_10007459C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v58 = a1;
  v57 = type metadata accessor for MultimodalListStyle.IconStyle();
  v48 = *(v57 - 8);
  v3 = __chkstk_darwin(v57);
  v56 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v51 = &v47 - v5;
  v6 = sub_10002B6CC(&qword_10032E350);
  v7 = __chkstk_darwin(v6 - 8);
  v49 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v47 - v9;
  v11 = type metadata accessor for MultimodalListStyle();
  v12 = *(v11 - 8);
  v54 = v11;
  v55 = v12;
  __chkstk_darwin(v11);
  v53 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10002B6CC(&qword_10032E358);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v47 - v16;
  v52 = sub_10002B6CC(&qword_10032E360);
  __chkstk_darwin(v52);
  v50 = &v47 - v18;
  v59 = v2;
  sub_10002B6CC(&qword_10032E368);
  sub_100075470();
  List<>.init(content:)();
  sub_10002CD18(&qword_10032E398, &qword_10032E358);
  View.accessibilityIdentifier(_:)();
  (*(v15 + 8))(v17, v14);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v19 = v67[0];
  sub_100067CBC(v10);

  v20 = type metadata accessor for MultimodalListStyle.Layout();
  (*(*(v20 - 8) + 56))(v10, 0, 1, v20);
  v21 = v48;
  v22 = v51;
  v23 = v57;
  (*(v48 + 104))(v51, enum case for MultimodalListStyle.IconStyle.homeScreen(_:), v57);
  sub_10003AFFC(v10, v49, &qword_10032E350);
  (*(v21 + 16))(v56, v22, v23);
  v24 = v53;
  MultimodalListStyle.init(layout:iconStyle:)();
  (*(v21 + 8))(v22, v23);
  sub_10002C51C(v10, &qword_10032E350);
  sub_100075680();
  v25 = v58;
  v26 = v24;
  v27 = v54;
  v28 = v50;
  View.listStyle<A>(_:)();
  (*(v55 + 8))(v26, v27);
  sub_10002C51C(v28, &qword_10032E360);
  v29 = static Color.clear.getter();
  KeyPath = swift_getKeyPath();
  v31 = (v25 + *(sub_10002B6CC(&qword_10032E3A8) + 36));
  *v31 = KeyPath;
  v31[1] = v29;
  v57 = static HorizontalAlignment.center.getter();
  v32 = static Color.clear.getter();
  v56 = v32;
  v33 = [objc_opt_self() currentDevice];
  [v33 userInterfaceIdiom];

  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v34 = v81;
  LOBYTE(v14) = v82;
  v35 = v83;
  v36 = v84;
  v38 = v85;
  v37 = v86;
  VerticalEdge.rawValue.getter();
  LOBYTE(v33) = Edge.init(rawValue:)();
  v39 = static SafeAreaRegions.container.getter();
  v80 = v14;
  v79 = v36;
  v78 = 0;
  *&v61 = v32;
  *(&v61 + 1) = v34;
  LOBYTE(v62) = v14;
  *(&v62 + 1) = v35;
  LOBYTE(v63) = v36;
  *(&v63 + 1) = v38;
  *&v64 = v37;
  *(&v64 + 1) = v39;
  *&v65 = 0;
  BYTE8(v65) = 0;
  BYTE9(v65) = v33;
  v40 = v57;
  v66 = v57;
  v41 = sub_10002B6CC(&qword_10032E3B0);
  v42 = v58 + *(v41 + 36);
  v43 = v64;
  v44 = v65;
  v45 = v62;
  *(v42 + 32) = v63;
  *(v42 + 48) = v43;
  *(v42 + 64) = v44;
  *(v42 + 80) = v66;
  *v42 = v61;
  *(v42 + 16) = v45;
  v67[0] = v56;
  v67[1] = v34;
  v68 = v14;
  v69 = v35;
  v70 = v36;
  v71 = v38;
  v72 = v37;
  v73 = v39;
  v74 = 0;
  v75 = 0;
  v76 = v33;
  v77 = v40;
  sub_10003AFFC(&v61, &v60, &qword_10032E3B8);
  return sub_10002C51C(v67, &qword_10032E3B8);
}

uint64_t sub_100074C98(uint64_t *a1)
{
  v2 = *a1;
  swift_getKeyPath();
  v9[0] = v2;
  sub_1000758B0(&qword_10032DBA0, type metadata accessor for Applications);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v9[4] = *(v2 + 16);
  v10 = *(a1 + 3);
  v3 = swift_allocObject();
  v4 = *(a1 + 1);
  *(v3 + 16) = *a1;
  *(v3 + 32) = v4;
  *(v3 + 48) = a1[4];

  sub_10003AFFC(&v10, v9, &qword_10032E3C0);
  sub_10002B6CC(&qword_10032E3C8);
  sub_10002B6CC(&qword_10032E3D0);
  sub_10002CD18(&qword_10032E3D8, &qword_10032E3C8);
  v5 = sub_10002CAF8(&qword_10032E378);
  v6 = sub_10007554C();
  v7 = sub_100030970();
  v9[0] = v5;
  v9[1] = &type metadata for String;
  v9[2] = v6;
  v9[3] = v7;
  swift_getOpaqueTypeConformance2();
  sub_1000758B0(&qword_10032E3E0, type metadata accessor for Application);
  return ForEach<>.init(_:content:)();
}

uint64_t sub_100074EE8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v36 = a3;
  v5 = type metadata accessor for AccessibilityChildBehavior();
  v31 = *(v5 - 8);
  v32 = v5;
  __chkstk_darwin(v5);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10002B6CC(&qword_10032E388);
  v30 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v29 - v9;
  v11 = sub_10002B6CC(&qword_10032E3E8);
  v12 = *(v11 - 8);
  v33 = v11;
  v34 = v12;
  __chkstk_darwin(v11);
  v14 = &v29 - v13;
  v35 = sub_10002B6CC(&qword_10032E378);
  __chkstk_darwin(v35);
  v16 = &v29 - v15;
  v17 = *a1;
  v39 = *(a2 + 24);
  v18 = swift_allocObject();
  v19 = *(a2 + 16);
  *(v18 + 16) = *a2;
  *(v18 + 32) = v19;
  *(v18 + 48) = *(a2 + 32);
  *(v18 + 56) = v17;

  sub_10003AFFC(&v39, &v37, &qword_10032E3C0);
  sub_100075854();

  Button.init(action:label:)();
  static AccessibilityChildBehavior.combine.getter();
  v20 = sub_10002CD18(&qword_10032E390, &qword_10032E388);
  View.accessibilityElement(children:)();
  (*(v31 + 8))(v7, v32);
  (*(v30 + 8))(v10, v8);
  v21 = [*(v17 + 16) bundleIdentifier];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v37 = v8;
  v38 = v20;
  swift_getOpaqueTypeConformance2();
  v22 = v33;
  View.accessibilityIdentifier(_:)();

  (*(v34 + 8))(v14, v22);
  sub_100035D1C();
  v23 = [swift_getObjCClassFromMetadata() sharedInstance];
  LODWORD(v21) = [v23 notificationsEnabled];

  if (!v21)
  {
    goto LABEL_6;
  }

  swift_getKeyPath();
  v37 = v17;
  sub_1000758B0(&qword_10032DBA8, type metadata accessor for Application);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v24 = *(v17 + 32);
  v25 = *(v17 + 24) & 0xFFFFFFFFFFFFLL;
  if ((v24 & 0x2000000000000000) != 0)
  {
    v25 = HIBYTE(v24) & 0xF;
  }

  if (v25)
  {
    swift_getKeyPath();
    v37 = v17;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v27 = *(v17 + 24);
    v26 = *(v17 + 32);
  }

  else
  {
LABEL_6:
    v27 = 0;
    v26 = 0;
  }

  v37 = v27;
  v38 = v26;
  sub_10007554C();
  sub_100030970();
  View.badge<A>(_:)();

  return sub_10002C51C(v16, &qword_10032E378);
}

unint64_t sub_100075470()
{
  result = qword_10032E370;
  if (!qword_10032E370)
  {
    sub_10002CAF8(&qword_10032E368);
    sub_10002CAF8(&qword_10032E378);
    sub_10007554C();
    sub_100030970();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10032E370);
  }

  return result;
}

unint64_t sub_10007554C()
{
  result = qword_10032E380;
  if (!qword_10032E380)
  {
    sub_10002CAF8(&qword_10032E378);
    sub_10002CAF8(&qword_10032E388);
    sub_10002CD18(&qword_10032E390, &qword_10032E388);
    swift_getOpaqueTypeConformance2();
    sub_1000758B0(&qword_10032D020, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10032E380);
  }

  return result;
}

unint64_t sub_100075680()
{
  result = qword_10032E3A0;
  if (!qword_10032E3A0)
  {
    sub_10002CAF8(&qword_10032E360);
    sub_10002CD18(&qword_10032E398, &qword_10032E358);
    sub_1000758B0(&qword_10032D020, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10032E3A0);
  }

  return result;
}

uint64_t sub_100075778()
{

  return _swift_deallocObject(v0, 56);
}

uint64_t sub_1000757C8()
{

  return _swift_deallocObject(v0, 64);
}

unint64_t sub_100075854()
{
  result = qword_10032E3F0;
  if (!qword_10032E3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10032E3F0);
  }

  return result;
}

uint64_t sub_1000758B0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1000758FC()
{
  result = qword_10032E3F8;
  if (!qword_10032E3F8)
  {
    sub_10002CAF8(&qword_10032E3B0);
    sub_1000759B4();
    sub_10002CD18(&qword_10032E408, &qword_10032E3B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10032E3F8);
  }

  return result;
}

unint64_t sub_1000759B4()
{
  result = qword_10032E400;
  if (!qword_10032E400)
  {
    sub_10002CAF8(&qword_10032E3A8);
    sub_10002CAF8(&qword_10032E360);
    type metadata accessor for MultimodalListStyle();
    sub_100075680();
    swift_getOpaqueTypeConformance2();
    sub_10002CD18(&qword_10032D808, &qword_10032D7F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10032E400);
  }

  return result;
}

void sub_100075AC8(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v2();
}

uint64_t sub_100075B6C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, char a9, char a10, char a11, uint64_t a12)
{
  v65 = a7;
  v67 = a8;
  v68 = a12;
  v19 = type metadata accessor for Logger();
  v63 = *(v19 - 8);
  v64 = v19;
  __chkstk_darwin(v19);
  v69 = &v58 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v12 + OBJC_IVAR___CLBScenePresentationViewController_isInvalidated) = 0;
  v21 = (v12 + OBJC_IVAR___CLBScenePresentationViewController_lastSeenViewSize);
  *v21 = 0;
  v21[1] = 0;
  v22 = (v12 + OBJC_IVAR___CLBScenePresentationViewController_name);
  v59 = a1;
  *v22 = a1;
  v22[1] = a2;
  v23 = a2;
  v62 = v22;
  v24 = (v12 + OBJC_IVAR___CLBScenePresentationViewController_bundleIdentifier);
  *v24 = a3;
  v24[1] = a4;
  v61 = v24;
  v25 = (v12 + OBJC_IVAR___CLBScenePresentationViewController_sceneIdentifier);
  v66 = a5;
  *v25 = a5;
  v25[1] = a6;
  v60 = v25;
  *(v12 + OBJC_IVAR___CLBScenePresentationViewController_shouldDisableIdleTimer) = a9;
  *(v12 + OBJC_IVAR___CLBScenePresentationViewController_avoidsBackButton) = a10;
  *(v12 + OBJC_IVAR___CLBScenePresentationViewController_viewAssumesBoundsMatchDeviceBounds) = a11;
  *(v12 + OBJC_IVAR___CLBScenePresentationViewController_displayLayoutStyle) = v68;
  v26 = objc_opt_self();

  v27 = [v26 sharedInstanceIfExists];
  v28 = String._bridgeToObjectiveC()();

  v29 = [v27 processesForBundleIdentifier:v28];

  sub_10002C9FC(0, &qword_10032E4B0);
  v30 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v30 >> 62))
  {
    v31 = v69;
    if (*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_12:

    v49 = Logger.common.unsafeMutableAddressor();
    v50 = v63;
    v51 = v64;
    (*(v63 + 16))(v31, v49, v64);

    v52 = Logger.logObject.getter();
    v53 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v52, v53))
    {
      v54 = v50;
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      aBlock[0] = v56;
      *v55 = 136315138;
      v57 = sub_10005766C(v59, v23, aBlock);

      *(v55 + 4) = v57;
      _os_log_impl(&_mh_execute_header, v52, v53, "Unable to find %s in running processes.", v55, 0xCu);
      sub_10002C9B0(v56);

      (*(v54 + 8))(v31, v51);
    }

    else
    {

      (*(v50 + 8))(v31, v51);
    }

    type metadata accessor for ScenePresentationViewController();
    swift_deallocPartialClassInstance();
    return 0;
  }

  v48 = _CocoaArrayWrapper.endIndex.getter();
  v31 = v69;
  if (!v48)
  {
    goto LABEL_12;
  }

LABEL_3:

  if ((v30 & 0xC000000000000001) != 0)
  {
    v33 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_19;
    }

    v33 = *(v30 + 32);
  }

  v34 = v33;

  v35 = v65;
  *(v12 + OBJC_IVAR___CLBScenePresentationViewController_sceneSupportsClarityUI) = v65 & 1;
  if (v35)
  {
    [objc_opt_self() assistiveAccessClass];
    ObjCClassMetadata = swift_getObjCClassMetadata();
  }

  else
  {
    ObjCClassMetadata = sub_10002C9FC(0, &qword_10032E4B8);
  }

  v37 = ObjCClassMetadata;
  v38 = [v34 identity];
  v39 = [objc_opt_self() identityForProcessIdentity:v38];

  v40 = [qword_100336870 sceneManager];
  v41 = [v40 workspace];

  v42 = swift_allocObject();
  v42[2] = v66;
  v42[3] = a6;
  v42[4] = v39;
  v42[5] = v37;
  v43 = swift_allocObject();
  *(v43 + 16) = sub_1000786B4;
  *(v43 + 24) = v42;
  aBlock[4] = sub_1000786C0;
  aBlock[5] = v43;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000762C4;
  aBlock[3] = &unk_100300350;
  v44 = _Block_copy(aBlock);
  v45 = v39;

  v46 = [v41 createScene:v44];

  _Block_release(v44);
  LOBYTE(v44) = swift_isEscapingClosureAtFileLocation();

  if ((v44 & 1) == 0)
  {
    *(v12 + OBJC_IVAR___CLBScenePresentationViewController_scene) = v46;
    v47 = sub_1000A43FC(0);
    sub_1000778CC(v67);

    return v47;
  }

  __break(1u);
LABEL_19:
  __break(1u);
  return result;
}

void sub_10007620C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = String._bridgeToObjectiveC()();
  [a1 setIdentifier:v6];

  [a1 setClientIdentity:a4];
  v7 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [a1 setSpecification:v7];
}

uint64_t sub_1000762C4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  swift_unknownObjectRetain();
  v3(a2);

  return swift_unknownObjectRelease();
}

void sub_100076498()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR___CLBScenePresentationViewController_isInvalidated;
  if ((v1[OBJC_IVAR___CLBScenePresentationViewController_isInvalidated] & 1) == 0)
  {
    v7 = OBJC_IVAR___CLBScenePresentationViewController_scene;
    [*&v1[OBJC_IVAR___CLBScenePresentationViewController_scene] removeObserver:v1];
    [*&v1[v7] invalidate];
    v8 = Logger.common.unsafeMutableAddressor();
    (*(v3 + 16))(v5, v8, v2);
    v9 = v1;
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v24[1] = v13;
      *v12 = 136315394;
      v14 = &v9[OBJC_IVAR___CLBScenePresentationViewController_name];
      v25 = v9;
      v26 = v13;
      v15 = *&v9[OBJC_IVAR___CLBScenePresentationViewController_name];
      v16 = *(v14 + 1);

      v17 = sub_10005766C(v15, v16, &v26);

      *(v12 + 4) = v17;
      *(v12 + 12) = 2080;
      v18 = *&v25[OBJC_IVAR___CLBScenePresentationViewController_sceneIdentifier];
      v19 = *&v25[OBJC_IVAR___CLBScenePresentationViewController_sceneIdentifier + 8];

      v20 = sub_10005766C(v18, v19, &v26);

      *(v12 + 14) = v20;
      v9 = v25;
      _os_log_impl(&_mh_execute_header, v10, v11, "Invalidated %s scene with identifier: %s", v12, 0x16u);
      swift_arrayDestroy();
    }

    (*(v3 + 8))(v5, v2);
    v1[v6] = 1;
    if (v9[OBJC_IVAR___CLBScenePresentationViewController_shouldDisableIdleTimer] == 1)
    {
      v21 = [objc_opt_self() sharedInstance];
      if (v21)
      {
        v22 = v21;
        v23 = String._bridgeToObjectiveC()();
        [v22 setIdleTimerDisabled:0 forReason:v23];
      }

      else
      {
        __break(1u);
      }
    }
  }
}

uint64_t sub_1000767E8()
{
}

id sub_100076854()
{
  sub_100076498();
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ScenePresentationViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1000769E4()
{
  v16.receiver = v0;
  v16.super_class = type metadata accessor for ScenePresentationViewController();
  objc_msgSendSuper2(&v16, "viewDidLayoutSubviews");
  if (v0[OBJC_IVAR___CLBScenePresentationViewController_avoidsBackButton] != 1)
  {
    return;
  }

  v1 = [v0 view];
  if (!v1)
  {
LABEL_11:
    __break(1u);
    return;
  }

  v2 = v1;
  [v1 bounds];
  v4 = v3;
  v6 = v5;

  v7 = &v0[OBJC_IVAR___CLBScenePresentationViewController_lastSeenViewSize];
  if (*&v0[OBJC_IVAR___CLBScenePresentationViewController_lastSeenViewSize] != v4 || *&v0[OBJC_IVAR___CLBScenePresentationViewController_lastSeenViewSize + 8] != v6)
  {
    *v7 = v4;
    v7[1] = v6;
    sub_100077FE8(v17);
    if ((v18 & 1) == 0)
    {
      v9 = *&v0[OBJC_IVAR___CLBScenePresentationViewController_scene];
      v10 = swift_allocObject();
      v11 = v17[1];
      *(v10 + 16) = v17[0];
      *(v10 + 32) = v11;
      v12 = swift_allocObject();
      *(v12 + 16) = sub_100078660;
      *(v12 + 24) = v10;
      aBlock[4] = sub_100078710;
      aBlock[5] = v12;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1000A5678;
      aBlock[3] = &unk_1003002D8;
      v13 = _Block_copy(aBlock);
      v14 = v9;

      [v14 performUpdate:v13];

      _Block_release(v13);
      LOBYTE(v13) = swift_isEscapingClosureAtFileLocation();

      if (v13)
      {
        __break(1u);
        goto LABEL_11;
      }
    }
  }
}

void *sub_100076C38()
{
  v1 = *(v0 + OBJC_IVAR___CLBScenePresentationViewController_scene);
  v2 = v1;
  return v1;
}

uint64_t sub_100076C80()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &aBlock - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v0[OBJC_IVAR____TtC12ClarityBoard23SceneViewControllerBase_isAppeared] == 1)
  {
    v5 = OBJC_IVAR___CLBScenePresentationViewController_scene;
    if ([*&v0[OBJC_IVAR___CLBScenePresentationViewController_scene] isActive])
    {
      v6 = 0;
    }

    else
    {
      v18 = *&v0[v5];
      v19 = swift_allocObject();
      *(v19 + 16) = v0;
      v20 = swift_allocObject();
      v6 = sub_1000781DC;
      *(v20 + 16) = sub_1000781DC;
      *(v20 + 24) = v19;
      v34 = sub_100078770;
      v35 = v20;
      aBlock = _NSConcreteStackBlock;
      v31 = 1107296256;
      v32 = sub_100078744;
      v33 = &unk_1002FFFE0;
      v21 = _Block_copy(&aBlock);
      v22 = v18;
      v23 = v0;

      [v22 configureParameters:v21];

      _Block_release(v21);
      LOBYTE(v21) = swift_isEscapingClosureAtFileLocation();

      if (v21)
      {
LABEL_10:
        __break(1u);
        return result;
      }
    }

    v24 = *&v0[v5];
    v25 = swift_allocObject();
    *(v25 + 16) = v0;
    v26 = swift_allocObject();
    *(v26 + 16) = sub_1000781E4;
    *(v26 + 24) = v25;
    v34 = sub_1000781EC;
    v35 = v26;
    aBlock = _NSConcreteStackBlock;
    v31 = 1107296256;
    v32 = sub_1000A5678;
    v33 = &unk_100300058;
    v27 = _Block_copy(&aBlock);
    v28 = v0;
    v29 = v24;

    [v29 performUpdate:v27];

    _Block_release(v27);
    LOBYTE(v29) = swift_isEscapingClosureAtFileLocation();

    sub_1000781F4(v6);

    if ((v29 & 1) == 0)
    {
      return result;
    }

    __break(1u);
    goto LABEL_10;
  }

  v7 = Logger.common.unsafeMutableAddressor();
  (*(v2 + 16))(v4, v7, v1);
  v8 = v0;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    aBlock = v12;
    *v11 = 136315138;
    v13 = &v8[OBJC_IVAR___CLBScenePresentationViewController_name];
    v14 = *&v8[OBJC_IVAR___CLBScenePresentationViewController_name];
    v15 = *(v13 + 1);

    v16 = sub_10005766C(v14, v15, &aBlock);

    *(v11 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v9, v10, "Unexpectedly attempted to bring %s scene to foreground when it had not yet appeared.", v11, 0xCu);
    sub_10002C9B0(v12);
  }

  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_100077100(void *a1, void *a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_100078204;
  *(v5 + 24) = v4;
  v9[4] = sub_100078770;
  v9[5] = v5;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_100078744;
  v9[3] = &unk_1003000D0;
  v6 = _Block_copy(v9);
  v7 = a2;

  [a1 updateClientSettingsWithBlock:v6];
  _Block_release(v6);
  LOBYTE(a1) = swift_isEscapingClosureAtFileLocation();

  if (a1)
  {
    __break(1u);
  }

  return result;
}

id sub_100077258(void *a1, uint64_t a2)
{
  v3 = OBJC_IVAR____TtC12ClarityBoard23SceneViewControllerBase_lastSceneInterfaceOrientation;
  v4 = *(a2 + OBJC_IVAR____TtC12ClarityBoard23SceneViewControllerBase_lastSceneInterfaceOrientation);
  if (!v4)
  {
    v4 = sub_1000A4DBC(0, 1);
    *(a2 + v3) = v4;
  }

  v6 = sub_10008D9B8(v4);

  return [a1 setPreferredInterfaceOrientation:v6];
}

id sub_1000772C4(void *a1)
{
  [a1 setPreferredInterfaceOrientation:1];

  return [a1 setPreferredLevel:1.0];
}

id sub_100077314(void *a1, uint64_t a2, uint64_t a3)
{
  [a1 setForeground:1];
  v5 = OBJC_IVAR____TtC12ClarityBoard23SceneViewControllerBase_lastSceneInterfaceOrientation;
  v6 = *(a3 + OBJC_IVAR____TtC12ClarityBoard23SceneViewControllerBase_lastSceneInterfaceOrientation);
  if (!v6)
  {
    v6 = sub_1000A4DBC(0, 1);
    *(a3 + v5) = v6;
  }

  v7 = sub_10008D9B8(v6);

  return [a1 setInterfaceOrientation:v7];
}

uint64_t sub_100077390()
{
  v1 = *(v0 + OBJC_IVAR___CLBScenePresentationViewController_scene);
  v5[4] = sub_100055838;
  v5[5] = 0;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 1107296256;
  v5[2] = sub_100078744;
  v5[3] = &unk_1002FFF68;
  v2 = _Block_copy(v5);
  v3 = v1;

  [v3 updateSettingsWithBlock:v2];

  _Block_release(v2);
  result = swift_isEscapingClosureAtFileLocation();
  if (result)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100077500(uint64_t a1, void *a2)
{
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  result = __chkstk_darwin(v5);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*&v2[OBJC_IVAR___CLBScenePresentationViewController_scene] == a1)
  {
    v10 = Logger.common.unsafeMutableAddressor();
    (*(v6 + 16))(v9, v10, v5);
    v11 = v2;
    v12 = a2;
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      aBlock[0] = v26;
      *v15 = 136315394;
      v17 = *&v11[OBJC_IVAR___CLBScenePresentationViewController_name];
      v16 = *&v11[OBJC_IVAR___CLBScenePresentationViewController_name + 8];

      v18 = sub_10005766C(v17, v16, aBlock);

      *(v15 + 4) = v18;
      *(v15 + 12) = 2112;
      v19 = [v12 transitionContext];
      *(v15 + 14) = v19;
      v20 = v25;
      *v25 = v19;
      _os_log_impl(&_mh_execute_header, v13, v14, "%s scene did update settings with %@.", v15, 0x16u);
      sub_10002E7BC(v20);

      sub_10002C9B0(v26);
    }

    (*(v6 + 8))(v9, v5);
    v21 = swift_allocObject();
    *(v21 + 16) = v11;
    v22 = objc_opt_self();
    aBlock[4] = sub_100057EF4;
    aBlock[5] = v21;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000357AC;
    aBlock[3] = &unk_1002FFF40;
    v23 = _Block_copy(aBlock);
    v24 = v11;

    [v22 animateWithDuration:v23 animations:0.25];
    _Block_release(v23);
  }

  return result;
}

uint64_t sub_1000778CC(uint64_t isEscapingClosureAtFileLocation)
{
  v2 = v1;
  v4 = OBJC_IVAR___CLBScenePresentationViewController_scene;
  [*(v2 + OBJC_IVAR___CLBScenePresentationViewController_scene) addObserver:v2];
  result = [*(v2 + v4) isActive];
  if ((result & 1) == 0)
  {
    v6 = *(v2 + v4);
    v7 = swift_allocObject();
    *(v7 + 16) = v2;
    v8 = swift_allocObject();
    *(v8 + 16) = sub_10007820C;
    *(v8 + 24) = v7;
    v20 = sub_100078770;
    v21 = v8;
    v16 = _NSConcreteStackBlock;
    v17 = 1107296256;
    v18 = sub_100078744;
    v19 = &unk_100300148;
    v9 = _Block_copy(&v16);
    v10 = v6;
    v11 = v2;

    [v10 configureParameters:v9];

    _Block_release(v9);
    LOBYTE(v9) = swift_isEscapingClosureAtFileLocation();

    if (v9)
    {
      __break(1u);
    }

    else
    {
      if ((isEscapingClosureAtFileLocation & 0xC000000000000001) == 0)
      {
        goto LABEL_7;
      }

      if (__CocoaSet.count.getter() < 1)
      {
      }

      else
      {
        while (1)
        {
          v12 = *(v2 + v4);
          v2 = swift_allocObject();
          v2[2] = isEscapingClosureAtFileLocation;
          v13 = swift_allocObject();
          *(v13 + 16) = sub_10007824C;
          *(v13 + 24) = v2;
          v20 = sub_100078710;
          v21 = v13;
          v16 = _NSConcreteStackBlock;
          v17 = 1107296256;
          v18 = sub_1000A5678;
          v19 = &unk_1003001C0;
          v14 = _Block_copy(&v16);
          v15 = v12;

          [v15 performUpdate:v14];

          _Block_release(v14);
          isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

          if ((isEscapingClosureAtFileLocation & 1) == 0)
          {
            break;
          }

          __break(1u);
LABEL_7:
          if (*(isEscapingClosureAtFileLocation + 16) < 1)
          {
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_100077BD0(void *a1, void *a2)
{
  v15 = sub_1000772C4;
  v16 = 0;
  v11 = _NSConcreteStackBlock;
  v12 = 1107296256;
  v13 = sub_100078744;
  v14 = &unk_1003001E8;
  v4 = _Block_copy(&v11);

  [a1 updateClientSettingsWithBlock:v4];
  _Block_release(v4);
  result = swift_isEscapingClosureAtFileLocation();
  if (result)
  {
    __break(1u);
    goto LABEL_5;
  }

  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1000782BC;
  *(v7 + 24) = v6;
  v15 = sub_100078770;
  v16 = v7;
  v11 = _NSConcreteStackBlock;
  v12 = 1107296256;
  v13 = sub_100078744;
  v14 = &unk_100300260;
  v8 = _Block_copy(&v11);
  v9 = a2;

  [a1 updateSettingsWithBlock:v8];
  _Block_release(v8);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

void sub_100077DD0(void *a1, uint64_t a2)
{
  v8 = [objc_opt_self() mainConfiguration];
  [a1 setForeground:0];
  [a1 setDisplayConfiguration:v8];
  [v8 bounds];
  [a1 setFrame:?];
  [a1 setInterfaceOrientation:1];
  [a1 setLevel:1.0];
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4)
  {
    v5 = v4;
    v6 = a1;
    [v5 setInterfaceOrientationMode:1];
    v7 = [objc_opt_self() clb_thisDeviceDisplayEdgeInfo];
    [v7 clb_applyDisplayEdgeInfoToSceneSettings:v5];
    [v5 applyDefaultClarityUISettings];
  }

  [a1 setDisplayLayoutStyle:*(a2 + OBJC_IVAR___CLBScenePresentationViewController_displayLayoutStyle)];
}

void sub_100077F58(uint64_t a1, void *a2)
{
  sub_10002C9FC(0, &qword_10032E498);
  sub_100078254();
  isa = Set._bridgeToObjectiveC()().super.isa;
  [a2 setActions:isa];
}

void sub_100077FE8(uint64_t a1@<X8>)
{
  v3 = v1[OBJC_IVAR___CLBScenePresentationViewController_viewAssumesBoundsMatchDeviceBounds];
  v4 = [v1 view];
  v5 = v4;
  if (v3 != 1)
  {
    if (v4)
    {
      [v4 bounds];
      v31 = v17;
      v34 = v18;
      v8 = v19;
      v16 = v20;

      *&v7 = v31;
      v21 = v34;
      v15 = 0;
LABEL_22:
      *(&v7 + 1) = v21;
      goto LABEL_23;
    }

    goto LABEL_25;
  }

  if (!v4)
  {
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v6 = [v4 window];

  v7 = 0uLL;
  v8 = 0.0;
  if (!v6)
  {
    v15 = 1;
    v16 = 0.0;
    goto LABEL_23;
  }

  [v6 bounds];
  v30 = v10;
  v33 = v9;
  v12 = v11;
  v14 = v13;

  if (v12 == 0.0 && v14 == 0.0)
  {
    v15 = 1;
    v16 = 0.0;
    v7 = 0uLL;
LABEL_23:
    *a1 = v7;
    *(a1 + 16) = v8;
    *(a1 + 24) = v16;
    *(a1 + 32) = v15;
    return;
  }

  v22 = [v1 view];
  if (v22)
  {
    v23 = v22;
    [v22 bounds];
    v25 = v24;
    v27 = v26;

    v15 = 0;
    v28 = v14 * (v25 / v27);
    if (v12 > v28)
    {
      v28 = v12;
    }

    v29 = v27 / v25 * v28;
    if (v14 > v29)
    {
      v29 = v14;
    }

    if (v29 >= v28)
    {
      v16 = v29;
    }

    else
    {
      v16 = v28;
    }

    if (v29 >= v28)
    {
      v8 = v28;
    }

    else
    {
      v8 = v29;
    }

    v21 = v32;
    *&v7 = v35;
    goto LABEL_22;
  }

LABEL_26:
  __break(1u);
}

uint64_t sub_10007818C()
{

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_1000781C4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000781F4(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_100078214()
{

  return _swift_deallocObject(v0, 24);
}

unint64_t sub_100078254()
{
  result = qword_10032E4A0;
  if (!qword_10032E4A0)
  {
    sub_10002C9FC(255, &qword_10032E498);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10032E4A0);
  }

  return result;
}

void sub_1000782D4(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10002C9FC(0, &qword_10032BD30);
  v8 = *&v1[OBJC_IVAR___CLBScenePresentationViewController_scene];
  v9 = static NSObject.== infix(_:_:)();

  if (v9)
  {
    v10 = Logger.common.unsafeMutableAddressor();
    (*(v5 + 16))(v7, v10, v4);
    v11 = v2;
    v12 = a1;
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v33 = v17;
      *v15 = 136315394;
      v18 = &v11[OBJC_IVAR___CLBScenePresentationViewController_name];
      v34 = v11;
      v35 = v17;
      v19 = v12;
      v21 = *&v11[OBJC_IVAR___CLBScenePresentationViewController_name];
      v20 = *(v18 + 1);

      v22 = sub_10005766C(v21, v20, &v35);
      v12 = v19;

      *(v15 + 4) = v22;
      v11 = v34;
      *(v15 + 12) = 2112;
      *(v15 + 14) = v19;
      *v16 = v19;
      v23 = v19;
      _os_log_impl(&_mh_execute_header, v13, v14, "Did connect to %s scene: %@", v15, 0x16u);
      sub_10002E7BC(v16);

      sub_10002C9B0(v33);
    }

    (*(v5 + 8))(v7, v4);
    v24 = type metadata accessor for SceneViewControllerBase();
    v36.receiver = v11;
    v36.super_class = v24;
    v25 = objc_msgSendSuper2(&v36, "view");
    if (v25)
    {
      v26 = v25;
      objc_opt_self();
      [swift_dynamicCastObjCClassUnconditional() setScene:v12];

      v27 = OBJC_IVAR___CLBScenePresentationViewController_shouldDisableIdleTimer;
      if (v11[OBJC_IVAR___CLBScenePresentationViewController_shouldDisableIdleTimer] != 1)
      {
        return;
      }

      v28 = [objc_opt_self() sharedInstance];
      if (v28)
      {
        v29 = v28;
        v30 = v11[v27];
        v31 = String._bridgeToObjectiveC()();
        [v29 setIdleTimerDisabled:v30 forReason:v31];

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

uint64_t sub_100078674()
{

  return _swift_deallocObject(v0, 48);
}

uint64_t getEnumTagSinglePayload for PasscodeField.State(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[16])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for PasscodeField.State(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

__n128 sub_100078818(uint64_t a1, __int128 *a2)
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

uint64_t sub_100078844(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10007888C(uint64_t result, int a2, int a3)
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
      *(result + 40) = (a2 - 1);
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

uint64_t sub_100078910@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  __chkstk_darwin(v4 - 8);
  v46 = sub_10002B6CC(&qword_10032E520);
  __chkstk_darwin(v46);
  v6 = &v41 - v5;
  v7 = sub_10002B6CC(&qword_10032E528);
  v8 = __chkstk_darwin(v7);
  v47 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v12 = &v41 - v11;
  __chkstk_darwin(v10);
  v14 = &v41 - v13;
  v48 = sub_10002B6CC(&qword_10032E530);
  __chkstk_darwin(v48);
  v16 = &v41 - v15;
  v17 = *(v2 + 32);
  result = static VerticalAlignment.center.getter();
  *v6 = result;
  *(v6 + 1) = v17;
  v6[16] = 0;
  v19 = *(v2 + 8);
  if (v19 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_10002B6CC(&qword_10032E538);
    v45 = v14;
    v49[13] = 0;
    v49[14] = v19;
    swift_getKeyPath();
    v42 = v12;
    v20 = swift_allocObject();
    v44 = v16;
    v21 = *(v2 + 80);
    *(v20 + 80) = *(v2 + 64);
    *(v20 + 96) = v21;
    *(v20 + 112) = *(v2 + 96);
    v22 = *(v2 + 16);
    *(v20 + 16) = *v2;
    *(v20 + 32) = v22;
    v23 = *(v2 + 48);
    *(v20 + 48) = *(v2 + 32);
    *(v20 + 64) = v23;
    sub_100079138(v2, v49);
    sub_10002B6CC(&qword_10032E540);
    v41 = v7;
    sub_10002B6CC(&qword_10032E548);
    sub_100079170();
    v43 = a1;
    sub_100079250();
    ForEach<>.init(_:id:content:)();
    LocalizedStringKey.init(stringLiteral:)();
    sub_10002CD18(&qword_10032E5B8, &qword_10032E520);
    v24 = v47;
    View.accessibilityLabel(_:)();

    sub_10002C51C(v6, &qword_10032E520);
    LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v25._countAndFlagsBits = 0x455F5345554C4156;
    v25._object = 0xEF2044455245544ELL;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v25);
    v49[0] = *v2;
    LocalizedStringKey.StringInterpolation.appendInterpolation<A>(_:specifier:)();
    v26._countAndFlagsBits = 32;
    v26._object = 0xE100000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v26);
    v49[0] = v19;
    LocalizedStringKey.StringInterpolation.appendInterpolation<A>(_:specifier:)();
    v27._countAndFlagsBits = 0;
    v27._object = 0xE000000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v27);
    LocalizedStringKey.init(stringInterpolation:)();
    v28 = v42;
    ModifiedContent<>.accessibilityValue(_:)();

    sub_10002C51C(v24, &qword_10032E528);
    v29 = v45;
    ModifiedContent<>.accessibilityIdentifier(_:)();
    sub_10002C51C(v28, &qword_10032E528);
    if (*(v2 + 88))
    {
      v30 = *(v2 + 96);
    }

    else
    {
      v30 = 0.0;
    }

    v31 = v29;
    v32 = v44;
    sub_1000404F8(v31, v44, &qword_10032E528);
    v33 = v32 + *(v48 + 36);
    *v33 = v30;
    *(v33 + 8) = 0;
    KeyPath = swift_getKeyPath();
    v35 = sub_10002B6CC(&qword_10032E5C0);
    v36 = v43;
    v37 = (v43 + *(v35 + 36));
    v38 = *(sub_10002B6CC(&qword_10032CB38) + 28);
    v39 = enum case for LayoutDirection.leftToRight(_:);
    v40 = type metadata accessor for LayoutDirection();
    (*(*(v40 - 8) + 104))(v37 + v38, v39, v40);
    *v37 = KeyPath;
    return sub_1000404F8(v32, v36, &qword_10032E530);
  }

  return result;
}

uint64_t sub_100078F08@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
  v6 = v5 < *a2;
  v7 = 10;
  if (v5 < *a2)
  {
    v7 = 9;
  }

  v8 = a2[v7];
  if (v6)
  {
    v9 = 5;
  }

  else
  {
    v9 = 6;
  }

  if (v6)
  {
    v10 = 7;
  }

  else
  {
    v10 = 8;
  }

  KeyPath = swift_getKeyPath();

  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v12 = a2[v9];
  v13 = a2[v10];

  v14 = static Edge.Set.all.getter();
  *a3 = v19;
  *(a3 + 8) = v20;
  *(a3 + 16) = v21;
  *(a3 + 24) = v22;
  *(a3 + 32) = v23;
  *(a3 + 40) = KeyPath;
  *(a3 + 48) = v8;
  *(a3 + 56) = v16;
  *(a3 + 72) = v17;
  *(a3 + 88) = v18;
  *(a3 + 104) = v12;
  *(a3 + 112) = xmmword_10029A5E0;
  *(a3 + 128) = 0x3FF0000000000000;
  *(a3 + 136) = v13;
  *(a3 + 144) = v14;
  *(a3 + 145) = 256;
}

uint64_t sub_1000790D0()
{

  return _swift_deallocObject(v0, 120);
}

unint64_t sub_100079170()
{
  result = qword_10032E550;
  if (!qword_10032E550)
  {
    sub_10002CAF8(&qword_10032E540);
    sub_1000791FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10032E550);
  }

  return result;
}

unint64_t sub_1000791FC()
{
  result = qword_10032E558;
  if (!qword_10032E558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10032E558);
  }

  return result;
}

unint64_t sub_100079250()
{
  result = qword_10032E560;
  if (!qword_10032E560)
  {
    sub_10002CAF8(&qword_10032E548);
    sub_100079308();
    sub_10002CD18(&unk_10032E0D0, &qword_10032E0C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10032E560);
  }

  return result;
}

unint64_t sub_100079308()
{
  result = qword_10032E568;
  if (!qword_10032E568)
  {
    sub_10002CAF8(&qword_10032E570);
    sub_1000793C0();
    sub_10002CD18(&qword_10032C790, &qword_10032C798);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10032E568);
  }

  return result;
}

unint64_t sub_1000793C0()
{
  result = qword_10032E578;
  if (!qword_10032E578)
  {
    sub_10002CAF8(&qword_10032E580);
    sub_10007944C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10032E578);
  }

  return result;
}

unint64_t sub_10007944C()
{
  result = qword_10032E588;
  if (!qword_10032E588)
  {
    sub_10002CAF8(&qword_10032E590);
    sub_1000794D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10032E588);
  }

  return result;
}

unint64_t sub_1000794D8()
{
  result = qword_10032E598;
  if (!qword_10032E598)
  {
    sub_10002CAF8(&qword_10032E5A0);
    sub_10002CD18(&qword_10032E5A8, &qword_10032E5B0);
    sub_10002CD18(&qword_10032D808, &qword_10032D7F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10032E598);
  }

  return result;
}

unint64_t sub_1000795D0()
{
  result = qword_10032E5C8;
  if (!qword_10032E5C8)
  {
    sub_10002CAF8(&qword_10032E5C0);
    sub_100079688();
    sub_10002CD18(&qword_10032CB58, &qword_10032CB38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10032E5C8);
  }

  return result;
}

unint64_t sub_100079688()
{
  result = qword_10032E5D0;
  if (!qword_10032E5D0)
  {
    sub_10002CAF8(&qword_10032E530);
    sub_100079714();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10032E5D0);
  }

  return result;
}

unint64_t sub_100079714()
{
  result = qword_10032E5D8;
  if (!qword_10032E5D8)
  {
    sub_10002CAF8(&qword_10032E528);
    sub_10002CD18(&qword_10032E5B8, &qword_10032E520);
    sub_10004D34C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10032E5D8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SilentModeHUD(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SilentModeHUD(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_100079948@<X0>(char a1@<W0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for SilentModeHUDPlatter();
  v5 = v4 - 8;
  v6 = __chkstk_darwin(v4);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v26 - v9;
  v11 = sub_10002B6CC(&qword_10032DD18);
  v27 = *(v11 - 8);
  v12 = *(v27 + 64);
  v13 = __chkstk_darwin(v11 - 8);
  v14 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v26 - v15;
  *v16 = static HorizontalAlignment.center.getter();
  *(v16 + 1) = 0;
  v16[16] = 1;
  v17 = &v16[*(sub_10002B6CC(&qword_10032E5E0) + 44)];
  *v10 = a1;
  v18 = *(v5 + 28);
  *&v10[v18] = swift_getKeyPath();
  sub_10002B6CC(&qword_10032CEF8);
  swift_storeEnumTagMultiPayload();
  v19 = *(v5 + 32);
  static ClarityUIMetrics.standardSpacing.getter();
  *&v10[v19] = v20;
  sub_10007A5FC(v10, v8);
  sub_10007A5FC(v8, v17);
  v21 = v17 + *(sub_10002B6CC(&qword_10032E5E8) + 48);
  *v21 = 0;
  *(v21 + 8) = 1;
  sub_10007A660(v10);
  sub_10007A660(v8);
  sub_1000404F8(v16, v14, &qword_10032DD18);
  v22 = (*(v27 + 80) + 16) & ~*(v27 + 80);
  v23 = swift_allocObject();
  sub_1000404F8(v14, v23 + v22, &qword_10032DD18);
  *a2 = swift_getKeyPath();
  sub_10002B6CC(&qword_10032CEF0);
  swift_storeEnumTagMultiPayload();
  result = sub_10002B6CC(&qword_10032E5F0);
  v25 = (a2 + *(result + 36));
  *v25 = sub_10007A800;
  v25[1] = v23;
  return result;
}

uint64_t type metadata accessor for SilentModeHUDPlatter()
{
  result = qword_10032E658;
  if (!qword_10032E658)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100079C70@<X0>(uint64_t a1@<X8>)
{
  v51 = a1;
  v2 = sub_10002B6CC(&qword_10032E6A8);
  v3 = v2 - 8;
  __chkstk_darwin(v2);
  v5 = &v48 - v4;
  v49 = sub_10002B6CC(&qword_10032E6B0);
  __chkstk_darwin(v49);
  v50 = &v48 - v6;
  v53 = v1;
  v52 = v1;
  sub_10002B6CC(&qword_10032E6B8);
  sub_10002B6CC(&qword_10032E6C0);
  sub_10002CD18(&qword_10032E6C8, &qword_10032E6B8);
  sub_10002CD18(&qword_10032E6D0, &qword_10032E6C0);
  Label.init(title:icon:)();
  KeyPath = swift_getKeyPath();
  v8 = &v5[*(sub_10002B6CC(&qword_10032E6D8) + 36)];
  *v8 = KeyPath;
  v8[8] = 1;
  LOBYTE(KeyPath) = static Edge.Set.horizontal.getter();
  sub_10007A40C();
  EdgeInsets.init(_all:)();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = &v5[*(sub_10002B6CC(&qword_10032E6E0) + 36)];
  *v17 = KeyPath;
  *(v17 + 1) = v10;
  *(v17 + 2) = v12;
  *(v17 + 3) = v14;
  *(v17 + 4) = v16;
  v17[40] = 0;
  LOBYTE(KeyPath) = static Edge.Set.vertical.getter();
  type metadata accessor for SilentModeHUDPlatter();
  EdgeInsets.init(_all:)();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v26 = &v5[*(sub_10002B6CC(&qword_10032E6E8) + 36)];
  *v26 = KeyPath;
  *(v26 + 1) = v19;
  *(v26 + 2) = v21;
  *(v26 + 3) = v23;
  *(v26 + 4) = v25;
  v26[40] = 0;
  v27 = [objc_opt_self() systemBackgroundColor];
  v28 = Color.init(uiColor:)();
  v29 = static Edge.Set.all.getter();
  v30 = &v5[*(sub_10002B6CC(&qword_10032E6F0) + 36)];
  *v30 = v28;
  v30[8] = v29;
  v31 = sub_10007A40C();
  v32 = &v5[*(v3 + 44)];
  v33 = *(type metadata accessor for RoundedRectangle() + 20);
  v34 = enum case for RoundedCornerStyle.continuous(_:);
  v35 = type metadata accessor for RoundedCornerStyle();
  (*(*(v35 - 8) + 104))(v32 + v33, v34, v35);
  *v32 = v31;
  v32[1] = v31;
  *(v32 + *(sub_10002B6CC(&qword_10032C270) + 36)) = 256;
  if (*v1 == 1)
  {
    v36 = static Color.red.getter();
  }

  else
  {
    v36 = static Color.primary.getter();
  }

  v37 = v36;
  v38 = swift_getKeyPath();
  v39 = v50;
  sub_1000404F8(v5, v50, &qword_10032E6A8);
  v40 = (v39 + *(v49 + 36));
  *v40 = v38;
  v40[1] = v37;
  v41 = sub_10002B6CC(&qword_10032E6F8);
  v42 = v51;
  v43 = (v51 + *(v41 + 36));
  v44 = *(sub_10002B6CC(&qword_10032E700) + 28);
  v45 = enum case for ColorScheme.dark(_:);
  v46 = type metadata accessor for ColorScheme();
  (*(*(v46 - 8) + 104))(v43 + v44, v45, v46);
  *v43 = swift_getKeyPath();
  return sub_1000404F8(v39, v42, &qword_10032E6B0);
}

__n128 sub_10007A108@<Q0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = static HorizontalAlignment.leading.getter();
  v5 = static VerticalAlignment.firstTextBaseline.getter();
  sub_10007A1B4(a1, &v9);
  v16 = v11;
  v17 = v12;
  v18 = v13;
  v14 = v9;
  v15 = v10;
  v19[2] = v11;
  v19[3] = v12;
  v19[4] = v13;
  v19[0] = v9;
  v19[1] = v10;
  sub_10007ACF4(&v14, &v8);
  sub_10007AD64(v19);
  *a2 = v4;
  *(a2 + 8) = v5;
  v6 = v17;
  *(a2 + 48) = v16;
  *(a2 + 64) = v6;
  *(a2 + 80) = v18;
  result = v15;
  *(a2 + 16) = v14;
  *(a2 + 32) = result;
  return result;
}

uint64_t sub_10007A1B4@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  LocalizedStringKey.init(stringLiteral:)();
  v4 = Text.init(_:tableName:bundle:comment:)();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = *a1;
  LocalizedStringKey.init(stringLiteral:)();
  v12 = Text.init(_:tableName:bundle:comment:)();
  v16 = v12;
  v17 = v13;
  v18 = v8 & 1;
  v19 = v14 & 1;
  v20 = 0.0;
  *a2 = v4;
  *(a2 + 8) = v6;
  if (v11)
  {
    v21 = 1.0;
  }

  else
  {
    v21 = 0.0;
  }

  if (!v11)
  {
    v20 = 1.0;
  }

  *(a2 + 16) = v18;
  *(a2 + 24) = v10;
  *(a2 + 32) = v21;
  *(a2 + 40) = v12;
  *(a2 + 48) = v13;
  *(a2 + 56) = v14 & 1;
  *(a2 + 64) = v15;
  *(a2 + 72) = v20;
  sub_100047B94(v4, v6, v18);

  sub_100047B94(v16, v17, v19);

  sub_100047B84(v16, v17, v19);

  sub_100047B84(v4, v6, v18);
}

uint64_t sub_10007A358@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = static HorizontalAlignment.center.getter();
  v5 = static VerticalAlignment.firstTextBaseline.getter();
  v6 = Image.init(systemName:)();
  v7 = *a1;
  result = Image.init(systemName:)();
  v9 = 0.0;
  if (v7)
  {
    v10 = 1.0;
  }

  else
  {
    v10 = 0.0;
  }

  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  if (!v7)
  {
    v9 = 1.0;
  }

  *(a2 + 24) = v10;
  *(a2 + 32) = result;
  *(a2 + 40) = v9;
  return result;
}

double sub_10007A40C()
{
  v1 = v0;
  v2 = sub_10002B6CC(&qword_10032E708);
  __chkstk_darwin(v2 - 8);
  v4 = &v14 - v3;
  v5 = objc_opt_self();
  v6 = type metadata accessor for SilentModeHUDPlatter();
  sub_10004A34C(v4);
  v7 = type metadata accessor for DynamicTypeSize();
  (*(*(v7 - 8) + 56))(v4, 0, 1, v7);
  v8 = UIContentSizeCategory.init(_:)();
  v9 = [objc_opt_self() traitCollectionWithPreferredContentSizeCategory:v8];

  v10 = [v5 preferredFontForTextStyle:UIFontTextStyleBody compatibleWithTraitCollection:v9];
  [v10 _bodyLeading];
  v12 = v11;

  return v12 * 0.5 + *(v1 + *(v6 + 24));
}

uint64_t sub_10007A5FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SilentModeHUDPlatter();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10007A660(uint64_t a1)
{
  v2 = type metadata accessor for SilentModeHUDPlatter();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10007A6C0()
{
  v1 = *(sub_10002B6CC(&qword_10032DD18) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = v0 + *(sub_10002B6CC(&qword_10032E5E0) + 44);
  v5 = v4 + *(type metadata accessor for SilentModeHUDPlatter() + 20);
  sub_10002B6CC(&qword_10032CEF8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for DynamicTypeSize();
    (*(*(v6 - 8) + 8))(v5 + v2, v6);
  }

  else
  {
  }

  return _swift_deallocObject(v0, v2 + v3);
}

uint64_t sub_10007A800()
{
  v1 = *(sub_10002B6CC(&qword_10032DD18) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_100069C7C(v2);
}

uint64_t sub_10007A898(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = sub_10002B6CC(&qword_10032E5F8);
    v11 = *(*(v10 - 8) + 48);
    v12 = &a1[*(a3 + 20)];

    return v11(v12, a2, v10);
  }
}

_BYTE *sub_10007A968(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v7 = sub_10002B6CC(&qword_10032E5F8);
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 20)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_10007AA14()
{
  sub_10007AA98();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_10007AA98()
{
  if (!qword_10032E668)
  {
    type metadata accessor for DynamicTypeSize();
    v0 = type metadata accessor for Environment();
    if (!v1)
    {
      atomic_store(v0, &qword_10032E668);
    }
  }
}

uint64_t sub_10007ABE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), uint64_t (*a6)(char *))
{
  a5(0);
  __chkstk_darwin();
  v9 = &v12 - v8;
  (*(v10 + 16))(&v12 - v8, a1);
  return a6(v9);
}

uint64_t sub_10007ACF4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002B6CC(&qword_10032E710);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10007AD64(uint64_t a1)
{
  v2 = sub_10002B6CC(&qword_10032E710);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10007ADD0()
{
  result = qword_10032E718;
  if (!qword_10032E718)
  {
    sub_10002CAF8(&qword_10032E6F8);
    sub_10007AE88();
    sub_10002CD18(&qword_10032E760, &qword_10032E700);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10032E718);
  }

  return result;
}

unint64_t sub_10007AE88()
{
  result = qword_10032E720;
  if (!qword_10032E720)
  {
    sub_10002CAF8(&qword_10032E6B0);
    sub_10007AF40();
    sub_10002CD18(&qword_10032D808, &qword_10032D7F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10032E720);
  }

  return result;
}

unint64_t sub_10007AF40()
{
  result = qword_10032E728;
  if (!qword_10032E728)
  {
    sub_10002CAF8(&qword_10032E6A8);
    sub_10007AFF8();
    sub_10002CD18(&unk_10032FEB0, &qword_10032C270);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10032E728);
  }

  return result;
}

unint64_t sub_10007AFF8()
{
  result = qword_10032E730;
  if (!qword_10032E730)
  {
    sub_10002CAF8(&qword_10032E6F0);
    sub_10007B10C(&qword_10032E738, &qword_10032E6E8, &unk_10029A988, sub_10007B0DC);
    sub_10002CD18(&qword_10032C790, &qword_10032C798);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10032E730);
  }

  return result;
}

uint64_t sub_10007B10C(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_10002CAF8(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10007B190()
{
  result = qword_10032E748;
  if (!qword_10032E748)
  {
    sub_10002CAF8(&qword_10032E6D8);
    sub_10002CD18(&qword_10032E750, &qword_10032E758);
    sub_10002CD18(&qword_10032D458, &qword_10032D460);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10032E748);
  }

  return result;
}

double sub_10007B274@<D0>(uint64_t a1@<X8>)
{
  v2 = static HorizontalAlignment.center.getter();
  v23 = 1;
  sub_10007B424(&v12);
  v30 = v18;
  v31 = v19;
  v32 = v20;
  v26 = v14;
  v27 = v15;
  v28 = v16;
  v29 = v17;
  v24 = v12;
  v25 = v13;
  v34[6] = v18;
  v34[7] = v19;
  v34[8] = v20;
  v34[2] = v14;
  v34[3] = v15;
  v34[4] = v16;
  v34[5] = v17;
  v33 = v21;
  v35 = v21;
  v34[0] = v12;
  v34[1] = v13;
  sub_10003AFFC(&v24, &v11, &qword_10032E768);
  sub_10002C51C(v34, &qword_10032E768);
  *&v22[103] = v30;
  *&v22[119] = v31;
  *&v22[135] = v32;
  *&v22[39] = v26;
  *&v22[55] = v27;
  *&v22[71] = v28;
  *&v22[87] = v29;
  *&v22[7] = v24;
  v22[151] = v33;
  *&v22[23] = v25;
  v3 = v23;
  v4 = static Color.black.getter();
  v5 = static Edge.Set.all.getter();
  v6 = *&v22[112];
  *(a1 + 113) = *&v22[96];
  *(a1 + 129) = v6;
  *(a1 + 145) = *&v22[128];
  v7 = *&v22[48];
  *(a1 + 49) = *&v22[32];
  *(a1 + 65) = v7;
  v8 = *&v22[80];
  *(a1 + 81) = *&v22[64];
  *(a1 + 97) = v8;
  result = *v22;
  v10 = *&v22[16];
  *(a1 + 17) = *v22;
  *a1 = v2;
  *(a1 + 8) = 0;
  *(a1 + 16) = v3;
  *(a1 + 161) = *&v22[144];
  *(a1 + 33) = v10;
  *(a1 + 176) = v4;
  *(a1 + 184) = v5;
  *(a1 + 185) = 1;
  *(a1 + 192) = sub_10007B780;
  *(a1 + 200) = 0;
  *(a1 + 208) = 0;
  *(a1 + 216) = 0;
  return result;
}

uint64_t sub_10007B424@<X0>(uint64_t a1@<X8>)
{
  v2 = static VerticalAlignment.center.getter();
  v12[0] = 1;
  sub_10007B660(&v25);
  v17 = *v26;
  v18 = *&v26[16];
  v19[0] = *&v26[32];
  *(v19 + 9) = *&v26[41];
  v16 = v25;
  v20[2] = *&v26[16];
  v21[0] = *&v26[32];
  *(v21 + 9) = *&v26[41];
  v20[0] = v25;
  v20[1] = *v26;
  sub_10003AFFC(&v16, v22, &qword_10032E770);
  sub_10002C51C(v20, &qword_10032E770);
  *(&v15[1] + 7) = v17;
  *(&v15[2] + 7) = v18;
  *(&v15[3] + 7) = v19[0];
  v15[4] = *(v19 + 9);
  *(v15 + 7) = v16;
  v3 = static Color.white.getter();
  KeyPath = swift_getKeyPath();
  v14 = 1;
  v22[0] = v2;
  v22[1] = 0;
  v23[0] = 1;
  *&v23[1] = v15[0];
  *&v23[17] = v15[1];
  *&v23[33] = v15[2];
  *&v23[49] = v15[3];
  *&v23[65] = v15[4];
  *&v23[88] = KeyPath;
  v24 = v3;
  *&v13[55] = *&v23[32];
  *&v13[39] = *&v23[16];
  *&v13[23] = *v23;
  *&v13[7] = v2;
  *&v13[119] = v3;
  *&v13[103] = *&v23[80];
  *&v13[87] = *&v23[64];
  *&v13[71] = *&v23[48];
  v12[120] = 1;
  *a1 = 0;
  *(a1 + 8) = 1;
  v5 = *v13;
  v6 = *&v13[16];
  v7 = *&v13[32];
  *(a1 + 57) = *&v13[48];
  *(a1 + 41) = v7;
  *(a1 + 25) = v6;
  *(a1 + 9) = v5;
  v8 = *&v13[64];
  v9 = *&v13[80];
  v10 = *&v13[96];
  *(a1 + 120) = *&v13[111];
  *(a1 + 105) = v10;
  *(a1 + 89) = v9;
  *(a1 + 73) = v8;
  *(a1 + 136) = 0;
  *(a1 + 144) = 1;
  v25 = v2;
  v26[0] = 1;
  *&v26[1] = v15[0];
  v27 = v15[4];
  *&v26[49] = v15[3];
  *&v26[33] = v15[2];
  *&v26[17] = v15[1];
  v28 = KeyPath;
  v29 = v3;
  sub_10003AFFC(v22, v12, &qword_10032E778);
  return sub_10002C51C(&v25, &qword_10032E778);
}

uint64_t sub_10007B660@<X0>(uint64_t a1@<X8>)
{
  LocalizedStringKey.init(stringLiteral:)();
  v2 = Text.init(_:tableName:bundle:comment:)();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  KeyPath = swift_getKeyPath();
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = v2;
  *(a1 + 24) = v4;
  *(a1 + 32) = v6 & 1;
  *(a1 + 40) = v8;
  *(a1 + 48) = KeyPath;
  *(a1 + 56) = 1;
  *(a1 + 64) = 0;
  *(a1 + 72) = 1;
  sub_100047B94(v2, v4, v6 & 1);

  sub_100047B84(v2, v4, v6 & 1);
}

uint64_t sub_10007B780()
{
  v0 = type metadata accessor for AccessibilityNotification.ScreenChanged();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  memset(v5, 0, sizeof(v5));
  AccessibilityNotification.ScreenChanged.init(_:)();
  _AccessibilityNotifications.post()();
  return (*(v1 + 8))(v3, v0);
}

void sub_10007B860()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v31 - v5;
  v7 = [objc_opt_self() mainDisplay];
  v8 = objc_allocWithZone(BKSDisplayRenderOverlayDescriptor);
  v9 = String._bridgeToObjectiveC()();
  v10 = [v8 initWithName:v9 display:v7];

  v11 = [objc_allocWithZone(BKSDisplayRenderOverlay) initWithDescriptor:v10];
  if (v11)
  {
    v12 = v11;
    [v11 present];
    [v12 freeze];
  }

  else
  {
    v13 = Logger.common.unsafeMutableAddressor();
    (*(v1 + 16))(v6, v13, v0);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "Unable to create overlay for exiting ClarityUI.", v16, 2u);
    }

    (*(v1 + 8))(v6, v0);
  }

  v17 = [objc_allocWithZone(CLFSystemShellSwitcher) init];
  v34 = 0;
  v18 = [v17 setClarityBoardEnabled:0 error:&v34];

  if (v18)
  {
    v19 = v34;
  }

  else
  {
    v20 = v34;
    v21 = _convertNSErrorToError(_:)();

    swift_willThrow();
    v22 = Logger.common.unsafeMutableAddressor();
    (*(v1 + 16))(v4, v22, v0);
    swift_errorRetain();
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v32 = v4;
      v33 = v21;
      v27 = v26;
      v34 = v26;
      *v25 = 136315138;
      swift_errorRetain();
      sub_10002B6CC(&qword_10032C1A0);
      v28 = String.init<A>(describing:)();
      v30 = sub_10005766C(v28, v29, &v34);

      *(v25 + 4) = v30;
      _os_log_impl(&_mh_execute_header, v23, v24, "Unable to exit ClarityUI: %s", v25, 0xCu);
      sub_10002C9B0(v27);

      (*(v1 + 8))(v32, v0);
    }

    else
    {

      (*(v1 + 8))(v4, v0);
    }
  }
}

unint64_t sub_10007BCF0()
{
  result = qword_10032E780;
  if (!qword_10032E780)
  {
    sub_10002CAF8(&qword_10032E788);
    sub_10007BD7C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10032E780);
  }

  return result;
}

unint64_t sub_10007BD7C()
{
  result = qword_10032E790;
  if (!qword_10032E790)
  {
    sub_10002CAF8(&qword_10032E798);
    sub_10007BE08();
    sub_100030F38();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10032E790);
  }

  return result;
}

unint64_t sub_10007BE08()
{
  result = qword_10032E7A0;
  if (!qword_10032E7A0)
  {
    sub_10002CAF8(&qword_10032E7A8);
    sub_10002CD18(&qword_10032E7B0, &qword_10032E7B8);
    sub_10002CD18(&qword_10032C790, &qword_10032C798);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10032E7A0);
  }

  return result;
}

uint64_t sub_10007BEEC(uint64_t TupleTypeMetadata, unint64_t a2, uint64_t a3)
{
  v5 = TupleTypeMetadata;
  if (a2 == 1)
  {
    v6 = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    __chkstk_darwin(TupleTypeMetadata);
    v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (a2)
    {
      v9 = 0;
      v10 = a3 & 0xFFFFFFFFFFFFFFFELL;
      if (a2 < 4)
      {
        goto LABEL_9;
      }

      if (&v8[-v10] < 0x20)
      {
        goto LABEL_9;
      }

      v9 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      v11 = (v10 + 16);
      v12 = v8 + 16;
      v13 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v14 = *v11;
        *(v12 - 1) = *(v11 - 1);
        *v12 = v14;
        v11 += 2;
        v12 += 2;
        v13 -= 4;
      }

      while (v13);
      if (v9 != a2)
      {
LABEL_9:
        v15 = a2 - v9;
        v16 = 8 * v9;
        v17 = &v8[8 * v9];
        v18 = (v10 + v16);
        do
        {
          v19 = *v18++;
          *v17 = v19;
          v17 += 8;
          --v15;
        }

        while (v15);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v6 = TupleTypeMetadata;
  }

  __chkstk_darwin(TupleTypeMetadata);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v22 = (a3 & 0xFFFFFFFFFFFFFFFELL);
    v23 = (v6 + 32);
    v24 = a2;
    do
    {
      if (a2 == 1)
      {
        v25 = 0;
      }

      else
      {
        v25 = *v23;
      }

      v27 = *v22++;
      v26 = v27;
      v28 = *v5++;
      (*(*(v26 - 8) + 16))(&v21[v25], v28);
      v23 += 4;
      --v24;
    }

    while (v24);
  }

  return TupleView.init(_:)();
}

uint64_t sub_10007C0BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for _ConditionalContent.Storage();
  __chkstk_darwin(v4);
  (*(*(a2 - 8) + 16))(&v7 - v5, a1, a2);
  swift_storeEnumTagMultiPayload();
  return _ConditionalContent<>.init(storage:)();
}

uint64_t sub_10007C1B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for _ConditionalContent.Storage();
  __chkstk_darwin(v5);
  (*(*(a3 - 8) + 16))(&v8 - v6, a1, a3);
  swift_storeEnumTagMultiPayload();
  return _ConditionalContent<>.init(storage:)();
}

double sub_10007C2AC()
{
  sub_10002B6CC(&qword_10032E950);
  State.wrappedValue.getter();
  return v1;
}

__n128 sub_10007C308@<Q0>(uint64_t a1@<X8>)
{
  sub_10002B6CC(&qword_10032E950);
  State.projectedValue.getter();
  result = v5;
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 32) = v6;
  return result;
}

uint64_t sub_10007C370@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v87 = a2;
  v92 = a1;
  v4 = *(a1 + 16);
  v71 = *(v4 - 8);
  __chkstk_darwin(a1);
  v6 = &v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ModifiedContent();
  v73 = *(v7 - 8);
  __chkstk_darwin(v7);
  v72 = &v69 - v8;
  v91 = v9;
  v10 = type metadata accessor for ModifiedContent();
  v75 = *(v10 - 8);
  __chkstk_darwin(v10);
  v74 = &v69 - v11;
  sub_10002CAF8(&qword_10032E900);
  v89 = v10;
  v12 = type metadata accessor for ModifiedContent();
  v77 = *(v12 - 8);
  __chkstk_darwin(v12);
  v76 = &v69 - v13;
  v88 = v14;
  v15 = type metadata accessor for ModifiedContent();
  v79 = *(v15 - 8);
  __chkstk_darwin(v15);
  v78 = &v69 - v16;
  v86 = v17;
  v18 = type metadata accessor for ModifiedContent();
  v19 = *(v18 - 8);
  v20 = __chkstk_darwin(v18);
  v81 = &v69 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v80 = &v69 - v22;
  sub_10002CAF8(&qword_10032E908);
  v82 = v4;
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata3();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for HStack();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for VStack();
  swift_getWitnessTable();
  v23 = type metadata accessor for GeometryReader();
  v90 = v18;
  v24 = type metadata accessor for _ConditionalContent();
  v84 = *(v24 - 8);
  v85 = v24;
  v25 = __chkstk_darwin(v24);
  v83 = &v69 - v26;
  if (v3[4])
  {
    v27 = swift_allocObject();
    v28 = v92;
    v29 = *(v92 + 24);
    *(v27 + 16) = v82;
    *(v27 + 24) = v29;
    v30 = v3[3];
    *(v27 + 64) = v3[2];
    *(v27 + 80) = v30;
    *(v27 + 96) = v3[4];
    *(v27 + 105) = *(v3 + 73);
    v31 = v3[1];
    *(v27 + 32) = *v3;
    *(v27 + 48) = v31;
    (*(*(v28 - 8) + 16))(&v125, v3);
    v127 = GeometryReader.init(content:)();
    v128 = v32;
    WitnessTable = swift_getWitnessTable();
    sub_100086FE8(&v127, v23, WitnessTable);

    v82 = v126;
    v103 = v125;
    v104 = v126;
    sub_100086FE8(&v103, v23, WitnessTable);
    v103 = v127;
    v104 = v128;
    v101 = v29;
    v102 = &protocol witness table for _FrameLayout;
    v99 = swift_getWitnessTable();
    v100 = &protocol witness table for _PositionLayout;
    v34 = swift_getWitnessTable();
    v35 = sub_10002CD18(&qword_10032E930, &qword_10032E900);
    v97 = v34;
    v98 = v35;
    v95 = swift_getWitnessTable();
    v96 = &protocol witness table for _SafeAreaRegionsIgnoringLayout;
    v93 = swift_getWitnessTable();
    v94 = &protocol witness table for _FlexFrameLayout;
    swift_getWitnessTable();
    v36 = v83;
    sub_10007C0BC(&v103, v23);
  }

  else
  {
    (*(v3 + 6))(v25);
    v132.origin.x = sub_10007C2AC();
    CGRectGetWidth(v132);
    v69 = v19;
    v70 = v23;
    v133.origin.x = sub_10007C2AC();
    CGRectGetHeight(v133);
    static Alignment.center.getter();
    v37 = v92;
    v38 = *(v92 + 24);
    v39 = v72;
    v40 = v82;
    View.frame(width:height:alignment:)();
    v71[1](v6, v40);
    v134.origin.x = sub_10007C2AC();
    CGRectGetMidX(v134);
    v135.origin.x = sub_10007C2AC();
    CGRectGetMidY(v135);
    v130 = v38;
    v131 = &protocol witness table for _FrameLayout;
    v71 = &protocol conformance descriptor for <> ModifiedContent<A, B>;
    v41 = v91;
    v42 = swift_getWitnessTable();
    v43 = v74;
    View.position(x:y:)();
    (*(v73 + 8))(v39, v41);
    v44 = swift_allocObject();
    *(v44 + 16) = v40;
    *(v44 + 24) = v38;
    v45 = v3[3];
    *(v44 + 64) = v3[2];
    *(v44 + 80) = v45;
    *(v44 + 96) = v3[4];
    *(v44 + 105) = *(v3 + 73);
    v46 = v3[1];
    *(v44 + 32) = *v3;
    *(v44 + 48) = v46;
    v127 = sub_10007EAB8;
    v128 = v44;
    v129 = 0;
    (*(*(v37 - 8) + 16))(&v125, v3, v37);
    static Alignment.center.getter();
    sub_10002B6CC(&qword_10032E910);
    v123 = v42;
    v124 = &protocol witness table for _PositionLayout;
    v47 = v89;
    v48 = swift_getWitnessTable();
    sub_10007EAC4();
    v49 = v76;
    View.background<A>(_:alignment:)();

    (*(v75 + 8))(v43, v47);
    static SafeAreaRegions.all.getter();
    static Edge.Set.all.getter();
    v50 = sub_10002CD18(&qword_10032E930, &qword_10032E900);
    v121 = v48;
    v122 = v50;
    v51 = v88;
    v52 = swift_getWitnessTable();
    v53 = v78;
    View.ignoresSafeArea(_:edges:)();
    (*(v77 + 8))(v49, v51);
    static Alignment.center.getter();
    v119 = v52;
    v120 = &protocol witness table for _SafeAreaRegionsIgnoringLayout;
    v67 = v86;
    v68 = swift_getWitnessTable();
    v54 = v81;
    View.frame(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    (*(v79 + 8))(v53, v67);
    v117 = v68;
    v55 = v70;
    v118 = &protocol witness table for _FlexFrameLayout;
    v56 = v90;
    v57 = swift_getWitnessTable();
    v58 = v80;
    sub_100086FE8(v54, v56, v57);
    v59 = *(v69 + 8);
    v59(v54, v56);
    sub_100086FE8(v58, v56, v57);
    swift_getWitnessTable();
    v36 = v83;
    sub_10007C1B4(v54, v55, v56);
    v59(v54, v56);
    v59(v58, v56);
  }

  v60 = swift_getWitnessTable();
  v115 = *(v92 + 24);
  v116 = &protocol witness table for _FrameLayout;
  v113 = swift_getWitnessTable();
  v114 = &protocol witness table for _PositionLayout;
  v61 = swift_getWitnessTable();
  v62 = sub_10002CD18(&qword_10032E930, &qword_10032E900);
  v111 = v61;
  v112 = v62;
  v109 = swift_getWitnessTable();
  v110 = &protocol witness table for _SafeAreaRegionsIgnoringLayout;
  v107 = swift_getWitnessTable();
  v108 = &protocol witness table for _FlexFrameLayout;
  v63 = swift_getWitnessTable();
  v105 = v60;
  v106 = v63;
  v64 = v85;
  v65 = swift_getWitnessTable();
  sub_100086FE8(v36, v64, v65);
  return (*(v84 + 8))(v36, v64);
}

uint64_t sub_10007D0CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v19[1] = a5;
  sub_10002CAF8(&qword_10032E908);
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata3();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for HStack();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  v9 = type metadata accessor for VStack();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = v19 - v14;
  v19[4] = a3;
  v19[5] = a4;
  v19[6] = a2;
  v19[7] = a1;
  static HorizontalAlignment.center.getter();
  VStack.init(alignment:spacing:content:)();
  WitnessTable = swift_getWitnessTable();
  sub_100086FE8(v13, v9, WitnessTable);
  v17 = *(v10 + 8);
  v17(v13, v9);
  sub_100086FE8(v15, v9, WitnessTable);
  return (v17)(v15, v9);
}

uint64_t sub_10007D374@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v28 = a4;
  v29 = a2;
  v27 = a1;
  v31 = a5;
  sub_10002CAF8(&qword_10032E908);
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata3();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  v6 = type metadata accessor for HStack();
  v25 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v24 - v7;
  v9 = type metadata accessor for ModifiedContent();
  v30 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v24 - v10;
  v12 = type metadata accessor for ModifiedContent();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v26 = &v24 - v17;
  v32 = a3;
  v33 = v28;
  v34 = v27;
  v35 = v29;
  static VerticalAlignment.center.getter();
  HStack.init(alignment:spacing:content:)();
  static SafeAreaRegions.all.getter();
  static Edge.Set.all.getter();
  WitnessTable = swift_getWitnessTable();
  View.ignoresSafeArea(_:edges:)();
  (*(v25 + 8))(v8, v6);
  static Alignment.center.getter();
  v41[4] = WitnessTable;
  v41[5] = &protocol witness table for _SafeAreaRegionsIgnoringLayout;
  v23 = swift_getWitnessTable();
  View.frame(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  (*(v30 + 8))(v11, v9);
  v41[2] = v23;
  v41[3] = &protocol witness table for _FlexFrameLayout;
  v19 = swift_getWitnessTable();
  v20 = v26;
  sub_100086FE8(v16, v12, v19);
  v21 = *(v13 + 8);
  v21(v16, v12);
  (*(v13 + 16))(v16, v20, v12);
  v39 = 0;
  v40 = 1;
  v41[0] = v16;
  v41[1] = &v39;
  v38[0] = v12;
  v38[1] = &type metadata for Spacer;
  v36 = v19;
  v37 = &protocol witness table for Spacer;
  sub_10007BEEC(v41, 2uLL, v38);
  v21(v20, v12);
  return (v21)(v16, v12);
}

uint64_t sub_10007D858@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v48 = a4;
  v41 = a2;
  v47 = a5;
  v39 = type metadata accessor for EnvironmentValues();
  v38 = *(v39 - 8);
  v7 = __chkstk_darwin(v39);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a3 - 8);
  __chkstk_darwin(v7);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for ModifiedContent();
  v44 = *(v13 - 8);
  __chkstk_darwin(v13);
  v15 = &v38 - v14;
  v16 = type metadata accessor for ModifiedContent();
  v42 = *(v16 - 8);
  v17 = __chkstk_darwin(v16);
  v46 = &v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v21 = &v38 - v20;
  v22 = __chkstk_darwin(v19);
  v45 = &v38 - v23;
  v43 = *(a1 + 40);
  (*(a1 + 48))(v22);
  static Edge.Set.top.getter();
  View.padding(_:_:)();
  (*(v10 + 8))(v12, a3);
  v40 = static Edge.Set.horizontal.getter();
  GeometryProxy.size.getter();
  v60 = *(a1 + 72);
  v61 = *(a1 + 88);
  if (v61 != 1)
  {
    v26 = v24;
    v27 = v25;

    static os_log_type_t.fault.getter();
    v28 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_10007EBEC(&v60);
    (*(v38 + 8))(v9, v39);
    v25 = v27;
    v24 = v26;
  }

  v29 = v43;
  v30 = v43 ^ 1;
  sub_10007EC54(v24, v25);
  v59[5] = v48;
  v59[6] = &protocol witness table for _PaddingLayout;
  WitnessTable = swift_getWitnessTable();
  View.padding(_:_:)();
  (*(v44 + 8))(v15, v13);
  v59[3] = WitnessTable;
  v59[4] = &protocol witness table for _PaddingLayout;
  v32 = swift_getWitnessTable();
  v33 = v45;
  sub_100086FE8(v21, v16, v32);
  v34 = v42;
  v35 = *(v42 + 8);
  v35(v21, v16);
  v56 = 0;
  v57 = v29;
  v58 = v30;
  v59[0] = &v56;
  v36 = v46;
  (*(v34 + 16))(v46, v33, v16);
  v53 = 0;
  v54 = v30;
  v55 = v29;
  v59[1] = v36;
  v59[2] = &v53;
  v52[0] = sub_10002B6CC(&qword_10032E908);
  v52[1] = v16;
  v52[2] = v52[0];
  v49 = sub_10007EE34();
  v50 = v32;
  v51 = v49;
  sub_10007BEEC(v59, 3uLL, v52);
  v35(v33, v16);
  return (v35)(v36, v16);
}

double sub_10007DDEC@<D0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  GeometryProxy.size.getter();
  v5 = v4 * 0.5;
  sub_10007EEB0();
  v7 = v6 * 0.5;
  v8 = *(a1 + 40);
  sub_10007C308(v13);
  v9 = v13[0];
  v10 = v13[1];
  *a2 = v5;
  *(a2 + 8) = v7;
  *(a2 + 16) = v8;
  *(a2 + 24) = v9;
  *(a2 + 32) = v10;
  result = *&v14;
  v12 = v15;
  *(a2 + 40) = v14;
  *(a2 + 56) = v12;
  return result;
}

uint64_t sub_10007DEE8(void *a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v19 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DispatchQoS();
  v6 = *(v18 - 8);
  __chkstk_darwin(v18);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10002C9FC(0, &qword_10032D9C8);
  v9 = static OS_dispatch_queue.main.getter();
  v10 = swift_allocObject();
  v11 = *(v1 + 48);
  *(v10 + 48) = *(v1 + 32);
  *(v10 + 64) = v11;
  v12 = *(v1 + 64);
  v13 = *(v1 + 16);
  *(v10 + 16) = *v1;
  *(v10 + 32) = v13;
  *(v10 + 80) = v12;
  *(v10 + 88) = a1;
  aBlock[4] = sub_10007F810;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000357AC;
  aBlock[3] = &unk_100300778;
  v14 = _Block_copy(aBlock);
  sub_10007F834(v1, &v20);
  v15 = a1;

  static DispatchQoS.unspecified.getter();
  v20 = _swiftEmptyArrayStorage;
  sub_10007F86C();
  sub_10002B6CC(&qword_10032D9D0);
  sub_10002CD18(&qword_10032E990, &qword_10032D9D0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v14);

  (*(v19 + 8))(v5, v3);
  return (*(v6 + 8))(v8, v18);
}

id sub_10007E240()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = objc_allocWithZone(type metadata accessor for StatusBarSafeAreaViewController());
  return sub_10007E3BC(v3, v1, v2);
}

uint64_t sub_10007E2CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10007F8C4();

  return static UIViewControllerRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_10007E330(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10007F8C4();

  return static UIViewControllerRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_10007E394()
{
  sub_10007F8C4();
  UIViewControllerRepresentable.body.getter();
  __break(1u);
}

id sub_10007E3BC(char a1, double a2, double a3)
{
  v4 = &v3[OBJC_IVAR____TtC12ClarityBoard31StatusBarSafeAreaViewController_safeRect];
  *v4 = 0u;
  v4[1] = 0u;
  v5 = &v3[OBJC_IVAR____TtC12ClarityBoard31StatusBarSafeAreaViewController_maxAllowedSize];
  *v5 = 0;
  *(v5 + 1) = 0;
  v5[16] = 1;
  v6 = &v3[OBJC_IVAR____TtC12ClarityBoard31StatusBarSafeAreaViewController_cornerRadii];
  *v6 = 0u;
  v6[1] = 0u;
  v3[OBJC_IVAR____TtC12ClarityBoard31StatusBarSafeAreaViewController_boundingRectRequiresUpdate] = 1;
  *&v3[OBJC_IVAR____TtC12ClarityBoard31StatusBarSafeAreaViewController_widthShrinkFraction] = 0x3FE999999999999ALL;
  v7 = &v3[OBJC_IVAR____TtC12ClarityBoard31StatusBarSafeAreaViewController_idealSize];
  *v7 = a2;
  v7[1] = a3;
  if (a1)
  {
    v8 = 2;
  }

  else
  {
    v8 = 1;
  }

  *&v3[OBJC_IVAR____TtC12ClarityBoard31StatusBarSafeAreaViewController_corner] = v8;
  v10.receiver = v3;
  v10.super_class = type metadata accessor for StatusBarSafeAreaViewController();
  return objc_msgSendSuper2(&v10, "initWithNibName:bundle:", 0, 0);
}

void sub_10007E5F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (sub_100015CE4() != 30)
  {
    v7 = OBJC_IVAR____TtC12ClarityBoard31StatusBarSafeAreaViewController_maxAllowedSize;
    v8 = &v3[OBJC_IVAR____TtC12ClarityBoard31StatusBarSafeAreaViewController_maxAllowedSize];
    if (v3[OBJC_IVAR____TtC12ClarityBoard31StatusBarSafeAreaViewController_maxAllowedSize + 16])
    {
      v7 = OBJC_IVAR____TtC12ClarityBoard31StatusBarSafeAreaViewController_idealSize;
      v9 = &v3[OBJC_IVAR____TtC12ClarityBoard31StatusBarSafeAreaViewController_idealSize];
    }

    else
    {
      v9 = &v3[OBJC_IVAR____TtC12ClarityBoard31StatusBarSafeAreaViewController_maxAllowedSize];
    }

    v10 = v9[1];
    v11 = *&v3[v7];
    v12 = [v3 view];
    if (!v12)
    {
      __break(1u);
      return;
    }

    v13 = v12;
    [v12 _rectTuckedInBoundingPathCorner:*&v3[OBJC_IVAR____TtC12ClarityBoard31StatusBarSafeAreaViewController_corner] withSize:v11 cornerRadii:v10 minimumPadding:{0.0, 0.0, 0.0, 0.0, 0.0}];
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v21 = v20;

    v37.origin.x = v15;
    v37.origin.y = v17;
    v37.size.width = v19;
    v37.size.height = v21;
    if (CGRectIsEmpty(v37))
    {
      if (a1 > 10)
      {
        return;
      }

      v22 = *&v3[OBJC_IVAR____TtC12ClarityBoard31StatusBarSafeAreaViewController_idealSize + 8];
      *v8 = v11 * 0.8;
      *(v8 + 1) = v22;
      v8[16] = 0;
      v34 = 0u;
      v35 = 0u;
      v36 = 1;
      v23 = a1 + 1;
      v24 = &v34;
      goto LABEL_12;
    }

    if ((*(a2 + 32) & 1) != 0 || (v25 = *(a2 + 8), v33 = v11, v27 = *(a2 + 16), v26 = *(a2 + 24), v38.origin.x = v15, v38.origin.y = v17, v38.size.width = v19, v38.size.height = v21, v31 = *a2, MinY = CGRectGetMinY(v38), v39.origin.x = v31, v39.origin.y = v25, v39.size.width = v27, v39.size.height = v26, v11 = v33, vabdd_f64(MinY, CGRectGetMinY(v39)) > 0.00001))
    {
      v28 = *&v3[OBJC_IVAR____TtC12ClarityBoard31StatusBarSafeAreaViewController_idealSize + 8];
      *v8 = v11 * 0.8;
      *(v8 + 1) = v28;
      v8[16] = 0;
      *&v34 = v15;
      *(&v34 + 1) = v17;
      *&v35 = v19;
      *(&v35 + 1) = v21;
      v36 = 0;
      v24 = &v34;
      v23 = 0;
LABEL_12:
      v29 = 0;
LABEL_13:
      sub_10007E5F0(v23, v24, v29);
      return;
    }

    if (a3 <= 2)
    {
      v30 = *&v3[OBJC_IVAR____TtC12ClarityBoard31StatusBarSafeAreaViewController_idealSize + 8];
      *v8 = v33 * 0.8;
      *(v8 + 1) = v30;
      v8[16] = 0;
      v29 = a3 + 1;
      v23 = 0;
      v24 = a2;
      goto LABEL_13;
    }
  }
}

id sub_10007E8CC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StatusBarSafeAreaViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10007E94C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 sub_10007E994(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 73) = *(a2 + 73);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_10007E9B8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 89))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10007EA00(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 89) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 89) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10007EAC4()
{
  result = qword_10032E918;
  if (!qword_10032E918)
  {
    sub_10002CAF8(&qword_10032E910);
    sub_10002CD18(&qword_10032E920, &qword_10032E928);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10032E918);
  }

  return result;
}

uint64_t sub_10007EB7C()
{

  sub_100065554(*(v0 + 104), *(v0 + 112), *(v0 + 120));

  return _swift_deallocObject(v0, 121);
}

uint64_t sub_10007EBEC(uint64_t a1)
{
  v2 = sub_10002B6CC(&qword_10032E938);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10007EC54(double a1, double a2)
{
  sub_10002C9FC(0, &qword_10032BF60);
  v4 = [swift_getObjCClassFromMetadata() sharedInstance];
  v5 = [v4 listLayout];

  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  if (v6 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v8 == v9)
  {
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v11 & 1) == 0)
    {
      v13 = [objc_opt_self() currentDevice];
      v14 = [v13 userInterfaceIdiom];

      if (v14 == 1)
      {
        return static ClarityUIMetrics.stackWidthAsPercentageOfScreenPad.getter();
      }

      return static ClarityUIMetrics.componentHorizontalPadding.getter();
    }
  }

  if (a2 >= a1)
  {

    return static ClarityUIMetrics.gridHorizontalPaddingPortrait.getter(v12);
  }

  else
  {

    return static ClarityUIMetrics.gridHorizontalPaddingLandscape.getter(v12);
  }
}

unint64_t sub_10007EE34()
{
  result = qword_10032E940;
  if (!qword_10032E940)
  {
    sub_10002CAF8(&qword_10032E908);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10032E940);
  }

  return result;
}

void sub_10007EEB0()
{
  v0 = [objc_opt_self() sharedApplication];
  v1 = [v0 connectedScenes];

  sub_10002C9FC(0, &qword_10032E958);
  sub_10007F1F4();
  v2 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  if ((v2 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    Set.Iterator.init(_cocoa:)();
    v4 = v23;
    v3 = v24;
    v5 = v25;
    v6 = v26;
    v7 = v27;
  }

  else
  {
    v8 = -1 << *(v2 + 32);
    v3 = v2 + 56;
    v5 = ~v8;
    v9 = -v8;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v7 = v10 & *(v2 + 56);

    v6 = 0;
    v4 = v2;
  }

  v11 = (v5 + 64) >> 6;
  while (1)
  {
    if (v4 < 0)
    {
      if (!__CocoaSet.Iterator.next()() || (swift_dynamicCast(), v16 = v22, v14 = v6, v15 = v7, !v22))
      {
LABEL_24:
        sub_10007F25C();

        return;
      }
    }

    else
    {
      v12 = v6;
      v13 = v7;
      v14 = v6;
      if (!v7)
      {
        while (1)
        {
          v14 = v12 + 1;
          if (__OFADD__(v12, 1))
          {
            break;
          }

          if (v14 >= v11)
          {
            goto LABEL_24;
          }

          v13 = *(v3 + 8 * v14);
          ++v12;
          if (v13)
          {
            goto LABEL_14;
          }
        }

        __break(1u);
        goto LABEL_27;
      }

LABEL_14:
      v15 = (v13 - 1) & v13;
      v16 = *(*(v4 + 48) + ((v14 << 9) | (8 * __clz(__rbit64(v13)))));
      if (!v16)
      {
        goto LABEL_24;
      }
    }

    if (![v16 activationState])
    {
      objc_opt_self();
      v17 = swift_dynamicCastObjCClass();
      if (v17)
      {
        v18 = [v17 statusBarManager];
        if (v18)
        {
          break;
        }
      }
    }

    v6 = v14;
    v7 = v15;
  }

  sub_10007F25C();

  objc_opt_self();
  v19 = swift_dynamicCastObjCClass();
  if (!v19)
  {

    return;
  }

  v20 = [v19 statusBarManager];
  if (v20)
  {
    v21 = v20;
    [v20 statusBarFrame];
    CGRectGetHeight(v28);

    return;
  }

LABEL_27:
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

unint64_t sub_10007F1F4()
{
  result = qword_10032E960;
  if (!qword_10032E960)
  {
    sub_10002C9FC(255, &qword_10032E958);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10032E960);
  }

  return result;
}

__n128 sub_10007F264(uint64_t a1, uint64_t a2)
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

uint64_t sub_10007F288(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_10007F2D0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NotchSide(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_10007F3DC()
{
  sub_10002CAF8(&qword_10032E908);
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata3();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for HStack();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for VStack();
  swift_getWitnessTable();
  type metadata accessor for GeometryReader();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  sub_10002CAF8(&qword_10032E900);
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  type metadata accessor for _ConditionalContent();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_10002CD18(&qword_10032E930, &qword_10032E900);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

unint64_t sub_10007F71C()
{
  result = qword_10032E968;
  if (!qword_10032E968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10032E968);
  }

  return result;
}

unint64_t sub_10007F774()
{
  result = qword_10032E970;
  if (!qword_10032E970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10032E970);
  }

  return result;
}

uint64_t sub_10007F7C8()
{

  return _swift_deallocObject(v0, 96);
}

uint64_t sub_10007F81C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_10007F86C()
{
  result = qword_10032E980;
  if (!qword_10032E980)
  {
    type metadata accessor for DispatchWorkItemFlags();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10032E980);
  }

  return result;
}

unint64_t sub_10007F8C4()
{
  result = qword_10032E9A0;
  if (!qword_10032E9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10032E9A0);
  }

  return result;
}

id sub_10007F960()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PresentedSceneDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10007F9B8(uint64_t a1)
{
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = __CocoaSet.startIndex.getter();
    v5 = v4;
    v6 = __CocoaSet.endIndex.getter();
    v8 = v7;
    v9 = static __CocoaSet.Index.== infix(_:_:)();
    sub_1000811A4(v6, v8, 1);
    if (v9)
    {
LABEL_3:
      sub_1000811A4(v3, v5, v2 != 0);
      return 0;
    }
  }

  else
  {
    v3 = _HashTable.startBucket.getter();
    v5 = *(a1 + 36);
    if (v3 == 1 << *(a1 + 32))
    {
      goto LABEL_3;
    }
  }

  sub_100080DA4(v3, v5, v2 != 0, a1);
  v12 = v11;
  sub_1000811A4(v3, v5, v2 != 0);
  return v12;
}

uint64_t sub_10007FAD4@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for LayoutSubviews();
  sub_10008123C(&unk_10032EA80, &type metadata accessor for LayoutSubviews);
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  if (v9[4] == v9[0])
  {
    v2 = type metadata accessor for LayoutSubview();
    return (*(*(v2 - 8) + 56))(a1, 1, 1, v2);
  }

  else
  {
    v4 = dispatch thunk of Collection.subscript.read();
    v6 = v5;
    v7 = type metadata accessor for LayoutSubview();
    v8 = *(v7 - 8);
    (*(v8 + 16))(a1, v6, v7);
    v4(v9, 0);
    return (*(v8 + 56))(a1, 0, 1, v7);
  }
}

id sub_10007FD54(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v25 - v9;
  v11 = [a1 type];
  if (v11 != 8)
  {
    return (v11 == 8);
  }

  v27 = 8;
  v12 = Logger.common.unsafeMutableAddressor();
  v26 = *(v5 + 16);
  v26(v10, v12, v4);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v25 = v8;
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "Handling event to dismiss lock screen.", v15, 2u);
    v8 = v25;
  }

  v16 = *(v5 + 8);
  v16(v10, v4);
  if ([a1 context])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v29 = 0u;
    v30 = 0u;
  }

  v31[0] = v29;
  v31[1] = v30;
  if (*(&v30 + 1))
  {
    if (swift_dynamicCast())
    {
      v17 = v28;
      goto LABEL_14;
    }
  }

  else
  {
    sub_100081284(v31);
  }

  v26(v8, v12, v4);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&_mh_execute_header, v18, v19, "Unable to find reason for dismissing lock screen.", v20, 2u);
  }

  v16(v8, v4);
  v17 = 8;
LABEL_14:
  result = [objc_opt_self() sharedInstance];
  v11 = v27;
  if (result)
  {
    v22 = result;
    [result resetIdleTimerAndUndimForReason:v17];

    v23 = *(v2 + OBJC_IVAR___CLBLockOverlaySceneDelegate_lockOverlayViewController);
    if (v23)
    {
      v24 = v23;
      sub_10002B6CC(&qword_10032D0B8);
      sub_1000812EC();
      Subject<>.send()();
    }

    return (v11 == 8);
  }

  __break(1u);
  return result;
}

void sub_10008021C()
{
  v1 = v0;
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v61 - v7;
  v9 = sub_10002B6CC(&unk_10032EA60);
  __chkstk_darwin(v9 - 8);
  v11 = &v61 - v10;
  v12 = type metadata accessor for LockOverlayViewController();
  v65.receiver = v1;
  v65.super_class = v12;
  objc_msgSendSuper2(&v65, "viewDidLoad");
  v13 = *&v1[OBJC_IVAR____TtC12ClarityBoard25LockOverlayViewController_dismissPublisher];
  sub_10002C9FC(0, &qword_10032BF60);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();

  v15 = [ObjCClassFromMetadata sharedInstance];
  v62 = [v15 lockScreenDateEnabled];

  v16 = [ObjCClassFromMetadata sharedInstance];
  v61 = [v16 lockScreenClockEnabled];

  *(v11 + 1) = swift_getKeyPath();
  *(v11 + 8) = 0;
  v17 = type metadata accessor for LockScreenView();
  v18 = v17[6];
  *&v11[v18] = swift_getKeyPath();
  sub_10002B6CC(&qword_10032CEF0);
  swift_storeEnumTagMultiPayload();
  v19 = &v11[v17[7]];
  LOBYTE(v63) = 1;
  State.init(wrappedValue:)();
  v20 = *(&v64 + 1);
  *v19 = v64;
  *(v19 + 1) = v20;
  v21 = &v11[v17[8]];
  LOBYTE(v63) = 0;
  State.init(wrappedValue:)();
  v22 = *(&v64 + 1);
  *v21 = v64;
  *(v21 + 1) = v22;
  v23 = &v11[v17[9]];
  LOBYTE(v63) = 0;
  State.init(wrappedValue:)();
  v24 = *(&v64 + 1);
  *v23 = v64;
  *(v23 + 1) = v24;
  Date.init()();
  (*(v3 + 16))(v6, v8, v2);
  State.init(wrappedValue:)();
  (*(v3 + 8))(v8, v2);
  v25 = &v11[v17[11]];
  LOBYTE(v63) = 0;
  State.init(wrappedValue:)();
  v26 = *(&v64 + 1);
  *v25 = v64;
  *(v25 + 1) = v26;
  v27 = v17[12];
  v63 = 0;
  sub_10002B6CC(&qword_10032D8E0);
  State.init(wrappedValue:)();
  *&v11[v27] = v64;
  v28 = &v11[v17[13]];
  *v28 = sub_10005E594;
  *(v28 + 1) = 0;
  v28[16] = 0;
  v29 = v17[14];
  if (qword_10032B4D8 != -1)
  {
    swift_once();
  }

  v30 = qword_1003368B0;
  *&v11[v29] = qword_1003368B0;
  v31 = v17[15];
  v32 = qword_10032B518;
  v33 = v30;
  if (v32 != -1)
  {
    swift_once();
  }

  *&v11[v31] = qword_1003368E8;
  *&v11[v17[16]] = 0;
  v34 = &v11[v17[17]];
  v35 = qword_10032B520;

  if (v35 != -1)
  {
    swift_once();
  }

  type metadata accessor for LockScreenWallpaperMetadataProvider();
  sub_10008123C(&qword_10032EA70, type metadata accessor for LockScreenWallpaperMetadataProvider);

  *v34 = ObservedObject.init(wrappedValue:)();
  v34[1] = v36;
  v37 = objc_opt_self();
  v38 = [v37 defaultCenter];
  NSNotificationCenter.publisher(for:object:)();

  v39 = [v37 defaultCenter];
  NSNotificationCenter.publisher(for:object:)();

  v40 = [v37 defaultCenter];
  NSNotificationCenter.publisher(for:object:)();

  v41 = [v37 defaultCenter];
  NSNotificationCenter.publisher(for:object:)();

  v42 = v17[22];
  v43 = v17[26];
  static ClarityUIMetrics.backButtonPadding.getter();
  *&v11[v43] = v44 * 0.5;
  *v11 = v13;
  v11[v42] = 3;
  v11[v17[23]] = 0;
  v45 = v61;
  v11[v17[24]] = v62;
  v11[v17[25]] = v45;
  v46 = objc_allocWithZone(sub_10002B6CC(&qword_10032EA78));
  v47 = _UIHostingView.init(rootView:)();
  v48 = [v1 view];
  if (v48)
  {
    v49 = v48;
    v50 = v47;
    [v49 addSubview:v50];

    v51 = [v1 view];
    if (v51)
    {
      v52 = v51;
      [v51 bounds];
      v54 = v53;
      v56 = v55;
      v58 = v57;
      v60 = v59;

      [v50 setFrame:{v54, v56, v58, v60}];
      [v50 setAutoresizingMask:18];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

id sub_100080BA4(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

unint64_t sub_100080C10()
{
  result = qword_10032EA58;
  if (!qword_10032EA58)
  {
    sub_10002C9FC(255, &qword_10032EA50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10032EA58);
  }

  return result;
}

uint64_t sub_100080C78(uint64_t a1)
{
  v2 = type metadata accessor for ColorScheme();
  __chkstk_darwin(v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return EnvironmentValues.colorScheme.setter();
}

uint64_t sub_100080D40@<X0>(uint64_t a1@<X8>)
{
  result = EnvironmentValues.displayCornerRadius.getter();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

void sub_100080DA4(unint64_t a1, int a2, char a3, uint64_t a4)
{
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      __CocoaSet.element(at:)();
      sub_10002C9FC(0, &qword_10032EA50);
      swift_dynamicCast();
      return;
    }

    goto LABEL_23;
  }

  if (a3)
  {
    sub_10002C9FC(0, &qword_10032EA50);
    if (__CocoaSet.Index.age.getter() != *(a4 + 36))
    {
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    __CocoaSet.Index.element.getter();
    swift_dynamicCast();
    v4 = v14;
    v7 = NSObject._rawHashValue(seed:)(*(a4 + 40));
    v8 = -1 << *(a4 + 32);
    a1 = v7 & ~v8;
    if ((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1))
    {
      v9 = ~v8;
      do
      {
        v10 = *(*(a4 + 48) + 8 * a1);
        v11 = static NSObject.== infix(_:_:)();

        if (v11)
        {
          goto LABEL_16;
        }

        a1 = (a1 + 1) & v9;
      }

      while (((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1) & 1) != 0);
    }

    __break(1u);
  }

  if ((a1 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= a1)
  {
    goto LABEL_21;
  }

  if (((*(a4 + 8 * (a1 >> 6) + 56) >> a1) & 1) == 0)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    return;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_16:
  }

  v12 = *(*(a4 + 48) + 8 * a1);

  v13 = v12;
}

void sub_100080FC8()
{
  objc_opt_self();
  v1 = [objc_allocWithZone(CLBSecureWindow) initWithWindowScene:swift_dynamicCastObjCClassUnconditional()];
  type metadata accessor for LockOverlayViewController();
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v1 setRootViewController:v2];
  [v1 makeKeyAndVisible];
  v3 = *(v0 + OBJC_IVAR___CLBLockOverlaySceneDelegate_lockOverlayViewController);
  *(v0 + OBJC_IVAR___CLBLockOverlaySceneDelegate_lockOverlayViewController) = v2;

  v4 = *(v0 + OBJC_IVAR___CLBLockOverlaySceneDelegate_window);
  *(v0 + OBJC_IVAR___CLBLockOverlaySceneDelegate_window) = v1;
}

void sub_1000810AC(uint64_t a1)
{
  v1 = sub_10007F9B8(a1);
  if (v1)
  {
    v2 = v1;
    v3 = [v1 key];

    if (v3)
    {
      v4 = [objc_opt_self() sharedInstance];
      if (v4)
      {
        v5 = v4;
        [v4 resetIdleTimerAndUndimForReason:1];

        v6 = [objc_opt_self() defaultCenter];
        [v6 postNotificationName:CLBLockScreenDidReceivedKeyPressNotification object:v3];
      }

      else
      {
        __break(1u);
      }
    }
  }
}

uint64_t sub_1000811A4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_1000811B0@<X0>(uint64_t a1@<X8>)
{
  result = EnvironmentValues.displayCornerRadius.getter();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_10008123C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100081284(uint64_t a1)
{
  v2 = sub_10002B6CC(&qword_10032B680);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1000812EC()
{
  result = qword_10032EE10;
  if (!qword_10032EE10)
  {
    sub_10002CAF8(&qword_10032D0B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10032EE10);
  }

  return result;
}

id sub_10008144C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VoiceControlPresentationManager();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1000814A4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t sub_10008155C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[10] = a4;
  v4[11] = type metadata accessor for MainActor();
  v4[12] = static MainActor.shared.getter();
  v5 = swift_task_alloc();
  v4[13] = v5;
  *v5 = v4;
  v5[1] = sub_100081610;

  return static Task<>.sleep(nanoseconds:)(2000000000);
}

uint64_t sub_100081610()
{
  v2 = *v1;
  *(*v1 + 112) = v0;

  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  if (v0)
  {
    v5 = sub_100081A64;
  }

  else
  {
    *(v2 + 120) = v3;
    *(v2 + 128) = v4;
    v5 = sub_100081774;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_100081774()
{
  v1 = static MainActor.shared.getter();
  *(v0 + 136) = v1;
  if (v1)
  {
    swift_getObjectType();
    v2 = dispatch thunk of Actor.unownedExecutor.getter();
    v4 = v3;
  }

  else
  {
    v2 = 0;
    v4 = 0;
  }

  return _swift_task_switch(sub_100081808, v2, v4);
}

uint64_t sub_100081808()
{
  v1 = v0[10];
  v0[2] = v0;
  v0[3] = sub_1000818B4;
  v2 = swift_continuation_init();
  sub_100081AC8(v2, v1);

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1000818B4()
{
  v1 = *(*v0 + 128);
  v2 = *(*v0 + 120);

  return _swift_task_switch(sub_1000819BC, v2, v1);
}

uint64_t sub_1000819BC()
{
  v1 = v0[14];

  static Task<>.checkCancellation()();
  if (!v1)
  {
    [*(v0[10] + OBJC_IVAR___CLBTransientHUDPresenter_window) setHidden:1];
  }

  v2 = v0[1];

  return v2();
}

uint64_t sub_100081A64()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_100081AC8(uint64_t a1, void *a2)
{
  v4 = objc_opt_self();
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  v14 = sub_100081D64;
  v15 = v5;
  v10 = _NSConcreteStackBlock;
  v11 = 1107296256;
  v12 = sub_1000357AC;
  v13 = &unk_1003007C8;
  v6 = _Block_copy(&v10);
  v7 = a2;

  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  v14 = sub_100081DAC;
  v15 = v8;
  v10 = _NSConcreteStackBlock;
  v11 = 1107296256;
  v12 = sub_1000814A4;
  v13 = &unk_100300818;
  v9 = _Block_copy(&v10);

  [v4 animateWithDuration:v6 animations:v9 completion:0.3];
  _Block_release(v9);
  _Block_release(v6);
}

id sub_100081C88()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TransientHUDPresenter();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100081D2C()
{

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_100081D84(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

__n128 sub_100081DBC(uint64_t a1, uint64_t a2)
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

uint64_t sub_100081DD0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_100081E18(uint64_t result, int a2, int a3)
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

uint64_t sub_100081E94@<X0>(__int128 *a1@<X0>, void *a2@<X8>)
{
  v28 = a2;
  v3 = sub_10002B6CC(&qword_10032EAF8);
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v27 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v26 = &v25 - v7;
  v8 = a1[1];
  v37 = *a1;
  v38 = v8;
  sub_10002B6CC(&qword_10032C9B0);
  Binding.projectedValue.getter();
  v25 = v29;
  v9 = v30;
  v10 = *(a1 + 32);
  v12 = *(a1 + 5);
  v11 = *(a1 + 6);
  v13 = *(a1 + 7);

  static Font.title.getter();
  v14 = Font.bold()();

  static Font.caption2.getter();
  v15 = Font.bold()();

  v36 = 1;
  v29 = v25;
  v30 = v9;
  LOBYTE(v31) = v10;
  *(&v31 + 1) = 1;
  *(&v31 + 1) = v12;
  *&v32 = v11;
  *(&v32 + 1) = v13;
  *&v33 = 0;
  BYTE8(v33) = 1;
  *&v34 = v14;
  *(&v34 + 1) = v15;
  v35 = 1;
  sub_10007368C();
  sub_10008221C();
  v16 = v26;
  View.buttonStyle<A>(_:)();
  v41 = v33;
  v42 = v34;
  v43 = v35;
  v37 = v29;
  v38 = v30;
  v39 = v31;
  v40 = v32;
  sub_100073734(&v37);
  v17 = *(v4 + 16);
  v18 = v27;
  v17(v27, v16, v3);
  v19 = v28;
  *v28 = 0;
  *(v19 + 8) = 0;
  v20 = v19;
  v21 = sub_10002B6CC(&qword_10032EB08);
  v17(&v20[*(v21 + 48)], v18, v3);
  v22 = &v20[*(v21 + 64)];
  *v22 = 0;
  v22[8] = 0;
  v23 = *(v4 + 8);
  v23(v16, v3);
  return (v23)(v18, v3);
}

uint64_t sub_1000821B0@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[1];
  v7[0] = *v1;
  v7[1] = v3;
  v4 = v1[3];
  v7[2] = v1[2];
  v7[3] = v4;
  *a1 = static VerticalAlignment.center.getter();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v5 = sub_10002B6CC(&qword_10032EAF0);
  return sub_100081E94(v7, (a1 + *(v5 + 44)));
}

unint64_t sub_10008221C()
{
  result = qword_10032EB00;
  if (!qword_10032EB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10032EB00);
  }

  return result;
}

unint64_t sub_100082274()
{
  result = qword_10032EB10;
  if (!qword_10032EB10)
  {
    sub_10002CAF8(&qword_10032EB18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10032EB10);
  }

  return result;
}

uint64_t sub_1000822EC(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = sub_10002B6CC(&qword_10032CE18);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[9];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = sub_10002B6CC(&qword_10032D838);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[10];
    goto LABEL_9;
  }

  v14 = type metadata accessor for NSNotificationCenter.Publisher();
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[14];

  return v15(v16, a2, v14);
}

uint64_t sub_100082484(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
    return result;
  }

  v8 = sub_10002B6CC(&qword_10032CE18);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[9];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = sub_10002B6CC(&qword_10032D838);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[10];
    goto LABEL_7;
  }

  v14 = type metadata accessor for NSNotificationCenter.Publisher();
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[14];

  return v15(v16, a2, a2, v14);
}

uint64_t type metadata accessor for ApplicationSceneContainer()
{
  result = qword_10032EB78;
  if (!qword_10032EB78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100082654()
{
  type metadata accessor for ApplicationSceneOverlayProvider();
  if (v0 <= 0x3F)
  {
    sub_1000827A8();
    if (v1 <= 0x3F)
    {
      sub_10003F9F8();
      if (v2 <= 0x3F)
      {
        sub_10008283C(319, &qword_10032CE88, &type metadata accessor for LayoutDirection);
        if (v3 <= 0x3F)
        {
          sub_10008283C(319, &qword_10032D8C0, &type metadata accessor for ColorScheme);
          if (v4 <= 0x3F)
          {
            sub_10004A8C0();
            if (v5 <= 0x3F)
            {
              type metadata accessor for NSNotificationCenter.Publisher();
              if (v6 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_1000827A8()
{
  if (!qword_10032EB88)
  {
    type metadata accessor for ApplicationSceneClientSettings();
    sub_100086124(&qword_10032C718, &type metadata accessor for ApplicationSceneClientSettings);
    v0 = type metadata accessor for ObservedObject();
    if (!v1)
    {
      atomic_store(v0, &qword_10032EB88);
    }
  }
}

void sub_10008283C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Environment();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1000828AC()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  if (v2 < 0)
  {
    v3 = [*v0 application];
  }

  else
  {
    v3 = v1;
  }

  v4 = v3;
  v5 = [v3 bundleIdentifier];

  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  if (v6 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v8 == v9)
  {
    goto LABEL_14;
  }

  v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v11)
  {
    return 1;
  }

  v12 = v2 < 0 ? [v1 application] : v1;
  v13 = v12;
  v14 = [v12 bundleIdentifier];

  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;

  if (v15 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v17 == v18)
  {
    goto LABEL_14;
  }

  v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v20)
  {
    return 1;
  }

  v21 = v2 < 0 ? [v1 application] : v1;
  v22 = v21;
  v23 = [v21 bundleIdentifier];

  v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v26 = v25;

  if (v24 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v26 == v27)
  {
LABEL_14:

LABEL_15:

    return 1;
  }

  v28 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v28)
  {
    return 1;
  }

  v29 = v2 < 0 ? [v1 application] : v1;
  v30 = v29;
  v31 = [v29 displayStyle];

  if (v31 == 1)
  {
    return 1;
  }

  if (v2 < 0)
  {
    v32 = [v1 application];
  }

  else
  {
    v32 = v1;
  }

  v33 = v32;
  v34 = [v32 displayStyle];

  if (v34)
  {
    return 0;
  }

  if (v2 < 0)
  {
    v35 = [v1 application];
  }

  else
  {
    v35 = v1;
  }

  v36 = v35;
  v37 = [v35 userInterfaceStyle];

  v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v40 = v39;

  if (v38 == 1802658116 && v40 == 0xE400000000000000)
  {
    goto LABEL_15;
  }

  v41 = _stringCompareWithSmolCheck(_:_:expecting:)();

  return v41 & 1;
}

uint64_t sub_100082C1C()
{
  sub_10002C9FC(0, &qword_10032BF60);
  v1 = [swift_getObjCClassFromMetadata() sharedInstance];
  v2 = [v1 fullScreenCompatibilityMode];

  if (v2 && ((v3 = *v0, (*(v0 + 8) & 0x8000000000000000) != 0) ? (v4 = [v3 application]) : (v4 = v3), v5 = v4, v6 = objc_msgSend(v4, "supportsClarityUI"), v5, !v6))
  {
    return 0;
  }

  else
  {
    return (*(**(v0 + 32) + 160))() & 1;
  }
}

uint64_t sub_100082D00@<X0>(uint64_t a1@<X8>)
{
  v34 = a1;
  v2 = type metadata accessor for ApplicationSceneContainer();
  v3 = *(v2 - 8);
  v35 = v2 - 8;
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v5 = type metadata accessor for AccessibilityActionKind();
  v32 = *(v5 - 8);
  v33 = v5;
  __chkstk_darwin(v5);
  v7 = v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10002B6CC(&qword_10032EBE0);
  __chkstk_darwin(v8);
  v10 = (v31 - v9);
  *v10 = static Alignment.center.getter();
  v10[1] = v11;
  v12 = sub_10002B6CC(&qword_10032EBE8);
  sub_1000830D8(v1, v10 + *(v12 + 44));
  static AccessibilityActionKind.escape.getter();
  v31[0] = v1;
  sub_1000849D8(v1, v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v31[1] = v4;
  v14 = swift_allocObject();
  sub_100084A40(v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13);
  sub_10002CD18(&qword_10032EBF0, &qword_10032EBE0);
  View.accessibilityAction(_:_:)();

  (*(v32 + 8))(v7, v33);
  sub_100084ABC(v10);
  v33 = *(v35 + 64);
  sub_1000849D8(v1, v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = swift_allocObject();
  v16 = v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100084A40(v16, v15 + v13);
  v17 = sub_10002B6CC(&qword_10032EBF8);
  v18 = *(v17 + 52);
  v19 = type metadata accessor for NSNotificationCenter.Publisher();
  v20 = *(*(v19 - 8) + 16);
  v21 = v34;
  v22 = v34 + v18;
  v23 = v31[0];
  v20(v22, v31[0] + v33, v19);
  v24 = (v21 + *(v17 + 56));
  v25 = v21;
  *v24 = sub_100084B24;
  v24[1] = v15;
  v26 = *(v35 + 68);
  sub_1000849D8(v23, v16);
  v27 = swift_allocObject();
  sub_100084A40(v16, v27 + v13);
  v28 = sub_10002B6CC(&qword_10032EC00);
  result = (v20)(v25 + *(v28 + 52), v23 + v26, v19);
  v30 = (v25 + *(v28 + 56));
  *v30 = sub_100084B3C;
  v30[1] = v27;
  return result;
}

uint64_t sub_1000830D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v56 = a2;
  v3 = type metadata accessor for ColorScheme();
  v54 = *(v3 - 8);
  v55 = v3;
  __chkstk_darwin(v3);
  v53 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for ApplicationSceneContainer();
  v5 = *(v44 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v44);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10002B6CC(&qword_10032EC10);
  v50 = *(v8 - 8);
  v51 = v8;
  __chkstk_darwin(v8);
  v49 = &v43 - v9;
  v47 = sub_10002B6CC(&qword_10032EC18);
  __chkstk_darwin(v47);
  v48 = &v43 - v10;
  v46 = sub_10002B6CC(&qword_10032EC20);
  __chkstk_darwin(v46);
  v12 = &v43 - v11;
  sub_1000849D8(a1, v7);
  v13 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v45 = v6;
  v14 = swift_allocObject();
  sub_100084A40(v7, v14 + v13);
  v15 = static Alignment.center.getter();
  v17 = v16;
  sub_100083B8C(a1, &v57);
  v67[2] = v59;
  v67[3] = v60;
  v76 = v59;
  v77 = v60;
  v67[0] = v57;
  v67[1] = v58;
  *&v68 = v61;
  *(&v68 + 1) = v15;
  v74 = v57;
  v75 = v58;
  v78 = v68;
  v69 = v17;
  v79 = v17;
  v70[2] = v59;
  v70[3] = v60;
  v70[0] = v57;
  v70[1] = v58;
  v71 = v61;
  v72 = v15;
  v73 = v17;
  sub_100085B90(v67, v65);
  sub_10002C51C(v70, &qword_10032EC28);
  v18 = static Animation.clarityUINavigationTransition.getter();
  v19 = *(a1 + 8);
  v20 = *a1;
  v52 = v12;
  if (v19 < 0)
  {
    v21 = [v20 application];
  }

  else
  {
    v21 = v20;
  }

  v22 = v21;
  sub_10002DD2C(v21);
  v24 = v23;

  *&v57 = sub_100085AE4;
  *(&v57 + 1) = v14;
  v60 = v76;
  v61 = v77;
  v62 = v78;
  v58 = v74;
  v59 = v75;
  *&v63 = v79;
  *(&v63 + 1) = v18;
  v64 = v24 != 0;
  LOBYTE(v65[0]) = sub_100082C1C() & 1;
  v25 = static Binding.constant(_:)();
  (*(**(a1 + 32) + 208))(v25);
  sub_1000849D8(a1, v7);
  v26 = swift_allocObject();
  sub_100084A40(v7, v26 + v13);
  sub_10002B6CC(&qword_10032EC30);
  sub_100085E8C();
  v27 = v49;
  View.multimodalNavigationChrome(shouldDisplay:bottomBarTransitionProgress:backButtonAction:)();

  v65[4] = v61;
  v65[5] = v62;
  v65[6] = v63;
  v66 = v64;
  v65[0] = v57;
  v65[1] = v58;
  v65[2] = v59;
  v65[3] = v60;
  sub_10002C51C(v65, &qword_10032EC30);
  v28 = sub_1000828AC();
  v29 = v48;
  (*(v50 + 32))(v48, v27, v51);
  *(v29 + *(v47 + 36)) = v28 & 1;
  v30 = static Color.clarityUIContentBackground.getter();
  v31 = static Edge.Set.all.getter();
  v32 = v52;
  sub_1000404F8(v29, v52, &qword_10032EC18);
  v33 = v32 + *(v46 + 36);
  *v33 = v30;
  *(v33 + 8) = v31;
  KeyPath = swift_getKeyPath();
  if (sub_1000828AC())
  {
    v36 = v53;
    v35 = v54;
    v37 = v55;
    (*(v54 + 104))(v53, enum case for ColorScheme.dark(_:), v55);
  }

  else
  {
    v36 = v53;
    sub_10004A124(v53);
    v35 = v54;
    v37 = v55;
  }

  v38 = sub_10002B6CC(&qword_10032EC78);
  v39 = v56;
  v40 = (v56 + *(v38 + 36));
  v41 = sub_10002B6CC(&qword_10032E700);
  (*(v35 + 32))(v40 + *(v41 + 28), v36, v37);
  *v40 = KeyPath;
  return sub_1000404F8(v32, v39, &qword_10032EC20);
}

double sub_100083774@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v47 = a1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = type metadata accessor for RoundedRectangle();
  __chkstk_darwin(v46);
  v9 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  v11 = *(v2 + 8);
  v49 = *v2;
  v50 = v11;
  v48 = v2;
  if (v11 < 0)
  {
    v12 = [v10 application];
  }

  else
  {
    v12 = v10;
  }

  v13 = v12;
  v14 = [v12 displayStyle];

  if (v14 == 1)
  {
    v22 = *&UIEdgeInsetsZero.bottom;
    v51 = *&UIEdgeInsetsZero.top;
    v52 = v22;
    v23 = sub_100006370();
    sub_100027FE0(v23, &v62);
    v20 = *(&v62 + 1);
    v24 = *&v62;
    GeometryProxy.size.getter();
    v26 = v25;
    GeometryProxy.size.getter();
    if (v27 >= v26)
    {
      v21 = v20;
    }

    else
    {
      v21 = v24;
    }

    if (v27 >= v26)
    {
      v20 = v24;
    }

    v28 = type metadata accessor for ApplicationSceneContainer();
    v17 = v48;
    v29 = *(v48 + *(v28 + 44));
    v30 = *(v46 + 20);
    v31 = enum case for RoundedCornerStyle.continuous(_:);
    v32 = type metadata accessor for RoundedCornerStyle();
    (*(*(v32 - 8) + 104))(&v9[v30], v31, v32);
    *v9 = v29;
    *(v9 + 1) = v29;
    sub_100086124(&qword_10032EC80, &type metadata accessor for RoundedRectangle);
    v19 = AnyShape.init<A>(_:)();
    GeometryProxy.size.getter();
    v34 = v33;
    v36 = v35;
    v18 = Edge.Set.init(rawValue:)();
    v58 = v51;
    v59 = v52;
    *&v60 = v20;
    *(&v60 + 1) = v21;
    *&v61[0] = v19;
    *(&v61[0] + 1) = v34;
    *&v61[1] = v36;
    BYTE8(v61[1]) = v18;
  }

  else
  {
    if (v14)
    {
      v15 = Logger.common.unsafeMutableAddressor();
      (*(v5 + 16))(v7, v15, v4);
      v16._object = 0x80000001002C31E0;
      v16._countAndFlagsBits = 0xD000000000000023;
      Logger.assertionFailureOrFault(_:)(v16);
      (*(v5 + 8))(v7, v4);
    }

    v17 = v48;
    sub_100083FD8(&v62);
    v51 = v62;
    v52 = v63;
    v56 = v64;
    v57[0] = *v65;
    *(v57 + 9) = *&v65[9];
    v54 = v62;
    v55 = v63;
    v18 = v65[24];
    v19 = *v65;
    v21 = *(&v64 + 1);
    v20 = *&v64;
    sub_1000860BC(&v62, &v58);
    v60 = v56;
    v61[0] = v57[0];
    *(v61 + 9) = *(v57 + 9);
    v58 = v54;
    v59 = v55;
  }

  v38 = v49;
  v37 = v50;
  v40 = *(v17 + 56);
  v39 = *(v17 + 64);
  LOBYTE(v54) = 0;
  sub_10003FEE0(v49, v50);

  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  *&v53[6] = v54;
  *&v53[22] = v55;
  *&v53[38] = v56;
  v41 = static SafeAreaRegions.all.getter();
  sub_1000860F4(&v58);
  *a2 = v38;
  *(a2 + 8) = v37;
  v42 = v52;
  *(a2 + 16) = v51;
  *(a2 + 32) = v42;
  *(a2 + 48) = v40;
  *(a2 + 56) = v39;
  *(a2 + 64) = v20 / v21;
  *(a2 + 72) = 0;
  *(a2 + 80) = v19;
  *(a2 + 88) = 256;
  v43 = *&v53[16];
  *(a2 + 90) = *v53;
  *(a2 + 106) = v43;
  result = *&v53[32];
  *(a2 + 122) = *&v53[32];
  *(a2 + 136) = *&v53[46];
  *(a2 + 144) = v41;
  *(a2 + 152) = v18;
  return result;
}

void *sub_100083B8C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = *a1;
  if ((*(a1 + 8) & 0x8000000000000000) != 0)
  {
    v6 = [v5 application];
  }

  else
  {
    v6 = v5;
  }

  v7 = v6;
  v23 = static Color.clear.getter();
  v8 = static Alignment.center.getter();
  v10 = v9;
  v11 = swift_allocObject();
  *(v11 + 16) = v4;
  *(v11 + 24) = v7;

  v12 = v7;
  v13 = static Alignment.center.getter();
  v15 = v14;
  v16 = sub_10002DD2C(v12);
  v18 = v17;
  v20 = v19;

  if (v20)
  {
    result = swift_allocObject();
    result[2] = v16;
    result[3] = v18;
    result[4] = v20;
    v22 = sub_1000860B0;
  }

  else
  {

    v22 = 0;
    result = 0;
  }

  *a2 = v23;
  a2[1] = sub_100086070;
  a2[2] = v11;
  a2[3] = v8;
  a2[4] = v10;
  a2[5] = v22;
  a2[6] = result;
  a2[7] = v13;
  a2[8] = v15;
  return result;
}

uint64_t sub_100083CE0()
{
  v0 = sub_1000841BC()[2];

  if (v0 >= 2)
  {
    return sub_10008439C(1);
  }

  v2 = static Animation.clarityUINavigationTransition.getter();
  __chkstk_darwin(v2);
  withAnimation<A>(_:_:)();
}

uint64_t sub_100083D90(uint64_t a1, uint64_t a2)
{
  v3 = sub_1000841BC()[2];

  if (v3 >= 2)
  {
    do
    {
      sub_10008439C(0);
      v5 = sub_1000841BC()[2];
    }

    while (v5 > 1);
  }

  return (*(a2 + 40))(v4);
}

uint64_t sub_100083DEC(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for AnimationCompletionCriteria();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for ApplicationSceneContainer();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7 - 8);
  static Animation.clarityUINavigationTransition.getter();
  v14 = a2;
  sub_1000849D8(a2, &v13[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v10 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v11 = swift_allocObject();
  sub_100084A40(&v13[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)], v11 + v10);
  static AnimationCompletionCriteria.logicallyComplete.getter();
  withAnimation<A>(_:completionCriteria:_:completion:)();

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_100083FD8@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for LayoutDirection();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  GeometryProxy.safeAreaInsets.getter();
  type metadata accessor for ApplicationSceneContainer();
  sub_10004A06C(v5);
  sub_1000B67CC(v5);
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  (*(v3 + 8))(v5, v2);
  GeometryProxy.size.getter();
  v15 = v14;
  GeometryProxy.safeAreaInsets.getter();
  v17 = v15 + v16;
  GeometryProxy.safeAreaInsets.getter();
  v19 = v17 + v18;
  GeometryProxy.size.getter();
  v21 = v20;
  GeometryProxy.safeAreaInsets.getter();
  v23 = v21 + v22;
  GeometryProxy.safeAreaInsets.getter();
  v25 = v23 + v24;
  sub_10008616C();
  v26 = AnyShape.init<A>(_:)();
  GeometryProxy.size.getter();
  v28 = v27;
  GeometryProxy.safeAreaInsets.getter();
  v30 = v28 + v29;
  GeometryProxy.safeAreaInsets.getter();
  v32 = v30 + v31;
  GeometryProxy.size.getter();
  v34 = v33;
  GeometryProxy.safeAreaInsets.getter();
  v36 = v34 + v35;
  GeometryProxy.safeAreaInsets.getter();
  v38 = v36 + v37;
  result = static Edge.Set.all.getter();
  *a1 = v7;
  *(a1 + 8) = v9;
  *(a1 + 16) = v11;
  *(a1 + 24) = v13;
  *(a1 + 32) = v19;
  *(a1 + 40) = v25;
  *(a1 + 48) = v26;
  *(a1 + 56) = v32;
  *(a1 + 64) = v38;
  *(a1 + 72) = result;
  return result;
}

id *sub_1000841BC()
{
  v1 = type metadata accessor for MultimodalNavigationTitle();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = (*(**(v0 + 32) + 112))(v3);
  v7 = *(v6 + 16);
  if (v7)
  {
    v16 = _swiftEmptyArrayStorage;
    sub_100066CCC(0, v7, 0);
    v8 = v16;
    v9 = (v6 + 40);
    do
    {
      v10 = *(v9 - 1);
      v11 = *v9;
      sub_100085A90(v10, *v9);
      static MultimodalNavigationTitle.title(from:)();
      sub_1000663DC(v10, v11);
      v16 = v8;
      v13 = v8[2];
      v12 = v8[3];
      if (v13 >= v12 >> 1)
      {
        sub_100066CCC(v12 > 1, v13 + 1, 1);
        v8 = v16;
      }

      v9 += 2;
      v8[2] = (v13 + 1);
      (*(v2 + 32))(v8 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v13, v5, v1);
      --v7;
    }

    while (v7);
  }

  else
  {

    return _swiftEmptyArrayStorage;
  }

  return v8;
}

uint64_t sub_10008439C(int a1)
{
  v32 = a1;
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v31[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v7 = &v31[-v6];
  v8 = Logger.common.unsafeMutableAddressor();
  isEscapingClosureAtFileLocation = *(v2 + 16);
  (isEscapingClosureAtFileLocation)(v7, v8, v1);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "Informing app that back button was pressed.", v12, 2u);
  }

  v13 = *(v2 + 8);
  v13(v7, v1);
  v14 = [qword_100336870 sceneManager];
  v15 = [v14 workspace];

  v16 = *v33;
  if ((*(v33 + 8) & 0x8000000000000000) != 0)
  {
    v17 = [v16 application];
  }

  else
  {
    v17 = v16;
  }

  v18 = v17;
  v19 = [v17 defaultSceneIdentifier];

  if (!v19)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = String._bridgeToObjectiveC()();
  }

  v20 = [v15 sceneWithIdentifier:v19];

  if (v20)
  {
    v1 = swift_allocObject();
    *(v1 + 16) = v32 & 1;
    v21 = swift_allocObject();
    v5 = sub_100085920;
    *(v21 + 16) = sub_100085920;
    *(v21 + 24) = v1;
    aBlock[4] = sub_1000781EC;
    v35 = v21;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000A5678;
    aBlock[3] = &unk_1003009B8;
    v22 = _Block_copy(aBlock);
    v8 = v35;

    [v20 performUpdate:v22];

    _Block_release(v22);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      goto LABEL_14;
    }

    __break(1u);
  }

  (isEscapingClosureAtFileLocation)(v5, v8, v1);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&_mh_execute_header, v23, v24, "Unable to find scene for app.", v25, 2u);
  }

  v13(v5, v1);
  v5 = 0;
LABEL_14:
  v27 = (*(**(v33 + 32) + 128))(aBlock);
  if (*(*v26 + 16))
  {
    v28 = v26;
    sub_1000858A0(&v36);
    v29 = *(&v36 + 1);
    sub_1000663C8(v36, *(&v36 + 1));
    if (v29 >> 60 == 15)
    {
      sub_100085814(*(*v28 + 16) - 1, &v36);
      sub_1000663DC(v36, *(&v36 + 1));
    }
  }

  v27(aBlock, 0);
  return sub_1000781F4(v5);
}

uint64_t sub_100084868()
{
  v0 = sub_1000841BC()[2];

  if (v0 >= 2)
  {
    do
    {
      sub_10008439C(0);
      v2 = sub_1000841BC()[2];
    }

    while (v2 > 1);
  }

  return result;
}

void sub_1000848B8(uint64_t a1, void *a2)
{
  sub_10002B6CC(&qword_10032B660);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10029B030;
  type metadata accessor for ClarityUIBackButtonActionWrapper();
  static ClarityUIBackButtonActionWrapper.makeBackButtonAction(isAnimated:)();
  sub_10002C9FC(0, &qword_10032E498);
  swift_dynamicCast();
  sub_100085950(inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  sub_100078254();
  isa = Set._bridgeToObjectiveC()().super.isa;

  [a2 setActions:isa];
}

uint64_t sub_1000849D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ApplicationSceneContainer();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100084A40(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ApplicationSceneContainer();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100084ABC(uint64_t a1)
{
  v2 = sub_10002B6CC(&qword_10032EBE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100084B54(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for ApplicationSceneContainer() - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

uint64_t sub_100084C0C()
{
  type metadata accessor for ApplicationSceneContainer();

  return sub_100084868();
}

uint64_t sub_100084C6C(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = __CocoaSet.member(for:)();

    if (v9)
    {

      sub_10002C9FC(0, &qword_10032E498);
      swift_dynamicCast();
      result = 0;
      *a1 = v22;
      return result;
    }

    result = __CocoaSet.count.getter();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_100084EA4(v7, result + 1);
    if (v19[3] <= v19[2])
    {
      sub_100085094();
    }

    v18 = v8;
    sub_1000852BC(v18, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  sub_10002C9FC(0, &qword_10032E498);
  v11 = NSObject._rawHashValue(seed:)(*(v6 + 40));
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v3;
    v18 = a2;
    sub_100085340(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v23;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = static NSObject.== infix(_:_:)();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v20 = *(*(v6 + 48) + 8 * v13);
  *a1 = v20;
  v21 = v20;
  return 0;
}

Swift::Int sub_100084EA4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_10002B6CC(&qword_10032EC08);
    v2 = static _SetStorage.convert(_:capacity:)();
    v14 = v2;
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      sub_10002C9FC(0, &qword_10032E498);
      do
      {
        swift_dynamicCast();
        if (*(v2 + 24) <= *(v2 + 16))
        {
          sub_100085094();
        }

        v2 = v14;
        result = NSObject._rawHashValue(seed:)(*(v14 + 40));
        v4 = v14 + 56;
        v5 = -1 << *(v14 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v14 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v14 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v9 = 0;
          v10 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v10 && (v9 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v11 = v7 == v10;
            if (v7 == v10)
            {
              v7 = 0;
            }

            v9 |= v11;
            v12 = *(v4 + 8 * v7);
          }

          while (v12 == -1);
          v8 = __clz(__rbit64(~v12)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v14 + 48) + 8 * v8) = v13;
        ++*(v14 + 16);
      }

      while (__CocoaSet.Iterator.next()());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v2;
}

uint64_t sub_100085094()
{
  v1 = v0;
  v2 = *v0;
  sub_10002B6CC(&qword_10032EC08);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + 8 * (v13 | (v5 << 6)));
      result = NSObject._rawHashValue(seed:)(*(v4 + 40));
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + 8 * v12) = v16;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v15 = v6[v5];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    v24 = 1 << *(v2 + 32);
    if (v24 >= 64)
    {
      bzero((v2 + 56), ((v24 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v24;
    }

    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

unint64_t sub_1000852BC(uint64_t a1, void *a2)
{
  NSObject._rawHashValue(seed:)(a2[5]);
  result = _HashTable.nextHole(atOrAfter:)();
  *(a2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 56) |= 1 << result;
  *(a2[6] + 8 * result) = a1;
  ++a2[2];
  return result;
}

void sub_100085340(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_100085094();
  }

  else
  {
    if (v7 > v6)
    {
      sub_1000854B0();
      goto LABEL_12;
    }

    sub_100085600();
  }

  v8 = *v3;
  v9 = NSObject._rawHashValue(seed:)(*(*v3 + 40));
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_10002C9FC(0, &qword_10032E498);
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = static NSObject.== infix(_:_:)();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

id sub_1000854B0()
{
  v1 = v0;
  sub_10002B6CC(&qword_10032EC08);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_100085600()
{
  v1 = v0;
  v2 = *v0;
  sub_10002B6CC(&qword_10032EC08);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v24 = v0;
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v15 = *(v4 + 40);
      v16 = *(*(v2 + 48) + 8 * (v12 | (v5 << 6)));
      result = NSObject._rawHashValue(seed:)(v15);
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v10 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v10 + 8 * v19);
          if (v23 != -1)
          {
            v11 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v18) & ~*(v10 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      *(*(v4 + 48) + 8 * v11) = v16;
      ++*(v4 + 16);
    }

    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v24;
        goto LABEL_26;
      }

      v14 = *(v2 + 56 + 8 * v5);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v8 = (v14 - 1) & v14;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_100085814@<X0>(unint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1000348C0(v5);
    v5 = result;
  }

  v7 = *(v5 + 16);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = v5 + 16 * a1;
    *a2 = *(v9 + 32);
    result = memmove((v9 + 32), (v9 + 48), 16 * (v7 - 1 - a1));
    *(v5 + 16) = v8;
    *v2 = v5;
  }

  return result;
}

uint64_t sub_1000858A0@<X0>(_OWORD *a1@<X8>)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    v5 = *(v3 + 16);
    if (v5)
    {
LABEL_3:
      v6 = v5 - 1;
      *a1 = *(v3 + 16 * v6 + 32);
      *(v3 + 16) = v6;
      *v1 = v3;
      return result;
    }
  }

  else
  {
    result = sub_1000348C0(v3);
    v3 = result;
    v5 = *(result + 16);
    if (v5)
    {
      goto LABEL_3;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100085938(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100085950(unint64_t a1)
{
  i = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_17;
  }

  while (1)
  {
    sub_10002C9FC(0, &qword_10032E498);
    sub_100078254();
    result = Set.init(minimumCapacity:)();
    v9 = result;
    if (i)
    {
      break;
    }

    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      return result;
    }

LABEL_6:
    for (i = 0; ; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v6 = *(a1 + 8 * i + 32);
      }

      v7 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      sub_100084C6C(&v8, v6);

      if (v7 == v4)
      {
        return v9;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    _CocoaArrayWrapper.endIndex.getter();
  }

  v5 = result;
  v4 = _CocoaArrayWrapper.endIndex.getter();
  result = v5;
  if (v4)
  {
    goto LABEL_6;
  }

  return result;
}

uint64_t sub_100085A90(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

double sub_100085AE4@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  type metadata accessor for ApplicationSceneContainer();
  sub_100083774(a1, v9);
  v4 = v9[7];
  a2[6] = v9[6];
  a2[7] = v4;
  a2[8] = v10[0];
  *(a2 + 137) = *(v10 + 9);
  v5 = v9[3];
  a2[2] = v9[2];
  a2[3] = v5;
  v6 = v9[5];
  a2[4] = v9[4];
  a2[5] = v6;
  result = *v9;
  v8 = v9[1];
  *a2 = v9[0];
  a2[1] = v8;
  return result;
}

uint64_t sub_100085B90(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002B6CC(&qword_10032EC28);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100085C00()
{
  v1 = type metadata accessor for ApplicationSceneContainer();
  v2 = *(*(v1 - 1) + 64);
  v3 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v4 = v0 + v3;
  sub_10003FA80(*(v0 + v3), *(v0 + v3 + 8));

  v5 = v1[9];
  sub_10002B6CC(&qword_10032C720);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for LayoutDirection();
    (*(*(v6 - 8) + 8))(v4 + v5, v6);
  }

  else
  {
  }

  v7 = v1[10];
  sub_10002B6CC(&qword_10032CEF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = type metadata accessor for ColorScheme();
    (*(*(v8 - 8) + 8))(v4 + v7, v8);
  }

  else
  {
  }

  v9 = v1[14];
  v10 = type metadata accessor for NSNotificationCenter.Publisher();
  v11 = *(*(v10 - 8) + 8);
  v11(v4 + v9, v10);
  v11(v4 + v1[15], v10);

  return _swift_deallocObject(v0, v3 + v2);
}

unint64_t sub_100085E8C()
{
  result = qword_10032EC38;
  if (!qword_10032EC38)
  {
    sub_10002CAF8(&qword_10032EC30);
    sub_100085F44();
    sub_10002CD18(&qword_10032EC68, &qword_10032EC70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10032EC38);
  }

  return result;
}

unint64_t sub_100085F44()
{
  result = qword_10032EC40;
  if (!qword_10032EC40)
  {
    sub_10002CAF8(&qword_10032EC48);
    sub_10002CD18(&qword_10032EC50, &qword_10032EC58);
    sub_10002CD18(&qword_10032EC60, &qword_10032EC28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10032EC40);
  }

  return result;
}

uint64_t sub_100086030()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_100086078()
{

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_100086124(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10008616C()
{
  result = qword_10032EC88;
  if (!qword_10032EC88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10032EC88);
  }

  return result;
}

__n128 sub_1000861C0(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 57) = *(a2 + 57);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1000861E4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 73))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10008622C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 73) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 73) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10008633C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v8 = sub_10002B6CC(&qword_10032D838);
  v9 = __chkstk_darwin(v8 - 8);
  v11 = (&v18 - v10);
  v12 = *(a1 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v9);
  (*(v12 + 16))(&v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v4, a1);
  v14 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = a2;
  (*(v12 + 32))(v15 + v14, &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  v18 = a1;
  v19 = a2;
  swift_getOpaqueTypeMetadata2();
  v18 = a1;
  v19 = a2;
  swift_getOpaqueTypeConformance2();
  sub_100086A74(v11);
  sub_100086BB0(v11, a3);
  result = type metadata accessor for InvertColorsOnlyInLightModeView();
  v17 = (a3 + *(result + 36));
  *v17 = sub_100086B58;
  v17[1] = v15;
  return result;
}

uint64_t sub_100086534@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10002B6CC(&qword_10032CEF0);
  __chkstk_darwin(v8);
  v10 = &v14 - v9;
  sub_100086F14(v2, &v14 - v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = type metadata accessor for ColorScheme();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v13 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_10008671C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v3 = v2;
  v36 = a2;
  v5 = type metadata accessor for ColorScheme();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = &v31 - v11;
  v13 = *(a1 + 16);
  v32 = a1;
  v33 = v13;
  v35 = *(v13 - 8);
  __chkstk_darwin(v10);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for ModifiedContent();
  v17 = *(v16 - 8);
  v18 = __chkstk_darwin(v16);
  v20 = &v31 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v18);
  v34 = &v31 - v22;
  (*(v3 + *(a1 + 36)))(v21);
  sub_100086534(v12);
  (*(v6 + 104))(v9, enum case for ColorScheme.dark(_:), v5);
  static ColorScheme.== infix(_:_:)();
  v23 = *(v6 + 8);
  v23(v9, v5);
  v23(v12, v5);
  v24 = v33;
  v25 = *(v32 + 24);
  View.accessibilityIgnoresInvertColors(_:)();
  (*(v35 + 8))(v15, v24);
  v26 = sub_100030F38();
  v37 = v25;
  v38 = v26;
  swift_getWitnessTable();
  v27 = *(v17 + 16);
  v28 = v34;
  v27(v34, v20, v16);
  v29 = *(v17 + 8);
  v29(v20, v16);
  v27(v36, v28, v16);
  return (v29)(v28, v16);
}

uint64_t sub_100086A74@<X0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  sub_10002B6CC(&qword_10032CEF0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_100086AD8()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100086BB0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002B6CC(&qword_10032D838);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_100086C40()
{
  sub_100086E78();
  if (v0 <= 0x3F)
  {
    sub_10003F9F8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_100086CD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10002B6CC(&qword_10032D838);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 36));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_100086DB4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_10002B6CC(&qword_10032D838);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 36)) = (a2 - 1);
  }

  return result;
}

void sub_100086E78()
{
  if (!qword_10032D8C0)
  {
    type metadata accessor for ColorScheme();
    v0 = type metadata accessor for Environment();
    if (!v1)
    {
      atomic_store(v0, &qword_10032D8C0);
    }
  }
}

uint64_t sub_100086F14(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002B6CC(&qword_10032CEF0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100086F84()
{
  type metadata accessor for ModifiedContent();
  sub_100030F38();
  return swift_getWitnessTable();
}

void sub_1000870E4(char a1)
{
  v2 = *(v1 + OBJC_IVAR___CLBAdminSceneDelegate_isShowingAdminSettings);
  *(v1 + OBJC_IVAR___CLBAdminSceneDelegate_isShowingAdminSettings) = a1;
  if (v2 & 1) == 0 && (a1)
  {
    v3 = String._bridgeToObjectiveC()();
    v5[4] = sub_1000871BC;
    v5[5] = 0;
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 1107296256;
    v5[2] = sub_100087280;
    v5[3] = &unk_100300C48;
    v4 = _Block_copy(v5);
    AnalyticsSendEventLazy();
    _Block_release(v4);
  }
}

unint64_t sub_1000871BC()
{
  sub_10002B6CC(&qword_10032EDF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100297510;
  *(inited + 32) = 0x646577656976;
  *(inited + 40) = 0xE600000000000000;
  *(inited + 48) = [objc_allocWithZone(NSNumber) initWithBool:1];
  v1 = sub_100088850(inited);
  swift_setDeallocating();
  sub_10002C51C(inited + 32, &qword_10032EDF8);
  return v1;
}

Class sub_100087280(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  if (v3)
  {
    sub_10002C9FC(0, &qword_10032BD30);
    v4.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v4.super.isa = 0;
  }

  return v4.super.isa;
}

void sub_10008731C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + OBJC_IVAR___CLBAdminSceneDelegate_showAdminViewPublisher);
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *a2 = v3;
  *(a2 + 8) = sub_100088DEC;
  *(a2 + 16) = v4;
  *(a2 + 24) = sub_100088DF4;
  *(a2 + 32) = v5;

  State.init(wrappedValue:)();
  *(a2 + 40) = v8;
  *(a2 + 48) = v9;
  State.init(wrappedValue:)();
  *(a2 + 56) = v8;
  *(a2 + 64) = v9;
  State.init(wrappedValue:)();
  *(a2 + 72) = v8;
  *(a2 + 80) = v9;
  State.init(wrappedValue:)();
  *(a2 + 88) = v8;
  *(a2 + 96) = v9;
  State.init(wrappedValue:)();
  *(a2 + 104) = v8;
  *(a2 + 112) = v9;
  State.init(wrappedValue:)();
  *(a2 + 120) = v8;
  *(a2 + 128) = v9;
  State.init(wrappedValue:)();
  *(a2 + 136) = v8;
  *(a2 + 144) = v9;
  sub_10002C9FC(0, &qword_10032BF60);
  v6 = [swift_getObjCClassFromMetadata() sharedInstance];
  [v6 shouldShowTripleClickInstructions];

  State.init(wrappedValue:)();
  *(a2 + 152) = v8;
  *(a2 + 160) = v9;
  *(a2 + 168) = 0x4008000000000000;
  *(a2 + 176) = sub_10004DDE0;
  *(a2 + 184) = 0;
  *(a2 + 192) = 0;
  *(a2 + 200) = sub_10003B13C;
  *(a2 + 208) = 0;
  *(a2 + 216) = 0;
  type metadata accessor for AdminSceneView();
  v7 = [objc_opt_self() defaultCenter];
  NSNotificationCenter.publisher(for:object:)();
}

void sub_1000875F0(char a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = Logger.common.unsafeMutableAddressor();
  (*(v3 + 16))(v5, v6, v2);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 67109120;
    *(v9 + 4) = a1 & 1;
    _os_log_impl(&_mh_execute_header, v7, v8, "Is showing modal view in admin scene: %{BOOL}d", v9, 8u);
  }

  (*(v3 + 8))(v5, v2);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    v12 = a1 & 1;
    *(Strong + OBJC_IVAR___CLBAdminSceneDelegate_isShowingModalView) = v12;
    v13 = *(Strong + OBJC_IVAR___CLBAdminSceneDelegate_window);
    if (v13)
    {
      v14 = v13;
      [v14 setAccessibilityViewIsModal:v12];
    }
  }
}

void sub_1000877C8(char a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &aBlock[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = Logger.common.unsafeMutableAddressor();
  (*(v3 + 16))(v5, v6, v2);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 67109120;
    *(v9 + 4) = a1 & 1;
    _os_log_impl(&_mh_execute_header, v7, v8, "Is showing admin settings: %{BOOL}d", v9, 8u);
  }

  (*(v3 + 8))(v5, v2);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong[OBJC_IVAR___CLBAdminSceneDelegate_isShowingAdminSettings];
    Strong[OBJC_IVAR___CLBAdminSceneDelegate_isShowingAdminSettings] = a1 & 1;
    if (v11 & 1) == 0 && (a1)
    {
      v12 = Strong;
      v13 = String._bridgeToObjectiveC()();
      aBlock[4] = sub_1000871BC;
      aBlock[5] = 0;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100087280;
      aBlock[3] = &unk_100300C98;
      v14 = _Block_copy(aBlock);
      AnalyticsSendEventLazy();

      _Block_release(v14);
      Strong = v13;
    }
  }
}

uint64_t sub_100087A20(uint64_t a1)
{
  v2 = v1;
  v4 = objc_allocWithZone(v1);
  v5 = sub_100088CB4(a1);
  (*(*(*(v2 + qword_1003368C0) - 8) + 8))(a1);
  return v5;
}

id sub_100087C84()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AdminSceneDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

double sub_100087D6C(void *a1)
{
  v1 = a1;
  v2 = sub_100087DC8();

  return v2;
}

double sub_100087DC8()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for AdminHostingView();
  v26.receiver = v1;
  v26.super_class = v6;
  objc_msgSendSuper2(&v26, "safeAreaInsets");
  v9 = v8;
  v11 = v10;
  v13 = v12;
  if (v7 > 300.0)
  {
    v14 = v7;
    v15 = Logger.common.unsafeMutableAddressor();
    (*(v3 + 16))(v5, v15, v2);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v25 = v19;
      *v18 = 136315138;
      *&v24[1] = v9;
      v24[2] = v11;
      *&v24[3] = v14;
      v24[4] = v13;
      type metadata accessor for UIEdgeInsets(0);
      v20 = String.init<A>(describing:)();
      v22 = sub_10005766C(v20, v21, &v25);

      *(v18 + 4) = v22;
      _os_log_impl(&_mh_execute_header, v16, v17, "Unexpectedly large bottom safe area inset for admin view controller. Insets: %s", v18, 0xCu);
      sub_10002C9B0(v19);
    }

    (*(v3 + 8))(v5, v2);
  }

  return v9;
}

id sub_100088044()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for AdminHostingView();
  v27.receiver = v1;
  v27.super_class = v6;
  objc_msgSendSuper2(&v27, "safeAreaInsetsDidChange");
  v26.receiver = v1;
  v26.super_class = v6;
  result = objc_msgSendSuper2(&v26, "safeAreaInsets");
  v12 = v11;
  if (v9 > 300.0)
  {
    v13 = v8;
    v14 = v9;
    v15 = v10;
    v16 = Logger.common.unsafeMutableAddressor();
    (*(v3 + 16))(v5, v16, v2);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v25 = v20;
      *v19 = 136315138;
      v24[1] = v12;
      v24[2] = v13;
      *&v24[3] = v14;
      v24[4] = v15;
      type metadata accessor for UIEdgeInsets(0);
      v21 = String.init<A>(describing:)();
      v23 = sub_10005766C(v21, v22, &v25);

      *(v19 + 4) = v23;
      _os_log_impl(&_mh_execute_header, v17, v18, "Safe area insets changed with unexpected bottom inset: %s", v19, 0xCu);
      sub_10002C9B0(v20);
    }

    return (*(v3 + 8))(v5, v2);
  }

  return result;
}

void sub_1000882C8(void *a1)
{
  v1 = a1;
  sub_100088044();
}

id sub_100088310(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for AdminHostingView();
  v3 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);

  if (v3)
  {
  }

  return v3;
}

id sub_1000883E8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AdminHostingView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_10008847C(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return sub_1000885CC(a1, v4);
}

unint64_t sub_1000884C0(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return sub_100088694(a1, a2, v4);
}

unint64_t sub_100088538(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return sub_10008874C(a1, v2);
}

unint64_t sub_1000885CC(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_100088DFC(*(v2 + 48) + 40 * v4, v8);
      v6 = static AnyHashable.== infix(_:_:)();
      sub_10002C57C(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}