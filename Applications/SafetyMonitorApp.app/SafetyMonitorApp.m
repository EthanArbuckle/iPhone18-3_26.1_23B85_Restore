id sub_100001C74()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SecureWindow();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100001D1C(uint64_t a1)
{
  v2 = v1;
  v4 = objc_allocWithZone(v1);
  v5 = sub_1000020A8(a1);
  (*(*(*(v2 + qword_100019DF0) - 8) + 8))(a1);
  return v5;
}

void *sub_100001DE0(uint64_t a1, uint64_t a2)
{
  v4 = *((swift_isaMask & *v2) + qword_100019DF0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(a1, a2);
  (*(v5 + 16))(&v12 - v7);
  v8 = UIHostingController.init(coder:rootView:)();
  v9 = *(v5 + 8);
  v10 = v8;
  v9(a2, v4);
  if (v8)
  {
  }

  return v8;
}

id sub_100001F18(void *a1)
{
  v3 = swift_isaMask & *v1;
  v4 = *(v3 + qword_100019DF0);
  v5 = *(v3 + qword_100019DF0 + 8);
  v8.receiver = v1;
  v8.super_class = type metadata accessor for SecureUIHostingController();
  v6 = objc_msgSendSuper2(&v8, "initWithCoder:", a1);

  if (v6)
  {
  }

  return v6;
}

id sub_100001FEC()
{
  v1 = swift_isaMask & *v0;
  v2 = *(v1 + qword_100019DF0);
  v3 = *(v1 + qword_100019DF0 + 8);
  v5.receiver = v0;
  v5.super_class = type metadata accessor for SecureUIHostingController();
  return objc_msgSendSuper2(&v5, "dealloc");
}

uint64_t sub_1000020A8(uint64_t a1)
{
  v2 = (*(*(*((swift_isaMask & *v1) + qword_100019DF0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(a1, a1);
  (*(v4 + 16))(&v6 - v3);
  return UIHostingController.init(rootView:)();
}

void sub_1000021D4(uint64_t a1, unint64_t *a2)
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

id sub_1000022E8(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = (a1 + *a3);
  if (v3[1])
  {
    v4 = *v3;
    v5 = v3[1];

    v6 = String._bridgeToObjectiveC()();
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t sub_100002360(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
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
  v9 = v8[1];
  *v8 = v6;
  v8[1] = v7;
}

uint64_t sub_1000024E8@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC16SafetyMonitorApp33LiveActivityElementViewController_sessionViewModel);
  v4 = SessionViewModel.sessionState.getter();
  if (v4)
  {
    v5 = v4;
    v6 = [v4 configuration];
    if (v6)
    {
      v7 = v6;
      v8 = [v6 conversation];

      v9 = [v8 receiverPrimaryHandles];
      static Array._unconditionallyBridgeFromObjectiveC(_:)();
    }

    v13 = [v5 configuration];
    if (v13)
    {
      v14 = v13;
      v15 = [v13 conversation];

      v16 = [v15 identifier];
      if (v16)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
      }
    }

    type metadata accessor for SMInitiatorAlertUtilities();
    [v5 isActiveState];
    dispatch thunk of static SMInitiatorAlertUtilities.deepLinkURL(for:with:and:)();
  }

  else
  {
    v10 = type metadata accessor for URL();
    v11 = *(*(v10 - 8) + 56);

    return v11(a1, 1, 1, v10);
  }
}

uint64_t sub_100002704()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v41 = *(v2 - 8);
  v42 = v2;
  v3 = *(v41 + 64);
  __chkstk_darwin(v2, v4);
  v40 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v38 = *(v6 - 8);
  v39 = v6;
  v7 = *(v38 + 64);
  __chkstk_darwin(v6, v8);
  v37 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = type metadata accessor for DispatchTime();
  v36 = *(v43 - 8);
  v10 = *(v36 + 64);
  v12 = __chkstk_darwin(v43, v11);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12, v15);
  v17 = &v36 - v16;
  v18 = type metadata accessor for Logger();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18, v21);
  v23 = &v36 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.initiatorUI.getter();
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    aBlock[0] = v27;
    *v26 = 136315138;
    *(v26 + 4) = sub_10000CCA0(0xD000000000000014, 0x80000001000100F0, aBlock);
    _os_log_impl(&_mh_execute_header, v24, v25, "#Initiator,LiveActivity,%s", v26, 0xCu);
    sub_100007AC0(v27);
  }

  (*(v19 + 8))(v23, v18);
  sub_100008C40(0, &unk_100019C50, OS_dispatch_queue_ptr);
  v28 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  + infix(_:_:)();
  v36 = *(v36 + 8);
  (v36)(v14, v43);
  v29 = swift_allocObject();
  *(v29 + 16) = v1;
  aBlock[4] = sub_100008CC8;
  aBlock[5] = v29;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000BC54;
  aBlock[3] = &unk_100014ED8;
  v30 = _Block_copy(aBlock);
  v31 = v1;

  v32 = v37;
  static DispatchQoS.unspecified.getter();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_100007C48(&unk_100019A60, &type metadata accessor for DispatchWorkItemFlags);
  sub_100007B4C(&unk_100019C60, &unk_100011460);
  sub_100008CE0(&qword_100019A70, &unk_100019C60, &unk_100011460);
  v33 = v40;
  v34 = v42;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v30);

  (*(v41 + 8))(v33, v34);
  (*(v38 + 8))(v32, v39);
  return (v36)(v17, v43);
}

uint64_t sub_100002C50(void *a1)
{
  v1 = [a1 systemApertureElementContext];
  v4[4] = sub_100002D14;
  v4[5] = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 1107296256;
  v4[2] = sub_10000BC54;
  v4[3] = &unk_100014F00;
  v2 = _Block_copy(v4);
  [v1 setElementNeedsUpdateWithCoordinatedAnimations:v2];
  _Block_release(v2);
  return swift_unknownObjectRelease();
}

uint64_t sub_100002D14()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0, v3);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.initiatorUI.getter();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v12 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_10000CCA0(0xD000000000000014, 0x80000001000100F0, &v12);
    _os_log_impl(&_mh_execute_header, v6, v7, "#Initiator,LiveActivity,%s, update animation called", v8, 0xCu);
    sub_100007AC0(v9);
  }

  return (*(v1 + 8))(v5, v0);
}

void sub_100002EAC()
{
  v19 = sub_100007B4C(&qword_100019AA8, &qword_100011488);
  v1 = *(v19 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v19, v3);
  v5 = &v19 - v4;
  v6 = sub_100007B4C(&qword_100019AB0, qword_100011490);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6, v9);
  v11 = &v19 - v10;
  v12 = type metadata accessor for LiveActivityElementViewController();
  v20.receiver = v0;
  v20.super_class = v12;
  objc_msgSendSuper2(&v20, "viewDidLoad");
  v13 = [v0 view];
  if (v13)
  {
    v14 = v13;
    [v13 setTranslatesAutoresizingMaskIntoConstraints:0];

    sub_1000033C8();
    v15 = *&v0[OBJC_IVAR____TtC16SafetyMonitorApp33LiveActivityElementViewController_sessionViewModel];
    SessionViewModel.$sessionState.getter();
    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_100008CE0(&qword_100019AB8, &qword_100019AB0, qword_100011490);
    Publisher<>.sink(receiveValue:)();

    (*(v7 + 8))(v11, v6);
    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();

    SessionViewModel.$localSessionState.getter();
    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_100008CE0(&qword_100019AC0, &qword_100019AA8, &qword_100011488);
    v16 = v19;
    Publisher<>.sink(receiveValue:)();

    (*(v1 + 8))(v5, v16);
    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();

    v17 = SessionViewModel.sessionState.getter();
    v18 = SessionViewModel.localSessionState.getter();
    sub_100004410(v17, v18);
  }

  else
  {
    __break(1u);
  }
}

void sub_100003230(void **a1)
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = OBJC_IVAR____TtC16SafetyMonitorApp33LiveActivityElementViewController_sessionViewModel;
    v5 = *(Strong + OBJC_IVAR____TtC16SafetyMonitorApp33LiveActivityElementViewController_sessionViewModel);
    v6 = SessionViewModel.localSessionState.getter();
    sub_100004410(v1, v6);

    v7 = *&v3[v4];
    v8 = SessionViewModel.localSessionState.getter();
    sub_100005B40(v1, v8);
  }
}

void sub_1000032DC(void **a1)
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = OBJC_IVAR____TtC16SafetyMonitorApp33LiveActivityElementViewController_sessionViewModel;
    v5 = *(Strong + OBJC_IVAR____TtC16SafetyMonitorApp33LiveActivityElementViewController_sessionViewModel);
    v6 = SessionViewModel.sessionState.getter();
    sub_100004410(v6, v1);

    v7 = *&v3[v4];
    v8 = SessionViewModel.sessionState.getter();
    sub_100005B40(v8, v1);
  }
}

void sub_1000033C8()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1, v4);
  v6 = &isa - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *&v0[OBJC_IVAR____TtC16SafetyMonitorApp33LiveActivityElementViewController_leadingView];
  if (v7)
  {
    v8 = *&v0[OBJC_IVAR____TtC16SafetyMonitorApp33LiveActivityElementViewController_trailingView];
    if (v8)
    {
      v9 = *&v0[OBJC_IVAR____TtC16SafetyMonitorApp33LiveActivityElementViewController_minimalView];
      if (v9)
      {
        v10 = v9;
        v11 = v8;
        v12 = v7;
        v13 = [v0 view];
        if (v13)
        {
          v14 = v13;
          [v13 addSubview:v12];

          v15 = [v0 view];
          if (v15)
          {
            v16 = v15;
            [v15 addSubview:v11];

            v17 = [v0 view];
            if (v17)
            {
              v18 = v17;
              [v17 addSubview:v10];

              [v12 setTranslatesAutoresizingMaskIntoConstraints:0];
              [v11 setTranslatesAutoresizingMaskIntoConstraints:0];
              [v10 setTranslatesAutoresizingMaskIntoConstraints:0];
              v19 = objc_opt_self();
              sub_100007B4C(&unk_100019CA0, &qword_100011458);
              v20 = swift_allocObject();
              *(v20 + 16) = xmmword_100011320;
              v21 = [v12 widthAnchor];
              static SafetyMonitorUIConstants.liveActivityDynamicIslandAvatarDiameter.getter();
              v23 = v22;
              static SafetyMonitorUIConstants.liveActivityDynamicIslandOuterEdgePadding.getter();
              v25 = v23 + v24;
              static SafetyMonitorUIConstants.liveActivityDynamicIslandInnerEdgePadding.getter();
              v27 = [v21 constraintEqualToConstant:v25 + v26];

              *(v20 + 32) = v27;
              v28 = [v12 heightAnchor];
              static SafetyMonitorUIConstants.liveActivityDynamicIslandAvatarDiameter.getter();
              v29 = [v28 constraintEqualToConstant:?];

              *(v20 + 40) = v29;
              v30 = [v11 widthAnchor];
              static SafetyMonitorUIConstants.liveActivityDynamicIslandAvatarDiameter.getter();
              v32 = v31;
              static SafetyMonitorUIConstants.liveActivityDynamicIslandOuterEdgePadding.getter();
              v34 = v32 + v33;
              static SafetyMonitorUIConstants.liveActivityDynamicIslandInnerEdgePadding.getter();
              v36 = [v30 constraintEqualToConstant:v34 + v35];

              *(v20 + 48) = v36;
              v37 = [v11 heightAnchor];
              static SafetyMonitorUIConstants.liveActivityDynamicIslandBadgeDiameter.getter();
              v38 = [v37 constraintEqualToConstant:?];

              *(v20 + 56) = v38;
              v39 = [v10 widthAnchor];
              static SafetyMonitorUIConstants.liveActivityDynamicIslandBadgeDiameter.getter();
              v40 = [v39 constraintEqualToConstant:?];

              *(v20 + 64) = v40;
              v41 = [v10 heightAnchor];
              static SafetyMonitorUIConstants.liveActivityDynamicIslandBadgeDiameter.getter();
              v42 = [v41 constraintEqualToConstant:?];

              *(v20 + 72) = v42;
              sub_100008C40(0, &unk_100019A50, NSLayoutConstraint_ptr);
              isa = Array._bridgeToObjectiveC()().super.isa;

              [v19 activateConstraints:isa];

              v43 = isa;

              return;
            }

LABEL_15:
            __break(1u);
            return;
          }
        }

        else
        {
          __break(1u);
        }

        __break(1u);
        goto LABEL_15;
      }
    }
  }

  static Logger.initiatorUI.getter();
  v44 = Logger.logObject.getter();
  v45 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v49 = v47;
    *v46 = 136315138;
    *(v46 + 4) = sub_10000CCA0(0xD00000000000001ALL, 0x80000001000100D0, &v49);
    _os_log_impl(&_mh_execute_header, v44, v45, "#Initiator, LiveActivity, %s, Dynamic island views nil - unable to setup", v46, 0xCu);
    sub_100007AC0(v47);
  }

  (*(v2 + 8))(v6, v1);
}

void sub_1000038F0(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4, v7);
  v9 = aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.initiatorUI.getter();
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    aBlock[0] = v13;
    *v12 = 136315138;
    *(v12 + 4) = sub_10000CCA0(0xD00000000000001DLL, 0x80000001000100B0, aBlock);
    _os_log_impl(&_mh_execute_header, v10, v11, "%s: Layout subviews", v12, 0xCu);
    sub_100007AC0(v13);
  }

  (*(v5 + 8))(v9, v4);
  v14 = swift_allocObject();
  *(v14 + 16) = v2;
  aBlock[4] = sub_100008CC0;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004340;
  aBlock[3] = &unk_100014E88;
  v15 = _Block_copy(aBlock);
  v16 = v2;

  [a1 animateAlongsideTransition:v15 completion:0];
  _Block_release(v15);
}

uint64_t sub_100003B44(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v7 = __chkstk_darwin(v3, v6);
  v9 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v7, v10);
  v13 = &v63 - v12;
  v15 = __chkstk_darwin(v11, v14);
  v17 = &v63 - v16;
  v19 = __chkstk_darwin(v15, v18);
  v21 = &v63 - v20;
  v23 = __chkstk_darwin(v19, v22);
  v25 = &v63 - v24;
  v27 = __chkstk_darwin(v23, v26);
  v29 = &v63 - v28;
  __chkstk_darwin(v27, v30);
  v32 = &v63 - v31;
  v33 = *(a2 + OBJC_IVAR____TtC16SafetyMonitorApp33LiveActivityElementViewController_activeLayoutMode);
  if (v33 > 1)
  {
    switch(v33)
    {
      case 2:
        sub_100006DD4();
        sub_100005AA4(0);
        sub_100002704();
        static Logger.initiatorUI.getter();
        v47 = Logger.logObject.getter();
        v48 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v47, v48))
        {
          v49 = swift_slowAlloc();
          v50 = swift_slowAlloc();
          v64 = v50;
          *v49 = 136315138;
          *(v49 + 4) = sub_10000CCA0(0xD00000000000001DLL, 0x80000001000100B0, &v64);
          _os_log_impl(&_mh_execute_header, v47, v48, "%s: Minimal Active Layout", v49, 0xCu);
          sub_100007AC0(v50);
        }

        return (*(v4 + 8))(v25, v3);
      case 3:
        sub_100006DD4();
        sub_100005AA4(0);
        sub_100002704();
        static Logger.initiatorUI.getter();
        v59 = Logger.logObject.getter();
        v60 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v59, v60))
        {
          v61 = swift_slowAlloc();
          v62 = swift_slowAlloc();
          v64 = v62;
          *v61 = 136315138;
          *(v61 + 4) = sub_10000CCA0(0xD00000000000001DLL, 0x80000001000100B0, &v64);
          _os_log_impl(&_mh_execute_header, v59, v60, "%s: Compact Active Layout", v61, 0xCu);
          sub_100007AC0(v62);
        }

        return (*(v4 + 8))(v21, v3);
      case 4:
        sub_1000061BC();
        sub_100002704();
        static Logger.initiatorUI.getter();
        v39 = Logger.logObject.getter();
        v40 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v39, v40))
        {
          v41 = swift_slowAlloc();
          v42 = swift_slowAlloc();
          v64 = v42;
          *v41 = 136315138;
          *(v41 + 4) = sub_10000CCA0(0xD00000000000001DLL, 0x80000001000100B0, &v64);
          _os_log_impl(&_mh_execute_header, v39, v40, "%s: Custom Active Layout", v41, 0xCu);
          sub_100007AC0(v42);
        }

        return (*(v4 + 8))(v17, v3);
      default:
LABEL_20:
        static Logger.initiatorUI.getter();
        v51 = Logger.logObject.getter();
        v52 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v51, v52))
        {
          v53 = swift_slowAlloc();
          v54 = swift_slowAlloc();
          v64 = v54;
          *v53 = 136315138;
          *(v53 + 4) = sub_10000CCA0(0xD00000000000001DLL, 0x80000001000100B0, &v64);
          _os_log_impl(&_mh_execute_header, v51, v52, "%s: Other Active Layout", v53, 0xCu);
          sub_100007AC0(v54);
        }

        return (*(v4 + 8))(v9, v3);
    }
  }

  else if (v33 == -1)
  {
    static Logger.initiatorUI.getter();
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v64 = v46;
      *v45 = 136315138;
      *(v45 + 4) = sub_10000CCA0(0xD00000000000001DLL, 0x80000001000100B0, &v64);
      _os_log_impl(&_mh_execute_header, v43, v44, "%s: Removed Active Layout", v45, 0xCu);
      sub_100007AC0(v46);
    }

    return (*(v4 + 8))(v13, v3);
  }

  else
  {
    if (v33)
    {
      if (v33 == 1)
      {
        sub_100006DD4();
        static Logger.initiatorUI.getter();
        v34 = Logger.logObject.getter();
        v35 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v34, v35))
        {
          v36 = swift_slowAlloc();
          v37 = swift_slowAlloc();
          v64 = v37;
          *v36 = 136315138;
          *(v36 + 4) = sub_10000CCA0(0xD00000000000001DLL, 0x80000001000100B0, &v64);
          _os_log_impl(&_mh_execute_header, v34, v35, "%s: Inactive Active Layout", v36, 0xCu);
          sub_100007AC0(v37);
        }

        return (*(v4 + 8))(v29, v3);
      }

      goto LABEL_20;
    }

    static Logger.initiatorUI.getter();
    v55 = Logger.logObject.getter();
    v56 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v64 = v58;
      *v57 = 136315138;
      *(v57 + 4) = sub_10000CCA0(0xD00000000000001DLL, 0x80000001000100B0, &v64);
      _os_log_impl(&_mh_execute_header, v55, v56, "%s: Initial Active Layout", v57, 0xCu);
      sub_100007AC0(v58);
    }

    return (*(v4 + 8))(v32, v3);
  }
}

uint64_t sub_100004340(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

void sub_100004410(void *a1, void *a2)
{
  v3 = v2;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v10 = __chkstk_darwin(v6, v9);
  v12 = &v181 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v10, v13);
  v16 = __chkstk_darwin(v14, v15);
  __chkstk_darwin(v16, v17);
  v21 = &v181 - v20;
  v22 = *(v3 + OBJC_IVAR____TtC16SafetyMonitorApp33LiveActivityElementViewController_leadingView);
  if (v22)
  {
    v23 = *(v3 + OBJC_IVAR____TtC16SafetyMonitorApp33LiveActivityElementViewController_trailingView);
    if (v23)
    {
      v24 = *(v3 + OBJC_IVAR____TtC16SafetyMonitorApp33LiveActivityElementViewController_minimalView);
      if (v24)
      {
        v189 = v19;
        v186 = v18;
        v25 = objc_allocWithZone(SMContactsManager);
        v26 = v24;
        v27 = v23;
        v28 = v22;
        v29 = [v25 init];
        v195 = v28;
        v192 = v27;
        v193 = v26;
        v190 = a1;
        v197 = v6;
        if (a1)
        {
          v30 = v29;
          v31 = [a1 configuration];
          if (v31)
          {
            v32 = v31;
            v33 = [v31 conversation];
          }

          else
          {
            v33 = 0;
          }

          v29 = v30;
        }

        else
        {
          v33 = 0;
        }

        v196 = v29;
        v38 = [v29 activeSessionRecipientContactsFor:v33];

        v39 = v38;
        isa = v38;
        if (!v38)
        {
          sub_100008C40(0, &qword_100019A80, CNContact_ptr);
          static Array._unconditionallyBridgeFromObjectiveC(_:)();
          isa = Array._bridgeToObjectiveC()().super.isa;

          static Array._unconditionallyBridgeFromObjectiveC(_:)();
          v39 = Array._bridgeToObjectiveC()().super.isa;
        }

        v198 = v39;
        v194 = isa;
        sub_100008C40(0, &qword_100019A80, CNContact_ptr);
        v41 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
        v42 = v38;
        static Logger.initiatorUI.getter();
        v43 = Logger.logObject.getter();
        v44 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v43, v44))
        {
          v45 = swift_slowAlloc();
          *v45 = 0;
          _os_log_impl(&_mh_execute_header, v43, v44, "#Initiator, LiveActivity, Resolved contact and using contact avatar", v45, 2u);
        }

        v48 = *(v7 + 8);
        v47 = v7 + 8;
        v46 = v48;
        v48(v21, v197);
        v49 = OBJC_IVAR____TtC16SafetyMonitorApp33LiveActivityElementViewController_avatarView;
        v50 = *(v3 + OBJC_IVAR____TtC16SafetyMonitorApp33LiveActivityElementViewController_avatarView);
        v191 = a2;
        if (!v50)
        {

          v65 = v190;
          v66 = v198;
          goto LABEL_59;
        }

        v183 = v46;
        v184 = v47;
        *&v187 = OBJC_IVAR____TtC16SafetyMonitorApp33LiveActivityElementViewController_avatarView;
        v182 = v50;
        v188 = v50;
        v51 = [v188 contacts];
        v52 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        if (v52 >> 62)
        {
          v53 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v53 = *((v52 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v185 = v3;
        if (v53)
        {
          v199[0] = &_swiftEmptyArrayStorage;
          sub_100008554(0, v53 & ~(v53 >> 63), 0);
          if (v53 < 0)
          {
            __break(1u);
            goto LABEL_73;
          }

          v54 = 0;
          v55 = v199[0];
          do
          {
            if ((v52 & 0xC000000000000001) != 0)
            {
              v56 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              v56 = *(v52 + 8 * v54 + 32);
            }

            v57 = v56;
            v58 = [v56 identifier];
            v59 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v61 = v60;

            v199[0] = v55;
            v63 = v55[2];
            v62 = v55[3];
            if (v63 >= v62 >> 1)
            {
              sub_100008554((v62 > 1), v63 + 1, 1);
              v55 = v199[0];
            }

            ++v54;
            v55[2] = v63 + 1;
            v64 = &v55[2 * v63];
            *(v64 + 4) = v59;
            *(v64 + 5) = v61;
          }

          while (v53 != v54);

          v3 = v185;
        }

        else
        {

          v55 = &_swiftEmptyArrayStorage;
        }

        v67 = sub_100008680(v55);

        if (v41 >> 62)
        {
          v68 = _CocoaArrayWrapper.endIndex.getter();
          if (v68)
          {
LABEL_34:
            v199[0] = &_swiftEmptyArrayStorage;
            sub_100008554(0, v68 & ~(v68 >> 63), 0);
            if ((v68 & 0x8000000000000000) == 0)
            {
              v69 = 0;
              v70 = v199[0];
              do
              {
                if ((v41 & 0xC000000000000001) != 0)
                {
                  v71 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                }

                else
                {
                  v71 = *(v41 + 8 * v69 + 32);
                }

                v72 = v71;
                v73 = [v71 identifier];
                v74 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v76 = v75;

                v199[0] = v70;
                v78 = v70[2];
                v77 = v70[3];
                if (v78 >= v77 >> 1)
                {
                  sub_100008554((v77 > 1), v78 + 1, 1);
                  v70 = v199[0];
                }

                ++v69;
                v70[2] = v78 + 1;
                v79 = &v70[2 * v78];
                *(v79 + 4) = v74;
                *(v79 + 5) = v76;
              }

              while (v68 != v69);

              v3 = v185;
              goto LABEL_46;
            }

LABEL_73:
            __break(1u);
            return;
          }
        }

        else
        {
          v68 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v68)
          {
            goto LABEL_34;
          }
        }

        v70 = &_swiftEmptyArrayStorage;
LABEL_46:
        v80 = sub_100008680(v70);

        v81 = sub_1000057C0(v67, v80);

        v66 = v198;
        if ((v81 & 1) == 0)
        {
          static Logger.initiatorUI.getter();
          v98 = Logger.logObject.getter();
          v99 = static os_log_type_t.default.getter();
          v100 = os_log_type_enabled(v98, v99);
          v65 = v190;
          if (v100)
          {
            v101 = swift_slowAlloc();
            *v101 = 0;
            _os_log_impl(&_mh_execute_header, v98, v99, "#Initiator, LiveActivity, current contacts do not match active recipients, resetting avatar view.", v101, 2u);
          }

          v183(v189, v197);
          v49 = v187;
          v102 = *(v3 + v187);
          *(v3 + v187) = 0;

          goto LABEL_59;
        }

        v65 = v190;
        if (v190 && (v82 = [v190 configuration]) != 0 && (v83 = v82, v84 = objc_msgSend(v82, "conversation"), v83, v85 = objc_msgSend(v84, "identifier"), v84, v85))
        {
          v86 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v88 = v87;

          v89 = v188;
          v90 = sub_100008718(v86, v88, v188);

          if (v90)
          {
            v91 = v186;
            static Logger.initiatorUI.getter();
            v92 = Logger.logObject.getter();
            v93 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v92, v93))
            {
              v94 = swift_slowAlloc();
              v95 = swift_slowAlloc();
              v199[0] = v95;
              *v94 = 136315138;
              *(v94 + 4) = sub_10000CCA0(0xD000000000000029, 0x8000000100010010, v199);
              _os_log_impl(&_mh_execute_header, v92, v93, "#Initiator, LiveActivity, %s, refreshing group avatar", v94, 0xCu);
              sub_100007AC0(v95);
            }

            v183(v91, v197);
            v66 = v198;
            v96 = [v188 updateViewWithGroupIdentity:v90];
            swift_unknownObjectRelease();

            v49 = v187;
            v97 = *(v3 + v187);
            *(v3 + v187) = v182;

            goto LABEL_59;
          }
        }

        else
        {
        }

        v49 = v187;
LABEL_59:
        if (*(v3 + v49))
        {
          v103 = &SecureWindow;
          v104 = v194;
        }

        else
        {
          v105 = v49;
          v106 = [objc_allocWithZone(CNAvatarView) init];
          sub_100007B4C(&unk_100019CA0, &qword_100011458);
          v107 = swift_allocObject();
          *(v107 + 16) = xmmword_100011330;
          *(v107 + 32) = [v106 descriptorForRequiredKeys];
          sub_100007B4C(&qword_100019A88, &qword_100011470);
          v108 = Array._bridgeToObjectiveC()().super.isa;

          v109 = v194;
          v110 = [v196 fetchAdditionalInfoFor:v194 keysToFetch:v108];

          if (v110)
          {

            [v106 setContacts:v110];
          }

          else
          {
            v110 = v198;
            [v106 setContacts:v198];
          }

          if (v65)
          {
            v111 = [v65 configuration];
            if (v111)
            {
              v112 = v111;
              v113 = [v111 conversation];

              v114 = [v113 identifier];
              if (v114)
              {
                v115 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v117 = v116;

                v118 = sub_100008718(v115, v117, v106);

                if (v118)
                {
                  v119 = [v106 updateViewWithGroupIdentity:v118];

                  swift_unknownObjectRelease();
                }
              }
            }
          }

          v120 = *(v3 + v105);
          *(v3 + v105) = v106;
          v121 = v106;

          v122 = v195;
          sub_100005978();

          v104 = v121;
          [v122 addSubview:v104];
          [(objc_class *)v104 setTranslatesAutoresizingMaskIntoConstraints:0];
          v198 = objc_opt_self();
          v123 = swift_allocObject();
          *(v123 + 16) = xmmword_100011340;
          v124 = [(objc_class *)v104 trailingAnchor];
          v125 = [v122 trailingAnchor];
          static SafetyMonitorUIConstants.liveActivityDynamicIslandInnerEdgePadding.getter();
          v127 = v65;
          v128 = [v124 constraintEqualToAnchor:v125 constant:-v126];

          *(v123 + 32) = v128;
          v65 = v127;
          v129 = [(objc_class *)v104 centerYAnchor];

          v130 = [v122 centerYAnchor];
          v131 = [v129 constraintEqualToAnchor:v130];

          *(v123 + 40) = v131;
          v132 = [(objc_class *)v104 widthAnchor];

          static SafetyMonitorUIConstants.liveActivityDynamicIslandAvatarDiameter.getter();
          v133 = [v132 constraintEqualToConstant:?];

          *(v123 + 48) = v133;
          v134 = [(objc_class *)v104 heightAnchor];

          static SafetyMonitorUIConstants.liveActivityDynamicIslandAvatarDiameter.getter();
          v135 = [v134 constraintEqualToConstant:?];

          v103 = &SecureWindow;
          *(v123 + 56) = v135;
          sub_100008C40(0, &unk_100019A50, NSLayoutConstraint_ptr);
          v66 = Array._bridgeToObjectiveC()().super.isa;

          [(objc_class *)v198 activateConstraints:v66];
        }

        v136 = v191;
        v137 = sub_100008A04(v65, v191);
        v188 = v138;
        v189 = v137;
        v139 = sub_100008AB8(v65, v136);
        v140 = String._bridgeToObjectiveC()();
        v191 = objc_opt_self();
        v141 = [v191 _systemImageNamed:v140];

        v142 = [objc_allocWithZone(UIImageView) initWithImage:v141];
        v143 = OBJC_IVAR____TtC16SafetyMonitorApp33LiveActivityElementViewController_trailingGlyph;
        v144 = *(v3 + OBJC_IVAR____TtC16SafetyMonitorApp33LiveActivityElementViewController_trailingGlyph);
        *(v3 + OBJC_IVAR____TtC16SafetyMonitorApp33LiveActivityElementViewController_trailingGlyph) = v142;
        v145 = v142;

        v190 = sub_100008C40(0, &qword_100019A78, UIColor_ptr);
        v197 = v139;

        v146 = UIColor.init(_:)();
        [v145 setTintColor:v146];

        v147 = v192;
        sub_100005978();

        [v147 *&v103[41].ivar:*(v3 + v143) base:?size];
        [*(v3 + v143) setTranslatesAutoresizingMaskIntoConstraints:0];
        v198 = objc_opt_self();
        v192 = sub_100007B4C(&unk_100019CA0, &qword_100011458);
        v148 = swift_allocObject();
        v187 = xmmword_100011340;
        *(v148 + 16) = xmmword_100011340;
        v149 = [*(v3 + v143) leadingAnchor];
        v194 = v147;
        v150 = [v147 leadingAnchor];
        static SafetyMonitorUIConstants.liveActivityDynamicIslandInnerEdgePadding.getter();
        v151 = [v149 constraintEqualToAnchor:v150 constant:?];

        *(v148 + 32) = v151;
        v152 = [*(v3 + v143) centerYAnchor];
        v153 = [v147 centerYAnchor];
        v154 = [v152 constraintEqualToAnchor:v153];

        *(v148 + 40) = v154;
        v155 = [*(v3 + v143) widthAnchor];
        static SafetyMonitorUIConstants.liveActivityDynamicIslandBadgeDiameter.getter();
        v156 = v103;
        v157 = [v155 constraintEqualToConstant:?];

        *(v148 + 48) = v157;
        v158 = [*(v3 + v143) heightAnchor];
        static SafetyMonitorUIConstants.liveActivityDynamicIslandBadgeDiameter.getter();
        v159 = [v158 constraintEqualToConstant:?];

        *(v148 + 56) = v159;
        v186 = sub_100008C40(0, &unk_100019A50, NSLayoutConstraint_ptr);
        v160 = Array._bridgeToObjectiveC()().super.isa;

        [(objc_class *)v198 activateConstraints:v160];

        v161 = String._bridgeToObjectiveC()();

        v162 = [v191 _systemImageNamed:v161];

        v163 = [objc_allocWithZone(UIImageView) initWithImage:v162];
        v164 = OBJC_IVAR____TtC16SafetyMonitorApp33LiveActivityElementViewController_minimalGlyph;
        v165 = *(v3 + OBJC_IVAR____TtC16SafetyMonitorApp33LiveActivityElementViewController_minimalGlyph);
        *(v3 + OBJC_IVAR____TtC16SafetyMonitorApp33LiveActivityElementViewController_minimalGlyph) = v163;
        v166 = v163;

        v167 = UIColor.init(_:)();
        [v166 setTintColor:v167];

        v168 = v193;
        sub_100005978();

        [v168 *&v156[41].ivar:*(v3 + v164) base:?size];
        [*(v3 + v164) setTranslatesAutoresizingMaskIntoConstraints:0];
        v169 = swift_allocObject();
        *(v169 + 16) = v187;
        v170 = [*(v3 + v164) centerXAnchor];
        v171 = [v168 centerXAnchor];
        v172 = [v170 constraintEqualToAnchor:v171];

        *(v169 + 32) = v172;
        v173 = [*(v3 + v164) centerYAnchor];
        v174 = [v168 centerYAnchor];
        v175 = [v173 constraintEqualToAnchor:v174];

        *(v169 + 40) = v175;
        v176 = [*(v3 + v164) widthAnchor];
        static SafetyMonitorUIConstants.liveActivityDynamicIslandBadgeDiameter.getter();
        v177 = [v176 constraintEqualToConstant:?];

        *(v169 + 48) = v177;
        v178 = [*(v3 + v164) heightAnchor];
        static SafetyMonitorUIConstants.liveActivityDynamicIslandBadgeDiameter.getter();
        v179 = [v178 constraintEqualToConstant:?];

        *(v169 + 56) = v179;
        v180 = Array._bridgeToObjectiveC()().super.isa;

        [(objc_class *)v198 activateConstraints:v180];

        return;
      }
    }
  }

  static Logger.initiatorUI.getter();
  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v199[0] = v37;
    *v36 = 136315138;
    *(v36 + 4) = sub_10000CCA0(0xD000000000000029, 0x8000000100010010, v199);
    _os_log_impl(&_mh_execute_header, v34, v35, "#Initiator, LiveActivity, %s, Dynamic island views nil - unable to setup", v36, 0xCu);
    sub_100007AC0(v37);
  }

  (*(v7 + 8))(v12, v6);
}

uint64_t sub_1000057C0(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  v23 = result;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_15:
    v13 = (*(result + 48) + 16 * (v10 | (v3 << 6)));
    v15 = *v13;
    v14 = v13[1];
    v16 = *(a2 + 40);
    Hasher.init(_seed:)();

    String.hash(into:)();
    v17 = Hasher._finalize()();
    v18 = -1 << *(a2 + 32);
    v19 = v17 & ~v18;
    if (((*(v9 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
    {
LABEL_23:

      return 0;
    }

    v20 = ~v18;
    while (1)
    {
      v21 = (*(a2 + 48) + 16 * v19);
      v22 = *v21 == v15 && v21[1] == v14;
      if (v22 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v19 = (v19 + 1) & v20;
      if (((*(v9 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    result = v23;
  }

  v11 = v3;
  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v12 = *(v4 + 8 * v3);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100005978()
{
  v1 = [v0 subviews];
  sub_100008C40(0, &qword_100019AA0, UIView_ptr);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v2 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v4 = 0;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v5 = *(v2 + 8 * v4 + 32);
      }

      v6 = v5;
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      [v5 removeFromSuperview];

      ++v4;
      if (v7 == i)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

LABEL_14:
}

id sub_100005AA4(char a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC16SafetyMonitorApp33LiveActivityElementViewController_leadingView);
  if (v3)
  {
    [v3 setHidden:a1 & 1];
  }

  v4 = *(v1 + OBJC_IVAR____TtC16SafetyMonitorApp33LiveActivityElementViewController_trailingView);
  if (v4)
  {
    [v4 setHidden:a1 & 1];
  }

  result = *(v1 + OBJC_IVAR____TtC16SafetyMonitorApp33LiveActivityElementViewController_minimalView);
  if (result)
  {

    return [result setHidden:a1 & 1];
  }

  return result;
}

uint64_t sub_100005B40(void *a1, void *a2)
{
  v3 = v2;
  v40 = a2;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v43 = *(v5 - 8);
  v6 = *(v43 + 64);
  __chkstk_darwin(v5, v7);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v41 = *(v10 - 8);
  v42 = v10;
  v11 = *(v41 + 64);
  __chkstk_darwin(v10, v12);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Logger();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15, v18);
  v20 = &v38 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.initiatorUI.getter();
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v39 = a1;
    v24 = v23;
    v25 = swift_slowAlloc();
    v38 = v14;
    v26 = v9;
    v27 = v5;
    v28 = v3;
    v29 = v25;
    aBlock[0] = v25;
    *v24 = 136315138;
    *(v24 + 4) = sub_10000CCA0(0xD000000000000026, 0x800000010000FFE0, aBlock);
    _os_log_impl(&_mh_execute_header, v21, v22, "#Initiator, LiveActivity,%s,Updating trailing view for session state", v24, 0xCu);
    sub_100007AC0(v29);
    v3 = v28;
    v5 = v27;
    v9 = v26;
    v14 = v38;

    a1 = v39;
  }

  (*(v16 + 8))(v20, v15);
  sub_100008C40(0, &unk_100019C50, OS_dispatch_queue_ptr);
  v30 = static OS_dispatch_queue.main.getter();
  v31 = swift_allocObject();
  v31[2] = v3;
  v31[3] = a1;
  v32 = v40;
  v31[4] = v40;
  aBlock[4] = sub_100007C24;
  aBlock[5] = v31;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000BC54;
  aBlock[3] = &unk_100014E38;
  v33 = _Block_copy(aBlock);
  v34 = v32;
  v35 = v3;
  v36 = a1;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_100007C48(&unk_100019A60, &type metadata accessor for DispatchWorkItemFlags);
  sub_100007B4C(&unk_100019C60, &unk_100011460);
  sub_100008CE0(&qword_100019A70, &unk_100019C60, &unk_100011460);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v33);

  (*(v43 + 8))(v9, v5);
  return (*(v41 + 8))(v14, v42);
}

void sub_100005FCC(uint64_t a1, id a2, id a3)
{
  sub_100008A04(a2, a3);
  sub_100008AB8(a2, a3);
  v6 = OBJC_IVAR____TtC16SafetyMonitorApp33LiveActivityElementViewController_trailingGlyph;
  v7 = *(a1 + OBJC_IVAR____TtC16SafetyMonitorApp33LiveActivityElementViewController_trailingGlyph);
  v8 = String._bridgeToObjectiveC()();
  v9 = objc_opt_self();
  v10 = [v9 _systemImageNamed:v8];

  [v7 setImage:v10];
  v11 = *(a1 + v6);
  sub_100008C40(0, &qword_100019A78, UIColor_ptr);
  v12 = v11;

  v13 = UIColor.init(_:)();
  [v12 setTintColor:v13];

  v14 = OBJC_IVAR____TtC16SafetyMonitorApp33LiveActivityElementViewController_minimalGlyph;
  v15 = *(a1 + OBJC_IVAR____TtC16SafetyMonitorApp33LiveActivityElementViewController_minimalGlyph);
  v16 = String._bridgeToObjectiveC()();

  v17 = [v9 _systemImageNamed:v16];

  [v15 setImage:v17];
  v18 = *(a1 + v14);

  v19 = v18;
  v20 = UIColor.init(_:)();
  [v19 setTintColor:v20];
}

void sub_1000061BC()
{
  v1 = v0;
  v2 = type metadata accessor for UIHostingControllerSizingOptions();
  v108 = *(v2 - 8);
  v3 = *(v108 + 64);
  __chkstk_darwin(v2, v4);
  v6 = &v104 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for LiveActivityView();
  v109 = *(v7 - 8);
  v8 = *(v109 + 64);
  v10 = __chkstk_darwin(v7, v9);
  v12 = &v104 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10, v13);
  v15 = &v104 - v14;
  v16 = type metadata accessor for Logger();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16, v19);
  v21 = &v104 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *&v1[OBJC_IVAR____TtC16SafetyMonitorApp33LiveActivityElementViewController_leadingView];
  if (v22)
  {
    [v22 setHidden:1];
  }

  v23 = *&v1[OBJC_IVAR____TtC16SafetyMonitorApp33LiveActivityElementViewController_trailingView];
  if (v23)
  {
    [v23 setHidden:1];
  }

  v24 = *&v1[OBJC_IVAR____TtC16SafetyMonitorApp33LiveActivityElementViewController_minimalView];
  if (v24)
  {
    [v24 setHidden:1];
  }

  if (!*&v1[OBJC_IVAR____TtC16SafetyMonitorApp33LiveActivityElementViewController_expandedController])
  {
    v107 = v6;
    v105 = OBJC_IVAR____TtC16SafetyMonitorApp33LiveActivityElementViewController_expandedController;
    static Logger.initiatorUI.getter();
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.default.getter();
    v27 = os_log_type_enabled(v25, v26);
    v110 = v1;
    v106 = v2;
    if (v27)
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v111 = v29;
      *v28 = 136315138;
      *(v28 + 4) = sub_10000CCA0(0xD000000000000015, 0x800000010000FFC0, &v111);
      _os_log_impl(&_mh_execute_header, v25, v26, "#Initiator, LiveActivity,%s, Setting up expanded controller", v28, 0xCu);
      sub_100007AC0(v29);
      v1 = v110;
    }

    (*(v17 + 8))(v21, v16);
    v30 = *&v1[OBJC_IVAR____TtC16SafetyMonitorApp33LiveActivityElementViewController_sessionViewModel];
    swift_allocObject();
    swift_unknownObjectWeakInit();

    LiveActivityView.init(with:onLockscreen:resizeHandler:)();
    v31 = objc_allocWithZone(sub_100007B4C(&qword_100019A20, &qword_100011440));
    v32 = v109;
    (*(v109 + 16))(v12, v15, v7);
    v33 = UIHostingController.init(rootView:)();
    (*(v32 + 8))(v15, v7);
    v34 = v33;
    [v1 addChildViewController:v34];
    v35 = [v34 view];
    if (v35)
    {
      v36 = v35;
      v37 = [objc_opt_self() clearColor];
      [v36 setBackgroundColor:v37];

      v38 = [v34 view];
      if (v38)
      {
        [v38 setTranslatesAutoresizingMaskIntoConstraints:0];

        sub_100007B4C(&qword_100019A28, &qword_100011448);
        v39 = *(v108 + 72);
        v40 = (*(v108 + 80) + 32) & ~*(v108 + 80);
        v41 = swift_allocObject();
        *(v41 + 16) = xmmword_100011350;
        v42 = v34;
        static UIHostingControllerSizingOptions.intrinsicContentSize.getter();
        v111 = v41;
        sub_100007C48(&qword_100019A30, &type metadata accessor for UIHostingControllerSizingOptions);
        sub_100007B4C(&qword_100019A38, &qword_100011450);
        sub_100008CE0(&unk_100019A40, &qword_100019A38, &qword_100011450);
        dispatch thunk of SetAlgebra.init<A>(_:)();
        dispatch thunk of UIHostingController.sizingOptions.setter();

        v43 = v110;
        v44 = [v110 view];
        if (v44)
        {
          v45 = v44;
          v46 = [v42 view];

          if (v46)
          {
            [v45 addSubview:v46];

            v47 = [v43 view];
            if (v47)
            {
              v48 = v47;
              v49 = [v47 window];

              if (v49)
              {

                v50 = [v42 view];
                if (!v50)
                {
LABEL_45:
                  __break(1u);
                  goto LABEL_46;
                }

                v51 = [v50 widthAnchor];

                v52 = [v43 view];
                if (!v52)
                {
LABEL_46:
                  __break(1u);
                  goto LABEL_47;
                }

                v53 = v52;
                v54 = [v52 window];

                if (!v54)
                {
LABEL_47:
                  __break(1u);
                  goto LABEL_48;
                }

                v55 = [v54 widthAnchor];

                static SafetyMonitorUIConstants.liveActivityExpandedDynamicIslandSidePadding.getter();
                v57 = [v51 constraintEqualToAnchor:v55 constant:v56 * -2.0];
              }

              else
              {

                v58 = [v42 view];
                if (!v58)
                {
LABEL_48:
                  __break(1u);
                  return;
                }

                v55 = [v58 widthAnchor];

                v59 = [objc_opt_self() mainScreen];
                [v59 nativeBounds];
                v61 = v60;
                v63 = v62;
                v65 = v64;
                v67 = v66;

                v112.origin.x = v61;
                v112.origin.y = v63;
                v112.size.width = v65;
                v112.size.height = v67;
                Width = CGRectGetWidth(v112);
                static SafetyMonitorUIConstants.liveActivityExpandedDynamicIslandSidePadding.getter();
                v57 = [v55 constraintEqualToConstant:Width - (v69 + v69)];
              }

              sub_100007B4C(&unk_100019CA0, &qword_100011458);
              v70 = swift_allocObject();
              *(v70 + 16) = xmmword_100011360;
              *(v70 + 32) = v57;
              v71 = v57;
              v72 = [v42 view];

              if (v72)
              {
                v73 = [v72 topAnchor];

                v74 = [v110 view];
                if (v74)
                {
                  v75 = v74;
                  v76 = [v74 SBUISA_systemApertureObstructedAreaLayoutGuide];

                  v77 = [v76 bottomAnchor];
                  static SafetyMonitorUIConstants.liveActivityExpandedDynamicIslandTopShift.getter();
                  v79 = [v73 constraintEqualToAnchor:v77 constant:-v78];

                  *(v70 + 40) = v79;
                  v80 = [v42 view];

                  if (v80)
                  {
                    v81 = [v80 leadingAnchor];

                    v82 = [v110 view];
                    if (v82)
                    {
                      v83 = v82;
                      v84 = [v82 leadingAnchor];

                      static SafetyMonitorUIConstants.liveActivityExpandedDynamicIslandSidePadding.getter();
                      v85 = [v81 constraintEqualToAnchor:v84 constant:?];

                      *(v70 + 48) = v85;
                      v86 = [v42 view];

                      if (v86)
                      {
                        v87 = [v86 trailingAnchor];

                        v88 = [v110 view];
                        if (v88)
                        {
                          v89 = v88;
                          v90 = [v88 trailingAnchor];

                          static SafetyMonitorUIConstants.liveActivityExpandedDynamicIslandSidePadding.getter();
                          v92 = [v87 constraintEqualToAnchor:v90 constant:-v91];

                          *(v70 + 56) = v92;
                          v93 = [v42 view];

                          if (v93)
                          {
                            v94 = [v93 bottomAnchor];

                            v95 = v110;
                            v96 = [v110 view];
                            if (v96)
                            {
                              v97 = v96;
                              v98 = objc_opt_self();
                              v99 = [v97 bottomAnchor];

                              static SafetyMonitorUIConstants.liveActivityExpandedDynamicIslandSidePadding.getter();
                              v101 = [v94 constraintEqualToAnchor:v99 constant:-v100];

                              *(v70 + 64) = v101;
                              sub_100008C40(0, &unk_100019A50, NSLayoutConstraint_ptr);
                              isa = Array._bridgeToObjectiveC()().super.isa;

                              [v98 activateConstraints:isa];

                              [v42 didMoveToParentViewController:v95];
                              v103 = *&v95[v105];
                              *&v95[v105] = v42;

                              return;
                            }

                            goto LABEL_44;
                          }

LABEL_43:
                          __break(1u);
LABEL_44:
                          __break(1u);
                          goto LABEL_45;
                        }

LABEL_42:
                        __break(1u);
                        goto LABEL_43;
                      }

LABEL_41:
                      __break(1u);
                      goto LABEL_42;
                    }

LABEL_40:
                    __break(1u);
                    goto LABEL_41;
                  }

LABEL_39:
                  __break(1u);
                  goto LABEL_40;
                }

LABEL_38:
                __break(1u);
                goto LABEL_39;
              }

LABEL_37:
              __break(1u);
              goto LABEL_38;
            }

LABEL_36:
            __break(1u);
            goto LABEL_37;
          }

LABEL_35:
          __break(1u);
          goto LABEL_36;
        }

LABEL_34:
        __break(1u);
        goto LABEL_35;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_34;
  }
}

void sub_100006D80()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_100002704();
  }
}

void sub_100006DD4()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2, v5);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC16SafetyMonitorApp33LiveActivityElementViewController_expandedController;
  v9 = *&v1[OBJC_IVAR____TtC16SafetyMonitorApp33LiveActivityElementViewController_expandedController];
  if (v9)
  {
    v10 = v9;
    static Logger.initiatorUI.getter();
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v19 = v14;
      *v13 = 136315138;
      *(v13 + 4) = sub_10000CCA0(0xD00000000000001ALL, 0x800000010000FFA0, &v19);
      _os_log_impl(&_mh_execute_header, v11, v12, "#Initiator, LiveActivity,%s, Removing expanded controller", v13, 0xCu);
      sub_100007AC0(v14);
    }

    (*(v3 + 8))(v7, v2);
    v15 = [v10 view];
    if (v15)
    {
      v16 = v15;
      [v15 removeFromSuperview];

      [v10 didMoveToParentViewController:0];
      [v1 removeChildViewController:v10];

      v17 = *&v1[v8];
      *&v1[v8] = 0;
    }

    else
    {
      __break(1u);
    }
  }
}

id sub_100006FFC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  *&v3[OBJC_IVAR____TtC16SafetyMonitorApp33LiveActivityElementViewController_activeLayoutMode] = 0;
  *&v3[OBJC_IVAR____TtC16SafetyMonitorApp33LiveActivityElementViewController_contentRole] = 2;
  *&v3[OBJC_IVAR____TtC16SafetyMonitorApp33LiveActivityElementViewController_preferredLayoutMode] = 3;
  *&v3[OBJC_IVAR____TtC16SafetyMonitorApp33LiveActivityElementViewController_maximumLayoutMode] = 4;
  *&v3[OBJC_IVAR____TtC16SafetyMonitorApp33LiveActivityElementViewController_preferredHeightForBottomSafeArea] = 0x4061800000000000;
  v7 = &v3[OBJC_IVAR____TtC16SafetyMonitorApp33LiveActivityElementViewController_associatedScenePersistenceIdentifier];
  *v7 = 0;
  *(v7 + 1) = 0;
  v8 = &v3[OBJC_IVAR____TtC16SafetyMonitorApp33LiveActivityElementViewController_associatedAppBundleIdentifier];
  *v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8[1] = v9;
  *&v4[OBJC_IVAR____TtC16SafetyMonitorApp33LiveActivityElementViewController_expandedController] = 0;
  *&v4[OBJC_IVAR____TtC16SafetyMonitorApp33LiveActivityElementViewController_avatarView] = 0;
  v10 = OBJC_IVAR____TtC16SafetyMonitorApp33LiveActivityElementViewController_leadingView;
  v11 = type metadata accessor for LiveActivityAccessoryView();
  v12 = objc_allocWithZone(v11);
  v12[OBJC_IVAR____TtC16SafetyMonitorApp25LiveActivityAccessoryView_viewType] = 0;
  v26.receiver = v12;
  v26.super_class = v11;
  *&v4[v10] = objc_msgSendSuper2(&v26, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v13 = OBJC_IVAR____TtC16SafetyMonitorApp33LiveActivityElementViewController_trailingView;
  v14 = objc_allocWithZone(v11);
  v14[OBJC_IVAR____TtC16SafetyMonitorApp25LiveActivityAccessoryView_viewType] = 1;
  v25.receiver = v14;
  v25.super_class = v11;
  *&v4[v13] = objc_msgSendSuper2(&v25, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v15 = OBJC_IVAR____TtC16SafetyMonitorApp33LiveActivityElementViewController_minimalView;
  v16 = objc_allocWithZone(v11);
  v16[OBJC_IVAR____TtC16SafetyMonitorApp25LiveActivityAccessoryView_viewType] = 2;
  v24.receiver = v16;
  v24.super_class = v11;
  *&v4[v15] = objc_msgSendSuper2(&v24, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v17 = OBJC_IVAR____TtC16SafetyMonitorApp33LiveActivityElementViewController_sessionViewModel;
  type metadata accessor for SessionViewModel();
  *&v4[v17] = static SessionViewModel.shared.getter();
  v18 = OBJC_IVAR____TtC16SafetyMonitorApp33LiveActivityElementViewController_trailingGlyph;
  *&v4[v18] = [objc_allocWithZone(UIImageView) init];
  v19 = OBJC_IVAR____TtC16SafetyMonitorApp33LiveActivityElementViewController_minimalGlyph;
  *&v4[v19] = [objc_allocWithZone(UIImageView) init];
  *&v4[OBJC_IVAR____TtC16SafetyMonitorApp33LiveActivityElementViewController_cancellableSet] = &_swiftEmptySetSingleton;
  if (a2)
  {
    v20 = String._bridgeToObjectiveC()();
  }

  else
  {
    v20 = 0;
  }

  v23.receiver = v4;
  v23.super_class = type metadata accessor for LiveActivityElementViewController();
  v21 = objc_msgSendSuper2(&v23, "initWithNibName:bundle:", v20, a3);

  return v21;
}

id sub_1000072D0(void *a1)
{
  v2 = v1;
  *&v1[OBJC_IVAR____TtC16SafetyMonitorApp33LiveActivityElementViewController_activeLayoutMode] = 0;
  *&v1[OBJC_IVAR____TtC16SafetyMonitorApp33LiveActivityElementViewController_contentRole] = 2;
  *&v1[OBJC_IVAR____TtC16SafetyMonitorApp33LiveActivityElementViewController_preferredLayoutMode] = 3;
  *&v1[OBJC_IVAR____TtC16SafetyMonitorApp33LiveActivityElementViewController_maximumLayoutMode] = 4;
  *&v1[OBJC_IVAR____TtC16SafetyMonitorApp33LiveActivityElementViewController_preferredHeightForBottomSafeArea] = 0x4061800000000000;
  v4 = &v1[OBJC_IVAR____TtC16SafetyMonitorApp33LiveActivityElementViewController_associatedScenePersistenceIdentifier];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = &v1[OBJC_IVAR____TtC16SafetyMonitorApp33LiveActivityElementViewController_associatedAppBundleIdentifier];
  *v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5[1] = v6;
  *&v2[OBJC_IVAR____TtC16SafetyMonitorApp33LiveActivityElementViewController_expandedController] = 0;
  *&v2[OBJC_IVAR____TtC16SafetyMonitorApp33LiveActivityElementViewController_avatarView] = 0;
  v7 = OBJC_IVAR____TtC16SafetyMonitorApp33LiveActivityElementViewController_leadingView;
  v8 = type metadata accessor for LiveActivityAccessoryView();
  v9 = objc_allocWithZone(v8);
  v9[OBJC_IVAR____TtC16SafetyMonitorApp25LiveActivityAccessoryView_viewType] = 0;
  v22.receiver = v9;
  v22.super_class = v8;
  *&v2[v7] = objc_msgSendSuper2(&v22, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v10 = OBJC_IVAR____TtC16SafetyMonitorApp33LiveActivityElementViewController_trailingView;
  v11 = objc_allocWithZone(v8);
  v11[OBJC_IVAR____TtC16SafetyMonitorApp25LiveActivityAccessoryView_viewType] = 1;
  v21.receiver = v11;
  v21.super_class = v8;
  *&v2[v10] = objc_msgSendSuper2(&v21, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v12 = OBJC_IVAR____TtC16SafetyMonitorApp33LiveActivityElementViewController_minimalView;
  v13 = objc_allocWithZone(v8);
  v13[OBJC_IVAR____TtC16SafetyMonitorApp25LiveActivityAccessoryView_viewType] = 2;
  v20.receiver = v13;
  v20.super_class = v8;
  *&v2[v12] = objc_msgSendSuper2(&v20, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v14 = OBJC_IVAR____TtC16SafetyMonitorApp33LiveActivityElementViewController_sessionViewModel;
  type metadata accessor for SessionViewModel();
  *&v2[v14] = static SessionViewModel.shared.getter();
  v15 = OBJC_IVAR____TtC16SafetyMonitorApp33LiveActivityElementViewController_trailingGlyph;
  *&v2[v15] = [objc_allocWithZone(UIImageView) init];
  v16 = OBJC_IVAR____TtC16SafetyMonitorApp33LiveActivityElementViewController_minimalGlyph;
  *&v2[v16] = [objc_allocWithZone(UIImageView) init];
  *&v2[OBJC_IVAR____TtC16SafetyMonitorApp33LiveActivityElementViewController_cancellableSet] = &_swiftEmptySetSingleton;
  v19.receiver = v2;
  v19.super_class = type metadata accessor for LiveActivityElementViewController();
  v17 = objc_msgSendSuper2(&v19, "initWithCoder:", a1);

  if (v17)
  {
  }

  return v17;
}

Swift::Int sub_100007674()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_1000076E8()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

double sub_1000077CC()
{
  if (*(v0 + OBJC_IVAR____TtC16SafetyMonitorApp25LiveActivityAccessoryView_viewType))
  {
    if (*(v0 + OBJC_IVAR____TtC16SafetyMonitorApp25LiveActivityAccessoryView_viewType) == 1)
    {
      static SafetyMonitorUIConstants.liveActivityDynamicIslandAvatarDiameter.getter();
      v2 = v1;
      static SafetyMonitorUIConstants.liveActivityDynamicIslandOuterEdgePadding.getter();
      v4 = v2 + v3;
      static SafetyMonitorUIConstants.liveActivityDynamicIslandInnerEdgePadding.getter();
      v6 = v4 + v5;
    }

    else
    {
      static SafetyMonitorUIConstants.liveActivityDynamicIslandBadgeDiameter.getter();
      v6 = v12;
    }

    static SafetyMonitorUIConstants.liveActivityDynamicIslandBadgeDiameter.getter();
  }

  else
  {
    static SafetyMonitorUIConstants.liveActivityDynamicIslandAvatarDiameter.getter();
    v8 = v7;
    static SafetyMonitorUIConstants.liveActivityDynamicIslandOuterEdgePadding.getter();
    v10 = v8 + v9;
    static SafetyMonitorUIConstants.liveActivityDynamicIslandInnerEdgePadding.getter();
    v6 = v10 + v11;
    static SafetyMonitorUIConstants.liveActivityDynamicIslandAvatarDiameter.getter();
  }

  return v6;
}

id sub_100007898(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t getEnumTagSinglePayload for LiveActivityAccessoryView.AccessoryViewType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for LiveActivityAccessoryView.AccessoryViewType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100007A6C()
{
  result = qword_100019A18;
  if (!qword_100019A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100019A18);
  }

  return result;
}

uint64_t sub_100007AC0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_100007B0C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100007B4C(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_100007B94(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_100007BDC()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100007C30(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007C48(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100007C90(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v9 = Hasher._finalize()();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    sub_100008040(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_100007DE0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100007B4C(&qword_100019A90, &qword_100011478);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

Swift::Int sub_100008040(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_100007DE0(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_1000081C0();
      goto LABEL_16;
    }

    sub_10000831C(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  result = Hasher._finalize()();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      if (*v14 == v7 && v14[1] == a2)
      {
        goto LABEL_19;
      }

      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v7;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void *sub_1000081C0()
{
  v1 = v0;
  sub_100007B4C(&qword_100019A90, &qword_100011478);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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

uint64_t sub_10000831C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100007B4C(&qword_100019A90, &qword_100011478);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      Hasher.init(_seed:)();

      String.hash(into:)();
      result = Hasher._finalize()();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

char *sub_100008554(char *a1, int64_t a2, char a3)
{
  result = sub_100008574(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100008574(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100007B4C(&qword_100019A98, &qword_100011480);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_100008680(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = Set.init(minimumCapacity:)();
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_100007C90(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

id sub_100008718(uint64_t a1, unint64_t a2, void *a3)
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6, v9);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SafetyMonitorUIUtilities();
  v12 = static SafetyMonitorUIUtilities.fetchChatGroupPhoto(with:)();
  if (v13 >> 60 == 15)
  {
    static Logger.initiatorUI.getter();

    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *v16 = 136315394;
      *(v16 + 4) = sub_10000CCA0(0xD000000000000025, 0x8000000100010040, &v25);
      *(v16 + 12) = 2080;
      *(v16 + 14) = sub_10000CCA0(a1, a2, &v25);
      _os_log_impl(&_mh_execute_header, v14, v15, "#Initiator, LiveActivity, %s, No group photo found for groupID %s.", v16, 0x16u);
      swift_arrayDestroy();
    }

    (*(v7 + 8))(v11, v6);
    return 0;
  }

  else
  {
    v18 = v13;
    v19 = v12;
    isa = [a3 contacts];
    if (!isa)
    {
      sub_100008C40(0, &qword_100019A80, CNContact_ptr);
      static Array._unconditionallyBridgeFromObjectiveC(_:)();
      isa = Array._bridgeToObjectiveC()().super.isa;
    }

    v21 = objc_allocWithZone(CNGroupIdentity);
    sub_100008B84(v19, v18);
    v22 = Data._bridgeToObjectiveC()().super.isa;
    sub_100008BD8(v19, v18);
    v23 = [v21 initGroupWithName:0 photo:v22 contacts:isa];

    sub_100008BD8(v19, v18);
    return v23;
  }
}

uint64_t sub_100008A04(id a1, id a2)
{
  if (a1 && [a1 sessionState] == 4)
  {
    return static SafetyMonitorUIConstants.exclamationMarkCircleIconName.getter();
  }

  if (!a2)
  {
    goto LABEL_13;
  }

  if ([a2 unsupportedDeviceSeparationState])
  {
    return static SafetyMonitorUIConstants.exclamationMarkCircleIconName.getter();
  }

  if ([a2 userDisabledConnectivity])
  {
    return static SafetyMonitorUIConstants.antennaRadiowavesLeftAndRightSlashFillIconName.getter();
  }

LABEL_13:
  if (!a1 || ([a1 sessionState], result = SMSessionState.badgeImageName.getter(), !v5))
  {
    v6 = static SafetyMonitorUIConstants.checkMarkCircleIconName.getter();

    return v6;
  }

  return result;
}

uint64_t sub_100008AB8(id a1, id a2)
{
  if (a1 && [a1 sessionState] == 4)
  {
LABEL_5:

    return static Color.red.getter();
  }

  if (a2)
  {
    if ([a2 unsupportedDeviceSeparationState])
    {
      goto LABEL_5;
    }

    if ([a2 userDisabledConnectivity])
    {
      goto LABEL_13;
    }
  }

  if (!a1)
  {
LABEL_13:

    return static Color.checkInYellow.getter();
  }

  else
  {
    v4 = [a1 sessionState];

    return SMSessionState.badgeImageColor.getter(v4);
  }
}

uint64_t sub_100008B84(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_100008BD8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100008BEC(a1, a2);
  }

  return a1;
}

uint64_t sub_100008BEC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_100008C40(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_100008C88()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100008CE0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100007B94(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100008D48()
{
  result = qword_100019AD0;
  if (!qword_100019AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100019AD0);
  }

  return result;
}

unint64_t sub_100008DA0()
{
  result = qword_100019AD8;
  if (!qword_100019AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100019AD8);
  }

  return result;
}

uint64_t sub_100008E2C()
{
  v0 = type metadata accessor for LocalizedStringResource();
  sub_10000BBF0(v0, qword_100019E00);
  sub_10000BBB8(v0, qword_100019E00);
  return LocalizedStringResource.init(stringLiteral:)();
}

uint64_t sub_100008EB4(uint64_t a1, uint64_t a2)
{
  v2[8] = a1;
  v2[9] = a2;
  v3 = type metadata accessor for URL();
  v2[10] = v3;
  v4 = *(v3 - 8);
  v2[11] = v4;
  v5 = *(v4 + 64) + 15;
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v6 = *(*(sub_100007B4C(&qword_100019AC8, &qword_1000116D0) - 8) + 64) + 15;
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v7 = *(*(sub_100007B4C(&qword_100019B38, &qword_1000116D8) - 8) + 64) + 15;
  v2[18] = swift_task_alloc();
  v8 = type metadata accessor for IntentSystemContext();
  v2[19] = v8;
  v9 = *(v8 - 8);
  v2[20] = v9;
  v10 = *(v9 + 64) + 15;
  v2[21] = swift_task_alloc();
  v11 = type metadata accessor for IntentSystemContext.Source();
  v2[22] = v11;
  v12 = *(v11 - 8);
  v2[23] = v12;
  v13 = *(v12 + 64) + 15;
  v2[24] = swift_task_alloc();
  v14 = type metadata accessor for Logger();
  v2[25] = v14;
  v15 = *(v14 - 8);
  v2[26] = v15;
  v16 = *(v15 + 64) + 15;
  v2[27] = swift_task_alloc();
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();
  v17 = *(*(sub_100007B4C(&qword_100019B40, &qword_1000116E0) - 8) + 64) + 15;
  v2[32] = swift_task_alloc();
  v18 = *(*(sub_100007B4C(&qword_100019B48, &qword_1000116E8) - 8) + 64) + 15;
  v2[33] = swift_task_alloc();
  v19 = type metadata accessor for IntentPerson.Handle.Value();
  v2[34] = v19;
  v20 = *(v19 - 8);
  v2[35] = v20;
  v21 = *(v20 + 64) + 15;
  v2[36] = swift_task_alloc();
  v2[37] = swift_task_alloc();
  v2[38] = swift_task_alloc();
  v2[39] = swift_task_alloc();
  v2[40] = swift_task_alloc();
  v2[41] = swift_task_alloc();
  type metadata accessor for MainActor();
  v2[42] = static MainActor.shared.getter();
  v23 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100009294, v23, v22);
}

uint64_t sub_100009294()
{
  v218 = v0;
  v1 = v0[42];
  v2 = v0[33];
  v3 = v0[9];

  IntentParameter.wrappedValue.getter();
  v4 = type metadata accessor for IntentPerson();
  if ((*(*(v4 - 8) + 48))(v2, 1, v4))
  {
    goto LABEL_4;
  }

  v5 = v0[32];
  v6 = v0[33];
  IntentPerson.handle.getter();
  v7 = type metadata accessor for IntentPerson.Handle();
  if ((*(*(v7 - 8) + 48))(v5, 1, v7))
  {
    sub_10000BA6C(v0[32], &qword_100019B40, &qword_1000116E0);
LABEL_4:
    sub_10000BA6C(v0[33], &qword_100019B48, &qword_1000116E8);
LABEL_5:
    v8 = 0;
    goto LABEL_6;
  }

  v109 = v0[40];
  v108 = v0[41];
  v110 = v0[39];
  v111 = v0[34];
  v112 = v0[35];
  v113 = v0[32];
  v114 = v0[33];
  v115 = v0[31];
  v116 = v0[9];
  IntentPerson.Handle.value.getter();
  sub_10000BA6C(v113, &qword_100019B40, &qword_1000116E0);
  sub_10000BA6C(v114, &qword_100019B48, &qword_1000116E8);
  (*(v112 + 32))(v108, v109, v111);
  static Logger.intents.getter();
  v216 = *(v112 + 16);
  v216(v110, v108, v111);

  v117 = Logger.logObject.getter();
  v118 = static os_log_type_t.debug.getter();

  v119 = os_log_type_enabled(v117, v118);
  v120 = v0[39];
  if (v119)
  {
    v121 = v0[38];
    v122 = v0[34];
    v123 = v0[35];
    v204 = v0[26];
    v209 = v0[25];
    v213 = v0[31];
    v124 = v0[9];
    v125 = swift_slowAlloc();
    v217 = swift_slowAlloc();
    *v125 = 136315650;
    v0[7] = v124;

    v126 = String.init<A>(describing:)();
    v195 = v118;
    v128 = sub_10000CCA0(v126, v127, &v217);

    *(v125 + 4) = v128;
    *(v125 + 12) = 2080;
    *(v125 + 14) = sub_10000CCA0(0x286D726F66726570, 0xE900000000000029, &v217);
    *(v125 + 22) = 2080;
    v216(v121, v120, v122);
    v129 = String.init<A>(describing:)();
    v131 = v130;
    v132 = *(v123 + 8);
    v132(v120, v122);
    v133 = sub_10000CCA0(v129, v131, &v217);

    *(v125 + 24) = v133;
    _os_log_impl(&_mh_execute_header, v117, v195, "%s, %s: IntentPerson handle value, %s", v125, 0x20u);
    swift_arrayDestroy();

    v134 = *(v204 + 8);
    v134(v213, v209);
  }

  else
  {
    v135 = v0[34];
    v136 = v0[35];
    v137 = v0[31];
    v138 = v0[25];
    v139 = v0[26];

    v132 = *(v136 + 8);
    v132(v120, v135);
    v134 = *(v139 + 8);
    v134(v137, v138);
  }

  v140 = v0[37];
  v141 = v0[34];
  v142 = v0[35];
  v216(v140, v0[41], v141);
  v143 = (*(v142 + 88))(v140, v141);
  if (v143 == enum case for IntentPerson.Handle.Value.phoneNumber(_:))
  {
    v144 = v0[37];
    v145 = v0[34];
    v146 = v0[35];
    v132(v0[41], v145);
    (*(v146 + 96))(v144, v145);
    v147 = *v144;
    v8 = v144[1];
  }

  else
  {
    v148 = v0[34];
    if (v143 == enum case for IntentPerson.Handle.Value.emailAddress(_:))
    {
      v149 = v0[37];
      v150 = v0[35];
      v132(v0[41], v0[34]);
      (*(v150 + 96))(v149, v148);
      v151 = *v149;
      v8 = v149[1];
    }

    else
    {
      v152 = v0[41];
      if (v143 != enum case for IntentPerson.Handle.Value.applicationDefined(_:))
      {
        v205 = v134;
        v158 = v0[36];
        v159 = v0[30];
        v160 = v0[9];
        static Logger.intents.getter();
        v216(v158, v152, v148);

        v161 = Logger.logObject.getter();
        v162 = static os_log_type_t.error.getter();

        v163 = os_log_type_enabled(v161, v162);
        v210 = v0[41];
        if (v163)
        {
          v164 = v0[38];
          v165 = v0[36];
          v189 = v0[35];
          v166 = v0[34];
          v193 = v0[26];
          v196 = v0[25];
          v200 = v0[30];
          v167 = v0[9];
          v168 = swift_slowAlloc();
          v217 = swift_slowAlloc();
          *v168 = 136315650;
          v0[6] = v167;

          v169 = String.init<A>(describing:)();
          v187 = v162;
          v171 = sub_10000CCA0(v169, v170, &v217);

          *(v168 + 4) = v171;
          *(v168 + 12) = 2080;
          *(v168 + 14) = sub_10000CCA0(0x286D726F66726570, 0xE900000000000029, &v217);
          *(v168 + 22) = 2080;
          v216(v164, v165, v166);
          v172 = String.init<A>(describing:)();
          v174 = v173;
          v175 = v132;
          v132(v165, v166);
          v176 = sub_10000CCA0(v172, v174, &v217);

          *(v168 + 24) = v176;
          _os_log_impl(&_mh_execute_header, v161, v187, "%s, %s: Unknown IntentPerson handle value type, %s", v168, 0x20u);
          swift_arrayDestroy();

          v205(v200, v196);
          v132(v210, v166);
        }

        else
        {
          v178 = v0[35];
          v177 = v0[36];
          v179 = v0[34];
          v180 = v0[30];
          v181 = v0[25];
          v182 = v0[26];

          v175 = v132;
          v132(v177, v179);
          v205(v180, v181);
          v132(v210, v179);
        }

        v175(v0[37], v0[34]);
        goto LABEL_5;
      }

      v153 = v0[37];
      (*(v0[35] + 96))(v153, v0[34]);
      v154 = *v153;
      v8 = v153[1];
      v155 = objc_opt_self();
      v156 = String._bridgeToObjectiveC()();
      v157 = [v155 getSMHandleTypeWithHandle:v156];

      v132(v152, v148);
      if (!v157)
      {

        goto LABEL_5;
      }
    }
  }

LABEL_6:
  v9 = v0[22];
  v10 = v0[23];
  v12 = v0[20];
  v11 = v0[21];
  v14 = v0[18];
  v13 = v0[19];
  v0[2] = v0[9];
  sub_10000A90C();
  AppIntent.systemContext.getter();
  IntentSystemContext.source.getter();
  (*(v12 + 8))(v11, v13);
  if ((*(v10 + 48))(v14, 1, v9) == 1)
  {
    sub_10000BA6C(v0[18], &qword_100019B38, &qword_1000116D8);
    v15 = 0;
    if (v8)
    {
LABEL_8:
      v16 = String._bridgeToObjectiveC()();

      goto LABEL_11;
    }
  }

  else
  {
    v18 = v0[23];
    v17 = v0[24];
    v19 = v0[22];
    (*(v18 + 32))(v17, v0[18], v19);
    v15 = sub_10000AFC8(v17);
    (*(v18 + 8))(v17, v19);
    if (v8)
    {
      goto LABEL_8;
    }
  }

  v16 = 0;
LABEL_11:
  v20 = [objc_opt_self() createURLForSuggestionsWithRecipientHandle:v16 appPayloadDataString:0 givenName:0 payloadType:4 sessionStartEntryType:v15];

  if (v20)
  {
    v21 = v0[16];
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v22 = 0;
  }

  else
  {
    v22 = 1;
  }

  v23 = v0[16];
  v24 = v0[17];
  v25 = v0[15];
  v26 = v0[10];
  v27 = v0[11];
  (*(v27 + 56))(v23, v22, 1, v26);
  sub_10000B9FC(v23, v24);
  sub_10000BB14(v24, v25, &qword_100019AC8, &qword_1000116D0);
  v28 = (*(v27 + 48))(v25, 1, v26);
  v29 = v0[15];
  if (v28 == 1)
  {
    v30 = v0[27];
    v31 = v0[9];
    sub_10000BA6C(v0[15], &qword_100019AC8, &qword_1000116D0);
    static Logger.intents.getter();

    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.error.getter();

    v34 = os_log_type_enabled(v32, v33);
    v36 = v0[26];
    v35 = v0[27];
    v37 = v0[25];
    if (v34)
    {
      v38 = v0[9];
      v39 = swift_slowAlloc();
      v217 = swift_slowAlloc();
      *v39 = 136315394;
      v0[3] = v38;

      v40 = String.init<A>(describing:)();
      v42 = sub_10000CCA0(v40, v41, &v217);

      *(v39 + 4) = v42;
      *(v39 + 12) = 2080;
      *(v39 + 14) = sub_10000CCA0(0x286D726F66726570, 0xE900000000000029, &v217);
      _os_log_impl(&_mh_execute_header, v32, v33, "%s, %s: Failed to generate URL", v39, 0x16u);
      swift_arrayDestroy();
    }

    (*(v36 + 8))(v35, v37);
  }

  else
  {
    v43 = v0[29];
    v45 = v0[13];
    v44 = v0[14];
    v46 = v0[10];
    v47 = v0[11];
    v48 = v0[9];
    (*(v47 + 32))(v44, v0[15], v46);
    static Logger.intents.getter();
    v206 = *(v47 + 16);
    v206(v45, v44, v46);

    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.debug.getter();

    v51 = os_log_type_enabled(v49, v50);
    v52 = v0[29];
    v53 = v0[26];
    v201 = v0[25];
    v54 = v0[13];
    v55 = v0[10];
    v56 = v0[11];
    if (v51)
    {
      v57 = v0[9];
      v197 = v0[29];
      v58 = swift_slowAlloc();
      v217 = swift_slowAlloc();
      *v58 = 136315650;
      v0[5] = v57;

      v59 = String.init<A>(describing:)();
      v61 = sub_10000CCA0(v59, v60, &v217);

      *(v58 + 4) = v61;
      *(v58 + 12) = 2080;
      *(v58 + 14) = sub_10000CCA0(0x286D726F66726570, 0xE900000000000029, &v217);
      *(v58 + 22) = 2080;
      sub_10000BACC(&qword_100019B50, &type metadata accessor for URL);
      v62 = dispatch thunk of CustomStringConvertible.description.getter();
      v64 = v63;
      v214 = *(v56 + 8);
      v214(v54, v55);
      v65 = sub_10000CCA0(v62, v64, &v217);

      *(v58 + 24) = v65;
      _os_log_impl(&_mh_execute_header, v49, v50, "%s, %s: About to open URL %s", v58, 0x20u);
      swift_arrayDestroy();

      v66 = v201;
      v202 = *(v53 + 8);
      v202(v197, v66);
    }

    else
    {

      v214 = *(v56 + 8);
      v214(v54, v55);
      v67 = v201;
      v202 = *(v53 + 8);
      v202(v52, v67);
    }

    v68 = v0[28];
    v69 = v0[14];
    v70 = v0[12];
    v71 = v0[9];
    v72 = v0[10];
    v73 = [objc_allocWithZone(LSApplicationWorkspace) init];
    URL._bridgeToObjectiveC()(v74);
    v76 = v75;
    sub_10000B278(&_swiftEmptyArrayStorage);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v73 openSensitiveURL:v76 withOptions:isa];

    static Logger.intents.getter();
    v206(v70, v69, v72);

    v78 = Logger.logObject.getter();
    v79 = static os_log_type_t.info.getter();

    v80 = os_log_type_enabled(v78, v79);
    v81 = v0[28];
    v82 = v0[25];
    v211 = v0[26];
    v83 = v0[14];
    v85 = v0[11];
    v84 = v0[12];
    v86 = v0[10];
    if (v80)
    {
      v207 = v0[14];
      v87 = v0[9];
      v198 = v0[25];
      v88 = swift_slowAlloc();
      v217 = swift_slowAlloc();
      *v88 = 136315650;
      v0[4] = v87;

      v89 = String.init<A>(describing:)();
      v191 = v81;
      v91 = sub_10000CCA0(v89, v90, &v217);

      *(v88 + 4) = v91;
      *(v88 + 12) = 2080;
      *(v88 + 14) = sub_10000CCA0(0x286D726F66726570, 0xE900000000000029, &v217);
      *(v88 + 22) = 2080;
      sub_10000BACC(&qword_100019B50, &type metadata accessor for URL);
      v92 = dispatch thunk of CustomStringConvertible.description.getter();
      v94 = v93;
      v214(v84, v86);
      v95 = sub_10000CCA0(v92, v94, &v217);

      *(v88 + 24) = v95;
      _os_log_impl(&_mh_execute_header, v78, v79, "%s, %s: Did open URL %s", v88, 0x20u);
      swift_arrayDestroy();

      v202(v191, v198);
      v214(v207, v86);
    }

    else
    {

      v214(v84, v86);
      v202(v81, v82);
      v214(v83, v86);
    }
  }

  v97 = v0[40];
  v96 = v0[41];
  v98 = v0[38];
  v99 = v0[39];
  v101 = v0[36];
  v100 = v0[37];
  v103 = v0[32];
  v102 = v0[33];
  v183 = v0[31];
  v184 = v0[30];
  v185 = v0[29];
  v186 = v0[28];
  v188 = v0[27];
  v190 = v0[24];
  v104 = v0[17];
  v192 = v0[21];
  v194 = v0[18];
  v199 = v0[16];
  v203 = v0[15];
  v208 = v0[14];
  v212 = v0[13];
  v215 = v0[12];
  v105 = v0[8];
  static IntentResult.result<>()();
  sub_10000BA6C(v104, &qword_100019AC8, &qword_1000116D0);

  v106 = v0[1];

  return v106();
}

uint64_t sub_10000A4F8@<X0>(uint64_t a1@<X8>)
{
  if (qword_100019570 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for LocalizedStringResource();
  v3 = sub_10000BBB8(v2, qword_100019E00);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_10000A5B0()
{
  v0 = sub_100007B4C(&qword_100019B90, &qword_100011718);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8, v2);
  v3 = sub_100007B4C(&qword_100019B98, &qword_100011720);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3, v5);
  ParameterSummaryString.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v6._object = 0x8000000100010180;
  v6._countAndFlagsBits = 0x1000000000000014;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v6);
  swift_getKeyPath();
  sub_100007B4C(&unk_100019BA0, &qword_100011750);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v7);
  ParameterSummaryString.init(stringInterpolation:)();
  return IntentParameterSummary.init(_:table:)();
}

uint64_t sub_10000A74C(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000A7EC;

  return sub_100008EB4(a1, v4);
}

uint64_t sub_10000A7EC()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_10000A8E0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10000B3A8();
  *a1 = result;
  return result;
}

unint64_t sub_10000A90C()
{
  result = qword_100019AE0;
  if (!qword_100019AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100019AE0);
  }

  return result;
}

uint64_t sub_10000A96C(uint64_t a1)
{
  v2 = sub_10000A90C();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_10000AA58(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  type metadata accessor for IntentSystemContext.Source();
  sub_10000BACC(&qword_100019B68, &type metadata accessor for IntentSystemContext.Source);
  v5 = dispatch thunk of Hashable._rawHashValue(seed:)();

  return sub_10000AB68(a1, v5);
}

unint64_t sub_10000AAF0(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();

  return sub_10000AD28(a1, a2, v6);
}

unint64_t sub_10000AB68(uint64_t a1, uint64_t a2)
{
  v21 = a1;
  v4 = type metadata accessor for IntentSystemContext.Source();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4, v7);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v2;
  v10 = -1 << *(v2 + 32);
  v11 = a2 & ~v10;
  v20 = v2 + 64;
  if ((*(v2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v15 = *(v5 + 16);
    v14 = v5 + 16;
    v13 = v15;
    v16 = *(v14 + 56);
    do
    {
      v13(v9, *(v22 + 48) + v16 * v11, v4);
      sub_10000BACC(&qword_100019B70, &type metadata accessor for IntentSystemContext.Source);
      v17 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v14 - 8))(v9, v4);
      if (v17)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
    }

    while (((*(v20 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  return v11;
}

unint64_t sub_10000AD28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_10000ADE0(uint64_t a1)
{
  v2 = sub_100007B4C(&qword_100019B60, &qword_1000116F8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2, v5);
  v7 = &v21 - v6;
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_100007B4C(&qword_100019B78, &qword_100011700);
    v9 = static _DictionaryStorage.allocate(capacity:)();
    v10 = *(v2 + 48);
    v11 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v12 = *(v3 + 72);

    while (1)
    {
      sub_10000BB14(v11, v7, &qword_100019B60, &qword_1000116F8);
      result = sub_10000AA58(v7);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v9 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = v9[6];
      v17 = type metadata accessor for IntentSystemContext.Source();
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v15, v7, v17);
      *(v9[7] + 8 * v15) = *&v7[v10];
      v18 = v9[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v9[2] = v20;
      v11 += v12;
      if (!--v8)
      {

        return v9;
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

uint64_t sub_10000AFC8(uint64_t a1)
{
  sub_100007B4C(&qword_100019B58, &qword_1000116F0);
  v1 = sub_100007B4C(&qword_100019B60, &qword_1000116F8);
  v2 = *(*(v1 - 8) + 72);
  v3 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1000114B0;
  v5 = v4 + v3;
  v6 = *(v1 + 48);
  v7 = enum case for IntentSystemContext.Source.shortcuts(_:);
  v8 = type metadata accessor for IntentSystemContext.Source();
  v9 = *(*(v8 - 8) + 104);
  v9(v5, v7, v8);
  *(v5 + v6) = 3;
  v10 = *(v1 + 48);
  v9(v5 + v2, enum case for IntentSystemContext.Source.spotlight(_:), v8);
  *(v5 + v2 + v10) = 4;
  v11 = *(v1 + 48);
  v9(v5 + 2 * v2, enum case for IntentSystemContext.Source.siri(_:), v8);
  *(v5 + 2 * v2 + v11) = 5;
  v12 = *(v1 + 48);
  v9(v5 + 3 * v2, enum case for IntentSystemContext.Source.actionButton(_:), v8);
  *(v5 + 3 * v2 + v12) = 11;
  v13 = *(v1 + 48);
  v9(v5 + 4 * v2, enum case for IntentSystemContext.Source.controlCenter(_:), v8);
  *(v5 + 4 * v2 + v13) = 12;
  v14 = *(v1 + 48);
  v9(v5 + 5 * v2, enum case for IntentSystemContext.Source.widget(_:), v8);
  *(v5 + 5 * v2 + v14) = 13;
  v15 = sub_10000ADE0(v4);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  if (*(v15 + 16) && (v16 = sub_10000AA58(a1), (v17 & 1) != 0))
  {
    v18 = *(*(v15 + 56) + 8 * v16);
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

unint64_t sub_10000B278(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100007B4C(&qword_100019B80, &qword_100011708);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_10000BB14(v4, &v13, &qword_100019B88, &qword_100011710);
      v5 = v13;
      v6 = v14;
      result = sub_10000AAF0(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_10000BB7C(&v15, (v3[7] + 32 * result));
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

uint64_t sub_10000B3A8()
{
  v27 = type metadata accessor for InputConnectionBehavior();
  v0 = *(v27 - 8);
  v1 = *(v0 + 64);
  __chkstk_darwin(v27, v2);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for IntentPerson.ParameterMode();
  v5 = *(v26 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v26, v7);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100007B4C(&qword_100019B20, &qword_1000116B0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8, v12);
  v14 = &v26 - v13;
  v15 = sub_100007B4C(&qword_100019B28, &qword_1000116B8);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8, v17);
  v19 = &v26 - v18;
  v20 = type metadata accessor for LocalizedStringResource();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  __chkstk_darwin(v20, v23);
  sub_100007B4C(&qword_100019B30, &qword_1000116C0);
  LocalizedStringResource.init(stringLiteral:)();
  (*(v21 + 56))(v19, 1, 1, v20);
  IntentDialog.init(stringLiteral:)();
  v24 = type metadata accessor for IntentDialog();
  (*(*(v24 - 8) + 56))(v14, 0, 1, v24);
  (*(v5 + 104))(v9, enum case for IntentPerson.ParameterMode.contact(_:), v26);
  (*(v0 + 104))(v4, enum case for InputConnectionBehavior.default(_:), v27);
  return IntentParameter<>.init(title:description:mode:requestValueDialog:inputConnectionBehavior:)();
}

uint64_t sub_10000B708()
{
  v0 = type metadata accessor for LocalizedStringResource();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8, v2);
  v15[0] = type metadata accessor for AppShortcut();
  v3 = *(v15[0] - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v15[0], v5);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15[1] = sub_10000B3A8();
  sub_100007B4C(&qword_100019B08, &qword_100011698);
  v8 = *(sub_100007B4C(&qword_100019B10, &qword_1000116A0) - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  *(swift_allocObject() + 16) = xmmword_1000114C0;
  sub_10000A90C();
  AppShortcutPhrase.init(stringLiteral:)();
  AppShortcutPhrase.init(stringLiteral:)();
  AppShortcutPhrase.init(stringLiteral:)();
  LocalizedStringResource.init(stringLiteral:)();
  AppShortcut.init<A>(intent:phrases:shortTitle:systemImageName:)();
  v11 = static AppShortcutsBuilder.buildExpression(_:)();
  (*(v3 + 8))(v7, v15[0]);
  sub_100007B4C(&qword_100019B18, &qword_1000116A8);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_100011350;
  *(v12 + 32) = v11;
  v13 = static AppShortcutsBuilder.buildBlock(_:)();

  return v13;
}

uint64_t sub_10000B9FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007B4C(&qword_100019AC8, &qword_1000116D0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000BA6C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100007B4C(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_10000BACC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10000BB14(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100007B4C(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

_OWORD *sub_10000BB7C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_10000BB8C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = IntentParameter.projectedValue.getter();
  *a2 = result;
  return result;
}

uint64_t sub_10000BBB8(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *sub_10000BBF0(uint64_t a1, uint64_t *a2)
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

uint64_t sub_10000BC54(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

id sub_10000BCF0()
{
  v1 = OBJC_IVAR____TtC16SafetyMonitorApp25LiveActivitySceneDelegate____lazy_storage___systemApertureElementProvider;
  v2 = *(v0 + OBJC_IVAR____TtC16SafetyMonitorApp25LiveActivitySceneDelegate____lazy_storage___systemApertureElementProvider);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC16SafetyMonitorApp25LiveActivitySceneDelegate____lazy_storage___systemApertureElementProvider);
  }

  else
  {
    type metadata accessor for LiveActivityElementViewController();
    v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t sub_10000BEB8()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v43 = *(v2 - 8);
  v44 = v2;
  v3 = *(v43 + 64);
  __chkstk_darwin(v2, v4);
  v42 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v40 = *(v6 - 8);
  v41 = v6;
  v7 = *(v40 + 64);
  __chkstk_darwin(v6, v8);
  v39 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = type metadata accessor for DispatchTime();
  v38 = *(v45 - 8);
  v10 = *(v38 + 64);
  v12 = __chkstk_darwin(v45, v11);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12, v15);
  v17 = &v38 - v16;
  v18 = type metadata accessor for Logger();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18, v21);
  v23 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.initiatorUI.getter();
  v24 = v1;
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *v27 = 138412290;
    *(v27 + 4) = v24;
    *v28 = v24;
    v29 = v24;
    _os_log_impl(&_mh_execute_header, v25, v26, "%@,refreshSize", v27, 0xCu);
    sub_10000D248(v28);
  }

  (*(v19 + 8))(v23, v18);
  sub_100008C40(0, &unk_100019C50, OS_dispatch_queue_ptr);
  v30 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  + infix(_:_:)();
  v38 = *(v38 + 8);
  (v38)(v14, v45);
  v31 = swift_allocObject();
  *(v31 + 16) = v24;
  aBlock[4] = sub_10000CC80;
  aBlock[5] = v31;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000BC54;
  aBlock[3] = &unk_100014F98;
  v32 = _Block_copy(aBlock);
  v33 = v24;

  v34 = v39;
  static DispatchQoS.unspecified.getter();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_10000E244(&unk_100019A60, &type metadata accessor for DispatchWorkItemFlags);
  sub_100007B4C(&unk_100019C60, &unk_100011460);
  sub_100008CE0(&qword_100019A70, &unk_100019C60, &unk_100011460);
  v35 = v42;
  v36 = v44;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v32);

  (*(v43 + 8))(v35, v36);
  (*(v40 + 8))(v34, v41);
  return (v38)(v17, v45);
}

void sub_10000C3F8(char *a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2, v5);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC16SafetyMonitorApp25LiveActivitySceneDelegate_window;
  v9 = *&a1[OBJC_IVAR____TtC16SafetyMonitorApp25LiveActivitySceneDelegate_window];
  if (v9)
  {
    v10 = [v9 windowScene];
    if (v10)
    {
      v26 = v10;
      type metadata accessor for ActivityScene();
      if (swift_dynamicCastClass())
      {
        if (*&a1[v8])
        {
          v11 = [*&a1[v8] rootViewController];
          if (v11)
          {
            v12 = v11;
            v13 = [v11 view];
            if (v13)
            {
              v14 = v13;
              [v13 sizeToFit];

              v15 = [v12 view];
              if (v15)
              {
                v16 = v15;
                [v15 bounds];

                v17 = objc_allocWithZone(type metadata accessor for ActivitySceneMetrics());
                ActivitySceneMetrics.init(size:cornerRadius:)();
                dispatch thunk of ActivityScene.resolvedMetrics.setter();

                goto LABEL_9;
              }
            }

            else
            {
              __break(1u);
            }

            __break(1u);
            return;
          }
        }

LABEL_9:
        v18 = v26;

        return;
      }
    }
  }

  static Logger.initiatorUI.getter();
  v19 = a1;
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *v22 = 138412290;
    *(v22 + 4) = v19;
    *v23 = v19;
    v24 = v19;
    _os_log_impl(&_mh_execute_header, v20, v21, "%@: Unable to resize - window scene is not an ActivityScene scene", v22, 0xCu);
    sub_10000D248(v23);
  }

  (*(v3 + 8))(v7, v2);
}

void sub_10000C6CC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_10000BEB8();
  }
}

uint64_t sub_10000C720(uint64_t a1, void *a2, void *a3)
{
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v22 = *(v5 - 8);
  v6 = *(v22 + 64);
  __chkstk_darwin(v5, v7);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for DispatchQoS();
  v10 = *(v21 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v21, v12);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100008C40(0, &unk_100019C50, OS_dispatch_queue_ptr);
  v15 = static OS_dispatch_queue.main.getter();
  v16 = swift_allocObject();
  *(v16 + 16) = a2;
  *(v16 + 24) = a3;
  aBlock[4] = sub_10000E2D4;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000BC54;
  aBlock[3] = &unk_100015038;
  v17 = _Block_copy(aBlock);
  v18 = a2;
  v19 = a3;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_10000E244(&unk_100019A60, &type metadata accessor for DispatchWorkItemFlags);
  sub_100007B4C(&unk_100019C60, &unk_100011460);
  sub_100008CE0(&qword_100019A70, &unk_100019C60, &unk_100011460);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v17);

  (*(v22 + 8))(v9, v5);
  return (*(v10 + 8))(v14, v21);
}

id sub_10000CA1C(void *a1)
{
  result = [a1 view];
  if (result)
  {
    v3 = result;
    [result sizeToFit];

    result = [a1 view];
    if (result)
    {
      v4 = result;
      [result bounds];

      v5 = objc_allocWithZone(type metadata accessor for ActivitySceneMetrics());
      ActivitySceneMetrics.init(size:cornerRadius:)();
      return dispatch thunk of ActivityScene.resolvedMetrics.setter();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_10000CAE0()
{
  *&v0[OBJC_IVAR____TtC16SafetyMonitorApp25LiveActivitySceneDelegate_window] = 0;
  *&v0[OBJC_IVAR____TtC16SafetyMonitorApp25LiveActivitySceneDelegate____lazy_storage___systemApertureElementProvider] = 0;
  if (&_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
  {
    v1 = sub_10000DF70(&_swiftEmptyArrayStorage);
  }

  else
  {
    v1 = &_swiftEmptySetSingleton;
  }

  *&v0[OBJC_IVAR____TtC16SafetyMonitorApp25LiveActivitySceneDelegate_cancellableSet] = v1;
  v3.receiver = v0;
  v3.super_class = type metadata accessor for LiveActivitySceneDelegate();
  return objc_msgSendSuper2(&v3, "init");
}

id sub_10000CB94()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LiveActivitySceneDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10000CC48()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000CC88(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000CCA0(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_10000CD6C(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_10000E2DC(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100007AC0(v11);
  return v7;
}

unint64_t sub_10000CD6C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_10000CE78(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = _StringObject.sharedUTF8.getter();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

char *sub_10000CE78(uint64_t a1, unint64_t a2)
{
  v4 = sub_10000CEC4(a1, a2);
  sub_10000CFF4(&off_100014C18);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_10000CEC4(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_10000D0E0(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = _StringObject.sharedUTF8.getter();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_10000D0E0(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_10000CFF4(uint64_t result)
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
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_10000D154(result, v12, 1, v3);
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
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_10000D0E0(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return &_swiftEmptyArrayStorage;
  }

  sub_100007B4C(&unk_100019CD0, &qword_1000117B8);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_10000D154(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100007B4C(&unk_100019CD0, &qword_1000117B8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_10000D248(uint64_t a1)
{
  v2 = sub_100007B4C(&qword_100019C70, &qword_100011798);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_10000D2B0(void *a1)
{
  v3 = type metadata accessor for Logger();
  v95 = *(v3 - 8);
  v4 = v95[8];
  __chkstk_darwin(v3, v5);
  v7 = v90 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100007B4C(&unk_100019C90, &qword_1000117A8);
  v93 = *(v8 - 8);
  v94 = v8;
  v9 = *(v93 + 64);
  __chkstk_darwin(v8, v10);
  v92 = v90 - v11;
  v12 = type metadata accessor for UIHostingControllerSizingOptions();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8, v14);
  v15 = type metadata accessor for LiveActivityView();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v19 = __chkstk_darwin(v15, v18);
  v21 = v90 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19, v22);
  v24 = v90 - v23;
  type metadata accessor for ActivityScene();
  v25 = swift_dynamicCastClass();
  if (v25)
  {
    v26 = v25;
    v27 = a1;
    if ([v26 SBUI_isHostedBySystemAperture])
    {
      v95 = sub_10000BCF0();
      [v26 setSystemApertureElementViewControllerProvider:v95];

      v28 = v95;

      return;
    }

    v91 = v27;
    v42 = [objc_allocWithZone(type metadata accessor for SecureWindow()) initWithWindowScene:v26];
    v43 = *&v1[OBJC_IVAR____TtC16SafetyMonitorApp25LiveActivitySceneDelegate_window];
    *&v1[OBJC_IVAR____TtC16SafetyMonitorApp25LiveActivitySceneDelegate_window] = v42;
    v44 = v42;

    v90[1] = type metadata accessor for SessionViewModel();
    static SessionViewModel.shared.getter();
    swift_allocObject();
    v95 = v1;
    swift_unknownObjectWeakInit();
    LiveActivityView.init(with:onLockscreen:resizeHandler:)();
    v45 = objc_allocWithZone(sub_100007B4C(&qword_100019A20, &qword_100011440));
    (*(v16 + 16))(v21, v24, v15);
    v46 = UIHostingController.init(rootView:)();
    (*(v16 + 8))(v24, v15);
    v47 = v46;
    static UIHostingControllerSizingOptions.preferredContentSize.getter();
    dispatch thunk of UIHostingController.sizingOptions.setter();

    v48 = v47;
    v49 = [v48 view];
    if (v49)
    {
      v50 = v49;
      v51 = [objc_opt_self() clearColor];
      [v50 setBackgroundColor:v51];

      [v44 setRootViewController:v48];
      [v44 makeKeyAndVisible];
      v52 = [v48 view];
      if (v52)
      {
        v53 = v52;
        [v52 sizeToFit];

        v54 = [v48 view];
        if (v54)
        {
          v55 = v54;
          [v54 setTranslatesAutoresizingMaskIntoConstraints:0];

          sub_100007B4C(&unk_100019CA0, &qword_100011458);
          v56 = swift_allocObject();
          *(v56 + 16) = xmmword_100011340;
          v57 = [v48 view];
          if (v57)
          {
            v58 = v57;
            v59 = [v57 leftAnchor];

            v60 = v44;
            v61 = [v60 leftAnchor];
            v62 = [v59 constraintEqualToAnchor:v61];

            *(v56 + 32) = v62;
            v63 = [v48 view];
            if (v63)
            {
              v64 = v63;
              v90[0] = v26;
              v65 = [v63 rightAnchor];

              v66 = [v60 rightAnchor];
              v67 = [v65 constraintEqualToAnchor:v66];

              *(v56 + 40) = v67;
              v68 = [v48 view];
              if (v68)
              {
                v69 = v68;
                v70 = [v68 topAnchor];

                v71 = [v60 topAnchor];
                v72 = [v70 constraintEqualToAnchor:v71];

                *(v56 + 48) = v72;
                v73 = [v48 view];
                if (v73)
                {
                  v74 = v73;
                  v75 = objc_opt_self();
                  v76 = [v74 bottomAnchor];

                  v77 = [v60 bottomAnchor];
                  v78 = [v76 constraintEqualToAnchor:v77];

                  *(v56 + 56) = v78;
                  sub_100008C40(0, &unk_100019A50, NSLayoutConstraint_ptr);
                  isa = Array._bridgeToObjectiveC()().super.isa;

                  [v75 activateConstraints:isa];

                  v80 = [v48 view];
                  if (v80)
                  {
                    [v80 bounds];

                    v81 = objc_allocWithZone(type metadata accessor for ActivitySceneMetrics());
                    ActivitySceneMetrics.init(size:cornerRadius:)();
                    v82 = v90[0];
                    dispatch thunk of ActivityScene.resolvedMetrics.setter();
                    static SessionViewModel.shared.getter();
                    sub_10000E244(&qword_100019CB0, &type metadata accessor for SessionViewModel);
                    v83 = ObservableObject<>.objectWillChange.getter();

                    v96[0] = v83;
                    type metadata accessor for ObservableObjectPublisher();
                    v84 = v92;
                    Publisher<>.makeConnectable()();

                    sub_100008CE0(&qword_100019CB8, &unk_100019C90, &qword_1000117A8);
                    v85 = v94;
                    v86 = ConnectablePublisher.autoconnect()();
                    (*(v93 + 8))(v84, v85);
                    v96[0] = v86;
                    v87 = swift_allocObject();
                    *(v87 + 16) = v48;
                    *(v87 + 24) = v82;
                    v88 = v91;
                    v89 = v48;
                    sub_100007B4C(&qword_100019CC0, &qword_1000117B0);
                    sub_100008CE0(&qword_100019CC8, &qword_100019CC0, &qword_1000117B0);
                    Publisher<>.sink(receiveValue:)();

                    swift_beginAccess();
                    AnyCancellable.store(in:)();
                    swift_endAccess();

                    return;
                  }

                  goto LABEL_25;
                }

LABEL_24:
                __break(1u);
LABEL_25:
                __break(1u);
                return;
              }

LABEL_23:
              __break(1u);
              goto LABEL_24;
            }

LABEL_22:
            __break(1u);
            goto LABEL_23;
          }

LABEL_21:
          __break(1u);
          goto LABEL_22;
        }

LABEL_20:
        __break(1u);
        goto LABEL_21;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_20;
  }

  v94 = v3;
  static Logger.initiatorUI.getter();
  v29 = a1;
  v30 = v1;
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v96[0] = v35;
    *v33 = 138412546;
    *(v33 + 4) = v30;
    *v34 = v30;
    *(v33 + 12) = 2080;
    v36 = v30;
    v37 = [v29 description];
    v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v40 = v39;

    v41 = sub_10000CCA0(v38, v40, v96);

    *(v33 + 14) = v41;
    _os_log_impl(&_mh_execute_header, v31, v32, "%@: Not a session scene: %s", v33, 0x16u);
    sub_10000D248(v34);

    sub_100007AC0(v35);
  }

  (v95[1])(v7, v94);
}

uint64_t sub_10000DDD8(const char *a1)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3, v6);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.initiatorUI.getter();
  v9 = v1;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412290;
    *(v12 + 4) = v9;
    *v13 = v9;
    v14 = v9;
    _os_log_impl(&_mh_execute_header, v10, v11, a1, v12, 0xCu);
    sub_10000D248(v13);
  }

  (*(v4 + 8))(v8, v3);
  return sub_10000BEB8();
}

unint64_t sub_10000DF70(unint64_t result)
{
  v1 = result;
  v2 = result >> 62;
  if (result >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (result)
    {
LABEL_3:
      sub_100007B4C(&qword_100019C78, &qword_1000117A0);
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
    sub_10000E244(&qword_100019C80, &type metadata accessor for AnyCancellable);
    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v11 = -1 << *(v3 + 32);
    v12 = result & ~v11;
    v13 = v12 >> 6;
    v14 = *&v7[8 * (v12 >> 6)];
    v15 = 1 << v12;
    if (((1 << v12) & v14) != 0)
    {
      v16 = ~v11;
      sub_10000E244(&qword_100019C88, &type metadata accessor for AnyCancellable);
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

uint64_t sub_10000E204()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000E244(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10000E28C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000E2DC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_10000E344()
{
  v0 = sub_100007B4C(&qword_100019D48, &qword_100011818);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0, v3);
  v5 = &v7 - v4;
  WindowGroup.init(id:title:lazyContent:)();
  sub_10000E528();
  static SceneBuilder.buildBlock<A>(_:)();
  return (*(v1 + 8))(v5, v0);
}

int main(int argc, const char **argv, const char **envp)
{
  sub_10000E4A8();
  static App.main()();
  return 0;
}

unint64_t sub_10000E4A8()
{
  result = qword_100019D40;
  if (!qword_100019D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100019D40);
  }

  return result;
}

unint64_t sub_10000E528()
{
  result = qword_100019D50;
  if (!qword_100019D50)
  {
    sub_100007B94(&qword_100019D48, &qword_100011818);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100019D50);
  }

  return result;
}