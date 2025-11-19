Swift::Void __swiftcall JSLocalStorage.invokeMethod(_:arguments:)(Swift::String _, Swift::OpaquePointer arguments)
{
  countAndFlagsBits = _._countAndFlagsBits;
  if (_._countAndFlagsBits != 0x6D657449746573 || _._object != 0xE700000000000000)
  {
    object = _._object;
    if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      if (countAndFlagsBits == 0x744965766F6D6572 && object == 0xEA00000000006D65 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        if (*(arguments._rawValue + 2) != 1)
        {
          return;
        }

        sub_10000DD18(arguments._rawValue + 32, v32);
        if ((swift_dynamicCast() & 1) == 0)
        {
          return;
        }

        v18 = OBJC_IVAR____TtC11MusicJSCore14JSLocalStorage_orderedKeys;
        swift_beginAccess();
        v19 = *(v2 + v18);
        v20 = *(v19 + 16);
        if (!v20)
        {
LABEL_28:

          return;
        }

        v21 = 0;
        v22 = (v19 + 40);
        while (1)
        {
          v23 = *(v22 - 1) == v30 && *v22 == v31;
          if (v23 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            break;
          }

          ++v21;
          v22 += 2;
          if (v20 == v21)
          {
            goto LABEL_28;
          }
        }

        swift_beginAccess();
        sub_100DC1394(v21);
        swift_endAccess();

        memset(v32, 0, sizeof(v32));
        swift_beginAccess();
        sub_100CE7AFC(v32, v30, v31);
        swift_endAccess();
      }

      else
      {
        if ((countAndFlagsBits != 0x7261656C63 || object != 0xE500000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          return;
        }

        v24 = OBJC_IVAR____TtC11MusicJSCore14JSLocalStorage_orderedKeys;
        swift_beginAccess();
        *(v2 + v24) = _swiftEmptyArrayStorage;

        v25 = sub_10010BC60(_swiftEmptyArrayStorage);
        v26 = OBJC_IVAR____TtC11MusicJSCore14JSLocalStorage_values;
        swift_beginAccess();
        *(v2 + v26) = v25;
      }

      sub_100D2BEF4();
      return;
    }
  }

  if (*(arguments._rawValue + 2) == 2)
  {
    sub_10000DD18(arguments._rawValue + 32, v32);
    if (swift_dynamicCast())
    {
      v7 = v30;
      v8 = v31;
      sub_10000DD18(arguments._rawValue + 64, v32);
      v9 = OBJC_IVAR____TtC11MusicJSCore14JSLocalStorage_orderedKeys;
      swift_beginAccess();
      v10 = *(v2 + v9);
      __chkstk_darwin();
      v28[2] = &v30;

      v11 = sub_10044AB94(sub_10044CF58, v28, v10);

      if ((v11 & 1) == 0)
      {
        swift_beginAccess();
        v12 = *(v2 + v9);

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v2 + v9) = v12;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v12 = sub_100498B7C(0, *(v12 + 2) + 1, 1, v12);
          *(v2 + v9) = v12;
        }

        v15 = *(v12 + 2);
        v14 = *(v12 + 3);
        v16 = v15 + 1;
        if (v15 >= v14 >> 1)
        {
          v29 = v15 + 1;
          v27 = sub_100498B7C((v14 > 1), v15 + 1, 1, v12);
          v16 = v29;
          v12 = v27;
        }

        *(v12 + 2) = v16;
        v17 = &v12[16 * v15];
        *(v17 + 4) = v7;
        *(v17 + 5) = v8;
        *(v2 + v9) = v12;
        swift_endAccess();
      }

      sub_10000DD18(v32, &v30);
      swift_beginAccess();
      sub_100CE7AFC(&v30, v7, v8);
      swift_endAccess();
      sub_100D2BEF4();
      sub_10000959C(v32);
    }
  }
}

uint64_t sub_100D2BEF4()
{
  sub_10010FC20(&unk_1011972C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100EBDC20;
  *(inited + 32) = 0x4B6465726564726FLL;
  *(inited + 40) = 0xEB00000000737965;
  v2 = OBJC_IVAR____TtC11MusicJSCore14JSLocalStorage_orderedKeys;
  swift_beginAccess();
  v3 = *(v0 + v2);
  v4 = sub_10010FC20(&qword_101183BC8);
  *(inited + 48) = v3;
  *(inited + 72) = v4;
  *(inited + 80) = 0x7365756C6176;
  *(inited + 88) = 0xE600000000000000;
  v5 = OBJC_IVAR____TtC11MusicJSCore14JSLocalStorage_values;
  swift_beginAccess();
  v6 = *(v0 + v5);
  v7 = sub_10010FC20(&qword_101197BD0);
  *(inited + 120) = v7;
  *(inited + 96) = v6;

  v8 = sub_10010BC60(inited);
  swift_setDeallocating();
  sub_10010FC20(&unk_1011927D0);
  swift_arrayDestroy();
  v11[3] = v7;
  v11[0] = v8;
  sub_100D2C42C();
  sub_100009838();
  NSUserDefaults.subscript.setter(v11, v9, &type metadata for JSLocalStorage.ScriptingUserDefaultsKey);
  return sub_100D2B320(0);
}

Swift::Int sub_100D2C0A4()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_100D2C118()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100D2C16C@<X0>(Swift::String *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_1010FB360, *a1);

  *a2 = v3 != 0;
  return result;
}

uint64_t sub_100D2C210()
{
}

uint64_t sub_100D2C2E0(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
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
          v8 = sub_100D01348(v5, a3);
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

unint64_t sub_100D2C42C()
{
  result = qword_1011BF770;
  if (!qword_1011BF770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011BF770);
  }

  return result;
}

unint64_t sub_100D2C494()
{
  result = qword_1011BF778;
  if (!qword_1011BF778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011BF778);
  }

  return result;
}

uint64_t JSNowPlayingComponentController.init()()
{
  v1 = v0;
  v13[0] = _swiftEmptyArrayStorage;
  memset(&v13[1], 0, 24);
  v13[4] = 1;
  v14 = 0;
  v2 = objc_allocWithZone(type metadata accessor for JSNowPlayingViewModel());
  v2[OBJC_IVAR____TtC11MusicJSCore21JSNowPlayingViewModel_mode] = 3;
  v2[OBJC_IVAR____TtC11MusicJSCore21JSNowPlayingViewModel_lyricsMode] = 5;
  *&v2[OBJC_IVAR____TtC11MusicJSCore21JSNowPlayingViewModel_currentMetricsDictionary] = _swiftEmptyDictionarySingleton;
  v3 = &v2[OBJC_IVAR____TtC11MusicJSCore11JSViewModel_playActivityFeatureName];
  *v3 = 0;
  v3[1] = 0xE000000000000000;
  *&v2[OBJC_IVAR____TtC11MusicJSCore11JSViewModel_playActivityRecommendationData] = xmmword_100EFDB60;
  v4 = &v2[OBJC_IVAR____TtC11MusicJSCore11JSViewModel_editorialID];
  *v4 = 0;
  v4[1] = 0;
  v5 = JSObject.init(type:)(v13);
  sub_10010FC20(&qword_1011BF780);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100EBC6B0;
  *(inited + 32) = 0x65646F4D77656976;
  *(inited + 40) = 0xE90000000000006CLL;
  *(inited + 48) = v5;
  v7 = v5;
  v8 = sub_100CE6628(inited);
  swift_setDeallocating();
  sub_100D2C778(inited + 32);
  *(v1 + OBJC_IVAR____TtC11MusicJSCore31JSNowPlayingComponentController_viewModel) = v7;
  sub_10010FC20(&qword_101181530);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_100EBC6B0;
  *(v9 + 56) = sub_10010FC20(&qword_1011BF790);
  *(v9 + 32) = v8;
  v11[0] = v9;
  v11[1] = 0;
  v11[2] = 0;
  v11[3] = 0xD000000000000014;
  v11[4] = 0x8000000100E70510;
  v12 = 0;
  return sub_100DC6530(v11, v1);
}

uint64_t sub_100D2C778(uint64_t a1)
{
  v2 = sub_10010FC20(&qword_1011BF788);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for JSNowPlayingComponentController()
{
  result = qword_1011BF7C0;
  if (!qword_1011BF7C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

MusicJSCore::JSNativeExecutionFence::Kind_optional __swiftcall JSNativeExecutionFence.Kind.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1010FA898, v2);

  if (v3 == 1)
  {
    v4.value = MusicJSCore_JSNativeExecutionFence_Kind_layoutCompleted;
  }

  else
  {
    v4.value = MusicJSCore_JSNativeExecutionFence_Kind_unknownDefault;
  }

  if (v3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t JSNativeExecutionFence.Kind.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0x6F4374756F79616CLL;
  }

  else
  {
    return 0x72616C75676572;
  }
}

uint64_t sub_100D2C8DC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6F4374756F79616CLL;
  }

  else
  {
    v3 = 0x72616C75676572;
  }

  if (v2)
  {
    v4 = 0xE700000000000000;
  }

  else
  {
    v4 = 0xEF646574656C706DLL;
  }

  if (*a2)
  {
    v5 = 0x6F4374756F79616CLL;
  }

  else
  {
    v5 = 0x72616C75676572;
  }

  if (*a2)
  {
    v6 = 0xEF646574656C706DLL;
  }

  else
  {
    v6 = 0xE700000000000000;
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

Swift::Int sub_100D2C990()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100D2CA20()
{
  String.hash(into:)();
}

Swift::Int sub_100D2CA9C()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100D2CB28@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_1010FA898, *a1);

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

void sub_100D2CB88(uint64_t *a1@<X8>)
{
  v2 = 0x72616C75676572;
  if (*v1)
  {
    v2 = 0x6F4374756F79616CLL;
  }

  v3 = 0xE700000000000000;
  if (*v1)
  {
    v3 = 0xEF646574656C706DLL;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t JSNativeExecutionFence.updateProperty(_:value:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  if ((*(v3 + OBJC_IVAR____TtC11MusicJSCore22JSNativeExecutionFence_isFrozen) & 1) == 0)
  {
    v5 = result;
    v9[0] = result;
    v9[1] = a2;
    sub_1000189C0(a3, v10);
    if (v10[3])
    {
      sub_1000189C0(v10, v8);

      if (swift_dynamicCast())
      {
        if (v5 == 1684957547 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          v6 = _findStringSwitchCase(cases:string:)(&off_1010FA898, v7);

          *(v3 + OBJC_IVAR____TtC11MusicJSCore22JSNativeExecutionFence_kind) = v6 == 1;
          sub_10000959C(v8);
          sub_1000095E8(v10, &unk_101183F30);
        }
      }

      sub_10000959C(v8);
    }

    else
    {
    }

    return sub_1000095E8(v9, &unk_1011C0D90);
  }

  return result;
}

uint64_t sub_100D2CD50()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100009F78(0, &qword_1011BE8E0);
  v7 = static NSDateFormatter.iso8601ExtendedDateFormatter.getter();
  Date.init()();
  isa = Date._bridgeToObjectiveC()().super.isa;
  (*(v4 + 8))(v6, v3);
  v9 = [v7 stringFromDate:isa];

  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  if (qword_1011BDB08 != -1)
  {
    swift_once();
  }

  v13 = static JSBridge.shared;
  sub_10010FC20(&qword_101181530);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_100EBDC20;
  *(v14 + 32) = v1;
  *(v14 + 88) = &type metadata for String;
  *(v14 + 56) = ObjectType;
  *(v14 + 64) = v10;
  *(v14 + 72) = v12;
  sub_100009F78(0, &qword_101182960);
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  *(v15 + 24) = _swiftEmptyArrayStorage;
  *(v15 + 32) = 0xD000000000000010;
  *(v15 + 40) = 0x8000000100E705E0;
  *(v15 + 48) = v1;
  *(v15 + 56) = v13;
  *(v15 + 64) = 0;
  v16 = v1;
  v17 = v13;
  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_100CE6890, v15);
}

id JSNativeExecutionFence.__allocating_init(type:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v3[OBJC_IVAR____TtC11MusicJSCore22JSNativeExecutionFence_kind] = 0;
  v3[OBJC_IVAR____TtC11MusicJSCore22JSNativeExecutionFence_isFrozen] = 0;
  return JSObject.init(type:)(a1);
}

id JSNativeExecutionFence.init(type:)(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC11MusicJSCore22JSNativeExecutionFence_kind) = 0;
  *(v1 + OBJC_IVAR____TtC11MusicJSCore22JSNativeExecutionFence_isFrozen) = 0;
  return JSObject.init(type:)(a1);
}

void _s11MusicJSCore22JSNativeExecutionFenceC12invokeMethod_9argumentsySS_SayypGtF_0(uint64_t a1, uint64_t a2)
{
  v3 = OBJC_IVAR____TtC11MusicJSCore22JSNativeExecutionFence_isFrozen;
  if (v2[OBJC_IVAR____TtC11MusicJSCore22JSNativeExecutionFence_isFrozen] & 1) == 0 && (a1 == 0x7265747369676572 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)()))
  {
    v2[v3] = 1;
    if (v2[OBJC_IVAR____TtC11MusicJSCore22JSNativeExecutionFence_kind])
    {
      v4 = [objc_opt_self() sharedApplication];
      v5 = swift_allocObject();
      *(v5 + 16) = v2;
      v8[4] = sub_100D2D274;
      v8[5] = v5;
      v8[0] = _NSConcreteStackBlock;
      v8[1] = 1107296256;
      v8[2] = sub_10002BC98;
      v8[3] = &unk_1011007A0;
      v6 = _Block_copy(v8);
      v7 = v2;

      [v4 _performBlockAfterCATransactionCommits:v6];
      _Block_release(v6);
    }

    else
    {

      sub_100D2CD50();
    }
  }
}

unint64_t sub_100D2D1EC()
{
  result = qword_1011BF7E0;
  if (!qword_1011BF7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011BF7E0);
  }

  return result;
}

id JSBackgroundFetchManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);
  v10[0] = _swiftEmptyArrayStorage;
  v10[1] = 1;
  memset(&v10[2], 0, 24);
  v11 = 0;
  v2 = JSObject.init(type:)(v10);
  v3 = qword_1011BDB08;
  v4 = v2;
  if (v3 != -1)
  {
    swift_once();
  }

  v5 = static JSBridge.shared;
  sub_100027010();
  v6 = swift_allocObject();
  *(v6 + 16) = 0xD000000000000016;
  *(v6 + 24) = 0x8000000100E6E450;
  *(v6 + 32) = v4;
  *(v6 + 40) = v5;
  *(v6 + 48) = 1;
  v7 = v4;
  v8 = v5;
  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_100CF9E08, v6);

  return v7;
}

id JSBackgroundFetchManager.init()()
{
  v8[0] = _swiftEmptyArrayStorage;
  v8[1] = 1;
  memset(&v8[2], 0, 24);
  v9 = 0;
  v0 = JSObject.init(type:)(v8);
  v1 = qword_1011BDB08;
  v2 = v0;
  if (v1 != -1)
  {
    swift_once();
  }

  v3 = static JSBridge.shared;
  sub_100027010();
  v4 = swift_allocObject();
  *(v4 + 16) = 0xD000000000000016;
  *(v4 + 24) = 0x8000000100E6E450;
  *(v4 + 32) = v2;
  *(v4 + 40) = v3;
  *(v4 + 48) = 1;
  v5 = v2;
  v6 = v3;
  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_100CFA590, v4);

  return v5;
}

void _s11MusicJSCore24JSBackgroundFetchManagerC12invokeMethod_9argumentsySS_SayypGtF_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10010FC20(&qword_101183A20);
  __chkstk_darwin();
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = &v18 - v8;
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 == 0x7265747369676572 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    if (*(a3 + 16) == 2)
    {
      sub_10000DD18(a3 + 32, v20);
      if (swift_dynamicCast())
      {
        v15 = v18;
        v14 = v19;
        sub_10000DD18(a3 + 64, v20);
        if (swift_dynamicCast())
        {
          URL.init(string:)();

          if ((*(v11 + 48))(v9, 1, v10) == 1)
          {

            sub_100028A38(v9);
          }

          else
          {
            (*(v11 + 32))(v13, v9, v10);
            BackgroundFetchManager.shared.unsafeMutableAddressor();
            (*(v11 + 16))(v7, v13, v10);
            (*(v11 + 56))(v7, 0, 1, v10);

            BackgroundFetchManager.subscript.setter(v7, v15, v14);

            (*(v11 + 8))(v13, v10);
          }
        }

        else
        {
        }
      }
    }
  }

  else if (a1 == 0x65766F6D6572 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    if (*(a3 + 16))
    {
      sub_10000DD18(a3 + 32, v20);
      if (swift_dynamicCast())
      {
        v16 = v18;
        v17 = v19;
        BackgroundFetchManager.shared.unsafeMutableAddressor();
        (*(v11 + 56))(v7, 1, 1, v10);

        BackgroundFetchManager.subscript.setter(v7, v16, v17);
      }
    }

    else
    {
      __break(1u);
    }
  }

  else if (a1 == 0x6C4165766F6D6572 && a2 == 0xE90000000000006CLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    BackgroundFetchManager.shared.unsafeMutableAddressor();

    BackgroundFetchManager.removeAll()();
  }
}

uint64_t JSMultiChoiceItem.updateProperty(_:value:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12[0] = a1;
  v12[1] = a2;
  sub_1000189C0(a3, v13);
  if (v13[3])
  {
    sub_1000189C0(v13, v11);

    if (swift_dynamicCast())
    {
      if (a1 == 0x786554656C746974 && a2 == 0xE900000000000074 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v6 = OBJC_IVAR____TtC11MusicJSCore17JSMultiChoiceItem_titleText;
LABEL_7:
        v7 = (v3 + v6);
        swift_beginAccess();
        *v7 = v9;
        v7[1] = v10;

        sub_10000959C(v11);
        sub_1000095E8(v13, &unk_101183F30);
      }

      if (a1 == 0x656C746974627573 && a2 == 0xEC00000074786554 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v6 = OBJC_IVAR____TtC11MusicJSCore17JSMultiChoiceItem_subtitleText;
        goto LABEL_7;
      }
    }

    sub_10000959C(v11);
  }

  else
  {
  }

  return sub_1000095E8(v12, &unk_1011C0D90);
}

id JSMultiChoiceItem.__allocating_init(type:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = &v3[OBJC_IVAR____TtC11MusicJSCore17JSMultiChoiceItem_titleText];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = &v3[OBJC_IVAR____TtC11MusicJSCore17JSMultiChoiceItem_subtitleText];
  *v5 = 0;
  *(v5 + 1) = 0;
  return JSObject.init(type:)(a1);
}

id JSMultiChoiceItem.init(type:)(uint64_t a1)
{
  v2 = (v1 + OBJC_IVAR____TtC11MusicJSCore17JSMultiChoiceItem_titleText);
  *v2 = 0;
  v2[1] = 0;
  v3 = (v1 + OBJC_IVAR____TtC11MusicJSCore17JSMultiChoiceItem_subtitleText);
  *v3 = 0;
  v3[1] = 0;
  return JSObject.init(type:)(a1);
}

uint64_t sub_100D2DBCC()
{
}

id JSMultiChoiceItem.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JSMultiChoiceItem();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t JSInlinePopup.delegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC11MusicJSCore13JSInlinePopup_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*JSInlinePopup.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC11MusicJSCore13JSInlinePopup_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_100CC4F94;
}

uint64_t JSInlinePopup.title.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC11MusicJSCore13JSInlinePopup_title);
  swift_beginAccess();
  v6 = a2;
  v7 = *v5;
  v8 = v5[1];
  *v5 = a1;
  v5[1] = v6;
  if (v7 == a1 && v8 == v6)
  {
  }

  v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v10 & 1) == 0)
  {
    v12 = v2 + OBJC_IVAR____TtC11MusicJSCore13JSInlinePopup_delegate;
    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v13 = *(v12 + 8);
      ObjectType = swift_getObjectType();
      v16 = *v5;
      v15 = v5[1];
      v17 = *(v13 + 8);

      v17(v2, v16, v15, ObjectType, v13);
      swift_unknownObjectRelease();
    }
  }

  return result;
}

void (*JSInlinePopup.title.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = (v1 + OBJC_IVAR____TtC11MusicJSCore13JSInlinePopup_title);
  swift_beginAccess();
  v6 = v5[1];
  *(v4 + 24) = *v5;
  *(v4 + 32) = v6;

  return sub_100D2E00C;
}

uint64_t JSInlinePopup.message.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC11MusicJSCore13JSInlinePopup_message);
  swift_beginAccess();
  v6 = a2;
  v7 = *v5;
  v8 = v5[1];
  *v5 = a1;
  v5[1] = v6;
  if (v7 == a1 && v8 == v6)
  {
  }

  v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v10 & 1) == 0)
  {
    v12 = v2 + OBJC_IVAR____TtC11MusicJSCore13JSInlinePopup_delegate;
    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v13 = *(v12 + 8);
      ObjectType = swift_getObjectType();
      v16 = *v5;
      v15 = v5[1];
      v17 = *(v13 + 16);

      v17(v2, v16, v15, ObjectType, v13);
      swift_unknownObjectRelease();
    }
  }

  return result;
}

void (*JSInlinePopup.message.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = (v1 + OBJC_IVAR____TtC11MusicJSCore13JSInlinePopup_message);
  swift_beginAccess();
  v6 = v5[1];
  *(v4 + 24) = *v5;
  *(v4 + 32) = v6;

  return sub_100D2E1F0;
}

void sub_100D2E208(uint64_t a1, char a2, void (*a3)(uint64_t, uint64_t))
{
  v4 = *a1;
  v5 = *(*a1 + 24);
  v6 = *(*a1 + 32);
  if (a2)
  {

    a3(v5, v6);
  }

  else
  {
    a3(*(*a1 + 24), v6);
  }

  free(v4);
}

void *JSInlinePopup.button.getter()
{
  v1 = OBJC_IVAR____TtC11MusicJSCore13JSInlinePopup_button;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void JSInlinePopup.button.setter(void *a1)
{
  v3 = OBJC_IVAR____TtC11MusicJSCore13JSInlinePopup_button;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  if (a1)
  {
    if (v4)
    {
      v5 = v4 == a1;
    }

    else
    {
      v5 = 0;
    }

    if (v5)
    {
      goto LABEL_11;
    }
  }

  else if (!v4)
  {
    goto LABEL_11;
  }

  v6 = v1 + OBJC_IVAR____TtC11MusicJSCore13JSInlinePopup_delegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v7 = *(v6 + 8);
    ObjectType = swift_getObjectType();
    v9 = *(v7 + 24);
    v10 = a1;
    v9(v1, a1, ObjectType, v7);

    swift_unknownObjectRelease();
    return;
  }

LABEL_11:
}

void (*JSInlinePopup.button.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC11MusicJSCore13JSInlinePopup_button;
  *(v3 + 80) = v1;
  *(v3 + 88) = v5;
  swift_beginAccess();
  v6 = *(v1 + v5);
  *(v4 + 72) = v6;
  v7 = v6;
  return sub_100D2E484;
}

void sub_100D2E484(uint64_t a1, char a2)
{
  v2 = *a1;
  v4 = (*a1 + 72);
  v3 = *v4;
  v6 = *(*a1 + 80);
  v5 = *(*a1 + 88);
  v7 = *(v6 + v5);
  *(v6 + v5) = *v4;
  if (a2)
  {
    if (v3)
    {
      if (v3 == v7)
      {
        goto LABEL_11;
      }
    }

    else if (!v7)
    {
      goto LABEL_12;
    }

    v8 = v2[10] + OBJC_IVAR____TtC11MusicJSCore13JSInlinePopup_delegate;
    swift_beginAccess();
    if (!swift_unknownObjectWeakLoadStrong())
    {
LABEL_11:
      v13 = v3;
      goto LABEL_12;
    }

    v20 = v2[10];
    v9 = *(v8 + 8);
    ObjectType = swift_getObjectType();
    v11 = *(v9 + 24);
    v12 = v3;
    v11(v20, v3, ObjectType, v9);
    swift_unknownObjectRelease();

    v7 = v12;
LABEL_12:

    v7 = *v4;
    goto LABEL_16;
  }

  if (v3)
  {
    if (v3 == v7)
    {
      goto LABEL_16;
    }
  }

  else if (!v7)
  {
    goto LABEL_16;
  }

  v14 = v2[10] + OBJC_IVAR____TtC11MusicJSCore13JSInlinePopup_delegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v15 = v2[10];
    v16 = *(v14 + 8);
    v17 = swift_getObjectType();
    v18 = *(v16 + 24);
    v19 = v3;
    v18(v15, v3, v17, v16);
    swift_unknownObjectRelease();

    v7 = v19;
  }

LABEL_16:

  free(v2);
}

void *JSInlinePopup.childViewModel.getter()
{
  v1 = OBJC_IVAR____TtC11MusicJSCore13JSInlinePopup_childViewModel;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void JSInlinePopup.childViewModel.setter(void *a1)
{
  v3 = OBJC_IVAR____TtC11MusicJSCore13JSInlinePopup_childViewModel;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  if (a1)
  {
    if (v4)
    {
      v5 = v4 == a1;
    }

    else
    {
      v5 = 0;
    }

    if (v5)
    {
      goto LABEL_11;
    }
  }

  else if (!v4)
  {
    goto LABEL_11;
  }

  v6 = v1 + OBJC_IVAR____TtC11MusicJSCore13JSInlinePopup_delegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v7 = *(v6 + 8);
    ObjectType = swift_getObjectType();
    v9 = *(v7 + 32);
    v10 = a1;
    v9(v1, a1, ObjectType, v7);

    swift_unknownObjectRelease();
    return;
  }

LABEL_11:
}

void (*JSInlinePopup.childViewModel.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC11MusicJSCore13JSInlinePopup_childViewModel;
  *(v3 + 80) = v1;
  *(v3 + 88) = v5;
  swift_beginAccess();
  v6 = *(v1 + v5);
  *(v4 + 72) = v6;
  v7 = v6;
  return sub_100D2E838;
}

void sub_100D2E838(uint64_t a1, char a2)
{
  v2 = *a1;
  v4 = (*a1 + 72);
  v3 = *v4;
  v6 = *(*a1 + 80);
  v5 = *(*a1 + 88);
  v7 = *(v6 + v5);
  *(v6 + v5) = *v4;
  if (a2)
  {
    if (v3)
    {
      if (v3 == v7)
      {
        goto LABEL_11;
      }
    }

    else if (!v7)
    {
      goto LABEL_12;
    }

    v8 = v2[10] + OBJC_IVAR____TtC11MusicJSCore13JSInlinePopup_delegate;
    swift_beginAccess();
    if (!swift_unknownObjectWeakLoadStrong())
    {
LABEL_11:
      v13 = v3;
      goto LABEL_12;
    }

    v20 = v2[10];
    v9 = *(v8 + 8);
    ObjectType = swift_getObjectType();
    v11 = *(v9 + 32);
    v12 = v3;
    v11(v20, v3, ObjectType, v9);
    swift_unknownObjectRelease();

    v7 = v12;
LABEL_12:

    v7 = *v4;
    goto LABEL_16;
  }

  if (v3)
  {
    if (v3 == v7)
    {
      goto LABEL_16;
    }
  }

  else if (!v7)
  {
    goto LABEL_16;
  }

  v14 = v2[10] + OBJC_IVAR____TtC11MusicJSCore13JSInlinePopup_delegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v15 = v2[10];
    v16 = *(v14 + 8);
    v17 = swift_getObjectType();
    v18 = *(v16 + 32);
    v19 = v3;
    v18(v15, v3, v17, v16);
    swift_unknownObjectRelease();

    v7 = v19;
  }

LABEL_16:

  free(v2);
}

uint64_t JSInlinePopup.didSelectCloseButton(snapshotImpressions:pageDetailsProvider:)(uint64_t a1, void *a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  if (qword_1011BDB08 != -1)
  {
    swift_once();
  }

  v7 = static JSBridge.shared;
  sub_10010FC20(&qword_101181530);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_100EBDC20;
  *(v8 + 56) = ObjectType;
  *(v8 + 32) = v3;
  if (a1)
  {
    objc_allocWithZone(type metadata accessor for JSImpressionsBatch());
    v9 = a2;
    v10 = v3;

    v12 = sub_100D32680(v11, 0, a2);

    *(v8 + 88) = sub_100009F78(0, &qword_101197A30);
    if (v12)
    {
      goto LABEL_8;
    }
  }

  else
  {
    *(v8 + 88) = sub_100009F78(0, &qword_101197A30);
    v13 = v3;
  }

  v12 = [objc_allocWithZone(NSNull) init];
LABEL_8:
  *(v8 + 64) = v12;
  sub_100009F78(0, &qword_101182960);
  v14 = swift_allocObject();
  *(v14 + 16) = v8;
  *(v14 + 24) = _swiftEmptyArrayStorage;
  *(v14 + 32) = 0xD00000000000001BLL;
  *(v14 + 40) = 0x8000000100E70140;
  *(v14 + 48) = v3;
  *(v14 + 56) = v7;
  *(v14 + 64) = 0;
  v15 = v3;
  v16 = v7;
  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_100CE6890, v14);
}

uint64_t JSInlinePopup.updateProperty(_:value:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v27[0] = a1;
  v27[1] = a2;
  sub_1000189C0(a3, v28);
  if (!v28[3])
  {

    goto LABEL_15;
  }

  sub_1000189C0(v28, v25);

  if (!swift_dynamicCast())
  {
LABEL_14:
    sub_10000959C(v25);
LABEL_15:
    if (a1 == 0x6E6F74747562 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      sub_1000189C0(a3, v25);
      if (v26)
      {
        type metadata accessor for JSInlinePopupButton();
        if (swift_dynamicCast())
        {
          v7 = v23;
        }

        else
        {
          v7 = 0;
        }
      }

      else
      {
        sub_1000095E8(v25, &unk_101183F30);
        v7 = 0;
      }

      v8 = OBJC_IVAR____TtC11MusicJSCore13JSInlinePopup_button;
      swift_beginAccess();
      v9 = *(v3 + v8);
      *(v3 + v8) = v7;
      if (v7)
      {
        if (v9)
        {
          v10 = v7 == v9;
        }

        else
        {
          v10 = 0;
        }

        if (v10)
        {
          goto LABEL_49;
        }
      }

      else if (!v9)
      {
        goto LABEL_49;
      }

      v11 = v3 + OBJC_IVAR____TtC11MusicJSCore13JSInlinePopup_delegate;
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v12 = *(v11 + 8);
        ObjectType = swift_getObjectType();
        v14 = *(v12 + 24);
        v15 = v7;
        v14(v3, v7, ObjectType, v12);
LABEL_33:

        swift_unknownObjectRelease();
        goto LABEL_50;
      }
    }

    else
    {
      if ((a1 != 0x656956646C696863 || a2 != 0xEE006C65646F4D77) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        JSViewModel.updateProperty(_:value:)(a1, a2, a3);
        return sub_1000095E8(v27, &unk_1011C0D90);
      }

      sub_1000189C0(a3, v25);
      if (v26)
      {
        type metadata accessor for JSViewModel();
        if (swift_dynamicCast())
        {
          v16 = v23;
        }

        else
        {
          v16 = 0;
        }
      }

      else
      {
        sub_1000095E8(v25, &unk_101183F30);
        v16 = 0;
      }

      v17 = OBJC_IVAR____TtC11MusicJSCore13JSInlinePopup_childViewModel;
      swift_beginAccess();
      v9 = *(v3 + v17);
      *(v3 + v17) = v16;
      if (v16)
      {
        if (v9 && v16 == v9)
        {
          goto LABEL_49;
        }
      }

      else if (!v9)
      {
        goto LABEL_49;
      }

      v18 = v3 + OBJC_IVAR____TtC11MusicJSCore13JSInlinePopup_delegate;
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v19 = *(v18 + 8);
        v20 = swift_getObjectType();
        v21 = *(v19 + 32);
        v15 = v16;
        v21(v3, v16, v20, v19);
        goto LABEL_33;
      }
    }

LABEL_49:

    goto LABEL_50;
  }

  if ((a1 != 0x656C746974 || a2 != 0xE500000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    if (a1 == 0x6567617373656DLL && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      JSInlinePopup.message.setter(v23, v24);
      goto LABEL_7;
    }

    goto LABEL_14;
  }

  JSInlinePopup.title.setter(v23, v24);
LABEL_7:
  sub_10000959C(v25);
LABEL_50:
  sub_1000095E8(v28, &unk_101183F30);
}

id JSInlinePopup.init(type:)(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC11MusicJSCore13JSInlinePopup_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v3 = (v1 + OBJC_IVAR____TtC11MusicJSCore13JSInlinePopup_title);
  *v3 = 0;
  v3[1] = 0xE000000000000000;
  v4 = (v1 + OBJC_IVAR____TtC11MusicJSCore13JSInlinePopup_message);
  *v4 = 0;
  v4[1] = 0xE000000000000000;
  *(v1 + OBJC_IVAR____TtC11MusicJSCore13JSInlinePopup_button) = 0;
  *(v1 + OBJC_IVAR____TtC11MusicJSCore13JSInlinePopup_childViewModel) = 0;
  v5 = (v1 + OBJC_IVAR____TtC11MusicJSCore11JSViewModel_playActivityFeatureName);
  *v5 = 0;
  v5[1] = 0xE000000000000000;
  *(v1 + OBJC_IVAR____TtC11MusicJSCore11JSViewModel_playActivityRecommendationData) = xmmword_100EFDB60;
  v6 = (v1 + OBJC_IVAR____TtC11MusicJSCore11JSViewModel_editorialID);
  *v6 = 0;
  v6[1] = 0;

  return JSObject.init(type:)(a1);
}

void sub_100D2F164()
{
  sub_1000D8F2C(v0 + OBJC_IVAR____TtC11MusicJSCore13JSInlinePopup_delegate);

  v1 = *(v0 + OBJC_IVAR____TtC11MusicJSCore13JSInlinePopup_childViewModel);
}

uint64_t JSSocialOnboardingVerticalStack.BarButtonItemKind.rawValue.getter(char a1)
{
  if (!a1)
  {
    return 0x6C65636E6163;
  }

  if (a1 == 1)
  {
    return 1701736292;
  }

  return 0xD000000000000010;
}

uint64_t sub_100D2F2D8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE400000000000000;
  v4 = 1701736292;
  v5 = 0x8000000100E6D110;
  if (v2 != 1)
  {
    v4 = 0xD000000000000010;
    v3 = 0x8000000100E6D110;
  }

  if (*a1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0x6C65636E6163;
  }

  if (v2)
  {
    v7 = v3;
  }

  else
  {
    v7 = 0xE600000000000000;
  }

  v8 = 1701736292;
  if (*a2 == 1)
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v8 = 0xD000000000000010;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6C65636E6163;
  }

  if (*a2)
  {
    v10 = v5;
  }

  else
  {
    v10 = 0xE600000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int sub_100D2F3C0()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100D2F45C()
{
  String.hash(into:)();
}

Swift::Int sub_100D2F4E4()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_100D2F57C@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s11MusicJSCore31JSSocialOnboardingVerticalStackC17BarButtonItemKindO8rawValueAESgSS_tcfC_0(*a1);
  *a2 = result;
  return result;
}

void sub_100D2F5AC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0xE400000000000000;
  v5 = 1701736292;
  if (v2 != 1)
  {
    v5 = 0xD000000000000010;
    v4 = 0x8000000100E6D110;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6C65636E6163;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t JSSocialOnboardingVerticalStack.pinnedChildViewModel.getter()
{
  v1 = OBJC_IVAR____TtC11MusicJSCore31JSSocialOnboardingVerticalStack_pinnedChildViewModel;
  swift_beginAccess();
  v2 = *(v0 + v1);
  sub_100D30530(v2);
  return v2;
}

uint64_t JSSocialOnboardingVerticalStack.isEditing.getter()
{
  v1 = OBJC_IVAR____TtC11MusicJSCore31JSSocialOnboardingVerticalStack_isEditing;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t JSSocialOnboardingVerticalStack.requiresValidation.getter()
{
  v1 = OBJC_IVAR____TtC11MusicJSCore31JSSocialOnboardingVerticalStack_requiresValidation;
  swift_beginAccess();
  return *(v0 + v1);
}

void *JSSocialOnboardingVerticalStack.nextStepButton.getter()
{
  v1 = OBJC_IVAR____TtC11MusicJSCore31JSSocialOnboardingVerticalStack_nextStepButton;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void *JSSocialOnboardingVerticalStack.cancelStepButton.getter()
{
  v1 = OBJC_IVAR____TtC11MusicJSCore31JSSocialOnboardingVerticalStack_cancelStepButton;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void *JSSocialOnboardingVerticalStack.cancelBarButtonItem.getter()
{
  v1 = OBJC_IVAR____TtC11MusicJSCore31JSSocialOnboardingVerticalStack_cancelBarButtonItem;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

Swift::Void __swiftcall JSSocialOnboardingVerticalStack.enqueueFinishEditingCallback()()
{
  ObjectType = swift_getObjectType();
  if (qword_1011BDB08 != -1)
  {
    swift_once();
  }

  v2 = static JSBridge.shared;
  sub_10010FC20(&qword_101181530);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100EBC6B0;
  *(v3 + 56) = ObjectType;
  *(v3 + 32) = v0;
  sub_100009F78(0, &qword_101182960);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = _swiftEmptyArrayStorage;
  *(v4 + 32) = 0xD000000000000017;
  *(v4 + 40) = 0x8000000100E706D0;
  *(v4 + 48) = v0;
  *(v4 + 56) = v2;
  *(v4 + 64) = 0;
  v5 = v0;
  v6 = v2;
  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_100D05168, v4);
}

uint64_t JSSocialOnboardingVerticalStack.reportSelectionForBarButtonItem(_:impressions:pageDetailsProvider:)(char a1, uint64_t a2, void *a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  if (qword_1011BDB08 != -1)
  {
    swift_once();
  }

  v9 = static JSBridge.shared;
  sub_10010FC20(&qword_101181530);
  v10 = swift_allocObject();
  v11 = v10;
  *(v10 + 16) = xmmword_100EBE260;
  *(v10 + 56) = ObjectType;
  *(v10 + 32) = v4;
  if (a1)
  {
    if (a1 == 1)
    {
      v12 = 0xE400000000000000;
      v13 = 1701736292;
    }

    else
    {
      v12 = 0x8000000100E6D110;
      v13 = 0xD000000000000010;
    }
  }

  else
  {
    v12 = 0xE600000000000000;
    v13 = 0x6C65636E6163;
  }

  *(v10 + 88) = &type metadata for String;
  *(v10 + 64) = v13;
  *(v10 + 72) = v12;
  if (a2)
  {
    objc_allocWithZone(type metadata accessor for JSImpressionsBatch());
    v14 = a3;
    v15 = v4;

    v17 = sub_100D32680(v16, 0, a3);

    *(v11 + 120) = sub_100009F78(0, &qword_101197A30);
    if (v17)
    {
      goto LABEL_13;
    }
  }

  else
  {
    *(v10 + 120) = sub_100009F78(0, &qword_101197A30);
    v18 = v4;
  }

  v17 = [objc_allocWithZone(NSNull) init];
LABEL_13:
  *(v11 + 96) = v17;
  sub_100009F78(0, &qword_101182960);
  v19 = swift_allocObject();
  *(v19 + 16) = v11;
  *(v19 + 24) = _swiftEmptyArrayStorage;
  *(v19 + 32) = 0xD00000000000001DLL;
  *(v19 + 40) = 0x8000000100E706F0;
  *(v19 + 48) = v4;
  *(v19 + 56) = v9;
  *(v19 + 64) = 0;
  v20 = v4;
  v21 = v9;
  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_100D05FE0, v19);
}

uint64_t JSSocialOnboardingVerticalStack.updateProperty(_:value:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v38[0] = a1;
  v38[1] = a2;
  sub_1000189C0(a3, v39);
  if (!v39[3])
  {

    goto LABEL_9;
  }

  sub_1000189C0(v39, v37);
  type metadata accessor for JSGridItemButton();

  if (swift_dynamicCast())
  {
    v7 = v35;
    if (a1 == 0x706574537478656ELL && a2 == 0xEE006E6F74747542 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v8 = OBJC_IVAR____TtC11MusicJSCore31JSSocialOnboardingVerticalStack_nextStepButton;
LABEL_7:
      swift_beginAccess();
      v9 = *(v3 + v8);
      *(v3 + v8) = v7;

LABEL_52:
      sub_10000959C(v37);
LABEL_53:
      sub_1000095E8(v39, &unk_101183F30);
    }

    if (a1 == 0xD000000000000010 && 0x8000000100E707B0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v8 = OBJC_IVAR____TtC11MusicJSCore31JSSocialOnboardingVerticalStack_cancelStepButton;
      goto LABEL_7;
    }
  }

  if (swift_dynamicCast())
  {
    v11 = v36;
    if (a1 == 0xD000000000000017 && 0x8000000100E70770 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v12 = OBJC_IVAR____TtC11MusicJSCore31JSSocialOnboardingVerticalStack_pinnedButtonsHeaderText;
LABEL_20:
      v13 = (v3 + v12);
      swift_beginAccess();
      *v13 = v35;
      v13[1] = v11;

      goto LABEL_52;
    }

    if (a1 == 0xD000000000000017 && 0x8000000100E70790 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v12 = OBJC_IVAR____TtC11MusicJSCore31JSSocialOnboardingVerticalStack_pinnedButtonsFooterText;
      goto LABEL_20;
    }
  }

  sub_10010FC20(&qword_1011BEAC0);
  if (!swift_dynamicCast())
  {
LABEL_46:
    if (swift_dynamicCast())
    {
      if (a1 == 0x6E69746964457369 && a2 == 0xE900000000000067 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v25 = OBJC_IVAR____TtC11MusicJSCore31JSSocialOnboardingVerticalStack_isEditing;
LABEL_51:
        swift_beginAccess();
        *(v3 + v25) = v35;
        goto LABEL_52;
      }

      if (a1 == 0xD000000000000012 && 0x8000000100E70750 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v25 = OBJC_IVAR____TtC11MusicJSCore31JSSocialOnboardingVerticalStack_requiresValidation;
        goto LABEL_51;
      }
    }

    type metadata accessor for JSBarButtonItem();
    if (swift_dynamicCast())
    {
      v7 = v35;
      if (a1 == 0xD000000000000013 && 0x8000000100E70730 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v8 = OBJC_IVAR____TtC11MusicJSCore31JSSocialOnboardingVerticalStack_cancelBarButtonItem;
        goto LABEL_7;
      }
    }

    v26 = type metadata accessor for JSObject();
    if (swift_dynamicCast())
    {
      if (a1 == 0xD000000000000014 && 0x8000000100E70710 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v34 = v26;
        v33[0] = v35;
        v27 = _s11MusicJSCore15JSViewModelKindO5valueACSgyp_tcfC_0(v33);
        if ((~v27 & 0xF000000000000007) != 0)
        {
          v28 = v27;
          v29 = OBJC_IVAR____TtC11MusicJSCore31JSSocialOnboardingVerticalStack_pinnedChildViewModel;
          swift_beginAccess();
          v30 = *(v3 + v29);
          *(v3 + v29) = v28;
          sub_100D3054C(v30);
        }

        goto LABEL_52;
      }
    }

    sub_10000959C(v37);
LABEL_9:
    JSViewModel.updateProperty(_:value:)(a1, a2, a3);
    return sub_1000095E8(v38, &unk_1011C0D90);
  }

  result = 0x656956646C696863;
  v14 = v35;
  if (a1 != 0x656956646C696863 || a2 != 0xEF736C65646F4D77)
  {
    result = _stringCompareWithSmolCheck(_:_:expecting:)();
    if ((result & 1) == 0)
    {

      goto LABEL_46;
    }
  }

  v32 = v3;
  if (!(v35 >> 62))
  {
    v15 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v15)
    {
      goto LABEL_32;
    }

LABEL_73:
    v17 = _swiftEmptyArrayStorage;
LABEL_74:

    v31 = OBJC_IVAR____TtC11MusicJSCore31JSSocialOnboardingVerticalStack_childViewModelKinds;
    swift_beginAccess();
    *(v32 + v31) = v17;

    sub_10000959C(v37);
    goto LABEL_53;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  v15 = result;
  if (!result)
  {
    goto LABEL_73;
  }

LABEL_32:
  if (v15 >= 1)
  {
    v16 = 0;
    v17 = _swiftEmptyArrayStorage;
    do
    {
      if ((v14 & 0xC000000000000001) != 0)
      {
        v18 = sub_100D01118(v16, v14);
      }

      else
      {
        v18 = *(v14 + 8 * v16 + 32);
      }

      v19 = v18;
      v34 = type metadata accessor for JSObject();
      v33[0] = v19;
      v20 = v19;
      v21 = _s11MusicJSCore15JSViewModelKindO5valueACSgyp_tcfC_0(v33);
      if ((~v21 & 0xF000000000000007) != 0)
      {
        v22 = v21;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v17 = sub_100DD607C(0, *(v17 + 2) + 1, 1, v17);
        }

        v24 = *(v17 + 2);
        v23 = *(v17 + 3);
        if (v24 >= v23 >> 1)
        {
          v17 = sub_100DD607C((v23 > 1), v24 + 1, 1, v17);
        }

        *(v17 + 2) = v24 + 1;
        *&v17[8 * v24 + 32] = v22;
      }

      else
      {
      }

      ++v16;
    }

    while (v15 != v16);
    goto LABEL_74;
  }

  __break(1u);
  return result;
}

id JSSocialOnboardingVerticalStack.init(type:)(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC11MusicJSCore31JSSocialOnboardingVerticalStack_childViewModelKinds) = _swiftEmptyArrayStorage;
  *(v1 + OBJC_IVAR____TtC11MusicJSCore31JSSocialOnboardingVerticalStack_pinnedChildViewModel) = 0xF000000000000007;
  *(v1 + OBJC_IVAR____TtC11MusicJSCore31JSSocialOnboardingVerticalStack_isEditing) = 0;
  *(v1 + OBJC_IVAR____TtC11MusicJSCore31JSSocialOnboardingVerticalStack_requiresValidation) = 1;
  v2 = (v1 + OBJC_IVAR____TtC11MusicJSCore31JSSocialOnboardingVerticalStack_pinnedButtonsHeaderText);
  *v2 = 0;
  v2[1] = 0;
  v3 = (v1 + OBJC_IVAR____TtC11MusicJSCore31JSSocialOnboardingVerticalStack_pinnedButtonsFooterText);
  *v3 = 0;
  v3[1] = 0;
  *(v1 + OBJC_IVAR____TtC11MusicJSCore31JSSocialOnboardingVerticalStack_nextStepButton) = 0;
  *(v1 + OBJC_IVAR____TtC11MusicJSCore31JSSocialOnboardingVerticalStack_cancelStepButton) = 0;
  *(v1 + OBJC_IVAR____TtC11MusicJSCore31JSSocialOnboardingVerticalStack_cancelBarButtonItem) = 0;
  v4 = (v1 + OBJC_IVAR____TtC11MusicJSCore11JSViewModel_playActivityFeatureName);
  *v4 = 0;
  v4[1] = 0xE000000000000000;
  *(v1 + OBJC_IVAR____TtC11MusicJSCore11JSViewModel_playActivityRecommendationData) = xmmword_100EFDB60;
  v5 = (v1 + OBJC_IVAR____TtC11MusicJSCore11JSViewModel_editorialID);
  *v5 = 0;
  v5[1] = 0;
  return JSObject.init(type:)(a1);
}

void sub_100D303A8()
{

  sub_100D3054C(*(v0 + OBJC_IVAR____TtC11MusicJSCore31JSSocialOnboardingVerticalStack_pinnedChildViewModel));

  v1 = *(v0 + OBJC_IVAR____TtC11MusicJSCore31JSSocialOnboardingVerticalStack_cancelBarButtonItem);
}

unint64_t _s11MusicJSCore31JSSocialOnboardingVerticalStackC17BarButtonItemKindO8rawValueAESgSS_tcfC_0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1010FB398, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_100D30530(unint64_t result)
{
  if ((~result & 0xF000000000000007) != 0)
  {
    return (result & 0xFFFFFFFFFFFFFF9);
  }

  return result;
}

void sub_100D3054C(uint64_t a1)
{
  if ((~a1 & 0xF000000000000007) != 0)
  {
  }
}

unint64_t sub_100D3056C()
{
  result = qword_1011BF908;
  if (!qword_1011BF908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011BF908);
  }

  return result;
}

uint64_t sub_100D305F4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC11MusicJSCore40JSUserNotificationAuthorizationViewModel_metricsOverlay;
  swift_beginAccess();
  *(v3 + v4) = v2;
}

uint64_t JSUserNotificationAuthorizationViewModel.isModalInPresentation.getter()
{
  v1 = OBJC_IVAR____TtC11MusicJSCore40JSUserNotificationAuthorizationViewModel_isModalInPresentation;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t JSUserNotificationAuthorizationViewModel.didCompleteUserNotificationAuthorization(completion:)(uint64_t a1, uint64_t a2)
{
  v3 = &v2[OBJC_IVAR____TtC11MusicJSCore40JSUserNotificationAuthorizationViewModel_pendingUserNotificationAuthenticationContext];
  v4 = *&v2[OBJC_IVAR____TtC11MusicJSCore40JSUserNotificationAuthorizationViewModel_pendingUserNotificationAuthenticationContext];
  v5 = *&v2[OBJC_IVAR____TtC11MusicJSCore40JSUserNotificationAuthorizationViewModel_pendingUserNotificationAuthenticationContext + 8];
  v6 = *&v2[OBJC_IVAR____TtC11MusicJSCore40JSUserNotificationAuthorizationViewModel_pendingUserNotificationAuthenticationContext + 16];
  v7 = *&v2[OBJC_IVAR____TtC11MusicJSCore40JSUserNotificationAuthorizationViewModel_pendingUserNotificationAuthenticationContext + 24];
  v8 = *&v2[OBJC_IVAR____TtC11MusicJSCore40JSUserNotificationAuthorizationViewModel_pendingUserNotificationAuthenticationContext + 32];
  *v3 = a1;
  *(v3 + 1) = a2;
  *(v3 + 1) = xmmword_100EC61F0;
  *(v3 + 4) = 0;

  sub_100D3086C(v4, v5, v6, v7, v8);
  if (qword_1011BDB08 != -1)
  {
    swift_once();
  }

  v9 = static JSBridge.shared;
  sub_10010FC20(&qword_101181530);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_100EBC6B0;
  *(v10 + 56) = type metadata accessor for JSUserNotificationAuthorizationViewModel();
  *(v10 + 32) = v2;
  sub_100027010();
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  *(v11 + 24) = _swiftEmptyArrayStorage;
  *(v11 + 32) = 0xD000000000000030;
  *(v11 + 40) = 0x8000000100E70840;
  *(v11 + 48) = v2;
  *(v11 + 56) = v9;
  *(v11 + 64) = 0;
  v12 = v2;
  v13 = v9;
  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_100CE6890, v11);
}

void sub_100D3086C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a1)
  {
  }
}

Swift::Void __swiftcall JSUserNotificationAuthorizationViewModel.invokeMethod(_:arguments:)(Swift::String _, Swift::OpaquePointer arguments)
{
  if (_._countAndFlagsBits == 0xD000000000000038 && 0x8000000100E70880 == _._object || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    if (*(arguments._rawValue + 2))
    {
      sub_10000DD18(arguments._rawValue + 32, v9);
      type metadata accessor for JSSegue();
      if (swift_dynamicCast())
      {
        v4 = v8;
      }

      else
      {
        v4 = 0;
      }
    }

    else
    {
      v4 = 0;
    }

    v5 = v2 + OBJC_IVAR____TtC11MusicJSCore40JSUserNotificationAuthorizationViewModel_pendingUserNotificationAuthenticationContext;
    v6 = *(v2 + OBJC_IVAR____TtC11MusicJSCore40JSUserNotificationAuthorizationViewModel_pendingUserNotificationAuthenticationContext);
    if (v6)
    {
      v7 = *(v5 + 32);
      *v5 = 0u;
      *(v5 + 16) = 0u;
      *(v5 + 32) = 0;
      v6(v4);

      v4 = v7;
    }
  }
}

uint64_t JSUserNotificationAuthorizationViewModel.updateProperty(_:value:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12[0] = a1;
  v12[1] = a2;
  sub_1000189C0(a3, v13);
  if (v13[3])
  {
    sub_1000189C0(v13, v11);

    sub_10010FC20(&qword_101197BD0);
    if (swift_dynamicCast())
    {
      if (a1 == 0x4F7363697274656DLL && a2 == 0xEE0079616C726576 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v7 = OBJC_IVAR____TtC11MusicJSCore40JSUserNotificationAuthorizationViewModel_metricsOverlay;
        swift_beginAccess();
        *(v3 + v7) = v10;

LABEL_14:
        sub_10000959C(v11);
        sub_1000095E8(v13, &unk_101183F30);
      }
    }

    if (swift_dynamicCast() && (a1 == 0xD000000000000015 && 0x8000000100E708C0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
    {
      v8 = OBJC_IVAR____TtC11MusicJSCore40JSUserNotificationAuthorizationViewModel_isModalInPresentation;
      swift_beginAccess();
      *(v3 + v8) = v10;
      goto LABEL_14;
    }

    sub_10000959C(v11);
  }

  else
  {
  }

  JSViewModel.updateProperty(_:value:)(a1, a2, a3);
  return sub_1000095E8(v12, &unk_1011C0D90);
}

id JSUserNotificationAuthorizationViewModel.__allocating_init(type:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC11MusicJSCore40JSUserNotificationAuthorizationViewModel_metricsOverlay] = 0;
  v3[OBJC_IVAR____TtC11MusicJSCore40JSUserNotificationAuthorizationViewModel_isModalInPresentation] = 1;
  v4 = &v3[OBJC_IVAR____TtC11MusicJSCore40JSUserNotificationAuthorizationViewModel_pendingUserNotificationAuthenticationContext];
  *v4 = 0u;
  *(v4 + 1) = 0u;
  *(v4 + 4) = 0;
  v5 = &v3[OBJC_IVAR____TtC11MusicJSCore11JSViewModel_playActivityFeatureName];
  *v5 = 0;
  v5[1] = 0xE000000000000000;
  *&v3[OBJC_IVAR____TtC11MusicJSCore11JSViewModel_playActivityRecommendationData] = xmmword_100EFDB60;
  v6 = &v3[OBJC_IVAR____TtC11MusicJSCore11JSViewModel_editorialID];
  *v6 = 0;
  v6[1] = 0;
  return JSObject.init(type:)(a1);
}

id JSUserNotificationAuthorizationViewModel.init(type:)(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC11MusicJSCore40JSUserNotificationAuthorizationViewModel_metricsOverlay) = 0;
  *(v1 + OBJC_IVAR____TtC11MusicJSCore40JSUserNotificationAuthorizationViewModel_isModalInPresentation) = 1;
  v2 = v1 + OBJC_IVAR____TtC11MusicJSCore40JSUserNotificationAuthorizationViewModel_pendingUserNotificationAuthenticationContext;
  *v2 = 0u;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0;
  v3 = (v1 + OBJC_IVAR____TtC11MusicJSCore11JSViewModel_playActivityFeatureName);
  *v3 = 0;
  v3[1] = 0xE000000000000000;
  *(v1 + OBJC_IVAR____TtC11MusicJSCore11JSViewModel_playActivityRecommendationData) = xmmword_100EFDB60;
  v4 = (v1 + OBJC_IVAR____TtC11MusicJSCore11JSViewModel_editorialID);
  *v4 = 0;
  v4[1] = 0;
  return JSObject.init(type:)(a1);
}

void sub_100D30D40()
{

  v1 = *(v0 + OBJC_IVAR____TtC11MusicJSCore40JSUserNotificationAuthorizationViewModel_pendingUserNotificationAuthenticationContext);
  v2 = *(v0 + OBJC_IVAR____TtC11MusicJSCore40JSUserNotificationAuthorizationViewModel_pendingUserNotificationAuthenticationContext + 8);
  v3 = *(v0 + OBJC_IVAR____TtC11MusicJSCore40JSUserNotificationAuthorizationViewModel_pendingUserNotificationAuthenticationContext + 16);
  v4 = *(v0 + OBJC_IVAR____TtC11MusicJSCore40JSUserNotificationAuthorizationViewModel_pendingUserNotificationAuthenticationContext + 24);
  v5 = *(v0 + OBJC_IVAR____TtC11MusicJSCore40JSUserNotificationAuthorizationViewModel_pendingUserNotificationAuthenticationContext + 32);

  sub_100D3086C(v1, v2, v3, v4, v5);
}

id JSUserNotificationAuthorizationViewModel.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JSUserNotificationAuthorizationViewModel();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_100D30E1C(unint64_t result)
{
  v1 = result;
  if (!(result >> 62))
  {
    v2 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_25:

    return 0;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  v2 = result;
  if (!result)
  {
    goto LABEL_25;
  }

LABEL_3:
  if (v2 >= 1)
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      v3 = 0;
      for (i = 0; i != v2; ++i)
      {
        sub_100D01118(i, v1);
        type metadata accessor for JSSettingsAuthenticationSection();
        v6 = swift_dynamicCastClass();
        if (v6)
        {
          v5 = v6;

          v3 = v5;
        }

        else
        {
          type metadata accessor for JSSettingsSection();
          if (swift_dynamicCastClass())
          {
            swift_unknownObjectRetain();
            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            swift_unknownObjectRelease();
          }

          else
          {
            swift_unknownObjectRelease();
          }
        }
      }
    }

    else
    {
      type metadata accessor for JSSettingsAuthenticationSection();
      v3 = 0;
      v7 = 32;
      do
      {
        v10 = *(v1 + v7);
        v11 = swift_dynamicCastClass();
        if (v11)
        {
          v8 = v11;
          v9 = v10;

          v3 = v8;
        }

        else
        {
          type metadata accessor for JSSettingsSection();
          if (swift_dynamicCastClass())
          {
            v12 = v10;
            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          }
        }

        v7 += 8;
        --v2;
      }

      while (v2);
    }

    if (!v3)
    {
    }

    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_100D310A0(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*a2 + OBJC_IVAR____TtC11MusicJSCore14JSSettingsLink_text);
  swift_beginAccess();
  *v4 = v3;
  v4[1] = v2;
}

uint64_t JSSettingsLink.text.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC11MusicJSCore14JSSettingsLink_text);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t JSSettingsLink.description.getter()
{
  v1 = v0;
  v2._countAndFlagsBits = 60;
  v2._object = 0xE100000000000000;
  String.append(_:)(v2);
  swift_getObjectType();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = NSStringFromClass(ObjCClassFromMetadata);
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  v8._countAndFlagsBits = v5;
  v8._object = v7;
  String.append(_:)(v8);

  v9._countAndFlagsBits = 8250;
  v9._object = 0xE200000000000000;
  String.append(_:)(v9);
  _print_unlocked<A, B>(_:_:)();
  v10 = (v1 + OBJC_IVAR____TtC11MusicJSCore14JSSettingsLink_text);
  swift_beginAccess();
  v12 = *v10;
  v11 = v10[1];
  v13 = HIBYTE(v11) & 0xF;
  if ((v11 & 0x2000000000000000) == 0)
  {
    v13 = v12 & 0xFFFFFFFFFFFFLL;
  }

  if (v13)
  {

    v14._countAndFlagsBits = v12;
    v14._object = v11;
    String.append(_:)(v14);

    v15._countAndFlagsBits = 34;
    v15._object = 0xE100000000000000;
    String.append(_:)(v15);
    v16._countAndFlagsBits = 0x3D2074786574203BLL;
    v16._object = 0xEA00000000002220;
    String.append(_:)(v16);
  }

  v17._countAndFlagsBits = 62;
  v17._object = 0xE100000000000000;
  String.append(_:)(v17);
  return 0;
}

uint64_t JSSettingsLink.updateProperty(_:value:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11[0] = a1;
  v11[1] = a2;
  sub_1000189C0(a3, v12);
  if (v12[3])
  {
    sub_1000189C0(v12, v10);

    if (swift_dynamicCast())
    {
      if (a1 == 1954047348 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v6 = (v3 + OBJC_IVAR____TtC11MusicJSCore14JSSettingsLink_text);
        swift_beginAccess();
        *v6 = v8;
        v6[1] = v9;

        sub_10000959C(v10);
        sub_1000095E8(v12, &unk_101183F30);
      }
    }

    sub_10000959C(v10);
  }

  else
  {
  }

  return sub_1000095E8(v11, &unk_1011C0D90);
}

id JSSettingsLink.__allocating_init(type:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = &v3[OBJC_IVAR____TtC11MusicJSCore14JSSettingsLink_text];
  *v4 = 0;
  *(v4 + 1) = 0xE000000000000000;
  return JSObject.init(type:)(a1);
}

id JSSettingsLink.init(type:)(uint64_t a1)
{
  v2 = (v1 + OBJC_IVAR____TtC11MusicJSCore14JSSettingsLink_text);
  *v2 = 0;
  v2[1] = 0xE000000000000000;
  return JSObject.init(type:)(a1);
}

id JSSettingsLink.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JSSettingsLink();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t JSStaticImageViewModel.staticImageViewModelDelegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC11MusicJSCore22JSStaticImageViewModel_staticImageViewModelDelegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*JSStaticImageViewModel.staticImageViewModelDelegate.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC11MusicJSCore22JSStaticImageViewModel_staticImageViewModelDelegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_100CC4F94;
}

id sub_100D31708@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC11MusicJSCore22JSStaticImageViewModel_imageResource;
  swift_beginAccess();
  v4 = *v3;
  v5 = *(v3 + 8);
  *a2 = *v3;
  *(a2 + 8) = v5;
  v6 = *(v3 + 16);
  *(a2 + 16) = v6;
  return sub_100D317D8(v4, v5, v6);
}

id JSStaticImageViewModel.imageResource.getter()
{
  v1 = v0 + OBJC_IVAR____TtC11MusicJSCore22JSStaticImageViewModel_imageResource;
  swift_beginAccess();
  v2 = *v1;
  sub_100D317D8(*v1, *(v1 + 8), *(v1 + 16));
  return v2;
}

id sub_100D317D8(id result, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_100D317F0(result, a2, a3 & 1);
  }

  return result;
}

id sub_100D317F0(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return a1;
  }

  else
  {
  }
}

void sub_100D31800(void *a1, uint64_t a2, char a3)
{
  v7 = v3 + OBJC_IVAR____TtC11MusicJSCore22JSStaticImageViewModel_imageResource;
  swift_beginAccess();
  v8 = *v7;
  v9 = *(v7 + 8);
  *v7 = a1;
  *(v7 + 8) = a2;
  v10 = *(v7 + 16);
  *(v7 + 16) = a3;
  sub_100D317D8(a1, a2, a3);
  sub_100D31C54(v8, v9, v10);
  v11 = v3 + OBJC_IVAR____TtC11MusicJSCore22JSStaticImageViewModel_staticImageViewModelDelegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v12 = *(v11 + 8);
    ObjectType = swift_getObjectType();
    (*(v12 + 8))(v3, ObjectType, v12);
    sub_100D31C54(a1, a2, a3);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_100D31C54(a1, a2, a3);
  }
}

uint64_t JSStaticImageViewModel.updateProperty(_:value:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v26[0] = a1;
  v26[1] = a2;
  sub_1000189C0(a3, v27);
  if (v27[3])
  {
    sub_1000189C0(v27, v25);

    if (swift_dynamicCast())
    {
      if (a1 == 0xD000000000000011 && 0x8000000100E709B0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v7 = v3 + OBJC_IVAR____TtC11MusicJSCore22JSStaticImageViewModel_imageResource;
        swift_beginAccess();
        v8 = *v7;
        v9 = *(v7 + 8);
        *v7 = v23;
        *(v7 + 8) = v24;
        v10 = *(v7 + 16);
        *(v7 + 16) = 0;

        sub_100D31C54(v8, v9, v10);
        v11 = v3 + OBJC_IVAR____TtC11MusicJSCore22JSStaticImageViewModel_staticImageViewModelDelegate;
        swift_beginAccess();
        if (swift_unknownObjectWeakLoadStrong())
        {
          v12 = *(v11 + 8);
          ObjectType = swift_getObjectType();
          (*(v12 + 8))(v3, ObjectType, v12);
          swift_unknownObjectRelease();
        }

LABEL_18:
        sub_10000959C(v25);
        sub_1000095E8(v27, &unk_101183F30);
      }
    }

    type metadata accessor for JSArtwork();
    if (swift_dynamicCast())
    {
      if (a1 == 0x6B726F77747261 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v14 = v3 + OBJC_IVAR____TtC11MusicJSCore22JSStaticImageViewModel_imageResource;
        swift_beginAccess();
        v15 = *v14;
        v16 = *(v14 + 8);
        *v14 = v23;
        *(v14 + 8) = 0;
        v17 = *(v14 + 16);
        *(v14 + 16) = 1;
        v18 = v23;
        sub_100D31C54(v15, v16, v17);
        v19 = v3 + OBJC_IVAR____TtC11MusicJSCore22JSStaticImageViewModel_staticImageViewModelDelegate;
        swift_beginAccess();
        if (swift_unknownObjectWeakLoadStrong())
        {
          v20 = *(v19 + 8);
          v21 = swift_getObjectType();
          (*(v20 + 8))(v3, v21, v20);
          swift_unknownObjectRelease();
        }

        goto LABEL_18;
      }
    }

    sub_10000959C(v25);
  }

  else
  {
  }

  JSViewModel.updateProperty(_:value:)(a1, a2, a3);
  return sub_1000095E8(v26, &unk_1011C0D90);
}

void sub_100D31C54(void *a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    sub_100D31C6C(a1, a2, a3 & 1);
  }
}

void sub_100D31C6C(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

id JSStaticImageViewModel.__allocating_init(type:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC11MusicJSCore22JSStaticImageViewModel_staticImageViewModelDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v4 = &v3[OBJC_IVAR____TtC11MusicJSCore22JSStaticImageViewModel_imageResource];
  *v4 = 0;
  *(v4 + 1) = 0;
  v4[16] = -1;
  v5 = &v3[OBJC_IVAR____TtC11MusicJSCore11JSViewModel_playActivityFeatureName];
  *v5 = 0;
  *(v5 + 1) = 0xE000000000000000;
  *&v3[OBJC_IVAR____TtC11MusicJSCore11JSViewModel_playActivityRecommendationData] = xmmword_100EFDB60;
  v6 = &v3[OBJC_IVAR____TtC11MusicJSCore11JSViewModel_editorialID];
  *v6 = 0;
  *(v6 + 1) = 0;
  return JSObject.init(type:)(a1);
}

id JSStaticImageViewModel.init(type:)(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC11MusicJSCore22JSStaticImageViewModel_staticImageViewModelDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v3 = v1 + OBJC_IVAR____TtC11MusicJSCore22JSStaticImageViewModel_imageResource;
  *v3 = 0;
  *(v3 + 8) = 0;
  *(v3 + 16) = -1;
  v4 = (v1 + OBJC_IVAR____TtC11MusicJSCore11JSViewModel_playActivityFeatureName);
  *v4 = 0;
  v4[1] = 0xE000000000000000;
  *(v1 + OBJC_IVAR____TtC11MusicJSCore11JSViewModel_playActivityRecommendationData) = xmmword_100EFDB60;
  v5 = (v1 + OBJC_IVAR____TtC11MusicJSCore11JSViewModel_editorialID);
  *v5 = 0;
  v5[1] = 0;

  return JSObject.init(type:)(a1);
}

void sub_100D31DCC()
{
  sub_1000D8F2C(v0 + OBJC_IVAR____TtC11MusicJSCore22JSStaticImageViewModel_staticImageViewModelDelegate);
  v1 = *(v0 + OBJC_IVAR____TtC11MusicJSCore22JSStaticImageViewModel_imageResource);
  v2 = *(v0 + OBJC_IVAR____TtC11MusicJSCore22JSStaticImageViewModel_imageResource + 8);
  v3 = *(v0 + OBJC_IVAR____TtC11MusicJSCore22JSStaticImageViewModel_imageResource + 16);

  sub_100D31C54(v1, v2, v3);
}

id JSStaticImageViewModel.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JSStaticImageViewModel();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id JSImpressionsBatch.__allocating_init(impressions:location:pageDetailsProvider:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (a1)
  {
    v7 = objc_allocWithZone(v3);
    v8 = sub_100D32680(a1, a2, a3);
  }

  else
  {

    return 0;
  }

  return v8;
}

{
  v7 = objc_allocWithZone(v3);
  v8 = sub_100D32680(a1, a2, a3);

  return v8;
}

id JSImpressionsBatch.init(impressions:location:pageDetailsProvider:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_100D32680(a1, a2, a3);

  return v4;
}

uint64_t JSImpressionsBatch.debugDescription.getter()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v20 = 0;
  v21 = 0xE000000000000000;
  _StringGuts.grow(_:)(55);
  v19.receiver = v0;
  v19.super_class = ObjectType;
  v3 = objc_msgSendSuper2(&v19, "debugDescription");
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  v7._countAndFlagsBits = v4;
  v7._object = v6;
  String.append(_:)(v7);

  v8._countAndFlagsBits = 0x73736572706D490ALL;
  v8._object = 0xEE00203A736E6F69;
  String.append(_:)(v8);
  type metadata accessor for JSImpression();
  v9._countAndFlagsBits = Array.description.getter();
  String.append(_:)(v9);

  v10._countAndFlagsBits = 0x6F697461636F4C0ALL;
  v10._object = 0xEB00000000203A6ELL;
  String.append(_:)(v10);
  if (!*&v1[OBJC_IVAR____TtC11MusicJSCore18JSImpressionsBatch_location])
  {
    sub_10010FC20(&unk_1011927C0);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_100EBC6B0;
    *(v11 + 32) = sub_10010BC60(_swiftEmptyArrayStorage);
  }

  sub_10010FC20(&qword_101197BD0);
  v12 = Array.description.getter();
  v14 = v13;

  v15._countAndFlagsBits = v12;
  v15._object = v14;
  String.append(_:)(v15);

  v16._object = 0x8000000100E70A30;
  v16._countAndFlagsBits = 0xD000000000000016;
  String.append(_:)(v16);
  swift_unknownObjectWeakLoadStrong();
  sub_10010FC20(&qword_1011BF9F8);
  v17._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v17);

  return v20;
}

id JSImpressionsBatch.__allocating_init(impressions:pageDetailsProvider:)(uint64_t a1, void *a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = sub_100D32680(a1, 0, a2);

  return v6;
}

BOOL JSImpressionsBatch.isEmpty.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11MusicJSCore18JSImpressionsBatch_impressions);
  if (v1 >> 62)
  {
    v2 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v2 == 0;
}

uint64_t sub_100D32340()
{

  return swift_unknownObjectWeakDestroy();
}

id JSImpression.__allocating_init(fields:jsObject:)(uint64_t a1, void *a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = sub_100D32970(a1, a2);

  return v6;
}

id JSImpression.init(fields:jsObject:)(uint64_t a1, void *a2)
{
  v3 = sub_100D32970(a1, a2);

  return v3;
}

uint64_t JSImpression.debugDescription.getter()
{
  v8.receiver = v0;
  v8.super_class = swift_getObjectType();
  v1 = objc_msgSendSuper2(&v8, "debugDescription");
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;

  v9 = v2;
  v10 = v4;
  v5._countAndFlagsBits = 10;
  v5._object = 0xE100000000000000;
  String.append(_:)(v5);
  v6._countAndFlagsBits = Dictionary.description.getter();
  String.append(_:)(v6);

  return v9;
}

id sub_100D32680(uint64_t a1, uint64_t a2, void *a3)
{
  swift_unknownObjectWeakInit();
  sub_10010FC20(&unk_1011972C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100EBE260;
  *(inited + 32) = 0x6973736572706D69;
  *(inited + 40) = 0xEB00000000736E6FLL;
  v8 = sub_10010FC20(&qword_1011BFA58);
  *(inited + 48) = a1;
  *(inited + 72) = v8;
  *(inited + 80) = 0x6E6F697461636F6CLL;
  *(inited + 88) = 0xE800000000000000;
  if (a2)
  {
    *(&v18 + 1) = sub_10010FC20(&qword_1011BE628);
    *&v17 = a2;
    sub_100016270(&v17, (inited + 96));
  }

  else
  {
    v17 = 0u;
    v18 = 0u;
    v9 = objc_allocWithZone(NSNull);

    v10 = [v9 init];
    *(inited + 120) = sub_100009F78(0, &qword_1011C1830);
    *(inited + 96) = v10;
    if (*(&v18 + 1))
    {
      sub_100011DF0(&v17);
    }
  }

  *(inited + 128) = 0xD000000000000013;
  *(inited + 136) = 0x8000000100E6DC90;
  *(inited + 168) = sub_100009F78(0, &qword_101197A30);
  if (a3)
  {

    v11 = a3;
  }

  else
  {
    v12 = objc_allocWithZone(NSNull);

    v11 = [v12 init];
  }

  *(inited + 144) = v11;
  v13 = a3;
  v14 = sub_10010BC60(inited);
  swift_setDeallocating();
  sub_10010FC20(&unk_1011927D0);
  swift_arrayDestroy();
  *(v3 + OBJC_IVAR____TtC11MusicJSCore18JSImpressionsBatch_impressions) = a1;
  *(v3 + OBJC_IVAR____TtC11MusicJSCore18JSImpressionsBatch_location) = a2;
  swift_unknownObjectWeakAssign();
  sub_10010FC20(&qword_101181530);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_100EBC6B0;
  *(v15 + 56) = sub_10010FC20(&qword_101197BD0);
  *(v15 + 32) = v14;
  v17 = v15;
  v18 = 0uLL;
  v19 = 1;
  v20 = 0;
  return JSObject.init(type:)(&v17);
}

id sub_100D32970(uint64_t a1, void *a2)
{
  sub_10010FC20(&unk_1011972C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100EBDC20;
  *(inited + 32) = 0x73646C656966;
  *(inited + 40) = 0xE600000000000000;
  v6 = sub_10010FC20(&unk_1011BE660);
  *(inited + 48) = a1;
  *(inited + 72) = v6;
  *(inited + 80) = 0x7463656A626FLL;
  *(inited + 88) = 0xE600000000000000;
  *(inited + 120) = sub_100009F78(0, &qword_101197A30);
  if (a2)
  {

    v7 = a2;
  }

  else
  {
    v8 = objc_allocWithZone(NSNull);

    v7 = [v8 init];
  }

  *(inited + 96) = v7;
  v9 = a2;
  v10 = sub_10010BC60(inited);
  swift_setDeallocating();
  sub_10010FC20(&unk_1011927D0);
  swift_arrayDestroy();
  *(v2 + OBJC_IVAR____TtC11MusicJSCore12JSImpression_fields) = a1;
  sub_10010FC20(&qword_101181530);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_100EBC6B0;
  *(v11 + 56) = sub_10010FC20(&qword_101197BD0);
  *(v11 + 32) = v10;
  v13[0] = v11;
  memset(&v13[1], 0, 24);
  v13[4] = 1;
  v14 = 0;
  return JSObject.init(type:)(v13);
}

uint64_t JSSiriAceRequest.utterance.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC11MusicJSCore16JSSiriAceRequest_utterance);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t JSSiriAceRequest.shouldReplay.getter()
{
  v1 = OBJC_IVAR____TtC11MusicJSCore16JSSiriAceRequest_shouldReplay;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t JSSiriAceRequest.isVoiceTriggerEnabled.getter()
{
  v1 = OBJC_IVAR____TtC11MusicJSCore16JSSiriAceRequest_isVoiceTriggerEnabled;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t JSSiriAceRequest.isTextToSpeechEnabled.getter()
{
  v1 = OBJC_IVAR____TtC11MusicJSCore16JSSiriAceRequest_isTextToSpeechEnabled;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t JSSiriAceRequest.isEyesFree.getter()
{
  v1 = OBJC_IVAR____TtC11MusicJSCore16JSSiriAceRequest_isEyesFree;
  swift_beginAccess();
  return *(v0 + v1);
}

Swift::Void __swiftcall JSSiriAceRequest.invokeMethod(_:arguments:)(Swift::String _, Swift::OpaquePointer arguments)
{
  v2 = _._countAndFlagsBits == 1684956531 && _._object == 0xE400000000000000;
  if (v2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    sub_100D32DA8();
  }
}

void sub_100D32DA8()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v4 = &aBlock[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR____TtC11MusicJSCore16JSSiriAceRequest_shouldReplay;
  swift_beginAccess();
  v6 = v0[v5];
  if (v6 == 2 || (v6 & 1) == 0)
  {
    if (qword_1011BDB58 != -1)
    {
      swift_once();
    }

    v11 = static OS_os_log.scripting;
    Logger.init(_:)();
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "[JSSiriAceRequest] ShouldReplay is false or missing", v14, 2u);
    }

    (*(v2 + 8))(v4, v1);
  }

  else
  {
    v7 = [objc_opt_self() sharedProvider];
    v8 = swift_allocObject();
    *(v8 + 16) = v0;
    aBlock[4] = sub_100D344FC;
    aBlock[5] = v8;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100A5C758;
    aBlock[3] = &unk_101100B68;
    v9 = _Block_copy(aBlock);
    v10 = v0;

    [v7 getTokenForcingRefresh:0 completion:v9];
    _Block_release(v9);
  }
}

uint64_t JSSiriAceRequest.updateProperty(_:value:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18[0] = a1;
  v18[1] = a2;
  sub_1000189C0(a3, v19);
  if (!v19[3])
  {

    return sub_1000095E8(v18, &unk_1011C0D90);
  }

  sub_1000189C0(v19, v17);

  if (swift_dynamicCast())
  {
    v7 = v15;
    v6 = v16;
    if (a1 == 0x636E617265747475 && a2 == 0xE900000000000065 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v8 = OBJC_IVAR____TtC11MusicJSCore16JSSiriAceRequest_utterance;
LABEL_21:
      v12 = (v3 + v8);
      swift_beginAccess();
      *v12 = v7;
LABEL_22:
      v12[1] = v6;
LABEL_23:

      goto LABEL_24;
    }
  }

  if (!swift_dynamicCast() || ((v10 = v15, a1 != 0x6552646C756F6873) || a2 != 0xEC00000079616C70) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    if (swift_dynamicCast())
    {
      v7 = v15;
      v6 = v16;
      if (a1 == 0xD000000000000011 && 0x8000000100E70B40 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v8 = OBJC_IVAR____TtC11MusicJSCore16JSSiriAceRequest_payloadIdentifier;
        goto LABEL_21;
      }
    }

    sub_10010FC20(&unk_1011BE660);
    if (swift_dynamicCast())
    {
      if (a1 == 0x5564616F6C796170 && a2 == 0xEF61746144726573 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v13 = OBJC_IVAR____TtC11MusicJSCore16JSSiriAceRequest_payloadUserData;
        swift_beginAccess();
        *(v3 + v13) = v15;
        goto LABEL_23;
      }
    }

    if (swift_dynamicCast())
    {
      v10 = v15;
      if (a1 == 0xD000000000000015 && 0x8000000100E70B00 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v11 = OBJC_IVAR____TtC11MusicJSCore16JSSiriAceRequest_isVoiceTriggerEnabled;
        goto LABEL_15;
      }

      if (a1 == 0xD000000000000015 && 0x8000000100E70B20 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v11 = OBJC_IVAR____TtC11MusicJSCore16JSSiriAceRequest_isTextToSpeechEnabled;
        goto LABEL_15;
      }

      if (a1 == 0x7246736579457369 && a2 == 0xEA00000000006565 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v11 = OBJC_IVAR____TtC11MusicJSCore16JSSiriAceRequest_isEyesFree;
        goto LABEL_15;
      }
    }

    if (swift_dynamicCast())
    {
      v6 = v16;
      if (a1 == 0x69724F7475706E69 && a2 == 0xEB000000006E6967 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v14 = OBJC_IVAR____TtC11MusicJSCore16JSSiriAceRequest_inputOrigin;
LABEL_51:
        v12 = (v3 + v14);
        swift_beginAccess();
        *v12 = v15;
        goto LABEL_22;
      }

      if (a1 == 0x7463617265746E69 && a2 == 0xEF657079546E6F69 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v14 = OBJC_IVAR____TtC11MusicJSCore16JSSiriAceRequest_interactionType;
        goto LABEL_51;
      }
    }

    sub_10000959C(v17);
    return sub_1000095E8(v18, &unk_1011C0D90);
  }

  v11 = OBJC_IVAR____TtC11MusicJSCore16JSSiriAceRequest_shouldReplay;
LABEL_15:
  swift_beginAccess();
  *(v3 + v11) = v10;
LABEL_24:
  sub_10000959C(v17);
  sub_1000095E8(v19, &unk_101183F30);
}

void sub_100D33538(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &aBlock[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    if (qword_1011BDB58 != -1)
    {
      swift_once();
    }

    v10 = static OS_os_log.scripting;
    Logger.init(_:)();
    swift_errorRetain();
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      aBlock[0] = v14;
      *v13 = 136315138;
      aBlock[6] = a3;
      swift_errorRetain();
      sub_10010FC20(&qword_101194978);
      v15 = String.init<A>(describing:)();
      v17 = sub_1000105AC(v15, v16, aBlock);

      *(v13 + 4) = v17;
      _os_log_impl(&_mh_execute_header, v11, v12, "[JSSiriAceRequest] error refreshing client token %s", v13, 0xCu);
      sub_10000959C(v14);
    }

    (*(v7 + 8))(v9, v6);
  }

  else
  {
    v18 = (a4 + OBJC_IVAR____TtC11MusicJSCore16JSSiriAceRequest_utterance);
    swift_beginAccess();
    v19 = v18[1];
    if (v19)
    {
      v20 = *v18;

      v21 = sub_100D33840(v20, v19);
    }

    else
    {
      v21 = sub_100D33B30();
    }

    aBlock[4] = sub_100D3401C;
    aBlock[5] = 0;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1005C3688;
    aBlock[3] = &unk_101100B90;
    v22 = _Block_copy(aBlock);
    [v21 performRequestWithCompletion:v22];
    _Block_release(v22);
  }
}

id sub_100D33840(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v21[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_1011BDB58 != -1)
  {
    swift_once();
  }

  v10 = static OS_os_log.scripting;
  Logger.init(_:)();

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v22[0] = v14;
    *v13 = 136315138;
    *(v13 + 4) = sub_1000105AC(a1, a2, v22);
    _os_log_impl(&_mh_execute_header, v11, v12, "[JSSiriAceRequest] Creating utterance based request for %s", v13, 0xCu);
    sub_10000959C(v14);
  }

  (*(v7 + 8))(v9, v6);
  v15 = [objc_allocWithZone(SAStartRequest) init];
  v16 = OBJC_IVAR____TtC11MusicJSCore16JSSiriAceRequest_isEyesFree;
  swift_beginAccess();
  [v15 setEyesFree:*(v3 + v16)];
  swift_beginAccess();

  v17 = String._bridgeToObjectiveC()();

  [v15 setInputOrigin:v17];

  v18 = String._bridgeToObjectiveC()();
  [v15 setUtterance:v18];

  result = [objc_allocWithZone(AFSiriAceRequest) initWithStartRequest:v15 requestOptions:0];
  if (result)
  {
    v20 = result;

    return v20;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_100D33B30()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v4 = v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0) + 160;
  if (qword_1011BDB58 != -1)
  {
    swift_once();
  }

  v5 = static OS_os_log.scripting;
  Logger.init(_:)();
  v6 = v0;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v32[0] = v10;
    *v9 = 136315138;
    v11 = &v6[OBJC_IVAR____TtC11MusicJSCore16JSSiriAceRequest_payloadIdentifier];
    swift_beginAccess();
    v13 = *v11;
    v12 = v11[1];

    v14 = sub_1000105AC(v13, v12, v32);

    *(v9 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v7, v8, "[JSSiriAceRequest] Creating directInvocation request for identifier: %s", v9, 0xCu);
    sub_10000959C(v10);
  }

  (*(v2 + 8))(v4, v1);
  swift_beginAccess();
  v15 = objc_allocWithZone(SKIDirectInvocationPayload);

  v16 = String._bridgeToObjectiveC()();

  v17 = [v15 initWithIdentifier:v16];

  v18 = OBJC_IVAR____TtC11MusicJSCore16JSSiriAceRequest_payloadUserData;
  swift_beginAccess();
  if (*&v6[v18])
  {

    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v17 setUserData:isa];
  }

  v20 = [objc_allocWithZone(SKIDirectInvocationContext) init];
  v21 = OBJC_IVAR____TtC11MusicJSCore16JSSiriAceRequest_isVoiceTriggerEnabled;
  swift_beginAccess();
  [v20 setVoiceTriggerEnabled:v6[v21]];
  v22 = OBJC_IVAR____TtC11MusicJSCore16JSSiriAceRequest_isTextToSpeechEnabled;
  swift_beginAccess();
  [v20 setTextToSpeechEnabled:v6[v22]];
  v23 = OBJC_IVAR____TtC11MusicJSCore16JSSiriAceRequest_isEyesFree;
  swift_beginAccess();
  [v20 setEyesFree:v6[v23]];
  swift_beginAccess();

  v24 = String._bridgeToObjectiveC()();

  [v20 setInputOrigin:v24];

  swift_beginAccess();

  v25 = String._bridgeToObjectiveC()();

  [v20 setInteractionType:v25];

  v26 = objc_opt_self();
  v27 = [v26 runSiriKitExecutorCommandWithContext:v20 payload:v17];
  v28 = [v26 wrapCommandInStartLocalRequest:v27];
  result = [objc_allocWithZone(AFSiriAceRequest) initWithStartLocalRequest:v28 requestOptions:0];
  if (result)
  {
    v30 = result;

    return v30;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100D3401C(char a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1011BDB58 != -1)
  {
    swift_once();
  }

  v6 = static OS_os_log.scripting;
  Logger.init(_:)();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v16 = v10;
    *v9 = 136315138;
    if (a1)
    {
      v11 = 1702195828;
    }

    else
    {
      v11 = 0x65736C6166;
    }

    if (a1)
    {
      v12 = 0xE400000000000000;
    }

    else
    {
      v12 = 0xE500000000000000;
    }

    v13 = sub_1000105AC(v11, v12, &v16);

    *(v9 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v7, v8, "[JSSiriAceRequest] AFSiriAceRequest result %s", v9, 0xCu);
    sub_10000959C(v10);
  }

  return (*(v3 + 8))(v5, v2);
}

id JSSiriAceRequest.init(type:)(uint64_t a1)
{
  v3 = (v1 + OBJC_IVAR____TtC11MusicJSCore16JSSiriAceRequest_utterance);
  *v3 = 0;
  v3[1] = 0;
  *(v1 + OBJC_IVAR____TtC11MusicJSCore16JSSiriAceRequest_shouldReplay) = 2;
  v4 = (v1 + OBJC_IVAR____TtC11MusicJSCore16JSSiriAceRequest_payloadIdentifier);
  *v4 = 0xD00000000000002CLL;
  v4[1] = 0x8000000100E6DAF0;
  *(v1 + OBJC_IVAR____TtC11MusicJSCore16JSSiriAceRequest_payloadUserData) = 0;
  *(v1 + OBJC_IVAR____TtC11MusicJSCore16JSSiriAceRequest_isVoiceTriggerEnabled) = 1;
  *(v1 + OBJC_IVAR____TtC11MusicJSCore16JSSiriAceRequest_isTextToSpeechEnabled) = 1;
  *(v1 + OBJC_IVAR____TtC11MusicJSCore16JSSiriAceRequest_isEyesFree) = 1;
  v5 = (v1 + OBJC_IVAR____TtC11MusicJSCore16JSSiriAceRequest_inputOrigin);
  *v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5[1] = v6;
  v7 = (v1 + OBJC_IVAR____TtC11MusicJSCore16JSSiriAceRequest_interactionType);
  *v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7[1] = v8;

  return JSObject.init(type:)(a1);
}

uint64_t sub_100D3434C()
{
}

void sub_100D34458(uint64_t a1, uint64_t a2)
{
  v2 = a1 == 1684956531 && a2 == 0xE400000000000000;
  if (v2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    sub_100D32DA8();
  }
}

uint64_t sub_100D34504(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC11MusicJSCore25JSToggleSelectorViewModel_items;
  swift_beginAccess();
  *(v3 + v4) = v2;
}

uint64_t sub_100D345B4(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*a2 + OBJC_IVAR____TtC11MusicJSCore25JSToggleSelectorViewModel_footerText);
  swift_beginAccess();
  *v4 = v3;
  v4[1] = v2;
}

uint64_t JSToggleSelectorViewModel.footerText.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC11MusicJSCore25JSToggleSelectorViewModel_footerText);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t JSToggleSelectorViewModel.updateProperty(_:value:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13[0] = a1;
  v13[1] = a2;
  sub_1000189C0(a3, v14);
  if (v14[3])
  {
    sub_1000189C0(v14, v12);

    sub_10010FC20(&qword_1011BFAE0);
    if (swift_dynamicCast())
    {
      if (a1 == 0x736D657469 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v7 = OBJC_IVAR____TtC11MusicJSCore25JSToggleSelectorViewModel_items;
        swift_beginAccess();
        *(v3 + v7) = v10;
LABEL_14:

        sub_10000959C(v12);
        sub_1000095E8(v14, &unk_101183F30);
      }
    }

    if (swift_dynamicCast())
    {
      if (a1 == 0x65547265746F6F66 && a2 == 0xEA00000000007478 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v8 = (v3 + OBJC_IVAR____TtC11MusicJSCore25JSToggleSelectorViewModel_footerText);
        swift_beginAccess();
        *v8 = v10;
        v8[1] = v11;
        goto LABEL_14;
      }
    }

    sub_10000959C(v12);
  }

  else
  {
  }

  JSViewModel.updateProperty(_:value:)(a1, a2, a3);
  return sub_1000095E8(v13, &unk_1011C0D90);
}

id JSToggleSelectorViewModel.__allocating_init(type:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC11MusicJSCore25JSToggleSelectorViewModel_items] = _swiftEmptyArrayStorage;
  v4 = &v3[OBJC_IVAR____TtC11MusicJSCore25JSToggleSelectorViewModel_footerText];
  *v4 = 0;
  *(v4 + 1) = 0xE000000000000000;
  v5 = &v3[OBJC_IVAR____TtC11MusicJSCore11JSViewModel_playActivityFeatureName];
  *v5 = 0;
  *(v5 + 1) = 0xE000000000000000;
  *&v3[OBJC_IVAR____TtC11MusicJSCore11JSViewModel_playActivityRecommendationData] = xmmword_100EFDB60;
  v6 = &v3[OBJC_IVAR____TtC11MusicJSCore11JSViewModel_editorialID];
  *v6 = 0;
  *(v6 + 1) = 0;
  return JSObject.init(type:)(a1);
}

id JSToggleSelectorViewModel.init(type:)(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC11MusicJSCore25JSToggleSelectorViewModel_items) = _swiftEmptyArrayStorage;
  v2 = (v1 + OBJC_IVAR____TtC11MusicJSCore25JSToggleSelectorViewModel_footerText);
  *v2 = 0;
  v2[1] = 0xE000000000000000;
  v3 = (v1 + OBJC_IVAR____TtC11MusicJSCore11JSViewModel_playActivityFeatureName);
  *v3 = 0;
  v3[1] = 0xE000000000000000;
  *(v1 + OBJC_IVAR____TtC11MusicJSCore11JSViewModel_playActivityRecommendationData) = xmmword_100EFDB60;
  v4 = (v1 + OBJC_IVAR____TtC11MusicJSCore11JSViewModel_editorialID);
  *v4 = 0;
  v4[1] = 0;
  return JSObject.init(type:)(a1);
}

uint64_t sub_100D349A0()
{
}

id JSToggleSelectorViewModel.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JSToggleSelectorViewModel();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id JSObject.init(type:)(uint64_t a1)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (*(a1 + 40) > 1u)
  {
    if (*(a1 + 40) == 2)
    {
      v21 = objc_allocWithZone(NSUUID);

      v22 = [v21 init];
      v23 = [v22 UUIDString];

      v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v26 = v25;

      v27 = &v1[OBJC_IVAR____TtC11MusicJSCore8JSObject_nativeBridgeIdentifier];
      *v27 = v24;
      v27[1] = v26;
      v1[OBJC_IVAR____TtC11MusicJSCore8JSObject_isNativeOnly] = 0;
      v53.receiver = v1;
      v53.super_class = type metadata accessor for JSObject();
      v28 = objc_msgSendSuper2(&v53, "init");
      v29 = qword_1011BDB08;
      v30 = v28;
      if (v29 != -1)
      {
        swift_once();
      }

      v31 = static JSBridge.shared;
      sub_100027010();
      v32 = swift_allocObject();
      *(v32 + 16) = v30;
      *(v32 + 24) = v31;
      *(v32 + 32) = v3;
      *(v32 + 40) = v2;
      *(v32 + 48) = v4 & 1;
      v33 = v30;
      v34 = v31;
      static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_100D34F34, v32);

      sub_100D34F44(a1);

      return v33;
    }

    else
    {
      v37 = [objc_allocWithZone(NSUUID) init];
      v38 = [v37 UUIDString];

      v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v41 = v40;

      v42 = &v1[OBJC_IVAR____TtC11MusicJSCore8JSObject_nativeBridgeIdentifier];
      *v42 = v39;
      v42[1] = v41;
      v1[OBJC_IVAR____TtC11MusicJSCore8JSObject_isNativeOnly] = 1;
      v54.receiver = v1;
      v54.super_class = type metadata accessor for JSObject();
      return objc_msgSendSuper2(&v54, "init");
    }
  }

  else if (*(a1 + 40))
  {
    v36 = &v1[OBJC_IVAR____TtC11MusicJSCore8JSObject_nativeBridgeIdentifier];
    *v36 = v3;
    v36[1] = v2;
    v1[OBJC_IVAR____TtC11MusicJSCore8JSObject_isNativeOnly] = 0;
    v52.receiver = v1;
    v52.super_class = type metadata accessor for JSObject();
    return objc_msgSendSuper2(&v52, "init");
  }

  else
  {
    v5 = *(a1 + 24);
    v6 = *(a1 + 32);
    v7 = (*(a1 + 17) << 8) | ((*(a1 + 21) | (*(a1 + 23) << 16)) << 40) | v4;
    v8 = objc_allocWithZone(NSUUID);
    v49 = v3;

    sub_100D34F74(v2, v7, v5, v6);
    v9 = [v8 init];
    v10 = [v9 UUIDString];

    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;

    v14 = &v1[OBJC_IVAR____TtC11MusicJSCore8JSObject_nativeBridgeIdentifier];
    *v14 = v11;
    v14[1] = v13;
    v1[OBJC_IVAR____TtC11MusicJSCore8JSObject_isNativeOnly] = 0;
    v51.receiver = v1;
    v51.super_class = type metadata accessor for JSObject();
    v15 = objc_msgSendSuper2(&v51, "init");
    v16 = qword_1011BDB08;
    v48 = v15;
    if (v16 != -1)
    {
      swift_once();
    }

    v47 = static JSBridge.shared;
    if (v6 == 1)
    {
      v46 = 0;
      v17 = 0;
      v18 = 0;
      v19 = 0;
    }

    else
    {
      v46 = v7;
      v17 = v5;
      v18 = v6;
      v19 = v2;
    }

    sub_100027010();
    v43 = swift_allocObject();
    *(v43 + 16) = v48;
    *(v43 + 24) = v47;
    *(v43 + 32) = v46;
    *(v43 + 40) = v17;
    *(v43 + 48) = v18;
    *(v43 + 56) = v49;
    *(v43 + 64) = v19 & 1;
    sub_100D34F74(v2, v7, v5, v6);
    sub_100D34F74(v2, v7, v5, v6);
    v44 = v48;
    v45 = v47;
    static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_100D34F90, v43);

    sub_100D34F44(a1);
    sub_100D34FA4(v2, v7, v5, v6);
    sub_100D34FA4(v2, v7, v5, v6);

    return v44;
  }
}

unint64_t sub_100D34F74(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 != 1)
  {
    return sub_100CFA3E4(a2, a3, a4);
  }

  return result;
}

void sub_100D34FA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 != 1)
  {
    sub_100D34FC0(a2, a3, a4);
  }
}

uint64_t sub_100D34FC0(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    sub_100CFA06C(result);
  }

  return result;
}

id JSObject.__deallocating_deinit()
{
  v1 = v0;
  if ((v0[OBJC_IVAR____TtC11MusicJSCore8JSObject_isNativeOnly] & 1) == 0)
  {
    if (qword_1011BDB08 != -1)
    {
      swift_once();
    }

    v2 = static JSBridge.shared;
    v4 = *&v0[OBJC_IVAR____TtC11MusicJSCore8JSObject_nativeBridgeIdentifier];
    v3 = *&v0[OBJC_IVAR____TtC11MusicJSCore8JSObject_nativeBridgeIdentifier + 8];
    sub_100027010();
    v5 = swift_allocObject();
    v5[2] = v2;
    v5[3] = v4;
    v5[4] = v3;

    v6 = v2;
    static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_100D35180, v5);
  }

  v8.receiver = v1;
  v8.super_class = type metadata accessor for JSObject();
  return objc_msgSendSuper2(&v8, "dealloc");
}

uint64_t JSObject.nativeBridgeIdentifier.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11MusicJSCore8JSObject_nativeBridgeIdentifier);

  return v1;
}

uint64_t JSObject.isEqual(_:)(uint64_t a1)
{
  sub_1000189C0(a1, v18);
  v3 = v19;
  if (v19)
  {
    sub_10000954C(v18, v19);
    v4 = *(v3 - 8);
    v5 = __chkstk_darwin();
    v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v4 + 16))(v7, v5);
    v8 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v4 + 8))(v7, v3);
    sub_10000959C(v18);
  }

  else
  {
    v8 = 0;
  }

  v9 = type metadata accessor for JSObject();
  v17.receiver = v1;
  v17.super_class = v9;
  v10 = objc_msgSendSuper2(&v17, "isEqual:", v8);
  swift_unknownObjectRelease();
  if (v10)
  {
    v11 = 1;
    return v11 & 1;
  }

  sub_1000189C0(a1, v18);
  if (!v19)
  {
    sub_100011DF0(v18);
    goto LABEL_14;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_14:
    v11 = 0;
    return v11 & 1;
  }

  v12 = v16;
  if (*&v1[OBJC_IVAR____TtC11MusicJSCore8JSObject_nativeBridgeIdentifier] == *&v16[OBJC_IVAR____TtC11MusicJSCore8JSObject_nativeBridgeIdentifier] && *&v1[OBJC_IVAR____TtC11MusicJSCore8JSObject_nativeBridgeIdentifier + 8] == *&v16[OBJC_IVAR____TtC11MusicJSCore8JSObject_nativeBridgeIdentifier + 8])
  {

    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

uint64_t sub_100D35634(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_100D3564C(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100D35670(uint64_t a1)
{
  if ((*(a1 + 40) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 40) & 3;
  }
}

uint64_t sub_100D3568C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 41))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 40);
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

uint64_t sub_100D356D4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_100D35724(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    LOBYTE(a2) = 3;
  }

  *(result + 40) = a2;
  return result;
}

uint64_t sub_100D35768()
{

  return swift_deallocObject();
}

id JSStoreHTTPResponse.init(statusCode:output:performanceMetrics:expirationDate:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v54 = a4;
  v55 = a3;
  sub_10010FC20(&qword_101188C20);
  __chkstk_darwin();
  v50 = &v49 - v6;
  v53 = type metadata accessor for Date();
  v51 = *(v53 - 8);
  __chkstk_darwin();
  v49 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61[0] = _swiftEmptyArrayStorage;
  memset(&v61[1], 0, 24);
  v61[4] = 1;
  v62 = 0;
  v8 = JSObject.init(type:)(v61);
  v9 = qword_1011BDB08;
  v10 = v8;
  if (v9 != -1)
  {
    swift_once();
  }

  v11 = static JSBridge.shared;
  v60 = &type metadata for Int;
  *&v59 = a1;
  v12 = sub_100009F78(0, &qword_101182960);
  sub_1000089F8(&v59, &v57, &unk_101183F30);
  v13 = swift_allocObject();
  *(v13 + 16) = 1;
  v14 = v58;
  *(v13 + 24) = v57;
  *(v13 + 40) = v14;
  *(v13 + 56) = 0x737574617473;
  *(v13 + 64) = 0xE600000000000000;
  *(v13 + 72) = v10;
  *(v13 + 80) = v11;
  *(v13 + 88) = 0;
  v15 = v10;
  v16 = v11;
  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_100D35EE8, v13);

  sub_1000095E8(&v59, &unk_101183F30);
  sub_1000089F8(a2, &v57, &unk_101183F30);
  v17 = a2;
  if (*(&v58 + 1))
  {
    sub_100016270(&v57, &v59);
    sub_10000DD18(&v59, &v57);
    sub_1000089F8(&v57, v56, &unk_101183F30);
    v18 = swift_allocObject();
    *(v18 + 16) = 0;
    v19 = v56[1];
    *(v18 + 24) = v56[0];
    *(v18 + 40) = v19;
    *(v18 + 56) = 0x74757074756FLL;
    *(v18 + 64) = 0xE600000000000000;
    *(v18 + 72) = v15;
    *(v18 + 80) = v16;
    *(v18 + 88) = 0;
    v20 = v15;
    v21 = v16;
    static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_100D35F98, v18);

    sub_1000095E8(&v57, &unk_101183F30);
    sub_10000959C(&v59);
  }

  else
  {
    sub_1000095E8(&v57, &unk_101183F30);
  }

  v22 = v55;
  v52 = v12;
  if (v55)
  {
    v23 = v55;
    v24 = ICURLPerformanceMetrics.JSSerialized.getter();
    v60 = sub_10010FC20(&qword_101197BD0);
    *&v59 = v24;
    sub_1000089F8(&v59, &v57, &unk_101183F30);
    v25 = v17;
    v26 = swift_allocObject();
    *(v26 + 16) = 0;
    v27 = v58;
    *(v26 + 24) = v57;
    *(v26 + 40) = v27;
    *(v26 + 56) = 0xD000000000000012;
    *(v26 + 64) = 0x8000000100E5C980;
    *(v26 + 72) = v15;
    *(v26 + 80) = v16;
    *(v26 + 88) = 0;
    v28 = v15;
    v29 = v16;
    static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_100D35F98, v26);
    v17 = v25;
    v22 = v55;

    sub_1000095E8(&v59, &unk_101183F30);
  }

  v30 = v54;
  v31 = v50;
  sub_1000089F8(v54, v50, &qword_101188C20);
  v32 = v51;
  v33 = v53;
  if ((*(v51 + 48))(v31, 1, v53) == 1)
  {

    sub_1000095E8(v30, &qword_101188C20);
    sub_1000095E8(v17, &unk_101183F30);
    v34 = v31;
    v35 = &qword_101188C20;
  }

  else
  {
    v36 = *(v32 + 32);
    v55 = v17;
    v37 = v49;
    v36(v49, v31, v33);
    sub_100009F78(0, &qword_1011BE8E0);
    v38 = static NSDateFormatter.iso8601ExtendedDateFormatter.getter();
    isa = Date._bridgeToObjectiveC()().super.isa;
    v40 = [v38 stringFromDate:isa];

    v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v43 = v42;

    v60 = &type metadata for String;
    *&v59 = v41;
    *(&v59 + 1) = v43;
    sub_1000089F8(&v59, &v57, &unk_101183F30);
    v44 = swift_allocObject();
    *(v44 + 16) = 0;
    v45 = v58;
    *(v44 + 24) = v57;
    *(v44 + 40) = v45;
    strcpy((v44 + 56), "expirationDate");
    *(v44 + 71) = -18;
    *(v44 + 72) = v15;
    *(v44 + 80) = v16;
    *(v44 + 88) = 0;
    v46 = v15;
    v47 = v16;
    static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_100D35F98, v44);

    sub_1000095E8(v54, &qword_101188C20);
    sub_1000095E8(v55, &unk_101183F30);
    (*(v32 + 8))(v37, v53);
    v34 = &v59;
    v35 = &unk_101183F30;
  }

  sub_1000095E8(v34, v35);
  return v15;
}

uint64_t sub_100D35EEC()
{
  if (*(v0 + 48))
  {
    sub_10000959C(v0 + 24);
  }

  return swift_deallocObject();
}

id JSWhatsNewFeaturedItemViewModel.__allocating_init(title:subtitle:imageName:imageContext:additionalDescription:additionalDescriptionLinkTitle:imageBundleIdentifier:)(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  v23 = 0;
  memset(v22, 0, sizeof(v22));
  v24 = 3;
  v13 = objc_allocWithZone(v12);
  v14 = JSWhatsNewFeaturedItemViewModel.init(type:)(v22);
  swift_getKeyPath();
  swift_getKeyPath();
  v15 = v14;
  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  v16 = v15;
  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  v17 = v16;
  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  v18 = v17;
  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  v19 = v18;
  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  v20 = v19;
  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.setter();
  return v20;
}

uint64_t JSWhatsNewFeaturedItemViewModel.imageContext.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  return static Published.subscript.setter();
}

uint64_t sub_100D36324(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 == *a2)
  {
    v2 = 1;
  }

  else
  {
    v2 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  swift_bridgeObjectRelease_n();
  return v2 & 1;
}

Swift::Int sub_100D36384()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100D363D8()
{
  String.hash(into:)();
}

Swift::Int sub_100D36410()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_100D36460@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s11MusicJSCore31JSWhatsNewFeaturedItemViewModelC13NativeFeatureO8rawValueAESgSS_tcfC_0(*a1);
  *a2 = result;
  return result;
}

uint64_t JSWhatsNewFeaturedItemViewModel.ImageContext.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0x6D49656C646E7562;
  }

  else
  {
    return 0x6D496D6574737973;
  }
}

uint64_t sub_100D364E8(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 0x6D49656C646E7562;
  }

  else
  {
    v2 = 0x6D496D6574737973;
  }

  if (*a2)
  {
    v3 = 0x6D49656C646E7562;
  }

  else
  {
    v3 = 0x6D496D6574737973;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

Swift::Int sub_100D3657C()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100D36600()
{
  String.hash(into:)();
}

Swift::Int sub_100D36670()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

void sub_100D366FC(uint64_t *a1@<X8>)
{
  v2 = 0x6D496D6574737973;
  if (*v1)
  {
    v2 = 0x6D49656C646E7562;
  }

  *a1 = v2;
  a1[1] = 0xEB00000000656761;
}

unint64_t JSWhatsNewFeaturedItemViewModel.ImageBundleIdentifier.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0xD00000000000001BLL;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_100D36784(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD00000000000001BLL;
  }

  else
  {
    v3 = 0xD000000000000010;
  }

  if (v2)
  {
    v4 = "temImage";
  }

  else
  {
    v4 = "musicApplication";
  }

  v5 = v4 | 0x8000000000000000;
  if (*a2)
  {
    v6 = 0xD00000000000001BLL;
  }

  else
  {
    v6 = 0xD000000000000010;
  }

  if (*a2)
  {
    v7 = "musicApplication";
  }

  else
  {
    v7 = "temImage";
  }

  if (v3 == v6 && v5 == (v7 | 0x8000000000000000))
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v9 & 1;
}

Swift::Int sub_100D36834()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100D368B8()
{
  String.hash(into:)();
}

Swift::Int sub_100D36928()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

void sub_100D369B4(unint64_t *a1@<X8>)
{
  if (*v1)
  {
    v2 = 0xD00000000000001BLL;
  }

  else
  {
    v2 = 0xD000000000000010;
  }

  if (*v1)
  {
    v3 = "musicApplication";
  }

  else
  {
    v3 = "temImage";
  }

  *a1 = v2;
  a1[1] = v3 | 0x8000000000000000;
}

void (*JSWhatsNewFeaturedItemViewModel.title.modify(uint64_t *a1))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return sub_100A36E1C;
}

uint64_t JSWhatsNewFeaturedItemViewModel.$title.setter(uint64_t a1)
{
  v2 = sub_10010FC20(&qword_101184218);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin();
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  sub_10010FC20(&qword_101184258);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*JSWhatsNewFeaturedItemViewModel.$title.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = sub_10010FC20(&qword_101184218);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC11MusicJSCore31JSWhatsNewFeaturedItemViewModel__title;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_10010FC20(&qword_101184258);
  Published.projectedValue.getter();
  swift_endAccess();
  return sub_100A36E20;
}

void (*JSWhatsNewFeaturedItemViewModel.subtitle.modify(uint64_t *a1))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return sub_100A36E1C;
}

uint64_t JSWhatsNewFeaturedItemViewModel.$subtitle.setter(uint64_t a1)
{
  v2 = sub_10010FC20(&qword_101184218);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin();
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  sub_10010FC20(&qword_101184258);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*JSWhatsNewFeaturedItemViewModel.$subtitle.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = sub_10010FC20(&qword_101184218);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC11MusicJSCore31JSWhatsNewFeaturedItemViewModel__subtitle;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_10010FC20(&qword_101184258);
  Published.projectedValue.getter();
  swift_endAccess();
  return sub_100A36E20;
}

void (*JSWhatsNewFeaturedItemViewModel.imageName.modify(uint64_t *a1))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return sub_100A36E1C;
}

uint64_t JSWhatsNewFeaturedItemViewModel.$imageName.setter(uint64_t a1)
{
  v2 = sub_10010FC20(&qword_101184218);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin();
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  sub_10010FC20(&qword_101184258);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*JSWhatsNewFeaturedItemViewModel.$imageName.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = sub_10010FC20(&qword_101184218);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC11MusicJSCore31JSWhatsNewFeaturedItemViewModel__imageName;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_10010FC20(&qword_101184258);
  Published.projectedValue.getter();
  swift_endAccess();
  return sub_100A36370;
}

uint64_t JSWhatsNewFeaturedItemViewModel.imageContext.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_100D37514@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = v3;
  return result;
}

uint64_t sub_100D37594(uint64_t a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return static Published.subscript.setter();
}

void (*JSWhatsNewFeaturedItemViewModel.imageContext.modify(uint64_t *a1))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return sub_100A360A8;
}

uint64_t JSWhatsNewFeaturedItemViewModel.$imageContext.setter(uint64_t a1)
{
  v2 = sub_10010FC20(&qword_1011BFBB0);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin();
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  sub_10010FC20(&qword_1011BFBA8);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*JSWhatsNewFeaturedItemViewModel.$imageContext.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = sub_10010FC20(&qword_1011BFBB0);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC11MusicJSCore31JSWhatsNewFeaturedItemViewModel__imageContext;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_10010FC20(&qword_1011BFBA8);
  Published.projectedValue.getter();
  swift_endAccess();
  return sub_100A36E20;
}

void (*JSWhatsNewFeaturedItemViewModel.additionalDescription.modify(uint64_t *a1))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return sub_100A36E1C;
}

uint64_t JSWhatsNewFeaturedItemViewModel.$additionalDescription.setter(uint64_t a1)
{
  v2 = sub_10010FC20(&qword_101186D80);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin();
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  sub_10010FC20(&qword_1011928F0);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*JSWhatsNewFeaturedItemViewModel.$additionalDescription.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = sub_10010FC20(&qword_101186D80);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC11MusicJSCore31JSWhatsNewFeaturedItemViewModel__additionalDescription;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_10010FC20(&qword_1011928F0);
  Published.projectedValue.getter();
  swift_endAccess();
  return sub_100A36E20;
}

void (*JSWhatsNewFeaturedItemViewModel.additionalDescriptionLinkTitle.modify(uint64_t *a1))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return sub_100A36E1C;
}

uint64_t JSWhatsNewFeaturedItemViewModel.$additionalDescriptionLinkTitle.setter(uint64_t a1)
{
  v2 = sub_10010FC20(&qword_101186D80);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin();
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  sub_10010FC20(&qword_1011928F0);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*JSWhatsNewFeaturedItemViewModel.$additionalDescriptionLinkTitle.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = sub_10010FC20(&qword_101186D80);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC11MusicJSCore31JSWhatsNewFeaturedItemViewModel__additionalDescriptionLinkTitle;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_10010FC20(&qword_1011928F0);
  Published.projectedValue.getter();
  swift_endAccess();
  return sub_100A36E20;
}

uint64_t sub_100D380F4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  return static Published.subscript.setter();
}

void (*JSWhatsNewFeaturedItemViewModel.nativeFeature.modify(uint64_t *a1))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return sub_100A36E1C;
}

uint64_t JSWhatsNewFeaturedItemViewModel.$nativeFeature.setter(uint64_t a1)
{
  v2 = sub_10010FC20(&qword_1011BFBD0);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin();
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  sub_10010FC20(&qword_1011BFBC8);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*JSWhatsNewFeaturedItemViewModel.$nativeFeature.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = sub_10010FC20(&qword_1011BFBD0);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC11MusicJSCore31JSWhatsNewFeaturedItemViewModel__nativeFeature;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_10010FC20(&qword_1011BFBC8);
  Published.projectedValue.getter();
  swift_endAccess();
  return sub_100A36E20;
}

uint64_t sub_100D38534(uint64_t a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return static Published.subscript.setter();
}

void (*JSWhatsNewFeaturedItemViewModel.imageBundleIdentifier.modify(uint64_t *a1))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return sub_100A36E1C;
}

uint64_t JSWhatsNewFeaturedItemViewModel.$imageBundleIdentifier.setter(uint64_t a1)
{
  v2 = sub_10010FC20(&qword_1011BFBE8);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin();
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  sub_10010FC20(&qword_1011BFBE0);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*JSWhatsNewFeaturedItemViewModel.$imageBundleIdentifier.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = sub_10010FC20(&qword_1011BFBE8);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC11MusicJSCore31JSWhatsNewFeaturedItemViewModel__imageBundleIdentifier;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_10010FC20(&qword_1011BFBE0);
  Published.projectedValue.getter();
  swift_endAccess();
  return sub_100A36E20;
}

uint64_t JSWhatsNewFeaturedItemViewModel.updateProperty(_:value:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v14[0] = a1;
  v14[1] = a2;
  sub_1000189C0(a3, v15);
  if (v15[3])
  {
    sub_1000189C0(v15, v13);

    if (swift_dynamicCast())
    {
      if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || a1 == 0x656C746974627573 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || a1 == 0x6D614E6567616D69 && a2 == 0xE900000000000065 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        goto LABEL_6;
      }

      if (a1 == 0x6E6F436567616D69 && a2 == 0xEC00000074786574 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v9 = _findStringSwitchCase(cases:string:)(&off_1010F9EA0, v12);

        if (v9 > 1)
        {
          goto LABEL_7;
        }

        goto LABEL_6;
      }

      if (a1 == 0xD000000000000015 && 0x8000000100E70CE0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || a1 == 0xD00000000000001ELL && 0x8000000100E70D00 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
LABEL_6:
        swift_getKeyPath();
        swift_getKeyPath();
        v7 = v3;
        static Published.subscript.setter();
LABEL_7:
        sub_10000959C(v13);
        sub_1000095E8(v15, &unk_101183F30);
      }

      if (a1 == 0x654665766974616ELL && a2 == 0xED00006572757461 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v10 = _findStringSwitchCase(cases:string:)(&off_1010F9EF0, v12);

        if (v10 > 2)
        {
          goto LABEL_7;
        }

        goto LABEL_6;
      }

      if (a1 == 0xD000000000000015 && 0x8000000100E70D20 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v11 = _findStringSwitchCase(cases:string:)(&off_1010F9F58, v12);

        if (v11 > 1)
        {
          goto LABEL_7;
        }

        goto LABEL_6;
      }
    }

    sub_10000959C(v13);
  }

  else
  {
  }

  JSViewModel.updateProperty(_:value:)(a1, a2, a3);
  return sub_1000095E8(v14, &unk_1011C0D90);
}

id JSWhatsNewFeaturedItemViewModel.init(type:)(uint64_t a1)
{
  v41 = a1;
  v2 = sub_10010FC20(&qword_1011BFBE0);
  v39 = *(v2 - 8);
  v40 = v2;
  __chkstk_darwin(v2);
  v38 = &v32 - v3;
  v4 = sub_10010FC20(&qword_1011BFBC8);
  v36 = *(v4 - 8);
  v37 = v4;
  __chkstk_darwin(v4);
  v35 = &v32 - v5;
  v6 = sub_10010FC20(&qword_1011928F0);
  v33 = *(v6 - 8);
  v34 = v6;
  __chkstk_darwin(v6);
  v8 = &v32 - v7;
  v32 = sub_10010FC20(&qword_1011BFBA8);
  v9 = *(v32 - 8);
  __chkstk_darwin(v32);
  v11 = &v32 - v10;
  v12 = sub_10010FC20(&qword_101184258);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v32 - v14;
  v16 = OBJC_IVAR____TtC11MusicJSCore31JSWhatsNewFeaturedItemViewModel__title;
  v42 = 0;
  v43 = 0xE000000000000000;
  Published.init(initialValue:)();
  v17 = *(v13 + 32);
  v17(v1 + v16, v15, v12);
  v18 = OBJC_IVAR____TtC11MusicJSCore31JSWhatsNewFeaturedItemViewModel__subtitle;
  v42 = 0;
  v43 = 0xE000000000000000;
  Published.init(initialValue:)();
  v17(v1 + v18, v15, v12);
  v19 = OBJC_IVAR____TtC11MusicJSCore31JSWhatsNewFeaturedItemViewModel__imageName;
  v42 = 0;
  v43 = 0xE000000000000000;
  Published.init(initialValue:)();
  v17(v1 + v19, v15, v12);
  v20 = OBJC_IVAR____TtC11MusicJSCore31JSWhatsNewFeaturedItemViewModel__imageContext;
  LOBYTE(v42) = 0;
  Published.init(initialValue:)();
  (*(v9 + 32))(v1 + v20, v11, v32);
  v21 = OBJC_IVAR____TtC11MusicJSCore31JSWhatsNewFeaturedItemViewModel__additionalDescription;
  v42 = 0;
  v43 = 0;
  sub_10010FC20(&qword_1011815E0);
  Published.init(initialValue:)();
  v22 = v34;
  v23 = *(v33 + 32);
  v23(v1 + v21, v8, v34);
  v24 = OBJC_IVAR____TtC11MusicJSCore31JSWhatsNewFeaturedItemViewModel__additionalDescriptionLinkTitle;
  v42 = 0;
  v43 = 0;
  Published.init(initialValue:)();
  v23(v1 + v24, v8, v22);
  v25 = OBJC_IVAR____TtC11MusicJSCore31JSWhatsNewFeaturedItemViewModel__nativeFeature;
  LOBYTE(v42) = 3;
  sub_10010FC20(&qword_1011BFBB8);
  v26 = v35;
  Published.init(initialValue:)();
  (*(v36 + 32))(v1 + v25, v26, v37);
  v27 = OBJC_IVAR____TtC11MusicJSCore31JSWhatsNewFeaturedItemViewModel__imageBundleIdentifier;
  LOBYTE(v42) = 2;
  sub_10010FC20(&qword_1011BFBD8);
  v28 = v38;
  Published.init(initialValue:)();
  (*(v39 + 32))(v1 + v27, v28, v40);
  v29 = (v1 + OBJC_IVAR____TtC11MusicJSCore11JSViewModel_playActivityFeatureName);
  *v29 = 0;
  v29[1] = 0xE000000000000000;
  *(v1 + OBJC_IVAR____TtC11MusicJSCore11JSViewModel_playActivityRecommendationData) = xmmword_100EFDB60;
  v30 = (v1 + OBJC_IVAR____TtC11MusicJSCore11JSViewModel_editorialID);
  *v30 = 0;
  v30[1] = 0;
  return JSObject.init(type:)(v41);
}

uint64_t sub_100D3934C()
{
  v1 = OBJC_IVAR____TtC11MusicJSCore31JSWhatsNewFeaturedItemViewModel__title;
  v2 = sub_10010FC20(&qword_101184258);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC11MusicJSCore31JSWhatsNewFeaturedItemViewModel__subtitle, v2);
  v3(v0 + OBJC_IVAR____TtC11MusicJSCore31JSWhatsNewFeaturedItemViewModel__imageName, v2);
  v4 = OBJC_IVAR____TtC11MusicJSCore31JSWhatsNewFeaturedItemViewModel__imageContext;
  v5 = sub_10010FC20(&qword_1011BFBA8);
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v6 = OBJC_IVAR____TtC11MusicJSCore31JSWhatsNewFeaturedItemViewModel__additionalDescription;
  v7 = sub_10010FC20(&qword_1011928F0);
  v8 = *(*(v7 - 8) + 8);
  v8(v0 + v6, v7);
  v8(v0 + OBJC_IVAR____TtC11MusicJSCore31JSWhatsNewFeaturedItemViewModel__additionalDescriptionLinkTitle, v7);
  v9 = OBJC_IVAR____TtC11MusicJSCore31JSWhatsNewFeaturedItemViewModel__nativeFeature;
  v10 = sub_10010FC20(&qword_1011BFBC8);
  (*(*(v10 - 8) + 8))(v0 + v9, v10);
  v11 = OBJC_IVAR____TtC11MusicJSCore31JSWhatsNewFeaturedItemViewModel__imageBundleIdentifier;
  v12 = sub_10010FC20(&qword_1011BFBE0);
  v13 = *(*(v12 - 8) + 8);

  return v13(v0 + v11, v12);
}

unint64_t _s11MusicJSCore31JSWhatsNewFeaturedItemViewModelC13NativeFeatureO8rawValueAESgSS_tcfC_0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1010F9EF0, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_100D397C0()
{
  result = qword_1011BFBF0;
  if (!qword_1011BFBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011BFBF0);
  }

  return result;
}

unint64_t sub_100D39818()
{
  result = qword_1011BFBF8;
  if (!qword_1011BFBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011BFBF8);
  }

  return result;
}

unint64_t sub_100D39870()
{
  result = qword_1011BFC00;
  if (!qword_1011BFC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011BFC00);
  }

  return result;
}

uint64_t type metadata accessor for JSWhatsNewFeaturedItemViewModel()
{
  result = qword_1011BFC30;
  if (!qword_1011BFC30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100D39918()
{
  sub_100005390(319, &qword_101187AF8);
  if (v0 <= 0x3F)
  {
    sub_100005390(319, &qword_1011BFC40);
    if (v1 <= 0x3F)
    {
      sub_1000054CC(319, &qword_101187B08, &qword_1011815E0);
      if (v2 <= 0x3F)
      {
        sub_1000054CC(319, &qword_1011BFC48, &qword_1011BFBB8);
        if (v3 <= 0x3F)
        {
          sub_1000054CC(319, &qword_1011BFC50, &qword_1011BFBD8);
          if (v4 <= 0x3F)
          {
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

id JSMusicKitHTTPResponse.init(statusCode:output:performanceMetrics:expirationDate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v48 = a3;
  sub_10010FC20(&qword_101188C20);
  __chkstk_darwin();
  v7 = &v46 - v6;
  v8 = type metadata accessor for Date();
  v49 = *(v8 - 8);
  v50 = v8;
  __chkstk_darwin();
  v47 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57[0] = _swiftEmptyArrayStorage;
  memset(&v57[1], 0, 24);
  v57[4] = 1;
  v58 = 0;
  v10 = JSObject.init(type:)(v57);
  v11 = qword_1011BDB08;
  v12 = v10;
  if (v11 != -1)
  {
    swift_once();
  }

  v13 = static JSBridge.shared;
  ObjectType = &type metadata for Int;
  v55[0] = a1;
  v14 = sub_100009F78(0, &qword_101182960);
  sub_1000089F8(v55, &v53, &unk_101183F30);
  v15 = swift_allocObject();
  *(v15 + 16) = 1;
  v16 = v54;
  *(v15 + 24) = v53;
  *(v15 + 40) = v16;
  *(v15 + 56) = 0x737574617473;
  *(v15 + 64) = 0xE600000000000000;
  *(v15 + 72) = v12;
  *(v15 + 80) = v13;
  *(v15 + 88) = 0;
  v17 = v12;
  v18 = v13;
  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_100D35EE8, v15);

  sub_1000095E8(v55, &unk_101183F30);
  if (a2)
  {
    ObjectType = swift_getObjectType();
    v55[0] = a2;
    sub_1000089F8(v55, &v53, &unk_101183F30);
    v19 = swift_allocObject();
    *(v19 + 16) = 0;
    v20 = v54;
    *(v19 + 24) = v53;
    *(v19 + 40) = v20;
    *(v19 + 56) = 0x74757074756FLL;
    *(v19 + 64) = 0xE600000000000000;
    *(v19 + 72) = v17;
    *(v19 + 80) = v18;
    *(v19 + 88) = 0;
    v21 = v17;
    v22 = v18;
    swift_unknownObjectRetain();
    static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_100D35F98, v19);

    sub_1000095E8(v55, &unk_101183F30);
  }

  v52 = v14;
  if (v48)
  {
    v23 = sub_100DD508C(v48);

    ObjectType = sub_10010FC20(&unk_1011BE660);
    v55[0] = v23;
    sub_1000089F8(v55, &v53, &unk_101183F30);
    v24 = swift_allocObject();
    *(v24 + 16) = 0;
    v25 = v54;
    *(v24 + 24) = v53;
    *(v24 + 40) = v25;
    *(v24 + 56) = 0xD000000000000012;
    *(v24 + 64) = 0x8000000100E5C980;
    *(v24 + 72) = v17;
    *(v24 + 80) = v18;
    *(v24 + 88) = 0;
    v26 = v17;
    v27 = v18;
    static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_100D35F98, v24);

    sub_1000095E8(v55, &unk_101183F30);
  }

  v28 = v51;
  sub_1000089F8(v51, v7, &qword_101188C20);
  v29 = v49;
  v30 = v50;
  if ((*(v49 + 48))(v7, 1, v50) == 1)
  {
    sub_1000095E8(v28, &qword_101188C20);

    swift_unknownObjectRelease();
    v31 = v7;
    v32 = &qword_101188C20;
  }

  else
  {
    v33 = v47;
    (*(v29 + 32))(v47, v7, v30);
    sub_100009F78(0, &qword_1011BE8E0);
    v34 = v29;
    v35 = static NSDateFormatter.iso8601ExtendedDateFormatter.getter();
    isa = Date._bridgeToObjectiveC()().super.isa;
    v37 = [v35 stringFromDate:isa];

    v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v40 = v39;

    ObjectType = &type metadata for String;
    v55[0] = v38;
    v55[1] = v40;
    sub_1000089F8(v55, &v53, &unk_101183F30);
    v41 = swift_allocObject();
    *(v41 + 16) = 0;
    v42 = v54;
    *(v41 + 24) = v53;
    *(v41 + 40) = v42;
    strcpy((v41 + 56), "expirationDate");
    *(v41 + 71) = -18;
    *(v41 + 72) = v17;
    *(v41 + 80) = v18;
    *(v41 + 88) = 0;
    v43 = v17;
    v44 = v18;
    static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_100D35F98, v41);

    swift_unknownObjectRelease();
    sub_1000095E8(v28, &qword_101188C20);
    (*(v34 + 8))(v33, v30);
    v31 = v55;
    v32 = &unk_101183F30;
  }

  sub_1000095E8(v31, v32);
  return v17;
}

NSString sub_100D3A240()
{
  result = String._bridgeToObjectiveC()();
  static JSSearchLandingViewModel.itemsDidChangeNotification = result;
  return result;
}

uint64_t *JSSearchLandingViewModel.itemsDidChangeNotification.unsafeMutableAddressor()
{
  if (qword_1011BDB78 != -1)
  {
    swift_once();
  }

  return &static JSSearchLandingViewModel.itemsDidChangeNotification;
}

id static JSSearchLandingViewModel.itemsDidChangeNotification.getter()
{
  if (qword_1011BDB78 != -1)
  {
    swift_once();
  }

  v1 = static JSSearchLandingViewModel.itemsDidChangeNotification;

  return v1;
}

uint64_t JSSearchLandingViewModel.title.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC11MusicJSCore24JSSearchLandingViewModel_title);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t JSSearchLandingViewModel.items.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_100D3A440@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = v3;
  return result;
}

uint64_t sub_100D3A4C0(uint64_t a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v3 = v2;
  return static Published.subscript.setter();
}

uint64_t JSSearchLandingViewModel.$items.getter()
{
  swift_beginAccess();
  sub_10010FC20(&qword_1011BFC90);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t sub_100D3A5AC()
{
  swift_beginAccess();
  sub_10010FC20(&qword_1011BFC90);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t sub_100D3A624(uint64_t a1)
{
  v2 = sub_10010FC20(&qword_1011BFCE0);
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin();
  v8 = &v11 - v7;
  v9 = *(v3 + 16);
  v9(&v11 - v7, a1, v2, v6);
  (v9)(v5, v8, v2);
  swift_beginAccess();
  sub_10010FC20(&qword_1011BFC90);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(v8, v2);
}

uint64_t JSSearchLandingViewModel.updateProperty(_:value:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v26[0] = a1;
  v26[1] = a2;
  sub_1000189C0(a3, v27);
  if (v27[3])
  {
    sub_1000189C0(v27, v25);

    if (swift_dynamicCast())
    {
      v7 = v24;
      if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v8 = (v3 + OBJC_IVAR____TtC11MusicJSCore24JSSearchLandingViewModel_title);
        swift_beginAccess();
        *v8 = v23;
        v8[1] = v7;

        v9 = v3 + OBJC_IVAR____TtC11MusicJSCore24JSSearchLandingViewModel_delegate;
        if (!swift_unknownObjectWeakLoadStrong())
        {
LABEL_19:
          sub_10000959C(v25);
          sub_1000095E8(v27, &unk_101183F30);
        }

        v10 = *(v9 + 8);
        ObjectType = swift_getObjectType();
        (*(v10 + 8))(v3, ObjectType, v10);
LABEL_18:
        swift_unknownObjectRelease();
        goto LABEL_19;
      }
    }

    sub_10010FC20(&qword_1011BE1F8);
    if (swift_dynamicCast())
    {
      v12 = v23;
      if (a1 == 0x736D657469 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        swift_getKeyPath();
        swift_getKeyPath();
        v13 = static Published.subscript.modify();
        *v14 = _swiftEmptyArrayStorage;

        v13(v22, 0);

        swift_getKeyPath();
        swift_getKeyPath();
        v15 = v3;
        v16 = static Published.subscript.modify();
        sub_100CE8858(v12);
        v16(v22, 0);

        v17 = [objc_opt_self() defaultCenter];
        if (qword_1011BDB78 != -1)
        {
          swift_once();
        }

        [v17 postNotificationName:static JSSearchLandingViewModel.itemsDidChangeNotification object:v15];

        v18 = v15 + OBJC_IVAR____TtC11MusicJSCore24JSSearchLandingViewModel_delegate;
        if (!swift_unknownObjectWeakLoadStrong())
        {
          goto LABEL_19;
        }

        v19 = *(v18 + 8);
        v20 = swift_getObjectType();
        (*(v19 + 8))(v15, v20, v19);
        goto LABEL_18;
      }
    }

    sub_10000959C(v25);
  }

  else
  {
  }

  JSViewModel.updateProperty(_:value:)(a1, a2, a3);
  return sub_1000095E8(v26, &unk_1011C0D90);
}

id JSSearchLandingViewModel.init(type:)(uint64_t a1)
{
  v3 = sub_10010FC20(&qword_1011BFC90);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v12 - v5;
  *(v1 + OBJC_IVAR____TtC11MusicJSCore24JSSearchLandingViewModel_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v7 = (v1 + OBJC_IVAR____TtC11MusicJSCore24JSSearchLandingViewModel_title);
  *v7 = 0;
  v7[1] = 0;
  v8 = OBJC_IVAR____TtC11MusicJSCore24JSSearchLandingViewModel__items;
  v12[1] = _swiftEmptyArrayStorage;
  sub_10010FC20(&qword_1011BE1F8);
  Published.init(initialValue:)();
  (*(v4 + 32))(v1 + v8, v6, v3);
  v9 = (v1 + OBJC_IVAR____TtC11MusicJSCore11JSViewModel_playActivityFeatureName);
  *v9 = 0;
  v9[1] = 0xE000000000000000;
  *(v1 + OBJC_IVAR____TtC11MusicJSCore11JSViewModel_playActivityRecommendationData) = xmmword_100EFDB60;
  v10 = (v1 + OBJC_IVAR____TtC11MusicJSCore11JSViewModel_editorialID);
  *v10 = 0;
  v10[1] = 0;
  return JSObject.init(type:)(a1);
}

uint64_t sub_100D3AD44()
{
  sub_1000D8F2C(v0 + OBJC_IVAR____TtC11MusicJSCore24JSSearchLandingViewModel_delegate);

  v1 = OBJC_IVAR____TtC11MusicJSCore24JSSearchLandingViewModel__items;
  v2 = sub_10010FC20(&qword_1011BFC90);
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

uint64_t type metadata accessor for JSSearchLandingViewModel()
{
  result = qword_1011BFCC8;
  if (!qword_1011BFCC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100D3AECC()
{
  sub_100D3AF70();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100D3AF70()
{
  if (!qword_1011BFCD8)
  {
    sub_1001109D0(&qword_1011BE1F8);
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &qword_1011BFCD8);
    }
  }
}

uint64_t sub_100D3AFF0(char *a1, char *a2)
{
  if (*&aDefault_11[8 * *a1] == *&aDefault_11[8 * *a2])
  {
    v2 = 1;
  }

  else
  {
    v2 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  swift_bridgeObjectRelease_n();
  return v2 & 1;
}

Swift::Int sub_100D3B058()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100D3B0B4()
{
  String.hash(into:)();
}

Swift::Int sub_100D3B0F4()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_100D3B14C@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s11MusicJSCore14JSShelfSectionC6HeightO8rawValueAESgSS_tcfC_0(*a1);
  *a2 = result;
  return result;
}

uint64_t JSShelfSection.UniformCellType.rawValue.getter(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v6 = 0x6D75626C61;
    v7 = 0xD000000000000012;
    if (a1 != 3)
    {
      v7 = 0xD000000000000010;
    }

    if (a1 == 2)
    {
      v7 = 0xD000000000000011;
    }

    if (a1)
    {
      v6 = 0x747369747261;
    }

    if (a1 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v1 = 0xD000000000000013;
    v2 = 0x726574736F70;
    if (a1 != 9)
    {
      v2 = 0x6174536F69646172;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 0xD000000000000010;
    v4 = 0x6F526D6F74737563;
    if (a1 != 6)
    {
      v4 = 0xD000000000000010;
    }

    if (a1 != 5)
    {
      v3 = v4;
    }

    if (a1 <= 7u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_100D3B31C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = JSShelfSection.UniformCellType.rawValue.getter(*a1);
  v5 = v4;
  if (v3 == JSShelfSection.UniformCellType.rawValue.getter(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_100D3B3A4()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  JSShelfSection.UniformCellType.rawValue.getter(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100D3B408()
{
  JSShelfSection.UniformCellType.rawValue.getter(*v0);
  String.hash(into:)();
}

Swift::Int sub_100D3B45C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  JSShelfSection.UniformCellType.rawValue.getter(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_100D3B4BC@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s11MusicJSCore14JSShelfSectionC15UniformCellTypeO8rawValueAESgSS_tcfC_0(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100D3B4EC@<X0>(uint64_t *a1@<X8>)
{
  result = JSShelfSection.UniformCellType.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_100D3B560(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11MusicJSCore14JSShelfSection_items;
  swift_beginAccess();
  *(v1 + v3) = a1;

  v5 = *(v1 + v3);
  if (v5 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    v6 = result;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return result;
    }
  }

  if (v6 < 1)
  {
    __break(1u);
  }

  else
  {

    v7 = 0;
    do
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v8 = sub_100D01314(v7, v5);
      }

      else
      {
        v8 = *(v5 + 8 * v7 + 32);
      }

      v9 = v8;
      ++v7;
      v10 = &v8[OBJC_IVAR____TtC11MusicJSCore10JSGridItem_delegate];
      swift_beginAccess();
      *(v10 + 1) = &protocol witness table for JSShelfSection;
      swift_unknownObjectWeakAssign();
      swift_beginAccess();
      swift_unknownObjectWeakAssign();
    }

    while (v6 != v7);
  }

  return result;
}

uint64_t JSShelfSection.title.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC11MusicJSCore14JSShelfSection_title);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t JSShelfSection.isFeatured.getter()
{
  v1 = OBJC_IVAR____TtC11MusicJSCore14JSShelfSection_isFeatured;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t JSShelfSection.isRankedList.getter()
{
  v1 = OBJC_IVAR____TtC11MusicJSCore14JSShelfSection_isRankedList;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t JSShelfSection.height.getter()
{
  v1 = OBJC_IVAR____TtC11MusicJSCore14JSShelfSection_height;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t JSShelfSection.uniformCellType.getter()
{
  v1 = OBJC_IVAR____TtC11MusicJSCore14JSShelfSection_uniformCellType;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t JSShelfSection.description.getter()
{
  v1 = v0;
  v2._countAndFlagsBits = 60;
  v2._object = 0xE100000000000000;
  String.append(_:)(v2);
  swift_getObjectType();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = NSStringFromClass(ObjCClassFromMetadata);
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  v8._countAndFlagsBits = v5;
  v8._object = v7;
  String.append(_:)(v8);

  v9._countAndFlagsBits = 8250;
  v9._object = 0xE200000000000000;
  String.append(_:)(v9);
  _print_unlocked<A, B>(_:_:)();
  v10 = (v1 + OBJC_IVAR____TtC11MusicJSCore14JSShelfSection_title);
  swift_beginAccess();
  v12 = *v10;
  v11 = v10[1];
  v13 = HIBYTE(v11) & 0xF;
  if ((v11 & 0x2000000000000000) == 0)
  {
    v13 = v12 & 0xFFFFFFFFFFFFLL;
  }

  if (v13)
  {

    v14._countAndFlagsBits = v12;
    v14._object = v11;
    String.append(_:)(v14);

    v15._countAndFlagsBits = 34;
    v15._object = 0xE100000000000000;
    String.append(_:)(v15);
    v16._countAndFlagsBits = 0x20656C746974203BLL;
    v16._object = 0xEB0000000022203DLL;
    String.append(_:)(v16);
  }

  v17._countAndFlagsBits = 62;
  v17._object = 0xE100000000000000;
  String.append(_:)(v17);
  return 0;
}

Swift::Void __swiftcall JSShelfSection.invokeMethod(_:arguments:)(Swift::String _, Swift::OpaquePointer arguments)
{
  v3 = _._countAndFlagsBits == 0x7449646E65707061 && _._object == 0xEB00000000736D65;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    if (*(arguments._rawValue + 2))
    {
      sub_10000DD18(arguments._rawValue + 32, v4);
      sub_10010FC20(&qword_1011BE1E8);
      if (swift_dynamicCast())
      {
        sub_100D3BADC();
      }
    }
  }
}

uint64_t sub_100D3BADC()
{
  v1 = OBJC_IVAR____TtC11MusicJSCore14JSShelfSection_items;
  swift_beginAccess();

  sub_100CE8828(v2);
  result = swift_endAccess();
  v4 = *(v0 + v1);
  if (v4 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    v5 = result;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v5)
    {
      return result;
    }
  }

  if (v5 < 1)
  {
    __break(1u);
  }

  else
  {

    v6 = 0;
    do
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v7 = sub_100D01314(v6, v4);
      }

      else
      {
        v7 = *(v4 + 8 * v6 + 32);
      }

      v8 = v7;
      ++v6;
      v9 = &v7[OBJC_IVAR____TtC11MusicJSCore10JSGridItem_delegate];
      swift_beginAccess();
      *(v9 + 1) = &protocol witness table for JSShelfSection;
      swift_unknownObjectWeakAssign();
      swift_beginAccess();
      swift_unknownObjectWeakAssign();
    }

    while (v5 != v6);
  }

  return result;
}

uint64_t JSShelfSection.updateProperty(_:value:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17[0] = a1;
  v17[1] = a2;
  sub_1000189C0(a3, v18);
  if (!v18[3])
  {

    return sub_1000095E8(v17, &unk_1011C0D90);
  }

  sub_1000189C0(v18, v16);

  sub_10010FC20(&qword_1011BE1E8);
  if (!swift_dynamicCast())
  {
LABEL_10:
    if (swift_dynamicCast())
    {
      if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v7 = (v3 + OBJC_IVAR____TtC11MusicJSCore14JSShelfSection_title);
        swift_beginAccess();
        *v7 = v15;

        goto LABEL_22;
      }
    }

    if (swift_dynamicCast())
    {
      if (a1 == 0x7275746165467369 && a2 == 0xEA00000000006465 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v8 = OBJC_IVAR____TtC11MusicJSCore14JSShelfSection_isFeatured;
LABEL_21:
        swift_beginAccess();
        *(v3 + v8) = v15._countAndFlagsBits;
        goto LABEL_22;
      }

      if (a1 == 0x64656B6E61527369 && a2 == 0xEC0000007473694CLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v8 = OBJC_IVAR____TtC11MusicJSCore14JSShelfSection_isRankedList;
        goto LABEL_21;
      }
    }

    if (swift_dynamicCast())
    {
      if (a1 == 0x746867696568 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v9 = _findStringSwitchCase(cases:string:)(&off_1010FA3E0, v15);

        if (v9 <= 2)
        {
          v10 = OBJC_IVAR____TtC11MusicJSCore14JSShelfSection_height;
          swift_beginAccess();
          *(v3 + v10) = v9;
        }

        goto LABEL_22;
      }

      if (a1 == 0x436D726F66696E75 && a2 == 0xEF657079546C6C65 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v11 = _s11MusicJSCore14JSShelfSectionC15UniformCellTypeO8rawValueAESgSS_tcfC_0(v15);
        if (v11 != 11)
        {
          v12 = v11;
          v13 = OBJC_IVAR____TtC11MusicJSCore14JSShelfSection_uniformCellType;
          swift_beginAccess();
          *(v3 + v13) = v12;
        }

        goto LABEL_22;
      }
    }

    sub_10000959C(v16);
    return sub_1000095E8(v17, &unk_1011C0D90);
  }

  if ((a1 != 0x736D657469 || a2 != 0xE500000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {

    goto LABEL_10;
  }

  sub_100D3B560(v14);
LABEL_22:
  sub_10000959C(v16);
  sub_1000095E8(v18, &unk_101183F30);
}

uint64_t JSShelfSection.gridItemAccessorySocialProfilesDidChange(_:)()
{
  v1 = v0 + OBJC_IVAR____TtC11MusicJSCore14JSShelfSection_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    (*(v3 + 8))(v0, ObjectType, v3);

    return swift_unknownObjectRelease();
  }

  return result;
}

id JSShelfSection.__allocating_init(type:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC11MusicJSCore14JSShelfSection_items] = _swiftEmptyArrayStorage;
  v4 = &v3[OBJC_IVAR____TtC11MusicJSCore14JSShelfSection_title];
  *v4 = 0;
  v4[1] = 0xE000000000000000;
  v3[OBJC_IVAR____TtC11MusicJSCore14JSShelfSection_isFeatured] = 0;
  v3[OBJC_IVAR____TtC11MusicJSCore14JSShelfSection_isRankedList] = 0;
  v3[OBJC_IVAR____TtC11MusicJSCore14JSShelfSection_height] = 0;
  v3[OBJC_IVAR____TtC11MusicJSCore14JSShelfSection_uniformCellType] = 11;
  *&v3[OBJC_IVAR____TtC11MusicJSCore14JSShelfSection_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  return JSObject.init(type:)(a1);
}

id JSShelfSection.init(type:)(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC11MusicJSCore14JSShelfSection_items) = _swiftEmptyArrayStorage;
  v3 = (v1 + OBJC_IVAR____TtC11MusicJSCore14JSShelfSection_title);
  *v3 = 0;
  v3[1] = 0xE000000000000000;
  *(v1 + OBJC_IVAR____TtC11MusicJSCore14JSShelfSection_isFeatured) = 0;
  *(v1 + OBJC_IVAR____TtC11MusicJSCore14JSShelfSection_isRankedList) = 0;
  *(v1 + OBJC_IVAR____TtC11MusicJSCore14JSShelfSection_height) = 0;
  *(v1 + OBJC_IVAR____TtC11MusicJSCore14JSShelfSection_uniformCellType) = 11;
  *(v1 + OBJC_IVAR____TtC11MusicJSCore14JSShelfSection_delegate + 8) = 0;
  swift_unknownObjectWeakInit();

  return JSObject.init(type:)(a1);
}

uint64_t sub_100D3C224()
{

  v1 = v0 + OBJC_IVAR____TtC11MusicJSCore14JSShelfSection_delegate;

  return sub_1000D8F2C(v1);
}

unint64_t _s11MusicJSCore14JSShelfSectionC6HeightO8rawValueAESgSS_tcfC_0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1010FA3E0, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

unint64_t _s11MusicJSCore14JSShelfSectionC15UniformCellTypeO8rawValueAESgSS_tcfC_0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1010FA448, v2);

  if (v3 >= 0xB)
  {
    return 11;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_100D3C3BC()
{
  result = qword_1011BFD20;
  if (!qword_1011BFD20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011BFD20);
  }

  return result;
}

unint64_t sub_100D3C414()
{
  result = qword_1011BFD28;
  if (!qword_1011BFD28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011BFD28);
  }

  return result;
}

uint64_t *JSSegueCoordinator.shared.unsafeMutableAddressor()
{
  if (qword_1011BDB80 != -1)
  {
    swift_once();
  }

  return &static JSSegueCoordinator.shared;
}

void JSSegueCoordinator.perform(segue:with:)(uint64_t a1, uint64_t a2)
{
  v5 = v2 + OBJC_IVAR____TtC11MusicJSCore18JSSegueCoordinator_seguePerformingDelegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v6 = *(v5 + 8);
    ObjectType = swift_getObjectType();
    (*(v6 + 8))(a1, a2, ObjectType, v6);
    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_1011BDB88 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_1000060E4(v8, qword_1011BFD58);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "No segue Performing Delegate is set. Will NOT perform segue.", v11, 2u);
    }
  }
}

id JSSegueCoordinator.init()()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = (&v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  *&v0[OBJC_IVAR____TtC11MusicJSCore18JSSegueCoordinator_seguePerformingDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v6 = OBJC_IVAR____TtC11MusicJSCore18JSSegueCoordinator_pendingSeguesInitiationContexts;
  *&v0[v6] = sub_100CE5378(_swiftEmptyArrayStorage);
  v7 = OBJC_IVAR____TtC11MusicJSCore18JSSegueCoordinator_hasValidHandlerMapping;
  *&v0[v7] = sub_100CE54C0(_swiftEmptyArrayStorage);
  v0[OBJC_IVAR____TtC11MusicJSCore18JSSegueCoordinator__needsValidHandlerMappingCleanup] = 0;
  sub_100009F78(0, &qword_101182960);
  *v5 = static OS_dispatch_queue.main.getter();
  (*(v3 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v2);
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v5, v2);
  if ((v7 & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  v8 = [objc_allocWithZone(NSUUID) init];
  v9 = [v8 UUIDString];

  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  v13 = &v0[OBJC_IVAR____TtC11MusicJSCore8JSObject_nativeBridgeIdentifier];
  *v13 = v10;
  v13[1] = v12;
  v0[OBJC_IVAR____TtC11MusicJSCore8JSObject_isNativeOnly] = 0;
  v14 = type metadata accessor for JSObject();
  v22.receiver = v0;
  v22.super_class = v14;
  v15 = objc_msgSendSuper2(&v22, "init");
  v16 = qword_1011BDB08;
  v1 = v15;
  if (v16 != -1)
  {
LABEL_5:
    swift_once();
  }

  v17 = static JSBridge.shared;
  v18 = swift_allocObject();
  *(v18 + 16) = v1;
  *(v18 + 24) = v17;
  *(v18 + 32) = 0xD000000000000011;
  *(v18 + 40) = 0x8000000100E70F30;
  *(v18 + 48) = 1;
  v19 = v1;
  v20 = v17;
  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_100D34F34, v18);

  return v19;
}

id sub_100D3C934()
{
  v0 = objc_allocWithZone(type metadata accessor for JSSegueCoordinator());
  result = JSSegueCoordinator.init()();
  static JSSegueCoordinator.shared = result;
  return result;
}

id static JSSegueCoordinator.shared.getter()
{
  if (qword_1011BDB80 != -1)
  {
    swift_once();
  }

  v1 = static JSSegueCoordinator.shared;

  return v1;
}

uint64_t JSSegueCoordinator.seguePerformingDelegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC11MusicJSCore18JSSegueCoordinator_seguePerformingDelegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*JSSegueCoordinator.seguePerformingDelegate.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC11MusicJSCore18JSSegueCoordinator_seguePerformingDelegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_100CC4F94;
}

uint64_t JSSegueCoordinator.isSource(_:registeredForSegueOfType:)(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  swift_unknownObjectWeakInit();
  UUID.init()();
  v9 = UUID.uuidString.getter();
  v11 = v10;
  (*(v6 + 8))(v8, v5);
  v20 = v9;
  v21 = v11;
  swift_unknownObjectWeakAssign();
  v19[8] = a2 & 1;
  v12 = OBJC_IVAR____TtC11MusicJSCore18JSSegueCoordinator_hasValidHandlerMapping;
  swift_beginAccess();
  v13 = *(v3 + v12);
  if (*(v13 + 16) && (v14 = sub_100CE8F18(v19), (v15 & 1) != 0))
  {
    v16 = *(*(v13 + 56) + v14);
  }

  else
  {
    v16 = 0;
  }

  swift_endAccess();
  sub_100CEC664(v19);
  return v16;
}

uint64_t JSSegueCoordinator.initiateSegue(source:type:snapshotImpressions:pageDetailsProvider:performanceContext:)(void *a1, char a2, uint64_t a3, void *a4, uint64_t a5)
{
  v6 = v5;
  sub_1000189C0(a5, v36);
  memset(v39, 0, sizeof(v39));
  v38[0] = a1;
  v38[1] = a3;
  v38[2] = a4;
  v11 = a4;
  v12 = a1;

  sub_100CEC714(v36, v39);
  if (JSSegueCoordinator.isSource(_:registeredForSegueOfType:)(v12, a2 & 1))
  {
    sub_100D3E01C(v38, v36);
    swift_beginAccess();
    v13 = v12;
    sub_100CE7DD4(v36, v13, a2 & 1);
    swift_endAccess();
    sub_10010FC20(&unk_1011972C0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100EBC6B0;
    *(inited + 32) = 0xD000000000000041;
    v15 = inited + 32;
    *(inited + 40) = 0x8000000100E70F50;
    *(inited + 72) = &type metadata for Bool;
    *(inited + 48) = 1;
    v16 = sub_10010BC60(inited);
    swift_setDeallocating();
    sub_1000095E8(v15, &unk_1011927D0);
    if (qword_1011BDB08 != -1)
    {
      swift_once();
    }

    v17 = static JSBridge.shared;
    sub_10010FC20(&qword_101181530);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_100EBE260;
    v19 = type metadata accessor for JSObject();
    v20 = 0x8000000100E6CB00;
    v21 = 0x7463656C6573;
    if (a2)
    {
      v21 = 0xD000000000000015;
    }

    *(v18 + 88) = &type metadata for String;
    if ((a2 & 1) == 0)
    {
      v20 = 0xE600000000000000;
    }

    *(v18 + 32) = v13;
    *(v18 + 56) = v19;
    *(v18 + 64) = v21;
    *(v18 + 72) = v20;
    *(v18 + 120) = sub_10010FC20(&qword_101197BD0);
    *(v18 + 96) = v16;
    sub_100009F78(0, &qword_101182960);
    v22 = swift_allocObject();
    strcpy((v22 + 16), "initiateSegue");
    *(v22 + 30) = -4864;
    *(v22 + 32) = v18;
    *(v22 + 40) = v6;
    *(v22 + 48) = v17;
    v23 = v13;
    v24 = v6;
    v25 = v17;
    static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_100D3E078, v22);
  }

  else
  {
    v26 = objc_allocWithZone(type metadata accessor for JSImplicitDefaultSegue());
    *&v26[OBJC_IVAR____TtC11MusicJSCore7JSSegue_playbackIntent] = 0;
    v27 = [objc_allocWithZone(NSUUID) init];
    v28 = [v27 UUIDString];

    v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v31 = v30;

    v32 = &v26[OBJC_IVAR____TtC11MusicJSCore8JSObject_nativeBridgeIdentifier];
    *v32 = v29;
    v32[1] = v31;
    v26[OBJC_IVAR____TtC11MusicJSCore8JSObject_isNativeOnly] = 1;
    v33 = type metadata accessor for JSObject();
    v37.receiver = v26;
    v37.super_class = v33;
    v34 = objc_msgSendSuper2(&v37, "init");
    JSSegueCoordinator.perform(segue:with:)(v34, v38);
    sub_100D3D060(v12, a2 & 1, v38);
  }

  return sub_100CEC784(v38);
}

uint64_t sub_100D3D060(void *a1, char a2, uint64_t a3)
{
  v4 = v3;
  sub_10010FC20(&qword_101181530);
  v8 = swift_allocObject();
  v9 = v8;
  *(v8 + 16) = xmmword_100EBDC20;
  v10 = 0x8000000100E6CB00;
  v11 = 0x7463656C6573;
  if (a2)
  {
    v11 = 0xD000000000000015;
  }

  *(v8 + 56) = &type metadata for String;
  if ((a2 & 1) == 0)
  {
    v10 = 0xE600000000000000;
  }

  *(v8 + 32) = v11;
  *(v8 + 40) = v10;
  *(v8 + 88) = type metadata accessor for JSObject();
  *(v9 + 8) = a1;
  if (*(a3 + 8))
  {
    v12 = *(a3 + 16);
    v13 = type metadata accessor for JSImpressionsBatch();
    objc_allocWithZone(v13);
    v14 = v12;
    v15 = a1;

    v17 = sub_100D32680(v16, 0, v12);

    v27 = v13;
    *&v26 = v17;
    v19 = *(v9 + 2);
    v18 = *(v9 + 3);
    if (v19 >= v18 >> 1)
    {
      v9 = sub_100498DB0((v18 > 1), v19 + 1, 1, v9);
    }

    *(v9 + 2) = v19 + 1;
    sub_100016270(&v26, &v9[32 * v19 + 32]);
  }

  else
  {
    v20 = a1;
  }

  if (qword_1011BDB08 != -1)
  {
    swift_once();
  }

  v21 = static JSBridge.shared;
  sub_100009F78(0, &qword_101182960);
  v22 = swift_allocObject();
  v22[2] = 0xD000000000000014;
  v22[3] = 0x8000000100E710C0;
  v22[4] = v9;
  v22[5] = v4;
  v22[6] = v21;
  v23 = v4;
  v24 = v21;
  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_100D3E2D4, v22);
}

Swift::Void __swiftcall JSSegueCoordinator.invokeMethod(_:arguments:)(Swift::String _, Swift::OpaquePointer arguments)
{
  object = _._object;
  countAndFlagsBits = _._countAndFlagsBits;
  v5 = _._countAndFlagsBits == 0xD000000000000014 && 0x8000000100E70FA0 == _._object;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    if (*(arguments._rawValue + 2) != 3)
    {
      return;
    }

    sub_10000DD18(arguments._rawValue + 32, v11);
    type metadata accessor for JSObject();
    if ((swift_dynamicCast() & 1) == 0)
    {
      return;
    }

    v6 = v10._countAndFlagsBits;
    sub_10000DD18(arguments._rawValue + 64, v11);
    if (swift_dynamicCast())
    {
      v7 = _findStringSwitchCase(cases:string:)(&off_1010F9C28, v10);

      if (v7 <= 1)
      {
        sub_10000DD18(arguments._rawValue + 96, v11);
        type metadata accessor for JSSegue();
        if (swift_dynamicCast())
        {
          v8 = v10._countAndFlagsBits;
        }

        else
        {
          v8 = 0;
        }

        sub_100D3D51C(v10._countAndFlagsBits, v7, v8);

        return;
      }
    }

LABEL_23:

    return;
  }

  if (countAndFlagsBits == 0xD000000000000013 && 0x8000000100E70FC0 == object || (_stringCompareWithSmolCheck(_:_:expecting:)()) && *(arguments._rawValue + 2) == 3)
  {
    sub_10000DD18(arguments._rawValue + 32, v11);
    type metadata accessor for JSObject();
    if (swift_dynamicCast())
    {
      v6 = v10._countAndFlagsBits;
      sub_10000DD18(arguments._rawValue + 64, v11);
      if (swift_dynamicCast())
      {
        v9 = _findStringSwitchCase(cases:string:)(&off_1010F9C28, v10);

        if (v9 <= 1)
        {
          sub_10000DD18(arguments._rawValue + 96, v11);
          if (swift_dynamicCast())
          {
            sub_100D3D728(v10._countAndFlagsBits, v9, v10._countAndFlagsBits);
          }
        }
      }

      goto LABEL_23;
    }
  }
}

void sub_100D3D51C(void *a1, char a2, void *a3)
{
  v7 = OBJC_IVAR____TtC11MusicJSCore18JSSegueCoordinator_pendingSeguesInitiationContexts;
  swift_beginAccess();
  v8 = *(v3 + v7);
  if (!*(v8 + 16))
  {
    v13 = a1;
    goto LABEL_6;
  }

  v9 = a1;
  v10 = sub_100CE8F84(v9, a2 & 1);
  if ((v11 & 1) == 0)
  {
LABEL_6:
    swift_endAccess();

    return;
  }

  sub_100D3E01C(*(v8 + 56) + 56 * v10, v23);
  v25[0] = v23[0];
  v25[1] = v23[1];
  v25[2] = v23[2];
  v26 = v24;
  swift_endAccess();
  swift_beginAccess();
  sub_100D85884(v9, a2 & 1, v23);
  swift_endAccess();
  sub_1000095E8(v23, &qword_1011BE1E0);
  if (a3)
  {
    v12 = a3;
  }

  else
  {
    v14 = objc_allocWithZone(type metadata accessor for JSImplicitDefaultSegue());
    *&v14[OBJC_IVAR____TtC11MusicJSCore7JSSegue_playbackIntent] = 0;
    v15 = [objc_allocWithZone(NSUUID) init];
    v16 = [v15 UUIDString];

    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;

    v20 = &v14[OBJC_IVAR____TtC11MusicJSCore8JSObject_nativeBridgeIdentifier];
    *v20 = v17;
    v20[1] = v19;
    v14[OBJC_IVAR____TtC11MusicJSCore8JSObject_isNativeOnly] = 1;
    v22.receiver = v14;
    v22.super_class = type metadata accessor for JSObject();
    v12 = objc_msgSendSuper2(&v22, "init");
  }

  v21 = a3;
  JSSegueCoordinator.perform(segue:with:)(v12, v25);
  sub_100D3D060(v9, a2 & 1, v25);

  sub_100CEC784(v25);
}

uint64_t sub_100D3D728(uint64_t a1, char a2, char a3)
{
  v4 = v3;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  swift_unknownObjectWeakInit();
  UUID.init()();
  v11 = UUID.uuidString.getter();
  v13 = v12;
  (*(v8 + 8))(v10, v7);
  v19 = v11;
  v20 = v13;
  swift_unknownObjectWeakAssign();
  v18[8] = a2 & 1;
  v14 = OBJC_IVAR____TtC11MusicJSCore18JSSegueCoordinator_hasValidHandlerMapping;
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *(v4 + v14);
  *(v4 + v14) = 0x8000000000000000;
  sub_100CEA988(a3, v18, isUniquelyReferenced_nonNull_native);
  *(v4 + v14) = v17;
  swift_endAccess();
  sub_100D3D908();
  return sub_100CEC664(v18);
}

uint64_t JSSegueCoordinator.updateProperty(_:value:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[0] = a1;
  v4[1] = a2;
  sub_1000189C0(a3, &v5);

  return sub_1000095E8(v4, &unk_1011C0D90);
}

void sub_100D3D908()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v4 = aBlock - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((v0[OBJC_IVAR____TtC11MusicJSCore18JSSegueCoordinator__needsValidHandlerMappingCleanup] & 1) == 0)
  {
    v0[OBJC_IVAR____TtC11MusicJSCore18JSSegueCoordinator__needsValidHandlerMappingCleanup] = 1;
    sub_100009F78(0, &qword_101182960);
    v9 = static OS_dispatch_queue.main.getter();
    v10 = swift_allocObject();
    *(v10 + 16) = v0;
    aBlock[4] = sub_100D3E26C;
    aBlock[5] = v10;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10002BC98;
    aBlock[3] = &unk_101101308;
    v11 = _Block_copy(aBlock);
    v12 = v0;

    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_10002473C();
    sub_10010FC20(&qword_101182970);
    sub_10002489C();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v11);

    (*(v2 + 8))(v4, v1);
    (*(v6 + 8))(v8, v5);
  }
}

uint64_t sub_100D3DBB4(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC11MusicJSCore18JSSegueCoordinator_hasValidHandlerMapping;
  swift_beginAccess();
  v3 = *(a1 + v2);
  v4 = 1 << *(v3 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v3 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  while (v6)
  {
LABEL_12:
    sub_100CEC608(*(v3 + 48) + ((v9 << 11) | (32 * __clz(__rbit64(v6)))), v18);
    sub_100CE6834(v18, v17);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
    }

    else
    {
      swift_beginAccess();
      v12 = sub_100CE8F18(v17);
      if (v13)
      {
        v14 = v12;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v16 = *(a1 + v2);
        *(a1 + v2) = 0x8000000000000000;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_100DD8CA8();
        }

        sub_100CEC664(*(v16 + 48) + 32 * v14);
        sub_100CE9C54(v14, v16);
        *(a1 + v2) = v16;
      }

      swift_endAccess();
    }

    v6 &= v6 - 1;
    result = sub_100CEC664(v17);
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v7)
    {

      *(a1 + OBJC_IVAR____TtC11MusicJSCore18JSSegueCoordinator__needsValidHandlerMappingCleanup) = 0;
      return result;
    }

    v6 = *(v3 + 64 + 8 * v10);
    ++v9;
    if (v6)
    {
      v9 = v10;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100D3DD60()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [Strong hash];

    v3 = v2;
  }

  else
  {
    sub_100009838();
    v3 = StringProtocol.hash.getter();
  }

  Hasher._combine(_:)(v3);
  String.hash(into:)();
}

Swift::Int sub_100D3DE34()
{
  Hasher.init(_seed:)();
  sub_100D3DD60();
  return Hasher._finalize()();
}

Swift::Int sub_100D3DE78()
{
  Hasher.init(_seed:)();
  sub_100D3DD60();
  return Hasher._finalize()();
}

uint64_t sub_100D3DEE8()
{
  sub_1000D8F2C(v0 + OBJC_IVAR____TtC11MusicJSCore18JSSegueCoordinator_seguePerformingDelegate);
}

uint64_t sub_100D3DFB8()
{
  v0 = type metadata accessor for Logger();
  sub_100006080(v0, qword_1011BFD58);
  sub_1000060E4(v0, qword_1011BFD58);
  return static Logger.music(_:)();
}

unint64_t sub_100D3E0B4()
{
  result = qword_1011BFDB8;
  if (!qword_1011BFDB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011BFDB8);
  }

  return result;
}

uint64_t sub_100D3E108(uint64_t a1, uint64_t a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v5 = swift_unknownObjectWeakLoadStrong();
  v6 = v5;
  if (Strong)
  {
    if (!v5)
    {

      return 0;
    }

    sub_100009F78(0, &qword_101197A30);
    v7 = static NSObject.== infix(_:_:)();

    if ((v7 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (v5)
    {

      return 0;
    }

    v9 = *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24);
    if (!v9 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  if (*(a1 + 8))
  {
    v10 = 0xD000000000000015;
  }

  else
  {
    v10 = 0x7463656C6573;
  }

  if (*(a1 + 8))
  {
    v11 = 0x8000000100E6CB00;
  }

  else
  {
    v11 = 0xE600000000000000;
  }

  if (*(a2 + 8))
  {
    v12 = 0xD000000000000015;
  }

  else
  {
    v12 = 0x7463656C6573;
  }

  if (*(a2 + 8))
  {
    v13 = 0x8000000100E6CB00;
  }

  else
  {
    v13 = 0xE600000000000000;
  }

  if (v10 == v12 && v11 == v13)
  {

    return 1;
  }

  else
  {
    v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

    return v14 & 1;
  }
}

uint64_t sub_100D3E274()
{

  return swift_deallocObject();
}

id JSInterstellarViewModel.__allocating_init(type:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = &v3[OBJC_IVAR____TtC11MusicJSCore11JSViewModel_playActivityFeatureName];
  *v4 = 0;
  *(v4 + 1) = 0xE000000000000000;
  *&v3[OBJC_IVAR____TtC11MusicJSCore11JSViewModel_playActivityRecommendationData] = xmmword_100EFDB60;
  v5 = &v3[OBJC_IVAR____TtC11MusicJSCore11JSViewModel_editorialID];
  *v5 = 0;
  *(v5 + 1) = 0;
  return JSObject.init(type:)(a1);
}

id JSInterstellarViewModel.init(type:)(uint64_t a1)
{
  v2 = (v1 + OBJC_IVAR____TtC11MusicJSCore11JSViewModel_playActivityFeatureName);
  *v2 = 0;
  v2[1] = 0xE000000000000000;
  *(v1 + OBJC_IVAR____TtC11MusicJSCore11JSViewModel_playActivityRecommendationData) = xmmword_100EFDB60;
  v3 = (v1 + OBJC_IVAR____TtC11MusicJSCore11JSViewModel_editorialID);
  *v3 = 0;
  v3[1] = 0;
  return JSObject.init(type:)(a1);
}

id JSInterstellarViewModel.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JSInterstellarViewModel();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_100D3E400()
{
  v1 = OBJC_IVAR____TtC11MusicJSCore26JSPushNotificationObserver_pushNotificationObserver;
  *(v0 + v1) = *PushNotificationObserver.shared.unsafeMutableAddressor();
  v2 = OBJC_IVAR____TtC11MusicJSCore26JSPushNotificationObserver_scriptingDrivenPushObservers;

  *(v0 + v2) = sub_100CE5D50(_swiftEmptyArrayStorage);
  v11[0] = _swiftEmptyArrayStorage;
  v11[1] = 1;
  memset(&v11[2], 0, 24);
  v12 = 0;
  v3 = JSObject.init(type:)(v11);
  v4 = qword_1011BDB08;
  v5 = v3;
  if (v4 != -1)
  {
    swift_once();
  }

  v6 = static JSBridge.shared;
  sub_100027010();
  v7 = swift_allocObject();
  *(v7 + 16) = 0xD000000000000018;
  *(v7 + 24) = 0x8000000100E71210;
  *(v7 + 32) = v5;
  *(v7 + 40) = v6;
  *(v7 + 48) = 1;
  v8 = v5;
  v9 = v6;
  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_100CF9E54, v7);

  return v8;
}

Swift::Void __swiftcall JSPushNotificationObserver.invokeMethod(_:arguments:)(Swift::String _, Swift::OpaquePointer arguments)
{
  object = _._object;
  countAndFlagsBits = _._countAndFlagsBits;
  v6 = type metadata accessor for PushNotificationObserver.RegisteredHandler();
  v46 = *(v6 - 8);
  v7 = *(v46 + 64);
  __chkstk_darwin();
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v10 = &v43 - v9;
  __chkstk_darwin();
  v44 = &v43 - v11;
  sub_10010FC20(&unk_101181520);
  __chkstk_darwin();
  v45 = &v43 - v12;
  sub_10010FC20(&qword_1011BE1D8);
  __chkstk_darwin();
  v14 = &v43 - v13;
  if (countAndFlagsBits == 0xD000000000000011 && 0x8000000100E71130 == object || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    if (*(arguments._rawValue + 2))
    {
      sub_10000DD18(arguments._rawValue + 32, v49);
      if (swift_dynamicCast())
      {
        v16 = v47;
        v15 = v48;
        v17 = OBJC_IVAR____TtC11MusicJSCore26JSPushNotificationObserver_scriptingDrivenPushObservers;
        swift_beginAccess();
        v18 = *&v2[v17];
        if (*(v18 + 16))
        {
          v19 = sub_100019C10(v16, v15);
          if (v20)
          {
            v21 = *(v18 + 56);
            v22 = v46;
            sub_1008BDDF4(v21 + *(v46 + 72) * v19, v14);
            v23 = 0;
            goto LABEL_20;
          }

          v23 = 1;
        }

        else
        {
          v23 = 1;
        }

        v22 = v46;
LABEL_20:
        (*(v22 + 56))(v14, v23, 1, v6);
        swift_endAccess();
        if ((*(v22 + 48))(v14, 1, v6) == 1)
        {
          sub_1000095E8(v14, &qword_1011BE1D8);
          v39 = type metadata accessor for TaskPriority();
          v40 = v45;
          (*(*(v39 - 8) + 56))(v45, 1, 1, v39);
          v41 = swift_allocObject();
          v41[2] = 0;
          v41[3] = 0;
          v41[4] = v2;
          v41[5] = v16;
          v41[6] = v15;
          v42 = v2;
          sub_1001F4CB8(0, 0, v40, &unk_100F15138, v41);
        }

        else
        {

          sub_1000095E8(v14, &qword_1011BE1D8);
        }
      }
    }
  }

  else if (countAndFlagsBits == 0xD000000000000013 && 0x8000000100E71150 == object || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    if (*(arguments._rawValue + 2))
    {
      sub_10000DD18(arguments._rawValue + 32, v49);
      if (swift_dynamicCast())
      {
        v25 = v47;
        v24 = v48;
        v26 = OBJC_IVAR____TtC11MusicJSCore26JSPushNotificationObserver_scriptingDrivenPushObservers;
        swift_beginAccess();
        v27 = *&v2[v26];
        if (*(v27 + 16) && (v28 = v2, v29 = sub_100019C10(v25, v24), (v30 & 1) != 0))
        {
          v31 = v46;
          sub_1008BDDF4(*(v27 + 56) + *(v46 + 72) * v29, v10);
          v32 = v44;
          sub_1008BDD2C(v10, v44);
          swift_endAccess();
          v33 = type metadata accessor for TaskPriority();
          v34 = v45;
          (*(*(v33 - 8) + 56))(v45, 1, 1, v33);
          sub_1008BDDF4(v32, v8);
          v35 = (*(v31 + 80) + 40) & ~*(v31 + 80);
          v36 = swift_allocObject();
          v36[2] = 0;
          v36[3] = 0;
          v36[4] = v28;
          sub_1008BDD2C(v8, v36 + v35);
          v37 = (v36 + ((v7 + v35 + 7) & 0xFFFFFFFFFFFFFFF8));
          *v37 = v25;
          v37[1] = v24;
          v38 = v28;
          sub_1001F4CB8(0, 0, v34, &unk_100F15128, v36);

          sub_10072B45C(v32);
        }

        else
        {
          swift_endAccess();
        }
      }
    }
  }
}

uint64_t sub_100D3EAE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  sub_10010FC20(&qword_1011BE1D8);
  v6[8] = swift_task_alloc();

  return _swift_task_switch(sub_100D3EB80, 0, 0);
}

uint64_t sub_100D3EB80()
{
  v1 = *(v0[5] + OBJC_IVAR____TtC11MusicJSCore26JSPushNotificationObserver_pushNotificationObserver);
  v2 = swift_allocObject();
  v0[9] = v2;
  swift_unknownObjectWeakInit();
  v3 = *((swift_isaMask & *v1) + 0x70);

  v9 = (v3 + *v3);
  v4 = swift_task_alloc();
  v0[10] = v4;
  *v4 = v0;
  v4[1] = sub_100D3ED20;
  v6 = v0[7];
  v5 = v0[8];
  v7 = v0[6];

  return v9(v5, v7, v6, sub_100D3F64C, v2);
}

uint64_t sub_100D3ED20()
{

  return _swift_task_switch(sub_100D3EE3C, 0, 0);
}

uint64_t sub_100D3EE3C()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];
  v4 = type metadata accessor for PushNotificationObserver.RegisteredHandler();
  (*(*(v4 - 8) + 56))(v1, 0, 1, v4);
  swift_beginAccess();
  sub_100CE7EB0(v1, v3, v2);
  swift_endAccess();

  v5 = v0[1];

  return v5();
}

uint64_t sub_100D3EF2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v7 = result;
    if (qword_1011BDB08 != -1)
    {
      swift_once();
    }

    v8 = static JSBridge.shared;
    sub_10010FC20(&qword_101181530);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_100EBE260;
    v10 = type metadata accessor for JSPushNotificationObserver();
    *(v9 + 32) = v7;
    *(v9 + 88) = &type metadata for String;
    *(v9 + 56) = v10;
    *(v9 + 64) = a1;
    *(v9 + 72) = a2;
    *(v9 + 120) = sub_10010FC20(&unk_1011BE660);
    *(v9 + 96) = a3;
    sub_100027010();
    v11 = swift_allocObject();
    *(v11 + 16) = v9;
    *(v11 + 24) = _swiftEmptyArrayStorage;
    *(v11 + 32) = 0xD000000000000016;
    *(v11 + 40) = 0x8000000100E71230;
    *(v11 + 48) = v7;
    *(v11 + 56) = v8;
    *(v11 + 64) = 0;
    v12 = v7;

    v13 = v8;
    static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_100CE6890, v11);
  }

  return result;
}

uint64_t sub_100D3F0E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  sub_10010FC20(&qword_1011BE1D8);
  v7[9] = swift_task_alloc();

  return _swift_task_switch(sub_100D3F180, 0, 0);
}

uint64_t sub_100D3F180()
{
  v1 = *(v0[5] + OBJC_IVAR____TtC11MusicJSCore26JSPushNotificationObserver_pushNotificationObserver);
  v0[10] = v1;
  v2 = ((swift_isaMask & *v1) + 120) & 0xFFFFFFFFFFFFLL | 0xDB0A000000000000;
  v0[11] = *((swift_isaMask & *v1) + 0x78);
  v0[12] = v2;
  return _swift_task_switch(sub_100D3F1D8, v1, 0);
}

uint64_t sub_100D3F1D8()
{
  (*(v0 + 88))(*(v0 + 48));

  return _swift_task_switch(sub_100D3F248, 0, 0);
}

uint64_t sub_100D3F248()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];
  v4 = type metadata accessor for PushNotificationObserver.RegisteredHandler();
  (*(*(v4 - 8) + 56))(v1, 1, 1, v4);
  swift_beginAccess();

  sub_100CE7EB0(v1, v3, v2);
  swift_endAccess();

  v5 = v0[1];

  return v5();
}

uint64_t sub_100D3F374()
{
}

uint64_t sub_100D3F424(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for PushNotificationObserver.RegisteredHandler() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_10002F3F4;

  return sub_100D3F0E0(a1, v7, v8, v9, v1 + v6, v11, v12);
}

uint64_t sub_100D3F560(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100008F30;

  return sub_100D3EAE0(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_100D3F664()
{
  type metadata accessor for JSViewModelRequestCoordinator();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = _swiftEmptyArrayStorage;
  static JSViewModelRequestCoordinator.sharedCoordinator = result;
  return result;
}

uint64_t *JSViewModelRequestCoordinator.sharedCoordinator.unsafeMutableAddressor()
{
  if (qword_1011BDB90 != -1)
  {
    swift_once();
  }

  return &static JSViewModelRequestCoordinator.sharedCoordinator;
}

uint64_t static JSViewModelRequestCoordinator.sharedCoordinator.getter()
{
  if (qword_1011BDB90 != -1)
  {
    swift_once();
  }
}

NSUUID __swiftcall JSViewModelRequestCoordinator.beginCoordinating()()
{
  v1 = [objc_allocWithZone(NSUUID) init];
  sub_100027010();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = v1;

  v3 = v1;
  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_100D3FB90, v2);

  return v3;
}

uint64_t sub_100D3F7EC(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a1 + 16);
  if (v12)
  {
    goto LABEL_5;
  }

  type metadata accessor for JSViewModelRequestCoordinator.OperationGroup();
  v13 = swift_allocObject();
  *(v13 + 16) = _swiftEmptyArrayStorage;
  *(v13 + 24) = _swiftEmptyArrayStorage;
  *(a1 + 16) = v13;
  swift_beginAccess();

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(a1 + 24) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a1 + 24) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v19 = *((*(a1 + 24) & 0xFFFFFFFFFFFFFF8) + 0x10);
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  v12 = *(a1 + 16);
  if (v12)
  {
LABEL_5:
    swift_beginAccess();

    v14 = a2;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*(v12 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v12 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v19 = *((*(v12 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    swift_endAccess();
  }

  sub_100027010();
  v15 = static OS_dispatch_queue.main.getter();
  aBlock[4] = sub_100D40110;
  aBlock[5] = a1;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10002BC98;
  aBlock[3] = &unk_1011014B0;
  v16 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10002473C();
  sub_10010FC20(&qword_101182970);
  sub_10002489C();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v16);

  (*(v5 + 8))(v7, v4);
  return (*(v9 + 8))(v11, v8);
}

uint64_t JSViewModelRequestCoordinator.finishCoordinating(token:completionHandler:)(void *a1, uint64_t a2, uint64_t a3)
{
  sub_100027010();
  v7 = swift_allocObject();
  v7[2] = v3;
  v7[3] = a1;
  v7[4] = a2;
  v7[5] = a3;

  v8 = a1;

  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_100D40054, v7);
}

uint64_t sub_100D3FC44(unint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  swift_beginAccess();
  v5 = *(a1 + 24);
  if (v5 >> 62)
  {
    goto LABEL_41;
  }

  v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:

  v7 = v6 != 0;
  if (v6)
  {
    v35 = a1;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 1;
LABEL_5:
    v36 = v9;
    v40 = v11;
    v41 = v10;
    v12 = v8;
    while (1)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v13 = sub_100D0218C(v12, v5);
        v8 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          goto LABEL_39;
        }
      }

      else
      {
        if (v12 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_40;
        }

        v13 = *(v5 + 8 * v12 + 32);

        v8 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
LABEL_39:
          __break(1u);
LABEL_40:
          __break(1u);
LABEL_41:
          v6 = _CocoaArrayWrapper.endIndex.getter();
          goto LABEL_3;
        }
      }

      swift_beginAccess();
      a1 = *(v13 + 16);

      v14 = sub_100DC1284(a2, a1);
      v16 = v15;

      if ((v16 & 1) == 0)
      {
        v17 = swift_allocObject();
        *(v17 + 16) = a3;
        *(v17 + 24) = a4;
        v37 = v17;
        swift_beginAccess();
        v18 = *(v13 + 24);

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v13 + 24) = v18;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v18 = sub_10006429C(0, v18[2] + 1, 1, v18);
          *(v13 + 24) = v18;
        }

        v21 = v18[2];
        v20 = v18[3];
        v22 = v21 + 1;
        if (v21 >= v20 >> 1)
        {
          v26 = sub_10006429C((v20 > 1), v21 + 1, 1, v18);
          v22 = v21 + 1;
          v18 = v26;
        }

        v18[2] = v22;
        v23 = &v18[2 * v21];
        v23[4] = sub_100029B94;
        v23[5] = v37;
        *(v13 + 24) = v18;
        swift_endAccess();
        swift_beginAccess();
        v24 = sub_100DC1420(v14);
        swift_endAccess();

        v25 = *(v13 + 16);
        if (v25 >> 62)
        {
          a1 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          a1 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v10 = v41;
        if (!a1)
        {
          v10 = v12;
        }

        v11 = (a1 != 0) & v40;
        v9 = 1;
        if (v8 == v6)
        {
          a1 = v35;
          v7 = 1;
          goto LABEL_27;
        }

        goto LABEL_5;
      }

      ++v12;
      if (v8 == v6)
      {
        v7 = v36;
        a1 = v35;
        v10 = v41;
        v11 = v40;
        goto LABEL_27;
      }
    }
  }

  v10 = 0;
  v11 = 1;
LABEL_27:

  if (!v7)
  {
    return a3(result);
  }

  if (v11)
  {
    return result;
  }

  v28 = *(a1 + 24);
  if ((v28 & 0xC000000000000001) != 0)
  {

    v29 = sub_100D0218C(v10, v28);

    goto LABEL_33;
  }

  if ((v10 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_44;
  }

  if (v10 >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_44:
    __break(1u);
    return result;
  }

  v29 = *(v28 + 8 * v10 + 32);

LABEL_33:
  swift_beginAccess();
  v30 = *(v29 + 24);

  swift_beginAccess();
  sub_100DC1420(v10);
  swift_endAccess();

  v31 = *(v30 + 16);
  if (v31)
  {
    v32 = v30 + 40;
    do
    {
      v33 = *(v32 - 8);

      v33(v34);

      v32 += 16;
      --v31;
    }

    while (v31);
  }
}

uint64_t JSViewModelRequestCoordinator.deinit()
{

  return v0;
}

uint64_t JSViewModelRequestCoordinator.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

MusicJSCore::JSPosterBadge::BadgeColor_optional __swiftcall JSPosterBadge.BadgeColor.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1010F8D48, v2);

  if (v3 == 1)
  {
    v4.value = MusicJSCore_JSPosterBadge_BadgeColor_systemMaterial;
  }

  else
  {
    v4.value = MusicJSCore_JSPosterBadge_BadgeColor_unknownDefault;
  }

  if (v3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t JSPosterBadge.BadgeColor.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0x614D6D6574737973;
  }

  else
  {
    return 0x726F6C6F4379656BLL;
  }
}

uint64_t sub_100D401B4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x614D6D6574737973;
  }

  else
  {
    v3 = 0x726F6C6F4379656BLL;
  }

  if (v2)
  {
    v4 = 0xE800000000000000;
  }

  else
  {
    v4 = 0xEE006C6169726574;
  }

  if (*a2)
  {
    v5 = 0x614D6D6574737973;
  }

  else
  {
    v5 = 0x726F6C6F4379656BLL;
  }

  if (*a2)
  {
    v6 = 0xEE006C6169726574;
  }

  else
  {
    v6 = 0xE800000000000000;
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

Swift::Int sub_100D40268()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100D402F8()
{
  String.hash(into:)();
}

Swift::Int sub_100D40374()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100D40400@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_1010F8D48, *a1);

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

void sub_100D40460(uint64_t *a1@<X8>)
{
  v2 = 0x726F6C6F4379656BLL;
  if (*v1)
  {
    v2 = 0x614D6D6574737973;
  }

  v3 = 0xE800000000000000;
  if (*v1)
  {
    v3 = 0xEE006C6169726574;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_100D404AC(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*a2 + OBJC_IVAR____TtC11MusicJSCore13JSPosterBadge_badgeText);
  swift_beginAccess();
  *v4 = v3;
  v4[1] = v2;
}

uint64_t JSPosterBadge.badgeText.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC11MusicJSCore13JSPosterBadge_badgeText);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t JSPosterBadge.badgeColor.getter()
{
  v1 = OBJC_IVAR____TtC11MusicJSCore13JSPosterBadge_badgeColor;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t JSPosterBadge.updateProperty(_:value:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12[0] = a1;
  v12[1] = a2;
  sub_1000189C0(a3, v13);
  if (v13[3])
  {
    sub_1000189C0(v13, v11);

    if (swift_dynamicCast())
    {
      if (a1 == 0x7865546567646162 && a2 == 0xE900000000000074 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v6 = (v3 + OBJC_IVAR____TtC11MusicJSCore13JSPosterBadge_badgeText);
        swift_beginAccess();
        *v6 = v10;

LABEL_7:
        sub_10000959C(v11);
        sub_1000095E8(v13, &unk_101183F30);
      }

      if (a1 == 0x6C6F436567646162 && a2 == 0xEA0000000000726FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v8 = _findStringSwitchCase(cases:string:)(&off_1010F8D48, v10);

        if (v8 <= 1)
        {
          v9 = OBJC_IVAR____TtC11MusicJSCore13JSPosterBadge_badgeColor;
          swift_beginAccess();
          *(v3 + v9) = v8;
        }

        goto LABEL_7;
      }
    }

    sub_10000959C(v11);
  }

  else
  {
  }

  return sub_1000095E8(v12, &unk_1011C0D90);
}

id JSPosterBadge.__allocating_init(type:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = &v3[OBJC_IVAR____TtC11MusicJSCore13JSPosterBadge_badgeText];
  *v4 = 0;
  v4[1] = 0;
  v3[OBJC_IVAR____TtC11MusicJSCore13JSPosterBadge_badgeColor] = 0;
  return JSMediaItem.init(type:)(a1);
}

id JSPosterBadge.init(type:)(uint64_t a1)
{
  v2 = (v1 + OBJC_IVAR____TtC11MusicJSCore13JSPosterBadge_badgeText);
  *v2 = 0;
  v2[1] = 0;
  *(v1 + OBJC_IVAR____TtC11MusicJSCore13JSPosterBadge_badgeColor) = 0;
  return JSMediaItem.init(type:)(a1);
}

id JSPosterBadge.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JSPosterBadge();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for JSPosterBadge()
{
  result = qword_1011C0010;
  if (!qword_1011C0010)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_100D408BC()
{
  result = qword_1011BFFE0;
  if (!qword_1011BFFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011BFFE0);
  }

  return result;
}

id JSPersistence.init()()
{
  v1 = v0;
  v2 = type metadata accessor for JSCookieStorage();
  v3 = objc_allocWithZone(v2);
  v4 = JSCookieStorage.init()();
  *(v1 + OBJC_IVAR____TtC11MusicJSCore13JSPersistence_cookieStorage) = v4;
  v5 = type metadata accessor for JSLocalStorage();
  v6 = objc_allocWithZone(v5);
  v7 = v4;
  v8 = JSLocalStorage.init()();
  *(v1 + OBJC_IVAR____TtC11MusicJSCore13JSPersistence_localStorage) = v8;
  sub_10010FC20(&unk_1011972C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100EBDC20;
  strcpy((inited + 32), "cookieStorage");
  *(inited + 46) = -4864;
  *(inited + 48) = v7;
  *(inited + 72) = v2;
  strcpy((inited + 80), "localStorage");
  *(inited + 120) = v5;
  *(inited + 93) = 0;
  *(inited + 94) = -5120;
  *(inited + 96) = v8;
  v10 = v8;
  v11 = v7;
  v12 = v10;
  v13 = sub_10010BC60(inited);
  swift_setDeallocating();
  sub_10010FC20(&unk_1011927D0);
  swift_arrayDestroy();
  sub_10010FC20(&qword_101181530);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_100EBC6B0;
  *(v14 + 56) = sub_10010FC20(&qword_101197BD0);
  *(v14 + 32) = v13;
  v23[0] = v14;
  v23[1] = 1;
  memset(&v23[2], 0, 24);
  v24 = 0;
  v15 = JSObject.init(type:)(v23);
  v16 = qword_1011BDB08;
  v17 = v15;
  if (v16 != -1)
  {
    swift_once();
  }

  v18 = static JSBridge.shared;
  sub_100027010();
  v19 = swift_allocObject();
  *(v19 + 16) = 0x6574736973726550;
  *(v19 + 24) = 0xEB0000000065636ELL;
  *(v19 + 32) = v17;
  *(v19 + 40) = v18;
  *(v19 + 48) = 1;
  v20 = v17;
  v21 = v18;
  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_100CF9E54, v19);

  return v20;
}

void sub_100D40C8C()
{
  v1 = *(v0 + OBJC_IVAR____TtC11MusicJSCore13JSPersistence_localStorage);
}

id JSGridItem.init(type:)(uint64_t a1)
{
  v3 = sub_10010FC20(&qword_1011BE120);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v17 - v5;
  v7 = (v1 + OBJC_IVAR____TtC11MusicJSCore10JSGridItem_titleText);
  *v7 = 0;
  v7[1] = 0;
  v8 = (v1 + OBJC_IVAR____TtC11MusicJSCore10JSGridItem_subtitleText);
  *v8 = 0;
  v8[1] = 0;
  v9 = (v1 + OBJC_IVAR____TtC11MusicJSCore10JSGridItem_overlayTitleText);
  *v9 = 0;
  v9[1] = 0;
  v10 = (v1 + OBJC_IVAR____TtC11MusicJSCore10JSGridItem_overlaySubtitleText);
  *v10 = 0;
  v10[1] = 0;
  v11 = (v1 + OBJC_IVAR____TtC11MusicJSCore10JSGridItem_descriptionText);
  *v11 = 0;
  v11[1] = 0;
  v12 = (v1 + OBJC_IVAR____TtC11MusicJSCore10JSGridItem_headlineText);
  *v12 = 0;
  v12[1] = 0;
  *(v1 + OBJC_IVAR____TtC11MusicJSCore10JSGridItem_headlineColor) = 2;
  v13 = (v1 + OBJC_IVAR____TtC11MusicJSCore10JSGridItem_buttonText);
  *v13 = 0;
  v13[1] = 0;
  *(v1 + OBJC_IVAR____TtC11MusicJSCore10JSGridItem_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *(v1 + OBJC_IVAR____TtC11MusicJSCore17JSSocialMediaItem_backgroundAccessoryArtwork) = 0;
  v14 = OBJC_IVAR____TtC11MusicJSCore17JSSocialMediaItem__accessorySocialProfiles;
  v17[1] = _swiftEmptyArrayStorage;
  sub_10010FC20(&qword_1011BE110);
  Published.init(initialValue:)();
  (*(v4 + 32))(v1 + v14, v6, v3);
  v15 = OBJC_IVAR____TtC11MusicJSCore17JSSocialMediaItem_pendingFollowButtonSelectionPerformedContexts;
  *(v1 + v15) = sub_100CE5708(_swiftEmptyArrayStorage);
  return JSMediaItem.init(type:)(a1);
}

uint64_t JSGridItem.updateProperty(_:value:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v15[0] = a1;
  v15[1] = a2;
  sub_1000189C0(a3, v16);
  if (v16[3])
  {
    sub_1000189C0(v16, v14);

    if (swift_dynamicCast())
    {
      if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v7 = OBJC_IVAR____TtC11MusicJSCore10JSGridItem_titleText;
LABEL_7:
        v8 = (v3 + v7);
        swift_beginAccess();
        *v8 = v13;

LABEL_8:
        sub_10000959C(v14);
        sub_1000095E8(v16, &unk_101183F30);
      }

      if (a1 == 0x656C746974627573 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v7 = OBJC_IVAR____TtC11MusicJSCore10JSGridItem_subtitleText;
        goto LABEL_7;
      }

      if (a1 == 0x5479616C7265766FLL && a2 == 0xEC000000656C7469 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v7 = OBJC_IVAR____TtC11MusicJSCore10JSGridItem_overlayTitleText;
        goto LABEL_7;
      }

      if (a1 == 0x5379616C7265766FLL && a2 == 0xEF656C7469746275 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v7 = OBJC_IVAR____TtC11MusicJSCore10JSGridItem_overlaySubtitleText;
        goto LABEL_7;
      }

      if (a1 == 0x7470697263736564 && a2 == 0xEB000000006E6F69 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v7 = OBJC_IVAR____TtC11MusicJSCore10JSGridItem_descriptionText;
        goto LABEL_7;
      }

      if (a1 == 0x656E696C64616568 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v7 = OBJC_IVAR____TtC11MusicJSCore10JSGridItem_headlineText;
        goto LABEL_7;
      }

      if (a1 == 0x656E696C64616568 && a2 == 0xED0000726F6C6F43 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v10 = _findStringSwitchCase(cases:string:)(&off_1010F8CA8, v13);

        if (v10)
        {
          if (v10 != 1)
          {
            goto LABEL_8;
          }

          v11 = 1;
        }

        else
        {
          v11 = 0;
        }

        v12 = OBJC_IVAR____TtC11MusicJSCore10JSGridItem_headlineColor;
        swift_beginAccess();
        *(v3 + v12) = v11;
        goto LABEL_8;
      }

      if (a1 == 0x65546E6F74747562 && a2 == 0xEA00000000007478 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v7 = OBJC_IVAR____TtC11MusicJSCore10JSGridItem_buttonText;
        goto LABEL_7;
      }
    }

    sub_10000959C(v14);
  }

  else
  {
  }

  JSSocialMediaItem.updateProperty(_:value:)(a1, a2, a3);
  return sub_1000095E8(v15, &unk_1011C0D90);
}

uint64_t sub_100D41310()
{
  v1 = v0 + OBJC_IVAR____TtC11MusicJSCore10JSGridItem_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    (*(v3 + 8))(v0, ObjectType, v3);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t JSGridItem.headlineColor.getter()
{
  v1 = OBJC_IVAR____TtC11MusicJSCore10JSGridItem_headlineColor;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t JSGridItem.delegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC11MusicJSCore10JSGridItem_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*JSGridItem.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC11MusicJSCore10JSGridItem_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_100CC4F94;
}

void JSGridItem.gridSection.setter(void *a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
}

void (*JSGridItem.gridSection.modify(uint64_t *a1))(id **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC11MusicJSCore10JSGridItem_gridSection;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_100CFF9B0;
}

MusicJSCore::JSGridItem::HeadlineColor_optional __swiftcall JSGridItem.HeadlineColor.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1010F8CA8, v2);

  if (v3 == 1)
  {
    v4.value = MusicJSCore_JSGridItem_HeadlineColor_tintColor;
  }

  else
  {
    v4.value = MusicJSCore_JSGridItem_HeadlineColor_unknownDefault;
  }

  if (v3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t JSGridItem.HeadlineColor.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0x6F6C6F43746E6974;
  }

  else
  {
    return 0x746C7561666564;
  }
}

uint64_t sub_100D41760(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6F6C6F43746E6974;
  }

  else
  {
    v3 = 0x746C7561666564;
  }

  if (v2)
  {
    v4 = 0xE700000000000000;
  }

  else
  {
    v4 = 0xE900000000000072;
  }

  if (*a2)
  {
    v5 = 0x6F6C6F43746E6974;
  }

  else
  {
    v5 = 0x746C7561666564;
  }

  if (*a2)
  {
    v6 = 0xE900000000000072;
  }

  else
  {
    v6 = 0xE700000000000000;
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

Swift::Int sub_100D4180C()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100D41894()
{
  String.hash(into:)();
}

Swift::Int sub_100D41908()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100D4198C@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_1010F8CA8, *a1);

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

void sub_100D419EC(uint64_t *a1@<X8>)
{
  v2 = 0x746C7561666564;
  if (*v1)
  {
    v2 = 0x6F6C6F43746E6974;
  }

  v3 = 0xE700000000000000;
  if (*v1)
  {
    v3 = 0xE900000000000072;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_100D41A64()
{

  sub_1000D8F2C(v0 + OBJC_IVAR____TtC11MusicJSCore10JSGridItem_delegate);

  return swift_unknownObjectWeakDestroy();
}

id JSGridItem.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JSGridItem();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for JSGridItem()
{
  result = qword_1011C0088;
  if (!qword_1011C0088)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_100D41C90()
{
  result = qword_1011C0058;
  if (!qword_1011C0058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011C0058);
  }

  return result;
}

Swift::Void __swiftcall JSOnboardingViewModel.didCompleteOnboarding()()
{
  if (qword_1011BDB08 != -1)
  {
    swift_once();
  }

  v1 = static JSBridge.shared;
  sub_100027010();
  v2 = swift_allocObject();
  *(v2 + 16) = _swiftEmptyArrayStorage;
  *(v2 + 24) = _swiftEmptyArrayStorage;
  *(v2 + 32) = 0xD000000000000015;
  *(v2 + 40) = 0x8000000100E714C0;
  *(v2 + 48) = v0;
  *(v2 + 56) = v1;
  *(v2 + 64) = 0;
  v3 = v0;
  v4 = v1;
  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_100CE6890, v2);
}

uint64_t JSHeaderItem.TitleHeaderStyle.rawValue.getter(char a1)
{
  if (!a1)
  {
    return 0x616441656772616CLL;
  }

  if (a1 == 1)
  {
    return 0x786946656772616CLL;
  }

  return 0x647261646E617473;
}

uint64_t sub_100D41EF0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x786946656772616CLL;
  v4 = 0xEA00000000006465;
  if (v2 != 1)
  {
    v3 = 0x647261646E617473;
    v4 = 0xE800000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x616441656772616CLL;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xED00006576697470;
  }

  v7 = 0x786946656772616CLL;
  v8 = 0xEA00000000006465;
  if (*a2 != 1)
  {
    v7 = 0x647261646E617473;
    v8 = 0xE800000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x616441656772616CLL;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xED00006576697470;
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

Swift::Int sub_100D42004()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100D420B8()
{
  String.hash(into:)();
}

Swift::Int sub_100D42158()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_100D42208@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s11MusicJSCore12JSHeaderItemC16TitleHeaderStyleO8rawValueAESgSS_tcfC_0(*a1);
  *a2 = result;
  return result;
}

void sub_100D42238(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xED00006576697470;
  v4 = 0xEA00000000006465;
  v5 = 0x786946656772616CLL;
  if (v2 != 1)
  {
    v5 = 0x647261646E617473;
    v4 = 0xE800000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x616441656772616CLL;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t JSHeaderItem.Action.rawValue.getter(unsigned __int8 a1)
{
  if (a1 > 3u)
  {
    v4 = 0x6146747369747261;
    if (a1 != 6)
    {
      v4 = 0xD000000000000011;
    }

    v5 = 0xD00000000000001ELL;
    if (a1 == 4)
    {
      v5 = 0xD00000000000001CLL;
    }

    if (a1 <= 5u)
    {
      return v5;
    }

    else
    {
      return v4;
    }
  }

  else
  {
    v1 = 0x657461676976616ELL;
    if (a1 != 2)
    {
      v1 = 0xD000000000000014;
    }

    v2 = 0xD000000000000010;
    if (a1)
    {
      v2 = 0xD000000000000015;
    }

    if (a1 <= 1u)
    {
      return v2;
    }

    else
    {
      return v1;
    }
  }
}

unint64_t sub_100D423FC@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s11MusicJSCore12JSHeaderItemC6ActionO8rawValueAESgSS_tcfC_0(*a1);
  *a2 = result;
  return result;
}

void sub_100D4242C(unint64_t *a1@<X8>)
{
  v2 = *v1;
  if (v2 > 3)
  {
    v8 = 0xEF64657469726F76;
    v9 = 0x6146747369747261;
    if (v2 != 6)
    {
      v9 = 0xD000000000000011;
      v8 = 0x8000000100E6D330;
    }

    v10 = 0x8000000100E6D2E0;
    v11 = 0xD00000000000001ELL;
    if (v2 == 4)
    {
      v11 = 0xD00000000000001CLL;
    }

    else
    {
      v10 = 0x8000000100E6D300;
    }

    if (*v1 <= 5u)
    {
      v12 = v11;
    }

    else
    {
      v12 = v9;
    }

    if (*v1 <= 5u)
    {
      v8 = v10;
    }

    *a1 = v12;
    a1[1] = v8;
  }

  else
  {
    v3 = 0xEC0000006B636142;
    v4 = 0x657461676976616ELL;
    if (v2 != 2)
    {
      v4 = 0xD000000000000014;
      v3 = 0x8000000100E6D2C0;
    }

    v5 = 0xD000000000000010;
    v6 = 0x8000000100E6D290;
    if (*v1)
    {
      v5 = 0xD000000000000015;
      v6 = 0x8000000100E59DD0;
    }

    if (*v1 <= 1u)
    {
      v7 = v5;
    }

    else
    {
      v7 = v4;
    }

    if (*v1 <= 1u)
    {
      v3 = v6;
    }

    *a1 = v7;
    a1[1] = v3;
  }
}

uint64_t JSHeaderItem.headerItemDelegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC11MusicJSCore12JSHeaderItem_headerItemDelegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*JSHeaderItem.headerItemDelegate.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC11MusicJSCore12JSHeaderItem_headerItemDelegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_100CC4F94;
}

uint64_t sub_100D426B8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v18[0] == a1 && v18[1] == a2)
  {
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v7 & 1) == 0)
    {
      v9 = &v3[OBJC_IVAR____TtC11MusicJSCore12JSHeaderItem_headerItemDelegate];
      swift_beginAccess();
      result = swift_unknownObjectWeakLoadStrong();
      if (result)
      {
        v10 = *(v9 + 1);
        ObjectType = swift_getObjectType();
        (*(v10 + 8))(v3, ObjectType, v10);
        result = swift_unknownObjectRelease();
      }
    }
  }

  if ((v3[OBJC_IVAR____TtC11MusicJSCore12JSHeaderItem_isUpdatingFromJS] & 1) == 0)
  {
    if (qword_1011BDB08 != -1)
    {
      swift_once();
    }

    v12 = static JSBridge.shared;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v18[3] = &type metadata for String;
    sub_100009F78(0, &qword_101182960);
    sub_1000089F8(v18, v17, &unk_101183F30);
    v13 = swift_allocObject();
    *(v13 + 16) = 1;
    v14 = v17[1];
    *(v13 + 24) = v17[0];
    *(v13 + 40) = v14;
    *(v13 + 56) = 0x656C746974627573;
    *(v13 + 64) = 0xE800000000000000;
    *(v13 + 72) = v3;
    *(v13 + 80) = v12;
    *(v13 + 88) = 0;
    v15 = v3;
    v16 = v12;
    static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_100D35F98, v13);

    return sub_1000095E8(v18, &unk_101183F30);
  }

  return result;
}

void (*JSHeaderItem.subtitle.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v5 = v4[3];
  *v4 = v4[2];
  v4[1] = v5;
  return sub_100D42A4C;
}

uint64_t JSHeaderItem.$subtitle.setter(uint64_t a1)
{
  v2 = sub_10010FC20(&qword_101184218);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin();
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  sub_10010FC20(&qword_101184258);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*JSHeaderItem.$subtitle.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = sub_10010FC20(&qword_101184218);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC11MusicJSCore12JSHeaderItem__subtitle;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_10010FC20(&qword_101184258);
  Published.projectedValue.getter();
  swift_endAccess();
  return sub_100A36E20;
}

uint64_t sub_100D42D38(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v18[0] == a1 && v18[1] == a2)
  {
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v7 & 1) == 0)
    {
      v9 = &v3[OBJC_IVAR____TtC11MusicJSCore12JSHeaderItem_headerItemDelegate];
      swift_beginAccess();
      result = swift_unknownObjectWeakLoadStrong();
      if (result)
      {
        v10 = *(v9 + 1);
        ObjectType = swift_getObjectType();
        (*(v10 + 8))(v3, ObjectType, v10);
        result = swift_unknownObjectRelease();
      }
    }
  }

  if ((v3[OBJC_IVAR____TtC11MusicJSCore12JSHeaderItem_isUpdatingFromJS] & 1) == 0)
  {
    if (qword_1011BDB08 != -1)
    {
      swift_once();
    }

    v12 = static JSBridge.shared;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v18[3] = &type metadata for String;
    sub_100009F78(0, &qword_101182960);
    sub_1000089F8(v18, v17, &unk_101183F30);
    v13 = swift_allocObject();
    *(v13 + 16) = 1;
    v14 = v17[1];
    *(v13 + 24) = v17[0];
    *(v13 + 40) = v14;
    *(v13 + 56) = 0x7469747265707573;
    *(v13 + 64) = 0xEA0000000000656CLL;
    *(v13 + 72) = v3;
    *(v13 + 80) = v12;
    *(v13 + 88) = 0;
    v15 = v3;
    v16 = v12;
    static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_100D35F98, v13);

    return sub_1000095E8(v18, &unk_101183F30);
  }

  return result;
}

uint64_t sub_100D42FE4(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)())
{
  v8 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.getter();

  swift_getKeyPath();
  swift_getKeyPath();
  v8;
  static Published.subscript.setter();
  a7();
}

uint64_t sub_100D430F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)())
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  swift_getKeyPath();
  swift_getKeyPath();
  v7 = v5;
  static Published.subscript.setter();
  a5();
}

void (*JSHeaderItem.supertitle.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v5 = v4[3];
  *v4 = v4[2];
  v4[1] = v5;
  return sub_100D4329C;
}

uint64_t JSHeaderItem.$supertitle.setter(uint64_t a1)
{
  v2 = sub_10010FC20(&qword_101184218);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin();
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  sub_10010FC20(&qword_101184258);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*JSHeaderItem.$supertitle.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = sub_10010FC20(&qword_101184218);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC11MusicJSCore12JSHeaderItem__supertitle;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_10010FC20(&qword_101184258);
  Published.projectedValue.getter();
  swift_endAccess();
  return sub_100A36E20;
}

uint64_t sub_100D43588(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v18[0] == a1 && v18[1] == a2)
  {
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v7 & 1) == 0)
    {
      v9 = &v3[OBJC_IVAR____TtC11MusicJSCore12JSHeaderItem_headerItemDelegate];
      swift_beginAccess();
      result = swift_unknownObjectWeakLoadStrong();
      if (result)
      {
        v10 = *(v9 + 1);
        ObjectType = swift_getObjectType();
        (*(v10 + 8))(v3, ObjectType, v10);
        result = swift_unknownObjectRelease();
      }
    }
  }

  if ((v3[OBJC_IVAR____TtC11MusicJSCore12JSHeaderItem_isUpdatingFromJS] & 1) == 0)
  {
    if (qword_1011BDB08 != -1)
    {
      swift_once();
    }

    v12 = static JSBridge.shared;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v18[3] = &type metadata for String;
    sub_100009F78(0, &qword_101182960);
    sub_1000089F8(v18, v17, &unk_101183F30);
    v13 = swift_allocObject();
    *(v13 + 16) = 1;
    v14 = v17[1];
    *(v13 + 24) = v17[0];
    *(v13 + 40) = v14;
    *(v13 + 56) = 0x656C746974;
    *(v13 + 64) = 0xE500000000000000;
    *(v13 + 72) = v3;
    *(v13 + 80) = v12;
    *(v13 + 88) = 0;
    v15 = v3;
    v16 = v12;
    static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_100D35F98, v13);

    return sub_1000095E8(v18, &unk_101183F30);
  }

  return result;
}

void (*JSHeaderItem.title.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v5 = v4[3];
  *v4 = v4[2];
  v4[1] = v5;
  return sub_100D43954;
}

void sub_100D4397C(uint64_t **a1, char a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v9 = **a1;
  v8 = (*a1)[1];
  swift_getKeyPath();
  swift_getKeyPath();
  v10 = v7[4];
  if (a2)
  {

    static Published.subscript.getter();

    v11 = v7[2];
    v12 = v7[3];
    swift_getKeyPath();
    swift_getKeyPath();
    v7[2] = v9;
    v7[3] = v8;
    v13 = v10;
    static Published.subscript.setter();
    a5(v11, v12);
  }

  else
  {
    static Published.subscript.getter();

    v15 = v7[2];
    v14 = v7[3];
    swift_getKeyPath();
    swift_getKeyPath();
    v7[2] = v9;
    v7[3] = v8;
    v16 = v10;
    static Published.subscript.setter();
    a5(v15, v14);
  }

  free(v7);
}

uint64_t JSHeaderItem.$title.setter(uint64_t a1)
{
  v2 = sub_10010FC20(&qword_101184218);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin();
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  sub_10010FC20(&qword_101184258);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}