Swift::Int sub_100003EE0()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

Swift::Int sub_100003F24()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

id variable initialization expression of SDB389BubbleMonitor.queue()
{
  v0 = CUMainQueue();

  return v0;
}

id variable initialization expression of SDB389BubbleMonitor.bubbleScanner()
{
  v0 = objc_allocWithZone(SFDeviceDiscovery);

  return [v0 init];
}

id variable initialization expression of SVSProxVideoView.movieView()
{
  type metadata accessor for MediaPlayerView();
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

BOOL sub_100004094(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_1000040C4@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_1000040F0@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t sub_1000041E8(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t sub_100004264(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1000042E8@<X0>(void *a1@<X8>)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = String._bridgeToObjectiveC()();

  *a1 = v2;
  return result;
}

uint64_t sub_100004330()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v0 = String.hashValue.getter();

  return v0;
}

uint64_t sub_100004370()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int sub_1000043C8()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v0 = Hasher._finalize()();

  return v0;
}

_DWORD *sub_100004468@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

uint64_t sub_10000448C(uint64_t a1)
{
  v2 = sub_1000056A8(&qword_1001B96F0, type metadata accessor for SPPairingSessionError);

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_1000044F8(uint64_t a1)
{
  v2 = sub_1000056A8(&qword_1001B96F0, type metadata accessor for SPPairingSessionError);

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_100004568(uint64_t a1)
{
  v2 = sub_1000056A8(&qword_1001BBAC0, type metadata accessor for SPPairingSessionError);

  return _BridgedStoredNSError._getEmbeddedNSError()(a1, v2);
}

void *sub_100004618@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_100004628@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_100005D94(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_10000466C()
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

uint64_t sub_100004704(uint64_t a1)
{
  v2 = sub_1000056A8(&qword_1001BBAC0, type metadata accessor for SPPairingSessionError);

  return _BridgedStoredNSError.errorCode.getter(a1, v2);
}

uint64_t sub_100004770(uint64_t a1)
{
  v2 = sub_1000056A8(&qword_1001BBAC0, type metadata accessor for SPPairingSessionError);

  return _BridgedStoredNSError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_1000047DC(void *a1, uint64_t a2)
{
  v4 = sub_1000056A8(&qword_1001BBAC0, type metadata accessor for SPPairingSessionError);
  v5 = a1;

  return _BridgedStoredNSError.init(_bridgedNSError:)(v5, a2, v4);
}

uint64_t sub_100004890(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000056A8(&qword_1001BBAC0, type metadata accessor for SPPairingSessionError);

  return _BridgedStoredNSError.hash(into:)(a1, a2, v4);
}

Swift::Int sub_10000490C()
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10000496C(uint64_t a1)
{
  v2 = sub_1000056A8(&qword_1001B9730, type metadata accessor for Key);
  v3 = sub_1000056A8(&qword_1001B9738, type metadata accessor for Key);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100004A2C@<X0>(void *a1@<X8>)
{
  v2 = String._bridgeToObjectiveC()();

  *a1 = v2;
  return result;
}

uint64_t sub_100004A74@<X0>(uint64_t *a1@<X8>)
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_100004AA0(uint64_t a1)
{
  v2 = sub_1000056A8(&qword_1001B95B8, type metadata accessor for URLResourceKey);
  v3 = sub_1000056A8(&unk_1001B95C0, type metadata accessor for URLResourceKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100004B5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000056A8(&qword_1001BBAC0, type metadata accessor for SPPairingSessionError);

  return static _BridgedStoredNSError.== infix(_:_:)(a1, a2, a3, v6);
}

unint64_t sub_100004BE0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100005DCC(&qword_1001B95D8);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100005EB8(v4, v13, &qword_1001B95E0);
      result = sub_100032C7C(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_100005E14(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100004D1C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100005DCC(&qword_1001B9620);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_100032CC0(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100004E20(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100005DCC(&qword_1001B9610);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100005EB8(v4, &v11, &qword_1001B9618);
      v5 = v11;
      result = sub_100032D38(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_100005E14(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100004F48(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100005DCC(&qword_1001BE230);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100005EB8(v4, &v13, &qword_1001B95D0);
      v5 = v13;
      v6 = v14;
      result = sub_100032CC0(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_100005E14(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100005078(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100005DCC(&qword_1001B9628);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_100032CC0(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10000518C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100005DCC(&qword_1001B95F8);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;
      v8 = *(i - 3);
      sub_100005E24(v5, v6, v7);
      result = sub_100032DCC(v8);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v8;
      v11 = (v3[7] + 24 * result);
      *v11 = v5;
      v11[1] = v6;
      v11[2] = v7;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1000052A4(uint64_t a1)
{
  v2 = sub_100005DCC(&qword_1001B9640);
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_100005DCC(&qword_1001B9648);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_100005EB8(v9, v5, &qword_1001B9640);
      result = sub_100032E98(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for UUID();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

__n128 sub_1000054A4(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1000054B0(uint64_t a1, int a2)
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

uint64_t sub_1000054D0(uint64_t result, int a2, int a3)
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

__n128 sub_100005560(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_10000556C(uint64_t a1, int a2)
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

uint64_t sub_10000558C(uint64_t result, int a2, int a3)
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

uint64_t sub_1000056A8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100005858(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100005DCC(&qword_1001B95E8);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_100032CC0(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100005954(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100005DCC(&qword_1001B9608);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 8);
      v6 = *i;
      result = sub_100032E10(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100005A48(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100005DCC(&qword_1001B9600);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 16);
      v6 = *(i - 1);
      v7 = *i;
      sub_100005E64(v6, *i);
      result = sub_100032E10(v5);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      v10 = (v3[7] + 16 * result);
      *v10 = v6;
      v10[1] = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100005B44(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100005DCC(&qword_1001B95F0);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_100032CC0(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100005C40(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100005DCC(&qword_1001B9630);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    for (i = a1 + 32; ; i += 40)
    {
      sub_100005EB8(i, &v11, &qword_1001B9638);
      v5 = v11;
      result = sub_100032F88(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 4 * result) = v5;
      result = sub_100005E14(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      if (!--v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_100005D5C(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = result;
  LODWORD(result) = 0;
  v3 = (v2 + 32);
  do
  {
    v5 = *v3++;
    v4 = v5;
    if ((v5 & ~result) == 0)
    {
      v4 = 0;
    }

    result = v4 | result;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t sub_100005D94(uint64_t a1)
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

uint64_t sub_100005DCC(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

_OWORD *sub_100005E14(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

id sub_100005E24(id result, unint64_t a2, void *a3)
{
  if (a3)
  {
    sub_100005E64(result, a2);

    return a3;
  }

  return result;
}

uint64_t sub_100005E64(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_100005EB8(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_100005DCC(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100005F5C(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *sub_100005FAC(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t sub_100006080(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000060A0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 4) = v3;
  return result;
}

unint64_t sub_100006370()
{
  result = qword_1001B96D8;
  if (!qword_1001B96D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001B96D8);
  }

  return result;
}

unint64_t sub_1000063C8()
{
  result = qword_1001B96E0;
  if (!qword_1001B96E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001B96E0);
  }

  return result;
}

unint64_t sub_1000065E4()
{
  result = qword_1001B9718;
  if (!qword_1001B9718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001B9718);
  }

  return result;
}

void sub_1000066DC(uint64_t a1, unint64_t *a2)
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

uint64_t sub_100006800(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

__n128 sub_10000681C(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_100006838(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 80))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_10000688C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 80) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for B389Characteristic(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEE)
  {
    goto LABEL_17;
  }

  if (a2 + 18 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 18) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 18;
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

      return (*a1 | (v4 << 8)) - 18;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 18;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x13;
  v8 = v6 - 19;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for B389Characteristic(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 18 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 18) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEE)
  {
    v4 = 0;
  }

  if (a2 > 0xED)
  {
    v5 = ((a2 - 238) >> 8) + 1;
    *result = a2 + 18;
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
    *result = a2 + 18;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_100006A6C()
{
  v0 = String._bridgeToObjectiveC()();
  v1 = [objc_opt_self() UUIDWithString:v0];

  qword_1001C3828 = v1;
}

void sub_100006ADC()
{
  v0 = objc_allocWithZone(NSUserDefaults);
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 initWithSuiteName:v1];

  sub_100005DCC(&qword_1001B9828);
  Optional.unwrap(_:file:line:)();
}

void sub_100006BC4()
{
  v0 = String._bridgeToObjectiveC()();
  v1 = [objc_opt_self() bundleProxyForIdentifier:v0];

  sub_100005DCC(&qword_1001B9830);
  Optional.unwrap(_:file:line:)();
}

uint64_t sub_100006E18(char a1)
{
  v10 = type metadata accessor for Mirror();
  v2 = *(v10 - 8);
  __chkstk_darwin();
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(&v12 + 1) = &type metadata for B389Characteristic;
  LOBYTE(v11) = a1;
  Mirror.init(reflecting:)();
  Mirror.children.getter();
  swift_getObjectType();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v5 = dispatch thunk of _AnyIndexBox._typeID.getter();
  swift_getObjectType();
  result = dispatch thunk of _AnyIndexBox._typeID.getter();
  if (v5 == result)
  {
    v7 = dispatch thunk of _AnyIndexBox._isEqual(to:)();
    swift_unknownObjectRelease();
    if (v7)
    {
      swift_unknownObjectRelease();
    }

    else
    {
      dispatch thunk of _AnyCollectionBox.subscript.getter();
      swift_unknownObjectRelease();

      sub_100005E14(&v12, &v13);
      if (swift_dynamicCast())
      {
        v8 = v11;
LABEL_7:
        (*(v2 + 8))(v4, v10);
        return v8;
      }
    }

    v8 = 7104878;
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t sub_10000702C()
{
  sub_100006CB4();
  v1 = v0;
  sub_100006CB4();
  if (v1 == v2)
  {
    v3 = 1;
  }

  else
  {
    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v3 & 1;
}

Swift::Int sub_1000070B4()
{
  Hasher.init(_seed:)();
  sub_100006CB4();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100007118()
{
  sub_100006CB4();
  String.hash(into:)();
}

Swift::Int sub_10000716C()
{
  Hasher.init(_seed:)();
  sub_100006CB4();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1000071CC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10000764C();
  *a1 = result;
  return result;
}

unint64_t sub_1000071FC@<X0>(void *a1@<X8>)
{
  result = sub_100006CB4();
  *a1 = 0xD000000000000024;
  a1[1] = v3;
  return result;
}

unint64_t sub_10000724C()
{
  result = qword_1001B9810;
  if (!qword_1001B9810)
  {
    sub_1000072B0(&qword_1001B9818);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001B9810);
  }

  return result;
}

uint64_t sub_1000072B0(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_1000072FC()
{
  result = qword_1001B9820;
  if (!qword_1001B9820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001B9820);
  }

  return result;
}

void *sub_100007350()
{
  specialized ContiguousArray.reserveCapacity(_:)();
  v0 = objc_opt_self();
  v1 = 0;
  do
  {
    ++v1;
    v2 = String._bridgeToObjectiveC()();

    v3 = [v0 UUIDWithString:v2];

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
  }

  while (v1 != 19);
  return _swiftEmptyArrayStorage;
}

uint64_t sub_10000764C()
{
  v0 = _findStringSwitchCaseWithCache(cases:string:cache:)();

  if (v0 >= 0x13)
  {
    return 19;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1000076A0@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v174 = a1;
  v175 = a2;
  v6 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    v7 = 0;
    if (v6 == 2)
    {
      v7 = *(a1 + 16);
    }
  }

  else if (v6)
  {
    v7 = a1;
  }

  else
  {
    v7 = 0;
  }

  if (__OFADD__(v7, 8))
  {
    __break(1u);
    goto LABEL_188;
  }

  if (v7 + 8 < v7)
  {
LABEL_188:
    __break(1u);
LABEL_189:
    __break(1u);
    goto LABEL_190;
  }

  sub_100005E64(a1, a2);
  v8 = Data._Representation.subscript.getter();
  v10 = v9;
  sub_10001AAD8(8, a1, a2, &v174);
  *(&v165 + 1) = &type metadata for Data;
  *&v166 = &protocol witness table for Data;
  *&v164 = v8;
  *(&v164 + 1) = v10;
  v11 = sub_10000836C(&v164, &type metadata for Data);
  v12 = *v11;
  v13 = v11[1];
  v14 = v13 >> 62;
  if ((v13 >> 62) <= 1)
  {
    if (!v14)
    {
      *&v170 = *v11;
      WORD4(v170) = v13;
      BYTE10(v170) = BYTE2(v13);
      BYTE11(v170) = BYTE3(v13);
      BYTE12(v170) = BYTE4(v13);
      BYTE13(v170) = BYTE5(v13);
      v15 = (&v170 + BYTE6(v13));
      v16 = &v170;
      goto LABEL_31;
    }

    goto LABEL_19;
  }

  if (v14 != 2)
  {
    *(&v170 + 6) = 0;
    *&v170 = 0;
    v16 = &v170;
    v15 = &v170;
    goto LABEL_31;
  }

  v17 = *(v12 + 16);
  v18 = *(v12 + 24);
  v19 = __DataStorage._bytes.getter();
  if (v19)
  {
    v20 = __DataStorage._offset.getter();
    v12 = v17 - v20;
    if (__OFSUB__(v17, v20))
    {
LABEL_205:
      __break(1u);
      goto LABEL_206;
    }

    v19 += v12;
  }

  v21 = __OFSUB__(v18, v17);
  v22 = v18 - v17;
  if (v21)
  {
    __break(1u);
LABEL_19:
    v23 = v12;
    v24 = v12 >> 32;
    v22 = v24 - v23;
    if (v24 < v23)
    {
LABEL_199:
      __break(1u);
      goto LABEL_200;
    }

    v19 = __DataStorage._bytes.getter();
    if (v19)
    {
      v25 = __DataStorage._offset.getter();
      if (__OFSUB__(v23, v25))
      {
LABEL_206:
        __break(1u);
        goto LABEL_207;
      }

      v19 += v23 - v25;
    }
  }

  v26 = __DataStorage._length.getter();
  if (v26 >= v22)
  {
    v27 = v22;
  }

  else
  {
    v27 = v26;
  }

  v28 = (v27 + v19);
  if (v19)
  {
    v15 = v28;
  }

  else
  {
    v15 = 0;
  }

  v16 = v19;
LABEL_31:
  sub_1000D9888(v16, v15, &v171);
  v163 = v171;
  sub_1000083B0(&v164);
  v29 = 0;
  v30 = v174;
  v31 = v175;
  v32 = v175 >> 62;
  if ((v175 >> 62) > 1)
  {
    if (v32 == 2)
    {
      v29 = *(v174 + 16);
    }
  }

  else if (v32)
  {
    v29 = v174;
  }

  if (__OFADD__(v29, 2))
  {
    goto LABEL_189;
  }

  if (v29 + 2 < v29)
  {
LABEL_190:
    __break(1u);
LABEL_191:
    __break(1u);
    goto LABEL_192;
  }

  v33 = Data._Representation.subscript.getter();
  v35 = v34;
  sub_10001AAD8(2, v30, v31, &v174);
  *(&v165 + 1) = &type metadata for Data;
  *&v166 = &protocol witness table for Data;
  *&v164 = v33;
  *(&v164 + 1) = v35;
  v36 = sub_10000836C(&v164, &type metadata for Data);
  v37 = *v36;
  v38 = v36[1];
  v39 = v38 >> 62;
  if ((v38 >> 62) <= 1)
  {
    if (!v39)
    {
      *&v170 = *v36;
      WORD4(v170) = v38;
      BYTE10(v170) = BYTE2(v38);
      BYTE11(v170) = BYTE3(v38);
      BYTE12(v170) = BYTE4(v38);
      BYTE13(v170) = BYTE5(v38);
      v40 = (&v170 + BYTE6(v38));
      v41 = &v170;
      goto LABEL_60;
    }

    goto LABEL_48;
  }

  if (v39 != 2)
  {
    *(&v170 + 6) = 0;
    *&v170 = 0;
    v41 = &v170;
    v40 = &v170;
    goto LABEL_60;
  }

  v42 = *(v37 + 16);
  v43 = *(v37 + 24);
  v44 = __DataStorage._bytes.getter();
  if (v44)
  {
    v45 = __DataStorage._offset.getter();
    v37 = v42 - v45;
    if (__OFSUB__(v42, v45))
    {
LABEL_207:
      __break(1u);
      goto LABEL_208;
    }

    v44 += v37;
  }

  v21 = __OFSUB__(v43, v42);
  v46 = v43 - v42;
  if (v21)
  {
    __break(1u);
LABEL_48:
    v47 = v37;
    v48 = v37 >> 32;
    v46 = v48 - v47;
    if (v48 < v47)
    {
LABEL_200:
      __break(1u);
      goto LABEL_201;
    }

    v44 = __DataStorage._bytes.getter();
    if (v44)
    {
      v49 = __DataStorage._offset.getter();
      if (__OFSUB__(v47, v49))
      {
LABEL_208:
        __break(1u);
        goto LABEL_209;
      }

      v44 += v47 - v49;
    }
  }

  v50 = __DataStorage._length.getter();
  if (v50 >= v46)
  {
    v51 = v46;
  }

  else
  {
    v51 = v50;
  }

  v52 = (v51 + v44);
  if (v44)
  {
    v40 = v52;
  }

  else
  {
    v40 = 0;
  }

  v41 = v44;
LABEL_60:
  sub_1000D9888(v41, v40, &v171);
  v162 = v171;
  sub_1000083B0(&v164);
  v53 = 0;
  v54 = v174;
  v55 = v175;
  v56 = v175 >> 62;
  if ((v175 >> 62) > 1)
  {
    if (v56 == 2)
    {
      v53 = *(v174 + 16);
    }
  }

  else if (v56)
  {
    v53 = v174;
  }

  if (__OFADD__(v53, 12))
  {
    goto LABEL_191;
  }

  if (v53 + 12 < v53)
  {
LABEL_192:
    __break(1u);
LABEL_193:
    __break(1u);
    goto LABEL_194;
  }

  v57 = Data._Representation.subscript.getter();
  v59 = v58;
  sub_10001AAD8(12, v54, v55, &v174);
  *(&v165 + 1) = &type metadata for Data;
  *&v166 = &protocol witness table for Data;
  *&v164 = v57;
  *(&v164 + 1) = v59;
  v60 = sub_10000836C(&v164, &type metadata for Data);
  v61 = *v60;
  v62 = v60[1];
  v63 = v62 >> 62;
  if ((v62 >> 62) <= 1)
  {
    if (!v63)
    {
      *&v170 = *v60;
      WORD4(v170) = v62;
      BYTE10(v170) = BYTE2(v62);
      BYTE11(v170) = BYTE3(v62);
      BYTE12(v170) = BYTE4(v62);
      BYTE13(v170) = BYTE5(v62);
      v64 = (&v170 + BYTE6(v62));
      v65 = &v170;
      goto LABEL_89;
    }

    goto LABEL_77;
  }

  if (v63 != 2)
  {
    *(&v170 + 6) = 0;
    *&v170 = 0;
    v65 = &v170;
    v64 = &v170;
    goto LABEL_89;
  }

  v66 = *(v61 + 16);
  v67 = *(v61 + 24);
  v68 = __DataStorage._bytes.getter();
  if (v68)
  {
    v69 = __DataStorage._offset.getter();
    v61 = v66 - v69;
    if (__OFSUB__(v66, v69))
    {
LABEL_209:
      __break(1u);
      goto LABEL_210;
    }

    v68 += v61;
  }

  v21 = __OFSUB__(v67, v66);
  v70 = v67 - v66;
  if (v21)
  {
    __break(1u);
LABEL_77:
    v71 = v61;
    v72 = v61 >> 32;
    v70 = v72 - v71;
    if (v72 < v71)
    {
LABEL_201:
      __break(1u);
      goto LABEL_202;
    }

    v68 = __DataStorage._bytes.getter();
    if (v68)
    {
      v73 = __DataStorage._offset.getter();
      if (__OFSUB__(v71, v73))
      {
LABEL_210:
        __break(1u);
        goto LABEL_211;
      }

      v68 += v71 - v73;
    }
  }

  v74 = __DataStorage._length.getter();
  if (v74 >= v70)
  {
    v75 = v70;
  }

  else
  {
    v75 = v74;
  }

  v76 = (v75 + v68);
  if (v68)
  {
    v64 = v76;
  }

  else
  {
    v64 = 0;
  }

  v65 = v68;
LABEL_89:
  sub_1000D9888(v65, v64, &v171);
  v161 = v171;
  sub_1000083B0(&v164);
  v77 = 0;
  v78 = v174;
  v79 = v175;
  v80 = v175 >> 62;
  if ((v175 >> 62) > 1)
  {
    if (v80 == 2)
    {
      v77 = *(v174 + 16);
    }
  }

  else if (v80)
  {
    v77 = v174;
  }

  if (__OFADD__(v77, 32))
  {
    goto LABEL_193;
  }

  if (v77 + 32 < v77)
  {
LABEL_194:
    __break(1u);
LABEL_195:
    __break(1u);
    goto LABEL_196;
  }

  v81 = Data._Representation.subscript.getter();
  v83 = v82;
  sub_10001AAD8(32, v78, v79, &v174);
  *(&v165 + 1) = &type metadata for Data;
  *&v166 = &protocol witness table for Data;
  *&v164 = v81;
  *(&v164 + 1) = v83;
  v84 = sub_10000836C(&v164, &type metadata for Data);
  v85 = *v84;
  v86 = v84[1];
  v87 = v86 >> 62;
  if ((v86 >> 62) <= 1)
  {
    if (!v87)
    {
      *&v170 = *v84;
      WORD4(v170) = v86;
      BYTE10(v170) = BYTE2(v86);
      BYTE11(v170) = BYTE3(v86);
      BYTE12(v170) = BYTE4(v86);
      BYTE13(v170) = BYTE5(v86);
      v88 = (&v170 + BYTE6(v86));
      v89 = &v170;
      goto LABEL_118;
    }

    goto LABEL_106;
  }

  if (v87 != 2)
  {
    *(&v170 + 6) = 0;
    *&v170 = 0;
    v89 = &v170;
    v88 = &v170;
    goto LABEL_118;
  }

  v90 = *(v85 + 16);
  v91 = *(v85 + 24);
  v92 = __DataStorage._bytes.getter();
  if (v92)
  {
    v93 = __DataStorage._offset.getter();
    v85 = v90 - v93;
    if (__OFSUB__(v90, v93))
    {
LABEL_211:
      __break(1u);
      goto LABEL_212;
    }

    v92 += v85;
  }

  v21 = __OFSUB__(v91, v90);
  v94 = v91 - v90;
  if (v21)
  {
    __break(1u);
LABEL_106:
    v95 = v85;
    v96 = v85 >> 32;
    v94 = v96 - v95;
    if (v96 < v95)
    {
LABEL_202:
      __break(1u);
      goto LABEL_203;
    }

    v92 = __DataStorage._bytes.getter();
    if (v92)
    {
      v97 = __DataStorage._offset.getter();
      if (__OFSUB__(v95, v97))
      {
LABEL_212:
        __break(1u);
        goto LABEL_213;
      }

      v92 += v95 - v97;
    }
  }

  v98 = __DataStorage._length.getter();
  if (v98 >= v94)
  {
    v99 = v94;
  }

  else
  {
    v99 = v98;
  }

  v100 = (v99 + v92);
  if (v92)
  {
    v88 = v100;
  }

  else
  {
    v88 = 0;
  }

  v89 = v92;
LABEL_118:
  sub_1000D9888(v89, v88, &v171);
  v160 = v171;
  sub_1000083B0(&v164);
  v101 = 0;
  v102 = v174;
  v103 = v175;
  v104 = v175 >> 62;
  if ((v175 >> 62) > 1)
  {
    if (v104 == 2)
    {
      v101 = *(v174 + 16);
    }
  }

  else if (v104)
  {
    v101 = v174;
  }

  if (__OFADD__(v101, 32))
  {
    goto LABEL_195;
  }

  if (v101 + 32 < v101)
  {
LABEL_196:
    __break(1u);
LABEL_197:
    __break(1u);
    goto LABEL_198;
  }

  v105 = Data._Representation.subscript.getter();
  v107 = v106;
  sub_10001AAD8(32, v102, v103, &v174);
  *(&v165 + 1) = &type metadata for Data;
  *&v166 = &protocol witness table for Data;
  *&v164 = v105;
  *(&v164 + 1) = v107;
  v108 = sub_10000836C(&v164, &type metadata for Data);
  v109 = *v108;
  v110 = v108[1];
  v111 = v110 >> 62;
  v159 = a3;
  if ((v110 >> 62) <= 1)
  {
    if (!v111)
    {
      *&v170 = *v108;
      WORD4(v170) = v110;
      BYTE10(v170) = BYTE2(v110);
      BYTE11(v170) = BYTE3(v110);
      BYTE12(v170) = BYTE4(v110);
      BYTE13(v170) = BYTE5(v110);
      v112 = (&v170 + BYTE6(v110));
      v113 = &v170;
      goto LABEL_147;
    }

    goto LABEL_135;
  }

  if (v111 != 2)
  {
    *(&v170 + 6) = 0;
    *&v170 = 0;
    v113 = &v170;
    v112 = &v170;
    goto LABEL_147;
  }

  v114 = *(v109 + 16);
  v115 = *(v109 + 24);
  v116 = __DataStorage._bytes.getter();
  if (v116)
  {
    v117 = __DataStorage._offset.getter();
    v109 = v114 - v117;
    if (__OFSUB__(v114, v117))
    {
LABEL_213:
      __break(1u);
      goto LABEL_214;
    }

    v116 += v109;
  }

  v21 = __OFSUB__(v115, v114);
  v118 = v115 - v114;
  if (v21)
  {
    __break(1u);
LABEL_135:
    v119 = v109;
    v120 = v109 >> 32;
    v118 = v120 - v119;
    if (v120 < v119)
    {
LABEL_203:
      __break(1u);
LABEL_204:
      __break(1u);
      goto LABEL_205;
    }

    v116 = __DataStorage._bytes.getter();
    if (v116)
    {
      v121 = __DataStorage._offset.getter();
      if (__OFSUB__(v119, v121))
      {
LABEL_214:
        __break(1u);
        goto LABEL_215;
      }

      v116 += v119 - v121;
    }
  }

  v122 = __DataStorage._length.getter();
  if (v122 >= v118)
  {
    v123 = v118;
  }

  else
  {
    v123 = v122;
  }

  v124 = (v123 + v116);
  if (v116)
  {
    v112 = v124;
  }

  else
  {
    v112 = 0;
  }

  v113 = v116;
LABEL_147:
  sub_1000D9888(v113, v112, &v171);
  v125 = *(&v171 + 1);
  v126 = v171;
  sub_1000083B0(&v164);
  v127 = 0;
  v128 = v174;
  v129 = v175;
  v130 = v175 >> 62;
  if ((v175 >> 62) > 1)
  {
    if (v130 == 2)
    {
      v127 = *(v174 + 16);
    }
  }

  else if (v130)
  {
    v127 = v174;
  }

  if (__OFADD__(v127, 10))
  {
    goto LABEL_197;
  }

  if (v127 + 10 < v127)
  {
LABEL_198:
    __break(1u);
    goto LABEL_199;
  }

  v131 = Data._Representation.subscript.getter();
  v133 = v132;
  sub_10001AAD8(10, v128, v129, &v174);
  v172 = &type metadata for Data;
  v173 = &protocol witness table for Data;
  *&v171 = v131;
  *(&v171 + 1) = v133;
  v134 = sub_10000836C(&v171, &type metadata for Data);
  v135 = *v134;
  v136 = v134[1];
  v137 = v136 >> 62;
  if ((v136 >> 62) > 1)
  {
    if (v137 != 2)
    {
      *(&v164 + 6) = 0;
      *&v164 = 0;
      v139 = &v164;
      v138 = &v164;
      goto LABEL_176;
    }

    v140 = *(v135 + 16);
    v141 = *(v135 + 24);
    v142 = __DataStorage._bytes.getter();
    if (v142)
    {
      v143 = __DataStorage._offset.getter();
      v135 = v140 - v143;
      if (__OFSUB__(v140, v143))
      {
LABEL_215:
        __break(1u);
        goto LABEL_216;
      }

      v142 += v135;
    }

    v21 = __OFSUB__(v141, v140);
    v144 = v141 - v140;
    if (!v21)
    {
      goto LABEL_168;
    }

    __break(1u);
  }

  else if (!v137)
  {
    *&v164 = *v134;
    WORD4(v164) = v136;
    BYTE10(v164) = BYTE2(v136);
    BYTE11(v164) = BYTE3(v136);
    BYTE12(v164) = BYTE4(v136);
    BYTE13(v164) = BYTE5(v136);
    v138 = (&v164 + BYTE6(v136));
    v139 = &v164;
    goto LABEL_176;
  }

  v145 = v135;
  v146 = v135 >> 32;
  v144 = v146 - v145;
  if (v146 < v145)
  {
    goto LABEL_204;
  }

  v142 = __DataStorage._bytes.getter();
  if (v142)
  {
    v147 = __DataStorage._offset.getter();
    if (!__OFSUB__(v145, v147))
    {
      v142 += v145 - v147;
      goto LABEL_168;
    }

LABEL_216:
    __break(1u);
  }

LABEL_168:
  v148 = __DataStorage._length.getter();
  if (v148 >= v144)
  {
    v149 = v144;
  }

  else
  {
    v149 = v148;
  }

  v150 = (v149 + v142);
  if (v142)
  {
    v138 = v150;
  }

  else
  {
    v138 = 0;
  }

  v139 = v142;
LABEL_176:
  sub_1000D9888(v139, v138, &v170);
  sub_1000083FC(a1, a2);
  sub_1000083FC(v170, *(&v170 + 1));
  sub_1000083B0(&v171);
  v151 = v175 >> 62;
  if ((v175 >> 62) > 1)
  {
    if (v151 != 2)
    {
      result = sub_1000083FC(v174, v175);
      goto LABEL_185;
    }

    v152 = *(v174 + 16);
    v153 = *(v174 + 24);
  }

  else if (v151)
  {
    v152 = v174;
    v153 = v174 >> 32;
  }

  else
  {
    v152 = 0;
    v153 = BYTE6(v175);
  }

  result = sub_1000083FC(v174, v175);
  if (v152 == v153)
  {
LABEL_185:
    v156 = v162;
    v155 = v163;
    v158 = v160;
    v157 = v161;
    goto LABEL_186;
  }

  v164 = v163;
  v165 = v162;
  v166 = v161;
  v167 = v160;
  v168 = v126;
  v169 = v125;
  result = sub_100008450(&v164);
  v126 = 0;
  v125 = 0;
  v155 = xmmword_10016C900;
  v156 = 0uLL;
  v157 = 0uLL;
  v158 = 0uLL;
LABEL_186:
  *v159 = v155;
  *(v159 + 16) = v156;
  *(v159 + 32) = v157;
  *(v159 + 48) = v158;
  *(v159 + 64) = v126;
  *(v159 + 72) = v125;
  return result;
}

void *sub_10000836C(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_1000083B0(uint64_t a1)
{
  v1 = *(*(a1 + 24) - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_1000083FC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

__n128 sub_100008480(uint64_t a1, __int128 *a2)
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

uint64_t sub_1000084AC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
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

uint64_t sub_1000084F4(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_100008570(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_100005DCC(&unk_1001BBAA0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + a3[5];

    return v9(v10, a2, v8);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[8] + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = sub_100005DCC(&qword_1001BD600);
    v14 = *(*(v13 - 8) + 48);
    v15 = a1 + a3[17];

    return v14(v15, a2, v13);
  }
}

uint64_t sub_1000086C8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_100005DCC(&unk_1001BBAA0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + a4[5];

    return v11(v12, a2, a2, v10);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[8] + 8) = (a2 - 1);
  }

  else
  {
    v13 = sub_100005DCC(&qword_1001BD600);
    v14 = *(*(v13 - 8) + 56);
    v15 = a1 + a4[17];

    return v14(v15, a2, a2, v13);
  }

  return result;
}

uint64_t type metadata accessor for PasswordSharingModel()
{
  result = qword_1001B9890;
  if (!qword_1001B9890)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100008858()
{
  sub_100008998();
  if (v0 <= 0x3F)
  {
    sub_1000089E8(319, &qword_1001BB130, &type metadata accessor for UUID);
    if (v1 <= 0x3F)
    {
      type metadata accessor for SVSUserActionType(319);
      if (v2 <= 0x3F)
      {
        sub_1000089E8(319, &unk_1001B98A0, &type metadata accessor for Date);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_100008998()
{
  if (!qword_1001BA590)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1001BA590);
    }
  }
}

void sub_1000089E8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_100008A3C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEE00726569666974;
  v3 = 0x6E65644965736163;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x69666E6F4363666ELL;
    }

    else
    {
      v5 = 0x69746C754D7369;
    }

    if (v4 == 2)
    {
      v6 = 0xE900000000000067;
    }

    else
    {
      v6 = 0xE700000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x444955557462;
    }

    else
    {
      v5 = 0x6E65644965736163;
    }

    if (v4)
    {
      v6 = 0xE600000000000000;
    }

    else
    {
      v6 = 0xEE00726569666974;
    }
  }

  v7 = 0x69666E6F4363666ELL;
  v8 = 0xE900000000000067;
  if (a2 != 2)
  {
    v7 = 0x69746C754D7369;
    v8 = 0xE700000000000000;
  }

  if (a2)
  {
    v3 = 0x444955557462;
    v2 = 0xE600000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v8;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

uint64_t sub_100008B88(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEA00000000006465;
  v3 = 0x7472617453746F6ELL;
  v4 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 0x6572676F72506E69;
    }

    else
    {
      v5 = 0x7472617453746F6ELL;
    }

    if (v4)
    {
      v6 = 0xEA00000000007373;
    }

    else
    {
      v6 = 0xEA00000000006465;
    }
  }

  else if (a1 == 2)
  {
    v5 = 0x6574656C706D6F63;
    v6 = 0xE900000000000064;
  }

  else
  {
    if (a1 == 3)
    {
      v5 = 0x64656C696166;
    }

    else
    {
      v5 = 1885956979;
    }

    if (v4 == 3)
    {
      v6 = 0xE600000000000000;
    }

    else
    {
      v6 = 0xE400000000000000;
    }
  }

  v7 = 0x6574656C706D6F63;
  v8 = 0xE900000000000064;
  v9 = 0xE600000000000000;
  v10 = 0x64656C696166;
  if (a2 != 3)
  {
    v10 = 1885956979;
    v9 = 0xE400000000000000;
  }

  if (a2 != 2)
  {
    v7 = v10;
    v8 = v9;
  }

  if (a2)
  {
    v3 = 0x6572676F72506E69;
    v2 = 0xEA00000000007373;
  }

  if (a2 <= 1u)
  {
    v11 = v3;
  }

  else
  {
    v11 = v7;
  }

  if (a2 <= 1u)
  {
    v12 = v2;
  }

  else
  {
    v12 = v8;
  }

  if (v5 == v11 && v6 == v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v13 & 1;
}

uint64_t sub_100008CFC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE300000000000000;
  v4 = 0x614E656369766544;
  v5 = 0xEA0000000000656DLL;
  if (a1 != 6)
  {
    v4 = 0x74786554676E6F4CLL;
    v5 = 0xE800000000000000;
  }

  v6 = 0xE700000000000000;
  v7 = 0x746F7073746F48;
  if (a1 != 4)
  {
    v7 = 0x46746F7073746F48;
    v6 = 0xEE006572756C6961;
  }

  if (a1 <= 5u)
  {
    v5 = v6;
  }

  else
  {
    v7 = v4;
  }

  v8 = 0xEB00000000746E65;
  v9 = 0x6572756C696146;
  if (a1 == 2)
  {
    v9 = 0x746E6F4368636952;
  }

  else
  {
    v8 = 0xE700000000000000;
  }

  v10 = 0x6166654469666957;
  if (a1)
  {
    v3 = 0xEB00000000746C75;
  }

  else
  {
    v10 = 6710863;
  }

  if (a1 > 1u)
  {
    v10 = v9;
    v3 = v8;
  }

  if (a1 <= 3u)
  {
    v11 = v10;
  }

  else
  {
    v11 = v7;
  }

  if (v2 <= 3)
  {
    v12 = v3;
  }

  else
  {
    v12 = v5;
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v13 = 0xEA0000000000656DLL;
        if (v11 != 0x614E656369766544)
        {
          goto LABEL_46;
        }
      }

      else
      {
        v13 = 0xE800000000000000;
        if (v11 != 0x74786554676E6F4CLL)
        {
LABEL_46:
          v14 = _stringCompareWithSmolCheck(_:_:expecting:)();
          goto LABEL_47;
        }
      }
    }

    else if (a2 == 4)
    {
      v13 = 0xE700000000000000;
      if (v11 != 0x746F7073746F48)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v13 = 0xEE006572756C6961;
      if (v11 != 0x46746F7073746F48)
      {
        goto LABEL_46;
      }
    }
  }

  else if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v13 = 0xEB00000000746E65;
      if (v11 != 0x746E6F4368636952)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v13 = 0xE700000000000000;
      if (v11 != 0x6572756C696146)
      {
        goto LABEL_46;
      }
    }
  }

  else if (a2)
  {
    v13 = 0xEB00000000746C75;
    if (v11 != 0x6166654469666957)
    {
      goto LABEL_46;
    }
  }

  else
  {
    v13 = 0xE300000000000000;
    if (v11 != 6710863)
    {
      goto LABEL_46;
    }
  }

  if (v12 != v13)
  {
    goto LABEL_46;
  }

  v14 = 1;
LABEL_47:

  return v14 & 1;
}

uint64_t sub_100008FA8()
{
  String.hash(into:)();
}

Swift::Int sub_1000090F4()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_10000927C@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10000C260(*a1);
  *a2 = result;
  return result;
}

void sub_1000092AC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE300000000000000;
  v4 = 6710863;
  v5 = 0xEA0000000000656DLL;
  v6 = 0x614E656369766544;
  if (v2 != 6)
  {
    v6 = 0x74786554676E6F4CLL;
    v5 = 0xE800000000000000;
  }

  v7 = 0xE700000000000000;
  v8 = 0x746F7073746F48;
  if (v2 != 4)
  {
    v8 = 0x46746F7073746F48;
    v7 = 0xEE006572756C6961;
  }

  if (*v1 <= 5u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xEB00000000746E65;
  v10 = 0x746E6F4368636952;
  if (v2 != 2)
  {
    v10 = 0x6572756C696146;
    v9 = 0xE700000000000000;
  }

  if (*v1)
  {
    v4 = 0x6166654469666957;
    v3 = 0xEB00000000746C75;
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

uint64_t sub_1000093C8()
{
  if ((*(v0 + *(type metadata accessor for PasswordSharingModel() + 36)) & 1) == 0)
  {
    if (sub_10000967C() == 4)
    {
      v1 = 1;
LABEL_13:

      return v1 & 1;
    }

    v2 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v2 & 1) == 0)
    {
      v3 = sub_10000967C();
      if (v3 <= 3 || v3 > 5 || v3 == 4)
      {
        v1 = _stringCompareWithSmolCheck(_:_:expecting:)();
      }

      else
      {
        v1 = 1;
      }

      goto LABEL_13;
    }
  }

  v1 = 1;
  return v1 & 1;
}

uint64_t sub_10000967C()
{
  v1 = sub_100005DCC(&unk_1001BBAA0);
  __chkstk_darwin(v1 - 8);
  v3 = &v15 - v2;
  v4 = type metadata accessor for PasswordSharingModel();
  sub_10000BE6C(v0 + *(v4 + 20), v3);
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  if ((*(v6 + 48))(v3, 1, v5) == 1)
  {
    sub_10000BEDC(v3);
    return 0;
  }

  v8 = UUID.uuidString.getter();
  v10 = v9;
  (*(v6 + 8))(v3, v5);
  v11 = v8 == 0xD000000000000024 && 0x8000000100144C30 == v10;
  if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else
  {
    v12 = v8 == 0xD000000000000024 && 0x8000000100144C60 == v10;
    if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 2;
    }

    else
    {
      v13 = v8 == 0xD000000000000024 && 0x8000000100144C90 == v10;
      if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 3;
      }

      else if (v8 == 0xD000000000000024 && 0x8000000100144CC0 == v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 4;
      }

      else if (v8 == 0xD000000000000024 && 0x8000000100144CF0 == v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 5;
      }

      else if (v8 == 0xD000000000000024 && 0x8000000100144D20 == v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 6;
      }

      else if (v8 == 0xD000000000000024 && 0x8000000100144D50 == v10)
      {

        return 7;
      }

      else
      {
        v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v14 & 1) == 0)
        {
          return 0;
        }

        return 7;
      }
    }
  }
}

uint64_t sub_1000099C4@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = sub_100005DCC(&unk_1001BBAA0);
  __chkstk_darwin(v4 - 8);
  v6 = &v56 - v5;
  v7 = type metadata accessor for PasswordSharingModel();
  v8 = v7[5];
  v9 = type metadata accessor for UUID();
  (*(*(v9 - 8) + 56))(&a2[v8], 1, 1, v9);
  v10 = &a2[v7[6]];
  *v10 = 0;
  *(v10 + 1) = 0;
  a2[v7[7]] = 0;
  *&a2[v7[11]] = 0x3FF0000000000000;
  *&a2[v7[16]] = 8;
  v11 = v7[17];
  v12 = type metadata accessor for Date();
  v13 = *(*(v12 - 8) + 56);
  v13(&a2[v11], 1, 1, v12);
  v13(&a2[v7[18]], 1, 1, v12);
  v13(&a2[v7[19]], 1, 1, v12);
  v13(&a2[v7[20]], 1, 1, v12);
  v14 = v7[21];
  a2[v14] = SFIsGreenTeaDevice();
  v57 = 6580579;
  v58 = 0xE300000000000000;
  AnyHashable.init<A>(_:)();
  if (!*(a1 + 16) || (v15 = sub_100032C7C(v59), (v16 & 1) == 0))
  {
    sub_10000BF98(v59);
    goto LABEL_6;
  }

  sub_10000BFEC(*(a1 + 56) + 32 * v15, v60);
  sub_10000BF98(v59);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_6:
    v17 = 0;
    v18 = 0xE000000000000000;
    goto LABEL_7;
  }

  v17 = v57;
  v18 = v58;
LABEL_7:
  *a2 = v17;
  *(a2 + 1) = v18;
  v57 = 0xD000000000000010;
  v58 = 0x8000000100145050;
  AnyHashable.init<A>(_:)();
  if (*(a1 + 16) && (v19 = sub_100032C7C(v59), (v20 & 1) != 0))
  {
    sub_10000BFEC(*(a1 + 56) + 32 * v19, v60);
    sub_10000BF98(v59);
    if (swift_dynamicCast())
    {
      UUID.init(uuidString:)();

      sub_10000C048(v6, &a2[v8]);
    }
  }

  else
  {
    sub_10000BF98(v59);
  }

  v57 = 30574;
  v58 = 0xE200000000000000;
  AnyHashable.init<A>(_:)();
  if (!*(a1 + 16) || (v21 = sub_100032C7C(v59), (v22 & 1) == 0))
  {
    sub_10000BF98(v59);
    goto LABEL_17;
  }

  sub_10000BFEC(*(a1 + 56) + 32 * v21, v60);
  sub_10000BF98(v59);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_17:
    v23 = 0;
    v24 = 0xE000000000000000;
    goto LABEL_18;
  }

  v23 = v57;
  v24 = v58;
LABEL_18:
  v25 = &a2[v7[8]];
  *v25 = v23;
  v25[1] = v24;
  v60[0] = 29544;
  v60[1] = 0xE200000000000000;
  AnyHashable.init<A>(_:)();
  if (!*(a1 + 16) || (v26 = sub_100032C7C(v59), (v27 & 1) == 0))
  {
    sub_10000BF98(v59);
    goto LABEL_23;
  }

  sub_10000BFEC(*(a1 + 56) + 32 * v26, v60);
  sub_10000BF98(v59);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_23:
    v28 = 0;
    goto LABEL_24;
  }

  v28 = v57;
LABEL_24:
  a2[v7[9]] = v28;
  strcpy(v60, "pwsAutoGrant");
  BYTE5(v60[1]) = 0;
  HIWORD(v60[1]) = -5120;
  AnyHashable.init<A>(_:)();
  if (!*(a1 + 16) || (v29 = sub_100032C7C(v59), (v30 & 1) == 0))
  {
    sub_10000BF98(v59);
    goto LABEL_29;
  }

  sub_10000BFEC(*(a1 + 56) + 32 * v29, v60);
  sub_10000BF98(v59);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_29:
    v31 = 0;
    goto LABEL_30;
  }

  v31 = v57;
LABEL_30:
  a2[v7[10]] = v31;
  v60[0] = 26725;
  v60[1] = 0xE200000000000000;
  AnyHashable.init<A>(_:)();
  if (*(a1 + 16) && (v32 = sub_100032C7C(v59), (v33 & 1) != 0))
  {
    sub_10000BFEC(*(a1 + 56) + 32 * v32, v60);
    sub_10000BF98(v59);
    v34 = swift_dynamicCast();
    v35 = v57;
    v36 = v58;
    if (!v34)
    {
      v35 = 0;
      v36 = 0;
    }
  }

  else
  {
    sub_10000BF98(v59);
    v35 = 0;
    v36 = 0;
  }

  v37 = &a2[v7[12]];
  *v37 = v35;
  v37[1] = v36;
  v60[0] = 26736;
  v60[1] = 0xE200000000000000;
  AnyHashable.init<A>(_:)();
  if (*(a1 + 16) && (v38 = sub_100032C7C(v59), (v39 & 1) != 0))
  {
    sub_10000BFEC(*(a1 + 56) + 32 * v38, v60);
    sub_10000BF98(v59);
    v40 = swift_dynamicCast();
    v41 = v57;
    v42 = v58;
    if (!v40)
    {
      v41 = 0;
      v42 = 0;
    }
  }

  else
  {
    sub_10000BF98(v59);
    v41 = 0;
    v42 = 0;
  }

  v43 = &a2[v7[13]];
  *v43 = v41;
  v43[1] = v42;
  v60[0] = 28260;
  v60[1] = 0xE200000000000000;
  AnyHashable.init<A>(_:)();
  if (*(a1 + 16) && (v44 = sub_100032C7C(v59), (v45 & 1) != 0))
  {
    sub_10000BFEC(*(a1 + 56) + 32 * v44, v60);
    sub_10000BF98(v59);
    v46 = swift_dynamicCast();
    v47 = v57;
    v48 = v58;
    if (!v46)
    {
      v47 = 0;
      v48 = 0;
    }
  }

  else
  {
    sub_10000BF98(v59);
    v47 = 0;
    v48 = 0;
  }

  v49 = &a2[v7[14]];
  *v49 = v47;
  v49[1] = v48;
  v60[0] = 7041904;
  v60[1] = 0xE300000000000000;
  AnyHashable.init<A>(_:)();
  if (*(a1 + 16) && (v50 = sub_100032C7C(v59), (v51 & 1) != 0))
  {
    sub_10000BFEC(*(a1 + 56) + 32 * v50, v60);
    sub_10000BF98(v59);

    result = swift_dynamicCast();
    v53 = v57;
    v54 = v58;
    if (!result)
    {
      v53 = 0;
      v54 = 0;
    }
  }

  else
  {

    result = sub_10000BF98(v59);
    v53 = 0;
    v54 = 0;
  }

  v55 = &a2[v7[15]];
  *v55 = v53;
  v55[1] = v54;
  return result;
}

void sub_10000A17C(uint64_t *a1@<X8>)
{
  v37 = [objc_opt_self() systemRedColor];
  v3 = objc_opt_self();
  v4 = [v3 mainBundle];
  v38._object = 0xE000000000000000;
  v5._countAndFlagsBits = 0x4F545455425F4B4FLL;
  v5._object = 0xEF454C5449545F4ELL;
  v6.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v6.value._object = 0xEB00000000656C62;
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  v38._countAndFlagsBits = 0;
  v8 = NSLocalizedString(_:tableName:bundle:value:comment:)(v5, v6, v4, v7, v38);

  v9 = sub_1000093C8();
  v10 = [v3 mainBundle];
  if (v9)
  {
    v39._object = 0xE000000000000000;
    v11._countAndFlagsBits = 0xD00000000000001CLL;
    v11._object = 0x8000000100144FB0;
    v12.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v12.value._object = 0xEB00000000656C62;
    v13._countAndFlagsBits = 0;
    v13._object = 0xE000000000000000;
    v39._countAndFlagsBits = 0;
    v14 = NSLocalizedString(_:tableName:bundle:value:comment:)(v11, v12, v10, v13, v39);
    countAndFlagsBits = v14._countAndFlagsBits;
    object = v14._object;

    v17 = [v3 mainBundle];
    v40._object = 0xE000000000000000;
    v18._countAndFlagsBits = 0xD00000000000001DLL;
    v18._object = 0x8000000100144FD0;
    v19.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v19.value._object = 0xEB00000000656C62;
    v20._countAndFlagsBits = 0;
    v20._object = 0xE000000000000000;
    v40._countAndFlagsBits = 0;
    v21 = NSLocalizedString(_:tableName:bundle:value:comment:)(v18, v19, v17, v20, v40);
    v22 = v21._countAndFlagsBits;
    v23 = v21._object;
  }

  else
  {
    v41._object = 0xE000000000000000;
    v24._countAndFlagsBits = 0xD000000000000019;
    v24._object = 0x8000000100144F70;
    v25.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v25.value._object = 0xEB00000000656C62;
    v26._countAndFlagsBits = 0;
    v26._object = 0xE000000000000000;
    v41._countAndFlagsBits = 0;
    v27 = NSLocalizedString(_:tableName:bundle:value:comment:)(v24, v25, v10, v26, v41);
    countAndFlagsBits = v27._countAndFlagsBits;
    object = v27._object;

    v28 = type metadata accessor for PasswordSharingModel();
    v29 = *(v1 + *(v28 + 84)) == 0;
    if (*(v1 + *(v28 + 84)))
    {
      v30 = 0x4E414C575FLL;
    }

    else
    {
      v30 = 0;
    }

    if (v29)
    {
      v31 = 0xE000000000000000;
    }

    else
    {
      v31 = 0xE500000000000000;
    }

    v32 = v31;
    String.append(_:)(*&v30);

    v17 = [v3 mainBundle];
    v42._object = 0xE000000000000000;
    v33._countAndFlagsBits = 0xD00000000000001ALL;
    v33._object = 0x8000000100144F90;
    v34.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v34.value._object = 0xEB00000000656C62;
    v35._countAndFlagsBits = 0;
    v35._object = 0xE000000000000000;
    v42._countAndFlagsBits = 0;
    v36 = NSLocalizedString(_:tableName:bundle:value:comment:)(v33, v34, v17, v35, v42);
    v22 = v36._countAndFlagsBits;
    v23 = v36._object;
  }

  *a1 = countAndFlagsBits;
  a1[1] = object;
  a1[2] = v22;
  a1[3] = v23;
  a1[4] = 0xD000000000000016;
  a1[5] = 0x8000000100144F50;
  a1[6] = v37;
  a1[7] = 0;
  a1[8] = 0xE000000000000000;
  a1[9] = v8._countAndFlagsBits;
  a1[11] = 0;
  a1[12] = 0;
  a1[10] = v8._object;
}

void sub_10000A494(Swift::String *a1@<X8>)
{
  v3 = objc_opt_self();
  v4 = [v3 mainBundle];
  v31._object = 0xE000000000000000;
  v5._countAndFlagsBits = 0x4554454C504D4F43;
  v5._object = 0xE800000000000000;
  v6.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v6.value._object = 0xEB00000000656C62;
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  v31._countAndFlagsBits = 0;
  v8 = NSLocalizedString(_:tableName:bundle:value:comment:)(v5, v6, v4, v7, v31);

  v9 = [objc_opt_self() systemBlueColor];
  v10 = [v3 mainBundle];
  v32._object = 0xE000000000000000;
  v11._countAndFlagsBits = 1162760004;
  v11._object = 0xE400000000000000;
  v12.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v12.value._object = 0xEB00000000656C62;
  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  v32._countAndFlagsBits = 0;
  v14 = NSLocalizedString(_:tableName:bundle:value:comment:)(v11, v12, v10, v13, v32);

  if (sub_1000093C8())
  {
    v15 = [v3 mainBundle];
    v33._object = 0xE000000000000000;
    v16._countAndFlagsBits = 0xD00000000000001ELL;
    v16._object = 0x8000000100145030;
    v17.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v17.value._object = 0xEB00000000656C62;
    v18._countAndFlagsBits = 0;
    v18._object = 0xE000000000000000;
    v33._countAndFlagsBits = 0;
    v19 = NSLocalizedString(_:tableName:bundle:value:comment:)(v16, v17, v15, v18, v33);
    countAndFlagsBits = v19._countAndFlagsBits;
    object = v19._object;
  }

  else
  {
    v22 = type metadata accessor for PasswordSharingModel();
    v23 = *(v1 + *(v22 + 84)) == 0;
    if (*(v1 + *(v22 + 84)))
    {
      v24 = 0x4E414C575FLL;
    }

    else
    {
      v24 = 0;
    }

    if (v23)
    {
      v25 = 0xE000000000000000;
    }

    else
    {
      v25 = 0xE500000000000000;
    }

    v26 = v25;
    String.append(_:)(*&v24);

    v15 = [v3 mainBundle];
    v34._object = 0xE000000000000000;
    v27._countAndFlagsBits = 0xD00000000000001BLL;
    v27._object = 0x8000000100145010;
    v28.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v28.value._object = 0xEB00000000656C62;
    v29._countAndFlagsBits = 0;
    v29._object = 0xE000000000000000;
    v34._countAndFlagsBits = 0;
    v30 = NSLocalizedString(_:tableName:bundle:value:comment:)(v27, v28, v15, v29, v34);
    countAndFlagsBits = v30._countAndFlagsBits;
    object = v30._object;
  }

  *a1 = v8;
  a1[1]._countAndFlagsBits = countAndFlagsBits;
  a1[1]._object = object;
  a1[2]._countAndFlagsBits = 0xD000000000000010;
  a1[2]._object = 0x8000000100144FF0;
  a1[3]._countAndFlagsBits = v9;
  a1[3]._object = 0;
  a1[4]._countAndFlagsBits = 0xE000000000000000;
  a1[4]._object = v14._countAndFlagsBits;
  a1[5]._object = 0;
  a1[6]._countAndFlagsBits = 0;
  a1[5]._countAndFlagsBits = v14._object;
}

void sub_10000A750(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for PasswordSharingModel();
  v3 = (v1 + v2[8]);
  v4 = *(v1 + v2[21]);
  v5 = *v3;
  v6 = v3[1];
  v7 = 0xD000000000000012;
  v8 = "WIFI_SHARING_DETAIL_LONG";
  if (*(v1 + v2[21]))
  {
    v7 = 0xD000000000000017;
  }

  v84 = v7;
  if (!*(v1 + v2[21]))
  {
    v8 = "HOTSPOT_SHARING_BUTTON";
  }

  v87 = v5;
  v89 = v8 | 0x8000000000000000;

  if (sub_10000967C() == 6)
  {

    v9 = 1;
  }

  else
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v10)
    {
      v9 = 1;
    }

    else
    {
      v9 = *(v1 + v2[7]);
    }
  }

  v11 = sub_10000967C();
  if (v11 > 3)
  {
    v12 = v6;
  }

  else if (v11 > 1)
  {
    if (v11 == 2)
    {
      goto LABEL_18;
    }

    v12 = v6;
  }

  else
  {
    v12 = v6;
  }

  v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v13)
  {
LABEL_24:

    if (v4)
    {
      v16 = 0xD00000000000001FLL;
    }

    else
    {
      v16 = 0xD00000000000001ALL;
    }

    if (v4)
    {
      v17 = "WIFI_SHARING_DETAIL_FORMAT";
    }

    else
    {
      v17 = "AIL_GENERIC_WLAN";
    }

    v18 = (v17 | 0x8000000000000000);
    v91 = v17 | 0x8000000000000000;
    if (v9)
    {
      v19._countAndFlagsBits = 0x4543495645445FLL;
      v19._object = 0xE700000000000000;
      String.append(_:)(v19);
      v20 = 0xED0000656E6F6850;
      v21 = 0x69207327656E614ALL;
      v18 = v91;
    }

    else
    {
      v20 = 0xEE0064656573656CLL;
      v21 = 0x70704120656E614ALL;
    }

    v22 = [objc_opt_self() mainBundle];
    v93._object = 0xE000000000000000;
    v23._countAndFlagsBits = v16;
    v23._object = v18;
    v24.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v24.value._object = 0xEB00000000656C62;
    v25._countAndFlagsBits = 0;
    v25._object = 0xE000000000000000;
    v93._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v23, v24, v22, v25, v93);

    sub_100005DCC(&unk_1001BBB70);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_10016CCD0;
    *(v26 + 56) = &type metadata for String;
    v27 = sub_10000BF44();
    *(v26 + 32) = 0x7774654E69466957;
    *(v26 + 40) = 0xEB000000006B726FLL;
    *(v26 + 96) = &type metadata for String;
    *(v26 + 104) = v27;
    *(v26 + 64) = v27;
    *(v26 + 72) = v21;
    *(v26 + 80) = v20;
    v28 = static String.localizedStringWithFormat(_:_:)();
    object = v29;
    countAndFlagsBits = v28;
LABEL_34:

    v85 = 1;
    v30 = v89;
    v31 = v84;
    goto LABEL_35;
  }

  v14 = sub_10000967C();
  if (v14 > 3 && v14 > 5 && v14 == 6)
  {
LABEL_18:

    goto LABEL_24;
  }

  v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v15)
  {
    goto LABEL_24;
  }

  v49 = sub_10000967C();
  if (v49 > 3)
  {
    if (v49 > 5)
    {
      v50 = v12;
      if (v49 != 6)
      {

        goto LABEL_58;
      }
    }

    else
    {
      v50 = v12;
    }
  }

  else
  {
    v50 = v12;
  }

  v51 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v51 & 1) == 0)
  {
    v52 = (v1 + v2[6]);
    v53 = v52[1];
    if (!v53)
    {

      v67 = [objc_opt_self() mainBundle];
      v83 = 0xE000000000000000;
      if (v4)
      {
        v68._countAndFlagsBits = 0xD000000000000020;
        v68._object = 0x8000000100144E80;
        v69.value._countAndFlagsBits = 0x617A696C61636F4CLL;
        v69.value._object = 0xEB00000000656C62;
        v70._countAndFlagsBits = 0;
        v70._object = 0xE000000000000000;
        v71 = 0;
        v72 = NSLocalizedString(_:tableName:bundle:value:comment:)(v68, v69, v67, v70, *(&v83 - 1));
        object = v72._object;
        countAndFlagsBits = v72._countAndFlagsBits;

        v85 = 0;
        v31 = 0xD000000000000017;
      }

      else
      {
        v78._countAndFlagsBits = 0xD00000000000001BLL;
        v78._object = 0x8000000100144E20;
        v79.value._countAndFlagsBits = 0x617A696C61636F4CLL;
        v79.value._object = 0xEB00000000656C62;
        v80._countAndFlagsBits = 0;
        v80._object = 0xE000000000000000;
        v81 = 0;
        v82 = NSLocalizedString(_:tableName:bundle:value:comment:)(v78, v79, v67, v80, *(&v83 - 1));
        object = v82._object;
        countAndFlagsBits = v82._countAndFlagsBits;

        v85 = 0;
        v31 = 0xD000000000000012;
      }

      v30 = v89;
      goto LABEL_35;
    }

    v54 = *v52;
    if (v4)
    {
      v55 = 0xD00000000000001FLL;
    }

    else
    {
      v55 = 0xD00000000000001ALL;
    }

    if (v4)
    {
      v56 = "WIFI_SHARING_DETAIL_FORMAT";
    }

    else
    {
      v56 = "AIL_GENERIC_WLAN";
    }

    v92 = v56 | 0x8000000000000000;
    v57 = (v56 | 0x8000000000000000);

    if (v9)
    {
      v58._countAndFlagsBits = 0x4543495645445FLL;
      v58._object = 0xE700000000000000;
      String.append(_:)(v58);
      v57 = v92;
    }

    v59 = [objc_opt_self() mainBundle];
    v97._object = 0xE000000000000000;
    v60._countAndFlagsBits = v55;
    v60._object = v57;
    v61.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v61.value._object = 0xEB00000000656C62;
    v62._countAndFlagsBits = 0;
    v62._object = 0xE000000000000000;
    v97._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v60, v61, v59, v62, v97);

    sub_100005DCC(&unk_1001BBB70);
    v63 = swift_allocObject();
    *(v63 + 16) = xmmword_10016CCD0;
    *(v63 + 56) = &type metadata for String;
    v64 = sub_10000BF44();
    *(v63 + 32) = v87;
    *(v63 + 40) = v50;
    *(v63 + 96) = &type metadata for String;
    *(v63 + 104) = v64;
    *(v63 + 64) = v64;
    *(v63 + 72) = v54;
    *(v63 + 80) = v53;
    v65 = static String.localizedStringWithFormat(_:_:)();
    object = v66;
    countAndFlagsBits = v65;
    goto LABEL_34;
  }

LABEL_58:

  v30 = 0x8000000100144EF0;
  v73 = [objc_opt_self() mainBundle];
  v98._object = 0xE000000000000000;
  v74._countAndFlagsBits = 0xD000000000000018;
  v74._object = 0x8000000100144F10;
  v75.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v75.value._object = 0xEB00000000656C62;
  v76._countAndFlagsBits = 0;
  v76._object = 0xE000000000000000;
  v98._countAndFlagsBits = 0;
  v77 = NSLocalizedString(_:tableName:bundle:value:comment:)(v74, v75, v73, v76, v98);
  object = v77._object;
  countAndFlagsBits = v77._countAndFlagsBits;

  v85 = 0;
  v31 = 0xD000000000000017;
LABEL_35:
  v32 = objc_opt_self();
  v33 = [v32 mainBundle];
  v94._object = 0xE000000000000000;
  v34._countAndFlagsBits = v31;
  v34._object = v30;
  v35.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v35.value._object = 0xEB00000000656C62;
  v36._countAndFlagsBits = 0;
  v36._object = 0xE000000000000000;
  v94._countAndFlagsBits = 0;
  v37 = NSLocalizedString(_:tableName:bundle:value:comment:)(v34, v35, v33, v36, v94);

  v38 = [objc_opt_self() systemBlueColor];
  v39 = [v32 mainBundle];
  v40._countAndFlagsBits = 0xD000000000000015;
  v95._object = 0xE000000000000000;
  v40._object = 0x8000000100144E40;
  v41.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v41.value._object = 0xEB00000000656C62;
  v42._countAndFlagsBits = 0;
  v42._object = 0xE000000000000000;
  v95._countAndFlagsBits = 0;
  v43 = NSLocalizedString(_:tableName:bundle:value:comment:)(v40, v41, v39, v42, v95);

  v44 = [v32 mainBundle];
  v45._countAndFlagsBits = 0xD000000000000013;
  v96._object = 0xE000000000000000;
  v45._object = 0x8000000100144E60;
  v46.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v46.value._object = 0xEB00000000656C62;
  v47._countAndFlagsBits = 0;
  v47._object = 0xE000000000000000;
  v96._countAndFlagsBits = 0;
  v48 = NSLocalizedString(_:tableName:bundle:value:comment:)(v45, v46, v44, v47, v96);

  if (v85)
  {
  }

  *a1 = v37;
  *(a1 + 16) = countAndFlagsBits;
  *(a1 + 24) = object;
  *(a1 + 32) = 1768319351;
  *(a1 + 40) = 0xE400000000000000;
  *(a1 + 48) = v38;
  *(a1 + 56) = v43;
  *(a1 + 72) = v48._countAndFlagsBits;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 80) = v48._object;
}

void sub_10000B324(uint64_t a1@<X8>)
{
  v3 = objc_opt_self();
  v4 = [v3 mainBundle];
  v34._object = 0xE000000000000000;
  v5._object = 0x8000000100144D80;
  v5._countAndFlagsBits = 0xD000000000000015;
  v6.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v6.value._object = 0xEB00000000656C62;
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  v34._countAndFlagsBits = 0;
  v8 = NSLocalizedString(_:tableName:bundle:value:comment:)(v5, v6, v4, v7, v34);

  v9 = [v3 mainBundle];
  v35._object = 0xE000000000000000;
  v10._countAndFlagsBits = 0xD00000000000001DLL;
  v10._object = 0x8000000100144DA0;
  v11.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v11.value._object = 0xEB00000000656C62;
  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  v35._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v10, v11, v9, v12, v35);

  sub_100005DCC(&unk_1001BBB70);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_10016CCE0;
  v14 = (v1 + *(type metadata accessor for PasswordSharingModel() + 24));
  v16 = *v14;
  v15 = v14[1];
  *(v13 + 56) = &type metadata for String;
  *(v13 + 64) = sub_10000BF44();
  v17 = 0x707041206E686F4ALL;
  if (v15)
  {
    v17 = v16;
  }

  v18 = 0xEE0064656573656CLL;
  if (v15)
  {
    v18 = v15;
  }

  *(v13 + 32) = v17;
  *(v13 + 40) = v18;

  v19 = static String.localizedStringWithFormat(_:_:)();
  v32 = v20;
  v33 = v19;

  v21 = [objc_opt_self() systemBlueColor];
  v22 = [v3 mainBundle];
  v36._object = 0xE000000000000000;
  v23._countAndFlagsBits = 0xD000000000000018;
  v23._object = 0x8000000100144DC0;
  v24.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v24.value._object = 0xEB00000000656C62;
  v25._countAndFlagsBits = 0;
  v25._object = 0xE000000000000000;
  v36._countAndFlagsBits = 0;
  v26 = NSLocalizedString(_:tableName:bundle:value:comment:)(v23, v24, v22, v25, v36);

  v27 = [v3 mainBundle];
  v37._object = 0xE000000000000000;
  v28._countAndFlagsBits = 0xD000000000000016;
  v28._object = 0x8000000100144DE0;
  v29.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v29.value._object = 0xEB00000000656C62;
  v30._countAndFlagsBits = 0;
  v30._object = 0xE000000000000000;
  v37._countAndFlagsBits = 0;
  v31 = NSLocalizedString(_:tableName:bundle:value:comment:)(v28, v29, v27, v30, v37);

  *a1 = v8;
  *(a1 + 16) = v33;
  *(a1 + 24) = v32;
  *(a1 + 32) = 0x6C616E6F73726570;
  *(a1 + 40) = 0xEF746F7073746F68;
  *(a1 + 48) = v21;
  *(a1 + 56) = v26;
  *(a1 + 72) = v31._countAndFlagsBits;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 80) = v31._object;
}

uint64_t sub_10000B660()
{
  v1 = sub_100005DCC(&unk_1001BBAA0);
  __chkstk_darwin(v1);
  v3 = v103 - v2;
  v106[0] = 0;
  v106[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(17);

  strcpy(v106, "peerContactID=");
  HIBYTE(v106[1]) = -18;
  v4 = v0[1];
  v104 = *v0;
  v105 = v4;

  v103[1] = sub_100005DCC(&unk_1001BBA70);
  v5._countAndFlagsBits = String.init<A>(reflecting:)();
  String.append(_:)(v5);

  v6._countAndFlagsBits = 32;
  v6._object = 0xE100000000000000;
  String.append(_:)(v6);
  v7._countAndFlagsBits = v106[0];
  v8 = v106[1];
  v106[0] = 0xD000000000000016;
  v106[1] = 0x8000000100144B90;
  v7._object = v8;
  String.append(_:)(v7);

  v10 = v106[0];
  v9 = v106[1];
  v106[0] = 0;
  v106[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(24);

  v106[0] = 0xD000000000000015;
  v106[1] = 0x8000000100144BB0;
  v11 = type metadata accessor for PasswordSharingModel();
  sub_10000BE6C(v0 + v11[5], v3);
  v12._countAndFlagsBits = String.init<A>(reflecting:)();
  String.append(_:)(v12);

  v13._countAndFlagsBits = 32;
  v13._object = 0xE100000000000000;
  String.append(_:)(v13);
  v14 = v106[0];
  v15 = v106[1];
  v106[0] = v10;
  v106[1] = v9;

  v16._countAndFlagsBits = v14;
  v16._object = v15;
  String.append(_:)(v16);

  v18 = v106[0];
  v17 = v106[1];
  v106[0] = 0;
  v106[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(19);

  v106[0] = 0xD000000000000010;
  v106[1] = 0x8000000100144BD0;
  v19 = (v0 + v11[6]);
  v20 = v19[1];
  v104 = *v19;
  v105 = v20;

  v21._countAndFlagsBits = String.init<A>(reflecting:)();
  String.append(_:)(v21);

  v22._countAndFlagsBits = 32;
  v22._object = 0xE100000000000000;
  String.append(_:)(v22);
  v23 = v106[0];
  v24 = v106[1];
  v106[0] = v18;
  v106[1] = v17;

  v25._countAndFlagsBits = v23;
  v25._object = v24;
  String.append(_:)(v25);

  v27 = v106[0];
  v26 = v106[1];
  v106[0] = 0;
  v106[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(31);

  v106[0] = 0xD00000000000001CLL;
  v106[1] = 0x8000000100144BF0;
  if (*(v0 + v11[7]))
  {
    v28 = 1702195828;
  }

  else
  {
    v28 = 0x65736C6166;
  }

  if (*(v0 + v11[7]))
  {
    v29 = 0xE400000000000000;
  }

  else
  {
    v29 = 0xE500000000000000;
  }

  v30 = v29;
  String.append(_:)(*&v28);

  v31._countAndFlagsBits = 32;
  v31._object = 0xE100000000000000;
  String.append(_:)(v31);
  v32 = v106[0];
  v33 = v106[1];
  v106[0] = v27;
  v106[1] = v26;

  v34._countAndFlagsBits = v32;
  v34._object = v33;
  String.append(_:)(v34);

  v36 = v106[0];
  v35 = v106[1];
  v106[0] = 0;
  v106[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(17);

  strcpy(v106, "requestedSSID=");
  HIBYTE(v106[1]) = -18;
  String.append(_:)(*(v0 + v11[8]));
  v37._countAndFlagsBits = 32;
  v37._object = 0xE100000000000000;
  String.append(_:)(v37);
  v38 = v106[0];
  v39 = v106[1];
  v106[0] = v36;
  v106[1] = v35;

  v40._countAndFlagsBits = v38;
  v40._object = v39;
  String.append(_:)(v40);

  v42 = v106[0];
  v41 = v106[1];
  v106[0] = 0;
  v106[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(16);

  strcpy(v106, "rawIsHotspot=");
  HIWORD(v106[1]) = -4864;
  if (*(v0 + v11[9]))
  {
    v43 = 1702195828;
  }

  else
  {
    v43 = 0x65736C6166;
  }

  if (*(v0 + v11[9]))
  {
    v44 = 0xE400000000000000;
  }

  else
  {
    v44 = 0xE500000000000000;
  }

  v45 = v44;
  String.append(_:)(*&v43);

  v46._countAndFlagsBits = 32;
  v46._object = 0xE100000000000000;
  String.append(_:)(v46);
  v47 = v106[0];
  v48 = v106[1];
  v106[0] = v42;
  v106[1] = v41;

  v49._countAndFlagsBits = v47;
  v49._object = v48;
  String.append(_:)(v49);

  v51 = v106[0];
  v50 = v106[1];
  v106[0] = 0;
  v106[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(19);

  v106[0] = 0xD000000000000010;
  v106[1] = 0x8000000100144C10;
  if (*(v0 + v11[10]))
  {
    v52 = 1702195828;
  }

  else
  {
    v52 = 0x65736C6166;
  }

  if (*(v0 + v11[10]))
  {
    v53 = 0xE400000000000000;
  }

  else
  {
    v53 = 0xE500000000000000;
  }

  v54 = v53;
  String.append(_:)(*&v52);

  v55._countAndFlagsBits = 32;
  v55._object = 0xE100000000000000;
  String.append(_:)(v55);
  v56 = v106[0];
  v57 = v106[1];
  v106[0] = v51;
  v106[1] = v50;

  v58._countAndFlagsBits = v56;
  v58._object = v57;
  String.append(_:)(v58);

  v60 = v106[0];
  v59 = v106[1];
  strcpy(v106, "hashedEmail=");
  BYTE5(v106[1]) = 0;
  HIWORD(v106[1]) = -5120;
  v61 = (v0 + v11[12]);
  v62 = v61[1];
  v104 = *v61;
  v105 = v62;

  v63._countAndFlagsBits = String.init<A>(reflecting:)();
  String.append(_:)(v63);

  v64._countAndFlagsBits = 32;
  v64._object = 0xE100000000000000;
  String.append(_:)(v64);
  v65 = v106[0];
  v66 = v106[1];
  v106[0] = v60;
  v106[1] = v59;

  v67._countAndFlagsBits = v65;
  v67._object = v66;
  String.append(_:)(v67);

  v69 = v106[0];
  v68 = v106[1];
  strcpy(v106, "hashedPhone=");
  BYTE5(v106[1]) = 0;
  HIWORD(v106[1]) = -5120;
  v70 = (v0 + v11[13]);
  v71 = v70[1];
  v104 = *v70;
  v105 = v71;

  v72._countAndFlagsBits = String.init<A>(reflecting:)();
  String.append(_:)(v72);

  v73._countAndFlagsBits = 32;
  v73._object = 0xE100000000000000;
  String.append(_:)(v73);
  v74 = v106[0];
  v75 = v106[1];
  v106[0] = v69;
  v106[1] = v68;

  v76._countAndFlagsBits = v74;
  v76._object = v75;
  String.append(_:)(v76);

  v78 = v106[0];
  v77 = v106[1];
  strcpy(v106, "deviceName=");
  HIDWORD(v106[1]) = -352321536;
  v79 = (v0 + v11[14]);
  v80 = v79[1];
  v104 = *v79;
  v105 = v80;

  v81._countAndFlagsBits = String.init<A>(reflecting:)();
  String.append(_:)(v81);

  v82._countAndFlagsBits = 32;
  v82._object = 0xE100000000000000;
  String.append(_:)(v82);
  v83 = v106[0];
  v84 = v106[1];
  v106[0] = v78;
  v106[1] = v77;

  v85._countAndFlagsBits = v83;
  v85._object = v84;
  String.append(_:)(v85);

  v87 = v106[0];
  v86 = v106[1];
  v106[0] = 1030452080;
  v106[1] = 0xE400000000000000;
  v88 = (v0 + v11[15]);
  v89 = v88[1];
  v104 = *v88;
  v105 = v89;

  v90._countAndFlagsBits = String.init<A>(reflecting:)();
  String.append(_:)(v90);

  v91._countAndFlagsBits = 32;
  v91._object = 0xE100000000000000;
  String.append(_:)(v91);
  v92 = v106[0];
  v93 = v106[1];
  v106[0] = v87;
  v106[1] = v86;

  v94._countAndFlagsBits = v92;
  v94._object = v93;
  String.append(_:)(v94);

  v96 = v106[0];
  v95 = v106[1];
  v106[0] = 0;
  v106[1] = 0xE000000000000000;
  v97._countAndFlagsBits = 0x65646F4D74736574;
  v97._object = 0xE90000000000003DLL;
  String.append(_:)(v97);
  LOBYTE(v104) = sub_10000967C();
  _print_unlocked<A, B>(_:_:)();
  v98 = v106[0];
  v99 = v106[1];
  v106[0] = v96;
  v106[1] = v95;

  v100._countAndFlagsBits = v98;
  v100._object = v99;
  String.append(_:)(v100);

  v101._countAndFlagsBits = 62;
  v101._object = 0xE100000000000000;
  String.append(_:)(v101);

  return v106[0];
}

uint64_t sub_10000BE6C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005DCC(&unk_1001BBAA0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000BEDC(uint64_t a1)
{
  v2 = sub_100005DCC(&unk_1001BBAA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10000BF44()
{
  result = qword_1001B9910;
  if (!qword_1001B9910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001B9910);
  }

  return result;
}

uint64_t sub_10000BFEC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_10000C048(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005DCC(&unk_1001BBAA0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t getEnumTagSinglePayload for PasswordSharingModel.TestMode(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for PasswordSharingModel.TestMode(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_10000C20C()
{
  result = qword_1001B9918;
  if (!qword_1001B9918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001B9918);
  }

  return result;
}

unint64_t sub_10000C260(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10018ED80, v2);

  if (v3 >= 8)
  {
    return 8;
  }

  else
  {
    return v3;
  }
}

void sub_10000C2DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  if (a2)
  {
    v7 = String._bridgeToObjectiveC()();
  }

  else
  {
    v7 = 0;
  }

  [v5 *a5];
}

void sub_10000C350(void *a1)
{
  [v1 setPeerDevice:a1];
}

void sub_10000C398(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v4[4] = a1;
    v4[5] = a2;
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 1107296256;
    v4[2] = sub_10000C440;
    v4[3] = &unk_10018FCF0;
    v3 = _Block_copy(v4);
  }

  else
  {
    v3 = 0;
  }

  [v2 setProgressHandler:v3];
  _Block_release(v3);
}

uint64_t sub_10000C440(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  if (a3)
  {
    v5 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v5 = 0;
  }

  v4(a2, v5);
}

void sub_10000C4D8(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v4[4] = a1;
    v4[5] = a2;
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 1107296256;
    v4[2] = sub_10007B198;
    v4[3] = &unk_10018FCC8;
    v3 = _Block_copy(v4);
  }

  else
  {
    v3 = 0;
  }

  [v2 setPromptForPINHandler:v3];
  _Block_release(v3);
}

void sub_10000C5A0()
{
  v1 = String._bridgeToObjectiveC()();
  [v0 tryPIN:v1];
}

uint64_t sub_10000C5EC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000C60C()
{
  v0 = type metadata accessor for Logger();
  sub_10000D378(v0, qword_1001B9920);
  v1 = sub_10000D298(v0, qword_1001B9920);
  if (qword_1001B92B0 != -1)
  {
    swift_once();
  }

  v2 = sub_10000D298(v0, qword_1001C38B8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_10000C6D4(char a1)
{
  v41.receiver = v1;
  v41.super_class = type metadata accessor for AirTagHSA2ViewController();
  objc_msgSendSuper2(&v41, "viewWillAppear:", a1 & 1);
  sub_1000974B4(103);
  v3 = String._bridgeToObjectiveC()();

  [v1 setTitle:v3];

  sub_1000974B4(104);
  v4 = String._bridgeToObjectiveC()();

  [v1 setSubtitle:v4];

  [v1 setDismissalType:1];
  v5 = [objc_allocWithZone(UIImageView) init];
  v6 = String._bridgeToObjectiveC()();
  v7 = [objc_opt_self() imageNamed:v6];

  if (v7)
  {
    v8 = [objc_opt_self() mainScreen];
    [v8 scale];
    v10 = v9;

    v11 = [v7 _applicationIconImageForFormat:2 precomposed:1 scale:v10];
  }

  else
  {
    v11 = 0;
  }

  [v5 setImage:v11];

  v12 = v5;
  [v12 setTranslatesAutoresizingMaskIntoConstraints:0];
  v13 = [v1 contentView];
  [v13 addSubview:v12];

  v14 = [v1 contentView];
  v15 = [v14 mainContentGuide];

  v16 = objc_opt_self();
  sub_100005DCC(&qword_1001BBB00);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_10016CED0;
  v18 = [v12 centerXAnchor];
  v19 = [v15 centerXAnchor];
  v20 = [v18 constraintEqualToAnchor:v19];

  *(v17 + 32) = v20;
  v21 = [v12 centerYAnchor];
  v22 = [v15 centerYAnchor];
  v23 = [v21 constraintEqualToAnchor:v22];

  *(v17 + 40) = v23;
  v24 = [v12 widthAnchor];
  v25 = [v24 constraintEqualToConstant:76.0];

  *(v17 + 48) = v25;
  v26 = [v12 heightAnchor];
  v27 = [v26 constraintEqualToConstant:76.0];

  *(v17 + 56) = v27;
  v28 = [v12 topAnchor];
  v29 = [v15 topAnchor];
  v30 = [v28 constraintGreaterThanOrEqualToAnchor:v29];

  *(v17 + 64) = v30;
  v31 = [v12 bottomAnchor];

  v32 = [v15 bottomAnchor];
  v33 = [v31 constraintLessThanOrEqualToAnchor:v32];

  *(v17 + 72) = v33;
  sub_10000D1F4();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v16 activateConstraints:isa];

  sub_1000974B4(105);
  v35 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v36 = String._bridgeToObjectiveC()();

  v40[4] = sub_10000D278;
  v40[5] = v35;
  v40[0] = _NSConcreteStackBlock;
  v40[1] = 1107296256;
  v40[2] = sub_10001BE90;
  v40[3] = &unk_10018FD40;
  v37 = _Block_copy(v40);
  v38 = [objc_opt_self() actionWithTitle:v36 style:0 handler:v37];

  _Block_release(v37);

  v39 = [v1 addAction:v38];
}

void sub_10000CCDC()
{
  if (qword_1001B9268 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10000D298(v0, qword_1001B9920);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 134217984;
    *(v3 + 4) = 47;
    _os_log_impl(&_mh_execute_header, v1, v2, "updateSettingsPressed (HSA2) pressed in %ld", v3, 0xCu);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = swift_unknownObjectWeakLoadStrong();
    if (v6)
    {
      v7 = v6;
      v8 = swift_allocObject();
      *(v8 + 16) = v7;
      v9 = v7;
      sub_1000DDB50(v5, sub_10000D308, v8);

      return;
    }
  }

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "mainController nil while initializing primaryAction", v12, 2u);
  }
}

uint64_t sub_10000CEDC()
{
  v0 = sub_100005DCC(&qword_1001BA7B0);
  __chkstk_darwin(v0);
  v2 = &v8 - v1;
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  URL.init(string:)();
  Optional.unwrap(_:file:line:)();
  sub_10000D310(v2);
  (*(v4 + 16))(v2, v6, v3);
  (*(v4 + 56))(v2, 0, 1, v3);
  sub_1000C1744(0, v2, 0, 0, 58);
  sub_10000D310(v2);
  return (*(v4 + 8))(v6, v3);
}

id sub_10000D18C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AirTagHSA2ViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_10000D1F4()
{
  result = qword_1001B9968;
  if (!qword_1001B9968)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1001B9968);
  }

  return result;
}

uint64_t sub_10000D240()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000D280(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000D298(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_10000D2D0()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000D310(uint64_t a1)
{
  v2 = sub_100005DCC(&qword_1001BA7B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t *sub_10000D378(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

id sub_10000D3DC(uint64_t a1, uint64_t a2)
{
  v4 = (v2 + OBJC_IVAR____TtC18SharingViewService12ProgressView_statusLabelText);
  *v4 = a1;
  v4[1] = a2;

  v5 = *(v2 + OBJC_IVAR____TtC18SharingViewService12ProgressView_statusLabel);
  if (a2)
  {
    v6 = String._bridgeToObjectiveC()();

    [v5 setText:v6];
  }

  return [v5 setHidden:a2 == 0];
}

char *sub_10000D490(double a1, double a2, double a3, double a4)
{
  v9 = &v4[OBJC_IVAR____TtC18SharingViewService12ProgressView_statusLabelText];
  *v9 = 0;
  *(v9 + 1) = 0;
  *&v4[OBJC_IVAR____TtC18SharingViewService12ProgressView_progress] = 0;
  v10 = [objc_allocWithZone(UIProgressView) initWithProgressViewStyle:1];
  *&v4[OBJC_IVAR____TtC18SharingViewService12ProgressView_progressView] = v10;
  v11 = [objc_allocWithZone(PRXLabel) initWithStyle:1];
  *&v4[OBJC_IVAR____TtC18SharingViewService12ProgressView_statusLabel] = v11;
  v56.receiver = v4;
  v56.super_class = type metadata accessor for ProgressView();
  v12 = objc_msgSendSuper2(&v56, "initWithFrame:", a1, a2, a3, a4);
  v13 = OBJC_IVAR____TtC18SharingViewService12ProgressView_progressView;
  v14 = *&v12[OBJC_IVAR____TtC18SharingViewService12ProgressView_progressView];
  v15 = objc_opt_self();
  v16 = v12;
  v17 = v14;
  v18 = [v15 systemBlueColor];
  [v17 setProgressTintColor:v18];

  v19 = *&v12[v13];
  v20 = [v15 systemGray5Color];
  [v19 setTrackTintColor:v20];

  v21 = [*&v12[v13] layer];
  [v21 setCornerRadius:2.0];

  [*&v12[v13] setClipsToBounds:1];
  [*&v12[v13] setTranslatesAutoresizingMaskIntoConstraints:0];
  v22 = v16;
  v23 = *&v12[v13];
  v24 = v22;
  [v24 addSubview:v23];
  v25 = OBJC_IVAR____TtC18SharingViewService12ProgressView_statusLabel;
  [*&v24[OBJC_IVAR____TtC18SharingViewService12ProgressView_statusLabel] setNumberOfLines:1];
  [*&v24[v25] setAdjustsFontSizeToFitWidth:1];
  [*&v24[v25] setMinimumScaleFactor:0.5];
  [*&v24[v25] setTranslatesAutoresizingMaskIntoConstraints:0];
  [v24 addSubview:*&v24[v25]];
  v55 = objc_opt_self();
  sub_100005DCC(&qword_1001BBB00);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_10016CF20;
  v27 = [*&v12[v13] topAnchor];
  v28 = [v24 topAnchor];
  v29 = [v27 constraintEqualToAnchor:v28];

  *(v26 + 32) = v29;
  v30 = [*&v12[v13] heightAnchor];
  v31 = [v30 constraintEqualToConstant:4.0];

  *(v26 + 40) = v31;
  v32 = [*&v12[v13] leadingAnchor];
  v33 = [v24 leadingAnchor];

  v34 = [v32 constraintEqualToAnchor:v33 constant:44.0];
  *(v26 + 48) = v34;
  v35 = [*&v12[v13] trailingAnchor];
  v36 = [v24 trailingAnchor];

  v37 = [v35 constraintEqualToAnchor:v36 constant:-44.0];
  *(v26 + 56) = v37;
  v38 = [*&v24[v25] topAnchor];
  v39 = [*&v12[v13] bottomAnchor];
  v40 = [v38 constraintEqualToAnchor:v39 constant:14.0];

  *(v26 + 64) = v40;
  v41 = [*&v24[v25] leadingAnchor];
  v42 = [v24 leadingAnchor];

  v43 = [v41 constraintGreaterThanOrEqualToAnchor:v42];
  *(v26 + 72) = v43;
  v44 = [*&v24[v25] trailingAnchor];
  v45 = [v24 trailingAnchor];

  v46 = [v44 constraintLessThanOrEqualToAnchor:v45];
  *(v26 + 80) = v46;
  v47 = [*&v24[v25] centerXAnchor];
  v48 = [v24 centerXAnchor];

  v49 = [v47 constraintEqualToAnchor:v48];
  *(v26 + 88) = v49;
  v50 = [*&v24[v25] bottomAnchor];
  v51 = [v24 bottomAnchor];

  v52 = [v50 constraintEqualToAnchor:v51];
  *(v26 + 96) = v52;
  sub_10000D1F4();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v55 activateConstraints:isa];

  return v24;
}

id sub_10000DB8C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ProgressView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10000DC44()
{
  v0 = type metadata accessor for Logger();
  sub_10000D378(v0, qword_1001B99B8);
  v1 = sub_10000D298(v0, qword_1001B99B8);
  if (qword_1001B92C8 != -1)
  {
    swift_once();
  }

  v2 = sub_10000D298(v0, qword_1001C3900);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_10000DD0C(unsigned __int8 a1)
{
  v2 = v1;
  if (qword_1001B9270 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000D298(v4, qword_1001B99B8);

  oslog = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v5))
  {
    v6 = 0x64696C61766E49;
    v7 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v8 = 0xE700000000000000;
    *v7 = 136315394;
    v9 = 0x64726F7773736150;
    v10 = 0xEC000000746E6553;
    v11 = 0x6564656563637553;
    v12 = 0xE900000000000064;
    if (a1 != 3)
    {
      v11 = 0x64656C696146;
      v12 = 0xE600000000000000;
    }

    if (a1 != 2)
    {
      v9 = v11;
      v10 = v12;
    }

    v13 = 0x6572676F72506E49;
    if (a1)
    {
      v8 = 0xEA00000000007373;
    }

    else
    {
      v13 = 0x64696C61766E49;
    }

    if (a1 <= 1u)
    {
      v14 = v13;
    }

    else
    {
      v14 = v9;
    }

    if (a1 <= 1u)
    {
      v15 = v8;
    }

    else
    {
      v15 = v10;
    }

    v16 = sub_10002065C(v14, v15, &v21);

    *(v7 + 4) = v16;
    *(v7 + 12) = 2080;
    v17 = *(v2 + OBJC_IVAR____TtC18SharingViewService25PasswordSharingInteractor_shareState);
    if (v17 <= 1)
    {
      if (*(v2 + OBJC_IVAR____TtC18SharingViewService25PasswordSharingInteractor_shareState))
      {
        v6 = 0x6572676F72506E49;
        v18 = 0xEA00000000007373;
      }

      else
      {
        v18 = 0xE700000000000000;
      }
    }

    else if (v17 == 2)
    {
      v6 = 0x64726F7773736150;
      v18 = 0xEC000000746E6553;
    }

    else if (v17 == 3)
    {
      v6 = 0x6564656563637553;
      v18 = 0xE900000000000064;
    }

    else
    {
      v18 = 0xE600000000000000;
      v6 = 0x64656C696146;
    }

    v19 = sub_10002065C(v6, v18, &v21);

    *(v7 + 14) = v19;
    _os_log_impl(&_mh_execute_header, oslog, v5, "Password Sharing state %s -> %s", v7, 0x16u);
    swift_arrayDestroy();
  }
}

uint64_t sub_10000DFE8(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC18SharingViewService25PasswordSharingInteractor_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v3 = (v1 + OBJC_IVAR____TtC18SharingViewService25PasswordSharingInteractor_passwordSessionGenerator);
  *v3 = 0;
  v3[1] = 0;
  v4 = (v1 + OBJC_IVAR____TtC18SharingViewService25PasswordSharingInteractor_requesterStateObserverGenerator);
  *v4 = 0;
  v4[1] = 0;
  v5 = (v1 + OBJC_IVAR____TtC18SharingViewService25PasswordSharingInteractor_requesterStateObserver);
  *v5 = 0;
  v5[1] = 0;
  v6 = (v1 + OBJC_IVAR____TtC18SharingViewService25PasswordSharingInteractor_passwordSharingSession);
  *v6 = 0;
  v6[1] = 0;
  *(v1 + OBJC_IVAR____TtC18SharingViewService25PasswordSharingInteractor_missingRemoteAck) = 0;
  *(v1 + OBJC_IVAR____TtC18SharingViewService25PasswordSharingInteractor_shareErrorCode) = 0;
  sub_100011F90(a1, v1 + OBJC_IVAR____TtC18SharingViewService25PasswordSharingInteractor_model);
  *(v1 + OBJC_IVAR____TtC18SharingViewService25PasswordSharingInteractor_shareState) = 0;
  sub_10000F3A8();
  sub_100011FF4(a1);
  v7 = *v3;
  *v3 = sub_10000E0E8;
  v3[1] = 0;
  sub_100012050(v7);
  v8 = *v4;
  *v4 = sub_10000E11C;
  v4[1] = 0;
  sub_100012050(v8);
  return v1;
}

uint64_t sub_10000E11C(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, a1, v2);
  type metadata accessor for PasswordRequesterStateObserver();
  v6 = swift_allocObject();
  v7 = (v6 + OBJC_IVAR____TtC18SharingViewService30PasswordRequesterStateObserver_stateChangedHandler);
  *v7 = 0;
  v7[1] = 0;
  v8 = (v6 + OBJC_IVAR____TtC18SharingViewService30PasswordRequesterStateObserver_deviceDiscoveryGenerator);
  *v8 = 0;
  v8[1] = 0;
  v9 = v6 + OBJC_IVAR____TtC18SharingViewService30PasswordRequesterStateObserver_deviceDiscovery;
  *v9 = 0u;
  *(v9 + 16) = 0u;
  *(v9 + 32) = 0;
  (*(v3 + 32))(v6 + OBJC_IVAR____TtC18SharingViewService30PasswordRequesterStateObserver_requesterDeviceIdentifier, v5, v2);
  *(v6 + OBJC_IVAR____TtC18SharingViewService30PasswordRequesterStateObserver_requesterState) = 0;
  v10 = (v6 + OBJC_IVAR____TtC18SharingViewService30PasswordRequesterStateObserver_deviceDiscoveryGenerator);
  *v10 = sub_100078E10;
  v10[1] = 0;
  return v6;
}

void sub_10000E2A0()
{
  v1 = v0;
  v2 = sub_100005DCC(&unk_1001BBAA0);
  __chkstk_darwin(v2 - 8);
  v4 = &v28 - v3;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1001B9270 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_10000D298(v9, qword_1001B99B8);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "PasswordSharingInteractor activate", v12, 2u);
  }

  v13 = v0 + OBJC_IVAR____TtC18SharingViewService25PasswordSharingInteractor_model;
  swift_beginAccess();
  v14 = type metadata accessor for PasswordSharingModel();
  sub_100005EB8(v13 + *(v14 + 20), v4, &unk_1001BBAA0);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_10001259C(v4, &unk_1001BBAA0);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "Device identifier not available. PasswordRequesterStateObserver disabled.", v17, 2u);
    }
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    v18 = *(v0 + OBJC_IVAR____TtC18SharingViewService25PasswordSharingInteractor_requesterStateObserverGenerator);
    if (v18)
    {

      v19 = v18(v8);
      v21 = v20;
      sub_100012050(v18);
    }

    else
    {
      v19 = 0;
      v21 = 0;
    }

    (*(v6 + 8))(v8, v5);
    v22 = (v1 + OBJC_IVAR____TtC18SharingViewService25PasswordSharingInteractor_requesterStateObserver);
    *v22 = v19;
    v22[1] = v21;
    swift_unknownObjectRelease();
  }

  v23 = OBJC_IVAR____TtC18SharingViewService25PasswordSharingInteractor_requesterStateObserver;
  v24 = *(v1 + OBJC_IVAR____TtC18SharingViewService25PasswordSharingInteractor_requesterStateObserver);
  if (v24)
  {
    v25 = swift_allocObject();
    swift_weakInit();
    v26 = (v24 + OBJC_IVAR____TtC18SharingViewService30PasswordRequesterStateObserver_stateChangedHandler);
    v27 = *(v24 + OBJC_IVAR____TtC18SharingViewService30PasswordRequesterStateObserver_stateChangedHandler);
    *v26 = sub_1000125FC;
    v26[1] = v25;
    swift_unknownObjectRetain();

    sub_100012050(v27);
    swift_unknownObjectRelease();

    if (*(v1 + v23))
    {
      swift_unknownObjectRetain();
      sub_100078E64();
      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_10000E698(uint64_t a1, unsigned __int8 a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (a2 > 1u)
    {
    }

    else
    {
      v4 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v4 & 1) == 0)
      {
      }
    }

    sub_10000FE30();
  }

  return result;
}

void sub_10000E790()
{
  v1 = v0;
  if (qword_1001B9270 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000D298(v2, qword_1001B99B8);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "PasswordSharingInteractor invalidate", v5, 2u);
  }

  if (*(v1 + OBJC_IVAR____TtC18SharingViewService25PasswordSharingInteractor_passwordSharingSession))
  {
    v6 = *(v1 + OBJC_IVAR____TtC18SharingViewService25PasswordSharingInteractor_passwordSharingSession + 8);
    ObjectType = swift_getObjectType();
    v8 = *(v6 + 184);
    swift_unknownObjectRetain();
    v8(ObjectType, v6);
    swift_unknownObjectRelease();
  }

  if (*(v1 + OBJC_IVAR____TtC18SharingViewService25PasswordSharingInteractor_requesterStateObserver))
  {
    swift_unknownObjectRetain();
    sub_100079804();
    swift_unknownObjectRelease();
  }

  sub_10000EAE0();
}

void sub_10000E8F8()
{
  v1 = v0;
  v2 = type metadata accessor for PasswordSharingModel();
  __chkstk_darwin(v2 - 8);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR____TtC18SharingViewService25PasswordSharingInteractor_model;
  swift_beginAccess();
  sub_100011F90(v1 + v5, v4);
  LOBYTE(v5) = sub_10000967C();
  sub_100011FF4(v4);
  if (!v5)
  {

LABEL_4:
    sub_100010194();
    return;
  }

  v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v6)
  {
    goto LABEL_4;
  }

  sub_10001157C();
}

void sub_10000EAE0()
{
  v1 = sub_100005DCC(&qword_1001BD600);
  v2 = __chkstk_darwin(v1 - 8);
  v29 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v5 = &v27 - v4;
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v27 - v11;
  v28 = v0;
  v13 = v0 + OBJC_IVAR____TtC18SharingViewService25PasswordSharingInteractor_model;
  swift_beginAccess();
  v14 = type metadata accessor for PasswordSharingModel();
  sub_100005EB8(v13 + *(v14 + 76), v5, &qword_1001BD600);
  v15 = *(v7 + 48);
  if (v15(v5, 1, v6) != 1)
  {
    v27 = v10;
    v17 = v5;
    v18 = *(v7 + 32);
    v18(v12, v17, v6);
    v16 = v29;
    sub_100005EB8(v13 + *(v14 + 80), v29, &qword_1001BD600);
    if (v15(v16, 1, v6) == 1)
    {
      (*(v7 + 8))(v12, v6);
      goto LABEL_5;
    }

    v23 = v27;
    (v18)(v27, v16);
    Date.timeIntervalSince(_:)();
    v25 = v24 * 1000.0;
    if ((*&v25 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v25 > -9.22337204e18)
    {
      if (v25 < 9.22337204e18)
      {
        if ((v25 & 0x8000000000000000) == 0 || !__OFSUB__(0, v25))
        {
          sub_10009E374();
          v26 = *(v7 + 8);
          v26(v23, v6);
          v26(v12, v6);
          return;
        }

        goto LABEL_19;
      }

LABEL_18:
      __break(1u);
LABEL_19:
      __break(1u);
      return;
    }

    __break(1u);
    goto LABEL_18;
  }

  v16 = v5;
LABEL_5:
  sub_10001259C(v16, &qword_1001BD600);
  if (qword_1001B9270 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  sub_10000D298(v19, qword_1001B99B8);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&_mh_execute_header, v20, v21, "Failed to report done metric - either UI start or end date not available", v22, 2u);
  }
}

void sub_10000EF00()
{
  v1 = v0;
  v2 = type metadata accessor for PasswordSharingModel();
  __chkstk_darwin(v2);
  v4 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100005DCC(&qword_1001BD600);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v31 - v9;
  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v35 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v31 - v15;
  v34 = v1;
  v17 = v1 + OBJC_IVAR____TtC18SharingViewService25PasswordSharingInteractor_model;
  swift_beginAccess();
  sub_100005EB8(v17 + *(v2 + 68), v10, &qword_1001BD600);
  v18 = *(v12 + 48);
  if (v18(v10, 1, v11) != 1)
  {
    v33 = v4;
    v19 = v10;
    v20 = *(v12 + 32);
    v20(v16, v19, v11);
    sub_100005EB8(v17 + *(v2 + 72), v8, &qword_1001BD600);
    if (v18(v8, 1, v11) == 1)
    {
      (*(v12 + 8))(v16, v11);
      goto LABEL_5;
    }

    v32 = v12;
    v25 = v35;
    v20(v35, v8, v11);
    v26 = v16;
    Date.timeIntervalSince(_:)();
    v28 = v27 * 1000.0;
    if ((*&v28 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v28 > -9.22337204e18)
    {
      if (v28 < 9.22337204e18)
      {
        if ((v28 & 0x8000000000000000) == 0 || !__OFSUB__(0, v28))
        {
          v29 = v33;
          sub_100011F90(v17, v33);
          sub_1000093C8();
          sub_100011FF4(v29);
          sub_10009E4E4();
          v30 = *(v32 + 8);
          v30(v25, v11);
          v30(v26, v11);
          return;
        }

        goto LABEL_19;
      }

LABEL_18:
      __break(1u);
LABEL_19:
      __break(1u);
      return;
    }

    __break(1u);
    goto LABEL_18;
  }

  v8 = v10;
LABEL_5:
  sub_10001259C(v8, &qword_1001BD600);
  if (qword_1001B9270 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  sub_10000D298(v21, qword_1001B99B8);
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&_mh_execute_header, v22, v23, "Failed to report done metric - either session start or end date not available", v24, 2u);
  }
}

void sub_10000F3A8()
{
  v1 = type metadata accessor for PasswordSharingModel();
  __chkstk_darwin(v1);
  v41 = &v36 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100005DCC(&unk_1001BBAA0);
  __chkstk_darwin(v3 - 8);
  v5 = &v36 - v4;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v10 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v36 - v11;
  v42 = v0;
  v13 = (v0 + OBJC_IVAR____TtC18SharingViewService25PasswordSharingInteractor_model);
  swift_beginAccess();
  v14 = v13[1];
  if (v14)
  {
    v15 = *v13;
    sub_100005EB8(v13 + *(v1 + 20), v5, &unk_1001BBAA0);
    if ((*(v7 + 48))(v5, 1, v6) != 1)
    {
      v26 = v7;
      v38 = *(v7 + 32);
      v38(v12, v5, v6);
      v27 = objc_allocWithZone(SFClient);

      v41 = [v27 init];
      v40 = String._bridgeToObjectiveC()();
      v37 = v15;
      isa = UUID._bridgeToObjectiveC()().super.isa;
      (*(v26 + 16))(v10, v12, v6);
      v28 = (*(v26 + 80) + 32) & ~*(v26 + 80);
      v29 = (v8 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
      v30 = swift_allocObject();
      v31 = v38;
      *(v30 + 16) = v37;
      *(v30 + 24) = v14;
      v31(v30 + v28, v10, v6);
      *(v30 + v29) = v42;
      aBlock[4] = sub_10001248C;
      aBlock[5] = v30;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10000FD88;
      aBlock[3] = &unk_10018FF10;
      v32 = _Block_copy(aBlock);

      v34 = v40;
      v33 = v41;
      v35 = isa;
      [v41 displayStringForContactIdentifierSync:v40 deviceIdentifier:isa completion:v32];
      _Block_release(v32);

      [v33 invalidate];
      (*(v26 + 8))(v12, v6);
      return;
    }

    sub_10001259C(v5, &unk_1001BBAA0);
  }

  if (qword_1001B9270 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  sub_10000D298(v16, qword_1001B99B8);

  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    aBlock[0] = v20;
    *v19 = 136315138;
    v21 = v41;
    sub_100011F90(v13, v41);
    v22 = sub_10000B660();
    v24 = v23;
    sub_100011FF4(v21);
    v25 = sub_10002065C(v22, v24, aBlock);

    *(v19 + 4) = v25;
    _os_log_impl(&_mh_execute_header, v17, v18, "Could not resolve display string for model: %s", v19, 0xCu);
    sub_1000083B0(v20);
  }
}

void sub_10000F8BC(uint64_t a1, unint64_t a2, char a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8)
{
  v42 = a5;
  v15 = type metadata accessor for UUID();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a4)
  {
    if (qword_1001B9270 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_10000D298(v19, qword_1001B99B8);
    (*(v16 + 16))(v18, a7, v15);

    swift_errorRetain();
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v44[0] = swift_slowAlloc();
      *v22 = 136315650;
      *(v22 + 4) = sub_10002065C(v42, a6, v44);
      *(v22 + 12) = 2080;
      sub_100012554(&qword_1001BBAB0, &type metadata accessor for UUID);
      v23 = dispatch thunk of CustomStringConvertible.description.getter();
      v25 = v24;
      (*(v16 + 8))(v18, v15);
      v26 = sub_10002065C(v23, v25, v44);

      *(v22 + 14) = v26;
      *(v22 + 22) = 2080;
      v43 = a4;
      swift_errorRetain();
      sub_100005DCC(&qword_1001B9C28);
      v27 = String.init<A>(reflecting:)();
      v29 = sub_10002065C(v27, v28, v44);

      *(v22 + 24) = v29;
      _os_log_impl(&_mh_execute_header, v20, v21, "Failed to get display string for contactID %s, deviceID %s with error: %s", v22, 0x20u);
      swift_arrayDestroy();
    }

    else
    {

      (*(v16 + 8))(v18, v15);
    }
  }

  else
  {
    if (qword_1001B9270 != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    sub_10000D298(v30, qword_1001B99B8);

    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v44[0] = v34;
      *v33 = 136315394;
      if (a2)
      {
        v35 = a1;
      }

      else
      {
        v35 = 0xD000000000000015;
      }

      if (a2)
      {
        v36 = a2;
      }

      else
      {
        v36 = 0x8000000100145470;
      }

      v37 = sub_10002065C(v35, v36, v44);

      *(v33 + 4) = v37;
      *(v33 + 12) = 1024;
      *(v33 + 14) = a3 & 1;
      _os_log_impl(&_mh_execute_header, v31, v32, "Resolved display string %s (display string is device name: %{BOOL}d)", v33, 0x12u);
      sub_1000083B0(v34);
    }

    v38 = a8 + OBJC_IVAR____TtC18SharingViewService25PasswordSharingInteractor_model;
    swift_beginAccess();
    v39 = type metadata accessor for PasswordSharingModel();
    v40 = (v38 + *(v39 + 24));
    *v40 = a1;
    v40[1] = a2;
    *(v38 + *(v39 + 28)) = a3 & 1;
  }
}

uint64_t sub_10000FD88(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = *(a1 + 32);
  if (a2)
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
  v6(v7, v9, a3, a4);
}

void sub_10000FE30()
{
  v1 = v0;
  if (qword_1001B9270 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000D298(v2, qword_1001B99B8);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Requester no longer needs password", v5, 2u);
  }

  if (*(v0 + OBJC_IVAR____TtC18SharingViewService25PasswordSharingInteractor_shareState) <= 2u)
  {
    if (*(v0 + OBJC_IVAR____TtC18SharingViewService25PasswordSharingInteractor_shareState))
    {
      if (*(v0 + OBJC_IVAR____TtC18SharingViewService25PasswordSharingInteractor_shareState) == 1)
      {
        v6 = Logger.logObject.getter();
        v7 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v6, v7))
        {
          v8 = swift_slowAlloc();
          *v8 = 0;
          _os_log_impl(&_mh_execute_header, v6, v7, "Password sharing is in progress, abort", v8, 2u);
        }

        *(v1 + OBJC_IVAR____TtC18SharingViewService25PasswordSharingInteractor_shareErrorCode) = -71166;
        v15 = [objc_allocWithZone(NSError) initWithDomain:NSOSStatusErrorDomain code:-71166 userInfo:0];
        sub_100011080(0, v15);
      }

      else
      {
        v12 = Logger.logObject.getter();
        v13 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v12, v13))
        {
          v14 = swift_slowAlloc();
          *v14 = 0;
          _os_log_impl(&_mh_execute_header, v12, v13, "Password already sent, assume we are missing remote ack and assume success", v14, 2u);
        }

        *(v1 + OBJC_IVAR____TtC18SharingViewService25PasswordSharingInteractor_missingRemoteAck) = 1;

        sub_100011080(1, 0);
      }
    }

    else
    {
      v9 = Logger.logObject.getter();
      v10 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        *v11 = 0;
        _os_log_impl(&_mh_execute_header, v9, v10, "Password sharing has not started yet", v11, 2u);
      }

      if (swift_unknownObjectWeakLoadStrong())
      {
        sub_1000A4AB4(22);

        swift_unknownObjectRelease();
      }
    }
  }
}

void sub_100010194()
{
  v1 = v0;
  v2 = type metadata accessor for PasswordSharingModel();
  __chkstk_darwin(v2);
  v86 = &v84 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100005DCC(&qword_1001BD600);
  __chkstk_darwin(v4 - 8);
  v6 = &v84 - v5;
  v7 = sub_100005DCC(&unk_1001BBAA0);
  __chkstk_darwin(v7 - 8);
  v9 = &v84 - v8;
  v10 = [objc_allocWithZone(SFDevice) init];
  v11 = v1 + OBJC_IVAR____TtC18SharingViewService25PasswordSharingInteractor_model;
  swift_beginAccess();
  if (*(v11 + 8))
  {

    v12 = String._bridgeToObjectiveC()();
  }

  else
  {
    v12 = 0;
  }

  [v10 setContactIdentifier:v12];

  sub_100005EB8(v11 + v2[5], v9, &unk_1001BBAA0);
  v13 = type metadata accessor for UUID();
  v14 = *(v13 - 8);
  isa = 0;
  if ((*(v14 + 48))(v9, 1, v13) != 1)
  {
    isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(v14 + 8))(v9, v13);
  }

  [v10 setIdentifier:isa];

  v16 = String._bridgeToObjectiveC()();

  [v10 setRequestSSID:v16];

  if (qword_1001B9270 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  v18 = sub_10000D298(v17, qword_1001B99B8);
  v19 = v10;
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();
  v87 = v19;

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *v22 = 138412290;
    v24 = v87;
    *(v22 + 4) = v87;
    *v23 = v24;
    v25 = v24;
    _os_log_impl(&_mh_execute_header, v20, v21, "Start password sharing session with %@", v22, 0xCu);
    sub_10001259C(v23, &unk_1001BBA60);
  }

  v26 = *(v1 + OBJC_IVAR____TtC18SharingViewService25PasswordSharingInteractor_shareState);
  *(v1 + OBJC_IVAR____TtC18SharingViewService25PasswordSharingInteractor_shareState) = 1;
  sub_10000DD0C(v26);
  v27 = (v1 + OBJC_IVAR____TtC18SharingViewService25PasswordSharingInteractor_passwordSharingSession);
  if (*(v1 + OBJC_IVAR____TtC18SharingViewService25PasswordSharingInteractor_passwordSharingSession))
  {
    v28 = v27[1];
    v85 = v11;
    v29 = v2;
    v30 = v18;
    v31 = v1;
    v32 = v6;
    v33 = v27;
    ObjectType = swift_getObjectType();
    v35 = *(v28 + 184);
    swift_unknownObjectRetain();
    v35(ObjectType, v28);
    swift_unknownObjectRelease();
    v27 = v33;
    v6 = v32;
    v1 = v31;
    v18 = v30;
    v2 = v29;
    v11 = v85;
  }

  v36 = *(v1 + OBJC_IVAR____TtC18SharingViewService25PasswordSharingInteractor_passwordSessionGenerator);
  if (v36)
  {
    v85 = v27;

    v38 = v36(v37);
    v40 = v39;
    sub_100012050(v36);
    if (!*(v11 + v2[14] + 8))
    {
      v41 = Logger.logObject.getter();
      v42 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        *v43 = 0;
        _os_log_impl(&_mh_execute_header, v41, v42, "No device name?", v43, 2u);
      }
    }

    if (!*(v11 + v2[12] + 8))
    {
      v44 = Logger.logObject.getter();
      v45 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        *v46 = 0;
        _os_log_impl(&_mh_execute_header, v44, v45, "No email hash?", v46, 2u);
      }
    }

    if (!*(v11 + v2[13] + 8))
    {
      v47 = Logger.logObject.getter();
      v48 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        *v49 = 0;
        _os_log_impl(&_mh_execute_header, v47, v48, "No phone hash?", v49, 2u);
      }
    }

    v84 = v18;
    Date.init()();
    v50 = type metadata accessor for Date();
    (*(*(v50 - 8) + 56))(v6, 0, 1, v50);
    swift_beginAccess();
    sub_1000120E8(v6, v11 + v2[17]);
    swift_endAccess();
    v51 = swift_getObjectType();
    v52 = (v11 + v2[14]);
    v53 = *v52;
    v54 = v52[1];
    v55 = *(v40 + 16);

    v55(v53, v54, v51, v40);
    v56 = (v11 + v2[12]);
    v57 = *v56;
    v58 = v56[1];
    v59 = *(v40 + 40);

    v59(v57, v58, v51, v40);
    v60 = (v11 + v2[13]);
    v61 = *v60;
    v62 = v60[1];
    v63 = *(v40 + 64);

    v63(v61, v62, v51, v40);
    v64 = *(v40 + 112);
    v65 = v87;
    v66 = v87;
    v64(v65, v51, v40);
    v67 = swift_allocObject();
    swift_weakInit();
    v68 = *(v40 + 136);

    v68(sub_10001236C, v67, v51, v40);

    v69 = swift_allocObject();
    *(v69 + 24) = v40;
    swift_unknownObjectWeakInit();
    v70 = *(v40 + 160);
    swift_unknownObjectRetain();

    v70(sub_1000123AC, v69, v51, v40);

    v71 = v86;
    sub_100011F90(v11, v86);
    LOBYTE(v65) = sub_1000093C8();
    sub_100011FF4(v71);
    if (v65)
    {
      if (!*(v11 + v2[15] + 8))
      {
        v72 = Logger.logObject.getter();
        v73 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v72, v73))
        {
          v74 = swift_slowAlloc();
          *v74 = 0;
          _os_log_impl(&_mh_execute_header, v72, v73, "No PSK for hotspot?", v74, 2u);
        }
      }

      v75 = (v11 + v2[15]);
      v76 = *v75;
      v77 = v75[1];
      v78 = *(v40 + 88);

      v78(v76, v77, v51, v40);
    }

    (*(v40 + 176))(v51, v40);

    swift_unknownObjectRelease();
    v79 = v85;
    *v85 = v38;
    v79[1] = v40;
    swift_unknownObjectRelease();
  }

  else
  {
    v80 = Logger.logObject.getter();
    v81 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v80, v81))
    {
      v82 = swift_slowAlloc();
      *v82 = 0;
      _os_log_impl(&_mh_execute_header, v80, v81, "Failed to create a password sharing session - aborting", v82, 2u);
    }

    *(v1 + OBJC_IVAR____TtC18SharingViewService25PasswordSharingInteractor_shareErrorCode) = -6762;
    v83 = [objc_allocWithZone(NSError) initWithDomain:NSOSStatusErrorDomain code:-6762 userInfo:0];
    sub_100011080(0, v83);
  }
}

uint64_t sub_100010BF4(int a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_100010CF8(a1, a2);
  }

  return result;
}

uint64_t sub_100010C68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = *(a3 + 24);
    ObjectType = swift_getObjectType();
    (*(v5 + 192))(0xD000000000000020, 0x8000000100145410, ObjectType, v5);
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_100010CF8(int a1, uint64_t a2)
{
  v3 = v2;
  sub_100012158(a1);
  v6 = String.init(cString:)();
  v8 = v7;
  if (a2)
  {
    v9 = Dictionary.description.getter();
    v11 = v10;
  }

  else
  {
    v11 = 0xE300000000000000;
    v9 = 7104878;
  }

  if (qword_1001B9270 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_10000D298(v12, qword_1001B99B8);

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v26 = v3;
    v15 = swift_slowAlloc();
    v27[0] = swift_slowAlloc();
    *v15 = 136315394;
    v16 = sub_10002065C(v6, v8, v27);

    *(v15 + 4) = v16;
    *(v15 + 12) = 2080;
    v17 = sub_10002065C(v9, v11, v27);

    *(v15 + 14) = v17;
    _os_log_impl(&_mh_execute_header, v13, v14, "Got password sharing progress event: %s with info: %s", v15, 0x16u);
    swift_arrayDestroy();

    v3 = v26;
  }

  else
  {
  }

  if (a1 == 20)
  {
    if (a2)
    {
      *&v28 = 28517;
      *(&v28 + 1) = 0xE200000000000000;
      AnyHashable.init<A>(_:)();
      if (*(a2 + 16))
      {
        v19 = sub_100032C7C(v27);
        if (v20)
        {
          sub_10000BFEC(*(a2 + 56) + 32 * v19, &v28);
          sub_10000BF98(v27);
          if (*(&v29 + 1))
          {
            sub_1000122EC(0, &qword_1001B9C30);
            if (swift_dynamicCast())
            {
              v21 = 0;
              v22 = v27[0];
              v23 = 4;
LABEL_24:
              v24 = *(v3 + OBJC_IVAR____TtC18SharingViewService25PasswordSharingInteractor_shareState);
              *(v3 + OBJC_IVAR____TtC18SharingViewService25PasswordSharingInteractor_shareState) = v23;
              sub_10000DD0C(v24);
              v25 = v22;
              sub_100011080(v21, v22);

              return;
            }

LABEL_23:
            v22 = 0;
            v21 = 1;
            v23 = 3;
            goto LABEL_24;
          }

LABEL_22:
          sub_10001259C(&v28, &qword_1001BBB40);
          goto LABEL_23;
        }
      }

      sub_10000BF98(v27);
    }

    v28 = 0u;
    v29 = 0u;
    goto LABEL_22;
  }

  if (a1 == 82)
  {
    v18 = *(v3 + OBJC_IVAR____TtC18SharingViewService25PasswordSharingInteractor_shareState);
    *(v3 + OBJC_IVAR____TtC18SharingViewService25PasswordSharingInteractor_shareState) = 2;

    sub_10000DD0C(v18);
  }
}

void sub_100011080(char a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_100005DCC(&qword_1001BD600);
  __chkstk_darwin(v6 - 8);
  v8 = &v34[-1] - v7;
  Date.init()();
  v9 = type metadata accessor for Date();
  (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
  v10 = v3 + OBJC_IVAR____TtC18SharingViewService25PasswordSharingInteractor_model;
  swift_beginAccess();
  v11 = type metadata accessor for PasswordSharingModel();
  sub_1000120E8(v8, v10 + *(v11 + 72));
  swift_endAccess();
  if ((a1 & 1) == 0)
  {
    if (!a2)
    {
      [objc_allocWithZone(NSError) initWithDomain:NSOSStatusErrorDomain code:-6700 userInfo:0];
    }

    swift_errorRetain();
    if (qword_1001B9270 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_10000D298(v19, qword_1001B99B8);
    swift_errorRetain();
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v33 = a2;
      v34[0] = v23;
      *v22 = 136315138;
      swift_errorRetain();
      sub_100005DCC(&qword_1001B9C28);
      v24 = String.init<A>(reflecting:)();
      v26 = sub_10002065C(v24, v25, v34);

      *(v22 + 4) = v26;
      _os_log_impl(&_mh_execute_header, v20, v21, "Failed to share password with error: %s", v22, 0xCu);
      sub_1000083B0(v23);
    }

    if (!swift_unknownObjectWeakLoadStrong())
    {

      goto LABEL_27;
    }

    sub_10007553C();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v27 = sub_100070288();
      if (v27)
      {
        v28 = v27;
        v29 = String._bridgeToObjectiveC()();
        [v28 setIdleTimerDisabled:0 forReason:v29];

        swift_unknownObjectRelease();
      }

      else
      {
      }

      swift_unknownObjectRelease();
    }

    else
    {
    }

    goto LABEL_26;
  }

  if (qword_1001B9270 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_10000D298(v12, qword_1001B99B8);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "Successfully shared password", v15, 2u);
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_1000752B8();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v16 = sub_100070288();
      if (v16)
      {
        v17 = v16;
        v18 = String._bridgeToObjectiveC()();
        [v17 setIdleTimerDisabled:0 forReason:v18];

        swift_unknownObjectRelease();
      }

      swift_unknownObjectRelease();
    }

LABEL_26:
    swift_unknownObjectRelease();
  }

LABEL_27:
  sub_10000EF00();
  if (*(v3 + OBJC_IVAR____TtC18SharingViewService25PasswordSharingInteractor_passwordSharingSession))
  {
    v30 = *(v3 + OBJC_IVAR____TtC18SharingViewService25PasswordSharingInteractor_passwordSharingSession + 8);
    ObjectType = swift_getObjectType();
    v32 = *(v30 + 184);
    swift_unknownObjectRetain();
    v32(ObjectType, v30);
    swift_unknownObjectRelease();
  }
}

void sub_10001157C()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v27 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v25 = *(v5 - 8);
  v26 = v5;
  __chkstk_darwin(v5);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for DispatchTime();
  v8 = *(v24 - 8);
  v9 = __chkstk_darwin(v24);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v23 - v12;
  v14 = type metadata accessor for PasswordSharingModel();
  __chkstk_darwin(v14 - 8);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = OBJC_IVAR____TtC18SharingViewService25PasswordSharingInteractor_model;
  swift_beginAccess();
  sub_100011F90(v1 + v17, v16);
  v18 = sub_10000967C();
  sub_100011FF4(v16);
  if (((1 << v18) & 0xD6) != 0)
  {
    sub_1000122EC(0, &qword_1001BCE90);
    v19 = static OS_dispatch_queue.main.getter();
    static DispatchTime.now()();
    + infix(_:_:)();
    v23 = *(v8 + 8);
    v20 = v24;
    v23(v11, v24);
    aBlock[4] = sub_100012060;
    aBlock[5] = v1;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10001C544;
    aBlock[3] = &unk_10018FE70;
    v21 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_100012554(&qword_1001BA7C0, &type metadata accessor for DispatchWorkItemFlags);
    sub_100005DCC(&unk_1001BBA90);
    sub_100012084();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
    _Block_release(v21);

    (*(v27 + 8))(v4, v2);
    (*(v25 + 8))(v7, v26);
    v23(v13, v20);
  }

  else if (((1 << v18) & 0x28) != 0)
  {
    v22 = [objc_allocWithZone(NSError) initWithDomain:NSOSStatusErrorDomain code:-6700 userInfo:0];
    sub_100011080(0, v22);
  }
}

uint64_t sub_100011A00()
{
  sub_100011FF4(v0 + OBJC_IVAR____TtC18SharingViewService25PasswordSharingInteractor_model);
  sub_100012604(v0 + OBJC_IVAR____TtC18SharingViewService25PasswordSharingInteractor_delegate);
  sub_100012050(*(v0 + OBJC_IVAR____TtC18SharingViewService25PasswordSharingInteractor_passwordSessionGenerator));
  sub_100012050(*(v0 + OBJC_IVAR____TtC18SharingViewService25PasswordSharingInteractor_requesterStateObserverGenerator));
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for PasswordSharingInteractor()
{
  result = qword_1001B9A20;
  if (!qword_1001B9A20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100011B10()
{
  result = type metadata accessor for PasswordSharingModel();
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

uint64_t getEnumTagSinglePayload for SDRunState(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for SDRunState(uint64_t result, unsigned int a2, unsigned int a3)
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

Swift::Int sub_100011D90()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_100011E04()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

unint64_t sub_100011E48@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100011F80(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100011E80()
{
  v1 = *v0;
  v2 = 0x64696C61766E49;
  v3 = 0x64726F7773736150;
  v4 = 0x6564656563637553;
  if (v1 != 3)
  {
    v4 = 0x64656C696146;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6572676F72506E49;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_100011F2C()
{
  result = qword_1001B9C20;
  if (!qword_1001B9C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001B9C20);
  }

  return result;
}

unint64_t sub_100011F80(unint64_t result)
{
  if (result >= 5)
  {
    return 5;
  }

  return result;
}

uint64_t sub_100011F90(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PasswordSharingModel();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100011FF4(uint64_t a1)
{
  v2 = type metadata accessor for PasswordSharingModel();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100012050(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_10001206C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_100012084()
{
  result = qword_1001BA7D0;
  if (!qword_1001BA7D0)
  {
    sub_1000072B0(&unk_1001BBA90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001BA7D0);
  }

  return result;
}

uint64_t sub_1000120E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005DCC(&qword_1001BD600);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

const char *sub_100012158(int a1)
{
  if (a1 <= 49)
  {
    if (a1 > 30)
    {
      if (a1 <= 32)
      {
        if (a1 == 31)
        {
          return "SessionStarted";
        }

        else
        {
          return "SessionEnded";
        }
      }

      if (a1 == 33)
      {
        return "SessionSecured";
      }

      if (a1 == 40)
      {
        return "PreAuthStart";
      }
    }

    else if (a1 > 19)
    {
      if (a1 == 20)
      {
        return "Final";
      }

      if (a1 == 30)
      {
        return "Error";
      }
    }

    else
    {
      if (!a1)
      {
        return "Invalid";
      }

      if (a1 == 10)
      {
        return "Start";
      }
    }

    return "?";
  }

  if (a1 <= 81)
  {
    if (a1 > 69)
    {
      if (a1 == 70)
      {
        return "SecurityFinished";
      }

      if (a1 == 80)
      {
        return "PasswordSending";
      }
    }

    else
    {
      if (a1 == 50)
      {
        return "PreAuthFinish";
      }

      if (a1 == 60)
      {
        return "SecurityStart";
      }
    }

    return "?";
  }

  if (a1 > 83)
  {
    switch(a1)
    {
      case 'T':
        return "PasswordAccepted";
      case 'V':
        return "PasswordDeclined";
      case 'd':
        return "Finished";
    }

    return "?";
  }

  if (a1 == 82)
  {
    return "PasswordSent";
  }

  else
  {
    return "PasswordReceived";
  }
}

uint64_t sub_1000122EC(uint64_t a1, unint64_t *a2)
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

uint64_t sub_100012334()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100012374()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000123B4()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

void sub_10001248C(uint64_t a1, unint64_t a2, char a3, uint64_t a4)
{
  v9 = *(type metadata accessor for UUID() - 8);
  v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v11 = *(v4 + 16);
  v12 = *(v4 + 24);
  v13 = *(v4 + ((*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_10000F8BC(a1, a2, a3, a4, v11, v12, v4 + v10, v13);
}

uint64_t sub_100012554(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10001259C(uint64_t a1, uint64_t *a2)
{
  v3 = sub_100005DCC(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100012634()
{
  v0 = type metadata accessor for Logger();
  sub_10000D378(v0, qword_1001B9C38);
  v1 = sub_10000D298(v0, qword_1001B9C38);
  if (qword_1001B92C0 != -1)
  {
    swift_once();
  }

  v2 = sub_10000D298(v0, qword_1001C38E8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_1000127D8(char a1, uint64_t a2, uint64_t (*a3)(uint64_t), SEL *a4, const char *a5)
{
  v16.receiver = v5;
  v16.super_class = a3(a2);
  objc_msgSendSuper2(&v16, *a4, a1 & 1);
  if (qword_1001B9278 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_10000D298(v9, qword_1001B9C38);
  v10 = v5;
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
    _os_log_impl(&_mh_execute_header, v11, v12, a5, v13, 0xCu);
    sub_10001259C(v14, &unk_1001BBA60);
  }
}

void sub_100012A88(uint64_t a1, uint64_t (*a2)(void), void *a3)
{
  v95.receiver = v3;
  v95.super_class = a2();
  objc_msgSendSuper2(&v95, "viewDidLoad");
  v5 = &v3[*a3];
  v6 = *(v5 + 9);
  v103 = *(v5 + 8);
  v104 = v6;
  v7 = *(v5 + 11);
  v8 = *(v5 + 8);
  v9 = *(v5 + 9);
  v105 = *(v5 + 10);
  v106 = v7;
  v10 = *(v5 + 3);
  v11 = *(v5 + 5);
  v99 = *(v5 + 4);
  v100 = v11;
  v12 = *(v5 + 7);
  v13 = *(v5 + 5);
  v101 = *(v5 + 6);
  v102 = v12;
  v14 = *(v5 + 1);
  v96[0] = *v5;
  v96[1] = v14;
  v15 = *(v5 + 3);
  v97 = *(v5 + 2);
  v98 = v15;
  v16 = *(v5 + 5);
  v66 = *(v5 + 4);
  v67 = v16;
  v68 = *(v5 + 6);
  v17 = *(v5 + 1);
  v62 = *v5;
  v63 = v17;
  v18 = *(v5 + 3);
  v64 = *(v5 + 2);
  v65 = v18;
  v19 = *(v5 + 11);
  v52 = *(v5 + 10);
  v53 = v19;
  v20 = *(v5 + 9);
  v50 = *(v5 + 8);
  v51 = v20;
  v107[3] = v10;
  v107[2] = v97;
  v107[1] = v14;
  v107[0] = v96[0];
  v107[6] = v101;
  *&v69 = *(v5 + 14);
  v21 = *(&v102 + 1);
  v22 = *(v5 + 14);
  v107[5] = v13;
  v107[4] = v99;
  v113 = *(v5 + 11);
  v112 = v105;
  v111 = v9;
  v110 = v8;
  v108 = v22;
  v109 = *(&v102 + 1);
  v87 = v66;
  v88 = v67;
  v89 = v68;
  v83 = v62;
  v84 = v63;
  v85 = v64;
  v86 = v65;
  *&v90 = v69;
  *(&v90 + 1) = *(&v102 + 1);
  v93 = v52;
  v94 = v19;
  v91 = v50;
  v92 = v20;
  if (sub_100013CE0(v107) == 1)
  {
    sub_100005EB8(v96, v74, &qword_1001B9CF8);
    sub_10001259C(&v83, &qword_1001B9CF8);
  }

  else
  {
    sub_100005EB8(v96, v74, &qword_1001B9CF8);
    sub_10001259C(&v83, &qword_1001B9CF8);
    [v3 setDismissalType:v21];
  }

  v23 = *(v5 + 9);
  v24 = *(v5 + 7);
  v79 = *(v5 + 8);
  v80 = v23;
  v25 = *(v5 + 9);
  v26 = *(v5 + 11);
  v81 = *(v5 + 10);
  v82 = v26;
  v27 = *(v5 + 5);
  v28 = *(v5 + 3);
  v75 = *(v5 + 4);
  v76 = v27;
  v29 = *(v5 + 5);
  v30 = *(v5 + 7);
  v77 = *(v5 + 6);
  v78 = v30;
  v31 = *(v5 + 1);
  v74[0] = *v5;
  v74[1] = v31;
  v32 = *(v5 + 3);
  v34 = *v5;
  v33 = *(v5 + 1);
  v74[2] = *(v5 + 2);
  v74[3] = v32;
  v35 = *(v5 + 9);
  v70 = *(v5 + 8);
  v71 = v35;
  v36 = *(v5 + 11);
  v72 = *(v5 + 10);
  v73 = v36;
  v37 = *(v5 + 5);
  v66 = *(v5 + 4);
  v67 = v37;
  v38 = *(v5 + 7);
  v68 = *(v5 + 6);
  v69 = v38;
  v39 = *(v5 + 1);
  v40 = *(v5 + 2);
  v62 = *v5;
  v63 = v39;
  v41 = *(v5 + 3);
  v64 = *(v5 + 2);
  v65 = v41;
  v91 = v79;
  v92 = v25;
  v42 = *(v5 + 11);
  v93 = v81;
  v94 = v42;
  v87 = v75;
  v88 = v29;
  v89 = v77;
  v90 = v24;
  v83 = v34;
  v84 = v33;
  v85 = v40;
  v86 = v28;
  if (sub_100013CE0(&v83) == 1)
  {
    v58 = v70;
    v59 = v71;
    v60 = v72;
    v61 = v73;
    v54 = v66;
    v55 = v67;
    v56 = v68;
    v57 = v69;
    v50 = v62;
    v51 = v63;
    v52 = v64;
    v53 = v65;
    sub_100005EB8(v74, v48, &qword_1001B9CF8);
    sub_10001259C(&v50, &qword_1001B9CF8);
  }

  else
  {
    v49[0] = v70;
    v49[1] = v71;
    v49[2] = v72;
    v49[3] = v73;
    v58 = v70;
    v59 = v71;
    v60 = v72;
    v61 = v73;
    v54 = v66;
    v55 = v67;
    v56 = v68;
    v57 = v69;
    v50 = v62;
    v51 = v63;
    v52 = v64;
    v53 = v65;
    sub_100005EB8(v74, v48, &qword_1001B9CF8);
    sub_100005EB8(v49, v48, &qword_1001B9D00);
    sub_10001259C(&v50, &qword_1001B9CF8);
    if (*(&v49[0] + 1))
    {
      v43 = String._bridgeToObjectiveC()();
      v44 = String._bridgeToObjectiveC()();
      v45 = String._bridgeToObjectiveC()();
      v46 = String._bridgeToObjectiveC()();
      sub_10001259C(v49, &qword_1001B9D00);
      v47 = [v3 dismissalConfirmationActionWithTitle:v43 message:v44 confirmButtonTitle:v45 cancelButtonTitle:v46];

      [v3 setDismissButtonAction:v47];
    }
  }
}

id sub_100013088(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = *(a3 + 144);
  v37 = *(a3 + 128);
  v38 = v7;
  v8 = *(a3 + 176);
  v39 = *(a3 + 160);
  v40 = v8;
  v9 = *(a3 + 80);
  v33 = *(a3 + 64);
  v34 = v9;
  v10 = *(a3 + 112);
  v35 = *(a3 + 96);
  v36 = v10;
  v11 = *(a3 + 16);
  v29 = *a3;
  v30 = v11;
  v12 = *(a3 + 48);
  v31 = *(a3 + 32);
  v32 = v12;
  nullsub_4(&v29);
  v13 = &v4[*a4];
  v14 = *(v13 + 9);
  v41[8] = *(v13 + 8);
  v41[9] = v14;
  v15 = *(v13 + 11);
  v41[10] = *(v13 + 10);
  v41[11] = v15;
  v16 = *(v13 + 5);
  v41[4] = *(v13 + 4);
  v41[5] = v16;
  v17 = *(v13 + 7);
  v41[6] = *(v13 + 6);
  v41[7] = v17;
  v18 = *(v13 + 1);
  v41[0] = *v13;
  v41[1] = v18;
  v19 = *(v13 + 3);
  v41[2] = *(v13 + 2);
  v41[3] = v19;
  v20 = v38;
  *(v13 + 8) = v37;
  *(v13 + 9) = v20;
  v21 = v40;
  *(v13 + 10) = v39;
  *(v13 + 11) = v21;
  v22 = v34;
  *(v13 + 4) = v33;
  *(v13 + 5) = v22;
  v23 = v36;
  *(v13 + 6) = v35;
  *(v13 + 7) = v23;
  v24 = v30;
  *v13 = v29;
  *(v13 + 1) = v24;
  v25 = v32;
  *(v13 + 2) = v31;
  *(v13 + 3) = v25;
  sub_100013C0C(a3, &v28);
  sub_10001259C(v41, &qword_1001B9CF8);
  v26 = String._bridgeToObjectiveC()();
  [v4 setTitle:v26];

  return [v4 setAttributedSubtitle:*(a3 + 40)];
}

id sub_1000131E8(char *a1, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t (*a6)(void))
{
  *&a1[*a4 + 8] = 0;
  swift_unknownObjectWeakInit();
  v10 = &a1[*a5];
  sub_100013C68(v19);
  v11 = v19[9];
  *(v10 + 8) = v19[8];
  *(v10 + 9) = v11;
  v12 = v19[11];
  *(v10 + 10) = v19[10];
  *(v10 + 11) = v12;
  v13 = v19[5];
  *(v10 + 4) = v19[4];
  *(v10 + 5) = v13;
  v14 = v19[7];
  *(v10 + 6) = v19[6];
  *(v10 + 7) = v14;
  v15 = v19[1];
  *v10 = v19[0];
  *(v10 + 1) = v15;
  v16 = v19[3];
  *(v10 + 2) = v19[2];
  *(v10 + 3) = v16;
  v18.receiver = a1;
  v18.super_class = a6();
  return objc_msgSendSuper2(&v18, "initWithContentView:", a3);
}

uint64_t sub_1000132CC(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  sub_100012604(a1 + *a3);
  v6 = (a1 + *a4);
  v7 = v6[9];
  v14[8] = v6[8];
  v14[9] = v7;
  v8 = v6[11];
  v14[10] = v6[10];
  v14[11] = v8;
  v9 = v6[5];
  v14[4] = v6[4];
  v14[5] = v9;
  v10 = v6[7];
  v14[6] = v6[6];
  v14[7] = v10;
  v11 = v6[1];
  v14[0] = *v6;
  v14[1] = v11;
  v12 = v6[3];
  v14[2] = v6[2];
  v14[3] = v12;
  return sub_10001259C(v14, &qword_1001B9CF8);
}

id sub_1000133B8()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v0[OBJC_IVAR____TtC18SharingViewService33D2DSetupBaseScannerViewController_presenter + 8] = 0;
  swift_unknownObjectWeakInit();
  v5 = &v0[OBJC_IVAR____TtC18SharingViewService33D2DSetupBaseScannerViewController_viewModel];
  sub_100013C68(v26);
  v6 = v26[9];
  *(v5 + 8) = v26[8];
  *(v5 + 9) = v6;
  v7 = v26[11];
  *(v5 + 10) = v26[10];
  *(v5 + 11) = v7;
  v8 = v26[5];
  *(v5 + 4) = v26[4];
  *(v5 + 5) = v8;
  v9 = v26[7];
  *(v5 + 6) = v26[6];
  *(v5 + 7) = v9;
  v10 = v26[1];
  *v5 = v26[0];
  *(v5 + 1) = v10;
  v11 = v26[3];
  *(v5 + 2) = v26[2];
  *(v5 + 3) = v11;
  v12 = [objc_allocWithZone(VPScannerProxCardViewController) init];
  v13 = qword_1001B9278;
  v14 = v12;
  if (v13 != -1)
  {
    swift_once();
  }

  v15 = sub_10000D298(v1, qword_1001B9C38);
  v16 = *(v2 + 16);
  v16(v4, v15, v1);
  v16(&v0[OBJC_IVAR____TtC18SharingViewService21ScannerViewController_log], v4, v1);
  v17 = &v0[OBJC_IVAR____TtC18SharingViewService21ScannerViewController_scannerEngineViewController];
  *v17 = v14;
  *(v17 + 1) = &off_100194B90;
  v18 = type metadata accessor for ScannerViewController();
  v25.receiver = v0;
  v25.super_class = v18;
  v19 = objc_msgSendSuper2(&v25, "initWithScannerEngine:", v14);
  (*(v2 + 8))(v4, v1);
  v20 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v24[4] = sub_100013CC0;
  v24[5] = v20;
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 1107296256;
  v24[2] = sub_10001372C;
  v24[3] = &unk_10018FFD8;
  v21 = _Block_copy(v24);
  v22 = v19;

  [v14 setScannedCodeHandler:v21];
  _Block_release(v21);

  return v22;
}

void sub_100013690(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    (*((swift_isaMask & *Strong) + 0x68))(a1, a2);
  }
}

uint64_t sub_10001372C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;

  v1(v2, v4);
}

uint64_t sub_100013900()
{
  sub_100012604(v0 + OBJC_IVAR____TtC18SharingViewService33D2DSetupBaseScannerViewController_presenter);
  v1 = *(v0 + OBJC_IVAR____TtC18SharingViewService33D2DSetupBaseScannerViewController_viewModel + 144);
  v8[8] = *(v0 + OBJC_IVAR____TtC18SharingViewService33D2DSetupBaseScannerViewController_viewModel + 128);
  v8[9] = v1;
  v2 = *(v0 + OBJC_IVAR____TtC18SharingViewService33D2DSetupBaseScannerViewController_viewModel + 176);
  v8[10] = *(v0 + OBJC_IVAR____TtC18SharingViewService33D2DSetupBaseScannerViewController_viewModel + 160);
  v8[11] = v2;
  v3 = *(v0 + OBJC_IVAR____TtC18SharingViewService33D2DSetupBaseScannerViewController_viewModel + 80);
  v8[4] = *(v0 + OBJC_IVAR____TtC18SharingViewService33D2DSetupBaseScannerViewController_viewModel + 64);
  v8[5] = v3;
  v4 = *(v0 + OBJC_IVAR____TtC18SharingViewService33D2DSetupBaseScannerViewController_viewModel + 112);
  v8[6] = *(v0 + OBJC_IVAR____TtC18SharingViewService33D2DSetupBaseScannerViewController_viewModel + 96);
  v8[7] = v4;
  v5 = *(v0 + OBJC_IVAR____TtC18SharingViewService33D2DSetupBaseScannerViewController_viewModel + 16);
  v8[0] = *(v0 + OBJC_IVAR____TtC18SharingViewService33D2DSetupBaseScannerViewController_viewModel);
  v8[1] = v5;
  v6 = *(v0 + OBJC_IVAR____TtC18SharingViewService33D2DSetupBaseScannerViewController_viewModel + 48);
  v8[2] = *(v0 + OBJC_IVAR____TtC18SharingViewService33D2DSetupBaseScannerViewController_viewModel + 32);
  v8[3] = v6;
  return sub_10001259C(v8, &qword_1001B9CF8);
}

id sub_10001399C(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t type metadata accessor for D2DSetupBaseScannerViewController()
{
  result = qword_1001B9CE8;
  if (!qword_1001B9CE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100013A94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  *(v5 + *a5 + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

id sub_100013ADC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 144);
  v35 = *(a3 + 128);
  v36 = v5;
  v6 = *(a3 + 176);
  v37 = *(a3 + 160);
  v38 = v6;
  v7 = *(a3 + 80);
  v31 = *(a3 + 64);
  v32 = v7;
  v8 = *(a3 + 112);
  v33 = *(a3 + 96);
  v34 = v8;
  v9 = *(a3 + 16);
  v27 = *a3;
  v28 = v9;
  v10 = *(a3 + 48);
  v29 = *(a3 + 32);
  v30 = v10;
  nullsub_4(&v27);
  v11 = &v3[OBJC_IVAR____TtC18SharingViewService33D2DSetupBaseScannerViewController_viewModel];
  v12 = *&v3[OBJC_IVAR____TtC18SharingViewService33D2DSetupBaseScannerViewController_viewModel + 144];
  v39[8] = *&v3[OBJC_IVAR____TtC18SharingViewService33D2DSetupBaseScannerViewController_viewModel + 128];
  v39[9] = v12;
  v13 = *&v3[OBJC_IVAR____TtC18SharingViewService33D2DSetupBaseScannerViewController_viewModel + 176];
  v39[10] = *&v3[OBJC_IVAR____TtC18SharingViewService33D2DSetupBaseScannerViewController_viewModel + 160];
  v39[11] = v13;
  v14 = *&v3[OBJC_IVAR____TtC18SharingViewService33D2DSetupBaseScannerViewController_viewModel + 80];
  v39[4] = *&v3[OBJC_IVAR____TtC18SharingViewService33D2DSetupBaseScannerViewController_viewModel + 64];
  v39[5] = v14;
  v15 = *&v3[OBJC_IVAR____TtC18SharingViewService33D2DSetupBaseScannerViewController_viewModel + 112];
  v39[6] = *&v3[OBJC_IVAR____TtC18SharingViewService33D2DSetupBaseScannerViewController_viewModel + 96];
  v39[7] = v15;
  v16 = *&v3[OBJC_IVAR____TtC18SharingViewService33D2DSetupBaseScannerViewController_viewModel + 16];
  v39[0] = *&v3[OBJC_IVAR____TtC18SharingViewService33D2DSetupBaseScannerViewController_viewModel];
  v39[1] = v16;
  v17 = *&v3[OBJC_IVAR____TtC18SharingViewService33D2DSetupBaseScannerViewController_viewModel + 48];
  v39[2] = *&v3[OBJC_IVAR____TtC18SharingViewService33D2DSetupBaseScannerViewController_viewModel + 32];
  v39[3] = v17;
  v18 = v36;
  *(v11 + 8) = v35;
  *(v11 + 9) = v18;
  v19 = v38;
  *(v11 + 10) = v37;
  *(v11 + 11) = v19;
  v20 = v32;
  *(v11 + 4) = v31;
  *(v11 + 5) = v20;
  v21 = v34;
  *(v11 + 6) = v33;
  *(v11 + 7) = v21;
  v22 = v28;
  *v11 = v27;
  *(v11 + 1) = v22;
  v23 = v30;
  *(v11 + 2) = v29;
  *(v11 + 3) = v23;
  sub_100013C0C(a3, &v26);
  sub_10001259C(v39, &qword_1001B9CF8);
  v24 = String._bridgeToObjectiveC()();
  [v3 setTitle:v24];

  return [v3 setAttributedSubtitle:*(a3 + 40)];
}

double sub_100013C68(_OWORD *a1)
{
  result = 0.0;
  a1[10] = 0u;
  a1[11] = 0u;
  a1[8] = 0u;
  a1[9] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t sub_100013C88()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100013CC8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100013CE0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void sub_100013CF8(char a1)
{
  v2 = v1;
  v19.receiver = v2;
  v19.super_class = type metadata accessor for TestMainController();
  objc_msgSendSuper2(&v19, "viewWillAppear:", a1 & 1);
  v4 = [objc_allocWithZone(SVSCommonNavController) init];
  v5 = OBJC_IVAR____TtC18SharingViewService18TestMainController_vcNav;
  v6 = *&v2[OBJC_IVAR____TtC18SharingViewService18TestMainController_vcNav];
  *&v2[OBJC_IVAR____TtC18SharingViewService18TestMainController_vcNav] = v4;
  v7 = v4;

  if (!v7)
  {
    __break(1u);
    goto LABEL_8;
  }

  [v7 setNavigationBarHidden:1];

  v8 = *&v2[v5];
  if (!v8)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  [v8 setModalPresentationStyle:4];
  v9 = *&v2[v5];
  if (!v9)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  [v9 setTransitioningDelegate:*&v2[v5]];
  v10 = objc_allocWithZone(sub_100005DCC(&qword_1001B9D38));
  v11 = UIHostingController.init(rootView:)();
  v12 = *&v2[v5];
  if (!v12)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v13 = v11;
  sub_100005DCC(&qword_1001BBB00);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_10016D240;
  *(v14 + 32) = v13;
  sub_1000140AC();
  v15 = v13;
  v16 = v12;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v16 setViewControllers:isa];

  v18 = *&v2[v5];
  if (v18)
  {
    [v2 presentViewController:v18 animated:1 completion:0];

    return;
  }

LABEL_11:
  __break(1u);
}

id sub_100014044()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TestMainController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_1000140AC()
{
  result = qword_1001BCEA0;
  if (!qword_1001BCEA0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1001BCEA0);
  }

  return result;
}

double sub_100014148@<D0>(uint64_t a1@<X8>)
{
  result = 9.04037669e223;
  *a1 = xmmword_10016D250;
  *(a1 + 16) = 0;
  *(a1 + 24) = &_swiftEmptyArrayStorage;
  return result;
}

uint64_t sub_1000141B0()
{
  v0 = type metadata accessor for Logger();
  sub_10000D378(v0, qword_1001B9D40);
  v1 = sub_10000D298(v0, qword_1001B9D40);
  if (qword_1001B92B0 != -1)
  {
    swift_once();
  }

  v2 = sub_10000D298(v0, qword_1001C38B8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_1000142E4(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v5 = a3;
  v6 = a4;

  sub_100016B08();
}

void sub_100014364(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;

  sub_100016B38();
}

id sub_1000143D4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for B389CardContainerViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_10001445C()
{
  if (qword_1001B9280 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000D298(v1, qword_1001B9D40);
  v2 = v0;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  v42 = v2;
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    *v5 = 136315650;
    v7 = &v2[OBJC_IVAR____TtC18SharingViewService25B389LinkingViewController_appleIDInfo];
    v8 = *&v2[OBJC_IVAR____TtC18SharingViewService25B389LinkingViewController_appleIDInfo + 8];
    if (v8 > 1)
    {
      v9 = *v7;
    }

    else
    {

      v8 = 0x8000000100145470;
      v9 = 0xD000000000000015;
    }

    v10 = sub_10002065C(v9, v8, &v43);

    *(v5 + 4) = v10;
    *(v5 + 12) = 2112;
    if (v7[1] == 1)
    {
      *(v5 + 14) = 0;
      *v6 = 0;
      *(v5 + 22) = 2080;
    }

    else
    {
      v11 = v7[2];
      if (v11)
      {
        v12 = v11;
      }

      else
      {
        v12 = 0;
      }

      *(v5 + 14) = v12;
      *v6 = v11;
      *(v5 + 22) = 2080;
      v13 = v7[4];
      if (v13)
      {
        v14 = v7[3];

        v15 = v14;
LABEL_16:
        v16 = sub_10002065C(v15, v13, &v43);

        *(v5 + 24) = v16;
        _os_log_impl(&_mh_execute_header, v3, v4, "Set appleIDInfo. username: %s, profilePic: %@, phoneNumber: %s", v5, 0x20u);
        sub_10001259C(v6, &unk_1001BBA60);

        swift_arrayDestroy();

        v2 = v42;
        goto LABEL_17;
      }
    }

    v13 = 0x8000000100145470;
    v15 = 0xD000000000000015;
    goto LABEL_16;
  }

LABEL_17:
  v17 = *&v2[OBJC_IVAR____TtC18SharingViewService25B389LinkingViewController_imageView];
  v18 = &v2[OBJC_IVAR____TtC18SharingViewService25B389LinkingViewController_appleIDInfo];
  if (*&v2[OBJC_IVAR____TtC18SharingViewService25B389LinkingViewController_appleIDInfo + 8] == 1 || (v19 = *(v18 + 2)) == 0)
  {
    v21 = String._bridgeToObjectiveC()();
    v20 = [objc_opt_self() systemImageNamed:v21];
  }

  else
  {
    v20 = v19;
  }

  [v17 setImage:v20];

  v22 = *(v18 + 1);
  if (v22 == 1)
  {
    v23 = 0;
    v22 = 0;
  }

  else
  {
    v23 = *(v18 + 4);
    if (v22)
    {
    }
  }

  sub_100005DCC(&qword_1001B9F48);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10016CCE0;
  *(inited + 32) = NSForegroundColorAttributeName;
  v25 = objc_opt_self();

  v41 = NSForegroundColorAttributeName;
  v26 = [v25 labelColor];
  v27 = sub_1000122EC(0, &qword_1001B9F50);
  *(inited + 64) = v27;
  *(inited + 40) = v26;
  sub_100004E20(inited);
  swift_setDeallocating();
  sub_10001259C(inited + 32, &qword_1001B9618);
  v28 = objc_allocWithZone(NSMutableAttributedString);
  v29 = String._bridgeToObjectiveC()();

  type metadata accessor for Key(0);
  sub_1000169FC();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v31 = [v28 initWithString:v29 attributes:isa];

  if (v22)
  {

    if (v23)
    {
      v32 = objc_allocWithZone(NSAttributedString);
      v33 = String._bridgeToObjectiveC()();
      v34 = [v32 initWithString:v33];

      [v31 appendAttributedString:v34];
    }
  }

  v35 = swift_initStackObject();
  *(v35 + 16) = xmmword_10016CCE0;
  *(v35 + 32) = v41;
  v36 = [v25 secondaryLabelColor];
  *(v35 + 64) = v27;
  *(v35 + 40) = v36;
  sub_100004E20(v35);
  swift_setDeallocating();
  sub_10001259C(v35 + 32, &qword_1001B9618);
  v37 = objc_allocWithZone(NSAttributedString);
  v38 = String._bridgeToObjectiveC()();

  v39 = Dictionary._bridgeToObjectiveC()().super.isa;

  v40 = [v37 initWithString:v38 attributes:v39];

  [v31 appendAttributedString:v40];
  [*&v42[OBJC_IVAR____TtC18SharingViewService25B389LinkingViewController_idLabel] setAttributedText:v31];
}

char *sub_100014AF4(void *a1)
{
  *&v1[OBJC_IVAR____TtC18SharingViewService25B389LinkingViewController_mainController] = 0;
  v3 = &v1[OBJC_IVAR____TtC18SharingViewService25B389LinkingViewController_appleIDInfo];
  *v3 = xmmword_10016D2F0;
  *(v3 + 3) = 0;
  *(v3 + 4) = 0;
  *(v3 + 2) = 0;
  v4 = OBJC_IVAR____TtC18SharingViewService25B389LinkingViewController_imageView;
  *&v1[v4] = [objc_allocWithZone(UIImageView) init];
  v5 = OBJC_IVAR____TtC18SharingViewService25B389LinkingViewController_idLabel;
  *&v1[v5] = [objc_allocWithZone(UILabel) init];
  v6 = OBJC_IVAR____TtC18SharingViewService25B389LinkingViewController_infoLabel;
  *&v1[v6] = [objc_allocWithZone(UILabel) init];
  v29.receiver = v1;
  v29.super_class = type metadata accessor for B389LinkingViewController();
  v7 = objc_msgSendSuper2(&v29, "initWithContentView:", 0);
  v8 = *&v7[OBJC_IVAR____TtC18SharingViewService25B389LinkingViewController_mainController];
  *&v7[OBJC_IVAR____TtC18SharingViewService25B389LinkingViewController_mainController] = a1;
  v9 = v7;
  v10 = a1;
  v11 = v9;
  v12 = v10;

  v13 = objc_opt_self();
  v14 = [v13 mainBundle];
  v15 = String._bridgeToObjectiveC()();
  v16 = String._bridgeToObjectiveC()();
  v17 = sub_1001279D0(v14, v15, v16);

  if (!v17)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = String._bridgeToObjectiveC()();
  }

  [v11 setTitle:v17];

  [v11 setDismissalType:1];
  v18 = [v13 mainBundle];
  v19 = String._bridgeToObjectiveC()();
  v20 = String._bridgeToObjectiveC()();
  v21 = sub_1001279D0(v18, v19, v20);

  if (!v21)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = String._bridgeToObjectiveC()();
  }

  v22 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v28[4] = sub_100016A8C;
  v28[5] = v22;
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 1107296256;
  v28[2] = sub_10001BE90;
  v28[3] = &unk_100190128;
  v23 = _Block_copy(v28);
  v24 = objc_opt_self();

  v25 = [v24 actionWithTitle:v21 style:0 handler:v23];

  _Block_release(v23);

  v26 = [v11 addAction:v25];

  return v11;
}

void sub_100014EA8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    Strong[OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_didAgreeToLinking] = 1;
  }

  swift_beginAccess();
  v1 = swift_unknownObjectWeakLoadStrong();
  if (v1)
  {
    v2 = v1;
    sub_100036D24();
  }
}

void sub_100014F34()
{
  v1 = v0;
  v63.receiver = v0;
  v63.super_class = type metadata accessor for B389LinkingViewController();
  objc_msgSendSuper2(&v63, "viewDidLoad");
  v2 = *&v0[OBJC_IVAR____TtC18SharingViewService25B389LinkingViewController_idLabel];
  v58 = objc_opt_self();
  v3 = [v58 systemFontOfSize:17.0];
  [v2 setFont:v3];

  [v2 setNumberOfLines:2];
  [v2 setTextAlignment:1];
  v4 = [v1 contentView];
  v5 = *&v1[OBJC_IVAR____TtC18SharingViewService25B389LinkingViewController_imageView];
  [v4 addSubview:v5];

  v6 = [v1 contentView];
  [v6 addSubview:v2];

  v7 = [v1 contentView];
  v8 = *&v1[OBJC_IVAR____TtC18SharingViewService25B389LinkingViewController_infoLabel];
  v60 = v8;
  [v7 addSubview:?];

  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
  v59 = v1;
  v9 = [v1 contentView];
  v10 = [v9 mainContentGuide];

  v61 = objc_opt_self();
  sub_100005DCC(&qword_1001BBB00);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_10016D300;
  v12 = [v5 widthAnchor];
  v13 = [v12 constraintEqualToConstant:80.0];

  *(v11 + 32) = v13;
  v14 = [v5 heightAnchor];
  v15 = [v14 constraintEqualToConstant:80.0];

  *(v11 + 40) = v15;
  v16 = [v5 topAnchor];
  v17 = [v10 topAnchor];
  v18 = [v16 constraintEqualToAnchor:v17];

  *(v11 + 48) = v18;
  v19 = [v5 centerXAnchor];
  v20 = [v10 centerXAnchor];
  v21 = [v19 constraintEqualToAnchor:v20];

  *(v11 + 56) = v21;
  v22 = [v2 topAnchor];
  v23 = [v5 bottomAnchor];
  v24 = [v22 constraintEqualToAnchor:v23 constant:10.0];

  *(v11 + 64) = v24;
  v25 = [v2 leadingAnchor];
  v26 = [v10 leadingAnchor];
  v27 = [v25 constraintEqualToAnchor:v26];

  *(v11 + 72) = v27;
  v28 = [v2 trailingAnchor];
  v29 = [v10 trailingAnchor];
  v30 = [v28 constraintEqualToAnchor:v29];

  *(v11 + 80) = v30;
  v31 = [v60 topAnchor];
  v32 = [v2 bottomAnchor];
  v33 = [v31 constraintEqualToAnchor:v32 constant:20.0];

  *(v11 + 88) = v33;
  v34 = [v60 leadingAnchor];
  v35 = [v10 leadingAnchor];
  v36 = [v34 constraintEqualToAnchor:v35];

  *(v11 + 96) = v36;
  v37 = [v60 trailingAnchor];
  v38 = [v10 trailingAnchor];
  v39 = [v37 constraintEqualToAnchor:v38];

  *(v11 + 104) = v39;
  v40 = [v60 bottomAnchor];
  v41 = [v10 bottomAnchor];
  v42 = [v40 constraintEqualToAnchor:v41 constant:-10.0];

  *(v11 + 112) = v42;
  sub_1000122EC(0, &qword_1001B9968);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v61 activateConstraints:isa];

  [v60 setAdjustsFontSizeToFitWidth:1];
  [v60 setNumberOfLines:0];
  v44 = [objc_opt_self() labelColor];
  [v60 setTextColor:v44];

  [v60 setTextAlignment:1];
  v45 = [objc_opt_self() defaultFontDescriptorWithTextStyle:UIFontTextStyleBody];
  if (v45)
  {
    v46 = v45;
    v47 = [v45 fontDescriptorWithSymbolicTraits:0x8000];

    aBlock[6] = v47;
    sub_100005DCC(&qword_1001BBBA0);
    Optional.unwrap(_:file:line:)();

    v48 = aBlock[0];
    v49 = [v58 fontWithDescriptor:aBlock[0] size:16.0];
    [v60 setFont:v49];
    v50 = [objc_opt_self() mainBundle];
    v51 = String._bridgeToObjectiveC()();
    v52 = String._bridgeToObjectiveC()();
    v53 = sub_1001279D0(v50, v51, v52);

    if (!v53)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v53 = String._bridgeToObjectiveC()();
    }

    [v60 setText:v53];

    v54 = swift_allocObject();
    swift_unknownObjectWeakInit();

    v55 = String._bridgeToObjectiveC()();
    aBlock[4] = sub_100016CB4;
    aBlock[5] = v54;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10001BE90;
    aBlock[3] = &unk_100190178;
    v56 = _Block_copy(aBlock);
    v57 = [objc_opt_self() actionWithTitle:v55 style:0 handler:v56];

    _Block_release(v56);

    [v59 setDismissButtonAction:v57];
  }

  else
  {
    __break(1u);
  }
}

void sub_1000158EC()
{
  if (qword_1001B9280 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10000D298(v0, qword_1001B9D40);

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v13[0] = v4;
    *v3 = 136315138;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();

    if (!Strong)
    {
      goto LABEL_12;
    }

    swift_getObjectType();

    v6 = _typeName(_:qualified:)();
    v8 = sub_10002065C(v6, v7, v13);

    *(v3 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v1, v2, "dismissPressed in %s", v3, 0xCu);
    sub_1000083B0(v4);
  }

  else
  {
  }

  swift_beginAccess();
  v9 = swift_unknownObjectWeakLoadStrong();
  if (v9)
  {
    v10 = v9;
    v11 = *(v9 + OBJC_IVAR____TtC18SharingViewService25B389LinkingViewController_mainController);
    v12 = v11;

    if (v11)
    {
      [v12 dismiss:5];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_12:
  __break(1u);
}

void sub_100015C2C(char a1)
{
  v2 = v1;
  v4 = type metadata accessor for URL();
  v94 = *(v4 - 8);
  v95 = v4;
  v5 = __chkstk_darwin(v4);
  v93 = &v90 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v96 = &v90 - v7;
  v8 = type metadata accessor for B389LoadingViewController();
  v97.receiver = v2;
  v97.super_class = v8;
  objc_msgSendSuper2(&v97, "viewWillAppear:", a1 & 1);
  v9 = sub_1000A1F84(v2, 0, 390.0);
  v11 = v10;

  v12 = [v2 containerView];
  [v12 setSwipeDismissible:0];

  [v2 setModalPresentationStyle:4];
  v13 = [v2 containerView];
  isa = setupTitleLabel(inContainerView:textAlignment:)(v13, NSTextAlignmentCenter).super.super.super.isa;

  v15 = OBJC_IVAR____TtC18SharingViewService25B389LoadingViewController_titleLabel;
  v16 = *&v2[OBJC_IVAR____TtC18SharingViewService25B389LoadingViewController_titleLabel];
  *&v2[OBJC_IVAR____TtC18SharingViewService25B389LoadingViewController_titleLabel] = isa;
  v92 = isa;

  v17 = [v2 containerView];
  v18 = setupXButton(inContainerView:)(v17).super.super.super.super.isa;

  v91 = v18;
  [(objc_class *)v18 addTarget:v2 action:"dismissPressed:" forControlEvents:64];
  v19 = [v2 containerView];
  v20 = *&v2[OBJC_IVAR____TtC18SharingViewService25B389LoadingViewController_connectingLabel];
  setupBottomLabel(inContainerView:forLabel:)(v19, v20);

  v21 = [v2 containerView];
  v22 = String._bridgeToObjectiveC()();
  v23 = sub_100127AD0(v22);

  v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v26 = v25;

  v27 = [v20 topAnchor];
  v28 = objc_allocWithZone(type metadata accessor for TextSpinner());
  v29 = sub_1000A88C0(100, v24, v26);
  [v29 setTranslatesAutoresizingMaskIntoConstraints:0];
  v30 = v29;
  [v30 setDistribution:0];
  [v30 setAlignment:3];
  [v30 setSpacing:7.0];

  [v21 addSubview:v30];
  sub_100005DCC(&qword_1001BBB00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10016D310;
  v32 = [v30 heightAnchor];
  v33 = [v32 constraintEqualToConstant:50.0];

  *(inited + 32) = v33;
  v34 = [v30 centerXAnchor];
  v35 = [v21 centerXAnchor];
  v36 = [v34 constraintEqualToAnchor:v35];

  *(inited + 40) = v36;
  v37 = [v30 bottomAnchor];

  v38 = [v37 constraintEqualToAnchor:v27 constant:-8.0];
  *(inited + 48) = v38;
  v39 = inited & 0xC000000000000001;
  if ((inited & 0xC000000000000001) != 0)
  {
    v40 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_27;
    }

    v40 = *(inited + 32);
  }

  v42 = v40;
  LODWORD(v41) = 1148846080;
  [v40 setPriority:v41];
  [v42 setActive:1];

  if (v39)
  {
    v43 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_8;
  }

  if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v43 = *(inited + 40);
LABEL_8:
  v45 = v43;
  LODWORD(v44) = 1148846080;
  [v43 setPriority:v44];
  [v45 setActive:1];

  if (v39)
  {
    v46 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_12;
  }

  if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 3uLL)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v46 = *(inited + 48);
LABEL_12:
  v47 = v46;

  LODWORD(v48) = 1148846080;
  [v47 setPriority:v48];
  [v47 setActive:1];

  v49 = *&v2[OBJC_IVAR____TtC18SharingViewService25B389LoadingViewController_spinner];
  *&v2[OBJC_IVAR____TtC18SharingViewService25B389LoadingViewController_spinner] = v30;
  v50 = v30;

  [*&v50[OBJC_IVAR____TtC18SharingViewService11TextSpinner_spinner] startAnimating];
  [v2 setModalPresentationStyle:4];
  v51 = *&v2[v15];
  if (!v51)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v52 = v51;
  v53 = [v2 mainController];
  if (!v53)
  {
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v54 = v53;
  sub_1000378F8();
  v56 = v55;

  if (v56)
  {
    v57 = String._bridgeToObjectiveC()();
  }

  else
  {
    v57 = 0;
  }

  v58 = v96;
  [v52 setText:v57];

  v59 = [v2 mainController];
  if (!v59)
  {
    goto LABEL_31;
  }

  v60 = v59;
  v61 = *&v59[OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_assetBundle];
  v62 = v61;

  if (!v61)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v63 = String._bridgeToObjectiveC()();
  v64 = String._bridgeToObjectiveC()();
  v65 = [v62 URLForResource:v63 withExtension:v64];

  if (!v65)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v66 = v93;
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  v68 = v94;
  v67 = v95;
  (*(v94 + 32))(v58, v66, v95);
  v69 = objc_allocWithZone(AVURLAsset);
  URL._bridgeToObjectiveC()(v70);
  v72 = v71;
  v73 = [v69 initWithURL:v71 options:0];

  v74 = [objc_allocWithZone(AVPlayerItem) initWithAsset:v73];
  v75 = objc_allocWithZone(type metadata accessor for SVSProxVideoView());
  v76 = v74;
  v77 = sub_10002678C(v74, 0, 1u);
  v78 = OBJC_IVAR____TtC18SharingViewService25B389LoadingViewController_player;
  v79 = *&v2[OBJC_IVAR____TtC18SharingViewService25B389LoadingViewController_player];
  *&v2[OBJC_IVAR____TtC18SharingViewService25B389LoadingViewController_player] = v77;
  v80 = v77;

  v81 = [v2 containerView];
  v82 = [v2 containerView];
  if (!*&v2[v78])
  {
LABEL_34:
    __break(1u);
    return;
  }

  v83 = v82;
  [v82 sendSubviewToBack:?];

  v84 = *&v2[v78];
  if (v84)
  {
    v85 = *&v84[OBJC_IVAR____TtC18SharingViewService16SVSProxVideoView_movieView];
    v86 = v84;
    v87 = [v85 layer];
    objc_opt_self();
    v88 = [swift_dynamicCastObjCClassUnconditional() player];

    [(objc_class *)v88 play];
    v73 = v76;
    v76 = v86;
  }

  else
  {
    v88 = v92;
  }

  v89 = v91;

  (*(v68 + 8))(v58, v67);
}

id sub_100016708(uint64_t a1, uint64_t a2, void *a3)
{
  *&v3[OBJC_IVAR____TtC18SharingViewService25B389LoadingViewController_titleLabel] = 0;
  v6 = OBJC_IVAR____TtC18SharingViewService25B389LoadingViewController_connectingLabel;
  *&v3[v6] = [objc_allocWithZone(UILabel) init];
  *&v3[OBJC_IVAR____TtC18SharingViewService25B389LoadingViewController_spinner] = 0;
  *&v3[OBJC_IVAR____TtC18SharingViewService25B389LoadingViewController_player] = 0;
  if (a2)
  {
    v7 = String._bridgeToObjectiveC()();
  }

  else
  {
    v7 = 0;
  }

  v10.receiver = v3;
  v10.super_class = type metadata accessor for B389LoadingViewController();
  v8 = objc_msgSendSuper2(&v10, "initWithNibName:bundle:", v7, a3);

  return v8;
}

id sub_100016844(void *a1)
{
  *&v1[OBJC_IVAR____TtC18SharingViewService25B389LoadingViewController_titleLabel] = 0;
  v3 = OBJC_IVAR____TtC18SharingViewService25B389LoadingViewController_connectingLabel;
  *&v1[v3] = [objc_allocWithZone(UILabel) init];
  *&v1[OBJC_IVAR____TtC18SharingViewService25B389LoadingViewController_spinner] = 0;
  *&v1[OBJC_IVAR____TtC18SharingViewService25B389LoadingViewController_player] = 0;
  v6.receiver = v1;
  v6.super_class = type metadata accessor for B389LoadingViewController();
  v4 = objc_msgSendSuper2(&v6, "initWithCoder:", a1);

  if (v4)
  {
  }

  return v4;
}

id sub_100016934(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

unint64_t sub_1000169FC()
{
  result = qword_1001B9730;
  if (!qword_1001B9730)
  {
    type metadata accessor for Key(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001B9730);
  }

  return result;
}

uint64_t sub_100016A54()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100016A94(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_100016B68()
{
  v1 = v0;
  if (qword_1001B9280 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000D298(v2, qword_1001B9D40);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = 202;
    _os_log_impl(&_mh_execute_header, v3, v4, "dismissPressed in %ld", v5, 0xCu);
  }

  v6 = [v1 mainController];
  if (v6)
  {
    v7 = v6;
    [v6 dismiss:5];
  }
}

uint64_t sub_100016CBC(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2 != 1)
  {
  }

  return result;
}

void sub_100016D48()
{
  v1 = (v0 + OBJC_IVAR____TtC18SharingViewService24B389FeatureTableViewCell_glyphConfiguration);
  v2 = *(v0 + OBJC_IVAR____TtC18SharingViewService24B389FeatureTableViewCell_glyphConfiguration + 8);
  if (v2)
  {
    v3 = *v1;
    v5 = v1[2];
    v4 = v1[3];
    v6 = *(v0 + OBJC_IVAR____TtC18SharingViewService24B389FeatureTableViewCell__backgroundImageView);
    if ((v5 & 1) == 0)
    {
      if (v6)
      {

        v19 = v4;
        [v6 setTintColor:v19];
        v24 = OBJC_IVAR____TtC18SharingViewService24B389FeatureTableViewCell__glyphImageView;
        v25 = *(v0 + OBJC_IVAR____TtC18SharingViewService24B389FeatureTableViewCell__glyphImageView);
        if (v25)
        {
          v26 = qword_1001B9290;

          v27 = v25;
          if (v26 != -1)
          {
            swift_once();
          }

          v28 = qword_1001B9F60;
          v29 = String._bridgeToObjectiveC()();

          v30 = [objc_opt_self() imageNamed:v29 inBundle:0 withConfiguration:v28];

          [v27 setImage:v30];
          v31 = *(v0 + v24);
          if (v31)
          {
            v32 = objc_opt_self();
            v33 = v31;
            v34 = [v32 systemWhiteColor];
            [v33 setTintColor:v34];

            goto LABEL_21;
          }

LABEL_32:
          __break(1u);
          return;
        }

        goto LABEL_30;
      }

      goto LABEL_28;
    }

    if (v6)
    {
      v7 = objc_opt_self();
      v8 = v6;
      sub_100017440(v3, v2, v5, v4);
      v9 = [v7 systemWhiteColor];
      [v8 setTintColor:v9];

      v10 = OBJC_IVAR____TtC18SharingViewService24B389FeatureTableViewCell__glyphImageView;
      v11 = *(v0 + OBJC_IVAR____TtC18SharingViewService24B389FeatureTableViewCell__glyphImageView);
      if (v11)
      {
        v12 = qword_1001B9290;

        v13 = v11;
        if (v12 != -1)
        {
          swift_once();
        }

        v14 = qword_1001B9F60;
        v15 = String._bridgeToObjectiveC()();

        v16 = [objc_opt_self() systemImageNamed:v15 withConfiguration:v14];

        [v13 setImage:v16];
        v17 = *(v0 + v10);
        if (v17)
        {
          v18 = v17;
          v19 = v4;
          [v18 setTintColor:v19];

LABEL_21:

          return;
        }

        goto LABEL_31;
      }

      goto LABEL_29;
    }

LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v20 = *(v0 + OBJC_IVAR____TtC18SharingViewService24B389FeatureTableViewCell__backgroundImageView);
  if (!v20)
  {
    __break(1u);
    goto LABEL_25;
  }

  [v20 setTintColor:0];
  v21 = OBJC_IVAR____TtC18SharingViewService24B389FeatureTableViewCell__glyphImageView;
  v22 = *(v0 + OBJC_IVAR____TtC18SharingViewService24B389FeatureTableViewCell__glyphImageView);
  if (!v22)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  [v22 setImage:0];
  v23 = *(v0 + v21);
  if (!v23)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  [v23 setTintColor:0];
}

uint64_t sub_100017114()
{
  result = sub_100128010();
  v1 = 15.0;
  if (result == 1)
  {
    v1 = 11.0;
  }

  qword_1001B9F58 = *&v1;
  return result;
}

id sub_100017144()
{
  result = [objc_opt_self() configurationWithPointSize:28.0];
  qword_1001B9F60 = result;
  return result;
}

id sub_1000171C0()
{
  v1 = (v0 + OBJC_IVAR____TtC18SharingViewService24B389FeatureTableViewCell_glyphConfiguration);
  v2 = *(v0 + OBJC_IVAR____TtC18SharingViewService24B389FeatureTableViewCell_glyphConfiguration);
  v3 = *(v0 + OBJC_IVAR____TtC18SharingViewService24B389FeatureTableViewCell_glyphConfiguration + 8);
  v4 = *(v0 + OBJC_IVAR____TtC18SharingViewService24B389FeatureTableViewCell_glyphConfiguration + 16);
  v5 = *(v0 + OBJC_IVAR____TtC18SharingViewService24B389FeatureTableViewCell_glyphConfiguration + 24);
  *v1 = 0u;
  v1[1] = 0u;
  sub_100017484(v2, v3, v4, v5);
  sub_100016D48();
  result = *(v0 + OBJC_IVAR____TtC18SharingViewService24B389FeatureTableViewCell__detailTextLabel);
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  [result setText:0];
  result = *(v0 + OBJC_IVAR____TtC18SharingViewService24B389FeatureTableViewCell__textLabel);
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  return [result setText:0];
}

uint64_t sub_100017298(void *a1)
{
  v2 = (v1 + OBJC_IVAR____TtC18SharingViewService24B389FeatureTableViewCell_glyphConfiguration);
  *v2 = 0u;
  v2[1] = 0u;
  *(v1 + OBJC_IVAR____TtC18SharingViewService24B389FeatureTableViewCell__backgroundImageView) = 0;
  v3 = OBJC_IVAR____TtC18SharingViewService24B389FeatureTableViewCell__detailTextLabel;
  *(v1 + OBJC_IVAR____TtC18SharingViewService24B389FeatureTableViewCell__detailTextLabel) = 0;
  v4 = OBJC_IVAR____TtC18SharingViewService24B389FeatureTableViewCell__glyphImageView;
  *(v1 + OBJC_IVAR____TtC18SharingViewService24B389FeatureTableViewCell__glyphImageView) = 0;
  v5 = OBJC_IVAR____TtC18SharingViewService24B389FeatureTableViewCell__textLabel;
  *(v1 + OBJC_IVAR____TtC18SharingViewService24B389FeatureTableViewCell__textLabel) = 0;

  type metadata accessor for B389FeatureTableViewCell();
  swift_deallocPartialClassInstance();
  return 0;
}

id sub_100017364()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for B389FeatureTableViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100017440(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a2)
  {

    v4 = a4;
  }
}

void sub_100017484(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a2)
  {
  }
}

void sub_1000174C8(uint64_t a1, uint64_t a2)
{
  v3 = &v2[OBJC_IVAR____TtC18SharingViewService24B389FeatureTableViewCell_glyphConfiguration];
  *v3 = 0u;
  *(v3 + 1) = 0u;
  *&v2[OBJC_IVAR____TtC18SharingViewService24B389FeatureTableViewCell__backgroundImageView] = 0;
  *&v2[OBJC_IVAR____TtC18SharingViewService24B389FeatureTableViewCell__detailTextLabel] = 0;
  *&v2[OBJC_IVAR____TtC18SharingViewService24B389FeatureTableViewCell__glyphImageView] = 0;
  *&v2[OBJC_IVAR____TtC18SharingViewService24B389FeatureTableViewCell__textLabel] = 0;
  if (a2)
  {
    v4 = String._bridgeToObjectiveC()();
  }

  else
  {
    v4 = 0;
  }

  v91.receiver = v2;
  v91.super_class = type metadata accessor for B389FeatureTableViewCell();
  v5 = objc_msgSendSuper2(&v91, "initWithStyle:reuseIdentifier:", 3, v4);

  v6 = v5;
  v7 = [v6 layoutManager];
  if (!v7)
  {
    __break(1u);
    goto LABEL_14;
  }

  v8 = v7;
  v9 = [objc_allocWithZone(UIImageView) init];
  [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
  v10 = v6;
  v11 = [v8 imageViewForCell:v10];
  if (!v11)
  {
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v12 = v11;
  if (qword_1001B9290 != -1)
  {
    swift_once();
  }

  v13 = qword_1001B9F60;
  v14 = String._bridgeToObjectiveC()();
  v15 = [objc_opt_self() systemImageNamed:v14 withConfiguration:v13];

  [v12 setImage:v15];
  v16 = v12;
  LODWORD(v17) = 1144750080;
  [v16 setContentHuggingPriority:0 forAxis:v17];
  [v16 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v16 addSubview:v9];
  v18 = [v8 textLabelForCell:v10];
  if (!v18)
  {
    goto LABEL_15;
  }

  v19 = v18;
  v20 = sub_10012843C();
  if (qword_1001B9288 != -1)
  {
    swift_once();
  }

  v21 = *&qword_1001B9F58;
  v22 = objc_opt_self();
  v23 = [v22 fontWithDescriptor:v20 size:v21];

  [v19 setFont:v23];
  [v19 setLineBreakMode:0];
  [v19 setNumberOfLines:0];
  v24 = objc_opt_self();
  v25 = [v24 labelColor];
  [v19 setTextColor:v25];

  v26 = v19;
  [v26 setTranslatesAutoresizingMaskIntoConstraints:0];
  v90 = v8;
  v27 = [v8 detailTextLabelForCell:v10];

  if (v27)
  {

    v28 = sub_1001282F0();
    v29 = [v22 fontWithDescriptor:v28 size:v21];

    [v27 setFont:v29];
    [v27 setLineBreakMode:0];
    [v27 setNumberOfLines:0];
    v30 = [v24 secondaryLabelColor];
    [v27 setTextColor:v30];

    v31 = v27;
    [v31 setTranslatesAutoresizingMaskIntoConstraints:0];
    sub_100005DCC(&qword_1001BBB00);
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_10016D400;
    *(v32 + 32) = v26;
    *(v32 + 40) = v31;
    v33 = objc_allocWithZone(UIStackView);
    sub_1000122EC(0, &qword_1001B9FB8);
    v89 = v26;
    isa = Array._bridgeToObjectiveC()().super.isa;

    v35 = [v33 initWithArrangedSubviews:isa];

    [v35 setAxis:1];
    [v35 setBaselineRelativeArrangement:1];
    [v35 setSpacing:1.17549435e-38];
    v86 = v35;
    [v86 setTranslatesAutoresizingMaskIntoConstraints:0];
    v36 = [objc_allocWithZone(UIView) init];
    [v36 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v36 addSubview:v16];
    [v36 addSubview:v86];
    v37 = [v10 contentView];
    [v37 addSubview:v36];

    [v16 intrinsicContentSize];
    v39 = v38;

    v88 = objc_opt_self();
    v40 = swift_allocObject();
    *(v40 + 16) = xmmword_10016D410;
    v41 = [v16 centerYAnchor];

    v42 = [v36 centerYAnchor];
    v87 = v27;
    v43 = [v41 constraintEqualToAnchor:v42];

    *(v40 + 32) = v43;
    v44 = [v16 leadingAnchor];

    v45 = [v36 leadingAnchor];
    v46 = [v44 constraintEqualToAnchor:v45];

    *(v40 + 40) = v46;
    v47 = [v36 bottomAnchor];
    v48 = [v10 contentView];
    v49 = [v48 bottomAnchor];

    v50 = [v47 constraintEqualToAnchor:v49 constant:-12.0];
    *(v40 + 48) = v50;
    v51 = [v36 leadingAnchor];
    v52 = [v10 contentView];
    v53 = [v52 leadingAnchor];

    v54 = [v51 constraintEqualToAnchor:v53];
    *(v40 + 56) = v54;
    v55 = [v36 topAnchor];
    v56 = [v10 contentView];
    v57 = [v56 topAnchor];

    v58 = [v55 constraintEqualToAnchor:v57];
    *(v40 + 64) = v58;
    v59 = [v36 trailingAnchor];
    v60 = [v10 contentView];

    v61 = [v60 trailingAnchor];
    v62 = [v59 constraintEqualToAnchor:v61];

    *(v40 + 72) = v62;
    v63 = [v9 centerXAnchor];
    v64 = [v16 centerXAnchor];

    v65 = [v63 constraintEqualToAnchor:v64];
    *(v40 + 80) = v65;
    v66 = [v9 centerYAnchor];

    v67 = [v16 centerYAnchor];
    v68 = [v66 constraintEqualToAnchor:v67];

    *(v40 + 88) = v68;
    v69 = [v86 bottomAnchor];
    v70 = [v36 bottomAnchor];
    v71 = [v69 constraintEqualToAnchor:v70];

    *(v40 + 96) = v71;
    v72 = [v86 topAnchor];
    v73 = [v36 topAnchor];
    v74 = [v72 constraintEqualToAnchor:v73];

    *(v40 + 104) = v74;
    v75 = [v86 trailingAnchor];
    v76 = [v36 trailingAnchor];
    v77 = [v75 constraintEqualToAnchor:v76];

    *(v40 + 112) = v77;
    v78 = [v86 widthAnchor];

    v79 = [v36 widthAnchor];
    v80 = [v78 constraintEqualToAnchor:v79 constant:-(v39 + 12.0)];

    *(v40 + 120) = v80;
    sub_1000122EC(0, &qword_1001B9968);
    v81 = Array._bridgeToObjectiveC()().super.isa;

    [v88 activateConstraints:v81];

    v82 = *&v10[OBJC_IVAR____TtC18SharingViewService24B389FeatureTableViewCell__backgroundImageView];
    *&v10[OBJC_IVAR____TtC18SharingViewService24B389FeatureTableViewCell__backgroundImageView] = v16;

    v83 = *&v10[OBJC_IVAR____TtC18SharingViewService24B389FeatureTableViewCell__detailTextLabel];
    *&v10[OBJC_IVAR____TtC18SharingViewService24B389FeatureTableViewCell__detailTextLabel] = v87;

    v84 = *&v10[OBJC_IVAR____TtC18SharingViewService24B389FeatureTableViewCell__glyphImageView];
    *&v10[OBJC_IVAR____TtC18SharingViewService24B389FeatureTableViewCell__glyphImageView] = v9;

    v85 = *&v10[OBJC_IVAR____TtC18SharingViewService24B389FeatureTableViewCell__textLabel];
    *&v10[OBJC_IVAR____TtC18SharingViewService24B389FeatureTableViewCell__textLabel] = v89;

    return;
  }

LABEL_16:
  __break(1u);
}

uint64_t VPScannerViewControllerEvent.debugDescription.getter(uint64_t a1)
{
  v1 = 0x6C65636E6163;
  v2 = 0xD00000000000002BLL;
  if (a1 == 2)
  {
    v2 = 0x756E614D72696170;
  }

  if (a1 != 1)
  {
    v1 = v2;
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return 0x64696C61766E69;
  }
}

uint64_t sub_1000184CC()
{
  v1 = *v0;
  v2 = 0x6C65636E6163;
  v3 = 0xD00000000000002BLL;
  if (*v0 == 2)
  {
    v3 = 0x756E614D72696170;
  }

  if (v1 != 1)
  {
    v2 = v3;
  }

  if (v1)
  {
    return v2;
  }

  else
  {
    return 0x64696C61766E69;
  }
}

uint64_t sub_1000185F4()
{
  v0 = type metadata accessor for Logger();
  sub_10000D378(v0, qword_1001C38E8);
  sub_10000D298(v0, qword_1001C38E8);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100018674()
{
  v0 = type metadata accessor for Logger();
  sub_10000D378(v0, qword_1001C3900);
  sub_10000D298(v0, qword_1001C3900);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100018718(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for Logger();
  sub_10000D378(v3, a2);
  sub_10000D298(v3, a2);
  return Logger.init(subsystem:category:)();
}

id sub_1000187B0(uint64_t a1, uint64_t *a2, uint64_t (*a3)(void))
{
  v5 = type metadata accessor for Logger();
  sub_10000D378(v5, a2);
  sub_10000D298(v5, a2);
  result = a3();
  if (result)
  {
    return Logger.init(_:)();
  }

  __break(1u);
  return result;
}

void sub_100018820()
{
  v162.receiver = v0;
  v162.super_class = type metadata accessor for D2DSetupDoneFailureViewController();
  objc_msgSendSuper2(&v162, "viewDidLoad");
  v1 = &v0[OBJC_IVAR____TtC18SharingViewService26D2DSetupBaseViewController_viewModel];
  v2 = *&v0[OBJC_IVAR____TtC18SharingViewService26D2DSetupBaseViewController_viewModel + 144];
  v3 = *&v0[OBJC_IVAR____TtC18SharingViewService26D2DSetupBaseViewController_viewModel + 112];
  v171 = *&v0[OBJC_IVAR____TtC18SharingViewService26D2DSetupBaseViewController_viewModel + 128];
  v172 = v2;
  v4 = *&v0[OBJC_IVAR____TtC18SharingViewService26D2DSetupBaseViewController_viewModel + 144];
  v5 = *&v0[OBJC_IVAR____TtC18SharingViewService26D2DSetupBaseViewController_viewModel + 176];
  v173 = *&v0[OBJC_IVAR____TtC18SharingViewService26D2DSetupBaseViewController_viewModel + 160];
  v174 = v5;
  v6 = *&v0[OBJC_IVAR____TtC18SharingViewService26D2DSetupBaseViewController_viewModel + 80];
  v7 = *&v0[OBJC_IVAR____TtC18SharingViewService26D2DSetupBaseViewController_viewModel + 48];
  v167 = *&v0[OBJC_IVAR____TtC18SharingViewService26D2DSetupBaseViewController_viewModel + 64];
  v168 = v6;
  v8 = *&v0[OBJC_IVAR____TtC18SharingViewService26D2DSetupBaseViewController_viewModel + 80];
  v9 = *&v0[OBJC_IVAR____TtC18SharingViewService26D2DSetupBaseViewController_viewModel + 112];
  v169 = *&v0[OBJC_IVAR____TtC18SharingViewService26D2DSetupBaseViewController_viewModel + 96];
  v170 = v9;
  v10 = *&v0[OBJC_IVAR____TtC18SharingViewService26D2DSetupBaseViewController_viewModel + 16];
  v163 = *&v0[OBJC_IVAR____TtC18SharingViewService26D2DSetupBaseViewController_viewModel];
  v164 = v10;
  v11 = *&v0[OBJC_IVAR____TtC18SharingViewService26D2DSetupBaseViewController_viewModel + 48];
  v165 = *&v0[OBJC_IVAR____TtC18SharingViewService26D2DSetupBaseViewController_viewModel + 32];
  v166 = v11;
  v160 = *&v0[OBJC_IVAR____TtC18SharingViewService26D2DSetupBaseViewController_viewModel];
  v12 = *&v0[OBJC_IVAR____TtC18SharingViewService26D2DSetupBaseViewController_viewModel + 144];
  v110 = *&v0[OBJC_IVAR____TtC18SharingViewService26D2DSetupBaseViewController_viewModel + 128];
  v111 = v12;
  v13 = *&v0[OBJC_IVAR____TtC18SharingViewService26D2DSetupBaseViewController_viewModel + 176];
  v112 = *&v0[OBJC_IVAR____TtC18SharingViewService26D2DSetupBaseViewController_viewModel + 160];
  v113 = v13;
  v14 = *&v0[OBJC_IVAR____TtC18SharingViewService26D2DSetupBaseViewController_viewModel + 80];
  v106 = *&v0[OBJC_IVAR____TtC18SharingViewService26D2DSetupBaseViewController_viewModel + 64];
  v107 = v14;
  v15 = *&v0[OBJC_IVAR____TtC18SharingViewService26D2DSetupBaseViewController_viewModel + 112];
  v108 = *&v0[OBJC_IVAR____TtC18SharingViewService26D2DSetupBaseViewController_viewModel + 96];
  v109 = v15;
  v16 = *&v0[OBJC_IVAR____TtC18SharingViewService26D2DSetupBaseViewController_viewModel + 48];
  v104 = *&v0[OBJC_IVAR____TtC18SharingViewService26D2DSetupBaseViewController_viewModel + 32];
  v105 = v16;
  v175 = v163;
  v184 = v171;
  v185 = v4;
  v17 = *&v0[OBJC_IVAR____TtC18SharingViewService26D2DSetupBaseViewController_viewModel + 176];
  v186 = v173;
  v187 = v17;
  v180 = v167;
  v181 = v8;
  v182 = v169;
  v183 = v3;
  v161 = *&v0[OBJC_IVAR____TtC18SharingViewService26D2DSetupBaseViewController_viewModel + 16];
  v18 = *(&v164 + 1);
  v19 = *&v0[OBJC_IVAR____TtC18SharingViewService26D2DSetupBaseViewController_viewModel + 16];
  v178 = v165;
  v179 = v7;
  v176 = v19;
  v177 = *(&v164 + 1);
  if (sub_100013CE0(&v175) == 1)
  {
    v148 = v160;
    *&v149 = v161;
    *(&v149 + 1) = v18;
    v156 = v110;
    v157 = v111;
    v158 = v112;
    v159 = v113;
    v152 = v106;
    v153 = v107;
    v154 = v108;
    v155 = v109;
    v150 = v104;
    v151 = v105;
    sub_100019558(&v163, &v145);
    sub_1000195C8(&v148);
  }

  else
  {
    v148 = v160;
    *&v149 = v161;
    *(&v149 + 1) = v18;
    v156 = v110;
    v157 = v111;
    v158 = v112;
    v159 = v113;
    v152 = v106;
    v153 = v107;
    v154 = v108;
    v155 = v109;
    v150 = v104;
    v151 = v105;
    sub_100019558(&v163, &v145);
    v20 = v18;
    sub_1000195C8(&v148);
    if (v18)
    {
      v21 = [objc_allocWithZone(UIImageView) initWithImage:v20];
      v22 = *(v1 + 9);
      v141 = *(v1 + 8);
      v142 = v22;
      v23 = *(v1 + 11);
      v143 = *(v1 + 10);
      v144 = v23;
      v24 = *(v1 + 5);
      v137 = *(v1 + 4);
      v138 = v24;
      v25 = *(v1 + 7);
      v139 = *(v1 + 6);
      v140 = v25;
      v26 = *(v1 + 1);
      v27 = v26;
      v133 = *v1;
      v134 = v26;
      v28 = *(v1 + 3);
      v135 = *(v1 + 2);
      v136 = v28;
      v29 = *(v1 + 1);
      v126 = *v1;
      v127 = v29;
      v99 = *(v1 + 136);
      v101 = *(v1 + 152);
      v102 = *(v1 + 168);
      v91 = *(v1 + 72);
      v93 = *(v1 + 88);
      v95 = *(v1 + 104);
      v97 = *(v1 + 120);
      v87 = *(v1 + 40);
      v89 = *(v1 + 56);
      v30 = v135;
      v103 = *(v1 + 23);
      v145 = v133;
      v146 = v27;
      *&v147[104] = *(v1 + 136);
      *&v147[120] = *(v1 + 152);
      *&v147[136] = *(v1 + 168);
      v31 = *(v1 + 23);
      *&v147[40] = *(v1 + 72);
      *&v147[56] = *(v1 + 88);
      *&v147[72] = *(v1 + 104);
      *&v147[88] = *(v1 + 120);
      *&v147[8] = *(v1 + 40);
      *&v147[24] = *(v1 + 56);
      *&v147[152] = v31;
      *v147 = v135;
      if (sub_100013CE0(&v145) == 1)
      {
        aBlock = v126;
        v131 = v127;
        *&v132[104] = v99;
        *&v132[120] = v101;
        *&v132[136] = v102;
        *&v132[40] = v91;
        *&v132[56] = v93;
        *&v132[72] = v95;
        *&v132[88] = v97;
        *&v132[8] = v87;
        *v132 = v135;
        *&v132[152] = v103;
        *&v132[24] = v89;
        sub_100019558(&v133, &v114);
        sub_1000195C8(&aBlock);
      }

      else
      {
        aBlock = v126;
        v131 = v127;
        *&v132[104] = v99;
        *&v132[120] = v101;
        *&v132[136] = v102;
        *&v132[40] = v91;
        *&v132[56] = v93;
        *&v132[72] = v95;
        *&v132[88] = v97;
        *&v132[8] = v87;
        *v132 = v135;
        *&v132[152] = v103;
        *&v132[24] = v89;
        sub_100019558(&v133, &v114);
        v32 = v30;
        sub_1000195C8(&aBlock);
        if (v30)
        {
          [v21 setTintColor:v32];
        }
      }

      v33 = v21;
      [v33 setTranslatesAutoresizingMaskIntoConstraints:0];
      [v33 setContentMode:1];
      v34 = [v0 contentView];
      [v34 addSubview:v33];

      v35 = [v0 contentView];
      v36 = [v35 mainContentGuide];

      v37 = objc_opt_self();
      sub_100005DCC(&qword_1001BBB00);
      v38 = swift_allocObject();
      *(v38 + 16) = xmmword_10016D4A0;
      v39 = [v33 topAnchor];
      v40 = [v36 topAnchor];
      v41 = [v39 constraintGreaterThanOrEqualToAnchor:v40];

      *(v38 + 32) = v41;
      v42 = [v33 bottomAnchor];
      v43 = [v36 bottomAnchor];
      v44 = [v42 constraintLessThanOrEqualToAnchor:v43];

      *(v38 + 40) = v44;
      v45 = [v33 centerXAnchor];
      v46 = [v36 centerXAnchor];
      v47 = [v45 constraintEqualToAnchor:v46];

      *(v38 + 48) = v47;
      v48 = [v33 centerYAnchor];

      v49 = [v36 centerYAnchor];
      v50 = [v48 constraintEqualToAnchor:v49];

      *(v38 + 56) = v50;
      sub_10000D1F4();
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v37 activateConstraints:isa];
    }
  }

  v52 = *(v1 + 7);
  v53 = *(v1 + 9);
  *&v147[96] = *(v1 + 8);
  *&v147[112] = v53;
  v54 = *(v1 + 11);
  v55 = *(v1 + 9);
  *&v147[128] = *(v1 + 10);
  *&v147[144] = v54;
  v56 = *(v1 + 5);
  *&v147[32] = *(v1 + 4);
  *&v147[48] = v56;
  v57 = *(v1 + 7);
  *&v147[64] = *(v1 + 6);
  *&v147[80] = v57;
  v58 = *(v1 + 1);
  v145 = *v1;
  v146 = v58;
  v59 = *(v1 + 3);
  v60 = *(v1 + 1);
  *v147 = *(v1 + 2);
  *&v147[16] = v59;
  v104 = *v1;
  v105 = v60;
  v106 = *(v1 + 2);
  v61 = *(v1 + 9);
  v118 = *(v1 + 8);
  v119 = v61;
  v62 = *(v1 + 11);
  v120 = *(v1 + 10);
  v121 = v62;
  v63 = *(v1 + 5);
  v114 = *(v1 + 4);
  v115 = v63;
  v64 = *(v1 + 7);
  v116 = *(v1 + 6);
  v117 = v64;
  v150 = *v147;
  v149 = v58;
  v148 = v145;
  v155 = v52;
  v154 = *&v147[64];
  v153 = v56;
  v152 = *&v147[32];
  v159 = *(v1 + 11);
  v158 = *&v147[128];
  v65 = v59;
  v157 = v55;
  v156 = *&v147[96];
  v151 = v59;
  if (sub_100013CE0(&v148) == 1)
  {
    v133 = v104;
    v134 = v105;
    v135 = v106;
    v136 = v65;
    v141 = v118;
    v142 = v119;
    v143 = v120;
    v144 = v121;
    v137 = v114;
    v138 = v115;
    v139 = v116;
    v140 = v117;
    sub_100019558(&v145, &aBlock);
    sub_1000195C8(&v133);
  }

  else
  {
    v133 = v104;
    v134 = v105;
    v135 = v106;
    v136 = v65;
    v141 = v118;
    v142 = v119;
    v143 = v120;
    v144 = v121;
    v137 = v114;
    v138 = v115;
    v139 = v116;
    v140 = v117;
    sub_100019558(&v145, &aBlock);

    sub_1000195C8(&v133);
    if (*(&v65 + 1))
    {
      v66 = swift_allocObject();
      swift_unknownObjectUnownedInit();

      v67 = String._bridgeToObjectiveC()();

      *v132 = sub_1000196B0;
      *&v132[8] = v66;
      *&aBlock = _NSConcreteStackBlock;
      *(&aBlock + 1) = 1107296256;
      *&v131 = sub_10001BE90;
      *(&v131 + 1) = &unk_1001901F0;
      v68 = _Block_copy(&aBlock);
      v69 = [objc_opt_self() actionWithTitle:v67 style:0 handler:v68];

      _Block_release(v68);
    }
  }

  v70 = *(v1 + 7);
  v71 = *(v1 + 9);
  *&v132[96] = *(v1 + 8);
  *&v132[112] = v71;
  v72 = *(v1 + 11);
  v73 = *(v1 + 9);
  *&v132[128] = *(v1 + 10);
  *&v132[144] = v72;
  v74 = *(v1 + 5);
  *&v132[32] = *(v1 + 4);
  *&v132[48] = v74;
  v75 = *(v1 + 7);
  v76 = *(v1 + 5);
  *&v132[64] = *(v1 + 6);
  *&v132[80] = v75;
  v77 = *(v1 + 1);
  aBlock = *v1;
  v131 = v77;
  v78 = *(v1 + 3);
  *v132 = *(v1 + 2);
  *&v132[16] = v78;
  v79 = *(v1 + 1);
  v126 = *v1;
  v127 = v79;
  v80 = *(v1 + 3);
  v128 = *(v1 + 2);
  v129 = v80;
  v96 = *(v1 + 9);
  v98 = *(v1 + 10);
  v100 = *(v1 + 11);
  v88 = *(v1 + 5);
  v90 = *(v1 + 6);
  v92 = *(v1 + 7);
  v94 = *(v1 + 8);
  v135 = *v132;
  v136 = v78;
  v133 = aBlock;
  v134 = v77;
  v138 = v76;
  v139 = *&v132[64];
  v81 = *(v1 + 11);
  v143 = *&v132[128];
  v144 = v81;
  v141 = *&v132[96];
  v142 = v73;
  v82 = *&v132[32];
  v140 = v70;
  v137 = *&v132[32];
  if (sub_100013CE0(&v133) == 1)
  {
    v114 = v126;
    v115 = v127;
    v116 = v128;
    v117 = v129;
    v118 = v82;
    v123 = v96;
    v124 = v98;
    v125 = v100;
    v119 = v88;
    v120 = v90;
    v121 = v92;
    v122 = v94;
    sub_100019558(&aBlock, &v104);
    sub_1000195C8(&v114);
  }

  else
  {
    v114 = v126;
    v115 = v127;
    v116 = v128;
    v117 = v129;
    v118 = v82;
    v123 = v96;
    v124 = v98;
    v125 = v100;
    v119 = v88;
    v120 = v90;
    v121 = v92;
    v122 = v94;
    sub_100019558(&aBlock, &v104);

    sub_1000195C8(&v114);
    if (*(&v82 + 1))
    {
      v83 = swift_allocObject();
      swift_unknownObjectUnownedInit();

      v84 = String._bridgeToObjectiveC()();

      *&v106 = sub_100019668;
      *(&v106 + 1) = v83;
      *&v104 = _NSConcreteStackBlock;
      *(&v104 + 1) = 1107296256;
      *&v105 = sub_10001BE90;
      *(&v105 + 1) = &unk_1001901C8;
      v85 = _Block_copy(&v104);
      v86 = [objc_opt_self() actionWithTitle:v84 style:1 handler:v85];

      _Block_release(v85);
    }
  }
}