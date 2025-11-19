uint64_t sub_1000C7054@<X0>(char **a1@<X8>)
{
  v1 = sub_1000C5A54();
  v2 = [v1 connectedHeadphoneInfo];

  sub_100008294(0, &qword_10015F7F8, HPSConnectedHeadphoneInfo_ptr);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v3 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v5 = 0;
    v24 = v3 & 0xC000000000000001;
    v6 = &_swiftEmptyArrayStorage;
    v15 = i;
    while (1)
    {
      if (v24)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v7 = *(v3 + 8 * v5 + 32);
      }

      v8 = v7;
      v9 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      v23 = v7;
      sub_1000C74FC(&v23, v22);

      if (*(&v22[0] + 1))
      {
        v18 = v22[2];
        v19 = v22[3];
        v20 = v22[4];
        v21 = v22[5];
        v16 = v22[0];
        v17 = v22[1];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v6 = sub_1000C4F78(0, *(v6 + 2) + 1, 1, v6);
        }

        v11 = *(v6 + 2);
        v10 = *(v6 + 3);
        if (v11 >= v10 >> 1)
        {
          v6 = sub_1000C4F78((v10 > 1), v11 + 1, 1, v6);
        }

        *(v6 + 2) = v11 + 1;
        v12 = &v6[96 * v11];
        *(v12 + 2) = v16;
        *(v12 + 3) = v17;
        *(v12 + 6) = v20;
        *(v12 + 7) = v21;
        *(v12 + 4) = v18;
        *(v12 + 5) = v19;
        i = v15;
      }

      else
      {
        sub_1000068B0(v22, &qword_10015F800, &qword_100116EF8);
      }

      ++v5;
      if (v9 == i)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

  v6 = &_swiftEmptyArrayStorage;
LABEL_21:

  *a1 = v6;
  return result;
}

id sub_1000C7290@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10004DED0(&qword_10015F808, &unk_100116F00);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v17 - v9;
  [a1 productId];
  result = [a1 vendorId];
  if (result >> 16)
  {
    __break(1u);
    goto LABEL_11;
  }

  UTType.init(_rawBluetoothProductID:rawVendorID:)();
  result = MobileGestalt_get_current_device();
  if (!result)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v12 = result;
  appleInternalInstallCapability = MobileGestalt_get_appleInternalInstallCapability();

  if (!appleInternalInstallCapability)
  {
    return sub_1000C82B0(v10, a2);
  }

  sub_100059CA0(v10, v8, &qword_10015F808, &unk_100116F00);
  v14 = type metadata accessor for UTType();
  v15 = *(v14 - 8);
  v16 = *(v15 + 48);
  if (v16(v8, 1, v14) == 1)
  {
    UTType.init(_:)();
    sub_1000068B0(v10, &qword_10015F808, &unk_100116F00);
    result = v16(v8, 1, v14);
    if (result != 1)
    {
      return sub_1000068B0(v8, &qword_10015F808, &unk_100116F00);
    }
  }

  else
  {
    sub_1000068B0(v10, &qword_10015F808, &unk_100116F00);
    (*(v15 + 32))(a2, v8, v14);
    return (*(v15 + 56))(a2, 0, 1, v14);
  }

  return result;
}

double sub_1000C74FC@<D0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10004DED0(&qword_10015F808, &unk_100116F00);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v53 - v6;
  v8 = type metadata accessor for UTType();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  v14 = [*a1 deviceSpecifier];
  v15 = [v14 userInfo];

  if (v15)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v62 = 0u;
    v63 = 0u;
  }

  v60 = v62;
  v61 = v63;
  if (!*(&v63 + 1))
  {
    sub_1000068B0(&v60, &qword_10015C8D0, &unk_100116750);
    goto LABEL_13;
  }

  sub_10004DED0(&qword_10015C8D8, &unk_100112B40);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_13;
  }

  v16 = v59[0];
  strcpy(v59, "hps-device-key");
  HIBYTE(v59[1]) = -18;
  AnyHashable.init<A>(_:)();
  if (!v16[2] || (v17 = sub_100017DC0(&v60), (v18 & 1) == 0))
  {

    sub_100017E04(&v60);
    goto LABEL_13;
  }

  sub_10001EE30(v16[7] + 32 * v17, &v62);
  sub_100017E04(&v60);

  sub_100008294(0, &qword_10015F810, HPSDevice_ptr);
  if (!swift_dynamicCast())
  {
LABEL_13:
    v21 = [v13 deviceID];
    v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v23;

    v25 = [v13 deviceName];
    v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v28 = v27;

    v29 = [v13 deviceSpecifier];
    v30 = [v29 properties];

    if (v30)
    {
      v31 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
      v31 = 0;
    }

    v32 = [v13 deviceSpecifier];
    v33 = [v32 userInfo];

    if (v33)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v60 = 0u;
      v61 = 0u;
    }

    *a2 = v22;
    *(a2 + 8) = v24;
    *(a2 + 16) = v26;
    *(a2 + 24) = v28;
    *(a2 + 32) = 0xD00000000000001ALL;
    *(a2 + 40) = 0x8000000100124B20;
    *(a2 + 48) = 2;
    *(a2 + 56) = v31;
    goto LABEL_20;
  }

  v19 = v59[0];
  sub_1000C7290(v59[0], v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {

    sub_1000068B0(v7, &qword_10015F808, &unk_100116F00);
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *(a2 + 48) = 0u;
    *(a2 + 64) = 0u;
    *(a2 + 80) = 0u;
    return result;
  }

  (*(v9 + 32))(v12, v7, v8);
  v35 = [v13 deviceID];
  v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v58 = v37;

  v38 = [v13 deviceName];
  v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v56 = v40;
  v57 = v39;

  v41 = UTType.identifier.getter();
  v54 = v42;
  v55 = v41;
  v43 = [v13 deviceSpecifier];
  v44 = [v43 properties];

  if (v44)
  {
    v45 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v45 = 0;
  }

  v46 = [v13 deviceSpecifier];
  v47 = [v46 userInfo];

  if (v47)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();

    (*(v9 + 8))(v12, v8);
  }

  else
  {
    (*(v9 + 8))(v12, v8);

    v60 = 0u;
    v61 = 0u;
  }

  v49 = v57;
  v48 = v58;
  *a2 = v36;
  *(a2 + 8) = v48;
  v51 = v55;
  v50 = v56;
  *(a2 + 16) = v49;
  *(a2 + 24) = v50;
  v52 = v54;
  *(a2 + 32) = v51;
  *(a2 + 40) = v52;
  *(a2 + 48) = 2;
  *(a2 + 56) = v45;
LABEL_20:
  result = *&v60;
  v34 = v61;
  *(a2 + 64) = v60;
  *(a2 + 80) = v34;
  return result;
}

void sub_1000C7AFC(void *a1, uint64_t a2, unint64_t a3)
{
  v7 = *(v3 + 56);
  v8 = *(v7 + 16);

  if (v8)
  {
    v9 = 0;
    v10 = v7 + 32;
    while (1)
    {
      if (v9 >= *(v7 + 16))
      {
        __break(1u);
        goto LABEL_22;
      }

      sub_10006D7CC(v10, &v25);
      v11 = v25 == a2 && *(&v25 + 1) == a3;
      if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      ++v9;
      sub_10006D828(&v25);
      v10 += 96;
      if (v8 == v9)
      {
        goto LABEL_10;
      }
    }

    v31[2] = v27;
    v31[3] = v28;
    v32[0] = v29;
    v32[1] = v30;
    v31[0] = v25;
    v31[1] = v26;
    if (*(&v28 + 1))
    {
      v17.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
    }

    else
    {
      v17.super.isa = 0;
    }

    [a1 setProperties:v17.super.isa];

    sub_100059CA0(v32, &v25, &qword_10015C8D0, &unk_100116750);
    v18 = *(&v26 + 1);
    if (*(&v26 + 1))
    {
      v19 = sub_100018544(&v25, *(&v26 + 1));
      v20 = *(v18 - 8);
      v21 = *(v20 + 64);
      __chkstk_darwin(v19);
      v23 = &v25 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v20 + 16))(v23);
      v24 = _bridgeAnythingToObjectiveC<A>(_:)();
      (*(v20 + 8))(v23, v18);
      sub_10000665C(&v25);
    }

    else
    {
      v24 = 0;
    }

    [a1 setUserInfo:v24];
    swift_unknownObjectRelease();
    sub_10006D828(v31);
  }

  else
  {
LABEL_10:

    if (qword_10015AAC8 != -1)
    {
LABEL_22:
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_10000659C(v12, qword_1001696D0);

    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *&v31[0] = v16;
      *v15 = 141558275;
      *(v15 + 4) = 1752392040;
      *(v15 + 12) = 2081;
      *(v15 + 14) = sub_100025CF0(a2, a3, v31);
      _os_log_impl(&_mh_execute_header, v13, v14, "Could not find connected headphone item for identifier: %{private,mask.hash}s", v15, 0x16u);
      sub_10000665C(v16);
    }
  }
}

uint64_t sub_1000C7E74(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_1000C7E8C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_1000C7EA8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
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

uint64_t sub_1000C7EF0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1000C7F58()
{
  result = qword_10015F7F0;
  if (!qword_10015F7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015F7F0);
  }

  return result;
}

uint64_t sub_1000C7FF4@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t sub_1000C8000(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v5 = *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24);
  if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a2 + 32);
  v9 = *(a2 + 40);
  v10 = *(a2 + 48);
  v11 = *(a1 + 48);

  return sub_10006F358(v6, v7, v11, v8, v9, v10);
}

void sub_1000C8098()
{
  v1 = *v0;
  v2 = v0[1];
  String.hash(into:)();
  v3 = v0[2];
  v4 = v0[3];
  String.hash(into:)();
  if (*(v0 + 48) <= 1u)
  {
    if (!*(v0 + 48))
    {
      Hasher._combine(_:)(1uLL);
      NSObject.hash(into:)();
      return;
    }

    v5 = 2;
    goto LABEL_7;
  }

  if (*(v0 + 48) == 2)
  {
    v5 = 3;
LABEL_7:
    Hasher._combine(_:)(v5);

    String.hash(into:)();
    return;
  }

  if (*(v0 + 2) == 0)
  {
    v6 = 0;
  }

  else
  {
    v6 = 4;
  }

  Hasher._combine(_:)(v6);
}

Swift::Int sub_1000C8168()
{
  Hasher.init(_seed:)();
  sub_1000C8098();
  return Hasher._finalize()();
}

Swift::Int sub_1000C81AC()
{
  Hasher.init(_seed:)();
  sub_1000C8098();
  return Hasher._finalize()();
}

BOOL sub_1000C81E8(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v3 = *(a2 + 16);
  v4 = *(a2 + 24);
  sub_10002EAE0();
  return StringProtocol.localizedCaseInsensitiveCompare<A>(_:)() == -1;
}

uint64_t sub_1000C82B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10004DED0(&qword_10015F808, &unk_100116F00);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000C8328(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000A924;

  return sub_1000C6204(a1, v4, v5, v6);
}

uint64_t getEnumTagSinglePayload for CoreFollowUpGroup(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for CoreFollowUpGroup(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1000C8534()
{
  result = qword_10015F820;
  if (!qword_10015F820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015F820);
  }

  return result;
}

unint64_t sub_1000C859C()
{
  result = qword_10015F828;
  if (!qword_10015F828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015F828);
  }

  return result;
}

uint64_t sub_1000C85F0()
{
  v10 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v0 = *(v10 - 8);
  v1 = *(v0 + 64);
  __chkstk_darwin(v10);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OS_dispatch_queue.Attributes();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9[1] = sub_100008294(0, &qword_10015C9D0, OS_dispatch_queue_ptr);
  static DispatchQoS.userInitiated.getter();
  v11 = &_swiftEmptyArrayStorage;
  sub_10001F7D4();
  sub_10004DED0(&unk_10015FD30, &unk_100117260);
  sub_1000525A0(&qword_10015FA20, &unk_10015FD30, &unk_100117260);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v0 + 104))(v3, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v10);
  result = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  qword_10015F830 = result;
  return result;
}

uint64_t sub_1000C8834()
{
  v1 = v0;
  v2 = sub_10004DED0(&unk_10015F990, &unk_100115CF0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v26 - v5;
  v7 = sub_10004DED0(&qword_10015F9A8, &qword_100117210);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v26 - v9;
  v11 = OBJC_IVAR____TtC11SettingsApp49CoreFollowUpNoGroupSectionCollectionModelProvider_observationTasks;
  swift_beginAccess();
  v12 = *(v1 + v11);
  v13 = *(v12 + 16);
  if (v13)
  {
    v27 = v11;
    v28 = v3;
    v29 = v2;

    v14 = 32;
    do
    {
      v15 = *(v12 + v14);

      Task.cancel()();

      v14 += 8;
      --v13;
    }

    while (v13);

    v3 = v28;
    v2 = v29;
    v11 = v27;
  }

  v16 = OBJC_IVAR____TtC11SettingsApp49CoreFollowUpNoGroupSectionCollectionModelProvider_updateStreamContinuation;
  swift_beginAccess();
  sub_1000CBC2C(v1 + v16, v10);
  v17 = sub_10004DED0(&unk_10015FAA0, qword_100112870);
  v18 = *(v17 - 8);
  result = (*(v18 + 48))(v10, 1, v17);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    AsyncStream.Continuation.finish()();
    (*(v18 + 8))(v10, v17);
    v20 = OBJC_IVAR____TtC11SettingsApp49CoreFollowUpNoGroupSectionCollectionModelProvider_modelStreamContinuation;
    (*(v3 + 16))(v6, v1 + OBJC_IVAR____TtC11SettingsApp49CoreFollowUpNoGroupSectionCollectionModelProvider_modelStreamContinuation, v2);
    AsyncStream.Continuation.finish()();
    v21 = *(v3 + 8);
    v21(v6, v2);
    sub_1000122B4(v1 + 16);
    v22 = *(v1 + 32);
    swift_unknownObjectRelease();
    sub_1000068B0(v1 + OBJC_IVAR____TtC11SettingsApp49CoreFollowUpNoGroupSectionCollectionModelProvider_updateStream, &unk_10015F9B0, &unk_1001170F0);
    sub_1000068B0(v1 + v16, &qword_10015F9A8, &qword_100117210);
    v23 = OBJC_IVAR____TtC11SettingsApp49CoreFollowUpNoGroupSectionCollectionModelProvider_modelStream;
    v24 = sub_10004DED0(&qword_10015EA20, &unk_1001170E0);
    (*(*(v24 - 8) + 8))(v1 + v23, v24);
    v21((v1 + v20), v2);
    v25 = *(v1 + v11);

    return v1;
  }

  return result;
}

uint64_t sub_1000C8B90()
{
  sub_1000C8834();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1000C8BF0()
{
  v0 = sub_10004DED0(&unk_10015C570, &qword_100112440);
  v99 = *(v0 - 8);
  v100 = v0;
  v1 = *(v99 + 64);
  __chkstk_darwin(v0);
  v98 = v94 - v2;
  v3 = sub_10004DED0(&unk_10015D490, &qword_100112150);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v111 = v94 - v5;
  v6 = sub_10004DED0(&qword_10015F9A8, &qword_100117210);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v96 = v94 - v8;
  v9 = sub_10004DED0(&unk_10015F9B0, &unk_1001170F0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v94 - v11;
  v13 = sub_10004DED0(&qword_10015C580, &unk_1001123B0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = (v94 - v16);
  v18 = sub_10004DED0(&unk_10015FAA0, qword_100112870);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = __chkstk_darwin(v18);
  v95 = v94 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94[1] = v22;
  __chkstk_darwin(v21);
  v24 = v94 - v23;
  v25 = sub_10004DED0(&qword_10015C900, &qword_1001123C0);
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  v28 = __chkstk_darwin(v25);
  v104 = v94 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __chkstk_darwin(v28);
  v101 = v94 - v31;
  v103 = v32;
  __chkstk_darwin(v30);
  v34 = v94 - v33;
  *v17 = 1;
  (*(v14 + 104))(v17, enum case for AsyncStream.Continuation.BufferingPolicy.bufferingNewest<A>(_:), v13);
  static AsyncStream.makeStream(of:bufferingPolicy:)();
  (*(v14 + 8))(v17, v13);
  v36 = (v26 + 16);
  v35 = *(v26 + 16);
  v108 = v34;
  v102 = v35;
  v35(v12, v34, v25);
  v109 = v25;
  v110 = v26;
  v37 = v26;
  v38 = v97;
  (*(v37 + 56))(v12, 0, 1, v25);
  v39 = OBJC_IVAR____TtC11SettingsApp49CoreFollowUpNoGroupSectionCollectionModelProvider_updateStream;
  swift_beginAccess();
  sub_1000BB1A0(v12, v38 + v39, &unk_10015F9B0, &unk_1001170F0);
  swift_endAccess();
  v40 = *(v19 + 16);
  v41 = v96;
  v105 = v24;
  v40(v96, v24, v18);
  v106 = v19;
  v107 = v18;
  (*(v19 + 56))(v41, 0, 1, v18);
  v42 = OBJC_IVAR____TtC11SettingsApp49CoreFollowUpNoGroupSectionCollectionModelProvider_updateStreamContinuation;
  swift_beginAccess();
  sub_1000BB1A0(v41, v38 + v42, &qword_10015F9A8, &qword_100117210);
  swift_endAccess();
  if (qword_10015AB38 != -1)
  {
    swift_once();
  }

  v43 = v101;
  sub_100015934(0xD000000000000024, 0x8000000100124C70, qword_10015F830, v101);
  v44 = type metadata accessor for TaskPriority();
  (*(*(v44 - 8) + 56))(v111, 1, 1, v44);
  v45 = v104;
  v46 = v43;
  v47 = v109;
  v96 = v36;
  v102(v104, v46, v109);
  v48 = v107;
  v40(v95, v105, v107);
  type metadata accessor for MainActor();
  v49 = static MainActor.shared.getter();
  v50 = v110;
  v51 = (*(v110 + 80) + 32) & ~*(v110 + 80);
  v52 = v106;
  v53 = (v103 + *(v106 + 80) + v51) & ~*(v106 + 80);
  v54 = swift_allocObject();
  *(v54 + 16) = v49;
  *(v54 + 24) = &protocol witness table for MainActor;
  (*(v50 + 32))(v54 + v51, v45, v47);
  (*(v52 + 32))(v54 + v53, v95, v48);
  v55 = sub_100094AF4(0, 0, v111, &unk_100117130, v54);
  v56 = OBJC_IVAR____TtC11SettingsApp49CoreFollowUpNoGroupSectionCollectionModelProvider_observationTasks;
  swift_beginAccess();
  v57 = *(v38 + v56);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v38 + v56) = v57;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v57 = sub_100015698(0, v57[2] + 1, 1, v57);
    *(v38 + v56) = v57;
  }

  v60 = v57[2];
  v59 = v57[3];
  v61 = v110;
  if (v60 >= v59 >> 1)
  {
    v57 = sub_100015698((v59 > 1), v60 + 1, 1, v57);
  }

  v57[2] = v60 + 1;
  v57[v60 + 4] = v55;
  *(v38 + v56) = v57;
  swift_endAccess();

  (*(v61 + 8))(v101, v47);
  v62 = type metadata accessor for TaskPriority();
  v63 = *(v62 - 8);
  v64 = *(v63 + 56);
  v65 = v111;
  v101 = v62;
  v95 = (v63 + 56);
  v96 = v64;
  (v64)(v111, 1, 1);
  v66 = swift_allocObject();
  swift_weakInit();
  v67 = v104;
  v102(v104, v108, v47);
  type metadata accessor for MainActor();

  v68 = static MainActor.shared.getter();
  v69 = (*(v61 + 80) + 32) & ~*(v61 + 80);
  v70 = v61;
  v71 = (v103 + v69 + 7) & 0xFFFFFFFFFFFFFFF8;
  v72 = swift_allocObject();
  v73 = v47;
  v74 = v72;
  *(v72 + 16) = v68;
  *(v72 + 24) = &protocol witness table for MainActor;
  (*(v70 + 32))(v72 + v69, v67, v73);
  *(v74 + v71) = v66;

  v75 = sub_100094AF4(0, 0, v65, &unk_100117108, v74);
  v76 = OBJC_IVAR____TtC11SettingsApp49CoreFollowUpNoGroupSectionCollectionModelProvider_observationTasks;
  swift_beginAccess();
  v77 = *(v38 + v76);

  v78 = swift_isUniquelyReferenced_nonNull_native();
  *(v38 + v76) = v77;
  if ((v78 & 1) == 0)
  {
    v77 = sub_100015698(0, v77[2] + 1, 1, v77);
    *(v38 + v76) = v77;
  }

  v80 = v77[2];
  v79 = v77[3];
  if (v80 >= v79 >> 1)
  {
    v77 = sub_100015698((v79 > 1), v80 + 1, 1, v77);
  }

  v77[2] = v80 + 1;
  v77[v80 + 4] = v75;
  *(v38 + v76) = v77;
  swift_endAccess();
  v81 = v111;
  (v96)(v111, 1, 1, v101);
  v82 = swift_allocObject();
  swift_weakInit();

  v83 = static MainActor.shared.getter();
  v84 = swift_allocObject();
  v84[2] = v83;
  v84[3] = &protocol witness table for MainActor;
  v84[4] = v82;

  v85 = sub_100094AF4(0, 0, v81, &unk_100117118, v84);
  swift_beginAccess();
  v86 = *(v38 + v76);

  v87 = swift_isUniquelyReferenced_nonNull_native();
  *(v38 + v76) = v86;
  if ((v87 & 1) == 0)
  {
    v86 = sub_100015698(0, v86[2] + 1, 1, v86);
    *(v38 + v76) = v86;
  }

  v88 = v110;
  v90 = v86[2];
  v89 = v86[3];
  if (v90 >= v89 >> 1)
  {
    v86 = sub_100015698((v89 > 1), v90 + 1, 1, v86);
  }

  v86[2] = v90 + 1;
  v86[v90 + 4] = v85;
  *(v38 + v76) = v86;
  swift_endAccess();
  v91 = v98;
  v92 = v105;
  AsyncStream.Continuation.yield<A>()();

  (*(v99 + 8))(v91, v100);
  (*(v106 + 8))(v92, v107);
  return (*(v88 + 8))(v108, v109);
}

uint64_t sub_1000C989C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = sub_10004DED0(&unk_10015C570, &qword_100112440);
  v5[4] = v6;
  v7 = *(v6 - 8);
  v5[5] = v7;
  v8 = *(v7 + 64) + 15;
  v5[6] = swift_task_alloc();
  v9 = sub_10004DED0(&qword_10015C460, &qword_100112450);
  v5[7] = v9;
  v10 = *(v9 - 8);
  v5[8] = v10;
  v11 = *(v10 + 64) + 15;
  v5[9] = swift_task_alloc();
  v5[10] = type metadata accessor for MainActor();
  v5[11] = static MainActor.shared.getter();
  v13 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[12] = v13;
  v5[13] = v12;

  return _swift_task_switch(sub_1000C9A08, v13, v12);
}

uint64_t sub_1000C9A08()
{
  v1 = v0[9];
  v2 = v0[2];
  sub_10004DED0(&qword_10015C900, &qword_1001123C0);
  AsyncStream.makeAsyncIterator()();
  v3 = v0[10];
  v4 = static MainActor.shared.getter();
  v0[14] = v4;
  v5 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v6 = swift_task_alloc();
  v0[15] = v6;
  *v6 = v0;
  v6[1] = sub_1000C9AE8;
  v7 = v0[9];
  v8 = v0[7];

  return AsyncStream.Iterator.next(isolation:)(v0 + 16, v4, &protocol witness table for MainActor, v8);
}

uint64_t sub_1000C9AE8()
{
  v1 = *v0;
  v2 = *(*v0 + 120);
  v3 = *(*v0 + 112);
  v7 = *v0;

  v4 = *(v1 + 104);
  v5 = *(v1 + 96);

  return _swift_task_switch(sub_1000C9C2C, v5, v4);
}

uint64_t sub_1000C9C2C()
{
  if (*(v0 + 128) & 1) != 0 || (static Task<>.isCancelled.getter())
  {
    v1 = *(v0 + 88);
    v2 = *(v0 + 48);
    (*(*(v0 + 64) + 8))(*(v0 + 72), *(v0 + 56));

    v3 = *(v0 + 8);

    return v3();
  }

  else
  {
    v6 = *(v0 + 40);
    v5 = *(v0 + 48);
    v7 = *(v0 + 24);
    v8 = *(v0 + 32);
    AsyncStream.Continuation.yield<A>()();
    (*(v6 + 8))(v5, v8);
    v9 = *(v0 + 80);
    v10 = static MainActor.shared.getter();
    *(v0 + 112) = v10;
    v11 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
    v12 = swift_task_alloc();
    *(v0 + 120) = v12;
    *v12 = v0;
    v12[1] = sub_1000C9AE8;
    v13 = *(v0 + 72);
    v14 = *(v0 + 56);

    return AsyncStream.Iterator.next(isolation:)(v0 + 128, v10, &protocol witness table for MainActor, v14);
  }
}

uint64_t sub_1000C9D94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v6 = sub_10004DED0(&unk_10015FB90, &unk_100117148);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64) + 15;
  v5[12] = swift_task_alloc();
  v9 = sub_10004DED0(&unk_10015F9E0, &unk_100112BB0);
  v5[13] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v5[14] = swift_task_alloc();
  v5[15] = type metadata accessor for MainActor();
  v5[16] = static MainActor.shared.getter();
  v12 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[17] = v12;
  v5[18] = v11;

  return _swift_task_switch(sub_1000C9ED4, v12, v11);
}

uint64_t sub_1000C9ED4()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[8];
  v4 = v0[9];
  sub_10004DED0(&qword_10015C900, &qword_1001123C0);
  sub_1000525A0(&qword_10015C930, &qword_10015C900, &qword_1001123C0);
  AsyncSequence.debounce<>(for:tolerance:)();
  v5 = AsyncDebounceSequence.makeAsyncIterator()();
  v0[19] = v5;
  sub_1000068B0(v1, &unk_10015F9E0, &unk_100112BB0);
  v0[5] = v5;
  swift_beginAccess();
  v6 = v0[15];
  v0[20] = static MainActor.shared.getter();
  v7 = async function pointer to AsyncDebounceSequence.Iterator.next()[1];
  v8 = swift_task_alloc();
  v0[21] = v8;
  v9 = sub_10004DED0(&unk_10015F9F0, &qword_100112470);
  *v8 = v0;
  v8[1] = sub_1000CA070;

  return AsyncDebounceSequence.Iterator.next()(v0 + 26, v9);
}

uint64_t sub_1000CA070()
{
  v2 = *v1;
  v3 = *(*v1 + 168);
  v4 = *v1;
  *(v2 + 176) = v0;

  v5 = *(v2 + 160);
  if (v0)
  {
    if (v5)
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

    v9 = sub_1000CA3A8;
  }

  else
  {
    *(v2 + 209) = *(v2 + 208);
    if (v5)
    {
      swift_getObjectType();
      v6 = dispatch thunk of Actor.unownedExecutor.getter();
      v8 = v10;
    }

    else
    {
      v6 = 0;
      v8 = 0;
    }

    v9 = sub_1000CA210;
  }

  return _swift_task_switch(v9, v6, v8);
}

uint64_t sub_1000CA210()
{
  v1 = v0[20];

  v2 = v0[17];
  v3 = v0[18];

  return _swift_task_switch(sub_1000CA274, v2, v3);
}

uint64_t sub_1000CA274()
{
  if (*(v0 + 209) == 1 || (v1 = *(v0 + 72), Strong = swift_weakLoadStrong(), (*(v0 + 184) = Strong) == 0))
  {
    v5 = *(v0 + 128);
    goto LABEL_6;
  }

  v3 = Strong;
  if (static Task<>.isCancelled.getter())
  {
    v4 = *(v0 + 128);

LABEL_6:

    v6 = *(v0 + 152);
    v7 = *(v0 + 112);
    v8 = *(v0 + 96);

    v9 = *(v0 + 8);

    return v9();
  }

  v11 = *(v3 + OBJC_IVAR____TtC11SettingsApp49CoreFollowUpNoGroupSectionCollectionModelProvider_group);
  v12 = swift_task_alloc();
  *(v0 + 192) = v12;
  *v12 = v0;
  v12[1] = sub_1000CA434;

  return sub_1000CB56C(v11);
}

uint64_t sub_1000CA3A8()
{
  *(v0 + 48) = *(v0 + 176);
  sub_10004DED0(&unk_10015C800, &unk_100112BC0);
  swift_dynamicCast();

  return swift_willThrowTypedImpl();
}

uint64_t sub_1000CA434(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 192);
  v7 = *v1;
  *(*v1 + 200) = a1;

  v4 = *(v2 + 144);
  v5 = *(v2 + 136);

  return _swift_task_switch(sub_1000CA55C, v5, v4);
}

uint64_t sub_1000CA55C()
{
  v1 = v0[23];
  v3 = v0[11];
  v2 = v0[12];
  v4 = v0[10];
  v0[7] = v0[25];
  swift_unknownObjectRetain();
  sub_10004DED0(&unk_10015F990, &unk_100115CF0);
  AsyncStream.Continuation.yield(_:)();

  swift_unknownObjectRelease();
  (*(v3 + 8))(v2, v4);
  v5 = v0[15];
  v0[20] = static MainActor.shared.getter();
  v6 = async function pointer to AsyncDebounceSequence.Iterator.next()[1];
  v7 = swift_task_alloc();
  v0[21] = v7;
  v8 = sub_10004DED0(&unk_10015F9F0, &qword_100112470);
  *v7 = v0;
  v7[1] = sub_1000CA070;

  return AsyncDebounceSequence.Iterator.next()(v0 + 26, v8);
}

uint64_t sub_1000CA6AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a4;
  v5 = sub_10004DED0(&unk_10015F9D0, &qword_100117140);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64) + 15;
  v4[12] = swift_task_alloc();
  v8 = sub_10004DED0(&qword_10015EA20, &unk_1001170E0);
  v4[13] = v8;
  v9 = *(v8 - 8);
  v4[14] = v9;
  v10 = *(v9 + 64) + 15;
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();
  v4[17] = type metadata accessor for MainActor();
  v4[18] = static MainActor.shared.getter();
  v12 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[19] = v12;
  v4[20] = v11;

  return _swift_task_switch(sub_1000CA824, v12, v11);
}

uint64_t sub_1000CA824()
{
  v1 = v0[9];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = v0[15];
    v4 = v0[16];
    v5 = v0[13];
    v6 = v0[14];
    v7 = v0[12];
    v8 = v0[9];
    (*(v6 + 16))(v3, Strong + OBJC_IVAR____TtC11SettingsApp49CoreFollowUpNoGroupSectionCollectionModelProvider_modelStream, v5);

    (*(v6 + 32))(v4, v3, v5);
    AsyncStream.makeAsyncIterator()();
    swift_beginAccess();
    v9 = v0[17];
    v10 = static MainActor.shared.getter();
    v0[21] = v10;
    v11 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
    v12 = swift_task_alloc();
    v0[22] = v12;
    *v12 = v0;
    v12[1] = sub_1000CA9FC;
    v13 = v0[12];
    v14 = v0[10];

    return AsyncStream.Iterator.next(isolation:)(v0 + 8, v10, &protocol witness table for MainActor, v14);
  }

  else
  {
    v15 = v0[18];

    v17 = v0[15];
    v16 = v0[16];
    v18 = v0[12];

    v19 = v0[1];

    return v19();
  }
}

uint64_t sub_1000CA9FC()
{
  v1 = *v0;
  v2 = *(*v0 + 176);
  v3 = *(*v0 + 168);
  v7 = *v0;

  v4 = *(v1 + 160);
  v5 = *(v1 + 152);

  return _swift_task_switch(sub_1000CAB40, v5, v4);
}

uint64_t sub_1000CAB40()
{
  v1 = v0[8];
  if (v1 == 1)
  {
    v2 = v0[18];
LABEL_6:

LABEL_8:
    v8 = v0[16];
    v9 = v0[13];
    v10 = v0[14];
    (*(v0[11] + 8))(v0[12], v0[10]);
    (*(v10 + 8))(v8, v9);
    v12 = v0[15];
    v11 = v0[16];
    v13 = v0[12];

    v14 = v0[1];

    return v14();
  }

  v3 = v0[9];
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    v7 = v0[18];

    sub_1000CB55C(v1);
    goto LABEL_8;
  }

  v5 = Strong;
  if (static Task<>.isCancelled.getter())
  {
    v6 = v0[18];

    sub_1000CB55C(v1);
    goto LABEL_6;
  }

  v16 = *(v5 + 32);
  if (v16)
  {
    if (v16 == v1)
    {
      goto LABEL_17;
    }

LABEL_15:
    if (swift_unknownObjectWeakLoadStrong())
    {
      type metadata accessor for PrimarySettingsListModel();
      sub_1000A2E28();
      swift_unknownObjectRelease();
    }

    goto LABEL_17;
  }

  if (v1)
  {
    goto LABEL_15;
  }

LABEL_17:
  v17 = *(v5 + 32);
  *(v5 + 32) = v1;

  swift_unknownObjectRelease();
  v18 = v0[17];
  v19 = static MainActor.shared.getter();
  v0[21] = v19;
  v20 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v21 = swift_task_alloc();
  v0[22] = v21;
  *v21 = v0;
  v21[1] = sub_1000CA9FC;
  v22 = v0[12];
  v23 = v0[10];

  return AsyncStream.Iterator.next(isolation:)(v0 + 8, v19, &protocol witness table for MainActor, v23);
}

void *sub_1000CADD0()
{
  v1 = v0;
  v2 = type metadata accessor for PrimarySettingsListSectionModel();
  v37 = *(v2 - 8);
  v38 = v2;
  v3 = *(v37 + 64);
  v4 = __chkstk_darwin(v2);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v44 = &v34 - v7;
  v8 = *(v0 + 32);
  if (!v8)
  {
    return &_swiftEmptyArrayStorage;
  }

  v9 = *(v0 + 32);
  v10 = [swift_unknownObjectRetain() items];
  v43 = sub_100008294(0, &qword_10015F9A0, FLFollowUpItem_ptr);
  v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v11 >> 62)
  {
LABEL_29:
    v12 = _CocoaArrayWrapper.endIndex.getter();
    if (v12)
    {
      goto LABEL_4;
    }

    goto LABEL_30;
  }

  v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v12)
  {
LABEL_30:
    swift_unknownObjectRelease();

    return &_swiftEmptyArrayStorage;
  }

LABEL_4:
  v13 = 0;
  v14 = *(v1 + OBJC_IVAR____TtC11SettingsApp49CoreFollowUpNoGroupSectionCollectionModelProvider_group);
  v42 = v11 & 0xC000000000000001;
  v34 = v11 & 0xFFFFFFFFFFFFFF8;
  v15 = &_swiftEmptyArrayStorage;
  v40 = v12;
  v41 = v11;
  v39 = v14;
  v35 = v6;
  v36 = v8;
  while (1)
  {
    if (v42)
    {
      v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v13 >= *(v34 + 16))
      {
        goto LABEL_28;
      }

      v17 = *(v11 + 8 * v13 + 32);
    }

    v18 = v17;
    v1 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    v19 = sub_1000CF860(v17, v8);
    result = [v18 uniqueIdentifier];
    v21 = result;
    v45 = v15;
    if (v14 != 1)
    {
      break;
    }

    if (!result)
    {
      goto LABEL_34;
    }

    v22 = 1;
LABEL_20:
    v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v24;

    if (v19[2])
    {
      v26 = v38;
      v27 = *(v38 + 24);
      v28 = type metadata accessor for LocalizedStringResource();
      v29 = v19;
      v30 = v44;
      (*(*(v28 - 8) + 56))(v44 + v27, 1, 1, v28);
      *v30 = v23;
      *(v30 + 8) = v25;
      *(v30 + 16) = v22;
      *(v30 + 24) = 0;
      *(v30 + 32) = 0;
      v31 = *(v26 + 28);
      v6 = v35;
      *(v30 + v31) = v29;
      sub_1000CB1B0(v30, v6);
      v15 = v45;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v15 = sub_1000C5098(0, v15[2] + 1, 1, v15);
      }

      v16 = v40;
      v11 = v41;
      v33 = v15[2];
      v32 = v15[3];
      v8 = v36;
      if (v33 >= v32 >> 1)
      {
        v15 = sub_1000C5098(v32 > 1, v33 + 1, 1, v15);
      }

      sub_10002CA38(v44);
      v15[2] = v33 + 1;
      sub_10002C928(v6, v15 + ((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v33);
    }

    else
    {
      sub_100025CD8(v23, v25, v22);

      v16 = v40;
      v11 = v41;
      v15 = v45;
    }

    ++v13;
    v14 = v39;
    if (v1 == v16)
    {
      swift_unknownObjectRelease();

      return v15;
    }
  }

  if (v14)
  {
    if (!result)
    {
      goto LABEL_35;
    }

    v22 = 2;
    goto LABEL_20;
  }

  if (result)
  {
    v22 = 0;
    goto LABEL_20;
  }

  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
  return result;
}

uint64_t sub_1000CB1B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PrimarySettingsListSectionModel();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000CB214(uint64_t a1)
{
  v4 = *(sub_10004DED0(&qword_10015C900, &qword_1001123C0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10000A924;

  return sub_1000C9D94(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_1000CB340(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000ACE4;

  return sub_1000CA6AC(a1, v4, v5, v6);
}

uint64_t sub_1000CB3F4(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_10004DED0(&qword_10015C900, &qword_1001123C0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_10004DED0(&unk_10015FAA0, qword_100112870) - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_10000ACE4;

  return sub_1000C989C(a1, v10, v11, v1 + v6, v1 + v9);
}

uint64_t sub_1000CB55C(uint64_t result)
{
  if (result != 1)
  {
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1000CB58C()
{
  v1 = objc_opt_self();
  v2 = [v1 defaultStore];
  if (!v2)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    return _swift_continuation_await(v2);
  }

  v3 = v2;
  v4 = [v2 aa_primaryAppleAccount];
  if (v4 && (v5 = v4, v6 = [v4 identifier], v5, v6))
  {
    static String._conditionallyBridgeFromObjectiveC(_:result:)();
  }

  else
  {
  }

  v0[19] = 0;
  v0[20] = 0;
  v2 = [v1 defaultStore];
  if (!v2)
  {
    goto LABEL_13;
  }

  v7 = v2;
  v0[21] = sub_100104DCC();

  v8 = [objc_allocWithZone(FLTopLevelViewModel) initWithBundleIdentifier:FLFollowUpPreferencesBundleIdentifier clientIdentifier:0];
  v0[22] = v8;
  if (qword_10015AB38 != -1)
  {
    swift_once();
  }

  v9 = qword_10015F830;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1000CB7E8;
  v10 = swift_continuation_init();
  v0[17] = sub_10004DED0(&unk_10015FA00, &qword_100115DA0);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_10009F7E8;
  v0[13] = &unk_100151208;
  v0[14] = v10;
  [v8 sapp_groupsWithQueue:v9 completion:v0 + 10];
  v2 = v0 + 2;

  return _swift_continuation_await(v2);
}

uint64_t sub_1000CB7E8()
{
  v1 = *v0;
  v3 = *v0;

  return _swift_task_switch(sub_1000CB8C8, 0, 0);
}

uint64_t sub_1000CB8C8()
{
  v1 = *(v0 + 144);
  if (v1 >> 62)
  {
    goto LABEL_39;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v2)
  {
    while (1)
    {
      v3 = 0;
      v35 = *(v0 + 160);
      v36 = *(v0 + 168);
      while ((v1 & 0xC000000000000001) != 0)
      {
        v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v10 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
LABEL_32:
          __break(1u);
          goto LABEL_41;
        }

LABEL_11:
        v11 = [v9 identifier];
        v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v14 = v13;

        if (v12 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v14 == v15)
        {

          v18 = *(v0 + 184);
          if (!*(v0 + 184))
          {
            goto LABEL_24;
          }
        }

        else
        {
          v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v17 & 1) == 0)
          {
            goto LABEL_7;
          }

          v18 = *(v0 + 184);
          if (!*(v0 + 184))
          {
LABEL_24:
            v23 = [v9 accountID];
            v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v26 = v25;

            if (!v35)
            {

              goto LABEL_7;
            }

            if (v24 == *(v0 + 152) && *(v0 + 160) == v26)
            {
              goto LABEL_35;
            }

LABEL_27:
            v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v27)
            {
              goto LABEL_34;
            }

            goto LABEL_7;
          }
        }

        if (v18 == 1)
        {
          if (!v36[2])
          {
            goto LABEL_7;
          }

          v19 = [v9 accountID];
          v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v22 = v21;

          if (!v36[2])
          {
            goto LABEL_38;
          }

          if (v20 == v36[4] && v22 == v36[5])
          {
LABEL_35:
            v30 = *(v0 + 168);
            v29 = *(v0 + 176);

            goto LABEL_36;
          }

          goto LABEL_27;
        }

        v4 = [v9 accountID];
        v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v7 = v6;

        v8 = HIBYTE(v7) & 0xF;
        if ((v7 & 0x2000000000000000) == 0)
        {
          v8 = v5 & 0xFFFFFFFFFFFFLL;
        }

        if (!v8)
        {
LABEL_34:
          v28 = *(v0 + 168);

LABEL_36:

          goto LABEL_42;
        }

LABEL_7:
        swift_unknownObjectRelease();
        ++v3;
        if (v10 == v2)
        {
          goto LABEL_41;
        }
      }

      if (v3 < *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        break;
      }

      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      v2 = _CocoaArrayWrapper.endIndex.getter();
      if (!v2)
      {
        goto LABEL_40;
      }
    }

    v9 = *(v1 + 8 * v3 + 32);
    swift_unknownObjectRetain();
    v10 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      goto LABEL_32;
    }

    goto LABEL_11;
  }

LABEL_40:
  v31 = *(v0 + 160);
LABEL_41:
  v32 = *(v0 + 168);

  v9 = 0;
LABEL_42:
  v33 = *(v0 + 8);

  return v33(v9);
}

uint64_t sub_1000CBC2C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10004DED0(&qword_10015F9A8, &qword_100117210);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000CBC9C()
{
  v10 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v0 = *(v10 - 8);
  v1 = *(v0 + 64);
  __chkstk_darwin(v10);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OS_dispatch_queue.Attributes();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9[1] = sub_100008294(0, &qword_10015C9D0, OS_dispatch_queue_ptr);
  static DispatchQoS.userInitiated.getter();
  v11 = &_swiftEmptyArrayStorage;
  sub_10001F7D4();
  sub_10004DED0(&unk_10015FD30, &unk_100117260);
  sub_1000525A0(&qword_10015FA20, &unk_10015FD30, &unk_100117260);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v0 + 104))(v3, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v10);
  result = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  qword_10015FA30 = result;
  return result;
}

uint64_t sub_1000CBEFC()
{
  v1 = v0;
  v2 = sub_10004DED0(&unk_10015F990, &unk_100115CF0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v26 - v5;
  v7 = sub_10004DED0(&qword_10015F9A8, &qword_100117210);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v26 - v9;
  v11 = OBJC_IVAR____TtC11SettingsApp32CoreFollowUpSectionModelProvider_observationTasks;
  swift_beginAccess();
  v12 = *(v1 + v11);
  v13 = *(v12 + 16);
  if (v13)
  {
    v27 = v11;
    v28 = v3;
    v29 = v2;

    v14 = 32;
    do
    {
      v15 = *(v12 + v14);

      Task.cancel()();

      v14 += 8;
      --v13;
    }

    while (v13);

    v3 = v28;
    v2 = v29;
    v11 = v27;
  }

  v16 = OBJC_IVAR____TtC11SettingsApp32CoreFollowUpSectionModelProvider_updateStreamContinuation;
  swift_beginAccess();
  sub_1000CBC2C(v1 + v16, v10);
  v17 = sub_10004DED0(&unk_10015FAA0, qword_100112870);
  v18 = *(v17 - 8);
  result = (*(v18 + 48))(v10, 1, v17);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    AsyncStream.Continuation.finish()();
    (*(v18 + 8))(v10, v17);
    v20 = OBJC_IVAR____TtC11SettingsApp32CoreFollowUpSectionModelProvider_modelStreamContinuation;
    (*(v3 + 16))(v6, v1 + OBJC_IVAR____TtC11SettingsApp32CoreFollowUpSectionModelProvider_modelStreamContinuation, v2);
    AsyncStream.Continuation.finish()();
    v21 = *(v3 + 8);
    v21(v6, v2);
    sub_1000122B4(v1 + 16);
    v22 = *(v1 + 40);
    swift_unknownObjectRelease();
    sub_1000068B0(v1 + OBJC_IVAR____TtC11SettingsApp32CoreFollowUpSectionModelProvider_updateStream, &unk_10015F9B0, &unk_1001170F0);
    sub_1000068B0(v1 + v16, &qword_10015F9A8, &qword_100117210);
    v23 = *(v1 + v11);

    v24 = OBJC_IVAR____TtC11SettingsApp32CoreFollowUpSectionModelProvider_modelStream;
    v25 = sub_10004DED0(&qword_10015EA20, &unk_1001170E0);
    (*(*(v25 - 8) + 8))(v1 + v24, v25);
    v21((v1 + v20), v2);
    return v1;
  }

  return result;
}

uint64_t sub_1000CC258()
{
  sub_1000CBEFC();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1000CC2B8()
{
  v0 = sub_10004DED0(&unk_10015C570, &qword_100112440);
  v99 = *(v0 - 8);
  v100 = v0;
  v1 = *(v99 + 64);
  __chkstk_darwin(v0);
  v98 = v94 - v2;
  v3 = sub_10004DED0(&unk_10015D490, &qword_100112150);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v111 = v94 - v5;
  v6 = sub_10004DED0(&qword_10015F9A8, &qword_100117210);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v96 = v94 - v8;
  v9 = sub_10004DED0(&unk_10015F9B0, &unk_1001170F0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v94 - v11;
  v13 = sub_10004DED0(&qword_10015C580, &unk_1001123B0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = (v94 - v16);
  v18 = sub_10004DED0(&unk_10015FAA0, qword_100112870);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = __chkstk_darwin(v18);
  v95 = v94 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94[1] = v22;
  __chkstk_darwin(v21);
  v24 = v94 - v23;
  v25 = sub_10004DED0(&qword_10015C900, &qword_1001123C0);
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  v28 = __chkstk_darwin(v25);
  v104 = v94 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __chkstk_darwin(v28);
  v101 = v94 - v31;
  v103 = v32;
  __chkstk_darwin(v30);
  v34 = v94 - v33;
  *v17 = 1;
  (*(v14 + 104))(v17, enum case for AsyncStream.Continuation.BufferingPolicy.bufferingNewest<A>(_:), v13);
  static AsyncStream.makeStream(of:bufferingPolicy:)();
  (*(v14 + 8))(v17, v13);
  v36 = (v26 + 16);
  v35 = *(v26 + 16);
  v108 = v34;
  v102 = v35;
  v35(v12, v34, v25);
  v109 = v25;
  v110 = v26;
  v37 = v26;
  v38 = v97;
  (*(v37 + 56))(v12, 0, 1, v25);
  v39 = OBJC_IVAR____TtC11SettingsApp32CoreFollowUpSectionModelProvider_updateStream;
  swift_beginAccess();
  sub_1000BB1A0(v12, v38 + v39, &unk_10015F9B0, &unk_1001170F0);
  swift_endAccess();
  v40 = *(v19 + 16);
  v41 = v96;
  v105 = v24;
  v40(v96, v24, v18);
  v106 = v19;
  v107 = v18;
  (*(v19 + 56))(v41, 0, 1, v18);
  v42 = OBJC_IVAR____TtC11SettingsApp32CoreFollowUpSectionModelProvider_updateStreamContinuation;
  swift_beginAccess();
  sub_1000BB1A0(v41, v38 + v42, &qword_10015F9A8, &qword_100117210);
  swift_endAccess();
  if (qword_10015AB40 != -1)
  {
    swift_once();
  }

  v43 = v101;
  sub_100015934(0xD000000000000024, 0x8000000100124C70, qword_10015FA30, v101);
  v44 = type metadata accessor for TaskPriority();
  (*(*(v44 - 8) + 56))(v111, 1, 1, v44);
  v45 = v104;
  v46 = v43;
  v47 = v109;
  v96 = v36;
  v102(v104, v46, v109);
  v48 = v107;
  v40(v95, v105, v107);
  type metadata accessor for MainActor();
  v49 = static MainActor.shared.getter();
  v50 = v110;
  v51 = (*(v110 + 80) + 32) & ~*(v110 + 80);
  v52 = v106;
  v53 = (v103 + *(v106 + 80) + v51) & ~*(v106 + 80);
  v54 = swift_allocObject();
  *(v54 + 16) = v49;
  *(v54 + 24) = &protocol witness table for MainActor;
  (*(v50 + 32))(v54 + v51, v45, v47);
  (*(v52 + 32))(v54 + v53, v95, v48);
  v55 = sub_100094AF4(0, 0, v111, &unk_100117248, v54);
  v56 = OBJC_IVAR____TtC11SettingsApp32CoreFollowUpSectionModelProvider_observationTasks;
  swift_beginAccess();
  v57 = *(v38 + v56);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v38 + v56) = v57;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v57 = sub_100015698(0, v57[2] + 1, 1, v57);
    *(v38 + v56) = v57;
  }

  v60 = v57[2];
  v59 = v57[3];
  v61 = v110;
  if (v60 >= v59 >> 1)
  {
    v57 = sub_100015698((v59 > 1), v60 + 1, 1, v57);
  }

  v57[2] = v60 + 1;
  v57[v60 + 4] = v55;
  *(v38 + v56) = v57;
  swift_endAccess();

  (*(v61 + 8))(v101, v47);
  v62 = type metadata accessor for TaskPriority();
  v63 = *(v62 - 8);
  v64 = *(v63 + 56);
  v65 = v111;
  v101 = v62;
  v95 = (v63 + 56);
  v96 = v64;
  (v64)(v111, 1, 1);
  v66 = swift_allocObject();
  swift_weakInit();
  v67 = v104;
  v102(v104, v108, v47);
  type metadata accessor for MainActor();

  v68 = static MainActor.shared.getter();
  v69 = (*(v61 + 80) + 32) & ~*(v61 + 80);
  v70 = v61;
  v71 = (v103 + v69 + 7) & 0xFFFFFFFFFFFFFFF8;
  v72 = swift_allocObject();
  v73 = v47;
  v74 = v72;
  *(v72 + 16) = v68;
  *(v72 + 24) = &protocol witness table for MainActor;
  (*(v70 + 32))(v72 + v69, v67, v73);
  *(v74 + v71) = v66;

  v75 = sub_100094AF4(0, 0, v65, &unk_100117220, v74);
  v76 = OBJC_IVAR____TtC11SettingsApp32CoreFollowUpSectionModelProvider_observationTasks;
  swift_beginAccess();
  v77 = *(v38 + v76);

  v78 = swift_isUniquelyReferenced_nonNull_native();
  *(v38 + v76) = v77;
  if ((v78 & 1) == 0)
  {
    v77 = sub_100015698(0, v77[2] + 1, 1, v77);
    *(v38 + v76) = v77;
  }

  v80 = v77[2];
  v79 = v77[3];
  if (v80 >= v79 >> 1)
  {
    v77 = sub_100015698((v79 > 1), v80 + 1, 1, v77);
  }

  v77[2] = v80 + 1;
  v77[v80 + 4] = v75;
  *(v38 + v76) = v77;
  swift_endAccess();
  v81 = v111;
  (v96)(v111, 1, 1, v101);
  v82 = swift_allocObject();
  swift_weakInit();

  v83 = static MainActor.shared.getter();
  v84 = swift_allocObject();
  v84[2] = v83;
  v84[3] = &protocol witness table for MainActor;
  v84[4] = v82;

  v85 = sub_100094AF4(0, 0, v81, &unk_100117230, v84);
  swift_beginAccess();
  v86 = *(v38 + v76);

  v87 = swift_isUniquelyReferenced_nonNull_native();
  *(v38 + v76) = v86;
  if ((v87 & 1) == 0)
  {
    v86 = sub_100015698(0, v86[2] + 1, 1, v86);
    *(v38 + v76) = v86;
  }

  v88 = v110;
  v90 = v86[2];
  v89 = v86[3];
  if (v90 >= v89 >> 1)
  {
    v86 = sub_100015698((v89 > 1), v90 + 1, 1, v86);
  }

  v86[2] = v90 + 1;
  v86[v90 + 4] = v85;
  *(v38 + v76) = v86;
  swift_endAccess();
  v91 = v98;
  v92 = v105;
  AsyncStream.Continuation.yield<A>()();

  (*(v99 + 8))(v91, v100);
  (*(v106 + 8))(v92, v107);
  return (*(v88 + 8))(v108, v109);
}

uint64_t sub_1000CCF64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = sub_10004DED0(&unk_10015C570, &qword_100112440);
  v5[4] = v6;
  v7 = *(v6 - 8);
  v5[5] = v7;
  v8 = *(v7 + 64) + 15;
  v5[6] = swift_task_alloc();
  v9 = sub_10004DED0(&qword_10015C460, &qword_100112450);
  v5[7] = v9;
  v10 = *(v9 - 8);
  v5[8] = v10;
  v11 = *(v10 + 64) + 15;
  v5[9] = swift_task_alloc();
  v5[10] = type metadata accessor for MainActor();
  v5[11] = static MainActor.shared.getter();
  v13 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[12] = v13;
  v5[13] = v12;

  return _swift_task_switch(sub_1000CD0D0, v13, v12);
}

uint64_t sub_1000CD0D0()
{
  v1 = v0[9];
  v2 = v0[2];
  sub_10004DED0(&qword_10015C900, &qword_1001123C0);
  AsyncStream.makeAsyncIterator()();
  v3 = v0[10];
  v4 = static MainActor.shared.getter();
  v0[14] = v4;
  v5 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v6 = swift_task_alloc();
  v0[15] = v6;
  *v6 = v0;
  v6[1] = sub_1000CD1B0;
  v7 = v0[9];
  v8 = v0[7];

  return AsyncStream.Iterator.next(isolation:)(v0 + 16, v4, &protocol witness table for MainActor, v8);
}

uint64_t sub_1000CD1B0()
{
  v1 = *v0;
  v2 = *(*v0 + 120);
  v3 = *(*v0 + 112);
  v7 = *v0;

  v4 = *(v1 + 104);
  v5 = *(v1 + 96);

  return _swift_task_switch(sub_1000CD2F4, v5, v4);
}

uint64_t sub_1000CD2F4()
{
  if (*(v0 + 128) & 1) != 0 || (static Task<>.isCancelled.getter())
  {
    v1 = *(v0 + 88);
    v2 = *(v0 + 48);
    (*(*(v0 + 64) + 8))(*(v0 + 72), *(v0 + 56));

    v3 = *(v0 + 8);

    return v3();
  }

  else
  {
    v6 = *(v0 + 40);
    v5 = *(v0 + 48);
    v7 = *(v0 + 24);
    v8 = *(v0 + 32);
    AsyncStream.Continuation.yield<A>()();
    (*(v6 + 8))(v5, v8);
    v9 = *(v0 + 80);
    v10 = static MainActor.shared.getter();
    *(v0 + 112) = v10;
    v11 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
    v12 = swift_task_alloc();
    *(v0 + 120) = v12;
    *v12 = v0;
    v12[1] = sub_1000CD1B0;
    v13 = *(v0 + 72);
    v14 = *(v0 + 56);

    return AsyncStream.Iterator.next(isolation:)(v0 + 128, v10, &protocol witness table for MainActor, v14);
  }
}

uint64_t sub_1000CD45C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v6 = sub_10004DED0(&unk_10015FB90, &unk_100117148);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64) + 15;
  v5[12] = swift_task_alloc();
  v9 = sub_10004DED0(&unk_10015F9E0, &unk_100112BB0);
  v5[13] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v5[14] = swift_task_alloc();
  v5[15] = type metadata accessor for MainActor();
  v5[16] = static MainActor.shared.getter();
  v12 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[17] = v12;
  v5[18] = v11;

  return _swift_task_switch(sub_1000CD59C, v12, v11);
}

uint64_t sub_1000CD59C()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[8];
  v4 = v0[9];
  sub_10004DED0(&qword_10015C900, &qword_1001123C0);
  sub_1000525A0(&qword_10015C930, &qword_10015C900, &qword_1001123C0);
  AsyncSequence.debounce<>(for:tolerance:)();
  v5 = AsyncDebounceSequence.makeAsyncIterator()();
  v0[19] = v5;
  sub_1000068B0(v1, &unk_10015F9E0, &unk_100112BB0);
  v0[5] = v5;
  swift_beginAccess();
  v6 = v0[15];
  v0[20] = static MainActor.shared.getter();
  v7 = async function pointer to AsyncDebounceSequence.Iterator.next()[1];
  v8 = swift_task_alloc();
  v0[21] = v8;
  v9 = sub_10004DED0(&unk_10015F9F0, &qword_100112470);
  *v8 = v0;
  v8[1] = sub_1000CD738;

  return AsyncDebounceSequence.Iterator.next()(v0 + 26, v9);
}

uint64_t sub_1000CD738()
{
  v2 = *v1;
  v3 = *(*v1 + 168);
  v4 = *v1;
  *(v2 + 176) = v0;

  v5 = *(v2 + 160);
  if (v0)
  {
    if (v5)
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

    v9 = sub_1000CA3A8;
  }

  else
  {
    *(v2 + 209) = *(v2 + 208);
    if (v5)
    {
      swift_getObjectType();
      v6 = dispatch thunk of Actor.unownedExecutor.getter();
      v8 = v10;
    }

    else
    {
      v6 = 0;
      v8 = 0;
    }

    v9 = sub_1000CD8D8;
  }

  return _swift_task_switch(v9, v6, v8);
}

uint64_t sub_1000CD8D8()
{
  v1 = v0[20];

  v2 = v0[17];
  v3 = v0[18];

  return _swift_task_switch(sub_1000CD93C, v2, v3);
}

uint64_t sub_1000CD93C()
{
  if (*(v0 + 209) == 1 || (v1 = *(v0 + 72), Strong = swift_weakLoadStrong(), (*(v0 + 184) = Strong) == 0))
  {
    v5 = *(v0 + 128);
    goto LABEL_6;
  }

  v3 = Strong;
  if (static Task<>.isCancelled.getter())
  {
    v4 = *(v0 + 128);

LABEL_6:

    v6 = *(v0 + 152);
    v7 = *(v0 + 112);
    v8 = *(v0 + 96);

    v9 = *(v0 + 8);

    return v9();
  }

  v11 = *(v3 + 32);
  v12 = swift_task_alloc();
  *(v0 + 192) = v12;
  *v12 = v0;
  v12[1] = sub_1000CDA68;

  return sub_1000CF160(v11);
}

uint64_t sub_1000CDA68(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 192);
  v7 = *v1;
  *(*v1 + 200) = a1;

  v4 = *(v2 + 144);
  v5 = *(v2 + 136);

  return _swift_task_switch(sub_1000CDB90, v5, v4);
}

uint64_t sub_1000CDB90()
{
  v1 = v0[23];
  v3 = v0[11];
  v2 = v0[12];
  v4 = v0[10];
  v0[7] = v0[25];
  swift_unknownObjectRetain();
  sub_10004DED0(&unk_10015F990, &unk_100115CF0);
  AsyncStream.Continuation.yield(_:)();

  swift_unknownObjectRelease();
  (*(v3 + 8))(v2, v4);
  v5 = v0[15];
  v0[20] = static MainActor.shared.getter();
  v6 = async function pointer to AsyncDebounceSequence.Iterator.next()[1];
  v7 = swift_task_alloc();
  v0[21] = v7;
  v8 = sub_10004DED0(&unk_10015F9F0, &qword_100112470);
  *v7 = v0;
  v7[1] = sub_1000CD738;

  return AsyncDebounceSequence.Iterator.next()(v0 + 26, v8);
}

uint64_t sub_1000CDCE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a4;
  v5 = sub_10004DED0(&unk_10015F9D0, &qword_100117140);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64) + 15;
  v4[12] = swift_task_alloc();
  v8 = sub_10004DED0(&qword_10015EA20, &unk_1001170E0);
  v4[13] = v8;
  v9 = *(v8 - 8);
  v4[14] = v9;
  v10 = *(v9 + 64) + 15;
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();
  v4[17] = type metadata accessor for MainActor();
  v4[18] = static MainActor.shared.getter();
  v12 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[19] = v12;
  v4[20] = v11;

  return _swift_task_switch(sub_1000CDE58, v12, v11);
}

uint64_t sub_1000CDE58()
{
  v1 = v0[9];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = v0[15];
    v4 = v0[16];
    v5 = v0[13];
    v6 = v0[14];
    v7 = v0[12];
    v8 = v0[9];
    (*(v6 + 16))(v3, Strong + OBJC_IVAR____TtC11SettingsApp32CoreFollowUpSectionModelProvider_modelStream, v5);

    (*(v6 + 32))(v4, v3, v5);
    AsyncStream.makeAsyncIterator()();
    swift_beginAccess();
    v9 = v0[17];
    v10 = static MainActor.shared.getter();
    v0[21] = v10;
    v11 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
    v12 = swift_task_alloc();
    v0[22] = v12;
    *v12 = v0;
    v12[1] = sub_1000CE030;
    v13 = v0[12];
    v14 = v0[10];

    return AsyncStream.Iterator.next(isolation:)(v0 + 8, v10, &protocol witness table for MainActor, v14);
  }

  else
  {
    v15 = v0[18];

    v17 = v0[15];
    v16 = v0[16];
    v18 = v0[12];

    v19 = v0[1];

    return v19();
  }
}

uint64_t sub_1000CE030()
{
  v1 = *v0;
  v2 = *(*v0 + 176);
  v3 = *(*v0 + 168);
  v7 = *v0;

  v4 = *(v1 + 160);
  v5 = *(v1 + 152);

  return _swift_task_switch(sub_1000CE174, v5, v4);
}

uint64_t sub_1000CE174()
{
  v1 = v0[8];
  if (v1 == 1)
  {
    v2 = v0[18];
LABEL_6:

LABEL_8:
    v8 = v0[16];
    v9 = v0[13];
    v10 = v0[14];
    (*(v0[11] + 8))(v0[12], v0[10]);
    (*(v10 + 8))(v8, v9);
    v12 = v0[15];
    v11 = v0[16];
    v13 = v0[12];

    v14 = v0[1];

    return v14();
  }

  v3 = v0[9];
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    v7 = v0[18];

    sub_1000CB55C(v1);
    goto LABEL_8;
  }

  v5 = Strong;
  if (static Task<>.isCancelled.getter())
  {
    v6 = v0[18];

    sub_1000CB55C(v1);
    goto LABEL_6;
  }

  v16 = *(v5 + 40);
  if (v16)
  {
    if (v16 == v1)
    {
      goto LABEL_17;
    }

LABEL_15:
    if (swift_unknownObjectWeakLoadStrong())
    {
      type metadata accessor for PrimarySettingsListModel();
      sub_1000A2E28();
      swift_unknownObjectRelease();
    }

    goto LABEL_17;
  }

  if (v1)
  {
    goto LABEL_15;
  }

LABEL_17:
  v17 = *(v5 + 40);
  *(v5 + 40) = v1;

  swift_unknownObjectRelease();
  v18 = v0[17];
  v19 = static MainActor.shared.getter();
  v0[21] = v19;
  v20 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v21 = swift_task_alloc();
  v0[22] = v21;
  *v21 = v0;
  v21[1] = sub_1000CE030;
  v22 = v0[12];
  v23 = v0[10];

  return AsyncStream.Iterator.next(isolation:)(v0 + 8, v19, &protocol witness table for MainActor, v23);
}

uint64_t sub_1000CE3BC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10004DED0(&unk_10015FB70, &unk_100112010);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v69 - v5;
  v7 = type metadata accessor for PrimarySettingsListItemModel();
  v76 = *(v7 - 8);
  v8 = *(v76 + 64);
  v9 = __chkstk_darwin(v7);
  v11 = &v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = &v69 - v13;
  __chkstk_darwin(v12);
  v16 = &v69 - v15;
  v17 = *(v1 + 40);
  if (v17)
  {
    v18 = *(v1 + 40);
    v19 = [swift_unknownObjectRetain() shouldCoalesceItems];
    v77 = v17;
    if (v19)
    {
      if ([v17 shouldCoalesceItems])
      {
        v20 = [v17 rowTitle];
        v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v71 = v22;
        v72 = v21;

        v23 = [v17 items];
        sub_100008294(0, &qword_10015F9A0, FLFollowUpItem_ptr);
        v24 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        v74 = v6;
        v75 = a1;
        v73 = v1;
        if (!(v24 >> 62))
        {
          v70 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_6:

          v17 = v77;
          if ([v77 restrictionEnabled])
          {
            v25 = 5;
          }

          else
          {
            v25 = 4;
          }

          v26 = [v17 identifier];
          v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v29 = v28;

          v30 = [v17 accountID];
          v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v33 = v32;

          v34 = &v14[*(v7 + 20)];
          v35 = v71;
          *v34 = v72;
          *(v34 + 1) = v35;
          *(v34 + 2) = v70;
          type metadata accessor for PrimarySettingsListItemViewType();
          swift_storeEnumTagMultiPayload();
          *v14 = v27;
          *(v14 + 1) = v29;
          *(v14 + 2) = v31;
          *(v14 + 3) = v33;
          v14[32] = 0;
          *&v14[*(v7 + 24)] = v25;
          sub_10002C634(v14, v16);
          sub_10004DED0(&unk_10015FB80, &unk_100116A40);
          v36 = *(v76 + 72);
          v37 = (*(v76 + 80) + 32) & ~*(v76 + 80);
          v38 = swift_allocObject();
          *(v38 + 1) = xmmword_1001103C0;
          sub_10002C634(v16, v38 + v37);
          goto LABEL_24;
        }

LABEL_45:
        v70 = _CocoaArrayWrapper.endIndex.getter();
        goto LABEL_6;
      }

      v38 = _swiftEmptyArrayStorage;
      if (_swiftEmptyArrayStorage[2])
      {
        goto LABEL_27;
      }

LABEL_43:
      v68 = type metadata accessor for PrimarySettingsListSectionModel();
      (*(*(v68 - 8) + 56))(a1, 1, 1, v68);
      swift_unknownObjectRelease();
    }

    v74 = v6;
    v75 = a1;
    v42 = [v17 items];
    v14 = sub_100008294(0, &qword_10015F9A0, FLFollowUpItem_ptr);
    v43 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v43 >> 62)
    {
      v44 = _CocoaArrayWrapper.endIndex.getter();
      if (v44)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v44 = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v44)
      {
LABEL_15:
        v73 = v1;
        v78 = _swiftEmptyArrayStorage;
        sub_1000F52FC(0, v44 & ~(v44 >> 63), 0);
        if ((v44 & 0x8000000000000000) == 0)
        {
          v45 = 0;
          v38 = v78;
          do
          {
            if ((v43 & 0xC000000000000001) != 0)
            {
              v46 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              v46 = *(v43 + 8 * v45 + 32);
            }

            v47 = v46;
            sub_1000D0018(v46, v17, v11);

            v78 = v38;
            v49 = v38[2];
            v48 = v38[3];
            if (v49 >= v48 >> 1)
            {
              sub_1000F52FC(v48 > 1, v49 + 1, 1);
              v38 = v78;
            }

            ++v45;
            v38[2] = v49 + 1;
            sub_10002C634(v11, v38 + ((*(v76 + 80) + 32) & ~*(v76 + 80)) + *(v76 + 72) * v49);
            v17 = v77;
          }

          while (v44 != v45);

LABEL_24:
          v6 = v74;
          a1 = v75;
          v1 = v73;
          if (!v38[2])
          {
            goto LABEL_43;
          }

LABEL_27:
          v50 = [v17 groupTitle];
          v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v52 = v17;
          v54 = v53;

          v55 = *(v1 + 32);
          if (v55 == 7)
          {
            v56 = 8;
          }

          else
          {
            v57 = [v52 footerText];
            if (v57)
            {
              v58 = v6;
              v59 = v57;
              v60 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v62 = v61;

              v63 = v62;
              v64 = HIBYTE(v62) & 0xF;
              if ((v62 & 0x2000000000000000) == 0)
              {
                v64 = v60 & 0xFFFFFFFFFFFFLL;
              }

              if (!v64)
              {

                v63 = 0;
              }

              v6 = v58;
            }

            else
            {
              v63 = 0;
            }

            v56 = qword_1001172B0[v55];
            if (!v63)
            {
              v65 = 1;
              goto LABEL_39;
            }
          }

          LocalizedStringResource.init(stringLiteral:)();
          v65 = 0;
LABEL_39:
          swift_unknownObjectRelease();
          v66 = type metadata accessor for LocalizedStringResource();
          (*(*(v66 - 8) + 56))(v6, v65, 1, v66);
          *a1 = v56;
          *(a1 + 8) = 0;
          *(a1 + 16) = 3;
          *(a1 + 24) = v51;
          *(a1 + 32) = v54;
          v67 = type metadata accessor for PrimarySettingsListSectionModel();
          sub_10002CA94(v6, a1 + *(v67 + 24));
          *(a1 + *(v67 + 28)) = v38;
          return (*(*(v67 - 8) + 56))(a1, 0, 1, v67);
        }

        __break(1u);
        goto LABEL_45;
      }
    }

    v38 = _swiftEmptyArrayStorage;
    v6 = v74;
    a1 = v75;
    if (_swiftEmptyArrayStorage[2])
    {
      goto LABEL_27;
    }

    goto LABEL_43;
  }

  v39 = type metadata accessor for PrimarySettingsListSectionModel();
  v40 = *(*(v39 - 8) + 56);

  return v40(a1, 1, 1, v39);
}

uint64_t sub_1000CEB0C(unsigned __int8 a1, id a2, uint64_t a3, uint64_t a4, void *a5)
{
  v10 = [a2 identifier];
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  if (a1 <= 3u)
  {
    if (a1 > 1u)
    {
      if (a1 != 2)
      {
        goto LABEL_4;
      }
    }

    else if (!a1)
    {
LABEL_4:
      v14 = &FLGroupIdentifierAccount;
LABEL_13:
      v15 = *v14;
      goto LABEL_14;
    }

    v14 = &FLGroupIdentifierAppleServices;
    goto LABEL_13;
  }

  if (a1 <= 5u)
  {
    if (a1 == 4)
    {
      v14 = &FLGroupIdentifierDevice;
    }

    else
    {
      v14 = &FLGroupIdentifierSecureMicrophone;
    }

    goto LABEL_13;
  }

  if (a1 == 6)
  {
    v14 = &FLGroupIdentifierNewDeviceOutreach;
    goto LABEL_13;
  }

  v15 = String._bridgeToObjectiveC()();
LABEL_14:
  v16 = v15;
  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;

  if (v11 == v17 && v13 == v19)
  {
  }

  else
  {
    v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v21 & 1) == 0)
    {
      goto LABEL_31;
    }
  }

  if (a1 != 3)
  {
    if (a1)
    {
      v26 = 1;
      return v26 & 1;
    }

    v22 = [a2 accountID];
    v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v24;

    if (a4)
    {
      if (v23 == a3 && v25 == a4)
      {
        v26 = 1;
      }

      else
      {
        v26 = _stringCompareWithSmolCheck(_:_:expecting:)();
      }
    }

    else
    {
      v26 = 0;
    }

LABEL_37:

    return v26 & 1;
  }

  if (a5[2])
  {
    v28 = a5[4];
    v27 = a5[5];

    v29 = [a2 accountID];
    v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v32 = v31;

    if (v30 == v28 && v32 == v27)
    {

      v26 = 1;
    }

    else
    {
      v26 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    goto LABEL_37;
  }

LABEL_31:
  v26 = 0;
  return v26 & 1;
}

uint64_t sub_1000CEE18(uint64_t a1)
{
  v4 = *(sub_10004DED0(&qword_10015C900, &qword_1001123C0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10000A924;

  return sub_1000CD45C(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_1000CEF44(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000ACE4;

  return sub_1000CDCE0(a1, v4, v5, v6);
}

uint64_t sub_1000CEFF8(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_10004DED0(&qword_10015C900, &qword_1001123C0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_10004DED0(&unk_10015FAA0, qword_100112870) - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_10000ACE4;

  return sub_1000CCF64(a1, v10, v11, v1 + v6, v1 + v9);
}

uint64_t sub_1000CF180()
{
  v1 = objc_opt_self();
  v2 = [v1 defaultStore];
  if (!v2)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    return _swift_continuation_await(v2);
  }

  v3 = v2;
  v4 = [v2 aa_primaryAppleAccount];
  if (v4 && (v5 = v4, v6 = [v4 identifier], v5, v6))
  {
    static String._conditionallyBridgeFromObjectiveC(_:result:)();
  }

  else
  {
  }

  v0[19] = 0;
  v0[20] = 0;
  v2 = [v1 defaultStore];
  if (!v2)
  {
    goto LABEL_13;
  }

  v7 = v2;
  v0[21] = sub_100104DCC();

  v8 = [objc_allocWithZone(FLTopLevelViewModel) initWithBundleIdentifier:FLFollowUpPreferencesBundleIdentifier clientIdentifier:0];
  v0[22] = v8;
  if (qword_10015AB40 != -1)
  {
    swift_once();
  }

  v9 = qword_10015FA30;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1000CF3DC;
  v10 = swift_continuation_init();
  v0[17] = sub_10004DED0(&unk_10015FA00, &qword_100115DA0);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_10009F7E8;
  v0[13] = &unk_1001512F8;
  v0[14] = v10;
  [v8 sapp_groupsWithQueue:v9 completion:v0 + 10];
  v2 = v0 + 2;

  return _swift_continuation_await(v2);
}

uint64_t sub_1000CF3DC()
{
  v1 = *v0;
  v3 = *v0;

  return _swift_task_switch(sub_1000CF4BC, 0, 0);
}

uint64_t sub_1000CF4BC()
{
  v2 = *(v0 + 184);
  v3 = *(v0 + 144);
  v4 = v3 >> 62;
  if ((v2 - 1) < 2)
  {
    if (v4)
    {
      goto LABEL_44;
    }

    v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v5)
    {
LABEL_45:
      v18 = 1;
LABEL_46:

      v11 = 0;
      goto LABEL_47;
    }

LABEL_4:
    v6 = 0;
    v7 = v3 & 0xC000000000000001;
    v1 = v3 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v7)
      {
        v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v9 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
LABEL_13:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v6 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_42:
          __break(1u);
LABEL_43:
          __break(1u);
LABEL_44:
          v5 = _CocoaArrayWrapper.endIndex.getter();
          if (!v5)
          {
            goto LABEL_45;
          }

          goto LABEL_4;
        }

        v8 = *(v3 + 8 * v6 + 32);
        swift_unknownObjectRetain();
        v9 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          goto LABEL_13;
        }
      }

      if (sub_1000CEB0C(0, v8, *(v0 + 152), *(v0 + 160), *(v0 + 168)))
      {
        goto LABEL_26;
      }

      swift_unknownObjectRelease();
      ++v6;
      if (v9 == v5)
      {
        v15 = 1;
        goto LABEL_30;
      }
    }
  }

  if (v4)
  {
    v10 = _CocoaArrayWrapper.endIndex.getter();
    if (v10)
    {
      goto LABEL_16;
    }

LABEL_53:

    v11 = 0;
    goto LABEL_54;
  }

  v10 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v10)
  {
    goto LABEL_53;
  }

LABEL_16:
  v5 = 0;
  v2 = v3 & 0xFFFFFFF8;
  while ((v3 & 0xC000000000000001) != 0)
  {
    v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    v7 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      goto LABEL_25;
    }

LABEL_20:
    if (sub_1000CEB0C(*(v0 + 184), v11, *(v0 + 152), *(v0 + 160), *(v0 + 168)))
    {

LABEL_54:
      v22 = *(v0 + 160);
      v21 = *(v0 + 168);

      goto LABEL_55;
    }

    swift_unknownObjectRelease();
    ++v5;
    if (v7 == v10)
    {
      goto LABEL_53;
    }
  }

  if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_42;
  }

  v11 = *(v3 + 8 * v5 + 32);
  swift_unknownObjectRetain();
  v7 = v5 + 1;
  if (!__OFADD__(v5, 1))
  {
    goto LABEL_20;
  }

LABEL_25:
  __break(1u);
LABEL_26:
  v12 = [swift_unknownObjectRetain() items];
  sub_100008294(0, &qword_10015F9A0, FLFollowUpItem_ptr);
  v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v13 >> 62)
  {
    v14 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  swift_unknownObjectRelease();
  v15 = v14 == 0;
LABEL_30:
  v25 = v15;
  v16 = 0;
  while (2)
  {
    if (v7)
    {
      v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      goto LABEL_34;
    }

    if (v16 >= *(v1 + 16))
    {
      goto LABEL_43;
    }

    v11 = *(v3 + 8 * v16 + 32);
    swift_unknownObjectRetain();
    v17 = v16 + 1;
    if (!__OFADD__(v16, 1))
    {
LABEL_34:
      if (sub_1000CEB0C(2u, v11, *(v0 + 152), *(v0 + 160), *(v0 + 168)))
      {
        goto LABEL_40;
      }

      swift_unknownObjectRelease();
      ++v16;
      if (v17 == v5)
      {
        v18 = v25;
        goto LABEL_46;
      }

      continue;
    }

    break;
  }

  __break(1u);
LABEL_40:

  v18 = v25;
LABEL_47:
  v20 = *(v0 + 160);
  v19 = *(v0 + 168);

  swift_unknownObjectRelease();

  if (v2 != 1)
  {
    if (!v18)
    {
      goto LABEL_55;
    }

    goto LABEL_51;
  }

  if ((v18 & 1) == 0)
  {
LABEL_51:
    swift_unknownObjectRelease();
    v11 = 0;
  }

LABEL_55:
  v23 = *(v0 + 8);

  return v23(v11);
}

void *sub_1000CF860(void *a1, void *a2)
{
  v92 = type metadata accessor for PrimarySettingsListItemModel();
  v4 = *(v92 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v92);
  v99 = v81 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v10 = v81 - v9;
  __chkstk_darwin(v8);
  v12 = v81 - v11;
  p_base_meths = &WalletAndApplePayOrPaymentAndContactlessListItemProvider.base_meths;
  v93 = a2;
  v14 = [a2 identifier];
  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;

  if (v15 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v17 == v18)
  {
  }

  else
  {
    v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v20 & 1) == 0)
    {
      return &_swiftEmptyArrayStorage;
    }
  }

  if (([a1 displayStyle] & 2) != 0)
  {
    sub_1000D0018(a1, v93, v12);
    sub_10004DED0(&unk_10015FB80, &unk_100116A40);
    v29 = *(v4 + 72);
    v30 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_1001103C0;
    sub_1000D0C28(v12, v21 + v30, type metadata accessor for PrimarySettingsListItemModel);
    return v21;
  }

  result = [a1 uniqueIdentifier];
  if (!result)
  {
    goto LABEL_52;
  }

  v23 = result;
  v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v82 = v25;

  v26 = sub_1000D0614();
  v27 = v26;
  if (v26)
  {
    v28 = 0;
    v100 = 0;
    v101 = v26;
  }

  else
  {
    v101 = sub_1000D0A24();
    v28 = v31;
    if (v31)
    {

      v32 = 1;
    }

    else
    {
      v101 = 0;
      v32 = 255;
    }

    v100 = v32;
  }

  v33 = v27;
  result = [a1 title];
  if (!result)
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  v34 = result;
  v98 = v24;
  v102 = v4;
  v97 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v90 = v35;

  result = [a1 informativeText];
  if (!result)
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  v36 = result;
  v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v39 = v38;

  v40 = v92;
  v41 = &v10[*(v92 + 20)];
  v42 = v10;
  v43 = v101;
  *v41 = v101;
  *(v41 + 1) = v28;
  v44 = v100;
  v41[16] = v100;
  v45 = v90;
  *(v41 + 3) = v97;
  *(v41 + 4) = v45;
  *(v41 + 5) = v37;
  *(v41 + 6) = v39;
  v89 = type metadata accessor for PrimarySettingsListItemViewType();
  swift_storeEnumTagMultiPayload();
  v46 = v82;
  *v42 = v98;
  *(v42 + 8) = v46;
  *(v42 + 16) = 0;
  *(v42 + 24) = 0;
  *(v42 + 32) = 1;
  v47 = *(v40 + 24);
  v98 = v42;
  *(v42 + v47) = 4;

  sub_10005950C(v43, v28, v44);

  v81[1] = v39;

  v21 = sub_10002C850(0, 1, 1, &_swiftEmptyArrayStorage);
  v49 = *(v21 + 16);
  v48 = *(v21 + 24);
  v50 = v49 + 1;
  if (v49 >= v48 >> 1)
  {
LABEL_45:
    v21 = sub_10002C850(v48 > 1, v50, 1, v21);
  }

  v51 = v102;
  *(v21 + 16) = v50;
  v88 = (*(v51 + 80) + 32) & ~*(v51 + 80);
  v87 = v51[9];
  sub_1000D0C28(v98, v21 + v88 + v87 * v49, type metadata accessor for PrimarySettingsListItemModel);
  result = [a1 actions];
  if (result)
  {
    v52 = result;
    sub_1000D0BDC();
    v49 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v49 >> 62)
    {
      v50 = _CocoaArrayWrapper.endIndex.getter();
      if (v50)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v50 = *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v50)
      {
LABEL_23:
        v53 = 0;
        v91 = v49 & 0xC000000000000001;
        v83 = v49 & 0xFFFFFFFFFFFFFF8;
        v84 = v50;
        v85 = v49;
        v86 = a1;
        do
        {
          if (v91)
          {
            v54 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v48 = *(v83 + 16);
            if (v53 >= v48)
            {
              goto LABEL_44;
            }

            v54 = *(v49 + 8 * v53 + 32);
          }

          v55 = v54;
          v56 = v53 + 1;
          if (__OFADD__(v53, 1))
          {
            __break(1u);
LABEL_44:
            __break(1u);
            goto LABEL_45;
          }

          v57 = [v54 p_base_meths[478]];
          if (v57 || (v57 = [v55 label]) != 0)
          {

            result = [v55 p_base_meths[478]];
            v97 = v53 + 1;
            v98 = v21;
            if (!result)
            {
              result = [v55 label];
              if (!result)
              {
                goto LABEL_51;
              }
            }

            v102 = v55;
            v58 = result;
            v95 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v96 = v59;

            result = [a1 uniqueIdentifier];
            if (!result)
            {
              __break(1u);
LABEL_50:
              __break(1u);
LABEL_51:
              __break(1u);
LABEL_52:
              __break(1u);
              goto LABEL_53;
            }

            v60 = result;
            v94 = v53;
            v61 = v28;
            v62 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v64 = v63;

            v65 = [v93 restrictionEnabled];
            result = [v102 label];
            if (!result)
            {
              goto LABEL_50;
            }

            v66 = result;
            if (v65)
            {
              v67 = 7;
            }

            else
            {
              v67 = 6;
            }

            v68 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v70 = v69;

            v71 = v92;
            v72 = v99;
            v73 = v99 + *(v92 + 20);
            v74 = v101;
            *v73 = v101;
            *(v73 + 8) = v61;
            v75 = v100;
            *(v73 + 16) = v100;
            *(v73 + 24) = v68;
            *(v73 + 32) = v70;
            swift_storeEnumTagMultiPayload();
            *v72 = v62;
            *(v72 + 8) = v64;
            v76 = v96;
            *(v72 + 16) = v95;
            *(v72 + 24) = v76;
            *(v72 + 32) = 2;
            *(v72 + *(v71 + 24)) = v67;
            v28 = v61;
            sub_10005950C(v74, v61, v75);
            sub_10005950C(v74, v61, v75);
            v21 = v98;
            v77 = *(v98 + 16);
            v78 = *(v98 + 24);

            if (v77 >= v78 >> 1)
            {
              v21 = sub_10002C850(v78 > 1, v77 + 1, 1, v21);
            }

            p_base_meths = (&WalletAndApplePayOrPaymentAndContactlessListItemProvider + 32);
            v49 = v85;
            v53 = v94;
            v56 = v97;

            sub_100054F18(v101, v28, v100);

            *(v21 + 16) = v77 + 1;
            sub_1000D0C28(v99, v21 + v88 + v77 * v87, type metadata accessor for PrimarySettingsListItemModel);
            a1 = v86;
            v50 = v84;
          }

          else
          {
          }

          ++v53;
        }

        while (v56 != v50);
      }
    }

    v79 = v101;
    v80 = v100;
    sub_100054F18(v101, v28, v100);
    sub_100054F18(v79, v28, v80);

    return v21;
  }

LABEL_55:
  __break(1u);
  return result;
}

id sub_1000D0018@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for PrimarySettingsListItemViewType();
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6);
  v10 = &v66[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v12 = &v66[-v11];
  v13 = [a1 displayStyle];
  v14 = [a1 title];
  if (v14)
  {
    v15 = v14;
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;
  }

  else
  {
    v16 = 0;
    v18 = 0xE000000000000000;
  }

  v67 = [a2 restrictionEnabled];
  *v10 = v16;
  v10[1] = v18;
  if ((v13 & 0x10) == 0)
  {
    v10[2] = 1;
  }

  swift_storeEnumTagMultiPayload();
  sub_1000D0C28(v10, v12, type metadata accessor for PrimarySettingsListItemViewType);

  v19 = [a2 identifier];
  v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = v21;

  if (v20 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v22 == v23)
  {
    goto LABEL_8;
  }

  v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v24)
  {
    goto LABEL_11;
  }

  v45 = [a2 identifier];
  v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v48 = v47;

  if (v46 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v48 == v49)
  {
LABEL_8:

LABEL_9:

LABEL_11:
    v25 = [a2 identifier];
    v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v28 = v27;

    if (v26 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v28 == v29)
    {
    }

    else
    {
      v30 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v30 & 1) == 0)
      {
        goto LABEL_37;
      }
    }

    if (([a1 displayStyle] & 2) != 0)
    {
      result = [a1 actions];
      if (!result)
      {
LABEL_46:
        __break(1u);
        goto LABEL_47;
      }

      v32 = result;
      sub_1000D0BDC();
      v33 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v33 >> 62)
      {
        result = _CocoaArrayWrapper.endIndex.getter();
        if (result)
        {
          goto LABEL_19;
        }
      }

      else
      {
        result = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (result)
        {
LABEL_19:
          if ((v33 & 0xC000000000000001) != 0)
          {
            v34 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_22:
            v35 = v34;

            result = [a1 uniqueIdentifier];
            if (result)
            {
              v36 = result;
              v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v39 = v38;

              v40 = [v35 identifier];
              if (v40)
              {
                v41 = v40;
                v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v44 = v43;

LABEL_34:

                v60 = 2;
                goto LABEL_39;
              }

              result = [v35 label];
              if (result)
              {
                v41 = result;

                v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v44 = v61;

                goto LABEL_34;
              }

LABEL_48:
              __break(1u);
              return result;
            }

LABEL_47:
            __break(1u);
            goto LABEL_48;
          }

          if (*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v34 = *(v33 + 32);
            goto LABEL_22;
          }

          __break(1u);
          goto LABEL_45;
        }
      }
    }

LABEL_37:
    result = [a1 uniqueIdentifier];
    if (result)
    {
      v62 = result;

      v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v39 = v63;

      v42 = 0;
      v44 = 0;
      v60 = 1;
      goto LABEL_39;
    }

LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v50 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v50)
  {
    goto LABEL_11;
  }

  v51 = [a2 identifier];
  v52 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v54 = v53;

  if (v52 == 0xD000000000000020 && 0x8000000100124DA0 == v54)
  {
    goto LABEL_9;
  }

  v55 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v55)
  {
    goto LABEL_11;
  }

  v56 = [a2 identifier];
  v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v39 = v57;

  v58 = [a2 accountID];
  v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v44 = v59;

  v60 = 0;
LABEL_39:
  if (v67)
  {
    v64 = 5;
  }

  else
  {
    v64 = 4;
  }

  *a3 = v37;
  *(a3 + 8) = v39;
  *(a3 + 16) = v42;
  *(a3 + 24) = v44;
  *(a3 + 32) = v60;
  v65 = type metadata accessor for PrimarySettingsListItemModel();
  result = sub_1000D0C28(v12, a3 + *(v65 + 20), type metadata accessor for PrimarySettingsListItemViewType);
  *(a3 + *(v65 + 24)) = v64;
  return result;
}

id sub_1000D0614()
{
  result = [v0 representingBundlePath];
  if (result)
  {
    v2 = result;
    v3 = [v0 bundleIconName];
    if (v3)
    {
      v4 = v3;
      v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v7 = v6;
      v8 = [objc_allocWithZone(NSBundle) initWithPath:v2];

      if (v8)
      {
        v9 = [objc_opt_self() imageNamed:v4 inBundle:v8];

        if (v9)
        {

          if ([v9 renderingMode] == 1)
          {

            return v9;
          }

          else
          {
            v16 = sub_1000D0884(v9);

            return v16;
          }
        }

        if (qword_10015AAC8 != -1)
        {
          swift_once();
        }

        v10 = type metadata accessor for Logger();
        sub_10000659C(v10, qword_1001696D0);

        v11 = Logger.logObject.getter();
        v12 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v11, v12))
        {
          v13 = swift_slowAlloc();
          v14 = swift_slowAlloc();
          v17 = v14;
          *v13 = 136446210;
          v15 = sub_100025CF0(v5, v7, &v17);

          *(v13 + 4) = v15;
          _os_log_impl(&_mh_execute_header, v11, v12, "Could not find FLFollowUpItem resolvedImage %{public}s", v13, 0xCu);
          sub_10000665C(v14);
        }

        else
        {
        }
      }

      else
      {
      }
    }

    else
    {
    }

    return 0;
  }

  return result;
}

uint64_t sub_1000D0884(void *a1)
{
  v2 = [objc_allocWithZone(UIGraphicsImageRenderer) initWithSize:{43.5, 43.5}];
  v3 = swift_allocObject();
  *(v3 + 24) = 0;
  *(v3 + 32) = 0;
  *(v3 + 16) = a1;
  *(v3 + 40) = vdupq_n_s64(0x4045C00000000000uLL);
  v4 = swift_allocObject();
  *(v4 + 16) = sub_1000D0C90;
  *(v4 + 24) = v3;
  v9[4] = sub_1000D0CA0;
  v9[5] = v4;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_1000D0B90;
  v9[3] = &unk_100151370;
  v5 = _Block_copy(v9);
  v6 = a1;

  v7 = [v2 imageWithActions:v5];

  _Block_release(v5);
  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if ((v2 & 1) == 0)
  {
    return v7;
  }

  __break(1u);
  return result;
}

id sub_1000D0A24()
{
  result = [v0 representingBundlePath];
  if (result)
  {
    v2 = result;
    v3 = [objc_allocWithZone(NSBundle) initWithPath:result];

    if (v3)
    {
      v4 = [v3 bundleIdentifier];
      if (v4)
      {
        v5 = v4;
        v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();

        return v6;
      }
    }

    return 0;
  }

  return result;
}

void sub_1000D0ADC(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, uint64_t a5, void *a6)
{
  v11 = SFAppTintColor();
  [a6 drawInRect:{a1, a2, a3, a4}];
  [v11 setFill];
  v13.origin.x = a1;
  v13.origin.y = a2;
  v13.size.width = a3;
  v13.size.height = a4;
  UIRectFillUsingBlendMode(v13, kCGBlendModeSourceIn);
}

void sub_1000D0B90(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = a2;
  v2();
}

unint64_t sub_1000D0BDC()
{
  result = qword_10015E8F0;
  if (!qword_10015E8F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10015E8F0);
  }

  return result;
}

uint64_t sub_1000D0C28(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000D0CA0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_1000D0CC8()
{
  v10 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v0 = *(v10 - 8);
  v1 = *(v0 + 64);
  __chkstk_darwin(v10);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OS_dispatch_queue.Attributes();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9[1] = sub_100008294(0, &qword_10015C9D0, OS_dispatch_queue_ptr);
  static DispatchQoS.userInteractive.getter();
  v11 = _swiftEmptyArrayStorage;
  sub_1000D52AC(&qword_10015FA10, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_10004DED0(&unk_10015FD30, &unk_100117260);
  sub_1000525A0(&qword_10015FA20, &unk_10015FD30, &unk_100117260);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v0 + 104))(v3, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v10);
  result = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  qword_10015FBA0 = result;
  return result;
}

objc_class *sub_1000D0F3C()
{
  ObjectType = swift_getObjectType();
  v0 = sub_10004DED0(&unk_10015C570, &qword_100112440);
  v86 = *(v0 - 8);
  v87 = v0;
  v1 = *(v86 + 64);
  __chkstk_darwin(v0);
  v85 = v66 - v2;
  v3 = sub_10004DED0(&unk_10015D490, &qword_100112150);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v96 = v66 - v5;
  v80 = sub_10004DED0(&unk_10015F9E0, &unk_100112BB0);
  v6 = *(*(v80 - 8) + 64);
  __chkstk_darwin(v80);
  v77 = (v66 - v7);
  v83 = sub_10004DED0(&unk_10015FCD8, &qword_100117348);
  v93 = *(v83 - 8);
  v82 = *(v93 + 64);
  v8 = __chkstk_darwin(v83);
  v78 = v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v92 = v66 - v10;
  v70 = sub_10004DED0(&qword_10015C580, &unk_1001123B0);
  v69 = *(v70 - 1);
  v11 = *(v69 + 64);
  __chkstk_darwin(v70);
  v13 = (v66 - v12);
  v14 = sub_10004DED0(&unk_10015FAA0, qword_100112870);
  v94 = *(v14 - 8);
  v95 = v14;
  v84 = *(v94 + 64);
  v15 = __chkstk_darwin(v14);
  v81 = v66 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v89 = v66 - v17;
  v91 = sub_10004DED0(&qword_10015C900, &qword_1001123C0);
  v97 = *(v91 - 8);
  v18 = *(v97 + 64);
  __chkstk_darwin(v91);
  v90 = v66 - v19;
  v20 = sub_10004DED0(&unk_10015C7B0, &unk_100112AA0);
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  __chkstk_darwin(v20);
  v24 = (v66 - v23);
  v66[0] = sub_10004DED0(&qword_10015FCD0, &qword_100117340);
  v88 = *(v66[0] - 8);
  v25 = v88;
  v72 = *(v88 + 64);
  v26 = __chkstk_darwin(v66[0]);
  v71 = v66 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v29 = v66 - v28;
  v30 = sub_10004DED0(&qword_10015C7C0, &qword_100112AB0);
  v74 = v30;
  v75 = *(v30 - 8);
  v31 = v75;
  v32 = *(v75 + 64);
  __chkstk_darwin(v30);
  v34 = v66 - v33;
  *v24 = 1;
  v35 = enum case for AsyncStream.Continuation.BufferingPolicy.bufferingNewest<A>(_:);
  (*(v21 + 104))(v24, enum case for AsyncStream.Continuation.BufferingPolicy.bufferingNewest<A>(_:), v20);
  v66[1] = sub_10004DED0(&unk_10015FC00, &qword_100111C00);
  v73 = v34;
  static AsyncStream.makeStream(of:bufferingPolicy:)();
  (*(v21 + 8))(v24, v20);
  v36 = v76;
  (*(v31 + 16))(&v76[OBJC_IVAR____TtC11SettingsApp53CoreTelephonyClientActiveSubscriptionsDelegateAdaptor_satelliteCarrierNameStream], v34, v30);
  v67 = *(v25 + 16);
  v37 = v29;
  v68 = v29;
  v38 = v66[0];
  v67(&v36[OBJC_IVAR____TtC11SettingsApp53CoreTelephonyClientActiveSubscriptionsDelegateAdaptor_satelliteCarrierNameStreamContinuation], v29, v66[0]);
  *v13 = 1;
  v39 = v69;
  v40 = v70;
  (*(v69 + 104))(v13, v35, v70);
  v42 = v89;
  v41 = v90;
  static AsyncStream.makeStream(of:bufferingPolicy:)();
  (*(v39 + 8))(v13, v40);
  (*(v97 + 16))(&v36[OBJC_IVAR____TtC11SettingsApp53CoreTelephonyClientActiveSubscriptionsDelegateAdaptor_coreTelephonyUpdateStream], v41, v91);
  v43 = *(v94 + 16);
  v69 = v94 + 16;
  v70 = v43;
  (v43)(&v36[OBJC_IVAR____TtC11SettingsApp53CoreTelephonyClientActiveSubscriptionsDelegateAdaptor_coreTelephonyUpdateStreamContinuation], v42, v95);
  v98.receiver = v36;
  v98.super_class = ObjectType;
  v44 = objc_msgSendSuper2(&v98, "init");
  sub_1000525A0(&qword_10015C930, &qword_10015C900, &qword_1001123C0);
  ObjectType = v44;
  AsyncSequence.debounce<>(for:tolerance:)();
  sub_1000525A0(&qword_10015FCE8, &unk_10015F9E0, &unk_100112BB0);
  v45 = v92;
  AsyncMapSequence.init(_:transform:)();
  v46 = type metadata accessor for TaskPriority();
  v47 = *(v46 - 8);
  v77 = *(v47 + 56);
  v80 = v47 + 56;
  v77(v96, 1, 1, v46);
  v48 = v93;
  v49 = v78;
  v50 = v83;
  (*(v93 + 16))(v78, v45, v83);
  v51 = v71;
  v67(v71, v37, v38);
  v52 = (*(v48 + 80) + 32) & ~*(v48 + 80);
  v53 = v88;
  v54 = (v82 + *(v88 + 80) + v52) & ~*(v88 + 80);
  v55 = swift_allocObject();
  *(v55 + 16) = 0;
  *(v55 + 24) = 0;
  (*(v48 + 32))(v55 + v52, v49, v50);
  (*(v53 + 32))(v55 + v54, v51, v38);
  v56 = v96;
  sub_100094AF4(0, 0, v96, &unk_100117360, v55);

  v77(v56, 1, 1, v46);
  v57 = v81;
  v58 = v89;
  v59 = v95;
  (v70)(v81, v89, v95);
  v60 = v94;
  v61 = (*(v94 + 80) + 32) & ~*(v94 + 80);
  v62 = swift_allocObject();
  *(v62 + 16) = 0;
  *(v62 + 24) = 0;
  (*(v60 + 32))(v62 + v61, v57, v59);
  sub_100094AF4(0, 0, v56, &unk_100117370, v62);

  v63 = v85;
  AsyncStream.Continuation.yield<A>()();
  v64 = ObjectType;

  (*(v86 + 8))(v63, v87);
  (*(v93 + 8))(v92, v50);
  (*(v60 + 8))(v58, v59);
  (*(v97 + 8))(v90, v91);
  (*(v88 + 8))(v68, v38);
  (*(v75 + 8))(v73, v74);
  return v64;
}

uint64_t sub_1000D1ADC()
{
  if (qword_10015AB48 != -1)
  {
    swift_once();
  }

  v1 = [objc_allocWithZone(CoreTelephonyClient) initWithQueue:qword_10015FBA0];
  v0[40] = v1;
  v0[2] = v0;
  v0[7] = v0 + 37;
  v0[3] = sub_1000D1C4C;
  v2 = swift_continuation_init();
  v0[33] = sub_10004DED0(&qword_10015FD10, &qword_100117398);
  v0[26] = _NSConcreteStackBlock;
  v0[27] = 1107296256;
  v0[28] = sub_1000D5304;
  v0[29] = &unk_1001513E8;
  v0[30] = v2;
  [v1 getActiveContextsWithCallback:v0 + 26];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1000D1C4C()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 328) = v2;
  if (v2)
  {
    v3 = sub_1000D2E74;
  }

  else
  {
    v3 = sub_1000D1D5C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000D1D5C()
{
  v50 = v0;
  v2 = v0[37];
  v0[42] = v2;
  v3 = [v2 subscriptions];
  v4 = _swiftEmptyArrayStorage;
  if (v3)
  {
    v5 = v3;
    sub_100008294(0, &qword_10015FD28, CTXPCContextInfo_ptr);
    v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v49 = _swiftEmptyArrayStorage;
    if (v6 >> 62)
    {
      goto LABEL_18;
    }

    for (i = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v48 = v0;
      v4 = 0;
      v1 = v6 & 0xC000000000000001;
      while (1)
      {
        if (v1)
        {
          v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v4 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_17;
          }

          v9 = *(v6 + 8 * v4 + 32);
        }

        v10 = v9;
        v0 = (v4 + 1);
        if (__OFADD__(v4, 1))
        {
          break;
        }

        v11 = [v9 context];
        v12 = [v11 slotID];

        if (v12)
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          v8 = v49[2];
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
        }

        else
        {
        }

        ++v4;
        if (v0 == i)
        {
          v0 = v48;
          v13 = v49;
          v4 = _swiftEmptyArrayStorage;
          goto LABEL_20;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
LABEL_18:
      ;
    }

    v13 = _swiftEmptyArrayStorage;
LABEL_20:
  }

  else
  {
    v13 = _swiftEmptyArrayStorage;
  }

  if (v13 >> 62)
  {
    v14 = _CocoaArrayWrapper.endIndex.getter();
    if (v14)
    {
      goto LABEL_23;
    }

LABEL_31:

    v22 = _swiftEmptyArrayStorage;
    goto LABEL_32;
  }

  v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v14)
  {
    goto LABEL_31;
  }

LABEL_23:
  v49 = v4;
  v15 = &v49;
  specialized ContiguousArray.reserveCapacity(_:)();
  if (v14 < 0)
  {
    __break(1u);
    goto LABEL_54;
  }

  v16 = v4;
  v17 = 0;
  do
  {
    if ((v13 & 0xC000000000000001) != 0)
    {
      v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v18 = *(v13 + 8 * v17 + 32);
    }

    v19 = v18;
    ++v17;
    v20 = [v18 context];

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    v21 = v49[2];
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
  }

  while (v14 != v17);

  v22 = v49;
  v4 = v16;
LABEL_32:
  v15 = (v0 + 26);
  v1 = (v0 + 39);
  v0[43] = v22;
  v0[37] = v4;
  v23 = v22 & 0xFFFFFFFFFFFFFF8;
  if (v22 >> 62)
  {
    v24 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v24 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v0[44] = v23;
  v0[45] = v24;
  v25 = kCTRegistrationStatusRegisteredRoaming;
  v0[46] = kCTRegistrationStatusRegisteredHome;
  v0[47] = v25;
  v0[54] = v4;
  v26 = v0[43];
  if (v24)
  {
    if ((v26 & 0xC000000000000001) == 0)
    {
      if (*(v23 + 16))
      {
        v27 = *(v26 + 32);
LABEL_38:
        v28 = v27;
        v0[48] = v27;
        v0[49] = 1;
        v29 = v0 + 10;
        v30 = v0[40];
        v0[10] = v0;
        v0[15] = v1;
        v0[11] = sub_1000D2374;
        v31 = swift_continuation_init();
        v0[33] = sub_10004DED0(&qword_10015FD18, &qword_1001173A0);
        v0[26] = _NSConcreteStackBlock;
        v0[27] = 1107296256;
        v0[28] = sub_1000D5304;
        v0[29] = &unk_100151410;
        v0[30] = v31;
        [v30 copyRegistrationDisplayStatus:v28 completion:v15];
        goto LABEL_46;
      }

      __break(1u);
      goto LABEL_56;
    }

LABEL_54:
    v27 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_38;
  }

  v32 = v0[43];

  if (!(v4 >> 62))
  {
    v33 = v4 & 0xFFFFFFFFFFFFFF8;
    v34 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_41;
  }

LABEL_56:
  v33 = v4 & 0xFFFFFFFFFFFFFF8;
  if (v0[54] < 0)
  {
    v47 = v0[54];
  }

  v34 = _CocoaArrayWrapper.endIndex.getter();
LABEL_41:
  v35 = v0[54];
  v0[51] = v33;
  v0[52] = v34;
  v0[53] = v4;
  if (v34)
  {
    if ((v35 & 0xC000000000000001) != 0)
    {
      v36 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (!*(v33 + 16))
      {
        __break(1u);
        return _swift_continuation_await(v34);
      }

      v36 = *(v35 + 32);
    }

    v37 = v36;
    v0[55] = v36;
    v0[56] = 1;
    v29 = v0 + 18;
    v38 = v0[40];
    v39 = String._bridgeToObjectiveC()();
    v0[57] = v39;
    v40 = [objc_allocWithZone(CTBundle) initWithBundleType:1];
    v0[58] = v40;
    v0[18] = v0;
    v0[23] = v1;
    v0[19] = sub_1000D2A20;
    v41 = swift_continuation_init();
    v0[33] = sub_10004DED0(&qword_10015FD20, qword_1001173A8);
    v0[26] = _NSConcreteStackBlock;
    v0[27] = 1107296256;
    v0[28] = sub_1000D5304;
    v0[29] = &unk_100151438;
    v0[30] = v41;
    [v38 copyCarrierBundleValueWithDefault:v37 key:v39 bundleType:v40 completion:v0 + 26];
LABEL_46:
    v34 = v29;

    return _swift_continuation_await(v34);
  }

  v42 = v0[42];
  v43 = v0[40];

  v44 = v0[53];
  v45 = v0[1];

  return v45(v44);
}

uint64_t sub_1000D2374()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 112);
  *(*v0 + 400) = v3;
  if (v3)
  {
    v4 = *(v1 + 432);
    v5 = *(v1 + 344);

    v6 = sub_1000D3054;
  }

  else
  {
    v6 = sub_1000D2498;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1000D2498()
{
  v1 = v0 + 312;
  v2 = *(v0 + 312);
  if (([v2 isSatelliteSystem] & 1) == 0)
  {
    v14 = *(v0 + 384);
LABEL_28:
    v28 = *(v0 + 392);
    v29 = *(v0 + 360);

    if (v28 == v29)
    {
      v26 = *(v0 + 432);
      goto LABEL_30;
    }

    v2 = *(v0 + 392);
    goto LABEL_38;
  }

  v3 = [v2 registrationDisplayStatus];
  v4 = *(v0 + 368);
  if (!v3)
  {
    if (v4)
    {
      v15 = *(v0 + 368);
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      goto LABEL_14;
    }

LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  v5 = v3;
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  if (!v4)
  {
    goto LABEL_60;
  }

  v9 = *(v0 + 368);
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!v8)
  {
LABEL_14:

    goto LABEL_15;
  }

  if (v6 == v10 && v8 == v11)
  {
    goto LABEL_20;
  }

  v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v13)
  {
    goto LABEL_21;
  }

LABEL_15:
  v3 = [v2 registrationDisplayStatus];
  v16 = *(v0 + 376);
  if (v3)
  {
    v17 = v3;
    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;

    if (v16)
    {
      v21 = *(v0 + 376);
      v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      if (v20)
      {
        if (v18 == v22 && v20 == v23)
        {
LABEL_20:

LABEL_21:
          v24 = *(v0 + 384);
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((*(v0 + 296) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 296) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_59;
          }

          while (1)
          {
            v25 = *(v0 + 384);
            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

            v26 = *(v0 + 296);
            v2 = *(v0 + 392);
            *(v0 + 432) = v26;
            if (v2 != *(v0 + 360))
            {
              break;
            }

LABEL_30:
            v30 = *(v0 + 344);

            if (v26 >> 62)
            {
              v31 = v26 & 0xFFFFFFFFFFFFFF8;
              if (*(v0 + 432) < 0)
              {
                v52 = *(v0 + 432);
              }

              v32 = _CocoaArrayWrapper.endIndex.getter();
            }

            else
            {
              v31 = v26 & 0xFFFFFFFFFFFFFF8;
              v32 = *(v31 + 16);
            }

            v33 = *(v0 + 432);
            *(v0 + 408) = v31;
            *(v0 + 416) = v32;
            *(v0 + 424) = _swiftEmptyArrayStorage;
            if (!v32)
            {
              v46 = *(v0 + 336);
              v47 = *(v0 + 320);

              v48 = *(v0 + 424);
              v49 = *(v0 + 8);

              return v49(v48);
            }

            if ((v33 & 0xC000000000000001) != 0)
            {
              goto LABEL_57;
            }

            if (*(v31 + 16))
            {
              v34 = *(v33 + 32);
              goto LABEL_36;
            }

            __break(1u);
LABEL_59:
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

LABEL_38:
          v41 = *(v0 + 344);
          if ((v41 & 0xC000000000000001) != 0)
          {
            v42 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v2 >= *(*(v0 + 352) + 16))
            {
              goto LABEL_56;
            }

            v42 = *(v41 + 8 * v2 + 32);
          }

          v43 = v42;
          *(v0 + 384) = v42;
          *(v0 + 392) = v2 + 1;
          if (!__OFADD__(v2, 1))
          {
            v36 = (v0 + 80);
            v44 = *(v0 + 320);
            *(v0 + 80) = v0;
            *(v0 + 120) = v1;
            *(v0 + 88) = sub_1000D2374;
            v45 = swift_continuation_init();
            *(v0 + 264) = sub_10004DED0(&qword_10015FD18, &qword_1001173A0);
            *(v0 + 208) = _NSConcreteStackBlock;
            *(v0 + 216) = 1107296256;
            *(v0 + 224) = sub_1000D5304;
            *(v0 + 232) = &unk_100151410;
            *(v0 + 240) = v45;
            [v44 copyRegistrationDisplayStatus:v43 completion:v0 + 208];
LABEL_43:
            v3 = v36;

            return _swift_continuation_await(v3);
          }

          __break(1u);
LABEL_56:
          __break(1u);
LABEL_57:
          v34 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_36:
          v35 = v34;
          *(v0 + 440) = v34;
          *(v0 + 448) = 1;
          v36 = (v0 + 144);
          v37 = *(v0 + 320);
          v38 = String._bridgeToObjectiveC()();
          *(v0 + 456) = v38;
          v39 = [objc_allocWithZone(CTBundle) initWithBundleType:1];
          *(v0 + 464) = v39;
          *(v0 + 144) = v0;
          *(v0 + 184) = v1;
          *(v0 + 152) = sub_1000D2A20;
          v40 = swift_continuation_init();
          *(v0 + 264) = sub_10004DED0(&qword_10015FD20, qword_1001173A8);
          *(v0 + 208) = _NSConcreteStackBlock;
          *(v0 + 216) = 1107296256;
          *(v0 + 224) = sub_1000D5304;
          *(v0 + 232) = &unk_100151438;
          *(v0 + 240) = v40;
          [v37 copyCarrierBundleValueWithDefault:v35 key:v38 bundleType:v39 completion:v0 + 208];
          goto LABEL_43;
        }

        v51 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v51)
        {
          goto LABEL_21;
        }

        goto LABEL_27;
      }

LABEL_26:

LABEL_27:
      v14 = v2;
      v2 = *(v0 + 384);
      goto LABEL_28;
    }
  }

  else if (v16)
  {
    v27 = *(v0 + 376);
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    goto LABEL_26;
  }

LABEL_61:
  __break(1u);
  return _swift_continuation_await(v3);
}

uint64_t sub_1000D2A20()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 176);
  *(*v0 + 472) = v3;
  if (v3)
  {
    v4 = *(v1 + 432);

    v5 = sub_1000D3244;
  }

  else
  {
    v5 = sub_1000D2B38;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1000D2B38()
{
  v1 = *(v0 + 312);
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    *(v0 + 208) = 0;
    *(v0 + 216) = 0;
    static String._conditionallyBridgeFromObjectiveC(_:result:)();

    v2 = *(v0 + 216);
    if (v2)
    {
      v3 = *(v0 + 208);
      v4 = *(v0 + 456);
      v5 = *(v0 + 424);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v1 = *(v0 + 424);
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        goto LABEL_25;
      }

      while (1)
      {
        v8 = *(v1 + 2);
        v7 = *(v1 + 3);
        if (v8 >= v7 >> 1)
        {
          v1 = sub_1000C4E44((v7 > 1), v8 + 1, 1, v1);
        }

        *(v1 + 2) = v8 + 1;
        v9 = &v1[16 * v8];
        *(v9 + 4) = v3;
        *(v9 + 5) = v2;
        v10 = *(v0 + 448);
        *(v0 + 424) = v1;
        if (v10 == *(v0 + 416))
        {
          goto LABEL_11;
        }

LABEL_15:
        v18 = *(v0 + 432);
        if ((v18 & 0xC000000000000001) != 0)
        {
          v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v10 >= *(*(v0 + 408) + 16))
          {
            goto LABEL_24;
          }

          v19 = *(v18 + 8 * v10 + 32);
        }

        v1 = v19;
        *(v0 + 440) = v19;
        *(v0 + 448) = v10 + 1;
        if (!__OFADD__(v10, 1))
        {
          v20 = *(v0 + 320);
          v21 = String._bridgeToObjectiveC()();
          *(v0 + 456) = v21;
          v22 = [objc_allocWithZone(CTBundle) initWithBundleType:1];
          *(v0 + 464) = v22;
          *(v0 + 144) = v0;
          *(v0 + 184) = v0 + 312;
          *(v0 + 152) = sub_1000D2A20;
          v23 = swift_continuation_init();
          *(v0 + 264) = sub_10004DED0(&qword_10015FD20, qword_1001173A8);
          *(v0 + 208) = _NSConcreteStackBlock;
          *(v0 + 216) = 1107296256;
          *(v0 + 224) = sub_1000D5304;
          *(v0 + 232) = &unk_100151438;
          *(v0 + 240) = v23;
          [v20 copyCarrierBundleValueWithDefault:v1 key:v21 bundleType:v22 completion:v0 + 208];

          return _swift_continuation_await(v0 + 144);
        }

        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        v1 = sub_1000C4E44(0, *(v1 + 2) + 1, 1, v1);
      }
    }

    v1 = *(v0 + 440);
  }

  else
  {
  }

  v11 = *(v0 + 456);
  v2 = *(v0 + 448);
  v3 = *(v0 + 416);

  if (v2 != v3)
  {
    v10 = *(v0 + 448);
    goto LABEL_15;
  }

LABEL_11:
  v12 = *(v0 + 432);
  v13 = *(v0 + 336);
  v14 = *(v0 + 320);

  v15 = *(v0 + 424);
  v16 = *(v0 + 8);

  return v16(v15);
}

uint64_t sub_1000D2E74()
{
  v19 = v0;
  v1 = v0[41];
  swift_willThrow();
  v2 = v0[41];
  if (qword_10015AA90 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000659C(v3, qword_100169628);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[40];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v18 = v9;
    *v8 = 136446210;
    swift_getErrorValue();
    v11 = v0[34];
    v10 = v0[35];
    v12 = v0[36];
    v13 = Error.localizedDescription.getter();
    v15 = sub_100025CF0(v13, v14, &v18);

    *(v8 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v4, v5, "Error occurred while attempting to resolve carrier name for satellite connectivity: %{public}s", v8, 0xCu);
    sub_10000665C(v9);
  }

  else
  {
  }

  v16 = v0[1];

  return v16(_swiftEmptyArrayStorage);
}

uint64_t sub_1000D3054()
{
  v21 = v0;
  v1 = v0[50];
  v2 = v0[48];
  v3 = v0[42];
  swift_willThrow();

  v4 = v0[50];
  if (qword_10015AA90 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_10000659C(v5, qword_100169628);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[40];
  if (v8)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v20 = v11;
    *v10 = 136446210;
    swift_getErrorValue();
    v13 = v0[34];
    v12 = v0[35];
    v14 = v0[36];
    v15 = Error.localizedDescription.getter();
    v17 = sub_100025CF0(v15, v16, &v20);

    *(v10 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v6, v7, "Error occurred while attempting to resolve carrier name for satellite connectivity: %{public}s", v10, 0xCu);
    sub_10000665C(v11);
  }

  else
  {
  }

  v18 = v0[1];

  return v18(_swiftEmptyArrayStorage);
}

uint64_t sub_1000D3244()
{
  v24 = v0;
  v1 = v0[58];
  v2 = v0[59];
  v3 = v0[57];
  v4 = v0[55];
  v5 = v0[42];
  swift_willThrow();

  v6 = v0[59];
  v7 = v0[53];
  if (qword_10015AA90 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_10000659C(v8, qword_100169628);
  swift_errorRetain();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();

  v11 = os_log_type_enabled(v9, v10);
  v12 = v0[40];
  if (v11)
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v23 = v14;
    *v13 = 136446210;
    swift_getErrorValue();
    v16 = v0[34];
    v15 = v0[35];
    v17 = v0[36];
    v18 = Error.localizedDescription.getter();
    v20 = sub_100025CF0(v18, v19, &v23);

    *(v13 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v9, v10, "Error occurred while attempting to resolve carrier name for satellite connectivity: %{public}s", v13, 0xCu);
    sub_10000665C(v14);
  }

  else
  {
  }

  v21 = v0[1];

  return v21(v7);
}

uint64_t sub_1000D3440(uint64_t a1, void *a2, void *a3)
{
  v5 = sub_100018544((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    sub_10004DED0(&unk_10015C800, &unk_100112BC0);
    v7 = swift_allocError();
    *v8 = a3;
    v9 = a3;

    return _swift_continuation_throwingResumeWithError(v6, v7);
  }

  else
  {
    if (a2)
    {
      **(v6[8] + 40) = a2;
      v10 = a2;
      v5 = v6;
    }

    else
    {
      __break(1u);
    }

    return _swift_continuation_throwingResume(v5);
  }
}

uint64_t sub_1000D3518(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1000D35A8;

  return sub_1000D1AC0();
}

uint64_t sub_1000D35A8(uint64_t a1)
{
  v3 = *(*v1 + 24);
  v4 = *(*v1 + 16);
  v7 = *v1;

  *v4 = a1;
  v5 = *(v7 + 8);

  return v5();
}

uint64_t sub_1000D36B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[10] = a4;
  v5[11] = a5;
  v6 = sub_10004DED0(&unk_10015C7A0, &unk_100112A90);
  v5[12] = v6;
  v7 = *(v6 - 8);
  v5[13] = v7;
  v8 = *(v7 + 64) + 15;
  v5[14] = swift_task_alloc();
  v9 = sub_10004DED0(&unk_10015F9E0, &unk_100112BB0);
  v5[15] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v5[16] = swift_task_alloc();
  v11 = sub_10004DED0(&unk_10015FD00, &unk_100117380);
  v5[17] = v11;
  v12 = *(v11 - 8);
  v5[18] = v12;
  v13 = *(v12 + 64) + 15;
  v5[19] = swift_task_alloc();

  return _swift_task_switch(sub_1000D3828, 0, 0);
}

uint64_t sub_1000D3828()
{
  v1 = v0[19];
  v2 = v0[15];
  v3 = v0[16];
  v4 = v0[10];
  sub_10004DED0(&unk_10015FCD8, &qword_100117348);
  AsyncMapSequence.base.getter();
  v5 = AsyncDebounceSequence.makeAsyncIterator()();
  sub_1000068B0(v3, &unk_10015F9E0, &unk_100112BB0);
  v0[6] = v5;
  AsyncMapSequence.transform.getter();
  sub_10004DED0(&unk_10015FC00, &qword_100111C00);
  sub_1000525A0(&qword_10015FCE8, &unk_10015F9E0, &unk_100112BB0);
  AsyncMapSequence.Iterator.init(_:transform:)();

  return _swift_task_switch(sub_1000D397C, 0, 0);
}

uint64_t sub_1000D397C()
{
  v1 = v0[19];
  v2 = v0[17];
  v0[20] = AsyncMapSequence.Iterator.baseIterator.modify();
  v3 = async function pointer to AsyncDebounceSequence.Iterator.next()[1];
  v4 = swift_task_alloc();
  v0[21] = v4;
  v5 = sub_10004DED0(&unk_10015F9F0, &qword_100112470);
  *v4 = v0;
  v4[1] = sub_1000D3A44;

  return AsyncDebounceSequence.Iterator.next()(v0 + 26, v5);
}

uint64_t sub_1000D3A44()
{
  v2 = *v1;
  v3 = *(*v1 + 168);
  v6 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {
    v4 = sub_1000D3CB8;
  }

  else
  {
    *(v2 + 209) = *(v2 + 208);
    v4 = sub_1000D3B60;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1000D3B60()
{
  v1 = *(v0 + 209);
  (*(v0 + 160))();
  if (v1)
  {

    return _swift_task_switch(sub_1000D3FFC, 0, 0);
  }

  else
  {
    v2 = *(v0 + 152);
    v3 = *(v0 + 136);
    v4 = AsyncMapSequence.Iterator.transform.getter();
    *(v0 + 184) = v5;
    v9 = (v4 + *v4);
    v6 = v4[1];
    v7 = swift_task_alloc();
    *(v0 + 192) = v7;
    *v7 = v0;
    v7[1] = sub_1000D3D64;

    return v9(v0 + 64);
  }
}

uint64_t sub_1000D3CB8()
{
  v0[7] = v0[22];
  v2 = v0[20];
  sub_10004DED0(&unk_10015C800, &unk_100112BC0);
  swift_dynamicCast();
  swift_willThrowTypedImpl();

  return v2();
}

uint64_t sub_1000D3D64()
{
  v1 = *v0;
  v2 = *(*v0 + 192);
  v3 = *(*v0 + 184);
  v5 = *v0;

  *(v1 + 200) = *(v1 + 64);

  return _swift_task_switch(sub_1000D3E9C, 0, 0);
}

uint64_t sub_1000D3EB8()
{
  if (static Task<>.isCancelled.getter())
  {
    v1 = v0[25];
    (*(v0[18] + 8))(v0[19], v0[17]);

    v2 = v0[19];
    v3 = v0[16];
    v4 = v0[14];

    v5 = v0[1];

    return v5();
  }

  else
  {
    v8 = v0[13];
    v7 = v0[14];
    v9 = v0[11];
    v10 = v0[12];
    v0[9] = v0[25];
    sub_10004DED0(&qword_10015FCD0, &qword_100117340);
    AsyncStream.Continuation.yield(_:)();
    (*(v8 + 8))(v7, v10);

    return _swift_task_switch(sub_1000D397C, 0, 0);
  }
}

uint64_t sub_1000D3FFC()
{
  (*(v0[18] + 8))(v0[19], v0[17]);
  v1 = v0[19];
  v2 = v0[16];
  v3 = v0[14];

  v4 = v0[1];

  return v4();
}

uint64_t sub_1000D408C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a4;
  v5 = sub_10004DED0(&unk_10015C570, &qword_100112440);
  v4[4] = v5;
  v6 = *(v5 - 8);
  v4[5] = v6;
  v7 = *(v6 + 64) + 15;
  v4[6] = swift_task_alloc();
  v8 = *(*(sub_10004DED0(&unk_10015FCF0, &unk_100117B60) - 8) + 64) + 15;
  v4[7] = swift_task_alloc();
  v9 = type metadata accessor for NSNotificationCenter.Notifications.Iterator();
  v4[8] = v9;
  v10 = *(v9 - 8);
  v4[9] = v10;
  v11 = *(v10 + 64) + 15;
  v4[10] = swift_task_alloc();

  return _swift_task_switch(sub_1000D41EC, 0, 0);
}

uint64_t sub_1000D41EC()
{
  v1 = v0[10];
  v2 = [objc_opt_self() defaultCenter];
  NSNotificationCenter.notifications(named:object:)();

  NSNotificationCenter.Notifications.makeAsyncIterator()();
  v3 = sub_1000D52AC(&qword_10015CB60, &type metadata accessor for NSNotificationCenter.Notifications.Iterator);
  v4 = async function pointer to dispatch thunk of AsyncIteratorProtocol.next()[1];
  v5 = swift_task_alloc();
  v0[11] = v5;
  *v5 = v0;
  v5[1] = sub_1000D431C;
  v6 = v0[10];
  v7 = v0[7];
  v8 = v0[8];

  return dispatch thunk of AsyncIteratorProtocol.next()(v7, v8, v3);
}

uint64_t sub_1000D431C()
{
  v2 = *(*v1 + 88);
  v5 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = sub_1000D4668;
  }

  else
  {
    v3 = sub_1000D4430;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000D444C()
{
  v1 = v0[7];
  v2 = type metadata accessor for Notification();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    (*(v0[9] + 8))(v0[10], v0[8]);
LABEL_5:
    v4 = v0[10];
    v5 = v0[6];
    v6 = v0[7];

    v7 = v0[1];

    return v7();
  }

  if (static Task<>.isCancelled.getter())
  {
    v3 = v0[7];
    (*(v0[9] + 8))(v0[10], v0[8]);
    sub_1000068B0(v3, &unk_10015FCF0, &unk_100117B60);
    goto LABEL_5;
  }

  v10 = v0[6];
  v9 = v0[7];
  v11 = v0[4];
  v12 = v0[5];
  v13 = v0[3];
  AsyncStream.Continuation.yield<A>()();
  (*(v12 + 8))(v10, v11);
  sub_1000068B0(v9, &unk_10015FCF0, &unk_100117B60);
  v14 = sub_1000D52AC(&qword_10015CB60, &type metadata accessor for NSNotificationCenter.Notifications.Iterator);
  v15 = async function pointer to dispatch thunk of AsyncIteratorProtocol.next()[1];
  v16 = swift_task_alloc();
  v0[11] = v16;
  *v16 = v0;
  v16[1] = sub_1000D431C;
  v17 = v0[10];
  v18 = v0[7];
  v19 = v0[8];

  return dispatch thunk of AsyncIteratorProtocol.next()(v18, v19, v14);
}

uint64_t sub_1000D4668()
{
  *(v0 + 16) = *(v0 + 96);
  sub_10004DED0(&unk_10015C800, &unk_100112BC0);
  swift_dynamicCast();

  return swift_willThrowTypedImpl();
}

id sub_1000D4718()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_10004DED0(&unk_10015FAA0, qword_100112870);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v14 - v6;
  v8 = sub_10004DED0(&qword_10015FCD0, &qword_100117340);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v14 - v11;
  (*(v9 + 16))(&v14 - v11, v1 + OBJC_IVAR____TtC11SettingsApp53CoreTelephonyClientActiveSubscriptionsDelegateAdaptor_satelliteCarrierNameStreamContinuation, v8);
  AsyncStream.Continuation.finish()();
  (*(v9 + 8))(v12, v8);
  (*(v4 + 16))(v7, v1 + OBJC_IVAR____TtC11SettingsApp53CoreTelephonyClientActiveSubscriptionsDelegateAdaptor_coreTelephonyUpdateStreamContinuation, v3);
  AsyncStream.Continuation.finish()();
  (*(v4 + 8))(v7, v3);
  v14.receiver = v1;
  v14.super_class = ObjectType;
  return objc_msgSendSuper2(&v14, "dealloc");
}

uint64_t type metadata accessor for CoreTelephonyClientActiveSubscriptionsDelegateAdaptor()
{
  result = qword_10015FBE8;
  if (!qword_10015FBE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000D4CC0()
{
  sub_100016490(319, &unk_10015C610, &type metadata accessor for AsyncStream);
  if (v1 <= 0x3F)
  {
    v8 = *(v0 - 8) + 64;
    sub_100016490(319, &unk_10015C620, &type metadata accessor for AsyncStream.Continuation);
    if (v3 <= 0x3F)
    {
      v9 = *(v2 - 8) + 64;
      sub_10001D810(319, &unk_10015C500, &type metadata accessor for AsyncStream);
      if (v5 <= 0x3F)
      {
        v10 = *(v4 - 8) + 64;
        sub_10001D810(319, &unk_10015C358, &type metadata accessor for AsyncStream.Continuation);
        if (v7 <= 0x3F)
        {
          v11 = *(v6 - 8) + 64;
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

uint64_t sub_1000D5048(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_10004DED0(&unk_10015FCD8, &qword_100117348) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_10004DED0(&qword_10015FCD0, &qword_100117340) - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_10000A924;

  return sub_1000D36B8(a1, v10, v11, v1 + v6, v1 + v9);
}

uint64_t sub_1000D51B0(uint64_t a1)
{
  v4 = *(sub_10004DED0(&unk_10015FAA0, qword_100112870) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10000ACE4;

  return sub_1000D408C(a1, v6, v7, v1 + v5);
}

uint64_t sub_1000D52AC(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_1000D559C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_10004DED0(&unk_10015E9E0, &unk_1001173F0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v9 - v6;
  (*(v4 + 16))(&v9 - v6, v1 + OBJC_IVAR____TtC11SettingsApp34OffGridStateManagerDelegateAdaptor_offGridModeEnabledStreamContinuation, v3);
  AsyncStream.Continuation.finish()();
  (*(v4 + 8))(v7, v3);
  v9.receiver = v1;
  v9.super_class = ObjectType;
  return objc_msgSendSuper2(&v9, "dealloc");
}

uint64_t type metadata accessor for OffGridStateManagerDelegateAdaptor()
{
  result = qword_10015FD68;
  if (!qword_10015FD68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000D58F8()
{
  sub_100024C10(319, &qword_10015FD78, &type metadata accessor for AsyncStream);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_100024C10(319, &qword_10015FD80, &type metadata accessor for AsyncStream.Continuation);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_1000D5B18(uint64_t a1)
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

uint64_t sub_1000D5B34(uint64_t a1, unsigned int a2)
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

uint64_t sub_1000D5B7C(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1000D5BC0(uint64_t result, unsigned int a2)
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

unint64_t sub_1000D5BEC()
{
  result = qword_10015FE00;
  if (!qword_10015FE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015FE00);
  }

  return result;
}

Swift::Int sub_1000D5C40(unint64_t a1, uint64_t a2, char a3)
{
  Hasher.init(_seed:)();
  if (a3)
  {
    if (a3 == 1)
    {
      Hasher._combine(_:)(5uLL);
      v6 = a1;
    }

    else if (a1 > 1)
    {
      if (a1 ^ 2 | a2)
      {
        v6 = 3;
      }

      else
      {
        v6 = 2;
      }
    }

    else
    {
      v6 = (a1 | a2) != 0;
    }

    Hasher._combine(_:)(v6);
  }

  else
  {
    Hasher._combine(_:)(4uLL);
    String.hash(into:)();
  }

  return Hasher._finalize()();
}

void sub_1000D5D48()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  if (*(v0 + 16))
  {
    if (*(v0 + 16) == 1)
    {
      Hasher._combine(_:)(5uLL);
      v3 = v1;
    }

    else if (v1 > 1)
    {
      if (v1 ^ 2 | v2)
      {
        v3 = 3;
      }

      else
      {
        v3 = 2;
      }
    }

    else
    {
      v3 = (v1 | v2) != 0;
    }

    Hasher._combine(_:)(v3);
  }

  else
  {
    Hasher._combine(_:)(4uLL);

    String.hash(into:)();
  }
}

Swift::Int sub_1000D5E18()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  Hasher.init(_seed:)();
  if (v3)
  {
    if (v3 == 1)
    {
      Hasher._combine(_:)(5uLL);
      v4 = v1;
    }

    else if (v1 > 1)
    {
      if (v1 ^ 2 | v2)
      {
        v4 = 3;
      }

      else
      {
        v4 = 2;
      }
    }

    else
    {
      v4 = (v1 | v2) != 0;
    }

    Hasher._combine(_:)(v4);
  }

  else
  {
    Hasher._combine(_:)(4uLL);
    String.hash(into:)();
  }

  return Hasher._finalize()();
}

uint64_t sub_1000D5EEC(unint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a3)
  {
    if (a3 == 1)
    {
      if (a6 == 1)
      {
        return a1 == a4;
      }

      return 0;
    }

    if (a1 > 1)
    {
      if (a1 ^ 2 | a2)
      {
        return a6 == 2 && a4 == 3 && !a5;
      }

      else
      {
        return a6 == 2 && a4 == 2 && !a5;
      }
    }

    else
    {
      if (!(a1 | a2))
      {
        return a6 == 2 && !(a5 | a4);
      }

      return a6 == 2 && a4 == 1 && !a5;
    }
  }

  else
  {
    if (a6)
    {
      return 0;
    }

    if (a1 == a4 && a2 == a5)
    {
      return 1;
    }

    else
    {
      return _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }
}

unint64_t sub_1000D5FEC()
{
  result = qword_10015FE10;
  if (!qword_10015FE10)
  {
    sub_100052374(&qword_10015FE08, &qword_1001174F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015FE10);
  }

  return result;
}

uint64_t sub_1000D6050()
{
  v10 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v0 = *(v10 - 8);
  v1 = *(v0 + 64);
  __chkstk_darwin(v10);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OS_dispatch_queue.Attributes();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9[1] = sub_100003CAC();
  static DispatchQoS.userInteractive.getter();
  v11 = _swiftEmptyArrayStorage;
  sub_10001F7D4();
  sub_10004DED0(&unk_10015FD30, &unk_100117260);
  sub_1000525A0(&qword_10015FA20, &unk_10015FD30, &unk_100117260);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v0 + 104))(v3, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v10);
  result = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  qword_10015FE18 = result;
  return result;
}

uint64_t sub_1000D6284()
{
  v1 = sub_10004DED0(&unk_10015D490, &qword_100112150);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v102 = &v81 - v3;
  v4 = sub_10004DED0(&qword_10015C7C0, &qword_100112AB0);
  v100 = *(v4 - 8);
  v101 = v4;
  v5 = *(v100 + 64);
  __chkstk_darwin(v4);
  v97 = &v81 - v6;
  v96 = sub_10004DED0(&unk_10015FDF0, &qword_100115CC0);
  v94 = *(v96 - 8);
  v7 = *(v94 + 64);
  __chkstk_darwin(v96);
  v91 = &v81 - v8;
  v90 = sub_10004DED0(&unk_1001600D0, &unk_100117720);
  v104 = *(v90 - 8);
  v9 = *(v104 + 64);
  __chkstk_darwin(v90);
  v103 = &v81 - v10;
  v11 = sub_10004DED0(&qword_10015FF60, &qword_100117580);
  v89 = *(v11 - 8);
  v12 = *(v89 + 64);
  v13 = __chkstk_darwin(v11 - 8);
  v95 = &v81 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = v14;
  __chkstk_darwin(v13);
  v106 = &v81 - v15;
  v107 = sub_10004DED0(&qword_10015FF68, &qword_100117588);
  v16 = *(v107 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v107);
  v19 = (&v81 - v18);
  v105 = sub_10004DED0(&qword_10015FF70, &unk_100117590);
  v108 = *(v105 - 8);
  v20 = *(v108 + 64);
  v21 = __chkstk_darwin(v105);
  v88 = &v81 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = v22;
  __chkstk_darwin(v21);
  v24 = &v81 - v23;
  v25 = sub_10004DED0(&qword_10015FF78, qword_100117630);
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  __chkstk_darwin(v25);
  v29 = &v81 - v28;
  swift_defaultActor_initialize();
  v30 = OBJC_IVAR____TtC11SettingsApp34SatelliteConnectivityStateProvider_stewieStateMonitorDelegateAdaptor;
  *(v0 + v30) = [objc_allocWithZone(type metadata accessor for StewieStateMonitorDelegateAdaptor()) init];
  v31 = OBJC_IVAR____TtC11SettingsApp34SatelliteConnectivityStateProvider_offGridStateManagerDelegateAdaptor;
  v32 = [objc_allocWithZone(type metadata accessor for OffGridStateManagerDelegateAdaptor()) init];
  v82 = v31;
  *(v0 + v31) = v32;
  *v19 = 1;
  v33 = v107;
  (*(v16 + 104))(v19, enum case for AsyncStream.Continuation.BufferingPolicy.bufferingNewest<A>(_:), v107);
  static AsyncStream.makeStream(of:bufferingPolicy:)();
  (*(v16 + 8))(v19, v33);
  v98 = v26;
  v99 = v25;
  v34 = *(v26 + 16);
  v93 = v29;
  v34(v0 + OBJC_IVAR____TtC11SettingsApp34SatelliteConnectivityStateProvider_snapshots, v29, v25);
  v35 = *(v108 + 16);
  v36 = v0;
  v107 = v24;
  v86 = v108 + 16;
  v85 = v35;
  v35((v0 + OBJC_IVAR____TtC11SettingsApp34SatelliteConnectivityStateProvider_snapshotsContinuation), v24, v105);
  v37 = qword_10015AB50;
  v38 = *(v0 + v30);
  if (v37 != -1)
  {
    swift_once();
  }

  v39 = qword_10015FE18;
  v40 = objc_allocWithZone(CTStewieStateMonitor);
  v41 = v39;
  v42 = [v40 initWithDelegate:v38 queue:v41];

  [v42 start];
  *(v36 + OBJC_IVAR____TtC11SettingsApp34SatelliteConnectivityStateProvider_stewieStateMonitor) = v42;
  v43 = objc_allocWithZone(IDSOffGridStateManager);
  v109 = 0;
  v84 = v42;
  v44 = [v43 initWithQueue:v41 error:&v109];
  v45 = v109;
  if (v44)
  {
    *(v36 + OBJC_IVAR____TtC11SettingsApp34SatelliteConnectivityStateProvider_idsOffGridStateManager) = v44;
    v46 = *(v36 + v82);
    v47 = v44;
    v48 = v45;
    [v47 setDelegate:v46];
  }

  else
  {
    v49 = v109;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_10015AA90 != -1)
    {
      swift_once();
    }

    v50 = type metadata accessor for Logger();
    sub_10000659C(v50, qword_100169628);
    swift_errorRetain();
    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      *v53 = 138543362;
      swift_errorRetain();
      v55 = _swift_stdlib_bridgeErrorToNSError();
      *(v53 + 4) = v55;
      *v54 = v55;
      _os_log_impl(&_mh_execute_header, v51, v52, "Failed to create IDS state manager: %{public}@", v53, 0xCu);
      sub_1000068B0(v54, &unk_10015F9C0, &unk_100115230);
    }

    else
    {
    }

    *(v36 + OBJC_IVAR____TtC11SettingsApp34SatelliteConnectivityStateProvider_idsOffGridStateManager) = 0;
  }

  v83 = v36;
  v56 = [objc_allocWithZone(CoreTelephonyClient) initWithQueue:v41];

  *(v36 + OBJC_IVAR____TtC11SettingsApp34SatelliteConnectivityStateProvider_coreTelephonyClient) = v56;
  v57 = [objc_allocWithZone(type metadata accessor for CoreTelephonyClientActiveSubscriptionsDelegateAdaptor()) init];
  *(v36 + OBJC_IVAR____TtC11SettingsApp34SatelliteConnectivityStateProvider_coreTelephonyClientActiveSubscriptionsDelegateAdaptor) = v57;
  [*(v36 + OBJC_IVAR____TtC11SettingsApp34SatelliteConnectivityStateProvider_coreTelephonyClient) setDelegate:v57];
  v58 = v90;
  (*(v104 + 16))(v103, *(v36 + OBJC_IVAR____TtC11SettingsApp34SatelliteConnectivityStateProvider_stewieStateMonitorDelegateAdaptor) + OBJC_IVAR____TtC11SettingsApp33StewieStateMonitorDelegateAdaptor_stewieStateStream, v90);
  v59 = v94;
  v60 = v91;
  v61 = v96;
  (*(v94 + 16))(v91, *(v36 + OBJC_IVAR____TtC11SettingsApp34SatelliteConnectivityStateProvider_offGridStateManagerDelegateAdaptor) + OBJC_IVAR____TtC11SettingsApp34OffGridStateManagerDelegateAdaptor_offGridModeEnabledStream, v96);
  v63 = v100;
  v62 = v101;
  v64 = *(v36 + OBJC_IVAR____TtC11SettingsApp34SatelliteConnectivityStateProvider_coreTelephonyClientActiveSubscriptionsDelegateAdaptor) + OBJC_IVAR____TtC11SettingsApp53CoreTelephonyClientActiveSubscriptionsDelegateAdaptor_satelliteCarrierNameStream;
  v65 = v97;
  (*(v100 + 16))(v97, v64, v101);
  v82 = sub_1000525A0(&qword_10015FF80, &unk_1001600D0, &unk_100117720);
  sub_1000525A0(&qword_10015FF88, &unk_10015FDF0, &qword_100115CC0);
  sub_1000525A0(&qword_10015C7F0, &qword_10015C7C0, &qword_100112AB0);
  v66 = v106;
  v67 = v103;
  combineLatest<A, B, C>(_:_:_:)();
  (*(v63 + 8))(v65, v62);
  (*(v59 + 8))(v60, v61);
  (*(v104 + 8))(v67, v58);
  v68 = type metadata accessor for TaskPriority();
  v104 = *(*(v68 - 8) + 56);
  v69 = v102;
  (v104)(v102, 1, 1, v68);
  v70 = v95;
  sub_1000D7A7C(v66, v95);
  v71 = v88;
  v72 = v105;
  v85(v88, v107, v105);
  v73 = (*(v89 + 80) + 32) & ~*(v89 + 80);
  v74 = v108;
  v75 = (v92 + *(v108 + 80) + v73) & ~*(v108 + 80);
  v76 = swift_allocObject();
  *(v76 + 16) = 0;
  *(v76 + 24) = 0;
  v77 = v70;
  v78 = v83;
  sub_1000D7AEC(v77, v76 + v73);
  (*(v74 + 32))(v76 + v75, v71, v72);
  sub_100094AF4(0, 0, v69, &unk_1001175A8, v76);

  (v104)(v69, 1, 1, v68);
  v79 = swift_allocObject();
  v79[2] = 0;
  v79[3] = 0;
  v79[4] = v78;

  sub_100094AF4(0, 0, v69, &unk_1001175B8, v79);

  sub_1000068B0(v106, &qword_10015FF60, &qword_100117580);
  (*(v74 + 8))(v107, v72);
  (*(v98 + 8))(v93, v99);
  return v78;
}

uint64_t sub_1000D6F14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[9] = a4;
  v5[10] = a5;
  v6 = sub_10004DED0(&qword_10015FF90, &qword_1001175C8);
  v5[11] = v6;
  v7 = *(v6 - 8);
  v5[12] = v7;
  v8 = *(v7 + 64) + 15;
  v5[13] = swift_task_alloc();

  return _swift_task_switch(sub_1000D6FE0, 0, 0);
}

uint64_t sub_1000D6FE0()
{
  v1 = v0[9];
  sub_10004DED0(&qword_10015FF60, &qword_100117580);
  v2 = AsyncCombineLatest3Sequence.makeAsyncIterator()();
  v0[14] = v2;
  v0[7] = v2;
  v3 = async function pointer to AsyncCombineLatest3Sequence.Iterator.next()[1];
  v4 = swift_task_alloc();
  v0[15] = v4;
  v5 = sub_10004DED0(&qword_10015FF98, &unk_1001175D0);
  *v4 = v0;
  v4[1] = sub_1000D70B8;

  return AsyncCombineLatest3Sequence.Iterator.next()(v0 + 5, v5);
}

uint64_t sub_1000D70B8()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v6 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v4 = sub_1000D7410;
  }

  else
  {
    *(v2 + 136) = *(v2 + 40);
    v4 = sub_1000D71D4;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1000D71F0()
{
  v1 = *(v0 + 144);
  if (!v1)
  {
LABEL_4:
    v4 = *(v0 + 104);
    v3 = *(v0 + 112);

    v5 = *(v0 + 8);

    return v5();
  }

  v2 = *(v0 + 136);
  if (static Task<>.isCancelled.getter())
  {

    goto LABEL_4;
  }

  if (*(v0 + 138))
  {
    v7 = v1[2];
    if (v7 < 2)
    {
      if (v7)
      {
        v7 = v1[4];
        v8 = v1[5];

        v9 = 0;
      }

      else
      {

        v10 = 1;
        if ((v2 & 0x1000000) != 0)
        {
          v10 = 2;
        }

        if ((v2 & 0x100) != 0)
        {
          v10 = 3;
        }

        if (v2)
        {
          v7 = v10;
        }

        else
        {
          v7 = 0;
        }

        v8 = 0;
        v9 = 2;
      }
    }

    else
    {

      v8 = 0;
      v9 = 1;
    }
  }

  else
  {

    v7 = 0;
    v8 = 0;
    v9 = 2;
  }

  v12 = *(v0 + 96);
  v11 = *(v0 + 104);
  v13 = *(v0 + 80);
  v14 = *(v0 + 88);
  *(v0 + 16) = v7;
  *(v0 + 24) = v8;
  *(v0 + 32) = v9;
  sub_10004DED0(&qword_10015FF70, &unk_100117590);
  AsyncStream.Continuation.yield(_:)();
  (*(v12 + 8))(v11, v14);
  v15 = async function pointer to AsyncCombineLatest3Sequence.Iterator.next()[1];
  v16 = swift_task_alloc();
  *(v0 + 120) = v16;
  v17 = sub_10004DED0(&qword_10015FF98, &unk_1001175D0);
  *v16 = v0;
  v16[1] = sub_1000D70B8;

  return AsyncCombineLatest3Sequence.Iterator.next()(v0 + 40, v17);
}

uint64_t sub_1000D7410()
{
  *(v0 + 64) = *(v0 + 128);
  sub_10004DED0(&unk_10015C800, &unk_100112BC0);
  swift_dynamicCast();

  return swift_willThrowTypedImpl();
}

uint64_t sub_1000D749C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v6 = sub_10004DED0(&unk_100160940, &unk_100117DF0);
  v4[3] = v6;
  v7 = *(v6 - 8);
  v4[4] = v7;
  v8 = *(v7 + 64) + 15;
  v4[5] = swift_task_alloc();

  return _swift_task_switch(sub_1000D756C, a4, 0);
}

uint64_t sub_1000D756C()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + OBJC_IVAR____TtC11SettingsApp34SatelliteConnectivityStateProvider_idsOffGridStateManager);
  if (v2)
  {
    v4 = *(v0 + 32);
    v3 = *(v0 + 40);
    v5 = *(v0 + 24);
    v6 = [v2 offGridMode];
    v7 = *(v1 + OBJC_IVAR____TtC11SettingsApp34SatelliteConnectivityStateProvider_offGridStateManagerDelegateAdaptor);
    *(v0 + 48) = v6 == 2;
    sub_10004DED0(&unk_10015E9E0, &unk_1001173F0);
    AsyncStream.Continuation.yield(_:)();
    (*(v4 + 8))(v3, v5);
    v1 = *(v0 + 16);
  }

  v8 = *(v1 + OBJC_IVAR____TtC11SettingsApp34SatelliteConnectivityStateProvider_stewieStateMonitor);
  if (v8)
  {
    v9 = [v8 getState];
    if (v9)
    {
      v10 = *(*(v0 + 16) + OBJC_IVAR____TtC11SettingsApp34SatelliteConnectivityStateProvider_stewieStateMonitorDelegateAdaptor);
      v11 = v9;
      sub_1000D8A24(v9);
    }
  }

  v12 = *(v0 + 40);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_1000D76B4()
{
  v1 = v0;
  v2 = sub_10004DED0(&qword_10015FF70, &unk_100117590);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v12 - v5;
  v7 = OBJC_IVAR____TtC11SettingsApp34SatelliteConnectivityStateProvider_snapshotsContinuation;
  (*(v3 + 16))(&v12 - v5, v1 + OBJC_IVAR____TtC11SettingsApp34SatelliteConnectivityStateProvider_snapshotsContinuation, v2);
  AsyncStream.Continuation.finish()();
  v8 = *(v3 + 8);
  v8(v6, v2);
  v9 = OBJC_IVAR____TtC11SettingsApp34SatelliteConnectivityStateProvider_snapshots;
  v10 = sub_10004DED0(&qword_10015FF78, qword_100117630);
  (*(*(v10 - 8) + 8))(v1 + v9, v10);
  v8((v1 + v7), v2);

  swift_defaultActor_destroy();
  return v1;
}

uint64_t sub_1000D787C()
{
  sub_1000D76B4();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t type metadata accessor for SatelliteConnectivityStateProvider()
{
  result = qword_10015FE80;
  if (!qword_10015FE80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000D78FC()
{
  sub_1000D7A28(319, &qword_10015FE90, &type metadata accessor for AsyncStream);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_1000D7A28(319, &unk_10015FE98, &type metadata accessor for AsyncStream.Continuation);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_1000D7A28(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, ValueMetadata *))
{
  if (!*a2)
  {
    v4 = a3(0, &type metadata for SatelliteConnectivityState);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1000D7A7C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10004DED0(&qword_10015FF60, &qword_100117580);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000D7AEC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10004DED0(&qword_10015FF60, &qword_100117580);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000D7B5C(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_10004DED0(&qword_10015FF60, &qword_100117580) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_10004DED0(&qword_10015FF70, &unk_100117590) - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_10000ACE4;

  return sub_1000D6F14(a1, v10, v11, v1 + v6, v1 + v9);
}

uint64_t sub_1000D7CC4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000A924;

  return sub_1000D749C(a1, v4, v5, v6);
}

id sub_1000D7D78()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR____TtC11SettingsApp25SatelliteListItemProvider_updateTask;
  if (*&v0[OBJC_IVAR____TtC11SettingsApp25SatelliteListItemProvider_updateTask])
  {
    v3 = *&v0[OBJC_IVAR____TtC11SettingsApp25SatelliteListItemProvider_updateTask];

    Task.cancel()();

    v4 = *&v0[v2];
  }

  *&v0[v2] = 0;

  v6.receiver = v0;
  v6.super_class = ObjectType;
  return objc_msgSendSuper2(&v6, "dealloc");
}

uint64_t sub_1000D7ED0()
{
  v1 = v0;
  v2 = sub_10004DED0(&unk_10015D490, &qword_100112150);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v18 - v4;
  v6 = type metadata accessor for SatelliteConnectivityStateProvider();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  v9 = sub_1000D6284();
  v10 = *(v0 + OBJC_IVAR____TtC11SettingsApp25SatelliteListItemProvider_satelliteConnectivityStateProvider);
  *(v1 + OBJC_IVAR____TtC11SettingsApp25SatelliteListItemProvider_satelliteConnectivityStateProvider) = v9;

  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v5, 1, 1, v11);
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for MainActor();

  v13 = static MainActor.shared.getter();
  v14 = swift_allocObject();
  v14[2] = v13;
  v14[3] = &protocol witness table for MainActor;
  v14[4] = v9;
  v14[5] = v12;

  v15 = sub_100094AF4(0, 0, v5, &unk_100117620, v14);

  v16 = *(v1 + OBJC_IVAR____TtC11SettingsApp25SatelliteListItemProvider_updateTask);
  *(v1 + OBJC_IVAR____TtC11SettingsApp25SatelliteListItemProvider_updateTask) = v15;
}

uint64_t sub_1000D808C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v6 = sub_10004DED0(&unk_10015FFF0, &qword_100117628);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64) + 15;
  v5[12] = swift_task_alloc();
  v5[13] = type metadata accessor for MainActor();
  v5[14] = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[15] = v10;
  v5[16] = v9;

  return _swift_task_switch(sub_1000D8190, v10, v9);
}

uint64_t sub_1000D8190()
{
  v1 = v0[12];
  v2 = v0[8];
  v3 = v0[9];
  sub_10004DED0(&qword_10015FF78, qword_100117630);
  AsyncStream.makeAsyncIterator()();
  swift_beginAccess();
  v4 = v0[13];
  v5 = static MainActor.shared.getter();
  v0[17] = v5;
  v6 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v7 = swift_task_alloc();
  v0[18] = v7;
  *v7 = v0;
  v7[1] = sub_1000D829C;
  v8 = v0[12];
  v9 = v0[10];

  return AsyncStream.Iterator.next(isolation:)(v0 + 5, v5, &protocol witness table for MainActor, v9);
}

uint64_t sub_1000D829C()
{
  v1 = *v0;
  v2 = *(*v0 + 144);
  v3 = *(*v0 + 136);
  v7 = *v0;

  v4 = *(v1 + 128);
  v5 = *(v1 + 120);

  return _swift_task_switch(sub_1000D83E0, v5, v4);
}

uint64_t sub_1000D83E0()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 56);
  if (v2 == 255)
  {
    v8 = *(v0 + 112);
    (*(*(v0 + 88) + 8))(*(v0 + 96), *(v0 + 80));

LABEL_8:
    v10 = *(v0 + 96);

    v11 = *(v0 + 8);

    return v11();
  }

  v3 = *(v0 + 48);
  v4 = *(v0 + 72);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    v9 = *(v0 + 112);
    (*(*(v0 + 88) + 8))(*(v0 + 96), *(v0 + 80));
    goto LABEL_7;
  }

  v6 = Strong;
  if (static Task<>.isCancelled.getter())
  {
    v7 = *(v0 + 112);
    (*(*(v0 + 88) + 8))(*(v0 + 96), *(v0 + 80));

LABEL_7:

    sub_1000D8A10(v1, v3, v2);
    goto LABEL_8;
  }

  v13 = &v6[OBJC_IVAR____TtC11SettingsApp25SatelliteListItemProvider_satelliteConnectivityState];
  v14 = *&v6[OBJC_IVAR____TtC11SettingsApp25SatelliteListItemProvider_satelliteConnectivityState];
  v15 = *&v6[OBJC_IVAR____TtC11SettingsApp25SatelliteListItemProvider_satelliteConnectivityState + 8];
  v16 = v6[OBJC_IVAR____TtC11SettingsApp25SatelliteListItemProvider_satelliteConnectivityState + 16];
  if (!v2)
  {
    if (!v6[OBJC_IVAR____TtC11SettingsApp25SatelliteListItemProvider_satelliteConnectivityState + 16])
    {
      v18 = v1 == v14 && v3 == v15;
      if (v18 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        goto LABEL_50;
      }
    }

    goto LABEL_48;
  }

  if (v2 != 1)
  {
    if (v1 > 1)
    {
      if (v1 ^ 2 | v3)
      {
        v20 = v16 == 2 && v14 == 3;
      }

      else
      {
        v20 = v16 == 2 && v14 == 2;
      }
    }

    else
    {
      if (!(v1 | v3))
      {
        if (v16 == 2 && (v15 | v14) == 0)
        {
          goto LABEL_50;
        }

LABEL_48:
        if (swift_unknownObjectWeakLoadStrong())
        {
          type metadata accessor for PrimarySettingsListModel();
          sub_1000A2E28();
          swift_unknownObjectRelease();
        }

        goto LABEL_50;
      }

      v20 = v16 == 2 && v14 == 1;
    }

    if (v20 && v15 == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_48;
  }

  if (v16 != 1 || v1 != v14)
  {
    goto LABEL_48;
  }

LABEL_50:
  v22 = *v13;
  v23 = *(v13 + 1);
  *v13 = v1;
  *(v13 + 1) = v3;
  v24 = v13[16];
  v13[16] = v2;
  sub_10002D78C(v22, v23, v24);

  v25 = *(v0 + 104);
  v26 = static MainActor.shared.getter();
  *(v0 + 136) = v26;
  v27 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v28 = swift_task_alloc();
  *(v0 + 144) = v28;
  *v28 = v0;
  v28[1] = sub_1000D829C;
  v29 = *(v0 + 96);
  v30 = *(v0 + 80);

  return AsyncStream.Iterator.next(isolation:)(v0 + 40, v26, &protocol witness table for MainActor, v30);
}

uint64_t sub_1000D86E0@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC11SettingsApp25SatelliteListItemProvider_satelliteConnectivityState);
  v4 = *(v1 + OBJC_IVAR____TtC11SettingsApp25SatelliteListItemProvider_satelliteConnectivityState + 8);
  v5 = *(v1 + OBJC_IVAR____TtC11SettingsApp25SatelliteListItemProvider_satelliteConnectivityState + 16);
  sub_10002D778(v3, v4, *(v1 + OBJC_IVAR____TtC11SettingsApp25SatelliteListItemProvider_satelliteConnectivityState + 16));
  v6 = sub_10002D444(v3, v4, v5);
  v8 = v7;
  sub_10002D78C(v3, v4, v5);
  if (v8)
  {
    v9 = *(v1 + OBJC_IVAR____TtC11SettingsApp25SatelliteListItemProvider_id + 16);
    v25 = *(v1 + OBJC_IVAR____TtC11SettingsApp25SatelliteListItemProvider_id);
    v26 = v9;
    v27 = *(v1 + OBJC_IVAR____TtC11SettingsApp25SatelliteListItemProvider_id + 32);
    v10 = sub_100029F88();
    v12 = v11;
    v14 = v13;
    v15 = sub_10002A770(v10);
    v17 = v16;
    v18 = type metadata accessor for PrimarySettingsListItemModel();
    v19 = a1 + *(v18 + 20);
    *v19 = v10;
    *(v19 + 8) = v12;
    *(v19 + 16) = v14;
    *(v19 + 24) = v15;
    *(v19 + 32) = v17;
    *(v19 + 40) = v6;
    *(v19 + 48) = v8;
    type metadata accessor for PrimarySettingsListItemViewType();
    swift_storeEnumTagMultiPayload();
    v20 = v26;
    *a1 = v25;
    *(a1 + 16) = v20;
    *(a1 + 32) = v27;
    *(a1 + *(v18 + 24)) = 4;
    (*(*(v18 - 8) + 56))(a1, 0, 1, v18);
    return sub_10002698C(&v25, v24);
  }

  else
  {
    v22 = type metadata accessor for PrimarySettingsListItemModel();
    v23 = *(*(v22 - 8) + 56);

    return v23(a1, 1, 1, v22);
  }
}

uint64_t sub_1000D8950(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10000A924;

  return sub_1000D808C(a1, v4, v5, v7, v6);
}

uint64_t sub_1000D8A10(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_10002D78C(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_1000D8A24(void *a1)
{
  v2 = sub_10004DED0(&qword_1001600B8, &qword_100117708);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v11[-v5];
  v7 = [a1 displayStewieInStatusBar];
  v8 = [a1 isStewieActiveOverBB];
  if ([a1 isPermittedAtCurrentLocation:1] & 1) != 0 || (objc_msgSend(a1, "isPermittedAtCurrentLocation:", 4) & 1) != 0 || (objc_msgSend(a1, "isPermittedAtCurrentLocation:", 8) & 1) != 0 || (objc_msgSend(a1, "isPermittedAtCurrentLocation:", 16))
  {
    v9 = 1;
  }

  else
  {
    v9 = [a1 isPermittedAtCurrentLocation:32];
  }

  v11[13] = v7;
  v11[14] = v8;
  v11[15] = v9;
  sub_10004DED0(&qword_1001600C0, &qword_100117710);
  AsyncStream.Continuation.yield(_:)();
  return (*(v3 + 8))(v6, v2);
}

Swift::Int sub_1000D8BE0()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  return Hasher._finalize()();
}

void sub_1000D8C50()
{
  v1 = v0[1];
  v2 = v0[2];
  Hasher._combine(_:)(*v0);
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
}

Swift::Int sub_1000D8C9C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  return Hasher._finalize()();
}

id sub_1000D8FD4()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_10004DED0(&qword_1001600C0, &qword_100117710);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v9 - v6;
  (*(v4 + 16))(&v9 - v6, v1 + OBJC_IVAR____TtC11SettingsApp33StewieStateMonitorDelegateAdaptor_stewieStateStreamContinuation, v3);
  AsyncStream.Continuation.finish()();
  (*(v4 + 8))(v7, v3);
  v9.receiver = v1;
  v9.super_class = ObjectType;
  return objc_msgSendSuper2(&v9, "dealloc");
}

uint64_t type metadata accessor for StewieStateMonitorDelegateAdaptor()
{
  result = qword_100160030;
  if (!qword_100160030)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000D9330()
{
  sub_1000D9434(319, &qword_100160040, &type metadata accessor for AsyncStream);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_1000D9434(319, &qword_100160048, &type metadata accessor for AsyncStream.Continuation);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_1000D9434(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, ValueMetadata *))
{
  if (!*a2)
  {
    v4 = a3(0, &type metadata for StewieStateMonitorDelegateAdaptor.StewieState);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t initializeBufferWithCopyOfBuffer for StewieStateMonitorDelegateAdaptor.StewieState(uint64_t result, __int16 *a2)
{
  v2 = *a2;
  *(result + 2) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for StewieStateMonitorDelegateAdaptor.StewieState(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF)
  {
    if ((a2 + 33554177) >> 24)
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776961;
      }
    }

    else
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776961;
      }
    }
  }

  v4 = *a1;
  v5 = v4 >= 2;
  v6 = (v4 + 2147483646) & 0x7FFFFFFF;
  if (!v5)
  {
    v6 = -1;
  }

  return (v6 + 1);
}

uint64_t storeEnumTagSinglePayload for StewieStateMonitorDelegateAdaptor.StewieState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if ((a3 + 33554177) >> 24)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (a3 <= 0xFE)
  {
    v3 = 0;
  }

  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 2) = (a2 - 255) >> 16;
    if (v3)
    {
      v4 = ((a2 - 255) >> 24) + 1;
      if (v3 == 2)
      {
        *(result + 3) = v4;
      }

      else
      {
        *(result + 3) = v4;
      }
    }
  }

  else
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    if (v3 == 2)
    {
      *(result + 3) = 0;
LABEL_10:
      if (!a2)
      {
        return result;
      }

LABEL_16:
      *result = a2 + 1;
      return result;
    }

    *(result + 3) = 0;
    if (a2)
    {
      goto LABEL_16;
    }
  }

  return result;
}

unint64_t sub_1000D9624()
{
  result = qword_1001600B0;
  if (!qword_1001600B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001600B0);
  }

  return result;
}

uint64_t sub_1000D9678@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100057930();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 16);
  return result;
}

uint64_t sub_1000D9718()
{
  if (*(v0 + 64))
  {
    v1 = *(v0 + 64);
  }

  else
  {
    if (qword_10015AB58 != -1)
    {
      swift_once();
    }

    v2 = [qword_100169810 airplaneMode];
    v3 = swift_allocObject();
    swift_weakInit();
    v4 = type metadata accessor for PrimarySettingsListToggleState();
    v5 = *(v4 + 48);
    v6 = *(v4 + 52);
    v1 = swift_allocObject();

    ObservationRegistrar.init()();
    *(v1 + 16) = v2;
    *(v1 + 24) = sub_1000D9DD0;
    *(v1 + 32) = v3;

    v7 = *(v0 + 64);
    *(v0 + 64) = v1;
  }

  return v1;
}

void sub_1000D9834(char a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = *(Strong + 56);

    [v3 setAirplaneMode:a1 & 1];
  }
}

uint64_t sub_1000D98B8()
{
  [*(v0 + 56) setDelegate:0];
  sub_10002C5C0(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));

  v1 = *(v0 + 64);

  return swift_deallocClassInstance();
}

uint64_t sub_1000D991C()
{
  v1 = sub_1000D9718();
  v2 = [*(v0 + 56) airplaneMode];
  if (v2 == *(v1 + 16))
  {
    *(v1 + 16) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100057930();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_1000D9A44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 32);
  v31 = *(v2 + 16);
  v32 = v5;
  v33 = *(v2 + 48);
  v6 = sub_100027320();
  LOBYTE(a1) = sub_100062250(0, v6, a1);

  if (a1)
  {
    if (qword_10015AAC8 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_10000659C(v7, qword_1001696D0);

    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v30[0] = v11;
      *v10 = 136446210;
      v12 = sub_100026A58(v11);
      v14 = sub_100025CF0(v12, v13, v30);

      *(v10 + 4) = v14;
      _os_log_impl(&_mh_execute_header, v8, v9, "Not including %{public}s due to being hidden.", v10, 0xCu);
      sub_10000665C(v11);
    }

    v15 = type metadata accessor for PrimarySettingsListItemModel();
    v16 = *(*(v15 - 8) + 56);

    return v16(a2, 1, 1, v15);
  }

  else
  {
    v18 = sub_100029F88();
    v20 = v19;
    v22 = v21;
    v23 = sub_10002A770(v18);
    v25 = v24;
    v26 = sub_1000D9718();
    v27 = type metadata accessor for PrimarySettingsListItemModel();
    v28 = a2 + *(v27 + 20);
    *v28 = v18;
    *(v28 + 8) = v20;
    *(v28 + 16) = v22;
    *(v28 + 24) = v23;
    *(v28 + 32) = v25;
    *(v28 + 40) = v26;
    type metadata accessor for PrimarySettingsListItemViewType();
    swift_storeEnumTagMultiPayload();
    v29 = v32;
    *a2 = v31;
    *(a2 + 16) = v29;
    *(a2 + 32) = v33;
    *(a2 + *(v27 + 24)) = 4;
    (*(*(v27 - 8) + 56))(a2, 0, 1, v27);
    return sub_10002698C(&v31, v30);
  }
}

uint64_t sub_1000D9D24()
{
  v1 = *v0;
  [*(v1 + 56) setDelegate:v1];
  [*(v1 + 56) setNotifyForExternalChangeOnly:1];
  return sub_1000D991C();
}

uint64_t sub_1000D9DD8()
{
  v1 = v0;
  v2 = sub_10004DED0(&unk_10015FAA0, qword_100112870);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v18 - v5;
  v7 = *(v1 + 56);
  if (v7)
  {
    [v7 invalidate];
    v8 = *(v1 + 56);
  }

  else
  {
    v8 = 0;
  }

  *(v1 + 56) = 0;

  v9 = OBJC_IVAR____TtC11SettingsApp25BluetoothListItemProvider_stateChangeStreamContinuation;
  (*(v3 + 16))(v6, v1 + OBJC_IVAR____TtC11SettingsApp25BluetoothListItemProvider_stateChangeStreamContinuation, v2);
  AsyncStream.Continuation.finish()();
  v10 = *(v3 + 8);
  v10(v6, v2);
  v11 = OBJC_IVAR____TtC11SettingsApp25BluetoothListItemProvider_observationTask;
  if (*(v1 + OBJC_IVAR____TtC11SettingsApp25BluetoothListItemProvider_observationTask))
  {
    v12 = *(v1 + OBJC_IVAR____TtC11SettingsApp25BluetoothListItemProvider_observationTask);

    Task.cancel()();

    v13 = *(v1 + v11);
  }

  *(v1 + v11) = 0;

  sub_10002C5C0(*(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48));

  sub_1000122B4(v1 + 72);
  v14 = OBJC_IVAR____TtC11SettingsApp25BluetoothListItemProvider_stateChangeStream;
  v15 = sub_10004DED0(&qword_10015C900, &qword_1001123C0);
  (*(*(v15 - 8) + 8))(v1 + v14, v15);
  v10((v1 + v9), v2);
  v16 = *(v1 + v11);

  return v1;
}

uint64_t sub_1000D9FE4()
{
  sub_1000D9DD8();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t getEnumTagSinglePayload for BluetoothListItemProvider.State(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for BluetoothListItemProvider.State(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1000DA198()
{
  result = qword_1001602E8;
  if (!qword_1001602E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001602E8);
  }

  return result;
}

void sub_1000DA1EC()
{
  v1 = v0;
  v2 = sub_10004DED0(&unk_10015D490, &qword_100112150);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = aBlock - v4;
  v6 = [objc_allocWithZone(CBController) init];
  v7 = *(v0 + 56);
  *(v0 + 56) = v6;
  v8 = v6;

  if (v8)
  {
    v9 = swift_allocObject();
    swift_weakInit();
    aBlock[4] = sub_1000DBDD0;
    aBlock[5] = v9;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10000411C;
    aBlock[3] = &unk_100151770;
    v10 = _Block_copy(aBlock);

    [v8 setBluetoothStateChangedHandler:v10];
    _Block_release(v10);

    v11 = type metadata accessor for TaskPriority();
    v12 = *(*(v11 - 8) + 56);
    v12(v5, 1, 1, v11);
    v13 = swift_allocObject();
    swift_weakInit();
    type metadata accessor for MainActor();

    v14 = static MainActor.shared.getter();
    v15 = swift_allocObject();
    v15[2] = v14;
    v15[3] = &protocol witness table for MainActor;
    v15[4] = v13;

    v16 = sub_100094AF4(0, 0, v5, &unk_1001178E8, v15);
    v17 = *(v1 + OBJC_IVAR____TtC11SettingsApp25BluetoothListItemProvider_observationTask);
    *(v1 + OBJC_IVAR____TtC11SettingsApp25BluetoothListItemProvider_observationTask) = v16;

    v12(v5, 1, 1, v11);
    v18 = swift_allocObject();
    swift_weakInit();

    v19 = static MainActor.shared.getter();
    v20 = swift_allocObject();
    v20[2] = v19;
    v20[3] = &protocol witness table for MainActor;
    v20[4] = v18;

    sub_100094AF4(0, 0, v5, &unk_1001178F8, v20);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1000DA4FC()
{
  v0 = sub_10004DED0(&unk_10015FAA0, qword_100112870);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v13 - v3;
  v5 = sub_10004DED0(&qword_10015F818, &qword_100116F28);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v13 - v7;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    (*(v1 + 16))(v4, Strong + OBJC_IVAR____TtC11SettingsApp25BluetoothListItemProvider_stateChangeStreamContinuation, v0);

    AsyncStream.Continuation.yield<A>()();
    (*(v1 + 8))(v4, v0);
    v10 = 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = sub_10004DED0(&unk_10015C570, &qword_100112440);
  (*(*(v11 - 8) + 56))(v8, v10, 1, v11);
  return sub_1000068B0(v8, &qword_10015F818, &qword_100116F28);
}

uint64_t sub_1000DA6E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[10] = a4;
  v5 = sub_10004DED0(&unk_10015F9E0, &unk_100112BB0);
  v4[11] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v4[12] = swift_task_alloc();
  v7 = sub_10004DED0(&qword_10015C900, &qword_1001123C0);
  v4[13] = v7;
  v8 = *(v7 - 8);
  v4[14] = v8;
  v9 = *(v8 + 64) + 15;
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();
  v4[17] = type metadata accessor for MainActor();
  v4[18] = static MainActor.shared.getter();
  v11 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[19] = v11;
  v4[20] = v10;

  return _swift_task_switch(sub_1000DA830, v11, v10);
}

uint64_t sub_1000DA830()
{
  v1 = v0[10];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = v0[15];
    v4 = v0[16];
    v5 = v0[13];
    v6 = v0[14];
    v8 = v0[11];
    v7 = v0[12];
    v9 = v0[10];
    (*(v6 + 16))(v3, Strong + OBJC_IVAR____TtC11SettingsApp25BluetoothListItemProvider_stateChangeStream, v5);

    (*(v6 + 32))(v4, v3, v5);
    sub_10001AE08();
    AsyncSequence.debounce<>(for:tolerance:)();
    v10 = AsyncDebounceSequence.makeAsyncIterator()();
    v0[21] = v10;
    sub_1000068B0(v7, &unk_10015F9E0, &unk_100112BB0);
    v0[8] = v10;
    swift_beginAccess();
    v11 = v0[17];
    v0[22] = static MainActor.shared.getter();
    v12 = async function pointer to AsyncDebounceSequence.Iterator.next()[1];
    v13 = swift_task_alloc();
    v0[23] = v13;
    v14 = sub_10004DED0(&unk_10015F9F0, &qword_100112470);
    *v13 = v0;
    v13[1] = sub_1000DAA64;

    return AsyncDebounceSequence.Iterator.next()(v0 + 27, v14);
  }

  else
  {
    v15 = v0[18];

    v17 = v0[15];
    v16 = v0[16];
    v18 = v0[12];

    v19 = v0[1];

    return v19();
  }
}

uint64_t sub_1000DAA64()
{
  v2 = *v1;
  v3 = *(*v1 + 184);
  v4 = *v1;
  *(v2 + 192) = v0;

  v5 = *(v2 + 176);
  if (v0)
  {
    if (v5)
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

    v9 = sub_1000DAD9C;
  }

  else
  {
    *(v2 + 217) = *(v2 + 216);
    if (v5)
    {
      swift_getObjectType();
      v6 = dispatch thunk of Actor.unownedExecutor.getter();
      v8 = v10;
    }

    else
    {
      v6 = 0;
      v8 = 0;
    }

    v9 = sub_1000DAC04;
  }

  return _swift_task_switch(v9, v6, v8);
}

uint64_t sub_1000DAC04()
{
  v1 = v0[22];

  v2 = v0[19];
  v3 = v0[20];

  return _swift_task_switch(sub_1000DAC68, v2, v3);
}

uint64_t sub_1000DAC68()
{
  if ((*(v0 + 217) & 1) != 0 || (v1 = *(v0 + 80), Strong = swift_weakLoadStrong(), (*(v0 + 200) = Strong) == 0))
  {
    v6 = *(v0 + 168);
    v7 = *(v0 + 144);
    v8 = *(v0 + 128);
    v9 = *(v0 + 104);
    v10 = *(v0 + 112);

    (*(v10 + 8))(v8, v9);
    v12 = *(v0 + 120);
    v11 = *(v0 + 128);
    v13 = *(v0 + 96);

    v14 = *(v0 + 8);

    return v14();
  }

  else
  {
    v3 = *(v0 + 136);
    *(v0 + 208) = static MainActor.shared.getter();
    v5 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_1000DAE28, v5, v4);
  }
}

uint64_t sub_1000DAD9C()
{
  *(v0 + 72) = *(v0 + 192);
  sub_10004DED0(&unk_10015C800, &unk_100112BC0);
  swift_dynamicCast();

  return swift_willThrowTypedImpl();
}

uint64_t sub_1000DAE28()
{
  v2 = v0[25];
  v1 = v0[26];

  v3 = *(v2 + 56);
  if (v3)
  {
    v4 = v3;
    v5 = [v4 bluetoothState];
    if (qword_10015AB60 != -1)
    {
      v11 = v5;
      swift_once();
      v5 = v11;
    }

    v6 = (0x30200010000uLL >> (8 * v5)) & 3;
    if (v5 > 5)
    {
      LODWORD(v6) = 0;
    }

    if (qword_100169818 == v5)
    {
      v7 = 4;
    }

    else
    {
      v7 = v6;
    }

    v8 = v0[25];
    if (v7 != *(v8 + 64) && swift_unknownObjectWeakLoadStrong())
    {
      type metadata accessor for PrimarySettingsListModel();
      sub_1000A2E28();
      swift_unknownObjectRelease();
    }

    *(v8 + 64) = v7;
  }

  v9 = v0[19];
  v10 = v0[20];

  return _swift_task_switch(sub_1000DAF98, v9, v10);
}

uint64_t sub_1000DAF98()
{
  v1 = v0[25];

  v2 = v0[17];
  v0[22] = static MainActor.shared.getter();
  v3 = async function pointer to AsyncDebounceSequence.Iterator.next()[1];
  v4 = swift_task_alloc();
  v0[23] = v4;
  v5 = sub_10004DED0(&unk_10015F9F0, &qword_100112470);
  *v4 = v0;
  v4[1] = sub_1000DAA64;

  return AsyncDebounceSequence.Iterator.next()(v0 + 27, v5);
}

uint64_t sub_1000DB060(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a4;
  v5 = sub_10004DED0(&unk_10015FAA0, qword_100112870);
  v4[9] = v5;
  v6 = *(v5 - 8);
  v4[10] = v6;
  v7 = *(v6 + 64) + 15;
  v4[11] = swift_task_alloc();
  v8 = *(*(sub_10004DED0(&qword_10015F818, &qword_100116F28) - 8) + 64) + 15;
  v4[12] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[13] = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[14] = v10;
  v4[15] = v9;

  return _swift_task_switch(sub_1000DB198, v10, v9);
}

uint64_t sub_1000DB198()
{
  v1 = v0[8];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = *(Strong + 56);
    v0[16] = v3;
    if (v3)
    {
      v3;

      v4 = swift_task_alloc();
      v0[17] = v4;
      *v4 = v0;
      v4[1] = sub_1000DB3D4;

      return sub_1000DB68C();
    }

    v7 = v0[13];
  }

  else
  {
    v6 = v0[13];
  }

  v8 = v0[8];
  swift_beginAccess();
  v9 = swift_weakLoadStrong();
  if (v9)
  {
    v10 = v0[11];
    v11 = v0[9];
    v12 = v0[10];
    (*(v12 + 16))(v10, v9 + OBJC_IVAR____TtC11SettingsApp25BluetoothListItemProvider_stateChangeStreamContinuation, v11);

    AsyncStream.Continuation.yield<A>()();
    (*(v12 + 8))(v10, v11);
    v13 = 0;
  }

  else
  {
    v13 = 1;
  }

  v15 = v0[11];
  v14 = v0[12];
  v16 = sub_10004DED0(&unk_10015C570, &qword_100112440);
  (*(*(v16 - 8) + 56))(v14, v13, 1, v16);
  sub_1000068B0(v14, &qword_10015F818, &qword_100116F28);

  v17 = v0[1];

  return v17();
}

uint64_t sub_1000DB3D4()
{
  v1 = *v0;
  v2 = *(*v0 + 136);
  v3 = *(*v0 + 128);
  v7 = *v0;

  v4 = *(v1 + 120);
  v5 = *(v1 + 112);

  return _swift_task_switch(sub_1000DB514, v5, v4);
}

uint64_t sub_1000DB514()
{
  v1 = v0[13];

  v2 = v0[8];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = v0[11];
    v5 = v0[9];
    v6 = v0[10];
    (*(v6 + 16))(v4, Strong + OBJC_IVAR____TtC11SettingsApp25BluetoothListItemProvider_stateChangeStreamContinuation, v5);

    AsyncStream.Continuation.yield<A>()();
    (*(v6 + 8))(v4, v5);
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  v9 = v0[11];
  v8 = v0[12];
  v10 = sub_10004DED0(&unk_10015C570, &qword_100112440);
  (*(*(v10 - 8) + 56))(v8, v7, 1, v10);
  sub_1000068B0(v8, &qword_10015F818, &qword_100116F28);

  v11 = v0[1];

  return v11();
}

uint64_t sub_1000DB6AC()
{
  v1 = v0[2];
  v2 = swift_task_alloc();
  v0[3] = v2;
  *(v2 + 16) = v1;
  v3 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v4 = swift_task_alloc();
  v0[4] = v4;
  *v4 = v0;
  v4[1] = sub_1000DB7A0;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v4, 0, 0, 0xD000000000000018, 0x80000001001255E0, sub_1000DC100, v2, &type metadata for ()[8]);
}

uint64_t sub_1000DB7A0()
{
  v2 = *v1;
  v3 = *(*v1 + 32);
  v7 = *v1;
  *(*v1 + 40) = v0;

  if (v0)
  {
    v4 = sub_1000DB8D0;
  }

  else
  {
    v5 = *(v2 + 24);

    v4 = sub_1000DB8BC;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1000DB8D0()
{
  v1 = v0[3];

  if (qword_10015AAF0 != -1)
  {
    swift_once();
  }

  v2 = v0[5];
  v3 = type metadata accessor for Logger();
  sub_10000659C(v3, qword_100169748);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[5];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "Failed to activate Bluetooth controller: %@", v8, 0xCu);
    sub_1000068B0(v9, &unk_10015F9C0, &unk_100115230);
  }

  else
  {
  }

  v11 = v0[1];

  return v11();
}

uint64_t sub_1000DBA7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for PrimarySettingsListItemViewType();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10004DED0(&unk_10015EDB0, &unk_100111C70);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = v40 - v12;
  v14 = type metadata accessor for PrimarySettingsListItemModel();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v3 + 32);
  v46 = *(v3 + 16);
  v47 = v19;
  v48 = *(v3 + 48);
  type metadata accessor for StaticPrimarySettingsListItemProvider();
  inited = swift_initStackObject();
  v21 = v48;
  v22 = v47;
  *(inited + 16) = v46;
  *(inited + 32) = v22;
  *(inited + 48) = v21;
  sub_10002698C(&v46, v45);
  sub_10005AFAC(a1, v13);
  swift_setDeallocating();
  sub_10002C5C0(*(inited + 16), *(inited + 24), *(inited + 32), *(inited + 40), *(inited + 48));
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_1000068B0(v13, &unk_10015EDB0, &unk_100111C70);
    return (*(v15 + 56))(a2, 1, 1, v14);
  }

  else
  {
    sub_10002C634(v13, v18);
    v44 = *(v14 + 24);
    v24 = *&v18[v44];
    v26 = (v24 & 1) == 0 && *(v3 + 64) == 1;
    v43 = v24 | v26;
    v27 = sub_100029F88();
    v29 = v28;
    v41 = v14;
    v31 = v30;
    v32 = sub_10002A770(v27);
    v42 = a2;
    v33 = v32;
    v40[1] = v6;
    v35 = v34;
    v36 = sub_10002CEF4();
    *v9 = v27;
    *(v9 + 1) = v29;
    v9[16] = v31;
    *(v9 + 3) = v33;
    *(v9 + 4) = v35;
    *(v9 + 5) = v36;
    *(v9 + 6) = v37;
    swift_storeEnumTagMultiPayload();
    v38 = v41;
    sub_10002CE90(v9, &v18[*(v41 + 20)]);
    *&v18[v44] = v43;
    v39 = v42;
    sub_10002C7EC(v18, v42);
    (*(v15 + 56))(v39, 0, 1, v38);
    return sub_10002D10C(v18);
  }
}

uint64_t sub_1000DBDD8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000A924;

  return sub_1000DA6E4(a1, v4, v5, v6);
}

uint64_t sub_1000DBE8C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000ACE4;

  return sub_1000DB060(a1, v4, v5, v6);
}

void sub_1000DBF50(uint64_t a1, void *a2)
{
  v4 = sub_10004DED0(&qword_1001602F0, &qword_100117908);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = aBlock - v7;
  (*(v5 + 16))(aBlock - v7, a1, v4);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  (*(v5 + 32))(v10 + v9, v8, v4);
  aBlock[4] = sub_1000DC1E8;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000DC17C;
  aBlock[3] = &unk_100151810;
  v11 = _Block_copy(aBlock);

  [a2 activateWithCompletion:v11];
  _Block_release(v11);
}

uint64_t sub_1000DC108(uint64_t a1)
{
  if (a1)
  {
    swift_errorRetain();
    sub_10004DED0(&qword_1001602F0, &qword_100117908);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    sub_10004DED0(&qword_1001602F0, &qword_100117908);
    return CheckedContinuation.resume(returning:)();
  }
}

void sub_1000DC17C(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

uint64_t sub_1000DC1E8(uint64_t a1)
{
  v2 = *(*(sub_10004DED0(&qword_1001602F0, &qword_100117908) - 8) + 80);

  return sub_1000DC108(a1);
}

id sub_1000DC26C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a2;
  v52 = a1;
  v3 = sub_10004DED0(&unk_10015EDB0, &unk_100111C70);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v49[-v5];
  v7 = type metadata accessor for PrimarySettingsListItemModel();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v49[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = *(v2 + 16);
  v13 = *(v2 + 24);
  v14 = *(v2 + 32);
  v15 = *(v2 + 40);
  v16 = *(v2 + 48);
  type metadata accessor for StaticPrimarySettingsListItemProvider();
  inited = swift_initStackObject();
  *(inited + 16) = v12;
  *(inited + 24) = v13;
  *(inited + 32) = v14;
  *(inited + 40) = v15;
  *(inited + 48) = v16;
  v18 = v14;
  v19 = v7;
  v20 = v8;
  sub_100029920(v12, v13, v18, v15, v16);
  sub_10005AFAC(v52, v6);
  swift_setDeallocating();
  sub_10002C5C0(*(inited + 16), *(inited + 24), *(inited + 32), *(inited + 40), *(inited + 48));
  if ((*(v8 + 48))(v6, 1, v19) == 1)
  {
    sub_10002C8C0(v6);
    if (qword_10015AAC8 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_10000659C(v21, qword_1001696D0);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "Hiding Camera Settings because Shared iPad or ManagedConfiguration/Screen Time Restricted.", v24, 2u);
    }

    goto LABEL_27;
  }

  sub_10002C634(v6, v11);
  result = MobileGestalt_get_current_device();
  if (result)
  {
    v26 = result;
    v27 = v11;
    LODWORD(v11) = MobileGestalt_get_cameraButtonCapability();

    v28 = objc_allocWithZone(LSApplicationRecord);
    v29 = sub_10002D7CC(0xD000000000000010, 0x800000010011F0C0, 0);
    if (v29)
    {

      v30 = 1;
    }

    else
    {
      v30 = 0;
    }

    v31 = objc_allocWithZone(LSApplicationRecord);
    v32 = sub_10002D7CC(0xD000000000000013, 0x8000000100125670, 0);
    if (v32)
    {

      v33 = 1;
    }

    else
    {
      v33 = 0;
    }

    if (qword_10015AAC8 != -1)
    {
      swift_once();
    }

    v34 = type metadata accessor for Logger();
    sub_10000659C(v34, qword_1001696D0);
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v35, v36))
    {
      goto LABEL_20;
    }

    v50 = v11;
    v52 = v20;
    v37 = v19;
    v11 = v27;
    v38 = swift_slowAlloc();
    *v38 = 67109632;
    result = MobileGestalt_get_current_device();
    if (result)
    {
      v39 = result;
      cameraButtonCapability = MobileGestalt_get_cameraButtonCapability();

      *(v38 + 4) = cameraButtonCapability;
      *(v38 + 8) = 1024;
      *(v38 + 10) = v30;
      *(v38 + 14) = 1024;
      *(v38 + 16) = v33;
      _os_log_impl(&_mh_execute_header, v35, v36, "CameraSettingsListItemProvider (hasCameraControl: %{BOOL}d, isCameraInstalled: %{BOOL}d, isMessagesInstalled: %{BOOL}d)", v38, 0x14u);

      v27 = v11;
      v19 = v37;
      v20 = v52;
      LOBYTE(v11) = v50;
LABEL_20:

      v41 = Logger.logObject.getter();
      v42 = static os_log_type_t.default.getter();
      v43 = os_log_type_enabled(v41, v42);
      if (((v11 | v30) | v33))
      {
        if (v43)
        {
          v44 = swift_slowAlloc();
          *v44 = 0;
          _os_log_impl(&_mh_execute_header, v41, v42, "Showing Camera Settings.", v44, 2u);
        }

        v45 = v51;
        sub_10002C634(v27, v51);
        v46 = v45;
        v47 = 0;
        return (*(v20 + 56))(v46, v47, 1, v19);
      }

      if (v43)
      {
        v48 = swift_slowAlloc();
        *v48 = 0;
        _os_log_impl(&_mh_execute_header, v41, v42, "Hiding Camera Settings because neither Camera nor Messages are installed (device does not support camera control).", v48, 2u);
      }

      sub_10002D10C(v27);
LABEL_27:
      v47 = 1;
      v46 = v51;
      return (*(v20 + 56))(v46, v47, 1, v19);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1000DC7D8@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = *(v3 + 24);
  v6 = *(v3 + 32);
  v7 = *(v3 + 40);
  v8 = *(v3 + 48);
  result = sub_100029920(v4, v5, v6, v7, v8);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
  return result;
}

uint64_t sub_1000DC860@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_10004DED0(&unk_10015EDB0, &unk_100111C70);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v43 - v7;
  v9 = type metadata accessor for PrimarySettingsListItemModel();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v2 + 32);
  v48 = *(v2 + 16);
  v49 = v14;
  v50 = *(v2 + 48);
  type metadata accessor for StaticPrimarySettingsListItemProvider();
  inited = swift_initStackObject();
  v16 = v50;
  v17 = v49;
  *(inited + 16) = v48;
  *(inited + 32) = v17;
  *(inited + 48) = v16;
  sub_10002698C(&v48, v47);
  sub_10005AFAC(a1, v8);
  swift_setDeallocating();
  sub_10002C5C0(*(inited + 16), *(inited + 24), *(inited + 32), *(inited + 40), *(inited + 48));
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_10002C8C0(v8);
    return (*(v10 + 56))(a2, 1, 1, v9);
  }

  else
  {
    sub_10002C634(v8, v13);
    v45 = *(v9 + 24);
    v46 = a2;
    v19 = *&v13[v45];
    v20 = 0x10000000000;
    if (!a1[37])
    {
      v20 = 0;
    }

    v21 = v20 | (a1[38] << 48);
    v22 = &_mh_execute_header;
    if (!a1[36])
    {
      v22 = 0;
    }

    v23 = 0x1000000;
    if (!a1[35])
    {
      v23 = 0;
    }

    v24 = v22 | v23;
    v25 = 0x10000;
    if (!a1[34])
    {
      v25 = 0;
    }

    v26 = v21 | v24 | v25;
    v27 = 256;
    if (!a1[33])
    {
      v27 = 0;
    }

    v28 = sub_10002D168(v26 | v27 | a1[32]);
    v30 = v29;
    v43 = v28;
    v44 = v19 | v31 & ((v19 & 1) == 0);
    v32 = v9;
    v33 = sub_100029F88();
    v35 = v34;
    v37 = v36;
    v38 = sub_10002A770(v33);
    v40 = v39;
    v41 = &v13[*(v32 + 20)];
    sub_10002C758(v41, type metadata accessor for PrimarySettingsListItemViewType);
    *v41 = v33;
    *(v41 + 8) = v35;
    *(v41 + 16) = v37;
    *(v41 + 24) = v38;
    *(v41 + 32) = v40;
    *(v41 + 40) = v43;
    *(v41 + 48) = v30;
    type metadata accessor for PrimarySettingsListItemViewType();
    swift_storeEnumTagMultiPayload();
    *&v13[v45] = v44;
    v42 = v46;
    sub_10002C7EC(v13, v46);
    (*(v10 + 56))(v42, 0, 1, v32);
    return sub_10002C758(v13, type metadata accessor for PrimarySettingsListItemModel);
  }
}

uint64_t sub_1000DCBB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[8] = a3;
  v4[9] = v3;
  v4[6] = a1;
  v4[7] = a2;
  v6 = *(*(sub_10004DED0(&unk_10015FCF0, &unk_100117B60) - 8) + 64) + 15;
  v4[10] = swift_task_alloc();
  v7 = type metadata accessor for Notification();
  v4[11] = v7;
  v8 = *(v7 - 8);
  v4[12] = v8;
  v9 = *(v8 + 64) + 15;
  v4[13] = swift_task_alloc();
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

  v4[14] = v10;
  v4[15] = v12;

  return _swift_task_switch(sub_1000DCCF0, v10, v12);
}

uint64_t sub_1000DCCF0()
{
  v1 = v0[9];
  v0[16] = sub_10004DED0(&qword_1001604F8, &qword_100117A30);
  v0[17] = AsyncMapSequence.Iterator.baseIterator.modify();
  v2 = type metadata accessor for NSNotificationCenter.Notifications.Iterator();
  v3 = sub_100042058(&qword_10015CB60, &type metadata accessor for NSNotificationCenter.Notifications.Iterator);
  v4 = _sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTjTu[1];
  v6 = swift_task_alloc();
  v0[18] = v6;
  *v6 = v0;
  v6[1] = sub_1000DCE10;
  v7 = v0[10];
  v8 = v0[7];
  v9 = v0[8];

  return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v7, v8, v9, v5, v2, v3);
}

uint64_t sub_1000DCE10()
{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v8 = *v1;

  if (v0)
  {
    v4 = *(v2 + 112);
    v5 = *(v2 + 120);
    v6 = sub_1000DD110;
  }

  else
  {
    (*(v2 + 136))();
    v4 = *(v2 + 112);
    v5 = *(v2 + 120);
    v6 = sub_1000DCF38;
  }

  return _swift_task_switch(v6, v4, v5);
}

uint64_t sub_1000DCF38()
{
  v1 = v0[11];
  v2 = v0[12];
  v3 = v0[10];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = v0[6];
    sub_1000068B0(v3, &unk_10015FCF0, &unk_100117B60);
    *v4 = 0u;
    v4[1] = 0u;
    v5 = v0[13];
    v6 = v0[10];

    v7 = v0[1];

    return v7();
  }

  else
  {
    v9 = v0[16];
    v10 = v0[9];
    (*(v2 + 32))(v0[13], v3, v1);
    v11 = AsyncMapSequence.Iterator.transform.getter();
    v0[19] = v12;
    v17 = (v11 + *v11);
    v13 = v11[1];
    v14 = swift_task_alloc();
    v0[20] = v14;
    *v14 = v0;
    v14[1] = sub_1000DD19C;
    v15 = v0[13];
    v16 = v0[6];

    return v17(v16, v15);
  }
}

uint64_t sub_1000DD110()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 80);
  (*(v0 + 136))();

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1000DD19C()
{
  v1 = *v0;
  v2 = *(*v0 + 160);
  v3 = *(*v0 + 152);
  v4 = *(*v0 + 104);
  v5 = *(*v0 + 96);
  v6 = *(*v0 + 88);
  v10 = *v0;

  (*(v5 + 8))(v4, v6);
  v7 = *(v1 + 120);
  v8 = *(v1 + 112);

  return _swift_task_switch(sub_1000DD33C, v8, v7);
}

uint64_t sub_1000DD33C()
{
  v1 = v0[13];
  v2 = v0[10];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1000DD3AC(uint64_t result)
{
  v2 = result & 1;
  if (*(v1 + 49) != (result & 1))
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      type metadata accessor for PrimarySettingsListModel();
      sub_1000A2E28();
      result = swift_unknownObjectRelease();
    }
  }

  *(v1 + 49) = v2;
  return result;
}

uint64_t sub_1000DD454()
{
  swift_beginAccess();
  v1 = *(v0 + 72);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + 72);

    v4 = 32;
    do
    {
      v5 = *(v1 + v4);

      Task.cancel()();

      v4 += 8;
      --v2;
    }

    while (v2);
  }

  sub_10002C5C0(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));
  sub_1000122B4(v0 + 56);
  v6 = *(v0 + 72);

  return swift_deallocClassInstance();
}

uint64_t sub_1000DD53C()
{
  v1 = sub_10004DED0(&unk_10015D490, &qword_100112150);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v30 - v3;
  v5 = type metadata accessor for TaskPriority();
  v6 = *(v5 - 8);
  v7 = *(v6 + 56);
  v8 = v6 + 56;
  v7(v4, 1, 1, v5);
  v9 = swift_allocObject();
  swift_weakInit();
  type metadata accessor for MainActor();

  v10 = static MainActor.shared.getter();
  v11 = swift_allocObject();
  v11[2] = v10;
  v11[3] = &protocol witness table for MainActor;
  v11[4] = v9;

  v12 = sub_100094AF4(0, 0, v4, &unk_100117A00, v11);
  swift_beginAccess();
  v13 = *(v0 + 72);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v0 + 72) = v13;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v13 = sub_100015698(0, v13[2] + 1, 1, v13);
    *(v0 + 72) = v13;
  }

  v16 = v13[2];
  v15 = v13[3];
  if (v16 >= v15 >> 1)
  {
    v13 = sub_100015698((v15 > 1), v16 + 1, 1, v13);
  }

  v13[2] = v16 + 1;
  v13[v16 + 4] = v12;
  *(v0 + 72) = v13;
  swift_endAccess();
  v30 = v8;
  v7(v4, 1, 1, v5);
  v17 = swift_allocObject();
  swift_weakInit();

  v18 = static MainActor.shared.getter();
  v19 = swift_allocObject();
  v19[2] = v18;
  v19[3] = &protocol witness table for MainActor;
  v19[4] = v17;

  v20 = sub_100094AF4(0, 0, v4, &unk_100117A10, v19);
  swift_beginAccess();
  v21 = *(v0 + 72);

  v22 = swift_isUniquelyReferenced_nonNull_native();
  *(v0 + 72) = v21;
  v23 = v7;
  if ((v22 & 1) == 0)
  {
    v21 = sub_100015698(0, v21[2] + 1, 1, v21);
    *(v0 + 72) = v21;
  }

  v25 = v21[2];
  v24 = v21[3];
  if (v25 >= v24 >> 1)
  {
    v21 = sub_100015698((v24 > 1), v25 + 1, 1, v21);
  }

  v21[2] = v25 + 1;
  v21[v25 + 4] = v20;
  *(v0 + 72) = v21;
  swift_endAccess();
  v23(v4, 1, 1, v5);
  v26 = swift_allocObject();
  swift_weakInit();

  v27 = static MainActor.shared.getter();
  v28 = swift_allocObject();
  v28[2] = v27;
  v28[3] = &protocol witness table for MainActor;
  v28[4] = v26;

  sub_100094DF4(0, 0, v4, &unk_100117A20, v28);
}

uint64_t sub_1000DD95C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[12] = a4;
  v5 = *(*(type metadata accessor for NSNotificationCenter.Notifications.Iterator() - 8) + 64) + 15;
  v4[13] = swift_task_alloc();
  v6 = sub_10004DED0(&qword_1001604F0, &qword_100117A28);
  v4[14] = v6;
  v7 = *(v6 - 8);
  v4[15] = v7;
  v8 = *(v7 + 64) + 15;
  v4[16] = swift_task_alloc();
  v9 = sub_10004DED0(&qword_1001604F8, &qword_100117A30);
  v4[17] = v9;
  v10 = *(v9 - 8);
  v4[18] = v10;
  v11 = *(v10 + 64) + 15;
  v4[19] = swift_task_alloc();
  v4[20] = type metadata accessor for MainActor();
  v4[21] = static MainActor.shared.getter();
  v13 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[22] = v13;
  v4[23] = v12;

  return _swift_task_switch(sub_1000DDAF4, v13, v12);
}

uint64_t sub_1000DDAF4()
{
  v1 = v0[15];
  v2 = v0[16];
  v3 = v0[13];
  v4 = v0[14];
  v11 = v0[19];
  v12 = v0[12];
  v5 = [objc_opt_self() defaultCenter];
  v0[9] = NSNotificationCenter.notifications(named:object:)();
  type metadata accessor for NSNotificationCenter.Notifications();
  sub_10004DED0(&qword_100160500, &qword_100117A40);
  sub_100042058(&qword_10015CF78, &type metadata accessor for NSNotificationCenter.Notifications);
  AsyncMapSequence.init(_:transform:)();

  AsyncMapSequence.base.getter();
  dispatch thunk of AsyncSequence.makeAsyncIterator()();
  AsyncMapSequence.transform.getter();
  (*(v1 + 8))(v2, v4);
  AsyncMapSequence.Iterator.init(_:transform:)();
  swift_beginAccess();
  v6 = v0[20];
  v7 = static MainActor.shared.getter();
  v0[24] = v7;
  v8 = swift_task_alloc();
  v0[25] = v8;
  *v8 = v0;
  v8[1] = sub_1000DDD4C;
  v9 = v0[19];

  return sub_1000DCBB8((v0 + 2), v7, &protocol witness table for MainActor);
}

uint64_t sub_1000DDD4C()
{
  v2 = *v1;
  v3 = *(*v1 + 200);
  v8 = *v1;

  if (!v0)
  {
    v5 = v2[24];

    v6 = v2[22];
    v7 = v2[23];

    return _swift_task_switch(sub_1000DDE60, v6, v7);
  }

  return result;
}

uint64_t sub_1000DDE60()
{
  if (v0[5])
  {
    v1 = v0[12];
    if (swift_weakLoadStrong())
    {
      sub_1000DE028();

      sub_1000068B0((v0 + 2), &qword_100160508, &unk_100117A50);
      v2 = v0[20];
      v3 = static MainActor.shared.getter();
      v0[24] = v3;
      v4 = swift_task_alloc();
      v0[25] = v4;
      *v4 = v0;
      v4[1] = sub_1000DDD4C;
      v5 = v0[19];

      return (sub_1000DCBB8)(v0 + 2, v3, &protocol witness table for MainActor, v0 + 11);
    }

    v8 = v0[21];
    (*(v0[18] + 8))(v0[19], v0[17]);

    sub_1000068B0((v0 + 2), &qword_100160508, &unk_100117A50);
  }

  else
  {
    v7 = v0[21];
    (*(v0[18] + 8))(v0[19], v0[17]);
  }

  v9 = v0[19];
  v10 = v0[16];
  v11 = v0[13];

  v12 = v0[1];

  return v12();
}

id sub_1000DE028()
{
  v20 = type metadata accessor for OSSignpostID();
  v0 = *(v20 - 8);
  v1 = *(v0 + 64);
  __chkstk_darwin(v20);
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OSSignposter();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10015AAE0 != -1)
  {
    swift_once();
  }

  v9 = sub_10000659C(v4, qword_100169718);
  (*(v5 + 16))(v8, v9, v4);
  static OSSignpostID.exclusive.getter();
  v10 = swift_slowAlloc();
  *v10 = 0;
  v11 = OSSignposter.logHandle.getter();
  v12 = static os_signpost_type_t.begin.getter();
  v13 = OSSignpostID.rawValue.getter();
  _os_signpost_emit_with_name_impl(&_mh_execute_header, v11, v12, v13, "ClassKitListItemProvider.updateClassKitVisibilityIfNeeded()", "", v10, 2u);
  result = [objc_opt_self() shared];
  if (result)
  {
    v15 = result;
    v16 = [result settingsUIVisible];

    sub_1000DD3AC(v16);
    v17 = static os_signpost_type_t.end.getter();
    v18 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v11, v17, v18, "ClassKitListItemProvider.updateClassKitVisibilityIfNeeded()", "", v10, 2u);

    (*(v0 + 8))(v3, v20);
    return (*(v5 + 8))(v8, v4);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000DE2F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[12] = a4;
  v5 = *(*(type metadata accessor for NSNotificationCenter.Notifications.Iterator() - 8) + 64) + 15;
  v4[13] = swift_task_alloc();
  v6 = sub_10004DED0(&qword_1001604F0, &qword_100117A28);
  v4[14] = v6;
  v7 = *(v6 - 8);
  v4[15] = v7;
  v8 = *(v7 + 64) + 15;
  v4[16] = swift_task_alloc();
  v9 = sub_10004DED0(&qword_1001604F8, &qword_100117A30);
  v4[17] = v9;
  v10 = *(v9 - 8);
  v4[18] = v10;
  v11 = *(v10 + 64) + 15;
  v4[19] = swift_task_alloc();
  v4[20] = type metadata accessor for MainActor();
  v4[21] = static MainActor.shared.getter();
  v13 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[22] = v13;
  v4[23] = v12;

  return _swift_task_switch(sub_1000DE490, v13, v12);
}

uint64_t sub_1000DE490()
{
  v1 = v0[15];
  v2 = v0[16];
  v3 = v0[13];
  v4 = v0[14];
  v11 = v0[19];
  v12 = v0[12];
  v5 = [objc_opt_self() defaultCenter];
  v0[9] = NSNotificationCenter.notifications(named:object:)();
  type metadata accessor for NSNotificationCenter.Notifications();
  sub_10004DED0(&qword_100160500, &qword_100117A40);
  sub_100042058(&qword_10015CF78, &type metadata accessor for NSNotificationCenter.Notifications);
  AsyncMapSequence.init(_:transform:)();

  AsyncMapSequence.base.getter();
  dispatch thunk of AsyncSequence.makeAsyncIterator()();
  AsyncMapSequence.transform.getter();
  (*(v1 + 8))(v2, v4);
  AsyncMapSequence.Iterator.init(_:transform:)();
  swift_beginAccess();
  v6 = v0[20];
  v7 = static MainActor.shared.getter();
  v0[24] = v7;
  v8 = swift_task_alloc();
  v0[25] = v8;
  *v8 = v0;
  v8[1] = sub_1000DE6E8;
  v9 = v0[19];

  return sub_1000DCBB8((v0 + 2), v7, &protocol witness table for MainActor);
}

uint64_t sub_1000DE6E8()
{
  v2 = *v1;
  v3 = *(*v1 + 200);
  v8 = *v1;

  if (!v0)
  {
    v5 = v2[24];

    v6 = v2[22];
    v7 = v2[23];

    return _swift_task_switch(sub_1000DE7FC, v6, v7);
  }

  return result;
}

uint64_t sub_1000DE7FC()
{
  if (v0[5])
  {
    v1 = v0[12];
    if (swift_weakLoadStrong())
    {
      sub_1000DE028();

      sub_1000068B0((v0 + 2), &qword_100160508, &unk_100117A50);
      v2 = v0[20];
      v3 = static MainActor.shared.getter();
      v0[24] = v3;
      v4 = swift_task_alloc();
      v0[25] = v4;
      *v4 = v0;
      v4[1] = sub_1000DE6E8;
      v5 = v0[19];

      return (sub_1000DCBB8)(v0 + 2, v3, &protocol witness table for MainActor, v0 + 11);
    }

    v8 = v0[21];
    (*(v0[18] + 8))(v0[19], v0[17]);

    sub_1000068B0((v0 + 2), &qword_100160508, &unk_100117A50);
  }

  else
  {
    v7 = v0[21];
    (*(v0[18] + 8))(v0[19], v0[17]);
  }

  v9 = v0[19];
  v10 = v0[16];
  v11 = v0[13];

  v12 = v0[1];

  return v12();
}

uint64_t sub_1000DE9C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a1;
  v4[6] = a4;
  type metadata accessor for MainActor();
  v4[7] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000DEA5C, v6, v5);
}

uint64_t sub_1000DEA5C()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_1000DE028();
  }

  **(v0 + 40) = Strong == 0;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1000DEB20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *v2;
  if (*(*v2 + 49) == 1)
  {
    v5 = *(v4 + 16);
    v6 = *(v4 + 24);
    v7 = *(v4 + 32);
    v8 = *(v4 + 40);
    v9 = *(v4 + 48);
    type metadata accessor for StaticPrimarySettingsListItemProvider();
    inited = swift_initStackObject();
    *(inited + 16) = v5;
    *(inited + 24) = v6;
    *(inited + 32) = v7;
    *(inited + 40) = v8;
    *(inited + 48) = v9;
    sub_100029920(v5, v6, v7, v8, v9);
    sub_10005AFAC(a1, a2);
    swift_setDeallocating();
    return sub_10002C5C0(*(inited + 16), *(inited + 24), *(inited + 32), *(inited + 40), *(inited + 48));
  }

  else
  {
    v13 = type metadata accessor for PrimarySettingsListItemModel();
    v14 = *(*(v13 - 8) + 56);

    return v14(a2, 1, 1, v13);
  }
}

uint64_t sub_1000DEC48(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000ACE4;

  return sub_1000DD95C(a1, v4, v5, v6);
}

uint64_t sub_1000DECFC(uint64_t *a1)
{
  v3 = Notification.name.getter();
  type metadata accessor for Name(0);
  a1[3] = v4;
  *a1 = v3;
  v5 = *(v1 + 8);

  return v5();
}

uint64_t sub_1000DED74(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000ACE4;

  return sub_1000DE2F8(a1, v4, v5, v6);
}

uint64_t sub_1000DEE28(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000A924;

  return sub_1000DE9C4(a1, v4, v5, v6);
}

id sub_1000DEEDC()
{
  v1 = *(v0 + 72);
  if (v1)
  {
    v2 = *(v0 + 72);
  }

  else
  {
    v3 = [objc_allocWithZone(CRKDefaultSettingsUIVisibilityProvider) init];
    v4 = *(v0 + 72);
    *(v0 + 72) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

uint64_t sub_1000DEF48(uint64_t result)
{
  v2 = result & 1;
  if (*(v1 + 80) != (result & 1))
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      type metadata accessor for PrimarySettingsListModel();
      sub_1000A2E28();
      result = swift_unknownObjectRelease();
    }
  }

  *(v1 + 80) = v2;
  return result;
}

uint64_t sub_1000DEFF0(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 96);
  if (a2)
  {
    if (v5)
    {
      v6 = *(v2 + 88) == a1 && v5 == a2;
      if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        goto LABEL_12;
      }
    }
  }

  else if (!v5)
  {
    goto LABEL_12;
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    type metadata accessor for PrimarySettingsListModel();
    sub_1000A2E28();
    swift_unknownObjectRelease();
  }

LABEL_12:
  v7 = *(v2 + 96);
  *(v2 + 88) = a1;
  *(v2 + 96) = a2;
}

void sub_1000DF0DC()
{
  v1 = v0;
  swift_beginAccess();
  v2 = *(v0 + 104);
  v3 = *(v2 + 16);
  if (v3)
  {

    v4 = 32;
    do
    {
      v5 = *(v2 + v4);

      Task.cancel()();

      v4 += 8;
      --v3;
    }

    while (v3);

    v6 = *(v1 + 104);
  }

  *(v1 + 104) = _swiftEmptyArrayStorage;

  swift_beginAccess();
  v7 = *(v1 + 112);
  if ((v7 & 0xC000000000000001) != 0)
  {
    if (v7 < 0)
    {
      v8 = *(v1 + 112);
    }

    v9 = *(v1 + 112);

    __CocoaSet.makeIterator()();
    type metadata accessor for NSKeyValueObservation();
    sub_1000E094C(&qword_1001605E0, &type metadata accessor for NSKeyValueObservation);
    Set.Iterator.init(_cocoa:)();
    v7 = v28;
    v10 = v29;
    v11 = v30;
    v12 = v31;
    v13 = v32;
  }

  else
  {
    v14 = -1 << *(v7 + 32);
    v10 = v7 + 56;
    v11 = ~v14;
    v15 = -v14;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v13 = v16 & *(v7 + 56);
    v17 = *(v1 + 112);

    v12 = 0;
  }

  if (v7 < 0)
  {
    goto LABEL_20;
  }

  while (1)
  {
    v18 = v12;
    v19 = v13;
    v20 = v12;
    if (!v13)
    {
      break;
    }

LABEL_18:
    v21 = (v19 - 1) & v19;
    v22 = *(*(v7 + 48) + ((v20 << 9) | (8 * __clz(__rbit64(v19)))));
    if (!v22)
    {
LABEL_24:
      sub_1000813A0();
      v23 = *(v1 + 112);
      *(v1 + 112) = &_swiftEmptySetSingleton;

      sub_10002C5C0(*(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48));
      sub_1000122B4(v1 + 56);

      v24 = *(v1 + 96);

      v25 = *(v1 + 104);

      v26 = *(v1 + 112);

      return;
    }

    while (1)
    {
      dispatch thunk of NSKeyValueObservation.invalidate()();

      v12 = v20;
      v13 = v21;
      if ((v7 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_20:
      if (__CocoaSet.Iterator.next()())
      {
        type metadata accessor for NSKeyValueObservation();
        swift_dynamicCast();
        v22 = v27;
        v20 = v12;
        v21 = v13;
        if (v27)
        {
          continue;
        }
      }

      goto LABEL_24;
    }
  }

  while (1)
  {
    v20 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v20 >= ((v11 + 64) >> 6))
    {
      goto LABEL_24;
    }

    v19 = *(v10 + 8 * v20);
    ++v18;
    if (v19)
    {
      goto LABEL_18;
    }
  }

  __break(1u);
}

uint64_t sub_1000DF3CC()
{
  sub_1000DF0DC();

  return swift_deallocClassInstance();
}

uint64_t sub_1000DF424()
{
  v1 = v0;
  v2 = sub_10004DED0(&unk_10015D490, &qword_100112150);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v25 - v4;
  v6 = sub_1000DEEDC();
  [v6 connectToDaemon];

  v25 = *(v1 + 72);
  v7 = v25;
  swift_getKeyPath();
  swift_allocObject();
  swift_weakInit();
  v8 = v7;
  v9 = _KeyValueCodingAndObserving.observe<A>(_:options:changeHandler:)();

  swift_beginAccess();
  v10 = v9;
  sub_100068B14(&v26, v10);
  swift_endAccess();

  v25 = *(v1 + 72);
  v11 = v25;
  swift_getKeyPath();
  swift_allocObject();
  swift_weakInit();
  v12 = v11;
  v13 = _KeyValueCodingAndObserving.observe<A>(_:options:changeHandler:)();

  swift_beginAccess();
  v14 = v13;
  sub_100068B14(&v26, v14);
  swift_endAccess();

  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
  v16 = swift_allocObject();
  swift_weakInit();
  type metadata accessor for MainActor();

  v17 = static MainActor.shared.getter();
  v18 = swift_allocObject();
  v18[2] = v17;
  v18[3] = &protocol witness table for MainActor;
  v18[4] = v16;

  v19 = sub_100094AF4(0, 0, v5, &unk_100117B58, v18);
  swift_beginAccess();
  v20 = *(v1 + 104);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + 104) = v20;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v20 = sub_100015698(0, v20[2] + 1, 1, v20);
    *(v1 + 104) = v20;
  }

  v23 = v20[2];
  v22 = v20[3];
  if (v23 >= v22 >> 1)
  {
    v20 = sub_100015698((v22 > 1), v23 + 1, 1, v20);
  }

  v20[2] = v23 + 1;
  v20[v23 + 4] = v19;
  *(v1 + 104) = v20;
  swift_endAccess();
}

void sub_1000DF7DC(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 paneStatus];
  if (v3)
  {
    v4 = v3;
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a2 = v5;
  a2[1] = v7;
}

uint64_t sub_1000DF8B4()
{
  v1 = v0;
  v2 = type metadata accessor for OSSignpostID();
  v24 = *(v2 - 8);
  v25 = v2;
  v3 = *(v24 + 64);
  __chkstk_darwin(v2);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for OSSignposter();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10015AAE0 != -1)
  {
    swift_once();
  }

  v11 = sub_10000659C(v6, qword_100169718);
  (*(v7 + 16))(v10, v11, v6);
  static OSSignpostID.exclusive.getter();
  v12 = swift_slowAlloc();
  *v12 = 0;
  v13 = OSSignposter.logHandle.getter();
  v14 = static os_signpost_type_t.begin.getter();
  v15 = OSSignpostID.rawValue.getter();
  _os_signpost_emit_with_name_impl(&_mh_execute_header, v13, v14, v15, "ClassroomListItemProvider.updateClassroomListItemProviderState()", "", v12, 2u);
  v16 = sub_1000DEEDC();
  v17 = [v16 paneStatus];

  if (v17)
  {
    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;
  }

  else
  {
    v18 = 0;
    v20 = 0;
  }

  sub_1000DEF48([*(v1 + 72) settingsUIVisible]);
  sub_1000DEFF0(v18, v20);
  v21 = static os_signpost_type_t.end.getter();
  v22 = OSSignpostID.rawValue.getter();
  _os_signpost_emit_with_name_impl(&_mh_execute_header, v13, v21, v22, "ClassroomListItemProvider.updateClassroomListItemProviderState()", "", v12, 2u);

  (*(v24 + 8))(v5, v25);
  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1000DFBA4(uint64_t a1, uint64_t a2)
{
  static MainActor.shared.getter();

  swift_task_getMainExecutor();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    goto LABEL_8;
  }

  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  sub_1000E0908();
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return result;
    }

    __break(1u);
  }

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_8:
    _StringGuts.grow(_:)(66);
    v8._object = 0x80000001001258D0;
    v8._countAndFlagsBits = 0xD00000000000003FLL;
    String.append(_:)(v8);
    v9._countAndFlagsBits = _typeName(_:qualified:)();
    String.append(_:)(v9);

    v10._countAndFlagsBits = 46;
    v10._object = 0xE100000000000000;
    String.append(_:)(v10);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}