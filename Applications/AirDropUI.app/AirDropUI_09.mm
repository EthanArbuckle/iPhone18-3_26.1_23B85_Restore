void sub_1000F4144()
{
  v1 = OBJC_IVAR____TtC9AirDropUI29AirDropSystemApertureIconView_transferState;
  v2 = type metadata accessor for SFAirDropReceive.Transfer.State();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(v0 + OBJC_IVAR____TtC9AirDropUI29AirDropSystemApertureIconView_thumbnailImage);
}

id sub_1000F41CC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AirDropSystemApertureIconView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for AirDropSystemApertureIconView()
{
  result = qword_100178660;
  if (!qword_100178660)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000F42E4()
{
  result = type metadata accessor for SFAirDropReceive.Transfer.State();
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

void sub_1000F43A4(uint64_t a1, uint64_t a2, char a3)
{
  v7 = type metadata accessor for Locale();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v9 = type metadata accessor for String.LocalizationValue();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  *&v3[OBJC_IVAR____TtC9AirDropUI29AirDropSystemApertureIconView_progress] = 0;
  v11 = OBJC_IVAR____TtC9AirDropUI29AirDropSystemApertureIconView_transferState;
  v12 = enum case for SFAirDropReceive.Transfer.State.created(_:);
  v13 = type metadata accessor for SFAirDropReceive.Transfer.State();
  (*(*(v13 - 8) + 104))(&v3[v11], v12, v13);
  *&v3[OBJC_IVAR____TtC9AirDropUI29AirDropSystemApertureIconView_thumbnailImage] = 0;
  v14 = type metadata accessor for AirDropSystemApertureIconView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v16 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v17 = objc_allocWithZone(BSUICAPackageView);
  v18 = v16;
  v19 = String._bridgeToObjectiveC()();
  v20 = [v17 initWithPackageName:v19 inBundle:v18];

  if (v20)
  {
    v21 = v20;
    [v21 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v21 setFrame:{0.0, 0.0, 23.0, 23.0}];
    v22 = String._bridgeToObjectiveC()();
    [v21 setState:v22];

    *&v3[OBJC_IVAR____TtC9AirDropUI29AirDropSystemApertureIconView_airDropMicaView] = v21;
    v23 = &v3[OBJC_IVAR____TtC9AirDropUI29AirDropSystemApertureIconView_overrideIntrinsicContentSize];
    if (a3)
    {
      *v23 = 0;
      *(v23 + 1) = 0;
      v23[16] = 1;
    }

    else
    {
      *v23 = a2;
      *(v23 + 1) = a2;
      v23[16] = 0;
    }

    v40.receiver = v3;
    v40.super_class = v14;
    v24 = v21;
    v25 = objc_msgSendSuper2(&v40, "init");
    [v25 addSubview:v24];
    sub_1000F499C(v24, a1, 0.0);
    sub_1000165C4(0, &qword_100173390, NSLayoutConstraint_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v25 addConstraints:isa];

    if (qword_100172140 != -1)
    {
      swift_once();
    }

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v27 = v24;
    if (LOBYTE(v39[0]) == 1)
    {
      v28 = objc_opt_self();
      v29 = [v28 systemPinkColor];
      v30 = [v29 colorWithAlphaComponent:0.3];

      [v25 setBackgroundColor:v30];
      v31 = [v28 systemGreenColor];
      v27 = [v31 colorWithAlphaComponent:0.4];

      [v24 setBackgroundColor:v27];
    }

    v32 = *&v25[OBJC_IVAR____TtC9AirDropUI29AirDropSystemApertureIconView_airDropMicaView];
    v33 = String._bridgeToObjectiveC()();
    v34 = [v32 publishedObjectWithName:v33];

    if (v34)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v37 = 0u;
      v38 = 0u;
    }

    v39[0] = v37;
    v39[1] = v38;
    if (*(&v38 + 1))
    {
      sub_1000165C4(0, &unk_100178670, CALayer_ptr);
      if (swift_dynamicCast())
      {
        [v36 setHidden:1];
      }
    }

    else
    {
      sub_10006CDAC(v39);
    }

    [v25 setClipsToBounds:0];
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
    v35 = String._bridgeToObjectiveC()();

    [v25 setAccessibilityLabel:v35];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1000F499C(void *a1, uint64_t a2, double a3)
{
  if (a2 <= 3)
  {
    if (a2 != 1)
    {
      if (a2 != 2)
      {
LABEL_4:
        sub_1000077C8(&unk_100172E80, &unk_100118B40);
        v7 = swift_allocObject();
        *(v7 + 16) = xmmword_10011C3D0;
        v8 = [a1 widthAnchor];
        v9 = [v3 widthAnchor];
        v10 = -a3;
        v11 = [v8 constraintEqualToAnchor:v9 constant:v10];

        *(v7 + 32) = v11;
        v12 = [a1 heightAnchor];
        v13 = [v3 heightAnchor];
        v14 = [v12 constraintEqualToAnchor:v13 constant:v10];

        result = v7;
        *(v7 + 40) = v14;
        return result;
      }

      goto LABEL_7;
    }

LABEL_10:
    sub_1000077C8(&unk_100172E80, &unk_100118B40);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_10011C3D0;
    v27 = [a1 widthAnchor];
    v28 = [v3 widthAnchor];
    v29 = [v27 constraintEqualToAnchor:v28 constant:-a3];

    *(v26 + 32) = v29;
    v30 = [a1 heightAnchor];
    v31 = [a1 widthAnchor];
    v32 = [v30 constraintEqualToAnchor:v31];

    *(v26 + 40) = v32;
    v35 = v26;
    if (a2 == 1)
    {
      v23 = [a1 topAnchor];
      v24 = [v3 topAnchor];
    }

    else
    {
      v23 = [a1 bottomAnchor];
      v24 = [v3 bottomAnchor];
    }

    goto LABEL_9;
  }

  if (a2 == 4)
  {
    goto LABEL_10;
  }

  if (a2 != 8)
  {
    goto LABEL_4;
  }

LABEL_7:
  sub_1000077C8(&unk_100172E80, &unk_100118B40);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_10011C3D0;
  v17 = [a1 heightAnchor];
  v18 = [v3 heightAnchor];
  v19 = [v17 constraintEqualToAnchor:v18 constant:-a3];

  *(v16 + 32) = v19;
  v20 = [a1 widthAnchor];
  v21 = [a1 heightAnchor];
  v22 = [v20 constraintEqualToAnchor:v21];

  *(v16 + 40) = v22;
  v35 = v16;
  if (a2 == 2)
  {
    v23 = [a1 leadingAnchor];
    v24 = [v3 leadingAnchor];
  }

  else
  {
    v23 = [a1 trailingAnchor];
    v24 = [v3 trailingAnchor];
  }

LABEL_9:
  v25 = [v23 constraintEqualToAnchor:v24];
  v33 = v25;

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((v35 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v34 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  return v35;
}

id sub_1000F50A0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AirDropSystemApertureView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1000F5120(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000F57D0();

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_1000F5184(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000F57D0();

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_1000F51E8()
{
  sub_1000F57D0();
  UIViewRepresentable.body.getter();
  __break(1u);
}

unint64_t sub_1000F5214()
{
  result = qword_1001786B0;
  if (!qword_1001786B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001786B0);
  }

  return result;
}

uint64_t sub_1000F5268(uint64_t a1, uint64_t a2, char a3)
{
  v4 = type metadata accessor for SFAirDropReceive.Transfer.State();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = objc_allocWithZone(type metadata accessor for AirDropSystemApertureIconView());
  sub_1000F43A4(2, 0, 1);
  v11 = v10;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v12 = v22;
  [v22 fractionCompleted];
  v14 = v13;

  *(v11 + OBJC_IVAR____TtC9AirDropUI29AirDropSystemApertureIconView_progress) = fmax(v14, 0.01);
  sub_1000F3614();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v15 = OBJC_IVAR____TtC9AirDropUI29AirDropSystemApertureIconView_transferState;
  swift_beginAccess();
  (*(v5 + 24))(v11 + v15, v8, v4);
  swift_endAccess();
  sub_1000F3614();
  (*(v5 + 8))(v8, v4);
  *(v11 + OBJC_IVAR____TtC9AirDropUI25AirDropSystemApertureView_expanded) = 1;
  v16 = OBJC_IVAR____TtC9AirDropUI29AirDropSystemApertureIconView_thumbnailImage;
  sub_1000F34FC(*(v11 + OBJC_IVAR____TtC9AirDropUI29AirDropSystemApertureIconView_thumbnailImage) != 0);
  sub_1000F3614();
  if (a3)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v17 = v22;
    if (v22)
    {
      v18 = *(v11 + v16);
      *(v11 + v16) = v22;
      v19 = v17;

      sub_1000F31B8();
    }
  }

  return v11;
}

void sub_1000F552C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v6 = type metadata accessor for SFAirDropReceive.Transfer.State();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v11 = v20;
  [v20 fractionCompleted];
  v13 = v12;

  *(a1 + OBJC_IVAR____TtC9AirDropUI29AirDropSystemApertureIconView_progress) = v13;
  sub_1000F3614();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v14 = OBJC_IVAR____TtC9AirDropUI29AirDropSystemApertureIconView_transferState;
  swift_beginAccess();
  (*(v7 + 24))(a1 + v14, v10, v6);
  swift_endAccess();
  sub_1000F3614();
  (*(v7 + 8))(v10, v6);
  *(a1 + OBJC_IVAR____TtC9AirDropUI25AirDropSystemApertureView_expanded) = 1;
  v15 = OBJC_IVAR____TtC9AirDropUI29AirDropSystemApertureIconView_thumbnailImage;
  sub_1000F34FC(*(a1 + OBJC_IVAR____TtC9AirDropUI29AirDropSystemApertureIconView_thumbnailImage) != 0);
  sub_1000F3614();
  if (a4)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v16 = v20;
    if (v20)
    {
      v17 = *(a1 + v15);
      *(a1 + v15) = v20;
      v18 = v16;

      sub_1000F31B8();
    }
  }
}

unint64_t sub_1000F57D0()
{
  result = qword_1001786B8;
  if (!qword_1001786B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001786B8);
  }

  return result;
}

uint64_t sub_1000F5824()
{
  v0 = type metadata accessor for Logger();
  sub_1000154C0(v0, qword_1001786C0);
  v1 = sub_100007D20(v0, qword_1001786C0);
  if (qword_100172218 != -1)
  {
    swift_once();
  }

  v2 = sub_100007D20(v0, qword_10017F350);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t *sub_1000F58EC(void *a1)
{
  v3 = v1;
  v5 = *v3;
  *(v3 + 48) = 0;
  sub_1000F9100();
  v6 = a1;
  v7 = sub_1000F917C(v6);
  v8 = v2;
  if (v2)
  {

    v9 = 0;
    goto LABEL_3;
  }

  v23 = v7;

  v3[2] = v23;
  v24 = [v23 configurationDictionary];
  v25 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  sub_1000F5F84(v25);

  v26 = objc_allocWithZone(CHHapticEngine);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  aBlock = 0;
  v28 = [v26 initWithAudioSession:0 sessionIsShared:0 options:isa error:&aBlock];

  v29 = aBlock;
  if (!v28)
  {
    v47 = aBlock;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v9 = 0;
    goto LABEL_3;
  }

  v3[3] = v28;
  v30 = v3[2];
  aBlock = 0;
  v31 = v29;
  v32 = [v28 createPlayerWithPattern:v30 error:&aBlock];
  v33 = aBlock;
  if (!v32)
  {
    v48 = aBlock;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v9 = 1;
LABEL_3:
    if (qword_100172238 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_100007D20(v10, qword_1001786C0);
    v11 = v6;
    swift_errorRetain();
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      aBlock = swift_slowAlloc();
      *v14 = 136315394;
      v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v49 = v3;
      v17 = v9;
      v18 = sub_10003E81C(v15, v16, &aBlock);

      *(v14 + 4) = v18;
      *(v14 + 12) = 2080;
      swift_errorRetain();
      sub_1000077C8(&qword_100175E10, &unk_100118BB0);
      v19 = String.init<A>(reflecting:)();
      v21 = sub_10003E81C(v19, v20, &aBlock);
      v9 = v17;
      v3 = v49;

      *(v14 + 14) = v21;
      v8 = v2;
      _os_log_impl(&_mh_execute_header, v12, v13, "ShockwaveHapticsPlayer: Haptics for %s failed to initialize: %s", v14, 0x16u);
      swift_arrayDestroy();
    }

    swift_willThrow();
    if (v8)
    {
      if (!v9)
      {
LABEL_10:
        swift_deallocPartialClassInstance();
        return v3;
      }
    }

    else
    {

      if (!v9)
      {
        goto LABEL_10;
      }
    }

    goto LABEL_10;
  }

  v3[4] = v32;
  v3[5] = v6;
  v34 = v3[3];
  v35 = swift_allocObject();
  swift_weakInit();
  v55 = sub_1000F9278;
  v56 = v35;
  aBlock = _NSConcreteStackBlock;
  v52 = 1107296256;
  v53 = sub_100106B40;
  v54 = &unk_100161A98;
  v36 = _Block_copy(&aBlock);
  v50 = v6;
  v37 = v33;
  v38 = v34;

  [v38 setResetHandler:v36];
  _Block_release(v36);

  v39 = v3[3];
  v40 = swift_allocObject();
  swift_weakInit();
  v41 = v39;

  v55 = sub_1000F9298;
  v56 = v40;
  aBlock = _NSConcreteStackBlock;
  v52 = 1107296256;
  v53 = sub_1000F685C;
  v54 = &unk_100161AC0;
  v42 = _Block_copy(&aBlock);

  [v41 setStoppedHandler:v42];
  _Block_release(v42);

  [v3[3] setAutoShutdownEnabled:1];
  if (qword_100172238 != -1)
  {
    swift_once();
  }

  v43 = type metadata accessor for Logger();
  sub_100007D20(v43, qword_1001786C0);
  v44 = Logger.logObject.getter();
  v45 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    *v46 = 0;
    _os_log_impl(&_mh_execute_header, v44, v45, "ShockwaveHapticsPlayer: haptic engine setup successfully", v46, 2u);
  }

  return v3;
}

uint64_t sub_1000F5F84(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1000077C8(&qword_1001765E8, &qword_10011EA28);
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
  while (v5)
  {
LABEL_15:
    v13 = (v9 << 10) | (16 * __clz(__rbit64(v5)));
    v14 = (*(a1 + 48) + v13);
    v15 = v14[1];
    v16 = (*(a1 + 56) + v13);
    v18 = *v16;
    v17 = v16[1];
    *&v34[0] = *v14;
    *(&v34[0] + 1) = v15;

    swift_dynamicCast();
    swift_dynamicCast();
    v30 = v26;
    v31 = v27;
    v32 = v28;
    sub_100058DC8(&v29, v33);
    v26 = v30;
    v27 = v31;
    v28 = v32;
    sub_100058DC8(v33, v34);
    result = AnyHashable._rawHashValue(seed:)(v2[5]);
    v19 = -1 << *(v2 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*&v7[8 * (v20 >> 6)]) == 0)
    {
      v22 = 0;
      v23 = (63 - v19) >> 6;
      while (++v21 != v23 || (v22 & 1) == 0)
      {
        v24 = v21 == v23;
        if (v21 == v23)
        {
          v21 = 0;
        }

        v22 |= v24;
        v25 = *&v7[8 * v21];
        if (v25 != -1)
        {
          v10 = __clz(__rbit64(~v25)) + (v21 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v20) & ~*&v7[8 * (v20 >> 6)])) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *&v7[(v10 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v10;
    v11 = v2[6] + 40 * v10;
    *v11 = v26;
    *(v11 + 16) = v27;
    *(v11 + 32) = v28;
    result = sub_100058DC8(v34, (v2[7] + 32 * v10));
    ++v2[2];
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

void sub_1000F624C()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + 24);
    v27 = 0;
    if ([v2 startAndReturnError:&v27])
    {
      v3 = qword_100172238;
      v4 = v27;
      if (v3 != -1)
      {
        swift_once();
      }

      v5 = type metadata accessor for Logger();
      sub_100007D20(v5, qword_1001786C0);

      v6 = Logger.logObject.getter();
      v7 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        v9 = swift_slowAlloc();
        v27 = v9;
        *v8 = 136315138;
        v10 = *(v1 + 40);
        type metadata accessor for CHHapticPatternLibraryKey(0);
        v11 = v10;
        v12 = String.init<A>(reflecting:)();
        v14 = sub_10003E81C(v12, v13, &v27);

        *(v8 + 4) = v14;
        _os_log_impl(&_mh_execute_header, v6, v7, "ShockwaveHapticsPlayer: restarted haptic engine %s", v8, 0xCu);
        sub_100007920(v9);
      }

      goto LABEL_16;
    }

    v19 = v27;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    *(v1 + 48) = 0;
    if (qword_100172238 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_100007D20(v20, qword_1001786C0);
    swift_errorRetain();
    v6 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v6, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v27 = v23;
      *v22 = 136315138;
      swift_errorRetain();
      sub_1000077C8(&qword_100175E10, &unk_100118BB0);
      v24 = String.init<A>(reflecting:)();
      v26 = sub_10003E81C(v24, v25, &v27);

      *(v22 + 4) = v26;
      _os_log_impl(&_mh_execute_header, v6, v21, "ShockwaveHapticsPlayer: failed restarting haptic engine: %s", v22, 0xCu);
      sub_100007920(v23);

LABEL_16:

      return;
    }
  }

  else
  {
    if (qword_100172238 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_100007D20(v15, qword_1001786C0);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "ShockwaveHapticsPlayer: self nil while resetHandler is called, exiting", v18, 2u);
    }
  }
}

void sub_1000F667C(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    *(Strong + 48) = 0;
    if (qword_100172238 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_100007D20(v3, qword_1001786C0);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 134217984;
      *(v6 + 4) = a1;
      _os_log_impl(&_mh_execute_header, v4, v5, "ShockwaveHapticsPlayer: stopped haptic engine for (%ld)", v6, 0xCu);
    }
  }

  else
  {
    if (qword_100172238 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_100007D20(v7, qword_1001786C0);
    v4 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v4, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v4, v8, "ShockwaveHapticsPlayer: self nil while stoppedHandler is called, exiting", v9, 2u);
    }
  }
}

uint64_t sub_1000F685C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

void sub_1000F68B0()
{
  v1 = v0;
  if (*(v0 + 48))
  {
    if (qword_100172238 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_100007D20(v2, qword_1001786C0);

    oslog = Logger.logObject.getter();
    v3 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(oslog, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v52 = v5;
      *v4 = 136315138;
      _StringGuts.grow(_:)(41);

      v50 = 0xD000000000000027;
      v51 = 0x8000000100125740;
      v6 = *(v0 + 40);
      v7._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
      String.append(_:)(v7);

      v8 = sub_10003E81C(0xD000000000000027, 0x8000000100125740, &v52);

      *(v4 + 4) = v8;
      _os_log_impl(&_mh_execute_header, oslog, v3, "ShockwaveHapticsPlayer: Haptics is playing, ignoring play request for %s", v4, 0xCu);
      sub_100007920(v5);
    }

    else
    {
    }
  }

  else
  {
    if (qword_100172238 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_100007D20(v9, qword_1001786C0);

    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v52 = v13;
      *v12 = 136315138;
      _StringGuts.grow(_:)(41);

      v50 = 0xD000000000000027;
      v51 = 0x8000000100125740;
      v14 = *(v0 + 40);
      v15._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
      String.append(_:)(v15);

      v16 = sub_10003E81C(0xD000000000000027, 0x8000000100125740, &v52);

      *(v12 + 4) = v16;
      _os_log_impl(&_mh_execute_header, v10, v11, "ShockwaveHapticsPlayer: Starting engine for %s", v12, 0xCu);
      sub_100007920(v13);
    }

    v17 = *(v0 + 24);
    v50 = 0;
    v18 = [v17 startAndReturnError:&v50];
    v19 = v50;
    if (!v18)
    {
      goto LABEL_17;
    }

    v20 = v19;
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v52 = v24;
      *v23 = 136315138;
      v50 = 0;
      v51 = 0xE000000000000000;
      _StringGuts.grow(_:)(41);

      v50 = 0xD000000000000027;
      v51 = 0x8000000100125740;
      v25 = *(v1 + 40);
      v26._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
      String.append(_:)(v26);

      v27 = sub_10003E81C(v50, v51, &v52);

      *(v23 + 4) = v27;
      _os_log_impl(&_mh_execute_header, v21, v22, "ShockwaveHapticsPlayer: Engine started for %s", v23, 0xCu);
      sub_100007920(v24);
    }

    v28 = *(v1 + 32);
    v50 = 0;
    v29 = [v28 startAtTime:&v50 error:0.0];
    v19 = v50;
    if (v29)
    {

      v30 = v19;
      v31 = Logger.logObject.getter();
      v32 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        v52 = v34;
        *v33 = 136315138;
        v50 = 0;
        v51 = 0xE000000000000000;
        _StringGuts.grow(_:)(41);

        v50 = 0xD000000000000027;
        v51 = 0x8000000100125740;
        v35 = *(v1 + 40);
        v36._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
        String.append(_:)(v36);

        v37 = sub_10003E81C(v50, v51, &v52);

        *(v33 + 4) = v37;
        _os_log_impl(&_mh_execute_header, v31, v32, "ShockwaveHapticsPlayer: Player started for %s", v33, 0xCu);
        sub_100007920(v34);
      }

      *(v1 + 48) = 1;
    }

    else
    {
LABEL_17:
      v38 = v19;
      v39 = _convertNSErrorToError(_:)();

      swift_willThrow();

      swift_errorRetain();
      v40 = Logger.logObject.getter();
      v41 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        *v42 = 136315394;
        v50 = 0;
        v51 = 0xE000000000000000;
        _StringGuts.grow(_:)(41);

        v50 = 0xD000000000000027;
        v51 = 0x8000000100125740;
        v43 = *(v1 + 40);
        v44._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
        String.append(_:)(v44);

        v45 = sub_10003E81C(v50, v51, &v52);

        *(v42 + 4) = v45;
        *(v42 + 12) = 2080;
        v50 = v39;
        swift_errorRetain();
        sub_1000077C8(&qword_100175E10, &unk_100118BB0);
        v46 = String.init<A>(reflecting:)();
        v48 = sub_10003E81C(v46, v47, &v52);

        *(v42 + 14) = v48;
        _os_log_impl(&_mh_execute_header, v40, v41, "ShockwaveHapticsPlayer: Failed to start haptics for %s: %s", v42, 0x16u);
        swift_arrayDestroy();
      }

      else
      {
      }
    }
  }
}

void sub_1000F70B0()
{
  v1 = v0;
  if (*(v0 + 48) == 1)
  {
    if (qword_100172238 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_100007D20(v2, qword_1001786C0);

    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      *v5 = 136315138;
      v50 = v6;
      _StringGuts.grow(_:)(41);

      v48 = 0xD000000000000027;
      v49 = 0x8000000100125740;
      v7 = *(v0 + 40);
      v8._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
      String.append(_:)(v8);

      v9 = sub_10003E81C(0xD000000000000027, 0x8000000100125740, &v50);

      *(v5 + 4) = v9;
      _os_log_impl(&_mh_execute_header, v3, v4, "ShockwaveHapticsPlayer: Stopping player for %s", v5, 0xCu);
      sub_100007920(v6);
    }

    v10 = *(v0 + 32);
    v48 = 0;
    v11 = [v10 stopAtTime:&v48 error:0.0];
    v12 = v48;
    if (v11)
    {

      v13 = v12;
      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        *v16 = 136315138;
        v48 = 0;
        v49 = 0xE000000000000000;
        v50 = v17;
        _StringGuts.grow(_:)(41);

        v48 = 0xD000000000000027;
        v49 = 0x8000000100125740;
        v18 = *(v1 + 40);
        v19._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
        String.append(_:)(v19);

        v20 = sub_10003E81C(v48, v49, &v50);

        *(v16 + 4) = v20;
        _os_log_impl(&_mh_execute_header, v14, v15, "ShockwaveHapticsPlayer: Player stopped for %s", v16, 0xCu);
        sub_100007920(v17);
      }

      [*(v1 + 24) stopWithCompletionHandler:0];

      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        *v23 = 136315138;
        v48 = 0;
        v49 = 0xE000000000000000;
        v50 = v24;
        _StringGuts.grow(_:)(41);

        v48 = 0xD000000000000027;
        v49 = 0x8000000100125740;
        v25 = *(v1 + 40);
        v26._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
        String.append(_:)(v26);

        v27 = sub_10003E81C(v48, v49, &v50);

        *(v23 + 4) = v27;
        _os_log_impl(&_mh_execute_header, v21, v22, "ShockwaveHapticsPlayer: Engine stopped for %s", v23, 0xCu);
        sub_100007920(v24);
      }

      *(v1 + 48) = 0;
    }

    else
    {
      v35 = v48;
      v36 = _convertNSErrorToError(_:)();

      swift_willThrow();
      *(v1 + 48) = 0;

      swift_errorRetain();
      v37 = Logger.logObject.getter();
      v38 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        *v39 = 136315394;
        v48 = 0;
        v49 = 0xE000000000000000;
        v50 = v40;
        _StringGuts.grow(_:)(41);

        v48 = 0xD000000000000027;
        v49 = 0x8000000100125740;
        v41 = *(v1 + 40);
        v42._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
        String.append(_:)(v42);

        v43 = sub_10003E81C(v48, v49, &v50);

        *(v39 + 4) = v43;
        *(v39 + 12) = 2080;
        v48 = v36;
        swift_errorRetain();
        sub_1000077C8(&qword_100175E10, &unk_100118BB0);
        v44 = String.init<A>(reflecting:)();
        v46 = sub_10003E81C(v44, v45, &v50);

        *(v39 + 14) = v46;
        _os_log_impl(&_mh_execute_header, v37, v38, "ShockwaveHapticsPlayer: Failed to stop haptics for %s: %s", v39, 0x16u);
        swift_arrayDestroy();
      }

      else
      {
      }
    }
  }

  else
  {
    if (qword_100172238 != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    sub_100007D20(v28, qword_1001786C0);

    oslog = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(oslog, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      *v30 = 136315138;
      v50 = v31;
      _StringGuts.grow(_:)(41);

      v48 = 0xD000000000000027;
      v49 = 0x8000000100125740;
      v32 = *(v0 + 40);
      v33._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
      String.append(_:)(v33);

      v34 = sub_10003E81C(0xD000000000000027, 0x8000000100125740, &v50);

      *(v30 + 4) = v34;
      _os_log_impl(&_mh_execute_header, oslog, v29, "ShockwaveHapticsPlayer: Haptics not playing, ignoring stop request for %s", v30, 0xCu);
      sub_100007920(v31);
    }

    else
    {
    }
  }
}

uint64_t sub_1000F78A8()
{
  v1 = *(v0 + 32);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

void *sub_1000F78F8()
{
  type metadata accessor for ShockwaveHapticsPlayer();
  v0 = swift_allocObject();
  result = sub_1000F7934();
  qword_10017F388 = v0;
  return result;
}

void *sub_1000F7934()
{
  v1 = v0;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  v2 = (v0 + 16);
  v3 = [objc_msgSend(objc_opt_self() "capabilitiesForHardware")];
  swift_unknownObjectRelease();
  *(v0 + 48) = v3;
  if (v3)
  {
    v4 = String._bridgeToObjectiveC()();
    type metadata accessor for ShockwaveHapticsPlayer.Haptic();
    v5 = swift_allocObject();
    sub_1000F58EC(v4);
    v6 = *v2;
    *v2 = v5;

    v7 = String._bridgeToObjectiveC()();
    v8 = swift_allocObject();
    sub_1000F58EC(v7);
    v9 = v1[3];
    v1[3] = v8;

    v10 = String._bridgeToObjectiveC()();
    v11 = swift_allocObject();
    sub_1000F58EC(v10);
    v12 = v1[4];
    v1[4] = v11;

    v13 = String._bridgeToObjectiveC()();
    v14 = swift_allocObject();
    sub_1000F58EC(v13);
    v15 = v1[5];
    v1[5] = v14;
  }

  return v1;
}

void sub_1000F7B34()
{
  v1 = v0[3];
  if (v1 && (*(v1 + 48) & 1) != 0)
  {
    if (qword_100172238 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_100007D20(v2, qword_1001786C0);
    oslog = Logger.logObject.getter();
    v3 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v3, "Skipped playing primaryHintingHaptic, secondaryHintingHaptic is currently playing", v4, 2u);
    }
  }

  else
  {
    if (v0[4])
    {
      v5 = v0[4];

      sub_1000F70B0();
    }

    if (v0[2])
    {
      v6 = v0[2];

      sub_1000F68B0();
    }
  }
}

void sub_1000F7C94()
{
  v1 = v0[5];
  if (v1 && (*(v1 + 48) & 1) != 0)
  {
    if (qword_100172238 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_100007D20(v2, qword_1001786C0);
    oslog = Logger.logObject.getter();
    v3 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v3, "Skipped playing primaryConnectedHaptic, secondaryConnectedHaptic is currently playing", v4, 2u);
    }
  }

  else
  {
    if (v0[2])
    {
      v5 = v0[2];

      sub_1000F70B0();
    }

    if (v0[4])
    {
      v6 = v0[4];

      sub_1000F68B0();
    }
  }
}

void sub_1000F7DF4()
{
  v1 = v0[2];
  if (v1 && (*(v1 + 48) & 1) != 0)
  {
    if (qword_100172238 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_100007D20(v2, qword_1001786C0);
    oslog = Logger.logObject.getter();
    v3 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v3, "Skipped playing secondaryHintingHaptic, primaryHintingHaptic is currently playing", v4, 2u);
    }
  }

  else
  {
    if (v0[5])
    {
      v5 = v0[5];

      sub_1000F70B0();
    }

    if (v0[3])
    {
      v6 = v0[3];

      sub_1000F68B0();
    }
  }
}

void sub_1000F7F54()
{
  v1 = v0[4];
  if (v1 && (*(v1 + 48) & 1) != 0)
  {
    if (qword_100172238 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_100007D20(v2, qword_1001786C0);
    oslog = Logger.logObject.getter();
    v3 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v3, "Skipped playing secondaryConnectedHaptic, primaryConnectedHaptic is currently playing", v4, 2u);
    }
  }

  else
  {
    if (v0[3])
    {
      v5 = v0[3];

      sub_1000F70B0();
    }

    if (v0[5])
    {
      v6 = v0[5];

      sub_1000F68B0();
    }
  }
}

uint64_t sub_1000F80B4()
{
  v1 = v0;
  v2 = sub_1000077C8(&qword_100172F50, &qword_10011E500);
  v3 = *(*(v2 - 8) + 64);
  result = __chkstk_darwin(v2 - 8);
  v6 = &v15 - v5;
  v7 = v1[2];
  if (v7 && *(v7 + 48) == 1)
  {
    v8 = type metadata accessor for TaskPriority();
    (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
    v9 = swift_allocObject();
    v9[2] = 0;
    v9[3] = 0;
    v9[4] = v1;

    sub_1000F9860(0, 0, v6, &unk_100121A10, v9);
  }

  v10 = v1[3];
  if (v10 && *(v10 + 48) == 1)
  {
    v11 = type metadata accessor for TaskPriority();
    (*(*(v11 - 8) + 56))(v6, 1, 1, v11);
    v12 = swift_allocObject();
    v12[2] = 0;
    v12[3] = 0;
    v12[4] = v1;

    sub_1000F9860(0, 0, v6, &unk_100121A00, v12);
  }

  if (v1[4])
  {
    v13 = v1[4];

    sub_1000F70B0();
  }

  if (v1[5])
  {
    v14 = v1[5];

    sub_1000F70B0();
  }

  return result;
}

uint64_t sub_1000F82B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = type metadata accessor for ContinuousClock();
  v4[3] = v5;
  v6 = *(v5 - 8);
  v4[4] = v6;
  v7 = *(v6 + 64) + 15;
  v4[5] = swift_task_alloc();

  return _swift_task_switch(sub_1000F8374, 0, 0);
}

uint64_t sub_1000F8374()
{
  v1 = *(v0 + 40);
  static Clock<>.continuous.getter();
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *v2 = v0;
  v2[1] = sub_1000F8440;
  v3 = *(v0 + 40);

  return sub_1000F8C00(2000000000000000000, 0, 0, 0, 1);
}

uint64_t sub_1000F8440()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v4 = *v1;

  v5 = v2[5];
  v6 = v2[4];
  v7 = v2[3];
  if (v0)
  {

    (*(v6 + 8))(v5, v7);
    v8 = sub_1000F92A8;
  }

  else
  {
    (*(v6 + 8))(v5, v7);
    v8 = sub_1000F85D8;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_1000F85D8()
{
  v1 = v0[2];
  if (*(v1 + 16))
  {
    v2 = *(v1 + 16);

    sub_1000F70B0();
  }

  v3 = v0[5];

  v4 = v0[1];

  return v4();
}

uint64_t sub_1000F8658(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = type metadata accessor for ContinuousClock();
  v4[3] = v5;
  v6 = *(v5 - 8);
  v4[4] = v6;
  v7 = *(v6 + 64) + 15;
  v4[5] = swift_task_alloc();

  return _swift_task_switch(sub_1000F8718, 0, 0);
}

uint64_t sub_1000F8718()
{
  v1 = *(v0 + 40);
  static Clock<>.continuous.getter();
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *v2 = v0;
  v2[1] = sub_1000F87E4;
  v3 = *(v0 + 40);

  return sub_1000F8C00(2000000000000000000, 0, 0, 0, 1);
}

uint64_t sub_1000F87E4()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v4 = *v1;

  v5 = v2[5];
  v6 = v2[4];
  v7 = v2[3];
  if (v0)
  {

    (*(v6 + 8))(v5, v7);
    v8 = sub_1000F92AC;
  }

  else
  {
    (*(v6 + 8))(v5, v7);
    v8 = sub_1000F897C;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_1000F897C()
{
  v1 = v0[2];
  if (*(v1 + 24))
  {
    v2 = *(v1 + 24);

    sub_1000F70B0();
  }

  v3 = v0[5];

  v4 = v0[1];

  return v4();
}

uint64_t sub_1000F89FC()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  return swift_deallocClassInstance();
}

uint64_t sub_1000F8A98(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000BCF0;

  return sub_1000F8658(a1, v4, v5, v6);
}

uint64_t sub_1000F8B4C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1000167E4;

  return sub_1000F82B4(a1, v4, v5, v6);
}

uint64_t sub_1000F8C00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = type metadata accessor for ContinuousClock.Instant();
  *(v6 + 64) = v12;
  v13 = *(v12 - 8);
  *(v6 + 72) = v13;
  v14 = *(v13 + 64) + 15;
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return _swift_task_switch(sub_1000F8D00, 0, 0);
}

uint64_t sub_1000F8D00()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[8];
  v4 = v0[9];
  v5 = v0[7];
  v6 = type metadata accessor for ContinuousClock();
  v7 = sub_1000F90B8(&qword_1001770E8, &type metadata accessor for ContinuousClock);
  dispatch thunk of Clock.now.getter();
  sub_1000F90B8(&unk_1001788E0, &type metadata accessor for ContinuousClock.Instant);
  dispatch thunk of InstantProtocol.advanced(by:)();
  v8 = *(v4 + 8);
  v0[12] = v8;
  v0[13] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v1, v3);
  v9 = async function pointer to dispatch thunk of Clock.sleep(until:tolerance:)[1];
  v10 = swift_task_alloc();
  v0[14] = v10;
  *v10 = v0;
  v10[1] = sub_1000F8E90;
  v11 = v0[11];
  v12 = v0[7];

  return dispatch thunk of Clock.sleep(until:tolerance:)(v11, v0 + 2, v6, v7);
}

uint64_t sub_1000F8E90()
{
  v2 = *(*v1 + 112);
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 96);
  v5 = *(*v1 + 88);
  v6 = *(*v1 + 64);
  v7 = *v1;
  v7[15] = v0;

  v4(v5, v6);
  if (v0)
  {

    return _swift_task_switch(sub_1000F904C, 0, 0);
  }

  else
  {
    v9 = v7[10];
    v8 = v7[11];

    v10 = v7[1];

    return v10();
  }
}

uint64_t sub_1000F904C()
{
  v2 = v0[10];
  v1 = v0[11];

  v3 = v0[1];
  v4 = v0[15];

  return v3();
}

uint64_t sub_1000F90B8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1000F9100()
{
  result = qword_1001788F0;
  if (!qword_1001788F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1001788F0);
  }

  return result;
}

uint64_t sub_1000F914C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

id sub_1000F917C(uint64_t a1)
{
  v5 = 0;
  v1 = [swift_getObjCClassFromMetadata() patternForKey:a1 error:&v5];
  if (v1)
  {
    v2 = v5;
  }

  else
  {
    v3 = v5;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v1;
}

uint64_t sub_1000F9240()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000F9280(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000F92B4(uint64_t a1)
{
  v2 = -1 << *(a1 + 32);
  v3 = _HashTable.startBucket.getter();
  if (v3 == 1 << *(a1 + 32))
  {
    return 0;
  }

  sub_1000FE844(v3, *(a1 + 36), 0, a1);
}

uint64_t sub_1000F931C@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for LayoutSubviews();
  sub_100103DB0(&qword_100178AF8, &type metadata accessor for LayoutSubviews);
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

uint64_t sub_1000F94B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1000077C8(&qword_1001763D0, &qword_100121C60);
  v15 = *(v4 - 8);
  v5 = *(v15 + 64);
  __chkstk_darwin(v4);
  v7 = &v14 - v6;
  v8 = -1 << *(a1 + 32);
  v9 = _HashTable.startBucket.getter();
  if (v9 == 1 << *(a1 + 32))
  {
    v10 = *(v15 + 56);

    return v10(a2, 1, 1, v4);
  }

  else
  {
    v12 = sub_1000FE550(v7, v9, *(a1 + 36), 0, a1);
    v13 = type metadata accessor for UUID();
    (*(*(v13 - 8) + 32))(a2, v7, v13);
    *(a2 + *(v4 + 48)) = v12;
    return (*(v15 + 56))(a2, 0, 1, v4);
  }
}

uint64_t sub_1000F965C(uint64_t a1)
{
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = __CocoaSet.startIndex.getter();
    v5 = v4;
    v6 = __CocoaSet.endIndex.getter();
    v8 = v7;
    v9 = static __CocoaSet.Index.== infix(_:_:)();
    sub_100047AC0(v6, v8, 1);
    if (v9)
    {
LABEL_3:
      sub_100047AC0(v3, v5, v2 != 0);
      return 0;
    }
  }

  else
  {
    v11 = -1 << *(a1 + 32);
    v3 = _HashTable.startBucket.getter();
    v5 = *(a1 + 36);
    if (v3 == 1 << *(a1 + 32))
    {
      goto LABEL_3;
    }
  }

  sub_1000FE620(v3, v5, v2 != 0, a1);
  v13 = v12;
  sub_100047AC0(v3, v5, v2 != 0);
  return v13;
}

uint64_t sub_1000F9778(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10000BCF0;

  return v6();
}

uint64_t sub_1000F9860(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1000077C8(&qword_100172F50, &qword_10011E500);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v27 - v11;
  sub_100007BA4(a3, v27 - v11, &qword_100172F50, &qword_10011E500);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_1000159AC(v12, &qword_100172F50, &qword_10011E500);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = dispatch thunk of Actor.unownedExecutor.getter();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = String.utf8CString.getter() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_1000159AC(a3, &qword_100172F50, &qword_10011E500);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1000159AC(a3, &qword_100172F50, &qword_10011E500);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_1000F9B60()
{
  v0 = type metadata accessor for Logger();
  sub_1000154C0(v0, qword_1001788F8);
  v1 = sub_100007D20(v0, qword_1001788F8);
  if (qword_100172208 != -1)
  {
    swift_once();
  }

  v2 = sub_100007D20(v0, qword_10017F320);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

double sub_1000F9C28()
{
  type metadata accessor for AirDropUIBannerManager();
  v0 = swift_allocObject();
  result = 0.0;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  qword_10017F390 = v0;
  return result;
}

uint64_t sub_1000F9C60()
{
  if (qword_100172150 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v4)
  {
    v2 = *(v0 + 32);
    v3 = *(v4 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_activity);
    *(v4 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_activity) = v2;
  }

  return result;
}

uint64_t sub_1000F9F88()
{
  v1 = v0;
  v178 = type metadata accessor for SFAirDropReceive.Transfer.State();
  v173 = *(v178 - 8);
  v2 = *(v173 + 64);
  __chkstk_darwin(v178);
  v4 = &v147 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000077C8(&qword_100172FD0, &qword_10011A210);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v182 = &v147 - v7;
  v181 = type metadata accessor for SFAirDropSend.Transfer.State();
  isa = v181[-1].isa;
  v8 = *(isa + 8);
  v9 = __chkstk_darwin(v181);
  v11 = &v147 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v177 = &v147 - v12;
  v13 = sub_1000077C8(&qword_100172F50, &qword_10011E500);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v148 = &v147 - v15;
  v150 = type metadata accessor for UUID();
  v149 = *(v150 - 8);
  v16 = *(v149 + 64);
  __chkstk_darwin(v150);
  v152 = &v147 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v158 = type metadata accessor for Date();
  v156 = *(v158 - 8);
  v18 = *(v156 + 64);
  __chkstk_darwin(v158);
  v157 = &v147 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v163 = type metadata accessor for SFAirDrop.NearbySharingInteraction.ConnectionContext.InteractionType();
  v169 = *(v163 - 8);
  v20 = v169[8];
  v21 = __chkstk_darwin(v163);
  v153 = &v147 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v21);
  v155 = &v147 - v24;
  v25 = __chkstk_darwin(v23);
  v154 = &v147 - v26;
  __chkstk_darwin(v25);
  v162 = &v147 - v27;
  v161 = type metadata accessor for SFAirDrop.NearbySharingInteraction.State();
  v160 = *(v161 - 8);
  v28 = *(v160 + 64);
  __chkstk_darwin(v161);
  v159 = (&v147 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  v30 = type metadata accessor for SFAirDrop.NearbySharingInteraction.ConnectionContext();
  v164 = *(v30 - 8);
  v31 = *(v164 + 8);
  __chkstk_darwin(v30);
  v166 = &v147 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_1000077C8(&unk_100176550, &qword_10011E720);
  v34 = *(*(v33 - 8) + 64);
  __chkstk_darwin(v33 - 8);
  v36 = &v147 - v35;
  v175 = type metadata accessor for SFAirDrop.NearbySharingInteraction();
  v179 = *(v175 - 1);
  v37 = *(v179 + 8);
  v38 = __chkstk_darwin(v175);
  v151 = &v147 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v38);
  v168 = &v147 - v40;
  if (qword_100172150 != -1)
  {
LABEL_81:
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v41 = v185;
  v42 = sub_100100314(v185);
  v170 = v43;
  if (qword_100172248 != -1)
  {
    swift_once();
  }

  v44 = type metadata accessor for Logger();
  v45 = sub_100007D20(v44, qword_1001788F8);

  v174 = v45;
  v46 = Logger.logObject.getter();
  v47 = static os_log_type_t.default.getter();

  v48 = os_log_type_enabled(v46, v47);
  v180 = v11;
  if (v48)
  {
    v165 = v30;
    v176 = v1;
    v49 = swift_slowAlloc();
    v185 = swift_slowAlloc();
    *v49 = 136315394;
    if (v42)
    {
      v50 = v42;
      v51 = v42 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_transferIdentifier;
      v53 = *(v42 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_transferIdentifier);
      v52 = *(v51 + 8);
    }

    else
    {
      v50 = 0;
      v52 = 0xE300000000000000;
      v53 = 7104878;
    }

    v58 = sub_10003E81C(v53, v52, &v185);

    *(v49 + 4) = v58;
    *(v49 + 12) = 2080;
    type metadata accessor for AirDropTransferSession();
    v59 = Dictionary.Values.description.getter();
    v61 = sub_10003E81C(v59, v60, &v185);

    *(v49 + 14) = v61;
    _os_log_impl(&_mh_execute_header, v46, v47, "Banner session chosen is %s from sessions %s", v49, 0x16u);
    swift_arrayDestroy();

    v1 = v176;
    v42 = v50;
    v30 = v165;
    if (!v50)
    {
      goto LABEL_14;
    }
  }

  else
  {

    if (!v42)
    {
LABEL_14:
      v147 = v42;
      v176 = v1;
      v185 = &_swiftEmptyArrayStorage;
      v30 = v41 + 64;
      v62 = 1 << *(v41 + 32);
      v63 = -1;
      if (v62 < 64)
      {
        v63 = ~(-1 << v62);
      }

      v64 = v63 & *(v41 + 64);
      v164 = v4 + 8;
      v1 = (v62 + 63) >> 6;
      v179 = isa + 48;
      v174 = (isa + 88);
      v175 = (isa + 32);
      v170 = enum case for SFAirDropSend.Transfer.State.analyzingFullContent(_:);
      LODWORD(v166) = enum case for SFAirDropSend.Transfer.State.waitingForSensitiveContentResponse(_:);
      LODWORD(v163) = enum case for SFAirDropSend.Transfer.State.created(_:);
      LODWORD(v161) = enum case for SFAirDropSend.Transfer.State.waitingForAskResponse(_:);
      v159 = (isa + 8);
      v168 = isa + 96;
      isa = (v173 + 88);
      LODWORD(v169) = enum case for SFAirDropReceive.Transfer.State.waitingForOpenResponse(_:);
      LODWORD(v165) = enum case for SFAirDropReceive.Transfer.State.completedSuccessfully(_:);
      LODWORD(v162) = enum case for SFAirDropReceive.Transfer.State.created(_:);
      LODWORD(v160) = enum case for SFAirDropReceive.Transfer.State.autoAccepted(_:);
      v157 = (v173 + 8);
      v173 += 96;
      LODWORD(v158) = enum case for SFAirDropReceive.Transfer.State.analyizingPreview(_:);

      v11 = 0;
      v171 = v41;
      v167 = v4;
      while (1)
      {
        while (1)
        {
          if (!v64)
          {
            while (1)
            {
              v65 = v11 + 1;
              if (__OFADD__(v11, 1))
              {
                __break(1u);
                goto LABEL_81;
              }

              if (v65 >= v1)
              {
                break;
              }

              v64 = *(v30 + 8 * v65);
              ++v11;
              if (v64)
              {
                v11 = v65;
                goto LABEL_22;
              }
            }

            if (v185 < 0 || (v185 & 0x4000000000000000) != 0)
            {
              v94 = _CocoaArrayWrapper.endIndex.getter();
            }

            else
            {
              v94 = *(v185 + 16);
            }

            v42 = v147;

            if (v94)
            {
              sub_1000FBDAC();
            }

            else
            {
              sub_1000FBF64();
            }

LABEL_58:

            return v42;
          }

LABEL_22:
          v66 = __clz(__rbit64(v64));
          v64 &= v64 - 1;
          v36 = *(*(v41 + 56) + ((v11 << 9) | (8 * v66)));
          swift_getKeyPath();
          swift_getKeyPath();

          v67 = v182;
          static Published.subscript.getter();

          v68 = v181;
          if ((*v179)(v67, 1, v181) != 1)
          {
            break;
          }

          sub_1000159AC(v67, &qword_100172FD0, &qword_10011A210);
          swift_getKeyPath();
          swift_getKeyPath();
          static Published.subscript.getter();

          v69 = v178;
          v70 = (*isa)(v4, v178);
          if (v70 == v169)
          {

            (*v173)(v4, v69);
            v71 = sub_1000077C8(&qword_100173078, &unk_100118F60);
            v72 = *&v4[v71[12]];

            v73 = *&v4[v71[16]];

            v74 = v71[20];
            v75 = sub_1000077C8(&unk_100173CB0, &unk_10011AE50);
            (*(*(v75 - 8) + 8))(&v4[v74], v75);
            v76 = type metadata accessor for SFAirDropReceive.ItemDestination();
            goto LABEL_29;
          }

          if (v70 == v165)
          {

            (*v173)(v4, v69);
            v85 = sub_1000077C8(&qword_100174FC0, &unk_10011C5F0);
            v86 = v85[12];
            v87 = *&v164[v85[16]];

            v88 = *&v4[v85[20]];

            v89 = *&v4[v85[24]];

            v90 = *&v4[v85[28]];

            v91 = type metadata accessor for SFAirDropReceive.ItemDestination();
            (*(*(v91 - 8) + 8))(&v4[v86], v91);
            v76 = type metadata accessor for SFAirDropReceive.Transfer.Metrics();
LABEL_29:
            (*(*(v76 - 8) + 8))(v4, v76);
          }

          else
          {
            if (v70 != v162 && v70 != v160 && v70 != v158)
            {
              (*v157)(v4, v69);
              goto LABEL_42;
            }

LABEL_40:
          }
        }

        v77 = v67;
        v78 = *v175;
        v79 = v177;
        (*v175)(v177, v77, v68);
        v80 = v180;
        v78(v180, v79, v68);
        v81 = (*v174)(v80, v68);
        if (v81 == v170)
        {
          break;
        }

        if (v81 == v166)
        {

          v80 = v180;
          (*v168)(v180, v68);
          v92 = *v80;

          v83 = *(sub_1000077C8(&qword_100174128, &unk_10011C530) + 48);
          v84 = sub_1000077C8(&unk_100174F90, &unk_10011AE70);
LABEL_32:
          (*(*(v84 - 8) + 8))(&v80[v83], v84);
          v4 = v167;
          v41 = v171;
        }

        else
        {
          v4 = v167;
          if (v81 == v163)
          {

            v41 = v171;
          }

          else
          {
            v41 = v171;
            if (v81 == v161)
            {
              goto LABEL_40;
            }

            (*v159)(v180, v68);
LABEL_42:
            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            v93 = *(v185 + 16);
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            specialized ContiguousArray._endMutation()();
          }
        }
      }

      (*v168)(v80, v68);
      v82 = *v80;

      v83 = *(sub_1000077C8(&qword_100174130, &qword_10011C540) + 64);
      v84 = type metadata accessor for SFAirDrop.DeclineAction();
      goto LABEL_32;
    }
  }

  if (*(v1 + 24))
  {
    v54 = *(v1 + 16);
    if (!v54)
    {
      (*(v179 + 7))(v36, 1, 1, v175);
      goto LABEL_49;
    }

    v55 = v54;
    sub_100097458(v36);

    v56 = v179;
    v57 = v175;
    if ((*(v179 + 6))(v36, 1, v175) == 1)
    {

LABEL_49:
      sub_1000159AC(v36, &unk_100176550, &qword_10011E720);
      goto LABEL_50;
    }

    v96 = v168;
    (*(v56 + 4))(v168, v36, v57);
    v97 = v159;
    SFAirDrop.NearbySharingInteraction.state.getter();
    v98 = v160;
    v99 = v161;
    if ((*(v160 + 88))(v97, v161) != enum case for SFAirDrop.NearbySharingInteraction.State.connected(_:))
    {
      (*(v56 + 1))(v96, v57);

      (*(v98 + 8))(v97, v99);
      goto LABEL_50;
    }

    (*(v98 + 96))(v97, v99);
    v100 = *(v164 + 4);
    v165 = v30;
    v100(v166, v97, v30);
    SFAirDrop.NearbySharingInteraction.ConnectionContext.type.getter();
    v101 = v169[13];
    v102 = v154;
    (v101)(v154, enum case for SFAirDrop.NearbySharingInteraction.ConnectionContext.InteractionType.airDrop(_:), v163);
    v103 = sub_100103DB0(&unk_100173E70, &type metadata accessor for SFAirDrop.NearbySharingInteraction.ConnectionContext.InteractionType);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    v181 = v103;
    v182 = v101;
    if (v185 == v183 && v186 == v184)
    {
      v104 = 1;
    }

    else
    {
      v104 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    v106 = v169 + 1;
    v107 = v169[1];
    v108 = v102;
    v109 = v163;
    v107(v108, v163);
    v169 = v106;
    v107(v162, v109);

    if ((v104 & 1) == 0)
    {
      SFAirDrop.NearbySharingInteraction.ConnectionContext.type.getter();
      v110 = v153;
      (v182)(v153, enum case for SFAirDrop.NearbySharingInteraction.ConnectionContext.InteractionType.share(_:), v109);
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      if (v185 == v183 && v186 == v184)
      {
        v107(v110, v109);
        v107(v155, v109);
      }

      else
      {
        v111 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v107(v110, v109);
        v107(v155, v109);

        if ((v111 & 1) == 0)
        {

          (*(v164 + 1))(v166, v165);
          (*(v179 + 1))(v168, v175);
          goto LABEL_50;
        }
      }
    }

    v171 = v41;
    v112 = OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_startTime;
    v113 = v157;
    v114 = v168;
    SFAirDrop.NearbySharingInteraction.creationDate.getter();
    v115 = static Date.> infix(_:_:)();
    v116 = *(v156 + 8);
    v116(v113, v158);
    if ((v115 & 1) == 0)
    {

      (*(v164 + 1))(v166, v165);
      (*(v179 + 1))(v114, v175);
      goto LABEL_50;
    }

    v117 = v151;
    v118 = v175;
    (*(v179 + 2))(v151, v114, v175);

    v119 = Logger.logObject.getter();
    v120 = static os_log_type_t.default.getter();

    LODWORD(v182) = v120;
    v121 = os_log_type_enabled(v119, v120);
    v147 = v42;
    if (v121)
    {
      v122 = swift_slowAlloc();
      v180 = swift_slowAlloc();
      v185 = v180;
      *v122 = 136315394;
      v123 = v157;
      v124 = v117;
      v125 = v158;
      (*(v156 + 16))(v157, v42 + v112, v158);
      sub_100103DB0(&qword_100178AE8, &type metadata accessor for Date);
      v181 = v119;
      v126 = dispatch thunk of CustomStringConvertible.description.getter();
      v128 = v127;
      v116(v123, v125);
      v129 = sub_10003E81C(v126, v128, &v185);

      *(v122 + 4) = v129;
      *(v122 + 12) = 2080;
      SFAirDrop.NearbySharingInteraction.creationDate.getter();
      v130 = dispatch thunk of CustomStringConvertible.description.getter();
      v132 = v131;
      v116(v123, v125);
      v133 = *(v179 + 1);
      v133(v124, v175);
      v134 = sub_10003E81C(v130, v132, &v185);

      *(v122 + 14) = v134;
      v135 = v181;
      _os_log_impl(&_mh_execute_header, v181, v182, "Ending Boop due to AirDrop - transfer.startDate:%s > nearbySharingInteraction.creationDate:%s.", v122, 0x16u);
      swift_arrayDestroy();

      v114 = v168;
    }

    else
    {

      v133 = *(v179 + 1);
      v133(v117, v118);
    }

    v136 = v152;
    v137 = *(v1 + 16);
    if (v137)
    {
      v138 = v137;
      SFAirDrop.NearbySharingInteraction.id.getter();
      v139 = sub_10009E13C(v136);
      v42 = v147;
      if (v139)
      {
        v140 = v139;
        v141 = type metadata accessor for TaskPriority();
        v142 = v148;
        (*(*(v141 - 8) + 56))(v148, 1, 1, v141);
        type metadata accessor for MainActor();
        v143 = v140;
        v144 = static MainActor.shared.getter();
        v145 = swift_allocObject();
        v145[2] = v144;
        v145[3] = &protocol witness table for MainActor;
        v145[4] = v143;
        sub_1000F9860(0, 0, v142, &unk_100121BE0, v145);

        (*(v149 + 8))(v136, v150);
        (*(v164 + 1))(v166, v165);
        v146 = v168;
LABEL_79:
        v133(v146, v175);
        goto LABEL_50;
      }

      (*(v149 + 8))(v136, v150);
    }

    else
    {
      v42 = v147;
    }

    (*(v164 + 1))(v166, v165);
    v146 = v114;
    goto LABEL_79;
  }

LABEL_50:

  sub_1000FBA44(v95);
  if ((v170 & 1) == 0)
  {
    sub_1001032D4();

    goto LABEL_58;
  }

  sub_1000FBDAC();

  return v42;
}

uint64_t sub_1000FBA44(uint64_t a1)
{
  v3 = v2;
  v4 = v1;
  v6 = type metadata accessor for ActivityState();
  v7 = *(v6 - 8);
  v8 = v7[8];
  v9 = __chkstk_darwin(v6);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v28 - v12;
  if (*(v1 + 32))
  {
    v28 = a1;
    v29 = v1;
    v32 = v2;

    dispatch thunk of Activity.activityState.getter();
    v14 = v7[13];
    v14(v11, enum case for ActivityState.dismissed(_:), v6);
    v15 = static ActivityState.== infix(_:_:)();
    v16 = v7[1];
    v16(v11, v6);
    v16(v13, v6);
    if (v15)
    {

      v3 = v32;
      a1 = v28;
      v4 = v29;
    }

    else
    {
      dispatch thunk of Activity.activityState.getter();
      v14(v11, enum case for ActivityState.ended(_:), v6);
      v17 = static ActivityState.== infix(_:_:)();

      v16(v11, v6);
      result = (v16)(v13, v6);
      v3 = v32;
      a1 = v28;
      v4 = v29;
      if ((v17 & 1) == 0)
      {
        return result;
      }
    }
  }

  if (qword_100172248 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  sub_100007D20(v19, qword_1001788F8);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&_mh_execute_header, v20, v21, "Requesting AirDrop activity", v22, 2u);
  }

  v23 = *(a1 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_transferIdentifier + 8);
  v30 = *(a1 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_transferIdentifier);
  v31 = v23;

  v24._countAndFlagsBits = 45;
  v24._object = 0xE100000000000000;
  String.append(_:)(v24);
  v25._countAndFlagsBits = 0x732D72656E6E6162;
  v25._object = 0xEE006E6F69737365;
  String.append(_:)(v25);
  v26 = sub_10007B6A8(v30, v31);

  if (!v3)
  {
    v27 = *(v4 + 32);
    *(v4 + 32) = v26;

    sub_1000F9C60();
  }

  return result;
}

void sub_1000FBDAC()
{
  if (*(v0 + 32))
  {
    v1 = qword_100172248;

    if (v1 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_100007D20(v2, qword_1001788F8);

    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v12 = v6;
      *v5 = 136315138;
      v7 = Activity.id.getter();
      v9 = sub_10003E81C(v7, v8, &v12);

      *(v5 + 4) = v9;
      _os_log_impl(&_mh_execute_header, v3, v4, "Releasing AirDrop banner for activity %s", v5, 0xCu);
      sub_100007920(v6);
    }

    v10 = Activity.id.getter();
    sub_1000FD57C(v10, v11);
  }
}

uint64_t sub_1000FBF64()
{
  v1 = v0;
  v2 = type metadata accessor for ActivityUIDismissalPolicy();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000077C8(&qword_100175CD0, &unk_10011D8C0);
  v8 = *(*(v7 - 8) + 64);
  result = __chkstk_darwin(v7 - 8);
  v11 = &v28 - v10;
  if (*(v0 + 32))
  {
    v12 = qword_100172248;

    if (v12 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_100007D20(v13, qword_1001788F8);

    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v30 = v11;
      v17 = v16;
      v29 = swift_slowAlloc();
      v31 = v29;
      *v17 = 136315138;
      v18 = Activity.id.getter();
      v20 = v3;
      v21 = v1;
      v22 = v2;
      v23 = sub_10003E81C(v18, v19, &v31);

      *(v17 + 4) = v23;
      v2 = v22;
      v1 = v21;
      v3 = v20;
      _os_log_impl(&_mh_execute_header, v14, v15, "Releasing AirDrop banner and ending activity %s", v17, 0xCu);
      sub_100007920(v29);

      v11 = v30;
    }

    v24 = sub_1000077C8(&qword_100175CD8, &qword_10011D8D0);
    (*(*(v24 - 8) + 56))(v11, 1, 1, v24);
    static ActivityUIDismissalPolicy.immediate.getter();
    dispatch thunk of Activity.endSync(_:dismissalPolicy:)();
    (*(v3 + 8))(v6, v2);
    sub_1000159AC(v11, &qword_100175CD0, &unk_10011D8C0);
    v25 = Activity.id.getter();
    sub_1000FD57C(v25, v26);

    v27 = *(v1 + 32);
    *(v1 + 32) = 0;

    sub_1000F9C60();
  }

  return result;
}

uint64_t sub_1000FC284(uint64_t a1)
{
  v2 = v1;
  if (*(v1 + 32))
  {
    v4 = qword_100172248;
    v5 = *(v1 + 32);

    if (v4 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_100007D20(v6, qword_1001788F8);

    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *v9 = 136315394;
      v10 = Activity.id.getter();
      v12 = sub_10003E81C(v10, v11, &v20);

      *(v9 + 4) = v12;
      *(v9 + 12) = 2080;
      v13 = Activity.id.getter();
      v15 = sub_10003E81C(v13, v14, &v20);

      *(v9 + 14) = v15;
      _os_log_impl(&_mh_execute_header, v7, v8, "Ending AirDrop banner activity %s due to Boop banner activity: %s", v9, 0x16u);
      swift_arrayDestroy();
    }

    sub_1000FBF64();
  }

  v16 = *(v2 + 24);
  *(v2 + 24) = a1;

  v17 = Activity.id.getter();
  sub_1000FC5B0(v17, v18);
}

uint64_t sub_1000FC4A4()
{
  v1 = v0;
  if (*(v0 + 24))
  {

    v2 = Activity.id.getter();
    v4 = v3;

    v5 = Activity.id.getter();
    if (v4)
    {
      if (v2 == v5 && v4 == v6)
      {
      }

      else
      {
        v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v8 & 1) == 0)
        {
          return result;
        }
      }

      v10 = *(v1 + 24);
      *(v1 + 24) = 0;

      v11 = Activity.id.getter();
      sub_1000FD57C(v11, v12);
    }
  }

  else
  {
    Activity.id.getter();
  }
}

void sub_1000FC5B0(uint64_t a1, unint64_t a2)
{
  v4 = v3;
  v5 = v2;
  v100 = a1;
  v7 = type metadata accessor for ActivityState();
  v98 = *(v7 - 8);
  v8 = *(v98 + 64);
  v9 = __chkstk_darwin(v7);
  v97 = &v89 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v96 = &v89 - v11;
  v12 = *(v2 + 40);
  if (v12)
  {
    v13 = v12;
    v14 = [v13 sessionIdentifier];
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;

    if (v15 == v100 && v17 == a2)
    {

      if (!*(v5 + 40))
      {
        goto LABEL_19;
      }

      goto LABEL_10;
    }

    v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v19)
    {

      if (!*(v5 + 40))
      {
        goto LABEL_19;
      }

LABEL_10:
      if (qword_100172248 != -1)
      {
        swift_once();
      }

      v20 = type metadata accessor for Logger();
      sub_100007D20(v20, qword_1001788F8);
      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 0;
        _os_log_impl(&_mh_execute_header, v21, v22, "Not taking assertion as it is non-nil", v23, 2u);
      }

      goto LABEL_53;
    }

    if (qword_100172248 != -1)
    {
      swift_once();
    }

    v95 = v7;
    v24 = type metadata accessor for Logger();
    sub_100007D20(v24, qword_1001788F8);
    v25 = v13;

    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v94 = swift_slowAlloc();
      aBlock[0] = v94;
      *v28 = 136315394;
      v29 = [v25 sessionIdentifier];
      v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      LODWORD(v93) = v27;
      v32 = v31;

      v33 = sub_10003E81C(v30, v32, aBlock);

      *(v28 + 4) = v33;
      v4 = v3;
      *(v28 + 12) = 2080;
      *(v28 + 14) = sub_10003E81C(v100, a2, aBlock);
      _os_log_impl(&_mh_execute_header, v26, v93, "Releasing assertion for other activity %s in favour of new assertion for activity %s", v28, 0x16u);
      swift_arrayDestroy();
    }

    v34 = [v25 sessionIdentifier];
    v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v37 = v36;

    sub_1000FD57C(v35, v37);

    v7 = v95;
    if (*(v5 + 40))
    {
      goto LABEL_10;
    }
  }

LABEL_19:
  if (*(v5 + 48))
  {
    if (qword_100172248 != -1)
    {
      swift_once();
    }

    v38 = type metadata accessor for Logger();
    sub_100007D20(v38, qword_1001788F8);
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&_mh_execute_header, v39, v40, "Not taking assertion yet since banner is still showing", v41, 2u);
    }

    *(v5 + 49) = 1;
    return;
  }

  *(v5 + 49) = 0;
  if (qword_100172248 != -1)
  {
    swift_once();
  }

  v42 = type metadata accessor for Logger();
  v43 = sub_100007D20(v42, qword_1001788F8);

  v44 = Logger.logObject.getter();
  v45 = static os_log_type_t.default.getter();

  v46 = v7;
  if (os_log_type_enabled(v44, v45))
  {
    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    aBlock[0] = v48;
    *v47 = 136315138;
    *(v47 + 4) = sub_10003E81C(v100, a2, aBlock);
    _os_log_impl(&_mh_execute_header, v44, v45, "Acquire assertion START [sessionIdentifier = %s]", v47, 0xCu);
    sub_100007920(v48);
  }

  v49 = swift_allocObject();
  swift_weakInit();
  v50 = swift_allocObject();
  v51 = v100;
  v50[2] = v49;
  v50[3] = v51;
  v50[4] = a2;
  v52 = objc_allocWithZone(SNAProminentPresentationAssertion);

  v53 = String._bridgeToObjectiveC()();
  v54 = String._bridgeToObjectiveC()();
  aBlock[4] = sub_1001034EC;
  aBlock[5] = v50;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000FE338;
  aBlock[3] = &unk_100161B60;
  v55 = _Block_copy(aBlock);

  v56 = [v52 initWithExplanation:v53 sessionIdentifier:v54 invalidationHandler:v55];
  _Block_release(v55);

  if ([v56 state] == 1)
  {
    v57 = *(v5 + 40);
    *(v5 + 40) = v56;
    v58 = v56;

    v21 = v58;
    v59 = Logger.logObject.getter();
    v60 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      aBlock[0] = v62;
      *v61 = 136315394;
      *(v61 + 4) = sub_10003E81C(v100, a2, aBlock);
      *(v61 + 12) = 2048;
      *(v61 + 14) = [v21 state];

      _os_log_impl(&_mh_execute_header, v59, v60, "Acquire assertion END [sessionIdentifier = %s, assertion state %lu]", v61, 0x16u);
      sub_100007920(v62);
    }

    else
    {
    }

LABEL_53:

    return;
  }

  if (!*(v5 + 32))
  {
LABEL_49:

    v21 = v56;
    v84 = Logger.logObject.getter();
    v85 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v84, v85))
    {
      v86 = swift_slowAlloc();
      v87 = swift_slowAlloc();
      aBlock[0] = v87;
      *v86 = 136315394;
      *(v86 + 4) = sub_10003E81C(v100, a2, aBlock);
      *(v86 + 12) = 2048;
      *(v86 + 14) = [v21 state];

      _os_log_impl(&_mh_execute_header, v84, v85, "Acquire assertion FAIL [sessionIdentifier = %s, assertion state %lu]", v86, 0x16u);
      sub_100007920(v87);
    }

    else
    {
    }

    sub_100103510();
    swift_allocError();
    *v88 = 0;
    v88[1] = 0;
    v88[2] = 1;
    swift_willThrow();
    goto LABEL_53;
  }

  v91 = v4;

  if (Activity.id.getter() == v100 && v63 == a2)
  {
  }

  else
  {
    v64 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v64 & 1) == 0)
    {
LABEL_48:

      goto LABEL_49;
    }
  }

  v93 = v43;
  v65 = v96;
  dispatch thunk of Activity.activityState.getter();
  v66 = v98;
  v67 = *(v98 + 104);
  v92 = v56;
  v68 = v97;
  v90 = v67;
  v67(v97, enum case for ActivityState.dismissed(_:), v46);
  v69 = static ActivityState.== infix(_:_:)();
  v70 = *(v66 + 8);
  v71 = v68;
  v56 = v92;
  v70(v71, v46);
  v95 = v46;
  v98 = v66 + 8;
  v70(v65, v46);
  if ((v69 & 1) == 0)
  {
    v72 = v96;
    dispatch thunk of Activity.activityState.getter();
    v73 = v97;
    v74 = v95;
    v90(v97, enum case for ActivityState.ended(_:), v95);
    v75 = static ActivityState.== infix(_:_:)();
    v76 = v73;
    v56 = v92;
    v70(v76, v74);
    v70(v72, v74);
    if ((v75 & 1) == 0)
    {
      goto LABEL_48;
    }
  }

  if (qword_100172150 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v77 = aBlock[0];
  if (!aBlock[0])
  {
    goto LABEL_48;
  }

  v78 = Logger.logObject.getter();
  v79 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v78, v79))
  {
    v80 = swift_slowAlloc();
    *v80 = 0;
    _os_log_impl(&_mh_execute_header, v78, v79, "Acquire assertion failed due to activity being ended, recreating activity and retrying...", v80, 2u);
  }

  v81 = *(v5 + 32);
  *(v5 + 32) = 0;

  sub_1000F9C60();
  v82 = v91;
  v83 = sub_1000FBA44(v77);
  if (!v82)
  {
    sub_1001032D4(v83);
  }
}

uint64_t sub_1000FD210(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1000077C8(&qword_100172F50, &qword_10011E500);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v19 - v11;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  v14 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  v15 = swift_allocObject();
  v15[2] = v14;
  v15[3] = a4;
  v15[4] = a5;
  v15[5] = a1;
  v15[6] = a2;
  v16 = swift_allocObject();
  *(v16 + 16) = &unk_100121AF8;
  *(v16 + 24) = v15;

  v17 = a1;
  swift_errorRetain();
  static Task<>.noThrow(priority:operation:)();

  return sub_1000159AC(v12, &qword_100172F50, &qword_10011E500);
}

uint64_t sub_1000FD3F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v5[6] = a2;
  v5[7] = a3;
  v5[5] = a1;
  type metadata accessor for MainActor();
  v5[10] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000FD494, v7, v6);
}

uint64_t sub_1000FD494()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 40);

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_100103670(*(v0 + 48), *(v0 + 56), [*(v0 + 64) state], objc_msgSend(*(v0 + 64), "invalidationReason"), 0, *(v0 + 72));
  }

  v3 = *(v0 + 8);

  return v3();
}

void sub_1000FD57C(uint64_t a1, unint64_t a2)
{
  v5 = *(v2 + 40);
  if (v5)
  {
    v6 = v2;
    v7 = qword_100172248;
    v22 = v5;
    if (v7 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_100007D20(v8, qword_1001788F8);

    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v23 = v12;
      *v11 = 136315138;
      *(v11 + 4) = sub_10003E81C(a1, a2, &v23);
      _os_log_impl(&_mh_execute_header, v9, v10, "Release assertion START [sessionIdentifier = %s]", v11, 0xCu);
      sub_100007920(v12);
    }

    [v22 invalidate];
    v13 = *(v6 + 40);
    *(v6 + 40) = 0;

    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v23 = v17;
      *v16 = 136315138;
      *(v16 + 4) = sub_10003E81C(a1, a2, &v23);
      _os_log_impl(&_mh_execute_header, v14, v15, "Release assertion END [sessionIdentifier = %s]", v16, 0xCu);
      sub_100007920(v17);

      goto LABEL_12;
    }
  }

  else
  {
    if (qword_100172248 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_100007D20(v18, qword_1001788F8);

    v22 = Logger.logObject.getter();
    v19 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v22, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v23 = v21;
      *v20 = 136315138;
      *(v20 + 4) = sub_10003E81C(a1, a2, &v23);
      _os_log_impl(&_mh_execute_header, v22, v19, "Not releasing assertion for session identifier %s since assertion is nil", v20, 0xCu);
      sub_100007920(v21);

      goto LABEL_12;
    }
  }

LABEL_12:
}

uint64_t sub_1000FD910(char a1)
{
  v2 = v1;
  v4 = sub_1000077C8(&qword_100172F50, &qword_10011E500);
  v5 = *(*(v4 - 8) + 64);
  result = __chkstk_darwin(v4 - 8);
  v8 = &v15 - v7;
  *(v2 + 48) = a1;
  if ((a1 & 1) == 0)
  {
    if (qword_100172248 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_100007D20(v9, qword_1001788F8);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "Banner session dismissed", v12, 2u);
    }

    v13 = type metadata accessor for TaskPriority();
    (*(*(v13 - 8) + 56))(v8, 1, 1, v13);
    v14 = swift_allocObject();
    *(v14 + 16) = &unk_100121A88;
    *(v14 + 24) = v2;

    static Task<>.noThrow(priority:operation:)();

    return sub_1000159AC(v8, &qword_100172F50, &qword_10011E500);
  }

  return result;
}

uint64_t sub_1000FDB14(uint64_t a1)
{
  *(v1 + 24) = a1;
  type metadata accessor for MainActor();
  *(v1 + 32) = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000FDBAC, v3, v2);
}

uint64_t sub_1000FDBAC()
{
  v2 = v0[3];
  v1 = v0[4];

  if (*(v2 + 49) == 1)
  {
    if (qword_100172248 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_100007D20(v3, qword_1001788F8);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "Taking assertion for banner requested while racing", v6, 2u);
    }

    v7 = v0[3];

    if (*(v7 + 24))
    {
      v8 = v0[3];

      v9 = Activity.id.getter();
      sub_1000FC5B0(v9, v10);

LABEL_8:

      goto LABEL_14;
    }

    if (qword_100172150 != -1)
    {
      swift_once();
    }

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (v0[2])
    {
      v11 = v0[3];
      sub_1000FBA44(v0[2]);
      v14 = v0[3];
      sub_1001032D4();
      goto LABEL_8;
    }

    *(v2 + 49) = 0;
  }

LABEL_14:
  v12 = v0[1];

  return v12();
}

uint64_t sub_1000FDECC()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return swift_deallocClassInstance();
}

uint64_t sub_1000FDF40()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1000167E4;

  return sub_1000FDB14(v0);
}

uint64_t sub_1000FDFD0()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000FE058(uint64_t a1, uint64_t *a2)
{
  v4 = sub_1000077C8(&qword_100172FD0, &qword_10011A210);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v13 - v9;
  sub_100007BA4(a1, &v13 - v9, &qword_100172FD0, &qword_10011A210);
  v11 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_100007BA4(v10, v7, &qword_100172FD0, &qword_10011A210);

  static Published.subscript.setter();
  return sub_1000159AC(v10, &qword_100172FD0, &qword_10011A210);
}

uint64_t sub_1000FE1C4(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v7 = a5(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v12);
  v15 = &v19 - v14;
  v16 = *(v8 + 16);
  v16(&v19 - v14, a1, v7, v13);
  v17 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  (v16)(v11, v15, v7);

  static Published.subscript.setter();
  return (*(v8 + 8))(v15, v7);
}

void sub_1000FE338(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(v8, a3);
}

uint64_t sub_1000FE3CC(void (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

void *sub_1000FE404(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

void sub_1000FE424(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

uint64_t sub_1000FE498@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t (*sub_1000FE4C8(uint64_t (*result)(uint64_t *a1), unint64_t a2, uint64_t a3))(uint64_t *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);

LABEL_5:
    *v3 = v5;
    return sub_1000FE548;
  }

  __break(1u);
  return result;
}

id sub_1000FE550(id result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(a5 + 36) != a3)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v7 = result;
  v8 = *(a5 + 48);
  v9 = type metadata accessor for UUID();
  (*(*(v9 - 8) + 16))(v7, v8 + *(*(v9 - 8) + 72) * a2, v9);
  v10 = *(*(a5 + 56) + 8 * a2);

  return v10;
}

void sub_1000FE620(unint64_t a1, int a2, char a3, uint64_t a4)
{
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      __CocoaSet.element(at:)();
      sub_1000165C4(0, &qword_100178000, TUConversationActivitySession_ptr);
      swift_dynamicCast();
      return;
    }

    goto LABEL_23;
  }

  if (a3)
  {
    sub_1000165C4(0, &qword_100178000, TUConversationActivitySession_ptr);
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

uint64_t sub_1000FE844(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 64) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    return *(*(a4 + 56) + 8 * result);
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_1000FE894(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v194 = a6;
  v184 = a5;
  v196 = a4;
  v206 = a2;
  v200 = a1;
  v199 = type metadata accessor for SFAirDrop.Progress();
  v195 = *(v199 - 8);
  v6 = *(v195 + 64);
  __chkstk_darwin(v199);
  v188 = &v178 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v180 = type metadata accessor for SFAirDropReceive.Failure();
  v181 = *(v180 - 8);
  v8 = *(v181 + 64);
  v9 = __chkstk_darwin(v180);
  v178 = &v178 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v179 = &v178 - v11;
  v12 = type metadata accessor for SFAirDropReceive.Transfer.State();
  v13 = *(v12 - 8);
  v201 = v12;
  v202 = v13;
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v203 = &v178 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for SFAirDropSend.Failure();
  v17 = *(v16 - 8);
  v192 = v16;
  v193 = v17;
  v18 = *(v17 + 64);
  v19 = __chkstk_darwin(v16);
  v190 = &v178 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v191 = &v178 - v21;
  v22 = sub_1000077C8(&unk_100174FA0, &qword_10011A700);
  v23 = *(*(v22 - 8) + 64);
  v24 = __chkstk_darwin(v22 - 8);
  v186 = &v178 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v24);
  v187 = &v178 - v27;
  v28 = __chkstk_darwin(v26);
  v183 = &v178 - v29;
  __chkstk_darwin(v28);
  v31 = &v178 - v30;
  v32 = type metadata accessor for Date();
  v33 = *(v32 - 8);
  v197 = v32;
  v198 = v33;
  v34 = *(v33 + 64);
  v35 = __chkstk_darwin(v32);
  v185 = &v178 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __chkstk_darwin(v35);
  v39 = &v178 - v38;
  v40 = __chkstk_darwin(v37);
  v182 = &v178 - v41;
  v42 = __chkstk_darwin(v40);
  v189 = &v178 - v43;
  __chkstk_darwin(v42);
  v45 = &v178 - v44;
  v46 = sub_1000077C8(&qword_100172FD0, &qword_10011A210);
  v47 = *(*(v46 - 8) + 64);
  __chkstk_darwin(v46 - 8);
  v49 = &v178 - v48;
  v50 = type metadata accessor for SFAirDropSend.Transfer.State();
  v51 = *(v50 - 8);
  v52 = *(v51 + 64);
  v53 = __chkstk_darwin(v50);
  v204 = &v178 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v53);
  *&v205 = &v178 - v55;
  v56 = type metadata accessor for SFAirDrop.DisplayPriority();
  v57 = *(v56 - 8);
  v58 = *(v57 + 64);
  __chkstk_darwin(v56);
  v60 = &v178 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v57 + 104))(v60, enum case for SFAirDrop.DisplayPriority.high(_:), v56);
  sub_100103DB0(&qword_100178AF0, &type metadata accessor for SFAirDrop.DisplayPriority);
  v61 = dispatch thunk of static Equatable.== infix(_:_:)();
  (*(v57 + 8))(v60, v56);
  if (v61)
  {
    if (qword_100172248 != -1)
    {
      swift_once();
    }

    v62 = type metadata accessor for Logger();
    sub_100007D20(v62, qword_1001788F8);
    v63 = Logger.logObject.getter();
    v64 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      *v65 = 0;
      _os_log_impl(&_mh_execute_header, v63, v64, "Showing banner because high display priority was requested", v65, 2u);
    }

    goto LABEL_7;
  }

  sub_100007BA4(v206, v49, &qword_100172FD0, &qword_10011A210);
  if ((*(v51 + 48))(v49, 1, v50) != 1)
  {
    v74 = v51;
    v75 = v205;
    (*(v51 + 32))(COERCE_DOUBLE(*&v205), v49, v50);
    v76 = *(v51 + 16);
    v77 = v204;
    v76(v204, *&v75, v50);
    v78 = (*(v74 + 88))(v77, v50);
    if (v78 == enum case for SFAirDropSend.Transfer.State.transferring(_:))
    {
      (*(v74 + 96))(v77, v50);
      v79 = *(v77 + 1);

      v80 = sub_1000077C8(&qword_100172F30, &unk_100118BC0);
      v81 = *&v77[v80[16] + 8];

      sub_100007BA4(v196, v31, &unk_100174FA0, &qword_10011A700);
      v83 = v197;
      v82 = v198;
      if ((*(v198 + 48))(v31, 1, v197) == 1)
      {
        (*(v74 + 8))(COERCE_DOUBLE(*&v75), v50);
        sub_1000159AC(v31, &unk_100174FA0, &qword_10011A700);
        v66 = 0;
        v84 = v199;
        v85 = v195;
      }

      else
      {
        (*(v82 + 32))(v45, v31, v83);
        v84 = v199;
        v85 = v195;
        if (v194)
        {
          (*(v82 + 8))(v45, v83);
          (*(v74 + 8))(COERCE_DOUBLE(*&v205), v50);
          v66 = 0;
        }

        else
        {
          v111 = v74;
          v112 = v189;
          static Date.now.getter();
          Date.timeIntervalSince(_:)();
          v114 = v113;
          v115 = *(v82 + 8);
          v115(v112, v83);
          v115(v45, v83);
          (*(v111 + 8))(COERCE_DOUBLE(*&v205), v50);
          v84 = v199;
          v66 = v114 <= 3.0;
        }
      }

      v116 = v80[12];
      v117 = v80[20];
      v118 = type metadata accessor for SFAirDrop.DeclineAction();
      (*(*(v118 - 8) + 8))(&v77[v117], v118);
      (*(v85 + 8))(&v77[v116], v84);
      return v66 & 1;
    }

    if (v78 != enum case for SFAirDropSend.Transfer.State.transferFailed(_:))
    {
      v109 = *(v74 + 8);
      v109(*&v75, v50);
      v109(v77, v50);
      v66 = 0;
      return v66 & 1;
    }

    (*(v74 + 96))(v77, v50);
    v93 = sub_1000077C8(&qword_100172F20, &qword_100118F10);
    v95 = v192;
    v94 = v193;
    v96 = v191;
    (*(v193 + 32))(v191, &v77[*(v93 + 48)], v192);
    v97 = v190;
    (*(v94 + 16))(v190, v96, v95);
    v98 = (*(v94 + 88))(v97, v95);
    if (v98 == enum case for SFAirDropSend.Failure.missingEndpoint(_:))
    {
      goto LABEL_23;
    }

    if (v98 != enum case for SFAirDropSend.Failure.resolveFailure(_:))
    {
      if (v98 == enum case for SFAirDropSend.Failure.unexpected(_:))
      {
LABEL_23:
        v99 = *(v94 + 8);
        v99(v96, v95);
        (*(v74 + 8))(COERCE_DOUBLE(*&v75), v50);
        v99(v97, v95);
LABEL_24:
        v66 = 1;
LABEL_33:
        v110 = type metadata accessor for SFAirDropSend.Transfer.Metrics();
        (*(*(v110 - 8) + 8))(v77, v110);
        return v66 & 1;
      }

      if (v98 != enum case for SFAirDropSend.Failure.receiverDeclined(_:) && v98 != enum case for SFAirDropSend.Failure.cancelled(_:))
      {
        if (v98 == enum case for SFAirDropSend.Failure.unsupportedConnection(_:) || v98 == enum case for SFAirDropSend.Failure.badRequest(_:) || v98 == enum case for SFAirDropSend.Failure.badResponse(_:) || v98 == enum case for SFAirDropSend.Failure.missingDownloadDirectory(_:) || v98 == enum case for SFAirDropSend.Failure.streamError(_:) || v98 == enum case for SFAirDropSend.Failure.missingOwnContact(_:))
        {
          (*(v94 + 8))(v96, v95);
          (*(v74 + 8))(COERCE_DOUBLE(*&v75), v50);
          goto LABEL_24;
        }

        if (v98 == enum case for SFAirDropSend.Failure.missingRecordData(_:) || v98 == enum case for SFAirDropSend.Failure.serverError(_:))
        {
          (*(v193 + 8))(v191, v192);
          (*(v74 + 8))(COERCE_DOUBLE(*&v205), v50);
          v66 = 1;
          v77 = v204;
          goto LABEL_33;
        }

        v77 = v204;
        v75 = v205;
        v95 = v192;
        v94 = v193;
        v96 = v191;
        if (v98 != enum case for SFAirDropSend.Failure.insufficientStorage(_:))
        {
          v169 = _diagnoseUnexpectedEnumCase<A>(type:)();
          __break(1u);
          goto LABEL_94;
        }
      }
    }

    (*(v94 + 8))(v96, v95);
    (*(v74 + 8))(COERCE_DOUBLE(*&v75), v50);
    v66 = 0;
    goto LABEL_33;
  }

  sub_1000159AC(v49, &qword_100172FD0, &qword_10011A210);
  v68 = v202;
  v69 = v203;
  v70 = v201;
  (*(v202 + 16))(v203, v200, v201);
  v71 = (*(v68 + 88))(v69, v70);
  if (v71 == enum case for SFAirDropReceive.Transfer.State.waitingForAskResponse(_:))
  {
    (*(v68 + 96))(v69, v70);
    v72 = sub_1000077C8(&unk_100173CB0, &unk_10011AE50);
LABEL_12:
    (*(*(v72 - 8) + 8))(v69, v72);
    sub_1000165C4(0, &qword_100172F70, NSUserDefaults_ptr);
    v73 = static NSUserDefaults.airdrop.getter();
    v66 = SFAirDropUserDefaults.systemLevelProgressEnabled.getter();

    return v66 & 1;
  }

  if (v71 == enum case for SFAirDropReceive.Transfer.State.waitingForShareContactPermissionResponse(_:))
  {
    (*(v68 + 96))(v69, v70);
    v86 = &unk_100173088;
    v87 = &unk_10011C520;
LABEL_18:
    v88 = *(sub_1000077C8(v86, v87) + 48);
    v89 = &unk_100174F80;
    v90 = &unk_10011AE60;
LABEL_19:
    v91 = sub_1000077C8(v89, v90);
    (*(*(v91 - 8) + 8))(&v69[v88], v91);
    v92 = type metadata accessor for SFAirDrop.ContactInfo();
LABEL_20:
    (*(*(v92 - 8) + 8))(v69, v92);
LABEL_7:
    v66 = 1;
    return v66 & 1;
  }

  if (v71 == enum case for SFAirDropReceive.Transfer.State.transferring(_:))
  {
    (*(v68 + 96))(v69, v70);
    v100 = sub_1000077C8(&unk_100174F70, &unk_10011A360);
    v101 = v100[12];
    v102 = *&v69[v100[16] + 8];

    v103 = v195;
    v104 = v188;
    v105 = v199;
    (*(v195 + 32))(v188, &v69[v101], v199);
    v106 = v187;
    sub_100007BA4(v196, v187, &unk_100174FA0, &qword_10011A700);
    v108 = v197;
    v107 = v198;
    if ((*(v198 + 48))(v106, 1, v197) == 1)
    {
      (*(v103 + 8))(v104, v105);
      sub_1000159AC(v106, &unk_100174FA0, &qword_10011A700);
    }

    else
    {
      (*(v107 + 32))(v39, v106, v108);
      if ((v194 & 1) == 0)
      {
        v205 = COERCE_DOUBLE(SFAirDrop.Progress.percent.getter());
        LODWORD(v206) = v132;
        v133 = v189;
        static Date.now.getter();
        Date.timeIntervalSince(_:)();
        v135 = v134;
        v136 = *(v107 + 8);
        v136(v133, v108);
        v136(v39, v108);
        (*(v103 + 8))(v104, v105);
        if ((v206 & 1) != 0 || v205 <= 0.9)
        {
          v137 = 3.0;
        }

        else
        {
          v137 = 4.0;
        }

        v66 = v135 <= v137;
        goto LABEL_65;
      }

      (*(v107 + 8))(v39, v108);
      (*(v103 + 8))(v104, v105);
    }

    v66 = 0;
LABEL_65:
    v143 = v100[20];
    v144 = type metadata accessor for SFAirDrop.DeclineAction();
LABEL_66:
    (*(*(v144 - 8) + 8))(&v69[v143], v144);
    v145 = type metadata accessor for SFAirDropReceive.ItemDestination();
LABEL_67:
    (*(*(v145 - 8) + 8))(v69, v145);
    return v66 & 1;
  }

  if (v71 == enum case for SFAirDropReceive.Transfer.State.analyzingFullContent(_:))
  {
    (*(v68 + 96))(v69, v70);
    v119 = sub_1000077C8(&unk_100173CD0, &unk_10011C510);
    v120 = *&v69[*(v119 + 48)];

    v121 = *(v119 + 80);
    v122 = type metadata accessor for SFAirDrop.DeclineAction();
    (*(*(v122 - 8) + 8))(&v69[v121], v122);
    goto LABEL_38;
  }

  if (v71 == enum case for SFAirDropReceive.Transfer.State.waitingForSensitiveContentResponse(_:))
  {
    (*(v68 + 96))(v69, v70);
    v127 = sub_1000077C8(&qword_100173CE0, &qword_100118F90);
    v128 = *&v69[*(v127 + 48)];

    v129 = *(v127 + 64);
    v130 = sub_1000077C8(&unk_100173CB0, &unk_10011AE50);
    (*(*(v130 - 8) + 8))(&v69[v129], v130);
    v92 = type metadata accessor for SFAirDropReceive.ItemDestination();
    goto LABEL_20;
  }

  if (v71 == enum case for SFAirDropReceive.Transfer.State.importing(_:))
  {
    (*(v68 + 96))(v69, v70);
    v138 = *&v69[*(sub_1000077C8(&unk_100174F60, &qword_10011C4C0) + 48)];

LABEL_38:
    v123 = type metadata accessor for SFAirDropReceive.ItemDestination();
    (*(*(v123 - 8) + 8))(v69, v123);
    v124 = v186;
    sub_100007BA4(v196, v186, &unk_100174FA0, &qword_10011A700);
    v126 = v197;
    v125 = v198;
    if ((*(v198 + 48))(v124, 1, v197) == 1)
    {
      sub_1000159AC(v124, &unk_100174FA0, &qword_10011A700);
      v66 = 0;
    }

    else
    {
      v131 = v185;
      (*(v125 + 32))(v185, v124, v126);
      if (v194)
      {
        (*(v125 + 8))(v131, v126);
        v66 = 0;
      }

      else
      {
        v139 = v189;
        static Date.now.getter();
        Date.timeIntervalSince(_:)();
        v141 = v140;
        v142 = *(v125 + 8);
        v142(v139, v126);
        v142(v131, v126);
        v66 = v141 <= 5.0;
      }
    }

    return v66 & 1;
  }

  if (v71 == enum case for SFAirDropReceive.Transfer.State.waitingForOpenResponse(_:))
  {
    (*(v68 + 96))(v69, v70);
    v146 = sub_1000077C8(&qword_100173078, &unk_100118F60);
    v147 = *&v69[v146[12]];

    v148 = *&v69[v146[16]];

    v149 = v183;
    sub_100007BA4(v184, v183, &unk_100174FA0, &qword_10011A700);
    v151 = v197;
    v150 = v198;
    if ((*(v198 + 48))(v149, 1, v197) == 1)
    {
      sub_1000159AC(v149, &unk_100174FA0, &qword_10011A700);
      v66 = 0;
    }

    else
    {
      v152 = v182;
      (*(v150 + 32))(v182, v149, v151);
      v153 = v189;
      static Date.now.getter();
      Date.timeIntervalSince(_:)();
      v155 = v154;
      v156 = *(v150 + 8);
      v156(v153, v151);
      v156(v152, v151);
      v66 = v155 <= 7.0;
    }

    v143 = v146[20];
    v144 = sub_1000077C8(&unk_100173CB0, &unk_10011AE50);
    goto LABEL_66;
  }

  if (v71 == enum case for SFAirDropReceive.Transfer.State.waitingForShouldImportContactResponse(_:))
  {
    (*(v68 + 96))(v69, v70);
    v88 = *(sub_1000077C8(&qword_100173080, &unk_100118F80) + 48);
    v89 = &unk_100173CB0;
    v90 = &unk_10011AE50;
    goto LABEL_19;
  }

  if (v71 == enum case for SFAirDropReceive.Transfer.State.waitingForContactShareBackResponse(_:))
  {
    (*(v68 + 96))(v69, v70);
    v86 = &unk_100174FD0;
    v87 = &unk_100118F70;
    goto LABEL_18;
  }

  if (v71 == enum case for SFAirDropReceive.Transfer.State.completedSuccessfully(_:))
  {
    (*(v68 + 96))(v69, v70);
    v157 = sub_1000077C8(&qword_100174FC0, &unk_10011C5F0);
    v158 = v157[12];
    v159 = *&v69[v157[16] + 8];

    v160 = *&v69[v157[20]];

    v161 = *&v69[v157[24]];

    v162 = *&v69[v157[28]];

    v163 = type metadata accessor for SFAirDropReceive.ItemDestination();
    (*(*(v163 - 8) + 8))(&v69[v158], v163);
    v72 = type metadata accessor for SFAirDropReceive.Transfer.Metrics();
    goto LABEL_12;
  }

  if (v71 != enum case for SFAirDropReceive.Transfer.State.transferFailed(_:))
  {
    (*(v68 + 8))(v69, v70);
    v66 = 0;
    return v66 & 1;
  }

  (*(v68 + 96))(v69, v70);
  v164 = sub_1000077C8(&qword_100174FB0, &unk_10011C5E0);
  v165 = v181;
  v166 = v179;
  v167 = v180;
  (*(v181 + 32))(v179, &v69[*(v164 + 48)], v180);
  v168 = v178;
  (*(v165 + 16))(v178, v166, v167);
  v169 = (*(v165 + 88))(v168, v167);
  if (v169 == enum case for SFAirDropReceive.Failure.unsupportedType(_:))
  {
    v170 = v181;
    v171 = v180;
    (*(v181 + 8))(v179, v180);
    v172 = v178;
    (*(v170 + 96))(v178, v171);
    v173 = *(v172 + 1);

    v174 = *(sub_1000077C8(&qword_100174FB8, &unk_100121C50) + 48);
    v175 = type metadata accessor for URL();
    (*(*(v175 - 8) + 8))(&v172[v174], v175);
    v66 = 1;
LABEL_100:
    v145 = type metadata accessor for SFAirDropReceive.Transfer.Metrics();
    goto LABEL_67;
  }

  if (v169 == enum case for SFAirDropReceive.Failure.unexpected(_:))
  {
    v176 = *(v181 + 8);
    v177 = v180;
    v176(v179, v180);
    v176(v178, v177);
    v66 = 1;
LABEL_99:
    v69 = v203;
    goto LABEL_100;
  }

  if (v169 == enum case for SFAirDropReceive.Failure.declined(_:) || v169 == enum case for SFAirDropReceive.Failure.askDismissed(_:))
  {
    goto LABEL_98;
  }

  if (v169 == enum case for SFAirDropReceive.Failure.senderCancelled(_:))
  {
LABEL_91:
    (*(v181 + 8))(v179, v180);
    v66 = 1;
    goto LABEL_99;
  }

LABEL_94:
  if (v169 == enum case for SFAirDropReceive.Failure.receiverCancelled(_:) || v169 == enum case for SFAirDropReceive.Failure.mixedTypes(_:))
  {
    goto LABEL_98;
  }

  if (v169 == enum case for SFAirDropReceive.Failure.missingDownloadDirectory(_:))
  {
    goto LABEL_91;
  }

  if (v169 == enum case for SFAirDropReceive.Failure.missingOwnContact(_:))
  {
LABEL_98:
    (*(v181 + 8))(v179, v180);
    v66 = 0;
    goto LABEL_99;
  }

  if (v169 == enum case for SFAirDropReceive.Failure.streamError(_:) || v169 == enum case for SFAirDropReceive.Failure.askNotHandled(_:) || v169 == enum case for SFAirDropReceive.Failure.incompleteTransfer(_:) || v169 == enum case for SFAirDropReceive.Failure.badRequest(_:) || v169 == enum case for SFAirDropReceive.Failure.moveToAppFailed(_:) || v169 == enum case for SFAirDropReceive.Failure.insufficientStorage(_:))
  {
    goto LABEL_91;
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t sub_100100314(uint64_t a1)
{
  v2 = type metadata accessor for Date();
  v243 = *(v2 - 8);
  v3 = *(v243 + 64);
  v4 = __chkstk_darwin(v2);
  v6 = &v228[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __chkstk_darwin(v4);
  v9 = &v228[-v8];
  v10 = __chkstk_darwin(v7);
  v245 = &v228[-v11];
  __chkstk_darwin(v10);
  v244 = &v228[-v12];
  v275 = type metadata accessor for SFAirDropSend.Transfer.State();
  v253 = *(v275 - 1);
  v13 = *(v253 + 64);
  v14 = __chkstk_darwin(v275);
  v257 = &v228[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = __chkstk_darwin(v14);
  v256 = &v228[-v17];
  v18 = __chkstk_darwin(v16);
  v251 = &v228[-v19];
  __chkstk_darwin(v18);
  v249 = &v228[-v20];
  v21 = sub_1000077C8(&unk_100174FA0, &qword_10011A700);
  v22 = *(*(v21 - 8) + 64);
  v23 = __chkstk_darwin(v21 - 8);
  v25 = &v228[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v26 = __chkstk_darwin(v23);
  v248 = &v228[-v27];
  v28 = __chkstk_darwin(v26);
  v246 = &v228[-v29];
  v30 = __chkstk_darwin(v28);
  v270 = &v228[-v31];
  __chkstk_darwin(v30);
  v267 = &v228[-v32];
  v266 = type metadata accessor for SFAirDrop.DisplayPriority();
  v33 = *(v266 - 8);
  v34 = *(v33 + 64);
  __chkstk_darwin(v266);
  v265 = &v228[-((v35 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v36 = sub_1000077C8(&qword_100172FD0, &qword_10011A210);
  v37 = *(*(v36 - 8) + 64);
  v38 = __chkstk_darwin(v36 - 8);
  v258 = &v228[-((v39 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v40 = __chkstk_darwin(v38);
  v271 = &v228[-v41];
  v42 = __chkstk_darwin(v40);
  v254 = &v228[-v43];
  v44 = __chkstk_darwin(v42);
  v250 = &v228[-v45];
  __chkstk_darwin(v44);
  v274 = &v228[-v46];
  v47 = type metadata accessor for SFAirDropReceive.Transfer.State();
  v48 = *(*(v47 - 8) + 64);
  v49 = __chkstk_darwin(v47);
  v247 = &v228[-((v50 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v51 = __chkstk_darwin(v49);
  v252 = &v228[-v52];
  v53 = __chkstk_darwin(v51);
  v255 = &v228[-v54];
  v55 = __chkstk_darwin(v53);
  v262 = &v228[-v56];
  v57 = __chkstk_darwin(v55);
  v268 = &v228[-v58];
  v59 = __chkstk_darwin(v57);
  v60 = __chkstk_darwin(v59);
  v264 = &v228[-v63];
  if (!*(a1 + 16))
  {
    return 0;
  }

  v241 = v62;
  v272 = v60;
  v238 = v25;
  v239 = v9;
  v237 = v6;
  v240 = v2;
  v277 = &_swiftEmptyArrayStorage;
  KeyPath = a1 + 64;
  v65 = 1 << *(a1 + 32);
  v66 = -1;
  if (v65 < 64)
  {
    v66 = ~(-1 << v65);
  }

  v67 = v66 & *(a1 + 64);
  v68 = (v65 + 63) >> 6;
  v260 = (v33 + 8);
  v242 = v61;
  v269 = (v61 + 8);

  v69 = 0;
  v261 = (a1 + 64);
  v259 = v68;
  v263 = a1;
  v70 = v267;
  while (v67)
  {
    v71 = v69;
LABEL_12:
    v72 = __clz(__rbit64(v67));
    v67 &= v67 - 1;
    v73 = *(*(a1 + 56) + ((v71 << 9) | (8 * v72)));
    swift_getKeyPath();
    swift_getKeyPath();

    v74 = v264;
    static Published.subscript.getter();

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    swift_getKeyPath();
    swift_getKeyPath();
    v75 = v265;
    static Published.subscript.getter();

    v76 = OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_transferringStateStartTime;
    swift_beginAccess();
    sub_100007BA4(v73 + v76, v70, &unk_100174FA0, &qword_10011A700);
    v77 = OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_waitingForOpenResponseStateStartTime;
    swift_beginAccess();
    v78 = v270;
    sub_100007BA4(v73 + v77, v270, &unk_100174FA0, &qword_10011A700);
    v33 = v274;
    LODWORD(v273) = sub_1000FE894(v74, v274, v75, v70, v78, *(v73 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_systemApertureIsEnabled));
    sub_1000159AC(v78, &unk_100174FA0, &qword_10011A700);
    sub_1000159AC(v70, &unk_100174FA0, &qword_10011A700);
    (*v260)(v75, v266);
    sub_1000159AC(v33, &qword_100172FD0, &qword_10011A210);
    (*v269)(v74, v272);
    if (v273)
    {
      v33 = &v277;
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v79 = *(v277 + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    else
    {
    }

    v69 = v71;
    a1 = v263;
    KeyPath = v261;
    v68 = v259;
  }

  while (1)
  {
    v71 = v69 + 1;
    if (__OFADD__(v69, 1))
    {
      __break(1u);
LABEL_110:
      __break(1u);
LABEL_111:
      __break(1u);
LABEL_112:
      __break(1u);
LABEL_113:
      __break(1u);
LABEL_114:
      __break(1u);
LABEL_115:
      __break(1u);
LABEL_116:
      __break(1u);
      goto LABEL_117;
    }

    if (v71 >= v68)
    {
      break;
    }

    v67 = *(KeyPath + 8 * v71);
    ++v69;
    if (v67)
    {
      goto LABEL_12;
    }
  }

  v33 = v277;
  if ((v277 & 0x8000000000000000) == 0 && (v277 & 0x4000000000000000) == 0)
  {
    v80 = *(v277 + 16);
    goto LABEL_17;
  }

LABEL_117:
  v80 = _CocoaArrayWrapper.endIndex.getter();
LABEL_17:
  v81 = v254;
  if (!v80)
  {
    goto LABEL_57;
  }

  while (2)
  {
    v82 = 0;
    if (v33 >> 62)
    {
      goto LABEL_107;
    }

LABEL_19:
    v83 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v83)
    {
LABEL_108:

      return 0;
    }

LABEL_20:
    LODWORD(v267) = v82;
    v84 = 0;
    v85 = v33 & 0xC000000000000001;
    v277 = &_swiftEmptyArrayStorage;
    v86 = v33 & 0xFFFFFFFFFFFFFF8;
    v274 = v253 + 48;
    do
    {
      if (v85)
      {
        a1 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v87 = v84 + 1;
        if (__OFADD__(v84, 1))
        {
          goto LABEL_30;
        }
      }

      else
      {
        if (v84 >= *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_110;
        }

        a1 = *(v33 + 8 * v84 + 32);

        v87 = v84 + 1;
        if (__OFADD__(v84, 1))
        {
LABEL_30:
          __break(1u);
          return 0;
        }
      }

      v88 = v33;
      swift_getKeyPath();
      KeyPath = swift_getKeyPath();
      static Published.subscript.getter();

      v273 = *v274;
      if ((v273)(v81, 1, v275) == 1)
      {
        sub_1000159AC(v81, &qword_100172FD0, &qword_10011A210);
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        KeyPath = *(v277 + 16);
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      else
      {

        sub_1000159AC(v81, &qword_100172FD0, &qword_10011A210);
      }

      ++v84;
    }

    while (v87 != v83);
    v90 = 0;
    v270 = v277;
    v277 = &_swiftEmptyArrayStorage;
    while (v85)
    {
      a1 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v91 = v90 + 1;
      if (__OFADD__(v90, 1))
      {
        goto LABEL_42;
      }

LABEL_38:
      swift_getKeyPath();
      KeyPath = swift_getKeyPath();
      v92 = v271;
      static Published.subscript.getter();

      if ((v273)(v92, 1, v275) == 1)
      {

        sub_1000159AC(v92, &qword_100172FD0, &qword_10011A210);
      }

      else
      {
        sub_1000159AC(v92, &qword_100172FD0, &qword_10011A210);
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        KeyPath = *(v277 + 16);
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      ++v90;
      v33 = v88;
      if (v91 == v83)
      {
        goto LABEL_43;
      }
    }

    if (v90 >= *(v86 + 16))
    {
      goto LABEL_111;
    }

    a1 = *(v33 + 8 * v90 + 32);

    v91 = v90 + 1;
    if (!__OFADD__(v90, 1))
    {
      goto LABEL_38;
    }

LABEL_42:
    __break(1u);
LABEL_43:

    v93 = v277;
    KeyPath = v270;
    if ((v270 & 0x8000000000000000) == 0 && (v270 & 0x4000000000000000) == 0)
    {
      v81 = v258;
      v271 = *(v270 + 16);
      if (v271)
      {
        goto LABEL_46;
      }

LABEL_119:

      v277 = &_swiftEmptyArrayStorage;
      if (v93 < 0 || (v93 & 0x4000000000000000) != 0)
      {
        goto LABEL_177;
      }

      v95 = *(v93 + 16);
      if (v95)
      {
        goto LABEL_122;
      }

LABEL_178:
      v33 = &_swiftEmptyArrayStorage;
      if ((&_swiftEmptyArrayStorage & 0x8000000000000000) != 0)
      {
        goto LABEL_185;
      }

      goto LABEL_179;
    }

    v144 = _CocoaArrayWrapper.endIndex.getter();
    v81 = v258;
    v271 = v144;
    if (!v144)
    {
      goto LABEL_119;
    }

LABEL_46:

    v94 = 0;
    v277 = &_swiftEmptyArrayStorage;
    v275 = (KeyPath & 0xC000000000000001);
    v95 = (v242 + 88);
    v274 = v242 + 96;
    v96 = enum case for SFAirDropReceive.Transfer.State.waitingForAskResponse(_:);
    v81 = &unk_100121BC0;
LABEL_49:
    if (!v275)
    {
      if (v94 >= *(KeyPath + 16))
      {
        goto LABEL_112;
      }

      v93 = *(KeyPath + 8 * v94 + 32);

      v88 = (v94 + 1);
      if (!__OFADD__(v94, 1))
      {
        goto LABEL_52;
      }

LABEL_56:
      __break(1u);
LABEL_57:
      v101 = sub_1000F92B4(a1);
      if (v101)
      {
        if (*(v101 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_systemApertureIsEnabled) == 1)
        {
          v236 = v101;

          v277 = &_swiftEmptyArrayStorage;
          v102 = 1 << *(a1 + 32);
          v103 = -1;
          if (v102 < 64)
          {
            v103 = ~(-1 << v102);
          }

          v104 = v103 & *(a1 + 64);
          v235 = v241 + 8;
          v105 = (v102 + 63) >> 6;
          v106 = (v253 + 48);
          v274 = v253 + 32;
          v273 = v253 + 88;
          LODWORD(v270) = enum case for SFAirDropSend.Transfer.State.analyzingFullContent(_:);
          LODWORD(v260) = enum case for SFAirDropSend.Transfer.State.waitingForSensitiveContentResponse(_:);
          v234 = enum case for SFAirDropSend.Transfer.State.created(_:);
          v232 = enum case for SFAirDropSend.Transfer.State.waitingForAskResponse(_:);
          v230 = (v253 + 8);
          v264 = (v253 + 96);
          v267 = (v242 + 88);
          LODWORD(v266) = enum case for SFAirDropReceive.Transfer.State.waitingForOpenResponse(_:);
          LODWORD(v259) = enum case for SFAirDropReceive.Transfer.State.completedSuccessfully(_:);
          v233 = enum case for SFAirDropReceive.Transfer.State.created(_:);
          v231 = enum case for SFAirDropReceive.Transfer.State.autoAccepted(_:);
          v261 = (v242 + 96);
          v229 = enum case for SFAirDropReceive.Transfer.State.analyizingPreview(_:);

          a1 = 0;
          v107 = v250;
          v265 = v106;
          while (1)
          {
            if (!v104)
            {
              while (1)
              {
                v118 = a1 + 1;
                if (__OFADD__(a1, 1))
                {
                  goto LABEL_113;
                }

                if (v118 >= v105)
                {
                  break;
                }

                v104 = *(KeyPath + 8 * v118);
                ++a1;
                if (v104)
                {
                  a1 = v118;
                  goto LABEL_87;
                }
              }

              v33 = v277;
              v82 = 1;
              v81 = v254;
              if (v277 >> 62)
              {
LABEL_107:
                v142 = v82;
                v143 = _CocoaArrayWrapper.endIndex.getter();
                v82 = v142;
                v83 = v143;
                if (!v143)
                {
                  goto LABEL_108;
                }

                goto LABEL_20;
              }

              goto LABEL_19;
            }

LABEL_87:
            v119 = __clz(__rbit64(v104));
            v104 &= v104 - 1;
            v120 = *(*(v263 + 56) + ((a1 << 9) | (8 * v119)));
            swift_getKeyPath();
            swift_getKeyPath();

            static Published.subscript.getter();

            v121 = v275;
            if ((*v106)(v107, 1, v275) == 1)
            {
              sub_1000159AC(v107, &qword_100172FD0, &qword_10011A210);
              swift_getKeyPath();
              swift_getKeyPath();
              v122 = v241;
              static Published.subscript.getter();

              v33 = v272;
              v123 = (*v267)(v122, v272);
              if (v123 == v266)
              {

                (*v261)(v122, v33);
                v112 = sub_1000077C8(&qword_100173078, &unk_100118F60);
                v113 = *(v122 + v112[12]);

                v114 = *(v122 + v112[16]);

                v115 = v112[20];
                v116 = sub_1000077C8(&unk_100173CB0, &unk_10011AE50);
                (*(*(v116 - 8) + 8))(v122 + v115, v116);
                v117 = type metadata accessor for SFAirDropReceive.ItemDestination();
                (*(*(v117 - 8) + 8))(v122, v117);
                continue;
              }

              if (v123 == v259)
              {

                v124 = v241;
                (*v261)(v241, v272);
                v125 = sub_1000077C8(&qword_100174FC0, &unk_10011C5F0);
                v33 = v125[12];
                v126 = *(v235 + v125[16]);

                v127 = *(v124 + v125[20]);

                v128 = *(v124 + v125[24]);

                v129 = *(v124 + v125[28]);

                v130 = type metadata accessor for SFAirDropReceive.ItemDestination();
                (*(*(v130 - 8) + 8))(v124 + v33, v130);
                v131 = type metadata accessor for SFAirDropReceive.Transfer.Metrics();
                (*(*(v131 - 8) + 8))(v124, v131);
                continue;
              }

              if (v123 == v233 || v123 == v231 || v123 == v229)
              {
                goto LABEL_102;
              }

              (*v269)(v241, v272);
            }

            else
            {
              v33 = *v274;
              v132 = v249;
              (*v274)(v249, v107, v121);
              v133 = v251;
              (v33)(v251, v132, v121);
              v134 = (*v273)(v133, v121);
              if (v134 == v270)
              {

                (*v264)(v133, v121);
                v135 = *v133;

                v136 = *(sub_1000077C8(&qword_100174130, &qword_10011C540) + 64);
                v137 = type metadata accessor for SFAirDrop.DeclineAction();
                (*(*(v137 - 8) + 8))(&v133[v136], v137);
LABEL_95:
                v107 = v250;
                v106 = v265;
                continue;
              }

              if (v134 == v260)
              {

                v33 = v251;
                (*v264)(v251, v275);
                v138 = *v33;

                v139 = *(sub_1000077C8(&qword_100174128, &unk_10011C530) + 48);
                v140 = sub_1000077C8(&unk_100174F90, &unk_10011AE70);
                (*(*(v140 - 8) + 8))(v33 + v139, v140);
                goto LABEL_95;
              }

              v107 = v250;
              v106 = v265;
              if (v134 == v234 || v134 == v232)
              {
LABEL_102:

                continue;
              }

              (*v230)(v251, v275);
            }

            v33 = &v277;
            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            v141 = *(v277 + 16);
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            specialized ContiguousArray._endMutation()();
          }
        }
      }

      continue;
    }

    break;
  }

  v93 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  v88 = (v94 + 1);
  if (__OFADD__(v94, 1))
  {
    goto LABEL_56;
  }

LABEL_52:
  swift_getKeyPath();
  swift_getKeyPath();
  v97 = v268;
  static Published.subscript.getter();

  v98 = v97;

  a1 = *v95;
  v33 = v272;
  if ((*v95)(v98, v272) == v96)
  {
    (*v274)(v98, v33);
    v99 = sub_1000077C8(&unk_100173CB0, &unk_10011AE50);
    (*(*(v99 - 8) + 8))(v98, v99);
    v33 = &v277;
    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    v100 = *(v277 + 16);
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
  }

  else
  {

    (*v269)(v98, v33);
  }

  ++v94;
  KeyPath = v270;
  if (v88 != v271)
  {
    goto LABEL_49;
  }

  v33 = v277;
  if ((v277 & 0x8000000000000000) != 0 || (v277 & 0x4000000000000000) != 0)
  {
    goto LABEL_139;
  }

  v108 = *(v277 + 16);
  if (v108)
  {
    while (2)
    {
      KeyPath = v33 & 0xC000000000000001;
      if ((v33 & 0xC000000000000001) != 0)
      {
        goto LABEL_174;
      }

      if (*(v33 + 16))
      {
        v109 = *(v33 + 32);

        if (v108 == 1)
        {
          goto LABEL_292;
        }

        goto LABEL_68;
      }

      __break(1u);
LABEL_177:
      v95 = _CocoaArrayWrapper.endIndex.getter();
      if (!v95)
      {
        goto LABEL_178;
      }

LABEL_122:
      v145 = 0;
      v88 = (v93 & 0xC000000000000001);
      v272 = (v253 + 32);
      v271 = (v253 + 88);
      LODWORD(v270) = enum case for SFAirDropSend.Transfer.State.transferFailed(_:);
      v268 = (v253 + 8);
      v266 = v253 + 96;
      v269 = (v93 & 0xC000000000000001);
LABEL_125:
      if (!v88)
      {
        if (v145 >= *(v93 + 16))
        {
          __break(1u);
LABEL_139:
          v108 = _CocoaArrayWrapper.endIndex.getter();
          if (!v108)
          {
            goto LABEL_140;
          }

          continue;
        }

        a1 = *(v93 + 8 * v145 + 32);

        v147 = (v145 + 1);
        if (__OFADD__(v145, 1))
        {
          goto LABEL_135;
        }

        goto LABEL_128;
      }

      break;
    }

    a1 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    v147 = (v145 + 1);
    if (!__OFADD__(v145, 1))
    {
LABEL_128:
      KeyPath = v93;
      v148 = v95;
      v33 = swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v149 = v275;

      if ((v273)(v81, 1, v149) == 1)
      {

        sub_1000159AC(v81, &qword_100172FD0, &qword_10011A210);
      }

      else
      {
        v33 = *v272;
        v150 = v81;
        v151 = v256;
        (*v272)(v256, v150, v149);
        v152 = v257;
        (v33)(v257, v151, v149);
        v153 = (*v271)(v152, v149);
        if (v153 == v270)
        {
          (*v266)(v152, v149);
          v154 = *(sub_1000077C8(&qword_100172F20, &qword_100118F10) + 48);
          v155 = type metadata accessor for SFAirDropSend.Failure();
          (*(*(v155 - 8) + 8))(&v152[v154], v155);
          v156 = type metadata accessor for SFAirDropSend.Transfer.Metrics();
          (*(*(v156 - 8) + 8))(v152, v156);
          v33 = &v277;
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          v157 = *(v277 + 16);
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
        }

        else
        {

          (*v268)(v152, v149);
        }

        v81 = v258;
        v88 = v269;
      }

      ++v145;
      v95 = v148;
      v146 = v147 == v148;
      v93 = KeyPath;
      if (v146)
      {
        goto LABEL_136;
      }

      goto LABEL_125;
    }

LABEL_135:
    __break(1u);
LABEL_136:
    v33 = v277;
    if ((v277 & 0x8000000000000000) != 0)
    {
LABEL_185:
      v170 = _CocoaArrayWrapper.endIndex.getter();
      if (!v170)
      {
        goto LABEL_186;
      }

LABEL_181:
      v171 = v33 & 0xC000000000000001;
      if ((v33 & 0xC000000000000001) != 0)
      {
        goto LABEL_209;
      }

      if (!*(v33 + 16))
      {
        goto LABEL_226;
      }

      v81 = *(v33 + 32);

      if (v170 != 1)
      {
        goto LABEL_210;
      }

LABEL_184:
      v89 = v81;
      goto LABEL_293;
    }

LABEL_179:
    if ((v33 & 0x4000000000000000) != 0)
    {
      goto LABEL_185;
    }

    v170 = *(v33 + 16);
    if (v170)
    {
      goto LABEL_181;
    }

LABEL_186:

    if (!v95)
    {

      return 0;
    }

    v81 = (v93 & 0xC000000000000001);
    v33 = v267;
    if ((v93 & 0xC000000000000001) != 0)
    {
      goto LABEL_271;
    }

    if (*(v93 + 16))
    {
      v89 = *(v93 + 32);

      if (v95 == 1)
      {
        goto LABEL_294;
      }

      while (1)
      {
        v171 = 1;
LABEL_191:
        v33 = v89;
        v170 = v171;
        while (v81)
        {
          v89 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v171 = v170 + 1;
          if (__OFADD__(v170, 1))
          {
            goto LABEL_206;
          }

LABEL_199:
          if (static Date.< infix(_:_:)())
          {

            if (v171 == v95)
            {
              goto LABEL_294;
            }

            goto LABEL_191;
          }

          ++v170;
          if (v171 == v95)
          {
            v89 = v33;
            goto LABEL_294;
          }
        }

        if ((v170 & 0x8000000000000000) != 0)
        {
          goto LABEL_207;
        }

        if (v170 >= *(v93 + 16))
        {
          goto LABEL_208;
        }

        v89 = *(v93 + 8 * v170 + 32);

        v171 = v170 + 1;
        if (!__OFADD__(v170, 1))
        {
          goto LABEL_199;
        }

LABEL_206:
        __break(1u);
LABEL_207:
        __break(1u);
LABEL_208:
        __break(1u);
LABEL_209:
        v81 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        if (v170 == 1)
        {
          goto LABEL_184;
        }

LABEL_210:
        KeyPath = 1;
        while (2)
        {
          if (v171)
          {
            v89 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            a1 = KeyPath + 1;
            if (__OFADD__(KeyPath, 1))
            {
              goto LABEL_223;
            }

LABEL_218:
            if (static Date.< infix(_:_:)())
            {

              v81 = v89;
              KeyPath = a1;
              if (a1 == v170)
              {
                goto LABEL_293;
              }
            }

            else
            {

              ++KeyPath;
              if (a1 == v170)
              {
                goto LABEL_184;
              }
            }

            continue;
          }

          break;
        }

        if ((KeyPath & 0x8000000000000000) != 0)
        {
          goto LABEL_224;
        }

        if (KeyPath >= *(v33 + 16))
        {
          goto LABEL_225;
        }

        v89 = *(v33 + 8 * KeyPath + 32);

        a1 = KeyPath + 1;
        if (!__OFADD__(KeyPath, 1))
        {
          goto LABEL_218;
        }

LABEL_223:
        __break(1u);
LABEL_224:
        __break(1u);
LABEL_225:
        __break(1u);
LABEL_226:
        __break(1u);
LABEL_227:
        v108 = _CocoaArrayWrapper.endIndex.getter();
        if (!v108)
        {
          goto LABEL_228;
        }

LABEL_154:
        KeyPath = v33 & 0xC000000000000001;
        if ((v33 & 0xC000000000000001) != 0)
        {
          goto LABEL_268;
        }

        if (*(v33 + 16))
        {
          v109 = *(v33 + 32);

          if (v108 == 1)
          {
            goto LABEL_292;
          }

LABEL_157:
          v168 = 1;
          while (1)
          {
            if (KeyPath)
            {
              v89 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              v169 = v168 + 1;
              if (__OFADD__(v168, 1))
              {
                goto LABEL_171;
              }
            }

            else
            {
              if ((v168 & 0x8000000000000000) != 0)
              {
                goto LABEL_172;
              }

              if (v168 >= *(v33 + 16))
              {
                goto LABEL_173;
              }

              v89 = *(v33 + 8 * v168 + 32);

              v169 = v168 + 1;
              if (__OFADD__(v168, 1))
              {
                goto LABEL_171;
              }
            }

            if (static Date.< infix(_:_:)())
            {

              v109 = v89;
              v168 = v169;
              if (v169 == v108)
              {
                goto LABEL_293;
              }
            }

            else
            {

              ++v168;
              if (v169 == v108)
              {
                goto LABEL_292;
              }
            }
          }
        }

        __break(1u);
LABEL_271:
        v89 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        if (v95 == 1)
        {
          goto LABEL_294;
        }
      }
    }

    __break(1u);
LABEL_274:
    v108 = _CocoaArrayWrapper.endIndex.getter();
    if (!v108)
    {
      goto LABEL_275;
    }

LABEL_248:
    KeyPath = v33 & 0xC000000000000001;
    if ((v33 & 0xC000000000000001) != 0)
    {
      goto LABEL_297;
    }

    if (!*(v33 + 16))
    {
      __break(1u);
      goto LABEL_300;
    }

    v109 = *(v33 + 32);

    if (v108 == 1)
    {
      goto LABEL_292;
    }

LABEL_251:
    v184 = 1;
    while (1)
    {
      if (KeyPath)
      {
        v89 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v185 = v184 + 1;
        if (__OFADD__(v184, 1))
        {
          goto LABEL_265;
        }
      }

      else
      {
        if ((v184 & 0x8000000000000000) != 0)
        {
          goto LABEL_266;
        }

        if (v184 >= *(v33 + 16))
        {
          goto LABEL_267;
        }

        v89 = *(v33 + 8 * v184 + 32);

        v185 = v184 + 1;
        if (__OFADD__(v184, 1))
        {
          goto LABEL_265;
        }
      }

      if (static Date.< infix(_:_:)())
      {

        v109 = v89;
        v184 = v185;
        if (v185 == v108)
        {
          goto LABEL_293;
        }
      }

      else
      {

        ++v184;
        if (v185 == v108)
        {
          goto LABEL_292;
        }
      }
    }
  }

LABEL_140:

  v158 = 0;
  v277 = &_swiftEmptyArrayStorage;
  v81 = &unk_100121BC0;
  v93 = enum case for SFAirDropReceive.Transfer.State.waitingForSensitiveContentResponse(_:);
  while (!v275)
  {
    if (v158 >= *(KeyPath + 16))
    {
      __break(1u);
LABEL_171:
      __break(1u);
LABEL_172:
      __break(1u);
LABEL_173:
      __break(1u);
LABEL_174:
      v109 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      if (v108 == 1)
      {
        goto LABEL_292;
      }

LABEL_68:
      v110 = 1;
      while (1)
      {
        if (KeyPath)
        {
          v89 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v111 = v110 + 1;
          if (__OFADD__(v110, 1))
          {
            goto LABEL_114;
          }
        }

        else
        {
          if ((v110 & 0x8000000000000000) != 0)
          {
            goto LABEL_115;
          }

          if (v110 >= *(v33 + 16))
          {
            goto LABEL_116;
          }

          v89 = *(v33 + 8 * v110 + 32);

          v111 = v110 + 1;
          if (__OFADD__(v110, 1))
          {
            goto LABEL_114;
          }
        }

        if (static Date.< infix(_:_:)())
        {

          v109 = v89;
          v110 = v111;
          if (v111 == v108)
          {
            goto LABEL_293;
          }
        }

        else
        {

          ++v110;
          if (v111 == v108)
          {
            goto LABEL_292;
          }
        }
      }
    }

    v159 = *(KeyPath + 8 * v158 + 32);

    v160 = (v158 + 1);
    if (__OFADD__(v158, 1))
    {
      goto LABEL_150;
    }

LABEL_146:
    swift_getKeyPath();
    v108 = swift_getKeyPath();
    v161 = v262;
    static Published.subscript.getter();

    v33 = v272;
    if ((a1)(v161, v272) == v93)
    {
      (*v274)(v161, v33);
      v162 = sub_1000077C8(&qword_100173CE0, &qword_100118F90);
      v163 = *&v161[*(v162 + 48)];

      v164 = *(v162 + 64);
      v165 = sub_1000077C8(&unk_100173CB0, &unk_10011AE50);
      (*(*(v165 - 8) + 8))(&v161[v164], v165);
      v166 = type metadata accessor for SFAirDropReceive.ItemDestination();
      (*(*(v166 - 8) + 8))(v161, v166);
      v33 = &v277;
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v167 = *(v277 + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    else
    {

      (*v269)(v161, v33);
    }

    ++v158;
    KeyPath = v270;
    if (v160 == v271)
    {
      goto LABEL_151;
    }
  }

  specialized _ArrayBuffer._getElementSlowPath(_:)();
  v160 = (v158 + 1);
  if (!__OFADD__(v158, 1))
  {
    goto LABEL_146;
  }

LABEL_150:
  __break(1u);
LABEL_151:
  v33 = v277;
  if ((v277 & 0x8000000000000000) != 0 || (v277 & 0x4000000000000000) != 0)
  {
    goto LABEL_227;
  }

  v108 = *(v277 + 16);
  if (v108)
  {
    goto LABEL_154;
  }

LABEL_228:

  v172 = 0;
  v277 = &_swiftEmptyArrayStorage;
  v173 = enum case for SFAirDropReceive.Transfer.State.waitingForShareContactPermissionResponse(_:);
  v174 = enum case for SFAirDropReceive.Transfer.State.waitingForShouldImportContactResponse(_:);
  LODWORD(v273) = enum case for SFAirDropReceive.Transfer.State.waitingForContactShareBackResponse(_:);
  while (2)
  {
    if (!v275)
    {
      if (v172 >= *(v270 + 16))
      {
        __break(1u);
LABEL_265:
        __break(1u);
LABEL_266:
        __break(1u);
LABEL_267:
        __break(1u);
LABEL_268:
        v109 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        if (v108 == 1)
        {
          goto LABEL_292;
        }

        goto LABEL_157;
      }

      v180 = *(v270 + 8 * v172 + 32);

      v108 = v172 + 1;
      if (__OFADD__(v172, 1))
      {
        goto LABEL_244;
      }

LABEL_235:
      swift_getKeyPath();
      swift_getKeyPath();
      KeyPath = v255;
      static Published.subscript.getter();

      v33 = v272;
      v181 = (a1)(KeyPath, v272);
      if (v181 == v173)
      {
        (*v274)(KeyPath, v33);
        v182 = &unk_100173088;
        v183 = &unk_10011C520;
        goto LABEL_237;
      }

      if (v181 != v174)
      {
        if (v181 == v273)
        {
          (*v274)(KeyPath, v272);
          v182 = &unk_100174FD0;
          v183 = &unk_100118F70;
LABEL_237:
          v175 = *(sub_1000077C8(v182, v183) + 48);
          v176 = &unk_100174F80;
          v177 = &unk_10011AE60;
LABEL_230:
          v178 = sub_1000077C8(v176, v177);
          (*(*(v178 - 8) + 8))(KeyPath + v175, v178);
          v179 = type metadata accessor for SFAirDrop.ContactInfo();
          (*(*(v179 - 8) + 8))(KeyPath, v179);
          v33 = &v277;
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          KeyPath = *(v277 + 16);
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
        }

        else
        {

          (*v269)(KeyPath, v272);
        }

        ++v172;
        if (v108 == v271)
        {
          goto LABEL_245;
        }

        continue;
      }

      (*v274)(KeyPath, v272);
      v175 = *(sub_1000077C8(&qword_100173080, &unk_100118F80) + 48);
      v176 = &unk_100173CB0;
      v177 = &unk_10011AE50;
      goto LABEL_230;
    }

    break;
  }

  specialized _ArrayBuffer._getElementSlowPath(_:)();
  v108 = v172 + 1;
  if (!__OFADD__(v172, 1))
  {
    goto LABEL_235;
  }

LABEL_244:
  __break(1u);
LABEL_245:
  v33 = v277;
  v88 = v270;
  if ((v277 & 0x8000000000000000) != 0 || (v277 & 0x4000000000000000) != 0)
  {
    goto LABEL_274;
  }

  v108 = *(v277 + 16);
  if (v108)
  {
    goto LABEL_248;
  }

LABEL_275:

  v186 = 0;
  v277 = &_swiftEmptyArrayStorage;
  v187 = enum case for SFAirDropReceive.Transfer.State.transferFailed(_:);
  while (2)
  {
    if (!v275)
    {
      if (v186 < v88[2])
      {
        v188 = v88[v186 + 4];

        v88 = (v186 + 1);
        if (__OFADD__(v186, 1))
        {
          goto LABEL_285;
        }

LABEL_281:
        swift_getKeyPath();
        v108 = swift_getKeyPath();
        KeyPath = v252;
        static Published.subscript.getter();

        v33 = v272;
        if ((a1)(KeyPath, v272) == v187)
        {
          (*v274)(KeyPath, v33);
          v189 = *(sub_1000077C8(&qword_100174FB0, &unk_10011C5E0) + 48);
          v190 = type metadata accessor for SFAirDropReceive.Failure();
          (*(*(v190 - 8) + 8))(KeyPath + v189, v190);
          v191 = type metadata accessor for SFAirDropReceive.Transfer.Metrics();
          (*(*(v191 - 8) + 8))(KeyPath, v191);
          v33 = &v277;
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          KeyPath = *(v277 + 16);
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
        }

        else
        {

          (*v269)(KeyPath, v33);
        }

        ++v186;
        v146 = v88 == v271;
        v88 = v270;
        if (v146)
        {
          goto LABEL_286;
        }

        continue;
      }

      __break(1u);
LABEL_297:
      v109 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      if (v108 == 1)
      {
        goto LABEL_292;
      }

      goto LABEL_251;
    }

    break;
  }

  specialized _ArrayBuffer._getElementSlowPath(_:)();
  v88 = (v186 + 1);
  if (!__OFADD__(v186, 1))
  {
    goto LABEL_281;
  }

LABEL_285:
  __break(1u);
LABEL_286:
  v33 = v277;
  if ((v277 & 0x8000000000000000) == 0 && (v277 & 0x4000000000000000) == 0)
  {
    v192 = *(v277 + 16);
    v193 = v247;
    if (v192)
    {
      goto LABEL_289;
    }

LABEL_301:

    v195 = 0;
    v265 = (v243 + 48);
    v276 = &_swiftEmptyArrayStorage;
    v264 = (v243 + 32);
    LODWORD(v268) = enum case for SFAirDropReceive.Transfer.State.waitingForOpenResponse(_:);
    v33 = &unk_100174FA0;
    v263 = v243 + 8;
    v192 = v246;
    while (2)
    {
      if (v275)
      {
        v196 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v195 >= v88[2])
        {
          goto LABEL_343;
        }

        v196 = v88[v195 + 4];
      }

      v273 = v195 + 1;
      if (__OFADD__(v195, 1))
      {
        __break(1u);
LABEL_343:
        __break(1u);
LABEL_344:
        __break(1u);
LABEL_345:
        __break(1u);
LABEL_346:
        __break(1u);
LABEL_347:
        v109 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        if (v192 != 1)
        {
          goto LABEL_348;
        }

LABEL_292:
        v89 = v109;
        goto LABEL_293;
      }

      v197 = v33;
      swift_getKeyPath();
      KeyPath = swift_getKeyPath();
      static Published.subscript.getter();

      v198 = v272;
      v199 = (a1)(v193, v272);
      if (v199 == v268)
      {
        (*v274)(v193, v198);
        v200 = sub_1000077C8(&qword_100173078, &unk_100118F60);
        v201 = *&v193[v200[12]];

        v202 = *&v193[v200[16]];

        v266 = v200[20];
        v203 = OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_waitingForOpenResponseStateStartTime;
        swift_beginAccess();
        v204 = v196 + v203;
        v33 = v197;
        KeyPath = &qword_10011A700;
        sub_100007BA4(v204, v192, v197, &qword_10011A700);
        v205 = v193;
        v206 = v240;
        if ((*v265)(v192, 1, v240) == 1)
        {

          sub_1000159AC(v192, v197, &qword_10011A700);
          v207 = sub_1000077C8(&unk_100173CB0, &unk_10011AE50);
          (*(*(v207 - 8) + 8))(&v205[v266], v207);
          v208 = type metadata accessor for SFAirDropReceive.ItemDestination();
          (*(*(v208 - 8) + 8))(v205, v208);
          v193 = v205;
LABEL_304:
          ++v195;
          v88 = v270;
          if (v273 == v271)
          {
            v274 = v276;
            if (v276 < 0 || (v274 & 0x4000000000000000) != 0)
            {
              goto LABEL_365;
            }

            v273 = *(v274 + 16);
            if (v273)
            {
              goto LABEL_320;
            }

LABEL_366:

            if (v275)
            {
              goto LABEL_388;
            }

            if (v88[2])
            {
              v33 = v88[4];

              goto LABEL_369;
            }

            __break(1u);
            return result;
          }

          continue;
        }

        v209 = v192;
        v210 = v244;
        (*v264)(v244, v209, v206);
        v211 = v245;
        static Date.now.getter();
        Date.timeIntervalSince(_:)();
        v213 = v212;
        KeyPath = v263;
        v214 = *v263;
        (*v263)(v211, v206);
        v214(v210, v206);
        v215 = sub_1000077C8(&unk_100173CB0, &unk_10011AE50);
        v193 = v247;
        (*(*(v215 - 8) + 8))(&v247[v266], v215);
        v216 = type metadata accessor for SFAirDropReceive.ItemDestination();
        (*(*(v216 - 8) + 8))(v193, v216);
        if (v213 <= 7.0)
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          KeyPath = *(v276 + 16);
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
        }

        else
        {
        }

        v192 = v246;
      }

      else
      {

        (*v269)(v193, v198);
      }

      break;
    }

    v33 = v197;
    goto LABEL_304;
  }

LABEL_300:
  v192 = _CocoaArrayWrapper.endIndex.getter();
  v193 = v247;
  if (!v192)
  {
    goto LABEL_301;
  }

LABEL_289:
  KeyPath = v33 & 0xC000000000000001;
  if ((v33 & 0xC000000000000001) != 0)
  {
    goto LABEL_347;
  }

  if (!*(v33 + 16))
  {
    goto LABEL_364;
  }

  v109 = *(v33 + 32);

  if (v192 == 1)
  {
    goto LABEL_292;
  }

LABEL_348:
  v226 = 1;
  v88 = &OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_startTime;
  while (2)
  {
    if (KeyPath)
    {
      v89 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v227 = v226 + 1;
      if (__OFADD__(v226, 1))
      {
        break;
      }

      goto LABEL_356;
    }

    if ((v226 & 0x8000000000000000) != 0)
    {
      goto LABEL_362;
    }

    if (v226 >= *(v33 + 16))
    {
      goto LABEL_363;
    }

    v89 = *(v33 + 8 * v226 + 32);

    v227 = v226 + 1;
    if (!__OFADD__(v226, 1))
    {
LABEL_356:
      if (static Date.< infix(_:_:)())
      {

        v109 = v89;
        v226 = v227;
        if (v227 == v192)
        {
          goto LABEL_293;
        }
      }

      else
      {

        ++v226;
        if (v227 == v192)
        {
          goto LABEL_292;
        }
      }

      continue;
    }

    break;
  }

  __break(1u);
LABEL_362:
  __break(1u);
LABEL_363:
  __break(1u);
LABEL_364:
  __break(1u);
LABEL_365:
  v273 = _CocoaArrayWrapper.endIndex.getter();
  if (!v273)
  {
    goto LABEL_366;
  }

LABEL_320:
  v95 = (v274 & 0xC000000000000001);
  if ((v274 & 0xC000000000000001) == 0)
  {
    if (*(v274 + 16))
    {
      v89 = *(v274 + 32);

      goto LABEL_323;
    }

    __break(1u);
LABEL_388:
    v33 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_369:
    if (v271 == 1)
    {
LABEL_370:
      v89 = v33;
      goto LABEL_294;
    }

    v192 = 1;
    while (1)
    {
      if (v275)
      {
        v89 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if ((v192 & 0x8000000000000000) != 0)
        {
          goto LABEL_384;
        }

        if (v192 >= v88[2])
        {
          goto LABEL_385;
        }

        v89 = v88[v192 + 4];
      }

      KeyPath = v192 + 1;
      if (__OFADD__(v192, 1))
      {
        break;
      }

      if (static Date.< infix(_:_:)())
      {

        v33 = v89;
        ++v192;
        if (KeyPath == v271)
        {
          goto LABEL_294;
        }
      }

      else
      {

        ++v192;
        if (KeyPath == v271)
        {
          goto LABEL_370;
        }
      }
    }

    __break(1u);
LABEL_384:
    __break(1u);
LABEL_385:
    __break(1u);
  }

  v89 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_323:
  if (v273 == 1)
  {
    goto LABEL_293;
  }

  v217 = 1;
  v271 = v95;
  v218 = v240;
  while (2)
  {
    v219 = v89;
    v272 = v89;
    while (2)
    {
      if (v95)
      {
        v89 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if ((v217 & 0x8000000000000000) != 0)
        {
          goto LABEL_345;
        }

        if (v217 >= *(v274 + 16))
        {
          goto LABEL_346;
        }

        v89 = *(v274 + 8 * v217 + 32);
      }

      v192 = v217 + 1;
      if (__OFADD__(v217, 1))
      {
        goto LABEL_344;
      }

      v220 = OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_waitingForOpenResponseStateStartTime;
      swift_beginAccess();
      v33 = v248;
      sub_100007BA4(v219 + v220, v248, &unk_100174FA0, &qword_10011A700);
      KeyPath = *v265;
      if ((*v265)(v33, 1, v218) == 1)
      {
        goto LABEL_327;
      }

      v221 = v239;
      v275 = *v264;
      (v275)(v239, v248, v218);
      v222 = OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_waitingForOpenResponseStateStartTime;
      swift_beginAccess();
      v223 = v89 + v222;
      v224 = v238;
      sub_100007BA4(v223, v238, &unk_100174FA0, &qword_10011A700);
      if ((KeyPath)(v224, 1, v218) == 1)
      {
        (*v263)(v221, v218);
        v33 = v224;
        v95 = v271;
        v219 = v272;
LABEL_327:
        sub_1000159AC(v33, &unk_100174FA0, &qword_10011A700);
        if (static Date.< infix(_:_:)())
        {
          break;
        }

        goto LABEL_328;
      }

      v33 = v237;
      (v275)(v237, v224, v218);
      KeyPath = static Date.< infix(_:_:)();
      v225 = *v263;
      (*v263)(v33, v218);
      v225(v221, v218);
      v95 = v271;
      v219 = v272;
      if ((KeyPath & 1) == 0)
      {
LABEL_328:

        ++v217;
        if (v192 == v273)
        {
          v89 = v219;
          goto LABEL_293;
        }

        continue;
      }

      break;
    }

    ++v217;
    if (v192 != v273)
    {
      continue;
    }

    break;
  }

LABEL_293:

LABEL_294:

  return v89;
}

void sub_1001032D4()
{
  if (*(v0 + 32))
  {
    v1 = qword_100172248;
    v2 = *(v0 + 32);

    if (v1 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_100007D20(v3, qword_1001788F8);

    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v13 = v7;
      *v6 = 136315138;
      v8 = Activity.id.getter();
      v10 = sub_10003E81C(v8, v9, &v13);

      *(v6 + 4) = v10;
      _os_log_impl(&_mh_execute_header, v4, v5, "Requesting AirDrop banner for activity %s", v6, 0xCu);
      sub_100007920(v7);
    }

    v11 = Activity.id.getter();
    sub_1000FC5B0(v11, v12);
  }
}

uint64_t sub_100103474()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1001034AC()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1001034F8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_100103510()
{
  result = qword_100178AE0;
  if (!qword_100178AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100178AE0);
  }

  return result;
}

uint64_t sub_100103564()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  v3 = *(v0 + 48);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1001035B4()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_10000BCF0;

  return sub_1000FD3F4(v2, v3, v4, v5, v6);
}

void sub_100103670(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  if (qword_100172248 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_100007D20(v12, qword_1001788F8);

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v17 = a1;
    v18 = a6;
    v19 = a5;
    v20 = a4;
    v21 = v16;
    v30 = v16;
    *v15 = 136315138;
    *(v15 + 4) = sub_10003E81C(v17, a2, &v30);
    _os_log_impl(&_mh_execute_header, v13, v14, "Assertion invalidated [sessionIdentifier = %s]", v15, 0xCu);
    sub_100007920(v21);
    a4 = v20;
    a5 = v19;
    a6 = v18;
  }

  if (a3 == 2)
  {
    v22 = 0;
  }

  else
  {
    if (a3 == 1)
    {
      return;
    }

    if (a3)
    {
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return;
    }

    v22 = 7;
  }

  if (a5)
  {
    v23 = v22;
  }

  else
  {
    v23 = a4;
  }

  sub_100103510();
  swift_allocError();
  *v24 = a3;
  v24[1] = v23;
  v24[2] = a6;
  swift_willThrow();
  swift_errorRetain();
  swift_errorRetain();
  oslog = Logger.logObject.getter();
  v25 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v26 = 138412290;
    swift_errorRetain();
    v28 = _swift_stdlib_bridgeErrorToNSError();
    *(v26 + 4) = v28;
    *v27 = v28;
    _os_log_impl(&_mh_execute_header, oslog, v25, "Assertion invalidation reason: %@", v26, 0xCu);
    sub_1000159AC(v27, &qword_100172EB0, &qword_100119410);
  }

  else
  {
  }
}

uint64_t sub_100103A80()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100103AC0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1000167E4;

  return sub_100096C6C(a1, v4, v5, v6);
}

uint64_t sub_100103B74(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10000BCF0;

  return sub_10003E520(a1, v5);
}

uint64_t sub_100103C90(uint64_t a1)
{
  v1 = *(a1 + 16);
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

uint64_t sub_100103CB4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 24))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  if ((v4 + 1) >= 2)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100103D10(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 1;
    }
  }

  return result;
}

void *sub_100103D70(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    result[1] = 0;
    result[2] = 0;
    *result = a2 - 0x7FFFFFFF;
  }

  else if (a2)
  {
    result[2] = a2;
  }

  return result;
}

uint64_t sub_100103DB0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100103E14()
{
  v0 = type metadata accessor for Logger();
  sub_1000154C0(v0, qword_100178B00);
  v1 = sub_100007D20(v0, qword_100178B00);
  if (qword_100172210 != -1)
  {
    swift_once();
  }

  v2 = sub_100007D20(v0, qword_10017F338);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100103EDC()
{
  v1 = sub_100104990(*(v0 + 8));
  v2 = *(v0 + 24);
  v3 = *(v0 + 16);
  objc_allocWithZone(type metadata accessor for AirDropSystemApertureProgressView());
  v4 = v1;
  v5 = v2;
  v6 = 1;
  sub_100109044(v5, 8, v3, v1, 0, 1);
  v8 = v7;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v9 = *(v8 + OBJC_IVAR____TtC9AirDropUI33AirDropSystemApertureProgressView_progress);
  *(v8 + OBJC_IVAR____TtC9AirDropUI33AirDropSystemApertureProgressView_progress) = v13;
  v10 = v13;

  sub_100108C54();
  v11 = OBJC_IVAR____TtC9AirDropUI25AirDropSystemApertureView_expanded;
  *(v8 + OBJC_IVAR____TtC9AirDropUI25AirDropSystemApertureView_expanded) = 1;
  sub_100109800();
  if (*(v8 + v11) == 1)
  {
    v6 = *(v8 + OBJC_IVAR____TtC9AirDropUI33AirDropSystemApertureProgressView_cancelAction) == 0;
  }

  [*(v8 + OBJC_IVAR____TtC9AirDropUI33AirDropSystemApertureProgressView_transparentCancelButton) setHidden:v6];

  return v8;
}

uint64_t sub_100104034(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for SFAirDrop.DeclineAction();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v6 = sub_1000077C8(&qword_100172F50, &qword_10011E500);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v18 - v8;
  if (qword_100172258 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_100007D20(v10, qword_100178B00);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "Cancel button was tapped. Triggering cancel on AirDropTransferSession", v13, 2u);
  }

  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v9, 1, 1, v14);
  (*(v4 + 16))(&v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v3);
  v15 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v16 = swift_allocObject();
  (*(v4 + 32))(v16 + v15, &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  static Task<>.noThrow(priority:operation:)();

  return sub_1000159AC(v9, &qword_100172F50, &qword_10011E500);
}

uint64_t sub_1001042E0(uint64_t a1, uint64_t a2)
{
  v2[2] = a2;
  v3 = type metadata accessor for SFAirDrop.DeclineAction();
  v2[3] = v3;
  v4 = *(v3 - 8);
  v2[4] = v4;
  v5 = *(v4 + 64) + 15;
  v2[5] = swift_task_alloc();
  v2[6] = type metadata accessor for MainActor();
  v2[7] = static MainActor.shared.getter();
  v6 = async function pointer to SFAirDrop.DeclineAction.decline()[1];
  v7 = swift_task_alloc();
  v2[8] = v7;
  *v7 = v2;
  v7[1] = sub_1001043F0;

  return SFAirDrop.DeclineAction.decline()();
}

uint64_t sub_1001043F0()
{
  v2 = v0;
  v3 = *(*v1 + 64);
  v4 = *(*v1 + 56);
  v5 = *(*v1 + 48);
  v10 = *v1;
  *(*v1 + 72) = v2;

  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  if (v2)
  {
    v8 = sub_1001045B4;
  }

  else
  {
    v8 = sub_10010454C;
  }

  return _swift_task_switch(v8, v7, v6);
}

uint64_t sub_10010454C()
{
  v1 = v0[7];

  v2 = v0[5];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1001045B4()
{
  v28 = v0;
  v1 = v0[7];

  if (qword_100172258 != -1)
  {
    swift_once();
  }

  v2 = v0[9];
  v4 = v0[4];
  v3 = v0[5];
  v6 = v0[2];
  v5 = v0[3];
  v7 = type metadata accessor for Logger();
  sub_100007D20(v7, qword_100178B00);
  (*(v4 + 16))(v3, v6, v5);
  swift_errorRetain();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[9];
  v13 = v0[4];
  v12 = v0[5];
  v14 = v0[3];
  if (v10)
  {
    v15 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v27 = v26;
    *v15 = 136315394;
    v16 = SFAirDrop.DeclineAction.id.getter();
    v18 = v17;
    (*(v13 + 8))(v12, v14);
    v19 = sub_10003E81C(v16, v18, &v27);

    *(v15 + 4) = v19;
    *(v15 + 12) = 2112;
    swift_errorRetain();
    v20 = _swift_stdlib_bridgeErrorToNSError();
    *(v15 + 14) = v20;
    *v25 = v20;
    _os_log_impl(&_mh_execute_header, v8, v9, "AirDrop transfer cancel action %s failed with error %@", v15, 0x16u);
    sub_1000159AC(v25, &qword_100172EB0, &qword_100119410);

    sub_100007920(v26);
  }

  else
  {
    v21 = v0[9];

    (*(v13 + 8))(v12, v14);
  }

  v22 = v0[5];

  v23 = v0[1];

  return v23();
}

uint64_t sub_100104848(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100105238();

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_1001048AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100105238();

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_100104910()
{
  sub_100105238();
  UIViewRepresentable.body.getter();
  __break(1u);
}

unint64_t sub_10010493C()
{
  result = qword_100178B18;
  if (!qword_100178B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100178B18);
  }

  return result;
}

uint64_t sub_100104990(unint64_t a1)
{
  v37 = a1;
  v1 = sub_1000077C8(&qword_100172FD0, &qword_10011A210);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v36 = v33 - v3;
  v4 = type metadata accessor for SFAirDropReceive.Transfer.State();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000077C8(&unk_100173C50, &qword_10011D9D0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = v33 - v14;
  v16 = type metadata accessor for SFAirDrop.DeclineAction();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v34 = v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v35 = v33 - v20;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  SFAirDropReceive.Transfer.State.cancelAction.getter();
  (*(v5 + 8))(v8, v4);
  v21 = *(v17 + 48);
  if (v21(v12, 1, v16) == 1)
  {
    v33[1] = v18;
    swift_getKeyPath();
    swift_getKeyPath();
    v22 = v36;
    static Published.subscript.getter();

    v23 = type metadata accessor for SFAirDropSend.Transfer.State();
    v24 = *(v23 - 8);
    if ((*(v24 + 48))(v22, 1, v23) == 1)
    {
      sub_1000159AC(v36, &qword_100172FD0, &qword_10011A210);
      (*(v17 + 56))(v15, 1, 1, v16);
    }

    else
    {
      v25 = v36;
      SFAirDropSend.Transfer.State.cancelAction.getter();
      (*(v24 + 8))(v25, v23);
    }

    if (v21(v12, 1, v16) != 1)
    {
      sub_1000159AC(v12, &unk_100173C50, &qword_10011D9D0);
    }
  }

  else
  {
    (*(v17 + 32))(v15, v12, v16);
    (*(v17 + 56))(v15, 0, 1, v16);
  }

  if (v21(v15, 1, v16) == 1)
  {
    sub_1000159AC(v15, &unk_100173C50, &qword_10011D9D0);
    return 0;
  }

  else
  {
    v27 = *(v17 + 32);
    v28 = v35;
    v27(v35, v15, v16);
    v37 = sub_100105014();
    SFAirDrop.DeclineAction.id.getter();
    String._bridgeToObjectiveC()();

    v29 = v34;
    (*(v17 + 16))(v34, v28, v16);
    v30 = (*(v17 + 80) + 16) & ~*(v17 + 80);
    v31 = swift_allocObject();
    v27((v31 + v30), v29, v16);
    v32 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    (*(v17 + 8))(v28, v16);
    return v32;
  }
}

void sub_100104F1C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v5 = *(a1 + OBJC_IVAR____TtC9AirDropUI33AirDropSystemApertureProgressView_progress);
  *(a1 + OBJC_IVAR____TtC9AirDropUI33AirDropSystemApertureProgressView_progress) = v10;
  v6 = v10;

  sub_100108C54();
  v7 = sub_100104990(a3);
  v8 = *(a1 + OBJC_IVAR____TtC9AirDropUI33AirDropSystemApertureProgressView_cancelAction);
  *(a1 + OBJC_IVAR____TtC9AirDropUI33AirDropSystemApertureProgressView_cancelAction) = v7;
  v9 = v7;
  sub_100108DA8(v8);
}

unint64_t sub_100105014()
{
  result = qword_1001760F0;
  if (!qword_1001760F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1001760F0);
  }

  return result;
}

uint64_t sub_100105064(uint64_t a1)
{
  v3 = *(type metadata accessor for SFAirDrop.DeclineAction() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_100104034(a1, v4);
}

uint64_t sub_1001050D4()
{
  v1 = type metadata accessor for SFAirDrop.DeclineAction();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10010515C(uint64_t a1)
{
  v4 = *(type metadata accessor for SFAirDrop.DeclineAction() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10000BCF0;

  return sub_1001042E0(a1, v1 + v5);
}

unint64_t sub_100105238()
{
  result = qword_100178B20;
  if (!qword_100178B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100178B20);
  }

  return result;
}

void sub_1001052BC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v31[0] = a3;
  v31[1] = a1;
  v6 = sub_1000077C8(&qword_100174100, &qword_10011AD08);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = v31 - v11;
  v13 = type metadata accessor for DeviceLockState();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = v31 - v19;
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.getter();

  (*(v14 + 104))(v17, enum case for DeviceLockState.unlocked(_:), v13);
  v21 = static DeviceLockState.== infix(_:_:)();
  v22 = *(v14 + 8);
  v22(v17, v13);
  v22(v20, v13);
  if (v21)
  {
    type metadata accessor for AirDropTransferSession();
    sub_10004DD0C();
    v23 = ObservedObject.init(wrappedValue:)();
    v25 = v24;
    v26 = v31[0];
    v27 = v31[0] & 1;

    v28 = 2;
  }

  else
  {

    v23 = 0;
    v25 = 0;
    v27 = 0;
    v28 = 0;
    v26 = v31[0];
  }

  *v12 = static HorizontalAlignment.leading.getter();
  *(v12 + 1) = 0;
  v12[16] = 0;
  v29 = sub_1000077C8(&qword_100174108, &qword_10011CEB0);
  sub_10010562C(a2, v26 & 1, &v12[*(v29 + 44)]);
  sub_100007BA4(v12, v9, &qword_100174100, &qword_10011AD08);
  *a4 = v23;
  *(a4 + 8) = v25;
  *(a4 + 16) = v27;
  *(a4 + 24) = 0;
  *(a4 + 32) = v28;
  *(a4 + 40) = 0;
  v30 = sub_1000077C8(&qword_100178B40, &unk_100122060);
  sub_100007BA4(v9, a4 + *(v30 + 48), &qword_100174100, &qword_10011AD08);
  sub_10004DC44(v23, v25, v27, 0, v28);
  sub_10004DCA8(v23, v25, v27, 0, v28);
  sub_1000159AC(v12, &qword_100174100, &qword_10011AD08);
  sub_1000159AC(v9, &qword_100174100, &qword_10011AD08);
  sub_10004DCA8(v23, v25, v27, 0, v28);
}

uint64_t sub_10010562C@<X0>(uint64_t a1@<X1>, char a2@<W2>, uint64_t a3@<X8>)
{
  v49 = type metadata accessor for Font.TextStyle();
  v6 = *(v49 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v49);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for AirDropDescriptionView();
  v11 = *(*(v10 - 1) + 64);
  __chkstk_darwin(v10);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_1000077C8(&qword_100174138, &unk_10011AE80);
  v14 = *(*(v50 - 8) + 64);
  __chkstk_darwin(v50);
  v16 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v40 - v18;
  __chkstk_darwin(v20);
  v22 = &v40 - v21;
  if (a2)
  {
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v47 = 0;
    v48 = v53;
    v46 = v55;
    v45 = v57;
    v44 = v58;
    LOBYTE(v59[0]) = 1;
    v52 = v54;
    v51 = v56;
    v41 = 1;
    v42 = v54;
    v43 = v56;
    LOBYTE(v61) = 0;
  }

  else
  {
    v48 = 0;
    v46 = 0;
    v45 = 0;
    v44 = 0;
    v43 = 0;
    v42 = 0;
    v41 = 0;
    v47 = 1;
  }

  v23 = sub_100105AFC();
  v24 = a1;
  v26 = v25;
  sub_1001063AC(v24, v59);
  *&v61 = 0x402C000000000000;
  (*(v6 + 104))(v9, enum case for Font.TextStyle.subheadline(_:), v49);
  sub_10004A578();
  ScaledMetric.init(wrappedValue:relativeTo:)();
  v27 = &v13[v10[5]];
  *v27 = v23;
  v27[1] = v26;
  v28 = &v13[v10[6]];
  v29 = v59[1];
  *v28 = v59[0];
  *(v28 + 1) = v29;
  v28[32] = v60;
  *&v13[v10[7]] = 0x3FE0000000000000;
  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_10004DDC8(v13, v19);
  v30 = &v19[*(v50 + 36)];
  v31 = v66;
  *(v30 + 4) = v65;
  *(v30 + 5) = v31;
  *(v30 + 6) = v67;
  v32 = v62;
  *v30 = v61;
  *(v30 + 1) = v32;
  v33 = v64;
  *(v30 + 2) = v63;
  *(v30 + 3) = v33;
  sub_100021A84(v19, v22, &qword_100174138, &unk_10011AE80);
  sub_100007BA4(v22, v16, &qword_100174138, &unk_10011AE80);
  v34 = v41;
  *a3 = 0;
  *(a3 + 8) = v34;
  v35 = v42;
  *(a3 + 16) = v48;
  *(a3 + 24) = v35;
  v36 = v43;
  *(a3 + 32) = v46;
  *(a3 + 40) = v36;
  v37 = v44;
  *(a3 + 48) = v45;
  *(a3 + 56) = v37;
  *(a3 + 64) = v47;
  v38 = sub_1000077C8(&qword_100174140, &qword_100122070);
  sub_100007BA4(v16, a3 + *(v38 + 48), &qword_100174138, &unk_10011AE80);
  sub_1000159AC(v22, &qword_100174138, &unk_10011AE80);
  return sub_1000159AC(v16, &qword_100174138, &unk_10011AE80);
}

uint64_t sub_100105AFC()
{
  v0 = type metadata accessor for SFAirDropReceive.Transfer.State();
  v48 = *(v0 - 8);
  v49 = v0;
  v1 = *(v48 + 64);
  __chkstk_darwin(v0);
  v3 = &v45 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Locale();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v51 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for String.LocalizationValue();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v50 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for SFAirDropSend.Failure();
  v45 = *(v10 - 8);
  v46 = v10;
  v11 = *(v45 + 64);
  __chkstk_darwin(v10);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v47 = &v45 - v15;
  v16 = sub_1000077C8(&qword_100172FD0, &qword_10011A210);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v19 = &v45 - v18;
  v20 = type metadata accessor for SFAirDropSend.Transfer.State();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  __chkstk_darwin(v20);
  v24 = &v45 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v27 = &v45 - v26;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if ((*(v21 + 48))(v19, 1, v20) == 1)
  {
    sub_1000159AC(v19, &qword_100172FD0, &qword_10011A210);
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v28 = SFAirDropReceive.Transfer.State.sfTransferState.getter();
    v29 = v49;
    v30 = *(v48 + 8);
    v30(v3, v49);
    if (v28 == 9 || (swift_getKeyPath(), swift_getKeyPath(), static Published.subscript.getter(), , , v37 = SFAirDropReceive.Transfer.State.sfTransferState.getter(), v30(v3, v29), v37 == 3))
    {
      String.LocalizationValue.init(stringLiteral:)();
      static Locale.current.getter();
      return String.init(localized:table:bundle:locale:comment:)();
    }

    else
    {
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      return v52;
    }
  }

  else
  {
    (*(v21 + 32))(v27, v19, v20);
    (*(v21 + 16))(v24, v27, v20);
    if ((*(v21 + 88))(v24, v20) == enum case for SFAirDropSend.Transfer.State.transferFailed(_:))
    {
      (*(v21 + 96))(v24, v20);
      v31 = sub_1000077C8(&qword_100172F20, &qword_100118F10);
      v32 = v45;
      v33 = v46;
      v34 = v47;
      (*(v45 + 32))(v47, &v24[*(v31 + 48)], v46);
      (*(v32 + 16))(v13, v34, v33);
      v35 = (*(v32 + 88))(v13, v33);
      if (v35 == enum case for SFAirDropSend.Failure.receiverDeclined(_:))
      {
        String.LocalizationValue.init(stringLiteral:)();
        static Locale.current.getter();
        v36 = String.init(localized:table:bundle:locale:comment:)();
        (*(v32 + 8))(v34, v33);
        (*(v21 + 8))(v27, v20);
      }

      else
      {
        v41 = (v32 + 8);
        v42 = (v21 + 8);
        if (v35 == enum case for SFAirDropSend.Failure.cancelled(_:))
        {
          String.LocalizationValue.init(stringLiteral:)();
          static Locale.current.getter();
          v36 = String.init(localized:table:bundle:locale:comment:)();
          (*v41)(v47, v33);
          (*v42)(v27, v20);
        }

        else
        {
          String.LocalizationValue.init(stringLiteral:)();
          static Locale.current.getter();
          v36 = String.init(localized:table:bundle:locale:comment:)();
          v43 = *v41;
          (*v41)(v47, v33);
          (*v42)(v27, v20);
          v43(v13, v33);
        }
      }

      v44 = type metadata accessor for SFAirDropSend.Transfer.Metrics();
      (*(*(v44 - 8) + 8))(v24, v44);
      return v36;
    }

    else
    {
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v39 = *(v21 + 8);
      v39(v27, v20);
      v40 = v52;
      v39(v24, v20);
      return v40;
    }
  }
}

uint64_t sub_1001063AC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v35[3] = a1;
  v3 = type metadata accessor for Locale();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v35[2] = v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for String.LocalizationValue();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v35[1] = v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for SFAirDropReceive.Failure();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v36 = v35 - v15;
  v16 = type metadata accessor for SFAirDropReceive.Transfer.State();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = v35 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = v35 - v22;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  (*(v17 + 16))(v20, v23, v16);
  if ((*(v17 + 88))(v20, v16) != enum case for SFAirDropReceive.Transfer.State.transferFailed(_:))
  {
    v33 = *(v17 + 8);
    v33(v23, v16);
    result = (v33)(v20, v16);
LABEL_6:
    v27 = 0;
    v29 = 0;
    v32 = 0;
    v31 = -64;
    goto LABEL_7;
  }

  (*(v17 + 96))(v20, v16);
  v24 = sub_1000077C8(&qword_100174FB0, &unk_10011C5E0);
  v25 = v36;
  (*(v10 + 32))(v36, &v20[*(v24 + 48)], v9);
  v26 = type metadata accessor for SFAirDropReceive.Transfer.Metrics();
  (*(*(v26 - 8) + 8))(v20, v26);
  (*(v10 + 16))(v13, v25, v9);
  if ((*(v10 + 88))(v13, v9) != enum case for SFAirDropReceive.Failure.insufficientStorage(_:))
  {
    v34 = *(v10 + 8);
    v34(v36, v9);
    (*(v17 + 8))(v23, v16);
    result = (v34)(v13, v9);
    goto LABEL_6;
  }

  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v27 = String.init(localized:table:bundle:locale:comment:)();
  v29 = v28;
  (*(v10 + 8))(v36, v9);
  result = (*(v17 + 8))(v23, v16);
  v31 = 0;
  v32 = 1;
LABEL_7:
  *a2 = v27;
  *(a2 + 8) = v29;
  *(a2 + 16) = 0;
  *(a2 + 24) = v32;
  *(a2 + 32) = v31;
  return result;
}

uint64_t sub_100106858@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1000077C8(&qword_100178B28, &qword_100121FF0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v17 - v5;
  v7 = *v1;
  v8 = *(v1 + 8);
  v9 = *(v1 + 16);
  *v6 = static VerticalAlignment.center.getter();
  *(v6 + 1) = 0x4028000000000000;
  v6[16] = 0;
  v10 = sub_1000077C8(&qword_100178B30, &qword_100121FF8);
  sub_1001052BC(v7, v8, v9, &v6[*(v10 + 44)]);
  if (v9)
  {
    v11 = 0x402E000000000000;
  }

  else
  {
    v11 = 0x4030000000000000;
  }

  if (v9)
  {
    v12 = 0x4036000000000000;
  }

  else
  {
    v12 = 0x4030000000000000;
  }

  if (v9)
  {
    v13 = 0x4031000000000000;
  }

  else
  {
    v13 = 0x4030000000000000;
  }

  v14 = static Edge.Set.all.getter();
  sub_100021A84(v6, a1, &qword_100178B28, &qword_100121FF0);
  result = sub_1000077C8(&qword_100178B38, &unk_100122000);
  v16 = a1 + *(result + 36);
  *v16 = v14;
  *(v16 + 8) = v11;
  *(v16 + 16) = v12;
  *(v16 + 24) = v11;
  *(v16 + 32) = v13;
  *(v16 + 40) = 0;
  return result;
}

unint64_t sub_1001069B8()
{
  result = qword_100178B48;
  if (!qword_100178B48)
  {
    sub_100007CCC(&qword_100178B38, &unk_100122000);
    sub_100106A44();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100178B48);
  }

  return result;
}

unint64_t sub_100106A44()
{
  result = qword_100178B50;
  if (!qword_100178B50)
  {
    sub_100007CCC(&qword_100178B28, &qword_100121FF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100178B50);
  }

  return result;
}

uint64_t sub_100106B40(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_100106B84(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

uint64_t sub_100106BF8()
{
  sub_10001F364();
  EnvironmentValues.subscript.getter();
  return v1;
}

uint64_t sub_100106C34@<X0>(uint64_t a1@<X8>)
{
  if (*v1)
  {
    v3 = v1[2];
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.getter();

    v4 = static Edge.Set.all.getter();
    v5 = static Color.black.getter();
    v6 = static Edge.Set.all.getter();
    *a1 = v3;
    *(a1 + 8) = v4;
    *(a1 + 16) = v9;
    *(a1 + 32) = v10;
    *(a1 + 48) = 0;
    *(a1 + 56) = v5;
    *(a1 + 64) = v6;
  }

  else
  {
    v8 = v1[1];
    type metadata accessor for SystemApertureLayoutState();
    sub_100108AB4(&qword_1001733A0, type metadata accessor for SystemApertureLayoutState);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_100106DC8(uint64_t result)
{
  *(v1 + qword_100178B60) = result;
  v2 = *(v1 + qword_100178B60);
  if ((v2 - 3) <= 1)
  {
    *(v1 + qword_100178B70) = v2;
  }

  return result;
}

id sub_100106F3C()
{
  sub_100108704();
  if (v0)
  {

    v1 = String._bridgeToObjectiveC()();
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

void sub_100106FA8(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = a1;
  sub_100107028(v4, v6);
}

uint64_t sub_100107028(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + qword_100178B80);
  v4 = *(v2 + qword_100178B80 + 8);
  *v3 = a1;
  v3[1] = a2;
}

id sub_100107044()
{
  v0 = sub_100108718();

  return v0;
}

void sub_100107078(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = a1;
  sub_1001070D4(a3);
}

uint64_t sub_1001070D4(uint64_t a1)
{
  v2 = *(v1 + qword_100178B88);
  *(v1 + qword_100178B88) = a1;
  return _objc_release_x1();
}

id sub_100107158()
{
  v0 = sub_100108728();

  return v0;
}

void sub_10010718C(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = a1;
  sub_1001071E8(a3);
}

uint64_t sub_1001071E8(uint64_t a1)
{
  v2 = *(v1 + qword_100178BB0);
  *(v1 + qword_100178BB0) = a1;
  return _objc_release_x1();
}

id sub_1001071FC()
{
  v0 = sub_100108738();

  return v0;
}

void sub_100107230(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = a1;
  sub_10010728C(a3);
}

uint64_t sub_10010728C(uint64_t a1)
{
  v2 = *(v1 + qword_100178BC0);
  *(v1 + qword_100178BC0) = a1;
  return _objc_release_x1();
}

id sub_1001072A0()
{
  v0 = sub_100108748();

  return v0;
}

void sub_1001072D4(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = a1;
  sub_100107330(a3);
}

uint64_t sub_100107330(uint64_t a1)
{
  v2 = *(v1 + qword_100178BD0);
  *(v1 + qword_100178BD0) = a1;
  return _objc_release_x1();
}

id sub_100107344()
{
  v0 = sub_100108758();

  return v0;
}

void sub_1001073B4(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  sub_100107408(a3);
}

uint64_t sub_100107408(uint64_t a1)
{
  v2 = *(v1 + qword_100178BE0);
  *(v1 + qword_100178BE0) = a1;
  return sub_100107420(v2);
}

uint64_t sub_100107420(uint64_t result)
{
  if (*&v1[qword_100178BE0] != result)
  {
    [objc_msgSend(v1 "systemApertureElementContext")];

    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_1001074C0()
{
  v1 = *&v0[qword_100178B60];
  if (v1 == 3)
  {
    v18 = *&v0[qword_100178BB0];
    if (v18)
    {
      v19 = v18;
      result = [v0 view];
      if (!result)
      {
LABEL_26:
        __break(1u);
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      v20 = result;
      v21 = [result SBUISA_systemApertureLeadingConcentricContentLayoutGuide];

      [v21 layoutFrame];
      v23 = v22;
      v25 = v24;
      v27 = v26;
      v29 = v28;

      v48.origin.x = v23;
      v48.origin.y = v25;
      v48.size.width = v27;
      v48.size.height = v29;
      MidX = CGRectGetMidX(v48);
      [v19 center];
      [v19 setCenter:MidX];
    }

    v31 = *&v0[qword_100178BC0];
    if (!v31)
    {
      goto LABEL_16;
    }

    v15 = v31;
    result = [v0 view];
    if (result)
    {
      v32 = result;
      v33 = [result SBUISA_systemApertureTrailingConcentricContentLayoutGuide];

      [v33 layoutFrame];
      v35 = v34;
      v37 = v36;
      v39 = v38;
      v41 = v40;

      v49.origin.x = v35;
      v49.origin.y = v37;
      v49.size.width = v39;
      v49.size.height = v41;
      v16 = CGRectGetMidX(v49);
      [v15 center];
      goto LABEL_15;
    }

    goto LABEL_27;
  }

  if (v1 != 4)
  {
    goto LABEL_16;
  }

  result = [v0 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_26;
  }

  v3 = result;
  [result bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = *&v0[qword_100178BA0];
  if (!v12)
  {
    goto LABEL_16;
  }

  result = [v12 view];
  if (!result)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v13 = result;
  [result frame];
  [v13 setFrame:?];

  v14 = *&v0[qword_100178BA0];
  if (v14)
  {
    result = [v14 view];
    if (result)
    {
      v15 = result;
      v46.origin.x = v5;
      v46.origin.y = v7;
      v46.size.width = v9;
      v46.size.height = v11;
      v16 = CGRectGetMidX(v46);
      v47.origin.x = v5;
      v47.origin.y = v7;
      v47.size.width = v9;
      v47.size.height = v11;
      MidY = CGRectGetMidY(v47);
LABEL_15:
      [v15 setCenter:{v16, MidY}];

      goto LABEL_16;
    }

LABEL_29:
    __break(1u);
    return result;
  }

LABEL_16:
  v42 = *&v0[qword_100178B60];
  v43 = *&v0[qword_100178BB0];
  if (v43)
  {
    [v43 setHidden:v42 == 4];
  }

  v44 = *&v0[qword_100178BC0];
  if (v44)
  {
    [v44 setHidden:v42 == 4];
  }

  result = *&v0[qword_100178BD0];
  if (result)
  {

    return [result setHidden:v42 == 4];
  }

  return result;
}

void sub_10010782C(void *a1)
{
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  v6[4] = sub_1001086E4;
  v6[5] = v3;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 1107296256;
  v6[2] = sub_100106B84;
  v6[3] = &unk_100161FD0;
  v4 = _Block_copy(v6);
  v5 = v1;

  [a1 animateAlongsideTransition:v4 completion:0];
  _Block_release(v4);
}

id sub_100107908(uint64_t a1, void *a2)
{
  v3 = *(a2 + qword_100178BA8);
  v4 = swift_isaMask & *a2;
  v5 = *(v4 + 0x50);
  v6 = *(v4 + 88);
  type metadata accessor for SystemApertureElementHostingController();

  sub_100023848(a2);

  v7 = *(a2 + qword_100178B98);
  sub_100007350(a2, v7);

  return sub_1001074C0();
}

void sub_1001079CC(void *a1, uint64_t a2, void *a3)
{
  swift_unknownObjectRetain();
  v5 = a1;
  sub_10010782C(a3);
  swift_unknownObjectRelease();
}

void sub_100107A44(void *a1)
{
  swift_unknownObjectRetain();
  v2 = a1;
  sub_100108938();
  swift_unknownObjectRelease();
}

void sub_100107AA4(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = *((swift_isaMask & *a1) + 0x50);
  v5 = *((swift_isaMask & *a1) + 0x58);
  v6 = a4;

  sub_100108A84();
}

id sub_100107B14()
{
  v1 = *((swift_isaMask & *v0) + 0x50);
  v2 = *((swift_isaMask & *v0) + 0x58);
  v4.receiver = v0;
  v4.super_class = type metadata accessor for SystemApertureElementHostingController();
  return objc_msgSendSuper2(&v4, "dealloc");
}

void sub_100107B84(uint64_t a1)
{
  v2 = *(a1 + qword_100178B80 + 8);

  v3 = *(a1 + qword_100178BA8);

  v4 = *(a1 + qword_100178BD8);
}

char *sub_100107CC4(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for UIHostingControllerSizingOptions();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = objc_allocWithZone(sub_1000077C8(&unk_100178CD0, &unk_100122370));
  v23 = a1;

  v8 = UIHostingController.init(rootView:)();
  sub_1000077C8(&unk_100173440, &unk_1001194C0);
  v9 = *(v5 + 72);
  v10 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1001186F0;
  static UIHostingControllerSizingOptions.preferredContentSize.getter();
  v23 = v11;
  sub_100108AB4(&unk_100178CE0, &type metadata accessor for UIHostingControllerSizingOptions);
  sub_1000077C8(&unk_100173450, &unk_100122380);
  sub_1000199C8(&unk_100178CF0, &unk_100173450, &unk_100122380);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  dispatch thunk of UIHostingController.sizingOptions.setter();
  *&v2[OBJC_IVAR____TtC9AirDropUI27SystemApertureAccessoryView_hostingController] = v8;
  v12 = v8;
  [v12 preferredContentSize];
  v14 = v13;
  v16 = v15;
  v22.receiver = v2;
  v22.super_class = type metadata accessor for SystemApertureAccessoryView();
  v17 = objc_msgSendSuper2(&v22, "initWithFrame:", 0.0, 0.0, v14, v16);
  v18 = *&v17[OBJC_IVAR____TtC9AirDropUI27SystemApertureAccessoryView_hostingController];
  v19 = v17;
  result = [v18 view];
  if (result)
  {
    v21 = result;
    [v19 addSubview:result];

    return v19;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1001082D0(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_10010833C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100108384(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

double sub_100108400@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  result = *&v5;
  *a2 = v5;
  a2[1] = v6;
  a2[2] = v7;
  return result;
}

uint64_t sub_100108488(__int128 *a1, uint64_t *a2)
{
  v3 = *(a1 + 4);
  v4 = *(a1 + 5);
  v5 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v7 = *a1;
  v8 = a1[1];

  return static Published.subscript.setter();
}

uint64_t sub_100108510()
{
  v1 = [objc_opt_self() mainBundle];
  countAndFlagsBits = [v1 bundleIdentifier];

  if (countAndFlagsBits)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v3 = String.lowercased()();
    countAndFlagsBits = v3._countAndFlagsBits;
    object = v3._object;
  }

  else
  {
    object = 0;
  }

  v5 = &v0[qword_100178B80];
  v6 = *&v0[qword_100178B80 + 8];
  *v5 = countAndFlagsBits;
  *(v5 + 1) = object;

  v7 = *&v0[qword_100178BE0];
  *&v0[qword_100178BE0] = v7 & 0xFFFFFFFFFFFFFFFDLL;
  sub_100107420(v7);
  [objc_msgSend(v0 "systemApertureElementContext")];

  return swift_unknownObjectRelease();
}

uint64_t sub_10010861C()
{
  v1 = &v0[qword_100178B80];
  v2 = *&v0[qword_100178B80 + 8];
  *v1 = 0;
  *(v1 + 1) = 0;

  v3 = *&v0[qword_100178BE0];
  *&v0[qword_100178BE0] = v3 | 2;
  sub_100107420(v3);
  [objc_msgSend(v0 "systemApertureElementContext")];

  return swift_unknownObjectRelease();
}

uint64_t sub_1001086AC()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1001086EC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100108704()
{
  result = *(v0 + qword_100178B80);
  v2 = *(v0 + qword_100178B80 + 8);
  return result;
}

void sub_100108760()
{
  *(v0 + qword_100178B60) = 0;
  *(v0 + qword_100178B68) = 2;
  *(v0 + qword_100178B70) = 4;
  *(v0 + qword_100178B78) = 4;
  v1 = (v0 + qword_100178B80);
  *v1 = 0;
  v1[1] = 0;
  v2 = SBUISystemApertureElementIdentifierAirDrop;
  *(v0 + qword_100178B88) = SBUISystemApertureElementIdentifierAirDrop;
  *(v0 + qword_100178B90) = 1;
  v3 = qword_100178B98;
  v4 = objc_allocWithZone(type metadata accessor for SystemApertureElementTransitionCoordinator());
  v5 = v2;
  *(v0 + v3) = [v4 init];
  *(v0 + qword_100178BA0) = 0;
  v6 = qword_100178BA8;
  v7 = type metadata accessor for SystemApertureLayoutState();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  v10 = swift_allocObject();
  __asm { FMOV            V0.2D, #17.0 }

  Published.init(initialValue:)();
  Published.init(initialValue:)();
  *(v0 + v6) = v10;
  *(v0 + qword_100178BB0) = 0;
  *(v0 + qword_100178BB8) = 0;
  *(v0 + qword_100178BC0) = 0;
  *(v0 + qword_100178BC8) = 0;
  *(v0 + qword_100178BD0) = 0;
  *(v0 + qword_100178BD8) = 0;
  *(v0 + qword_100178BE0) = 1;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id sub_100108938()
{
  [v0 preferredContentSize];
  v2 = v1;
  v4 = v3;
  v5 = *&v0[qword_100178BA0];
  if (v5)
  {
    [*(*(v5 + OBJC_IVAR____TtC9AirDropUI37SystemApertureAccessoryViewController__view) + OBJC_IVAR____TtC9AirDropUI27SystemApertureAccessoryView_hostingController) preferredContentSize];
  }

  else
  {
    v6 = 0.0;
    v7 = 0.0;
  }

  [v0 setPreferredContentSize:{v6, v7}];
  result = [v0 preferredContentSize];
  if (v2 != v10 || v4 != v9)
  {
    v12 = [v0 systemApertureElementContext];
    v14[4] = nullsub_1;
    v14[5] = 0;
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 1107296256;
    v14[2] = sub_100106B40;
    v14[3] = &unk_100161FF8;
    v13 = _Block_copy(v14);
    [v12 setElementNeedsUpdateWithCoordinatedAnimations:v13];
    _Block_release(v13);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_100108AB4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100108B10()
{
  result = qword_100178D00;
  if (!qword_100178D00)
  {
    sub_100007CCC(&qword_100178D08, &qword_1001223A8);
    sub_100108BC8();
    sub_1000199C8(&unk_1001779E0, &qword_1001782B0, &qword_1001210B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100178D00);
  }

  return result;
}

unint64_t sub_100108BC8()
{
  result = qword_100178D10;
  if (!qword_100178D10)
  {
    sub_100007CCC(&qword_100178D18, &unk_1001223B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100178D10);
  }

  return result;
}

void sub_100108C54()
{
  v1 = *(v0 + OBJC_IVAR____TtC9AirDropUI33AirDropSystemApertureProgressView_progressMicaView);
  v2 = String._bridgeToObjectiveC()();
  v3 = [v1 publishedObjectWithName:v2];

  if (v3)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8[0] = v6;
  v8[1] = v7;
  if (*(&v7 + 1))
  {
    sub_1000165C4(0, &qword_100178D80, CAShapeLayer_ptr);
    if (swift_dynamicCast())
    {
      [*(v0 + OBJC_IVAR____TtC9AirDropUI33AirDropSystemApertureProgressView_progress) fractionCompleted];
      [v5 setStrokeStart:{0.999 - fmax(v4, 0.01) * 0.999 / 0.999}];
    }
  }

  else
  {
    sub_10006CDAC(v8);
  }

  sub_100109800();
}

void sub_100108DA8(id a1)
{
  if (a1)
  {
    v3 = [a1 identifier];
    v4 = (v1 + OBJC_IVAR____TtC9AirDropUI33AirDropSystemApertureProgressView_cancelAction);
    v5 = *(v1 + OBJC_IVAR____TtC9AirDropUI33AirDropSystemApertureProgressView_cancelAction);
    if (!v5)
    {
      if (!v3)
      {
        return;
      }

      goto LABEL_15;
    }
  }

  else
  {
    v4 = (v1 + OBJC_IVAR____TtC9AirDropUI33AirDropSystemApertureProgressView_cancelAction);
    v5 = *(v1 + OBJC_IVAR____TtC9AirDropUI33AirDropSystemApertureProgressView_cancelAction);
    if (!v5)
    {
      return;
    }

    v3 = 0;
  }

  v6 = [v5 identifier];
  v7 = v6;
  if (!v3)
  {
    if (!v6)
    {
      return;
    }

    goto LABEL_17;
  }

  if (!v6)
  {
LABEL_15:
    v7 = v3;
LABEL_17:

LABEL_18:
    if (*v4)
    {
      v14 = *(v1 + OBJC_IVAR____TtC9AirDropUI33AirDropSystemApertureProgressView_transparentCancelButton);
      v15 = *v4;
      [v14 addAction:v15 forControlEvents:0x2000];
      [v14 setHidden:(*(v1 + OBJC_IVAR____TtC9AirDropUI25AirDropSystemApertureView_expanded) & 1) == 0];
    }

    if (a1)
    {
      v16 = *(v1 + OBJC_IVAR____TtC9AirDropUI33AirDropSystemApertureProgressView_transparentCancelButton);
      v17 = a1;
      [v16 removeAction:? forControlEvents:?];
      if (!*v4)
      {
        [v16 setHidden:1];
      }
    }

    return;
  }

  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  if (v8 != static String._unconditionallyBridgeFromObjectiveC(_:)() || v10 != v11)
  {
    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v13)
    {
      return;
    }

    goto LABEL_18;
  }
}

void sub_100109044(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, char a6)
{
  v7 = v6;
  v8 = type metadata accessor for Locale();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v10 = type metadata accessor for String.LocalizationValue();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v12 = type metadata accessor for UIButton.Configuration();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v14 = OBJC_IVAR____TtC9AirDropUI33AirDropSystemApertureProgressView_progress;
  *&v6[v14] = [objc_opt_self() progressWithTotalUnitCount:1000];
  v15 = OBJC_IVAR____TtC9AirDropUI33AirDropSystemApertureProgressView_cancelAction;
  *&v6[OBJC_IVAR____TtC9AirDropUI33AirDropSystemApertureProgressView_cancelAction] = 0;
  v6[OBJC_IVAR____TtC9AirDropUI33AirDropSystemApertureProgressView_isTouchingDownButton] = 0;
  v6[OBJC_IVAR____TtC9AirDropUI33AirDropSystemApertureProgressView_didPostAccessibilityLayoutChangeNotification] = 0;
  type metadata accessor for AirDropSystemApertureIconView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v17 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v18 = objc_allocWithZone(BSUICAPackageView);
  v19 = v17;
  v20 = String._bridgeToObjectiveC()();
  v21 = [v18 initWithPackageName:v20 inBundle:v19];

  v51 = v19;
  if (v21)
  {

    v22 = v21;
    [v22 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v22 setFrame:{0.0, 0.0, 23.0, 23.0}];
    v23 = String._bridgeToObjectiveC()();
    [v22 setState:v23];

    *&v6[OBJC_IVAR____TtC9AirDropUI33AirDropSystemApertureProgressView_progressMicaView] = v22;
    sub_1000165C4(0, &qword_100178D88, UIButton_ptr);
    v24 = v22;
    static UIButton.Configuration.plain()();
    v25 = a4;
    v26 = UIButton.init(configuration:primaryAction:)();
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
    v27 = String._bridgeToObjectiveC()();

    [v26 setAccessibilityLabel:v27];

    [v26 setTranslatesAutoresizingMaskIntoConstraints:0];
    *&v7[OBJC_IVAR____TtC9AirDropUI33AirDropSystemApertureProgressView_transparentCancelButton] = v26;
    v28 = *&v7[v15];
    *&v7[v15] = a4;
    v29 = v25;
    v30 = v26;

    v31 = &v7[OBJC_IVAR____TtC9AirDropUI33AirDropSystemApertureProgressView_overrideIntrinsicContentSize];
    if (a6)
    {
      *v31 = 0;
      *(v31 + 1) = 0;
      v31[16] = 1;
    }

    else
    {
      *v31 = a5;
      *(v31 + 1) = a5;
      v31[16] = 0;
    }

    v54.receiver = v7;
    v54.super_class = type metadata accessor for AirDropSystemApertureProgressView();
    v32 = objc_msgSendSuper2(&v54, "init");
    [v32 addSubview:v24];
    [v32 addSubview:v30];
    sub_1000F499C(v24, a2, 0.0);
    sub_1000165C4(0, &qword_100173390, NSLayoutConstraint_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v32 addConstraints:isa];

    sub_1000F499C(v30, a2, 0.0);
    v34 = Array._bridgeToObjectiveC()().super.isa;

    [v32 addConstraints:v34];

    if (qword_100172140 != -1)
    {
      swift_once();
    }

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v35 = v24;
    if (v53 == 1)
    {
      v36 = objc_opt_self();
      v37 = [v36 systemRedColor];
      v38 = [v37 colorWithAlphaComponent:0.3];

      [v32 setBackgroundColor:v38];
      v39 = [v36 systemOrangeColor];
      v35 = [v39 colorWithAlphaComponent:0.4];

      [v24 setBackgroundColor:v35];
    }

    v40 = OBJC_IVAR____TtC9AirDropUI33AirDropSystemApertureProgressView_transparentCancelButton;
    v41 = *&v32[OBJC_IVAR____TtC9AirDropUI33AirDropSystemApertureProgressView_transparentCancelButton];
    if (a4)
    {
      v42 = v29;
      [v41 addAction:v42 forControlEvents:0x2000];
      [*&v32[v40] setHidden:(v32[OBJC_IVAR____TtC9AirDropUI25AirDropSystemApertureView_expanded] & 1) == 0];
    }

    else
    {
      [*&v32[OBJC_IVAR____TtC9AirDropUI33AirDropSystemApertureProgressView_transparentCancelButton] setHidden:1];
    }

    v43 = OBJC_IVAR____TtC9AirDropUI33AirDropSystemApertureProgressView_transparentCancelButton;
    [*&v32[OBJC_IVAR____TtC9AirDropUI33AirDropSystemApertureProgressView_transparentCancelButton] addTarget:v32 action:"touchedDownCancelButton" forControlEvents:{17, a5}];
    v44 = *&v32[v43];
    v45 = v32;
    v46 = v44;
    [v46 addTarget:v45 action:"touchedUpCancelButton" forControlEvents:480];
  }

  else
  {
    __break(1u);
  }
}

void sub_100109800()
{
  v1 = type metadata accessor for Locale();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v3 = type metadata accessor for String.LocalizationValue();
  v4 = *(*(v3 - 8) + 64);
  *&v5 = __chkstk_darwin(v3 - 8).n128_u64[0];
  v6 = v0[OBJC_IVAR____TtC9AirDropUI25AirDropSystemApertureView_expanded];
  v7 = OBJC_IVAR____TtC9AirDropUI33AirDropSystemApertureProgressView_progress;
  v8 = [*&v0[OBJC_IVAR____TtC9AirDropUI33AirDropSystemApertureProgressView_progress] isIndeterminate];
  if (v6 == 1)
  {
    if ((v8 & 1) == 0)
    {
      [*&v0[v7] fractionCompleted];
      if (v9 >= 1.0)
      {
        v12 = *&v0[OBJC_IVAR____TtC9AirDropUI33AirDropSystemApertureProgressView_transparentCancelButton];
        String.LocalizationValue.init(stringLiteral:)();
        static Locale.current.getter();
        String.init(localized:table:bundle:locale:comment:)();
        v13 = String._bridgeToObjectiveC()();

        [v12 setAccessibilityLabel:v13];
      }

      else
      {
        v0[OBJC_IVAR____TtC9AirDropUI33AirDropSystemApertureProgressView_isTouchingDownButton];
        v0[OBJC_IVAR____TtC9AirDropUI33AirDropSystemApertureProgressView_isTouchingDownButton];
      }
    }
  }

  else
  {
    if ((v8 & 1) == 0)
    {
      [*&v0[v7] fractionCompleted];
    }

    String.LocalizationValue.init(_:)();
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
    v10 = String._bridgeToObjectiveC()();

    [v0 setAccessibilityLabel:v10];

    [objc_msgSend(v0 "systemApertureElementContext")];
    swift_unknownObjectRelease();
    v11 = OBJC_IVAR____TtC9AirDropUI33AirDropSystemApertureProgressView_didPostAccessibilityLayoutChangeNotification;
    if ((v0[OBJC_IVAR____TtC9AirDropUI33AirDropSystemApertureProgressView_didPostAccessibilityLayoutChangeNotification] & 1) == 0)
    {
      UIAccessibilityPostNotification(UIAccessibilityLayoutChangedNotification, v0);
      v0[v11] = 1;
    }
  }

  v14 = *&v0[OBJC_IVAR____TtC9AirDropUI33AirDropSystemApertureProgressView_progressMicaView];
  v15 = String._bridgeToObjectiveC()();

  [v14 setState:v15];
}

void sub_100109C58()
{
  v1 = *(v0 + OBJC_IVAR____TtC9AirDropUI33AirDropSystemApertureProgressView_transparentCancelButton);
}

id sub_100109CB8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AirDropSystemApertureProgressView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100109E08(uint64_t *a1, NSObject *a2)
{
  v2 = *a1;
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "createURL: CFURLSetResourcePropertyForKey %@", &v3, 0xCu);
}

NSPersonNameComponents __swiftcall PersonNameComponents._bridgeToObjectiveC()()
{
  v0 = PersonNameComponents._bridgeToObjectiveC()();
  result._private = v1;
  result.super.isa = v0;
  return result;
}

uint64_t SFNearbySharingInteraction.init(_:)()
{
  return SFNearbySharingInteraction.init(_:)();
}

{
  return SFNearbySharingInteraction.init(_:)();
}

uint64_t View.buttonStyle<A>(_:)()
{
  return View.buttonStyle<A>(_:)();
}

{
  return View.buttonStyle<A>(_:)();
}

Swift::String __swiftcall String.lowercased()()
{
  v0 = String.lowercased()();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

Swift::String __swiftcall String.uppercased()()
{
  v0 = String.uppercased()();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

uint64_t KeyedDecodingContainer.decode(_:forKey:)()
{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

uint64_t KeyedEncodingContainer.encode(_:forKey:)()
{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}