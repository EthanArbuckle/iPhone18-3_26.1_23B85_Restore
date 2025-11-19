uint64_t sub_1000025F0(uint64_t a1)
{
  qword_1000EF3C0 = objc_alloc_init(*(a1 + 32));

  return _objc_release_x1();
}

void sub_1000028E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100002904(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _cameraIrisStateChangedWithToken:a2];
}

uint64_t variable initialization expression of TerrestrialRadioStation._matchedStation@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Station();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

id variable initialization expression of NowPlayingObserver.callObserver()
{
  v0 = objc_allocWithZone(type metadata accessor for CallObserver());

  return [v0 init];
}

void *sub_100002AA4()
{
  if (!(&_swiftEmptyArrayStorage >> 62) || !_CocoaArrayWrapper.endIndex.getter())
  {
    return &_swiftEmptySetSingleton;
  }

  return sub_100003210(&_swiftEmptyArrayStorage);
}

uint64_t sub_100002B44@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  a1[1] = v5;
  return result;
}

BOOL sub_100002BD4(void *a1, uint64_t *a2)
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

void *sub_100002C04@<X0>(void *result@<X0>, uint64_t a2@<X8>)
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

uint64_t *sub_100002C30@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t sub_100002D30()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = String.hashValue.getter();

  return v2;
}

uint64_t sub_100002D6C()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int sub_100002DC0()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return v2;
}

uint64_t sub_100002E34(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t sub_100002EAC(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_100002F2C@<X0>(void *a1@<X8>)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = String._bridgeToObjectiveC()();

  *a1 = v2;
  return result;
}

void *sub_100002F70@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_100002F84@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_100003A9C(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_100002FC4(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_100003050(uint64_t a1)
{
  v2 = sub_1000036D4(&qword_1000EAEB8, type metadata accessor for Key);
  v3 = sub_1000036D4(&unk_1000EAEC0, type metadata accessor for Key);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_10000310C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = String._bridgeToObjectiveC()();

  *a2 = v5;
  return result;
}

uint64_t sub_100003154(uint64_t a1)
{
  v2 = sub_1000036D4(&qword_1000EF270, type metadata accessor for LaunchOptionsKey);
  v3 = sub_1000036D4(&qword_1000EAED0, type metadata accessor for LaunchOptionsKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

unint64_t sub_100003210(unint64_t result)
{
  v1 = result;
  v2 = result >> 62;
  if (result >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (result)
    {
LABEL_3:
      sub_10000368C(&qword_1000EAE50, &unk_1000B36B0);
      result = static _SetStorage.allocate(capacity:)();
      v3 = result;
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      result = _CocoaArrayWrapper.endIndex.getter();
      v5 = result;
      if (!result)
      {
        return v3;
      }

      goto LABEL_9;
    }
  }

  else if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = &_swiftEmptySetSingleton;
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return v3;
  }

LABEL_9:
  v6 = 0;
  v7 = (v3 + 7);
  v21 = v1 & 0xC000000000000001;
  v19 = v1 + 32;
  v20 = v1 & 0xFFFFFFFFFFFFFF8;
  while (v21)
  {
    result = specialized _ArrayBuffer._getElementSlowPath(_:)();
    v8 = result;
    v9 = __OFADD__(v6++, 1);
    if (v9)
    {
      goto LABEL_25;
    }

LABEL_18:
    v10 = v3[5];
    type metadata accessor for AnyCancellable();
    sub_1000036D4(&qword_1000EAE58, &type metadata accessor for AnyCancellable);
    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v11 = -1 << *(v3 + 32);
    v12 = result & ~v11;
    v13 = v12 >> 6;
    v14 = *&v7[8 * (v12 >> 6)];
    v15 = 1 << v12;
    if (((1 << v12) & v14) != 0)
    {
      v16 = ~v11;
      sub_1000036D4(&qword_1000EAE60, &type metadata accessor for AnyCancellable);
      while (1)
      {
        v22 = *(v3[6] + 8 * v12);
        result = dispatch thunk of static Equatable.== infix(_:_:)();
        if (result)
        {
          break;
        }

        v12 = (v12 + 1) & v16;
        v13 = v12 >> 6;
        v14 = *&v7[8 * (v12 >> 6)];
        v15 = 1 << v12;
        if (((1 << v12) & v14) == 0)
        {
          goto LABEL_22;
        }
      }
    }

    else
    {
LABEL_22:
      *&v7[8 * v13] = v15 | v14;
      *(v3[6] + 8 * v12) = v8;
      v17 = v3[2];
      v9 = __OFADD__(v17, 1);
      v18 = v17 + 1;
      if (v9)
      {
        goto LABEL_26;
      }

      v3[2] = v18;
    }

    if (v6 == v5)
    {
      return v3;
    }
  }

  if (v6 >= *(v20 + 16))
  {
    goto LABEL_27;
  }

  v8 = *(v19 + 8 * v6);

  v9 = __OFADD__(v6++, 1);
  if (!v9)
  {
    goto LABEL_18;
  }

LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

__n128 sub_1000034A8(uint64_t a1, uint64_t a2)
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

uint64_t sub_1000034C4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 56))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 48);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_100003518(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 48) = a2 + 1;
    }
  }

  return result;
}

__n128 initializeBufferWithCopyOfBuffer for RoundedCornerShape(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for RoundedCornerShape(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for RoundedCornerShape(uint64_t result, int a2, int a3)
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

__n128 sub_10000360C(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_100003618(uint64_t a1, int a2)
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

uint64_t sub_100003638(uint64_t result, int a2, int a3)
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

uint64_t sub_10000368C(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_1000036D4(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_100003930(uint64_t a1, unint64_t *a2)
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

uint64_t sub_100003A9C(uint64_t a1)
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

id sub_100003B38()
{
  v1 = sub_10000368C(&unk_1000EC7E0, &unk_1000B5100);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v38 = &v32 - v3;
  v33 = sub_10000368C(&qword_1000EAF98, &unk_1000B3C90);
  v4 = *(*(v33 - 8) + 64);
  __chkstk_darwin(v33);
  v5 = sub_10000368C(&unk_1000EC860, &qword_1000B50F0);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5);
  __chkstk_darwin(v7);
  v8 = sub_10000368C(&qword_1000EAFA0, &qword_1000B3CA0);
  v34 = *(v8 - 8);
  v35 = v8;
  v9 = *(v34 + 64);
  __chkstk_darwin(v8);
  v11 = &v32 - v10;
  v12 = sub_10000368C(&qword_1000EAFA8, &qword_1000B3CA8);
  v36 = *(v12 - 8);
  v37 = v12;
  v13 = *(v36 + 64);
  __chkstk_darwin(v12);
  v15 = &v32 - v14;
  if (_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
  {
    v16 = sub_100003210(_swiftEmptyArrayStorage);
  }

  else
  {
    v16 = &_swiftEmptySetSingleton;
  }

  *&v0[OBJC_IVAR____TtC5Media18RadioSourcesButton_subscriptions] = v16;
  swift_weakInit();
  swift_weakAssign();
  v17 = type metadata accessor for RadioSourcesButton();
  v40.receiver = v0;
  v40.super_class = v17;
  v18 = objc_msgSendSuper2(&v40, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v19 = [v18 layer];
  v20 = [objc_allocWithZone(CAFilter) initWithType:kCAFilterPlusL];
  [v19 setCompositingFilter:v20];

  v21 = v18;
  v22 = String._bridgeToObjectiveC()();
  [v21 setAccessibilityIdentifier:v22];

  [v21 setTranslatesAutoresizingMaskIntoConstraints:0];
  v23 = objc_opt_self();
  v24 = v21;
  v25 = [v23 labelColor];
  [v24 setTintColor:v25];

  swift_beginAccess();
  sub_10000368C(&unk_1000EBDE0, &unk_1000B3CB0);
  Published.projectedValue.getter();
  swift_endAccess();
  swift_beginAccess();
  sub_10000368C(&qword_1000EAFB0, &qword_1000B7EC0);
  Published.projectedValue.getter();
  swift_endAccess();
  swift_beginAccess();
  Published.projectedValue.getter();
  swift_endAccess();
  sub_100005870(&unk_1000EBDF0, &unk_1000EC860, &qword_1000B50F0);
  sub_100005870(&qword_1000EAFB8, &qword_1000EAF98, &unk_1000B3C90);
  Publishers.CombineLatest3.init(_:_:_:)();
  v26 = [objc_opt_self() mainRunLoop];
  v39 = v26;
  v27 = type metadata accessor for NSRunLoop.SchedulerOptions();
  v28 = v38;
  (*(*(v27 - 8) + 56))(v38, 1, 1, v27);
  sub_100005A50(0, &unk_1000ED0C0, NSRunLoop_ptr);
  sub_100005870(&qword_1000EAFC0, &qword_1000EAFA0, &qword_1000B3CA0);
  sub_1000058D0(&qword_1000ED0D0, &unk_1000ED0C0, NSRunLoop_ptr);
  v29 = v35;
  Publisher.receive<A>(on:options:)();
  sub_1000057C8(v28);

  (*(v34 + 8))(v11, v29);
  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_100005870(&qword_1000EAFC8, &qword_1000EAFA8, &qword_1000B3CA8);
  v30 = v37;
  Publisher<>.sink(receiveValue:)();

  (*(v36 + 8))(v15, v30);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  [v24 updateConfiguration];

  return v24;
}

void sub_1000042B8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [Strong setNeedsUpdateConfiguration];
  }
}

void sub_1000043D0(void *a1, uint64_t a2)
{
  v3 = v2;
  v12.receiver = v3;
  v12.super_class = type metadata accessor for RadioSourcesButton();
  objc_msgSendSuper2(&v12, "didUpdateFocusInContext:withAnimationCoordinator:", a1, a2);
  v6 = [a1 nextFocusedView];
  if (v6)
  {
    v7 = v6;
    sub_100005A50(0, &qword_1000EEEA0, NSObject_ptr);
    v8 = static NSObject.== infix(_:_:)();
  }

  else
  {
    v8 = 0;
  }

  v9 = [a1 previouslyFocusedView];
  if (v9)
  {
    v10 = v9;
    sub_100005A50(0, &qword_1000EEEA0, NSObject_ptr);
    v11 = static NSObject.== infix(_:_:)();

    if (((v8 | v11) & 1) == 0)
    {
      return;
    }
  }

  else if ((v8 & 1) == 0)
  {
    return;
  }

  [v3 setNeedsUpdateConfiguration];
}

Swift::Int sub_100004574()
{
  v1 = (*(*(sub_10000368C(&unk_1000EEEE0, &qword_1000B3CC0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v83 = &v75 - v2;
  v3 = type metadata accessor for UIButton.Configuration.Indicator();
  v85 = *(v3 - 8);
  v86 = v3;
  v4 = *(v85 + 64);
  __chkstk_darwin();
  v84 = &v75 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = (*(*(sub_10000368C(&qword_1000EAFD0, &qword_1000B3CC8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v78 = &v75 - v7;
  v8 = (*(*(sub_10000368C(&qword_1000EAFD8, &qword_1000B3CD0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v10 = &v75 - v9;
  v11 = type metadata accessor for UIConfigurationColorTransformer();
  v12 = *(v11 - 8);
  v13 = v12[8];
  __chkstk_darwin();
  v15 = &v75 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(*(type metadata accessor for UIBackgroundConfiguration() - 8) + 64);
  __chkstk_darwin();
  v17 = type metadata accessor for UIButton.Configuration();
  v79 = *(v17 - 8);
  v80 = v17;
  v18 = *(v79 + 64);
  __chkstk_darwin();
  v20 = &v75 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UIButton.Configuration.borderedTinted()();
  static UIBackgroundConfiguration.clear()();
  UIButton.Configuration.background.setter();
  v77 = objc_opt_self();
  v21 = [v77 clearColor];
  v22 = UIButton.Configuration.background.modify();
  UIBackgroundConfiguration.backgroundColor.setter();
  v22(&v90, 0);
  UIButton.Configuration.imagePadding.setter();
  UIButton.Configuration.titleLineBreakMode.setter();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  UIConfigurationColorTransformer.init(_:)();
  v23 = v12[2];
  v23(v10, v15, v11);
  v82 = v12;
  v24 = v12[7];
  v24(v10, 0, 1, v11);
  UIButton.Configuration.indicatorColorTransformer.setter();
  v81 = v15;
  v25 = v15;
  v26 = v11;
  v23(v10, v25, v11);
  v24(v10, 0, 1, v11);
  UIButton.Configuration.imageColorTransformer.setter();
  v87 = v0;
  if (!swift_weakLoadStrong() || (swift_getKeyPath(), swift_getKeyPath(), static Published.subscript.getter(), , , , (v27 = v90) == 0))
  {
    v44 = [objc_opt_self() mainBundle];
    v94._object = 0xE000000000000000;
    v45._countAndFlagsBits = 0x5F4E574F4E4B4E55;
    v45._object = 0xEE00454352554F53;
    v46.value._countAndFlagsBits = 0x6F69646152;
    v46.value._object = 0xE500000000000000;
    v47._countAndFlagsBits = 0;
    v47._object = 0xE000000000000000;
    v94._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v45, v46, v44, v47, v94);

    String.init(format:_:)();

    UIButton.Configuration.title.setter();
    UIButton.Configuration.showsActivityIndicator.setter();
    (*(v85 + 104))(v84, enum case for UIButton.Configuration.Indicator.popup(_:), v86);
    UIButton.Configuration.indicator.setter();
    UIConfigurationColorTransformer.init(_:)();
    v24(v10, 0, 1, v26);
    UIButton.Configuration.indicatorColorTransformer.setter();
    [v87 setEnabled:1];
    goto LABEL_16;
  }

  v28 = v87;
  if (!swift_weakLoadStrong() || (swift_getKeyPath(), swift_getKeyPath(), static Published.subscript.getter(), , , , (v29 = v90) == 0))
  {
    [v28 setEnabled:1];
    UIButton.Configuration.showsActivityIndicator.setter();
    v48 = objc_opt_self();
    v49 = [v48 configurationWithTextStyle:UIFontTextStyleCaption1];
    v50 = [v48 configurationWithWeight:5];
    v51 = [v49 configurationByApplyingConfiguration:v50];

    UIButton.Configuration.preferredSymbolConfigurationForImage.setter();
    sub_100005A50(0, &qword_1000EAFE0, CAFMediaSource_ptr);
    sub_1000058D0(&qword_1000EAFE8, &qword_1000EAFE0, CAFMediaSource_ptr);
    v52 = CAFObserved<>.observable.getter();
    v53 = dispatch thunk of CAFMediaSourceObservable.mediaSourceSemanticType.getter();
    sub_100083720(v53);

    UIButton.Configuration.image.setter();
    UIButton.Configuration.imagePlacement.setter();
    (*(v85 + 104))(v84, enum case for UIButton.Configuration.Indicator.popup(_:), v86);
    UIButton.Configuration.indicator.setter();
    UIConfigurationColorTransformer.init(_:)();
    v24(v10, 0, 1, v26);
    UIButton.Configuration.indicatorColorTransformer.setter();
    v54 = CAFObserved<>.observable.getter();
    sub_100083338();

    if (String.count.getter() >= 11)
    {
      v55 = sub_100084474(10);
      v57 = v56;
      v59 = v58;
      v61 = v60;

      v88 = 0;
      v89 = 0xE000000000000000;
      v62 = String.count.getter();
      v63 = Substring.distance(from:to:)();
      v40 = __OFADD__(v62, v63);
      result = v62 + v63;
      if (v40)
      {
        __break(1u);
        goto LABEL_18;
      }

      String.reserveCapacity(_:)(result);
      v90 = v55;
      v91 = v57;
      v92 = v59;
      v93 = v61;
      sub_100005954();
      String.append<A>(contentsOf:)();
      v90 = 10911970;
      v91 = 0xA300000000000000;
      String.append<A>(contentsOf:)();
    }

    UIButton.Configuration.title.setter();
    v64 = swift_allocObject();
    v65 = v87;
    *(v64 + 16) = v87;
    v66 = v65;
    v67 = v78;
    UIConfigurationTextAttributesTransformer.init(_:)();
    v68 = type metadata accessor for UIConfigurationTextAttributesTransformer();
    (*(*(v68 - 8) + 56))(v67, 0, 1, v68);
    UIButton.Configuration.titleTextAttributesTransformer.setter();
    if ([v66 isFocused])
    {
      _UISolariumEnabled();
      v69 = UIButton.Configuration.background.modify();
      UIBackgroundConfiguration.cornerRadius.setter();
      v69(&v90, 0);
      v70 = [v77 radio_carSystemFocusColor];
      v71 = UIButton.Configuration.background.modify();
      UIBackgroundConfiguration.backgroundColor.setter();
      v71(&v90, 0);
    }

    goto LABEL_16;
  }

  v77 = v27;
  sub_100005A50(0, &qword_1000EAFE0, CAFMediaSource_ptr);
  sub_1000058D0(&qword_1000EAFE8, &qword_1000EAFE0, CAFMediaSource_ptr);
  v76 = v29;
  v30 = CAFObserved<>.observable.getter();
  sub_100083338();

  if (String.count.getter() < 11)
  {
LABEL_8:
    UIButton.Configuration.title.setter();
    v42 = v78;
    UIConfigurationTextAttributesTransformer.init(_:)();
    v43 = type metadata accessor for UIConfigurationTextAttributesTransformer();
    (*(*(v43 - 8) + 56))(v42, 0, 1, v43);
    UIButton.Configuration.titleTextAttributesTransformer.setter();
    (*(v85 + 104))(v84, enum case for UIButton.Configuration.Indicator.none(_:), v86);
    UIButton.Configuration.indicator.setter();
    UIButton.Configuration.showsActivityIndicator.setter();
    UIConfigurationColorTransformer.init(_:)();
    v24(v10, 0, 1, v26);
    UIButton.Configuration.activityIndicatorColorTransformer.setter();
    UIButton.Configuration.imagePlacement.setter();
    [v28 setEnabled:0];

LABEL_16:
    v73 = v79;
    v72 = v80;
    v74 = v83;
    (*(v79 + 16))(v83, v20, v80);
    (*(v73 + 56))(v74, 0, 1, v72);
    UIButton.configuration.setter();
    (v82[1])(v81, v26);
    return (*(v73 + 8))(v20, v72);
  }

  v31 = sub_100084474(10);
  v33 = v32;
  v35 = v34;
  v37 = v36;

  v88 = 0;
  v89 = 0xE000000000000000;
  v38 = String.count.getter();
  v75 = v35;
  v39 = Substring.distance(from:to:)();
  v40 = __OFADD__(v38, v39);
  result = v38 + v39;
  if (!v40)
  {
    String.reserveCapacity(_:)(result);
    v90 = v31;
    v91 = v33;
    v92 = v75;
    v93 = v37;
    sub_100005954();
    String.append<A>(contentsOf:)();
    v90 = 10911970;
    v91 = 0xA300000000000000;
    String.append<A>(contentsOf:)();

    v28 = v87;
    goto LABEL_8;
  }

LABEL_18:
  __break(1u);
  return result;
}

id sub_100005314()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [Strong isFocused];
    v3 = objc_opt_self();
    if (v2)
    {
      v4 = [v3 radio_carSystemFocusLabelColor];
    }

    else
    {
      v4 = [v3 labelColor];
    }

    v7 = v4;

    return v7;
  }

  else
  {
    v5 = [objc_opt_self() labelColor];

    return v5;
  }
}

id sub_1000053F0()
{
  v0 = [objc_opt_self() secondaryLabelColor];

  return v0;
}

uint64_t sub_100005430@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for AttributeContainer();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  v5 = [objc_opt_self() secondaryLabelColor];
  sub_1000059A8();
  AttributeContainer.subscript.setter();
  [objc_opt_self() _preferredFontForTextStyle:UIFontTextStyleFootnote weight:UIFontWeightMedium];
  sub_1000059FC();
  return AttributeContainer.subscript.setter();
}

uint64_t sub_100005530@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for AttributeContainer();
  (*(*(v6 - 8) + 16))(a3, a1, v6);
  LODWORD(a2) = [a2 isFocused];
  v7 = objc_opt_self();
  v8 = &selRef_radio_carSystemFocusLabelColor;
  if (!a2)
  {
    v8 = &selRef_labelColor;
  }

  v9 = [v7 *v8];
  sub_1000059A8();
  AttributeContainer.subscript.setter();
  [objc_opt_self() _preferredFontForTextStyle:UIFontTextStyleFootnote weight:UIFontWeightMedium];
  sub_1000059FC();
  return AttributeContainer.subscript.setter();
}

id sub_1000056DC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RadioSourcesButton();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100005780(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_1000057C8(uint64_t a1)
{
  v2 = sub_10000368C(&unk_1000EC7E0, &unk_1000B5100);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100005830()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100005870(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100005780(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000058D0(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100005A50(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100005914()
{

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_100005954()
{
  result = qword_1000EAFF0;
  if (!qword_1000EAFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EAFF0);
  }

  return result;
}

unint64_t sub_1000059A8()
{
  result = qword_1000EAFF8;
  if (!qword_1000EAFF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EAFF8);
  }

  return result;
}

unint64_t sub_1000059FC()
{
  result = qword_1000EB000;
  if (!qword_1000EB000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EB000);
  }

  return result;
}

uint64_t sub_100005A50(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_100005A9C()
{
  type metadata accessor for RadioSignpostManager();
  result = swift_allocObject();
  *(result + 16) = &_swiftEmptySetSingleton;
  qword_1000F3B28 = result;
  return result;
}

void sub_100005AD4(uint64_t a1, unsigned __int8 a2)
{
  if (qword_1000EACE8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100006928(v4, qword_1000F3B88);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v21 = v8;
    *v7 = 136315138;
    if (a2 > 3u)
    {
      v15 = 0x80000001000BAE60;
      v16 = 0xD000000000000021;
      if (a2 != 6)
      {
        v16 = 0xD00000000000001ELL;
        v15 = 0x80000001000BAE90;
      }

      v17 = 0xD00000000000001FLL;
      if (a2 == 4)
      {
        v17 = 0x657A696C616E6966;
        v18 = 0xE900000000000064;
      }

      else
      {
        v18 = 0x80000001000BAE40;
      }

      if (a2 <= 5u)
      {
        v13 = v17;
      }

      else
      {
        v13 = v16;
      }

      if (a2 <= 5u)
      {
        v14 = v18;
      }

      else
      {
        v14 = v15;
      }
    }

    else
    {
      v9 = 0xE800000000000000;
      v10 = 0x646568636E75616CLL;
      v11 = 0xE500000000000000;
      v12 = 0x656E656373;
      if (a2 != 2)
      {
        v12 = 0x64657265646E6572;
        v11 = 0xE800000000000000;
      }

      if (a2)
      {
        v10 = 0x4F746E6174736E69;
        v9 = 0xE90000000000006ELL;
      }

      if (a2 <= 1u)
      {
        v13 = v10;
      }

      else
      {
        v13 = v12;
      }

      if (a2 <= 1u)
      {
        v14 = v9;
      }

      else
      {
        v14 = v11;
      }
    }

    v19 = sub_100043AF0(v13, v14, &v21);

    *(v7 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v5, v6, "Firing signpost %s", v7, 0xCu);
    sub_100006960(v8);
  }

  if (a2 > 3u)
  {
    if (a2 == 4)
    {

      _CAFSignpostEmit_Finalized(a1);
    }

    else
    {
      v20 = String._bridgeToObjectiveC()();
      CAFSignpostEmit_SceneWillEnterForeground();
    }
  }

  else if (a2 > 1u)
  {
    if (a2 == 2)
    {

      _CAFSignpostEmit_Scene();
    }

    else
    {

      _CAFSignpostEmit_Rendered();
    }
  }

  else if (a2)
  {

    _CAFSignpostEmit_InstantOn();
  }

  else
  {

    _CAFSignpostEmit_Launched();
  }
}

unint64_t sub_100005ED4@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000068DC(*a1);
  *a2 = result;
  return result;
}

void sub_100005F04(void *a1@<X8>)
{
  v2 = *v1;
  if (v2 > 3)
  {
    v8 = 0x80000001000BAE60;
    v9 = 0xD000000000000021;
    if (v2 != 6)
    {
      v9 = 0xD00000000000001ELL;
      v8 = 0x80000001000BAE90;
    }

    v10 = 0xD00000000000001FLL;
    if (v2 == 4)
    {
      v10 = 0x657A696C616E6966;
      v11 = 0xE900000000000064;
    }

    else
    {
      v11 = 0x80000001000BAE40;
    }

    if (*v1 <= 5u)
    {
      v12 = v10;
    }

    else
    {
      v12 = v9;
    }

    if (*v1 <= 5u)
    {
      v8 = v11;
    }

    *a1 = v12;
    a1[1] = v8;
  }

  else
  {
    v3 = 0xE800000000000000;
    v4 = 0x646568636E75616CLL;
    v5 = 0xE500000000000000;
    v6 = 0x656E656373;
    if (v2 != 2)
    {
      v6 = 0x64657265646E6572;
      v5 = 0xE800000000000000;
    }

    if (*v1)
    {
      v4 = 0x4F746E6174736E69;
      v3 = 0xE90000000000006ELL;
    }

    if (*v1 <= 1u)
    {
      v7 = v4;
    }

    else
    {
      v7 = v6;
    }

    if (*v1 > 1u)
    {
      v3 = v5;
    }

    *a1 = v7;
    a1[1] = v3;
  }
}

uint64_t sub_100006020()
{
  v1 = v0;
  if (qword_1000EACE8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100006928(v2, qword_1000F3B88);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Resetting all signposts", v5, 2u);
  }

  swift_beginAccess();
  v6 = *(v1 + 16);
  *(v1 + 16) = &_swiftEmptySetSingleton;
}

void sub_10000612C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 16);

  v6 = sub_1000063F4(a1, v5);

  if (v6)
  {
    if (qword_1000EACE8 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_100006928(v7, qword_1000F3B88);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v23 = v11;
      *v10 = 136315138;
      if (a1 > 3u)
      {
        v18 = 0x80000001000BAE60;
        v19 = 0xD000000000000021;
        if (a1 != 6)
        {
          v19 = 0xD00000000000001ELL;
          v18 = 0x80000001000BAE90;
        }

        v20 = 0xD00000000000001FLL;
        if (a1 == 4)
        {
          v20 = 0x657A696C616E6966;
          v21 = 0xE900000000000064;
        }

        else
        {
          v21 = 0x80000001000BAE40;
        }

        if (a1 <= 5u)
        {
          v16 = v20;
        }

        else
        {
          v16 = v19;
        }

        if (a1 <= 5u)
        {
          v17 = v21;
        }

        else
        {
          v17 = v18;
        }
      }

      else
      {
        v12 = 0xE800000000000000;
        v13 = 0x646568636E75616CLL;
        v14 = 0xE500000000000000;
        v15 = 0x656E656373;
        if (a1 != 2)
        {
          v15 = 0x64657265646E6572;
          v14 = 0xE800000000000000;
        }

        if (a1)
        {
          v13 = 0x4F746E6174736E69;
          v12 = 0xE90000000000006ELL;
        }

        if (a1 <= 1u)
        {
          v16 = v13;
        }

        else
        {
          v16 = v15;
        }

        if (a1 <= 1u)
        {
          v17 = v12;
        }

        else
        {
          v17 = v14;
        }
      }

      v22 = sub_100043AF0(v16, v17, &v23);

      *(v10 + 4) = v22;
      _os_log_impl(&_mh_execute_header, v8, v9, "Already fired signpost %s", v10, 0xCu);
      sub_100006960(v11);
    }
  }

  else
  {
    swift_beginAccess();
    sub_10007B4B0(&v24, a1);
    swift_endAccess();
    sub_100005AD4(a2, a1);
  }
}

uint64_t sub_1000063F4(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) && (v4 = *(a2 + 40), v5 = sub_10002F414(), v6 = -1 << *(a2 + 32), v7 = v5 & ~v6, ((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0))
  {
    v30 = ~v6;
    v8 = 0x4F746E6174736E69;
    while (1)
    {
      v9 = *(*(a2 + 48) + v7);
      if (v9 > 3)
      {
        if (*(*(a2 + 48) + v7) > 5u)
        {
          if (v9 == 6)
          {
            v14 = 0xD000000000000021;
            v15 = 0x80000001000BAE60;
          }

          else
          {
            v14 = 0xD00000000000001ELL;
            v15 = 0x80000001000BAE90;
          }
        }

        else
        {
          v14 = v9 == 4 ? 0x657A696C616E6966 : 0xD00000000000001FLL;
          v15 = v9 == 4 ? 0xE900000000000064 : 0x80000001000BAE40;
        }
      }

      else
      {
        if (v9 == 2)
        {
          v10 = 0x656E656373;
        }

        else
        {
          v10 = 0x64657265646E6572;
        }

        if (v9 == 2)
        {
          v11 = 0xE500000000000000;
        }

        else
        {
          v11 = 0xE800000000000000;
        }

        v12 = 0xE90000000000006ELL;
        if (*(*(a2 + 48) + v7))
        {
          v13 = v8;
        }

        else
        {
          v13 = 0x646568636E75616CLL;
        }

        if (!*(*(a2 + 48) + v7))
        {
          v12 = 0xE800000000000000;
        }

        v14 = *(*(a2 + 48) + v7) <= 1u ? v13 : v10;
        v15 = *(*(a2 + 48) + v7) <= 1u ? v12 : v11;
      }

      v16 = a1;
      v17 = 0xD000000000000021;
      if (a1 != 6)
      {
        v17 = 0xD00000000000001ELL;
      }

      v18 = 0x80000001000BAE90;
      if (a1 == 6)
      {
        v18 = 0x80000001000BAE60;
      }

      v19 = 0x657A696C616E6966;
      if (a1 != 4)
      {
        v19 = 0xD00000000000001FLL;
      }

      v20 = 0x80000001000BAE40;
      if (a1 == 4)
      {
        v20 = 0xE900000000000064;
      }

      if (a1 <= 5u)
      {
        v17 = v19;
        v18 = v20;
      }

      if (a1 == 2)
      {
        v21 = 0x656E656373;
      }

      else
      {
        v21 = 0x64657265646E6572;
      }

      if (a1 == 2)
      {
        v22 = 0xE500000000000000;
      }

      else
      {
        v22 = 0xE800000000000000;
      }

      v23 = 0xE90000000000006ELL;
      if (a1)
      {
        v24 = v8;
      }

      else
      {
        v24 = 0x646568636E75616CLL;
      }

      if (!a1)
      {
        v23 = 0xE800000000000000;
      }

      if (a1 <= 1u)
      {
        v21 = v24;
        v22 = v23;
      }

      v25 = a1 <= 3u ? v21 : v17;
      v26 = a1 <= 3u ? v22 : v18;
      if (v14 == v25 && v15 == v26)
      {
        break;
      }

      v27 = v8;
      v28 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v28 & 1) == 0)
      {
        v7 = (v7 + 1) & v30;
        a1 = v16;
        v8 = v27;
        if ((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
        {
          continue;
        }
      }

      return v28 & 1;
    }

    v28 = 1;
  }

  else
  {
    v28 = 0;
  }

  return v28 & 1;
}

uint64_t sub_1000066B8()
{
  v1 = *(v0 + 16);

  return _swift_deallocClassInstance(v0, 24, 7);
}

uint64_t getEnumTagSinglePayload for RadioSignpostManager.Signpost(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for RadioSignpostManager.Signpost(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_100006888()
{
  result = qword_1000EB0D8;
  if (!qword_1000EB0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EB0D8);
  }

  return result;
}

unint64_t sub_1000068DC(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1000DF0B0, v2);

  if (v3 >= 8)
  {
    return 8;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100006928(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_100006960(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_1000069B8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_1000069F8(uint64_t a1, char a2)
{
  v4 = sub_10000368C(&qword_1000EB0E0, &qword_1000B3F30);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = &v22 - v6;
  v8 = sub_10000368C(&qword_1000EB0E8, &qword_1000B3F38);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = &v22 - v10;
  v12 = type metadata accessor for EnvironmentValues();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);

  if ((a2 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v17 = static Log.runtimeIssuesLog.getter();
    v22 = v7;
    v18 = v17;
    os_log(_:dso:log:_:_:)();

    v7 = v22;
    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v13 + 8))(v16, v12);
    a1 = v23;
  }

  swift_getKeyPath();
  v23 = a1;
  sub_100007530();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v19 = *(a1 + 44);

  if (v19 == 1)
  {
    *v11 = static HorizontalAlignment.leading.getter();
    *(v11 + 1) = 0;
    v11[16] = 0;
    v20 = sub_10000368C(&qword_1000EB108, &qword_1000B3F90);
    sub_100006DA0(&v11[*(v20 + 44)]);
    sub_1000077CC(v11, v7, &qword_1000EB0E8, &qword_1000B3F38);
    swift_storeEnumTagMultiPayload();
    sub_100005870(&qword_1000EB0F8, &qword_1000EB0E8, &qword_1000B3F38);
    sub_100007590();
    _ConditionalContent<>.init(storage:)();
    return sub_100007834(v11, &qword_1000EB0E8, &qword_1000B3F38);
  }

  else
  {
    *v7 = swift_getKeyPath();
    v7[8] = 0;
    swift_storeEnumTagMultiPayload();
    sub_100005870(&qword_1000EB0F8, &qword_1000EB0E8, &qword_1000B3F38);
    sub_100007590();
    return _ConditionalContent<>.init(storage:)();
  }
}

uint64_t sub_100006DA0@<X0>(uint64_t a1@<X8>)
{
  v2 = (type metadata accessor for MediaProgressView(0) - 8);
  v3 = *(*v2 + 64);
  (__chkstk_darwin)();
  v5 = v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = (sub_10000368C(&qword_1000EB110, &qword_1000B3F98) - 8);
  v7 = *(*v6 + 64);
  v8 = (__chkstk_darwin)();
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = v29 - v12;
  __chkstk_darwin(v11);
  v15 = v29 - v14;
  KeyPath = swift_getKeyPath();
  *v5 = swift_getKeyPath();
  v5[8] = 0;
  v17 = v2[7];
  *&v5[v17] = swift_getKeyPath();
  sub_10000368C(&qword_1000EB118, &qword_1000B3FD0);
  swift_storeEnumTagMultiPayload();
  v18 = &v5[v2[8]];
  v19 = type metadata accessor for PlaybackTimeObserver(0);
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();
  v29[1] = sub_100063724();
  State.init(wrappedValue:)();
  v22 = *(&v30 + 1);
  *v18 = v30;
  *(v18 + 1) = v22;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_1000076F8(v5, v13);
  v23 = &v13[v6[11]];
  v24 = v35;
  *(v23 + 4) = v34;
  *(v23 + 5) = v24;
  *(v23 + 6) = v36;
  v25 = v31;
  *v23 = v30;
  *(v23 + 1) = v25;
  v26 = v33;
  *(v23 + 2) = v32;
  *(v23 + 3) = v26;
  sub_10000775C(v13, v15);
  sub_1000077CC(v15, v10, &qword_1000EB110, &qword_1000B3F98);
  *a1 = KeyPath;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  v27 = sub_10000368C(&qword_1000EB120, &qword_1000B3FD8);
  sub_1000077CC(v10, a1 + *(v27 + 64), &qword_1000EB110, &qword_1000B3F98);

  sub_100007834(v15, &qword_1000EB110, &qword_1000B3F98);
  sub_100007834(v10, &qword_1000EB110, &qword_1000B3F98);
}

uint64_t sub_10000708C@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for EnvironmentValues();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  KeyPath = swift_getKeyPath();

  v11 = a1;
  if ((a2 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v12 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v7 + 8))(v10, v6);
    v11 = v27;
  }

  v24 = v7;
  v25 = v6;
  swift_getKeyPath();
  v27 = v11;
  sub_100007530();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v13 = *(v11 + 43);

  if (v13 == 1)
  {
    v14 = static HorizontalAlignment.leading.getter();
    v15 = swift_getKeyPath();

    v16 = 0;
    v17 = 0x4028000000000000;
  }

  else
  {
    v17 = 0;
    v14 = 0;
    v15 = 0;
    v16 = -1;
  }

  if ((a2 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v18 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v24 + 8))(v10, v25);
    a1 = v27;
  }

  swift_getKeyPath();
  v27 = a1;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v19 = *(a1 + 41);

  if (v19 == 1)
  {
    v20 = swift_getKeyPath();

    v21 = 0;
  }

  else
  {
    v20 = 0;
    v21 = -1;
  }

  v22 = KeyPath;
  swift_retain_n();
  sub_100007A20(v17, 0, v14, 0, 0, v15, v16);
  sub_100007A38(v20, v21);
  sub_100007A4C(v17, 0, v14, 0, 0, v15, v16);
  sub_100007A64(v20, v21);

  LOBYTE(v27) = 0;
  *a3 = v22;
  *(a3 + 8) = 0;
  *(a3 + 16) = v17;
  *(a3 + 24) = 0;
  *(a3 + 32) = v14;
  *(a3 + 40) = 0;
  *(a3 + 48) = 0;
  *(a3 + 56) = v15;
  *(a3 + 64) = v16;
  *(a3 + 72) = v20;
  *(a3 + 80) = v21;
  sub_100007A64(v20, v21);
  sub_100007A4C(v17, 0, v14, 0, 0, v15, v16);
}

__n128 sub_100007468@<Q0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = static VerticalAlignment.center.getter();
  sub_10000708C(v3, v4, v8);
  *&v7[71] = v8[4];
  *&v7[55] = v8[3];
  *&v7[39] = v8[2];
  *&v7[23] = v8[1];
  *&v7[7] = v8[0];
  *(a1 + 49) = *&v7[32];
  *(a1 + 65) = *&v7[48];
  *(a1 + 81) = *&v7[64];
  result = *v7;
  *(a1 + 17) = *v7;
  v7[87] = v9;
  *a1 = v5;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 97) = *&v7[80];
  *(a1 + 33) = *&v7[16];
  return result;
}

unint64_t sub_100007530()
{
  result = qword_1000EB0F0;
  if (!qword_1000EB0F0)
  {
    type metadata accessor for RadioNowPlayingViewModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EB0F0);
  }

  return result;
}

unint64_t sub_100007590()
{
  result = qword_1000EB100;
  if (!qword_1000EB100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EB100);
  }

  return result;
}

uint64_t sub_10000762C(uint64_t a1)
{
  v2 = type metadata accessor for ColorScheme();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return EnvironmentValues.colorScheme.setter();
}

uint64_t sub_1000076F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MediaProgressView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000775C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000368C(&qword_1000EB110, &qword_1000B3F98);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000077CC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_10000368C(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_100007834(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_10000368C(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_100007898(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1000078E4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

unint64_t sub_10000793C()
{
  result = qword_1000EB128;
  if (!qword_1000EB128)
  {
    sub_100005780(&qword_1000EB130, &qword_1000B3FF8);
    sub_100005870(&qword_1000EB0F8, &qword_1000EB0E8, &qword_1000B3F38);
    sub_100007590();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EB128);
  }

  return result;
}

uint64_t sub_100007A20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if (a7 != -1)
  {
  }

  return result;
}

uint64_t sub_100007A38(uint64_t a1, char a2)
{
  if (a2 != -1)
  {
  }

  return result;
}

uint64_t sub_100007A4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if (a7 != -1)
  {
  }

  return result;
}

uint64_t sub_100007A64(uint64_t a1, char a2)
{
  if (a2 != -1)
  {
  }

  return result;
}

uint64_t sub_100007AD0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE400000000000000;
  v4 = 0x756964654D616364;
  v5 = 0xE90000000000006DLL;
  if (a1 != 5)
  {
    v4 = 0x6C6C6154616364;
    v5 = 0xE700000000000000;
  }

  v6 = 0x6D696E694D616364;
  v7 = 0xEA00000000006C61;
  if (a1 != 3)
  {
    v6 = 0x6D696E694D616364;
    v7 = 0xEE00656469576C61;
  }

  if (a1 <= 4u)
  {
    v5 = v7;
  }

  else
  {
    v6 = v4;
  }

  v8 = 0x4D646E417370616DLL;
  v9 = 0xEC00000061696465;
  if (a1 != 1)
  {
    v8 = 0xD000000000000010;
    v9 = 0x80000001000BAEF0;
  }

  if (a1)
  {
    v3 = v9;
  }

  else
  {
    v8 = 1701736302;
  }

  if (a1 <= 2u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v6;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v5;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v12 = 0xEC00000061696465;
        if (v10 != 0x4D646E417370616DLL)
        {
          goto LABEL_40;
        }
      }

      else
      {
        v12 = 0x80000001000BAEF0;
        if (v10 != 0xD000000000000010)
        {
          goto LABEL_40;
        }
      }
    }

    else
    {
      v12 = 0xE400000000000000;
      if (v10 != 1701736302)
      {
        goto LABEL_40;
      }
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v12 = 0xE90000000000006DLL;
      if (v10 != 0x756964654D616364)
      {
        goto LABEL_40;
      }
    }

    else
    {
      v12 = 0xE700000000000000;
      if (v10 != 0x6C6C6154616364)
      {
LABEL_40:
        v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
        goto LABEL_41;
      }
    }
  }

  else if (a2 == 3)
  {
    v12 = 0xEA00000000006C61;
    if (v10 != 0x6D696E694D616364)
    {
      goto LABEL_40;
    }
  }

  else
  {
    v12 = 0xEE00656469576C61;
    if (v10 != 0x6D696E694D616364)
    {
      goto LABEL_40;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_40;
  }

  v13 = 1;
LABEL_41:

  return v13 & 1;
}

uint64_t sub_100007D1C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xE900000000000074;
  v3 = 0x636E657571657266;
  v4 = a1;
  if (a1 <= 3u)
  {
    v13 = 0xE900000000000079;
    v14 = 0x614E656372756F73;
    v15 = 0xEA0000000000656DLL;
    if (a1 != 2)
    {
      v14 = 0x4E6E6F6974617473;
      v15 = 0xEB00000000656D61;
    }

    v16 = 0xD000000000000010;
    if (a1)
    {
      v13 = 0x80000001000BAF40;
    }

    else
    {
      v16 = 0x636E657571657266;
    }

    if (a1 <= 1u)
    {
      v11 = v16;
    }

    else
    {
      v11 = v14;
    }

    if (v4 <= 1)
    {
      v12 = v13;
    }

    else
    {
      v12 = v15;
    }
  }

  else
  {
    v5 = 0xE800000000000000;
    v6 = 0x6E6769736C6C6163;
    v7 = 0x73616369746C756DLL;
    if (a1 == 7)
    {
      v8 = 0xE900000000000074;
    }

    else
    {
      v7 = 0xD000000000000011;
      v8 = 0x80000001000BAFB0;
    }

    if (a1 != 6)
    {
      v6 = v7;
      v5 = v8;
    }

    v9 = 0x7954656372756F73;
    v10 = 0xEA00000000006570;
    if (a1 != 4)
    {
      v9 = 0xD000000000000011;
      v10 = 0x80000001000BAF80;
    }

    if (a1 <= 5u)
    {
      v11 = v9;
    }

    else
    {
      v11 = v6;
    }

    if (v4 <= 5)
    {
      v12 = v10;
    }

    else
    {
      v12 = v5;
    }
  }

  if (a2 > 3u)
  {
    if (a2 <= 5u)
    {
      if (a2 == 4)
      {
        v3 = 0x7954656372756F73;
        v2 = 0xEA00000000006570;
        goto LABEL_44;
      }

      v3 = 0xD000000000000011;
      v17 = "stationIdentifier";
    }

    else
    {
      if (a2 == 6)
      {
        v2 = 0xE800000000000000;
        v3 = 0x6E6769736C6C6163;
        goto LABEL_44;
      }

      if (a2 == 7)
      {
        v3 = 0x73616369746C756DLL;
        goto LABEL_44;
      }

      v3 = 0xD000000000000011;
      v17 = "artworkIdentifier";
    }

    v2 = (v17 - 32) | 0x8000000000000000;
    goto LABEL_44;
  }

  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v3 = 0x614E656372756F73;
      v2 = 0xEA0000000000656DLL;
    }

    else
    {
      v3 = 0x4E6E6F6974617473;
      v2 = 0xEB00000000656D61;
    }
  }

  else if (a2)
  {
    v2 = 0x80000001000BAF40;
    v3 = 0xD000000000000010;
  }

  else
  {
    v2 = 0xE900000000000079;
  }

LABEL_44:
  if (v11 == v3 && v12 == v2)
  {
    v18 = 1;
  }

  else
  {
    v18 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v18 & 1;
}

uint64_t sub_100007FDC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 0x7374726F7053;
    }

    else
    {
      v4 = 0x636973754DLL;
    }

    if (v2)
    {
      v3 = 0xE600000000000000;
    }

    else
    {
      v3 = 0xE500000000000000;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0xE400000000000000;
    v4 = 1802264916;
  }

  else if (a1 == 3)
  {
    v3 = 0xE400000000000000;
    v4 = 1937204558;
  }

  else
  {
    v3 = 0xE500000000000000;
    v4 = 0x726568744FLL;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 0x7374726F7053;
    }

    else
    {
      v9 = 0x636973754DLL;
    }

    if (a2)
    {
      v8 = 0xE600000000000000;
    }

    else
    {
      v8 = 0xE500000000000000;
    }

    if (v4 != v9)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0xE400000000000000;
    v6 = 1937204558;
    if (a2 != 3)
    {
      v6 = 0x726568744FLL;
      v5 = 0xE500000000000000;
    }

    if (a2 == 2)
    {
      v7 = 1802264916;
    }

    else
    {
      v7 = v6;
    }

    if (a2 == 2)
    {
      v8 = 0xE400000000000000;
    }

    else
    {
      v8 = v5;
    }

    if (v4 != v7)
    {
      goto LABEL_33;
    }
  }

  if (v3 != v8)
  {
LABEL_33:
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();
    goto LABEL_34;
  }

  v10 = 1;
LABEL_34:

  return v10 & 1;
}

uint64_t sub_100008134(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 3u)
  {
    v9 = 0x80000001000BAE60;
    v10 = 0xD000000000000021;
    if (a1 != 6)
    {
      v10 = 0xD00000000000001ELL;
      v9 = 0x80000001000BAE90;
    }

    v11 = 0xD00000000000001FLL;
    if (a1 == 4)
    {
      v11 = 0x657A696C616E6966;
      v12 = 0xE900000000000064;
    }

    else
    {
      v12 = 0x80000001000BAE40;
    }

    if (a1 <= 5u)
    {
      v7 = v11;
    }

    else
    {
      v7 = v10;
    }

    if (v2 <= 5)
    {
      v8 = v12;
    }

    else
    {
      v8 = v9;
    }
  }

  else
  {
    v3 = 0xE800000000000000;
    v4 = 0xE500000000000000;
    v5 = 0x656E656373;
    if (a1 != 2)
    {
      v5 = 0x64657265646E6572;
      v4 = 0xE800000000000000;
    }

    v6 = 0x4F746E6174736E69;
    if (a1)
    {
      v3 = 0xE90000000000006ELL;
    }

    else
    {
      v6 = 0x646568636E75616CLL;
    }

    if (a1 <= 1u)
    {
      v7 = v6;
    }

    else
    {
      v7 = v5;
    }

    if (v2 <= 1)
    {
      v8 = v3;
    }

    else
    {
      v8 = v4;
    }
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v13 = 0x80000001000BAE60;
        if (v7 != 0xD000000000000021)
        {
          goto LABEL_48;
        }
      }

      else
      {
        v13 = 0x80000001000BAE90;
        if (v7 != 0xD00000000000001ELL)
        {
LABEL_48:
          v14 = _stringCompareWithSmolCheck(_:_:expecting:)();
          goto LABEL_49;
        }
      }
    }

    else if (a2 == 4)
    {
      v13 = 0xE900000000000064;
      if (v7 != 0x657A696C616E6966)
      {
        goto LABEL_48;
      }
    }

    else
    {
      v13 = 0x80000001000BAE40;
      if (v7 != 0xD00000000000001FLL)
      {
        goto LABEL_48;
      }
    }
  }

  else if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v13 = 0xE500000000000000;
      if (v7 != 0x656E656373)
      {
        goto LABEL_48;
      }
    }

    else
    {
      v13 = 0xE800000000000000;
      if (v7 != 0x64657265646E6572)
      {
        goto LABEL_48;
      }
    }
  }

  else if (a2)
  {
    v13 = 0xE90000000000006ELL;
    if (v7 != 0x4F746E6174736E69)
    {
      goto LABEL_48;
    }
  }

  else
  {
    v13 = 0xE800000000000000;
    if (v7 != 0x646568636E75616CLL)
    {
      goto LABEL_48;
    }
  }

  if (v8 != v13)
  {
    goto LABEL_48;
  }

  v14 = 1;
LABEL_49:

  return v14 & 1;
}

uint64_t sub_1000083E4()
{
  swift_getKeyPath();
  sub_100007530();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 16);
}

uint64_t sub_100008454@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100007530();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 16);
  return result;
}

uint64_t sub_1000084F4(uint64_t result)
{
  if (*(v1 + 16) == (result & 1))
  {
    *(v1 + 16) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100007530();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_1000085D4()
{
  swift_getKeyPath();
  sub_100007530();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 17);
}

uint64_t sub_100008644@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100007530();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 17);
  return result;
}

uint64_t sub_1000086E4(unsigned __int8 a1)
{
  result = sub_100007AD0(*(v1 + 17), a1);
  if (result)
  {
    *(v1 + 17) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100007530();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

void *sub_1000087C8()
{
  swift_getKeyPath();
  v3 = v0;
  sub_100007530();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 24);
  sub_10000C964(v1, *(v3 + 32), *(v3 + 40));
  return v1;
}

id sub_100008858@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100007530();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 24);
  v5 = *(v3 + 32);
  *a2 = v4;
  *(a2 + 8) = v5;
  v6 = *(v3 + 40);
  *(a2 + 16) = v6;
  return sub_10000C964(v4, v5, v6);
}

void sub_1000088DC(uint64_t a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *(a1 + 16);
  sub_10000C964(*a1, v3, v5);
  sub_10000892C(v2, v3, v5);
}

void sub_10000892C(void *a1, void *a2, char a3)
{
  v7 = *(v3 + 24);
  v8 = *(v3 + 32);
  v9 = *(v3 + 40);
  sub_10000C964(v7, v8, v9);
  v10 = sub_10000BE48(v7, v8, v9, a1, a2, a3);
  sub_10000C9C0(v7, v8, v9);
  if (v10)
  {
    v11 = *(v3 + 24);
    v12 = *(v3 + 32);
    *(v3 + 24) = a1;
    *(v3 + 32) = a2;
    v13 = *(v3 + 40);
    *(v3 + 40) = a3;

    sub_10000C9C0(v11, v12, v13);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100007530();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    sub_10000C9C0(a1, a2, a3);
  }
}

uint64_t sub_100008AA4()
{
  swift_getKeyPath();
  sub_100007530();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 41);
}

uint64_t sub_100008B14@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100007530();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 41);
  return result;
}

uint64_t sub_100008BB4(uint64_t result)
{
  if (*(v1 + 41) == (result & 1))
  {
    *(v1 + 41) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100007530();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_100008C94()
{
  swift_getKeyPath();
  sub_100007530();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 42);
}

uint64_t sub_100008D04@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100007530();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 42);
  return result;
}

uint64_t sub_100008D7C(uint64_t result)
{
  if (*(v1 + 42) == (result & 1))
  {
    *(v1 + 42) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100007530();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_100008E5C()
{
  swift_getKeyPath();
  sub_100007530();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 43);
}

uint64_t sub_100008ECC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100007530();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 43);
  return result;
}

uint64_t sub_100008F6C(uint64_t result)
{
  if (*(v1 + 43) == (result & 1))
  {
    *(v1 + 43) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100007530();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_100009054()
{
  swift_getKeyPath();
  sub_100007530();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 44);
}

uint64_t sub_1000090C4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100007530();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 44);
  return result;
}

uint64_t sub_100009164(uint64_t result)
{
  if (*(v1 + 44) == (result & 1))
  {
    *(v1 + 44) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100007530();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_10000924C()
{
  swift_getKeyPath();
  sub_100007530();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 48);
}

uint64_t sub_1000092C0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100007530();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 48);
}

uint64_t sub_10000933C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_100009368(v4);
}

uint64_t sub_100009368(uint64_t a1)
{
  v3 = *(v1 + 48);

  v5 = sub_10000B724(v4, a1);

  if (v5)
  {
    v6 = *(v1 + 48);
    *(v1 + 48) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100007530();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_10000948C()
{
  swift_getKeyPath();
  sub_100007530();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = *(v0 + 56);
  v2 = *(v0 + 64);
  return result;
}

uint64_t sub_100009500@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100007530();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v5 = *(v3 + 64);
  *a2 = *(v3 + 56);
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_1000095B4(uint64_t result, char a2)
{
  if ((*(v2 + 64) & 1) == 0)
  {
    if ((a2 & 1) != 0 || *(v2 + 56) != result)
    {
      goto LABEL_7;
    }

LABEL_6:
    *(v2 + 56) = result;
    *(v2 + 64) = a2 & 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_6;
  }

LABEL_7:
  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  sub_100007530();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_1000096B8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_10000972C(unsigned __int8 *a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (v1 == v3)
    {
    }

    else
    {
      swift_getKeyPath();
      swift_getKeyPath();
      return static Published.subscript.setter();
    }
  }

  return result;
}

uint64_t sub_100009814()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 64);

  v3 = OBJC_IVAR____TtCC5Media24RadioNowPlayingViewModel12ButtonConfig__focused;
  v4 = sub_10000368C(&unk_1000EBE20, &unk_1000B5120);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(v0 + OBJC_IVAR____TtCC5Media24RadioNowPlayingViewModel12ButtonConfig_cancels);

  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v6, v7);
}

uint64_t sub_1000098F0@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for RadioNowPlayingViewModel.ButtonConfig(0);
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

id sub_100009930(uint64_t a1, void *a2, char a3)
{
  if (a3)
  {
    if (a3 == 1)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      result = v7;
      if (!v7)
      {
        v4 = [objc_opt_self() currentTraitCollection];
        v5 = CPUIImageForPlaceholderTypeWithTraitCollection();

        return v5;
      }
    }

    else
    {
      v6 = objc_allocWithZone(UIImage);

      return [v6 init];
    }
  }

  else
  {

    return a2;
  }

  return result;
}

uint64_t sub_100009A7C(char a1, char a2, char a3, unint64_t a4)
{
  v5 = v4;
  *(v5 + 42) = 0;
  *(v5 + 44) = 0;
  *(v5 + 48) = &_swiftEmptyArrayStorage;
  *(v5 + 56) = 0;
  *(v5 + 64) = 1;
  ObservationRegistrar.init()();
  *(v5 + 17) = a1;
  *(v5 + 24) = 0;
  *(v5 + 32) = 0;
  *(v5 + 40) = 2;
  if (a4 >> 62)
  {
    v10 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v10 = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *(v5 + 41) = v10 != 0;
  *(v5 + 42) = 0;
  *(v5 + 16) = a2 & 1;
  v11 = a3 & 1;
  if (*(v5 + 43) == v11)
  {
    *(v5 + 43) = v11;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100007530();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  sub_100009368(a4);
  if (*(v5 + 44))
  {
    v13 = swift_getKeyPath();
    __chkstk_darwin(v13);
    sub_100007530();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
    *(v5 + 44) = 0;
  }

  return v5;
}

uint64_t sub_100009C8C(uint64_t a1)
{
  v2 = v1;
  swift_getKeyPath();
  sub_100007530();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(a1 + 17);
  if (sub_100007AD0(v2[17], v4))
  {
    v2[17] = v4;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v6 = *(a1 + 24);
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  sub_10000C964(v6, v7, v8);
  sub_10000892C(v6, v7, v8);
  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v9 = *(a1 + 41);
  if (v9 == v2[41])
  {
    v2[41] = v9;
  }

  else
  {
    v10 = swift_getKeyPath();
    __chkstk_darwin(v10);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v11 = *(a1 + 42);
  if (v11 == v2[42])
  {
    v2[42] = v11;
  }

  else
  {
    v12 = swift_getKeyPath();
    __chkstk_darwin(v12);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v13 = *(a1 + 16);
  if (v13 == v2[16])
  {
    v2[16] = v13;
  }

  else
  {
    v14 = swift_getKeyPath();
    __chkstk_darwin(v14);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v15 = *(a1 + 43);
  if (v15 == v2[43])
  {
    v2[43] = v15;
  }

  else
  {
    v16 = swift_getKeyPath();
    __chkstk_darwin(v16);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v17 = *(a1 + 44);
  if (v17 == v2[44])
  {
    v2[44] = v17;
  }

  else
  {
    v18 = swift_getKeyPath();
    __chkstk_darwin(v18);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v19 = *(a1 + 48);

  return sub_100009368(v20);
}

uint64_t sub_10000A22C()
{
  swift_getKeyPath();
  sub_100007530();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v0 + 40) != 1)
  {
    return 0;
  }

  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v0 + 40) != 1)
  {
    return 0;
  }

  v2 = *(v0 + 24);
  v1 = *(v0 + 32);
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.getter();

  if (!v0)
  {
    goto LABEL_8;
  }

  v3 = [v0 mediaSourceType];
  if (v3 == 4 || v3 == 5 || v3 == 7)
  {

LABEL_8:
    sub_10000C9C0(v2, v1, 1);
    return 0;
  }

  v5 = 1701736302;
  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v6 = *(v0 + 17);
  if (v6 <= 2)
  {
    if (*(v0 + 17))
    {
      if (v6 == 1)
      {
        v7 = 0x4D646E417370616DLL;
        v8 = 0xEC00000061696465;
      }

      else
      {
        v7 = 0xD000000000000010;
        v8 = 0x80000001000BAEF0;
      }
    }

    else
    {
      v8 = 0xE400000000000000;
      v7 = 1701736302;
    }
  }

  else if (*(v0 + 17) > 4u)
  {
    if (v6 == 5)
    {
      v7 = 0x756964654D616364;
      v8 = 0xE90000000000006DLL;
    }

    else
    {
      v8 = 0xE700000000000000;
      v7 = 0x6C6C6154616364;
    }
  }

  else
  {
    v7 = 0x6D696E694D616364;
    if (v6 == 3)
    {
      v8 = 0xEA00000000006C61;
    }

    else
    {
      v8 = 0xEE00656469576C61;
    }
  }

  if (v7 == 0x6D696E694D616364 && v8 == 0xEA00000000006C61)
  {
    goto LABEL_25;
  }

  v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v9)
  {
    goto LABEL_27;
  }

  if (v6 <= 2)
  {
    if (v6)
    {
      if (v6 == 1)
      {
        v5 = 0x4D646E417370616DLL;
        v10 = 0xEC00000061696465;
      }

      else
      {
        v5 = 0xD000000000000010;
        v10 = 0x80000001000BAEF0;
      }
    }

    else
    {
      v10 = 0xE400000000000000;
    }
  }

  else if (v6 > 4)
  {
    if (v6 == 5)
    {
      v5 = 0x756964654D616364;
      v10 = 0xE90000000000006DLL;
    }

    else
    {
      v10 = 0xE700000000000000;
      v5 = 0x6C6C6154616364;
    }
  }

  else
  {
    v5 = 0x6D696E694D616364;
    v10 = v6 == 3 ? 0xEA00000000006C61 : 0xEE00656469576C61;
  }

  if (v5 == 0x6D696E694D616364 && v10 == 0xEE00656469576C61)
  {
LABEL_25:

LABEL_27:
    sub_10000C9C0(v2, v1, 1);

    return 0;
  }

  v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v11)
  {
    goto LABEL_27;
  }

  sub_10000C9C0(v2, v1, 1);

  return 1;
}

uint64_t sub_10000ABB4()
{
  v1 = v0;
  swift_getKeyPath();
  sub_100007530();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2 = *(v0 + 24);
  if (*(v0 + 40))
  {
    if (*(v0 + 40) == 1)
    {
      v3 = *(v0 + 32);
      swift_getKeyPath();
      swift_getKeyPath();

      static Published.subscript.getter();

      if (v1)
      {
        v4 = [v1 titles];

        if (v4)
        {
          v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

          if (v5[2] >= 2uLL)
          {
            v7 = v5[6];
            v6 = v5[7];

            sub_10000C9C0(v2, v3, 1);

            return v7;
          }
        }
      }

      sub_10000C9C0(v2, v3, 1);
    }
  }

  else
  {
    v9 = v2;
    v10 = [v9 artist];
    if (v10)
    {
      v11 = v10;
      v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();

      return v12;
    }
  }

  return 0;
}

uint64_t sub_10000AD74()
{
  v1 = v0;
  swift_getKeyPath();
  sub_100007530();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2 = *(v0 + 24);
  if (*(v0 + 40))
  {
    if (*(v0 + 40) == 1)
    {
      v3 = *(v0 + 32);
      swift_getKeyPath();
      swift_getKeyPath();

      static Published.subscript.getter();

      if (v1)
      {
        v4 = [v1 titles];

        if (v4)
        {
          v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

          if (v5[2] >= 3uLL)
          {
            v7 = v5[8];
            v6 = v5[9];

            sub_10000C9C0(v2, v3, 1);

            return v7;
          }
        }
      }

      sub_10000C9C0(v2, v3, 1);
    }
  }

  else
  {
    v9 = v2;
    v10 = [v9 album];
    if (v10)
    {
      v11 = v10;
      v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();

      return v12;
    }
  }

  return 0;
}

uint64_t sub_10000AF54()
{
  v1 = [objc_opt_self() defaultManager];
  v0[20] = v1;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_10000B094;
  v2 = swift_continuation_init();
  v0[17] = sub_10000368C(&unk_1000EB5D0, &qword_1000B44E0);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_10000B2A8;
  v0[13] = &unk_1000DFD40;
  v0[14] = v2;
  [v1 getAgeVerificationStateWithCompletion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10000B094()
{
  v2 = *v0;
  v3 = *v0;

  return _swift_task_switch(sub_10000B174, 0, 0);
}

uint64_t sub_10000B174()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 152);
  v3 = [v1 treatment];

  v4 = *(v0 + 152);
  if ((*(v2 + 64) & 1) != 0 || *(v4 + 56) != v3)
  {
    swift_getKeyPath();
    v5 = swift_task_alloc();
    *(v5 + 16) = v4;
    *(v5 + 24) = v3;
    *(v5 + 32) = 0;
    *(v0 + 80) = v4;
    sub_100007530();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
    *(v2 + 64) = 0;
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_10000B2A8(uint64_t a1, void *a2)
{
  v3 = sub_10000CBDC((a1 + 32), *(a1 + 56));
  v4 = *v3;
  **(*(*v3 + 64) + 40) = a2;
  v5 = a2;

  return _swift_continuation_resume(v4);
}

uint64_t sub_10000B30C()
{
  sub_10000C9C0(*(v0 + 24), *(v0 + 32), *(v0 + 40));
  v1 = *(v0 + 48);

  v2 = OBJC_IVAR____TtC5Media24RadioNowPlayingViewModel___observationRegistrar;
  v3 = type metadata accessor for ObservationRegistrar();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v4, v5);
}

uint64_t sub_10000B3E4()
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

uint64_t sub_10000B4DC(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10000B514()
{
  sub_10000B5F0();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_10000B5F0()
{
  if (!qword_1000EE220)
  {
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &qword_1000EE220);
    }
  }
}

uint64_t sub_10000B640(uint64_t a1)
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

__n128 sub_10000B65C(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_10000B670(uint64_t a1, unsigned int a2)
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

uint64_t sub_10000B6B8(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_10000B6FC(uint64_t result, unsigned int a2)
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

uint64_t sub_10000B724(unint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5 != result)
    {
      goto LABEL_46;
    }

LABEL_5:
    if (!v5)
    {
      goto LABEL_29;
    }

    v7 = v3 & 0xFFFFFFFFFFFFFF8;
    v8 = (v3 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v3 < 0)
    {
      v7 = v3;
    }

    if (v4)
    {
      v8 = v7;
    }

    v9 = a2 & 0xFFFFFFFFFFFFFF8;
    v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if (a2 < 0)
    {
      v9 = a2;
    }

    if (a2 >> 62)
    {
      v10 = v9;
    }

    if (v8 == v10)
    {
LABEL_29:
      LOBYTE(v4) = 1;
      return v4 & 1;
    }

    if (v5 < 0)
    {
      __break(1u);
      return result;
    }

    if (((a2 | v3) & 0xC000000000000001) != 0)
    {
      v11 = a2 & 0xC000000000000001;
      v12 = 4;
      while (1)
      {
        v4 = v12 - 4;
        v13 = v12 - 3;
        if (__OFADD__(v12 - 4, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ((v3 & 0xC000000000000001) != 0)
        {
          v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          if (!v11)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v4 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v14 = *(v3 + 8 * v12);

          if (!v11)
          {
LABEL_24:
            if (v4 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            v15 = *(a2 + 8 * v12);

            goto LABEL_26;
          }
        }

        v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_26:
        LOBYTE(v4) = sub_10000BCB0(v14, v15);

        if (v4)
        {
          ++v12;
          if (v13 != v5)
          {
            continue;
          }
        }

        return v4 & 1;
      }
    }

    v16 = (v3 + 32);
    v17 = (a2 + 32);
    v18 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v19 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v20 = v5 - 1;
    while (1)
    {
      if (!v18)
      {
        goto LABEL_40;
      }

      if (!v19)
      {
        break;
      }

      v21 = *v16++;
      a2 = v21;
      v22 = *v17++;
      v3 = v22;

      v4 = sub_10000BCB0(a2, v22);

      v24 = v20-- != 0;
      if (v4)
      {
        --v19;
        --v18;
        if (v24)
        {
          continue;
        }
      }

      return v4 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v5 = _CocoaArrayWrapper.endIndex.getter();
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (v5 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  LOBYTE(v4) = 0;
  return v4 & 1;
}

uint64_t sub_10000B964(unint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5 != result)
    {
      goto LABEL_46;
    }

LABEL_5:
    if (!v5)
    {
      goto LABEL_29;
    }

    v7 = v3 & 0xFFFFFFFFFFFFFF8;
    v8 = (v3 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v3 < 0)
    {
      v7 = v3;
    }

    if (v4)
    {
      v8 = v7;
    }

    v9 = a2 & 0xFFFFFFFFFFFFFF8;
    v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if (a2 < 0)
    {
      v9 = a2;
    }

    if (a2 >> 62)
    {
      v10 = v9;
    }

    if (v8 == v10)
    {
LABEL_29:
      v18 = 1;
      return v18 & 1;
    }

    if (v5 < 0)
    {
      __break(1u);
      return result;
    }

    v4 = type metadata accessor for WidgetFocusableView();
    if (((a2 | v3) & 0xC000000000000001) != 0)
    {
      v11 = a2 & 0xC000000000000001;
      v12 = 4;
      while (1)
      {
        v13 = v12 - 4;
        v14 = v12 - 3;
        if (__OFADD__(v12 - 4, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ((v3 & 0xC000000000000001) != 0)
        {
          v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          if (!v11)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v13 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v15 = *(v3 + 8 * v12);
          if (!v11)
          {
LABEL_24:
            if (v13 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            v16 = *(a2 + 8 * v12);
            goto LABEL_26;
          }
        }

        v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_26:
        v17 = v16;
        v18 = static NSObject.== infix(_:_:)();

        if (v18)
        {
          ++v12;
          if (v14 != v5)
          {
            continue;
          }
        }

        return v18 & 1;
      }
    }

    v19 = (v3 + 32);
    v20 = (a2 + 32);
    v21 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v22 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v23 = v5 - 1;
    while (1)
    {
      if (!v21)
      {
        goto LABEL_40;
      }

      if (!v22)
      {
        break;
      }

      v25 = *v19++;
      v24 = v25;
      v26 = *v20++;
      a2 = v24;
      v3 = v26;
      v18 = static NSObject.== infix(_:_:)();

      v28 = v23-- != 0;
      if (v18)
      {
        --v22;
        --v21;
        if (v28)
        {
          continue;
        }
      }

      return v18 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v5 = _CocoaArrayWrapper.endIndex.getter();
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (v5 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  v18 = 0;
  return v18 & 1;
}

uint64_t sub_10000BBBC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v5;
  return result;
}

uint64_t sub_10000BC3C(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t sub_10000BCB0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24);
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || *(a1 + 32) != *(a2 + 32))
  {
    goto LABEL_15;
  }

  v5 = *(a1 + 40);
  v6 = *(a2 + 40);
  if (v5)
  {
    if (!v6)
    {
      goto LABEL_15;
    }

    type metadata accessor for WidgetFocusableView();
    v7 = v6;
    v8 = v5;
    v9 = static NSObject.== infix(_:_:)();

    if ((v9 & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  else if (v6)
  {
    goto LABEL_15;
  }

  if (*(a1 + 48) == *(a2 + 48) && *(a1 + 49) == *(a2 + 49) && *(a1 + 72) == *(a2 + 72))
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v10 = v13 ^ v12 ^ 1;
    return v10 & 1;
  }

LABEL_15:
  v10 = 0;
  return v10 & 1;
}

id sub_10000BE48(void *a1, void *a2, char a3, unint64_t a4, uint64_t a5, char a6)
{
  if (a3)
  {
    return (a3 != 1 && a6 == 2 && !(a5 | a4));
  }

  if (a6)
  {
    return 0;
  }

  v11 = [a1 title];
  if (v11)
  {
    v12 = v11;
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;
  }

  else
  {
    v13 = 0;
    v15 = 0;
  }

  v16 = [a4 title];
  if (v16)
  {
    v17 = v16;
    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;

    if (v15)
    {
      if (!v20)
      {
        goto LABEL_48;
      }

      if (v13 == v18 && v15 == v20)
      {
      }

      else
      {
        v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v21 & 1) == 0)
        {
          return 0;
        }
      }
    }

    else if (v20)
    {
      goto LABEL_48;
    }
  }

  else if (v15)
  {
    goto LABEL_48;
  }

  v22 = [a1 artist];
  if (v22)
  {
    v23 = v22;
    v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = v25;
  }

  else
  {
    v24 = 0;
    v26 = 0;
  }

  v27 = [a4 artist];
  if (v27)
  {
    v28 = v27;
    v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v31 = v30;

    if (v26)
    {
      if (!v31)
      {
        goto LABEL_48;
      }

      if (v24 == v29 && v26 == v31)
      {
      }

      else
      {
        v32 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v32 & 1) == 0)
        {
          return 0;
        }
      }
    }

    else if (v31)
    {
      goto LABEL_48;
    }
  }

  else if (v26)
  {
    goto LABEL_48;
  }

  v33 = [a1 album];
  if (v33)
  {
    v34 = v33;
    v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v37 = v36;
  }

  else
  {
    v35 = 0;
    v37 = 0;
  }

  v38 = [a4 album];
  if (v38)
  {
    v39 = v38;
    v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v42 = v41;

    if (v37)
    {
      if (!v42)
      {
        goto LABEL_48;
      }

      if (v35 == v40 && v37 == v42)
      {
      }

      else
      {
        v43 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v43 & 1) == 0)
        {
          return 0;
        }
      }
    }

    else if (v42)
    {
      goto LABEL_48;
    }
  }

  else if (v37)
  {
    goto LABEL_48;
  }

  [a1 durationSnapshot];
  [a4 durationSnapshot];
  [a1 durationSnapshot];
  [a4 durationSnapshot];
  [a1 durationSnapshot];
  [a4 durationSnapshot];
  [a1 durationSnapshot];
  [a4 durationSnapshot];
  [a1 durationSnapshot];
  [a4 durationSnapshot];
  [a1 durationSnapshot];
  [a4 durationSnapshot];
  [a1 durationSnapshot];
  [a4 durationSnapshot];
  [a1 durationSnapshot];
  [a4 durationSnapshot];
  [a1 durationSnapshot];
  [a4 durationSnapshot];
  v44 = [a1 bundleIdentifier];
  if (v44)
  {
    v45 = v44;
    v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v48 = v47;
  }

  else
  {
    v46 = 0;
    v48 = 0;
  }

  v49 = [a4 bundleIdentifier];
  if (!v49)
  {
    if (!v48)
    {
      goto LABEL_65;
    }

    goto LABEL_48;
  }

  v50 = v49;
  v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v53 = v52;

  if (!v48)
  {
    if (!v53)
    {
      goto LABEL_65;
    }

    goto LABEL_48;
  }

  if (!v53)
  {
LABEL_48:

    return 0;
  }

  if (v46 == v51 && v48 == v53)
  {

    goto LABEL_65;
  }

  v54 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v54 & 1) == 0)
  {
    return 0;
  }

LABEL_65:
  v55 = [a1 state];
  if (v55 != [a4 state])
  {
    return 0;
  }

  return [a2 isEqual:a5];
}

uint64_t sub_10000C430(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_100007530();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(a1 + 16);
  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (v4 != *(a2 + 16))
  {
    goto LABEL_8;
  }

  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v5 = *(a1 + 17);
  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if ((sub_100007AD0(v5, *(a2 + 17)) & 1) == 0)
  {
    goto LABEL_8;
  }

  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v6 = *(a1 + 24);
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  swift_getKeyPath();
  sub_10000C964(v6, v7, v8);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v9 = *(a2 + 24);
  v10 = *(a2 + 32);
  v11 = *(a2 + 40);
  sub_10000C964(v9, v10, v11);
  v12 = sub_10000BE48(v6, v7, v8, v9, v10, v11);
  sub_10000C9C0(v9, v10, v11);
  sub_10000C9C0(v6, v7, v8);
  if ((v12 & 1) == 0)
  {
    goto LABEL_8;
  }

  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v13 = *(a1 + 41);
  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (v13 != *(a2 + 41))
  {
    goto LABEL_8;
  }

  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v14 = *(a1 + 42);
  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (v14 != *(a2 + 42))
  {
    goto LABEL_8;
  }

  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v15 = *(a1 + 43);
  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (v15 != *(a2 + 43))
  {
    goto LABEL_8;
  }

  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v16 = *(a1 + 44);
  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (v16 == *(a2 + 44))
  {
    swift_getKeyPath();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v19 = *(a1 + 48);
    swift_getKeyPath();

    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v20 = *(a2 + 48);

    v17 = sub_10000B724(v19, v20);
  }

  else
  {
LABEL_8:
    v17 = 0;
  }

  return v17 & 1;
}

void sub_10000C914(uint64_t a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *(a1 + 16);
  sub_10000C964(*a1, v3, v5);
  sub_10000892C(v2, v3, v5);
}

id sub_10000C964(id result, void *a2, char a3)
{
  if (a3 == 1)
  {
  }

  else if (!a3)
  {
    v4 = result;

    return a2;
  }

  return result;
}

void sub_10000C9C0(void *a1, void *a2, char a3)
{
  if (a3 == 1)
  {
  }

  else if (!a3)
  {
  }
}

uint64_t sub_10000CAD0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_100009368(v4);
}

uint64_t sub_10000CB2C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_10000CBC8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  *(v1 + 56) = *(v0 + 24);
  *(v1 + 64) = v2;
}

void *sub_10000CBDC(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_10000CC68()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 48);
  *(v1 + 48) = *(v0 + 24);
}

void sub_10000CCA4()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v2 + 24);
  v5 = *(v2 + 32);
  v6 = *(v0 + 40);
  *(v2 + 24) = v1;
  *(v2 + 32) = v3;
  v7 = *(v2 + 40);
  *(v2 + 40) = v6;
  sub_10000C964(v1, v3, v6);
  sub_10000C9C0(v4, v5, v7);
}

void sub_10000CDB0()
{
  v1 = v0;
  v2 = sub_10000368C(&qword_1000EB878, &qword_1000B4728);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v46 - v5;
  v7 = sub_10000368C(&qword_1000EB880, &qword_1000B4730);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v46 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v47 = &v46 - v13;
  v14 = __chkstk_darwin(v12);
  v48 = &v46 - v15;
  __chkstk_darwin(v14);
  v17 = &v46 - v16;
  *&v1[OBJC_IVAR____TtC5Media15RadioCarManager_nowPlayingManager] = 0;
  *&v1[OBJC_IVAR____TtC5Media15RadioCarManager_navigationController] = 0;
  *&v1[OBJC_IVAR____TtC5Media15RadioCarManager_rootViewController] = 0;
  *&v1[OBJC_IVAR____TtC5Media15RadioCarManager_clusterViewController] = 0;
  *&v1[OBJC_IVAR____TtC5Media15RadioCarManager_passengerViewController] = 0;
  *&v1[OBJC_IVAR____TtC5Media15RadioCarManager_dashboardViewController] = 0;
  *&v1[OBJC_IVAR____TtC5Media15RadioCarManager_nowPlayingViewController] = 0;
  if (_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
  {
    v18 = sub_100003210(_swiftEmptyArrayStorage);
  }

  else
  {
    v18 = &_swiftEmptySetSingleton;
  }

  v51 = v3;
  *&v1[OBJC_IVAR____TtC5Media15RadioCarManager_cancelSet] = v18;
  if (qword_1000EACD0 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  sub_100006928(v19, qword_1000F3B40);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&_mh_execute_header, v20, v21, "Media is creating a car manager!", v22, 2u);
  }

  if (qword_1000EAD58 != -1)
  {
    swift_once();
  }

  v23 = qword_1000F3D08;
  *&v1[OBJC_IVAR____TtC5Media15RadioCarManager_carManager] = qword_1000F3D08;
  v24 = objc_allocWithZone(CARSessionStatus);
  v25 = v23;
  v26 = [v24 initWithOptions:4];
  *&v1[OBJC_IVAR____TtC5Media15RadioCarManager_sessionStatus] = v26;
  v27 = type metadata accessor for RadioCarManager();
  v57.receiver = v1;
  v57.super_class = v27;
  v28 = objc_msgSendSuper2(&v57, "init");
  v29 = *&v28[OBJC_IVAR____TtC5Media15RadioCarManager_sessionStatus];
  v30 = v28;
  [v29 addSessionObserver:v30];
  v31 = *&v30[OBJC_IVAR____TtC5Media15RadioCarManager_carManager];
  [v31 registerObserver:v30];

  v56 = objc_opt_self();
  v32 = [v56 sharedApplication];
  v33 = [v32 delegate];

  if (!v33)
  {
    __break(1u);
    goto LABEL_17;
  }

  v55 = type metadata accessor for AppDelegate();
  swift_dynamicCastClassUnconditional();
  swift_beginAccess();
  v54 = sub_10000368C(&qword_1000EB888, &qword_1000B4738);
  Published.projectedValue.getter();
  swift_endAccess();
  swift_unknownObjectRelease();
  v34 = sub_100005A50(0, &qword_1000EB890, UIWindow_ptr);
  v52 = sub_100005870(&qword_1000EB898, &qword_1000EB878, &qword_1000B4728);
  v53 = v34;
  Publisher.compactMap<A>(_:)();
  v51 = *(v51 + 8);
  (v51)(v6, v2);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v35 = sub_100005870(&unk_1000EB8A0, &qword_1000EB880, &qword_1000B4730);
  v36 = v30;
  v50 = v35;
  Publisher<>.sink(receiveValue:)();

  v49 = *(v8 + 8);
  v49(v17, v7);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v37 = [v56 sharedApplication];
  v38 = [v37 delegate];

  if (!v38)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_dynamicCastClassUnconditional();
  swift_beginAccess();
  Published.projectedValue.getter();
  swift_endAccess();
  swift_unknownObjectRelease();
  v39 = v48;
  Publisher.compactMap<A>(_:)();
  (v51)(v6, v2);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  Publisher<>.sink(receiveValue:)();

  v49(v39, v7);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v40 = [v56 sharedApplication];
  v41 = [v40 delegate];

  if (!v41)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  swift_dynamicCastClassUnconditional();
  swift_beginAccess();
  Published.projectedValue.getter();
  swift_endAccess();
  swift_unknownObjectRelease();
  v42 = v47;
  Publisher.compactMap<A>(_:)();
  (v51)(v6, v2);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  Publisher<>.sink(receiveValue:)();

  v49(v42, v7);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v43 = [v56 sharedApplication];
  v44 = [v43 delegate];

  if (v44)
  {
    swift_dynamicCastClassUnconditional();
    swift_beginAccess();
    Published.projectedValue.getter();
    swift_endAccess();
    swift_unknownObjectRelease();
    v45 = v46;
    Publisher.compactMap<A>(_:)();
    (v51)(v6, v2);
    swift_allocObject();
    swift_unknownObjectWeakInit();

    Publisher<>.sink(receiveValue:)();

    v49(v45, v7);
    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();

    sub_10000F318();
    sub_10000ED64();
    sub_10000E5C0();
    sub_10000E074();

    return;
  }

LABEL_19:
  __break(1u);
}

id sub_10000D878@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  *a2 = v2;
  return v2;
}

void sub_10000D884(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    a3();
  }
}

void sub_10000D904()
{
  if (qword_1000EACD0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100006928(v1, qword_1000F3B40);
  v2 = v0;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    *(v5 + 4) = v2;
    *v6 = v2;
    v7 = v2;
    _os_log_impl(&_mh_execute_header, v3, v4, "Media is invalidating car manager %@", v5, 0xCu);
    sub_1000113D0(v6);
  }

  if (qword_1000EAD48 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  swift_weakAssign();
  sub_100092458();
  v8 = objc_opt_self();
  v9 = [v8 sharedApplication];
  v10 = [v9 delegate];

  if (!v10)
  {
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
    return;
  }

  type metadata accessor for AppDelegate();
  swift_dynamicCastClassUnconditional();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  swift_unknownObjectRelease();
  if (v54)
  {
    [v54 setRootViewController:0];
  }

  v11 = [v8 sharedApplication];
  v12 = [v11 delegate];

  if (!v12)
  {
    goto LABEL_38;
  }

  swift_dynamicCastClassUnconditional();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  swift_unknownObjectRelease();
  if (v54)
  {
    [v54 setRootViewController:0];
  }

  v13 = [v8 sharedApplication];
  v14 = [v13 delegate];

  if (!v14)
  {
    goto LABEL_39;
  }

  swift_dynamicCastClassUnconditional();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  swift_unknownObjectRelease();
  if (v54)
  {
    [v54 setRootViewController:0];
  }

  v15 = [v8 sharedApplication];
  v16 = [v15 delegate];

  if (!v16)
  {
    goto LABEL_40;
  }

  swift_dynamicCastClassUnconditional();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  swift_unknownObjectRelease();
  if (v54)
  {
    [v54 setRootViewController:0];
  }

  v17 = [*&v2[OBJC_IVAR____TtC5Media15RadioCarManager_carManager] currentCar];
  if (v17)
  {
    v18 = v17;
    [v17 unregisterObserver:v2];
  }

  v19 = OBJC_IVAR____TtC5Media15RadioCarManager_rootViewController;
  v20 = *&v2[OBJC_IVAR____TtC5Media15RadioCarManager_rootViewController];
  if (v20)
  {
    v21 = v20;
    sub_1000957C0();

    v20 = *&v2[v19];
  }

  *&v2[v19] = 0;

  v22 = OBJC_IVAR____TtC5Media15RadioCarManager_clusterViewController;
  v23 = *&v2[OBJC_IVAR____TtC5Media15RadioCarManager_clusterViewController];
  if (v23)
  {
    v24 = OBJC_IVAR____TtC5Media36RadioClusterNowPlayingViewController_cancelSet;
    swift_beginAccess();
    v25 = *&v23[v24];
    *&v23[v24] = &_swiftEmptySetSingleton;
    v26 = v23;

    v26[OBJC_IVAR____TtC5Media36RadioClusterNowPlayingViewController_hasSetContentReady] = 0;

    v27 = *&v2[v22];
  }

  else
  {
    v27 = 0;
  }

  *&v2[v22] = 0;

  v28 = OBJC_IVAR____TtC5Media15RadioCarManager_passengerViewController;
  v29 = *&v2[OBJC_IVAR____TtC5Media15RadioCarManager_passengerViewController];
  if (v29)
  {
    v30 = OBJC_IVAR____TtC5Media36RadioClusterNowPlayingViewController_cancelSet;
    swift_beginAccess();
    v31 = *&v29[v30];
    *&v29[v30] = &_swiftEmptySetSingleton;
    v32 = v29;

    v32[OBJC_IVAR____TtC5Media36RadioClusterNowPlayingViewController_hasSetContentReady] = 0;

    v33 = *&v2[v28];
  }

  else
  {
    v33 = 0;
  }

  *&v2[v28] = 0;

  v34 = OBJC_IVAR____TtC5Media15RadioCarManager_dashboardViewController;
  v35 = *&v2[OBJC_IVAR____TtC5Media15RadioCarManager_dashboardViewController];
  if (v35)
  {
    v36 = OBJC_IVAR____TtC5Media36RadioClusterNowPlayingViewController_cancelSet;
    swift_beginAccess();
    v37 = *&v35[v36];
    *&v35[v36] = &_swiftEmptySetSingleton;
    v38 = v35;

    v38[OBJC_IVAR____TtC5Media36RadioClusterNowPlayingViewController_hasSetContentReady] = 0;

    v39 = *&v2[v34];
  }

  else
  {
    v39 = 0;
  }

  *&v2[v34] = 0;

  v40 = OBJC_IVAR____TtC5Media15RadioCarManager_nowPlayingViewController;
  v41 = *&v2[OBJC_IVAR____TtC5Media15RadioCarManager_nowPlayingViewController];
  if (v41)
  {
    v42 = v41;
    sub_10009C354();
    v43 = OBJC_IVAR____TtC5Media29RadioNowPlayingViewController_subscribers;
    swift_beginAccess();
    v44 = *&v42[v43];
    *&v42[v43] = &_swiftEmptySetSingleton;

    v41 = *&v2[v40];
  }

  *&v2[v40] = 0;

  v45 = OBJC_IVAR____TtC5Media15RadioCarManager_nowPlayingManager;
  v46 = *&v2[OBJC_IVAR____TtC5Media15RadioCarManager_nowPlayingManager];
  if (v46)
  {
    v47 = OBJC_IVAR____TtC5Media18NowPlayingObserver_cancelSet;
    swift_beginAccess();
    v48 = *(v46 + v47);
    *(v46 + v47) = &_swiftEmptySetSingleton;

    v49 = *(v46 + OBJC_IVAR____TtC5Media18NowPlayingObserver_nowPlayingManager);
    [v49 invalidate];

    v50 = *&v2[v45];
  }

  *&v2[v45] = 0;

  v51 = *&v2[OBJC_IVAR____TtC5Media15RadioCarManager_navigationController];
  *&v2[OBJC_IVAR____TtC5Media15RadioCarManager_navigationController] = 0;

  v52 = OBJC_IVAR____TtC5Media15RadioCarManager_cancelSet;
  swift_beginAccess();
  v53 = *&v2[v52];
  *&v2[v52] = &_swiftEmptySetSingleton;
}

void sub_10000E09C(uint64_t a1)
{
  v2 = [objc_opt_self() sharedApplication];
  v3 = [v2 delegate];

  if (v3)
  {
    type metadata accessor for AppDelegate();
    swift_dynamicCastClassUnconditional();
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    swift_unknownObjectRelease();
    if (!v37)
    {
      if (qword_1000EACD8 != -1)
      {
        swift_once();
      }

      v15 = type metadata accessor for Logger();
      sub_100006928(v15, qword_1000F3B58);
      v5 = Logger.logObject.getter();
      v16 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v5, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 0;
        _os_log_impl(&_mh_execute_header, v5, v16, "We have no dashboard window!", v17, 2u);
      }

      goto LABEL_23;
    }

    if (qword_1000EACD8 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_100006928(v4, qword_1000F3B58);
    v5 = v37;
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138412290;
      *(v8 + 4) = v5;
      *v9 = v37;
      v10 = v5;
      _os_log_impl(&_mh_execute_header, v6, v7, "Trying to connect to dashboard scene in %@...", v8, 0xCu);
      sub_1000113D0(v9);
    }

    v11 = [v5 rootViewController];
    if (v11)
    {

      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        _os_log_impl(&_mh_execute_header, v12, v13, "We've already connected to the dashboard window. Ignoring.", v14, 2u);
      }

      goto LABEL_23;
    }

    v18 = OBJC_IVAR____TtC5Media15RadioCarManager_nowPlayingManager;
    if (!*(a1 + OBJC_IVAR____TtC5Media15RadioCarManager_nowPlayingManager))
    {
      v19 = [*(a1 + OBJC_IVAR____TtC5Media15RadioCarManager_carManager) currentCar];
      v20 = *(a1 + OBJC_IVAR____TtC5Media15RadioCarManager_sessionStatus);
      v21 = type metadata accessor for NowPlayingObserver();
      v22 = *(v21 + 48);
      v23 = *(v21 + 52);
      swift_allocObject();
      v24 = sub_100067334(v19, v20);
      v25 = *(a1 + v18);
      *(a1 + v18) = v24;
    }

    if (qword_1000EACC0 != -1)
    {
      swift_once();
    }

    sub_10000612C(1, 0);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&_mh_execute_header, v26, v27, "Setting up widget now playing", v28, 2u);
    }

    v29 = *(a1 + v18);
    if (v29)
    {
      v30 = *(a1 + OBJC_IVAR____TtC5Media15RadioCarManager_sessionStatus);
      v31 = objc_allocWithZone(type metadata accessor for RadioClusterNowPlayingViewController());

      v32 = v30;
      sub_10003B0AC(v29, v32, 0, 0, 1);
      v34 = v33;

      v35 = *(a1 + OBJC_IVAR____TtC5Media15RadioCarManager_dashboardViewController);
      *(a1 + OBJC_IVAR____TtC5Media15RadioCarManager_dashboardViewController) = v34;
      v36 = v34;

      [v5 setRootViewController:v36];
      sub_10000612C(3, 0);

      v5 = v36;
LABEL_23:

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_10000E5E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v20 = *(v6 - 8);
  v7 = *(v20 + 64);
  __chkstk_darwin(v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for DispatchQoS();
  v10 = *(v19 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v19);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100005A50(0, &qword_1000EC7C0, OS_dispatch_queue_ptr);
  v14 = static OS_dispatch_queue.main.getter();
  v15 = swift_allocObject();
  *(v15 + 16) = v3;
  aBlock[4] = a2;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100064D70;
  aBlock[3] = a3;
  v16 = _Block_copy(aBlock);
  v17 = v3;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_100011378();
  sub_10000368C(&unk_1000EC7D0, &qword_1000B5D50);
  sub_100005870(&qword_1000EB850, &unk_1000EC7D0, &qword_1000B5D50);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v16);

  (*(v20 + 8))(v9, v6);
  return (*(v10 + 8))(v13, v19);
}

void sub_10000E89C(uint64_t a1)
{
  v2 = [objc_opt_self() sharedApplication];
  v3 = [v2 delegate];

  if (v3)
  {
    type metadata accessor for AppDelegate();
    swift_dynamicCastClassUnconditional();
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    swift_unknownObjectRelease();
    if (!v29)
    {
      if (qword_1000EACD8 != -1)
      {
        swift_once();
      }

      v15 = type metadata accessor for Logger();
      sub_100006928(v15, qword_1000F3B58);
      v5 = Logger.logObject.getter();
      v16 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v5, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 0;
        _os_log_impl(&_mh_execute_header, v5, v16, "We have no passenger window!", v17, 2u);
      }

      goto LABEL_22;
    }

    if (qword_1000EACD8 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_100006928(v4, qword_1000F3B58);
    v5 = v29;
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138412290;
      *(v8 + 4) = v5;
      *v9 = v29;
      v10 = v5;
      _os_log_impl(&_mh_execute_header, v6, v7, "Trying to connect to passenger scene in %@...", v8, 0xCu);
      sub_1000113D0(v9);
    }

    v11 = [v5 rootViewController];
    if (v11)
    {

      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        _os_log_impl(&_mh_execute_header, v12, v13, "We've already connected to the passenger window. Ignoring.", v14, 2u);
      }

      goto LABEL_22;
    }

    if ((sub_10000F868(1, 1) & 1) == 0)
    {
LABEL_22:

      return;
    }

    if (qword_1000EACC0 != -1)
    {
      swift_once();
    }

    sub_10000612C(1, 0);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v18, v19, "Setting up passenger now playing", v20, 2u);
    }

    v21 = *(a1 + OBJC_IVAR____TtC5Media15RadioCarManager_nowPlayingManager);
    if (v21)
    {
      v22 = *(a1 + OBJC_IVAR____TtC5Media15RadioCarManager_sessionStatus);
      v23 = objc_allocWithZone(type metadata accessor for RadioClusterNowPlayingViewController());

      v24 = v22;
      sub_10003B0AC(v21, v24, 1, 0, 0);
      v26 = v25;

      v27 = *(a1 + OBJC_IVAR____TtC5Media15RadioCarManager_passengerViewController);
      *(a1 + OBJC_IVAR____TtC5Media15RadioCarManager_passengerViewController) = v26;
      v28 = v26;

      [v5 setRootViewController:v28];
      sub_10000612C(3, 0);

      v5 = v28;
      goto LABEL_22;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_10000ED8C(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = [v2 sharedApplication];
  v4 = [v3 delegate];

  if (!v4)
  {
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  type metadata accessor for AppDelegate();
  swift_dynamicCastClassUnconditional();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  swift_unknownObjectRelease();
  if (!v32)
  {
    if (qword_1000EACD8 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_100006928(v16, qword_1000F3B58);
    v6 = Logger.logObject.getter();
    v17 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v6, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v6, v17, "We have no cluster window!", v18, 2u);
    }

    goto LABEL_23;
  }

  if (qword_1000EACD8 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100006928(v5, qword_1000F3B58);
  v6 = v32;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    *(v9 + 4) = v6;
    *v10 = v32;
    v11 = v6;
    _os_log_impl(&_mh_execute_header, v7, v8, "Trying to connect to cluster scene in %@...", v9, 0xCu);
    sub_1000113D0(v10);
  }

  v12 = [v6 rootViewController];
  if (v12)
  {

    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "We've already connected to the cluster window. Ignoring.", v15, 2u);
    }

    goto LABEL_23;
  }

  if ((sub_10000F868(1, 1) & 1) == 0)
  {
LABEL_23:

    return;
  }

  if (qword_1000EACC0 != -1)
  {
    swift_once();
  }

  sub_10000612C(1, 0);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&_mh_execute_header, v19, v20, "Setting up cluster now playing", v21, 2u);
  }

  v22 = *(a1 + OBJC_IVAR____TtC5Media15RadioCarManager_nowPlayingManager);
  if (!v22)
  {
    goto LABEL_25;
  }

  v23 = *(a1 + OBJC_IVAR____TtC5Media15RadioCarManager_sessionStatus);

  v24 = [v2 sharedApplication];
  v25 = [v24 delegate];

  if (v25)
  {
    swift_dynamicCastClassUnconditional();
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    swift_unknownObjectRelease();
    v26 = objc_allocWithZone(type metadata accessor for RadioClusterNowPlayingViewController());
    sub_10003B0AC(v22, v23, 0, v31, 0);
    v28 = v27;

    [v6 setRootViewController:v28];
    v29 = *(a1 + OBJC_IVAR____TtC5Media15RadioCarManager_clusterViewController);
    *(a1 + OBJC_IVAR____TtC5Media15RadioCarManager_clusterViewController) = v28;
    v30 = v28;

    sub_10000612C(3, 0);
    v6 = v30;
    goto LABEL_23;
  }

LABEL_26:
  __break(1u);
}

void sub_10000F340(void *a1)
{
  if (qword_1000EACD8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100006928(v2, qword_1000F3B58);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Trying to connect to main scene...", v5, 2u);
  }

  v6 = [objc_opt_self() sharedApplication];
  v7 = [v6 delegate];

  if (v7)
  {
    type metadata accessor for AppDelegate();
    swift_dynamicCastClassUnconditional();
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    swift_unknownObjectRelease();
    if (v30)
    {
      v8 = [v30 rootViewController];
      if (v8)
      {

        v9 = Logger.logObject.getter();
        v10 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v9, v10))
        {
          v11 = swift_slowAlloc();
          *v11 = 0;
          _os_log_impl(&_mh_execute_header, v9, v10, "Received a car, but we've already connected to the car screen. Ignoring.", v11, 2u);
        }

        v12 = v30;
      }

      else
      {
        v12 = v30;
        if (sub_10000F868(1, 1))
        {
          v15 = Logger.logObject.getter();
          v16 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v15, v16))
          {
            v17 = swift_slowAlloc();
            *v17 = 0;
            _os_log_impl(&_mh_execute_header, v15, v16, "Connecting to main screen", v17, 2u);
          }

          if (qword_1000EACC0 != -1)
          {
            swift_once();
          }

          sub_10000612C(1, 0);
          v18 = objc_allocWithZone(type metadata accessor for RadioRootViewController());
          v19 = a1;
          sub_100098EF0(v19);
          v21 = v20;

          v22 = *&v19[OBJC_IVAR____TtC5Media15RadioCarManager_rootViewController];
          *&v19[OBJC_IVAR____TtC5Media15RadioCarManager_rootViewController] = v21;
          v12 = v21;

          v23 = [objc_allocWithZone(UINavigationController) initWithRootViewController:v12];
          [v23 setDelegate:v19];
          v24 = *&v19[OBJC_IVAR____TtC5Media15RadioCarManager_navigationController];
          *&v19[OBJC_IVAR____TtC5Media15RadioCarManager_navigationController] = v23;
          v25 = v23;

          [v30 setRootViewController:v25];
          sub_10000612C(3, 0);
          if (*&v19[OBJC_IVAR____TtC5Media15RadioCarManager_nowPlayingManager])
          {
            v26 = *&v19[OBJC_IVAR____TtC5Media15RadioCarManager_nowPlayingManager];

            NowPlayingObserver.emitFinalizedIfNeeded()();
          }

          else
          {
            if (qword_1000EAD00 != -1)
            {
              swift_once();
            }

            sub_100006928(v2, qword_1000F3BD0);
            v27 = Logger.logObject.getter();
            v28 = static os_log_type_t.error.getter();
            if (os_log_type_enabled(v27, v28))
            {
              v29 = swift_slowAlloc();
              *v29 = 0;
              _os_log_impl(&_mh_execute_header, v27, v28, "Missing now playing manager!", v29, 2u);
            }
          }
        }
      }
    }

    else
    {
      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        _os_log_impl(&_mh_execute_header, v12, v13, "Received a car, but we have no main window!", v14, 2u);
      }
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10000F868(char a1, char a2)
{
  if (a1)
  {
    v4 = [*(v2 + OBJC_IVAR____TtC5Media15RadioCarManager_sessionStatus) currentSession];
    if (!v4)
    {
      if (qword_1000EACD8 != -1)
      {
        swift_once();
      }

      v17 = type metadata accessor for Logger();
      sub_100006928(v17, qword_1000F3B58);
      v6 = Logger.logObject.getter();
      v18 = static os_log_type_t.debug.getter();
      if (!os_log_type_enabled(v6, v18))
      {
        goto LABEL_43;
      }

      v19 = swift_slowAlloc();
      *v19 = 0;
      v20 = "Waiting for a car session...";
      goto LABEL_26;
    }
  }

  if (a2)
  {
    v5 = [*(v2 + OBJC_IVAR____TtC5Media15RadioCarManager_carManager) currentCar];
    if (v5)
    {
      v6 = v5;
      if (![v5 isConfigured])
      {
        if (qword_1000EACD8 != -1)
        {
          swift_once();
        }

        v22 = type metadata accessor for Logger();
        sub_100006928(v22, qword_1000F3B58);
        v23 = Logger.logObject.getter();
        v24 = static os_log_type_t.debug.getter();
        if (!os_log_type_enabled(v23, v24))
        {
          goto LABEL_42;
        }

        v25 = swift_slowAlloc();
        *v25 = 0;
        v26 = "Received a car, but it is not yet configured.";
        goto LABEL_31;
      }

      v7 = [v6 media];
      if (v7)
      {

        v8 = [v6 nowPlayingInformation];
        if (v8)
        {
          v9 = v2;

          if (qword_1000EAD50 != -1)
          {
            swift_once();
          }

          v10 = dispatch thunk of CAUAssetLibraryManager.slimAssetLibrary.getter();
          if (v10)
          {

            if (*(v2 + OBJC_IVAR____TtC5Media15RadioCarManager_nowPlayingManager))
            {
              v11 = qword_1000EACD8;
              v12 = *(v9 + OBJC_IVAR____TtC5Media15RadioCarManager_nowPlayingManager);

              if (v11 != -1)
              {
                swift_once();
              }

              v13 = type metadata accessor for Logger();
              sub_100006928(v13, qword_1000F3B58);
              v14 = Logger.logObject.getter();
              v15 = static os_log_type_t.debug.getter();
              if (os_log_type_enabled(v14, v15))
              {
                v16 = swift_slowAlloc();
                *v16 = 0;
                _os_log_impl(&_mh_execute_header, v14, v15, "Assigning car to now playing", v16, 2u);
              }

              swift_beginAccess();
              swift_unknownObjectWeakAssign();
              v6 = v6;
              sub_10006A4AC();
            }

            else
            {
              if (qword_1000EACD8 != -1)
              {
                swift_once();
              }

              v36 = type metadata accessor for Logger();
              sub_100006928(v36, qword_1000F3B58);
              v37 = Logger.logObject.getter();
              v38 = static os_log_type_t.debug.getter();
              if (os_log_type_enabled(v37, v38))
              {
                v39 = swift_slowAlloc();
                *v39 = 0;
                _os_log_impl(&_mh_execute_header, v37, v38, "Not assigning to car to now playing; already assigned", v39, 2u);
              }
            }

            v2 = v9;
            goto LABEL_56;
          }

          if (qword_1000EACD8 != -1)
          {
            swift_once();
          }

          v35 = type metadata accessor for Logger();
          sub_100006928(v35, qword_1000F3B58);
          v23 = Logger.logObject.getter();
          v24 = static os_log_type_t.debug.getter();
          if (!os_log_type_enabled(v23, v24))
          {
            goto LABEL_42;
          }

          v25 = swift_slowAlloc();
          *v25 = 0;
          v26 = "Unable to retrieve asset library";
LABEL_31:
          _os_log_impl(&_mh_execute_header, v23, v24, v26, v25, 2u);
LABEL_41:

LABEL_42:

          goto LABEL_43;
        }

        if (qword_1000EACD8 != -1)
        {
          swift_once();
        }

        v33 = type metadata accessor for Logger();
        sub_100006928(v33, qword_1000F3B58);
        v28 = v6;
        v23 = Logger.logObject.getter();
        v29 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v23, v29))
        {
          v30 = swift_slowAlloc();
          v31 = swift_slowAlloc();
          *v30 = 138412290;
          *(v30 + 4) = v28;
          *v31 = v6;
          v6 = v28;
          v32 = "Received a car, but it has no now playing. Waiting on car: %@";
          goto LABEL_40;
        }
      }

      else
      {
        if (qword_1000EACD8 != -1)
        {
          swift_once();
        }

        v27 = type metadata accessor for Logger();
        sub_100006928(v27, qword_1000F3B58);
        v28 = v6;
        v23 = Logger.logObject.getter();
        v29 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v23, v29))
        {
          v30 = swift_slowAlloc();
          v31 = swift_slowAlloc();
          *v30 = 138412290;
          *(v30 + 4) = v28;
          *v31 = v6;
          v6 = v28;
          v32 = "Received a car, but it has no media. Waiting on car: %@";
LABEL_40:
          _os_log_impl(&_mh_execute_header, v23, v29, v32, v30, 0xCu);
          sub_1000113D0(v31);

          goto LABEL_41;
        }
      }

      return 0;
    }

    if (qword_1000EACD8 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_100006928(v21, qword_1000F3B58);
    v6 = Logger.logObject.getter();
    v18 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v6, v18))
    {
      goto LABEL_43;
    }

    v19 = swift_slowAlloc();
    *v19 = 0;
    v20 = "Waiting for a car...";
LABEL_26:
    _os_log_impl(&_mh_execute_header, v6, v18, v20, v19, 2u);

LABEL_43:

    return 0;
  }

LABEL_56:
  v40 = OBJC_IVAR____TtC5Media15RadioCarManager_nowPlayingManager;
  if (!*(v2 + OBJC_IVAR____TtC5Media15RadioCarManager_nowPlayingManager))
  {
    v41 = [*(v2 + OBJC_IVAR____TtC5Media15RadioCarManager_carManager) currentCar];
    v42 = *(v2 + OBJC_IVAR____TtC5Media15RadioCarManager_sessionStatus);
    v43 = type metadata accessor for NowPlayingObserver();
    v44 = *(v43 + 48);
    v45 = *(v43 + 52);
    swift_allocObject();
    v46 = sub_100067334(v41, v42);
    v47 = *(v2 + v40);
    *(v2 + v40) = v46;
  }

  return 1;
}

void sub_100010040()
{
  v1 = OBJC_IVAR____TtC5Media15RadioCarManager_nowPlayingViewController;
  if (*(v0 + OBJC_IVAR____TtC5Media15RadioCarManager_nowPlayingViewController))
  {
    if (qword_1000EAD00 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_100006928(v2, qword_1000F3BD0);
    oslog = Logger.logObject.getter();
    v3 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(oslog, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v3, "Now playing already visible; not pushing.", v4, 2u);
    }
  }

  else
  {
    v5 = [objc_opt_self() mainBundle];
    v6 = [v5 bundleIdentifier];

    if (!v6)
    {
      __break(1u);
      return;
    }

    v7 = [objc_allocWithZone(type metadata accessor for RadioNowPlayingViewController()) initWithBundleIdentifier:v6 dataSource:0 delegate:0];

    swift_unknownObjectWeakAssign();
    v8 = v0;
    sub_10009A458();
    v9 = *(v0 + v1);
    *(v8 + v1) = v7;
    oslog = v7;

    v10 = *(v8 + OBJC_IVAR____TtC5Media15RadioCarManager_navigationController);
    if (v10)
    {
      v11 = v10;
      [v11 pushViewController:oslog animated:1];
    }
  }
}

uint64_t sub_100010290()
{
  v1 = [*(v0 + OBJC_IVAR____TtC5Media15RadioCarManager_carManager) currentCar];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 audioSettings];
    v4 = v3 != 0;
    if (v3)
    {
      v5 = v3;
      v6 = [v3 equalizers];
      if (v6 && ((v7 = v6, sub_100005A50(0, &unk_1000EEC00, CAFEqualizer_ptr), v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)(), v7, v8 >> 62) ? (v9 = _CocoaArrayWrapper.endIndex.getter()) : (v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10)), , v9))
      {
      }

      else
      {
        v10 = [v5 soundDistribution];

        v2 = v10;
        if (!v10)
        {
          return 0;
        }
      }
    }

    return v4;
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void sub_100010424(char a1)
{
  v2 = v1;
  v4 = [*(v1 + OBJC_IVAR____TtC5Media15RadioCarManager_carManager) currentCar];
  if (!v4)
  {
    goto LABEL_29;
  }

  v5 = v4;
  v6 = [v4 audioSettings];
  if (!v6)
  {
    if (qword_1000EACD0 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_100006928(v15, qword_1000F3B40);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "Missing AutoSettings", v18, 2u);
    }

    v27 = v5;
    goto LABEL_24;
  }

  v7 = v6;
  v8 = [*(v2 + OBJC_IVAR____TtC5Media15RadioCarManager_sessionStatus) currentSession];
  if (v8)
  {
    v9 = v8;
    v10 = [v8 configuration];

    v11 = [v10 screens];
    sub_100005A50(0, &unk_1000EB860, CARScreenInfo_ptr);
    v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v12 >> 62)
    {
      if (_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_6;
      }
    }

    else if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_6:
      if ((v12 & 0xC000000000000001) != 0)
      {
        v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        goto LABEL_9;
      }

      if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v13 = *(v12 + 32);
LABEL_9:
        v14 = v13;

        [v14 availableInteractionModels];

        goto LABEL_17;
      }

      __break(1u);
LABEL_29:
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return;
    }
  }

LABEL_17:
  v19 = qword_1000EAD50;
  v27 = v7;
  if (v19 != -1)
  {
    swift_once();
  }

  CAUAssetLibraryManager.createAudioLogoBarButton()();
  v20 = objc_allocWithZone(type metadata accessor for CAFUISoundSettingsViewController());
  v16 = CAFUISoundSettingsViewController.init(hasKnobSupport:audioSettings:audioLogo:)();
  v21 = [v16 navigationItem];
  v22 = [objc_allocWithZone(UIBarButtonItem) initWithBarButtonSystemItem:0 target:v2 action:"dismissSettingsModal"];
  [v21 setLeftBarButtonItem:v22];

  v23 = [objc_allocWithZone(UINavigationController) initWithRootViewController:v16];
  v24 = v23;
  if (a1)
  {
    [v23 setOverrideUserInterfaceStyle:2];
    [v16 setOverrideUserInterfaceStyle:2];
  }

  v25 = *(v2 + OBJC_IVAR____TtC5Media15RadioCarManager_navigationController);
  if (v25)
  {
    v26 = v25;
    [v26 presentViewController:v24 animated:1 completion:0];
  }

LABEL_24:
}

uint64_t sub_100010900(void *a1)
{
  if (qword_1000EACD0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100006928(v2, qword_1000F3B40);
  v3 = a1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    *(v6 + 4) = v3;
    *v7 = v3;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v4, v5, "%@ is configured", v6, 0xCu);
    sub_1000113D0(v7);
  }

  sub_10000F318();
  sub_10000ED64();
  sub_10000E5C0();

  return sub_10000E074();
}

uint64_t sub_100010BB0(void *a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v17 = *(v2 - 8);
  v3 = *(v17 + 64);
  __chkstk_darwin(v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchQoS();
  v6 = *(v16 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v16);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100005A50(0, &qword_1000EC7C0, OS_dispatch_queue_ptr);
  v10 = static OS_dispatch_queue.main.getter();
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  *(v12 + 24) = a1;
  aBlock[4] = sub_100011358;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100064D70;
  aBlock[3] = &unk_1000DFDB8;
  v13 = _Block_copy(aBlock);
  v14 = a1;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100011378();
  sub_10000368C(&unk_1000EC7D0, &qword_1000B5D50);
  sub_100005870(&qword_1000EB850, &unk_1000EC7D0, &qword_1000B5D50);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v13);

  (*(v17 + 8))(v5, v2);
  return (*(v6 + 8))(v9, v16);
}

void sub_100010E9C(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = [*(Strong + OBJC_IVAR____TtC5Media15RadioCarManager_carManager) currentCar];
    if (v5)
    {
      v6 = v5;
      if (qword_1000EACD0 != -1)
      {
        swift_once();
      }

      v7 = type metadata accessor for Logger();
      sub_100006928(v7, qword_1000F3B40);
      v8 = v6;
      v9 = Logger.logObject.getter();
      v10 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        *v11 = 138412290;
        *(v11 + 4) = v8;
        *v12 = v6;
        v13 = v8;
        _os_log_impl(&_mh_execute_header, v9, v10, "Car session did connect to %@", v11, 0xCu);
        sub_1000113D0(v12);

        v9 = v13;
      }

      else
      {
      }
    }

    else
    {
      if (qword_1000EACD0 != -1)
      {
        swift_once();
      }

      v14 = type metadata accessor for Logger();
      sub_100006928(v14, qword_1000F3B40);
      v9 = Logger.logObject.getter();
      v15 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v9, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 0;
        _os_log_impl(&_mh_execute_header, v9, v15, "Car session connected, but no car available!", v16, 2u);
      }
    }

    [a2 addObserver:v4];
    sub_10000F318();
    sub_10000ED64();
    sub_10000E5C0();
    sub_10000E074();
  }
}

id sub_1000111BC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RadioCarManager();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1000112E0()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100011318()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100011360(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_100011378()
{
  result = qword_1000EB840;
  if (!qword_1000EB840)
  {
    type metadata accessor for DispatchWorkItemFlags();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EB840);
  }

  return result;
}

uint64_t sub_1000113D0(uint64_t a1)
{
  v2 = sub_10000368C(&unk_1000EE230, &qword_1000BA550);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100011438()
{

  return _swift_deallocObject(v0, 24, 7);
}

void sub_1000114B8(void *a1)
{
  if (qword_1000EACD0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100006928(v2, qword_1000F3B40);
  v3 = a1;
  oslog = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    *(v5 + 4) = v3;
    *v6 = v3;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, oslog, v4, "%@ has updated accessories", v5, 0xCu);
    sub_1000113D0(v6);
  }
}

void sub_1000115F4(void *a1)
{
  if (a1)
  {
    v2 = v1;
    v4 = qword_1000EACD0;
    v5 = a1;
    if (v4 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_100006928(v6, qword_1000F3B40);
    v12 = v5;
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *v9 = 138412290;
      *(v9 + 4) = v12;
      *v10 = a1;
      v11 = v12;
      _os_log_impl(&_mh_execute_header, v7, v8, "Received a new current car %@", v9, 0xCu);
      sub_1000113D0(v10);
    }

    [v12 registerObserver:v2];
    sub_10000F318();
    sub_10000ED64();
    sub_10000E5C0();
    sub_10000E074();
  }
}

void sub_100011798(void *a1)
{
  v2 = v1;
  v3 = OBJC_IVAR____TtC5Media15RadioCarManager_nowPlayingViewController;
  v4 = *(v1 + OBJC_IVAR____TtC5Media15RadioCarManager_nowPlayingViewController);
  if (v4)
  {
    sub_100005A50(0, &qword_1000EB870, UIViewController_ptr);
    v6 = a1;
    v7 = v4;
    LOBYTE(a1) = static NSObject.== infix(_:_:)();

    if (a1)
    {
      return;
    }

    v8 = *(v2 + v3);
    if (v8)
    {
      v9 = v8;
      sub_10009C354();
      v10 = OBJC_IVAR____TtC5Media29RadioNowPlayingViewController_subscribers;
      swift_beginAccess();
      v11 = *&v9[v10];
      *&v9[v10] = &_swiftEmptySetSingleton;

      v8 = *(v2 + v3);
    }
  }

  else
  {
    v8 = 0;
  }

  *(v2 + v3) = 0;
}

uint64_t sub_100011980()
{
  v0 = type metadata accessor for RadioDialerViewModel();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();

  v3 = sub_10004A420();

  return v3;
}

uint64_t sub_1000119D4()
{
  v1 = v0;
  v2 = sub_10000368C(&qword_1000EB970, &qword_1000B4870);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v5 = &v23 - v4;
  *v5 = static Alignment.center.getter();
  *(v5 + 1) = v6;
  v7 = sub_10000368C(&qword_1000EB978, &qword_1000B4878);
  sub_100011CF0(v0, &v5[*(v7 + 44)]);
  v29 = *(v0 + 64);
  v30 = *(v0 + 80);
  v23 = *(v0 + 64);
  v24 = *(v0 + 80);
  sub_10000368C(&qword_1000EB980, &qword_1000B4880);
  State.wrappedValue.getter();
  v23 = v29;
  v24 = v30;
  State.wrappedValue.getter();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v8 = &v5[*(sub_10000368C(&qword_1000EB988, &qword_1000B4888) + 36)];
  v9 = v27;
  *v8 = v26;
  *(v8 + 1) = v9;
  *(v8 + 2) = v28;
  v10 = *(v0 + 24);
  v11 = *(v1 + 32);
  v12 = *(v1 + 40);
  type metadata accessor for RadioDialerViewModel();
  sub_1000146C0(&qword_1000EB990, type metadata accessor for RadioDialerViewModel);
  v13 = StateObject.wrappedValue.getter();
  v14 = static ObservableObject.environmentStore.getter();
  v15 = &v5[*(v2 + 36)];
  *v15 = v14;
  v15[1] = v13;
  v16 = *(v1 + 56);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v17 = v23;
  v25 = v23;
  v18 = swift_allocObject();
  v19 = *(v1 + 80);
  *(v18 + 80) = *(v1 + 64);
  *(v18 + 96) = v19;
  *(v18 + 112) = *(v1 + 96);
  v20 = *(v1 + 16);
  *(v18 + 16) = *v1;
  *(v18 + 32) = v20;
  v21 = *(v1 + 48);
  *(v18 + 48) = *(v1 + 32);
  *(v18 + 64) = v21;
  sub_100013BE0(v1, &v23);
  sub_10000368C(&qword_1000EB998, &qword_1000B7C40);
  sub_100013C18();
  sub_100013D88();
  View.onChange<A>(of:initial:_:)();

  return sub_100013E88(v5);
}

uint64_t sub_100011CF0@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v51 = a2;
  v53 = sub_10000368C(&qword_1000EB9E8, &qword_1000B48F8);
  v3 = *(v53 - 8);
  v4 = v3[8];
  v5 = __chkstk_darwin(v53);
  v52 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = &v39 - v7;
  *&v83[0] = static Color.clear.getter();
  BYTE8(v83[0]) = 0;
  v9 = swift_allocObject();
  v10 = *(a1 + 80);
  *(v9 + 80) = *(a1 + 64);
  *(v9 + 96) = v10;
  *(v9 + 112) = *(a1 + 96);
  v11 = *(a1 + 16);
  *(v9 + 16) = *a1;
  *(v9 + 32) = v11;
  v12 = *(a1 + 48);
  *(v9 + 48) = *(a1 + 32);
  *(v9 + 64) = v12;
  sub_100013BE0(a1, &v84);
  sub_10000368C(&qword_1000EB9F0, &qword_1000B4900);
  sub_100013FB4();
  v41 = v8;
  View.onTapGesture(count:perform:)();

  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  *&v50 = v56;
  v49 = v57;
  v48 = v58;
  v47 = v59;
  v45 = v61;
  v46 = v60;
  v44 = static VerticalAlignment.center.getter();
  LOBYTE(v62) = 0;
  sub_1000123F0(a1, &v84);
  v77 = *&v85[176];
  v78 = *&v85[192];
  v79 = *&v85[208];
  v73 = *&v85[112];
  v74 = *&v85[128];
  v75 = *&v85[144];
  v76 = *&v85[160];
  v69 = *&v85[48];
  v70 = *&v85[64];
  v71 = *&v85[80];
  v72 = *&v85[96];
  v65 = v84;
  v66 = *v85;
  v67 = *&v85[16];
  v68 = *&v85[32];
  v81[12] = *&v85[176];
  v81[13] = *&v85[192];
  v81[14] = *&v85[208];
  v81[8] = *&v85[112];
  v81[9] = *&v85[128];
  v81[10] = *&v85[144];
  v81[11] = *&v85[160];
  v81[4] = *&v85[48];
  v81[5] = *&v85[64];
  v81[6] = *&v85[80];
  v81[7] = *&v85[96];
  v81[0] = v84;
  v81[1] = *v85;
  v80 = v85[224];
  v82 = v85[224];
  v81[2] = *&v85[16];
  v81[3] = *&v85[32];
  sub_1000077CC(&v65, v83, &qword_1000EBA38, &qword_1000B4920);
  sub_100007834(v81, &qword_1000EBA38, &qword_1000B4920);
  *&v54[199] = v77;
  *&v54[215] = v78;
  *&v54[231] = v79;
  *&v54[135] = v73;
  *&v54[151] = v74;
  *&v54[167] = v75;
  *&v54[183] = v76;
  *&v54[71] = v69;
  *&v54[87] = v70;
  *&v54[103] = v71;
  *&v54[119] = v72;
  *&v54[7] = v65;
  *&v54[23] = v66;
  *&v54[39] = v67;
  v54[247] = v80;
  *&v54[55] = v68;
  v13 = v62;
  v42 = v62;
  v43 = static Edge.Set.all.getter();
  EdgeInsets.init(_all:)();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  LOBYTE(v84) = 0;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  *&v55[7] = v62;
  *&v55[23] = v63;
  *&v55[39] = v64;
  v22 = [objc_opt_self() blackColor];
  v23 = [v22 colorWithAlphaComponent:0.08];

  v40 = Color.init(uiColor:)();
  v24 = v3[2];
  v25 = v52;
  v26 = v8;
  v27 = v53;
  v24(v52, v26, v53);
  v28 = v51;
  v24(v51, v25, v27);
  v29 = sub_10000368C(&qword_1000EBA40, &qword_1000B4928);
  v30 = &v28[*(v29 + 48)];
  *v30 = v50;
  v30[8] = v49;
  *(v30 + 2) = v48;
  v30[24] = v47;
  v31 = v45;
  *(v30 + 4) = v46;
  *(v30 + 5) = v31;
  v32 = *(v29 + 64);
  v33 = v44;
  v83[0] = v44;
  LOBYTE(v83[1]) = v13;
  *(&v83[16] + 1) = *&v54[240];
  *(&v83[2] + 1) = *&v54[16];
  *(&v83[1] + 1) = *v54;
  *(&v83[13] + 1) = *&v54[192];
  *(&v83[14] + 1) = *&v54[208];
  *(&v83[15] + 1) = *&v54[224];
  *(&v83[9] + 1) = *&v54[128];
  *(&v83[10] + 1) = *&v54[144];
  *(&v83[11] + 1) = *&v54[160];
  *(&v83[12] + 1) = *&v54[176];
  *(&v83[5] + 1) = *&v54[64];
  *(&v83[6] + 1) = *&v54[80];
  *(&v83[7] + 1) = *&v54[96];
  *(&v83[8] + 1) = *&v54[112];
  *(&v83[3] + 1) = *&v54[32];
  *(&v83[4] + 1) = *&v54[48];
  v34 = v43;
  LOBYTE(v83[17]) = v43;
  *(&v83[17] + 1) = v15;
  *&v83[18] = v17;
  *(&v83[18] + 1) = v19;
  *&v83[19] = v21;
  BYTE8(v83[19]) = 0;
  *(&v83[19] + 9) = *v55;
  *(&v83[20] + 9) = *&v55[16];
  *(&v83[21] + 9) = *&v55[32];
  *(&v83[22] + 1) = *&v55[47];
  v35 = v40;
  *&v83[23] = v40;
  *(&v83[23] + 1) = 0x4030000000000000;
  v50 = xmmword_1000B4750;
  v83[24] = xmmword_1000B4750;
  memcpy(&v28[v32], v83, 0x190uLL);
  sub_1000077CC(v83, &v84, &qword_1000EBA48, &qword_1000B4930);
  v36 = v3[1];
  v37 = v53;
  v36(v41, v53);
  *&v85[193] = *&v54[192];
  *&v85[209] = *&v54[208];
  *&v85[225] = *&v54[224];
  *&v85[129] = *&v54[128];
  *&v85[145] = *&v54[144];
  *&v85[161] = *&v54[160];
  *&v85[177] = *&v54[176];
  *&v85[65] = *&v54[64];
  *&v85[81] = *&v54[80];
  *&v85[97] = *&v54[96];
  *&v85[113] = *&v54[112];
  *&v85[1] = *v54;
  *&v85[17] = *&v54[16];
  *&v85[33] = *&v54[32];
  v84 = v33;
  v85[0] = v42;
  v86 = *&v54[240];
  *&v85[49] = *&v54[48];
  v87 = v34;
  v88 = v15;
  v89 = v17;
  v90 = v19;
  v91 = v21;
  v92 = 0;
  v93 = *v55;
  v94 = *&v55[16];
  *v95 = *&v55[32];
  *&v95[15] = *&v55[47];
  v96 = v35;
  v97 = 0x4030000000000000;
  v98 = v50;
  sub_100007834(&v84, &qword_1000EBA48, &qword_1000B4930);
  return (v36)(v52, v37);
}

uint64_t sub_1000123F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v51 = type metadata accessor for GridItem.Size();
  v44 = *(v51 - 8);
  v4 = *(v44 + 64);
  __chkstk_darwin(v51);
  v6 = (&v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for GridItem();
  v50 = *(v7 - 8);
  v8 = v50;
  v9 = *(v50 + 64);
  __chkstk_darwin(v7);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = *(a1 + 88);
  v79 = *(a1 + 88);
  v45 = sub_10000368C(&qword_1000EBA50, &qword_1000B4938);
  State.wrappedValue.getter();
  v46 = v75;
  v86 = *a1;
  v87 = *(a1 + 16);
  v79 = *a1;
  v43 = a1;
  LOBYTE(v80) = *(a1 + 16);
  v47 = sub_10000368C(&qword_1000EB9E0, &qword_1000B48F0);
  Binding.projectedValue.getter();
  v49 = *(&v75 + 1);
  v52 = v75;
  v48 = LOBYTE(v76[0]);
  *v6 = 0x4044000000000000;
  (*(v44 + 104))(v6, enum case for GridItem.Size.fixed(_:), v51);
  GridItem.init(_:spacing:alignment:)();
  v12 = static Array._allocateBufferUninitialized(minimumCapacity:)();
  *(v12 + 16) = 3;
  v13 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v51 = v12;
  v14 = v12 + v13;
  v15 = *(v8 + 16);
  v15(v12 + v13, v11, v7);
  v16 = *(v50 + 72);
  v15(v14 + v16, v11, v7);
  (*(v8 + 32))(v14 + 2 * v16, v11, v7);
  LODWORD(v50) = static Edge.Set.trailing.getter();
  EdgeInsets.init(_all:)();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v79 = v86;
  LOBYTE(v80) = v87;
  Binding.projectedValue.getter();
  v25 = *(&v75 + 1);
  v47 = v75;
  v26 = v76[0];
  v79 = v88;
  State.wrappedValue.getter();
  if (v75 == 1)
  {
    v27 = static HorizontalAlignment.center.getter();
    LOBYTE(v64) = 1;
    sub_100012B1C(v43, &v79);
    v58 = v83;
    v59 = v84;
    v60 = v85[0];
    v54 = v79;
    v55 = v80;
    v56 = v81;
    v57 = v82;
    v68 = v79;
    v69 = v80;
    v70 = v81;
    v71 = v82;
    v72 = v83;
    v73 = v84;
    LOBYTE(v74[0]) = v85[0];
    sub_1000077CC(&v54, &v75, &qword_1000EBA68, &qword_1000B4950);
    sub_100007834(&v68, &qword_1000EBA68, &qword_1000B4950);
    *&v53[55] = v57;
    *&v53[71] = v58;
    *&v53[87] = v59;
    v53[103] = v60;
    *&v53[7] = v54;
    *&v53[23] = v55;
    *&v53[39] = v56;
    v75 = v27;
    LOBYTE(v76[0]) = v64;
    *(&v76[2] + 1) = *&v53[32];
    *(&v76[1] + 1) = *&v53[16];
    *(v76 + 1) = *v53;
    *(&v76[6] + 1) = *&v53[96];
    *(&v76[5] + 1) = *&v53[80];
    *(&v76[4] + 1) = *&v53[64];
    *(&v76[3] + 1) = *&v53[48];
    nullsub_1(&v75);
    v83 = v76[3];
    v84 = v76[4];
    v85[0] = v76[5];
    *(v85 + 9) = *(&v76[5] + 9);
    v79 = v75;
    v80 = v76[0];
    v81 = v76[1];
    v82 = v76[2];
  }

  else
  {
    sub_100014178(&v79);
  }

  v28 = v46;
  v29 = 0x4034000000000000;
  if (!v46)
  {
    v29 = 0;
  }

  v76[3] = v83;
  v76[4] = v84;
  v76[5] = v85[0];
  *(&v76[5] + 9) = *(v85 + 9);
  v75 = v79;
  v76[0] = v80;
  v76[1] = v81;
  v76[2] = v82;
  v63 = v46 ^ 1;
  *&v64 = v52;
  v30 = v49;
  *(&v64 + 1) = v49;
  v31 = v48;
  LOBYTE(v65) = v48;
  *(&v65 + 1) = *v78;
  DWORD1(v65) = *&v78[3];
  *(&v65 + 1) = v51;
  LOBYTE(v66) = v50;
  *(&v66 + 1) = *v77;
  DWORD1(v66) = *&v77[3];
  *(&v66 + 1) = v18;
  *&v67[0] = v20;
  *(&v67[0] + 1) = v22;
  *&v67[1] = v24;
  BYTE8(v67[1]) = 0;
  *&v62[6] = v64;
  *&v62[54] = v67[0];
  *&v62[63] = *(v67 + 9);
  *&v62[38] = v66;
  *&v62[22] = v65;
  v70 = v81;
  v71 = v82;
  v68 = v79;
  v69 = v80;
  *(v74 + 9) = *(v85 + 9);
  v73 = v84;
  v74[0] = v85[0];
  v72 = v83;
  *(&v61[3] + 7) = v82;
  *(&v61[2] + 7) = v81;
  *(&v61[1] + 7) = v80;
  *(v61 + 7) = v79;
  v61[7] = *(v85 + 9);
  *(&v61[6] + 7) = v85[0];
  *(&v61[5] + 7) = v84;
  *(&v61[4] + 7) = v83;
  *a2 = v29;
  *(a2 + 8) = 0;
  *(a2 + 9) = v28 ^ 1;
  v32 = *&v62[16];
  *(a2 + 10) = *v62;
  v33 = *&v62[32];
  v34 = *&v62[48];
  *(a2 + 73) = *&v62[63];
  *(a2 + 58) = v34;
  *(a2 + 42) = v33;
  *(a2 + 26) = v32;
  *(a2 + 96) = v47;
  *(a2 + 104) = v25;
  *(a2 + 112) = v26;
  v35 = v61[0];
  v36 = v61[1];
  v37 = v61[2];
  *(a2 + 161) = v61[3];
  *(a2 + 145) = v37;
  *(a2 + 129) = v36;
  *(a2 + 113) = v35;
  v38 = v61[4];
  v39 = v61[5];
  v40 = v61[6];
  *(a2 + 225) = v61[7];
  *(a2 + 209) = v40;
  *(a2 + 193) = v39;
  *(a2 + 177) = v38;
  sub_1000077CC(&v64, &v54, &qword_1000EBA58, &qword_1000B4940);

  sub_1000077CC(&v68, &v54, &qword_1000EBA60, &qword_1000B4948);
  sub_100007834(&v75, &qword_1000EBA60, &qword_1000B4948);

  *&v54 = v52;
  *(&v54 + 1) = v30;
  LOBYTE(v55) = v31;
  *(&v55 + 1) = *v78;
  DWORD1(v55) = *&v78[3];
  *(&v55 + 1) = v51;
  LOBYTE(v56) = v50;
  *(&v56 + 1) = *v77;
  DWORD1(v56) = *&v77[3];
  *(&v56 + 1) = v18;
  *&v57 = v20;
  *(&v57 + 1) = v22;
  *&v58 = v24;
  BYTE8(v58) = 0;
  return sub_100007834(&v54, &qword_1000EBA58, &qword_1000B4940);
}

uint64_t sub_100012B1C@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = *a1;
  LOBYTE(v23) = *(a1 + 16);
  sub_10000368C(&qword_1000EB9E0, &qword_1000B48F0);
  Binding.projectedValue.getter();
  v3 = v28;
  v4 = v29;
  KeyPath = swift_getKeyPath();
  v6 = static Edge.Set.leading.getter();
  EdgeInsets.init(_all:)();
  *&v17[0] = KeyPath;
  BYTE8(v17[0]) = 0;
  v17[1] = v28;
  LOBYTE(v18) = v29;
  BYTE8(v18) = v6;
  *&v19 = v7;
  *(&v19 + 1) = v8;
  *&v20 = v9;
  *(&v20 + 1) = v10;
  v21 = 0;
  v22 = v17[0];
  v23 = v28;
  LOBYTE(v27) = 0;
  v25 = v19;
  v26 = v20;
  v24 = v18;
  v16[88] = 1;
  v11 = v28;
  *a2 = v17[0];
  *(a2 + 16) = v11;
  v12 = v24;
  v13 = v26;
  v14 = v27;
  *(a2 + 48) = v25;
  *(a2 + 64) = v13;
  *(a2 + 32) = v12;
  *(a2 + 80) = v14;
  *(a2 + 88) = 0;
  *(a2 + 96) = 1;
  *&v28 = KeyPath;
  BYTE8(v28) = 0;
  v29 = v3;
  v30 = v4;
  v31 = v6;
  v32 = v7;
  v33 = v8;
  v34 = v9;
  v35 = v10;
  v36 = 0;
  sub_1000077CC(v17, v16, &qword_1000EBA70, &qword_1000B4988);
  return sub_100007834(&v28, &qword_1000EBA70, &qword_1000B4988);
}

uint64_t sub_100012C84()
{
  v6 = v0[4];
  v7 = v0[5];
  v8 = *(v0 + 12);
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  v5 = v0[3];
  return sub_1000119D4();
}

uint64_t sub_100012CD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = *(a1 + 8);
  v26 = a1;
  v9 = *a1;
  v33 = *a1;
  if (v34 != 1)
  {

    static os_log_type_t.fault.getter();
    v11 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_100007834(&v33, &qword_1000EBA80, &qword_1000B4AF0);
    (*(v5 + 8))(v8, v4);
    if (v27 != 1)
    {
      goto LABEL_3;
    }

LABEL_5:
    v12 = [objc_opt_self() radio_carSystemFocusColor];
    goto LABEL_6;
  }

  if (v9)
  {
    goto LABEL_5;
  }

LABEL_3:
  v10 = [objc_opt_self() whiteColor];
  [v10 colorWithAlphaComponent:0.15];

LABEL_6:
  v25 = Color.init(uiColor:)();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v13 = v27;
  v14 = v28;
  v15 = v29;
  v16 = v30;
  v17 = v31;
  v18 = v32;
  v19 = static Alignment.center.getter();
  v21 = v20;
  v22 = a2 + *(sub_10000368C(&qword_1000EBA88, &qword_1000B4AF8) + 36);
  sub_100012F74(v26, v22);
  result = sub_10000368C(&qword_1000EBAC8, &unk_1000B4B10);
  v24 = (v22 + *(result + 36));
  *v24 = v19;
  v24[1] = v21;
  *a2 = v25;
  *(a2 + 8) = v13;
  *(a2 + 16) = v14;
  *(a2 + 24) = v15;
  *(a2 + 32) = v16;
  *(a2 + 40) = v17;
  *(a2 + 48) = v18;
  return result;
}

uint64_t sub_100012F74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v3 = type metadata accessor for EnvironmentValues();
  v27 = *(v3 - 8);
  v28 = v3;
  v4 = *(v27 + 64);
  __chkstk_darwin(v3);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000368C(&qword_1000EBAE0, &qword_1000B7000);
  v30 = *(v7 - 8);
  v31 = v7;
  v8 = *(v30 + 64);
  __chkstk_darwin(v7);
  v10 = &v27 - v9;
  v29 = sub_10000368C(&qword_1000EBAE8, &qword_1000B4B20);
  v11 = *(*(v29 - 8) + 64);
  __chkstk_darwin(v29);
  v13 = &v27 - v12;
  v14 = Image.init(systemName:)();
  v15 = static Font.footnote.getter();
  KeyPath = swift_getKeyPath();
  v34 = v14;
  v35 = KeyPath;
  v36 = v15;
  static Font.Weight.medium.getter();
  sub_10000368C(&qword_1000EBAF0, &unk_1000B7050);
  sub_100014710();
  View.fontWeight(_:)();

  LOBYTE(v35) = *(a1 + 8);
  v17 = *a1;
  v34 = *a1;
  if (v35 != 1)
  {

    static os_log_type_t.fault.getter();
    v19 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_100007834(&v34, &qword_1000EBA80, &qword_1000B4AF0);
    (*(v27 + 8))(v6, v28);
    if (v33)
    {
      goto LABEL_3;
    }

LABEL_5:
    v18 = &selRef_labelColor;
    goto LABEL_6;
  }

  if ((v17 & 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v18 = &selRef_radio_carSystemFocusLabelColor;
LABEL_6:
  v20 = [objc_opt_self() *v18];
  v21 = Color.init(uiColor:)();
  (*(v30 + 32))(v13, v10, v31);
  *&v13[*(v29 + 36)] = v21;
  v22 = *(sub_10000368C(&qword_1000EBB10, &qword_1000B4B68) + 36);
  v23 = enum case for BlendMode.plusLighter(_:);
  v24 = type metadata accessor for BlendMode();
  v25 = v32;
  (*(*(v24 - 8) + 104))(v32 + v22, v23, v24);
  return sub_1000147C8(v13, v25);
}

uint64_t sub_10001331C()
{
  v1 = type metadata accessor for PlainButtonStyle();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v15[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_10000368C(&qword_1000EBA78, &qword_1000B4AE8);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v15[-v9];
  v11 = *(v0 + 1);
  v18[0] = *v0;
  v18[1] = v11;
  v19 = *(v0 + 32);
  v20 = *v0;
  v21 = *(v0 + 8);
  v22 = v11;
  v12 = swift_allocObject();
  v13 = *(v0 + 1);
  *(v12 + 16) = *v0;
  *(v12 + 32) = v13;
  *(v12 + 48) = *(v0 + 32);
  v16 = v18;
  sub_1000077CC(&v20, v17, &qword_1000EBA80, &qword_1000B4AF0);
  sub_100014414(&v22, v17);

  sub_10000368C(&qword_1000EBA88, &qword_1000B4AF8);
  sub_100014470();
  Button.init(action:label:)();
  PlainButtonStyle.init()();
  sub_100005870(&qword_1000EBAD0, &qword_1000EBA78, &qword_1000B4AE8);
  sub_1000146C0(&qword_1000EBAD8, &type metadata accessor for PlainButtonStyle);
  View.buttonStyle<A>(_:)();
  (*(v2 + 8))(v5, v1);
  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_100013600@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for _ShapeSet();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Material._GlassVariant();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Material();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Material._GlassVariant.regular.getter();
  static Material._glass(_:)();
  (*(v8 + 8))(v11, v7);
  sub_10000368C(&qword_1000EBB18, &qword_1000B4B70);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1000B4760;
  sub_100014838();
  *(v17 + 32) = AnyShape.init<A>(_:)();
  _ShapeSet.init(shapes:smoothness:)();
  sub_10001488C();
  View.materialEffect(_:in:)();
  (*(v3 + 8))(v6, v2);
  (*(v13 + 8))(v16, v12);
  v18 = (a1 + *(sub_10000368C(&qword_1000EBB30, &qword_1000B4B78) + 36));
  v19 = *(type metadata accessor for RoundedRectangle() + 20);
  v20 = enum case for RoundedCornerStyle.continuous(_:);
  v21 = type metadata accessor for RoundedCornerStyle();
  (*(*(v21 - 8) + 104))(&v18[v19], v20, v21);
  __asm { FMOV            V0.2D, #30.0 }

  *v18 = _Q0;
  result = sub_10000368C(&qword_1000EBB38, &qword_1000B4B80);
  *&v18[*(result + 36)] = 256;
  return result;
}

id sub_100013918()
{
  v0 = objc_allocWithZone(UIView);

  return [v0 init];
}

uint64_t sub_1000139A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100014AC8();

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_100013A08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100014AC8();

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_100013A6C()
{
  sub_100014AC8();
  UIViewRepresentable.body.getter();
  __break(1u);
}

uint64_t sub_100013A98@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.isFocused.getter();
  *a1 = result & 1;
  return result;
}

__n128 sub_100013AD4(uint64_t a1, __int128 *a2)
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

uint64_t sub_100013B00(uint64_t a1, int a2)
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

uint64_t sub_100013B48(uint64_t result, int a2, int a3)
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

unint64_t sub_100013C18()
{
  result = qword_1000EB9A0;
  if (!qword_1000EB9A0)
  {
    sub_100005780(&qword_1000EB970, &qword_1000B4870);
    sub_100013CD0();
    sub_100005870(&qword_1000EB9C0, &qword_1000EB9C8, &qword_1000B48E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EB9A0);
  }

  return result;
}

unint64_t sub_100013CD0()
{
  result = qword_1000EB9A8;
  if (!qword_1000EB9A8)
  {
    sub_100005780(&qword_1000EB988, &qword_1000B4888);
    sub_100005870(&qword_1000EB9B0, &qword_1000EB9B8, &qword_1000B48E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EB9A8);
  }

  return result;
}

unint64_t sub_100013D88()
{
  result = qword_1000EB9D0;
  if (!qword_1000EB9D0)
  {
    sub_100005780(&qword_1000EB998, &qword_1000B7C40);
    sub_1000146C0(&qword_1000EB9D8, sub_100013E3C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EB9D0);
  }

  return result;
}

unint64_t sub_100013E3C()
{
  result = qword_1000EAFE0;
  if (!qword_1000EAFE0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000EAFE0);
  }

  return result;
}

uint64_t sub_100013E88(uint64_t a1)
{
  v2 = sub_10000368C(&qword_1000EB970, &qword_1000B4870);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100013EF0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v5 = *(v0 + 56);
  sub_100013BD8();
  v6 = *(v0 + 72);

  v7 = *(v0 + 96);

  v8 = *(v0 + 112);

  return _swift_deallocObject(v0, 120, 7);
}

uint64_t sub_100013F58()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 32);
  sub_10000368C(&qword_1000EB9E0, &qword_1000B48F0);
  return Binding.wrappedValue.setter();
}

unint64_t sub_100013FB4()
{
  result = qword_1000EB9F8;
  if (!qword_1000EB9F8)
  {
    sub_100005780(&qword_1000EB9F0, &qword_1000B4900);
    sub_10001406C();
    sub_100005870(&qword_1000EBA28, &qword_1000EBA30, &qword_1000B4918);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EB9F8);
  }

  return result;
}

unint64_t sub_10001406C()
{
  result = qword_1000EBA00;
  if (!qword_1000EBA00)
  {
    sub_100005780(&qword_1000EBA08, &qword_1000B4908);
    sub_100014124();
    sub_100005870(&qword_1000EBA18, &qword_1000EBA20, &qword_1000B4910);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EBA00);
  }

  return result;
}

unint64_t sub_100014124()
{
  result = qword_1000EBA10;
  if (!qword_1000EBA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EBA10);
  }

  return result;
}

double sub_100014178(_OWORD *a1)
{
  result = 0.0;
  *(a1 + 105) = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

uint64_t sub_100014194@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.isFocused.getter();
  *a1 = result & 1;
  return result;
}

__n128 sub_1000141D0(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1000141E4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10001422C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100014290()
{
  sub_100005780(&qword_1000EB970, &qword_1000B4870);
  sub_100005780(&qword_1000EB998, &qword_1000B7C40);
  sub_100013C18();
  sub_100013D88();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_100014358()
{
  sub_1000143A4(*(v0 + 16), *(v0 + 24));
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 49, 7);
}

uint64_t sub_1000143A4(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_1000143B0()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 48);
  sub_10000368C(&qword_1000EB9E0, &qword_1000B48F0);
  return Binding.wrappedValue.setter();
}

unint64_t sub_100014470()
{
  result = qword_1000EBA90;
  if (!qword_1000EBA90)
  {
    sub_100005780(&qword_1000EBA88, &qword_1000B4AF8);
    sub_100014528();
    sub_100005870(&qword_1000EBAC0, &qword_1000EBAC8, &unk_1000B4B10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EBA90);
  }

  return result;
}

unint64_t sub_100014528()
{
  result = qword_1000EBA98;
  if (!qword_1000EBA98)
  {
    sub_100005780(&qword_1000EBAA0, &qword_1000B4B00);
    sub_1000145B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EBA98);
  }

  return result;
}

unint64_t sub_1000145B4()
{
  result = qword_1000EBAA8;
  if (!qword_1000EBAA8)
  {
    sub_100005780(&qword_1000EBAB0, &qword_1000B4B08);
    sub_10001466C();
    sub_100005870(&qword_1000EBA18, &qword_1000EBA20, &qword_1000B4910);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EBAA8);
  }

  return result;
}

unint64_t sub_10001466C()
{
  result = qword_1000EBAB8;
  if (!qword_1000EBAB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EBAB8);
  }

  return result;
}

uint64_t sub_1000146C0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100014710()
{
  result = qword_1000EBAF8;
  if (!qword_1000EBAF8)
  {
    sub_100005780(&qword_1000EBAF0, &unk_1000B7050);
    sub_100005870(&qword_1000EBB00, &qword_1000EBB08, &qword_1000B4B60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EBAF8);
  }

  return result;
}

uint64_t sub_1000147C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000368C(&qword_1000EBAE8, &qword_1000B4B20);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_100014838()
{
  result = qword_1000EBB20;
  if (!qword_1000EBB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EBB20);
  }

  return result;
}

unint64_t sub_10001488C()
{
  result = qword_1000EBB28;
  if (!qword_1000EBB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EBB28);
  }

  return result;
}

uint64_t sub_1000148F0()
{
  sub_100005780(&qword_1000EBA78, &qword_1000B4AE8);
  type metadata accessor for PlainButtonStyle();
  sub_100005870(&qword_1000EBAD0, &qword_1000EBA78, &qword_1000B4AE8);
  sub_1000146C0(&qword_1000EBAD8, &type metadata accessor for PlainButtonStyle);
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_1000149D4()
{
  result = qword_1000EBB40;
  if (!qword_1000EBB40)
  {
    sub_100005780(&qword_1000EBB30, &qword_1000B4B78);
    sub_10001488C();
    swift_getOpaqueTypeConformance2();
    sub_100005870(&qword_1000EBB48, &qword_1000EBB38, &qword_1000B4B80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EBB40);
  }

  return result;
}

unint64_t sub_100014AC8()
{
  result = qword_1000EBB50;
  if (!qword_1000EBB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EBB50);
  }

  return result;
}

void sub_100014B24()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v4 = v3;

    qword_1000F3B30 = v2;
    *algn_1000F3B38 = v4;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100014CC8(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for Logger();
  sub_100014D80(v3, a2);
  sub_100006928(v3, a2);
  if (qword_1000EACC8 != -1)
  {
    swift_once();
  }

  return Logger.init(subsystem:category:)();
}

uint64_t *sub_100014D80(uint64_t a1, uint64_t *a2)
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

uint64_t sub_100014E20@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v6 = sub_10000368C(&qword_1000EBBF0, &qword_1000B6840);
  v82 = *(v6 - 8);
  v83 = v6;
  v7 = *(v82 + 64);
  __chkstk_darwin(v6);
  v9 = &v77 - v8;
  v77 = type metadata accessor for MediaProgressView(0);
  v10 = *(*(v77 - 8) + 64);
  __chkstk_darwin(v77);
  v12 = &v77 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_10000368C(&qword_1000EB110, &qword_1000B3F98);
  v13 = *(*(v78 - 8) + 64);
  v14 = __chkstk_darwin(v78);
  v81 = &v77 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v79 = &v77 - v17;
  __chkstk_darwin(v16);
  v80 = &v77 - v18;
  v19 = type metadata accessor for EnvironmentValues();
  v89 = *(v19 - 8);
  v90 = v19;
  v20 = *(v89 + 64);
  __chkstk_darwin(v19);
  v22 = &v77 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_10000368C(&qword_1000EBBF8, &qword_1000B4F70);
  v24 = *(*(v23 - 8) + 64);
  v25 = __chkstk_darwin(v23 - 8);
  v88 = &v77 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v86 = &v77 - v27;
  KeyPath = swift_getKeyPath();
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  *&v129[55] = v134;
  *&v129[71] = v135;
  *&v129[87] = v136;
  *&v129[103] = v137;
  *&v129[7] = v131;
  *&v129[23] = v132;
  v130 = 0;
  *&v129[39] = v133;
  v85 = swift_getKeyPath();

  v28 = a1;
  v84 = a2;
  if ((a2 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v29 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v89 + 8))(v22, v90);
    v28 = *&v125[0];
  }

  swift_getKeyPath();
  *&v125[0] = v28;
  sub_100007530();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v30 = *(v28 + 44);

  if (v30 == 1)
  {
    static Alignment.center.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    *&v91[55] = v141;
    *&v91[71] = v142;
    *&v91[87] = v143;
    *&v91[103] = v144;
    *&v91[7] = v138;
    *&v91[23] = v139;
    LOBYTE(v105) = 0;
    *&v91[39] = v140;
    *v12 = swift_getKeyPath();
    v12[8] = 0;
    v31 = v77;
    v32 = *(v77 + 20);
    *&v12[v32] = swift_getKeyPath();
    sub_10000368C(&qword_1000EB118, &qword_1000B3FD0);
    swift_storeEnumTagMultiPayload();
    v33 = &v12[*(v31 + 24)];
    v34 = type metadata accessor for PlaybackTimeObserver(0);
    v35 = *(v34 + 48);
    v36 = *(v34 + 52);
    swift_allocObject();
    *&v115 = sub_100063724();
    State.init(wrappedValue:)();
    v37 = *(&v125[0] + 1);
    *v33 = *&v125[0];
    *(v33 + 1) = v37;
    static Alignment.center.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    v38 = v79;
    sub_1000076F8(v12, v79);
    v39 = (v38 + *(v78 + 36));
    v40 = v150;
    v39[4] = v149;
    v39[5] = v40;
    v39[6] = v151;
    v41 = v146;
    *v39 = v145;
    v39[1] = v41;
    v42 = v148;
    v39[2] = v147;
    v39[3] = v42;
    v43 = v80;
    sub_10001721C(v38, v80, &qword_1000EB110, &qword_1000B3F98);
    v44 = v81;
    sub_1000077CC(v43, v81, &qword_1000EB110, &qword_1000B3F98);
    v45 = *&v91[80];
    *(v9 + 73) = *&v91[64];
    *(v9 + 89) = v45;
    *(v9 + 105) = *&v91[96];
    v46 = *&v91[16];
    *(v9 + 9) = *v91;
    *(v9 + 25) = v46;
    v47 = *&v91[48];
    *(v9 + 41) = *&v91[32];
    *v9 = 0x4020000000000000;
    v9[8] = 0;
    *(v9 + 15) = *&v91[111];
    *(v9 + 57) = v47;
    v48 = sub_10000368C(&qword_1000EBC10, &qword_1000B68B0);
    sub_1000077CC(v44, &v9[*(v48 + 48)], &qword_1000EB110, &qword_1000B3F98);
    sub_100007834(v43, &qword_1000EB110, &qword_1000B3F98);
    sub_100007834(v44, &qword_1000EB110, &qword_1000B3F98);
    v49 = v86;
    sub_10001721C(v9, v86, &qword_1000EBBF0, &qword_1000B6840);
    (*(v82 + 56))(v49, 0, 1, v83);
  }

  else
  {
    v49 = v86;
    (*(v82 + 56))(v86, 1, 1, v83);
  }

  v50 = v84;
  if (v84)
  {
    v128 = a1;

    v51 = a1;
  }

  else
  {

    static os_log_type_t.fault.getter();
    v52 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v89 + 8))(v22, v90);
    v51 = v128;
  }

  swift_getKeyPath();
  *&v125[0] = v51;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v53 = *(v51 + 41);

  if (v53 == 1)
  {
    if (v50)
    {
      v94 = a1;
    }

    else
    {

      static os_log_type_t.fault.getter();
      v54 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();

      (*(v89 + 8))(v22, v90);
      a1 = v94;
    }

    swift_getKeyPath();
    *&v125[0] = a1;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v55 = *(a1 + 24);
    v56 = *(a1 + 32);
    v57 = *(a1 + 40);
    sub_10000C964(v55, v56, *(a1 + 40));

    if (v57 != 2 || v56 | v55)
    {
      sub_10000C9C0(v55, v56, v57);
      static Alignment.center.getter();
      _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
      LOBYTE(v105) = 0;
      *&v93[55] = v155;
      *&v93[71] = v156;
      *&v93[87] = v157;
      *&v93[103] = v158;
      *&v93[7] = v152;
      *&v93[23] = v153;
      *&v93[39] = v154;
      *&v125[0] = 0x4018000000000000;
      BYTE8(v125[0]) = 0;
      *(&v125[3] + 9) = *&v93[48];
      *(&v125[2] + 9) = *&v93[32];
      *(&v125[1] + 9) = *&v93[16];
      *(v125 + 9) = *v93;
      *(&v125[7] + 1) = *(&v158 + 1);
      *(&v125[6] + 9) = *&v93[96];
      *(&v125[5] + 9) = *&v93[80];
      *(&v125[4] + 9) = *&v93[64];
      sub_10001714C(v125);
    }

    else
    {
      *&v125[0] = 0;
      BYTE8(v125[0]) = 1;
      sub_1000171E4(v125);
    }

    v121 = v125[6];
    v122 = v125[7];
    LOBYTE(v123) = v126;
    v117 = v125[2];
    v118 = v125[3];
    v119 = v125[4];
    v120 = v125[5];
    v115 = v125[0];
    v116 = v125[1];
    sub_10000368C(&qword_1000EBBB8, &qword_1000B4F00);
    sub_100017158();
    _ConditionalContent<>.init(storage:)();
    v58 = swift_getKeyPath();
    v111 = v101;
    v112 = v102;
    v107 = v97;
    v108 = v98;
    v109 = v99;
    v110 = v100;
    v105 = v95;
    v106 = v96;
    v121 = v101;
    v122 = v102;
    v117 = v97;
    v118 = v98;
    LOBYTE(v113) = v103;
    v92 = 0;
    v119 = v99;
    v120 = v100;
    v115 = v95;
    v116 = v96;
    *&v123 = v113;
    *(&v123 + 1) = v58;
    v124 = 0;
    nullsub_1(&v115);
    v125[6] = v121;
    v125[7] = v122;
    v126 = v123;
    v127 = v124;
    v125[2] = v117;
    v125[3] = v118;
    v125[4] = v119;
    v125[5] = v120;
    v125[0] = v115;
    v125[1] = v116;
  }

  else
  {
    sub_1000171F4(v125);
  }

  v59 = v88;
  sub_1000077CC(v49, v88, &qword_1000EBBF8, &qword_1000B4F70);
  v101 = v125[6];
  v102 = v125[7];
  v103 = v126;
  v97 = v125[2];
  v98 = v125[3];
  v99 = v125[4];
  v100 = v125[5];
  v95 = v125[0];
  v96 = v125[1];
  v60 = *&v129[80];
  *(a3 + 89) = *&v129[64];
  *(a3 + 105) = v60;
  *(a3 + 121) = *&v129[96];
  v61 = *&v129[16];
  *(a3 + 25) = *v129;
  *(a3 + 41) = v61;
  v62 = *&v129[48];
  *(a3 + 57) = *&v129[32];
  v104 = v127;
  *a3 = KeyPath;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0x4018000000000000;
  *(a3 + 24) = 0;
  v63 = *&v129[111];
  *(a3 + 73) = v62;
  v64 = v85;
  *(a3 + 136) = v63;
  *(a3 + 144) = v64;
  *(a3 + 152) = 0;
  v65 = sub_10000368C(&qword_1000EBC00, &qword_1000B4F78);
  sub_1000077CC(v59, a3 + *(v65 + 80), &qword_1000EBBF8, &qword_1000B4F70);
  v66 = *(v65 + 96);
  v67 = v102;
  v111 = v101;
  v112 = v102;
  v68 = v103;
  v113 = v103;
  v69 = v97;
  v70 = v98;
  v107 = v97;
  v108 = v98;
  v71 = v99;
  v72 = v100;
  v109 = v99;
  v110 = v100;
  v73 = v95;
  v74 = v96;
  v105 = v95;
  v106 = v96;
  v75 = a3 + v66;
  *(v75 + 96) = v101;
  *(v75 + 112) = v67;
  *(v75 + 128) = v68;
  *(v75 + 32) = v69;
  *(v75 + 48) = v70;
  *(v75 + 64) = v71;
  *(v75 + 80) = v72;
  v114 = v104;
  *(v75 + 144) = v104;
  *v75 = v73;
  *(v75 + 16) = v74;

  sub_1000077CC(&v105, &v115, &qword_1000EBC08, &unk_1000B4F80);
  sub_100007834(v49, &qword_1000EBBF8, &qword_1000B4F70);
  v121 = v101;
  v122 = v102;
  v123 = v103;
  v124 = v104;
  v117 = v97;
  v118 = v98;
  v119 = v99;
  v120 = v100;
  v115 = v95;
  v116 = v96;
  sub_100007834(&v115, &qword_1000EBC08, &unk_1000B4F80);
  sub_100007834(v59, &qword_1000EBBF8, &qword_1000B4F70);
}

uint64_t sub_100015B30@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  *a1 = static HorizontalAlignment.center.getter();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v5 = sub_10000368C(&qword_1000EBBD0, &qword_1000B4F48);
  sub_100014E20(v3, v4, a1 + *(v5 + 44));
  LOBYTE(v4) = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = a1 + *(sub_10000368C(&qword_1000EBBD8, &qword_1000B4F50) + 36);
  *v14 = v4;
  *(v14 + 8) = v7;
  *(v14 + 16) = v9;
  *(v14 + 24) = v11;
  *(v14 + 32) = v13;
  *(v14 + 40) = 0;
  LOBYTE(v4) = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v23 = a1 + *(sub_10000368C(&qword_1000EBBE0, &qword_1000B4F58) + 36);
  *v23 = v4;
  *(v23 + 8) = v16;
  *(v23 + 16) = v18;
  *(v23 + 24) = v20;
  *(v23 + 32) = v22;
  *(v23 + 40) = 0;
  LOBYTE(v4) = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  result = sub_10000368C(&qword_1000EBBE8, &unk_1000B4F60);
  v33 = a1 + *(result + 36);
  *v33 = v4;
  *(v33 + 8) = v25;
  *(v33 + 16) = v27;
  *(v33 + 24) = v29;
  *(v33 + 32) = v31;
  *(v33 + 40) = 0;
  return result;
}

uint64_t sub_100015CA4@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v60 = a3;
  v5 = type metadata accessor for EnvironmentValues();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10000368C(&qword_1000EBB58, &qword_1000B4DE0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v58 - v12;
  v14 = sub_10000368C(&qword_1000EBB60, &qword_1000B4DE8);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14);
  v17 = &v58 - v16;
  v58 = sub_10000368C(&qword_1000EBB68, &qword_1000B4DF0);
  v18 = *(*(v58 - 8) + 64);
  __chkstk_darwin(v58);
  v20 = &v58 - v19;

  v21 = a1;
  v59 = a2;
  if ((a2 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v22 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v6 + 8))(v9, v5);
    v21 = v61;
  }

  swift_getKeyPath();
  v61 = v21;
  sub_100007530();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v23 = *(v21 + 16);

  if (v23 == 1)
  {
    v24 = static HorizontalAlignment.leading.getter();
  }

  else
  {
    v24 = static HorizontalAlignment.center.getter();
  }

  *v13 = v24;
  *(v13 + 1) = 0;
  v13[16] = 0;
  v25 = sub_10000368C(&qword_1000EBB70, &qword_1000B4E20);
  sub_1000160A8(a1, v59 & 1, &v13[*(v25 + 44)]);
  v26 = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  sub_10001721C(v13, v17, &qword_1000EBB58, &qword_1000B4DE0);
  v35 = &v17[*(v14 + 36)];
  *v35 = v26;
  *(v35 + 1) = v28;
  *(v35 + 2) = v30;
  *(v35 + 3) = v32;
  *(v35 + 4) = v34;
  v35[40] = 0;
  v36 = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v44 = v43;
  sub_10001721C(v17, v20, &qword_1000EBB60, &qword_1000B4DE8);
  v45 = &v20[*(v58 + 36)];
  *v45 = v36;
  *(v45 + 1) = v38;
  *(v45 + 2) = v40;
  *(v45 + 3) = v42;
  *(v45 + 4) = v44;
  v45[40] = 0;
  v46 = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v48 = v47;
  v50 = v49;
  v52 = v51;
  v54 = v53;
  v55 = v60;
  sub_10001721C(v20, v60, &qword_1000EBB68, &qword_1000B4DF0);
  result = sub_10000368C(&qword_1000EBB78, &qword_1000B4E28);
  v57 = v55 + *(result + 36);
  *v57 = v46;
  *(v57 + 8) = v48;
  *(v57 + 16) = v50;
  *(v57 + 24) = v52;
  *(v57 + 32) = v54;
  *(v57 + 40) = 0;
  return result;
}

uint64_t sub_1000160A8@<X0>(uint64_t a1@<X0>, int a2@<W1>, void *a3@<X8>)
{
  v83 = a3;
  v5 = sub_10000368C(&qword_1000EBB80, &unk_1000B4E30);
  v85 = *(v5 - 8);
  v86 = v5;
  v6 = *(v85 + 64);
  __chkstk_darwin(v5);
  v82 = (&v78 - v7);
  v8 = type metadata accessor for MediaProgressView(0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = &v78 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = sub_10000368C(&qword_1000EB110, &qword_1000B3F98);
  v12 = *(*(v79 - 8) + 64);
  v13 = __chkstk_darwin(v79);
  v81 = &v78 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v17 = &v78 - v16;
  __chkstk_darwin(v15);
  v80 = &v78 - v18;
  v19 = type metadata accessor for EnvironmentValues();
  v96 = *(v19 - 8);
  v20 = *(v96 + 64);
  __chkstk_darwin(v19);
  v22 = &v78 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_10000368C(&qword_1000EBB88, &qword_1000B4E40);
  v24 = *(*(v23 - 8) + 64);
  v25 = __chkstk_darwin(v23 - 8);
  v98 = &v78 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v99 = &v78 - v27;
  v90 = static VerticalAlignment.center.getter();
  sub_100016E44(a1, a2 & 1, v134);
  v91 = *&v134[0];
  v94 = *(&v134[1] + 1);
  v95 = *&v134[1];
  v97 = *(&v134[2] + 1);
  v93 = *&v134[2];
  v92 = LOBYTE(v134[3]);
  v153 = 0;
  v152 = BYTE8(v134[0]);
  v89 = BYTE8(v134[0]);

  v28 = a1;
  v88 = a2;
  if ((a2 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v29 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v96 + 8))(v22, v19);
    v28 = *&v134[0];
  }

  v87 = v19;
  swift_getKeyPath();
  *&v134[0] = v28;
  v84 = sub_100007530();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v30 = *(v28 + 44);

  v31 = 1;
  if (v30 == 1)
  {
    *v11 = swift_getKeyPath();
    v11[8] = 0;
    v32 = *(v8 + 20);
    *&v11[v32] = swift_getKeyPath();
    sub_10000368C(&qword_1000EB118, &qword_1000B3FD0);
    swift_storeEnumTagMultiPayload();
    v33 = &v11[*(v8 + 24)];
    v34 = type metadata accessor for PlaybackTimeObserver(0);
    v35 = *(v34 + 48);
    v36 = *(v34 + 52);
    swift_allocObject();
    *&v124 = sub_100063724();
    State.init(wrappedValue:)();
    v37 = *(&v134[0] + 1);
    *v33 = *&v134[0];
    *(v33 + 1) = v37;
    static Alignment.center.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    sub_1000076F8(v11, v17);
    v38 = &v17[*(v79 + 36)];
    v39 = v143;
    *(v38 + 4) = v142;
    *(v38 + 5) = v39;
    *(v38 + 6) = v144;
    v40 = v139;
    *v38 = v138;
    *(v38 + 1) = v40;
    v41 = v141;
    *(v38 + 2) = v140;
    *(v38 + 3) = v41;
    v42 = v80;
    sub_10001721C(v17, v80, &qword_1000EB110, &qword_1000B3F98);
    v43 = v81;
    sub_1000077CC(v42, v81, &qword_1000EB110, &qword_1000B3F98);
    v44 = v82;
    *v82 = 0x4028000000000000;
    *(v44 + 8) = 0;
    v45 = sub_10000368C(&qword_1000EBBC8, &qword_1000B4F40);
    sub_1000077CC(v43, v44 + *(v45 + 48), &qword_1000EB110, &qword_1000B3F98);
    sub_100007834(v42, &qword_1000EB110, &qword_1000B3F98);
    sub_100007834(v43, &qword_1000EB110, &qword_1000B3F98);
    sub_10001721C(v44, v99, &qword_1000EBB80, &unk_1000B4E30);
    v31 = 0;
  }

  (*(v85 + 56))(v99, v31, 1, v86);
  v46 = v88;
  v47 = v87;
  if (v88)
  {
    v137 = a1;

    v48 = a1;
  }

  else
  {

    static os_log_type_t.fault.getter();
    v49 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v96 + 8))(v22, v47);
    v48 = v137;
  }

  swift_getKeyPath();
  *&v134[0] = v48;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v50 = *(v48 + 41);

  if (v50 == 1)
  {
    if (v46)
    {
      v103 = a1;
    }

    else
    {

      static os_log_type_t.fault.getter();
      v51 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();

      (*(v96 + 8))(v22, v47);
      a1 = v103;
    }

    swift_getKeyPath();
    *&v134[0] = a1;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v52 = *(a1 + 24);
    v53 = *(a1 + 32);
    v54 = *(a1 + 40);
    sub_10000C964(v52, v53, *(a1 + 40));

    if (v54 != 2 || v53 | v52)
    {
      sub_10000C9C0(v52, v53, v54);
      static Alignment.center.getter();
      _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
      LOBYTE(v114) = 0;
      *(&v101[6] + 7) = v148;
      *(&v101[8] + 7) = v149;
      *(&v101[10] + 7) = v150;
      *(&v101[12] + 7) = v151;
      *(v101 + 7) = v145;
      *(&v101[2] + 7) = v146;
      *(&v101[4] + 7) = v147;
      *&v134[0] = 0x4018000000000000;
      BYTE8(v134[0]) = 0;
      *(&v134[3] + 9) = *&v101[6];
      *(&v134[2] + 9) = *&v101[4];
      *(&v134[1] + 9) = *&v101[2];
      *(v134 + 9) = *v101;
      *(&v134[7] + 1) = *(&v151 + 1);
      *(&v134[6] + 9) = *&v101[12];
      *(&v134[5] + 9) = *&v101[10];
      *(&v134[4] + 9) = *&v101[8];
      sub_10001714C(v134);
    }

    else
    {
      *&v134[0] = 0x4018000000000000;
      BYTE8(v134[0]) = 0;
      sub_1000171E4(v134);
    }

    v130 = v134[6];
    v131 = v134[7];
    LOBYTE(v132) = v135;
    v126 = v134[2];
    v127 = v134[3];
    v128 = v134[4];
    v129 = v134[5];
    v124 = v134[0];
    v125 = v134[1];
    sub_10000368C(&qword_1000EBBB8, &qword_1000B4F00);
    sub_100017158();
    _ConditionalContent<>.init(storage:)();
    swift_getKeyPath();
    v110 = *&v101[27];
    v111 = *&v101[29];
    LOBYTE(v112) = v102;
    v106 = *&v101[19];
    v107 = *&v101[21];
    v108 = *&v101[23];
    v109 = *&v101[25];
    v104 = *&v101[15];
    v105 = *&v101[17];
    v100 = 0;

    v130 = v110;
    v131 = v111;
    v126 = v106;
    v127 = v107;
    v128 = v108;
    v129 = v109;
    v124 = v104;
    v125 = v105;
    *&v132 = v112;
    *(&v132 + 1) = v55;
    LOBYTE(v133) = 0;
    sub_1000171DC(&v124);
    v134[7] = v131;
    v135 = v132;
    v136 = v133;
    v134[2] = v126;
    v134[3] = v127;
    v134[4] = v128;
    v134[5] = v129;
    v134[6] = v130;
    v134[0] = v124;
    v134[1] = v125;
    sub_10000368C(&qword_1000EBB90, &qword_1000B4EC0);
    sub_100005870(&qword_1000EBB98, &qword_1000EBB90, &qword_1000B4EC0);
    sub_1000170C0();
    _ConditionalContent<>.init(storage:)();

    v134[7] = v121;
    v135 = v122;
    v136 = v123;
    v134[2] = v116;
    v134[3] = v117;
    v134[4] = v118;
    v134[5] = v119;
    v134[6] = v120;
    v134[0] = v114;
    v134[1] = v115;
  }

  else
  {
    *&v124 = swift_getKeyPath();
    BYTE8(v124) = 0;
    sub_1000170B4(&v124);
    v120 = v130;
    v121 = v131;
    v122 = v132;
    v123 = v133;
    v116 = v126;
    v117 = v127;
    v118 = v128;
    v119 = v129;
    v114 = v124;
    v115 = v125;
    sub_10000368C(&qword_1000EBB90, &qword_1000B4EC0);
    sub_100005870(&qword_1000EBB98, &qword_1000EBB90, &qword_1000B4EC0);
    sub_1000170C0();
    _ConditionalContent<>.init(storage:)();
  }

  v56 = v98;
  sub_1000077CC(v99, v98, &qword_1000EBB88, &qword_1000B4E40);
  v110 = v134[6];
  v111 = v134[7];
  v112 = v135;
  v113 = v136;
  v106 = v134[2];
  v107 = v134[3];
  v108 = v134[4];
  v109 = v134[5];
  v104 = v134[0];
  v105 = v134[1];
  v57 = v83;
  *v83 = 0x4028000000000000;
  *(v57 + 8) = 0;
  v58 = v91;
  v57[2] = v90;
  v57[3] = 0x4020000000000000;
  *(v57 + 32) = 0;
  v59 = v89;
  v57[5] = v58;
  v57[6] = v59;
  v61 = v94;
  v60 = v95;
  v57[7] = v95;
  v57[8] = v61;
  v62 = v93;
  v63 = v97;
  v57[9] = v93;
  v57[10] = v63;
  v64 = v92;
  *(v57 + 88) = v92;
  v65 = sub_10000368C(&qword_1000EBBA8, &qword_1000B4EC8);
  sub_1000077CC(v56, v57 + *(v65 + 64), &qword_1000EBB88, &qword_1000B4E40);
  v66 = *(v65 + 80);
  v67 = v111;
  v120 = v110;
  v121 = v111;
  v68 = v112;
  v122 = v112;
  v69 = v106;
  v70 = v107;
  v116 = v106;
  v117 = v107;
  v71 = v108;
  v72 = v109;
  v118 = v108;
  v119 = v109;
  v73 = v104;
  v74 = v105;
  v114 = v104;
  v115 = v105;
  v75 = v57 + v66;
  *(v75 + 6) = v110;
  *(v75 + 7) = v67;
  *(v75 + 8) = v68;
  *(v75 + 2) = v69;
  *(v75 + 3) = v70;
  *(v75 + 4) = v71;
  *(v75 + 5) = v72;
  v123 = v113;
  *(v75 + 72) = v113;
  *v75 = v73;
  *(v75 + 1) = v74;

  v76 = v97;
  sub_100017114(v60, v61, v62, v97, v64);
  sub_1000077CC(&v114, &v124, &qword_1000EBBB0, &qword_1000B4ED0);
  sub_100007834(v99, &qword_1000EBB88, &qword_1000B4E40);
  v130 = v110;
  v131 = v111;
  v132 = v112;
  v133 = v113;
  v126 = v106;
  v127 = v107;
  v128 = v108;
  v129 = v109;
  v124 = v104;
  v125 = v105;
  sub_100007834(&v124, &qword_1000EBBB0, &qword_1000B4ED0);
  sub_100007834(v98, &qword_1000EBB88, &qword_1000B4E40);

  return sub_10001712C(v60, v61, v62, v76, v64);
}

uint64_t sub_100016E44@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for EnvironmentValues();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  KeyPath = swift_getKeyPath();

  if ((a2 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v12 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v7 + 8))(v10, v6);
    a1 = v19;
  }

  swift_getKeyPath();
  v19 = a1;
  sub_100007530();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v13 = *(a1 + 41);

  if (v13 == 1)
  {
    v14 = static HorizontalAlignment.leading.getter();
    v15 = swift_getKeyPath();

    v16 = 0;
  }

  else
  {
    v14 = 0;
    v15 = 0;
    v16 = -1;
  }

  sub_100017114(v14, 0, 0, v15, v16);
  sub_10001712C(v14, 0, 0, v15, v16);
  *a3 = KeyPath;
  *(a3 + 8) = 0;
  *(a3 + 16) = v14;
  *(a3 + 24) = 0;
  *(a3 + 32) = 0;
  *(a3 + 40) = v15;
  *(a3 + 48) = v16;
  sub_10001712C(v14, 0, 0, v15, v16);
}

unint64_t sub_1000170C0()
{
  result = qword_1000EBBA0;
  if (!qword_1000EBBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EBBA0);
  }

  return result;
}

uint64_t sub_100017114(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 != -1)
  {
  }

  return result;
}

uint64_t sub_10001712C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 != -1)
  {
  }

  return result;
}

unint64_t sub_100017158()
{
  result = qword_1000EBBC0;
  if (!qword_1000EBBC0)
  {
    sub_100005780(&qword_1000EBBB8, &qword_1000B4F00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EBBC0);
  }

  return result;
}

double sub_1000171F4(uint64_t a1)
{
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *&result = 255;
  *(a1 + 128) = xmmword_1000B4C80;
  *(a1 + 144) = 0;
  return result;
}

uint64_t sub_10001721C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_10000368C(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

unint64_t sub_1000172F8()
{
  result = qword_1000EBC28;
  if (!qword_1000EBC28)
  {
    sub_100005780(&qword_1000EBB60, &qword_1000B4DE8);
    sub_100005870(&qword_1000EBC30, &qword_1000EBB58, &qword_1000B4DE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EBC28);
  }

  return result;
}

uint64_t sub_100017424(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100005780(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1000174A8()
{
  result = qword_1000EBC48;
  if (!qword_1000EBC48)
  {
    sub_100005780(&qword_1000EBBD8, &qword_1000B4F50);
    sub_100005870(&qword_1000EBC50, &qword_1000EBC58, &qword_1000B4F90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EBC48);
  }

  return result;
}

void sub_100017588(unsigned __int8 a1)
{
  v2 = OBJC_IVAR____TtC5Media30RadioStationListViewController_groupingStrategy;
  if (v1[OBJC_IVAR____TtC5Media30RadioStationListViewController_groupingStrategy] != a1)
  {
    v3 = v1;
    if (qword_1000EACE0 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_100006928(v4, qword_1000F3B70);
    v5 = v1;
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 16908544;
      v8[4] = v3[v2];

      _os_log_impl(&_mh_execute_header, v6, v7, "Updating grouping strategy to %{public}hhu", v8, 5u);
    }

    else
    {

      v6 = v5;
    }

    v9 = *(&v5->isa + OBJC_IVAR____TtC5Media30RadioStationListViewController_dataSource);
    if (v9)
    {
      v10 = *&v9[qword_1000EE3E8];
      v11 = OBJC_IVAR____TtC5Media29RadioStationDataSourceStorage_groupingStrategy;
      *(v10 + OBJC_IVAR____TtC5Media29RadioStationDataSourceStorage_groupingStrategy) = v3[v2];
      v12 = v9;

      sub_1000220D4();
      if (qword_1000EAD48 != -1)
      {
        swift_once();
      }

      sub_1000922F8(*(v10 + v11));
    }

    sub_100018EE0(v3[v2] - 4 < 0xFFFFFFFD);
  }
}

void sub_10001775C()
{
  v1 = v0;
  v2 = sub_10000368C(&unk_1000ED130, &unk_1000B50E0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v139 = &v121 - v5;
  v6 = sub_10000368C(&unk_1000EBDA0, &qword_1000BA850);
  v141 = *(v6 - 8);
  v7 = *(v141 + 64);
  __chkstk_darwin(v6);
  v140 = &v121 - v8;
  v135 = sub_10000368C(&unk_1000EC860, &qword_1000B50F0);
  v9 = *(v135 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v135);
  v134 = &v121 - v11;
  v12 = sub_10000368C(&unk_1000EBDB0, &qword_1000B50F8);
  v137 = *(v12 - 8);
  v138 = v12;
  v13 = *(v137 + 64);
  __chkstk_darwin(v12);
  v136 = &v121 - v14;
  v15 = sub_10000368C(&unk_1000EC7E0, &unk_1000B5100);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v143 = &v121 - v17;
  v126 = sub_10000368C(&qword_1000EBDC0, &qword_1000B61F0);
  v18 = *(*(v126 - 8) + 64);
  v19 = __chkstk_darwin(v126);
  v125 = &v121 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v124 = &v121 - v21;
  v129 = sub_10000368C(&qword_1000EBDC8, &qword_1000B5110);
  v128 = *(v129 - 8);
  v22 = *(v128 + 64);
  __chkstk_darwin(v129);
  v127 = &v121 - v23;
  v24 = sub_10000368C(&qword_1000EBDD0, &qword_1000B5118);
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  __chkstk_darwin(v24);
  v28 = &v121 - v27;
  v29 = type metadata accessor for RadioStationListViewController();
  v146.receiver = v0;
  v146.super_class = v29;
  objc_msgSendSuper2(&v146, "viewDidLoad");
  if (qword_1000EAD48 != -1)
  {
    swift_once();
  }

  v142 = qword_1000F3CF0;
  v30 = *(qword_1000F3CF0 + OBJC_IVAR____TtC5Media16RadioPreferences_defaults);
  v31 = String._bridgeToObjectiveC()();
  v32 = [v30 integerForKey:v31];

  if ((v32 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_30;
  }

  if (v32 > 0xFF)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v131 = v3;
  v132 = v2;
  v133 = v6;
  v33 = (sub_10007752C(v32) - 4) < 0xFDu;
  sub_100018EE0(v33);
  v34 = *&v1[OBJC_IVAR____TtC5Media30RadioStationListViewController_collectionView];
  [v34 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v34 setAllowsFocus:1];
  v35 = [v1 view];
  if (!v35)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v36 = v35;
  v123 = v28;
  v130 = v9;
  [v35 addSubview:v34];

  sub_10000368C(&unk_1000EC820, &qword_1000B5090);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_1000B4FB0;
  v38 = [v34 topAnchor];
  v39 = [v1 view];
  if (!v39)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v40 = v39;
  v41 = [v39 topAnchor];

  v42 = [v38 constraintEqualToAnchor:v41];
  *(v37 + 32) = v42;
  v43 = [v34 bottomAnchor];
  v44 = [v1 view];
  if (!v44)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v45 = v44;
  v121 = v25;
  v122 = v24;
  v46 = [v44 bottomAnchor];

  v47 = [v43 constraintEqualToAnchor:v46];
  *(v37 + 40) = v47;
  v48 = [v34 leadingAnchor];
  v49 = [v1 view];
  if (!v49)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v50 = v49;
  v51 = [v49 safeAreaLayoutGuide];

  v52 = [v51 leadingAnchor];
  v53 = [v48 constraintEqualToAnchor:v52];

  *(v37 + 48) = v53;
  v54 = [v34 trailingAnchor];
  v55 = [v1 view];
  if (!v55)
  {
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
    return;
  }

  v56 = v55;
  v57 = objc_opt_self();
  v58 = [v56 safeAreaLayoutGuide];

  v59 = [v58 trailingAnchor];
  v60 = [v54 constraintEqualToAnchor:v59];

  *(v37 + 56) = v60;
  sub_100005A50(0, &qword_1000EBDD8, NSLayoutConstraint_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v57 activateConstraints:isa];

  v144 = OBJC_IVAR____TtC5Media30RadioStationListViewController_carManager;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v63 = Strong;
    v64 = objc_allocWithZone(type metadata accessor for RadioStationDataSource());
    v65 = v63;
    v66 = sub_10007FE10(v65, v34);
    v67 = *&v1[OBJC_IVAR____TtC5Media30RadioStationListViewController_dataSource];
    *&v1[OBJC_IVAR____TtC5Media30RadioStationListViewController_dataSource] = v66;
    v68 = v66;

    v69 = *&v1[OBJC_IVAR____TtC5Media30RadioStationListViewController_initialActiveCategory + 8];
    v70 = (*&v68[qword_1000EE3E8] + OBJC_IVAR____TtC5Media29RadioStationDataSourceStorage_activeCategory);
    v71 = v70[1];
    *v70 = *&v1[OBJC_IVAR____TtC5Media30RadioStationListViewController_initialActiveCategory];
    v70[1] = v69;

    sub_1000220D4();
  }

  v72 = [v1 view];
  if (!v72)
  {
    goto LABEL_36;
  }

  v73 = v72;
  v74 = objc_opt_self();
  v75 = [v74 clearColor];
  [v73 setBackgroundColor:v75];

  v76 = [v74 clearColor];
  [v34 setBackgroundColor:v76];

  [v34 setDelegate:v1];
  v77 = *&v1[OBJC_IVAR____TtC5Media30RadioStationListViewController_dataSource];
  if (v77 && (v78 = (*(v77 + qword_1000EE3E8) + OBJC_IVAR____TtC5Media29RadioStationDataSourceStorage_activeCategory), v78[1]))
  {
    v79 = *v78;
    v80 = v78[1];

    v81 = String._bridgeToObjectiveC()();

    [v1 setTitle:v81];

    v82 = swift_unknownObjectWeakLoadStrong();
    if (v82)
    {
      v83 = *(v82 + OBJC_IVAR____TtC5Media15RadioCarManager_nowPlayingManager);
      v84 = v82;

      if (v83)
      {
        swift_beginAccess();
        sub_10000368C(&unk_1000EBE20, &unk_1000B5120);
        Published.projectedValue.getter();
        swift_endAccess();
        swift_beginAccess();
        Published.projectedValue.getter();
        swift_endAccess();
        sub_100005870(&unk_1000EC800, &qword_1000EBDC0, &qword_1000B61F0);
        v85 = v127;
        Publishers.CombineLatest.init(_:_:)();
        v86 = [objc_opt_self() mainRunLoop];
        v145 = v86;
        v87 = type metadata accessor for NSRunLoop.SchedulerOptions();
        v88 = v143;
        (*(*(v87 - 8) + 56))(v143, 1, 1, v87);
        sub_100005A50(0, &unk_1000ED0C0, NSRunLoop_ptr);
        sub_100005870(&qword_1000EBE30, &qword_1000EBDC8, &qword_1000B5110);
        sub_10001ADF4();
        v89 = v123;
        v90 = v129;
        Publisher.receive<A>(on:options:)();
        sub_1000057C8(v88);

        (*(v128 + 8))(v85, v90);
        *(swift_allocObject() + 16) = v1;
        sub_100005870(&qword_1000EBE38, &qword_1000EBDD0, &qword_1000B5118);
        v91 = v1;
        v92 = v122;
        Publisher<>.sink(receiveValue:)();

        (*(v121 + 8))(v89, v92);
        swift_beginAccess();
        AnyCancellable.store(in:)();
        swift_endAccess();
      }
    }
  }

  else
  {
    v93 = [objc_opt_self() mainBundle];
    v147._object = 0xE000000000000000;
    v94._countAndFlagsBits = 0x4553574F5242;
    v95.value._countAndFlagsBits = 0x6F69646152;
    v94._object = 0xE600000000000000;
    v95.value._object = 0xE500000000000000;
    v96._countAndFlagsBits = 0;
    v96._object = 0xE000000000000000;
    v147._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v94, v95, v93, v96, v147);

    String.init(format:_:)();

    v97 = String._bridgeToObjectiveC()();

    [v1 setTitle:v97];
  }

  v98 = swift_unknownObjectWeakLoadStrong();
  if (v98)
  {
    v99 = *(v98 + OBJC_IVAR____TtC5Media15RadioCarManager_nowPlayingManager);
    v100 = v98;

    if (v99)
    {
      swift_beginAccess();
      sub_10000368C(&unk_1000EBDE0, &unk_1000B3CB0);
      v101 = v134;
      Published.projectedValue.getter();
      swift_endAccess();

      v102 = [objc_opt_self() mainRunLoop];
      v145 = v102;
      v103 = type metadata accessor for NSRunLoop.SchedulerOptions();
      v104 = v143;
      (*(*(v103 - 8) + 56))(v143, 1, 1, v103);
      sub_100005A50(0, &unk_1000ED0C0, NSRunLoop_ptr);
      sub_100005870(&unk_1000EBDF0, &unk_1000EC860, &qword_1000B50F0);
      sub_10001ADF4();
      v106 = v135;
      v105 = v136;
      Publisher.receive<A>(on:options:)();
      sub_1000057C8(v104);

      (*(v130 + 8))(v101, v106);
      swift_allocObject();
      swift_unknownObjectWeakInit();
      sub_100005870(&unk_1000EBE00, &unk_1000EBDB0, &qword_1000B50F8);
      v107 = v138;
      Publisher<>.sink(receiveValue:)();

      (*(v137 + 8))(v105, v107);
      swift_beginAccess();
      AnyCancellable.store(in:)();
      swift_endAccess();
    }
  }

  v108 = swift_unknownObjectWeakLoadStrong();
  if (v108)
  {
    v109 = *(v108 + OBJC_IVAR____TtC5Media15RadioCarManager_nowPlayingManager);
    v110 = v108;

    if (v109)
    {
      swift_beginAccess();
      sub_10000368C(&unk_1000EEFB0, &unk_1000B5A20);
      v111 = v139;
      Published.projectedValue.getter();
      swift_endAccess();

      v112 = [objc_opt_self() mainRunLoop];
      v145 = v112;
      v113 = type metadata accessor for NSRunLoop.SchedulerOptions();
      v114 = v143;
      (*(*(v113 - 8) + 56))(v143, 1, 1, v113);
      sub_100005A50(0, &unk_1000ED0C0, NSRunLoop_ptr);
      sub_100005870(&unk_1000EBE10, &unk_1000ED130, &unk_1000B50E0);
      sub_10001ADF4();
      v115 = v140;
      v116 = v132;
      Publisher.receive<A>(on:options:)();
      sub_1000057C8(v114);

      (*(v131 + 8))(v111, v116);
      swift_allocObject();
      swift_unknownObjectWeakInit();
      sub_100005870(&qword_1000EEFC0, &unk_1000EBDA0, &qword_1000BA850);
      v117 = v133;
      Publisher<>.sink(receiveValue:)();

      (*(v141 + 8))(v115, v117);
      swift_beginAccess();
      AnyCancellable.store(in:)();
      swift_endAccess();
    }
  }

  v118 = [objc_opt_self() sharedApplication];
  v119 = [v118 delegate];

  if (!v119)
  {
    goto LABEL_37;
  }

  v120 = sub_1000ACA04();
  swift_unknownObjectRelease();
  if ((v120 & 1) == 0)
  {
    sub_1000922F8(3u);
  }
}

void sub_100018AC4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_100019940();
  }
}

id sub_100018B60(char a1)
{
  v3 = type metadata accessor for IndexPath();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v17 - v9;
  v11 = type metadata accessor for RadioStationListViewController();
  v17.receiver = v1;
  v17.super_class = v11;
  objc_msgSendSuper2(&v17, "viewWillAppear:", a1 & 1);
  v12 = *&v1[OBJC_IVAR____TtC5Media30RadioStationListViewController_collectionView];
  result = [v12 indexPathsForSelectedItems];
  if (result)
  {
    v14 = result;
    v15 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (*(v15 + 16))
    {
      (*(v4 + 16))(v8, v15 + ((*(v4 + 80) + 32) & ~*(v4 + 80)), v3);

      (*(v4 + 32))(v10, v8, v3);
      isa = IndexPath._bridgeToObjectiveC()().super.isa;
      [v12 deselectItemAtIndexPath:isa animated:a1 & 1];

      return (*(v4 + 8))(v10, v3);
    }

    else
    {
    }
  }

  return result;
}