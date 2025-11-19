void *sub_100001F10(uint64_t a1, uint64_t a2)
{
  ObservationRegistrar.init()();
  v2[6] = a1;
  v2[7] = a2;

  v5 = String._bridgeToObjectiveC()();
  ActiveMicrophoneModeForBundleID = AVControlCenterMicrophoneModesModuleGetActiveMicrophoneModeForBundleID();

  v7 = 2 * (ActiveMicrophoneModeForBundleID == 1);
  if (ActiveMicrophoneModeForBundleID == 2)
  {
    v7 = 1;
  }

  v2[4] = v7;
  v8 = String._bridgeToObjectiveC()();
  v9 = AVControlCenterMicrophoneModesModuleGetActiveMicrophoneModeForBundleID();

  if (v9 == 2)
  {
    v10 = 1;
  }

  else
  {
    v10 = 2 * (v9 == 1);
  }

  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  v28 = v2;
  v2[2] = v11;
  v12 = String._bridgeToObjectiveC()();
  v13 = AVControlCenterMicrophoneModesModuleGetSupportedMicrophoneModesForBundleID();

  sub_100003FC4();
  v14 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v14 >> 62)
  {
    goto LABEL_25;
  }

  for (i = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v16 = 0;
    v17 = _swiftEmptyArrayStorage;
    while (1)
    {
      if ((v14 & 0xC000000000000001) != 0)
      {
        v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v16 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_24;
        }

        v18 = *(v14 + 8 * v16 + 32);
      }

      v19 = v18;
      v20 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      v21 = [v18 integerValue];

      if (v21 >= 3)
      {
        v22 = 0;
      }

      else
      {
        v22 = qword_100060FE0[v21];
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v17 = sub_10003447C(0, *(v17 + 2) + 1, 1, v17);
      }

      v24 = *(v17 + 2);
      v23 = *(v17 + 3);
      if (v24 >= v23 >> 1)
      {
        v17 = sub_10003447C((v23 > 1), v24 + 1, 1, v17);
      }

      *(v17 + 2) = v24 + 1;
      *&v17[8 * v24 + 32] = v22;
      ++v16;
      if (v20 == i)
      {
        goto LABEL_27;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    ;
  }

  v17 = _swiftEmptyArrayStorage;
LABEL_27:

  v28[5] = v17;
  v25 = String._bridgeToObjectiveC()();

  IsAutoEnabledForBundleID = AVControlCenterMicrophoneModesModuleIsAutoEnabledForBundleID();

  *(v28 + 24) = IsAutoEnabledForBundleID;
  sub_1000026CC();
  return v28;
}

unint64_t sub_1000021B8(unint64_t a1)
{
  v3 = *(v1 + 32);
  sub_100003B78(v3);
  v4 = sub_10002769C(v3, a1);
  sub_100003C9C(v3);
  if (v4)
  {
    v5 = *(v1 + 32);
    *(v1 + 32) = a1;

    return sub_100003C9C(v5);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath, v8);
    sub_100003D64(&qword_100083370, type metadata accessor for InputPickerMicrophoneModesManager);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    sub_100003C9C(a1);
  }
}

unint64_t sub_100002310(unint64_t a1)
{
  v3 = *(v1 + 16);
  sub_100003B78(v3);
  v4 = sub_10002769C(v3, a1);
  sub_100003C9C(v3);
  if (v4)
  {
    v5 = *(v1 + 16);
    *(v1 + 16) = a1;

    return sub_100003C9C(v5);
  }

  else
  {
    swift_getKeyPath();
    __chkstk_darwin();
    sub_100003D64(&qword_100083370, type metadata accessor for InputPickerMicrophoneModesManager);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    sub_100003C9C(a1);
  }
}

uint64_t sub_100002468(uint64_t a1)
{
  v3 = *(v1 + 40);

  v5 = sub_10003428C(v4, a1);

  if (v5)
  {
    v6 = *(v1 + 40);
    *(v1 + 40) = a1;
  }

  else
  {
    swift_getKeyPath();
    __chkstk_darwin();
    sub_100003D64(&qword_100083370, type metadata accessor for InputPickerMicrophoneModesManager);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_1000025BC(uint64_t result)
{
  if (*(v1 + 24) == (result & 1))
  {
    *(v1 + 24) = result & 1;
  }

  else
  {
    swift_getKeyPath();
    __chkstk_darwin();
    sub_100003D64(&qword_100083370, type metadata accessor for InputPickerMicrophoneModesManager);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_1000026CC()
{
  sub_100003B30(&qword_100083368, "\b:");
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_100060AF0;
  swift_getKeyPath();
  sub_100003D64(&qword_100083370, type metadata accessor for InputPickerMicrophoneModesManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2 = *(v0 + 16);
  v19 = v1;
  v20 = v0;
  *(v1 + 32) = v2;
  v3 = *(v0 + 48);
  v4 = *(v20 + 56);
  sub_100003B78(v2);
  v5 = String._bridgeToObjectiveC()();
  v6 = AVControlCenterMicrophoneModesModuleGetSupportedMicrophoneModesForBundleID();

  sub_100003FC4();
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v7 >> 62)
  {
    goto LABEL_20;
  }

  for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v9 = 0;
    v10 = _swiftEmptyArrayStorage;
    while (1)
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v9 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_19;
        }

        v11 = *(v7 + 8 * v9 + 32);
      }

      v12 = v11;
      v13 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      v14 = [v11 integerValue];

      if (v14 >= 3)
      {
        v15 = 0;
      }

      else
      {
        v15 = qword_100060FE0[v14];
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = sub_10003447C(0, *(v10 + 2) + 1, 1, v10);
      }

      v17 = *(v10 + 2);
      v16 = *(v10 + 3);
      if (v17 >= v16 >> 1)
      {
        v10 = sub_10003447C((v16 > 1), v17 + 1, 1, v10);
      }

      *(v10 + 2) = v17 + 1;
      *&v10[8 * v17 + 32] = v15;
      ++v9;
      if (v13 == i)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    ;
  }

  v10 = _swiftEmptyArrayStorage;
LABEL_22:

  sub_100003A3C(v10);
  return sub_100002468(v19);
}

unint64_t sub_10000295C()
{
  swift_getKeyPath();
  sub_100003D64(&qword_100083370, type metadata accessor for InputPickerMicrophoneModesManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 16);
  sub_100003B78(v1);
  return v1;
}

unint64_t sub_100002A08@<X0>(uint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100003D64(&qword_100083370, type metadata accessor for InputPickerMicrophoneModesManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 16);
  *a2 = v4;
  return sub_100003B78(v4);
}

unint64_t sub_100002AB4(unint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_100003B78(*a1);
  return sub_100002310(v2);
}

uint64_t sub_100002AE8()
{
  swift_getKeyPath();
  sub_100003D64(&qword_100083370, type metadata accessor for InputPickerMicrophoneModesManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 24);
}

uint64_t sub_100002B88@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100003D64(&qword_100083370, type metadata accessor for InputPickerMicrophoneModesManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 24);
  return result;
}

unint64_t sub_100002C58()
{
  swift_getKeyPath();
  sub_100003D64(&qword_100083370, type metadata accessor for InputPickerMicrophoneModesManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 32);
  sub_100003B78(v1);
  return v1;
}

uint64_t sub_100002D04()
{
  swift_getKeyPath();
  sub_100003D64(&qword_100083370, type metadata accessor for InputPickerMicrophoneModesManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 40);
}

uint64_t sub_100002DA8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100003D64(&qword_100083370, type metadata accessor for InputPickerMicrophoneModesManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 40);
}

uint64_t sub_100002E54(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_100002468(v4);
}

uint64_t sub_100002E80(unint64_t a1)
{
  v2 = v1;
  swift_getKeyPath();
  if (a1 >= 3)
  {
    sub_100003D64(&qword_100083370, type metadata accessor for InputPickerMicrophoneModesManager);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if ((*(v1 + 24) & 1) == 0)
    {
      v8 = *(v1 + 48);
      v9 = *(v1 + 56);
      v10 = String._bridgeToObjectiveC()();
      v11 = AVControlCenterMicrophoneModesModuleSetAutoEnabledForBundleID();

      if (v11 == *(v2 + 24))
      {
        *(v2 + 24) = v11;
      }

      else
      {
        KeyPath = swift_getKeyPath();
        __chkstk_darwin(KeyPath, v13);
        ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
      }
    }
  }

  else
  {
    sub_100003D64(&qword_100083370, type metadata accessor for InputPickerMicrophoneModesManager);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if (*(v1 + 24) == 1)
    {
      v4 = *(v1 + 48);
      v5 = *(v1 + 56);
      v6 = String._bridgeToObjectiveC()();
      v7 = AVControlCenterMicrophoneModesModuleSetAutoEnabledForBundleID();

      if ((v7 ^ 1) == *(v2 + 24))
      {
        *(v2 + 24) = v7 ^ 1;
      }

      else
      {
        v14 = swift_getKeyPath();
        __chkstk_darwin(v14, v15);
        ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
      }
    }

    v16 = *(v2 + 48);
    v17 = *(v2 + 56);
    v18 = String._bridgeToObjectiveC()();
    AVControlCenterMicrophoneModesModuleSetMicrophoneModeForBundleID();

    v19 = swift_allocObject();
    swift_getKeyPath();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v20 = *(v2 + 32);
    *(v19 + 16) = v20;
    sub_100003B78(v20);
    sub_100002310(v19);
  }

  return sub_1000026CC();
}

uint64_t sub_1000031B8()
{
  sub_100003C9C(v0[2]);
  sub_100003C9C(v0[4]);
  v1 = v0[5];

  v2 = v0[7];

  v3 = OBJC_IVAR____TtC19AVKitRoutingService33InputPickerMicrophoneModesManager___observationRegistrar;
  v4 = type metadata accessor for ObservationRegistrar();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v5, v6);
}

uint64_t sub_100003274(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[3];
  if (sub_10005A594(2, 26, 0, 0))
  {
    type metadata accessor for _TagTraitWritingModifier();
  }

  else
  {
    type metadata accessor for TagValueTraitKey();
    swift_getWitnessTable();
    type metadata accessor for _TraitWritingModifier();
    type metadata accessor for ModifiedContent();
    type metadata accessor for Optional();
    swift_getWitnessTable();
    type metadata accessor for TagValueTraitKey();
    swift_getWitnessTable();
    type metadata accessor for _TraitWritingModifier();
  }

  return type metadata accessor for ModifiedContent();
}

uint64_t sub_10000339C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  if (sub_10005A594(2, 26, 0, 0))
  {
    type metadata accessor for _TagTraitWritingModifier();
    type metadata accessor for ModifiedContent();
  }

  else
  {
    type metadata accessor for TagValueTraitKey();
    swift_getWitnessTable();
    type metadata accessor for _TraitWritingModifier();
    type metadata accessor for ModifiedContent();
    type metadata accessor for Optional();
    swift_getWitnessTable();
    type metadata accessor for TagValueTraitKey();
    swift_getWitnessTable();
    type metadata accessor for _TraitWritingModifier();
    type metadata accessor for ModifiedContent();
    swift_getWitnessTable();
    swift_getWitnessTable();
  }

  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_10000356C(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t sub_1000035E8(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_10000366C@<X0>(void *a1@<X8>)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = String._bridgeToObjectiveC()();

  *a1 = v2;
  return result;
}

uint64_t sub_1000036B0(uint64_t a1)
{
  v2 = sub_100003D64(&qword_100083338, type metadata accessor for AVInputContextSetInputDeviceOptionsKey);
  v3 = sub_100003D64(&qword_100083340, type metadata accessor for AVInputContextSetInputDeviceOptionsKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100003770@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = String._bridgeToObjectiveC()();

  *a2 = v5;
  return result;
}

uint64_t sub_1000037B8@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_1000037E4(uint64_t a1)
{
  v2 = sub_100003D64(&qword_100083348, type metadata accessor for Name);
  v3 = sub_100003D64(&qword_100083350, type metadata accessor for Name);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_1000038A4()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = String.hashValue.getter();

  return v2;
}

uint64_t sub_1000038E4()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int sub_10000393C()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return v2;
}

uint64_t sub_1000039B4(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_100003A3C(uint64_t result)
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

  result = sub_10003447C(result, v11, 1, v3);
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

uint64_t sub_100003B30(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_100003B78(unint64_t result)
{
  if (result >= 3)
  {
  }

  return result;
}

uint64_t type metadata accessor for InputPickerMicrophoneModesManager()
{
  result = qword_100083248;
  if (!qword_100083248)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100003BDC()
{
  result = type metadata accessor for ObservationRegistrar();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_100003C9C(unint64_t result)
{
  if (result >= 3)
  {
  }

  return result;
}

uint64_t sub_100003D64(unint64_t *a1, void (*a2)(uint64_t))
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

__n128 sub_100003ECC(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_100003EDC(uint64_t a1, int a2)
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

uint64_t sub_100003EFC(uint64_t result, int a2, int a3)
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

void sub_100003F38(uint64_t a1, unint64_t *a2)
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

uint64_t sub_100003F84()
{
  if (*(v0 + 16) >= 3uLL)
  {
  }

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_100003FC4()
{
  result = qword_100083360;
  if (!qword_100083360)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100083360);
  }

  return result;
}

uint64_t sub_100004010()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 40);
  *(v1 + 40) = *(v0 + 24);
}

unint64_t sub_10000404C()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(v2 + 16);
  *(v2 + 16) = v1;
  sub_100003B78(v1);
  return sub_100003C9C(v3);
}

unint64_t sub_1000040A0()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(v2 + 32);
  *(v2 + 32) = v1;
  sub_100003B78(v1);
  return sub_100003C9C(v3);
}

uint64_t sub_10000411C()
{
  v2 = [*v0 inputDevice];
  v3 = *(v1 + 8);

  return v3(v2);
}

uint64_t sub_10000418C(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  if (a2)
  {
    v5 = String._bridgeToObjectiveC()();
  }

  else
  {
    v5 = 0;
  }

  v6 = [v4 userPreferredInputDevice:v5];

  v7 = *(v3 + 8);

  return v7(v6);
}

uint64_t sub_100004224(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1000042E0;

  return sub_100004680(a1, a2);
}

uint64_t sub_1000042E0(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_1000043DC(uint64_t a1, void *a2)
{
  sub_100004BCC((a1 + 32), *(a1 + 56));
  v3 = a2;
  sub_100003B30(&qword_100083378, &qword_100061060);
  return CheckedContinuation.resume(returning:)();
}

uint64_t sub_10000443C(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  sub_1000044B8(a1, a2);
  v5 = *(v3 + 8);

  return v5();
}

id sub_1000044B8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = String._bridgeToObjectiveC()();
  }

  else
  {
    v3 = 0;
  }

  v7 = 0;
  v4 = [v2 clearUserPreferredInputDevice:v3 error:&v7];

  if (v4)
  {
    return v7;
  }

  v6 = v7;
  _convertNSErrorToError(_:)();

  return swift_willThrow();
}

id sub_1000045A4()
{
  v3 = 0;
  if ([v0 setInputGain:&v3 error:?])
  {
    return v3;
  }

  v2 = v3;
  _convertNSErrorToError(_:)();

  return swift_willThrow();
}

uint64_t sub_100004680(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003B30(&qword_100083378, &qword_100061060);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64) + 15;
  v7 = swift_task_alloc();
  *(v2 + 152) = v7;
  if (a2)
  {
    type metadata accessor for AVInputContextSetInputDeviceOptionsKey(0);
    sub_100004B74();
    v8.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v8.super.isa = 0;
  }

  *(v2 + 160) = v8;
  *(v2 + 16) = v2;
  *(v2 + 56) = v2 + 144;
  *(v2 + 24) = sub_1000048D4;
  swift_continuation_init();
  *(v2 + 136) = v4;
  v9 = sub_100004A04((v2 + 112));
  sub_100004A68();
  CheckedContinuation.init(continuation:function:)();
  (*(v5 + 32))(v9, v7, v4);
  *(v2 + 80) = _NSConcreteStackBlock;
  *(v2 + 88) = 1107296256;
  *(v2 + 96) = sub_1000043DC;
  *(v2 + 104) = &unk_100079BC8;
  [v11 setInputDevice:a1 options:v8.super.isa completionHandler:v2 + 80];
  (*(v5 + 8))(v9, v4);

  return _swift_continuation_await(v2 + 16);
}

uint64_t sub_1000048D4()
{
  v1 = *(*v0 + 152);
  v5 = *v0;
  v2 = *(*v0 + 144);

  v3 = *(v5 + 8);

  return v3(v2);
}

uint64_t *sub_100004A04(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

unint64_t sub_100004A68()
{
  result = qword_100083380;
  if (!qword_100083380)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100083380);
  }

  return result;
}

uint64_t sub_100004AC4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100004B28(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

unint64_t sub_100004B74()
{
  result = qword_100083338;
  if (!qword_100083338)
  {
    type metadata accessor for AVInputContextSetInputDeviceOptionsKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100083338);
  }

  return result;
}

void *sub_100004BCC(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_100004C10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v77 = a3;
  v78 = a2;
  type metadata accessor for MainActor();
  v82 = static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = String._bridgeToObjectiveC()();
  v7 = objc_opt_self();
  v8 = [v7 bundleWithIdentifier:v6];

  v81 = Image.init(_:bundle:)();
  v80 = static Font.title3.getter();
  KeyPath = swift_getKeyPath();
  swift_getKeyPath();
  *&v87 = a1;
  sub_10000816C(&qword_100083460, type metadata accessor for MeterController);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v9 = OBJC_IVAR____TtC19AVKitRoutingService15MeterController__micVal;
  v10 = (*(a1 + OBJC_IVAR____TtC19AVKitRoutingService15MeterController__micVal) + -0.1) / 0.7;
  if (v10 < 1.0 && (v10 < 0.0 || v10 <= 0.25))
  {
    v12 = String._bridgeToObjectiveC()();
    v13 = [v7 bundleWithIdentifier:v12];

    Image.init(_:bundle:)();
    v14 = (*(*(sub_100003B30(&qword_100083510, &qword_100061460) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
    __chkstk_darwin();
    v16 = &v77 - v15;
    static SymbolRenderingMode.palette.getter();
    v17 = type metadata accessor for SymbolRenderingMode();
    (*(*(v17 - 8) + 56))(v16, 0, 1, v17);
    v18 = Image.symbolRenderingMode(_:)();

    sub_100008B68(v16, &qword_100083510, &qword_100061460);
    v19 = v78;

    v20 = v77;

    v21 = static Font.title3.getter();
    v22 = swift_getKeyPath();
    *&v83 = v18;
    *(&v83 + 1) = v19;
    *&v84 = v20;
    *(&v84 + 1) = v22;
    v85 = v21;
    LOBYTE(v86) = 0;
LABEL_20:

    sub_100003B30(&qword_100083518, &qword_100061468);
    sub_100008BC8();
    _ConditionalContent<>.init(storage:)();
    v83 = v87;
    v84 = v88;
    v85 = v89;
    v86 = v90;
    sub_100003B30(&qword_100083558, &qword_100061488);
    sub_100008D08();
    _ConditionalContent<>.init(storage:)();

    goto LABEL_41;
  }

  swift_getKeyPath();
  *&v87 = a1;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v23 = (*(a1 + v9) + -0.1) / 0.7;
  if (v23 >= 1.0 || (v23 >= 0.0 ? (v24 = v23 <= 0.25) : (v24 = 1), !v24))
  {
    swift_getKeyPath();
    *&v87 = a1;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v25 = (*(a1 + v9) + -0.1) / 0.7;
    if (v25 < 1.0 && (v25 < 0.0 || v25 <= 0.5))
    {
      v27 = String._bridgeToObjectiveC()();
      v28 = [v7 bundleWithIdentifier:v27];

      Image.init(_:bundle:)();
      v29 = (*(*(sub_100003B30(&qword_100083510, &qword_100061460) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
      __chkstk_darwin();
      v31 = &v77 - v30;
      static SymbolRenderingMode.palette.getter();
      v32 = type metadata accessor for SymbolRenderingMode();
      (*(*(v32 - 8) + 56))(v31, 0, 1, v32);
      v33 = Image.symbolRenderingMode(_:)();

      sub_100008B68(v31, &qword_100083510, &qword_100061460);
      v34 = v78;

      v35 = v77;

      v36 = static Font.title3.getter();
      v37 = swift_getKeyPath();
      *&v83 = v33;
      *(&v83 + 1) = v34;
      *&v84 = v35;
      *(&v84 + 1) = v37;
      v85 = v36;
      LOBYTE(v86) = 1;
      goto LABEL_20;
    }
  }

  swift_getKeyPath();
  *&v87 = a1;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v38 = (*(a1 + v9) + -0.1) / 0.7;
  if (v38 < 1.0 && (v38 >= 0.0 ? (v39 = v38 <= 0.5) : (v39 = 1), v39) || (swift_getKeyPath(), *&v87 = a1, ObservationRegistrar.access<A, B>(_:keyPath:)(), , v40 = (*(a1 + v9) + -0.1) / 0.7, v40 >= 1.0) || (v40 >= 0.0 ? (v41 = v40 > 0.75) : (v41 = 0), v41))
  {
    swift_getKeyPath();
    *&v87 = a1;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v53 = (*(a1 + v9) + -0.1) / 0.7;
    if (v53 < 1.0 && (v53 < 0.0 || v53 <= 0.75))
    {
      v55 = 0;
      v56 = 0;
      v57 = 0;
      v58 = 0;
      v59 = 0;
      v60 = -256;
      goto LABEL_45;
    }

    v61 = String._bridgeToObjectiveC()();
    v62 = [v7 bundleWithIdentifier:v61];

    Image.init(_:bundle:)();
    v63 = (*(*(sub_100003B30(&qword_100083510, &qword_100061460) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
    __chkstk_darwin();
    v65 = &v77 - v64;
    static SymbolRenderingMode.palette.getter();
    v66 = type metadata accessor for SymbolRenderingMode();
    (*(*(v66 - 8) + 56))(v65, 0, 1, v66);
    v67 = Image.symbolRenderingMode(_:)();

    sub_100008B68(v65, &qword_100083510, &qword_100061460);
    v68 = v78;

    v69 = v77;

    v70 = static Font.title3.getter();
    v71 = swift_getKeyPath();
    *&v83 = v67;
    *(&v83 + 1) = v68;
    *&v84 = v69;
    *(&v84 + 1) = v71;
    v85 = v70;
    LOBYTE(v86) = 1;
  }

  else
  {
    v42 = String._bridgeToObjectiveC()();
    v43 = [v7 bundleWithIdentifier:v42];

    Image.init(_:bundle:)();
    v44 = (*(*(sub_100003B30(&qword_100083510, &qword_100061460) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
    __chkstk_darwin();
    v46 = &v77 - v45;
    static SymbolRenderingMode.palette.getter();
    v47 = type metadata accessor for SymbolRenderingMode();
    (*(*(v47 - 8) + 56))(v46, 0, 1, v47);
    v48 = Image.symbolRenderingMode(_:)();

    sub_100008B68(v46, &qword_100083510, &qword_100061460);
    v49 = v78;

    v50 = v77;

    v51 = static Font.title3.getter();
    v52 = swift_getKeyPath();
    *&v83 = v48;
    *(&v83 + 1) = v49;
    *&v84 = v50;
    *(&v84 + 1) = v52;
    v85 = v51;
    LOBYTE(v86) = 0;
  }

  sub_100003B30(&qword_100083518, &qword_100061468);
  sub_100008BC8();
  _ConditionalContent<>.init(storage:)();
  v83 = v87;
  v84 = v88;
  v85 = v89;
  LOBYTE(v86) = v90;
  HIBYTE(v86) = 1;
  sub_100003B30(&qword_100083558, &qword_100061488);
  sub_100008D08();
  _ConditionalContent<>.init(storage:)();

LABEL_41:

  v56 = *(&v87 + 1);
  v55 = v87;
  v58 = *(&v88 + 1);
  v57 = v88;
  v59 = v89;
  if (v91)
  {
    v72 = 256;
  }

  else
  {
    v72 = 0;
  }

  v60 = v72 | v90;
  sub_100008D80();
LABEL_45:
  v73 = v81;

  v74 = KeyPath;

  v75 = v80;

  sub_100008DF0(v55, v56, v57, v58, v59, v60);
  sub_100008E08(v55, v56, v57, v58, v59, v60);
  *a4 = v73;
  *(a4 + 8) = v74;
  *(a4 + 16) = v75;
  *(a4 + 24) = 0x3FD3333333333333;
  *(a4 + 32) = v55;
  *(a4 + 40) = v56;
  *(a4 + 48) = v57;
  *(a4 + 56) = v58;
  *(a4 + 64) = v59;
  *(a4 + 72) = v60;
  sub_100008E08(v55, v56, v57, v58, v59, v60);
}

__n128 sub_100005884@<Q0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = static Alignment.center.getter();
  v8 = v7;
  sub_100004C10(v3, v4, v5, &v12);
  v18 = v14;
  v19[0] = v15[0];
  *(v19 + 10) = *(v15 + 10);
  v16 = v12;
  v17 = v13;
  v20[2] = v14;
  v21[0] = v15[0];
  *(v21 + 10) = *(v15 + 10);
  v20[0] = v12;
  v20[1] = v13;
  sub_100008AF8(&v16, &v11, &qword_100083508, &qword_100061428);
  sub_100008B68(v20, &qword_100083508, &qword_100061428);
  *a1 = v6;
  *(a1 + 8) = v8;
  v9 = v19[0];
  *(a1 + 48) = v18;
  *(a1 + 64) = v9;
  *(a1 + 74) = *(v19 + 10);
  result = v17;
  *(a1 + 16) = v16;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_100005964(uint64_t a1)
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  result = swift_task_isCurrentExecutor();
  if ((result & 1) == 0)
  {
    result = swift_task_reportUnexpectedExecutor();
  }

  v3 = *(a1 + 40);
  if (v3 < 0)
  {
    __break(1u);
  }

  else
  {
    v9 = 0;
    v10 = v3;
    swift_getKeyPath();
    v4 = *a1;
    v11 = *(a1 + 32);
    v5 = swift_allocObject();
    v6 = *(a1 + 16);
    v5[1] = *a1;
    v5[2] = v6;
    v5[3] = *(a1 + 32);
    v7 = v4;
    sub_100008528(&v11, v8);
    sub_100003B30(&qword_100083498, &qword_1000612D8);
    sub_100003B30(&qword_1000834A0, &qword_1000612E0);
    sub_100008584();
    sub_100009034(&qword_1000834B8, &qword_1000834A0, &qword_1000612E0);
    ForEach<>.init(_:id:content:)();
  }

  return result;
}

uint64_t sub_100005B10@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = a2[5];
  v7 = sub_100008768(v5, *a2, v6);
  v8 = a2[4];
  v11 = a2 + 1;
  v9 = a2[1];
  v10 = v11[1];
  static Alignment.center.getter();
  result = _FrameLayout.init(width:height:alignment:)();
  if (__OFSUB__(v6, 1))
  {
    __break(1u);
  }

  else
  {
    v13 = v29;
    v26 = v29;
    v27 = v30;
    v14 = v31;
    v28 = v31;
    v17 = xmmword_100061080;
    v18 = xmmword_100061090;
    LOBYTE(v19) = v7 & 1;
    *(&v19 + 1) = v8;
    v20 = v29;
    v21 = v30;
    v16[103] = v5 >= v6 - 1;
    *(a3 + 64) = v30;
    *(a3 + 80) = v14;
    *(a3 + 32) = v19;
    *(a3 + 48) = v13;
    v15 = v18;
    *a3 = v17;
    *(a3 + 16) = v15;
    *(a3 + 96) = 0;
    *(a3 + 104) = 0;
    *(a3 + 105) = v5 >= v6 - 1;
    v22 = v14;
    v23[0] = xmmword_100061080;
    v23[1] = xmmword_100061090;
    v24 = v7 & 1;
    v25 = v8;

    sub_100008AF8(&v17, v16, &qword_1000834C0, &qword_1000612E8);
    sub_100008B68(v23, &qword_1000834C0, &qword_1000612E8);
  }

  return result;
}

uint64_t sub_100005D0C@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[1];
  v6[0] = *v1;
  v6[1] = v3;
  v6[2] = v1[2];
  *a1 = static VerticalAlignment.center.getter();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v4 = a1 + *(sub_100003B30(&qword_100083490, &unk_1000612B0) + 44);
  return sub_100005964(v6);
}

uint64_t sub_100005D74@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1 + 2;
  v6 = v1 + 3;
  v7 = *(v1 + 32);
  v8 = v1[5];
  if (v7)
  {
    v5 = v6;
  }

  v9 = *v5;
  v10 = (sub_100003B30(&qword_1000834F8, &qword_100061418) - 8);
  v11 = (*(*v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v13 = &v22 - v12;
  v14 = (sub_100003B30(&qword_100083500, &qword_100061420) - 8);
  v15 = (*(*v14 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v17 = &v22 - v16;
  v18 = *(type metadata accessor for RoundedRectangle() + 20);
  v19 = enum case for RoundedCornerStyle.continuous(_:);
  v20 = type metadata accessor for RoundedCornerStyle();
  (*(*(v20 - 8) + 104))(&v17[v18], v19, v20);
  *v17 = v3;
  *(v17 + 1) = v4;
  *&v17[v14[11]] = v8;
  sub_100008A90(v17, v13, &qword_100083500, &qword_100061420);
  *&v13[v10[11]] = v9;
  sub_100008A90(v13, a1, &qword_1000834F8, &qword_100061418);
}

uint64_t sub_100005F30()
{
  swift_getKeyPath();
  sub_10000816C(&qword_100083460, type metadata accessor for MeterController);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + OBJC_IVAR____TtC19AVKitRoutingService15MeterController__audioSession);
}

uint64_t sub_100005FDC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10000816C(&qword_100083460, type metadata accessor for MeterController);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + OBJC_IVAR____TtC19AVKitRoutingService15MeterController__audioSession);
}

uint64_t sub_100006090(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_10000816C(&qword_100083460, type metadata accessor for MeterController);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

float sub_1000061AC(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_10000816C(&qword_100083460, type metadata accessor for MeterController);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v2 + *a2);
}

float sub_10000624C@<S0>(uint64_t *a1@<X0>, void *a2@<X4>, float *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_10000816C(&qword_100083460, type metadata accessor for MeterController);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = *(v5 + *a2);
  *a3 = result;
  return result;
}

void *sub_100006328(void *result, float a2)
{
  if (*(v2 + *result) == a2)
  {
    *(v2 + *result) = a2;
  }

  else
  {
    swift_getKeyPath();
    __chkstk_darwin();
    sub_10000816C(&qword_100083460, type metadata accessor for MeterController);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

void *sub_100006434()
{
  swift_getKeyPath();
  sub_10000816C(&qword_100083460, type metadata accessor for MeterController);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + OBJC_IVAR____TtC19AVKitRoutingService15MeterController__receiver);
  v2 = v1;
  return v1;
}

id sub_1000064E4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10000816C(&qword_100083460, type metadata accessor for MeterController);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + OBJC_IVAR____TtC19AVKitRoutingService15MeterController__receiver);
  *a2 = v4;

  return v4;
}

void sub_1000065A4(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC19AVKitRoutingService15MeterController__receiver;
  v5 = *(v1 + OBJC_IVAR____TtC19AVKitRoutingService15MeterController__receiver);
  if (!v5)
  {
    if (!a1)
    {
      v9 = 0;
      goto LABEL_8;
    }

LABEL_6:
    swift_getKeyPath();
    __chkstk_darwin();
    sub_10000816C(&qword_100083460, type metadata accessor for MeterController);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_100008398(0, &qword_100083488, ADAMAudioDataReceiver_ptr);
  v6 = v5;
  v7 = a1;
  v8 = static NSObject.== infix(_:_:)();

  if ((v8 & 1) == 0)
  {
    goto LABEL_6;
  }

  v9 = *(v2 + v4);
LABEL_8:
  *(v2 + v4) = a1;
}

char *sub_10000673C()
{
  *&v0[OBJC_IVAR____TtC19AVKitRoutingService15MeterController__audioSession] = 0;
  *&v0[OBJC_IVAR____TtC19AVKitRoutingService15MeterController_minValue] = -1038090240;
  *&v0[OBJC_IVAR____TtC19AVKitRoutingService15MeterController_maxValue] = 0;
  *&v0[OBJC_IVAR____TtC19AVKitRoutingService15MeterController__micVal] = 0;
  *&v0[OBJC_IVAR____TtC19AVKitRoutingService15MeterController__peakVal] = 0;
  *&v0[OBJC_IVAR____TtC19AVKitRoutingService15MeterController__receiver] = 0;
  ObservationRegistrar.init()();
  v9.receiver = v0;
  v9.super_class = type metadata accessor for MeterController();
  v1 = objc_msgSendSuper2(&v9, "init");
  v2 = objc_allocWithZone(ADAMAudioDataReceiver);
  v3 = String._bridgeToObjectiveC()();
  v4 = [v2 initWithIdentifier:v3];

  sub_1000065A4(v4);
  swift_getKeyPath();
  sub_10000816C(&qword_100083460, type metadata accessor for MeterController);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v5 = OBJC_IVAR____TtC19AVKitRoutingService15MeterController__receiver;
  v6 = *&v1[OBJC_IVAR____TtC19AVKitRoutingService15MeterController__receiver];
  if (v6)
  {
    [v6 setDelegate:v1];
  }

  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v7 = *&v1[v5];
  if (v7)
  {
    [v7 stopReceivingAudioSampleType:1835623276];
  }

  return v1;
}

id sub_100006940()
{
  sub_100007218();
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MeterController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for MeterController()
{
  result = qword_100083450;
  if (!qword_100083450)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100006AA8()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v29 = *(v2 - 8);
  v3 = *(v29 + 64);
  __chkstk_darwin(v2, v4);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v27 = *(v7 - 8);
  v28 = v7;
  v8 = *(v27 + 64);
  __chkstk_darwin(v7, v9);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS.QoSClass();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12, v15);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1000831F0 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  sub_1000080BC(v18, qword_100086758);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&_mh_execute_header, v19, v20, "MeterController starting.", v21, 2u);
  }

  swift_getKeyPath();
  aBlock[0] = v1;
  sub_10000816C(&qword_100083460, type metadata accessor for MeterController);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v22 = *(v1 + OBJC_IVAR____TtC19AVKitRoutingService15MeterController__receiver);
  if (v22)
  {
    [v22 startReceivingAudioSampleType:1835623276];
  }

  sub_100008398(0, &qword_100083468, OS_dispatch_queue_ptr);
  (*(v13 + 104))(v17, enum case for DispatchQoS.QoSClass.userInitiated(_:), v12);
  v23 = static OS_dispatch_queue.global(qos:)();
  (*(v13 + 8))(v17, v12);
  v24 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_1000082CC;
  aBlock[5] = v24;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10004FCF4;
  aBlock[3] = &unk_100079C68;
  v25 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v30 = _swiftEmptyArrayStorage;
  sub_10000816C(&qword_100083470, &type metadata accessor for DispatchWorkItemFlags);
  sub_100003B30(&qword_100083478, &qword_100061168);
  sub_1000081B4();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v25);

  (*(v29 + 8))(v6, v2);
  (*(v27 + 8))(v11, v28);
}

void sub_100006F84()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    swift_getKeyPath();
    aBlock[0] = v1;
    sub_10000816C(&qword_100083460, type metadata accessor for MeterController);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v2 = OBJC_IVAR____TtC19AVKitRoutingService15MeterController__audioSession;
    if (!*&v1[OBJC_IVAR____TtC19AVKitRoutingService15MeterController__audioSession])
    {
      type metadata accessor for MeteringSession();
      swift_allocObject();
      sub_10004FEF4();
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath, v4);
      aBlock[0] = v1;
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }

    swift_getKeyPath();
    aBlock[0] = v1;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v5 = *&v1[v2];
    if (v5)
    {
      v6 = *(v5 + 64);
      v7 = swift_allocObject();
      swift_weakInit();
      aBlock[4] = sub_100008350;
      aBlock[5] = v7;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10004FCF4;
      aBlock[3] = &unk_100079CB8;
      v8 = _Block_copy(aBlock);

      [v6 addOperationWithBlock:v8];
      _Block_release(v8);
    }
  }
}

uint64_t sub_100007218()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v33 = *(v2 - 8);
  v34 = v2;
  v3 = *(v33 + 64);
  __chkstk_darwin();
  v31 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for DispatchQoS();
  v30 = *(v32 - 8);
  v5 = *(v30 + 64);
  __chkstk_darwin();
  v29 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for DispatchQoS.QoSClass();
  v7 = *(v28 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin();
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1000831F0 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_1000080BC(v11, qword_100086758);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "MeterController stopping.", v14, 2u);
  }

  swift_getKeyPath();
  v15 = OBJC_IVAR____TtC19AVKitRoutingService15MeterController___observationRegistrar;
  aBlock[0] = v1;
  sub_10000816C(&qword_100083460, type metadata accessor for MeterController);
  v27 = v15;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v16 = *(v1 + OBJC_IVAR____TtC19AVKitRoutingService15MeterController__audioSession);
  swift_getKeyPath();
  __chkstk_darwin();
  *(&v27 - 2) = v1;
  *(&v27 - 1) = 0;
  aBlock[0] = v1;

  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  sub_100008398(0, &qword_100083468, OS_dispatch_queue_ptr);
  v17 = v28;
  (*(v7 + 104))(v10, enum case for DispatchQoS.QoSClass.userInitiated(_:), v28);
  v18 = static OS_dispatch_queue.global(qos:)();
  (*(v7 + 8))(v10, v17);
  v19 = swift_allocObject();
  *(v19 + 16) = v16;
  aBlock[4] = sub_10000814C;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10004FCF4;
  aBlock[3] = &unk_100079C18;
  v20 = _Block_copy(aBlock);

  v21 = v29;
  static DispatchQoS.unspecified.getter();
  v35 = &_swiftEmptyArrayStorage;
  sub_10000816C(&qword_100083470, &type metadata accessor for DispatchWorkItemFlags);
  sub_100003B30(&qword_100083478, &qword_100061168);
  sub_1000081B4();
  v22 = v31;
  v23 = v34;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v20);

  (*(v33 + 8))(v22, v23);
  (*(v30 + 8))(v21, v32);

  swift_getKeyPath();
  aBlock[0] = v1;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v24 = *(v1 + OBJC_IVAR____TtC19AVKitRoutingService15MeterController__receiver);
  if (v24)
  {
    v25 = v24;
    [v25 stopReceivingAudioSampleType:1835623276];
  }
}

void sub_1000077E4(uint64_t a1)
{
  if (a1)
  {

    sub_100052890();
    sub_1000518F0();
    if (qword_1000831F0 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_1000080BC(v1, qword_100086758);
    oslog = Logger.logObject.getter();
    v2 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v2))
    {
      v3 = swift_slowAlloc();
      *v3 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v2, "Audio session cleanup completed", v3, 2u);
    }
  }
}

void sub_1000078F8(void *a1)
{
  v2 = v1;
  v4 = [a1 data];
  v5 = [a1 metadata];
  v6 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  AnyHashable.init<A>(_:)();
  if (*(v6 + 16) && (v7 = sub_1000577BC(v12), (v8 & 1) != 0))
  {
    sub_100004AC4(*(v6 + 56) + 32 * v7, v13);
    sub_100007F98(v12);

    if (swift_dynamicCast())
    {
      [v4 floatValue];
      v10 = (v9 + 40.0) / 40.0;
      v11 = OBJC_IVAR____TtC19AVKitRoutingService15MeterController__peakVal;
      if (*(v2 + OBJC_IVAR____TtC19AVKitRoutingService15MeterController__peakVal) == v10)
      {

        *(v2 + v11) = v10;
      }

      else
      {
        swift_getKeyPath();
        __chkstk_darwin();
        v12[0] = v2;
        sub_10000816C(&qword_100083460, type metadata accessor for MeterController);
        ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
      }
    }

    else
    {
    }
  }

  else
  {

    sub_100007F98(v12);
  }
}

uint64_t sub_100007C6C()
{
  result = type metadata accessor for ObservationRegistrar();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_100007D1C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = static Color.white.getter();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  *&v11[6] = *&v17[11];
  *&v11[22] = *&v17[19];
  *&v11[38] = v18;
  v5 = a1;
  v6 = static Color.green.getter();
  v7 = static Color.black.getter();
  *v12 = v4;
  *&v12[8] = 256;
  *&v12[10] = *v11;
  *&v12[26] = *&v11[16];
  *&v12[42] = *&v11[32];
  *&v12[56] = *(&v18 + 1);
  v8 = *&v12[16];
  *a2 = *v12;
  *(a2 + 16) = v8;
  v9 = *&v12[48];
  *(a2 + 32) = *&v12[32];
  *(a2 + 48) = v9;
  *(a2 + 64) = v5;
  *(a2 + 72) = v6;
  *(a2 + 80) = v7;
  sub_100008AF8(v12, &v13, &qword_1000834D0, &qword_1000612F8);
  v13 = v4;
  v14 = 256;
  v15 = *v11;
  v16 = *&v11[16];
  *v17 = *&v11[32];
  *&v17[7] = *&v11[46];
  sub_100008B68(&v13, &qword_1000834D0, &qword_1000612F8);
}

double sub_100007EB4@<D0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = static Alignment.center.getter();
  v6 = v5;
  sub_100007D1C(v3, &v11);
  v19 = v13;
  v20 = v14;
  v21 = v15;
  v22 = v16;
  v17 = v11;
  v18 = v12;
  v24 = v16;
  v23[2] = v13;
  v23[3] = v14;
  v23[4] = v15;
  v23[0] = v11;
  v23[1] = v12;
  sub_100008AF8(&v17, &v10, &qword_1000834C8, &qword_1000612F0);
  sub_100008B68(v23, &qword_1000834C8, &qword_1000612F0);
  *a1 = v4;
  *(a1 + 8) = v6;
  v7 = v20;
  *(a1 + 48) = v19;
  *(a1 + 64) = v7;
  *(a1 + 80) = v21;
  *(a1 + 96) = v22;
  result = *&v17;
  v9 = v18;
  *(a1 + 16) = v17;
  *(a1 + 32) = v9;
  return result;
}

float sub_10000803C()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + OBJC_IVAR____TtC19AVKitRoutingService15MeterController__peakVal) = result;
  return result;
}

float sub_1000080A4()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + OBJC_IVAR____TtC19AVKitRoutingService15MeterController__micVal) = result;
  return result;
}

uint64_t sub_1000080BC(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_100008114()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100008154(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000816C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1000081B4()
{
  result = qword_100083480;
  if (!qword_100083480)
  {
    sub_100008218(&qword_100083478, &qword_100061168);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100083480);
  }

  return result;
}

uint64_t sub_100008218(uint64_t *a1, uint64_t *a2)
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

void sub_100008264(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_1000065A4(v2);
}

uint64_t sub_100008294()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000082D4()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + OBJC_IVAR____TtC19AVKitRoutingService15MeterController__audioSession);
  *(v1 + OBJC_IVAR____TtC19AVKitRoutingService15MeterController__audioSession) = *(v0 + 24);
}

uint64_t sub_100008318()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

void sub_100008358()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC19AVKitRoutingService15MeterController__receiver);
  *(v1 + OBJC_IVAR____TtC19AVKitRoutingService15MeterController__receiver) = v2;
  v4 = v2;
}

uint64_t sub_100008398(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

__n128 sub_1000083E0(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_1000083F4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_10000843C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000084E0()
{
  v1 = *(v0 + 48);

  return _swift_deallocObject(v0, 64, 7);
}

unint64_t sub_100008584()
{
  result = qword_1000834A8;
  if (!qword_1000834A8)
  {
    sub_100008218(&qword_100083498, &qword_1000612D8);
    sub_100008610();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000834A8);
  }

  return result;
}

unint64_t sub_100008610()
{
  result = qword_1000834B0;
  if (!qword_1000834B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000834B0);
  }

  return result;
}

uint64_t sub_100008664(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_10000816C(&qword_100083460, type metadata accessor for MeterController);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v5 = *(a1 + OBJC_IVAR____TtC19AVKitRoutingService15MeterController__micVal) * a2;
  if (COERCE_INT(fabs(v5)) > 2139095039)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v5 <= -9.2234e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v5 < 9.2234e18)
  {
    return 0;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_100008768(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (sub_100008664(a2, a3) <= a1 && v6 > a1)
  {
    return 1;
  }

  swift_getKeyPath();
  sub_10000816C(&qword_100083460, type metadata accessor for MeterController);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v8 = *(a2 + OBJC_IVAR____TtC19AVKitRoutingService15MeterController__peakVal) * a3;
  if (COERCE_INT(fabs(v8)) > 2139095039)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (v8 <= -9.2234e18)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v8 >= 9.2234e18)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  return v8 == a1;
}

uint64_t sub_100008898(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_1000088E0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_10000893C(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_100008950(uint64_t *a1, int a2)
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

uint64_t sub_100008998(uint64_t result, int a2, int a3)
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

uint64_t sub_100008A90(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100003B30(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_100008AF8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100003B30(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_100008B68(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100003B30(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_100008BC8()
{
  result = qword_100083520;
  if (!qword_100083520)
  {
    sub_100008218(&qword_100083518, &qword_100061468);
    sub_100008C68();
    sub_100009034(&qword_100083548, &qword_100083550, &qword_100061480);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100083520);
  }

  return result;
}

unint64_t sub_100008C68()
{
  result = qword_100083528;
  if (!qword_100083528)
  {
    sub_100008218(&qword_100083530, &qword_100061470);
    sub_100009034(&qword_100083538, &qword_100083540, &qword_100061478);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100083528);
  }

  return result;
}

unint64_t sub_100008D08()
{
  result = qword_100083560;
  if (!qword_100083560)
  {
    sub_100008218(&qword_100083558, &qword_100061488);
    sub_100008BC8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100083560);
  }

  return result;
}

uint64_t sub_100008D88()
{
}

uint64_t sub_100008DF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __int16 a6)
{
  if (HIBYTE(a6) != 255)
  {
    return sub_100008D80();
  }

  return result;
}

uint64_t sub_100008E08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __int16 a6)
{
  if (HIBYTE(a6) != 255)
  {
    return sub_100008E20();
  }

  return result;
}

uint64_t sub_100008E28()
{
}

unint64_t sub_100008E90()
{
  result = qword_100083568;
  if (!qword_100083568)
  {
    sub_100008218(&qword_1000834F8, &qword_100061418);
    sub_100008F10();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100083568);
  }

  return result;
}

unint64_t sub_100008F10()
{
  result = qword_100083570;
  if (!qword_100083570)
  {
    sub_100008218(&qword_100083500, &qword_100061420);
    sub_100008FB0();
    sub_100009034(&qword_100083580, &qword_100083588, &qword_100061490);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100083570);
  }

  return result;
}

unint64_t sub_100008FB0()
{
  result = qword_100083578;
  if (!qword_100083578)
  {
    type metadata accessor for RoundedRectangle();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100083578);
  }

  return result;
}

uint64_t sub_100009034(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100008218(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000090F0(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 24) = a1;
  *(v2 + 32) = v3;
  return _swift_task_switch(sub_100009114, 0, 0);
}

uint64_t sub_100009114()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = sub_1000092F4();
  *(v2 + 24) = v3;
  *(v2 + 32) = &off_100079B88;
  v4 = *(v1 + 16);
  v5 = async function pointer to Task<>.value.getter[1];
  v6 = swift_task_alloc();
  v0[5] = v6;
  *v6 = v0;
  v6[1] = sub_1000091DC;

  return Task<>.value.getter(v0 + 2, v4, v3);
}

uint64_t sub_1000091DC()
{
  v1 = *(*v0 + 40);
  v3 = *v0;

  return _swift_task_switch(sub_1000092D8, 0, 0);
}

unint64_t sub_1000092F4()
{
  result = qword_100083600;
  if (!qword_100083600)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100083600);
  }

  return result;
}

uint64_t sub_100009340(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a1;
  *(v4 + 48) = a4;
  return _swift_task_switch(sub_100009360, 0, 0);
}

uint64_t sub_100009360()
{
  v1 = *(v0 + 48);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 56) = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    *(v0 + 64) = v3;
    *v3 = v0;
    v3[1] = sub_100009454;

    return sub_100009594();
  }

  else
  {
    **(v0 + 40) = 1;
    v5 = *(v0 + 8);

    return v5();
  }
}

uint64_t sub_100009454()
{
  v1 = *(*v0 + 64);
  v2 = *(*v0 + 56);
  v4 = *v0;

  return _swift_task_switch(sub_10000956C, 0, 0);
}

uint64_t sub_1000095B4()
{
  sub_100004BCC((*(v0 + 56) + 144), *(*(v0 + 56) + 168));
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *v1 = v0;
  v1[1] = sub_1000096EC;

  return (sub_1000090F0)(v0 + 16, &type metadata for MXAVInputContextFactory, &off_100079F00);
}

uint64_t sub_1000096EC()
{
  v1 = *(*v0 + 64);
  v3 = *v0;

  return _swift_task_switch(sub_1000097E8, 0, 0);
}

uint64_t sub_1000097E8()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  v3 = *(v0 + 40);
  sub_100004BCC((v0 + 16), v3);
  *(v0 + 104) = (*(v1 + 48))(v3, v1) & 1;
  sub_100004B28((v0 + 16));
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 72) = Strong;
  if (Strong)
  {
    *(v0 + 80) = sub_100043004;
    *(v0 + 88) = &off_10007AE08 & 0xFFFFFFFFFFFFLL | 0x97EC000000000000;
    type metadata accessor for MainActor();
    *(v0 + 96) = static MainActor.shared.getter();
    v6 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_100009920, v6, v5);
  }

  else
  {
    v7 = *(v0 + 8);

    return v7();
  }
}

uint64_t sub_100009920()
{
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  v3 = *(v0 + 72);
  v4 = *(v0 + 80);
  v5 = *(v0 + 104);
  v6 = *(v0 + 56);

  v7 = type metadata accessor for MicrophoneManager();
  v4(v6, v5, v7, &off_10007ADE8);
  swift_unknownObjectRelease();
  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1000099C4()
{
  v1 = v0[14];
  v2 = v0[15];
  v3 = v0[16];
  v4 = v0[17];
  v5 = v0[18];
  v6 = v0[19];
  *(v0 + 7) = 0u;
  *(v0 + 8) = 0u;
  *(v0 + 9) = 0u;
  sub_1000253A0(v1, v2);
  v7 = v0[20];
  v8 = v0[21];
  v9 = v0[22];
  v10 = v0[23];
  v11 = v0[24];
  v12 = v0[25];
  *(v0 + 10) = 0u;
  *(v0 + 11) = 0u;
  *(v0 + 12) = 0u;
  sub_1000253A0(v7, v8);
  v13 = v0[26];
  v14 = v0[27];
  v15 = v0[28];
  v16 = v0[29];
  v17 = v0[30];
  v18 = v0[31];
  *(v0 + 13) = 0u;
  *(v0 + 14) = 0u;
  *(v0 + 15) = 0u;
  sub_1000253A0(v13, v14);
  v19 = v0[32];
  v0[32] = 0;

  v20 = v0[33];
  v21 = v0[34];
  v22 = v0[35];
  v23 = v0[36];
  v24 = v0[37];
  v25 = v0[38];
  *(v0 + 33) = 0u;
  *(v0 + 35) = 0u;
  *(v0 + 37) = 0u;

  return sub_1000253A0(v20, v21);
}

uint64_t sub_100009A64()
{
  v1 = v0[16];
  v2 = v0[17];
  v3 = v0[18];
  v4 = v0[19];
  sub_1000253A0(v0[14], v0[15]);
  v5 = v0[22];
  v6 = v0[23];
  v7 = v0[24];
  v8 = v0[25];
  sub_1000253A0(v0[20], v0[21]);
  v9 = v0[28];
  v10 = v0[29];
  v11 = v0[30];
  v12 = v0[31];
  sub_1000253A0(v0[26], v0[27]);
  v13 = v0[32];

  v14 = v0[35];
  v15 = v0[36];
  v16 = v0[37];
  v17 = v0[38];
  sub_1000253A0(v0[33], v0[34]);
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_100009AE8()
{
  v1[2] = v0;
  v2 = type metadata accessor for TaskPriority();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();

  return _swift_task_switch(sub_100009BA8, 0, 0);
}

uint64_t sub_100009BA8()
{
  v1 = v0[5];
  v2 = *(v0[2] + 16);
  v3 = swift_allocObject();
  v0[6] = v3;
  swift_weakInit();
  static TaskPriority.userInitiated.getter();
  v4 = swift_task_alloc();
  v0[7] = v4;
  *v4 = v0;
  v4[1] = sub_100009CC8;
  v5 = v0[5];

  return sub_100043604(sub_100043604, 0xD000000000000010, 0x8000000100068780, v5, &unk_1000618B0, v3);
}

uint64_t sub_100009CC8()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 48);
  v3 = *(*v0 + 40);
  v4 = *(*v0 + 32);
  v5 = *(*v0 + 24);
  v7 = *v0;

  (*(v4 + 8))(v3, v5);

  return _swift_task_switch(sub_100009E3C, 0, 0);
}

uint64_t sub_100009E3C()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100009EBC()
{
  v1 = v0[8];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[9] = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    v0[10] = v3;
    *v3 = v0;
    v3[1] = sub_10000A034;

    return sub_10000A344();
  }

  else
  {
    v5 = v0[8];
    swift_beginAccess();
    v6 = swift_weakLoadStrong();
    v0[11] = v6;
    if (v6)
    {
      v7 = swift_task_alloc();
      v0[12] = v7;
      *v7 = v0;
      v7[1] = sub_10000A234;

      return sub_10000B06C();
    }

    else
    {
      v8 = v0[1];

      return v8();
    }
  }
}

uint64_t sub_10000A034()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 72);
  v4 = *v0;

  return _swift_task_switch(sub_10000A14C, 0, 0);
}

uint64_t sub_10000A14C()
{
  v1 = v0[8];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[11] = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    v0[12] = v3;
    *v3 = v0;
    v3[1] = sub_10000A234;

    return sub_10000B06C();
  }

  else
  {
    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_10000A234()
{
  v1 = *(*v0 + 96);
  v2 = *(*v0 + 88);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_10000A344()
{
  *(v1 + 64) = v0;
  v2 = *(*(sub_100003B30(&qword_1000838E0, &qword_100061C70) - 8) + 64) + 15;
  *(v1 + 72) = swift_task_alloc();

  return _swift_task_switch(sub_10000A40C, 0, 0);
}

uint64_t sub_10000A40C()
{
  v1 = v0[8];
  v2 = v0[9];
  static TaskPriority.userInitiated.getter();
  v3 = type metadata accessor for TaskPriority();
  (*(*(v3 - 8) + 56))(v2, 0, 1, v3);
  v4 = swift_allocObject();
  swift_weakInit();
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v4;
  sub_10003F804(0, 0, v2, &unk_1000617D8, v5);

  sub_100008B68(v2, &qword_1000838E0, &qword_100061C70);
  v6 = swift_task_alloc();
  v0[10] = v6;
  *v6 = v0;
  v6[1] = sub_10000A5A0;
  v7 = v0[8];

  return sub_10000CA94();
}

uint64_t sub_10000A5A0()
{
  v1 = *(*v0 + 80);
  v3 = *v0;

  return _swift_task_switch(sub_10000A6C8, 0, 0);
}

uint64_t sub_10000A6C8()
{
  v31 = v0;
  if (qword_1000831F0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[11] = sub_1000080BC(v1, qword_100086758);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "... prefetch ", v4, 2u);
  }

  v5 = v0[8];

  v6 = [objc_opt_self() auxiliarySession];
  v0[12] = v6;
  v7 = *(v5 + 48);
  *(v5 + 48) = v6;
  v8 = v6;

  if (v8)
  {
    v0[5] = 0;
    v9 = [v8 setCategory:AVAudioSessionCategoryRecord withOptions:5 error:v0 + 5];
    v10 = v0[5];
    if (v9)
    {
      v11 = *(v0[8] + 136);
      v0[13] = v11;
      v12 = v10;
      v13 = *(v11 + 16);
      v14 = async function pointer to Task<>.value.getter[1];

      v15 = swift_task_alloc();
      v0[14] = v15;
      v16 = sub_100008398(0, &qword_100083888, AVInputDeviceDiscoverySession_ptr);
      *v15 = v0;
      v15[1] = sub_10000AB00;

      return Task<>.value.getter(v0 + 7, v13, v16);
    }

    v17 = v10;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    swift_errorRetain();
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      *v20 = 136315650;
      *(v20 + 4) = sub_10005305C(0xD000000000000032, 0x8000000100068670, &v30);
      *(v20 + 12) = 2080;
      *(v20 + 14) = sub_10005305C(0x6863746566657270, 0xEA00000000002928, &v30);
      *(v20 + 22) = 2080;
      swift_getErrorValue();
      v22 = v0[2];
      v21 = v0[3];
      v23 = v0[4];
      v24 = Error.localizedDescription.getter();
      v26 = sub_10005305C(v24, v25, &v30);

      *(v20 + 24) = v26;
      _os_log_impl(&_mh_execute_header, v18, v19, "%s->%s  error=%s", v20, 0x20u);
      swift_arrayDestroy();
    }

    else
    {
    }
  }

  v27 = v0[9];

  v28 = v0[1];

  return v28();
}

uint64_t sub_10000AB00()
{
  v1 = *(*v0 + 112);
  v3 = *v0;

  return _swift_task_switch(sub_10000AC28, 0, 0);
}

uint64_t sub_10000AC28()
{
  v21 = v0;
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[11];

  v4 = v0[7];
  v0[15] = v4;
  [v2 opaqueSessionID];
  isa = UInt32._bridgeToObjectiveC()().super.super.isa;
  [v4 setAudioSessionID:isa];

  v6 = Array._bridgeToObjectiveC()().super.isa;
  [v4 setDiscoveryMode:2 forClientIdentifiers:v6];

  v7 = v4;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v20 = v11;
    *v10 = 136315138;
    v12 = [v7 availableInputDevices];
    sub_100008398(0, &qword_1000838B8, AVInputDevice_ptr);
    static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v13 = Array.description.getter();
    v15 = v14;

    v16 = sub_10005305C(v13, v15, &v20);

    *(v10 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v8, v9, "... early devices %s", v10, 0xCu);
    sub_100004B28(v11);
  }

  v17 = swift_task_alloc();
  v0[16] = v17;
  *v17 = v0;
  v17[1] = sub_10000AEA8;
  v18 = v0[8];

  return sub_100016A1C();
}

uint64_t sub_10000AEA8()
{
  v1 = *(*v0 + 128);
  v3 = *v0;

  return _swift_task_switch(sub_10000AFD0, 0, 0);
}

uint64_t sub_10000AFD0()
{
  v1 = *(v0 + 120);

  v2 = *(v0 + 72);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10000B06C()
{
  v1[27] = v0;
  v2 = type metadata accessor for TaskPriority();
  v1[28] = v2;
  v3 = *(v2 - 8);
  v1[29] = v3;
  v4 = *(v3 + 64) + 15;
  v1[30] = swift_task_alloc();

  return _swift_task_switch(sub_10000B12C, 0, 0);
}

uint64_t sub_10000B12C()
{
  v1 = *(*(v0 + 216) + 104);
  *(v0 + 248) = v1;
  return _swift_task_switch(sub_10000B150, v1, 0);
}

uint64_t sub_10000B150()
{
  v1 = v0[31];
  v2 = v1[20];
  v0[32] = v2;
  v3 = v1[21];
  v0[33] = v3;
  v4 = v1[22];
  v0[34] = v1[23];
  v5 = v1[24];
  v0[35] = v1[25];
  sub_100025418(v2, v3);

  return _swift_task_switch(sub_10000B1D8, 0, 0);
}

uint64_t sub_10000B1D8()
{
  v1 = *(v0 + 264);
  if (v1)
  {
    v2 = *(v0 + 256);
    *(v0 + 312) = *(v0 + 272);
    *(v0 + 304) = v1;
    v3 = swift_task_alloc();
    *(v0 + 328) = v3;
    *v3 = v0;
    v3[1] = sub_10000B5E8;
    v4 = *(v0 + 216);

    return sub_100025A88(v2, v1);
  }

  else
  {
    v6 = *(v0 + 240);
    v7 = *(*(v0 + 216) + 16);
    v8 = swift_allocObject();
    *(v0 + 288) = v8;
    swift_weakInit();
    static TaskPriority.userInitiated.getter();
    v9 = swift_task_alloc();
    *(v0 + 296) = v9;
    *v9 = v0;
    v9[1] = sub_10000B3A8;
    v10 = *(v0 + 240);

    return sub_100043DF8(v0 + 128, 0xD000000000000019, 0x8000000100068710, v10, &unk_1000617A0, v8);
  }
}

uint64_t sub_10000B3A8()
{
  v2 = *v0;
  v1 = *v0;
  v3 = *(*v0 + 296);
  v4 = *(*v0 + 288);
  v5 = *(*v0 + 240);
  v6 = *(*v0 + 232);
  v7 = *(*v0 + 224);
  v8 = *v0;

  (*(v6 + 8))(v5, v7);
  v9 = v1[17];
  if (v9)
  {
    v10 = v2[21];
    v11 = v2[16];
    v2[39] = v2[19];
    v2[40] = v10;
    v2[38] = v9;
    v12 = swift_task_alloc();
    v2[41] = v12;
    *v12 = v8;
    v12[1] = sub_10000B5E8;
    v13 = v2[27];

    return sub_100025A88(v11, v9);
  }

  else
  {
    v15 = v2[30];

    v16 = *(v8 + 8);

    return v16();
  }
}

uint64_t sub_10000B5E8(uint64_t a1)
{
  v2 = *(*v1 + 328);
  v3 = *(*v1 + 320);
  v4 = *(*v1 + 312);
  v5 = *(*v1 + 304);
  v7 = *v1;
  *(*v1 + 336) = a1;

  return _swift_task_switch(sub_10000B748, 0, 0);
}

uint64_t sub_10000B748()
{
  v29 = v0;
  v1 = *(v0 + 216);
  sub_100003B30(&qword_1000838C8, &unk_1000617B0);
  inited = swift_initStackObject();
  v3 = inited;
  *(inited + 16) = xmmword_100061540;
  v4 = AVInputContextSetInputDeviceInitiatorKey;
  *(inited + 32) = AVInputContextSetInputDeviceInitiatorKey;
  v5 = *(v1 + 24);
  *(v0 + 384) = v5;
  v6 = 0xD000000000000015;
  if (v5)
  {
    v6 = 0xD000000000000023;
    v7 = "userPreferredInputRoute()";
  }

  else
  {
    v7 = "AVKitRoutingService";
  }

  v8 = v7 | 0x8000000000000000;
  *(inited + 40) = v6;
  *(inited + 48) = v8;
  v9 = AVInputContextSetInputDeviceHostApplicationBundleIDKey;
  *(inited + 64) = &type metadata for String;
  *(inited + 72) = v9;
  *(inited + 104) = &type metadata for String;
  *(inited + 80) = v6;
  *(inited + 88) = v8;
  v10 = v4;
  v11 = v9;
  *(v0 + 344) = sub_100053740(v3);
  swift_setDeallocating();
  sub_100003B30(&qword_1000838D0, &qword_100063550);
  swift_arrayDestroy();
  if (qword_1000831F0 != -1)
  {
    swift_once();
  }

  v12 = *(v0 + 336);
  v13 = *(v0 + 216);
  v14 = type metadata accessor for Logger();
  *(v0 + 352) = sub_1000080BC(v14, qword_100086758);
  v15 = v12;

  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v28 = v20;
    *v18 = 136315394;
    if (v5)
    {
      if (v5 == 1)
      {
        v21 = 0xE600000000000000;
        v22 = 0x7070412D6E49;
      }

      else
      {
        v21 = 0xE800000000000000;
        v22 = 0x73676E6974746553;
      }
    }

    else
    {
      v21 = 0xE200000000000000;
      v22 = 17219;
    }

    v23 = *(v0 + 336);
    v24 = sub_10005305C(v22, v21, &v28);

    *(v18 + 4) = v24;
    *(v18 + 12) = 2112;
    *(v18 + 14) = v15;
    *v19 = v23;
    v25 = v15;
    _os_log_impl(&_mh_execute_header, v16, v17, "[%s] Initializing preferred input device for metering placeholder with id %@", v18, 0x16u);
    sub_100008B68(v19, &qword_1000838D8, &unk_1000617C0);

    sub_100004B28(v20);
  }

  sub_100004BCC((*(v0 + 216) + 144), *(*(v0 + 216) + 168));
  v26 = swift_task_alloc();
  *(v0 + 360) = v26;
  *v26 = v0;
  v26[1] = sub_10000BB38;

  return (sub_1000090F0)(v0 + 176, &type metadata for MXAVInputContextFactory, &off_100079F00);
}

uint64_t sub_10000BB38()
{
  v1 = *(*v0 + 360);
  v3 = *v0;

  return _swift_task_switch(sub_10000BC34, 0, 0);
}

uint64_t sub_10000BC34()
{
  v1 = v0[43];
  v2 = v0[25];
  v3 = v0[26];
  sub_100004BCC(v0 + 22, v2);
  v4 = *(v3 + 24);
  v9 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  v0[46] = v6;
  *v6 = v0;
  v6[1] = sub_10000BD74;
  v7 = v0[42];

  return v9(v7, v1, v2, v3);
}

uint64_t sub_10000BD74(uint64_t a1)
{
  v2 = *(*v1 + 368);
  v3 = *(*v1 + 344);
  v5 = *v1;
  *(*v1 + 376) = a1;

  return _swift_task_switch(sub_10000BE94, 0, 0);
}

uint64_t sub_10000BE94()
{
  v25 = v0;
  v1 = *(v0 + 376);
  v2 = *(v0 + 352);
  v3 = *(v0 + 216);
  sub_100004B28((v0 + 176));
  v4 = v1;

  v5 = v4;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v0 + 384);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v24 = v10;
    *v9 = 136315394;
    v11 = 0xE600000000000000;
    v12 = 0x7070412D6E49;
    if (v8 != 1)
    {
      v12 = 0x73676E6974746553;
      v11 = 0xE800000000000000;
    }

    if (v8)
    {
      v13 = v12;
    }

    else
    {
      v13 = 17219;
    }

    if (v8)
    {
      v14 = v11;
    }

    else
    {
      v14 = 0xE200000000000000;
    }

    v15 = *(v0 + 376);
    v16 = *(v0 + 336);
    v17 = sub_10005305C(v13, v14, &v24);

    *(v9 + 4) = v17;
    *(v9 + 12) = 2048;
    v18 = [v15 status];

    *(v9 + 14) = v18;
    _os_log_impl(&_mh_execute_header, v6, v7, "[%s] set new input on metering placeholder session completed with status %ld", v9, 0x16u);
    sub_100004B28(v10);
  }

  else
  {
    v19 = *(v0 + 376);
    v20 = *(v0 + 336);
  }

  v21 = *(v0 + 240);

  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_10000C0C0()
{
  v19 = v0;
  v1 = v0[7];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[8] = Strong;
  if (Strong)
  {
    v3 = Strong;
    if (qword_1000831F0 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_1000080BC(v4, qword_100086758);

    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v18 = v8;
      *v7 = 136315138;
      if (v3[15])
      {
        v9 = v3[14];
        v10 = v3[15];
      }

      else
      {
        v10 = 0xE300000000000000;
        v9 = 7104878;
      }

      v13 = sub_10005305C(v9, v10, &v18);

      *(v7 + 4) = v13;
      _os_log_impl(&_mh_execute_header, v5, v6, "start discovery for %s", v7, 0xCu);
      sub_100004B28(v8);
    }

    v14 = v3[15];
    if (v14)
    {
      v15 = v3[14];
      sub_100003B30(&qword_100083890, &qword_100061690);
      v16 = swift_allocObject();
      *(v16 + 1) = xmmword_100060AF0;
      v16[4] = v15;
      v16[5] = v14;
    }

    else
    {
      v16 = _swiftEmptyArrayStorage;
    }

    v0[9] = v16;
    v17 = v3[13];
    v0[10] = v17;

    return _swift_task_switch(sub_10000C33C, v17, 0);
  }

  else
  {
    v11 = v0[1];

    return v11();
  }
}

uint64_t sub_10000C33C()
{
  v1 = v0[10];
  sub_1000099C4();
  v2 = swift_task_alloc();
  v0[11] = v2;
  *v2 = v0;
  v2[1] = sub_10000C3D4;
  v3 = v0[8];

  return sub_10000CA94();
}

uint64_t sub_10000C3D4()
{
  v1 = *v0;
  v2 = *(*v0 + 88);
  v3 = *v0;

  v4 = swift_task_alloc();
  *(v1 + 96) = v4;
  *v4 = v3;
  v4[1] = sub_10000C514;
  v5 = *(v1 + 64);

  return sub_10000F1E4();
}

uint64_t sub_10000C514()
{
  v1 = *(*v0 + 96);
  v3 = *v0;

  return _swift_task_switch(sub_10000C610, 0, 0);
}

uint64_t sub_10000C610()
{
  v1 = *(v0[8] + 128);
  v0[13] = v1;
  v2 = *(v1 + 16);
  v3 = async function pointer to Task<>.value.getter[1];

  v4 = swift_task_alloc();
  v0[14] = v4;
  v5 = sub_100008398(0, &qword_100083888, AVInputDeviceDiscoverySession_ptr);
  v0[15] = v5;
  *v4 = v0;
  v4[1] = sub_10000C6E4;

  return Task<>.value.getter(v0 + 5, v2, v5);
}

uint64_t sub_10000C6E4()
{
  v1 = *(*v0 + 112);
  v3 = *v0;

  return _swift_task_switch(sub_10000C7E0, 0, 0);
}

uint64_t sub_10000C7E0()
{
  v1 = v0[13];
  v3 = v0[8];
  v2 = v0[9];

  v4 = v0[5];
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v4 setDiscoveryMode:2 forClientIdentifiers:isa];

  v6 = *(v3 + 136);
  v0[16] = v6;
  v7 = *(v6 + 16);
  v8 = async function pointer to Task<>.value.getter[1];

  v9 = swift_task_alloc();
  v0[17] = v9;
  *v9 = v0;
  v9[1] = sub_10000C8E8;
  v10 = v0[15];

  return Task<>.value.getter(v0 + 6, v7, v10);
}

uint64_t sub_10000C8E8()
{
  v1 = *(*v0 + 136);
  v3 = *v0;

  return _swift_task_switch(sub_10000C9E4, 0, 0);
}

uint64_t sub_10000C9E4()
{
  v1 = v0[16];
  v2 = v0[8];

  v3 = v0[6];
  isa = Array._bridgeToObjectiveC()().super.isa;
  [v3 setDiscoveryMode:2 forClientIdentifiers:isa];

  v5 = v0[1];

  return v5();
}

uint64_t sub_10000CA94()
{
  *(v1 + 32) = v0;
  v2 = *(*(sub_100003B30(&qword_1000838E0, &qword_100061C70) - 8) + 64) + 15;
  *(v1 + 40) = swift_task_alloc();

  return _swift_task_switch(sub_10000CB30, 0, 0);
}

uint64_t sub_10000CB30()
{
  v1 = v0[4];
  if (*(v1 + 56))
  {
    v2 = *(v1 + 56);

    Task.cancel()();

    v3 = *(v1 + 56);
    v0[6] = v3;
    if (v3)
    {
      v4 = async function pointer to Task.result.getter[1];

      v5 = swift_task_alloc();
      v0[7] = v5;
      *v5 = v0;
      v5[1] = sub_10000CCEC;

      return Task.result.getter(v0 + 28, v3, &type metadata for () + 8, &type metadata for Never, &protocol witness table for Never);
    }

    v1 = v0[4];
  }

  v6 = *(v1 + 128);
  v0[8] = v6;
  v7 = *(v6 + 16);
  v8 = async function pointer to Task<>.value.getter[1];

  v9 = swift_task_alloc();
  v0[9] = v9;
  v10 = sub_100008398(0, &qword_100083888, AVInputDeviceDiscoverySession_ptr);
  v0[10] = v10;
  *v9 = v0;
  v9[1] = sub_10000CED8;

  return Task<>.value.getter(v0 + 2, v7, v10);
}

uint64_t sub_10000CCEC()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 48);
  v4 = *v0;

  return _swift_task_switch(sub_10000CE04, 0, 0);
}

uint64_t sub_10000CE04()
{
  v1 = *(v0[4] + 128);
  v0[8] = v1;
  v2 = *(v1 + 16);
  v3 = async function pointer to Task<>.value.getter[1];

  v4 = swift_task_alloc();
  v0[9] = v4;
  v5 = sub_100008398(0, &qword_100083888, AVInputDeviceDiscoverySession_ptr);
  v0[10] = v5;
  *v4 = v0;
  v4[1] = sub_10000CED8;

  return Task<>.value.getter(v0 + 2, v2, v5);
}

uint64_t sub_10000CED8()
{
  v1 = *(*v0 + 72);
  v3 = *v0;

  return _swift_task_switch(sub_10000CFD4, 0, 0);
}

uint64_t sub_10000CFD4()
{
  v1 = v0[8];
  v2 = v0[4];

  v0[11] = v0[2];
  v3 = *(v2 + 136);
  v0[12] = v3;
  v4 = *(v3 + 16);
  v5 = async function pointer to Task<>.value.getter[1];

  v6 = swift_task_alloc();
  v0[13] = v6;
  *v6 = v0;
  v6[1] = sub_10000D09C;
  v7 = v0[10];

  return Task<>.value.getter(v0 + 3, v4, v7);
}

uint64_t sub_10000D09C()
{
  v1 = *(*v0 + 104);
  v3 = *v0;

  return _swift_task_switch(sub_10000D198, 0, 0);
}

uint64_t sub_10000D198()
{
  v2 = *(v0 + 11);
  v1 = *(v0 + 12);
  v4 = *(v0 + 4);
  v3 = *(v0 + 5);

  *(v0 + 14) = *(v0 + 3);
  v5 = type metadata accessor for TaskPriority();
  *(v0 + 15) = v5;
  v6 = *(v5 - 8);
  v7 = *(v6 + 56);
  *(v0 + 16) = v7;
  *(v0 + 17) = (v6 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v7(v3, 1, 1, v5);
  v8 = swift_allocObject();
  swift_weakInit();
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v2;
  v9[5] = v8;
  v10 = v2;
  v11 = sub_100054078(0, 0, v3, &unk_1000617F0, v9);
  v12 = *(v4 + 56);
  *(v4 + 56) = v11;

  if (*(v4 + 64))
  {
    v13 = *(v4 + 64);

    Task.cancel()();

    v14 = *(v4 + 64);
    *(v0 + 18) = v14;
    if (v14)
    {
      v15 = async function pointer to Task.result.getter[1];

      v16 = swift_task_alloc();
      *(v0 + 19) = v16;
      *v16 = v0;
      v16[1] = sub_10000D97C;
      v17 = v0 + 225;
LABEL_20:

      return Task.result.getter(v17, v14, &type metadata for () + 8, &type metadata for Never, &protocol witness table for Never);
    }
  }

  v18 = *(v0 + 17);
  v19 = *(v0 + 14);
  v21 = *(v0 + 4);
  v20 = *(v0 + 5);
  (*(v0 + 16))(v20, 1, 1, *(v0 + 15));
  v22 = swift_allocObject();
  swift_weakInit();
  v23 = swift_allocObject();
  v23[2] = 0;
  v23[3] = 0;
  v23[4] = v19;
  v23[5] = v22;
  v24 = v19;
  v25 = sub_100054078(0, 0, v20, &unk_100061800, v23);
  v26 = *(v21 + 64);
  *(v21 + 64) = v25;

  if (*(v21 + 72))
  {
    v27 = *(v21 + 72);

    Task.cancel()();

    v14 = *(v21 + 72);
    *(v0 + 20) = v14;
    if (v14)
    {
      v28 = async function pointer to Task.result.getter[1];

      v29 = swift_task_alloc();
      *(v0 + 21) = v29;
      *v29 = v0;
      v29[1] = sub_10000E104;
      v17 = v0 + 226;
      goto LABEL_20;
    }
  }

  v30 = *(v0 + 17);
  v31 = *(v0 + 4);
  v32 = *(v0 + 5);
  (*(v0 + 16))(v32, 1, 1, *(v0 + 15));
  v33 = swift_allocObject();
  swift_weakInit();
  v34 = swift_allocObject();
  v34[2] = 0;
  v34[3] = 0;
  v34[4] = v33;
  v35 = sub_100054078(0, 0, v32, &unk_100061810, v34);
  v36 = *(v31 + 72);
  *(v31 + 72) = v35;

  if (*(v31 + 48))
  {
    v37 = *(v0 + 4);
    if (*(v37 + 80))
    {
      v38 = *(v37 + 80);

      Task.cancel()();

      v14 = *(v37 + 80);
      *(v0 + 22) = v14;
      if (v14)
      {
        v39 = async function pointer to Task.result.getter[1];

        v40 = swift_task_alloc();
        *(v0 + 23) = v40;
        *v40 = v0;
        v40[1] = sub_10000E740;
        v17 = v0 + 229;
        goto LABEL_20;
      }

      v37 = *(v0 + 4);
    }

    v41 = *(v0 + 17);
    v42 = *(v0 + 5);
    (*(v0 + 16))(v42, 1, 1, *(v0 + 15));
    v43 = swift_allocObject();
    swift_weakInit();
    v44 = swift_allocObject();
    v44[2] = 0;
    v44[3] = 0;
    v44[4] = v43;
    v45 = sub_100054078(0, 0, v42, &unk_100061840, v44);
    v46 = *(v37 + 80);
    *(v37 + 80) = v45;
  }

  v47 = *(v0 + 4);
  if (*(v47 + 88))
  {
    v48 = *(v47 + 88);

    Task.cancel()();

    v14 = *(v47 + 88);
    *(v0 + 24) = v14;
    if (v14)
    {
      v49 = async function pointer to Task.result.getter[1];

      v50 = swift_task_alloc();
      *(v0 + 25) = v50;
      *v50 = v0;
      v50[1] = sub_10000EC20;
      v17 = v0 + 227;
      goto LABEL_20;
    }

    v47 = *(v0 + 4);
  }

  v51 = *(v0 + 17);
  v52 = *(v0 + 5);
  (*(v0 + 16))(v52, 1, 1, *(v0 + 15));
  v53 = swift_allocObject();
  swift_weakInit();
  v54 = swift_allocObject();
  v54[2] = 0;
  v54[3] = 0;
  v54[4] = v53;
  v55 = sub_100054078(0, 0, v52, &unk_100061820, v54);
  v56 = *(v47 + 88);
  *(v47 + 88) = v55;

  if (*(v47 + 96))
  {
    v57 = *(v47 + 96);

    Task.cancel()();

    v14 = *(v47 + 96);
    *(v0 + 26) = v14;
    if (v14)
    {
      v58 = async function pointer to Task.result.getter[1];

      v59 = swift_task_alloc();
      *(v0 + 27) = v59;
      *v59 = v0;
      v59[1] = sub_10000EFBC;
      v17 = v0 + 228;
      goto LABEL_20;
    }
  }

  v60 = *(v0 + 17);
  v61 = *(v0 + 14);
  v62 = *(v0 + 11);
  v63 = *(v0 + 4);
  v64 = *(v0 + 5);
  (*(v0 + 16))(v64, 1, 1, *(v0 + 15));
  v65 = swift_allocObject();
  swift_weakInit();
  v66 = swift_allocObject();
  v66[2] = 0;
  v66[3] = 0;
  v66[4] = v65;
  v67 = sub_100054078(0, 0, v64, &unk_100061830, v66);

  v68 = *(v63 + 96);
  *(v63 + 96) = v67;

  v69 = *(v0 + 1);

  return v69();
}

uint64_t sub_10000D97C()
{
  v1 = *(*v0 + 152);
  v2 = *(*v0 + 144);
  v4 = *v0;

  return _swift_task_switch(sub_10000DA94, 0, 0);
}

uint64_t sub_10000DA94()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 112);
  v4 = *(v0 + 32);
  v3 = *(v0 + 40);
  (*(v0 + 128))(v3, 1, 1, *(v0 + 120));
  v5 = swift_allocObject();
  swift_weakInit();
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v2;
  v6[5] = v5;
  v7 = v2;
  v8 = sub_100054078(0, 0, v3, &unk_100061800, v6);
  v9 = *(v4 + 64);
  *(v4 + 64) = v8;

  if (*(v4 + 72))
  {
    v10 = *(v4 + 72);

    Task.cancel()();

    v11 = *(v4 + 72);
    *(v0 + 160) = v11;
    if (v11)
    {
      v12 = async function pointer to Task.result.getter[1];

      v13 = swift_task_alloc();
      *(v0 + 168) = v13;
      *v13 = v0;
      v13[1] = sub_10000E104;
      v14 = v0 + 226;
LABEL_17:

      return Task.result.getter(v14, v11, &type metadata for () + 8, &type metadata for Never, &protocol witness table for Never);
    }
  }

  v15 = *(v0 + 136);
  v16 = *(v0 + 32);
  v17 = *(v0 + 40);
  (*(v0 + 128))(v17, 1, 1, *(v0 + 120));
  v18 = swift_allocObject();
  swift_weakInit();
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = v18;
  v20 = sub_100054078(0, 0, v17, &unk_100061810, v19);
  v21 = *(v16 + 72);
  *(v16 + 72) = v20;

  if (*(v16 + 48))
  {
    v22 = *(v0 + 32);
    if (*(v22 + 80))
    {
      v23 = *(v22 + 80);

      Task.cancel()();

      v11 = *(v22 + 80);
      *(v0 + 176) = v11;
      if (v11)
      {
        v24 = async function pointer to Task.result.getter[1];

        v25 = swift_task_alloc();
        *(v0 + 184) = v25;
        *v25 = v0;
        v25[1] = sub_10000E740;
        v14 = v0 + 229;
        goto LABEL_17;
      }

      v22 = *(v0 + 32);
    }

    v26 = *(v0 + 136);
    v27 = *(v0 + 40);
    (*(v0 + 128))(v27, 1, 1, *(v0 + 120));
    v28 = swift_allocObject();
    swift_weakInit();
    v29 = swift_allocObject();
    v29[2] = 0;
    v29[3] = 0;
    v29[4] = v28;
    v30 = sub_100054078(0, 0, v27, &unk_100061840, v29);
    v31 = *(v22 + 80);
    *(v22 + 80) = v30;
  }

  v32 = *(v0 + 32);
  if (*(v32 + 88))
  {
    v33 = *(v32 + 88);

    Task.cancel()();

    v11 = *(v32 + 88);
    *(v0 + 192) = v11;
    if (v11)
    {
      v34 = async function pointer to Task.result.getter[1];

      v35 = swift_task_alloc();
      *(v0 + 200) = v35;
      *v35 = v0;
      v35[1] = sub_10000EC20;
      v14 = v0 + 227;
      goto LABEL_17;
    }

    v32 = *(v0 + 32);
  }

  v36 = *(v0 + 136);
  v37 = *(v0 + 40);
  (*(v0 + 128))(v37, 1, 1, *(v0 + 120));
  v38 = swift_allocObject();
  swift_weakInit();
  v39 = swift_allocObject();
  v39[2] = 0;
  v39[3] = 0;
  v39[4] = v38;
  v40 = sub_100054078(0, 0, v37, &unk_100061820, v39);
  v41 = *(v32 + 88);
  *(v32 + 88) = v40;

  if (*(v32 + 96))
  {
    v42 = *(v32 + 96);

    Task.cancel()();

    v11 = *(v32 + 96);
    *(v0 + 208) = v11;
    if (v11)
    {
      v43 = async function pointer to Task.result.getter[1];

      v44 = swift_task_alloc();
      *(v0 + 216) = v44;
      *v44 = v0;
      v44[1] = sub_10000EFBC;
      v14 = v0 + 228;
      goto LABEL_17;
    }
  }

  v45 = *(v0 + 136);
  v46 = *(v0 + 112);
  v47 = *(v0 + 88);
  v48 = *(v0 + 32);
  v49 = *(v0 + 40);
  (*(v0 + 128))(v49, 1, 1, *(v0 + 120));
  v50 = swift_allocObject();
  swift_weakInit();
  v51 = swift_allocObject();
  v51[2] = 0;
  v51[3] = 0;
  v51[4] = v50;
  v52 = sub_100054078(0, 0, v49, &unk_100061830, v51);

  v53 = *(v48 + 96);
  *(v48 + 96) = v52;

  v54 = *(v0 + 8);

  return v54();
}

uint64_t sub_10000E104()
{
  v1 = *(*v0 + 168);
  v2 = *(*v0 + 160);
  v4 = *v0;

  return _swift_task_switch(sub_10000E21C, 0, 0);
}

uint64_t sub_10000E21C()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  (*(v0 + 128))(v3, 1, 1, *(v0 + 120));
  v4 = swift_allocObject();
  swift_weakInit();
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v4;
  v6 = sub_100054078(0, 0, v3, &unk_100061810, v5);
  v7 = *(v2 + 72);
  *(v2 + 72) = v6;

  if (*(v2 + 48))
  {
    v8 = *(v0 + 32);
    if (*(v8 + 80))
    {
      v9 = *(v8 + 80);

      Task.cancel()();

      v10 = *(v8 + 80);
      *(v0 + 176) = v10;
      if (v10)
      {
        v11 = async function pointer to Task.result.getter[1];

        v12 = swift_task_alloc();
        *(v0 + 184) = v12;
        *v12 = v0;
        v12[1] = sub_10000E740;
        v13 = v0 + 229;
LABEL_14:

        return Task.result.getter(v13, v10, &type metadata for () + 8, &type metadata for Never, &protocol witness table for Never);
      }

      v8 = *(v0 + 32);
    }

    v14 = *(v0 + 136);
    v15 = *(v0 + 40);
    (*(v0 + 128))(v15, 1, 1, *(v0 + 120));
    v16 = swift_allocObject();
    swift_weakInit();
    v17 = swift_allocObject();
    v17[2] = 0;
    v17[3] = 0;
    v17[4] = v16;
    v18 = sub_100054078(0, 0, v15, &unk_100061840, v17);
    v19 = *(v8 + 80);
    *(v8 + 80) = v18;
  }

  v20 = *(v0 + 32);
  if (*(v20 + 88))
  {
    v21 = *(v20 + 88);

    Task.cancel()();

    v10 = *(v20 + 88);
    *(v0 + 192) = v10;
    if (v10)
    {
      v22 = async function pointer to Task.result.getter[1];

      v23 = swift_task_alloc();
      *(v0 + 200) = v23;
      *v23 = v0;
      v23[1] = sub_10000EC20;
      v13 = v0 + 227;
      goto LABEL_14;
    }

    v20 = *(v0 + 32);
  }

  v24 = *(v0 + 136);
  v25 = *(v0 + 40);
  (*(v0 + 128))(v25, 1, 1, *(v0 + 120));
  v26 = swift_allocObject();
  swift_weakInit();
  v27 = swift_allocObject();
  v27[2] = 0;
  v27[3] = 0;
  v27[4] = v26;
  v28 = sub_100054078(0, 0, v25, &unk_100061820, v27);
  v29 = *(v20 + 88);
  *(v20 + 88) = v28;

  if (*(v20 + 96))
  {
    v30 = *(v20 + 96);

    Task.cancel()();

    v10 = *(v20 + 96);
    *(v0 + 208) = v10;
    if (v10)
    {
      v31 = async function pointer to Task.result.getter[1];

      v32 = swift_task_alloc();
      *(v0 + 216) = v32;
      *v32 = v0;
      v32[1] = sub_10000EFBC;
      v13 = v0 + 228;
      goto LABEL_14;
    }
  }

  v33 = *(v0 + 136);
  v34 = *(v0 + 112);
  v35 = *(v0 + 88);
  v36 = *(v0 + 32);
  v37 = *(v0 + 40);
  (*(v0 + 128))(v37, 1, 1, *(v0 + 120));
  v38 = swift_allocObject();
  swift_weakInit();
  v39 = swift_allocObject();
  v39[2] = 0;
  v39[3] = 0;
  v39[4] = v38;
  v40 = sub_100054078(0, 0, v37, &unk_100061830, v39);

  v41 = *(v36 + 96);
  *(v36 + 96) = v40;

  v42 = *(v0 + 8);

  return v42();
}

uint64_t sub_10000E740()
{
  v1 = *(*v0 + 184);
  v2 = *(*v0 + 176);
  v4 = *v0;

  return _swift_task_switch(sub_10000E858, 0, 0);
}

uint64_t sub_10000E858()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  (*(v0 + 128))(v3, 1, 1, *(v0 + 120));
  v4 = swift_allocObject();
  swift_weakInit();
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v4;
  v6 = sub_100054078(0, 0, v3, &unk_100061840, v5);
  v7 = *(v2 + 80);
  *(v2 + 80) = v6;

  v8 = *(v0 + 32);
  if (*(v8 + 88))
  {
    v9 = *(v8 + 88);

    Task.cancel()();

    v10 = *(v8 + 88);
    *(v0 + 192) = v10;
    if (v10)
    {
      v11 = async function pointer to Task.result.getter[1];

      v12 = swift_task_alloc();
      *(v0 + 200) = v12;
      *v12 = v0;
      v12[1] = sub_10000EC20;
      v13 = v0 + 227;
LABEL_8:

      return Task.result.getter(v13, v10, &type metadata for () + 8, &type metadata for Never, &protocol witness table for Never);
    }

    v8 = *(v0 + 32);
  }

  v14 = *(v0 + 136);
  v15 = *(v0 + 40);
  (*(v0 + 128))(v15, 1, 1, *(v0 + 120));
  v16 = swift_allocObject();
  swift_weakInit();
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = v16;
  v18 = sub_100054078(0, 0, v15, &unk_100061820, v17);
  v19 = *(v8 + 88);
  *(v8 + 88) = v18;

  if (*(v8 + 96))
  {
    v20 = *(v8 + 96);

    Task.cancel()();

    v10 = *(v8 + 96);
    *(v0 + 208) = v10;
    if (v10)
    {
      v21 = async function pointer to Task.result.getter[1];

      v22 = swift_task_alloc();
      *(v0 + 216) = v22;
      *v22 = v0;
      v22[1] = sub_10000EFBC;
      v13 = v0 + 228;
      goto LABEL_8;
    }
  }

  v23 = *(v0 + 136);
  v24 = *(v0 + 112);
  v25 = *(v0 + 88);
  v26 = *(v0 + 32);
  v27 = *(v0 + 40);
  (*(v0 + 128))(v27, 1, 1, *(v0 + 120));
  v28 = swift_allocObject();
  swift_weakInit();
  v29 = swift_allocObject();
  v29[2] = 0;
  v29[3] = 0;
  v29[4] = v28;
  v30 = sub_100054078(0, 0, v27, &unk_100061830, v29);

  v31 = *(v26 + 96);
  *(v26 + 96) = v30;

  v32 = *(v0 + 8);

  return v32();
}

uint64_t sub_10000EC20()
{
  v1 = *(*v0 + 200);
  v2 = *(*v0 + 192);
  v4 = *v0;

  return _swift_task_switch(sub_10000ED38, 0, 0);
}

uint64_t sub_10000ED38()
{
  v1 = *(v0 + 136);
  v3 = *(v0 + 32);
  v2 = *(v0 + 40);
  (*(v0 + 128))(v2, 1, 1, *(v0 + 120));
  v4 = swift_allocObject();
  swift_weakInit();
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v4;
  v6 = sub_100054078(0, 0, v2, &unk_100061820, v5);
  v7 = *(v3 + 88);
  *(v3 + 88) = v6;

  if (*(v3 + 96) && (v8 = *(v3 + 96), , Task.cancel()(), , v9 = *(v3 + 96), (*(v0 + 208) = v9) != 0))
  {
    v10 = async function pointer to Task.result.getter[1];

    v11 = swift_task_alloc();
    *(v0 + 216) = v11;
    *v11 = v0;
    v11[1] = sub_10000EFBC;

    return Task.result.getter(v0 + 228, v9, &type metadata for () + 8, &type metadata for Never, &protocol witness table for Never);
  }

  else
  {
    v12 = *(v0 + 136);
    v13 = *(v0 + 112);
    v14 = *(v0 + 88);
    v15 = *(v0 + 32);
    v16 = *(v0 + 40);
    (*(v0 + 128))(v16, 1, 1, *(v0 + 120));
    v17 = swift_allocObject();
    swift_weakInit();
    v18 = swift_allocObject();
    v18[2] = 0;
    v18[3] = 0;
    v18[4] = v17;
    v19 = sub_100054078(0, 0, v16, &unk_100061830, v18);

    v20 = *(v15 + 96);
    *(v15 + 96) = v19;

    v21 = *(v0 + 8);

    return v21();
  }
}

uint64_t sub_10000EFBC()
{
  v1 = *(*v0 + 216);
  v2 = *(*v0 + 208);
  v4 = *v0;

  return _swift_task_switch(sub_10000F0D4, 0, 0);
}

uint64_t sub_10000F0D4()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 112);
  v3 = *(v0 + 88);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  (*(v0 + 128))(v5, 1, 1, *(v0 + 120));
  v6 = swift_allocObject();
  swift_weakInit();
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v6;
  v8 = sub_100054078(0, 0, v5, &unk_100061830, v7);

  v9 = *(v4 + 96);
  *(v4 + 96) = v8;

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_10000F1E4()
{
  *(v1 + 64) = v0;

  return _swift_task_switch(sub_10000F274, 0, 0);
}

uint64_t sub_10000F274()
{
  v49 = v0;
  v1 = *(v0 + 64);
  if (!*(v1 + 48))
  {
    v2 = [objc_opt_self() auxiliarySession];
    v3 = *(v1 + 48);
    *(v1 + 48) = v2;

    v4 = *(v1 + 48);
    if (v4)
    {
      *(v0 + 40) = 0;
      v5 = [v4 setCategory:AVAudioSessionCategoryRecord withOptions:5 error:v0 + 40];
      v6 = *(v0 + 40);
      if (!v5)
      {
        v28 = v6;
        _convertNSErrorToError(_:)();

        swift_willThrow();
        if (qword_1000831F0 != -1)
        {
          swift_once();
        }

        v29 = type metadata accessor for Logger();
        sub_1000080BC(v29, qword_100086758);
        swift_errorRetain();
        v30 = Logger.logObject.getter();
        v31 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v30, v31))
        {
          v32 = swift_slowAlloc();
          v48 = swift_slowAlloc();
          *v32 = 136315650;
          *(v32 + 4) = sub_10005305C(0xD000000000000032, 0x8000000100068670, &v48);
          *(v32 + 12) = 2080;
          *(v32 + 14) = sub_10005305C(0xD000000000000022, 0x80000001000687A0, &v48);
          *(v32 + 22) = 2080;
          swift_getErrorValue();
          v34 = *(v0 + 16);
          v33 = *(v0 + 24);
          v35 = *(v0 + 32);
          v36 = Error.localizedDescription.getter();
          v38 = sub_10005305C(v36, v37, &v48);

          *(v32 + 24) = v38;
          _os_log_impl(&_mh_execute_header, v30, v31, "%s->%s error=%s", v32, 0x20u);
          swift_arrayDestroy();
        }

        else
        {
        }

        goto LABEL_26;
      }

      v7 = *(v1 + 48);
      v8 = v6;
      if (v7)
      {
        v9 = [v7 opaqueSessionID];
        *(v0 + 104) = v9;
        if (qword_1000831F0 != -1)
        {
          swift_once();
        }

        v10 = *(v0 + 64);
        v11 = type metadata accessor for Logger();
        sub_1000080BC(v11, qword_100086758);

        v12 = Logger.logObject.getter();
        v13 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v12, v13))
        {
          v14 = *(v0 + 64);
          v15 = swift_slowAlloc();
          v16 = swift_slowAlloc();
          v48 = v16;
          *v15 = 136315394;
          if (*(v14 + 24))
          {
            if (*(v14 + 24) == 1)
            {
              v17 = 0xE600000000000000;
              v18 = 0x7070412D6E49;
            }

            else
            {
              v17 = 0xE800000000000000;
              v18 = 0x73676E6974746553;
            }
          }

          else
          {
            v17 = 0xE200000000000000;
            v18 = 17219;
          }

          v42 = sub_10005305C(v18, v17, &v48);

          *(v15 + 4) = v42;
          *(v15 + 12) = 1024;
          *(v15 + 14) = v9;
          _os_log_impl(&_mh_execute_header, v12, v13, "[%s] set fakeDiscoverySession: %u", v15, 0x12u);
          sub_100004B28(v16);
        }

        v43 = *(*(v0 + 64) + 136);
        *(v0 + 72) = v43;
        v44 = *(v43 + 16);
        v45 = async function pointer to Task<>.value.getter[1];

        v46 = swift_task_alloc();
        *(v0 + 80) = v46;
        v47 = sub_100008398(0, &qword_100083888, AVInputDeviceDiscoverySession_ptr);
        *v46 = v0;
        v46[1] = sub_10000F90C;

        return Task<>.value.getter(v0 + 56, v44, v47);
      }
    }

    if (qword_1000831F0 != -1)
    {
      swift_once();
    }

    v19 = *(v0 + 64);
    v20 = type metadata accessor for Logger();
    sub_1000080BC(v20, qword_100086758);

    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = *(v0 + 64);
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v48 = v25;
      *v24 = 136315138;
      if (*(v23 + 24))
      {
        if (*(v23 + 24) == 1)
        {
          v26 = 0xE600000000000000;
          v27 = 0x7070412D6E49;
        }

        else
        {
          v26 = 0xE800000000000000;
          v27 = 0x73676E6974746553;
        }
      }

      else
      {
        v26 = 0xE200000000000000;
        v27 = 17219;
      }

      v39 = sub_10005305C(v27, v26, &v48);

      *(v24 + 4) = v39;
      _os_log_impl(&_mh_execute_header, v21, v22, "[%s] Unable to set fakeDiscoverySession!", v24, 0xCu);
      sub_100004B28(v25);
    }
  }

LABEL_26:
  v40 = *(v0 + 8);

  return v40();
}

uint64_t sub_10000F90C()
{
  v1 = *(*v0 + 80);
  v3 = *v0;

  return _swift_task_switch(sub_10000FA34, 0, 0);
}

uint64_t sub_10000FA34()
{
  v1 = *(v0 + 104);
  v3 = *(v0 + 64);
  v2 = *(v0 + 72);

  v4 = *(v0 + 56);
  v5 = [objc_allocWithZone(NSNumber) initWithUnsignedInt:v1];
  [v4 setAudioSessionID:v5];

  v6 = *(v3 + 104);
  *(v0 + 88) = v6;

  return _swift_task_switch(sub_10000FB18, v6, 0);
}

uint64_t sub_10000FB18()
{
  v1 = v0[11];
  sub_1000099C4();
  v2 = swift_task_alloc();
  v0[12] = v2;
  *v2 = v0;
  v2[1] = sub_10000FBDC;
  v3 = v0[8];

  return sub_100016A1C();
}

uint64_t sub_10000FBDC()
{
  v1 = *(*v0 + 96);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_10000FD1C()
{
  v24 = v0;
  v1 = v0[7];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[8] = Strong;
  if (Strong)
  {
    v3 = Strong;
    v4 = *(Strong + 120);
    if (v4)
    {
      v5 = v3[14];
      v6 = v4;
    }

    else
    {
      v6 = 0xE300000000000000;
      v5 = 7104878;
    }

    v9 = qword_1000831F0;

    if (v9 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_1000080BC(v10, qword_100086758);

    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v23 = v14;
      *v13 = 136315138;
      *(v13 + 4) = sub_10005305C(v5, v6, &v23);

      _os_log_impl(&_mh_execute_header, v11, v12, "stop discovery for %s", v13, 0xCu);
      sub_100004B28(v14);

      v15 = v3[15];
      if (v15)
      {
LABEL_12:
        v16 = v3[14];
        sub_100003B30(&qword_100083890, &qword_100061690);
        v17 = swift_allocObject();
        *(v17 + 1) = xmmword_100060AF0;
        v17[4] = v16;
        v17[5] = v15;
LABEL_15:
        v0[9] = v17;
        v18 = v3[16];
        v0[10] = v18;

        v19 = *(v18 + 16);
        v20 = async function pointer to Task<>.value.getter[1];

        v21 = swift_task_alloc();
        v0[11] = v21;
        v22 = sub_100008398(0, &qword_100083888, AVInputDeviceDiscoverySession_ptr);
        v0[12] = v22;
        *v21 = v0;
        v21[1] = sub_100010010;

        return Task<>.value.getter(v0 + 5, v19, v22);
      }
    }

    else
    {

      v15 = v3[15];
      if (v15)
      {
        goto LABEL_12;
      }
    }

    v17 = _swiftEmptyArrayStorage;
    goto LABEL_15;
  }

  v7 = v0[1];

  return v7();
}

uint64_t sub_100010010()
{
  v1 = *(*v0 + 88);
  v3 = *v0;

  return _swift_task_switch(sub_10001010C, 0, 0);
}

uint64_t sub_10001010C()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];

  v4 = v0[5];
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v4 setDiscoveryMode:0 forClientIdentifiers:isa];

  v6 = *(v3 + 136);
  v0[13] = v6;
  v7 = *(v6 + 16);
  v8 = async function pointer to Task<>.value.getter[1];

  v9 = swift_task_alloc();
  v0[14] = v9;
  *v9 = v0;
  v9[1] = sub_100010214;
  v10 = v0[12];

  return Task<>.value.getter(v0 + 6, v7, v10);
}

uint64_t sub_100010214()
{
  v1 = *(*v0 + 112);
  v3 = *v0;

  return _swift_task_switch(sub_100010310, 0, 0);
}

uint64_t sub_100010310()
{
  v1 = v0[13];

  v2 = v0[6];
  isa = Array._bridgeToObjectiveC()().super.isa;
  [v2 setDiscoveryMode:0 forClientIdentifiers:isa];

  v4 = swift_task_alloc();
  v0[15] = v4;
  *v4 = v0;
  v4[1] = sub_1000103E4;
  v5 = v0[8];

  return sub_100010540();
}

uint64_t sub_1000103E4()
{
  v1 = *(*v0 + 120);
  v3 = *v0;

  return _swift_task_switch(sub_1000104E0, 0, 0);
}

uint64_t sub_1000104E0()
{
  v1 = *(v0 + 64);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100010560()
{
  v32 = v0;
  if (qword_1000831F0 != -1)
  {
    swift_once();
  }

  v1 = v0[2];
  v2 = type metadata accessor for Logger();
  sub_1000080BC(v2, qword_100086758);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[2];
    v6 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    *v6 = 136315394;
    if (*(v5 + 24))
    {
      if (*(v5 + 24) == 1)
      {
        v7 = 0xE600000000000000;
        v8 = 0x7070412D6E49;
      }

      else
      {
        v7 = 0xE800000000000000;
        v8 = 0x73676E6974746553;
      }
    }

    else
    {
      v7 = 0xE200000000000000;
      v8 = 17219;
    }

    v9 = sub_10005305C(v8, v7, &v31);

    *(v6 + 4) = v9;
    *(v6 + 12) = 2080;
    *(v6 + 14) = sub_10005305C(0xD00000000000001CLL, 0x8000000100068600, &v31);
    _os_log_impl(&_mh_execute_header, v3, v4, "[%s] %s", v6, 0x16u);
    swift_arrayDestroy();
  }

  v10 = v0[2];
  v11 = *(v10 + 56);
  v0[3] = v11;
  if (v11)
  {

    Task.cancel()();
    v12 = async function pointer to Task.result.getter[1];
    v13 = swift_task_alloc();
    v0[4] = v13;
    *v13 = v0;
    v13[1] = sub_100010B20;
    v14 = v0 + 125;
LABEL_22:

    return Task.result.getter(v14, v11, &type metadata for () + 8, &type metadata for Never, &protocol witness table for Never);
  }

  *(v10 + 56) = 0;
  v11 = *(v10 + 64);
  v0[5] = v11;
  if (v11)
  {

    Task.cancel()();
    v15 = async function pointer to Task.result.getter[1];
    v16 = swift_task_alloc();
    v0[6] = v16;
    *v16 = v0;
    v16[1] = sub_100010FAC;
    v14 = v0 + 124;
    goto LABEL_22;
  }

  v17 = v0[2];
  *(v17 + 64) = 0;
  v11 = *(v17 + 72);
  v0[7] = v11;
  if (v11)
  {

    Task.cancel()();
    v18 = async function pointer to Task.result.getter[1];
    v19 = swift_task_alloc();
    v0[8] = v19;
    *v19 = v0;
    v19[1] = sub_1000113A8;
    v14 = v0 + 123;
    goto LABEL_22;
  }

  v20 = v0[2];
  *(v20 + 72) = 0;
  v11 = *(v20 + 80);
  v0[9] = v11;
  if (v11)
  {

    Task.cancel()();
    v21 = async function pointer to Task.result.getter[1];
    v22 = swift_task_alloc();
    v0[10] = v22;
    *v22 = v0;
    v22[1] = sub_100011710;
    v14 = v0 + 122;
    goto LABEL_22;
  }

  v23 = v0[2];
  *(v23 + 80) = 0;
  v11 = *(v23 + 88);
  v0[11] = v11;
  if (v11)
  {

    Task.cancel()();
    v24 = async function pointer to Task.result.getter[1];
    v25 = swift_task_alloc();
    v0[12] = v25;
    *v25 = v0;
    v25[1] = sub_1000119E4;
    v14 = v0 + 121;
    goto LABEL_22;
  }

  v26 = v0[2];
  *(v26 + 88) = 0;
  v11 = *(v26 + 96);
  v0[13] = v11;
  if (v11)
  {

    Task.cancel()();
    v27 = async function pointer to Task.result.getter[1];
    v28 = swift_task_alloc();
    v0[14] = v28;
    *v28 = v0;
    v28[1] = sub_100011C24;
    v14 = (v0 + 15);
    goto LABEL_22;
  }

  *(v0[2] + 96) = 0;
  v29 = v0[1];

  return v29();
}

uint64_t sub_100010B20()
{
  v1 = *(*v0 + 32);
  v3 = *v0;

  return _swift_task_switch(sub_100010C1C, 0, 0);
}

uint64_t sub_100010C1C()
{
  v2 = *(v0 + 2);
  v1 = *(v0 + 3);

  v3 = *(v2 + 56);
  v4 = *(v0 + 2);
  *(v4 + 56) = 0;

  v5 = *(v4 + 64);
  *(v0 + 5) = v5;
  if (v5)
  {

    Task.cancel()();
    v6 = async function pointer to Task.result.getter[1];
    v7 = swift_task_alloc();
    *(v0 + 6) = v7;
    *v7 = v0;
    v7[1] = sub_100010FAC;
    v8 = v0 + 124;
LABEL_11:

    return Task.result.getter(v8, v5, &type metadata for () + 8, &type metadata for Never, &protocol witness table for Never);
  }

  v9 = *(v0 + 2);
  *(v9 + 64) = 0;
  v5 = *(v9 + 72);
  *(v0 + 7) = v5;
  if (v5)
  {

    Task.cancel()();
    v10 = async function pointer to Task.result.getter[1];
    v11 = swift_task_alloc();
    *(v0 + 8) = v11;
    *v11 = v0;
    v11[1] = sub_1000113A8;
    v8 = v0 + 123;
    goto LABEL_11;
  }

  v12 = *(v0 + 2);
  *(v12 + 72) = 0;
  v5 = *(v12 + 80);
  *(v0 + 9) = v5;
  if (v5)
  {

    Task.cancel()();
    v13 = async function pointer to Task.result.getter[1];
    v14 = swift_task_alloc();
    *(v0 + 10) = v14;
    *v14 = v0;
    v14[1] = sub_100011710;
    v8 = v0 + 122;
    goto LABEL_11;
  }

  v15 = *(v0 + 2);
  *(v15 + 80) = 0;
  v5 = *(v15 + 88);
  *(v0 + 11) = v5;
  if (v5)
  {

    Task.cancel()();
    v16 = async function pointer to Task.result.getter[1];
    v17 = swift_task_alloc();
    *(v0 + 12) = v17;
    *v17 = v0;
    v17[1] = sub_1000119E4;
    v8 = v0 + 121;
    goto LABEL_11;
  }

  v18 = *(v0 + 2);
  *(v18 + 88) = 0;
  v5 = *(v18 + 96);
  *(v0 + 13) = v5;
  if (v5)
  {

    Task.cancel()();
    v19 = async function pointer to Task.result.getter[1];
    v20 = swift_task_alloc();
    *(v0 + 14) = v20;
    *v20 = v0;
    v20[1] = sub_100011C24;
    v8 = v0 + 120;
    goto LABEL_11;
  }

  *(*(v0 + 2) + 96) = 0;
  v21 = *(v0 + 1);

  return v21();
}

uint64_t sub_100010FAC()
{
  v1 = *(*v0 + 48);
  v3 = *v0;

  return _swift_task_switch(sub_1000110A8, 0, 0);
}

uint64_t sub_1000110A8()
{
  v1 = *(v0 + 5);
  v2 = *(v0 + 2);

  v3 = *(v2 + 64);
  v4 = *(v0 + 2);
  *(v4 + 64) = 0;

  v5 = *(v4 + 72);
  *(v0 + 7) = v5;
  if (v5)
  {

    Task.cancel()();
    v6 = async function pointer to Task.result.getter[1];
    v7 = swift_task_alloc();
    *(v0 + 8) = v7;
    *v7 = v0;
    v7[1] = sub_1000113A8;
    v8 = v0 + 123;
LABEL_9:

    return Task.result.getter(v8, v5, &type metadata for () + 8, &type metadata for Never, &protocol witness table for Never);
  }

  v9 = *(v0 + 2);
  *(v9 + 72) = 0;
  v5 = *(v9 + 80);
  *(v0 + 9) = v5;
  if (v5)
  {

    Task.cancel()();
    v10 = async function pointer to Task.result.getter[1];
    v11 = swift_task_alloc();
    *(v0 + 10) = v11;
    *v11 = v0;
    v11[1] = sub_100011710;
    v8 = v0 + 122;
    goto LABEL_9;
  }

  v12 = *(v0 + 2);
  *(v12 + 80) = 0;
  v5 = *(v12 + 88);
  *(v0 + 11) = v5;
  if (v5)
  {

    Task.cancel()();
    v13 = async function pointer to Task.result.getter[1];
    v14 = swift_task_alloc();
    *(v0 + 12) = v14;
    *v14 = v0;
    v14[1] = sub_1000119E4;
    v8 = v0 + 121;
    goto LABEL_9;
  }

  v15 = *(v0 + 2);
  *(v15 + 88) = 0;
  v5 = *(v15 + 96);
  *(v0 + 13) = v5;
  if (v5)
  {

    Task.cancel()();
    v16 = async function pointer to Task.result.getter[1];
    v17 = swift_task_alloc();
    *(v0 + 14) = v17;
    *v17 = v0;
    v17[1] = sub_100011C24;
    v8 = v0 + 120;
    goto LABEL_9;
  }

  *(*(v0 + 2) + 96) = 0;
  v18 = *(v0 + 1);

  return v18();
}

uint64_t sub_1000113A8()
{
  v1 = *(*v0 + 64);
  v3 = *v0;

  return _swift_task_switch(sub_1000114A4, 0, 0);
}

uint64_t sub_1000114A4()
{
  v1 = *(v0 + 7);
  v2 = *(v0 + 2);

  v3 = *(v2 + 72);
  v4 = *(v0 + 2);
  *(v4 + 72) = 0;

  v5 = *(v4 + 80);
  *(v0 + 9) = v5;
  if (v5)
  {

    Task.cancel()();
    v6 = async function pointer to Task.result.getter[1];
    v7 = swift_task_alloc();
    *(v0 + 10) = v7;
    *v7 = v0;
    v7[1] = sub_100011710;
    v8 = v0 + 122;
LABEL_7:

    return Task.result.getter(v8, v5, &type metadata for () + 8, &type metadata for Never, &protocol witness table for Never);
  }

  v9 = *(v0 + 2);
  *(v9 + 80) = 0;
  v5 = *(v9 + 88);
  *(v0 + 11) = v5;
  if (v5)
  {

    Task.cancel()();
    v10 = async function pointer to Task.result.getter[1];
    v11 = swift_task_alloc();
    *(v0 + 12) = v11;
    *v11 = v0;
    v11[1] = sub_1000119E4;
    v8 = v0 + 121;
    goto LABEL_7;
  }

  v12 = *(v0 + 2);
  *(v12 + 88) = 0;
  v5 = *(v12 + 96);
  *(v0 + 13) = v5;
  if (v5)
  {

    Task.cancel()();
    v13 = async function pointer to Task.result.getter[1];
    v14 = swift_task_alloc();
    *(v0 + 14) = v14;
    *v14 = v0;
    v14[1] = sub_100011C24;
    v8 = v0 + 120;
    goto LABEL_7;
  }

  *(*(v0 + 2) + 96) = 0;
  v15 = *(v0 + 1);

  return v15();
}

uint64_t sub_100011710()
{
  v1 = *(*v0 + 80);
  v3 = *v0;

  return _swift_task_switch(sub_10001180C, 0, 0);
}

uint64_t sub_10001180C()
{
  v1 = v0[9];
  v2 = v0[2];

  v3 = *(v2 + 80);
  v4 = v0[2];
  *(v4 + 80) = 0;

  v5 = *(v4 + 88);
  v0[11] = v5;
  if (v5)
  {

    Task.cancel()();
    v6 = async function pointer to Task.result.getter[1];
    v7 = swift_task_alloc();
    v0[12] = v7;
    *v7 = v0;
    v7[1] = sub_1000119E4;
    v8 = (v0 + 121);
LABEL_5:

    return Task.result.getter(v8, v5, &type metadata for () + 8, &type metadata for Never, &protocol witness table for Never);
  }

  v9 = v0[2];
  *(v9 + 88) = 0;
  v5 = *(v9 + 96);
  v0[13] = v5;
  if (v5)
  {

    Task.cancel()();
    v10 = async function pointer to Task.result.getter[1];
    v11 = swift_task_alloc();
    v0[14] = v11;
    *v11 = v0;
    v11[1] = sub_100011C24;
    v8 = v0 + 15;
    goto LABEL_5;
  }

  *(v0[2] + 96) = 0;
  v12 = v0[1];

  return v12();
}

uint64_t sub_1000119E4()
{
  v1 = *(*v0 + 96);
  v3 = *v0;

  return _swift_task_switch(sub_100011AE0, 0, 0);
}

uint64_t sub_100011AE0()
{
  v1 = v0[11];
  v2 = v0[2];

  v3 = *(v2 + 88);
  v4 = v0[2];
  *(v4 + 88) = 0;

  v5 = *(v4 + 96);
  v0[13] = v5;
  if (v5)
  {

    Task.cancel()();
    v6 = async function pointer to Task.result.getter[1];
    v7 = swift_task_alloc();
    v0[14] = v7;
    *v7 = v0;
    v7[1] = sub_100011C24;

    return Task.result.getter(v0 + 15, v5, &type metadata for () + 8, &type metadata for Never, &protocol witness table for Never);
  }

  else
  {
    *(v0[2] + 96) = 0;
    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_100011C24()
{
  v1 = *(*v0 + 112);
  v3 = *v0;

  return _swift_task_switch(sub_100011D20, 0, 0);
}

uint64_t sub_100011D20()
{
  v1 = v0[13];
  v2 = v0[2];

  v3 = *(v2 + 96);
  *(v0[2] + 96) = 0;

  v4 = v0[1];

  return v4();
}

uint64_t sub_100011D94(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v3 = type metadata accessor for TaskPriority();
  v2[10] = v3;
  v4 = *(v3 - 8);
  v2[11] = v4;
  v5 = *(v4 + 64) + 15;
  v2[12] = swift_task_alloc();

  return _swift_task_switch(sub_100011E54, 0, 0);
}

uint64_t sub_100011E54()
{
  v1 = *(*(v0 + 72) + 104);
  *(v0 + 104) = v1;
  return _swift_task_switch(sub_100011E78, v1, 0);
}

uint64_t sub_100011E78()
{
  v1 = v0[13];
  v2 = v1[20];
  v0[14] = v2;
  v3 = v1[21];
  v0[15] = v3;
  v0[16] = v1[22];
  v0[17] = v1[23];
  v0[18] = v1[24];
  v0[19] = v1[25];
  sub_100025418(v2, v3);

  return _swift_task_switch(sub_100011F10, 0, 0);
}

uint64_t sub_100011F10()
{
  v1 = *(v0 + 120);
  if (v1)
  {
    v2 = *(v0 + 112);
    v3 = *(v0 + 96);
    v4 = *(v0 + 64);
    v12 = *(v0 + 144);
    v13 = *(v0 + 128);

    *v4 = v2;
    *(v4 + 8) = v1;
    *(v4 + 16) = v13;
    *(v4 + 32) = v12;
    v5 = *(v0 + 8);

    return v5();
  }

  else
  {
    v7 = *(v0 + 96);
    v8 = *(*(v0 + 72) + 16);
    v9 = swift_allocObject();
    *(v0 + 160) = v9;
    swift_weakInit();
    static TaskPriority.userInitiated.getter();
    v10 = swift_task_alloc();
    *(v0 + 168) = v10;
    *v10 = v0;
    v10[1] = sub_10001209C;
    v11 = *(v0 + 96);

    return sub_100043DF8(v0 + 16, 0xD000000000000019, 0x8000000100068710, v11, &unk_100061780, v9);
  }
}

uint64_t sub_10001209C()
{
  v1 = *v0;
  v2 = *(*v0 + 168);
  v3 = *(*v0 + 160);
  v4 = *(*v0 + 96);
  v5 = *(*v0 + 88);
  v6 = *(*v0 + 80);
  v7 = *v0;

  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v14 = *(v1 + 32);
  v15 = *(v1 + 16);

  (*(v5 + 8))(v4, v6);
  v10 = *(v1 + 96);
  v11 = *(v1 + 64);

  *v11 = v15;
  *(v11 + 16) = v14;
  *(v11 + 32) = v8;
  *(v11 + 40) = v9;
  v12 = *(v7 + 8);

  return v12();
}

uint64_t sub_100012278(uint64_t a1, char a2)
{
  *(v3 + 88) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  v4 = type metadata accessor for TaskPriority();
  *(v3 + 32) = v4;
  v5 = *(v4 - 8);
  *(v3 + 40) = v5;
  v6 = *(v5 + 64) + 15;
  *(v3 + 48) = swift_task_alloc();

  return _swift_task_switch(sub_10001233C, 0, 0);
}

uint64_t sub_10001233C()
{
  v43 = v0;
  v1 = *(v0 + 88);
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = swift_allocObject();
  swift_weakInit();
  v5 = swift_allocObject();
  *(v0 + 56) = v5;
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v40 = v3;
  v6 = swift_allocObject();
  swift_weakInit();
  v7 = swift_allocObject();
  v41 = v0;
  *(v0 + 64) = v7;
  *(v7 + 16) = v6;
  *(v7 + 24) = v3;
  sub_100003B30(&qword_100083930, &qword_100061980);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_100061540;
  if (v1)
  {
    v9 = &unk_1000619E0;
  }

  else
  {
    v9 = &unk_1000619D0;
  }

  if (v1)
  {
    v10 = v7;
  }

  else
  {
    v10 = v5;
  }

  if (v1)
  {
    v11 = &unk_100061A08;
  }

  else
  {
    v11 = &unk_1000619E8;
  }

  if (v1)
  {
    v12 = &unk_1000619D0;
  }

  else
  {
    v12 = &unk_1000619E0;
  }

  if (v1)
  {
    v13 = v5;
  }

  else
  {
    v13 = v7;
  }

  if (v1)
  {
    v14 = &unk_100061A10;
  }

  else
  {
    v14 = &unk_1000619F0;
  }

  v15 = swift_allocObject();
  *(v15 + 16) = v9;
  *(v15 + 24) = v10;
  *(v8 + 32) = v11;
  *(v8 + 40) = v15;
  v16 = swift_allocObject();
  *(v16 + 16) = v12;
  *(v16 + 24) = v13;
  *(v8 + 48) = v14;
  *(v8 + 56) = v16;
  v17 = qword_1000831F0;
  v18 = v40;

  if (v17 != -1)
  {
    swift_once();
  }

  v19 = *(v41 + 24);
  v20 = type metadata accessor for Logger();
  sub_1000080BC(v20, qword_100086758);

  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = *(v41 + 24);
    v24 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    *v24 = 136315650;
    v39 = v8;
    if (*(v23 + 24))
    {
      if (*(v23 + 24) == 1)
      {
        v25 = 0xE600000000000000;
        v26 = 0x7070412D6E49;
      }

      else
      {
        v25 = 0xE800000000000000;
        v26 = 0x73676E6974746553;
      }
    }

    else
    {
      v25 = 0xE200000000000000;
      v26 = 17219;
    }

    v27 = *(v41 + 88);
    v28 = sub_10005305C(v26, v25, &v42);

    *(v24 + 4) = v28;
    *(v24 + 12) = 2080;
    if (v27)
    {
      v29 = 0x6C6F686563616C70;
    }

    else
    {
      v29 = 0x746E65696C63;
    }

    if (v27)
    {
      v30 = 0xEB00000000726564;
    }

    else
    {
      v30 = 0xE600000000000000;
    }

    if (v27)
    {
      v31 = 0x746E65696C63;
    }

    else
    {
      v31 = 0x6C6F686563616C70;
    }

    if (v27)
    {
      v32 = 0xE600000000000000;
    }

    else
    {
      v32 = 0xEB00000000726564;
    }

    v33 = sub_10005305C(v29, v30, &v42);

    *(v24 + 14) = v33;
    *(v24 + 22) = 2080;
    v34 = sub_10005305C(v31, v32, &v42);

    *(v24 + 24) = v34;
    _os_log_impl(&_mh_execute_header, v21, v22, "[%s] Sending set preferred input notification to %s first, then %s", v24, 0x20u);
    swift_arrayDestroy();

    v8 = v39;
  }

  else
  {
  }

  v35 = *(v41 + 48);
  v36 = *(*(v41 + 24) + 16);
  *(v41 + 72) = v36;
  static TaskPriority.userInitiated.getter();
  v37 = swift_allocObject();
  *(v41 + 80) = v37;
  *(v37 + 16) = v8;

  return _swift_task_switch(sub_1000127C0, v36, 0);
}

uint64_t sub_1000127C0()
{
  v1 = v0[9];
  v3 = v0[5];
  v2 = v0[6];
  v4 = v0[4];
  sub_100055760(0xD000000000000014, 0x8000000100068800, v2, &unk_100061A00, v0[10]);

  (*(v3 + 8))(v2, v4);

  return _swift_task_switch(sub_100012894, 0, 0);
}

uint64_t sub_100012894()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];

  v4 = v0[1];

  return v4();
}

uint64_t sub_100012908(uint64_t a1, uint64_t a2)
{
  *(v2 + 192) = a1;
  *(v2 + 200) = a2;
  return _swift_task_switch(sub_100012928, 0, 0);
}

uint64_t sub_100012928()
{
  v29 = v0;
  v1 = v0[24];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[26] = Strong;
  if (Strong)
  {
    v3 = Strong;
    v4 = *(Strong + 120);
    if (v4)
    {
      v5 = *(Strong + 112);
      sub_100003B30(&qword_1000838C8, &unk_1000617B0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_100061540;
      v7 = AVInputContextSetInputDeviceInitiatorKey;
      *(inited + 32) = AVInputContextSetInputDeviceInitiatorKey;
      *(inited + 40) = v5;
      *(inited + 48) = v4;
      v8 = AVInputContextSetInputDeviceHostApplicationBundleIDKey;
      *(inited + 64) = &type metadata for String;
      *(inited + 72) = v8;
      *(inited + 104) = &type metadata for String;
      *(inited + 80) = v5;
      *(inited + 88) = v4;
      swift_bridgeObjectRetain_n();
      v9 = v7;
      v10 = v8;
      v11 = sub_100053740(inited);
      swift_setDeallocating();
      sub_100003B30(&qword_1000838D0, &qword_100063550);
      swift_arrayDestroy();
    }

    else
    {
      v11 = sub_100053740(_swiftEmptyArrayStorage);
    }

    v0[27] = v11;
    if (qword_1000831F0 != -1)
    {
      swift_once();
    }

    v14 = v0[25];
    v15 = type metadata accessor for Logger();
    v0[28] = sub_1000080BC(v15, qword_100086758);

    v16 = v14;
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v28 = v21;
      *v19 = 136315394;
      if (*(v3 + 24))
      {
        if (*(v3 + 24) == 1)
        {
          v22 = 0xE600000000000000;
          v23 = 0x7070412D6E49;
        }

        else
        {
          v22 = 0xE800000000000000;
          v23 = 0x73676E6974746553;
        }
      }

      else
      {
        v22 = 0xE200000000000000;
        v23 = 17219;
      }

      v24 = v0[25];
      v25 = sub_10005305C(v23, v22, &v28);

      *(v19 + 4) = v25;
      *(v19 + 12) = 2112;
      *(v19 + 14) = v24;
      *v20 = v24;
      v26 = v24;
      _os_log_impl(&_mh_execute_header, v17, v18, "[%s] Trying to set new input device for client with id: %@", v19, 0x16u);
      sub_100008B68(v20, &qword_1000838D8, &unk_1000617C0);

      sub_100004B28(v21);
    }

    else
    {
      v24 = v0[25];
    }

    v0[29] = v24;
    sub_100004BCC((v3 + 144), *(v3 + 168));
    v27 = swift_task_alloc();
    v0[30] = v27;
    *v27 = v0;
    v27[1] = sub_100012D7C;

    return (sub_1000090F0)(v0 + 16, &type metadata for MXAVInputContextFactory, &off_100079F00);
  }

  else
  {
    v12 = v0[1];

    return v12();
  }
}

uint64_t sub_100012D7C()
{
  v1 = *(*v0 + 240);
  v3 = *v0;

  return _swift_task_switch(sub_100012E78, 0, 0);
}

uint64_t sub_100012E78()
{
  v1 = v0[27];
  v2 = v0[19];
  v3 = v0[20];
  sub_100004BCC(v0 + 16, v2);
  v4 = *(v3 + 24);
  v9 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  v0[31] = v6;
  *v6 = v0;
  v6[1] = sub_100012FB8;
  v7 = v0[29];

  return v9(v7, v1, v2, v3);
}

uint64_t sub_100012FB8(uint64_t a1)
{
  v2 = *(*v1 + 248);
  v3 = *(*v1 + 216);
  v5 = *v1;
  *(*v1 + 256) = a1;

  return _swift_task_switch(sub_1000130D8, 0, 0);
}

uint64_t sub_1000130D8()
{
  v20 = v0;
  v1 = v0[32];
  v2 = v0[28];
  v3 = v0[26];
  sub_100004B28(v0 + 16);
  v4 = v1;

  v5 = v4;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[26];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v19 = v10;
    *v9 = 136315394;
    if (*(v8 + 24))
    {
      if (*(v8 + 24) == 1)
      {
        v11 = 0xE600000000000000;
        v12 = 0x7070412D6E49;
      }

      else
      {
        v11 = 0xE800000000000000;
        v12 = 0x73676E6974746553;
      }
    }

    else
    {
      v11 = 0xE200000000000000;
      v12 = 17219;
    }

    v14 = v0[32];
    v15 = sub_10005305C(v12, v11, &v19);

    *(v9 + 4) = v15;
    *(v9 + 12) = 2048;
    v16 = [v14 status];

    *(v9 + 14) = v16;
    _os_log_impl(&_mh_execute_header, v6, v7, "[%s] Set new input completes with status %ld", v9, 0x16u);
    sub_100004B28(v10);
  }

  else
  {
    v13 = v0[32];
  }

  v17 = *(v0[26] + 104);
  v0[33] = v17;

  return _swift_task_switch(sub_1000132C8, v17, 0);
}

uint64_t sub_1000132C8()
{
  v1 = v0[33];
  sub_1000099C4();
  v2 = swift_task_alloc();
  v0[34] = v2;
  *v2 = v0;
  v2[1] = sub_100013364;
  v3 = v0[26];

  return sub_1000134C8(0);
}

uint64_t sub_100013364()
{
  v1 = *(*v0 + 272);
  v3 = *v0;

  return _swift_task_switch(sub_100013460, 0, 0);
}

uint64_t sub_100013460()
{
  v1 = v0[32];
  v2 = v0[26];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1000134C8(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 64) = a1;
  v3 = type metadata accessor for TaskPriority();
  *(v2 + 24) = v3;
  v4 = *(v3 - 8);
  *(v2 + 32) = v4;
  v5 = *(v4 + 64) + 15;
  *(v2 + 40) = swift_task_alloc();

  return _swift_task_switch(sub_10001358C, 0, 0);
}

uint64_t sub_10001358C()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 64);
  v3 = *(*(v0 + 16) + 16);
  v4 = swift_allocObject();
  swift_weakInit();
  v5 = swift_allocObject();
  *(v0 + 48) = v5;
  *(v5 + 16) = v4;
  *(v5 + 24) = v2;
  static TaskPriority.userInitiated.getter();
  v6 = swift_task_alloc();
  *(v0 + 56) = v6;
  *v6 = v0;
  v6[1] = sub_1000136D4;
  v7 = *(v0 + 40);

  return sub_100043604();
}

uint64_t sub_1000136D4()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 48);
  v3 = *(*v0 + 40);
  v4 = *(*v0 + 32);
  v5 = *(*v0 + 24);
  v7 = *v0;

  (*(v4 + 8))(v3, v5);

  return _swift_task_switch(sub_100027428, 0, 0);
}

uint64_t sub_100013848(uint64_t a1, uint64_t a2)
{
  *(v2 + 192) = a1;
  *(v2 + 200) = a2;
  return _swift_task_switch(sub_100013868, 0, 0);
}

uint64_t sub_100013868()
{
  v30 = v0;
  v1 = v0[24];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[26] = Strong;
  if (Strong)
  {
    v3 = Strong;
    sub_100003B30(&qword_1000838C8, &unk_1000617B0);
    inited = swift_initStackObject();
    v5 = inited;
    *(inited + 16) = xmmword_100061540;
    v6 = AVInputContextSetInputDeviceInitiatorKey;
    *(inited + 32) = AVInputContextSetInputDeviceInitiatorKey;
    if (*(v3 + 24))
    {
      v7 = 0xD000000000000023;
    }

    else
    {
      v7 = 0xD000000000000015;
    }

    if (*(v3 + 24))
    {
      v8 = "userPreferredInputRoute()";
    }

    else
    {
      v8 = "AVKitRoutingService";
    }

    v9 = v8 | 0x8000000000000000;
    *(inited + 40) = v7;
    *(inited + 48) = v9;
    v10 = AVInputContextSetInputDeviceHostApplicationBundleIDKey;
    *(inited + 64) = &type metadata for String;
    *(inited + 72) = v10;
    *(inited + 104) = &type metadata for String;
    *(inited + 80) = v7;
    *(inited + 88) = v9;
    v11 = v6;
    v12 = v10;
    v0[27] = sub_100053740(v5);
    swift_setDeallocating();
    sub_100003B30(&qword_1000838D0, &qword_100063550);
    swift_arrayDestroy();
    if (qword_1000831F0 != -1)
    {
      swift_once();
    }

    v13 = v0[25];
    v14 = type metadata accessor for Logger();
    v0[28] = sub_1000080BC(v14, qword_100086758);

    v15 = v13;
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v29 = v20;
      *v18 = 136315394;
      if (*(v3 + 24))
      {
        if (*(v3 + 24) == 1)
        {
          v21 = 0xE600000000000000;
          v22 = 0x7070412D6E49;
        }

        else
        {
          v21 = 0xE800000000000000;
          v22 = 0x73676E6974746553;
        }
      }

      else
      {
        v21 = 0xE200000000000000;
        v22 = 17219;
      }

      v25 = v0[25];
      v26 = sub_10005305C(v22, v21, &v29);

      *(v18 + 4) = v26;
      *(v18 + 12) = 2112;
      *(v18 + 14) = v25;
      *v19 = v25;
      v27 = v25;
      _os_log_impl(&_mh_execute_header, v16, v17, "[%s] Trying to set new input device for metering placeholder with id %@", v18, 0x16u);
      sub_100008B68(v19, &qword_1000838D8, &unk_1000617C0);

      sub_100004B28(v20);
    }

    else
    {
      v25 = v0[25];
    }

    v0[29] = v25;
    sub_100004BCC((v3 + 144), *(v3 + 168));
    v28 = swift_task_alloc();
    v0[30] = v28;
    *v28 = v0;
    v28[1] = sub_100013CC4;

    return (sub_1000090F0)(v0 + 16, &type metadata for MXAVInputContextFactory, &off_100079F00);
  }

  else
  {
    v23 = v0[1];

    return v23();
  }
}

uint64_t sub_100013CC4()
{
  v1 = *(*v0 + 240);
  v3 = *v0;

  return _swift_task_switch(sub_100013DC0, 0, 0);
}

uint64_t sub_100013DC0()
{
  v1 = v0[27];
  v2 = v0[19];
  v3 = v0[20];
  sub_100004BCC(v0 + 16, v2);
  v4 = *(v3 + 24);
  v9 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  v0[31] = v6;
  *v6 = v0;
  v6[1] = sub_100013F00;
  v7 = v0[29];

  return v9(v7, v1, v2, v3);
}

uint64_t sub_100013F00(uint64_t a1)
{
  v2 = *(*v1 + 248);
  v3 = *(*v1 + 216);
  v5 = *v1;
  *(*v1 + 256) = a1;

  return _swift_task_switch(sub_100014020, 0, 0);
}

uint64_t sub_100014020()
{
  v22 = v0;
  v1 = v0[32];
  v2 = v0[28];
  v3 = v0[26];
  sub_100004B28(v0 + 16);
  v4 = v1;

  v5 = v4;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[26];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v21 = v10;
    *v9 = 136315394;
    if (*(v8 + 24))
    {
      if (*(v8 + 24) == 1)
      {
        v11 = 0xE600000000000000;
        v12 = 0x7070412D6E49;
      }

      else
      {
        v11 = 0xE800000000000000;
        v12 = 0x73676E6974746553;
      }
    }

    else
    {
      v11 = 0xE200000000000000;
      v12 = 17219;
    }

    v15 = v0[32];
    v16 = v0[26];
    v17 = sub_10005305C(v12, v11, &v21);

    *(v9 + 4) = v17;
    *(v9 + 12) = 2048;
    v18 = [v15 status];

    *(v9 + 14) = v18;
    _os_log_impl(&_mh_execute_header, v6, v7, "[%s] set new input on metering placeholder session completed with status %ld", v9, 0x16u);
    sub_100004B28(v10);
  }

  else
  {
    v13 = v0[32];
    v14 = v0[26];
  }

  v19 = v0[1];

  return v19();
}

uint64_t sub_100014228(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100014310;

  return v6();
}

uint64_t sub_100014310()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

void sub_100014424()
{
  v1 = v0[2];
  v2 = v1[2];
  v0[3] = v2;
  if (v2)
  {
    v3 = v1[4];
    v0[4] = v1[5];

    v6 = (v3 + *v3);
    v4 = v3[1];
    v5 = swift_task_alloc();
    v0[5] = v5;
    *v5 = v0;
    v5[1] = sub_100014534;

    v6();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100014534()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 32);
  v4 = *v0;

  return _swift_task_switch(sub_10001464C, 0, 0);
}

void sub_10001464C()
{
  if (v0[3] == 1)
  {
    __break(1u);
  }

  else
  {
    v2 = v0[2];
    v3 = *(v2 + 48);
    v0[6] = *(v2 + 56);

    v6 = (v3 + *v3);
    v4 = v3[1];
    v5 = swift_task_alloc();
    v0[7] = v5;
    *v5 = v0;
    v5[1] = sub_100027394;

    v6();
  }
}

uint64_t sub_10001475C(uint64_t a1, uint64_t a2)
{
  *(v2 + 272) = a1;
  *(v2 + 280) = a2;
  return _swift_task_switch(sub_10001477C, 0, 0);
}

uint64_t sub_10001477C()
{
  v1 = v0[35];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[36] = Strong;
  if (Strong)
  {
    sub_100004BCC((Strong + 144), *(Strong + 168));
    v3 = swift_task_alloc();
    v0[37] = v3;
    *v3 = v0;
    v3[1] = sub_10001491C;

    return (sub_1000090F0)(v0 + 14, &type metadata for MXAVInputContextFactory, &off_100079F00);
  }

  else
  {
    v5 = v0[34];
    v5[1] = 0u;
    v5[2] = 0u;
    *v5 = 0u;
    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_10001491C()
{
  v1 = *(*v0 + 296);
  v3 = *v0;

  return _swift_task_switch(sub_100014A18, 0, 0);
}

uint64_t sub_100014A18()
{
  v1 = v0[36];
  v2 = v0[17];
  v3 = v0[18];
  sub_100004BCC(v0 + 14, v2);
  v4 = *(v1 + 112);
  v5 = *(v1 + 120);
  v0[38] = v5;
  v6 = *(v3 + 16);

  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  v0[39] = v8;
  *v8 = v0;
  v8[1] = sub_100014B6C;

  return v10(v4, v5, v2, v3);
}

uint64_t sub_100014B6C(uint64_t a1)
{
  v2 = *(*v1 + 312);
  v3 = *(*v1 + 304);
  v5 = *v1;
  *(*v1 + 320) = a1;

  return _swift_task_switch(sub_100014C8C, 0, 0);
}

uint64_t sub_100014C8C()
{
  v24 = v0;
  v1 = *(v0 + 320);
  if (v1)
  {
    v2 = *(v0 + 288);
    sub_100004B28((v0 + 112));
    v3 = *(v2 + 104);
    *(v0 + 328) = v3;

    v4 = v1;
    sub_100039078(v4, (v0 + 64));
    *(v0 + 336) = *(v0 + 64);
    *(v0 + 352) = *(v0 + 80);
    *(v0 + 360) = *(v0 + 88);
    *(v0 + 376) = *(v0 + 104);

    return _swift_task_switch(sub_100014F80, v3, 0);
  }

  else
  {
    sub_100004B28((v0 + 112));
    if (qword_1000831F0 != -1)
    {
      swift_once();
    }

    v5 = *(v0 + 288);
    v6 = type metadata accessor for Logger();
    sub_1000080BC(v6, qword_100086758);

    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();

    v9 = os_log_type_enabled(v7, v8);
    v10 = *(v0 + 288);
    if (v9)
    {
      v11 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *v11 = 136315394;
      if (*(v10 + 24))
      {
        if (*(v10 + 24) == 1)
        {
          v12 = 0xE600000000000000;
          v13 = 0x7070412D6E49;
        }

        else
        {
          v12 = 0xE800000000000000;
          v13 = 0x73676E6974746553;
        }
      }

      else
      {
        v12 = 0xE200000000000000;
        v13 = 17219;
      }

      v14 = *(v0 + 288);
      v15 = sub_10005305C(v13, v12, &v23);

      *(v11 + 4) = v15;
      *(v11 + 12) = 2080;
      v16 = *(v14 + 120);
      if (v16)
      {
        v17 = *(*(v0 + 288) + 112);
        v18 = v16;
      }

      else
      {
        v18 = 0xE300000000000000;
        v17 = 7104878;
      }

      v19 = sub_10005305C(v17, v18, &v23);

      *(v11 + 14) = v19;
      _os_log_impl(&_mh_execute_header, v7, v8, "[%s] requesting userPreferredInputDevice for %s is nil", v11, 0x16u);
      swift_arrayDestroy();
    }

    v20 = *(v0 + 272);
    v20[1] = 0u;
    v20[2] = 0u;
    *v20 = 0u;
    v21 = *(v0 + 8);

    return v21();
  }
}

uint64_t sub_100014F80()
{
  v1 = *(v0 + 376);
  v2 = *(v0 + 360);
  v3 = *(v0 + 352);
  v4 = *(v0 + 336);
  v5 = *(v0 + 328);
  v6 = *(v0 + 80);
  *(v0 + 176) = *(v0 + 64);
  *(v0 + 192) = v6;
  *(v0 + 208) = *(v0 + 96);
  v7 = v5[20];
  v8 = v5[21];
  v9 = v5[22];
  v10 = v5[23];
  v11 = v5[24];
  v12 = v5[25];
  *(v5 + 10) = v4;
  v5[22] = v3;
  *(v5 + 23) = v2;
  v5[25] = v1;
  sub_100025FCC(v0 + 176, v0 + 224);
  sub_100025FCC(v0 + 192, v0 + 240);
  sub_100025FCC(v0 + 208, v0 + 256);
  sub_1000253A0(v7, v8);
  sub_100026028(v0 + 176);
  sub_100026028(v0 + 192);
  sub_100026028(v0 + 208);

  return _swift_task_switch(sub_10001509C, 0, 0);
}

uint64_t sub_10001509C()
{
  v24 = v0;
  if (qword_1000831F0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 288);
  v2 = type metadata accessor for Logger();
  sub_1000080BC(v2, qword_100086758);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 288);
    v6 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *v6 = 136315394;
    if (*(v5 + 24))
    {
      if (*(v5 + 24) == 1)
      {
        v7 = 0xE600000000000000;
        v8 = 0x7070412D6E49;
      }

      else
      {
        v7 = 0xE800000000000000;
        v8 = 0x73676E6974746553;
      }
    }

    else
    {
      v7 = 0xE200000000000000;
      v8 = 17219;
    }

    v9 = *(v0 + 288);
    v10 = sub_10005305C(v8, v7, &v23);

    *(v6 + 4) = v10;
    *(v6 + 12) = 2080;
    if (*(v9 + 120))
    {
      v11 = *(*(v0 + 288) + 112);
      v12 = *(v9 + 120);
    }

    else
    {
      v12 = 0xE300000000000000;
      v11 = 7104878;
    }

    v13 = sub_10005305C(v11, v12, &v23);

    *(v6 + 14) = v13;
    _os_log_impl(&_mh_execute_header, v3, v4, "[%s] requesting userPreferredInputDevice for %s", v6, 0x16u);
    swift_arrayDestroy();
  }

  v14 = *(v0 + 320);
  v15 = *(v0 + 288);
  v16 = *(v0 + 272);
  sub_100039078(v14, (v0 + 16));
  v21 = *(v0 + 32);
  v22 = *(v0 + 16);
  v17 = *(v0 + 48);
  v18 = *(v0 + 56);

  *v16 = v22;
  *(v16 + 16) = v21;
  *(v16 + 32) = v17;
  *(v16 + 40) = v18;
  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_10001530C(uint64_t a1, uint64_t a2)
{
  *(v2 + 248) = a1;
  *(v2 + 256) = a2;
  return _swift_task_switch(sub_10001532C, 0, 0);
}

uint64_t sub_10001532C()
{
  v1 = v0[32];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[33] = Strong;
  if (Strong)
  {
    v3 = *(Strong + 128);
    v0[34] = v3;
    v4 = *(v3 + 16);
    v5 = async function pointer to Task<>.value.getter[1];

    v6 = swift_task_alloc();
    v0[35] = v6;
    v7 = sub_100008398(0, &qword_100083888, AVInputDeviceDiscoverySession_ptr);
    v0[36] = v7;
    *v6 = v0;
    v6[1] = sub_100015468;

    return Task<>.value.getter(v0 + 29, v4, v7);
  }

  else
  {
    v8 = v0[31];
    *v8 = 0;
    v8[1] = 0xE000000000000000;
    v8[2] = 0;
    v8[3] = 0xE000000000000000;
    v8[4] = 0;
    v8[5] = 0xE000000000000000;
    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_100015468()
{
  v1 = *(*v0 + 280);
  v3 = *v0;

  return _swift_task_switch(sub_100015564, 0, 0);
}

uint64_t sub_100015564()
{
  v36 = v0;
  v1 = *(v0 + 272);

  v2 = *(v0 + 232);
  v3 = [v2 fallbackInputDevice];
  *(v0 + 296) = v3;

  v4 = [v3 deviceName];
  if (v4)
  {

    v5 = [v3 deviceName];
    if (!v5)
    {
LABEL_8:
      *(v0 + 320) = v3;
      if (qword_1000831F0 != -1)
      {
        swift_once();
      }

      v12 = *(v0 + 264);
      v13 = type metadata accessor for Logger();
      sub_1000080BC(v13, qword_100086758);

      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v14, v15))
      {
        v16 = *(v0 + 264);
        v17 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        *v17 = 136315394;
        if (*(v16 + 24))
        {
          if (*(v16 + 24) == 1)
          {
            v18 = 0xE600000000000000;
            v19 = 0x7070412D6E49;
          }

          else
          {
            v18 = 0xE800000000000000;
            v19 = 0x73676E6974746553;
          }
        }

        else
        {
          v18 = 0xE200000000000000;
          v19 = 17219;
        }

        v25 = sub_10005305C(v19, v18, &v35);

        *(v17 + 4) = v25;
        *(v17 + 12) = 2080;
        v26 = [v3 deviceName];
        if (v26)
        {
          v27 = v26;
          v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v30 = v29;
        }

        else
        {
          v30 = 0xE300000000000000;
          v28 = 7104878;
        }

        v31 = sub_10005305C(v28, v30, &v35);

        *(v17 + 14) = v31;
        _os_log_impl(&_mh_execute_header, v14, v15, "[%s] requesting fallbackInputDevice %s", v17, 0x16u);
        swift_arrayDestroy();
      }

      v32 = *(*(v0 + 264) + 104);
      *(v0 + 328) = v32;

      v33 = v3;
      sub_100039078(v33, (v0 + 64));
      *(v0 + 336) = *(v0 + 64);
      *(v0 + 352) = *(v0 + 80);
      *(v0 + 360) = *(v0 + 88);
      *(v0 + 376) = *(v0 + 104);

      return _swift_task_switch(sub_100015D38, v32, 0);
    }

    v6 = v5;
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;

    if (v7)
    {
      v10 = 0;
    }

    else
    {
      v10 = v9 == 0xE000000000000000;
    }

    if (v10)
    {
    }

    else
    {
      v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v11 & 1) == 0)
      {
        goto LABEL_8;
      }
    }
  }

  v20 = *(*(v0 + 264) + 136);
  *(v0 + 304) = v20;
  v21 = *(v20 + 16);
  v22 = async function pointer to Task<>.value.getter[1];

  v23 = swift_task_alloc();
  *(v0 + 312) = v23;
  *v23 = v0;
  v23[1] = sub_100015964;
  v24 = *(v0 + 288);

  return Task<>.value.getter(v0 + 240, v21, v24);
}

uint64_t sub_100015964()
{
  v1 = *(*v0 + 312);
  v3 = *v0;

  return _swift_task_switch(sub_100015A60, 0, 0);
}

uint64_t sub_100015A60()
{
  v24 = v0;
  v2 = *(v0 + 296);
  v1 = *(v0 + 304);

  v3 = *(v0 + 240);
  v4 = [v3 fallbackInputDevice];

  *(v0 + 320) = v4;
  if (qword_1000831F0 != -1)
  {
    swift_once();
  }

  v5 = *(v0 + 264);
  v6 = type metadata accessor for Logger();
  sub_1000080BC(v6, qword_100086758);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = *(v0 + 264);
    v10 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *v10 = 136315394;
    if (*(v9 + 24))
    {
      if (*(v9 + 24) == 1)
      {
        v11 = 0xE600000000000000;
        v12 = 0x7070412D6E49;
      }

      else
      {
        v11 = 0xE800000000000000;
        v12 = 0x73676E6974746553;
      }
    }

    else
    {
      v11 = 0xE200000000000000;
      v12 = 17219;
    }

    v13 = sub_10005305C(v12, v11, &v23);

    *(v10 + 4) = v13;
    *(v10 + 12) = 2080;
    v14 = [v4 deviceName];
    if (v14)
    {
      v15 = v14;
      v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v18 = v17;
    }

    else
    {
      v18 = 0xE300000000000000;
      v16 = 7104878;
    }

    v19 = sub_10005305C(v16, v18, &v23);

    *(v10 + 14) = v19;
    _os_log_impl(&_mh_execute_header, v7, v8, "[%s] requesting fallbackInputDevice %s", v10, 0x16u);
    swift_arrayDestroy();
  }

  v20 = *(*(v0 + 264) + 104);
  *(v0 + 328) = v20;

  v21 = v4;
  sub_100039078(v21, (v0 + 64));
  *(v0 + 336) = *(v0 + 64);
  *(v0 + 352) = *(v0 + 80);
  *(v0 + 360) = *(v0 + 88);
  *(v0 + 376) = *(v0 + 104);

  return _swift_task_switch(sub_100015D38, v20, 0);
}

uint64_t sub_100015D38()
{
  v1 = *(v0 + 376);
  v2 = *(v0 + 360);
  v3 = *(v0 + 352);
  v4 = *(v0 + 80);
  *(v0 + 136) = *(v0 + 64);
  v5 = *(v0 + 336);
  v6 = *(v0 + 328);
  *(v0 + 152) = v4;
  *(v0 + 168) = *(v0 + 96);
  v7 = v6[14];
  v8 = v6[15];
  v9 = v6[16];
  v10 = v6[17];
  v11 = v6[18];
  v12 = v6[19];
  *(v6 + 7) = v5;
  v6[16] = v3;
  *(v6 + 17) = v2;
  v6[19] = v1;
  sub_100025FCC(v0 + 136, v0 + 184);
  sub_100025FCC(v0 + 152, v0 + 200);
  sub_100025FCC(v0 + 168, v0 + 216);
  sub_1000253A0(v7, v8);
  sub_100026028(v0 + 136);
  sub_100026028(v0 + 152);
  sub_100026028(v0 + 168);

  return _swift_task_switch(sub_100015E58, 0, 0);
}

uint64_t sub_100015E58()
{
  v1 = *(v0 + 264);
  v2 = *(v0 + 248);
  v3 = *(v0 + 320);
  sub_100039078(v3, (v0 + 16));

  v4 = *(v0 + 16);
  v5 = *(v0 + 48);
  v2[1] = *(v0 + 32);
  v2[2] = v5;
  *v2 = v4;
  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_100015EF4()
{
  v1[2] = v0;
  v2 = type metadata accessor for TaskPriority();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();

  return _swift_task_switch(sub_100015FB4, 0, 0);
}

uint64_t sub_100015FB4()
{
  v1 = *(*(v0 + 16) + 104);
  *(v0 + 48) = v1;
  return _swift_task_switch(sub_100015FD8, v1, 0);
}

uint64_t sub_100015FD8()
{
  *(v0 + 56) = *(*(v0 + 48) + 256);

  return _swift_task_switch(sub_10001604C, 0, 0);
}

uint64_t sub_10001604C()
{
  v25 = v0;
  if (v0[7])
  {
    if (qword_1000831F0 != -1)
    {
      swift_once();
      v23 = v0[7];
    }

    v1 = v0[2];
    v2 = type metadata accessor for Logger();
    sub_1000080BC(v2, qword_100086758);

    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = v0[2];
      v6 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *v6 = 136315394;
      if (*(v5 + 24))
      {
        if (*(v5 + 24) == 1)
        {
          v7 = 0xE600000000000000;
          v8 = 0x7070412D6E49;
        }

        else
        {
          v7 = 0xE800000000000000;
          v8 = 0x73676E6974746553;
        }
      }

      else
      {
        v7 = 0xE200000000000000;
        v8 = 17219;
      }

      v15 = v0[7];
      v16 = sub_10005305C(v8, v7, &v24);

      *(v6 + 4) = v16;
      *(v6 + 12) = 2080;
      v17 = Array.description.getter();
      v19 = sub_10005305C(v17, v18, &v24);

      *(v6 + 14) = v19;
      _os_log_impl(&_mh_execute_header, v3, v4, "[%s] hit cache for availableRoutes %s", v6, 0x16u);
      swift_arrayDestroy();
    }

    v20 = v0[7];
    v21 = v0[5];

    v22 = v0[1];

    return v22(v20);
  }

  else
  {
    v9 = v0[5];
    v10 = *(v0[2] + 16);
    v11 = swift_allocObject();
    v0[8] = v11;
    swift_weakInit();
    static TaskPriority.userInitiated.getter();
    v12 = swift_task_alloc();
    v0[9] = v12;
    *v12 = v0;
    v12[1] = sub_100016384;
    v13 = v0[5];

    return sub_100044E80(0xD000000000000011, 0x80000001000686D0, v13, &unk_100061738, v11);
  }
}

uint64_t sub_100016384(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 72);
  v5 = *(*v1 + 64);
  v6 = *(*v1 + 40);
  v7 = *(*v1 + 32);
  v8 = *(*v1 + 24);
  v12 = *v1;

  (*(v7 + 8))(v6, v8);
  v9 = *(v3 + 40);

  v10 = *(v12 + 8);

  return v10(a1);
}

uint64_t sub_100016508(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return _swift_task_switch(sub_100016528, 0, 0);
}

uint64_t sub_100016528()
{
  v1 = *(v0 + 48);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 56) = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    *(v0 + 64) = v3;
    *v3 = v0;
    v3[1] = sub_100016620;

    return sub_100016A1C();
  }

  else
  {
    **(v0 + 40) = &_swiftEmptyArrayStorage;
    v5 = *(v0 + 8);

    return v5();
  }
}

uint64_t sub_100016620()
{
  v1 = *(*v0 + 64);
  v3 = *v0;

  return _swift_task_switch(sub_10001671C, 0, 0);
}

uint64_t sub_10001671C()
{
  v1 = *(*(v0 + 56) + 104);
  *(v0 + 72) = v1;
  return _swift_task_switch(sub_100016740, v1, 0);
}

uint64_t sub_100016740()
{
  *(v0 + 80) = *(*(v0 + 72) + 256);

  return _swift_task_switch(sub_1000167B4, 0, 0);
}

uint64_t sub_1000167B4()
{
  v23 = v0;
  if (qword_1000831F0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 80);
  v2 = *(v0 + 56);
  v3 = type metadata accessor for Logger();
  sub_1000080BC(v3, qword_100086758);

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 56);
    v7 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *v7 = 136315394;
    if (*(v6 + 24))
    {
      if (*(v6 + 24) == 1)
      {
        v8 = 0xE600000000000000;
        v9 = 0x7070412D6E49;
      }

      else
      {
        v8 = 0xE800000000000000;
        v9 = 0x73676E6974746553;
      }
    }

    else
    {
      v8 = 0xE200000000000000;
      v9 = 17219;
    }

    v10 = *(v0 + 80);
    v11 = sub_10005305C(v9, v8, &v22);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2080;
    if (v10)
    {
      v12 = *(v0 + 80);
      v13 = Array.description.getter();
      v15 = v14;
    }

    else
    {
      v15 = 0xE300000000000000;
      v13 = 7104878;
    }

    v16 = sub_10005305C(v13, v15, &v22);

    *(v7 + 14) = v16;
    _os_log_impl(&_mh_execute_header, v4, v5, "[%s] requesting routes %s", v7, 0x16u);
    swift_arrayDestroy();
  }

  v17 = *(v0 + 80);
  v18 = *(v0 + 56);

  v19 = &_swiftEmptyArrayStorage;
  if (v17)
  {
    v19 = v17;
  }

  **(v0 + 40) = v19;
  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_100016A1C()
{
  v1[2] = v0;
  v2 = type metadata accessor for TaskPriority();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();

  return _swift_task_switch(sub_100016ADC, 0, 0);
}

uint64_t sub_100016ADC()
{
  v1 = v0[5];
  v2 = *(v0[2] + 16);
  v3 = swift_allocObject();
  v0[6] = v3;
  swift_weakInit();
  static TaskPriority.userInitiated.getter();
  v4 = swift_task_alloc();
  v0[7] = v4;
  *v4 = v0;
  v4[1] = sub_1000136D4;
  v5 = v0[5];

  return sub_100043604(sub_100043604, 0xD00000000000001FLL, 0x80000001000686F0, v5, &unk_100061750, v3);
}

uint64_t sub_100016BFC(uint64_t a1, char a2)
{
  *(v3 + 176) = a2;
  *(v3 + 64) = a1;
  *(v3 + 72) = v2;
  v4 = type metadata accessor for TaskPriority();
  *(v3 + 80) = v4;
  v5 = *(v4 - 8);
  *(v3 + 88) = v5;
  v6 = *(v5 + 64) + 15;
  *(v3 + 96) = swift_task_alloc();

  return _swift_task_switch(sub_100016CC0, 0, 0);
}

uint64_t sub_100016CC0()
{
  v1 = *(*(v0 + 72) + 104);
  *(v0 + 104) = v1;
  return _swift_task_switch(sub_100016CE4, v1, 0);
}

uint64_t sub_100016CE4()
{
  v1 = v0[13];
  v2 = v1[33];
  v0[14] = v2;
  v3 = v1[34];
  v0[15] = v3;
  v0[16] = v1[35];
  v0[17] = v1[36];
  v0[18] = v1[37];
  v0[19] = v1[38];
  sub_100025418(v2, v3);

  return _swift_task_switch(sub_100016D7C, 0, 0);
}

uint64_t sub_100016D7C()
{
  v1 = *(v0 + 120);
  if (!v1)
  {
LABEL_4:
    v4 = *(v0 + 96);
    v5 = *(*(v0 + 72) + 16);
    v6 = swift_allocObject();
    *(v0 + 160) = v6;
    swift_weakInit();
    static TaskPriority.userInitiated.getter();
    v7 = swift_task_alloc();
    *(v0 + 168) = v7;
    *v7 = v0;
    v7[1] = sub_100027418;
    v8 = *(v0 + 96);

    return sub_100043DF8(v0 + 16, 0xD00000000000001BLL, 0x8000000100068620, v8, &unk_1000616C8, v6);
  }

  if (*(v0 + 176))
  {
    v2 = *(v0 + 152);
    v3 = *(v0 + 136);

    goto LABEL_4;
  }

  v10 = *(v0 + 112);
  v11 = *(v0 + 96);
  v12 = *(v0 + 64);
  v14 = *(v0 + 144);
  v15 = *(v0 + 128);

  *v12 = v10;
  *(v12 + 8) = v1;
  *(v12 + 16) = v15;
  *(v12 + 32) = v14;
  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_100016F2C(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return _swift_task_switch(sub_100016F4C, 0, 0);
}

uint64_t sub_100016F4C()
{
  v1 = v0[6];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[7] = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    v0[8] = v3;
    *v3 = v0;
    v3[1] = sub_100017050;

    return sub_1000134C8(1);
  }

  else
  {
    v5 = v0[5];
    *v5 = 0;
    v5[1] = 0;
    v5[2] = 0;
    v6 = v0[5];
    v6[3] = 0;
    v6[4] = 0;
    v6[5] = 0;
    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_100017050()
{
  v1 = *(*v0 + 64);
  v3 = *v0;

  return _swift_task_switch(sub_10001714C, 0, 0);
}

uint64_t sub_10001714C()
{
  v1 = *(*(v0 + 56) + 104);
  *(v0 + 72) = v1;
  return _swift_task_switch(sub_100017170, v1, 0);
}

uint64_t sub_100017170()
{
  v1 = v0[9];
  v2 = v1[33];
  v0[10] = v2;
  v3 = v1[34];
  v0[11] = v3;
  v0[12] = v1[35];
  v0[13] = v1[36];
  v0[14] = v1[37];
  v0[15] = v1[38];
  sub_100025418(v2, v3);

  return _swift_task_switch(sub_100017208, 0, 0);
}

uint64_t sub_100017208()
{
  v1 = *(v0 + 96);
  v8 = *(v0 + 80);
  v2 = *(v0 + 56);
  v3 = *(v0 + 40);

  *v3 = v8;
  *(v3 + 16) = v1;
  v4 = *(v0 + 120);
  v5 = *(v0 + 40);
  *(v5 + 24) = *(v0 + 104);
  *(v5 + 40) = v4;
  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1000172A0(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v3 = type metadata accessor for TaskPriority();
  v2[10] = v3;
  v4 = *(v3 - 8);
  v2[11] = v4;
  v5 = *(v4 + 64) + 15;
  v2[12] = swift_task_alloc();

  return _swift_task_switch(sub_100017360, 0, 0);
}

uint64_t sub_100017360()
{
  v1 = *(*(v0 + 72) + 104);
  *(v0 + 104) = v1;
  return _swift_task_switch(sub_100017384, v1, 0);
}

uint64_t sub_100017384()
{
  v1 = v0[13];
  v2 = v1[26];
  v0[14] = v2;
  v3 = v1[27];
  v0[15] = v3;
  v0[16] = v1[28];
  v0[17] = v1[29];
  v0[18] = v1[30];
  v0[19] = v1[31];
  sub_100025418(v2, v3);

  return _swift_task_switch(sub_10001741C, 0, 0);
}

uint64_t sub_10001741C()
{
  v1 = *(v0 + 120);
  if (v1)
  {
    v2 = *(v0 + 112);
    v3 = *(v0 + 96);
    v4 = *(v0 + 64);
    v12 = *(v0 + 144);
    v13 = *(v0 + 128);

    *v4 = v2;
    *(v4 + 8) = v1;
    *(v4 + 16) = v13;
    *(v4 + 32) = v12;
    v5 = *(v0 + 8);

    return v5();
  }

  else
  {
    v7 = *(v0 + 96);
    v8 = *(*(v0 + 72) + 16);
    v9 = swift_allocObject();
    *(v0 + 160) = v9;
    swift_weakInit();
    static TaskPriority.userInitiated.getter();
    v10 = swift_task_alloc();
    *(v0 + 168) = v10;
    *v10 = v0;
    v10[1] = sub_100027418;
    v11 = *(v0 + 96);

    return sub_100043DF8(v0 + 16, 0xD00000000000001BLL, 0x80000001000686B0, v11, &unk_100061720, v9);
  }
}

uint64_t sub_1000175A8(uint64_t a1, uint64_t a2)
{
  *(v2 + 272) = a1;
  *(v2 + 280) = a2;
  return _swift_task_switch(sub_1000175C8, 0, 0);
}

uint64_t sub_1000175C8()
{
  v1 = v0[35];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[36] = Strong;
  if (Strong)
  {
    sub_100004BCC((Strong + 144), *(Strong + 168));
    v3 = swift_task_alloc();
    v0[37] = v3;
    *v3 = v0;
    v3[1] = sub_100017768;

    return (sub_1000090F0)(v0 + 14, &type metadata for MXAVInputContextFactory, &off_100079F00);
  }

  else
  {
    v5 = v0[34];
    v5[1] = 0u;
    v5[2] = 0u;
    *v5 = 0u;
    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_100017768()
{
  v1 = *(*v0 + 296);
  v3 = *v0;

  return _swift_task_switch(sub_100017864, 0, 0);
}

uint64_t sub_100017864()
{
  v1 = v0[17];
  v2 = v0[18];
  sub_100004BCC(v0 + 14, v1);
  v3 = *(v2 + 16);
  v7 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  v0[38] = v5;
  *v5 = v0;
  v5[1] = sub_100017990;

  return (v7)(0, 0, v1, v2);
}

uint64_t sub_100017990(uint64_t a1)
{
  v2 = *(*v1 + 304);
  v4 = *v1;
  *(*v1 + 312) = a1;

  return _swift_task_switch(sub_100017A90, 0, 0);
}

uint64_t sub_100017A90()
{
  v1 = *(v0 + 312);
  if (v1)
  {
    v2 = *(v0 + 288);
    sub_100004B28((v0 + 112));
    v3 = *(v2 + 104);
    *(v0 + 320) = v3;

    v4 = v1;
    sub_100039078(v4, (v0 + 64));
    *(v0 + 328) = *(v0 + 64);
    *(v0 + 344) = *(v0 + 80);
    *(v0 + 352) = *(v0 + 88);
    *(v0 + 368) = *(v0 + 104);

    return _swift_task_switch(sub_100017B9C, v3, 0);
  }

  else
  {
    v5 = *(v0 + 288);
    v6 = *(v0 + 272);

    sub_100004B28((v0 + 112));
    v6[1] = 0u;
    v6[2] = 0u;
    *v6 = 0u;
    v7 = *(v0 + 8);

    return v7();
  }
}

uint64_t sub_100017B9C()
{
  v2 = *(v0 + 360);
  v1 = *(v0 + 368);
  v4 = *(v0 + 344);
  v3 = *(v0 + 352);
  v5 = *(v0 + 336);
  v6 = *(v0 + 320);
  v7 = v6[26];
  v8 = v6[27];
  v9 = v6[28];
  v10 = v6[29];
  v11 = v6[30];
  v12 = v6[31];
  v6[26] = *(v0 + 328);
  v6[27] = v5;
  v6[28] = v4;
  v6[29] = v3;
  v6[30] = v2;
  v6[31] = v1;
  v13 = *(v0 + 80);
  *(v0 + 176) = *(v0 + 64);
  *(v0 + 192) = v13;
  *(v0 + 208) = *(v0 + 96);
  sub_100025FCC(v0 + 176, v0 + 224);
  sub_100025FCC(v0 + 192, v0 + 240);
  sub_100025FCC(v0 + 208, v0 + 256);
  sub_1000253A0(v7, v8);
  sub_100026028(v0 + 176);
  sub_100026028(v0 + 192);
  sub_100026028(v0 + 208);

  return _swift_task_switch(sub_100017CAC, 0, 0);
}

uint64_t sub_100017CAC()
{
  v1 = *(v0 + 312);
  v2 = *(v0 + 288);
  v3 = *(v0 + 272);
  sub_100039078(v1, (v0 + 16));
  v8 = *(v0 + 32);
  v9 = *(v0 + 16);
  v4 = *(v0 + 48);
  v5 = *(v0 + 56);

  *v3 = v9;
  *(v3 + 16) = v8;
  *(v3 + 32) = v4;
  *(v3 + 40) = v5;
  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_100017D50(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 80) = a1;
  v3 = type metadata accessor for TaskPriority();
  *(v2 + 24) = v3;
  v4 = *(v3 - 8);
  *(v2 + 32) = v4;
  v5 = *(v4 + 64) + 15;
  *(v2 + 40) = swift_task_alloc();

  return _swift_task_switch(sub_100017E14, 0, 0);
}

uint64_t sub_100017E14()
{
  v37 = v0;
  v1 = *(v0 + 16);
  v2 = *(v0 + 80);
  v3 = swift_allocObject();
  *(v0 + 48) = v3;
  swift_weakInit();
  v4 = swift_allocObject();
  v35 = v0;
  *(v0 + 56) = v4;
  swift_weakInit();
  sub_100003B30(&qword_100083930, &qword_100061980);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100061540;
  if (v2)
  {
    v6 = &unk_100061978;
  }

  else
  {
    v6 = &unk_100061968;
  }

  if (v2)
  {
    v7 = v4;
  }

  else
  {
    v7 = v3;
  }

  if (v2)
  {
    v8 = &unk_1000619B0;
  }

  else
  {
    v8 = &unk_100061990;
  }

  if (v2)
  {
    v9 = &unk_100061968;
  }

  else
  {
    v9 = &unk_100061978;
  }

  if (v2)
  {
    v10 = v3;
  }

  else
  {
    v10 = v4;
  }

  if (v2)
  {
    v11 = &unk_1000619B8;
  }

  else
  {
    v11 = &unk_100061998;
  }

  v12 = swift_allocObject();
  *(v12 + 16) = v6;
  *(v12 + 24) = v7;
  *(v5 + 32) = v8;
  *(v5 + 40) = v12;
  v13 = swift_allocObject();
  *(v13 + 16) = v9;
  *(v13 + 24) = v10;
  *(v5 + 48) = v11;
  *(v5 + 56) = v13;
  v14 = qword_1000831F0;

  if (v14 != -1)
  {
    swift_once();
  }

  v15 = *(v35 + 16);
  v16 = type metadata accessor for Logger();
  sub_1000080BC(v16, qword_100086758);

  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = *(v35 + 16);
    v20 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    *v20 = 136315650;
    if (*(v19 + 24))
    {
      if (*(v19 + 24) == 1)
      {
        v21 = 0xE600000000000000;
        v22 = 0x7070412D6E49;
      }

      else
      {
        v21 = 0xE800000000000000;
        v22 = 0x73676E6974746553;
      }
    }

    else
    {
      v21 = 0xE200000000000000;
      v22 = 17219;
    }

    v23 = *(v35 + 80);
    v24 = sub_10005305C(v22, v21, &v36);

    *(v20 + 4) = v24;
    *(v20 + 12) = 2080;
    if (v23)
    {
      v25 = 0x6C6F686563616C70;
    }

    else
    {
      v25 = 0x746E65696C63;
    }

    if (v23)
    {
      v26 = 0xEB00000000726564;
    }

    else
    {
      v26 = 0xE600000000000000;
    }

    if (v23)
    {
      v27 = 0x746E65696C63;
    }

    else
    {
      v27 = 0x6C6F686563616C70;
    }

    if (v23)
    {
      v28 = 0xE600000000000000;
    }

    else
    {
      v28 = 0xEB00000000726564;
    }

    v29 = sub_10005305C(v25, v26, &v36);

    *(v20 + 14) = v29;
    *(v20 + 22) = 2080;
    v30 = sub_10005305C(v27, v28, &v36);

    *(v20 + 24) = v30;
    _os_log_impl(&_mh_execute_header, v17, v18, "[%s] Sending clear preferred input notification to %s first, then %s", v20, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v31 = *(v35 + 40);
  v32 = *(*(v35 + 16) + 16);
  *(v35 + 64) = v32;
  v33 = swift_allocObject();
  *(v35 + 72) = v33;
  *(v33 + 16) = v5;
  static TaskPriority.background.getter();

  return _swift_task_switch(sub_100018254, v32, 0);
}

uint64_t sub_100018254()
{
  v1 = v0[8];
  v3 = v0[4];
  v2 = v0[5];
  v4 = v0[3];
  sub_100055760(0xD000000000000021, 0x80000001000687D0, v2, &unk_1000619A8, v0[9]);

  (*(v3 + 8))(v2, v4);

  return _swift_task_switch(sub_100018328, 0, 0);
}

uint64_t sub_100018328()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];

  v4 = v0[1];

  return v4();
}

uint64_t sub_1000183BC()
{
  v18 = v0;
  v1 = v0[14];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[15] = Strong;
  if (Strong)
  {
    v3 = Strong;
    if (qword_1000831F0 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    v0[16] = sub_1000080BC(v4, qword_100086758);

    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v7 = 136315394;
      if (*(v3 + 24))
      {
        if (*(v3 + 24) == 1)
        {
          v8 = 0xE600000000000000;
          v9 = 0x7070412D6E49;
        }

        else
        {
          v8 = 0xE800000000000000;
          v9 = 0x73676E6974746553;
        }
      }

      else
      {
        v8 = 0xE200000000000000;
        v9 = 17219;
      }

      v12 = sub_10005305C(v9, v8, &v17);

      *(v7 + 4) = v12;
      *(v7 + 12) = 2080;
      if (*(v3 + 120))
      {
        v13 = *(v3 + 112);
        v14 = *(v3 + 120);
      }

      else
      {
        v14 = 0xE300000000000000;
        v13 = 7104878;
      }

      v15 = sub_10005305C(v13, v14, &v17);

      *(v7 + 14) = v15;
      _os_log_impl(&_mh_execute_header, v5, v6, "[%s] clearing Preferred for %s", v7, 0x16u);
      swift_arrayDestroy();
    }

    sub_100004BCC((v3 + 144), *(v3 + 168));
    v16 = swift_task_alloc();
    v0[17] = v16;
    *v16 = v0;
    v16[1] = sub_100018720;

    return (sub_1000090F0)(v0 + 2, &type metadata for MXAVInputContextFactory, &off_100079F00);
  }

  else
  {
    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_100018720()
{
  v1 = *(*v0 + 136);
  v3 = *v0;

  return _swift_task_switch(sub_10001881C, 0, 0);
}

uint64_t sub_10001881C()
{
  v1 = v0[15];
  v2 = v0[5];
  v3 = v0[6];
  sub_100004BCC(v0 + 2, v2);
  v4 = *(v1 + 112);
  v5 = *(v1 + 120);
  v0[18] = v5;
  v6 = *(v3 + 32);

  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  v0[19] = v8;
  *v8 = v0;
  v8[1] = sub_100018970;

  return v10(v4, v5, v2, v3);
}

uint64_t sub_100018970()
{
  v2 = *v1;
  v3 = *(*v1 + 152);
  v7 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    v4 = sub_100018CF4;
  }

  else
  {
    v5 = *(v2 + 144);

    v4 = sub_100018A8C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100018A8C()
{
  v1 = v0[15];
  sub_100004B28(v0 + 2);
  v2 = *(v1 + 104);
  v0[21] = v2;

  return _swift_task_switch(sub_100018AFC, v2, 0);
}

uint64_t sub_100018AFC()
{
  v1 = v0[21];
  sub_1000099C4();
  v2 = swift_task_alloc();
  v0[22] = v2;
  *v2 = v0;
  v2[1] = sub_100018B98;
  v3 = v0[15];

  return sub_1000134C8(0);
}

uint64_t sub_100018B98()
{
  v1 = *(*v0 + 176);
  v3 = *v0;

  return _swift_task_switch(sub_100018C94, 0, 0);
}

uint64_t sub_100018C94()
{
  v1 = *(v0 + 120);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100018CF4()
{
  v25 = v0;
  v1 = v0[20];
  v2 = v0[18];
  v4 = v0[15];
  v3 = v0[16];

  sub_100004B28(v0 + 2);

  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[15];
    v8 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *v8 = 136315394;
    if (*(v7 + 24))
    {
      if (*(v7 + 24) == 1)
      {
        v9 = 0xE600000000000000;
        v10 = 0x7070412D6E49;
      }

      else
      {
        v9 = 0xE800000000000000;
        v10 = 0x73676E6974746553;
      }
    }

    else
    {
      v9 = 0xE200000000000000;
      v10 = 17219;
    }

    v13 = v0[20];
    v14 = v0[15];
    v15 = sub_10005305C(v10, v9, &v24);

    *(v8 + 4) = v15;
    *(v8 + 12) = 2080;
    swift_getErrorValue();
    v17 = v0[10];
    v16 = v0[11];
    v18 = v0[12];
    v19 = Error.localizedDescription.getter();
    v21 = sub_10005305C(v19, v20, &v24);

    *(v8 + 14) = v21;
    _os_log_impl(&_mh_execute_header, v5, v6, "[%s] clearing client preferred input error=%s", v8, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    v11 = v0[20];
    v12 = v0[15];
  }

  v22 = v0[1];

  return v22();
}

uint64_t sub_100018F50()
{
  v1 = v0[14];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[15] = Strong;
  if (Strong)
  {
    sub_100004BCC((Strong + 144), *(Strong + 168));
    v3 = swift_task_alloc();
    v0[16] = v3;
    *v3 = v0;
    v3[1] = sub_1000190E0;

    return (sub_1000090F0)(v0 + 2, &type metadata for MXAVInputContextFactory, &off_100079F00);
  }

  else
  {
    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_1000190E0()
{
  v1 = *(*v0 + 128);
  v3 = *v0;

  return _swift_task_switch(sub_1000191DC, 0, 0);
}

uint64_t sub_1000191DC()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  sub_100004BCC((v0 + 16), v2);
  v4 = *(v1 + 24);
  *(v0 + 152) = v4;
  if (v4)
  {
    v5 = 0xD000000000000023;
  }

  else
  {
    v5 = 0xD000000000000015;
  }

  if (v4)
  {
    v6 = "userPreferredInputRoute()";
  }

  else
  {
    v6 = "AVKitRoutingService";
  }

  v7 = *(v3 + 32);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v0 + 136) = v9;
  *v9 = v0;
  v9[1] = sub_10001934C;

  return v11(v5, v6 | 0x8000000000000000, v2, v3);
}

uint64_t sub_10001934C()
{
  v2 = *v1;
  v3 = *(*v1 + 136);
  v6 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v4 = sub_1000194F4;
  }

  else
  {
    *(v2 + 152);

    v4 = sub_10001948C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10001948C()
{
  v1 = v0[15];

  sub_100004B28(v0 + 2);
  v2 = v0[1];

  return v2();
}

uint64_t sub_1000194F4()
{
  v24 = v0;
  *(v0 + 152);

  sub_100004B28((v0 + 16));
  if (qword_1000831F0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 144);
  v2 = *(v0 + 120);
  v3 = type metadata accessor for Logger();
  sub_1000080BC(v3, qword_100086758);

  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 120);
    v7 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *v7 = 136315394;
    if (*(v6 + 24))
    {
      if (*(v6 + 24) == 1)
      {
        v8 = 0xE600000000000000;
        v9 = 0x7070412D6E49;
      }

      else
      {
        v8 = 0xE800000000000000;
        v9 = 0x73676E6974746553;
      }
    }

    else
    {
      v8 = 0xE200000000000000;
      v9 = 17219;
    }

    v12 = *(v0 + 144);
    v13 = *(v0 + 120);
    v14 = sub_10005305C(v9, v8, &v23);

    *(v7 + 4) = v14;
    *(v7 + 12) = 2080;
    swift_getErrorValue();
    v16 = *(v0 + 80);
    v15 = *(v0 + 88);
    v17 = *(v0 + 96);
    v18 = Error.localizedDescription.getter();
    v20 = sub_10005305C(v18, v19, &v23);

    *(v7 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v4, v5, "[%s] clearing metering placeholder preferred input error=%s", v7, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    v10 = *(v0 + 144);
    v11 = *(v0 + 120);
  }

  v21 = *(v0 + 8);

  return v21();
}

void sub_1000197BC()
{
  v1 = v0[2];
  v2 = v1[2];
  v0[3] = v2;
  if (v2)
  {
    v3 = v1[4];
    v0[4] = v1[5];

    v6 = (v3 + *v3);
    v4 = v3[1];
    v5 = swift_task_alloc();
    v0[5] = v5;
    *v5 = v0;
    v5[1] = sub_1000198CC;

    v6();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1000198CC()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 32);
  v4 = *v0;

  return _swift_task_switch(sub_1000199E4, 0, 0);
}

void sub_1000199E4()
{
  if (v0[3] == 1)
  {
    __break(1u);
  }

  else
  {
    v2 = v0[2];
    v3 = *(v2 + 48);
    v0[6] = *(v2 + 56);

    v6 = (v3 + *v3);
    v4 = v3[1];
    v5 = swift_task_alloc();
    v0[7] = v5;
    *v5 = v0;
    v5[1] = sub_100019AF4;

    v6();
  }
}

uint64_t sub_100019AF4()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 48);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_100019C04(uint64_t a1, uint64_t a2)
{
  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return _swift_task_switch(sub_100019C24, 0, 0);
}

uint64_t sub_100019C24()
{
  v1 = *(v0 + 88);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 96) = Strong;
  if (Strong)
  {
    sub_100004BCC((Strong + 144), *(Strong + 168));
    v3 = swift_task_alloc();
    *(v0 + 104) = v3;
    *v3 = v0;
    v3[1] = sub_100019DC0;

    return (sub_1000090F0)(v0 + 16, &type metadata for MXAVInputContextFactory, &off_100079F00);
  }

  else
  {
    **(v0 + 80) = 1065353216;
    v5 = *(v0 + 8);

    return v5();
  }
}

uint64_t sub_100019DC0()
{
  v1 = *(*v0 + 104);
  v3 = *v0;

  return _swift_task_switch(sub_100019EBC, 0, 0);
}

uint64_t sub_100019EBC()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  sub_100004BCC((v0 + 16), v2);
  v4 = (*(v3 + 56))(v2, v3);

  sub_100004B28((v0 + 16));
  **(v0 + 80) = v4;
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_100019F74(uint64_t a1, float a2)
{
  *(v2 + 136) = a2;
  *(v2 + 112) = a1;
  return _swift_task_switch(sub_100019F98, 0, 0);
}

uint64_t sub_100019F98()
{
  v1 = v0[14];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[15] = Strong;
  if (Strong)
  {
    sub_100004BCC((Strong + 144), *(Strong + 168));
    v3 = swift_task_alloc();
    v0[16] = v3;
    *v3 = v0;
    v3[1] = sub_10001A128;

    return (sub_1000090F0)(v0 + 2, &type metadata for MXAVInputContextFactory, &off_100079F00);
  }

  else
  {
    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_10001A128()
{
  v1 = *(*v0 + 128);
  v3 = *v0;

  return _swift_task_switch(sub_10001A224, 0, 0);
}

uint64_t sub_10001A224()
{
  v20 = v0;
  v1 = *(v0 + 136);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  sub_100004BCC((v0 + 16), v2);
  (*(v3 + 40))(v2, v3, v1);
  sub_100004B28((v0 + 16));
  if (qword_1000831F0 != -1)
  {
    swift_once();
  }

  v4 = *(v0 + 120);
  v5 = type metadata accessor for Logger();
  sub_1000080BC(v5, qword_100086758);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 120);
  if (v8)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v19 = v11;
    *v10 = 136315394;
    if (*(v9 + 24))
    {
      if (*(v9 + 24) == 1)
      {
        v12 = 0xE600000000000000;
        v13 = 0x7070412D6E49;
      }

      else
      {
        v12 = 0xE800000000000000;
        v13 = 0x73676E6974746553;
      }
    }

    else
    {
      v12 = 0xE200000000000000;
      v13 = 17219;
    }

    v14 = *(v0 + 120);
    v15 = *(v0 + 136);
    v16 = sub_10005305C(v13, v12, &v19);

    *(v10 + 4) = v16;
    *(v10 + 12) = 2048;
    *(v10 + 14) = v15;
    _os_log_impl(&_mh_execute_header, v6, v7, "[%s] Successfully set new input gain: %f", v10, 0x16u);
    sub_100004B28(v11);
  }

  else
  {
  }

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_10001A664(uint64_t a1, uint64_t a2)
{
  *(v2 + 120) = a1;
  *(v2 + 128) = a2;
  return _swift_task_switch(sub_10001A684, 0, 0);
}

uint64_t sub_10001A684()
{
  v1 = *(v0 + 128);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 136) = Strong;
  if (Strong)
  {
    sub_100004BCC((Strong + 144), *(Strong + 168));
    *(v0 + 144) = &unk_100061518;
    *(v0 + 152) = &off_100079F08 & 0xFFFFFFFFFFFFLL | 0x55AB000000000000;
    v3 = swift_task_alloc();
    *(v0 + 160) = v3;
    *v3 = v0;
    v3[1] = sub_10001A828;

    return (sub_1000090F0)(v0 + 16, &type metadata for MXAVInputContextFactory, &off_100079F00);
  }

  else
  {
    **(v0 + 120) = 0;
    v5 = *(v0 + 8);

    return v5();
  }
}

uint64_t sub_10001A828()
{
  v1 = *(*v0 + 160);
  v3 = *v0;

  return _swift_task_switch(sub_10001A924, 0, 0);
}

uint64_t sub_10001A924()
{
  v1 = v0[5];
  v2 = v0[6];
  sub_100004BCC(v0 + 2, v1);
  v3 = *(v2 + 8);
  v7 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  v0[21] = v5;
  *v5 = v0;
  v5[1] = sub_10001AA48;

  return v7(v1, v2);
}

uint64_t sub_10001AA48(uint64_t a1)
{
  v2 = *(*v1 + 168);
  v4 = *v1;
  *(*v1 + 176) = a1;

  return _swift_task_switch(sub_10001AB48, 0, 0);
}

uint64_t sub_10001AB48()
{
  v1 = *(v0 + 176);
  if (v1)
  {
    v2 = [*(v0 + 176) deviceType];

    sub_100004B28((v0 + 16));
    v3 = v2 != 2;
  }

  else
  {
    sub_100004B28((v0 + 16));
    v3 = 1;
  }

  *(v0 + 192) = v3;
  v4 = *(v0 + 144);
  v5 = *(v0 + 152);
  sub_100004BCC((*(v0 + 136) + 144), *(*(v0 + 136) + 168));
  v10 = (v4 + *v4);
  v6 = v4[1];
  v7 = swift_task_alloc();
  *(v0 + 184) = v7;
  *v7 = v0;
  v7[1] = sub_10001ACA8;
  v8 = *(v0 + 152);

  return v10(v0 + 56, &type metadata for MXAVInputContextFactory, &off_100079F00);
}

uint64_t sub_10001ACA8()
{
  v1 = *(*v0 + 184);
  v3 = *v0;

  return _swift_task_switch(sub_10001ADA4, 0, 0);
}

uint64_t sub_10001ADA4()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 136);
  v3 = *(v0 + 80);
  v4 = *(v0 + 88);
  sub_100004BCC((v0 + 56), v3);
  v5 = (*(v4 + 48))(v3, v4);

  sub_100004B28((v0 + 56));
  **(v0 + 120) = v5 & v1 & 1;
  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_10001AE88()
{
  v1 = v0[11];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[12] = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    v0[13] = v3;
    *v3 = v0;
    v3[1] = sub_10001AF78;

    return sub_1000172A0((v0 + 2));
  }

  else
  {
    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_10001AF78()
{
  v1 = *v0;
  v2 = *(*v0 + 104);
  v3 = *(*v0 + 96);
  v6 = *v0;

  sub_100008B68(v1 + 16, &qword_100083928, &qword_100061950);

  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_10001B0A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[56] = a4;
  v5[57] = a5;
  v6 = *(*(sub_100003B30(&qword_1000838E0, &qword_100061C70) - 8) + 64) + 15;
  v5[58] = swift_task_alloc();
  v7 = type metadata accessor for TaskPriority();
  v5[59] = v7;
  v8 = *(v7 - 8);
  v5[60] = v8;
  v9 = *(v8 + 64) + 15;
  v5[61] = swift_task_alloc();
  v5[62] = swift_task_alloc();
  v10 = *(*(sub_100003B30(&qword_1000838E8, &qword_100061848) - 8) + 64) + 15;
  v5[63] = swift_task_alloc();
  v11 = type metadata accessor for NSNotificationCenter.Notifications.Iterator();
  v5[64] = v11;
  v12 = *(v11 - 8);
  v5[65] = v12;
  v13 = *(v12 + 64) + 15;
  v5[66] = swift_task_alloc();

  return _swift_task_switch(sub_10001B238, 0, 0);
}

uint64_t sub_10001B238()
{
  v1 = v0[66];
  v2 = v0[56];
  v3 = v0[57];
  v4 = [objc_opt_self() defaultCenter];
  NSNotificationCenter.notifications(named:object:)();

  NSNotificationCenter.Notifications.makeAsyncIterator()();
  swift_beginAccess();
  v5 = sub_1000268AC();
  v6 = async function pointer to dispatch thunk of AsyncIteratorProtocol.next()[1];
  v7 = swift_task_alloc();
  v0[67] = v7;
  *v7 = v0;
  v7[1] = sub_10001B350;
  v8 = v0[66];
  v9 = v0[63];
  v10 = v0[64];

  return dispatch thunk of AsyncIteratorProtocol.next()(v9, v10, v5);
}

uint64_t sub_10001B350()
{
  v2 = *(*v1 + 536);
  v5 = *v1;
  *(*v1 + 544) = v0;

  if (v0)
  {
    v3 = sub_10002741C;
  }

  else
  {
    v3 = sub_10001B464;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10001B480()
{
  v1 = v0[63];
  v2 = type metadata accessor for Notification();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    (*(v0[65] + 8))(v0[66], v0[64]);
LABEL_8:
    v6 = v0[66];
    v7 = v0[62];
    v8 = v0[63];
    v9 = v0[61];
    v10 = v0[58];

    v11 = v0[1];

    return v11();
  }

  v3 = v0[57];
  Strong = swift_weakLoadStrong();
  v0[69] = Strong;
  if (!Strong)
  {
    (*(v0[65] + 8))(v0[66], v0[64]);
    goto LABEL_7;
  }

  v5 = Strong;
  if (static Task<>.isCancelled.getter())
  {
    (*(v0[65] + 8))(v0[66], v0[64]);

LABEL_7:
    sub_100008B68(v0[63], &qword_1000838E8, &qword_100061848);
    goto LABEL_8;
  }

  if (qword_1000831F0 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_1000080BC(v13, qword_100086758);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, " .AvailableInputDevicesDidChange received", v16, 2u);
  }

  v17 = v0[62];

  v18 = *(v5 + 16);
  v0[70] = v18;
  v0[71] = swift_allocObject();
  swift_weakInit();
  static TaskPriority.userInitiated.getter();

  return _swift_task_switch(sub_10001B720, v18, 0);
}

uint64_t sub_10001B720()
{
  v26 = v0;
  v1 = v0[70];
  swift_beginAccess();
  v2 = *(v1 + 112);
  if (*(v2 + 16))
  {
    v3 = *(v1 + 112);

    v4 = sub_100057800(0xD00000000000001FLL, 0x80000001000686F0);
    if (v5)
    {
      sub_100026C30(*(v2 + 56) + 40 * v4, (v0 + 2));

      sub_100026C30((v0 + 2), (v0 + 27));
      sub_100003B30(&qword_100083910, &unk_1000636C0);
      sub_100003B30(&qword_100083908, &unk_100061880);
      if (swift_dynamicCast())
      {
        v6 = v0[55];
        v0[78] = v6;
        v7 = async function pointer to Task<>.value.getter[1];

        v8 = swift_task_alloc();
        v0[79] = v8;
        *v8 = v0;
        v8[1] = sub_10001C1A8;
        v9 = &type metadata for () + 8;
        v10 = v6;
        goto LABEL_8;
      }

      sub_100004B28(v0 + 2);
    }

    else
    {
    }
  }

  v11 = v0[71];
  v23 = v0[70];
  v12 = v0[62];
  v13 = v0[59];
  v14 = v0[60];
  v15 = v0[58];
  v25 = 0;
  memset(v24, 0, sizeof(v24));
  swift_beginAccess();
  sub_1000555D8(v24, 0xD00000000000001FLL, 0x80000001000686F0);
  swift_endAccess();
  (*(v14 + 16))(v15, v12, v13);
  v16 = *(v14 + 56);
  v16(v15, 0, 1, v13);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_100061920;
  v17[5] = v11;

  v18 = sub_100054078(0, 0, v15, &unk_100061928, v17);
  v0[72] = v18;
  v0[10] = sub_100003B30(&qword_100083908, &unk_100061880);
  v0[11] = &off_10007BC78;
  v0[7] = v18;
  swift_beginAccess();
  swift_retain_n();
  sub_1000555D8((v0 + 7), 0xD00000000000001FLL, 0x80000001000686F0);
  swift_endAccess();
  v16(v15, 1, 1, v13);
  v19 = swift_allocObject();
  swift_weakInit();
  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = 0;
  v20[4] = v18;
  v20[5] = v19;
  v20[6] = 0xD00000000000001FLL;
  v20[7] = 0x80000001000686F0;

  sub_100054078(0, 0, v15, &unk_100061930, v20);

  v21 = async function pointer to Task<>.value.getter[1];
  v8 = swift_task_alloc();
  v0[73] = v8;
  *v8 = v0;
  v8[1] = sub_10001BB2C;
  v9 = &type metadata for () + 8;
  v10 = v18;
LABEL_8:

  return Task<>.value.getter(v8, v10, v9);
}

uint64_t sub_10001BB2C()
{
  v1 = *(*v0 + 584);
  v2 = *(*v0 + 560);
  v4 = *v0;

  return _swift_task_switch(sub_10001BC3C, v2, 0);
}

uint64_t sub_10001BC3C()
{
  v1 = v0[72];
  v2 = v0[71];

  v3 = v0[62];
  v4 = v0[59];
  v5 = v0[60];
  v6 = *(v5 + 8);
  v0[74] = v6;
  v0[75] = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v3, v4);

  return _swift_task_switch(sub_10001BCDC, 0, 0);
}

uint64_t sub_10001BCDC()
{
  v1 = v0[61];
  v2 = *(v0[69] + 16);
  v0[76] = v2;
  v3 = swift_allocObject();
  swift_weakInit();
  v4 = swift_allocObject();
  v0[77] = v4;
  *(v4 + 16) = v3;
  *(v4 + 24) = 0;
  static TaskPriority.userInitiated.getter();

  return _swift_task_switch(sub_10001BDA0, v2, 0);
}

uint64_t sub_10001BDA0()
{
  v26 = v0;
  v1 = v0[76];
  swift_beginAccess();
  v2 = *(v1 + 112);
  if (*(v2 + 16))
  {
    v3 = *(v1 + 112);

    v4 = sub_100057800(0xD000000000000027, 0x8000000100068640);
    if (v5)
    {
      sub_100026C30(*(v2 + 56) + 40 * v4, (v0 + 12));

      sub_100026C30((v0 + 12), (v0 + 22));
      sub_100003B30(&qword_100083910, &unk_1000636C0);
      sub_100003B30(&qword_100083908, &unk_100061880);
      if (swift_dynamicCast())
      {
        v6 = v0[54];
        v0[82] = v6;
        v7 = async function pointer to Task<>.value.getter[1];

        v8 = swift_task_alloc();
        v0[83] = v8;
        *v8 = v0;
        v8[1] = sub_10001C5E0;
        v9 = &type metadata for () + 8;
        v10 = v6;
        goto LABEL_8;
      }

      sub_100004B28(v0 + 12);
    }

    else
    {
    }
  }

  v11 = v0[77];
  v23 = v0[76];
  v13 = v0[60];
  v12 = v0[61];
  v14 = v0[58];
  v15 = v0[59];
  v25 = 0;
  memset(v24, 0, sizeof(v24));
  swift_beginAccess();
  sub_1000555D8(v24, 0xD000000000000027, 0x8000000100068640);
  swift_endAccess();
  (*(v13 + 16))(v14, v12, v15);
  v16 = *(v13 + 56);
  v16(v14, 0, 1, v15);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_100061938;
  v17[5] = v11;

  v18 = sub_100054078(0, 0, v14, &unk_100061940, v17);
  v0[80] = v18;
  v0[20] = sub_100003B30(&qword_100083908, &unk_100061880);
  v0[21] = &off_10007BC78;
  v0[17] = v18;
  swift_beginAccess();
  swift_retain_n();
  sub_1000555D8((v0 + 17), 0xD000000000000027, 0x8000000100068640);
  swift_endAccess();
  v16(v14, 1, 1, v15);
  v19 = swift_allocObject();
  swift_weakInit();
  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = 0;
  v20[4] = v18;
  v20[5] = v19;
  v20[6] = 0xD000000000000027;
  v20[7] = 0x8000000100068640;

  sub_100054078(0, 0, v14, &unk_100061948, v20);

  v21 = async function pointer to Task<>.value.getter[1];
  v8 = swift_task_alloc();
  v0[81] = v8;
  *v8 = v0;
  v8[1] = sub_10001C378;
  v9 = &type metadata for () + 8;
  v10 = v18;
LABEL_8:

  return Task<>.value.getter(v8, v10, v9);
}

uint64_t sub_10001C1A8()
{
  v1 = *(*v0 + 632);
  v2 = *(*v0 + 624);
  v3 = *(*v0 + 560);
  v5 = *v0;

  return _swift_task_switch(sub_10001C2D4, v3, 0);
}

uint64_t sub_10001C2D4()
{
  v1 = v0[78];
  v2 = v0[71];

  sub_100004B28(v0 + 2);

  v3 = v0[62];
  v4 = v0[59];
  v5 = v0[60];
  v6 = *(v5 + 8);
  v0[74] = v6;
  v0[75] = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v3, v4);

  return _swift_task_switch(sub_10001BCDC, 0, 0);
}

uint64_t sub_10001C378()
{
  v1 = *(*v0 + 648);
  v2 = *(*v0 + 608);
  v4 = *v0;

  return _swift_task_switch(sub_10001C488, v2, 0);
}

uint64_t sub_10001C488()
{
  v1 = *(v0 + 640);
  v2 = *(v0 + 616);

  v3 = *(v0 + 600);
  (*(v0 + 592))(*(v0 + 488), *(v0 + 472));

  return _swift_task_switch(sub_10001C514, 0, 0);
}

uint64_t sub_10001C514()
{
  v1 = v0[69];
  v2 = v0[63];

  sub_100008B68(v2, &qword_1000838E8, &qword_100061848);
  v3 = sub_1000268AC();
  v4 = async function pointer to dispatch thunk of AsyncIteratorProtocol.next()[1];
  v5 = swift_task_alloc();
  v0[67] = v5;
  *v5 = v0;
  v5[1] = sub_10001B350;
  v6 = v0[66];
  v7 = v0[63];
  v8 = v0[64];

  return dispatch thunk of AsyncIteratorProtocol.next()(v7, v8, v3);
}

uint64_t sub_10001C5E0()
{
  v1 = *(*v0 + 664);
  v2 = *(*v0 + 656);
  v3 = *(*v0 + 608);
  v5 = *v0;

  return _swift_task_switch(sub_10001C70C, v3, 0);
}

uint64_t sub_10001C70C()
{
  v1 = *(v0 + 656);
  v2 = *(v0 + 616);

  sub_100004B28((v0 + 96));

  v3 = *(v0 + 600);
  (*(v0 + 592))(*(v0 + 488), *(v0 + 472));

  return _swift_task_switch(sub_10001C514, 0, 0);
}

uint64_t sub_10001C79C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[56] = a4;
  v5[57] = a5;
  v6 = *(*(sub_100003B30(&qword_1000838E0, &qword_100061C70) - 8) + 64) + 15;
  v5[58] = swift_task_alloc();
  v7 = type metadata accessor for TaskPriority();
  v5[59] = v7;
  v8 = *(v7 - 8);
  v5[60] = v8;
  v9 = *(v8 + 64) + 15;
  v5[61] = swift_task_alloc();
  v5[62] = swift_task_alloc();
  v10 = *(*(sub_100003B30(&qword_1000838E8, &qword_100061848) - 8) + 64) + 15;
  v5[63] = swift_task_alloc();
  v11 = type metadata accessor for NSNotificationCenter.Notifications.Iterator();
  v5[64] = v11;
  v12 = *(v11 - 8);
  v5[65] = v12;
  v13 = *(v12 + 64) + 15;
  v5[66] = swift_task_alloc();

  return _swift_task_switch(sub_10001C934, 0, 0);
}

uint64_t sub_10001C934()
{
  v1 = v0[66];
  v2 = v0[56];
  v3 = v0[57];
  v4 = [objc_opt_self() defaultCenter];
  NSNotificationCenter.notifications(named:object:)();

  NSNotificationCenter.Notifications.makeAsyncIterator()();
  swift_beginAccess();
  v5 = sub_1000268AC();
  v6 = async function pointer to dispatch thunk of AsyncIteratorProtocol.next()[1];
  v7 = swift_task_alloc();
  v0[67] = v7;
  *v7 = v0;
  v7[1] = sub_10001CA4C;
  v8 = v0[66];
  v9 = v0[63];
  v10 = v0[64];

  return dispatch thunk of AsyncIteratorProtocol.next()(v9, v10, v5);
}

uint64_t sub_10001CA4C()
{
  v2 = *(*v1 + 536);
  v5 = *v1;
  *(*v1 + 544) = v0;

  if (v0)
  {
    v3 = sub_10001CE1C;
  }

  else
  {
    v3 = sub_10001CB60;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10001CB7C()
{
  v1 = v0[63];
  v2 = type metadata accessor for Notification();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    (*(v0[65] + 8))(v0[66], v0[64]);
LABEL_8:
    v6 = v0[66];
    v7 = v0[62];
    v8 = v0[63];
    v9 = v0[61];
    v10 = v0[58];

    v11 = v0[1];

    return v11();
  }

  v3 = v0[57];
  Strong = swift_weakLoadStrong();
  v0[69] = Strong;
  if (!Strong)
  {
    (*(v0[65] + 8))(v0[66], v0[64]);
    goto LABEL_7;
  }

  v5 = Strong;
  if (static Task<>.isCancelled.getter())
  {
    (*(v0[65] + 8))(v0[66], v0[64]);

LABEL_7:
    sub_100008B68(v0[63], &qword_1000838E8, &qword_100061848);
    goto LABEL_8;
  }

  if (qword_1000831F0 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_1000080BC(v13, qword_100086758);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, " .AvailableInputDevicesDidChange received", v16, 2u);
  }

  v17 = v0[62];

  v18 = *(v5 + 16);
  v0[70] = v18;
  v0[71] = swift_allocObject();
  swift_weakInit();
  static TaskPriority.userInitiated.getter();

  return _swift_task_switch(sub_10001CEA8, v18, 0);
}

uint64_t sub_10001CE1C()
{
  *(v0 + 424) = *(v0 + 544);
  sub_100003B30(&qword_1000838F8, &qword_100061850);
  v1 = swift_dynamicCast();

  return _swift_willThrowTypedImpl(v1, &type metadata for Never, &protocol witness table for Never);
}

uint64_t sub_10001CEA8()
{
  v26 = v0;
  v1 = v0[70];
  swift_beginAccess();
  v2 = *(v1 + 112);
  if (*(v2 + 16))
  {
    v3 = *(v1 + 112);

    v4 = sub_100057800(0xD00000000000001FLL, 0x80000001000686F0);
    if (v5)
    {
      sub_100026C30(*(v2 + 56) + 40 * v4, (v0 + 2));

      sub_100026C30((v0 + 2), (v0 + 27));
      sub_100003B30(&qword_100083910, &unk_1000636C0);
      sub_100003B30(&qword_100083908, &unk_100061880);
      if (swift_dynamicCast())
      {
        v6 = v0[55];
        v0[78] = v6;
        v7 = async function pointer to Task<>.value.getter[1];

        v8 = swift_task_alloc();
        v0[79] = v8;
        *v8 = v0;
        v8[1] = sub_10001D930;
        v9 = &type metadata for () + 8;
        v10 = v6;
        goto LABEL_8;
      }

      sub_100004B28(v0 + 2);
    }

    else
    {
    }
  }

  v11 = v0[71];
  v23 = v0[70];
  v12 = v0[62];
  v13 = v0[59];
  v14 = v0[60];
  v15 = v0[58];
  v25 = 0;
  memset(v24, 0, sizeof(v24));
  swift_beginAccess();
  sub_1000555D8(v24, 0xD00000000000001FLL, 0x80000001000686F0);
  swift_endAccess();
  (*(v14 + 16))(v15, v12, v13);
  v16 = *(v14 + 56);
  v16(v15, 0, 1, v13);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_1000618F0;
  v17[5] = v11;

  v18 = sub_100054078(0, 0, v15, &unk_1000618F8, v17);
  v0[72] = v18;
  v0[10] = sub_100003B30(&qword_100083908, &unk_100061880);
  v0[11] = &off_10007BC78;
  v0[7] = v18;
  swift_beginAccess();
  swift_retain_n();
  sub_1000555D8((v0 + 7), 0xD00000000000001FLL, 0x80000001000686F0);
  swift_endAccess();
  v16(v15, 1, 1, v13);
  v19 = swift_allocObject();
  swift_weakInit();
  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = 0;
  v20[4] = v18;
  v20[5] = v19;
  v20[6] = 0xD00000000000001FLL;
  v20[7] = 0x80000001000686F0;

  sub_100054078(0, 0, v15, &unk_100061900, v20);

  v21 = async function pointer to Task<>.value.getter[1];
  v8 = swift_task_alloc();
  v0[73] = v8;
  *v8 = v0;
  v8[1] = sub_10001D2B4;
  v9 = &type metadata for () + 8;
  v10 = v18;
LABEL_8:

  return Task<>.value.getter(v8, v10, v9);
}

uint64_t sub_10001D2B4()
{
  v1 = *(*v0 + 584);
  v2 = *(*v0 + 560);
  v4 = *v0;

  return _swift_task_switch(sub_10001D3C4, v2, 0);
}

uint64_t sub_10001D3C4()
{
  v1 = v0[72];
  v2 = v0[71];

  v3 = v0[62];
  v4 = v0[59];
  v5 = v0[60];
  v6 = *(v5 + 8);
  v0[74] = v6;
  v0[75] = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v3, v4);

  return _swift_task_switch(sub_10001D464, 0, 0);
}

uint64_t sub_10001D464()
{
  v1 = v0[61];
  v2 = *(v0[69] + 16);
  v0[76] = v2;
  v3 = swift_allocObject();
  swift_weakInit();
  v4 = swift_allocObject();
  v0[77] = v4;
  *(v4 + 16) = v3;
  *(v4 + 24) = 0;
  static TaskPriority.userInitiated.getter();

  return _swift_task_switch(sub_10001D528, v2, 0);
}

uint64_t sub_10001D528()
{
  v26 = v0;
  v1 = v0[76];
  swift_beginAccess();
  v2 = *(v1 + 112);
  if (*(v2 + 16))
  {
    v3 = *(v1 + 112);

    v4 = sub_100057800(0xD000000000000027, 0x8000000100068640);
    if (v5)
    {
      sub_100026C30(*(v2 + 56) + 40 * v4, (v0 + 12));

      sub_100026C30((v0 + 12), (v0 + 22));
      sub_100003B30(&qword_100083910, &unk_1000636C0);
      sub_100003B30(&qword_100083908, &unk_100061880);
      if (swift_dynamicCast())
      {
        v6 = v0[54];
        v0[82] = v6;
        v7 = async function pointer to Task<>.value.getter[1];

        v8 = swift_task_alloc();
        v0[83] = v8;
        *v8 = v0;
        v8[1] = sub_10001DD68;
        v9 = &type metadata for () + 8;
        v10 = v6;
        goto LABEL_8;
      }

      sub_100004B28(v0 + 12);
    }

    else
    {
    }
  }

  v11 = v0[77];
  v23 = v0[76];
  v13 = v0[60];
  v12 = v0[61];
  v14 = v0[58];
  v15 = v0[59];
  v25 = 0;
  memset(v24, 0, sizeof(v24));
  swift_beginAccess();
  sub_1000555D8(v24, 0xD000000000000027, 0x8000000100068640);
  swift_endAccess();
  (*(v13 + 16))(v14, v12, v15);
  v16 = *(v13 + 56);
  v16(v14, 0, 1, v15);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_100061908;
  v17[5] = v11;

  v18 = sub_100054078(0, 0, v14, &unk_100061910, v17);
  v0[80] = v18;
  v0[20] = sub_100003B30(&qword_100083908, &unk_100061880);
  v0[21] = &off_10007BC78;
  v0[17] = v18;
  swift_beginAccess();
  swift_retain_n();
  sub_1000555D8((v0 + 17), 0xD000000000000027, 0x8000000100068640);
  swift_endAccess();
  v16(v14, 1, 1, v15);
  v19 = swift_allocObject();
  swift_weakInit();
  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = 0;
  v20[4] = v18;
  v20[5] = v19;
  v20[6] = 0xD000000000000027;
  v20[7] = 0x8000000100068640;

  sub_100054078(0, 0, v14, &unk_100061918, v20);

  v21 = async function pointer to Task<>.value.getter[1];
  v8 = swift_task_alloc();
  v0[81] = v8;
  *v8 = v0;
  v8[1] = sub_10001DB00;
  v9 = &type metadata for () + 8;
  v10 = v18;
LABEL_8:

  return Task<>.value.getter(v8, v10, v9);
}

uint64_t sub_10001D930()
{
  v1 = *(*v0 + 632);
  v2 = *(*v0 + 624);
  v3 = *(*v0 + 560);
  v5 = *v0;

  return _swift_task_switch(sub_10001DA5C, v3, 0);
}