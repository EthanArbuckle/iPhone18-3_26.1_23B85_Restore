id sub_10001E590()
{
  v0 = type metadata accessor for Locale();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &aBlock - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v6 = objc_allocWithZone(SASBookendCallbackConfiguration);
  v26 = sub_10002204C;
  v27 = v4;
  aBlock = _NSConcreteStackBlock;
  v23 = 1107296256;
  v24 = sub_100022260;
  v25 = &unk_100328C70;
  v7 = _Block_copy(&aBlock);

  v26 = sub_100022054;
  v27 = v5;
  aBlock = _NSConcreteStackBlock;
  v23 = 1107296256;
  v24 = sub_10002225C;
  v25 = &unk_100328C98;
  v8 = _Block_copy(&aBlock);

  v9 = [v6 initOnAnimationWillBegin:v7 onAnimationDidFinish:v8];
  _Block_release(v8);
  _Block_release(v7);
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v26 = sub_10002205C;
  v27 = v10;
  aBlock = _NSConcreteStackBlock;
  v23 = 1107296256;
  v24 = sub_100021374;
  v25 = &unk_100328CC0;
  v11 = _Block_copy(&aBlock);

  [v9 setOnAnimationError:v11];
  _Block_release(v11);
  sub_100006410(&unk_1003A20B0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1002978B0;
  v13 = [objc_opt_self() currentLocale];
  static Locale._unconditionallyBridgeFromObjectiveC(_:)();

  v14 = Locale.identifier.getter();
  v16 = v15;
  (*(v1 + 8))(v3, v0);
  *(v12 + 32) = v14;
  *(v12 + 40) = v16;
  v17 = objc_allocWithZone(SASBookendViewProvider);
  v18 = v9;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v20 = [v17 initWithBookendType:1 onlyShowLanguages:isa callbacks:v18];

  return v20;
}

uint64_t sub_10001E928(double a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v30 = *(v7 - 8);
  v31 = v7;
  __chkstk_darwin(v7);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchTime();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v26 - v15;
  v17 = *&v1[OBJC_IVAR____TtC5SetupP33_2E1A7F9B18E101D41616D94C1C664A5F37BuddyiPhoneFinishedControllerAnimator_transitionAnimator];
  if (!v17)
  {
    return sub_10001CBB0();
  }

  v18 = *&v1[OBJC_IVAR____TtC5SetupP33_2E1A7F9B18E101D41616D94C1C664A5F37BuddyiPhoneFinishedControllerAnimator_bookendViewProvider];
  if (!v18)
  {
    return sub_10001CBB0();
  }

  v29 = v4;
  v28 = v17;
  v19 = v18;
  [v19 pauseAnimation];
  if ((a1 + -0.644042606) * 0.8 + -1.6 >= 0.0)
  {
    [v19 startAnimation];
    sub_1000216C8(0, &qword_1003A0430);
    v26 = static OS_dispatch_queue.main.getter();
    static DispatchTime.now()();
    + infix(_:_:)();
    v27 = *(v11 + 8);
    v27(v14, v10);
    v23 = swift_allocObject();
    *(v23 + 16) = v1;
    v36 = sub_100021FCC;
    v37 = v23;
    aBlock = _NSConcreteStackBlock;
    v33 = 1107296256;
    v34 = sub_10002E3B4;
    v35 = &unk_100328B58;
    v21 = _Block_copy(&aBlock);
    v24 = v1;
  }

  else
  {
    sub_10001CBB0();
    sub_1000216C8(0, &qword_1003A0430);
    v26 = static OS_dispatch_queue.main.getter();
    static DispatchTime.now()();
    + infix(_:_:)();
    v27 = *(v11 + 8);
    v27(v14, v10);
    v20 = swift_allocObject();
    *(v20 + 16) = v19;
    v36 = sub_100021FFC;
    v37 = v20;
    aBlock = _NSConcreteStackBlock;
    v33 = 1107296256;
    v34 = sub_10002E3B4;
    v35 = &unk_100328BA8;
    v21 = _Block_copy(&aBlock);
    v19 = v19;
  }

  static DispatchQoS.unspecified.getter();
  aBlock = &_swiftEmptyArrayStorage;
  sub_10000ED80();
  sub_100006410(&unk_1003A0440);
  sub_10000977C();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v25 = v26;
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();

  _Block_release(v21);
  (*(v29 + 8))(v6, v3);
  (*(v30 + 8))(v9, v31);
  return (v27)(v16, v10);
}

uint64_t sub_10001EE3C()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.purpleBuddyGeneral.getter();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "Force welcome screen to show", v6, 2u);
  }

  (*(v1 + 8))(v3, v0);
  return sub_10001CBB0();
}

id sub_10001EF98(void *a1, void *a2, double a3)
{
  [a1 transform];
  tx = v13.tx;
  ty = v13.ty;
  v10 = *&v13.c;
  v11 = *&v13.a;
  [a1 frame];
  *&v13.a = v11;
  *&v13.c = v10;
  v13.tx = tx;
  v13.ty = ty;
  CGAffineTransformTranslate(&v12, &v13, -(v8 * a3), 0.0);
  v13 = v12;
  [a1 setTransform:&v13];
  v13.a = 1.0;
  v13.b = 0.0;
  v13.c = 0.0;
  v13.d = 1.0;
  v13.tx = 0.0;
  v13.ty = 0.0;
  return [a2 setTransform:&v13];
}

id sub_10001F17C(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, "dealloc");
}

void *sub_10001F268()
{
  v1 = *(v0 + OBJC_IVAR____TtC5SetupP33_2E1A7F9B18E101D41616D94C1C664A5F37BuddyiPhoneFinishedControllerAnimator_bookendViewProvider);
  v2 = v1;
  return v1;
}

uint64_t sub_10001F298(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC5SetupP33_2E1A7F9B18E101D41616D94C1C664A5F37BuddyiPhoneFinishedControllerAnimator_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

void sub_10001F2EC()
{
  v0 = type metadata accessor for DispatchWorkItemFlags();
  v52 = *(v0 - 8);
  v53 = v0;
  __chkstk_darwin(v0);
  v50 = &v45 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = type metadata accessor for DispatchQoS();
  v49 = *(v51 - 8);
  __chkstk_darwin(v51);
  v48 = &v45 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = type metadata accessor for DispatchTime();
  v47 = *(v55 - 8);
  v3 = __chkstk_darwin(v55);
  v46 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v54 = &v45 - v5;
  v6 = [objc_opt_self() sharedApplication];
  v7 = [v6 connectedScenes];

  sub_1000216C8(0, &unk_1003A1FB0);
  sub_100020C40();
  v8 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  if ((v8 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    Set.Iterator.init(_cocoa:)();
    v9 = aBlock[6];
    v10 = aBlock[7];
    v11 = aBlock[8];
    v12 = aBlock[9];
    v13 = aBlock[10];
  }

  else
  {
    v14 = -1 << *(v8 + 32);
    v10 = v8 + 56;
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

    v13 = v16 & *(v8 + 56);

    v12 = 0;
    v9 = v8;
  }

  v56 = v11;
  v17 = (v11 + 64) >> 6;
  while (v9 < 0)
  {
    v23 = __CocoaSet.Iterator.next()();
    if (!v23 || (v58 = v23, swift_dynamicCast(), v22 = aBlock[0], v20 = v12, v21 = v13, !aBlock[0]))
    {
LABEL_22:
      sub_100021664();

LABEL_23:
      sub_10001CBB0();
      return;
    }

LABEL_18:
    objc_opt_self();
    v24 = swift_dynamicCastObjCClass();
    if (v24)
    {
      v25 = [v24 keyWindow];
      if (v25)
      {

        sub_100021664();

        objc_opt_self();
        v26 = swift_dynamicCastObjCClass();
        if (v26)
        {
          v27 = v26;
          v28 = v22;
          v29 = v57;
          v30 = sub_10001E1F8();
          v31 = [v30 view];
          v32 = *(v29 + 40);
          *(v29 + 40) = v30;
          v33 = v30;

          sub_1000216C8(0, &qword_1003A0430);
          v45 = static OS_dispatch_queue.main.getter();
          v34 = v46;
          static DispatchTime.now()();
          + infix(_:_:)();
          v56 = *(v47 + 8);
          v56(v34, v55);
          v35 = swift_allocObject();
          v35[2] = v27;
          v35[3] = v31;
          v35[4] = v29;
          v35[5] = v33;
          aBlock[4] = sub_1000216BC;
          aBlock[5] = v35;
          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 1107296256;
          aBlock[2] = sub_10002E3B4;
          aBlock[3] = &unk_1003289A0;
          v36 = _Block_copy(aBlock);
          v37 = v28;
          v38 = v33;
          v39 = v31;

          v40 = v48;
          static DispatchQoS.unspecified.getter();
          aBlock[0] = &_swiftEmptyArrayStorage;
          sub_10000ED80();
          sub_100006410(&unk_1003A0440);
          sub_10000977C();
          v41 = v50;
          v42 = v53;
          dispatch thunk of SetAlgebra.init<A>(_:)();
          v43 = v54;
          v44 = v45;
          OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
          _Block_release(v36);

          (*(v52 + 8))(v41, v42);
          (*(v49 + 8))(v40, v51);
          v56(v43, v55);
          return;
        }

        goto LABEL_23;
      }
    }

    v12 = v20;
    v13 = v21;
  }

  v18 = v12;
  v19 = v13;
  v20 = v12;
  if (v13)
  {
LABEL_14:
    v21 = (v19 - 1) & v19;
    v22 = *(*(v9 + 48) + ((v20 << 9) | (8 * __clz(__rbit64(v19)))));
    if (!v22)
    {
      goto LABEL_22;
    }

    goto LABEL_18;
  }

  while (1)
  {
    v20 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v20 >= v17)
    {
      goto LABEL_22;
    }

    v19 = *(v10 + 8 * v20);
    ++v18;
    if (v19)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
}

void sub_10001F98C(void *a1, void *a2, void *a3, void *a4)
{
  v7 = [a1 keyWindow];
  v8 = objc_allocWithZone(OBSetupAssistantFinishedController);
  v9 = String._bridgeToObjectiveC()();
  v10 = [v8 initWithTitle:v9];

  v11 = v10;
  v12 = [v11 view];
  if (!v12)
  {
    __break(1u);
    goto LABEL_12;
  }

  v13 = v12;
  v14 = [objc_opt_self() clearColor];
  [v13 setBackgroundColor:v14];

  v15 = [v11 view];
  if (!v15)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v16 = v15;
  v64 = a4;
  [v15 addSubview:a2];

  [a2 setTranslatesAutoresizingMaskIntoConstraints:0];
  sub_100006410(&qword_1003A1400);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1002977D0;
  v18 = [a2 topAnchor];
  v19 = [v11 view];
  if (!v19)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v20 = v19;
  v21 = [v19 topAnchor];

  v22 = [v18 constraintEqualToAnchor:v21];
  *(v17 + 32) = v22;
  v23 = [a2 bottomAnchor];
  v24 = [v11 view];
  if (!v24)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v25 = v24;
  v65 = v7;
  v26 = [v24 bottomAnchor];

  v27 = [v23 constraintEqualToAnchor:v26];
  *(v17 + 40) = v27;
  v28 = [a2 leadingAnchor];
  v29 = [v11 view];
  if (!v29)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v30 = v29;
  v31 = [v29 leadingAnchor];

  v32 = [v28 constraintEqualToAnchor:v31];
  *(v17 + 48) = v32;
  v33 = [a2 trailingAnchor];
  v34 = [v11 view];
  if (!v34)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v35 = v34;
  v36 = objc_opt_self();
  v37 = [v35 trailingAnchor];

  v38 = [v33 constraintEqualToAnchor:v37];
  *(v17 + 56) = v38;
  sub_1000216C8(0, &qword_1003A0BF0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v36 activateConstraints:isa];

  v40 = [objc_opt_self() mainBundle];
  v68._object = 0xE000000000000000;
  v41._countAndFlagsBits = 0x524154535F544547;
  v41._object = 0xEB00000000444554;
  v42._countAndFlagsBits = 0;
  v42._object = 0xE000000000000000;
  v68._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v41, 0, v40, v42, v68);

  v43 = String._bridgeToObjectiveC()();
  v44 = (a3[4] + OBJC_IVAR____TtC5Setup36BuddyFinishedControllerPresenterData_getStartedHandler);
  v45 = v44[1];
  aBlock[4] = *v44;
  aBlock[5] = v45;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10002E3B4;
  aBlock[3] = &unk_1003289C8;
  v46 = _Block_copy(aBlock);

  [v11 setButtonTitle:v43 action:v46];
  _Block_release(v46);

  v47 = [v11 view];
  if (!v47)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v48 = v47;
  [v47 sendSubviewToBack:a2];

  v49 = [objc_allocWithZone(UIWindow) initWithWindowScene:a1];
  [v49 setRootViewController:v11];
  v50 = v49;
  v51 = [v11 view];
  if (!v51)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v52 = v51;
  [v50 addSubview:v51];

  [a1 __captureWindow:v50];
  [a1 _attachWindow:v50];
  v53 = [v11 view];

  if (v53)
  {

    [v50 frame];
    v55 = v54;
    v57 = v56;
    v59 = v58;
    v61 = v60;

    [v53 setFrame:{v55, v57, v59, v61}];
    [a2 setUserInteractionEnabled:0];
    [v50 setAlpha:0.0];

    [v64 startAnimation];
    [v50 makeKeyAndVisible];
    [v50 setUserInteractionEnabled:0];

    v62 = a3[6];
    a3[6] = v65;

    v63 = a3[7];
    a3[7] = v50;

    return;
  }

LABEL_19:
  __break(1u);
}

uint64_t sub_100020070()
{
  v0 = type metadata accessor for DispatchWorkItemFlags();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DispatchQoS();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v21 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.purpleBuddyGeneral.getter();
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v19 = v5;
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "Force buddy finished screen to show", v13, 2u);
    v5 = v19;
  }

  (*(v8 + 8))(v10, v7);
  sub_1000216C8(0, &qword_1003A0430);
  v14 = static OS_dispatch_queue.main.getter();
  aBlock[4] = sub_100021614;
  aBlock[5] = v20;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10002E3B4;
  aBlock[3] = &unk_1003288B0;
  v15 = _Block_copy(aBlock);

  v16 = v21;
  static DispatchQoS.unspecified.getter();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_10000ED80();
  sub_100006410(&unk_1003A0440);
  sub_10000977C();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v15);

  (*(v1 + 8))(v3, v0);
  return (*(v5 + 8))(v16, v4);
}

void sub_100020428(void *a1)
{
  v2 = a1[5];
  if (v2)
  {
    [v2 shouldRenderBackgroundTexture:0];
  }

  v3 = a1[6];
  if (v3)
  {
    v4 = a1[7];
    if (v4)
    {
      v5 = a1[5];
      if (v5)
      {
        v6 = objc_opt_self();
        v7 = swift_allocObject();
        *(v7 + 16) = v3;
        *(v7 + 24) = v4;
        v22 = sub_1000221F0;
        v23 = v7;
        v18 = _NSConcreteStackBlock;
        v19 = 1107296256;
        v20 = sub_10002E3B4;
        v21 = &unk_100328900;
        v8 = _Block_copy(&v18);
        v9 = v3;
        v10 = v4;
        v11 = v9;
        v12 = v10;
        v13 = v5;

        v14 = swift_allocObject();
        v14[2] = v13;
        v14[3] = v11;
        v14[4] = a1;
        v22 = sub_1000221F4;
        v23 = v14;
        v18 = _NSConcreteStackBlock;
        v19 = 1107296256;
        v20 = sub_10002E3F8;
        v21 = &unk_100328950;
        v15 = _Block_copy(&v18);
        v16 = v11;
        v17 = v13;

        [v6 animateWithDuration:v8 animations:v15 completion:0.85];
        _Block_release(v15);
        _Block_release(v8);
      }
    }
  }
}

void sub_10002063C()
{
  v1 = v0[6];
  if (v1)
  {
    v2 = v0[7];
    if (v2)
    {
      v3 = v0[5];
      if (v3)
      {
        v4 = objc_opt_self();
        v5 = swift_allocObject();
        *(v5 + 16) = v1;
        *(v5 + 24) = v2;
        v20 = sub_100020C10;
        v21 = v5;
        v16 = _NSConcreteStackBlock;
        v17 = 1107296256;
        v18 = sub_10002E3B4;
        v19 = &unk_100328838;
        v6 = _Block_copy(&v16);
        v7 = v1;
        v8 = v2;
        v9 = v7;
        v10 = v8;
        v11 = v3;

        v12 = swift_allocObject();
        v12[2] = v11;
        v12[3] = v9;
        v12[4] = v0;
        v20 = sub_100020C34;
        v21 = v12;
        v16 = _NSConcreteStackBlock;
        v17 = 1107296256;
        v18 = sub_10002E3F8;
        v19 = &unk_100328888;
        v13 = _Block_copy(&v16);
        v14 = v9;
        v15 = v11;

        [v4 animateWithDuration:v6 animations:v13 completion:0.85];
        _Block_release(v13);
        _Block_release(v6);
      }
    }
  }
}

id sub_100020834(void *a1, void *a2)
{
  v4 = [objc_opt_self() sharedApplication];
  v5 = [v4 connectedScenes];

  sub_1000216C8(0, &unk_1003A1FB0);
  sub_100020C40();
  v6 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v7 = sub_10002095C(v6);

  if (v7)
  {
    objc_opt_self();
    v8 = swift_dynamicCastObjCClass();
    if (v8)
    {
      [v8 _setBackgroundStyle:1];
    }
  }

  [a1 setAlpha:0.01];

  return [a2 setAlpha:1.0];
}

uint64_t sub_10002095C(uint64_t a1)
{
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = __CocoaSet.startIndex.getter();
    v5 = v4;
    v6 = __CocoaSet.endIndex.getter();
    v8 = v7;
    v9 = static __CocoaSet.Index.== infix(_:_:)();
    sub_100020CA8(v6, v8, 1);
    if (v9)
    {
LABEL_3:
      sub_100020CA8(v3, v5, v2 != 0);
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

  sub_1000213F0(v3, v5, v2 != 0, a1);
  v12 = v11;
  sub_100020CA8(v3, v5, v2 != 0);
  return v12;
}

uint64_t sub_100020A78(int a1, id a2, void *a3, uint64_t a4)
{
  [a2 startAnimation];
  [a3 setAlpha:0.0];
  v6 = *(a4 + 56);
  if (v6)
  {
    [v6 setUserInteractionEnabled:1];
  }

  return sub_10001CBB0();
}

uint64_t sub_100020AE0()
{
  sub_100021760((v0 + 2));

  return swift_deallocClassInstance();
}

void *sub_100020B5C()
{
  v1 = *(v0 + 40);
  v2 = v1;
  return v1;
}

uint64_t sub_100020B84(uint64_t a1, uint64_t a2)
{
  *(v2 + 24) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t sub_100020BD0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100020C18(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_100020C40()
{
  result = qword_1003A0BE0;
  if (!qword_1003A0BE0)
  {
    sub_1000216C8(255, &unk_1003A1FB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A0BE0);
  }

  return result;
}

uint64_t sub_100020CA8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

void sub_100020CB4(void *a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = swift_unknownObjectWeakLoadStrong();
    if (v4)
    {
      v5 = OBJC_IVAR____TtC5Setup32BuddyFinishedControllerPresenter_fallbackWorkItem;
      if (*(v4 + OBJC_IVAR____TtC5Setup32BuddyFinishedControllerPresenter_fallbackWorkItem))
      {
        v6 = v4;

        dispatch thunk of DispatchWorkItem.cancel()();

        v4 = v6;
      }

      *(v4 + v5) = 0;
      swift_unknownObjectRelease();
    }

    [a1 animationDuration];
    v7 = *(v3 + 40);
    if (v7)
    {
      v8 = v7;
      [v8 shouldRenderBackgroundTexture:1];
      [v8 pauseAnimation];
      sub_10002063C();
    }

    else
    {
    }
  }
}

void sub_100020DC0(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = swift_unknownObjectWeakLoadStrong();
    if (v4)
    {
      v5 = OBJC_IVAR____TtC5Setup32BuddyFinishedControllerPresenter_fallbackWorkItem;
      if (*(v4 + OBJC_IVAR____TtC5Setup32BuddyFinishedControllerPresenter_fallbackWorkItem))
      {
        v6 = v4;

        dispatch thunk of DispatchWorkItem.cancel()();

        v4 = v6;
      }

      *(v4 + v5) = 0;
      swift_unknownObjectRelease();
    }

    [a1 animationDuration];
    sub_10001E928(v7);
  }
}

uint64_t sub_100020E90()
{
  swift_beginAccess();
  swift_weakLoadStrong();
}

uint64_t sub_100020F20()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    static Logger.purpleBuddyGeneral.getter();
    swift_errorRetain();
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *v7 = 138412290;
      swift_errorRetain();
      v9 = _swift_stdlib_bridgeErrorToNSError();
      *(v7 + 4) = v9;
      *v8 = v9;
      _os_log_impl(&_mh_execute_header, v5, v6, "Failed to start welcome animation with error: %@", v7, 0xCu);
      sub_1000063A8(v8);
    }

    (*(v1 + 8))(v3, v0);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v11 = OBJC_IVAR____TtC5Setup32BuddyFinishedControllerPresenter_fallbackWorkItem;
      if (*(Strong + OBJC_IVAR____TtC5Setup32BuddyFinishedControllerPresenter_fallbackWorkItem))
      {
        v12 = Strong;

        dispatch thunk of DispatchWorkItem.cancel()();

        Strong = v12;
      }

      *(Strong + v11) = 0;
      swift_unknownObjectRelease();
    }

    sub_100020070();
  }

  return result;
}

void sub_100021148()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    static Logger.purpleBuddyGeneral.getter();
    swift_errorRetain();
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138412290;
      swift_errorRetain();
      v10 = _swift_stdlib_bridgeErrorToNSError();
      *(v8 + 4) = v10;
      *v9 = v10;
      _os_log_impl(&_mh_execute_header, v6, v7, "Failed to start welcome animation with error: %@", v8, 0xCu);
      sub_1000063A8(v9);
    }

    (*(v1 + 8))(v3, v0);
    v11 = swift_unknownObjectWeakLoadStrong();
    if (v11)
    {
      v12 = OBJC_IVAR____TtC5Setup32BuddyFinishedControllerPresenter_fallbackWorkItem;
      if (*(v11 + OBJC_IVAR____TtC5Setup32BuddyFinishedControllerPresenter_fallbackWorkItem))
      {
        v13 = v11;

        dispatch thunk of DispatchWorkItem.cancel()();

        v11 = v13;
      }

      *(v11 + v12) = 0;
      swift_unknownObjectRelease();
    }

    sub_10001EE3C();
  }
}

void sub_100021384(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

void sub_1000213F0(unint64_t a1, int a2, char a3, uint64_t a4)
{
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      __CocoaSet.element(at:)();
      sub_1000216C8(0, &unk_1003A1FB0);
      swift_dynamicCast();
      return;
    }

    goto LABEL_23;
  }

  if (a3)
  {
    sub_1000216C8(0, &unk_1003A1FB0);
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

uint64_t sub_10002161C()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10002166C()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000216C8(uint64_t a1, unint64_t *a2)
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

uint64_t sub_100021710()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

id sub_100021788(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v11 = &v6[OBJC_IVAR____TtC5Setup36BuddyFinishedControllerPresenterData_presentationHandler];
  *v11 = 0;
  *(v11 + 1) = 0;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectWeakAssign();
  v12 = *v11;
  v13 = *(v11 + 1);
  *v11 = a3;
  *(v11 + 1) = a4;

  sub_10001C94C(v12, v13);
  v14 = &v6[OBJC_IVAR____TtC5Setup36BuddyFinishedControllerPresenterData_getStartedHandler];
  *v14 = a5;
  *(v14 + 1) = a6;
  v16.receiver = v6;
  v16.super_class = type metadata accessor for BuddyFinishedControllerPresenterData();
  return objc_msgSendSuper2(&v16, "init");
}

id sub_100021878(void *a1, void *a2)
{
  *&v2[OBJC_IVAR____TtC5Setup32BuddyFinishedControllerPresenter_fallbackWorkItem] = 0;
  v4 = [a1 type];
  if (v4 == 1)
  {
    type metadata accessor for BuddyiPadFinishedControllerAnimator();
    v5 = swift_allocObject();
    v5[3] = 0;
    swift_unknownObjectWeakInit();
    v5[6] = 0;
    v5[7] = 0;
    v5[4] = a2;
    v5[5] = 0;
    v6 = &v2[OBJC_IVAR____TtC5Setup32BuddyFinishedControllerPresenter_animator];
    *v6 = v5;
    *(v6 + 1) = &off_100328770;
    v7 = a2;
LABEL_5:
    v13 = type metadata accessor for BuddyFinishedControllerPresenter();
    v16.receiver = v2;
    v16.super_class = v13;
    return objc_msgSendSuper2(&v16, "init");
  }

  if (!v4)
  {
    v8 = type metadata accessor for BuddyiPhoneFinishedControllerAnimator();
    v9 = objc_allocWithZone(v8);
    *&v9[OBJC_IVAR____TtC5SetupP33_2E1A7F9B18E101D41616D94C1C664A5F37BuddyiPhoneFinishedControllerAnimator_delegate + 8] = 0;
    swift_unknownObjectWeakInit();
    *&v9[OBJC_IVAR____TtC5SetupP33_2E1A7F9B18E101D41616D94C1C664A5F37BuddyiPhoneFinishedControllerAnimator_bookendViewProvider] = 0;
    *&v9[OBJC_IVAR____TtC5SetupP33_2E1A7F9B18E101D41616D94C1C664A5F37BuddyiPhoneFinishedControllerAnimator_transitionAnimator] = 0;
    *&v9[OBJC_IVAR____TtC5SetupP33_2E1A7F9B18E101D41616D94C1C664A5F37BuddyiPhoneFinishedControllerAnimator_animationData] = a2;
    v15.receiver = v9;
    v15.super_class = v8;
    v10 = a2;
    v11 = objc_msgSendSuper2(&v15, "init");
    v12 = &v2[OBJC_IVAR____TtC5Setup32BuddyFinishedControllerPresenter_animator];
    *v12 = v11;
    *(v12 + 1) = &off_1003287B8;
    goto LABEL_5;
  }

  type metadata accessor for BYDeviceType(0);
  result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
  __break(1u);
  return result;
}

void sub_1000219E0(void *a1)
{
  v2 = [a1 viewControllerForKey:UITransitionContextFromViewControllerKey];
  if (v2)
  {
    v3 = v2;
    v33 = [v2 view];

    if (v33)
    {
      v4 = [a1 viewControllerForKey:UITransitionContextToViewControllerKey];
      if (v4 && (v5 = v4, v6 = [v4 view], v5, v6))
      {
        v7 = [a1 containerView];
        sub_100006410(&qword_1003A1400);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_100297C60;
        *(inited + 32) = v33;
        *(inited + 40) = v6;
        v9 = v33;
        v10 = v6;
        if ((inited & 0xC000000000000001) != 0)
        {
          v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v11 = v9;
        }

        v12 = v11;
        [v7 bounds];
        [v9 setFrame:?];
        [v7 addSubview:v12];

        if ((inited & 0xC000000000000001) != 0)
        {
          v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
          {
            __break(1u);
            return;
          }

          v13 = *(inited + 40);
        }

        v14 = v13;

        [v7 bounds];
        [v9 setFrame:?];
        [v7 addSubview:v14];

        [v7 bringSubviewToFront:v9];
        if ([v7 effectiveUserInterfaceLayoutDirection] == 1)
        {
          v15 = -1.0;
        }

        else
        {
          v15 = 1.0;
        }

        [v10 transform];
        tx = aBlock.tx;
        ty = aBlock.ty;
        v32 = *&aBlock.c;
        *v34 = *&aBlock.a;
        [v7 bounds];
        Width = CGRectGetWidth(v38);
        *&aBlock.a = *v34;
        *&aBlock.c = v32;
        aBlock.tx = tx;
        aBlock.ty = ty;
        CGAffineTransformTranslate(&v35, &aBlock, v15 * (Width * 0.5), 0.0);
        aBlock = v35;
        [v10 setTransform:&aBlock];
        v19 = objc_allocWithZone(CAMediaTimingFunction);
        LODWORD(v20) = 1046562734;
        LODWORD(v21) = 0.5;
        LODWORD(v22) = 1.0;
        v23 = [v19 initWithControlPoints:v21 :0.0 :v20 :v22];
        v24 = objc_opt_self();
        [v24 begin];
        [v24 setAnimationTimingFunction:v23];
        v25 = objc_opt_self();
        v26 = swift_allocObject();
        *(v26 + 16) = v9;
        *(v26 + 24) = v15;
        *(v26 + 32) = v10;
        *&aBlock.tx = sub_100021EFC;
        *&aBlock.ty = v26;
        *&aBlock.a = _NSConcreteStackBlock;
        *&aBlock.b = 1107296256;
        *&aBlock.c = sub_10002E3B4;
        *&aBlock.d = &unk_100328AB8;
        v27 = _Block_copy(&aBlock);
        v28 = v9;
        v29 = v10;

        v30 = swift_allocObject();
        *(v30 + 16) = a1;
        *&aBlock.tx = sub_100021F44;
        *&aBlock.ty = v30;
        *&aBlock.a = _NSConcreteStackBlock;
        *&aBlock.b = 1107296256;
        *&aBlock.c = sub_10002E3F8;
        *&aBlock.d = &unk_100328B08;
        v31 = _Block_copy(&aBlock);
        swift_unknownObjectRetain();

        [v25 animateWithDuration:v27 animations:v31 completion:1.6];
        _Block_release(v31);
        _Block_release(v27);
        [v24 commit];
      }

      else
      {
      }
    }
  }
}

uint64_t sub_100021EBC()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100021F0C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 24, 7);
}

id sub_100021F44()
{
  v1 = *(v0 + 16);
  v2 = [v1 transitionWasCancelled] ^ 1;

  return [v1 completeTransition:v2];
}

uint64_t sub_100021F94()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10002200C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

void sub_1000220BC()
{
  v1 = *(v0 + 16) + OBJC_IVAR____TtC5Setup36BuddyFinishedControllerPresenterData_presentationHandler;
  v2 = *v1;
  if (*v1)
  {
    v3 = *(v1 + 8);
    *v1 = 0;
    *(v1 + 8) = 0;
    v2();

    sub_10001C94C(v2, v3);
  }
}

uint64_t sub_100022124()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100022274(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, Swift::Bool a5)
{
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;
  v10 = a3;
  sub_10002237C(v10, v7, v9, a5);
}

id sub_100022320()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BuddyStartOverAnalytics();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_10002237C(void *a1, uint64_t a2, uint64_t a3, Swift::Bool a4)
{
  v6 = String._bridgeToObjectiveC()();
  sub_100006410(&qword_1003A0C88);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100297E80;
  strcpy((inited + 32), "paneIdentifier");
  *(inited + 47) = -18;
  v8 = objc_allocWithZone(NSString);
  v9 = String._bridgeToObjectiveC()();
  v10 = [v8 initWithString:v9];

  *(inited + 48) = v10;
  *(inited + 56) = 0x7665446573617265;
  *(inited + 64) = 0xEB00000000656369;
  sub_100022568(0, &qword_1003A0330);
  *(inited + 72) = NSNumber.init(BOOLeanLiteral:)(a4);
  sub_10005D5FC(inited);
  swift_setDeallocating();
  sub_100006410(&qword_1003A0C90);
  swift_arrayDestroy();
  sub_100022568(0, &qword_1003A0C98);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [a1 addEvent:v6 withPayload:isa persist:1];
}

uint64_t sub_100022568(uint64_t a1, unint64_t *a2)
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

id sub_100022664()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BuddyDeviceImageUtilities();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_1000226BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100006410(&qword_1003A0CC8);
  __chkstk_darwin(v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for iosmacHardware();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);

  iosmacHardware.init(_:)();
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_100022A10(v10);
  }

  else
  {
    (*(v12 + 32))(v14, v10, v11);
    iosmacHardware.imageName.getter();
    if (v15)
    {
      type metadata accessor for ProductKitCatalog();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v17 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
      v18 = String._bridgeToObjectiveC()();

      v19 = [objc_opt_self() imageNamed:v18 inBundle:v17 compatibleWithTraitCollection:a3];

      (*(v12 + 8))(v14, v11);
      return v19;
    }

    (*(v12 + 8))(v14, v11);
  }

  static Logger.purpleBuddyGeneral.getter();
  v21 = static os_log_type_t.error.getter();
  v22 = Logger.logObject.getter();
  if (os_log_type_enabled(v22, v21))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&_mh_execute_header, v22, v21, "Unable to fetch device image.", v23, 2u);
  }

  (*(v5 + 8))(v7, v4);
  return 0;
}

uint64_t sub_100022A10(uint64_t a1)
{
  v2 = sub_100006410(&qword_1003A0CC8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100022A78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100006410(&qword_1003A0110);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_100026950(a3, v25 - v10);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1000281B0(v11, &qword_1003A0110);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_1000281B0(a3, &qword_1003A0110);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1000281B0(a3, &qword_1003A0110);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

Swift::Int sub_100022D7C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_100022DF0()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t sub_100022E34(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (v1)
    {

      if (sub_100027694())
      {

        CurrentValueSubject.value.setter();
      }
    }
  }

  return result;
}

uint64_t sub_100022EC8(void (*a1)(char *, uint64_t), uint64_t a2)
{
  v48 = a1;
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  (__chkstk_darwin)();
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(v7 - 8);
  (__chkstk_darwin)();
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for DispatchTime();
  v44 = *(v47 - 8);
  v11 = (__chkstk_darwin)();
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v46 = &v37 - v14;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v16 = result;
    if (a2)
    {
      v38 = v10;
      v39 = v8;
      v40 = v6;
      v41 = v7;
      v42 = v4;
      v43 = v3;
      v45 = a2;

      CurrentValueSubject.value.getter();
      if ((aBlock[0] & 1) == 0)
      {
        LOBYTE(aBlock[0]) = 1;
        CurrentValueSubject.value.setter();
      }

      sub_10002804C(v16 + 120, aBlock);
      v17 = v50;
      v18 = v51;
      sub_10000B444(aBlock, v50);
      v19 = *(v16 + 104);
      v20 = v19 == 0;
      if (v19)
      {
        v21 = *(v16 + 112);
      }

      else
      {
        v21 = 0;
      }

      v22 = *(v18 + 1);

      v24 = v22(v23, v48, v45, v21, v20, v17, v18);
      v26 = v25;
      v28 = v27;
      LODWORD(v22) = v27;

      sub_100027F50(aBlock);
      *(v16 + 104) = 0;
      *(v16 + 112) = 0;

      if (v22 == 1 && v26 > 0.5)
      {
        sub_10000ECD0();
        v37 = static OS_dispatch_queue.main.getter();
        static DispatchTime.now()();
        + infix(_:_:)();
        v48 = *(v44 + 8);
        v48(v13, v47);
        v29 = swift_allocObject();
        v30 = v45;
        *(v29 + 16) = v16;
        *(v29 + 24) = v30;
        *(v29 + 32) = v24;
        *(v29 + 40) = v26;
        *(v29 + 48) = 1;
        v51 = sub_1000280F0;
        v52 = v29;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_10002E3B4;
        v50 = &unk_100329258;
        v31 = _Block_copy(aBlock);

        v32 = v38;
        static DispatchQoS.unspecified.getter();
        aBlock[0] = &_swiftEmptyArrayStorage;
        sub_100028120(&qword_1003A0300, 255, &type metadata accessor for DispatchWorkItemFlags);
        sub_100006410(&unk_1003A0440);
        sub_100028168(&qword_1003A0310, &unk_1003A0440);
        v33 = v40;
        v34 = v43;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        v35 = v46;
        v36 = v37;
        OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
        _Block_release(v31);

        (*(v42 + 8))(v33, v34);
        (*(v39 + 8))(v32, v41);
        return (v48)(v35, v47);
      }

      *(v16 + 96) = 1;
      sub_100023454(v16, v45, v24, *&v26, v28);
    }
  }

  return result;
}

uint64_t sub_100023454(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v10 = *(a1 + 64);

  v11 = sub_100025E04(a2, v10);
  v13 = v12;

  if (v13)
  {
    v14 = 0;
  }

  else
  {
    v14 = v11;
  }

  *&v21 = v14;
  *(&v21 + 1) = NewFeaturesContext.titleText.getter();
  *&v22 = v15;
  *(&v22 + 1) = NewFeaturesContext.bodyText.getter();
  *v23 = v16;
  *&v23[8] = a3;
  *&v23[16] = a4;
  v23[24] = a5;
  PassthroughSubject.send(_:)();
  v24[0] = v21;
  v24[1] = v22;
  v25[0] = *v23;
  *(v25 + 9) = *&v23[9];
  sub_1000281B0(v24, &unk_1003A1860);
  v17 = *(a1 + 64);

  sub_100025E04(a2, v17);
  v19 = v18;

  if ((v19 & 1) == 0)
  {
    NewFeaturesContext.duration.getter();
    PassthroughSubject.send(_:)();
    return CurrentValueSubject.send(_:)();
  }

  return result;
}

uint64_t sub_1000235A8()
{
  *(v1 + 32) = v0;
  sub_100006410(&qword_1003A10E0);
  *(v1 + 40) = swift_task_alloc();

  return _swift_task_switch(sub_100023644, 0, 0);
}

uint64_t sub_100023644()
{
  v1 = *(v0 + 40);
  type metadata accessor for TestNewFeaturesResource();
  swift_initStackObject();
  sub_10002633C(v1);
  dispatch thunk of NewFeaturesHandler.overrideAssetLocation.setter();
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *v2 = v0;
  v2[1] = sub_10002370C;

  return NewFeaturesHandler.loadNewFeaturesContexts()();
}

uint64_t sub_10002370C(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {

    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 56) = a1;

    return _swift_task_switch(sub_100023860, 0, 0);
  }
}

uint64_t sub_100023860()
{
  v1 = v0[4];
  *(v1 + 80) = v0[7];

  v2 = *(v1 + 80);
  if (v2 >> 62)
  {
LABEL_38:
    v3 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = v0[4];
  swift_retain_n();

  if (v3)
  {
    v20 = v0;
    v5 = 0;
    v0 = 0xE000000000000000;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
        v6 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
LABEL_32:
          __break(1u);
LABEL_33:
          v0 = v20;
          v4 = v20[4];
          break;
        }
      }

      else
      {
        if (v5 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_38;
        }

        v6 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_32;
        }
      }

      v7 = NewFeaturesContext.titleText.getter();
      if (v8)
      {
        v9 = v7 & 0xFFFFFFFFFFFFLL;
      }

      else
      {
        v9 = 0;
      }

      if (v8)
      {
        v10 = v8;
      }

      else
      {
        v10 = 0xE000000000000000;
      }

      v11 = HIBYTE(v10) & 0xF;
      if ((v10 & 0x2000000000000000) == 0)
      {
        v11 = v9;
      }

      if (!v11)
      {
        v12 = NewFeaturesContext.bodyText.getter();
        if (v13)
        {
          v14 = v12 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          v14 = 0;
        }

        if (v13)
        {
          v15 = v13;
        }

        else
        {
          v15 = 0xE000000000000000;
        }

        v16 = HIBYTE(v15) & 0xF;
        if ((v15 & 0x2000000000000000) == 0)
        {
          v16 = v14;
        }

        if (!v16)
        {
          goto LABEL_5;
        }
      }

      NewFeaturesContext.duration.getter();
      if (v17 > 0.0)
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      else
      {
LABEL_5:
      }

      ++v5;
      if (v6 == v3)
      {
        goto LABEL_33;
      }
    }
  }

  *(v4 + 64) = &_swiftEmptyArrayStorage;

  v18 = v0[1];

  return v18();
}

uint64_t sub_100023AA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  sub_100006410(&qword_1003A0110);
  v4[3] = swift_task_alloc();
  v5 = type metadata accessor for Logger();
  v4[4] = v5;
  v4[5] = *(v5 - 8);
  v4[6] = swift_task_alloc();
  v4[7] = type metadata accessor for MainActor();
  v4[8] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100023BD0, v7, v6);
}

uint64_t sub_100023BD0()
{

  static Logger.purpleBuddyGeneral.getter();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Reset new features", v3, 2u);
  }

  v5 = v0[5];
  v4 = v0[6];
  v6 = v0[4];
  v7 = v0[2];

  (*(v5 + 8))(v4, v6);
  v8 = *(v7 + 64);
  if (v8 >> 62)
  {
    v9 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v9 >= 1)
  {
    v10 = *(v7 + 64);
    if (!(v10 >> 62))
    {
      if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) <= 0)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }

    if (_CocoaArrayWrapper.endIndex.getter() > 0)
    {
LABEL_8:
      v12 = v0[2];
      v11 = v0[3];
      v13 = type metadata accessor for TaskPriority();
      (*(*(v13 - 8) + 56))(v11, 1, 1, v13);

      v14 = static MainActor.shared.getter();
      v15 = swift_allocObject();
      v15[2] = v14;
      v15[3] = &protocol witness table for MainActor;
      v15[4] = v12;
      v15[5] = 0;
      sub_100022A78(0, 0, v11, &unk_1002981D8, v15);
    }
  }

LABEL_9:
  v16 = v0[2];
  if (*(v16 + 96))
  {
    v17 = v0[3];
    v18 = type metadata accessor for TaskPriority();
    (*(*(v18 - 8) + 56))(v17, 1, 1, v18);

    v19 = static MainActor.shared.getter();
    v20 = swift_allocObject();
    v20[2] = v19;
    v20[3] = &protocol witness table for MainActor;
    v20[4] = v16;
    sub_100022A78(0, 0, v17, &unk_1002981D0, v20);
  }

  v21 = v0[1];

  return v21();
}

uint64_t sub_100023EAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a4;
  v5 = type metadata accessor for Logger();
  v4[4] = v5;
  v4[5] = *(v5 - 8);
  v4[6] = swift_task_alloc();
  sub_100006410(&qword_1003A0110);
  v4[7] = swift_task_alloc();
  v4[8] = type metadata accessor for MainActor();
  v4[9] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100023FDC, v7, v6);
}

uint64_t sub_100023FDC()
{
  v1 = v0[3];

  v2 = *(v1 + 96);
  if (v2 != 2)
  {
    if (v2 == 3)
    {
      v3 = v0[3];
      v4 = *(v3 + 64);
      if (v4 >> 62)
      {
        if (_CocoaArrayWrapper.endIndex.getter() < 1)
        {
          goto LABEL_30;
        }
      }

      else if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10) < 1)
      {
        goto LABEL_30;
      }

      v5 = *(v3 + 64);
      if (!(v5 >> 62))
      {
        if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10) < 1)
        {
          goto LABEL_30;
        }

        goto LABEL_7;
      }

      if (_CocoaArrayWrapper.endIndex.getter() >= 1)
      {
LABEL_7:
        v6 = v0[7];
        v7 = v0[3];
        v8 = type metadata accessor for TaskPriority();
        (*(*(v8 - 8) + 56))(v6, 1, 1, v8);

        v9 = static MainActor.shared.getter();
        v10 = swift_allocObject();
        v10[2] = v9;
        v10[3] = &protocol witness table for MainActor;
        v10[4] = v7;
        v10[5] = 0;
        sub_100022A78(0, 0, v6, &unk_1002981B8, v10);
        goto LABEL_29;
      }
    }

    else
    {
      CurrentValueSubject.value.getter();
      v11 = v0[2];
      if (v11)
      {
        v12 = v0[3];
        v13 = *(v12 + 64);

        v14 = sub_100025E04(v11, v13);
        v16 = v15;

        if ((v16 & 1) == 0)
        {
          v23 = *(v12 + 64);
          if (v23 >> 62)
          {
            if (v14 >= _CocoaArrayWrapper.endIndex.getter())
            {
              goto LABEL_29;
            }
          }

          else if (v14 >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_29;
          }

          if ((v14 & 0x8000000000000000) == 0)
          {
            v24 = *(v12 + 64);
            if (v24 >> 62)
            {
              if (v14 >= _CocoaArrayWrapper.endIndex.getter())
              {
                goto LABEL_29;
              }
            }

            else if (v14 >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_29;
            }

            v25 = v0[7];
            v26 = v0[3];
            v27 = type metadata accessor for TaskPriority();
            (*(*(v27 - 8) + 56))(v25, 1, 1, v27);

            v28 = static MainActor.shared.getter();
            v29 = swift_allocObject();
            v29[2] = v28;
            v29[3] = &protocol witness table for MainActor;
            v29[4] = v26;
            v29[5] = v14;
            sub_100022A78(0, 0, v25, &unk_1002981B0, v29);
          }

LABEL_29:

          goto LABEL_30;
        }
      }

      NewFeaturesHandler.playNewFeaturesContent()();
      if (v17)
      {
        static Logger.purpleBuddyGeneral.getter();
        swift_errorRetain();
        v18 = Logger.logObject.getter();
        v19 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v18, v19))
        {
          v20 = swift_slowAlloc();
          v21 = swift_slowAlloc();
          *v20 = 138412290;
          swift_errorRetain();
          v22 = _swift_stdlib_bridgeErrorToNSError();
          *(v20 + 4) = v22;
          *v21 = v22;
          _os_log_impl(&_mh_execute_header, v18, v19, "Failed to play new features content: %@", v20, 0xCu);
          sub_1000281B0(v21, &qword_1003A0320);
        }

        else
        {
        }

        (*(v0[5] + 8))(v0[6], v0[4]);
      }
    }
  }

LABEL_30:

  v30 = v0[1];

  return v30();
}

uint64_t sub_100024438(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = type metadata accessor for Logger();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();
  v4[6] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[7] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100024538, v7, v6);
}

uint64_t sub_100024538()
{

  static Logger.purpleBuddyGeneral.getter();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Pause new features", v3, 2u);
  }

  v4 = v0[6];
  v5 = v0[3];
  v6 = v0[4];

  (*(v6 + 8))(v4, v5);
  NewFeaturesHandler.pauseNewFeaturesContent(at:)();

  v7 = v0[1];

  return v7();
}

uint64_t sub_10002470C()
{
  v1 = v0;
  v2 = sub_100006410(&qword_1003A0110);
  __chkstk_darwin(v2 - 8);
  v4 = &v22 - v3;
  CurrentValueSubject.value.getter();
  v5 = v23;
  if (v23)
  {
    v6 = *(v0 + 64);

    v7 = sub_100025E04(v5, v6);
    v9 = v8;

    if (v9)
    {

      goto LABEL_4;
    }

    v16 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
    }

    else
    {
      v17 = *(v1 + 64);
      if (!(v17 >> 62))
      {
        if (v16 >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
        }

        goto LABEL_12;
      }
    }

    if (v16 >= _CocoaArrayWrapper.endIndex.getter())
    {
    }

LABEL_12:
    if ((v16 & 0x8000000000000000) == 0)
    {
      v18 = *(v1 + 64);
      if (v18 >> 62)
      {
        if (v16 >= _CocoaArrayWrapper.endIndex.getter())
        {
        }
      }

      else if (v16 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
      }

      v19 = type metadata accessor for TaskPriority();
      (*(*(v19 - 8) + 56))(v4, 1, 1, v19);
      type metadata accessor for MainActor();

      v20 = static MainActor.shared.getter();
      v21 = swift_allocObject();
      v21[2] = v20;
      v21[3] = &protocol witness table for MainActor;
      v21[4] = v1;
      v21[5] = v16;
      sub_100022A78(0, 0, v4, &unk_1002981F8, v21);
    }
  }

LABEL_4:
  v10 = *(v1 + 64);
  if (v10 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (result < 1)
    {
      return result;
    }
  }

  else
  {
    result = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result < 1)
    {
      return result;
    }
  }

  v12 = *(v1 + 64);
  if (!(v12 >> 62))
  {
    result = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result < 1)
    {
      return result;
    }

    goto LABEL_8;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (result >= 1)
  {
LABEL_8:
    v13 = type metadata accessor for TaskPriority();
    (*(*(v13 - 8) + 56))(v4, 1, 1, v13);
    type metadata accessor for MainActor();

    v14 = static MainActor.shared.getter();
    v15 = swift_allocObject();
    v15[2] = v14;
    v15[3] = &protocol witness table for MainActor;
    v15[4] = v1;
    v15[5] = 0;
    sub_100022A78(0, 0, v4, &unk_1002981F0, v15);
  }

  return result;
}

uint64_t sub_100024A28()
{
  v1 = v0;
  v2 = sub_100006410(&qword_1003A0110);
  __chkstk_darwin(v2 - 8);
  v4 = &v17 - v3;
  result = CurrentValueSubject.value.getter();
  v6 = v18;
  if (v18)
  {
    v7 = *(v0 + 64);

    v8 = sub_100025E04(v6, v7);
    v10 = v9;

    if (v10)
    {
    }

    v11 = v8 - 1;
    if (__OFSUB__(v8, 1))
    {
      __break(1u);
    }

    else
    {
      v12 = *(v1 + 64);
      if (!(v12 >> 62))
      {
        if (v11 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
        }

        goto LABEL_6;
      }
    }

    if (v11 >= _CocoaArrayWrapper.endIndex.getter())
    {
    }

LABEL_6:
    if ((v11 & 0x8000000000000000) == 0)
    {
      v13 = *(v1 + 64);
      if (v13 >> 62)
      {
        if (v11 >= _CocoaArrayWrapper.endIndex.getter())
        {
        }

        goto LABEL_9;
      }

      if (v11 < *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_9:
        v14 = type metadata accessor for TaskPriority();
        (*(*(v14 - 8) + 56))(v4, 1, 1, v14);
        type metadata accessor for MainActor();

        v15 = static MainActor.shared.getter();
        v16 = swift_allocObject();
        v16[2] = v15;
        v16[3] = &protocol witness table for MainActor;
        v16[4] = v1;
        v16[5] = v11;
        sub_100022A78(0, 0, v4, &unk_1002981E8, v16);
      }
    }
  }

  return result;
}

uint64_t sub_100024C20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[9] = a4;
  v5[10] = a5;
  v6 = type metadata accessor for ContinuousClock();
  v5[11] = v6;
  v5[12] = *(v6 - 8);
  v5[13] = swift_task_alloc();
  v7 = type metadata accessor for Logger();
  v5[14] = v7;
  v5[15] = *(v7 - 8);
  v5[16] = swift_task_alloc();
  v5[17] = swift_task_alloc();
  v5[18] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[19] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[20] = v9;
  v5[21] = v8;

  return _swift_task_switch(sub_100024D88, v9, v8);
}

uint64_t sub_100024D88()
{
  if (*(*(v0 + 72) + 96) == 1)
  {

    static Logger.purpleBuddyGeneral.getter();
    v1 = Logger.logObject.getter();
    v2 = static os_log_type_t.debug.getter();
    v3 = os_log_type_enabled(v1, v2);
    v4 = *(v0 + 136);
    v5 = *(v0 + 112);
    v6 = *(v0 + 120);
    if (v3)
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v1, v2, "Ignore chapter selection as we're currently transitioning", v7, 2u);
    }

    (*(v6 + 8))(v4, v5);

    v8 = *(v0 + 8);

    return v8();
  }

  static Logger.purpleBuddyGeneral.getter();
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = *(v0 + 80);
    v13 = swift_slowAlloc();
    *v13 = 134217984;
    *(v13 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v10, v11, "Selecting chapter at index: %ld", v13, 0xCu);
  }

  v14 = *(v0 + 144);
  v15 = *(v0 + 112);
  v16 = *(v0 + 120);
  v17 = *(v0 + 72);

  v18 = *(v16 + 8);
  *(v0 + 176) = v18;
  *(v0 + 184) = (v16 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  result = v18(v14, v15);
  v19 = *(v17 + 64);
  v20 = *(v0 + 80);
  if ((v19 & 0xC000000000000001) != 0)
  {

    v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();

    goto LABEL_13;
  }

  if ((v20 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_18;
  }

  if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10) <= v20)
  {
LABEL_18:
    __break(1u);
    return result;
  }

  v21 = *(v19 + 8 * v20 + 32);

LABEL_13:
  *(v0 + 192) = v21;
  v22 = *(v0 + 72);
  v22[13] = v21;
  v22[14] = 0x3FE0000000000000;

  *(v0 + 64) = v21;

  CurrentValueSubject.value.setter();
  *(v0 + 200) = v22[4];
  *(v0 + 16) = 0;
  *(v0 + 24) = 0x3FD0000000000000;
  PassthroughSubject.send(_:)();
  v23 = static Duration.seconds(_:)();
  v25 = v24;
  static Clock<>.continuous.getter();
  v26 = swift_task_alloc();
  *(v0 + 208) = v26;
  *v26 = v0;
  v26[1] = sub_1000250F8;

  return (sub_100038F10)(v23, v25, 0, 0, 1);
}

uint64_t sub_1000250F8()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 96);
  v5 = *(*v1 + 88);
  *(*v1 + 216) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 168);
  v7 = *(v2 + 160);
  if (v0)
  {
    v8 = sub_10002546C;
  }

  else
  {
    v8 = sub_100025290;
  }

  return _swift_task_switch(v8, v7, v6);
}

uint64_t sub_100025290()
{
  v1 = swift_task_alloc();
  *(v0 + 224) = v1;
  *v1 = v0;
  v1[1] = sub_100025330;
  v2 = *(v0 + 192);

  return NewFeaturesHandler.skip(to:)(v2);
}

uint64_t sub_100025330()
{
  v2 = *v1;
  *(*v1 + 232) = v0;

  v3 = *(v2 + 168);
  v4 = *(v2 + 160);
  if (v0)
  {
    v5 = sub_100025788;
  }

  else
  {
    v5 = sub_1000256D4;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_10002546C()
{
  v19 = v0;

  static Logger.purpleBuddyGeneral.getter();

  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v17 = *(v0 + 176);
    v16 = *(v0 + 128);
    v3 = *(v0 + 112);
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v18 = v6;
    *v4 = 136315394;
    v7 = NewFeaturesContext.description.getter();
    v9 = sub_100063F14(v7, v8, &v18);

    *(v4 + 4) = v9;
    *(v4 + 12) = 2112;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 14) = v10;
    *v5 = v10;
    _os_log_impl(&_mh_execute_header, v1, v2, "Failed to skip to chapter %s: %@", v4, 0x16u);
    sub_1000281B0(v5, &qword_1003A0320);

    sub_100027F50(v6);

    v17(v16, v3);
  }

  else
  {
    v11 = *(v0 + 176);
    v12 = *(v0 + 128);
    v13 = *(v0 + 112);

    v11(v12, v13);
  }

  *(v0 + 32) = 1;
  *(v0 + 40) = 0x3FD0000000000000;
  PassthroughSubject.send(_:)();

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_1000256D4()
{

  *(v0 + 48) = 1;
  *(v0 + 56) = 0x3FD0000000000000;
  PassthroughSubject.send(_:)();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100025788()
{
  v19 = v0;

  static Logger.purpleBuddyGeneral.getter();

  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v17 = *(v0 + 176);
    v16 = *(v0 + 128);
    v3 = *(v0 + 112);
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v18 = v6;
    *v4 = 136315394;
    v7 = NewFeaturesContext.description.getter();
    v9 = sub_100063F14(v7, v8, &v18);

    *(v4 + 4) = v9;
    *(v4 + 12) = 2112;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 14) = v10;
    *v5 = v10;
    _os_log_impl(&_mh_execute_header, v1, v2, "Failed to skip to chapter %s: %@", v4, 0x16u);
    sub_1000281B0(v5, &qword_1003A0320);

    sub_100027F50(v6);

    v17(v16, v3);
  }

  else
  {
    v11 = *(v0 + 176);
    v12 = *(v0 + 128);
    v13 = *(v0 + 112);

    v11(v12, v13);
  }

  *(v0 + 32) = 1;
  *(v0 + 40) = 0x3FD0000000000000;
  PassthroughSubject.send(_:)();

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_1000259F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  type metadata accessor for MainActor();
  *(v4 + 24) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100025A88, v6, v5);
}

uint64_t sub_100025A88()
{
  v1 = *(v0 + 16);

  if (*(v1 + 96) == 1)
  {
    *(v1 + 96) = 2;
  }

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100025AFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  type metadata accessor for MainActor();
  *(v4 + 24) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100025B94, v6, v5);
}

uint64_t sub_100025B94()
{
  v1 = *(v0 + 16);

  *(v1 + 96) = 2;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100025BFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  type metadata accessor for MainActor();
  *(v4 + 24) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100025C94, v6, v5);
}

uint64_t sub_100025C94()
{
  v1 = *(v0 + 16);

  if (*(v1 + 96) != 3)
  {
    *(v1 + 96) = 0;
  }

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100025D04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  type metadata accessor for MainActor();
  *(v4 + 24) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100025D9C, v6, v5);
}

uint64_t sub_100025D9C()
{
  v1 = *(v0 + 16);

  *(v1 + 96) = 3;
  v2 = *(v0 + 8);

  return v2();
}

unint64_t sub_100025E04(uint64_t a1, unint64_t a2)
{
  v3 = a2 & 0xFFFFFFFFFFFFFF8;
  if (a2 >> 62)
  {
LABEL_17:
    v4 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v4 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = 0;
  while (1)
  {
    if (v4 == v5)
    {
      return 0;
    }

    if ((a2 & 0xC000000000000001) != 0)
    {
      specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v5 >= *(v3 + 16))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }
    }

    type metadata accessor for NewFeaturesContext();
    v6 = static NewFeaturesContext.== infix(_:_:)();

    if (v6)
    {
      return v5;
    }

    if (__OFADD__(v5++, 1))
    {
      goto LABEL_16;
    }
  }
}

uint64_t sub_100025EFC(uint64_t a1)
{
  if (!a1)
  {
    goto LABEL_13;
  }

  v2 = *(v1 + 64);
  if (!(v2 >> 62))
  {
    result = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_4;
    }

LABEL_11:
    swift_retain_n();
LABEL_12:

LABEL_13:
    v6 = 0;
    return v6 & 1;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (!result)
  {
    goto LABEL_11;
  }

LABEL_4:
  v4 = result - 1;
  if (__OFSUB__(result, 1))
  {
    __break(1u);
LABEL_16:
    swift_retain_n();

    v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();

    if (v7)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  if ((v2 & 0xC000000000000001) != 0)
  {
    goto LABEL_16;
  }

  if ((v4 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v4 < *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v5 = *(v2 + 8 * v4 + 32);
    swift_retain_n();

    if (v5)
    {
LABEL_9:
      type metadata accessor for NewFeaturesContext();
      sub_100028120(&qword_1003A10D8, 255, &type metadata accessor for NewFeaturesContext);
      v6 = dispatch thunk of static Equatable.== infix(_:_:)();

      return v6 & 1;
    }

    goto LABEL_12;
  }

  __break(1u);
  return result;
}

uint64_t sub_100026084()
{

  sub_100027F50(v0 + 120);

  return v0;
}

uint64_t sub_100026104()
{
  sub_100026084();

  return swift_deallocClassInstance();
}

uint64_t sub_1000261BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4;
  v7 = sub_100006410(&qword_1003A0110);
  __chkstk_darwin(v7 - 8);
  v9 = &v14 - v8;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  type metadata accessor for MainActor();

  v11 = static MainActor.shared.getter();
  v12 = swift_allocObject();
  v12[2] = v11;
  v12[3] = &protocol witness table for MainActor;
  v12[4] = v6;
  sub_100022A78(0, 0, v9, a4, v12);
}

uint64_t sub_1000262DC(uint64_t a1, double a2)
{
  *(v2 + 104) = a1;
  *(v2 + 112) = a2;

  return CurrentValueSubject.value.setter();
}

uint64_t sub_10002633C@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_opt_self() defaultManager];
  v7 = String._bridgeToObjectiveC()();
  v8 = [v6 fileExistsAtPath:v7];

  if (v8)
  {
    static Logger.purpleBuddyGeneral.getter();
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "Showing debug video", v11, 2u);
    }

    (*(v3 + 8))(v5, v2);
    return URL.init(string:)();
  }

  else
  {
    v13 = type metadata accessor for URL();
    v14 = *(*(v13 - 8) + 56);

    return v14(a1, 1, 1, v13);
  }
}

uint64_t getEnumTagSinglePayload for NewFeaturesViewModel.State(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for NewFeaturesViewModel.State(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 sub_100026748(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_100026764(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 57))
  {
    return (*a1 + 0x7FFFFFFF);
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

  return (v4 + 1);
}

uint64_t sub_1000267C0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

unint64_t sub_100026838()
{
  result = qword_1003A10D0;
  if (!qword_1003A10D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A10D0);
  }

  return result;
}

uint64_t sub_10002689C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100028244;

  return sub_100025D04(a1, v4, v5, v6);
}

uint64_t sub_100026950(uint64_t a1, uint64_t a2)
{
  v4 = sub_100006410(&qword_1003A0110);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000269C0(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100026AB8;

  return v6(a1);
}

uint64_t sub_100026AB8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100026BB0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100028268;

  return sub_1000269C0(a1, v4);
}

uint64_t sub_100026C68(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100026D20;

  return sub_1000269C0(a1, v4);
}

uint64_t sub_100026D20()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100026E14(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100028248;

  return sub_100025BFC(a1, v4, v5, v6);
}

uint64_t sub_100026EC8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100026F7C;

  return sub_100025AFC(a1, v4, v5, v6);
}

uint64_t sub_100026F7C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100027070@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v3 = *(a1 + 8);
  v4 = *a2;
  *a3 = v3;
  a3[1] = v4;
}

void *sub_1000270B0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100006410(&qword_1003A10E8);
  v20 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v19 - v5;
  sub_100006410(&qword_1003A10F0);
  swift_allocObject();
  *(v1 + 24) = PassthroughSubject.init()();
  sub_100006410(&qword_1003A1810);
  swift_allocObject();
  *(v1 + 32) = PassthroughSubject.init()();
  sub_100006410(&qword_1003A17F0);
  swift_allocObject();
  *(v1 + 40) = PassthroughSubject.init()();
  LOBYTE(v22) = 0;
  sub_100006410(&qword_1003A10F8);
  swift_allocObject();
  *(v1 + 48) = CurrentValueSubject.init(_:)();
  LOBYTE(v22) = 1;
  swift_allocObject();
  *(v1 + 56) = CurrentValueSubject.init(_:)();
  *(v1 + 64) = &_swiftEmptyArrayStorage;
  v22 = 0;
  sub_100006410(&qword_1003A1100);
  swift_allocObject();
  *(v1 + 72) = CurrentValueSubject.init(_:)();
  *(v1 + 80) = &_swiftEmptyArrayStorage;
  v22 = 0;
  swift_allocObject();
  *(v1 + 88) = CurrentValueSubject.init(_:)();
  *(v1 + 96) = 0;
  *(v1 + 104) = 0;
  *(v1 + 112) = 0;
  if (&_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
  {
    v7 = sub_100013E98(&_swiftEmptyArrayStorage);
  }

  else
  {
    v7 = &_swiftEmptySetSingleton;
  }

  *(v1 + 160) = v7;
  *(v1 + 16) = a1;
  v8 = objc_opt_self();

  v9 = [v8 currentDevice];
  v10 = [v9 userInterfaceIdiom];

  if (v10 == 1)
  {
    v11 = type metadata accessor for iPadNewFeatureContextTransitionProvider();
    v12 = &off_100328FE0;
  }

  else
  {
    v11 = type metadata accessor for iPhoneNewFeatureContextTransitionProvider();
    v12 = &off_100328FF0;
  }

  v13 = swift_allocObject();
  v2[18] = v11;
  v2[19] = v12;
  v2[15] = v13;
  sub_100028120(&qword_1003A1108, v14, type metadata accessor for NewFeaturesViewModel);

  dispatch thunk of NewFeaturesHandler.delegate.setter();

  v22 = v2[11];
  swift_allocObject();
  swift_weakInit();
  sub_100028168(&qword_1003A1110, &qword_1003A1100);

  Publisher<>.sink(receiveValue:)();

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v21 = v2[9];
  v22 = 0;
  v23 = 0;
  sub_100006410(&qword_1003A1118);
  Publisher.scan<A>(_:_:)();
  sub_100028168(&qword_1003A1120, &qword_1003A10E8);
  v15 = Publisher.eraseToAnyPublisher()();
  (*(v20 + 8))(v6, v4);
  v22 = v15;
  v16 = swift_allocObject();
  swift_weakInit();

  v17 = swift_allocObject();
  *(v17 + 16) = sub_100027FDC;
  *(v17 + 24) = v16;
  sub_100006410(&qword_1003A1128);
  sub_100028168(&qword_1003A1130, &qword_1003A1128);
  Publisher<>.sink(receiveValue:)();

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  return v2;
}

BOOL sub_100027694()
{
  v0 = NewFeaturesContext.titleText.getter();
  if (v1)
  {
    v2 = v0 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v2 = 0;
  }

  if (v1)
  {
    v3 = v1;
  }

  else
  {
    v3 = 0xE000000000000000;
  }

  v4 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v4 = v2;
  }

  if (!v4)
  {
    v5 = NewFeaturesContext.bodyText.getter();
    v7 = v6 ? v5 & 0xFFFFFFFFFFFFLL : 0;
    v8 = v6 ? v6 : 0xE000000000000000;

    v9 = HIBYTE(v8) & 0xF;
    if ((v8 & 0x2000000000000000) == 0)
    {
      v9 = v7;
    }

    if (!v9)
    {
      return 0;
    }
  }

  NewFeaturesContext.duration.getter();
  return v10 > 0.0;
}

BOOL sub_10002772C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (!a2)
  {
    return 0;
  }

  type metadata accessor for NewFeaturesContext();
  sub_100028120(&qword_1003A10D8, 255, &type metadata accessor for NewFeaturesContext);

  if (dispatch thunk of static Equatable.== infix(_:_:)() & 1) != 0 || (a5 & 1) != 0 || *&a4 <= 0.0 || (v10 = sub_100025E04(a2, a1), (v11))
  {

    return 0;
  }

  else
  {
    v13 = v10;
    v14 = sub_100025E04(a3, a1);
    v16 = v15;

    return (v16 & 1) == 0 && v13 < v14;
  }
}

uint64_t sub_100027878(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a2)
  {
    type metadata accessor for NewFeaturesContext();
    sub_100028120(&qword_1003A10D8, 255, &type metadata accessor for NewFeaturesContext);

    if (dispatch thunk of static Equatable.== infix(_:_:)() & 1) != 0 || (a5 & 1) != 0 || *&a4 <= 0.0 || (v10 = sub_100025E04(a2, a1), (v11))
    {

      return 0;
    }

    else
    {
      v13 = v10;
      v14 = sub_100025E04(a3, a1);
      v16 = v15;

      return (v16 & 1) == 0 && v13 < v14;
    }
  }

  else if (a5)
  {
    return 0x3FE0000000000000;
  }

  else
  {
    return a4;
  }
}

uint64_t sub_1000279C8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10002824C;

  return sub_100024C20(a1, v4, v5, v7, v6);
}

uint64_t sub_100027A88(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100028250;

  return sub_100024C20(a1, v4, v5, v7, v6);
}

uint64_t sub_100027B48(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100028254;

  return sub_100024438(a1, v4, v5, v6);
}

uint64_t sub_100027BFC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100028258;

  return sub_100024C20(a1, v4, v5, v7, v6);
}

uint64_t sub_100027CBC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10002825C;

  return sub_100024C20(a1, v4, v5, v7, v6);
}

uint64_t sub_100027D7C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100028260;

  return sub_100024C20(a1, v4, v5, v7, v6);
}

uint64_t sub_100027E44(uint64_t a1)
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v1, a1, 7);
}

uint64_t sub_100027E90(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100028264;

  return sub_100024C20(a1, v4, v5, v7, v6);
}

uint64_t sub_100027F50(uint64_t a1)
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

uint64_t sub_100027F9C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100027FE4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10002804C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1000280B0()
{

  return _swift_deallocObject(v0, 49, 7);
}

uint64_t sub_1000280F0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  *(v1 + 96) = 1;
  return sub_100023454(v1, v2, v3, v4, v5);
}

uint64_t sub_100028108(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100028120(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_100028168(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1000097E0(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000281B0(uint64_t a1, uint64_t *a2)
{
  v3 = sub_100006410(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1000282CC()
{
  result = qword_1003A1138;
  if (!qword_1003A1138)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1003A1138);
  }

  return result;
}

uint64_t sub_100028408()
{
  v1 = sub_100006410(&unk_1003A1230);
  __chkstk_darwin(v1 - 8);
  v3 = &v21 - v2;
  v4 = type metadata accessor for Locale.Language();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Locale();
  v9 = *(v8 - 8);
  result = __chkstk_darwin(v8);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v0 + OBJC_IVAR____TtC5Setup30BuddySafetyAndHandlingFlowItem_safetyAndHandlingManager);
  if (v13)
  {
    if (*(v13 + OBJC_IVAR___BYBuddySafetyAndHandlingManager_languageCode + 8))
    {
      v14 = *(v13 + OBJC_IVAR___BYBuddySafetyAndHandlingManager_languageCode);
LABEL_10:

      return v14;
    }

    v15 = result;
    v16 = static Locale.preferredLanguages.getter();
    if (*(v16 + 16))
    {
      v14 = *(v16 + 32);

      goto LABEL_10;
    }

    v17 = [objc_opt_self() _deviceLanguage];
    if (v17)
    {
      v18 = v17;
      v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();

      goto LABEL_10;
    }

    static Locale.current.getter();
    Locale.language.getter();
    (*(v9 + 8))(v12, v15);
    Locale.Language.languageCode.getter();
    (*(v5 + 8))(v7, v4);
    v19 = type metadata accessor for Locale.LanguageCode();
    v20 = *(v19 - 8);
    result = (*(v20 + 48))(v3, 1, v19);
    if (result != 1)
    {
      v14 = Locale.LanguageCode.identifier.getter();
      (*(v20 + 8))(v3, v19);
      goto LABEL_10;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_100028714()
{
  v1 = OBJC_IVAR____TtC5Setup30BuddySafetyAndHandlingFlowItem____lazy_storage___controllerProvider;
  v2 = *(v0 + OBJC_IVAR____TtC5Setup30BuddySafetyAndHandlingFlowItem____lazy_storage___controllerProvider);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC5Setup30BuddySafetyAndHandlingFlowItem____lazy_storage___controllerProvider);
  }

  else
  {
    v4 = sub_100028778(v0);
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_100028778(uint64_t a1)
{
  v2 = sub_100006410(&qword_1003A1228);
  __chkstk_darwin(v2 - 8);
  v4 = &v23 - v3;
  v5 = type metadata accessor for Locale();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_100028408();
  v10 = *(a1 + OBJC_IVAR____TtC5Setup30BuddySafetyAndHandlingFlowItem_safetyAndHandlingManager);
  if (v10)
  {
    v11 = (v10 + OBJC_IVAR___BYBuddySafetyAndHandlingManager_countryCode);
    if (v11[1])
    {
      v12 = *v11;
      v13 = v11[1];
LABEL_6:
      v17 = type metadata accessor for BuddySafetyAndHandlingViewControllerProvider();
      v18 = objc_allocWithZone(v17);
      v19 = objc_allocWithZone(BYBuddySafetyAndHandlingBundleLocalizationProvider);

      v20 = String._bridgeToObjectiveC()();

      v21 = [v19 initWithLanguageCode:v20];

      *&v18[OBJC_IVAR___BYBuddySafetyAndHandlingViewControllerProvider_localizationProvider] = v21;
      v22 = &v18[OBJC_IVAR___BYBuddySafetyAndHandlingViewControllerProvider_region];
      *v22 = v12;
      v22[1] = v13;
      v23.receiver = v18;
      v23.super_class = v17;
      return objc_msgSendSuper2(&v23, "init");
    }

    static Locale.current.getter();
    Locale.region.getter();
    (*(v6 + 8))(v8, v5);
    v14 = type metadata accessor for Locale.Region();
    v15 = *(v14 - 8);
    result = (*(v15 + 48))(v4, 1, v14);
    if (result != 1)
    {
      v12 = Locale.Region.identifier.getter();
      v13 = v16;
      (*(v15 + 8))(v4, v14);
      goto LABEL_6;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_100028A08()
{
  v1 = OBJC_IVAR____TtC5Setup30BuddySafetyAndHandlingFlowItem____lazy_storage___localizationProvider;
  if (*(v0 + OBJC_IVAR____TtC5Setup30BuddySafetyAndHandlingFlowItem____lazy_storage___localizationProvider))
  {
    v2 = *(v0 + OBJC_IVAR____TtC5Setup30BuddySafetyAndHandlingFlowItem____lazy_storage___localizationProvider);
  }

  else
  {
    sub_100028408();
    v3 = objc_allocWithZone(BYBuddySafetyAndHandlingBundleLocalizationProvider);
    v4 = String._bridgeToObjectiveC()();

    v5 = [v3 initWithLanguageCode:v4];

    *(v0 + v1) = v5;
    v2 = v5;
    swift_unknownObjectRelease();
  }

  swift_unknownObjectRetain();
  return v2;
}

id (*sub_100028AC0())()
{
  v1 = &v0[OBJC_IVAR____TtC5Setup30BuddySafetyAndHandlingFlowItem____lazy_storage___viewControllerProvider];
  v2 = *&v0[OBJC_IVAR____TtC5Setup30BuddySafetyAndHandlingFlowItem____lazy_storage___viewControllerProvider];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC5Setup30BuddySafetyAndHandlingFlowItem____lazy_storage___viewControllerProvider];
  }

  else
  {
    v4 = swift_allocObject();
    *(v4 + 16) = v0;
    v3 = sub_100029D8C;
    *v1 = sub_100029D8C;
    v1[1] = v4;
    v5 = v0;

    sub_100029D94(0);
  }

  sub_100029DA4(v2);
  return v3;
}

id sub_100028B6C(uint64_t a1)
{
  v25 = a1;
  v1 = type metadata accessor for UIHostingControllerSizingOptions();
  __chkstk_darwin(v1 - 8);
  v24 = type metadata accessor for LegalDocumentSafetyAndHandlingView();
  v2 = *(v24 - 8);
  v3 = __chkstk_darwin(v24);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v23 - v6;
  v8 = sub_100028714();
  v9 = [*&v8[OBJC_IVAR___BYBuddySafetyAndHandlingViewControllerProvider_localizationProvider] languageCode];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  LegalDocumentSafetyAndHandlingView.init(language:region:)();
  v10 = v24;
  (*(v2 + 16))(v5, v7, v24);
  v11 = objc_allocWithZone(sub_100006410(&qword_1003A1220));
  v12 = UIHostingController.init(rootView:)();
  UIHostingController.safeAreaRegions.setter();
  static UIHostingControllerSizingOptions.intrinsicContentSize.getter();
  dispatch thunk of UIHostingController.sizingOptions.setter();
  type metadata accessor for SafetyAndHandlingViewController();
  type metadata accessor for SafetyAndHandlingViewModel();
  swift_initStackObject();
  v13 = swift_unknownObjectRetain();
  v14 = sub_10002B9E4(v13);
  v15 = sub_10002B268(v14, v12);

  (*(v2 + 8))(v7, v10);
  v16 = v25;
  v17 = sub_100028A08();
  v18 = String._bridgeToObjectiveC()();
  v19 = [v17 localizedStringForKey:v18];

  swift_unknownObjectRelease();
  if (!v19)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = String._bridgeToObjectiveC()();
  }

  v20 = [objc_opt_self() boldButton];
  [v20 setTitle:v19 forState:0];

  [v20 addTarget:v16 action:"continueButtonTapped" forControlEvents:64];
  v21 = [v15 buttonTray];
  [v21 addButton:v20];

  return v15;
}

id sub_100028ED8()
{
  *&v0[OBJC_IVAR____TtC5Setup30BuddySafetyAndHandlingFlowItem_delegate] = 0;
  *&v0[OBJC_IVAR____TtC5Setup30BuddySafetyAndHandlingFlowItem_buddyPreferencesExcludedFromBackup] = 0;
  *&v0[OBJC_IVAR____TtC5Setup30BuddySafetyAndHandlingFlowItem_runState] = 0;
  *&v0[OBJC_IVAR____TtC5Setup30BuddySafetyAndHandlingFlowItem_safetyAndHandlingManager] = 0;
  v1 = OBJC_IVAR____TtC5Setup30BuddySafetyAndHandlingFlowItem_cloudConfigManager;
  *&v0[v1] = [objc_opt_self() sharedManager];
  *&v0[OBJC_IVAR____TtC5Setup30BuddySafetyAndHandlingFlowItem____lazy_storage___controllerProvider] = 0;
  *&v0[OBJC_IVAR____TtC5Setup30BuddySafetyAndHandlingFlowItem____lazy_storage___localizationProvider] = 0;
  *&v0[OBJC_IVAR____TtC5Setup30BuddySafetyAndHandlingFlowItem_cachedViewController] = 0;
  v2 = &v0[OBJC_IVAR____TtC5Setup30BuddySafetyAndHandlingFlowItem____lazy_storage___viewControllerProvider];
  v3 = type metadata accessor for BuddySafetyAndHandlingFlowItem();
  *v2 = 0;
  *(v2 + 1) = 0;
  v5.receiver = v0;
  v5.super_class = v3;
  return objc_msgSendSuper2(&v5, "init");
}

uint64_t sub_100028FD4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  *(a1 + *a4) = a3;
  swift_unknownObjectRetain();

  return swift_unknownObjectRelease();
}

id sub_100029030()
{
  result = *(v0 + OBJC_IVAR____TtC5Setup30BuddySafetyAndHandlingFlowItem_runState);
  if (result)
  {
    result = [result hasCompletedInitialRun];
    if (result)
    {
      v2 = 0;
      return (v2 & 1);
    }

    v3 = *(v0 + OBJC_IVAR____TtC5Setup30BuddySafetyAndHandlingFlowItem_safetyAndHandlingManager);
    if (v3)
    {
      v4 = v3;
      v5 = sub_100028714();
      v6 = *&v4[OBJC_IVAR___BYBuddySafetyAndHandlingManager_preferences];
      v7 = String._bridgeToObjectiveC()();
      LOBYTE(v6) = [v6 BOOLForKey:v7];

      if (v6)
      {
        v2 = 0;
      }

      else
      {
        v2 = sub_10002AD44();
      }

      return (v2 & 1);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_100029144()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC5Setup30BuddySafetyAndHandlingFlowItem_cachedViewController;
  v3 = *(v0 + OBJC_IVAR____TtC5Setup30BuddySafetyAndHandlingFlowItem_cachedViewController);
  if (v3)
  {
    v4 = *(v0 + OBJC_IVAR____TtC5Setup30BuddySafetyAndHandlingFlowItem_cachedViewController);
    v5 = v4;
  }

  else
  {
    v6 = sub_100028AC0();
    v5 = v6();

    v4 = 0;
    v3 = *(v1 + v2);
  }

  *(v1 + v2) = v5;
  v7 = v4;
  v8 = v5;

  return v5;
}

void sub_1000293B8(void *a1)
{
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100029DB4(0, &qword_1003A0430);
  *v5 = static OS_dispatch_queue.main.getter();
  (*(v3 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v2);
  v6 = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v5, v2);
  if (v6)
  {
    v7 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v8 = swift_allocObject();
    *(v8 + 16) = v7;
    *(v8 + 24) = a1;

    v9 = sub_100029670(v7, a1);

    if (v9)
    {
    }

    else
    {
      v10 = [objc_opt_self() defaultCenter];
      v11 = swift_allocObject();
      *(v11 + 16) = sub_100029CD4;
      *(v11 + 24) = v8;
      aBlock[4] = sub_100029D14;
      aBlock[5] = v11;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100053BB8;
      aBlock[3] = &unk_1003292F8;
      v12 = _Block_copy(aBlock);

      v13 = [v10 addObserverForName:@"BuddyCloudConfigManagerSkipKeysDidChangeNotification" object:0 queue:0 usingBlock:v12];

      _Block_release(v12);
      swift_unknownObjectRelease();
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100029670(uint64_t a1, void *a2)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = *(Strong + OBJC_IVAR____TtC5Setup30BuddySafetyAndHandlingFlowItem_cloudConfigManager);
    if (!v8 || (v9 = *(Strong + OBJC_IVAR____TtC5Setup30BuddySafetyAndHandlingFlowItem_delegate)) == 0 || (v10 = *(Strong + OBJC_IVAR____TtC5Setup30BuddySafetyAndHandlingFlowItem_cachedViewController)) == 0)
    {
      v29 = 0;
      v13 = Strong;
LABEL_15:

      return v29;
    }

    v11 = Strong;
    swift_getObjectType();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v13 = v8;
    swift_unknownObjectRetain();
    v14 = v10;
    if ([v13 cloudConfigWantsToSkipControllerClass:ObjCClassFromMetadata])
    {
      v15 = [a2 topViewController];
      if (!v15)
      {

        swift_unknownObjectRelease();
        goto LABEL_14;
      }

      v16 = v15;
      sub_100029DB4(0, &qword_1003A1218);
      v14 = v14;
      v17 = static NSObject.== infix(_:_:)();

      if (v17)
      {
        static Logger.purpleBuddyGeneral.getter();
        v18 = v11;
        v19 = Logger.logObject.getter();
        v20 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v19, v20))
        {
          v21 = swift_slowAlloc();
          v35 = v20;
          v22 = v21;
          v34 = swift_slowAlloc();
          v36 = v34;
          *v22 = 136315138;
          v23 = _typeName(_:qualified:)();
          v25 = sub_100063F14(v23, v24, &v36);
          v33 = v19;
          v26 = v18;
          v27 = v25;

          *(v22 + 4) = v27;
          v18 = v26;
          v28 = v33;
          _os_log_impl(&_mh_execute_header, v33, v35, "Advancing from %s due to cloud configuration...", v22, 0xCu);
          sub_10000A420(v34);
        }

        else
        {
        }

        (*(v4 + 8))(v6, v3);
        v31 = v18;
        [v9 flowItemDone:v31];

        swift_unknownObjectRelease();
        v29 = 1;
        goto LABEL_15;
      }
    }

    swift_unknownObjectRelease();
LABEL_14:
    v29 = 0;
    goto LABEL_15;
  }

  return 0;
}

void sub_1000299C0()
{
  v1 = *(v0 + OBJC_IVAR____TtC5Setup30BuddySafetyAndHandlingFlowItem_safetyAndHandlingManager);
  if (!v1)
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = *&v1[OBJC_IVAR___BYBuddySafetyAndHandlingManager_preferences];
  v3 = v1;
  isa = Bool._bridgeToObjectiveC()().super.super.isa;
  v5 = String._bridgeToObjectiveC()();
  [v2 setObject:isa forKey:v5];

  v6 = *(v0 + OBJC_IVAR____TtC5Setup30BuddySafetyAndHandlingFlowItem_delegate);
  if (!v6)
  {
LABEL_7:
    __break(1u);
    return;
  }

  [v6 flowItemDone:v0];
}

id sub_100029B44()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BuddySafetyAndHandlingFlowItem();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100029C5C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100029C94()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100029CDC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100029D3C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100029D54()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100029D94(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_100029DA4(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_100029DB4(uint64_t a1, unint64_t *a2)
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

id sub_100029E30(uint64_t a1, uint64_t a2, void *a3)
{
  if (*(a1 + *a3 + 8))
  {

    v3 = String._bridgeToObjectiveC()();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t sub_100029EA8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3)
  {
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  v8 = (a1 + *a4);
  *v8 = v6;
  v8[1] = v7;
}

void sub_10002A024()
{
  v1 = *(v0 + OBJC_IVAR___BYBuddySafetyAndHandlingManager_preferences);
  isa = Bool._bridgeToObjectiveC()().super.super.isa;
  v3 = String._bridgeToObjectiveC()();
  [v1 setObject:isa forKey:v3];

  v4 = Bool._bridgeToObjectiveC()().super.super.isa;
  v5 = String._bridgeToObjectiveC()();
  [v1 setObject:v4 forKey:v5];
}

uint64_t sub_10002A1D0()
{
  v1 = *(v0 + OBJC_IVAR___BYBuddySafetyAndHandlingManager_preferences);
  v2 = String._bridgeToObjectiveC()();
  v3 = [v1 BOOLForKey:v2];

  if (v3)
  {
    return 1;
  }

  v5 = String._bridgeToObjectiveC()();
  v6 = [v1 BOOLForKey:v5];

  if (v6)
  {
    return 0;
  }

  else
  {
    return sub_10002AD44() & 1;
  }
}

id sub_10002A3C8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BuddySafetyAndHandlingManager();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_10002A484()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.purpleBuddyGeneral.getter();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "Presist Safety and Handling state", v8, 2u);
  }

  (*(v3 + 8))(v5, v2);
  v9 = *(v1 + OBJC_IVAR___BYBuddySafetyAndHandlingManager_preferences);
  isa = Array._bridgeToObjectiveC()().super.isa;
  [v9 persistKeys:isa];
}

uint64_t sub_10002A64C()
{
  v2 = 0xD00000000000001ALL;
  v3 = "SafetyAndHandlingCardPresented";

  sub_10002A6EC(&v2, v0);

  v2 = 0xD00000000000001ELL;
  v3 = &qword_100299600;

  sub_10002A6EC(&v2, v0);

  return swift_arrayDestroy();
}

void sub_10002A6EC(uint64_t *a1, uint64_t a2)
{
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  v10 = a1[1];
  v11 = *(a2 + OBJC_IVAR___BYBuddySafetyAndHandlingManager_preferences);
  v12 = String._bridgeToObjectiveC()();
  v13 = [v11 objectForKey:v12 includeCache:0];

  if (v13)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_100015A54(v26);
    static Logger.purpleBuddyGeneral.getter();

    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v27 = v2;
      v17 = v16;
      v18 = swift_slowAlloc();
      v25 = v5;
      *&v26[0] = v18;
      v19 = v18;
      *v17 = 136315138;
      *(v17 + 4) = sub_100063F14(v9, v10, v26);
      _os_log_impl(&_mh_execute_header, v14, v15, "Consuming Safety and Handling state: %s", v17, 0xCu);
      sub_10000A420(v19);

      (*(v6 + 8))(v8, v25);
    }

    else
    {

      (*(v6 + 8))(v8, v5);
    }

    v20 = String._bridgeToObjectiveC()();
    [v11 BOOLForKey:v20];

    v21 = String._bridgeToObjectiveC()();
    [v11 removeObjectForKey:v21 onlyFromMemory:0];

    isa = Bool._bridgeToObjectiveC()().super.super.isa;
    v23 = String._bridgeToObjectiveC()();
    [v11 setObject:isa forKey:v23];
  }

  else
  {
    memset(v26, 0, sizeof(v26));
    sub_100015A54(v26);
  }
}

uint64_t sub_10002AA14()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = __chkstk_darwin(v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = (v6 + 8);
  v23 = OBJC_IVAR___BYBuddySafetyAndHandlingManager_preferences;
  v7 = &off_100327908;
  v8 = 2;
  *&v9 = 136315138;
  v20 = v9;
  v21 = v3;
  do
  {
    v13 = *(v7 - 1);
    v12 = *v7;

    static Logger.purpleBuddyGeneral.getter();

    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = v1;
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v24 = v18;
      *v17 = v20;
      *(v17 + 4) = sub_100063F14(v13, v12, &v24);
      _os_log_impl(&_mh_execute_header, v14, v15, "Reset Safety and Handling state: %s", v17, 0xCu);
      sub_10000A420(v18);

      v1 = v16;
      v2 = v21;
    }

    (*v22)(v5, v2);
    v10 = *(v1 + v23);
    v11 = String._bridgeToObjectiveC()();
    [v10 removeObjectForKey:v11 onlyFromMemory:0];

    v7 += 2;
    --v8;
  }

  while (v8);
  return swift_arrayDestroy();
}

uint64_t sub_10002AD44()
{
  v1 = type metadata accessor for Logger();
  v24 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *&v0[OBJC_IVAR___BYBuddySafetyAndHandlingViewControllerProvider_localizationProvider];
  v5 = [v4 languageCode];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v6 = *&v0[OBJC_IVAR___BYBuddySafetyAndHandlingViewControllerProvider_region];
  v7 = *&v0[OBJC_IVAR___BYBuddySafetyAndHandlingViewControllerProvider_region + 8];
  v8 = static LegalDocumentSafetyAndHandlingView.shouldShow(language:region:)();

  static Logger.purpleBuddyGeneral.getter();
  v9 = v0;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v23 = v1;
    v25 = v22;
    *v12 = 67109634;
    *(v12 + 4) = v8 & 1;
    *(v12 + 8) = 2080;
    v13 = [v4 languageCode];
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v7;
    v16 = v6;
    v17 = v8;
    v19 = v18;

    v20 = sub_100063F14(v14, v19, &v25);
    v8 = v17;

    *(v12 + 10) = v20;
    *(v12 + 18) = 2080;
    *(v12 + 20) = sub_100063F14(v16, v15, &v25);
    _os_log_impl(&_mh_execute_header, v10, v11, "Safety and handling shouldShow: %{BOOL}d, using language: %s, region: %s", v12, 0x1Cu);
    swift_arrayDestroy();

    (*(v24 + 8))(v3, v23);
  }

  else
  {

    (*(v24 + 8))(v3, v1);
  }

  return v8 & 1;
}

id sub_10002B024()
{
  v1 = type metadata accessor for UIHostingControllerSizingOptions();
  __chkstk_darwin(v1 - 8);
  v2 = type metadata accessor for LegalDocumentSafetyAndHandlingView();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v16 - v7;
  v9 = [*(v0 + OBJC_IVAR___BYBuddySafetyAndHandlingViewControllerProvider_localizationProvider) languageCode];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  LegalDocumentSafetyAndHandlingView.init(language:region:)();
  (*(v3 + 16))(v6, v8, v2);
  v10 = objc_allocWithZone(sub_100006410(&qword_1003A1220));
  v11 = UIHostingController.init(rootView:)();
  UIHostingController.safeAreaRegions.setter();
  static UIHostingControllerSizingOptions.intrinsicContentSize.getter();
  dispatch thunk of UIHostingController.sizingOptions.setter();
  type metadata accessor for SafetyAndHandlingViewController();
  type metadata accessor for SafetyAndHandlingViewModel();
  swift_initStackObject();
  v12 = swift_unknownObjectRetain();
  v13 = sub_10002B9E4(v12);
  v14 = sub_10002B268(v13, v11);
  (*(v3 + 8))(v8, v2);
  return v14;
}

id sub_10002B268(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = objc_allocWithZone(v3);

  v7 = String._bridgeToObjectiveC()();
  v8 = [v6 initWithTitle:v7 detailText:0 icon:0];

  v9 = *(a1 + 64);
  v10 = objc_opt_self();
  v11 = v8;
  v12 = [v10 traitCollectionWithLayoutDirection:v9];
  v13 = [objc_opt_self() configurationWithTraitCollection:v12];

  v14 = String._bridgeToObjectiveC()();
  v15 = [objc_opt_self() systemImageNamed:v14 withConfiguration:v13];

  v16 = [objc_allocWithZone(UIImageView) init];
  if (*(a1 + 64))
  {
    v17 = 4;
  }

  else
  {
    v17 = 3;
  }

  v18 = v16;
  [v18 setSemanticContentAttribute:v17];
  [v18 setImage:v15];
  [v18 setContentMode:1];
  v19 = v11;
  v20 = [v19 headerView];

  v21 = String._bridgeToObjectiveC()();

  [v20 setLanguage:v21];

  v22 = [v19 headerView];
  v23 = [v22 customIconContainerView];

  [v23 addSubview:v18];
  [v18 setTranslatesAutoresizingMaskIntoConstraints:0];
  v24 = [v18 superview];

  [v18 pinToEdges:v24];
  v25 = v19;
  [v25 addChildViewController:a2];
  v26 = [v25 contentView];
  result = [a2 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_12;
  }

  v28 = result;
  [v26 addSubview:result];

  [a2 didMoveToParentViewController:v25];
  result = [a2 view];
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v29 = result;
  v53 = v15;
  [result setTranslatesAutoresizingMaskIntoConstraints:0];

  sub_100006410(&qword_1003A1400);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_1002977D0;
  result = [a2 view];
  if (!result)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v31 = result;
  v32 = [result leadingAnchor];

  v33 = [v25 contentView];
  v34 = [v33 leadingAnchor];

  v35 = [v32 constraintEqualToAnchor:v34];
  *(v30 + 32) = v35;
  result = [a2 view];
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v36 = result;
  v37 = [result trailingAnchor];

  v38 = [v25 contentView];
  v39 = [v38 trailingAnchor];

  v40 = [v37 constraintEqualToAnchor:v39];
  *(v30 + 40) = v40;
  result = [a2 view];
  if (!result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v41 = result;
  v42 = [result topAnchor];

  v43 = [v25 contentView];
  v44 = [v43 topAnchor];

  v45 = [v42 constraintEqualToAnchor:v44];
  *(v30 + 48) = v45;
  result = [a2 view];
  if (result)
  {
    v46 = result;

    v47 = objc_opt_self();
    v48 = [v46 bottomAnchor];

    v49 = [v25 contentView];
    v50 = [v49 bottomAnchor];

    v51 = [v48 constraintEqualToAnchor:v50];
    *(v30 + 56) = v51;
    sub_10002BE84();
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v47 activateConstraints:isa];

    return v25;
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_10002B9E4(void *a1)
{
  v3 = [a1 languageCode];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  *(v1 + 16) = v4;
  *(v1 + 24) = v6;
  v7 = String._bridgeToObjectiveC()();
  v8 = [a1 localizedStringForKey:v7];

  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  *(v1 + 32) = v9;
  *(v1 + 40) = v11;
  v12 = [objc_opt_self() iconName];
  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  *(v1 + 48) = v13;
  *(v1 + 56) = v15;
  v16 = [a1 languageCode];
  if (!v16)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = String._bridgeToObjectiveC()();
  }

  v17 = [objc_opt_self() defaultWritingDirectionForLanguage:v16];

  swift_unknownObjectRelease();
  *(v1 + 64) = v17 == 1;
  return v1;
}

uint64_t sub_10002BB44()
{

  return swift_deallocClassInstance();
}

id sub_10002BBB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = String._bridgeToObjectiveC()();

  if (!a4)
  {
    v12 = 0;
    if (a6)
    {
      goto LABEL_3;
    }

LABEL_5:
    v13 = 0;
    goto LABEL_6;
  }

  v12 = String._bridgeToObjectiveC()();

  if (!a6)
  {
    goto LABEL_5;
  }

LABEL_3:
  v13 = String._bridgeToObjectiveC()();

LABEL_6:
  v16.receiver = v7;
  v16.super_class = type metadata accessor for SafetyAndHandlingViewController();
  v14 = objc_msgSendSuper2(&v16, "initWithTitle:detailText:symbolName:contentLayout:", v11, v12, v13, a7);

  return v14;
}

id sub_10002BE28(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, "dealloc");
}

unint64_t sub_10002BE84()
{
  result = qword_1003A0BF0;
  if (!qword_1003A0BF0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1003A0BF0);
  }

  return result;
}

id sub_10002BF04()
{
  v0 = type metadata accessor for Logger();
  v51 = *(v0 - 8);
  v52 = v0;
  v1 = __chkstk_darwin(v0);
  v47 = &v43 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __chkstk_darwin(v1);
  v46 = &v43 - v4;
  v5 = __chkstk_darwin(v3);
  v44 = &v43 - v6;
  __chkstk_darwin(v5);
  v45 = &v43 - v7;
  v8 = type metadata accessor for Date();
  v49 = *(v8 - 8);
  v50 = v8;
  __chkstk_darwin(v8);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Calendar.Component();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Calendar();
  v48 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = objc_opt_self();
  v19 = [v18 sharedInstance];
  v20 = [v19 primaryAuthKitAccount];

  if (v20)
  {
    v21 = [v18 sharedInstance];
    v22 = [v21 birthYearForAccount:v20];

    v23 = v20;
    if (v22)
    {
      static Calendar.current.getter();
      (*(v12 + 104))(v14, enum case for Calendar.Component.year(_:), v11);
      static Date.now.getter();
      v24 = Calendar.component(_:from:)();
      (*(v49 + 8))(v10, v50);
      (*(v12 + 8))(v14, v11);
      (*(v48 + 8))(v17, v15);
      if (v24 < [v22 integerValue])
      {
        v25 = v44;
        static Logger.purpleBuddyGeneral.getter();
        v26 = Logger.logObject.getter();
        v27 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v26, v27))
        {
          v28 = swift_slowAlloc();
          *v28 = 0;
          _os_log_impl(&_mh_execute_header, v26, v27, "Account age provider encountered current year before birth year", v28, 2u);
        }

        else
        {
        }

        (*(v51 + 8))(v25, v52);
        return 0;
      }

      v36 = v45;
      static Logger.purpleBuddyGeneral.getter();
      v37 = v22;
      v38 = Logger.logObject.getter();
      v39 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        *v40 = 134218496;
        *(v40 + 4) = v24;
        *(v40 + 12) = 2048;
        *(v40 + 14) = [v37 integerValue];
        *(v40 + 22) = 2048;
        result = [v37 integerValue];
        if (__OFSUB__(v24, result))
        {
LABEL_24:
          __break(1u);
          return result;
        }

        *(v40 + 24) = v24 - result;

        _os_log_impl(&_mh_execute_header, v38, v39, "Account age provider returning %ld - %ld = %ld", v40, 0x20u);
      }

      else
      {

        v38 = v37;
      }

      (*(v51 + 8))(v36, v52);
      result = [v37 integerValue];
      if (!__OFSUB__(v24, result))
      {
        v42 = [objc_allocWithZone(NSNumber) initWithInteger:v24 - result];

        return v42;
      }

      __break(1u);
      goto LABEL_24;
    }

    v29 = v46;
    static Logger.purpleBuddyGeneral.getter();
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&_mh_execute_header, v33, v34, "Account age provider found no birth year", v35, 2u);
    }
  }

  else
  {
    v29 = v47;
    static Logger.purpleBuddyGeneral.getter();
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&_mh_execute_header, v30, v31, "Account age provider found no primary account", v32, 2u);
    }
  }

  (*(v51 + 8))(v29, v52);
  return 0;
}

void sub_10002C5C8()
{
  *&v0[OBJC_IVAR____TtC5Setup27BuddyLockdownModeController_runState] = 0;
  *&v0[OBJC_IVAR____TtC5Setup27BuddyLockdownModeController_lockdownModeProvider] = 0;
  *&v0[OBJC_IVAR____TtC5Setup27BuddyLockdownModeController_setupMethod] = 0;
  v1 = objc_opt_self();
  v2 = [v1 mainBundle];
  v18._object = 0xE000000000000000;
  v3._countAndFlagsBits = 0xD000000000000013;
  v3._object = 0x800000010029C0C0;
  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  v18._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v3, 0, v2, v4, v18);

  v5 = objc_opt_self();
  v6 = String._bridgeToObjectiveC()();
  v7 = [v5 modelSpecificLocalizedStringKeyForKey:v6];

  if (v7)
  {
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;

    v11 = [v1 mainBundle];
    v19._object = 0xE000000000000000;
    v12._countAndFlagsBits = v8;
    v12._object = v10;
    v13._countAndFlagsBits = 0;
    v13._object = 0xE000000000000000;
    v19._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v12, 0, v11, v13, v19);

    v14 = String._bridgeToObjectiveC()();

    v15 = String._bridgeToObjectiveC()();

    v16 = String._bridgeToObjectiveC()();
    v17.receiver = v0;
    v17.super_class = type metadata accessor for BuddyLockdownModeController();
    objc_msgSendSuper2(&v17, "initWithTitle:detailText:symbolName:contentLayout:", v14, v15, v16, 2);
  }

  else
  {
    __break(1u);
  }
}

void sub_10002C814()
{
  v1 = 0xD00000000000001CLL;
  v15.receiver = v0;
  v15.super_class = type metadata accessor for BuddyLockdownModeController();
  objc_msgSendSuper2(&v15, "viewDidLoad");
  v2 = *&v0[OBJC_IVAR____TtC5Setup27BuddyLockdownModeController_setupMethod];
  v3 = "ownModeController";
  if (v2)
  {
    v4 = v2;
    v5 = [v4 dataTransferMethod];
    if ((v5 - 1) >= 2)
    {
      if (v5)
      {
        v6 = v5 == 3;
      }

      else
      {
        v6 = 1;
      }

      if (!v6)
      {
        type metadata accessor for BuddyDataTransferMethod(0);
        _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
        __break(1u);
        return;
      }
    }

    else
    {
      v3 = "SET_UP_LATER_IN_SETTINGS";
      v1 = 0xD00000000000001FLL;
    }
  }

  v7 = [objc_opt_self() mainBundle];
  v16._object = 0xE000000000000000;
  v8._object = (v3 | 0x8000000000000000);
  v8._countAndFlagsBits = v1;
  v9._countAndFlagsBits = 0;
  v9._object = 0xE000000000000000;
  v16._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v8, 0, v7, v9, v16);

  v10 = String._bridgeToObjectiveC()();

  [v0 addBoldButton:v10 action:"enableTappedAndReturnError:"];

  v11 = [objc_opt_self() mainBundle];
  v12._countAndFlagsBits = 0xD000000000000018;
  v17._object = 0xE000000000000000;
  v12._object = 0x800000010029C080;
  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  v17._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v12, 0, v11, v13, v17);

  v14 = String._bridgeToObjectiveC()();

  [v0 addLinkButton:v14 action:"setUpLaterTapped"];
}

id sub_10002CA70()
{
  v1 = sub_100006410(&qword_1003A0110);
  __chkstk_darwin(v1 - 8);
  v3 = &v13 - v2;
  result = [v0 delegate];
  if (result)
  {
    v5 = *&v0[OBJC_IVAR____TtC5Setup27BuddyLockdownModeController_lockdownModeProvider];
    if (v5)
    {
      v6 = result;
      swift_getObjectType();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      swift_unknownObjectRetain();
      v8 = NSStringFromClass(ObjCClassFromMetadata);
      if (!v8)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v8 = String._bridgeToObjectiveC()();
      }

      [objc_opt_self() startAnimatingSpinnerFor:v0 identifier:v8];

      v9 = type metadata accessor for TaskPriority();
      (*(*(v9 - 8) + 56))(v3, 1, 1, v9);
      type metadata accessor for MainActor();
      swift_unknownObjectRetain();
      v10 = v0;
      swift_unknownObjectRetain();
      v11 = static MainActor.shared.getter();
      v12 = swift_allocObject();
      v12[2] = v11;
      v12[3] = &protocol witness table for MainActor;
      v12[4] = v5;
      v12[5] = v10;
      v12[6] = v6;
      sub_100047968(0, 0, v3, &unk_100298400, v12);

      swift_unknownObjectRelease();
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_10002CC6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[19] = a5;
  v6[20] = a6;
  v6[18] = a4;
  sub_100006410(&qword_1003A0110);
  v6[21] = swift_task_alloc();
  v6[22] = type metadata accessor for MainActor();
  v6[23] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v6[24] = v8;
  v6[25] = v7;

  return _swift_task_switch(sub_10002CD44, v8, v7);
}

uint64_t sub_10002CD44()
{
  v1 = v0[18];
  v0[2] = v0;
  v0[3] = sub_10002CE5C;
  v2 = swift_continuation_init();
  v0[17] = sub_100006410(&qword_1003A1C70);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_100044C24;
  v0[13] = &unk_1003293E8;
  v0[14] = v2;
  [v1 enableWithStrategy:2 completionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10002CE5C()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 208) = v2;
  v3 = *(v1 + 200);
  v4 = *(v1 + 192);
  if (v2)
  {
    v5 = sub_10002D0B0;
  }

  else
  {
    v5 = sub_10002CF8C;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_10002CF8C()
{
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[19];

  v4 = type metadata accessor for TaskPriority();
  (*(*(v4 - 8) + 56))(v1, 1, 1, v4);
  v5 = v3;
  swift_unknownObjectRetain();
  v6 = static MainActor.shared.getter();
  v7 = swift_allocObject();
  v7[2] = v6;
  v7[3] = &protocol witness table for MainActor;
  v7[4] = v5;
  v7[5] = v2;
  sub_100022A78(0, 0, v1, &unk_100298410, v7);

  v8 = v0[1];

  return v8();
}

uint64_t sub_10002D0B0()
{

  swift_willThrow();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10002D130(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  type metadata accessor for MainActor();
  v5[4] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10002D1C8, v7, v6);
}

uint64_t sub_10002D1C8()
{

  swift_getObjectType();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = NSStringFromClass(ObjCClassFromMetadata);
  if (!v2)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v2 = String._bridgeToObjectiveC()();
  }

  v4 = v0[2];
  v3 = v0[3];
  [objc_opt_self() stopAnimatingSpinnerFor:v2];

  [v3 flowItemDone:v4];
  v5 = v0[1];

  return v5();
}

id sub_10002D2E4()
{
  v1 = sub_100006410(&qword_1003A0110);
  __chkstk_darwin(v1 - 8);
  v3 = &v13 - v2;
  result = [v0 delegate];
  if (result)
  {
    v5 = *&v0[OBJC_IVAR____TtC5Setup27BuddyLockdownModeController_lockdownModeProvider];
    if (v5)
    {
      v6 = result;
      swift_getObjectType();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      swift_unknownObjectRetain();
      v8 = NSStringFromClass(ObjCClassFromMetadata);
      if (!v8)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v8 = String._bridgeToObjectiveC()();
      }

      [objc_opt_self() startAnimatingSpinnerFor:v0 identifier:v8];

      v9 = type metadata accessor for TaskPriority();
      (*(*(v9 - 8) + 56))(v3, 1, 1, v9);
      type metadata accessor for MainActor();
      swift_unknownObjectRetain();
      v10 = v0;
      swift_unknownObjectRetain();
      v11 = static MainActor.shared.getter();
      v12 = swift_allocObject();
      v12[2] = v11;
      v12[3] = &protocol witness table for MainActor;
      v12[4] = v5;
      v12[5] = v10;
      v12[6] = v6;
      sub_100047968(0, 0, v3, &unk_1002983D8, v12);

      swift_unknownObjectRelease();
      return swift_unknownObjectRelease();
    }

    else
    {

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_10002D4F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[19] = a5;
  v6[20] = a6;
  v6[18] = a4;
  sub_100006410(&qword_1003A0110);
  v6[21] = swift_task_alloc();
  v6[22] = type metadata accessor for MainActor();
  v6[23] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v6[24] = v8;
  v6[25] = v7;

  return _swift_task_switch(sub_10002D5D0, v8, v7);
}

uint64_t sub_10002D5D0()
{
  v1 = v0[18];
  v0[2] = v0;
  v0[3] = sub_10002D6E4;
  v2 = swift_continuation_init();
  v0[17] = sub_100006410(&qword_1003A1C70);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_100044C24;
  v0[13] = &unk_100329370;
  v0[14] = v2;
  [v1 acknowledgeWithCompletionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10002D6E4()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 208) = v2;
  v3 = *(v1 + 200);
  v4 = *(v1 + 192);
  if (v2)
  {
    v5 = sub_10002E3A8;
  }

  else
  {
    v5 = sub_10002D814;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_10002D814()
{
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[19];

  v4 = type metadata accessor for TaskPriority();
  (*(*(v4 - 8) + 56))(v1, 1, 1, v4);
  v5 = v3;
  swift_unknownObjectRetain();
  v6 = static MainActor.shared.getter();
  v7 = swift_allocObject();
  v7[2] = v6;
  v7[3] = &protocol witness table for MainActor;
  v7[4] = v5;
  v7[5] = v2;
  sub_100022A78(0, 0, v1, &unk_1002983F0, v7);

  v8 = v0[1];

  return v8();
}

uint64_t sub_10002D938(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  type metadata accessor for MainActor();
  v5[4] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10002E3B0, v7, v6);
}

uint64_t sub_10002DA98(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  *(a1 + *a4) = a3;
  swift_unknownObjectRetain();

  return swift_unknownObjectRelease();
}

uint64_t sub_10002DB90()
{
  v1 = *(v0 + OBJC_IVAR____TtC5Setup27BuddyLockdownModeController_runState);
  if (!v1)
  {
    return 0;
  }

  v2 = *(v0 + OBJC_IVAR____TtC5Setup27BuddyLockdownModeController_lockdownModeProvider);
  if (!v2)
  {
    return 0;
  }

  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  if ([v1 hasCompletedInitialRun])
  {
    v3 = 0;
LABEL_12:
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    return v3;
  }

  v3 = [v2 deviceState];
  v4 = [v2 accountState];
  sub_100006410(&unk_1003A14E0);
  if (!v3)
  {
    goto LABEL_12;
  }

  if (v3 == 1)
  {
    if (v4 == 1)
    {
      v3 = 0;
      goto LABEL_12;
    }

    if (!v4)
    {
      v3 = 1;
      goto LABEL_12;
    }
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

id sub_10002DD30()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BuddyLockdownModeController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10002DDE8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10002E3AC;

  return sub_10002D4F8(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_10002DECC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10002E3A4;

  return sub_10002D938(a1, v4, v5, v7, v6);
}

uint64_t sub_10002DF8C()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10002DFDC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10002E0A4;

  return sub_10002CC6C(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_10002E0A4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10002E198()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10002E1E0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10002E2A0;

  return sub_10002D130(a1, v4, v5, v7, v6);
}

uint64_t sub_10002E2A0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10002E3B4(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_10002E3F8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t sub_10002E46C(char a1, uint64_t a2, char a3)
{
  if (!a3)
  {
    _StringGuts.grow(_:)(25);
    v9._countAndFlagsBits = 0xD000000000000017;
    v9._object = 0x800000010029C710;
    String.append(_:)(v9);
    Double.write<A>(to:)();
    return 0;
  }

  if (a3 == 1)
  {
    _StringGuts.grow(_:)(31);
    v4._object = 0x800000010029C6F0;
    v4._countAndFlagsBits = 0xD000000000000012;
    String.append(_:)(v4);
    Double.write<A>(to:)();
    v5._countAndFlagsBits = 0x676E69766F6D202CLL;
    v5._object = 0xE900000000000020;
    String.append(_:)(v5);
    if (a1)
    {
      v6 = 0x64726177726F66;
    }

    else
    {
      v6 = 0x647261776B636162;
    }

    if (a1)
    {
      v7 = 0xE700000000000000;
    }

    else
    {
      v7 = 0xE900000000000073;
    }

    v8 = v7;
    String.append(_:)(*&v6);

    return 0;
  }

  return 1701736302;
}

id sub_10002E60C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[OBJC_IVAR____TtC5Setup25NewFeaturesViewController_isAnimating] = 0;
  v4 = &v3[OBJC_IVAR____TtC5Setup25NewFeaturesViewController_embeddedController];
  *v4 = 0;
  v4[1] = 0;
  *&v3[OBJC_IVAR____TtC5Setup25NewFeaturesViewController_pageControl] = 0;
  *&v3[OBJC_IVAR____TtC5Setup25NewFeaturesViewController_pageControlProgress] = 0;
  *&v3[OBJC_IVAR____TtC5Setup25NewFeaturesViewController_skipButton] = 0;
  *&v3[OBJC_IVAR____TtC5Setup25NewFeaturesViewController_cancellables] = &_swiftEmptySetSingleton;
  *&v3[OBJC_IVAR____TtC5Setup25NewFeaturesViewController_panGestureRecognizer] = 0;
  *&v3[OBJC_IVAR____TtC5Setup25NewFeaturesViewController_applicationDidBecomeActiveObservationToken] = 0;
  *&v3[OBJC_IVAR____TtC5Setup25NewFeaturesViewController_applicationDidEnterBackgroundObservationToken] = 0;
  *&v3[OBJC_IVAR____TtC5Setup25NewFeaturesViewController_viewModel] = a1;
  v5 = &v3[OBJC_IVAR____TtC5Setup25NewFeaturesViewController_completion];
  *v5 = a2;
  v5[1] = a3;
  v7.receiver = v3;
  v7.super_class = type metadata accessor for NewFeaturesViewController();
  return objc_msgSendSuper2(&v7, "initWithNibName:bundle:", 0, 0);
}

void sub_10002E710()
{
  v1 = sub_100006410(&qword_1003A17B8);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v132 - v3;
  v5 = sub_100006410(&qword_1003A17C0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v132 - v7;
  v9 = sub_100006410(&qword_1003A17C8);
  v147 = *(v9 - 8);
  v148 = v9;
  __chkstk_darwin(v9);
  v146 = &v132 - v10;
  v145 = sub_100006410(&unk_1003A17D0);
  v144 = *(v145 - 8);
  __chkstk_darwin(v145);
  v143 = &v132 - v11;
  v12 = sub_100006410(&qword_1003A1F60);
  __chkstk_darwin(v12 - 8);
  v149 = &v132 - v13;
  v142 = sub_100006410(&unk_1003A17E0);
  v141 = *(v142 - 8);
  __chkstk_darwin(v142);
  v140 = &v132 - v14;
  v15 = type metadata accessor for NewFeaturesViewController();
  v163.receiver = v0;
  v163.super_class = v15;
  objc_msgSendSuper2(&v163, "viewDidLoad");
  [v0 setOverrideUserInterfaceStyle:2];
  v16 = [v0 view];
  if (!v16)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v17 = v16;
  v135 = v4;
  v136 = v2;
  v137 = v1;
  v138 = v8;
  v139 = v6;
  v18 = [objc_opt_self() blackColor];
  [v17 setBackgroundColor:v18];

  v162 = v15;
  v161[0] = v0;
  v19 = v0;
  v20 = String._bridgeToObjectiveC()();
  v21 = v162;
  if (v162)
  {
    v22 = sub_1000171F4(v161, v162);
    v23 = *(v21 - 8);
    __chkstk_darwin(v22);
    v25 = &v132 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v23 + 16))(v25);
    v26 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v23 + 8))(v25, v21);
    sub_10000A420(v161);
  }

  else
  {
    v26 = 0;
  }

  v27 = [objc_allocWithZone(UIBarButtonItem) initWithTitle:v20 style:0 target:v26 action:"backButtonTappedWithSender:"];

  swift_unknownObjectRelease();
  [v27 _setShowsBackButtonIndicator:1];
  v28 = [v19 navigationItem];
  v134 = v27;
  [v28 setLeftBarButtonItem:v27];

  v157 = objc_opt_self();
  v29 = [v157 mainBundle];
  v164._object = 0xE000000000000000;
  v30._object = 0x800000010029C680;
  v30._countAndFlagsBits = 0xD000000000000017;
  v31._countAndFlagsBits = 0;
  v31._object = 0xE000000000000000;
  v164._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v30, 0, v29, v31, v164);

  v162 = v15;
  v161[0] = v19;
  v32 = v19;
  v33 = String._bridgeToObjectiveC()();

  v34 = v162;
  if (v162)
  {
    v35 = sub_1000171F4(v161, v162);
    v36 = *(v34 - 8);
    __chkstk_darwin(v35);
    v38 = &v132 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v36 + 16))(v38);
    v39 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v36 + 8))(v38, v34);
    sub_10000A420(v161);
  }

  else
  {
    v39 = 0;
  }

  v40 = [objc_allocWithZone(UIBarButtonItem) initWithTitle:v33 style:0 target:v39 action:"skipButtonTappedWithSender:"];

  swift_unknownObjectRelease();
  v41 = *&v32[OBJC_IVAR____TtC5Setup25NewFeaturesViewController_skipButton];
  *&v32[OBJC_IVAR____TtC5Setup25NewFeaturesViewController_skipButton] = v40;

  v42 = [objc_allocWithZone(UIPageControl) init];
  v43 = OBJC_IVAR____TtC5Setup25NewFeaturesViewController_pageControl;
  v44 = *&v32[OBJC_IVAR____TtC5Setup25NewFeaturesViewController_pageControl];
  *&v32[OBJC_IVAR____TtC5Setup25NewFeaturesViewController_pageControl] = v42;
  v45 = v42;

  if (!v45)
  {
    goto LABEL_29;
  }

  [v45 setAllowsContinuousInteraction:0];

  v46 = *&v32[v43];
  if (!v46)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  [v46 addTarget:v32 action:"pageControlValueDidChangeWithSender:" forControlEvents:4096];
  v47 = [objc_allocWithZone(UIPageControlTimerProgress) initWithPreferredDuration:1.0];
  v48 = OBJC_IVAR____TtC5Setup25NewFeaturesViewController_pageControlProgress;
  v49 = *&v32[OBJC_IVAR____TtC5Setup25NewFeaturesViewController_pageControlProgress];
  *&v32[OBJC_IVAR____TtC5Setup25NewFeaturesViewController_pageControlProgress] = v47;
  v50 = v47;

  if (!v50)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  [v50 setDelegate:v32];

  v51 = *&v32[v43];
  if (!v51)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  [v51 setProgress:*&v32[v48]];
  v52 = *&v32[v43];
  if (!v52)
  {
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v53 = *&v32[OBJC_IVAR____TtC5Setup25NewFeaturesViewController_viewModel];
  v54 = v53[8];
  if (v54 >> 62)
  {
    v131 = *&v32[v43];
    v55 = _CocoaArrayWrapper.endIndex.getter();
    v52 = v131;
  }

  else
  {
    v55 = *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  [v52 setNumberOfPages:v55];

  v56 = dispatch thunk of NewFeaturesHandler.player.getter();

  [v56 setUserInteractionEnabled:0];

  v57 = [objc_opt_self() currentDevice];
  v58 = [v57 userInterfaceIdiom];

  if (v58 == 1)
  {
    v59 = objc_allocWithZone(type metadata accessor for iPadNewFeaturesViewController());
    v60 = sub_100034F4C();
    v61 = &off_1003294C8;
  }

  else
  {
    type metadata accessor for iPhoneNewFeaturesViewController();
    v60 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v61 = &off_100329508;
  }

  v62 = &v32[OBJC_IVAR____TtC5Setup25NewFeaturesViewController_embeddedController];
  v63 = *&v32[OBJC_IVAR____TtC5Setup25NewFeaturesViewController_embeddedController];
  *v62 = v60;
  *(v62 + 1) = v61;
  v64 = v60;

  ObjectType = swift_getObjectType();
  v66 = v64;

  v67 = dispatch thunk of NewFeaturesHandler.player.getter();

  (v61[2])(v67);

  (v61[1])(v32, &off_100329548);
  v68 = *&v32[v43];
  if (!v68)
  {
    goto LABEL_34;
  }

  v69 = v61[3];
  v70 = v68;
  v69(v70);

  v71 = v66;
  [v32 addChildViewController:v71];
  v72 = [v71 view];

  v73 = [v32 view];
  if (!v73)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v74 = v73;
  v75 = [v71 view];
  if (!v75)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v76 = v75;
  v156 = ObjectType;
  [v74 addSubview:v75];

  [v72 setTranslatesAutoresizingMaskIntoConstraints:0];
  sub_100006410(&qword_1003A1400);
  v77 = swift_allocObject();
  *(v77 + 16) = xmmword_1002977D0;
  if (!v72)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v78 = v77;
  v154 = v71;
  v79 = [v72 topAnchor];
  v80 = [v32 view];
  v159 = v72;
  if (!v80)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v81 = v80;
  v82 = [v80 topAnchor];

  v83 = [v79 constraintEqualToAnchor:v82];
  v78[4] = v83;
  v84 = [v159 bottomAnchor];
  v85 = [v32 view];
  if (!v85)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v86 = v85;
  v133 = v5;
  v87 = [v85 bottomAnchor];

  v88 = [v84 constraintEqualToAnchor:v87];
  v78[5] = v88;
  v89 = [v159 leadingAnchor];
  v90 = [v32 view];
  if (!v90)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v91 = v90;
  v158 = v53;
  v92 = [v90 leadingAnchor];

  v93 = [v89 constraintEqualToAnchor:v92];
  v78[6] = v93;
  v94 = [v159 trailingAnchor];
  v95 = [v32 view];
  if (v95)
  {
    v96 = v95;
    v97 = objc_opt_self();
    v98 = [v96 trailingAnchor];

    v99 = [v94 constraintEqualToAnchor:v98];
    v78[7] = v99;
    sub_10003ABF0(0, &qword_1003A0BF0);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v97 activateConstraints:isa];

    v101 = v154;
    [v154 didMoveToParentViewController:v32];
    v102 = [v157 mainBundle];
    v165._object = 0xE000000000000000;
    v103._countAndFlagsBits = 0xD00000000000001BLL;
    v103._object = 0x800000010029C6A0;
    v104._countAndFlagsBits = 0;
    v104._object = 0xE000000000000000;
    v165._countAndFlagsBits = 0;
    v105 = NSLocalizedString(_:tableName:bundle:value:comment:)(v103, 0, v102, v104, v165);

    (v61[6])(v105._countAndFlagsBits, v105._object, v156, v61);

    v161[0] = v158[5];
    v106 = sub_10003ABF0(0, &qword_1003A0430);

    v107 = static OS_dispatch_queue.main.getter();
    v160 = v107;
    v156 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
    v108 = *(v156 - 8);
    v157 = *(v108 + 56);
    v155 = v108 + 56;
    v109 = v149;
    (v157)(v149, 1, 1, v156);
    sub_100006410(&qword_1003A17F0);
    v151 = &protocol conformance descriptor for PassthroughSubject<A, B>;
    sub_10003ADFC(&qword_1003A17F8, &qword_1003A17F0);
    v153 = sub_10003AC38();
    v110 = v140;
    Publisher.receive<A>(on:options:)();
    sub_10003ACA0(v109, &qword_1003A1F60);

    v111 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v112 = swift_allocObject();
    *(v112 + 16) = sub_10003AD00;
    *(v112 + 24) = v111;
    v152 = &protocol conformance descriptor for Publishers.ReceiveOn<A, B>;
    sub_10003ADFC(&qword_1003A1808, &unk_1003A17E0);
    v113 = v142;
    Publisher<>.sink(receiveValue:)();

    (*(v141 + 8))(v110, v113);
    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();

    v161[0] = v158[4];

    v150 = v106;
    v114 = static OS_dispatch_queue.main.getter();
    v160 = v114;
    (v157)(v109, 1, 1, v156);
    sub_100006410(&qword_1003A1810);
    sub_10003ADFC(&qword_1003A1818, &qword_1003A1810);
    v115 = v143;
    Publisher.receive<A>(on:options:)();
    sub_10003ACA0(v109, &qword_1003A1F60);

    v116 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v117 = swift_allocObject();
    *(v117 + 16) = sub_10003AD74;
    *(v117 + 24) = v116;
    sub_10003ADFC(&unk_1003A1820, &unk_1003A17D0);
    v118 = v145;
    Publisher<>.sink(receiveValue:)();

    (*(v144 + 8))(v115, v118);
    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();

    v119 = v158;
    v161[0] = v158[3];
    swift_allocObject();
    swift_unknownObjectWeakInit();

    sub_100006410(&qword_1003A10F0);
    sub_10003ADFC(&unk_1003A1830, &qword_1003A10F0);
    Publisher<>.sink(receiveValue:)();

    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();

    v161[0] = v119[6];

    v120 = static OS_dispatch_queue.main.getter();
    v160 = v120;
    (v157)(v109, 1, 1, v156);
    sub_100006410(&qword_1003A10F8);
    sub_10003ADFC(&qword_1003A1840, &qword_1003A10F8);
    v121 = v146;
    Publisher.receive<A>(on:options:)();
    sub_10003ACA0(v109, &qword_1003A1F60);

    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_10003ADFC(&qword_1003A1848, &qword_1003A17C8);
    v122 = v148;
    Publisher<>.sink(receiveValue:)();

    (*(v147 + 8))(v121, v122);
    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();

    v123 = v158[6];
    v160 = v158[7];
    v161[0] = v123;
    v124 = v135;
    Publisher.combineLatest<A>(_:)();
    v125 = static OS_dispatch_queue.main.getter();
    v161[0] = v125;
    (v157)(v109, 1, 1, v156);
    sub_10003ADFC(&qword_1003A1850, &qword_1003A17B8);
    v126 = v138;
    v127 = v137;
    Publisher.receive<A>(on:options:)();
    sub_10003ACA0(v109, &qword_1003A1F60);

    (*(v136 + 8))(v124, v127);
    v128 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v129 = swift_allocObject();
    *(v129 + 16) = sub_10003ADC0;
    *(v129 + 24) = v128;
    sub_10003ADFC(&qword_1003A1858, &qword_1003A17C0);
    v130 = v133;
    Publisher<>.sink(receiveValue:)();

    (*(v139 + 8))(v126, v130);
    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();

    return;
  }

LABEL_41:
  __break(1u);
}

void sub_10002FDF0(uint64_t a1, double a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = *(Strong + OBJC_IVAR____TtC5Setup25NewFeaturesViewController_pageControl);
    if (v6)
    {
      [v6 setCurrentPage:a1];
      v7 = OBJC_IVAR____TtC5Setup25NewFeaturesViewController_pageControlProgress;
      v8 = *&v5[OBJC_IVAR____TtC5Setup25NewFeaturesViewController_pageControlProgress];
      if (v8)
      {
        [v8 pauseTimer];
        v9 = *&v5[v7];
        if (v9)
        {
          [v9 setCurrentProgress:0.0];
          v10 = *&v5[v7];
          if (v10)
          {
            [v10 setDuration:a1 forPage:a2];
            v11 = *&v5[v7];
            if (v11)
            {
              [v11 setPreferredDuration:a2];
              v12 = *&v5[v7];
              if (v12)
              {
                [v12 resumeTimer];

                return;
              }

LABEL_15:
              __break(1u);
              return;
            }

LABEL_14:
            __break(1u);
            goto LABEL_15;
          }

LABEL_13:
          __break(1u);
          goto LABEL_14;
        }

LABEL_12:
        __break(1u);
        goto LABEL_13;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_12;
  }
}

void sub_10002FF0C(char a1, double a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = *(Strong + OBJC_IVAR____TtC5Setup25NewFeaturesViewController_pageControl);
    if (v6)
    {
      v7 = a1 & 1;
      [v6 setUserInteractionEnabled:v7];
      v8 = objc_opt_self();
      v9 = swift_allocObject();
      *(v9 + 16) = v5;
      *(v9 + 24) = v7;
      aBlock[4] = sub_10003B120;
      aBlock[5] = v9;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10002E3B4;
      aBlock[3] = &unk_100329A88;
      v10 = _Block_copy(aBlock);
      v11 = v5;

      [v8 animateWithDuration:v10 animations:a2];
      _Block_release(v10);
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_100030060(uint64_t a1, char a2)
{

  v4 = dispatch thunk of NewFeaturesHandler.player.getter();

  v3 = 0.0;
  if (a2)
  {
    v3 = 1.0;
  }

  [v4 setAlpha:v3];
}

void sub_1000300E4(__int128 *a1)
{
  v2 = sub_100006410(&qword_1003A0110);
  __chkstk_darwin(v2 - 8);
  v4 = &v17[-v3 - 8];
  v5 = a1[1];
  v18 = *a1;
  v19 = v5;
  v20[0] = a1[2];
  *(v20 + 9) = *(a1 + 41);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = *(Strong + OBJC_IVAR____TtC5Setup25NewFeaturesViewController_embeddedController);
    if (v8)
    {
      v9 = *(Strong + OBJC_IVAR____TtC5Setup25NewFeaturesViewController_embeddedController + 8);
      v10 = type metadata accessor for TaskPriority();
      (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
      type metadata accessor for MainActor();
      v11 = v8;
      v12 = v7;
      sub_10003AE44(&v18, v17);
      v13 = static MainActor.shared.getter();
      v14 = swift_allocObject();
      v15 = v19;
      *(v14 + 56) = v18;
      *(v14 + 16) = v13;
      *(v14 + 24) = &protocol witness table for MainActor;
      *(v14 + 32) = v12;
      *(v14 + 40) = v11;
      *(v14 + 48) = v9;
      *(v14 + 72) = v15;
      *(v14 + 88) = v20[0];
      *(v14 + 97) = *(v20 + 9);
      sub_100022A78(0, 0, v4, &unk_1002987C8, v14);

      v7 = v11;
    }
  }
}

uint64_t sub_1000302C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 32) = a6;
  *(v7 + 40) = a7;
  *(v7 + 16) = a4;
  *(v7 + 24) = a5;
  v8 = *(a7 + 24);
  *(v7 + 48) = *(a7 + 8);
  *(v7 + 64) = v8;
  *(v7 + 80) = *(a7 + 40);
  *(v7 + 152) = *(a7 + 56);
  sub_100006410(&qword_1003A0110);
  *(v7 + 96) = swift_task_alloc();
  *(v7 + 104) = type metadata accessor for MainActor();
  *(v7 + 112) = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v7 + 120) = v10;
  *(v7 + 128) = v9;

  return _swift_task_switch(sub_1000303BC, v10, v9);
}

void *sub_1000303BC()
{
  v1 = v0[2];
  v2 = OBJC_IVAR____TtC5Setup25NewFeaturesViewController_pageControl;
  v0[17] = OBJC_IVAR____TtC5Setup25NewFeaturesViewController_pageControl;
  result = *(v1 + v2);
  if (result)
  {
    [result setUserInteractionEnabled:0];
    v6 = v0[4];
    swift_getObjectType();
    v5 = *(v6 + 40) + **(v6 + 40);
    v4 = swift_task_alloc();
    v0[18] = v4;
    *v4 = v0;
    v4[1] = sub_100030594;

    __asm { BRAA            X8, X16 }
  }

  __break(1u);
  return result;
}

uint64_t sub_100030594()
{
  v1 = *v0;

  v2 = *(v1 + 128);
  v3 = *(v1 + 120);

  return _swift_task_switch(sub_1000306B4, v3, v2);
}

void sub_1000306B4()
{
  v1 = v0[2];
  v2 = *(v1 + v0[17]);
  if (v2)
  {
    v3 = v0[12];
    v4 = v2;

    [v4 setUserInteractionEnabled:1];

    v5 = *(v1 + OBJC_IVAR____TtC5Setup25NewFeaturesViewController_viewModel);
    v6 = type metadata accessor for TaskPriority();
    (*(*(v6 - 8) + 56))(v3, 1, 1, v6);

    v7 = static MainActor.shared.getter();
    v8 = swift_allocObject();
    v8[2] = v7;
    v8[3] = &protocol witness table for MainActor;
    v8[4] = v5;
    sub_100022A78(0, 0, v3, &unk_1002987D0, v8);

    v9 = v0[1];

    v9();
  }

  else
  {
    __break(1u);
  }
}

void sub_100030814(unsigned __int8 *a1)
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(Strong + OBJC_IVAR____TtC5Setup25NewFeaturesViewController_embeddedController);
    if (!v4)
    {
LABEL_7:

      return;
    }

    v5 = *(Strong + OBJC_IVAR____TtC5Setup25NewFeaturesViewController_embeddedController + 8);
    if (!v1 || (v6 = OBJC_IVAR____TtC5Setup25NewFeaturesViewController_panGestureRecognizer, *(Strong + OBJC_IVAR____TtC5Setup25NewFeaturesViewController_panGestureRecognizer)))
    {
      v7 = v4;
LABEL_6:
      ObjectType = swift_getObjectType();
      (*(v5 + 32))(v1, ObjectType, v5);

      v3 = v4;
      goto LABEL_7;
    }

    v9 = objc_allocWithZone(UIPanGestureRecognizer);
    v10 = v4;
    v11 = [v9 initWithTarget:v3 action:"handlePanGesture:"];
    v12 = *&v3[v6];
    *&v3[v6] = v11;

    v13 = [v3 view];
    if (v13)
    {
      if (*&v3[v6])
      {
        v14 = v13;
        [v13 addGestureRecognizer:?];

        goto LABEL_6;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }
}

void sub_100030968(char a1, char a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = [Strong navigationItem];
    v7 = v6;
    if (a1 & 1) != 0 && (a2)
    {
      v8 = *&v5[OBJC_IVAR____TtC5Setup25NewFeaturesViewController_skipButton];
      [v7 setRightBarButtonItem:v8 animated:1];

      v7 = v8;
    }

    else
    {
      [v6 setRightBarButtonItem:0 animated:1];
    }
  }
}

void sub_100030D84(_BYTE *a1, uint64_t a2, char a3, char a4)
{
  a1[OBJC_IVAR____TtC5Setup25NewFeaturesViewController_isAnimating] = a3;
  v4 = *&a1[OBJC_IVAR____TtC5Setup25NewFeaturesViewController_embeddedController];
  if (v4)
  {
    v7 = *&a1[OBJC_IVAR____TtC5Setup25NewFeaturesViewController_embeddedController + 8];
    ObjectType = swift_getObjectType();
    v9 = *(v7 + 56);
    v11 = a1;
    v10 = v4;
    v9(a4 & 1, ObjectType, v7);
  }
}

uint64_t sub_100030E5C(void *a1)
{
  v3 = sub_100006410(&qword_1003A0110);
  __chkstk_darwin(v3 - 8);
  v5 = &v18 - v4;
  v6 = *(v1 + OBJC_IVAR____TtC5Setup25NewFeaturesViewController_viewModel);
  result = [a1 currentPage];
  v8 = *(v6 + 64);
  if (v8 >> 62)
  {
    v15 = result;
    v9 = _CocoaArrayWrapper.endIndex.getter();
    result = v15;
    if (v15 < 0)
    {
      return result;
    }
  }

  else
  {
    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result < 0)
    {
      return result;
    }
  }

  if (result >= v9)
  {
    return result;
  }

  v10 = *(v6 + 64);
  if (v10 >> 62)
  {
    v16 = result;
    v17 = _CocoaArrayWrapper.endIndex.getter();
    result = v16;
    if (v16 >= v17)
    {
      return result;
    }
  }

  else if (result >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return result;
  }

  v11 = result;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v5, 1, 1, v12);
  type metadata accessor for MainActor();

  v13 = static MainActor.shared.getter();
  v14 = swift_allocObject();
  v14[2] = v13;
  v14[3] = &protocol witness table for MainActor;
  v14[4] = v6;
  v14[5] = v11;
  sub_100022A78(0, 0, v5, &unk_1002981B0, v14);
}

void sub_100031098()
{
  v1 = *&v0[OBJC_IVAR____TtC5Setup25NewFeaturesViewController_viewModel];
  if (*(v1 + 96) == 1 || (CurrentValueSubject.value.getter(), v8) && (v2 = *(v1 + 64), , v3 = sub_100025E04(v8, v2), v5 = v4, , , (v5 & 1) == 0) && v3)
  {
    sub_100024A28();
  }

  else
  {
    v6 = [v0 navigationController];
    if (v6)
    {
      v7 = v6;
    }
  }
}

void sub_100031220(void *a1)
{
  if ([a1 state] == 3)
  {
    v3 = [v1 view];
    [a1 translationInView:v3];
    v5 = v4;
    v7 = v6;

    v8 = [v1 view];
    [a1 velocityInView:v8];
    v10 = v9;

    v11 = fabs(v5);
    v12 = fabs(v10);
    v13 = fabs(v7) >= v11 || v11 <= 50.0;
    if (!v13 && v12 > 100.0)
    {
      v15 = [v1 view];
      if (v15)
      {
        v16 = v15;
        v17 = [v15 effectiveUserInterfaceLayoutDirection];

        v18 = v5 < 0.0;
        if (v17 == 1)
        {
          v18 = v5 > 0.0;
        }

        if (v18)
        {
          sub_10002470C();
        }

        else
        {

          sub_100031098();
        }
      }

      else
      {
        __break(1u);
      }
    }
  }
}

uint64_t sub_1000313F8(uint64_t result)
{
  v2 = OBJC_IVAR____TtC5Setup25NewFeaturesViewController_applicationDidEnterBackgroundObservationToken;
  v3 = *(v1 + OBJC_IVAR____TtC5Setup25NewFeaturesViewController_applicationDidEnterBackgroundObservationToken);
  if (result)
  {
    if (!v3)
    {
      v4 = [objc_opt_self() defaultCenter];
      v5 = [objc_opt_self() mainQueue];
      v6 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v25 = sub_10003A8C0;
      v26 = v6;
      v21 = _NSConcreteStackBlock;
      v22 = 1107296256;
      v23 = sub_100053BB8;
      v24 = &unk_100329880;
      v7 = _Block_copy(&v21);

      v8 = [v4 addObserverForName:UIApplicationDidEnterBackgroundNotification object:0 queue:v5 usingBlock:v7];
      _Block_release(v7);

      *(v1 + v2) = v8;
      result = swift_unknownObjectRelease();
    }

    v9 = OBJC_IVAR____TtC5Setup25NewFeaturesViewController_applicationDidBecomeActiveObservationToken;
    if (!*(v1 + OBJC_IVAR____TtC5Setup25NewFeaturesViewController_applicationDidBecomeActiveObservationToken))
    {
      v10 = [objc_opt_self() defaultCenter];
      v11 = [objc_opt_self() mainQueue];
      v12 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v25 = sub_10003A8C8;
      v26 = v12;
      v21 = _NSConcreteStackBlock;
      v22 = 1107296256;
      v23 = sub_100053BB8;
      v24 = &unk_1003298A8;
      v13 = _Block_copy(&v21);

      v14 = [v10 addObserverForName:UIApplicationDidBecomeActiveNotification object:0 queue:v11 usingBlock:v13];
      _Block_release(v13);

      *(v1 + v9) = v14;
      return swift_unknownObjectRelease();
    }
  }

  else
  {
    if (v3)
    {
      v15 = objc_opt_self();
      swift_unknownObjectRetain();
      v16 = [v15 defaultCenter];
      [v16 removeObserver:v3];

      swift_unknownObjectRelease();
      *(v1 + v2) = 0;
      result = swift_unknownObjectRelease();
    }

    v17 = OBJC_IVAR____TtC5Setup25NewFeaturesViewController_applicationDidBecomeActiveObservationToken;
    v18 = *(v1 + OBJC_IVAR____TtC5Setup25NewFeaturesViewController_applicationDidBecomeActiveObservationToken);
    if (v18)
    {
      v19 = objc_opt_self();
      swift_unknownObjectRetain();
      v20 = [v19 defaultCenter];
      [v20 removeObserver:v18];

      swift_unknownObjectRelease();
      *(v1 + v17) = 0;

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

void sub_10003179C()
{
  v0 = sub_100006410(&qword_1003A0110);
  __chkstk_darwin(v0 - 8);
  v2 = &v9 - v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *(Strong + OBJC_IVAR____TtC5Setup25NewFeaturesViewController_viewModel);
    if (*(v5 + 96))
    {
      v6 = type metadata accessor for TaskPriority();
      (*(*(v6 - 8) + 56))(v2, 1, 1, v6);
      type metadata accessor for MainActor();

      v7 = static MainActor.shared.getter();
      v8 = swift_allocObject();
      v8[2] = v7;
      v8[3] = &protocol witness table for MainActor;
      v8[4] = v5;
      sub_100022A78(0, 0, v2, &unk_1002981D0, v8);
    }
  }
}

uint64_t sub_100031900()
{
  v0 = sub_100006410(&qword_1003A0110);
  __chkstk_darwin(v0 - 8);
  v2 = &v9 - v1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = *(result + OBJC_IVAR____TtC5Setup25NewFeaturesViewController_viewModel);
    v5 = result;
    v6 = type metadata accessor for TaskPriority();
    (*(*(v6 - 8) + 56))(v2, 1, 1, v6);
    type metadata accessor for MainActor();

    v7 = static MainActor.shared.getter();
    v8 = swift_allocObject();
    v8[2] = v7;
    v8[3] = &protocol witness table for MainActor;
    v8[4] = v4;
    sub_100022A78(0, 0, v2, &unk_100298750, v8);
  }

  return result;
}

uint64_t sub_100031BA8()
{
  v1 = sub_100006410(&qword_1003A0110);
  __chkstk_darwin(v1 - 8);
  v3 = v11 - v2;
  v4 = *(*&v0[OBJC_IVAR____TtC5Setup25NewFeaturesViewController_viewModel] + 96);
  if (v4 == 1)
  {
    return sub_10002470C();
  }

  if (v4 != 3)
  {
    CurrentValueSubject.value.getter();
    v5 = sub_100025EFC(v11[1]);

    if ((v5 & 1) == 0)
    {
      return sub_10002470C();
    }
  }

  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v3, 1, 1, v6);
  type metadata accessor for MainActor();
  v7 = v0;
  v8 = static MainActor.shared.getter();
  v9 = swift_allocObject();
  v9[2] = v8;
  v9[3] = &protocol witness table for MainActor;
  v9[4] = v7;
  sub_100022A78(0, 0, v3, &unk_100298740, v9);
}

uint64_t sub_100031D3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  type metadata accessor for MainActor();
  *(v4 + 24) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100031DD4, v6, v5);
}

uint64_t sub_100031DD4()
{
  v1 = *(v0 + 16);

  (*(v1 + OBJC_IVAR____TtC5Setup25NewFeaturesViewController_completion))(v2);
  v3 = *(v0 + 8);

  return v3();
}

NSNumber sub_100031E4C()
{
  sub_10003ABF0(0, &qword_1003A0330);
  result.super.super.isa = NSNumber.init(floatLiteral:)(0.075).super.super.isa;
  qword_1003A14F0 = result.super.super.isa;
  return result;
}

NSNumber sub_100031E9C()
{
  sub_10003ABF0(0, &qword_1003A0330);
  result.super.super.isa = NSNumber.init(integerLiteral:)(0).super.super.isa;
  qword_1003A14F8 = result.super.super.isa;
  return result;
}

NSNumber sub_100031EE4()
{
  sub_10003ABF0(0, &qword_1003A0330);
  result.super.super.isa = NSNumber.init(floatLiteral:)(0.4).super.super.isa;
  qword_1003A1500 = result.super.super.isa;
  return result;
}

void sub_100031F30()
{
  v1 = v0;
  v200.receiver = v0;
  v200.super_class = type metadata accessor for iPhoneNewFeaturesViewController();
  objc_msgSendSuper2(&v200, "viewDidLoad");
  v2 = OBJC_IVAR____TtC5SetupP33_815782AA972C2E4207EC20C3BE273F6B31iPhoneNewFeaturesViewController_playerView;
  v3 = *&v0[OBJC_IVAR____TtC5SetupP33_815782AA972C2E4207EC20C3BE273F6B31iPhoneNewFeaturesViewController_playerView];
  if (!v3)
  {
    __break(1u);
    goto LABEL_56;
  }

  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  v4 = *&v0[v2];
  if (!v4)
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  [v4 setAccessibilityElementsHidden:1];
  v5 = [v0 view];
  if (!v5)
  {
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  if (!*&v0[v2])
  {
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  v6 = v5;
  [v5 addSubview:?];

  sub_100006410(&qword_1003A1400);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1002977D0;
  v8 = *&v1[v2];
  if (!v8)
  {
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  v9 = [v8 topAnchor];
  v10 = [v1 view];
  if (!v10)
  {
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  v11 = v10;
  v12 = [v10 topAnchor];

  v13 = [v9 constraintEqualToAnchor:v12];
  *(v7 + 32) = v13;
  v14 = *&v1[v2];
  if (!v14)
  {
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  v15 = [v14 bottomAnchor];
  v16 = [v1 view];
  if (!v16)
  {
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  v17 = v16;
  v18 = [v16 bottomAnchor];

  v19 = [v15 constraintEqualToAnchor:v18];
  *(v7 + 40) = v19;
  v20 = *&v1[v2];
  if (!v20)
  {
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  v21 = [v20 leadingAnchor];
  v22 = [v1 view];
  if (!v22)
  {
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  v23 = v22;
  v24 = [v22 leadingAnchor];

  v25 = [v21 constraintEqualToAnchor:v24];
  *(v7 + 48) = v25;
  v26 = *&v1[v2];
  if (!v26)
  {
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  v27 = [v26 trailingAnchor];
  v28 = [v1 view];
  if (!v28)
  {
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  v29 = v28;
  v30 = objc_opt_self();
  v31 = [v29 trailingAnchor];

  v32 = [v27 constraintEqualToAnchor:v31];
  *(v7 + 56) = v32;
  sub_10003ABF0(0, &qword_1003A0BF0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v199 = v30;
  [v30 activateConstraints:isa];

  v34 = *&v1[OBJC_IVAR____TtC5SetupP33_815782AA972C2E4207EC20C3BE273F6B31iPhoneNewFeaturesViewController_buttonTray];
  v35 = OBJC_IVAR____TtC5SetupP33_815782AA972C2E4207EC20C3BE273F6B31iPhoneNewFeaturesViewController_continueButtonContainer;
  v36 = *&v1[OBJC_IVAR____TtC5SetupP33_815782AA972C2E4207EC20C3BE273F6B31iPhoneNewFeaturesViewController_continueButtonContainer];
  *&v1[OBJC_IVAR____TtC5SetupP33_815782AA972C2E4207EC20C3BE273F6B31iPhoneNewFeaturesViewController_continueButtonContainer] = v34;
  v37 = v34;

  [v37 setTranslatesAutoresizingMaskIntoConstraints:0];
  v38 = [v1 view];
  if (!v38)
  {
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  v195 = v35;
  if (!*&v1[v35])
  {
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

  v39 = v38;
  [v38 addSubview:?];

  v40 = [objc_opt_self() boldButton];
  v41 = OBJC_IVAR____TtC5SetupP33_815782AA972C2E4207EC20C3BE273F6B31iPhoneNewFeaturesViewController_continueButton;
  v42 = *&v1[OBJC_IVAR____TtC5SetupP33_815782AA972C2E4207EC20C3BE273F6B31iPhoneNewFeaturesViewController_continueButton];
  *&v1[OBJC_IVAR____TtC5SetupP33_815782AA972C2E4207EC20C3BE273F6B31iPhoneNewFeaturesViewController_continueButton] = v40;
  v43 = v40;

  [v43 addTarget:v1 action:"continueButtonTapped" forControlEvents:64];
  v194 = v43;
  [v37 addButton:v43];
  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_100298420;
  v45 = [v37 bottomAnchor];
  v46 = [v1 view];
  if (!v46)
  {
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  v47 = v46;
  v48 = v37;
  v49 = [v46 safeAreaLayoutGuide];

  v50 = [v49 bottomAnchor];
  v51 = [v45 constraintEqualToAnchor:v50];

  *(v44 + 32) = v51;
  v52 = [v48 leadingAnchor];
  v53 = [v1 view];
  if (!v53)
  {
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  v54 = v53;
  v55 = [v53 leadingAnchor];

  v56 = [v52 constraintEqualToAnchor:v55];
  *(v44 + 40) = v56;
  v198 = v48;
  v57 = [v48 trailingAnchor];
  v58 = [v1 view];
  if (!v58)
  {
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v59 = v58;
  v60 = [v58 trailingAnchor];

  v61 = [v57 constraintEqualToAnchor:v60];
  *(v44 + 48) = v61;
  v62 = *&v1[v41];
  if (!v62)
  {
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  v63 = [v62 leadingAnchor];
  v64 = [v1 view];
  if (!v64)
  {
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  v65 = v64;
  v66 = [v64 leadingAnchor];

  v67 = [v63 constraintEqualToAnchor:v66 constant:38.0];
  *(v44 + 56) = v67;
  v68 = *&v1[v41];
  if (!v68)
  {
LABEL_74:
    __break(1u);
    goto LABEL_75;
  }

  v69 = [v68 trailingAnchor];
  v70 = [v1 view];
  if (!v70)
  {
LABEL_75:
    __break(1u);
    goto LABEL_76;
  }

  v71 = v70;
  v72 = [v70 trailingAnchor];

  v73 = [v69 constraintEqualToAnchor:v72 constant:-38.0];
  *(v44 + 64) = v73;
  v74 = *&v1[v41];
  if (!v74)
  {
LABEL_76:
    __break(1u);
    goto LABEL_77;
  }

  v75 = [v74 bottomAnchor];
  v76 = [v1 view];
  if (!v76)
  {
LABEL_77:
    __break(1u);
    goto LABEL_78;
  }

  v77 = v76;
  v78 = [v76 bottomAnchor];

  v79 = [v75 constraintLessThanOrEqualToAnchor:v78 constant:-38.0];
  *(v44 + 72) = v79;
  v80 = Array._bridgeToObjectiveC()().super.isa;

  [v199 activateConstraints:v80];

  v81 = OBJC_IVAR____TtC5SetupP33_815782AA972C2E4207EC20C3BE273F6B31iPhoneNewFeaturesViewController_labelsContainer;
  [*&v1[OBJC_IVAR____TtC5SetupP33_815782AA972C2E4207EC20C3BE273F6B31iPhoneNewFeaturesViewController_labelsContainer] setTranslatesAutoresizingMaskIntoConstraints:0];
  v82 = [v1 view];
  if (!v82)
  {
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
    goto LABEL_80;
  }

  v83 = v82;
  [v82 addSubview:*&v1[v81]];

  v84 = [objc_allocWithZone(CAGradientLayer) init];
  [v84 setStartPoint:{0.5, 0.0}];
  [v84 setEndPoint:{0.5, 1.0}];
  sub_100006410(&qword_1003A1DB0);
  v85 = swift_allocObject();
  *(v85 + 16) = xmmword_100297E80;
  v86 = objc_opt_self();
  v87 = [v86 clearColor];
  v88 = [v87 CGColor];

  type metadata accessor for CGColor(0);
  v90 = v89;
  *(v85 + 56) = v89;
  *(v85 + 32) = v88;
  v196 = v86;
  v91 = [v86 blackColor];
  v92 = [v91 CGColor];

  *(v85 + 88) = v90;
  *(v85 + 64) = v92;
  v93 = Array._bridgeToObjectiveC()().super.isa;

  [v84 setColors:v93];

  v94 = swift_allocObject();
  *(v94 + 16) = xmmword_100297C60;
  sub_10003ABF0(0, &qword_1003A0330);
  *(v94 + 32) = NSNumber.init(integerLiteral:)(0);
  if (qword_10039F9C8 != -1)
  {
    swift_once();
  }

  v95 = qword_1003A14F0;
  *(v94 + 40) = qword_1003A14F0;
  v96 = v95;
  v97 = Array._bridgeToObjectiveC()().super.isa;

  [v84 setLocations:v97];

  v98 = [*&v1[v81] layer];
  v193 = v84;
  [v98 setMask:v84];

  type metadata accessor for GradientView();
  v99 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v100 = OBJC_IVAR____TtC5SetupP33_815782AA972C2E4207EC20C3BE273F6B12GradientView_gradientLayer;
  [*&v99[OBJC_IVAR____TtC5SetupP33_815782AA972C2E4207EC20C3BE273F6B12GradientView_gradientLayer] setStartPoint:{0.5, 0.0}];
  [*&v99[v100] setEndPoint:{0.5, 1.0}];
  v101 = *&v99[v100];
  v102 = swift_allocObject();
  *(v102 + 16) = xmmword_100297E80;
  v103 = v101;
  v104 = [v196 clearColor];
  v105 = [v104 CGColor];

  *(v102 + 56) = v90;
  *(v102 + 32) = v105;
  v106 = [v196 blackColor];
  v107 = [v106 CGColor];

  *(v102 + 88) = v90;
  *(v102 + 64) = v107;
  v108 = Array._bridgeToObjectiveC()().super.isa;

  [v103 setColors:v108];

  v109 = *&v99[v100];
  v110 = swift_allocObject();
  *(v110 + 16) = xmmword_100297C60;
  v111 = qword_10039F9D0;
  v112 = v109;
  if (v111 != -1)
  {
    swift_once();
  }

  v113 = qword_1003A14F8;
  *(v110 + 32) = qword_1003A14F8;
  v114 = qword_10039F9D8;
  v115 = v113;
  if (v114 != -1)
  {
    swift_once();
  }

  v116 = qword_1003A1500;
  *(v110 + 40) = qword_1003A1500;
  v117 = v116;
  v118 = Array._bridgeToObjectiveC()().super.isa;

  [v112 setLocations:v118];

  v119 = v99;
  [v119 setTranslatesAutoresizingMaskIntoConstraints:0];
  v120 = *&v1[OBJC_IVAR____TtC5SetupP33_815782AA972C2E4207EC20C3BE273F6B31iPhoneNewFeaturesViewController_gradientView];
  v197 = OBJC_IVAR____TtC5SetupP33_815782AA972C2E4207EC20C3BE273F6B31iPhoneNewFeaturesViewController_gradientView;
  *&v1[OBJC_IVAR____TtC5SetupP33_815782AA972C2E4207EC20C3BE273F6B31iPhoneNewFeaturesViewController_gradientView] = v119;
  v121 = v119;

  v122 = [v1 view];
  if (!v122)
  {
    goto LABEL_79;
  }

  v123 = v122;
  [v122 addSubview:v121];

  v124 = swift_allocObject();
  *(v124 + 16) = xmmword_100298430;
  v125 = [*&v1[v81] heightAnchor];
  v126 = [v1 view];
  if (!v126)
  {
LABEL_80:
    __break(1u);
    goto LABEL_81;
  }

  v127 = v126;
  v128 = [v126 heightAnchor];

  v129 = [v125 constraintEqualToAnchor:v128 multiplier:0.375];
  *(v124 + 32) = v129;
  v130 = [*&v1[v81] bottomAnchor];
  v131 = [v1 view];
  if (!v131)
  {
LABEL_81:
    __break(1u);
    goto LABEL_82;
  }

  v132 = v131;
  v133 = [v131 bottomAnchor];

  v134 = [v130 constraintEqualToAnchor:v133];
  *(v124 + 40) = v134;
  v135 = [*&v1[v81] leadingAnchor];
  v136 = [v1 view];
  if (!v136)
  {
LABEL_82:
    __break(1u);
    goto LABEL_83;
  }

  v137 = v136;
  v138 = [v136 leadingAnchor];

  v139 = [v135 constraintEqualToAnchor:v138];
  *(v124 + 48) = v139;
  v140 = [*&v1[v81] trailingAnchor];
  v141 = [v1 view];
  if (!v141)
  {
LABEL_83:
    __break(1u);
    goto LABEL_84;
  }

  v142 = v141;
  v143 = [v141 trailingAnchor];

  v144 = [v140 constraintEqualToAnchor:v143];
  *(v124 + 56) = v144;
  v145 = [v121 topAnchor];
  v146 = [*&v1[v81] topAnchor];
  v147 = [v145 constraintEqualToAnchor:v146 constant:-24.0];

  *(v124 + 64) = v147;
  v148 = [v121 bottomAnchor];
  v149 = [v1 view];
  if (!v149)
  {
LABEL_84:
    __break(1u);
    goto LABEL_85;
  }

  v150 = v149;
  v151 = [v149 bottomAnchor];

  v152 = [v148 constraintEqualToAnchor:v151];
  *(v124 + 72) = v152;
  v153 = [v121 leadingAnchor];
  v154 = [v1 view];
  if (!v154)
  {
LABEL_85:
    __break(1u);
    goto LABEL_86;
  }

  v155 = v154;
  v156 = [v154 leadingAnchor];

  v157 = [v153 constraintEqualToAnchor:v156];
  *(v124 + 80) = v157;
  v158 = [v121 trailingAnchor];

  v159 = [v1 view];
  if (!v159)
  {
LABEL_86:
    __break(1u);
    goto LABEL_87;
  }

  v160 = v159;
  v161 = [v159 trailingAnchor];

  v162 = [v158 constraintEqualToAnchor:v161];
  *(v124 + 88) = v162;
  v163 = Array._bridgeToObjectiveC()().super.isa;

  [v199 activateConstraints:v163];

  v164 = [v1 view];
  if (!v164)
  {
LABEL_87:
    __break(1u);
    goto LABEL_88;
  }

  v165 = OBJC_IVAR____TtC5SetupP33_815782AA972C2E4207EC20C3BE273F6B31iPhoneNewFeaturesViewController_pageControl;
  if (!*&v1[OBJC_IVAR____TtC5SetupP33_815782AA972C2E4207EC20C3BE273F6B31iPhoneNewFeaturesViewController_pageControl])
  {
LABEL_88:
    __break(1u);
    goto LABEL_89;
  }

  v166 = v164;
  [v164 addSubview:?];

  v167 = *&v1[v165];
  if (!v167)
  {
LABEL_89:
    __break(1u);
    goto LABEL_90;
  }

  [v167 setTranslatesAutoresizingMaskIntoConstraints:0];
  v168 = swift_allocObject();
  *(v168 + 16) = xmmword_100298440;
  v169 = *&v1[v165];
  if (!v169)
  {
LABEL_90:
    __break(1u);
    goto LABEL_91;
  }

  v170 = [v169 leadingAnchor];
  v171 = [*&v1[v81] leadingAnchor];
  v172 = [v170 constraintEqualToAnchor:v171];

  *(v168 + 32) = v172;
  v173 = *&v1[v165];
  if (!v173)
  {
LABEL_91:
    __break(1u);
    goto LABEL_92;
  }

  v174 = [v173 trailingAnchor];
  v175 = [*&v1[v81] trailingAnchor];
  v176 = [v174 constraintEqualToAnchor:v175];

  *(v168 + 40) = v176;
  v177 = *&v1[v165];
  if (!v177)
  {
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  v178 = [v177 bottomAnchor];
  v179 = [v198 topAnchor];
  v180 = [v178 constraintEqualToAnchor:v179 constant:8.0];

  *(v168 + 48) = v180;
  v181 = Array._bridgeToObjectiveC()().super.isa;

  [v199 activateConstraints:v181];

  v182 = *&v1[v165];
  if (!v182)
  {
LABEL_93:
    __break(1u);
    goto LABEL_94;
  }

  [v182 setHidden:1];
  v183 = *&v1[v165];
  if (!v183)
  {
LABEL_94:
    __break(1u);
    goto LABEL_95;
  }

  [v183 setAlpha:0.0];
  v184 = *&v1[v195];
  if (!v184)
  {
LABEL_95:
    __break(1u);
    goto LABEL_96;
  }

  [v184 setHidden:1];
  v185 = *&v1[v195];
  if (!v185)
  {
LABEL_96:
    __break(1u);
    goto LABEL_97;
  }

  [v185 setAlpha:0.0];
  v186 = *&v197[v1];
  if (!v186)
  {
LABEL_97:
    __break(1u);
    goto LABEL_98;
  }

  [v186 setAlpha:0.0];
  v187 = [v1 view];
  if (!v187)
  {
LABEL_98:
    __break(1u);
    goto LABEL_99;
  }

  v188 = v187;
  [v187 bringSubviewToFront:*&v1[v81]];

  v189 = [v1 view];
  if (!v189)
  {
LABEL_99:
    __break(1u);
    goto LABEL_100;
  }

  if (!*&v1[v165])
  {
LABEL_100:
    __break(1u);
    goto LABEL_101;
  }

  v190 = v189;
  [v189 bringSubviewToFront:?];

  v191 = [v1 view];
  if (v191)
  {
    v192 = v191;
    [v191 bringSubviewToFront:v198];

    return;
  }

LABEL_101:
  __break(1u);
}

void sub_100033440(char a1)
{
  if (a1)
  {
    v2 = OBJC_IVAR____TtC5SetupP33_815782AA972C2E4207EC20C3BE273F6B31iPhoneNewFeaturesViewController_pageControl;
    v3 = *&v1[OBJC_IVAR____TtC5SetupP33_815782AA972C2E4207EC20C3BE273F6B31iPhoneNewFeaturesViewController_pageControl];
    if (v3)
    {
      if (![v3 isHidden])
      {
        return;
      }

      v4 = *&v1[v2];
      if (v4)
      {
        [v4 setHidden:0];
        v5 = *&v1[OBJC_IVAR____TtC5SetupP33_815782AA972C2E4207EC20C3BE273F6B31iPhoneNewFeaturesViewController_continueButtonContainer];
        if (v5)
        {
          [v5 setHidden:0];
          v6 = objc_opt_self();
          v7 = swift_allocObject();
          *(v7 + 16) = v1;
          v20 = sub_10003A844;
          v21 = v7;
          v16 = _NSConcreteStackBlock;
          v17 = 1107296256;
          v18 = sub_10002E3B4;
          v19 = &unk_100329790;
          v8 = _Block_copy(&v16);
          v9 = v1;

          [v6 animateWithDuration:0 delay:v8 options:0 animations:2.0 completion:0.0];
          _Block_release(v8);
          v10 = swift_allocObject();
          *(v10 + 16) = v9;
          v20 = sub_10003A84C;
          v21 = v10;
          v16 = _NSConcreteStackBlock;
          v17 = 1107296256;
          v18 = sub_10002E3B4;
          v19 = &unk_1003297E0;
          v11 = _Block_copy(&v16);
          v12 = v9;

          [v6 animateWithDuration:0 delay:v11 options:0 animations:1.0 completion:1.0];
          _Block_release(v11);
          v13 = swift_allocObject();
          *(v13 + 16) = v12;
          v20 = sub_10003A858;
          v21 = v13;
          v16 = _NSConcreteStackBlock;
          v17 = 1107296256;
          v18 = sub_10002E3B4;
          v19 = &unk_100329830;
          v14 = _Block_copy(&v16);
          v15 = v12;

          [v6 animateWithDuration:0 delay:v14 options:0 animations:1.0 completion:1.25];
          _Block_release(v14);
          return;
        }

LABEL_10:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_10;
  }
}

id sub_100033700(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC5SetupP33_815782AA972C2E4207EC20C3BE273F6B31iPhoneNewFeaturesViewController_gradientView;
  result = *(a1 + OBJC_IVAR____TtC5SetupP33_815782AA972C2E4207EC20C3BE273F6B31iPhoneNewFeaturesViewController_gradientView);
  if (result)
  {
    v4[0] = 0x3FF0000000000000;
    v4[1] = 0;
    v4[2] = 0;
    v4[3] = 0x3FF0000000000000;
    v4[4] = 0;
    v4[5] = 0;
    [result setTransform:v4];
    result = *(a1 + v2);
    if (result)
    {
      return [result setAlpha:1.0];
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_100033778(uint64_t a1, double a2, uint64_t a3, char *a4)
{
  v7 = sub_100006410(&qword_1003A2250);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v19 - v9;
  sub_100033FB8(a4);
  [a4 setAlpha:0.0];
  v11 = *&a4[OBJC_IVAR____TtC5SetupP33_815782AA972C2E4207EC20C3BE273F6B18NewFeatureTextView_titleLabel];
  [v11 transform];
  CGAffineTransformTranslate(&v21, &aBlock, 0.0, 30.0);
  aBlock = v21;
  [v11 setTransform:&aBlock];
  v12 = *&a4[OBJC_IVAR____TtC5SetupP33_815782AA972C2E4207EC20C3BE273F6B18NewFeatureTextView_bodyLabel];
  [v12 transform];
  CGAffineTransformTranslate(&v21, &aBlock, 0.0, 50.0);
  aBlock = v21;
  [v12 setTransform:&aBlock];
  v20 = objc_opt_self();
  v13 = swift_allocObject();
  *(v13 + 16) = a4;
  *&aBlock.tx = sub_10003A30C;
  *&aBlock.ty = v13;
  *&aBlock.a = _NSConcreteStackBlock;
  *&aBlock.b = 1107296256;
  *&aBlock.c = sub_10002E3B4;
  *&aBlock.d = &unk_100329588;
  v14 = _Block_copy(&aBlock);
  v15 = a4;

  (*(v8 + 16))(v10, a1, v7);
  v16 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v17 = swift_allocObject();
  (*(v8 + 32))(v17 + v16, v10, v7);
  *&aBlock.tx = sub_10003A3C0;
  *&aBlock.ty = v17;
  *&aBlock.a = _NSConcreteStackBlock;
  *&aBlock.b = 1107296256;
  *&aBlock.c = sub_10002E3F8;
  *&aBlock.d = &unk_1003295D8;
  v18 = _Block_copy(&aBlock);

  [v20 animateWithDuration:v14 animations:v18 completion:a2];
  _Block_release(v18);
  _Block_release(v14);
}

id sub_100033AC4(char *a1)
{
  [a1 setAlpha:1.0];
  v2 = *&a1[OBJC_IVAR____TtC5SetupP33_815782AA972C2E4207EC20C3BE273F6B18NewFeatureTextView_titleLabel];
  v5 = 0x3FF0000000000000;
  v6 = 0;
  v7 = 0;
  v8 = 0x3FF0000000000000;
  v9 = 0;
  v10 = 0;
  [v2 setTransform:&v5];
  v3 = *&a1[OBJC_IVAR____TtC5SetupP33_815782AA972C2E4207EC20C3BE273F6B18NewFeatureTextView_bodyLabel];
  v5 = 0x3FF0000000000000;
  v6 = 0;
  v7 = 0;
  v8 = 0x3FF0000000000000;
  v9 = 0;
  v10 = 0;
  return [v3 setTransform:&v5];
}

void sub_100033B54(uint64_t a1, void *a2, char a3, void *a4, void *a5, double a6)
{
  v31 = a1;
  v11 = sub_100006410(&qword_1003A2250);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v30 - v13;
  v15 = [a2 view];
  if (v15)
  {
    v16 = v15;
    v17 = [v15 effectiveUserInterfaceLayoutDirection];

    v18 = 1.0;
    if (v17 == 1)
    {
      v18 = -1.0;
    }

    if (a3)
    {
      v19 = v18;
    }

    else
    {
      v19 = -v18;
    }

    [a4 transform];
    CGAffineTransformTranslate(&v32, &aBlock, v19 * 50.0, 0.0);
    aBlock = v32;
    [a4 setTransform:&aBlock];
    [a4 setAlpha:0.0];
    sub_100033FB8(a4);
    v20 = objc_opt_self();
    v21 = swift_allocObject();
    *(v21 + 16) = a5;
    *(v21 + 24) = v19;
    *(v21 + 32) = a4;
    *&aBlock.tx = sub_10003A4B4;
    *&aBlock.ty = v21;
    *&aBlock.a = _NSConcreteStackBlock;
    *&aBlock.b = 1107296256;
    *&aBlock.c = sub_10002E3B4;
    *&aBlock.d = &unk_100329628;
    v22 = _Block_copy(&aBlock);
    v23 = a5;
    v24 = a4;

    v25 = v11;
    (*(v12 + 16))(v14, v31, v11);
    v26 = (*(v12 + 80) + 24) & ~*(v12 + 80);
    v27 = swift_allocObject();
    *(v27 + 16) = v23;
    (*(v12 + 32))(v27 + v26, v14, v25);
    *&aBlock.tx = sub_10003B2AC;
    *&aBlock.ty = v27;
    *&aBlock.a = _NSConcreteStackBlock;
    *&aBlock.b = 1107296256;
    *&aBlock.c = sub_10002E3F8;
    *&aBlock.d = &unk_100329678;
    v28 = _Block_copy(&aBlock);
    v29 = v23;

    [v20 animateWithDuration:v22 animations:v28 completion:a6];
    _Block_release(v28);
    _Block_release(v22);
  }

  else
  {
    __break(1u);
  }
}

id sub_100033EB8(void *a1, void *a2, double a3)
{
  [a1 transform];
  CGAffineTransformTranslate(&v7, &v8, a3 * 50.0, 0.0);
  v8 = v7;
  CGAffineTransformInvert(&v7, &v8);
  v8 = v7;
  [a1 setTransform:&v8];
  v8.a = 1.0;
  v8.b = 0.0;
  v8.c = 0.0;
  v8.d = 1.0;
  v8.tx = 0.0;
  v8.ty = 0.0;
  [a2 setTransform:&v8];
  [a2 setAlpha:1.0];
  return [a1 setAlpha:0.0];
}

void sub_100033FB8(void *a1)
{
  v3 = [objc_allocWithZone(UIScrollView) init];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  v4 = OBJC_IVAR____TtC5SetupP33_815782AA972C2E4207EC20C3BE273F6B31iPhoneNewFeaturesViewController_labelsContainer;
  [*(v1 + OBJC_IVAR____TtC5SetupP33_815782AA972C2E4207EC20C3BE273F6B31iPhoneNewFeaturesViewController_labelsContainer) addSubview:v3];
  v5 = *(v1 + OBJC_IVAR____TtC5SetupP33_815782AA972C2E4207EC20C3BE273F6B31iPhoneNewFeaturesViewController_currentTextScrollView);
  *(v1 + OBJC_IVAR____TtC5SetupP33_815782AA972C2E4207EC20C3BE273F6B31iPhoneNewFeaturesViewController_currentTextScrollView) = v3;
  v44 = v3;

  [a1 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v44 addSubview:a1];
  v6 = *(v1 + OBJC_IVAR____TtC5SetupP33_815782AA972C2E4207EC20C3BE273F6B31iPhoneNewFeaturesViewController_pageControl);
  if (!v6)
  {
    __break(1u);
    goto LABEL_10;
  }

  v7 = objc_allocWithZone(_UIScrollPocketInteraction);
  v8 = v6;
  v9 = [v7 initWithScrollView:v44 edge:4 style:0];
  [v8 addInteraction:v9];

  v10 = *(v1 + OBJC_IVAR____TtC5SetupP33_815782AA972C2E4207EC20C3BE273F6B31iPhoneNewFeaturesViewController_continueButtonContainer);
  if (!v10)
  {
LABEL_10:
    __break(1u);
    return;
  }

  v11 = objc_allocWithZone(_UIScrollPocketInteraction);
  v12 = v10;
  v13 = [v11 initWithScrollView:v44 edge:4 style:0];
  [v12 addInteraction:v13];

  if (*(a1 + OBJC_IVAR____TtC5SetupP33_815782AA972C2E4207EC20C3BE273F6B18NewFeatureTextView_style + 32))
  {
    v14 = 250.0;
  }

  else
  {
    v14 = 326.0;
  }

  v43 = objc_opt_self();
  sub_100006410(&qword_1003A1400);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_100298450;
  v16 = [v44 topAnchor];
  v17 = [*(v1 + v4) topAnchor];
  v18 = [v16 constraintEqualToAnchor:v17];

  *(v15 + 32) = v18;
  v19 = [v44 bottomAnchor];
  v20 = [*(v1 + v4) bottomAnchor];
  v21 = [v19 constraintEqualToAnchor:v20];

  *(v15 + 40) = v21;
  v22 = [v44 leadingAnchor];
  v23 = [*(v1 + v4) leadingAnchor];
  v24 = [v22 constraintEqualToAnchor:v23];

  *(v15 + 48) = v24;
  v25 = [v44 trailingAnchor];
  v26 = [*(v1 + v4) trailingAnchor];
  v27 = [v25 constraintEqualToAnchor:v26];

  *(v15 + 56) = v27;
  v28 = [a1 topAnchor];
  v29 = [v44 topAnchor];
  v30 = [v28 constraintEqualToAnchor:v29];

  *(v15 + 64) = v30;
  v31 = [a1 bottomAnchor];
  v32 = [v44 bottomAnchor];
  v33 = [v31 constraintEqualToAnchor:v32];

  *(v15 + 72) = v33;
  v34 = [a1 centerXAnchor];
  v35 = [v44 centerXAnchor];
  v36 = [v34 constraintEqualToAnchor:v35];

  *(v15 + 80) = v36;
  v37 = [a1 widthAnchor];
  v38 = [v44 widthAnchor];

  v39 = [v37 constraintLessThanOrEqualToAnchor:v38 constant:-76.0];
  *(v15 + 88) = v39;
  v40 = [a1 widthAnchor];
  v41 = [v40 constraintEqualToConstant:v14];

  *(v15 + 96) = v41;
  sub_10003ABF0(0, &qword_1003A0BF0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v43 activateConstraints:isa];

  sub_100034558();
}

void sub_100034558()
{
  v1 = *&v0[OBJC_IVAR____TtC5SetupP33_815782AA972C2E4207EC20C3BE273F6B31iPhoneNewFeaturesViewController_currentTextScrollView];
  if (!v1)
  {
    return;
  }

  v2 = *&v0[OBJC_IVAR____TtC5SetupP33_815782AA972C2E4207EC20C3BE273F6B31iPhoneNewFeaturesViewController_continueButtonContainer];
  if (!v2)
  {
    __break(1u);
    goto LABEL_15;
  }

  v12 = v1;
  [v2 bounds];
  CGRectGetHeight(v14);
  v3 = *&v0[OBJC_IVAR____TtC5SetupP33_815782AA972C2E4207EC20C3BE273F6B31iPhoneNewFeaturesViewController_pageControl];
  if (!v3)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  [v3 bounds];
  CGRectGetHeight(v15);
  v4 = [v0 view];
  if (!v4)
  {
LABEL_16:
    __break(1u);
    return;
  }

  v5 = v4;
  [v4 safeAreaInsets];

  [v12 contentInset];
  [v12 setContentInset:?];
  v6 = OBJC_IVAR____TtC5SetupP33_815782AA972C2E4207EC20C3BE273F6B31iPhoneNewFeaturesViewController_labelsContainer;
  v7 = [*&v0[OBJC_IVAR____TtC5SetupP33_815782AA972C2E4207EC20C3BE273F6B31iPhoneNewFeaturesViewController_labelsContainer] layer];
  v8 = [v7 mask];

  if (v8)
  {
    [*&v0[v6] bounds];
    [v8 setFrame:?];
    [v8 frame];
    Height = CGRectGetHeight(v16);
    if (qword_10039F9C8 != -1)
    {
      swift_once();
    }

    [qword_1003A14F0 doubleValue];
    v11 = Height * v10;
    [v12 contentInset];
    [v12 setContentInset:v11];
  }

  else
  {
    [v12 contentInset];
    [v12 setContentInset:0.0];
  }
}

id sub_1000347A8(uint64_t a1, uint64_t a2, void *a3)
{
  *&v3[OBJC_IVAR____TtC5SetupP33_815782AA972C2E4207EC20C3BE273F6B31iPhoneNewFeaturesViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v3[OBJC_IVAR____TtC5SetupP33_815782AA972C2E4207EC20C3BE273F6B31iPhoneNewFeaturesViewController_playerView] = 0;
  *&v3[OBJC_IVAR____TtC5SetupP33_815782AA972C2E4207EC20C3BE273F6B31iPhoneNewFeaturesViewController_pageControl] = 0;
  *&v3[OBJC_IVAR____TtC5SetupP33_815782AA972C2E4207EC20C3BE273F6B31iPhoneNewFeaturesViewController_gradientView] = 0;
  v6 = OBJC_IVAR____TtC5SetupP33_815782AA972C2E4207EC20C3BE273F6B31iPhoneNewFeaturesViewController_labelsContainer;
  *&v3[v6] = [objc_allocWithZone(UIView) init];
  *&v3[OBJC_IVAR____TtC5SetupP33_815782AA972C2E4207EC20C3BE273F6B31iPhoneNewFeaturesViewController_currentTextScrollView] = 0;
  *&v3[OBJC_IVAR____TtC5SetupP33_815782AA972C2E4207EC20C3BE273F6B31iPhoneNewFeaturesViewController_continueButtonContainer] = 0;
  *&v3[OBJC_IVAR____TtC5SetupP33_815782AA972C2E4207EC20C3BE273F6B31iPhoneNewFeaturesViewController_continueButton] = 0;
  v7 = OBJC_IVAR____TtC5SetupP33_815782AA972C2E4207EC20C3BE273F6B31iPhoneNewFeaturesViewController_buttonTray;
  *&v3[v7] = [objc_allocWithZone(OBButtonTray) init];
  if (a2)
  {
    v8 = String._bridgeToObjectiveC()();
  }

  else
  {
    v8 = 0;
  }

  v11.receiver = v3;
  v11.super_class = type metadata accessor for iPhoneNewFeaturesViewController();
  v9 = objc_msgSendSuper2(&v11, "initWithNibName:bundle:", v8, a3);

  return v9;
}

id sub_100034944(void *a1)
{
  *&v1[OBJC_IVAR____TtC5SetupP33_815782AA972C2E4207EC20C3BE273F6B31iPhoneNewFeaturesViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC5SetupP33_815782AA972C2E4207EC20C3BE273F6B31iPhoneNewFeaturesViewController_playerView] = 0;
  *&v1[OBJC_IVAR____TtC5SetupP33_815782AA972C2E4207EC20C3BE273F6B31iPhoneNewFeaturesViewController_pageControl] = 0;
  *&v1[OBJC_IVAR____TtC5SetupP33_815782AA972C2E4207EC20C3BE273F6B31iPhoneNewFeaturesViewController_gradientView] = 0;
  v3 = OBJC_IVAR____TtC5SetupP33_815782AA972C2E4207EC20C3BE273F6B31iPhoneNewFeaturesViewController_labelsContainer;
  *&v1[v3] = [objc_allocWithZone(UIView) init];
  *&v1[OBJC_IVAR____TtC5SetupP33_815782AA972C2E4207EC20C3BE273F6B31iPhoneNewFeaturesViewController_currentTextScrollView] = 0;
  *&v1[OBJC_IVAR____TtC5SetupP33_815782AA972C2E4207EC20C3BE273F6B31iPhoneNewFeaturesViewController_continueButtonContainer] = 0;
  *&v1[OBJC_IVAR____TtC5SetupP33_815782AA972C2E4207EC20C3BE273F6B31iPhoneNewFeaturesViewController_continueButton] = 0;
  v4 = OBJC_IVAR____TtC5SetupP33_815782AA972C2E4207EC20C3BE273F6B31iPhoneNewFeaturesViewController_buttonTray;
  *&v1[v4] = [objc_allocWithZone(OBButtonTray) init];
  v7.receiver = v1;
  v7.super_class = type metadata accessor for iPhoneNewFeaturesViewController();
  v5 = objc_msgSendSuper2(&v7, "initWithCoder:", a1);

  if (v5)
  {
  }

  return v5;
}

void sub_100034B94(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC5SetupP33_815782AA972C2E4207EC20C3BE273F6B31iPhoneNewFeaturesViewController_playerView);
  *(v1 + OBJC_IVAR____TtC5SetupP33_815782AA972C2E4207EC20C3BE273F6B31iPhoneNewFeaturesViewController_playerView) = a1;
  v2 = a1;
}

void sub_100034BDC(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC5SetupP33_815782AA972C2E4207EC20C3BE273F6B31iPhoneNewFeaturesViewController_pageControl);
  *(v1 + OBJC_IVAR____TtC5SetupP33_815782AA972C2E4207EC20C3BE273F6B31iPhoneNewFeaturesViewController_pageControl) = a1;
  v2 = a1;
}

uint64_t sub_100034C28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  v16 = swift_task_alloc();
  *(v8 + 16) = v16;
  *v16 = v8;
  v16[1] = sub_10003B264;

  return sub_10003949C(a2, a3, a4, a5, a6, a7, a8);
}

id sub_100034D14(char a1)
{
  v2 = &selRef_showButtonsBusy;
  if ((a1 & 1) == 0)
  {
    v2 = &selRef_showButtonsAvailable;
  }

  return [*(v1 + OBJC_IVAR____TtC5SetupP33_815782AA972C2E4207EC20C3BE273F6B31iPhoneNewFeaturesViewController_buttonTray) *v2];
}

uint64_t sub_100034D44()
{
  v1 = OBJC_IVAR____TtC5SetupP33_815782AA972C2E4207EC20C3BE273F6B29iPadNewFeaturesViewController____lazy_storage___isLargeScreen;
  v2 = *(v0 + OBJC_IVAR____TtC5SetupP33_815782AA972C2E4207EC20C3BE273F6B29iPadNewFeaturesViewController____lazy_storage___isLargeScreen);
  if (v2 == 2)
  {
    LOBYTE(v2) = sub_100034D84();
    *(v0 + v1) = v2 & 1;
  }

  return v2 & 1;
}

BOOL sub_100034D84()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = String._bridgeToObjectiveC()();
  v5 = MGGetSInt32Answer();

  v6 = String._bridgeToObjectiveC()();
  v7 = MGGetSInt32Answer();

  static Logger.purpleBuddyGeneral.getter();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 67109376;
    *(v10 + 4) = v5;
    *(v10 + 8) = 1024;
    *(v10 + 10) = v7;
    _os_log_impl(&_mh_execute_header, v8, v9, "Screen size is %dx%d", v10, 0xEu);
  }

  if (v7 > v5)
  {
    v5 = v7;
  }

  (*(v1 + 8))(v3, v0);
  return v5 > 2420;
}

id sub_100034F4C()
{
  *&v0[OBJC_IVAR____TtC5SetupP33_815782AA972C2E4207EC20C3BE273F6B29iPadNewFeaturesViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v1 = OBJC_IVAR____TtC5SetupP33_815782AA972C2E4207EC20C3BE273F6B29iPadNewFeaturesViewController_containerScrollView;
  *&v0[v1] = [objc_allocWithZone(UIScrollView) init];
  *&v0[OBJC_IVAR____TtC5SetupP33_815782AA972C2E4207EC20C3BE273F6B29iPadNewFeaturesViewController_playerGradientView] = 0;
  v2 = OBJC_IVAR____TtC5SetupP33_815782AA972C2E4207EC20C3BE273F6B29iPadNewFeaturesViewController_textContainer;
  *&v0[v2] = [objc_allocWithZone(UIView) init];
  swift_unknownObjectWeakInit();
  *&v0[OBJC_IVAR____TtC5SetupP33_815782AA972C2E4207EC20C3BE273F6B29iPadNewFeaturesViewController_pageControl] = 0;
  *&v0[OBJC_IVAR____TtC5SetupP33_815782AA972C2E4207EC20C3BE273F6B29iPadNewFeaturesViewController_playerView] = 0;
  *&v0[OBJC_IVAR____TtC5SetupP33_815782AA972C2E4207EC20C3BE273F6B29iPadNewFeaturesViewController_continueButton] = 0;
  v0[OBJC_IVAR____TtC5SetupP33_815782AA972C2E4207EC20C3BE273F6B29iPadNewFeaturesViewController____lazy_storage___isLargeScreen] = 2;
  v3 = String._bridgeToObjectiveC()();
  v6.receiver = v0;
  v6.super_class = type metadata accessor for iPadNewFeaturesViewController();
  v4 = objc_msgSendSuper2(&v6, "initWithTitle:detailText:icon:contentLayout:", v3, 0, 0, 2);

  return v4;
}

void sub_100035070()
{
  v1 = v0;
  v222.receiver = v0;
  v222.super_class = type metadata accessor for iPadNewFeaturesViewController();
  objc_msgSendSuper2(&v222, "viewDidLoad");
  v2 = [v0 headerView];
  [v2 setHidden:1];

  v3 = [v1 scrollView];
  [v3 setHidden:1];

  v4 = [v1 scrollView];
  [v4 setUserInteractionEnabled:0];

  v5 = [v1 view];
  if (!v5)
  {
    __break(1u);
    goto LABEL_60;
  }

  v6 = v5;
  v7 = objc_opt_self();
  v8 = [v7 blackColor];
  [v6 setBackgroundColor:v8];

  v9 = OBJC_IVAR____TtC5SetupP33_815782AA972C2E4207EC20C3BE273F6B29iPadNewFeaturesViewController_containerScrollView;
  [*&v1[OBJC_IVAR____TtC5SetupP33_815782AA972C2E4207EC20C3BE273F6B29iPadNewFeaturesViewController_containerScrollView] setTranslatesAutoresizingMaskIntoConstraints:0];
  [*&v1[v9] setContentInsetAdjustmentBehavior:2];
  v10 = [v1 view];
  if (!v10)
  {
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  v11 = v10;
  v220 = v9;
  [v10 addSubview:*&v1[v9]];

  sub_100006410(&qword_1003A1400);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100298440;
  v13 = *&v1[OBJC_IVAR____TtC5SetupP33_815782AA972C2E4207EC20C3BE273F6B29iPadNewFeaturesViewController_playerView];
  if (!v13)
  {
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  v14 = inited;
  v221 = OBJC_IVAR____TtC5SetupP33_815782AA972C2E4207EC20C3BE273F6B29iPadNewFeaturesViewController_playerView;
  *(inited + 32) = v13;
  v217 = OBJC_IVAR____TtC5SetupP33_815782AA972C2E4207EC20C3BE273F6B29iPadNewFeaturesViewController_pageControl;
  v15 = *&v1[OBJC_IVAR____TtC5SetupP33_815782AA972C2E4207EC20C3BE273F6B29iPadNewFeaturesViewController_pageControl];
  if (!v15)
  {
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  *(inited + 40) = v15;
  v16 = OBJC_IVAR____TtC5SetupP33_815782AA972C2E4207EC20C3BE273F6B29iPadNewFeaturesViewController_textContainer;
  v17 = *&v1[OBJC_IVAR____TtC5SetupP33_815782AA972C2E4207EC20C3BE273F6B29iPadNewFeaturesViewController_textContainer];
  *(inited + 48) = v17;
  v18 = inited & 0xC000000000000001;
  v19 = v13;
  v20 = v15;
  v21 = v17;
  if (v18)
  {
    goto LABEL_56;
  }

  v22 = v9;
  v23 = &selRef_aa_authToken;
  if (!*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_55;
  }

  v24 = v19;
  while (1)
  {
    [v24 setTranslatesAutoresizingMaskIntoConstraints:0];
    [*&v1[v22] v23[134]];

    if (v18)
    {
      v25 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
      {
        goto LABEL_55;
      }

      v25 = *(v14 + 40);
    }

    v26 = v25;
    [v25 setTranslatesAutoresizingMaskIntoConstraints:0];
    [*&v1[v22] v23[134]];

    if (v18)
    {
      break;
    }

    if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 3uLL)
    {
      v27 = *(v14 + 48);
      goto LABEL_14;
    }

LABEL_55:
    __break(1u);
LABEL_56:
    v24 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    v22 = v9;
    v23 = &selRef_aa_authToken;
  }

  v27 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_14:
  v28 = v27;
  [v27 setTranslatesAutoresizingMaskIntoConstraints:{0, v16}];
  [*&v1[v22] v23[134]];

  swift_setDeallocating();
  swift_arrayDestroy();
  v29 = *&v1[v221];
  if (!v29)
  {
    goto LABEL_63;
  }

  [v29 setAccessibilityElementsHidden:1];
  type metadata accessor for GradientView();
  v30 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v31 = OBJC_IVAR____TtC5SetupP33_815782AA972C2E4207EC20C3BE273F6B29iPadNewFeaturesViewController_playerGradientView;
  v32 = *&v1[OBJC_IVAR____TtC5SetupP33_815782AA972C2E4207EC20C3BE273F6B29iPadNewFeaturesViewController_playerGradientView];
  *&v1[OBJC_IVAR____TtC5SetupP33_815782AA972C2E4207EC20C3BE273F6B29iPadNewFeaturesViewController_playerGradientView] = v30;

  v33 = *&v1[v31];
  if (!v33)
  {
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  [*(v33 + OBJC_IVAR____TtC5SetupP33_815782AA972C2E4207EC20C3BE273F6B12GradientView_gradientLayer) setStartPoint:{0.5, 0.0}];
  v34 = *&v1[v31];
  if (!v34)
  {
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  [*(v34 + OBJC_IVAR____TtC5SetupP33_815782AA972C2E4207EC20C3BE273F6B12GradientView_gradientLayer) setEndPoint:{0.5, 1.0}];
  v35 = *&v1[v31];
  if (!v35)
  {
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  v36 = *(v35 + OBJC_IVAR____TtC5SetupP33_815782AA972C2E4207EC20C3BE273F6B12GradientView_gradientLayer);
  sub_100006410(&qword_1003A1DB0);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_100298460;
  v219 = v36;
  v38 = [v7 blackColor];
  v39 = [v38 CGColor];

  type metadata accessor for CGColor(0);
  v41 = v40;
  *(v37 + 56) = v40;
  *(v37 + 32) = v39;
  v42 = [v7 blackColor];
  v43 = [v42 colorWithAlphaComponent:0.95];

  v44 = [v43 CGColor];
  *(v37 + 88) = v41;
  *(v37 + 64) = v44;
  v45 = [v7 blackColor];
  v46 = [v45 colorWithAlphaComponent:0.9];

  v47 = [v46 CGColor];
  *(v37 + 120) = v41;
  *(v37 + 96) = v47;
  v48 = [v7 blackColor];
  v49 = [v48 colorWithAlphaComponent:0.85];

  v50 = [v49 CGColor];
  *(v37 + 152) = v41;
  *(v37 + 128) = v50;
  v51 = [v7 blackColor];
  v52 = [v51 colorWithAlphaComponent:0.8];

  v53 = [v52 CGColor];
  *(v37 + 184) = v41;
  *(v37 + 160) = v53;
  v54 = [v7 blackColor];
  v55 = [v54 colorWithAlphaComponent:0.75];

  v56 = [v55 CGColor];
  *(v37 + 216) = v41;
  *(v37 + 192) = v56;
  v57 = [v7 blackColor];
  v58 = [v57 colorWithAlphaComponent:0.7];

  v59 = [v58 CGColor];
  *(v37 + 248) = v41;
  *(v37 + 224) = v59;
  v60 = [v7 blackColor];
  v61 = [v60 colorWithAlphaComponent:0.65];

  v62 = [v61 CGColor];
  *(v37 + 280) = v41;
  *(v37 + 256) = v62;
  v63 = [v7 blackColor];
  v64 = [v63 colorWithAlphaComponent:0.6];

  v65 = [v64 CGColor];
  *(v37 + 312) = v41;
  *(v37 + 288) = v65;
  v66 = [v7 blackColor];
  v67 = [v66 colorWithAlphaComponent:0.55];

  v68 = [v67 CGColor];
  *(v37 + 344) = v41;
  *(v37 + 320) = v68;
  v69 = [v7 blackColor];
  v70 = [v69 colorWithAlphaComponent:0.5];

  v71 = [v70 CGColor];
  *(v37 + 376) = v41;
  *(v37 + 352) = v71;
  v72 = [v7 blackColor];
  v73 = [v72 colorWithAlphaComponent:0.45];

  v74 = [v73 CGColor];
  *(v37 + 408) = v41;
  *(v37 + 384) = v74;
  v75 = [v7 blackColor];
  v76 = [v75 colorWithAlphaComponent:0.4];

  v77 = [v76 CGColor];
  *(v37 + 440) = v41;
  *(v37 + 416) = v77;
  v78 = [v7 blackColor];
  v79 = [v78 colorWithAlphaComponent:0.35];

  v80 = [v79 CGColor];
  *(v37 + 472) = v41;
  *(v37 + 448) = v80;
  v81 = [v7 blackColor];
  v82 = [v81 colorWithAlphaComponent:0.3];

  v83 = [v82 CGColor];
  *(v37 + 504) = v41;
  *(v37 + 480) = v83;
  v84 = [v7 blackColor];
  v85 = [v84 colorWithAlphaComponent:0.25];

  v86 = [v85 CGColor];
  *(v37 + 536) = v41;
  *(v37 + 512) = v86;
  v87 = [v7 blackColor];
  v88 = [v87 colorWithAlphaComponent:0.2];

  v89 = [v88 CGColor];
  *(v37 + 568) = v41;
  *(v37 + 544) = v89;
  v90 = [v7 blackColor];
  v91 = [v90 colorWithAlphaComponent:0.15];

  v92 = [v91 CGColor];
  *(v37 + 600) = v41;
  *(v37 + 576) = v92;
  v93 = [v7 blackColor];
  v94 = [v93 colorWithAlphaComponent:0.1];

  v95 = [v94 CGColor];
  *(v37 + 632) = v41;
  *(v37 + 608) = v95;
  v96 = [v7 blackColor];
  v97 = [v96 colorWithAlphaComponent:0.05];

  v98 = [v97 CGColor];
  *(v37 + 664) = v41;
  *(v37 + 640) = v98;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v219 setColors:isa];

  v100 = *&v1[v31];
  if (!v100)
  {
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  v101 = *(v100 + OBJC_IVAR____TtC5SetupP33_815782AA972C2E4207EC20C3BE273F6B12GradientView_gradientLayer);
  v102 = swift_allocObject();
  *(v102 + 16) = xmmword_100298470;
  sub_10003ABF0(0, &qword_1003A0330);
  v103 = v101;
  *(v102 + 32) = NSNumber.init(floatLiteral:)(0.0);
  *(v102 + 40) = NSNumber.init(floatLiteral:)(0.0125);
  *(v102 + 48) = NSNumber.init(floatLiteral:)(0.025);
  *(v102 + 56) = NSNumber.init(floatLiteral:)(0.0375);
  *(v102 + 64) = NSNumber.init(floatLiteral:)(0.05);
  *(v102 + 72) = NSNumber.init(floatLiteral:)(0.0625);
  *(v102 + 80) = NSNumber.init(floatLiteral:)(0.075);
  *(v102 + 88) = NSNumber.init(floatLiteral:)(0.0875);
  *(v102 + 96) = NSNumber.init(floatLiteral:)(0.1);
  *(v102 + 104) = NSNumber.init(floatLiteral:)(0.1125);
  *(v102 + 112) = NSNumber.init(floatLiteral:)(0.125);
  *(v102 + 120) = NSNumber.init(floatLiteral:)(0.1375);
  *(v102 + 128) = NSNumber.init(floatLiteral:)(0.15);
  *(v102 + 136) = NSNumber.init(floatLiteral:)(0.1625);
  *(v102 + 144) = NSNumber.init(floatLiteral:)(0.175);
  *(v102 + 152) = NSNumber.init(floatLiteral:)(0.1875);
  *(v102 + 160) = NSNumber.init(floatLiteral:)(0.2);
  *(v102 + 168) = NSNumber.init(floatLiteral:)(0.2125);
  *(v102 + 176) = NSNumber.init(floatLiteral:)(0.225);
  *(v102 + 184) = NSNumber.init(floatLiteral:)(0.25);
  v104 = Array._bridgeToObjectiveC()().super.isa;

  [v103 setLocations:v104];

  v105 = *&v1[v31];
  if (!v105)
  {
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

  [v105 setTranslatesAutoresizingMaskIntoConstraints:0];
  v106 = *&v1[v31];
  if (!v106)
  {
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  [v106 setClipsToBounds:1];
  v107 = *&v1[v31];
  if (!v107)
  {
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  v108 = v107;
  v109 = [v7 clearColor];
  [v108 setBackgroundColor:v109];

  v110 = *&v1[v31];
  if (!v110)
  {
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v111 = [v110 layer];
  v112 = [v7 clearColor];
  v113 = [v112 CGColor];

  [v111 setBackgroundColor:v113];
  v114 = *&v1[v31];
  if (!v114)
  {
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  [v114 setAlpha:0.0];
  v115 = [v1 view];
  if (!v115)
  {
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  if (!*&v1[v31])
  {
LABEL_74:
    __break(1u);
    goto LABEL_75;
  }

  v116 = v115;
  [v115 addSubview:?];

  v117 = [objc_opt_self() boldButton];
  v118 = *&v1[OBJC_IVAR____TtC5SetupP33_815782AA972C2E4207EC20C3BE273F6B29iPadNewFeaturesViewController_continueButton];
  *&v1[OBJC_IVAR____TtC5SetupP33_815782AA972C2E4207EC20C3BE273F6B29iPadNewFeaturesViewController_continueButton] = v117;
  v119 = v117;

  [v119 addTarget:v1 action:"continueButtonTapped" forControlEvents:64];
  v120 = [v1 buttonTray];
  [v120 addButton:v119];

  v121 = swift_allocObject();
  *(v121 + 16) = xmmword_100298480;
  v122 = [*&v1[v220] leadingAnchor];
  v123 = [v1 view];
  if (!v123)
  {
LABEL_75:
    __break(1u);
    goto LABEL_76;
  }

  v124 = v123;
  v125 = [v123 leadingAnchor];

  v126 = [v122 constraintEqualToAnchor:v125];
  *(v121 + 32) = v126;
  v127 = [*&v1[v220] trailingAnchor];
  v128 = [v1 view];
  if (!v128)
  {
LABEL_76:
    __break(1u);
    goto LABEL_77;
  }

  v129 = v128;
  v130 = [v128 trailingAnchor];

  v131 = [v127 constraintEqualToAnchor:v130];
  *(v121 + 40) = v131;
  v132 = [*&v1[v220] topAnchor];
  v133 = [v1 view];
  if (!v133)
  {
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
    goto LABEL_79;
  }

  v134 = v133;
  v135 = [v133 topAnchor];

  v136 = sub_100034D44();
  v137 = 50.0;
  if ((v136 & 1) == 0)
  {
    v137 = 0.0;
  }

  v138 = [v132 constraintEqualToAnchor:v135 constant:v137];

  *(v121 + 48) = v138;
  v139 = [*&v1[v220] bottomAnchor];
  v140 = [v1 view];
  if (!v140)
  {
    goto LABEL_78;
  }

  v141 = v140;
  v218 = v119;
  v142 = [v140 bottomAnchor];

  v143 = [v139 constraintEqualToAnchor:v142];
  *(v121 + 56) = v143;
  v144 = *&v1[v221];
  if (!v144)
  {
LABEL_79:
    __break(1u);
    goto LABEL_80;
  }

  v145 = [v144 topAnchor];
  v146 = [*&v1[v220] topAnchor];
  v147 = [v145 constraintEqualToAnchor:v146];

  *(v121 + 64) = v147;
  v148 = *&v1[v221];
  if (!v148)
  {
LABEL_80:
    __break(1u);
    goto LABEL_81;
  }

  v149 = [v148 heightAnchor];
  v150 = [*&v1[v220] widthAnchor];
  v151 = [v149 constraintEqualToAnchor:v150 multiplier:0.512820513];

  *(v121 + 72) = v151;
  v152 = *&v1[v221];
  if (!v152)
  {
LABEL_81:
    __break(1u);
    goto LABEL_82;
  }

  v153 = [v152 leadingAnchor];
  v154 = [*&v1[v220] leadingAnchor];
  v155 = [v153 constraintEqualToAnchor:v154];

  *(v121 + 80) = v155;
  v156 = *&v1[v221];
  if (!v156)
  {
LABEL_82:
    __break(1u);
    goto LABEL_83;
  }

  v157 = [v156 trailingAnchor];
  v158 = [*&v1[v220] trailingAnchor];
  v159 = [v157 constraintEqualToAnchor:v158];

  *(v121 + 88) = v159;
  v160 = *&v1[v221];
  if (!v160)
  {
LABEL_83:
    __break(1u);
    goto LABEL_84;
  }

  v161 = [v160 widthAnchor];
  v162 = [v1 view];
  if (!v162)
  {
LABEL_84:
    __break(1u);
    goto LABEL_85;
  }

  v163 = v162;
  v164 = [v162 widthAnchor];

  v165 = [v161 constraintEqualToAnchor:v164];
  *(v121 + 96) = v165;
  v166 = *&v1[v31];
  if (!v166)
  {
LABEL_85:
    __break(1u);
    goto LABEL_86;
  }

  v167 = [v166 topAnchor];
  v168 = *&v1[v221];
  if (!v168)
  {
LABEL_86:
    __break(1u);
    goto LABEL_87;
  }

  v169 = [v168 topAnchor];
  v170 = [v167 constraintEqualToAnchor:v169];

  *(v121 + 104) = v170;
  v171 = *&v1[v31];
  if (!v171)
  {
LABEL_87:
    __break(1u);
    goto LABEL_88;
  }

  v172 = [v171 bottomAnchor];
  v173 = *&v1[v221];
  if (!v173)
  {
LABEL_88:
    __break(1u);
    goto LABEL_89;
  }

  v174 = [v173 bottomAnchor];
  v175 = [v172 constraintEqualToAnchor:v174];

  *(v121 + 112) = v175;
  v176 = *&v1[v31];
  if (!v176)
  {
LABEL_89:
    __break(1u);
    goto LABEL_90;
  }

  v177 = [v176 leadingAnchor];
  v178 = *&v1[v221];
  if (!v178)
  {
LABEL_90:
    __break(1u);
    goto LABEL_91;
  }

  v179 = [v178 leadingAnchor];
  v180 = [v177 constraintEqualToAnchor:v179];

  *(v121 + 120) = v180;
  v181 = *&v1[v31];
  if (!v181)
  {
LABEL_91:
    __break(1u);
    goto LABEL_92;
  }

  v182 = [v181 trailingAnchor];
  v183 = *&v1[v221];
  if (!v183)
  {
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  v184 = [v183 trailingAnchor];
  v185 = [v182 constraintEqualToAnchor:v184];

  *(v121 + 128) = v185;
  v186 = *&v1[v217];
  if (!v186)
  {
LABEL_93:
    __break(1u);
    goto LABEL_94;
  }

  v187 = [v186 topAnchor];
  v188 = *&v1[v221];
  if (!v188)
  {
LABEL_94:
    __break(1u);
    goto LABEL_95;
  }

  v189 = [v188 bottomAnchor];
  v190 = [v187 constraintEqualToAnchor:v189 constant:14.0];

  *(v121 + 136) = v190;
  v191 = *&v1[v217];
  if (!v191)
  {
LABEL_95:
    __break(1u);
    goto LABEL_96;
  }

  v192 = [v191 widthAnchor];
  v193 = [v1 view];
  if (!v193)
  {
LABEL_96:
    __break(1u);
    goto LABEL_97;
  }

  v194 = v193;
  v195 = [v193 widthAnchor];

  v196 = [v192 constraintEqualToAnchor:v195];
  *(v121 + 144) = v196;
  v197 = [*&v1[v216] topAnchor];
  v198 = *&v1[v217];
  if (!v198)
  {
LABEL_97:
    __break(1u);
    return;
  }

  v199 = [v198 bottomAnchor];
  if (v1[OBJC_IVAR____TtC5SetupP33_815782AA972C2E4207EC20C3BE273F6B29iPadNewFeaturesViewController____lazy_storage___isLargeScreen])
  {
    v200 = 62.0;
  }

  else
  {
    v200 = 12.0;
  }

  v201 = objc_opt_self();
  v202 = [v197 constraintEqualToAnchor:v199 constant:v200];

  *(v121 + 152) = v202;
  v203 = [*&v1[v216] bottomAnchor];
  v204 = [*&v1[v220] bottomAnchor];
  v205 = [v203 constraintEqualToAnchor:v204];

  *(v121 + 160) = v205;
  v206 = [*&v1[v216] centerXAnchor];
  v207 = [*&v1[v220] centerXAnchor];
  v208 = [v206 constraintEqualToAnchor:v207];

  *(v121 + 168) = v208;
  v209 = [*&v1[v216] widthAnchor];
  v210 = [v1 contentView];
  v211 = [v210 widthAnchor];

  v212 = [v209 constraintEqualToAnchor:v211];
  *(v121 + 176) = v212;
  sub_10003ABF0(0, &qword_1003A0BF0);
  v213 = Array._bridgeToObjectiveC()().super.isa;

  [v201 activateConstraints:v213];

  v214 = [v1 buttonTray];
  v215 = [objc_allocWithZone(_UIScrollPocketInteraction) initWithScrollView:*&v1[v220] edge:4 style:0];
  [v214 addInteraction:v215];

  sub_100037918();
}

void sub_100036A58(void *a1, uint64_t a2, uint64_t (*a3)(void), void (*a4)(id))
{
  v7.receiver = a1;
  v7.super_class = a3(0);
  v5 = v7.receiver;
  v6 = objc_msgSendSuper2(&v7, "viewDidLayoutSubviews");
  a4(v6);
}

uint64_t sub_100036AC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v9 + 49) = a8;
  *(v9 + 144) = a7;
  *(v9 + 152) = v8;
  *(v9 + 128) = a5;
  *(v9 + 136) = a6;
  *(v9 + 112) = a3;
  *(v9 + 120) = a4;
  *(v9 + 96) = a1;
  *(v9 + 104) = a2;
  *(v9 + 160) = type metadata accessor for MainActor();
  *(v9 + 168) = static MainActor.shared.getter();
  v11 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v9 + 176) = v11;
  *(v9 + 184) = v10;

  return _swift_task_switch(sub_100036B70, v11, v10);
}

uint64_t sub_100036B70()
{
  v1 = *(v0 + 112);
  type metadata accessor for NewFeatureTextView();
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *(v0 + 192) = v2;
  if (!v1)
  {
    goto LABEL_7;
  }

  v4 = *(v0 + 104);
  v3 = *(v0 + 112);
  v5 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v5 = v4 & 0xFFFFFFFFFFFFLL;
  }

  if (v5)
  {
    v6 = *(v0 + 128);
    if (!v6)
    {
      return _assertionFailure(_:_:file:line:flags:)();
    }

    v7 = *(v0 + 120);
    *(v0 + 16) = v4;
    *(v0 + 24) = v3;
    *(v0 + 32) = v7;
    *(v0 + 40) = v6;
    *(v0 + 48) = 0;
    sub_1000389E8(v0 + 16);

    v8._countAndFlagsBits = 8236;
    v8._object = 0xE200000000000000;
    String.append(_:)(v8);
    v9._countAndFlagsBits = v7;
    v9._object = v6;
    String.append(_:)(v9);
    v10 = v4;
    v11 = v3;
  }

  else
  {
LABEL_7:
    v11 = *(v0 + 128);
    if (!v11)
    {
      return _assertionFailure(_:_:file:line:flags:)();
    }

    *(v0 + 56) = *(v0 + 120);
    *(v0 + 64) = v11;
    *(v0 + 72) = 0;
    *(v0 + 80) = 0;
    *(v0 + 88) = 1;
    sub_1000389E8(v0 + 56);

    v10 = *(v0 + 120);
  }

  *(v0 + 200) = v10;
  *(v0 + 208) = v11;
  if (!*(v0 + 49))
  {
    return _assertionFailure(_:_:file:line:flags:)();
  }

  if (*(v0 + 49) == 1)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    *(v0 + 216) = Strong;
    if (Strong)
    {
      v13 = Strong;
      v14 = *(v0 + 152);
      v15 = *(v0 + 144);
      v16 = *(v0 + 136);
      v17 = *(v0 + 96);
      *(v0 + 224) = static MainActor.shared.getter();
      v18 = swift_task_alloc();
      *(v0 + 232) = v18;
      *(v18 + 16) = v14;
      *(v18 + 24) = v2;
      *(v18 + 32) = v16 & 1;
      *(v18 + 40) = v15;
      *(v18 + 48) = v13;
      *(v18 + 56) = v17;
      v19 = swift_task_alloc();
      *(v0 + 240) = v19;
      *v19 = v0;
      v19[1] = sub_100036F24;

      return withCheckedContinuation<A>(isolation:function:_:)();
    }

    return _assertionFailure(_:_:file:line:flags:)();
  }

  v20 = swift_unknownObjectWeakLoadStrong();
  if (v20)
  {
    v21 = v20;
    [v20 removeFromSuperview];
  }

  v22 = *(v0 + 152);
  sub_100037614(v2);
  [*(v22 + OBJC_IVAR____TtC5SetupP33_815782AA972C2E4207EC20C3BE273F6B29iPadNewFeaturesViewController_containerScrollView) _scrollToTopIfPossible:1];
  v23 = *(v0 + 192);
  v24 = UIAccessibilityAnnouncementNotification;
  v25 = String._bridgeToObjectiveC()();

  UIAccessibilityPostNotification(v24, v25);

  v26 = *(v0 + 8);

  return v26();
}

uint64_t sub_100036F24()
{
  v1 = *v0;

  v2 = *(v1 + 184);
  v3 = *(v1 + 176);

  return _swift_task_switch(sub_100037084, v3, v2);
}

uint64_t sub_100037084()
{

  v1 = *(v0 + 192);
  v2 = UIAccessibilityAnnouncementNotification;
  v3 = String._bridgeToObjectiveC()();

  UIAccessibilityPostNotification(v2, v3);

  v4 = *(v0 + 8);

  return v4();
}

void sub_100037134(uint64_t a1, void *a2, void *a3, char a4, void *a5, uint64_t a6, double a7)
{
  v33 = a6;
  v34 = a1;
  v12 = sub_100006410(&qword_1003A2250);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v31 - v14;
  sub_100037614(a3);
  v16 = [a2 view];
  if (v16)
  {
    v17 = v16;
    v18 = [v16 effectiveUserInterfaceLayoutDirection];

    v19 = 1.0;
    if (v18 == 1)
    {
      v19 = -1.0;
    }

    if (a4)
    {
      v20 = v19;
    }

    else
    {
      v20 = -v19;
    }

    [a3 transform];
    CGAffineTransformTranslate(&v35, &aBlock, v20 * 50.0, 0.0);
    aBlock = v35;
    [a3 setTransform:&aBlock];
    [a3 setAlpha:0.0];
    v32 = objc_opt_self();
    v21 = swift_allocObject();
    *(v21 + 16) = a2;
    *(v21 + 24) = a5;
    *(v21 + 32) = v20;
    v22 = v33;
    *(v21 + 40) = a3;
    *(v21 + 48) = v22;
    *&aBlock.tx = sub_10003A5AC;
    *&aBlock.ty = v21;
    *&aBlock.a = _NSConcreteStackBlock;
    *&aBlock.b = 1107296256;
    *&aBlock.c = sub_10002E3B4;
    *&aBlock.d = &unk_1003296C8;
    v23 = _Block_copy(&aBlock);
    v24 = a2;
    v25 = a5;
    v26 = a3;

    (*(v13 + 16))(v15, v34, v12);
    v27 = (*(v13 + 80) + 24) & ~*(v13 + 80);
    v28 = swift_allocObject();
    *(v28 + 16) = v25;
    (*(v13 + 32))(v28 + v27, v15, v12);
    *&aBlock.tx = sub_10003A68C;
    *&aBlock.ty = v28;
    *&aBlock.a = _NSConcreteStackBlock;
    *&aBlock.b = 1107296256;
    *&aBlock.c = sub_10002E3F8;
    *&aBlock.d = &unk_100329718;
    v29 = _Block_copy(&aBlock);
    v30 = v25;

    [v32 animateWithDuration:v23 animations:v29 completion:a7];
    _Block_release(v29);
    _Block_release(v23);
  }

  else
  {
    __break(1u);
  }
}

void sub_10003749C(uint64_t a1, void *a2, void *a3, uint64_t a4, double a5)
{
  [*(a1 + OBJC_IVAR____TtC5SetupP33_815782AA972C2E4207EC20C3BE273F6B29iPadNewFeaturesViewController_containerScrollView) _scrollToTopIfPossible:1];
  [a2 transform];
  CGAffineTransformTranslate(&v13, &v14, a5 * 50.0, 0.0);
  v14 = v13;
  CGAffineTransformInvert(&v13, &v14);
  v14 = v13;
  [a2 setTransform:&v14];
  v14.a = 1.0;
  v14.b = 0.0;
  v14.c = 0.0;
  v14.d = 1.0;
  v14.tx = 0.0;
  v14.ty = 0.0;
  [a3 setTransform:&v14];
  [a3 setAlpha:1.0];
  [a2 setAlpha:0.0];
  v10 = *(a1 + OBJC_IVAR____TtC5SetupP33_815782AA972C2E4207EC20C3BE273F6B29iPadNewFeaturesViewController_playerGradientView);
  if (v10)
  {
    v11 = v10;
    if ((sub_100034D44() & (a4 == 1)) != 0)
    {
      v12 = 1.0;
    }

    else
    {
      v12 = 0.0;
    }

    [v11 setAlpha:v12];
  }

  else
  {
    __break(1u);
  }
}

void sub_100037614(void *a1)
{
  swift_unknownObjectWeakAssign();
  [a1 setTranslatesAutoresizingMaskIntoConstraints:0];
  v3 = OBJC_IVAR____TtC5SetupP33_815782AA972C2E4207EC20C3BE273F6B29iPadNewFeaturesViewController_textContainer;
  [*(v1 + OBJC_IVAR____TtC5SetupP33_815782AA972C2E4207EC20C3BE273F6B29iPadNewFeaturesViewController_textContainer) addSubview:a1];
  if (*(a1 + OBJC_IVAR____TtC5SetupP33_815782AA972C2E4207EC20C3BE273F6B18NewFeatureTextView_style + 32))
  {
    v4 = 326.0;
  }

  else
  {
    v4 = 448.0;
  }

  v5 = objc_opt_self();
  sub_100006410(&qword_1003A1400);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100298490;
  v7 = [a1 topAnchor];
  v8 = [*(v1 + v3) topAnchor];
  v9 = [v7 constraintEqualToAnchor:v8];

  *(v6 + 32) = v9;
  v10 = [a1 bottomAnchor];
  v11 = [*(v1 + v3) bottomAnchor];
  v12 = [v10 constraintEqualToAnchor:v11];

  *(v6 + 40) = v12;
  v13 = [a1 centerXAnchor];
  v14 = [*(v1 + v3) centerXAnchor];
  v15 = [v13 constraintEqualToAnchor:v14];

  *(v6 + 48) = v15;
  v16 = [a1 widthAnchor];
  v17 = [*(v1 + v3) widthAnchor];
  v18 = [v16 constraintLessThanOrEqualToAnchor:v17];

  *(v6 + 56) = v18;
  v19 = [a1 widthAnchor];
  v20 = [v19 constraintEqualToConstant:v4];

  *(v6 + 64) = v20;
  sub_10003ABF0(0, &qword_1003A0BF0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v5 activateConstraints:isa];

  sub_100037918();
}

void sub_100037918()
{
  v1 = OBJC_IVAR____TtC5SetupP33_815782AA972C2E4207EC20C3BE273F6B29iPadNewFeaturesViewController_containerScrollView;
  v2 = *&v0[OBJC_IVAR____TtC5SetupP33_815782AA972C2E4207EC20C3BE273F6B29iPadNewFeaturesViewController_containerScrollView];
  v3 = [v0 buttonTray];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v19.origin.x = v5;
  v19.origin.y = v7;
  v19.size.width = v9;
  v19.size.height = v11;
  CGRectGetHeight(v19);
  [v2 contentInset];
  [v2 setContentInset:?];

  v12 = *&v0[v1];
  [v12 _pocketInsets];
  [v12 _setPocketInsets:?];

  v17 = *&v0[v1];
  v13 = [v0 view];
  if (v13)
  {
    v14 = v13;
    [v13 safeAreaInsets];
    v16 = v15;

    [v17 _pocketInsets];
    [v17 _setPocketInsets:v16];
  }

  else
  {
    __break(1u);
  }
}

void sub_100037A9C(void *a1)
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    v2 = a1;
    sub_100031BA8();
    swift_unknownObjectRelease();
  }
}

void sub_100037C78(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC5SetupP33_815782AA972C2E4207EC20C3BE273F6B29iPadNewFeaturesViewController_playerView);
  *(v1 + OBJC_IVAR____TtC5SetupP33_815782AA972C2E4207EC20C3BE273F6B29iPadNewFeaturesViewController_playerView) = a1;
  v2 = a1;
}

void sub_100037CC0(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC5SetupP33_815782AA972C2E4207EC20C3BE273F6B29iPadNewFeaturesViewController_pageControl);
  *(v1 + OBJC_IVAR____TtC5SetupP33_815782AA972C2E4207EC20C3BE273F6B29iPadNewFeaturesViewController_pageControl) = a1;
  v2 = a1;
}

uint64_t sub_100037D0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  v17 = swift_task_alloc();
  *(v8 + 16) = v17;
  *v17 = v8;
  v17[1] = sub_100037DFC;

  return sub_100036AC4(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_100037DFC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void sub_100037EFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = *(v5 + *a5);
  if (v6)
  {
    v7 = v6;
    v8 = String._bridgeToObjectiveC()();
    [v7 setTitle:v8 forState:0];
  }

  else
  {
    __break(1u);
  }
}

void sub_100037F88(char a1)
{
  v3 = [v1 buttonTray];
  v5 = v3;
  v4 = &selRef_showButtonsBusy;
  if ((a1 & 1) == 0)
  {
    v4 = &selRef_showButtonsAvailable;
  }

  [v3 *v4];
}

char *sub_100038000(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC5SetupP33_815782AA972C2E4207EC20C3BE273F6B12GradientView_gradientLayer;
  *&v4[v9] = [objc_allocWithZone(CAGradientLayer) init];
  v14.receiver = v4;
  v14.super_class = type metadata accessor for GradientView();
  v10 = objc_msgSendSuper2(&v14, "initWithFrame:", a1, a2, a3, a4);
  v11 = [v10 layer];
  [v11 addSublayer:*&v10[OBJC_IVAR____TtC5SetupP33_815782AA972C2E4207EC20C3BE273F6B12GradientView_gradientLayer]];

  v12 = [v10 layer];
  [v12 setMasksToBounds:1];

  return v10;
}

id sub_10003813C(void *a1)
{
  v3 = OBJC_IVAR____TtC5SetupP33_815782AA972C2E4207EC20C3BE273F6B12GradientView_gradientLayer;
  *&v1[v3] = [objc_allocWithZone(CAGradientLayer) init];
  v10.receiver = v1;
  v10.super_class = type metadata accessor for GradientView();
  v4 = objc_msgSendSuper2(&v10, "initWithCoder:", a1);
  v5 = v4;
  if (v4)
  {
    v6 = v4;
    v7 = [v6 layer];
    [v7 addSublayer:*&v6[OBJC_IVAR____TtC5SetupP33_815782AA972C2E4207EC20C3BE273F6B12GradientView_gradientLayer]];

    v8 = [v6 layer];
    [v8 setMasksToBounds:1];

    a1 = v8;
  }

  return v5;
}

char *sub_100038338(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC5SetupP33_815782AA972C2E4207EC20C3BE273F6B18NewFeatureTextView_titleLabel;
  *&v4[v9] = [objc_allocWithZone(UILabel) init];
  v10 = OBJC_IVAR____TtC5SetupP33_815782AA972C2E4207EC20C3BE273F6B18NewFeatureTextView_bodyLabel;
  *&v4[v10] = [objc_allocWithZone(UILabel) init];
  v11 = &v4[OBJC_IVAR____TtC5SetupP33_815782AA972C2E4207EC20C3BE273F6B18NewFeatureTextView_style];
  *v11 = xmmword_1002984A0;
  *(v11 + 1) = xmmword_1002984A0;
  v11[32] = 0;
  v53.receiver = v4;
  v53.super_class = type metadata accessor for NewFeatureTextView();
  v12 = objc_msgSendSuper2(&v53, "initWithFrame:", a1, a2, a3, a4);
  sub_100006410(&qword_1003A1400);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100297C60;
  v51 = OBJC_IVAR____TtC5SetupP33_815782AA972C2E4207EC20C3BE273F6B18NewFeatureTextView_titleLabel;
  v14 = *&v12[OBJC_IVAR____TtC5SetupP33_815782AA972C2E4207EC20C3BE273F6B18NewFeatureTextView_titleLabel];
  *(inited + 32) = v14;
  v52 = OBJC_IVAR____TtC5SetupP33_815782AA972C2E4207EC20C3BE273F6B18NewFeatureTextView_bodyLabel;
  v15 = *&v12[OBJC_IVAR____TtC5SetupP33_815782AA972C2E4207EC20C3BE273F6B18NewFeatureTextView_bodyLabel];
  *(inited + 40) = v15;
  v16 = v12;
  v17 = v14;
  v18 = v15;
  if ((inited & 0xC000000000000001) != 0)
  {
    goto LABEL_9;
  }

  if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_8;
  }

  for (i = v17; ; i = specialized _ArrayBuffer._getElementSlowPath(_:)())
  {
    v20 = i;
    [i setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v21) = 1148846080;
    [v20 setContentHuggingPriority:1 forAxis:v21];
    [v20 setNumberOfLines:0];
    [v16 addSubview:v20];

    if ((inited & 0xC000000000000001) != 0)
    {
      break;
    }

    if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2uLL)
    {
      v22 = *(inited + 40);
      goto LABEL_7;
    }

LABEL_8:
    __break(1u);
LABEL_9:
    ;
  }

  v22 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_7:
  v23 = v22;
  [v22 setTranslatesAutoresizingMaskIntoConstraints:0];
  LODWORD(v24) = 1148846080;
  [v23 setContentHuggingPriority:1 forAxis:v24];
  [v23 setNumberOfLines:0];
  [v16 addSubview:v23];

  swift_setDeallocating();
  swift_arrayDestroy();
  v50 = objc_opt_self();
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1002984B0;
  v26 = [*&v12[v51] topAnchor];
  v27 = v16;
  v28 = [v27 topAnchor];
  v29 = [v26 constraintEqualToAnchor:v28];

  *(v25 + 32) = v29;
  v30 = [*&v12[v51] bottomAnchor];
  v31 = [*&v12[v52] topAnchor];
  v32 = [v30 constraintEqualToAnchor:v31];

  *(v25 + 40) = v32;
  v33 = [*&v12[v52] bottomAnchor];
  v34 = [v27 bottomAnchor];
  v35 = [v33 constraintLessThanOrEqualToAnchor:v34];

  *(v25 + 48) = v35;
  v36 = [*&v12[v51] leadingAnchor];
  v37 = [v27 leadingAnchor];
  v38 = [v36 constraintEqualToAnchor:v37];

  *(v25 + 56) = v38;
  v39 = [*&v12[v51] trailingAnchor];
  v40 = [v27 trailingAnchor];
  v41 = [v39 constraintEqualToAnchor:v40];

  *(v25 + 64) = v41;
  v42 = [*&v12[v52] leadingAnchor];
  v43 = [v27 leadingAnchor];
  v44 = [v42 constraintEqualToAnchor:v43];

  *(v25 + 72) = v44;
  v45 = [*&v12[v52] trailingAnchor];
  v46 = [v27 trailingAnchor];

  v47 = [v45 constraintEqualToAnchor:v46];
  *(v25 + 80) = v47;
  sub_10003ABF0(0, &qword_1003A0BF0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v50 activateConstraints:isa];

  return v27;
}

id sub_1000388F0(void *a1)
{
  v3 = OBJC_IVAR____TtC5SetupP33_815782AA972C2E4207EC20C3BE273F6B18NewFeatureTextView_titleLabel;
  *&v1[v3] = [objc_allocWithZone(UILabel) init];
  v4 = OBJC_IVAR____TtC5SetupP33_815782AA972C2E4207EC20C3BE273F6B18NewFeatureTextView_bodyLabel;
  *&v1[v4] = [objc_allocWithZone(UILabel) init];
  v5 = &v1[OBJC_IVAR____TtC5SetupP33_815782AA972C2E4207EC20C3BE273F6B18NewFeatureTextView_style];
  *v5 = xmmword_1002984A0;
  *(v5 + 1) = xmmword_1002984A0;
  v5[32] = 0;
  v8.receiver = v1;
  v8.super_class = type metadata accessor for NewFeatureTextView();
  v6 = objc_msgSendSuper2(&v8, "initWithCoder:", a1);

  if (v6)
  {
  }

  return v6;
}

void sub_1000389E8(uint64_t a1)
{
  v3 = v1 + OBJC_IVAR____TtC5SetupP33_815782AA972C2E4207EC20C3BE273F6B18NewFeatureTextView_style;
  v4 = *(v1 + OBJC_IVAR____TtC5SetupP33_815782AA972C2E4207EC20C3BE273F6B18NewFeatureTextView_style);
  v5 = *(v1 + OBJC_IVAR____TtC5SetupP33_815782AA972C2E4207EC20C3BE273F6B18NewFeatureTextView_style + 8);
  v6 = *(v1 + OBJC_IVAR____TtC5SetupP33_815782AA972C2E4207EC20C3BE273F6B18NewFeatureTextView_style + 16);
  v7 = *(v1 + OBJC_IVAR____TtC5SetupP33_815782AA972C2E4207EC20C3BE273F6B18NewFeatureTextView_style + 24);
  v8 = *(v1 + OBJC_IVAR____TtC5SetupP33_815782AA972C2E4207EC20C3BE273F6B18NewFeatureTextView_style + 32);
  v9 = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 16) = v9;
  *(v3 + 32) = *(a1 + 32);
  sub_10003A4C8(a1, v29);
  sub_10003A500(v4, v5, v6, v7, v8);
  if (*(a1 + 32))
  {
    v10 = *(v1 + OBJC_IVAR____TtC5SetupP33_815782AA972C2E4207EC20C3BE273F6B18NewFeatureTextView_titleLabel);
    v11 = String._bridgeToObjectiveC()();
    [v10 setText:v11];

    v12 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleTitle3];
    [v10 setFont:v12];

    [v10 setTextAlignment:1];
    v13 = [objc_opt_self() secondaryLabelColor];
    [v10 setTextColor:v13];

    v14 = *(v1 + OBJC_IVAR____TtC5SetupP33_815782AA972C2E4207EC20C3BE273F6B18NewFeatureTextView_bodyLabel);
    v15 = String._bridgeToObjectiveC()();
    [v14 setText:v15];
  }

  else
  {
    v16 = *(v1 + OBJC_IVAR____TtC5SetupP33_815782AA972C2E4207EC20C3BE273F6B18NewFeatureTextView_titleLabel);
    v17 = String._bridgeToObjectiveC()();
    [v16 setText:v17];

    v18 = *(v1 + OBJC_IVAR____TtC5SetupP33_815782AA972C2E4207EC20C3BE273F6B18NewFeatureTextView_bodyLabel);
    v19 = String._bridgeToObjectiveC()();
    [v18 setText:v19];

    v20 = objc_opt_self();
    v21 = [v20 preferredFontForTextStyle:UIFontTextStyleTitle2];
    v22 = [v21 fontDescriptor];

    v23 = [v22 fontDescriptorWithSymbolicTraits:2];
    if (v23)
    {
      v24 = [v20 fontWithDescriptor:v23 size:0.0];

      [v16 setFont:v24];
      v25 = objc_opt_self();
      v26 = [v25 whiteColor];
      [v16 setTextColor:v26];

      v27 = [v20 preferredFontForTextStyle:UIFontTextStyleTitle2];
      [v18 setFont:v27];

      v28 = [v25 secondaryLabelColor];
      [v18 setTextColor:v28];

      [v16 setTextAlignment:4];
      [v18 setTextAlignment:4];
    }

    else
    {
      __break(1u);
    }
  }
}