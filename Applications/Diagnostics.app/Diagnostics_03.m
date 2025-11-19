Swift::Int sub_1000731AC()
{
  Hasher.init(_seed:)();
  v1 = [*(*v0 + 40) serialNumber];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100073230(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = [*(*a1 + 40) serialNumber];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  v7 = [*(v2 + 40) serialNumber];
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  if (v4 == v8 && v6 == v10)
  {
    v12 = 1;
  }

  else
  {
    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v12 & 1;
}

uint64_t sub_100073348(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

void sub_100073380(uint64_t a1, void *a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  v5 = *(a1 + 40);
  v6 = a2;
  v7 = [v5 attributes];
  sub_10003C49C(&unk_1001FD010);
  v8 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v8 + 16))
  {

    goto LABEL_8;
  }

  sub_100064AFC(v9, v10);
  v12 = v11;

  if ((v12 & 1) == 0)
  {
LABEL_8:

    goto LABEL_9;
  }

  swift_unknownObjectRetain();

  if (swift_dynamicCast())
  {
    if (static String._unconditionallyBridgeFromObjectiveC(_:)() == aBlock && v13 == v29)
    {

LABEL_13:
      sub_1000721D0();
      v24 = String._bridgeToObjectiveC()();

      v25 = [objc_opt_self() imageNamed:v24];

      v26 = [objc_allocWithZone(UIImageView) initWithImage:v25];
      v27 = *&v6[OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_deviceImageView];
      *&v6[OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_deviceImageView] = v26;
      v21.super.isa = v26;

      sub_10003F77C();

      goto LABEL_11;
    }

    v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v23)
    {
      goto LABEL_13;
    }
  }

LABEL_9:
  v14 = String._bridgeToObjectiveC()();
  v15 = [objc_opt_self() imageNamed:v14];

  if (v15)
  {

    v16 = [objc_allocWithZone(UIImageView) initWithImage:v15];

    v17 = *&v6[OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_deviceImageView];
    *&v6[OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_deviceImageView] = v16;
    v18 = v16;

    sub_10003F77C();
    v19 = [objc_opt_self() sharedInstance];
    v20 = [v5 attributes];
    static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v21.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v32 = sub_1000737D8;
    v33 = v4;
    aBlock = _NSConcreteStackBlock;
    v29 = 1107296256;
    v30 = sub_100072168;
    v31 = &unk_1001C1470;
    v22 = _Block_copy(&aBlock);

    [v19 deviceImageViewForDeviceStateAttributes:v21.super.isa completion:v22];
    _Block_release(v22);

LABEL_11:
    return;
  }

  __break(1u);
}

uint64_t sub_1000737A0()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000737E0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000737F8(uint64_t a1)
{
  *(v1 + 16) = 65792;
  *(v1 + 24) = 0;
  *(v1 + 32) = 0;
  *(v1 + 56) = 0;
  *(v1 + 64) = 0;
  *(v1 + 72) = &_swiftEmptySetSingleton;
  *(v1 + 80) = 0;
  *(v1 + 88) = 0;
  v2 = *(a1 + 40);
  *(v1 + 40) = v2;
  *(v1 + 48) = *(a1 + 48);
  *(v1 + 16) = *(a1 + 16);
  *(v1 + 17) = *(a1 + 17);
  *(v1 + 18) = *(a1 + 18);
  *(v1 + 19) = *(a1 + 19);
  v3 = *(a1 + 56);
  v4 = *(a1 + 64);
  *(v1 + 56) = v3;
  *(v1 + 64) = v4;
  *(v1 + 32) = *(a1 + 32);
  *(v1 + 24) = *(a1 + 24);
  v5 = objc_opt_self();
  v6 = v2;

  sub_10003E418(v3, v4);
  v7 = [v5 defaultCenter];
  v8 = *(v1 + 40);
  v9 = objc_opt_self();
  v10 = @"com.apple.Diagnostics.deviceStateChangedNotification";
  v11 = v8;
  v12 = [v9 mainQueue];
  v16[4] = sub_1000739FC;
  v17 = v1;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 1107296256;
  v16[2] = sub_100060B2C;
  v16[3] = &unk_1001C1498;
  v13 = _Block_copy(v16);

  v14 = [v7 addObserverForName:v10 object:v11 queue:v12 usingBlock:v13];
  _Block_release(v13);
  swift_unknownObjectRelease();

  return v1;
}

uint64_t sub_100073A18(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int64_t *a5)
{
  v5 = byte_1001FE420;
  byte_1001FE420 = 1;
  result = sub_100075750(a1, a2, a3, a4, a5);
  v7 = byte_1001FE420;
  byte_1001FE420 = v5;
  if ((v5 & 1) == 0 && v7)
  {
    if (qword_1001FC700 != -1)
    {
      swift_once();
    }

    v8 = qword_1001FE430;
    v10[4] = sub_1000717BC;
    v10[5] = 0;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 1107296256;
    v10[2] = sub_100060C48;
    v10[3] = &unk_1001C14C0;
    v9 = _Block_copy(v10);

    dispatch_sync(v8, v9);
    _Block_release(v9);
    result = swift_isEscapingClosureAtFileLocation();
    if (result)
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_100073B40(uint64_t a1)
{
  v2 = sub_10003C49C(&qword_1001FE6C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100073BC0(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100073C08(void *a1)
{
  v2 = v1;
  *(v2 + 16) = 65792;
  *(v2 + 24) = 0;
  *(v2 + 32) = 0;
  *(v2 + 56) = 0;
  *(v2 + 64) = 0;
  *(v2 + 72) = &_swiftEmptySetSingleton;
  *(v2 + 80) = 0;
  *(v2 + 88) = 0;
  *(v2 + 40) = a1;
  sub_10003C49C(&qword_1001FE6C8);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10017EC00;
  v5 = a1;
  v6 = [v5 serialNumber];
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  *(v4 + 32) = v7;
  *(v4 + 40) = v9;
  v10 = [v5 attributes];
  sub_10003C49C(&unk_1001FD010);
  v11 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v11 + 16))
  {

    goto LABEL_11;
  }

  sub_100064AFC(v12, v13);
  v15 = v14;

  if ((v15 & 1) == 0)
  {
LABEL_11:

    goto LABEL_12;
  }

  swift_unknownObjectRetain();

  if (swift_dynamicCast())
  {
    if (aBlock == 0x656E6F685069 && v43 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      v17 = *(v4 + 16);
      v16 = *(v4 + 24);
      if (v17 >= v16 >> 1)
      {
        v4 = sub_1000D4FD8((v16 > 1), v17 + 1, 1, v4);
      }

      *(v4 + 16) = v17 + 1;
      v18 = v4 + 16 * v17;
      *(v18 + 32) = 0;
      *(v18 + 40) = 0;
    }

    else
    {
      if (aBlock == 1684099177 && v43 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        v28 = *(v4 + 16);
        v27 = *(v4 + 24);
        if (v28 >= v27 >> 1)
        {
          v4 = sub_1000D4FD8((v27 > 1), v28 + 1, 1, v4);
        }

        *(v4 + 16) = v28 + 1;
        v29 = v4 + 16 * v28;
        v30 = xmmword_100180300;
      }

      else if (aBlock == 0x756F7420646F5069 && v43 == 0xEA00000000006863 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        v32 = *(v4 + 16);
        v31 = *(v4 + 24);
        if (v32 >= v31 >> 1)
        {
          v4 = sub_1000D4FD8((v31 > 1), v32 + 1, 1, v4);
        }

        *(v4 + 16) = v32 + 1;
        v29 = v4 + 16 * v32;
        v30 = xmmword_1001802F0;
      }

      else if (aBlock == 0x565420656C707041 && v43 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        v34 = *(v4 + 16);
        v33 = *(v4 + 24);
        if (v34 >= v33 >> 1)
        {
          v4 = sub_1000D4FD8((v33 > 1), v34 + 1, 1, v4);
        }

        *(v4 + 16) = v34 + 1;
        v29 = v4 + 16 * v34;
        v30 = xmmword_1001802E0;
      }

      else if (aBlock == 0x615720656C707041 && v43 == 0xEB00000000686374 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        v36 = *(v4 + 16);
        v35 = *(v4 + 24);
        if (v36 >= v35 >> 1)
        {
          v4 = sub_1000D4FD8((v35 > 1), v36 + 1, 1, v4);
        }

        *(v4 + 16) = v36 + 1;
        v29 = v4 + 16 * v36;
        v30 = xmmword_1001802D0;
      }

      else if (aBlock == 0x726F737365636341 && v43 == 0xEB00000000736569 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        v38 = *(v4 + 16);
        v37 = *(v4 + 24);
        if (v38 >= v37 >> 1)
        {
          v4 = sub_1000D4FD8((v37 > 1), v38 + 1, 1, v4);
        }

        *(v4 + 16) = v38 + 1;
        v29 = v4 + 16 * v38;
        v30 = xmmword_1001802C0;
      }

      else
      {
        if (aBlock == 0x73646F70726941 && v43 == 0xE700000000000000)
        {
        }

        else
        {
          v39 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v39 & 1) == 0)
          {
            goto LABEL_12;
          }
        }

        v41 = *(v4 + 16);
        v40 = *(v4 + 24);
        if (v41 >= v40 >> 1)
        {
          v4 = sub_1000D4FD8((v40 > 1), v41 + 1, 1, v4);
        }

        *(v4 + 16) = v41 + 1;
        v29 = v4 + 16 * v41;
        v30 = xmmword_1001802B0;
      }

      *(v29 + 32) = v30;
    }
  }

LABEL_12:
  *(v2 + 48) = v4;
  v19 = [objc_opt_self() defaultCenter];
  v20 = objc_opt_self();
  v21 = v5;
  v22 = @"com.apple.Diagnostics.deviceStateChangedNotification";
  v23 = [v20 mainQueue];
  v46 = sub_1000743A0;
  v47 = v2;
  aBlock = _NSConcreteStackBlock;
  v43 = 1107296256;
  v44 = sub_100060B2C;
  v45 = &unk_1001C1538;
  v24 = _Block_copy(&aBlock);

  v25 = [v19 addObserverForName:v22 object:v21 queue:v23 usingBlock:v24];
  _Block_release(v24);
  swift_unknownObjectRelease();

  sub_10007230C([v21 phase]);
  return v2;
}

uint64_t sub_1000742DC(uint64_t *a1, int a2)
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

uint64_t sub_100074324(uint64_t result, int a2, int a3)
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

BOOL sub_1000743A4(Swift::UInt a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  v4 = Hasher._finalize()();
  v5 = -1 << *(a2 + 32);
  v6 = v4 & ~v5;
  if (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  do
  {
    v8 = *(*(a2 + 48) + 8 * v6);
    result = v8 == a1;
    if (v8 == a1)
    {
      break;
    }

    v6 = (v6 + 1) & v7;
  }

  while (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  return result;
}

uint64_t sub_10007449C(uint64_t a1)
{
  v7 = v1;
  v8 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v9 = __CocoaSet.count.getter();
  }

  else
  {
    v9 = *(a1 + 16);
  }

  if (!(*v1 >> 62))
  {
    v10 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v11 = __OFADD__(v10, v9);
    result = v10 + v9;
    if (!v11)
    {
      goto LABEL_6;
    }

LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v17 = _CocoaArrayWrapper.endIndex.getter();
  v11 = __OFADD__(v17, v9);
  result = v17 + v9;
  if (v11)
  {
    goto LABEL_14;
  }

LABEL_6:
  sub_10003E4D0();
  v2 = *v1;
  v3 = *v1 & 0xFFFFFFFFFFFFFF8;
  v13 = *(v3 + 0x10);
  v14 = (*(v3 + 0x18) >> 1) - v13;
  result = sub_1000C95CC(&v34, (v3 + 8 * v13 + 32), v14, v8);
  if (result < v9)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (result >= 1)
  {
    v15 = *(v3 + 16);
    v11 = __OFADD__(v15, result);
    v16 = v15 + result;
    if (v11)
    {
      __break(1u);
      goto LABEL_20;
    }

    *(v3 + 16) = v16;
  }

  if (result != v14)
  {
LABEL_11:
    result = sub_10004A320();
    *v7 = v2;
    return result;
  }

LABEL_16:
  v4 = *(v3 + 16);
  v3 = v34;
  v5 = v35;
  v8 = v37;
  v31 = v36;
  v6 = v38;
  if (v34 < 0)
  {
LABEL_20:
    if (!__CocoaSet.Iterator.next()())
    {
      goto LABEL_11;
    }

    sub_10003E110(0, &qword_100202990);
    result = swift_dynamicCast();
    v19 = v33;
    goto LABEL_31;
  }

  if (!v38)
  {
    v20 = (v36 + 64) >> 6;
    if (v20 <= v37 + 1)
    {
      v21 = v37 + 1;
    }

    else
    {
      v21 = (v36 + 64) >> 6;
    }

    v22 = v21 - 1;
    while (1)
    {
      v18 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        goto LABEL_59;
      }

      if (v18 >= v20)
      {
        v19 = 0;
        v6 = 0;
        goto LABEL_30;
      }

      v6 = *(v35 + 8 * v18);
      ++v8;
      if (v6)
      {
        goto LABEL_29;
      }
    }
  }

  v18 = v37;
LABEL_29:
  v23 = __clz(__rbit64(v6));
  v6 &= v6 - 1;
  v19 = *(*(v34 + 48) + ((v18 << 9) | (8 * v23)));
  result = v19;
  v22 = v18;
LABEL_30:
  v37 = v22;
  v38 = v6;
  v8 = v22;
LABEL_31:
  if (!v19)
  {
    goto LABEL_11;
  }

  v24 = (v31 + 64) >> 6;
LABEL_33:
  if (v4 + 1 > *((v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    result = specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  v2 = *v7;
  v25 = *((*v7 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
  v30 = *v7 & 0xFFFFFFFFFFFFFF8;
  if (v4 > v25)
  {
    v25 = v4;
  }

  v32 = v25;
  while (1)
  {
    while (1)
    {
      if (v4 == v32)
      {
        v4 = v32;
        *(v30 + 16) = v32;
        goto LABEL_33;
      }

      *(v30 + 32 + 8 * v4++) = v19;
      if ((v3 & 0x8000000000000000) == 0)
      {
        break;
      }

      if (__CocoaSet.Iterator.next()())
      {
        sub_10003E110(0, &qword_100202990);
        result = swift_dynamicCast();
        v19 = v33;
        if (v33)
        {
          continue;
        }
      }

      goto LABEL_56;
    }

    if (!v6)
    {
      break;
    }

    v26 = v8;
LABEL_54:
    v29 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v19 = *(*(v3 + 48) + ((v26 << 9) | (8 * v29)));
    result = v19;
    v28 = v26;
LABEL_39:
    v34 = v3;
    v35 = v5;
    v36 = v31;
    v37 = v28;
    v8 = v28;
    v38 = v6;
    if (!v19)
    {
LABEL_56:
      *(v30 + 16) = v4;
      goto LABEL_11;
    }
  }

  if (v24 <= v8 + 1)
  {
    v27 = v8 + 1;
  }

  else
  {
    v27 = (v31 + 64) >> 6;
  }

  v28 = v27 - 1;
  while (1)
  {
    v26 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v26 >= v24)
    {
      v19 = 0;
      v6 = 0;
      goto LABEL_39;
    }

    v6 = *(v5 + 8 * v26);
    ++v8;
    if (v6)
    {
      goto LABEL_54;
    }
  }

  __break(1u);
LABEL_59:
  __break(1u);
  return result;
}

uint64_t sub_100074850(unint64_t a1, void (*a2)(void), void (*a3)(uint64_t, void, unint64_t))
{
  if (a1 >> 62)
  {
    v7 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v3 >> 62))
  {
    v8 = *((*v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v9 = __OFADD__(v8, v7);
    result = v8 + v7;
    if (!v9)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v17 = _CocoaArrayWrapper.endIndex.getter();
  v9 = __OFADD__(v17, v7);
  result = v17 + v7;
  if (v9)
  {
    goto LABEL_13;
  }

LABEL_5:
  a2();
  v11 = *v3;
  v12 = *v3 & 0xFFFFFFFFFFFFFF8;
  a3(v12 + 8 * *(v12 + 0x10) + 32, (*(v12 + 0x18) >> 1) - *(v12 + 0x10), a1);
  v14 = v13;

  if (v14 < v7)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v14 < 1)
  {
LABEL_9:
    *v3 = v11;
    return result;
  }

  v15 = *(v12 + 16);
  v9 = __OFADD__(v15, v14);
  v16 = v15 + v14;
  if (!v9)
  {
    *(v12 + 16) = v16;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t static NSLayoutConstraint.idiomaticCondtional(idioms:condition:fallback:)(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, uint64_t (*a4)(void))
{
  v7 = [objc_opt_self() currentDevice];
  v8 = [v7 userInterfaceIdiom];

  if (sub_1000743A4(v8, a1))
  {
    return a2();
  }

  else
  {
    return a4();
  }
}

void static NSLayoutConstraint.activate(_:conditionalIdioms:condition:fallback:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(void))
{
  v8 = [objc_opt_self() currentDevice];
  v9 = [v8 userInterfaceIdiom];

  if (sub_1000743A4(v9, a2))
  {
    v10 = a3();
  }

  else
  {
    v10 = a5();
  }

  v11 = v10;
  v12 = objc_opt_self();

  sub_100074850(v11, sub_10003E4D0, sub_1000658F4);
  sub_10003E110(0, &qword_1001FD550);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v12 activateConstraints:isa];
}

uint64_t sub_100074B5C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for AttributeContainer();
  (*(*(v6 - 8) + 16))(a3, a1, v6);
  sub_100074BFC();
  v7 = a2;
  return AttributeContainer.subscript.setter();
}

unint64_t sub_100074BFC()
{
  result = qword_1001FE6D0;
  if (!qword_1001FE6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001FE6D0);
  }

  return result;
}

uint64_t sub_100074C60(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 1802658148;
  }

  else
  {
    v3 = 0x746867696CLL;
  }

  if (v2)
  {
    v4 = 0xE500000000000000;
  }

  else
  {
    v4 = 0xE400000000000000;
  }

  if (*a2)
  {
    v5 = 1802658148;
  }

  else
  {
    v5 = 0x746867696CLL;
  }

  if (*a2)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_100074CFC()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100074D74()
{
  String.hash(into:)();
}

Swift::Int sub_100074DD8()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100074E4C@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_1001BDB58, *a1);

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_100074EAC(uint64_t *a1@<X8>)
{
  v2 = 1802658148;
  if (!*v1)
  {
    v2 = 0x746867696CLL;
  }

  v3 = 0xE500000000000000;
  if (*v1)
  {
    v3 = 0xE400000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

unint64_t sub_100074EE4()
{
  result = qword_1001FE6D8;
  if (!qword_1001FE6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001FE6D8);
  }

  return result;
}

void sub_100074F38()
{
  v1 = v0;
  v10.receiver = v0;
  v10.super_class = type metadata accessor for DiagnosticsCompletedNavigationController();
  objc_msgSendSuper2(&v10, "viewDidLoad");
  [v0 setModalPresentationStyle:2];
  if ((_UISolariumEnabled() & 1) == 0)
  {
    v2 = [v0 navigationBar];
    v3 = [objc_allocWithZone(UIImage) init];
    [v2 setBackgroundImage:v3 forBarMetrics:0];

    v4 = [v1 navigationBar];
    v5 = [objc_allocWithZone(UIImage) init];
    [v4 setShadowImage:v5];

    v6 = [v1 navigationBar];
    [v6 setAlpha:0.0];
  }

  sub_10003C49C(&unk_1001FD020);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_10017EBF0;
  v8 = objc_allocWithZone(type metadata accessor for DiagnosticsCompletedViewController());
  *(v7 + 32) = sub_100131200();
  sub_100045CC4();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v1 setViewControllers:isa];
}

id sub_1000752F0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DiagnosticsCompletedNavigationController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100075364(uint64_t (*a1)(__int128 *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = (a3 + 32);
    v7 = v4 - 1;
    do
    {
      v13 = *v6;
      v8 = *(&v13 + 1);
      v9 = v13;
      sub_100078568(v13, *(&v13 + 1));
      v10 = a1(&v13);
      sub_1000784F0(v9, v8);
      if (v3)
      {
        break;
      }

      v11 = v7-- == 0;
      ++v6;
    }

    while (((v10 | v11) & 1) == 0);
  }

  else
  {
    LOBYTE(v10) = 0;
  }

  return v10 & 1;
}

uint64_t sub_100075428(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v15 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v15)
        {
          v7 = a3;
          v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v5 >= *(v6 + 16))
          {
            goto LABEL_14;
          }

          v7 = a3;
          v8 = *(a3 + 8 * v5 + 32);
        }

        v9 = v8;
        v10 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v17 = v8;
        v11 = a1(&v17);

        if (!v3 && (v11 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v10 != v4)
          {
            continue;
          }
        }

        return v11 & 1;
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v12 = a3;
      v13 = _CocoaArrayWrapper.endIndex.getter();
      a3 = v12;
      v4 = v13;
    }

    while (v13);
  }

  v11 = 0;
  return v11 & 1;
}

uint64_t sub_100075550(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = (a3 + 32);
    v7 = v4 - 1;
    do
    {
      v12 = *v6;
      v8 = v12;
      v9 = a1(&v12);

      if (v3)
      {
        break;
      }

      v10 = v7-- == 0;
      ++v6;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_1000755F8()
{
  type metadata accessor for CardFilterUpdateManager();
  result = swift_allocObject();
  *(result + 16) = &_swiftEmptySetSingleton;
  *(result + 24) = &_swiftEmptySetSingleton;
  *(result + 32) = 1;
  qword_10020A3A8 = result;
  return result;
}

uint64_t sub_100075638()
{

  return swift_deallocClassInstance();
}

__n128 sub_1000756A4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_1000756B8(uint64_t *a1, int a2)
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

uint64_t sub_100075700(uint64_t result, int a2, int a3)
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

uint64_t sub_100075750(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int64_t *a5)
{
  v194 = a1;
  v195 = a5;
  v201 = a4;
  v198 = a3;
  v191 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for CardState();
    sub_100077FF4();
    Set.Iterator.init(_cocoa:)();
    v6 = v210;
    v7 = v211;
    v8 = v212;
    v9 = v213;
    v10 = v214;
  }

  else
  {
    v11 = -1 << *(a1 + 32);
    v7 = a1 + 56;
    v8 = ~v11;
    v12 = -v11;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v10 = (v13 & *(a1 + 56));
    v9 = 0;
  }

  v202 = 0;
  v192 = v8;
  v14 = (v8 + 64) >> 6;
  v197 = &v205;
  p_opt_class_meths = 0x1001FE000;
  v196 = xmmword_10017EC00;
  v193 = xmmword_1001802D0;
  v199 = a2;
  v200 = v6;
  while (1)
  {
    if (v6 < 0)
    {
      v18 = __CocoaSet.Iterator.next()();
      if (!v18 || (v209 = v18, type metadata accessor for CardState(), swift_dynamicCast(), v6 = v204, v203 = v10, !v204))
      {
LABEL_183:
        sub_10004A320();
        v10 = v194;
        v138 = v195;
        if (!(*v195 >> 62))
        {
          if (*((*v195 & 0xFFFFFFFFFFFFFF8) + 0x10) <= 1)
          {
            goto LABEL_252;
          }

          goto LABEL_185;
        }

LABEL_275:
        v187 = _CocoaArrayWrapper.endIndex.getter();
        v138 = v195;
        if (v187 <= 1)
        {
          goto LABEL_252;
        }

LABEL_185:
        v9 = *v138;
        if (!(*v138 >> 62))
        {
          v6 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v6)
          {
            goto LABEL_209;
          }

LABEL_187:
          if (v6 >= 1)
          {
            v10 = (v9 & 0xC000000000000001);
            v203 = &v205;

            v139 = 0;
            v200 = (v9 & 0xC000000000000001);
            while (1)
            {
              if (v10)
              {
                v140 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              }

              else
              {
                v140 = *(v9 + 8 * v139 + 32);
              }

              v141 = *(v140 + 16);
              *(v140 + 16) = 0;
              if (v141)
              {
                v142 = *(v140 + 80);
                if ((v142 & 1) == 0)
                {
                  *(v140 + 80) = v142 | 1;
                }

                if ((*(v140 + 88) & 1) == 0)
                {
                  if (*(p_opt_class_meths + 1056))
                  {
                    goto LABEL_204;
                  }

                  type metadata accessor for CardState();
                  swift_allocObject();

                  v144 = sub_1000737F8(v143);

                  v145 = *(v140 + 80);
                  *(v140 + 80) = 0;
                  v146 = [objc_opt_self() defaultCenter];
                  if (qword_1001FC6F0 != -1)
                  {
                    swift_once();
                  }

                  v147 = qword_10020A3A0;
                  sub_10003C49C(&qword_1002018D0);
                  inited = swift_initStackObject();
                  *(inited + 16) = v196;
                  strcpy(&v204, "changeInfoKey");
                  HIWORD(v204) = -4864;
                  AnyHashable.init<A>(_:)();
                  *(inited + 96) = &type metadata for CardState.ChangedPropertyNotificationInfo;
                  *(inited + 72) = v144;
                  *(inited + 80) = v145;

                  sub_1000D57AC(inited);
                  swift_setDeallocating();
                  sub_100073B40(inited + 32);
                  isa = Dictionary._bridgeToObjectiveC()().super.isa;

                  [v146 postNotificationName:v147 object:v140 userInfo:isa];

                  p_opt_class_meths = &OBJC_PROTOCOL___UIWindowSceneDelegate.opt_class_meths;
                  v10 = v200;
                }

                if (*(p_opt_class_meths + 1056) == 1 && *(v140 + 80))
                {
LABEL_204:
                  if (qword_1001FC700 != -1)
                  {
                    swift_once();
                  }

                  v150 = qword_1001FE430;
                  v151 = swift_allocObject();
                  *(v151 + 16) = sub_100073BA8;
                  *(v151 + 24) = v140;
                  v207 = sub_10003DAA4;
                  v208 = v151;
                  *&v204 = _NSConcreteStackBlock;
                  *(&v204 + 1) = 1107296256;
                  v205 = sub_100060C48;
                  v206 = &unk_1001C1770;
                  v152 = _Block_copy(&v204);

                  dispatch_sync(v150, v152);
                  _Block_release(v152);
                  LOBYTE(v150) = swift_isEscapingClosureAtFileLocation();

                  p_opt_class_meths = 0x1001FE000;
                  if (v150)
                  {
                    goto LABEL_274;
                  }

                  goto LABEL_190;
                }
              }

LABEL_190:
              if (v6 == ++v139)
              {

                v10 = v194;
                v138 = v195;
                goto LABEL_209;
              }
            }
          }

          goto LABEL_285;
        }

LABEL_279:
        v188 = _CocoaArrayWrapper.endIndex.getter();
        v138 = v195;
        v6 = v188;
        if (!v188)
        {
LABEL_209:
          v153 = *v138;
          if (*v138 >> 62)
          {
            v154 = _CocoaArrayWrapper.endIndex.getter();
          }

          else
          {
            v154 = *((v153 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          if (v154)
          {
            *&v204 = _swiftEmptyArrayStorage;
            v10 = (v154 & ~(v154 >> 63));

            sub_1000B7C9C(0, v10, 0);
            if (v154 < 0)
            {
              goto LABEL_286;
            }

            v155 = 0;
            v156 = v204;
            do
            {
              if ((v153 & 0xC000000000000001) != 0)
              {
                v157 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              }

              else
              {
                v157 = *(v153 + 8 * v155 + 32);
              }

              v158 = [*(v157 + 40) serialNumber];
              v159 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v161 = v160;

              *&v204 = v156;
              v163 = v156[2];
              v162 = v156[3];
              if (v163 >= v162 >> 1)
              {
                sub_1000B7C9C((v162 > 1), v163 + 1, 1);
                v156 = v204;
              }

              ++v155;
              v156[2] = v163 + 1;
              v164 = &v156[2 * v163];
              v164[4] = v159;
              v164[5] = v161;
            }

            while (v154 != v155);

            v10 = v194;
          }

          else
          {
            v156 = _swiftEmptyArrayStorage;
          }

          v165 = v198;

          v166 = sub_100078084(v156, v165);

          if (*(v166 + 16) != 1)
          {
            goto LABEL_251;
          }

          v203 = sub_100125460(v166);
          v168 = v167;

          v200 = v168;
          if (v168 == 9)
          {
            goto LABEL_252;
          }

          v6 = *v195;
          v209 = _swiftEmptyArrayStorage;
          if (!(v6 >> 62))
          {
            v169 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_226:

            if (v169)
            {
              v170 = 0;
              p_opt_class_meths = v6 & 0xC000000000000001;
              do
              {
                if (p_opt_class_meths)
                {
                  v171 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                  v10 = (v170 + 1);
                  if (__OFADD__(v170, 1))
                  {
                    goto LABEL_237;
                  }
                }

                else
                {
                  if (v170 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
                  {
                    goto LABEL_273;
                  }

                  v10 = (v170 + 1);
                  if (__OFADD__(v170, 1))
                  {
LABEL_237:
                    __break(1u);
                    goto LABEL_183;
                  }
                }

                *&v204 = v203;
                *(&v204 + 1) = v200;
                __chkstk_darwin(v171);
                v190 = &v204;
                v172 = v202;
                v174 = sub_100075364(sub_1000784C4, v189, v173);
                v202 = v172;
                if (v174)
                {
                  specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
                  specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
                  specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
                  specialized ContiguousArray._endMutation()();
                }

                else
                {
                }

                ++v170;
              }

              while (v10 != v169);
              v175 = v209;
              v10 = v194;
            }

            else
            {
              v175 = _swiftEmptyArrayStorage;
            }

            sub_1000784E0(v203, v200);

            if ((v175 & 0x8000000000000000) != 0 || (v175 & 0x4000000000000000) != 0)
            {
              result = _CocoaArrayWrapper.endIndex.getter();
              if (!result)
              {
                goto LABEL_251;
              }
            }

            else if (!*(v175 + 16))
            {
              goto LABEL_251;
            }

            if ((v175 & 0xC000000000000001) != 0)
            {
              goto LABEL_293;
            }

            if (*(v175 + 16))
            {
              v177 = *(v175 + 32);

              goto LABEL_247;
            }

            __break(1u);
            return result;
          }

LABEL_288:
          v169 = _CocoaArrayWrapper.endIndex.getter();
          goto LABEL_226;
        }

        goto LABEL_187;
      }
    }

    else
    {
      v16 = v9;
      v17 = v10;
      if (!v10)
      {
        while (1)
        {
          v9 = v16 + 1;
          if (__OFADD__(v16, 1))
          {
            break;
          }

          if (v9 >= v14)
          {
            goto LABEL_183;
          }

          v17 = *(v7 + 8 * v9);
          ++v16;
          if (v17)
          {
            goto LABEL_16;
          }
        }

        __break(1u);
LABEL_273:
        __break(1u);
LABEL_274:
        __break(1u);
        goto LABEL_275;
      }

LABEL_16:
      v203 = ((v17 - 1) & v17);
      v6 = *(*(v6 + 48) + ((v9 << 9) | (8 * __clz(__rbit64(v17)))));

      if (!v6)
      {
        goto LABEL_183;
      }
    }

    if ((v201 & 1) == 0)
    {
      break;
    }

    v19 = *(v6 + 16);
    *(v6 + 16) = 0;
    if (v19 != 1)
    {
      goto LABEL_34;
    }

    v20 = *(v6 + 80);
    if ((v20 & 1) == 0)
    {
      *(v6 + 80) = v20 | 1;
    }

    if (*(v6 + 88))
    {
      goto LABEL_29;
    }

    if ((*(p_opt_class_meths + 1056) & 1) == 0)
    {
      type metadata accessor for CardState();
      swift_allocObject();

      v22 = sub_1000737F8(v21);

      v23 = *(v6 + 80);
      *(v6 + 80) = 0;
      v24 = [objc_opt_self() defaultCenter];
      if (qword_1001FC6F0 != -1)
      {
        swift_once();
      }

      v25 = qword_10020A3A0;
      sub_10003C49C(&qword_1002018D0);
      v26 = swift_allocObject();
      *(v26 + 16) = v196;
      strcpy(&v204, "changeInfoKey");
      HIWORD(v204) = -4864;
      AnyHashable.init<A>(_:)();
      *(v26 + 96) = &type metadata for CardState.ChangedPropertyNotificationInfo;
      *(v26 + 72) = v22;
      *(v26 + 80) = v23;

      sub_1000D57AC(v26);
      swift_setDeallocating();
      sub_100073B40(v26 + 32);
      swift_deallocClassInstance();
      v27 = Dictionary._bridgeToObjectiveC()().super.isa;

      [v24 postNotificationName:v25 object:v6 userInfo:v27];

      p_opt_class_meths = &OBJC_PROTOCOL___UIWindowSceneDelegate.opt_class_meths;
      a2 = v199;
LABEL_29:
      if (*(p_opt_class_meths + 1056) != 1 || !*(v6 + 80))
      {
        goto LABEL_34;
      }
    }

    if (qword_1001FC700 != -1)
    {
      swift_once();
    }

    v28 = qword_1001FE430;
    v29 = swift_allocObject();
    *(v29 + 16) = sub_100074384;
    *(v29 + 24) = v6;
    v207 = sub_10003E41C;
    v208 = v29;
    *&v204 = _NSConcreteStackBlock;
    *(&v204 + 1) = 1107296256;
    v205 = sub_100060C48;
    v206 = &unk_1001C1A40;
    v10 = _Block_copy(&v204);

    dispatch_sync(v28, v10);
    _Block_release(v10);
    LOBYTE(v28) = swift_isEscapingClosureAtFileLocation();

    a2 = v199;
    if (v28)
    {
      __break(1u);
LABEL_278:
      __break(1u);
      goto LABEL_279;
    }

LABEL_34:
    v30 = *(v6 + 18);
    *(v6 + 18) = 0;
    if ((v30 & 1) == 0)
    {
      goto LABEL_95;
    }

    v31 = *(v6 + 80);
    if ((v31 & 2) == 0)
    {
      *(v6 + 80) = v31 | 2;
    }

    if (*(v6 + 88))
    {
      if (!*(p_opt_class_meths + 1056))
      {
        goto LABEL_95;
      }

LABEL_91:
      if (!*(v6 + 80))
      {
        goto LABEL_95;
      }

      goto LABEL_92;
    }

    if ((*(p_opt_class_meths + 1056) & 1) == 0)
    {
      type metadata accessor for CardState();
      swift_allocObject();

      v68 = sub_1000737F8(v67);

      v69 = *(v6 + 80);
      *(v6 + 80) = 0;
      v70 = [objc_opt_self() defaultCenter];
      if (qword_1001FC6F0 != -1)
      {
        swift_once();
      }

      v71 = qword_10020A3A0;
      sub_10003C49C(&qword_1002018D0);
      v72 = swift_allocObject();
      *(v72 + 16) = v196;
      strcpy(&v204, "changeInfoKey");
      HIWORD(v204) = -4864;
      AnyHashable.init<A>(_:)();
      *(v72 + 96) = &type metadata for CardState.ChangedPropertyNotificationInfo;
      *(v72 + 72) = v68;
      *(v72 + 80) = v69;

      sub_1000D57AC(v72);
      swift_setDeallocating();
      sub_100073B40(v72 + 32);
      swift_deallocClassInstance();
      v73 = Dictionary._bridgeToObjectiveC()().super.isa;

      [v70 postNotificationName:v71 object:v6 userInfo:v73];

      p_opt_class_meths = &OBJC_PROTOCOL___UIWindowSceneDelegate.opt_class_meths;
      a2 = v199;
      if ((byte_1001FE420 & 1) == 0)
      {
        goto LABEL_95;
      }

      goto LABEL_91;
    }

LABEL_92:
    if (qword_1001FC700 != -1)
    {
      swift_once();
    }

    v74 = qword_1001FE430;
    v75 = swift_allocObject();
    *(v75 + 16) = sub_100074384;
    *(v75 + 24) = v6;
    v207 = sub_10003E41C;
    v208 = v75;
    *&v204 = _NSConcreteStackBlock;
    *(&v204 + 1) = 1107296256;
    v205 = sub_100060C48;
    v206 = &unk_1001C19F0;
    v10 = _Block_copy(&v204);

    dispatch_sync(v74, v10);
    _Block_release(v10);
    LOBYTE(v74) = swift_isEscapingClosureAtFileLocation();

    a2 = v199;
    if (v74)
    {
      goto LABEL_278;
    }

LABEL_95:
    v76 = *(v6 + 17);
    *(v6 + 17) = 1;
    if (v76)
    {
      goto LABEL_9;
    }

    v77 = *(v6 + 80);
    if ((v77 & 4) == 0)
    {
      *(v6 + 80) = v77 | 4;
      v77 = 1;
    }

    if (*(v6 + 88))
    {
      if ((*(p_opt_class_meths + 1056) & 1) == 0)
      {
        goto LABEL_9;
      }

LABEL_159:
      if (!*(v6 + 80))
      {
        goto LABEL_9;
      }

      goto LABEL_160;
    }

    if (v77)
    {
      v78 = *(p_opt_class_meths + 1056);
    }

    else
    {
      v78 = 1;
    }

    if ((v78 & 1) == 0)
    {
      type metadata accessor for CardState();
      swift_allocObject();

      v109 = sub_1000737F8(v108);

      v110 = *(v6 + 80);
      *(v6 + 80) = 0;
      v111 = [objc_opt_self() defaultCenter];
      if (qword_1001FC6F0 != -1)
      {
        swift_once();
      }

      v112 = qword_10020A3A0;
      sub_10003C49C(&qword_1002018D0);
      v113 = swift_allocObject();
      *(v113 + 16) = v196;
      strcpy(&v204, "changeInfoKey");
      HIWORD(v204) = -4864;
      AnyHashable.init<A>(_:)();
      *(v113 + 96) = &type metadata for CardState.ChangedPropertyNotificationInfo;
      *(v113 + 72) = v109;
      *(v113 + 80) = v110;

      sub_1000D57AC(v113);
      swift_setDeallocating();
      sub_100073B40(v113 + 32);
      swift_deallocClassInstance();
      v114 = Dictionary._bridgeToObjectiveC()().super.isa;

      [v111 postNotificationName:v112 object:v6 userInfo:v114];

      p_opt_class_meths = &OBJC_PROTOCOL___UIWindowSceneDelegate.opt_class_meths;
      a2 = v199;
      if ((byte_1001FE420 & 1) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_159;
    }

    if ((*(p_opt_class_meths + 1056) & 1) == 0)
    {
      goto LABEL_9;
    }

LABEL_160:
    if (qword_1001FC700 != -1)
    {
      swift_once();
    }

    v115 = qword_1001FE430;
    v116 = swift_allocObject();
    *(v116 + 16) = sub_100074384;
    *(v116 + 24) = v6;
    v207 = sub_10003E41C;
    v208 = v116;
    *&v204 = _NSConcreteStackBlock;
    *(&v204 + 1) = 1107296256;
    v205 = sub_100060C48;
    v206 = &unk_1001C19A0;
    v10 = _Block_copy(&v204);

    dispatch_sync(v115, v10);
    _Block_release(v10);
    LOBYTE(v115) = swift_isEscapingClosureAtFileLocation();

    a2 = v199;
    if (v115)
    {
      __break(1u);
LABEL_282:
      __break(1u);
LABEL_283:
      __break(1u);
LABEL_284:
      __break(1u);
LABEL_285:
      __break(1u);
LABEL_286:
      __break(1u);
LABEL_287:
      __break(1u);
      goto LABEL_288;
    }

LABEL_9:
    if ((*(v6 + 32) | 4) == 4)
    {
      goto LABEL_10;
    }

    v42 = *(v6 + 18);
    *(v6 + 18) = 1;
    if (v42)
    {
      goto LABEL_115;
    }

    v43 = *(v6 + 80);
    if ((v43 & 2) == 0)
    {
      *(v6 + 80) = v43 | 2;
    }

    if (*(v6 + 88))
    {
      if (!*(p_opt_class_meths + 1056))
      {
        goto LABEL_115;
      }

LABEL_111:
      if (*(v6 + 80))
      {
LABEL_112:
        if (qword_1001FC700 != -1)
        {
          swift_once();
        }

        v86 = qword_1001FE430;
        v87 = swift_allocObject();
        *(v87 + 16) = sub_100074384;
        *(v87 + 24) = v6;
        v207 = sub_10003E41C;
        v208 = v87;
        *&v204 = _NSConcreteStackBlock;
        *(&v204 + 1) = 1107296256;
        v205 = sub_100060C48;
        v206 = &unk_1001C1810;
        v10 = _Block_copy(&v204);

        dispatch_sync(v86, v10);
        _Block_release(v10);
        LOBYTE(v86) = swift_isEscapingClosureAtFileLocation();

        a2 = v199;
        if (v86)
        {
          goto LABEL_283;
        }

        goto LABEL_115;
      }

      goto LABEL_115;
    }

    if (*(p_opt_class_meths + 1056))
    {
      goto LABEL_112;
    }

    type metadata accessor for CardState();
    swift_allocObject();

    v80 = sub_1000737F8(v79);

    v81 = *(v6 + 80);
    *(v6 + 80) = 0;
    v82 = [objc_opt_self() defaultCenter];
    if (qword_1001FC6F0 != -1)
    {
      swift_once();
    }

    v83 = qword_10020A3A0;
    sub_10003C49C(&qword_1002018D0);
    v84 = swift_initStackObject();
    *(v84 + 16) = v196;
    strcpy(&v204, "changeInfoKey");
    HIWORD(v204) = -4864;
    AnyHashable.init<A>(_:)();
    *(v84 + 96) = &type metadata for CardState.ChangedPropertyNotificationInfo;
    *(v84 + 72) = v80;
    *(v84 + 80) = v81;

    sub_1000D57AC(v84);
    swift_setDeallocating();
    sub_100073B40(v84 + 32);
    v85 = Dictionary._bridgeToObjectiveC()().super.isa;

    [v82 postNotificationName:v83 object:v6 userInfo:v85];

    p_opt_class_meths = &OBJC_PROTOCOL___UIWindowSceneDelegate.opt_class_meths;
    a2 = v199;
    if (byte_1001FE420)
    {
      goto LABEL_111;
    }

LABEL_115:
    v88 = *(v6 + 17);
    *(v6 + 17) = 0;
    if ((v88 & 1) == 0)
    {
      goto LABEL_10;
    }

    v89 = *(v6 + 80);
    if ((v89 & 4) == 0)
    {
      *(v6 + 80) = v89 | 4;
      v89 = 1;
    }

    if (*(v6 + 88))
    {
      if ((*(p_opt_class_meths + 1056) & 1) == 0)
      {
        goto LABEL_10;
      }

LABEL_167:
      if (!*(v6 + 80))
      {
        goto LABEL_10;
      }

LABEL_168:
      if (qword_1001FC700 != -1)
      {
        swift_once();
      }

      v124 = qword_1001FE430;
      v125 = swift_allocObject();
      *(v125 + 16) = sub_100074384;
      *(v125 + 24) = v6;
      v207 = sub_10003E41C;
      v208 = v125;
      *&v204 = _NSConcreteStackBlock;
      *(&v204 + 1) = 1107296256;
      v205 = sub_100060C48;
      v206 = &unk_1001C17C0;
      v126 = _Block_copy(&v204);

      dispatch_sync(v124, v126);
      _Block_release(v126);
      LOBYTE(v124) = swift_isEscapingClosureAtFileLocation();

      a2 = v199;
      v6 = v200;
      v10 = v203;
      if (v124)
      {
        goto LABEL_284;
      }
    }

    else
    {
      if (v89)
      {
        v90 = *(p_opt_class_meths + 1056);
      }

      else
      {
        v90 = 1;
      }

      if (v90)
      {
        if (*(p_opt_class_meths + 1056))
        {
          goto LABEL_168;
        }
      }

      else
      {
        type metadata accessor for CardState();
        swift_allocObject();

        v118 = sub_1000737F8(v117);

        v119 = *(v6 + 80);
        *(v6 + 80) = 0;
        v120 = [objc_opt_self() defaultCenter];
        if (qword_1001FC6F0 != -1)
        {
          swift_once();
        }

        v121 = qword_10020A3A0;
        sub_10003C49C(&qword_1002018D0);
        v122 = swift_allocObject();
        *(v122 + 16) = v196;
        strcpy(&v204, "changeInfoKey");
        HIWORD(v204) = -4864;
        AnyHashable.init<A>(_:)();
        *(v122 + 96) = &type metadata for CardState.ChangedPropertyNotificationInfo;
        *(v122 + 72) = v118;
        *(v122 + 80) = v119;

        sub_1000D57AC(v122);
        swift_setDeallocating();
        sub_100073B40(v122 + 32);
        swift_deallocClassInstance();
        v123 = Dictionary._bridgeToObjectiveC()().super.isa;

        [v120 postNotificationName:v121 object:v6 userInfo:v123];

        p_opt_class_meths = &OBJC_PROTOCOL___UIWindowSceneDelegate.opt_class_meths;
        a2 = v199;
        if (byte_1001FE420)
        {
          goto LABEL_167;
        }
      }

LABEL_10:

      v6 = v200;
      v10 = v203;
    }
  }

  if (*(a2 + 16) || *(v198 + 16))
  {
    v32 = *(v6 + 48);

    v33 = v198;

    v34 = *(sub_100078084(v32, v33) + 16);

    if (v34)
    {
      v204 = v193;
      __chkstk_darwin(v35);
      v190 = &v204;
      v36 = v202;
      v38 = sub_100075364(sub_100078638, v189, v37);
      v202 = v36;
      if (v38)
      {

        v39 = v195;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((*v39 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v39 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      }

      v40 = *(v6 + 16);
      *(v6 + 16) = 1;
      if ((v40 & 1) == 0)
      {
        v41 = *(v6 + 80);
        if ((v41 & 1) == 0)
        {
          *(v6 + 80) = v41 | 1;
        }

        sub_1000724B4();
      }

      goto LABEL_70;
    }

    v44 = *(v6 + 16);
    *(v6 + 16) = 0;
    if (v44 != 1)
    {
      goto LABEL_70;
    }

    v45 = *(v6 + 80);
    if ((v45 & 1) == 0)
    {
      *(v6 + 80) = v45 | 1;
    }

    if (*(v6 + 88))
    {
LABEL_65:
      if (*(p_opt_class_meths + 1056) != 1 || !*(v6 + 80))
      {
        goto LABEL_70;
      }
    }

    else if ((*(p_opt_class_meths + 1056) & 1) == 0)
    {
      type metadata accessor for CardState();
      swift_allocObject();

      v47 = sub_1000737F8(v46);

      v48 = *(v6 + 80);
      *(v6 + 80) = 0;
      v49 = [objc_opt_self() defaultCenter];
      if (qword_1001FC6F0 != -1)
      {
        swift_once();
      }

      v50 = qword_10020A3A0;
      sub_10003C49C(&qword_1002018D0);
      v51 = swift_allocObject();
      *(v51 + 16) = v196;
      strcpy(&v204, "changeInfoKey");
      HIWORD(v204) = -4864;
      AnyHashable.init<A>(_:)();
      *(v51 + 96) = &type metadata for CardState.ChangedPropertyNotificationInfo;
      *(v51 + 72) = v47;
      *(v51 + 80) = v48;

      sub_1000D57AC(v51);
      swift_setDeallocating();
      sub_100073B40(v51 + 32);
      swift_deallocClassInstance();
      v52 = Dictionary._bridgeToObjectiveC()().super.isa;

      [v49 postNotificationName:v50 object:v6 userInfo:v52];

      p_opt_class_meths = &OBJC_PROTOCOL___UIWindowSceneDelegate.opt_class_meths;
      a2 = v199;
      goto LABEL_65;
    }

    if (qword_1001FC700 != -1)
    {
      swift_once();
    }

    v53 = qword_1001FE430;
    v54 = swift_allocObject();
    *(v54 + 16) = sub_100074384;
    *(v54 + 24) = v6;
    v207 = sub_10003E41C;
    v208 = v54;
    *&v204 = _NSConcreteStackBlock;
    *(&v204 + 1) = 1107296256;
    v205 = sub_100060C48;
    v206 = &unk_1001C18B0;
    v10 = _Block_copy(&v204);

    dispatch_sync(v53, v10);
    _Block_release(v10);
    LOBYTE(v53) = swift_isEscapingClosureAtFileLocation();

    a2 = v199;
    if (v53)
    {
      goto LABEL_287;
    }

LABEL_70:
    if (*(v6 + 16) == 1)
    {

      goto LABEL_73;
    }

    v55 = *(sub_100078084(*(v6 + 48), a2) + 16);

    if (v55)
    {
LABEL_73:
      v56 = *(v6 + 18);
      *(v6 + 18) = 1;
      if ((v56 & 1) == 0)
      {
        v57 = *(v6 + 80);
        if ((v57 & 2) == 0)
        {
          *(v6 + 80) = v57 | 2;
        }

        if (*(v6 + 88))
        {
LABEL_81:
          if (*(p_opt_class_meths + 1056) == 1 && *(v6 + 80))
          {
            goto LABEL_83;
          }
        }

        else
        {
          if ((*(p_opt_class_meths + 1056) & 1) == 0)
          {
            type metadata accessor for CardState();
            swift_allocObject();

            v59 = sub_1000737F8(v58);

            v60 = *(v6 + 80);
            *(v6 + 80) = 0;
            v61 = [objc_opt_self() defaultCenter];
            if (qword_1001FC6F0 != -1)
            {
              swift_once();
            }

            v62 = qword_10020A3A0;
            sub_10003C49C(&qword_1002018D0);
            v63 = swift_allocObject();
            *(v63 + 16) = v196;
            strcpy(&v204, "changeInfoKey");
            HIWORD(v204) = -4864;
            AnyHashable.init<A>(_:)();
            *(v63 + 96) = &type metadata for CardState.ChangedPropertyNotificationInfo;
            *(v63 + 72) = v59;
            *(v63 + 80) = v60;

            sub_1000D57AC(v63);
            swift_setDeallocating();
            sub_100073B40(v63 + 32);
            swift_deallocClassInstance();
            v64 = Dictionary._bridgeToObjectiveC()().super.isa;

            [v61 postNotificationName:v62 object:v6 userInfo:v64];

            p_opt_class_meths = &OBJC_PROTOCOL___UIWindowSceneDelegate.opt_class_meths;
            a2 = v199;
            goto LABEL_81;
          }

LABEL_83:
          if (qword_1001FC700 != -1)
          {
            swift_once();
          }

          v65 = qword_1001FE430;
          v66 = swift_allocObject();
          *(v66 + 16) = sub_100074384;
          *(v66 + 24) = v6;
          v207 = sub_10003E41C;
          v208 = v66;
          *&v204 = _NSConcreteStackBlock;
          *(&v204 + 1) = 1107296256;
          v205 = sub_100060C48;
          v206 = &unk_1001C1860;
          v10 = _Block_copy(&v204);

          dispatch_sync(v65, v10);
          _Block_release(v10);
          LOBYTE(v65) = swift_isEscapingClosureAtFileLocation();

          a2 = v199;
          if (v65)
          {
            goto LABEL_282;
          }
        }
      }
    }

    else
    {
      v91 = *(v6 + 18);
      *(v6 + 18) = 0;
      if (v91 == 1)
      {
        v92 = *(v6 + 80);
        if ((v92 & 2) == 0)
        {
          *(v6 + 80) = v92 | 2;
        }

        sub_1000724B4();
      }
    }

    if (*(v6 + 16) & 1) != 0 || (*(v6 + 18))
    {
      v93 = *(v6 + 17);
      *(v6 + 17) = 0;
      if (v93 != 1)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v94 = *(v6 + 17);
      *(v6 + 17) = 1;
      if (v94)
      {
        goto LABEL_9;
      }
    }

LABEL_181:
    v137 = *(v6 + 80);
    if ((v137 & 4) == 0)
    {
      *(v6 + 80) = v137 | 4;
    }

    sub_1000724B4();
    goto LABEL_9;
  }

  v95 = *(v6 + 16);
  *(v6 + 16) = 0;
  if (v95 != 1)
  {
    goto LABEL_150;
  }

  v96 = *(v6 + 80);
  if ((v96 & 1) == 0)
  {
    *(v6 + 80) = v96 | 1;
  }

  if (*(v6 + 88))
  {
LABEL_145:
    if (*(p_opt_class_meths + 1056) == 1 && *(v6 + 80))
    {
      goto LABEL_147;
    }

    goto LABEL_150;
  }

  if ((*(p_opt_class_meths + 1056) & 1) == 0)
  {
    type metadata accessor for CardState();
    swift_allocObject();

    v98 = sub_1000737F8(v97);

    v99 = *(v6 + 80);
    *(v6 + 80) = 0;
    v100 = [objc_opt_self() defaultCenter];
    if (qword_1001FC6F0 != -1)
    {
      swift_once();
    }

    v101 = qword_10020A3A0;
    sub_10003C49C(&qword_1002018D0);
    v102 = swift_allocObject();
    *(v102 + 16) = v196;
    strcpy(&v204, "changeInfoKey");
    HIWORD(v204) = -4864;
    AnyHashable.init<A>(_:)();
    *(v102 + 96) = &type metadata for CardState.ChangedPropertyNotificationInfo;
    *(v102 + 72) = v98;
    *(v102 + 80) = v99;

    sub_1000D57AC(v102);
    swift_setDeallocating();
    sub_100073B40(v102 + 32);
    swift_deallocClassInstance();
    v103 = Dictionary._bridgeToObjectiveC()().super.isa;

    [v100 postNotificationName:v101 object:v6 userInfo:v103];

    p_opt_class_meths = &OBJC_PROTOCOL___UIWindowSceneDelegate.opt_class_meths;
    a2 = v199;
    goto LABEL_145;
  }

LABEL_147:
  if (qword_1001FC700 != -1)
  {
    swift_once();
  }

  v104 = qword_1001FE430;
  v105 = swift_allocObject();
  *(v105 + 16) = sub_100074384;
  *(v105 + 24) = v6;
  v207 = sub_10003E41C;
  v208 = v105;
  *&v204 = _NSConcreteStackBlock;
  *(&v204 + 1) = 1107296256;
  v205 = sub_100060C48;
  v206 = &unk_1001C1950;
  v10 = _Block_copy(&v204);

  dispatch_sync(v104, v10);
  _Block_release(v10);
  LOBYTE(v104) = swift_isEscapingClosureAtFileLocation();

  a2 = v199;
  if ((v104 & 1) == 0)
  {
LABEL_150:
    v106 = *(v6 + 18);
    *(v6 + 18) = 1;
    if (v106)
    {
      goto LABEL_180;
    }

    v107 = *(v6 + 80);
    if ((v107 & 2) == 0)
    {
      *(v6 + 80) = v107 | 2;
    }

    if (*(v6 + 88))
    {
      if (!*(p_opt_class_meths + 1056))
      {
        goto LABEL_180;
      }

LABEL_176:
      if (!*(v6 + 80))
      {
        goto LABEL_180;
      }

LABEL_177:
      if (qword_1001FC700 != -1)
      {
        swift_once();
      }

      v134 = qword_1001FE430;
      v135 = swift_allocObject();
      *(v135 + 16) = sub_100074384;
      *(v135 + 24) = v6;
      v207 = sub_10003E41C;
      v208 = v135;
      *&v204 = _NSConcreteStackBlock;
      *(&v204 + 1) = 1107296256;
      v205 = sub_100060C48;
      v206 = &unk_1001C1900;
      v10 = _Block_copy(&v204);

      dispatch_sync(v134, v10);
      _Block_release(v10);
      LOBYTE(v134) = swift_isEscapingClosureAtFileLocation();

      a2 = v199;
      if (v134)
      {
        goto LABEL_292;
      }
    }

    else
    {
      if (*(p_opt_class_meths + 1056))
      {
        goto LABEL_177;
      }

      type metadata accessor for CardState();
      swift_allocObject();

      v128 = sub_1000737F8(v127);

      v129 = *(v6 + 80);
      *(v6 + 80) = 0;
      v130 = [objc_opt_self() defaultCenter];
      if (qword_1001FC6F0 != -1)
      {
        swift_once();
      }

      v131 = qword_10020A3A0;
      sub_10003C49C(&qword_1002018D0);
      v132 = swift_allocObject();
      *(v132 + 16) = v196;
      strcpy(&v204, "changeInfoKey");
      HIWORD(v204) = -4864;
      AnyHashable.init<A>(_:)();
      *(v132 + 96) = &type metadata for CardState.ChangedPropertyNotificationInfo;
      *(v132 + 72) = v128;
      *(v132 + 80) = v129;

      sub_1000D57AC(v132);
      swift_setDeallocating();
      sub_100073B40(v132 + 32);
      swift_deallocClassInstance();
      v133 = Dictionary._bridgeToObjectiveC()().super.isa;

      [v130 postNotificationName:v131 object:v6 userInfo:v133];

      p_opt_class_meths = &OBJC_PROTOCOL___UIWindowSceneDelegate.opt_class_meths;
      a2 = v199;
      if (byte_1001FE420)
      {
        goto LABEL_176;
      }
    }

LABEL_180:
    v136 = *(v6 + 17);
    *(v6 + 17) = 0;
    if ((v136 & 1) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_181;
  }

  __break(1u);
LABEL_292:
  __break(1u);
LABEL_293:
  v177 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_247:

  v178 = *(v177 + 16);
  *(v177 + 16) = 1;
  if (v178 != 1)
  {
    v179 = *(v177 + 80);
    if ((v179 & 1) == 0)
    {
      *(v177 + 80) = v179 | 1;
    }

    sub_1000724B4();
  }

LABEL_251:

LABEL_252:
  if (v191)
  {
    result = __CocoaSet.count.getter();
    if (result != 1)
    {
      return result;
    }

LABEL_256:
    if ((v201 & 1) == 0)
    {
      result = sub_1001254DC(v10);
      if (result)
      {
        v180 = result;
        v181 = *(result + 16);
        *(result + 16) = 1;
        if ((v181 & 1) == 0)
        {
          v182 = *(result + 80);
          if ((v182 & 1) == 0)
          {
            *(result + 80) = v182 | 1;
          }

          sub_1000724B4();
        }

        v183 = *(v180 + 18);
        *(v180 + 18) = 1;
        if ((v183 & 1) == 0)
        {
          v184 = *(v180 + 80);
          if ((v184 & 2) == 0)
          {
            *(v180 + 80) = v184 | 2;
          }

          sub_1000724B4();
        }

        v185 = *(v180 + 17);
        *(v180 + 17) = 0;
        if (v185)
        {
          v186 = *(v180 + 80);
          if ((v186 & 4) == 0)
          {
            *(v180 + 80) = v186 | 4;
          }

          sub_1000724B4();
        }
      }
    }
  }

  else
  {
    result = v10[2];
    if (result == 1)
    {
      goto LABEL_256;
    }
  }

  return result;
}

unint64_t sub_100077FF4()
{
  result = qword_1001FE6B0;
  if (!qword_1001FE6B0)
  {
    type metadata accessor for CardState();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001FE6B0);
  }

  return result;
}

NSString sub_10007804C()
{
  result = String._bridgeToObjectiveC()();
  qword_10020A3B0 = result;
  return result;
}

uint64_t sub_100078084(uint64_t isStackAllocationSafe, uint64_t a2)
{
  v3 = isStackAllocationSafe;
  v16 = isStackAllocationSafe;
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v17[3] = &v16;
  v17[4] = a2;
  v6 = (1 << v4) + 63;
  v7 = v6 >> 6;
  if (v5 <= 0xD || (v12 = 8 * (v6 >> 6), isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    __chkstk_darwin(isStackAllocationSafe);
    v9 = &v15 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v9, v8);
    v10 = sub_100078224(v9, v7, v3, a2);
  }

  else
  {
    v13 = v12;
    v14 = swift_slowAlloc();
    bzero(v14, v13);
    sub_10007857C(v14, v7, v17);
    v10 = v17[0];
  }

  return v10;
}

uint64_t sub_100078224(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = 0;
  v5 = 0;
  v6 = *(a3 + 16);
  v25 = result;
  v26 = a3 + 32;
  v30 = a4 + 56;
  v27 = v6;
  while (2)
  {
    v24 = v4;
    if (v5 == v6)
    {
      goto LABEL_26;
    }

    v7 = v5;
    while (1)
    {
      if (v7 >= v6)
      {
        __break(1u);
LABEL_28:
        __break(1u);
        return result;
      }

      if (__OFADD__(v7, 1))
      {
        goto LABEL_28;
      }

      v28 = v7 + 1;
      v8 = (v26 + 16 * v7);
      v9 = *v8;
      v10 = v8[1];
      Hasher.init(_seed:)();
      v29 = v9;
      if (v10 >= 9)
      {

        String.hash(into:)();
      }

      else
      {
        Hasher._combine(_:)(qword_100180848[v10]);
        sub_100078568(v9, v10);
      }

      v11 = Hasher._finalize()();
      v12 = -1 << *(a4 + 32);
      v13 = v11 & ~v12;
      v14 = v13 >> 6;
      v15 = 1 << v13;
      if (((1 << v13) & *(v30 + 8 * (v13 >> 6))) != 0)
      {
        break;
      }

LABEL_4:
      result = sub_1000784F0(v29, v10);
LABEL_5:
      v6 = v27;
      v7 = v28;
      if (v28 == v27)
      {
        goto LABEL_26;
      }
    }

    v16 = ~v12;
    while (1)
    {
      v17 = (*(a4 + 48) + 16 * v13);
      v19 = *v17;
      v18 = v17[1];
      Hasher.init(_seed:)();
      if (v18 >= 9)
      {

        String.hash(into:)();
      }

      else
      {
        Hasher._combine(_:)(qword_100180848[v18]);
        sub_100078568(v19, v18);
      }

      v20 = Hasher._finalize()();
      Hasher.init(_seed:)();
      if (v10 >= 9)
      {
        String.hash(into:)();
      }

      else
      {
        Hasher._combine(_:)(qword_100180848[v10]);
      }

      v21 = Hasher._finalize()();
      sub_1000784F0(v19, v18);
      if (v20 == v21)
      {
        break;
      }

      v13 = (v13 + 1) & v16;
      v14 = v13 >> 6;
      v15 = 1 << v13;
      if ((*(v30 + 8 * (v13 >> 6)) & (1 << v13)) == 0)
      {
        goto LABEL_4;
      }
    }

    result = sub_1000784F0(v29, v10);
    v22 = v25[v14];
    v25[v14] = v22 | v15;
    if ((v22 & v15) != 0)
    {
      goto LABEL_5;
    }

    v4 = v24 + 1;
    v6 = v27;
    v5 = v28;
    if (!__OFADD__(v24, 1))
    {
      continue;
    }

    break;
  }

  __break(1u);
LABEL_26:

  return sub_10012A9F8(v25, a2, v24, a4);
}

uint64_t sub_1000784E0(uint64_t a1, unint64_t a2)
{
  if (a2 != 9)
  {
    return sub_1000784F0(a1, a2);
  }

  return a1;
}

uint64_t sub_1000784F0(uint64_t a1, unint64_t a2)
{
  if (a2 >= 9)
  {
  }

  return result;
}

uint64_t sub_100078514(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100078568(uint64_t a1, unint64_t a2)
{
  if (a2 >= 9)
  {
  }

  return result;
}

uint64_t sub_10007857C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_100078224(a1, a2, **(v3 + 16), *(v3 + 24));
  if (!v4)
  {
    *a3 = result;
  }

  return result;
}

id sub_100078654()
{
  v1 = OBJC_IVAR____TtC11Diagnostics21LoadingViewController____lazy_storage___loadingLabel;
  v2 = *(v0 + OBJC_IVAR____TtC11Diagnostics21LoadingViewController____lazy_storage___loadingLabel);
  v3 = v2;
  if (v2 == 1)
  {
    if ([objc_opt_self() isSSRBootIntentSet])
    {
      goto LABEL_6;
    }

    if (qword_1001FC6A0 != -1)
    {
      swift_once();
    }

    if ([*(qword_10020A358 + OBJC_IVAR____TtC11Diagnostics19SetupViewController_currentFlow) destination] - 1 < 6)
    {
LABEL_6:
      v3 = 0;
    }

    else
    {
      v3 = [objc_allocWithZone(UILabel) init];
    }

    v4 = *(v0 + v1);
    *(v0 + v1) = v3;
    v5 = v3;
    sub_100079A54(v4);
  }

  sub_100079AB8(v2);
  return v3;
}

char *sub_100078758()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v32 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DispatchQoS();
  v31 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchTimeInterval();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = (&v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = type metadata accessor for DispatchTime();
  v29 = *(v11 - 8);
  v30 = v11;
  v12 = __chkstk_darwin(v11);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v27 - v15;
  v17 = type metadata accessor for LoadingViewController();
  v34.receiver = v0;
  v34.super_class = v17;
  objc_msgSendSuper2(&v34, "viewDidLoad");
  if (qword_1001FC6A0 != -1)
  {
    swift_once();
  }

  result = [*(qword_10020A358 + OBJC_IVAR____TtC11Diagnostics19SetupViewController_currentFlow) destination];
  if ((result - 1) <= 5)
  {
    [*&v0[OBJC_IVAR____TtC11Diagnostics21LoadingViewController_loadingIndicator] setAlpha:0.0];
    sub_10003E110(0, &qword_1001FD040);
    v28 = v4;
    v19 = v2;
    v20 = v1;
    v27 = static OS_dispatch_queue.main.getter();
    static DispatchTime.now()();
    *v10 = 1500;
    (*(v8 + 104))(v10, enum case for DispatchTimeInterval.milliseconds(_:), v7);
    + infix(_:_:)();
    (*(v8 + 8))(v10, v7);
    v29 = *(v29 + 8);
    v21 = v14;
    v22 = v30;
    (v29)(v21, v30);
    v23 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = sub_100079B00;
    aBlock[5] = v23;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100031FA8;
    aBlock[3] = &unk_1001C1A90;
    v24 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_10005BD2C();
    sub_10003C49C(&unk_1001FD050);
    sub_1000446A0();
    v25 = v32;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v26 = v27;
    OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
    _Block_release(v24);

    (*(v19 + 8))(v25, v20);
    (*(v31 + 8))(v6, v28);
    return (v29)(v16, v22);
  }

  return result;
}

uint64_t sub_100078C44(uint64_t a1)
{
  v2 = objc_opt_self();
  v5[4] = sub_100079B20;
  v5[5] = a1;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 1107296256;
  v5[2] = sub_100031FA8;
  v5[3] = &unk_1001C1AB8;
  v3 = _Block_copy(v5);
  swift_retain_n();

  [v2 animateWithDuration:0x10000 delay:v3 options:0 animations:0.375 completion:0.0];
  _Block_release(v3);
}

void sub_100078D34()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR____TtC11Diagnostics21LoadingViewController_loadingIndicator);

    [v2 setAlpha:1.0];
  }
}

void sub_100078DF8()
{
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    v3 = objc_opt_self();
    v4 = [v3 systemBackgroundColor];
    [v2 setBackgroundColor:v4];

    v5 = [v0 navigationItem];
    [v5 setHidesBackButton:1];

    v6 = *&v0[OBJC_IVAR____TtC11Diagnostics21LoadingViewController_loadingIndicator];
    v7 = [v3 systemGrayColor];
    [v6 setColor:v7];

    [v6 startAnimating];
    [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
    v8 = sub_100078654();
    if (v8)
    {
      v9 = v8;
      v10 = _UISolariumEnabled();
      v11 = sub_1000494C8(0, 0, _swiftEmptyArrayStorage, 0xD00000000000001BLL, 0x800000010018C550);
      if (v10)
      {
        v13 = String._bridgeToObjectiveC()();

        [v9 setText:v13];

        v14 = [v3 labelColor];
        [v9 setTextColor:v14];

        v15 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleBody];
        [v9 setFont:v15];
      }

      else
      {
        v21 = v11;
        v22 = v12;
        sub_100079A64();
        StringProtocol.localizedUppercase.getter();
        v16 = String._bridgeToObjectiveC()();

        [v9 setText:{v16, v21, v22}];

        v17 = [v3 secondaryLabelColor];
        [v9 setTextColor:v17];

        v18 = [objc_opt_self() defaultMetrics];
        v19 = [objc_opt_self() systemFontOfSize:12.0];
        v20 = [v18 scaledFontForFont:v19];

        [v9 setFont:v20];
      }

      [v9 setNumberOfLines:0];
      [v9 setTextAlignment:1];
      [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_100079168()
{
  v1 = [v0 view];
  if (!v1)
  {
    __break(1u);
    goto LABEL_9;
  }

  v2 = v1;
  [v1 addSubview:*&v0[OBJC_IVAR____TtC11Diagnostics21LoadingViewController_loadingIndicator]];

  v3 = sub_100078654();
  if (!v3)
  {
    return;
  }

  v4 = v3;
  v5 = [v0 view];
  if (!v5)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v6 = v5;
  [v5 addSubview:v4];
}

void sub_100079238()
{
  sub_10003C49C(&unk_1001FD020);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_10017ED90;
  v2 = *&v0[OBJC_IVAR____TtC11Diagnostics21LoadingViewController_loadingIndicator];
  v3 = [v2 centerXAnchor];
  v4 = [v0 view];
  if (!v4)
  {
    __break(1u);
    goto LABEL_13;
  }

  v5 = v4;
  v6 = [v4 centerXAnchor];

  v7 = [v3 constraintEqualToAnchor:v6];
  *(v1 + 32) = v7;
  v8 = [v2 bottomAnchor];
  v9 = [v0 view];
  if (!v9)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v10 = v9;
  v11 = objc_opt_self();
  v12 = [v10 centerYAnchor];

  v13 = *&v0[OBJC_IVAR____TtC11Diagnostics21LoadingViewController_centerDisplacement];
  v14 = [v8 constraintEqualToAnchor:v12 constant:-v13];

  *(v1 + 40) = v14;
  sub_10003E110(0, &qword_1001FD550);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v11 activateConstraints:isa];

  v16 = sub_100078654();
  if (!v16)
  {
    return;
  }

  v17 = v16;
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_10017ED60;
  v19 = v17;
  v20 = [v19 centerXAnchor];
  v21 = [v0 view];
  if (!v21)
  {
    goto LABEL_14;
  }

  v22 = v21;
  v23 = [v21 centerXAnchor];

  v24 = [v20 constraintEqualToAnchor:v23];
  *(v18 + 32) = v24;
  v25 = [v19 topAnchor];
  v26 = [v0 view];
  if (!v26)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v27 = v26;
  v28 = [v26 centerYAnchor];

  v29 = [v25 constraintEqualToAnchor:v28 constant:v13];
  *(v18 + 40) = v29;
  v30 = [v19 leadingAnchor];
  v31 = [v0 view];
  if (!v31)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v32 = v31;
  v33 = [v31 leadingAnchor];

  v34 = [v30 constraintEqualToAnchor:v33 constant:25.0];
  *(v18 + 48) = v34;
  v35 = [v19 trailingAnchor];

  v36 = [v0 view];
  if (!v36)
  {
LABEL_17:
    __break(1u);
    return;
  }

  v37 = v36;
  v38 = [v36 trailingAnchor];

  v39 = [v35 constraintEqualToAnchor:v38 constant:-25.0];
  *(v18 + 56) = v39;
  v40 = Array._bridgeToObjectiveC()().super.isa;

  [v11 activateConstraints:v40];
}

id sub_1000796DC(uint64_t a1, uint64_t a2, void *a3)
{
  *&v3[OBJC_IVAR____TtC11Diagnostics21LoadingViewController_loadingIndicatorAppearDelayMilliseconds] = 1500;
  v6 = _UISolariumEnabled();
  v7 = 5.0;
  if (v6)
  {
    v7 = 8.0;
  }

  *&v3[OBJC_IVAR____TtC11Diagnostics21LoadingViewController_centerDisplacement] = v7;
  *&v3[OBJC_IVAR____TtC11Diagnostics21LoadingViewController_fontSizeLoadingLabel] = 0x4028000000000000;
  *&v3[OBJC_IVAR____TtC11Diagnostics21LoadingViewController_margin] = 0x4039000000000000;
  v8 = OBJC_IVAR____TtC11Diagnostics21LoadingViewController_loadingIndicator;
  *&v3[v8] = [objc_allocWithZone(UIActivityIndicatorView) initWithActivityIndicatorStyle:100];
  *&v3[OBJC_IVAR____TtC11Diagnostics21LoadingViewController____lazy_storage___loadingLabel] = 1;
  if (a2)
  {
    v9 = String._bridgeToObjectiveC()();
  }

  else
  {
    v9 = 0;
  }

  v12.receiver = v3;
  v12.super_class = type metadata accessor for LoadingViewController();
  v10 = objc_msgSendSuper2(&v12, "initWithNibName:bundle:", v9, a3);

  return v10;
}

id sub_100079858(void *a1)
{
  *&v1[OBJC_IVAR____TtC11Diagnostics21LoadingViewController_loadingIndicatorAppearDelayMilliseconds] = 1500;
  v3 = _UISolariumEnabled();
  v4 = 5.0;
  if (v3)
  {
    v4 = 8.0;
  }

  *&v1[OBJC_IVAR____TtC11Diagnostics21LoadingViewController_centerDisplacement] = v4;
  *&v1[OBJC_IVAR____TtC11Diagnostics21LoadingViewController_fontSizeLoadingLabel] = 0x4028000000000000;
  *&v1[OBJC_IVAR____TtC11Diagnostics21LoadingViewController_margin] = 0x4039000000000000;
  v5 = OBJC_IVAR____TtC11Diagnostics21LoadingViewController_loadingIndicator;
  *&v1[v5] = [objc_allocWithZone(UIActivityIndicatorView) initWithActivityIndicatorStyle:100];
  *&v1[OBJC_IVAR____TtC11Diagnostics21LoadingViewController____lazy_storage___loadingLabel] = 1;
  v8.receiver = v1;
  v8.super_class = type metadata accessor for LoadingViewController();
  v6 = objc_msgSendSuper2(&v8, "initWithCoder:", a1);

  if (v6)
  {
  }

  return v6;
}

void sub_100079970()
{
  v1 = *(v0 + OBJC_IVAR____TtC11Diagnostics21LoadingViewController____lazy_storage___loadingLabel);

  sub_100079A54(v1);
}

id sub_1000799B0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LoadingViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100079A54(id a1)
{
  if (a1 != 1)
  {
  }
}

unint64_t sub_100079A64()
{
  result = qword_1001FE818;
  if (!qword_1001FE818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001FE818);
  }

  return result;
}

id sub_100079AB8(id result)
{
  if (result != 1)
  {
    return result;
  }

  return result;
}

uint64_t sub_100079AC8()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100079B08(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_100079C80()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IntrinsicSizeAdjustingTableView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100079CD8(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_100079CF0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_100079D38(uint64_t result, int a2, int a3)
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

uint64_t sub_100079D8C()
{
  v1 = *(v0 + 8);
  if (v1)
  {
    return v1();
  }

  return result;
}

uint64_t sub_100079E1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100079F0C();

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_100079E80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100079F0C();

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_100079EE4()
{
  sub_100079F0C();
  UIViewRepresentable.body.getter();
  __break(1u);
}

unint64_t sub_100079F0C()
{
  result = qword_1001FE848;
  if (!qword_1001FE848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001FE848);
  }

  return result;
}

char *sub_100079F60(SEL *a1)
{
  v2 = [objc_opt_self() sharedManager];
  v3 = [v2 snapshot];

  v4 = [v3 queue];
  v5 = _swiftEmptyArrayStorage;
  if (!v4)
  {
    return v5;
  }

  sub_10007BB00();
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v6 >> 62)
  {
    v7 = _CocoaArrayWrapper.endIndex.getter();
    if (!v7)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      goto LABEL_14;
    }
  }

  v22 = _swiftEmptyArrayStorage;
  result = sub_1000B7CBC(0, v7 & ~(v7 >> 63), 0);
  if ((v7 & 0x8000000000000000) == 0)
  {
    v9 = 0;
    v5 = v22;
    do
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v10 = *(v6 + 8 * v9 + 32);
      }

      v11 = v10;
      v12 = [v10 *a1];
      v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v15 = v14;

      v22 = v5;
      v17 = v5[2];
      v16 = v5[3];
      if (v17 >= v16 >> 1)
      {
        sub_1000B7CBC((v16 > 1), v17 + 1, 1);
        v5 = v22;
      }

      ++v9;
      v5[2] = v17 + 1;
      v18 = &v5[2 * v17];
      v18[4] = v13;
      v18[5] = v15;
    }

    while (v7 != v9);
LABEL_14:

    v19 = sub_1000F7AB4(v5);

    v20 = *(v19 + 16);
    if (v20)
    {
      v5 = sub_1000648D0(*(v19 + 16), 0);
      v21 = sub_1000C97E8(&v22, v5 + 4, v20, v19);
      sub_10004A320();
      if (v21 == v20)
      {
        return v5;
      }

      __break(1u);
    }

    return _swiftEmptyArrayStorage;
  }

  __break(1u);
  return result;
}

void *sub_10007A1A0()
{
  v0 = [objc_opt_self() sharedManager];
  v1 = [v0 snapshot];

  v2 = [v1 consentHandles];
  v3 = _swiftEmptyArrayStorage;
  if (v2)
  {
    sub_10003C49C(&unk_100202960);
    v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v5 = *(v4 + 16);
    if (v5)
    {
      v18 = _swiftEmptyArrayStorage;
      sub_1000B7CBC(0, v5, 0);
      v6 = 32;
      v3 = _swiftEmptyArrayStorage;
      while (1)
      {
        v7 = *(v4 + v6);

        AnyHashable.init<A>(_:)();
        if (!*(v7 + 16))
        {
          break;
        }

        v8 = sub_100064B74(v16);
        if ((v9 & 1) == 0)
        {
          break;
        }

        sub_10003E010(*(v7 + 56) + 32 * v8, v17);
        sub_10003DB48(v16);
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_9;
        }

        v10 = 0x656C646E6168;
        v11 = 0xE600000000000000;

LABEL_10:
        v18 = v3;
        v13 = v3[2];
        v12 = v3[3];
        if (v13 >= v12 >> 1)
        {
          sub_1000B7CBC((v12 > 1), v13 + 1, 1);
          v3 = v18;
        }

        v3[2] = v13 + 1;
        v14 = &v3[2 * v13];
        v14[4] = v10;
        v14[5] = v11;
        v6 += 8;
        if (!--v5)
        {
          goto LABEL_13;
        }
      }

      sub_10003DB48(v16);
LABEL_9:

      v10 = 0;
      v11 = 0xE000000000000000;
      goto LABEL_10;
    }

LABEL_13:
  }

  return v3;
}

id sub_10007A3B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v10 = [objc_opt_self() sharedManager];
  v11 = [v10 snapshot];

  v12 = [v11 topLevelPrivacyPolicy];
  if (v12)
  {
  }

  v7[OBJC_IVAR____TtC11Diagnostics36EnhancedLoggingConsentViewController_snapshotHasTopLevelPrivacyPolicy] = v12 != 0;
  v13 = &v7[OBJC_IVAR____TtC11Diagnostics36EnhancedLoggingConsentViewController_delegate];
  *v13 = 0u;
  *(v13 + 1) = 0u;
  *(v13 + 4) = 0;
  v14 = OBJC_IVAR____TtC11Diagnostics36EnhancedLoggingConsentViewController_bundleQueue;
  *&v7[v14] = sub_100079F60(&selRef_type);
  v15 = OBJC_IVAR____TtC11Diagnostics36EnhancedLoggingConsentViewController_typeQueue;
  *&v7[v15] = sub_100079F60(&selRef_typeName);
  v16 = OBJC_IVAR____TtC11Diagnostics36EnhancedLoggingConsentViewController_consentHandles;
  *&v7[v16] = sub_10007A1A0();
  v17 = OBJC_IVAR____TtC11Diagnostics36EnhancedLoggingConsentViewController_diagnosticsTable;
  *&v7[v17] = [objc_allocWithZone(UITableView) initWithFrame:1 style:{0.0, 0.0, 0.0, 0.0}];
  if (qword_1001FC7E8 != -1)
  {
    swift_once();
  }

  if (SessionManager.currentSession.getter())
  {
    v18 = Session.requiresFollowUpQuestion.getter();

    v19 = v18 ^ 1;
  }

  else
  {
    v19 = 1;
  }

  v7[OBJC_IVAR____TtC11Diagnostics36EnhancedLoggingConsentViewController_willAllowExpressFlow] = v19 & 1;
  v20 = String._bridgeToObjectiveC()();

  if (!a4)
  {
    v21 = 0;
    if (a6)
    {
      goto LABEL_10;
    }

LABEL_12:
    v22 = 0;
    goto LABEL_13;
  }

  v21 = String._bridgeToObjectiveC()();

  if (!a6)
  {
    goto LABEL_12;
  }

LABEL_10:
  v22 = String._bridgeToObjectiveC()();

LABEL_13:
  v25.receiver = v7;
  v25.super_class = type metadata accessor for EnhancedLoggingConsentViewController();
  v23 = objc_msgSendSuper2(&v25, "initWithTitle:detailText:symbolName:contentLayout:", v20, v21, v22, 3);

  return v23;
}

void sub_10007A6C8()
{
  sub_100101C50();
  [v0 setModalPresentationStyle:2];
  [*&v0[OBJC_IVAR____TtC11Diagnostics32ConsentNoticeTableViewController_tableView] setDataSource:v0];
  if ((_UISolariumEnabled() & 1) == 0)
  {
    v1 = [v0 navigationController];
    if (v1)
    {
      v2 = v1;
      v3 = [v1 navigationBar];

      v4 = [objc_allocWithZone(UIImage) init];
      [v3 setBackgroundImage:v4 forBarMetrics:0];
    }

    v5 = [v0 navigationController];
    if (v5)
    {
      v6 = v5;
      v7 = [v5 navigationBar];

      v8 = [objc_allocWithZone(UIImage) init];
      [v7 setShadowImage:v8];
    }
  }

  if (v0[OBJC_IVAR____TtC11Diagnostics36EnhancedLoggingConsentViewController_willAllowExpressFlow] == 1)
  {
    v9 = sub_1000494C8(0, 0, _swiftEmptyArrayStorage, 0xD000000000000023, 0x800000010018C760);
    v10 = &v0[OBJC_IVAR____TtC11Diagnostics27ConsentNoticeViewController_primaryActionTitle];
    *v10 = v9;
    v10[1] = v11;

    v12 = swift_allocObject();
    *(v12 + 16) = v0;
    v13 = &v0[OBJC_IVAR____TtC11Diagnostics27ConsentNoticeViewController_primaryAction];
    v14 = *&v0[OBJC_IVAR____TtC11Diagnostics27ConsentNoticeViewController_primaryAction];
    *v13 = sub_10007B68C;
    v13[1] = v12;
    v15 = v0;
    sub_10003C52C(v14);
    v16 = swift_allocObject();
    *(v16 + 16) = v15;
    v17 = &v15[OBJC_IVAR____TtC11Diagnostics27ConsentNoticeViewController_secondaryAction];
    v18 = *&v15[OBJC_IVAR____TtC11Diagnostics27ConsentNoticeViewController_secondaryAction];
    *v17 = sub_10007B6AC;
    v17[1] = v16;
    v19 = v15;
    sub_10003C52C(v18);
    v20 = sub_1000494C8(0, 0, _swiftEmptyArrayStorage, 0xD00000000000001CLL, 0x800000010018C790);
    v21 = &v19[OBJC_IVAR____TtC11Diagnostics27ConsentNoticeViewController_secondaryActionTitle];
    *v21 = v20;
    v21[1] = v22;
  }

  else
  {
    v23 = sub_1000494C8(0, 0, _swiftEmptyArrayStorage, 0x45554E49544E4F43, 0xE800000000000000);
    v24 = &v0[OBJC_IVAR____TtC11Diagnostics27ConsentNoticeViewController_primaryActionTitle];
    *v24 = v23;
    v24[1] = v25;

    v26 = swift_allocObject();
    *(v26 + 16) = v0;
    v27 = &v0[OBJC_IVAR____TtC11Diagnostics27ConsentNoticeViewController_primaryAction];
    v28 = *&v0[OBJC_IVAR____TtC11Diagnostics27ConsentNoticeViewController_primaryAction];
    *v27 = sub_10007BB5C;
    v27[1] = v26;
    v29 = v0;
    sub_10003C52C(v28);
  }

  v30 = swift_allocObject();
  *(v30 + 16) = v0;
  v31 = &v0[OBJC_IVAR____TtC11Diagnostics27ConsentNoticeViewController_cancelAction];
  v32 = *&v0[OBJC_IVAR____TtC11Diagnostics27ConsentNoticeViewController_cancelAction];
  *v31 = sub_10007B684;
  v31[1] = v30;
  v33 = v0;

  sub_10003C52C(v32);
  v34 = *v31;
  v37 = [v33 navigationItem];
  if (v34)
  {
    v35 = [objc_allocWithZone(UIBarButtonItem) initWithBarButtonSystemItem:1 target:v33 action:"cancelButtonPressed:"];
    [v37 setLeftBarButtonItem:v35];

    v36 = v35;
  }

  else
  {
    [v37 setLeftBarButtonItem:0];

    v36 = v37;
  }
}

uint64_t sub_10007AB24(char *a1, char a2)
{
  v4 = OBJC_IVAR____TtC11Diagnostics36EnhancedLoggingConsentViewController_delegate;
  swift_beginAccess();
  sub_10007B6CC(&a1[v4], v7);
  if (!v8)
  {
    return sub_10007B5E4(v7);
  }

  sub_10004476C(v7, v6);
  sub_10007B5E4(v7);
  sub_1000442A0(v6, v6[3]);
  sub_1000AA164(a1, a2);
  return sub_100044554(v6);
}

void sub_10007ABCC(void *a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  v3 = a1;
  v4 = [v3 navigationItem];
  v5 = [v4 leftBarButtonItem];

  v6 = sub_1000BC190(sub_10007B73C, v2, 0, 0, v5);

  [v3 presentViewController:v6 animated:1 completion:0];
}

uint64_t sub_10007ACBC(uint64_t a1, char *a2)
{
  v3 = OBJC_IVAR____TtC11Diagnostics36EnhancedLoggingConsentViewController_delegate;
  swift_beginAccess();
  sub_10007B6CC(&a2[v3], v6);
  if (!v7)
  {
    return sub_10007B5E4(v6);
  }

  sub_10004476C(v6, v5);
  sub_10007B5E4(v6);
  sub_1000442A0(v5, v5[3]);
  sub_1000AA164(a2, 0);
  return sub_100044554(v5);
}

void sub_10007AF48(void *a1)
{
  v2 = v1;
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  [a1 deselectRowAtIndexPath:isa animated:1];

  if ((v1[OBJC_IVAR____TtC11Diagnostics36EnhancedLoggingConsentViewController_snapshotHasTopLevelPrivacyPolicy] & 1) == 0)
  {
    v13 = *&v1[OBJC_IVAR____TtC11Diagnostics36EnhancedLoggingConsentViewController_typeQueue];
    v14 = IndexPath.row.getter();
    if ((v14 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v14 < *(v13 + 16))
    {
      v15 = objc_opt_self();

      v16 = String._bridgeToObjectiveC()();

      v7 = [v15 findEntryForParameterName:v16];

      if (!v7)
      {
        sub_1000494C8(0, 0, _swiftEmptyArrayStorage, 0xD000000000000024, 0x800000010018C730);
        v26 = v27;
        goto LABEL_11;
      }

      v17 = [v7 displayNameLocalizationKey];
      v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v20 = v19;

      sub_1000494C8(0, 0, _swiftEmptyArrayStorage, v18, v20);

      v12 = [v7 descriptionLocalizationKey];
      goto LABEL_8;
    }

    __break(1u);
    return;
  }

  v5 = [objc_opt_self() sharedManager];
  v6 = [v5 snapshot];

  v7 = [v6 topLevelPrivacyPolicy];
  if (!v7)
  {
    v26 = 0;
    goto LABEL_11;
  }

  v8 = [v7 suiteNameKey];
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  sub_1000494C8(0, 0, _swiftEmptyArrayStorage, v9, v11);

  v12 = [v7 policyKey];
LABEL_8:
  v21 = v12;
  v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v24 = v23;

  sub_1000494C8(0, 0, _swiftEmptyArrayStorage, v22, v24);
  v26 = v25;

LABEL_11:
  v28 = String._bridgeToObjectiveC()();

  if (v26)
  {
    v29 = String._bridgeToObjectiveC()();
  }

  else
  {
    v29 = 0;
  }

  v32 = [objc_allocWithZone(OBWelcomeController) initWithTitle:v28 detailText:v29 symbolName:0];

  v30 = [v2 navigationController];
  if (v30)
  {
    v31 = v30;
    [v30 pushViewController:v32 animated:1];
  }
}

void sub_10007B438()
{
  sub_10007B5E4(v0 + OBJC_IVAR____TtC11Diagnostics36EnhancedLoggingConsentViewController_delegate);

  v1 = *(v0 + OBJC_IVAR____TtC11Diagnostics36EnhancedLoggingConsentViewController_diagnosticsTable);
}

id sub_10007B4A8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EnhancedLoggingConsentViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_10007B590()
{
  result = qword_1001FE8B0;
  if (!qword_1001FE8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001FE8B0);
  }

  return result;
}

uint64_t sub_10007B5E4(uint64_t a1)
{
  v2 = sub_10003C49C(&qword_1001FE8B8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10007B64C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10007B6CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10003C49C(&qword_1001FE8B8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_10007B744()
{
  v1 = sub_100102D00();
  if (*(v0 + OBJC_IVAR____TtC11Diagnostics36EnhancedLoggingConsentViewController_snapshotHasTopLevelPrivacyPolicy))
  {
    v2 = [objc_opt_self() sharedManager];
    v3 = [v2 snapshot];

    v4 = [v3 topLevelPrivacyPolicy];
    if (v4)
    {
      v5 = [v1 textLabel];
      if (v5)
      {
        v6 = v5;
        v7 = [v4 suiteNameKey];
        v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v10 = v9;

        sub_1000494C8(0, 0, _swiftEmptyArrayStorage, v8, v10);

        v11 = String._bridgeToObjectiveC()();

        [v6 setText:v11];
      }

      v12 = [v1 detailTextLabel];
      if (!v12)
      {
        goto LABEL_15;
      }

      v13 = v12;
      v14 = &selRef_sensitiveInformationKey;
LABEL_14:
      v27 = [v4 *v14];
      v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v30 = v29;

      sub_1000494C8(0, 0, _swiftEmptyArrayStorage, v28, v30);

      v31 = String._bridgeToObjectiveC()();

      [v13 setText:v31];

LABEL_15:
      goto LABEL_16;
    }

    goto LABEL_16;
  }

  v15 = *(v0 + OBJC_IVAR____TtC11Diagnostics36EnhancedLoggingConsentViewController_typeQueue);
  result = IndexPath.row.getter();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_20;
  }

  if (result >= *(v15 + 16))
  {
LABEL_20:
    __break(1u);
    return result;
  }

  v17 = objc_opt_self();

  v18 = String._bridgeToObjectiveC()();

  v4 = [v17 findEntryForParameterName:v18];

  if (v4)
  {
    v19 = [v1 textLabel];
    if (v19)
    {
      v20 = v19;
      v21 = [v4 displayNameLocalizationKey];
      v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v24 = v23;

      sub_1000494C8(0, 0, _swiftEmptyArrayStorage, v22, v24);

      v25 = String._bridgeToObjectiveC()();

      [v20 setText:v25];
    }

    v26 = [v1 detailTextLabel];
    if (!v26)
    {
      goto LABEL_15;
    }

    v13 = v26;
    v14 = &selRef_sensitiveInformationLocalizationKey;
    goto LABEL_14;
  }

LABEL_16:
  v32 = [v1 detailTextLabel];
  if (v32)
  {
    v33 = v32;
    [v32 setNumberOfLines:2];
  }

  [v1 setAccessoryType:1];
  return v1;
}

unint64_t sub_10007BB00()
{
  result = qword_1001FE8C0;
  if (!qword_1001FE8C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1001FE8C0);
  }

  return result;
}

uint64_t sub_10007BB8C@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v26 = a3;
  v23 = type metadata accessor for DynamicTypeSize();
  v5 = *(v23 - 8);
  __chkstk_darwin(v23);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10003C49C(&qword_1001FE8C8);
  v24 = *(v8 - 8);
  v25 = v8;
  __chkstk_darwin(v8);
  v10 = &v22 - v9;
  v22 = static HorizontalAlignment.center.getter();
  v44 = 1;
  sub_10007BFB0(a2, &v31);
  v50 = v36;
  v51 = v37;
  v52 = v38;
  v47 = v33;
  v48 = v34;
  v49 = v35;
  v45 = v31;
  v46 = v32;
  v54[6] = v37;
  v54[7] = v38;
  v54[2] = v33;
  v54[3] = v34;
  v54[4] = v35;
  v54[5] = v36;
  v53 = v39;
  v55 = v39;
  v54[0] = v31;
  v54[1] = v32;
  sub_100044704(&v45, &v27, &qword_1001FE8D0);
  sub_10003DD84(v54, &qword_1001FE8D0);
  *(&v43[5] + 7) = v50;
  *(&v43[6] + 7) = v51;
  *(&v43[7] + 7) = v52;
  *(&v43[1] + 7) = v46;
  *(&v43[2] + 7) = v47;
  *(&v43[3] + 7) = v48;
  *(&v43[4] + 7) = v49;
  *(&v43[8] + 7) = v53;
  *(v43 + 7) = v45;
  v11 = v44;
  if (a1)
  {
    v12 = static Color.white.getter();
  }

  else
  {
    v12 = static Color.black.getter();
  }

  v13 = v12;
  KeyPath = swift_getKeyPath();
  *(&v28[5] + 1) = v43[5];
  *(&v28[6] + 1) = v43[6];
  *(&v28[7] + 1) = v43[7];
  v28[8] = *(&v43[7] + 15);
  *(&v28[1] + 1) = v43[1];
  *(&v28[2] + 1) = v43[2];
  *(&v28[3] + 1) = v43[3];
  *(&v28[4] + 1) = v43[4];
  v27 = v22;
  LOBYTE(v28[0]) = v11;
  *(v28 + 1) = v43[0];
  *&v29 = v13;
  *(&v29 + 1) = KeyPath;
  v30 = 1;
  v15 = v7;
  v16 = v7;
  v17 = v23;
  (*(v5 + 104))(v16, enum case for DynamicTypeSize.large(_:), v23);
  v18 = sub_10003C49C(&qword_1001FE8D8);
  v19 = sub_10007C628();
  View.dynamicTypeSize(_:)();
  (*(v5 + 8))(v15, v17);
  v39 = v28[7];
  v40 = v28[8];
  v41 = v29;
  v42 = v30;
  v35 = v28[3];
  v36 = v28[4];
  v37 = v28[5];
  v38 = v28[6];
  v31 = v27;
  v32 = v28[0];
  v33 = v28[1];
  v34 = v28[2];
  sub_10003DD84(&v31, &qword_1001FE8D8);
  *&v27 = v18;
  *(&v27 + 1) = v19;
  swift_getOpaqueTypeConformance2();
  v20 = v25;
  View.accessibilityHidden(_:)();
  return (*(v24 + 8))(v10, v20);
}

id sub_10007BFB0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = sub_10003C49C(&qword_1001FE918);
  __chkstk_darwin(v4 - 8);
  v6 = &v63 - v5;
  v7 = sub_10003C49C(&qword_1001FE920);
  __chkstk_darwin(v7 - 8);
  v9 = &v63 - v8;
  v10 = MobileGestalt_copy_deviceClass_obj();
  if (v10)
  {
    v72 = a1;
    v11 = v10;
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    if (v12 == 1684099177 && v14 == 0xE400000000000000)
    {
    }

    else
    {
      _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  Image.init(systemName:)();
  static SymbolRenderingMode.monochrome.getter();
  v15 = type metadata accessor for SymbolRenderingMode();
  (*(*(v15 - 8) + 56))(v9, 0, 1, v15);
  v16 = Image.symbolRenderingMode(_:)();

  sub_10003DD84(v9, &qword_1001FE920);
  static Font.Weight.ultraLight.getter();
  v17 = type metadata accessor for Font.Design();
  (*(*(v17 - 8) + 56))(v6, 1, 1, v17);
  v72 = static Font.system(size:weight:design:)();
  sub_10003DD84(v6, &qword_1001FE918);
  KeyPath = swift_getKeyPath();
  v70 = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v94 = 0;
  result = MobileGestalt_copy_userAssignedDeviceName_obj();
  if (result)
  {
    v27 = result;
    v69 = v16;
    v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v30 = v29;

    *&v81 = v28;
    *(&v81 + 1) = v30;
    sub_100079A64();
    v31 = Text.init<A>(_:)();
    v33 = v32;
    v35 = v34;
    static Font.subheadline.getter();
    Font.bold()();

    v36 = Text.font(_:)();
    v66 = v37;
    v67 = v36;
    v65 = v38;
    v68 = v39;

    sub_10007C874(v31, v33, v35 & 1);

    result = MobileGestalt_copy_marketingNameString_obj();
    if (result)
    {
      v40 = result;
      v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v43 = v42;

      *&v81 = v41;
      *(&v81 + 1) = v43;
      v44 = Text.init<A>(_:)();
      v46 = v45;
      v48 = v47;
      static Font.subheadline.getter();
      v49 = Text.font(_:)();
      v51 = v50;
      v64 = v52;
      v54 = v53;

      sub_10007C874(v44, v46, v48 & 1);

      LOBYTE(v46) = v65 & 1;
      v75 = v65 & 1;
      *&v76 = v69;
      *(&v76 + 1) = KeyPath;
      *&v77 = v72;
      BYTE8(v77) = v70;
      HIDWORD(v77) = *(v95 + 3);
      *(&v77 + 9) = v95[0];
      *&v78 = v19;
      *(&v78 + 1) = v21;
      *&v79 = v23;
      *(&v79 + 1) = v25;
      v80 = 0;
      LOBYTE(v85) = 0;
      v83 = v78;
      v84 = v79;
      v81 = v76;
      v82 = v77;
      v74 = v65 & 1;
      v55 = v64;
      v56 = v64 & 1;
      v73 = v64 & 1;
      v57 = v76;
      v58 = v77;
      v59 = v79;
      v60 = v85;
      *(a2 + 32) = v78;
      *(a2 + 48) = v59;
      *a2 = v57;
      *(a2 + 16) = v58;
      v62 = v66;
      v61 = v67;
      *(a2 + 64) = v60;
      *(a2 + 72) = v61;
      *(a2 + 80) = v62;
      *(a2 + 88) = v46;
      *(a2 + 96) = v68;
      *(a2 + 104) = v49;
      *(a2 + 112) = v51;
      *(a2 + 120) = v55 & 1;
      *(a2 + 128) = v54;
      sub_100044704(&v76, v86, &qword_1001FE928);
      sub_10007C884(v61, v62, v46);

      sub_10007C884(v49, v51, v56);

      sub_10007C874(v49, v51, v56);

      sub_10007C874(v61, v62, v75);

      v86[0] = v69;
      v86[1] = KeyPath;
      v86[2] = v72;
      v87 = v70;
      *v88 = v95[0];
      *&v88[3] = *(v95 + 3);
      v89 = v19;
      v90 = v21;
      v91 = v23;
      v92 = v25;
      v93 = 0;
      return sub_10003DD84(v86, &qword_1001FE928);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10007C580@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.multilineTextAlignment.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10007C5AC@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.multilineTextAlignment.getter();
  *a1 = result;
  return result;
}

unint64_t sub_10007C628()
{
  result = qword_1001FE8E0;
  if (!qword_1001FE8E0)
  {
    sub_10003C4E4(&qword_1001FE8D8);
    sub_10007C6E0();
    sub_10005C71C(&qword_1001FE908, &qword_1001FE910);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001FE8E0);
  }

  return result;
}

unint64_t sub_10007C6E0()
{
  result = qword_1001FE8E8;
  if (!qword_1001FE8E8)
  {
    sub_10003C4E4(&qword_1001FE8F0);
    sub_10005C71C(&qword_1001FE8F8, &qword_1001FE900);
    sub_10005C71C(&qword_1001FD950, &qword_1001FD958);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001FE8E8);
  }

  return result;
}

uint64_t sub_10007C7C4@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.font.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10007C7F0@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.font.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10007C874(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_10007C884(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_10007C898()
{
  result = qword_1001FE930;
  if (!qword_1001FE930)
  {
    sub_10003C4E4(&qword_1001FE938);
    sub_10003C4E4(&qword_1001FE8D8);
    sub_10007C628();
    swift_getOpaqueTypeConformance2();
    sub_10007C960();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001FE930);
  }

  return result;
}

unint64_t sub_10007C960()
{
  result = qword_1001FE940;
  if (!qword_1001FE940)
  {
    type metadata accessor for AccessibilityAttachmentModifier();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001FE940);
  }

  return result;
}

void sub_10007CA60()
{
  v2 = v0;
  v3 = [v0 view];
  if (!v3)
  {
    goto LABEL_40;
  }

  v4 = v3;
  v5 = [objc_opt_self() systemBackgroundColor];
  [v4 setBackgroundColor:v5];

  [v2 setModalInPresentation:1];
  v6 = *&v2[OBJC_IVAR____TtC11Diagnostics29FullscreenAlertViewController_contentUnavailableView];
  v7 = [v2 view];
  if (!v7)
  {
LABEL_41:
    __break(1u);
    return;
  }

  v8 = v7;
  [v7 bounds];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  [v6 setFrame:{v10, v12, v14, v16}];
  v17 = &v2[OBJC_IVAR____TtC11Diagnostics29FullscreenAlertViewController_alert];
  v18 = *&v2[OBJC_IVAR____TtC11Diagnostics29FullscreenAlertViewController_alert + 16];
  v64[0] = *&v2[OBJC_IVAR____TtC11Diagnostics29FullscreenAlertViewController_alert];
  v64[1] = v18;
  v64[2] = *&v2[OBJC_IVAR____TtC11Diagnostics29FullscreenAlertViewController_alert + 32];
  v65 = v2[OBJC_IVAR____TtC11Diagnostics29FullscreenAlertViewController_alert + 48];
  sub_10007D588(v64, v62);
  v19 = sub_100089588(0);
  v21 = v20;
  sub_10007D5E4(v64);
  if (v21)
  {
    sub_1000494C8(0, 0, _swiftEmptyArrayStorage, v19, v21);

    v21 = String._bridgeToObjectiveC()();
  }

  [v6 setTitle:v21];

  v61 = v17[48];
  v22 = *(v17 + 1);
  v58 = *v17;
  v59 = v22;
  v60 = *(v17 + 2);
  if (v61 < 2u || v60 | *(&v60 + 1) | v58 | *(&v59 + 1) | v59 | *(&v58 + 1))
  {
    sub_10007D588(&v58, v62);
    v23 = sub_100089588(1);
    v25 = v24;
    sub_10007D5E4(&v58);
    if (v25)
    {
      sub_1000494C8(0, 0, _swiftEmptyArrayStorage, v23, v25);

      v25 = String._bridgeToObjectiveC()();
    }

    [v6 setMessage:v25];
  }

  else
  {
    v41 = [objc_allocWithZone(NSByteCountFormatter) init];
    [v41 setAllowedUnits:6];
    if (qword_1001FC7E0 != -1)
    {
      swift_once();
    }

    v42 = sub_1000F145C(qword_1002010E8);
    if ((v42 & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_36;
    }

    v43 = [v41 stringFromByteCount:v42];
    v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v46 = v45;

    v47 = *(v17 + 1);
    v62[0] = *v17;
    v48 = *(v17 + 2);
    v62[1] = v47;
    v62[2] = v48;
    v63 = v17[48];
    sub_10007D588(v62, &aBlock);
    v49 = sub_100089588(1);
    v25 = v50;
    sub_10007D5E4(v62);
    if (v25)
    {
      sub_10003C49C(&unk_1001FEAD0);
      v51 = swift_allocObject();
      *(v51 + 16) = xmmword_10017EC00;
      *(v51 + 56) = &type metadata for String;
      *(v51 + 64) = sub_10003DFBC();
      *(v51 + 32) = v44;
      *(v51 + 40) = v46;
      sub_1000494C8(0, 0, v51, v49, v25);

      v25 = String._bridgeToObjectiveC()();
    }

    [v6 setMessage:v25];
  }

  v26 = [objc_msgSend(objc_opt_self() "currentPlatform")];
  swift_unknownObjectRelease();
  if (v26)
  {
    sub_1000494C8(0, 0, _swiftEmptyArrayStorage, 0xD000000000000017, 0x800000010018C890);
    v27 = String._bridgeToObjectiveC()();

    [v6 setButtonTitle:v27];

    v56 = sub_10007D270;
    v57 = 0;
    aBlock = _NSConcreteStackBlock;
    v53 = 1107296256;
    v54 = sub_100031FA8;
    v55 = &unk_1001C1DB0;
    v28 = _Block_copy(&aBlock);
LABEL_25:
    [v6 setButtonAction:v28];
    _Block_release(v28);
    return;
  }

  if (sub_1000660CC())
  {
    sub_1000494C8(0, 0, _swiftEmptyArrayStorage, 0xD000000000000017, 0x800000010018C890);
    v29 = String._bridgeToObjectiveC()();

    [v6 setButtonTitle:v29];

    v30 = swift_allocObject();
    *(v30 + 16) = v2;
    v56 = sub_10007D688;
    v57 = v30;
    aBlock = _NSConcreteStackBlock;
    v53 = 1107296256;
    v54 = sub_100031FA8;
    v55 = &unk_1001C1D88;
    v28 = _Block_copy(&aBlock);
    v31 = v2;
    goto LABEL_24;
  }

  v1 = OBJC_IVAR____TtC11Diagnostics29FullscreenAlertViewController_privateAlertAction;
  v32 = *&v2[OBJC_IVAR____TtC11Diagnostics29FullscreenAlertViewController_privateAlertAction];
  if (!(v32 >> 62))
  {
    if (*((v32 & 0xFFFFFFFFFFFFFF8) + 0x10) < 1)
    {
      return;
    }

LABEL_16:
    v33 = *&v2[v1];
    if ((v33 & 0xC000000000000001) == 0)
    {
      if (!*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
        __break(1u);
        goto LABEL_41;
      }

      v34 = *(v33 + 32);

LABEL_19:
      v35 = *(v34 + 16);
      v36 = *(v34 + 24);

      sub_1000494C8(0, 0, _swiftEmptyArrayStorage, v35, v36);

      v37 = String._bridgeToObjectiveC()();

      [v6 setButtonTitle:v37];

      v38 = *&v2[v1];
      if ((v38 & 0xC000000000000001) != 0)
      {

        v39 = specialized _ArrayBuffer._getElementSlowPath(_:)();

        goto LABEL_22;
      }

      if (*((v38 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v39 = *(v38 + 32);

LABEL_22:
        v28 = *(v39 + 40);
        v40 = *(v39 + 48);
        sub_10003E418(v28, v40);

        if (!v28)
        {
          goto LABEL_25;
        }

        v56 = v28;
        v57 = v40;
        aBlock = _NSConcreteStackBlock;
        v53 = 1107296256;
        v54 = sub_100031FA8;
        v55 = &unk_1001C1D38;
        v28 = _Block_copy(&aBlock);
LABEL_24:

        goto LABEL_25;
      }

      goto LABEL_39;
    }

LABEL_36:

    v34 = specialized _ArrayBuffer._getElementSlowPath(_:)();

    goto LABEL_19;
  }

  if (_CocoaArrayWrapper.endIndex.getter() >= 1)
  {
    goto LABEL_16;
  }
}

void sub_10007D2B8(uint64_t a1)
{
  v1 = (a1 + OBJC_IVAR____TtC11Diagnostics29FullscreenAlertViewController_alert);
  if (*(a1 + OBJC_IVAR____TtC11Diagnostics29FullscreenAlertViewController_alert + 48) >= 2u)
  {
    v3 = v1[2];
    v2 = v1[3];
    v4 = *v1;
    v5 = v1[1];
    v6 = v1[4] | v1[5];
    if (v6 | v4 | v2 | v3 | v5)
    {
      v7 = v6 | v2 | v3 | v5;
      if (v4 == 1 && v7 == 0)
      {
        sub_1000F6FF8(11);
      }
    }

    else
    {
      sub_1000F6FF8(10);
    }
  }
}

void sub_10007D31C()
{
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    [v1 addSubview:*&v0[OBJC_IVAR____TtC11Diagnostics29FullscreenAlertViewController_contentUnavailableView]];
  }

  else
  {
    __break(1u);
  }
}

void sub_10007D3B8()
{
  sub_10007D4DC(*(v0 + OBJC_IVAR____TtC11Diagnostics29FullscreenAlertViewController_alert), *(v0 + OBJC_IVAR____TtC11Diagnostics29FullscreenAlertViewController_alert + 8), *(v0 + OBJC_IVAR____TtC11Diagnostics29FullscreenAlertViewController_alert + 16), *(v0 + OBJC_IVAR____TtC11Diagnostics29FullscreenAlertViewController_alert + 24), *(v0 + OBJC_IVAR____TtC11Diagnostics29FullscreenAlertViewController_alert + 32), *(v0 + OBJC_IVAR____TtC11Diagnostics29FullscreenAlertViewController_alert + 40), *(v0 + OBJC_IVAR____TtC11Diagnostics29FullscreenAlertViewController_alert + 48));

  v1 = *(v0 + OBJC_IVAR____TtC11Diagnostics29FullscreenAlertViewController_contentUnavailableView);
}

id sub_10007D418()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FullscreenAlertViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void *sub_10007D4DC(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if (a7 == 1)
  {

    sub_10003C52C(a3);
    v9 = a5;
  }

  else
  {
    if (a7)
    {
      return result;
    }

    sub_10003C52C(a2);
    v9 = a4;
  }

  return sub_10003C52C(v9);
}

uint64_t sub_10007D638(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10007D650()
{

  return _swift_deallocObject(v0, 24, 7);
}

id sub_10007D6A0()
{
  v0 = [objc_allocWithZone(UILabel) init];
  v1 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleBody];
  [v0 setFont:v1];

  [v0 setNumberOfLines:0];
  v2 = [objc_opt_self() sharedApplication];
  v3 = [v2 userInterfaceLayoutDirection] != 1;

  [v0 setTextAlignment:2 * v3];
  v4 = [objc_opt_self() secondaryLabelColor];
  [v0 setTextColor:v4];

  [v0 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v0 setAdjustsFontForContentSizeCategory:1];
  return v0;
}

uint64_t sub_10007D7F4()
{
  v1 = sub_10003C49C(&unk_1001FD540);
  __chkstk_darwin(v1 - 8);
  v3 = &v14 - v2;
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC11Diagnostics29SelfServiceSessionHistoryCell_date;
  swift_beginAccess();
  sub_10007E58C(v0 + v8, v3);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    return sub_10004E6A0(v3);
  }

  (*(v5 + 32))(v7, v3, v4);
  v10 = [objc_allocWithZone(NSDateFormatter) init];
  [v10 setDateStyle:1];
  [v10 setTimeStyle:1];
  [v10 setDoesRelativeDateFormatting:1];
  v11 = *(v0 + OBJC_IVAR____TtC11Diagnostics29SelfServiceSessionHistoryCell_dateLabel);
  isa = Date._bridgeToObjectiveC()().super.isa;
  v13 = [v10 stringFromDate:isa];

  if (!v13)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = String._bridgeToObjectiveC()();
  }

  [v11 setText:v13];

  return (*(v5 + 8))(v7, v4);
}

id sub_10007DA60()
{
  [v0 setSelectionStyle:0];
  v1 = *&v0[OBJC_IVAR____TtC11Diagnostics29SelfServiceSessionHistoryCell_rootStackView];
  [v1 setAxis:0];
  [v1 setDistribution:1];
  [v1 setDirectionalLayoutMargins:{16.0, 16.0, 16.0, 16.0}];
  [v1 setLayoutMarginsRelativeArrangement:1];

  return [v1 setTranslatesAutoresizingMaskIntoConstraints:0];
}

void sub_10007DB18()
{
  v1 = *&v0[OBJC_IVAR____TtC11Diagnostics29SelfServiceSessionHistoryCell_rootStackView];
  [v1 addArrangedSubview:*&v0[OBJC_IVAR____TtC11Diagnostics29SelfServiceSessionHistoryCell_suiteNameLabel]];
  [v1 addArrangedSubview:*&v0[OBJC_IVAR____TtC11Diagnostics29SelfServiceSessionHistoryCell_dateLabel]];
  v2 = [v0 contentView];
  [v2 addSubview:v1];
}

void sub_10007DBC4()
{
  v1 = v0;
  v2 = objc_opt_self();
  sub_10003C49C(&unk_1001FD020);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_10017ED60;
  v4 = *&v1[OBJC_IVAR____TtC11Diagnostics29SelfServiceSessionHistoryCell_rootStackView];
  v5 = [v4 bottomAnchor];
  v6 = [v1 contentView];
  v7 = [v6 bottomAnchor];

  v8 = [v5 constraintEqualToAnchor:v7];
  *(v3 + 32) = v8;
  v9 = [v4 topAnchor];
  v10 = [v1 contentView];
  v11 = [v10 topAnchor];

  v12 = [v9 constraintEqualToAnchor:v11];
  *(v3 + 40) = v12;
  v13 = [v4 trailingAnchor];
  v14 = [v1 contentView];
  v15 = [v14 trailingAnchor];

  v16 = [v13 constraintEqualToAnchor:v15];
  *(v3 + 48) = v16;
  v17 = [v4 leadingAnchor];
  v18 = [v1 contentView];
  v19 = [v18 leadingAnchor];

  v20 = [v17 constraintEqualToAnchor:v19];
  *(v3 + 56) = v20;
  sub_10007E540();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v2 activateConstraints:isa];
}

id sub_10007DE78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = OBJC_IVAR____TtC11Diagnostics29SelfServiceSessionHistoryCell_rootStackView;
  *&v3[v6] = [objc_allocWithZone(UIStackView) init];
  *&v3[OBJC_IVAR____TtC11Diagnostics29SelfServiceSessionHistoryCell_defaultSpacing] = 0x4030000000000000;
  v7 = OBJC_IVAR____TtC11Diagnostics29SelfServiceSessionHistoryCell_suiteNameLabel;
  v8 = [objc_allocWithZone(UILabel) init];
  v9 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleBody];
  [v8 setFont:v9];

  [v8 setNumberOfLines:0];
  [v8 setTextAlignment:4];
  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v8 setAdjustsFontForContentSizeCategory:1];
  *&v3[v7] = v8;
  v10 = &v3[OBJC_IVAR____TtC11Diagnostics29SelfServiceSessionHistoryCell_suiteName];
  *v10 = 0;
  *(v10 + 1) = 0;
  v11 = OBJC_IVAR____TtC11Diagnostics29SelfServiceSessionHistoryCell_dateLabel;
  *&v3[v11] = sub_10007D6A0();
  v12 = OBJC_IVAR____TtC11Diagnostics29SelfServiceSessionHistoryCell_date;
  v13 = type metadata accessor for Date();
  (*(*(v13 - 8) + 56))(&v3[v12], 1, 1, v13);
  if (a3)
  {
    v14 = String._bridgeToObjectiveC()();
  }

  else
  {
    v14 = 0;
  }

  v17.receiver = v3;
  v17.super_class = type metadata accessor for SelfServiceSessionHistoryCell();
  v15 = objc_msgSendSuper2(&v17, "initWithStyle:reuseIdentifier:", a1, v14);

  return v15;
}

id sub_10007E0B8(void *a1)
{
  v3 = OBJC_IVAR____TtC11Diagnostics29SelfServiceSessionHistoryCell_rootStackView;
  *&v1[v3] = [objc_allocWithZone(UIStackView) init];
  *&v1[OBJC_IVAR____TtC11Diagnostics29SelfServiceSessionHistoryCell_defaultSpacing] = 0x4030000000000000;
  v4 = OBJC_IVAR____TtC11Diagnostics29SelfServiceSessionHistoryCell_suiteNameLabel;
  v5 = [objc_allocWithZone(UILabel) init];
  v6 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleBody];
  [v5 setFont:v6];

  [v5 setNumberOfLines:0];
  [v5 setTextAlignment:4];
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v5 setAdjustsFontForContentSizeCategory:1];
  *&v1[v4] = v5;
  v7 = &v1[OBJC_IVAR____TtC11Diagnostics29SelfServiceSessionHistoryCell_suiteName];
  *v7 = 0;
  *(v7 + 1) = 0;
  v8 = OBJC_IVAR____TtC11Diagnostics29SelfServiceSessionHistoryCell_dateLabel;
  *&v1[v8] = sub_10007D6A0();
  v9 = OBJC_IVAR____TtC11Diagnostics29SelfServiceSessionHistoryCell_date;
  v10 = type metadata accessor for Date();
  (*(*(v10 - 8) + 56))(&v1[v9], 1, 1, v10);
  v13.receiver = v1;
  v13.super_class = type metadata accessor for SelfServiceSessionHistoryCell();
  v11 = objc_msgSendSuper2(&v13, "initWithCoder:", a1);

  if (v11)
  {
  }

  return v11;
}

uint64_t sub_10007E2AC()
{

  v1 = v0 + OBJC_IVAR____TtC11Diagnostics29SelfServiceSessionHistoryCell_date;

  return sub_10004E6A0(v1);
}

id sub_10007E320()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SelfServiceSessionHistoryCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for SelfServiceSessionHistoryCell()
{
  result = qword_1001FE9D8;
  if (!qword_1001FE9D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10007E42C()
{
  sub_10007E4E8();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_10007E4E8()
{
  if (!qword_1001FE9E8)
  {
    type metadata accessor for Date();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1001FE9E8);
    }
  }
}

unint64_t sub_10007E540()
{
  result = qword_1001FD550;
  if (!qword_1001FD550)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1001FD550);
  }

  return result;
}

uint64_t sub_10007E58C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10003C49C(&unk_1001FD540);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_10007E5FC(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC11Diagnostics23DashboardViewController_totalCardCount;
  if (*&v1[OBJC_IVAR____TtC11Diagnostics23DashboardViewController_totalCardCount] != a1)
  {
    if (qword_1001FC7B0 != -1)
    {
      swift_once();
    }

    sub_10003C49C(&unk_1001FEAD0);
    v4 = swift_allocObject();
    v5 = *&v1[v2];
    *(v4 + 16) = xmmword_10017EC00;
    *(v4 + 56) = &type metadata for Int;
    *(v4 + 64) = &protocol witness table for Int;
    *(v4 + 32) = v5;
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();

    if (*&v1[v2] <= 0)
    {
      v6 = [v1 presentedViewController];
      v7 = v6;
      if (qword_1001FC6A0 == -1)
      {
        if (v6)
        {
          goto LABEL_8;
        }
      }

      else
      {
        swift_once();
        if (v7)
        {
LABEL_8:
          v8 = qword_10020A358;
          sub_10003E110(0, &qword_1001FDE30);
          v9 = v8;
          v10 = static NSObject.== infix(_:_:)();

          if (v10)
          {
            return;
          }
        }
      }

      if ((*&v1[v2] & 0x8000000000000000) != 0)
      {
        static os_log_type_t.fault.getter();
        v11 = swift_allocObject();
        *(v11 + 16) = xmmword_10017EC10;
        *(v11 + 56) = &type metadata for Int;
        *(v11 + 64) = &protocol witness table for Int;
        *(v11 + 32) = a1;
        v12 = *&v1[v2];
        *(v11 + 96) = &type metadata for Int;
        *(v11 + 104) = &protocol witness table for Int;
        *(v11 + 72) = v12;
        os_log(_:dso:log:type:_:)();
      }

      if (qword_1001FC6C8 != -1)
      {
        swift_once();
      }

      sub_100066800(1, 1);
    }
  }
}

void sub_10007E8A0(uint64_t a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v37 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchTime();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v12);
  v17 = &v32 - v16;
  v18 = *&v1[OBJC_IVAR____TtC11Diagnostics23DashboardViewController_activeCardCount];
  if (v18 != a1)
  {
    if (v18 < 1)
    {
      v35 = v4;
      v36 = v15;
      v25 = [objc_allocWithZone(UIBarButtonItem) initWithBarButtonSystemItem:0 target:v1 action:"doneTappedWithSender:"];
      v26 = *&v1[OBJC_IVAR____TtC11Diagnostics23DashboardViewController_leftBarButtonItem];
      *&v1[OBJC_IVAR____TtC11Diagnostics23DashboardViewController_leftBarButtonItem] = v25;

      if (a1 >= 1)
      {
        v27 = sub_100081840();
        if (v27 != 29)
        {
          v28 = v27;
          sub_10003E110(0, &qword_1001FD040);
          v34 = v1;
          v29 = static OS_dispatch_queue.main.getter();
          static DispatchTime.now()();
          + infix(_:_:)();
          v33 = *(v11 + 8);
          v33(v14, v36);
          v30 = swift_allocObject();
          *(v30 + 16) = v28;
          aBlock[4] = sub_100081B28;
          aBlock[5] = v30;
          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 1107296256;
          aBlock[2] = sub_100031FA8;
          aBlock[3] = &unk_1001C2008;
          v31 = _Block_copy(aBlock);

          static DispatchQoS.unspecified.getter();
          aBlock[0] = _swiftEmptyArrayStorage;
          sub_10005BD2C();
          sub_10003C49C(&unk_1001FD050);
          sub_1000446A0();
          dispatch thunk of SetAlgebra.init<A>(_:)();
          OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
          v1 = v34;
          _Block_release(v31);

          (*(v35 + 8))(v6, v3);
          (*(v37 + 8))(v9, v7);
          v33(v17, v36);
        }
      }
    }

    else
    {
      v19 = [objc_allocWithZone(UIBarButtonItem) initWithBarButtonSystemItem:1 target:v1 action:"cancelTappedWithSender:"];
      v20 = *&v1[OBJC_IVAR____TtC11Diagnostics23DashboardViewController_leftBarButtonItem];
      *&v1[OBJC_IVAR____TtC11Diagnostics23DashboardViewController_leftBarButtonItem] = v19;
    }

    v21 = sub_1000660CC();
    v22 = [v1 navigationItem];
    v23 = v22;
    if (v21)
    {
      v24 = *&v1[OBJC_IVAR____TtC11Diagnostics23DashboardViewController_leftBarButtonItem];
      [v23 setLeftBarButtonItem:v24];
    }

    else
    {
      [v22 setLeftBarButtonItem:0];
    }
  }
}

void sub_10007EEA8()
{
  v1 = v0;
  v2 = [objc_msgSend(objc_opt_self() "currentPlatform")];
  swift_unknownObjectRelease();
  if (v2)
  {
    v3._countAndFlagsBits = 4342623;
    v3._object = 0xE300000000000000;
    String.append(_:)(v3);
  }

  sub_1000494C8(0, 0, _swiftEmptyArrayStorage, 0x54534F4E47414944, 0xEB00000000534349);

  v4 = String._bridgeToObjectiveC()();

  [v1 setTitle:v4];

  v5 = [v1 navigationController];
  if (v5)
  {
    v6 = v5;
    v7 = [v5 navigationBar];

    [v7 setPrefersLargeTitles:1];
  }

  v8 = [v1 navigationController];
  if (v8)
  {
    v9 = v8;
    v10 = [v8 navigationBar];

    v11 = [objc_opt_self() systemBackgroundColor];
    [v10 setBarTintColor:v11];
  }

  v12 = [v1 navigationController];
  if (v12)
  {
    v13 = v12;
    v14 = [v12 navigationBar];

    v15 = [objc_allocWithZone(UIImage) init];
    [v14 setShadowImage:v15];
  }

  v16 = [v1 view];
  if (!v16)
  {
    __break(1u);
    goto LABEL_36;
  }

  v17 = v16;
  v18 = objc_opt_self();
  v19 = [v17 semanticContentAttribute];

  v20 = [v18 userInterfaceLayoutDirectionForSemanticContentAttribute:v19];
  v21 = [v1 navigationController];
  if (v20)
  {
    if (!v21)
    {
      goto LABEL_16;
    }

    v22 = v21;
    v23 = [v21 navigationBar];

    sub_1000A4A08();
    [v23 setLayoutMargins:{0.0, 0.0, 0.0, v24 + -2.0}];
  }

  else
  {
    if (!v21)
    {
      goto LABEL_16;
    }

    v25 = v21;
    v23 = [v21 navigationBar];

    sub_1000A4A08();
    [v23 setLayoutMargins:{0.0, v26 + -2.0, 0.0, 0.0}];
  }

LABEL_16:
  v27 = [objc_allocWithZone(UIBarButtonItem) initWithBarButtonSystemItem:1 target:v1 action:"cancelTappedWithSender:"];
  v28 = *&v1[OBJC_IVAR____TtC11Diagnostics23DashboardViewController_leftBarButtonItem];
  *&v1[OBJC_IVAR____TtC11Diagnostics23DashboardViewController_leftBarButtonItem] = v27;

  v29 = [v1 tableView];
  if (!v29)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v30 = v29;
  type metadata accessor for CardViewCell();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v32 = String._bridgeToObjectiveC()();
  [v30 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v32];

  v33 = [v1 tableView];
  if (!v33)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v34 = v33;
  type metadata accessor for CardViewSessionCell();
  v35 = swift_getObjCClassFromMetadata();
  v36 = String._bridgeToObjectiveC()();
  [v34 registerClass:v35 forCellReuseIdentifier:v36];

  v37 = [v1 tableView];
  if (!v37)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v38 = v37;
  type metadata accessor for CardViewPersistentCell();
  v39 = swift_getObjCClassFromMetadata();
  v40 = String._bridgeToObjectiveC()();
  [v38 registerClass:v39 forCellReuseIdentifier:v40];

  v41 = [v1 tableView];
  if (!v41)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v42 = v41;
  [v41 setSeparatorStyle:0];

  v43 = [v1 tableView];
  if (!v43)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v44 = v43;
  [v43 setAllowsSelection:0];

  v45 = [v1 tableView];
  if (!v45)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v46 = v45;
  [v45 setAlwaysBounceVertical:1];

  v47 = [v1 tableView];
  if (!v47)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v48 = v47;
  [v47 setShowsVerticalScrollIndicator:0];

  v49 = [v1 tableView];
  if (!v49)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v50 = v49;
  [v49 setDelegate:v1];

  v51 = [v1 tableView];
  if (!v51)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v52 = v51;
  [v51 setDataSource:*&v1[OBJC_IVAR____TtC11Diagnostics23DashboardViewController_cardManager]];

  v53 = [v1 tableView];
  if (!v53)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v54 = v53;
  [v53 setRowHeight:UITableViewAutomaticDimension];

  v55 = [v1 tableView];
  if (!v55)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v56 = v55;
  [v55 setEstimatedRowHeight:500.0];

  v57 = [v1 tableView];
  if (!v57)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v58 = v57;
  [v57 setEstimatedSectionFooterHeight:0.0];

  v59 = [v1 tableView];
  if (!v59)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v60 = v59;
  [v59 setContentInsetAdjustmentBehavior:0];

  v61 = [v1 tableView];
  if (!v61)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v62 = v61;
  v63 = [v1 tableView];
  if (!v63)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v64 = v63;
  [v63 bounds];
  v66 = v65;

  v67 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, v66, 15.0}];
  [v62 setTableHeaderView:v67];

  v68 = [v1 tableView];
  if (!v68)
  {
LABEL_51:
    __break(1u);
    return;
  }

  v69 = v68;
  v70 = [objc_opt_self() systemBackgroundColor];
  [v69 setBackgroundColor:v70];
}

void sub_10007F6C0()
{
  v1 = objc_opt_self();
  v2 = [v1 defaultCenter];
  if (qword_1001FC850 != -1)
  {
    swift_once();
  }

  v3 = qword_10020A650;
  v29 = objc_opt_self();
  v4 = [v29 mainQueue];
  v5 = swift_allocObject();
  *(v5 + 16) = v0;
  v34 = sub_1000819C8;
  v35 = v5;
  aBlock = _NSConcreteStackBlock;
  v31 = 1107296256;
  v32 = sub_100060B2C;
  v33 = &unk_1001C1E78;
  v6 = _Block_copy(&aBlock);
  v7 = v0;

  v8 = [v2 addObserverForName:v3 object:0 queue:v4 usingBlock:v6];
  _Block_release(v6);
  swift_unknownObjectRelease();

  v9 = [v1 defaultCenter];
  if (qword_1001FC860 != -1)
  {
    swift_once();
  }

  v10 = qword_10020A660;
  v11 = [v7 tableView];
  if (v11)
  {
    v12 = v11;
    v13 = [v11 dataSource];

    v14 = [v29 mainQueue];
    v15 = swift_allocObject();
    *(v15 + 16) = v7;
    v34 = sub_1000819E8;
    v35 = v15;
    aBlock = _NSConcreteStackBlock;
    v31 = 1107296256;
    v32 = sub_100060B2C;
    v33 = &unk_1001C1EC8;
    v16 = _Block_copy(&aBlock);
    v17 = v7;

    v18 = [v9 addObserverForName:v10 object:v13 queue:v14 usingBlock:v16];
    _Block_release(v16);
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    v19 = [v1 defaultCenter];
    if (qword_1001FC858 != -1)
    {
      swift_once();
    }

    v20 = qword_10020A658;
    v21 = [v17 tableView];
    if (v21)
    {
      v22 = v21;
      v23 = [v21 dataSource];

      v24 = [v29 mainQueue];
      v25 = swift_allocObject();
      *(v25 + 16) = v17;
      v34 = sub_1000819F0;
      v35 = v25;
      aBlock = _NSConcreteStackBlock;
      v31 = 1107296256;
      v32 = sub_100060B2C;
      v33 = &unk_1001C1F18;
      v26 = _Block_copy(&aBlock);
      v27 = v17;

      v28 = [v19 addObserverForName:v20 object:v23 queue:v24 usingBlock:v26];
      _Block_release(v26);
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

void sub_10007FB5C(uint64_t a1, uint64_t a2)
{
  v3 = Notification.userInfo.getter();
  if (!v3)
  {
    goto LABEL_8;
  }

  v4 = v3;
  *&v10 = 0xD000000000000012;
  *(&v10 + 1) = 0x800000010018BB50;
  AnyHashable.init<A>(_:)();
  if (!*(v4 + 16) || (v5 = sub_100064B74(v9), (v6 & 1) == 0))
  {

    sub_10003DB48(v9);
LABEL_8:
    v10 = 0u;
    v11 = 0u;
    goto LABEL_9;
  }

  sub_10003E010(*(v4 + 56) + 32 * v5, &v10);
  sub_10003DB48(v9);

  if (!*(&v11 + 1))
  {
LABEL_9:
    sub_10005173C(&v10);
    goto LABEL_10;
  }

  if (!swift_dynamicCast())
  {
LABEL_10:
    v7 = 0;
    goto LABEL_11;
  }

  v7 = v9[0];
LABEL_11:
  v8 = *(a2 + OBJC_IVAR____TtC11Diagnostics23DashboardViewController_activeCardCount);
  *(a2 + OBJC_IVAR____TtC11Diagnostics23DashboardViewController_activeCardCount) = v7;
  sub_10007E8A0(v8);
}

void sub_10007FC74(uint64_t a1, void *a2)
{
  if (qword_1001FC7B0 != -1)
  {
    swift_once();
  }

  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();
  v3 = [a2 tableView];
  if (v3)
  {
    v4 = v3;
    [v3 reloadData];
  }

  else
  {
    __break(1u);
  }
}

void sub_10007FD48(uint64_t a1, char *a2)
{
  v3 = Notification.userInfo.getter();
  if (v3)
  {
    v4 = v3;
    strcpy(v23, "cardActionsKey");
    HIBYTE(v23[1]) = -18;
    AnyHashable.init<A>(_:)();
    if (*(v4 + 16) && (v5 = sub_100064B74(&v17), (v6 & 1) != 0))
    {
      sub_10003E010(*(v4 + 56) + 32 * v5, v24);
      sub_10003DB48(&v17);
      sub_10003C49C(&qword_1001FEAC0);
      if (swift_dynamicCast())
      {
        v7 = v23[0];
        if (qword_1001FC7B0 != -1)
        {
          swift_once();
        }

        static os_log_type_t.default.getter();
        os_log(_:dso:log:type:_:)();
        v8 = sub_10015147C();
        v9 = *&a2[OBJC_IVAR____TtC11Diagnostics23DashboardViewController_totalCardCount];
        *&a2[OBJC_IVAR____TtC11Diagnostics23DashboardViewController_totalCardCount] = v8;
        sub_10007E5FC(v9);
        v10 = [a2 tableView];
        if (v10)
        {
          v11 = v10;

          v12 = swift_allocObject();
          *(v12 + 16) = v7;
          *(v12 + 24) = a2;
          v13 = swift_allocObject();
          *(v13 + 16) = sub_100081A38;
          *(v13 + 24) = v12;
          v21 = sub_10003DAA4;
          v22 = v13;
          v17 = _NSConcreteStackBlock;
          v18 = 1107296256;
          v19 = sub_100060C48;
          v20 = &unk_1001C1F90;
          v14 = _Block_copy(&v17);
          v15 = a2;

          v21 = sub_100080934;
          v22 = 0;
          v17 = _NSConcreteStackBlock;
          v18 = 1107296256;
          v19 = sub_100084F94;
          v20 = &unk_1001C1FB8;
          v16 = _Block_copy(&v17);
          [v11 performBatchUpdates:v14 completion:v16];
          _Block_release(v16);
          _Block_release(v14);
        }

        else
        {
          __break(1u);
        }
      }

      else
      {
      }
    }

    else
    {

      sub_10003DB48(&v17);
    }
  }
}

id sub_10008006C(uint64_t a1, void *a2)
{
  v68 = a2;
  v63 = type metadata accessor for Move(0);
  v3 = __chkstk_darwin(v63);
  v58 = (&v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v3);
  v62 = &v55 - v5;
  v66 = type metadata accessor for Remove(0);
  v6 = __chkstk_darwin(v66);
  v60 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = &v55 - v8;
  v69 = type metadata accessor for Add(0);
  v10 = __chkstk_darwin(v69);
  v12 = (&v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = __chkstk_darwin(v10);
  v15 = &v55 - v14;
  v16 = *(a1 + 16);
  if (!v16)
  {
    return result;
  }

  v17 = a1 + 32;
  v65 = xmmword_10017EF10;
  v64 = xmmword_10017EC00;
  v57 = xmmword_100180D00;
  v61 = v9;
  v67 = &v55 - v14;
  v56 = v12;
  while (1)
  {
    sub_10004476C(v17, v70);
    sub_10003C49C(&qword_1001FEAC8);
    if (swift_dynamicCast())
    {
      break;
    }

    if (swift_dynamicCast())
    {
      v30 = v9;
      v31 = v60;
      sub_100081A50(v30, v60, type metadata accessor for Remove);
      if (qword_1001FC7B0 != -1)
      {
        swift_once();
      }

      sub_10003C49C(&unk_1001FEAD0);
      v32 = swift_allocObject();
      *(v32 + 16) = v65;
      v34 = *v31;
      v33 = *(v31 + 1);
      *(v32 + 56) = &type metadata for String;
      *(v32 + 64) = sub_10003DFBC();
      *(v32 + 32) = v34;
      *(v32 + 40) = v33;
      v35 = *(v66 + 20);

      v36 = IndexPath.section.getter();
      *(v32 + 96) = &type metadata for Int;
      *(v32 + 104) = &protocol witness table for Int;
      *(v32 + 72) = v36;
      v37 = IndexPath.row.getter();
      *(v32 + 136) = &type metadata for Int;
      *(v32 + 144) = &protocol witness table for Int;
      *(v32 + 112) = v37;
      static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)();

      result = [v68 tableView];
      if (!result)
      {
        goto LABEL_22;
      }

      v38 = result;
      sub_10003C49C(&qword_1001FEAE0);
      v39 = type metadata accessor for IndexPath();
      v40 = *(v39 - 8);
      v41 = (*(v40 + 80) + 32) & ~*(v40 + 80);
      v42 = swift_allocObject();
      *(v42 + 16) = v64;
      (*(v40 + 16))(v42 + v41, &v31[v35], v39);
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v38 deleteRowsAtIndexPaths:isa withRowAnimation:100];

      sub_100081AB8(v31, type metadata accessor for Remove);
      v9 = v61;
      goto LABEL_3;
    }

    if (swift_dynamicCast())
    {
      v44 = v58;
      sub_100081A50(v62, v58, type metadata accessor for Move);
      if (qword_1001FC7B0 != -1)
      {
        swift_once();
      }

      v59 = qword_10020A4F8;
      sub_10003C49C(&unk_1001FEAD0);
      v45 = swift_allocObject();
      *(v45 + 16) = v57;
      v47 = *v44;
      v46 = v44[1];
      *(v45 + 56) = &type metadata for String;
      *(v45 + 64) = sub_10003DFBC();
      *(v45 + 32) = v47;
      *(v45 + 40) = v46;

      v48 = IndexPath.section.getter();
      *(v45 + 96) = &type metadata for Int;
      *(v45 + 104) = &protocol witness table for Int;
      *(v45 + 72) = v48;
      v49 = IndexPath.row.getter();
      *(v45 + 136) = &type metadata for Int;
      *(v45 + 144) = &protocol witness table for Int;
      *(v45 + 112) = v49;
      v50 = IndexPath.section.getter();
      *(v45 + 176) = &type metadata for Int;
      *(v45 + 184) = &protocol witness table for Int;
      *(v45 + 152) = v50;
      v51 = IndexPath.row.getter();
      *(v45 + 216) = &type metadata for Int;
      *(v45 + 224) = &protocol witness table for Int;
      *(v45 + 192) = v51;
      static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)();

      result = [v68 tableView];
      if (!result)
      {
        goto LABEL_23;
      }

      v52 = result;
      v53 = IndexPath._bridgeToObjectiveC()().super.isa;
      v54 = IndexPath._bridgeToObjectiveC()().super.isa;
      [v52 moveRowAtIndexPath:v53 toIndexPath:v54];

      sub_100081AB8(v44, type metadata accessor for Move);
      v9 = v61;
      v15 = v67;
      v12 = v56;
    }

LABEL_4:
    result = sub_100044554(v70);
    v17 += 40;
    if (!--v16)
    {
      return result;
    }
  }

  sub_100081A50(v15, v12, type metadata accessor for Add);
  if (qword_1001FC7B0 != -1)
  {
    swift_once();
  }

  sub_10003C49C(&unk_1001FEAD0);
  v18 = swift_allocObject();
  *(v18 + 16) = v65;
  v20 = *v12;
  v19 = v12[1];
  *(v18 + 56) = &type metadata for String;
  *(v18 + 64) = sub_10003DFBC();
  *(v18 + 32) = v20;
  *(v18 + 40) = v19;
  v21 = *(v69 + 20);

  v22 = IndexPath.section.getter();
  *(v18 + 96) = &type metadata for Int;
  *(v18 + 104) = &protocol witness table for Int;
  *(v18 + 72) = v22;
  v23 = IndexPath.row.getter();
  *(v18 + 136) = &type metadata for Int;
  *(v18 + 144) = &protocol witness table for Int;
  *(v18 + 112) = v23;
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  result = [v68 tableView];
  if (result)
  {
    v24 = result;
    sub_10003C49C(&qword_1001FEAE0);
    v25 = type metadata accessor for IndexPath();
    v26 = *(v25 - 8);
    v27 = (*(v26 + 80) + 32) & ~*(v26 + 80);
    v28 = swift_allocObject();
    *(v28 + 16) = v64;
    (*(v26 + 16))(v28 + v27, v12 + v21, v25);
    v29 = Array._bridgeToObjectiveC()().super.isa;

    [v24 insertRowsAtIndexPaths:v29 withRowAnimation:100];

    sub_100081AB8(v12, type metadata accessor for Add);
LABEL_3:
    v15 = v67;
    goto LABEL_4;
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_100080934()
{
  if (qword_1001FC7B0 != -1)
  {
    swift_once();
  }

  static os_log_type_t.default.getter();

  return os_log(_:dso:log:type:_:)();
}

void sub_1000809C4(char a1)
{
  v7.receiver = v1;
  v7.super_class = type metadata accessor for DashboardViewController();
  objc_msgSendSuper2(&v7, "viewWillAppear:", a1 & 1);
  v3 = sub_1000660CC();
  v4 = [v1 navigationItem];
  v5 = v4;
  if (v3)
  {
    v6 = *&v1[OBJC_IVAR____TtC11Diagnostics23DashboardViewController_leftBarButtonItem];
    [v5 setLeftBarButtonItem:v6];
  }

  else
  {
    [v4 setLeftBarButtonItem:0];
  }
}

uint64_t sub_100080AD4(unint64_t a1)
{
  if (a1 > 2)
  {
    return 0;
  }

  v3 = *(v1 + OBJC_IVAR____TtC11Diagnostics23DashboardViewController_cardManager);
  v4 = OBJC_IVAR____TtC11Diagnostics11CardManager_cardsInView;
  swift_beginAccess();
  v5 = *(v3 + v4);
  if (!*(v5 + 16))
  {
    return 0;
  }

  v6 = sub_100068EB8(a1);
  if ((v7 & 1) == 0)
  {
    return 0;
  }

  v8 = *(*(v5 + 56) + 8 * v6);
  if (v8 >> 62)
  {
    v9 = _CocoaArrayWrapper.endIndex.getter();
    v10 = a1;
    if (a1)
    {
LABEL_6:
      if (v10 == 1)
      {
        v11 = *(v3 + v4);
        if (*(v11 + 16))
        {
          v12 = sub_100068EB8(2);
          if (v13)
          {
            v14 = *(*(v11 + 56) + 8 * v12);
            v15 = v14 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v9 > 0 || v15 >= 1)
            {
              v17 = 0x55535F454C505041;
              v18 = 0xED000054524F5050;
LABEL_19:
              sub_1000494C8(0, 0, _swiftEmptyArrayStorage, v17, v18);
              sub_100079A64();
              v19 = StringProtocol.localizedUppercase.getter();

              return v19;
            }
          }
        }
      }

      return 0;
    }
  }

  else
  {
    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v10 = a1;
    if (a1)
    {
      goto LABEL_6;
    }
  }

  if (v9 >= 1)
  {
    v18 = 0x800000010018CB00;
    v17 = 0xD000000000000010;
    goto LABEL_19;
  }

  return 0;
}

_BYTE *sub_100080C98(unint64_t a1)
{
  v2 = v1;
  type metadata accessor for DashboardSectionHeaderView();
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v5 = sub_100080AD4(a1);
  sub_100149A00(v5, v6);
  if (!a1)
  {
    v4[OBJC_IVAR____TtC11Diagnostics26DashboardSectionHeaderView_showsButton] = 1;
    v7 = swift_allocObject();
    *(v7 + 16) = v1;
    *(v7 + 24) = v4;
    v8 = &v4[OBJC_IVAR____TtC11Diagnostics26DashboardSectionHeaderView_buttonAction];
    v9 = *&v4[OBJC_IVAR____TtC11Diagnostics26DashboardSectionHeaderView_buttonAction];
    *v8 = sub_10008196C;
    v8[1] = v7;
    v10 = v2;
    v11 = v4;
    sub_10003C52C(v9);
  }

  return v4;
}

void sub_100080D64(void *a1, uint64_t a2)
{
  if (qword_1001FC7E8 != -1)
  {
    swift_once();
  }

  if (SessionManager.currentSession.getter() && (Session.status.getter(), , v4 = SessionStatus.rawValue.getter(), v4 == SessionStatus.rawValue.getter()))
  {
    v5 = *(a2 + OBJC_IVAR____TtC11Diagnostics26DashboardSectionHeaderView_button);
    v6 = swift_allocObject();
    *(v6 + 16) = a1;
    v7 = v5;
    v8 = a1;
    v9 = sub_1000BC5AC(sub_1000819AC, v6, sub_100081C3C, 0, v5);
  }

  else
  {
    v10 = *(a2 + OBJC_IVAR____TtC11Diagnostics26DashboardSectionHeaderView_button);
    v11 = swift_allocObject();
    *(v11 + 16) = a1;
    v12 = a1;
    v7 = v10;
    v9 = sub_1000BC190(sub_100081C58, v11, sub_100081C3C, 0, v10);
  }

  v13 = v9;

  [v13 scheduleModalPresentationWithPriority:0 animated:1 presentationCompletion:0];
}

uint64_t sub_100080F30()
{
  if (qword_1001FC7E8 != -1)
  {
    swift_once();
  }

  if (SessionManager.currentSession.getter())
  {
    Session.cancel()();
  }

  if (qword_1001FC6C8 != -1)
  {
    swift_once();
  }

  sub_100066800(3, 1);
  sub_100125854(1, 0, 1, 0, 0);
  if (qword_1001FC838 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_1001262B0();
  return swift_endAccess();
}

uint64_t sub_100081058()
{
  sub_100125854(1, 0, 1, 0, 0);
  if (qword_1001FC838 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_1001262B0();
  return swift_endAccess();
}

id sub_1000813CC(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC11Diagnostics23DashboardViewController_sectionPadding] = 0x4034000000000000;
  *&v1[OBJC_IVAR____TtC11Diagnostics23DashboardViewController_cardCellEstimatedHeight] = 0x407F400000000000;
  *&v1[OBJC_IVAR____TtC11Diagnostics23DashboardViewController_largeTitleToTableViewSpacing] = 0x402E000000000000;
  v1[OBJC_IVAR____TtC11Diagnostics23DashboardViewController_viewWasEverPresented] = 0;
  v3 = OBJC_IVAR____TtC11Diagnostics23DashboardViewController_cardManager;
  *&v1[v3] = [objc_allocWithZone(type metadata accessor for CardManager()) init];
  *&v1[OBJC_IVAR____TtC11Diagnostics23DashboardViewController_totalCardCount] = 0;
  *&v1[OBJC_IVAR____TtC11Diagnostics23DashboardViewController_activeCardCount] = 0;
  *&v1[OBJC_IVAR____TtC11Diagnostics23DashboardViewController_leftBarButtonItem] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for DashboardViewController();
  return objc_msgSendSuper2(&v5, "initWithStyle:", a1);
}

id sub_1000814C8(uint64_t a1, uint64_t a2, void *a3)
{
  *&v3[OBJC_IVAR____TtC11Diagnostics23DashboardViewController_sectionPadding] = 0x4034000000000000;
  *&v3[OBJC_IVAR____TtC11Diagnostics23DashboardViewController_cardCellEstimatedHeight] = 0x407F400000000000;
  *&v3[OBJC_IVAR____TtC11Diagnostics23DashboardViewController_largeTitleToTableViewSpacing] = 0x402E000000000000;
  v3[OBJC_IVAR____TtC11Diagnostics23DashboardViewController_viewWasEverPresented] = 0;
  v6 = OBJC_IVAR____TtC11Diagnostics23DashboardViewController_cardManager;
  *&v3[v6] = [objc_allocWithZone(type metadata accessor for CardManager()) init];
  *&v3[OBJC_IVAR____TtC11Diagnostics23DashboardViewController_totalCardCount] = 0;
  *&v3[OBJC_IVAR____TtC11Diagnostics23DashboardViewController_activeCardCount] = 0;
  *&v3[OBJC_IVAR____TtC11Diagnostics23DashboardViewController_leftBarButtonItem] = 0;
  if (a2)
  {
    v7 = String._bridgeToObjectiveC()();
  }

  else
  {
    v7 = 0;
  }

  v10.receiver = v3;
  v10.super_class = type metadata accessor for DashboardViewController();
  v8 = objc_msgSendSuper2(&v10, "initWithNibName:bundle:", v7, a3);

  return v8;
}

id sub_100081644(void *a1)
{
  *&v1[OBJC_IVAR____TtC11Diagnostics23DashboardViewController_sectionPadding] = 0x4034000000000000;
  *&v1[OBJC_IVAR____TtC11Diagnostics23DashboardViewController_cardCellEstimatedHeight] = 0x407F400000000000;
  *&v1[OBJC_IVAR____TtC11Diagnostics23DashboardViewController_largeTitleToTableViewSpacing] = 0x402E000000000000;
  v1[OBJC_IVAR____TtC11Diagnostics23DashboardViewController_viewWasEverPresented] = 0;
  v3 = OBJC_IVAR____TtC11Diagnostics23DashboardViewController_cardManager;
  *&v1[v3] = [objc_allocWithZone(type metadata accessor for CardManager()) init];
  *&v1[OBJC_IVAR____TtC11Diagnostics23DashboardViewController_totalCardCount] = 0;
  *&v1[OBJC_IVAR____TtC11Diagnostics23DashboardViewController_activeCardCount] = 0;
  *&v1[OBJC_IVAR____TtC11Diagnostics23DashboardViewController_leftBarButtonItem] = 0;
  v6.receiver = v1;
  v6.super_class = type metadata accessor for DashboardViewController();
  v4 = objc_msgSendSuper2(&v6, "initWithCoder:", a1);

  if (v4)
  {
  }

  return v4;
}

void sub_10008175C()
{
  v1 = *(v0 + OBJC_IVAR____TtC11Diagnostics23DashboardViewController_leftBarButtonItem);
}

id sub_10008179C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DashboardViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100081840()
{
  if (sub_1000660CC())
  {
    return 12;
  }

  v1 = [objc_opt_self() standardUserDefaults];
  v2 = String._bridgeToObjectiveC()();
  v3 = [v1 BOOLForKey:v2];

  result = 22;
  if ((v3 & 1) == 0)
  {
    v4 = [objc_msgSend(objc_opt_self() "currentPlatform")];
    swift_unknownObjectRelease();
    if (v4)
    {
      return 22;
    }

    else
    {
      return 29;
    }
  }

  return result;
}

uint64_t sub_10008192C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100081974()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000819D0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000819F8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100081A50(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100081AB8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_100081B38(uint64_t a1)
{
  v3 = [v1 tableView];
  if (!v3)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return;
  }

  v4 = v3;
  v5 = [v3 dataSource];

  if (v5)
  {
    v6 = [v1 tableView];
    if (v6)
    {
      v7 = v6;
      [v5 tableView:v6 numberOfRowsInSection:a1];
      swift_unknownObjectRelease();

      return;
    }

    goto LABEL_7;
  }
}

id sub_100081C5C()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC11Diagnostics43CosmeticAssessmentBackCaptureViewController_assessorManager;
  if (qword_1001FC840 != -1)
  {
    swift_once();
  }

  v3 = qword_10020A5F8;
  *&v1[v2] = qword_10020A5F8;
  v4 = OBJC_IVAR____TtC11Diagnostics43CosmeticAssessmentBackCaptureViewController_deviceMotionProvider;
  type metadata accessor for DeviceMotionProvider();
  swift_allocObject();
  v5 = v3;
  *&v1[v4] = sub_100044970(0.01);
  *&v1[OBJC_IVAR____TtC11Diagnostics43CosmeticAssessmentBackCaptureViewController_barButton] = 0;
  v6 = [objc_opt_self() configurationWithScale:3];
  v7 = String._bridgeToObjectiveC()();
  v8 = [objc_opt_self() _systemImageNamed:v7 withConfiguration:v6];

  v9 = sub_100049C98(0xD000000000000021);
  sub_1000494C8(0, 0, _swiftEmptyArrayStorage, v9, v10);

  v11 = String._bridgeToObjectiveC()();

  v12 = sub_100049C98(0xD000000000000024);
  sub_1000494C8(0, 0, _swiftEmptyArrayStorage, v12, v13);

  v14 = String._bridgeToObjectiveC()();

  v17.receiver = v1;
  v17.super_class = type metadata accessor for CosmeticAssessmentBackCaptureViewController();
  v15 = objc_msgSendSuper2(&v17, "initWithTitle:detailText:icon:contentLayout:", v11, v14, v8, 2);

  return v15;
}

void sub_100081EA8()
{
  v1 = v0;
  v13.receiver = v0;
  v13.super_class = type metadata accessor for CosmeticAssessmentBackCaptureViewController();
  objc_msgSendSuper2(&v13, "viewDidLoad");
  v2 = [v0 navigationController];
  if (v2)
  {
    v3 = v2;
    [v2 setNavigationBarHidden:0 animated:1];
  }

  v4 = [v1 navigationItem];
  [v4 setHidesBackButton:1];

  sub_10003E110(0, &qword_1001FD3B8);
  sub_10003E110(0, &qword_1002023B0);
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = v5;
  v14.value.super.super.isa = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v14.is_nil = 0;
  v6.super.super.isa = UIBarButtonItem.init(systemItem:primaryAction:menu:)(UIBarButtonSystemItemCancel, v14, v15).super.super.isa;
  v7 = OBJC_IVAR____TtC11Diagnostics43CosmeticAssessmentBackCaptureViewController_barButton;
  v8 = *&v1[OBJC_IVAR____TtC11Diagnostics43CosmeticAssessmentBackCaptureViewController_barButton];
  *&v1[OBJC_IVAR____TtC11Diagnostics43CosmeticAssessmentBackCaptureViewController_barButton] = v6;

  LODWORD(v4) = _UISolariumEnabled();
  v9 = [v1 navigationItem];
  v10 = *&v1[v7];
  v11 = &selRef_setLeftBarButtonItem_;
  if (!v4)
  {
    v11 = &selRef_setRightBarButtonItem_;
  }

  [v9 *v11];
}

void sub_100082080()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1000EC128(4);
    *(swift_allocObject() + 16) = v1;
    v2 = v1;
    v3 = [v2 navigationItem];
    v4 = [v3 rightBarButtonItem];

    sub_100088E48(0, v4);

    v5 = *&v2[OBJC_IVAR____TtC11Diagnostics43CosmeticAssessmentBackCaptureViewController_barButton];
    if (v5)
    {
      v6 = v5;
      [v6 setEnabled:0];
    }
  }
}

uint64_t sub_1000821B4()
{
  v0 = sub_10003C49C(&unk_1001FFE20);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  sub_1000EC128(5);
  v3 = type metadata accessor for TaskPriority();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  type metadata accessor for MainActor();
  v4 = static MainActor.shared.getter();
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = &protocol witness table for MainActor;
  sub_1000EC574(0, 0, v2, &unk_100180DC8, v5);
}

void sub_1000824D8(uint64_t a1)
{
  v2 = sub_10003C49C(&unk_1001FFE20);
  __chkstk_darwin(v2 - 8);
  v4 = &v11 - v3;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = type metadata accessor for TaskPriority();
    (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
    type metadata accessor for MainActor();
    v8 = v6;

    v9 = static MainActor.shared.getter();
    v10 = swift_allocObject();
    v10[2] = v9;
    v10[3] = &protocol witness table for MainActor;
    v10[4] = v8;
    v10[5] = a1;
    sub_1000539D8(0, 0, v4, &unk_100180DB0, v10);
  }
}

uint64_t sub_100082640(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  type metadata accessor for MainActor();
  v5[4] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[5] = v7;
  v5[6] = v6;

  return _swift_task_switch(sub_1000826D8, v7, v6);
}

uint64_t sub_1000826D8()
{
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  v1[1] = sub_10008277C;
  v2 = *(v0 + 24);

  return sub_100138B58(v2);
}

uint64_t sub_10008277C()
{
  v2 = *v1;
  *(*v1 + 64) = v0;

  v3 = *(v2 + 48);
  v4 = *(v2 + 40);
  if (v0)
  {
    v5 = sub_100082918;
  }

  else
  {
    v5 = sub_1000828B8;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1000828B8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100082918()
{

  if (qword_1001FC7C8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10003DAAC(v1, qword_10020A510);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "[Target] Failed to send device attitude update to peer: %@", v4, 0xCu);
    sub_100082D10(v5);
  }

  else
  {
  }

  v7 = *(v0 + 8);

  return v7();
}

id sub_100082B14()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CosmeticAssessmentBackCaptureViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100082BC8()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100082C08()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100082C50(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10003DEC8;

  return sub_100082640(a1, v4, v5, v7, v6);
}

uint64_t sub_100082D10(uint64_t a1)
{
  v2 = sub_10003C49C(&qword_1001FF0C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100082D80()
{

  return _swift_deallocObject(v0, 24, 7);
}

id sub_100082DB8()
{
  result = *(*(v0 + 16) + OBJC_IVAR____TtC11Diagnostics43CosmeticAssessmentBackCaptureViewController_barButton);
  if (result)
  {
    return [result setEnabled:1];
  }

  return result;
}

uint64_t sub_100082DE0()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100082E18()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10003DEC8;

  return sub_10006A96C();
}

void sub_100082EEC()
{
  v1 = v0;
  v2 = type metadata accessor for _Glass._GlassVariant();
  __chkstk_darwin(v2 - 8);
  v3 = [v0 view];
  if (v3)
  {
    v4 = v3;
    v5 = objc_opt_self();
    v6 = [v5 systemBackgroundColor];
    [v4 setBackgroundColor:v6];

    [*&v1[OBJC_IVAR____TtC11Diagnostics41SelfServiceSuiteDescriptionViewController_imageViewContainerView] setTranslatesAutoresizingMaskIntoConstraints:0];
    v7 = *&v1[OBJC_IVAR____TtC11Diagnostics41SelfServiceSuiteDescriptionViewController_imageView];
    [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v7 setContentMode:2];
    [v7 setClipsToBounds:1];
    v8 = objc_opt_self();
    v9 = [v8 configurationWithPointSize:30.0];
    v46 = v5;
    v10 = [v5 systemGrayColor];
    v11 = [v8 configurationWithHierarchicalColor:v10];

    v45 = v9;
    v12 = [v11 configurationByApplyingConfiguration:v9];

    _UISolariumEnabled();
    v13 = v12;
    v14 = String._bridgeToObjectiveC()();

    v15 = [objc_opt_self() systemImageNamed:v14 withConfiguration:v13];

    v44 = v13;
    v16 = *&v1[OBJC_IVAR____TtC11Diagnostics41SelfServiceSuiteDescriptionViewController_closeButton];
    [v16 setClipsToBounds:1];
    [v16 setImage:v15 forState:0];
    [v16 setTranslatesAutoresizingMaskIntoConstraints:0];
    sub_10003E110(0, &qword_1002023B0);
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v17 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    [v16 addAction:v17 forControlEvents:64];

    if (_UISolariumEnabled())
    {
      static _Glass._GlassVariant.regular.getter();
      v48 = type metadata accessor for _Glass();
      v49 = &protocol witness table for _Glass;
      sub_10005BAD0(v47);
      _Glass.init(_:smoothness:)();
      UIView._background.setter();
      [v16 _setCornerRadius:kCALayerCornerRadiusAutomaticPill];
    }

    v18 = *&v1[OBJC_IVAR____TtC11Diagnostics41SelfServiceSuiteDescriptionViewController_startDiagnosticButton];
    sub_1000494C8(0, 0, _swiftEmptyArrayStorage, 0xD000000000000010, 0x800000010018CF80);
    v19 = String._bridgeToObjectiveC()();

    [v18 setTitle:v19 forState:0];

    [v18 setTranslatesAutoresizingMaskIntoConstraints:0];
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v20 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    [v18 addAction:v20 forControlEvents:64];

    if (_UISolariumEnabled())
    {
      static _Glass._GlassVariant.regular.getter();
      v48 = type metadata accessor for _Glass();
      v49 = &protocol witness table for _Glass;
      sub_10005BAD0(v47);
      _Glass.init(_:smoothness:)();
      UIView._background.setter();
    }

    v21 = *&v1[OBJC_IVAR____TtC11Diagnostics41SelfServiceSuiteDescriptionViewController_scrollView];
    [v21 setShowsVerticalScrollIndicator:0];
    [v21 setTranslatesAutoresizingMaskIntoConstraints:0];
    v22 = _UISolariumEnabled();
    v23 = &UIFontTextStyleTitle1;
    if (!v22)
    {
      v23 = &UIFontTextStyleLargeTitle;
    }

    v24 = *v23;
    v25 = objc_opt_self();
    v26 = [v25 preferredFontForTextStyle:v24];

    v27 = [v26 fontDescriptor];
    v28 = [v27 fontDescriptorWithSymbolicTraits:2];

    if (v28)
    {
      v29 = [v25 fontWithDescriptor:v28 size:0.0];

      v26 = v29;
    }

    v30 = *&v1[OBJC_IVAR____TtC11Diagnostics41SelfServiceSuiteDescriptionViewController_titleLabel];
    [v30 setFont:v26];
    [v30 setNumberOfLines:0];
    if (_UISolariumEnabled())
    {
      v31 = 4;
    }

    else
    {
      v31 = 1;
    }

    [v30 setTextAlignment:v31];
    [v30 setAdjustsFontForContentSizeCategory:1];
    [v30 setTranslatesAutoresizingMaskIntoConstraints:0];
    v32 = *&v1[OBJC_IVAR____TtC11Diagnostics41SelfServiceSuiteDescriptionViewController_subtitleLabel];
    [v32 setNumberOfLines:0];
    v33 = _UISolariumEnabled();
    v34 = UIFontTextStyleTitle2;
    if (!v33)
    {
      v34 = UIFontTextStyleCallout;
    }

    v35 = v34;
    v36 = [v25 preferredFontForTextStyle:v35];

    [v32 setFont:v36];
    if (_UISolariumEnabled())
    {
      v37 = 4;
    }

    else
    {
      v37 = 1;
    }

    [v32 setTextAlignment:v37];
    v38 = _UISolariumEnabled();
    v39 = &selRef_secondaryLabelColor;
    if (!v38)
    {
      v39 = &selRef_labelColor;
    }

    v40 = [v46 *v39];
    [v32 setTextColor:v40];

    [v32 setAdjustsFontForContentSizeCategory:1];
    [v32 setTranslatesAutoresizingMaskIntoConstraints:0];
    v41 = *&v1[OBJC_IVAR____TtC11Diagnostics41SelfServiceSuiteDescriptionViewController_detailsLabel];
    v42 = [v25 preferredFontForTextStyle:UIFontTextStyleCallout];
    [v41 setFont:v42];

    v43 = [v46 systemGrayColor];
    [v41 setTextColor:v43];

    [v41 setNumberOfLines:0];
    [v41 setTextAlignment:1];
    [v41 setAdjustsFontForContentSizeCategory:1];
    [v41 setTranslatesAutoresizingMaskIntoConstraints:0];
  }

  else
  {
    __break(1u);
  }
}

void sub_100083760()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [Strong dismissViewControllerAnimated:1 completion:0];
  }
}

uint64_t sub_1000837C4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [Strong dismissViewControllerAnimated:1 completion:0];
  }

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *(result + OBJC_IVAR____TtC11Diagnostics41SelfServiceSuiteDescriptionViewController_startDiagnosticHandler);
    v4 = result;

    v3();
  }

  return result;
}

void sub_100083880()
{
  v1 = *&v0[OBJC_IVAR____TtC11Diagnostics41SelfServiceSuiteDescriptionViewController_imageViewContainerView];
  [v1 addSubview:*&v0[OBJC_IVAR____TtC11Diagnostics41SelfServiceSuiteDescriptionViewController_imageView]];
  v2 = [v0 view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_10;
  }

  v3 = v2;
  [v2 addSubview:v1];

  v4 = *&v0[OBJC_IVAR____TtC11Diagnostics41SelfServiceSuiteDescriptionViewController_scrollView];
  [v4 addSubview:*&v0[OBJC_IVAR____TtC11Diagnostics41SelfServiceSuiteDescriptionViewController_titleLabel]];
  [v4 addSubview:*&v0[OBJC_IVAR____TtC11Diagnostics41SelfServiceSuiteDescriptionViewController_subtitleLabel]];
  v5 = [v0 view];
  if (!v5)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v6 = v5;
  [v5 addSubview:v4];

  v7 = [v0 view];
  if (!v7)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v8 = v7;
  [v7 addSubview:*&v0[OBJC_IVAR____TtC11Diagnostics41SelfServiceSuiteDescriptionViewController_detailsLabel]];

  v9 = [v0 view];
  if (!v9)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v10 = v9;
  [v9 addSubview:*&v0[OBJC_IVAR____TtC11Diagnostics41SelfServiceSuiteDescriptionViewController_startDiagnosticButton]];

  v11 = [v0 view];
  if (!v11)
  {
LABEL_13:
    __break(1u);
    return;
  }

  v12 = v11;
  [v11 addSubview:*&v0[OBJC_IVAR____TtC11Diagnostics41SelfServiceSuiteDescriptionViewController_closeButton]];
}

void sub_100083A34()
{
  sub_10003C49C(&unk_1001FD020);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_100180DD0;
  v2 = *&v0[OBJC_IVAR____TtC11Diagnostics41SelfServiceSuiteDescriptionViewController_imageViewContainerView];
  v3 = [v2 topAnchor];
  v4 = [v0 view];
  if (!v4)
  {
    __break(1u);
    goto LABEL_25;
  }

  v5 = v4;
  v6 = [v4 topAnchor];

  v7 = [v3 constraintEqualToAnchor:v6];
  *(v1 + 32) = v7;
  v8 = [v2 leadingAnchor];
  v9 = [v0 view];
  if (!v9)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v10 = v9;
  v11 = [v9 leadingAnchor];

  v12 = [v8 constraintEqualToAnchor:v11];
  *(v1 + 40) = v12;
  v13 = [v2 trailingAnchor];
  v14 = [v0 view];
  if (!v14)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v15 = v14;
  v16 = [v14 trailingAnchor];

  v17 = [v13 constraintEqualToAnchor:v16];
  *(v1 + 48) = v17;
  v18 = [v2 heightAnchor];
  v19 = [v0 view];
  if (!v19)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v20 = v19;
  v21 = [v19 heightAnchor];

  v22 = [v18 constraintEqualToAnchor:v21 multiplier:0.35];
  *(v1 + 56) = v22;
  v23 = *&v0[OBJC_IVAR____TtC11Diagnostics41SelfServiceSuiteDescriptionViewController_closeButton];
  v24 = [v23 topAnchor];
  v25 = [v0 view];
  if (!v25)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v26 = v25;
  v27 = [v25 topAnchor];

  v28 = [v24 constraintEqualToAnchor:v27 constant:20.0];
  *(v1 + 64) = v28;
  v29 = [v23 trailingAnchor];
  v30 = [v0 view];
  if (!v30)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v31 = v30;
  v32 = [v30 trailingAnchor];

  v33 = [v29 constraintEqualToAnchor:v32 constant:-20.0];
  *(v1 + 72) = v33;
  v34 = *&v0[OBJC_IVAR____TtC11Diagnostics41SelfServiceSuiteDescriptionViewController_scrollView];
  v35 = [v34 topAnchor];
  v36 = [v2 bottomAnchor];
  v37 = [v35 constraintEqualToAnchor:v36 constant:20.0];

  *(v1 + 80) = v37;
  v38 = [v34 leadingAnchor];
  v39 = [v0 view];
  if (!v39)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v40 = v39;
  v149 = v23;
  v151 = v2;
  v41 = [v39 leadingAnchor];

  v42 = [v38 constraintEqualToAnchor:v41 constant:36.0];
  *(v1 + 88) = v42;
  v43 = [v34 trailingAnchor];
  v44 = [v0 view];
  if (!v44)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v45 = v44;
  v46 = [v44 trailingAnchor];

  v47 = [v43 constraintEqualToAnchor:v46 constant:-36.0];
  *(v1 + 96) = v47;
  v48 = [v34 bottomAnchor];
  v153 = *&v0[OBJC_IVAR____TtC11Diagnostics41SelfServiceSuiteDescriptionViewController_startDiagnosticButton];
  v49 = [v153 topAnchor];
  v50 = [v48 constraintEqualToAnchor:v49 constant:-20.0];

  *(v1 + 104) = v50;
  v51 = *&v0[OBJC_IVAR____TtC11Diagnostics41SelfServiceSuiteDescriptionViewController_titleLabel];
  v52 = [v51 topAnchor];
  v53 = [v34 topAnchor];
  v54 = [v52 constraintEqualToAnchor:v53];

  *(v1 + 112) = v54;
  v55 = [v51 leadingAnchor];
  v56 = [v34 leadingAnchor];
  v57 = [v55 constraintEqualToAnchor:v56];

  *(v1 + 120) = v57;
  v58 = [v51 trailingAnchor];
  v59 = [v34 trailingAnchor];
  v60 = [v58 constraintEqualToAnchor:v59];

  *(v1 + 128) = v60;
  v61 = [v51 widthAnchor];
  v62 = [v34 widthAnchor];
  v63 = [v61 constraintEqualToAnchor:v62];

  *(v1 + 136) = v63;
  v64 = *&v0[OBJC_IVAR____TtC11Diagnostics41SelfServiceSuiteDescriptionViewController_subtitleLabel];
  v65 = [v64 topAnchor];
  v66 = [v51 bottomAnchor];
  v67 = [v65 constraintEqualToAnchor:v66 constant:12.0];

  *(v1 + 144) = v67;
  v68 = [v64 leadingAnchor];
  v69 = [v34 leadingAnchor];
  v70 = [v68 constraintEqualToAnchor:v69];

  *(v1 + 152) = v70;
  v71 = [v64 trailingAnchor];
  v72 = [v34 trailingAnchor];
  v73 = [v71 constraintEqualToAnchor:v72];

  *(v1 + 160) = v73;
  v74 = [v64 bottomAnchor];
  v75 = [v34 bottomAnchor];
  v76 = [v74 constraintEqualToAnchor:v75];

  *(v1 + 168) = v76;
  v77 = [v64 widthAnchor];
  v78 = [v34 widthAnchor];
  v79 = [v77 constraintEqualToAnchor:v78];

  *(v1 + 176) = v79;
  v80 = *&v0[OBJC_IVAR____TtC11Diagnostics41SelfServiceSuiteDescriptionViewController_detailsLabel];
  v81 = [v80 leadingAnchor];
  v82 = [v0 view];
  if (!v82)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v83 = v82;
  v84 = [v82 leadingAnchor];

  v85 = [v81 constraintEqualToAnchor:v84 constant:36.0];
  *(v1 + 184) = v85;
  v86 = [v80 trailingAnchor];
  v87 = [v0 view];
  if (!v87)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v88 = v87;
  v89 = [v87 trailingAnchor];

  v90 = [v86 constraintEqualToAnchor:v89 constant:-36.0];
  *(v1 + 192) = v90;
  v91 = [v153 bottomAnchor];
  v92 = [v80 topAnchor];
  v93 = [v91 constraintEqualToAnchor:v92 constant:-20.0];

  *(v1 + 200) = v93;
  v94 = [v153 leadingAnchor];
  v95 = [v0 view];
  if (!v95)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v96 = v95;
  v97 = [v95 leadingAnchor];

  v98 = [v94 constraintEqualToAnchor:v97 constant:36.0];
  *(v1 + 208) = v98;
  v99 = [v153 trailingAnchor];
  v100 = [v0 view];
  if (!v100)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v101 = v100;
  v102 = [v100 trailingAnchor];

  v103 = [v99 constraintEqualToAnchor:v102 constant:-36.0];
  *(v1 + 216) = v103;
  v104 = [v80 bottomAnchor];
  v105 = [v0 view];
  if (!v105)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v106 = v105;
  v107 = [v105 safeAreaLayoutGuide];

  v108 = [v107 bottomAnchor];
  v109 = [v104 constraintEqualToAnchor:v108 constant:-12.0];

  *(v1 + 224) = v109;
  v110 = [v80 leadingAnchor];
  v111 = [v0 view];
  if (!v111)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v112 = v111;
  v113 = [v111 leadingAnchor];

  v114 = [v110 constraintEqualToAnchor:v113 constant:36.0];
  *(v1 + 232) = v114;
  v115 = [v80 trailingAnchor];
  v116 = [v0 view];
  if (!v116)
  {
LABEL_38:
    __break(1u);
    return;
  }

  v117 = v116;
  v118 = objc_opt_self();
  v119 = [v117 trailingAnchor];

  v120 = [v115 constraintEqualToAnchor:v119 constant:-36.0];
  *(v1 + 240) = v120;
  sub_10003E110(0, &qword_1001FD550);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v118 activateConstraints:isa];

  if (_UISolariumEnabled())
  {
    v122 = swift_allocObject();
    *(v122 + 16) = xmmword_10017ED90;
    v123 = [v149 widthAnchor];
    v124 = [v123 constraintEqualToConstant:48.0];

    *(v122 + 32) = v124;
    v125 = [v149 heightAnchor];
    v126 = [v125 constraintEqualToConstant:48.0];

    *(v122 + 40) = v126;
    v127 = Array._bridgeToObjectiveC()().super.isa;

    [v118 activateConstraints:v127];
  }

  v150 = v118;
  v128 = v0[OBJC_IVAR____TtC11Diagnostics41SelfServiceSuiteDescriptionViewController_isShowingGlyph];
  v129 = swift_allocObject();
  *(v129 + 16) = xmmword_10017ED60;
  v130 = *&v0[OBJC_IVAR____TtC11Diagnostics41SelfServiceSuiteDescriptionViewController_imageView];
  if (v128 == 1)
  {
    v131 = &selRef_heightAnchor;
    v132 = [v130 heightAnchor];
    v133 = [v132 constraintEqualToConstant:70.0];
    v152 = &selRef_centerYAnchor;
    v134 = &off_1001EE000;
    v135 = &selRef_centerXAnchor;
    v136 = v130;
    v137 = &selRef_widthAnchor;
    v138 = v151;
  }

  else
  {
    v139 = [v130 topAnchor];
    v138 = v151;
    v132 = [v151 topAnchor];
    v134 = &off_1001EE000;
    v133 = [v139 constraintEqualToAnchor:v132];

    v152 = &selRef_bottomAnchor;
    v135 = &selRef_trailingAnchor;
    v137 = &selRef_leadingAnchor;
    v131 = &selRef_leadingAnchor;
    v136 = v151;
  }

  *(v129 + 32) = v133;
  v140 = [v130 *v137];
  v141 = [v136 *v131];
  v142 = [v140 v134[338]];

  *(v129 + 40) = v142;
  v143 = [v130 *v135];
  v144 = [v138 *v135];
  v145 = [v143 v134[338]];

  *(v129 + 48) = v145;
  v146 = [v130 *v152];
  v147 = [v138 *v152];
  v148 = [v146 v134[338]];

  *(v129 + 56) = v148;
  v154 = Array._bridgeToObjectiveC()().super.isa;

  [v150 activateConstraints:v154];
}

uint64_t sub_100084B80()
{
}

id sub_100084C34()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SelfServiceSuiteDescriptionViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100084D4C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

void sub_100084D94()
{
  *(v0 + OBJC_IVAR____TtC11Diagnostics41SelfServiceSuiteDescriptionViewController_defaultOuterPadding) = 0x4034000000000000;
  *(v0 + OBJC_IVAR____TtC11Diagnostics41SelfServiceSuiteDescriptionViewController_defaultInnerPadding) = 0x4028000000000000;
  *(v0 + OBJC_IVAR____TtC11Diagnostics41SelfServiceSuiteDescriptionViewController_defaultHorizontalPadding) = 0x4042000000000000;
  *(v0 + OBJC_IVAR____TtC11Diagnostics41SelfServiceSuiteDescriptionViewController_closeButtonPointSize) = 0x403E000000000000;
  *(v0 + OBJC_IVAR____TtC11Diagnostics41SelfServiceSuiteDescriptionViewController_closeButtonSize) = 0x4048000000000000;
  *(v0 + OBJC_IVAR____TtC11Diagnostics41SelfServiceSuiteDescriptionViewController_glyphPointSize) = 0x4051800000000000;
  *(v0 + OBJC_IVAR____TtC11Diagnostics41SelfServiceSuiteDescriptionViewController_imageScreenSpaceRatio) = 0x3FD6666666666666;
  v1 = OBJC_IVAR____TtC11Diagnostics41SelfServiceSuiteDescriptionViewController_closeButton;
  *(v0 + v1) = [objc_opt_self() buttonWithType:0];
  v2 = OBJC_IVAR____TtC11Diagnostics41SelfServiceSuiteDescriptionViewController_startDiagnosticButton;
  *(v0 + v2) = [objc_opt_self() boldButton];
  v3 = OBJC_IVAR____TtC11Diagnostics41SelfServiceSuiteDescriptionViewController_imageView;
  *(v0 + v3) = [objc_allocWithZone(UIImageView) init];
  v4 = OBJC_IVAR____TtC11Diagnostics41SelfServiceSuiteDescriptionViewController_scrollView;
  *(v0 + v4) = [objc_allocWithZone(UIScrollView) init];
  v5 = OBJC_IVAR____TtC11Diagnostics41SelfServiceSuiteDescriptionViewController_titleLabel;
  *(v0 + v5) = [objc_allocWithZone(UILabel) init];
  v6 = OBJC_IVAR____TtC11Diagnostics41SelfServiceSuiteDescriptionViewController_subtitleLabel;
  *(v0 + v6) = [objc_allocWithZone(UILabel) init];
  v7 = OBJC_IVAR____TtC11Diagnostics41SelfServiceSuiteDescriptionViewController_detailsLabel;
  *(v0 + v7) = [objc_allocWithZone(UILabel) init];
  v8 = OBJC_IVAR____TtC11Diagnostics41SelfServiceSuiteDescriptionViewController_imageViewContainerView;
  *(v0 + v8) = [objc_allocWithZone(UIView) init];
  *(v0 + OBJC_IVAR____TtC11Diagnostics41SelfServiceSuiteDescriptionViewController_isShowingGlyph) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_100084F94(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

id sub_100084FE8()
{
  v1 = *(v0 + OBJC_IVAR____TtC11Diagnostics18TestRunnerIconView_activityIndicatorView);
  [v1 setHidesWhenStopped:0];
  v2 = [objc_opt_self() labelColor];
  [v1 setColor:v2];

  [v1 startAnimating];
  [v1 setAlpha:0.0];
  [v1 setTranslatesAutoresizingMaskIntoConstraints:0];
  v3 = *(v0 + OBJC_IVAR____TtC11Diagnostics18TestRunnerIconView_checkmarkView);
  [v3 setAlpha:0.0];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  v4 = *(v0 + OBJC_IVAR____TtC11Diagnostics18TestRunnerIconView_imageView);
  [v4 setContentMode:1];
  [v4 setAlpha:0.0];

  return [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
}

id sub_100085118()
{
  [v0 addSubview:*&v0[OBJC_IVAR____TtC11Diagnostics18TestRunnerIconView_activityIndicatorView]];
  [v0 addSubview:*&v0[OBJC_IVAR____TtC11Diagnostics18TestRunnerIconView_checkmarkView]];
  v1 = *&v0[OBJC_IVAR____TtC11Diagnostics18TestRunnerIconView_imageView];

  return [v0 addSubview:v1];
}

void sub_10008518C()
{
  v1 = v0;
  v42 = objc_opt_self();
  sub_10003C49C(&unk_1001FD020);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_100180E20;
  v3 = *&v1[OBJC_IVAR____TtC11Diagnostics18TestRunnerIconView_activityIndicatorView];
  v4 = [v3 topAnchor];
  v5 = [v1 topAnchor];
  v6 = [v4 constraintEqualToAnchor:v5];

  *(v2 + 32) = v6;
  v7 = [v3 bottomAnchor];
  v8 = [v1 bottomAnchor];
  v9 = [v7 constraintEqualToAnchor:v8];

  *(v2 + 40) = v9;
  v10 = [v3 leadingAnchor];
  v11 = [v1 leadingAnchor];
  v12 = [v10 constraintEqualToAnchor:v11];

  *(v2 + 48) = v12;
  v13 = [v3 trailingAnchor];
  v14 = [v1 trailingAnchor];
  v15 = [v13 constraintEqualToAnchor:v14];

  *(v2 + 56) = v15;
  v16 = *&v1[OBJC_IVAR____TtC11Diagnostics18TestRunnerIconView_checkmarkView];
  v17 = [v16 topAnchor];
  v18 = [v1 topAnchor];
  v19 = [v17 constraintEqualToAnchor:v18];

  *(v2 + 64) = v19;
  v20 = [v16 bottomAnchor];
  v21 = [v1 bottomAnchor];
  v22 = [v20 constraintEqualToAnchor:v21];

  *(v2 + 72) = v22;
  v23 = [v16 leadingAnchor];
  v24 = [v1 leadingAnchor];
  v25 = [v23 constraintEqualToAnchor:v24];

  *(v2 + 80) = v25;
  v26 = [v16 trailingAnchor];
  v27 = [v1 trailingAnchor];
  v28 = [v26 constraintEqualToAnchor:v27];

  *(v2 + 88) = v28;
  v29 = *&v1[OBJC_IVAR____TtC11Diagnostics18TestRunnerIconView_imageView];
  v30 = [v29 topAnchor];
  v31 = [v1 topAnchor];
  v32 = [v30 constraintEqualToAnchor:v31];

  *(v2 + 96) = v32;
  v33 = [v29 bottomAnchor];
  v34 = [v1 bottomAnchor];
  v35 = [v33 constraintEqualToAnchor:v34];

  *(v2 + 104) = v35;
  v36 = [v29 leadingAnchor];
  v37 = [v1 leadingAnchor];
  v38 = [v36 constraintEqualToAnchor:v37];

  *(v2 + 112) = v38;
  v39 = [v29 trailingAnchor];
  v40 = [v1 trailingAnchor];
  v41 = [v39 constraintEqualToAnchor:v40];

  *(v2 + 120) = v41;
  sub_10007E540();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v42 activateConstraints:isa];
}

id sub_1000856BC(char a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  v4 = v3;
  v8 = *&v4[OBJC_IVAR____TtC11Diagnostics18TestRunnerIconView_checkmarkView];
  v9 = OBJC_IVAR____TtC11Diagnostics13CheckmarkView_circleView;
  v10 = [*&v8[OBJC_IVAR____TtC11Diagnostics13CheckmarkView_circleView] layer];
  [v10 cornerRadius];
  v12 = v11;

  [v4 bounds];
  if (v12 == CGRectGetWidth(v18) * 0.5)
  {
    if (a1)
    {
LABEL_3:
      v13 = swift_allocObject();
      v13[2] = v4;
      v13[3] = a2;
      v13[4] = a3;
      v14 = v4;
      sub_10003E418(a2, a3);
      sub_10006D528(v8, sub_100085D4C, v13);
    }
  }

  else
  {
    v16 = [*&v8[v9] layer];
    [v4 bounds];
    [v16 setCornerRadius:CGRectGetWidth(v19) * 0.5];

    if (a1)
    {
      goto LABEL_3;
    }
  }

  [v8 setAlpha:1.0];
  result = [*&v8[OBJC_IVAR____TtC11Diagnostics13CheckmarkView_checkAnimationView] show];
  if (a2)
  {
    return a2(1);
  }

  return result;
}

void sub_100085888(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a2 + OBJC_IVAR____TtC11Diagnostics18TestRunnerIconView_checkmarkView);
  [v6 setAlpha:1.0];
  v7 = *&v6[OBJC_IVAR____TtC11Diagnostics13CheckmarkView_checkAnimationView];
  if (a3)
  {
    v11[4] = a3;
    v11[5] = a4;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 1107296256;
    v11[2] = sub_100084F94;
    v11[3] = &unk_1001C2170;
    v8 = _Block_copy(v11);
    v9 = v7;
    sub_10003E418(a3, a4);
  }

  else
  {
    v10 = v7;
    v8 = 0;
  }

  [v7 animateWithCompletion:v8];
  _Block_release(v8);
}

id sub_100085994(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + OBJC_IVAR____TtC11Diagnostics18TestRunnerIconView_checkmarkView);
  [v2 setAlpha:0.0];
  v3 = *&v2[OBJC_IVAR____TtC11Diagnostics13CheckmarkView_checkAnimationView];

  return [v3 hide];
}

id sub_1000859F8(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC11Diagnostics18TestRunnerIconView_activityIndicatorView;
  *&v4[v9] = [objc_allocWithZone(UIActivityIndicatorView) initWithActivityIndicatorStyle:100];
  v10 = OBJC_IVAR____TtC11Diagnostics18TestRunnerIconView_checkmarkView;
  type metadata accessor for CheckmarkView();
  *&v4[v10] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v11 = OBJC_IVAR____TtC11Diagnostics18TestRunnerIconView_imageView;
  *&v4[v11] = [objc_allocWithZone(UIImageView) init];
  v13.receiver = v4;
  v13.super_class = type metadata accessor for TestRunnerIconView();
  return objc_msgSendSuper2(&v13, "initWithFrame:", a1, a2, a3, a4);
}

id sub_100085B00(void *a1)
{
  v3 = OBJC_IVAR____TtC11Diagnostics18TestRunnerIconView_activityIndicatorView;
  *&v1[v3] = [objc_allocWithZone(UIActivityIndicatorView) initWithActivityIndicatorStyle:100];
  v4 = OBJC_IVAR____TtC11Diagnostics18TestRunnerIconView_checkmarkView;
  type metadata accessor for CheckmarkView();
  *&v1[v4] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v5 = OBJC_IVAR____TtC11Diagnostics18TestRunnerIconView_imageView;
  *&v1[v5] = [objc_allocWithZone(UIImageView) init];
  v8.receiver = v1;
  v8.super_class = type metadata accessor for TestRunnerIconView();
  v6 = objc_msgSendSuper2(&v8, "initWithCoder:", a1);

  if (v6)
  {
  }

  return v6;
}

void sub_100085C00()
{
  v1 = *(v0 + OBJC_IVAR____TtC11Diagnostics18TestRunnerIconView_imageView);
}

id sub_100085C50()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TestRunnerIconView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100085D04()
{
  if (*(v0 + 24))
  {
  }

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100085D58(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_100085D80(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10003C49C(&qword_1001FD070);
  __chkstk_darwin(v4 - 8);
  v6 = &v28 - v5;
  v7 = type metadata accessor for UIButton.Configuration();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v28 - v12;
  v14 = OBJC_IVAR____TtC11Diagnostics11GlyphButton_buttonWidthConstraint;
  *&v2[v14] = [objc_allocWithZone(NSLayoutConstraint) init];
  v15 = OBJC_IVAR____TtC11Diagnostics11GlyphButton_buttonHeightConstraint;
  *&v2[v15] = [objc_allocWithZone(NSLayoutConstraint) init];
  v16 = OBJC_IVAR____TtC11Diagnostics11GlyphButton_buttonTopMarginConstraint;
  *&v2[v16] = [objc_allocWithZone(NSLayoutConstraint) init];
  v17 = OBJC_IVAR____TtC11Diagnostics11GlyphButton_imageAndLabelGapConstraint;
  *&v2[v17] = [objc_allocWithZone(NSLayoutConstraint) init];
  *&v2[OBJC_IVAR____TtC11Diagnostics11GlyphButton_imageAndLabelGap] = 0x4024000000000000;
  v2[OBJC_IVAR____TtC11Diagnostics11GlyphButton_topImageGapEnabled] = 1;
  *&v2[OBJC_IVAR____TtC11Diagnostics11GlyphButton_buttonSize] = 0x4046800000000000;
  v18 = OBJC_IVAR____TtC11Diagnostics11GlyphButton_buttonLabelColor;
  *&v2[v18] = [objc_opt_self() labelColor];
  v19 = OBJC_IVAR____TtC11Diagnostics11GlyphButton_buttonTitleLabel;
  *&v2[v19] = [objc_allocWithZone(UILabel) init];
  v20 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleBody];
  static UIButton.Configuration.plain()();
  *(swift_allocObject() + 16) = v20;
  v21 = v20;
  UIConfigurationTextAttributesTransformer.init(_:)();
  v22 = type metadata accessor for UIConfigurationTextAttributesTransformer();
  (*(*(v22 - 8) + 56))(v6, 0, 1, v22);
  UIButton.Configuration.titleTextAttributesTransformer.setter();

  sub_10003E110(0, &qword_1001FD078);
  (*(v8 + 16))(v11, v13, v7);
  *&v2[OBJC_IVAR____TtC11Diagnostics11GlyphButton_button] = UIButton.init(configuration:primaryAction:)();
  v23 = &v2[OBJC_IVAR____TtC11Diagnostics11GlyphButton_action];
  v24 = *(a1 + 16);
  *v23 = *a1;
  *(v23 + 1) = v24;
  *(v23 + 4) = *(a1 + 32);
  v25 = type metadata accessor for GlyphButton();
  v28.receiver = v2;
  v28.super_class = v25;
  v26 = objc_msgSendSuper2(&v28, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  (*(v8 + 8))(v13, v7);
  return v26;
}

id sub_100086154()
{
  v1 = v0;
  v2 = sub_10003C49C(&qword_1001FD068);
  __chkstk_darwin(v2 - 8);
  v4 = v19 - v3;
  v5 = *&v1[OBJC_IVAR____TtC11Diagnostics11GlyphButton_button];
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  v6 = *&v1[OBJC_IVAR____TtC11Diagnostics11GlyphButton_buttonTitleLabel];
  [v6 setTextColor:*&v1[OBJC_IVAR____TtC11Diagnostics11GlyphButton_buttonLabelColor]];
  [v6 setTextAlignment:1];
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  v7 = v1[OBJC_IVAR____TtC11Diagnostics11GlyphButton_action + 16];
  if (v7 != 7)
  {
    v20 = 0;
    memset(v19, 0, sizeof(v19));
    v8 = sub_1000FF2D0(v19, v7);
    [v5 setImage:v8 forState:0];

    v9 = [v5 imageView];
    if (v9)
    {
      v10 = v9;
      [v9 setContentMode:4];
    }

    v11 = [v5 imageView];
    if (v11)
    {
      v12 = v11;
      [v11 setClipsToBounds:0];
    }

    [v5 setClipsToBounds:0];
  }

  v13 = String._bridgeToObjectiveC()();

  [v6 setText:v13];

  v14 = [objc_opt_self() currentDevice];
  v15 = [v14 userInterfaceIdiom];

  if (v15 == 6)
  {
    sub_10003E110(0, &unk_1001FD080);
    static UIShape.circle.getter();
    v16 = type metadata accessor for UIShape();
    (*(*(v16 - 8) + 56))(v4, 0, 1, v16);
    v17 = UIHoverStyle.init(shape:)();
    [v5 setHoverStyle:v17];
  }

  [v5 addTarget:v1 action:"handleTouchUpInside" forControlEvents:64];
  return [v1 addTarget:v1 action:"handleTouchUpInside" forControlEvents:64];
}

id sub_100086450()
{
  [v0 addSubview:*&v0[OBJC_IVAR____TtC11Diagnostics11GlyphButton_button]];
  v1 = *&v0[OBJC_IVAR____TtC11Diagnostics11GlyphButton_buttonTitleLabel];

  return [v0 addSubview:v1];
}

void sub_1000864AC()
{
  v1 = *(v0 + OBJC_IVAR____TtC11Diagnostics11GlyphButton_button);
  v2 = [v1 widthAnchor];
  v3 = OBJC_IVAR____TtC11Diagnostics11GlyphButton_buttonSize;
  v4 = [v2 constraintEqualToConstant:*(v0 + OBJC_IVAR____TtC11Diagnostics11GlyphButton_buttonSize)];

  v5 = OBJC_IVAR____TtC11Diagnostics11GlyphButton_buttonWidthConstraint;
  v6 = *(v0 + OBJC_IVAR____TtC11Diagnostics11GlyphButton_buttonWidthConstraint);
  *(v0 + OBJC_IVAR____TtC11Diagnostics11GlyphButton_buttonWidthConstraint) = v4;
  v7 = v5;
  v48 = v5;

  v8 = [v1 heightAnchor];
  v9 = [v8 constraintEqualToConstant:*(v0 + v3)];

  v10 = OBJC_IVAR____TtC11Diagnostics11GlyphButton_buttonHeightConstraint;
  v11 = *(v0 + OBJC_IVAR____TtC11Diagnostics11GlyphButton_buttonHeightConstraint);
  *(v0 + OBJC_IVAR____TtC11Diagnostics11GlyphButton_buttonHeightConstraint) = v9;

  LODWORD(v12) = 1148829696;
  [*(v0 + v7) setPriority:v12];
  LODWORD(v13) = 1148829696;
  [*(v0 + v10) setPriority:v13];
  v14 = [v1 topAnchor];
  v15 = [v0 topAnchor];
  v16 = OBJC_IVAR____TtC11Diagnostics11GlyphButton_imageAndLabelGap;
  v17 = [v14 constraintEqualToAnchor:v15 constant:*(v0 + OBJC_IVAR____TtC11Diagnostics11GlyphButton_imageAndLabelGap)];

  v18 = OBJC_IVAR____TtC11Diagnostics11GlyphButton_buttonTopMarginConstraint;
  v19 = *(v0 + OBJC_IVAR____TtC11Diagnostics11GlyphButton_buttonTopMarginConstraint);
  *(v0 + OBJC_IVAR____TtC11Diagnostics11GlyphButton_buttonTopMarginConstraint) = v17;

  v20 = *(v0 + OBJC_IVAR____TtC11Diagnostics11GlyphButton_buttonTitleLabel);
  v21 = [v20 topAnchor];
  v22 = [v1 bottomAnchor];
  v23 = [v21 constraintEqualToAnchor:v22 constant:*(v0 + v16)];

  v24 = OBJC_IVAR____TtC11Diagnostics11GlyphButton_imageAndLabelGapConstraint;
  v25 = *(v0 + OBJC_IVAR____TtC11Diagnostics11GlyphButton_imageAndLabelGapConstraint);
  *(v0 + OBJC_IVAR____TtC11Diagnostics11GlyphButton_imageAndLabelGapConstraint) = v23;

  v26 = objc_opt_self();
  sub_10003C49C(&unk_1001FD020);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_100180E60;
  v28 = *(v0 + v18);
  *(v27 + 32) = v28;
  v29 = v28;
  v30 = [v1 centerXAnchor];
  v31 = [v0 centerXAnchor];
  v32 = [v30 constraintEqualToAnchor:v31];

  v33 = *(v0 + v10);
  *(v27 + 40) = v32;
  *(v27 + 48) = v33;
  v34 = *&v48[v0];
  v35 = *(v0 + v24);
  *(v27 + 56) = v34;
  *(v27 + 64) = v35;
  v36 = v33;
  v37 = v34;
  v38 = v35;
  v39 = [v20 bottomAnchor];
  v40 = [v0 bottomAnchor];
  v41 = [v39 constraintEqualToAnchor:v40];

  *(v27 + 72) = v41;
  v42 = [v20 leadingAnchor];
  v43 = [v0 leadingAnchor];
  v44 = [v42 constraintEqualToAnchor:v43];

  *(v27 + 80) = v44;
  v45 = [v20 trailingAnchor];
  v46 = [v0 trailingAnchor];
  v47 = [v45 constraintEqualToAnchor:v46];

  *(v27 + 88) = v47;
  sub_10003E110(0, &qword_1001FD550);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v26 activateConstraints:isa];
}

void sub_1000869B0()
{

  v1 = *(v0 + OBJC_IVAR____TtC11Diagnostics11GlyphButton_buttonTitleLabel);
}

id sub_100086A68()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GlyphButton();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_100086B7C()
{
  v1 = *v0;
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  v3 = objc_opt_self();
  v7[4] = sub_100086CE0;
  v7[5] = v2;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 1107296256;
  v7[2] = sub_100031FA8;
  v7[3] = &unk_1001C21D8;
  v4 = _Block_copy(v7);
  v5 = v1;

  [v3 animateWithDuration:0x20000 delay:v4 options:0 animations:0.125 completion:0.0];
  _Block_release(v4);

  return [v5 setUserInteractionEnabled:0];
}

uint64_t sub_100086CA8()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100086D00(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_100086D18()
{
  v1 = OBJC_IVAR____TtC11Diagnostics11GlyphButton_buttonWidthConstraint;
  *(v0 + v1) = [objc_allocWithZone(NSLayoutConstraint) init];
  v2 = OBJC_IVAR____TtC11Diagnostics11GlyphButton_buttonHeightConstraint;
  *(v0 + v2) = [objc_allocWithZone(NSLayoutConstraint) init];
  v3 = OBJC_IVAR____TtC11Diagnostics11GlyphButton_buttonTopMarginConstraint;
  *(v0 + v3) = [objc_allocWithZone(NSLayoutConstraint) init];
  v4 = OBJC_IVAR____TtC11Diagnostics11GlyphButton_imageAndLabelGapConstraint;
  *(v0 + v4) = [objc_allocWithZone(NSLayoutConstraint) init];
  *(v0 + OBJC_IVAR____TtC11Diagnostics11GlyphButton_imageAndLabelGap) = 0x4024000000000000;
  *(v0 + OBJC_IVAR____TtC11Diagnostics11GlyphButton_topImageGapEnabled) = 1;
  *(v0 + OBJC_IVAR____TtC11Diagnostics11GlyphButton_buttonSize) = 0x4046800000000000;
  v5 = OBJC_IVAR____TtC11Diagnostics11GlyphButton_buttonLabelColor;
  *(v0 + v5) = [objc_opt_self() labelColor];
  v6 = OBJC_IVAR____TtC11Diagnostics11GlyphButton_buttonTitleLabel;
  *(v0 + v6) = [objc_allocWithZone(UILabel) init];
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_100086E78()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

id sub_100086EF0()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS.QoSClass();
  v44 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v0 + OBJC_IVAR____TtC11Diagnostics11ImageLoader_lock);
  [v12 lock];
  if ((*(v0 + OBJC_IVAR____TtC11Diagnostics11ImageLoader_loading) & 1) == 0)
  {
    v37 = v8;
    v38 = v6;
    v39 = v4;
    v40 = v5;
    v41 = v2;
    v42 = v1;
    v43 = v12;
    *(v0 + OBJC_IVAR____TtC11Diagnostics11ImageLoader_loading) = 1;
    v14 = String._bridgeToObjectiveC()();
    v15 = [v14 lastPathComponent];

    v16 = v15;
    v17 = v15;
    if (!v15)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v17 = String._bridgeToObjectiveC()();

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v16 = String._bridgeToObjectiveC()();
    }

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v15;
    v19 = String._bridgeToObjectiveC()();
    v20 = objc_opt_self();
    v21 = [v20 _systemImageNamed:v19];

    if (v21)
    {

      swift_getKeyPath();
      swift_getKeyPath();
      aBlock = v21;
      v47 = 0;
      LOBYTE(v48) = 0;
    }

    else
    {
      v22 = [v17 stringByDeletingLastPathComponent];

      v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v25 = v24;

      v26 = HIBYTE(v25) & 0xF;
      if ((v25 & 0x2000000000000000) == 0)
      {
        v26 = v23 & 0xFFFFFFFFFFFFLL;
      }

      if (v26)
      {

        v27 = [v16 stringByDeletingLastPathComponent];

        static String._unconditionallyBridgeFromObjectiveC(_:)();
      }

      else
      {
      }

      v28 = String._bridgeToObjectiveC()();

      v29 = [v20 imageNamed:v28];

      if (!v29)
      {
        sub_10003E110(0, &qword_1001FD040);
        v30 = v44;
        (*(v44 + 104))(v11, enum case for DispatchQoS.QoSClass.default(_:), v9);
        v31 = static OS_dispatch_queue.global(qos:)();
        (*(v30 + 8))(v11, v9);
        v50 = sub_1000880B8;
        v51 = v0;
        aBlock = _NSConcreteStackBlock;
        v47 = 1107296256;
        v48 = sub_100031FA8;
        v49 = &unk_1001C22B8;
        v32 = _Block_copy(&aBlock);

        v33 = v37;
        static DispatchQoS.unspecified.getter();
        v45 = _swiftEmptyArrayStorage;
        sub_1000880D8(&qword_1001FDE60, &type metadata accessor for DispatchWorkItemFlags);
        sub_10003C49C(&unk_1001FD050);
        sub_1000446A0();
        v34 = v39;
        v35 = v42;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        _Block_release(v32);

        (*(v41 + 8))(v34, v35);
        (*(v38 + 8))(v33, v40);

        return [v43 unlock];
      }

      swift_getKeyPath();
      swift_getKeyPath();
      aBlock = v29;
      v47 = 0;
      LOBYTE(v48) = 0;
    }

    static Published.subscript.setter();
    return [v43 unlock];
  }

  return [v12 unlock];
}

uint64_t sub_100087544(uint64_t a1)
{
  if (qword_1001FC730 != -1)
  {
    swift_once();
  }

  v2 = qword_10020A3C8;
  v3 = *(a1 + OBJC_IVAR____TtC11Diagnostics11ImageLoader_assetLocator);
  v4 = *(a1 + OBJC_IVAR____TtC11Diagnostics11ImageLoader_assetLocator + 8);
  v5 = qword_1001FC738;
  swift_retain_n();
  if (v5 != -1)
  {
    swift_once();
  }

  v6 = qword_1001FEED8;
  if (qword_1001FEED8)
  {
    v7 = qword_1001FEED0;
    v8 = *(v2 + OBJC_IVAR____TtC11Diagnostics12SuiteManager_deviceManager);

    sub_100106B74(v7, v6, v3, v4, v8, a1);
  }

  else
  {
    static os_log_type_t.error.getter();
    sub_10003E110(0, &qword_1001FD6F0);
    v9 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)();

    sub_1000876C4(0, 0xF000000000000000, a1);
  }
}

uint64_t sub_1000876C4(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v17 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchQoS();
  v9 = *(v16 - 8);
  __chkstk_darwin(v16);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10003E110(0, &qword_1001FD040);
  v12 = static OS_dispatch_queue.main.getter();
  v13 = swift_allocObject();
  v13[2] = a1;
  v13[3] = a2;
  v13[4] = a3;
  aBlock[4] = sub_1000882B4;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100031FA8;
  aBlock[3] = &unk_1001C2308;
  v14 = _Block_copy(aBlock);
  sub_1000882C0(a1, a2);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1000880D8(&qword_1001FDE60, &type metadata accessor for DispatchWorkItemFlags);
  sub_10003C49C(&unk_1001FD050);
  sub_1000446A0();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v14);

  (*(v17 + 8))(v8, v6);
  return (*(v9 + 8))(v11, v16);
}

void sub_1000879A8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 == 15)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.setter();
  }

  else
  {
    v4 = objc_allocWithZone(UIImage);
    sub_10005FC70(a1, a2);
    sub_10005FC70(a1, a2);
    isa = Data._bridgeToObjectiveC()().super.isa;
    v6 = [v4 initWithData:isa];

    sub_1000882D4(a1, a2);
    if (v6)
    {
      swift_getKeyPath();
      swift_getKeyPath();

      v7 = v6;
      static Published.subscript.setter();
      sub_1000882D4(a1, a2);
    }

    else
    {
      v8 = Data._bridgeToObjectiveC()().super.isa;
      v9 = CGSVGDocumentCreateFromData();

      if (v9 && (v10 = [objc_opt_self() _imageWithCGSVGDocument:v9], v9, v10))
      {
        swift_getKeyPath();
        swift_getKeyPath();

        v11 = v10;
        static Published.subscript.setter();
        sub_1000882D4(a1, a2);
      }

      else
      {
        swift_getKeyPath();
        swift_getKeyPath();

        static Published.subscript.setter();
        sub_1000882D4(a1, a2);
      }
    }
  }
}

uint64_t sub_100087C3C()
{
  v1 = OBJC_IVAR____TtC11Diagnostics11ImageLoader__phase;
  v2 = sub_10003C49C(&qword_1001FDFA0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ImageLoader()
{
  result = qword_1001FECE0;
  if (!qword_1001FECE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100087D5C()
{
  sub_100087E0C();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100087E0C()
{
  if (!qword_1001FECF0)
  {
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &qword_1001FECF0);
    }
  }
}

uint64_t sub_100087E5C(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_100087E78(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_100087EC0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

uint64_t sub_100087F04(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_100087F2C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ImageLoader();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

Swift::Int sub_100087F6C()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_100087FD8()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100088028(void *a1, void *a2)
{
  v2 = (*a1 + OBJC_IVAR____TtC11Diagnostics11ImageLoader_assetLocator);
  if (*v2 == *(*a2 + OBJC_IVAR____TtC11Diagnostics11ImageLoader_assetLocator) && v2[1] == *(*a2 + OBJC_IVAR____TtC11Diagnostics11ImageLoader_assetLocator + 8))
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

uint64_t sub_1000880C0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000880D8(unint64_t *a1, void (*a2)(uint64_t))
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

double sub_100088120@<D0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  return result;
}

uint64_t sub_1000881AC(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_100088244(v1, v2, v3);
  return static Published.subscript.setter();
}

id sub_100088244(id result, uint64_t a2, char a3)
{
  if (a3 == 1)
  {
  }

  if (!a3)
  {
    return result;
  }

  return result;
}

uint64_t sub_100088264()
{
  v1 = *(v0 + 24);
  if (v1 >> 60 != 15)
  {
    sub_10005F18C(*(v0 + 16), v1);
  }

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000882C0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_10005FC70(a1, a2);
  }

  return a1;
}

uint64_t sub_1000882D4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_10005F18C(a1, a2);
  }

  return a1;
}

uint64_t sub_1000882F0()
{
  swift_beginAccess();
  v1 = objc_getAssociatedObject(v0, &unk_1001FEDE0);
  swift_endAccess();
  if (v1)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6[0] = v4;
  v6[1] = v5;
  if (*(&v5 + 1))
  {
    if (swift_dynamicCast())
    {
      return v3;
    }

    else
    {
      return 2;
    }
  }

  else
  {
    sub_10005173C(v6);
    return 2;
  }
}

uint64_t sub_1000883C8(char a1, int a2, uint64_t a3, uint64_t a4)
{
  v20 = a2;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v22 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v19[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = type metadata accessor for DispatchQoS();
  v11 = *(v21 - 8);
  __chkstk_darwin(v21);
  v13 = &v19[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_10003E110(0, &qword_1001FD040);
  v14 = static OS_dispatch_queue.main.getter();
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = v4;
  *(v15 + 32) = a3;
  *(v15 + 40) = a4;
  *(v15 + 48) = v20;
  aBlock[4] = sub_1000889D4;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100031FA8;
  aBlock[3] = &unk_1001C2358;
  v16 = _Block_copy(aBlock);
  v17 = v4;
  sub_10003E418(a3, a4);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10005BD2C();
  sub_10003C49C(&unk_1001FD050);
  sub_1000446A0();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v16);

  (*(v22 + 8))(v10, v8);
  return (*(v11 + 8))(v13, v21);
}

void sub_100088738(char a1, void *a2, void (*a3)(void), uint64_t a4, char a5)
{
  v10 = [objc_opt_self() _applicationKeyWindow];
  if (v10)
  {
    v11 = v10;
    sub_10003E110(0, &unk_1001FDE50);
    v12 = [v11 rootViewController];

    v20 = sub_100119F98(v12);
    if (a1)
    {
      v13 = [a2 popoverPresentationController];
      if (v13)
      {
        v14 = v13;
        v15 = [v20 view];
        [v14 setSourceView:v15];
      }
    }

    v16 = v20;
    if (v20)
    {
      v17 = v20;
      if (([v17 isBeingDismissed] & 1) == 0)
      {
        v18 = swift_allocObject();
        *(v18 + 16) = a3;
        *(v18 + 24) = a4;
        aBlock[4] = sub_100088A40;
        aBlock[5] = v18;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_100031FA8;
        aBlock[3] = &unk_1001C23A8;
        v19 = _Block_copy(aBlock);
        sub_10003E418(a3, a4);

        [v17 presentViewController:a2 animated:a5 & 1 completion:v19];
        _Block_release(v19);

        return;
      }

      v16 = v20;
    }

    if (a3)
    {
      a3(0);
      v16 = v20;
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10008898C()
{
  if (*(v0 + 32))
  {
  }

  return _swift_deallocObject(v0, 49, 7);
}

uint64_t sub_1000889E8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100088A00()
{
  if (*(v0 + 16))
  {
  }

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100088A40()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    return v1(1);
  }

  return result;
}

uint64_t sub_100088A74()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_100088AC8()
{
  result = qword_1001FEDE8;
  if (!qword_1001FEDE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001FEDE8);
  }

  return result;
}

uint64_t sub_100088B24(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_100088B3C(uint64_t a1)
{
  if ((*(a1 + 48) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 48) & 3;
  }
}

__n128 sub_100088B58(uint64_t a1, uint64_t a2)
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

uint64_t sub_100088B74(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 49))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 48);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_100088BBC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 48) = -a2;
    }
  }

  return result;
}

uint64_t sub_100088C10(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 48) = a2;
  return result;
}

BOOL sub_100088C48(unsigned __int8 a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v6 = *v3++;
  }

  while (v6 != a1);
  return v4 != 0;
}

BOOL sub_100088C78(char a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = (a2 + 32);
  do
  {
    v5 = v3;
    if (v3-- == 0)
    {
      break;
    }

    v7 = sub_1000F208C(*v4);
    v9 = v8;
    if (v7 == sub_1000F208C(a1) && v9 == v10)
    {

      return v5 != 0;
    }

    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

    ++v4;
  }

  while ((v12 & 1) == 0);
  return v5 != 0;
}

BOOL sub_100088D3C(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  v3 = *(a2 + 16);
  do
  {
    v4 = v2;
    if (v3 == v2)
    {
      break;
    }

    type metadata accessor for IndexPath();
    ++v2;
    sub_100089BAC(&unk_1001FFE60, &type metadata accessor for IndexPath);
  }

  while ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0);
  return v3 != v4;
}

void sub_100088E48(int a1, uint64_t a2)
{
  v3 = v2;
  v54 = a1;
  v50 = type metadata accessor for DispatchWorkItemFlags();
  v53 = *(v50 - 8);
  __chkstk_darwin(v50);
  v49 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v51 = *(v6 - 8);
  v52 = v6;
  __chkstk_darwin(v6);
  v8 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchTime();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v45 - v14;
  v16 = [objc_opt_self() standardUserDefaults];
  v17 = String._bridgeToObjectiveC()();
  v18 = [v16 BOOLForKey:v17];

  if ((v18 & 1) != 0 || (v19 = [objc_msgSend(objc_opt_self() "currentPlatform")], swift_unknownObjectRelease(), v19))
  {
    sub_100057B68();
    v20 = static OS_dispatch_queue.main.getter();
    static DispatchTime.now()();
    + infix(_:_:)();
    v48 = a2;
    v47 = *(v10 + 8);
    v46 = v9;
    v47(v13, v9);
    v21 = swift_allocObject();
    v22 = *(v3 + 16);
    *(v21 + 16) = *v3;
    *(v21 + 32) = v22;
    *(v21 + 48) = *(v3 + 32);
    *(v21 + 64) = *(v3 + 48);
    aBlock[4] = sub_100089BA4;
    aBlock[5] = v21;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100031FA8;
    aBlock[3] = &unk_1001C2568;
    v23 = _Block_copy(aBlock);
    sub_10007D588(v3, v57);

    v24 = v8;
    static DispatchQoS.unspecified.getter();
    v57[0] = _swiftEmptyArrayStorage;
    sub_100089BAC(&qword_1001FDE60, &type metadata accessor for DispatchWorkItemFlags);
    sub_10003C49C(&unk_1001FD050);
    sub_1000446A0();
    v26 = v49;
    v25 = v50;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
    _Block_release(v23);

    (*(v53 + 8))(v26, v25);
    (*(v51 + 8))(v24, v52);
    v47(v15, v46);
    a2 = v48;
  }

  if (*(v3 + 48) < 2u || (v31 = *(v3 + 24), v32 = *(v3 + 32) | *(v3 + 40), v33 = *(v3 + 16) | *(v3 + 8), v32 | *v3 | v31 | v33) && (*v3 != 1 || v32 | v31 | v33))
  {
    type metadata accessor for ManagedAlertController();
    swift_allocObject();
    sub_10007D588(v3, v57);
    swift_unknownObjectRetain();
    sub_10012FB48(v3, a2);
    v28 = v27;
    sub_10007D5E4(v3);
    if (v54)
    {
      if (!*(v28 + 72))
      {
        if (byte_10020A5F0)
        {
          goto LABEL_17;
        }

        byte_10020A5F0 = 1;
      }

      v29 = *(v28 + 16);
      v57[4] = sub_100089B40;
      v57[5] = v28;
      v57[0] = _NSConcreteStackBlock;
      v57[1] = 1107296256;
      v57[2] = sub_100084F94;
      v57[3] = &unk_1001C2518;
      v30 = _Block_copy(v57);

      [v29 showOnTopWithAnimated:1 completion:v30];
      _Block_release(v30);
    }

    else
    {
      sub_10012F990();
    }

LABEL_17:

    return;
  }

  if (!qword_10020A3C0)
  {
    v34 = type metadata accessor for FullscreenAlertViewController();
    v35 = objc_allocWithZone(v34);
    v36 = objc_allocWithZone(_UIContentUnavailableView);
    sub_10007D588(v3, v57);
    v37 = [v36 initWithFrame:0 title:0 style:{0.0, 0.0, 0.0, 0.0}];
    if (v37)
    {
      *&v35[OBJC_IVAR____TtC11Diagnostics29FullscreenAlertViewController_contentUnavailableView] = v37;
      v38 = &v35[OBJC_IVAR____TtC11Diagnostics29FullscreenAlertViewController_alert];
      v39 = *v3;
      v40 = *(v3 + 16);
      v41 = *(v3 + 32);
      v38[48] = *(v3 + 48);
      *(v38 + 1) = v40;
      *(v38 + 2) = v41;
      *v38 = v39;
      sub_10007D588(v3, v57);
      *&v35[OBJC_IVAR____TtC11Diagnostics29FullscreenAlertViewController_privateAlertAction] = sub_1000D724C(v3);
      v56.receiver = v35;
      v56.super_class = v34;
      v42 = objc_msgSendSuper2(&v56, "initWithNibName:bundle:", 0, 0);
      sub_10007D5E4(v3);
      v43 = qword_10020A3C0;
      qword_10020A3C0 = v42;
      v44 = v42;

      if (v54)
      {
        [v44 showOnTopWithAnimated:1 completion:0];
      }

      else
      {
        [v44 scheduleModalPresentationWithPriority:2 animated:1 presentationCompletion:0];
      }
    }

    else
    {
      __break(1u);
    }
  }
}

id sub_100089588(char a1)
{
  v3 = *v1;
  if (*(v1 + 48))
  {
    if (*(v1 + 48) == 1)
    {
      v4 = 0;
      v5 = 0;
    }

    else
    {
      v6 = v1[3];
      v7 = v1[4] | v1[5];
      v8 = v1[2] | v1[1];
      if (v7 | v3 | v6 | v8)
      {
        v9 = v7 | v6 | v8;
        if (v3 == 1 && v9 == 0)
        {
          result = MobileGestalt_get_current_device();
          if (!result)
          {
            __break(1u);
            return result;
          }

          v17 = result;
          MobileGestalt_get_wapiCapability();

          v18 = [objc_msgSend(objc_opt_self() "currentPlatform")];
          swift_unknownObjectRelease();
          if (v18)
          {
            v19._countAndFlagsBits = 4342623;
            v19._object = 0xE300000000000000;
            String.append(_:)(v19);
          }

          v4 = 0xD000000000000020;
          v5 = 0xD000000000000019;
        }

        else
        {
          v4 = 0xD000000000000020;
          if (v3 != 2 || v9)
          {
            if (v3 != 3 || v9)
            {
              if (v3 == 4 && !v9 || v3 != 5 || v9)
              {
                v5 = 0xD00000000000001ELL;
              }

              else
              {
                v5 = 0xD00000000000001ALL;
                v4 = 0xD00000000000001CLL;
              }
            }

            else
            {
              v5 = 0xD00000000000001CLL;
              v4 = 0xD00000000000001ELL;
            }
          }

          else
          {
            v5 = 0xD000000000000015;
            v4 = 0xD000000000000017;
          }
        }
      }

      else
      {
        v5 = 0xD000000000000015;
        v4 = 0x535F464F5F54554FLL;
      }
    }
  }

  else
  {
    v5 = 0xD000000000000020;
    if (sub_100088C78(*v1, &off_1001BD990))
    {
      v4 = 0;
      v5 = 0xD000000000000017;
    }

    else
    {
      if (sub_1000F208C(v3) == 0x22656D6F4822 && v11 == 0xE600000000000000)
      {
      }

      else
      {
        v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v13 & 1) == 0)
        {
          v5 = 0xD00000000000001FLL;
          v14 = [objc_msgSend(objc_opt_self() "currentPlatform")];
          swift_unknownObjectRelease();
          if (v14)
          {
            v15._countAndFlagsBits = 4342623;
            v15._object = 0xE300000000000000;
            String.append(_:)(v15);
            v5 = 0xD00000000000001FLL;
          }

          v4 = 0;
          goto LABEL_32;
        }
      }

      v4 = 0;
    }
  }

LABEL_32:
  if (a1)
  {
    v20 = v4;
  }

  else
  {
    v20 = v5;
  }

  return v20;
}

void sub_100089964(uint64_t *a1)
{
  if (*(a1 + 48) >= 2u)
  {
    v2 = a1[3];
    v3 = *a1;
    v4 = a1[4] | a1[5];
    v5 = a1[2] | a1[1];
    if (!(v4 | *a1 | v2 | v5))
    {
      sub_1000F6FF8(25);
      return;
    }

    v6 = v4 | v2 | v5;
    if (v3 == 1 && !v6)
    {
      sub_1000F6FF8(24);
      return;
    }

    v7 = (v3 & 0xFFFFFFFFFFFFFFFELL) == 2 || v3 == 4;
    v1 = 26;
    if (!v7 || v6 != 0)
    {
      if (v6)
      {
        v9 = 0;
      }

      else
      {
        v9 = v3 == 5;
      }

      if (v9)
      {
        sub_1000F6FF8(27);
        return;
      }

      v1 = 26;
    }
  }

  else
  {
    v1 = 27;
  }

  sub_1000F6FF8(v1);
}

BOOL sub_1000899E8(uint64_t *a1, uint64_t *a2)
{
  v2 = *(a2 + 48);
  if (*(a1 + 48))
  {
    if (*(a1 + 48) == 1)
    {
      return v2 == 1;
    }

    v4 = *a2;
    v3 = a2[1];
    v6 = a2[2];
    v5 = a2[3];
    v8 = a2[4];
    v7 = a2[5];
    v9 = a1[3];
    v10 = *a1;
    v11 = a1[4] | a1[5];
    v12 = a1[2] | a1[1];
    if (!(v11 | v10 | v9 | v12))
    {
      return v2 == 2 && !(v6 | v3 | v4 | v5 | v8 | v7);
    }

    v13 = v11 | v9 | v12;
    if (v10 != 1 || v13)
    {
      if (v10 != 2 || v13)
      {
        if (v10 != 3 || v13)
        {
          if (v10 != 4 || v13)
          {
            if (v10 != 5 || v13)
            {
              if (v2 != 2 || v4 != 6)
              {
                return 0;
              }
            }

            else if (v2 != 2 || v4 != 5)
            {
              return 0;
            }
          }

          else if (v2 != 2 || v4 != 4)
          {
            return 0;
          }
        }

        else if (v2 != 2 || v4 != 3)
        {
          return 0;
        }
      }

      else if (v2 != 2 || v4 != 2)
      {
        return 0;
      }
    }

    else if (v2 != 2 || v4 != 1)
    {
      return 0;
    }

    if (!(v6 | v3 | v5 | v8 | v7))
    {
      return 1;
    }
  }

  else if (!*(a2 + 48))
  {
    return 1;
  }

  return 0;
}

uint64_t sub_100089B48(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100089B60()
{
  sub_10007D4DC(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64));

  return _swift_deallocObject(v0, 65, 7);
}

uint64_t sub_100089BAC(unint64_t *a1, void (*a2)(uint64_t))
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

void *sub_100089C00(void (*a1)(uint64_t *__return_ptr, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = *(a3 + 16);
  result = _swiftEmptyArrayStorage;
  if (v6)
  {
    v13 = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v9 = *(type metadata accessor for URL() - 8);
    v10 = a3 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v11 = *(v9 + 72);
    while (1)
    {
      a1(&v12, v10);
      if (v4)
      {
        break;
      }

      v4 = 0;
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v10 += v11;
      if (!--v6)
      {
        return v13;
      }
    }

    __break(1u);
  }

  return result;
}

char *sub_100089D44(uint64_t a1, uint64_t a2)
{
  result = MobileGestalt_get_current_device();
  if (result)
  {
    v6 = result;
    wapiCapability = MobileGestalt_get_wapiCapability();

    v8 = [objc_opt_self() sharedManager];
    v9 = [v8 snapshot];

    v10 = [v9 retriesRemaining];
    v11 = 0xD000000000000029;
    if (wapiCapability)
    {
      v11 = 0xD00000000000002ELL;
      v12 = "_READY_SEND_NO_OCCUR_BODY";
    }

    else
    {
      v12 = "_READY_SEND_BODY_WLAN";
    }

    v13 = 0xD000000000000025;
    if (wapiCapability)
    {
      v14 = "_READY_SEND_TITLE";
    }

    else
    {
      v13 = 0xD000000000000020;
      v14 = "s";
    }

    if (v10)
    {
      v15 = v13;
    }

    else
    {
      v15 = v11;
    }

    if (v10)
    {
      v16 = v14;
    }

    else
    {
      v16 = v12;
    }

    v17 = objc_allocWithZone(v2);
    sub_1000494C8(0, 0, _swiftEmptyArrayStorage, 0xD000000000000021, 0x800000010018D600);
    v18 = String._bridgeToObjectiveC()();

    sub_1000494C8(0, 0, _swiftEmptyArrayStorage, v15, (v16 | 0x8000000000000000));

    v19 = String._bridgeToObjectiveC()();

    v20 = [v17 initWithTitle:v18 detailText:v19 symbolName:0 contentLayout:3];

    v21 = &v20[OBJC_IVAR____TtC11Diagnostics32FileReviewingTableViewController_completion];
    v22 = *&v20[OBJC_IVAR____TtC11Diagnostics32FileReviewingTableViewController_completion];
    *v21 = a1;
    v21[1] = a2;
    v23 = v20;
    sub_10003E418(a1, a2);
    sub_10003C52C(v22);
    v24 = OBJC_IVAR____TtC11Diagnostics32ConsentNoticeTableViewController_tableView;
    [*&v23[OBJC_IVAR____TtC11Diagnostics32ConsentNoticeTableViewController_tableView] setSeparatorStyle:0];
    v25 = *&v23[v24];

    [v25 setDataSource:v23];
    sub_10003C52C(a1);

    return v23;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100089FB4(char a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v44 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v42 = *(v7 - 8);
  v43 = v7;
  __chkstk_darwin(v7);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS.QoSClass();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for FileReviewingTableViewController();
  v48.receiver = v2;
  v48.super_class = v14;
  objc_msgSendSuper2(&v48, "viewWillAppear:", a1 & 1);
  v15 = v2[OBJC_IVAR____TtC11Diagnostics32FileReviewingTableViewController_activationReason];
  v16 = [v2 navigationController];
  v45 = v4;
  if (!v16)
  {
    goto LABEL_7;
  }

  v17 = v16;
  v18 = [v16 viewControllers];

  sub_10003E110(0, &qword_1001FDE30);
  v19 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  result = v19;
  if (!(v19 >> 62))
  {
    if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }

LABEL_10:

    if (v15)
    {
      goto LABEL_16;
    }

    goto LABEL_11;
  }

  v22 = _CocoaArrayWrapper.endIndex.getter();
  result = v19;
  if (!v22)
  {
    goto LABEL_10;
  }

LABEL_4:
  if ((result & 0xC000000000000001) != 0)
  {
    v29 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    swift_unknownObjectRelease();

    if (v29 == v2 || (v15 & 1) != 0)
    {
      goto LABEL_16;
    }

    goto LABEL_11;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v21 = *(result + 32);

    if (v21 == v2)
    {
      goto LABEL_16;
    }

LABEL_7:
    if (v15)
    {
LABEL_16:
      v30 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v31 = &v2[OBJC_IVAR____TtC11Diagnostics27ConsentNoticeViewController_cancelAction];
      v32 = *&v2[OBJC_IVAR____TtC11Diagnostics27ConsentNoticeViewController_cancelAction];
      *v31 = sub_10008D07C;
      v31[1] = v30;
      swift_retain_n();
      sub_10003C52C(v32);
      v33 = *v31;
      v34 = [v2 navigationItem];
      v27 = v34;
      if (v33)
      {
        v35 = [objc_allocWithZone(UIBarButtonItem) initWithBarButtonSystemItem:1 target:v2 action:"cancelButtonPressed:"];
        [v27 setLeftBarButtonItem:v35];

        v27 = v35;
      }

      else
      {
        [v34 setLeftBarButtonItem:0];
      }

LABEL_19:

      sub_10003E110(0, &qword_1001FD040);
      (*(v11 + 104))(v13, enum case for DispatchQoS.QoSClass.userInitiated(_:), v10);
      v36 = static OS_dispatch_queue.global(qos:)();
      (*(v11 + 8))(v13, v10);
      v37 = swift_allocObject();
      *(v37 + 16) = v2;
      aBlock[4] = sub_10008D054;
      aBlock[5] = v37;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100031FA8;
      aBlock[3] = &unk_1001C27A0;
      v38 = _Block_copy(aBlock);
      v39 = v2;
      static DispatchQoS.unspecified.getter();
      v46 = _swiftEmptyArrayStorage;
      sub_10008CE64(&qword_1001FDE60, &type metadata accessor for DispatchWorkItemFlags);
      sub_10003C49C(&unk_1001FD050);
      sub_10003E278(&qword_1001FDE70, &unk_1001FD050);
      v40 = v45;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v38);

      (*(v44 + 8))(v6, v40);
      (*(v42 + 8))(v9, v43);
    }

LABEL_11:
    v23 = &v2[OBJC_IVAR____TtC11Diagnostics27ConsentNoticeViewController_cancelAction];
    v24 = *&v2[OBJC_IVAR____TtC11Diagnostics27ConsentNoticeViewController_cancelAction];
    *v23 = 0;
    *(v23 + 1) = 0;
    sub_10003C52C(v24);
    v25 = *v23;
    v26 = [v2 navigationItem];
    v27 = v26;
    if (v25)
    {
      v28 = [objc_allocWithZone(UIBarButtonItem) initWithBarButtonSystemItem:1 target:v2 action:"cancelButtonPressed:"];
      [v27 setLeftBarButtonItem:v28];

      v27 = v28;
    }

    else
    {
      [v26 setLeftBarButtonItem:0];
    }

    goto LABEL_19;
  }

  __break(1u);
  return result;
}