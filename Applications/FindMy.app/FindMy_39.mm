id sub_1004223A4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMConditionProvider();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_10042250C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v6, v1 + OBJC_IVAR____TtC6FindMy28NotificationSettingsObserver_logger, v3);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "NotificationSettingsObserver: Deinit", v9, 2u);
  }

  (*(v4 + 8))(v6, v3);
  sub_100422698();
  v11.receiver = v1;
  v11.super_class = ObjectType;
  return objc_msgSendSuper2(&v11, "dealloc");
}

void sub_100422698()
{
  v1 = v0;
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v7 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_100005B4C(0xD000000000000011, 0x8000000100598400, &v7);
    _os_log_impl(&_mh_execute_header, v2, v3, "NotificationSettingsObserver: %s", v4, 0xCu);
    sub_100006060(v5);
  }

  v6 = [objc_opt_self() defaultCenter];
  [v6 removeObserver:v1 name:UISceneWillEnterForegroundNotification object:0];
}

uint64_t sub_1004228A4()
{
  v0 = type metadata accessor for DispatchQoS();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = aBlock - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static DispatchWorkItemFlags.barrier.getter();
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_1004247B8;
  aBlock[5] = v8;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004AE4;
  aBlock[3] = &unk_10063DF80;
  v9 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v9);
  (*(v1 + 8))(v3, v0);
  (*(v5 + 8))(v7, v4);
}

void sub_100422AE8()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    (*(v1 + 16))(v3, Strong + OBJC_IVAR____TtC6FindMy28NotificationSettingsObserver_logger, v0);

    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "NotificationSettingsObserver: Set Property isUpToDate to false", v8, 2u);
    }

    (*(v1 + 8))(v3, v0);
  }

  swift_beginAccess();
  v9 = swift_unknownObjectWeakLoadStrong();
  if (v9)
  {
    v9[OBJC_IVAR____TtC6FindMy28NotificationSettingsObserver_isUpToDate] = 0;
  }
}

uint64_t sub_100422D8C()
{
  v0 = type metadata accessor for Date();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v46 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __chkstk_darwin(v2);
  v50 = &v44 - v5;
  __chkstk_darwin(v4);
  v7 = &v44 - v6;
  v55 = type metadata accessor for Calendar.Component();
  v8 = *(v55 - 8);
  __chkstk_darwin(v55);
  v51 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = type metadata accessor for Calendar();
  v52 = *(v54 - 8);
  __chkstk_darwin(v54);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10007EBC0(&unk_1006B0000);
  v13 = __chkstk_darwin(v12 - 8);
  v49 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v53 = &v44 - v16;
  v17 = __chkstk_darwin(v15);
  v56 = &v44 - v18;
  __chkstk_darwin(v17);
  v20 = &v44 - v19;
  v21 = [objc_opt_self() standardUserDefaults];
  v22 = String._bridgeToObjectiveC()();
  v23 = [v21 dataForKey:v22];

  if (v23)
  {
    v24 = v7;
    v25 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v27 = v26;

    type metadata accessor for JSONDecoder();
    swift_allocObject();
    JSONDecoder.init()();
    sub_100006A6C(&unk_1006BF800, &type metadata accessor for Date);
    v28 = v20;
    v47 = v25;
    v48 = v27;
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();

    (*(v1 + 56))(v20, 0, 1, v0);
    static Calendar.current.getter();
    v29 = v51;
    v30 = v55;
    (*(v8 + 104))(v51, enum case for Calendar.Component.day(_:), v55);
    static Date.now.getter();
    Calendar.date(byAdding:value:to:wrappingComponents:)();
    v45 = *(v1 + 8);
    v45(v24, v0);
    v31 = v30;
    v32 = v28;
    (*(v8 + 8))(v29, v31);
    (*(v52 + 8))(v11, v54);
    v33 = v53;
    sub_100007204(v28, v53, &unk_1006B0000);
    v34 = *(v1 + 48);
    if (v34(v33, 1, v0) == 1)
    {
      sub_10000A858(v47, v48);
      v35 = v56;
    }

    else
    {
      v36 = *(v1 + 32);
      v37 = v50;
      v36(v50, v33, v0);
      v38 = v56;
      v33 = v49;
      sub_100007204(v56, v49, &unk_1006B0000);
      if (v34(v33, 1, v0) != 1)
      {
        v40 = v46;
        v36(v46, v33, v0);
        LOBYTE(v23) = static Date.> infix(_:_:)();
        sub_10000A858(v47, v48);
        v41 = v40;
        v42 = v45;
        v45(v41, v0);
        v42(v37, v0);
        v33 = v32;
        v39 = v38;
        goto LABEL_8;
      }

      sub_10000A858(v47, v48);
      v45(v37, v0);
      v35 = v38;
    }

    sub_100012DF0(v35, &unk_1006B0000);
    LOBYTE(v23) = 0;
    v39 = v32;
LABEL_8:
    sub_100012DF0(v39, &unk_1006B0000);
    sub_100012DF0(v33, &unk_1006B0000);
  }

  return v23 & 1;
}

uint64_t sub_1004233DC()
{
  v0 = type metadata accessor for Date();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v46 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __chkstk_darwin(v2);
  v50 = &v44 - v5;
  __chkstk_darwin(v4);
  v7 = &v44 - v6;
  v55 = type metadata accessor for Calendar.Component();
  v8 = *(v55 - 8);
  __chkstk_darwin(v55);
  v51 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = type metadata accessor for Calendar();
  v52 = *(v54 - 8);
  __chkstk_darwin(v54);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10007EBC0(&unk_1006B0000);
  v13 = __chkstk_darwin(v12 - 8);
  v49 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v53 = &v44 - v16;
  v17 = __chkstk_darwin(v15);
  v56 = &v44 - v18;
  __chkstk_darwin(v17);
  v20 = &v44 - v19;
  v21 = [objc_opt_self() standardUserDefaults];
  v22 = String._bridgeToObjectiveC()();
  v23 = [v21 dataForKey:v22];

  if (v23)
  {
    v24 = v7;
    v25 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v27 = v26;

    type metadata accessor for JSONDecoder();
    swift_allocObject();
    JSONDecoder.init()();
    sub_100006A6C(&unk_1006BF800, &type metadata accessor for Date);
    v28 = v20;
    v47 = v25;
    v48 = v27;
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();

    (*(v1 + 56))(v20, 0, 1, v0);
    static Calendar.current.getter();
    v29 = v51;
    v30 = v55;
    (*(v8 + 104))(v51, enum case for Calendar.Component.day(_:), v55);
    static Date.now.getter();
    Calendar.date(byAdding:value:to:wrappingComponents:)();
    v45 = *(v1 + 8);
    v45(v24, v0);
    v31 = v30;
    v32 = v28;
    (*(v8 + 8))(v29, v31);
    (*(v52 + 8))(v11, v54);
    v33 = v53;
    sub_100007204(v28, v53, &unk_1006B0000);
    v34 = *(v1 + 48);
    if (v34(v33, 1, v0) == 1)
    {
      sub_10000A858(v47, v48);
      v35 = v56;
    }

    else
    {
      v36 = *(v1 + 32);
      v37 = v50;
      v36(v50, v33, v0);
      v38 = v56;
      v33 = v49;
      sub_100007204(v56, v49, &unk_1006B0000);
      if (v34(v33, 1, v0) != 1)
      {
        v40 = v46;
        v36(v46, v33, v0);
        LOBYTE(v23) = static Date.> infix(_:_:)();
        sub_10000A858(v47, v48);
        v41 = v40;
        v42 = v45;
        v45(v41, v0);
        v42(v37, v0);
        v33 = v32;
        v39 = v38;
        goto LABEL_8;
      }

      sub_10000A858(v47, v48);
      v45(v37, v0);
      v35 = v38;
    }

    sub_100012DF0(v35, &unk_1006B0000);
    LOBYTE(v23) = 0;
    v39 = v32;
LABEL_8:
    sub_100012DF0(v39, &unk_1006B0000);
    sub_100012DF0(v33, &unk_1006B0000);
  }

  return v23 & 1;
}

id sub_100423A2C()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 BOOLForKey:v1];

  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100005B14(v3, qword_1006D4630);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 67109120;
    *(v6 + 4) = v2;
    _os_log_impl(&_mh_execute_header, v4, v5, "FMConditionProvider: was Shared Lost Item alert already shown? %{BOOL}d", v6, 8u);
  }

  return v2;
}

uint64_t sub_100423B78(uint64_t a1, uint64_t a2)
{
  v4 = sub_10007EBC0(&unk_1006BEF30);
  __chkstk_darwin(v4 - 8);
  v6 = &v41 - v5;
  v47 = type metadata accessor for DispatchTimeInterval();
  v45 = *(v47 - 8);
  __chkstk_darwin(v47);
  v8 = (&v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v46 = type metadata accessor for DispatchTime();
  v44 = *(v46 - 8);
  v9 = __chkstk_darwin(v46);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v41 - v12;
  v14 = type metadata accessor for DispatchWorkItemFlags();
  __chkstk_darwin(v14);
  My = type metadata accessor for Feature.FindMy();
  v50 = My;
  v51 = sub_100006A6C(&qword_1006B4220, &type metadata accessor for Feature.FindMy);
  v16 = sub_100008FC0(aBlock);
  (*(*(My - 8) + 104))(v16, enum case for Feature.FindMy.fmNiftyCurve(_:), My);

  LOBYTE(My) = isFeatureEnabled(_:)();
  sub_100006060(aBlock);
  if (My)
  {
    v43 = a1;
    v17 = swift_allocObject();
    *(v17 + 16) = 0;
    v18 = swift_allocObject();
    v18[2] = v17;
    v18[3] = sub_1004246C8;
    v18[4] = a2;
    v51 = sub_100424790;
    v52 = v18;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100004AE4;
    v50 = &unk_10063DE68;
    v41 = _Block_copy(aBlock);
    v48 = _swiftEmptyArrayStorage;
    sub_100006A6C(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);
    v42 = v17;

    sub_10007EBC0(&unk_1006B0640);
    sub_100004098(&qword_1006AEDF0, &unk_1006B0640);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    type metadata accessor for DispatchWorkItem();
    swift_allocObject();
    v19 = DispatchWorkItem.init(flags:block:)();

    sub_100003E90();
    v20 = static OS_dispatch_queue.main.getter();
    static DispatchTime.now()();
    *v8 = 30;
    v21 = v45;
    v22 = v47;
    (*(v45 + 104))(v8, enum case for DispatchTimeInterval.seconds(_:), v47);
    + infix(_:_:)();
    (*(v21 + 8))(v8, v22);
    v23 = *(v44 + 8);
    v24 = v46;
    v23(v11, v46);
    OS_dispatch_queue.asyncAfter(deadline:execute:)();

    v23(v13, v24);
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    sub_100005B14(v25, qword_1006D4630);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();
    v28 = os_log_type_enabled(v26, v27);
    v29 = v43;
    if (v28)
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&_mh_execute_header, v26, v27, "FMConditionProvider: Fetching Stewie publish result…", v30, 2u);
    }

    v31 = *(v29 + OBJC_IVAR____TtC6FindMy19FMConditionProvider_stewieStateMonitor);
    v32 = swift_allocObject();
    v32[2] = v42;
    v32[3] = v19;
    v32[4] = sub_1004246C8;
    v32[5] = a2;
    v33 = v31[5];
    v34 = v31[6];
    sub_1000244BC(v31 + 2, v33);
    v35 = *(v34 + 8);

    v35(sub_10042479C, v32, v33, v34);
  }

  else
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v37 = Strong;
      v38 = type metadata accessor for TaskPriority();
      (*(*(v38 - 8) + 56))(v6, 1, 1, v38);
      v39 = swift_allocObject();
      v39[2] = 0;
      v39[3] = 0;
      v39[4] = v37;
      v39[5] = 0;

      sub_10041D3F4(0, 0, v6, &unk_1005611F0, v39);

      sub_100012DF0(v6, &unk_1006BEF30);
    }
  }
}

uint64_t sub_1004242D0()
{
  v0 = type metadata accessor for Date();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  static Date.now.getter();
  sub_100006A6C(&unk_1006BF770, &type metadata accessor for Date);
  v4 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v6 = v5;
  (*(v1 + 8))(v3, v0);

  v7 = [objc_opt_self() standardUserDefaults];
  isa = Data._bridgeToObjectiveC()().super.isa;
  v9 = String._bridgeToObjectiveC()();
  [v7 setObject:isa forKey:v9];

  return sub_10000A858(v4, v6);
}

uint64_t sub_1004244CC()
{
  v0 = type metadata accessor for Date();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  static Date.now.getter();
  sub_100006A6C(&unk_1006BF770, &type metadata accessor for Date);
  v4 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v6 = v5;
  (*(v1 + 8))(v3, v0);

  v7 = [objc_opt_self() standardUserDefaults];
  isa = Data._bridgeToObjectiveC()().super.isa;
  v9 = String._bridgeToObjectiveC()();
  [v7 setObject:isa forKey:v9];

  return sub_10000A858(v4, v6);
}

uint64_t sub_1004246D0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1000E3478;

  return sub_100171B90(a1, v4, v5, v7, v6);
}

uint64_t sub_1004247D8(uint64_t a1)
{

  return _swift_deallocObject(v1, a1, 7);
}

uint64_t sub_100424844()
{
  v1 = *(v0 + 16);
  result = sub_10041EDE4();
  *(v1 + OBJC_IVAR____TtC6FindMy19FMConditionProvider_isAccountCheckPending) = 0;
  return result;
}

void sub_10042488C()
{
  static SystemInfo.isKoreaSKU.getter();
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = String._bridgeToObjectiveC()();
  [v0 setBool:1 forKey:?];
}

id sub_100424954(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a1;
  }

  else
  {
    v2 = 0;
  }

  if (a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = 0xE000000000000000;
  }

  v4._countAndFlagsBits = v2;
  v4._object = v3;
  String.append(_:)(v4);

  v5 = [objc_opt_self() standardUserDefaults];
  v6 = String._bridgeToObjectiveC()();

  v7 = [v5 BOOLForKey:v6];

  return v7;
}

void sub_100424A30(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a1;
  }

  else
  {
    v2 = 0;
  }

  if (a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = 0xE000000000000000;
  }

  v4._countAndFlagsBits = v2;
  v4._object = v3;
  String.append(_:)(v4);

  v5 = [objc_opt_self() standardUserDefaults];
  v6 = String._bridgeToObjectiveC()();

  [v5 setBool:1 forKey:v6];
}

UIFontTextStyle sub_100424B78()
{
  qword_1006D4AD8 = UIFontTextStyleFootnote;
  qword_1006D4AE0 = 0x4034000000000000;
  return UIFontTextStyleFootnote;
}

id sub_100424B98()
{
  if (qword_1006AEC30 != -1)
  {
    swift_once();
  }

  v1 = qword_1006D47A0 != 1;
  v2 = OBJC_IVAR____TtC6FindMy28FMMessageTableViewHeaderView_remainingCharsLabel;
  v3 = *&v0[OBJC_IVAR____TtC6FindMy28FMMessageTableViewHeaderView_remainingCharsLabel];
  v4 = objc_opt_self();
  v5 = *&v0[OBJC_IVAR____TtC6FindMy28FMMessageTableViewHeaderView_style];
  v6 = v3;
  v7 = [v4 preferredFontForTextStyle:v5];
  [v6 setFont:v7];

  [*&v0[v2] setAdjustsFontForContentSizeCategory:1];
  [*&v0[v2] setNumberOfLines:0];
  v8 = *&v0[v2];
  v9 = objc_opt_self();
  v10 = v8;
  v11 = [v9 tertiaryLabelColor];
  [v10 setTextColor:v11];

  [*&v0[v2] setTextAlignment:2 * v1];
  v12 = *&v0[v2];

  return [v0 addSubview:v12];
}

void sub_100424D20()
{
  v12.receiver = v0;
  v12.super_class = type metadata accessor for FMMessageTableViewHeaderView();
  objc_msgSendSuper2(&v12, "layoutSubviews");
  if (qword_1006AECE8 != -1)
  {
    swift_once();
  }

  v1 = *&qword_1006D4AE0;
  v2 = [v0 textLabel];
  if (v2)
  {
    v3 = v2;
    [v2 bounds];
    [v3 convertRect:v0 toCoordinateSpace:?];
    v5 = v4;
    v7 = v6;
    v8 = *&v0[OBJC_IVAR____TtC6FindMy28FMMessageTableViewHeaderView_remainingCharsLabel];
    [v0 bounds];
    v10 = v1 + v9;
    [v0 bounds];
    [v8 setFrame:{v10, v5, v11 - (v1 + v1), v7}];
  }
}

id sub_100424E98(uint64_t a1, uint64_t a2)
{
  v4 = &v2[OBJC_IVAR____TtC6FindMy28FMMessageTableViewHeaderView_style];
  if (qword_1006AECE8 != -1)
  {
    swift_once();
  }

  v5 = qword_1006D4AD8;
  v6 = qword_1006D4AE0;
  *v4 = qword_1006D4AD8;
  *(v4 + 1) = v6;
  v7 = OBJC_IVAR____TtC6FindMy28FMMessageTableViewHeaderView_remainingCharsLabel;
  v8 = objc_allocWithZone(UILabel);
  v9 = v5;
  *&v2[v7] = [v8 init];
  if (a2)
  {
    v10 = String._bridgeToObjectiveC()();
  }

  else
  {
    v10 = 0;
  }

  v13.receiver = v2;
  v13.super_class = type metadata accessor for FMMessageTableViewHeaderView();
  v11 = objc_msgSendSuper2(&v13, "initWithReuseIdentifier:", v10);

  return v11;
}

id sub_100424FE0(void *a1)
{
  v3 = &v1[OBJC_IVAR____TtC6FindMy28FMMessageTableViewHeaderView_style];
  if (qword_1006AECE8 != -1)
  {
    swift_once();
  }

  v4 = qword_1006D4AD8;
  v5 = qword_1006D4AE0;
  *v3 = qword_1006D4AD8;
  *(v3 + 1) = v5;
  v6 = OBJC_IVAR____TtC6FindMy28FMMessageTableViewHeaderView_remainingCharsLabel;
  v7 = objc_allocWithZone(UILabel);
  v8 = v4;
  *&v1[v6] = [v7 init];
  v11.receiver = v1;
  v11.super_class = type metadata accessor for FMMessageTableViewHeaderView();
  v9 = objc_msgSendSuper2(&v11, "initWithCoder:", a1);

  if (v9)
  {
  }

  return v9;
}

id sub_1004250FC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMMessageTableViewHeaderView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_10042528C()
{
  if ([v0 isCancelled])
  {
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_100005B14(v1, qword_1006D4630);
    oslog = Logger.logObject.getter();
    v2 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v2))
    {
      v3 = swift_slowAlloc();
      *v3 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v2, "FMETAOperation: operation cancelled", v3, 2u);
    }
  }
}

uint64_t sub_1004253E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[28] = v10;
  v8[29] = v11;
  v8[26] = a7;
  v8[27] = a8;
  v8[24] = a5;
  v8[25] = a6;
  v8[23] = a4;
  return _swift_task_switch(sub_100425414, 0, 0);
}

uint64_t sub_100425414()
{
  v2 = v0[25];
  v1 = v0[26];
  v3 = [objc_allocWithZone(MKDirectionsRequest) init];
  v0[30] = v3;
  v4 = [objc_allocWithZone(MKMapItem) initWithCLLocation:v2];
  [v3 setSource:v4];

  v5 = [objc_allocWithZone(MKMapItem) initWithCLLocation:v1];
  [v3 setDestination:v5];

  [v3 setTransportType:1];
  v6 = [objc_allocWithZone(MKDirections) initWithRequest:v3];
  v0[31] = v6;
  v0[2] = v0;
  v0[7] = v0 + 21;
  v0[3] = sub_100425600;
  v7 = swift_continuation_init();
  v0[17] = sub_10007EBC0(&qword_1006BF888);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_10020F6A0;
  v0[13] = &unk_10063E3C0;
  v0[14] = v7;
  [v6 calculateETAWithCompletionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_100425600()
{
  v1 = *(*v0 + 48);
  *(*v0 + 256) = v1;
  if (v1)
  {
    v2 = sub_100425908;
  }

  else
  {
    v2 = sub_100425710;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100425710()
{
  v1 = v0[21];
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100005B14(v2, qword_1006D4630);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    *(v6 + 4) = v3;
    *v7 = v3;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v4, v5, "FMETAOperation: eta calculation completed with eta: %@", v6, 0xCu);
    sub_100012DF0(v7, &unk_1006AF760);
  }

  v9 = v0[30];
  v10 = v0[31];
  v11 = v0[29];
  v12 = v0[27];
  v14 = v0[23];
  v13 = v0[24];

  [v3 expectedTravelTime];
  v16 = v15;
  [v3 distance];
  v12(v14, v13, v16, v17, 0);
  [v11 setFinished:1];

  v18 = v0[1];

  return v18();
}

uint64_t sub_100425908()
{
  v17 = v0;
  v1 = v0[31];
  v2 = v0[30];
  swift_willThrow();

  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100005B14(v3, qword_1006D4630);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v16 = v7;
    *v6 = 136315138;
    swift_getErrorValue();
    v8 = Error.localizedDescription.getter();
    v10 = sub_100005B4C(v8, v9, &v16);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "FMETAOperation: eta calculation completed with error: %s", v6, 0xCu);
    sub_100006060(v7);
  }

  v11 = v0[32];
  v12 = v0[29];
  v13 = v0[27];
  swift_errorRetain();
  v13(0, 0, 0, 0, v11);

  [v12 setFinished:1];

  v14 = v0[1];

  return v14();
}

id sub_100425D00()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMETAOperation();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100425DC4(uint64_t a1)
{
  v4 = v1[3];
  v12 = v1[2];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v9 = v1[8];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1000E3478;

  return sub_1004253E0(a1, v12, v4, v5, v6, v7, v8, v9);
}

double sub_100425EB8@<D0>(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() systemBlueColor];
  v3 = [v2 colorWithAlphaComponent:0.2];

  v4 = [v3 CGColor];
  *a1 = xmmword_1005584D0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0;
  *(a1 + 56) = xmmword_1005612F0;
  *(a1 + 72) = xmmword_100561300;
  *(a1 + 88) = xmmword_100561310;
  *(a1 + 104) = xmmword_100561320;
  *(a1 + 120) = xmmword_100561330;
  result = 30.0;
  *(a1 + 136) = xmmword_100561340;
  *(a1 + 152) = 0x4008000000000000;
  *(a1 + 160) = v4;
  *(a1 + 168) = 1;
  return result;
}

uint64_t sub_100425FC8@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC6FindMy17FMTrackAnnotation_location);
  v4 = sub_1002CEAA0();
  v6 = v5;

  *a1 = v4;
  a1[1] = v6;
  type metadata accessor for FMAnnotationIdentifier();

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_10042603C()
{
  v1 = OBJC_IVAR____TtC6FindMy17FMTrackAnnotation_timestamp;
  v2 = type metadata accessor for Date();
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

id sub_1004260C4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMTrackAnnotation();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100426190@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC6FindMy17FMTrackAnnotation_timestamp;
  v5 = type metadata accessor for Date();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

id sub_10042620C(void *a1)
{
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC6FindMy17FMTrackAnnotation_noImage;
  *&v1[v7] = [objc_allocWithZone(UIImage) init];
  *&v1[OBJC_IVAR____TtC6FindMy17FMTrackAnnotation_location] = a1;
  v8 = a1;
  v9 = [v8 timestamp];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  (*(v4 + 32))(&v1[OBJC_IVAR____TtC6FindMy17FMTrackAnnotation_timestamp], v6, v3);
  [v8 coordinate];
  v11 = v10;
  v13 = v12;
  [v8 horizontalAccuracy];
  v14 = &v1[OBJC_IVAR____TtC6FindMy12FMAnnotation_title];
  *v14 = 0;
  v14[1] = 0;
  *&v1[OBJC_IVAR____TtC6FindMy12FMAnnotation_badgeImage] = 0;
  *&v1[OBJC_IVAR____TtC6FindMy12FMAnnotation_stewieBadgeImage] = 0;
  v15 = &v1[OBJC_IVAR____TtC6FindMy12FMAnnotation_fmClusterIdentifier];
  *v15 = 0;
  v15[1] = 0;
  v16 = &v1[OBJC_IVAR____TtC6FindMy12FMAnnotation_coordinate];
  *v16 = v11;
  v16[1] = v13;
  *&v1[OBJC_IVAR____TtC6FindMy12FMAnnotation_horizontalAccuracy] = v17;
  v1[OBJC_IVAR____TtC6FindMy12FMAnnotation_isWithYou] = 0;
  v1[OBJC_IVAR____TtC6FindMy12FMAnnotation_isInaccurate] = 0;
  v1[OBJC_IVAR____TtC6FindMy12FMAnnotation_isLive] = 0;
  v18 = type metadata accessor for FMAnnotation();
  v20.receiver = v1;
  v20.super_class = v18;
  return objc_msgSendSuper2(&v20, "init");
}

char *sub_100426428(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v8 = [objc_opt_self() mainBundle];
  v29._object = 0x800000010057FD20;
  v9._countAndFlagsBits = 0xD00000000000001BLL;
  v9._object = 0x8000000100598BE0;
  v10.value._object = 0x800000010057FD00;
  v29._countAndFlagsBits = 0xD000000000000017;
  v10.value._countAndFlagsBits = 0xD000000000000012;
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v9, v10, v8, v11, v29);

  v12 = sub_10022F844(0xD00000000000001ELL, 0x8000000100598BC0);
  v14 = v13;
  v27 = &type metadata for SolariumFeatureFlag;
  v28 = sub_10000BD04();
  v15 = isFeatureEnabled(_:)();
  sub_100006060(v26);
  v16 = objc_allocWithZone(v5);
  v17 = String._bridgeToObjectiveC()();

  v18 = String._bridgeToObjectiveC()();
  if (v15)
  {
    v19 = [v16 initWithTitle:v17 detailText:v18 icon:0 contentLayout:4];
  }

  else
  {
    v19 = [v16 initWithTitle:v17 detailText:v18 icon:0];
  }

  v20 = v19;

  v20[OBJC_IVAR____TtC6FindMy29FMStewieWelcomeViewController_presentationSource] = a5 & 1;
  *&v20[OBJC_IVAR____TtC6FindMy29FMStewieWelcomeViewController_mediator] = a1;
  v21 = v20;

  *&v21[OBJC_IVAR____TtC6FindMy29FMStewieWelcomeViewController_delegate + 8] = a4;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  *&v21[OBJC_IVAR____TtC6FindMy29FMStewieWelcomeViewController_viewModel] = a2;

  v22 = &v21[OBJC_IVAR____TtC6FindMy29FMStewieWelcomeViewController_baseDetailText];
  *v22 = v12;
  v22[1] = v14;

  return v21;
}

FindMy::FMStewieWelcomeViewPresentationSource_optional __swiftcall FMStewieWelcomeViewPresentationSource.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100622C28, v2);

  if (v3 == 1)
  {
    v4.value = FindMy_FMStewieWelcomeViewPresentationSource_openApp;
  }

  else
  {
    v4.value = FindMy_FMStewieWelcomeViewPresentationSource_unknownDefault;
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

uint64_t FMStewieWelcomeViewPresentationSource.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0x7070416E65706FLL;
  }

  else
  {
    return 0x6163696669746F6ELL;
  }
}

uint64_t sub_100426718(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x7070416E65706FLL;
  }

  else
  {
    v3 = 0x6163696669746F6ELL;
  }

  if (v2)
  {
    v4 = 0xEF7061546E6F6974;
  }

  else
  {
    v4 = 0xE700000000000000;
  }

  if (*a2)
  {
    v5 = 0x7070416E65706FLL;
  }

  else
  {
    v5 = 0x6163696669746F6ELL;
  }

  if (*a2)
  {
    v6 = 0xE700000000000000;
  }

  else
  {
    v6 = 0xEF7061546E6F6974;
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

unint64_t sub_1004267D0()
{
  result = qword_1006BF908;
  if (!qword_1006BF908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006BF908);
  }

  return result;
}

Swift::Int sub_100426824()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1004268B4()
{
  String.hash(into:)();
}

Swift::Int sub_100426930()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1004269BC@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_100622C28, *a1);

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

void sub_100426A1C(uint64_t *a1@<X8>)
{
  v2 = 0x6163696669746F6ELL;
  if (*v1)
  {
    v2 = 0x7070416E65706FLL;
  }

  v3 = 0xEF7061546E6F6974;
  if (*v1)
  {
    v3 = 0xE700000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

NSString *sub_100426A78()
{
  qword_1006BF8D8 = UIFontTextStyleBody;
  unk_1006BF8E0 = UIFontTextStyleBody;
  xmmword_1006BF8E8 = xmmword_100556E80;
  unk_1006BF8F8 = xmmword_100561390;
  v0 = UIFontTextStyleBody;

  return v0;
}

void sub_100426B2C()
{
  v1 = v0;
  v2 = [v0 contentView];
  v3 = OBJC_IVAR____TtC6FindMy29FMStewieWelcomeViewController_imageView;
  [v2 addSubview:*&v1[OBJC_IVAR____TtC6FindMy29FMStewieWelcomeViewController_imageView]];

  v4 = OBJC_IVAR____TtC6FindMy29FMStewieWelcomeViewController_upperLabel;
  v5 = *&v1[OBJC_IVAR____TtC6FindMy29FMStewieWelcomeViewController_upperLabel];
  v6 = objc_opt_self();
  v7 = &v1[OBJC_IVAR____TtC6FindMy29FMStewieWelcomeViewController_style];
  v8 = *&v1[OBJC_IVAR____TtC6FindMy29FMStewieWelcomeViewController_style];
  v9 = v5;
  v10 = [v6 preferredFontForTextStyle:v8];
  v11 = sub_100039388(0x8000);

  [v9 setFont:v11];
  [*&v1[v4] setAdjustsFontForContentSizeCategory:1];
  [*&v1[v4] setNumberOfLines:0];
  v12 = *&v1[v4];
  v13 = objc_opt_self();
  v14 = v12;
  v15 = [v13 labelColor];
  [v14 setTextColor:v15];

  [*&v1[v4] setTextAlignment:1];
  v16 = *&v1[v4];
  sub_10022F844(0xD00000000000001ELL, 0x8000000100598BC0);
  v17 = String._bridgeToObjectiveC()();

  [v16 setText:v17];

  [*&v1[v4] setAdjustsFontForContentSizeCategory:1];
  v18 = [v1 contentView];
  [v18 addSubview:*&v1[v4]];

  v19 = OBJC_IVAR____TtC6FindMy29FMStewieWelcomeViewController_lowerLabel;
  v20 = *(v7 + 1);
  v21 = *&v1[OBJC_IVAR____TtC6FindMy29FMStewieWelcomeViewController_lowerLabel];
  v22 = [v6 preferredFontForTextStyle:v20];
  v23 = sub_100039388(0x8000);

  [v21 setFont:v23];
  [*&v1[v19] setAdjustsFontForContentSizeCategory:1];
  [*&v1[v19] setNumberOfLines:0];
  v24 = *&v1[v19];
  v25 = [v13 labelColor];
  [v24 setTextColor:v25];

  [*&v1[v19] setTextAlignment:1];
  [*&v1[v19] setAdjustsFontForContentSizeCategory:1];
  v26 = [v1 contentView];
  [v26 addSubview:*&v1[v19]];

  v27 = *&v1[v3];
  sub_10000905C(0, &qword_1006BC2B0);
  v28 = v27;
  v29 = sub_1003DE484(0xD000000000000010, 0x8000000100598BA0, 6778480, 0xE300000000000000);
  [v28 setImage:v29];

  v30 = [v1 buttonTray];
  [v30 addButton:*&v1[OBJC_IVAR____TtC6FindMy29FMStewieWelcomeViewController_performButton]];

  if (*&v1[OBJC_IVAR____TtC6FindMy29FMStewieWelcomeViewController_viewModel])
  {
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.getter();

    v39[0] = v40;
    v39[1] = v41;
    v31 = 256;
    if (!BYTE1(v40))
    {
      v31 = 0;
    }

    v32 = v31 | v40;
    v33 = 0x10000;
    if (!BYTE2(v40))
    {
      v33 = 0;
    }

    v34 = 0x1000000;
    if (!BYTE3(v40))
    {
      v34 = 0;
    }

    v35 = v32 | v33 | v34;
    v36 = &_mh_execute_header;
    if (!BYTE4(v40))
    {
      v36 = 0;
    }

    v37 = 0x10000000000;
    if (!BYTE5(v40))
    {
      v37 = 0;
    }

    v38 = 0x1000000000000;
    if (!BYTE6(v40))
    {
      v38 = 0;
    }

    sub_100170480(v35 | v36 | v37 | v38, *(&v40 + 1), v41, *(&v41 + 1), &v40);
    sub_10008ED28(v39);
    sub_1004294F8(&v40);
    sub_10008ED7C(&v40);
  }

  else
  {
    __break(1u);
  }
}

void sub_100427034()
{
  v1 = OBJC_IVAR____TtC6FindMy29FMStewieWelcomeViewController_imageView;
  [*&v0[OBJC_IVAR____TtC6FindMy29FMStewieWelcomeViewController_imageView] setTranslatesAutoresizingMaskIntoConstraints:0];
  v45 = objc_opt_self();
  sub_10007EBC0(&qword_1006AFC30);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_100552EE0;
  v3 = [*&v0[v1] topAnchor];
  v4 = [v0 contentView];
  v5 = [v4 topAnchor];

  v6 = &v0[OBJC_IVAR____TtC6FindMy29FMStewieWelcomeViewController_style];
  v7 = [v3 constraintEqualToAnchor:v5 constant:*&v0[OBJC_IVAR____TtC6FindMy29FMStewieWelcomeViewController_style + 24]];

  *(v2 + 32) = v7;
  v8 = [*&v0[v1] centerXAnchor];
  v9 = [v0 contentView];
  v10 = [v9 centerXAnchor];

  v11 = [v8 constraintEqualToAnchor:v10];
  *(v2 + 40) = v11;
  sub_10000905C(0, &qword_1006B3A70);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v45 activateConstraints:isa];

  v13 = OBJC_IVAR____TtC6FindMy29FMStewieWelcomeViewController_upperLabel;
  [*&v0[OBJC_IVAR____TtC6FindMy29FMStewieWelcomeViewController_upperLabel] setTranslatesAutoresizingMaskIntoConstraints:0];
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_100552EF0;
  v15 = [*&v0[v13] topAnchor];
  v16 = [*&v0[v1] bottomAnchor];
  v17 = [v15 constraintEqualToAnchor:v16 constant:v6[4]];

  *(v14 + 32) = v17;
  v18 = [*&v0[v13] leadingAnchor];
  v19 = [v0 contentView];
  v20 = [v19 leadingAnchor];

  v21 = v6[2];
  v22 = [v18 constraintEqualToAnchor:v20 constant:v21];

  *(v14 + 40) = v22;
  v23 = [*&v0[v13] trailingAnchor];
  v24 = [v0 contentView];
  v25 = [v24 trailingAnchor];

  v26 = [v23 constraintEqualToAnchor:v25 constant:-v21];
  *(v14 + 48) = v26;
  v27 = Array._bridgeToObjectiveC()().super.isa;

  [v45 activateConstraints:v27];

  v28 = OBJC_IVAR____TtC6FindMy29FMStewieWelcomeViewController_lowerLabel;
  [*&v0[OBJC_IVAR____TtC6FindMy29FMStewieWelcomeViewController_lowerLabel] setTranslatesAutoresizingMaskIntoConstraints:0];
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_1005521F0;
  v30 = [*&v0[v28] topAnchor];
  v31 = [*&v0[v13] bottomAnchor];
  v32 = [v30 constraintEqualToAnchor:v31 constant:v6[5]];

  *(v29 + 32) = v32;
  v33 = [*&v0[v28] leadingAnchor];
  v34 = [v0 contentView];
  v35 = [v34 leadingAnchor];

  v36 = [v33 constraintEqualToAnchor:v35 constant:v21];
  *(v29 + 40) = v36;
  v37 = [*&v0[v28] trailingAnchor];
  v38 = [v0 contentView];
  v39 = [v38 trailingAnchor];

  v40 = [v37 constraintEqualToAnchor:v39 constant:-v21];
  *(v29 + 48) = v40;
  v41 = [*&v0[v28] bottomAnchor];
  v42 = [v0 contentView];
  v43 = [v42 bottomAnchor];

  v44 = [v41 constraintEqualToAnchor:v43];
  *(v29 + 56) = v44;
  v46 = Array._bridgeToObjectiveC()().super.isa;

  [v45 activateConstraints:v46];
}

void sub_100427668()
{
  v1 = v0;
  v2 = [v0 contentView];
  v3 = OBJC_IVAR____TtC6FindMy29FMStewieWelcomeViewController_imageView;
  [v2 addSubview:*&v1[OBJC_IVAR____TtC6FindMy29FMStewieWelcomeViewController_imageView]];

  v4 = [v1 contentView];
  v5 = [objc_opt_self() systemBackgroundColor];
  [v4 setBackgroundColor:v5];

  v6 = *&v1[v3];
  sub_10000905C(0, &qword_1006BC2B0);
  v7 = v6;
  v8 = sub_1003DE484(0xD000000000000010, 0x8000000100598BA0, 6778480, 0xE300000000000000);
  [v7 setImage:v8];

  [*&v1[v3] setContentMode:1];
  v9 = [v1 buttonTray];
  [v9 addButton:*&v1[OBJC_IVAR____TtC6FindMy29FMStewieWelcomeViewController_performButton]];

  if (*&v1[OBJC_IVAR____TtC6FindMy29FMStewieWelcomeViewController_viewModel])
  {
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.getter();

    v18[0] = v19;
    v18[1] = v20;
    v10 = 256;
    if (!BYTE1(v19))
    {
      v10 = 0;
    }

    v11 = v10 | v19;
    v12 = 0x10000;
    if (!BYTE2(v19))
    {
      v12 = 0;
    }

    v13 = 0x1000000;
    if (!BYTE3(v19))
    {
      v13 = 0;
    }

    v14 = v11 | v12 | v13;
    v15 = &_mh_execute_header;
    if (!BYTE4(v19))
    {
      v15 = 0;
    }

    v16 = 0x10000000000;
    if (!BYTE5(v19))
    {
      v16 = 0;
    }

    v17 = 0x1000000000000;
    if (!BYTE6(v19))
    {
      v17 = 0;
    }

    sub_100170480(v14 | v15 | v16 | v17, *(&v19 + 1), v20, *(&v20 + 1), &v19);
    sub_10008ED28(v18);
    sub_1004294F8(&v19);
    sub_10008ED7C(&v19);
  }

  else
  {
    __break(1u);
  }
}

void sub_100427904()
{
  v1 = OBJC_IVAR____TtC6FindMy29FMStewieWelcomeViewController_imageView;
  [*&v0[OBJC_IVAR____TtC6FindMy29FMStewieWelcomeViewController_imageView] setTranslatesAutoresizingMaskIntoConstraints:0];
  v2 = objc_opt_self();
  sub_10007EBC0(&qword_1006AFC30);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1005521F0;
  v4 = [*&v0[v1] topAnchor];
  v5 = [v0 contentView];
  v6 = [v5 topAnchor];

  v7 = [v4 constraintEqualToAnchor:v6];
  *(v3 + 32) = v7;
  v8 = [*&v0[v1] bottomAnchor];
  v9 = [v0 contentView];
  v10 = [v9 bottomAnchor];

  v11 = [v8 constraintEqualToAnchor:v10];
  *(v3 + 40) = v11;
  v12 = [*&v0[v1] leadingAnchor];
  v13 = [v0 contentView];
  v14 = [v13 leadingAnchor];

  v15 = [v12 constraintEqualToAnchor:v14];
  *(v3 + 48) = v15;
  v16 = [*&v0[v1] trailingAnchor];
  v17 = [v0 contentView];
  v18 = [v17 trailingAnchor];

  v19 = [v16 constraintEqualToAnchor:v18];
  *(v3 + 56) = v19;
  sub_10000905C(0, &qword_1006B3A70);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v2 activateConstraints:isa];
}

id sub_100427BD8()
{
  v6.receiver = v0;
  v6.super_class = type metadata accessor for FMStewieWelcomeViewController();
  objc_msgSendSuper2(&v6, "viewDidLoad");
  v4 = &type metadata for SolariumFeatureFlag;
  v5 = sub_10000BD04();
  v1 = isFeatureEnabled(_:)();
  sub_100006060(v3);
  if (v1)
  {
    sub_100427668();
    sub_100427904();
  }

  else
  {
    sub_100426B2C();
    sub_100427034();
  }

  return [*&v0[OBJC_IVAR____TtC6FindMy29FMStewieWelcomeViewController_performButton] addTarget:v0 action:"performAction" forControlEvents:64];
}

uint64_t sub_100427CC8(char a1)
{
  v2 = v1;
  v4 = sub_10007EBC0(&qword_1006BF9E0);
  __chkstk_darwin(v4 - 8);
  v6 = &v17 - v5;
  v7 = sub_10007EBC0(&qword_1006AF9A0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v17 - v9;
  v11 = type metadata accessor for FMStewieWelcomeViewController();
  v18.receiver = v2;
  v18.super_class = v11;
  result = objc_msgSendSuper2(&v18, "viewWillAppear:", a1 & 1);
  v13 = OBJC_IVAR____TtC6FindMy29FMStewieWelcomeViewController_viewModel;
  if (!*&v2[OBJC_IVAR____TtC6FindMy29FMStewieWelcomeViewController_viewModel])
  {
    __break(1u);
    goto LABEL_6;
  }

  swift_beginAccess();

  sub_10007EBC0(&qword_1006AF9A8);
  Published.projectedValue.getter();
  swift_endAccess();

  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_10042CB4C();
  Publisher<>.sink(receiveValue:)();

  (*(v8 + 8))(v10, v7);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  if (!*&v2[v13])
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  sub_10017067C();

  if (*&v2[v13])
  {

    sub_10042B2D8(v14, v6);

    updated = type metadata accessor for FMFSatelliteLocationUpdateEvent();
    (*(*(updated - 8) + 56))(v6, 0, 1, updated);
    v16 = OBJC_IVAR____TtC6FindMy29FMStewieWelcomeViewController_stewieAnalyticsEvent;
    swift_beginAccess();
    sub_10042CBB0(v6, &v2[v16]);
    return swift_endAccess();
  }

LABEL_7:
  __break(1u);
  return result;
}

void sub_100427FC0(char *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  v6 = a1[5];
  v7 = a1[6];
  v20 = *(a1 + 1);
  v8 = a1[16];
  v9 = *(a1 + 3);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    v12 = 256;
    if ((v2 & 1) == 0)
    {
      v12 = 0;
    }

    v13 = v12 & 0xFFFFFFFFFFFFFFFELL | v1 & 1;
    v14 = 0x10000;
    if ((v3 & 1) == 0)
    {
      v14 = 0;
    }

    v15 = 0x1000000;
    if ((v4 & 1) == 0)
    {
      v15 = 0;
    }

    v16 = v13 | v14 | v15;
    v17 = &_mh_execute_header;
    if ((v5 & 1) == 0)
    {
      v17 = 0;
    }

    v18 = 0x10000000000;
    if ((v6 & 1) == 0)
    {
      v18 = 0;
    }

    v19 = 0x1000000000000;
    if ((v7 & 1) == 0)
    {
      v19 = 0;
    }

    sub_100170480(v16 | v17 | v18 | v19, v20, v8 & 1, v9, v21);
    sub_1004294F8(v21);
    sub_10008ED7C(v21);
  }
}

uint64_t sub_100428138(char a1)
{
  v2 = v1;
  v4 = sub_10007EBC0(&qword_1006BF9E0);
  __chkstk_darwin(v4 - 8);
  v37 = &v33 - v5;
  updated = type metadata accessor for FMFSatelliteLocationUpdateEvent();
  v6 = *(updated - 8);
  __chkstk_darwin(updated);
  v34 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for FMStewieWelcomeViewController();
  v42.receiver = v2;
  v42.super_class = v8;
  objc_msgSendSuper2(&v42, "viewWillDisappear:", a1 & 1);
  v9 = OBJC_IVAR____TtC6FindMy29FMStewieWelcomeViewController_cancellables;
  swift_beginAccess();
  v36 = v9;
  v10 = *&v2[v9];
  v38 = v6;
  if ((v10 & 0xC000000000000001) != 0)
  {

    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for AnyCancellable();
    sub_10042CA7C();
    result = Set.Iterator.init(_cocoa:)();
    v13 = v43;
    v12 = v44;
    v14 = v45;
    v15 = v46;
    v16 = v47;
  }

  else
  {
    v17 = -1 << *(v10 + 32);
    v12 = v10 + 56;
    v14 = ~v17;
    v18 = -v17;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v16 = v19 & *(v10 + 56);
    result = swift_bridgeObjectRetain_n();
    v15 = 0;
    v13 = v10;
  }

  v35 = v14;
  v20 = (v14 + 64) >> 6;
  if (v13 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v21 = v15;
    v22 = v16;
    v23 = v15;
    if (!v16)
    {
      while (1)
      {
        v23 = v21 + 1;
        if (__OFADD__(v21, 1))
        {
          break;
        }

        if (v23 >= v20)
        {
          goto LABEL_18;
        }

        v22 = *(v12 + 8 * v23);
        ++v21;
        if (v22)
        {
          goto LABEL_12;
        }
      }

      __break(1u);
      goto LABEL_23;
    }

LABEL_12:
    v24 = (v22 - 1) & v22;
    v25 = *(*(v13 + 48) + ((v23 << 9) | (8 * __clz(__rbit64(v22)))));

    if (!v25)
    {
      break;
    }

    while (1)
    {
      AnyCancellable.cancel()();

      v15 = v23;
      v16 = v24;
      if ((v13 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      v26 = __CocoaSet.Iterator.next()();
      if (v26)
      {
        v40 = v26;
        type metadata accessor for AnyCancellable();
        swift_dynamicCast();
        v23 = v15;
        v24 = v16;
        if (v41)
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

LABEL_18:
  sub_10000BEC8();

  *&v2[v36] = _swiftEmptySetSingleton;

  v27 = OBJC_IVAR____TtC6FindMy29FMStewieWelcomeViewController_stewieAnalyticsEvent;
  swift_beginAccess();
  v28 = &v2[v27];
  v29 = v37;
  sub_10042CAD4(v28, v37);
  v31 = v38;
  v30 = updated;
  if ((*(v38 + 48))(v29, 1, updated) == 1)
  {
    return sub_100012DF0(v29, &qword_1006BF9E0);
  }

  v32 = v34;
  result = (*(v31 + 32))(v34, v29, v30);
  if (*&v2[OBJC_IVAR____TtC6FindMy29FMStewieWelcomeViewController_mediator])
  {

    FMIPManager.enqueue(satelliteLocationUpdateEvent:)();
    (*(v31 + 8))(v32, v30);
  }

LABEL_23:
  __break(1u);
  return result;
}

id sub_100428580(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v10 = [v5 buttonTray];
  v11 = String._bridgeToObjectiveC()();
  [v10 setCaptionText:v11];

  v21[3] = &type metadata for SolariumFeatureFlag;
  v21[4] = sub_10000BD04();
  LOBYTE(v10) = isFeatureEnabled(_:)();
  sub_100006060(v21);
  if (v10)
  {
    v12 = &v6[OBJC_IVAR____TtC6FindMy29FMStewieWelcomeViewController_currentDetailText];
    *v12 = a1;
    v12[1] = a2;

    v13 = [v6 headerView];
    v14 = *&v6[OBJC_IVAR____TtC6FindMy29FMStewieWelcomeViewController_baseDetailText + 8];
    v21[0] = *&v6[OBJC_IVAR____TtC6FindMy29FMStewieWelcomeViewController_baseDetailText];
    v21[1] = v14;

    v15._countAndFlagsBits = 2570;
    v15._object = 0xE200000000000000;
    String.append(_:)(v15);

    v16._countAndFlagsBits = a1;
    v16._object = a2;
    String.append(_:)(v16);

    v17 = String._bridgeToObjectiveC()();

    [v13 setDetailText:v17];
  }

  else
  {
    v13 = *&v6[OBJC_IVAR____TtC6FindMy29FMStewieWelcomeViewController_lowerLabel];
    v17 = String._bridgeToObjectiveC()();
    [v13 setText:v17];
  }

  v18 = *&v6[OBJC_IVAR____TtC6FindMy29FMStewieWelcomeViewController_performButton];
  v19 = String._bridgeToObjectiveC()();
  [v18 setTitle:v19 forState:0];

  result = [v18 setEnabled:1];
  v6[OBJC_IVAR____TtC6FindMy29FMStewieWelcomeViewController_actionToPerform] = a5;
  return result;
}

id sub_100428798()
{
  v1 = [v0 buttonTray];
  v2 = String._bridgeToObjectiveC()();
  [v1 setCaptionText:v2];

  v14 = &type metadata for SolariumFeatureFlag;
  v15 = sub_10000BD04();
  LOBYTE(v1) = isFeatureEnabled(_:)();
  sub_100006060(v13);
  if (v1)
  {
    v3 = &v0[OBJC_IVAR____TtC6FindMy29FMStewieWelcomeViewController_currentDetailText];
    *v3 = 0;
    *(v3 + 1) = 0;

    v4 = [v0 headerView];

    v5 = String._bridgeToObjectiveC()();

    [v4 setDetailText:v5];
  }

  else
  {
    [*&v0[OBJC_IVAR____TtC6FindMy29FMStewieWelcomeViewController_lowerLabel] setText:0];
  }

  v6 = [objc_opt_self() mainBundle];
  v16._object = 0x800000010057FD20;
  v7._countAndFlagsBits = 0xD000000000000030;
  v7._object = 0x8000000100598B60;
  v8.value._object = 0x800000010057FD00;
  v16._countAndFlagsBits = 0xD000000000000017;
  v8.value._countAndFlagsBits = 0xD000000000000012;
  v9._countAndFlagsBits = 0;
  v9._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v7, v8, v6, v9, v16);

  v10 = *&v0[OBJC_IVAR____TtC6FindMy29FMStewieWelcomeViewController_performButton];
  v11 = String._bridgeToObjectiveC()();

  [v10 setTitle:v11 forState:0];

  result = [v10 setEnabled:0];
  v0[OBJC_IVAR____TtC6FindMy29FMStewieWelcomeViewController_actionToPerform] = 0;
  return result;
}

id sub_1004289C8()
{
  v1 = [v0 buttonTray];
  v2 = objc_opt_self();
  v3 = [v2 mainBundle];
  v21._object = 0x800000010057FD20;
  v4._countAndFlagsBits = 0xD00000000000002DLL;
  v4._object = 0x8000000100598B00;
  v5.value._object = 0x800000010057FD00;
  v21._countAndFlagsBits = 0xD000000000000017;
  v5.value._countAndFlagsBits = 0xD000000000000012;
  v6._countAndFlagsBits = 0;
  v6._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v4, v5, v3, v6, v21);

  v7 = String._bridgeToObjectiveC()();

  [v1 setCaptionText:v7];

  v19 = &type metadata for SolariumFeatureFlag;
  v20 = sub_10000BD04();
  LOBYTE(v1) = isFeatureEnabled(_:)();
  sub_100006060(v18);
  if (v1)
  {
    v8 = &v0[OBJC_IVAR____TtC6FindMy29FMStewieWelcomeViewController_currentDetailText];
    *v8 = 0;
    *(v8 + 1) = 0;

    v9 = [v0 headerView];

    v10 = String._bridgeToObjectiveC()();

    [v9 setDetailText:v10];
  }

  else
  {
    [*&v0[OBJC_IVAR____TtC6FindMy29FMStewieWelcomeViewController_lowerLabel] setText:0];
  }

  v11 = [v2 mainBundle];
  v22._object = 0x800000010057FD20;
  v12._countAndFlagsBits = 0xD00000000000002BLL;
  v12._object = 0x8000000100598B30;
  v13.value._object = 0x800000010057FD00;
  v22._countAndFlagsBits = 0xD000000000000017;
  v13.value._countAndFlagsBits = 0xD000000000000012;
  v14._countAndFlagsBits = 0;
  v14._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v12, v13, v11, v14, v22);

  v15 = *&v0[OBJC_IVAR____TtC6FindMy29FMStewieWelcomeViewController_performButton];
  v16 = String._bridgeToObjectiveC()();

  [v15 setTitle:v16 forState:0];

  result = [v15 setEnabled:1];
  v0[OBJC_IVAR____TtC6FindMy29FMStewieWelcomeViewController_actionToPerform] = 1;
  return result;
}

void sub_100428C7C()
{
  sub_100428798();
  v1 = String._bridgeToObjectiveC()();
  v2 = String._bridgeToObjectiveC()();
  v3 = [objc_opt_self() alertControllerWithTitle:v1 message:v2 preferredStyle:1];

  v4 = [objc_opt_self() mainBundle];
  v11._object = 0x800000010057FD20;
  v5._countAndFlagsBits = 0xD000000000000027;
  v5._object = 0x80000001005986D0;
  v6.value._object = 0x800000010057FD00;
  v11._countAndFlagsBits = 0xD000000000000017;
  v6.value._countAndFlagsBits = 0xD000000000000012;
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v5, v6, v4, v7, v11);

  v8 = String._bridgeToObjectiveC()();

  v9 = [objc_opt_self() actionWithTitle:v8 style:0 handler:0];

  [v3 addAction:v9];
  [v0 presentViewController:v3 animated:1 completion:0];
}

void sub_100428E40()
{
  sub_100428798();
  v1 = objc_opt_self();
  v2 = [v1 mainBundle];
  v39._object = 0x800000010057FD20;
  v3._countAndFlagsBits = 0xD00000000000002CLL;
  v3._object = 0x8000000100598AA0;
  v4.value._object = 0x800000010057FD00;
  v39._countAndFlagsBits = 0xD000000000000017;
  v4.value._countAndFlagsBits = 0xD000000000000012;
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v3, v4, v2, v5, v39);

  v6 = [v1 mainBundle];
  v40._object = 0x800000010057FD20;
  v7._countAndFlagsBits = 0xD000000000000026;
  v7._object = 0x8000000100598AD0;
  v8.value._object = 0x800000010057FD00;
  v40._countAndFlagsBits = 0xD000000000000017;
  v8.value._countAndFlagsBits = 0xD000000000000012;
  v9._countAndFlagsBits = 0;
  v9._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v7, v8, v6, v9, v40);

  v10 = String._bridgeToObjectiveC()();

  v11 = String._bridgeToObjectiveC()();

  v12 = [objc_opt_self() alertControllerWithTitle:v10 message:v11 preferredStyle:1];

  v13 = [v1 mainBundle];
  v41._object = 0x800000010057FD20;
  v14._countAndFlagsBits = 0xD00000000000002BLL;
  v14._object = 0x80000001005988F0;
  v15.value._object = 0x800000010057FD00;
  v41._countAndFlagsBits = 0xD000000000000017;
  v15.value._countAndFlagsBits = 0xD000000000000012;
  v16._countAndFlagsBits = 0;
  v16._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v14, v15, v13, v16, v41);

  v17 = swift_allocObject();
  *(v17 + 16) = v0;
  v18 = v0;
  v19 = String._bridgeToObjectiveC()();

  v37 = sub_10042CA6C;
  v38 = v17;
  aBlock = _NSConcreteStackBlock;
  v34 = 1107296256;
  v35 = sub_100017328;
  v36 = &unk_10063E628;
  v20 = _Block_copy(&aBlock);

  v21 = objc_opt_self();
  v22 = [v21 actionWithTitle:v19 style:0 handler:v20];
  _Block_release(v20);

  v23 = [v1 mainBundle];
  v42._object = 0x800000010057FD20;
  v24._countAndFlagsBits = 0xD000000000000027;
  v24._object = 0x80000001005986D0;
  v25.value._object = 0x800000010057FD00;
  v42._countAndFlagsBits = 0xD000000000000017;
  v25.value._countAndFlagsBits = 0xD000000000000012;
  v26._countAndFlagsBits = 0;
  v26._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v24, v25, v23, v26, v42);

  v27 = swift_allocObject();
  *(v27 + 16) = v18;
  *(v27 + 24) = v12;
  v28 = v18;
  v29 = v12;
  v30 = String._bridgeToObjectiveC()();

  v37 = sub_10042CA74;
  v38 = v27;
  aBlock = _NSConcreteStackBlock;
  v34 = 1107296256;
  v35 = sub_100017328;
  v36 = &unk_10063E678;
  v31 = _Block_copy(&aBlock);

  v32 = [v21 actionWithTitle:v30 style:0 handler:v31];
  _Block_release(v31);

  [v29 addAction:v22];
  [v29 addAction:v32];
  [v28 presentViewController:v29 animated:1 completion:0];
}

uint64_t sub_1004292D0()
{
  v0 = sub_100426ACC();
  v2 = v1;
  updated = type metadata accessor for FMFSatelliteLocationUpdateEvent();
  v4 = *(*(updated - 8) + 48);
  if (!v4(v2, 1, updated))
  {
    FMFSatelliteLocationUpdateEvent.updateFlowLSOffGoToSettingsPressed.setter();
  }

  (v0)(v8, 0);
  v5 = sub_100426ACC();
  if (!v4(v6, 1, updated))
  {
    FMFSatelliteLocationUpdateEvent.updateFlowLSOffOkPressed.setter();
  }

  (v5)(v8, 0);
  return sub_10042C64C();
}

id sub_1004293D8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_100426ACC();
  v6 = v5;
  updated = type metadata accessor for FMFSatelliteLocationUpdateEvent();
  v8 = *(*(updated - 8) + 48);
  if (!v8(v6, 1, updated))
  {
    FMFSatelliteLocationUpdateEvent.updateFlowLSOffGoToSettingsPressed.setter();
  }

  (v4)(v12, 0);
  v9 = sub_100426ACC();
  if (!v8(v10, 1, updated))
  {
    FMFSatelliteLocationUpdateEvent.updateFlowLSOffOkPressed.setter();
  }

  (v9)(v12, 0);
  return [a3 dismissViewControllerAnimated:1 completion:0];
}

void sub_1004294F8(unsigned __int8 *a1)
{
  v2 = v1;
  v201 = *a1;
  *oslog = *(a1 + 1);
  v4 = *(a1 + 4);
  v5 = a1[40];
  v6 = &v1[OBJC_IVAR____TtC6FindMy29FMStewieWelcomeViewController_currentViewState];
  v7 = *&v1[OBJC_IVAR____TtC6FindMy29FMStewieWelcomeViewController_currentViewState + 16];
  v209 = *&v1[OBJC_IVAR____TtC6FindMy29FMStewieWelcomeViewController_currentViewState];
  v210[0] = v7;
  *(v210 + 9) = *&v1[OBJC_IVAR____TtC6FindMy29FMStewieWelcomeViewController_currentViewState + 25];
  if ((sub_1001733B4(&v209) & 1) == 0)
  {
    *v6 = v201;
    *(v6 + 1) = *oslog;
    *(v6 + 4) = v4;
    v6[40] = v5;
    sub_100012DF0(&v209, &qword_1006BF9D8);
    sub_100174444(a1, &v207);
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_100005B14(v12, qword_1006D4630);
    sub_100174444(a1, &v207);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();
    sub_10008ED7C(a1);
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v204 = swift_slowAlloc();
      *v15 = 136315394;
      *(v15 + 4) = sub_100005B4C(0xD000000000000012, 0x8000000100598A80, &v204);
      *(v15 + 12) = 2080;
      v16 = *(a1 + 1);
      v207 = *a1;
      *v208 = v16;
      *&v208[9] = *(a1 + 25);
      sub_100174444(a1, &v205);
      v17 = String.init<A>(describing:)();
      v19 = sub_100005B4C(v17, v18, &v204);

      *(v15 + 14) = v19;
      _os_log_impl(&_mh_execute_header, v13, v14, "FMStewieWelcomeViewController: %s - viewState: %s", v15, 0x16u);
      swift_arrayDestroy();
    }

    v20 = *a1;
    v21 = a1[7] >> 6;
    if (v21)
    {
      if (v21 == 1)
      {
        if ((v20 & 1) == 0)
        {
          v22 = static os_log_type_t.error.getter();
          v23 = Logger.logObject.getter();
          if (os_log_type_enabled(v23, v22))
          {
            v24 = swift_slowAlloc();
            v25 = swift_slowAlloc();
            *&v207 = v25;
            *v24 = 136315138;
            *(v24 + 4) = sub_100005B4C(0xD00000000000002BLL, 0x8000000100598650, &v207);
            _os_log_impl(&_mh_execute_header, v23, v22, "%s", v24, 0xCu);
            sub_100006060(v25);
          }
        }

        sub_1004289C8();
LABEL_68:
        v134 = [objc_opt_self() sharedInstance];
        v135 = [v134 isInternalBuild];

        if (v135)
        {
          v136 = [objc_opt_self() standardUserDefaults];
          v137 = String._bridgeToObjectiveC()();
          v138 = [v136 BOOLForKey:v137];

          if (v138)
          {
            v139 = *a1;
            if (*a1 >> 62)
            {
              *&v208[8] = &type metadata for SolariumFeatureFlag;
              *&v208[16] = sub_10000BD04();
              v144 = isFeatureEnabled(_:)();
              sub_100006060(&v207);
              if ((v144 & 1) == 0)
              {
                v154 = *&v2[OBJC_IVAR____TtC6FindMy29FMStewieWelcomeViewController_lowerLabel];
                v155 = [v154 text];
                if (v155)
                {
                  v156 = v155;
                  v157 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                  v159 = v158;
                }

                else
                {
                  v157 = 0;
                  v159 = 0xE000000000000000;
                }

                *&v207 = v157;
                *(&v207 + 1) = v159;

                v189._countAndFlagsBits = 0x3A47554245440A0ALL;
                v189._object = 0xE90000000000000ALL;
                String.append(_:)(v189);

                v190 = v207;
                v191 = *(a1 + 1);
                v207 = *a1;
                *v208 = v191;
                *&v208[9] = *(a1 + 25);
                sub_100174444(a1, &v205);
                v192 = String.init<A>(describing:)();
                v194 = v193;
                v207 = v190;

                v195._countAndFlagsBits = v192;
                v195._object = v194;
                String.append(_:)(v195);

                v196 = String._bridgeToObjectiveC()();

                [v154 setText:v196];

                goto LABEL_90;
              }

              v145 = &v2[OBJC_IVAR____TtC6FindMy29FMStewieWelcomeViewController_currentDetailText];
              if (*&v2[OBJC_IVAR____TtC6FindMy29FMStewieWelcomeViewController_currentDetailText + 8])
              {
                v146 = *v145;
                v147 = *&v2[OBJC_IVAR____TtC6FindMy29FMStewieWelcomeViewController_currentDetailText + 8];
              }

              else
              {
                v146 = 0;
                v147 = 0xE000000000000000;
              }

              *&v207 = v146;
              *(&v207 + 1) = v147;

              v170._countAndFlagsBits = 0x3A47554245440A0ALL;
              v170._object = 0xE90000000000000ALL;
              String.append(_:)(v170);

              v171 = v207;
              v172 = *(a1 + 1);
              v207 = *a1;
              *v208 = v172;
              *&v208[9] = *(a1 + 25);
              sub_100174444(a1, &v205);
              v173 = String.init<A>(describing:)();
              v175 = v174;
              v207 = v171;

              v176._countAndFlagsBits = v173;
              v176._object = v175;
              String.append(_:)(v176);

              v167 = *(&v207 + 1);
              v168 = v207;
              *v145 = v207;
              *(v145 + 1) = v167;

              v169 = [v2 headerView];
            }

            else
            {
              *&v208[8] = &type metadata for SolariumFeatureFlag;
              *&v208[16] = sub_10000BD04();
              v140 = isFeatureEnabled(_:)();
              sub_100006060(&v207);
              if ((v140 & 1) == 0)
              {
                v148 = *&v2[OBJC_IVAR____TtC6FindMy29FMStewieWelcomeViewController_lowerLabel];
                v149 = [v148 text];
                if (v149)
                {
                  v150 = v149;
                  v151 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                  v153 = v152;
                }

                else
                {
                  v151 = 0;
                  v153 = 0xE000000000000000;
                }

                *&v207 = v151;
                *(&v207 + 1) = v153;

                v182._countAndFlagsBits = 0xD000000000000018;
                v182._object = 0x8000000100598680;
                String.append(_:)(v182);

                v183 = v207;
                LOBYTE(v207) = v139;
                v184 = String.init<A>(describing:)();
                v186 = v185;
                v207 = v183;

                v187._countAndFlagsBits = v184;
                v187._object = v186;
                String.append(_:)(v187);

                v188 = String._bridgeToObjectiveC()();

                [v148 setText:v188];

                goto LABEL_90;
              }

              v141 = &v2[OBJC_IVAR____TtC6FindMy29FMStewieWelcomeViewController_currentDetailText];
              if (*&v2[OBJC_IVAR____TtC6FindMy29FMStewieWelcomeViewController_currentDetailText + 8])
              {
                v142 = *v141;
                v143 = *&v2[OBJC_IVAR____TtC6FindMy29FMStewieWelcomeViewController_currentDetailText + 8];
              }

              else
              {
                v142 = 0;
                v143 = 0xE000000000000000;
              }

              *&v207 = v142;
              *(&v207 + 1) = v143;

              v160._countAndFlagsBits = 0xD000000000000018;
              v160._object = 0x8000000100598680;
              String.append(_:)(v160);

              v162 = *(&v207 + 1);
              v161 = v207;
              LOBYTE(v207) = v139;
              v163 = String.init<A>(describing:)();
              v165 = v164;
              v207 = __PAIR128__(v162, v161);

              v166._countAndFlagsBits = v163;
              v166._object = v165;
              String.append(_:)(v166);

              v167 = *(&v207 + 1);
              v168 = v207;
              *v141 = v207;
              *(v141 + 1) = v167;

              v169 = [v2 headerView];
            }

            v177 = v169;
            v178 = *&v2[OBJC_IVAR____TtC6FindMy29FMStewieWelcomeViewController_baseDetailText + 8];
            *&v207 = *&v2[OBJC_IVAR____TtC6FindMy29FMStewieWelcomeViewController_baseDetailText];
            *(&v207 + 1) = v178;

            v179._countAndFlagsBits = 2570;
            v179._object = 0xE200000000000000;
            String.append(_:)(v179);

            v180._countAndFlagsBits = v168;
            v180._object = v167;
            String.append(_:)(v180);

            v181 = String._bridgeToObjectiveC()();

            [v177 setDetailText:v181];
          }
        }

LABEL_90:
        v197 = [objc_allocWithZone(UIBarButtonItem) initWithBarButtonSystemItem:1 target:v2 action:"cancelActionWithSender:"];
        v198 = [v2 navigationItem];
        [v198 setLeftBarButtonItem:v197];

        return;
      }

      v36 = static os_log_type_t.error.getter();
      v37 = Logger.logObject.getter();
      if (os_log_type_enabled(v37, v36))
      {
        v38 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        *&v207 = v39;
        *v38 = 136315138;
        *(v38 + 4) = sub_100005B4C(0xD000000000000026, 0x8000000100598A50, &v207);
        _os_log_impl(&_mh_execute_header, v37, v36, "%s", v38, 0xCu);
        sub_100006060(v39);
      }

LABEL_29:
      sub_100428798();
      goto LABEL_68;
    }

    v26 = *&v1[OBJC_IVAR____TtC6FindMy29FMStewieWelcomeViewController_viewModel];
    if (*a1 <= 4u)
    {
      switch(v20)
      {
        case 2:
          if (v26)
          {
            swift_getKeyPath();
            swift_getKeyPath();

            static Published.subscript.getter();

            v207 = v205;
            *v208 = v206;
            sub_10008ED28(&v207);
            v55 = v207;
            v56 = objc_opt_self();
            v57 = [v56 mainBundle];
            if (v55 == 1)
            {
              v215._object = 0x800000010057FD20;
              v58._countAndFlagsBits = 0xD000000000000022;
              v58._object = 0x80000001005987C0;
              v59.value._object = 0x800000010057FD00;
              v215._countAndFlagsBits = 0xD000000000000017;
              v59.value._countAndFlagsBits = 0xD000000000000012;
              v60._countAndFlagsBits = 0;
              v60._object = 0xE000000000000000;
              NSLocalizedString(_:tableName:bundle:value:comment:)(v58, v59, v57, v60, v215);

              v33 = "EATURE_AVAILABLE_WHEN_SETUP";
              v34 = [v56 mainBundle];
              v199 = 0x800000010057FD20;
              v35 = 0xD000000000000029;
              goto LABEL_56;
            }

            v219._object = 0x800000010057FD20;
            v83._countAndFlagsBits = 0xD00000000000002BLL;
            v83._object = 0x80000001005989F0;
            v84.value._object = 0x800000010057FD00;
            v219._countAndFlagsBits = 0xD000000000000017;
            v84.value._countAndFlagsBits = 0xD000000000000012;
            v85._countAndFlagsBits = 0;
            v85._object = 0xE000000000000000;
            v86 = NSLocalizedString(_:tableName:bundle:value:comment:)(v83, v84, v57, v85, v219);

            v87 = [v56 mainBundle];
            v220._object = 0x800000010057FD20;
            v88._countAndFlagsBits = 0xD00000000000002BLL;
            v88._object = 0x80000001005988F0;
            v89.value._object = 0x800000010057FD00;
            v220._countAndFlagsBits = 0xD000000000000017;
            v89.value._countAndFlagsBits = 0xD000000000000012;
            v90._countAndFlagsBits = 0;
            v90._object = 0xE000000000000000;
            v91 = NSLocalizedString(_:tableName:bundle:value:comment:)(v88, v89, v87, v90, v220);

            countAndFlagsBits = v86._countAndFlagsBits;
            object = v86._object;
            v94 = v91._countAndFlagsBits;
            v95 = v91._object;
            v96 = 2;
LABEL_66:
            sub_100428580(countAndFlagsBits, object, v94, v95, v96);
            goto LABEL_67;
          }

          goto LABEL_94;
        case 3:
          if (!v26)
          {
LABEL_98:
            __break(1u);
            return;
          }

          swift_getKeyPath();
          swift_getKeyPath();

          static Published.subscript.getter();

          v207 = v205;
          *v208 = v206;
          sub_10008ED28(&v207);
          v73 = v207;
          v74 = objc_opt_self();
          v75 = [v74 mainBundle];
          if (v73 == 1)
          {
            v218._object = 0x800000010057FD20;
            v76._countAndFlagsBits = 0xD000000000000022;
            v76._object = 0x80000001005987C0;
            v77.value._object = 0x800000010057FD00;
            v218._countAndFlagsBits = 0xD000000000000017;
            v77.value._countAndFlagsBits = 0xD000000000000012;
            v78._countAndFlagsBits = 0;
            v78._object = 0xE000000000000000;
            NSLocalizedString(_:tableName:bundle:value:comment:)(v76, v77, v75, v78, v218);

            v33 = "_WHEN_HAS_FRIENDS";
            v34 = [v74 mainBundle];
            v199 = 0x800000010057FD20;
            v35 = 0xD00000000000002FLL;
            goto LABEL_56;
          }

          v227._object = 0x800000010057FD20;
          v125._countAndFlagsBits = 0xD000000000000031;
          v125._object = 0x8000000100598980;
          v126.value._object = 0x800000010057FD00;
          v227._countAndFlagsBits = 0xD000000000000017;
          v126.value._countAndFlagsBits = 0xD000000000000012;
          v127._countAndFlagsBits = 0;
          v127._object = 0xE000000000000000;
          v128 = NSLocalizedString(_:tableName:bundle:value:comment:)(v125, v126, v75, v127, v227);
          v52 = v128._countAndFlagsBits;
          v53 = v128._object;

          v112 = [v74 mainBundle];
          goto LABEL_64;
        case 4:
          if (v26)
          {
            swift_getKeyPath();
            swift_getKeyPath();

            static Published.subscript.getter();

            v207 = v205;
            *v208 = v206;
            sub_10008ED28(&v207);
            v40 = v207;
            v41 = objc_opt_self();
            v42 = [v41 mainBundle];
            if (v40 == 1)
            {
              v213._object = 0x800000010057FD20;
              v43._countAndFlagsBits = 0xD000000000000022;
              v43._object = 0x80000001005987C0;
              v44.value._object = 0x800000010057FD00;
              v213._countAndFlagsBits = 0xD000000000000017;
              v44.value._countAndFlagsBits = 0xD000000000000012;
              v45._countAndFlagsBits = 0;
              v45._object = 0xE000000000000000;
              NSLocalizedString(_:tableName:bundle:value:comment:)(v43, v44, v42, v45, v213);

              v33 = "EATURE_AVAILABLE_WHEN_ME_DEVICE";
              v34 = [v41 mainBundle];
              v199 = 0x800000010057FD20;
              v35 = 0xD00000000000002DLL;
              goto LABEL_56;
            }

            v226._object = 0x800000010057FD20;
            v121._countAndFlagsBits = 0xD00000000000002FLL;
            v121._object = 0x8000000100598920;
            v122.value._object = 0x800000010057FD00;
            v226._countAndFlagsBits = 0xD000000000000017;
            v122.value._countAndFlagsBits = 0xD000000000000012;
            v123._countAndFlagsBits = 0;
            v123._object = 0xE000000000000000;
            v124 = NSLocalizedString(_:tableName:bundle:value:comment:)(v121, v122, v42, v123, v226);
            v52 = v124._countAndFlagsBits;
            v53 = v124._object;

            v112 = [v41 mainBundle];
            goto LABEL_64;
          }

LABEL_92:
          __break(1u);
LABEL_93:
          __break(1u);
LABEL_94:
          __break(1u);
LABEL_95:
          __break(1u);
          goto LABEL_96;
      }
    }

    else
    {
      if (*a1 <= 6u)
      {
        if (v20 != 5)
        {
          if (v26)
          {
            swift_getKeyPath();
            swift_getKeyPath();

            static Published.subscript.getter();

            v207 = v205;
            *v208 = v206;
            sub_10008ED28(&v207);
            v27 = v207;
            v28 = objc_opt_self();
            v29 = [v28 mainBundle];
            if (v27 == 1)
            {
              v212._object = 0x800000010057FD20;
              v30._countAndFlagsBits = 0xD000000000000022;
              v30._object = 0x80000001005987C0;
              v31.value._object = 0x800000010057FD00;
              v212._countAndFlagsBits = 0xD000000000000017;
              v31.value._countAndFlagsBits = 0xD000000000000012;
              v32._countAndFlagsBits = 0;
              v32._object = 0xE000000000000000;
              NSLocalizedString(_:tableName:bundle:value:comment:)(v30, v31, v29, v32, v212);

              v33 = "LERT_DEFAULT_TITLE";
              v34 = [v28 mainBundle];
              v199 = 0x800000010057FD20;
              v35 = 0xD000000000000034;
LABEL_56:
              v79 = v33 | 0x8000000000000000;
              v80.value._object = 0x800000010057FD00;
              v81 = 0xD000000000000017;
              v80.value._countAndFlagsBits = 0xD000000000000012;
              v82._countAndFlagsBits = 0;
              v82._object = 0xE000000000000000;
              NSLocalizedString(_:tableName:bundle:value:comment:)(*&v35, v80, v34, v82, *(&v199 - 1));

              sub_100428C7C();
LABEL_67:

              goto LABEL_68;
            }

            v225._object = 0x800000010057FD20;
            v117._countAndFlagsBits = 0xD000000000000036;
            v117._object = 0x8000000100598780;
            v118.value._object = 0x800000010057FD00;
            v225._countAndFlagsBits = 0xD000000000000017;
            v118.value._countAndFlagsBits = 0xD000000000000012;
            v119._countAndFlagsBits = 0;
            v119._object = 0xE000000000000000;
            v120 = NSLocalizedString(_:tableName:bundle:value:comment:)(v117, v118, v29, v119, v225);
            v52 = v120._countAndFlagsBits;
            v53 = v120._object;

            v112 = [v28 mainBundle];
            goto LABEL_64;
          }

          __break(1u);
          goto LABEL_92;
        }

        if (!v26)
        {
LABEL_96:
          __break(1u);
          goto LABEL_97;
        }

        swift_getKeyPath();
        swift_getKeyPath();

        static Published.subscript.getter();

        v207 = v205;
        *v208 = v206;
        sub_10008ED28(&v207);
        v61 = v207;
        v62 = objc_opt_self();
        v63 = [v62 mainBundle];
        if (v61 == 1)
        {
          v216._object = 0x800000010057FD20;
          v64._countAndFlagsBits = 0xD000000000000022;
          v64._object = 0x80000001005987C0;
          v65.value._object = 0x800000010057FD00;
          v216._countAndFlagsBits = 0xD000000000000017;
          v65.value._countAndFlagsBits = 0xD000000000000012;
          v66._countAndFlagsBits = 0;
          v66._object = 0xE000000000000000;
          NSLocalizedString(_:tableName:bundle:value:comment:)(v64, v65, v63, v66, v216);

          v33 = "_WHEN_AIRPLANE_MODE_OFF";
          v34 = [v62 mainBundle];
          v199 = 0x800000010057FD20;
          v35 = 0xD000000000000035;
          goto LABEL_56;
        }

        v223._object = 0x800000010057FD20;
        v108._countAndFlagsBits = 0xD000000000000037;
        v108._object = 0x8000000100598830;
        v109.value._object = 0x800000010057FD00;
        v223._countAndFlagsBits = 0xD000000000000017;
        v109.value._countAndFlagsBits = 0xD000000000000012;
        v110._countAndFlagsBits = 0;
        v110._object = 0xE000000000000000;
        v111 = NSLocalizedString(_:tableName:bundle:value:comment:)(v108, v109, v63, v110, v223);
        v52 = v111._countAndFlagsBits;
        v53 = v111._object;

        v112 = [v62 mainBundle];
LABEL_64:
        v54 = v112;
        v200 = 0x800000010057FD20;
LABEL_65:
        v129._countAndFlagsBits = 0xD000000000000027;
        v129._object = 0x80000001005986D0;
        v130.value._object = 0x800000010057FD00;
        v131 = 0xD000000000000017;
        v130.value._countAndFlagsBits = 0xD000000000000012;
        v132._countAndFlagsBits = 0;
        v132._object = 0xE000000000000000;
        v133 = NSLocalizedString(_:tableName:bundle:value:comment:)(v129, v130, v54, v132, *(&v200 - 1));

        countAndFlagsBits = v52;
        object = v53;
        v94 = v133._countAndFlagsBits;
        v95 = v133._object;
        v96 = 0;
        goto LABEL_66;
      }

      if (v20 == 7)
      {
        if (!v26)
        {
LABEL_97:
          __break(1u);
          goto LABEL_98;
        }

        swift_getKeyPath();
        swift_getKeyPath();

        static Published.subscript.getter();

        v207 = v205;
        *v208 = v206;
        sub_10008ED28(&v207);
        v67 = v207;
        v68 = objc_opt_self();
        v69 = [v68 mainBundle];
        if (v67 == 1)
        {
          v217._object = 0x800000010057FD20;
          v70._countAndFlagsBits = 0xD000000000000021;
          v70._object = 0x8000000100598730;
          v71.value._object = 0x800000010057FD00;
          v217._countAndFlagsBits = 0xD000000000000017;
          v71.value._countAndFlagsBits = 0xD000000000000012;
          v72._countAndFlagsBits = 0;
          v72._object = 0xE000000000000000;
          NSLocalizedString(_:tableName:bundle:value:comment:)(v70, v71, v69, v72, v217);

          v33 = "LERT_REGION_TITLE";
          v34 = [v68 mainBundle];
          v199 = 0x800000010057FD20;
          v35 = 0xD00000000000001BLL;
          goto LABEL_56;
        }

        v224._object = 0x800000010057FD20;
        v113._countAndFlagsBits = 0xD00000000000002FLL;
        v113._object = 0x8000000100598700;
        v114.value._object = 0x800000010057FD00;
        v224._countAndFlagsBits = 0xD000000000000017;
        v114.value._countAndFlagsBits = 0xD000000000000012;
        v115._countAndFlagsBits = 0;
        v115._object = 0xE000000000000000;
        v116 = NSLocalizedString(_:tableName:bundle:value:comment:)(v113, v114, v69, v115, v224);
        v52 = v116._countAndFlagsBits;
        v53 = v116._object;

        v112 = [v68 mainBundle];
        goto LABEL_64;
      }

      if (v20 == 8)
      {
        if (v26)
        {
          swift_getKeyPath();
          swift_getKeyPath();

          static Published.subscript.getter();

          v207 = v205;
          *v208 = v206;
          sub_10008ED28(&v207);
          if (v207 == 1)
          {
            goto LABEL_29;
          }

          v46 = objc_opt_self();
          v47 = [v46 mainBundle];
          v214._object = 0x800000010057FD20;
          v48._countAndFlagsBits = 0xD00000000000002DLL;
          v48._object = 0x80000001005986A0;
          v49.value._object = 0x800000010057FD00;
          v214._countAndFlagsBits = 0xD000000000000017;
          v49.value._countAndFlagsBits = 0xD000000000000012;
          v50._countAndFlagsBits = 0;
          v50._object = 0xE000000000000000;
          v51 = NSLocalizedString(_:tableName:bundle:value:comment:)(v48, v49, v47, v50, v214);
          v52 = v51._countAndFlagsBits;
          v53 = v51._object;

          v54 = [v46 mainBundle];
          v200 = 0x800000010057FD20;
          goto LABEL_65;
        }

        goto LABEL_93;
      }
    }

    if (v26)
    {
      swift_getKeyPath();
      swift_getKeyPath();

      static Published.subscript.getter();

      v207 = v205;
      *v208 = v206;
      sub_10008ED28(&v207);
      if (v207 == 1)
      {
        sub_100428E40();
        goto LABEL_68;
      }

      v97 = objc_opt_self();
      v98 = [v97 mainBundle];
      v221._object = 0x800000010057FD20;
      v99._countAndFlagsBits = 0xD000000000000037;
      v99._object = 0x80000001005988B0;
      v100.value._object = 0x800000010057FD00;
      v221._countAndFlagsBits = 0xD000000000000017;
      v100.value._countAndFlagsBits = 0xD000000000000012;
      v101._countAndFlagsBits = 0;
      v101._object = 0xE000000000000000;
      v102 = NSLocalizedString(_:tableName:bundle:value:comment:)(v99, v100, v98, v101, v221);

      v103 = [v97 mainBundle];
      v222._object = 0x800000010057FD20;
      v104._countAndFlagsBits = 0xD00000000000002BLL;
      v104._object = 0x80000001005988F0;
      v105.value._object = 0x800000010057FD00;
      v222._countAndFlagsBits = 0xD000000000000017;
      v105.value._countAndFlagsBits = 0xD000000000000012;
      v106._countAndFlagsBits = 0;
      v106._object = 0xE000000000000000;
      v107 = NSLocalizedString(_:tableName:bundle:value:comment:)(v104, v105, v103, v106, v222);

      countAndFlagsBits = v102._countAndFlagsBits;
      object = v102._object;
      v94 = v107._countAndFlagsBits;
      v95 = v107._object;
      v96 = 3;
      goto LABEL_66;
    }

    goto LABEL_95;
  }

  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100005B14(v8, qword_1006D4630);
  osloga = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(osloga, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *&v207 = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_100005B4C(0xD000000000000012, 0x8000000100598A80, &v207);
    _os_log_impl(&_mh_execute_header, osloga, v9, "FMStewieWelcomeViewController: %s - viewState already set", v10, 0xCu);
    sub_100006060(v11);
  }

  else
  {
  }
}

void sub_10042AE20()
{
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100005B14(v1, qword_1006D4630);
  v2 = v0;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v5 = 136315394;
    *(v5 + 4) = sub_100005B4C(0x416D726F66726570, 0xEF29286E6F697463, &v9);
    *(v5 + 12) = 2080;
    v6 = String.init<A>(describing:)();
    v8 = sub_100005B4C(v6, v7, &v9);

    *(v5 + 14) = v8;
    _os_log_impl(&_mh_execute_header, v3, v4, "FMStewieWelcomeViewController: %s - action: %s", v5, 0x16u);
    swift_arrayDestroy();
  }

  if (v2[OBJC_IVAR____TtC6FindMy29FMStewieWelcomeViewController_actionToPerform] > 1u)
  {
    if (v2[OBJC_IVAR____TtC6FindMy29FMStewieWelcomeViewController_actionToPerform] == 2)
    {
      sub_10042C85C();
    }

    else
    {
      sub_10042C64C();
    }
  }

  else if (v2[OBJC_IVAR____TtC6FindMy29FMStewieWelcomeViewController_actionToPerform])
  {
    sub_10042B130();
  }

  else
  {
    [v2 dismissViewControllerAnimated:1 completion:0];
  }
}

void sub_10042B130()
{
  v1 = v0;
  v2 = sub_100426ACC();
  v4 = v3;
  updated = type metadata accessor for FMFSatelliteLocationUpdateEvent();
  if (!(*(*(updated - 8) + 48))(v4, 1, updated))
  {
    FMFSatelliteLocationUpdateEvent.sendLocationTapped.setter();
  }

  (v2)(v9, 0);
  v6 = swift_allocObject();
  *(v6 + 16) = v1;
  v9[4] = sub_10042C644;
  v9[5] = v6;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_100004AE4;
  v9[3] = &unk_10063E5D8;
  v7 = _Block_copy(v9);
  v8 = v1;

  [v8 dismissViewControllerAnimated:1 completion:v7];
  _Block_release(v7);
}

uint64_t sub_10042B280()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_10008F69C();

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_10042B2D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a1;
  v57 = a2;
  v2 = sub_10007EBC0(&qword_1006BF9D0);
  __chkstk_darwin(v2 - 8);
  v54 = &v48 - v3;
  v56 = type metadata accessor for FMFSatelliteLocationTapSource();
  v55 = *(v56 - 8);
  v4 = __chkstk_darwin(v56);
  v52 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v53 = &v48 - v6;
  updated = type metadata accessor for FMFSatelliteUpdateBlockingCondition();
  v8 = *(updated - 8);
  v9 = __chkstk_darwin(updated);
  v51 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v48 - v11;
  v13 = type metadata accessor for FMFSatelliteEducationFlowType();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v49 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = &v48 - v17;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v67[0] = v65;
  v67[1] = v66;
  v19 = 256;
  if (!BYTE1(v65))
  {
    v19 = 0;
  }

  v20 = v19 | LOBYTE(v67[0]);
  v21 = 0x10000;
  if (!BYTE2(v65))
  {
    v21 = 0;
  }

  v22 = 0x1000000;
  if (!BYTE3(v65))
  {
    v22 = 0;
  }

  v23 = v20 | v21 | v22;
  v24 = &_mh_execute_header;
  if (!BYTE4(v65))
  {
    v24 = 0;
  }

  v25 = 0x10000000000;
  if (!BYTE5(v65))
  {
    v25 = 0;
  }

  v26 = 0x1000000000000;
  if (!BYTE6(v65))
  {
    v26 = 0;
  }

  sub_100170480(v23 | v24 | v25 | v26, *(&v65 + 1), v66, *(&v66 + 1), &v65);
  sub_10008ED28(v67);
  v58 = v14;
  v27 = *(v14 + 104);
  v60 = v18;
  v61 = v13;
  v27(v18, enum case for FMFSatelliteEducationFlowType.learnMoreBlockingCondition(_:), v13);
  v28 = enum case for FMFSatelliteUpdateBlockingCondition.none(_:);
  v59 = v8;
  v29 = *(v8 + 104);
  v30 = v12;
  v62 = updated;
  v29(v12, enum case for FMFSatelliteUpdateBlockingCondition.none(_:), updated);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v68[0] = v63;
  v68[1] = v64;
  sub_10008ED28(v68);
  LODWORD(v48) = LOBYTE(v68[0]);
  v31 = v65;
  if (!(v65 >> 62))
  {
    v37 = v62;
    (*(v59 + 8))(v12, v62);
    sub_10008ED7C(&v65);
    if (v31 <= 4u)
    {
      switch(v31)
      {
        case 2u:
          v38 = &enum case for FMFSatelliteUpdateBlockingCondition.notSetUp(_:);
          goto LABEL_33;
        case 3u:
          v38 = &enum case for FMFSatelliteUpdateBlockingCondition.noFriends(_:);
          goto LABEL_33;
        case 4u:
          v38 = &enum case for FMFSatelliteUpdateBlockingCondition.notMeDevice(_:);
          goto LABEL_33;
      }
    }

    else if (v31 > 6u)
    {
      if (v31 == 7)
      {
        v38 = &enum case for FMFSatelliteUpdateBlockingCondition.regionNotSupported(_:);
        goto LABEL_33;
      }

      if (v31 == 8)
      {
        v38 = &enum case for FMFSatelliteUpdateBlockingCondition.online(_:);
        goto LABEL_33;
      }
    }

    else
    {
      if (v31 == 5)
      {
        v38 = &enum case for FMFSatelliteUpdateBlockingCondition.airplaneMode(_:);
        goto LABEL_33;
      }

      if (v31 == 6)
      {
        v38 = &enum case for FMFSatelliteUpdateBlockingCondition.shareMyLocationDisabled(_:);
LABEL_33:
        v29(v12, *v38, v37);
        goto LABEL_34;
      }
    }

    v38 = &enum case for FMFSatelliteUpdateBlockingCondition.locationServicesDisabled(_:);
    goto LABEL_33;
  }

  v32 = v62;
  if (v65 >> 62 == 1)
  {
    v33 = v12;
    sub_10008ED7C(&v65);
    (*(v59 + 8))(v12, v32);
    v34 = v29;
    v35 = v60;
    v36 = v61;
    (*(v58 + 8))(v60, v61);
    v27(v35, enum case for FMFSatelliteEducationFlowType.updateLocation(_:), v36);
    v34(v33, v28, v32);
  }

LABEL_34:
  if (*(v50 + OBJC_IVAR____TtC6FindMy29FMStewieWelcomeViewController_presentationSource))
  {
    v39 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v40 = &enum case for FMFSatelliteLocationTapSource.appLaunch(_:);
    if (v39)
    {
      v40 = &enum case for FMFSatelliteLocationTapSource.notificationTap(_:);
    }
  }

  else
  {

    v40 = &enum case for FMFSatelliteLocationTapSource.notificationTap(_:);
  }

  v41 = v55;
  v42 = v53;
  v43 = v56;
  (*(v55 + 104))(v53, *v40, v56);
  v44 = v58;
  (*(v58 + 16))(v49, v60, v61);
  (*(v41 + 16))(v52, v42, v43);
  v45 = v59;
  (*(v59 + 16))(v51, v30, v62);
  v46 = type metadata accessor for SatelliteFeatureViewSource();
  (*(*(v46 - 8) + 56))(v54, 1, 1, v46);
  FMFSatelliteLocationUpdateEvent.init(flowType:educationFlowInitiatedTapSource:sendLocationTapped:updateFlowBlockingCondition:updateFlowOffline:updateFlowCanceled:updateFlowLSOffGoToSettingsPressed:updateFlowLSOffOkPressed:viewSource:)();
  (*(v41 + 8))(v42, v43);
  (*(v45 + 8))(v30, v62);
  return (*(v44 + 8))(v60, v61);
}

id sub_10042BB04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *&v7[OBJC_IVAR____TtC6FindMy29FMStewieWelcomeViewController_mediator] = 0;
  *&v7[OBJC_IVAR____TtC6FindMy29FMStewieWelcomeViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v7[OBJC_IVAR____TtC6FindMy29FMStewieWelcomeViewController_viewModel] = 0;
  v10 = &v7[OBJC_IVAR____TtC6FindMy29FMStewieWelcomeViewController_style];
  if (qword_1006AECF0 != -1)
  {
    swift_once();
  }

  v12 = qword_1006BF8D8;
  v11 = unk_1006BF8E0;
  v13 = xmmword_1006BF8E8;
  v14 = unk_1006BF8F8;
  *v10 = qword_1006BF8D8;
  *(v10 + 1) = v11;
  *(v10 + 1) = v13;
  *(v10 + 2) = v14;
  v7[OBJC_IVAR____TtC6FindMy29FMStewieWelcomeViewController_presentationSource] = 1;
  v15 = &v7[OBJC_IVAR____TtC6FindMy29FMStewieWelcomeViewController_currentViewState];
  *v15 = 0xFFFFFFFF00;
  *(v15 + 8) = 0u;
  *(v15 + 24) = 0u;
  v15[40] = 0;
  v16 = OBJC_IVAR____TtC6FindMy29FMStewieWelcomeViewController_imageView;
  v17 = objc_allocWithZone(UIImageView);
  v18 = v12;
  v19 = v11;
  *&v7[v16] = [v17 init];
  v20 = OBJC_IVAR____TtC6FindMy29FMStewieWelcomeViewController_upperLabel;
  *&v7[v20] = [objc_allocWithZone(UILabel) init];
  v21 = OBJC_IVAR____TtC6FindMy29FMStewieWelcomeViewController_lowerLabel;
  *&v7[v21] = [objc_allocWithZone(UILabel) init];
  v22 = OBJC_IVAR____TtC6FindMy29FMStewieWelcomeViewController_performButton;
  *&v7[v22] = [objc_opt_self() boldButton];
  v7[OBJC_IVAR____TtC6FindMy29FMStewieWelcomeViewController_actionToPerform] = 0;
  v23 = &v7[OBJC_IVAR____TtC6FindMy29FMStewieWelcomeViewController_baseDetailText];
  *v23 = 0;
  v23[1] = 0xE000000000000000;
  v24 = &v7[OBJC_IVAR____TtC6FindMy29FMStewieWelcomeViewController_currentDetailText];
  *v24 = 0;
  v24[1] = 0;
  if (_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
  {
    v25 = sub_100174A74(_swiftEmptyArrayStorage);
  }

  else
  {
    v25 = _swiftEmptySetSingleton;
  }

  *&v7[OBJC_IVAR____TtC6FindMy29FMStewieWelcomeViewController_cancellables] = v25;
  v26 = OBJC_IVAR____TtC6FindMy29FMStewieWelcomeViewController_stewieAnalyticsEvent;
  updated = type metadata accessor for FMFSatelliteLocationUpdateEvent();
  (*(*(updated - 8) + 56))(&v7[v26], 1, 1, updated);
  v28 = String._bridgeToObjectiveC()();

  if (!a4)
  {
    v29 = 0;
    if (a6)
    {
      goto LABEL_7;
    }

LABEL_9:
    v30 = 0;
    goto LABEL_10;
  }

  v29 = String._bridgeToObjectiveC()();

  if (!a6)
  {
    goto LABEL_9;
  }

LABEL_7:
  v30 = String._bridgeToObjectiveC()();

LABEL_10:
  v34.receiver = v7;
  v34.super_class = type metadata accessor for FMStewieWelcomeViewController();
  v31 = objc_msgSendSuper2(&v34, "initWithTitle:detailText:symbolName:contentLayout:", v28, v29, v30, a7);

  return v31;
}

id sub_10042BEB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  *&v6[OBJC_IVAR____TtC6FindMy29FMStewieWelcomeViewController_mediator] = 0;
  *&v6[OBJC_IVAR____TtC6FindMy29FMStewieWelcomeViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v6[OBJC_IVAR____TtC6FindMy29FMStewieWelcomeViewController_viewModel] = 0;
  v10 = &v6[OBJC_IVAR____TtC6FindMy29FMStewieWelcomeViewController_style];
  if (qword_1006AECF0 != -1)
  {
    swift_once();
  }

  v11 = qword_1006BF8D8;
  v12 = unk_1006BF8E0;
  v13 = xmmword_1006BF8E8;
  v14 = unk_1006BF8F8;
  *v10 = qword_1006BF8D8;
  *(v10 + 1) = v12;
  *(v10 + 1) = v13;
  *(v10 + 2) = v14;
  v6[OBJC_IVAR____TtC6FindMy29FMStewieWelcomeViewController_presentationSource] = 1;
  v15 = &v6[OBJC_IVAR____TtC6FindMy29FMStewieWelcomeViewController_currentViewState];
  *v15 = 0xFFFFFFFF00;
  *(v15 + 8) = 0u;
  *(v15 + 24) = 0u;
  v15[40] = 0;
  v16 = OBJC_IVAR____TtC6FindMy29FMStewieWelcomeViewController_imageView;
  v17 = objc_allocWithZone(UIImageView);
  v18 = v11;
  v19 = v12;
  *&v6[v16] = [v17 init];
  v20 = OBJC_IVAR____TtC6FindMy29FMStewieWelcomeViewController_upperLabel;
  *&v6[v20] = [objc_allocWithZone(UILabel) init];
  v21 = OBJC_IVAR____TtC6FindMy29FMStewieWelcomeViewController_lowerLabel;
  *&v6[v21] = [objc_allocWithZone(UILabel) init];
  v22 = OBJC_IVAR____TtC6FindMy29FMStewieWelcomeViewController_performButton;
  *&v6[v22] = [objc_opt_self() boldButton];
  v6[OBJC_IVAR____TtC6FindMy29FMStewieWelcomeViewController_actionToPerform] = 0;
  v23 = &v6[OBJC_IVAR____TtC6FindMy29FMStewieWelcomeViewController_baseDetailText];
  *v23 = 0;
  v23[1] = 0xE000000000000000;
  v24 = &v6[OBJC_IVAR____TtC6FindMy29FMStewieWelcomeViewController_currentDetailText];
  *v24 = 0;
  v24[1] = 0;
  if (_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
  {
    v25 = sub_100174A74(_swiftEmptyArrayStorage);
  }

  else
  {
    v25 = _swiftEmptySetSingleton;
  }

  *&v6[OBJC_IVAR____TtC6FindMy29FMStewieWelcomeViewController_cancellables] = v25;
  v26 = OBJC_IVAR____TtC6FindMy29FMStewieWelcomeViewController_stewieAnalyticsEvent;
  updated = type metadata accessor for FMFSatelliteLocationUpdateEvent();
  (*(*(updated - 8) + 56))(&v6[v26], 1, 1, updated);
  v28 = String._bridgeToObjectiveC()();

  if (a4)
  {
    v29 = String._bridgeToObjectiveC()();
  }

  else
  {
    v29 = 0;
  }

  v32.receiver = v6;
  v32.super_class = type metadata accessor for FMStewieWelcomeViewController();
  v30 = objc_msgSendSuper2(&v32, "initWithTitle:detailText:icon:contentLayout:", v28, v29, a5, a6);

  return v30;
}

id sub_10042C234()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMStewieWelcomeViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for FMStewieWelcomeViewController()
{
  result = qword_1006BF9B0;
  if (!qword_1006BF9B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10042C3E0()
{
  sub_10042C4E0();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_10042C4E0()
{
  if (!qword_1006BF9C0)
  {
    type metadata accessor for FMFSatelliteLocationUpdateEvent();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1006BF9C0);
    }
  }
}

uint64_t sub_10042C548(uint64_t *a1, int a2)
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

uint64_t sub_10042C590(uint64_t result, int a2, int a3)
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

unint64_t sub_10042C5F0()
{
  result = qword_1006BF9C8;
  if (!qword_1006BF9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006BF9C8);
  }

  return result;
}

uint64_t sub_10042C64C()
{
  v0 = sub_10007EBC0(&unk_1006B0120);
  __chkstk_darwin(v0 - 8);
  v2 = &v14 - v1;
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  URL.init(string:)();
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    return sub_100012DF0(v2, &unk_1006B0120);
  }

  (*(v4 + 32))(v6, v2, v3);
  v8 = [objc_opt_self() defaultWorkspace];
  if (v8)
  {
    v10 = v8;
    URL._bridgeToObjectiveC()(v9);
    v12 = v11;
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
    [v10 openSensitiveURL:v12 withOptions:isa];
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_10042C85C()
{
  v0 = sub_10007EBC0(&unk_1006B0120);
  __chkstk_darwin(v0 - 8);
  v2 = &v14 - v1;
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  URL.init(string:)();
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    return sub_100012DF0(v2, &unk_1006B0120);
  }

  (*(v4 + 32))(v6, v2, v3);
  v8 = [objc_opt_self() defaultWorkspace];
  if (v8)
  {
    v10 = v8;
    URL._bridgeToObjectiveC()(v9);
    v12 = v11;
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
    [v10 openSensitiveURL:v12 withOptions:isa];
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_10042CA7C()
{
  result = qword_1006AF990;
  if (!qword_1006AF990)
  {
    type metadata accessor for AnyCancellable();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006AF990);
  }

  return result;
}

uint64_t sub_10042CAD4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10007EBC0(&qword_1006BF9E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_10042CB4C()
{
  result = qword_1006AF9B0;
  if (!qword_1006AF9B0)
  {
    sub_10007EC08(&qword_1006AF9A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006AF9B0);
  }

  return result;
}

uint64_t sub_10042CBB0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10007EBC0(&qword_1006BF9E0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_10042CC20(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (result >> 8 != 0xFFFFFFFF)
  {
    return sub_10042CC34(result, a2, a3, a4, a5, a6);
  }

  return result;
}

unint64_t sub_10042CC34(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (result >> 62 == 1)
  {

    a2 = a4;
    a3 = a5;
    v9 = a6;
  }

  else
  {
    if (result >> 62)
    {
      return result;
    }

    v9 = a4;
  }

  return sub_1001443E8(a2, a3, v9);
}

char *sub_10042CCC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v58 = a3;
  v54 = a2;
  v60 = a1;
  v3 = type metadata accessor for FMPlatterIcon();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v53 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10007EBC0(&qword_1006B3298);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v52 - v10;
  v12 = [objc_opt_self() mainBundle];
  v66._object = 0x8000000100598C60;
  v13._object = 0x8000000100598C40;
  v66._countAndFlagsBits = 0xD000000000000026;
  v13._countAndFlagsBits = 0xD000000000000014;
  v14._countAndFlagsBits = 0;
  v14._object = 0xE000000000000000;
  v15 = NSLocalizedString(_:tableName:bundle:value:comment:)(v13, 0, v12, v14, v66);
  object = v15._object;
  countAndFlagsBits = v15._countAndFlagsBits;

  swift_storeEnumTagMultiPayload();
  (*(v4 + 56))(v11, 0, 1, v3);
  v64 = &type metadata for SolariumFeatureFlag;
  v52 = sub_10000BD04();
  v65 = v52;
  v55 = isFeatureEnabled(_:)();
  sub_100006060(v63);
  v16 = type metadata accessor for FMMultiSettingsRowView();
  v17 = objc_allocWithZone(v16);
  v18 = &v17[OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_identifier];
  *v18 = 0;
  v18[1] = 0;
  v19 = OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_backgroundView;
  *&v17[v19] = [objc_allocWithZone(UIView) init];
  v20 = OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_iconView;
  *&v17[v20] = [objc_allocWithZone(UIImageView) init];
  v21 = OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_titleLabel;
  *&v17[v21] = [objc_allocWithZone(UILabel) init];
  v22 = OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_secondaryLabel;
  type metadata accessor for FMCopyableLabel();
  *&v17[v22] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v23 = OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_chevron;
  v24 = sub_1003DE824();
  v25 = [objc_allocWithZone(UIImageView) initWithImage:v24];

  *&v17[v23] = v25;
  v26 = OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_separator;
  *&v17[v26] = [objc_allocWithZone(UIView) init];
  v27 = &v17[OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_title];
  *v27 = 0;
  v27[1] = 0;
  v28 = &v17[OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_subtitle];
  *v28 = 0;
  v28[1] = 0;
  v29 = OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_subtitleColor;
  *&v17[v29] = [objc_opt_self() secondaryLabelColor];
  v17[OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_subtitleIsCopyToPasteboardEnabled] = 0;
  v17[OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_separated] = 1;
  v17[OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_isChevronVisible] = 0;
  v30 = object;
  *v27 = countAndFlagsBits;
  v27[1] = v30;

  v17[OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_isBoldTitle] = 1;
  *&v17[OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_backgroundOffset] = 0;
  v17[OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_fullWidthSeparator] = (v55 & 1) == 0;
  v17[OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_hiliteBackgroundWhenTapped] = 0;
  v62.receiver = v17;
  v62.super_class = v16;
  v31 = objc_msgSendSuper2(&v62, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_100243148(v11, v9);
  if ((*(v4 + 48))(v9, 1, v3) == 1)
  {
    v32 = v31;
    sub_10017D238(v9);
  }

  else
  {
    v33 = v9;
    v34 = v53;
    sub_10015DA28(v33, v53);
    v35 = v31;
    v36 = sub_10043BBEC(v34, 0);
    v38 = v37;
    v39 = OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_iconView;
    [*&v35[OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_iconView] setImage:v36];
    [*&v35[v39] setTintAdjustmentMode:1];
    v64 = &type metadata for SolariumFeatureFlag;
    v65 = v52;
    v40 = isFeatureEnabled(_:)();
    sub_100006060(v63);
    if (v40)
    {
      [*&v35[v39] setTintColor:v38];

      sub_1000D59F8(v34);
    }

    else
    {
      sub_1000D59F8(v34);
    }
  }

  v41 = OBJC_IVAR____TtC6FindMy28FMLabelTableViewLocationCell_locationView;
  [v31 setUserInteractionEnabled:0];
  *(v31 + OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_isChevronVisible) = 0;
  sub_1004EE178();
  sub_1004EE5A4(0.0);

  sub_10017D238(v11);
  v42 = v59;
  *&v59[v41] = v31;
  v43 = &v42[OBJC_IVAR____TtC6FindMy28FMLabelTableViewLocationCell_displayAddress];
  *v43 = 0u;
  *(v43 + 1) = 0u;
  *(v43 + 16) = 0;
  if (v58)
  {
    v44 = String._bridgeToObjectiveC()();
  }

  else
  {
    v44 = 0;
  }

  v45 = type metadata accessor for FMLabelTableViewLocationCell();
  v61.receiver = v42;
  v61.super_class = v45;
  v46 = objc_msgSendSuper2(&v61, "initWithStyle:reuseIdentifier:", v60, v44);

  v47 = OBJC_IVAR____TtC6FindMy28FMLabelTableViewLocationCell_locationView;
  v48 = *&v46[OBJC_IVAR____TtC6FindMy28FMLabelTableViewLocationCell_locationView];
  v49 = v46;
  [v48 setUserInteractionEnabled:1];
  v50 = [v49 contentView];
  [v50 addSubview:*&v46[v47]];

  sub_10042D384();
  return v49;
}

void sub_10042D384()
{
  v1 = v0;
  if (qword_1006AEC30 != -1)
  {
    swift_once();
  }

  v2 = *&qword_1006D4798;
  v3 = *&v0[OBJC_IVAR____TtC6FindMy28FMLabelTableViewLocationCell_locationView];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  v4 = objc_opt_self();
  sub_10007EBC0(&qword_1006AFC30);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1005521F0;
  v6 = [v3 topAnchor];
  v7 = [v1 contentView];
  v8 = [v7 topAnchor];

  v9 = [v6 constraintEqualToAnchor:v8];
  *(v5 + 32) = v9;
  v10 = [v3 leadingAnchor];
  v11 = [v1 contentView];
  v12 = [v11 leadingAnchor];

  v13 = [v10 constraintEqualToAnchor:v12 constant:v2];
  *(v5 + 40) = v13;
  v14 = [v3 trailingAnchor];
  v15 = [v1 contentView];
  v16 = [v15 trailingAnchor];

  v17 = [v14 constraintEqualToAnchor:v16 constant:v2];
  *(v5 + 48) = v17;
  v18 = [v3 bottomAnchor];
  v19 = [v1 contentView];
  v20 = [v19 bottomAnchor];

  v21 = [v18 constraintEqualToAnchor:v20];
  *(v5 + 56) = v21;
  sub_10002B27C();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v4 activateConstraints:isa];
}

id sub_10042D698()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMLabelTableViewLocationCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10042D748()
{
  v0 = type metadata accessor for FMPlatterIcon();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v43 = &v41 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10007EBC0(&qword_1006B3298);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v41 - v7;
  v9 = [objc_opt_self() mainBundle];
  v52._object = 0x8000000100598C60;
  v10._object = 0x8000000100598C40;
  v52._countAndFlagsBits = 0xD000000000000026;
  v10._countAndFlagsBits = 0xD000000000000014;
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  v12 = NSLocalizedString(_:tableName:bundle:value:comment:)(v10, 0, v9, v11, v52);
  object = v12._object;
  countAndFlagsBits = v12._countAndFlagsBits;

  swift_storeEnumTagMultiPayload();
  (*(v1 + 56))(v8, 0, 1, v0);
  v50 = &type metadata for SolariumFeatureFlag;
  v42 = sub_10000BD04();
  v51 = v42;
  v44 = isFeatureEnabled(_:)();
  sub_100006060(v49);
  v13 = type metadata accessor for FMMultiSettingsRowView();
  v14 = objc_allocWithZone(v13);
  v15 = &v14[OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_identifier];
  *v15 = 0;
  v15[1] = 0;
  v16 = OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_backgroundView;
  *&v14[v16] = [objc_allocWithZone(UIView) init];
  v17 = OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_iconView;
  *&v14[v17] = [objc_allocWithZone(UIImageView) init];
  v18 = OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_titleLabel;
  *&v14[v18] = [objc_allocWithZone(UILabel) init];
  v19 = OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_secondaryLabel;
  type metadata accessor for FMCopyableLabel();
  *&v14[v19] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v20 = OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_chevron;
  v21 = sub_1003DE824();
  v22 = [objc_allocWithZone(UIImageView) initWithImage:v21];

  *&v14[v20] = v22;
  v23 = OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_separator;
  *&v14[v23] = [objc_allocWithZone(UIView) init];
  v24 = &v14[OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_title];
  *v24 = 0;
  v24[1] = 0;
  v25 = &v14[OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_subtitle];
  *v25 = 0;
  v25[1] = 0;
  v26 = OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_subtitleColor;
  *&v14[v26] = [objc_opt_self() secondaryLabelColor];
  v14[OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_subtitleIsCopyToPasteboardEnabled] = 0;
  v14[OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_separated] = 1;
  v14[OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_isChevronVisible] = 0;
  v27 = object;
  *v24 = countAndFlagsBits;
  v24[1] = v27;

  v14[OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_isBoldTitle] = 1;
  *&v14[OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_backgroundOffset] = 0;
  v14[OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_fullWidthSeparator] = (v44 & 1) == 0;
  v14[OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_hiliteBackgroundWhenTapped] = 0;
  v48.receiver = v14;
  v48.super_class = v13;
  v28 = objc_msgSendSuper2(&v48, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_100243148(v8, v6);
  if ((*(v1 + 48))(v6, 1, v0) == 1)
  {
    v29 = v28;
    sub_10017D238(v6);
  }

  else
  {
    v30 = v43;
    sub_10015DA28(v6, v43);
    v31 = v28;
    v32 = sub_10043BBEC(v30, 0);
    v34 = v33;
    v35 = OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_iconView;
    [*&v31[OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_iconView] setImage:v32];
    [*&v31[v35] setTintAdjustmentMode:1];
    v50 = &type metadata for SolariumFeatureFlag;
    v51 = v42;
    v36 = isFeatureEnabled(_:)();
    sub_100006060(v49);
    if (v36)
    {
      [*&v31[v35] setTintColor:v34];

      sub_1000D59F8(v30);
    }

    else
    {
      sub_1000D59F8(v30);
    }
  }

  v37 = OBJC_IVAR____TtC6FindMy28FMLabelTableViewLocationCell_locationView;
  [v28 setUserInteractionEnabled:0];
  *(v28 + OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_isChevronVisible) = 0;
  sub_1004EE178();
  sub_1004EE5A4(0.0);

  sub_10017D238(v8);
  v38 = v47;
  *(v47 + v37) = v28;
  v39 = v38 + OBJC_IVAR____TtC6FindMy28FMLabelTableViewLocationCell_displayAddress;
  *v39 = 0u;
  *(v39 + 16) = 0u;
  *(v39 + 32) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_10042DD34(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10007EBC0(&qword_1006B2B70);
  __chkstk_darwin(v4 - 8);
  v6 = &v25[-v5];
  v7 = type metadata accessor for FMSelectedSection();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v25[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = __chkstk_darwin(v9);
  v14 = &v25[-v13];
  __chkstk_darwin(v12);
  v16 = &v25[-v15];
  v17 = type metadata accessor for FMPerformanceTestCase();
  sub_10005B504(a1 + *(v17 + 20), v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_100158C10(v6);
  }

  else
  {
    sub_10005B574(v6, v16);
    v18 = *(*(v2 + 16) + 56);
    sub_100062074(v16, v14);
    v19 = OBJC_IVAR____TtC6FindMy21FMSelectionController_currentSelectedSection;
    swift_beginAccess();
    sub_100062074(v18 + v19, v11);
    swift_beginAccess();

    sub_100058530(v14, v18 + v19);
    swift_endAccess();
    sub_100058594(v11);

    sub_10005D4E4(v11);
    sub_10005D4E4(v14);
    sub_10005D4E4(v16);
  }

  v20 = *(v2 + 24);
  v21 = *&v20[OBJC_IVAR____TtC6FindMy20FMMainViewController_initialCardContainer];
  v22 = v20;
  v23 = sub_100180F2C(v21, -10.0, -10.0);

  [objc_opt_self() runTestWithParameters:v23];
  swift_unknownObjectRelease();
  return 1;
}

void sub_10042E120()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC6FindMy20FMBatteryWrapperView_batteryView];
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v0 addSubview:v2];
  v3 = objc_opt_self();
  sub_10007EBC0(&qword_1006AFC30);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100552F00;
  v5 = [v1 leadingAnchor];
  v6 = [v2 leadingAnchor];
  v7 = [v5 constraintEqualToAnchor:v6];

  *(v4 + 32) = v7;
  v8 = [v1 trailingAnchor];
  v9 = [v2 trailingAnchor];
  v10 = [v8 constraintEqualToAnchor:v9];

  *(v4 + 40) = v10;
  v11 = [v1 topAnchor];
  v12 = [v2 topAnchor];
  v13 = [v11 constraintLessThanOrEqualToAnchor:v12];

  *(v4 + 48) = v13;
  v14 = [v1 bottomAnchor];
  v15 = [v2 bottomAnchor];
  v16 = [v14 constraintGreaterThanOrEqualToAnchor:v15];

  *(v4 + 56) = v16;
  v17 = [v1 centerYAnchor];
  v18 = [v2 centerYAnchor];
  v19 = [v17 constraintEqualToAnchor:v18];

  *(v4 + 64) = v19;
  sub_10002B27C();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v3 activateConstraints:isa];
}

void sub_10042E4A4(void *a1)
{
  v3 = String._bridgeToObjectiveC()();
  v4 = objc_opt_self();
  v5 = [v4 imageNamed:v3];

  if (!v5)
  {
    __break(1u);
    goto LABEL_8;
  }

  v6 = OBJC_IVAR____TtC6FindMy13FMBatteryView_outlineView;
  v7 = [v5 imageWithRenderingMode:2];

  v8 = [objc_allocWithZone(UIImageView) initWithImage:v7];
  *&v1[v6] = v8;
  v9 = String._bridgeToObjectiveC()();
  v10 = [v4 imageNamed:v9];

  if (!v10)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v11 = OBJC_IVAR____TtC6FindMy13FMBatteryView_chargingView;
  v12 = [v10 imageWithRenderingMode:2];

  v13 = [objc_allocWithZone(UIImageView) initWithImage:v12];
  *&v1[v11] = v13;
  v14 = String._bridgeToObjectiveC()();
  v15 = [v4 imageNamed:v14];

  if (!v15)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v16 = OBJC_IVAR____TtC6FindMy13FMBatteryView_levelView;
  v17 = [v15 imageWithRenderingMode:2];

  v18 = [objc_allocWithZone(UIImageView) initWithImage:v17];
  *&v1[v16] = v18;
  v1[OBJC_IVAR____TtC6FindMy13FMBatteryView_isCharging] = 0;
  *&v1[OBJC_IVAR____TtC6FindMy13FMBatteryView_level] = 0;
  v1[OBJC_IVAR____TtC6FindMy13FMBatteryView_powerMode] = 0;
  v20.receiver = v1;
  v20.super_class = type metadata accessor for FMBatteryView();
  v19 = objc_msgSendSuper2(&v20, "initWithCoder:", a1);

  if (v19)
  {
  }
}

id sub_10042E768(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

unint64_t sub_10042E7B4()
{
  result = qword_1006BFBA0;
  if (!qword_1006BFBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006BFBA0);
  }

  return result;
}

uint64_t sub_10042E830()
{
  v1 = v0;
  v2 = *v0;
  if (*v0)
  {
    Hasher._combine(_:)(1u);
    v3 = v2;
    NSObject.hash(into:)();

    v4 = *(v1 + 8);
    if (v4)
    {
LABEL_3:
      Hasher._combine(_:)(1u);
      v5 = v4;
      NSObject.hash(into:)();

      goto LABEL_6;
    }
  }

  else
  {
    Hasher._combine(_:)(0);
    v4 = *(v0 + 8);
    if (v4)
    {
      goto LABEL_3;
    }
  }

  Hasher._combine(_:)(0);
LABEL_6:
  String.hash(into:)();
  String.hash(into:)();
  v6 = *(v1 + 48);
  if (v6 == 0.0)
  {
    v6 = 0.0;
  }

  Hasher._combine(_:)(*&v6);
  Hasher._combine(_:)(*(v1 + 56));
  v7 = *(v1 + 64);
  if (v7)
  {
    Hasher._combine(_:)(1u);
    v8 = v7;
    NSObject.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  String.hash(into:)();
  type metadata accessor for FMMeCellViewModel();
  type metadata accessor for PeopleListPersonRow.State();
  sub_10002C534(&qword_1006B1488, &type metadata accessor for PeopleListPersonRow.State);
  return dispatch thunk of Hashable.hash(into:)();
}

void *sub_10042E9B0()
{
  v1 = *(v0 + 64);
  v2 = v1;
  return v1;
}

uint64_t sub_10042E9D8()
{
  v1 = *(v0 + 72);

  return v1;
}

uint64_t sub_10042EA08()
{
  v1 = *(v0 + 32);

  return v1;
}

Swift::Int sub_10042EA48()
{
  Hasher.init(_seed:)();
  sub_10042E830();
  return Hasher._finalize()();
}

Swift::Int sub_10042EA8C()
{
  Hasher.init(_seed:)();
  sub_10042E830();
  return Hasher._finalize()();
}

uint64_t sub_10042EAC8(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24))
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

id sub_10042EAF8()
{
  result = [objc_allocWithZone(CNContactStore) init];
  qword_1006BFCA0 = result;
  return result;
}

void sub_10042EB2C()
{
  v0 = [objc_opt_self() offMainThreadSynchronousRenderingOnlySettingsWithCacheSize:0];
  v1 = [objc_allocWithZone(CNAvatarImageRenderer) initWithSettings:v0];

  qword_1006BFCA8 = v1;
}

void sub_10042EC78()
{
  if ([v0 isCancelled])
  {
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_100005B14(v1, qword_1006D4630);
    oslog = Logger.logObject.getter();
    v2 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v2))
    {
      v3 = swift_slowAlloc();
      *v3 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v2, "FMPersonImageCreationOperation: operation cancelled", v3, 2u);
    }
  }
}

void sub_10042EDCC()
{
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100005B14(v1, qword_1006D4630);
  v2 = v0;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *&v52 = v6;
    *v5 = 136315138;
    v7 = *&v2[OBJC_IVAR____TtC6FindMy27FMPersonImageCacheOperation_request + 80];
    v63 = *&v2[OBJC_IVAR____TtC6FindMy27FMPersonImageCacheOperation_request + 64];
    v64 = v7;
    v65 = *&v2[OBJC_IVAR____TtC6FindMy27FMPersonImageCacheOperation_request + 96];
    v8 = *&v2[OBJC_IVAR____TtC6FindMy27FMPersonImageCacheOperation_request + 16];
    v59 = *&v2[OBJC_IVAR____TtC6FindMy27FMPersonImageCacheOperation_request];
    v60 = v8;
    v9 = *&v2[OBJC_IVAR____TtC6FindMy27FMPersonImageCacheOperation_request + 48];
    v61 = *&v2[OBJC_IVAR____TtC6FindMy27FMPersonImageCacheOperation_request + 32];
    v62 = v9;
    v10 = sub_10010A148();
    v12 = sub_100005B4C(v10, v11, &v52);

    *(v5 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v3, v4, "FMPersonImageCreationOperation: started for filename: %s", v5, 0xCu);
    sub_100006060(v6);
  }

  v13 = &v2[OBJC_IVAR____TtC6FindMy27FMPersonImageCacheOperation_request];
  if (!*&v2[OBJC_IVAR____TtC6FindMy27FMPersonImageCacheOperation_request + 24])
  {
    goto LABEL_18;
  }

  if (qword_1006AED10 != -1)
  {
    swift_once();
  }

  v14 = qword_1006BFCA0;
  v15 = String._bridgeToObjectiveC()();
  sub_10007EBC0(&qword_1006AFC30);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1005528C0;
  *(v16 + 32) = [objc_opt_self() descriptorForRequiredKeys];
  sub_10007EBC0(&qword_1006AF180);
  isa = Array._bridgeToObjectiveC()().super.isa;

  *&v52 = 0;
  v18 = [v14 unifiedContactWithIdentifier:v15 keysToFetch:isa error:&v52];

  v19 = v52;
  if (!v18)
  {
    v48 = v52;
    _convertNSErrorToError(_:)();

    swift_willThrow();

LABEL_18:
    v55 = *(v13 + 3);
    v56 = *(v13 + 4);
    v57 = *(v13 + 5);
    v58 = *(v13 + 12);
    v52 = *v13;
    v53 = *(v13 + 1);
    v54 = *(v13 + 2);
    sub_10042F4D8(&v52);
    return;
  }

  v20 = *(v13 + 10) == 1;
  v21 = v13[48];
  v22 = objc_opt_self();
  v23 = v19;
  v24 = [v22 mainScreen];
  [v24 scale];
  v26 = v25;

  v27 = 44.0;
  if (v21)
  {
    v27 = 66.0;
  }

  v28 = [objc_opt_self() scopeWithPointSize:v20 scale:0 rightToLeft:v27 * v26 style:{v27 * v26, *(v13 + 9)}];
  if (qword_1006AED18 != -1)
  {
    swift_once();
  }

  v29 = qword_1006BFCA8;
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_1005528C0;
  *(v30 + 32) = v18;
  sub_1001C8788();
  v31 = v18;
  v32 = Array._bridgeToObjectiveC()().super.isa;

  v33 = [v29 avatarImageForContacts:v32 scope:v28];

  v34 = UIImagePNGRepresentation(v33);
  if (v34)
  {
    v50 = v33;
    v35 = v34;
    v36 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v38 = v37;

    v39 = v2;
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v40, v41))
    {
      v49 = v31;
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v51 = v43;
      *v42 = 136315138;
      v55 = *(v13 + 3);
      v56 = *(v13 + 4);
      v57 = *(v13 + 5);
      v58 = *(v13 + 12);
      v52 = *v13;
      v53 = *(v13 + 1);
      v54 = *(v13 + 2);
      v44 = sub_10010A148();
      v46 = sub_100005B4C(v44, v45, &v51);

      *(v42 + 4) = v46;
      _os_log_impl(&_mh_execute_header, v40, v41, "FMPersonImageCreationOperation: loaded monogram for filename: %s", v42, 0xCu);
      sub_100006060(v43);

      v31 = v49;
    }

    v47 = *&v39[OBJC_IVAR____TtC6FindMy27FMPersonImageCacheOperation_completion];
    sub_10005B930(v36, v38);
    v47(v36, v38, 0);
    sub_10000A858(v36, v38);
    [v39 setFinished:1];
    swift_unknownObjectRelease();

    sub_10000A858(v36, v38);
  }

  else
  {
    v55 = *(v13 + 3);
    v56 = *(v13 + 4);
    v57 = *(v13 + 5);
    v58 = *(v13 + 12);
    v52 = *v13;
    v53 = *(v13 + 1);
    v54 = *(v13 + 2);
    sub_10042F4D8(&v52);
    swift_unknownObjectRelease();
  }
}

id sub_10042F4D8(uint64_t a1)
{
  v2 = sub_10042FA68(a1);
  if (v3 >> 60 == 15)
  {
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_100005B14(v4, qword_1006D4630);
    v5 = v1;
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v36 = v9;
      *v8 = 136315138;
      v10 = *&v5[OBJC_IVAR____TtC6FindMy27FMPersonImageCacheOperation_request + 80];
      v41 = *&v5[OBJC_IVAR____TtC6FindMy27FMPersonImageCacheOperation_request + 64];
      v42 = v10;
      v43 = *&v5[OBJC_IVAR____TtC6FindMy27FMPersonImageCacheOperation_request + 96];
      v11 = *&v5[OBJC_IVAR____TtC6FindMy27FMPersonImageCacheOperation_request + 16];
      v37 = *&v5[OBJC_IVAR____TtC6FindMy27FMPersonImageCacheOperation_request];
      v38 = v11;
      v12 = *&v5[OBJC_IVAR____TtC6FindMy27FMPersonImageCacheOperation_request + 48];
      v39 = *&v5[OBJC_IVAR____TtC6FindMy27FMPersonImageCacheOperation_request + 32];
      v40 = v12;
      v13 = sub_10010A148();
      v15 = sub_100005B4C(v13, v14, &v36);

      *(v8 + 4) = v15;
      _os_log_impl(&_mh_execute_header, v6, v7, "FMPersonImageCreationOperation: Failed to load silouhette filename: %s", v8, 0xCu);
      sub_100006060(v9);
    }

    v16 = *&v5[OBJC_IVAR____TtC6FindMy27FMPersonImageCacheOperation_completion];
    v17 = type metadata accessor for FMImageCacheError();
    sub_10042FBB4();
    v18 = swift_allocError();
    (*(*(v17 - 8) + 104))(v19, enum case for FMImageCacheError.unknownError(_:), v17);
    v16(v18, 0, 1);
  }

  else
  {
    v20 = v2;
    v21 = v3;
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_100005B14(v22, qword_1006D4630);
    v23 = v1;
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v36 = v27;
      *v26 = 136315138;
      v28 = *&v23[OBJC_IVAR____TtC6FindMy27FMPersonImageCacheOperation_request + 80];
      v41 = *&v23[OBJC_IVAR____TtC6FindMy27FMPersonImageCacheOperation_request + 64];
      v42 = v28;
      v43 = *&v23[OBJC_IVAR____TtC6FindMy27FMPersonImageCacheOperation_request + 96];
      v29 = *&v23[OBJC_IVAR____TtC6FindMy27FMPersonImageCacheOperation_request + 16];
      v37 = *&v23[OBJC_IVAR____TtC6FindMy27FMPersonImageCacheOperation_request];
      v38 = v29;
      v30 = *&v23[OBJC_IVAR____TtC6FindMy27FMPersonImageCacheOperation_request + 48];
      v39 = *&v23[OBJC_IVAR____TtC6FindMy27FMPersonImageCacheOperation_request + 32];
      v40 = v30;
      v31 = sub_10010A148();
      v33 = sub_100005B4C(v31, v32, &v36);

      *(v26 + 4) = v33;
      _os_log_impl(&_mh_execute_header, v24, v25, "FMPersonImageCreationOperation: loaded silouhette for filename: %s", v26, 0xCu);
      sub_100006060(v27);
    }

    v34 = *&v23[OBJC_IVAR____TtC6FindMy27FMPersonImageCacheOperation_completion];
    sub_10005B930(v20, v21);
    v34(v20, v21, 0);
    sub_10005BA6C(v20, v21);
    sub_10005BA6C(v20, v21);
  }

  return [v1 setFinished:1];
}

id sub_10042F8E4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMPersonImageCacheOperation();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_10042F9AC(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1[5];
  v21 = a1[4];
  v22 = v5;
  v23 = *(a1 + 12);
  v6 = a1[1];
  v17 = *a1;
  v18 = v6;
  v7 = a1[3];
  v19 = a1[2];
  v20 = v7;
  v8 = type metadata accessor for FMPersonImageCacheOperation();
  v9 = objc_allocWithZone(v8);
  v9[OBJC_IVAR____TtC6FindMy27FMPersonImageCacheOperation__isFinished] = 0;
  v10 = &v9[OBJC_IVAR____TtC6FindMy27FMPersonImageCacheOperation_request];
  v11 = v22;
  *(v10 + 4) = v21;
  *(v10 + 5) = v11;
  *(v10 + 12) = v23;
  v12 = v18;
  *v10 = v17;
  *(v10 + 1) = v12;
  v13 = v20;
  *(v10 + 2) = v19;
  *(v10 + 3) = v13;
  v14 = &v9[OBJC_IVAR____TtC6FindMy27FMPersonImageCacheOperation_completion];
  *v14 = a2;
  v14[1] = a3;
  v16.receiver = v9;
  v16.super_class = v8;
  return objc_msgSendSuper2(&v16, "init");
}

uint64_t sub_10042FA68(uint64_t a1)
{
  if (qword_1006AED18 != -1)
  {
    swift_once();
  }

  v2 = [qword_1006BFCA8 placeholderImageProvider];
  v3 = *(a1 + 48);
  v4 = [objc_opt_self() mainScreen];
  [v4 scale];
  v6 = v5;

  v7 = 44.0;
  if (v3)
  {
    v7 = 66.0;
  }

  v8 = [v2 imageForSize:v7 * v6 scale:{v7 * v6, *(a1 + 72)}];
  swift_unknownObjectRelease();
  v9 = UIImagePNGRepresentation(v8);

  if (!v9)
  {
    return 0;
  }

  v10 = static Data._unconditionallyBridgeFromObjectiveC(_:)();

  return v10;
}

unint64_t sub_10042FBB4()
{
  result = qword_1006BFCF8;
  if (!qword_1006BFCF8)
  {
    type metadata accessor for FMImageCacheError();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006BFCF8);
  }

  return result;
}

id sub_10042FC0C(void *a1, void *a2)
{
  v3 = v2;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v45 = *(v10 - 8);
  v46 = v10;
  __chkstk_darwin(v10);
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for DispatchTime();
  v44 = *(v47 - 8);
  v13 = __chkstk_darwin(v47);
  v15 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v42 - v16;
  result = [a2 annotation];
  if (result)
  {
    type metadata accessor for FMFenceMapAnnotation();
    v19 = swift_dynamicCastClass();
    if (v19)
    {
      v20 = v19;
      v43 = v7;
      v21 = *&v3[OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_selectedAnnotation];
      *&v3[OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_selectedAnnotation] = v19;
      swift_unknownObjectRetain();

      v22 = *&v20[OBJC_IVAR____TtC6FindMy20FMFenceMapAnnotation_customRadius];
      [v20 coordinate];
      v51 = MKCoordinateRegionMakeWithDistance(v50, v22 * 3.5, v22 * 3.5);
      [a1 regionThatFits:{v51.center.latitude, v51.center.longitude, v51.span.latitudeDelta, v51.span.longitudeDelta}];
      v27 = fabs(v23);
      if (fabs(v24) <= 180.0 && v27 <= 90.0 && v25 >= 0.0 && v25 <= 180.0 && v26 >= 0.0 && v26 <= 360.0)
      {
        result = *&v3[OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_mapView];
        if (!result)
        {
          __break(1u);
          return result;
        }

        v31 = v23;
        v32 = v24;
        v33 = v25;
        v34 = v26;
        [result setRegion:1 animated:?];
        v35 = &v3[OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_currentMapRegion];
        *v35 = v31;
        v35[1] = v32;
        v35[2] = v33;
        v35[3] = v34;
        *(v35 + 32) = 0;
      }

      sub_100003E90();
      v42 = static OS_dispatch_queue.main.getter();
      static DispatchTime.now()();
      + infix(_:_:)();
      v44 = *(v44 + 8);
      (v44)(v15, v47);
      v36 = swift_allocObject();
      *(v36 + 16) = v3;
      *(v36 + 24) = v20;
      aBlock[4] = sub_100431228;
      aBlock[5] = v36;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100004AE4;
      aBlock[3] = &unk_10063E908;
      v37 = _Block_copy(aBlock);
      swift_unknownObjectRetain();
      v38 = v3;

      static DispatchQoS.unspecified.getter();
      aBlock[0] = _swiftEmptyArrayStorage;
      sub_100037918();
      sub_10007EBC0(&unk_1006B0640);
      sub_100037970();
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v39 = v42;
      OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
      _Block_release(v37);

      (*(v43 + 8))(v9, v6);
      (*(v45 + 8))(v12, v46);
      (v44)(v17, v47);
      v40 = [v38 navigationController];
      if (v40)
      {
        v41 = v40;
        [v40 setToolbarHidden:0 animated:0];
      }

      return swift_unknownObjectRelease();
    }

    else
    {

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

id sub_100430164(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + OBJC_IVAR____TtC6FindMy20FMFenceMapAnnotation_overlay);
  v5 = v4;
  sub_100466684(v4);

  result = *(a1 + OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_dragView);
  if (result)
  {
    [result addHandleForAnnotation:a2];
    return sub_1004679C4(*(a2 + OBJC_IVAR____TtC6FindMy20FMFenceMapAnnotation_customRadius), 0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1004303C0(void *a1, void *a2)
{
  v5 = sub_10007EBC0(&qword_1006B0040);
  __chkstk_darwin(v5 - 8);
  v7 = v30 - v6;
  [a2 coordinate];
  v30[2] = v8;
  v30[3] = v9;
  v10 = [a1 userLocation];
  [v10 coordinate];
  v12 = v11;
  v14 = v13;

  v30[0] = v12;
  v30[1] = v14;
  CLLocationCoordinate2DGetDistanceFrom();
  if (v15 == 0.0)
  {
    v16 = objc_allocWithZone(MKUserLocationView);
    v17 = String._bridgeToObjectiveC()();
    v18 = [v16 initWithAnnotation:a2 reuseIdentifier:v17];

    [v18 setTintColor:*(v2 + OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_style + 8)];
    return v18;
  }

  type metadata accessor for FMFenceMapAnnotation();
  v19 = swift_dynamicCastClass();
  if (!v19)
  {
    return 0;
  }

  v20 = v19;
  v21 = *(v19 + OBJC_IVAR____TtC6FindMy20FMFenceMapAnnotation_locationType);
  swift_unknownObjectRetain();
  v22 = String._bridgeToObjectiveC()();
  v23 = [a1 dequeueReusableAnnotationViewWithIdentifier:v22];

  if (!v23)
  {
    swift_unknownObjectRelease();
    return 0;
  }

  objc_opt_self();
  v24 = swift_dynamicCastObjCClass();
  v18 = v24;
  if (v24)
  {
    [v24 setDraggable:1];
    v25 = 24;
    if (v21)
    {
      v25 = 32;
    }

    [v18 setMarkerTintColor:*(v2 + OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_style + v25)];
    [v18 setAnnotation:v20];
    v26 = OBJC_IVAR____TtC6FindMy20FMFenceMapAnnotation_fmfPlacemark;
    swift_beginAccess();
    sub_1004311B8(v20 + v26, v7);
    v27 = type metadata accessor for FMFAddress();
    v28 = (*(*(v27 - 8) + 48))(v7, 1, v27) != 1;
    sub_100278AFC(v7);
    [v18 setCanShowCallout:v28];
    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
  }

  return v18;
}

id sub_100430788(void *a1, uint64_t a2)
{
  v4 = sub_10007EBC0(&qword_1006B0040);
  __chkstk_darwin(v4 - 8);
  v6 = &v11 - v5;
  v7 = OBJC_IVAR____TtC6FindMy20FMFenceMapAnnotation_fmfPlacemark;
  swift_beginAccess();
  sub_1004311B8(a2 + v7, v6);
  v8 = type metadata accessor for FMFAddress();
  v9 = (*(*(v8 - 8) + 48))(v6, 1, v8) != 1;
  sub_100278AFC(v6);
  return [a1 setCanShowCallout:v9];
}

id sub_10043091C(void *a1)
{
  objc_opt_self();
  v3 = swift_dynamicCastObjCClassUnconditional();
  v4 = [a1 rendererForOverlay:v3];
  if (!v4)
  {
    goto LABEL_4;
  }

  v5 = v4;
  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (!v6)
  {

LABEL_4:
    v6 = [objc_allocWithZone(MKCircleRenderer) initWithCircle:v3];
  }

  v7 = *(v1 + OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_style + 8);
  v8 = *(v1 + OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_style + 16);
  v9 = v6;
  v10 = [v7 colorWithAlphaComponent:v8];
  [v9 setFillColor:v10];

  [v9 setStrokeColor:v7];
  [v9 setLineWidth:2.0];

  return v9;
}

void sub_100430ADC(void *a1)
{
  if ([a1 annotation])
  {
    type metadata accessor for FMFenceMapAnnotation();
    if (swift_dynamicCastClass() && (v2 = OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_selectedAnnotation, (v3 = *(v1 + OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_selectedAnnotation)) != 0) && (v4 = v1, swift_unknownObjectRetain(), v5 = v3, v6 = static NSObject.== infix(_:_:)(), v5, swift_unknownObjectRelease(), (v6 & 1) != 0))
    {
      v7 = *(v4 + OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_dragView);
      if (v7)
      {
        [v7 removeHandle:1];
        sub_100466684(0);
        swift_unknownObjectRelease();
        v8 = *(v4 + v2);
        *(v4 + v2) = 0;
      }

      else
      {
        __break(1u);
      }
    }

    else
    {

      swift_unknownObjectRelease();
    }
  }
}

void sub_100430C20(void *a1)
{
  v2 = OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_showingUserLocation;
  if ((*(v1 + OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_showingUserLocation) & 1) == 0)
  {
    v4 = [a1 userLocation];
    [a1 selectAnnotation:v4 animated:1];
    [v4 coordinate];
    v21 = MKCoordinateRegionMakeWithDistance(v20, 2817.5, 2817.5);
    [a1 regionThatFits:{v21.center.latitude, v21.center.longitude, v21.span.latitudeDelta, v21.span.longitudeDelta}];
    v9 = fabs(v5);
    v10 = fabs(v6) > 180.0 || v9 > 90.0;
    if (v10 || (v7 >= 0.0 ? (v11 = v7 > 180.0) : (v11 = 1), v11 || (v8 >= 0.0 ? (v12 = v8 > 360.0) : (v12 = 1), v12)))
    {
    }

    else
    {
      v13 = *(v1 + OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_mapView);
      if (!v13)
      {
        __break(1u);
        return;
      }

      v14 = v8;
      v15 = v7;
      v16 = v6;
      v17 = v5;
      v18 = v13;
      [v18 setRegion:1 animated:{v17, v16, v15, v14}];

      v19 = v1 + OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_currentMapRegion;
      *v19 = v17;
      *(v19 + 8) = v16;
      *(v19 + 16) = v15;
      *(v19 + 24) = v14;
      *(v19 + 32) = 0;
    }

    *(v1 + v2) = 1;
  }
}

id sub_100430DAC(void *a1, uint64_t a2)
{
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v10 = *(v9 - 8);
  result = __chkstk_darwin(v9);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a2 - 3) >= 2)
  {
    if (a2 == 1)
    {
      [a1 setCanShowCallout:0];
      result = *(v2 + OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_dragView);
      if (!result)
      {
        __break(1u);
LABEL_16:
        __break(1u);
        return result;
      }

      [result removeHandle:1];

      return sub_100466684(0);
    }
  }

  else
  {
    v14 = result;
    result = [a1 annotation];
    if (result)
    {
      type metadata accessor for FMFenceMapAnnotation();
      v15 = swift_dynamicCastClass();
      if (v15)
      {
        v16 = v15;
        v25 = v10;
        v26 = v6;
        v17 = v2;
        sub_100487A68();
        v18 = *(v16 + OBJC_IVAR____TtC6FindMy20FMFenceMapAnnotation_overlay);
        v19 = v18;
        sub_100466684(v18);

        result = *(v17 + OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_dragView);
        if (result)
        {
          [result addHandleForAnnotation:v16];
          sub_100003E90();
          v20 = static OS_dispatch_queue.main.getter();
          v21 = swift_allocObject();
          *(v21 + 16) = a1;
          *(v21 + 24) = v16;
          aBlock[4] = sub_1004311B0;
          aBlock[5] = v21;
          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 1107296256;
          aBlock[2] = sub_100004AE4;
          aBlock[3] = &unk_10063E8B8;
          v22 = _Block_copy(aBlock);
          v23 = a1;
          swift_unknownObjectRetain();
          static DispatchQoS.unspecified.getter();
          v27 = _swiftEmptyArrayStorage;
          sub_100037918();
          sub_10007EBC0(&unk_1006B0640);
          sub_100037970();
          dispatch thunk of SetAlgebra.init<A>(_:)();
          OS_dispatch_group.notify(qos:flags:queue:execute:)();
          _Block_release(v22);

          (*(v26 + 8))(v8, v5);
          (*(v25 + 8))(v13, v14);
          swift_unknownObjectRelease();
        }

        goto LABEL_16;
      }

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_1004311B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10007EBC0(&qword_1006B0040);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_100431238(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = [objc_allocWithZone(AKAppleIDAuthenticationContext) init];
  v7 = [objc_opt_self() sharedInstance];
  if (!v7 || (v8 = v7, v9 = [v7 primaryAccountAltDSID], v8, !v9))
  {
    v9 = 0;
  }

  [v6 setAltDSID:v9];

  [v6 setServiceType:1];
  v10 = [objc_allocWithZone(AAUISpinnerViewController) initWithNibName:0 bundle:0];
  v11 = [objc_allocWithZone(CDPUIDeviceToDeviceEncryptionHelper) initWithPresentingViewController:v10];
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_100005B14(v12, qword_1006D4630);
  v13 = v10;
  v14 = a1;
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v17 = 138412546;
    *(v17 + 4) = v13;
    *(v17 + 12) = 2112;
    *(v17 + 14) = v14;
    *v18 = v13;
    v18[1] = v14;
    v19 = v13;
    v20 = v14;
    _os_log_impl(&_mh_execute_header, v15, v16, "FMAppDelegate: upgrade controller - %@, presenter - %@", v17, 0x16u);
    sub_10007EBC0(&unk_1006AF760);
    swift_arrayDestroy();
  }

  v21 = swift_allocObject();
  v21[2] = v11;
  v21[3] = v6;
  v21[4] = v14;
  v21[5] = a2;
  v21[6] = a3;
  v26[4] = sub_100432468;
  v26[5] = v21;
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 1107296256;
  v26[2] = sub_100004AE4;
  v26[3] = &unk_10063E9D0;
  v22 = _Block_copy(v26);
  v23 = v14;
  v24 = v11;
  v25 = v6;

  [v23 presentViewController:v13 animated:1 completion:v22];
  _Block_release(v22);
}

BOOL sub_100431578(void *a1)
{
  if (qword_1006AEB20 != -1)
  {
    swift_once();
  }

  v2 = sub_100220740();
  if (v2 == 1)
  {
    v3 = String._bridgeToObjectiveC()();
    v4 = String._bridgeToObjectiveC()();
    v5 = [objc_opt_self() alertControllerWithTitle:v3 message:v4 preferredStyle:1];

    v6 = objc_opt_self();
    v7 = [v6 mainBundle];
    v23._object = 0x800000010057B8A0;
    v8._countAndFlagsBits = 0xD000000000000015;
    v8._object = 0x800000010057B880;
    v23._countAndFlagsBits = 0xD000000000000027;
    v9._countAndFlagsBits = 0;
    v9._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v8, 0, v7, v9, v23);

    v10 = swift_allocObject();
    *(v10 + 16) = a1;
    v21 = a1;
    v11 = String._bridgeToObjectiveC()();

    aBlock[4] = sub_100431F78;
    aBlock[5] = v10;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100017328;
    aBlock[3] = &unk_10063E958;
    v12 = _Block_copy(aBlock);

    v13 = objc_opt_self();
    v14 = [v13 actionWithTitle:v11 style:0 handler:v12];
    _Block_release(v12);

    v15 = [v6 mainBundle];
    v24._object = 0x800000010057B8F0;
    v16._object = 0x800000010057B8D0;
    v24._countAndFlagsBits = 0xD000000000000025;
    v16._countAndFlagsBits = 0xD000000000000013;
    v17._countAndFlagsBits = 0;
    v17._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v16, 0, v15, v17, v24);

    v18 = String._bridgeToObjectiveC()();

    v19 = [v13 actionWithTitle:v18 style:1 handler:0];

    [v5 addAction:v14];
    [v5 addAction:v19];
    if (a1)
    {
      [v21 presentViewController:v5 animated:1 completion:0];
    }
  }

  return v2 != 1;
}

void sub_1004318E0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

void sub_100431958(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_100005B14(v10, qword_1006D4630);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "FMAppDelegate: upgrade completion executed", v13, 2u);
  }

  v14 = swift_allocObject();
  v14[2] = a3;
  v14[3] = a4;
  v14[4] = a5;
  v17[4] = sub_100432478;
  v17[5] = v14;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 1107296256;
  v17[2] = sub_1004318E0;
  v17[3] = &unk_10063EA20;
  v15 = _Block_copy(v17);
  v16 = a3;

  [a1 performDeviceToDeviceEncryptionStateRepairForContext:a2 withCompletion:v15];
  _Block_release(v15);
}

uint64_t sub_100431B14(char a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v22 = a4;
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v24 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for DispatchQoS();
  v12 = *(v23 - 8);
  __chkstk_darwin(v23);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003E90();
  v15 = static OS_dispatch_queue.main.getter();
  v16 = swift_allocObject();
  v17 = v22;
  *(v16 + 16) = a3;
  *(v16 + 24) = v17;
  *(v16 + 32) = a5;
  *(v16 + 40) = a1;
  *(v16 + 48) = a2;
  aBlock[4] = sub_100432484;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004AE4;
  aBlock[3] = &unk_10063EA70;
  v18 = _Block_copy(aBlock);
  v19 = a3;

  swift_errorRetain();

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100037918();
  sub_10007EBC0(&unk_1006B0640);
  sub_100037970();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v18);

  (*(v24 + 8))(v11, v9);
  return (*(v12 + 8))(v14, v23);
}

uint64_t sub_100431DCC(void *a1, uint64_t (*a2)(void, uint64_t), uint64_t a3, char a4, uint64_t a5)
{
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_100005B14(v9, qword_1006D4630);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "FMAppDelegate: upgrade completion dispatched", v12, 2u);
  }

  [a1 dismissViewControllerAnimated:1 completion:0];
  return a2(a4 & 1, a5);
}

void sub_100431EF4(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = a2;
    v4 = a2;
    sub_100431238(v4, sub_100432460, v3);
  }
}

void sub_100431F80(char a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    swift_errorRetain();
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_100005B14(v4, qword_1006D4630);
    swift_errorRetain();
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v32 = v8;
      *v7 = 136315138;
      swift_errorRetain();
      sub_10007EBC0(&unk_1006AF7B0);
      v9 = String.init<A>(describing:)();
      v11 = sub_100005B4C(v9, v10, &v32);

      *(v7 + 4) = v11;
      _os_log_impl(&_mh_execute_header, v5, v6, "FMAppDelegate: upgrade error=%s", v7, 0xCu);
      sub_100006060(v8);
    }

    v12 = objc_opt_self();
    v13 = [v12 mainBundle];
    v34._object = 0x8000000100598FA0;
    v14._object = 0x8000000100598F80;
    v34._countAndFlagsBits = 0xD00000000000002FLL;
    v14._countAndFlagsBits = 0xD00000000000001DLL;
    v15._countAndFlagsBits = 0;
    v15._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v14, 0, v13, v15, v34);

    v16 = [v12 mainBundle];
    v35._object = 0x8000000100598FF0;
    v17._countAndFlagsBits = 0xD00000000000001FLL;
    v17._object = 0x8000000100598FD0;
    v35._countAndFlagsBits = 0xD000000000000031;
    v18._countAndFlagsBits = 0;
    v18._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v17, 0, v16, v18, v35);

    v19 = String._bridgeToObjectiveC()();

    v20 = String._bridgeToObjectiveC()();

    v21 = [objc_opt_self() alertControllerWithTitle:v19 message:v20 preferredStyle:1];

    v22 = [v12 mainBundle];
    v36._object = 0x8000000100579B60;
    v23._countAndFlagsBits = 0x4F545455425F4B4FLL;
    v23._object = 0xEF454C5449545F4ELL;
    v36._countAndFlagsBits = 0xD000000000000021;
    v24._countAndFlagsBits = 0;
    v24._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v23, 0, v22, v24, v36);

    v25 = String._bridgeToObjectiveC()();

    v26 = [objc_opt_self() actionWithTitle:v25 style:1 handler:0];

    [v21 addAction:v26];
    [a3 presentViewController:v21 animated:1 completion:0];
  }

  else
  {
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    sub_100005B14(v28, qword_1006D4630);
    oslog = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 67109120;
      *(v30 + 4) = a1 & 1;
      _os_log_impl(&_mh_execute_header, oslog, v29, "FMAppDelegate: didUpgrade=%{BOOL}d", v30, 8u);
    }
  }
}

id sub_1004324AC(uint64_t a1)
{
  v2 = v1;
  *&v1[OBJC_IVAR____TtC6FindMy28FMUnknownItemsViewController_selectionSubscription] = 0;
  *&v1[OBJC_IVAR____TtC6FindMy28FMUnknownItemsViewController_deviceSubscription] = 0;
  v1[OBJC_IVAR____TtC6FindMy28FMUnknownItemsViewController_shownLandingView] = 0;
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100005B14(v4, qword_1006D4630);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "FMUnknownItemsViewController: Initialized", v7, 2u);
  }

  *&v2[OBJC_IVAR____TtC6FindMy28FMUnknownItemsViewController_mediator] = a1;
  v9.receiver = v2;
  v9.super_class = type metadata accessor for FMUnknownItemsViewController();
  return objc_msgSendSuper2(&v9, "initWithNibName:bundle:", 0, 0);
}

void sub_10043266C(char a1)
{
  v2 = v1;
  v14.receiver = v2;
  v14.super_class = type metadata accessor for FMUnknownItemsViewController();
  objc_msgSendSuper2(&v14, "viewWillAppear:", a1 & 1);
  if (qword_1006AED78 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100005B14(v4, qword_1006D4D08);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "FMUnknownItemsViewController: viewWillAppear", v7, 2u);
  }

  v8 = OBJC_IVAR____TtC6FindMy28FMUnknownItemsViewController_mediator;
  v9 = *(*&v2[OBJC_IVAR____TtC6FindMy28FMUnknownItemsViewController_mediator] + 56);

  v10 = sub_1003CD2CC(v2, v9);

  *&v2[OBJC_IVAR____TtC6FindMy28FMUnknownItemsViewController_selectionSubscription] = v10;

  v11 = *(*&v2[v8] + 24);
  type metadata accessor for FMDevicesSubscription();
  v12 = swift_allocObject();
  *(v12 + OBJC_IVAR____TtC6FindMy21FMDevicesSubscription_subscriber + 8) = 0;
  swift_unknownObjectWeakInit();

  UUID.init()();
  *(v12 + OBJC_IVAR____TtC6FindMy21FMDevicesSubscription_subscriber + 8) = &off_10063EAA8;
  swift_unknownObjectWeakAssign();
  v13 = *(v11 + 16);

  os_unfair_lock_lock((v13 + 24));
  sub_10000E7C0((v13 + 16));
  os_unfair_lock_unlock((v13 + 24));

  *&v2[OBJC_IVAR____TtC6FindMy28FMUnknownItemsViewController_deviceSubscription] = v12;

  sub_100432DBC();
}

void sub_1004328D8(char a1)
{
  v2 = v1;
  v4 = type metadata accessor for FMSelectedSection();
  v5 = __chkstk_darwin(v4);
  v34 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v33 = &v32 - v8;
  __chkstk_darwin(v7);
  v10 = &v32 - v9;
  v11 = type metadata accessor for FMUnknownItemsViewController();
  v35.receiver = v1;
  v35.super_class = v11;
  objc_msgSendSuper2(&v35, "viewWillDisappear:", a1 & 1);
  if (qword_1006AED78 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_100005B14(v12, qword_1006D4D08);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "FMUnknownItemsViewController: viewWillDisappear", v15, 2u);
  }

  v16 = *&v2[OBJC_IVAR____TtC6FindMy28FMUnknownItemsViewController_selectionSubscription];
  if (!v16)
  {
    goto LABEL_9;
  }

  v17 = *(*&v2[OBJC_IVAR____TtC6FindMy28FMUnknownItemsViewController_mediator] + 56);
  swift_beginAccess();

  v18 = sub_1003CD53C((v17 + 16), v16);
  v19 = v18;
  v20 = *(v17 + 16);
  if (v20 >> 62)
  {
    v21 = _CocoaArrayWrapper.endIndex.getter();
    if (v21 >= v19)
    {
      goto LABEL_8;
    }

LABEL_25:
    __break(1u);
    return;
  }

  v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v21 < v18)
  {
    goto LABEL_25;
  }

LABEL_8:
  sub_1003CD570(v19, v21);
  swift_endAccess();

LABEL_9:
  if (*&v2[OBJC_IVAR____TtC6FindMy28FMUnknownItemsViewController_deviceSubscription])
  {
    v22 = *(*(*&v2[OBJC_IVAR____TtC6FindMy28FMUnknownItemsViewController_mediator] + 24) + 16);

    os_unfair_lock_lock((v22 + 24));
    sub_10008FB6C((v22 + 16));
    os_unfair_lock_unlock((v22 + 24));
  }

  v23 = *(*&v2[OBJC_IVAR____TtC6FindMy28FMUnknownItemsViewController_mediator] + 56);
  v24 = OBJC_IVAR____TtC6FindMy21FMSelectionController_currentSelectedSection;
  swift_beginAccess();
  sub_100062074(v23 + v24, v10);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 15)
  {
    if (EnumCaseMultiPayload == 16)
    {
LABEL_19:
      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        v29 = "FMUnknownItemsViewController: ignore current selection";
        goto LABEL_21;
      }

      goto LABEL_22;
    }

    if (EnumCaseMultiPayload == 19)
    {
      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        v29 = "FMUnknownItemsViewController: ranging item ignore current selection";
LABEL_21:
        _os_log_impl(&_mh_execute_header, v26, v27, v29, v28, 2u);
      }

LABEL_22:

      return;
    }
  }

  else if (EnumCaseMultiPayload == 3 || EnumCaseMultiPayload == 8)
  {
    sub_10005D4E4(v10);
    goto LABEL_19;
  }

  v30 = v33;
  swift_storeEnumTagMultiPayload();
  v31 = v34;
  sub_100062074(v23 + v24, v34);
  swift_beginAccess();

  sub_100058530(v30, v23 + v24);
  swift_endAccess();
  sub_100058594(v31);

  sub_10005D4E4(v31);
  sub_10005D4E4(v30);
  sub_10005D4E4(v10);
}

void sub_100432DBC()
{
  if (qword_1006AED78 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100005B14(v0, qword_1006D4D08);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v5 = v4;
    *v3 = 136315138;
    *(v3 + 4) = sub_100005B4C(0xD00000000000001BLL, 0x80000001005990C0, &v5);
    _os_log_impl(&_mh_execute_header, v1, v2, "FMUnknownItemsViewController: %s", v3, 0xCu);
    sub_100006060(v4);
  }

  sub_1004330EC();
}

void sub_100432F10()
{
  v1 = v0;
  if (qword_1006AED78 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100005B14(v2, qword_1006D4D08);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v10 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_100005B4C(0xD000000000000018, 0x80000001005990A0, &v10);
    _os_log_impl(&_mh_execute_header, v3, v4, "FMUnknownItemsViewController: %s", v5, 0xCu);
    sub_100006060(v6);
  }

  objc_allocWithZone(type metadata accessor for FMUnknownItemsLandingViewController());

  v8 = sub_10027F214(v7);
  *&v8[OBJC_IVAR____TtC6FindMy35FMUnknownItemsLandingViewController_delegate + 8] = &off_10063EA98;
  swift_unknownObjectWeakAssign();
  v8[OBJC_IVAR____TtC6FindMy35FMUnknownItemsLandingViewController_type] = 2;
  sub_10027FC48();
  v9 = v8;
  sub_1004DEC84(v9, v1);
}

void sub_1004330EC()
{
  v1 = v0;
  v2 = type metadata accessor for FMSelectedSection();
  __chkstk_darwin(v2);
  v4 = &v23[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1006AED78 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100005B14(v5, qword_1006D4D08);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v23[0] = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_100005B4C(0xD000000000000011, 0x8000000100599080, v23);
    _os_log_impl(&_mh_execute_header, v6, v7, "FMUnknownItemsViewController: %s", v8, 0xCu);
    sub_100006060(v9);
  }

  v10 = *(*(v1 + OBJC_IVAR____TtC6FindMy28FMUnknownItemsViewController_mediator) + 56);
  v11 = OBJC_IVAR____TtC6FindMy21FMSelectionController_currentSelectedSection;
  swift_beginAccess();
  sub_100062074(v10 + v11, v4);
  if (swift_getEnumCaseMultiPayload() == 9)
  {
    v12 = *v4;
    v13 = objc_allocWithZone(type metadata accessor for FMUnknownItemsListViewController());

    v15 = sub_1004E7010(v14, v12);
    v16 = *&v15[OBJC_IVAR____TtC6FindMy32FMUnknownItemsListViewController_dataSource];
    v17 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v18 = &v16[qword_1006B7570];
    v19 = *&v16[qword_1006B7570];
    *v18 = sub_100433894;
    v18[1] = v17;
    v20 = v16;

    sub_10001835C(v19);

    v21 = v15;
    sub_1004DEC84(v21, v1);
  }

  else
  {
    sub_10005D4E4(v4);
  }
}

void sub_1004333A8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_100432F10();
  }
}

void sub_1004333FC(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for FMSelectedSection();
  v6 = __chkstk_darwin(v5);
  v8 = &v31[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = __chkstk_darwin(v6);
  v11 = &v31[-v10];
  __chkstk_darwin(v9);
  v13 = &v31[-v12];
  v14 = OBJC_IVAR____TtC6FindMy28FMUnknownItemsViewController_mediator;
  v15 = *(*&v2[OBJC_IVAR____TtC6FindMy28FMUnknownItemsViewController_mediator] + 56);
  v16 = OBJC_IVAR____TtC6FindMy21FMSelectionController_currentSelectedSection;
  swift_beginAccess();
  sub_100062074(v15 + v16, v13);
  LODWORD(v15) = swift_getEnumCaseMultiPayload();
  sub_10005D4E4(v13);
  if (v15 == 8)
  {
    v17 = *(*&v2[v14] + 56);
    v18 = OBJC_IVAR____TtC6FindMy21FMSelectionController_previousSelectedSection;
    swift_beginAccess();
    sub_100062074(v17 + v18, v11);
    objc_allocWithZone(type metadata accessor for FMUTCardViewController());

    v20 = v11;
    v21 = v2;
    v22 = sub_1003E4FF4(v19, v20);

    v22[OBJC_IVAR____TtC6FindMy22FMUTCardViewController_bypassWelcomeScreen] = 1;
    [v21 presentCard:v22 completion:0];
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    v23 = sub_10005F7D0(a2, v11);
    sub_10005D4E4(v11);
    if (v23)
    {
      v24 = OBJC_IVAR____TtC6FindMy21FMSelectionController_previousSelectedSection;
      swift_beginAccess();
      sub_100062074(a1 + v24, v11);

      v26 = sub_1001AB900(v25, v11, 0);

      sub_10005D4E4(v11);
      [v2 presentViewController:v26 animated:1 completion:0];
    }

    else
    {
      sub_100062074(a2, v8);
      if (swift_getEnumCaseMultiPayload() != 9)
      {
        sub_10005D4E4(v8);
        if (qword_1006AED78 != -1)
        {
          swift_once();
        }

        v27 = type metadata accessor for Logger();
        sub_100005B14(v27, qword_1006D4D08);
        v28 = Logger.logObject.getter();
        v29 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v28, v29))
        {
          v30 = swift_slowAlloc();
          *v30 = 0;
          _os_log_impl(&_mh_execute_header, v28, v29, "FMUnknownItemsViewController: closing, unknown item is not selected", v30, 2u);
        }

        sub_10024D71C();
      }
    }
  }
}

uint64_t sub_10043378C()
{
}

id sub_1004337DC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMUnknownItemsViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_10043389C()
{
  [v0 setAxis:1];
  [v0 setSpacing:10.0];
  v1 = OBJC_IVAR____TtC6FindMy26FMLostModeSummaryEntryView_footer;
  v2 = *&v0[OBJC_IVAR____TtC6FindMy26FMLostModeSummaryEntryView_footer];
  v3 = objc_opt_self();
  v4 = v2;
  v5 = [v3 secondaryLabelColor];
  [v4 setTextColor:v5];

  v6 = *&v0[v1];
  v7 = objc_opt_self();
  v8 = v6;
  v9 = [v7 preferredFontForTextStyle:UIFontTextStyleCaption1];
  [v8 setFont:v9];

  [*&v0[v1] setAdjustsFontForContentSizeCategory:1];
  [*&v0[v1] setNumberOfLines:0];
  [*&v0[v1] setHidden:1];
  v10 = OBJC_IVAR____TtC6FindMy26FMLostModeSummaryEntryView_platter;
  [v0 addArrangedSubview:*&v0[OBJC_IVAR____TtC6FindMy26FMLostModeSummaryEntryView_platter]];
  [v0 addArrangedSubview:*&v0[v1]];
  v11 = *&v0[v10];
  v12 = [v3 secondarySystemBackgroundColor];
  [v11 setBackgroundColor:v12];

  [*&v0[v10] setDirectionalLayoutMargins:{7.0, 16.0, 7.0, 16.0}];
  v13 = [*&v0[v10] layer];
  [v13 setCornerRadius:26.0];

  v14 = [*&v0[v10] layer];
  [v14 setCornerCurve:kCACornerCurveContinuous];
}

id sub_100433C88()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMLostModeSummaryEntryView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100433D54(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v2();
}

void sub_100433DA0()
{
  v4.receiver = v0;
  v4.super_class = type metadata accessor for FMTrackAnnotationView();
  objc_msgSendSuper2(&v4, "prepareForDisplay");
  if ([v0 annotation])
  {
    type metadata accessor for FMTrackAnnotation();
    if (swift_dynamicCastClass())
    {
      v1 = sub_1004341F0();
      [v0 setImage:v1];

      LODWORD(v2) = 1144750080;
      [v0 setDisplayPriority:v2];
      v3 = [v0 layer];
      [v3 setAnchorPoint:{0.5, 0.5}];
      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }
}

void sub_100433EE8(void *a1, double a2, double a3)
{
  v5 = String._bridgeToObjectiveC()();
  v13 = [objc_opt_self() imageNamed:v5];

  if (v13)
  {
    v6 = [v13 CGImage];
    if (v6)
    {
      v7 = v6;
      v8 = [a1 CGContext];
      CGContextSaveGState(v8);

      v9 = [a1 CGContext];
      CGContextScaleCTM(v9, 1.0, -1.0);

      v10 = [a1 CGContext];
      CGContextTranslateCTM(v10, 0.0, -a3);

      v11 = [a1 CGContext];
      CGContextRef.draw(_:in:byTiling:)();

      v12 = [a1 CGContext];
      CGContextRestoreGState(v12);
    }
  }
}

id sub_1004341B8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMTrackAnnotationView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1004341F0()
{
  v0 = [objc_opt_self() systemBlueColor];
  v1 = [v0 colorWithAlphaComponent:0.2];

  v2 = [objc_allocWithZone(UIGraphicsImageRenderer) initWithSize:{10.0, 10.0}];
  v3 = swift_allocObject();
  __asm { FMOV            V0.2D, #10.0 }

  *(v3 + 16) = _Q0;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_1004343E0;
  *(v9 + 24) = v3;
  v13[4] = sub_1004343E8;
  v13[5] = v9;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 1107296256;
  v13[2] = sub_100433D54;
  v13[3] = &unk_10063EC00;
  v10 = _Block_copy(v13);

  v11 = [v2 imageWithActions:v10];

  _Block_release(v10);
  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if ((v2 & 1) == 0)
  {
    return v11;
  }

  __break(1u);
  return result;
}

void sub_100434410(void *a1)
{
  v3 = [v1 navigationController];
  if (v3)
  {
    v7 = v3;
    type metadata accessor for FMActivityIndicatingNavigationController();
    if (swift_dynamicCastClass())
    {
      sub_1000CCF64(a1);
      goto LABEL_9;
    }
  }

  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100005B14(v4, qword_1006D4630);
  v7 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v7, v5, "FMActivityIndicatingViewController: showActivityIndicator called on invalid navigation controller.", v6, 2u);
  }

LABEL_9:
}

uint64_t sub_10043454C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

id sub_1004345A0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = objc_opt_self();
  v7 = [v6 mainBundle];
  v8._countAndFlagsBits = 0xD000000000000023;
  v57._object = 0x80000001005993A0;
  v8._object = 0x8000000100599370;
  v57._countAndFlagsBits = 0xD000000000000035;
  v9._countAndFlagsBits = 0;
  v9._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v8, 0, v7, v9, v57);

  sub_10007EBC0(&unk_1006B20B0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_100552220;
  *(v10 + 56) = &type metadata for String;
  v11 = sub_10008EE84();
  *(v10 + 64) = v11;
  *(v10 + 32) = a1;
  *(v10 + 40) = a2;

  String.init(format:_:)();

  LOBYTE(v10) = sub_100477BA0(a1, a2, 0);

  if (v10)
  {
    v12 = [v6 mainBundle];
    v58._object = 0x8000000100599510;
    v13._object = 0x80000001005994E0;
    v58._countAndFlagsBits = 0xD000000000000039;
    v13._countAndFlagsBits = 0xD000000000000027;
    v14._countAndFlagsBits = 0;
    v14._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v13, 0, v12, v14, v58);
  }

  else
  {
    sub_10000905C(0, &qword_1006B50C0);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_100552220;
    *(v15 + 56) = &type metadata for String;
    *(v15 + 64) = v11;
    *(v15 + 32) = 0xD000000000000029;
    *(v15 + 40) = 0x8000000100580FB0;
    v16 = NSPredicate.init(format:_:)();
    v17 = String._bridgeToObjectiveC()();
    v18 = [v16 evaluateWithObject:v17];

    if (!v18)
    {

      return 0;
    }

    v19 = [v6 mainBundle];
    v59._object = 0x8000000100599410;
    v20._object = 0x80000001005993E0;
    v59._countAndFlagsBits = 0xD000000000000039;
    v20._countAndFlagsBits = 0xD000000000000027;
    v21._countAndFlagsBits = 0;
    v21._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v20, 0, v19, v21, v59);

    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_100552220;
    *(v22 + 56) = &type metadata for String;
    *(v22 + 64) = v11;
    *(v22 + 32) = a1;
    *(v22 + 40) = a2;

    String.init(format:_:)();
  }

  v23 = String._bridgeToObjectiveC()();

  v24 = String._bridgeToObjectiveC()();

  v25 = [objc_opt_self() alertControllerWithTitle:v23 message:v24 preferredStyle:1];

  if (a3)
  {

    v26 = [v6 mainBundle];
    v60._object = 0x8000000100599490;
    v27._countAndFlagsBits = 0xD000000000000033;
    v27._object = 0x8000000100599450;
    v60._countAndFlagsBits = 0xD000000000000045;
    v28._countAndFlagsBits = 0;
    v28._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v27, 0, v26, v28, v60);

    v29 = swift_allocObject();
    *(v29 + 16) = a3;
    *(v29 + 24) = a4;

    v30 = String._bridgeToObjectiveC()();

    v55 = sub_1000E21B8;
    v56 = v29;
    aBlock = _NSConcreteStackBlock;
    v52 = 1107296256;
    v53 = sub_100017328;
    v54 = &unk_10063ECF0;
    v31 = _Block_copy(&aBlock);

    v32 = objc_opt_self();
    v33 = [v32 actionWithTitle:v30 style:0 handler:v31];
    _Block_release(v31);

    [v25 addAction:v33];
    if (v25)
    {
      v34 = [v6 mainBundle];
      v35._countAndFlagsBits = 0xD000000000000013;
      v61._countAndFlagsBits = 0xD000000000000025;
      v61._object = 0x800000010057B8F0;
      v35._object = 0x800000010057B8D0;
      v36._countAndFlagsBits = 0;
      v36._object = 0xE000000000000000;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v35, 0, v34, v36, v61);

      v37 = swift_allocObject();
      *(v37 + 16) = a3;
      *(v37 + 24) = a4;

      v38 = String._bridgeToObjectiveC()();

      v55 = sub_1000E218C;
      v56 = v37;
      aBlock = _NSConcreteStackBlock;
      v52 = 1107296256;
      v53 = sub_100017328;
      v54 = &unk_10063ED40;
      v39 = _Block_copy(&aBlock);

      v40 = [v32 actionWithTitle:v38 style:1 handler:v39];
      _Block_release(v39);

      [v25 addAction:v40];
      v41 = v33;
      [v25 setPreferredAction:v41];
      sub_10001835C(a3);
    }

    else
    {
      sub_10001835C(a3);
    }
  }

  else if (v25)
  {
    v42 = [v6 mainBundle];
    v62._countAndFlagsBits = 0xD000000000000021;
    v62._object = 0x8000000100579B60;
    v43._countAndFlagsBits = 0x4F545455425F4B4FLL;
    v43._object = 0xEF454C5449545F4ELL;
    v44._countAndFlagsBits = 0;
    v44._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v43, 0, v42, v44, v62);

    v45 = String._bridgeToObjectiveC()();

    v55 = State.rawValue.getter;
    v56 = 0;
    aBlock = _NSConcreteStackBlock;
    v52 = 1107296256;
    v53 = sub_100017328;
    v54 = &unk_10063ECA0;
    v46 = _Block_copy(&aBlock);

    v47 = [objc_opt_self() actionWithTitle:v45 style:0 handler:v46];
    _Block_release(v46);

    [v25 addAction:v47];
  }

  return v25;
}

void *sub_100434E78(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC6FindMy26FMRecipientsViewController_recipientTextView;
  result = *&v1[OBJC_IVAR____TtC6FindMy26FMRecipientsViewController_recipientTextView];
  if (!result)
  {
    __break(1u);
    goto LABEL_17;
  }

  result = [result textView];
  if (!result)
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  v5 = result;
  [result resignFirstResponder];

  result = swift_allocObject();
  v6 = result;
  result[2] = v1;
  result[3] = a1;
  v7 = *&v1[OBJC_IVAR____TtC6FindMy26FMRecipientsViewController_recipientText + 8];
  if (v7)
  {
    if ((v7 & 0x2000000000000000) != 0 ? HIBYTE(v7) & 0xF : *&v1[OBJC_IVAR____TtC6FindMy26FMRecipientsViewController_recipientText] & 0xFFFFFFFFFFFFLL)
    {

      sub_10019AA78(v1, sub_100437878, v6);
    }
  }

  v9 = *&v1[v3];
  if (!v9)
  {
    goto LABEL_18;
  }

  v10 = v1;
  v11 = [v9 recipients];
  if (v11)
  {
    v12 = v11;
    v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v14 = sub_1005373B4(v13);

    if (v14)
    {
      v15 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v16 = swift_allocObject();
      *(v16 + 16) = v15;
      *(v16 + 24) = a1;

      v17 = sub_10019A3DC(v14, sub_100437880, v16);
    }
  }
}

id sub_10043508C(uint64_t a1, uint64_t a2)
{
  result = *(a1 + OBJC_IVAR____TtC6FindMy26FMRecipientsViewController_recipientTextView);
  if (result)
  {
    result = [result recipients];
    if (result)
    {
      v4 = result;
      v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v6 = sub_1005373B4(v5);

      if (v6)
      {
        v7 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v8 = swift_allocObject();
        *(v8 + 16) = v7;
        *(v8 + 24) = a2;

        v9 = sub_10019A3DC(v6, sub_100437A54, v8);
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1004351C0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (*(a2 + 16))
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      return;
    }

    v7 = Strong;
    sub_100435774(a4, a2);
    goto LABEL_8;
  }

  swift_beginAccess();
  v8 = swift_unknownObjectWeakLoadStrong();
  if (!v8)
  {
    return;
  }

  v9 = v8;
  v10 = *(v8 + OBJC_IVAR____TtC6FindMy26FMRecipientsViewController_recipientTextView);
  if (!v10)
  {
    __break(1u);
    goto LABEL_11;
  }

  v11 = [v10 textView];
  if (!v11)
  {
LABEL_11:
    __break(1u);
    return;
  }

  v7 = v11;
  [v11 resignFirstResponder];

LABEL_8:
}

uint64_t sub_1004352A4(uint64_t result, uint64_t (*a2)(void))
{
  if (result)
  {
    return a2();
  }

  return result;
}

UIMenu sub_1004352D4()
{
  v1 = v0;
  sub_10000905C(0, &unk_1006AF720);
  v2 = objc_opt_self();
  v3 = [v2 mainBundle];
  swift__string._object = 0x800000010057FAD0;
  v4._countAndFlagsBits = 0xD000000000000028;
  v4._object = 0x800000010057FAA0;
  swift__string._countAndFlagsBits = 0xD00000000000003ALL;
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  v6 = NSLocalizedString(_:tableName:bundle:value:comment:)(v4, 0, v3, v5, swift__string);

  sub_10007EBC0(&qword_1006AFC30);
  preferredElementSize = swift_allocObject();
  *(preferredElementSize + 16) = xmmword_100552EF0;
  sub_10000905C(0, &qword_1006AF730);
  v8 = [v2 mainBundle];
  swift__stringa._object = 0x8000000100599290;
  v9._object = 0x8000000100599270;
  swift__stringa._countAndFlagsBits = 0xD00000000000002DLL;
  v9._countAndFlagsBits = 0xD00000000000001BLL;
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v9, 0, v8, v10, swift__stringa);

  v11 = String._bridgeToObjectiveC()();
  v12 = objc_opt_self();
  v13 = [v12 systemImageNamed:v11];

  v14 = swift_allocObject();
  *(v14 + 16) = v1;
  v15 = v1;
  *(preferredElementSize + 32) = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v16 = [v2 mainBundle];
  swift__stringb._object = 0x80000001005992E0;
  v17._countAndFlagsBits = 0xD00000000000001DLL;
  v17._object = 0x80000001005992C0;
  swift__stringb._countAndFlagsBits = 0xD00000000000002FLL;
  v18._countAndFlagsBits = 0;
  v18._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v17, 0, v16, v18, swift__stringb);

  v19 = String._bridgeToObjectiveC()();
  v20 = [v12 _systemImageNamed:v19];

  v21 = swift_allocObject();
  *(v21 + 16) = v15;
  v22 = v15;
  *(preferredElementSize + 40) = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v23 = [v2 mainBundle];
  swift__stringc._object = 0x8000000100599330;
  v24._countAndFlagsBits = 0xD00000000000001FLL;
  v24._object = 0x8000000100599310;
  swift__stringc._countAndFlagsBits = 0xD000000000000031;
  v25._countAndFlagsBits = 0;
  v25._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v24, 0, v23, v25, swift__stringc);

  v26 = String._bridgeToObjectiveC()();
  v27 = [v12 systemImageNamed:v26];

  *(swift_allocObject() + 16) = v22;
  v28 = v22;
  *(preferredElementSize + 48) = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v30.value.super.isa = 0;
  v30.is_nil = 0;
  return UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v6, 0, v30, 0, 0xFFFFFFFFFFFFFFFFLL, preferredElementSize, 0);
}

uint64_t sub_100435774(unint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for FriendshipExpiration();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = &v20 - v12;
  __chkstk_darwin(v11);
  v15 = &v20 - v14;
  if (a1 >= 3)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    (*(v7 + 104))(v13, **(&off_10063EFE8 + a1), v6);
    (*(v7 + 32))(v15, v13, v6);
    (*(v7 + 16))(v10, v15, v6);
    type metadata accessor for FMFShareLocationAction();
    swift_allocObject();

    v16 = FMFShareLocationAction.init(handles:friendId:duration:)();
    sub_100434410(0);
    v17 = swift_allocObject();
    *(v17 + 16) = a2;
    *(v17 + 24) = v3;

    v18 = v3;
    sub_1000FB600(v16, sub_100436C5C, v17);

    return (*(v7 + 8))(v15, v6);
  }

  return result;
}

void sub_100435A04(uint64_t a1, void **a2, uint64_t a3, char *a4)
{
  v8 = type metadata accessor for FMFActionStatus();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v46[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v14 = &v46[-v13];
  if (a2)
  {
    swift_errorRetain();
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_100005B14(v15, qword_1006D4630);
    (*(v9 + 16))(v14, a1, v8);
    swift_errorRetain();

    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v48 = v19;
      v49 = swift_slowAlloc();
      v50 = v49;
      *v18 = 138412802;
      v20.super.isa = Array._bridgeToObjectiveC()().super.isa;
      *(v18 + 4) = v20;
      v19->super.isa = v20.super.isa;
      *(v18 + 12) = 2080;
      aBlock = 0;
      v52 = 0xE000000000000000;
      _print_unlocked<A, B>(_:_:)();
      v47 = v17;
      v21 = a3;
      v22 = a4;
      v23 = aBlock;
      v24 = v52;
      (*(v9 + 8))(v14, v8);
      v25 = sub_100005B4C(v23, v24, &v50);
      a4 = v22;
      a3 = v21;

      *(v18 + 14) = v25;
      *(v18 + 22) = 2080;
      aBlock = a2;
      swift_errorRetain();
      sub_10007EBC0(&unk_1006AF7B0);
      v26 = String.init<A>(describing:)();
      v28 = sub_100005B4C(v26, v27, &v50);

      *(v18 + 24) = v28;
      _os_log_impl(&_mh_execute_header, v16, v47, "FMAddFriendViewController: 🙏 Error offering shares to %@ %s %s", v18, 0x20u);
      sub_100012DF0(v48, &unk_1006AF760);

      swift_arrayDestroy();
    }

    else
    {

      (*(v9 + 8))(v14, v8);
    }
  }

  else
  {
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    sub_100005B14(v29, qword_1006D4630);
    (*(v9 + 16))(v12, a1, v8);

    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v48 = v33;
      v49 = swift_slowAlloc();
      v50 = v49;
      *v32 = 138412546;
      v34.super.isa = Array._bridgeToObjectiveC()().super.isa;
      *(v32 + 4) = v34;
      v33->super.isa = v34.super.isa;
      *(v32 + 12) = 2080;
      aBlock = 0;
      v52 = 0xE000000000000000;
      _print_unlocked<A, B>(_:_:)();
      v47 = v31;
      v35 = a3;
      v36 = a4;
      v37 = aBlock;
      v38 = v52;
      (*(v9 + 8))(v12, v8);
      v39 = sub_100005B4C(v37, v38, &v50);
      a4 = v36;
      a3 = v35;

      *(v32 + 14) = v39;
      _os_log_impl(&_mh_execute_header, v30, v47, "FMAddFriendViewController: 🙏 Offered shares to %@ %s", v32, 0x16u);
      sub_100012DF0(v48, &unk_1006AF760);

      sub_100006060(v49);
    }

    else
    {

      (*(v9 + 8))(v12, v8);
    }
  }

  v40 = *&a4[OBJC_IVAR____TtC6FindMy26FMRecipientsViewController_recipientTextView];
  if (v40)
  {
    v41 = [v40 textView];
    if (v41)
    {
      v42 = v41;
      [v41 resignFirstResponder];

      v43 = swift_allocObject();
      v43[2] = a4;
      v43[3] = a2;
      v43[4] = a3;
      v55 = sub_100436C64;
      v56 = v43;
      aBlock = _NSConcreteStackBlock;
      v52 = 1107296256;
      v53 = sub_100004AE4;
      v54 = &unk_10063EDB8;
      v44 = _Block_copy(&aBlock);
      swift_errorRetain();

      v45 = a4;

      [v45 dismissViewControllerAnimated:1 completion:v44];
      _Block_release(v44);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1004360AC(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = type metadata accessor for FMSelectedSection();
  v7 = __chkstk_darwin(v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = &v22 - v11;
  __chkstk_darwin(v10);
  v14 = &v22 - v13;
  sub_100436EA8(a2, a3);
  v15 = OBJC_IVAR____TtC6FindMy26FMRecipientsViewController_mediator;
  v16 = *(*(a1 + OBJC_IVAR____TtC6FindMy26FMRecipientsViewController_mediator) + 56);
  v17 = OBJC_IVAR____TtC6FindMy21FMSelectionController_previousSelectedSection;
  swift_beginAccess();
  sub_100062074(v16 + v17, v14);
  swift_storeEnumTagMultiPayload();
  v18 = OBJC_IVAR____TtC6FindMy21FMSelectionController_currentSelectedSection;
  swift_beginAccess();
  sub_100062074(v16 + v18, v9);
  swift_beginAccess();

  sub_100058530(v12, v16 + v18);
  swift_endAccess();
  sub_100058594(v9);

  sub_10005D4E4(v9);
  sub_10005D4E4(v12);
  v19 = *(*(a1 + v15) + 56);
  sub_100062074(v14, v12);
  v20 = OBJC_IVAR____TtC6FindMy21FMSelectionController_previousSelectedSection;
  swift_beginAccess();

  sub_100058530(v12, v19 + v20);
  swift_endAccess();
  sub_1000596D8();

  sub_10005D4E4(v12);
  return sub_10005D4E4(v14);
}

void sub_1004362C4(uint64_t a1, uint64_t a2, char *a3)
{
  v5 = sub_10007EBC0(&qword_1006AF750);
  __chkstk_darwin(v5 - 8);
  v7 = &v49 - v6;
  if (*(a2 + 16))
  {
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_100005B14(v8, qword_1006D4630);

    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      aBlock = v12;
      *v11 = 136315138;
      v13 = Array.debugDescription.getter();
      v15 = sub_100005B4C(v13, v14, &aBlock);

      *(v11 + 4) = v15;
      _os_log_impl(&_mh_execute_header, v9, v10, "FMAddFriendViewController: 🙏 Offering shares to %s", v11, 0xCu);
      sub_100006060(v12);
    }

    dispatch thunk of FMFManager.preferences.getter();

    v16 = type metadata accessor for FMFPreferences();
    v17 = *(v16 - 8);
    if ((*(v17 + 48))(v7, 1, v16) == 1)
    {
      sub_100012DF0(v7, &qword_1006AF750);
      v18 = 0;
    }

    else
    {
      v18 = FMFPreferences.primaryEmail.getter();
      (*(v17 + 8))(v7, v16);
    }

    v54 = &type metadata for SolariumFeatureFlag;
    v55 = sub_10000BD04();
    v24 = isFeatureEnabled(_:)();
    sub_100006060(&aBlock);
    if (v24)
    {
      v25 = *&a3[OBJC_IVAR____TtC6FindMy26FMRecipientsViewController_rightActionButtonItem];
      v26 = v25;
    }

    else
    {
      v25 = 0;
    }

    v27 = v25;
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v49 = v18;
      v50 = v25;
      aBlock = v31;
      *v30 = 136315394;
      v32 = v27;
      sub_10007EBC0(&qword_1006BFDF0);
      v33 = String.init<A>(describing:)();
      v35 = sub_100005B4C(v33, v34, &aBlock);

      *(v30 + 4) = v35;
      *(v30 + 12) = 2080;
      v50 = 0;
      sub_10007EBC0(&qword_1006BA418);
      v36 = String.init<A>(describing:)();
      v38 = sub_100005B4C(v36, v37, &aBlock);

      *(v30 + 14) = v38;
      _os_log_impl(&_mh_execute_header, v28, v29, "FMAddFriendViewController: 🙏 Will present: \nAnchorItem: %s \nAnchorView: %s", v30, 0x16u);
      swift_arrayDestroy();
    }

    v39 = [objc_opt_self() sharedInstance];
    v40 = String._bridgeToObjectiveC()();

    v41 = swift_allocObject();
    *(v41 + 16) = a3;
    *(v41 + 24) = a2;
    v55 = sub_100437A08;
    v56 = v41;
    aBlock = _NSConcreteStackBlock;
    v52 = 1107296256;
    v53 = sub_10043454C;
    v54 = &unk_10063EED0;
    v42 = _Block_copy(&aBlock);

    v43 = a3;

    v44 = swift_allocObject();
    *(v44 + 16) = v43;
    v55 = sub_100437A30;
    v56 = v44;
    aBlock = _NSConcreteStackBlock;
    v52 = 1107296256;
    v53 = sub_100004AE4;
    v54 = &unk_10063EF20;
    v45 = _Block_copy(&aBlock);
    v46 = v43;

    LOBYTE(v48) = 1;
    v47 = [v39 showOfferActionSheetInViewController:v46 popoverAnchoredAtView:0 orAnchoredOnBarButtonItem:v27 fromEmail:v40 withCompletion:v42 cancelHandler:v45 showAlert:v48];
    _Block_release(v45);
    _Block_release(v42);
  }

  else
  {
    v19 = *&a3[OBJC_IVAR____TtC6FindMy26FMRecipientsViewController_recipientTextView];
    if (v19)
    {
      v20 = [v19 textView];
      if (v20)
      {
        v21 = v20;
        [v20 resignFirstResponder];

        v22 = swift_allocObject();
        *(v22 + 16) = 0;
        *(v22 + 24) = 0;
        v55 = sub_1000822F4;
        v56 = v22;
        aBlock = _NSConcreteStackBlock;
        v52 = 1107296256;
        v53 = sub_100004AE4;
        v54 = &unk_10063EF70;
        v23 = _Block_copy(&aBlock);

        [a3 dismissViewControllerAnimated:1 completion:v23];
        _Block_release(v23);
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

void sub_1004369A8(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC6FindMy26FMRecipientsViewController_recipientTextView;
  v3 = *(a1 + OBJC_IVAR____TtC6FindMy26FMRecipientsViewController_recipientTextView);
  if (!v3)
  {
    __break(1u);
    goto LABEL_8;
  }

  [v3 setEditable:1];
  v4 = *(a1 + v2);
  if (!v4)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v5 = [v4 textView];
  if (!v5)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v6 = v5;
  [v5 becomeFirstResponder];
}

id sub_100436B20()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMAddFriendViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for FMAddFriendViewController()
{
  result = qword_1006BFDE0;
  if (!qword_1006BFDE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_100436C70()
{
  v1 = type metadata accessor for FMSelectedSection();
  v2 = __chkstk_darwin(v1 - 8);
  v4 = &v14[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v2);
  v6 = &v14[-v5];
  result = *&v0[OBJC_IVAR____TtC6FindMy26FMRecipientsViewController_recipientTextView];
  if (result)
  {
    result = [result textView];
    if (result)
    {
      v8 = result;
      [result resignFirstResponder];

      v9 = swift_allocObject();
      *(v9 + 16) = 0;
      *(v9 + 24) = 0;
      aBlock[4] = sub_100097224;
      aBlock[5] = v9;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100004AE4;
      aBlock[3] = &unk_10063EFC0;
      v10 = _Block_copy(aBlock);

      [v0 dismissViewControllerAnimated:1 completion:v10];
      _Block_release(v10);
      v11 = *(*&v0[OBJC_IVAR____TtC6FindMy26FMRecipientsViewController_mediator] + 56);
      v12 = OBJC_IVAR____TtC6FindMy21FMSelectionController_previousSelectedSection;
      swift_beginAccess();
      sub_100062074(v11 + v12, v6);
      v13 = OBJC_IVAR____TtC6FindMy21FMSelectionController_currentSelectedSection;
      swift_beginAccess();
      sub_100062074(v11 + v13, v4);
      swift_beginAccess();

      sub_100058530(v6, v11 + v13);
      swift_endAccess();
      sub_100058594(v4);

      sub_10005D4E4(v4);
      return sub_10005D4E4(v6);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_100436EA8(uint64_t a1, void *a2)
{
  if (!a1)
  {
    v63 = objc_opt_self();
    isa = Array._bridgeToObjectiveC()().super.isa;
    [v63 showOfferSuccessForHandles:isa];

    return;
  }

  v84 = _convertErrorToNSError(_:)();
  v2 = [v84 userInfo];
  v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v83 = 1;
  v4 = 1 << *(v3 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v3 + 64);
  v7 = (v4 + 63) >> 6;

  v82 = 0;
  v8 = 0;
  v9 = _swiftEmptyArrayStorage;
  while (v6)
  {
LABEL_11:
    v11 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v12 = (*(v3 + 48) + ((v8 << 10) | (16 * v11)));
    v14 = *v12;
    v13 = v12[1];
    v15 = HIBYTE(v13) & 0xF;
    v16 = v14 & 0xFFFFFFFFFFFFLL;
    if ((v13 & 0x2000000000000000) != 0)
    {
      v17 = HIBYTE(v13) & 0xF;
    }

    else
    {
      v17 = v14 & 0xFFFFFFFFFFFFLL;
    }

    if (v17)
    {
      if ((v13 & 0x1000000000000000) == 0)
      {
        if ((v13 & 0x2000000000000000) != 0)
        {
          v88[0] = v14;
          v88[1] = v13 & 0xFFFFFFFFFFFFFFLL;
          if (v14 == 43)
          {
            if (!v15)
            {
              goto LABEL_104;
            }

            if (--v15)
            {
              v20 = 0;
              v30 = v88 + 1;
              while (1)
              {
                v31 = *v30 - 48;
                if (v31 > 9)
                {
                  break;
                }

                v32 = 10 * v20;
                if ((v20 * 10) >> 64 != (10 * v20) >> 63)
                {
                  break;
                }

                v20 = v32 + v31;
                if (__OFADD__(v32, v31))
                {
                  break;
                }

                ++v30;
                if (!--v15)
                {
                  goto LABEL_72;
                }
              }
            }
          }

          else if (v14 == 45)
          {
            if (!v15)
            {
              goto LABEL_102;
            }

            if (--v15)
            {
              v20 = 0;
              v24 = v88 + 1;
              while (1)
              {
                v25 = *v24 - 48;
                if (v25 > 9)
                {
                  break;
                }

                v26 = 10 * v20;
                if ((v20 * 10) >> 64 != (10 * v20) >> 63)
                {
                  break;
                }

                v20 = v26 - v25;
                if (__OFSUB__(v26, v25))
                {
                  break;
                }

                ++v24;
                if (!--v15)
                {
                  goto LABEL_72;
                }
              }
            }
          }

          else if (v15)
          {
            v20 = 0;
            v35 = v88;
            while (1)
            {
              v36 = *v35 - 48;
              if (v36 > 9)
              {
                break;
              }

              v37 = 10 * v20;
              if ((v20 * 10) >> 64 != (10 * v20) >> 63)
              {
                break;
              }

              v20 = v37 + v36;
              if (__OFADD__(v37, v36))
              {
                break;
              }

              ++v35;
              if (!--v15)
              {
                goto LABEL_72;
              }
            }
          }
        }

        else
        {
          if ((v14 & 0x1000000000000000) != 0)
          {
            v18 = ((v13 & 0xFFFFFFFFFFFFFFFLL) + 32);
          }

          else
          {
            v18 = _StringObject.sharedUTF8.getter();
          }

          v19 = *v18;
          if (v19 == 43)
          {
            if (v16 < 1)
            {
              goto LABEL_105;
            }

            v15 = v16 - 1;
            if (v16 != 1)
            {
              v20 = 0;
              if (!v18)
              {
                goto LABEL_63;
              }

              v27 = v18 + 1;
              while (1)
              {
                v28 = *v27 - 48;
                if (v28 > 9)
                {
                  break;
                }

                v29 = 10 * v20;
                if ((v20 * 10) >> 64 != (10 * v20) >> 63)
                {
                  break;
                }

                v20 = v29 + v28;
                if (__OFADD__(v29, v28))
                {
                  break;
                }

                ++v27;
                if (!--v15)
                {
                  goto LABEL_72;
                }
              }
            }
          }

          else if (v19 == 45)
          {
            if (v16 < 1)
            {
              goto LABEL_103;
            }

            v15 = v16 - 1;
            if (v16 != 1)
            {
              v20 = 0;
              if (v18)
              {
                v21 = v18 + 1;
                while (1)
                {
                  v22 = *v21 - 48;
                  if (v22 > 9)
                  {
                    goto LABEL_71;
                  }

                  v23 = 10 * v20;
                  if ((v20 * 10) >> 64 != (10 * v20) >> 63)
                  {
                    goto LABEL_71;
                  }

                  v20 = v23 - v22;
                  if (__OFSUB__(v23, v22))
                  {
                    goto LABEL_71;
                  }

                  ++v21;
                  if (!--v15)
                  {
                    goto LABEL_72;
                  }
                }
              }

LABEL_63:
              LOBYTE(v15) = 0;
LABEL_72:
              LOBYTE(v86) = v15;
              v38 = v15;

              if (v38)
              {
                goto LABEL_5;
              }

              goto LABEL_73;
            }
          }

          else
          {
            if (!v16)
            {
              goto LABEL_71;
            }

            v20 = 0;
            if (!v18)
            {
              goto LABEL_63;
            }

            while (1)
            {
              v33 = *v18 - 48;
              if (v33 > 9)
              {
                break;
              }

              v34 = 10 * v20;
              if ((v20 * 10) >> 64 != (10 * v20) >> 63)
              {
                break;
              }

              v20 = v34 + v33;
              if (__OFADD__(v34, v33))
              {
                break;
              }

              ++v18;
              if (!--v16)
              {
                goto LABEL_63;
              }
            }
          }
        }

LABEL_71:
        v20 = 0;
        LOBYTE(v15) = 1;
        goto LABEL_72;
      }

      v45 = sub_100484820(v14, v13, 10);
      if (v46)
      {
        goto LABEL_5;
      }

      v20 = v45;
LABEL_73:
      if (100 * (v20 / 100) == 500 && v20 != 518 && *(v3 + 16))
      {
        v39 = sub_10000726C(v14, v13);
        v41 = v40;

        if (v41)
        {
          sub_100006004(*(v3 + 56) + 32 * v39, v88);
          if (swift_dynamicCast())
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v9 = sub_10008B9E4(0, *(v9 + 2) + 1, 1, v9);
            }

            v43 = *(v9 + 2);
            v42 = *(v9 + 3);
            if (v43 >= v42 >> 1)
            {
              v9 = sub_10008B9E4((v42 > 1), v43 + 1, 1, v9);
            }

            *(v9 + 2) = v43 + 1;
            v44 = &v9[16 * v43];
            *(v44 + 4) = v86;
            *(v44 + 5) = v87;
            v82 = v20;
            v83 = 0;
          }
        }
      }

      else
      {
LABEL_5:
      }
    }
  }

  while (1)
  {
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v10 >= v7)
    {

      v47 = *(v9 + 2);

      if (v47)
      {
        if (v47 == 1)
        {

          if (v83 & 1 | (v82 != 516))
          {
            if (a2[2])
            {
              v49 = a2[4];
              v48 = a2[5];

              v50 = sub_100477BA0(v49, v48, 1);

              if (v50)
              {
                v51 = sub_100123894(v49);
                v53 = v52;

                v54 = objc_opt_self();
                v55 = [v54 mainBundle];
                v90._object = 0x8000000100599660;
                v56._object = 0x8000000100599630;
                v90._countAndFlagsBits = 0xD000000000000032;
                v56._countAndFlagsBits = 0xD000000000000020;
                v57._countAndFlagsBits = 0;
                v57._object = 0xE000000000000000;
                NSLocalizedString(_:tableName:bundle:value:comment:)(v56, 0, v55, v57, v90);

                sub_10007EBC0(&unk_1006B20B0);
                v58 = swift_allocObject();
                *(v58 + 16) = xmmword_100552220;
                *(v58 + 56) = &type metadata for String;
                *(v58 + 64) = sub_10008EE84();
                *(v58 + 32) = v51;
                *(v58 + 40) = v53;
                String.init(format:_:)();

                v59 = [v54 mainBundle];
                v80 = 0x80000001005996D0;
                v60 = 0xD000000000000022;
                v61 = 0x80000001005996A0;
                v62 = 0xD000000000000034;
                goto LABEL_97;
              }

              [objc_opt_self() showGenericErrorAlert];
            }
          }

          else
          {
            [objc_opt_self() showOfferToSelfError];
          }
        }

        else
        {
          v64 = objc_opt_self();
          v65 = *(v3 + 16);

          v66 = [objc_allocWithZone(NSNumber) initWithInteger:v65];
          v67 = [v64 localizedStringFromNumber:v66 numberStyle:0];

          v68 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v70 = v69;

          v71 = objc_opt_self();
          v72 = [v71 mainBundle];
          v91._object = 0x8000000100599580;
          v73._countAndFlagsBits = 0xD000000000000023;
          v73._object = 0x8000000100599550;
          v91._countAndFlagsBits = 0xD000000000000035;
          v74._countAndFlagsBits = 0;
          v74._object = 0xE000000000000000;
          NSLocalizedString(_:tableName:bundle:value:comment:)(v73, 0, v72, v74, v91);

          sub_10007EBC0(&unk_1006B20B0);
          v75 = swift_allocObject();
          *(v75 + 16) = xmmword_100552220;
          *(v75 + 56) = &type metadata for String;
          *(v75 + 64) = sub_10008EE84();
          *(v75 + 32) = v68;
          *(v75 + 40) = v70;
          String.init(format:_:)();

          v59 = [v71 mainBundle];
          v80 = 0x80000001005995F0;
          v60 = 0xD000000000000025;
          v61 = 0x80000001005995C0;
          v62 = 0xD000000000000037;
LABEL_97:
          v76._countAndFlagsBits = 0;
          v76._object = 0xE000000000000000;
          NSLocalizedString(_:tableName:bundle:value:comment:)(*&v60, 0, v59, v76, *&v62);

          v77 = objc_opt_self();
          v78 = String._bridgeToObjectiveC()();

          v79 = String._bridgeToObjectiveC()();

          [v77 showSimpleAlertWithTitle:v78 message:v79];
        }
      }

      else
      {
      }

      return;
    }

    v6 = *(v3 + 64 + 8 * v10);
    ++v8;
    if (v6)
    {
      v8 = v10;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_102:
  __break(1u);
LABEL_103:
  __break(1u);
LABEL_104:
  __break(1u);
LABEL_105:
  __break(1u);
}

uint64_t sub_100437888()
{
  v1 = OBJC_IVAR____TtC6FindMy26FMRecipientsViewController_recipientTextView;
  result = *&v0[OBJC_IVAR____TtC6FindMy26FMRecipientsViewController_recipientTextView];
  if (!result)
  {
    __break(1u);
    goto LABEL_17;
  }

  result = [result textView];
  if (!result)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v3 = result;
  [result resignFirstResponder];

  v4 = *&v0[OBJC_IVAR____TtC6FindMy26FMRecipientsViewController_recipientText + 8];
  if (v4)
  {
    if ((v4 & 0x2000000000000000) != 0 ? HIBYTE(v4) & 0xF : *&v0[OBJC_IVAR____TtC6FindMy26FMRecipientsViewController_recipientText] & 0xFFFFFFFFFFFFLL)
    {
      result = sub_100192F0C(0, 0);
      if ((result & 1) == 0)
      {
        return result;
      }
    }
  }

  result = *&v0[v1];
  if (!result)
  {
LABEL_18:
    __break(1u);
    return result;
  }

  result = [result recipients];
  if (result)
  {
    v6 = result;
    v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v8 = sub_1005373B4(v7);

    if (v8)
    {
      v9 = swift_allocObject();
      *(v9 + 16) = v0;
      v10 = v0;
      v11 = sub_10019A3DC(v8, sub_100437A00, v9);
    }
  }

  return result;
}

uint64_t sub_100437A78()
{
  v1 = OBJC_IVAR____TtC6FindMy22FMLocationSubscription_identifier;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_10005CD20(v0 + OBJC_IVAR____TtC6FindMy22FMLocationSubscription_subscriber);

  return swift_deallocClassInstance();
}

Swift::Int sub_100437B2C()
{
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_100437F1C(&unk_1006C2410, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100437BCC()
{
  type metadata accessor for UUID();
  sub_100437F1C(&unk_1006C2410, &type metadata accessor for UUID);
  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int sub_100437C54()
{
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_100437F1C(&unk_1006C2410, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100437CF0(uint64_t a1, uint64_t a2)
{
  v5 = v2 + OBJC_IVAR____TtC6FindMy22FMLocationSubscription_subscriber;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v7 = *(v5 + 8);
    ObjectType = swift_getObjectType();
    (*(v7 + 8))(a1, a2, ObjectType, v7);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_100437D88(uint64_t a1, uint64_t a2)
{
  v5 = v2 + OBJC_IVAR____TtC6FindMy22FMLocationSubscription_subscriber;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v7 = *(v5 + 8);
    ObjectType = swift_getObjectType();
    (*(v7 + 16))(a1, a2, ObjectType, v7);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_100437E20(uint64_t a1, uint64_t a2)
{
  v5 = v2 + OBJC_IVAR____TtC6FindMy22FMLocationSubscription_subscriber;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v7 = *(v5 + 8);
    ObjectType = swift_getObjectType();
    (*(v7 + 24))(a1, a2, ObjectType, v7);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_100437F1C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for FMPlatterIcon()
{
  result = qword_1006BFF98;
  if (!qword_1006BFF98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100437FC0()
{
  sub_100438048();
  if (v0 <= 0x3F)
  {
    sub_1004380C0();
    if (v1 <= 0x3F)
    {
      sub_100438108();
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_100438048()
{
  if (!qword_1006BFFA8)
  {
    sub_10007EC08(&unk_1006B0720);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1006BFFA8);
    }
  }
}

void sub_1004380C0()
{
  if (!qword_1006BFFB8)
  {
    v0 = type metadata accessor for FMFindingTechnology();
    if (!v1)
    {
      atomic_store(v0, &qword_1006BFFB8);
    }
  }
}

ValueMetadata *sub_100438108()
{
  result = qword_1006BFFC0;
  if (!qword_1006BFFC0)
  {
    result = &type metadata for FMPlaySoundErrorCode;
    atomic_store(&type metadata for FMPlaySoundErrorCode, &qword_1006BFFC0);
  }

  return result;
}

unint64_t sub_100438138(char *a1)
{
  v3 = type metadata accessor for FMPlatterIcon();
  v4 = __chkstk_darwin(v3);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v38 - v7;
  sub_1000D5AC4(v1, &v38 - v7);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_1000D59F8(v8);
    v9 = sub_100438664();
    v8 = v10;
    sub_10007EBC0(&qword_1006AFC30);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1005528C0;
    if (a1)
    {
      if (a1 == 1)
      {
        v12 = sub_100438D78();
        v13 = sub_1004398B4(v12);
      }

      else
      {
        v13 = sub_10043B64C();
      }
    }

    else
    {
      v13 = sub_100438D78();
    }

    if (v13 >> 62)
    {
      a1 = v13;
      v22 = _CocoaArrayWrapper.endIndex.getter();
      v13 = a1;
      if (v22)
      {
LABEL_21:
        v19 = __OFSUB__(v22, 1);
        v23 = v22 - 1;
        if (v19)
        {
          __break(1u);
        }

        else if ((v13 & 0xC000000000000001) == 0)
        {
          if ((v23 & 0x8000000000000000) != 0)
          {
            __break(1u);
          }

          else if (v23 < *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v24 = *(v13 + 8 * v23 + 32);
LABEL_26:
            v25 = v24;

            goto LABEL_47;
          }

          __break(1u);
          goto LABEL_58;
        }

        v24 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        goto LABEL_26;
      }
    }

    else
    {
      v22 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v22)
      {
        goto LABEL_21;
      }
    }

    v25 = [objc_opt_self() labelColor];
LABEL_47:
    *(inited + 32) = v25;
    sub_1000D5AC4(v1, v6);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if ((EnumCaseMultiPayload - 2) >= 0x1F)
    {
      if (EnumCaseMultiPayload)
      {
        v36 = type metadata accessor for FMFindingTechnology();
        (*(*(v36 - 8) + 8))(v6, v36);
        v35 = 1;
        goto LABEL_49;
      }

      sub_1000D59F8(v6);
    }

    v35 = 0;
LABEL_49:
    v6 = sub_100439AC4(v9, v8, inited, v35);

    swift_setDeallocating();
    swift_arrayDestroy();
    return v6;
  }

  v6 = *v8;
  v14 = *(v8 + 8);
  v3 = *(v8 + 16);
  if (!a1)
  {
    result = sub_100438D78();
    if (result >> 62)
    {
      v37 = result;
      v26 = _CocoaArrayWrapper.endIndex.getter();
      result = v37;
      if (!v26)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v26 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v26)
      {
        goto LABEL_34;
      }
    }

    v19 = __OFSUB__(v26, 1);
    v27 = v26 - 1;
    if (v19)
    {
LABEL_66:
      __break(1u);
      goto LABEL_67;
    }

    if ((result & 0xC000000000000001) != 0)
    {
      specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if ((v27 & 0x8000000000000000) != 0)
      {
LABEL_72:
        __break(1u);
        goto LABEL_73;
      }

      if (v27 >= *((result & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_75:
        __break(1u);
        goto LABEL_76;
      }

      v28 = *(result + 8 * v27 + 32);
    }

LABEL_34:

    return v6;
  }

  if (a1 == 1)
  {
    a1 = *(v8 + 8);
    if (!v14)
    {
      v15 = v6;
      a1 = v6;
    }

    v8 = v14;
    v16 = sub_100438D78();
    v17 = sub_1004398B4(v16);
    inited = v17;
    if (!(v17 >> 62))
    {
      v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v18)
      {
LABEL_59:

        return a1;
      }

      goto LABEL_11;
    }

LABEL_58:
    v18 = _CocoaArrayWrapper.endIndex.getter();
    if (!v18)
    {
      goto LABEL_59;
    }

LABEL_11:
    v19 = __OFSUB__(v18, 1);
    result = v18 - 1;
    if (!v19)
    {
      if ((inited & 0xC000000000000001) == 0)
      {
        if ((result & 0x8000000000000000) == 0)
        {
          if (result < *((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v21 = *(inited + 8 * result + 32);
LABEL_16:

            return a1;
          }

          goto LABEL_74;
        }

        __break(1u);
        goto LABEL_72;
      }

LABEL_68:
      specialized _ArrayBuffer._getElementSlowPath(_:)();
      goto LABEL_16;
    }

    __break(1u);
    goto LABEL_66;
  }

  a1 = *(v8 + 16);
  if (!v3)
  {
    v29 = v6;
    a1 = v6;
  }

  v30 = v3;
  v31 = sub_10043B64C();
  v8 = v31;
  if (!(v31 >> 62))
  {
    v32 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v32)
    {
      goto LABEL_39;
    }

LABEL_63:

    return a1;
  }

  v32 = _CocoaArrayWrapper.endIndex.getter();
  if (!v32)
  {
    goto LABEL_63;
  }

LABEL_39:
  v19 = __OFSUB__(v32, 1);
  result = v32 - 1;
  if (v19)
  {
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  if ((v8 & 0xC000000000000001) != 0)
  {
    specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_44;
  }

  if ((result & 0x8000000000000000) != 0)
  {
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
    goto LABEL_75;
  }

  if (result < *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v33 = *(v8 + 8 * result + 32);
LABEL_44:

    return a1;
  }

LABEL_76:
  __break(1u);
  return result;
}

uint64_t sub_100438664()
{
  v1 = v0;
  v2 = 0x656C637269632E6CLL;
  v3 = type metadata accessor for FMFindingTechnology();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v21[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  __chkstk_darwin(v5);
  v9 = &v21[-v8 - 8];
  v10 = type metadata accessor for FMPlatterIcon();
  __chkstk_darwin(v10);
  v12 = &v21[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_1000D5AC4(v1, v12);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      (*(v4 + 32))(v9, v12, v3);
      (*(v4 + 16))(v7, v9, v3);
      v15 = (*(v4 + 88))(v7, v3);
      if (v15 == enum case for FMFindingTechnology.proximity(_:))
      {
        (*(v4 + 96))(v7, v3);
        (*(v4 + 8))(v9, v3);
        v16 = type metadata accessor for FMFindingType();
        (*(*(v16 - 8) + 8))(v7, v16);
        goto LABEL_16;
      }

      if (v15 == enum case for FMFindingTechnology.precision(_:))
      {
        (*(v4 + 96))(v7, v3);
        v17 = *(sub_10007EBC0(&qword_1006C0020) + 48);
        (*(v4 + 8))(v9, v3);
        v18 = type metadata accessor for FMFindingType();
        (*(*(v18 - 8) + 8))(&v7[v17], v18);
        return 0xD000000000000014;
      }

      result = _diagnoseUnexpectedEnumCase<A>(type:)();
      __break(1u);
      return result;
    case 2u:
      if (*v12 > 1u || !*v12)
      {
        return 0xD000000000000011;
      }

      return 0xD000000000000012;
    case 3u:
      return 0xD000000000000028;
    case 4u:
      return 0xD000000000000010;
    case 5u:
      return 0xD000000000000010;
    case 6u:
      return 0xD000000000000010;
    case 7u:
      return v2;
    case 8u:
      return 0x656C637269632E72;
    case 9u:
    case 0x15u:
    case 0x19u:
      return 0xD000000000000016;
    case 0xAu:
      v22 = &type metadata for SolariumFeatureFlag;
      v23 = sub_10000BD04();
      v14 = isFeatureEnabled(_:)();
      sub_100006060(v21);
      if (v14)
      {
        return 0xD000000000000017;
      }

      else
      {
        return 0xD000000000000012;
      }

    case 0xBu:
    case 0x12u:
      return 0xD000000000000011;
    case 0xCu:
      return 0xD000000000000018;
    case 0xDu:
    case 0x17u:
    case 0x1Au:
    case 0x1Bu:
    case 0x1Cu:
    case 0x1Du:
      v13 = 11;
      goto LABEL_26;
    case 0xEu:
    case 0x18u:
      return 0xD000000000000010;
    case 0xFu:
      return 0x637269632E676174;
    case 0x10u:
    case 0x16u:
    case 0x1Eu:
      return 0xD000000000000014;
    case 0x11u:
    case 0x13u:
    case 0x14u:
      v13 = 10;
LABEL_26:
      v2 = v13 | 0xD000000000000010;
      break;
    case 0x1Fu:
LABEL_16:
      v2 = 0xD00000000000001CLL;
      break;
    case 0x20u:
      v2 = 0xD000000000000017;
      break;
    default:
      sub_1000D59F8(v12);
      v2 = 0;
      break;
  }

  return v2;
}

id sub_100438CD8(uint64_t a1, SEL *a2, uint64_t *a3)
{
  sub_10007EBC0(&qword_1006AFC30);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100552EE0;
  v6 = objc_opt_self();
  *(v5 + 32) = [v6 whiteColor];
  result = [v6 *a2];
  *(v5 + 40) = result;
  *a3 = v5;
  return result;
}

uint64_t sub_100438D78()
{
  v1 = v0;
  v2 = type metadata accessor for FMFindingTechnology();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v33[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  __chkstk_darwin(v4);
  v8 = &v33[-v7 - 8];
  v9 = type metadata accessor for FMPlatterIcon();
  __chkstk_darwin(v9);
  v11 = &v33[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_1000D5AC4(v1, v11);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      (*(v3 + 32))(v8, v11, v2);
      (*(v3 + 16))(v6, v8, v2);
      v17 = (*(v3 + 88))(v6, v2);
      if (v17 == enum case for FMFindingTechnology.proximity(_:))
      {
        (*(v3 + 96))(v6, v2);
        sub_10007EBC0(&qword_1006AFC30);
        v12 = swift_allocObject();
        *(v12 + 1) = xmmword_100552EE0;
        v18 = objc_opt_self();
        v12[4] = [v18 whiteColor];
        v12[5] = [v18 systemBlueColor];
        (*(v3 + 8))(v8, v2);
        v19 = type metadata accessor for FMFindingType();
        (*(*(v19 - 8) + 8))(v6, v19);
        return v12;
      }

      if (v17 == enum case for FMFindingTechnology.precision(_:))
      {
        (*(v3 + 96))(v6, v2);
        v28 = *(sub_10007EBC0(&qword_1006C0020) + 48);
        sub_10007EBC0(&qword_1006AFC30);
        v12 = swift_allocObject();
        *(v12 + 1) = xmmword_100552EE0;
        v29 = objc_opt_self();
        v12[4] = [v29 whiteColor];
        v12[5] = [v29 systemGreenColor];
        (*(v3 + 8))(v8, v2);
        v30 = type metadata accessor for FMFindingType();
        (*(*(v30 - 8) + 8))(&v6[v28], v30);
        return v12;
      }

      result = _diagnoseUnexpectedEnumCase<A>(type:)();
      __break(1u);
      return result;
    case 2u:
      if (*v11 == 1)
      {
        goto LABEL_2;
      }

      if (qword_1006AED40 != -1)
      {
        swift_once();
      }

      v12 = qword_1006BFF20;
      goto LABEL_14;
    case 3u:
    case 0x10u:
    case 0x13u:
    case 0x14u:
      if (qword_1006AED28 != -1)
      {
        swift_once();
      }

      v12 = qword_1006BFF08;
      goto LABEL_14;
    case 4u:
    case 5u:
    case 6u:
    case 7u:
    case 8u:
    case 0x11u:
LABEL_2:
      if (qword_1006AED20 != -1)
      {
        swift_once();
      }

      v12 = qword_1006BFF00;
      goto LABEL_14;
    case 9u:
    case 0xEu:
    case 0x15u:
    case 0x1Au:
      if (qword_1006AED38 != -1)
      {
        swift_once();
      }

      v12 = qword_1006BFF18;
      goto LABEL_14;
    case 0xAu:
      v34 = &type metadata for SolariumFeatureFlag;
      v35 = sub_10000BD04();
      v21 = isFeatureEnabled(_:)();
      sub_100006060(v33);
      sub_10007EBC0(&qword_1006AFC30);
      v12 = swift_allocObject();
      *(v12 + 1) = xmmword_100552EE0;
      v22 = objc_opt_self();
      v12[4] = [v22 whiteColor];
      if (v21)
      {
        v14 = [v22 systemBrownColor];
      }

      else
      {
        v14 = [v22 systemGreenColor];
      }

      goto LABEL_35;
    case 0xBu:
    case 0x18u:
      sub_10007EBC0(&qword_1006AFC30);
      v12 = swift_allocObject();
      *(v12 + 1) = xmmword_100552EE0;
      v26 = objc_opt_self();
      v12[4] = [v26 whiteColor];
      v14 = [v26 systemGreenColor];
      goto LABEL_35;
    case 0xCu:
    case 0xDu:
    case 0x16u:
    case 0x1Cu:
      sub_10007EBC0(&qword_1006AFC30);
      v12 = swift_allocObject();
      *(v12 + 1) = xmmword_100552EE0;
      v27 = objc_opt_self();
      v12[4] = [v27 whiteColor];
      v14 = [v27 systemOrangeColor];
      goto LABEL_35;
    case 0xFu:
      sub_10007EBC0(&qword_1006AFC30);
      v12 = swift_allocObject();
      *(v12 + 1) = xmmword_100552EE0;
      v23 = objc_opt_self();
      v12[4] = [v23 whiteColor];
      v14 = [v23 systemYellowColor];
      goto LABEL_35;
    case 0x12u:
    case 0x1Eu:
      if (qword_1006AED30 != -1)
      {
        swift_once();
      }

      v12 = qword_1006BFF10;
LABEL_14:

      return v12;
    case 0x17u:
      sub_10007EBC0(&qword_1006AFC30);
      v12 = swift_allocObject();
      *(v12 + 1) = xmmword_100552EE0;
      v13 = objc_opt_self();
      v12[4] = [v13 whiteColor];
      v14 = [v13 systemBlueColor];
      goto LABEL_35;
    case 0x19u:
      return sub_10043B64C();
    case 0x1Bu:
    case 0x1Du:
      sub_10007EBC0(&qword_1006AFC30);
      v12 = swift_allocObject();
      *(v12 + 1) = xmmword_100552EE0;
      v24 = objc_opt_self();
      v12[4] = [v24 whiteColor];
      v14 = [v24 systemPinkColor];
      goto LABEL_35;
    case 0x1Fu:
      sub_10007EBC0(&qword_1006AFC30);
      v12 = swift_allocObject();
      *(v12 + 1) = xmmword_100552EE0;
      v20 = objc_opt_self();
      v12[4] = [v20 whiteColor];
      v14 = [v20 labelColor];
      goto LABEL_35;
    case 0x20u:
      sub_10007EBC0(&qword_1006AFC30);
      v12 = swift_allocObject();
      *(v12 + 1) = xmmword_100552EE0;
      v25 = objc_opt_self();
      v12[4] = [v25 whiteColor];
      v14 = [v25 systemMintColor];
LABEL_35:
      v12[5] = v14;
      break;
    default:
      v15 = *v11;
      v16 = *(v11 + 1);

      v12 = _swiftEmptyArrayStorage;
      break;
  }

  return v12;
}

unint64_t sub_1004398B4(uint64_t a1)
{
  if (!(a1 >> 62))
  {
    v1 = a1 & 0xFFFFFFFFFFFFFF8;
    goto LABEL_3;
  }

  while (1)
  {
    v18 = a1;
    v19 = _CocoaArrayWrapper.endIndex.getter();
    if (v19)
    {
      v20 = v19;
      v1 = sub_10008FC98(v19, 0);
      sub_100439D28(v1 + 32, v20, v18);
      v22 = v21;

      if (v22 != v20)
      {
        __break(1u);
        goto LABEL_38;
      }

      goto LABEL_3;
    }

    while (1)
    {

      v1 = _swiftEmptyArrayStorage;
LABEL_3:
      if ((v1 & 0x8000000000000000) == 0 && (v1 & 0x4000000000000000) == 0)
      {
        v2 = *(v1 + 16);
        v3 = v2 >> 1;
        goto LABEL_6;
      }

LABEL_38:
      a1 = _CocoaArrayWrapper.endIndex.getter();
      if (a1 >= -1)
      {
        break;
      }

      __break(1u);
    }

    v2 = a1;
    v3 = a1 / 2;
LABEL_6:
    if (v2 + 1 < 3)
    {
      return v1;
    }

    v5 = -v3;
    v6 = 4;
    while (1)
    {
      v7 = v2 - (v6 - 3);
      if (__OFSUB__(v2, v6 - 3))
      {
        break;
      }

      a1 = v6 - 4;
      if (v6 - 4 != v7)
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (a1 < 0)
          {
            goto LABEL_31;
          }

          v8 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (a1 >= v8)
          {
            goto LABEL_32;
          }

          if (v7 >= v8)
          {
            goto LABEL_33;
          }

          v9 = *(v1 + 8 * v7 + 32);
          v10 = *(v1 + 8 * v6);
          v11 = v9;
        }

        v12 = v11;
        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v1 & 0x8000000000000000) != 0 || (v1 & 0x4000000000000000) != 0)
        {
          v1 = sub_1000C1EE4(v1);
          v13 = (v1 >> 62) & 1;
        }

        else
        {
          LODWORD(v13) = 0;
        }

        v14 = v1 & 0xFFFFFFFFFFFFFF8;
        v15 = *((v1 & 0xFFFFFFFFFFFFFF8) + 8 * v6);
        *((v1 & 0xFFFFFFFFFFFFFF8) + 8 * v6) = v12;

        if ((v1 & 0x8000000000000000) != 0 || v13)
        {
          a1 = sub_1000C1EE4(v1);
          v1 = a1;
          v14 = a1 & 0xFFFFFFFFFFFFFF8;
          if ((v7 & 0x8000000000000000) != 0)
          {
LABEL_29:
            __break(1u);
            break;
          }
        }

        else if ((v7 & 0x8000000000000000) != 0)
        {
          goto LABEL_29;
        }

        if (v7 >= *(v14 + 16))
        {
          goto LABEL_34;
        }

        v16 = v14 + 8 * v7;
        v17 = *(v16 + 32);
        *(v16 + 32) = v10;
      }

      ++v6;
      if (v5 + v6 == 4)
      {
        return v1;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
  }
}

unint64_t sub_100439AC4(uint64_t a1, uint64_t a2, unint64_t a3, char a4)
{
  v6 = objc_opt_self();
  v7 = [v6 configurationWithTextStyle:UIFontTextStyleTitle2 scale:3];
  if (!(a3 >> 62))
  {
    v8 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
      goto LABEL_3;
    }

LABEL_10:
    [objc_opt_self() labelColor];
    if (a4)
    {
      goto LABEL_11;
    }

LABEL_14:
    v13 = v7;
    v11 = String._bridgeToObjectiveC()();
    v14 = [objc_opt_self() _systemImageNamed:v11 withConfiguration:v13];
    v12 = v13;
    goto LABEL_15;
  }

  v8 = _CocoaArrayWrapper.endIndex.getter();
  if (!v8)
  {
    goto LABEL_10;
  }

LABEL_3:
  v9 = __OFSUB__(v8, 1);
  result = v8 - 1;
  if (v9)
  {
    __break(1u);
LABEL_13:
    specialized _ArrayBuffer._getElementSlowPath(_:)();
    if (a4)
    {
      goto LABEL_11;
    }

    goto LABEL_14;
  }

  if ((a3 & 0xC000000000000001) != 0)
  {
    goto LABEL_13;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    *(a3 + 8 * result + 32);
    if ((a4 & 1) == 0)
    {
      goto LABEL_14;
    }

LABEL_11:
    v11 = [v6 configurationWithWeight:7];
    v12 = [v7 configurationByApplyingConfiguration:v11];
    v13 = String._bridgeToObjectiveC()();
    v14 = [objc_opt_self() _systemImageNamed:v13 withConfiguration:v12];

LABEL_15:
    return v14;
  }

  __break(1u);
  return result;
}

unint64_t sub_100439CD4()
{
  result = qword_1006BFFF0;
  if (!qword_1006BFFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006BFFF0);
  }

  return result;
}

uint64_t sub_100439D28(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_10043C16C(&unk_1006C0010, &qword_1006C0008);
          for (i = 0; i != v6; ++i)
          {
            sub_10007EBC0(&qword_1006C0008);
            v9 = sub_1001686B4(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_10000905C(0, &qword_1006C0000);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100439EC8(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_10043C16C(&qword_1006C0110, &qword_1006C0108);
          for (i = 0; i != v6; ++i)
          {
            sub_10007EBC0(&qword_1006C0108);
            v9 = sub_1001686B4(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for FMMultiSettingsStatusRowView();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10043A058(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_10043C16C(&unk_1006C0120, &qword_1006C0118);
          for (i = 0; i != v6; ++i)
          {
            sub_10007EBC0(&qword_1006C0118);
            v9 = sub_1001686B4(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for FMMultiSettingsRowView();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10043A1E8(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_10043C16C(&qword_1006C0040, &qword_1006C0038);
          for (i = 0; i != v6; ++i)
          {
            sub_10007EBC0(&qword_1006C0038);
            v9 = sub_1001686B4(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for FMDeletableRowView();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10043A378(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_10043C16C(&qword_1006C00B0, &qword_1006C00A8);
          for (i = 0; i != v6; ++i)
          {
            sub_10007EBC0(&qword_1006C00A8);
            v9 = sub_1001686B4(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_10000905C(0, &qword_1006BA410);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10043A518(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_10043C16C(&unk_1006C00D0, &qword_1006C00C8);
          for (i = 0; i != v6; ++i)
          {
            sub_10007EBC0(&qword_1006C00C8);
            v9 = sub_1001686B4(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for FMTrackAnnotation();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10043A6A8(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_10043C16C(&unk_1006C0080, &qword_1006C0078);
          for (i = 0; i != v6; ++i)
          {
            sub_10007EBC0(&qword_1006C0078);
            v9 = sub_1001686B4(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_10000905C(0, &unk_1006BEEF0);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10043A848(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_10043C16C(&qword_1006C00C0, &qword_1006C00B8);
          for (i = 0; i != v6; ++i)
          {
            sub_10007EBC0(&qword_1006C00B8);
            v9 = sub_1001686B4(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for FMFenceMapTransientRecord();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10043A9D8(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_10043C16C(&unk_1006C0068, &unk_1006BEF10);
          for (i = 0; i != v6; ++i)
          {
            sub_10007EBC0(&unk_1006BEF10);
            v9 = sub_100168734(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for FMAnnotation();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10043AB68(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_10043C16C(&unk_1006C0058, &qword_1006C0050);
          for (i = 0; i != v6; ++i)
          {
            sub_10007EBC0(&qword_1006C0050);
            v9 = sub_1001686B4(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for FMUnknownItemAnnotation();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10043ACF8(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_10043C16C(&qword_1006C0048, &qword_1006AF800);
          for (i = 0; i != v6; ++i)
          {
            sub_10007EBC0(&qword_1006AF800);
            v9 = sub_1001686B4(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_10000905C(0, &qword_1006BBCB0);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10043AE98(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FMFindingTechnology();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for FMPlatterIcon();
  v9 = __chkstk_darwin(v8);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = &v42 - v13;
  __chkstk_darwin(v12);
  v16 = (&v42 - v15);
  v17 = sub_10007EBC0(&unk_1006C0028);
  v18 = __chkstk_darwin(v17 - 8);
  v20 = (&v42 + *(v18 + 56) - v19);
  v21 = a1;
  v22 = &v42 - v19;
  sub_1000D5AC4(v21, &v42 - v19);
  sub_1000D5AC4(a2, v20);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_1000D5AC4(v22, v14);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        (*(v5 + 32))(v7, v20, v4);
        v27 = static FMFindingTechnology.== infix(_:_:)();
        v28 = *(v5 + 8);
        v28(v7, v4);
        v28(v14, v4);
        goto LABEL_32;
      }

      (*(v5 + 8))(v14, v4);
      goto LABEL_71;
    case 2u:
      sub_1000D5AC4(v22, v11);
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        goto LABEL_71;
      }

      v27 = qword_100561CE0[*v11] == qword_100561CE0[*v20];
LABEL_32:
      sub_1000D59F8(v22);
      return v27 & 1;
    case 3u:
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        goto LABEL_71;
      }

      goto LABEL_68;
    case 4u:
      if (swift_getEnumCaseMultiPayload() != 4)
      {
        goto LABEL_71;
      }

      goto LABEL_68;
    case 5u:
      if (swift_getEnumCaseMultiPayload() != 5)
      {
        goto LABEL_71;
      }

      goto LABEL_68;
    case 6u:
      if (swift_getEnumCaseMultiPayload() != 6)
      {
        goto LABEL_71;
      }

      goto LABEL_68;
    case 7u:
      if (swift_getEnumCaseMultiPayload() != 7)
      {
        goto LABEL_71;
      }

      goto LABEL_68;
    case 8u:
      if (swift_getEnumCaseMultiPayload() != 8)
      {
        goto LABEL_71;
      }

      goto LABEL_68;
    case 9u:
      if (swift_getEnumCaseMultiPayload() != 9)
      {
        goto LABEL_71;
      }

      goto LABEL_68;
    case 0xAu:
      if (swift_getEnumCaseMultiPayload() != 10)
      {
        goto LABEL_71;
      }

      goto LABEL_68;
    case 0xBu:
      if (swift_getEnumCaseMultiPayload() != 11)
      {
        goto LABEL_71;
      }

      goto LABEL_68;
    case 0xCu:
      if (swift_getEnumCaseMultiPayload() != 12)
      {
        goto LABEL_71;
      }

      goto LABEL_68;
    case 0xDu:
      if (swift_getEnumCaseMultiPayload() != 13)
      {
        goto LABEL_71;
      }

      goto LABEL_68;
    case 0xEu:
      if (swift_getEnumCaseMultiPayload() != 14)
      {
        goto LABEL_71;
      }

      goto LABEL_68;
    case 0xFu:
      if (swift_getEnumCaseMultiPayload() != 15)
      {
        goto LABEL_71;
      }

      goto LABEL_68;
    case 0x10u:
      if (swift_getEnumCaseMultiPayload() != 16)
      {
        goto LABEL_71;
      }

      goto LABEL_68;
    case 0x11u:
      if (swift_getEnumCaseMultiPayload() != 17)
      {
        goto LABEL_71;
      }

      goto LABEL_68;
    case 0x12u:
      if (swift_getEnumCaseMultiPayload() != 18)
      {
        goto LABEL_71;
      }

      goto LABEL_68;
    case 0x13u:
      if (swift_getEnumCaseMultiPayload() != 19)
      {
        goto LABEL_71;
      }

      goto LABEL_68;
    case 0x14u:
      if (swift_getEnumCaseMultiPayload() != 20)
      {
        goto LABEL_71;
      }

      goto LABEL_68;
    case 0x15u:
      if (swift_getEnumCaseMultiPayload() != 21)
      {
        goto LABEL_71;
      }

      goto LABEL_68;
    case 0x16u:
      if (swift_getEnumCaseMultiPayload() != 22)
      {
        goto LABEL_71;
      }

      goto LABEL_68;
    case 0x17u:
      if (swift_getEnumCaseMultiPayload() != 23)
      {
        goto LABEL_71;
      }

      goto LABEL_68;
    case 0x18u:
      if (swift_getEnumCaseMultiPayload() != 24)
      {
        goto LABEL_71;
      }

      goto LABEL_68;
    case 0x19u:
      if (swift_getEnumCaseMultiPayload() != 25)
      {
        goto LABEL_71;
      }

      goto LABEL_68;
    case 0x1Au:
      if (swift_getEnumCaseMultiPayload() == 26)
      {
        goto LABEL_68;
      }

      goto LABEL_71;
    case 0x1Bu:
      if (swift_getEnumCaseMultiPayload() != 27)
      {
        goto LABEL_71;
      }

      goto LABEL_68;
    case 0x1Cu:
      if (swift_getEnumCaseMultiPayload() != 28)
      {
        goto LABEL_71;
      }

      goto LABEL_68;
    case 0x1Du:
      if (swift_getEnumCaseMultiPayload() != 29)
      {
        goto LABEL_71;
      }

      goto LABEL_68;
    case 0x1Eu:
      if (swift_getEnumCaseMultiPayload() != 30)
      {
        goto LABEL_71;
      }

      goto LABEL_68;
    case 0x1Fu:
      if (swift_getEnumCaseMultiPayload() != 31)
      {
        goto LABEL_71;
      }

      goto LABEL_68;
    case 0x20u:
      if (swift_getEnumCaseMultiPayload() != 32)
      {
        goto LABEL_71;
      }

LABEL_68:
      v29 = v22;
      goto LABEL_69;
    default:
      v23 = v22;
      sub_1000D5AC4(v22, v16);
      v24 = *v16;
      v25 = v16[1];
      v26 = v16[2];
      if (swift_getEnumCaseMultiPayload())
      {

        v22 = v23;
LABEL_71:
        sub_10043C104(v22);
        goto LABEL_72;
      }

      v31 = *v20;
      v32 = v20[1];
      v33 = v20[2];
      if (v24)
      {
        if (!v31)
        {
LABEL_80:

LABEL_88:
          sub_1000D59F8(v23);
LABEL_72:
          v27 = 0;
          return v27 & 1;
        }

        sub_10000905C(0, &qword_1006BC2B0);
        v34 = v24;
        v35 = v31;
        v36 = static NSObject.== infix(_:_:)();

        if ((v36 & 1) == 0)
        {

          v24 = v35;
          goto LABEL_80;
        }
      }

      else if (v31)
      {
        v24 = v20[2];
        v33 = v26;
        v26 = v20[1];
        v32 = v25;
        v25 = *v20;
        goto LABEL_80;
      }

      if (v25)
      {
        if (!v32)
        {
LABEL_87:

          goto LABEL_88;
        }

        sub_10000905C(0, &qword_1006BC2B0);
        v37 = v25;
        v38 = v32;
        v39 = static NSObject.== infix(_:_:)();

        if ((v39 & 1) == 0)
        {

          v25 = v38;
          goto LABEL_87;
        }
      }

      else if (v32)
      {
        v25 = v33;
        v33 = v26;
        v26 = v31;
        v31 = v24;
        v24 = v32;
        goto LABEL_87;
      }

      if (!v26)
      {

        if (!v33)
        {
          goto LABEL_94;
        }

LABEL_96:

        goto LABEL_88;
      }

      if (!v33)
      {

        v33 = v26;
        goto LABEL_96;
      }

      sub_10000905C(0, &qword_1006BC2B0);
      v40 = v26;
      v41 = static NSObject.== infix(_:_:)();

      if ((v41 & 1) == 0)
      {
        goto LABEL_88;
      }

LABEL_94:
      v29 = v23;
LABEL_69:
      sub_1000D59F8(v29);
      v27 = 1;
      return v27 & 1;
  }
}